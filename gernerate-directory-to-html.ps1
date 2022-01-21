$files = Get-ChildItem 'D:\GithubRepo\hack_learn'
New-Item 'D:\GithubRepo\hack_learn\index.html' -ItemType File

Add-Content 'D:\GithubRepo\hack_learn\index.html' '<html><head>'
Add-Content 'D:\GithubRepo\hack_learn\index.html' '<title>Title of the Index</title>'
Add-Content 'D:\GithubRepo\hack_learn\index.html' '</head>'
Add-Content 'D:\GithubRepo\hack_learn\index.html' '<Body><H1>Title of the Index</H1>'

foreach ($file in $files)
    {
        $fileName = $file -replace "\.[^\.]+$"
        Add-Content 'D:\GithubRepo\hack_learn\index.html' "<a href=""$file"">$fileName</a><br><br>"
    }

Add-Content 'D:\GithubRepo\hack_learn\index.html' '</body></html>'