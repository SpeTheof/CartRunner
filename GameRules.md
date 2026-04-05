# Cart Runner - Game Rules & Design Document v1.8

## Overview
A 2D browser game where a stick figure hero builds speed by mashing a button, rides a shopping cart, and attempts to jump as far as possible off a ramp. Features upgrade shop, profile save system, and multiple game phases.

## Game Phases

### Phase 1: RUNNING (0m - Cart Position)
**Objective:** Build speed by mashing the Right Arrow key to reach the cart.

**Mechanics:**
- Hero starts at position 0 (0 meters)
- Player must mash Right Arrow key rapidly to build momentum
- **Holding the key does NOTHING** - only rapid presses work
- Speed builds based on mashing frequency (combo system)
- Footstep sounds play on each foot landing
- Animation speed matches running speed
- Distance markers appear every 25m

**Success Criteria:**
- Reach the cart at position (150m base, scales with trackExtender upgrade)
- Higher speed = better jump later

---

### Phase 2: CART_RIDE (Cart Position - Ramp Start)
**Objective:** Ride the cart smoothly to reach the ramp.

**Mechanics:**
- Hero auto-enters cart when reaching cart position mark
- Cart travels at constant speed (maintained from running phase)
- Camera focuses on cart
- Auto-pilot to ramp
- NOS (Nitrous) boost available - hold SPACE for speed boost
- Boost pads provide automatic velocity spikes during ride
- Track distances scale with trackExtender upgrade

**Visual:**
- Hero drawn inside/behind cart holding handles
- Cart wheels rotate
- Smooth ride animation
- NOS bar shows remaining nitrous

**Success Criteria:**
- Reach ramp at position (500m base, scales with trackExtender upgrade)
- Speed is preserved from Phase 1

---

### Phase 3: JUMPING (On Ramp)
**Objective:** Get launched off the ramp.

**Mechanics:**
- Cart travels up the ramp
- Physics: momentum carries cart off the end
- Player has no control during this brief phase

**Success Criteria:**
- Launch off ramp successfully

---

### Phase 4: FLYING (After Ramp)
**Objective:** Steer the cart in mid-air to land safely and maximize distance.

**Mechanics:**
- Cart launches off ramp
- Physics: Gravity, velocity, rotation
- Player controls:
  - Left Arrow: Rotate cart counter-clockwise, reduce forward velocity
  - Right Arrow: Rotate cart clockwise, increase forward velocity
- Track max height reached
- Distance counter shows flight distance from ramp end

**Visual Feedback:**
- Height warning in center of screen (color-coded):
  - Blue: High altitude (>15m)
  - Yellow: Getting close (5-15m)
  - Red: Near ground (<5m)
- Distance milestone popups at: 500m, 450m, 400m, 350m, 300m, 250m, 200m, 150m, 100m

---

### Phase 5: LANDING
**Objective:** Land the cart safely to record your jump distance.

**Mechanics:**
- Landing detected when cart touches ground
- **Forgiving landing:** Cart doesn't need to be perfectly horizontal
- Success: Wheels touch ground + reasonable rotation
- Failure (Crash): Upside down or too steep angle

**Scoring:**
- Distance measured from ramp end to landing point
- Height bonus tracked
- Spin multiplier: 1 + floor(totalSpins / 5)
- Gold earned = (distance / 20) * spinMultiplier * distanceAmplifier
- Ratings based on distance:
  - 0-75m: NICE TRY!
  - 75-150m: GOOD!
  - 150-250m: GREAT!
  - 250-400m: AMAZING! ⭐
  - 400m+: LEGENDARY! 🏆

---

## Distance Measurement System

### Scale
- **1 meter = 10 pixels**
- This makes distances feel human-scale

### Key Positions (Base, scaled by trackExtender)
- Hero Start: 0m (0px)
- Cart Position: 150m (1500px) - base, scales with upgrades
- Ramp Start: 500m (5000px) - base, scales with upgrades
- Ramp Length: 25m (250px) - upgradable via ride upgrade
- Ramp End: 525m (5250px) - base, scales with upgrades

### Track Extender System
The `trackExtender` upgrade scales all distances:
- Each level adds 5% to run and cart phases
- Boost pads increase by 1 every 4 levels (starting at 8)

---

## Controls

### Phase 1 (Running)
- **Right Arrow (MASH):** Build speed and run
- Rapid presses required, holding does nothing

### Phase 2 (Cart Ride)
- **Space (HOLD):** NOS boost for extra speed

### Phase 3 (Flying)
- **Left Arrow (HOLD):** Rotate cart back, slow down
- **Right Arrow (HOLD):** Rotate cart forward, speed up

### Menu Controls
- **U:** Open upgrade shop
- **M:** Toggle sound/mute
- **P:** Pause game
- **R:** Reset game

---

## Upgrade System

### Shoes (Max Speed)
| Level | Name | Max Speed | Cost |
|-------|------|-----------|------|
| 1 | Basic Sneakers | 80 km/h | Free |
| 2 | Running Shoes | 90 km/h | 100 G |
| 3 | Sport Pro | 100 km/h | 500 G |
| 4 | Elite Racers | 110 km/h | 2,000 G |
| 5 | Legendary Spikes | 120 km/h | 8,000 G |
| 6 | Neon Glyphs | 130 km/h | 25,000 G |
| 7 | Carbon Stealth | 140 km/h | 75,000 G |
| 8 | Magma Treads | 150 km/h | 200,000 G |
| 9 | Gravity Defiers | 160 km/h | 500,000 G |
| 10 | Warp Runners | 170 km/h | 1,200,000 G |
| 11 | Cosmic Voyagers | 180 km/h | 3,500,000 G |

### Ramp Extender (ride)
- Extends ramp length for longer flight potential
- Each level adds 8% to ramp length
- 20 tiers (1-20)

### Distance Amplifier (distance)
- Increases distance multiplier for better scores
- Each level adds 8% to gold rewards
- 20 tiers (1-20)

### NOS Power (nosPower)
- Increases NOS boost thrust
- Each level adds 5% to boost force
- 20 tiers (1-20)

### NOS Tank (nosTank)
- Increases NOS fuel capacity
- Each level adds 16m to fuel range (starts at 200m)
- 20 tiers (1-20)

### Turbo Pads (boostPads)
- Increases velocity gain from boost pads
- Each level adds 0.5% to velocity spike
- 20 tiers (1-20)

### Boost Duration (boostDuration)
- Extends cyber-boost burn time
- Each level adds 45ms to boost duration (starts at 100ms)
- 20 tiers (1-20)

### Track Extender (trackExtender)
- Extends run and cart phases
- Each level adds 5% to phase distances
- Each 4 levels adds 1 boost pad (starting at 8)
- 20 tiers (1-20)

---

## Profile System

- 3 save slots available
- Each profile stores:
  - Current euros (gold)
  - All upgrade levels
  - Best distance
  - Best spins
  - Best altitude
  - Sound settings
  - Custom NOS color (when unlocked)
  - Completed objectives
- Auto-saves after each run
- Load/Save to file supported
- Profile sync to localStorage

---

## UI Panels

### Left Panel (Session & Career)
- Phase indicator (RUN, RIDE, FLY, LAND, CRASH)
- Distance counter
- Altitude counter
- Velocity (km/h)
- Spin telemetry (CCW, CW, Total)
- Career stats (Best Distance, Max Altitude, Best Spins, Attempts)
- Euros balance
- Equipment loadout overview
- NOS fuel gauge

### Right Panel (Objectives)
- Current objectives list with progress tracking

### Center Right Panel (Diagnostics)
- Hardware tier (based on shoes)
- Traction percentage
- Acceleration Gs
- Drag coefficient
- V-Max speed
- NOS calibration level
- NOS pressure (BAR)
- NOS tank range
- NOS thrust (kW)
- Pad boost percentage
- Pad duration

### Bottom Left (System Log)
- Console messages
- Copy/Clear buttons
- Cheat menu access

### Bottom Right (Controls Help)
- Keyboard shortcuts
- Touch controls reference

### Top Center
- Upgrade Shop button
- Profiles button

### Modals
- Upgrade Shop ("The Chop Shop")
- Profile Manager
- Game Over screen
- Cheat/Debug menu

---

## Audio

### Footstep Sounds
- 14 different footstep WAV files
- Play randomly when feet hit ground during Phase 1
- Only play when actually moving (momentum > 1)
- Alternating left/right foot detection
- 150ms minimum between sounds

### In-Game Sounds
- Cart rolling sound
- NOS boost sound
- Swoosh sound on launch
- Sweep sound during flight
- Crash/landing sounds

---

## Visual Style

### Hero (Stick Figure)
- Procedural animation with inverse kinematics
- Transparent pink head with outline
- Black stick limbs
- Variable line widths (torso thickest, hands/feet thinnest)
- Facing left (flipped horizontally)

### Cart
- Silver wireframe shopping cart
- Red handle
- Black wheels with rotating spokes
- Hero holds handles while riding

### Environment
- Blue sky gradient with sun
- White clouds (parallax scrolling)
- Green grass with individual blades
- Gray road with yellow dashed line
- Distance markers every 25m during running
- Warning sign before cart
- "RAMP" sign at ramp
- Cyber boost pads on track

### Camera System
- Follows hero during all phases
- Smooth interpolation (0.15 speed factor)
- Look-ahead positioning (hero at ~20% from left)
- During flight:
  - Tracks hero position
  - Ground proximity adjustment starts at 350m height
  - Full ground view by 100m height
  - Clamped to prevent going below ground or too high

---

## Technical Constants

```javascript
// Distance scale
const PIXELS_PER_METER = 10;

// Base positions (scaled by trackExtender)
const BASE_CART_POSITION_M = 150;   // Cart at 150m
const BASE_RAMP_START_M = 500;      // Ramp at 500m
const RAMP_LENGTH_M = 25;           // Ramp length 25m

// Physics
const GRAVITY = 0.35;
const BASE_MAX_SPEED = 40;          // Displays as 80 km/h

// Mashing mechanics
const MASH_WINDOW = 200;            // ms
const MIN_MASH_COMBO = 2;            // presses needed for acceleration
```

---

## Version History

### v1.0 - Initial Release
- Basic running and jumping
- Cart mechanics
- Simple landing

### v1.1 - Footstep Audio
- Added 14 footstep sounds
- Random playback system
- Ground detection

### v1.2 - The Big Update
- Proper 4-phase system
- Distance scale fixed (1m = 10px)
- Positions: 0m, 100m, 200m (later changed to 150m, 500m)
- Only mashing builds speed (no holding)
- Flight distance only counts after ramp
- NOS boost system - Hold SPACE during cart ride
- Upgrade shop - Shoes, Ramp, Distance, NOS
- Profile save system - 3 slots with persistence
- Spin mechanic - Counter-clockwise/clockwise rotation
- Gold rewards - Distance + spin multiplier
- Height warning - Color-coded center display
- Distance milestones - Popups at 500, 450, 400...
- Objectives system - Track progress toward goals

### v1.3 - The Extended Track Update
- **Track Extender System**: New upgrade that scales run and cart phases
- Boost Pads: Velocity spike pads on the track (8 base, scales with upgrades)
- Boost Duration: Extends cyber-boost time
- Turbo Pads: Additional boost pad upgrade
- Extended positions: Cart at 150m, Ramp at 500m (scaled by upgrades)
- Custom NOS colors unlocked at high levels
- Improved camera system during flight
- Console system with copy/clear/cheat features
- Technical diagnostics panel
- Profile file import/export
- Multiple profile sync options

### v1.5 - The Balance & Polish Update (Current)
- **Fixed Objectives Bug**: Session stats now reset after each jump, objectives track per-attempt
- **Doubed Gold Rewards**: Changed from distance/20 to distance/10 formula
- **Added Upgrade Tables**: Track Extender and Boost Count now show full level progression
- **Separate Boost Count Upgrade**: No longer tied to track extender, manually upgradable
- **Redesigned Boost Pads**: White color with animated green glow, more visible
- **Boost Position Change**: Pads now start at 200m instead of 100m
- **Blood Splatter Effect**: Visual effect on crash landing
- **Reduced Gold Costs**: All upgrade costs reduced by ~90% (max 4-18M vs billions)
- **NOS Sound Fix**: Fixed multiple triggering issues
- **Road Parallax Fix**: Yellow line now moves correctly with camera
- **Code Cleanup**: Removed legacy oscillator remnants
- **Improved Animations**: Boost pads have pulsing glow and sliding chevrons

---

## Key Features Summary

| Feature | Description |
|---------|-------------|
| Running Phase | Mash Right Arrow to build speed |
| Cart Ride Phase | Auto-pilot with NOS boost (SPACE) |
| Flying Phase | Spin with Left/Right arrows |
| Landing Phase | Forgiving landing detection |
| Upgrade Shop | 8 upgrade categories with 20 tiers each |
| Profile System | 3 slots with localStorage and file save |
| Objectives | Track progress toward milestones |
| Spin System | CCW/CW rotation with gold multiplier |
| Camera | Smooth follow with ground proximity adjustment |
| Audio | Footsteps, NOS, ambient sounds |
| Diagnostics | Technical stats panel |
| Console | System log with cheat menu |
| Debug | Developer console for testing |

---

## Last Updated
2026-02-16 (v1.5)
