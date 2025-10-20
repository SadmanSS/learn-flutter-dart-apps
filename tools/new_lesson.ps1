param([string]$name)
if (-not $name) { Write-Host "Usage: .\tools\new_lesson.ps1 01-new-topic"; exit 1 }
New-Item -ItemType Directory -Force -Path "lessons\$name\starter" | Out-Null
New-Item -ItemType Directory -Force -Path "lessons\$name\solution" | Out-Null
"# Lesson $name`n" | Out-File -FilePath "lessons\$name\lesson.md" -Encoding utf8
Write-Host "✅ Lesson $name created!"
