#!/bin/sh
if [ -z "$MMRL" ] && [ ! -z "$MAGISKTMP" ]; then
	pm path io.github.a13e300.ksuwebui >/dev/null 2>&1 && {
		echo "- Launching WebUI in KSUWebUIStandalone..."
		am start -n "io.github.a13e300.ksuwebui/.WebUIActivity" -e id "dump_dex"
		exit 0
	}
	pm path com.dergoogler.mmrl >/dev/null 2>&1 && {
		echo "- Launching WebUI in MMRL WebUI..."
		am start -n "com.dergoogler.mmrl/.ui.activity.webui.WebUIActivity" -e MOD_ID "dump_dex"
		exit 0
	}
fi
echo "[!] Install KsuWebUI for WebUI access"
sleep 2
am start -a android.intent.action.VIEW -d https://github.com/5ec1cff/KsuWebUIStandalone/releases
exit 0

# EOF
