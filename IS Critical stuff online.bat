@echo off
echo 1%
ping 10.16.32.57
echo 2%
ping 10.16.32.58
echo 3%
ping 10.16.32.59
echo 4%
ping 10.16.32.60
echo 5%
ping 10.16.32.61
echo 6%
ping 10.16.32.62
echo 7%
ping 10.16.32.63
echo 8%
ping 10.16.32.64
echo 9%
ping 10.16.32.65
echo 10%
ping 10.16.32.66

and
<vb code>
Imports System.Diagnostics
Public Class Form1

Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click

Dim MyProgram As String = “M:abcdef.bat”

Dim MyArg As String = “Hello”

Dim ctr As Int32 = 1

Dim MyProcess As New Process

Dim MyProcessInfo As New ProcessStartInfo(MyProgram)

Do Until ctr = 2

MyProcessInfo.Arguments = MyArg ‘argument passed to the bat file

MyProcessInfo.WindowStyle = ProcessWindowStyle.Hidden

MyProcessInfo.UseShellExecute = False

MyProcess = Process.Start(MyProcessInfo)

MyProcess.WaitForExit()

If MyProcess.HasExited Then

ProgressBar1.Value = 10 * ctr

ctr += 1

End If

Loop

End Sub
end class
<end of vb code>