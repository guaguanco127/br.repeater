# Max/MSP RNBO Patch for External or VST Creation: br.repeater.rnbo.1.0  

By Brian Riordan  
guaguanco127 [at] gmail [dot] com  
brianriordanmusic [at] gmail [dot] com  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/)

Repository for br.repeater.1.0, with all related files, can be found here: [https://github.com/guaguanco127/br.repeater](https://github.com/guaguanco127/br.repeater)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9 and RNBO.

## Table of Contents

[About](#About)  
[What is an External for Max/MSP?](#External)  
[What is a VST or AU Audio Plugin?](#VST)  
[How To Export as a Max/MSP External](#Export)  
[How To Export as a VST or AU Audio Plugin](#ExportVST)  

## <a name="About"></a>About

A stereo repeater: the input always passes through and is always recorded, and Repeat loops the last 10 ms to 10 s of what just happened, ending where you pressed. Grab loops the newest audio instead, Position jumps with a crossfade (no re-pitch), Speed goes from -16 to 16 (backwards too) and Size can change while it loops. Two read heads crossfade at the loop point, so there is no dip and no click. Works at any sample rate.

Inside [rnbo~], the eight params (Repeat, Grab, Size, Speed, Position, Crossfade, Mix, MixMode) are the plugin parameters, with the same ranges and dial curves as the Max version. Inlets 3 to 10 set the same controls (inlet 4 takes a bang for Grab), so the external has the same ten inlets as the abstraction. The gen~ code inside is the same as br.repeater.1.0.

**Repeat:** off / on. Default off.  
**Grab:** each change from off to on grabs; set it back to off before the next grab. Only while repeating.  
**Size:** 10 to 10000 ms, curved dial. Default 8000.  
**Speed:** -16 to 16. Default 1.  
**Position:** 0 to 1, jump-to. Default 0.  
**Crossfade:** 5 to 250 ms. Default 40.  
**Mix:** 0 to 1 while repeating, 1 = only the loop. Default 1.  
**MixMode:** Thru / Aux, what you hear while not repeating: the input, or silence. Default Thru.  

Outlets: Left and Right. There is no State or Grab output: whatever drives the external or plugin already knows the values, and in a DAW they are normal plugin parameters. The recorders take about 38 MB of memory per instance.

## <a name="External"></a>What is an External for Max/MSP?

An external is a type of object that does not come with your Max/MSP library. Unlike the typical objects that you can call on all versions of Max/MSP, an external must be installed on the user's computer a specific way.

## <a name="VST"></a>What is a VST or AU Audio Plugin?

A VST is a third party audio plugin generally run within a digital audio workstation (DAW). A VST is cross platform for both Windows and Mac. An AU works the same way but is Mac only.

## <a name="Export"></a>How To Export as a Max/MSP External

1. Make sure Max 9 is installed on your computer, and that you have an RNBO license.

2. Open br.repeater.rnbo.1.0.maxpat. Drop a sample of your own onto the [playlist~] and start it to hear it.

3. Double-click the [rnbo~] object while the patch is locked.

4. Click "Show Export Sidebar" on the right-hand side.

5. Select "Max External Export".

6. Name the object br.repeater.1.0~ and export.

**Keep the ~ at the end of the name.** Without it, the external has exactly the same name as the abstraction br.repeater.1.0, and Max loads whichever one it finds first, so you can't be sure which one you're using. The ~ also follows the Max convention for objects that process audio. Any other name is fine as long as it isn't the name of an abstraction you also use.

7. Copy the exported .mxo (Mac) or .mxe64 (Windows) into a folder on Max's search path, for example Documents/Max 9/Externals, and add that folder in Options > File Preferences if it isn't listed. Then create an object called br.repeater.1.0~ in any patch. It has the same inlets as the abstraction, except that the controls take numbers only.

## <a name="ExportVST"></a>How To Export as a VST or AU Audio Plugin

**Please note that you can only use an audio plugin on the same computer that you created it with RNBO. Sending an audio plugin to another computer will not work and be flagged as an unrecognized developer**

1. Make sure Max 9 is installed on your computer, and that you have an RNBO license.

2. Open br.repeater.rnbo.1.0.maxpat.

3. Double-click the [rnbo~] object while the patch is locked.

4. Select "Audio Plugin Export".

5. Choose VST3 or AU and the platform, name your plugin, and export. The eight parameters show up in your DAW for automation.

## <a name="Credits"></a>Credits

Based on my older Repeaterer patch (Gloam), rebuilt from scratch in gen~ to remove the dip it had at every loop point. DSP and patches by Brian Riordan.
