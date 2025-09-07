-- GDScript LSP setup for Neovim
-- File: ~/.config/nvim/after/plugin/gdscript.lua

-- === Pipe setup (only once per session) ===
local pipe = "/tmp/godot.pipe"

local function pipe_running(p)
  local servers = vim.fn.serverlist()
  for _, s in ipairs(servers) do
    if s == p then
      return true
    end
  end
  return false
end

if not pipe_running(pipe) then
  vim.fn.serverstart(pipe)
end

-- === Client setup ===
local port = os.getenv("GDScript_Port") or "6005"

vim.api.nvim_create_autocmd("FileType", {
  pattern = "gdscript",
  callback = function(args)
    vim.lsp.start({
      name = "Godot",
      cmd = vim.lsp.rpc.connect("127.0.0.1", tonumber(port)),
      root_dir = vim.fs.dirname(
        vim.fs.find({ "project.godot", ".git" }, { upward = true })[1]
      ),
      on_attach = function(client, bufnr)
        if vim.api.nvim_buf_is_loaded(bufnr) then
          -- Buffer-local LSP keymaps, e.g.:
          -- vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = bufnr })
        end
      end,
    })
  end,
})

