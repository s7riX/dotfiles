source ~/.config/nvim/nvimrc
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
Plugin 'phanviet/vim-monokai-pro' 
set termguicolors
colorscheme monokai_pro
