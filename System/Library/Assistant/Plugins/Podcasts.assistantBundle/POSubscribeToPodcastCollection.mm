@interface POSubscribeToPodcastCollection
+ (id)_commandStatusForRemoteStatus:(unsigned int)status assistantError:(id)error;
- (id)_subscribeRequestIdentifier;
- (void)performWithCompletion:(id)completion serviceHelper:(id)helper;
@end

@implementation POSubscribeToPodcastCollection

- (void)performWithCompletion:(id)completion serviceHelper:(id)helper
{
  v58 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v10 = objc_msgSend__validate(self, v6, v7, v8, v9);
  v15 = v10;
  if (v10)
  {
    v16 = objc_msgSend_dictionary(v10, v11, v12, v13, v14);
    completionCopy[2](completionCopy, v16);
  }

  else
  {
    POLogInitIfNeeded(0, v11);
    if (POLogContextCommand)
    {
      v17 = POLogContextCommand;
    }

    else
    {
      v17 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v22 = v17;
      v27 = objc_msgSend__subscribeRequestIdentifier(self, v23, v24, v25, v26);
      *buf = 138412290;
      v57 = v27;
      _os_log_impl(&dword_23352D000, v22, OS_LOG_TYPE_INFO, "Subscribing to Podcast with adamId: %@", buf, 0xCu);
    }

    v32 = objc_msgSend_hashedRouteUID(self, v18, v19, v20, v21);
    if (v32)
    {
      v33 = objc_msgSend_hashedRouteUID(self, v28, v29, v30, v31);
      v55 = v33;
      v36 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v34, &v55, 1, v35);
    }

    else
    {
      v36 = MEMORY[0x277CBEBF8];
    }

    v41 = objc_msgSend__subscribeRequestIdentifier(self, v37, v38, v39, v40);
    v46 = objc_msgSend_assetInfo(self, v42, v43, v44, v45);
    v51 = objc_msgSend_refId(self, v47, v48, v49, v50);
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = sub_233532814;
    v53[3] = &unk_2789DE2C0;
    v54 = completionCopy;
    objc_msgSend_performPodcastsPlaybackRequestWithIdentifier_assetInfo_hashedRouteUIDs_startPlaying_requesterSharedUserId_sharedUserIdFromPlayableITunesAccount_context_allowsFallback_completion_(POUtilities, v52, v41, v46, v36, 0, 0, 0, v51, 0, v53);
  }
}

- (id)_subscribeRequestIdentifier
{
  v5 = objc_msgSend_podcastCollection(self, a2, v2, v3, v4);
  v9 = objc_msgSend_identifierFromDomainObject_(POUtilities, v6, v5, v7, v8);

  v14 = objc_msgSend_sharedInstance(MTPlaybackIdentifierUtil, v10, v11, v12, v13);
  v18 = objc_msgSend_playbackQueueIdentifierForSubscribeToPodcast_(v14, v15, v9, v16, v17);

  return v18;
}

+ (id)_commandStatusForRemoteStatus:(unsigned int)status assistantError:(id)error
{
  errorCopy = error;
  v10 = objc_msgSend_domain(errorCopy, v6, v7, v8, v9);
  if (objc_msgSend_isEqualToString_(v10, v11, *MEMORY[0x277D277F8], v12, v13))
  {
    v18 = objc_msgSend_code(errorCopy, v14, v15, v16, v17);

    if (v18)
    {
      v21 = objc_alloc(MEMORY[0x277D47208]);
      v25 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v22, @"MediaRemote error code %ld", v23, v24, v18);
      v29 = objc_msgSend_initWithReason_(v21, v26, v25, v27, v28);

      goto LABEL_29;
    }
  }

  else
  {
  }

  POLogInitIfNeeded(v19, v20);
  if (POLogContextCommand)
  {
    v30 = POLogContextCommand;
  }

  else
  {
    v30 = MEMORY[0x277D86220];
  }

  if (status > 1)
  {
    if (status == 2)
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *v43 = 0;
        _os_log_impl(&dword_23352D000, v30, OS_LOG_TYPE_INFO, "Subscribe command failed because user was already subscribed", v43, 2u);
      }

      v37 = objc_alloc(MEMORY[0x277D47208]);
      v35 = objc_msgSend_initWithErrorCode_(v37, v38, *MEMORY[0x277D48598], v39, v40);
      goto LABEL_28;
    }

    if (status == 10)
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23352D000, v30, OS_LOG_TYPE_INFO, "Subscribe command failed because it is not subscribeable", buf, 2u);
      }

      v31 = objc_alloc(MEMORY[0x277D47208]);
      v35 = objc_msgSend_initWithErrorCode_(v31, v32, *MEMORY[0x277D486E0], v33, v34);
      goto LABEL_28;
    }

LABEL_18:
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_2335382B4(status, v30);
    }

    goto LABEL_20;
  }

  if (!status)
  {
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *v44 = 0;
      _os_log_impl(&dword_23352D000, v30, OS_LOG_TYPE_INFO, "Subscribe command succeeded", v44, 2u);
    }

    v36 = MEMORY[0x277D47218];
    goto LABEL_24;
  }

  if (status != 1)
  {
    goto LABEL_18;
  }

  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    sub_233538270(v30);
  }

LABEL_20:
  v36 = MEMORY[0x277D47208];
LABEL_24:
  v35 = objc_alloc_init(v36);
LABEL_28:
  v29 = v35;
LABEL_29:

  return v29;
}

@end