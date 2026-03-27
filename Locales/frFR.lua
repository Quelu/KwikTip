-- KwikTip: French (fr-FR) locale
-- Only overrides that differ from English are required here.
-- Any key not listed falls back to the English string via the Locale.lua metatable.

local ADDON_NAME, KwikTip = ...
if GetLocale() ~= "frFR" then return end
local L = KwikTip.L

-- ============================================================
-- Config window — section headers
-- ============================================================
L["KwikTip Settings"]             = "Paramètres KwikTip"
L["POSITION"]                     = "POSITION"
L["DISPLAY"]                      = "AFFICHAGE"
L["SEND TO CHAT"]                 = "ENVOYER AU CHAT"
L["APPEARANCE"]                   = "APPARENCE"
L["FONT"]                         = "POLICE"
L["TEXT STYLE"]                   = "STYLE DU TEXTE"
L["BORDER"]                       = "BORDURE"

-- ============================================================
-- Config window — buttons
-- ============================================================
L["Move Window"]                  = "Déplacer la fenêtre"
L["Lock Window"]                  = "Verrouiller la fenêtre"
L["Preview"]                      = "Aperçu"

-- ============================================================
-- Config window — checkboxes and labels
-- ============================================================
L["Show Minimap Button"]          = "Afficher le bouton de la minicarte"
L["Hide Info Window"]             = "Masquer la fenêtre d'infos"
L["Keep Open Through Instance"]   = "Garder ouvert dans l'instance"
L["Enable in Delves"]             = "Activer dans les Plongées"
L["CAUTION: Preliminary Release"] = "ATTENTION : Version préliminaire"
L["Enable in Raids"]              = "Activer dans les Raids"

-- ============================================================
-- Config window — chat channel dropdown
-- ============================================================
L["None"]                         = "Aucun"
L["Say"]                          = "Dire"
L["Instance"]                     = "Instance"
L["Party"]                        = "Groupe"
L["Raid"]                         = "Raid"

-- ============================================================
-- Config window — size nudge row labels
-- ============================================================
L["W:"]  = "L:"
L["H:"]  = "H:"

-- ============================================================
-- Config window — sliders
-- ============================================================
L["Opacity"]       = "Opacité"
L["Opacity: %d%%"] = "Opacité : %d%%"
L["0%"]            = "0%"
L["100%"]          = "100%"
L["Size: %d"]      = "Taille : %d"

-- ============================================================
-- Config window — text style
-- ============================================================
L["Text Shadow"]                  = "Ombre du texte"
L["Outline:"]                     = "Contour :"
L["Outline"]                      = "Contour"
L["Thick Outline"]                = "Contour épais"

-- ============================================================
-- Config window — border
-- ============================================================
L["Show Border"]                  = "Afficher la bordure"
L["Border Color:"]                = "Couleur de bordure :"

-- ============================================================
-- Minimap button tooltip
-- ============================================================
L["Left-click: Settings"]         = "Clic gauche : Paramètres"
L["Right-click: Move HUD"]        = "Clic droit : Déplacer le HUD"
L["Drag: Reposition"]             = "Glisser : Repositionner"

-- ============================================================
-- HUD
-- ============================================================
L["Print tip to instance chat"]           = "Envoyer le conseil dans le chat d'instance"
L["Waiting for relevant encounter..."]    = "En attente d'un combat pertinent..."
L["Active Affixes"]                       = "Affixes actifs"

-- ============================================================
-- HUD chat print — role labels
-- ============================================================
L["[Tank] "] = "[Tank] "
L["[Heal] "] = "[Soin] "
L["[DPS] "]  = "[DPS] "
L["[INT] "]  = "[INT] "

-- ============================================================
-- Preview (demo content)
-- ============================================================
L["Demo Dungeon"]    = "Donjon de démonstration"
L["Example Boss"]    = "Boss exemple"
L["DEMO_NOTE_GENERAL"]   = "Évitez les zones rouges ; utilisez une défensive personnelle sur le gros coup."
L["DEMO_NOTE_TANK"]      = "Échange de tank à 3 charges du débuff."
L["DEMO_NOTE_HEALER"]    = "CDs de soin majeurs après chaque incantation de Cataclysme."
L["DEMO_NOTE_DPS"]       = "Tuez les adds avant de revenir sur le boss."
L["DEMO_NOTE_INTERRUPT"] = "Verrou des ombres — interrompez chaque incantation, sans exception."

-- ============================================================
-- Lifecycle message
-- ============================================================
L["loaded. Type /kwik for settings."] = "chargé. Tapez /kwik pour les paramètres."

-- ============================================================
-- Slash commands — feedback
-- ============================================================
L["DEBUG_HEADER"]            = "débogage :"
L["none"]                    = "aucun"
L["debug logging enabled."]  = "journalisation de débogage activée."
L["debug logging disabled."] = "journalisation de débogage désactivée."
L["CLEARLOG_MSG"]            = "mapIDLog, mobLog, encounterLog, keystoneLog, spellLog et debugSnapshots effacés."
L["FEEDBACK_MSG"]            = "Les conseils semblent incorrects ? Ouvrez un ticket sur : https://github.com/postblink/KwikTip/issues"
L["UNKNOWN_CMD"]             = "Commande inconnue. Tapez /kwik help pour la liste des commandes."

-- ============================================================
-- Slash commands — /kwik help lines
-- ============================================================
L["HELP_HEADER"]         = "commandes :"
L["HELP_CMD_OPEN"]       = "  /kwik           \226\128\148 ouvrir les paramètres"
L["HELP_CMD_MOVE"]       = "  /kwik move      \226\128\148 basculer le mode déplacement/verrouillage"
L["HELP_CMD_PREVIEW"]    = "  /kwik preview   \226\128\148 afficher/masquer l'aperçu des notes de rôle"
L["HELP_CMD_DEBUG"]      = "  /kwik debug     \226\128\148 afficher l'état de détection dans le chat"
L["HELP_CMD_DEBUGLOG"]   = "  /kwik debuglog  \226\128\148 activer/désactiver la journalisation des IDs"
L["HELP_CMD_CLEARLOG"]   = "  /kwik clearlog  \226\128\148 effacer tous les journaux de débogage"
L["HELP_CMD_FEEDBACK"]   = "  /kwik feedback  \226\128\148 afficher le lien pour signaler un problème"
L["HELP_CMD_HELP"]       = "  /kwik help      \226\128\148 afficher cette liste de commandes"

-- ============================================================
-- DungeonData — Windrunner Spire (WS)
-- ============================================================
-- Boss 1: Emberdawn
L["WS_B1_TIP"] = "Déposez les flaques de Courant ardent sur les bords de la salle ; pendant Bora ardente (16s) restez près du boss pour minimiser les déplacements en esquivant Tourbillons et frontaux ; CDs de soin majeurs. Tank : défensive sur Bec brûlant \226\128\148 coup initial + DoT."
L["WS_B1_N1"]  = "Déposez les flaques de Courant ardent sur les bords extérieurs de la salle."
L["WS_B1_N2"]  = "Pendant Bora ardente (16s) restez près du boss \226\128\148 esquivez les Tourbillons et les frontaux."
L["WS_B1_N3"]  = "Défensive sur Bec brûlant \226\128\148 coup initial + composante DoT."
L["WS_B1_N4"]  = "CDs majeurs sur Bora ardente."
-- Boss 2: Derelict Duo
L["WS_B2_TIP"] = "Gardez les deux à santé égale \226\128\148 Lien brisé enrage le survivant ; interrompez Trait de l'ombre ; dissipez Malédiction des ténèbres pour faire disparaître les adds ; défensive sur Coup d'os ; déposez les flaques de Vomissure le long des murs en les superposant ; positionnez-vous derrière Kalis pour que la Ruade de Latch l'interrompe."
L["WS_B2_N1"]  = "Gardez les deux à santé égale \226\128\148 Lien brisé enrage le survivant."
L["WS_B2_N2"]  = "Déposez les flaques de Vomissure le long des murs en les superposant pour économiser l'espace."
L["WS_B2_N3"]  = "Positionnez-vous derrière Kalis pour que la Ruade de Latch l'interrompe."
L["WS_B2_N4"]  = "Défensive sur Coup d'os."
L["WS_B2_N5"]  = "Dissipez Malédiction des ténèbres \226\128\148 fait disparaître les adds Entité obscure."
L["WS_B2_N6"]  = "Trait de l'ombre."
-- Boss 3: Commander Kroluk
L["WS_B3_TIP"] = "Groupez-vous près du boss. Rugissement rassembleur réduit les dégâts du boss de 70%/40%/10% tant que les adds sont vivants \226\128\148 tuez-les vite (interrompez Mystique fantômal ou il enrage). Tempête de lames fixe un joueur \226\128\148 kitez le boss. Restez près d'un allié sinon Cri intimidant vous fait fuir. Bonds téméraires (second) cible le joueur le plus éloigné \226\128\148 un joueur avec une défensive s'éloigne."
L["WS_B3_N1"]  = "Groupez-vous près du boss. Restez près d'un allié sinon Cri intimidant vous fait fuir."
L["WS_B3_N2"]  = "Tempête de lames fixe un joueur \226\128\148 kitez le boss tout en tuant les adds."
L["WS_B3_N3"]  = "Tuez les adds rapidement \226\128\148 Rugissement rassembleur réduit les dégâts du boss de 70%/40%/10% tant qu'ils sont vivants."
L["WS_B3_N4"]  = "Adds Mystique fantômal \226\128\148 interrompez ou ils enragent."
-- Boss 4: The Restless Heart
L["WS_B4_TIP"] = "Marchez sur les Flèches turbulentes pour supprimer les charges de Bond rafale. À 100 d'énergie (Vent tourbillonnant), marchez sur les flèches pour sauter par-dessus l'onde de choc. Superposez les flaques de Tir de bourrasque. Tranchée de tempête vous projette en arrière \226\128\148 atterrissez près des flèches. Bora foudroyante : canal frontal sur un joueur aléatoire \226\128\148 restez immobile si ciblé, utilisez une défensive ou un désengagement."
L["WS_B4_N1"]  = "Marchez sur les Flèches turbulentes pour supprimer les charges de Bond rafale ; à 100 d'énergie (Vent tourbillonnant) marchez sur les flèches pour sauter par-dessus l'onde de choc."
L["WS_B4_N2"]  = "Superposez les flaques de Tir de bourrasque pour libérer de l'espace."
L["WS_B4_N3"]  = "Bora foudroyante : canal frontal sur un joueur aléatoire \226\128\148 restez immobile si ciblé ; utilisez une défensive ou un désengagement pour interrompre le canal."
L["WS_B4_N4"]  = "Défensive sur Tranchée de tempête \226\128\148 projection ; atterrissez près des flèches pour supprimer votre débuff."
-- Trash
L["WS_T1"] = "Interrompez Boulon spirituel ; dissipez (magique) Tourment de l'âme sur les joueurs débuffés immédiatement, puis défensives ou soins ciblés."
L["WS_T2"] = "Défensives pour Salve arcanique ; à 50% PV il crée une zone Protection du gardien (99% RD) \226\128\148 sortez le mob et tous les autres mobs de la zone immédiatement."
L["WS_T3"] = "Jet de poison \226\128\148 utilisez une défensive personnelle."
L["WS_T4"] = "Interrompez Crachement de feu ; purgez le buff Flammes revigorantes dès qu'il apparaît."
L["WS_T5"] = "Interrompez Boulon fongique \226\128\148 priorité absolue. Dispersion de spores à la mort augmente les dégâts des mobs voisins \226\128\148 positionnez les kills loin des autres groupes."
L["WS_T6"] = "Interrompez chaque incantation de Lames venimeuses \226\128\148 chaque incantation non interrompue applique un saignement sur le tank."
L["WS_T7"] = "Immunisé aux CCs. Interrompez Trait de l'ombre ; brisez le bouclier de Cri pulsatile pour interrompre le canal."
-- Areas
L["WS_A1"] = "Interrompez Boulon spirituel des Intendants agités \226\128\148 dissipez Tourment de l'âme sur les joueurs débuffés immédiatement. Défensive personnelle pour Jet de poison de l'Araignée rampante."
L["WS_A3"] = "Le Mage gardien crée une zone à 99% de RD à 50% PV \226\128\148 sortez le groupe de la zone immédiatement. Défensives pour Salve arcanique."

-- ============================================================
-- DungeonData — Murder Row (MR)
-- ============================================================
-- Boss 1: Kystia Manaheart
L["MR_B1_TIP"] = "Dissipez Infusion illicite de Griguettes pour un étourdissement de 15s + fenêtre 100% dégâts \226\128\148 Kystia irradie une AoE de Chaos pendant cette phase, CDs de soin nécessaires ; esquivez le cône Jet gangréné de Griguettes lorsqu'elle est hostile ; purgez Bouclier gangréné (80% RD) ; interrompez Images miroir."
L["MR_B1_N1"]  = "Dissipez Infusion illicite de Griguettes \226\128\148 étourdissement de 15s et fenêtre 100% dégâts ; CDs majeurs pendant cette phase (AoE de Chaos)."
L["MR_B1_N2"]  = "Esquivez le cône Jet gangréné de Griguettes lorsqu'elle est hostile ; purgez Bouclier gangréné dès que Kystia le lance (80% RD)."
L["MR_B1_N3"]  = "Images miroir."
-- Boss 2: Zaen Bladesorrow
L["MR_B2_TIP"] = "Restez derrière les Cargaisons interdites pendant Meurtre en série ; éloignez Bombe incendiaire des cargaisons (elles détruisent le couvert) ; Poison du cœur brisé divise par deux la santé max du tank \226\128\148 soignez le tank en priorité."
L["MR_B2_N1"]  = "Restez derrière les Cargaisons interdites pendant Meurtre en série ; éloignez Bombe incendiaire des cargaisons \226\128\148 elles détruisent le couvert."
L["MR_B2_N2"]  = "Poison du cœur brisé divise votre santé max par deux \226\128\148 demandez une défensive externe."
L["MR_B2_N3"]  = "Soignez le tank en priorité après Poison du cœur brisé."
-- Boss 3: Xathuux the Annihilator
L["MR_B3_TIP"] = "À 100 d'énergie, Rage démoniaque pulse une lourde AoE de groupe et augmente la vitesse d'attaque du boss \226\128\148 défensives et CDs de soin. Esquivez les zones de Jet de hache (Lumière gangrenée persiste) ; évitez Pas brûlants. Tank : Frappe de Légion applique 80% de réduction de soin \226\128\148 demandez une externe."
L["MR_B3_N1"]  = "Esquivez les zones d'impact de Jet de hache (Lumière gangrenée persiste) ; évitez Pas brûlants."
L["MR_B3_N2"]  = "Frappe de Légion applique 80% de réduction de soin \226\128\148 demandez une défensive externe immédiatement."
L["MR_B3_N3"]  = "CDs majeurs pendant Rage démoniaque (100 d'énergie) \226\128\148 lourde AoE de groupe + augmentation de la vitesse d'attaque."
-- Boss 4: Lithiel Cinderfury
L["MR_B4_TIP"] = "Tuez les Imps sauvages avant que la Vague maléfique ne les touche (ils gagnent de la hâte s'ils sont touchés) ; utilisez les Portails pour éviter la vague ; interrompez Boulon de chaos."
L["MR_B4_N1"]  = "Utilisez les Portails pour éviter la Vague maléfique."
L["MR_B4_N2"]  = "Tuez les Imps sauvages avant que la vague ne les touche \226\128\148 ils gagnent de la hâte s'ils sont touchés."
L["MR_B4_N3"]  = "Boulon de chaos."

-- Den of Nalorakk (DN)
-- Boss 1: The Hoardmonger
L["DN_B1_TIP"] = "À 90%/60%/30%, le boss se replie pour se renforcer ; détruisez les Champignons pourris avant la phase d'explosion ; le soigneur dispelle Spores toxiques ; esquivez les frontales."
L["DN_B1_N1"]  = "À 90%/60%/30%, le boss se replie pour se renforcer \226\128\148 esquivez les frontales."
L["DN_B1_N2"]  = "Détruisez les Champignons pourris avant chaque phase d'explosion."
L["DN_B1_N3"]  = "Dispellez le débuff Spores toxiques."
-- Boss 2: Sentinel of Winter
L["DN_B2_TIP"] = "Esquivez Bourrasques déchaînées et les flaques de Congère ; à 100 d'énergie le boss lance Hiver éternel (se protège + dégâts de groupe importants) \226\128\148 utilisez les CD offensifs pour briser le bouclier rapidement, CD de soin pour survivre."
L["DN_B2_N1"]  = "Esquivez Bourrasques déchaînées et les flaques de Congère."
L["DN_B2_N2"]  = "À 100 d'énergie, brisez le bouclier Hiver éternel rapidement avec les CD offensifs."
L["DN_B2_N3"]  = "CD de soin pendant Hiver éternel \226\128\148 dégâts de groupe importants tant que le bouclier est actif."
-- Boss 3: Nalorakk
L["DN_B3_TIP"] = "Fureur du Dieu de la guerre : interceptez les échos qui chargent pour protéger Zul'jarra \226\128\148 ceux qui l'atteignent infligent d'énormes dégâts de groupe ; dispersez-vous quand Frappe de l'écho vous marque."
L["DN_B3_N1"]  = "Interceptez les échos qui chargent (Fureur du Dieu de la guerre) \226\128\148 ceux qui atteignent Zul'jarra infligent d'énormes dégâts de groupe."
L["DN_B3_N2"]  = "Dispersez-vous quand Frappe de l'écho vous marque."
-- Areas
L["DN_A2"]     = "Des bêtes patrouillent cette zone \226\128\148 tirez prudemment."

-- Maisara Caverns (MC)
-- Boss 1: Muro'jin and Nekraxx
L["MC_B1_TIP"] = "Gardez une égale santé \226\128\148 si Nekraxx meurt en premier, Muro'jin le ressuscite à 35% ; si Muro'jin meurt en premier, Nekraxx gagne 20% de dégâts toutes les 4s (cumulable). Cible de Charge de charognes : entrez dans un Piège gelant pour bloquer la charge et étourdir Nekraxx 5s. Barrage : la cible reste immobile. Dispellez la maladie Piquants infectés. Tank : défensif ou soin du saignement pour Lance latérale."
L["MC_B1_N1"]  = "Gardez une égale santé \226\128\148 si Nekraxx meurt en premier, Muro'jin le ressuscite à 35% ; si Muro'jin meurt en premier, Nekraxx gagne +20% de dégâts toutes les 4s (cumul continu)."
L["MC_B1_N2"]  = "Cible de Charge de charognes : entrez dans un Piège gelant pour bloquer la charge et étourdir Nekraxx 5s."
L["MC_B1_N3"]  = "Barrage cible un joueur \226\128\148 ce joueur reste immobile."
L["MC_B1_N4"]  = "Défensif ou soin du saignement pour Lance latérale."
L["MC_B1_N5"]  = "Dispellez la maladie Piquants infectés."
-- Boss 2: Vordaza
L["MC_B2_TIP"] = "Interrompez Convergence nécrotique \226\128\148 si raté, brisez le bouclier Voile de mort avec les CD offensifs. Kitez les Spectres instables les uns vers les autres pour les faire exploser \226\128\148 les tuer directement inflige Affres persistantes au groupe ; esquivez le trait Annihilation. Tank : défensif pour le canal Drain d'âme."
L["MC_B2_N1"]  = "Kitez les Spectres instables les uns vers les autres \226\128\148 les tuer directement inflige Affres persistantes au groupe ; esquivez le trait Annihilation."
L["MC_B2_N2"]  = "Brisez le bouclier Voile de mort pendant Convergence nécrotique avec les CD offensifs."
L["MC_B2_N3"]  = "Défensif pour le canal Drain d'âme."
L["MC_B2_N4"]  = "Convergence nécrotique \226\128\148 l'interrompre empêche entièrement l'apparition du bouclier Voile de mort."
-- Boss 3: Rak'tul, Vessel of Souls
L["MC_B3_TIP"] = "Interrompez les 6 Âmes malignes dans le royaume des esprits \226\128\148 chaque interruption octroie un buff cumulable Résidu spectral (+25% dégâts/soins/vitesse) en phase boss. Évitez les enracinements des Masses tourmentées ; éliminez les totems Broyer les âmes avant de revenir. Phase boss : Briseur d'esprits \226\128\148 positionnez-vous contre les braseros pour annuler le recul."
L["MC_B3_N1"]  = "6 Âmes malignes dans le royaume des esprits \226\128\148 chaque interruption octroie un Résidu spectral cumulable (+25% dégâts/soins/vitesse)."
L["MC_B3_N2"]  = "Évitez les enracinements des Masses tourmentées ; éliminez les totems Broyer les âmes avant de revenir en phase boss."
L["MC_B3_N3"]  = "Briseur d'esprits : canal + flaque + recul \226\128\148 positionnez-vous contre les braseros pour annuler le recul."
-- Trash
L["MC_T1"]     = "Interrompez Lacet crochu. S'il touche, utilisez un effet de liberté pour supprimer l'enracinement et le saignement."
L["MC_T2"]     = "Évitez les flaques de Pluie de crapauds. Défensifs pour Vague nécrotique \226\128\148 elle laisse une absorption de soin sur les joueurs touchés."
L["MC_T3"]     = "Interrompez Métamorphose en priorité. Utilisez les interruptions restantes sur Éclair des ombres."
L["MC_T4"]     = "Défensif avant Rugissement assourdissant \226\128\148 il bloque les sorts de quiconque est en train d'incanter. Le tank surveille les accumulations de saignement Lacérations déchirantes."
L["MC_T5"]     = "Esquivez Serres déchiqueuses de côté \226\128\148 décalez-vous sur le flanc de l'aigle quand il se prépare à attaquer."
L["MC_T6"]     = "Accumulations de Broyage d'armure par ours \226\128\148 évitez d'aggro plusieurs ours simultanément ; faites tourner les défensifs."
L["MC_T7"]     = "Contrôlez ou arrêtez la Réanimation à 0 PV sinon il se ressuscite. Tout effet de contrôle fonctionne."
L["MC_T8"]     = "Bouclier Garde sinistre : ne dispellez pas plusieurs à la fois \226\128\148 chaque rupture frappe tout le groupe. Échelonnez les dispels."
L["MC_T9"]     = "Restez hors de portée de Fracassement ancestral. Les frappes de Coup spectral infligent des dégâts d'ombre \226\128\148 le soigneur surveille les dégâts continus."
L["MC_T10"]    = "Interrompez Déchirement d'esprit. Dispellez le DoT magique si l'interruption a échoué."
L["MC_T11"]    = "Sacrifice rituel enchaîne un allié à un autel \226\128\148 brisez les menottes pour le libérer ; les effets de liberté fonctionnent aussi."
L["MC_T12"]    = "Attaquez par derrière pour contourner l'immunité frontale de Défense vigilante. Esquivez les tornades de Tempête d'âme."
L["MC_T13"]    = "Interrompez Explosion de givre crépusculaire. Éloignez-vous des alliés avant Nova de givre \226\128\148 elle se propage aux joueurs proches."

-- Magisters' Terrace (MT)
-- Boss 1: Arcanotron Custos
L["MT_B1_TIP"] = "Interceptez les orbes avant qu'ils n'atteignent le boss \226\128\148 le boss subit 20% de dégâts supplémentaires pendant l'intermission ; sauvegardez vos CD offensifs pour cette fenêtre. Évitez les zones de Résidu arcanique ; le tank utilise un défensif pour Frappe repoussante. Dispellez (magie) les Entraves éthérées de deux joueurs."
L["MT_B1_N1"]  = "Interceptez les orbes avant qu'ils n'atteignent le boss ; évitez les zones de Résidu arcanique."
L["MT_B1_N2"]  = "Le boss subit 20% de dégâts supplémentaires pendant l'intermission \226\128\148 sauvegardez vos CD offensifs pour cette fenêtre."
L["MT_B1_N3"]  = "Défensif pour Frappe repoussante \226\128\148 recul ; positionnez-vous près d'un bord pour l'annuler."
L["MT_B1_N4"]  = "Dispellez (magie) les Entraves éthérées de deux joueurs aléatoires."
-- Boss 2: Seranel Sunlash
L["MT_B2_TIP"] = "Purifiez le buff magique Garde pressante du boss dès qu'il apparaît. À 100 d'énergie, entrez dans une Zone de suppression avant que Vague du silence ne se termine sinon vous êtes pacifié 8s. Entrez dans une zone pour résoudre Marque runique (Rétroaction) \226\128\148 mais les zones purgent vos buffs. Réaction nulle : deux joueurs ciblés reçoivent un coup combiné \226\128\148 utilisez un défensif."
L["MT_B2_N1"]  = "À 100 d'énergie, soyez dans une Zone de suppression avant que Vague du silence ne se termine sinon vous êtes pacifié 8s."
L["MT_B2_N2"]  = "Entrez dans une zone pour résoudre Marque runique (Rétroaction) \226\128\148 les zones purgent vos buffs."
L["MT_B2_N3"]  = "Purifiez Garde pressante du boss."
L["MT_B2_N4"]  = "Réaction nulle : deux joueurs ciblés reçoivent un coup combiné \226\128\148 utilisez un défensif."
-- Boss 3: Gemellus
L["MT_B3_TIP"] = "Toutes les copies partagent les PV. Lien neural : suivez l'indicateur flèche vers votre bon clone et touchez-le \226\128\148 Emprise astrale vous attire vers les clones, il faut résister à l'attraction."
L["MT_B3_N1"]  = "Toutes les copies partagent les PV ; suivez l'indicateur flèche de Lien neural pour trouver votre bon clone et le toucher."
L["MT_B3_N2"]  = "Emprise astrale attire les joueurs vers les clones \226\128\148 résistez à l'attraction tout en naviguant."
-- Boss 4: Degentrius
L["MT_B4_TIP"] = "Un joueur par quadrant absorbe l'Essence du néant instable lorsqu'elle rebondit \226\128\148 rater l'absorption inflige un DoT de 40s au groupe. Tank : reculez hors de la mêlée pour le dispel du DoT de Fragment imposant (dépose une flaque). Ne restez jamais dans les faisceaux de Torrent du néant \226\128\148 ils étourdissent."
L["MT_B4_N1"]  = "Un joueur par quadrant absorbe l'Essence du néant instable lorsqu'elle rebondit \226\128\148 rater l'absorption inflige un DoT de 40s au groupe."
L["MT_B4_N2"]  = "Ne restez jamais dans les faisceaux de Torrent du néant \226\128\148 ils étourdissent."
L["MT_B4_N3"]  = "Reculez hors de la mêlée pour le dispel du DoT de Fragment imposant \226\128\148 dépose une flaque."
-- Trash
L["MT_T1"]     = "Priorité absolue d'interruption \226\128\148 Métamorphose cible un joueur aléatoire ; dispellez si elle touche."
L["MT_T2"]     = "Dispellez Feu sacré ; purifiez Mot de pouvoir : Bouclier des alliés."
L["MT_T3"]     = "Volée arcanique inflige des dégâts de groupe continus \226\128\148 limitez la taille des pulls et préparez les CD de soin."
L["MT_T4"]     = "Interrompez chaque Pyro-explosion ; utilisez des défensifs pendant Ignition ; évitez Frappe de flammes."
L["MT_T5"]     = "Échelonnez les kills \226\128\148 Libération d'énergie se déclenche à la mort ; des morts simultanées submergent le groupe."
L["MT_T6"]     = "Immunisé aux CC. Brisez la ligne de vue des Ombres consommatrices \226\128\148 interrompez le canal avant qu'il ne se termine ; éliminez les adds invoqués par Appel du néant."
L["MT_T7"]     = "Interrompez Vague de terreur à chaque incantation ; dispellez ou utilisez un défensif pour le débuff Néant consumant."
L["MT_T8"]     = "Immunisé aux CC. Défensif du tank pour Frappe dévorante (grande absorption de soin). Bombe du néant cible un joueur aléatoire \226\128\148 ce joueur et les alliés proches utilisent des défensifs pour l'absorption."
-- Areas
L["MT_A1"]     = "Interrompez Métamorphose des Magistres arcaniques en priorité \226\128\148 cible un joueur aléatoire. Limitez les pulls des Codex animés \226\128\148 Volée arcanique inflige des dégâts de groupe continus. Dispellez Feu sacré des Guérisseurs sacro-saints."
L["MT_A4"]     = "Interrompez Vague de terreur des Infuseurs du néant à chaque incantation. Échelonnez les kills des Wyrms aux écailles brillantes \226\128\148 les morts simultanées enchainent Libération d'énergie sur tout le groupe. Brisez la ligne de vue des Ombres consommatrices des Appeleurs du vide des ombres."

-- Nexus-Point Xenas (NX)
-- Boss 1: Chief Corewright Kasreth
L["NX_B1_TIP"] = "Ne traversez pas les Réseaux de lignes telluriques (dégâts + ralentissement). En cas de Charge de reflux, touchez une intersection pour la détruire et libérer de l'espace. À pleine énergie : Détonation d'étincelle centrale \226\128\148 recul massif + DoT absorbant les soins ; la Brûlure d'étincelle de groupe suit \226\128\148 CD de soin."
L["NX_B1_N1"]  = "Ne traversez pas les Réseaux de lignes telluriques (dégâts + ralentissement) ; en cas de Charge de reflux, touchez une intersection pour la détruire."
L["NX_B1_N2"]  = "À pleine énergie : Détonation d'étincelle centrale \226\128\148 recul massif + DoT absorbant les soins ; ne soyez pas projeté dans une flaque."
L["NX_B1_N3"]  = "CD de soin après Détonation d'étincelle centrale \226\128\148 le DoT Brûlure d'étincelle de groupe suit immédiatement."
-- Boss 2: Corewarden Nysarra
L["NX_B2_TIP"] = "Fusilée de la balafre lumineuse : esquivez le faisceau initial, puis restez dans le cône de lumière pour amplifier vos dégâts de 300% pendant les 18s d'étourdissement. Éliminez les adds de l'Avant-garde nulle avant la fin de l'étourdissement \226\128\148 Fléau effroyable d'abord (tank dos au groupe), puis interrompez les Grands annulateurs (Annuler), puis éliminez les Grognements hantants en AoE. Pas d'éclipse touche deux joueurs \226\128\148 écartez-vous pour éviter la cleave, utilisez un défensif. Tank : défensif pour le canal Flagellation ombrageuse."
L["NX_B2_N1"]  = "Fusilée de la balafre lumineuse : esquivez le faisceau initial, puis restez dans le cône de lumière pour amplifier vos dégâts de 300% pendant les 18s d'étourdissement."
L["NX_B2_N2"]  = "Pas d'éclipse cible deux joueurs \226\128\148 écartez-vous pour éviter la cleave ; utilisez un défensif pour le coup + DoT."
L["NX_B2_N3"]  = "Éliminez les adds avant la fin de l'étourdissement \226\128\148 Fléau effroyable \226\128\146 interrompez les Grands annulateurs (Annuler) \226\128\146 cleave Grognements hantants."
L["NX_B2_N4"]  = "Défensif pour le canal Flagellation ombrageuse, surtout si des adds sont vivants. Dos des Fléaux effroyables face au groupe \226\128\148 frontale Cinglage du néant."
L["NX_B2_N5"]  = "L'amplification de soin de 30% est active pendant l'étourdissement \226\128\148 utilisez vos CD."
-- Boss 3: Lothraxion
L["NX_B3_TIP"] = "À 100 d'énergie, trouvez et interrompez le vrai Lothraxion parmi ses images \226\128\148 il est le seul sans cornes lumineuses ; mauvaise cible = Exposition du noyau (dégâts de groupe + 20% de dégâts du Sacré reçus pendant 1 min). Écartez-vous de 8 m pour Dispersion brillante. Tank : défensif pour Déchirement brûlant \226\128\148 déposez la flaque loin du groupe."
L["NX_B3_N1"]  = "À 100 d'énergie, trouvez et interrompez le vrai Lothraxion \226\128\148 sans cornes lumineuses ; mauvaise cible = Exposition du noyau (dégâts de groupe + 20% de dégâts du Sacré reçus pendant 1 min)."
L["NX_B3_N2"]  = "Écartez-vous de 8 m pour Dispersion brillante."
L["NX_B3_N3"]  = "Défensif pour Déchirement brûlant \226\128\148 déposez la flaque loin du groupe."
-- Trash
L["NX_T1"]     = "Brisement nul s'accumule par Défenseur actif \226\128\148 contrôlez la taille des pulls ; le tank se déplace ou utilise un CD sur les groupes à hautes accumulations."
L["NX_T2"]     = "Champ de suppression : écartez-vous pour éviter la cleave sur la cible aléatoire, puis bougez le moins possible (tout mouvement augmente les dégâts reçus). Dépose une Batterie de mana active à la mort \226\128\148 détruisez-la avant la fin de son incantation de 12s."
L["NX_T3"]     = "Interrompez Boulon d'ombre \226\128\148 nuke d'ombre à hauts dégâts ; utilisez une étourdissement ou un arrêt si l'interruption est en recharge."
L["NX_T4"]     = "Immunisé aux CC. Défensifs et CD de soin pour le canal Mana arquant ; évitez les cercles Décharge erratique et Flux de puissance ; surveillez les Batteries de mana proches qu'il active \226\128\148 échangez et détruisez-les avant la fin de l'incantation de 12s."
L["NX_T5"]     = "Lance Néant rampant à sa mort \226\128\148 préparez-vous au coup et utilisez des dispels de Malédiction pour supprimer le débuff persistant."
L["NX_T6"]     = "Interrompez Annuler à chaque incantation ; évitez les zones de peur Frayeurs crépusculaires ; se transforme en Tache à la mort et réveille un Fléau effroyable proche \226\128\148 CC ou cleave-le rapidement."
L["NX_T7"]     = "Immunisé aux CC. Sangsue entropique canalise sur un joueur aléatoire et inflige une absorption de soin \226\128\148 utilisez un abandon de combat ou dispellez l'absorption pour y mettre fin. Évitez les projectiles pulsants d'Incitation obscure."
L["NX_T8"]     = "Tank dos au groupe \226\128\148 Cinglage du néant est une frontale tank buster ; esquivez la AoE Tempête de fléaux si vous êtes ciblé. Apparait aussi comme add de Gardienne centrale Nysarra \226\128\148 éliminez-le avant la fin des 18s d'étourdissement."
-- Areas
L["NX_A1"]     = "Les Défenseurs de la Garde-ombre accumulent Brisement nul \226\128\148 contrôlez la taille des pulls. Interrompez Boulon d'ombre des Adeptes du nexus. L'Appeleur du néant maudit lance Néant rampant à sa mort \226\128\148 préparez-vous au coup."

-- The Blinding Vale (BV)
-- Boss 1: Lightblossom Trinity
L["BV_B1_TIP"] = "Bloquez les Faisceaux de la floraison lumineuse pour empêcher les accumulations de Lumière absorbée sur les fleurs avant leur explosion ; les trois boss partagent leurs PV. Évitez les flaques de Limon fertile (ralentissement 50%). Interrompez Ruée des graines de lumière et Lame d'épine (Lekshi : applique des saignements)."
L["BV_B1_N1"]  = "Bloquez les Faisceaux de la floraison lumineuse pour empêcher les accumulations de Lumière absorbée sur les fleurs ; les trois boss partagent leurs PV."
L["BV_B1_N2"]  = "Évitez les flaques de Limon fertile \226\128\148 ralentissement de vitesse de déplacement de 50%."
L["BV_B1_N3"]  = "Ruée des graines de lumière \226\128\148 empêche la plantation de graines. Lame d'épine (Lekshi) \226\128\148 empêche l'application des saignements."
-- Boss 2: Ikuzz the Light Hunter
L["BV_B2_TIP"] = "Détruisez rapidement les Racines d'épines de sang \226\128\148 les joueurs enracinés sont aussi touchés par Piétinements concassants ; Regard assoié de sang fixe Ikuzz sur un joueur pendant 10s \226\128\148 ce joueur maintient ses distances ou subit Incision."
L["BV_B2_N1"]  = "Regard assoié de sang fixe Ikuzz sur un joueur pendant 10s \226\128\148 ce joueur maintient ses distances."
L["BV_B2_N2"]  = "Détruisez rapidement les Racines d'épines de sang \226\128\148 les joueurs enracinés sont aussi touchés par Piétinements concassants."
-- Boss 3: Lightwarden Ruia
L["BV_B3_TIP"] = "Soignez les joueurs au maximum pour supprimer les saignements de Lacération cruelle. Frappes pulvérisantes marque plusieurs joueurs \226\128\148 dispersez les joueurs marqués (100% de dégâts supplémentaires des frappes suivantes). Ne restez pas dans les Faisceaux d'ignifeu (silence 6s). À 40%, Ruia entre en forme Haranir et enchaîne rapidement toutes ses capacités."
L["BV_B3_N1"]  = "Frappes pulvérisantes marque plusieurs joueurs \226\128\148 dispersez les joueurs marqués (100% de dégâts supplémentaires des frappes suivantes)."
L["BV_B3_N2"]  = "Ne restez pas dans les Faisceaux d'ignifeu \226\128\148 silence 6s."
L["BV_B3_N3"]  = "Soignez les joueurs au maximum pour supprimer les saignements de Lacération cruelle ; à 40%, la forme Haranir enchaîne rapidement toutes les capacités \226\128\148 utilisez vos CD."
-- Boss 4: Ziekett
L["BV_B4_TIP"] = "Interceptez les globules d'Essence de la floraison lumineuse avant que le boss les absorbe \226\128\148 chaque globule absorbé octroie une accumulation de bouclier Explosion florescent ; les toucher vous-même octroie Puissance de la floraison (+dégâts/soins). Positionnez le balayage de Rayon lumineux du boss sur les Vrilles dormantes pour les vaporiser ; esquivez le rayon et les flaques de Sève lumineuse. Tank : défensif sur Pointe d'épine \226\128\148 enchaîne impalement + saignement."
L["BV_B4_N1"]  = "Interceptez les globules d'Essence de la floraison lumineuse \226\128\148 chaque globule absorbé octroie un bouclier cumulable (Explosion florescent) ; les toucher vous-même octroie Puissance de la floraison."
L["BV_B4_N2"]  = "Positionnez le balayage de Rayon lumineux du boss sur les Vrilles dormantes pour les vaporiser ; esquivez le rayon et les flaques de Sève lumineuse."
L["BV_B4_N3"]  = "Utilisez un défensif sur Pointe d'épine \226\128\148 elle applique un enchaînement impalement + saignement."

-- Voidscar Arena (VA)
-- Boss 1: Taz'Rah
L["VA_B1_TIP"] = "Restez hors de l'attraction gravitationnelle de Faille sombre ; tuez rapidement les Ombres éthérées pour stopper les chaînes de Ruée de l'au-delà."
L["VA_B1_N1"]  = "Restez hors de l'attraction gravitationnelle de Faille sombre."
L["VA_B1_N2"]  = "Tuez rapidement les Ombres éthérées \226\128\148 chaque ombre active déclenche des chaînes de Ruée de l'au-delà."
-- Boss 2: Atroxus
L["VA_B2_TIP"] = "Évitez la frontale Souffle nauséabond ; quand les Rampantes toxiques se fixent sur un joueur, dispersez-vous pour éviter l'aura toxique de 8 m. Tank : défensif pour Griffe imposante \226\128\148 inflige un DoT de nature 10s."
L["VA_B2_N1"]  = "Évitez la frontale Souffle nauséabond."
L["VA_B2_N2"]  = "Quand les Rampantes toxiques se fixent, dispersez-vous pour éviter l'aura toxique de 8 m."
L["VA_B2_N3"]  = "Défensif pour Griffe imposante \226\128\148 inflige un DoT de nature 10s."
-- Boss 3: Charonus
L["VA_B3_TIP"] = "Guidez les Orbes gravitiques dans les Singularités pour les consommer avant que les accumulations ne deviennent trop élevées ; évitez le puits de gravité. Explosion cosmique frappe tout le groupe \226\128\148 CD de soin."
L["VA_B3_N1"]  = "Guidez les Orbes gravitiques dans les Singularités pour les consommer avant trop d'accumulations ; évitez le puits de gravité de la Singularité instable."
L["VA_B3_N2"]  = "CD de soin pour Explosion cosmique \226\128\148 dégâts d'ombre de groupe + recul."

-- Algeth'ar Academy (AA)
-- Boss 1: Overgrown Ancient
L["AA_B1_TIP"] = "Interrompez Toucher soignant des adds Branche ancienne \226\128\148 priorité absolue. Restez dans les cercles d'Abondance à la mort des adds pour soigner automatiquement les saignements d'Écorce épineuse. Restez groupés pendant Germination. À 100 d'énergie, Jaillissement active les Vrilles affamées \226\128\148 le tank les attrape ; dispellez les accumulations de Toxine des vrilles. Tank : défensif pour Brise-écorce."
L["AA_B1_N1"]  = "Restez dans les cercles d'Abondance à la mort des adds pour soigner automatiquement les saignements d'Écorce épineuse."
L["AA_B1_N2"]  = "Restez groupés pendant le canal Germination ; libérez les alliés des enracinements."
L["AA_B1_N3"]  = "À 100 d'énergie, Jaillissement active les Vrilles affamées \226\128\148 utilisez étourdissements/ralentissements ; dispellez les accumulations de Toxine des vrilles."
L["AA_B1_N4"]  = "Attrapez les Vrilles affamées ; défensif pour Brise-écorce (amplification des dégâts physiques)."
L["AA_B1_N5"]  = "Toucher soignant (adds Branche ancienne) \226\128\148 priorité absolue."
-- Boss 2: Crawth
L["AA_B2_TIP"] = "Vents ruineux à 75% et 45% : attrapez les balles et lancez-les dans les buts. Le premier but déclenche des tornades en patrouille \226\128\148 esquivez-les. Le second but lance Tempête de feu (amplification 12s) \226\128\148 sauvegardez CD offensifs et Héroïsme. Dispersez-vous légèrement pour Cri assourdissant. Tank : défensif pour Coup de bec sauvage."
L["AA_B2_N1"]  = "Vents ruineux à 75% et 45% : attrapez les balles et lancez-les dans les buts. Le premier but déclenche des tornades ; le second but déclenche Tempête de feu (amplification 12s)."
L["AA_B2_N2"]  = "Dispersez-vous légèrement pour Cri assourdissant."
L["AA_B2_N3"]  = "Défensif pour Coup de bec sauvage."
L["AA_B2_N4"]  = "Sauvegardez CD offensifs et Héroïsme pour Tempête de feu \226\128\148 phase d'amplification 12s à 45%."
-- Boss 3: Vexamus
L["AA_B3_TIP"] = "Dispersez-vous pour absorber les Orbes arcaniques sur les bords de l'arène \226\128\148 chaque absorption inflige Sursaturation, n'absorbez qu'un seul orbe sauf immunité. Bombes de mana cible 3 joueurs \226\128\148 déplacez-vous en périphérie pour déposer les flaques. À 100 d'énergie, Fissure arcanique \226\128\148 recul + 3 cercles par joueur ; esquivez les cercles. Tank : orientez Expulsion arcanique loin du groupe, utilisez un défensif."
L["AA_B3_N1"]  = "Dispersez-vous pour absorber les Orbes arcaniques sur les bords de l'arène \226\128\148 chaque absorption applique Sursaturation ; n'en absorbez qu'un seul sauf immunité."
L["AA_B3_N2"]  = "Bombes de mana cible 3 joueurs \226\128\148 déplacez-vous en périphérie pour déposer les flaques."
L["AA_B3_N3"]  = "À 100 d'énergie, Fissure arcanique \226\128\148 recul + 3 cercles par joueur ; esquivez les cercles."
L["AA_B3_N4"]  = "Orientez Expulsion arcanique loin du groupe ; utilisez un défensif pour l'impact."
-- Boss 4: Echo of Doragosa
L["AA_B4_TIP"] = "Tirez le boss vers l'entrée \226\128\148 Libération d'énergie à l'aggro invoque 2 Failles arcaniques (les failles tirent des orbes périodiquement). À 3 accumulations de Surpuissance (depuis n'importe quel coup reçu), une nouvelle faille se crée sous vous \226\128\148 dispersez-vous légèrement et utilisez des défensifs pour rester sous 3 accumulations. Aspiration de puissance attire tout le monde vers le boss \226\128\148 utilisez des capacités de déplacement pour fuir la AoE. Tank : défensif pour Explosion astrale."
L["AA_B4_N1"]  = "Tirez le boss vers l'entrée \226\128\148 Libération d'énergie invoque 2 failles à l'aggro ; gérez vos accumulations de Surpuissance (3 accumulations = nouvelle faille sous vous)."
L["AA_B4_N2"]  = "Dispersez-vous légèrement pour Bombe d'énergie et Missiles arcaniques \226\128\148 tout coup reçu accumule de la Surpuissance."
L["AA_B4_N3"]  = "Utilisez des défensifs pour éviter d'atteindre 3 accumulations de Surpuissance \226\128\148 3 accumulations crée une faille sous vous."
L["AA_B4_N4"]  = "Aspiration de puissance attire tout le monde vers le boss \226\128\148 utilisez des capacités de déplacement pour fuir la AoE."
L["AA_B4_N5"]  = "Défensif pour Explosion astrale."

-- Pit of Saron (PS)
-- Boss 1: Forgemaster Garfrost
L["PS_B1_TIP"] = "Lancer de saronite dépose des fragments de minerà \226\128\148 positionnez-vous près d'eux pour esquiver Surcharge glaciale (canal pleine énergie : dégâts massifs + 75% de vulnérabilité au givre). Dispellez Coup de gel (magie : ralentissement + 50% de dégâts de givre supplémentaires). Tank : défensif pour Brise-minerà."
L["PS_B1_N1"]  = "Lancer de saronite dépose des fragments de minerà sur les joueurs \226\128\148 restez près d'un minerà pour esquiver Surcharge glaciale à pleine énergie."
L["PS_B1_N2"]  = "Dispellez Coup de gel (magie) \226\128\148 ralentissement + 50% de dégâts de givre supplémentaires."
L["PS_B1_N3"]  = "Défensif pour Brise-minerà."
-- Boss 2: Ick & Krick
L["PS_B2_TIP"] = "Interrompez Boulon de mort (Krick) \226\128\148 toujours. Gardez Ick près des adds Changeur d'ombre pour les cleaver. Déposez Explosion de fléau près des murs ou des flaques existantes pour les regrouper. Coup de fléau : défensif, déposez près des flaques existantes. Phase 2 (50%) : kitez Ick pendant la fixation 'À l'attaque, Ick !'."
L["PS_B2_N1"]  = "Gardez Ick près des adds Changeur d'ombre pour les cleaver ; déposez Explosion de fléau près des murs ou des flaques existantes."
L["PS_B2_N2"]  = "Phase 2 (50%) : kitez Ick pendant la fixation 'À l'attaque, Ick !'."
L["PS_B2_N3"]  = "Défensif pour Coup de fléau \226\128\148 déposez-le près des flaques existantes."
L["PS_B2_N4"]  = "Boulon de mort (Krick) \226\128\148 toujours."
-- Boss 3: Scourgelord Tyrannus
L["PS_B3_TIP"] = "Souffle de givre cible un joueur \226\128\148 positionnez-vous sur un tas d'os renforcé pour que le rayon le gèle (empêche Armée des morts). Marque du Seigneur du Fléau : défensif, ayez une capacité de déplacement pour après le recul, puis déplacez-vous vers les tas restants non gelés pour aggoer les Propagateurs du fléau. Tuez rapidement les adds Propagateurs du fléau (interrompez Boulon de fléau). Pulsation de fléau inflige des dégâts AoE toutes les 2s tant que des adds sont vivants."
L["PS_B3_N1"]  = "Souffle de givre cible un joueur \226\128\148 positionnez-vous sur un tas d'os renforcé (illuminé en vert) pour que le rayon le gèle et empêche l'apparition d'Armée des morts."
L["PS_B3_N2"]  = "Après le recul de Marque du Seigneur du Fléau, déplacez-vous vers les tas d'os non gelés restants pour aggoer les Propagateurs du fléau."
L["PS_B3_N3"]  = "Tuez rapidement les adds Propagateurs du fléau \226\128\148 Pulsation de fléau inflige des dégâts AoE toutes les 2s tant qu'ils sont vivants."
L["PS_B3_N4"]  = "Défensif pour Marque du Seigneur du Fléau \226\128\148 sauvegardez une capacité de déplacement pour après le recul."
L["PS_B3_N5"]  = "Boulon de fléau (adds Propagateurs du fléau)."

-- Seat of the Triumvirate (ST)
-- Boss 1: Zuraal the Ascended
L["ST_B1_TIP"] = "Gardez le boss loin des adds Vide coagulé \226\128\148 ils disparaissent au contact de lui. Décimer : déposez la flaque pas trop loin (les flaques persistent et s'accumulent). À 100 d'énergie, Vide fracassant \226\128\148 défensif et évitez d'être projeté dans les flaques. Contrôlez et tuez les adds Coup écrasant avant que Vide fracassant ne frappe. Tank : orientez Paume nulle loin du groupe ; défensif pour Entaille du vide."
L["ST_B1_N1"]  = "Gardez le boss loin des adds Vide coagulé \226\128\148 ils disparaissent au contact de lui."
L["ST_B1_N2"]  = "Décimer : déposez la flaque pas trop loin \226\128\148 les flaques persistent et la proximité aggrave la suivante."
L["ST_B1_N3"]  = "Contrôlez et tuez les adds Coup écrasant avant que Vide fracassant ne frappe à 100 d'énergie."
L["ST_B1_N4"]  = "Défensif pour Entaille du vide et Vide fracassant (100 d'énergie) \226\128\148 évitez d'être projeté dans les flaques."
-- Boss 2: Saprish
L["ST_B2_TIP"] = "Boss et familiers partagent leurs PV \226\128\148 restez groupés pour tout cleaver. Interrompez Cri d'effroi (Aile du crépuscule) à chaque incantation. Ruée de phase : superposez et éliminez toutes les Bombes du vide. Surcharge est un test de dégâts \226\128\148 chaque incantation successive est plus puissante. Bond de l'ombre inflige un puissant saignement de 5s."
L["ST_B2_N1"]  = "Boss et familiers partagent leurs PV \226\128\148 restez groupés pour tout cleaver simultanément."
L["ST_B2_N2"]  = "Ruée de phase : superposez et éliminez toutes les Bombes du vide. Surcharge frappe plus fort à chaque incantation successive \226\128\148 c'est un test de dégâts."
L["ST_B2_N3"]  = "Bond de l'ombre inflige un puissant saignement de 5s ; les dégâts de Surcharge augmentent à chaque incantation."
L["ST_B2_N4"]  = "Cri d'effroi (Aile du crépuscule) \226\128\148 interrompez à chaque incantation."
-- Boss 3: Viceroy Nezhar
L["ST_B3_TIP"] = "Interrompez Éclair mental \226\128\148 priorité absolue. À 100 d'énergie, Vide s'effondrant : courez sous le boss pour éviter la tempête. Tuez rapidement les Tentacules ombreux (Lacération mentale fixe un joueur). L'Infusion du vide en masse ne peut pas être dispellée \226\128\148 utilisez un défensif."
L["ST_B3_N1"]  = "À 100 d'énergie (Vide s'effondrant) : courez sous le boss pour éviter la tempête ; si un joueur est piégé, approchez-vous."
L["ST_B3_N2"]  = "Tuez rapidement les Tentacules ombreux \226\128\148 Lacération mentale inflige des dégâts continus à un joueur fixé."
L["ST_B3_N3"]  = "Défensif pour l'Infusion du vide en masse \226\128\148 ne peut pas être dispellée."
L["ST_B3_N4"]  = "Éclair mental \226\128\148 priorité absolue."
-- Boss 4: L'ura
L["ST_B4_TIP"] = "Dispersez les Notes du désespoir \226\128\148 les zones de Chœur funèbre s'accumulent. Explosion discordante : alignez-vous avec les Notes du désespoir pour les réduire au silence. Une fois toutes les Notes réduites au silence, le boss lance Aspiration du vide \226\128\148 interrompez pour une fenêtre de 25% de dégâts subis supplémentaires ; utilisez l'Héroïsme ici. Défensif pour Lancier abyssal (3 accumulations)."
L["ST_B4_N1"]  = "Dispersez les Notes du désespoir \226\128\148 les zones de Chœur funèbre accumulent les dégâts."
L["ST_B4_N2"]  = "Explosion discordante : alignez-vous avec les Notes du désespoir pour les réduire au silence \226\128\148 ne tuez pas les adds directement."
L["ST_B4_N3"]  = "Une fois toutes les Notes réduites au silence, interrompez Aspiration du vide \226\128\148 le boss subit 25% de dégâts en plus ; utilisez l'Héroïsme ici."
L["ST_B4_N4"]  = "Défensif pour Lancier abyssal à 3 accumulations."

-- Skyreach (SR)
-- Boss 1: Ranjit
L["SR_B1_TIP"] = "Éventail de lames : attaque à 360° infligeant un saignement à tous les joueurs \226\128\148 les soigneurs utilisent des dissipations si disponibles. Esquivez le Chakram des vents et les tornades de Vortex du chakram qu'il crée. Vague de rafales : déposez les orbes de vent loin de votre chemin \226\128\148 un recul près des bords de la plateforme est fatal."
L["SR_B1_N1"]  = "Éventail de lames : attaque à 360° infligeant un saignement à tous les joueurs."
L["SR_B1_N2"]  = "Éventail de lames saigne tous les joueurs \226\128\148 utilisez des dissipations si disponibles."
L["SR_B1_N3"]  = "Esquivez le Chakram des vents et les tornades de Vortex du chakram qu'il invoque."
L["SR_B1_N4"]  = "Vague de rafales : déposez les orbes de vent loin de votre chemin \226\128\148 un recul près des bords de la plateforme est fatal."
-- Boss 2: Araknath
L["SR_B2_TIP"] = "Le tank reste à portée de mêlée pour empêcher Vague de souffle. Les non-tanks interceptent les rayons d'Energisation des Petites constructions avec des défensifs \226\128\148 empêche le buff du boss ; 12s plus tard esquivez la frontale Épuisement du noyau. Tank : orientez Frappe ardente loin des intercepteurs de rayons. Évitez Protocole défensif \226\128\148 la AoE de 5 m sous le boss. CD de groupe pour Supernova si un rayon d'Energisation a atteint le boss."
L["SR_B2_N1"]  = "Restez à portée de mêlée pour empêcher Vague de souffle ; orientez Frappe ardente loin des joueurs interceptant des rayons."
L["SR_B2_N2"]  = "Interceptez les rayons d'Energisation des Petites constructions avec des défensifs \226\128\148 empêche le buff du boss. 12s plus tard esquivez la frontale Épuisement du noyau."
L["SR_B2_N3"]  = "Éloignez-vous de Protocole défensif \226\128\148 la AoE de 5 m sous le boss."
L["SR_B2_N4"]  = "CD de groupe pour Supernova si un rayon d'Energisation a atteint le boss (rayon non intercepté)."
-- Boss 3: Rukhran
L["SR_B3_TIP"] = "Passez sur les adds Aile solaire (Solbrisure/Poursuite ardente) et tuez-les loin des œufs \226\128\148 les adds tués sur les œufs se ressuscitent. Piquants brûlants : tous les joueurs se cachent derrière le pilier central, puis reviennent immédiatement. Tank : restez à portée de mêlée sauf pendant Piquants brûlants ; défensif à chaque Griffes ardentes."
L["SR_B3_N1"]  = "Passez sur les adds Aile solaire de Solbrisure/Poursuite ardente \226\128\148 tuez-les loin des œufs sinon ils se ressuscitent."
L["SR_B3_N2"]  = "Piquants brûlants : cachez-vous derrière le pilier central \226\128\148 revenez sur le boss immédiatement après."
L["SR_B3_N3"]  = "Restez à portée de mêlée sauf pendant Piquants brûlants. Défensif à chaque incantation de Griffes ardentes."
-- Boss 4: High Sage Viryx
L["SR_B4_TIP"] = "Rayon brûlant cible 3 joueurs à chaque tour \226\128\148 les soigneurs surveillent les cibles répétées et utilisent des défensifs. Descente en chute drague un joueur vers le bord \226\128\148 ce joueur court vers l'entrée ; le groupe tape le mob et l'étourdit immédiatement. Éclat aveuglant : rayon qui suit \226\128\148 courez vers les côtés de la plateforme avec des CD de déplacement. Interrompez Souffle solaire pour réduire les dégâts du tank."
L["SR_B4_N1"]  = "Descente en chute drague un joueur vers le bord \226\128\148 courez vers l'entrée ; le groupe étourdit le mob immédiatement."
L["SR_B4_N2"]  = "Éclat aveuglant : rayon qui suit \226\128\148 courez vers les côtés de la plateforme avec des CD de déplacement."
L["SR_B4_N3"]  = "Rayon brülant cible 3 joueurs à chaque tour \226\128\148 surveillez les cibles répétées et utilisez des défensifs."
L["SR_B4_N4"]  = "Souffle solaire \226\128\148 réduit les dégâts du tank."

-- ============================================================
-- MIDNIGHT DELVES
-- ============================================================

-- Collegiate Calamity (CC)
L["CC_B1_TIP"] = "Brisez immédiatement les enracinements de Lien de la racine sauvage \226\128\148 être enraciné quand Salu00e9e de lumière florissante se déclenche rend les zones inévitables. Évitez les zones lumineuses de Salu00e9e de lumière florissante."
L["CC_B1_N1"]  = "Brisez immédiatement les enracinements de Lien de la racine sauvage \226\128\148 être enraciné quand Salu00e9e de lumière florissante se déclenche rend les zones inévitables."
L["CC_B1_N2"]  = "Évitez les zones lumineuses de Salu00e9e de lumière florissante."
L["CC_B2_TIP"] = "Sortez de la portée de mêlée avant que Lacération d'ombre ne touche pour éviter le DoT. Quand Choc crépusculaire est incanté, éloignez-vous de votre position \226\128\148 Garand bondit là où vous étiez."
L["CC_B2_N1"]  = "Sortez de la portée de mêlée avant que Lacération d'ombre ne touche pour éviter le DoT de saignement."
L["CC_B2_N2"]  = "Éloignez-vous de votre position après l'incantation de Choc crépusculaire \226\128\148 Garand bondit à votre emplacement."
L["CC_B3_TIP"] = "Interrompez Puissance terrifiante \226\128\148 effraie tout le monde et inflige des dégâts. Évitez les zones d'Éruption du néant."
L["CC_B3_N1"]  = "Puissance terrifiante \226\128\148 effraie tout le monde et inflige des dégâts."
L["CC_B3_N2"]  = "Évitez les zones d'Éruption du néant."

-- The Shadow Enclave (SE)
L["SE_B1_TIP"] = "Interrompez Boulon d'ombre dès que disponible. Pendant Annihilation du Voile d'ombre, Anténorian est immunisé \226\128\148 tuez les trois Orbes d'ombre avant la fin du canal pour briser son bouclier et augmenter les dégâts qu'il subit."
L["SE_B1_N1"]  = "Boulon d'ombre \226\128\148 interruption prioritaire, ne laissez pas les incantations passer."
L["SE_B1_N2"]  = "Pendant Annihilation du Voile d'ombre, tuez les trois Orbes d'ombre avant la fin du canal \226\128\148 brise son immunité et augmente les dégâts qu'il subit."

-- Parhelion Plaza (PP)
L["PP_B1_TIP"] = "Tuez les Appeleurs du vide sacrificiels avant que Nova dévorante ne se déclenche \226\128\148 les adds survivants renforcent Slaurna (plus de dégâts infligés, moins reçus). Interrompez Boulon du vide sur les adds. Évitez l'attaque linéaire Raze de la Cicatrice du néant."
L["PP_B1_N1"]  = "Tuez les Appeleurs du vide sacrificiels avant que Nova dévorante ne se déclenche \226\128\148 les adds survivants renforcent Slaurna (plus de dégâts infligés, moins reçus)."
L["PP_B1_N2"]  = "Boulon du vide sur les Appeleurs du vide sacrificiels."
L["PP_B1_N3"]  = "Évitez l'attaque linéaire directionnelle Raze de la Cicatrice du néant."

-- Twilight Crypts (TC)
L["TC_B1_TIP"] = "Restez à courte portée de mêlée pour empêcher Poursuite obscure. Évitez le cône de Cleave d'ombre. Repositionnez Darza hors des zones de néant Baigner dans le crépuscule \226\128\148 elle gagne 30% de dégâts supplémentaires en y restant."
L["TC_B1_N1"]  = "Restez à courte portée de mêlée \226\128\148 la proximité empêche Poursuite obscure."
L["TC_B1_N2"]  = "Évitez le cône de Cleave d'ombre."
L["TC_B1_N3"]  = "Repositionnez Darza hors des zones de néant Baigner dans le crépuscule \226\128\148 elle gagne 30% de dégâts supplémentaires en y restant."

-- Atal'Aman (AT)
L["AT_B1_TIP"] = "Collectez les esprits de Couteau d'écorchage \226\128\148 chacun octroie un buff de 10% de dégâts. Priorisez les esprits dans les zones d'Esprits déchaînés avant leur destruction. Collectez-les tous avant la fin de Revendiquer les esprits \226\128\148 chaque esprit non collecté donne à Jin'Ma un buff de dégâts cumulable."
L["AT_B1_N1"]  = "Collectez les esprits invoqués par Couteau d'écorchage \226\128\148 chacun octroie un buff de 10% de dégâts. Priorisez les esprits dans les zones d'Esprits déchaînés en premier."
L["AT_B1_N2"]  = "Collectez tous les esprits avant la fin de Revendiquer les esprits \226\128\148 chaque esprit non collecté donne à Jin'Ma un buff de dégâts cumulable."

-- The Darkway (DW)
L["DW_B1_TIP"] = "Interrompez Chercheurs crépusculaires. Évitez le cône frontal d'Explosion abyssale. Gardez vos distances avec les illusions du Déceit illusoire avant leur explosion."
L["DW_B1_N1"]  = "Chercheurs crépusculaires."
L["DW_B1_N2"]  = "Évitez le cône frontal d'Explosion abyssale."
L["DW_B1_N3"]  = "Gardez vos distances avec les illusions du Déceit illusoire avant leur explosion."

-- The Grudge Pit (GP)
L["GP_B1_TIP"] = "Interrompez Épine en fleur. Détournez le regard avant que l'Éclat aveuglant ne se résolve pour éviter la désorientation. Évitez Charge solaire et ses zones de néant persistantes."
L["GP_B1_N1"]  = "Épine en fleur."
L["GP_B1_N2"]  = "Détournez le regard avant que l'Éclat aveuglant ne se résolve pour éviter la désorientation."
L["GP_B1_N3"]  = "Évitez Charge solaire ; évitez les zones de néant persistantes qu'elle laisse derrière elle."
L["GP_B2_TIP"] = "Évitez les zones de néant pendant le spin Tempête fongique \226\128\148 brlez le boss pendant les 10s de fenêtre de vulnérabilité après. Reculez hors de la mêlée avant Fongiexplosion. Évitez Charge fongique."
L["GP_B2_N1"]  = "Évitez les zones de néant pendant le spin Tempête fongique."
L["GP_B2_N2"]  = "Brlez le boss pendant les 10s de fenêtre de vulnérabilité après Tempête fongique."
L["GP_B2_N3"]  = "Reculez hors de la mêlée avant Fongiexplosion. Évitez Charge fongique."
L["GP_B3_TIP"] = "Pluie rance : déplacez-vous vers les bords de l'arène pour déposer les nuages empoisonnés loin du centre. Poing du champignon : évitez le coup et les 5 projectiles \226\128\148 être touché étourdit 3s. Lancer de chaise : décalez-vous pour éviter le recul et la désorientation."
L["GP_B3_N1"]  = "Pluie rance : déplacez-vous vers les bords de l'arène pour déposer les nuages empoisonnés loin du centre."
L["GP_B3_N2"]  = "Poing du champignon : évitez le coup et les 5 projectiles \226\128\148 être touché étourdit 3s."
L["GP_B3_N3"]  = "Lancer de chaise : décalez-vous pour éviter le recul et la désorientation."

-- Gulf of Memory (GM)
L["GM_B1_TIP"] = "Tuez les adds Commandement radieux avant qu'ils ne vous atteignent \226\128\148 kitez-les dans les zones de Lumière brûlante pour les désorienter. Évitez les zones de Lumière brûlante. Défensif pour Lueur maligne."
L["GM_B1_N1"]  = "Tuez les adds Commandement radieux avant qu'ils ne vous atteignent \226\128\148 kitez-les dans les zones de Lumière brûlante pour les désorienter."
L["GM_B1_N2"]  = "Évitez les zones de Lumière brûlante."
L["GM_B1_N3"]  = "Défensif pour Lueur maligne \226\128\148 coup de dégâts sacrés."
L["GM_B2_TIP"] = "Interrompez Malédiction sans espoir à chaque incantation \226\128\148 réduit la Hâte et la Vitesse de déplacement ; dispellez si possible. Démolit tout : les tentacules écrasent après un court délai \226\128\148 repositionnez-vous pour éviter. Appel sans réponse fixe un joueur pendant 8s \226\128\148 kitez le boss immédiatement."
L["GM_B2_N1"]  = "Démolit tout : les tentacules écrasent après un court délai \226\128\148 continuez à vous déplacer pour éviter l'impact."
L["GM_B2_N2"]  = "Appel sans réponse fixe un joueur pendant 8s \226\128\148 utilisez une capacité de déplacement pour kiter le boss."
L["GM_B2_N3"]  = "Dispellez Malédiction sans espoir si ratée \226\128\148 réduit la Hâte et la Vitesse de déplacement de tous les joueurs."
L["GM_B2_N4"]  = "Malédiction sans espoir \226\128\148 à chaque incantation ; la vitesse réduite combinée à la fixation est fatale aux paliers élevés."

-- Sunkiller Sanctum (SK)
L["SK_B1_TIP"] = "Interrompez Boulon invocateur pour empêcher les apparitions d'Appeleurs du vide. Évitez Fissure concassante \226\128\148 être touché invoque 4 Appeleurs du vide. Tuez tous les Appeleurs du vide avant Goinfrage \226\128\148 chaque consommé donne un buff de dégâts à Esuritus. Interrompez leur canal Communion avec le néant."
L["SK_B1_N1"]  = "Boulon invocateur \226\128\148 invoque un Appeleur du vide s'il touche."
L["SK_B1_N2"]  = "Évitez Fissure concassante \226\128\148 être touché invoque 4 Appeleurs du vide d'un coup."
L["SK_B1_N3"]  = "Tuez tous les Appeleurs du vide avant Goinfrage \226\128\148 chaque consommé donne un buff de dégâts à Esuritus. Interrompez leur canal Communion avec le néant."

-- Shadowguard Point (SP)
L["SP_B1_TIP"] = "Interrompez Boulon du néant. Tuez l'Emissaire du néant avant la fin de Communion obscure \226\128\148 succès = buff Versatilité + CDR pour vous ; échec = buff pour Patram. Évitez les zones de néant de l'Hymne discordant (dégâts + ralentissement)."
L["SP_B1_N1"]  = "Boulon du néant."
L["SP_B1_N2"]  = "Tuez l'Emissaire du néant avant la fin de Communion obscure \226\128\148 succès = buff Versatilité + CDR pour vous ; échec = buff pour Patram."
L["SP_B1_N3"]  = "Évitez les zones de néant de l'Hymne discordant \226\128\148 infligent des dégâts et appliquent un ralentissement."

-- ============================================================
-- MIDNIGHT SEASON 1 RAID
-- ============================================================

-- Wing 1: The Voidspire (VS)
-- Boss 1: Imperator Averzian
L["VS_B1_TIP"] = "Regroupez-vous pour absorber Effondrement ombral près des Façonneurs du vide abyssal \226\128\148 absorber près d'un façonneur bloque sa revendication de dalle. 3 dalles adjacentes revendiquées = Marche de l'infini (wipe). Évitez les dalles revendiquées \226\128\148 le boss gagne une quasi-immunité (Gloire de l'Impérateur) à proximité. Tanks : les accumulations de Blessures noircissantes réduisent le maximum de PV et attirent des adds \226\128\148 changez avant le pic."
L["VS_B1_N1"]  = "Regroupez-vous pour absorber Effondrement ombral près des Façonneurs du vide abyssal \226\128\148 bloque leur revendication de dalle. 3 dalles adjacentes = Marche de l'infini."
L["VS_B1_N2"]  = "Évitez les dalles revendiquées \226\128\148 Gloire de l'Impérateur accorde une quasi-immunité près du territoire revendiqué. Évitez les zones au sol de Colère de l'oubli."
L["VS_B1_N3"]  = "Tuez les Façonneurs du vide abyssal avant 100 d'énergie \226\128\148 à pleine énergie ils se transforment en Marcheurs obsidiaux de l'infini (permanents et renforcés)."
L["VS_B1_N4"]  = "Changez sur Blessures noircissantes \226\128\148 les accumulations réduisent le maximum de PV et le tank avec le plus d'accumulations attire des adds."
L["VS_B1_N5"]  = "Rempart cheville-orteils des adds Stalwart/Annihilator. Tuez les Maâchoires du vide avant 35% PV \226\128\148 en dessous de ce seuil ils fuient vers les portails pour se soigner."
-- Boss 2: Vorasius
L["VS_B2_TIP"] = "Évitez Souffle du vide \226\128\148 le laser balayant est fatal. Tuez les adds Blistercreep près des murs de cristal \226\128\148 les explosions de Blisterburst détruisent les murs. Rugissement primordial attire puis repousse \226\128\148 encaissez avec un défensif. Tanks : le Tank 1 prend intentionnellement 2 accumulations de Frappe des griffes d'ombre (Ecrasé = 150% de dégâts physiques subis), puis échange ; attendez que Ecrasé se dissipine avant de rééchanger."
L["VS_B2_N1"]  = "Évitez Souffle du vide \226\128\148 laser balayant fatal ; déplacez-vous du côté sûr."
L["VS_B2_N2"]  = "Tuez les Blistercreep fixés près des murs de cristal \226\128\148 les explosions de Blisterburst détruisent les murs."
L["VS_B2_N3"]  = "Rugissement primordial attire puis repousse \226\128\148 encaissez avec un défensif. Puissance primordiale s'accumule \226\128\148 la pression de soin augmente."
L["VS_B2_N4"]  = "Dispellez Parasite (débuff magique) rapidement."
L["VS_B2_N5"]  = "Le Tank 1 prend intentionnellement 2 accumulations de Frappe des griffes d'ombre (Ecrasé = 150% de dégâts physiques subis), puis échange. Le Tank 2 attend que Ecrasé se dissipe."
-- Boss 3: Fallen-King Salhadaar
L["VS_B3_TIP"] = "Interceptez les orbes de Convergence du vide \226\128\148 si le boss en absorbe un (Infusion du vide), wipe assuré. À 100 d'énergie : Démemèbrement entropique \226\128\148 esquivez les faisceaux rotatifs ; le boss subit 25% de dégâts supplémentaires pendant 20s. Interrompez Fracture d'ombre des Images fracturées. Tanks : échangez sur Frappes déstabilisantes ; orientez les flèches de Crépuscule briseur loin du raid."
L["VS_B3_N1"]  = "Interceptez les orbes de Convergence du vide \226\128\148 si le boss en absorbe un (Infusion du vide), wipe assuré. Espacez les kills d'orbes pour éviter de superposer Radiation obscure."
L["VS_B3_N2"]  = "Commandement despotique : positionnez les cercles temporisés aux bords de la salle."
L["VS_B3_N3"]  = "À 100 d'énergie : Démemèbrement entropique \226\128\148 esquivez les faisceaux rotatifs ; le boss subit 25% de dégâts supplémentaires pendant 20s. Utilisez vos CD et l'Héroïsme ici."
L["VS_B3_N4"]  = "Dispellez Obscurité tordue (DoT magique) \226\128\148 elle saute entre les joueurs."
L["VS_B3_N5"]  = "Echangez sur les accumulations de Frappes déstabilisantes. Orientez les flèches de Crépuscule briseur loin du raid et du boss."
L["VS_B3_N6"]  = "Fracture d'ombre incantée par les adds Images fracturées."
-- Boss 4: Vaelgor & Ezzorak
L["VS_B4_TIP"] = "Gardez les deux à moins de 10% de différence de PV et à moins de 15 m \226\128\148 Lien crépusculaire inflige 100% de dégâts supplémentaires si l'une ou l'autre condition échoue. Vaelgor : Souffle d'effroi effraie \226\128\148 la cible s'éloigne du raid puis se dispelle. Intermission Flammes de minuit : regroupez-vous dans le Bouclier radieux ; tuez la Manifestation de minuit. Tanks : Rayon nul (Vaelgor) est intentionnel \226\128\148 accumulez ~8 charges puis repositionnez. Échangez sur Aile de Vaëlgor et Croc fouisseur (Ezzorak \226\128\148 Embrocher étourdit)."
L["VS_B4_N1"]  = "Gardez les deux à moins de 10% de différence de PV et à moins de 15 m \226\128\148 Lien crépusculaire : 100% de dégâts supplémentaires si l'une des conditions échoue."
L["VS_B4_N2"]  = "Souffle d'effroi (Vaëlgor) : la cible s'écarte sur le côté, dos au raid \226\128\148 dispellez la peur."
L["VS_B4_N3"]  = "Sombre (Ezzorak) : jusqu'à 5 joueurs absorbent l'orbe mobile pour réduire son Champ sombre."
L["VS_B4_N4"]  = "Intermission Flammes de minuit : regroupez-vous dans le Bouclier radieux ; tuez la Manifestation de minuit avant qu'elle renforce les dragons."
L["VS_B4_N5"]  = "Rayon nul (Vaëlgor) : absorption intentionnelle \226\128\148 accumulez ~8 charges puis repositionnez. Echangez sur Aile de Vaëlgor et Croc fouisseur (Ezzorak \226\128\148 Embrocher étourdit)."
L["VS_B4_N6"]  = "Boulons du vide des Orbes du néant (invoqués par Hurlement du vide) \226\128\148 Emprise de masse, étourdissement ou interruption ; les incantations libres infligent des dégâts soutenus importants."
-- Boss 5: Lightblinded Vanguard
L["VS_B5_TIP"] = "Trois paladins : Bellamy (Dévotion), Venel (Colère), Senn (Paix). À 100 d'énergie : le boss applique une aura renforçant les deux autres \226\128\148 tankez le boss près du bord ; la consécration tombe quand l'aura se termine. Condamnation à mort : chaque joueur marqué forme son propre groupe séparé \226\128\148 NE PAS fusionner les cercles. Senn : brisez Bouclier sacré puis interrompez Lumière aveuglante. Tanks : échangez immédiatement après Jugement (le coup de suivi inflige 200% de dégâts en plus)."
L["VS_B5_N1"]  = "Ordre des auras : Bellamy \226\134\146 Venel \226\134\146 Senn. Chaque aura renforce les deux autres \226\128\148 tankez le boss à 100 d'énergie vers le bord de l'arène."
L["VS_B5_N2"]  = "N'attaquez PAS à l'intérieur de l'Aura de Dévotion (75% de réduction des dégâts) ou de l'Aura de Paix (pacifie les attaquants)."
L["VS_B5_N3"]  = "Condamnation à mort : chaque joueur marqué a besoin de son propre groupe séparé \226\128\148 NE PAS fusionner les cercles."
L["VS_B5_N4"]  = "Senn : brisez rapidement Bouclier sacré, puis interrompez Lumière aveuglante \226\128\148 interruption ratée = désorientation du raid entier."
L["VS_B5_N5"]  = "Échangez immédiatement après Jugement \226\128\148 le coup de suivi inflige 200% de dégâts supplémentaires."
-- Boss 6: Crown of the Cosmos
L["VS_B6_TIP"] = "Étape 1 : tuez les trois Sentinelles immortelles (Morium, Demiar, Vorelus) \226\128\148 chacune doit rester à 25 m de son portail du néant sinon elle se téléporte. Cosmos dévorant = 99% de réduction des soins \226\128\148 sortez immédiatement. Détruisez le Simulacre de faille (Étape 2) \226\128\148 actif, il réduit les dégâts subis d'Alleria. Tuez l'Engeance du néant immortelle avant 100 d'énergie (immunité CC + 500% de dégâts). Tanks : les accumulations de Taillade de faille réduisent toutes les statistiques \226\128\148 échangez en amont."
L["VS_B6_N1"]  = "Étape 1 : tuez les Sentinelles immortelles (Morium, Demiar, Vorelus) \226\128\148 chacune doit rester à 25 m de son portail du néant sinon elle se téléporte."
L["VS_B6_N2"]  = "Cosmos dévorant = zone de 99% de réduction des soins \226\128\148 sortez immédiatement. Expulsion du néant : éloignez-vous de l'impact du corps céleste."
L["VS_B6_N3"]  = "Tuez l'Engeance du néant immortelle avant 100 d'énergie \226\128\148 à pleine énergie immunité CC + 500% de dégâts. Étape 2 : détruisez le Simulacre de faille \226\128\148 actif, il réduit les dégâts subis d'Alleria."
L["VS_B6_N4"]  = "Les accumulations de Taillade de faille réduisent toutes les statistiques de 10% par charge (20s) \226\128\148 échangez avant que les charges ne paralysent les atténuations. Gardez les sentinelles à 25 m de leur portail."
L["VS_B6_N5"]  = "Dispellez Couronne nulle avec soin \226\128\148 l'absorption restante saute sur un nouveau joueur au dispel. Soin intensif pendant Cosmos dévorant ; Aspect de la fin réduit les soins reçus."
L["VS_B6_N6"]  = "Barrage du néant des adds Engeance du néant. Interrompez Tremor de Demiar (add sentinelle)."

-- Wing 2: March on Quel'Danas (MQ)
-- Boss 1: Belo'ren, Child of Al'ar
L["MQ_B1_TIP"] = "Étape 1 : vous recevez une plume de Lumière ou du Néant \226\128\148 absorbez uniquement les plongées de la même couleur, interceptez les piquants de même couleur ; mauvaise couleur = lourd débuff. Interrompez l'Éruption de Lumière/Néant des Braises \226\128\148 seuls les joueurs de même couleur peuvent interrompre. Étape 2 (Coquille cendrée) : brûlez l'œuf avant le minuteur de renaissance de 30s ; chaque renaissance accumule Bénédiction cendrée (10% de réduction des soins)."
L["MQ_B1_N1"]  = "Vous recevez une plume de Lumière ou du Néant \226\128\148 absorbez uniquement les plongées et interceptez les piquants de même couleur. Exposition à la mauvaise couleur = lourd débuff."
L["MQ_B1_N2"]  = "Éruption de Lumière/Néant des Braises \226\128\148 seuls les joueurs de même couleur peuvent interrompre."
L["MQ_B1_N3"]  = "Étape 2 : brûlez l'œuf (= PV du boss) avant le minuteur de renaissance de 30s. Chaque accumulation de Bénédiction cendrée = 10% de réduction des soins."
L["MQ_B1_N4"]  = "Cœur brûlant pulse toutes les 3s ; double pendant la phase de l'œuf. Chaque accumulation de Bénédiction cendrée réduit les soins de 10%."
-- Boss 2: Midnight Falls
L["MQ_B2_TIP"] = "Détruisez les Cristaux de minuit avant leur explosion (Fracture cosmique \226\128\148 puissante AoE + DoT). Soignez les Cristaux du crépuscule pour créer des Cristaux de l'aube \226\128\148 les Porteurs de torche les transportent pour une aura protectrice de 12 m et la Barrière de lumière d'aube (dôme de réduction 99%, 6s). Chant de la mort : positionnez soigneusement les marques de rune avant le balayage laser. Intermission : esquivez les Rayons d'extinction se réfléchissant sur les miroirs."
L["MQ_B2_N1"]  = "Détruisez les Cristaux de minuit avant détonation (Fracture cosmique \226\128\148 puissante AoE + DoT)."
L["MQ_B2_N2"]  = "Soignez les Cristaux du crépuscule en Cristaux de l'aube ; les Porteurs de torche fournissent une aura de 12 m et la Barrière de lumière d'aube (dôme de réduction 99%, 6s)."
L["MQ_B2_N3"]  = "Chant de la mort : positionnez soigneusement les marques de rune \226\128\148 le balayage laser déclenche Péage obscur ou Chant dissonant."
L["MQ_B2_N4"]  = "Intermission : esquivez les Rayons d'extinction se réfléchissant sur les Miroirs de l'oubli."

-- Wing 3: The Dreamrift (DR)
-- Boss 1: Chimaerus the Undreamt God
L["DR_B1_TIP"] = "Alternez les groupes pour absorber le Soulèvement de poussière d'Alndust \226\128\148 les joueurs absorbés obtiennent Vue d'Alndust et doivent briser les boucliers d'Alnshroud sur les Manifestations (uniquement possible avec Vue d'Alndust). Les Manifestations atteignant le boss = dégâts massifs + 100% de buff de dégâts du boss. Dispellez Miasme consumant (débuff joueur) en se tenant dans les flaques d'Alndust pour les supprimer. Intermission (Vers les cieux) : esquivez les lignes de souffles de Dévastation corrompue ; toutes les Manifestations doivent mourir avant Plongée dévorante."
L["DR_B1_N1"]  = "Deux groupes alternent l'absorption du Soulèvement de poussière d'Alndust. Le groupe absorbé obtient Vue d'Alndust \226\128\148 seuls eux peuvent briser les boucliers d'Alnshroud sur les Manifestations."
L["DR_B1_N2"]  = "Les Manifestations ne doivent jamais atteindre le boss \226\128\148 Insatiable : dégâts au raid + soin de 200% PV + 100% buff de dégâts par add absorbé."
L["DR_B1_N3"]  = "Dispellez Miasme consumant (débuff joueur) en se tenant dans les flaques au sol \226\128\148 le dispel supprime la flaque. Évitez de superposer les splashs de dispel."
L["DR_B1_N4"]  = "Intermission (Vers les cieux) : esquivez les lignes de souffles de Dévastation corrompue ; toutes les Manifestations doivent mourir avant Plongée dévorante."
L["DR_B1_N5"]  = "Cri terrifiant et Boulon d'essence des adds Horreur colossale (canal Essence hantante)."
