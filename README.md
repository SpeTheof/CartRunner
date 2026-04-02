# 🛒 Cart Runner

> Run. Jump in a cart. Hit NOS. Fly off a ramp. **How far can you go?**

A physics-based launcher game built with vanilla JavaScript and Canvas. No frameworks, no libraries — just pure code and vibes.

**🎮 Play Live:** [cartrunner.netlify.app](https://cartrunner.netlify.app)

---

## 🚀 Quick Start

- **Right Arrow (MASH)** — Build speed to reach the cart
- **SPACE (HOLD)** — NOS nitro boost during cart ride
- **Left/Right Arrow (HOLD)** — Spin the cart mid-air
- **U** — Upgrade shop
- **M** — Toggle sound
- **P** — Pause
- **R** — Reset

Mobile? Tap the on-screen buttons. Hit the **⛶ FULL** button for fullscreen.

---

## 🎮 Game Phases

### 1. RUNNING 🏃
Mash Right Arrow to build speed. Holding does nothing — only rapid presses count. Reach the cart at 150m.

### 2. CART RIDE 🛒
Auto-pilot to the ramp at 500m. Hit **SPACE** for NOS nitro boost. Smash through cyber boost pads for velocity spikes.

### 3. JUMPING 📐
Cart travels up the ramp. Physics takes over — momentum launches you.

### 4. FLYING 🌪️
Hold Left/Right to spin the cart. Higher altitude = more distance. Watch the color-coded height warning.

### 5. LANDING 💥
Land to record your distance. Ratings:
| Distance | Rating |
|----------|--------|
| 0-75m | NICE TRY! |
| 75-150m | GOOD! |
| 150-250m | GREAT! |
| 250-400m | AMAZING! ⭐ |
| 400m+ | LEGENDARY! 🏆 |

---

## ⬆️ Upgrade Shop (8 Categories, 20 Tiers Each)

| Upgrade | What It Does |
|---------|-------------|
| 👟 Shoes | Max speed (80-180 km/h) |
| 📏 Ramp Extender | Longer ramp = more flight time |
| 💰 Distance Amp | More gold per run |
| 🔥 NOS Power | Stronger nitro boost |
| ⛽ NOS Tank | More nitro fuel |
| 🟢 Turbo Pads | Bigger boost pad velocity spikes |
| ⏱️ Boost Duration | Longer boost pad effect |
| 🛤️ Track Extender | Scales all phases + more boost pads |

---

## 💾 Profile System

- 3 save slots
- Auto-saves after each run
- File import/export for backup
- Stores: gold, upgrades, best distance, best spins, best altitude

---

## 📱 Mobile Support

- On-screen touch controls
- Fullscreen button for immersive play
- Responsive UI scaling
- Works on all screen sizes (portrait & landscape)

---

## 🛠️ Tech Stack

- **Language:** Vanilla JavaScript
- **Rendering:** HTML5 Canvas (procedural graphics)
- **Audio:** Web Audio API (custom sound system)
- **Storage:** localStorage + file import/export
- **Hosting:** Netlify

**No external assets** — all graphics and sounds are generated procedurally.

---

## 📂 Project Structure

```
Cart Runner/
├── CartRunner.html          # Main game file (everything in one)
├── GameRules.md             # Design document
├── init.txt                 # AI assistant context
├── Aura_Personality.txt     # AI personality profile
├── netlify.toml             # Netlify deployment config
├── deploy.bat               # One-click deploy script
├── first-time-setup.bat     # Initial Netlify setup
├── Sounds/                  # Audio assets (footsteps, NOS, crashes)
├── Images/                  # Image assets (if any)
├── Profiles/                # Saved profile data
├── Backups/                 # Game backups
└── ZIP Releases/            # Release archives
```

---

## 🚀 Deploying

### Via Netlify (One-Click)
Double-click `deploy.bat` in the project folder.

### Manual
```bash
netlify deploy --prod
```

---

## 📜 Version History

| Version | Name | Key Changes |
|---------|------|-------------|
| v1.0 | Initial Release | Basic running, jumping, cart mechanics |
| v1.1 | Footstep Audio | 14 footstep sounds, random playback |
| v1.2 | The Big Update | NOS, upgrades, profiles, spins, gold rewards |
| v1.3 | Extended Track | Track extender, boost pads, custom NOS colors |
| v1.5 | Balance & Polish | Fixed objectives, doubled gold, reduced costs |
| v1.6 | Mobile Blitz | Mobile optimization, fullscreen, responsive UI |

---

## 👤 Credits

**Concept & Design:** Spe (SpeTheof)  
**Development:** Aura (Vibe Coding Assistant)  
**Inspiration:** GTA San Andreas (CJ energy) 🌴

---

## ⚠️ Status

**This game is still in active development and may be buggy.** The credit/economy system needs stabilization and some mechanics may not behave as expected. Play for fun, not for fairness! 😅

---

## 📄 License

Built for fun. Do what you want with it. Just don't be a dick about it.

---

*Now go launch that cart and see how far you can get before eating shit!* 🛒💨
