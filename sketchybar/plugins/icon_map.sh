case "$1" in
"Zen Browser")
  icon_result=":zen_browser:"
  ;;
"Reflect")
  icon_result=":reflect:"
  ;;
"Zed")
  icon_result=":zed:"
  ;;
"Calendar" | "Fantastical")
  icon_result=":calendar:"
  ;;
"Xcode")
  icon_result=":xcode:"
  ;;
"Slack")
  icon_result=":slack:"
  ;;
"System Preferences")
  icon_result=":gear:"
  ;;
"Raycast")
  icon_result=":raycast:"
  ;;
"1Password 8")
  icon_result=":one_password:"
  ;;
"Finder" | "访达")
  icon_result=":finder:"
  ;;
"Ghostty")
  icon_result=":terminal:"
  ;;
*)
  icon_result=":default:"
  ;;
esac
echo $icon_result
