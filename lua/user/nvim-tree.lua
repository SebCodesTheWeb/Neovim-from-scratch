local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if not config_status_ok then
  return
end

local tree_cb = nvim_tree_config.nvim_tree_callback

nvim_tree.setup {
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  renderer = {
    add_trailing = true,
    highlight_git = true,
    highlight_opened_files = "icon",
    root_folder_modifier = ":t",
    indent_markers = {
      enable = true,
    },
    icons = {
      padding = " ",
      symlink_arrow = " ➛ ",
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },
      glyphs = {
        default = "",
        symlink = "",
        folder = {
          arrow_open = "",  -- Can use different arrow icons
          arrow_closed = ">", -- Can use different arrow icons
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
          symlink_open = "",
        },
        git = {
          unstaged = "",
          staged = "S",
          unmerged = "",
          renamed = "➜",
          untracked = "U",
          deleted = "",
          ignored = "◌",
        },
      },
    },
  },
  diagnostics = {
    enable = true,
    show_on_dirs = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  view = {
    width = 35,  -- Slightly wider for better readability
    side = "left",
    number = false,
    relativenumber = false,
    mappings = {
      list = {
        { key = { "l", "<CR>", "o" }, cb = tree_cb "edit" },
        { key = "h", cb = tree_cb "close_node" },
        { key = "v", cb = tree_cb "vsplit" },
        { key = "x", cb = tree_cb "split" },  -- Added horizontal split mapping
        { key = "t", cb = tree_cb "tabnew" },  -- Added open in new tab mapping
      },
    },
  },
  git = {
    enable = true,
    ignore = false,  -- Show ignored files
  },
  filters = {
    dotfiles = false,  -- Show dotfiles
  },
}
