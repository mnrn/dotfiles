"-------------------------------------------------------------------------------
" Languages
"-------------------------------------------------------------------------------
" C/C++
let g:clang_c_options = '-std=c11 -Weverything'
let g:clang_cpp_options = '-std=c++17 -stdlib=libc++ -Wall -Wextra'

" Rust
let g:rustfmt_autosave = 1
let g:rustfmt_command = '$HOME/.cargo/bin/rustfmt'
set hidden
let g:racer_cmd = '$HOME/.cargo/bin/racer'
