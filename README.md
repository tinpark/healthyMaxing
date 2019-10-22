# healthyMaxing
A way to help you make nice max code you can reuse in future.

It has 1 external dependency which is the [Jasch](https://www.jasch.ch/focus.html) object *createfolder*. This is easy to install with the MaxMSP package manager. 

## The toolkit consists of
various tools to keep in your top-level patch. Almost all of them work as bpatchers with a simple and clean interface to more complex functions underneath;

### mp.init
Initiate a stream of loadbangs in order to trigger loading of your patches in the right order, see [mp.setupFolder](#mpsetupfolder-setupfolder) below.

### mp.setupFolder
This is an essential patch and relies on Jasch's createfolder object. Give this abstraction an argument and it will setup a folder of that name and store the full and correct filepath for that folder inside a `value` or `v` object. Bang the `v` object anywhere in your patch to get the fullpath. In association with mp.init, this also manages setting up folder reltaionships for standalones. It's a really useful tool.

### mp.setupSoundCard
An interface for ensuring your soundcard is working. You can setup inputs and outputs here, the sample rate and buffer delay size? Clicking on the little *more* button brings up more detailed audio card management. 

The tool will also send out a fade which you can connect directly to your DAC~ to prevent clicks to the PA when turning on and off your patch's audio processing. This fade function, relies on `mp.quickFade~` and a little soundfile called `epoIncDec.wav`.

### mp.quickFade~
Not sure how nescessary this really is now that `adsr~` works so well. However, this creates a fade in over however many milliseconds you specify as the argument.  It also fades out over the same period and spits out a delayed 0 to stop recording etc. once the fade has completed. Send a toggle in to trigger the fade. 

### mp.presetManage
An interface to MaxMSP's `pattrstorage` system allowing naming, renaming and insertion of presets. Every time a preset is made the presets are saved to disk. 

### mp.quickRecord
This is an in-patch quick recorder that makes a new file name every time it is triggered. It's setup to record 4 channels at present but could be hacked to add more or less channels if you wanted. This is not `mc.` ready as yet, but a version could easily be made that works in this way. Every file recorded will have a fade in at the beginning and end, times are specified via the `adsr` commands that you can see. Samplerate will be the samplerate of Max at the time of recording. Bit depth will be 24 by default and it will spit out `.wav` files. 

## Have fun
As always, no pressure to use any of these tools but as they've been developed and tend to work quite well, give them a try so that you can concentrate on the sound design and compositional interaction and performability of your patch.
