-- KwikTip: English (en-US) locale
-- Assigning `true` means "use the key string as-is".
-- This file documents every localizable string in the addon.

local ADDON_NAME, KwikTip = ...
local L = KwikTip.L

-- ============================================================
-- Config window — section headers
-- ============================================================
L["KwikTip Settings"]             = true
L["POSITION"]                     = true
L["DISPLAY"]                      = true
L["SEND TO CHAT"]                 = true
L["APPEARANCE"]                   = true
L["FONT"]                         = true
L["TEXT STYLE"]                   = true
L["BORDER"]                       = true

-- ============================================================
-- Config window — buttons
-- ============================================================
L["Move Window"]                  = true
L["Lock Window"]                  = true
L["Preview"]                      = true

-- ============================================================
-- Config window — checkboxes and labels
-- ============================================================
L["Show Minimap Button"]          = true
L["Hide Info Window"]             = true
L["Keep Open Through Instance"]   = true
L["Enable in Delves"]             = true
L["CAUTION: Preliminary Release"] = true
L["Enable in Raids"]              = true

-- ============================================================
-- Config window — chat channel dropdown
-- ============================================================
L["None"]                         = true
L["Say"]                          = true
L["Instance"]                     = true
L["Party"]                        = true
L["Raid"]                         = true

-- ============================================================
-- Config window — size nudge row labels
-- ============================================================
L["W:"]  = true
L["H:"]  = true

-- ============================================================
-- Config window — sliders
-- ============================================================
L["Opacity"]                      = true
L["Opacity: %d%%"]                = true
L["0%"]                           = true
L["100%"]                         = true
L["Size: %d"]                     = true

-- ============================================================
-- Config window — text style
-- ============================================================
L["Text Shadow"]                  = true
L["Outline:"]                     = true
L["Outline"]                      = true
L["Thick Outline"]                = true

-- ============================================================
-- Config window — border
-- ============================================================
L["Show Border"]                  = true
L["Border Color:"]                = true

-- ============================================================
-- Minimap button tooltip
-- ============================================================
L["Left-click: Settings"]         = true
L["Right-click: Move HUD"]        = true
L["Drag: Reposition"]             = true

-- ============================================================
-- HUD
-- ============================================================
L["Print tip to instance chat"]           = true
L["Waiting for relevant encounter..."]    = true
L["Active Affixes"]                       = true

-- ============================================================
-- HUD chat print — role labels (substituted into plain-text chat output)
-- ============================================================
L["[Tank] "] = true
L["[Heal] "] = true
L["[DPS] "]  = true
L["[INT] "]  = true

-- ============================================================
-- Preview (demo content shown in config window)
-- ============================================================
L["Demo Dungeon"]    = true
L["Example Boss"]    = true
L["DEMO_NOTE_GENERAL"]   = "Avoid the red zones; use a personal defensive on the big hit."
L["DEMO_NOTE_TANK"]      = "Tank swap at 3 stacks of the debuff."
L["DEMO_NOTE_HEALER"]    = "Major healing CDs after every Cataclysm cast."
L["DEMO_NOTE_DPS"]       = "Kill adds before switching back to the boss."
L["DEMO_NOTE_INTERRUPT"] = "Shadowbolt — interrupt every cast, no exceptions."

-- ============================================================
-- Lifecycle message
-- ============================================================
L["loaded. Type /kwik for settings."] = true

-- ============================================================
-- Slash commands — feedback
-- ============================================================
L["DEBUG_HEADER"]            = "debug:"
L["none"]                    = "none"
L["debug logging enabled."]  = true
L["debug logging disabled."] = true
L["CLEARLOG_MSG"]            = "mapIDLog, mobLog, encounterLog, keystoneLog, spellLog, and debugSnapshots cleared."
L["FEEDBACK_MSG"]            = "Tips feel off? Open an issue at: https://github.com/postblink/KwikTip/issues"
L["UNKNOWN_CMD"]             = "unknown command. Type /kwik help for a list of commands."

-- ============================================================
-- Slash commands — /kwik help lines
-- ============================================================
L["HELP_HEADER"]         = "commands:"
L["HELP_CMD_OPEN"]       = "  /kwik           \226\128\148 open settings"
L["HELP_CMD_MOVE"]       = "  /kwik move      \226\128\148 toggle move/lock mode"
L["HELP_CMD_PREVIEW"]    = "  /kwik preview   \226\128\148 toggle role notes preview in the HUD"
L["HELP_CMD_DEBUG"]      = "  /kwik debug     \226\128\148 print current detection state to chat"
L["HELP_CMD_DEBUGLOG"]   = "  /kwik debuglog  \226\128\148 toggle map/mob ID logging to SavedVariables"
L["HELP_CMD_CLEARLOG"]   = "  /kwik clearlog  \226\128\148 clear all debug logs from SavedVariables"
L["HELP_CMD_FEEDBACK"]   = "  /kwik feedback  \226\128\148 print the feedback/issue link"
L["HELP_CMD_HELP"]       = "  /kwik help      \226\128\148 show this command list"

-- ============================================================
-- DungeonData — Windrunner Spire (WS)
-- ============================================================
-- Boss 1: Emberdawn
L["WS_B1_TIP"] = "Drop Flaming Updraft puddles at the room's outer edges; play close to the boss during Burning Gale (16s) to minimize movement when dodging Twisters and Fire Breath frontals; healer major CDs on Burning Gale. Tank: defensive for Searing Beak \226\128\148 initial hit + DoT."
L["WS_B1_N1"]  = "Drop Flaming Updraft puddles at the room's outer edges."
L["WS_B1_N2"]  = "During Burning Gale (16s) stay close to the boss \226\128\148 dodge Twisters and Fire Breath frontals."
L["WS_B1_N3"]  = "Defensive for Searing Beak \226\128\148 initial hit + DoT component."
L["WS_B1_N4"]  = "Major CDs on Burning Gale."
-- Boss 2: Derelict Duo
L["WS_B2_TIP"] = "Keep both at equal health \226\128\148 Broken Bond enrages the survivor; interrupt Shadow Bolt; dispel Curse of Darkness to despawn Dark Entity adds; tank defensive for Bone Hack; drop Splattering Spew puddles along walls and overlap them to conserve space; stand behind Kalis so Latch's Heaving Yank pulls her and interrupts Debilitating Shriek."
L["WS_B2_N1"]  = "Keep both at equal health \226\128\148 Broken Bond enrages the survivor."
L["WS_B2_N2"]  = "Drop Splattering Spew puddles along walls and overlap them to conserve space."
L["WS_B2_N3"]  = "Stand behind Kalis so Latch's Heaving Yank interrupts Debilitating Shriek."
L["WS_B2_N4"]  = "Defensive for Bone Hack."
L["WS_B2_N5"]  = "Dispel Curse of Darkness \226\128\148 despawns Dark Entity adds."
L["WS_B2_N6"]  = "Shadow Bolt."
-- Boss 3: Commander Kroluk
L["WS_B3_TIP"] = "Stack near melee. Rallying Bellow gives the boss 70%/40%/10% damage reduction while adds are alive \226\128\148 kill them fast (interrupt Phantasmal Mystic or it enrages). Bladestorm fixates a player \226\128\148 kite the boss. Stay near an ally or Intimidating Shout fears you. Reckless Leap (second) targets furthest player \226\128\148 one player with a defensive runs out."
L["WS_B3_N1"]  = "Stack near melee. Stay near an ally or Intimidating Shout fears you."
L["WS_B3_N2"]  = "Bladestorm fixates a player \226\128\148 kite the boss while killing adds."
L["WS_B3_N3"]  = "Kill adds fast \226\128\148 Rallying Bellow gives boss 70%/40%/10% damage reduction while adds are alive."
L["WS_B3_N4"]  = "Phantasmal Mystic adds \226\128\148 interrupt or they enrage."
-- Boss 4: The Restless Heart
L["WS_B4_TIP"] = "Step on Turbulent Arrows to clear Squall Leap stacks. At 100 energy (Billowing Wind), step on arrows to vault over the expanding shockwave. Overlap Gust Shot ground pools to clear space. Tempest Slash knocks you back \226\128\148 try to land near arrows. Bolt Gale: frontal channel on a random player \226\128\148 stand still if targeted, use a defensive or combat drop to stop it."
L["WS_B4_N1"]  = "Step on Turbulent Arrows to clear Squall Leap stacks; at 100 energy (Billowing Wind) step on arrows to vault over the expanding shockwave."
L["WS_B4_N2"]  = "Overlap Gust Shot ground pools to clear space."
L["WS_B4_N3"]  = "Bolt Gale: frontal channel on a random player \226\128\148 stand still if targeted; use a defensive or combat drop to stop the channel."
L["WS_B4_N4"]  = "Defensive for Tempest Slash \226\128\148 knockback; try to land near arrows to clear your debuff."
-- Trash
L["WS_T1"] = "Interrupt Spirit Bolt; Magic dispel Soul Torment on debuffed players ASAP, then use defensives or focus healing for the remaining player."
L["WS_T2"] = "Defensives for Arcane Salvo; at 50% it drops a Spellguard's Protection zone (99% DR) \226\128\148 tank move the mob and any other mobs out of it immediately."
L["WS_T3"] = "Poison Spray \226\128\148 use a personal defensive."
L["WS_T4"] = "Interrupt Fire Spit; purge Bolstering Flames buff when it applies."
L["WS_T5"] = "Interrupt Fungal Bolt \226\128\148 top priority. Spore Dispersal on death buffs nearby mobs' melee damage \226\128\148 position kills away from other packs."
L["WS_T6"] = "Interrupt every Poison Blades cast \226\128\148 each uninterrupted stack bleeds the tank."
L["WS_T7"] = "CC-immune. Interrupt Shadow Bolt; break the Pulsing Shriek shield to interrupt the channel."
-- Areas
L["WS_A1"] = "Interrupt Spirit Bolt from Restless Stewards \226\128\148 dispel Soul Torment on debuffed players immediately. Use a personal defensive for Creeping Spindleweb's Poison Spray."
L["WS_A3"] = "Spellguard Magus drops a 99% damage-reduction zone at 50% \226\128\148 move the pack out immediately. Use defensives for Arcane Salvo."

-- ============================================================
-- DungeonData — Murder Row (MR)
-- ============================================================
-- Boss 1: Kystia Manaheart
L["MR_B1_TIP"] = "Dispel Illicit Infusion from Nibbles for 15s stun + 100% dmg window \226\128\148 Kystia radiates Chaos AoE during this phase so healer CDs needed; dodge Nibbles' Fel Spray cone while she's hostile; purge Felshield (80% DR) when Kystia casts it; interrupt Mirror Images."
L["MR_B1_N1"]  = "Dispel Illicit Infusion from Nibbles \226\128\148 triggers 15s stun and 100% dmg window; major CDs during this phase (Chaos AoE)."
L["MR_B1_N2"]  = "Dodge Nibbles' Fel Spray cone while she's hostile; purge Felshield when Kystia casts it (80% DR)."
L["MR_B1_N3"]  = "Mirror Images."
-- Boss 2: Zaen Bladesorrow
L["MR_B2_TIP"] = "Stand behind Forbidden Freight during Murder in a Row; move Fire Bomb away from freight (it destroys cover); Heartstop Poison halves tank max health \226\128\148 prioritize tank healing."
L["MR_B2_N1"]  = "Stand behind Forbidden Freight during Murder in a Row; move Fire Bomb away from freight \226\128\148 it destroys cover."
L["MR_B2_N2"]  = "Heartstop Poison halves your max health \226\128\148 call for an external."
L["MR_B2_N3"]  = "Prioritize tank healing after Heartstop Poison."
-- Boss 3: Xathuux the Annihilator
L["MR_B3_TIP"] = "At 100 energy, Demonic Rage pulses heavy group AoE and buffs boss attack speed \226\128\148 use defensives and healer CDs. Dodge Axe Toss impact zones (Fel Light persists on ground); avoid Burning Steps hazards. Tank: Legion Strike applies 80% healing reduction \226\128\148 call for an external."
L["MR_B3_N1"]  = "Dodge Axe Toss impact zones (Fel Light persists); avoid Burning Steps."
L["MR_B3_N2"]  = "Legion Strike applies 80% healing reduction \226\128\148 call for an external immediately."
L["MR_B3_N3"]  = "Major CDs during Demonic Rage (100 energy) \226\128\148 heavy group AoE + boss attack speed buff."
-- Boss 4: Lithiel Cinderfury
L["MR_B4_TIP"] = "Kill Wild Imps before Malefic Wave reaches them (they gain haste if hit); use Gateways to avoid the wave; interrupt Chaos Bolt."
L["MR_B4_N1"]  = "Use Gateways to avoid Malefic Wave."
L["MR_B4_N2"]  = "Kill Wild Imps before the wave reaches them \226\128\148 they gain haste if hit."
L["MR_B4_N3"]  = "Chaos Bolt."

-- Den of Nalorakk (DN)
-- Boss 1: The Hoardmonger
L["DN_B1_TIP"] = "At 90%/60%/30%, boss retreats to empower; destroy Rotten Mushrooms before burst; healer dispel Toxic Spores; dodge frontals."
L["DN_B1_N1"]  = "At 90%/60%/30% boss retreats to empower \226\128\148 dodge frontals."
L["DN_B1_N2"]  = "Destroy Rotten Mushrooms before each burst phase."
L["DN_B1_N3"]  = "Dispel Toxic Spores debuff."
-- Boss 2: Sentinel of Winter
L["DN_B2_TIP"] = "Dodge Raging Squalls and Snowdrift pools; at 100 energy boss channels Eternal Winter (shields self + heavy group damage) \226\128\148 use damage CDs to break the shield fast, healer CDs to survive."
L["DN_B2_N1"]  = "Dodge Raging Squalls and Snowdrift pools."
L["DN_B2_N2"]  = "At 100 energy, burn the Eternal Winter shield fast with damage CDs."
L["DN_B2_N3"]  = "CDs during Eternal Winter \226\128\148 heavy group damage while the shield is active."
-- Boss 3: Nalorakk
L["DN_B3_TIP"] = "Fury of the War God: intercept charging echoes to protect Zul'jarra \226\128\148 echoes that reach her deal massive group damage; spread when Echoing Maul marks you."
L["DN_B3_N1"]  = "Intercept charging echoes (Fury of the War God) \226\128\148 echoes reaching Zul'jarra deal massive group damage."
L["DN_B3_N2"]  = "Spread when Echoing Maul marks you."
-- Areas
L["DN_A2"]     = "Beasts patrol this area \226\128\148 pull carefully."

-- Maisara Caverns (MC)
-- Boss 1: Muro'jin and Nekraxx
L["MC_B1_TIP"] = "Keep equal health \226\128\148 if Nekraxx dies first Muro'jin revives him at 35%; if Muro'jin dies first Nekraxx gains 20% dmg every 4s (stacking). Carrion Swoop target: step into a Freezing Trap to block the charge and stun Nekraxx 5s. Barrage: targeted player stand still. Dispel Infected Pinions disease. Tank: defensive or bleed cleanse for Flanking Spear."
L["MC_B1_N1"]  = "Keep equal health \226\128\148 if Nekraxx dies first Muro'jin revives him at 35%; if Muro'jin dies first Nekraxx gains +20% damage every 4s (continuously stacking)."
L["MC_B1_N2"]  = "Carrion Swoop target: step into a Freezing Trap to block the charge and stun Nekraxx 5s."
L["MC_B1_N3"]  = "Barrage targets a player \226\128\148 that player stands still."
L["MC_B1_N4"]  = "Defensive or bleed cleanse for Flanking Spear."
L["MC_B1_N5"]  = "Dispel Infected Pinions disease."
-- Boss 2: Vordaza
L["MC_B2_TIP"] = "Interrupt Necrotic Convergence \226\128\148 if missed, burst the Deathshroud shield with damage CDs. Kite Unstable Phantoms into each other to detonate them \226\128\148 killing directly applies Lingering Dread to the group; dodge Unmake line. Tank: defensive for Drain Soul channel."
L["MC_B2_N1"]  = "Kite Unstable Phantoms into each other to detonate \226\128\148 killing directly applies Lingering Dread to the group; dodge Unmake line."
L["MC_B2_N2"]  = "Burst the Deathshroud shield during Necrotic Convergence with damage CDs."
L["MC_B2_N3"]  = "Defensive for Drain Soul channel."
L["MC_B2_N4"]  = "Necrotic Convergence \226\128\148 interrupting prevents the Deathshroud shield entirely."
-- Boss 3: Rak'tul, Vessel of Souls
L["MC_B3_TIP"] = "Interrupt all 6 Malignant Souls in the spirit realm \226\128\148 each interrupt grants a stacking Spectral Residue buff (+25% dmg/heal/speed) back in the boss phase. Avoid Restless Masses roots; cleave Crush Souls totems before returning. Boss phase: Spiritbreaker \226\128\148 position against braziers to negate knockback."
L["MC_B3_N1"]  = "All 6 Malignant Souls in the spirit realm \226\128\148 each grants stacking Spectral Residue (+25% dmg/heal/speed)."
L["MC_B3_N2"]  = "Avoid Restless Masses roots; cleave Crush Souls totems before returning to boss phase."
L["MC_B3_N3"]  = "Spiritbreaker combo: channel + puddle + knockback \226\128\148 position against braziers to negate the knockback."
-- Trash
L["MC_T1"]     = "Interrupt Hooked Snare. If it lands, use a freedom effect to clear the root and bleed."
L["MC_T2"]     = "Avoid Rain of Toads pools. Defensives for Necrotic Wave \226\128\148 it leaves a healing absorb on hit players."
L["MC_T3"]     = "Interrupt Hex first. Use spare kicks on Shadow Bolt."
L["MC_T4"]     = "Defensive before Deafening Roar lands \226\128\148 it spell-locks anyone mid-cast. Tank watch Rending Gore bleed stacks."
L["MC_T5"]     = "Sidestep Shredding Talons \226\128\148 step to the side of the eagle as it winds up."
L["MC_T6"]     = "Crunch Armor stacks per bear \226\128\148 avoid pulling multiple bears simultaneously; rotate defensive cooldowns."
L["MC_T7"]     = "CC or stop Reanimation at 0 HP or it revives. Any crowd-control effect works."
L["MC_T8"]     = "Grim Ward shield: don't purge multiple at once \226\128\148 each break hits the whole group. Stagger dispels."
L["MC_T9"]     = "Out-range Ancestral Crush. Spectral Strike autos deal shadow \226\128\148 healer watch sustained damage."
L["MC_T10"]    = "Interrupt Spirit Rend. Dispel the magic DoT if the kick was missed."
L["MC_T11"]    = "Ritual Sacrifice chains an ally to an altar \226\128\148 break the shackles to free them; freedom effects also work."
L["MC_T12"]    = "Attack from behind to bypass Vigilant Defense frontal immunity. Dodge Soulstorm tornadoes."
L["MC_T13"]    = "Interrupt Shadowfrost Blast. Step away from allies before Frost Nova hits \226\128\148 it chains to nearby players."

-- Magisters' Terrace (MT)
-- Boss 1: Arcanotron Custos
L["MT_B1_TIP"] = "Intercept orbs before they reach the boss \226\128\148 boss is 20% more vulnerable during intermission; save offensive CDs for this window. Avoid Arcane Residue zones; tank defensive for Repulsing Slam. Magic dispel Ethereal Shackles from two players."
L["MT_B1_N1"]  = "Intercept orbs before they reach the boss; avoid Arcane Residue zones."
L["MT_B1_N2"]  = "Boss takes 20% increased damage during intermission \226\128\148 save offensive CDs for this window."
L["MT_B1_N3"]  = "Defensive for Repulsing Slam \226\128\148 knockback; position near terrain edges to stop it."
L["MT_B1_N4"]  = "Magic dispel Ethereal Shackles from two random players."
-- Boss 2: Seranel Sunlash
L["MT_B2_TIP"] = "Purge Hastening Ward magic buff from the boss when it appears. At 100 energy, step inside a Suppression Zone before Wave of Silence finishes or you're pacified for 8s. Step into a zone to resolve Runic Mark (Feedback) \226\128\148 but zones purge your buffs. Null Reaction: two players targeted take a combo hit \226\128\148 use a defensive."
L["MT_B2_N1"]  = "At 100 energy, be inside a Suppression Zone before Wave of Silence finishes or you're pacified for 8s."
L["MT_B2_N2"]  = "Step into a zone to resolve Runic Mark (Feedback) \226\128\148 zones purge your buffs."
L["MT_B2_N3"]  = "Purge Hastening Ward from the boss."
L["MT_B2_N4"]  = "Null Reaction: two players targeted take a combo hit \226\128\148 use a defensive."
-- Boss 3: Gemellus
L["MT_B3_TIP"] = "All copies share health. Neural Link: follow the arrow indicator to your correct clone and touch it \226\128\148 Astral Grasp pulls you toward the clones so you must fight the pull-in."
L["MT_B3_N1"]  = "All copies share health; follow Neural Link's arrow indicator to find your correct clone and touch it."
L["MT_B3_N2"]  = "Astral Grasp pulls players toward the clones \226\128\148 fight the pull-in while navigating."
-- Boss 4: Degentrius
L["MT_B4_TIP"] = "One player per quadrant soaks Unstable Void Essence as it bounces \226\128\148 missing applies a 40s DoT to the group. Tank: step back out of melee for Hulking Fragment DoT dispel (drops a puddle). Never stand in Void Torrent beams \226\128\148 they stun."
L["MT_B4_N1"]  = "One player per quadrant soaks Unstable Void Essence as it bounces \226\128\148 missing applies a 40s DoT to the group."
L["MT_B4_N2"]  = "Never stand in Void Torrent beams \226\128\148 they stun."
L["MT_B4_N3"]  = "Step back out of melee for Hulking Fragment DoT dispel \226\128\148 drops a puddle."
-- Trash
L["MT_T1"]     = "Top interrupt priority \226\128\148 Polymorph targets a random player; dispel if it lands."
L["MT_T2"]     = "Dispel Holy Fire; purge Power Word: Shield from allies."
L["MT_T3"]     = "Arcane Volley pulses constant AoE \226\128\148 limit pull size and prepare healing cooldowns."
L["MT_T4"]     = "Interrupt every Pyroblast; use defensives during Ignition; avoid Flamestrike."
L["MT_T5"]     = "Stagger kills \226\128\148 Energy Release fires on death; killing simultaneously overwhelms the group."
L["MT_T6"]     = "CC-immune. Line of sight Consuming Shadows \226\128\148 break line before the channel completes; kill spawned adds from Call of the Void."
L["MT_T7"]     = "Interrupt Terror Wave every cast; dispel or use a defensive for Consuming Void debuff."
L["MT_T8"]     = "CC-immune. Tank defensive for Devouring Strike (large healing absorb). Void Bomb targets a random player \226\128\148 that player and nearby allies use defensives for the absorb."
-- Areas
L["MT_A1"]     = "Interrupt Arcane Magisters' Polymorph first \226\128\148 targets a random player. Limit Animated Codex pulls \226\128\148 Arcane Volley is sustained group AoE. Dispel Holy Fire from Lightward Healers."
L["MT_A4"]     = "Interrupt Terror Wave from Void Infusers every cast. Stagger Brightscale Wyrm kills \226\128\148 simultaneous deaths chain Energy Release through the group. Line of sight Consuming Shadows from Shadowrift Voidcallers."

-- Nexus-Point Xenas (NX)
-- Boss 1: Chief Corewright Kasreth
L["NX_B1_TIP"] = "Don't cross Leyline Arrays (damage + slow). When targeted by Reflux Charge, touch an array intersection to destroy it and open space. At full energy: Corespark Detonation \226\128\148 massive knockback + healing absorb DoT on target; party-wide Sparkburn follows \226\128\148 healer CDs."
L["NX_B1_N1"]  = "Don't cross Leyline Arrays (damage + slow); if targeted by Reflux Charge, touch an intersection to destroy it and open space."
L["NX_B1_N2"]  = "At full energy: Corespark Detonation \226\128\148 massive knockback + healing absorb DoT; don't get knocked into puddles."
L["NX_B1_N3"]  = "CDs after Corespark Detonation \226\128\148 party-wide Sparkburn DoT follows immediately."
-- Boss 2: Corewarden Nysarra
L["NX_B2_TIP"] = "Lightscar Flare: dodge the initial beam, then stand in the light cone for 300% damage amp during the 18s stun. Kill Null Vanguard adds before the stun ends \226\128\148 Dreadflail first (tank face away from group), then interrupt Grand Nullifiers (Nullify), then cleave Haunting Grunts. Eclipsing Step hits two players \226\128\148 spread to avoid cleaving allies, use a defensive. Tank: defensive for Umbral Lash channel."
L["NX_B2_N1"]  = "Lightscar Flare: dodge the initial beam, then stand in the light cone for 300% damage amp during the 18s stun."
L["NX_B2_N2"]  = "Eclipsing Step targets two players \226\128\148 spread to avoid cleaving allies; use a defensive for the hit + DoT."
L["NX_B2_N3"]  = "Kill adds before stun ends \226\128\148 Dreadflail \226\128\146 interrupt Grand Nullifiers (Nullify) \226\128\146 cleave Haunting Grunts."
L["NX_B2_N4"]  = "Defensive for Umbral Lash channel, especially if adds are alive. Face Dreadflail away from group \226\128\148 Void Lash frontal."
L["NX_B2_N5"]  = "30% healing amp is active during the stun \226\128\148 use CDs."
-- Boss 3: Lothraxion
L["NX_B3_TIP"] = "At 100 energy, find and interrupt the real Lothraxion among his images \226\128\148 he's the only one without glowing horns; wrong target = Core Exposure (group damage + 20% increased Holy damage taken for 1 min). Spread 8 yards for Brilliant Dispersion. Tank: defensive for Searing Rend \226\128\148 drop the puddle away from the group."
L["NX_B3_N1"]  = "At 100 energy, find and interrupt the real Lothraxion \226\128\148 no glowing horns; wrong target = Core Exposure (group damage + 20% Holy taken for 1 min)."
L["NX_B3_N2"]  = "Spread 8 yards for Brilliant Dispersion."
L["NX_B3_N3"]  = "Defensive for Searing Rend \226\128\148 drop the puddle away from the group."
-- Trash
L["NX_T1"]     = "Null Sunder stacks per Defender active \226\128\148 control pull size; tank move or pop a cooldown on high-stack groups."
L["NX_T2"]     = "Suppression Field: spread to avoid cleaving the random target, then move as little as possible (movement increases damage taken). Drops a live Mana Battery on death \226\128\148 destroy it before it finishes its 12s cast."
L["NX_T3"]     = "Interrupt Umbra Bolt \226\128\148 high-damage shadow nuke; use a stun or stop if interrupt is on cooldown."
L["NX_T4"]     = "Immune to CC. Defensives and healing CDs for Arcing Mana channel; avoid Erratic Zap and Power Flux circles; watch for nearby Mana Batteries it activates \226\128\148 swap and destroy them before the 12s cast completes."
L["NX_T5"]     = "On death casts Creeping Void \226\128\148 brace for the hit and use Curse dispels to remove the lingering debuff."
L["NX_T6"]     = "Interrupt Nullify every cast; avoid Dusk Frights fear zones; turns into a Smudge on death that awakens a nearby Dreadflail \226\128\148 CC or cleave it fast."
L["NX_T7"]     = "Immune to CC. Entropic Leech channels on a random player and applies a healing absorb \226\128\148 use a combat drop or dispel the absorb to end it. Avoid pulsing projectiles from Dark Beckoning."
L["NX_T8"]     = "Tank point away from group \226\128\148 Void Lash frontal tank buster; dodge Flailstorm AoE if fixated on you. Also spawned as a Corewarden Nysarra add \226\128\148 kill before the 18s stun ends."
-- Areas
L["NX_A1"]     = "Shadowguard Defenders stack Null Sunder \226\128\148 control pull size. Interrupt Umbra Bolt from Nexus Adepts. Cursed Voidcaller casts Creeping Void on death \226\128\148 brace for the hit."

-- The Blinding Vale (BV)
-- Boss 1: Lightblossom Trinity
L["BV_B1_TIP"] = "Block Lightblossom Beams to prevent Light-Gorged stacks on flowers before they detonate; all three bosses share damage. Avoid Fertile Loam puddles (50% slow). Interrupt Lightsower Dash and Thornblade (Lekshi bleeds)."
L["BV_B1_N1"]  = "Block Lightblossom Beams to prevent Light-Gorged stacks on flowers; all three bosses share damage."
L["BV_B1_N2"]  = "Avoid Fertile Loam puddles \226\128\148 50% movement speed slow."
L["BV_B1_N3"]  = "Lightsower Dash \226\128\148 stops seed planting. Thornblade (Lekshi) \226\128\148 stops bleed application."
-- Boss 2: Ikuzz the Light Hunter
L["BV_B2_TIP"] = "Destroy Bloodthorn Roots quickly \226\128\148 rooted players are also hit by Crushing Footfalls; Bloodthirsty Gaze fixates Ikuzz on a player for 10s \226\128\148 maintain distance or be Incised."
L["BV_B2_N1"]  = "Bloodthirsty Gaze fixates Ikuzz on a player for 10s \226\128\148 that player maintains distance."
L["BV_B2_N2"]  = "Destroy Bloodthorn Roots quickly \226\128\148 rooted players are also hit by Crushing Footfalls."
-- Boss 3: Lightwarden Ruia
L["BV_B3_TIP"] = "Heal players to full to clear Grievous Thrash bleeds. Pulverizing Strikes marks several players \226\128\148 spread marked players apart (100% increased damage taken from subsequent strikes). Don't stand in Lightfire Beams (6s silence). At 40%, Ruia enters Haranir form and rapidly cycles all abilities."
L["BV_B3_N1"]  = "Pulverizing Strikes marks several players \226\128\148 spread marked players apart (100% increased damage taken from subsequent strikes)."
L["BV_B3_N2"]  = "Don't stand in Lightfire Beams \226\128\148 6s silence."
L["BV_B3_N3"]  = "Heal players to full to clear Grievous Thrash bleeds; at 40% Haranir form cycles all abilities rapidly \226\128\148 use CDs."
-- Boss 4: Ziekett
L["BV_B4_TIP"] = "Intercept Lightbloom's Essence globules before the boss absorbs them \226\128\148 each absorbed globule grants a Florescent Outburst stack (stacking shield); touching them yourself grants Lightbloom's Might (+dmg/healing). Position boss's Lightbeam sweep over Dormant Lashers to vaporize them; dodge the beam and Lightsap puddles. Tank: defensive on Thornspike \226\128\148 stacking impale + bleed."
L["BV_B4_N1"]  = "Intercept Lightbloom's Essence globules \226\128\148 each one the boss absorbs grants a stacking shield (Florescent Outburst); touching them yourself grants Lightbloom's Might."
L["BV_B4_N2"]  = "Position boss's Lightbeam sweep over Dormant Lashers to vaporize them; dodge the beam and Lightsap puddles."
L["BV_B4_N3"]  = "Use a defensive on Thornspike \226\128\148 it applies a stacking impale + bleed."

-- Voidscar Arena (VA)
-- Boss 1: Taz'Rah
L["VA_B1_TIP"] = "Stay out of Dark Rift gravity pull; kill Ethereal Shades quickly to stop Nether Dash chain lines."
L["VA_B1_N1"]  = "Stay out of Dark Rift gravity pull."
L["VA_B1_N2"]  = "Kill Ethereal Shades quickly \226\128\148 each active shade triggers Nether Dash lines."
-- Boss 2: Atroxus
L["VA_B2_TIP"] = "Avoid Noxious Breath frontal; when Toxic Creepers fixate on a player, spread out to avoid the 8-yard toxic aura. Tank: defensive for Hulking Claw \226\128\148 applies a 10s nature DoT."
L["VA_B2_N1"]  = "Avoid Noxious Breath frontal."
L["VA_B2_N2"]  = "When Toxic Creepers fixate, spread to avoid the 8-yard toxic aura."
L["VA_B2_N3"]  = "Defensive for Hulking Claw \226\128\148 applies a 10s nature DoT."
-- Boss 3: Charonus
L["VA_B3_TIP"] = "Lead Gravitic Orbs into Singularities to consume them before stacks get too high; avoid the gravity well. Cosmic Blast hits the whole group \226\128\148 healer CDs."
L["VA_B3_N1"]  = "Lead Gravitic Orbs into Singularities to consume them before stacks get too high; avoid the Unstable Singularity gravity well."
L["VA_B3_N2"]  = "CDs for Cosmic Blast \226\128\148 group-wide shadow damage + knockback."

-- Algeth'ar Academy (AA)
-- Boss 1: Overgrown Ancient
L["AA_B1_TIP"] = "Interrupt Healing Touch from Ancient Branch adds \226\128\148 top priority. Stand in Abundance circles on add death to auto-cleanse Splinterbark bleeds. Stack during Germinate. At 100 energy, Burst Forth activates Hungry Lashers \226\128\148 tank grabs them; dispel Lasher Toxin stacks. Tank: defensive for Barkbreaker."
L["AA_B1_N1"]  = "Stand in Abundance circles on add death to auto-cleanse Splinterbark bleeds."
L["AA_B1_N2"]  = "Stack during Germinate channel; free allies from roots."
L["AA_B1_N3"]  = "At 100 energy, Burst Forth activates Hungry Lashers \226\128\148 use stuns/slows; dispel Lasher Toxin stacks."
L["AA_B1_N4"]  = "Grab Hungry Lashers; defensive for Barkbreaker (physical damage amp)."
L["AA_B1_N5"]  = "Healing Touch (Ancient Branch adds) \226\128\148 highest priority."
-- Boss 2: Crawth
L["AA_B2_TIP"] = "Ruinous Winds at 75% and 45%: grab balls and throw into goals. First goal triggers patrolling tornadoes \226\128\148 dodge them. Second goal starts Firestorm (12s damage amp) \226\128\148 save offensive CDs and Bloodlust. Spread loosely for Deafening Screech. Tank: defensive for Savage Peck."
L["AA_B2_N1"]  = "Ruinous Winds at 75% and 45%: grab balls and throw into goals. First goal triggers patrolling tornadoes; second goal triggers Firestorm (12s damage amp)."
L["AA_B2_N2"]  = "Spread loosely for Deafening Screech."
L["AA_B2_N3"]  = "Defensive for Savage Peck."
L["AA_B2_N4"]  = "Save offensive CDs and Bloodlust for Firestorm \226\128\148 12s damage amp phase at 45%."
-- Boss 3: Vexamus
L["AA_B3_TIP"] = "Spread to soak Arcane Orbs around the arena edges \226\128\148 each applies Oversurge, so soak only one unless you have an immunity. Mana Bombs targets 3 random players \226\128\148 move to room perimeter to drop puddles. At 100 energy, Arcane Fissure \226\128\148 knockback + 3 circles per player; dodge circles. Tank: point Arcane Expulsion away, use a defensive."
L["AA_B3_N1"]  = "Spread to soak Arcane Orbs around arena edges \226\128\148 each applies Oversurge; soak only one unless you have an immunity."
L["AA_B3_N2"]  = "Mana Bombs targets 3 random players \226\128\148 move to room perimeter to drop puddles."
L["AA_B3_N3"]  = "At 100 energy, Arcane Fissure \226\128\148 knockback + 3 circles per player; dodge the circles."
L["AA_B3_N4"]  = "Point Arcane Expulsion away from group; use a defensive for the impact."
-- Boss 4: Echo of Doragosa
L["AA_B4_TIP"] = "Pull boss toward the entrance \226\128\148 Unleash Energy on pull spawns 2 Arcane Rifts (rifts periodically shoot orbs). At 3 Overwhelming Power stacks (from any ability hit), a new rift spawns beneath you \226\128\148 spread loosely and use defensives to stay under 3 stacks. Power Vacuum pulls everyone to boss \226\128\148 use movement abilities to escape the AoE. Tank: defensive for Astral Blast."
L["AA_B4_N1"]  = "Pull boss toward entrance \226\128\148 Unleash Energy spawns 2 rifts on pull; manage your Overwhelming Power stacks (3 stacks = new rift under you)."
L["AA_B4_N2"]  = "Spread loosely for Energy Bomb and Arcane Missiles \226\128\148 taking any hit stacks Overwhelming Power."
L["AA_B4_N3"]  = "Use defensives to avoid reaching 3 Overwhelming Power stacks \226\128\148 3 stacks spawns a new rift under you."
L["AA_B4_N4"]  = "Power Vacuum pulls everyone to boss \226\128\148 use movement abilities to escape the AoE."
L["AA_B4_N5"]  = "Defensive for Astral Blast."

-- Pit of Saron (PS)
-- Boss 1: Forgemaster Garfrost
L["PS_B1_TIP"] = "Throw Saronite places ore chunks \226\128\148 position yourself near them to LoS Glacial Overload (full-energy channel: massive damage + 75% frost vulnerability). Dispel Cryostomp (magic: slow + 50% more frost damage taken). Tank: defensive for Orebreaker."
L["PS_B1_N1"]  = "Throw Saronite places ore chunks on players \226\128\148 stay near an ore to LoS Glacial Overload at full energy."
L["PS_B1_N2"]  = "Dispel Cryostomp (magic) \226\128\148 slow + 50% increased frost damage taken."
L["PS_B1_N3"]  = "Defensive for Orebreaker."
-- Boss 2: Ick & Krick
L["PS_B2_TIP"] = "Interrupt Death Bolt (Krick) \226\128\148 always. Keep Ick near Shade Shift adds to cleave them down. Drop Plague Explosion near walls or existing puddles to consolidate. Blight Smash: defensive, drop near existing puddles. Phase 2 (50%): kite Ick during 'Get 'em, Ick!' fixation."
L["PS_B2_N1"]  = "Keep Ick near Shade Shift adds to cleave them; drop Plague Explosion near walls or existing puddles to consolidate."
L["PS_B2_N2"]  = "Phase 2 (50%): kite Ick during 'Get 'em, Ick!' fixation."
L["PS_B2_N3"]  = "Defensive for Blight Smash \226\128\148 drop it near existing puddles."
L["PS_B2_N4"]  = "Death Bolt (Krick) \226\128\148 always."
-- Boss 3: Scourgelord Tyrannus
L["PS_B3_TIP"] = "Rime Blast targets a player \226\128\148 stand over a buffed bone pile so the beam freezes it (prevents Army of the Dead). Scourgelord's Brand: defensive, save a movement ability for the knockback, then move to remaining unfrozen piles to aggro Plaguespreaders. Kill Plaguespreader adds fast (interrupt Plague Bolt). Festering Pulse pulses AoE damage every 2s while adds are up."
L["PS_B3_N1"]  = "Rime Blast targets a player \226\128\148 stand over a buffed (green-lit) bone pile so the beam freezes it and prevents Army of the Dead spawns."
L["PS_B3_N2"]  = "After Scourgelord's Brand knockback, move to any remaining unfrozen bone piles to aggro Plaguespreaders."
L["PS_B3_N3"]  = "Kill Plaguespreader adds fast \226\128\148 Festering Pulse deals AoE damage every 2s while they're alive."
L["PS_B3_N4"]  = "Defensive for Scourgelord's Brand \226\128\148 save a movement ability for after the knockback."
L["PS_B3_N5"]  = "Plague Bolt (Plaguespreader adds)."

-- Seat of the Triumvirate (ST)
-- Boss 1: Zuraal the Ascended
L["ST_B1_TIP"] = "Keep boss away from Coalesced Void adds \226\128\148 they despawn on contact with him. Decimate: bait the pool but not too far (puddles persist and stack). At 100 energy, Crashing Void \226\128\148 defensive and avoid being knocked back into pools. CC and kill Oozing Slam adds before Crashing Void hits. Tank: face Null Palm away from group; defensive for Void Slash."
L["ST_B1_N1"]  = "Keep boss away from Coalesced Void adds \226\128\148 they despawn on contact with him."
L["ST_B1_N2"]  = "Decimate: bait the pool but not too far \226\128\148 puddles persist and proximity makes the next one worse."
L["ST_B1_N3"]  = "CC and kill Oozing Slam adds before Crashing Void hits at 100 energy."
L["ST_B1_N4"]  = "Defensive for Void Slash and Crashing Void (100 energy) \226\128\148 avoid being knocked back into pools."
-- Boss 2: Saprish
L["ST_B2_TIP"] = "Boss and pets share health \226\128\148 stay stacked for cleave. Interrupt Dread Screech (Duskwing) every cast. Phase Dash: overlap and clear all Void Bombs. Overload is a damage check \226\128\148 successive casts hit harder. Shadow Pounce applies a strong 5s bleed."
L["ST_B2_N1"]  = "Boss and pets share health \226\128\148 stay stacked to cleave all three simultaneously."
L["ST_B2_N2"]  = "Phase Dash: overlap and clear all Void Bombs. Overload hits harder each successive cast \226\128\148 it's a damage check."
L["ST_B2_N3"]  = "Shadow Pounce applies a strong 5s bleed; Overload damage increases each cast."
L["ST_B2_N4"]  = "Dread Screech (Duskwing) \226\128\148 interrupt every cast."
-- Boss 3: Viceroy Nezhar
L["ST_B3_TIP"] = "Interrupt Mind Blast \226\128\148 top priority. At 100 energy, Collapsing Void: run under the boss to avoid the storm. Kill Umbral Tentacles fast (Mind Flay fixates a player). Mass Void Infusion cannot be dispelled \226\128\148 use a defensive."
L["ST_B3_N1"]  = "At 100 energy (Collapsing Void): run under the boss to avoid the storm; if a player is caught, move to them."
L["ST_B3_N2"]  = "Kill Umbral Tentacles fast \226\128\148 Mind Flay deals continuous damage to a fixated player."
L["ST_B3_N3"]  = "Defensive for Mass Void Infusion \226\128\148 cannot be dispelled."
L["ST_B3_N4"]  = "Mind Blast \226\128\148 top priority."
-- Boss 4: L'ura
L["ST_B4_TIP"] = "Spread Notes of Despair \226\128\148 Grim Chorus zones stack. Discordant Blast: align with Notes of Despair to silence them. Once all are silenced, boss casts Siphon Void \226\128\148 interrupt it for a 25% damage taken window; use Bloodlust here. Defensive for Abyssal Lancer (3 stacks)."
L["ST_B4_N1"]  = "Spread Notes of Despair \226\128\148 Grim Chorus zones stack damage."
L["ST_B4_N2"]  = "Discordant Blast: align with Notes of Despair to silence them \226\128\148 don't burn the adds directly."
L["ST_B4_N3"]  = "Once all Notes are silenced, interrupt Siphon Void \226\128\148 boss takes 25% increased damage; use Bloodlust here."
L["ST_B4_N4"]  = "Defensive for Abyssal Lancer at 3 stacks."

-- Skyreach (SR)
-- Boss 1: Ranjit
L["SR_B1_TIP"] = "Fan of Blades: 360\194\176 attack applying a bleed to all players \226\128\148 healers use cleanses if available. Dodge Wind Chakram and the Chakram Vortex tornadoes it creates. Gale Surge: bait wind orbs away from your path \226\128\148 knockback near edges is lethal."
L["SR_B1_N1"]  = "Fan of Blades: 360\194\176 attack applying a bleed to all players."
L["SR_B1_N2"]  = "Fan of Blades bleeds all players \226\128\148 use cleanses if available."
L["SR_B1_N3"]  = "Dodge Wind Chakram and the Chakram Vortex tornadoes it spawns."
L["SR_B1_N4"]  = "Gale Surge: bait wind orbs away from your path \226\128\148 knockback near platform edges is lethal."
-- Boss 2: Araknath
L["SR_B2_TIP"] = "Tank stays in melee range to prevent Blast Wave. Non-tanks intercept Energize beams from Lesser Constructs using defensives \226\128\148 prevents boss buff; 12s later dodge Heart Exhaustion frontal. Tank: point Fiery Smash away from beam-interceptors. Avoid Defensive Protocol \226\128\148 the 5-yard AoE beneath the boss. Group defensives for Supernova if any Energize beam reached the boss."
L["SR_B2_N1"]  = "Stay in melee range to prevent Blast Wave; point Fiery Smash away from players intercepting beams."
L["SR_B2_N2"]  = "Intercept Energize beams from Lesser Constructs using defensives \226\128\148 prevents boss buff. 12s later dodge Heart Exhaustion frontal."
L["SR_B2_N3"]  = "Move away from Defensive Protocol \226\128\148 the 5-yard AoE beneath the boss."
L["SR_B2_N4"]  = "Group defensives for Supernova if any Energize beam reached the boss (i.e., a beam went unblocked)."
-- Boss 3: Rukhran
L["SR_B3_TIP"] = "Swap to Sunwing adds (Sunbreak/Burning Pursuit) and kill them away from eggs \226\128\148 adds killed on eggs respawn. Searing Quills: all players hide behind the central pillar, then return immediately. Tank: stay in melee range except during Searing Quills; defensive for every Burning Claws."
L["SR_B3_N1"]  = "Swap to Sunwing adds from Sunbreak/Burning Pursuit \226\128\148 kill them away from eggs or they respawn."
L["SR_B3_N2"]  = "Searing Quills: hide behind the central pillar \226\128\148 return to boss immediately after."
L["SR_B3_N3"]  = "Stay in melee range except during Searing Quills. Defensive for every Burning Claws cast."
-- Boss 4: High Sage Viryx
L["SR_B4_TIP"] = "Scorching Ray targets 3 players each turn \226\128\148 healers monitor for repeated targets and use defensives. Cast Down drags a player toward the edge \226\128\148 targeted player runs toward entrance to maximize distance; group swaps to the mob and stuns immediately. Lens Flare: chasing beam \226\128\148 run to platform sides using movement cooldowns. Interrupt Solar Blast to reduce tank damage."
L["SR_B4_N1"]  = "Cast Down drags a player toward the edge \226\128\148 run toward entrance; group stuns the mob immediately."
L["SR_B4_N2"]  = "Lens Flare: chasing beam \226\128\148 run to platform sides using movement cooldowns."
L["SR_B4_N3"]  = "Scorching Ray targets 3 players each turn \226\128\148 monitor for repeated targets and use defensives."
L["SR_B4_N4"]  = "Solar Blast \226\128\148 reduces tank damage."

-- ============================================================
-- MIDNIGHT DELVES
-- ============================================================

-- Collegiate Calamity (CC)
L["CC_B1_TIP"] = "Break Wildroot Weave roots immediately \226\128\148 being rooted when Lightbloom Salvo fires makes the zones unavoidable. Dodge Lightbloom Salvo light zones."
L["CC_B1_N1"]  = "Break Wildroot Weave roots immediately \226\128\148 being rooted when Lightbloom Salvo fires makes the zones unavoidable."
L["CC_B1_N2"]  = "Dodge Lightbloom Salvo light zones."
L["CC_B2_TIP"] = "Step out of melee range before Shadow Laceration hits to avoid the DoT. When Twilight Crash is cast, move away from your position \226\128\148 Garand leaps to where you were standing."
L["CC_B2_N1"]  = "Step out of melee range before Shadow Laceration hits to avoid the bleed DoT."
L["CC_B2_N2"]  = "Move away from your position after Twilight Crash is cast \226\128\148 Garand leaps to your location."
L["CC_B3_TIP"] = "Interrupt Terrifying Power \226\128\148 fears everyone and deals damage. Sidestep Void Eruption zones."
L["CC_B3_N1"]  = "Terrifying Power \226\128\148 fears everyone and deals damage."
L["CC_B3_N2"]  = "Sidestep Void Eruption zones."

-- The Shadow Enclave (SE)
L["SE_B1_TIP"] = "Interrupt Shadow Bolt on cooldown. During Shadowveil Annihilation, Antenorian is immune \226\128\148 kill all three Shadow Orbs before the channel ends to break his shield and increase his damage taken."
L["SE_B1_N1"]  = "Shadow Bolt \226\128\148 priority interrupt, do not let casts land."
L["SE_B1_N2"]  = "During Shadowveil Annihilation, kill all three Shadow Orbs before the channel ends \226\128\148 breaks his immunity and increases his damage taken."

-- Parhelion Plaza (PP)
L["PP_B1_TIP"] = "Kill Sacrificial Voidcallers before Devouring Nova fires \226\128\148 surviving adds empower Slaurna with more damage out and less damage taken. Interrupt Void Bolt on the adds. Dodge Voidscar Raze line attack."
L["PP_B1_N1"]  = "Kill Sacrificial Voidcallers before Devouring Nova fires \226\128\148 surviving adds empower Slaurna (more damage out, less in)."
L["PP_B1_N2"]  = "Void Bolt on Sacrificial Voidcallers."
L["PP_B1_N3"]  = "Dodge Voidscar Raze directional line attack."

-- Twilight Crypts (TC)
L["TC_B1_TIP"] = "Stay in close melee range to prevent Dark Pursuit. Sidestep Shade Cleave cone. Reposition Darza out of Bask in the Twilight void zones \226\128\148 she gains 30% increased damage while standing in them."
L["TC_B1_N1"]  = "Stay in close melee range \226\128\148 proximity prevents Dark Pursuit."
L["TC_B1_N2"]  = "Sidestep Shade Cleave cone."
L["TC_B1_N3"]  = "Reposition Darza out of Bask in the Twilight void zones \226\128\148 she gains 30% increased damage while standing in them."

-- Atal'Aman (AT)
L["AT_B1_TIP"] = "Collect spirits from Flaying Knife \226\128\148 each gives a 10% damage buff. Prioritise spirits inside Raging Spirits zones before they are destroyed. Collect all before Claim Spirits completes \226\128\148 each uncollected spirit gives Jin'Ma a stacking damage buff."
L["AT_B1_N1"]  = "Collect spirits spawned by Flaying Knife \226\128\148 each gives a 10% damage buff. Prioritise spirits inside Raging Spirits zones first."
L["AT_B1_N2"]  = "Collect all spirits before Claim Spirits completes \226\128\148 each uncollected spirit gives Jin'Ma a stacking damage buff."

-- The Darkway (DW)
L["DW_B1_TIP"] = "Interrupt Twilight Seekers. Dodge Abyssal Burst cone frontal. Keep distance from Illusory Deceit illusions before they explode."
L["DW_B1_N1"]  = "Twilight Seekers."
L["DW_B1_N2"]  = "Dodge Abyssal Burst cone frontal."
L["DW_B1_N3"]  = "Keep distance from Illusory Deceit illusions before they explode."

-- The Grudge Pit (GP)
L["GP_B1_TIP"] = "Interrupt Bloom Thorn. Turn away before Blinding Burst resolves to avoid disorientation. Sidestep Solar Charge and avoid the lingering void zones."
L["GP_B1_N1"]  = "Bloom Thorn."
L["GP_B1_N2"]  = "Turn away before Blinding Burst resolves to avoid disorientation."
L["GP_B1_N3"]  = "Sidestep Solar Charge; avoid the lingering void zones it leaves behind."
L["GP_B2_TIP"] = "Avoid void zones during Fungalstorm spin \226\128\148 burn the boss hard during the 10s vulnerability window after. Step back from melee before Fungsplosion. Sidestep Fungal Charge."
L["GP_B2_N1"]  = "Avoid void zones during Fungalstorm spin."
L["GP_B2_N2"]  = "Burn the boss during the 10s vulnerability window after Fungalstorm ends."
L["GP_B2_N3"]  = "Step back from melee before Fungsplosion. Sidestep Fungal Charge."
L["GP_B3_TIP"] = "Rancid Rain: move to arena edges to drop poison clouds away from centre. The Fungi's Fist: dodge the slam and all 5 projectiles \226\128\148 being hit stuns for 3s. Fling Chair: sidestep to avoid knockback and disorientation."
L["GP_B3_N1"]  = "Rancid Rain: move to arena edges to drop poison clouds away from the centre."
L["GP_B3_N2"]  = "The Fungi's Fist: dodge the slam and all 5 projectiles \226\128\148 being hit stuns for 3s."
L["GP_B3_N3"]  = "Fling Chair: sidestep to avoid knockback and disorientation."

-- Gulf of Memory (GM)
L["GM_B1_TIP"] = "Kill Radiant Command adds before they reach you \226\128\148 kite them into Searing Light patches to disorient them. Dodge Searing Light patches. Defensive for Malignant Gleam."
L["GM_B1_N1"]  = "Kill Radiant Command adds before they reach you \226\128\148 kite them into Searing Light patches to disorient them."
L["GM_B1_N2"]  = "Dodge Searing Light patches."
L["GM_B1_N3"]  = "Defensive for Malignant Gleam \226\128\148 holy damage hit."
L["GM_B2_TIP"] = "Interrupt Hopeless Curse every cast \226\128\148 reduces Haste and Movement Speed; dispel if possible. Tear It Down: tentacles slam after a short delay \226\128\148 reposition to avoid. Unanswered Call fixates a player for 8s \226\128\148 kite the boss away immediately."
L["GM_B2_N1"]  = "Tear It Down: tentacles slam after a short delay \226\128\148 keep moving to avoid the impact."
L["GM_B2_N2"]  = "Unanswered Call fixates a player for 8s \226\128\148 use a movement ability to kite the boss away."
L["GM_B2_N3"]  = "Dispel Hopeless Curse if missed \226\128\148 reduces Haste and Movement Speed on all players."
L["GM_B2_N4"]  = "Hopeless Curse \226\128\148 every cast; reduced movement speed combined with fixate is lethal at higher tiers."

-- Sunkiller Sanctum (SK)
L["SK_B1_TIP"] = "Interrupt Calling Bolt to prevent Voidcaller spawns. Dodge Crushing Rift \226\128\148 being hit spawns 4 Voidcallers. Kill all Voidcallers before Gorge \226\128\148 each consumed gives Esuritus a damage buff. Interrupt their Commune with the Void channel."
L["SK_B1_N1"]  = "Calling Bolt \226\128\148 spawns a Voidcaller if it lands."
L["SK_B1_N2"]  = "Dodge Crushing Rift \226\128\148 being hit spawns 4 Voidcallers at once."
L["SK_B1_N3"]  = "Kill all Voidcallers before Gorge \226\128\148 each consumed gives Esuritus a damage buff. Interrupt their Commune with the Void channel."

-- Shadowguard Point (SP)
L["SP_B1_TIP"] = "Interrupt Void Bolt. Kill the Void Emissary before Dark Communion finishes \226\128\148 success gives you the Versatility + CDR buff; failure gives it to Patram. Dodge Discordant Hymn void zones (damage + slow)."
L["SP_B1_N1"]  = "Void Bolt."
L["SP_B1_N2"]  = "Kill the Void Emissary before Dark Communion finishes \226\128\148 success grants the Versatility + CDR buff to you; failure grants it to Patram."
L["SP_B1_N3"]  = "Dodge Discordant Hymn void zones \226\128\148 deal damage and apply a slow."

-- ============================================================
-- MIDNIGHT SEASON 1 RAID
-- ============================================================

-- Wing 1: The Voidspire (VS)
-- Boss 1: Imperator Averzian
L["VS_B1_TIP"] = "Stack to soak Umbral Collapse near Abyssal Voidshapers \226\128\148 soaking near a voidshaper blocks its tile claim. 3 adjacent claimed tiles triggers March of the Endless (wipe). Avoid claimed tiles \226\128\148 boss gains near-immunity (Imperator's Glory) near them. Tanks: Blackening Wounds stacks reduce max HP and draw adds \226\128\148 swap before stacks peak."
L["VS_B1_N1"]  = "Stack to soak Umbral Collapse near Abyssal Voidshapers \226\128\148 blocks their tile claim. 3 adjacent tiles triggers March of the Endless."
L["VS_B1_N2"]  = "Avoid claimed tiles \226\128\148 Imperator's Glory grants near-immunity near claimed territory. Dodge Oblivion's Wrath ground zones."
L["VS_B1_N3"]  = "Kill Abyssal Voidshapers before 100 energy \226\128\148 at max energy they transform into Obsidian Endwalkers (permanent, empowered)."
L["VS_B1_N4"]  = "Swap on Blackening Wounds \226\128\148 stacks reduce max HP and the highest-stack tank draws adds."
L["VS_B1_N5"]  = "Pitch Bulwark from Stalwart/Annihilator adds. Kill Voidmaws before 35% HP \226\128\148 below that threshold they flee to portals for healing."
-- Boss 2: Vorasius
L["VS_B2_TIP"] = "Dodge Void Breath \226\128\148 the sweeping laser is lethal. Kill Blistercreep adds near crystal walls \226\128\148 Blisterburst detonations destroy the walls. Primordial Roar pulls in then knocks back \226\128\148 brace with a personal. Tanks: Tank 1 intentionally takes 2 Shadowclaw Slam stacks (Smashed = 150% phys damage taken), then swap; wait for Smashed to fall off before swapping back."
L["VS_B2_N1"]  = "Dodge Void Breath \226\128\148 sweeping lethal laser; move to the safe side."
L["VS_B2_N2"]  = "Kill Blistercreep fixates near crystal walls \226\128\148 Blisterburst explosions destroy the walls."
L["VS_B2_N3"]  = "Primordial Roar pulls in then knocks back \226\128\148 brace with a personal. Primordial Power stacks up \226\128\148 healing pressure escalates."
L["VS_B2_N4"]  = "Dispel Parasite (magic debuff) promptly."
L["VS_B2_N5"]  = "Tank 1 intentionally takes 2 Shadowclaw Slam stacks (Smashed = 150% phys damage taken), then swap. Tank 2 holds until Smashed falls off."
-- Boss 3: Fallen-King Salhadaar
L["VS_B3_TIP"] = "Intercept Void Convergence orbs \226\128\148 boss absorbing one (Void Infusion) wipes the raid. At 100 energy: Entropic Unraveling \226\128\148 dodge rotating beams; boss takes 25% increased damage for 20s. Interrupt Shadow Fracture from Fractured Images. Tanks: swap on Destabilizing Strikes; aim Shattering Twilight away from the raid."
L["VS_B3_N1"]  = "Intercept Void Convergence orbs \226\128\148 boss absorbing one (Void Infusion) wipes the raid. Space orb kills to avoid overlapping Dark Radiation."
L["VS_B3_N2"]  = "Despotic Command: place timed puddle circles at room edges."
L["VS_B3_N3"]  = "At 100 energy: Entropic Unraveling \226\128\148 dodge rotating beams; boss takes 25% increased damage for 20s. Use cooldowns and Bloodlust here."
L["VS_B3_N4"]  = "Dispel Twisting Obscurity (magic DoT) \226\128\148 it jumps between players."
L["VS_B3_N5"]  = "Swap on Destabilizing Strikes stacks. Aim Shattering Twilight arrows away from raid and boss."
L["VS_B3_N6"]  = "Shadow Fracture cast by Fractured Images adds."
-- Boss 4: Vaelgor & Ezzorak
L["VS_B4_TIP"] = "Keep both within 10% HP and within 15 yards \226\128\148 Twilight Bond gives 100% increased damage if either condition fails. Vaelgor: Dread Breath fears \226\128\148 targeted player steps away from raid, then dispel. Midnight Flames intermission: stack in Radiant Barrier; kill Manifestation of Midnight. Tanks: Nullbeam (Vaelgor) is intentional \226\128\148 stack ~8 stacks then reposition. Swap on Vaelwing and Rakfang (Ezzorak \226\128\148 Impale stuns)."
L["VS_B4_N1"]  = "Keep both within 10% HP and within 15 yards \226\128\148 Twilight Bond: 100% increased damage if either condition fails."
L["VS_B4_N2"]  = "Dread Breath (Vaelgor): targeted player steps to the side, face away from raid \226\128\148 dispel the fear."
L["VS_B4_N3"]  = "Gloom (Ezzorak): up to 5 players soak the moving orb to shrink its Gloomfield."
L["VS_B4_N4"]  = "Midnight Flames intermission: stack in Radiant Barrier; kill Manifestation of Midnight before it empowers the dragons."
L["VS_B4_N5"]  = "Nullbeam (Vaelgor): intentional soak \226\128\148 stack ~8 stacks then reposition. Swap on Vaelwing (Vaelgor) and Rakfang (Ezzorak \226\128\148 Impale stuns)."
L["VS_B4_N6"]  = "Voidbolt from Voidorbs (spawned by Void Howl) \226\128\148 Mass Grip, stun, or interrupt; free casts deal heavy sustained damage."
-- Boss 5: Lightblinded Vanguard
L["VS_B5_TIP"] = "Three paladins: Bellamy (Devotion), Venel (Wrath), Senn (Peace). At 100 energy: boss applies aura buffing the other two \226\128\148 pull boss to edge; consecration drops when aura ends. Execution Sentence: each marked player forms their own separate stack \226\128\148 do NOT merge circles. Senn: burn Sacred Shield then interrupt Blinding Light. Tanks: swap immediately after Judgment lands (follow-up hits 200% harder)."
L["VS_B5_N1"]  = "Aura order: Bellamy \226\134\146 Venel \226\134\146 Senn. Each aura buffs the other two \226\128\148 tank the near-100-energy boss to the arena edge."
L["VS_B5_N2"]  = "Do NOT attack inside Aura of Devotion (75% damage reduction) or Aura of Peace (pacifies attackers)."
L["VS_B5_N3"]  = "Execution Sentence: each marked player needs their own separate stack \226\128\148 do NOT merge the circles."
L["VS_B5_N4"]  = "Senn: burn Sacred Shield fast, then interrupt Blinding Light \226\128\148 missed interrupt = raid-wide disorientation."
L["VS_B5_N5"]  = "Swap immediately after Judgment lands \226\128\148 the follow-up hit deals 200% more damage."
-- Boss 6: Crown of the Cosmos
L["VS_B6_TIP"] = "Stage 1: kill three Undying Sentinels (Morium, Demiar, Vorelus) \226\128\148 keep each within 25 yd of its void portal or they teleport. Devouring Cosmos = 99% healing reduction \226\128\148 move out immediately. Destroy Rift Simulacrum (Stage 2) \226\128\148 while active it reduces Alleria's damage taken. Kill Undying Voidspawn before 100 energy (gains immunity + 500% damage). Tanks: Rift Slash stacks reduce all stats \226\128\148 swap proactively."
L["VS_B6_N1"]  = "Stage 1: kill Undying Sentinels (Morium, Demiar, Vorelus) \226\128\148 each must stay within 25 yd of its void portal or it teleports."
L["VS_B6_N2"]  = "Devouring Cosmos = 99% healing reduction zone \226\128\148 move out immediately. Void Expulsion: move away from crashing celestial body impact."
L["VS_B6_N3"]  = "Kill Undying Voidspawn before 100 energy \226\128\148 at max energy gains CC immunity and 500% damage. Stage 2: destroy Rift Simulacrum \226\128\148 reduces Alleria's damage taken while active."
L["VS_B6_N4"]  = "Rift Slash stacks reduce all stats by 10% per stack (20s) \226\128\148 swap before stacks cripple mitigation. Keep sentinels within 25 yd of their portal."
L["VS_B6_N5"]  = "Dispel Null Corona carefully \226\128\148 remaining absorb jumps to a new player on dispel. Heavy healing during Devouring Cosmos; Aspect of the End reduces healing received."
L["VS_B6_N6"]  = "Void Barrage from Voidspawn adds. Interrupting Tremor from Demiar (sentinel add)."

-- Wing 2: March on Quel'Danas (MQ)
-- Boss 1: Belo'ren, Child of Al'ar
L["MQ_B1_TIP"] = "Stage 1: you receive Light or Void feather \226\128\148 soak only matching-color dives, intercept matching-color quills; wrong color = severe debuff. Interrupt Light/Void Eruption from Embers \226\128\148 only matching-color players can interrupt. Stage 2 (Ashen Shell): burn the egg before the 30s rebirth timer; each rebirth stacks Ashen Benediction (10% healing reduction)."
L["MQ_B1_N1"]  = "You receive Light or Void feather \226\128\148 only soak matching-color dives and intercept matching-color quills. Cross-color exposure = severe debuff."
L["MQ_B1_N2"]  = "Light/Void Eruption from Embers \226\128\148 only matching-color players can interrupt."
L["MQ_B1_N3"]  = "Stage 2: burn the egg (= boss HP) before the 30s rebirth timer. Each Ashen Benediction stack = 10% healing reduction."
L["MQ_B1_N4"]  = "Burning Heart pulses every 3s; doubles during egg phase. Each Ashen Benediction stack reduces healing 10%."
-- Boss 2: Midnight Falls
L["MQ_B2_TIP"] = "Destroy Midnight Crystals before they explode (Cosmic Fracture \226\128\148 massive AoE + DoT). Heal Dusk Crystals to create Dawn Crystals \226\128\148 Torchbearers carry them for a 12-yd protective aura and Dawnlight Barrier (99% DR dome, 6s). Death's Dirge: position rune marks carefully before the laser sweep. Intermission: dodge Extinction Rays reflecting off mirrors."
L["MQ_B2_N1"]  = "Destroy Midnight Crystals before they detonate (Cosmic Fracture \226\128\148 massive AoE + DoT)."
L["MQ_B2_N2"]  = "Heal Dusk Crystals to Dawn Crystals; Torchbearers provide 12-yd protective aura and Dawnlight Barrier (99% DR dome, 6s)."
L["MQ_B2_N3"]  = "Death's Dirge: position rune marks carefully \226\128\148 laser sweep triggers Dark Toll or Dissonant Dirge."
L["MQ_B2_N4"]  = "Intermission: dodge Extinction Rays reflecting off Oblivion's Mirrors."

-- Wing 3: The Dreamrift (DR)
-- Boss 1: Chimaerus the Undreamt God
L["DR_B1_TIP"] = "Alternate groups soaking Alndust Upheaval \226\128\148 soaked players gain Alnsight and must break Alnshroud shields on Manifestations (only Alnsighted players can). Manifestations reaching the boss = massive damage + 100% boss damage buff. Dispel Consuming Miasma (player debuff) while standing in Alndust puddles to remove them. Intermission (To the Skies): dodge Corrupted Devastation breath lines; all Manifestations die before Ravenous Dive."
L["DR_B1_N1"]  = "Two groups alternate Alndust Upheaval soaks. Soaked group gains Alnsight \226\128\148 only they can break Alnshroud shields on Manifestations."
L["DR_B1_N2"]  = "Manifestations must never reach the boss \226\128\148 Insatiable: raid damage + 200% HP heal + 100% damage buff per add eaten."
L["DR_B1_N3"]  = "Dispel Consuming Miasma (player debuff) while standing in ground puddles \226\128\148 dispelling removes the puddle. Avoid stacking dispel splash."
L["DR_B1_N4"]  = "Intermission (To the Skies): dodge Corrupted Devastation breath lines; all Manifestations must die before Ravenous Dive."
L["DR_B1_N5"]  = "Fearsome Cry and Essence Bolt from Colossal Horror adds (Haunting Essence channel)."
