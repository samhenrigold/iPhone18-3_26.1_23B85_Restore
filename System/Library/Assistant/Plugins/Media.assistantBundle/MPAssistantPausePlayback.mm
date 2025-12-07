@interface MPAssistantPausePlayback
- (void)performWithCompletion:(id)completion;
@end

@implementation MPAssistantPausePlayback

- (void)performWithCompletion:(id)completion
{
  v54 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (!objc_msgSend_length(self->_requestAceHash, v5, v6, v7, v8))
  {
    v13 = objc_msgSend_aceId(self, v9, v10, v11, v12);
    v14 = sub_233505670(@"Pause Playback", v13);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v14;
  }

  v16 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v21 = self->_requestAceHash;
    v22 = objc_msgSend_hashedRouteUIDs(self, v17, v18, v19, v20);
    *buf = 138543618;
    v51 = v21;
    v52 = 2048;
    v53 = objc_msgSend_count(v22, v23, v24, v25, v26);
    _os_log_impl(&dword_2334D9000, v16, OS_LOG_TYPE_DEFAULT, "Pause Playback (invoke) <%{public}@>: %lu UIDs", buf, 0x16u);
  }

  v27 = self->_requestAceHash;
  v32 = objc_msgSend_hashedRouteUIDs(self, v28, v29, v30, v31);
  sub_2335057BC(@"Pause Playback", v27, v32);

  v33 = objc_alloc_init(MEMORY[0x277D27858]);
  v34 = objc_alloc_init(MEMORY[0x277D27840]);
  v39 = objc_msgSend_hashedRouteUIDs(self, v35, v36, v37, v38);
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = sub_2334F262C;
  v45[3] = &unk_2789DB508;
  v46 = v33;
  selfCopy = self;
  v48 = v34;
  v49 = completionCopy;
  v40 = completionCopy;
  v41 = v34;
  v42 = v33;
  objc_msgSend_decodeHashedRouteUIDs_completion_(v41, v43, v39, v45, v44);
}

@end