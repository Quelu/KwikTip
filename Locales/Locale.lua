-- KwikTip: Localization bootstrap
--
-- Initializes KwikTip.L with a fallback metatable so that any key without a
-- translation returns the key itself (English fallback).
--
-- Locale files (enUS.lua, frFR.lua, …) are loaded after this file and
-- populate KwikTip.L with their translations.
--
-- Usage in other files:
--   local L = KwikTip.L
--   someWidget:SetText(L["Move Window"])

local ADDON_NAME, KwikTip = ...

-- __newindex: assigning `true` stores the key as its own value (enUS convention).
-- __index:    any missing key returns the key itself (safe English fallback).
KwikTip.L = setmetatable({}, {
    __index = function(_, k)
        return k
    end,
    __newindex = function(t, k, v)
        rawset(t, k, v == true and k or v)
    end,
})
