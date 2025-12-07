@interface MPAssistantAddMediaEntityToWishList
- (void)_addRadioTrackToWishListWithStoreID:(unint64_t)d stationHash:(id)hash completion:(id)completion;
- (void)_addTrackToWishListWithStoreID:(unint64_t)d completion:(id)completion;
- (void)_fetchCurrentRadioTrackInfoWithCompletion:(id)completion;
- (void)performWithCompletion:(id)completion;
@end

@implementation MPAssistantAddMediaEntityToWishList

- (void)_fetchCurrentRadioTrackInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = dispatch_get_global_queue(0, 0);
  v6 = completionCopy;
  v5 = completionCopy;
  MRMediaRemoteGetNowPlayingInfo();
}

- (void)_addRadioTrackToWishListWithStoreID:(unint64_t)d stationHash:(id)hash completion:(id)completion
{
  v37[2] = *MEMORY[0x277D85DE8];
  hashCopy = hash;
  completionCopy = completion;
  if (!d || (objc_msgSend_defaultMediaLibrary(MEMORY[0x277CD5E10], v8, v9, v10, v11), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend_itemWithStoreID_(v13, v14, d, v15, v16), v17 = objc_claimAutoreleasedReturnValue(), v17, v13, !v17))
  {
    v36[0] = *MEMORY[0x277D27E10];
    v23 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v8, d, v10, v11);
    v36[1] = *MEMORY[0x277D27DC0];
    v37[0] = v23;
    v37[1] = @"com.apple.MediaAssistant.siri";
    v22 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v24, v37, v36, 2);

    v29 = objc_msgSend_systemMediaApplicationDestination(MEMORY[0x277D27878], v25, v26, v27, v28);
    v30 = objc_alloc_init(MEMORY[0x277D27828]);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = sub_2334DD78C;
    v33[3] = &unk_2789DB350;
    v34 = v30;
    v35 = completionCopy;
    v31 = v30;
    objc_msgSend_sendCommand_toDestination_withOptions_completion_(v31, v32, 23, v29, v22, v33);

    goto LABEL_6;
  }

  if (completionCopy)
  {
    v18 = objc_alloc(MEMORY[0x277D47208]);
    v22 = objc_msgSend_initWithErrorCode_(v18, v19, *MEMORY[0x277D485B8], v20, v21);
    (*(completionCopy + 2))(completionCopy, v22);
LABEL_6:
  }
}

- (void)_addTrackToWishListWithStoreID:(unint64_t)d completion:(id)completion
{
  completionCopy = completion;
  if (d && (objc_msgSend_defaultMediaLibrary(MEMORY[0x277CD5E10], v5, v6, v7, v8), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend_itemWithStoreID_(v10, v11, d, v12, v13), v14 = objc_claimAutoreleasedReturnValue(), v14, v10, v14))
  {
    if (completionCopy)
    {
      v15 = objc_alloc(MEMORY[0x277D47208]);
      v19 = objc_msgSend_initWithErrorCode_(v15, v16, *MEMORY[0x277D485B8], v17, v18);
      completionCopy[2](completionCopy, v19);
    }
  }

  else
  {
    v20 = objc_msgSend_defaultIdentityStore(MEMORY[0x277D7FCA8], v5, v6, v7, v8);
    v25 = objc_msgSend_activeAccount(MEMORY[0x277D7FCA0], v21, v22, v23, v24);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = sub_2334DD974;
    v28[3] = &unk_2789DABA8;
    v29 = completionCopy;
    dCopy = d;
    objc_msgSend_getPropertiesForUserIdentity_completionHandler_(v20, v26, v25, v28, v27);
  }
}

- (void)performWithCompletion:(id)completion
{
  v53 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (!objc_msgSend_length(self->_requestAceHash, v5, v6, v7, v8))
  {
    v13 = objc_msgSend_aceId(self, v9, v10, v11, v12);
    v14 = sub_233505670(@"Add Media Entity To Wish List", v13);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v14;
  }

  v16 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v21 = self->_requestAceHash;
    v22 = objc_msgSend_adamId(self, v17, v18, v19, v20);
    *buf = 138543618;
    v50 = v21;
    v51 = 2114;
    v52 = v22;
    _os_log_impl(&dword_2334D9000, v16, OS_LOG_TYPE_DEFAULT, "Add Media Entity To Wish List (invoke) <%{public}@>: adam ID %{public}@", buf, 0x16u);
  }

  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = sub_2334DDFF8;
  v47[3] = &unk_2789DB620;
  v23 = completionCopy;
  v47[4] = self;
  v48 = v23;
  v24 = MEMORY[0x2383A14D0](v47);
  v33 = objc_msgSend_adamId(self, v25, v26, v27, v28);
  if (v33)
  {
    v34 = objc_msgSend_adamId(self, v29, v30, v31, v32);
    v39 = objc_msgSend_longLongValue(v34, v35, v36, v37, v38);
    objc_msgSend__addTrackToWishListWithStoreID_completion_(self, v40, v39, v24, v41);
  }

  else
  {
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = sub_2334DE164;
    v45[3] = &unk_2789DAB30;
    v45[4] = self;
    v46 = v24;
    objc_msgSend__fetchCurrentRadioTrackInfoWithCompletion_(self, v42, v45, v43, v44);
  }
}

@end