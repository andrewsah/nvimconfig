local ok, notify = pcall(require, "notify")
if not ok then
    return
end

notify.setup({
    fps = 60,
    stages = "fade",
    timeout = 1000,
})

vim.notify = notify
