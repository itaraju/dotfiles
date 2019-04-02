-- load standard vis module, providing parts of the Lua API
require('vis')

vis.events.subscribe(vis.events.INIT, function()
	-- Your global configuration options
	vis:command("set escdelay 10")
	-- key mappings
	vis:command("map! normal <C-t> :.+0>send_text_tmux.sh<Enter><Down>")
	vis:command("map! visual <C-t> :>send_text_tmux.sh<Enter><Down>")
	vis:command("map! visual-line <C-t> :>send_text_tmux.sh<Enter><Down><Escape>")
	vis:command("map insert jj <Escape>")
	vis:command("map! normal <C-o> <vis-open-line-below><Escape><vis-motion-line-up>")
	vis:command("map! normal <M-C-o> <vis-open-line-above><Escape><vis-motion-line-down>")
end)

vis.events.subscribe(vis.events.WIN_OPEN, function(win)
	-- Your per window configuration options e.g.
	-- vis:command('set number')
	vis:command('set theme "my16"')
	vis:command('set cursorline')
	vis:command('set relativenumber')
end)
