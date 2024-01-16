script_name('�� ��������� ��� ������� by FreX')
script_author('FreX SAMP')
script_description('������ ���������� ������� ������� ��� ������� �� by FreX')

require "lib.moonloader"
local tag = '�� ��������� ��� ������� by FreX'
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
        sampSendChat('/me ������ �� ����� ��������� � ����� ������������')
        wait(1000)
        sampSendChat('/todo ���������� �� 2 ���� � ����� � ��� ����� ������*��������� ���������')
    end)
	var1, var2 = string.match(arg, "(.+) (.+)")
	if var1 == nill or var1 == "" then
		sampAddChatMessage('������� ���� � ����', main_color)
	else
		sampSendChat('/heal ' .. var1 .. ' ' .. var2)
	end
end

function cmd_cure(arg)
    lua_thread.create(function()
        sampSendChat('/me ������ �� ����� ����� � ������ ����������')
        wait(1000)
        sampSendChat('/do ������ ����� �������� �� �����.')
		wait(1000)
		sampSendChat('��� ����� ����� �������� � ������� 7 ���� � �� ������ � �������.')
    end)
	if #arg == 0 then
	sampAddChatMessage('������� ���� ', main_color )
	else
	sampSendChat('/cure ' .. arg, main_color)
	end
end

function cmd_healbad(arg)
    lua_thread.create(function()
        sampSendChat('/me ������ �� ����� ����� � ������ ����������')
        wait(1000)
        sampSendChat('/do ������ ����� �������� ��������.')
		wait(1000)
		sampSendChat('������ ������ ������ ������ ����� ������ ����������� ���������.')
    end)
	if #arg == 0 then
	sampAddChatMessage('������� ���� ', main_color )
	else
	sampSendChat('/healbad ' .. arg, main_color)
	end
end

function cmd_medcard(arg)
    lua_thread.create(function()
        sampSendChat('/me ������ �� ����� ������� � ������� ��� ��� �������� ��������')
        wait(1000)
        sampSendChat('/todo ��� ������� ���� ���. �����*��������� ��������')
    end)
	var1, var2 = string.match(arg, "(.+) (.+)")
	if var1 == nill or var1 == "" then
		sampAddChatMessage('������� ���� � ����', main_color)
	else
		sampSendChat('/medcard ' .. var1 .. ' 3 3 ' .. var2)
	end
end

function cmd_healactor(arg)
    lua_thread.create(function()
        sampSendChat('/me ������ �� ����� ��������� � ����� ������������')
        wait(1000)
        sampSendChat('/todo ���������� �� 2 ���� � ����� � ��� ����� ������*��������� ���������')
    end)
	var1, var2 = string.match(arg, "(.+) (.+)")
	if var1 == nill or var1 == "" then
		sampAddChatMessage('������� ���� � ����', main_color)
	else
		sampSendChat('/healactor ' .. var1 .. ' ' .. var2)
	end
end

function cmd_expel(arg)
    lua_thread.create(function()
        sampSendChat('/do �� ����� �����.')
        wait(1500)
        sampSendChat('/me ����� �� ������ ������ ������')
		wait(1500)
		sampSendChat('/do ������ ������� ��������')
		wait(1500)
    end)
	if #arg == 0 then
	sampAddChatMessage('������� ���� ', main_color )
	else
	sampSendChat('/expel ' .. arg .. '��������� ������ ��������', main_color)
	end
end


function cmd_godeath(arg)
    lua_thread.create(function()
        sampSendChat('/do � ���� ������ �������� ����� ������ ������.')
		wait(1000)
		sampSendChat('/me ����� ��������� ���� ����� �� ����� � ������ ���')
    end)
	if #arg == 0 then
	sampAddChatMessage('������� ���� ', main_color )
	else
	sampSendChat('/godeath ' .. arg, main_color)
	end
end