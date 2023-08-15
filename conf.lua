function love.conf(t)
	t.window.width = 1920
	t.window.height = 1080
	t.window.title = "Squishy Revolution"
	t.window.borderless = false
	t.window.fullscreen = false
	t.window.vsync = 0


	t.modules.audio = true              -- YES
    t.modules.data = false               -- NO
    t.modules.event = true              -- YES
    t.modules.font = true               -- apperently yes
    t.modules.graphics = true           -- Of course
    t.modules.image = true              -- we also need this for some reason
    t.modules.joystick = true           -- yep
    t.modules.keyboard = true           -- yep
    t.modules.math = true               -- yep
    t.modules.mouse = true              -- yep
    t.modules.physics = false            -- no
    t.modules.sound = true              -- apperently we need this too
    t.modules.system = true             -- maybe
    t.modules.thread = false             -- no clue what this does so no
    t.modules.timer = true              -- yep
    t.modules.touch = true              -- adventualy
    t.modules.video = false              -- nope
    t.modules.window = true             -- yes
end