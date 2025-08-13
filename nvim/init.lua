-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

if os.getenv("TERM") == "xterm-kitty" then
    os.execute("kitty @ set-font-size 2")
end
