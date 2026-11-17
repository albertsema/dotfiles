-- Rex config: https://www.superlogical.com/rex/docs/customize/config
-- Reload with `rex config reload` (or prefix+R). Check with `rex config check`.

require("actions")
require("keys")

-- >>> leaf >>>
-- Managed by `leaf rex install`; `leaf rex uninstall` removes it.
-- plugin: dbd96079ad70c4c6
dofile("/Users/amatabar/.config/rex/plugins/leaf/init.lua").setup({ bin = { "/opt/homebrew/bin/leaf" } })
-- open: idle classic
-- <<< leaf <<<
