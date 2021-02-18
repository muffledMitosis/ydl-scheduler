$downloader_path = "C:\Users\Meth\Documents\projects\youtube-runner\downloader.ps1";

$app = New-ScheduledTaskAction -Execute "PowerShell.exe" -Argument "-executionpolicy bypass -noprofile -file $downloader_path";
$time = New-ScheduledTaskTrigger -Once -At 20:59pm

Register-ScheduledTask ytdown -Action $app -Trigger $time -RunLevel Highest -Force;