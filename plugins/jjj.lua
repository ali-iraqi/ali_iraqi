local function addword(msg, name)
    local hash = 'chat:'..msg.to.id..':badword'
    redis:hset(hash, name, 'newword')
    local text = "تـ्م رفُـعٌ😕    :   "..name..  "ڪـ ژمـٱڵـ ﭜٱڵـمـچمـوعـة☹ ️ 💔😹 "
    return reply_msg(msg.id, text, ok_cb, false)
end

local function get_variables_hash(msg)

    return 'chat:'..msg.to.id..':badword'

end 

local function list_variablesbad(msg)
  local hash = get_variables_hash(msg)

  if hash then
    local names = redis:hkeys(hash)
    local text = 'ﻗﺂ̣̐ئمـة ﺂ̣̐ﻟ̣̣زْﻣـﺂ̣̐ۑل😻 : :\n\n'
    for i=1, #names do
      text = text..'- '..names[i]..'\n'
    end
    return text
  else
  return 
  end
end

function clear_commandbad(msg, var_name)
  -- Save on redis  
  local hash = get_variables_hash(msg)
  redis:del(hash, var_name)
  local text = 'تٌـمً مًسِـحً جّـمًيِعٌ ألَزمًأيِلَ مًنِ ألَقُأئمًة😞💔️'
  return reply_msg(msg.id, text, ok_cb, false)
end

local function list_variables2(msg, value)
  local hash = get_variables_hash(msg)
  
  if hash then
    local names = redis:hkeys(hash)
    local text = ''
    for i=1, #names do
  if string.match(value, names[i]) and not is_momod(msg) then
  if msg.to.type == 'channel' then
  return ""

  end
return 
end
      -- text = text..names[i]..'\n'
    end
  end
end
local function get_valuebad(msg, var_name)
  local hash = get_variables_hash(msg)
  if hash then
    local value = redis:hget(hash, var_name)
    if not value then
      return
    else
      return value
    end
  end
end
function clear_commandsbad(msg, cmd_name)
  -- Save on redis  
  local hash = get_variables_hash(msg)
  redis:hdel(hash, cmd_name)
  local text = 'تـ्م تٌـنِزيِلَ ☹️'..cmd_nae..' مـٍنـً قـْأئمـٍة ألِزِمـٍأيًلِ😮🎈 '
  return reply_msg(msg.id, text, ok_cb, false)
end

local function run(msg, matches)
  if matches[2] == 'رفع زمال' then
   if not is_momod(msg) then
   return 'يْآ لْوڪْيْ بْسْ آلْادمن يْرْفْعْ زْمْآيْلْ بْڪْيْفْة 😒🎈 لتْلْعْبْ تْرْة تْنْرْفْعْ رْئيْسْ آلْزْمْآيْلْ 😑🎈🐾'
  end
  local name = string.sub(matches[3], 1, 50)

  local text = addword(msg, name)
  return text
  end
  if matches[2] == 'قائمه الزمايل' then
  return list_variablesbad(msg)
  elseif matches[2] == 'تنزيل الزمايل' then
if not is_momod(msg) then return 'للادمنيه فقط' end
  local asd = '1'
    return clear_commandbad(msg, asd)
  elseif matches[2] == 'تنزيل زمال' or matches[2] == 'rw' then
   if not is_momod(msg) then return 'يْآ لْوڪْيْ بْسْ آلْادمن يْرْفْعْ زْمْآيْلْ بْڪْيْفْة 😒🎈 لتْلْعْبْ تْرْة تْنْرْفْعْ رْئيْسْ آلْزْمْآيْلْ 😑🎈🐾🐾' end
    return clear_commandsbad(msg, matches[3])
  else
    local name = user_print_name(msg.from)
  
    return list_variables2(msg, matches[1])
  end
end

return {
  patterns = {
  "^()(rw) (.*)$",
  "^()(رفع زمال) (.*)$",
   "^()(تنزيل زمال) (.*)$",
    "^()(قائمه الزمايل)$",
    "^()(تنزيل الزمايل)$",
"^(.+)$",
     
  },
  run = run
}