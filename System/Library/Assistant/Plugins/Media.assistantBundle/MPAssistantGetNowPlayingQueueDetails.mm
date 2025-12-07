@interface MPAssistantGetNowPlayingQueueDetails
- (void)getSAMPMediaItems:(id)items origin:(void *)origin completion:(id)completion;
- (void)performWithCompletion:(id)completion;
@end

@implementation MPAssistantGetNowPlayingQueueDetails

- (void)getSAMPMediaItems:(id)items origin:(void *)origin completion:(id)completion
{
  var1 = items.var1;
  var0 = items.var0;
  completionCopy = completion;
  v8 = MRPlaybackQueueRequestCreate();
  MRPlaybackQueueRequestSetIncludeMetadata();
  v9 = MRNowPlayingPlayerPathCreate();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2334E81E4;
  v11[3] = &unk_2789DAFE0;
  v13 = var0;
  v14 = var1;
  v12 = completionCopy;
  v10 = completionCopy;
  MEMORY[0x2383A1020](v8, v9, MEMORY[0x277D85CD0], v11);
  CFRelease(v8);
  CFRelease(v9);
}

- (void)performWithCompletion:(id)completion
{
  v163 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v149 = 0;
  v150 = &v149;
  v151 = 0x2020000000;
  v152 = 0;
  if (!objc_msgSend_length(self->_requestAceHash, v5, v6, v7, v8))
  {
    v13 = objc_msgSend_aceId(self, v9, v10, v11, v12);
    v14 = sub_233505670(@"Get Now Playing Queue Details", v13);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v14;
  }

  v16 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v21 = self->_requestAceHash;
    v22 = objc_msgSend_hashedRouteUIDs(self, v17, v18, v19, v20);
    v27 = objc_msgSend_count(v22, v23, v24, v25, v26);
    v32 = objc_msgSend_previousItemCount(self, v28, v29, v30, v31);
    ItemCount = objc_msgSend_nextItemCount(self, v33, v34, v35, v36);
    v42 = objc_msgSend_preemptiveNowPlayingQueueDetailsTimeOut(self, v38, v39, v40, v41);
    *buf = 138544386;
    v154 = v21;
    v155 = 2048;
    v156 = v27;
    v157 = 2048;
    v158 = v32;
    v159 = 2048;
    v160 = ItemCount;
    v161 = 2114;
    v162 = v42;
    _os_log_impl(&dword_2334D9000, v16, OS_LOG_TYPE_DEFAULT, "Get Now Playing Queue Details (invoke) <%{public}@>: %lu UIDs, prev %ld, next %ld, timeout %{public}@", buf, 0x34u);
  }

  v43 = self->_requestAceHash;
  v48 = objc_msgSend_hashedRouteUIDs(self, v44, v45, v46, v47);
  sub_2335057BC(@"Get Now Playing Queue Details", v43, v48);

  v49 = dispatch_queue_create("com.apple.Assistant.GetNowPlayingQueueDetails", 0);
  v50 = dispatch_group_create();
  v55 = objc_msgSend_hashedRouteUIDs(self, v51, v52, v53, v54);
  v60 = objc_msgSend_count(v55, v56, v57, v58, v59) == 1;

  if (v60)
  {
    v61 = objc_alloc_init(MEMORY[0x277D27840]);
    v66 = objc_msgSend_hashedRouteUIDs(self, v62, v63, v64, v65);
    v143[0] = MEMORY[0x277D85DD0];
    v143[1] = 3221225472;
    v143[2] = sub_2334E8A14;
    v143[3] = &unk_2789DAF68;
    v67 = v61;
    v144 = v67;
    selfCopy = self;
    v147 = completionCopy;
    v146 = v50;
    v148 = &v149;
    objc_msgSend_decodeHashedRouteUIDs_completion_(v67, v68, v66, v143, v69);
  }

  else
  {
    dispatch_group_enter(v50);
    v136 = MEMORY[0x277D85DD0];
    v137 = 3221225472;
    v138 = sub_2334E8C80;
    v139 = &unk_2789DAF90;
    selfCopy2 = self;
    v142 = &v149;
    v141 = v50;
    MRAVEndpointGetMyGroupLeaderWithTimeout();
  }

  v70 = dispatch_time(0, 5000000000);
  dispatch_group_wait(v50, v70);
  if (v150[3])
  {
    v125 = v49;
    v71 = objc_alloc_init(MEMORY[0x277D475D8]);
    dispatch_group_enter(v50);
    v76 = objc_msgSend_previousItemCount(self, v72, v73, v74, v75);
    v81 = objc_msgSend_previousItemCount(self, v77, v78, v79, v80);
    v82 = -v76;
    v83 = v150[3];
    v133[0] = MEMORY[0x277D85DD0];
    v133[1] = 3221225472;
    v133[2] = sub_2334E8DD8;
    v133[3] = &unk_2789DB008;
    v84 = v71;
    v134 = v84;
    v85 = v50;
    v135 = v85;
    objc_msgSend_getSAMPMediaItems_origin_completion_(self, v86, v82, v81, v83, v133);
    v87 = dispatch_time(0, 5000000000);
    dispatch_group_wait(v85, v87);
    dispatch_group_enter(v85);
    v92 = objc_msgSend_nextItemCount(self, v88, v89, v90, v91);
    v93 = v150[3];
    v130[0] = MEMORY[0x277D85DD0];
    v130[1] = 3221225472;
    v130[2] = sub_2334E8E18;
    v130[3] = &unk_2789DB008;
    v94 = v84;
    v131 = v94;
    v95 = v85;
    v132 = v95;
    objc_msgSend_getSAMPMediaItems_origin_completion_(self, v96, 0, v92, v93, v130);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2334E8E58;
    block[3] = &unk_2789DAFB8;
    v129 = &v149;
    block[4] = self;
    v127 = v94;
    v128 = completionCopy;
    v97 = v94;
    dispatch_group_notify(v95, MEMORY[0x277D85CD0], block);

    v49 = v125;
    v98 = v134;
  }

  else
  {
    v99 = objc_alloc(MEMORY[0x277D47208]);
    v97 = objc_msgSend_initWithReason_(v99, v100, @"timed out", v101, v102);
    if (!objc_msgSend_length(self->_requestAceHash, v103, v104, v105, v106))
    {
      v111 = objc_msgSend_aceId(self, v107, v108, v109, v110);
      v112 = sub_233505670(@"Get Now Playing Queue Details", v111);
      v113 = self->_requestAceHash;
      self->_requestAceHash = v112;
    }

    v114 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
    {
      v119 = self->_requestAceHash;
      v120 = objc_msgSend_dictionary(v97, v115, v116, v117, v118);
      *buf = 138543618;
      v154 = v119;
      v155 = 2114;
      v156 = v120;
      _os_log_impl(&dword_2334D9000, v114, OS_LOG_TYPE_ERROR, "Get Now Playing Queue Details (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
    }

    v98 = objc_msgSend_dictionary(v97, v121, v122, v123, v124);
    (*(completionCopy + 2))(completionCopy, v98);
  }

  _Block_object_dispose(&v149, 8);
}

@end