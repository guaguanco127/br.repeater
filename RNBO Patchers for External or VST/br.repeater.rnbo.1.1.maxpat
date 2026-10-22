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
            134.0,
            159.0,
            820.0,
            620.0
        ],
        "description": "br.repeater.rnbo.1.1 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
        "autosave": 0,
        "parameters": {
            "obj-gain": [
                "Out",
                "Out",
                0
            ],
            "inherited_shortname": 1
        },
        "boxes": [
            {
                "box": {
                    "id": "obj-signature",
                    "maxclass": "comment",
                    "text": "br.repeater.rnbo.1.1 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        250.0,
                        15.0,
                        520.0,
                        33.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "linecount": 2
                }
            },
            {
                "box": {
                    "id": "obj-intro",
                    "maxclass": "comment",
                    "text": "RNBO version of br.repeater.1.1 (same gen~ code). Drop a sample onto the playlist~, start it, raise the slider slowly. Repeat 1 loops the last Size ms; Grab (button) loops the newest audio while repeating; Position jumps; Speed -16..16.",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        250.0,
                        55.0,
                        520.0,
                        61.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "linecount": 4
                }
            },
            {
                "box": {
                    "id": "obj-drop",
                    "maxclass": "comment",
                    "text": "Drop sample into here",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        30.0,
                        15.0,
                        150.0,
                        20.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "obj-pl",
                    "maxclass": "playlist~",
                    "mode": "basic",
                    "quality": "basic",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [
                        "signal",
                        "signal",
                        "signal",
                        "",
                        "dictionary"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        30.0,
                        40.0,
                        150.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-gain",
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
                    "lastchannelcount": 0,
                    "patching_rect": [
                        30.0,
                        380.0,
                        48.0,
                        136.0
                    ],
                    "varname": "live.gain~",
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                -70.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Out",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Out",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    }
                }
            },
            {
                "box": {
                    "id": "obj-dac",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [
                        30.0,
                        530.0,
                        45.0,
                        45.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-attr0",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "attr": "Repeat",
                    "parameter_enable": 0,
                    "patching_rect": [
                        250.0,
                        130.0,
                        180.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-attr1",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "attr": "Grab",
                    "parameter_enable": 0,
                    "patching_rect": [
                        250.0,
                        154.0,
                        180.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-attr2",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "attr": "Size",
                    "parameter_enable": 0,
                    "patching_rect": [
                        250.0,
                        178.0,
                        180.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-attr3",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "attr": "Speed",
                    "parameter_enable": 0,
                    "patching_rect": [
                        250.0,
                        202.0,
                        180.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-attr4",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "attr": "Position",
                    "parameter_enable": 0,
                    "patching_rect": [
                        450.0,
                        130.0,
                        180.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-attr5",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "attr": "Crossfade",
                    "parameter_enable": 0,
                    "patching_rect": [
                        450.0,
                        154.0,
                        180.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-attr6",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "attr": "Mix",
                    "parameter_enable": 0,
                    "patching_rect": [
                        450.0,
                        178.0,
                        180.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-attr7",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "attr": "MixMode",
                    "parameter_enable": 0,
                    "patching_rect": [
                        450.0,
                        202.0,
                        180.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-grab",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        650.0,
                        240.0,
                        24.0,
                        24.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-grabc",
                    "maxclass": "comment",
                    "text": "Grab (bang -> inlet 4)",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        678.0,
                        242.0,
                        140.0,
                        20.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "autosave": 1,
                    "id": "obj-rnbo",
                    "maxclass": "newobj",
                    "numinlets": 10,
                    "numoutlets": 3,
                    "outlettype": [
                        "signal",
                        "signal",
                        "list"
                    ],
                    "patching_rect": [
                        30.0,
                        330.0,
                        700.0,
                        22.0
                    ],
                    "rnboversion": "1.4.3",
                    "text": "rnbo~",
                    "varname": "rnbo~",
                    "inletInfo": {
                        "IOInfo": [
                            {
                                "type": "signal",
                                "index": 1,
                                "tag": "in1",
                                "comment": "Left In (Signal)"
                            },
                            {
                                "type": "signal",
                                "index": 2,
                                "tag": "in2",
                                "comment": "Right In (Signal)"
                            },
                            {
                                "type": "event",
                                "index": 3,
                                "tag": "in3",
                                "comment": "Repeat (Int) 1 = loop the last Size ms (the loop ends at the moment you press it); 0 = back to the input. Fades over Crossfade. Default 0"
                            },
                            {
                                "type": "event",
                                "index": 4,
                                "tag": "in4",
                                "comment": "Grab (Bang or Grab param 0 -> 1) while repeating: loop the newest Size ms instead (crossfades over). Ignored while not repeating"
                            },
                            {
                                "type": "event",
                                "index": 5,
                                "tag": "in5",
                                "comment": "Size (Signal/Float) 10 - 10000 ms. The loop length; changing it moves the loop start; the end stays at the grab. Works while looping. Default 8000"
                            },
                            {
                                "type": "event",
                                "index": 6,
                                "tag": "in6",
                                "comment": "Speed (Signal/Float) -16 - 16. 1 = normal; 0.5 = half speed (an octave down); negative = backwards; 0 = stopped. Above 1 it is read without anti-aliasing (gritty). Default 1"
                            },
                            {
                                "type": "event",
                                "index": 7,
                                "tag": "in7",
                                "comment": "Position (Float) 0 - 1: jump-to. 0 = loop start; 1 = loop end. A new value jumps there with a crossfade (no re-pitch). Repeat and Grab also start from here. Default 0"
                            },
                            {
                                "type": "event",
                                "index": 8,
                                "tag": "in8",
                                "comment": "Crossfade (Signal/Float) 5 - 250 ms. Used for every fade: the loop point; Repeat on/off and Grab. Default 40"
                            },
                            {
                                "type": "event",
                                "index": 9,
                                "tag": "in9",
                                "comment": "Mix (Signal/Float) 0 - 1 while repeating: 1 = only the loop; 0.5 = loop and input equal (equal power). Default 1"
                            },
                            {
                                "type": "event",
                                "index": 10,
                                "tag": "in10",
                                "comment": "Mix Mode (Int) 0 = Thru; 1 = Aux: what you hear while NOT repeating. Thru = the input; Aux = silence. Default 0"
                            }
                        ]
                    },
                    "outletInfo": {
                        "IOInfo": [
                            {
                                "type": "signal",
                                "index": 1,
                                "tag": "out1",
                                "comment": "Left Out (Signal)"
                            },
                            {
                                "type": "signal",
                                "index": 2,
                                "tag": "out2",
                                "comment": "Right Out (Signal)"
                            }
                        ]
                    },
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_invisible": 1,
                            "parameter_longname": "rnbo~",
                            "parameter_modmode": 0,
                            "parameter_shortname": "rnbo~",
                            "parameter_type": 3
                        }
                    },
                    "saved_object_attributes": {
                        "optimization": "O1",
                        "parameter_enable": 1,
                        "uuid": "3be7540e-82fa-413c-af94-ee6eda02e9d3"
                    },
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 4,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "rnbo",
                        "rect": [
                            60.0,
                            100.0,
                            1700.0,
                            560.0
                        ],
                        "default_fontname": "Lato",
                        "title": "untitled",
                        "boxes": [
                            {
                                "box": {
                                    "id": "r-in1",
                                    "maxclass": "newobj",
                                    "text": "in~ 1 @comment \"Left In (Signal)\"",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        30.0,
                                        20.0,
                                        180.0,
                                        38.0
                                    ],
                                    "rnbo_classname": "in~",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "in~_r-in1",
                                    "linecount": 2
                                }
                            },
                            {
                                "box": {
                                    "id": "r-in2",
                                    "maxclass": "newobj",
                                    "text": "in~ 2 @comment \"Right In (Signal)\"",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        230.0,
                                        20.0,
                                        180.0,
                                        38.0
                                    ],
                                    "rnbo_classname": "in~",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 2,
                                    "rnbo_uniqueid": "in~_r-in2",
                                    "linecount": 2
                                }
                            },
                            {
                                "box": {
                                    "id": "r-gen",
                                    "maxclass": "newobj",
                                    "numinlets": 10,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        30.0,
                                        330.0,
                                        2000.0,
                                        23.0
                                    ],
                                    "text": "gen~ @title br.repeater.1.1",
                                    "rnbo_classname": "gen~",
                                    "rnbo_extra_attributes": {
                                        "exposeparams": 0
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "br.repeater.1.1",
                                    "varname": "br.repeater.1.1",
                                    "genpatcher": {
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
                                                87.0,
                                                1307.0,
                                                883.0
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
                                                            141.0,
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
                                                            176.0,
                                                            20.0,
                                                            143.0,
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
                                                            334.0,
                                                            20.0,
                                                            200.0,
                                                            35.0
                                                        ],
                                                        "text": "in 3 @comment repeat @default 0 @min 0 @max 1",
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "linecount": 2
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
                                                            549.0,
                                                            20.0,
                                                            200.0,
                                                            35.0
                                                        ],
                                                        "text": "in 4 @comment grab count (any change = grab) @default 0",
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "linecount": 2
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
                                                            764.0,
                                                            20.0,
                                                            200.0,
                                                            35.0
                                                        ],
                                                        "text": "in 5 @comment size ms @default 8000 @min 10 @max 10000",
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "linecount": 2
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
                                                            979.0,
                                                            20.0,
                                                            200.0,
                                                            35.0
                                                        ],
                                                        "text": "in 6 @comment speed @default 1 @min -16 @max 16",
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "linecount": 2
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
                                                            627.2777777777778,
                                                            143.0,
                                                            200.0,
                                                            35.0
                                                        ],
                                                        "text": "in 7 @comment position (jump-to) @default 0 @min 0 @max 1",
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "linecount": 2
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
                                                            842.2777777777778,
                                                            143.0,
                                                            200.0,
                                                            35.0
                                                        ],
                                                        "text": "in 8 @comment crossfade ms @default 40 @min 5 @max 250",
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "linecount": 2
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
                                                            1057.2777777777778,
                                                            143.0,
                                                            200.0,
                                                            35.0
                                                        ],
                                                        "text": "in 9 @comment mix @default 1 @min 0 @max 1",
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "linecount": 2
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
                                                            1051.0,
                                                            242.0,
                                                            200.0,
                                                            35.0
                                                        ],
                                                        "text": "in 10 @comment mix mode @default 0 @min 0 @max 1",
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "linecount": 2
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
                                                            302.0,
                                                            1050.0,
                                                            610.0
                                                        ],
                                                        "parameter_enable": 0,
                                                        "code": "// br.repeater.1.1 -- stereo repeater: loop the last few seconds of what just happened\n// The input always passes through and is always recorded. Repeat 1 loops the most recent Size ms\n// (the loop ENDS at the moment you pressed Repeat). Speed, Position and Size all work while it loops.\n// Two recorders (A and B), so a new grab never has to wait: both record all the time, except the one\n// being looped, which freezes (after 1 s more, see post-roll below). Grab again while looping and the\n// other recorder (which kept recording) becomes the loop; the old one starts recording again once the\n// crossfade to the new loop is done.\n// No dip at the loop point: two read heads. Shortly before the playing head reaches the end of the loop,\n// a second head starts a little BEFORE the loop start (pre-roll) and they crossfade (equal power).\n// The second head reaches the loop start exactly when the first one reaches the end, so the sound runs\n// on into the audio that originally led into the start. Playing backwards it is the mirror image: the\n// new head starts a little AFTER the loop end, which is why the looped recorder keeps recording 1 s\n// past the grab (post-roll) before it freezes.\n// Position jumps the playhead: the idle head starts at the new spot and the two crossfade (no re-pitch,\n// no click). While Position keeps moving, each jump waits for the previous crossfade and then goes to the\n// newest Position. Repeat (and Grab) start playing from Position too.\n// Size changes move the loop START (the end stays at the grab moment). A playhead that ends up outside\n// the new loop crossfades back in; one that is still inside keeps playing.\n// Crossfade (5-250 ms) is used for every fade: loop point, Repeat on/off, re-grab, Position, Size jumps.\n// If the loop is short, the loop-point crossfade shrinks to half the loop; above 4x speed it shrinks to fit\n// the 1 s pre/post-roll. Speed above 1 is read without anti-aliasing (gritty on purpose).\n// A recorder that froze has a gap in its history, so right after a re-grab it may hold less than Size:\n// the loop is then as long as the recording that has no gap.\n// Repeat off: the loop fades out; when it is silent the heads stop (only recording runs).\n// Mix Mode: Thru = the input passes while not repeating, Aux = silent while not repeating.\n// in1 / in2 audio L / R, in3 repeat 0/1, in4 grab (any change = grab again while repeating),\n// in5 size ms 10..10000, in6 speed -16..16, in7 position 0..1 (0 = loop start, 1 = loop end),\n// in8 crossfade ms 5..250, in9 mix 0..1 (1 = only the loop while repeating), in10 mix mode 0 Thru / 1 Aux\n// out1 / out2 audio L / R\n\nData ring(2400000, 4);   // 12.5 s at 192 kHz; channels 0/1 = recorder A L/R, 2/3 = recorder B L/R\nHistory wp(0);\nHistory rec0(1);\nHistory rec1(1);\nHistory pw0(0);\nHistory pw1(0);\nHistory fill0(2400000);\nHistory fill1(2400000);\nHistory anc0(0);\nHistory anc1(0);\nHistory av0(0);\nHistory av1(0);\nHistory src(0);\nHistory playing(0);\nHistory ws_s(0);\nHistory hb0(0);\nHistory hb1(0);\nHistory hr0(0);\nHistory hr1(0);\nHistory hdir(0);\nHistory hxf(0);\nHistory xstep(1);\nHistory pend(0);\nHistory want(0);\nHistory wanc(-1);\nHistory wring(0);\nHistory wfill(0);\nHistory prevrep(0);\nHistory prevgrab(0);\nHistory sp_s(1);\nHistory sp2_s(1);\nHistory jpos(0);\nHistory jwant(0);\nHistory mx_s(1);\nHistory md_s(0);\nHistory init(0);\n\nN = 2400000;\npost = min(mstosamps(1000), 400000);\nmaxl = mstosamps(10000);\nc10 = 1 - exp(-1 / max(1, mstosamps(10)));\nc20 = 1 - exp(-1 / max(1, mstosamps(20)));\nc30 = 1 - exp(-1 / max(1, mstosamps(30)));\n\n// read every History into a local first; they are written back at the very end\nw = wp;\nr0 = rec0;\nr1 = rec1;\np0 = pw0;\np1 = pw1;\nf0 = fill0;\nf1 = fill1;\na0 = anc0;\na1 = anc1;\nv0 = av0;\nv1 = av1;\ns = src;\npl = playing;\nws = ws_s;\nb0 = hb0;\nb1 = hb1;\ng0 = hr0;\ng1 = hr1;\ndir = hdir;\nxf = hxf;\nxs = xstep;\npd = pend;\nwt = want;\nwa = wanc;\nwn = wring;\nwf = wfill;\npr = prevrep;\npg = prevgrab;\nsp = sp_s;\nsp2 = sp2_s;\njp = jpos;\njw = jwant;\nmx = mx_s;\nmd = md_s;\n\nif (init < 0.5) {\n\t// first sample: start the smoothed values at their targets, and ignore whatever grab count is there\n\tsp = clip(in6, -16, 16);\n\tsp2 = sp;\n\tjp = clip(in7, 0, 1);\n\tmx = clip(in9, 0, 1);\n\tmd = clip(in10, 0, 1);\n\tpg = in4;\n\tp0 = post;\n\tp1 = post;\n}\n\nx1 = fixnan(in1);\nx2 = fixnan(in2);\nrep = in3 > 0.5;\ndsamp = max(1, mstosamps(clip(in8, 5, 250)));\nlreq = clip(mstosamps(clip(in5, 10, 10000)), 2, maxl);\n// Speed goes through two smoothers, so the playhead speeds up and slows down smoothly\n// (one smoother alone still changes speed in a jump, which a pure tone shows as a tick)\nsp = sp + c20 * (clip(in6, -16, 16) - sp);\nsp2 = sp2 + c20 * (sp - sp2);\npos = clip(in7, 0, 1);\nif (abs(pos - jp) > 0.0001) {\n\tjw = 1;   // a new Position: jump there as soon as no crossfade is running\n}\nmx = mx + c10 * (clip(in9, 0, 1) - mx);\nmd = md + c20 * (clip(in10, 0, 1) - md);\n\n// --- events: Repeat turned on, or a grab while repeating ---\nif (rep > 0.5 && pr < 0.5) {\n\twt = 1;\n}\nif (rep > 0.5 && abs(in4 - pg) > 0.0001) {\n\twt = 1;\n}\nif (rep < 0.5) {\n\twt = 0;\n\twa = -1;\n}\n// remember WHERE the grab happened. If it has to wait (a crossfade is still running, up to Crossfade ms),\n// the loop still ends at the press, as long as the recorder it will use is recording right now\nif (wt > 0.5 && wa < 0 && pd < 0.5) {\n\twn = pl > 0.5 ? 1 - s : (f1 > f0 ? 1 : 0);\n\twa = w;\n\twf = wn > 0.5 ? f1 : f0;\n}\npr = rep;\npg = in4;\n\n// loop length and crossfade for the ring being looped (s)\navs = s > 0.5 ? v1 : v0;\nlo = 0;\nhi = 0;\nvel = 0;\ntt = 0;\nleff = 2;\ndeff = dsamp;\nnb = 0;\ntrig = 0;\nns = 0;\nold = 0;\ngw = 0;\ngf = 0;\nsettled = abs(xf - dir) < 0.000001;\n\nif (wt > 0.5 && settled && pd < 0.5) {\n\t// grab now. The loop ends HERE: everything before this sample is the loop, this sample on is post-roll\n\tif (pl < 0.5) {\n\t\tns = f1 > f0 ? 1 : 0;   // both are recording; take the one with the longer unbroken history\n\t} else {\n\t\tns = 1 - s;             // looping: the other recorder never stopped, so it holds the newest audio\n\t}\n\tgw = 0;   // samples recorded since the press (it already counts as post-roll)\n\tgf = ns > 0.5 ? f1 : f0;\n\tif (wa >= 0 && wn == ns) {\n\t\tgw = wrap(w - wa, 0, N);\n\t\tgf = wf;\n\t}\n\told = s;\n\tif (ns > 0.5) {\n\t\ta1 = w - gw;\n\t\tif (a1 < 0) {\n\t\t\ta1 = a1 + N;\n\t\t}\n\t\tv1 = min(gf, N - post - 4);\n\t\tr1 = 0;\n\t\tp1 = gw;\n\t\tavs = v1;\n\t} else {\n\t\ta0 = w - gw;\n\t\tif (a0 < 0) {\n\t\t\ta0 = a0 + N;\n\t\t}\n\t\tv0 = min(gf, N - post - 4);\n\t\tr0 = 0;\n\t\tp0 = gw;\n\t\tavs = v0;\n\t}\n\ts = ns;\n\tvel = abs(sp2);\n\tleff = clip(lreq, 2, max(2, avs - min(vel * dsamp, post) - 4));\n\tdeff = max(1, min(min(dsamp, 0.5 * leff / max(vel, 0.000001)), (post - 8) / max(vel, 0.000001)));\n\ttt = vel * deff;\n\tif (pl < 0.5) {\n\t\t// from dry: start the active head at Position; the dry/loop fade (ws) does the rest\n\t\tif (dir > 0.5) {\n\t\t\tb1 = leff * (1 - pos);\n\t\t\tg1 = ns;\n\t\t} else {\n\t\t\tb0 = leff * (1 - pos);\n\t\t\tg0 = ns;\n\t\t}\n\t\txf = dir;\n\t\tpl = 1;\n\t} else {\n\t\t// from the old loop: the idle head starts the new loop at Position (at the start: with pre-roll)\n\t\t// and the heads crossfade\n\t\tnb = pos < 0.0001 ? min(leff + tt, avs - 2) : leff * (1 - pos);\n\t\tif (dir > 0.5) {\n\t\t\tb0 = nb;\n\t\t\tg0 = ns;\n\t\t\tdir = 0;\n\t\t} else {\n\t\t\tb1 = nb;\n\t\t\tg1 = ns;\n\t\t\tdir = 1;\n\t\t}\n\t\txs = 1 / deff;\n\t\tpd = old + 1;   // the old recorder starts recording again when this crossfade is done\n\t}\n\twt = 0;\n\twa = -1;\n\tjp = pos;   // it already started at Position\n\tjw = 0;\n}\n\n// --- record: a recorder writes while recording, or for 1 s of post-roll after it was grabbed ---\nif (r0 > 0.5 || p0 < post) {\n\tpoke(ring, x1, w, 0);\n\tpoke(ring, x2, w, 1);\n\tf0 = min(f0 + 1, N);\n\tif (r0 < 0.5) {\n\t\tp0 = p0 + 1;\n\t\tif (p0 >= post) {\n\t\t\tf0 = 0;   // it stops here, so its history has a gap from now on\n\t\t}\n\t}\n}\nif (r1 > 0.5 || p1 < post) {\n\tpoke(ring, x1, w, 2);\n\tpoke(ring, x2, w, 3);\n\tf1 = min(f1 + 1, N);\n\tif (r1 < 0.5) {\n\t\tp1 = p1 + 1;\n\t\tif (p1 >= post) {\n\t\t\tf1 = 0;\n\t\t}\n\t}\n}\nw = w + 1;\nif (w >= N) {\n\tw = 0;\n}\n\n// --- loop playback ---\nloopl = 0;\nloopr = 0;\no0l = 0;\no0r = 0;\no1l = 0;\no1r = 0;\nidx = 0;\ni0 = 0;\ni1 = 0;\nfr = 0;\nch = 0;\ny0 = 0;\ny1 = 0;\nanc = 0;\nba = 0;\ngl = 0;\ngr = 0;\nxu = 0;\nif (pl > 0.5) {\n\t// Repeat fades the loop in and out over Crossfade\n\tws = rep > 0.5 ? min(ws + 1 / dsamp, 1) : max(ws - 1 / dsamp, 0);\n\tavs = s > 0.5 ? v1 : v0;\n\t// movement per sample, in recorded samples\n\tvel = sp2;\n\tleff = clip(lreq, 2, max(2, avs - min(abs(vel) * dsamp, post) - 4));\n\t// the loop-point crossfade covers speed x time of recording; it must fit in the 1 s of pre/post-roll,\n\t// so above 4x speed a long Crossfade shortens itself (16x: 250 ms -> 62 ms)\n\tdeff = max(1, min(min(dsamp, 0.5 * leff / max(abs(vel), 0.000001)), (post - 8) / max(abs(vel), 0.000001)));\n\ttt = abs(vel) * deff;\n\tb0 = b0 - vel;\n\tb1 = b1 - vel;\n\t// keep each head inside what its recorder really holds (back = samples before the grab moment)\n\tlo = -max((g0 > 0.5 ? p1 : p0) - 3, 0);\n\thi = (g0 > 0.5 ? v1 : v0) - 2;\n\tb0 = clip(b0, lo, max(lo, hi));\n\tlo = -max((g1 > 0.5 ? p1 : p0) - 3, 0);\n\thi = (g1 > 0.5 ? v1 : v0) - 2;\n\tb1 = clip(b1, lo, max(lo, hi));\n\n\tsettled = abs(xf - dir) < 0.000001;   // again: a grab above may have just started a crossfade\n\tif (settled) {\n\t\t// the active head is near (or past) a loop point: the idle head takes over with a crossfade\n\t\tba = dir > 0.5 ? b1 : b0;\n\t\tlo = -max((s > 0.5 ? p1 : p0) - 3, 0);\n\t\ttrig = 0;\n\t\tif (vel > 0.000001 && ba <= tt) {\n\t\t\tnb = min(leff + tt, avs - 2);   // forward: pre-roll before the loop start\n\t\t\ttrig = 1;\n\t\t} else if (vel < -0.000001 && ba >= leff - tt) {\n\t\t\tnb = max(-tt, lo);              // backward: post-roll after the loop end\n\t\t\ttrig = 1;\n\t\t} else if (ba > leff) {\n\t\t\tnb = leff;                      // stopped outside the loop (Size got smaller)\n\t\t\ttrig = 1;\n\t\t} else if (ba < 0) {\n\t\t\tnb = 0;\n\t\t\ttrig = 1;\n\t\t} else if (jw > 0.5) {\n\t\t\tnb = leff * (1 - pos);         // Position: jump with a crossfade\n\t\t\ttrig = 1;\n\t\t}\n\t\tif (jw > 0.5 && trig > 0.5 && abs(nb - leff * (1 - pos)) < 0.5) {\n\t\t\tjp = pos;\n\t\t\tjw = 0;\n\t\t}\n\t\tif (trig > 0.5) {\n\t\t\tif (dir > 0.5) {\n\t\t\t\tb0 = nb;\n\t\t\t\tg0 = s;\n\t\t\t\tdir = 0;\n\t\t\t} else {\n\t\t\t\tb1 = nb;\n\t\t\t\tg1 = s;\n\t\t\t\tdir = 1;\n\t\t\t}\n\t\t\txs = 1 / deff;\n\t\t}\n\t}\n\txf = dir > 0.5 ? min(xf + xs, 1) : max(xf - xs, 0);\n\tif (pd > 0.5 && abs(xf - dir) < 0.000001) {\n\t\t// the crossfade from an old loop is done: that recorder records again\n\t\tif (pd > 1.5) {\n\t\t\tr1 = 1;\n\t\t} else {\n\t\t\tr0 = 1;\n\t\t}\n\t\tpd = 0;\n\t}\n\n\t// head 0 (only read while it can be heard)\n\t// S-shaped fades (smoothstep): they start and end with zero slope, so even a pure tone shows no kink\n\txu = xf * xf * (3 - 2 * xf);\n\tgl = cos(xu * halfpi);\n\tif (gl > 0.0000001) {\n\t\tanc = g0 > 0.5 ? a1 : a0;\n\t\tch = g0 > 0.5 ? 2 : 0;\n\t\tidx = wrap(anc - b0, 0, N);\n\t\ti0 = floor(idx);\n\t\tfr = idx - i0;\n\t\ti1 = i0 + 1 >= N ? 0 : i0 + 1;\n\t\ty0 = peek(ring, i0, ch);\n\t\ty1 = peek(ring, i1, ch);\n\t\to0l = y0 + fr * (y1 - y0);\n\t\ty0 = peek(ring, i0, ch + 1);\n\t\ty1 = peek(ring, i1, ch + 1);\n\t\to0r = y0 + fr * (y1 - y0);\n\t}\n\t// head 1\n\tgr = sin(xu * halfpi);\n\tif (gr > 0.0000001) {\n\t\tanc = g1 > 0.5 ? a1 : a0;\n\t\tch = g1 > 0.5 ? 2 : 0;\n\t\tidx = wrap(anc - b1, 0, N);\n\t\ti0 = floor(idx);\n\t\tfr = idx - i0;\n\t\ti1 = i0 + 1 >= N ? 0 : i0 + 1;\n\t\ty0 = peek(ring, i0, ch);\n\t\ty1 = peek(ring, i1, ch);\n\t\to1l = y0 + fr * (y1 - y0);\n\t\ty0 = peek(ring, i0, ch + 1);\n\t\ty1 = peek(ring, i1, ch + 1);\n\t\to1r = y0 + fr * (y1 - y0);\n\t}\n\tloopl = o0l * gl + o1l * gr;\n\tloopr = o0r * gl + o1r * gr;\n\n\tif (rep < 0.5 && ws <= 0) {\n\t\t// faded out: stop the heads, everything records again\n\t\tpl = 0;\n\t\tr0 = 1;\n\t\tr1 = 1;\n\t\tpd = 0;\n\t\txf = dir;\n\t}\n} else {\n\tws = 0;\n\tjp = pos;   // not looping: nothing to jump; Repeat starts from Position anyway\n\tjw = 0;\n}\n\n// --- output: the input fades to the loop (or, with Mix < 1, to a blend of loop and input) ---\nhm = mx * halfpi;\nwu = ws * ws * (3 - 2 * ws);\ndg = (1 - md) * (1 - wu) + cos(hm) * wu;\nlg = sin(wu * halfpi) * sin(hm);\nout1 = x1 * dg + loopl * lg;\nout2 = x2 * dg + loopr * lg;\n\nwp = w;\nrec0 = r0;\nrec1 = r1;\npw0 = p0;\npw1 = p1;\nfill0 = f0;\nfill1 = f1;\nanc0 = a0;\nanc1 = a1;\nav0 = v0;\nav1 = v1;\nsrc = s;\nplaying = pl;\nws_s = ws;\nhb0 = b0;\nhb1 = b1;\nhr0 = g0;\nhr1 = g1;\nhdir = dir;\nhxf = xf;\nxstep = xs;\npend = pd;\nwant = wt;\nwanc = wa;\nwring = wn;\nwfill = wf;\nprevrep = pr;\nprevgrab = pg;\nsp_s = sp;\nsp2_s = sp2;\njpos = jp;\njwant = jw;\nmx_s = mx;\nmd_s = md;\ninit = 1;\n",
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
                                                            942.0,
                                                            149.0,
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
                                                            1051.0,
                                                            942.0,
                                                            151.0,
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
                                                        ],
                                                        "midpoints": [
                                                            185.5,
                                                            70.0,
                                                            144.05555555555554,
                                                            70.0
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
                                                        ],
                                                        "midpoints": [
                                                            343.5,
                                                            82.0,
                                                            258.6111111111111,
                                                            82.0
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
                                                        ],
                                                        "midpoints": [
                                                            558.5,
                                                            94.0,
                                                            373.1666666666667,
                                                            94.0
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
                                                        ],
                                                        "midpoints": [
                                                            773.5,
                                                            106.0,
                                                            487.72222222222223,
                                                            106.0
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
                                                        ],
                                                        "midpoints": [
                                                            988.5,
                                                            118.0,
                                                            602.2777777777778,
                                                            118.0
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
                                                        ],
                                                        "midpoints": [
                                                            636.7777777777778,
                                                            217.0,
                                                            716.8333333333334,
                                                            217.0
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
                                                        ],
                                                        "midpoints": [
                                                            851.7777777777778,
                                                            193.0,
                                                            831.3888888888889,
                                                            193.0
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
                                                        ],
                                                        "midpoints": [
                                                            1066.7777777777778,
                                                            205.0,
                                                            945.9444444444445,
                                                            205.0
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
                                }
                            },
                            {
                                "box": {
                                    "id": "r-in3",
                                    "maxclass": "newobj",
                                    "text": "in 3 @comment \"Repeat (Int) 1 = loop the last Size ms (the loop ends at the moment you press it); 0 = back to the input. Fades over Crossfade. Default 0\"",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        430.0,
                                        20.0,
                                        190.0,
                                        94.0
                                    ],
                                    "linecount": 6,
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "in_r-in3"
                                }
                            },
                            {
                                "box": {
                                    "id": "p-Repeat",
                                    "maxclass": "newobj",
                                    "text": "param Repeat 0 @enum off on @order 1",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        430.0,
                                        140.0,
                                        180.0,
                                        52.0
                                    ],
                                    "linecount": 2,
                                    "varname": "Repeat",
                                    "rnbo_classname": "param",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "Repeat",
                                    "rnbo_extra_attributes": {
                                        "enum": "off on",
                                        "fromnormalized": "",
                                        "exponent": 1.0,
                                        "displayname": "",
                                        "ctlin": -1.0,
                                        "tonormalized": "",
                                        "steps": 0.0,
                                        "unit": "",
                                        "sendinit": 1,
                                        "meta": "",
                                        "displayorder": "-",
                                        "preset": 1
                                    }
                                }
                            },
                            {
                                "box": {
                                    "id": "r-in4",
                                    "maxclass": "newobj",
                                    "text": "in 4 @comment \"Grab (Bang or Grab param 0 -> 1) while repeating: loop the newest Size ms instead (crossfades over). Ignored while not repeating\"",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        630.0,
                                        20.0,
                                        190.0,
                                        94.0
                                    ],
                                    "linecount": 6,
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 2,
                                    "rnbo_uniqueid": "in_r-in4"
                                }
                            },
                            {
                                "box": {
                                    "id": "p-Grab",
                                    "maxclass": "newobj",
                                    "text": "param Grab 0 @enum off on @order 2",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        630.0,
                                        140.0,
                                        180.0,
                                        52.0
                                    ],
                                    "linecount": 2,
                                    "varname": "Grab",
                                    "rnbo_classname": "param",
                                    "rnbo_serial": 2,
                                    "rnbo_uniqueid": "Grab",
                                    "rnbo_extra_attributes": {
                                        "enum": "off on",
                                        "fromnormalized": "",
                                        "exponent": 1.0,
                                        "displayname": "",
                                        "ctlin": -1.0,
                                        "tonormalized": "",
                                        "steps": 0.0,
                                        "unit": "",
                                        "sendinit": 1,
                                        "meta": "",
                                        "displayorder": "-",
                                        "preset": 1
                                    }
                                }
                            },
                            {
                                "box": {
                                    "id": "r-gchg",
                                    "maxclass": "newobj",
                                    "text": "change",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        630.0,
                                        200.0,
                                        60.0,
                                        22.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "r-gm1",
                                    "maxclass": "newobj",
                                    "text": "trigger b",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        700.0,
                                        200.0,
                                        70.0,
                                        22.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "r-gone",
                                    "maxclass": "message",
                                    "text": "1",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        700.0,
                                        230.0,
                                        30.0,
                                        22.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "r-gacc",
                                    "maxclass": "newobj",
                                    "text": "accum",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        630.0,
                                        260.0,
                                        60.0,
                                        22.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "r-in5",
                                    "maxclass": "newobj",
                                    "text": "in 5 @comment \"Size (Signal/Float) 10 - 10000 ms. The loop length; changing it moves the loop start; the end stays at the grab. Works while looping. Default 8000\"",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        830.0,
                                        20.0,
                                        190.0,
                                        94.0
                                    ],
                                    "linecount": 6,
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 3,
                                    "rnbo_uniqueid": "in_r-in5"
                                }
                            },
                            {
                                "box": {
                                    "id": "p-Size",
                                    "maxclass": "newobj",
                                    "text": "param Size 8000 @min 10.0 @max 10000.0 @exponent 3.0 @order 3",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        830.0,
                                        140.0,
                                        180.0,
                                        52.0
                                    ],
                                    "linecount": 2,
                                    "varname": "Size",
                                    "rnbo_classname": "param",
                                    "rnbo_serial": 3,
                                    "rnbo_uniqueid": "Size",
                                    "rnbo_extra_attributes": {
                                        "enum": "",
                                        "fromnormalized": "",
                                        "exponent": 3.0,
                                        "displayname": "",
                                        "ctlin": -1.0,
                                        "tonormalized": "",
                                        "steps": 0.0,
                                        "unit": "",
                                        "sendinit": 1,
                                        "meta": "",
                                        "displayorder": "-",
                                        "preset": 1
                                    }
                                }
                            },
                            {
                                "box": {
                                    "id": "r-in6",
                                    "maxclass": "newobj",
                                    "text": "in 6 @comment \"Speed (Signal/Float) -16 - 16. 1 = normal; 0.5 = half speed (an octave down); negative = backwards; 0 = stopped. Above 1 it is read without anti-aliasing (gritty). Default 1\"",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1030.0,
                                        20.0,
                                        190.0,
                                        94.0
                                    ],
                                    "linecount": 6,
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 4,
                                    "rnbo_uniqueid": "in_r-in6"
                                }
                            },
                            {
                                "box": {
                                    "id": "p-Speed",
                                    "maxclass": "newobj",
                                    "text": "param Speed 1 @min -16.0 @max 16.0 @order 4",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        1030.0,
                                        140.0,
                                        180.0,
                                        52.0
                                    ],
                                    "linecount": 2,
                                    "varname": "Speed",
                                    "rnbo_classname": "param",
                                    "rnbo_serial": 4,
                                    "rnbo_uniqueid": "Speed",
                                    "rnbo_extra_attributes": {
                                        "enum": "",
                                        "fromnormalized": "",
                                        "exponent": 1.0,
                                        "displayname": "",
                                        "ctlin": -1.0,
                                        "tonormalized": "",
                                        "steps": 0.0,
                                        "unit": "",
                                        "sendinit": 1,
                                        "meta": "",
                                        "displayorder": "-",
                                        "preset": 1
                                    }
                                }
                            },
                            {
                                "box": {
                                    "id": "r-in7",
                                    "maxclass": "newobj",
                                    "text": "in 7 @comment \"Position (Float) 0 - 1: jump-to. 0 = loop start; 1 = loop end. A new value jumps there with a crossfade (no re-pitch). Repeat and Grab also start from here. Default 0\"",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1230.0,
                                        20.0,
                                        190.0,
                                        94.0
                                    ],
                                    "linecount": 6,
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 5,
                                    "rnbo_uniqueid": "in_r-in7"
                                }
                            },
                            {
                                "box": {
                                    "id": "p-Position",
                                    "maxclass": "newobj",
                                    "text": "param Position 0 @min 0.0 @max 1.0 @order 5",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        1230.0,
                                        140.0,
                                        180.0,
                                        52.0
                                    ],
                                    "linecount": 2,
                                    "varname": "Position",
                                    "rnbo_classname": "param",
                                    "rnbo_serial": 5,
                                    "rnbo_uniqueid": "Position",
                                    "rnbo_extra_attributes": {
                                        "enum": "",
                                        "fromnormalized": "",
                                        "exponent": 1.0,
                                        "displayname": "",
                                        "ctlin": -1.0,
                                        "tonormalized": "",
                                        "steps": 0.0,
                                        "unit": "",
                                        "sendinit": 1,
                                        "meta": "",
                                        "displayorder": "-",
                                        "preset": 1
                                    }
                                }
                            },
                            {
                                "box": {
                                    "id": "r-in8",
                                    "maxclass": "newobj",
                                    "text": "in 8 @comment \"Crossfade (Signal/Float) 5 - 250 ms. Used for every fade: the loop point; Repeat on/off and Grab. Default 40\"",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1430.0,
                                        20.0,
                                        190.0,
                                        94.0
                                    ],
                                    "linecount": 6,
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 6,
                                    "rnbo_uniqueid": "in_r-in8"
                                }
                            },
                            {
                                "box": {
                                    "id": "p-Crossfade",
                                    "maxclass": "newobj",
                                    "text": "param Crossfade 40 @min 5.0 @max 250.0 @exponent 2.0 @order 6",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        1430.0,
                                        140.0,
                                        180.0,
                                        52.0
                                    ],
                                    "linecount": 2,
                                    "varname": "Crossfade",
                                    "rnbo_classname": "param",
                                    "rnbo_serial": 6,
                                    "rnbo_uniqueid": "Crossfade",
                                    "rnbo_extra_attributes": {
                                        "enum": "",
                                        "fromnormalized": "",
                                        "exponent": 2.0,
                                        "displayname": "",
                                        "ctlin": -1.0,
                                        "tonormalized": "",
                                        "steps": 0.0,
                                        "unit": "",
                                        "sendinit": 1,
                                        "meta": "",
                                        "displayorder": "-",
                                        "preset": 1
                                    }
                                }
                            },
                            {
                                "box": {
                                    "id": "r-in9",
                                    "maxclass": "newobj",
                                    "text": "in 9 @comment \"Mix (Signal/Float) 0 - 1 while repeating: 1 = only the loop; 0.5 = loop and input equal (equal power). Default 1\"",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1630.0,
                                        20.0,
                                        190.0,
                                        94.0
                                    ],
                                    "linecount": 6,
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 7,
                                    "rnbo_uniqueid": "in_r-in9"
                                }
                            },
                            {
                                "box": {
                                    "id": "p-Mix",
                                    "maxclass": "newobj",
                                    "text": "param Mix 1 @min 0.0 @max 1.0 @order 7",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        1630.0,
                                        140.0,
                                        180.0,
                                        52.0
                                    ],
                                    "linecount": 2,
                                    "varname": "Mix",
                                    "rnbo_classname": "param",
                                    "rnbo_serial": 7,
                                    "rnbo_uniqueid": "Mix",
                                    "rnbo_extra_attributes": {
                                        "enum": "",
                                        "fromnormalized": "",
                                        "exponent": 1.0,
                                        "displayname": "",
                                        "ctlin": -1.0,
                                        "tonormalized": "",
                                        "steps": 0.0,
                                        "unit": "",
                                        "sendinit": 1,
                                        "meta": "",
                                        "displayorder": "-",
                                        "preset": 1
                                    }
                                }
                            },
                            {
                                "box": {
                                    "id": "r-in10",
                                    "maxclass": "newobj",
                                    "text": "in 10 @comment \"Mix Mode (Int) 0 = Thru; 1 = Aux: what you hear while NOT repeating. Thru = the input; Aux = silence. Default 0\"",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1830.0,
                                        20.0,
                                        190.0,
                                        94.0
                                    ],
                                    "linecount": 6,
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 8,
                                    "rnbo_uniqueid": "in_r-in10"
                                }
                            },
                            {
                                "box": {
                                    "id": "p-MixMode",
                                    "maxclass": "newobj",
                                    "text": "param MixMode 0 @enum Thru Aux @order 8",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        1830.0,
                                        140.0,
                                        180.0,
                                        52.0
                                    ],
                                    "linecount": 2,
                                    "varname": "MixMode",
                                    "rnbo_classname": "param",
                                    "rnbo_serial": 8,
                                    "rnbo_uniqueid": "MixMode",
                                    "rnbo_extra_attributes": {
                                        "enum": "Thru Aux",
                                        "fromnormalized": "",
                                        "exponent": 1.0,
                                        "displayname": "",
                                        "ctlin": -1.0,
                                        "tonormalized": "",
                                        "steps": 0.0,
                                        "unit": "",
                                        "sendinit": 1,
                                        "meta": "",
                                        "displayorder": "-",
                                        "preset": 1
                                    }
                                }
                            },
                            {
                                "box": {
                                    "id": "r-out1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "outlettype": [],
                                    "patching_rect": [
                                        30.0,
                                        390.0,
                                        220.0,
                                        38.0
                                    ],
                                    "text": "out~ 1 @comment \"Left Out (Signal)\"",
                                    "rnbo_classname": "out~",
                                    "rnbo_extra_attributes": {
                                        "meta": "",
                                        "comment": ""
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "out~_r-out1",
                                    "linecount": 2
                                }
                            },
                            {
                                "box": {
                                    "id": "r-out2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "outlettype": [],
                                    "patching_rect": [
                                        260.0,
                                        390.0,
                                        220.0,
                                        38.0
                                    ],
                                    "text": "out~ 2 @comment \"Right Out (Signal)\"",
                                    "rnbo_classname": "out~",
                                    "rnbo_extra_attributes": {
                                        "meta": "",
                                        "comment": ""
                                    },
                                    "rnbo_serial": 2,
                                    "rnbo_uniqueid": "out~_r-out2",
                                    "linecount": 2
                                }
                            },
                            {
                                "box": {
                                    "id": "r-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        450.0,
                                        1100.0,
                                        50.0
                                    ],
                                    "linecount": 3,
                                    "text": "gen~ code MUST MATCH br.repeater.1.1 (open both: same gen~ patcher and codebox). The params have the same names, ranges and dial curves as br.repeater.ui.1.1; inlets 3 to 10 set them, so the external has the same 10 inlets as the abstraction (controls as numbers; inlet 4 = Grab, a bang). Grab as a plugin parameter: each 0 -> 1 grabs (set it back to 0 before the next grab). Grab and Repeat are RNBO-side counters/events only: the gen~ sees a running count, any new number = grab."
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "source": [
                                        "r-in1",
                                        0
                                    ],
                                    "destination": [
                                        "r-gen",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-in2",
                                        0
                                    ],
                                    "destination": [
                                        "r-gen",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-in3",
                                        0
                                    ],
                                    "destination": [
                                        "p-Repeat",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "p-Repeat",
                                        0
                                    ],
                                    "destination": [
                                        "r-gen",
                                        2
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "p-Grab",
                                        0
                                    ],
                                    "destination": [
                                        "r-gchg",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-gchg",
                                        1
                                    ],
                                    "destination": [
                                        "r-gm1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-in4",
                                        0
                                    ],
                                    "destination": [
                                        "r-gm1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-gm1",
                                        0
                                    ],
                                    "destination": [
                                        "r-gone",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-gone",
                                        0
                                    ],
                                    "destination": [
                                        "r-gacc",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-gacc",
                                        0
                                    ],
                                    "destination": [
                                        "r-gen",
                                        3
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-in5",
                                        0
                                    ],
                                    "destination": [
                                        "p-Size",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "p-Size",
                                        0
                                    ],
                                    "destination": [
                                        "r-gen",
                                        4
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-in6",
                                        0
                                    ],
                                    "destination": [
                                        "p-Speed",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "p-Speed",
                                        0
                                    ],
                                    "destination": [
                                        "r-gen",
                                        5
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-in7",
                                        0
                                    ],
                                    "destination": [
                                        "p-Position",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "p-Position",
                                        0
                                    ],
                                    "destination": [
                                        "r-gen",
                                        6
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-in8",
                                        0
                                    ],
                                    "destination": [
                                        "p-Crossfade",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "p-Crossfade",
                                        0
                                    ],
                                    "destination": [
                                        "r-gen",
                                        7
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-in9",
                                        0
                                    ],
                                    "destination": [
                                        "p-Mix",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "p-Mix",
                                        0
                                    ],
                                    "destination": [
                                        "r-gen",
                                        8
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-in10",
                                        0
                                    ],
                                    "destination": [
                                        "p-MixMode",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "p-MixMode",
                                        0
                                    ],
                                    "destination": [
                                        "r-gen",
                                        9
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-gen",
                                        0
                                    ],
                                    "destination": [
                                        "r-out1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-gen",
                                        1
                                    ],
                                    "destination": [
                                        "r-out2",
                                        0
                                    ]
                                }
                            }
                        ]
                    }
                }
            },
            {
                "box": {
                    "id": "obj-export",
                    "maxclass": "comment",
                    "text": "EXPORT NAME: br.repeater.1.1~\nMax External Export asks for a name: keep the ~ at the end. Without it the external has the same name as the abstraction and Max loads whichever it finds first.",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        250.0,
                        380.0,
                        340.0,
                        75.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "linecount": 5
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "source": [
                        "obj-attr0",
                        0
                    ],
                    "destination": [
                        "obj-rnbo",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr1",
                        0
                    ],
                    "destination": [
                        "obj-rnbo",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr2",
                        0
                    ],
                    "destination": [
                        "obj-rnbo",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr3",
                        0
                    ],
                    "destination": [
                        "obj-rnbo",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr4",
                        0
                    ],
                    "destination": [
                        "obj-rnbo",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr5",
                        0
                    ],
                    "destination": [
                        "obj-rnbo",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr6",
                        0
                    ],
                    "destination": [
                        "obj-rnbo",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr7",
                        0
                    ],
                    "destination": [
                        "obj-rnbo",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-grab",
                        0
                    ],
                    "destination": [
                        "obj-rnbo",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-pl",
                        0
                    ],
                    "destination": [
                        "obj-rnbo",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-pl",
                        1
                    ],
                    "destination": [
                        "obj-rnbo",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-rnbo",
                        0
                    ],
                    "destination": [
                        "obj-gain",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-rnbo",
                        1
                    ],
                    "destination": [
                        "obj-gain",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-gain",
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
                        "obj-gain",
                        1
                    ],
                    "destination": [
                        "obj-dac",
                        1
                    ]
                }
            }
        ]
    }
}