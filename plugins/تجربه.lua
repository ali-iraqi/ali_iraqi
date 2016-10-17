--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀    DEVBOT @ali_iraqi                 ▀▄ ▄▀ 
▀▄ ▄▀            (     @Dev_iq_s      )    ▀▄ ▄▀ 
▀▄ ▄▀    ME ::  ملف ترحيب                   ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
—]]

do

local function ali_iraqi(msg,matches) 

if matches[1] == "chat_add_user" then 
return '☑️welcome in the group🌝🍷'..'\n'
..'✅Your Name⚠️'..msg.from.first_name..'\n'
..'✅username⚠️ @'..(msg.action.user.username or'لا يوجد')..'\n'
..'✅ID⚠️'..msg.action.user.id..'\n'
..'✅Telephone number⚠️ '..(msg.action.user.phone or 'لا يوجد ')..'\n'
..'〰〰〰〰〰〰〰〰〰〰'..'\n'
..'✅group name⚠️ '..msg.to.title..'\n'
..'✅Group ID⚠️ '..msg.to.id..'\n'
..'〰〰〰〰〰〰〰〰〰〰'..'\n'
..'✅Name you add⚠️  '..msg.from.print_name..'\n'
..'✅username add⚠️ '..(msg.from.username or 'لا يوجد')..'\n'
..'✅His phone number⚠️ '..(msg.from.phohne or 'لا يوجد')..'\n'
..'〰〰〰〰〰〰〰〰〰〰'..'\n'
..'#link ( https://telegram.me/joinchat/DN1ndT7onnAkqNjt7Zx06Q )'

elseif matches[1] == "chat_add_user_link" then 
return '🕎 welcome in the group 🐥'..'\n'
..'✅name⚠️ '..msg.from.first_name..'\n'
..'✅username⚠️ @'..(msg.action.user.username or'لا يوجد')..'\n'
..'✅ID you⚠️ '..msg.action.user.id..'\n'
..'✅Telephone number⚠️ '..(msg.action.user.phone or 'لا يوجد ')..'\n'
..'〰〰〰〰〰〰〰〰〰〰'..'\n'
..'✅group name⚠️ '..msg.to.title..'\n'
..'✅group ID⚠️ '..msg.to.id..'\n'
..'〰〰〰〰〰〰〰〰〰〰'..'\n'
..'#link ( https://telegram.me/joinchat/DN1ndT7onnAkqNjt7Zx06Q )'


elseif matches[1] == "chat_del_user" then 
return '💠good bye honey🐣'

end 
end 
 
return { 
patterns = { 
"^!!tgservice (.*)$" 
}, 
run = ali_iraqi 
} 
end