{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 2,
			"revision" : 3,
			"architecture" : "x86",
			"modernui" : 1
		}
,
		"rect" : [ 59.0, 104.0, 670.0, 629.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-17",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 107.0, 116.0, 365.0, 60.0 ],
					"presentation_rect" : [ 85.0, 116.0, 0.0, 0.0 ],
					"style" : "",
					"text" : "windows can use Patrick Delges filesys mxj to do the same thing. It's available here for now: http://www.crfmw.be/max/ read the helpfile in the download before implementing as you'll need to prepend the message mkdir to the path"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 107.0, 64.0, 365.0, 47.0 ],
					"presentation_rect" : [ 17.0, 60.0, 0.0, 0.0 ],
					"style" : "",
					"text" : "For a 64bit version, add the jamoma package and swap createfolder.mxo with j.folder: http://jamoma.org/max/ - not sure about windows"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 85.0, 29.0, 359.0, 33.0 ],
					"presentation_rect" : [ 17.0, 38.0, 0.0, 0.0 ],
					"style" : "",
					"text" : "NEEDS JASCH's createfolder.mxo to work 32bit and OS X only. : http://www.jasch.ch/dl/default.htm"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 17.0, 8.0, 150.0, 20.0 ],
					"style" : "",
					"text" : "mp.setupFolder"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"linecount" : 12,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 351.0, 427.0, 160.0, 167.0 ],
					"presentation_rect" : [ 250.0, 366.0, 0.0, 0.0 ],
					"style" : "",
					"text" : "your folder has been made and here it is, collect it anywhere in your patch using the v object with the argument \"folderNamePath\". Collect the path on initialization/creation/load with the receive object give it the folderName and add pathBang to the object as illustrated here"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 125.5, 246.0, 150.0, 47.0 ],
					"presentation_rect" : [ 195.0, 23.0, 0.0, 0.0 ],
					"style" : "",
					"text" : "on load, ask thisPatcher for the path of this particular patch"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"linecount" : 4,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 46.0, 495.0, 186.0, 62.0 ],
					"style" : "",
					"text" : "\"Macintosh HD:/Users/mparker/Dropbox/UoE-paperwork/teaching/Programme/SS/presets/folderHelp/\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 214.0, 461.0, 99.0, 22.0 ],
					"style" : "",
					"text" : "v folderHelpPath"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 214.0, 433.0, 125.0, 22.0 ],
					"style" : "",
					"text" : "r folderHelpPathBang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 22.0, 250.0, 89.0, 22.0 ],
					"style" : "",
					"text" : "loadmess path"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 22.0, 295.0, 69.0, 22.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"style" : "",
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 244.0, 335.0, 280.0, 74.0 ],
					"style" : "",
					"text" : "mp.setupFolder - give it a path and create a folder next to that path - this is the name of the argument you've given to it: for example, this will make a folder called folderHelp next to this patch in the finder"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 72.0, 335.0, 152.0, 22.0 ],
					"style" : "",
					"text" : "mp.setupFolder folderHelp"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "mp.setupFolder.maxpat",
				"bootpath" : "~/Dropbox/MaxCore/tinparkAbstractions/patching_utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "createfolder.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0
	}

}
