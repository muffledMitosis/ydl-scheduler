$currentPath = "C:\Users\Meth\Documents\projects\youtube-runner\";

youtube-dl.exe -f best -o ($currentPath + "%(title)s-%(id)s.%(ext)s") "https://www.youtube.com/watch?v=nk_Pfxmqn6g";

# Unregister task
Unregister-ScheduledTask ytdown -Confirm:$false