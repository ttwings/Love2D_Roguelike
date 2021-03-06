require 'Part06/GameStates'
require 'Part06/RenderFunctions'

function kill_player( player )
    player.char = '屍'
    player.color = { 1, 0, 0, 1 }
    
    return '你死亡了…', GAME_STATES.PLAYER_DEAD
end

function kill_monster( monster )
    local death_message = monster.name.."死亡了…"
    monster.char = '屍'
    monster.color = { 1, 0, 0, 1 }  
    monster.blocks = false
    monster.fighter = nil
    monster.AI = nil
    monster.name = monster.name.."的屍體"
    monster.render_order = RENDER_ORDER.CORPSE
    return death_message
end


