return {
  'romgrk/barbar.nvim',
  opt = true,
  config = function()
    vim.cmd [[
        " Move to previous/next
        nnoremap <silent>    <A-,> <Cmd>BufferPrevious<CR>
        nnoremap <silent>    <A-.> <Cmd>BufferNext<CR>
        nnoremap <silent>    <A-w> <Cmd>BufferClose<CR>
      ]]
  end,
}
