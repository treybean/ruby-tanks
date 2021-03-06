[x] Render some kind of background on a grid of tiles, maybe 16x16 to start.
[x] find a "wall" sprite, maybe bricks or similar
[x] find a tank sprite that can be made into several colors (8 would be ideal)
[x] render an area around the play board that is ringed by walls
[x] render a tank on a random square on startup
[x] Make the tank a random bot that just moves one direction (or does nothing)
[x] prevent moving through fences
[x] rotate the image with respect to whatever direction it was facing last
[x] find a sprite to represent a laser beam
[x] add shoot as a possible action
[x] when tank chooses shoot, add a laser beam to the game state
[x] laser beam needs key and direction in a seperate hash
[x] make laser beam move 1 cell per tick
[x] collision detection
[x] Give each tank a name at start time
[x] Start each tank with 100.0 energy
[x] Display energy at the bottom of the screen by label for each
[x] When only one tank is untagged, mark game ended, show message "[Name] Wins!" (http://www.rubydoc.info/github/gosu/gosu/Gosu/Font)
[x] moving should consume 0.1 energy
[x] shooting should consume 1 energy
[x] getting hit by a laser should drain 25 energy
[x] when energy is <= 0, tank is "tagged"
[x] fix bug where you can tag yourself by shooting and then walking forward into your shot
[x] find a sprite for a battery
[x] on each frame, if there is no battery, randomly generate one and draw it
[x] if a tank moves onto the battery, the battery disappears and the tank gets some energy
[x] pass lasers state and battery state into each bot for decision making
[x] make sure that if 2 lasers run into each other they both disappear
[x] pass in a copy of game state so bots can't accidentally modify it
[x] Build a bot that just holds still (BoringBot)
[x] Build a bot that spins and shoots (BattleBot)
[x] Build a bot that conservatively just dodges (DodgeBot), using as little energy as possible
[x] Build a bot that focuses on moving towards the battery and never shoots (BatteryBot)
[x] Cap energy at 1000 so battery bot isn't quite so dominant
[x] allow many tanks (add red color and blue color)
[x] color-code scoreboard with color provided to bot
[x] Implement a REPLAY button
[x] battery life needs to decay so that holding still is penalized; maybe holding still costs one, moving costs 2
[x] build a bot you can control with the
keyboard/spacebar so you can experiment against
a given bot.
[x] build a battery camper bot that just lines up with the battery and shoots
[x] Build a bot that prioritizes targeted shooting (HunterBot)
[x] do better instance state management for action helpers
[x] maybe pause a few ticks before spawning a battery
to make battery camping a less commanding strategy
[x] build a bot that moves to the wall and tries to saturate the field with shots from top to bottom and back

[ ] make tank-in-sights return false if the tank is tagged
[ ] add reverse battery drain spots
[ ] build a better hunter bot that doesn't keep shooting at tagged tanks
[ ] build a bot that hunts if the tank is closer, but runs for the batter if the battery is closer (greedybot)
[ ] debug dodgebot
[ ] build a bot that holds still, but shoots if a tank is in front (and turns if a tank is in line)

[ ] build in an automated way to pit N bots against each other for a configurable number of epochs and
output the results of win counts for statistics gathering with a tick of 0.

[ ] work with bella to come up with strategic ideas for defeating each of these
    that can be made into helper methods on the TankBot base class.
[ ] Build a Q-Learning Bot?? (ambitious but would be cool)

## Bot Data So Far:

HunterBot tends to win in 1:1 matches, but BatteryBot seems to do well
in 4+ tank matches.  Typically HunterBot beats BatteryBot when it
stands in the way of battery bot getting to a battery; could probably make
a stronger battery bot that jukes if there's a tank in the way.
