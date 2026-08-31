---
layout: post
title: "Windows 11에서 PowerToys로 Karabina처럼 사용하기"
date: 2026-08-31 10:42:19 +0900
categories: review
---

[PowerToys](https://learn.microsoft.com/en-us/windows/powertoys/install?tabs=winget%2Cextract-094)라고 Microsoft에서 만든 유틸리티 프로그램이 있다. 오픈소스 프로젝트이고 2~3년 전부터 나도 알게 되어서 계속해서 사용하고 있는 프로그램이다. MacOS에서 경험했던 좋은 유틸 기능들을 하나씩 구현한 느낌이고 지금은 더 높은 확장성과 자유도를 보여주고 있는 것 같다. 그 중에 아주 잘 쓰고 있는 기능이 'Keyboard Manager'이다. `Ctrl+Alt+T`를 누르면 Terminal.exe가 실행되도록 한다든가 `Ctrl+Alt+K`를 누르면 카카오톡이 켜지게 할 수 있다.

그 밖에도 잘 쓰는 기능으로는 'Always On Top', 'Command Palette' 정도가 있다. Always On Top은 가끔씩 프로그램을 상단에 띄워놓고 받아적거나 모니터링할 때 유용하게 쓰고 있고 Command Palette는 `Alt+Space`를 누르면 Mac의 Spotlight처럼 계산기나 앱을 실행시킬 때 활용하고 있다.

물론 버그가 좀 있다. 하지만 난 이렇게 인기 많은 오픈소스 프로젝트들은 언젠가는 고쳐지겠지라는 생각으로 기다리는 편이다. 실제로 베타 버전 때는 UI가 그렇게 예쁘지 않았던 것으로 기억하는데 공식 릴리즈부터는 확실히 최근 Windows의 Design system에 맞춰져서 제작된 UI로 현대적인 느낌이다. 아참, Peek라는 기능은 파일을 스페이스바만 누르면 미리보기할 수 있는 기능인데, 이게 나만 그런지 모르겠지만 작동을 안 한다. GitHub Issue에도 올라와 있는 거 같다. 그래서 이 기능은 비활성화 시켜놓고 QuickLook이라는 별도의 프로그램을 사용 중이다. 이것도 해당 이슈에서 다른 사람이 추천해줘서 설치해봤는데 매우 맘에 들어서 잘 쓰고 있다. 혹시 나와 같은 문제점을 겪은 분이 있다면 참고하시길.

참고로 요즘 Windows 프로그램을 설치할 때는 나는 웬만하면 winget를 사용하는 편이다. 너무 편하고 Mac의 Homebrew 같은 느낌이다. Windows가 정말 많이 발전했음을 느낀다. WSL 2.0부터는 Mac보다 더 나은 거 같기도 하다. 그리고 혹시 모르는 분이 계실까봐 말씀드리자면 Java, Python, Go 같은 프로그램을 설치할 때는 **무조건** [mise-en-place](https://mise.jdx.dev/)를 사용해보시길 바란다. 엄청나게 편하다.

AI가 나날이 좋아지고 있음을 느낀다. 솔직히 이제는 '세상에 정답은 이미 있지만 우리가 아직 질문하지 않은 문제' 혹은 '그 누구도 풀지 못한 문제' 이렇게 나뉘는 것 같고 전자는 AI를 통해 꽤나 빠르게 답을 구할 수 있게 된 것 같다. 물론 AI가 만능이 아님은 나도 느끼지만 말이다.

위에서 'Keyboard Manager'를 사용한다고 말했는데 Terminal.exe가 이미 실행 중인 상태에서 프로그램을 화면 맨 앞으로 끌어오려고 `Ctrl+Alt+T`를 누르면 화면이 튀어나오긴 하지만 탭이 하나 더 추가되는 문제가 있었다. 그래서 이걸 해결하기 위해 GPT 5.6-sol xhigh한테 물어보니 다음과 같이 프로그램을 만들어서 해결하라고 알려줬다. 처음에는 이렇게 알려주진 않았는데 몇 번 시행착오를 거치면서 보완했고 이게 결과물이었다. 옛날 같았으면 진짜 한참은 고생했을 것을 지금은 그냥 문제를 발견하는 게 굉장히 중요하고 그걸 해결하려는 마음을 가지는게 더 중요한 행동수칙이 되어버린 느낌이다.

혹시 같은 문제를 겪고 계신 분들은 한번 시도해보시길 바란다. 참고로 `C:\\Scripts` 폴더를 만들고 그 안에 `FocusTerminal.exe`이란 프로그램을 설치한다. 그리고 실행은 PowerShell 5.x 버전에서 실행하면 된다. 버전 7은 안 된다!

```
New-Item -ItemType Directory -Force C:\Scripts | Out-Null
Remove-Item C:\Scripts\FocusTerminal.exe -ErrorAction SilentlyContinue

$src = @'
using System;
using System.Diagnostics;
using System.Runtime.InteropServices;

public class Program
{
    [DllImport("user32.dll")]
    static extern bool ShowWindowAsync(IntPtr hWnd, int nCmdShow);

    [DllImport("user32.dll")]
    static extern void SwitchToThisWindow(IntPtr hWnd, bool fAltTab);

    public static void Main()
    {
        Process target = null;

        foreach (var p in Process.GetProcessesByName("WindowsTerminal"))
        {
            if (p.MainWindowHandle != IntPtr.Zero)
            {
                target = p;
                break;
            }
        }

        if (target != null)
        {
            ShowWindowAsync(target.MainWindowHandle, 9);
            SwitchToThisWindow(target.MainWindowHandle, true);
        }
        else
        {
            Process.Start("wt.exe");
        }
    }
}
'@

Add-Type -TypeDefinition $src `
    -OutputAssembly C:\Scripts\FocusTerminal.exe `
    -OutputType WindowsApplication
```

PowerToys에서:

```
Program path:
C:\Scripts\FocusTerminal.exe

Arguments:
(비움)

If already running:
Start another
```

요즘 이런 세팅하는 재미가 있다. 나중에 후기를 남길지 모르겠지만 VS Code, DBeaver도 이제 안 쓰고 더 적게 메모리를 먹는 프로그램을 사용 중이다. Energy efficiency를 사랑하는 사람으로서 이런 게 나의 작은 취미인 거 같다.
