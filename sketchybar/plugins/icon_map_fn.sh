### START-OF-ICON-MAP
function icon_map() {
  case "$1" in
  "Brave Browser")
    icon_result=":brave_browser:"
    ;;
  "Calculator" | "Calculette")
    icon_result=":calculator:"
    ;;
  "Calendar")
    icon_result=":calendar:"
    ;;
  "Claude")
    icon_result=":claude:"
    ;;
  "Docker" | "Docker Desktop")
    icon_result=":docker:"
    ;;
  "Finder")
    icon_result=":finder:"
    ;;
  "System Preferences" | "System Settings")
    icon_result=":gear:"
    ;;
  "Microsoft Excel")
    icon_result=":microsoft_excel:"
    ;;
  "Microsoft Outlook")
    icon_result=":microsoft_outlook:"
    ;;
  "Microsoft PowerPoint")
    icon_result=":microsoft_power_point:"
    ;;
  "Microsoft Word")
    icon_result=":microsoft_word:"
    ;;
  "Obsidian")
    icon_result=":obsidian:"
    ;;
  "1Password")
    icon_result=":one_password:"
    ;;
  "ChatGPT")
    icon_result=":openai:"
    ;;
  "Preview")
    icon_result=":pdf:"
    ;;
  "PDF Expert")
    icon_result=":pdf_expert:"
    ;;
  "Reminders")
    icon_result=":reminders:"
    ;;
  "SF Symbols")
    icon_result=":sf_symbols:"
    ;;
  "Slack")
    icon_result=":slack:"
    ;;
  "Spotify")
    icon_result=":spotify:"
    ;;
  "Spotlight")
    icon_result=":spotlight:"
    ;;
  "Todoist")
    icon_result=":todoist:"
    ;;
  "Zed")
    icon_result=":zed:"
    ;;
  "Zen Browser" | "Zen")
    icon_result=":zen_browser:"
    ;;
  "zoom.us")
    icon_result=":zoom:"
    ;;
  "Brain.fm App")
    icon_result=":brain_fm:"
    ;;
  "Cisco Secure Client")
    icon_result=":cisco:"
    ;;
  "Reflect")
    icon_result=":reflect:"
    ;;
  "Webex")
    icon_result=":webex:"
    ;;
  *)
    icon_result=":default:"
    ;;
  esac
}
### END-OF-ICON-MAP

icon_map "$1"

echo "$icon_result"
