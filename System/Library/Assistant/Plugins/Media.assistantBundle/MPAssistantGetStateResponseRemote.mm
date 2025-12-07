@interface MPAssistantGetStateResponseRemote
- (void)dealloc;
- (void)performWithCompletion:(id)completion;
- (void)setPlayingInfoFromEndpoint:(void *)endpoint;
@end

@implementation MPAssistantGetStateResponseRemote

- (void)setPlayingInfoFromEndpoint:(void *)endpoint
{
  v72 = *MEMORY[0x277D85DE8];
  if (!objc_msgSend_length(self->_requestAceHash, a2, endpoint, v3, v4))
  {
    v11 = objc_msgSend_aceId(self, v7, v8, v9, v10);
    v12 = sub_233505670(@"Get State Response Remote", v11);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v12;
  }

  v14 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = self->_requestAceHash;
    *buf = 138543618;
    *&buf[4] = v15;
    *&buf[12] = 2114;
    *&buf[14] = endpoint;
    _os_log_impl(&dword_2334D9000, v14, OS_LOG_TYPE_DEFAULT, "Get State Response Remote (playinginfo) <%{public}@>: Set info for: %{public}@", buf, 0x16u);
  }

  v16 = MRAVEndpointCopyUniqueIdentifier();
  if (MRAVEndpointIsLocalEndpoint())
  {
    LocalOrigin = MRMediaRemoteGetLocalOrigin();
    CFRetain(LocalOrigin);
  }

  else
  {
    MRAVEndpointGetExternalDevice();
    LocalOrigin = MRExternalDeviceCopyCustomOrigin();
  }

  v18 = dispatch_get_global_queue(25, 0);
  v19 = dispatch_group_create();
  v20 = MRNowPlayingPlayerPathCreate();
  v67 = 0;
  v21 = MRMediaRemoteNowPlayingCopyResolvedPlayerPath();
  if (v20)
  {
    CFRelease(v20);
  }

  v22 = MRPlaybackQueueRequestCreate();
  MRPlaybackQueueRequestSetIncludeMetadata();
  MRPlaybackQueueRequestSetIncludeInfo();
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v69 = sub_2334EAC10;
  v70 = sub_2334EAC20;
  v71 = 0;
  dispatch_group_enter(v19);
  CFRetain(endpoint);
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = sub_2334EAC28;
  v62[3] = &unk_2789DB148;
  v62[4] = self;
  v23 = v16;
  v63 = v23;
  v65 = buf;
  endpointCopy = endpoint;
  v24 = v19;
  v64 = v24;
  MEMORY[0x2383A1020](v22, v21, v18, v62);
  if (v22)
  {
    CFRelease(v22);
  }

  v60[0] = 0;
  v60[1] = v60;
  v60[2] = 0x2020000000;
  v61 = 0;
  dispatch_group_enter(v24);
  CFRetain(endpoint);
  v51 = MEMORY[0x277D85DD0];
  v52 = 3221225472;
  v53 = sub_2334EAE2C;
  v54 = &unk_2789DB170;
  selfCopy = self;
  v25 = v23;
  v56 = v25;
  v58 = v60;
  endpointCopy2 = endpoint;
  v26 = v24;
  v57 = v26;
  MRMediaRemoteGetPlaybackStateForPlayer();
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x2020000000;
  v50 = 0;
  dispatch_group_enter(v26);
  CFRetain(endpoint);
  Client = MRNowPlayingPlayerPathGetClient();
  v28 = MEMORY[0x277D85CD0];
  v39 = MEMORY[0x277D85DD0];
  v40 = 3221225472;
  v41 = sub_2334EAF88;
  v42 = &unk_2789DB198;
  v46 = v49;
  v47 = Client;
  selfCopy2 = self;
  v29 = v25;
  v44 = v29;
  endpointCopy3 = endpoint;
  v30 = v26;
  v45 = v30;
  MRMediaRemoteGetDeviceInfo();

  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x3032000000;
  v37[3] = sub_2334EAC10;
  v37[4] = sub_2334EAC20;
  v38 = 0;
  dispatch_group_enter(v30);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = sub_2334EB1C8;
  v33[3] = &unk_2789DB1C0;
  v33[4] = self;
  v34 = v29;
  v36 = v37;
  v31 = v30;
  v35 = v31;
  MEMORY[0x2383A0F80](v18, v33);
  CFRetain(endpoint);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2334EB308;
  block[3] = &unk_2789DB238;
  block[4] = self;
  block[5] = v37;
  block[6] = buf;
  block[7] = v49;
  block[8] = v60;
  block[9] = endpoint;
  block[10] = v21;
  block[11] = LocalOrigin;
  dispatch_group_notify(v31, v18, block);

  _Block_object_dispose(v37, 8);
  _Block_object_dispose(v49, 8);

  _Block_object_dispose(v60, 8);
  _Block_object_dispose(buf, 8);
}

- (void)performWithCompletion:(id)completion
{
  v57 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (!objc_msgSend_length(self->_requestAceHash, v5, v6, v7, v8))
  {
    v13 = objc_msgSend_aceId(self, v9, v10, v11, v12);
    v14 = sub_233505670(@"Get State Response Remote", v13);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v14;
  }

  v16 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v21 = self->_requestAceHash;
    v22 = objc_msgSend_hashedRouteUIDs(self, v17, v18, v19, v20);
    *buf = 138543618;
    v54 = v21;
    v55 = 2048;
    v56 = objc_msgSend_count(v22, v23, v24, v25, v26);
    _os_log_impl(&dword_2334D9000, v16, OS_LOG_TYPE_DEFAULT, "Get State Response Remote (invoke) <%{public}@>: %lu UIDs", buf, 0x16u);
  }

  v27 = self->_requestAceHash;
  v32 = objc_msgSend_hashedRouteUIDs(self, v28, v29, v30, v31);
  sub_2335057BC(@"Get State Response Remote", v27, v32);

  v33 = objc_alloc_init(MEMORY[0x277D47550]);
  v34 = objc_alloc_init(MEMORY[0x277CBEB38]);
  workingRemoteResponse = self->_workingRemoteResponse;
  self->_workingRemoteResponse = v34;

  v36 = objc_alloc_init(MEMORY[0x277CBEB38]);
  originMapping = self->_originMapping;
  self->_originMapping = v36;

  v38 = objc_alloc_init(MEMORY[0x277D27840]);
  encoder = self->_encoder;
  self->_encoder = v38;

  v40 = self->_encoder;
  v45 = objc_msgSend_hashedRouteUIDs(self, v41, v42, v43, v44);
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = sub_2334EC0E8;
  v50[3] = &unk_2789DBA80;
  v51 = v33;
  v52 = completionCopy;
  v50[4] = self;
  v46 = v33;
  v47 = completionCopy;
  objc_msgSend_decodeHashedRouteUIDs_completion_(v40, v48, v45, v50, v49);
}

- (void)dealloc
{
  v6 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2, v3, v4);
  objc_msgSend_removeObserver_(v6, v7, self, v8, v9);

  v10.receiver = self;
  v10.super_class = MPAssistantGetStateResponseRemote;
  [(MPAssistantGetStateResponseRemote *)&v10 dealloc];
}

@end