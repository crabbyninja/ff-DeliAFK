toggle = 0
#MaxThreadsPerHotkey 2
SysGet, Res, MonitorWorkArea
Center = %ResRight%
Center /= 2
Bottom = %ResBottom%
Bottom *= 0.9

F8::Reload
F9::ExitApp

F5::
    Toggle := !Toggle
     While Toggle{
        Send {e}
		Send {2}
		MouseMove, 0, 1, 100, R
		MouseMove, %Center%, %Bottom%, 10
		Click
        sleep 1000
    }
return