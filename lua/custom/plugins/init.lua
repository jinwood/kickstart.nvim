-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'kdheepak/lazygit.nvim',
    cmd = {
      'LazyGit',
      'LazyGitConfig',
      'LazyGitCurrentFile',
      'LazyGitFilter',
      'LazyGitFilterCurrentFile',
    },
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
  },
  {
    'preservim/nerdtree',
    config = function()
      vim.g.NERDTreeShowHidden = 1
      vim.g.NERDTreeMinimalUI = 1
      vim.g.NERDTreeIgnore = { '.git', 'node_modules', '.cache' }
      vim.g.NERDTreeStatusline = ''
      -- Automatically open NERDTree
      vim.cmd [[
      autocmd StdinReadPre * let s:std_in=1
      autocmd VimEnter * if argc() == 0 && !exists('s:std_in') && v:this_session == '' | NERDTree | endif
    ]]
      -- Move cursor to NERDTree when it's opened
      vim.cmd [[
      autocmd VimEnter * if argc() == 0 && !exists('s:std_in') && v:this_session == '' | wincmd p | endif
    ]]
    end,
  },
}
