# Max/MSP Patches, Abstractions, Externals, RNBO, VSTs, and Ableton Max for Live

## br.repeater.1.1

By Brian Riordan  
guaguanco127 [at] gmail [dot] com  
brianriordanmusic [at] gmail [dot] com  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/)

Repository for br.repeater.1.1, with all related files, can be found here: [https://github.com/guaguanco127/br.repeater](https://github.com/guaguanco127/br.repeater)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9, or RNBO.

## Links

[About](#About)  
[What's new in 1.1](#New11)  
[Max/MSP Abstraction](https://github.com/guaguanco127/br.repeater/tree/main/MaxMSP%20Abstraction) To use as an abstraction within Max/MSP  
[Max/MSP RNBO for External or VST](https://github.com/guaguanco127/br.repeater/tree/main/RNBO%20Patchers%20for%20External%20or%20VST) To build your own Max external, or a VST or AU audio plugin (needs RNBO)  
[Ableton Max for Live Device](https://github.com/guaguanco127/br.repeater/tree/main/Ableton%20Max%20For%20Live) To use inside of Ableton Suite  

## <a name="About"></a>About

A stereo repeater for Max/MSP, built in gen~. The input always passes through and is always being recorded, so when you hear something worth keeping, press Repeat: the last Size ms (10 ms to 10 seconds) loop, ending at the moment you pressed. It is reactionary: you don't have to know in advance, you go back and grab what just happened. Grab again while it loops and the newest audio replaces the loop.

You can use it as an abstraction within Max/MSP or as a Max for Live device within Ableton Live Suite. With RNBO you can also build your own Max external or VST/AU plugin from the included RNBO patch.

**No dip at the loop point:** two read heads. Just before the playing head reaches the end of the loop, the second head starts a little before the loop start and the two crossfade, so the sound runs on into the audio that originally led into the start. Backwards it is the mirror image. Nothing fades to silence at the loop point.

**Always recording:** two recorders capture the input all the time. The one being looped freezes (after one more second, for the backwards crossfade); the other keeps recording, so Grab can always take the newest audio. Right after a long hold, two quick grabs can give a loop a little shorter than Size: the loop is never longer than what was recorded without a break.

**Jump-to Position:** Position jumps the playhead to a spot in the loop (0 = start, 1 = end) with a crossfade: no re-pitch, no click. Moving it keeps jumping to the newest spot, one crossfade at a time. Repeat and Grab also start playing from Position.

**Speed:** -16 to 16. 1 = normal, 0.5 = an octave down, negative = backwards, 0 = stopped. Above 1 the loop is read without anti-aliasing, so high speeds get gritty on purpose (a fast-forward zip). Speed glides, so changing it never clicks.

**Size while it loops:** the end of the loop stays where you pressed and Size moves the start. A playhead that is still inside the new loop keeps playing; one outside it crossfades back in.

**Click-free:** every fade (the loop point, Repeat on and off, Grab, Position, Size jumps) is an S-shaped equal-power crossfade of Crossfade ms. Short loops shrink the loop-point crossfade to half the loop, and at very high speeds it shrinks to fit the recorded margin.

**Any sample rate:** everything is set in ms and converted with the real sample rate; the recorders hold 12.5 seconds at 192 kHz.

**Mix and Mix Mode:** Mix sets the blend while repeating (1 = only the loop, 0.5 = loop and input, equal power). Mix Mode sets what you hear while NOT repeating: Thru = the input, Aux = silence, for an aux send. There is no On/Off on purpose: the recorders must always run, or there would be nothing to grab. While not repeating only the recording runs, which costs very little.

**Grab outlet:** the abstraction has an outlet that bangs on every grab (Repeat turned on, or Grab while repeating), so a grab can trigger an envelope, a filter sweep or another effect.

**Repeat:** 1 = loop the last Size ms (the loop ends at the moment you press it), 0 = back to the input. Fades over Crossfade. Default 0.

**Grab:** while repeating, loop the newest Size ms instead (crossfades over). Ignored while not repeating.

**Size:** 10 to 10000 ms. The loop length. The dial is curved, so most of its travel covers the shorter loops. Default 8000.

**Speed:** -16 to 16. Negative = backwards, 0 = stopped. Default 1.

**Position:** 0 to 1, jump-to. 0 = loop start, 1 = loop end. Default 0.

**Crossfade:** 5 to 250 ms, used for every fade. Short = tight and percussive, long = smooth and blurred. Default 40.

**Mix:** 0 to 1 while repeating: 1 = only the loop, 0.5 = loop and input equal. Default 1.

**Mix Mode:** what you hear while NOT repeating. Thru (0) = the input passes; Aux (1) = silence, for use on an aux send. Default Thru.

## <a name="New11"></a>What's new in 1.1

- **Readable dials in the Max for Live device:** the dials' values and needles are now white, so they stand out on the black panel (with Live's default theme they were dark and hard to read). The abstraction, RNBO patch and sound are unchanged; every file now has the version 1.1.

## <a name="How"></a>How it works

Each channel is written into two circular recorders (12.5 s each). Repeat marks the moment you pressed: the loop is the Size ms before it, read back by two read heads with linear interpolation. Positions are counted backwards from the press, which is why changing Size moves the start and not the end. At the loop point, a new Position, a grab or a Size jump, the idle head starts at the new spot (with a pre-roll before the loop start, or a post-roll after the end when playing backwards) and the heads crossfade. A grab during a running crossfade waits for it to finish but still ends the loop where you pressed. Not repeating, nothing is read; only the recording runs.

## <a name="Files"></a>Which file?

| File | What it is |
|---|---|
| br.repeater.1.1 | No UI. The plain object to patch with |
| br.repeater.ui.1.1 | With Repeat, Grab and Thru/Aux buttons and dials for Size, Speed, Position, Crossfade and Mix, ready for a [bpatcher] (256 x 78) |
| _br.repeater.example.1.1 | Example patch: open this first. Pick a source (drum loop, voice, a drone or your mic) |
| br.repeater.rnbo.1.1 | RNBO patch, to export a Max external or a VST/AU plugin |
| br.repeater.1.1.amxd | Max for Live audio effect |

The UI version contains the plain version and has the same inlets. Its outlets are Left, Right, State and Grab; the plain object's are Left, Right and Grab, so when you swap one for the other, move the Grab cable. Open the UI version in patching mode for comments on how it is built.

## <a name="Credits"></a>Credits

Based on my older Repeaterer patch (Gloam), rebuilt from scratch in gen~ to remove the dip it had at every loop point. DSP and patches by Brian Riordan.
