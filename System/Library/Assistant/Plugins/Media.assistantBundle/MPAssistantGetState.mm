@interface MPAssistantGetState
- (void)performWithCompletion:(id)completion;
@end

@implementation MPAssistantGetState

- (void)performWithCompletion:(id)completion
{
  v41 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (!objc_msgSend_length(self->_requestAceHash, v5, v6, v7, v8))
  {
    v13 = objc_msgSend_aceId(self, v9, v10, v11, v12);
    v14 = sub_233505670(@"Get State", v13);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v14;
  }

  v16 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = self->_requestAceHash;
    *buf = 138543362;
    v40 = v17;
    _os_log_impl(&dword_2334D9000, v16, OS_LOG_TYPE_DEFAULT, "Get State (invoke) <%{public}@>: invoked", buf, 0xCu);
  }

  v18 = objc_alloc_init(MEMORY[0x277D47558]);
  v19 = dispatch_get_global_queue(0, 0);
  v20 = dispatch_group_create();
  dispatch_group_enter(v20);
  v33 = MEMORY[0x277D85DD0];
  v34 = 3221225472;
  v35 = sub_2334EA1B0;
  v36 = &unk_2789DB080;
  v37 = v18;
  v38 = v20;
  MRMediaRemoteGetNowPlayingInfo();
  dispatch_group_enter(v38);
  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = sub_2334EA2DC;
  v30 = &unk_2789DB0A8;
  v31 = v37;
  v32 = v38;
  v21 = v38;
  MRMediaRemoteGetNowPlayingApplicationPlaybackState();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2334EA338;
  block[3] = &unk_2789DB120;
  block[4] = self;
  v25 = v31;
  v26 = completionCopy;
  v22 = completionCopy;
  v23 = v31;
  dispatch_group_notify(v21, v19, block);
}

@end