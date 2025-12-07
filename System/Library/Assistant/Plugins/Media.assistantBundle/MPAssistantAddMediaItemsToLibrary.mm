@interface MPAssistantAddMediaItemsToLibrary
- (BOOL)_addMediaItemsToLibrarySupported;
- (int64_t)_extractAtomID;
- (void)_performAddMediaItemsWithCompletion:(id)completion;
- (void)_performWithCompletion:(id)completion;
- (void)_requestCompanionToAddMediaItemsForOrigin:(void *)origin withCompletion:(id)completion;
- (void)performWithCompletion:(id)completion;
@end

@implementation MPAssistantAddMediaItemsToLibrary

- (void)_performAddMediaItemsWithCompletion:(id)completion
{
  v65 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  AtomID = objc_msgSend__extractAtomID(self, v5, v6, v7, v8);
  if (AtomID)
  {
    v14 = AtomID;
    if (!objc_msgSend_length(self->_requestAceHash, v10, v11, v12, v13))
    {
      v19 = objc_msgSend_aceId(self, v15, v16, v17, v18);
      v20 = sub_233505670(@"Add Media Items To Library", v19);
      requestAceHash = self->_requestAceHash;
      self->_requestAceHash = v20;
    }

    v22 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = self->_requestAceHash;
      *buf = 138543618;
      v62 = v23;
      v63 = 2048;
      v64 = v14;
      _os_log_impl(&dword_2334D9000, v22, OS_LOG_TYPE_DEFAULT, "Add Media Items To Library (cloud) <%{public}@>: Will add store item %lld", buf, 0x16u);
    }

    v27 = objc_msgSend_controllerWithUserIdentity_(MEMORY[0x277CD5D78], v24, self->_userIdentity, v25, v26);
    cloudController = self->_cloudController;
    self->_cloudController = v27;

    v33 = objc_msgSend_copy(self->_requestAceHash, v29, v30, v31, v32);
    v34 = self->_cloudController;
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = sub_2334DE544;
    v56[3] = &unk_2789DAC20;
    v57 = v33;
    v60 = v14;
    selfCopy = self;
    v59 = completionCopy;
    v35 = v33;
    objc_msgSend_addStoreItemWithAdamID_completionHandler_(v34, v36, v14, v56, v37);

LABEL_13:
    goto LABEL_14;
  }

  if (completionCopy)
  {
    if (!objc_msgSend_length(self->_requestAceHash, v10, v11, v12, v13))
    {
      v42 = objc_msgSend_aceId(self, v38, v39, v40, v41);
      v43 = sub_233505670(@"Add Media Items To Library", v42);
      v44 = self->_requestAceHash;
      self->_requestAceHash = v43;
    }

    v45 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v50 = self->_requestAceHash;
      v51 = objc_msgSend_mediaItems(self, v46, v47, v48, v49);
      *buf = 138543618;
      v62 = v50;
      v63 = 2114;
      v64 = v51;
      _os_log_impl(&dword_2334D9000, v45, OS_LOG_TYPE_ERROR, "Add Media Items To Library (companion) <%{public}@>: No adam IDs in %{public}@", buf, 0x16u);
    }

    v52 = objc_alloc(MEMORY[0x277D47208]);
    v35 = objc_msgSend_initWithErrorCode_(v52, v53, *MEMORY[0x277D48638], v54, v55);
    (*(completionCopy + 2))(completionCopy, v35);
    goto LABEL_13;
  }

LABEL_14:
}

- (void)_requestCompanionToAddMediaItemsForOrigin:(void *)origin withCompletion:(id)completion
{
  v62[2] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  AtomID = objc_msgSend__extractAtomID(self, v7, v8, v9, v10);
  v12 = objc_alloc(MEMORY[0x277CCABB0]);
  v16 = objc_msgSend_initWithLongLong_(v12, v13, AtomID, v14, v15);
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = sub_2334DEA48;
  v54[3] = &unk_2789DABF8;
  v17 = v16;
  v55 = v17;
  v18 = completionCopy;
  v56 = v18;
  v23 = MEMORY[0x2383A14D0](v54);
  if (AtomID)
  {
    if (v18)
    {
      v24 = *MEMORY[0x277D27DC0];
      v61[0] = *MEMORY[0x277D27E10];
      v61[1] = v24;
      v62[0] = v17;
      v62[1] = @"com.apple.MediaAssistant.siri";
      v25 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, v62, v61, 2);
      v26 = objc_alloc_init(MEMORY[0x277D27850]);
      objc_msgSend_setOrigin_(v26, v27, origin, v28, v29);
      v30 = objc_alloc_init(MEMORY[0x277D27828]);
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = sub_2334DEAF8;
      v51[3] = &unk_2789DB350;
      v52 = v30;
      v53 = v23;
      v31 = v30;
      objc_msgSend_sendCommand_toDestination_withOptions_completion_(v31, v32, 128, v26, v25, v51);

LABEL_10:
    }
  }

  else if (v18)
  {
    if (!objc_msgSend_length(self->_requestAceHash, v19, v20, v21, v22))
    {
      v37 = objc_msgSend_aceId(self, v33, v34, v35, v36);
      v38 = sub_233505670(@"Add Media Items To Library", v37);
      requestAceHash = self->_requestAceHash;
      self->_requestAceHash = v38;
    }

    v40 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v45 = self->_requestAceHash;
      v46 = objc_msgSend_mediaItems(self, v41, v42, v43, v44);
      *buf = 138543618;
      v58 = v45;
      v59 = 2114;
      v60 = v46;
      _os_log_impl(&dword_2334D9000, v40, OS_LOG_TYPE_ERROR, "Add Media Items To Library (companion) <%{public}@>: No adam IDs in %{public}@", buf, 0x16u);
    }

    v47 = objc_alloc(MEMORY[0x277D47208]);
    v25 = objc_msgSend_initWithErrorCode_(v47, v48, *MEMORY[0x277D48638], v49, v50);
    (*(v18 + 2))(v18, v25);
    goto LABEL_10;
  }
}

- (int64_t)_extractAtomID
{
  v81 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_mediaItems(self, a2, v2, v3, v4);
  v11 = objc_msgSend_items(v6, v7, v8, v9, v10);
  v16 = objc_msgSend_identifier(v6, v12, v13, v14, v15);
  if (sub_23350261C(v16) == 3)
  {
    v21 = objc_msgSend_lastPathComponent(v16, v17, v18, v19, v20);
    v26 = objc_msgSend_longLongValue(v21, v22, v23, v24, v25);

    if (v26)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (!objc_msgSend_length(self->_requestAceHash, v17, v18, v19, v20))
    {
      v35 = objc_msgSend_aceId(self, v31, v32, v33, v34);
      v36 = sub_233505670(@"Add Media Items To Library", v35);
      requestAceHash = self->_requestAceHash;
      self->_requestAceHash = v36;
    }

    v38 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = self->_requestAceHash;
      v77 = 138543618;
      v78 = v39;
      v79 = 2114;
      v80 = v16;
      _os_log_impl(&dword_2334D9000, v38, OS_LOG_TYPE_ERROR, "Add Media Items To Library (extract) <%{public}@>: Unsupported origin for collection %{public}@", &v77, 0x16u);
    }
  }

  if (objc_msgSend_count(v11, v27, v28, v29, v30) >= 2)
  {
    if (!objc_msgSend_length(self->_requestAceHash, v40, v41, v42, v43))
    {
      v48 = objc_msgSend_aceId(self, v44, v45, v46, v47);
      v49 = sub_233505670(@"Add Media Items To Library", v48);
      v50 = self->_requestAceHash;
      self->_requestAceHash = v49;
    }

    v51 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v52 = self->_requestAceHash;
      v77 = 138543618;
      v78 = v52;
      v79 = 2114;
      v80 = v11;
      _os_log_impl(&dword_2334D9000, v51, OS_LOG_TYPE_ERROR, "Add Media Items To Library (extract) <%{public}@>: Cannot add multiple items %{public}@", &v77, 0x16u);
    }
  }

  v53 = objc_msgSend_firstObject(v11, v40, v41, v42, v43);
  v58 = objc_msgSend_identifier(v53, v54, v55, v56, v57);
  if (sub_23350261C(v58) == 3)
  {
    v63 = objc_msgSend_lastPathComponent(v58, v59, v60, v61, v62);
    v26 = objc_msgSend_longLongValue(v63, v64, v65, v66, v67);
  }

  else
  {
    if (!objc_msgSend_length(self->_requestAceHash, v59, v60, v61, v62))
    {
      v72 = objc_msgSend_aceId(self, v68, v69, v70, v71);
      v73 = sub_233505670(@"Add Media Items To Library", v72);
      v74 = self->_requestAceHash;
      self->_requestAceHash = v73;
    }

    v63 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      v75 = self->_requestAceHash;
      v77 = 138543618;
      v78 = v75;
      v79 = 2114;
      v80 = v58;
      _os_log_impl(&dword_2334D9000, v63, OS_LOG_TYPE_ERROR, "Add Media Items To Library (extract) <%{public}@>: Unsupported origin for entity %{public}@", &v77, 0x16u);
    }

    v26 = 0;
  }

LABEL_23:
  return v26;
}

- (BOOL)_addMediaItemsToLibrarySupported
{
  v4 = objc_msgSend_controllerWithUserIdentity_(MEMORY[0x277CD5D78], a2, self->_userIdentity, v2, v3);
  objc_msgSend_becomeActiveAndWaitUntilDone_(v4, v5, 1, v6, v7);
  isCloudLibraryEnabled = objc_msgSend_isCloudLibraryEnabled(v4, v8, v9, v10, v11);

  return isCloudLibraryEnabled;
}

- (void)_performWithCompletion:(id)completion
{
  completionCopy = completion;
  if (objc_msgSend__addMediaItemsToLibrarySupported(self, v5, v6, v7, v8))
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_2334DEFE4;
    v17[3] = &unk_2789DB800;
    v18 = completionCopy;
    v9 = completionCopy;
    objc_msgSend__performAddMediaItemsWithCompletion_(self, v10, v17, v11, v12);
    v13 = v18;
  }

  else
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_2334DEFF4;
    v15[3] = &unk_2789DACC0;
    v15[4] = self;
    v16 = completionCopy;
    v14 = completionCopy;
    sub_2334DEFF4(v15, 0);
    v13 = v16;
  }
}

- (void)performWithCompletion:(id)completion
{
  v46 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (!objc_msgSend_length(self->_requestAceHash, v5, v6, v7, v8))
  {
    v13 = objc_msgSend_aceId(self, v9, v10, v11, v12);
    v14 = sub_233505670(@"Add Media Items To Library", v13);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v14;
  }

  v16 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v21 = self->_requestAceHash;
    v22 = objc_msgSend_mediaItems(self, v17, v18, v19, v20);
    v27 = objc_msgSend_dictionary(v22, v23, v24, v25, v26);
    *buf = 138543618;
    v43 = v21;
    v44 = 2114;
    v45 = v27;
    _os_log_impl(&dword_2334D9000, v16, OS_LOG_TYPE_DEFAULT, "Add Media Items To Library (invoke) <%{public}@>: media items %{public}@", buf, 0x16u);
  }

  v28 = self->_requestAceHash;
  v33 = objc_msgSend_influencedUserSharedUserId(self, v29, v30, v31, v32);
  v38 = objc_msgSend_influencedUserSharedUserId(self, v34, v35, v36, v37);
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = sub_2334DF2E4;
  v40[3] = &unk_2789DB648;
  v40[4] = self;
  v41 = completionCopy;
  v39 = completionCopy;
  sub_233506A24(@"Add Media Items To Library", v28, v33, v38, v40);
}

@end