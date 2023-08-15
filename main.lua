function love.load()
	love.graphics.setDefaultFilter("nearest", "nearest")
	fonts = {}
	fonts.pico10 = love.graphics.newFont("PICO-8.ttf",10)
	fonts.pico16 = love.graphics.newFont("PICO-8.ttf",16)
	fonts.pico20 = love.graphics.newFont("PICO-8.ttf",20)
	fonts.pico30 = love.graphics.newFont("PICO-8.ttf",30)
	fonts.pico40 = love.graphics.newFont("PICO-8.ttf",40)
	fonts.pico60 = love.graphics.newFont("PICO-8.ttf",60)
	fonts.pico80 = love.graphics.newFont("PICO-8.ttf",80)
	fonts.pico160 = love.graphics.newFont("PICO-8.ttf",160)
	fonts.comic10 = love.graphics.newFont("Comic.ttf",10)
	fonts.comic20 = love.graphics.newFont("Comic.ttf",20)
	fonts.comic40 = love.graphics.newFont("Comic.ttf",40)
	fonts.comic60 = love.graphics.newFont("Comic.ttf",60)
	fonts.comic80 = love.graphics.newFont("Comic.ttf",80)
	fonts.comic160 = love.graphics.newFont("Comic.ttf",160)

	sounds = {}
	sounds.menu_move = love.audio.newSource("menu_move.wav","static")
	sounds.menu_select = love.audio.newSource("menu_select.wav","static")
	sounds.music_menu = love.audio.newSource("SquishyMenu.wav", "static")
	sounds.music_plains = love.audio.newSource("SquishyPlains.wav","static")
	sounds.music_water = love.audio.newSource("SquishyWater.wav","static")
	sounds.music_ruins = love.audio.newSource("SquishyRuins.wav","static")--might change the looping later
	sounds.music_snow = love.audio.newSource("SquishySnow.wav","static")
	sounds.music_futurecity = love.audio.newSource("SquishyFutureCity.wav","static")
	sounds.music_toxic = love.audio.newSource("SquishyToxic.wav","static")
	sounds.music_volcano = love.audio.newSource("SquishyTrueVolcano.wav","static")
	sounds.music_space = love.audio.newSource("SquishyTrueSpace.wav","static")
	sounds.music_bonus = love.audio.newSource("SquishyNewBonus.wav","static")
	sounds.music_credits = love.audio.newSource("SquishyCredits.wav","static")

	sounds.player_die = love.audio.newSource("player_die.wav","static")
	sounds.player_gem = love.audio.newSource("player_gem.wav","static")
	sounds.player_powerup = love.audio.newSource("player_powerup.wav","static")
	sounds.player_spring = love.audio.newSource("player_spring.wav","static")	
	sounds.player_shoot = love.audio.newSource("player_shoot.wav","static")
	sounds.player_build = love.audio.newSource("player_build.wav","static")
	sounds.player_build_delete = love.audio.newSource("player_build_delete.wav","static")
	sounds.player_build_back = love.audio.newSource("player_build_back.wav","static")
	sounds.player_destroy = love.audio.newSource("player_destroy.wav","static")
	sounds.player_gravity = love.audio.newSource("player_gravity.wav","static")
	sounds.player_change = love.audio.newSource("player_change.wav","static")
	sounds.player_portal = love.audio.newSource("player_portal.wav","static")
	sounds.player_explode = love.audio.newSource("player_explode.wav","static")
	sounds.player_rock = love.audio.newSource("player_rock.wav","static")
	sounds.player_door = love.audio.newSource("player_door.wav","static")
	sounds.player_teleport = love.audio.newSource("player_teleport.wav","static")
	sounds.player_super_teleport = love.audio.newSource("player_super_teleport.wav","static")
	sounds.player_lazergate = love.audio.newSource("player_lazergate.wav","static")
	sounds.player_pause = love.audio.newSource("player_pause.wav","static")
	sounds.player_unpause = love.audio.newSource("player_unpause.wav","static")
	sounds.player_power_teleport = love.audio.newSource("player_power_teleport.wav","static")
	sounds.player_time = love.audio.newSource("player_time.wav","static")
	sounds.player_key = love.audio.newSource("player_key.wav","static")
	sounds.player_crash = love.audio.newSource("player_crash.wav","static")
	sounds.player_ice = love.audio.newSource("player_ice.wav","static")
	sounds.player_platform = love.audio.newSource("player_platform.wav","static")
	sounds.player_double = love.audio.newSource("player_double.wav","static")
	sounds.shooty_shoot = love.audio.newSource("shooty_shoot.wav","static")
	sounds.snipey_shoot = love.audio.newSource("snipey_shoot.wav","static")
	sounds.button_pressed = love.audio.newSource("button_pressed.wav","static")
	sounds.level_change = love.audio.newSource("level_change.wav","static")
	sounds.world_change = love.audio.newSource("world_change.wav","static")
	sounds.bombtick = love.audio.newSource("bombtick.wav","static")
	sounds.bridge = love.audio.newSource("bridge.wav","static")
	sounds.bridge_warning = love.audio.newSource("bridge_warning.wav","static")
	sounds.bridge_destroy = love.audio.newSource("bridge_destroy.wav","static")
	sounds.reality_breaker = love.audio.newSource("reality_breaker.wav","static")
	sounds.secret_found = love.audio.newSource("secret_found.wav","static")
	sounds.enemy_die = love.audio.newSource("enemy_die.wav","static")
	sounds.explosion_gate = love.audio.newSource("explosion_gate.wav","static")
	sounds.bomb_explosion = love.audio.newSource("bomb_explosion.wav","static")
	sounds.lazer_activate = love.audio.newSource("lazer_activate.wav","static")

	sounds.b1_rock = love.audio.newSource("b1_rock.wav","static")
	sounds.b1_rock2 = love.audio.newSource("b1_rock2.wav","static")
	sounds.b1_jump = love.audio.newSource("b1_jump.wav","static")
	sounds.b1_smash = love.audio.newSource("b1_smash.wav","static")

	sounds.b2_lightning = love.audio.newSource("b2_lightning.wav","static")
	sounds.b2_big_lightning = love.audio.newSource("b2_big_lightning.wav","static")

	sounds.music_menu:setLooping(true)
	sounds.music_water:setLooping(true)
	sounds.music_ruins:setLooping(true)
	sounds.music_snow:setLooping(true)
	sounds.music_futurecity:setLooping(true)
	sounds.music_toxic:setLooping(true)
	sounds.music_volcano:setLooping(true)
	sounds.music_space:setLooping(true)
	sounds.music_bonus:setLooping(true)

	require("Tilemaps/SquishyMenuMap")
	require("Tilemaps/level1")
	require("Tilemaps/level2")
	require("Tilemaps/level3")
	require("Tilemaps/level4")
	require("Tilemaps/level5")
	require("Tilemaps/level6")
	require("Tilemaps/level7")
	require("Tilemaps/level8")
	require("Tilemaps/level9")
	require("Tilemaps/level10")
	require("Tilemaps/level11")
	require("Tilemaps/level12")
	require("Tilemaps/level13")
	require("Tilemaps/level14")
	require("Tilemaps/level15")
	require("Tilemaps/level16")
	require("Tilemaps/level17")
	require("Tilemaps/level18")
	require("Tilemaps/level19")
	require("Tilemaps/level20")
	require("Tilemaps/level21")
	require("Tilemaps/level22")
	require("Tilemaps/level23")
	require("Tilemaps/level24")
	require("Tilemaps/level25")
	require("Tilemaps/level26")
	require("Tilemaps/level27")
	require("Tilemaps/level28")
	require("Tilemaps/level29")
	require("Tilemaps/level30")
	require("Tilemaps/level31")
	require("Tilemaps/level32")
	require("Tilemaps/level33")
	require("Tilemaps/level34")
	require("Tilemaps/level35")
	require("Tilemaps/level36")
	require("Tilemaps/level37")
	require("Tilemaps/level38")
	require("Tilemaps/level39")
	require("Tilemaps/level40")
	require("Tilemaps/level41")
	require("Tilemaps/level42")
	require("Tilemaps/level43")
	require("Tilemaps/level44")
	require("Tilemaps/level45")
	require("Tilemaps/level46")
	require("Tilemaps/level47")
	require("Tilemaps/level48")
	require("Tilemaps/level49")
	require("Tilemaps/level50")
	require("Tilemaps/level51")
	require("Tilemaps/level52")
	require("Tilemaps/level53")
	require("Tilemaps/level54")
	require("Tilemaps/level55")
	require("Tilemaps/level56")
	require("Tilemaps/level57")
	require("Tilemaps/level58")
	require("Tilemaps/level59")
	require("Tilemaps/level60")
	require("Tilemaps/level61")
	require("Tilemaps/level62")
	require("Tilemaps/level63")
	require("Tilemaps/level64")
	require("Tilemaps/level65")
	require("Tilemaps/level66")
	require("Tilemaps/level67")
	require("Tilemaps/level68")
	require("Tilemaps/level69")
	require("Tilemaps/level70")
	require("Tilemaps/level71")
	require("Tilemaps/level72")
	require("Tilemaps/level73")
	require("Tilemaps/level74")
	require("Tilemaps/level75")
	require("Tilemaps/level76")
	require("Tilemaps/level77")
	require("Tilemaps/level78")
	require("Tilemaps/level79")
	require("Tilemaps/level80")
	require("Tilemaps/level81")
	require("Tilemaps/level82")
	require("Tilemaps/level83")
	require("Tilemaps/level84")
	require("Tilemaps/level85")
	require("Tilemaps/level86")
	require("Tilemaps/level87")
	require("Tilemaps/level88")
	require("Tilemaps/level89")
	require("Tilemaps/level90")
	require("Tilemaps/level91")
	require("Tilemaps/level92")
	require("Tilemaps/level93")
	require("Tilemaps/level94")
	require("Tilemaps/level95")
	require("Tilemaps/level96")
	require("Tilemaps/level97")
	require("Tilemaps/level98")
	require("Tilemaps/level99")
	require("Tilemaps/level100")
	require("Tilemaps/level101")
	require("Tilemaps/level102")
	require("Tilemaps/level103")
	require("Tilemaps/level104")
	require("Tilemaps/level105")
	require("Tilemaps/level106")
	require("Tilemaps/level107")
	require("Tilemaps/level108")
	require("Tilemaps/level109")
	require("Tilemaps/level110")
	require("Tilemaps/level111")
	require("Tilemaps/level112")
	require("Tilemaps/level113")
	require("Tilemaps/level114")
	require("Tilemaps/level115")
	require("Tilemaps/level116")
	require("Tilemaps/level117")
	require("Tilemaps/level118")
	require("Tilemaps/level119")
	require("Tilemaps/level120")
	require("Tilemaps/level121")
	require("Tilemaps/level122")
	require("Tilemaps/level123")
	require("Tilemaps/level124")
	require("Tilemaps/level125")
	require("Tilemaps/level126")
	require("Tilemaps/level127")
	require("Tilemaps/level128")
	require("Tilemaps/level129")
	require("Tilemaps/level130")
	require("Tilemaps/level131")
	require("Tilemaps/level132")
	require("Tilemaps/level133")
	require("Tilemaps/level134")
	require("Tilemaps/level135")
	require("Tilemaps/level136")
	require("Tilemaps/level137")
	require("Tilemaps/level138")
	require("Tilemaps/level139")
	require("Tilemaps/level140")


	require("Tilemaps2/placeholder")
	require("Tilemaps2/alevel26")
	require("Tilemaps2/alevel66")
	require("Tilemaps2/alevel67")
	require("Tilemaps2/alevel79")
	require("Tilemaps2/alevel80")
	require("Tilemaps2/alevel95")
	require("Tilemaps2/alevel114")
	require("Tilemaps2/alevel115")

	maps2={
		placeholder(),--1
		placeholder(),--2
		placeholder(),--3
		placeholder(),--4
		placeholder(),--5
		placeholder(),--6
		placeholder(),--7
		placeholder(),--8
		placeholder(),--9
		placeholder(),--10
		placeholder(),--11
		placeholder(),--12
		placeholder(),--13
		placeholder(),--14
		placeholder(),--15
		placeholder(),--16
		placeholder(),--17
		placeholder(),--18
		placeholder(),--19
		placeholder(),--20
		placeholder(),--21
		placeholder(),--22
		placeholder(),--23
		placeholder(),--24
		placeholder(),--25
		alevel26(),--26
		placeholder(),--27
		placeholder(),--28
		placeholder(),--29
		placeholder(),--30
		placeholder(),--31
		placeholder(),--32
		placeholder(),--33
		placeholder(),--34
		placeholder(),--35
		placeholder(),--36
		placeholder(),--37
		placeholder(),--38
		placeholder(),--39
		placeholder(),--40
		placeholder(),--41
		placeholder(),--42
		placeholder(),--43
		placeholder(),--44
		placeholder(),--45
		placeholder(),--46
		placeholder(),--47
		placeholder(),--48
		placeholder(),--49
		placeholder(),--50
		placeholder(),--51
		placeholder(),--52
		placeholder(),--53
		placeholder(),--54
		placeholder(),--55
		placeholder(),--56
		placeholder(),--57
		placeholder(),--58
		placeholder(),--59
		placeholder(),--60
		placeholder(),--61
		placeholder(),--62
		placeholder(),--63
		placeholder(),--64
		level65(),--65
		alevel66(),--66
		alevel67(),--67
		placeholder(),--68
		placeholder(),--69
		placeholder(),--70
		placeholder(),--71
		placeholder(),--72
		placeholder(),--73
		placeholder(),--74
		placeholder(),--75
		placeholder(),--76
		placeholder(),--77
		placeholder(),--78
		alevel79(),--79
		alevel80(),--80
		placeholder(),--81
		placeholder(),--82
		placeholder(),--83
		placeholder(),--84
		placeholder(),--85
		placeholder(),--86
		placeholder(),--87
		placeholder(),--88
		placeholder(),--89
		placeholder(),--90
		placeholder(),--91
		placeholder(),--92
		placeholder(),--93
		placeholder(),--94r
		alevel95(),--95
		placeholder(),--96
		placeholder(),--97
		placeholder(),--98
		placeholder(),--99
		placeholder(),--100
		placeholder(),--101
		placeholder(),--102
		placeholder(),--103
		placeholder(),--104
		placeholder(),--105
		placeholder(),--106
		placeholder(),--107
		placeholder(),--108
		placeholder(),--109
		placeholder(),--110
		placeholder(),--111
		placeholder(),--112
		placeholder(),--113
		alevel114(),--114
		alevel115(),--115
		placeholder(),--116
		placeholder(),--117
		placeholder(),--118
		placeholder(),--119
		placeholder(),--120
		placeholder(),--121
		placeholder(),--122
		placeholder(),--123
		placeholder(),--124
		placeholder(),--125
		placeholder(),--126
		placeholder(),--127
		placeholder(),--128
		placeholder(),--129
		placeholder(),--130
		placeholder()
	}

	extra_maps={
		SquishyMenuMap()
	}

function reload()
--regualr maops
	maps={
	level1(),
	level2(),
	level3(),
	level4(),
	level5(),
	level6(),
	level7(),
	level8(),
	level9(),
	level10(),
	level11(),
	level12(),
	level13(),
	level14(),
	level15(),
	level16(),
	level17(),
	level18(),
	level19(),
	level20(),
	level21(),
	level22(),
	level23(),
	level24(),
	level25(),
	level26(),
	level27(),
	level28(),
	level29(),
	level30(),
	level31(),
	level32(),
	level33(),
	level34(),
	level35(),
	level36(),
	level37(),
	level38(),
	level39(),
	level40(),
	level41(),
	level42(),
	level43(),
	level44(),
	level45(),
	level46(),
	level47(),
	level48(),
	level49(),
	level50(),
	level51(),
	level52(),
	level53(),
	level54(),
	level55(),
	level56(),
	level57(),
	level58(),
	level59(),
	level60(),
	level61(),
	level62(),
	level63(),
	level64(),
	level65(),
	level66(),
	level67(),
	level68(),
	level69(),
	level70(),
	level71(),
	level72(),
	level73(),
	level74(),
	level75(),
	level76(),
	level77(),
	level78(),
	level79(),
	level80(),
	level81(),
	level82(),
	level83(),
	level84(),
	level85(),
	level86(),
	level87(),
	level88(),
	level89(),
	level90(),
	level91(),
	level92(),
	level93(),
	level94(),
	level95(),
	level96(),
	level97(),
	level98(),
	level99(),
	level100(),
	level101(),
	level102(),
	level103(),
	level104(),
	level105(),
	level106(),
	level107(),
	level108(),
	level109(),
	level110(),
	level111(),
	level112(),
	level113(),
	level114(),
	level115(),
	level116(),
	level117(),
	level118(),
	level119(),
	level120(),
	level121(),
	level122(),
	level123(),
	level124(),
	level125(),
	level126(),
	level127(),
	level128(),
	level129(),
	level130(),
	level131(),
	level132(),
	level133(),
	level134(),
	level135(),
	level136(),
	level137(),
	level138(),
	level139(),
	level140()
	}
--
	hmaps={
	{{0}},--1
	select(2,level2()),--2
	select(2,level3()),--3
	{{0}},--4
	select(2,level5()),--5
	select(2,level6()),--6
	select(2,level7()),--7
	select(2,level8()),--7
	{{0}},--9
	{{0}},--10
	{{0}},--11
	{{0}},--12
	{{0}},--13
	{{0}},--14
	{{0}},--15
	{{0}},--16
	{{0}},--17
	{{0}},--18
	{{0}},--19
	{{0}},--20
	{{0}},--21
	{{0}},--22
	{{0}},--23
	{{0}},--24
	{{0}},--25
	{{0}},--26
	{{0}},--27
	{{0}},--28
	{{0}},--29
	{{0}},--30
	{{0}},--31
	{{0}},--32
	{{0}},--33
	{{0}},--34
	{{0}},--35
	{{0}},--36
	{{0}},--37
	{{0}},--38
	{{0}},--39
	{{0}},--40
	{{0}},--41
	{{0}},--42
	{{0}},--43
	{{0}},--44
	{{0}},--45
	{{0}},--46
	{{0}},--47
	{{0}},--48
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}},--49
	{{0}}
	}
end
reload()


	tilesdata = {} --tiledata
	for i=1,700 do
 		table.insert(tilesdata,love.image.newImageData("Tiles/"..i..".png"))
 	end

 	tiles = {} -- regular drawgable tiles
 	for i=1,700 do
 		table.insert(tiles,love.graphics.newImage(tilesdata[i]))
 	end


 	flags={}
 	flags.ground={1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,33,63,67,69,70,71,72,75,79,81,93,94,95,96,97,122,124,126,133,135,138,139,167,187,188,208,209,210,211,212,213,214,215,243,244,245,246,247,248,251,252,255,256,257,258,259,260,261,277,294,296,318,343,345,346,347,348,349,350,353,354,357,358,359,360,361,362,363,364,365,374,375,376,377,378,379,380,381,390,391,392,393,394,395,398,399,402,403,404,405,406,407,408,423,425,431,432,433,434,435,436,439,440,443,444,445,446,447,448,451,452,455,456,457,458,459,460,461,502,503,504,505,506,507,508,509,510,511,512,513,514,515,516,517,518,519,520,521,522,523,524,525,526,527,528,529,530,531,532,533,534,535,536,537,538,539,540,541,542,543,544,560,630,632,634,635,636,637,638,639,640,641,642,643,644,645,646,647,648,649,650,651,621,652,653,667,668,678,679,680,681,682,683,688}
 	flags.ground_spikes={25,26,27,29,189,190,191,192,221,222,223,224,566,567,568,569,598,599,600,602,689,690}
 	flags.right_spikes={101,102,103,104,193,194,195,196,225,226,227,228,570,571,572,573,602,603,604,605}
 	flags.left_spikes={105,106,107,108,197,198,199,200,229,230,231,232,574,575,576,577,606,607,608,609}
 	flags.up_spikes={109,110,111,112,201,202,203,204,233,234,235,236,578,579,580,581,610,611,612,613}
 	flags.flags={28}
 	flags.worldflags={59}
 	flags.gems={30,31,32,205,206,207,237,238,239}
 	flags.spring={35,36}
 	flags.right_spring={168,169}
 	flags.left_spring={170,171}
 	flags.super_spring={175,176}
 	flags.super_right_spring={177,178}
 	flags.super_left_spring={179,180}
 	flags.ultra_spring={181,182}
 	flags.ultra_right_spring={183,184}
 	flags.ultra_left_spring={185,186}
 	flags.breaking_spring={672,673}
 	flags.breaking_right_spring={674,675}
 	flags.breaking_left_spring={676,677}
 	flags.power_shoot={48}
 	flags.power_build={49}
 	flags.power_change={50}
 	flags.power_gravity={51}
 	flags.power_portal={54}
 	flags.power_explode={55}
 	flags.speedup={37,38,39,127,128,129,140,141,142}
 	flags.speeddown={40,41,42,130,131,132,143,144,145}
 	flags.speeddowndown={172,173,174}
 	flags.speeddowndowndown={116,117,118}
 	flags.speedupup={64,65,66}
 	flags.speedupupup={113,114,115}
 	flags.gravity={43,44,45,46,47}
 	flags.crazy={56}
 	flags.player_speedup={52}
 	flags.player_speeddown={53}
 	flags.power_wacky={56}
 	flags.door={57,58}
 	flags.teleport={60}
 	flags.teleport2={384}
 	flags.teleport3={427}
 	flags.teleport4={429}
 	flags.teleport5={386}
 	flags.teleport6={388}
 	flags.key={62}
 	flags.lazergate={72}
 	flags.switch={73}
 	flags.water={77,78,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,216,217,218,267,268,269,270}
 	flags.toxic_water={219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242}
 	flags.jumpboost={82,83,84,85,86,87,88,89,486,487,489,490,491,492,493,494,495,496,497,498,499,500,501}
 	flags.power_hover={90}
 	flags.power_umbrella={91}
 	flags.power_rock={92}
 	flags.conveyor_right={93,94}
 	flags.conveyor_left={95,96}
 	flags.conveyor_right={93,94}
 	flags.ice={97,423,425}
 	flags.future_ice={208,209,210,211,212,213,214,215,502,503,504,505,506,507,508,509,510,511,512,513,514,515,516,517,518,519,520,521,522,523,524,525}
 	flags.backwards_ice={294}
 	flags.powergenerator={98}
 	flags.reset={100}
 	flags.enemy_ground={119,120,121}
 	flags.explode={126}
 	flags.power_teleport={137}
 	flags.bomb={146}
 	flags.right_slime={147,148,149,150}
	flags.left_slime={151,152,153,154}
	flags.lazerswitch={158}
	flags.lazer={155,156,157,162,163,164}
	flags.breaking={167}
	flags.bridge={187}
	flags.platform={188}
	flags.reality_breaker={278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293}
	flags.power_time={295}
	flags.enemy_berserk={296}
	flags.enemy_ground_spikes={297,298,299,300}
 	flags.enemy_right_spikes={301,302,303,304}
 	flags.enemy_left_spikes={305,306,307,308}
 	flags.enemy_up_spikes={309,310,311,312}
	flags.power_ice={316}
	flags.power_droid={317}
	flags.fswitch={382}
	flags.bounce={343}
	flags.crash={561,562,563,564,565}
	flags.power_double={344}
	flags.upboost_ground={630,632}
	flags.power_remote={671}
	flags.lazer_trigger={678,683}
	flags.lazer_stop={680}
	flags.lazer_right={679}
	flags.lazer_left={688}
	flags.foliage={0,20,21,22,23,24,262,263,264,265,266,271,272,273,274,275,276,366,367,368,369,370,371,372,373,409,410,411,412,413,414,415,416,417,418,419,420,421,422}--put all the plants in here and other things that are allowed to be destoyed in here
 	flags.explodable={81,646,647,648,649,650,651,652,684,685,686,687,681,682}
 	flags.reveal={699}
 	flags.high_updatable={9999,9998,9997,9996,9995,9994,9993,9992,9991,9990,9989,9988}
 	flags.super_reveal={700}
 	flags.moving_ground={7,11}
 	--flags.updatable={30,31,32,33,34,36,61,63,67,68,69,70,71,75,76,79,80,82,83,84,85,86,87,88,89,93,94,95,96,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,138,139,140,141,142,143,144,145,155}

 	timer = {}
 	timer.menuscroll = 0
 	timer.menutest = 0
 	timer.interaction = 0
 	timer.animation=0
 	timer.animation2=0
 	timer.random_particle=0
 	timer.elapsed=0

 	settings = {}
 	settings.resolution = 1
 	settings.fullscreen = 1

 	bpl={}
 	bpl.up=false
 	bpl.down=false
 	bpl.left=false
 	bpl.right=false
 	bpl.a=false
 	bpl.x=false
 	bpl.leftshoulder=false
 	bpl.rightshoulder=false


 	resolutions = {"1920x1080","1280x720","640x480","3840x2016"}

 	player = {}

 	player.picsdata = {}--all player picture data
	for i=1,64 do
		table.insert(player.picsdata,love.image.newImageData("Player/"..i..".png"))
 	end

  	player.pics = {}-- all renderable picture data
  	for i=1,64 do
		table.insert(player.pics,love.graphics.newImage(player.picsdata[i]))
 	end
  	
  	startx=0
  	starty=328
  	telex=0--normal teleports
  	teley=0
  	telex2=0
  	teley2=0
  	telex3=0--inverted teleports
  	teley3=0
  	telex4=0
  	teley4=0
  	telex5=0--power teleports
  	teley5=0
  	telepower=0
  	telex6=0
  	teley6=0
  	telepower2=0

  	keydoorx=0
  	keydoory=0

  	bombptimer=0
  	bombtimer=0
  	bombactive=false

  	player.x=0
  	player.y=300
  	player.w=24
  	player.h=24
  	player.dx=0
  	player.dy=0
  	player.boost=0
  	player.boosty=0
  	player.speed=3
  	player.ani=1
  	player.power=0
  	player.power_extra=0
  	player.slide=10
  	player.tg=false
  	player.timer=0
  	player.gravchange=1
  	player.water=1
  	player.lbt=0
  	player.wacky=0
  	player.pause=false

  	player.super_chidden=false
  	player.chidden=false

  	particles={}

  	makeparticle=function(x,y,type,rgbtab,mometab)
  		local part = {}
  		part.type=type
  		if part.type==1 then--snow
  			part.x=x
  			part.y=y
  			part.dx=math.random(-100,100)/100
  			part.dy=math.random(100,150)/100
  			part.timer=9999
  		elseif part.type==2 then-- future
  			part.x=x
  			part.y=y
  			part.dx=math.random(-25,25)/100
  			part.dy=math.random(100,150)/100
  			part.timer=math.random(1,50)/10
  		elseif part.type==3 then-- future
  			part.x=x
  			part.y=y
  			part.dx=math.random(-25,25)/100
  			part.dy=math.random(100,150)/100
  			part.timer=math.random(1,50)/10
  		elseif part.type==4 then -- left toxic smoke
  			part.x=x
  			part.y=y
  			part.dx=math.random(0,-50)/100
  			part.dy=math.random(-50,-150)/100
  			part.timer=math.random(1,50)/10
  		elseif part.type==5 then -- right toxic smoke
  			part.x=x
  			part.y=y
  			part.dx=math.random(0,50)/100
  			part.dy=math.random(-50,-150)/100
  			part.timer=math.random(1,50)/10
  		elseif part.type==6 then -- toxic ambiance
  			part.x=x
  			part.y=y
  			part.dx=math.random(-50,50)/100
  			part.dy=math.random(-50,50)/100--180 320-330fps
  			part.timer=6.5
  		elseif part.type==7 then -- left Volcano smoke
  			part.x=x
  			part.y=y
  			part.dx=math.random(-75,-100)/100
  			part.dy=math.random(-50,-100)/100
  			part.timer=math.random(1,50)/10
  		elseif part.type==8 then -- right Volcano smoke
  			part.x=x
  			part.y=y
  			part.dx=math.random(75,100)/100
  			part.dy=math.random(-50,-100)/100
  			part.timer=math.random(1,50)/10
  		elseif part.type==9 then -- fire from grey tile
  			part.x=x
  			part.y=y
  			part.dx=math.random(-25,25)/100
  			part.dy=math.random(-25,-75)/100
  			part.timer=math.random(35,70)/10
  		elseif part.type==10 then -- Volcano ambiance 1
  			part.x=x
  			part.y=y
  			if math.random(1,15)==15 then
  				part.rnd=1
	  		else
	  			part.rnd=0
	  		end
  			part.dx=math.random(-100,100)/100
  			part.dy=math.random(-150,-250)/100
  			part.timer=math.random(1,50)/10
  		elseif part.type==11 then -- Volcano ambiance 2
  			part.x=x
  			part.y=y
  			part.rnd=math.random(1,3)
  			part.dx=math.random(-75,75)/100
  			part.dy=math.random(-75,75)/100
  			part.timer=6.5
  		elseif part.type==12 then -- Rain in water world
  			part.x=x
  			part.y=y
  			part.dx=math.random(-10,10)/100
  			part.dy=math.random(1000,1200)/100
  			part.timer=9999
  		elseif part.type==13 then -- ruins wind left
  			part.x=x
  			part.y=y
  			if math.random(1,3)==3 then
  				part.rnd=1
	  		else
	  			part.rnd=0
	  		end
  			part.dx=math.random(-200,-300)/100
  			part.dy=math.random(25,50)/100
  			part.timer=9999
  		elseif part.type==14 then -- ruins wind right
  			part.x=x
  			part.y=y
  			if math.random(1,3)==3 then
  				part.rnd=1
	  		else
	  			part.rnd=0
	  		end
  			part.dx=math.random(200,300)/100
  			part.dy=math.random(25,50)/100
  			part.timer=9999
  		elseif part.type==15 then--plains partical
  			part.x=x
  			part.y=y
  			part.dx=0
  			part.dy=math.random(100,150)/100
  			part.timer=0
  			part.timer2=0
  			part.switch=math.random(0,1)

  			if love.math.random(1,8)==1 then
  				part.rnd=1
	  		elseif love.math.random(1,7)==1 then
	  			part.rnd=2
	  		else
	  			part.rnd=0
	  		end
	  	elseif part.type==16 then--rgb particle used for makeing things explode
  			part.x=x
  			part.y=y
  			part.dx=mometab[1]
  			part.dy=mometab[2]
  			part.timer=mometab[3]
  			part.rgb=rgbtab
  			part.extra=mometab[4]
  		elseif part.type==17 then--words for powerups and gems 
  			part.x=player.x
  			part.y=player.y-20
  			part.dx=0
  			part.dy=-1
  			part.rgb=rgbtab
  			part.text=mometab[1]
  			part.timer=mometab[2]
  		end

		table.insert(particles, part)		
	end

	player.face="right"
	player.bullets={}
	player.makebullet=function(x,y,dx,dy,type)
		local bullet={}
		bullet.x=x
		bullet.y=y
		bullet.w=28
		bullet.h=8
		bullet.dx=dx
		bullet.dy=dy
		bullet.type=type
		table.insert(player.bullets,bullet)
	end

	bullets={}

	bullet_picsdata={
		love.image.newImageData("Bullets/SquishyBullet.png"),
		love.image.newImageData("Bullets/Enemy1.png"),
		love.image.newImageData("Bullets/Enemy2.png")
	}
	bullet_pics={
		love.graphics.newImage(bullet_picsdata[1]),
		love.graphics.newImage(bullet_picsdata[2]),
		love.graphics.newImage(bullet_picsdata[3])
	}

	enemies = {}
	enemies.picsdata={
		love.image.newImageData("Enemies/Bouncy/1.png"), --Bouncy 1
		love.image.newImageData("Enemies/Bouncy/2.png"),
		love.image.newImageData("Enemies/Bouncy/3.png"),
		love.image.newImageData("Enemies/Bouncy/4.png"),
		love.image.newImageData("Enemies/Bouncy/5.png"),
		love.image.newImageData("Enemies/Bouncy/6.png"),
		love.image.newImageData("Enemies/Shooty/1.png"), --shooty 7
		love.image.newImageData("Enemies/Shooty/2.png"),
		love.image.newImageData("Enemies/Shooty/3.png"),
		love.image.newImageData("Enemies/SuperShooty/1.png"), --SuperShooty 10
		love.image.newImageData("Enemies/SuperShooty/2.png"),
		love.image.newImageData("Enemies/SuperShooty/3.png"),
		love.image.newImageData("Enemies/Walky/1.png"),--Walky 13
		love.image.newImageData("Enemies/Walky/2.png"),
		love.image.newImageData("Enemies/Walky/3.png"),
		love.image.newImageData("Enemies/Walky/4.png"),
		love.image.newImageData("Enemies/Walky/5.png"),
		love.image.newImageData("Enemies/Walky/6.png"),
		love.image.newImageData("Enemies/Walky/7.png"),
		love.image.newImageData("Enemies/Walky/8.png"),
		love.image.newImageData("Enemies/Walky/9.png"),
		love.image.newImageData("Enemies/Walky/10.png"),
		love.image.newImageData("Enemies/Walky/11.png"),
		love.image.newImageData("Enemies/Walky/12.png"),
		love.image.newImageData("Enemies/Walky/13.png"),
		love.image.newImageData("Enemies/Walky/14.png"),
		love.image.newImageData("Enemies/Walky/15.png"),
		love.image.newImageData("Enemies/Walky/16.png"),
		love.image.newImageData("Enemies/Walky/17.png"),
		love.image.newImageData("Enemies/Walky/18.png"),
		love.image.newImageData("Enemies/Walky/19.png"),
		love.image.newImageData("Enemies/Walky/20.png"),
		love.image.newImageData("Enemies/Boosty/1.png"),--Boosty 33
		love.image.newImageData("Enemies/Boosty/2.png"),
		love.image.newImageData("Enemies/Boosty/3.png"),
		love.image.newImageData("Enemies/Boosty/4.png"),
		love.image.newImageData("Enemies/Boosty/5.png"),
		love.image.newImageData("Enemies/Boosty/6.png"),
		love.image.newImageData("Enemies/Boosty/7.png"),
		love.image.newImageData("Enemies/Boosty/8.png"),
		love.image.newImageData("Enemies/Boosty/9.png"),
		love.image.newImageData("Enemies/Snipey/1.png"),--Snipey 45
		love.image.newImageData("Enemies/Snipey/2.png"),
		love.image.newImageData("Enemies/Snipey/3.png"),
		love.image.newImageData("Enemies/Snipey/4.png"),
		love.image.newImageData("Enemies/Snipey/5.png"),
		love.image.newImageData("Enemies/Snipey/6.png"),
		love.image.newImageData("Enemies/Breaking/1.png"),--breaking 48
		love.image.newImageData("Enemies/Tracky/1.png"),--breaking 49
		love.image.newImageData("Enemies/Tracky/2.png"),
		love.image.newImageData("Enemies/Tracky/3.png"),
		love.image.newImageData("Enemies/Lazer/1.png"),--lazer 52
		love.image.newImageData("Boss/Plains/Boss/1.png"),--Plains Boss 53
		love.image.newImageData("Boss/Plains/Boss/2.png"),--Plains Boss 54
		love.image.newImageData("Boss/Plains/Boss/3.png"),--Plains Boss 55
		love.image.newImageData("Boss/Plains/Boss/4.png"),--Plains Boss 56
		love.image.newImageData("Boss/Plains/Boss/5.png"),--Plains Boss 57
		love.image.newImageData("Boss/Plains/Boss/6.png"),--Plains Boss 58
		love.image.newImageData("Boss/Plains/Boss/7.png"),--Plains Boss 59
		love.image.newImageData("Boss/Plains/Boss/8.png"),--Plains Boss 60
		love.image.newImageData("Boss/Plains/Boss/9.png"),--Plains Boss 61
		love.image.newImageData("Boss/Plains/Boss/10.png"),--Plains Boss 62
		love.image.newImageData("Boss/Plains/Boss/11.png"),--Plains Boss 63
		love.image.newImageData("Boss/Plains/Boss/12.png"),--Plains Boss 64
		love.image.newImageData("Boss/Water/Boss/1.png"),--Water Boss 65
		love.image.newImageData("Boss/Water/Boss/2.png"),--Water Boss 66
		love.image.newImageData("Boss/Water/Boss/3.png"),--Water Boss 67
		love.image.newImageData("Boss/Water/Boss/4.png"),--Water Boss 68
		love.image.newImageData("Boss/Water/Boss/5.png"),--Water Boss 69 lmao
		love.image.newImageData("Boss/Water/Boss/6.png"),--Water Boss 70
		love.image.newImageData("Boss/Water/Boss/7.png"),--Water Boss 71
		love.image.newImageData("Boss/Water/Boss/8.png"),--Water Boss 72
		love.image.newImageData("Boss/Water/Boss/8.png"),--Water Boss 73
		love.image.newImageData("Boss/Water/Boss/8.png"),--Water Boss 74
		love.image.newImageData("Boss/Water/Boss/8.png"),--Water Boss 75
		love.image.newImageData("Boss/Water/Boss/8.png"),--Water Boss 76
		love.image.newImageData("Enemies/FlowerPlatform/1.png")--flower platform 77
	}

	enemies.pics={
	}
	for i=1,77 do
		table.insert(enemies.pics,love.graphics.newImage(enemies.picsdata[i]))
	end


	enemies.enemies={}
	enemies.bullets={}
	createbullet=function(x,y,dx,dy,t,life)
		local b={}
		b.x=x
		b.y=y
		b.dx=dx
		b.dy=dy
		b.type=t
		b.life=life
		b.w=0
		b.h=0
		table.insert(enemies.bullets,b)
	end


	enemies.create=function(x,y,type,plat_typer)
		local enemy={}
		enemy.x=x
		enemy.y=y
		enemy.w=0
		enemy.h=0
		enemy.dx=0
		enemy.dy=0
		enemy.sx=x
		enemy.sy=y
		enemy.ani=1
		enemy.tg=false
		enemy.face="right"
		enemy.type=type
		enemy.timer=0
		enemy.action=0
		enemy.extra=0
		--boss
		enemy.attack=1
		enemy.numattack=0
		enemy.last_phase=0
		if plat_typer ~= nil then
			enemy.plat_type=plat_typer
		else
			enemy.plat_type=1
		end
		if type == 1 then--bouncy
			enemy.health=1
		elseif type == 2 then--shooty
			enemy.health=3
		elseif type == 3 then--super shooty
			enemy.health=5
			enemy.dx=2
		elseif type == 4 then--walky
			enemy.health=3
		elseif type == 5 then--boosty
			enemy.health=5
		elseif type == 6 then--snipey
			enemy.health=5
		elseif type == 7 then--platoforms
			if enemy.plat_type == 1 then
				enemy.health=9999
			elseif enemy.plat_type == 2 then
				enemy.health=9999
				enemy.dx=1.4
			end
		elseif type == 8 then--Trackys
			enemy.health=3
		elseif type == 9 then--Tracky offspring
			enemy.health=1
		elseif type == 10 then--lazer offspring
			enemy.health=9999
		elseif type == "b1" then--boss 1
			enemy.health=30
		elseif type == "b2" then--boss 2
			enemy.health=12
		end
		table.insert(enemies.enemies, enemy)
	end
  	gravity=0.25

  	scrollx=0
  	scrolly=0

  	levels = {}
  	levels.scale={2,2,2,2,2,2,2,3,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1.5,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1.7,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2.5,2,2,2,2,2,2,2,2,2,2.6,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2.5,2,2,2,2,2,2,2,3,2,1.7,2,2,2,2,2,2,2,2,2.4,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2}--133 is the last number
  	levels.snow_intensity={1,3,4,4,2,3,1,2,3,3,2,2,4,3,2,3,4,3,3,2,2,5,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,1,2,1,1,2,1,2,2,1,2,2,2,1,2,2,1,2,1,2,1,2,10,10,10,15,5,15,10,10,15,15,15,15,10,10,15,10,15,10,15,10,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,50,30,30,5,30,31,32,30,35,30,30,30,50,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160}--160 is the last number
  	levels.unlocked = 3
  	levels.current = 1
  	levels.challenges = 0
  	levels.state=0
  	levels.statec=0
  	levels.stateb=0
  	levels.stated=0
  	levels.statee=0
  	levels.statef=0

  	--level 9, level:
  	--1 is left to right | 2 is top to bottom | 3 is right to left | 4 is bottom to top
  	levels.scroll={0,0,0,0,0,0,0,0,1,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,1,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0}--last is 132
   levels.scrolls={0,0,0,0,0,0,0,0,1,0,0,0,0,.4,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1.2,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,.75,0,0,1.25,0,0,0,0,0,0,0,.65,0,0,0,0,0,0,0,0,0,0,0,5,0,0,4.75,0,0}--last is 132
  	levels.doors={
  		{{3,11,3},{17,11,10}},
  		{{3,11,3},{17,11,10}},
  		{},
  		{},
  		{},
  		{},
  		{},
  		{},
  		{},
  		{},
  		{},
  		{{5,14,13}},--12
  		{},--13
  		{},--14
  		{},--15
  		{},
  		{},--17
  		{},
  		{},--19
  		{},
  		{},--21
  		{},
  		{},--23
  		{},
  		{},--25
  		{},--26
  		{},--27
  		{},--28
  		{},--29
  		{},--30
  		{},--31
  		{},--32
  		{},--33
  		{},--34
  		{},--35
  		{},--36
  		{},--37
  		{},--38
  		{},--39
  		{},--40
  		{},--41
  		{{15,15,161}},--42
  		{{3,12,162}},--43
  		{},--44
  		{{7,17,163}},--45
  		{{29,16,164}},--46
  		{},--47
  		{},--48
  		{},--49
  		{},--50
  		{},--51
  		{{3,2,165}},--52
  		{},--53
  		{},--54
  		{},--55
  		{},--56
  		{},--57
  		{{5,15,166},{29,4,167}},--58
  		{},--59
  		{{25,2,170}},--60
  		{},--61
  		{},--62
  		{},--63
  		{},--64
  		{},--65
  		{},--66
  		{},--67
  		{},--68
  		{},--69
  		{},--70
  		{{2,13,171},{30,10,172}},--71
  		{},--72
  		{},--73
  		{},--74r
  		{},--75
  		{},--76
  		{},--77
  		{},--78
  		{},--79
  		{},--80
  		{},--81
  		{},--82
  		{},--83
  		{},--84
  		{{16,11,175},{5,6,176}},--85
  		{},--86r
  		{},--88
  		{},--88
  		{},--89
  		{},--90
  		{},--91
  		{},--92
  		{},--93
  		{},--94
  		{},--95
  		{},--96
  		{},--97
  		{},--98
  		{},--99
  		{},--100
  		{},--101
  		{{59,1,177}},--102
  		{},--103
  		{},--104
  		{},--105
  		{},--106
  		{},--107
  		{},--108
  		{{40,13,178}},--109
  		{},--110
  		{},--111
  		{},--112
  		{},--113
  		{},--114
  		{{21,20,179}},--115
  		{},--116
  		{},--117
  		{},--118
  		{},--119
  		{},--120
  		{},--121
  		{},--122
  		{},--123
  		{},--124
  		{},--125
  		{},--126
  		{},--127
  		{},--128
  		{}
  	}

  	scores={}
  	scores.deaths=0
  	scores.gems=0
  	scores.kills=0
  	scores.time=0
  	scores.levelGems={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}

  	extras={}
  	extras.gravitybar={
  		love.graphics.newImage("Extras/gravitybar1.png"),
  		love.graphics.newImage("Extras/gravitybar2.png"),
  		love.graphics.newImage("Extras/gravitybar3.png"),
  		love.graphics.newImage("Extras/gravitybar4.png"),
  		love.graphics.newImage("Extras/gravitybar5.png")
  	}
  	extras.amb={
  		love.graphics.newImage("Extras/amb/volcano_left.png"),
  		love.graphics.newImage("Extras/amb/volcano_bottom.png")
  	}
  	extras.doublebar={
  		love.graphics.newImage("Extras/doublebar1.png"),
  		love.graphics.newImage("Extras/doublebar2.png"),
  		love.graphics.newImage("Extras/doublebar3.png"),
  		love.graphics.newImage("Extras/doublebar4.png"),
  		love.graphics.newImage("Extras/doublebar5.png")
  	}
  	extras.remotebar={
  		love.graphics.newImage("Extras/remotebar1.png"),
  		love.graphics.newImage("Extras/remotebar2.png"),
  		love.graphics.newImage("Extras/remotebar3.png"),
  		love.graphics.newImage("Extras/remotebar4.png"),
  		love.graphics.newImage("Extras/remotebar5.png")
  	}
  	extras.particles={
  		love.graphics.newImage("Extras/Particles/smoke.png"),
  		love.graphics.newImage("Extras/Particles/Toxic.png"),
  		love.graphics.newImage("Extras/Particles/Volcano1.png"),
  		love.graphics.newImage("Extras/Particles/Volcano2.png")
  	}
  	extras.gloweffect={--for the player
  		love.graphics.newImage("Extras/gloweffect1.png"),
  		love.graphics.newImage("Extras/gloweffect2.png"),
  		love.graphics.newImage("Extras/gloweffect3.png"),
  		love.graphics.newImage("Extras/gloweffect4.png")
  	}
  	extras.blockglow={--only used for the enemy beserer
  		love.graphics.newImage("Extras/blockglow.png")
  	}
  	extras.pausemenu={
  		love.graphics.newImage("Extras/pausemenu.png"),
  		love.graphics.newImage("Extras/pausemenu1.png"),
  		love.graphics.newImage("Extras/pausemenu2.png")
  	}
  	extras.telepreview={
  		love.graphics.newImage("Extras/telepreview.png"),
  		love.graphics.newImage("Extras/telepreview2.png")
  	}
  	extras.portalPower={
  		love.graphics.newImage("Extras/PortalDisplay/1.png"),
  		love.graphics.newImage("Extras/PortalDisplay/2.png"),
  		love.graphics.newImage("Extras/PortalDisplay/3.png"),
  		love.graphics.newImage("Extras/PortalDisplay/4.png"),
  		love.graphics.newImage("Extras/PortalDisplay/5.png"),
  		love.graphics.newImage("Extras/PortalDisplay/6.png"),
  		love.graphics.newImage("Extras/PortalDisplay/7.png"),
  		love.graphics.newImage("Extras/PortalDisplay/8.png"),
  		love.graphics.newImage("Extras/PortalDisplay/9.png"),
  		love.graphics.newImage("Extras/PortalDisplay/10.png"),
  		love.graphics.newImage("Extras/PortalDisplay/11.png"),
  		love.graphics.newImage("Extras/PortalDisplay/12.png"),
  		love.graphics.newImage("Extras/PortalDisplay/13.png"),
  		love.graphics.newImage("Extras/PortalDisplay/14.png")
  	}
  	extras.boss1={
  		love.graphics.newImage("Boss/Plains/Extras/BossBar.png"),
  		love.graphics.newImage("Boss/Plains/Extras/BossBarMulti.png"),
  		love.graphics.newImage("Boss/Plains/Extras/Warning.png"),
  		love.graphics.newImage("Boss/Plains/Extras/rock1.png"),
  		love.graphics.newImage("Boss/Plains/Extras/spike.png")
  	}
  	extras.boss2={
  		love.graphics.newImage("Boss/Water/Extras/BossBar.png"),
  		love.graphics.newImage("Boss/Water/Extras/BossBarMulti.png"),
  		love.graphics.newImage("Boss/Water/Extras/Lightning.png"),
  		love.graphics.newImage("Boss/Water/Extras/Big_Lightning.png"),
  		love.graphics.newImage("Boss/Water/Extras/explode_cloud.png"),
  		love.graphics.newImage("Boss/Water/Extras/Cloud_Lightning.png")
  	}

 	menu = {}
 	menu.x = 0 
 	menu.y = 0
 	menu.scene = 1
 	menu.test = "string"

	scene = 1 -- 1 = menu | 2 = map | 3 = game |




end

function love.update(dt)
	--if dt >= 0.00833333333 then --120
	--	dt=0.00833333333
	--end
	
	--if dt >= 0.0166666667 then --60
	--	dt=0.0166666667
	--end
  	--updates that parts of the games
	if scene == 1 then
		updatemenu(dt)
	elseif scene == 2 then
		updatemap(dt)
	elseif scene == 3 then
		updategame(dt)
	end


	--part of the input last frame check
	bpl.up=get_input("up",false)
 	bpl.down=get_input("down",false)
 	bpl.left=get_input("left",false)
 	bpl.right=get_input("right",false)
 	bpl.a=get_input("a",false)
 	bpl.x=get_input("x",false)
 	bpl.leftshoulder=get_input("leftshoulder",false)
 	bpl.rightshoulder=get_input("rightshoulder",false)
end

function love.draw()
	love.graphics.scale(love.graphics.getWidth()/1920,love.graphics.getHeight()/1080)
	if scene == 1 then
		drawmenu()
	elseif scene == 2 then
		drawmap()
	elseif scene == 3 then
		drawgame()
	end
end

function love.joystickadded(joystick)
	player.controller=joystick
	sounds.player_lazergate:play()
end

function updatemenu(dt)
	--timer stuff start
	if timer.menuscroll < -1919 then
		timer.menuscroll = 0
	else
		timer.menuscroll = timer.menuscroll - dt*40
	end
	
	if menu.scene ==  3 then
		timer.menutest = timer.menutest+dt*2
	end
	--timer stuff end
	sounds.music_menu:play()
	--inputs
	if scene == 1 then -- Menu screen
		if menu.scene == 1 then -- title screen
			if get_input("up",true) then -- controlling the position
				if menu.y > 0 then
					menu.y = menu.y - 1
					sounds.menu_move:play()
				end
			elseif get_input("down",true) then
				if menu.y < 3 then
					menu.y = menu.y + 1
					sounds.menu_move:play()
				end

			end
			if get_input("a",true) or get_input("x",true) then
				if menu.y == 0 then -- Start game button
					love.audio.stop()
					sounds.menu_select:play()
					menu.y = 0
					menu.x = 0
					scene = 2
					player.x=startx
					player.y=starty
				elseif menu.y == 1 then -- Load Game button
					sounds.menu_select:play()
					menu.scene = 5
					menu.y = 0
				elseif menu.y == 2 then -- settings button
					sounds.menu_select:play()
					menu.scene = 2
					menu.y = 0
				elseif menu.y == 3 then-- Exit button
					love.event.quit()
				end
			end
		elseif menu.scene == 2 then
			if get_input("up",true) then -- controlling the position
				if menu.y > 0 then
					menu.y = menu.y - 1
					sounds.menu_move:play()
				end
			elseif get_input("down",true) then
				if menu.y < 4 then
					menu.y = menu.y + 1
					sounds.menu_move:play()
				end
			end
			if get_input("a",true) or get_input("x",true) then
				if menu.y == 0 then -- Resolution Button
					sounds.menu_select:play()
						if settings.resolution == 1 then
							settings.resolution = 2
							love.window.setMode(1280,720)
							love.window.setVSync(0)
						elseif settings.resolution == 2 then
							settings.resolution = 3
							love.window.setMode(640,480)
							love.window.setVSync(0)
						elseif settings.resolution == 3 then
							settings.resolution = 4
							love.window.setMode(3840,2160)
							love.window.setVSync(0)
						elseif settings.resolution == 4 then
							settings.resolution = 1
							love.window.setMode(1920,1080)
							love.window.setVSync(0)
						end
				elseif menu.y == 1 then --Fullscreen button
					sounds.menu_select:play()
					if settings.fullscreen == 0 then
						settings.fullscreen = 1
						love.window.setFullscreen(true)
					else
						settings.fullscreen = 0
						love.window.setFullscreen(false)
					end
				elseif menu.y == 2 then -- Performance test button
					sounds.menu_select:play()
					menu.scene = 3
					menu.y = 0
				elseif menu.y == 3 then -- Credits button
					sounds.menu_select:play()
					menu.scene = 4
					menu.y = 0
				elseif menu.y == 4 then -- Back button 
					sounds.menu_select:play()
					menu.scene = 1
					menu.y = 0
				end
			end
		elseif menu.scene == 3 then
			if get_input("a",true) or get_input("x",true) then
				sounds.menu_select:play()
				menu.scene = 2
				menu.y = 0
				timer.menutest = 0
			end
		elseif menu.scene == 4 then
			if get_input("a",true) or get_input("x",true) then
				sounds.menu_select:play()
				menu.scene = 2
				menu.y = 0
			end
		elseif menu.scene == 5 then
			if get_input("up",true) then -- controlling the position
				if menu.y > 0 then
					menu.y = menu.y - 1
					sounds.menu_move:play()
				end
			elseif get_input("down",true) then
				if menu.y < 3 then
					menu.y = menu.y + 1
					sounds.menu_move:play()
				end
			end
			if get_input("left",true) then -- controlling the position
				if menu.x > 0 then
					menu.x = menu.x - 1
					sounds.menu_move:play()
				end
			elseif get_input("right",true) then
				if menu.x < 1 then
					menu.x = menu.x + 1
					sounds.menu_move:play()
				end
			end
			if get_input("a",true) or get_input("x",true) then
				if menu.y == 0 and menu.x == 0 then -- Slot 1
				elseif menu.y == 0 and menu.x == 1 then -- Delete Slot 1
				elseif menu.y == 1 and menu.x == 0 then-- Slot 2
				elseif menu.y == 1 and menu.x == 1 then -- Delete Slot 2
				elseif menu.y == 2 and menu.x == 0 then-- Slot 3
				elseif menu.y == 2 and menu.x == 1 then -- Delete Slot 3
				elseif menu.y == 3 then-- Back
					sounds.menu_select:play()
					menu.y = 0
					menu.x = 0
					menu.scene = 1
				end

			end
		elseif false then
		end
	end
end


function updatemap(dt)
	if levels.current ~= 1 then
		levels.current = levels.current + 1
	end
	level_init()
	--love.audio.stop()
	scene = 3
end












function updategame(dt)--begining of the function
	if player.pause then--pause menu stuff
		if get_input("up",true) then -- controlling the position
			if menu.y > 0 then
				menu.y = menu.y - 1
				sounds.menu_move:play()
			end
		elseif get_input("down",true) then
			if menu.y < 1 then
				menu.y = menu.y + 1
				sounds.menu_move:play()
			end
		end
		if get_input("a",true) or get_input("x",true) then
			if menu.y==0 then
				sounds.player_unpause:play()
				player.pause = false
			elseif menu.y==1 then
				sounds.menu_select:play()
				scene=2
			end
		end
	else --if not paused
		--pausing
		if get_input("start",true) then
			menu.y=0
			player.pause = true
			love.audio.stop(sounds.player_pause)
			sounds.player_pause:play()
		end
		--end of pausing
		--Music start
		if levels.current <= 19 then
			sounds.music_plains:play()
		elseif levels.current == 20 or levels.current == 40 then
			sounds.music_bonus:play()
		elseif levels.current <= 39 then
			sounds.music_water:play()
		elseif levels.current <= 60 then
			sounds.music_ruins:play()
		elseif levels.current <= 80 then
			sounds.music_snow:play()
		elseif levels.current <= 100 then
			sounds.music_futurecity:play()
		elseif levels.current <= 120 then
			sounds.music_toxic:play()
		elseif levels.current <= 140 then
			sounds.music_volcano:play()
		elseif levels.current <= 160 then
			sounds.music_space:play()
		end
		--music end

		--timers
		if levels.statee==0 then
			if player.timer > 0 then
				player.timer = player.timer - dt
			end
		end

		if levels.statee==0 then
			timer.elapsed=timer.elapsed+dt
		end

		if player.power==2 or player.power == 6 then
			if player.timer < 0.1 and player.timer > 0 then
				sounds.player_build_back:play()
			end
		end

		if levels.statee==0 then
			if timer.interaction > 0 then
				timer.interaction = timer.interaction - dt
			end
		end

		if levels.statee==0 then
			if timer.animation > 0 then -- first animation timer
				timer.animation=timer.animation -dt
			else
				timer.animation=2 
			end
		end

		if levels.statee==0 then
			if timer.animation2 > 0 then -- second animation timer
				timer.animation2=timer.animation2-dt*4
			else
				timer.animation2=2 
			end
		end

		if levels.statee==0 then
			if bombactive then
				bombtimer=bombtimer-dt
				bombptimer=bombtimer+dt
			end
		end

		if levels.statee==0 then-- bomb sounds
			if not (math.floor(bombtimer) == math.floor(bombptimer)) then
				if bombtimer < 4.1 then
					sounds.bombtick:play()
				end
			end
		end

		if levels.statee==0 then--timer count down
			timer.random_particle=timer.random_particle-dt
		end
		--timers end

		--particles
		if levels.statee==0 then
			if levels.current < 21 then
				if timer.random_particle <=0 then--create plains particles
					--for i=1, #maps[levels.current][1]/30*levels.snow_intensity[levels.current] do
					--	makeparticle(math.random(1,(#maps[levels.current][1]*32)),math.random(-1,-100),15)
					--end
					--timer.random_particle=1
					for i=1, math.ceil(((60/levels.scale[levels.current]))/30)*(levels.snow_intensity[levels.current]) do
						makeparticle(math.random(math.abs(scrollx),((math.abs(scrollx)+(60/levels.scale[levels.current]*32)))),math.random(-1,-100),15)
					end
					timer.random_particle=1
				end
			elseif levels.current > 20 and levels.current < 41 then --create rain particles
				if timer.random_particle <=0 then
					for i=1, #maps[levels.current][1]/4*levels.snow_intensity[levels.current] do
						makeparticle(math.random(1,(#maps[levels.current][1]*32)),math.random(-1,-1600),12)
					end
					timer.random_particle=1
				end
			elseif levels.current > 40 and levels.current < 61 then --create wind particles
				if timer.random_particle <=0 then
					if levels.snow_intensity[levels.current]==1 then--make left
						for i=1, #maps[levels.current][1] do
							makeparticle(math.random(#maps[levels.current][1]*32,#maps[levels.current][1]*32+100),math.random(-(#maps[levels.current][1]*32)*2,#maps[levels.current]*32),13)
						end
					else
						for i=1, #maps[levels.current][1] do-- right
							makeparticle(math.random(-100,1),math.random(-(#maps[levels.current][1]*32)*2,#maps[levels.current]*32),14)
						end
					end
					timer.random_particle=1
				end
			elseif levels.current > 60 and levels.current < 81 then--create snow particals
				if timer.random_particle <=0 then
					for i=1, ((60/levels.scale[levels.current]))/2*(levels.snow_intensity[levels.current]) do
						makeparticle(math.random(math.abs(scrollx),((math.abs(scrollx)+(60/levels.scale[levels.current]*32)))),math.random(-1,-100),1)
					end
					timer.random_particle=1
				end
			elseif levels.current > 100 and levels.current < 121 then--creates toxic particles
				if timer.animation==2 then
					for a=1, #maps[levels.current][1]*#maps[levels.current] do
						if math.random(0,6)==6 then
							makeparticle(math.random(1,(#maps[levels.current][1]*32)),math.random(1,#maps[levels.current]*32),6)
						end
					end
				end
			elseif levels.current > 120 and levels.current < 141 then--creates volcano particles
				if timer.random_particle <= 0 then
					for a=1, ((60/levels.scale[levels.current])*(#maps[levels.current]/17))*(levels.snow_intensity[levels.current]) do
						if math.random(0,6)==6 then
							makeparticle(math.random(math.abs(scrollx),((math.abs(scrollx)+(60/levels.scale[levels.current]*32)))),#maps[levels.current]*32+math.random(1,100),10)
						end
						timer.random_particle=1
					end
				end
				if timer.animation==2 then
					for a=1, ((60/levels.scale[levels.current])*(#maps[levels.current]/17))*#maps[levels.current] do
						if math.random(0,6)==6 then
							makeparticle(math.random(math.abs(scrollx),((math.abs(scrollx)+(60/levels.scale[levels.current]*32)))),math.random(1,#maps[levels.current]*32),11)
						end
					end
				end
			end
			for i,p in ipairs(particles) do--particle updating
				if p.type == 1 then
					p.x = p.x + dt*(p.dx*60)
					p.y = p.y + dt*(p.dy*60)
					p.timer = p.timer - dt
					if p.y > (#maps[levels.current]*32) or p.x < math.abs(scrollx)-32 or p.x > math.abs(scrollx)+(60/levels.scale[levels.current]*32)+32 or p.timer <= 0 then
						if p.x < math.abs(scrollx) then
							p.x=p.x+(60/levels.scale[levels.current]*32)+32
						elseif p.x > math.abs(scrollx)+(60/levels.scale[levels.current]*32) then
							p.x=p.x-(60/levels.scale[levels.current]*32)-32
						else
							table.remove(particles, i)
						end
					end
				elseif p.type==2 then
					p.x = p.x + dt*(p.dx*60)
					p.y = p.y + dt*(p.dy*60)
					p.timer = p.timer - dt
					if p.y > (#maps[levels.current]*32) or p.x < 1 or p.x > #maps[levels.current][1]*32 or p.timer <= 0 then
						table.remove(particles, i)
					end
				elseif p.type==3 then
					p.x = p.x + dt*(p.dx*60)
					p.y = p.y + dt*(p.dy*60)
					p.timer = p.timer - dt
					if p.y > (#maps[levels.current]*32) or p.x < 1 or p.x > #maps[levels.current][1]*32 or p.timer <= 0 then
						table.remove(particles, i)
					end
				elseif p.type==4 then
					p.x = p.x + dt*(p.dx*60)
					p.y = p.y + dt*(p.dy*60)
					p.timer = p.timer - dt
					if p.y > (#maps[levels.current]*32) or p.x < 1 or p.x > #maps[levels.current][1]*32 or p.timer <= 0 then
						table.remove(particles, i)
					end
				elseif p.type==5 then
					p.x = p.x + dt*(p.dx*60)
					p.y = p.y + dt*(p.dy*60)
					p.timer = p.timer - dt
					if p.y > (#maps[levels.current]*32) or p.x < 1 or p.x > #maps[levels.current][1]*32 or p.timer <= 0 then
						table.remove(particles, i)
					end
				elseif p.type==6 then
					p.x = p.x + dt*(p.dx*60)
					p.y = p.y + dt*(p.dy*60)
					p.timer = p.timer - dt
					if p.y > (#maps[levels.current]*32) or p.x < 1 or p.x > #maps[levels.current][1]*32 or p.timer <= 0 then
						table.remove(particles, i)
					end
				elseif p.type==7 then
					p.x = p.x + dt*(p.dx*60)
					p.y = p.y + dt*(p.dy*60)
					p.timer = p.timer - dt
					if p.y > (#maps[levels.current]*32) or p.x < 1 or p.x > #maps[levels.current][1]*32 or p.timer <= 0 then
						table.remove(particles, i)
					end
				elseif p.type==8 then
					p.x = p.x + dt*(p.dx*60)
					p.y = p.y + dt*(p.dy*60)
					p.timer = p.timer - dt
					if p.y > (#maps[levels.current]*32) or p.x < 1 or p.x > #maps[levels.current][1]*32 or p.timer <= 0 then
						table.remove(particles, i)
					end
				elseif p.type==9 then
					p.x = p.x + dt*(p.dx*60)
					p.y = p.y + dt*(p.dy*60)
					p.timer = p.timer - dt
					if p.y > (#maps[levels.current]*32) or p.x < 1 or p.x > #maps[levels.current][1]*32 or p.timer <= 0 then
						table.remove(particles, i)
					end
				elseif p.type==10 then
					p.x = p.x + dt*(p.dx*60)
					p.y = p.y + dt*(p.dy*60)
					p.dy = p.dy + dt*(gravity*3)
					p.timer = p.timer - dt
					if (p.y > (#maps[levels.current]*32) and not (string.sub(p.dy,1,1)=="-")) or p.x < math.abs(scrollx)-32 or p.x > math.abs(scrollx)+(60/levels.scale[levels.current]*32)+32 or p.timer <= 0 then
						if p.x < math.abs(scrollx) then
							p.x=p.x+(60/levels.scale[levels.current]*32)+32
						elseif p.x > math.abs(scrollx)+(60/levels.scale[levels.current]*32) then
							p.x=p.x-(60/levels.scale[levels.current]*32)-32
						else
							table.remove(particles, i)
						end
					end
				elseif p.type==11 then
					p.x = p.x + dt*(p.dx*60)
					p.y = p.y + dt*(p.dy*60)
					p.timer = p.timer - dt
					if p.y > (#maps[levels.current]*32) or p.x < math.abs(scrollx)-32 or p.x > math.abs(scrollx)+(60/levels.scale[levels.current]*32)+32 or p.timer <= 0 then
						if p.x < math.abs(scrollx) then
							p.x=p.x+(60/levels.scale[levels.current]*32)+32
						elseif p.x > math.abs(scrollx)+(60/levels.scale[levels.current]*32) then
							p.x=p.x-(60/levels.scale[levels.current]*32)-32
						else
							table.remove(particles, i)
						end
					end
				elseif p.type==12 then
					p.x = p.x + dt*(p.dx*60)
					p.y = p.y + dt*(p.dy*60)
					p.timer = p.timer - dt
					if p.y > (#maps[levels.current]*32) or p.x < math.abs(scrollx) or p.x > math.abs(scrollx)+(60/levels.scale[levels.current]*32) or p.timer <= 0 then
						table.remove(particles, i)
					end
				elseif p.type==13 then
					p.x = p.x + dt*(p.dx*60)
					p.y = p.y + dt*(p.dy*60)
					p.timer = p.timer - dt
					if p.y > (#maps[levels.current]*32) or p.x < 1 or p.timer <= 0 then
						table.remove(particles, i)
					end
				elseif p.type==14 then
					p.x = p.x + dt*(p.dx*60)
					p.y = p.y + dt*(p.dy*60)
					p.timer = p.timer - dt
					if p.y > (#maps[levels.current]*32) or p.x > #maps[levels.current][1]*32 or p.timer <= 0 then
						table.remove(particles, i)
					end
				elseif p.type==15 then
					p.x = p.x + dt*(p.dx*60)
					p.y = p.y + dt*((p.dy*60)-(math.abs(p.dx)*30))

					if p.timer==0 then
						p.rndnum=love.math.random(10,15)/10
					end

					p.timer = p.timer + dt

					if p.switch==1 then
						if p.dx < p.rndnum then
							p.dx=p.dx+dt
						else
							p.switch=0
						end
					else
						if p.dx > -p.rndnum then
							p.dx=p.dx-dt
						else
							p.switch=1
							p.rndnum=love.math.random(10,15)/10
						end
					end

					if p.y > (#maps[levels.current]*32) or p.x < math.abs(scrollx)-32 or p.x > math.abs(scrollx)+(60/levels.scale[levels.current]*32)+32 or p.timer <= 0 then
						if p.x < math.abs(scrollx) then
							p.x=p.x+(60/levels.scale[levels.current]*32)+32
						elseif p.x > math.abs(scrollx)+(60/levels.scale[levels.current]*32) then
							p.x=p.x-(60/levels.scale[levels.current]*32)-32
						else
							table.remove(particles, i)
						end
					end
				elseif p.type==16 then
					p.x = p.x + dt*(p.dx*60)
					p.y = p.y + dt*(p.dy*60)
					p.timer = p.timer - dt
					if p.y > (#maps[levels.current]*32) or p.x < math.abs(scrollx) or p.x > math.abs(scrollx)+(60/levels.scale[levels.current]*32) or p.timer <= 0 then
						table.remove(particles, i)
					end
				elseif p.type==17 then
					p.x = p.x + dt*(p.dx*60)
					p.y = p.y + dt*(p.dy*60)
					if p.dy < 0 then
						p.dy = p.dy + dt
					end
					p.timer = p.timer - dt
					if p.y > (#maps[levels.current]*32) or p.x < math.abs(scrollx) or p.x > math.abs(scrollx)+(60/levels.scale[levels.current]*32) or p.timer <= 0 then
						table.remove(particles, i)
					end
				end
			end
		end
		--particles end




		--Enemies
		if levels.statee==0 then
			for i, e in ipairs(enemies.enemies) do 
				if e.type == 1 then--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-- Bouncy Enemy
					e.x = e.x + dt*(e.dx*60)
					e.y = e.y + dt*(e.dy*60)
					if player.power==12 and player.power_extra==1 then
						e.dx = e.dx - ((e.dx * 1) * dt)
					else
						e.dx = e.dx - ((e.dx * 4) * dt)
					end
					e.w=24
					e.h=28
					if e.tg == false and e.dy < 7 then
						e.dy = e.dy + dt*(gravity*60)
					elseif e.tg then
						e.dy = 0
						e.y = math.floor(e.y)
					end

					if e.tg then
						e.timer = e.timer + dt
					end

					if e.timer > 1 then--Resets the timer after its sprung into the air
						e.timer = 0
						e.action = 0
					end

					if levels.statec==1 then
						explode_picture(b.x,b.y,bullet_picsdata[1],{-25,25,-25,25,5,10})
						table.remove(enemies.enemies,i)
					end

					if player.x > e.x then--facing logic
						e.face="right"
					elseif player.x < e.x then
						e.face="left"
					end

					if e.face == "left" then--animation
						if e.timer > 0.2 and e.timer < 0.4 then
							e.ani=2
						elseif e.timer > 0.4 and e.timer < 0.6 then
							e.ani=3
						else
							e.ani=1
						end
					elseif e.face == "right" then
						if e.timer > 0.2 and e.timer < 0.4 then
							e.ani=5
						elseif e.timer > 0.4 and e.timer < 0.6 then
							e.ani=6
						else
							e.ani=4
						end
					end

					if e.timer > 0.6 and e.action == 0 then--jumping logic
						e.tg = false
						e.y=e.y-1
						e.dy = -6
						e.action = 1
						if e.face=="left" then
							e.dx=-6
						elseif e.face=="right" then
							e.dx=6
						end
					end


					--Enemy 1 collisions
					--Wall Collision
					if e.x <= 0 then --left wall
						e.dx = 0
						e.x = e.x + 1
						e.x = math.floor(e.x)
					end

					if e.x+e.w-1 >= (#maps[levels.current][1]*32)-0 then --right wall
						e.dx = 0
						e.x = e.x - 1
						e.x = math.ceil(e.x)
					end

					if e.y <= 0 then --top wall
						e.dy = 0
						e.y = e.y + 1
					end


					--Tile collision
					if map_collision(e.x,e.y,e.w,e.h,"down2",maps[levels.current],flags.ground) or map_collision(e.x,e.y,e.w,e.h,"down2",maps[levels.current],flags.enemy_ground) then -- Ground Collision
						e.tg=true
						while map_collision(e.x+3,e.y,e.w-4,e.h,"down",maps[levels.current],flags.ground) or map_collision(e.x,e.y,e.w,e.h,"down",maps[levels.current],flags.enemy_ground) do
							e.y=e.y-.5
						end
					else
					    e.tg=false
					end

					if map_collision(e.x,e.y,e.w,e.h,"left",maps[levels.current],flags.ground) or map_collision(e.x,e.y,e.w,e.h,"left",maps[levels.current],flags.enemy_ground) then -- Left Collision
						e.dx = 0
						e.x = e.x + 1
						e.x = math.floor(e.x)
					end

					if map_collision(e.x,e.y,e.w,e.h,"right",maps[levels.current],flags.ground) or map_collision(e.x,e.y,e.w,e.h,"right",maps[levels.current],flags.enemy_ground) then -- Right Collision
						e.dx = 0
						e.x = e.x - 1
						e.x = math.ceil(e.x)
					end

					if map_collision(e.x,e.y,e.w,e.h,"up",maps[levels.current],flags.ground)  or map_collision(e.x,e.y,e.w,e.h,"up",maps[levels.current],flags.enemy_ground) then -- Up Collision
						e.dy = 0
						e.y = e.y + 1
					end
					--enemy killing spikes
					if map_collision(e.x,e.y,e.w,e.h,"downspike",maps[levels.current],flags.enemy_ground_spikes) then -- Ground Spikes
						e.health=0
						love.audio.stop(sounds.enemy_die)
						sounds.enemy_die:play()
					end
					if map_collision(e.x,e.y,e.w,e.h,"rightspike",maps[levels.current],flags.enemy_right_spikes) then -- right Spikes
						e.health=0
						love.audio.stop(sounds.enemy_die)
						sounds.enemy_die:play()
					end
					if map_collision(e.x,e.y,e.w,e.h,"leftspike",maps[levels.current],flags.enemy_left_spikes) then -- left Spikes
						e.health=0
						love.audio.stop(sounds.enemy_die)
						sounds.enemy_die:play()
					end
					if map_collision(e.x,e.y,e.w,e.h,"upspike",maps[levels.current],flags.enemy_up_spikes) then -- up Spikes
						e.health=0
						love.audio.stop(sounds.enemy_die)
						sounds.enemy_die:play()
					end

					if map_collision(e.x,e.y,e.w,e.h,"powerup",maps[levels.current],flags.switch) then--enemy only gate switch
						love.audio.stop(sounds.button_pressed)
						sounds.button_pressed:play()
						if levels.stateb==0 then
							levels.stateb=1
						else
							levels.stateb=0
						end
						maps[levels.current][math.floor((e.y+e.h/2)/32)+1][math.floor((e.x+e.w/2)/32)+1]=74
					end

					for i=1,#maps[levels.current][1] do
						if map_collision(i*32,e.y,e.w,e.h,"powerup",maps[levels.current],flags.enemy_berserk) then--enemy berseker
							e.timer=e.timer+dt*5
							break
						end
					end


					if player.ani == 4 then
						if box_collision(player.x,player.y+8,player.w,player.h-8,e.x,e.y,e.w,e.h) then--player collision
							playerdied()
						end
					else
						if box_collision(player.x,player.y,player.w,player.h,e.x,e.y,e.w,e.h) then--player collision
							playerdied()
						end
					end
					if e.health <= 0 then
						explode_picture(e.x,e.y,enemies.picsdata[e.ani],{-15,15,-15,15,5,10})
						table.remove(enemies.enemies,i)
					end
				elseif e.type == 2 then --~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-- Shooty enemy
					e.x = e.x + dt*(e.dx*60)
					e.y = e.y + dt*(e.dy*60)
					e.dx = e.dx - ((e.dx * 20) * dt)
					e.w=32
					e.h=32
					--using action as a animation timer

					if e.tg == false and e.dy < 7 then
						e.dy = e.dy + dt*(gravity*60)
					elseif e.tg then
						e.dy = 0
						e.y = math.floor(e.y)
					end

					e.timer = e.timer + dt

					if levels.statec==1 then
						table.remove(enemies.enemies,i)
					end

					if player.x > e.x and e.action < 2 then--facing logic
						e.action = e.action + dt*4
					elseif player.x < e.x and e.action > 1 then
						e.action = e.action - dt*4
					end

					if e.action >= 0 and e.action <= 1 then
						e.ani = 1
					elseif e.action >= 1 and e.action <= 2 then
						e.ani = 2
					elseif e.action >= 2 and e.action <= 3 then
						e.ani = 3
					end

					if e.timer > 1.5 then--shooting logic
						love.audio.stop(sounds.shooty_shoot)
						sounds.shooty_shoot:play()
						e.timer=0
						if e.ani==1 then
							createbullet(e.x,e.y,-3,0,1)
						elseif e.ani==3 then
							createbullet(e.x+e.w,e.y,3,0,1)
						else
							createbullet(e.x,e.y,-3,0,1)
						end
					end


					--Enemy 2 collisions
					--Wall Collision
					if e.x <= 0 then --left wall
						e.dx = 0
						e.x = e.x + 1
						e.x = math.floor(e.x)
					end

					if e.x+e.w-1 >= (#maps[levels.current][1]*32)-0 then --right wall
						e.dx = 0
						e.x = e.x - 1
						e.x = math.ceil(e.x)
					end

					if e.y <= 0 then --top wall
						e.dy = 0
						e.y = e.y + 1
					end


					--Tile collision
					if map_collision(e.x,e.y,e.w,e.h,"down2",maps[levels.current],flags.ground) or map_collision(e.x,e.y,e.w,e.h,"down2",maps[levels.current],flags.enemy_ground) then -- Ground Collision
						e.tg=true
						while map_collision(e.x,e.y,e.w,e.h,"down",maps[levels.current],flags.ground) or map_collision(e.x,e.y,e.w,e.h,"down",maps[levels.current],flags.enemy_ground) do
							e.y=e.y-.5
						end
					else
					    e.tg=false
					end

					if map_collision(e.x,e.y,e.w,e.h,"left",maps[levels.current],flags.ground) or map_collision(e.x,e.y,e.w,e.h,"left",maps[levels.current],flags.enemy_ground) then -- Left Collision
						e.dx = 0
						e.x = e.x + 1
						e.x = math.floor(e.x)
					end

					if map_collision(e.x,e.y,e.w,e.h,"right",maps[levels.current],flags.ground) or map_collision(e.x,e.y,e.w,e.h,"right",maps[levels.current],flags.enemy_ground) then -- Right Collision
						e.dx = 0
						e.x = e.x - 1
						e.x = math.ceil(e.x)
					end

					if map_collision(e.x,e.y,e.w,e.h,"up",maps[levels.current],flags.ground)  or map_collision(e.x,e.y,e.w,e.h,"up",maps[levels.current],flags.enemy_ground) then -- Up Collision
						e.dy = 0
						e.y = e.y + 1
					end
					--enemy killing spikes
					if map_collision(e.x,e.y,e.w,e.h,"downspike",maps[levels.current],flags.enemy_ground_spikes) then -- Ground Spikes
						e.health=0
						love.audio.stop(sounds.enemy_die)
						sounds.enemy_die:play()
					end
					if map_collision(e.x,e.y,e.w,e.h,"rightspike",maps[levels.current],flags.enemy_right_spikes) then -- right Spikes
						e.health=0
						love.audio.stop(sounds.enemy_die)
						sounds.enemy_die:play()
					end
					if map_collision(e.x,e.y,e.w,e.h,"leftspike",maps[levels.current],flags.enemy_left_spikes) then -- left Spikes
						e.health=0
						love.audio.stop(sounds.enemy_die)
						sounds.enemy_die:play()
					end
					if map_collision(e.x,e.y,e.w,e.h,"upspike",maps[levels.current],flags.enemy_up_spikes) then -- up Spikes
						e.health=0
						love.audio.stop(sounds.enemy_die)
						sounds.enemy_die:play()
					end

					if map_collision(e.x,e.y,e.w,e.h,"powerup",maps[levels.current],flags.switch) then--enemy only gate switch
						love.audio.stop(sounds.button_pressed)
						sounds.button_pressed:play()
						if levels.stateb==0 then
							levels.stateb=1
						else
							levels.stateb=0
						end
						maps[levels.current][math.floor((e.y+e.h/2)/32)+1][math.floor((e.x+e.w/2)/32)+1]=74
					end

					for i=1,#maps[levels.current][1] do
						if map_collision(i*32,e.y,e.w,e.h,"powerup",maps[levels.current],flags.enemy_berserk) then--enemy berseker
							e.timer=e.timer+dt*5
							break
						end
					end


					if player.ani == 4 then
						if box_collision(player.x,player.y+8,player.w,player.h-8,e.x,e.y,e.w,e.h) then--player collision
							playerdied()
						end
					else
						if box_collision(player.x,player.y,player.w,player.h,e.x,e.y,e.w,e.h) then--player collision
							playerdied()
						end
					end

					if e.health <= 0 then
						table.remove(enemies.enemies,i)
					end
				elseif e.type == 3 then --~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-- Super shooty
					e.x = e.x + dt*(e.dx*60)
					e.y = e.y + dt*(e.dy*60)
					e.w=40
					e.h=40
					--using action as a animation timer

					e.timer = e.timer + dt*1.5

					if levels.statec==1 then
						table.remove(enemies.enemies,i)
					end

					if e.timer >= 0 and e.timer <= 0.3 then
						e.ani = 1
					elseif e.timer >= 0.3 and e.timer <= 0.6 then
						e.ani = 2
					elseif e.timer >= 0.6 and e.timer <= 0.9 then
						e.ani = 3
					end

					if e.timer > 0.9 then--shooting logic
						love.audio.stop(sounds.shooty_shoot)
						sounds.shooty_shoot:play()
						e.timer=0

						createbullet(e.x-12,e.y-12,-3,-3,1)--top left
						createbullet(e.x+e.w,e.y-12,3,-3,1)--top right
						createbullet(e.x-12,e.y+e.h,-3,3,1)--bottm left
						createbullet(e.x+e.w,e.y+e.h,3,3,1)--bottm right
					end


					--Enemy 3 collisions
					--Wall Collision
					if e.x <= 0 then --left wall
						e.dx = -e.dx
						e.x = e.x + 1
						e.x = math.floor(e.x)
					end

					if e.x+e.w-1 >= (#maps[levels.current][1]*32)-0 then --right wall
						e.dx = -e.dx
						e.x = e.x - 1
						e.x = math.ceil(e.x)
					end

					if e.y <= 0 then --top wall
						e.dy = -e.dx
						e.y = e.y + 1
					end


					--Tile collision
					if map_collision(e.x,e.y,e.w,e.h,"down2",maps[levels.current],flags.ground) or map_collision(e.x,e.y,e.w,e.h,"down2",maps[levels.current],flags.enemy_ground) then -- Ground Collision
						e.tg=true
						while map_collision(e.x,e.y,e.w,e.h,"down",maps[levels.current],flags.ground) or map_collision(e.x,e.y,e.w,e.h,"down",maps[levels.current],flags.enemy_ground) do
							e.y=e.y-.5
						end
					else
					    e.tg=false
					end

					if map_collision(e.x,e.y,e.w,e.h,"left",maps[levels.current],flags.ground) or map_collision(e.x,e.y,e.w,e.h,"left",maps[levels.current],flags.enemy_ground) then -- Left Collision
						e.dx = -e.dx
						e.x = e.x + 1
						e.x = math.floor(e.x)
					end

					if map_collision(e.x,e.y,e.w,e.h,"right",maps[levels.current],flags.ground) or map_collision(e.x,e.y,e.w,e.h,"right",maps[levels.current],flags.enemy_ground) then -- Right Collision
						e.dx = -e.dx
						e.x = e.x - 1
						e.x = math.ceil(e.x)
					end

					if map_collision(e.x,e.y,e.w,e.h,"up",maps[levels.current],flags.ground) or map_collision(e.x,e.y,e.w,e.h,"up",maps[levels.current],flags.enemy_ground) then -- Up Collision
						e.dy = 0
						e.y = e.y + 1
					end
					--enemy killing spikes
					if map_collision(e.x,e.y,e.w,e.h,"downspike",maps[levels.current],flags.enemy_ground_spikes) then -- Ground Spikes
						e.health=0
						love.audio.stop(sounds.enemy_die)
						sounds.enemy_die:play()
					end
					if map_collision(e.x,e.y,e.w,e.h,"rightspike",maps[levels.current],flags.enemy_right_spikes) then -- right Spikes
						e.health=0
						love.audio.stop(sounds.enemy_die)
						sounds.enemy_die:play()
					end
					if map_collision(e.x,e.y,e.w,e.h,"leftspike",maps[levels.current],flags.enemy_left_spikes) then -- left Spikes
						e.health=0
						love.audio.stop(sounds.enemy_die)
						sounds.enemy_die:play()
					end
					if map_collision(e.x,e.y,e.w,e.h,"upspike",maps[levels.current],flags.enemy_up_spikes) then -- up Spikes
						e.health=0
						love.audio.stop(sounds.enemy_die)
						sounds.enemy_die:play()
					end

					if map_collision(e.x,e.y,e.w,e.h,"powerup",maps[levels.current],flags.switch) then--enemy only gate switch
						love.audio.stop(sounds.button_pressed)
						sounds.button_pressed:play()
						if levels.stateb==0 then
							levels.stateb=1
						else
							levels.stateb=0
						end
						maps[levels.current][math.floor((e.y+e.h/2)/32)+1][math.floor((e.x+e.w/2)/32)+1]=74
					end

					for i=1,#maps[levels.current][1] do
						if map_collision(i*32,e.y,e.w,e.h,"powerup",maps[levels.current],flags.enemy_berserk) then--enemy berseker
							e.timer=e.timer+dt*5
							break
						end
					end

					if player.ani == 4 then
						if box_collision(player.x,player.y+8,player.w,player.h-8,e.x,e.y,e.w,e.h) then--player collision
							playerdied()
						end
					else
						if box_collision(player.x,player.y,player.w,player.h,e.x,e.y,e.w,e.h) then--player collision
							playerdied()
						end
					end

					if e.health <= 0 then
						table.remove(enemies.enemies,i)
					end
				elseif e.type == 4 then --~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-- Walky
					e.x = e.x + dt*(e.dx*60)
					e.y = e.y + dt*(e.dy*60)
					e.w=24
					e.h=48

					if e.tg == false and e.dy < 7 then
						e.dy = e.dy + dt*(gravity*60)
					elseif e.tg then
						e.dy = 0
						e.y = math.floor(e.y)
					end

					--using action as a edge detection

					if e.timer <=0.9 then
						e.timer = e.timer + dt*1
					else
						e.timer = 0
					end

					if levels.statec==1 then
						table.remove(enemies.enemies,i)
					end

					if e.action == 1 then
						if e.face=="left" then
							if e.timer >= 0 and e.timer <= 0.1 then
								e.ani = 1
							elseif e.timer >= 0.1 and e.timer <= 0.2 then
								e.ani = 2
							elseif e.timer >= 0.2 and e.timer <= 0.3 then
								e.ani = 3
							elseif e.timer >= 0.3 and e.timer <= 0.4 then
								e.ani = 4
							elseif e.timer >= 0.4 and e.timer <= 0.5 then
								e.ani = 5
							elseif e.timer >= 0.5 and e.timer <= 0.6 then
								e.ani = 6
							elseif e.timer >= 0.6 and e.timer <= 0.7 then
								e.ani = 7
							elseif e.timer >= 0.7 and e.timer <= 0.8 then
								e.ani = 8
							elseif e.timer >= 0.8 and e.timer <= 0.9 then
								e.ani = 9
							end
						elseif e.face =="right" then
							if e.timer >= 0 and e.timer <= 0.1 then
								e.ani = 11
							elseif e.timer >= 0.1 and e.timer <= 0.2 then
								e.ani = 12
							elseif e.timer >= 0.2 and e.timer <= 0.3 then
								e.ani = 13
							elseif e.timer >= 0.3 and e.timer <= 0.4 then
								e.ani = 14
							elseif e.timer >= 0.4 and e.timer <= 0.5 then
								e.ani = 15
							elseif e.timer >= 0.5 and e.timer <= 0.6 then
								e.ani = 16
							elseif e.timer >= 0.6 and e.timer <= 0.7 then
								e.ani = 17
							elseif e.timer >= 0.7 and e.timer <= 0.8 then
								e.ani = 18
							elseif e.timer >= 0.8 and e.timer <= 0.9 then
								e.ani = 19
							elseif e.timer >= 0.9 then
								e.ani = 20
							end
						end
					else
						if e.face=="left" then -- edge detection
							e.ani=1
						elseif e.face=="right" then
							e.ani=11
						end
					end

					if player.x+player.w/2 < e.x then--facing logic
						e.face="left"
					elseif player.x > e.x+12 then
						e.face="right"
					end

					if e.face=="left" then -- edge detection
						if (map_collision(e.x-22,e.y,e.w,e.h,"down2",maps[levels.current],flags.ground) or map_collision(e.x-22,e.y,e.w,e.h,"down2",maps[levels.current],flags.enemy_ground)) and not (map_collision(e.x,e.y,e.w,e.h,"left2",maps[levels.current],flags.ground) or map_collision(e.x,e.y,e.w,e.h,"left2",maps[levels.current],flags.enemy_ground)) then
							e.action=1
						else
							e.action=0
							e.dx=0
						end
					elseif e.face=="right" then
						if (map_collision(e.x+21,e.y,e.w,e.h,"down2",maps[levels.current],flags.ground) or map_collision(e.x+21,e.y,e.w,e.h,"down2",maps[levels.current],flags.enemy_ground)) and not (map_collision(e.x,e.y,e.w,e.h,"right2",maps[levels.current],flags.ground) or map_collision(e.x,e.y,e.w,e.h,"right2",maps[levels.current],flags.enemy_ground)) then
							e.action=1
						else
							e.action=0
							e.dx=0
						end
					end

					if e.action == 1 then--movement
						if e.face=="left" then
							e.dx=-1
						elseif e.face=="right" then
							e.dx=1
						end
					end

					--Enemy 4 collisions
					--Wall Collision
					if e.x <= 0 then --left wall
						e.dx = e.dx
						e.x = e.x + 1
						e.x = math.floor(e.x)
					end

					if e.x+e.w-1 >= (#maps[levels.current][1]*32)-0 then --right wall
						e.dx = e.dx
						e.x = e.x - 1
						e.x = math.ceil(e.x)
					end

					if e.y <= 0 then --top wall
						e.dy = -e.dx
						e.y = e.y + 1
					end


					--Tile collision
					if map_collision(e.x,e.y,e.w,e.h,"down2",maps[levels.current],flags.ground) or map_collision(e.x,e.y,e.w,e.h,"down2",maps[levels.current],flags.enemy_ground) then -- Ground Collision
						e.tg=true
						while map_collision(e.x,e.y,e.w,e.h,"down",maps[levels.current],flags.ground) or map_collision(e.x,e.y,e.w,e.h,"down",maps[levels.current],flags.enemy_ground) do
							e.y=e.y-.5
						end
					else
					    e.tg=false
					end

					if map_collision(e.x,e.y,e.w,e.h,"left",maps[levels.current],flags.ground) or map_collision(e.x,e.y,e.w,e.h,"left",maps[levels.current],flags.enemy_ground) then -- Left Collision
						e.dx = -e.dx
						e.x = e.x + 1
						e.x = math.floor(e.x)
					end

					if map_collision(e.x,e.y,e.w,e.h,"right",maps[levels.current],flags.ground) or map_collision(e.x,e.y,e.w,e.h,"right",maps[levels.current],flags.enemy_ground) then -- Right Collision
						e.dx = -e.dx
						e.x = e.x - 1
						e.x = math.ceil(e.x)
					end

					if map_collision(e.x,e.y,e.w,e.h,"up",maps[levels.current],flags.ground) or map_collision(e.x,e.y,e.w,e.h,"up",maps[levels.current],flags.enemy_ground) then -- Up Collision
						e.dy = 0
						e.y = e.y + 1
					end
					--enemy killing spikes
					if map_collision(e.x,e.y,e.w,e.h,"downspike",maps[levels.current],flags.enemy_ground_spikes) then -- Ground Spikes
						e.health=0
						love.audio.stop(sounds.enemy_die)
						sounds.enemy_die:play()
					end
					if map_collision(e.x,e.y,e.w,e.h,"rightspike",maps[levels.current],flags.enemy_right_spikes) then -- right Spikes
						e.health=0
						love.audio.stop(sounds.enemy_die)
						sounds.enemy_die:play()
					end
					if map_collision(e.x,e.y,e.w,e.h,"leftspike",maps[levels.current],flags.enemy_left_spikes) then -- left Spikes
						e.health=0
						love.audio.stop(sounds.enemy_die)
						sounds.enemy_die:play()
					end
					if map_collision(e.x,e.y,e.w,e.h,"upspike",maps[levels.current],flags.enemy_up_spikes) then -- up Spikes
						e.health=0
						love.audio.stop(sounds.enemy_die)
						sounds.enemy_die:play()
					end

					if map_collision(e.x,e.y,e.w,e.h,"powerup",maps[levels.current],flags.switch) then--enemy only gate switch
						love.audio.stop(sounds.button_pressed)
						sounds.button_pressed:play()
						if levels.stateb==0 then
							levels.stateb=1
						else
							levels.stateb=0
						end
						maps[levels.current][math.floor((e.y+e.h/2)/32)+1][math.floor((e.x+e.w/2)/32)+1]=74
					end

					for i=1,#maps[levels.current][1] do
						if map_collision(i*32,e.y,e.w,e.h,"powerup",maps[levels.current],flags.enemy_berserk) then--enemy berseker
							e.timer=e.timer+dt*2
							if e.action == 1 then--movement
								if e.face=="left" then
									e.dx=-3
								elseif e.face=="right" then
									e.dx=3
								end
							end
							break
						end
					end

					if player.ani == 4 then
						if box_collision(player.x,player.y+8,player.w,player.h-8,e.x,e.y,e.w,e.h) then--player collision
							playerdied()
						end
					else
						if box_collision(player.x,player.y,player.w,player.h,e.x,e.y,e.w,e.h) then--player collision
							playerdied()
						end
					end

					if e.health <= 0 then
						table.remove(enemies.enemies,i)
					end
				elseif e.type == 5 then --~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-- Boosty
					e.x = e.x + dt*(e.dx*60)
					e.y = e.y + dt*(e.dy*60)
					e.w=48
					e.h=48

					if e.tg == false and e.dy < 7 then
						e.dy = e.dy + dt*(gravity*60)
					elseif e.tg then
						e.dy = 0
						e.y = math.floor(e.y)
					end

					--using action as a edge detection

					if e.timer <=1.9 then
						e.timer = e.timer + dt*2
					else
						e.timer = 0
						love.audio.stop(sounds.shooty_shoot)
						sounds.shooty_shoot:play()
						createbullet(e.x-12,e.y+24,-3,0,1)
						createbullet(e.x+e.w,e.y+24,3,0,1)
					end

					if e.extra <= 0 then
						e.extra=0
					else
						e.extra=e.extra-dt
					end

					if levels.statec==1 then
						table.remove(enemies.enemies,i)
					end

					if e.action == 1 then
						if e.face=="left" then
							if e.timer < 1 then
								if e.timer >= 0 and e.timer <= 0.33 then
									e.ani = 3
								elseif e.timer >= 0.33 and e.timer <= 0.66 then
									e.ani = 2
								elseif e.timer >= 0.66 and e.timer <= 1 then
									e.ani = 1
								end
							else
								if e.timer >= 0 and e.timer <= 1.33 then
									e.ani = 3
								elseif e.timer >= 1.33 and e.timer <= 1.66 then
									e.ani = 2
								elseif e.timer >= 1.66 and e.timer <= 2 then
									e.ani = 1
								end
							end
						elseif e.face=="right" then
							if e.timer < 1 then
								if e.timer >= 0 and e.timer <= 0.33 then
									e.ani = 1
								elseif e.timer >= 0.33 and e.timer <= 0.66 then
									e.ani = 2
								elseif e.timer >= 0.66 and e.timer <= 1 then
									e.ani = 3
								end
							else
								if e.timer >= 1 and e.timer <= 1.33 then
									e.ani = 1
								elseif e.timer >= 1.33 and e.timer <= 1.66 then
									e.ani = 2
								elseif e.timer >= 1.66 and e.timer <= 2 then
									e.ani = 3
								end
							end
						end
					end

					if player.x+player.w/2 < e.x+e.w/2 then--facing logic
						e.face="left"
					elseif player.x > e.x+24 then
						e.face="right"
					end

					if e.face=="left" then -- edge detection
						if (map_collision(e.x-36.5,e.y,e.w,e.h,"down2",maps[levels.current],flags.ground) or map_collision(e.x-36.5,e.y,e.w,e.h,"down2",maps[levels.current],flags.enemy_ground)) and not (map_collision(e.x,e.y,e.w,e.h,"left2",maps[levels.current],flags.ground) or map_collision(e.x,e.y,e.w,e.h,"left2",maps[levels.current],flags.enemy_ground)) then
							e.action=1
						else
							e.action=0
							e.dx=0
						end
					elseif e.face=="right" then
						if (map_collision(e.x+37,e.y,e.w,e.h,"down2",maps[levels.current],flags.ground) or map_collision(e.x+37,e.y,e.w,e.h,"down2",maps[levels.current],flags.enemy_ground)) and not (map_collision(e.x,e.y,e.w,e.h,"right2",maps[levels.current],flags.ground) or map_collision(e.x,e.y,e.w,e.h,"right2",maps[levels.current],flags.enemy_ground)) then
							e.action=1
						else
							e.action=0
							e.dx=0
						end
					end

					if e.action == 1 then--movement
						if e.face=="left" then
							e.dx=-1
						elseif e.face=="right" then
							e.dx=1
						end
					end
					--Enemy 5 collisions
					--Wall Collision
					if e.x <= 0 then --left wall
						e.dx = e.dx
						e.x = e.x + 1
						e.x = math.floor(e.x)
					end

					if e.x+e.w-1 >= (#maps[levels.current][1]*32)-0 then --right wall
						e.dx = e.dx
						e.x = e.x - 1
						e.x = math.ceil(e.x)
					end

					if e.y <= 0 then --top wall
						e.dy = -e.dx
						e.y = e.y + 1
					end


					--Tile collision
					if map_collision(e.x,e.y,e.w,e.h,"down2",maps[levels.current],flags.ground) or map_collision(e.x,e.y,e.w,e.h,"down2",maps[levels.current],flags.enemy_ground) then -- Ground Collision
						e.tg=true
						while map_collision(e.x,e.y,e.w,e.h,"down",maps[levels.current],flags.ground) or map_collision(e.x,e.y,e.w,e.h,"down",maps[levels.current],flags.enemy_ground) do
							e.y=e.y-.5
						end
					else
					    e.tg=false
					end

					if map_collision(e.x,e.y,e.w,e.h,"left",maps[levels.current],flags.ground) or map_collision(e.x,e.y,e.w,e.h,"left",maps[levels.current],flags.enemy_ground) then -- Left Collision
						e.dx = -e.dx
						e.x = e.x + 1
						e.x = math.floor(e.x)
					end

					if map_collision(e.x,e.y,e.w,e.h,"right",maps[levels.current],flags.ground) or map_collision(e.x,e.y,e.w,e.h,"right",maps[levels.current],flags.enemy_ground) then -- Right Collision
						e.dx = -e.dx
						e.x = e.x - 1
						e.x = math.ceil(e.x)
					end

					if map_collision(e.x,e.y,e.w,e.h,"up",maps[levels.current],flags.ground) or map_collision(e.x,e.y,e.w,e.h,"up",maps[levels.current],flags.enemy_ground) then -- Up Collision
						e.dy = 0
						e.y = e.y + 1
					end
					--enemy killing spikes
					if map_collision(e.x,e.y,e.w,e.h,"downspike",maps[levels.current],flags.enemy_ground_spikes) then -- Ground Spikes
						e.health=0
						love.audio.stop(sounds.enemy_die)
						sounds.enemy_die:play()
					end
					if map_collision(e.x,e.y,e.w,e.h,"rightspike",maps[levels.current],flags.enemy_right_spikes) then -- right Spikes
						e.health=0
						love.audio.stop(sounds.enemy_die)
						sounds.enemy_die:play()
					end
					if map_collision(e.x,e.y,e.w,e.h,"leftspike",maps[levels.current],flags.enemy_left_spikes) then -- left Spikes
						e.health=0
						love.audio.stop(sounds.enemy_die)
						sounds.enemy_die:play()
					end
					if map_collision(e.x,e.y,e.w,e.h,"upspike",maps[levels.current],flags.enemy_up_spikes) then -- up Spikes
						e.health=0
						love.audio.stop(sounds.enemy_die)
						sounds.enemy_die:play()
					end

					if map_collision(e.x,e.y,e.w,e.h,"powerup",maps[levels.current],flags.switch) then--enemy only gate switch
						love.audio.stop(sounds.button_pressed)
						sounds.button_pressed:play()
						if levels.stateb==0 then
							levels.stateb=1
						else
							levels.stateb=0
						end
						maps[levels.current][math.floor((e.y+e.h/2)/32)+1][math.floor((e.x+e.w/2)/32)+1]=74
					end

					for i=1,#maps[levels.current][1] do
						if map_collision(i*32,e.y,e.w,e.h,"powerup",maps[levels.current],flags.enemy_berserk) then--enemy berseker
							e.timer=e.timer+dt*2
							if e.action == 1 then--movement
								if e.face=="left" then
									e.dx=-3
								elseif e.face=="right" then
									e.dx=3
								end
							end
							break
						end
					end

					if box_collision(player.x,player.y,player.w,player.h,e.x+12,e.y,e.w-24,e.h-32) then--player collision
						love.audio.stop(sounds.player_spring)
						sounds.player_spring:play()
						e.extra=.15
						player.dy=-12
					elseif box_collision(player.x,player.y,player.w,player.h,e.x+8,e.y+16,e.w-16,e.h-16) then
						playerdied()
					end

					if e.health <= 0 then
						table.remove(enemies.enemies,i)
					end
				elseif e.type == 6 then --~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-- Snipey enemy
					e.x = e.x + dt*(e.dx*60)
					e.y = e.y + dt*(e.dy*60)
					e.dx = e.dx - ((e.dx * 5) * dt)
					e.dy = e.dy - ((e.dy * 10) * dt)
					e.w=64
					e.h=36
					--using action as a animation timer


					e.timer = e.timer + dt

					if levels.statec==1 then
						table.remove(enemies.enemies,i)
					end

					if player.x < e.x+(e.w-64)/2 then
						e.face="left"
					elseif player.x > e.x+(e.w+64)/2 then
						e.face="right"
					elseif player.y > e.y+e.h/2 then
						e.face="down"
					else
						e.face="up"
					end

					if e.timer > 1.5 then--shooting logic
						sounds.snipey_shoot:play()
						e.timer=0
						if e.face=="left" then
							createbullet(e.x-40,e.y+8,-8,0,2)
							if not map_collision(e.x,e.y,e.w,e.h,"right2",maps[levels.current],flags.ground) or map_collision(e.x,e.y,e.w,e.h,"right2",maps[levels.current],flags.enemy_ground) then
								e.dx=4
							end
						elseif e.face=="right" then
							createbullet(e.x+e.w,e.y+8,8,0,2)
							if not map_collision(e.x,e.y,e.w,e.h,"left2",maps[levels.current],flags.ground) or map_collision(e.x,e.y,e.w,e.h,"left2",maps[levels.current],flags.enemy_ground) then
								e.dx=-4
							end
						elseif e.face=="up" then
							createbullet(e.x+8,e.y-36,0,-8,2)
						elseif e.face=="down" then
							createbullet(e.x+12,e.y+40,0,8,2)
						end
					end


					--Enemy 6 collisions
					--Wall Collision
					if e.x <= 0 then --left wall
						e.dx = 0
						e.x = e.x + 1
						e.x = math.floor(e.x)
					end

					if e.x+e.w-1 >= (#maps[levels.current][1]*32)-0 then --right wall
						e.dx = 0
						e.x = e.x - 1
						e.x = math.ceil(e.x)
					end

					if e.y <= 0 then --top wall
						e.dy = 0
						e.y = e.y + 1
					end


					--Tile collision
					if map_collision(e.x+8,e.y,e.w-16,e.h,"down2",maps[levels.current],flags.ground) or map_collision(e.x+8,e.y,e.w-16,e.h,"down2",maps[levels.current],flags.enemy_ground) then -- Ground Collision
						e.tg=true
						while map_collision(e.x,e.y,e.w,e.h,"down",maps[levels.current],flags.ground) or map_collision(e.x,e.y,e.w,e.h,"down",maps[levels.current],flags.enemy_ground) do
							e.y=e.y-.5
						end
					else
					    e.tg=false
					end

					if map_collision(e.x,e.y,e.w,e.h,"left",maps[levels.current],flags.ground) or map_collision(e.x,e.y,e.w,e.h,"left",maps[levels.current],flags.enemy_ground) then -- Left Collision
						e.dx = 0
						e.x = e.x + 1
						e.x = math.floor(e.x)
					end

					if map_collision(e.x,e.y,e.w,e.h,"right",maps[levels.current],flags.ground) or map_collision(e.x,e.y,e.w,e.h,"right",maps[levels.current],flags.enemy_ground) then -- Right Collision
						e.dx = 0
						e.x = e.x - 1
						e.x = math.ceil(e.x)
					end

					if map_collision(e.x,e.y,e.w,e.h,"up",maps[levels.current],flags.ground)  or map_collision(e.x,e.y,e.w,e.h,"up",maps[levels.current],flags.enemy_ground) then -- Up Collision
						e.dy = 0
						e.y = e.y + 1
					end
					--enemy killing spikes
					if map_collision(e.x,e.y,e.w,e.h,"downspike",maps[levels.current],flags.enemy_ground_spikes) then -- Ground Spikes
						e.health=0
						love.audio.stop(sounds.enemy_die)
						sounds.enemy_die:play()
					end
					if map_collision(e.x,e.y,e.w,e.h,"rightspike",maps[levels.current],flags.enemy_right_spikes) then -- right Spikes
						e.health=0
						love.audio.stop(sounds.enemy_die)
						sounds.enemy_die:play()
					end
					if map_collision(e.x,e.y,e.w,e.h,"leftspike",maps[levels.current],flags.enemy_left_spikes) then -- left Spikes
						e.health=0
						love.audio.stop(sounds.enemy_die)
						sounds.enemy_die:play()
					end
					if map_collision(e.x,e.y,e.w,e.h,"upspike",maps[levels.current],flags.enemy_up_spikes) then -- up Spikes
						e.health=0
						love.audio.stop(sounds.enemy_die)
						sounds.enemy_die:play()
					end

					if map_collision(e.x,e.y,e.w,e.h,"powerup",maps[levels.current],flags.switch) then--enemy only gate switch
						love.audio.stop(sounds.button_pressed)
						sounds.button_pressed:play()
						if levels.stateb==0 then
							levels.stateb=1
						else
							levels.stateb=0
						end
						maps[levels.current][math.floor((e.y+e.h/2)/32)+1][math.floor((e.x+e.w/2)/32)+1]=74
					end

					for i=1,#maps[levels.current][1] do
						if map_collision(i*32,e.y,e.w,e.h,"powerup",maps[levels.current],flags.enemy_berserk) then--enemy berseker
							e.timer=e.timer+dt*5
							break
						end
					end


					if player.ani == 4 then
						if box_collision(player.x,player.y+8,player.w,player.h-8,e.x,e.y,e.w,e.h) then--player collision
							playerdied()
						end
					else
						if box_collision(player.x,player.y,player.w,player.h,e.x,e.y,e.w,e.h) then--player collision
							playerdied()
						end
					end

					if e.health <= 0 then
						table.remove(enemies.enemies,i)
					end
				elseif e.type == 7 then --~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-- Breaking platform enemy
					if e.plat_type == 1 then--falling platform
						e.y = e.y + dt*(e.dy*60)
						e.w=32
						e.h=32

						e.dy=1

						if e.y > #maps[levels.current]*32 then --Floor
							table.remove(enemies.enemies,i)
						end
					elseif e.plat_type == 2 then--Grass platform
						e.y = e.y + dt*(e.dy*60)
						e.x = e.x + dt*(e.dx*60)
						e.w=56
						e.h=28

						--collision
						if map_collision(e.x,e.y,e.w,e.h,"left",maps[levels.current],flags.ground) or map_collision(e.x,e.y,e.w,e.h,"left",maps[levels.current],flags.enemy_ground) then -- Left Collision
							e.dx = -e.dx
							e.x = e.x + 1
							e.x = math.floor(e.x)
						end
						if map_collision(e.x,e.y,e.w,e.h,"right",maps[levels.current],flags.ground) or map_collision(e.x,e.y,e.w,e.h,"right",maps[levels.current],flags.enemy_ground) then -- Right Collision
							e.dx = -e.dx
							e.x = e.x - 1
							e.x = math.ceil(e.x)
						end

					end
				elseif e.type == 8 then --~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-- Tracky enemy
					e.w=24
					e.h=16

					e.timer = e.timer + dt

					if e.timer > 4.5 then--shooting logic
						enemies.create(e.x+math.random(-16,16),e.y+math.random(-16,16),9)
						sounds.snipey_shoot:play()
						e.timer=0
					end

					if player.ani == 4 then
						if box_collision(player.x,player.y+8,player.w,player.h-8,e.x,e.y,e.w,e.h) then--player collision
							playerdied()
						end
					else
						if box_collision(player.x,player.y,player.w,player.h,e.x,e.y,e.w,e.h) then--player collision
							playerdied()
						end
					end

					if e.health <= 0 then
						table.remove(enemies.enemies,i)
					end

					for i=1,#maps[levels.current][1] do
						if map_collision(i*32,e.y,e.w,e.h,"powerup",maps[levels.current],flags.enemy_berserk) then--enemy berseker
							e.timer=e.timer+dt
							break
						end
					end
				elseif e.type == 9 then --~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-- Tracky offspring enemy
					e.x = e.x + dt*(e.dx*60)
					e.y = e.y + dt*(e.dy*60)
					e.dx = e.dx - ((e.dx * 0) * dt)
					e.dy = e.dy - ((e.dy * 0) * dt)
					e.w=24
					e.h=24

					e.timer = e.timer + dt
					if player.x < e.x then
						e.face="left"
						e.ani=0
					elseif player.x > e.x then
						e.face="right"
						e.ani=1
					end

					if e.action==1 then
						if player.x+12 < e.x then
							if e.dx > -6 then
								e.dx=e.dx-(6*dt)
							end
						elseif player.x+12 > e.x then
							if e.dx < 6 then
								e.dx=e.dx+(6*dt)
							end
						end

						if player.y+12 < e.y then
							if e.dy > -6 then
								e.dy=e.dy-(6*dt)
							end
						elseif player.y+12 > e.y then
							if e.dy < 6 then
								e.dy=e.dy+(6*dt)
							end
						end
					else
						if player.x+12 < e.x then
							if e.dx > -3 then
								e.dx=e.dx-(3*dt)
							end
						elseif player.x+12 > e.x then
							if e.dx < 3 then
								e.dx=e.dx+(3*dt)
							end
						end

						if player.y+12 < e.y then
							if e.dy > -3 then
								e.dy=e.dy-(3*dt)
							end
						elseif player.y+12 > e.y then
							if e.dy < 3 then
								e.dy=e.dy+(3*dt)
							end
						end
					end
					--collisions
					if player.ani==4 then
						if box_collision(player.x,player.y+8,player.w,player.h-8,e.x,e.y,e.w,e.h) then--player collision
							playerdied()
						end
					else
						if box_collision(player.x,player.y,player.w,player.h,e.x,e.y,e.w,e.h) then--player collision
							playerdied()
						end
					end
					if map_collision(e.x,e.y,e.w,e.h,"powerup",maps[levels.current],flags.switch) then--enemy only gate switch
						love.audio.stop(sounds.button_pressed)
						sounds.button_pressed:play()
						if levels.stateb==0 then
							levels.stateb=1
						else
							levels.stateb=0
						end
						maps[levels.current][math.floor((e.y+e.h/2)/32)+1][math.floor((e.x+e.w/2)/32)+1]=74
					end
					for i=1,#maps[levels.current][1] do
						if map_collision(i*32,e.y,e.w,e.h,"powerup",maps[levels.current],flags.enemy_berserk) then--enemy berseker
							e.action=1
							break
						end
					end
					if e.health <= 0 then
						table.remove(enemies.enemies,i)
					end
				elseif e.type == 10 then --~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-- lazer enemy
					e.w=16
					e.h=6400
					e.x = e.x + dt*(e.dx*60)

					if map_collision(e.x+4,e.y+8,e.w,e.h,"up",maps[levels.current],flags.lazer_left) then
						e.dx=-2
					elseif map_collision(e.x+4,e.y+8,e.w,e.h,"up",maps[levels.current],flags.lazer_right) then
						e.dx=2
					end

					if e.dx > 0 then
						if map_collision(e.x+4,e.y,e.w,32,"right",maps[levels.current],flags.lazer_stop) then
							table.remove(enemies.enemies,i)
						end
					elseif e.dx < 0 then
						if map_collision(e.x+4,e.y,e.w,32,"left",maps[levels.current],flags.lazer_stop) then
							table.remove(enemies.enemies,i)
						end
					end

					if box_collision(player.x,player.y,player.w,player.h,e.x+4,e.y+16,e.w,e.h) then--player collision
						if not (player.power==9 and player.timer >= 1) then
							playerdied()
						end
					end
				elseif e.type == "b1" then --~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-- boss 1
					e.x = e.x + dt*(e.dx*60)
					e.y = e.y + dt*(e.dy*60)
					e.dx = e.dx - ((e.dx * 2) * dt)
					e.w=64
					e.h=48

					--gravity changes
					if e.health > 20 then-- first phase
						if e.attack==1 then
							if e.tg == false and e.dy < 10 then
								e.dy = e.dy + dt*(gravity*60)
							elseif e.tg then
								e.dy = 0
								e.y = math.floor(e.y)
							end
						elseif e.attack==2 then
							if e.tg == false and e.dy < 20 then
								e.dy = e.dy + dt*(gravity*120)
							elseif e.tg then
								e.dy = 0
								e.y = math.floor(e.y)
							end
						end
					elseif e.health > 10 then--second phase
						if e.attack==1 then
							if e.tg == false and e.dy < 20 then
								e.dy = e.dy + dt*(gravity*90)
							elseif e.tg then
								e.dy = 0
								e.y = math.floor(e.y)
							end
						elseif e.attack==2 then
							if e.tg == false and e.dy < 20 then
								e.dy = e.dy + dt*(gravity*140)
							elseif e.tg then
								e.dy = 0
								e.y = math.floor(e.y)
							end
						elseif e.attack==3 then
							if e.tg == false and e.dy < 30 then
								e.dy = e.dy + dt*(gravity*120)
							elseif e.tg then
								e.dy = 0
								e.y = math.floor(e.y)
							end
						end
					else
						if e.attack==1 then
							if e.tg == false and e.dy < 20 then
								e.dy = e.dy + dt*(gravity*120)
							elseif e.tg then
								e.dy = 0
								e.y = math.floor(e.y)
							end
						elseif e.attack==2 then
							if e.tg == false and e.dy < 20 then
								e.dy = e.dy + dt*(gravity*160)
							elseif e.tg then
								e.dy = 0
								e.y = math.floor(e.y)
							end
						elseif e.attack==3 then
							if e.tg == false and e.dy < 30 then
								e.dy = e.dy + dt*(gravity*140)
							elseif e.tg then
								e.dy = 0
								e.y = math.floor(e.y)
							end
						end
					end

					--attack patterns
					if e.health > 20 then--first phase
						--changes attacks
						if e.attack==1 and e.numattack >= 3 and e.tg==true then
							e.attack=2
							e.numattack=0
						elseif e.numattack >= 3 and e.tg==true then
							e.attack=1
							e.numattack=0
						end

						--attack 1
						if e.attack==1 then--jumping attack
							if player.x > e.x then--facing logic
								e.face="right"
							elseif player.x < e.x then
								e.face="left"
							end

							if e.tg then
								e.timer = e.timer + dt*1
							end

							if e.timer > 0.9 then--Resets the timer after its sprung into the air
								e.timer = 0
								e.action = 0
							end

							if e.timer > 0.2 and e.timer < 0.4 then
								e.ani=1
							elseif e.timer > 0.4 and e.timer < 0.6 then
								e.ani=2
							elseif e.timer > 0.6 and e.timer < 0.8 then
								e.ani=3
							elseif e.timer > 0.8 and not e.tg then	
								e.ani=4
							else
								e.ani=1
							end

							if e.timer > 0.8 and e.action == 0 then--jumping logic
								e.tg = false
								e.y=e.y-1
								e.dy = -8
								e.action = 1
								e.numattack=e.numattack+1
								if e.face=="left" then
									e.dx=-6
								elseif e.face=="right" then
									e.dx=6
								end
							end
						elseif e.attack==2 then--jumping bolders attack
							if e.tg then
								e.timer = e.timer + dt*3
							end

							if e.timer > 0.9 then--Resets the timer after its sprung into the air
								e.timer = .2
								e.action = 0
							end

							if e.timer > 0.2 and e.timer < 0.4 then
								e.ani=1
							elseif e.timer > 0.4 and e.timer < 0.6 then
								e.ani=2
							elseif e.timer > 0.6 and e.timer < 0.8 then
								e.ani=3
							elseif e.timer > 0.8 and not e.tg then	
								e.ani=4
							else
								e.ani=1
							end

							if e.timer > 0.8 and e.action == 0 then--jumping logic
								e.tg = false
								e.y=e.y-1
								e.dy = -12
								e.action = 1
								e.numattack=e.numattack+1
								createbullet(math.random(0,932),0,0,0,3,0)--bolder bullet
								createbullet(math.random(0,932),0,0,0,3,0)
								createbullet(math.random(0,932),0,0,0,3,0)
								love.audio.stop(sounds.b1_rock)
								sounds.b1_rock:play()
							end
						end
					elseif e.health > 10 then--second phase
						--changes attacks
						if e.attack==1 and e.numattack >= 3 and e.tg==true then
							e.attack=2
							e.numattack=0
						elseif e.attack==2 and e.numattack >= 4 and e.tg==true then
							e.attack=3
							e.numattack=0
						elseif e.attack==3 and e.numattack >= 2 and e.tg==true then
							e.attack=1
							e.numattack=0
						end

						--attack 1
						if e.attack==1 then--jumping attack but faster
							if player.x > e.x then--facing logic
								e.face="right"
							elseif player.x < e.x then
								e.face="left"
							end

							if e.tg then
								e.timer = e.timer + dt*2
							end

							if e.timer > 0.9 then--Resets the timer after its sprung into the air
								e.timer = 0
								e.action = 0
							end

							if e.timer > 0.2 and e.timer < 0.4 then
								e.ani=5
							elseif e.timer > 0.4 and e.timer < 0.6 then
								e.ani=6
							elseif e.timer > 0.6 and e.timer < 0.8 then
								e.ani=7
							elseif e.timer > 0.8 and not e.tg then	
								e.ani=8
							else
								e.ani=5
							end

							if e.timer > 0.8 and e.action == 0 then--jumping logic
								e.tg = false
								e.y=e.y-1
								e.dy = -10
								e.action = 1
								e.numattack=e.numattack+1
								if e.face=="left" then
									e.dx=-6
								elseif e.face=="right" then
									e.dx=6
								end
							end
						elseif e.attack==2 then--jumping bolders attack
							if e.tg then
								e.timer = e.timer + dt*4
							end

							if e.timer > 0.9 then--Resets the timer after its sprung into the air
								e.timer = .2
								e.action = 0
							end

							if e.timer > 0.2 and e.timer < 0.4 then
								e.ani=5
							elseif e.timer > 0.4 and e.timer < 0.6 then
								e.ani=6
							elseif e.timer > 0.6 and e.timer < 0.8 then
								e.ani=7
							elseif e.timer > 0.8 and not e.tg then	
								e.ani=8
							else
								e.ani=5
							end

							if e.timer > 0.8 and e.action == 0 then--jumping logic
								e.tg = false
								e.y=e.y-1
								e.dy = -12
								e.action = 1
								e.numattack=e.numattack+1
								sounds.b1_rock:play()
								createbullet(math.random(0,932),0,0,0,3,0)--bolder bullet
								createbullet(math.random(0,932),0,0,0,3,0)
								createbullet(math.random(0,932),0,0,0,3,0)
								love.audio.stop(sounds.b1_rock)
								sounds.b1_rock:play()
							end
						elseif e.attack==3 then--jumping slam attack
							if player.x > e.x then--facing logic
								e.face="right"
							elseif player.x < e.x then
								e.face="left"
							end

							if e.tg then
								e.timer = e.timer + dt*1
							end

							if e.timer > 0.9 then--Resets the timer after its sprung into the air
								e.timer = 0
								e.action = 0
							end

							if e.timer > 0.2 and e.timer < 0.4 then
								e.ani=5
							elseif e.timer > 0.4 and e.timer < 0.6 then
								e.ani=6
							elseif e.timer > 0.6 and e.timer < 0.8 then
								e.ani=7
							elseif e.timer > 0.8 and not e.tg then	
								e.ani=8
							else
								e.ani=5
							end

							if e.timer > 0.8 and e.action == 0 then--jumping logic
								e.tg = false
								e.y=e.y-1
								e.dy = -18
								e.action = 1
								e.numattack=e.numattack+1
								if e.face=="left" then
									e.dx=-6
								elseif e.face=="right" then
									e.dx=6
								end
							end
						end
					else-- third phase
						--changes attacks
						if e.attack==1 and e.numattack >= 3 and e.tg==true then
							e.attack=2
							e.numattack=0
						elseif e.attack==2 and e.numattack >= 4 and e.tg==true then
							e.attack=3
							e.numattack=0
						elseif e.attack==3 and e.numattack >= 2 and e.tg==true then
							e.attack=1
							e.numattack=0
						end

						--attack 1
						if e.attack==1 then--jumping attack but faster
							if player.x > e.x then--facing logic
								e.face="right"
							elseif player.x < e.x then
								e.face="left"
							end

							if e.tg then
								e.timer = e.timer + dt*3
							end

							if e.timer > 0.9 then--Resets the timer after its sprung into the air
								e.timer = 0
								e.action = 0
							end

							if e.timer > 0.2 and e.timer < 0.4 then
								e.ani=9
							elseif e.timer > 0.4 and e.timer < 0.6 then
								e.ani=10
							elseif e.timer > 0.6 and e.timer < 0.8 then
								e.ani=11
							elseif e.timer > 0.8 and not e.tg then	
								e.ani=12
							else
								e.ani=9
							end

							if e.timer > 0.8 and e.action == 0 then--jumping logic
								e.tg = false
								e.y=e.y-1
								e.dy = -13
								e.action = 1
								e.numattack=e.numattack+1
								if e.face=="left" then
									e.dx=-6
								elseif e.face=="right" then
									e.dx=6
								end
							end
						elseif e.attack==2 then--jumping bolders attack
							if e.tg then
								e.timer = e.timer + dt*4
							end

							if e.timer > 0.9 then--Resets the timer after its sprung into the air
								e.timer = .2
								e.action = 0
							end

							if e.timer > 0.2 and e.timer < 0.4 then
								e.ani=9
							elseif e.timer > 0.4 and e.timer < 0.6 then
								e.ani=10
							elseif e.timer > 0.6 and e.timer < 0.8 then
								e.ani=11
							elseif e.timer > 0.8 and not e.tg then	
								e.ani=12
							else
								e.ani=9
							end

							if e.timer > 0.8 and e.action == 0 then--jumping logic
								e.tg = false
								e.y=e.y-1
								e.dy = -11
								e.action = 1
								e.numattack=e.numattack+1
								sounds.b1_rock:play()
								createbullet(math.random(0,932),0,0,0,3,0)--bolder bullet
								createbullet(math.random(0,932),0,0,0,3,0)
								createbullet(math.random(0,932),0,0,0,3,0)
								love.audio.stop(sounds.b1_rock)
								sounds.b1_rock:play()
							end
						elseif e.attack==3 then--jumping slam attack
							if player.x > e.x then--facing logic
								e.face="right"
							elseif player.x < e.x then
								e.face="left"
							end

							if e.tg then
								e.timer = e.timer + dt*1
							end

							if e.timer > 0.9 then--Resets the timer after its sprung into the air
								e.timer = 0
								e.action = 0
							end

							if e.timer > 0.2 and e.timer < 0.4 then
								e.ani=9
							elseif e.timer > 0.4 and e.timer < 0.6 then
								e.ani=10
							elseif e.timer > 0.6 and e.timer < 0.8 then
								e.ani=11
							elseif e.timer > 0.8 and not e.tg then	
								e.ani=12
							else
								e.ani=9
							end

							if e.timer > 0.8 and e.action == 0 then--jumping logic
								e.tg = false
								e.y=e.y-1
								e.dy = -18
								e.action = 1
								e.numattack=e.numattack+1
								if e.face=="left" then
									e.dx=-6
								elseif e.face=="right" then
									e.dx=6
								end
							end
						end
					end
					--collisions
					if e.x <= 0 then --left wall
						e.dx = 0
						e.x = e.x + 1
						e.x = math.floor(e.x)
					end

					if e.x+e.w-1 >= (#maps[levels.current][1]*32)-0 then --right wall
						e.dx = 0
						e.x = e.x - 1
						e.x = math.ceil(e.x)
					end

					if e.y <= 0 then --top wall
						e.dy = 0
						e.y = e.y + 1
					end

					if box_collision(player.x,player.y,player.w,player.h,e.x,e.y,e.w,e.h) then--player collision
						playerdied()
					end
					--Tile collision
					if map_collision(e.x,e.y,e.w,e.h,"down2",maps[levels.current],flags.ground) or map_collision(e.x,e.y,e.w,e.h,"down2",maps[levels.current],flags.enemy_ground) then -- Ground Collision
						e.tg=true
						while map_collision(e.x+3,e.y,e.w-4,e.h,"down",maps[levels.current],flags.ground) or map_collision(e.x,e.y,e.w,e.h,"down",maps[levels.current],flags.enemy_ground) do
							e.y=e.y-.5
						end
						if e.dy > 15 and e.attack==3 then
							if e.health > 10 then
								createbullet(e.x+52,e.y+30,1,0,4,0)
								createbullet(e.x-8,e.y+30,-1,0,4,0)
								love.audio.stop(sounds.b1_smash)
								sounds.b1_smash:play()
							else
								--createbullet(e.x+52,e.y+30,1,0,4,0)maybe dor hard mode
								--createbullet(e.x-8,e.y+30,-1,0,4,0)
								createbullet(e.x+52,e.y+30,3,0,4,0)
								createbullet(e.x-8,e.y+30,-3,0,4,0)
								love.audio.stop(sounds.b1_smash)
								sounds.b1_smash:play()
							end
						end
					else
					    e.tg=false
					end

					if map_collision(e.x,e.y,e.w,e.h,"left",maps[levels.current],flags.ground) or map_collision(e.x,e.y,e.w,e.h,"left",maps[levels.current],flags.enemy_ground) then -- Left Collision
						e.dx = 0
						e.x = e.x + 1
						e.x = math.floor(e.x)
					end

					if map_collision(e.x,e.y,e.w,e.h,"right",maps[levels.current],flags.ground) or map_collision(e.x,e.y,e.w,e.h,"right",maps[levels.current],flags.enemy_ground) then -- Right Collision
						e.dx = 0
						e.x = e.x - 1
						e.x = math.ceil(e.x)
					end

					if map_collision(e.x,e.y,e.w,e.h,"up",maps[levels.current],flags.ground)  or map_collision(e.x,e.y,e.w,e.h,"up",maps[levels.current],flags.enemy_ground) then -- Up Collision
						e.dy = 0
						e.y = e.y + 1
					end

					if player.ani == 4 then
						if box_collision(player.x,player.y+8,player.w,player.h-8,e.x,e.y,e.w,e.h) then--player collision
							playerdied()
						end
					else
						if box_collision(player.x,player.y,player.w,player.h,e.x,e.y,e.w,e.h) then--player collision
							playerdied()
						end
					end
					if e.health <= 0 then
						explode_picture(e.x,e.y,enemies.picsdata[52+e.ani],{-25,25,-25,25,30,50})
						maps[levels.current][13][30]=59
						sounds.level_change:play()
						table.remove(enemies.enemies,i)
					end
				elseif e.type == "b2" then --~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-- boss 2
					e.x = e.x + dt*(e.dx*60)
					e.y = e.y + dt*(e.dy*60)
					e.dx = e.dx - ((e.dx * 1) * dt)
					e.dy = e.dy - ((e.dy * 1) * dt)
					e.w=60
					e.h=36

					--remebers last phase
					if e.last_phase==0 then
						e.timer=-2 
						e.last_phase=1
						e.health=8
					elseif e.last_phase==1 and e.health < 9 then
						e.timer=-2
						e.last_phase=2
						e.attack=1
						sounds.bomb_explosion:play()
						--removes all the fire
						for a=1, #maps[levels.current] do 
							for b=1, #maps[levels.current][a] do
								if maps[levels.current][a][b] == 689 or maps[levels.current][a][b] == 690 then
									maps[levels.current][a][b] = 0
								end
							end
						end

						--removes all the bullets
						for b,_ in pairs(enemies.bullets) do
							enemies.bullets[b]=nil
						end
					end

					--timer counter
					e.timer=e.timer+dt

					--attack patterns
					if e.health >= 9 then--first phase
						--changes attacks
						if e.attack==1 and e.numattack >= 7 then
							e.attack=2
							e.numattack=0
						elseif e.attack==2 and e.numattack >= 3 then
							e.attack=1
							e.numattack=0
						end
						--end

						--animation
						if player.x+(player.w/2) < e.x+(e.w/2) then
							if player.y+(player.h/2) < e.y+(e.h/2) then
								e.ani=2
							else
								e.ani=1
							end
						else
							if player.y+(player.h/2) < e.y+(e.h/2) then
								e.ani=3
							else
								e.ani=4
							end
						end


						--attack 1
						if e.attack==1 then
							--movement
							--horazontal
							if player.x+(player.w/2) < e.x+(e.w/2) then
								if e.dx > -6 then
									e.dx=e.dx-(6*dt)
								end
							else
								if e.dx < 6 then
									e.dx=e.dx+(6*dt)
								end
							end
							--vertical
							if timer.animation==2 then
								e.dy=e.dy+2
							end
							if e.y > 200 then
								if e.dy > -3 then
									e.dy=e.dy-(12*dt)
								end
							else
								if e.dy < 3 and e.y < 150 then
									e.dy=e.dy+(12*dt)
								end
							end

							--attack
							if e.timer > 0.5 then
								e.numattack=e.numattack+1
								e.timer=0
								createbullet(e.x+20,e.y+36,0,0,5,0)
								love.audio.stop(sounds.b2_lightning)
								sounds.b2_lightning:play()
							end
						--attack 2
						elseif e.attack==2 then
							--movement
							--horazontal
							if player.x+(player.w/2) < e.x+(e.w/2) then
								if e.dx > -6 then
									e.dx=e.dx-(6*dt)
								end
							else
								if e.dx < 6 then
									e.dx=e.dx+(6*dt)
								end
							end
							--vertical
							if timer.animation==2 then
								e.dy=e.dy+2
							end
							if e.y > 300 then
								if e.dy > -3 then
									e.dy=e.dy-(12*dt)
								end
							else
								if e.dy < 3 and e.y < 250 then
									e.dy=e.dy+(12*dt)
								end
							end

							--attack
							if e.timer > 2 then
								e.numattack=e.numattack+1
								e.timer=0
								createbullet(e.x+20,e.y+36,0,-3,6,0)
								love.audio.stop(sounds.b2_big_lightning)
								sounds.b2_big_lightning:play()
								e.dx=0
								e.dy=0
							end
						end
					elseif e.health >= 5 then--second phase
						--changes attacks
						if e.attack==1 and e.numattack >= 10 then
							e.attack=2
							e.numattack=0
						elseif e.attack==2 and e.numattack >= 3 then
							e.attack=1
							e.numattack=0
						end

						--animation
						if player.x+(player.w/2) < e.x+(e.w/2) then
							if player.y+(player.h/2) < e.y+(e.h/2) then
								e.ani=6
							else
								e.ani=5
							end
						else
							if player.y+(player.h/2) < e.y+(e.h/2) then
								e.ani=7
							else
								e.ani=8
							end
						end

						--attack 1
						if e.attack==1 then
							--movement
							--horazontal
							if player.x+(player.w/2) < e.x+(e.w/2) then
								if e.dx > -9 then
									e.dx=e.dx-(12*dt)
								end
							else
								if e.dx < 9 then
									e.dx=e.dx+(12*dt)
								end
							end
							--vertical
							if timer.animation==2 then
								e.dy=e.dy+2
							end
							if e.y > 200 then
								if e.dy > -6 then
									e.dy=e.dy-(18*dt)
								end
							else
								if e.dy < 6 and e.y < 150 then
									e.dy=e.dy+(18*dt)
								end
							end

							--attack
							if e.timer > 0.35 then
								e.numattack=e.numattack+1
								e.timer=0
								createbullet(e.x+20,e.y+36,0,0,5,0)
								love.audio.stop(sounds.b2_lightning)
								sounds.b2_lightning:play()
							end
						elseif e.attack==2 then
							--movement
							--horazontal
							if player.x+(player.w/2) < e.x+(e.w/2) then
								if e.dx > -6 then
									e.dx=e.dx-(6*dt)
								end
							else
								if e.dx < 6 then
									e.dx=e.dx+(6*dt)
								end
							end
							--vertical
							if timer.animation==2 then
								e.dy=e.dy+2
							end
							if e.y > 175 then
								if e.dy > -3 then
									e.dy=e.dy-(6*dt)
								end
							else
								if e.dy < 3 and e.y < 130 then
									e.dy=e.dy+(6*dt)
								end
							end

							--attack
							if e.timer > 2 then
								e.numattack=e.numattack+1
								e.timer=0
								createbullet(e.x+12,e.y+36,0,0,7,0)
								love.audio.stop(sounds.b2_big_lightning)
								sounds.b2_big_lightning:play()
								e.dx=0
								e.dy=0
							end
						end
					end

					--collision
					if box_collision(player.x,player.y,player.w,player.h,e.x,e.y,e.w,e.h) then--player collision
						playerdied()
					end
				end
			end
		end
		--Enemies End

		--player bullets
		if levels.statee==0 then
			for i,b in ipairs(player.bullets) do
				b.x = b.x + dt*(b.dx*60)
				b.y = b.y + dt*(b.dy*60)

				--Wall Collision
				if b.x <= 0 then --left wall
					explode_picture(b.x,b.y,bullet_picsdata[1],{-25,25,-25,25,5,10})
					table.remove(player.bullets,i)
				end

				if b.x+b.w-1 >= (#maps[levels.current][1]*32)-0 then --right wall
					explode_picture(b.x,b.y,bullet_picsdata[1],{-25,25,-25,25,5,10})
					table.remove(player.bullets,i)
				end

				if b.y <= 0 then --top wall
					explode_picture(b.x,b.y,bullet_picsdata[1],{-25,25,-25,25,5,10})
					table.remove(player.bullets,i)
				end


				--Tile collision
				if map_collision(b.x,b.y,b.w,b.h,"left",maps[levels.current],flags.lazergate) then -- lazergate left Collision
					if maps[levels.current][math.floor((b.y+b.h)/32)+1][math.floor((b.x)/32)+1]==72 then
						sounds.player_lazergate:play()
						explode_picture(b.x,b.y,bullet_picsdata[1],{-25,25,-25,25,5,10})
						table.remove(player.bullets,i)
						maps[levels.current][math.floor((b.y+b.h)/32)+1][math.floor((b.x)/32)+1]=0
					end
				end

				if map_collision(b.x,b.y,b.w,b.h,"right",maps[levels.current],flags.lazergate) then -- lazergate right Collision
					if maps[levels.current][math.floor((b.y+b.h)/32)+1][math.floor((b.x+28)/32)+1]==72 then
						sounds.player_lazergate:play()
						explode_picture(b.x,b.y,bullet_picsdata[1],{-25,25,-25,25,5,10})
						table.remove(player.bullets,i)
						maps[levels.current][math.floor((b.y+b.h)/32)+1][math.floor((b.x+28)/32)+1]=0
					end
				end

				if map_collision(b.x,b.y,b.w,b.h,"left",maps[levels.current],flags.explode) then -- explode left Collision
					sounds.player_lazergate:play()
					explode_picture(b.x,b.y,bullet_picsdata[1],{-25,25,-25,25,5,10})
					table.remove(player.bullets,i)
					if maps[levels.current][math.floor((b.y+b.h)/32)+1][math.floor((b.x)/32)+1]==126 then
						maps[levels.current][math.floor((b.y+b.h)/32)+0][math.floor((b.x)/32)+0]=0
						maps[levels.current][math.floor((b.y+b.h)/32)+0][math.floor((b.x)/32)+1]=0
						maps[levels.current][math.floor((b.y+b.h)/32)+0][math.floor((b.x)/32)+2]=0
						maps[levels.current][math.floor((b.y+b.h)/32)+1][math.floor((b.x)/32)+0]=0
						maps[levels.current][math.floor((b.y+b.h)/32)+1][math.floor((b.x)/32)+1]=0
						maps[levels.current][math.floor((b.y+b.h)/32)+1][math.floor((b.x)/32)+2]=0
						maps[levels.current][math.floor((b.y+b.h)/32)+2][math.floor((b.x)/32)+0]=0
						maps[levels.current][math.floor((b.y+b.h)/32)+2][math.floor((b.x)/32)+1]=0
						maps[levels.current][math.floor((b.y+b.h)/32)+2][math.floor((b.x)/32)+2]=0
					end
				end

				if map_collision(b.x,b.y,b.w,b.h,"right",maps[levels.current],flags.explode) then -- explode right Collision
					sounds.player_lazergate:play()
					explode_picture(b.x,b.y,bullet_picsdata[1],{-25,25,-25,25,5,10})
					table.remove(player.bullets,i)
					if maps[levels.current][math.floor((b.y+b.h)/32)+1][math.floor((b.x+28)/32)+1]==126 then
						maps[levels.current][math.floor((b.y+b.h)/32)+0][math.floor((b.x+28)/32)+0]=0
						maps[levels.current][math.floor((b.y+b.h)/32)+0][math.floor((b.x+28)/32)+1]=0
						maps[levels.current][math.floor((b.y+b.h)/32)+0][math.floor((b.x+28)/32)+2]=0
						maps[levels.current][math.floor((b.y+b.h)/32)+1][math.floor((b.x+28)/32)+0]=0
						maps[levels.current][math.floor((b.y+b.h)/32)+1][math.floor((b.x+28)/32)+1]=0
						maps[levels.current][math.floor((b.y+b.h)/32)+1][math.floor((b.x+28)/32)+2]=0
						maps[levels.current][math.floor((b.y+b.h)/32)+2][math.floor((b.x+28)/32)+0]=0
						maps[levels.current][math.floor((b.y+b.h)/32)+2][math.floor((b.x+28)/32)+1]=0
						maps[levels.current][math.floor((b.y+b.h)/32)+2][math.floor((b.x+28)/32)+2]=0
					end
				end


				if map_collision(b.x,b.y,b.w,b.h,"down",maps[levels.current],flags.ground) or map_collision(b.x,b.y,b.w,b.h,"left",maps[levels.current],flags.ground) or map_collision(b.x,b.y,b.w,b.h,"right",maps[levels.current],flags.ground) or map_collision(b.x,b.y,b.w,b.h,"up",maps[levels.current],flags.ground) then -- Ground Collision
					explode_picture(b.x,b.y,bullet_picsdata[1],{-25,25,-25,25,5,10})
					table.remove(player.bullets,i)
				end

				for _,e in pairs(enemies.enemies) do
					if box_collision(b.x,b.y,b.w,b.h,e.x,e.y,e.w,e.h) then--enemy collision
						explode_picture(b.x,b.y,bullet_picsdata[1],{-25,25,-25,25,5,10})
						table.remove(player.bullets,i)
						e.health=e.health-1
						break
					end
				end

				--bullet collision
				for q,e in pairs(enemies.bullets) do
					if box_collision(b.x,b.y,b.w,b.h,e.x,e.y,e.w,e.h) then--enemy bullets collision
						if e.type == 7 then
							createbullet(e.x+8,e.y+20,0,3,8,0)
							explode_picture(b.x,b.y,bullet_picsdata[1],{-25,25,-25,25,5,10})
							table.remove(player.bullets,i)
							table.remove(enemies.bullets,q)
							break
						end
					end
				end
			end
		end
		--bullets end

		--enemy bullets
		if levels.statee==0 then
			for i,b in ipairs(enemies.bullets) do
				if b.type==1 then--regular bullet 3x3
					b.x = b.x + dt*(b.dx*60)
					b.y = b.y + dt*(b.dy*60)
					b.w=12
					b.h=12

					--Wall Collision
					if b.x <= 0 then --left wall
						table.remove(enemies.bullets,i)
					end

					if b.x+b.w-1 >= (#maps[levels.current][1]*32)-0 then --right wall
						table.remove(enemies.bullets,i)
					end

					if b.y <= 0 then --top wall
						table.remove(enemies.bullets,i)
					end

					if b.y+b.h >= (#maps[levels.current]*32)-12 then --bottem wall
						table.remove(enemies.bullets,i)
					end


					--Tile collision
					if map_collision(b.x,b.y,b.w,b.h,"left",maps[levels.current],flags.lazergate) then -- lazergate left Collision
						sounds.player_lazergate:play()
						table.remove(enemies.bullets,i)
						maps[levels.current][math.floor((b.y)/32)+1][math.floor((b.x)/32)+1]=0
					end

					if map_collision(b.x,b.y,b.w,b.h,"right",maps[levels.current],flags.lazergate) then -- lazergate right Collision
						sounds.player_lazergate:play()
						table.remove(enemies.bullets,i)
						maps[levels.current][math.floor((b.y)/32)+1][math.floor((b.x+28)/32)+1]=0
					end

					if map_collision(b.x,b.y+b.h,b.w,1,"left",maps[levels.current],flags.explode) then -- explode left Collision
						sounds.player_lazergate:play()
						table.remove(enemies.bullets,i)
						if maps[levels.current][math.floor((b.y+b.h)/32)+1][math.floor((b.x)/32)+1]==126 then
							maps[levels.current][math.floor((b.y+b.h)/32)+0][math.floor((b.x)/32)+0]=0
							maps[levels.current][math.floor((b.y+b.h)/32)+0][math.floor((b.x)/32)+1]=0
							maps[levels.current][math.floor((b.y+b.h)/32)+0][math.floor((b.x)/32)+2]=0
							maps[levels.current][math.floor((b.y+b.h)/32)+1][math.floor((b.x)/32)+0]=0
							maps[levels.current][math.floor((b.y+b.h)/32)+1][math.floor((b.x)/32)+1]=0
							maps[levels.current][math.floor((b.y+b.h)/32)+1][math.floor((b.x)/32)+2]=0
							maps[levels.current][math.floor((b.y+b.h)/32)+2][math.floor((b.x)/32)+0]=0
							maps[levels.current][math.floor((b.y+b.h)/32)+2][math.floor((b.x)/32)+1]=0
							maps[levels.current][math.floor((b.y+b.h)/32)+2][math.floor((b.x)/32)+2]=0
						end
					end

					if map_collision(b.x,b.y+b.h,b.w,1,"right",maps[levels.current],flags.explode) then -- explode right Collision
						sounds.player_lazergate:play()
						table.remove(enemies.bullets,i)
						if maps[levels.current][math.floor((b.y+b.h)/32)+1][math.floor((b.x+28)/32)+1]==126 then
							maps[levels.current][math.floor((b.y+b.h)/32)+0][math.floor((b.x+28)/32)+0]=0
							maps[levels.current][math.floor((b.y+b.h)/32)+0][math.floor((b.x+28)/32)+1]=0
							maps[levels.current][math.floor((b.y+b.h)/32)+0][math.floor((b.x+28)/32)+2]=0
							maps[levels.current][math.floor((b.y+b.h)/32)+1][math.floor((b.x+28)/32)+0]=0
							maps[levels.current][math.floor((b.y+b.h)/32)+1][math.floor((b.x+28)/32)+1]=0
							maps[levels.current][math.floor((b.y+b.h)/32)+1][math.floor((b.x+28)/32)+2]=0
							maps[levels.current][math.floor((b.y+b.h)/32)+2][math.floor((b.x+28)/32)+0]=0
							maps[levels.current][math.floor((b.y+b.h)/32)+2][math.floor((b.x+28)/32)+1]=0
							maps[levels.current][math.floor((b.y+b.h)/32)+2][math.floor((b.x+28)/32)+2]=0
						end
					end

					if map_collision(b.x,b.y,b.w,b.h,"down2",maps[levels.current],flags.ground) or map_collision(b.x,b.y,b.w,b.h,"left",maps[levels.current],flags.ground) or map_collision(b.x,b.y,b.w,b.h,"right",maps[levels.current],flags.ground) or map_collision(b.x,b.y,b.w,b.h,"up",maps[levels.current],flags.ground) then
						table.remove(enemies.bullets,i)
					end

					if player.ani == 4 then
						if box_collision(b.x,b.y,b.w,b.h,player.x,player.y+8,player.w,player.h-8) then--player collision if crouching
							table.remove(enemies.bullets,i)
							playerdied()
						end
					else
						if box_collision(b.x,b.y,b.w,b.h,player.x,player.y,player.w,player.h) then--player collision
							table.remove(enemies.bullets,i)
							playerdied()
						end
					end
				elseif b.type==2 then -- snipey bullet ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
					b.x = b.x + dt*(b.dx*60) 
					b.y = b.y + dt*(b.dy*60)
					b.w=20
					b.h=20
					--Wall Collision
					if b.x <= 0 then --left wall
						love.audio.stop(sounds.shooty_shoot)
						sounds.shooty_shoot:play()
						createbullet(b.x-12,b.y+4,-3,0,1)--left
						createbullet(b.x-12,b.y-12,-3,-3,1)--left up
						createbullet(b.x+20,b.y+4,3,0,1)--right
						createbullet(b.x+20,b.y+20,3,3,1)--right down
						createbullet(b.x+4,b.y-12,0,-3,1)--up
						createbullet(b.x+20,b.y-12,3,-3,1)--up right
						createbullet(b.x+4,b.y+20,0,3,1)--down
						createbullet(b.x-12,b.y+20,-3,3,1)--down left
						table.remove(enemies.bullets,i)
					end

					if b.x+b.w-1 >= (#maps[levels.current][1]*32)-0 then --right wall
						love.audio.stop(sounds.shooty_shoot)
						sounds.shooty_shoot:play()
						createbullet(b.x-12,b.y+4,-3,0,1)--left
						createbullet(b.x-12,b.y-12,-3,-3,1)--left up
						createbullet(b.x+20,b.y+4,3,0,1)--right
						createbullet(b.x+20,b.y+20,3,3,1)--right down
						createbullet(b.x+4,b.y-12,0,-3,1)--up
						createbullet(b.x+20,b.y-12,3,-3,1)--up right
						createbullet(b.x+4,b.y+20,0,3,1)--down
						createbullet(b.x-12,b.y+20,-3,3,1)--down left
						table.remove(enemies.bullets,i)
					end

					if b.y <= 0 then --top wall
						love.audio.stop(sounds.shooty_shoot)
						sounds.shooty_shoot:play()
						createbullet(b.x-12,b.y+4,-3,0,1)--left
						createbullet(b.x-12,b.y-12,-3,-3,1)--left up
						createbullet(b.x+20,b.y+4,3,0,1)--right
						createbullet(b.x+20,b.y+20,3,3,1)--right down
						createbullet(b.x+4,b.y-12,0,-3,1)--up
						createbullet(b.x+20,b.y-12,3,-3,1)--up right
						createbullet(b.x+4,b.y+20,0,3,1)--down
						createbullet(b.x-12,b.y+20,-3,3,1)--down left
						table.remove(enemies.bullets,i)
					end

					if b.y+b.h >= (#maps[levels.current]*32)-12 then --bottem wall
						love.audio.stop(sounds.shooty_shoot)
						sounds.shooty_shoot:play()
						createbullet(b.x-12,b.y+4,-3,0,1)--left
						createbullet(b.x-12,b.y-12,-3,-3,1)--left up
						createbullet(b.x+20,b.y+4,3,0,1)--right
						createbullet(b.x+20,b.y+20,3,3,1)--right down
						createbullet(b.x+4,b.y-12,0,-3,1)--up
						createbullet(b.x+20,b.y-12,3,-3,1)--up right
						createbullet(b.x+4,b.y+20,0,3,1)--down
						createbullet(b.x-12,b.y+20,-3,3,1)--down left
						table.remove(enemies.bullets,i)
					end

					--Tile collision
					if map_collision(b.x,b.y,b.w,b.h,"down2",maps[levels.current],flags.ground) or map_collision(b.x,b.y,b.w,b.h,"left",maps[levels.current],flags.ground) or map_collision(b.x,b.y,b.w,b.h,"right",maps[levels.current],flags.ground) or map_collision(b.x,b.y,b.w,b.h,"up",maps[levels.current],flags.ground) then
						love.audio.stop(sounds.shooty_shoot)
						sounds.shooty_shoot:play()
						createbullet(b.x-12,b.y+4,-3,0,1)--left
						createbullet(b.x-12,b.y-12,-3,-3,1)--left up
						createbullet(b.x+20,b.y+4,3,0,1)--right
						createbullet(b.x+20,b.y+20,3,3,1)--right down
						createbullet(b.x+4,b.y-12,0,-3,1)--up
						createbullet(b.x+20,b.y-12,3,-3,1)--up right
						createbullet(b.x+4,b.y+20,0,3,1)--down
						createbullet(b.x-12,b.y+20,-3,3,1)--down left
						table.remove(enemies.bullets,i)
					end

					if player.ani == 4 then
						if box_collision(b.x,b.y,b.w,b.h,player.x,player.y+8,player.w,player.h-8) then--player collision if crouching
							table.remove(enemies.bullets,i)
							playerdied()
						end
					else
						if box_collision(b.x,b.y,b.w,b.h,player.x,player.y,player.w,player.h) then--player collision
							table.remove(enemies.bullets,i)
							playerdied()
						end
					end
				elseif b.type==3 then -- boss 1 rock bullet
					b.x = b.x + dt*(b.dx*60) 
					b.y = b.y + dt*(b.dy*60)
					b.w=28
					b.h=32

					b.life=b.life+dt
					--turns the warning into a bolder and gives it momentum
					if b.life > 1 then
						if b.life < 1.1 then
							sounds.b1_rock2:play()
						end
						b.dy = b.dy + dt*(gravity*80)
					end

					if b.y+b.h >= (#maps[levels.current]*32)-12 then --bottem wall
						table.remove(enemies.bullets,i)
					end

					--Tile collision
					if map_collision(b.x,b.y,b.w,b.h,"down2",maps[levels.current],flags.ground) or map_collision(b.x,b.y,b.w,b.h,"left",maps[levels.current],flags.ground) or map_collision(b.x,b.y,b.w,b.h,"right",maps[levels.current],flags.ground) or map_collision(b.x,b.y,b.w,b.h,"up",maps[levels.current],flags.ground) then
						table.remove(enemies.bullets,i)
					end

					if player.ani == 4 then
						if box_collision(b.x,b.y,b.w,b.h,player.x,player.y+8,player.w,player.h-8) then--player collision if crouching
							table.remove(enemies.bullets,i)
							playerdied()
						end
					else
						if box_collision(b.x,b.y,b.w,b.h,player.x,player.y,player.w,player.h) then--player collision
							table.remove(enemies.bullets,i)
							playerdied()
						end
					end
				elseif b.type==4 then -- boss 1 spike bullet
					b.x = b.x + dt*(b.dx*60) 
					b.y = b.y + dt*(b.dy*60)
					b.w=20
					b.h=20

					--Wall Collision
					b.life=b.life+dt
					--turns the warning into a bolder and gives it momentum
					if b.life > 3 then
						b.dy = b.dy + dt*(gravity*120)
					end

					if b.y+b.h >= (#maps[levels.current]*32)+20 then --bottem wall
						table.remove(enemies.bullets,i)
					end

					if player.ani == 4 then
						if box_collision(b.x,b.y,b.w,b.h,player.x,player.y+8,player.w,player.h-8) then--player collision if crouching
							table.remove(enemies.bullets,i)
							playerdied()
						end
					else
						if box_collision(b.x,b.y,b.w,b.h,player.x,player.y,player.w,player.h) then--player collision
							table.remove(enemies.bullets,i)
							playerdied()
						end
					end
				elseif b.type==5 then -- boss 2 Lightning bullet
					b.x = b.x + dt*(b.dx*60) 
					b.y = b.y + dt*(b.dy*60)
					b.w=20
					b.h=32

					--Wall Collision
					b.life=b.life+dt
					b.dy = b.dy + dt*(gravity*40)

					if b.y+b.h >= (#maps[levels.current]*32)+32 then --bottem wall
						table.remove(enemies.bullets,i)
					end

					if player.ani == 4 then
						if box_collision(b.x,b.y,b.w,b.h,player.x,player.y+8,player.w,player.h-8) then--player collision if crouching
							table.remove(enemies.bullets,i)
							playerdied()
						end
					else
						if box_collision(b.x,b.y,b.w,b.h,player.x,player.y,player.w,player.h) then--player collision
							table.remove(enemies.bullets,i)
							playerdied()
						end
					end
				elseif b.type==6 then -- boss 2 fire bullet
					b.x = b.x + dt*(b.dx*60) 
					b.y = b.y + dt*(b.dy*60)
					b.w=24
					b.h=32

					b.life=b.life+dt
					b.dy = b.dy + dt*(gravity*60)

					if box_collision(b.x,b.y,b.w,b.h,player.x,player.y,player.w,player.h) then--player collision
						table.remove(enemies.bullets,i)
						playerdied()
					end

					if map_collision(b.x,b.y,b.w,b.h,"down2",maps[levels.current],flags.ground) or map_collision(b.x,b.y,b.w,b.h,"left",maps[levels.current],flags.ground) or map_collision(b.x,b.y,b.w,b.h,"right",maps[levels.current],flags.ground) or map_collision(b.x,b.y,b.w,b.h,"up",maps[levels.current],flags.ground) then
						table.remove(enemies.bullets,i)
						if b.x > 0 then
							maps[levels.current][13][math.floor(b.x/32)+1]=689
						end
					end
				elseif b.type==7 then -- boss 2 cloud bullet
					b.x = b.x + dt*(b.dx*60) 
					b.y = b.y + dt*(b.dy*60)
					--b.dx = b.dx - ((b.dx * 1) * dt)
					--b.dy = b.dy - ((b.dy * 1) * dt)
					b.w=36
					b.h=20

					if b.life == 0 then
						b.last_fire=0
					end

					b.life=b.life+dt
					if b.life > b.last_fire + 0.75 then
						b.last_fire=b.life
						createbullet(b.x+8,b.y+20,0,0,5,0)
						love.audio.stop(sounds.b2_lightning)
						sounds.b2_lightning:play()
					end

					--movement
					if player.x+(player.w/2) < b.x+(b.w/2) then
						if b.dx > -2 then
							b.dx=b.dx-(2*dt)
						end
					else
						if b.dx < 2 then
							b.dx=b.dx+(2*dt)
						end
					end
					--vertical
					if b.y > 300 then
						if b.dy > -2 then
							b.dy=b.dy-(2*dt)
						end
					elseif b.y < 275 then
						if b.dy < 2 then
							b.dy=b.dy+(2*dt)
						end
					end

					if box_collision(player.x,player.y,player.w,player.h,b.x,b.y+4,b.w,b.h+4) then--player collision
						player.tg=true
						while box_collision(player.x,player.y,player.w,player.h,b.x,b.y+8,b.w,b.h+8) do
							player.y=player.y-.5
							player.tg=true
						end
					end

					--if box_collision(b.x,b.y,b.w,b.h,player.x,player.y,player.w,player.h) then--player collision
					--	table.remove(enemies.bullets,i)
					--	playerdied()
					--end
				elseif b.type==8 then -- boss 2 Cloud Lightning bullet
					b.x = b.x + dt*(b.dx*60) 
					b.y = b.y + dt*(b.dy*60)
					b.w=20
					b.h=32

					--Wall Collision
					b.life=b.life+dt

					--movement
					if player.x+(player.w/2) < b.x+(b.w/2) then
						if b.dx > -2 then
							b.dx=b.dx-(6*dt)
						end
					else
						if b.dx < 2 then
							b.dx=b.dx+(6*dt)
						end
					end

					if b.y+b.h >= (#maps[levels.current]*32) then --bottem wall
						b.dy=-3
					end

					if b.y+b.h <= -32 then --top wall
						table.remove(enemies.bullets,i)
					end

					for _,e in pairs(enemies.enemies) do
						if box_collision(b.x,b.y,b.w,b.h,e.x,e.y,e.w,e.h) then--enemy collision
							table.remove(enemies.bullets,i)
							e.health=e.health-1
							break
						end
					end
				end
			end
		end
		--enemy bullets end
-- check_if_block(maps[levels.current][a][b],4)
		--Tile updating
		if levels.statee==0 then
			for a=1, #maps[levels.current] do 
				for b=1, #maps[levels.current][a] do
					if maps[levels.current][a][b] > 0 then
						if (b*32)>math.abs(scrollx) and (b*32)<math.abs(scrollx)+(60/levels.scale[levels.current])*32+32 then
							if maps[levels.current][a][b] == 9999 then
								startx=b*32-32
								starty=a*32-24
							elseif maps[levels.current][a][b] == 9998 then
								enemies.create(b*32-32,a*32-28,1)
								maps[levels.current][a][b]=0
							elseif maps[levels.current][a][b] == 9997 then
								enemies.create(b*32-32,a*32-32,2)
								maps[levels.current][a][b]=0
							elseif maps[levels.current][a][b] == 9996 then
								enemies.create(b*32-32,a*32-32,3)
								maps[levels.current][a][b]=0
							elseif maps[levels.current][a][b] == 9995 then
								enemies.create(b*32-32,a*32-48,4)
								maps[levels.current][a][b]=0
							elseif maps[levels.current][a][b] == 9994 then
								enemies.create(b*32-32,a*32-48,5)
								maps[levels.current][a][b]=0
							elseif maps[levels.current][a][b] == 9993 then
								enemies.create(b*32-32,a*32-36,6)
								maps[levels.current][a][b]=0
							elseif maps[levels.current][a][b] == 9992 then
								enemies.create(b*32-32,a*32-32,7,1)
								maps[levels.current][a][b]=0
							elseif maps[levels.current][a][b] == 9991 then
								enemies.create(b*32-28,a*32-32,8)
								maps[levels.current][a][b]=0
							elseif maps[levels.current][a][b] == 9990 then
								enemies.create(b*32-32,a*32-48,"b1")
								maps[levels.current][a][b]=0
							elseif maps[levels.current][a][b] == 9989 then
								enemies.create(b*32-32,a*32-36,"b2")
								maps[levels.current][a][b]=0
							elseif maps[levels.current][a][b] == 9988 then--grass platform
								enemies.create(b*32-32,a*32-32,7,2)
								maps[levels.current][a][b]=0
							elseif maps[levels.current][a][b] == 30 or maps[levels.current][a][b] == 31 or maps[levels.current][a][b] == 32 then
								if scores.levelGems[levels.current]==1 then
									maps[levels.current][a][b] = 0
								end
							elseif maps[levels.current][a][b] == 33 or maps[levels.current][a][b] == 34 then
								if #enemies.enemies>0 then
									maps[levels.current][a][b] = 33
								else
									maps[levels.current][a][b] = 34
								end
							elseif maps[levels.current][a][b] == 36 then
								if timer.interaction <= 0  then
									maps[levels.current][a][b] = 35
								end
							elseif maps[levels.current][a][b] == 61 then
								telex=b*32-32
								teley=a*32-32
							elseif maps[levels.current][a][b] == 63 then
								keydoorx=b
								keydoory=a
							elseif maps[levels.current][a][b] == 67 or maps[levels.current][a][b] == 68 then
								if levels.state==0 then
									maps[levels.current][a][b] = 67
								else
									maps[levels.current][a][b] = 68
								end
							elseif maps[levels.current][a][b] == 69 or maps[levels.current][a][b] == 70 or maps[levels.current][a][b] == 71 then
								if player.timer<=0.75 then
									sounds.player_build_delete:play()
									maps[levels.current][a][b] = 0
								end
							elseif maps[levels.current][a][b] == 79 or maps[levels.current][a][b] == 80 then
								if levels.state==0 then
									maps[levels.current][a][b] = 80
								else
									maps[levels.current][a][b] = 79
								end
							elseif maps[levels.current][a][b] == 75 or maps[levels.current][a][b] == 76 then
								if levels.stateb==0 then
									maps[levels.current][a][b] = 76
								else
									maps[levels.current][a][b] = 75
								end
							elseif maps[levels.current][a][b] == 82 then
								if (timer.animation%.5)*4 < 2 and (timer.animation%.5)*4 > 1.75 then
									maps[levels.current][a][b] = 83
								end
							elseif maps[levels.current][a][b] == 83 then
								if (timer.animation%.5)*4 < 1.75 and (timer.animation%.5)*4 > 1.50 then
									maps[levels.current][a][b] = 84
								end
							elseif maps[levels.current][a][b] == 84 then
								if (timer.animation%.5)*4 < 1.50 and (timer.animation%.5)*4 > 1.25 then
									maps[levels.current][a][b] = 85
								end
							elseif maps[levels.current][a][b] == 85 then
								if (timer.animation%.5)*4 < 1.25 and (timer.animation%.5)*4 > 1 then
									maps[levels.current][a][b] = 86
								end
							elseif maps[levels.current][a][b] == 86 then
								if (timer.animation%.5)*4 < 1 and (timer.animation%.5)*4 > 0.75 then
									maps[levels.current][a][b] = 87
								end
							elseif maps[levels.current][a][b] == 87 then
								if (timer.animation%.5)*4 < 0.75 and (timer.animation%.5)*4 > 0.50 then
									maps[levels.current][a][b] = 88
								end
							elseif maps[levels.current][a][b] == 88 then
								if (timer.animation%.5)*4 < 0.50 and (timer.animation%.5)*4 > 0.25 then
									maps[levels.current][a][b] = 89
								end
							elseif maps[levels.current][a][b] == 89 then
								if (timer.animation%.5)*4 < 0.25 then
									maps[levels.current][a][b] = 82
								end
							elseif maps[levels.current][a][b] == 93 then
								if (timer.animation < 2 and timer.animation > 1.8) or (timer.animation < 1.6 and timer.animation > 1.4) or (timer.animation < 1.2 and timer.animation > 1.0) or (timer.animation < 0.8 and timer.animation > 0.6) or (timer.animation < 0.4 and timer.animation > 0.2) then
									maps[levels.current][a][b] = 94
								end
							elseif maps[levels.current][a][b] == 94 then
								if (timer.animation < 1.8 and timer.animation > 1.6) or (timer.animation < 1.4 and timer.animation > 1.2) or (timer.animation < 1 and timer.animation > 0.8) or (timer.animation < 0.6 and timer.animation > 0.4) or (timer.animation < 0.2) then
									maps[levels.current][a][b] = 93
								end
							elseif maps[levels.current][a][b] == 95 then
								if (timer.animation < 2 and timer.animation > 1.8) or (timer.animation < 1.6 and timer.animation > 1.4) or (timer.animation < 1.2 and timer.animation > 1.0) or (timer.animation < 0.8 and timer.animation > 0.6) or (timer.animation < 0.4 and timer.animation > 0.2) then
									maps[levels.current][a][b] = 96
								end
							elseif maps[levels.current][a][b] == 96 then
								if (timer.animation < 1.8 and timer.animation > 1.6) or (timer.animation < 1.4 and timer.animation > 1.2) or (timer.animation < 1 and timer.animation > 0.8) or (timer.animation < 0.6 and timer.animation > 0.4) or (timer.animation < 0.2) then
									maps[levels.current][a][b] = 95
								end
							elseif maps[levels.current][a][b] == 122 then
								if timer.animation < 1 then
									maps[levels.current][a][b] = 123
								end
							elseif maps[levels.current][a][b] == 123 then
								if  timer.animation > 1  then
									maps[levels.current][a][b] = 122
								end
							elseif maps[levels.current][a][b] == 124 then
								if timer.animation > 1 then
									maps[levels.current][a][b] = 125
								end
							elseif maps[levels.current][a][b] == 125 then
								if  timer.animation < 1  then
									maps[levels.current][a][b] = 124
								end
							elseif maps[levels.current][a][b] == 127 then
								if levels.state==1 then
									maps[levels.current][a][b] = 130
								end
							elseif maps[levels.current][a][b] == 128 then
								if levels.state==1 then
									maps[levels.current][a][b] = 131
								end
							elseif maps[levels.current][a][b] == 129 then
								if levels.state==1 then
									maps[levels.current][a][b] = 132
								end
							elseif maps[levels.current][a][b] == 130 then
								if levels.state==0 then
									maps[levels.current][a][b] = 127
								end
							elseif maps[levels.current][a][b] == 131 then
								if levels.state==0 then
									maps[levels.current][a][b] = 128
								end
							elseif maps[levels.current][a][b] == 132 then
								if levels.state==0 then
									maps[levels.current][a][b] = 129
								end
							elseif maps[levels.current][a][b] == 133 or maps[levels.current][a][b] == 134  then
								if player.face=="right" then
									maps[levels.current][a][b] = 133
								else
									maps[levels.current][a][b] = 134
								end
							elseif maps[levels.current][a][b] == 135 or maps[levels.current][a][b] == 136  then
								if player.face=="left" then
									maps[levels.current][a][b] = 135
								else
									maps[levels.current][a][b] = 136
								end
							elseif maps[levels.current][a][b] == 138 then
								if timer.interaction <=1  then
									sounds.bridge_warning:play()
									maps[levels.current][a][b] = 139
								end
							elseif maps[levels.current][a][b] == 139 then
								if timer.interaction <=0  then
									sounds.bridge_destroy:play()
									maps[levels.current][a][b] = 0
								end
							elseif maps[levels.current][a][b] == 140 then
								if timer.animation < 1 then
									maps[levels.current][a][b] = 143
								end
							elseif maps[levels.current][a][b] == 141 then
								if timer.animation < 1 then
									maps[levels.current][a][b] = 144
								end
							elseif maps[levels.current][a][b] == 142 then
								if timer.animation < 1 then
									maps[levels.current][a][b] = 145
								end
							elseif maps[levels.current][a][b] == 143 then
								if timer.animation > 1 then
									maps[levels.current][a][b] = 140
								end
							elseif maps[levels.current][a][b] == 144 then
								if timer.animation > 1 then
									maps[levels.current][a][b] = 141
								end
							elseif maps[levels.current][a][b] == 145 then
								if timer.animation > 1 then
									maps[levels.current][a][b] = 142
								end
							elseif maps[levels.current][a][b] == 155 then
								if levels.stated==1 then
									maps[levels.current][a][b] = 160
								end
							elseif maps[levels.current][a][b] == 156 then
								if levels.stated==1 then
									maps[levels.current][a][b] = 0
								end
							elseif maps[levels.current][a][b] == 157 then
								if levels.stated==1 then
									maps[levels.current][a][b] = 161
								end
							elseif maps[levels.current][a][b] == 162 then
								if levels.stated==1 then
									maps[levels.current][a][b] = 165
								end
							elseif maps[levels.current][a][b] == 163 then
								if levels.stated==1 then
									maps[levels.current][a][b] = 0
								end
							elseif maps[levels.current][a][b] == 164 then
								if levels.stated==1 then
									maps[levels.current][a][b] = 166
								end
							elseif maps[levels.current][a][b] == 169 then
								if timer.interaction <= 0  then
									maps[levels.current][a][b] = 168
								end
							elseif maps[levels.current][a][b] == 171 then
								if timer.interaction <= 0  then
									maps[levels.current][a][b] = 170
								end
							elseif maps[levels.current][a][b] == 176 then
								if timer.interaction <= 0  then
									maps[levels.current][a][b] = 175
								end
							elseif maps[levels.current][a][b] == 178 then
								if timer.interaction <= 0  then
									maps[levels.current][a][b] = 177
								end
							elseif maps[levels.current][a][b] == 180 then
								if timer.interaction <= 0  then
									maps[levels.current][a][b] = 179
								end
							elseif maps[levels.current][a][b] == 182 then
								if timer.interaction <= 0  then
									maps[levels.current][a][b] = 181
								end
							elseif maps[levels.current][a][b] == 184 then
								if timer.interaction <= 0  then
									maps[levels.current][a][b] = 183
								end
							elseif maps[levels.current][a][b] == 186 then
								if timer.interaction <= 0  then
									maps[levels.current][a][b] = 185
								end
							elseif maps[levels.current][a][b] == 205 or maps[levels.current][a][b] == 206 or maps[levels.current][a][b] == 207 then
								if scores.levelGems[levels.current]==1 then
									maps[levels.current][a][b] = 77
								end
							elseif maps[levels.current][a][b] == 208 then
								if timer.animation < 2 and timer.animation > 1.75 then
									maps[levels.current][a][b] = 209
								end
							elseif maps[levels.current][a][b] == 209 then
								if timer.animation < 1.75 and timer.animation > 1.50 then
									maps[levels.current][a][b] = 210
								end
							elseif maps[levels.current][a][b] == 210 then
								if timer.animation < 1.50 and timer.animation > 1.25 then
									maps[levels.current][a][b] = 211
								end
							elseif maps[levels.current][a][b] == 211 then
								if timer.animation < 1.25 and timer.animation > 1 then
									maps[levels.current][a][b] = 212
								end
							elseif maps[levels.current][a][b] == 212 then
								if timer.animation < 1 and timer.animation > 0.75 then
									maps[levels.current][a][b] = 213
								end
							elseif maps[levels.current][a][b] == 213 then
								if timer.animation < 0.75 and timer.animation > 0.50 then
									maps[levels.current][a][b] = 214
								end
							elseif maps[levels.current][a][b] == 214 then
								if timer.animation < 0.50 and timer.animation > 0.25 then
									maps[levels.current][a][b] = 215
								end
							elseif maps[levels.current][a][b] == 215 then
								if timer.animation < 0.25 then
									maps[levels.current][a][b] = 208
								end
							elseif maps[levels.current][a][b] == 237 or maps[levels.current][a][b] == 238 or maps[levels.current][a][b] == 239 then
								if scores.levelGems[levels.current]==1 then
									maps[levels.current][a][b] = 219
								end
							elseif maps[levels.current][a][b] == 278 then 
								if timer.animation < 2 and timer.animation > 1.875 then
									maps[levels.current][a][b] = 279
								end
							elseif maps[levels.current][a][b] == 279 then
								if timer.animation < 1.875 and timer.animation > 1.75 then
									maps[levels.current][a][b] = 280
								end
							elseif maps[levels.current][a][b] == 280 then
								if timer.animation < 1.75 and timer.animation > 1.625 then
									maps[levels.current][a][b] = 281
								end
							elseif maps[levels.current][a][b] == 281 then
								if timer.animation < 1.625 and timer.animation > 1.5 then
									maps[levels.current][a][b] = 282
								end
							elseif maps[levels.current][a][b] == 282 then
								if timer.animation < 1.5 and timer.animation > 1.375 then
									maps[levels.current][a][b] = 283
								end
							elseif maps[levels.current][a][b] == 283 then
								if timer.animation < 1.375 and timer.animation > 1.25 then
									maps[levels.current][a][b] = 284
								end
							elseif maps[levels.current][a][b] == 284 then
								if timer.animation < 1.25 and timer.animation > 1.125 then
									maps[levels.current][a][b] = 285
								end
							elseif maps[levels.current][a][b] == 285 then
								if timer.animation < 1.125 and timer.animation > 1 then
									maps[levels.current][a][b] = 286
								end
							elseif maps[levels.current][a][b] == 286 then
								if timer.animation < 1 and timer.animation > 0.875 then
									maps[levels.current][a][b] = 287
								end
							elseif maps[levels.current][a][b] == 287 then
								if timer.animation < 0.875 and timer.animation > 0.75 then
									maps[levels.current][a][b] = 288
								end
							elseif maps[levels.current][a][b] == 288 then
								if timer.animation < 0.75 and timer.animation > 0.625 then
									maps[levels.current][a][b] = 289
								end
							elseif maps[levels.current][a][b] == 289 then
								if timer.animation < 0.625 and timer.animation > 0.5 then
									maps[levels.current][a][b] = 290
								end
							elseif maps[levels.current][a][b] == 290 then
								if timer.animation < 0.5 and timer.animation > 0.375 then
									maps[levels.current][a][b] = 291
								end
							elseif maps[levels.current][a][b] == 291 then
								if timer.animation < 0.375 and timer.animation > 0.25 then
									maps[levels.current][a][b] = 292
								end
							elseif maps[levels.current][a][b] == 292 then
								if timer.animation < 0.25 and timer.animation > 0.125 then
									maps[levels.current][a][b] = 293
								end
							elseif maps[levels.current][a][b] == 293 then
								if timer.animation < 0.125 then
									maps[levels.current][a][b] = 278
								end
							elseif maps[levels.current][a][b] == 374 then
								if levels.statef==1 then
									enemies.create(b*32-32,a*32-28,1)
									maps[levels.current][a][b]=0
								end
							elseif maps[levels.current][a][b] == 375 then
								if levels.statef==1 then
									enemies.create(b*32-32,a*32-32,2)
									maps[levels.current][a][b]=0
								end
							elseif maps[levels.current][a][b] == 376 then
								if levels.statef==1 then
									enemies.create(b*32-32,a*32-32,3)
									maps[levels.current][a][b]=0
								end
							elseif maps[levels.current][a][b] == 377 then
								if levels.statef==1 then
									enemies.create(b*32-32,a*32-48,4)
									maps[levels.current][a][b]=0
								end
							elseif maps[levels.current][a][b] == 378 then
								if levels.statef==1 then
									enemies.create(b*32-32,a*32-48,5)
									maps[levels.current][a][b]=0
								end
							elseif maps[levels.current][a][b] == 379 then
								if levels.statef==1 then
									enemies.create(b*32-32,a*32-36,6)
									maps[levels.current][a][b]=0
								end
							elseif maps[levels.current][a][b] == 380 then
								if levels.statef==1 then
									enemies.create(b*32-28,a*32-32,8)
									maps[levels.current][a][b]=0
								end
							elseif maps[levels.current][a][b] == 385 then
								telex2=b*32-32
								teley2=a*32-32
							elseif maps[levels.current][a][b] == 387 then
								telex5=b*32-32
								teley5=a*32-32
								for c=1, 3 do
									for d=1,3 do
										if maps[levels.current][a-2+c][b-2+d] == 48 then--shooting
											telepower=1
											maps[levels.current][a-2+c][b-2+d]=0
										elseif  maps[levels.current][a-2+c][b-2+d] == 49 then--building
											telepower=2
											maps[levels.current][a-2+c][b-2+d]=0
										elseif  maps[levels.current][a-2+c][b-2+d] == 50 then--changing
											telepower=3
											maps[levels.current][a-2+c][b-2+d]=0
										elseif  maps[levels.current][a-2+c][b-2+d] == 51 then--gravity
											telepower=4
											maps[levels.current][a-2+c][b-2+d]=0
										elseif  maps[levels.current][a-2+c][b-2+d] == 54 then--Portal
											telepower=5
											maps[levels.current][a-2+c][b-2+d]=0
										elseif  maps[levels.current][a-2+c][b-2+d] == 55 then--Exploding
											telepower=6
											maps[levels.current][a-2+c][b-2+d]=0
										elseif  maps[levels.current][a-2+c][b-2+d] == 90 then--Hovering
											telepower=7
											maps[levels.current][a-2+c][b-2+d]=0
										elseif  maps[levels.current][a-2+c][b-2+d] == 91 then--Unbrella
											telepower=8
											maps[levels.current][a-2+c][b-2+d]=0
										elseif  maps[levels.current][a-2+c][b-2+d] == 92 then--Rock
											telepower=9
											maps[levels.current][a-2+c][b-2+d]=0
										elseif  maps[levels.current][a-2+c][b-2+d] == 137 then--Teleport
											telepower=10
											maps[levels.current][a-2+c][b-2+d]=0
										elseif  maps[levels.current][a-2+c][b-2+d] == 295 then--Time
											telepower=11
											maps[levels.current][a-2+c][b-2+d]=0
										elseif  maps[levels.current][a-2+c][b-2+d] == 316 then--Ice
											telepower=12
											maps[levels.current][a-2+c][b-2+d]=0
										elseif  maps[levels.current][a-2+c][b-2+d] == 317 then--Drone
											telepower=13
											maps[levels.current][a-2+c][b-2+d]=0
										elseif  maps[levels.current][a-2+c][b-2+d] == 344 then--double
											telepower=14
											maps[levels.current][a-2+c][b-2+d]=0
										end
									end
								end
							elseif maps[levels.current][a][b] == 389 then
								telex6=b*32-32
								teley6=a*32-32
								for c=1, 3 do
									for d=1,3 do
										if maps[levels.current][a-2+c][b-2+d] == 48 then--shooting
											telepower2=1
											maps[levels.current][a-2+c][b-2+d]=0
										elseif  maps[levels.current][a-2+c][b-2+d] == 49 then--building
											telepower2=2
											maps[levels.current][a-2+c][b-2+d]=0
										elseif  maps[levels.current][a-2+c][b-2+d] == 50 then--changing
											telepower2=3
											maps[levels.current][a-2+c][b-2+d]=0
										elseif  maps[levels.current][a-2+c][b-2+d] == 51 then--gravity
											telepower2=4
											maps[levels.current][a-2+c][b-2+d]=0
										elseif  maps[levels.current][a-2+c][b-2+d] == 54 then--Portal
											telepower2=5
											maps[levels.current][a-2+c][b-2+d]=0
										elseif  maps[levels.current][a-2+c][b-2+d] == 55 then--Exploding
											telepower2=6
											maps[levels.current][a-2+c][b-2+d]=0
										elseif  maps[levels.current][a-2+c][b-2+d] == 90 then--Hovering
											telepower2=7
											maps[levels.current][a-2+c][b-2+d]=0
										elseif  maps[levels.current][a-2+c][b-2+d] == 91 then--Unbrella
											telepower2=8
											maps[levels.current][a-2+c][b-2+d]=0
										elseif  maps[levels.current][a-2+c][b-2+d] == 92 then--Rock
											telepower2=9
											maps[levels.current][a-2+c][b-2+d]=0
										elseif  maps[levels.current][a-2+c][b-2+d] == 137 then--Teleport
											telepower2=10
											maps[levels.current][a-2+c][b-2+d]=0
										elseif  maps[levels.current][a-2+c][b-2+d] == 295 then--Time
											telepower2=11
											maps[levels.current][a-2+c][b-2+d]=0
										elseif  maps[levels.current][a-2+c][b-2+d] == 316 then--Ice
											telepower2=12
											maps[levels.current][a-2+c][b-2+d]=0
										elseif  maps[levels.current][a-2+c][b-2+d] == 317 then--Drone
											telepower2=13
											maps[levels.current][a-2+c][b-2+d]=0
										elseif  maps[levels.current][a-2+c][b-2+d] == 344 then--double
											telepower2=14
											maps[levels.current][a-2+c][b-2+d]=0
										end
									end
								end
							elseif maps[levels.current][a][b] == 423 or maps[levels.current][a][b] == 424 then
								if levels.state==0 then
									maps[levels.current][a][b] = 423
								else
									maps[levels.current][a][b] = 424
								end
							elseif maps[levels.current][a][b] == 425 or maps[levels.current][a][b] == 426 then
								if levels.state==0 then
									maps[levels.current][a][b] = 426
								else
									maps[levels.current][a][b] = 425
								end
							elseif maps[levels.current][a][b] == 428 then
								telex3=b*32-32
								teley3=a*32-32
							elseif maps[levels.current][a][b] == 430 then
								telex4=b*32-32
								teley4=a*32-32
							elseif maps[levels.current][a][b] == 470 then
								if timer.animation < 2 and timer.animation > 1.5 then
									maps[levels.current][a][b] = 471
								end
							elseif maps[levels.current][a][b] == 471 then
								if timer.animation < 1.5 and timer.animation > 1 then
									maps[levels.current][a][b] = 472
								end
							elseif maps[levels.current][a][b] == 472 then
								if timer.animation < 1 and timer.animation > 0.5 then
									maps[levels.current][a][b] = 473
								end
							elseif maps[levels.current][a][b] == 473 then
								if timer.animation < 0.5 then
									maps[levels.current][a][b] = 470
								end
							elseif maps[levels.current][a][b] == 480 then
								if math.random(0,10)==10 then
									makeparticle(b*32-math.random(0,32),a*32,2)
								end
							elseif maps[levels.current][a][b] == 481 then
								if math.random(0,10)==10 then
									makeparticle(b*32-math.random(0,32),a*32,3)
								end
							elseif maps[levels.current][a][b] == 482 then
								if timer.animation < 2 and timer.animation > 1.5 then
									maps[levels.current][a][b] = 483
								end
							elseif maps[levels.current][a][b] == 483 then
								if timer.animation < 1.5 and timer.animation > 1 then
									maps[levels.current][a][b] = 484
								end
							elseif maps[levels.current][a][b] == 484 then
								if timer.animation < 1 and timer.animation > 0.5 then
									maps[levels.current][a][b] = 485
								end
							elseif maps[levels.current][a][b] == 485 then
								if timer.animation < 0.5 then
									maps[levels.current][a][b] = 482
								end
							elseif maps[levels.current][a][b] == 486 then
								if (timer.animation%.5)*4 < 2 and (timer.animation%.5)*4 > 1.75 then
									maps[levels.current][a][b] = 487
								end
							elseif maps[levels.current][a][b] == 487 then
								if (timer.animation%.5)*4 < 1.75 and (timer.animation%.5)*4 > 1.50 then
									maps[levels.current][a][b] = 488
								end
							elseif maps[levels.current][a][b] == 488 then
								if (timer.animation%.5)*4 < 1.50 and (timer.animation%.5)*4 > 1.25 then
									maps[levels.current][a][b] = 489
								end
							elseif maps[levels.current][a][b] == 489 then
								if (timer.animation%.5)*4 < 1.25 and (timer.animation%.5)*4 > 1 then
									maps[levels.current][a][b] = 490
								end
							elseif maps[levels.current][a][b] == 490 then
								if (timer.animation%.5)*4 < 1 and (timer.animation%.5)*4 > 0.75 then
									maps[levels.current][a][b] = 491
								end
							elseif maps[levels.current][a][b] == 491 then
								if (timer.animation%.5)*4 < 0.75 and (timer.animation%.5)*4 > 0.50 then
									maps[levels.current][a][b] = 492
								end
							elseif maps[levels.current][a][b] == 492 then
								if (timer.animation%.5)*4 < 0.50 and (timer.animation%.5)*4 > 0.25 then
									maps[levels.current][a][b] = 493
								end
							elseif maps[levels.current][a][b] == 493 then
								if (timer.animation%.5)*4 < 0.25 then
									maps[levels.current][a][b] = 486
								end
							elseif maps[levels.current][a][b] == 494 then
								if (timer.animation%.5)*4 < 2 and (timer.animation%.5)*4 > 1.75 then
									maps[levels.current][a][b] = 495
								end
							elseif maps[levels.current][a][b] == 495 then
								if (timer.animation%.5)*4 < 1.75 and (timer.animation%.5)*4 > 1.50 then
									maps[levels.current][a][b] = 496
								end
							elseif maps[levels.current][a][b] == 496 then
								if (timer.animation%.5)*4 < 1.50 and (timer.animation%.5)*4 > 1.25 then
									maps[levels.current][a][b] = 497
								end
							elseif maps[levels.current][a][b] == 497 then
								if (timer.animation%.5)*4 < 1.25 and (timer.animation%.5)*4 > 1 then
									maps[levels.current][a][b] = 498
								end
							elseif maps[levels.current][a][b] == 498 then
								if (timer.animation%.5)*4 < 1 and (timer.animation%.5)*4 > 0.75 then
									maps[levels.current][a][b] = 499
								end
							elseif maps[levels.current][a][b] == 499 then
								if (timer.animation%.5)*4 < 0.75 and (timer.animation%.5)*4 > 0.50 then
									maps[levels.current][a][b] = 500
								end
							elseif maps[levels.current][a][b] == 500 then
								if (timer.animation%.5)*4 < 0.50 and (timer.animation%.5)*4 > 0.25 then
									maps[levels.current][a][b] = 501
								end
							elseif maps[levels.current][a][b] == 501 then
								if (timer.animation%.5)*4 < 0.25 then
									maps[levels.current][a][b] = 494
								end
							elseif maps[levels.current][a][b] == 502 then
								if timer.animation < 2 and timer.animation > 1.75 then
									maps[levels.current][a][b] = 503
								end
							elseif maps[levels.current][a][b] == 503 then
								if timer.animation < 1.75 and timer.animation > 1.50 then
									maps[levels.current][a][b] = 504
								end
							elseif maps[levels.current][a][b] == 504 then
								if timer.animation < 1.50 and timer.animation > 1.25 then
									maps[levels.current][a][b] = 505
								end
							elseif maps[levels.current][a][b] == 505 then
								if timer.animation < 1.25 and timer.animation > 1 then
									maps[levels.current][a][b] = 506
								end
							elseif maps[levels.current][a][b] == 506 then
								if timer.animation < 1 and timer.animation > 0.75 then
									maps[levels.current][a][b] = 507
								end
							elseif maps[levels.current][a][b] == 507 then
								if timer.animation < 0.75 and timer.animation > 0.50 then
									maps[levels.current][a][b] = 508
								end
							elseif maps[levels.current][a][b] == 508 then
								if timer.animation < 0.50 and timer.animation > 0.25 then
									maps[levels.current][a][b] = 509
								end
							elseif maps[levels.current][a][b] == 509 then
								if timer.animation < 0.25 then
									maps[levels.current][a][b] = 502
								end
							elseif maps[levels.current][a][b] == 510 then
								if timer.animation < 2 and timer.animation > 1.75 then
									maps[levels.current][a][b] = 511
								end
							elseif maps[levels.current][a][b] == 511 then
								if timer.animation < 1.75 and timer.animation > 1.50 then
									maps[levels.current][a][b] = 512
								end
							elseif maps[levels.current][a][b] == 512 then
								if timer.animation < 1.50 and timer.animation > 1.25 then
									maps[levels.current][a][b] = 513
								end
							elseif maps[levels.current][a][b] == 513 then
								if timer.animation < 1.25 and timer.animation > 1 then
									maps[levels.current][a][b] = 514
								end
							elseif maps[levels.current][a][b] == 514 then
								if timer.animation < 1 and timer.animation > 0.75 then
									maps[levels.current][a][b] = 515
								end
							elseif maps[levels.current][a][b] == 515 then
								if timer.animation < 0.75 and timer.animation > 0.50 then
									maps[levels.current][a][b] = 516
								end
							elseif maps[levels.current][a][b] == 516 then
								if timer.animation < 0.50 and timer.animation > 0.25 then
									maps[levels.current][a][b] = 517
								end
							elseif maps[levels.current][a][b] == 517 then
								if timer.animation < 0.25 then
									maps[levels.current][a][b] = 510
								end
							elseif maps[levels.current][a][b] == 518 then
								if timer.animation < 2 and timer.animation > 1.75 then
									maps[levels.current][a][b] = 519
								end
							elseif maps[levels.current][a][b] == 519 then
								if timer.animation < 1.75 and timer.animation > 1.50 then
									maps[levels.current][a][b] = 520
								end
							elseif maps[levels.current][a][b] == 520 then
								if timer.animation < 1.50 and timer.animation > 1.25 then
									maps[levels.current][a][b] = 521
								end
							elseif maps[levels.current][a][b] == 521 then
								if timer.animation < 1.25 and timer.animation > 1 then
									maps[levels.current][a][b] = 522
								end
							elseif maps[levels.current][a][b] == 522 then
								if timer.animation < 1 and timer.animation > 0.75 then
									maps[levels.current][a][b] = 523
								end
							elseif maps[levels.current][a][b] == 523 then
								if timer.animation < 0.75 and timer.animation > 0.50 then
									maps[levels.current][a][b] = 524
								end
							elseif maps[levels.current][a][b] == 524 then
								if timer.animation < 0.50 and timer.animation > 0.25 then
									maps[levels.current][a][b] = 525
								end
							elseif maps[levels.current][a][b] == 525 then
								if timer.animation < 0.25 then
									maps[levels.current][a][b] = 518
								end
							elseif maps[levels.current][a][b] == 560 then
								if not check_if_block(maps[levels.current][a][b-1],2) then
									if math.random(0,6) == 6 then
										makeparticle(b*32-math.random(32,48),a*32-math.random(0,32),4)
									end
								end
								if not check_if_block(maps[levels.current][a][b+1],2) then
									if math.random(0,6) == 6 then
										makeparticle(b*32-math.random(0,16),a*32-math.random(0,32),5)
									end
								end
							elseif maps[levels.current][a][b] == 561 then
								if (timer.animation%1)*2 < 2 and (timer.animation%1)*2 > 1.6 then
									maps[levels.current][a][b] = 562
								end
							elseif maps[levels.current][a][b] == 562 then
								if (timer.animation%1)*2 < 1.6 and (timer.animation%1)*2 > 1.2 then
									maps[levels.current][a][b] = 563
								end
							elseif maps[levels.current][a][b] == 563 then
								if (timer.animation%1)*2 < 1.2 and (timer.animation%1)*2 > 0.8 then
									maps[levels.current][a][b] = 564
								end
							elseif maps[levels.current][a][b] == 564 then
								if (timer.animation%1)*2 < 0.8 and (timer.animation%1)*2 > 0.4 then
									maps[levels.current][a][b] = 565
								end
							elseif maps[levels.current][a][b] == 565 then
								if (timer.animation%1)*2 < 0.4 then
									maps[levels.current][a][b] = 561
								end
							elseif maps[levels.current][a][b] == 566 or maps[levels.current][a][b] == 582 then
								if levels.state==0 then
									maps[levels.current][a][b] = 566
								else
									maps[levels.current][a][b] = 582
								end
							elseif maps[levels.current][a][b] == 567 or maps[levels.current][a][b] == 583 then
								if levels.state==0 then
									maps[levels.current][a][b] = 567
								else
									maps[levels.current][a][b] = 583
								end
							elseif maps[levels.current][a][b] == 568 or maps[levels.current][a][b] == 584 then
								if levels.state==0 then
									maps[levels.current][a][b] = 568
								else
									maps[levels.current][a][b] = 584
								end
							elseif maps[levels.current][a][b] == 569 or maps[levels.current][a][b] == 585 then
								if levels.state==0 then
									maps[levels.current][a][b] = 569
								else
									maps[levels.current][a][b] = 585
								end
							elseif maps[levels.current][a][b] == 570 or maps[levels.current][a][b] == 586 then
								if levels.state==0 then
									maps[levels.current][a][b] = 570
								else
									maps[levels.current][a][b] = 586
								end
							elseif maps[levels.current][a][b] == 571 or maps[levels.current][a][b] == 587 then
								if levels.state==0 then
									maps[levels.current][a][b] = 571
								else
									maps[levels.current][a][b] = 587
								end
							elseif maps[levels.current][a][b] == 572 or maps[levels.current][a][b] == 588 then
								if levels.state==0 then
									maps[levels.current][a][b] = 572
								else
									maps[levels.current][a][b] = 588
								end
							elseif maps[levels.current][a][b] == 573 or maps[levels.current][a][b] == 589 then
								if levels.state==0 then
									maps[levels.current][a][b] = 573
								else
									maps[levels.current][a][b] = 589
								end
							elseif maps[levels.current][a][b] == 574 or maps[levels.current][a][b] == 590 then
								if levels.state==0 then
									maps[levels.current][a][b] = 574
								else
									maps[levels.current][a][b] = 590
								end
							elseif maps[levels.current][a][b] == 575 or maps[levels.current][a][b] == 591 then
								if levels.state==0 then
									maps[levels.current][a][b] = 575
								else
									maps[levels.current][a][b] = 591
								end
							elseif maps[levels.current][a][b] == 576 or maps[levels.current][a][b] == 592 then
								if levels.state==0 then
									maps[levels.current][a][b] = 576
								else
									maps[levels.current][a][b] = 592
								end
							elseif maps[levels.current][a][b] == 577 or maps[levels.current][a][b] == 593 then
								if levels.state==0 then
									maps[levels.current][a][b] = 577
								else
									maps[levels.current][a][b] = 593
								end
							elseif maps[levels.current][a][b] == 578 or maps[levels.current][a][b] == 594 then
								if levels.state==0 then
									maps[levels.current][a][b] = 578
								else
									maps[levels.current][a][b] = 594
								end
							elseif maps[levels.current][a][b] == 579 or maps[levels.current][a][b] == 595 then
								if levels.state==0 then
									maps[levels.current][a][b] = 579
								else
									maps[levels.current][a][b] = 595
								end
							elseif maps[levels.current][a][b] == 580 or maps[levels.current][a][b] == 596 then
								if levels.state==0 then
									maps[levels.current][a][b] = 580
								else
									maps[levels.current][a][b] = 596
								end
							elseif maps[levels.current][a][b] == 581 or maps[levels.current][a][b] == 597 then--end of the yellow
								if levels.state==0 then
									maps[levels.current][a][b] = 581
								else
									maps[levels.current][a][b] = 597
								end
							elseif maps[levels.current][a][b] == 598 or maps[levels.current][a][b] == 614 then--start of the green
								if levels.state==0 then
									maps[levels.current][a][b] = 614
								else
									maps[levels.current][a][b] = 598
								end
							elseif maps[levels.current][a][b] == 599 or maps[levels.current][a][b] == 615 then
								if levels.state==0 then
									maps[levels.current][a][b] = 615
								else
									maps[levels.current][a][b] = 599
								end
							elseif maps[levels.current][a][b] == 600 or maps[levels.current][a][b] == 616 then
								if levels.state==0 then
									maps[levels.current][a][b] = 616
								else
									maps[levels.current][a][b] = 600
								end
							elseif maps[levels.current][a][b] == 601 or maps[levels.current][a][b] == 617 then
								if levels.state==0 then
									maps[levels.current][a][b] = 617
								else
									maps[levels.current][a][b] = 601
								end
							elseif maps[levels.current][a][b] == 602 or maps[levels.current][a][b] == 618 then
								if levels.state==0 then
									maps[levels.current][a][b] = 618
								else
									maps[levels.current][a][b] = 602
								end
							elseif maps[levels.current][a][b] == 603 or maps[levels.current][a][b] == 619 then
								if levels.state==0 then
									maps[levels.current][a][b] = 619
								else
									maps[levels.current][a][b] = 603
								end
							elseif maps[levels.current][a][b] == 604 or maps[levels.current][a][b] == 620 then
								if levels.state==0 then
									maps[levels.current][a][b] = 620
								else
									maps[levels.current][a][b] = 604
								end
							elseif maps[levels.current][a][b] == 605 or maps[levels.current][a][b] == 621 then
								if levels.state==0 then
									maps[levels.current][a][b] = 621
								else
									maps[levels.current][a][b] = 605
								end
							elseif maps[levels.current][a][b] == 606 or maps[levels.current][a][b] == 622 then
								if levels.state==0 then
									maps[levels.current][a][b] = 622
								else
									maps[levels.current][a][b] = 606
								end
							elseif maps[levels.current][a][b] == 607 or maps[levels.current][a][b] == 623 then
								if levels.state==0 then
									maps[levels.current][a][b] = 623
								else
									maps[levels.current][a][b] = 607
								end
							elseif maps[levels.current][a][b] == 608 or maps[levels.current][a][b] == 624 then
								if levels.state==0 then
									maps[levels.current][a][b] = 624
								else
									maps[levels.current][a][b] = 608
								end
							elseif maps[levels.current][a][b] == 609 or maps[levels.current][a][b] == 625 then
								if levels.state==0 then
									maps[levels.current][a][b] = 625
								else
									maps[levels.current][a][b] = 609
								end
							elseif maps[levels.current][a][b] == 610 or maps[levels.current][a][b] == 626 then
								if levels.state==0 then
									maps[levels.current][a][b] = 626
								else
									maps[levels.current][a][b] = 610
								end
							elseif maps[levels.current][a][b] == 611 or maps[levels.current][a][b] == 627 then
								if levels.state==0 then
									maps[levels.current][a][b] = 627
								else
									maps[levels.current][a][b] = 611
								end
							elseif maps[levels.current][a][b] == 612 or maps[levels.current][a][b] == 628 then
								if levels.state==0 then
									maps[levels.current][a][b] = 628
								else
									maps[levels.current][a][b] = 612
								end
							elseif maps[levels.current][a][b] == 613 or maps[levels.current][a][b] == 629 then
								if levels.state==0 then
									maps[levels.current][a][b] = 629
								else
									maps[levels.current][a][b] = 613
								end
							elseif maps[levels.current][a][b] == 630 or maps[levels.current][a][b] == 631 then
								if levels.state==0 then
									maps[levels.current][a][b] = 630
								else
									maps[levels.current][a][b] = 631
								end
							elseif maps[levels.current][a][b] == 632 or maps[levels.current][a][b] == 633 then
								if levels.state==0 then
									maps[levels.current][a][b] = 633
								else
									maps[levels.current][a][b] = 632
								end
							elseif maps[levels.current][a][b] == 667 then
								if not check_if_block(maps[levels.current][a][b-1],2) then
									if timer.animation == 2 then
										if math.random(1,2)==2 then
											for i=1,math.random(10,30) do
												makeparticle(b*32-math.random(32,96),a*32-math.random(0,32),7)
											end
										end
									end
								end
							elseif maps[levels.current][a][b] == 668 then
								if not check_if_block(maps[levels.current][a][b+1],2) then
									if timer.animation == 2 then
										if math.random(1,2)==2 then
											for i=1,math.random(10,30) do
												makeparticle(b*32-math.random(-48,16),a*32-math.random(0,32),8)
											end
										end
									end
								end
							elseif maps[levels.current][a][b] == 673 then
								if timer.interaction <= 0  then
									maps[levels.current][a][b] = 0
								end
							elseif maps[levels.current][a][b] == 675 then
								if timer.interaction <= 0  then
									maps[levels.current][a][b] = 0
								end
							elseif maps[levels.current][a][b] == 677 then
								if timer.interaction <= 0  then
									maps[levels.current][a][b] = 0
								end
							elseif maps[levels.current][a][b] == 681 then
								if levels.statee==0 then
									if player.x+6 < b*32-32 then
										if check_if_block(maps[levels.current][a][b-1],1) then
											maps[levels.current][a][b]=0
											maps[levels.current][a][b-1]=681
										end
									elseif player.x+6 > b*32-32 then
										if check_if_block(maps[levels.current][a][b+1],1) then
											maps[levels.current][a][b]=0
											maps[levels.current][a][b+1]=681
										end
									end
								end
							elseif maps[levels.current][a][b] == 682 then
								if levels.statee==0 then
									if player.y+24 < a*32-32 then
										if check_if_block(maps[levels.current][a-1][b],1) then
											maps[levels.current][a][b]=0
											maps[levels.current][a-1][b]=682
										end
									elseif player.y+24 > a*32-32 then
										if check_if_block(maps[levels.current][a+1][b],1) then
											maps[levels.current][a][b]=0
											maps[levels.current][a+1][b]=682
										end
									end
								end
							elseif (maps[levels.current][a][b] == 678) or (maps[levels.current][a][b] == 683) then
								if map_collision(player.x,player.y,player.w,player.h,"down2",maps[levels.current],flags.lazer_trigger) then
									maps[levels.current][a][b] = 683
								else
									maps[levels.current][a][b] = 678
								end
							elseif maps[levels.current][a][b] == 679 then
								if map_collision(player.x,player.y,player.w,player.h,"down2",maps[levels.current],flags.lazer_trigger) then
									if check_num_blocks(683)==0 then
										enemies.create(b*32-28,a*32-32,10)
										love.audio.stop(sounds.lazer_activate)
										sounds.lazer_activate:play()
									end
								end
							elseif maps[levels.current][a][b] == 688 then
								if map_collision(player.x,player.y,player.w,player.h,"down2",maps[levels.current],flags.lazer_trigger) then
									if check_num_blocks(683)==0 then
										enemies.create(b*32-28,a*32-32,10)
										love.audio.stop(sounds.lazer_activate)
										sounds.lazer_activate:play()
									end
								end
							elseif maps[levels.current][a][b] == 684 then
								if timer.animation < 1 then
									maps[levels.current][a][b] = 685
								end
								if get_input("x") then
									sounds.bomb_explosion:play()
									for c=1,#maps[levels.current][a] do
										if check_if_block(maps[levels.current][a][c],3) then
											maps[levels.current][a][c]=0
										end
									end
								end
							elseif maps[levels.current][a][b] == 685 then
								if  timer.animation > 1  then
									maps[levels.current][a][b] = 684
								end
								if get_input("x") then
									sounds.bomb_explosion:play()
									for c=1,#maps[levels.current][a] do
										if check_if_block(maps[levels.current][a][c],3) then
											maps[levels.current][a][c]=0
										end
									end
								end
							elseif maps[levels.current][a][b] == 686 then
								if timer.animation < 1 then
									maps[levels.current][a][b] = 687
								end
								if get_input("x") then
									sounds.bomb_explosion:play()
									for c=1,#maps[levels.current] do
										if check_if_block(maps[levels.current][c][b],3) then
											maps[levels.current][c][b]=0
										end
									end
								end
							elseif maps[levels.current][a][b] == 687 then
								if  timer.animation > 1  then
									maps[levels.current][a][b] = 686
								end
								if get_input("x") then
									sounds.bomb_explosion:play()
									for c=1,#maps[levels.current] do
										if check_if_block(maps[levels.current][c][b],3) then
											maps[levels.current][c][b]=0
										end
									end
								end
							elseif maps[levels.current][a][b] == 689 or maps[levels.current][a][b] == 690 then
								if (timer.animation%.25)*8 < 2 and (timer.animation%.25)*8 > 1 then
									maps[levels.current][a][b] = 689
								else
									maps[levels.current][a][b] = 690
								end
							end
						end
					end
				end
			end
		end



		--player physics
		player.x = player.x + dt*(player.dx*60)
		player.x = player.x + dt*(player.boost*60)
		player.y = player.y + dt*(player.dy*60)
		player.y = player.y + dt*(player.boosty*60)
		
		--broken collision stuff
		--if player.dx < 25 and player.dx > -25 then 
		--	if player.dx > 0 then
		--		if map_collision(player.x+player.dx,player.y,player.w,player.h,"left",maps[levels.current],flags.ground) then
		--			while map_collision(player.x+player.dx,player.y,player.w,player.h,"left2",maps[levels.current],flags.ground) do
		--				player.x=player.x+1
		--			end
		--		else
		--			player.dx = player.dx - ((player.dx * player.slide) * dt)
		--		end
		--	elseif player.dx < 0 then
		--		if map_collision(player.x+player.dx,player.y,player.w,player.h,"right",maps[levels.current],flags.ground) then
		--			while map_collision(player.x+player.dx,player.y,player.w,player.h,"right2",maps[levels.current],flags.ground) do
		--				player.x=player.x-1
		--			end
		--		else
		--			player.dx = player.dx - ((player.dx * player.slide) * dt)
		--		end
		--	end
		--end
		if player.dx < 25 and player.dx > -25 then
			player.dx = player.dx - ((player.dx * player.slide) * dt)
		end
		player.boost = player.boost - ((player.boost * player.slide) * dt)
		
		if player.wacky == 1 then
			player.slide=0
		elseif player.power == 12 and player.power_extra==1 then
			player.slide=1
		else
			if player.lbt == 97 or player.lbt == 423 or player.lbt == 425 then
				player.slide = 2
			elseif (player.lbt >= 208 and player.lbt <= 215) or (player.lbt >= 502 and player.lbt <= 525) then
				player.slide = -5
			else
				player.slide = 10
			end
		end
		if player.power == 7 and player.timer >= 1 then
			player.dy = 0
			player.y = math.floor(player.y)
		else
			if player.power == 8 then
				if player.tg == false and player.dy < 1 then
					player.dy = player.dy + dt*(gravity*60*player.water)
				elseif player.tg then
					player.dy = 0
					player.y = math.floor(player.y)
				end
			else
				if player.water == 1 then
					if player.tg == false and player.dy < 10 then
						player.dy = player.dy + dt*(gravity*60*player.water)
					elseif player.tg then
						player.dy = 0
						player.y = math.floor(player.y)
					end
				else
					if player.tg == false and player.dy < 10 then
						player.dy = player.dy + dt*(gravity*60*player.water)
					elseif player.tg then
						player.dy = 0
						player.y = math.floor(player.y)
					end
				end
			end
		end

		--INPUTS
		--movement left and right
		if not (player.power == 9 and player.timer >= 1) then
			if player.lbt == 294 then
				if player.water == 1 then
					if get_input("right",false) and not get_input("left",false) and not map_collision(player.x,player.y,player.w,player.h,"left2",maps[levels.current],flags.ground) and not (player.x+player.w >= (#maps[levels.current][1]*32)-1) and not map_collision(player.x,player.y,player.w,player.h,"left2",flags.moving_ground,"not useful",false,true) then 
						player.dx=-player.speed
						player.face="left"
					elseif get_input("left",false) and not get_input("right",false) and not map_collision(player.x,player.y,player.w,player.h,"right2",maps[levels.current],flags.ground) and not (player.x-1 <= 1) and not map_collision(player.x,player.y,player.w,player.h,"right2",flags.moving_ground,"not useful",false,true) then
						player.dx = player.speed
						player.face="right"
					end
				else
					if get_input("right",false) and not get_input("left",false) and not map_collision(player.x,player.y,player.w,player.h,"left2",maps[levels.current],flags.ground) and not (player.x+player.w >= (#maps[levels.current][1]*32)-1) and not map_collision(player.x,player.y,player.w,player.h,"left2",flags.moving_ground,"not useful",false,true) then 
						player.dx=-player.speed*(player.water*2)
						player.face="right"
					elseif get_input("left",false) and not get_input("right",false) and not map_collision(player.x,player.y,player.w,player.h,"right2",maps[levels.current],flags.ground) and not (player.x-1 <= 1) and not map_collision(player.x,player.y,player.w,player.h,"right2",flags.moving_ground,"not useful",false,true) then
						player.dx =player.speed*(player.water*2)
						player.face="left"
					end
				end
			else
				if player.water == 1 then
					if get_input("right",false) and not get_input("left",false) and not map_collision(player.x,player.y,player.w,player.h,"right2",maps[levels.current],flags.ground) and not (player.x+player.w >= (#maps[levels.current][1]*32)-1) and not map_collision(player.x,player.y,player.w,player.h,"right2",flags.moving_ground,"not useful",false,true) then 
						player.dx=player.speed
						player.face="right"
					elseif get_input("left",false) and not get_input("right",false) and not map_collision(player.x,player.y,player.w,player.h,"left2",maps[levels.current],flags.ground) and not (player.x-1 <= 1) and not map_collision(player.x,player.y,player.w,player.h,"left2",flags.moving_ground,"not useful",false,true) then
						player.dx = -player.speed
						player.face="left"
					end
				else
					if get_input("right",false) and not get_input("left",false) and not map_collision(player.x,player.y,player.w,player.h,"right2",maps[levels.current],flags.ground) and not (player.x+player.w >= (#maps[levels.current][1]*32)-1) and not map_collision(player.x,player.y,player.w,player.h,"right2",flags.moving_ground,"not useful",false,true) then 
						player.dx=player.speed*(player.water*2)
						player.face="right"
					elseif get_input("left",false) and not get_input("right",false) and not map_collision(player.x,player.y,player.w,player.h,"left2",maps[levels.current],flags.ground) and not (player.x-1 <= 1) and not map_collision(player.x,player.y,player.w,player.h,"left2",flags.moving_ground,"not useful",false,true) then
						player.dx = -player.speed*(player.water*2)
						player.face="left"
					end
				end
			end
		end
		--jumping
		if get_input("a",false) and player.tg == true and player.lbt ~= 318 and (player.lbt~=682 or levels.statee==1) then
			player.tg = false
			player.boosty=0
			player.dy = -6
		elseif get_input("a",true) and player.tg == true and player.lbt ~= 318 and player.lbt==682 and levels.statee==0 then
			player.tg = false
			player.boosty=0
			player.dy = -6
		end

		--using power
		if get_input("x",false) then--inputs that dont need to change on every press
			if player.power == 1 then
				if player.timer <=0 then
					sounds.player_shoot:play()
					if player.face == "right" then
						player.makebullet(player.x+24,player.y+4,6,0,1)
						player.timer=0.75
					elseif player.face == "left" then
						player.makebullet(player.x-28,player.y+4,-6,0,1)
						player.timer=0.75
					end
				end
			elseif player.power == 2 then--buildijn powerup
				if player.timer <=0 then
					sounds.player_build:play()
					player.timer=1.75
					if maps[levels.current][math.floor((player.y+12)/32)+2][math.floor((player.x+12)/32)]==0 then
						maps[levels.current][math.floor((player.y+12)/32)+2][math.floor((player.x+12)/32)]=69
					end

					if maps[levels.current][math.floor((player.y+12)/32)+2][math.floor((player.x+12)/32)+1]==0 then
						maps[levels.current][math.floor((player.y+12)/32)+2][math.floor((player.x+12)/32)+1]=70
					end

					if maps[levels.current][math.floor((player.y+12)/32)+2][math.floor((player.x+12)/32)+2]==0 then
						maps[levels.current][math.floor((player.y+12)/32)+2][math.floor((player.x+12)/32)+2]=71
					end

				end
			elseif player.power == 5 then
				for t=1,#levels.doors[levels.current] do
					if math.floor((player.x+12)/32)+1 == levels.doors[levels.current][t][1] and math.floor((player.y+12)/32)+1 == levels.doors[levels.current][t][2] then
						sounds.player_portal:play()
						maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]=58
						player.power=0
					end
				end
			elseif player.power == 6 then
				if player.timer <= 0 then
					love.audio.stop(sounds.player_explode)
					sounds.player_explode:play()
					player.timer = 2
					for a=1,3 do
						for b=1,3 do
							if math.floor((player.y+12)/32)+a-1 > 0 and math.floor((player.x+12)/32)+b-1 > 0 then
								if maps[levels.current][math.floor((player.y+12)/32)+a-1][math.floor((player.x+12)/32)+b-1]==81 then
									maps[levels.current][math.floor((player.y+12)/32)+a-1][math.floor((player.x+12)/32)+b-1]=0
								end
							end
						end
					end
				end
			elseif player.power == 7 then
				if player.timer <= 0 then
					player.timer = 2
				end
			elseif player.power == 9 then
				if player.timer <= 0 then
					love.audio.stop(sounds.player_rock)
					sounds.player_rock:play()
					player.timer = 3
				end
			elseif player.power == 13 then
				player.dy=-2+math.random(-1,1)
				player.slide=1
			elseif player.power == 14 then
				if player.power_extra==0 then
					if player.timer < 1 then
						player.timer=player.timer + dt*2
					else
						player.tg=false
						player.y=player.y-4
						sounds.player_double:play()
						player.power_extra=1
						player.timer=0
						player.dy=-8
					end
				end
			end
		end

		if get_input("x",true) then--inputs that do need to change every press
			if player.power == 3 then
				love.audio.stop(sounds.player_change)
				sounds.player_change:play()
				if levels.state==0 then
					levels.state=1
				else
					levels.state=0
				end
			elseif player.power == 10 then
				if (player.face=="right" and player.x+player.w+64 <= (#maps[levels.current][1]*32)-20) and not check_if_block(maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+player.w+64)/32)+1],2) and not check_if_block(maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+player.w+88)/32)+1],2) then
					love.audio.stop(sounds.player_power_teleport)
					sounds.player_power_teleport:play()
					player.x=player.x+player.w+64
				elseif (player.face=="left" and player.x-player.w-64 >= 0) and not check_if_block(maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x-player.w-64)/32)+1],2) and not check_if_block(maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x-player.w-41)/32)+1],2) then
					love.audio.stop(sounds.player_power_teleport)
					sounds.player_power_teleport:play()
					player.x=player.x-player.w-64
				end
			elseif player.power == 11 then
				love.audio.stop(sounds.player_time)
				sounds.player_time:play()
				if levels.statee==0 then
					levels.statee=1
				else
					levels.statee=0
				end
			elseif player.power == 12 then
				love.audio.stop(sounds.player_ice)
				sounds.player_ice:play()
				if player.power_extra==0 then
					player.power_extra=1
				else
					player.power_extra=0
				end
			end
		end

		if get_input("leftshoulder",true) then
			if player.power==4 then
				if player.gravchange > 0 then
					love.audio.stop(sounds.player_gravity)
					sounds.player_gravity:play()
					player.gravchange=player.gravchange-1
				end
			elseif player.power==15 then
				if player.tg then
					if player.timer <= 0 then
						love.audio.stop(sounds.player_portal)
						sounds.player_portal:play()
						maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]=684
						player.timer=2
					end
				end
			end
		elseif get_input("rightshoulder",true) then
			if player.power==4 then
				if player.gravchange < 4 then
					love.audio.stop(sounds.player_gravity)
					sounds.player_gravity:play()
					player.gravchange=player.gravchange+1
				end
			elseif player.power==15 then
				if player.tg then
					if player.timer <= 0 then
						love.audio.stop(sounds.player_portal)
						sounds.player_portal:play()
						maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]=686
						player.timer=2
					end
				end
			end
		end

		--player animation
		if get_input("right") and not get_input("left") then
			player.ani = 2
		elseif get_input("left") and not get_input("right") then
			player.ani = 3
		elseif get_input("down") and not get_input("left") and not get_input("right") then
			player.ani= 4
		else
			player.ani = 1
		end

		--END OF INPUTS

		--gravity powerup
		if player.power==4 then
			if player.gravchange==0 then
				gravity =  0.35
			elseif player.gravchange==1 then
				gravity = 0.25
			elseif player.gravchange==2 then
				gravity = 0.18
			elseif player.gravchange==3 then
				gravity = 0.13
			elseif player.gravchange==4 then
				gravity = 0.10
			end
		end
		--gravity powerupend

		--get the last block touched
		if not (math.floor((player.y)/32)+1 < 1) then
			if not (math.floor((player.y)/32+1) >= #maps[levels.current]) then
				if check_if_block(maps[levels.current][math.floor((player.y+player.h)/32)+1][math.floor((player.x+player.w/2)/32)+1],2) then
					player.lbt = maps[levels.current][math.floor((player.y+player.h)/32)+1][math.floor((player.x+player.w/2)/32)+1]
				end
			end
		end
		--end of lbt

		--Collisions
		--Wall Collision
		if player.x <= 0 then --left wall
			player.dx = 0
			player.boost=0
			player.x = player.x + 1
			player.x = math.floor(player.x)
		end

		if player.x+player.w-1 >= (#maps[levels.current][1]*32) then --right wall
			player.boost=0
			player.dx = 0
			player.x = player.x - 1
			player.x = math.ceil(player.x)
		end

		if player.y <= 0 then --top wall
			player.dy = 0
			player.y = player.y + 1
		end

		if bombactive and bombtimer <= 0 then
			playerdied()
		end

		--autoscrolling collisions
		if levels.statee==0 then
			if levels.scroll[levels.current] == 1 then--left to right
				if player.x < math.abs(scrollx) then
					playerdied()
				end
			elseif levels.scroll[levels.current] == 2 then	--top to bottom
				if player.y < math.abs(scrolly) then
					playerdied()
				end
			elseif levels.scroll[levels.current] == 3 then--right to left
				if math.abs((player.x+player.w)-(#maps[levels.current][1]*32)) < scrollx+((#maps[levels.current][1]*32)-1920/levels.scale[levels.current]) then
					playerdied()
				end
			elseif levels.scroll[levels.current] == 4 then --bottem to top
				if math.abs((player.y+player.h)-(#maps[levels.current]*32)) < scrolly+((#maps[levels.current]*32)-1088/levels.scale[levels.current]) then
					playerdied()
				end
			end	
		end

		--Player Tile collision
		if map_collision(player.x,player.y,player.w,player.h,"down2",maps[levels.current],flags.ground) or map_collision(player.x,player.y,player.w,player.h,"down2",flags.moving_ground,"not useful",false,true) then -- Ground Collision
			if map_collision(player.x,player.y,player.w,player.h,"down2",flags.moving_ground,"not useful",false,true) then--moving platform
				while map_collision(player.x,player.y,player.w,player.h,"down",flags.moving_ground,"not useful",false,true) do
					player.y=player.y-.5
				end
				player.boosty=select(3,map_collision(player.x,player.y,player.w,player.h,"down2",flags.moving_ground,"not useful",false,true))
				player.boost=select(2,map_collision(player.x,player.y,player.w,player.h,"down2",flags.moving_ground,"not useful",false,true))
				player.tg=true
			else
				player.boosty=0
				if map_collision(player.x,player.y,player.w,player.h,"down2",maps[levels.current],flags.bounce) then
					player.dy=-math.abs(player.dy)
				else
					if not (map_collision(player.x,player.y,player.w,player.h,"down2",maps[levels.current],flags.platform) and get_input("down")) then
						if player.wacky == 1 then
							player.dy=-player.dy
							if map_collision(player.x,player.y,player.w,player.h,"down2",maps[levels.current],flags.upboost_ground) then
								while map_collision(player.x,player.y,player.w,player.h,"down",maps[levels.current],flags.upboost_ground) do
									player.dy=player.dy-.25
									player.y=player.y-.5
									player.tg=false
								end
							end
							if map_collision(player.x,player.y,player.w,player.h,"down2",maps[levels.current],flags.ground) then
								while map_collision(player.x,player.y,player.w,player.h,"down",maps[levels.current],flags.ground) do
									player.y=player.y-.5
								end
							end
						else
							player.tg=true
							if player.power==14 then--double jump powerup
								player.power_extra=0
							end
							if map_collision(player.x,player.y,player.w,player.h,"down2",maps[levels.current],flags.upboost_ground) then
								while map_collision(player.x,player.y,player.w,player.h,"down",maps[levels.current],flags.upboost_ground) do
									player.dy=player.dy-.25
									player.y=player.y-.5
									player.tg=false
								end
							end
							if map_collision(player.x,player.y,player.w,player.h,"down2",maps[levels.current],flags.ground) then
								while map_collision(player.x,player.y,player.w,player.h,"down",maps[levels.current],flags.ground) do
									player.y=player.y-.5
								end
							end
						end
					end
				end
			end
		else
		    player.tg=false
		end

		if map_collision(player.x,player.y,player.w,player.h,"left",maps[levels.current],flags.ground) or map_collision(player.x,player.y,player.w,player.h,"left",flags.moving_ground,"not useful",false,true) then -- Left Collision
			if player.wacky == 1 then
				player.dx=-player.dx
				player.boost = 0
				player.x = player.x + 1
				player.x = math.floor(player.x)
			else
				player.dx = 0
				player.boost = 0
				player.x = player.x + 1
				player.x = math.floor(player.x)
			end
		end

		if map_collision(player.x,player.y,player.w,player.h,"right",maps[levels.current],flags.ground) or map_collision(player.x,player.y,player.w,player.h,"right",flags.moving_ground,"not useful",false,true) then -- Right Collision
			if player.wacky == 1 then
				player.dx=-player.dx
				player.boost = 0
				player.x = player.x - 1
				player.x = math.ceil(player.x)
			else
				player.dx = 0
				player.boost = 0
				player.x = player.x - 1
				player.x = math.ceil(player.x)
			end
		end

		if map_collision(player.x,player.y,player.w,player.h,"up",maps[levels.current],flags.ground) or map_collision(player.x,player.y,player.w,player.h,"up",flags.moving_ground,"not useful",false,true) then -- Up Collision
			if player.wacky == 1 then
				player.dy=-player.dy
				player.y = player.y + 1
			else
				player.dy = 0
				player.y = player.y + 1
			end
		end

		if map_collision(player.x,player.y,player.w,player.h,"powerup",hmaps[levels.current],_,true) or map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.reveal) then -- hidden collision
			player.chidden=true
		else
			player.chidden=false
		end

		if map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.super_reveal) then -- super hidden collision
			if player.super_chidden==false then
				love.audio.stop(sounds.player_key)
				sounds.player_key:play()
			end
			player.super_chidden=true
		end

		if map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.flags) then -- END FLAG Collision
			sounds.level_change:play()
			levels.current = levels.current + 1
			level_init()
		end

		if map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.worldflags) then -- WOORLD END FLAG Collision
			love.audio.stop()
			sounds.world_change:play()
			scene=2
		end

		if map_collision(player.x,player.y,player.w,player.h,"down2",maps[levels.current],flags.bridge) then -- bridge Collision
			if timer.interaction <= 0 then
				sounds.bridge:play()
			end
			timer.interaction=2.5
			for i=1,#maps[levels.current][math.floor((player.y+player.h+12)/32)+1] do
				if maps[levels.current][math.floor((player.y+player.h+12)/32)+1][i]==0 or maps[levels.current][math.floor((player.y+player.h+12)/32)+1][i]==139 then
					maps[levels.current][math.floor((player.y+player.h+12)/32)+1][i]=138
				end
			end
		end

		if map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.reality_breaker) then--REAlITY BREAKER
			--if get_input("up") and not (get_input("left") or get_input("right")) then
			--	sounds.reality_breaker:play()
			--	for a=1, #maps2[levels.current] do 
			--		for b=1, #maps2[levels.current][a] do
			--			if maps2[levels.current][a][b] > 0 and maps2[levels.current][a][b] < 701 then
			--				explode_picture(b*32-32,a*32-32,tilesdata[maps2[levels.current][a][b]],{-10,10,-10,10,5,15})
			--			end
			--			maps[levels.current][a][b]=maps2[levels.current][a][b]
			--		end
			--	end
			--end
			--THIS STUFF IS REALLY LAGGY
			if get_input("up") and not (get_input("left") or get_input("right")) then
				sounds.reality_breaker:play()
				for a=1, #maps2[levels.current] do 
					for b=1, #maps2[levels.current][a] do
						maps[levels.current][a][b]=maps2[levels.current][a][b]
					end
				end
			end
		end

		if map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.power_shoot) then--shooting powerup
			love.audio.stop(sounds.player_powerup)
			sounds.player_powerup:play()
			player.power=1
			player.power_extra=0
			maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]=0
		end

		if map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.power_build) then--building powerup
			love.audio.stop(sounds.player_powerup)
			sounds.player_powerup:play()
			player.power=2
			player.power_extra=0
			maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]=0
		end

		if map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.power_change) then--chaging powerup
			love.audio.stop(sounds.player_powerup)
			sounds.player_powerup:play()
			player.power=3
			player.power_extra=0
			maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]=0
		end

		if map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.power_gravity) then--gravity powerup
			love.audio.stop(sounds.player_powerup)
			sounds.player_powerup:play()
			player.power=4
			player.power_extra=0
			maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]=0
		end

		if map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.power_portal) then--portal powerup
			love.audio.stop(sounds.player_powerup)
			sounds.player_powerup:play()
			player.power=5
			player.power_extra=0
			maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]=0
		end

		if map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.power_explode) then--exploding powerup
			love.audio.stop(sounds.player_powerup)
			sounds.player_powerup:play()
			player.power=6
			player.power_extra=0
			maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]=0
		end

		if map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.power_hover) then--hovering powerup
			love.audio.stop(sounds.player_powerup)
			sounds.player_powerup:play()
			player.timer=0
			player.power=7
			player.power_extra=0
			maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]=0
		end

		if map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.power_umbrella) then--umbrella powerup
			love.audio.stop(sounds.player_powerup)
			sounds.player_powerup:play()
			player.power=8
			player.power_extra=0
			maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]=0
		end

		if map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.power_rock) then--rock powerup
			love.audio.stop(sounds.player_powerup)
			sounds.player_powerup:play()
			player.power=9
			player.power_extra=0
			maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]=0
		end

		if map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.power_teleport) then--teleport powerup
			love.audio.stop(sounds.player_powerup)
			sounds.player_powerup:play()
			player.power=10
			player.power_extra=0
			maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]=0
		end

		if map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.power_time) then--time powerup
			love.audio.stop(sounds.player_powerup)
			sounds.player_powerup:play()
			player.power=11
			player.power_extra=0
			maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]=0
		end

		if map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.power_wacky) then--wacky powerup
			love.audio.stop(sounds.player_powerup)
			sounds.player_powerup:play()
			player.wacky=1
			maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]=0
		end

		if map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.player_speedup) then--speedup powerup
			love.audio.stop(sounds.player_powerup)
			sounds.player_powerup:play()
			player.speed=4
			maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]=0
		end

		if map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.player_speeddown) then--speeddown powerup
			love.audio.stop(sounds.player_powerup)
			sounds.player_powerup:play()
			player.speed=2
			maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]=0
		end

		if map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.power_ice) then--ice powerup
			love.audio.stop(sounds.player_powerup)
			sounds.player_powerup:play()
			player.power=12
			player.power_extra=0
			maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]=0
		end

		if map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.power_droid) then--drone powerup
			love.audio.stop(sounds.player_powerup)
			sounds.player_powerup:play()
			player.power=13
			player.power_extra=0
			maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]=0
		end

		if map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.power_double) then--Double jump powerup
			love.audio.stop(sounds.player_powerup)
			sounds.player_powerup:play()
			player.power=14
			player.power_extra=0
			maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]=0
		end

		if map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.power_remote) then--Double jump powerup
			love.audio.stop(sounds.player_powerup)
			sounds.player_powerup:play()
			player.power=15
			player.power_extra=0
			maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]=0
		end

		if map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.teleport) then--teleporter
			love.audio.stop(sounds.player_teleport)
			sounds.player_teleport:play()
			player.x=telex
			player.y=teley
		end

		if map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.teleport2) then--teleporter2
			love.audio.stop(sounds.player_teleport)
			sounds.player_teleport:play()
			player.x=telex2
			player.y=teley2
		end

		if map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.teleport3) then-- inverted teleporter
			love.audio.stop(sounds.player_teleport)
			sounds.player_teleport:play()
			player.x=telex3
			player.y=teley3
			player.dx=-player.dx
			player.dy=-player.dy
			player.boost=-player.boost
		end

		if map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.teleport4) then-- inverted teleporter2
			love.audio.stop(sounds.player_teleport)
			sounds.player_teleport:play()
			player.x=telex4
			player.y=teley4
			player.dx=-player.dx
			player.dy=-player.dy
			player.boost=-player.boost
		end

		if map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.teleport5) then-- Powerup teleporter
			love.audio.stop(sounds.player_super_teleport)
			sounds.player_super_teleport:play()
			player.x=telex5
			player.y=teley5
			player.power=telepower
		end

		if map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.teleport6) then-- Powerup teleporter2
			love.audio.stop(sounds.player_super_teleport)
			sounds.player_super_teleport:play()
			player.x=telex6
			player.y=teley6
			player.power=telepower2
		end

		if map_collision(player.x,player.y,player.w,player.h,"rightspike",maps[levels.current],flags.right_slime) then -- right Slime
			if player.dy > 0.5 then
				player.dy=1
				if get_input("a") then
					player.dy = -6
					player.boost=-6
				end
			end
		end
		if map_collision(player.x,player.y,player.w,player.h,"leftspike",maps[levels.current],flags.left_slime) then -- left Slime
			if player.dy > 0.5 then
				player.dy=1
				if get_input("a") then
					player.dy = -6
					player.boost=6
				end
			end
		end

		if map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.lazerswitch) then--Lazer gate switch
			love.audio.stop(sounds.button_pressed)
			sounds.button_pressed:play()
			if levels.stated==0 then
				levels.stated=1
			else
				levels.stated=0
			end
			maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]=159
		end

		if map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.fswitch) then--Lazer gate switch
			love.audio.stop(sounds.button_pressed)
			sounds.button_pressed:play()
			levels.statef=1
			maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]=383
		end

		if map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.bomb) then--bomb gate
			bombtimer=5
			bombptimer=5-dt
			bombactive=true
		end

		if map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.key) then--key
			love.audio.stop(sounds.player_key)
			sounds.player_key:play()
			maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]=0
			maps[levels.current][keydoory][keydoorx]=0
		end

		if map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.powergenerator) then--Power generator
			love.audio.stop(sounds.player_destroy)
			sounds.player_destroy:play()
			player.boost=-player.dx*6
			player.dy=-player.dy*3
			levels.statec=1
			maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]=99
		end

		if levels.statee==0 then
			if map_collision(player.x,player.y,player.w,player.h,"down2",maps[levels.current],flags.conveyor_right) then -- Conveyor right Collision
				player.boost=4
			end
		end

		if levels.statee==0 then
			if map_collision(player.x,player.y,player.w,player.h,"down2",maps[levels.current],flags.conveyor_left) then -- Conveyor left Collision
				player.boost=-4
			end
		end

		if map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.reset) then--RESET LEVEL 
			if get_input("up") and not (get_input("left") or get_input("right")) and timer.interaction <= 0 then
				timer.interaction = 2
				love.audio.stop(sounds.player_destroy)
				reload()
				sounds.player_destroy:play()
				for i=1, #enemies.enemies do
					table.remove(enemies.enemies,1)
				end
				for b,_ in pairs(enemies.bullets) do
					enemies.bullets[b]=nil
				end
				levels.state=0
				levels.stateb=0
				levels.statec=0
				levels.stated=0
				levels.statee=0
				levels.statef=0
				--spawns enemies and makes start
				spawn_enemies()
			end
		end


		if map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.gems) then--all the gems
			love.audio.stop(sounds.player_gem)
			sounds.player_gem:play()
			if maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]==30 then
				scores.gems=scores.gems+1
				maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]=0
				explode_picture((math.floor((player.x+12)/32))*32,(math.floor((player.y+12)/32))*32,tilesdata[30],{-15,15,-15,15,5,20,"star"})
				makeparticle(player.x,player.y,17,{0,.5803,1},{"1-GEM",1.5})
			elseif maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]==31 then
				scores.gems=scores.gems+3
				maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]=0
				explode_picture((math.floor((player.x+12)/32))*32,(math.floor((player.y+12)/32))*32,tilesdata[31],{-15,15,-15,15,5,20,"star"})
				makeparticle(player.x,player.y,17,{1,0,0},{"3-GEMS",1.5})
			elseif maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]==32 then
				scores.gems=scores.gems+5
				maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]=0
				explode_picture((math.floor((player.x+12)/32))*32,(math.floor((player.y+12)/32))*32,tilesdata[32],{-15,15,-15,15,5,20,"star"})
				explode_picture((math.floor((player.x+12)/32))*32,(math.floor((player.y+12)/32))*32,tilesdata[32],{-15,15,-15,15,5,20,"star"})
				makeparticle(player.x,player.y,17,{1,1,1},{"5-GEMS",2})
			elseif maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]==205 then
				scores.gems=scores.gems+1
				maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]=77
			elseif maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]==206 then
				scores.gems=scores.gems+3
				maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]=77
			elseif maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]==207 then
				scores.gems=scores.gems+5
				maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]=77
			elseif maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]==237 then
				scores.gems=scores.gems+1
				maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]=219
			elseif maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]==238 then
				scores.gems=scores.gems+3
				maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]=219
			elseif maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]==239 then
				scores.gems=scores.gems+5
				maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]=219
			end
			scores.levelGems[levels.current]=1
		end

		if levels.statee==0 then
			if map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.spring) then--Spring Stuff
				if maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]==35 then
					maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]=36
					timer.interaction=.15
				elseif maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]==36 then
					love.audio.stop(sounds.player_spring)
					sounds.player_spring:play()
					player.dy=-8
				end
			end
		end

		if levels.statee==0 then
			if map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.right_spring) then-- right Spring Stuff
				if maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]==168 then
					maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]=169
					timer.interaction=.15
				elseif maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]==169 then
					love.audio.stop(sounds.player_spring)
					sounds.player_spring:play()
					player.boost=-24
				end
			end
		end

		if levels.statee==0 then
			if map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.left_spring) then-- left Spring Stuff
				if maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]==170 then
					maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]=171
					timer.interaction=.15
				elseif maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]==171 then
					love.audio.stop(sounds.player_spring)
					sounds.player_spring:play()
					player.boost=24
				end
			end
		end

		if levels.statee==0 then
			if map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.super_spring) then--super Spring Stuff
				if maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]==175 then
					maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]=176
					timer.interaction=.15
				elseif maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]==176 then
					love.audio.stop(sounds.player_spring)
					sounds.player_spring:play()
					player.dy=-12
				end
			end
		end

		if levels.statee==0 then
			if map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.super_right_spring) then--super right Spring Stuff
				if maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]==177 then
					maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]=178
					timer.interaction=.15
				elseif maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]==178 then
					love.audio.stop(sounds.player_spring)
					sounds.player_spring:play()
					player.boost=-50
				end
			end
		end

		if levels.statee==0 then
			if map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.super_left_spring) then--super left Spring Stuff
				if maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]==179 then
					maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]=180
					timer.interaction=.15
				elseif maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]==180 then
					love.audio.stop(sounds.player_spring)
					sounds.player_spring:play()
					player.boost=50
				end
			end
		end

		if levels.statee==0 then
			if map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.ultra_spring) then--ultra Spring Stuff
				if maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]==181 then
					maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]=182
					timer.interaction=.15
				elseif maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]==182 then
					love.audio.stop(sounds.player_spring)
					sounds.player_spring:play()
					player.dy=-17
				end
			end
		end

		if levels.statee==0 then
			if map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.ultra_right_spring) then--ultra right Spring Stuff
				if maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]==183 then
					maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]=184
					timer.interaction=.15
				elseif maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]==184 then
					love.audio.stop(sounds.player_spring)
					sounds.player_spring:play()
					player.boost=-100
				end
			end
		end

		if levels.statee==0 then
			if map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.breaking_spring) then--breaking Spring Stuff
				if maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]==672 then
					maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]=673
					timer.interaction=.15
				elseif maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]==673 then
					love.audio.stop(sounds.player_spring)
					sounds.player_spring:play()
					player.dy=-8
				end
			end
		end

		if levels.statee==0 then
			if map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.breaking_right_spring) then--breaking right Spring Stuff
				if maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]==674 then
					maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]=675
					timer.interaction=.15
				elseif maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]==675 then
					love.audio.stop(sounds.player_spring)
					sounds.player_spring:play()
					player.boost=-24
				end
			end
		end

		if levels.statee==0 then
			if map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.breaking_left_spring) then--breaking left Spring Stuff
				if maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]==676 then
					maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]=677
					timer.interaction=.15
				elseif maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]==677 then
					love.audio.stop(sounds.player_spring)
					sounds.player_spring:play()
					player.boost=24
				end
			end
		end

		if map_collision(player.x,player.y,player.w,player.h,"down2",maps[levels.current],flags.breaking) then -- breaking block Collision
			if timer.interaction > 0.25 then
				if maps[levels.current][math.floor((player.y+44)/32)+1][math.floor((player.x+12)/32)+1]==167 then
					sounds.player_platform:play()
					maps[levels.current][math.floor((player.y+44)/32)+1][math.floor((player.x+12)/32)+1]=9992
				end
			else
			timer.interaction = timer.interaction+dt*2
			end
		end

		if levels.statee==0 then
			if map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.speedup) then--speed boosters
				if player.boost < 15 then
					player.boost=player.boost+2*(dt*60)
				end
			elseif map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.speeddown) then
				if player.boost > -15 then
					player.boost=player.boost-2*(dt*60)
				end
			elseif map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.speedupup) then
				if player.boost < 30 then
					player.boost=player.boost+4*(dt*60)
				end
			elseif map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.speeddowndown) then
				if player.boost > -30 then
					player.boost=player.boost-4*(dt*60)
				end
			elseif map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.speedupupup) then
				if player.boost < 60 then
					player.boost=player.boost+8*(dt*60)
				end
			elseif map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.speeddowndowndown) then
				if player.boost < 60 then
					player.boost=player.boost-8*(dt*60)
				end
			end
		end

		if levels.statee==0 then
			if map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.jumpboost) then--jump booster
				if get_input("a") then
					player.tg = true
				end
			end
		end

		if map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.water) then--water boosters
			player.water=.4
			if player.dy > 2 then
				player.dy = 2
			end
			if get_input("a") then
				player.dy=-2
				if maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]~=78 then
					player.tg = false
				else
					player.tg = true
				end
			end
		elseif map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.toxic_water) then
			player.water=1.5
			if player.dy > 4 then
				player.dy = 4
			end
			if get_input("a") then
				if not map_collision(player.x,player.y,player.w,player.h,"up2",maps[levels.current],flags.ground) and player.y >= 1 then
					player.dy=-4
					if maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]~=220 then
						player.tg = false
					else
						player.tg = true
					end
				end
			end
		else
			player.water=1
		end

		if map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.gravity) then--every gravity changer
			love.audio.stop(sounds.player_powerup)
			sounds.player_powerup:play()
			if maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]==43 then
				gravity=0.35
			elseif maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]==44 then
				gravity=0.18
			elseif maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]==45 then
				gravity=0.13
			elseif maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]==46 then
				gravity=0.10
			elseif maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]==47 then
				gravity=0.25
				player.speed=3
				player.power=0
				levels.statee=0
			end
			maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+12)/32)+1]=0

		end



		if map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.door) then--DOOORRSS
			if get_input("up") and not (get_input("left") or get_input("right")) then
				for t=1,#levels.doors[levels.current] do
					if math.floor((player.x+12)/32)+1 == levels.doors[levels.current][t][1] and math.floor((player.y+12)/32)+1 == levels.doors[levels.current][t][2] then
						sounds.player_door:play()
						levels.current=levels.doors[levels.current][t][3]
						for i=1, #enemies.enemies do
							table.remove(enemies.enemies,1)
						end
						--spawns enemies and makes start
						spawn_enemies()
						player.x=startx
						player.y=starty
						player.dx=0
						player.dy=0
						bombactive=false
						bombptimer=0
						bombtimer=0
						player.super_chidden=false
						--scrolling logic
						if player.x > 960/levels.scale[levels.current] and not (player.x > (#maps[levels.current][1]*32)-960/levels.scale[levels.current]) then
							scrollx = -(player.x-960/levels.scale[levels.current])
						elseif player.x > 960/levels.scale[levels.current] and player.x > (#maps[levels.current][1]*32)-960/levels.scale[levels.current] then
							scrollx = -((#maps[levels.current][1]*32)-1920/levels.scale[levels.current])
						else
							scrollx = 0
						end
						--y axis
						if #maps[levels.current] ~= 34/levels.scale[levels.current] then
							if player.y > 540/levels.scale[levels.current] and not (player.y > (#maps[levels.current]*32)-540/levels.scale[levels.current]) then
								scrolly = -(player.y-540/levels.scale[levels.current])
							elseif player.y > 540/levels.scale[levels.current] and player.y > (#maps[levels.current]*32)-540/levels.scale[levels.current] then
								scrolly = -((#maps[levels.current]*32)-1080/levels.scale[levels.current])
							else
								scrolly=0
							end
						else
							scrolly=0
						end
						break
					end
				end
			end
		end

		if map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.crash) then -- Crash button Collision
			if get_input("up") and not (get_input("left") or get_input("right")) then
				love.audio.stop(sounds.player_crash)
				sounds.player_crash:play()
				while not map_collision(player.x,player.y,player.w,player.h,"down2",maps[levels.current],flags.ground) do
					player.y=player.y+.5
				end
				player.tg=true
			end
		end
		if map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.lazer) then -- lazers
			playerdied()
		end

		if not (player.power==9 and player.timer >= 1) then
			if map_collision(player.x,player.y,player.w,player.h,"downspike",maps[levels.current],flags.ground_spikes) then -- Ground Spikes
				playerdied()
			end
			if map_collision(player.x,player.y,player.w,player.h,"rightspike",maps[levels.current],flags.right_spikes) then -- right Spikes
				playerdied()
			end
			if map_collision(player.x,player.y,player.w,player.h,"leftspike",maps[levels.current],flags.left_spikes) then -- left Spikes
				playerdied()
			end
			if map_collision(player.x,player.y,player.w,player.h,"upspike",maps[levels.current],flags.up_spikes) then -- up Spikes
				playerdied()
			end
		end

		--camera
		if not (levels.scroll[levels.current] == 1 or levels.scroll[levels.current] == 2 or levels.scroll[levels.current] == 3 or levels.scroll[levels.current] == 4) then
			--x axis
			if player.x > 960/levels.scale[levels.current] and not (player.x > (#maps[levels.current][1]*32)-960/levels.scale[levels.current]) then
				scrollx = -(player.x-960/levels.scale[levels.current])
			elseif player.x > 960/levels.scale[levels.current] and player.x > (#maps[levels.current][1]*32)-960/levels.scale[levels.current] then
				scrollx = -((#maps[levels.current][1]*32)-1920/levels.scale[levels.current])
			else
				scrollx = 0
			end
			--y axis
			if #maps[levels.current] ~= 34/levels.scale[levels.current] then
				if player.y > 540/levels.scale[levels.current] and not (player.y > (#maps[levels.current]*32)-540/levels.scale[levels.current]) then
					scrolly = -(player.y-540/levels.scale[levels.current])
				elseif player.y > 540/levels.scale[levels.current] and player.y > (#maps[levels.current]*32)-540/levels.scale[levels.current] then
					scrolly = -((#maps[levels.current]*32)-1080/levels.scale[levels.current])
				else
					scrolly=0
				end
			else
				scrolly=0
			end
		elseif levels.scroll[levels.current] == 1 and levels.statee==0 then--left to right
			if scrollx > -((#maps[levels.current][1]*32)-1920/levels.scale[levels.current]) then
				scrollx = scrollx-dt*(levels.scrolls[levels.current]*60)
			else
				scrollx = -((#maps[levels.current][1]*32)-1920/levels.scale[levels.current])
			end
			if #maps[levels.current] ~= 34/levels.scale[levels.current] then
				if player.y > 540/levels.scale[levels.current] and not (player.y > (#maps[levels.current]*32)-540/levels.scale[levels.current]) then
					scrolly = -(player.y-540/levels.scale[levels.current])
				elseif player.y > 540/levels.scale[levels.current] and player.y > (#maps[levels.current]*32)-540/levels.scale[levels.current] then
					scrolly = -((#maps[levels.current]*32)-1080/levels.scale[levels.current])
				else
					scrolly=0
				end
			else
				scrolly=0
			end
		elseif levels.scroll[levels.current] == 2 and levels.statee==0 then--top to bottem
			if scrolly > -((#maps[levels.current]*32)-1080/levels.scale[levels.current]) then
				scrolly = scrolly-dt*(levels.scrolls[levels.current]*60)
			else
				scrolly = -((#maps[levels.current]*32)-1080/levels.scale[levels.current])
			end
			if player.x > 960/levels.scale[levels.current] and not (player.x > (#maps[levels.current][1]*32)-960/levels.scale[levels.current]) then
				scrollx = -(player.x-960/levels.scale[levels.current])
			elseif player.x > 960/levels.scale[levels.current] and player.x > (#maps[levels.current][1]*32)-960/levels.scale[levels.current] then
				scrollx = -((#maps[levels.current][1]*32)-1920/levels.scale[levels.current])
			else
				scrollx = 0
			end
		elseif levels.scroll[levels.current] == 3 and levels.statee==0 then--right to left
			if scrollx < 0 then
				scrollx = scrollx+dt*(levels.scrolls[levels.current]*60)
			else
				scrollx = 0
			end
			if #maps[levels.current] ~= 34/levels.scale[levels.current] then
				if player.y > 540/levels.scale[levels.current] and not (player.y > (#maps[levels.current]*32)-540/levels.scale[levels.current]) then
					scrolly = -(player.y-540/levels.scale[levels.current])
				elseif player.y > 540/levels.scale[levels.current] and player.y > (#maps[levels.current]*32)-540/levels.scale[levels.current] then
					scrolly = -((#maps[levels.current]*32)-1080/levels.scale[levels.current])
				else
					scrolly=0
				end
			else
				scrolly=0
			end
		elseif levels.scroll[levels.current] == 4 and levels.statee==0 then--bottom to top
			if scrolly < 0 then
				scrolly = scrolly+dt*(levels.scrolls[levels.current]*60)
			else
				scrolly = 0
			end
			if player.x > 960/levels.scale[levels.current] and not (player.x > (#maps[levels.current][1]*32)-960/levels.scale[levels.current]) then
				scrollx = -(player.x-960/levels.scale[levels.current])
			elseif player.x > 960/levels.scale[levels.current] and player.x > (#maps[levels.current][1]*32)-960/levels.scale[levels.current] then
				scrollx = -((#maps[levels.current][1]*32)-1920/levels.scale[levels.current])
			else
				scrollx = 0
			end
		end
	end
end--end of the function













function drawmenu()--begining of the function

	love.graphics.setFont(fonts.comic20)
	love.graphics.print(#maps,50)
	love.graphics.print(timer.menutest,40,0)
	love.graphics.print(love.timer.getFPS(),0,10)
	love.graphics.print(menu.x,0,60)
	love.graphics.print(#maps,0,80)
	--love.graphics.scale(2*(love.graphics.getWidth()/1920),2*(love.graphics.getHeight()/1080))
	love.graphics.scale(2)

	love.graphics.setColor(.5,.5,.5)
	for z = 1, timer.menutest+1 do
		for a=1, #extra_maps[1] do
			for b=1, #extra_maps[1][a] do
				if extra_maps[1][a][b] > 0 then
					love.graphics.draw(tiles[extra_maps[1][a][b]],b*32-32+timer.menuscroll,a*32-32)
				end
			end
		end
	end


	--love.graphics.scale(.5/(love.graphics.getWidth()/1920),.5/(love.graphics.getHeight()/1080))
	love.graphics.scale(.5,.5)
	love.graphics.setFont(fonts.comic160)

	--TITLE RECTANGLE
	love.graphics.setColor(0,.5,0,.5)
	love.graphics.rectangle("fill", 0, 70, 1920, 160)

	makebutton(739,70,false,"Squishy",true,0,1,0) --TITLE TEXT

	love.graphics.setFont(fonts.comic80)

	if menu.scene == 1 then--The main menu screen with start game load game settings and
		if menu.y == 0 then
			makebutton(0,600,true,"Start Game")
		else
			makebutton(0,600,false,"Start Game")
		end
		if menu.y == 1 then
			makebutton(0,700,true,"Load Game")
		else
			makebutton(0,700,false,"Load Game")
		end
		if menu.y == 2 then
			makebutton(0,800,true,"Settings")
		else
			makebutton(0,800,false,"Settings")
		end
		if menu.y == 3 then
			makebutton(0,900,true,"Exit")
		else
			makebutton(0,900,false,"Exit")
		end
	elseif menu.scene == 2 then -- settings menu
		if menu.y == 0 then
			makebutton(0,500,true,"Resolution: "..resolutions[settings.resolution])
		else
			makebutton(0,500,false,"Resolution: "..resolutions[settings.resolution])
		end
		if menu.y == 1 then
			makebutton(0,600,true,"Fullscreen: "..settings.fullscreen)
		else
			makebutton(0,600,false,"Fullscreen: "..settings.fullscreen)
		end
		if menu.y == 2 then
			makebutton(0,700,true,"Perform Stress Test")
		else
			makebutton(0,700,false,"Perform Stress Test")
		end
		if menu.y == 3 then
			makebutton(0,800,true,"Credits")
		else
			makebutton(0,800,false,"Credits")
		end
		if menu.y == 4 then
			makebutton(0,900,true,"Back")
		else
			makebutton(0,900,false,"Back")
		end
	elseif menu.scene == 3 then -- performance test

		makebutton(0,500,false,"Score: "..math.floor(timer.menutest),true,.1,1,.4)
		makebutton(0,600,false,"Current FPS: "..love.timer.getFPS(),true,.1,1,.4)
		makebutton(0,700,false,"Tartget FPS: 120",true,.1,1,.4)

		love.graphics.setFont(fonts.comic40)

		love.graphics.setColor(.25,0,.5)
		love.graphics.printf("You want the score to be above 20 without any fps drops in order to run the game well!",5,785,500)
		love.graphics.setColor(.5,0,1)
		love.graphics.printf("You want the score to be above 20 without any fps drops in order to run the game well!",0,780,500)

		love.graphics.setFont(fonts.comic80)
		if menu.y == 0 then
			makebutton(0,900,true,"Back")
		else
			makebutton(0,900,false,"Back")
		end
	elseif menu.scene == 4 then -- Credits
		if menu.y == 0 then
			makebutton(0,900,true,"Back")
		else
			makebutton(0,900,false,"Back")
		end
	elseif menu.scene == 5 then
	    if menu.y == 0 and menu.x == 0 then
			makebutton(0,600,true,"Save Slot 1: ")
		else
			makebutton(0,600,false,"Save Slot 1: ")
		end
		if menu.y == 0 and menu.x == 1 then
			makebutton(800,600,true,"Delete")
		else
			makebutton(800,600,false,"Delete")
		end
		if menu.y == 1 and menu.x == 0 then
			makebutton(0,700,true,"Save Slot 2: ")
		else
			makebutton(0,700,false,"Save Slot 2: ")
		end
		if menu.y == 1 and menu.x == 1 then
			makebutton(800,700,true,"Delete")
		else
			makebutton(800,700,false,"Delete")
		end
		if menu.y == 2 and menu.x == 0 then
			makebutton(0,800,true,"Save Slot 3: ")
		else
			makebutton(0,800,false,"Save Slot 3: ")
		end
		if menu.y == 2 and menu.x == 1 then
			makebutton(800,800,true,"Delete")
		else
			makebutton(800,800,false,"Delete")
		end
		if menu.y == 3 then
			makebutton(0,900,true,"Back")
		else
			makebutton(0,900,false,"Back")
		end
	end
end--end of the function

function drawmap()--begining of the function
end--end of the function


























function drawgame()--begining of the function
	love.graphics.setColor(1,1,1,1)
	love.graphics.setFont(fonts.comic40)

	if player.pause then
		love.graphics.push()
	end

	love.graphics.print(levels.current,0,0)
	love.graphics.setColor(1,0,1,1)
	love.graphics.print("The is the FPS: "..love.timer.getFPS(),0,40)
	love.graphics.setColor(0,0,1,1)
	love.graphics.print(#particles,0,100)
	love.graphics.print("Player.boosty: "..player.boosty,0,120)
	if player.tg then
		love.graphics.print("Player.tg: true",0,140)
	else
		love.graphics.print("Player.tg: false",0,140)
	end
	local r,g,b,a = player.picsdata[player.ani+(player.power*4)]:getPixel(0,0)
	love.graphics.print(scrollx,0,160)
	love.graphics.print("Bullets: "..#enemies.bullets,0,180)
	love.graphics.setColor(r,g,b,a)
	love.graphics.print("This is the color of the top left pixel",0,200)
	love.graphics.setColor(1,1,1,1)


	love.graphics.scale(levels.scale[levels.current],levels.scale[levels.current])
	love.graphics.translate(scrollx,scrolly)
	--camera end

	-- boss bars
	if check_enemies("b1") == 1 then-- bossbar 1
		for i,e in ipairs(enemies.enemies) do
			if e.type=="b1" then
				love.graphics.setColor(1,1,1,1)
				love.graphics.draw(extras.boss1[1],356,0)
				love.graphics.rectangle("fill",360,40,e.health*8,4)
				love.graphics.setColor(0.75,0.75,0.75,1)
				love.graphics.rectangle("fill",360,44,e.health*8,12)
				love.graphics.setColor(0.5,0.5,0.5,1)
				love.graphics.rectangle("fill",360,52,e.health*8,4)
			end
		end
	elseif check_enemies("b1") > 1 then
		for i,e in ipairs(enemies.enemies) do
			if e.type=="b1" then
				love.graphics.setColor(1,1,1,1)
				love.graphics.draw(extras.boss1[2],math.floor(e.x/4)*4-2,math.floor(e.y/4)*4-24)
				love.graphics.rectangle("fill",math.floor(e.x/4)*4+2,math.floor(e.y/4)*4-20,e.health*2,4)
				love.graphics.setColor(0.5,0.5,0.5,1)
				love.graphics.rectangle("fill",math.floor(e.x/4)*4+2,math.floor(e.y/4)*4-16,e.health*2,4)
			end
		end
	end
	love.graphics.setColor(1,1,1,1)
	if check_enemies("b2") == 1 then-- bossbar 2
		for i,e in ipairs(enemies.enemies) do
			if e.type=="b2" then
				love.graphics.setColor(1,1,1,1)
				love.graphics.draw(extras.boss2[1],356,0)
				love.graphics.rectangle("fill",360,40,e.health*20,4)
				love.graphics.setColor(0.75,0.75,0.75,1)
				love.graphics.rectangle("fill",360,44,e.health*20,12)
				love.graphics.setColor(0.5,0.5,0.5,1)
				love.graphics.rectangle("fill",360,52,e.health*20,4)
			end
		end
	elseif check_enemies("b2") > 1 then
		for i,e in ipairs(enemies.enemies) do
			if e.type=="b2" then
				love.graphics.setColor(1,1,1,1)
				love.graphics.draw(extras.boss2[2],math.floor(e.x/4)*4-2,math.floor(e.y/4)*4-24)
				love.graphics.rectangle("fill",math.floor(e.x/4)*4+2,math.floor(e.y/4)*4-20,e.health*5,4)
				love.graphics.setColor(0.5,0.5,0.5,1)
				love.graphics.rectangle("fill",math.floor(e.x/4)*4+2,math.floor(e.y/4)*4-16,e.health*5,4)
			end
		end
	end
	love.graphics.setColor(1,1,1,1)
	--Level rendering start
	if player.power_extra==1 and player.power==12 then
		love.graphics.setColor(.25,.5,1,1)
	end
	for a=1, #maps[levels.current] do 
		for b=1, #maps[levels.current][a] do
			if maps[levels.current][a][b] > 0 then
				if (b*32)>math.abs(scrollx) and (b*32)<math.abs(scrollx)+(60/levels.scale[levels.current])*32+32 then
					if maps[levels.current][a][b] ~= 9999 and maps[levels.current][a][b] ~= 9998 and maps[levels.current][a][b] ~= 9997 and maps[levels.current][a][b] ~= 9996 and maps[levels.current][a][b] ~= 9995 and maps[levels.current][a][b] ~= 9994 and maps[levels.current][a][b] ~= 9993 and maps[levels.current][a][b] ~= 9992 and maps[levels.current][a][b] ~= 9991 and maps[levels.current][a][b] ~= 9990 and maps[levels.current][a][b] ~= 9989 and maps[levels.current][a][b] ~= 9988 then
						if tiles[maps[levels.current][a][b]]:getWidth()==32 and tiles[maps[levels.current][a][b]]:getHeight()==32 then
							love.graphics.draw(tiles[maps[levels.current][a][b]],b*32-32,a*32-32)--all square non glowy tiles
							if (maps[levels.current][a][b]==387 or maps[levels.current][a][b]==386) and telepower~=0 then--portal powerup displays
								love.graphics.draw(extras.portalPower[telepower],b*32-32,a*32-64)
							end
							if (maps[levels.current][a][b]==389 or maps[levels.current][a][b]==388) and telepower2~=0 then--portal powerup displays
								love.graphics.draw(extras.portalPower[telepower2],b*32-32,a*32-64)
							end
						elseif tiles[maps[levels.current][a][b]]:getWidth()==32 and tiles[maps[levels.current][a][b]]:getHeight()==64 then
							love.graphics.draw(tiles[maps[levels.current][a][b]],b*32-32,a*32-64)--all tall non glowy tiles
						elseif tiles[maps[levels.current][a][b]]:getWidth()==64 and tiles[maps[levels.current][a][b]]:getHeight()==32 then
							love.graphics.draw(tiles[maps[levels.current][a][b]],b*32-32,a*32-32)--all wide non glowy tiles
						elseif tiles[maps[levels.current][a][b]]:getWidth()==64 and tiles[maps[levels.current][a][b]]:getHeight()==64 then
							love.graphics.draw(tiles[maps[levels.current][a][b]],b*32-48,a*32-48)--all square glowy tiles
						elseif tiles[maps[levels.current][a][b]]:getWidth()==64 and tiles[maps[levels.current][a][b]]:getHeight()==128 then
							love.graphics.draw(tiles[maps[levels.current][a][b]],b*32-48,a*32-96)--all tall glowy tiles
						end
					end
				end
			end
		end
	end--Level rendering end

	--glow effect if the player has the expolsiion power up
	if player.power == 6 and player.timer <=0 then
		love.graphics.setColor(1,1,1)
		love.graphics.draw(extras.gloweffect[player.ani],math.floor(player.x/4)*4-12,math.floor(player.y/4)*4-12)
	end

	--draw the level number for a dorr
	love.graphics.setColor(1,1,1)
	if map_collision(player.x,player.y,player.w,player.h,"powerup",maps[levels.current],flags.door) then
		for t=1,#levels.doors[levels.current] do
			if math.floor((player.x+12)/32)+1 == levels.doors[levels.current][t][1] and math.floor((player.y+12)/32)+1 == levels.doors[levels.current][t][2] then				
				love.graphics.setFont(fonts.pico10)
				love.graphics.print("Area: "..levels.doors[levels.current][t][3],(player.x-24),(player.y-32))
			end
		end
	end

	--player renderering
	if player.power ~= 9 then -- not rock
		love.graphics.setColor(1,1,1)
		--love.graphics.draw(player.pics[player.ani+(player.power*4)],player.x,player.y)
		love.graphics.draw(player.pics[player.ani+(player.power*4)],math.floor(player.x/4)*4,math.floor(player.y/4)*4)
	elseif player.power == 9 and player.timer >= 1 then -- rock
		love.graphics.setColor(1,1,1)
		love.graphics.draw(player.pics[player.ani+(36)],math.floor(player.x/4)*4,math.floor(player.y/4)*4)
	else
		love.graphics.draw(player.pics[player.ani],math.floor(player.x/4)*4,math.floor(player.y/4)*4)
	end
	--map_collision(player.x,player.y,player.w,player.h,"down2",{7},"not useful",false,true)



	--gravitybar renderer
	if player.power == 4 then
		love.graphics.setColor(1,1,1)
		love.graphics.draw(extras.gravitybar[player.gravchange+1],math.floor(player.x/4)*4,math.floor((player.y-32)/4)*4)
	elseif player.power == 14 then
		love.graphics.setColor(1,1,1)
		if player.timer < 1 and player.timer > 0 then
			love.graphics.draw(extras.doublebar[math.floor(player.timer*5)+1],math.floor(player.x/4)*4,math.floor((player.y-32)/4)*4)
		else
			if player.timer > 1 then
				love.graphics.draw(extras.doublebar[5],math.floor(player.x/4)*4,math.floor((player.y-32)/4)*4)
			elseif player.timer < 0 then
				love.graphics.draw(extras.doublebar[1],math.floor(player.x/4)*4,math.floor((player.y-32)/4)*4)
			end
		end
	elseif player.power == 15 then
		love.graphics.draw(extras.remotebar[math.ceil(player.timer*2+1)],math.floor(player.x/4)*4,math.floor((player.y-32)/4)*4)
	end

	--teleport preview renderer
	if player.power == 10 then
		love.graphics.setColor(1,1,1,1)
		if (player.face=="right" and player.x+player.w+64 <= (#maps[levels.current][1]*32)-20) and not check_if_block(maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+player.w+64)/32)+1],2) and not check_if_block(maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x+player.w+88)/32)+1],2) then
			love.graphics.draw(extras.telepreview[1],(math.floor(player.x/4)*4)+player.w+64,math.floor(player.y/4)*4)
		elseif (player.face=="left" and player.x-player.w-64 >= 0) and not check_if_block(maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x-player.w-64)/32)+1],2) and not check_if_block(maps[levels.current][math.floor((player.y+12)/32)+1][math.floor((player.x-player.w-41)/32)+1],2) then
			love.graphics.draw(extras.telepreview[1],(math.floor(player.x/4)*4)-player.w-64,math.floor(player.y/4)*4)
		else
			if player.face=="right" then
				love.graphics.draw(extras.telepreview[2],(math.floor(player.x/4)*4)+player.w+64,math.floor(player.y/4)*4)
			elseif player.face=="left" then
				love.graphics.draw(extras.telepreview[2],(math.floor(player.x/4)*4)-player.w-64,math.floor(player.y/4)*4)
			end
		end
	end

	--bomb number renderer
	if bombactive then
		if not (player.power==4 or player.power==14 or player.power==15) then
			love.graphics.setColor(1,0,0)
			love.graphics.setFont(fonts.pico16)
			love.graphics.print(math.ceil(bombtimer),math.floor(player.x/4)*4,math.floor((player.y-32)/4)*4)
		else
			love.graphics.setColor(1,0,0)
			love.graphics.setFont(fonts.pico16)
			love.graphics.print(math.ceil(bombtimer),math.floor(player.x/4)*4,math.floor((player.y-64)/4)*4)
		end
	end

	--enemy rendering
	love.graphics.setColor(1,1,1)
	for i,e in ipairs(enemies.enemies) do
		love.graphics.print(e.plat_type,e.x,e.y-50)
		if e.type == 1 then
		love.graphics.draw(enemies.pics[e.ani], math.floor(e.x/4)*4, math.floor(e.y/4)*4)
		--love.graphics.draw(enemies.pics[77], math.floor(e.x/4)*4, math.floor(e.y/4)*4)
		elseif e.type == 2 then
			love.graphics.draw(enemies.pics[e.ani+6], math.floor(e.x/4)*4, math.floor(e.y/4)*4)
		elseif e.type == 3 then
			love.graphics.draw(enemies.pics[e.ani+9], math.floor(e.x/4)*4, math.floor(e.y/4)*4)
		elseif e.type == 4 then
			love.graphics.draw(enemies.pics[e.ani+12], math.floor(e.x/4)*4, math.floor(e.y/4)*4)
		elseif e.type == 5 then
			if e.extra==0 then
				love.graphics.draw(enemies.pics[e.ani+32], math.floor(e.x/4)*4, math.floor(e.y/4)*4)
			else
				love.graphics.draw(enemies.pics[e.ani+35], math.floor(e.x/4)*4, math.floor(e.y/4)*4)
			end
			map_collision(e.x-36.5,e.y,e.w,e.h,"down2",maps[levels.current],flags.ground)
			if e.face=="left" then
				love.graphics.draw(enemies.pics[40], math.floor(e.x/4)*4, math.floor(e.y/4)*4)
			elseif e.face=="right" then
				love.graphics.draw(enemies.pics[39], math.floor(e.x/4)*4, math.floor(e.y/4)*4)
			else
				love.graphics.draw(enemies.pics[41], math.floor(e.x/4)*4, math.floor(e.y/4)*4)
			end
		elseif e.type == 6 then--snipey
			if e.tg then
				love.graphics.draw(enemies.pics[42], math.floor((e.x+8)/4)*4, e.y+24)
			else
				love.graphics.draw(enemies.pics[43], math.floor((e.x+8)/4)*4, e.y+24)
			end
			if e.face=="left" then
				love.graphics.draw(enemies.pics[44], math.floor(e.x/4)*4, math.floor((e.y-12)/4)*4)
			elseif e.face=="right" then
				love.graphics.draw(enemies.pics[45], math.floor(e.x/4)*4, math.floor((e.y-12)/4)*4)
			elseif e.face=="up" then
				love.graphics.draw(enemies.pics[46], math.floor(e.x/4)*4, math.floor((e.y-16)/4)*4)
			else
				love.graphics.draw(enemies.pics[47], math.floor(e.x/4)*4, math.floor((e.y-24)/4)*4)
			end
			map_collision(e.x+8,e.y,e.w-16,e.h,"down2",maps[levels.current],flags.ground)
		elseif e.type == 7 then--platform
			if e.plat_type==1 then
				love.graphics.draw(enemies.pics[48], math.floor(e.x/4)*4, math.floor(e.y/4)*4)--falliong platform
			elseif e.plat_type==2 then
				love.graphics.draw(enemies.pics[76+e.ani], math.floor(e.x/4)*4, math.floor(e.y/4)*4)--grass platform
			end
		elseif e.type == 8 then--tracky bulb
			love.graphics.draw(enemies.pics[51], math.floor(e.x/4)*4, math.floor(e.y/4)*4)
		elseif e.type == 9 then--track offspring
			love.graphics.draw(enemies.pics[49+e.ani], math.floor(e.x/4)*4, math.floor(e.y/4)*4)
		elseif e.type == 10 then--lazer
			love.graphics.draw(enemies.pics[52], math.floor((e.x-20)/4)*4, math.floor((e.y-16)/4)*4)
		elseif e.type == "b1" then--b1
			love.graphics.draw(enemies.pics[52+e.ani], math.floor((e.x)/4)*4, math.floor((e.y)/4)*4)
		elseif e.type == "b2" then--b1
			love.graphics.setFont(fonts.comic20)
			love.graphics.draw(enemies.pics[64+e.ani], math.floor((e.x)/4)*4, math.floor((e.y)/4)*4)
			love.graphics.print("numattack?: "..e.numattack,0,220)
			love.graphics.print("last hpase?: "..e.last_phase,0,240)
			love.graphics.print("Attack?: "..e.attack,0,260)
			love.graphics.print("Timer: "..e.timer,0,280)
			love.graphics.print("Health: "..e.health,0,300)
		end
	end
	--bullet rendering
	love.graphics.setColor(1,1,1)
	for i,b in ipairs(player.bullets) do 
		for i,e in ipairs(enemies.enemies) do
			box_collision(b.x,b.y,b.w,b.h,e.x,e.y,e.w,e.h)
		end
		love.graphics.draw(bullet_pics[1],math.floor(b.x/4)*4,math.floor(b.y/4)*4)
	end

	--enemy bullet rendering
	love.graphics.setColor(1,1,1)
	for i,b in ipairs(enemies.bullets) do
		if b.type==1 then
			love.graphics.draw(bullet_pics[2],math.floor(b.x/4)*4,math.floor(b.y/4)*4)
		elseif b.type==2 then
			love.graphics.draw(bullet_pics[3],math.floor(b.x/4)*4,math.floor(b.y/4)*4)
		elseif b.type==3 then
			if b.life < 1 then
				love.graphics.draw(extras.boss1[3],math.floor(b.x/4)*4,math.floor(b.y/4)*4)
			else
				love.graphics.draw(extras.boss1[4],math.floor(b.x/4)*4,math.floor(b.y/4)*4)
			end
		elseif b.type==4 then
			love.graphics.draw(extras.boss1[5],math.floor(b.x/4)*4,math.floor(b.y/4)*4)
		elseif b.type==5 then
			love.graphics.draw(extras.boss2[3],math.floor(b.x/4)*4,math.floor(b.y/4)*4)
		elseif b.type==6 then
			love.graphics.draw(extras.boss2[4],math.floor(b.x/4)*4,math.floor(b.y/4)*4)
		elseif b.type==7 then
			love.graphics.draw(extras.boss2[5],math.floor(b.x/4)*4,math.floor(b.y/4)*4)
		elseif b.type==8 then
			love.graphics.draw(extras.boss2[6],math.floor(b.x/4)*4,math.floor(b.y/4)*4)
		end
	end

	--rendering hidden areas
	for a=1, #hmaps[levels.current] do 
		for b=1, #hmaps[levels.current][a] do
			if hmaps[levels.current][a][b] > 0 then
				if tiles[hmaps[levels.current][a][b]]:getWidth()==32 and tiles[hmaps[levels.current][a][b]]:getHeight()==32 then
					if player.super_chidden then-- super reveal
						if check_if_block(hmaps[levels.current][a][b],2) then
							love.graphics.setColor(0,0,0,.5)
							love.graphics.rectangle("fill", b*32-32, a*32-32, 32, 32)--black retangle
						end
						love.graphics.setColor(1,1,1,.5)
						love.graphics.draw(tiles[hmaps[levels.current][a][b]],b*32-32,a*32-32)--all square non glowy tiles
					elseif player.chidden then-- regualr reveal
						if check_if_block(hmaps[levels.current][a][b],2) then
							love.graphics.setColor(0,0,0,.5)
							love.graphics.rectangle("fill", b*32-32, a*32-32, 32, 32)--black retangle
						end
						love.graphics.setColor(1,1,1,.5)
						love.graphics.draw(tiles[hmaps[levels.current][a][b]],b*32-32,a*32-32)--all square non glowy tiles
					else--nothing
						if check_if_block(hmaps[levels.current][a][b],2) then
							love.graphics.setColor(0,0,0,1)
							love.graphics.rectangle("fill", b*32-32, a*32-32, 32, 32)--black retangle
						end
						love.graphics.setColor(1,1,1,1)
						love.graphics.draw(tiles[hmaps[levels.current][a][b]],b*32-32,a*32-32)--all square non glowy tiles
					end
				elseif tiles[hmaps[levels.current][a][b]]:getWidth()==32 and tiles[hmaps[levels.current][a][b]]:getHeight()==64 then
					love.graphics.draw(tiles[hmaps[levels.current][a][b]],b*32-32,a*32-64)--all tall non glowy tiles
				elseif tiles[hmaps[levels.current][a][b]]:getWidth()==64 and tiles[hmaps[levels.current][a][b]]:getHeight()==64 then
					love.graphics.draw(tiles[hmaps[levels.current][a][b]],b*32-48,a*32-48)--all square glowy tiles
				elseif tiles[hmaps[levels.current][a][b]]:getWidth()==64 and tiles[hmaps[levels.current][a][b]]:getHeight()==128 then
					love.graphics.draw(tiles[hmaps[levels.current][a][b]],b*32-48,a*32-96)--all tall glowy tiles
				end
			end
		end
	end--rendering hidden areas end

	--particle rendering
	for i,p in ipairs(particles) do
		if p.x >- math.abs(scrollx)-32 and p.x<math.abs(scrollx)+(60/levels.scale[levels.current])*32+32 then
			if p.type==1 then--snow
				if player.power_extra==1 then
					love.graphics.setColor(.25,.5,1,1)
				else
					love.graphics.setColor(1,1,1)
				end
				love.graphics.rectangle("fill", math.floor(p.x/4)*4, math.floor(p.y/4)*4, 4, 4)--retro
			elseif p.type==2 then--future city pink
				love.graphics.setColor(p.timer/5,0,p.timer/5,1)
				love.graphics.rectangle("fill", math.floor(p.x/8)*8, math.floor(p.y/8)*8, 4, 4)--retro
			elseif p.type==3 then--future city cyan
				love.graphics.setColor(0,p.timer/5,p.timer/5,1)
				love.graphics.rectangle("fill", math.floor(p.x/8)*8, math.floor(p.y/8)*8, 4, 4)--retro
			elseif p.type==4 then--toxic left smoke
				love.graphics.setColor(1,1,1,p.timer/5)
				love.graphics.draw(extras.particles[1], math.floor(p.x/4)*4, math.floor(p.y/4)*4)--retro
			elseif p.type==5 then--toxic left smoke
				love.graphics.setColor(1,1,1,p.timer/5)
				love.graphics.draw(extras.particles[1], math.floor(p.x/4)*4, math.floor(p.y/4)*4)--retro
			elseif p.type==6 then--toxic ambiance
				--love.graphics.setColor(1,1,1,1)
				--love.graphics.rectangle("fill", math.floor(p.x/4)*4, math.floor(p.y/4)*4, 4, 4)
				love.graphics.setColor(1,1,1,math.sin(p.timer/2))
				love.graphics.draw(extras.particles[2], (math.floor(p.x/4)*4-8), (math.floor(p.y/4)*4)-8)--retro
			elseif p.type==7 then--volcano left smoke
				love.graphics.setColor(.25,.25,.25,p.timer/5)
				love.graphics.rectangle("fill", math.floor(p.x/4)*4, math.floor(p.y/4)*4, 4, 4)--retro
			elseif p.type==8 then--volcano right smoke
				love.graphics.setColor(.25,.25,.25,p.timer/5)
				love.graphics.rectangle("fill", math.floor(p.x/4)*4, math.floor(p.y/4)*4, 4, 4)--retro
			elseif p.type==9 then--volcano fire smoke
				love.graphics.setColor(1,0,0,p.timer/7)
				love.graphics.rectangle("fill", math.floor(p.x/4)*4, math.floor(p.y/4)*4, 4, 4)--retro
			elseif p.type==10 then--volcano lava stuff
				love.graphics.setColor(1,1,1,p.timer/5)
				if p.rnd==1 then
					love.graphics.draw(extras.particles[1], (math.floor(p.x/4)*4-8), (math.floor(p.y/4)*4)-8)--retro
				else
					if p.timer > 4 then
						love.graphics.draw(extras.particles[4], (math.floor(p.x/4)*4-8), (math.floor(p.y/4)*4)-8)--retro
					else
						love.graphics.draw(extras.particles[3], (math.floor(p.x/4)*4-8), (math.floor(p.y/4)*4)-8)--retro
					end
				end
			elseif p.type==11 then--volcano ambiance
				love.graphics.setColor(1,1,1,math.sin(p.timer/2))
				if p.rnd==1 or p.rnd==2 or p.rnd==3 then
					love.graphics.draw(extras.particles[3], (math.floor(p.x/4)*4-8), (math.floor(p.y/4)*4)-8)--retro
				elseif p.rnd==2 then
					love.graphics.draw(extras.particles[4], (math.floor(p.x/4)*4-8), (math.floor(p.y/4)*4)-8)--retro
				elseif p.rnd==3 then
					love.graphics.draw(extras.particles[5], (math.floor(p.x/4)*4-8), (math.floor(p.y/4)*4)-8)--retro
				end
			elseif p.type==12 then--water world rain
				love.graphics.setColor(0,0,1,.75)
				love.graphics.rectangle("fill", math.floor(p.x/4)*4, math.floor(p.y/4)*4, 4, 8)--retro
			elseif p.type==13 then--ruins world left
				if p.rnd==1 then
					love.graphics.setColor(0,1,0,1)
				else
					love.graphics.setColor(.25,.25,.25,1)
				end
				love.graphics.rectangle("fill", math.floor(p.x/4)*4, math.floor(p.y/4)*4, 4, 4)--retro
			elseif p.type==14 then--ruins world left
				love.graphics.setColor(0,1,0,1)
				if p.rnd==1 then
					love.graphics.setColor(0,1,0,1)
				else
					love.graphics.setColor(.25,.25,.25,1)
				end
				love.graphics.rectangle("fill", math.floor(p.x/4)*4, math.floor(p.y/4)*4, 4, 4)--retro
			elseif p.type==15 then--plains particle
				love.graphics.setColor(0,1,0,1)
				if p.rnd==1 then
					love.graphics.setColor(1,0,1,1)
				elseif p.rnd==2 then 
					love.graphics.setColor(0,0,1,1)
				end
				love.graphics.rectangle("fill", math.floor(p.x/4)*4, math.floor(p.y/4)*4, 4, 4)
			elseif p.type==16 then--rgb particle
				if p.extra==nil then
					love.graphics.setColor(p.rgb[1],p.rgb[2],p.rgb[3],p.rgb[4])
					love.graphics.rectangle("fill", math.floor(p.x/4)*4, math.floor(p.y/4)*4, 4, 4)
				elseif p.extra=="grow" then
					love.graphics.setColor(p.rgb[1],p.rgb[2],p.rgb[3],p.rgb[4])
					love.graphics.rectangle("fill", math.floor(p.x/4)*4, math.floor(p.y/4)*4, math.floor(p.timer*4/4)*4, math.floor(p.timer*4/4)*4)
				elseif p.extra=="star" then
					love.graphics.setColor(p.rgb[1],p.rgb[2],p.rgb[3],p.rgb[4])
					if p.timer > 1 then
						love.graphics.rectangle("fill", math.floor(p.x/4)*4, math.floor(p.y/4)*4-4,  4, 4)
						love.graphics.rectangle("fill", math.floor(p.x/4)*4-4, math.floor(p.y/4)*4,  4, 4)
						love.graphics.rectangle("fill", math.floor(p.x/4)*4+4, math.floor(p.y/4)*4,  4, 4)
						love.graphics.rectangle("fill", math.floor(p.x/4)*4, math.floor(p.y/4)*4+4,  4, 4)
						love.graphics.rectangle("fill", math.floor(p.x/4)*4, math.floor(p.y/4)*4,  4, 4)
					else
						love.graphics.rectangle("fill", math.floor(p.x/4)*4, math.floor(p.y/4)*4,  4, 4)
					end
				end
			elseif p.type==17 then
				local particle_text = love.graphics.newText(fonts.pico16,p.text)
				--particle_text:getWidth()
				love.graphics.setColor((p.rgb[1]/2),(p.rgb[2]/2),(p.rgb[3]/2),1)
				love.graphics.draw(particle_text, (math.floor((p.x-((particle_text:getWidth() - 24)/2))/4)*4), (math.floor(p.y/4)*4)+4)
			--	love.graphics.print(particle_text:getWidth())
			--	love.graphics.print(p.text,math.floor(p.x/4)*4,(math.floor(p.y/4)*4)+4)
				love.graphics.setColor(p.rgb[1],p.rgb[2],p.rgb[3],1)
				love.graphics.draw(particle_text, (math.floor((p.x-((particle_text:getWidth() - 24)/2))/4)*4), (math.floor(p.y/4)*4))
				--love.graphics.print(p.text,math.floor(p.x/4)*4,math.floor(p.y/4)*4)
				--+math.sin(p.timer*100)
			end
		end
	end

	--makes the volcano floor glow
	if levels.current > 120 and levels.current < 141 then
		love.graphics.setColor(1,1,1,math.abs(math.sin(timer.elapsed))/2)
		love.graphics.draw(extras.amb[2], math.abs(scrollx), #maps[levels.current]*32-128)
	end

	if player.pause then--handles the pause menu
		love.graphics.setColor(1,1,1)
		love.graphics.pop()
		love.graphics.draw(extras.pausemenu[1])
		if menu.y == 0 then
			love.graphics.draw(extras.pausemenu[2])
		else
			love.graphics.draw(extras.pausemenu[3])
		end
	end

end--end of the function




function makebutton(x,y,hot,text,o,r,g,b)
	if o then
		love.graphics.setColor(r/2,g/2,b/2)
		love.graphics.print(text,x+5,y+5)
		love.graphics.setColor(r,g,b)
		love.graphics.print(text,x,y)
	else
		if hot then
			love.graphics.setColor(.5,.5,.5)
			love.graphics.print(text,x+5,y+5)
			love.graphics.setColor(1,1,1)
			love.graphics.print(text,x,y)
		elseif not hot then
			love.graphics.setColor(.15,.5,.4)
			love.graphics.print(text,x+5,y+5)
			love.graphics.setColor(.3,1,.8)
			love.graphics.print(text,x,y)
		end
	end
end


function map_collision(x,y,w,h,col,tab,flag,different_map_override,moveing_platform_override)
 
	local x1=0
	local y1=0
	local x2=0
	local y2=0
	local test = 0

	if col=="left" then
	 
	 x1=x
	 y1=y+1
	 x2=x
	 y2=y+h-1

	elseif col=="left2" then

	 x1=x-1
	 y1=y+1
	 x2=x-1
	 y2=y+h-1
	 
	elseif col=="right" then
	 
	 x1=x+w-.5
	 y1=y+1
	 x2=x+w-.5
	 y2=y+h-1

	elseif col=="right2" then
	 
	 x1=x+w
	 y1=y+1
	 x2=x+w
	 y2=y+h-1

	elseif col=="up" then
	 x1=x+1
	 y1=y
	 x2=x+w-1.5
	 y2=y

	elseif col=="up2" then
	 x1=x+1
	 y1=y-1
	 x2=x+w-1.5
	 y2=y-1

	elseif col=="down" then

	 x1=x+5
	 y1=y+h-1
	 x2=x+w-5.5
	 y2=y+h-1
	
	elseif col=="down2" then

	 x1=x+3
	 y1=y+h
	 x2=x+w-3.5
	 y2=y+h

	 elseif col=="down3" then

	 x1=x+5
	 y1=y+h+1
	 x2=x+w-5.5
	 y2=y+h+1

	elseif col=="downspike" then --all the spiikes used to be 12 but i changed them so they are more forgiving

	 x1=x+1
	 y1=y+h-16
	 x2=x+w-1.5
	 y2=y+h-16

	elseif col=="rightspike" then

	 x1=x+w-16
	 y1=y+1
	 x2=x+w-16
	 y2=y+h-1

	elseif col=="leftspike" then
	 
	 x1=x+16
	 y1=y+1
	 x2=x+16
	 y2=y+h-1

	elseif col=="upspike" then
	 
	 x1=x+1
	 y1=y+16
	 x2=x+w-1.5
	 y2=y+16

	elseif col=="powerup" then

	 x1=x+w/2
	 y1=y+h/2
	 x2=x+w/2
	 y2=y+h/2

	end

	love.graphics.rectangle("fill",x1,y1,x2-x1+0.5,y2-y1+0.5)
	if not (math.floor((y1)/32)+1 <= 0) then
		if not (math.floor((y2)/32) >= #maps[levels.current]) then
			if moveing_platform_override then
				--the table that is normally used for the map is now some boxes for the box_collsion function to use
				--first entry in the table is a enemy id that is going to determin what happens
				--2 throught 5 are the enemies box
				--2 x
				--3 y
				--4 W
				--5 H
				--	for i,v in ipairs(enemies.enemies) do
				--		if v.type==tab[1] then
				--			if (y1 > tab[3] and y1 < tab[3]+tab[5]) and (x1 > tab[2] and x1 < tab[2]+tab[4]) or (y2 > tab[3] and y2 < tab[3]+tab[5]) and (x2 > tab[2] and x2 < tab[2]+tab[4]) then
				--				test=test+1 break
				--			end 
				--		end
				--	end
				-- in case running the collision through the enemy doesn't work
				for i,v in ipairs(enemies.enemies) do
					local ex = v.x
					local ey = v.y
					local ex2 = v.x + v.w
					local ey2 = v.y + v.h
					love.graphics.rectangle("fill",ex,ey,ex2-ex,ey2-ey)
					--return true
					for z=1, #tab do
						if v.type==tab[z] then
							if ((y1 > ey and y1 < ey2) and (x1 > ex and x1 < ex2)) or ((y2 > ey and y2 < ey2) and (x2 > ex and x2 < ex2)) then
								return true,v.dx,v.dy
							end 
						end
					end
				end
					

			--	map_collision(1,1,8,8,"upspike",{7},"doesn't matter",false,true) an example of what a map collision function would look like for a moving platform
			else
				if different_map_override==true then
					if not (math.floor((y2)/32) >= #hmaps[levels.current]) then
						if ((tab[math.floor(y1/32+1)][math.floor(x1/32+1)]) ~= nil and (tab[math.floor(y1/32+1)][math.floor(x2/32+1)]) ~= nil and (tab[math.floor(y2/32+1)][math.floor(x1/32+1)]) ~= nil and (tab[math.floor(y2/32+1)][math.floor(x2/32+1)]) ~= nil) then
							if (tab[math.floor(y1/32+1)][math.floor(x1/32+1)]) > 0 or (tab[math.floor(y1/32+1)][math.floor(x2/32+1)]) > 0 or (tab[math.floor(y2/32+1)][math.floor(x1/32+1)]) > 0 or (tab[math.floor(y2/32+1)][math.floor(x2/32+1)]) > 0 then
								test=test+1
							end
						end
					end
				else
					for i=1,#flag do
						--if (tab[math.floor(y1/32+1)][math.floor(x1/32+1)]) == flag[i] or (tab[math.floor(y1/32+1)][math.floor(x2/32+1)]) == flag[i] or (tab[math.floor(y2/32+1)][math.floor(x1/32+1)]) == flag[i] or (tab[math.floor(y2/32+1)][math.floor(x2/32+1)]) == flag[i] then
						--	test=test+1
						--end
						if (tab[math.floor(y1/32+1)][math.floor(x1/32+1)]) == flag[i] or (tab[math.floor(y2/32+1)][math.floor(x2/32+1)]) == flag[i] then
							test=test+1
						end
					end
				end
			end
		end
	end

	if test > 0 then
		return true
	else
		return false
	end
end


function box_collision(x,y,w,h,x2,y2,w2,h2)
	local xw = x+w
	local yh = y+h
	local xw2 = x2+w2
	local yh2 = y2+h2


	love.graphics.rectangle("line",x,y,(xw)-x,(yh)-y)
	love.graphics.rectangle("line",x2,y2,(xw2)-x2,(yh2)-y2)

	--bottem right corner
	if xw >= x2 and xw <= xw2 and yh >= y2 and yh <= yh2 then
	return true
	end

	--bottem right corner
	if x >= x2 and x <= xw2 and yh >= y2 and yh <= yh2 then
	return true
	end

	--top right corner
	if xw >= x2 and xw <= xw2 and y >= y2 and y <= yh2 then
	return true
	end

	--top left corner
	if x >= x2 and x <= xw2 and y >= y2 and y <= yh2 then
	return true
	end
end

function playerdied()
	explode_picture(player.x,player.y,player.picsdata[player.ani+(player.power*4)],{-15-((player.dx+player.boost)*3),15-(player.dx*3),-15-((player.dy+player.boosty)*3),15-(player.dy*3),5,10})
	player.x = startx
	player.y = starty
	player.dx=0
	player.dy=0
	player.boost=0
	player.timer=0
	timer.interaction = 0
	bombactive=false
	bombptimer=0
	bombtimer=0
	timer.animation=0
	love.audio.stop(sounds.player_die)
	sounds.player_die:play()
	for i,e in ipairs(enemies.enemies) do
		e.timer=0
		e.action=0
		e.x=e.sx
		e.y=e.sy
		e.dx=0
		e.dy=0
		if e.type==1 then
			e.health=1
		elseif e.type==2 then
			e.health=3
		elseif e.type==3 then
			e.health=5
			e.dx=2
		elseif e.type==4 then
			e.health=3
		elseif e.type==5 then
			e.health=5
		elseif e.type==6 then
			e.health=5
		elseif e.type==7 then
			if e.plat_type==1 then
				enemies.enemies[i]=nil
			elseif e.plat_type==2 then
				e.health=9999
				e.dx=1.4
			end
		elseif e.type==8 then
			e.health=3
		elseif e.type==9 then
			enemies.enemies[i]=nil
		elseif e.type==10 then
			enemies.enemies[i]=nil
		elseif e.type == "b1" then--boss 1
			e.health=30
			e.attack=1
			e.numattack=0
			e.last_phase=0
		elseif e.type == "b2" then--boss 1
			e.health=12
			e.attack=1
			e.numattack=0
			e.last_phase=0
		end
	end
	
	for a,_ in pairs(player.bullets) do
		player.bullets[a]=nil
	end

	for b,_ in pairs(enemies.bullets) do
		enemies.bullets[b]=nil
	end

	--bosses
	if levels.current == 40 then
		for a=1, #maps[levels.current] do 
			for b=1, #maps[levels.current][a] do
				if maps[levels.current][a][b] == 689 or maps[levels.current][a][b] == 690 then
					maps[levels.current][a][b] = 0
				end
			end
		end
	end

	--scrolling logic
	if player.x > 960/levels.scale[levels.current] and not (player.x > (#maps[levels.current][1]*32)-960/levels.scale[levels.current]) then
		scrollx = -(player.x-960/levels.scale[levels.current])
	elseif player.x > 960/levels.scale[levels.current] and player.x > (#maps[levels.current][1]*32)-960/levels.scale[levels.current] then
		scrollx = -((#maps[levels.current][1]*32)-1920/levels.scale[levels.current])
	else
		scrollx = 0
	end
	--y axis
	if #maps[levels.current] ~= 34/levels.scale[levels.current] then
		if player.y > 540/levels.scale[levels.current] and not (player.y > (#maps[levels.current]*32)-540/levels.scale[levels.current]) then
			scrolly = -(player.y-540/levels.scale[levels.current])
		elseif player.y > 540/levels.scale[levels.current] and player.y > (#maps[levels.current]*32)-540/levels.scale[levels.current] then
			scrolly = -((#maps[levels.current]*32)-1080/levels.scale[levels.current])
		else
			scrolly=0
		end
	else
		scrolly=0
	end
end

function level_init()
	for i=1, #enemies.enemies do
		table.remove(enemies.enemies,1)
	end

	for i=1, #particles do
		table.remove(particles,1)
	end

	if levels.current < 21 then--plains
		for i=1,(#maps[levels.current][1]+#maps[levels.current])/4*levels.snow_intensity[levels.current] do
			makeparticle(math.random(1,(#maps[levels.current][1]*32)),math.random(-100,(#maps[levels.current]*32)),15)
		end
	elseif levels.current > 20 and levels.current < 41 then--water
		for i=1,(#maps[levels.current][1]+#maps[levels.current])/4*levels.snow_intensity[levels.current] do
			makeparticle(math.random(1,(#maps[levels.current][1]*32)),math.random(-200,(#maps[levels.current]*32)),12)
		end
	elseif levels.current > 40 and levels.current < 61 then--ruins
		if levels.snow_intensity[levels.current]==1 then -- left
			for i=1,(#maps[levels.current][1]+#maps[levels.current])do
				makeparticle(math.random(1,(#maps[levels.current][1]*32)),math.random(-200,(#maps[levels.current]*32)),13)
			end
		else--right
			for i=1,(#maps[levels.current][1]+#maps[levels.current])do
				makeparticle(math.random(1,(#maps[levels.current][1]*32)),math.random(-200,(#maps[levels.current]*32)),14)
			end
		end
	elseif levels.current > 60 and levels.current < 81 then--snow
		for i=1,((60/levels.scale[levels.current])*(#maps[levels.current]/17))*4*levels.snow_intensity[levels.current] do
			makeparticle(math.random(1,(#maps[levels.current][1]*32)),math.random(-100,(#maps[levels.current]*32)),1)
		end
	end

	--spawns enemies and makes start
	spawn_enemies()
	player.boost=0
	player.timer=0
	player.gravchange=1
	gravity=.25
	player.slide=10
	player.speed=3
	player.power=0
	player.power_extra=0
	player.x=startx
	player.y=starty
	player.dx=0
  	player.dy=0
	levels.state=0
	levels.stateb=0
	levels.statec=0
	levels.stated=0
	levels.statee=0
	levels.statef=0
	timer.interaction = 0
	timer.animation = 0
	player.wacky=0
	bombactive=false
	bombptimer=0
	bombtimer=0
	player.super_chidden=false
	for a,_ in pairs(player.bullets) do
		player.bullets[a]=nil
	end

	for b,_ in pairs(enemies.bullets) do
		enemies.bullets[b]=nil
	end
	--scrolling logic
	if player.x > 960/levels.scale[levels.current] and not (player.x > (#maps[levels.current][1]*32)-960/levels.scale[levels.current]) then
		scrollx = -(player.x-960/levels.scale[levels.current])
	elseif player.x > 960/levels.scale[levels.current] and player.x > (#maps[levels.current][1]*32)-960/levels.scale[levels.current] then
		scrollx = -((#maps[levels.current][1]*32)-1920/levels.scale[levels.current])
	else
		scrollx = 0
	end
	--y axis
	if #maps[levels.current] ~= 34/levels.scale[levels.current] then
		if player.y > 540/levels.scale[levels.current] and not (player.y > (#maps[levels.current]*32)-540/levels.scale[levels.current]) then
			scrolly = -(player.y-540/levels.scale[levels.current])
		elseif player.y > 540/levels.scale[levels.current] and player.y > (#maps[levels.current]*32)-540/levels.scale[levels.current] then
			scrolly = -((#maps[levels.current]*32)-1080/levels.scale[levels.current])
		else
			scrolly=0
		end
	else
		scrolly=0
	end
end

function check_if_block(num,mode)
	if mode==1 then--foiliage
		for i=1, #flags.foliage do
			if num==flags.foliage[i] then
				return true
			end
		end
	elseif mode==2 then--things that should stop ice effect
		for i=1, #flags.ground do
			if num==flags.ground[i] then
				return true
			end
		end
	elseif mode==3 then--all things that can be exploded
		for i=1, #flags.explodable do
			if num==flags.explodable[i] then
				return true
			end
		end
	elseif mode==4 then--all things that need to be updated	
		for i=1, #flags.updatable do
			if num==flags.updatable[i] then
				return true
			end
		end
	end
end

function get_input(input,plf)
	local test=0
	if love.joystick.getJoystickCount() >= 1 then--controller input | checks if the controller variable is advaliable
		if input == "up" then
			if player.controller:isGamepadDown("dpup") then
				if plf==true then
					if bpl.up==false then
						test=test+1
					end
				else
					test=test+1
				end
			end
		elseif input == "down" then
			if player.controller:isGamepadDown("dpdown") then
				if plf==true then
					if bpl.down==false then
						test=test+1
					end
				else
					test=test+1
				end
			end
		elseif input == "left" then
			if player.controller:isGamepadDown("dpleft") then
				if plf==true then
					if bpl.left==false then
						test=test+1
					end
				else
					test=test+1
				end
			end
		elseif input == "right" then
			if player.controller:isGamepadDown("dpright") then
				if plf==true then
					if bpl.right==false then
						test=test+1
					end
				else
					test=test+1
				end
			end
		elseif input == "a" then
			if player.controller:isGamepadDown("a") then
				if plf==true then
					if bpl.a==false then
						test=test+1
					end
				else
					test=test+1
				end
			end
		elseif input == "x" then
			if player.controller:isGamepadDown("x") then
				if plf==true then
					if bpl.x==false then
						test=test+1
					end
				else
					test=test+1
				end
			end
		elseif input == "leftshoulder" then
			if player.controller:isGamepadDown("leftshoulder") then
				if plf==true then
					if bpl.leftshoulder==false then
						test=test+1
					end
				else
					test=test+1
				end
			end
		elseif input == "rightshoulder" then
			if player.controller:isGamepadDown("rightshoulder") then
				if plf==true then
					if bpl.rightshoulder==false then
						test=test+1
					end
				else
					test=test+1
				end
			end
		elseif input == "start" then
			if player.controller:isGamepadDown("start") then
				if plf==true then
					if bpl.rightshoulder==false then
						test=test+1
					end
				else
					test=test+1
				end
			end
		end
		if input == "up" then
			if player.controller:getAxis(2) < -0.3 then
				if plf==true then
					if bpl.up==false then
						test=test+1
					end
				else
					test=test+1
				end
			end
		elseif input == "down" then
			if player.controller:getAxis(2) > 0.3 then
				if plf==true then
					if bpl.down==false then
						test=test+1
					end
				else
					test=test+1
				end
			end
		elseif input == "left" then
			if player.controller:getAxis(1) < -0.3 then
				if plf==true then
					if bpl.left==false then
						test=test+1
					end
				else
					test=test+1
				end
			end
		elseif input == "right" then
			if player.controller:getAxis(1) > 0.3 then
				if plf==true then
					if bpl.right==false then
						test=test+1
					end
				else
					test=test+1
				end
			end
		end
	end--end of testing conroller
	if input == "up" then
		if love.keyboard.isDown("w") or love.keyboard.isDown("up") then
			if plf==true then
				if bpl.up==false then
					test=test+1
				end
			else
				test=test+1
			end
		end
	elseif input == "down" then
		if love.keyboard.isDown("s") or love.keyboard.isDown("down") then
			if plf==true then
				if bpl.down==false then
					test=test+1
				end
			else
				test=test+1
			end
		end
	elseif input == "left" then
		if love.keyboard.isDown("a") or love.keyboard.isDown("left") then
			if plf==true then
				if bpl.left==false then
					test=test+1
				end
			else
				test=test+1
			end
		end
	elseif input == "right" then
		if love.keyboard.isDown("d") or love.keyboard.isDown("right") then
			if plf==true then
				if bpl.right==false then
					test=test+1
				end
			else
				test=test+1
			end
		end
	elseif input == "a" then
		if love.keyboard.isDown("space") then
			if plf==true then
				if bpl.a==false then
					test=test+1
				end
			else
				test=test+1
			end
		end
	elseif input == "x" then
		if love.keyboard.isDown("return") or love.mouse.isDown(1) then
			if plf==true then
				if bpl.x==false then
					test=test+1
				end
			else
				test=test+1
			end
		end
	elseif input == "leftshoulder" then
		if love.keyboard.isDown("q") or love.mouse.isDown(1) then
			if plf==true then
				if bpl.leftshoulder==false then
					test=test+1
				end
			else
				test=test+1
			end
		end
	elseif input == "rightshoulder" then
		if love.keyboard.isDown("e") or love.mouse.isDown(2) then
			if plf==true then
				if bpl.rightshoulder==false then
					test=test+1
				end
			else
				test=test+1
			end
		end
	elseif input == "start" then
		if love.keyboard.isDown("escape") then
			if plf==true then
				if bpl.rightshoulder==false then
					test=test+1
				end
			else
				test=test+1
			end
		end
	end
	if test > 0 then
		return true
	else
		return false
	end
end

function check_enemies(type)
 local test=0
	for _,e in pairs(enemies.enemies) do
		if e.type==type then
			test=test+1
		end
	end
	return test
end

function check_num_blocks(type)
local test=0
	for a=1, #maps[levels.current] do 
		for b=1, #maps[levels.current][a] do
			if maps[levels.current][a][b] == type then
				test=test+1
			end
		end
	end
	return test
end

function explode_picture(x,y,image,tab)
	for a=1,image:getWidth()/4 do
		for b=1,image:getHeight()/4 do
			local cr,cg,cb,ca = image:getPixel(a*4-4,b*4-4)
			makeparticle(x+a*4-4,y+b*4-4,16,{cr,cg,cb,ca},{love.math.random(tab[1],tab[2])/10,love.math.random(tab[3],tab[4])/10,love.math.random(tab[5],tab[6])/10,tab[7]})
		end
	end
end

function spawn_enemies()
	for a=1, #maps[levels.current] do 
		for b=1, #maps[levels.current][a] do
			if maps[levels.current][a][b] > 0 then
				if maps[levels.current][a][b] == 9999 then
					startx=b*32-32
					starty=a*32-24
				elseif maps[levels.current][a][b] == 9998 then
					enemies.create(b*32-32,a*32-28,1)
					maps[levels.current][a][b]=0
				elseif maps[levels.current][a][b] == 9997 then
					enemies.create(b*32-32,a*32-32,2)
					maps[levels.current][a][b]=0
				elseif maps[levels.current][a][b] == 9996 then
					enemies.create(b*32-32,a*32-32,3)
					maps[levels.current][a][b]=0
				elseif maps[levels.current][a][b] == 9995 then
					enemies.create(b*32-32,a*32-48,4)
					maps[levels.current][a][b]=0
				elseif maps[levels.current][a][b] == 9994 then
					enemies.create(b*32-32,a*32-48,5)
					maps[levels.current][a][b]=0
				elseif maps[levels.current][a][b] == 9993 then
					enemies.create(b*32-32,a*32-36,6)
					maps[levels.current][a][b]=0
				elseif maps[levels.current][a][b] == 9992 then
					enemies.create(b*32-32,a*32-32,7,1)--falling platform
					maps[levels.current][a][b]=0
				elseif maps[levels.current][a][b] == 9991 then
					enemies.create(b*32-28,a*32-32,8)
					maps[levels.current][a][b]=0
				elseif maps[levels.current][a][b] == 9990 then
					enemies.create(b*32-32,a*32-48,"b1")
					maps[levels.current][a][b]=0
				elseif maps[levels.current][a][b] == 9989 then
					enemies.create(b*32-32,a*32-36,"b2")
					maps[levels.current][a][b]=0
				elseif maps[levels.current][a][b] == 9988 then
					enemies.create(b*32-32,a*32-32,7,2)--grass platofmr
					maps[levels.current][a][b]=0
				end
			end
		end
	end
end