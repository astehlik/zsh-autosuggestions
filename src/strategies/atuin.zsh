#--------------------------------------------------------------------#
# Atuin Suggestion Strategy                                          #
#--------------------------------------------------------------------#
# Searches the Atuin history for a match and uses it as suggestion.
#

_zsh_autosuggest_strategy_atuin() {
	# Reset options to defaults and enable LOCAL_OPTIONS
	emulate -L zsh

	typeset -g suggestion="$(atuin search --limit 1 --format {command} --search-mode prefix "$1")"
}
