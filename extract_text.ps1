$content = Get-Content 'assignment_content\word\document.xml' -Raw -Encoding UTF8
$matches = [regex]::Matches($content, '<w:t.*?>(.*?)</w:t>')
$matches | ForEach-Object { $_.Groups[1].Value } | Out-File -FilePath 'plain_text.txt' -Encoding UTF8
