--// =========================
--// ALT CONTROL V4 (payload)
--// No key system, lag-fixed
--// =========================

local Players      = game:GetService("Players")
local TweenService = game:GetService("TweenService")

local LOCAL_PLAYER = Players.LocalPlayer
local LOCAL_NAME   = LOCAL_PLAYER.Name

-- ============================================================
-- Bots skip the GUI entirely.
-- ============================================================
local configuredMaster = getgenv().masterUsername
local IS_MASTER
if configuredMaster and configuredMaster ~= "" then
    IS_MASTER = (configuredMaster == LOCAL_NAME)
else
    IS_MASTER = true
end

if not IS_MASTER then
    return
end

local PlayerGui = LOCAL_PLAYER:WaitForChild("PlayerGui")

local function playForever(instance, info, goal)
    local t = TweenService:Create(instance, info, goal)
    t:Play()
    return t
end

-- ============================================================
-- SetupWarningGUI
-- ============================================================
local SetupWarningGUI = Instance.new("ScreenGui")
SetupWarningGUI.Name           = "SetupWarningGUI"
SetupWarningGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
SetupWarningGUI.ResetOnSpawn   = false
SetupWarningGUI.IgnoreGuiInset = true
SetupWarningGUI.Parent         = PlayerGui
SetupWarningGUI.DisplayOrder   = 200

local UIScale = Instance.new("UIScale")
UIScale.Scale  = 0
UIScale.Parent = SetupWarningGUI

local Frame = Instance.new("Frame")
Frame.BackgroundTransparency = 0.35
Frame.Size                   = UDim2.new(1, 0, 1, 0)
Frame.Parent                 = SetupWarningGUI
Frame.ZIndex                 = 199
Frame.BorderSizePixel        = 0
Frame.BackgroundColor3       = Color3.fromRGB(4, 12, 7)

local UIGradient = Instance.new("UIGradient")
UIGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0,   Color3.fromRGB(6, 20, 12)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(4, 12, 7)),
    ColorSequenceKeypoint.new(1,   Color3.fromRGB(6, 20, 12)),
})
UIGradient.Transparency = NumberSequence.new({
    NumberSequenceKeypoint.new(0,   0.3),
    NumberSequenceKeypoint.new(0.5, 0.45),
    NumberSequenceKeypoint.new(1,   0.3),
})
UIGradient.Parent   = Frame
UIGradient.Rotation = 90

local SetupPanel = Instance.new("Frame")
SetupPanel.ClipsDescendants = true
SetupPanel.Parent           = SetupWarningGUI
SetupPanel.AnchorPoint      = Vector2.new(0.5, 0.5)
SetupPanel.Name             = "SetupPanel"
SetupPanel.Position         = UDim2.new(0.5, 0, 0.5, 0)
SetupPanel.Size             = UDim2.new(0, 540, 0, 400)
SetupPanel.ZIndex           = 210
SetupPanel.BorderSizePixel  = 0
SetupPanel.BackgroundColor3 = Color3.fromRGB(8, 16, 10)

local UICorner = Instance.new("UICorner")
UICorner.Parent       = SetupPanel
UICorner.CornerRadius = UDim.new(0, 18)

local UIStroke = Instance.new("UIStroke")
UIStroke.Thickness    = 2
UIStroke.Transparency = 0.2
UIStroke.Parent       = SetupPanel
UIStroke.Color        = Color3.fromRGB(255, 210, 60)

local UIGradient2 = Instance.new("UIGradient")
UIGradient2.Rotation = 90
UIGradient2.Parent   = SetupPanel
UIGradient2.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(8, 16, 10)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(20, 14, 4)),
})

local Frame3 = Instance.new("Frame")
Frame3.BackgroundTransparency = 1
Frame3.Position               = UDim2.new(0, -3, 0, -3)
Frame3.Parent                 = SetupPanel
Frame3.ZIndex                 = 209
Frame3.BorderSizePixel        = 0
Frame3.Size                   = UDim2.new(1, 6, 1, 6)

local UICorner2 = Instance.new("UICorner")
UICorner2.Parent       = Frame3
UICorner2.CornerRadius = UDim.new(0, 21)

local UIStroke2 = Instance.new("UIStroke")
UIStroke2.Thickness    = 2
UIStroke2.Transparency = 0.4
UIStroke2.Parent       = Frame3
UIStroke2.Color        = Color3.fromRGB(255, 210, 60)

local UIGradient3 = Instance.new("UIGradient")
UIGradient3.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0,   Color3.fromRGB(255, 210, 60)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 240, 180)),
    ColorSequenceKeypoint.new(1,   Color3.fromRGB(255, 210, 60)),
})
UIGradient3.Transparency = NumberSequence.new({
    NumberSequenceKeypoint.new(0,   0.7),
    NumberSequenceKeypoint.new(0.2, 0.05),
    NumberSequenceKeypoint.new(0.8, 0.05),
    NumberSequenceKeypoint.new(1,   0.7),
})
UIGradient3.Parent   = UIStroke2
UIGradient3.Rotation = 0

local Frame4 = Instance.new("Frame")
Frame4.Size             = UDim2.new(0, 70, 0, 70)
Frame4.Position         = UDim2.new(0.5, -35, 0, 30)
Frame4.Parent           = SetupPanel
Frame4.ZIndex           = 211
Frame4.BorderSizePixel  = 0
Frame4.BackgroundColor3 = Color3.fromRGB(140, 100, 20)

local UICorner3 = Instance.new("UICorner")
UICorner3.Parent       = Frame4
UICorner3.CornerRadius = UDim.new(0, 35)

local UIStroke3 = Instance.new("UIStroke")
UIStroke3.Thickness    = 2
UIStroke3.Transparency = 0.3
UIStroke3.Parent       = Frame4
UIStroke3.Color        = Color3.fromRGB(255, 210, 60)

local TextLabel = Instance.new("TextLabel")
TextLabel.TextColor3             = Color3.fromRGB(255, 210, 60)
TextLabel.Parent                 = Frame4
TextLabel.Text                   = "!"
TextLabel.Font                   = Enum.Font.GothamBold
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment         = Enum.TextXAlignment.Center
TextLabel.ZIndex                 = 212
TextLabel.TextSize               = 42
TextLabel.Size                   = UDim2.new(1, 0, 1, 0)

local TextLabel2 = Instance.new("TextLabel")
TextLabel2.TextColor3             = Color3.fromRGB(255, 210, 60)
TextLabel2.Parent                 = SetupPanel
TextLabel2.Text                   = "Before You Continue"
TextLabel2.Font                   = Enum.Font.GothamBold
TextLabel2.BackgroundTransparency = 1
TextLabel2.Position               = UDim2.new(0, 20, 0, 115)
TextLabel2.TextXAlignment         = Enum.TextXAlignment.Center
TextLabel2.ZIndex                 = 211
TextLabel2.TextSize               = 22
TextLabel2.Size                   = UDim2.new(1, -40, 0, 32)

local Frame5 = Instance.new("Frame")
Frame5.Size                   = UDim2.new(1, -60, 0, 130)
Frame5.BackgroundTransparency = 0.2
Frame5.Position               = UDim2.new(0, 30, 0, 155)
Frame5.Parent                 = SetupPanel
Frame5.ZIndex                 = 211
Frame5.BorderSizePixel        = 0
Frame5.BackgroundColor3       = Color3.fromRGB(22, 38, 26)

local UICorner4 = Instance.new("UICorner")
UICorner4.Parent       = Frame5
UICorner4.CornerRadius = UDim.new(0, 12)

local UIStroke4 = Instance.new("UIStroke")
UIStroke4.Thickness    = 1
UIStroke4.Transparency = 0.4
UIStroke4.Parent       = Frame5
UIStroke4.Color        = Color3.fromRGB(140, 100, 20)

local TextLabel3 = Instance.new("TextLabel")
TextLabel3.TextWrapped            = true
TextLabel3.TextColor3             = Color3.fromRGB(220, 255, 230)
TextLabel3.Parent                 = Frame5
TextLabel3.Text                   = "If you just ran this script and haven't set up your alt and owner accounts in the configuration yet, do that first. Otherwise, it won't run properly or as intended."
TextLabel3.TextXAlignment         = Enum.TextXAlignment.Center
TextLabel3.Font                   = Enum.Font.GothamMedium
TextLabel3.BackgroundTransparency = 1
TextLabel3.Position               = UDim2.new(0, 15, 0, 15)
TextLabel3.TextYAlignment         = Enum.TextYAlignment.Center
TextLabel3.ZIndex                 = 212
TextLabel3.TextSize               = 15
TextLabel3.Size                   = UDim2.new(1, -30, 1, -30)

local TextButton = Instance.new("TextButton")
TextButton.TextColor3       = Color3.fromRGB(8, 18, 12)
TextButton.Parent           = SetupPanel
TextButton.Text             = "DISMISS"
TextButton.AutoButtonColor  = false
TextButton.Font             = Enum.Font.GothamBold
TextButton.Position         = UDim2.new(0, 30, 0, 300)
TextButton.Size             = UDim2.new(1, -60, 0, 48)
TextButton.ZIndex           = 212
TextButton.TextSize         = 15
TextButton.BackgroundColor3 = Color3.fromRGB(70, 220, 120)

local UICorner5 = Instance.new("UICorner")
UICorner5.Parent       = TextButton
UICorner5.CornerRadius = UDim.new(0, 12)

local UIStroke5 = Instance.new("UIStroke")
UIStroke5.Thickness    = 1.5
UIStroke5.Transparency = 0.3
UIStroke5.Parent       = TextButton
UIStroke5.Color        = Color3.fromRGB(180, 255, 200)

local UIGradient4 = Instance.new("UIGradient")
UIGradient4.Rotation = 0
UIGradient4.Parent   = TextButton
UIGradient4.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(90, 240, 140)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(45, 180, 95)),
})

local TextLabel4 = Instance.new("TextLabel")
TextLabel4.TextColor3             = Color3.fromRGB(150, 230, 170)
TextLabel4.Parent                 = SetupPanel
TextLabel4.Text                   = "Auto-dismissing in 8s"
TextLabel4.Font                   = Enum.Font.Gotham
TextLabel4.BackgroundTransparency = 1
TextLabel4.Position               = UDim2.new(0, 30, 0, 358)
TextLabel4.TextXAlignment         = Enum.TextXAlignment.Center
TextLabel4.ZIndex                 = 212
TextLabel4.TextSize               = 12
TextLabel4.Size                   = UDim2.new(1, -60, 0, 20)

local Frame6 = Instance.new("Frame")
Frame6.Visible                = false
Frame6.BackgroundTransparency = 1
Frame6.Position               = UDim2.new(0, -3, 0, -3)
Frame6.Parent                 = TextButton
Frame6.ZIndex                 = 211
Frame6.BorderSizePixel        = 0
Frame6.Size                   = UDim2.new(1, 6, 1, 6)

local UICorner6 = Instance.new("UICorner")
UICorner6.Parent       = Frame6
UICorner6.CornerRadius = UDim.new(0, 14)

local UIStroke6 = Instance.new("UIStroke")
UIStroke6.Thickness    = 2
UIStroke6.Transparency = 0.3
UIStroke6.Parent       = Frame6
UIStroke6.Color        = Color3.fromRGB(180, 255, 200)

local Sound = Instance.new("Sound")
Sound.SoundId = "rbxassetid://6895079853"
Sound.Parent  = TextButton
Sound.Volume  = 0.5

TextButton.MouseEnter:Connect(function()
    Frame6.Visible = true
    TweenService:Create(TextButton, TweenInfo.new(0.2), { BackgroundColor3 = Color3.fromRGB(110, 255, 160) }):Play()
    TweenService:Create(UIStroke6,  TweenInfo.new(0.2), { Transparency = 0.1 }):Play()
end)

TextButton.MouseLeave:Connect(function()
    TweenService:Create(TextButton, TweenInfo.new(0.2), { BackgroundColor3 = Color3.fromRGB(70, 220, 120) }):Play()
    TweenService:Create(UIStroke6,  TweenInfo.new(0.3), { Transparency = 0.8 }):Play()
end)

TextButton.MouseButton1Down:Connect(function()
    Sound:Play()
    TweenService:Create(TextButton, TweenInfo.new(0.05), { BackgroundColor3 = Color3.fromRGB(200, 255, 220) }):Play()
end)

TextButton.MouseButton1Up:Connect(function()
    TweenService:Create(TextButton, TweenInfo.new(0.15), { BackgroundColor3 = Color3.fromRGB(110, 255, 160) }):Play()
end)

TextButton.MouseButton1Click:Connect(function() end)

playForever(
    UIStroke2,
    TweenInfo.new(1.8, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true),
    { Thickness = 4, Transparency = 0.05 }
)

task.spawn(function()
    for _, text in ipairs({
        "Auto-dismissing in 8s", "Auto-dismissing in 7s", "Auto-dismissing in 6s",
        "Auto-dismissing in 5s", "Auto-dismissing in 4s", "Auto-dismissing in 3s",
        "Auto-dismissing in 2s", "Auto-dismissing in 1s",
    }) do
        TextLabel4.Text = text
        task.wait(1)
    end

    TweenService:Create(SetupPanel, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.In), { Size = UDim2.new(0, 0, 0, 0) }):Play()
    TweenService:Create(Frame,      TweenInfo.new(0.3), { BackgroundTransparency = 1 }):Play()
    task.wait(0.3)
    SetupWarningGUI:Destroy()
end)

SetupPanel.Size              = UDim2.new(0, 0, 0, 0)
Frame.BackgroundTransparency = 1
TweenService:Create(Frame,      TweenInfo.new(0.3), { BackgroundTransparency = 0.35 }):Play()
TweenService:Create(SetupPanel, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = UDim2.new(0, 540, 0, 400) }):Play()
task.wait(0.35)

-- ============================================================
-- IdentityWarningGUI
-- ============================================================
local IdentityWarningGUI = Instance.new("ScreenGui")
IdentityWarningGUI.Name           = "IdentityWarningGUI"
IdentityWarningGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
IdentityWarningGUI.ResetOnSpawn   = false
IdentityWarningGUI.IgnoreGuiInset = true
IdentityWarningGUI.Parent         = PlayerGui
IdentityWarningGUI.DisplayOrder   = 210

local UIScale2 = Instance.new("UIScale")
UIScale2.Scale  = 0
UIScale2.Parent = IdentityWarningGUI

local Frame7 = Instance.new("Frame")
Frame7.BackgroundTransparency = 0.35
Frame7.Size                    = UDim2.new(1, 0, 1, 0)
Frame7.Parent                  = IdentityWarningGUI
Frame7.ZIndex                  = 209
Frame7.BorderSizePixel         = 0
Frame7.BackgroundColor3        = Color3.fromRGB(20, 4, 4)

local UIGradient5 = Instance.new("UIGradient")
UIGradient5.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0,   Color3.fromRGB(18, 4, 4)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(30, 8, 8)),
    ColorSequenceKeypoint.new(1,   Color3.fromRGB(18, 4, 4)),
})
UIGradient5.Transparency = NumberSequence.new({
    NumberSequenceKeypoint.new(0,   0.3),
    NumberSequenceKeypoint.new(0.5, 0.45),
    NumberSequenceKeypoint.new(1,   0.3),
})
UIGradient5.Parent   = Frame7
UIGradient5.Rotation = 90

local IdentityPanel = Instance.new("Frame")
IdentityPanel.ClipsDescendants = true
IdentityPanel.Parent           = IdentityWarningGUI
IdentityPanel.AnchorPoint      = Vector2.new(0.5, 0.5)
IdentityPanel.Name             = "IdentityPanel"
IdentityPanel.Position         = UDim2.new(0.5, 0, 0.5, 0)
IdentityPanel.Size             = UDim2.new(0, 520, 0, 480)
IdentityPanel.ZIndex           = 220
IdentityPanel.BorderSizePixel  = 0
IdentityPanel.BackgroundColor3 = Color3.fromRGB(8, 16, 10)

local UICorner7 = Instance.new("UICorner")
UICorner7.Parent       = IdentityPanel
UICorner7.CornerRadius = UDim.new(0, 18)

local UIStroke7 = Instance.new("UIStroke")
UIStroke7.Thickness    = 2
UIStroke7.Transparency = 0.15
UIStroke7.Parent       = IdentityPanel
UIStroke7.Color        = Color3.fromRGB(255, 70, 70)

local UIGradient6 = Instance.new("UIGradient")
UIGradient6.Rotation = 90
UIGradient6.Parent   = IdentityPanel
UIGradient6.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(8, 16, 10)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(24, 8, 8)),
})

local Frame9 = Instance.new("Frame")
Frame9.BackgroundTransparency = 1
Frame9.Position               = UDim2.new(0, -3, 0, -3)
Frame9.Parent                 = IdentityPanel
Frame9.ZIndex                 = 219
Frame9.BorderSizePixel        = 0
Frame9.Size                   = UDim2.new(1, 6, 1, 6)

local UICorner8 = Instance.new("UICorner")
UICorner8.Parent       = Frame9
UICorner8.CornerRadius = UDim.new(0, 21)

local UIStroke8 = Instance.new("UIStroke")
UIStroke8.Thickness    = 2
UIStroke8.Transparency = 0.35
UIStroke8.Parent       = Frame9
UIStroke8.Color        = Color3.fromRGB(255, 70, 70)

local UIGradient7 = Instance.new("UIGradient")
UIGradient7.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0,   Color3.fromRGB(255, 70, 70)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 180, 180)),
    ColorSequenceKeypoint.new(1,   Color3.fromRGB(255, 70, 70)),
})
UIGradient7.Transparency = NumberSequence.new({
    NumberSequenceKeypoint.new(0,   0.7),
    NumberSequenceKeypoint.new(0.2, 0.05),
    NumberSequenceKeypoint.new(0.8, 0.05),
    NumberSequenceKeypoint.new(1,   0.7),
})
UIGradient7.Parent   = UIStroke8
UIGradient7.Rotation = 0

local Frame10 = Instance.new("Frame")
Frame10.Size             = UDim2.new(0, 74, 0, 74)
Frame10.Position         = UDim2.new(0.5, -37, 0, 24)
Frame10.Parent           = IdentityPanel
Frame10.ZIndex           = 221
Frame10.BorderSizePixel  = 0
Frame10.BackgroundColor3 = Color3.fromRGB(150, 30, 30)

local UICorner9 = Instance.new("UICorner")
UICorner9.Parent       = Frame10
UICorner9.CornerRadius = UDim.new(0, 37)

local UIStroke9 = Instance.new("UIStroke")
UIStroke9.Thickness    = 2
UIStroke9.Transparency = 0.2
UIStroke9.Parent       = Frame10
UIStroke9.Color        = Color3.fromRGB(255, 70, 70)

local TextLabel5 = Instance.new("TextLabel")
TextLabel5.TextColor3             = Color3.fromRGB(255, 70, 70)
TextLabel5.Parent                 = Frame10
TextLabel5.Text                   = "!"
TextLabel5.Font                   = Enum.Font.GothamBold
TextLabel5.BackgroundTransparency = 1
TextLabel5.TextXAlignment         = Enum.TextXAlignment.Center
TextLabel5.ZIndex                 = 222
TextLabel5.TextSize               = 46
TextLabel5.Size                   = UDim2.new(1, 0, 1, 0)

local TextLabel6 = Instance.new("TextLabel")
TextLabel6.TextColor3             = Color3.fromRGB(255, 70, 70)
TextLabel6.Parent                 = IdentityPanel
TextLabel6.Text                   = "Account Not Recognized"
TextLabel6.Font                   = Enum.Font.GothamBold
TextLabel6.BackgroundTransparency = 1
TextLabel6.Position               = UDim2.new(0, 20, 0, 112)
TextLabel6.TextXAlignment         = Enum.TextXAlignment.Center
TextLabel6.ZIndex                 = 221
TextLabel6.TextSize               = 22
TextLabel6.Size                   = UDim2.new(1, -40, 0, 34)

local Frame11 = Instance.new("Frame")
Frame11.Size                   = UDim2.new(1, -60, 0, 96)
Frame11.BackgroundTransparency = 0.2
Frame11.Position               = UDim2.new(0, 30, 0, 152)
Frame11.Parent                 = IdentityPanel
Frame11.ZIndex                 = 221
Frame11.BorderSizePixel        = 0
Frame11.BackgroundColor3       = Color3.fromRGB(22, 38, 26)

local UICorner10 = Instance.new("UICorner")
UICorner10.Parent       = Frame11
UICorner10.CornerRadius = UDim.new(0, 12)

local UIStroke10 = Instance.new("UIStroke")
UIStroke10.Thickness    = 1
UIStroke10.Transparency = 0.35
UIStroke10.Parent       = Frame11
UIStroke10.Color        = Color3.fromRGB(150, 30, 30)

local TextLabel7 = Instance.new("TextLabel")
TextLabel7.TextWrapped            = true
TextLabel7.TextColor3             = Color3.fromRGB(220, 255, 230)
TextLabel7.Parent                 = Frame11
TextLabel7.Text                   = "Your account (" .. LOCAL_NAME .. ") isn't in the current configuration.\n\nWhat role should this account have?"
TextLabel7.TextXAlignment         = Enum.TextXAlignment.Center
TextLabel7.Font                   = Enum.Font.GothamMedium
TextLabel7.BackgroundTransparency = 1
TextLabel7.Position               = UDim2.new(0, 15, 0, 10)
TextLabel7.TextYAlignment         = Enum.TextYAlignment.Center
TextLabel7.ZIndex                 = 222
TextLabel7.TextSize               = 14
TextLabel7.Size                   = UDim2.new(1, -30, 1, -20)

local Frame12 = Instance.new("Frame")
Frame12.BackgroundTransparency = 1
Frame12.Position               = UDim2.new(0, 30, 0, 262)
Frame12.Parent                 = IdentityPanel
Frame12.ZIndex                 = 221
Frame12.BorderSizePixel        = 0
Frame12.Size                   = UDim2.new(1, -60, 0, 48)

local TextButton2 = Instance.new("TextButton")
TextButton2.TextColor3       = Color3.fromRGB(220, 255, 230)
TextButton2.Parent           = Frame12
TextButton2.Text             = "BECOME OWNER"
TextButton2.AutoButtonColor  = false
TextButton2.Font             = Enum.Font.GothamBold
TextButton2.Size             = UDim2.new(0.48, 0, 1, 0)
TextButton2.ZIndex           = 222
TextButton2.TextSize         = 13
TextButton2.BackgroundColor3 = Color3.fromRGB(255, 70, 70)

local UICorner11 = Instance.new("UICorner")
UICorner11.Parent       = TextButton2
UICorner11.CornerRadius = UDim.new(0, 10)

local UIStroke11 = Instance.new("UIStroke")
UIStroke11.Thickness    = 1.5
UIStroke11.Transparency = 0.4
UIStroke11.Parent       = TextButton2
UIStroke11.Color        = Color3.fromRGB(180, 255, 200)

local UIGradient8 = Instance.new("UIGradient")
UIGradient8.Rotation = 0
UIGradient8.Parent   = TextButton2
UIGradient8.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(220, 60, 60)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(140, 30, 30)),
})

local TextButton3 = Instance.new("TextButton")
TextButton3.TextColor3       = Color3.fromRGB(220, 255, 230)
TextButton3.Parent           = Frame12
TextButton3.Text             = "BECOME BOT"
TextButton3.AutoButtonColor  = false
TextButton3.Font             = Enum.Font.GothamBold
TextButton3.Position         = UDim2.new(0.52, 0, 0, 0)
TextButton3.Size             = UDim2.new(0.48, 0, 1, 0)
TextButton3.ZIndex           = 222
TextButton3.TextSize         = 13
TextButton3.BackgroundColor3 = Color3.fromRGB(32, 55, 38)

local UICorner12 = Instance.new("UICorner")
UICorner12.Parent       = TextButton3
UICorner12.CornerRadius = UDim.new(0, 10)

local UIStroke12 = Instance.new("UIStroke")
UIStroke12.Thickness    = 1.5
UIStroke12.Transparency = 0.4
UIStroke12.Parent       = TextButton3
UIStroke12.Color        = Color3.fromRGB(60, 150, 85)

local Frame13 = Instance.new("Frame")
Frame13.Visible                = false
Frame13.BackgroundTransparency = 1
Frame13.Position               = UDim2.new(0, 30, 0, 262)
Frame13.Parent                 = IdentityPanel
Frame13.ZIndex                 = 223
Frame13.BorderSizePixel        = 0
Frame13.Size                   = UDim2.new(1, -60, 0, 44)

local TextLabel8 = Instance.new("TextLabel")
TextLabel8.TextColor3             = Color3.fromRGB(150, 230, 170)
TextLabel8.Parent                 = Frame13
TextLabel8.Text                   = "SELECT BOT SLOT"
TextLabel8.Font                   = Enum.Font.GothamBold
TextLabel8.BackgroundTransparency = 1
TextLabel8.Position               = UDim2.new(0, 0, 0, -18)
TextLabel8.TextXAlignment         = Enum.TextXAlignment.Center
TextLabel8.ZIndex                 = 224
TextLabel8.TextSize               = 11
TextLabel8.Size                   = UDim2.new(1, 0, 0, 16)

local function makeBotButton(text, xOffset)
    local b = Instance.new("TextButton")
    b.TextColor3       = Color3.fromRGB(220, 255, 230)
    b.Parent           = Frame13
    b.Text             = text
    b.AutoButtonColor  = false
    b.Font             = Enum.Font.GothamBold
    b.Position         = UDim2.new(0, xOffset, 0, 4)
    b.Size             = UDim2.new(0, 62, 0, 34)
    b.ZIndex           = 224
    b.TextSize         = 12
    b.BackgroundColor3 = Color3.fromRGB(22, 38, 26)
    local c = Instance.new("UICorner")
    c.Parent       = b
    c.CornerRadius = UDim.new(0, 8)
    local s = Instance.new("UIStroke")
    s.Thickness    = 1
    s.Transparency = 0.4
    s.Parent       = b
    s.Color        = Color3.fromRGB(60, 150, 85)
    return b
end

local TextButton4 = makeBotButton("BOT 1", 0)
local TextButton5 = makeBotButton("BOT 2", 68)
local TextButton6 = makeBotButton("BOT 3", 136)
local TextButton7 = makeBotButton("BOT 4", 204)
local TextButton8 = makeBotButton("BOT 5", 272)

local TextLabel9 = Instance.new("TextLabel")
TextLabel9.TextColor3             = Color3.fromRGB(80, 255, 120)
TextLabel9.Parent                 = IdentityPanel
TextLabel9.Text                   = ""
TextLabel9.Font                   = Enum.Font.GothamMedium
TextLabel9.BackgroundTransparency = 1
TextLabel9.Position               = UDim2.new(0, 30, 0, 318)
TextLabel9.TextXAlignment         = Enum.TextXAlignment.Center
TextLabel9.ZIndex                 = 221
TextLabel9.TextSize               = 13
TextLabel9.Size                   = UDim2.new(1, -60, 0, 24)

local TextButton9 = Instance.new("TextButton")
TextButton9.TextColor3       = Color3.fromRGB(220, 255, 230)
TextButton9.Parent           = IdentityPanel
TextButton9.Text             = "DISMISS"
TextButton9.AutoButtonColor  = false
TextButton9.Font             = Enum.Font.GothamBold
TextButton9.Position         = UDim2.new(0, 30, 0, 352)
TextButton9.Size             = UDim2.new(1, -60, 0, 46)
TextButton9.ZIndex           = 222
TextButton9.TextSize         = 14
TextButton9.BackgroundColor3 = Color3.fromRGB(22, 38, 26)

local UICorner18 = Instance.new("UICorner")
UICorner18.Parent       = TextButton9
UICorner18.CornerRadius = UDim.new(0, 10)

local UIStroke18 = Instance.new("UIStroke")
UIStroke18.Thickness    = 1.5
UIStroke18.Transparency = 0.4
UIStroke18.Parent       = TextButton9
UIStroke18.Color        = Color3.fromRGB(140, 40, 40)

local TextLabel10 = Instance.new("TextLabel")
TextLabel10.TextColor3             = Color3.fromRGB(150, 230, 170)
TextLabel10.Parent                 = IdentityPanel
TextLabel10.Text                   = "Auto-dismissing in 10s"
TextLabel10.Font                   = Enum.Font.Gotham
TextLabel10.BackgroundTransparency = 1
TextLabel10.Position               = UDim2.new(0, 30, 0, 406)
TextLabel10.TextXAlignment         = Enum.TextXAlignment.Center
TextLabel10.ZIndex                 = 221
TextLabel10.TextSize               = 12
TextLabel10.Size                   = UDim2.new(1, -60, 0, 18)

local Sound2 = Instance.new("Sound")
Sound2.SoundId = "rbxassetid://6895079853"
Sound2.Parent  = IdentityPanel
Sound2.Volume  = 0.5

for _, v in ipairs({
    { textButton = TextButton2, r = 255, g = 90, b = 90, r2 = 255, g2 = 70, b2 = 70 },
    { textButton = TextButton3, r = 45,  g = 75, b = 55, r2 = 32,  g2 = 55, b2 = 38 },
    { textButton = TextButton9, r = 32,  g = 55, b = 38, r2 = 22,  g2 = 38, b2 = 26 },
}) do
    v.textButton.MouseEnter:Connect(function()
        TweenService:Create(v.textButton, TweenInfo.new(0.15), { BackgroundColor3 = Color3.fromRGB(v.r, v.g, v.b) }):Play()
    end)
    v.textButton.MouseLeave:Connect(function()
        TweenService:Create(v.textButton, TweenInfo.new(0.15), { BackgroundColor3 = Color3.fromRGB(v.r2, v.g2, v.b2) }):Play()
    end)
    v.textButton.MouseButton1Down:Connect(function() Sound2:Play() end)
end

TextButton2.MouseButton1Click:Connect(function()
    getgenv().masterUsername = LOCAL_NAME
    TextLabel9.Text       = "✓ Set as Owner. Make sure to configure your accounts next time."
    TextLabel9.TextColor3 = Color3.fromRGB(80, 255, 120)
end)

TextButton3.MouseButton1Click:Connect(function()
    Frame12.Visible = false
    Frame13.Visible = true
end)

local botButtonTexts = {
    [

    --// =========================
--// ALT CONTROL V4
--// Self-contained, no key system, lag-fixed
--// =========================

--// Config
getgenv().UseDisplayNames = false
getgenv().botList = {
    "AltSubordinate",
    "AltSubordinate2",
    "AltSubordinate3"
}
getgenv().masterUsername = "YourMainAccount"
getgenv().totalBots = 3
getgenv().cmdPrefix = "."
getgenv().printHelp = true
getgenv().targetFPS = 60
getgenv().antiAFK = true
getgenv().announce = true
getgenv().startupMessage = true
getgenv().ui = false
getgenv().uiKeybind = "Comma"
getgenv().commandToken = "CHANGETHISTOKENTOANYTHING"

-- ============================================================
-- Payload
-- ============================================================
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

local LOCAL_PLAYER = Players.LocalPlayer
local LOCAL_NAME = LOCAL_PLAYER.Name

local configuredMaster = getgenv().masterUsername
local IS_MASTER
if configuredMaster and configuredMaster ~= "" then
    IS_MASTER = (configuredMaster == LOCAL_NAME)
else
    IS_MASTER = true
end

if not IS_MASTER then
    return
end

local PlayerGui = LOCAL_PLAYER:WaitForChild("PlayerGui")

local function playForever(instance, info, goal)
    local t = TweenService:Create(instance, info, goal)
    t:Play()
    return t
end

-- ============================================================
-- SetupWarningGUI
-- ============================================================
local SetupWarningGUI = Instance.new("ScreenGui")
SetupWarningGUI.Name = "SetupWarningGUI"
SetupWarningGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
SetupWarningGUI.ResetOnSpawn = false
SetupWarningGUI.IgnoreGuiInset = true
SetupWarningGUI.Parent = PlayerGui
SetupWarningGUI.DisplayOrder = 200

local UIScale = Instance.new("UIScale")
UIScale.Scale = 0
UIScale.Parent = SetupWarningGUI

local Frame = Instance.new("Frame")
Frame.BackgroundTransparency = 0.35
Frame.Size = UDim2.new(1, 0, 1, 0)
Frame.Parent = SetupWarningGUI
Frame.ZIndex = 199
Frame.BorderSizePixel = 0
Frame.BackgroundColor3 = Color3.fromRGB(4, 12, 7)

local UIGradient = Instance.new("UIGradient")
UIGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(6, 20, 12)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(4, 12, 7)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(6, 20, 12)),
})
UIGradient.Transparency = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 0.3),
    NumberSequenceKeypoint.new(0.5, 0.45),
    NumberSequenceKeypoint.new(1, 0.3),
})
UIGradient.Parent = Frame
UIGradient.Rotation = 90

local SetupPanel = Instance.new("Frame")
SetupPanel.ClipsDescendants = true
SetupPanel.Parent = SetupWarningGUI
SetupPanel.AnchorPoint = Vector2.new(0.5, 0.5)
SetupPanel.Name = "SetupPanel"
SetupPanel.Position = UDim2.new(0.5, 0, 0.5, 0)
SetupPanel.Size = UDim2.new(0, 540, 0, 400)
SetupPanel.ZIndex = 210
SetupPanel.BorderSizePixel = 0
SetupPanel.BackgroundColor3 = Color3.fromRGB(8, 16, 10)

local UICorner = Instance.new("UICorner")
UICorner.Parent = SetupPanel
UICorner.CornerRadius = UDim.new(0, 18)

local UIStroke = Instance.new("UIStroke")
UIStroke.Thickness = 2
UIStroke.Transparency = 0.2
UIStroke.Parent = SetupPanel
UIStroke.Color = Color3.fromRGB(255, 210, 60)

local UIGradient2 = Instance.new("UIGradient")
UIGradient2.Rotation = 90
UIGradient2.Parent = SetupPanel
UIGradient2.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(8, 16, 10)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(20, 14, 4)),
})

local Frame3 = Instance.new("Frame")
Frame3.BackgroundTransparency = 1
Frame3.Position = UDim2.new(0, -3, 0, -3)
Frame3.Parent = SetupPanel
Frame3.ZIndex = 209
Frame3.BorderSizePixel = 0
Frame3.Size = UDim2.new(1, 6, 1, 6)

local UICorner2 = Instance.new("UICorner")
UICorner2.Parent = Frame3
UICorner2.CornerRadius = UDim.new(0, 21)

local UIStroke2 = Instance.new("UIStroke")
UIStroke2.Thickness = 2
UIStroke2.Transparency = 0.4
UIStroke2.Parent = Frame3
UIStroke2.Color = Color3.fromRGB(255, 210, 60)

local UIGradient3 = Instance.new("UIGradient")
UIGradient3.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 210, 60)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 240, 180)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 210, 60)),
})
UIGradient3.Transparency = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 0.7),
    NumberSequenceKeypoint.new(0.2, 0.05),
    NumberSequenceKeypoint.new(0.8, 0.05),
    NumberSequenceKeypoint.new(1, 0.7),
})
UIGradient3.Parent = UIStroke2
UIGradient3.Rotation = 0

local Frame4 = Instance.new("Frame")
Frame4.Size = UDim2.new(0, 70, 0, 70)
Frame4.Position = UDim2.new(0.5, -35, 0, 30)
Frame4.Parent = SetupPanel
Frame4.ZIndex = 211
Frame4.BorderSizePixel = 0
Frame4.BackgroundColor3 = Color3.fromRGB(140, 100, 20)

local UICorner3 = Instance.new("UICorner")
UICorner3.Parent = Frame4
UICorner3.CornerRadius = UDim.new(0, 35)

local UIStroke3 = Instance.new("UIStroke")
UIStroke3.Thickness = 2
UIStroke3.Transparency = 0.3
UIStroke3.Parent = Frame4
UIStroke3.Color = Color3.fromRGB(255, 210, 60)

local TextLabel = Instance.new("TextLabel")
TextLabel.TextColor3 = Color3.fromRGB(255, 210, 60)
TextLabel.Parent = Frame4
TextLabel.Text = "!"
TextLabel.Font = Enum.Font.GothamBold
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Center
TextLabel.ZIndex = 212
TextLabel.TextSize = 42
TextLabel.Size = UDim2.new(1, 0, 1, 0)

local TextLabel2 = Instance.new("TextLabel")
TextLabel2.TextColor3 = Color3.fromRGB(255, 210, 60)
TextLabel2.Parent = SetupPanel
TextLabel2.Text = "Before You Continue"
TextLabel2.Font = Enum.Font.GothamBold
TextLabel2.BackgroundTransparency = 1
TextLabel2.Position = UDim2.new(0, 20, 0, 115)
TextLabel2.TextXAlignment = Enum.TextXAlignment.Center
TextLabel2.ZIndex = 211
TextLabel2.TextSize = 22
TextLabel2.Size = UDim2.new(1, -40, 0, 32)

local Frame5 = Instance.new("Frame")
Frame5.Size = UDim2.new(1, -60, 0, 130)
Frame5.BackgroundTransparency = 0.2
Frame5.Position = UDim2.new(0, 30, 0, 155)
Frame5.Parent = SetupPanel
Frame5.ZIndex = 211
Frame5.BorderSizePixel = 0
Frame5.BackgroundColor3 = Color3.fromRGB(22, 38, 26)

local UICorner4 = Instance.new("UICorner")
UICorner4.Parent = Frame5
UICorner4.CornerRadius = UDim.new(0, 12)

local UIStroke4 = Instance.new("UIStroke")
UIStroke4.Thickness = 1
UIStroke4.Transparency = 0.4
UIStroke4.Parent = Frame5
UIStroke4.Color = Color3.fromRGB(140, 100, 20)

local TextLabel3 = Instance.new("TextLabel")
TextLabel3.TextWrapped = true
TextLabel3.TextColor3 = Color3.fromRGB(220, 255, 230)
TextLabel3.Parent = Frame5
TextLabel3.Text = "If you just ran this script and haven't set up your alt and owner accounts in the configuration yet, do that first. Otherwise, it won't run properly or as intended."
TextLabel3.TextXAlignment = Enum.TextXAlignment.Center
TextLabel3.Font = Enum.Font.GothamMedium
TextLabel3.BackgroundTransparency = 1
TextLabel3.Position = UDim2.new(0, 15, 0, 15)
TextLabel3.TextYAlignment = Enum.TextYAlignment.Center
TextLabel3.ZIndex = 212
TextLabel3.TextSize = 15
TextLabel3.Size = UDim2.new(1, -30, 1, -30)

local TextButton = Instance.new("TextButton")
TextButton.TextColor3 = Color3.fromRGB(8, 18, 12)
TextButton.Parent = SetupPanel
TextButton.Text = "DISMISS"
TextButton.AutoButtonColor = false
TextButton.Font = Enum.Font.GothamBold
TextButton.Position = UDim2.new(0, 30, 0, 300)
TextButton.Size = UDim2.new(1, -60, 0, 48)
TextButton.ZIndex = 212
TextButton.TextSize = 15
TextButton.BackgroundColor3 = Color3.fromRGB(70, 220, 120)

local UICorner5 = Instance.new("UICorner")
UICorner5.Parent = TextButton
UICorner5.CornerRadius = UDim.new(0, 12)

local UIStroke5 = Instance.new("UIStroke")
UIStroke5.Thickness = 1.5
UIStroke5.Transparency = 0.3
UIStroke5.Parent = TextButton
UIStroke5.Color = Color3.fromRGB(180, 255, 200)

local UIGradient4 = Instance.new("UIGradient")
UIGradient4.Rotation = 0
UIGradient4.Parent = TextButton
UIGradient4.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(90, 240, 140)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(45, 180, 95)),
})

local TextLabel4 = Instance.new("TextLabel")
TextLabel4.TextColor3 = Color3.fromRGB(150, 230, 170)
TextLabel4.Parent = SetupPanel
TextLabel4.Text = "Auto-dismissing in 8s"
TextLabel4.Font = Enum.Font.Gotham
TextLabel4.BackgroundTransparency = 1
TextLabel4.Position = UDim2.new(0, 30, 0, 358)
TextLabel4.TextXAlignment = Enum.TextXAlignment.Center
TextLabel4.ZIndex = 212
TextLabel4.TextSize = 12
TextLabel4.Size = UDim2.new(1, -60, 0, 20)

local Frame6 = Instance.new("Frame")
Frame6.Visible = false
Frame6.BackgroundTransparency = 1
Frame6.Position = UDim2.new(0, -3, 0, -3)
Frame6.Parent = TextButton
Frame6.ZIndex = 211
Frame6.BorderSizePixel = 0
Frame6.Size = UDim2.new(1, 6, 1, 6)

local UICorner6 = Instance.new("UICorner")
UICorner6.Parent = Frame6
UICorner6.CornerRadius = UDim.new(0, 14)

local UIStroke6 = Instance.new("UIStroke")
UIStroke6.Thickness = 2
UIStroke6.Transparency = 0.3
UIStroke6.Parent = Frame6
UIStroke6.Color = Color3.fromRGB(180, 255, 200)

local Sound = Instance.new("Sound")
Sound.SoundId = "rbxassetid://6895079853"
Sound.Parent = TextButton
Sound.Volume = 0.5

TextButton.MouseEnter:Connect(function()
    Frame6.Visible = true
    TweenService:Create(TextButton, TweenInfo.new(0.2), { BackgroundColor3 = Color3.fromRGB(110, 255, 160) }):Play()
    TweenService:Create(UIStroke6, TweenInfo.new(0.2), { Transparency = 0.1 }):Play()
end)

TextButton.MouseLeave:Connect(function()
    TweenService:Create(TextButton, TweenInfo.new(0.2), { BackgroundColor3 = Color3.fromRGB(70, 220, 120) }):Play()
    TweenService:Create(UIStroke6, TweenInfo.new(0.3), { Transparency = 0.8 }):Play()
end)

TextButton.MouseButton1Down:Connect(function()
    Sound:Play()
    TweenService:Create(TextButton, TweenInfo.new(0.05), { BackgroundColor3 = Color3.fromRGB(200, 255, 220) }):Play()
end)

TextButton.MouseButton1Up:Connect(function()
    TweenService:Create(TextButton, TweenInfo.new(0.15), { BackgroundColor3 = Color3.fromRGB(110, 255, 160) }):Play()
end)

TextButton.MouseButton1Click:Connect(function() end)

playForever(
    UIStroke2,
    TweenInfo.new(1.8, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true),
    { Thickness = 4, Transparency = 0.05 }
)

task.spawn(function()
    for _, text in ipairs({
        "Auto-dismissing in 8s", "Auto-dismissing in 7s", "Auto-dismissing in 6s",
        "Auto-dismissing in 5s", "Auto-dismissing in 4s", "Auto-dismissing in 3s",
        "Auto-dismissing in 2s", "Auto-dismissing in 1s",
    }) do
        TextLabel4.Text = text
        task.wait(1)
    end

    TweenService:Create(SetupPanel, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.In), { Size = UDim2.new(0, 0, 0, 0) }):Play()
    TweenService:Create(Frame, TweenInfo.new(0.3), { BackgroundTransparency = 1 }):Play()
    task.wait(0.3)
    SetupWarningGUI:Destroy()
end)

SetupPanel.Size = UDim2.new(0, 0, 0, 0)
Frame.BackgroundTransparency = 1
TweenService:Create(Frame, TweenInfo.new(0.3), { BackgroundTransparency = 0.35 }):Play()
TweenService:Create(SetupPanel, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = UDim2.new(0, 540, 0, 400) }):Play()
task.wait(0.35)

    -- ============================================================
-- IdentityWarningGUI
-- ============================================================
local IdentityWarningGUI = Instance.new("ScreenGui")
IdentityWarningGUI.Name = "IdentityWarningGUI"
IdentityWarningGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
IdentityWarningGUI.ResetOnSpawn = false
IdentityWarningGUI.IgnoreGuiInset = true
IdentityWarningGUI.Parent = PlayerGui
IdentityWarningGUI.DisplayOrder = 210

local UIScale2 = Instance.new("UIScale")
UIScale2.Scale = 0
UIScale2.Parent = IdentityWarningGUI

local Frame7 = Instance.new("Frame")
Frame7.BackgroundTransparency = 0.35
Frame7.Size = UDim2.new(1, 0, 1, 0)
Frame7.Parent = IdentityWarningGUI
Frame7.ZIndex = 209
Frame7.BorderSizePixel = 0
Frame7.BackgroundColor3 = Color3.fromRGB(20, 4, 4)

local UIGradient5 = Instance.new("UIGradient")
UIGradient5.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(18, 4, 4)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(30, 8, 8)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(18, 4, 4)),
})
UIGradient5.Transparency = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 0.3),
    NumberSequenceKeypoint.new(0.5, 0.45),
    NumberSequenceKeypoint.new(1, 0.3),
})
UIGradient5.Parent = Frame7
UIGradient5.Rotation = 90

local IdentityPanel = Instance.new("Frame")
IdentityPanel.ClipsDescendants = true
IdentityPanel.Parent = IdentityWarningGUI
IdentityPanel.AnchorPoint = Vector2.new(0.5, 0.5)
IdentityPanel.Name = "IdentityPanel"
IdentityPanel.Position = UDim2.new(0.5, 0, 0.5, 0)
IdentityPanel.Size = UDim2.new(0, 520, 0, 480)
IdentityPanel.ZIndex = 220
IdentityPanel.BorderSizePixel = 0
IdentityPanel.BackgroundColor3 = Color3.fromRGB(8, 16, 10)

local UICorner7 = Instance.new("UICorner")
UICorner7.Parent = IdentityPanel
UICorner7.CornerRadius = UDim.new(0, 18)

local UIStroke7 = Instance.new("UIStroke")
UIStroke7.Thickness = 2
UIStroke7.Transparency = 0.15
UIStroke7.Parent = IdentityPanel
UIStroke7.Color = Color3.fromRGB(255, 70, 70)

local UIGradient6 = Instance.new("UIGradient")
UIGradient6.Rotation = 90
UIGradient6.Parent = IdentityPanel
UIGradient6.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(8, 16, 10)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(24, 8, 8)),
})

local Frame9 = Instance.new("Frame")
Frame9.BackgroundTransparency = 1
Frame9.Position = UDim2.new(0, -3, 0, -3)
Frame9.Parent = IdentityPanel
Frame9.ZIndex = 219
Frame9.BorderSizePixel = 0
Frame9.Size = UDim2.new(1, 6, 1, 6)

local UICorner8 = Instance.new("UICorner")
UICorner8.Parent = Frame9
UICorner8.CornerRadius = UDim.new(0, 21)

local UIStroke8 = Instance.new("UIStroke")
UIStroke8.Thickness = 2
UIStroke8.Transparency = 0.35
UIStroke8.Parent = Frame9
UIStroke8.Color = Color3.fromRGB(255, 70, 70)

local UIGradient7 = Instance.new("UIGradient")
UIGradient7.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 70, 70)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 180, 180)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 70, 70)),
})
UIGradient7.Transparency = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 0.7),
    NumberSequenceKeypoint.new(0.2, 0.05),
    NumberSequenceKeypoint.new(0.8, 0.05),
    NumberSequenceKeypoint.new(1, 0.7),
})
UIGradient7.Parent = UIStroke8
UIGradient7.Rotation = 0

local Frame10 = Instance.new("Frame")
Frame10.Size = UDim2.new(0, 74, 0, 74)
Frame10.Position = UDim2.new(0.5, -37, 0, 24)
Frame10.Parent = IdentityPanel
Frame10.ZIndex = 221
Frame10.BorderSizePixel = 0
Frame10.BackgroundColor3 = Color3.fromRGB(150, 30, 30)

local UICorner9 = Instance.new("UICorner")
UICorner9.Parent = Frame10
UICorner9.CornerRadius = UDim.new(0, 37)

local UIStroke9 = Instance.new("UIStroke")
UIStroke9.Thickness = 2
UIStroke9.Transparency = 0.2
UIStroke9.Parent = Frame10
UIStroke9.Color = Color3.fromRGB(255, 70, 70)

local TextLabel5 = Instance.new("TextLabel")
TextLabel5.TextColor3 = Color3.fromRGB(255, 70, 70)
TextLabel5.Parent = Frame10
TextLabel5.Text = "!"
TextLabel5.Font = Enum.Font.GothamBold
TextLabel5.BackgroundTransparency = 1
TextLabel5.TextXAlignment = Enum.TextXAlignment.Center
TextLabel5.ZIndex = 222
TextLabel5.TextSize = 46
TextLabel5.Size = UDim2.new(1, 0, 1, 0)

local TextLabel6 = Instance.new("TextLabel")
TextLabel6.TextColor3 = Color3.fromRGB(255, 70, 70)
TextLabel6.Parent = IdentityPanel
TextLabel6.Text = "Account Not Recognized"
TextLabel6.Font = Enum.Font.GothamBold
TextLabel6.BackgroundTransparency = 1
TextLabel6.Position = UDim2.new(0, 20, 0, 112)
TextLabel6.TextXAlignment = Enum.TextXAlignment.Center
TextLabel6.ZIndex = 221
TextLabel6.TextSize = 22
TextLabel6.Size = UDim2.new(1, -40, 0, 34)

local Frame11 = Instance.new("Frame")
Frame11.Size = UDim2.new(1, -60, 0, 96)
Frame11.BackgroundTransparency = 0.2
Frame11.Position = UDim2.new(0, 30, 0, 152)
Frame11.Parent = IdentityPanel
Frame11.ZIndex = 221
Frame11.BorderSizePixel = 0
Frame11.BackgroundColor3 = Color3.fromRGB(22, 38, 26)

local UICorner10 = Instance.new("UICorner")
UICorner10.Parent = Frame11
UICorner10.CornerRadius = UDim.new(0, 12)

local UIStroke10 = Instance.new("UIStroke")
UIStroke10.Thickness = 1
UIStroke10.Transparency = 0.35
UIStroke10.Parent = Frame11
UIStroke10.Color = Color3.fromRGB(150, 30, 30)

local TextLabel7 = Instance.new("TextLabel")
TextLabel7.TextWrapped = true
TextLabel7.TextColor3 = Color3.fromRGB(220, 255, 230)
TextLabel7.Parent = Frame11
TextLabel7.Text = "Your account (" .. LOCAL_NAME .. ") isn't in the current configuration.\n\nWhat role should this account have?"
TextLabel7.TextXAlignment = Enum.TextXAlignment.Center
TextLabel7.Font = Enum.Font.GothamMedium
TextLabel7.BackgroundTransparency = 1
TextLabel7.Position = UDim2.new(0, 15, 0, 10)
TextLabel7.TextYAlignment = Enum.TextYAlignment.Center
TextLabel7.ZIndex = 222
TextLabel7.TextSize = 14
TextLabel7.Size = UDim2.new(1, -30, 1, -20)

local Frame12 = Instance.new("Frame")
Frame12.BackgroundTransparency = 1
Frame12.Position = UDim2.new(0, 30, 0, 262)
Frame12.Parent = IdentityPanel
Frame12.ZIndex = 221
Frame12.BorderSizePixel = 0
Frame12.Size = UDim2.new(1, -60, 0, 48)

local TextButton2 = Instance.new("TextButton")
TextButton2.TextColor3 = Color3.fromRGB(220, 255, 230)
TextButton2.Parent = Frame12
TextButton2.Text = "BECOME OWNER"
TextButton2.AutoButtonColor = false
TextButton2.Font = Enum.Font.GothamBold
TextButton2.Size = UDim2.new(0.48, 0, 1, 0)
TextButton2.ZIndex = 222
TextButton2.TextSize = 13
TextButton2.BackgroundColor3 = Color3.fromRGB(255, 70, 70)

local UICorner11 = Instance.new("UICorner")
UICorner11.Parent = TextButton2
UICorner11.CornerRadius = UDim.new(0, 10)

local UIStroke11 = Instance.new("UIStroke")
UIStroke11.Thickness = 1.5
UIStroke11.Transparency = 0.4
UIStroke11.Parent = TextButton2
UIStroke11.Color = Color3.fromRGB(180, 255, 200)

local UIGradient8 = Instance.new("UIGradient")
UIGradient8.Rotation = 0
UIGradient8.Parent = TextButton2
UIGradient8.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(220, 60, 60)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(140, 30, 30)),
})

local TextButton3 = Instance.new("TextButton")
TextButton3.TextColor3 = Color3.fromRGB(220, 255, 230)
TextButton3.Parent = Frame12
TextButton3.Text = "BECOME BOT"
TextButton3.AutoButtonColor = false
TextButton3.Font = Enum.Font.GothamBold
TextButton3.Position = UDim2.new(0.52, 0, 0, 0)
TextButton3.Size = UDim2.new(0.48, 0, 1, 0)
TextButton3.ZIndex = 222
TextButton3.TextSize = 13
TextButton3.BackgroundColor3 = Color3.fromRGB(32, 55, 38)

local UICorner12 = Instance.new("UICorner")
UICorner12.Parent = TextButton3
UICorner12.CornerRadius = UDim.new(0, 10)

local UIStroke12 = Instance.new("UIStroke")
UIStroke12.Thickness = 1.5
UIStroke12.Transparency = 0.4
UIStroke12.Parent = TextButton3
UIStroke12.Color = Color3.fromRGB(60, 150, 85)

local Frame13 = Instance.new("Frame")
Frame13.Visible = false
Frame13.BackgroundTransparency = 1
Frame13.Position = UDim2.new(0, 30, 0, 262)
Frame13.Parent = IdentityPanel
Frame13.ZIndex = 223
Frame13.BorderSizePixel = 0
Frame13.Size = UDim2.new(1, -60, 0, 44)

local TextLabel8 = Instance.new("TextLabel")
TextLabel8.TextColor3 = Color3.fromRGB(150, 230, 170)
TextLabel8.Parent = Frame13
TextLabel8.Text = "SELECT BOT SLOT"
TextLabel8.Font = Enum.Font.GothamBold
TextLabel8.BackgroundTransparency = 1
TextLabel8.Position = UDim2.new(0, 0, 0, -18)
TextLabel8.TextXAlignment = Enum.TextXAlignment.Center
TextLabel8.ZIndex = 224
TextLabel8.TextSize = 11
TextLabel8.Size = UDim2.new(1, 0, 0, 16)

local function makeBotButton(text, xOffset)
    local b = Instance.new("TextButton")
    b.TextColor3 = Color3.fromRGB(220, 255, 230)
    b.Parent = Frame13
    b.Text = text
    b.AutoButtonColor = false
    b.Font = Enum.Font.GothamBold
    b.Position = UDim2.new(0, xOffset, 0, 4)
    b.Size = UDim2.new(0, 62, 0, 34)
    b.ZIndex = 224
    b.TextSize = 12
    b.BackgroundColor3 = Color3.fromRGB(22, 38, 26)
    local c = Instance.new("UICorner")
    c.Parent = b
    c.CornerRadius = UDim.new(0, 8)
    local s = Instance.new("UIStroke")
    s.Thickness = 1
    s.Transparency = 0.4
    s.Parent = b
    s.Color = Color3.fromRGB(60, 150, 85)
    return b
end

local TextButton4 = makeBotButton("BOT 1", 0)
local TextButton5 = makeBotButton("BOT 2", 68)
local TextButton6 = makeBotButton("BOT 3", 136)
local TextButton7 = makeBotButton("BOT 4", 204)
local TextButton8 = makeBotButton("BOT 5", 272)

local TextLabel9 = Instance.new("TextLabel")
TextLabel9.TextColor3 = Color3.fromRGB(80, 255, 120)
TextLabel9.Parent = IdentityPanel
TextLabel9.Text = ""
TextLabel9.Font = Enum.Font.GothamMedium
TextLabel9.BackgroundTransparency = 1
TextLabel9.Position = UDim2.new(0, 30, 0, 318)
TextLabel9.TextXAlignment = Enum.TextXAlignment.Center
TextLabel9.ZIndex = 221
TextLabel9.TextSize = 13
TextLabel9.Size = UDim2.new(1, -60, 0, 24)

local TextButton9 = Instance.new("TextButton")
TextButton9.TextColor3 = Color3.fromRGB(220, 255, 230)
TextButton9.Parent = IdentityPanel
TextButton9.Text = "DISMISS"
TextButton9.AutoButtonColor = false
TextButton9.Font = Enum.Font.GothamBold
TextButton9.Position = UDim2.new(0, 30, 0, 352)
TextButton9.Size = UDim2.new(1, -60, 0, 46)
TextButton9.ZIndex = 222
TextButton9.TextSize = 14
TextButton9.BackgroundColor3 = Color3.fromRGB(22, 38, 26)

local UICorner18 = Instance.new("UICorner")
UICorner18.Parent = TextButton9
UICorner18.CornerRadius = UDim.new(0, 10)

local UIStroke18 = Instance.new("UIStroke")
UIStroke18.Thickness = 1.5
UIStroke18.Transparency = 0.4
UIStroke18.Parent = TextButton9
UIStroke18.Color = Color3.fromRGB(140, 40, 40)

local TextLabel10 = Instance.new("TextLabel")
TextLabel10.TextColor3 = Color3.fromRGB(150, 230, 170)
TextLabel10.Parent = IdentityPanel
TextLabel10.Text = "Auto-dismissing in 10s"
TextLabel10.Font = Enum.Font.Gotham
TextLabel10.BackgroundTransparency = 1
TextLabel10.Position = UDim2.new(0, 30, 0, 406)
TextLabel10.TextXAlignment = Enum.TextXAlignment.Center
TextLabel10.ZIndex = 221
TextLabel10.TextSize = 12
TextLabel10.Size = UDim2.new(1, -60, 0, 18)

local Sound2 = Instance.new("Sound")
Sound2.SoundId = "rbxassetid://6895079853"
Sound2.Parent = IdentityPanel
Sound2.Volume = 0.5   

    for _, v in ipairs({
    { textButton = TextButton2, r = 255, g = 90, b = 90, r2 = 255, g2 = 70, b2 = 70 },
    { textButton = TextButton3, r = 45, g = 75, b = 55, r2 = 32, g2 = 55, b2 = 38 },
    { textButton = TextButton9, r = 32, g = 55, b = 38, r2 = 22, g2 = 38, b2 = 26 },
}) do
    v.textButton.MouseEnter:Connect(function()
        TweenService:Create(v.textButton, TweenInfo.new(0.15), { BackgroundColor3 = Color3.fromRGB(v.r, v.g, v.b) }):Play()
    end)
    v.textButton.MouseLeave:Connect(function()
        TweenService:Create(v.textButton, TweenInfo.new(0.15), { BackgroundColor3 = Color3.fromRGB(v.r2, v.g2, v.b2) }):Play()
    end)
    v.textButton.MouseButton1Down:Connect(function() Sound2:Play() end)
end

TextButton2.MouseButton1Click:Connect(function()
    getgenv().masterUsername = LOCAL_NAME
    TextLabel9.Text = "✓ Set as Owner. Make sure to configure your accounts next time."
    TextLabel9.TextColor3 = Color3.fromRGB(80, 255, 120)
end)

TextButton3.MouseButton1Click:Connect(function()
    Frame12.Visible = false
    Frame13.Visible = true
end)

local botButtonTexts = {
    [TextButton4] = "✓ Set as Bot 1. Reload the script to apply.",
    [TextButton5] = "✓ Set as Bot 2. Reload the script to apply.",
    [TextButton6] = "✓ Set as Bot 3. Reload the script to apply.",
    [TextButton7] = "✓ Set as Bot 4. Reload the script to apply.",
    [TextButton8] = "✓ Set as Bot 5. Reload the script to apply.",
}

for btn, text in pairs(botButtonTexts) do
    btn.MouseEnter:Connect(function()
        TweenService:Create(btn, TweenInfo.new(0.15), { BackgroundColor3 = Color3.fromRGB(32, 55, 38) }):Play()
    end)
    btn.MouseLeave:Connect(function()
        TweenService:Create(btn, TweenInfo.new(0.15), { BackgroundColor3 = Color3.fromRGB(22, 38, 26) }):Play()
    end)
    btn.MouseButton1Click:Connect(function()
        Sound2:Play()
        TextLabel9.Text = text
        TextLabel9.TextColor3 = Color3.fromRGB(80, 255, 120)
    end)
end

TextButton9.MouseButton1Click:Connect(function() end)

task.spawn(function()
    for _, text in ipairs({
        "Auto-dismissing in 10s", "Auto-dismissing in 9s", "Auto-dismissing in 8s",
        "Auto-dismissing in 7s", "Auto-dismissing in 6s", "Auto-dismissing in 5s",
        "Auto-dismissing in 4s", "Auto-dismissing in 3s", "Auto-dismissing in 2s",
        "Auto-dismissing in 1s",
    }) do
        TextLabel10.Text = text
        task.wait(1)
    end

    TweenService:Create(IdentityPanel, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.In), { Size = UDim2.new(0, 0, 0, 0) }):Play()
    TweenService:Create(Frame7, TweenInfo.new(0.3), { BackgroundTransparency = 1 }):Play()
    task.wait(0.3)
    IdentityWarningGUI:Destroy()
end)

IdentityPanel.Size = UDim2.new(0, 0, 0, 0)
Frame7.BackgroundTransparency = 1
TweenService:Create(Frame7, TweenInfo.new(0.3), { BackgroundTransparency = 0.35 }):Play()
TweenService:Create(IdentityPanel, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = UDim2.new(0, 520, 0, 480) }):Play()
task.wait(0.35)

playForever(
    UIStroke8,
    TweenInfo.new(1.8, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true),
    { Thickness = 4, Transparency = 0.05 }
)

-- ============================================================
-- BOT LOGIC GOES HERE
-- ============================================================
-- Everything above this line is GUI.
-- Everything below this line runs only on the master account
-- (bots returned early near the top of the file).
--
-- Add your actual alt-control logic here. Examples:
--   - Send chat commands to bots
--   - Move bots via RemoteEvent / BindableEvent
--   - Process master's input and relay it to bots
--
-- (nothing to run yet — placeholder so file parses cleanly)
