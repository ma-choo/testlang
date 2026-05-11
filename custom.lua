vim.api.nvim_create_autocmd("WinEnter", {
    callback = function()
        vim.wo.winhighlight = ""
    end
})

vim.api.nvim_create_autocmd("WinLeave", {
    callback = function()
        vim.wo.winhighlight = "Normal:Comment"
    end
})

-- Flash yanked text
vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank({
            higroup = "IncSearch",
            timeout = 120,
        })
    end,
})

-- Smooth accelerated scrolling
local scroll = {
    timer = nil,
    velocity = 0,
    direction = 0,
    max_velocity = 64,
    acceleration = 2,
    interval = 16, -- ~60fps
}

local function tick()
    local win = vim.api.nvim_get_current_win()
    local view = vim.fn.winsaveview()

    local delta = scroll.velocity * scroll.direction

    view.topline = math.max(1, view.topline + delta)
    view.lnum = math.max(1, view.lnum + delta)

    vim.fn.winrestview(view)
end

local function start_scroll(direction)
    if scroll.direction == direction then
        scroll.velocity = math.min(
            math.max(1, scroll.velocity * scroll.acceleration),
            scroll.max_velocity
        )
    else
        scroll.velocity = 1
    end

    scroll.direction = direction

    if scroll.timer then
        return
    end

    scroll.timer = vim.loop.new_timer()

    scroll.timer:start(
        0,
        scroll.interval,
        vim.schedule_wrap(function()
            tick()
        end)
    )
end

local function stop_scroll()
    if scroll.timer then
        scroll.timer:stop()
        scroll.timer:close()
        scroll.timer = nil
    end

    scroll.velocity = 0
    scroll.direction = 0
end

vim.keymap.set("n", "<PageDown>", function()
    start_scroll(1)
end)

vim.keymap.set("n", "<PageUp>", function()
    start_scroll(-1)
end)

vim.keymap.set("n", "<F2>", stop_scroll)
