-- load standard vis module, providing parts of the Lua API
require('vis')

-- plugins
require('vis-commentary')
require('vis-surround')
require('vis-modelines')
require('vis-motsel')

vis.events.subscribe(vis.events.INIT, function()
	-- Your global configuration options
	vis:command("set escdelay 5")
	vis:command('set tabwidth 4')
	vis:command('set autoindent on')
	-- key mappings
	vis:map(vis.modes.NORMAL, ' u', '<vis-prompt-show>')
	vis:map(vis.modes.VISUAL, ' u', '<vis-prompt-show>')
	vis:command("map insert jj <Escape>")
	vis:map(vis.modes.NORMAL, " <Enter>", ':.+0>send_text_tmux.sh<Enter><Down>')
	vis:map(vis.modes.VISUAL, " <Enter>", ':>send_text_tmux.sh<Enter><Down><Escape>')
	vis:map(vis.modes.NORMAL, ' j', "<vis-open-line-below><Escape><vis-motion-line-up>")
	vis:map(vis.modes.NORMAL, ' k', "<vis-open-line-above><Escape><vis-motion-line-down>")
	vis:map(vis.modes.NORMAL, ' y', '"+y')
	vis:map(vis.modes.NORMAL, ' p', '"+p')
	vis:map(vis.modes.NORMAL, ' P', '"+P')
	vis:map(vis.modes.VISUAL, ' y', '"+y')
	vis:map(vis.modes.VISUAL, ' p', '"+p')
	vis:map(vis.modes.NORMAL, ' w', '<vis-window-next>')
end)

vis.events.subscribe(vis.events.WIN_OPEN, function(win)
	-- Your per window configuration options e.g.
	-- vis:command('set number')
	vis:command('set theme "gruvbox"')
	vis:command('set relativenumber')
	vis:command('set cursorline')
end)
