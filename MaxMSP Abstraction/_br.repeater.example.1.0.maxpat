{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 4,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [
            34.0,
            104.0,
            1500.0,
            680.0
        ],
        "description": "_br.repeater.example.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
        "boxes": [
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        15.0,
                        300.0,
                        20.0
                    ],
                    "text": "br.repeater"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-n1",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        45.0,
                        458.0,
                        60.0
                    ],
                    "text": "A repeater loops the last few seconds of what you just played. The input always passes through and is always recorded, so when you hear something worth keeping, press Repeat: the last Size ms loop, ending at the moment you pressed it."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-n2",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        120.0,
                        566.0,
                        60.0
                    ],
                    "text": "Two files, same DSP inside:\nbr.repeater.1.0 = core, no UI (in: L, R, Repeat, Grab, Size, Speed, Position, Crossfade, Mix, Mix Mode; out: L, R)\nbr.repeater.ui.1.0 = the same core with a panel and a State outlet"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-n3",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        195.0,
                        574.0,
                        47.0
                    ],
                    "text": "Grab (while repeating) loops the newest Size ms instead. Position jumps to a spot in the loop (0 = start, 1 = end) with a crossfade: no re-pitch, no click. Size moves the loop start; the end stays where you pressed. Speed -16..16: negative = backwards, above 1 gets gritty on purpose."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-n4",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        257.0,
                        603.0,
                        47.0
                    ],
                    "text": "Crossfade (5-250 ms) is every fade: the loop point, Repeat on/off, Grab and Position. Mix while repeating: 1 = only the loop, 0.5 = loop and input. Mix Mode says what you hear while NOT repeating: Thru = the input, Aux = silence."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-n5",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        319.0,
                        496.0,
                        47.0
                    ],
                    "text": "A: the UI. Click a recipe (Size, Speed, Position, Crossfade, Mix), then press Repeat. B: the core alone: Repeat switches on and off every 2.5 s on 600 ms loops, and a slow sine sweeps Speed between -1.5 and 1.5 (through 0, so it stops and turns around)."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-n6",
                    "linecount": 5,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        381.0,
                        506.0,
                        75.0
                    ],
                    "text": "State outlet: A's last outlet sends repeat, size, speed, position, crossfade, mix and mode as named messages when a control changes (Grab is an action, so it is not in State). Open p \"State outlet\" to see them routed by name. The LAST outlet (A) / third outlet (B) bangs on every grab: cable it into anything that should react."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-n7",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        471.0,
                        578.0,
                        33.0
                    ],
                    "text": "Pick a source in the menu (it starts Off). Outputs start muted at -70 dB: turn on audio, then raise ONE slider."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-n9",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        518.0,
                        300.0,
                        20.0
                    ],
                    "text": "By Brian Riordan. github.com/guaguanco127"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-signature",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        700.0,
                        15.0,
                        520.0,
                        33.0
                    ],
                    "text": "_br.repeater.example.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-menu",
                    "items": [
                        "Off",
                        ",",
                        "drum loop",
                        ",",
                        "Anton",
                        ",",
                        "drone (synth)",
                        ",",
                        "mic (adc~ 1)"
                    ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "int",
                        "",
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        660.0,
                        75.0,
                        150.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-menuc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        815.0,
                        75.0,
                        200.0,
                        20.0
                    ],
                    "text": "source: Off until you pick one"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-source",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "signal"
                    ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 4,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [
                            100.0,
                            100.0,
                            900.0,
                            480.0
                        ],
                        "boxes": [
                            {
                                "box": {
                                    "comment": "Source (Int) 0 Off, 1 drum loop, 2 Anton, 3 drone (synth), 4 mic (adc~ 1)",
                                    "id": "s-in",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        15.0,
                                        15.0,
                                        30.0,
                                        30.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-t",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [
                                        "int",
                                        "int",
                                        "int",
                                        "int"
                                    ],
                                    "patching_rect": [
                                        15.0,
                                        50.0,
                                        85.0,
                                        22.0
                                    ],
                                    "text": "t i i i i"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-lb",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        400.0,
                                        15.0,
                                        60.0,
                                        22.0
                                    ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-lbt",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "bang",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        400.0,
                                        45.0,
                                        40.0,
                                        22.0
                                    ],
                                    "text": "t b b"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-note1",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        15.0,
                                        80.0,
                                        260.0,
                                        20.0
                                    ],
                                    "text": "drumLoop.aif and anton.aif ship with Max"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-m1",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        15.0,
                                        110.0,
                                        180.0,
                                        22.0
                                    ],
                                    "text": "open drumLoop.aif, loop 1, 1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-p1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        15.0,
                                        140.0,
                                        79.0,
                                        22.0
                                    ],
                                    "text": "sfplay~ 1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-m2",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        210.0,
                                        110.0,
                                        160.0,
                                        22.0
                                    ],
                                    "text": "open anton.aif, loop 1, 1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-p2",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        210.0,
                                        140.0,
                                        79.0,
                                        22.0
                                    ],
                                    "text": "sfplay~ 1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-note2",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        400.0,
                                        80.0,
                                        440.0,
                                        20.0
                                    ],
                                    "text": "drone: a held chord, so the shifted partials and the climbing echoes are easy to hear"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-saw1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        400.0,
                                        140.0,
                                        60.0,
                                        22.0
                                    ],
                                    "text": "saw~ 110"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-saw2",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        470.0,
                                        140.0,
                                        72.0,
                                        22.0
                                    ],
                                    "text": "saw~ 110.7"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-saw3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        555.0,
                                        140.0,
                                        72.0,
                                        22.0
                                    ],
                                    "text": "saw~ 164.8"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-sum",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        400.0,
                                        175.0,
                                        52.0,
                                        22.0
                                    ],
                                    "text": "*~ 0.25"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-sumc",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        460.0,
                                        175.0,
                                        400.0,
                                        20.0
                                    ],
                                    "text": "three saws sum into one inlet; 0.25 keeps the chord near 0.75 peak"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-adc",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        700.0,
                                        140.0,
                                        50.0,
                                        22.0
                                    ],
                                    "text": "adc~ 1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-eq1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        15.0,
                                        230.0,
                                        40.0,
                                        22.0
                                    ],
                                    "text": "== 1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-f1",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        15.0,
                                        260.0,
                                        45.0,
                                        22.0
                                    ],
                                    "text": "$1 20"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-l1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        15.0,
                                        290.0,
                                        40.0,
                                        22.0
                                    ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-g1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        15.0,
                                        330.0,
                                        40.0,
                                        22.0
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-eq2",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        210.0,
                                        230.0,
                                        40.0,
                                        22.0
                                    ],
                                    "text": "== 2"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-f2",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        210.0,
                                        260.0,
                                        45.0,
                                        22.0
                                    ],
                                    "text": "$1 20"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-l2",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        210.0,
                                        290.0,
                                        40.0,
                                        22.0
                                    ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-g2",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        210.0,
                                        330.0,
                                        40.0,
                                        22.0
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-eq3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        400.0,
                                        230.0,
                                        40.0,
                                        22.0
                                    ],
                                    "text": "== 3"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-f3",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        400.0,
                                        260.0,
                                        45.0,
                                        22.0
                                    ],
                                    "text": "$1 20"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-l3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        400.0,
                                        290.0,
                                        40.0,
                                        22.0
                                    ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-g3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        400.0,
                                        330.0,
                                        40.0,
                                        22.0
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-eq4",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        700.0,
                                        230.0,
                                        40.0,
                                        22.0
                                    ],
                                    "text": "== 4"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-f4",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        700.0,
                                        260.0,
                                        45.0,
                                        22.0
                                    ],
                                    "text": "$1 20"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-l4",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        700.0,
                                        290.0,
                                        40.0,
                                        22.0
                                    ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-g4",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        700.0,
                                        330.0,
                                        40.0,
                                        22.0
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-outL",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        15.0,
                                        380.0,
                                        50.0,
                                        22.0
                                    ],
                                    "text": "*~ 0.7"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-outR",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        210.0,
                                        380.0,
                                        50.0,
                                        22.0
                                    ],
                                    "text": "*~ 0.7"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-note3",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        300.0,
                                        380.0,
                                        560.0,
                                        33.0
                                    ],
                                    "text": "each source has its own 20 ms fade: switching never clicks (selector~ would). 0 = Off: every fade closes. All four are mono, sent to both sides"
                                }
                            },
                            {
                                "box": {
                                    "comment": "Left Source (Signal)",
                                    "id": "s-o1",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        15.0,
                                        430.0,
                                        30.0,
                                        30.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "Right Source (Signal)",
                                    "id": "s-o2",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        210.0,
                                        430.0,
                                        30.0,
                                        30.0
                                    ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [
                                        "s-g4",
                                        0
                                    ],
                                    "source": [
                                        "s-adc",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-f1",
                                        0
                                    ],
                                    "source": [
                                        "s-eq1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-f2",
                                        0
                                    ],
                                    "source": [
                                        "s-eq2",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-f3",
                                        0
                                    ],
                                    "source": [
                                        "s-eq3",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-f4",
                                        0
                                    ],
                                    "source": [
                                        "s-eq4",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-l1",
                                        0
                                    ],
                                    "source": [
                                        "s-f1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-l2",
                                        0
                                    ],
                                    "source": [
                                        "s-f2",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-l3",
                                        0
                                    ],
                                    "source": [
                                        "s-f3",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-l4",
                                        0
                                    ],
                                    "source": [
                                        "s-f4",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-outL",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "s-g1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-outR",
                                        0
                                    ],
                                    "order": 0,
                                    "source": [
                                        "s-g1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-outL",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "s-g2",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-outR",
                                        0
                                    ],
                                    "order": 0,
                                    "source": [
                                        "s-g2",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-outL",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "s-g3",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-outR",
                                        0
                                    ],
                                    "order": 0,
                                    "source": [
                                        "s-g3",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-outL",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "s-g4",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-outR",
                                        0
                                    ],
                                    "order": 0,
                                    "source": [
                                        "s-g4",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-t",
                                        0
                                    ],
                                    "source": [
                                        "s-in",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-g1",
                                        1
                                    ],
                                    "source": [
                                        "s-l1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-g2",
                                        1
                                    ],
                                    "source": [
                                        "s-l2",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-g3",
                                        1
                                    ],
                                    "source": [
                                        "s-l3",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-g4",
                                        1
                                    ],
                                    "source": [
                                        "s-l4",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-lbt",
                                        0
                                    ],
                                    "source": [
                                        "s-lb",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-m1",
                                        0
                                    ],
                                    "source": [
                                        "s-lbt",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-m2",
                                        0
                                    ],
                                    "source": [
                                        "s-lbt",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-p1",
                                        0
                                    ],
                                    "source": [
                                        "s-m1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-p2",
                                        0
                                    ],
                                    "source": [
                                        "s-m2",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-o1",
                                        0
                                    ],
                                    "source": [
                                        "s-outL",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-o2",
                                        0
                                    ],
                                    "source": [
                                        "s-outR",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-g1",
                                        0
                                    ],
                                    "source": [
                                        "s-p1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-g2",
                                        0
                                    ],
                                    "source": [
                                        "s-p2",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-sum",
                                        0
                                    ],
                                    "source": [
                                        "s-saw1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-sum",
                                        0
                                    ],
                                    "source": [
                                        "s-saw2",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-sum",
                                        0
                                    ],
                                    "source": [
                                        "s-saw3",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-g3",
                                        0
                                    ],
                                    "source": [
                                        "s-sum",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-eq1",
                                        0
                                    ],
                                    "source": [
                                        "s-t",
                                        3
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-eq2",
                                        0
                                    ],
                                    "source": [
                                        "s-t",
                                        2
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-eq3",
                                        0
                                    ],
                                    "source": [
                                        "s-t",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-eq4",
                                        0
                                    ],
                                    "source": [
                                        "s-t",
                                        0
                                    ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [
                        660.0,
                        105.0,
                        120.0,
                        22.0
                    ],
                    "text": "p source"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-recc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        700.0,
                        144.0,
                        380.0,
                        20.0
                    ],
                    "text": "recipes for A (click one): Size Speed Position Crossfade Mix"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-unpack",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [
                        "float",
                        "float",
                        "float",
                        "float",
                        "float"
                    ],
                    "patching_rect": [
                        660.0,
                        325.0,
                        200.0,
                        22.0
                    ],
                    "text": "unpack 0. 0. 0. 0. 0."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-unpackc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        865.0,
                        325.0,
                        130.0,
                        20.0
                    ],
                    "text": "-> A inlets 5 to 9"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-alabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        925.0,
                        360.0,
                        160.0,
                        20.0
                    ],
                    "text": "A: br.repeater.ui.1.0"
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-a",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "br.repeater.ui.1.0.maxpat",
                    "numinlets": 10,
                    "numoutlets": 4,
                    "offset": [
                        0.0,
                        0.0
                    ],
                    "outlettype": [
                        "signal",
                        "signal",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        660.0,
                        360.0,
                        256.0,
                        78.0
                    ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-gaina",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [
                        "signal",
                        "signal",
                        "",
                        "float",
                        "list"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        660.0,
                        460.0,
                        48.0,
                        136.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                -70.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "A out",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "A",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "A out"
                }
            },
            {
                "box": {
                    "id": "obj-gainb",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [
                        "signal",
                        "signal",
                        "",
                        "float",
                        "list"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        1100.0,
                        460.0,
                        48.0,
                        136.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                -70.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "B out",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "B",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "B out"
                }
            },
            {
                "box": {
                    "id": "obj-dactog",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        720.0,
                        460.0,
                        24.0,
                        24.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-dactogc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        748.0,
                        462.0,
                        80.0,
                        20.0
                    ],
                    "text": "audio on/off"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-dac",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [
                        660.0,
                        620.0,
                        60.0,
                        22.0
                    ],
                    "text": "dac~ 1 2"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-state",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 4,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [
                            100.0,
                            100.0,
                            560.0,
                            260.0
                        ],
                        "boxes": [
                            {
                                "box": {
                                    "comment": "State from A",
                                    "id": "st-in",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        30.0,
                                        95.0,
                                        30.0,
                                        30.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "st-a",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        70.0,
                                        100.0,
                                        58.0,
                                        20.0
                                    ],
                                    "text": "A (UI)"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "st-c",
                                    "linecount": 4,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        15.0,
                                        520.0,
                                        61.0
                                    ],
                                    "text": "br.repeater.ui.1.0 sends its state out of its LAST outlet as named messages, the moment a control changes: repeat, size, speed, position, crossfade, mix, mode. Route them by name, not by position. (Grab is an action, not a setting, so it is not in State.)"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "st-route",
                                    "maxclass": "newobj",
                                    "numinlets": 8,
                                    "numoutlets": 8,
                                    "outlettype": [
                                        "",
                                        "",
                                        "",
                                        "",
                                        "",
                                        "",
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        30.0,
                                        135.0,
                                        450.0,
                                        22.0
                                    ],
                                    "text": "route repeat size speed position crossfade mix mode"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "st-n0",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        30.0,
                                        170.0,
                                        56.0,
                                        22.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "st-l0",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        195.0,
                                        64.0,
                                        20.0
                                    ],
                                    "text": "repeat"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "format": 6,
                                    "id": "st-n1",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        94.0,
                                        170.0,
                                        56.0,
                                        22.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "st-l1",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        94.0,
                                        195.0,
                                        64.0,
                                        20.0
                                    ],
                                    "text": "size"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "format": 6,
                                    "id": "st-n2",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        158.0,
                                        170.0,
                                        56.0,
                                        22.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "st-l2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        158.0,
                                        195.0,
                                        64.0,
                                        20.0
                                    ],
                                    "text": "speed"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "format": 6,
                                    "id": "st-n3",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        222.0,
                                        170.0,
                                        56.0,
                                        22.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "st-l3",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        222.0,
                                        195.0,
                                        64.0,
                                        20.0
                                    ],
                                    "text": "position"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "format": 6,
                                    "id": "st-n4",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        286.0,
                                        170.0,
                                        56.0,
                                        22.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "st-l4",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        286.0,
                                        195.0,
                                        64.0,
                                        20.0
                                    ],
                                    "text": "crossfade"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "format": 6,
                                    "id": "st-n5",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        350.0,
                                        170.0,
                                        56.0,
                                        22.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "st-l5",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        350.0,
                                        195.0,
                                        64.0,
                                        20.0
                                    ],
                                    "text": "mix"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "st-n6",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        414.0,
                                        170.0,
                                        56.0,
                                        22.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "st-l6",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        414.0,
                                        195.0,
                                        64.0,
                                        20.0
                                    ],
                                    "text": "mode"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "source": [
                                        "st-in",
                                        0
                                    ],
                                    "destination": [
                                        "st-route",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "st-route",
                                        0
                                    ],
                                    "destination": [
                                        "st-n0",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "st-route",
                                        1
                                    ],
                                    "destination": [
                                        "st-n1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "st-route",
                                        2
                                    ],
                                    "destination": [
                                        "st-n2",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "st-route",
                                        3
                                    ],
                                    "destination": [
                                        "st-n3",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "st-route",
                                        4
                                    ],
                                    "destination": [
                                        "st-n4",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "st-route",
                                        5
                                    ],
                                    "destination": [
                                        "st-n5",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "st-route",
                                        6
                                    ],
                                    "destination": [
                                        "st-n6",
                                        0
                                    ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [
                        875.0,
                        400.0,
                        110.0,
                        22.0
                    ],
                    "text": "p \"State outlet\""
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-blabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1100.0,
                        145.0,
                        400.0,
                        20.0
                    ],
                    "text": "B: the core alone, Repeat on/off every 2.5 s, Speed swept by a slow sine"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-blb",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        1300.0,
                        175.0,
                        60.0,
                        22.0
                    ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-bdl",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1300.0,
                        200.0,
                        60.0,
                        22.0
                    ],
                    "text": "deferlow"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-bnote",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1435.0,
                        400.0,
                        40.0,
                        20.0
                    ],
                    "text": "core"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-b",
                    "maxclass": "newobj",
                    "numinlets": 10,
                    "numoutlets": 3,
                    "outlettype": [
                        "signal",
                        "signal",
                        ""
                    ],
                    "patching_rect": [
                        1100.0,
                        400.0,
                        330.0,
                        22.0
                    ],
                    "text": "br.repeater.1.0"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-recl0",
                    "maxclass": "comment",
                    "text": "stutter (short, sharp)",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        660.0,
                        170.0,
                        170,
                        20.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-rec0",
                    "maxclass": "message",
                    "text": "120 1 0 8 1",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        855.0,
                        169.0,
                        130.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-recl1",
                    "maxclass": "comment",
                    "text": "half-speed tape",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        660.0,
                        195.0,
                        170,
                        20.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-rec1",
                    "maxclass": "message",
                    "text": "2000 0.5 0 40 1",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        855.0,
                        194.0,
                        130.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-recl2",
                    "maxclass": "comment",
                    "text": "backwards",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        660.0,
                        220.0,
                        170,
                        20.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-rec2",
                    "maxclass": "message",
                    "text": "1500 -1 0 40 1",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        855.0,
                        219.0,
                        130.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-recl3",
                    "maxclass": "comment",
                    "text": "chipmunk zip (gritty)",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        660.0,
                        245.0,
                        170,
                        20.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-rec3",
                    "maxclass": "message",
                    "text": "800 8 0 30 1",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        855.0,
                        244.0,
                        130.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-recl4",
                    "maxclass": "comment",
                    "text": "ghost (loop + input)",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        660.0,
                        270.0,
                        170,
                        20.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-rec4",
                    "maxclass": "message",
                    "text": "3000 1 0 80 0.5",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        855.0,
                        269.0,
                        130.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-recl5",
                    "maxclass": "comment",
                    "text": "back to the defaults",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        660.0,
                        295.0,
                        170,
                        20.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-rec5",
                    "maxclass": "message",
                    "text": "8000 1 0 40 1",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        855.0,
                        294.0,
                        130.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-bmm",
                    "maxclass": "newobj",
                    "text": "loadmess 1",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1100.0,
                        175.0,
                        75.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-bmet",
                    "maxclass": "newobj",
                    "text": "metro 2500",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        1100.0,
                        200.0,
                        70.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-btog",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        1100.0,
                        230.0,
                        24.0,
                        24.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-btogc",
                    "maxclass": "comment",
                    "text": "Repeat (flips every 2.5 s)",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1128.0,
                        232.0,
                        170,
                        20.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-bt",
                    "maxclass": "newobj",
                    "text": "t b",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        1300.0,
                        225.0,
                        30.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-bv0",
                    "maxclass": "message",
                    "text": "600",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1300.0,
                        250.0,
                        36.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-bvc",
                    "maxclass": "comment",
                    "text": "600 -> Size (after load, once gen~ is ready)",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1340.0,
                        250.0,
                        280,
                        20.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-blfo",
                    "maxclass": "newobj",
                    "text": "cycle~ 0.05",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        1100.0,
                        300.0,
                        75.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-blfom",
                    "maxclass": "newobj",
                    "text": "*~ 1.5",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        1100.0,
                        330.0,
                        50.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-blfoc",
                    "maxclass": "comment",
                    "text": "Speed -1.5..1.5, one sweep every 20 s (signal into inlet 6)",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1160.0,
                        330.0,
                        360,
                        20.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-gb0",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        990.0,
                        400.0,
                        24.0,
                        24.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-gbc0",
                    "maxclass": "comment",
                    "text": "A grab",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1018.0,
                        402.0,
                        60.0,
                        20.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-gb1",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        1480.0,
                        430.0,
                        24.0,
                        24.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-gbc1",
                    "maxclass": "comment",
                    "text": "B grab",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1508.0,
                        432.0,
                        60.0,
                        20.0
                    ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "source": [
                        "obj-menu",
                        0
                    ],
                    "destination": [
                        "obj-source",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-source",
                        0
                    ],
                    "destination": [
                        "obj-a",
                        0
                    ],
                    "order": 1
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-source",
                        1
                    ],
                    "destination": [
                        "obj-a",
                        1
                    ],
                    "order": 1
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-source",
                        0
                    ],
                    "destination": [
                        "obj-b",
                        0
                    ],
                    "order": 0
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-source",
                        1
                    ],
                    "destination": [
                        "obj-b",
                        1
                    ],
                    "order": 0
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-rec0",
                        0
                    ],
                    "destination": [
                        "obj-unpack",
                        0
                    ],
                    "hidden": 1
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-rec1",
                        0
                    ],
                    "destination": [
                        "obj-unpack",
                        0
                    ],
                    "hidden": 1
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-rec2",
                        0
                    ],
                    "destination": [
                        "obj-unpack",
                        0
                    ],
                    "hidden": 1
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-rec3",
                        0
                    ],
                    "destination": [
                        "obj-unpack",
                        0
                    ],
                    "hidden": 1
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-rec4",
                        0
                    ],
                    "destination": [
                        "obj-unpack",
                        0
                    ],
                    "hidden": 1
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-rec5",
                        0
                    ],
                    "destination": [
                        "obj-unpack",
                        0
                    ],
                    "hidden": 1
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-unpack",
                        0
                    ],
                    "destination": [
                        "obj-a",
                        4
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-unpack",
                        1
                    ],
                    "destination": [
                        "obj-a",
                        5
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-unpack",
                        2
                    ],
                    "destination": [
                        "obj-a",
                        6
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-unpack",
                        3
                    ],
                    "destination": [
                        "obj-a",
                        7
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-unpack",
                        4
                    ],
                    "destination": [
                        "obj-a",
                        8
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-a",
                        0
                    ],
                    "destination": [
                        "obj-gaina",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-a",
                        1
                    ],
                    "destination": [
                        "obj-gaina",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-a",
                        2
                    ],
                    "destination": [
                        "obj-state",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-b",
                        0
                    ],
                    "destination": [
                        "obj-gainb",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-b",
                        1
                    ],
                    "destination": [
                        "obj-gainb",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-gaina",
                        0
                    ],
                    "destination": [
                        "obj-dac",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-gaina",
                        1
                    ],
                    "destination": [
                        "obj-dac",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-gainb",
                        0
                    ],
                    "destination": [
                        "obj-dac",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-gainb",
                        1
                    ],
                    "destination": [
                        "obj-dac",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-dactog",
                        0
                    ],
                    "destination": [
                        "obj-dac",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-bmm",
                        0
                    ],
                    "destination": [
                        "obj-bmet",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-bmet",
                        0
                    ],
                    "destination": [
                        "obj-btog",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-btog",
                        0
                    ],
                    "destination": [
                        "obj-b",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-blb",
                        0
                    ],
                    "destination": [
                        "obj-bdl",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-bdl",
                        0
                    ],
                    "destination": [
                        "obj-bt",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-bt",
                        0
                    ],
                    "destination": [
                        "obj-bv0",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-bv0",
                        0
                    ],
                    "destination": [
                        "obj-b",
                        4
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-blfo",
                        0
                    ],
                    "destination": [
                        "obj-blfom",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-blfom",
                        0
                    ],
                    "destination": [
                        "obj-b",
                        5
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-a",
                        3
                    ],
                    "destination": [
                        "obj-gb0",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-b",
                        2
                    ],
                    "destination": [
                        "obj-gb1",
                        0
                    ]
                }
            }
        ],
        "parameters": {
            "obj-a::ctl-repeat": [
                "Repeat",
                "Repeat",
                0
            ],
            "obj-a::ctl-grab": [
                "Grab",
                "Grab",
                0
            ],
            "obj-a::ctl-size": [
                "Size",
                "Size",
                0
            ],
            "obj-a::ctl-speed": [
                "Speed",
                "Speed",
                0
            ],
            "obj-a::ctl-position": [
                "Position",
                "Position",
                0
            ],
            "obj-a::ctl-crossfade": [
                "Crossfade",
                "Xfade",
                0
            ],
            "obj-a::ctl-mix": [
                "Mix",
                "Mix",
                0
            ],
            "obj-a::ctl-mode": [
                "Mix Mode",
                "Mix Mode",
                0
            ],
            "obj-gaina": [
                "A out",
                "A",
                0
            ],
            "obj-gainb": [
                "B out",
                "B",
                0
            ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-"
                    ],
                    "buttons": [
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-"
                    ]
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}