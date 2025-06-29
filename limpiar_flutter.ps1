Write-Host "🔧 Cerrando VS Code si está abierto..."
Stop-Process -Name "Code" -Force -ErrorAction SilentlyContinue

Write-Host "🧹 Limpiando carpetas temporales..."
Remove-Item -Recurse -Force .dart_tool -ErrorAction SilentlyContinue
Remove-Item -Recurse -Force build -ErrorAction SilentlyContinue
Remove-Item -Force .packages -ErrorAction SilentlyContinue

Write-Host "✅ Carpetas eliminadas correctamente."

Write-Host "`n🏗️ Ejecutando 'flutter clean'..."
flutter clean

Write-Host "`n📦 Ejecutando 'flutter pub get'..."
flutter pub get

Write-Host "`n🚀 Limpieza completada y dependencias restauradas."
flutter run