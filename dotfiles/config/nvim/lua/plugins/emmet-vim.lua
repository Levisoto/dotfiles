local result = vim.api.nvim_exec(
[[
let g:user_emmet_mode='n'    "only enable normal mode functions.
let g:user_emmet_mode='inv'  "enable all functions, which is equal to
let g:user_emmet_mode='a'    "enable all function in all mode.

"let g:user_emmet_leader_key = '<tab>'
let g:user_emmet_expandabbr_key = '<Tab>,'
let g:user_emmet_settings = {
	\  'javascript.jsx' : {
		\      'extends' : 'jsx',
		\  },
	\}
]],
true)

print(result) -- 'hello world'

