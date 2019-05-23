_git_etch_branch_commands() {
    _commands=(
        'etch:Etch a description into a branch'
        'describe:Describe all branches'
        'clear:Clear a branch description'
    )

    _describe 'subcommand' _commands
}

_git_etch_branch_list_branches() {
    _branches=($(git for-each-ref --format='%(refname:short)' refs/heads))
    _describe 'branches' _branches
}

_git_etch_branch() {
    local context state state_descr line
    typeset -A opt_args

    _arguments '1: :_git_etch_branch_commands' \
               '*::arg:->args'

    case "$line[1]" in
        etch)
            _arguments '1: :_git_etch_branch_list_branches'
        ;;
        describe)
            _arguments '--fuller[Fuller]'
        ;;
        clear)
            _arguments '1: :_git_etch_branch_list_branches'
        ;;
    esac
}

compdef _git_etch_branch git-etch-branch
