$url = "https://hooks.slack.com/services/ABC/XYZ/012345"
$data = @{ "text" = "Hello, World!"; "username" = "ghost-bot"; "icon_emoji" = ":ghost:"; "channel" = "#general" }
$json_str = $data | ConvertTo-Json
$body = [System.Text.Encoding]::UTF8.GetBytes($json_str)
Invoke-WebRequest -Method Post -Uri $url -ContentType "application/json" -Body $body
