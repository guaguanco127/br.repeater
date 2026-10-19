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
            85.0,
            104.0,
            1360.0,
            460.0
        ],
        "openrect": [
            85.0,
            104.0,
            256.0,
            78.0
        ],
        "openrectmode": 0,
        "openinpresentation": 1,
        "devicewidth": 256.0,
        "description": "br.repeater.ui.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
        "boxes": [
            {
                "box": {
                    "id": "in-0",
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        15.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "index": 1,
                    "comment": "Left In (Signal)"
                }
            },
            {
                "box": {
                    "id": "in-1",
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        90.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "index": 2,
                    "comment": "Right In (Signal)"
                }
            },
            {
                "box": {
                    "id": "in-2",
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        165.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "index": 3,
                    "comment": "Repeat (Int) 1 = loop the last Size ms (the loop ends at the moment you press it), 0 = back to the input. Fades over Crossfade. Default 0"
                }
            },
            {
                "box": {
                    "id": "in-3",
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        240.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "index": 4,
                    "comment": "Grab (Bang) while repeating: loop the newest Size ms instead (crossfades over). Ignored while not repeating"
                }
            },
            {
                "box": {
                    "id": "in-4",
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        315.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "index": 5,
                    "comment": "Size (Float) 10 - 10000 ms. The loop length; changing it moves the loop start, the end stays at the grab. Works while looping. Default 8000"
                }
            },
            {
                "box": {
                    "id": "in-5",
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        390.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "index": 6,
                    "comment": "Speed (Float) -16 - 16. 1 = normal, 0.5 = half speed (an octave down), negative = backwards, 0 = stopped. Above 1 it is read without anti-aliasing (gritty). Default 1"
                }
            },
            {
                "box": {
                    "id": "in-6",
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        465.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "index": 7,
                    "comment": "Position (Float) 0 - 1: jump-to. 0 = loop start, 1 = loop end. A new value jumps there with a crossfade (no re-pitch). Repeat and Grab also start from here. Default 0"
                }
            },
            {
                "box": {
                    "id": "in-7",
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        540.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "index": 8,
                    "comment": "Crossfade (Float) 5 - 250 ms. Used for every fade: the loop point, Repeat on/off and Grab. Default 40"
                }
            },
            {
                "box": {
                    "id": "in-8",
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        615.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "index": 9,
                    "comment": "Mix (Float) 0 - 1 while repeating: 1 = only the loop, 0.5 = loop and input equal (equal power). Default 1"
                }
            },
            {
                "box": {
                    "id": "in-9",
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        690.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "index": 10,
                    "comment": "Mix Mode (Int) 0 = Thru, 1 = Aux: what you hear while NOT repeating. Thru = the input, Aux = silence. Default 0"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-core",
                    "maxclass": "newobj",
                    "text": "br.repeater.1.0",
                    "numinlets": 10,
                    "numoutlets": 3,
                    "outlettype": [
                        "signal",
                        "signal",
                        ""
                    ],
                    "patching_rect": [
                        15.0,
                        340.0,
                        760.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "ctl-repeat",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        165.0,
                        60.0,
                        44.0,
                        18.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        66,
                        4,
                        52,
                        18
                    ],
                    "text": "Repeat",
                    "texton": "Repeat",
                    "varname": "Repeat",
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [
                                "off",
                                "on"
                            ],
                            "parameter_initial": [
                                0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Repeat",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Repeat",
                            "parameter_type": 2
                        }
                    }
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "store-repeat",
                    "maxclass": "newobj",
                    "text": "i 0",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "patching_rect": [
                        165.0,
                        120,
                        50,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "st-repeat-t",
                    "maxclass": "newobj",
                    "text": "t i i",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        165.0,
                        150,
                        40,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "st-repeat-c",
                    "maxclass": "newobj",
                    "text": "change -1",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        185.0,
                        200,
                        66,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "st-repeat-p",
                    "maxclass": "newobj",
                    "text": "prepend repeat",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        185.0,
                        228,
                        118,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "ctl-size",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        315.0,
                        60.0,
                        44.0,
                        48.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        4,
                        26,
                        44.0,
                        48.0
                    ],
                    "activeneedlecolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "varname": "Size",
                    "saved_attribute_attributes": {
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_exponent": 3.0,
                            "parameter_initial": [
                                8000.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Size",
                            "parameter_mmax": 10000.0,
                            "parameter_mmin": 10.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Size",
                            "parameter_type": 0,
                            "parameter_unitstyle": 2
                        }
                    }
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "store-size",
                    "maxclass": "newobj",
                    "text": "f 8000.0",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        315.0,
                        120,
                        50,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "st-size-t",
                    "maxclass": "newobj",
                    "text": "t f f",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "float",
                        "float"
                    ],
                    "patching_rect": [
                        315.0,
                        150,
                        40,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "st-size-c",
                    "maxclass": "newobj",
                    "text": "change 0.",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        335.0,
                        200,
                        66,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "st-size-p",
                    "maxclass": "newobj",
                    "text": "prepend size",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        335.0,
                        228,
                        104,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "ctl-speed",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        390.0,
                        60.0,
                        44.0,
                        48.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        54,
                        26,
                        44.0,
                        48.0
                    ],
                    "activeneedlecolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "varname": "Speed",
                    "saved_attribute_attributes": {
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_exponent": 1.0,
                            "parameter_initial": [
                                1.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Speed",
                            "parameter_mmax": 16.0,
                            "parameter_mmin": -16.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Speed",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    }
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "store-speed",
                    "maxclass": "newobj",
                    "text": "f 1.0",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        390.0,
                        120,
                        50,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "st-speed-t",
                    "maxclass": "newobj",
                    "text": "t f f",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "float",
                        "float"
                    ],
                    "patching_rect": [
                        390.0,
                        150,
                        40,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "st-speed-c",
                    "maxclass": "newobj",
                    "text": "change 0.",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        410.0,
                        230,
                        66,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "st-speed-p",
                    "maxclass": "newobj",
                    "text": "prepend speed",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        410.0,
                        258,
                        111,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "ctl-position",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        465.0,
                        60.0,
                        44.0,
                        48.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        104,
                        26,
                        44.0,
                        48.0
                    ],
                    "activeneedlecolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "varname": "Position",
                    "saved_attribute_attributes": {
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_exponent": 1.0,
                            "parameter_initial": [
                                0.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Position",
                            "parameter_mmax": 1.0,
                            "parameter_mmin": 0.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Position",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    }
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "store-position",
                    "maxclass": "newobj",
                    "text": "f 0.0",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        465.0,
                        120,
                        50,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "st-position-t",
                    "maxclass": "newobj",
                    "text": "t f f",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "float",
                        "float"
                    ],
                    "patching_rect": [
                        465.0,
                        150,
                        40,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "st-position-c",
                    "maxclass": "newobj",
                    "text": "change 0.",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        485.0,
                        200,
                        66,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "st-position-p",
                    "maxclass": "newobj",
                    "text": "prepend position",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        485.0,
                        228,
                        132,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "ctl-crossfade",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        540.0,
                        60.0,
                        44.0,
                        48.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        154,
                        26,
                        44.0,
                        48.0
                    ],
                    "activeneedlecolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "varname": "Crossfade",
                    "saved_attribute_attributes": {
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_exponent": 2.0,
                            "parameter_initial": [
                                40.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Crossfade",
                            "parameter_mmax": 250.0,
                            "parameter_mmin": 5.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Xfade",
                            "parameter_type": 0,
                            "parameter_unitstyle": 2
                        }
                    }
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "store-crossfade",
                    "maxclass": "newobj",
                    "text": "f 40.0",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        540.0,
                        120,
                        50,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "st-crossfade-t",
                    "maxclass": "newobj",
                    "text": "t f f",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "float",
                        "float"
                    ],
                    "patching_rect": [
                        540.0,
                        150,
                        40,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "st-crossfade-c",
                    "maxclass": "newobj",
                    "text": "change 0.",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        560.0,
                        230,
                        66,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "st-crossfade-p",
                    "maxclass": "newobj",
                    "text": "prepend crossfade",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        560.0,
                        258,
                        139,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "ctl-mix",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        615.0,
                        60.0,
                        44.0,
                        48.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        204,
                        26,
                        44.0,
                        48.0
                    ],
                    "activeneedlecolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "varname": "Mix",
                    "saved_attribute_attributes": {
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_exponent": 1.0,
                            "parameter_initial": [
                                1.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Mix",
                            "parameter_mmax": 1.0,
                            "parameter_mmin": 0.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Mix",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    }
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "store-mix",
                    "maxclass": "newobj",
                    "text": "f 1.0",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        615.0,
                        120,
                        50,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "st-mix-t",
                    "maxclass": "newobj",
                    "text": "t f f",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "float",
                        "float"
                    ],
                    "patching_rect": [
                        615.0,
                        150,
                        40,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "st-mix-c",
                    "maxclass": "newobj",
                    "text": "change 0.",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        635.0,
                        200,
                        66,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "st-mix-p",
                    "maxclass": "newobj",
                    "text": "prepend mix",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        635.0,
                        228,
                        97,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "ctl-mode",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        690.0,
                        60.0,
                        44.0,
                        18.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        206,
                        4,
                        44,
                        18
                    ],
                    "text": "Thru",
                    "texton": "Aux",
                    "varname": "Mix Mode",
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [
                                "off",
                                "on"
                            ],
                            "parameter_initial": [
                                0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Mix Mode",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Mix Mode",
                            "parameter_type": 2
                        }
                    }
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "store-mode",
                    "maxclass": "newobj",
                    "text": "i 0",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "patching_rect": [
                        690.0,
                        120,
                        50,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "st-mode-t",
                    "maxclass": "newobj",
                    "text": "t i i",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        690.0,
                        150,
                        40,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "st-mode-c",
                    "maxclass": "newobj",
                    "text": "change -1",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        710.0,
                        230,
                        66,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "st-mode-p",
                    "maxclass": "newobj",
                    "text": "prepend mode",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        710.0,
                        258,
                        104,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "ctl-grab",
                    "maxclass": "live.button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        240.0,
                        60.0,
                        20.0,
                        20.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        124.0,
                        3.0,
                        20.0,
                        20.0
                    ],
                    "varname": "Grab",
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [
                                "off",
                                "on"
                            ],
                            "parameter_longname": "Grab",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Grab",
                            "parameter_type": 2
                        }
                    }
                }
            },
            {
                "box": {
                    "id": "lbl-grab",
                    "maxclass": "comment",
                    "text": "Grab",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        265.0,
                        60.0,
                        40.0,
                        20.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        146.0,
                        3.0,
                        40.0,
                        20.0
                    ],
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-grabc",
                    "maxclass": "comment",
                    "text": "Grab is an action, not a setting: no store, not in State",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        240.0,
                        85.0,
                        160.0,
                        33.0
                    ],
                    "linecount": 2
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-lb",
                    "maxclass": "newobj",
                    "text": "loadbang",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        800,
                        150,
                        72,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-dl",
                    "maxclass": "newobj",
                    "text": "deferlow",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        800,
                        175,
                        72,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-tbs",
                    "maxclass": "newobj",
                    "text": "t b b b b b b b",
                    "numinlets": 1,
                    "numoutlets": 7,
                    "outlettype": [
                        "bang",
                        "bang",
                        "bang",
                        "bang",
                        "bang",
                        "bang",
                        "bang"
                    ],
                    "patching_rect": [
                        800,
                        200,
                        150,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "out-0",
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        400.0,
                        30.0,
                        30.0
                    ],
                    "index": 1,
                    "comment": "Left Out (Signal)"
                }
            },
            {
                "box": {
                    "id": "out-1",
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        105.0,
                        400.0,
                        30.0,
                        30.0
                    ],
                    "index": 2,
                    "comment": "Right Out (Signal)"
                }
            },
            {
                "box": {
                    "id": "out-state",
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        760.0,
                        400.0,
                        30.0,
                        30.0
                    ],
                    "index": 3,
                    "comment": "State (Message): repeat, size, speed, position, crossfade, mix, mode, sent the moment a control changes. Pick them out by name: [route repeat size speed position crossfade mix mode]"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-signature",
                    "maxclass": "comment",
                    "text": "br.repeater.ui.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        800,
                        15,
                        520,
                        33
                    ],
                    "linecount": 2
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-why",
                    "maxclass": "comment",
                    "text": "[br.repeater.1.0] is the real object: the gen~ lives inside it. This file only adds the panel, keeps each control's value in an [f]/[i] and re-sends them all at load (deferlow), and reports changes on the State outlet as <name> <value>. The last outlet bangs on every grab (Repeat on, or Grab while repeating).",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        800,
                        55,
                        520,
                        74.0
                    ],
                    "linecount": 5
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-reset",
                    "maxclass": "comment",
                    "text": "each control's value is kept in an [f]/[i]; at load they are all re-sent to the core (deferlow), so the dials and the gen~ always agree. Speed: hold Shift while dragging for fine steps; double-click a dial to type a value.",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        800,
                        225,
                        520,
                        47
                    ],
                    "linecount": 3
                }
            },
            {
                "box": {
                    "id": "lbl-title",
                    "maxclass": "comment",
                    "text": "repeater",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        806,
                        300,
                        70,
                        20
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        2,
                        3,
                        62,
                        20
                    ],
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "id": "out-grab",
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        830.0,
                        400.0,
                        30.0,
                        30.0
                    ],
                    "index": 4,
                    "comment": "Grab (Bang): fires on every grab -- Repeat turned on, or Grab while repeating. Cable it into anything that should react"
                }
            },
            {
                "box": {
                    "id": "obj-panel",
                    "maxclass": "panel",
                    "annotation": "br.repeater.ui.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
                    "hint": "br.repeater.ui.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
                    "background": 1,
                    "bgcolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "bordercolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        980.0,
                        300.0,
                        128.0,
                        128.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        0.0,
                        0.0,
                        256.0,
                        78.0
                    ],
                    "rounded": 7
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "source": [
                        "in-0",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "in-1",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "in-2",
                        0
                    ],
                    "destination": [
                        "ctl-repeat",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "ctl-repeat",
                        0
                    ],
                    "destination": [
                        "store-repeat",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "store-repeat",
                        0
                    ],
                    "destination": [
                        "st-repeat-t",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-repeat-t",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-repeat-t",
                        1
                    ],
                    "destination": [
                        "st-repeat-c",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-repeat-c",
                        0
                    ],
                    "destination": [
                        "st-repeat-p",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-repeat-p",
                        0
                    ],
                    "destination": [
                        "out-state",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "in-4",
                        0
                    ],
                    "destination": [
                        "ctl-size",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "ctl-size",
                        0
                    ],
                    "destination": [
                        "store-size",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "store-size",
                        0
                    ],
                    "destination": [
                        "st-size-t",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-size-t",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        4
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-size-t",
                        1
                    ],
                    "destination": [
                        "st-size-c",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-size-c",
                        0
                    ],
                    "destination": [
                        "st-size-p",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-size-p",
                        0
                    ],
                    "destination": [
                        "out-state",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "in-5",
                        0
                    ],
                    "destination": [
                        "ctl-speed",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "ctl-speed",
                        0
                    ],
                    "destination": [
                        "store-speed",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "store-speed",
                        0
                    ],
                    "destination": [
                        "st-speed-t",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-speed-t",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        5
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-speed-t",
                        1
                    ],
                    "destination": [
                        "st-speed-c",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-speed-c",
                        0
                    ],
                    "destination": [
                        "st-speed-p",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-speed-p",
                        0
                    ],
                    "destination": [
                        "out-state",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "in-6",
                        0
                    ],
                    "destination": [
                        "ctl-position",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "ctl-position",
                        0
                    ],
                    "destination": [
                        "store-position",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "store-position",
                        0
                    ],
                    "destination": [
                        "st-position-t",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-position-t",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        6
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-position-t",
                        1
                    ],
                    "destination": [
                        "st-position-c",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-position-c",
                        0
                    ],
                    "destination": [
                        "st-position-p",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-position-p",
                        0
                    ],
                    "destination": [
                        "out-state",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "in-7",
                        0
                    ],
                    "destination": [
                        "ctl-crossfade",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "ctl-crossfade",
                        0
                    ],
                    "destination": [
                        "store-crossfade",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "store-crossfade",
                        0
                    ],
                    "destination": [
                        "st-crossfade-t",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-crossfade-t",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        7
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-crossfade-t",
                        1
                    ],
                    "destination": [
                        "st-crossfade-c",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-crossfade-c",
                        0
                    ],
                    "destination": [
                        "st-crossfade-p",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-crossfade-p",
                        0
                    ],
                    "destination": [
                        "out-state",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "in-8",
                        0
                    ],
                    "destination": [
                        "ctl-mix",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "ctl-mix",
                        0
                    ],
                    "destination": [
                        "store-mix",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "store-mix",
                        0
                    ],
                    "destination": [
                        "st-mix-t",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-mix-t",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        8
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-mix-t",
                        1
                    ],
                    "destination": [
                        "st-mix-c",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-mix-c",
                        0
                    ],
                    "destination": [
                        "st-mix-p",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-mix-p",
                        0
                    ],
                    "destination": [
                        "out-state",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "in-9",
                        0
                    ],
                    "destination": [
                        "ctl-mode",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "ctl-mode",
                        0
                    ],
                    "destination": [
                        "store-mode",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "store-mode",
                        0
                    ],
                    "destination": [
                        "st-mode-t",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-mode-t",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        9
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-mode-t",
                        1
                    ],
                    "destination": [
                        "st-mode-c",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-mode-c",
                        0
                    ],
                    "destination": [
                        "st-mode-p",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-mode-p",
                        0
                    ],
                    "destination": [
                        "out-state",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "in-3",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "ctl-grab",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-lb",
                        0
                    ],
                    "destination": [
                        "obj-dl",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-dl",
                        0
                    ],
                    "destination": [
                        "obj-tbs",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-tbs",
                        0
                    ],
                    "destination": [
                        "store-repeat",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-tbs",
                        1
                    ],
                    "destination": [
                        "store-size",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-tbs",
                        2
                    ],
                    "destination": [
                        "store-speed",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-tbs",
                        3
                    ],
                    "destination": [
                        "store-position",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-tbs",
                        4
                    ],
                    "destination": [
                        "store-crossfade",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-tbs",
                        5
                    ],
                    "destination": [
                        "store-mix",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-tbs",
                        6
                    ],
                    "destination": [
                        "store-mode",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-core",
                        0
                    ],
                    "destination": [
                        "out-0",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-core",
                        1
                    ],
                    "destination": [
                        "out-1",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-core",
                        2
                    ],
                    "destination": [
                        "out-grab",
                        0
                    ]
                }
            }
        ]
    }
}