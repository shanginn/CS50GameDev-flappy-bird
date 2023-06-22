PipePair = Class{}

local GAP_MIN = 90
local GAP_MAX = 120

function PipePair:init(y)
	self.x = VIRTUAL_WIDTH + 32
	self.y = y

	local gap = math.random(GAP_MIN, GAP_MAX)

	self.pipes = {
		['upper'] = Pipe('top', self.y),
		['lower'] = Pipe('bottom', self.y + PIPE_HEIGHT + gap)
	}

	self.remove = false
end

function PipePair:update(dt)
    if self.x > -PIPE_WIDTH then
		self.x = self.x - PIPE_SPEED * dt
		self.pipes['lower'].x = self.x
        self.pipes['upper'].x = self.x
    else
    	self.remove = true
    end
end

function PipePair:render()
    for k, pipe in pairs(self.pipes) do
        pipe:render()
    end
end