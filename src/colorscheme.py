def generate(color):
    HEADER = """" Name:     hydrangea.vim --- Hydrangea theme for Vim
    " Author:   Yuta Taniguchi <yuta.taniguchi.y.t@gmail.com>
    " URL:      https://github.com/yuttie/hydrangea-vim
    " Version:  6.2.0
    " License:  MIT License
    """

    try:
        import vim

        # When executed in Vim, directly execute a command (apply the theme)
        def execute(cmd):
            vim.command(cmd)
    except ImportError:
        # When executed outside Vim, print the whole colorscheme to stdout
        print(HEADER)

        def execute(cmd):
            print(cmd)

    execute("""hi clear
    if exists('syntax_on')
    syntax reset
    endif
    let g:colors_name = 'hydrangea'

    set background=dark
    """)

    HI_ARGS = ['ctermfg', 'ctermbg', 'cterm', 'guifg', 'guibg', 'gui']

    links = []
    for name, cdef in color.items():
        if type(cdef) is str:
            # The definition is a string
            if cdef == 'NONE':
                # Disable
                execute('hi ' + name + ' NONE')
                links.append('hi! link ' + name + ' NONE')
            else:
                # Link
                links.append('hi! link ' + name + ' ' + cdef)
        elif type(cdef) is dict and len(cdef) > 0:
            # The definition is a dictionary
            def2 = {}
            for key, val in cdef.items():
                if key == 'fg':
                    if type(val) is tuple:
                        def2['guifg'] = val[0]
                        def2['ctermfg'] = val[1]
                    elif type(val) is str and val == 'NONE':
                        def2['guifg'] = val
                        def2['ctermfg'] = val
                    elif type(val) is str:
                        def2['guifg'] = val
                    elif type(val) is int:
                        def2['ctermfg'] = val
                elif key == 'bg':
                    if type(val) is tuple:
                        def2['guibg'] = val[0]
                        def2['ctermbg'] = val[1]
                    elif type(val) is str and val == 'NONE':
                        def2['guibg'] = val
                        def2['ctermbg'] = val
                    elif type(val) is str:
                        def2['guibg'] = val
                    elif type(val) is int:
                        def2['ctermbg'] = val
                elif key == 'deco':
                    if type(val) is tuple:
                        def2['gui'] = val[0]
                        def2['cterm'] = val[1]
                    elif type(val) is str:
                        def2['gui'] = val
                        def2['cterm'] = val
            def2 = sorted(def2.items(), key=lambda x: HI_ARGS.index(x[0]))
            execute('hi ' + name + ' ' + ' '.join(k + '=' + str(v) for k, v in def2))

    for link in links:
        execute(link)
