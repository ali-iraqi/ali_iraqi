--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀                     ▀▄ ▄▀ 
▀▄ ▄▀            (     @Dev_iq_s      )    ▀▄ ▄▀ 
▀▄ ▄▀    code  ::  منع الصوت                  ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
- - ]]

do 
local function pre_process(msg) 
local ali = msg['id'] 
local sama1 = 'ali_hajj_sama: -'..msg.to.id 
    if redis:get(sama1) and not is_momod(msg) and msg.media and msg.media.type == 'audio' then 
        delete_msg(msg.id, ok_cb, true) 
             send_large_msg(get_receiver(msg),' لاتـدز صوتيـات وليدي😐اخـاف عليک✋🏾🌝 @'..msg.from.username) 
            return "ماشي😐💔" 
end 
        return msg 
    end 
 local function sama1(msg, matches) 
     chat_id = msg.to.id 
local reply_id = msg['id'] 
     if is_momod(msg) and matches[1]== 'اقفل' and matches[2]== 'الصوت' then 
         local sama1 = 'ali_hajj_sama: -'..msg.to.id 
         redis:set(sama1, true) 
         local sama1 = "تـ्م تشغيل منع الصـوت🤖✌🏾"
         return reply_msg(reply_id, sama1, ok_cb, false) 
         end 
local reply_id = msg['id'] 
    if not is_momod(msg) and matches[1]== 'اقفل' and matches[2]== 'الصوت' then 
    local ali1 = "لتلعـب ابـुو دودة😐🌝"
 return reply_msg(reply_id, ali1, ok_cb, false) 
end 
local reply_id = msg['id'] 
if is_momod(msg) and matches[1]== 'افتح' and matches[2]== 'الصوت' then 
    local sama1 = 'ali_hajj_sama: -'..msg.to.id 
    redis:del(sama1) 
    local sama1 = "تـ्م اطفـاء منع الصـوت 🌝❣"
    return reply_msg(reply_id, sama1, ok_cb, false) 
end 

local reply_id = msg['id'] 
if not is_momod(msg) and matches[1]== 'افتح' and matches[2]== 'الصوت' then 
local sama1 = "لتلعـب ابـुو دودة😐🌝"
 return reply_msg(reply_id, sama1, ok_cb, false) 
 end 
end 
return { 
    patterns ={ 
        "^(اقفل) (الصوت)$", 
        "^(افتح) (الصوت)$" 
    }, 
run = sama1, 
pre_process = pre_process 
} 
end