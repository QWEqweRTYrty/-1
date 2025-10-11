-- -- // STELLAR 加载界面，无打字音效和跳过按钮

-- local Players = game:GetService("Players")
-- local TweenService = game:GetService("TweenService")
-- local Lighting = game:GetService("Lighting")
-- local player = Players.LocalPlayer

-- -- 模糊效果
-- local blur = Instance.new("BlurEffect", Lighting)
-- blur.Size = 0
-- TweenService:Create(blur, TweenInfo.new(0.5), {Size = 24}):Play()

-- -- 创建 ScreenGui
-- local screenGui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
-- screenGui.Name = "StellarLoader"
-- screenGui.ResetOnSpawn = false
-- screenGui.IgnoreGuiInset = true

-- -- 主框架
-- local frame = Instance.new("Frame", screenGui)
-- frame.Size = UDim2.new(1, 0, 1, 0)
-- frame.BackgroundTransparency = 1

-- -- 半透明黑色背景
-- local bg = Instance.new("Frame", frame)
-- bg.Size = UDim2.new(1, 0, 1, 0)
-- bg.BackgroundColor3 = Color3.fromRGB(10, 10, 20)
-- bg.BackgroundTransparency = 1
-- bg.ZIndex = 0
-- TweenService:Create(bg, TweenInfo.new(0.5), {BackgroundTransparency = 0.3}):Play()

-- -- 单词 "STELLAR"
-- local word = "WTB-限时开放"
-- local letters = {}

-- -- 淡出并销毁的缓动函数
-- local function tweenOutAndDestroy()
--         for _, label in ipairs(letters) do
--                 TweenService:Create(label, TweenInfo.new(0.3), {TextTransparency = 1, TextSize = 20}):Play()
--         end
--         TweenService:Create(bg, TweenInfo.new(0.5), {BackgroundTransparency = 1}):Play()
--         TweenService:Create(blur, TweenInfo.new(0.5), {Size = 0}):Play()
--         wait(0.6)
--         screenGui:Destroy()
--         blur:Destroy()
-- end

-- -- 循环逐个显示字母，带缩放效果，无声音
-- for i = 1, #word do
--         local char = word:sub(i, i)

--         local label = Instance.new("TextLabel")
--         label.Text = char
--         label.Font = Enum.Font.GothamBlack
--         label.TextColor3 = Color3.new(1, 1, 1)
--         label.TextStrokeTransparency = 1 -- 无描边
--         label.TextTransparency = 1
--         label.TextScaled = false
--         label.TextSize = 30 -- 起始较小，用于缩放效果
--         label.Size = UDim2.new(0, 60, 0, 60)
--         label.AnchorPoint = Vector2.new(0.5, 0.5)
--         label.Position = UDim2.new(0.5, (i - (#word / 2 + 0.5)) * 65, 0.5, 0)
--         label.BackgroundTransparency = 1
--         label.Parent = frame

--         -- 浅蓝色渐变
--         local gradient = Instance.new("UIGradient")
--         gradient.Color = ColorSequence.new({
--                 ColorSequenceKeypoint.new(0, Color3.fromRGB(100, 170, 255)), -- 亮浅蓝色
--                 ColorSequenceKeypoint.new(1, Color3.fromRGB(50, 100, 160))   -- 暗浅蓝色
--         })
--         gradient.Rotation = 90
--         gradient.Parent = label

--         -- 淡入和放大缓动（无声音）
--         local tweenIn = TweenService:Create(label, TweenInfo.new(0.3), {TextTransparency = 0, TextSize = 60})
--         tweenIn:Play()

--         table.insert(letters, label)
--         wait(0.25)
-- end

-- -- 自动淡出前等待片刻
-- wait(2)

-- tweenOutAndDestroy()

local StellarLibrary = (loadstring(Game:HttpGet("https://raw.githubusercontent.com/Potato5466794/GC-WTB/refs/heads/main/UI/WTB-UI.luau")))();
if StellarLibrary:LoadAnimation() then
        StellarLibrary:StartLoad();
end;
if StellarLibrary:LoadAnimation() then
        StellarLibrary:Loaded();
end;
local UserInputService = game:GetService("UserInputService")
local Window = StellarLibrary:Window({
        SubTitle = "UI by YUxingchen",
        Size = game:GetService("UserInputService").TouchEnabled and UDim2.new(0, 500, 0, 350) or UDim2.new(0, 500, 0, 320),
        TabWidth = 140
})
local Information = Window:Tab("信息", "rbxassetid://128891143813807"); -- Information -> 信息
local General = Window:Tab("主要", "rbxassetid://10723407389"); -- Main -> 主要
local Tab3 = Window:Tab("刷取", "rbxassetid://10723415335"); -- Farming -> 刷取
local Tab4 = Window:Tab("物品", "rbxassetid://10709782497"); -- Items -> 物品
local Tab5 = Window:Tab("设置", "rbxassetid://10734950309"); -- Setting -> 设置
local Tab6 = Window:Tab("本地玩家", "rbxassetid://10747373176"); -- Local Player -> 本地玩家
local Tab7 = Window:Tab("持有技能", "rbxassetid://10734984606"); -- Hold Skill -> 持有技能
local Settings = Window:Tab("设置", "rbxassetid://98216376967992"); -- Setting -> 设置 (重复标签，原代码如此)
-- local Information = Window:Tab("Information", "rbxassetid://128891143813807");
-- local General = Window:Tab("General", "rbxassetid://92150073897728");
-- local Tab3 = Window:Tab("Tab3", "rbxassetid://83493480205564");
-- local Tab4 = Window:Tab("Tab4", "rbxassetid://82733483462291");
-- local Tab5 = Window:Tab("Tab5", "rbxassetid://121264555493885");
-- local Tab6 = Window:Tab("Tab6", "rbxassetid://113316938807084");
-- local Tab7 = Window:Tab("Tab7", "rbxassetid://71040312165698"); 
-- local Tab8 = Window:Tab("Tab8", "rbxassetid://136162614128994");


Information:Seperator("公告") -- Annoucements -> 公告
Info = Information:Label("重要信息") -- Important -> 重要信息

General:Seperator("主要"); -- Main -> 主要
Time = General:Label("执行器时间"); -- Executor Time -> 执行器时间
function StellarLibraryTime()
        local GameTime = math.floor(workspace.DistributedGameTime + 0.5);
        local Hour = math.floor(GameTime / 60 ^ 2) % 24;
        local Minute = math.floor(GameTime / 60 ^ 1) % 60;
        local Second = math.floor(GameTime / 60 ^ 0) % 60;
        Time:Set("[游戏时间] : 时 : " .. Hour .. " 分 : " .. Minute .. " 秒 : " .. Second); -- [Game Time] -> [游戏时间], Hours -> 时, Min -> 分, Sec -> 秒
end;
spawn(function()
        while task.wait() do
                pcall(function()
                        StellarLibraryTime();
                end);
        end;
end);
Client = General:Label("客户端"); -- Client -> 客户端
function StellarLibraryClient()
        local Fps = workspace:GetRealPhysicsFPS();
        Client:Set("[帧率] : " .. Fps); -- [Fps] -> [帧率]
end;
spawn(function()
        while true do
                wait(0.1);
                StellarLibraryClient();
        end;
end);
Client1 = General:Label("客户端"); -- Client -> 客户端
function StellarLibraryClient1()
        local Ping = (game:GetService("Stats")).Network.ServerStatsItem["Data Ping"]:GetValueString();
        Client1:Set("[延迟] : " .. Ping); -- [Ping] -> [延迟]
end;
spawn(function()
        while true do
                wait(0.1);
                StellarLibraryClient1();
        end;
end);
General:Button("复制 Discord 链接", function() -- Copy Discord Link -> 复制 Discord 链接
        setclipboard("https://discord.gg/FmMuvkaWvG");
        StellarLibrary:Notify("已复制!", 3); -- Copied! -> 已复制!
end);
General:Label("状态 : 标签"); -- Status : label -> 状态 : 标签
-- 下拉框 Dropdown
General:Seperator("下拉框"); -- Dropdown -> 下拉框
General:Dropdown("类型", {"选项 1", "选项 2", "选项 3"}, nil, function(selected) -- Type -> 类型, Option -> 选项
    print("Selected number:", selected)
end)


-- 开关 Toggle
General:Seperator("开关"); -- Toggle -> 开关
General:Toggle("类型", {"选项 1", "选项 2", "选项 3"}, "带描述的开关", function(selected) -- Type -> 类型, Option -> 选项, Toggle with desc -> 带描述的开关
    print("Selected number:", selected)
end)
General:Toggle("类型", {"选项 1", "选项 2", "选项 3"}, nil, function(selected) -- Type -> 类型, Option -> 选项
    print("Selected number:", selected)
end)

-- 滑块 Slider
General:Seperator("滑块"); -- Slider -> 滑块
General:Slider("刷取距离", 0, 50, 25, function(value) -- Farm Distance -> 刷取距离
    print("Selected Farm Distance:", value)
end)

General:Line();
local JobLabel = General:Label("服务器 Job ID :") -- Server Job ID -> 服务器 Job ID

General:Button("复制服务器 Job ID", function() -- Copy Server Job ID -> 复制服务器 Job ID
        setclipboard("https://discord.gg/FmMuvkaWvG");
        StellarLibrary:Notify("已复制!", 3); -- Copied! -> 已复制!
end)                                                         
 General:Textbox("输入服务器 Job ID", true, function(value) -- Enter Server Job ID -> 输入服务器 Job ID
    print("Entered Job ID:", value)
end)

General:Button("加入服务器", function() -- Join Server -> 加入服务器
    print("Teleporting to Job ID...") -- 如果需要，可替换为传送逻辑
end)
-- loadstring(game:HttpGet("https://raw.githubusercontent.com/FOGOTY/FoggyObfuscator/refs/heads/main/script"))()                                                  
General:Textbox("被 Job ID", true, function(value) -- Enter Server Job ID -> 输入服务器 Job ID
    print("Entered Job ID:", value)
end)                                                       loadstring(game:HttpGet("https://raw.githubusercontent.com/FengYu-3/function/refs/heads/⭐作者风御/被遗弃.lua"))()