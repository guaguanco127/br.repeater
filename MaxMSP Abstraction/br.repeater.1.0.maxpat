{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 0,
            "revision": 0,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [
            85.0,
            104.0,
            900.0,
            330.0
        ],
        "bglocked": 0,
        "openinpresentation": 0,
        "default_fontsize": 12.0,
        "default_fontface": 0,
        "default_fontname": "Arial",
        "gridonopen": 1,
        "gridsize": [
            15.0,
            15.0
        ],
        "gridsnaponopen": 1,
        "objectsnaponopen": 1,
        "statusbarvisible": 2,
        "toolbarvisible": 1,
        "lefttoolbarpinned": 0,
        "toptoolbarpinned": 0,
        "righttoolbarpinned": 0,
        "bottomtoolbarpinned": 0,
        "toolbars_unpinned_last_save": 0,
        "tallnewobj": 0,
        "boxanimatetime": 200,
        "enablehscroll": 1,
        "enablevscroll": 1,
        "devicewidth": 0.0,
        "description": "br.repeater.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
        "digest": "",
        "tags": "",
        "style": "",
        "subpatcher_template": "",
        "assistshowspatchername": 0,
        "boxes": [
            {
                "box": {
                    "maxclass": "inlet",
                    "id": "obj-1",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        15,
                        15,
                        30.0,
                        30.0
                    ],
                    "index": 1,
                    "comment": "Left In (Signal)"
                }
            },
            {
                "box": {
                    "maxclass": "inlet",
                    "id": "obj-2",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        90,
                        15,
                        30.0,
                        30.0
                    ],
                    "index": 2,
                    "comment": "Right In (Signal)"
                }
            },
            {
                "box": {
                    "maxclass": "inlet",
                    "id": "obj-3",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        165,
                        15,
                        30.0,
                        30.0
                    ],
                    "index": 3,
                    "comment": "Repeat (Int) 1 = loop the last Size ms (the loop ends at the moment you press it), 0 = back to the input. Fades over Crossfade. Default 0"
                }
            },
            {
                "box": {
                    "maxclass": "inlet",
                    "id": "obj-4",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        240,
                        15,
                        30.0,
                        30.0
                    ],
                    "index": 4,
                    "comment": "Grab (Bang) while repeating: loop the newest Size ms instead (crossfades over). Ignored while not repeating"
                }
            },
            {
                "box": {
                    "maxclass": "inlet",
                    "id": "obj-5",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        315,
                        15,
                        30.0,
                        30.0
                    ],
                    "index": 5,
                    "comment": "Size (Signal/Float) 10 - 10000 ms. The loop length; changing it moves the loop start, the end stays at the grab. Works while looping. Default 8000"
                }
            },
            {
                "box": {
                    "maxclass": "inlet",
                    "id": "obj-6",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        390,
                        15,
                        30.0,
                        30.0
                    ],
                    "index": 6,
                    "comment": "Speed (Signal/Float) -16 - 16. 1 = normal, 0.5 = half speed (an octave down), negative = backwards, 0 = stopped. Above 1 it is read without anti-aliasing (gritty). Default 1"
                }
            },
            {
                "box": {
                    "maxclass": "inlet",
                    "id": "obj-7",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        465,
                        15,
                        30.0,
                        30.0
                    ],
                    "index": 7,
                    "comment": "Position (Float) 0 - 1: jump-to. 0 = loop start, 1 = loop end. A new value jumps there with a crossfade (no re-pitch). Repeat and Grab also start from here. Default 0"
                }
            },
            {
                "box": {
                    "maxclass": "inlet",
                    "id": "obj-8",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        540,
                        15,
                        30.0,
                        30.0
                    ],
                    "index": 8,
                    "comment": "Crossfade (Signal/Float) 5 - 250 ms. Used for every fade: the loop point, Repeat on/off and Grab. Default 40"
                }
            },
            {
                "box": {
                    "maxclass": "inlet",
                    "id": "obj-9",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        615,
                        15,
                        30.0,
                        30.0
                    ],
                    "index": 9,
                    "comment": "Mix (Signal/Float) 0 - 1 while repeating: 1 = only the loop, 0.5 = loop and input equal (equal power). Default 1"
                }
            },
            {
                "box": {
                    "maxclass": "inlet",
                    "id": "obj-10",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        690,
                        15,
                        30.0,
                        30.0
                    ],
                    "index": 10,
                    "comment": "Mix Mode (Int) 0 = Thru, 1 = Aux: what you hear while NOT repeating. Thru = the input, Aux = silence. Default 0"
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "obj-11",
                    "numinlets": 10,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "signal"
                    ],
                    "patching_rect": [
                        15.0,
                        160.0,
                        700.0,
                        22.0
                    ],
                    "text": "gen~ @title br.repeater.1.0",
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 0,
                            "revision": 0,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "dsp.gen",
                        "rect": [
                            100.0,
                            100.0,
                            1100.0,
                            760.0
                        ],
                        "bglocked": 0,
                        "openinpresentation": 0,
                        "default_fontsize": 12.0,
                        "default_fontface": 0,
                        "default_fontname": "Arial",
                        "gridonopen": 1,
                        "gridsize": [
                            15.0,
                            15.0
                        ],
                        "gridsnaponopen": 1,
                        "objectsnaponopen": 1,
                        "statusbarvisible": 2,
                        "toolbarvisible": 1,
                        "lefttoolbarpinned": 0,
                        "toptoolbarpinned": 0,
                        "righttoolbarpinned": 0,
                        "bottomtoolbarpinned": 0,
                        "toolbars_unpinned_last_save": 0,
                        "tallnewobj": 0,
                        "boxanimatetime": 200,
                        "enablehscroll": 1,
                        "enablevscroll": 1,
                        "devicewidth": 0.0,
                        "description": "",
                        "digest": "",
                        "tags": "",
                        "style": "",
                        "subpatcher_template": "",
                        "assistshowspatchername": 0,
                        "boxes": [
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-1",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        20.0,
                                        20.0,
                                        147.0,
                                        22.0
                                    ],
                                    "text": "in 1 @comment audio L",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-2",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        230.0,
                                        20.0,
                                        147.0,
                                        22.0
                                    ],
                                    "text": "in 2 @comment audio R",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-3",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        440.0,
                                        20.0,
                                        315.0,
                                        22.0
                                    ],
                                    "text": "in 3 @comment repeat @default 0 @min 0 @max 1",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-4",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        650.0,
                                        20.0,
                                        385.0,
                                        22.0
                                    ],
                                    "text": "in 4 @comment grab count (any change = grab) @default 0",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-5",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        860.0,
                                        20.0,
                                        378.0,
                                        22.0
                                    ],
                                    "text": "in 5 @comment size ms @default 8000 @min 10 @max 10000",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-6",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        20.0,
                                        50.0,
                                        315.0,
                                        22.0
                                    ],
                                    "text": "in 6 @comment speed @default 1 @min -16 @max 16",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-7",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        230.0,
                                        50.0,
                                        308.0,
                                        22.0
                                    ],
                                    "text": "in 7 @comment position (jump-to) @default 0 @min 0 @max 1",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-8",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        440.0,
                                        50.0,
                                        378.0,
                                        22.0
                                    ],
                                    "text": "in 8 @comment crossfade ms @default 40 @min 5 @max 250",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-9",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        650.0,
                                        50.0,
                                        294.0,
                                        22.0
                                    ],
                                    "text": "in 9 @comment mix @default 1 @min 0 @max 1",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-10",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        860.0,
                                        50.0,
                                        336.0,
                                        22.0
                                    ],
                                    "text": "in 10 @comment mix mode @default 0 @min 0 @max 1",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "codebox",
                                    "id": "obj-11",
                                    "numinlets": 10,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        20.0,
                                        90.0,
                                        1050.0,
                                        610.0
                                    ],
                                    "parameter_enable": 0,
                                    "code": "// br.repeater.1.0 -- stereo repeater: loop the last few seconds of what just happened\n// The input always passes through and is always recorded. Repeat 1 loops the most recent Size ms\n// (the loop ENDS at the moment you pressed Repeat). Speed, Position and Size all work while it loops.\n// Two recorders (A and B), so a new grab never has to wait: both record all the time, except the one\n// being looped, which freezes (after 1 s more, see post-roll below). Grab again while looping and the\n// other recorder (which kept recording) becomes the loop; the old one starts recording again once the\n// crossfade to the new loop is done.\n// No dip at the loop point: two read heads. Shortly before the playing head reaches the end of the loop,\n// a second head starts a little BEFORE the loop start (pre-roll) and they crossfade (equal power).\n// The second head reaches the loop start exactly when the first one reaches the end, so the sound runs\n// on into the audio that originally led into the start. Playing backwards it is the mirror image: the\n// new head starts a little AFTER the loop end, which is why the looped recorder keeps recording 1 s\n// past the grab (post-roll) before it freezes.\n// Position jumps the playhead: the idle head starts at the new spot and the two crossfade (no re-pitch,\n// no click). While Position keeps moving, each jump waits for the previous crossfade and then goes to the\n// newest Position. Repeat (and Grab) start playing from Position too.\n// Size changes move the loop START (the end stays at the grab moment). A playhead that ends up outside\n// the new loop crossfades back in; one that is still inside keeps playing.\n// Crossfade (5-250 ms) is used for every fade: loop point, Repeat on/off, re-grab, Position, Size jumps.\n// If the loop is short, the loop-point crossfade shrinks to half the loop; above 4x speed it shrinks to fit\n// the 1 s pre/post-roll. Speed above 1 is read without anti-aliasing (gritty on purpose).\n// A recorder that froze has a gap in its history, so right after a re-grab it may hold less than Size:\n// the loop is then as long as the recording that has no gap.\n// Repeat off: the loop fades out; when it is silent the heads stop (only recording runs).\n// Mix Mode: Thru = the input passes while not repeating, Aux = silent while not repeating.\n// in1 / in2 audio L / R, in3 repeat 0/1, in4 grab (any change = grab again while repeating),\n// in5 size ms 10..10000, in6 speed -16..16, in7 position 0..1 (0 = loop start, 1 = loop end),\n// in8 crossfade ms 5..250, in9 mix 0..1 (1 = only the loop while repeating), in10 mix mode 0 Thru / 1 Aux\n// out1 / out2 audio L / R\n\nData ring(2400000, 4);   // 12.5 s at 192 kHz; channels 0/1 = recorder A L/R, 2/3 = recorder B L/R\nHistory wp(0);\nHistory rec0(1);\nHistory rec1(1);\nHistory pw0(0);\nHistory pw1(0);\nHistory fill0(2400000);\nHistory fill1(2400000);\nHistory anc0(0);\nHistory anc1(0);\nHistory av0(0);\nHistory av1(0);\nHistory src(0);\nHistory playing(0);\nHistory ws_s(0);\nHistory hb0(0);\nHistory hb1(0);\nHistory hr0(0);\nHistory hr1(0);\nHistory hdir(0);\nHistory hxf(0);\nHistory xstep(1);\nHistory pend(0);\nHistory want(0);\nHistory wanc(-1);\nHistory wring(0);\nHistory wfill(0);\nHistory prevrep(0);\nHistory prevgrab(0);\nHistory sp_s(1);\nHistory sp2_s(1);\nHistory jpos(0);\nHistory jwant(0);\nHistory mx_s(1);\nHistory md_s(0);\nHistory init(0);\n\nN = 2400000;\npost = min(mstosamps(1000), 400000);\nmaxl = mstosamps(10000);\nc10 = 1 - exp(-1 / max(1, mstosamps(10)));\nc20 = 1 - exp(-1 / max(1, mstosamps(20)));\nc30 = 1 - exp(-1 / max(1, mstosamps(30)));\n\n// read every History into a local first; they are written back at the very end\nw = wp;\nr0 = rec0;\nr1 = rec1;\np0 = pw0;\np1 = pw1;\nf0 = fill0;\nf1 = fill1;\na0 = anc0;\na1 = anc1;\nv0 = av0;\nv1 = av1;\ns = src;\npl = playing;\nws = ws_s;\nb0 = hb0;\nb1 = hb1;\ng0 = hr0;\ng1 = hr1;\ndir = hdir;\nxf = hxf;\nxs = xstep;\npd = pend;\nwt = want;\nwa = wanc;\nwn = wring;\nwf = wfill;\npr = prevrep;\npg = prevgrab;\nsp = sp_s;\nsp2 = sp2_s;\njp = jpos;\njw = jwant;\nmx = mx_s;\nmd = md_s;\n\nif (init < 0.5) {\n\t// first sample: start the smoothed values at their targets, and ignore whatever grab count is there\n\tsp = clip(in6, -16, 16);\n\tsp2 = sp;\n\tjp = clip(in7, 0, 1);\n\tmx = clip(in9, 0, 1);\n\tmd = clip(in10, 0, 1);\n\tpg = in4;\n\tp0 = post;\n\tp1 = post;\n}\n\nx1 = fixnan(in1);\nx2 = fixnan(in2);\nrep = in3 > 0.5;\ndsamp = max(1, mstosamps(clip(in8, 5, 250)));\nlreq = clip(mstosamps(clip(in5, 10, 10000)), 2, maxl);\n// Speed goes through two smoothers, so the playhead speeds up and slows down smoothly\n// (one smoother alone still changes speed in a jump, which a pure tone shows as a tick)\nsp = sp + c20 * (clip(in6, -16, 16) - sp);\nsp2 = sp2 + c20 * (sp - sp2);\npos = clip(in7, 0, 1);\nif (abs(pos - jp) > 0.0001) {\n\tjw = 1;   // a new Position: jump there as soon as no crossfade is running\n}\nmx = mx + c10 * (clip(in9, 0, 1) - mx);\nmd = md + c20 * (clip(in10, 0, 1) - md);\n\n// --- events: Repeat turned on, or a grab while repeating ---\nif (rep > 0.5 && pr < 0.5) {\n\twt = 1;\n}\nif (rep > 0.5 && abs(in4 - pg) > 0.0001) {\n\twt = 1;\n}\nif (rep < 0.5) {\n\twt = 0;\n\twa = -1;\n}\n// remember WHERE the grab happened. If it has to wait (a crossfade is still running, up to Crossfade ms),\n// the loop still ends at the press, as long as the recorder it will use is recording right now\nif (wt > 0.5 && wa < 0 && pd < 0.5) {\n\twn = pl > 0.5 ? 1 - s : (f1 > f0 ? 1 : 0);\n\twa = w;\n\twf = wn > 0.5 ? f1 : f0;\n}\npr = rep;\npg = in4;\n\n// loop length and crossfade for the ring being looped (s)\navs = s > 0.5 ? v1 : v0;\nlo = 0;\nhi = 0;\nvel = 0;\ntt = 0;\nleff = 2;\ndeff = dsamp;\nnb = 0;\ntrig = 0;\nns = 0;\nold = 0;\ngw = 0;\ngf = 0;\nsettled = abs(xf - dir) < 0.000001;\n\nif (wt > 0.5 && settled && pd < 0.5) {\n\t// grab now. The loop ends HERE: everything before this sample is the loop, this sample on is post-roll\n\tif (pl < 0.5) {\n\t\tns = f1 > f0 ? 1 : 0;   // both are recording; take the one with the longer unbroken history\n\t} else {\n\t\tns = 1 - s;             // looping: the other recorder never stopped, so it holds the newest audio\n\t}\n\tgw = 0;   // samples recorded since the press (it already counts as post-roll)\n\tgf = ns > 0.5 ? f1 : f0;\n\tif (wa >= 0 && wn == ns) {\n\t\tgw = wrap(w - wa, 0, N);\n\t\tgf = wf;\n\t}\n\told = s;\n\tif (ns > 0.5) {\n\t\ta1 = w - gw;\n\t\tif (a1 < 0) {\n\t\t\ta1 = a1 + N;\n\t\t}\n\t\tv1 = min(gf, N - post - 4);\n\t\tr1 = 0;\n\t\tp1 = gw;\n\t\tavs = v1;\n\t} else {\n\t\ta0 = w - gw;\n\t\tif (a0 < 0) {\n\t\t\ta0 = a0 + N;\n\t\t}\n\t\tv0 = min(gf, N - post - 4);\n\t\tr0 = 0;\n\t\tp0 = gw;\n\t\tavs = v0;\n\t}\n\ts = ns;\n\tvel = abs(sp2);\n\tleff = clip(lreq, 2, max(2, avs - min(vel * dsamp, post) - 4));\n\tdeff = max(1, min(min(dsamp, 0.5 * leff / max(vel, 0.000001)), (post - 8) / max(vel, 0.000001)));\n\ttt = vel * deff;\n\tif (pl < 0.5) {\n\t\t// from dry: start the active head at Position; the dry/loop fade (ws) does the rest\n\t\tif (dir > 0.5) {\n\t\t\tb1 = leff * (1 - pos);\n\t\t\tg1 = ns;\n\t\t} else {\n\t\t\tb0 = leff * (1 - pos);\n\t\t\tg0 = ns;\n\t\t}\n\t\txf = dir;\n\t\tpl = 1;\n\t} else {\n\t\t// from the old loop: the idle head starts the new loop at Position (at the start: with pre-roll)\n\t\t// and the heads crossfade\n\t\tnb = pos < 0.0001 ? min(leff + tt, avs - 2) : leff * (1 - pos);\n\t\tif (dir > 0.5) {\n\t\t\tb0 = nb;\n\t\t\tg0 = ns;\n\t\t\tdir = 0;\n\t\t} else {\n\t\t\tb1 = nb;\n\t\t\tg1 = ns;\n\t\t\tdir = 1;\n\t\t}\n\t\txs = 1 / deff;\n\t\tpd = old + 1;   // the old recorder starts recording again when this crossfade is done\n\t}\n\twt = 0;\n\twa = -1;\n\tjp = pos;   // it already started at Position\n\tjw = 0;\n}\n\n// --- record: a recorder writes while recording, or for 1 s of post-roll after it was grabbed ---\nif (r0 > 0.5 || p0 < post) {\n\tpoke(ring, x1, w, 0);\n\tpoke(ring, x2, w, 1);\n\tf0 = min(f0 + 1, N);\n\tif (r0 < 0.5) {\n\t\tp0 = p0 + 1;\n\t\tif (p0 >= post) {\n\t\t\tf0 = 0;   // it stops here, so its history has a gap from now on\n\t\t}\n\t}\n}\nif (r1 > 0.5 || p1 < post) {\n\tpoke(ring, x1, w, 2);\n\tpoke(ring, x2, w, 3);\n\tf1 = min(f1 + 1, N);\n\tif (r1 < 0.5) {\n\t\tp1 = p1 + 1;\n\t\tif (p1 >= post) {\n\t\t\tf1 = 0;\n\t\t}\n\t}\n}\nw = w + 1;\nif (w >= N) {\n\tw = 0;\n}\n\n// --- loop playback ---\nloopl = 0;\nloopr = 0;\no0l = 0;\no0r = 0;\no1l = 0;\no1r = 0;\nidx = 0;\ni0 = 0;\ni1 = 0;\nfr = 0;\nch = 0;\ny0 = 0;\ny1 = 0;\nanc = 0;\nba = 0;\ngl = 0;\ngr = 0;\nxu = 0;\nif (pl > 0.5) {\n\t// Repeat fades the loop in and out over Crossfade\n\tws = rep > 0.5 ? min(ws + 1 / dsamp, 1) : max(ws - 1 / dsamp, 0);\n\tavs = s > 0.5 ? v1 : v0;\n\t// movement per sample, in recorded samples\n\tvel = sp2;\n\tleff = clip(lreq, 2, max(2, avs - min(abs(vel) * dsamp, post) - 4));\n\t// the loop-point crossfade covers speed x time of recording; it must fit in the 1 s of pre/post-roll,\n\t// so above 4x speed a long Crossfade shortens itself (16x: 250 ms -> 62 ms)\n\tdeff = max(1, min(min(dsamp, 0.5 * leff / max(abs(vel), 0.000001)), (post - 8) / max(abs(vel), 0.000001)));\n\ttt = abs(vel) * deff;\n\tb0 = b0 - vel;\n\tb1 = b1 - vel;\n\t// keep each head inside what its recorder really holds (back = samples before the grab moment)\n\tlo = -max((g0 > 0.5 ? p1 : p0) - 3, 0);\n\thi = (g0 > 0.5 ? v1 : v0) - 2;\n\tb0 = clip(b0, lo, max(lo, hi));\n\tlo = -max((g1 > 0.5 ? p1 : p0) - 3, 0);\n\thi = (g1 > 0.5 ? v1 : v0) - 2;\n\tb1 = clip(b1, lo, max(lo, hi));\n\n\tsettled = abs(xf - dir) < 0.000001;   // again: a grab above may have just started a crossfade\n\tif (settled) {\n\t\t// the active head is near (or past) a loop point: the idle head takes over with a crossfade\n\t\tba = dir > 0.5 ? b1 : b0;\n\t\tlo = -max((s > 0.5 ? p1 : p0) - 3, 0);\n\t\ttrig = 0;\n\t\tif (vel > 0.000001 && ba <= tt) {\n\t\t\tnb = min(leff + tt, avs - 2);   // forward: pre-roll before the loop start\n\t\t\ttrig = 1;\n\t\t} else if (vel < -0.000001 && ba >= leff - tt) {\n\t\t\tnb = max(-tt, lo);              // backward: post-roll after the loop end\n\t\t\ttrig = 1;\n\t\t} else if (ba > leff) {\n\t\t\tnb = leff;                      // stopped outside the loop (Size got smaller)\n\t\t\ttrig = 1;\n\t\t} else if (ba < 0) {\n\t\t\tnb = 0;\n\t\t\ttrig = 1;\n\t\t} else if (jw > 0.5) {\n\t\t\tnb = leff * (1 - pos);         // Position: jump with a crossfade\n\t\t\ttrig = 1;\n\t\t}\n\t\tif (jw > 0.5 && trig > 0.5 && abs(nb - leff * (1 - pos)) < 0.5) {\n\t\t\tjp = pos;\n\t\t\tjw = 0;\n\t\t}\n\t\tif (trig > 0.5) {\n\t\t\tif (dir > 0.5) {\n\t\t\t\tb0 = nb;\n\t\t\t\tg0 = s;\n\t\t\t\tdir = 0;\n\t\t\t} else {\n\t\t\t\tb1 = nb;\n\t\t\t\tg1 = s;\n\t\t\t\tdir = 1;\n\t\t\t}\n\t\t\txs = 1 / deff;\n\t\t}\n\t}\n\txf = dir > 0.5 ? min(xf + xs, 1) : max(xf - xs, 0);\n\tif (pd > 0.5 && abs(xf - dir) < 0.000001) {\n\t\t// the crossfade from an old loop is done: that recorder records again\n\t\tif (pd > 1.5) {\n\t\t\tr1 = 1;\n\t\t} else {\n\t\t\tr0 = 1;\n\t\t}\n\t\tpd = 0;\n\t}\n\n\t// head 0 (only read while it can be heard)\n\t// S-shaped fades (smoothstep): they start and end with zero slope, so even a pure tone shows no kink\n\txu = xf * xf * (3 - 2 * xf);\n\tgl = cos(xu * halfpi);\n\tif (gl > 0.0000001) {\n\t\tanc = g0 > 0.5 ? a1 : a0;\n\t\tch = g0 > 0.5 ? 2 : 0;\n\t\tidx = wrap(anc - b0, 0, N);\n\t\ti0 = floor(idx);\n\t\tfr = idx - i0;\n\t\ti1 = i0 + 1 >= N ? 0 : i0 + 1;\n\t\ty0 = peek(ring, i0, ch);\n\t\ty1 = peek(ring, i1, ch);\n\t\to0l = y0 + fr * (y1 - y0);\n\t\ty0 = peek(ring, i0, ch + 1);\n\t\ty1 = peek(ring, i1, ch + 1);\n\t\to0r = y0 + fr * (y1 - y0);\n\t}\n\t// head 1\n\tgr = sin(xu * halfpi);\n\tif (gr > 0.0000001) {\n\t\tanc = g1 > 0.5 ? a1 : a0;\n\t\tch = g1 > 0.5 ? 2 : 0;\n\t\tidx = wrap(anc - b1, 0, N);\n\t\ti0 = floor(idx);\n\t\tfr = idx - i0;\n\t\ti1 = i0 + 1 >= N ? 0 : i0 + 1;\n\t\ty0 = peek(ring, i0, ch);\n\t\ty1 = peek(ring, i1, ch);\n\t\to1l = y0 + fr * (y1 - y0);\n\t\ty0 = peek(ring, i0, ch + 1);\n\t\ty1 = peek(ring, i1, ch + 1);\n\t\to1r = y0 + fr * (y1 - y0);\n\t}\n\tloopl = o0l * gl + o1l * gr;\n\tloopr = o0r * gl + o1r * gr;\n\n\tif (rep < 0.5 && ws <= 0) {\n\t\t// faded out: stop the heads, everything records again\n\t\tpl = 0;\n\t\tr0 = 1;\n\t\tr1 = 1;\n\t\tpd = 0;\n\t\txf = dir;\n\t}\n} else {\n\tws = 0;\n\tjp = pos;   // not looping: nothing to jump; Repeat starts from Position anyway\n\tjw = 0;\n}\n\n// --- output: the input fades to the loop (or, with Mix < 1, to a blend of loop and input) ---\nhm = mx * halfpi;\nwu = ws * ws * (3 - 2 * ws);\ndg = (1 - md) * (1 - wu) + cos(hm) * wu;\nlg = sin(wu * halfpi) * sin(hm);\nout1 = x1 * dg + loopl * lg;\nout2 = x2 * dg + loopr * lg;\n\nwp = w;\nrec0 = r0;\nrec1 = r1;\npw0 = p0;\npw1 = p1;\nfill0 = f0;\nfill1 = f1;\nanc0 = a0;\nanc1 = a1;\nav0 = v0;\nav1 = v1;\nsrc = s;\nplaying = pl;\nws_s = ws;\nhb0 = b0;\nhb1 = b1;\nhr0 = g0;\nhr1 = g1;\nhdir = dir;\nhxf = xf;\nxstep = xs;\npend = pd;\nwant = wt;\nwanc = wa;\nwring = wn;\nwfill = wf;\nprevrep = pr;\nprevgrab = pg;\nsp_s = sp;\nsp2_s = sp2;\njpos = jp;\njwant = jw;\nmx_s = mx;\nmd_s = md;\ninit = 1;\n",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-12",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "outlettype": [],
                                    "patching_rect": [
                                        20.0,
                                        720.0,
                                        150.0,
                                        22.0
                                    ],
                                    "text": "out 1 @comment audio L",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-13",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "outlettype": [],
                                    "patching_rect": [
                                        420.0,
                                        720.0,
                                        150.0,
                                        22.0
                                    ],
                                    "text": "out 2 @comment audio R",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "source": [
                                        "obj-1",
                                        0
                                    ],
                                    "destination": [
                                        "obj-11",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-2",
                                        0
                                    ],
                                    "destination": [
                                        "obj-11",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-3",
                                        0
                                    ],
                                    "destination": [
                                        "obj-11",
                                        2
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-4",
                                        0
                                    ],
                                    "destination": [
                                        "obj-11",
                                        3
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-5",
                                        0
                                    ],
                                    "destination": [
                                        "obj-11",
                                        4
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-6",
                                        0
                                    ],
                                    "destination": [
                                        "obj-11",
                                        5
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-7",
                                        0
                                    ],
                                    "destination": [
                                        "obj-11",
                                        6
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-8",
                                        0
                                    ],
                                    "destination": [
                                        "obj-11",
                                        7
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-9",
                                        0
                                    ],
                                    "destination": [
                                        "obj-11",
                                        8
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-10",
                                        0
                                    ],
                                    "destination": [
                                        "obj-11",
                                        9
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-11",
                                        0
                                    ],
                                    "destination": [
                                        "obj-12",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-11",
                                        1
                                    ],
                                    "destination": [
                                        "obj-13",
                                        0
                                    ]
                                }
                            }
                        ],
                        "dependency_cache": [],
                        "autosave": 0
                    }
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "obj-12",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "bang",
                        "bang"
                    ],
                    "patching_rect": [
                        240.0,
                        55.0,
                        40.0,
                        22.0
                    ],
                    "text": "t b b",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "obj-13",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        240,
                        85,
                        40.0,
                        22.0
                    ],
                    "text": "i",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "obj-14",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        240,
                        115,
                        40.0,
                        22.0
                    ],
                    "text": "+ 1",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "obj-15",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        285,
                        115,
                        58.0,
                        22.0
                    ],
                    "text": "% 1000",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "obj-16",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        285,
                        85,
                        51.0,
                        22.0
                    ],
                    "text": "t i i",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "outlet",
                    "id": "obj-17",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        15.0,
                        250.0,
                        30.0,
                        30.0
                    ],
                    "comment": "Left Out (Signal)"
                }
            },
            {
                "box": {
                    "maxclass": "outlet",
                    "id": "obj-18",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        690.0,
                        250.0,
                        30.0,
                        30.0
                    ],
                    "comment": "Right Out (Signal)"
                }
            },
            {
                "box": {
                    "maxclass": "comment",
                    "id": "obj-signature",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        780.0,
                        15.0,
                        400.0,
                        33.0
                    ],
                    "text": "br.repeater.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "comment",
                    "id": "obj-20",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        780.0,
                        60.0,
                        80.0,
                        20.0
                    ],
                    "text": "repeater",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "comment",
                    "id": "obj-21",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        780.0,
                        90.0,
                        400.0,
                        87.0
                    ],
                    "text": "Loops the last few seconds of what just happened. The input is always recorded (two recorders), so Repeat can grab the past at any moment. Everything happens in one gen~ (defaults come from its in @default). Grab is turned into a counter because a bang cannot enter a gen~: any new number means grab. The third outlet bangs on every grab (an event, so it gets its own plain bang outlet). Open the gen~ to read how the loop point stays seamless (two read heads with a pre-roll crossfade).",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-rt",
                    "maxclass": "newobj",
                    "text": "t i i i",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "int",
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        165.0,
                        55.0,
                        60.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-rch",
                    "maxclass": "newobj",
                    "text": "change",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        100.0,
                        190.0,
                        50.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-rsel",
                    "maxclass": "newobj",
                    "text": "sel 1",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "bang",
                        ""
                    ],
                    "patching_rect": [
                        100.0,
                        215.0,
                        40.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-gate",
                    "maxclass": "newobj",
                    "text": "gate",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        240.0,
                        190.0,
                        40.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-gout",
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        740.0,
                        250.0,
                        30.0,
                        30.0
                    ],
                    "index": 3,
                    "comment": "Grab (Bang): fires on every grab -- Repeat turned on, or Grab while repeating. Cable it into anything that should react (an envelope, a filter, another slot)"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-gc",
                    "maxclass": "comment",
                    "text": "Grab outlet: Repeat 0 -> 1 is a grab; Grab only counts while repeating (the gate is open while Repeat is 1)",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        300.0,
                        195.0,
                        420.0,
                        33.0
                    ],
                    "linecount": 2
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "source": [
                        "obj-4",
                        0
                    ],
                    "destination": [
                        "obj-12",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-13",
                        0
                    ],
                    "destination": [
                        "obj-14",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-14",
                        0
                    ],
                    "destination": [
                        "obj-15",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-15",
                        0
                    ],
                    "destination": [
                        "obj-16",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-16",
                        1
                    ],
                    "destination": [
                        "obj-13",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-16",
                        0
                    ],
                    "destination": [
                        "obj-11",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-1",
                        0
                    ],
                    "destination": [
                        "obj-11",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-2",
                        0
                    ],
                    "destination": [
                        "obj-11",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-5",
                        0
                    ],
                    "destination": [
                        "obj-11",
                        4
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-6",
                        0
                    ],
                    "destination": [
                        "obj-11",
                        5
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-7",
                        0
                    ],
                    "destination": [
                        "obj-11",
                        6
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-8",
                        0
                    ],
                    "destination": [
                        "obj-11",
                        7
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-9",
                        0
                    ],
                    "destination": [
                        "obj-11",
                        8
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-10",
                        0
                    ],
                    "destination": [
                        "obj-11",
                        9
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-11",
                        0
                    ],
                    "destination": [
                        "obj-17",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-11",
                        1
                    ],
                    "destination": [
                        "obj-18",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-3",
                        0
                    ],
                    "destination": [
                        "obj-rt",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-rt",
                        2
                    ],
                    "destination": [
                        "obj-11",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-rt",
                        1
                    ],
                    "destination": [
                        "obj-gate",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-rt",
                        0
                    ],
                    "destination": [
                        "obj-rch",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-rch",
                        0
                    ],
                    "destination": [
                        "obj-rsel",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-rsel",
                        0
                    ],
                    "destination": [
                        "obj-gout",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-12",
                        1
                    ],
                    "destination": [
                        "obj-13",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-12",
                        0
                    ],
                    "destination": [
                        "obj-gate",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-gate",
                        0
                    ],
                    "destination": [
                        "obj-gout",
                        0
                    ]
                }
            }
        ],
        "dependency_cache": [],
        "autosave": 0
    }
}