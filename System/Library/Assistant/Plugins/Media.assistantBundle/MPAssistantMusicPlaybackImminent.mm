@interface MPAssistantMusicPlaybackImminent
- (void)_perform:(id)_perform;
- (void)performWithCompletion:(id)completion;
@end

@implementation MPAssistantMusicPlaybackImminent

- (void)_perform:(id)_perform
{
  v71[2] = *MEMORY[0x277D85DE8];
  _performCopy = _perform;
  v9 = objc_msgSend_systemMediaApplicationDestination(MEMORY[0x277D27878], v5, v6, v7, v8);
  v10 = objc_alloc_init(MEMORY[0x277D27828]);
  v70[0] = *MEMORY[0x277D27D08];
  v15 = objc_msgSend_refId(self, v11, v12, v13, v14);
  v70[1] = *MEMORY[0x277D27DC0];
  v71[0] = v15;
  v71[1] = @"com.apple.MediaAssistant.siri";
  v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v16, v71, v70, 2);
  v22 = objc_msgSend_mutableCopy(v17, v18, v19, v20, v21);

  userIdentity = self->_userIdentity;
  v65 = 0;
  v25 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x277CCAAB0], v24, userIdentity, 1, &v65);
  v30 = v65;
  if (v30)
  {
    if (!objc_msgSend_length(self->_requestAceHash, v26, v27, v28, v29))
    {
      v35 = objc_msgSend_aceId(self, v31, v32, v33, v34);
      v36 = sub_233505670(@"Music Playback Imminent", v35);
      requestAceHash = self->_requestAceHash;
      self->_requestAceHash = v36;
    }

    v38 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = self->_requestAceHash;
      *buf = 138543618;
      v67 = v39;
      v68 = 2114;
      v69 = v30;
      v40 = "Music Playback Imminent (perform) <%{public}@>: user identity encoding failed %{public}@";
      v41 = v38;
      v42 = OS_LOG_TYPE_ERROR;
LABEL_10:
      _os_log_impl(&dword_2334D9000, v41, v42, v40, buf, 0x16u);
    }
  }

  else
  {
    objc_msgSend_setObject_forKey_(v22, v26, v25, *MEMORY[0x277D27E18], v29);
    if (!objc_msgSend_length(self->_requestAceHash, v43, v44, v45, v46))
    {
      v51 = objc_msgSend_aceId(self, v47, v48, v49, v50);
      v52 = sub_233505670(@"Music Playback Imminent", v51);
      v53 = self->_requestAceHash;
      self->_requestAceHash = v52;
    }

    v38 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v54 = self->_requestAceHash;
      *buf = 138543619;
      v67 = v54;
      v68 = 2113;
      v69 = v25;
      v40 = "Music Playback Imminent (perform) <%{public}@>: user identity %{private}@";
      v41 = v38;
      v42 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_10;
    }
  }

  privateListeningEnabled = self->_privateListeningEnabled;
  if (privateListeningEnabled)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v22, v55, privateListeningEnabled, *MEMORY[0x277D27DA8], v56);
  }

  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = sub_2334F1CF4;
  v61[3] = &unk_2789DBB20;
  selfCopy = self;
  v64 = _performCopy;
  v62 = v10;
  v58 = _performCopy;
  v59 = v10;
  objc_msgSend_sendCommand_toDestination_withOptions_completion_(v59, v60, 132, v9, v22, v61);
}

- (void)performWithCompletion:(id)completion
{
  v37 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (!objc_msgSend_length(self->_requestAceHash, v5, v6, v7, v8))
  {
    v13 = objc_msgSend_aceId(self, v9, v10, v11, v12);
    v14 = sub_233505670(@"Music Playback Imminent", v13);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v14;
  }

  v16 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = self->_requestAceHash;
    *buf = 138543362;
    v36 = v17;
    _os_log_impl(&dword_2334D9000, v16, OS_LOG_TYPE_DEFAULT, "Music Playback Imminent (invoke) <%{public}@>: invoked", buf, 0xCu);
  }

  v18 = sub_23350699C();
  dispatch_group_enter(v18);
  v19 = self->_requestAceHash;
  v24 = objc_msgSend_preloadedUserSharedUserId(self, v20, v21, v22, v23);
  v29 = objc_msgSend_preloadedUserSharedUserId(self, v25, v26, v27, v28);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = sub_2334F206C;
  v32[3] = &unk_2789DB4B8;
  v33 = v18;
  v34 = completionCopy;
  v32[4] = self;
  v30 = v18;
  v31 = completionCopy;
  sub_233506A24(@"Music Playback Imminent", v19, v24, v29, v32);
}

@end