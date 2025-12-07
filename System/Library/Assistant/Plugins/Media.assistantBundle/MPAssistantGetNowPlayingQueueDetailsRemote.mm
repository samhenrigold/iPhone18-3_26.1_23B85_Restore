@interface MPAssistantGetNowPlayingQueueDetailsRemote
- (void)performWithCompletion:(id)completion;
@end

@implementation MPAssistantGetNowPlayingQueueDetailsRemote

- (void)performWithCompletion:(id)completion
{
  v109 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (!objc_msgSend_length(self->_requestAceHash, v5, v6, v7, v8))
  {
    v13 = objc_msgSend_aceId(self, v9, v10, v11, v12);
    v14 = sub_233505670(@"Get Now Playing Queue Details Remote", v13);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v14;
  }

  v16 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v21 = self->_requestAceHash;
    v22 = objc_msgSend_hashedRouteUIDs(self, v17, v18, v19, v20);
    v27 = objc_msgSend_count(v22, v23, v24, v25, v26);
    v32 = objc_msgSend_queueDetails(self, v28, v29, v30, v31);
    v37 = objc_msgSend_dictionary(v32, v33, v34, v35, v36);
    objc_msgSend_routeTimeout(self, v38, v39, v40, v41);
    *buf = 138544130;
    v102 = v21;
    v103 = 2048;
    v104 = v27;
    v105 = 2114;
    v106 = v37;
    v107 = 2048;
    v108 = v42;
    _os_log_impl(&dword_2334D9000, v16, OS_LOG_TYPE_DEFAULT, "Get Now Playing Queue Details Remote (invoke) <%{public}@>: %lu UIDs, queue %{public}@, timeout %f", buf, 0x2Au);
  }

  v43 = self->_requestAceHash;
  v48 = objc_msgSend_hashedRouteUIDs(self, v44, v45, v46, v47);
  sub_2335057BC(@"Get Now Playing Queue Details Remote", v43, v48);

  v53 = objc_msgSend_hashedRouteUIDs(self, v49, v50, v51, v52);
  v58 = objc_msgSend_count(v53, v54, v55, v56, v57);

  if (v58 == 1)
  {
    v59 = dispatch_group_create();
    v60 = objc_alloc_init(MEMORY[0x277D27840]);
    v65 = objc_msgSend_hashedRouteUIDs(self, v61, v62, v63, v64);
    v96[0] = MEMORY[0x277D85DD0];
    v96[1] = 3221225472;
    v96[2] = sub_2334E9660;
    v96[3] = &unk_2789DB508;
    v97 = v60;
    selfCopy = self;
    v99 = v59;
    v100 = completionCopy;
    v66 = v59;
    v67 = v60;
    objc_msgSend_decodeHashedRouteUIDs_completion_(v67, v68, v65, v96, v69);
  }

  else
  {
    v70 = objc_alloc(MEMORY[0x277D47208]);
    v67 = objc_msgSend_initWithReason_(v70, v71, @"Too many UIDs requested", v72, v73);
    if (!objc_msgSend_length(self->_requestAceHash, v74, v75, v76, v77))
    {
      v82 = objc_msgSend_aceId(self, v78, v79, v80, v81);
      v83 = sub_233505670(@"Get Now Playing Queue Details Remote", v82);
      v84 = self->_requestAceHash;
      self->_requestAceHash = v83;
    }

    v85 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
    {
      v90 = self->_requestAceHash;
      v91 = objc_msgSend_dictionary(v67, v86, v87, v88, v89);
      *buf = 138543618;
      v102 = v90;
      v103 = 2114;
      v104 = v91;
      _os_log_impl(&dword_2334D9000, v85, OS_LOG_TYPE_ERROR, "Get Now Playing Queue Details Remote (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
    }

    v66 = objc_msgSend_dictionary(v67, v92, v93, v94, v95);
    (*(completionCopy + 2))(completionCopy, v66);
  }
}

@end