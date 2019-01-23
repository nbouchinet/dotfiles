" Vim ale config
let g:ale_lint_on_text_changed = 'always'
let g:ale_lint_on_enter = 1
let g:ale_fixers = {'c': ['clang-format']}
let g:ale_linters = {
			\   'python': ['flake8', 'mypy', 'pylint', 'pyls'],
			\   'rust': ['cargo', 'rls'],
			\		'cpp': ['clang', 'clangd', 'clangtidy'],
			\		'c': ['clang', 'clangd', 'clangtidy'],
			\}

let g:ale_c_clang_options='-Wall -Wextra -Werror'
let g:ale_cpp_clang_options='-Wall -Wextra -Werror'
