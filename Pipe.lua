Pipe = Class{}

local PIPE_IMAGE = love.graphics.newImage('pipe.png')

PIPE_SPEED = 60

PIPE_HEIGHT = 288
PIPE_WIDTH = 70

function Pipe:init(orientation, y)
    self.x = VIRTUAL_WIDTH
    self.y = y

    self.orientation = orientation

    self.width = PIPE_IMAGE:getWidth()
    self.height = PIPE_HEIGHT
end

function Pipe:update(dt)
end

function Pipe:render()
    if self.orientation == 'top' then
        love.graphics.draw(PIPE_IMAGE, self.x, self.y + PIPE_HEIGHT, 0, 1, -1)
    else
        love.graphics.draw(PIPE_IMAGE, self.x, self.y, 0, 1, 1)
    end
end