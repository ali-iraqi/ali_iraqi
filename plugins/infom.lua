--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀    DEVBOT @ali_iraqi                 ▀▄ ▄▀ 
▀▄ ▄▀            (     @Dev_iq_s      )    ▀▄ ▄▀ 
▀▄ ▄▀    ME :: معلوماتك في المجموعه  ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
--]]

do
function ali_iraqi(msg, matches)
local reply_id = msg['id']

local info = '👤 : {اســمــك} = '..msg.from.first_name..'\n'..'👥 : {اســم الــمجــموعــه} = '..msg.to.title..'\n'..'🆔 : {ايــديك} = '..msg.from.id..'\n'..'🅿️ : {ايدي المجموعه} = '..msg.to.id..'\n'..'♏️ :{معرفك} = @'..msg.from.username..'\n'..'♍️ :{معرف المجموعه} =  @'..(msg.to.username or " لا يوجد ")..'\n'..'🕚 {الوقت} : '..os.date(' %T*', os.time())..'\n'..'📅 {التاريخ} : '..os.date('!%A, %B %d, %Y*\n', timestamp)..'📱 {رقم هاتفك} : '..(msg.from.phone or "لا يوجد")

reply_msg(reply_id, info, ok_cb, false)
end

return {
patterns = {
"^معلوماتي"
},
run = ali_iraqi
}
end