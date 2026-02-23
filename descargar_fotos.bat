:: ==============================
::  DESCARGA DE RECURSOS ASCINALSS
:: ==============================
@echo off
setlocal

:: 1️⃣ Crear carpeta de assets (si no existe)
mkdir assets 2>nul

:: 2️⃣ Descargar imágenes con curl (viene con Windows 10+)
::    Si curl no está disponible, abre PowerShell y ejecuta:
::    irm https://aka.ms/install-powershell.ps1 -OutFile install.ps1; .\install.ps1

curl -L "https://ascinalss.org/updata/agency/img/icon.png"               -o "assets/logo.png"
curl -L "https://www.ascinalss.org/ascinalss/tools/images/banner%208.jpg" -o "assets/hero-bg.jpg"
curl -L "https://www.ascinalss.org/ascinalss/tools/images/ejto.png"      -o "assets/escudo-ejto.png"
curl -L "https://www.ascinalss.org/ascinalss/tools/images/fab.png"       -o "assets/escudo-fab.png"
curl -L "https://www.ascinalss.org/ascinalss/tools/images/armada.png"    -o "assets/escudo-armada.png"

:: 3️⃣ Imágenes de los servicios de préstamo (tomadas de la sección “Servicios” de la web oficial)
curl -L "https://www.ascinalss.org/ascinalss/imagenes/Hotel%203.jpg"      -o "assets/hotel.jpg"
curl -L "https://www.ascinalss.org/ascinalss/imagenes/SALON%20DORADO%202.jpg" -o "assets/salon.jpg"
curl -L "https://www.ascinalss.org/ascinalss/imagenes/cota_cota.jpg"      -o "assets/deportes.jpg"

:: 4️⃣ Fondo animado (una imagen ligera que usaremos como textura)
curl -L "https://www.ascinalss.org/ascinalss/imagenes/fondo-azul.jpg"    -o "assets/fondo-azul.jpg"

echo -------------------------------------------------
echo  ✅  Todas las imágenes se han descargado.
echo  Puedes revisar la carpeta  e:\ejemplos\ascinalss\assets
echo -------------------------------------------------
pause

:: 5️⃣ Abrir la página para que veas el resultado
start "" "e:\ejemplos\ascinalss\index.html"
