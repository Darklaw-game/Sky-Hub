if game:GetService("CoreGui"):FindFirstChild("incognito") then
    oldstring = loadstring
    getfenv().loadstring = function(code)
        local source = code
        source = source:gsub("(%a+)%s*([%+%-%*/])=%s*", "%1 = %1 %2 ")
        return oldstring(source)
    end
end
if not getgenv then
    getfenv().getgenv = function(layer)
        return getfenv(layer)
    end
end
local nosaves = false
local saved_settings
local settings = {
	ui_bind = "Enum.KeyCode.RightControl";
	opaque = 0.4;
}
queueteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)
httprequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
HttpService = game:GetService("HttpService")
everyClipboard = setclipboard or toclipboard or set_clipboard or setrbxclipboard or (Clipboard and Clipboard.set)
if not everyClipboard then
	getgenv().toclipboard = function(text)
		local Converted = {
			["_setcliptoclip"] = Instance.new("ScreenGui");
			["_TextBox"] = Instance.new("TextBox");
			["_LocalScript"] = Instance.new("LocalScript");
		}
		
		Converted["_setcliptoclip"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		Converted["_setcliptoclip"].Name = "setcliptoclip"
		Converted["_setcliptoclip"].Parent = game:GetService("CoreGui")
		
		Converted["_TextBox"].ClearTextOnFocus = false
		Converted["_TextBox"].CursorPosition = -1
		Converted["_TextBox"].Font = Enum.Font.SourceSans
		Converted["_TextBox"].Text = text
		Converted["_TextBox"].TextColor3 = Color3.fromRGB(0, 0, 0)
		Converted["_TextBox"].TextSize = 14
		Converted["_TextBox"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Converted["_TextBox"].BorderColor3 = Color3.fromRGB(0, 0, 0)
		Converted["_TextBox"].BorderSizePixel = 0
		Converted["_TextBox"].Position = UDim2.new(0.48038584, 0, 0.471337587, 0)
		Converted["_TextBox"].Size = UDim2.new(0, 200, 0, 50)
		Converted["_TextBox"].Parent = Converted["_setcliptoclip"]
		
		local fake_module_scripts = {}
		
		
		local function GBGAD_fake_script() -- Fake Script: StarterGui.setcliptoclip.TextBox.LocalScript
			local script = Instance.new("LocalScript")
			script.Name = "LocalScript"
			script.Parent = Converted["_TextBox"]
			local req = require
			local require = function(obj)
				local fake = fake_module_scripts[obj]
				if fake then
					return fake()
				end
				return req(obj)
			end
		
			script.Parent.FocusLost:Connect(function()
				script.Parent.Parent:Destroy()
			end)
		end
		
		coroutine.wrap(GBGAD_fake_script)()
	end
	getgenv().setclipboard = function(text)
		local Converted = {
			["_setcliptoclip"] = Instance.new("ScreenGui");
			["_TextBox"] = Instance.new("TextBox");
			["_LocalScript"] = Instance.new("LocalScript");
		}
		
		Converted["_setcliptoclip"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		Converted["_setcliptoclip"].Name = "setcliptoclip"
		Converted["_setcliptoclip"].Parent = game:GetService("CoreGui")
		
		Converted["_TextBox"].ClearTextOnFocus = false
		Converted["_TextBox"].CursorPosition = -1
		Converted["_TextBox"].Font = Enum.Font.SourceSans
		Converted["_TextBox"].Text = text
		Converted["_TextBox"].TextColor3 = Color3.fromRGB(0, 0, 0)
		Converted["_TextBox"].TextSize = 14
		Converted["_TextBox"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Converted["_TextBox"].BorderColor3 = Color3.fromRGB(0, 0, 0)
		Converted["_TextBox"].BorderSizePixel = 0
		Converted["_TextBox"].Position = UDim2.new(0.48038584, 0, 0.471337587, 0)
		Converted["_TextBox"].Size = UDim2.new(0, 200, 0, 50)
		Converted["_TextBox"].Parent = Converted["_setcliptoclip"]
		
		local fake_module_scripts = {}
		
		
		local function GBGAD_fake_script() -- Fake Script: StarterGui.setcliptoclip.TextBox.LocalScript
			local script = Instance.new("LocalScript")
			script.Name = "LocalScript"
			script.Parent = Converted["_TextBox"]
			local req = require
			local require = function(obj)
				local fake = fake_module_scripts[obj]
				if fake then
					return fake()
				end
				return req(obj)
			end
		
			script.Parent.FocusLost:Connect(function()
				script.Parent.Parent:Destroy()
			end)
		end
		
		coroutine.wrap(GBGAD_fake_script)()
	end
	getgenv().setrbxclipboard = function(text)
		local Converted = {
			["_setcliptoclip"] = Instance.new("ScreenGui");
			["_TextBox"] = Instance.new("TextBox");
			["_LocalScript"] = Instance.new("LocalScript");
		}
		
		Converted["_setcliptoclip"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		Converted["_setcliptoclip"].Name = "setcliptoclip"
		Converted["_setcliptoclip"].Parent = game:GetService("CoreGui")
		
		Converted["_TextBox"].ClearTextOnFocus = false
		Converted["_TextBox"].CursorPosition = -1
		Converted["_TextBox"].Font = Enum.Font.SourceSans
		Converted["_TextBox"].Text = text
		Converted["_TextBox"].TextColor3 = Color3.fromRGB(0, 0, 0)
		Converted["_TextBox"].TextSize = 14
		Converted["_TextBox"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Converted["_TextBox"].BorderColor3 = Color3.fromRGB(0, 0, 0)
		Converted["_TextBox"].BorderSizePixel = 0
		Converted["_TextBox"].Position = UDim2.new(0.48038584, 0, 0.471337587, 0)
		Converted["_TextBox"].Size = UDim2.new(0, 200, 0, 50)
		Converted["_TextBox"].Parent = Converted["_setcliptoclip"]
		
		local fake_module_scripts = {}
		
		
		local function GBGAD_fake_script() -- Fake Script: StarterGui.setcliptoclip.TextBox.LocalScript
			local script = Instance.new("LocalScript")
			script.Name = "LocalScript"
			script.Parent = Converted["_TextBox"]
			local req = require
			local require = function(obj)
				local fake = fake_module_scripts[obj]
				if fake then
					return fake()
				end
				return req(obj)
			end
		
			script.Parent.FocusLost:Connect(function()
				script.Parent.Parent:Destroy()
			end)
		end
		
		coroutine.wrap(GBGAD_fake_script)()
	end
end
if not cloneref then
	getgenv().cloneref = function(...)
		local objs = table.pack(...)
		local res = {}
		local function clone(obj)
			if typeof(obj) == "table" then
				local copy = {}
				for i,v in pairs(obj) do
					copy[i] = v
				end
				return copy
			elseif typeof(obj) == "Instance" then
				if obj ~= game.TweenService then
					print(obj,"is not a valid member to be cloned.")
					return obj
				else
					local metaInstances = {}
					local function table_find(t,v)
						return (table.find(t,v) or t[v]) ~= nil
					end
					local function convertToMetaInstance(object,options)
						if object == game:GetService("TweenService") then return object end
	
						local options = options or {}
						local customMethods = options.CustomMethods or {}
						local blockMethods = options.BlockMethods or {}
						local metaInstance
	
						local dest = {customMethods.destroy, customMethods.Destroy}
						customMethods.destroy = function()
							for _,v in pairs(dest) do
								if v then
									v()
								end
							end
							if not object then
								local c = {}
								for i,v in pairs(metaInstances) do
									if i == metaInstance or not v then continue end
									c[i] = v
								end
								metaInstances = c
								c = nil
							else
								object:Destroy()
							end
						end
						customMethods.Destroy = customMethods.destroy
	
						metaInstance = setmetatable({},
						{
							__index = function(self, index)
								local found = table_find(customMethods, index)
								if found then
									return customMethods[index]
								else
									return object[index]
								end
							end,
							__newindex = function(self, index, value)
								if blockMethods[index] == true then
									error("Failed to set "..tostring(index).." to "..tostring(value))
								elseif typeof(blockMethods[index]) == "function" then
									return blockMethods[index](value)
								end
								object[index] = value
							end,
							__tostring = function()
								return tostring(object)
							end,
							__metatable = "Metatable is locked!"
						}
						)
	
						metaInstances[metaInstance] = object
	
						return metaInstance
						--return object
					end
					return metaInstances[obj] or convertToMetaInstance(obj)
				end
			else
				return obj
			end
		end
		for i,v in pairs(objs) do
			res[#res+1] = clone(v)
		end
		return unpack(res)
	end
end
HttpService = cloneref(game:GetService("HttpService")) or game:GetService("HttpService")
defaults = HttpService:JSONEncode(settings)
local OptTheme = "Midnight"
local string2 = "https://discord.com/invite/jVf7eSrED9"
_G.infydtype = 1
_G.guidragtype = "https://raw.githubusercontent.com/yofriendfromschool1/aw-temp-fix/main/skui.lua"
UserInputService = game:GetService("UserInputService")
VREnabled = game:GetService("VRService").VREnabled
local IsOnMobile = table.find({
	Enum.Platform.IOS,
	Enum.Platform.Android
}, UserInputService:GetPlatform())

if IsOnMobile then
	_G.infydtype = "https://raw.githubusercontent.com/yofriendfromschool1/mobile-delta-inf-yield/main/deltainfyield.txt"
elseif iswave then
	_G.infydtype = "https://raw.githubusercontent.com/yofriendfromschool1/wave_fixedscripts/main/iy.lua"
else
	_G.infydtype = "https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"
end
local iswave = false
if detourfunction then
	if not IsOnMobile then
		iswave = true
	end
end

_G.lmao24 = "loo"
if game:GetService("SoundService").RespectFilteringEnabled == true then
	_G.lmao24 = "Enabled"
else
	_G.lmao24 = "Disabled"
end
function save()
	if not isfolder("Sky Hub") and not nosaves then
		makefolder("Sky Hub")
		nosaves = true
		task.wait()
		local update = {
			["ui_bind"] = settings["ui_bind"],
			["opaque"] = settings["opaque"]
		}
		task.wait()
		writefile([[Sky Hub/Sky Hub Settings.json]], HttpService:JSONEncode(update))
	end
end
function updatesaves()
	local update = {
		ui_bind = ui_bind;
		opaque = opaque;
	}
	writefile("Sky Hub/Sky Hub Settings.json", HttpService:JSONEncode(update))
end
task.wait()
function loadsettings()
	task.wait(1)
	if isfolder("Sky Hub") and isfile([[Sky Hub/Sky Hub Settings.json]]) then
		local success, response = pcall(function()
			local settings = HttpService:JSONDecode(readfile([[Sky Hub/Sky Hub Settings.json]]))
			if settings.ui_bind ~= nil or settings.ui_bind ~= "null" then
				if settings.ui_bind == "Enum.KeyCode.RightControl" then
					getgenv().SkyhubKeybind = Enum.KeyCode.RightControl
				elseif settings.ui_bind == "Enum.KeyCode.LeftControl" then
					getgenv().SkyhubKeybind = Enum.KeyCode.LeftControl
				elseif settings.ui_bind == "Enum.KeyCode.LeftAlt" then
					getgenv().SkyhubKeybind = Enum.KeyCode.LeftAlt
				elseif settings.ui_bind == "Enum.KeyCode.RightAlt" then
					getgenv().SkyhubKeybind = Enum.KeyCode.RightAlt
				elseif settings.ui_bind == "Enum.KeyCode.Insert" then
					getgenv().SkyhubKeybind = Enum.KeyCode.Insert
				elseif settings.ui_bind == "Enum.KeyCode.End" then
					getgenv().SkyhubKeybind = Enum.KeyCode.End
				elseif settings.ui_bind == "Enum.KeyCode.Delete" then
					getgenv().SkyhubKeybind = Enum.KeyCode.Delete
				elseif settings.ui_bind == "Enum.KeyCode.LeftShift" then
					getgenv().SkyhubKeybind = Enum.KeyCode.LeftShift
				elseif settings.ui_bind == "Enum.KeyCode.RightShift" then
					getgenv().SkyhubKeybind = Enum.KeyCode.RightShift
				elseif settings.ui_bind == "Enum.KeyCode.F1" then
					getgenv().SkyhubKeybind = Enum.KeyCode.F1
				elseif settings.ui_bind == "Enum.KeyCode.Q" then
					getgenv().SkyhubKeybind = Enum.KeyCode.Q
				elseif settings.ui_bind == "Enum.KeyCode.E" then
					getgenv().SkyhubKeybind = Enum.KeyCode.E
				elseif settings.ui_bind == "Enum.KeyCode.R" then
					getgenv().SkyhubKeybind = Enum.KeyCode.R
				elseif settings.ui_bind == "Enum.KeyCode.T" then
					getgenv().SkyhubKeybind = Enum.KeyCode.T
				elseif settings.ui_bind == "Enum.KeyCode.Y" then
					getgenv().SkyhubKeybind = Enum.KeyCode.Y
				elseif settings.ui_bind == "Enum.KeyCode.U" then
					getgenv().SkyhubKeybind = Enum.KeyCode.U
				elseif settings.ui_bind == "Enum.KeyCode.P" then
					getgenv().SkyhubKeybind = Enum.KeyCode.P
				elseif settings.ui_bind == "Enum.KeyCode.Z" then
					getgenv().SkyhubKeybind = Enum.KeyCode.Z
				elseif settings.ui_bind == "Enum.KeyCode.X" then
					getgenv().SkyhubKeybind = Enum.KeyCode.X
				elseif settings.ui_bind == "Enum.KeyCode.M" then
					getgenv().SkyhubKeybind = Enum.KeyCode.M
				elseif settings.ui_bind == "Enum.KeyCode.V" then
					getgenv().SkyhubKeybind = Enum.KeyCode.V
				elseif settings.ui_bind == "Enum.KeyCode.N" then
					getgenv().SkyhubKeybind = Enum.KeyCode.N
				elseif settings.ui_bind == "Enum.KeyCode.Period" then
					getgenv().SkyhubKeybind = Enum.KeyCode.Period
				end
			else
				getgenv().SkyhubKeybind = Enum.KeyCode.RightControl 
			end
			if settings.opaque ~= nil or settings.opaque ~= "null" then
				getgenv().BlurIntes = settings.opaque 
			else 
				getgenv().BlurIntes = 0.4 
			end
		end)
		if not success then
			Library.Notify("Warning", "Something went wrong while loading saves", 5)
			task.wait()
			save()
		end
	end
end
task.wait()
save()