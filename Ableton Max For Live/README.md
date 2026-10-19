# Ableton Max for Live device: br.repeater.1.0  

By Brian Riordan  
guaguanco127 [at] gmail [dot] com  
brianriordanmusic [at] gmail [dot] com  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/)

Repository for br.repeater.1.0, with all related files, can be found here: [https://github.com/guaguanco127/br.repeater](https://github.com/guaguanco127/br.repeater)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9.

## Table of Contents

[About](#About)  
[What is a Max for Live Device?](#M4L)  
[How To Install](#Install)  
[Credits](#Credits)  

## <a name="About"></a>About

A stereo repeater for Max/MSP, built in gen~. The input always passes through and is always being recorded, so when you hear something worth keeping, press Repeat: the last Size ms (10 ms to 10 seconds) loop, ending at the moment you pressed. It is reactionary: you don't have to know in advance, you go back and grab what just happened. Grab again while it loops and the newest audio replaces the loop.

A compact stereo audio effect with eight controls, all Live parameters, so you can automate them or map them to a controller (Repeat and Grab are good candidates for buttons or pads). One parameter bank, **Repeater**: Repeat, Grab, Size, Speed, Position, Crossfade, Mix, Mix Mode. There is no output gain: use Live's mixer.

**No dip at the loop point:** two read heads. Just before the playing head reaches the end of the loop, the second head starts a little before the loop start and the two crossfade, so the sound runs on into the audio that originally led into the start. Backwards it is the mirror image. Nothing fades to silence at the loop point.

**Always recording:** two recorders capture the input all the time. The one being looped freezes (after one more second, for the backwards crossfade); the other keeps recording, so Grab can always take the newest audio. Right after a long hold, two quick grabs can give a loop a little shorter than Size: the loop is never longer than what was recorded without a break.

**Jump-to Position:** Position jumps the playhead to a spot in the loop (0 = start, 1 = end) with a crossfade: no re-pitch, no click. Moving it keeps jumping to the newest spot, one crossfade at a time. Repeat and Grab also start playing from Position.

**Speed:** -16 to 16. 1 = normal, 0.5 = an octave down, negative = backwards, 0 = stopped. Above 1 the loop is read without anti-aliasing, so high speeds get gritty on purpose (a fast-forward zip). Speed glides, so changing it never clicks.

**Size while it loops:** the end of the loop stays where you pressed and Size moves the start. A playhead that is still inside the new loop keeps playing; one outside it crossfades back in.

**Click-free:** every fade (the loop point, Repeat on and off, Grab, Position, Size jumps) is an S-shaped equal-power crossfade of Crossfade ms. Short loops shrink the loop-point crossfade to half the loop, and at very high speeds it shrinks to fit the recorded margin.

**Any sample rate:** everything is set in ms and converted with the real sample rate; the recorders hold 12.5 seconds at 192 kHz.

**Mix and Mix Mode:** Mix sets the blend while repeating (1 = only the loop, 0.5 = loop and input, equal power). Mix Mode sets what you hear while NOT repeating: Thru = the input, Aux = silence, for an aux send. There is no On/Off on purpose: the recorders must always run, or there would be nothing to grab. While not repeating only the recording runs, which costs very little.

**Repeat:** 1 = loop the last Size ms (the loop ends at the moment you press it), 0 = back to the input. Fades over Crossfade. Default 0.

**Grab:** while repeating, loop the newest Size ms instead (crossfades over). Ignored while not repeating.

**Size:** 10 to 10000 ms. The loop length. The dial is curved, so most of its travel covers the shorter loops. Default 8000.

**Speed:** -16 to 16. Negative = backwards, 0 = stopped. Default 1.

**Position:** 0 to 1, jump-to. 0 = loop start, 1 = loop end. Default 0.

**Crossfade:** 5 to 250 ms, used for every fade. Short = tight and percussive, long = smooth and blurred. Default 40.

**Mix:** 0 to 1 while repeating: 1 = only the loop, 0.5 = loop and input equal. Default 1.

**Mix Mode:** what you hear while NOT repeating. Thru (0) = the input passes; Aux (1) = silence, for use on an aux send. Default Thru.

## <a name="M4L"></a>What Is a Max For Live Device?

Max For Live brings the power and flexibility of Max to Ableton Live. Max For Live gives you access to hundreds of exclusive custom plug-ins (Live Devices) as well as the tools to build your own. These can be MIDI and audio effects, audio and video synthesizers, 3D Jitter visuals, as well as tools that interact with the Live application itself, via the Live API.

## <a name="Install"></a>How To Install

1. Make sure you have Ableton Live Suite installed on your computer, and that Live is closed while installing.

2. For Mac:  
Go to your user folder  
Then Music > Ableton > User Library > Presets > Audio Effects > Max Audio Effect  
Copy br.repeater.1.0.amxd into that folder

3. For Windows: \Users\[username]\Documents\Ableton\User Library\Presets\Audio Effects\Max Audio Effect  

4. Open Ableton Live. On the left-hand side, look for Max for Live > Max Audio Effect and then the name of this device.

5. Either double-click the device, or drag it onto the track where you want it.

## <a name="Credits"></a>Credits

Based on my older Repeaterer patch (Gloam), rebuilt from scratch in gen~ to remove the dip it had at every loop point. DSP and patches by Brian Riordan.
