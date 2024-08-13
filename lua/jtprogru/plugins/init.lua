return {

  {
    "NvChad/nvcommunity",
    { import = "nvcommunity.git.diffview" },
    { import = "nvcommunity.git.lazygit" },
    { import = "nvcommunity.editor.rainbowdelimiters" },
  },

  {
    "NvChad/nvterm",
    config = function()
      require "jtprogru.configs.nvterm-cfg"
    end,
  }
}
