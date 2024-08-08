" ==================== START GENERAL CONFIG ==================== "

" Enable syntax highlighting
syntax enable

" Set all save to register actions register to OS clipboard. ('y', 'd', 'p')
set clipboard=unnamed

" Enable relative line numbers
set relativenumber

" Set default terminal (within vim :term) to use pwsh
set shell=cmd

" Allow backspace to remove charachter (was broken for a reason)
set backspace=indent,eol,start

" Enable auto-indentation
set autoindent

" Enable smart indentation
set smartindent

" Add bar to bottom of editor which shows line number and other stuff
set ruler

" Set tab width to 4 spaces
set tabstop=4

" Ignore casing during search using '/'
set ignorecase

" Always center editor in middle.
set scrolloff=999

" Show matching parentheses
set showmatch

" Highlight search results as you type
set incsearch

" Enable mouse support (if your terminal supports it)
set mouse=a

" Enable line wrapping
set wrap

" Set line wrap column 
set textwidth=80

" ==================== END GENERAL CONFIG START KEYMAPPING ==================== "

" ==================== START KEYMAPPING ==================== "

" Add keymap to open File explorer (NerdTree) in current tab
nnoremap <leader>e :NERDTreeToggle<CR>

" Add keymap top open NerdTree File explorer in new tab.
nnoremap <leader>en:tabnew \| NERDTreeToggle<CR> 

" Add keymap to open terminal
nnoremap<leader>] :botright terminal<CR>

" Configure FuzzyFinder keymap
nnoremap <Leader>ff :FZF<CR>

" Open new tab
nnoremap <leader>t :tabnew<CR>

" Open split screen
nnoremap <leader>s :vsp<CR>

" Set keymap to auto-indent entire file
nnoremap <C-o> :normal gg=G<CR>

" Auto-indent entire file
autocmd BufWritePre * normal =G

" ==================== END KEYMAPPING ==================== "

" ==================== START UI STYLING ==================== " 

" Add colorscheme
colorscheme dracula

" Display a vertical line at the textwidth column
set colorcolumn=+1
"hi ColorColumn ctermbg=Grey guibg=Grey

" Make it more visual clear what current line is
hi Comment ctermfg=red guifg=red 

" Make it more visual clear what current line is
set cursorline
hi CursorLine cterm=NONE ctermbg=blue ctermfg=white guibg=blue guifg=white

" ========== END UI STYLING ========== "

" ========== START PLUGIN INSTALLATION ========== "

" Vim-Plug installation
if empty(glob('~/.vim/autoload/plug.vim'))
		silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" Add automatic tab indentations while programming
Plug 'ervandew/supertab'

" Add color theme
Plug 'dracula/vim'

" Add fuzzy finder (search and open files)
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" Add NerdTree plugin (Nice file explorer)
Plug 'preservim/nerdtree'

call plug#end()

" ========== END PLUGIN INSTALLATION ========== "
