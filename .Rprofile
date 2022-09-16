# https://github.com/randy3k/radian
options(
    # see https://help.farbox.com/pygments.html
    # for a list of supported color schemes, default scheme is "native"
    radian.color_scheme = "monokai",

    # either  `"emacs"` (default) or `"vi"`.
    radian.editing_mode = "vi",

    # indent continuation lines
    # turn this off if you want to copy code without the extra indentation;
    # but it leads to less elegent layout
    radian.indent_lines = FALSE,

    # auto match brackets and quotes
    radian.auto_match = FALSE,

	# highlight matching bracket
	radian.highlight_matching_bracket = TRUE,

    # auto indentation for new line and curly braces
    radian.auto_indentation = FALSE,
    radian.tab_size = 4,

    # pop up completion while typing
    radian.complete_while_typing = FALSE,
    # timeout in seconds to cancel completion if it takes too long
    # set it to 0 to disable it
    radian.completion_timeout = 0.05,

    # automatically adjust R buffer size based on terminal width
    radian.auto_width = TRUE,

    # insert new line between prompts
    radian.insert_new_line = FALSE,

    # when using history search (ctrl-r/ctrl-s in emacs mode), do not show duplicate results
    radian.history_search_no_duplicates = TRUE,

    # custom prompt for different modes
    radian.prompt = "\033[0;34mr$>\033[0m ",
    radian.shell_prompt = "\033[0;31m#!>\033[0m ",
    radian.browse_prompt = "\033[0;33mBrowse[{}]>\033[0m ",

    # supress the loading message for reticulate
    radian.suppress_reticulate_message = FALSE,
    # enable reticulate prompt and trigger `~`
    radian.enable_reticulate_prompt = TRUE
)
.width <- function(howWide=Sys.getenv("COLUMNS")) {
  options(width=as.integer(howWide))
}
.cls <- function() {rm(list=ls(envir=.GlobalEnv), envir=.GlobalEnv)}
.cp <- function(x) {system2("xclip",args=c("-i","-sel","clipboard"),input=capture.output(print(x)))}
