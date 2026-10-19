# Max/MSP Abstractions:  
## br.repeater.1.0

By Brian Riordan  
guaguanco127 [at] gmail [dot] com  
brianriordanmusic [at] gmail [dot] com  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/)

Repository for br.repeater.1.0, with all related files, can be found here: [https://github.com/guaguanco127/br.repeater](https://github.com/guaguanco127/br.repeater)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9.

## Table of Contents

[About](#About)  
[What is an abstraction?](#Abstraction)  
[How To Install](#Install)  
[How To Use](#Use)  
[State outlet](#State)  
[Grab outlet](#Grab)  
[Example Patch](#Example)  
[Credits](#Credits)  

## <a name="About"></a>About

A stereo repeater for Max/MSP, built in gen~. The input always passes through and is always being recorded, so when you hear something worth keeping, press Repeat: the last Size ms (10 ms to 10 seconds) loop, ending at the moment you pressed. It is reactionary: you don't have to know in advance, you go back and grab what just happened. Grab again while it loops and the newest audio replaces the loop.

**No dip at the loop point:** two read heads. Just before the playing head reaches the end of the loop, the second head starts a little before the loop start and the two crossfade, so the sound runs on into the audio that originally led into the start. Backwards it is the mirror image. Nothing fades to silence at the loop point.

**Always recording:** two recorders capture the input all the time. The one being looped freezes (after one more second, for the backwards crossfade); the other keeps recording, so Grab can always take the newest audio. Right after a long hold, two quick grabs can give a loop a little shorter than Size: the loop is never longer than what was recorded without a break.

**Jump-to Position:** Position jumps the playhead to a spot in the loop (0 = start, 1 = end) with a crossfade: no re-pitch, no click. Moving it keeps jumping to the newest spot, one crossfade at a time. Repeat and Grab also start playing from Position.

**Speed:** -16 to 16. 1 = normal, 0.5 = an octave down, negative = backwards, 0 = stopped. Above 1 the loop is read without anti-aliasing, so high speeds get gritty on purpose (a fast-forward zip). Speed glides, so changing it never clicks.

**Size while it loops:** the end of the loop stays where you pressed and Size moves the start. A playhead that is still inside the new loop keeps playing; one outside it crossfades back in.

**Click-free:** every fade (the loop point, Repeat on and off, Grab, Position, Size jumps) is an S-shaped equal-power crossfade of Crossfade ms. Short loops shrink the loop-point crossfade to half the loop, and at very high speeds it shrinks to fit the recorded margin.

**Any sample rate:** everything is set in ms and converted with the real sample rate; the recorders hold 12.5 seconds at 192 kHz.

**Mix and Mix Mode:** Mix sets the blend while repeating (1 = only the loop, 0.5 = loop and input, equal power). Mix Mode sets what you hear while NOT repeating: Thru = the input, Aux = silence, for an aux send. There is no On/Off on purpose: the recorders must always run, or there would be nothing to grab. While not repeating only the recording runs, which costs very little.

**Two files:** br.repeater.1.0 is the plain object: the Float control inlets take signals as well as numbers, so an LFO can sweep Speed (or Size, or Position). br.repeater.ui.1.0 adds the panel for a [bpatcher], plus a State outlet.

### Controls

**Repeat:** 1 = loop the last Size ms (the loop ends at the moment you press it), 0 = back to the input. Fades over Crossfade. Default 0.

**Grab:** while repeating, loop the newest Size ms instead (crossfades over). Ignored while not repeating.

**Size:** 10 to 10000 ms. The loop length. The dial is curved, so most of its travel covers the shorter loops. Default 8000.

**Speed:** -16 to 16. Negative = backwards, 0 = stopped. Default 1.

**Position:** 0 to 1, jump-to. 0 = loop start, 1 = loop end. Default 0.

**Crossfade:** 5 to 250 ms, used for every fade. Short = tight and percussive, long = smooth and blurred. Default 40.

**Mix:** 0 to 1 while repeating: 1 = only the loop, 0.5 = loop and input equal. Default 1.

**Mix Mode:** what you hear while NOT repeating. Thru (0) = the input passes; Aux (1) = silence, for use on an aux send. Default Thru.

## <a name="Abstraction"></a>What is an Abstraction?

An abstraction is a subpatcher that is saved as an external file, and can be used just like a standard Max object. As long as your abstraction can be found in the Max file path, you can type its name into a new object box and it will be loaded directly into your patch.  

By saving your logic in an abstraction, you can create modules that can be used in future work with little or no additional programming. This allows you to parlay your Max knowledge into more efficient work in the future, and will help you create programming systems that are modular and easier to maintain.

## <a name="Install"></a>How To Install

1. Make sure you have Max 9 installed in your computer. And, make sure you are using a Max patch that is inside of a folder.  

2. Copy br.repeater.1.0.maxpat and br.repeater.ui.1.0.maxpat into the same folder as the Max patch you are using (the .ui file uses the plain object).

3. For the version with dials, create a bpatcher object. Then, go inside of its inspector, select "choose" next to "Patcher File" and select br.repeater.ui.1.0.maxpat. Size the bpatcher to 256 x 78 to show all of the controls.

4. For the plain object, create an object with its name (br.repeater.1.0, do not include brackets) and control it through its inlets (see below).

## <a name="Use"></a>How To Use

Every control has its own inlet, in the same order on both files. On the .ui file, sending a value to an inlet moves its on-screen control too, so the display always matches the sound. On the plain object, the Float inlets (Size, Speed, Position, Crossfade, Mix) also take signals. Values outside a control's range are limited to that range. Hover over an inlet or outlet in Max to see its range and default.

| Inlet | Control | Type | Range | Default |
|---|---|---|---|---|
| 1 | Left In | Signal |  |  |
| 2 | Right In | Signal |  |  |
| 3 | Repeat | Int | 0 / 1 | 0 |
| 4 | Grab | Bang | while repeating |  |
| 5 | Size | Float | 10 - 10000 ms | 8000 |
| 6 | Speed | Float | -16 - 16 | 1 |
| 7 | Position | Float | 0 - 1 (jump-to) | 0 |
| 8 | Crossfade | Float | 5 - 250 ms | 40 |
| 9 | Mix | Float | 0 - 1 (1 only the loop) | 1 |
| 10 | Mix Mode | Int | 0 Thru / 1 Aux | 0 |

| Outlet | Plain object | .ui file | Type |
|---|---|---|---|
| 1 | Left Out | Left Out | Signal |
| 2 | Right Out | Right Out | Signal |
| 3 | Grab | State: the settings as named messages, see [State outlet](#State) | Bang / Message |
| 4 |  | Grab, see [Grab outlet](#Grab) | Bang |

**Ideas:**
- Stutter: Size 60 - 150 ms, Crossfade 5 - 10 ms, Repeat on a beat.
- Tape stop and reverse: Speed from 1 down to 0, or to -1, while it loops.
- Freeze a phrase under live playing: Size 2000 - 4000, Mix 0.5, keep playing over it.
- Chipmunk zip: Speed 8 - 16 on a short loop (gritty on purpose).
- Rhythmic jumps: a [metro] picking a random Position (0, 0.25, 0.5, 0.75) on every beat.
- Trigger other effects: cable the Grab outlet into an envelope, e.g. [br.function](https://github.com/guaguanco127/br.function), to dip or swell on every grab.

## <a name="State"></a>State outlet

The State outlet of the .ui file (outlet 3) sends the current settings as named messages the moment they change, for example `repeat 1`, `size 500.`, `speed -1.`. Use it to keep a display, Mira or another patch in sync. Pick them out by name with [route repeat size speed position crossfade mix mode], not by position, so your patch keeps working if a later version adds controls. Repeats are filtered out. Grab is an action, not a setting, so it is not in State (it has its own outlet).

| Message | Type | Range |
|---|---|---|
| repeat | Int | 0 / 1 |
| size | Float | 10 to 10000 ms |
| speed | Float | -16 to 16 |
| position | Float | 0 to 1 |
| crossfade | Float | 5 to 250 ms |
| mix | Float | 0 to 1 |
| mode | Int | 0 Thru / 1 Aux |

Each message carries the same value its inlet takes, so a State message can go straight back into an inlet. The plain object has no State outlet: whatever drives it already knows the values.

## <a name="Grab"></a>Grab outlet

The last outlet of both files bangs on every grab: when Repeat turns on, and when Grab arrives while repeating. Cable it into anything that should react to a grab: an envelope, a filter sweep, another effect. It fires at the press (the loop always ends exactly there).

## <a name="Example"></a>Example Patch

Open _br.repeater.example.1.0.maxpat (keep it in the same folder as both abstraction files). Pick a source in the menu: drum loop, Anton (both ship with Max), a drone, or your mic. It starts Off. Both outputs start muted at -70 dB: turn on the audio, then raise one slider slowly.

- **A, the version with dials:** click a recipe (it sets Size, Speed, Position, Crossfade and Mix through A's inlets), then press Repeat: stutter, half-speed tape, backwards, chipmunk zip, ghost (loop and input), and back to the defaults.
- **B, the plain object:** Repeat switches on and off every 2.5 s on 600 ms loops, and a slow sine sweeps Speed between -1.5 and 1.5 (through 0, so it stops and turns around).
- **p "State outlet":** move A's controls and watch each value come out by name through [route].
- **A grab / B grab:** the buttons flash on every grab.

## <a name="Credits"></a>Credits

Based on my older Repeaterer patch (Gloam), rebuilt from scratch in gen~ to remove the dip it had at every loop point. DSP and patches by Brian Riordan.
