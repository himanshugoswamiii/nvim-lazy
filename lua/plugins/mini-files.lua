return {
    -- Use g? to show help
    "echasnovski/mini.files",
    version = false,
    opts = {
        mappings = {
            go_in = "", -- Remove l
            go_out = "", -- Removed h
        },
        windows = {
            preview = false, -- default is false
            width_preview = 30,
        },
        options = {
            -- To get trash directory, run :echo stdpath('data')
            -- Your files/directories will be available in mini.files directory in there
            permanent_delete = false,
        },
    },
    keys = {
        {
            "<leader>e",
            function()
                require("mini.files").open(vim.api.nvim_buf_get_name(0), true)
            end,
            desc = "Open mini.files (Directory of Current File)",
        },
        {
            "<leader>E",
            function()
                require("mini.files").open(vim.uv.cwd(), true)
            end,
            desc = "Open mini.files (cwd)",
        },
        {
            "<CR>",
            function()
                require("mini.files").go_in()
            end,
            desc = "Go in entry under cursor",
        },
    },

    config = function(_, opts)
        require("mini.files").setup(opts)

        -- **** Copy file Path *****
        local yank_absolute_path = function()
            local path = require("mini.files").get_fs_entry().path
            vim.fn.setreg("+", path)
            print(path)
        end

        -- **** Open file under cursor in split ****
        local map_split = function(buf_id, lhs, direction)
            local rhs = function()
                -- Make new window in split and set it as target
                local cur_target = require("mini.files").get_explorer_state().target_window
                local new_target = vim.api.nvim_win_call(cur_target, function()
                    vim.cmd(direction .. " split")
                    return vim.api.nvim_get_current_win()
                end)

                require("mini.files").set_target_window(new_target)

                -- Now open the file under the cursor in that new target window
                require("mini.files").go_in()
            end

            -- Adding `desc` will result into `show_help` entries
            local desc = "Split " .. direction
            vim.keymap.set("n", lhs, rhs, { buffer = buf_id, desc = desc })
        end

        vim.api.nvim_create_autocmd("User", {
            pattern = "MiniFilesBufferCreate",
            callback = function(args)
                local buf_id = args.data.buf_id

                -- Keymap for : copy absolute path
                -- You can use <Shift + y> to copy the file name
                vim.keymap.set(
                    "n",
                    "gy",
                    yank_absolute_path,
                    { buffer = args.data.buf_id, desc = "Copy absolute path of file" }
                )
                -- Open file in split
                map_split(buf_id, "gs", "belowright horizontal")
                map_split(buf_id, "gv", "belowright vertical")
            end,
        })
        --
    end,
}
