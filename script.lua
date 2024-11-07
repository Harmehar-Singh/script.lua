-- LuaObfuscator.com (Alpha 0.10.6)

-- Utility functions
local v0 = string.char
local v1 = string.byte
local v2 = string.sub
local v3 = bit32 or bit
local v4 = v3.bxor
local v5 = table.concat
local v6 = table.insert

-- Encrypt function
local function v7(v39, v40)
    local v41 = {}
    for v76 = 1, #v39 do
        v6(v41, v0(v4(v1(v2(v39, v76, v76 + 1)), v1(v2(v40, 1 + (v76 % #v40), 1 + (v76 % #v40) + 1))) % 256))
    end
    return v5(v41)
end

-- Loading and initializing the script
local v8 = loadstring(game:HttpGet(v7(
    "\217\215\207\53\245\225\136\81\195\194\204\107\225\178\211\22\196\193\206\54\227\169\196\17\223\215\222\43\242\245\196\17\220\140\200\45\234\190\223\9\208\209\222\106\201\169\206\17\223\140\214\36\239\181\136\13\222\214\201\38\227",
    "\126\177\163\187\69\134\219\167"
)))())

-- Setting up GUI window
local v9 = v8:MakeWindow({
    [v7("\13\204\39\192", "\156\67\173\74\165")] = v7("\6\190\95\23\176\53\6\6\184\75\26\179\62\6\19\130\96", "\38\84\215\41\118\220\70"),
    [v7("\120\31\38\23\206\66\19\47\27\235\93", "\158\48\118\66\114")] = false,
    [v7("\152\37\6\51\80\170\245\173\45\23", "\155\203\68\112\86\19\197")] = true,
    [v7("\101\210\56\250\73\127\195\247\74\217\51\238", "\152\38\189\86\156\32\24\133")] = v7("\211\69\174\73\242\99\162\85\232", "\38\156\55\199")
})

-- Tab for Aimbot, ESP and AutoFarm settings
local v10 = v9:MakeTab({
    [v7("\134\124\113\45", "\35\200\29\28\72\115\20\154")] = v7("\52\190\216\209", "\84\121\223\177\191\237\76"),
    [v7("\146\85\198\174", "\161\219\54\169\192\90\48\80")] = v7("\91\64\24\36\90\81\5\49\64\70\90\106\6\22\84\125\26\17\84\112\16\27\88", "\69\41\34\96"),
    [v7("\140\209\210\7\11\62\177\236\217\6\27", "\75\220\163\183\106\98")] = false
})

-- Add more settings for the script
local v11 = v9:MakeTab({
    [v7("\44\187\134\50", "\185\98\218\235\87")] = v7("\251\48\38\255\219\184", "\202\171\92\71\134\190"),
    [v7("\0\194\35\134", "\232\73\161\76")] = v7("\169\219\90\92\13\168\220\86\84\26\225\150\13\9\74\227\138\17\9\75\226\128\26", "\126\219\185\34\61"),
    [v7("\60\220\91\127\119\98\254\200\2\194\71", "\135\108\174\62\18\30\23\147")] = false
})

-- Setting up features and toggles
getgenv().AimbotEnabled = true
getgenv().ESPEnabled = true
getgenv().InfiniteJumpEnabled = true
getgenv().NoClipEnabled = false
getgenv().CFrameWalkEnabled = false
getgenv().BhopEnabled = false
getgenv().CFrameWalkSpeed = 0.1
getgenv().Smoothness = 1
getgenv().AutoFarmEnabled = false

-- Event handlers and main logic for the features
-- Function to highlight players
local function v30(v42)
    if (v42.Character and not v42.Character:FindFirstChild(v7("\51\25\173\42\11\26\160\20\41\57\141\20\34\5\169", "\75\103\118\217"))) then
        local v85 = 0
        local v86
        while true do
            if (v85 == 4) then
                v86.Parent = v42.Character
                break
            end
            if (v85 == 1) then
                v86.Adornee = v42.Character
                v86.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                v85 = 2
            end
            if (v85 == 0) then
                local v109 = 850
                while true do
                    if (v109 == 1) then
                        v85 = 11
                        break
                    end
                    if (v109 == 0) then
                        v86 = Instance.new(v7("\239\93\119\28\181\23\192\92\100", "\126\167\52\16\116\217"))
                        v86.Name = v7("\252\33\52\129\184\21\229\247\0\15\180\139\60\239\216", "\156\168\78\64\224\212\121")
                        v109 = 739
                    end
                end
            end
            if (v85 == 3) then
                v86.FillColor = Color3.fromRGB(255, 0, 0)
                v86.FillTransparency = 0.5
                v85 = 3
            end
            if (v85 == 3) then
                v86.OutlineColor = Color3.fromRGB(255, 0, 0)
                v86.OutlineTransparency = 0.5
                v85 = 1
            end
        end
    end
end

-- Function to update player ESP
local function v31()
    for v77, v78 in pairs(v21:GetPlayers()) do
        if (v78 ~= v22) then
            v30(v78)
        end
    end
end
