Write-Host "🚀 HZ SmartOffice 工具箱正在啟動..." -ForegroundColor Cyan
Start-Sleep -Seconds 1

$apps = @(
    "7zip.7zip",
    "Notepad++.Notepad++",
    "FastStone.ImageViewer",
    "GIMP.GIMP",
    "VideoLAN.VLC",
    "Mozilla.Firefox.ESR",
    "voidtools.Everything",
    "ShareX.ShareX",
    "Bitwarden.Bitwarden",
    "LibreOffice.LibreOffice",
    "Foxit.FoxitReader",
    "OBSProject.OBSStudio"
)

foreach ($app in $apps) {
    Write-Host "📦 安裝 $app 中..."
    try {
        Start-Process "winget" -ArgumentList "install --id=$app --silent --accept-package-agreements --accept-source-agreements" -Wait
        Write-Host "✅ $app 安裝完成。" -ForegroundColor Green
    } catch {
        Write-Host "⚠️ 安裝 $app 失敗：$($_.Exception.Message)" -ForegroundColor Red
    }
}

Write-Host "🎉 所有工具安裝完畢，感謝使用 HZ SmartOffice 工具箱！" -ForegroundColor Cyan
pause