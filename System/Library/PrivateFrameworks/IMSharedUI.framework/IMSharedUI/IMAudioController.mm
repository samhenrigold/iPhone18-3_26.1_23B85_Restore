@interface IMAudioController
+ (id)audioControllerWithContentsOfURLs:(id)ls;
- (IMAudioController)initWithContentsOfURLs:(id)ls;
- (IMAudioControllerDelegate)delegate;
- (NSArray)audioURLs;
- (double)currentMediaObjectDuration;
- (double)currentMediaObjectTime;
- (float)volume;
- (id)currentMediaObject;
- (unint64_t)audioSessionControllerOptions;
- (void)_notifyPlayerDidPrepareAudioURL:(id)l successfully:(BOOL)successfully;
- (void)_playSoundWithURL:(id)l completion:(id)completion;
- (void)audioPlayerCurrentTimeDidChange:(id)change;
- (void)audioPlayerDidFinishPlaying:(id)playing;
- (void)audioPlayerDidPrepareAudioToPlay:(id)play successfully:(BOOL)successfully;
- (void)dealloc;
- (void)pause;
- (void)playAfterDelay:(double)delay;
- (void)playListenEndSound:(id)sound;
- (void)playListenSound:(id)sound;
- (void)prepareToPlay;
- (void)setPlaying:(BOOL)playing;
- (void)setShouldDuckOthers:(BOOL)others;
- (void)setShouldStopPlayingWhenSilent:(BOOL)silent;
- (void)setShouldUseSpeaker:(BOOL)speaker;
- (void)setVolume:(float)volume;
- (void)stop;
@end

@implementation IMAudioController

- (void)dealloc
{
  objc_msgSend_setDelegate_(self->_audioPlayer, a2, 0, v3, v2);
  objc_msgSend_stop(self->_audioPlayer, v5, v6, v8, v7);
  v9.receiver = self;
  v9.super_class = IMAudioController;
  [(IMAudioController *)&v9 dealloc];
}

- (IMAudioController)initWithContentsOfURLs:(id)ls
{
  lsCopy = ls;
  v13.receiver = self;
  v13.super_class = IMAudioController;
  v8 = [(IMAudioController *)&v13 init];
  if (v8)
  {
    v10 = objc_msgSend_mutableCopy(lsCopy, v5, v6, v9, v7);
    audioURLs = v8->_audioURLs;
    v8->_audioURLs = v10;

    v8->_shouldUseSpeaker = 1;
    v8->_currentIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v8;
}

+ (id)audioControllerWithContentsOfURLs:(id)ls
{
  lsCopy = ls;
  v9 = objc_alloc(objc_msgSend_audioControllerClass(self, v5, v6, v8, v7));
  v13 = objc_msgSend_initWithContentsOfURLs_(v9, v10, lsCopy, v12, v11);

  return v13;
}

- (NSArray)audioURLs
{
  v5 = objc_msgSend_copy(self->_audioURLs, a2, v2, v4, v3);

  return v5;
}

- (void)setShouldUseSpeaker:(BOOL)speaker
{
  if (self->_shouldUseSpeaker != speaker)
  {
    self->_shouldUseSpeaker = speaker;
    if (objc_msgSend_isPlaying(self, a2, speaker, v4, v3))
    {
      v17 = objc_msgSend_sharedInstance(IMAudioSessionController, v6, v7, v9, v8);
      v14 = objc_msgSend_audioSessionControllerOptions(self, v10, v11, v13, v12);
      objc_msgSend_activateWithOptions_completion_(v17, v15, v14, v16, 0);
    }
  }
}

- (void)setShouldStopPlayingWhenSilent:(BOOL)silent
{
  if (self->_shouldStopPlayingWhenSilent != silent)
  {
    self->_shouldStopPlayingWhenSilent = silent;
    if (objc_msgSend_isPlaying(self, a2, silent, v4, v3))
    {
      v17 = objc_msgSend_sharedInstance(IMAudioSessionController, v6, v7, v9, v8);
      v14 = objc_msgSend_audioSessionControllerOptions(self, v10, v11, v13, v12);
      objc_msgSend_activateWithOptions_completion_(v17, v15, v14, v16, 0);
    }
  }
}

- (void)setShouldDuckOthers:(BOOL)others
{
  if (self->_shouldDuckOthers != others)
  {
    self->_shouldDuckOthers = others;
    if (objc_msgSend_isPlaying(self, a2, others, v4, v3))
    {
      v17 = objc_msgSend_sharedInstance(IMAudioSessionController, v6, v7, v9, v8);
      v14 = objc_msgSend_audioSessionControllerOptions(self, v10, v11, v13, v12);
      objc_msgSend_activateWithOptions_completion_(v17, v15, v14, v16, 0);
    }
  }
}

- (unint64_t)audioSessionControllerOptions
{
  shouldUseSpeaker = objc_msgSend_shouldUseSpeaker(self, a2, v2, v4, v3);
  if (objc_msgSend_shouldStopPlayingWhenSilent(self, v7, v8, v10, v9))
  {
    shouldUseSpeaker |= 2uLL;
  }

  if (objc_msgSend_shouldDuckOthers(self, v11, v12, v14, v13))
  {
    return shouldUseSpeaker | 4;
  }

  else
  {
    return shouldUseSpeaker;
  }
}

- (void)playAfterDelay:(double)delay
{
  v95 = *MEMORY[0x277D85DE8];
  v5 = self->_audioURLs;
  v10 = objc_msgSend_audio(IMSharedUILogs, v6, v7, v9, v8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    currentIndex = self->_currentIndex;
    LODWORD(buf) = 67109376;
    HIDWORD(buf) = currentIndex;
    v93 = 1024;
    v94 = objc_msgSend_count(v5, v11, v12, v14, v13);
    _os_log_impl(&dword_2547F8000, v10, OS_LOG_TYPE_INFO, "Playing %d of %d audio messages", &buf, 0xEu);
  }

  v20 = objc_msgSend_audioPlayer(self, v16, v17, v19, v18);
  objc_initWeak(&buf, self);
  if (v20)
  {
    if ((objc_msgSend_isPlaying(v20, v21, v22, v24, v23) & 1) == 0)
    {
      objc_initWeak(&location, v20);
      v29 = objc_msgSend_sharedInstance(IMAudioSessionController, v25, v26, v28, v27);
      v34 = objc_msgSend_audioSessionControllerOptions(self, v30, v31, v33, v32);
      v86[0] = MEMORY[0x277D85DD0];
      v86[1] = 3221225472;
      v86[2] = sub_2547FE614;
      v86[3] = &unk_279789090;
      v20 = v20;
      v87 = v20;
      v90[1] = *&delay;
      objc_copyWeak(&v89, &buf);
      objc_copyWeak(v90, &location);
      selfCopy = self;
      objc_msgSend_activateWithOptions_completion_(v29, v35, v34, v36, v86);

      objc_destroyWeak(v90);
      objc_destroyWeak(&v89);

      objc_destroyWeak(&location);
    }
  }

  else
  {
    v37 = self->_currentIndex;
    if (v37 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v37 = 0;
      self->_currentIndex = 0;
    }

    if (v37 >= objc_msgSend_count(v5, v21, v22, v24, v23))
    {
      v20 = 0;
    }

    else
    {
      v41 = objc_msgSend_objectAtIndex_(v5, v38, self->_currentIndex, v40, v39);
      shouldUseAVPlayer = objc_msgSend_shouldUseAVPlayer(self, v42, v43, v45, v44);
      v49 = objc_msgSend_audioPlayerWithContentsOfURL_shouldUseAVPlayer_(IMAudioPlayer, v47, v41, v48, shouldUseAVPlayer);
      objc_msgSend_setDelegate_(v49, v50, self, v52, v51);
      objc_msgSend_setAudioPlayer_(self, v53, v49, v55, v54);
      objc_initWeak(&location, v49);
      v60 = objc_msgSend_sharedInstance(IMAudioSessionController, v56, v57, v59, v58);
      v65 = objc_msgSend_audioSessionControllerOptions(self, v61, v62, v64, v63);
      v81[0] = MEMORY[0x277D85DD0];
      v81[1] = 3221225472;
      v81[2] = sub_2547FE768;
      v81[3] = &unk_279789090;
      v20 = v49;
      v82 = v20;
      v85[1] = *&delay;
      objc_copyWeak(&v84, &buf);
      objc_copyWeak(v85, &location);
      selfCopy2 = self;
      objc_msgSend_activateWithOptions_completion_(v60, v66, v65, v67, v81);

      v72 = objc_msgSend_delegate(self, v68, v69, v71, v70);
      if (objc_opt_respondsToSelector())
      {
        objc_msgSend_duration(v20, v76, v73, v74, v75);
        v78 = v77;
        v79.n128_u64[0] = 0;
        objc_msgSend_audioController_didChangeProgressForContentAtURL_currentTime_duration_(v72, v80, self, v79, v41, v78);
      }

      objc_destroyWeak(v85);
      objc_destroyWeak(&v84);

      objc_destroyWeak(&location);
    }
  }

  objc_destroyWeak(&buf);
}

- (void)prepareToPlay
{
  v44 = 0;
  v45 = &v44;
  v4.n128_u64[0] = 0x3032000000;
  v46 = 0x3032000000;
  v47 = sub_2547FEBF0;
  v48 = sub_2547FEC00;
  v49 = objc_msgSend_audioPlayer(self, a2, v2, v4, v3);
  if (objc_msgSend_isPlaying(v45[5], v6, v7, v9, v8))
  {
    v14 = objc_msgSend_audioURL(v45[5], v10, v11, v13, v12);
    objc_msgSend__notifyPlayerDidPrepareAudioURL_successfully_(self, v15, v14, v16, 1);
  }

  else
  {
    if (self->_currentIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      self->_currentIndex = 0;
    }

    v14 = self->_audioURLs;
    v21 = v45[5];
    if (v21)
    {
      goto LABEL_6;
    }

    currentIndex = self->_currentIndex;
    if (currentIndex >= objc_msgSend_count(v14, v17, v18, v20, v19))
    {
      objc_msgSend__notifyPlayerDidPrepareAudioURL_successfully_(self, v17, 0, v20, 0);
      goto LABEL_8;
    }

    v21 = v45[5];
    if (v21)
    {
LABEL_6:
      v22 = objc_msgSend_audioURL(v21, v17, v18, v20, v19);
    }

    else
    {
      v22 = objc_msgSend_objectAtIndex_(v14, v17, self->_currentIndex, v20, v19);
    }

    v27 = v22;
    v28 = objc_msgSend_sharedInstance(IMAudioSessionController, v23, v24, v26, v25);
    v33 = objc_msgSend_audioSessionControllerOptions(self, v29, v30, v32, v31);
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = sub_2547FEC08;
    v39[3] = &unk_2797890B8;
    v34 = v28;
    v40 = v34;
    selfCopy = self;
    v35 = v27;
    v42 = v35;
    v43 = &v44;
    objc_msgSend_activateWithOptions_completion_(v34, v36, v33, v37, v39);
  }

LABEL_8:

  _Block_object_dispose(&v44, 8);
}

- (void)pause
{
  v6 = objc_msgSend_audioPlayer(self, a2, v2, v4, v3);
  objc_msgSend_pause(v6, v7, v8, v10, v9);

  objc_msgSend_setPlaying_(self, v11, 0, v13, v12);
  v21 = objc_msgSend_delegate(self, v14, v15, v17, v16);
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_audioControllerDidPause_(v21, v18, self, v20, v19);
  }
}

- (void)stop
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_audio(IMSharedUILogs, a2, v2, v4, v3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v40[0] = 67109120;
    v40[1] = objc_msgSend_interrupted(self, v7, v8, v10, v9);
    _os_log_impl(&dword_2547F8000, v6, OS_LOG_TYPE_INFO, "Stop (interruption: %d)", v40, 8u);
  }

  v15 = objc_msgSend_audioPlayer(self, v11, v12, v14, v13);
  objc_msgSend_stop(v15, v16, v17, v19, v18);

  objc_msgSend_setPlaying_(self, v20, 0, v22, v21);
  if ((objc_msgSend_interrupted(self, v23, v24, v26, v25) & 1) == 0)
  {
    v31 = objc_msgSend_sharedInstance(IMAudioSessionController, v27, v28, v30, v29);
    objc_msgSend_deactivate(v31, v32, v33, v35, v34);
  }

  v36 = objc_msgSend_delegate(self, v27, v28, v30, v29);
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_audioControllerDidStop_(v36, v37, self, v39, v38);
  }
}

- (id)currentMediaObject
{
  currentIndex = self->_currentIndex;
  if (currentIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = objc_msgSend_objectAtIndex_(self->_audioURLs, a2, currentIndex, v4, v2);
  }

  return v6;
}

- (double)currentMediaObjectTime
{
  v5 = objc_msgSend_audioPlayer(self, a2, v2, v4, v3);
  objc_msgSend_currentTime(v5, v9, v6, v7, v8);
  v11 = v10;

  return v11;
}

- (double)currentMediaObjectDuration
{
  v5 = objc_msgSend_audioPlayer(self, a2, v2, v4, v3);
  objc_msgSend_duration(v5, v9, v6, v7, v8);
  v11 = v10;

  return v11;
}

- (void)setVolume:(float)volume
{
  v10 = objc_msgSend_audioPlayer(self, a2, v3, *&volume, v4);
  v6.n128_f32[0] = volume;
  objc_msgSend_setVolume_(v10, v7, v8, v6, v9);
}

- (float)volume
{
  v5 = objc_msgSend_audioPlayer(self, a2, v2, v4, v3);
  objc_msgSend_volume(v5, v6, v7, v9, v8);
  v11 = v10;

  return v11;
}

- (void)audioPlayerCurrentTimeDidChange:(id)change
{
  changeCopy = change;
  v8 = objc_msgSend_delegate(self, v4, v5, v7, v6);
  if (objc_opt_respondsToSelector())
  {
    v13 = objc_msgSend_currentMediaObject(self, v9, v10, v12, v11);
    objc_msgSend_currentTime(changeCopy, v17, v14, v15, v16);
    v19 = v18.n128_u64[0];
    objc_msgSend_duration(changeCopy, v18, v20, v21, v22);
    v24 = v23;
    v25.n128_u64[0] = v19;
    objc_msgSend_audioController_didChangeProgressForContentAtURL_currentTime_duration_(v8, v26, self, v25, v13, v24);
  }
}

- (void)audioPlayerDidFinishPlaying:(id)playing
{
  playingCopy = playing;
  v9 = objc_msgSend_delegate(self, v5, v6, v8, v7);
  if (objc_opt_respondsToSelector())
  {
    v14 = objc_msgSend_currentMediaObject(self, v10, v11, v13, v12);
    objc_msgSend_audioController_didFinishPlayingContentAtURL_(v9, v15, self, v16, v14);
  }

  objc_msgSend_setDelegate_(playingCopy, v10, 0, v13, v12);
  objc_msgSend_setAudioPlayer_(self, v17, 0, v19, v18);
  v20 = self->_currentIndex + 1;
  if (v20 >= objc_msgSend_count(self->_audioURLs, v21, v22, v24, v23))
  {
    if (objc_msgSend_shouldUseSpeaker(self, v25, v26, v28, v27))
    {
      objc_msgSend_stop(self, v29, v30, v32, v31);
    }

    else
    {
      v33[0] = MEMORY[0x277D85DD0];
      v32.n128_u64[0] = 3221225472;
      v33[1] = 3221225472;
      v33[2] = sub_2547FF1FC;
      v33[3] = &unk_2797890E0;
      v33[4] = self;
      objc_msgSend_playListenEndSound_(self, v29, v33, v32, v31);
    }
  }

  else
  {
    ++self->_currentIndex;
    objc_msgSend_play(self, v25, v26, v28, v27);
  }
}

- (void)audioPlayerDidPrepareAudioToPlay:(id)play successfully:(BOOL)successfully
{
  v8 = objc_msgSend_audioURL(play, a2, play, v4, successfully);
  objc_msgSend__notifyPlayerDidPrepareAudioURL_successfully_(self, v6, v8, v7, 1);
}

- (void)_notifyPlayerDidPrepareAudioURL:(id)l successfully:(BOOL)successfully
{
  successfullyCopy = successfully;
  lCopy = l;
  v10 = objc_msgSend_delegate(self, v6, v7, v9, v8);
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_audioController_didPrepareToPlayContentAtURL_successfully_(v10, v11, self, v12, lCopy, successfullyCopy);
  }
}

- (void)_playSoundWithURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v11 = objc_msgSend_audioPlayerWithContentsOfURL_(IMAudioPlayer, v8, lCopy, v10, v9);
  objc_msgSend_setListenAudioPlayer_(self, v12, v11, v14, v13);
  objc_initWeak(&location, self);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_2547FF410;
  v19[3] = &unk_279789108;
  objc_copyWeak(&v21, &location);
  v15 = completionCopy;
  v20 = v15;
  v16.n128_u64[0] = 0;
  objc_msgSend_playAfterDelay_completion_(v11, v17, v19, v16, v18);

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

- (void)playListenSound:(id)sound
{
  soundCopy = sound;
  v7 = IMURLForResourceFromSharedUIBundle(@"MessageListen", @"caf");
  objc_msgSend__playSoundWithURL_completion_(self, v5, v7, v6, soundCopy);
}

- (void)playListenEndSound:(id)sound
{
  soundCopy = sound;
  v7 = IMURLForResourceFromSharedUIBundle(@"MessageListenEnd", @"caf");
  objc_msgSend__playSoundWithURL_completion_(self, v5, v7, v6, soundCopy);
}

- (void)setPlaying:(BOOL)playing
{
  if (self->_playing != playing)
  {
    self->_playing = playing;
    v10 = objc_msgSend_delegate(self, a2, playing, v5, v3);
    if (objc_opt_respondsToSelector())
    {
      objc_msgSend_audioControllerPlayingDidChange_(v10, v7, self, v9, v8);
    }
  }
}

- (IMAudioControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end