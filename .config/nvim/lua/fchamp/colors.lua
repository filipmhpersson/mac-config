vim.pack.add({
  { src = "https://github.com/rose-pine/neovim" },
  { src = "https://github.com/aliqyan-21/darkvoid.nvim" },
  { src = "https://github.com/idr4n/github-monochrome.nvim" },
})

require("rose-pine").setup({
  variant = "auto",     -- auto, main, moon, or dawn
  dark_variant = "main", -- main, moon, or dawn
  dim_inactive_windows = false,
  extend_background_behind_borders = true,

  enable = {
    terminal = true,
    legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
    migrations = true,      -- Handle deprecated options automatically
  },

  styles = {
    bold = true,
    italic = true,
    transparency = false,
  },

  groups = {
    border = "muted",
    link = "iris",
    panel = "surface",

    error = "love",
    hint = "iris",
    info = "foam",
    note = "pine",
    todo = "rose",
    warn = "gold",

    git_add = "foam",
    git_change = "rose",
    git_delete = "love",
    git_dirty = "rose",
    git_ignore = "muted",
    git_merge = "iris",
    git_rename = "pine",
    git_stage = "iris",
    git_text = "rose",
    git_untracked = "subtle",

    h1 = "iris",
    h2 = "foam",
    h3 = "rose",
    h4 = "gold",
    h5 = "pine",
    h6 = "foam",
  },

  palette = {
    -- Override the builtin palette per variant
    -- moon = {
    --     base = '#18191a',
    --     overlay = '#363738',
    -- },
  },

  -- NOTE: Highlight groups are extended (merged) by default. Disable this
  -- per group via `inherit = false`
  highlight_groups = {
    -- Comment = { fg = "foam" },
    -- StatusLine = { fg = "love", bg = "love", blend = 15 },
    -- VertSplit = { fg = "muted", bg = "muted" },
    -- Visual = { fg = "base", bg = "text", inherit = false },
  },

  before_highlight = function(group, highlight, palette)
    -- Disable all undercurls
    -- if highlight.undercurl then
    --     highlight.undercurl = false
    -- end
    --
    -- Change palette colour
    -- if highlight.fg == palette.pine then
    --     highlight.fg = palette.foam
    -- end
  end,
})
require("darkvoid").setup({
  transparent = false,
  glow = false,
  show_end_of_buffer = true,

  colors = {
    fg = "#c0c0c0",
    bg = "#1c1c1c",
    cursor = "#bdfe58",
    line_nr = "#404040",
    visual = "#303030",
    comment = "#585858",
    string = "#d1d1d1",
    func = "#e1e1e1",
    kw = "#f1f1f1",
    identifier = "#b1b1b1",
    type = "#a1a1a1",
    type_builtin = "#c5c5c5", -- current
    -- type_builtin = "#8cf8f7", -- glowy blue old (was present by default before type_builtin was introduced added here for people who may like it)
    search_highlight = "#1bfd9c",
    operator = "#1bfd9c",
    bracket = "#e6e6e6",
    preprocessor = "#4b8902",
    bool = "#66b2b2",
    constant = "#b2d8d8",

    -- enable or disable specific plugin highlights
    plugins = {
      gitsigns = true,
      nvim_cmp = true,
      treesitter = true,
      nvimtree = true,
      telescope = true,
      lualine = true,
      bufferline = true,
      oil = true,
      whichkey = true,
      nvim_notify = true,
    },

    -- gitsigns colors
    added = "#baffc9",
    changed = "#ffffba",
    removed = "#ffb3ba",

    -- Pmenu colors
    pmenu_bg = "#1c1c1c",
    pmenu_sel_bg = "#1bfd9c",
    pmenu_fg = "#c0c0c0",

    -- EndOfBuffer color
    eob = "#3c3c3c",

    -- Telescope specific colors
    border = "#585858",
    title = "#bdfe58",

    -- bufferline specific colors
    bufferline_selection = "#1bfd9c",

    -- LSP diagnostics colors
    error = "#dea6a0",
    warning = "#d6efd8",
    hint = "#bedc74",
    info = "#7fa1c3",
  },
})

vim.cmd.colorscheme("github-monochrome-dark")
