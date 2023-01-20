return {
   'numToStr/Comment.nvim',
    config = function ()
        require('Comment').setup {
            --pre_hook = function(ctx)
                --local u = require "Comment.utils"

                --local location = nil
                --if ctx.ctype == u.ctype.block then
                    --location = require('ts_context_commentstring.utils').get_cursor_location()
                --elseif ctx.cmotion == u.cmotion.v or ctx.cmotion == u.cmotion.v then
                    --location = require ('ts_context_commentstring.utils').get_visual_start_location()
                --end

                --return require('ts_context_commentstring.internal').calculate_commenstring {
                    --key = ctx.ctype == u.ctype.line and '__default' or '__multiline',
                    --location = location,
                --}
            --end
        }
    end
}
