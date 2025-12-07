@interface POBasicPodcastAppSearch
- (id)modelObjectsAsSAMPCollections:(id)collections;
- (void)performWithCompletion:(id)completion;
@end

@implementation POBasicPodcastAppSearch

- (id)modelObjectsAsSAMPCollections:(id)collections
{
  v29 = *MEMORY[0x277D85DE8];
  collectionsCopy = collections;
  v8 = objc_msgSend_array(MEMORY[0x277CBEB18], v4, v5, v6, v7);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = collectionsCopy;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v24, v28, 16);
  if (v11)
  {
    v16 = v11;
    v17 = *v25;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v9);
        }

        v19 = objc_msgSend_SAMPCollection(*(*(&v24 + 1) + 8 * i), v12, v13, v14, v15, v24);
        objc_msgSend_addObject_(v8, v20, v19, v21, v22);
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v24, v28, 16);
    }

    while (v16);
  }

  return v8;
}

- (void)performWithCompletion:(id)completion
{
  v78 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  POLogInitIfNeeded(completionCopy, v5);
  v6 = MEMORY[0x277D86220];
  if (POLogContextCommand)
  {
    v7 = POLogContextCommand;
  }

  else
  {
    v7 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    v13 = objc_msgSend_query(self, v9, v10, v11, v12);
    v76 = 138412290;
    v77 = v13;
    _os_log_impl(&dword_23352D000, v8, OS_LOG_TYPE_INFO, "Going to do a basic search for %@", &v76, 0xCu);
  }

  v14 = objc_alloc_init(POBasicPodcastAppSearchCompleted);
  if (objc_msgSend_acceptPodcastCollections(self, v15, v16, v17, v18))
  {
    v23 = objc_msgSend_sharedInstance(PODataSource, v19, v20, v21, v22);
    v28 = objc_msgSend_query(self, v24, v25, v26, v27);
    v33 = objc_msgSend_maxResults(self, v29, v30, v31, v32);
    v36 = objc_msgSend_podcastCollectionsMatchingString_maxResults_(v23, v34, v28, v33, v35);

    POLogInitIfNeeded(v37, v38);
    if (POLogContextCommand)
    {
      v39 = POLogContextCommand;
    }

    else
    {
      v39 = v6;
    }

    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v76 = 138412290;
      v77 = v36;
      _os_log_impl(&dword_23352D000, v39, OS_LOG_TYPE_INFO, "Data source podcasts are %@", &v76, 0xCu);
    }

    v43 = objc_msgSend_modelObjectsAsSAMPCollections_(self, v40, v36, v41, v42);
    objc_msgSend_setPodcastCollections_(v14, v44, v43, v45, v46);
  }

  if (objc_msgSend_acceptPodcastStations(self, v19, v20, v21, v22))
  {
    v51 = objc_msgSend_sharedInstance(PODataSource, v47, v48, v49, v50);
    v56 = objc_msgSend_query(self, v52, v53, v54, v55);
    v61 = objc_msgSend_maxResults(self, v57, v58, v59, v60);
    v64 = objc_msgSend_podcastStationsMatchingString_maxResults_(v51, v62, v56, v61, v63);

    POLogInitIfNeeded(v65, v66);
    if (POLogContextCommand)
    {
      v67 = POLogContextCommand;
    }

    else
    {
      v67 = v6;
    }

    if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
    {
      v76 = 138412290;
      v77 = v64;
      _os_log_impl(&dword_23352D000, v67, OS_LOG_TYPE_INFO, "Data source stations are %@", &v76, 0xCu);
    }

    v71 = objc_msgSend_modelObjectsAsSAMPCollections_(self, v68, v64, v69, v70);
    objc_msgSend_setPodcastStations_(v14, v72, v71, v73, v74);
  }

  v75 = objc_msgSend_dictionary(v14, v47, v48, v49, v50);
  completionCopy[2](completionCopy, v75);
}

@end