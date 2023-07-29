local status, _ = pcall(vim.cmd, 'rose-pine')

if not status then
    print('Color scheme not found')
    return
end
