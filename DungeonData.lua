-- KwikTip: Dungeon and boss data for World of Warcraft: Midnight
--
-- Two ID systems are used for dungeon detection:
--
--   instanceID : GetInstanceInfo() 8th return — single stable ID per dungeon instance.
--                Used as the PRIMARY lookup. Source: BigWigs/LittleWigs NewBoss declarations.
--                All values are unverified unless noted. IDs marked 0 need to be sourced.
--
--   uiMapID    : C_Map.GetBestMapForUnit("player") — required for position queries.
--                Used as FALLBACK when instanceID lookup fails (e.g., instanceID = 0).
--                Verify in-game: /run print(C_Map.GetBestMapForUnit("player"))
--                IDs marked 0 need to be confirmed in-game.
--
local ADDON_NAME, KwikTip = ...
local L = KwikTip.L

-- ============================================================
-- Dungeon Data
-- ============================================================
-- Fields per dungeon:
--   instanceID  : GetInstanceInfo() 8th return — primary dungeon identifier
--   uiMapID     : C_Map.GetBestMapForUnit("player") inside the instance
--   altMapIDs   : additional uiMapIDs for entrance/antechamber sub-zones (fallback lookup)
--   name        : display name
--   location    : zone the entrance is in
--   season      : "midnight" = new dungeon  |  "legacy" = returning M+ dungeon
--   type        : "level" = leveling (81-88)  |  "max" = max-level (88-90)
--   mythicPlus  : true if in the Season 1 Mythic+ key rotation, false = Mythic 0 only
--   bosses      : ordered list; each entry has:
--     encounterID    : ENCOUNTER_START event ID (from LittleWigs SetEncounterID). 0 = unknown.
--     altEncounterIDs: (optional) additional encounterIDs that map to the same boss tip (e.g. per-variant
--                      delve bosses that share mechanics but fire different encounterIDs per event type).
--     npcID          : (optional) Wowhead NPC ID — reference data only. In Midnight 12.x hostile NPC GUIDs
--                   are tainted; live detection via targeting is not possible. Retained for cross-referencing.
--     name        : boss name as shown in the game
--     tip         : short contextual tip shown in the HUD during the boss fight (flat string; legacy/fallback)
--     notes       : (optional) structured role-aware notes; if present, replaces `tip` in the HUD.
--   trash       : optional list of notable trash mobs; NPC IDs retained for reference and TRASH_BY_NPCID lookup
--                 NOTE: in Midnight 12.x hostile NPC GUIDs are tainted — tip display via targeting is not possible
--     npcID     : numeric NPC ID from Wowhead
--     name      : mob display name
--     tip       : contextual tip shown in HUD when this mob is targeted (flat string; legacy/fallback)
--     notes     : (optional) structured role-aware notes; same format as boss notes above
--   areas       : optional list; if present, HUD switches to area-based tips
--                 matched against GetSubZoneText() as the player moves through the dungeon
--     subzone   : exact string returned by GetSubZoneText() for this area (verify in-game)
--     mapID     : (optional) uiMapID match via C_Map.GetBestMapForUnit — fallback for areas
--                 with no subzone text (e.g. arena-style dungeons). Fires on ZONE_CHANGED_NEW_AREA.
--     tip       : contextual tip shown in HUD when the player is in this sub-zone
--     bossIndex : (optional) 1-based index into dungeon.bosses; if set, the boss tip is
--                 shown instead of `tip` — use for boss room sub-zones so the tip appears
--                 on entry rather than waiting for ENCOUNTER_START
--
-- Season 1 M+ rotation (8 dungeons total):
--   New Midnight: Magisters' Terrace, Maisara Caverns, Nexus-Point Xenas, Windrunner Spire
--   Legacy:       Algeth'ar Academy, Pit of Saron, Seat of the Triumvirate, Skyreach

KwikTip.DUNGEONS = {

    -- --------------------------------------------------------
    -- NEW MIDNIGHT DUNGEONS — Level-Up (81–88)
    -- --------------------------------------------------------
    {
        instanceID = 2805,  -- confirmed in-game
        uiMapID    = 2492,  -- confirmed in-game
        altMapIDs  = { 2537, 2493, 2494, 2496, 2497, 2498, 2499 },  -- all confirmed in-game
        name       = "Windrunner Spire",
        location   = "Eversong Woods",
        season     = "midnight",
        type       = "level",
        mythicPlus = true,
        bosses = {
            {
                encounterID = 3056,  -- confirmed in-game
                npcID       = 231606,
                name        = "Emberdawn",
                tip         = L["WS_B1_TIP"],
                notes = {
                    { role = "general",   text = L["WS_B1_N1"] },
                    { role = "general",   text = L["WS_B1_N2"] },
                    { role = "tank",      text = L["WS_B1_N3"] },
                    { role = "healer",    text = L["WS_B1_N4"] },
                },
            },
            {
                encounterID = 3057,  -- confirmed in-game
                npcID       = 231626,  -- Kalis
                altNpcIDs   = { 231629 },  -- Latch
                name        = "Derelict Duo",
                tip         = L["WS_B2_TIP"],
                notes = {
                    { role = "general",   text = L["WS_B2_N1"] },
                    { role = "general",   text = L["WS_B2_N2"] },
                    { role = "general",   text = L["WS_B2_N3"] },
                    { role = "tank",      text = L["WS_B2_N4"] },
                    { role = "healer",    text = L["WS_B2_N5"] },
                    { role = "interrupt", text = L["WS_B2_N6"] },
                },
            },
            {
                encounterID = 3058,  -- confirmed in-game
                npcID       = 231631,
                name        = "Commander Kroluk",
                tip         = L["WS_B3_TIP"],
                notes = {
                    { role = "general",   text = L["WS_B3_N1"] },
                    { role = "general",   text = L["WS_B3_N2"] },
                    { role = "dps",       text = L["WS_B3_N3"] },
                    { role = "interrupt", text = L["WS_B3_N4"] },
                },
            },
            {
                encounterID = 3059,  -- confirmed in-game
                npcID       = 231636,
                name        = "The Restless Heart",
                tip         = L["WS_B4_TIP"],
                notes = {
                    { role = "general",   text = L["WS_B4_N1"] },
                    { role = "general",   text = L["WS_B4_N2"] },
                    { role = "general",   text = L["WS_B4_N3"] },
                    { role = "tank",      text = L["WS_B4_N4"] },
                },
            },
        },
        trash = {
            { npcID = 232070, name = "Restless Steward",      tip = L["WS_T1"] },
            { npcID = 232113, name = "Spellguard Magus",      tip = L["WS_T2"] },
            { npcID = 232067, name = "Creeping Spindleweb",   tip = L["WS_T3"] },
            { npcID = 232097, name = "Territorial Dragonhawk", tip = L["WS_T4"] },
            { npcID = 232094, name = "Bloated Lasher",         tip = L["WS_T5"] },
            { npcID = 231616, name = "Ardent Cutthroat",       tip = L["WS_T6"] },
            { npcID = 231615, name = "Devoted Woebringer",     tip = L["WS_T7"] },
        },
        areas = {
            { subzone = "The Promenade",       tip = L["WS_A1"] },
            { subzone = "Vereesa's Repose",    bossIndex = 1 },  -- wing bosses (Emberdawn + Derelict Duo share this subzone); confirmed in-game; bossIndex=1 shows Emberdawn tip on entry — ENCOUNTER_START overrides for Derelict Duo
            { subzone = "Sylvanas's Quarters", tip = L["WS_A3"] },
            { subzone = "Windrunner Vault",    bossIndex = 3 },  -- Commander Kroluk's arena; confirmed in-game
            { subzone = "The Pinnacle",        bossIndex = 4 },  -- The Restless Heart; confirmed in-game
        },
    },
    {
        instanceID = 2813,  -- confirmed in-game
        uiMapID    = 2433,  -- confirmed in-game
        altMapIDs  = { 2435, 2434, 2393 },  -- confirmed in-game; 2393 = Silvermoon City entrance plaza (pre-zone-in)
        name       = "Murder Row",
        location   = "Silvermoon City",
        season     = "midnight",
        type       = "level",
        mythicPlus = false,
        bosses = {
            {
                encounterID = 3101,  -- confirmed in-game
                npcID       = 252458,
                name        = "Kystia Manaheart",
                tip         = L["MR_B1_TIP"],
                notes = {
                    { role = "healer",    text = L["MR_B1_N1"] },
                    { role = "general",   text = L["MR_B1_N2"] },
                    { role = "interrupt", text = L["MR_B1_N3"] },
                },
            },
            {
                encounterID = 3102,  -- confirmed in-game
                npcID       = 234649,
                name        = "Zaen Bladesorrow",
                tip         = L["MR_B2_TIP"],
                notes = {
                    { role = "general",   text = L["MR_B2_N1"] },
                    { role = "tank",      text = L["MR_B2_N2"] },
                    { role = "healer",    text = L["MR_B2_N3"] },
                },
            },
            {
                encounterID = 3103,  -- confirmed in-game
                npcID       = 234647,
                name        = "Xathuux the Annihilator",
                tip         = L["MR_B3_TIP"],
                notes = {
                    { role = "general",   text = L["MR_B3_N1"] },
                    { role = "tank",      text = L["MR_B3_N2"] },
                    { role = "healer",    text = L["MR_B3_N3"] },
                },
            },
            {
                encounterID = 3105,  -- confirmed in-game
                npcID       = 237415,
                name        = "Lithiel Cinderfury",
                tip         = L["MR_B4_TIP"],
                notes = {
                    { role = "general",   text = L["MR_B4_N1"] },
                    { role = "dps",       text = L["MR_B4_N2"] },
                    { role = "interrupt", text = L["MR_B4_N3"] },
                },
            },
        },
        areas = {
            { subzone = "Silvermoon Pet Shop", bossIndex = 1 },  -- Kystia Manaheart; confirmed in-game
            { subzone = "The Illicit Rain",    bossIndex = 2 },  -- Zaen Bladesorrow; confirmed in-game
            { subzone = "Augurs' Terrace",     bossIndex = 3 },  -- Xathuux the Annihilator; confirmed in-game
            { subzone = "Lithiel's Landing",   bossIndex = 4 },  -- Lithiel Cinderfury; confirmed in-game
        },
    },
    {
        instanceID = 2825,  -- confirmed in-game
        uiMapID    = 2514,
        altMapIDs  = { 2564, 2513 },  -- 2564 = Dreamer's Passage/Heart of Rage; 2513 = Heart of Rage (confirmed in-game)
        name       = "Den of Nalorakk",
        location   = "Zul'Aman",
        season     = "midnight",
        type       = "level",
        mythicPlus = false,
        bosses = {
            {
                encounterID = 3207,  -- confirmed in-game
                npcID       = 248710,
                name        = "The Hoardmonger",
                tip         = L["DN_B1_TIP"],
                notes = {
                    { role = "general",   text = L["DN_B1_N1"] },
                    { role = "dps",       text = L["DN_B1_N2"] },
                    { role = "healer",    text = L["DN_B1_N3"] },
                },
            },
            {
                encounterID = 3208,  -- confirmed in-game
                npcID       = 261053,
                name        = "Sentinel of Winter",
                tip         = L["DN_B2_TIP"],
                notes = {
                    { role = "general",   text = L["DN_B2_N1"] },
                    { role = "dps",       text = L["DN_B2_N2"] },
                    { role = "healer",    text = L["DN_B2_N3"] },
                },
            },
            {
                encounterID = 3209,  -- confirmed in-game
                npcID       = 258877,
                name        = "Nalorakk",
                tip         = L["DN_B3_TIP"],
                notes = {
                    { role = "general",   text = L["DN_B3_N1"] },
                    { role = "general",   text = L["DN_B3_N2"] },
                },
            },
        },
        areas = {
            { subzone = "Enduring Winter",    bossIndex = 1 },  -- first two bosses share this subzone (Hoardmonger + Sentinel of Winter); confirmed in-game (mapID 2514); bossIndex=1 shows Hoardmonger tip on entry — ENCOUNTER_START overrides for Sentinel of Winter
            { subzone = "The Foraging",       tip = L["DN_A2"] },  -- confirmed in-game (mapID 2514); between first two bosses and Dreamer's Passage
            { subzone = "Dreamer's Passage",  bossIndex = 3 },  -- transition to Nalorakk; confirmed in-game (mapID 2564)
            { subzone = "The Heart of Rage",  bossIndex = 3 },  -- Nalorakk's arena; confirmed in-game (mapIDs 2564, 2513)
        },
    },
    {
        instanceID = 2874,  -- confirmed in-game
        uiMapID    = 2501,  -- confirmed in-game
        name       = "Maisara Caverns",
        location   = "Zul'Aman",
        season     = "midnight",
        type       = "level",
        mythicPlus = true,
        bosses = {
            {
                encounterID = 3212,
                npcID       = 247570,  -- Muro'jin
                altNpcIDs   = { 247572 },  -- Nekraxx
                name        = "Muro'jin and Nekraxx",
                tip         = L["MC_B1_TIP"],
                notes = {
                    { role = "general",   text = L["MC_B1_N1"] },
                    { role = "general",   text = L["MC_B1_N2"] },
                    { role = "general",   text = L["MC_B1_N3"] },
                    { role = "tank",      text = L["MC_B1_N4"] },
                    { role = "healer",    text = L["MC_B1_N5"] },
                },
            },
            {
                encounterID = 3213,
                npcID       = 248595,
                name        = "Vordaza",
                tip         = L["MC_B2_TIP"],
                notes = {
                    { role = "general",   text = L["MC_B2_N1"] },
                    { role = "dps",       text = L["MC_B2_N2"] },
                    { role = "tank",      text = L["MC_B2_N3"] },
                    { role = "interrupt", text = L["MC_B2_N4"] },
                },
            },
            {
                encounterID = 3214,
                npcID       = 248605,
                name        = "Rak'tul, Vessel of Souls",
                tip         = L["MC_B3_TIP"],
                notes = {
                    { role = "interrupt", text = L["MC_B3_N1"] },
                    { role = "general",   text = L["MC_B3_N2"] },
                    { role = "tank",      text = L["MC_B3_N3"] },
                },
            },
        },
        trash = {
            { npcID = 242964, name = "Keen Headhunter",   tip = L["MC_T1"] },
            { npcID = 248686, name = "Dread Souleater",   tip = L["MC_T2"] },
            { npcID = 248685, name = "Ritual Hexxer",     tip = L["MC_T3"] },
            { npcID = 248678, name = "Hulking Juggernaut", tip = L["MC_T4"] },
            { npcID = 249020, name = "Hexbound Eagle",    tip = L["MC_T5"] },
            { npcID = 249022, name = "Bramblemaw Bear",   tip = L["MC_T6"] },
            { npcID = 248692, name = "Reanimated Warrior", tip = L["MC_T7"] },
            { npcID = 248690, name = "Grim Skirmisher",   tip = L["MC_T8"] },
            { npcID = 249030, name = "Restless Gnarldin",  tip = L["MC_T9"] },
            { npcID = 249036, name = "Tormented Shade",   tip = L["MC_T10"] },
            { npcID = 253683, name = "Rokh'zal",          tip = L["MC_T11"] },
            { npcID = 249025, name = "Bound Defender",    tip = L["MC_T12"] },
            { npcID = 249024, name = "Hollow Soulrender",  tip = L["MC_T13"] },
        },
        areas = {
            { subzone = "Wailing Depths",    bossIndex = 1 },  -- Muro'jin and Nekraxx; confirmed in-game
            { subzone = "Dais of Suffering", bossIndex = 2 },  -- Vordaza's arena; confirmed in-game
            { subzone = "Echoing Span",      bossIndex = 3 },  -- Rak'tul's arena; gauntlet runs during the fight (spirit realm bridge); confirmed in-game
        },
    },

    -- --------------------------------------------------------
    -- NEW MIDNIGHT DUNGEONS — Max Level (88–90)
    -- --------------------------------------------------------
    {
        instanceID = 2811,  -- confirmed in-game
        uiMapID    = 2511,  -- confirmed in-game
        altMapIDs  = { 2424, 2515, 2516, 2517, 2519, 2520 },  -- all confirmed in-game except 2424
        name       = "Magisters' Terrace",
        location   = "Isle of Quel'Danas",
        season     = "midnight",
        type       = "max",
        mythicPlus = true,
        bosses = {
            {
                encounterID = 3071,  -- confirmed in-game
                npcID       = 231861,
                name        = "Arcanotron Custos",
                tip         = L["MT_B1_TIP"],
                notes = {
                    { role = "general",   text = L["MT_B1_N1"] },
                    { role = "dps",       text = L["MT_B1_N2"] },
                    { role = "tank",      text = L["MT_B1_N3"] },
                    { role = "healer",    text = L["MT_B1_N4"] },
                },
            },
            {
                encounterID = 3072,  -- confirmed in-game
                npcID       = 231863,
                name        = "Seranel Sunlash",
                tip         = L["MT_B2_TIP"],
                notes = {
                    { role = "general",   text = L["MT_B2_N1"] },
                    { role = "general",   text = L["MT_B2_N2"] },
                    { role = "general",   text = L["MT_B2_N3"] },
                    { role = "general",   text = L["MT_B2_N4"] },
                },
            },
            {
                encounterID = 3073,  -- confirmed in-game
                npcID       = 231864,
                name        = "Gemellus",
                tip         = L["MT_B3_TIP"],
                notes = {
                    { role = "general",   text = L["MT_B3_N1"] },
                    { role = "general",   text = L["MT_B3_N2"] },
                },
            },
            {
                encounterID = 3074,  -- confirmed in-game
                npcID       = 231865,
                name        = "Degentrius",
                tip         = L["MT_B4_TIP"],
                notes = {
                    { role = "general",   text = L["MT_B4_N1"] },
                    { role = "general",   text = L["MT_B4_N2"] },
                    { role = "tank",      text = L["MT_B4_N3"] },
                },
            },
        },
        trash = {
            { npcID = 241326, name = "Arcane Magister",     tip = L["MT_T1"] },
            { npcID = 232369, name = "Arcane Magister",     tip = L["MT_T1"] },
            { npcID = 257644, name = "Arcane Magister",     tip = L["MT_T1"] },
            { npcID = 234486, name = "Lightward Healer",    tip = L["MT_T2"] },
            { npcID = 251917, name = "Animated Codex",      tip = L["MT_T3"] },
            { npcID = 257161, name = "Blazing Pyromancer",  tip = L["MT_T4"] },
            { npcID = 24761,  name = "Brightscale Wyrm",    tip = L["MT_T5"] },
            { npcID = 234068, name = "Shadowrift Voidcaller", tip = L["MT_T6"] },
            { npcID = 249086, name = "Void Infuser",        tip = L["MT_T7"] },
            { npcID = 234066, name = "Devouring Tyrant",    tip = L["MT_T8"] },
        },
        areas = {
            { subzone = "Arcane Atheneum",        tip = L["MT_A1"] },
            { subzone = "Observation Grounds",    bossIndex = 1 },  -- Arcanotron Custos; confirmed in-game
            { subzone = "Grand Magister Asylum",  bossIndex = 2 },  -- Seranel Sunlash; confirmed in-game
            { subzone = "Tower of Theory",        tip = L["MT_A4"] },
            { subzone = "Constellarium",          bossIndex = 3 },  -- Gemellus; confirmed in-game
            { subzone = "Celestial Orrery",       bossIndex = 4 },  -- Degentrius; confirmed in-game
        },
    },
    {
        instanceID = 2915,  -- confirmed in-game
        uiMapID    = 2556,  -- confirmed in-game
        name       = "Nexus-Point Xenas",
        location   = "Voidstorm",
        season     = "midnight",
        type       = "max",
        mythicPlus = true,
        bosses = {
            {
                encounterID = 3328,  -- confirmed in-game
                npcID       = 241539,
                name        = "Chief Corewright Kasreth",
                tip         = L["NX_B1_TIP"],
                notes = {
                    { role = "general",   text = L["NX_B1_N1"] },
                    { role = "general",   text = L["NX_B1_N2"] },
                    { role = "healer",    text = L["NX_B1_N3"] },
                },
            },
            {
                encounterID = 3332,  -- confirmed in-game
                npcID       = 254227,
                name        = "Corewarden Nysarra",
                tip         = L["NX_B2_TIP"],
                notes = {
                    { role = "general",   text = L["NX_B2_N1"] },
                    { role = "general",   text = L["NX_B2_N2"] },
                    { role = "dps",       text = L["NX_B2_N3"] },
                    { role = "tank",      text = L["NX_B2_N4"] },
                    { role = "healer",    text = L["NX_B2_N5"] },
                },
            },
            {
                encounterID = 3333,  -- confirmed in-game
                npcID       = 241546,
                name        = "Lothraxion",
                tip         = L["NX_B3_TIP"],
                notes = {
                    { role = "interrupt", text = L["NX_B3_N1"] },
                    { role = "general",   text = L["NX_B3_N2"] },
                    { role = "tank",      text = L["NX_B3_N3"] },
                },
            },
        },
        trash = {
            { npcID = 241643, name = "Shadowguard Defender",  tip = L["NX_T1"] },
            { npcID = 241647, name = "Flux Engineer",          tip = L["NX_T2"] },
            { npcID = 248708, name = "Nexus Adept",            tip = L["NX_T3"] },
            { npcID = 248373, name = "Circuit Seer",           tip = L["NX_T4"] },
            { npcID = 248706, name = "Cursed Voidcaller",      tip = L["NX_T5"] },
            { npcID = 251853, name = "Grand Nullifier",        tip = L["NX_T6"] },
            { npcID = 241660, name = "Duskfright Herald",      tip = L["NX_T7"] },
            { npcID = 251024, name = "Dreadflail",             tip = L["NX_T8"] },
        },
        areas = {
            { subzone = "The Bazaar",             tip = L["NX_A1"] },  -- entrance section; subzone confirmed in-game; mob assignments unverified
            { subzone = "Corespark Engineway",    bossIndex = 1 },  -- Chief Corewright Kasreth; confirmed in-game
            { subzone = "Core Defense Nullward",  bossIndex = 2 },  -- Corewarden Nysarra; confirmed in-game
            { subzone = "The Nexus Core",         bossIndex = 3 },  -- Lothraxion's boss room; confirmed in-game
        },
    },
    {
        instanceID = 2859,  -- confirmed in-game
        uiMapID    = 2500,  -- confirmed in-game
        name       = "The Blinding Vale",
        location   = "Harandar",
        season     = "midnight",
        type       = "max",
        mythicPlus = false,
        bosses = {
            {
                encounterID = 3199,  -- confirmed in-game
                npcID       = 243028,  -- Meittik
                altNpcIDs   = { 243029, 243030 },  -- Kezkitt, Lekshi
                name        = "Lightblossom Trinity",
                tip         = L["BV_B1_TIP"],
                notes = {
                    { role = "general",   text = L["BV_B1_N1"] },
                    { role = "general",   text = L["BV_B1_N2"] },
                    { role = "interrupt", text = L["BV_B1_N3"] },
                },
            },
            {
                encounterID = 3200,  -- confirmed in-game
                npcID       = 244887,
                name        = "Ikuzz the Light Hunter",
                tip         = L["BV_B2_TIP"],
                notes = {
                    { role = "general",   text = L["BV_B2_N1"] },
                    { role = "dps",       text = L["BV_B2_N2"] },
                },
            },
            {
                encounterID = 3201,  -- confirmed in-game
                npcID       = 245912,
                name        = "Lightwarden Ruia",
                tip         = L["BV_B3_TIP"],
                notes = {
                    { role = "general",   text = L["BV_B3_N1"] },
                    { role = "general",   text = L["BV_B3_N2"] },
                    { role = "healer",    text = L["BV_B3_N3"] },
                },
            },
            {
                encounterID = 3202,  -- confirmed in-game
                npcID       = 247676,
                name        = "Ziekett",
                tip         = L["BV_B4_TIP"],
                notes = {
                    { role = "general",   text = L["BV_B4_N1"] },
                    { role = "general",   text = L["BV_B4_N2"] },
                    { role = "tank",      text = L["BV_B4_N3"] },
                },
            },
        },
        areas = {
            { subzone = "The Luminous Garden",  bossIndex = 1 },  -- Lightblossom Trinity; confirmed in-game
            { subzone = "The Gilded Tangle",    bossIndex = 2 },  -- Ikuzz the Light Hunter; confirmed in-game
            { subzone = "Warden's Retreat",     bossIndex = 3 },  -- Lightwarden Ruia; confirmed in-game
            { subzone = "Conviction's Crucible", bossIndex = 4 }, -- Ziekett; confirmed in-game
        },
    },
    {
        instanceID = 2923,  -- confirmed in-game
        uiMapID    = 2572,  -- confirmed in-game
        altMapIDs  = { 2573, 2574 },  -- 2573/2574 = confirmed in-game sub-zones
        name       = "Voidscar Arena",
        location   = "Voidstorm",
        season     = "midnight",
        type       = "max",
        mythicPlus = false,
        bosses = {
            {
                encounterID = 3285,  -- confirmed in-game
                npcID       = 238887,
                name        = "Taz'Rah",
                tip         = L["VA_B1_TIP"],
                notes = {
                    { role = "general",   text = L["VA_B1_N1"] },
                    { role = "dps",       text = L["VA_B1_N2"] },
                },
            },
            {
                encounterID = 3286,  -- confirmed in-game
                npcID       = 239008,
                name        = "Atroxus",
                tip         = L["VA_B2_TIP"],
                notes = {
                    { role = "general",   text = L["VA_B2_N1"] },
                    { role = "general",   text = L["VA_B2_N2"] },
                    { role = "tank",      text = L["VA_B2_N3"] },
                },
            },
            {
                encounterID = 3287,  -- confirmed in-game
                npcID       = 248015,
                name        = "Charonus",
                tip         = L["VA_B3_TIP"],
                notes = {
                    { role = "general",   text = L["VA_B3_N1"] },
                    { role = "healer",    text = L["VA_B3_N2"] },
                },
            },
        },
        areas = {
            { subzone = "The Den", bossIndex = 1 },  -- Taz'Rah's arena; confirmed in-game
            { mapID = 2573,        bossIndex = 2 },  -- Atroxus; inferred from encounter order (unconfirmed)
            { mapID = 2574,        bossIndex = 3 },  -- Charonus; inferred from encounter order (unconfirmed)
        },
    },

    -- --------------------------------------------------------
    -- SEASON 1 MYTHIC+ — Legacy Dungeons
    -- --------------------------------------------------------
    {
        instanceID = 2526,  -- confirmed in-game
        uiMapID    = 2097,  -- confirmed in-game
        altMapIDs  = { 2025, 2098 },  -- 2025 = entrance antechamber; 2098 = upper floor (The Pitch); confirmed in-game
        name       = "Algeth'ar Academy",
        location   = "Thaldraszus",
        season     = "legacy",
        type       = "max",
        mythicPlus = true,
        bosses = {
            {
                encounterID = 2563,  -- confirmed in-game
                npcID       = 196482,
                name        = "Overgrown Ancient",
                tip         = L["AA_B1_TIP"],
                notes = {
                    { role = "general",   text = L["AA_B1_N1"] },
                    { role = "general",   text = L["AA_B1_N2"] },
                    { role = "general",   text = L["AA_B1_N3"] },
                    { role = "tank",      text = L["AA_B1_N4"] },
                    { role = "interrupt", text = L["AA_B1_N5"] },
                },
            },
            {
                encounterID = 2564,  -- confirmed in-game
                npcID       = 191736,
                name        = "Crawth",
                tip         = L["AA_B2_TIP"],
                notes = {
                    { role = "general",   text = L["AA_B2_N1"] },
                    { role = "general",   text = L["AA_B2_N2"] },
                    { role = "tank",      text = L["AA_B2_N3"] },
                    { role = "dps",       text = L["AA_B2_N4"] },
                },
            },
            {
                encounterID = 2562,  -- confirmed in-game
                npcID       = 194181,
                name        = "Vexamus",
                tip         = L["AA_B3_TIP"],
                notes = {
                    { role = "general",   text = L["AA_B3_N1"] },
                    { role = "general",   text = L["AA_B3_N2"] },
                    { role = "general",   text = L["AA_B3_N3"] },
                    { role = "tank",      text = L["AA_B3_N4"] },
                },
            },
            {
                encounterID = 2565,  -- confirmed in-game
                npcID       = 190609,
                name        = "Echo of Doragosa",
                tip         = L["AA_B4_TIP"],
                notes = {
                    { role = "general",   text = L["AA_B4_N1"] },
                    { role = "general",   text = L["AA_B4_N2"] },
                    { role = "general",   text = L["AA_B4_N3"] },
                    { role = "general",   text = L["AA_B4_N4"] },
                    { role = "tank",      text = L["AA_B4_N5"] },
                },
            },
        },
        areas = {
            { subzone = "Terrace of Lectures",      bossIndex = 3 },  -- Vexamus; confirmed in-game
            { subzone = "The Botanica",              bossIndex = 1 },  -- Overgrown Ancient; confirmed in-game
            { subzone = "The Pitch",                 bossIndex = 2 },  -- Crawth; spans mapIDs 2097+2098; confirmed in-game
            { subzone = "The Headteacher's Enclave", bossIndex = 4 },  -- Echo of Doragosa; confirmed in-game
        },
    },
    {
        instanceID = 658,   -- confirmed in-game
        uiMapID    = 184,   -- confirmed in-game
        name       = "Pit of Saron",
        location   = "Icecrown",
        season     = "legacy",
        type       = "max",
        mythicPlus = true,
        bosses = {
            {
                encounterID = 1999,  -- confirmed in-game
                npcID       = 36494,
                name        = "Forgemaster Garfrost",
                tip         = L["PS_B1_TIP"],
                notes = {
                    { role = "general",   text = L["PS_B1_N1"] },
                    { role = "healer",    text = L["PS_B1_N2"] },
                    { role = "tank",      text = L["PS_B1_N3"] },
                },
            },
            {
                encounterID = 2001,  -- confirmed in-game
                npcID       = 36476,  -- Ick
                altNpcIDs   = { 36477 },  -- Krick
                name        = "Ick & Krick",
                tip         = L["PS_B2_TIP"],
                notes = {
                    { role = "general",   text = L["PS_B2_N1"] },
                    { role = "general",   text = L["PS_B2_N2"] },
                    { role = "tank",      text = L["PS_B2_N3"] },
                    { role = "interrupt", text = L["PS_B2_N4"] },
                },
            },
            {
                encounterID = 2000,  -- confirmed in-game
                npcID       = 36658,
                name        = "Scourgelord Tyrannus",
                tip         = L["PS_B3_TIP"],
                notes = {
                    { role = "general",   text = L["PS_B3_N1"] },
                    { role = "general",   text = L["PS_B3_N2"] },
                    { role = "dps",       text = L["PS_B3_N3"] },
                    { role = "tank",      text = L["PS_B3_N4"] },
                    { role = "interrupt", text = L["PS_B3_N5"] },
                },
            },
        },
        areas = {
            -- Garfrost and Ick & Krick have no named subzone (empty string throughout).
            -- Only Tyrannus has a distinct boss room subzone.
            { subzone = "Scourgelord's Command", bossIndex = 3 },  -- Scourgelord Tyrannus; confirmed in-game
        },
    },
    {
        instanceID = 1753,  -- confirmed in-game
        uiMapID    = 903,   -- confirmed in-game; single map ID, no alt maps
        name       = "Seat of the Triumvirate",
        location   = "Argus",
        season     = "legacy",
        type       = "max",
        mythicPlus = true,
        bosses = {
            {
                encounterID = 2065,  -- confirmed in-game
                npcID       = 122313,
                name        = "Zuraal the Ascended",
                tip         = L["ST_B1_TIP"],
                notes = {
                    { role = "general",   text = L["ST_B1_N1"] },
                    { role = "general",   text = L["ST_B1_N2"] },
                    { role = "dps",       text = L["ST_B1_N3"] },
                    { role = "tank",      text = L["ST_B1_N4"] },
                },
            },
            {
                encounterID = 2066,  -- confirmed in-game
                npcID       = 122316,
                name        = "Saprish",
                tip         = L["ST_B2_TIP"],
                notes = {
                    { role = "general",   text = L["ST_B2_N1"] },
                    { role = "general",   text = L["ST_B2_N2"] },
                    { role = "healer",    text = L["ST_B2_N3"] },
                    { role = "interrupt", text = L["ST_B2_N4"] },
                },
            },
            {
                encounterID = 2067,  -- confirmed in-game
                npcID       = 124309,
                name        = "Viceroy Nezhar",
                tip         = L["ST_B3_TIP"],
                notes = {
                    { role = "general",   text = L["ST_B3_N1"] },
                    { role = "dps",       text = L["ST_B3_N2"] },
                    { role = "tank",      text = L["ST_B3_N3"] },
                    { role = "interrupt", text = L["ST_B3_N4"] },
                },
            },
            {
                encounterID = 2068,  -- confirmed in-game
                npcID       = 214650,
                name        = "L'ura",
                tip         = L["ST_B4_TIP"],
                notes = {
                    { role = "general",   text = L["ST_B4_N1"] },
                    { role = "general",   text = L["ST_B4_N2"] },
                    { role = "dps",       text = L["ST_B4_N3"] },
                    { role = "tank",      text = L["ST_B4_N4"] },
                },
            },
        },
        areas = {
            { subzone = "Triad's Conservatory",        bossIndex = 1 },  -- Zuraal the Ascended; confirmed in-game
            { subzone = "Shadowguard Incursion",        bossIndex = 2 },  -- Saprish; confirmed in-game
            { subzone = "The Seat of the Triumvirate",  bossIndex = 3 },  -- Viceroy Nezhar; confirmed in-game
            -- L'ura (bossIndex=4) shares this subzone — ENCOUNTER_START overrides the area tip when L'ura's fight begins.
        },
    },
    -- --------------------------------------------------------
    -- MIDNIGHT DELVES
    -- All uiMapIDs are 0 — verify in-game with /run print(C_Map.GetBestMapForUnit("player"))
    -- instanceIDs sourced from LittleWigs Midnight/Delves/ — unverified in-game.
    -- encounterIDs sourced from LittleWigs SetEncounterID() calls — unverified in-game.
    -- Tip content sourced from Icy Veins (primary for non-M+ content).
    -- --------------------------------------------------------
    {
        instanceID = 2933,  -- confirmed in-game
        uiMapID    = 2547,  -- confirmed in-game (Voidscorned Vagrant boss room; primary map ID)
        name       = "Collegiate Calamity",
        location   = "Eversong Woods",
        season     = "midnight",
        type       = "delve",
        mythicPlus = false,
        bosses = {
            {
                encounterID = 3367,
                name        = "Hydrangea",
                tip         = L["CC_B1_TIP"],
                notes = {
                    { role = "general",   text = L["CC_B1_N1"] },
                    { role = "general",   text = L["CC_B1_N2"] },
                },
            },
            {
                encounterID = 3405,
                name        = "Infiltrator Garand",
                tip         = L["CC_B2_TIP"],
                notes = {
                    { role = "general",   text = L["CC_B2_N1"] },
                    { role = "general",   text = L["CC_B2_N2"] },
                },
            },
            {
                encounterID = 3404,
                name        = "Voidscorned Vagrant",
                tip         = L["CC_B3_TIP"],
                notes = {
                    { role = "interrupt", text = L["CC_B3_N1"] },
                    { role = "general",   text = L["CC_B3_N2"] },
                },
            },
        },
    },
    {
        instanceID = 2952,
        uiMapID    = 0,  -- TODO: verify in-game
        name       = "The Shadow Enclave",
        location   = "Eversong Woods",
        season     = "midnight",
        type       = "delve",
        mythicPlus = false,
        bosses = {
            {
                encounterID = 3368,
                name        = "Lord Antenorian",
                tip         = L["SE_B1_TIP"],
                notes = {
                    { role = "interrupt", text = L["SE_B1_N1"] },
                    { role = "dps",       text = L["SE_B1_N2"] },
                },
            },
        },
    },
    {
        instanceID = 2953,
        uiMapID    = 0,  -- TODO: verify in-game (Parhelion Plaza activates week of March 31, 2026)
        name       = "Parhelion Plaza",
        location   = "Isle of Quel'Danas",
        season     = "midnight",
        type       = "delve",
        mythicPlus = false,
        bosses = {
            {
                encounterID = 3307,
                name        = "Gladius Slaurna",
                tip         = L["PP_B1_TIP"],
                notes = {
                    { role = "dps",       text = L["PP_B1_N1"] },
                    { role = "interrupt", text = L["PP_B1_N2"] },
                    { role = "general",   text = L["PP_B1_N3"] },
                },
            },
        },
    },
    {
        instanceID = 2961,
        uiMapID    = 0,  -- TODO: verify in-game
        name       = "Twilight Crypts",
        location   = "Zul'Aman",
        season     = "midnight",
        type       = "delve",
        mythicPlus = false,
        bosses = {
            {
                encounterID = 3360,
                name        = "Blademaster Darza",
                tip         = L["TC_B1_TIP"],
                notes = {
                    { role = "general",   text = L["TC_B1_N1"] },
                    { role = "general",   text = L["TC_B1_N2"] },
                    { role = "general",   text = L["TC_B1_N3"] },
                },
            },
        },
    },
    {
        instanceID = 2962,
        uiMapID    = 0,  -- TODO: verify in-game
        name       = "Atal'Aman",
        location   = "Zul'Aman",
        season     = "midnight",
        type       = "delve",
        mythicPlus = false,
        bosses = {
            {
                -- Three encounterIDs — one per event variant (Ritual Interrupted, Toadly Unbecoming, Totem Annihilation)
                encounterID     = 3433,
                altEncounterIDs = { 3434, 3435 },
                name            = "Spiritflayer Jin'Ma",
                tip         = L["AT_B1_TIP"],
                notes = {
                    { role = "general",   text = L["AT_B1_N1"] },
                    { role = "general",   text = L["AT_B1_N2"] },
                },
            },
        },
    },
    {
        instanceID = 3003,
        uiMapID    = 0,  -- TODO: verify in-game
        name       = "The Darkway",
        location   = "Zul'Aman",
        season     = "midnight",
        type       = "delve",
        mythicPlus = false,
        bosses = {
            {
                encounterID = 3361,
                name        = "Infiltrator Gulkat",
                tip         = L["DW_B1_TIP"],
                notes = {
                    { role = "interrupt", text = L["DW_B1_N1"] },
                    { role = "general",   text = L["DW_B1_N2"] },
                    { role = "general",   text = L["DW_B1_N3"] },
                },
            },
        },
    },
    {
        instanceID = 2963,
        uiMapID    = 0,  -- TODO: verify in-game
        name       = "The Grudge Pit",
        location   = "Harandar",
        season     = "midnight",
        type       = "delve",
        mythicPlus = false,
        bosses = {
            {
                encounterID = 3364,
                name        = "Brightthorn",
                tip         = L["GP_B1_TIP"],
                notes = {
                    { role = "interrupt", text = L["GP_B1_N1"] },
                    { role = "general",   text = L["GP_B1_N2"] },
                    { role = "general",   text = L["GP_B1_N3"] },
                },
            },
            {
                encounterID = 3363,
                name        = "Gyrospore",
                tip         = L["GP_B2_TIP"],
                notes = {
                    { role = "general",   text = L["GP_B2_N1"] },
                    { role = "dps",       text = L["GP_B2_N2"] },
                    { role = "general",   text = L["GP_B2_N3"] },
                },
            },
            {
                encounterID = 3362,
                name        = "Mycomight",
                tip         = L["GP_B3_TIP"],
                notes = {
                    { role = "general",   text = L["GP_B3_N1"] },
                    { role = "general",   text = L["GP_B3_N2"] },
                    { role = "general",   text = L["GP_B3_N3"] },
                },
            },
        },
    },
    {
        instanceID = 2964,
        uiMapID    = 0,  -- TODO: verify in-game
        name       = "Gulf of Memory",
        location   = "Harandar",
        season     = "midnight",
        type       = "delve",
        mythicPlus = false,
        bosses = {
            {
                encounterID = 3416,
                name        = "Lumenia",
                tip         = L["GM_B1_TIP"],
                notes = {
                    { role = "dps",       text = L["GM_B1_N1"] },
                    { role = "general",   text = L["GM_B1_N2"] },
                    { role = "general",   text = L["GM_B1_N3"] },
                },
            },
            {
                encounterID = 3359,
                name        = "Mul'tha'ul",
                tip         = L["GM_B2_TIP"],
                notes = {
                    { role = "general",   text = L["GM_B2_N1"] },
                    { role = "general",   text = L["GM_B2_N2"] },
                    { role = "healer",    text = L["GM_B2_N3"] },
                    { role = "interrupt", text = L["GM_B2_N4"] },
                },
            },
        },
    },
    {
        instanceID = 2965,
        uiMapID    = 0,  -- TODO: verify in-game
        name       = "Sunkiller Sanctum",
        location   = "Harandar",
        season     = "midnight",
        type       = "delve",
        mythicPlus = false,
        bosses = {
            {
                encounterID = 3398,
                name        = "Esuritus",
                tip         = L["SK_B1_TIP"],
                notes = {
                    { role = "interrupt", text = L["SK_B1_N1"] },
                    { role = "general",   text = L["SK_B1_N2"] },
                    { role = "dps",       text = L["SK_B1_N3"] },
                },
            },
        },
    },
    {
        instanceID = 2979,
        uiMapID    = 0,  -- TODO: verify in-game
        name       = "Shadowguard Point",
        location   = "Voidstorm",
        season     = "midnight",
        type       = "delve",
        mythicPlus = false,
        bosses = {
            {
                encounterID = 3365,
                name        = "Chief-Arcanist Patram",
                tip         = L["SP_B1_TIP"],
                notes = {
                    { role = "interrupt", text = L["SP_B1_N1"] },
                    { role = "dps",       text = L["SP_B1_N2"] },
                    { role = "general",   text = L["SP_B1_N3"] },
                },
            },
        },
    },

    {
        instanceID = 1209,  -- confirmed in-game
        uiMapID    = 601,   -- confirmed in-game
        altMapIDs  = { 602 },  -- upper tier; confirmed in-game
        name       = "Skyreach",
        location   = "Spires of Arak",
        season     = "legacy",
        type       = "max",
        mythicPlus = true,
        bosses = {
            {
                encounterID = 1698,  -- confirmed in-game
                npcID       = 75964,
                name        = "Ranjit",
                tip         = L["SR_B1_TIP"],
                notes = {
                    { role = "general",   text = L["SR_B1_N1"] },
                    { role = "healer",    text = L["SR_B1_N2"] },
                    { role = "general",   text = L["SR_B1_N3"] },
                    { role = "general",   text = L["SR_B1_N4"] },
                },
            },
            {
                encounterID = 1699,  -- confirmed in-game
                npcID       = 76141,
                name        = "Araknath",
                tip         = L["SR_B2_TIP"],
                notes = {
                    { role = "tank",      text = L["SR_B2_N1"] },
                    { role = "general",   text = L["SR_B2_N2"] },
                    { role = "general",   text = L["SR_B2_N3"] },
                    { role = "healer",    text = L["SR_B2_N4"] },
                },
            },
            {
                encounterID = 1700,  -- confirmed in-game
                npcID       = 76379,
                name        = "Rukhran",
                tip         = L["SR_B3_TIP"],
                notes = {
                    { role = "dps",       text = L["SR_B3_N1"] },
                    { role = "general",   text = L["SR_B3_N2"] },
                    { role = "tank",      text = L["SR_B3_N3"] },
                },
            },
            {
                encounterID = 1701,  -- confirmed in-game
                npcID       = 76266,
                name        = "High Sage Viryx",
                tip         = L["SR_B4_TIP"],
                notes = {
                    { role = "general",   text = L["SR_B4_N1"] },
                    { role = "general",   text = L["SR_B4_N2"] },
                    { role = "healer",    text = L["SR_B4_N3"] },
                    { role = "interrupt", text = L["SR_B4_N4"] },
                },
            },
        },
        areas = {
            -- "Grand Spire" appears on both mapID 601 (Araknath) and 602 (High Sage Viryx).
            -- mapID=602 entry must come first — it matches only on that specific map.
            -- The subzone-only entry below it catches mapID 601 without ambiguity.
            { mapID = 602,                    bossIndex = 4 },  -- High Sage Viryx; confirmed in-game
            { subzone = "Lower Quarter",      bossIndex = 1 },  -- Ranjit; confirmed in-game
            { subzone = "Grand Spire",        bossIndex = 2 },  -- Araknath (mapID 601); confirmed in-game
            { subzone = "The Overlook",       bossIndex = 3 },  -- Rukhran; confirmed in-game
        },
    },

    -- --------------------------------------------------------
    -- MIDNIGHT SEASON 1 RAID — Three wings, same season
    -- instanceIDs: Voidspire + Dreamrift confirmed in-game; March on Quel'Danas from BigWigs (unverified).
    -- encounterIDs: Voidspire + Dreamrift confirmed in-game; March on Quel'Danas from BigWigs (unverified).
    -- uiMapIDs: Voidspire + Dreamrift confirmed in-game; March on Quel'Danas still 0 (TODO: verify).
    -- Mechanic data from BigWigs Lua + Wowhead + method.gg (pre-launch sourcing).
    -- --------------------------------------------------------

    -- Wing 1: The Voidspire (6 bosses)
    {
        instanceID = 2912,  -- confirmed in-game
        uiMapID    = 2529,  -- confirmed in-game
        altMapIDs  = { 2530 },  -- The Bazaar (entrance); confirmed in-game
        name       = "The Voidspire",
        location   = "Quel'Thalas",
        season     = "midnight",
        type       = "raid",
        mythicPlus = false,
        areas = {
            { subzone = "The Approach",    bossIndex = 1 },  -- Imperator Averzian; confirmed in-game
            { subzone = "Behemoth's Rise", bossIndex = 2 },  -- Vorasius; confirmed in-game
            { subzone = "The Riftlabs",    bossIndex = 3 },  -- Fallen-King Salhadaar; confirmed in-game
            -- Vaelgor & Ezzorak (4), Lightblinded Vanguard (5), Crown of the Cosmos (6): no subzone text captured
        },
        bosses = {
            {
                encounterID = 3176,  -- confirmed in-game
                npcID       = 240435,
                name        = "Imperator Averzian",
                tip         = L["VS_B1_TIP"],
                notes = {
                    { role = "general",   text = L["VS_B1_N1"] },
                    { role = "general",   text = L["VS_B1_N2"] },
                    { role = "dps",       text = L["VS_B1_N3"] },
                    { role = "tank",      text = L["VS_B1_N4"] },
                    { role = "interrupt", text = L["VS_B1_N5"] },
                },
            },
            {
                encounterID = 3177,  -- confirmed in-game
                npcID       = 240434,
                name        = "Vorasius",
                tip         = L["VS_B2_TIP"],
                notes = {
                    { role = "general",   text = L["VS_B2_N1"] },
                    { role = "general",   text = L["VS_B2_N2"] },
                    { role = "general",   text = L["VS_B2_N3"] },
                    { role = "healer",    text = L["VS_B2_N4"] },
                    { role = "tank",      text = L["VS_B2_N5"] },
                },
            },
            {
                encounterID = 3179,  -- confirmed in-game
                npcID       = 240432,
                name        = "Fallen-King Salhadaar",
                tip         = L["VS_B3_TIP"],
                notes = {
                    { role = "general",   text = L["VS_B3_N1"] },
                    { role = "general",   text = L["VS_B3_N2"] },
                    { role = "dps",       text = L["VS_B3_N3"] },
                    { role = "healer",    text = L["VS_B3_N4"] },
                    { role = "tank",      text = L["VS_B3_N5"] },
                    { role = "interrupt", text = L["VS_B3_N6"] },
                },
            },
            {
                encounterID = 3178,  -- confirmed in-game
                npcID       = 242056,
                altNpcIDs   = { 244552 },  -- Ezzorak
                name        = "Vaelgor & Ezzorak",
                tip         = L["VS_B4_TIP"],
                notes = {
                    { role = "general",   text = L["VS_B4_N1"] },
                    { role = "general",   text = L["VS_B4_N2"] },
                    { role = "general",   text = L["VS_B4_N3"] },
                    { role = "healer",    text = L["VS_B4_N4"] },
                    { role = "tank",      text = L["VS_B4_N5"] },
                    { role = "interrupt", text = L["VS_B4_N6"] },
                },
            },
            {
                encounterID = 3180,  -- confirmed in-game
                npcID       = 240431,
                altNpcIDs   = { 240437, 240438 },  -- Lightblood, Senn
                name        = "Lightblinded Vanguard",
                tip         = L["VS_B5_TIP"],
                notes = {
                    { role = "general",   text = L["VS_B5_N1"] },
                    { role = "general",   text = L["VS_B5_N2"] },
                    { role = "general",   text = L["VS_B5_N3"] },
                    { role = "general",   text = L["VS_B5_N4"] },
                    { role = "tank",      text = L["VS_B5_N5"] },
                },
            },
            {
                encounterID = 3181,  -- BigWigs; unverified in-game
                npcID       = 240430,
                altNpcIDs   = { 243805, 243810, 243811 },  -- Morium, Demiar, Vorelus
                name        = "Crown of the Cosmos",
                tip         = L["VS_B6_TIP"],
                notes = {
                    { role = "general",   text = L["VS_B6_N1"] },
                    { role = "general",   text = L["VS_B6_N2"] },
                    { role = "dps",       text = L["VS_B6_N3"] },
                    { role = "tank",      text = L["VS_B6_N4"] },
                    { role = "healer",    text = L["VS_B6_N5"] },
                    { role = "interrupt", text = L["VS_B6_N6"] },
                },
            },
        },
    },

    -- Wing 2: March on Quel'Danas (2 bosses)
    {
        instanceID = 2913,  -- BigWigs Midnight/MarchOnQuelDanas/; unverified in-game
        uiMapID    = 0,     -- TODO: verify in-game
        name       = "March on Quel'Danas",
        location   = "Isle of Quel'Danas",
        season     = "midnight",
        type       = "raid",
        mythicPlus = false,
        bosses = {
            {
                encounterID = 3182,  -- BigWigs; unverified in-game
                npcID       = 240387,
                name        = "Belo'ren, Child of Al'ar",
                tip         = L["MQ_B1_TIP"],
                notes = {
                    { role = "general",   text = L["MQ_B1_N1"] },
                    { role = "interrupt", text = L["MQ_B1_N2"] },
                    { role = "dps",       text = L["MQ_B1_N3"] },
                    { role = "healer",    text = L["MQ_B1_N4"] },
                },
            },
            {
                encounterID = 3183,  -- BigWigs; unverified in-game
                npcID       = 240391,
                name        = "Midnight Falls",
                tip         = L["MQ_B2_TIP"],
                notes = {
                    { role = "general",   text = L["MQ_B2_N1"] },
                    { role = "general",   text = L["MQ_B2_N2"] },
                    { role = "general",   text = L["MQ_B2_N3"] },
                    { role = "general",   text = L["MQ_B2_N4"] },
                },
            },
        },
    },

    -- Wing 3: The Dreamrift (1 boss)
    {
        instanceID = 2939,  -- confirmed in-game
        uiMapID    = 2531,  -- confirmed in-game
        altMapIDs  = { 2532 },  -- Den of the Undreamt; confirmed in-game
        name       = "The Dreamrift",
        location   = "The Dreamrift",
        season     = "midnight",
        type       = "raid",
        mythicPlus = false,
        areas = {
            { subzone = "Den of the Undreamt", bossIndex = 1 },  -- Chimaerus; confirmed in-game
        },
        bosses = {
            {
                encounterID = 3306,  -- confirmed in-game
                npcID       = 245569,
                name        = "Chimaerus the Undreamt God",
                tip         = L["DR_B1_TIP"],
                notes = {
                    { role = "general",   text = L["DR_B1_N1"] },
                    { role = "general",   text = L["DR_B1_N2"] },
                    { role = "healer",    text = L["DR_B1_N3"] },
                    { role = "general",   text = L["DR_B1_N4"] },
                    { role = "interrupt", text = L["DR_B1_N5"] },
                },
            },
        },
    },
}

-- ============================================================
-- M+ Affix Data
-- ============================================================
-- tip fields: concise strategic callouts for the HUD.
-- Affixes not listed here fall back to C_ChallengeMode.GetAffixInfo() description.
-- IDs are stable across expansions. Season 1 specific affix IDs should be added
-- once confirmed in-game via keystoneLog.
KwikTip.AFFIXES = {
    [3]   = { name = "Volcanic",     tip = "Volcanic plumes erupt under players — move immediately; never stand still while casting." },
    [6]   = { name = "Raging",       tip = "Trash enrages at 30% HP — use Enrage dispels or kite; save a defensive for the enrage window." },
    [7]   = { name = "Bolstering",   tip = "Nearby trash gains 20% HP when any mob dies — stagger kills; never let multiple mobs die simultaneously." },
    [8]   = { name = "Sanguine",     tip = "Dead trash leaves healing pools — tank kite surviving mobs out of pools immediately." },
    [9]   = { name = "Tyrannical",   tip = "Bosses have 30% more HP and deal 15% more damage. Save major CDs for bosses." },
    [10]  = { name = "Fortified",    tip = "Trash has 20% more HP and deals 30% more damage. Control pull size carefully." },
    [11]  = { name = "Bursting",     tip = "Trash explodes on death — stagger kills and dispel Burst stacks; never chain-kill multiple mobs." },
    [12]  = { name = "Grievous",     tip = "Grievous Wound stacks during combat — heal players to full to remove; dispel early." },
    [13]  = { name = "Explosive",    tip = "Explosive Orbs spawn during combat — kill within 6s or they deal lethal group damage." },
    [14]  = { name = "Quaking",      tip = "Quake interrupts casters and silences — spread during big pulls to reduce overlap damage." },
    [123] = { name = "Spiteful",     tip = "Spiteful Shades fixate a random player on mob death — CC, kite, or burst before they reach their target." },
    [124] = { name = "Storming",     tip = "Tornadoes move randomly — dodge on sight; contact silences for 3s." },
    [134] = { name = "Entangling",   tip = "Vines root random players — break free immediately; don't let roots lock you in AoE zones." },
    [135] = { name = "Afflicted",    tip = "Afflicted Souls spawn — instantly dispel their Poison, Curse, or Disease; missing reduces healer output for 10s." },
    [136] = { name = "Incorporeal",  tip = "Incorporeal Beings spawn — CC immediately (Banish, Imprison, Freeze, etc.); they reduce all stats while active." },
}

-- Runtime lookups are built in DungeonData_Timewalking.lua, which loads after
-- this file, so that timewalking dungeon entries are included in all tables.
