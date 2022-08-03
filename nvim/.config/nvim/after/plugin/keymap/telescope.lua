local Remap = require("vinidev.keymap")
local nnoremap = Remap.nnoremap

nnoremap("<C-p>", ":Telescope")
nnoremap("<Leader>ff", function ()
  require('telescope.builtin').find_files()
end)
