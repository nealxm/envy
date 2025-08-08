return {
    'junegunn/fzf.vim',
    cmd = {'Files', 'Helptags'},
    event = 'BufLeave',
    dependencies = { 'junegunn/fzf', dir = '/opt/homebrew/opt/fzf' }
}
