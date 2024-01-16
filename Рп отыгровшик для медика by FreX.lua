script_name('Рп отыгровки для медиков by FreX')
script_author('FreX SAMP')
script_description('Хелпер упрощаюший игровой процесс для Аризона РП by FreX')

require "lib.moonloader"
local tag = 'Рп отыгровки для медиков by FreX'
local keys = require "vkeys"
local main_color = 0x5A90CE
local yellow_color = 0xFFFF00
local main_color_text = '{5A90CE}'
local white_color = '{FFFFFF}'

function main()
    while not isSampAvailable() do wait(0) end
    sampRegisterChatCommand('heal', cmd_heal)
	sampRegisterChatCommand('cure', cmd_cure)
	sampRegisterChatCommand('healbad', cmd_healbad)
	sampRegisterChatCommand('medcard', cmd_medcard)
	sampRegisterChatCommand('healactor', cmd_healactor)
	sampRegisterChatCommand('expel', cmd_expel)
	sampRegisterChatCommand('godeath', cmd_godeath)
	
	sampAddChatMessage(tag, yellow_color)
    wait(-1)
end

function cmd_heal(arg)
    lua_thread.create(function()
        sampSendChat('/me достал из сумки лекарства и начал расматривать')
        wait(1000)
        sampSendChat('/todo Принимайте их 2 раза в сутки и все будет хорошо*передавая лекарства')
    end)
	var1, var2 = string.match(arg, "(.+) (.+)")
	if var1 == nill or var1 == "" then
		sampAddChatMessage('Укажите айди и цену', main_color)
	else
		sampSendChat('/heal ' .. var1 .. ' ' .. var2)
	end
end

function cmd_cure(arg)
    lua_thread.create(function()
        sampSendChat('/me достал из сумки шприц с нужным лекарством')
        wait(1000)
        sampSendChat('/do Вколол шприц человеку на земле.')
		wait(1000)
		sampSendChat('Вам нужно будет полежать в постели 7 дней и вы будете в порядке.')
    end)
	if #arg == 0 then
	sampAddChatMessage('Укажите айди ', main_color )
	else
	sampSendChat('/cure ' .. arg, main_color)
	end
end

function cmd_healbad(arg)
    lua_thread.create(function()
        sampSendChat('/me достал из сумки шприц с нужным лекарством')
        wait(1000)
        sampSendChat('/do Вколол шприц человеку напротив.')
		wait(1000)
		sampSendChat('Теперь будете думать дважды когда будете употреблять наркотики.')
    end)
	if #arg == 0 then
	sampAddChatMessage('Укажите айди ', main_color )
	else
	sampSendChat('/healbad ' .. arg, main_color)
	end
end

function cmd_medcard(arg)
    lua_thread.create(function()
        sampSendChat('/me достал из сумки блокнот и написал там имя человека напротив')
        wait(1000)
        sampSendChat('/todo Вот держите ваша мед. карта*передавая карточку')
    end)
	var1, var2 = string.match(arg, "(.+) (.+)")
	if var1 == nill or var1 == "" then
		sampAddChatMessage('Укажите айди и цену', main_color)
	else
		sampSendChat('/medcard ' .. var1 .. ' 3 3 ' .. var2)
	end
end

function cmd_healactor(arg)
    lua_thread.create(function()
        sampSendChat('/me достал из сумки лекарства и начал расматривать')
        wait(1000)
        sampSendChat('/todo Принимайте их 2 раза в сутки и все будет хорошо*передавая лекарства')
    end)
	var1, var2 = string.match(arg, "(.+) (.+)")
	if var1 == nill or var1 == "" then
		sampAddChatMessage('Укажите айди и цену', main_color)
	else
		sampSendChat('/healactor ' .. var1 .. ' ' .. var2)
	end
end

function cmd_expel(arg)
    lua_thread.create(function()
        sampSendChat('/do На поясе рация.')
        wait(1500)
        sampSendChat('/me нажал на кнопку вызова охраны')
		wait(1500)
		sampSendChat('/do Охрана вывозит человека')
		wait(1500)
    end)
	if #arg == 0 then
	sampAddChatMessage('Укажите айди ', main_color )
	else
	sampSendChat('/expel ' .. arg .. 'Нарушение Правил Больницы', main_color)
	end
end


function cmd_godeath(arg)
    lua_thread.create(function()
        sampSendChat('/do В базу данных поступил вызов скорой помощи.')
		wait(1000)
		sampSendChat('/me лёгким движением руки нажал на вызов и принял его')
    end)
	if #arg == 0 then
	sampAddChatMessage('Укажите айди ', main_color )
	else
	sampSendChat('/godeath ' .. arg, main_color)
	end
end