@interface POPodcastSyncHandler
- (POPodcastSyncHandler)init;
- (id)validity;
- (void)beginSyncWithAnchor:(id)anchor validity:(id)validity count:(int64_t)count forKey:(id)key beginInfo:(id)info;
- (void)getChangeAfterAnchor:(id)anchor changeInfo:(id)info;
- (void)syncDidEnd;
@end

@implementation POPodcastSyncHandler

- (POPodcastSyncHandler)init
{
  v12.receiver = self;
  v12.super_class = POPodcastSyncHandler;
  v6 = [(POPodcastSyncHandler *)&v12 init];
  if (v6)
  {
    v7 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v2, v3, v4, v5);
    objc_msgSend_setAnchorToRevision_(v6, v8, v7, v9, v10);
  }

  return v6;
}

- (id)validity
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_sharedInstance(PODataSource, a2, v2, v3, v4);
  v10 = objc_msgSend_validity(v5, v6, v7, v8, v9);

  POLogInitIfNeeded(v11, v12);
  if (POLogContextSync)
  {
    v13 = POLogContextSync;
  }

  else
  {
    v13 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v15 = 138412290;
    v16 = v10;
    _os_log_impl(&dword_23352D000, v13, OS_LOG_TYPE_INFO, "Data source's validity is %@", &v15, 0xCu);
  }

  return v10;
}

- (void)beginSyncWithAnchor:(id)anchor validity:(id)validity count:(int64_t)count forKey:(id)key beginInfo:(id)info
{
  v118 = *MEMORY[0x277D85DE8];
  anchorCopy = anchor;
  validityCopy = validity;
  keyCopy = key;
  infoCopy = info;
  isEqual = objc_msgSend_isEqual_(keyCopy, v15, @"com.apple.media.podcasts", v16, v17);
  if (isEqual && (anchorCopy | validityCopy || (objc_msgSend_sharedInstance(PODataSource, v19, v20, v21, v22), v23 = objc_claimAutoreleasedReturnValue(), isPodcastsInstalled = objc_msgSend_isPodcastsInstalled(v23, v24, v25, v26, v27), v23, (isPodcastsInstalled & 1) != 0)))
  {
    POLogInitIfNeeded(isEqual, v19);
    if (POLogContextSync)
    {
      v29 = POLogContextSync;
    }

    else
    {
      v29 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      v111 = anchorCopy;
      v112 = 2112;
      v113 = validityCopy;
      v114 = 2112;
      v115 = keyCopy;
      v116 = 2112;
      v117 = infoCopy;
      _os_log_impl(&dword_23352D000, v29, OS_LOG_TYPE_INFO, "Begin sync with anchor getting called, anchor is %@, validity is %@, key is %@ and beginInfo is %@", buf, 0x2Au);
    }

    v34 = objc_msgSend_validity(self, v30, v31, v32, v33);
    v38 = objc_msgSend_isEqual_(validityCopy, v35, v34, v36, v37);

    v103 = validityCopy;
    v102 = infoCopy;
    if ((v38 & 1) == 0)
    {
      POLogInitIfNeeded(v39, v40);
      if (POLogContextSync)
      {
        v44 = POLogContextSync;
      }

      else
      {
        v44 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        v49 = v44;
        v54 = objc_msgSend_validity(self, v50, v51, v52, v53);
        *buf = 138412290;
        v111 = v54;
        _os_log_impl(&dword_23352D000, v49, OS_LOG_TYPE_INFO, "Podcasts are resetting with validity %@", buf, 0xCu);
      }

      v55 = objc_msgSend_validity(self, v45, v46, v47, v48);
      objc_msgSend_resetWithValidity_(infoCopy, v56, v55, v57, v58);

      anchorCopy = @"0";
    }

    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v59 = objc_msgSend_sharedInstance(PODataSource, v40, v41, v42, v43);
    v104 = anchorCopy;
    v64 = objc_msgSend_longLongValue(anchorCopy, v60, v61, v62, v63);
    v68 = objc_msgSend_podcastRevisionsSinceAnchor_(v59, v65, v64, v66, v67);

    v70 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v69, &v105, v109, 16);
    if (v70)
    {
      v75 = v70;
      v76 = *v106;
      do
      {
        for (i = 0; i != v75; ++i)
        {
          if (*v106 != v76)
          {
            objc_enumerationMutation(v68);
          }

          v78 = *(*(&v105 + 1) + 8 * i);
          v79 = MEMORY[0x277CCACA8];
          v80 = objc_msgSend_revisionID(v78, v71, v72, v73, v74);
          v84 = objc_msgSend_stringWithFormat_(v79, v81, @"%lu", v82, v83, v80);
          v89 = objc_msgSend_anchorToRevision(self, v85, v86, v87, v88);
          objc_msgSend_setObject_forKeyedSubscript_(v89, v90, v78, v84, v91);
        }

        v75 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v71, &v105, v109, 16);
      }

      while (v75);
    }

    POLogInitIfNeeded(v92, v93);
    if (POLogContextSync)
    {
      v94 = POLogContextSync;
    }

    else
    {
      v94 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
    {
      v95 = v94;
      v100 = objc_msgSend_anchorToRevision(self, v96, v97, v98, v99);
      *buf = 138412290;
      v111 = v100;
      _os_log_impl(&dword_23352D000, v95, OS_LOG_TYPE_INFO, "Anchors to revisions are %@", buf, 0xCu);
    }

    validityCopy = v103;
    anchorCopy = v104;
    infoCopy = v102;
  }

  else
  {
    POLogInitIfNeeded(isEqual, v19);
    if (POLogContextSync)
    {
      v101 = POLogContextSync;
    }

    else
    {
      v101 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23352D000, v101, OS_LOG_TYPE_INFO, "Nil anchor, nil validity, and podcasts isn't installed.  Nothing to sync.", buf, 2u);
    }
  }
}

- (void)getChangeAfterAnchor:(id)anchor changeInfo:(id)info
{
  v108 = *MEMORY[0x277D85DE8];
  anchorCopy = anchor;
  infoCopy = info;
  if (!anchorCopy)
  {
    anchorCopy = @"0";
  }

  v12 = objc_msgSend_anchorToRevision(self, v7, v8, v9, v10);
  v16 = objc_msgSend_objectForKeyedSubscript_(v12, v13, anchorCopy, v14, v15);

  if (v16)
  {
    v21 = MEMORY[0x277CCACA8];
    v22 = objc_msgSend_revisionID(v16, v17, v18, v19, v20);
    v26 = objc_msgSend_stringWithFormat_(v21, v23, @"%lu", v24, v25, v22 + 1);
    objc_msgSend_setPostAnchor_(infoCopy, v27, v26, v28, v29);

    v34 = objc_msgSend_revisionType(v16, v30, v31, v32, v33) == 2;
    objc_msgSend_setIsDelete_(infoCopy, v35, v34, v36, v37);
    if (objc_msgSend_isDelete(infoCopy, v38, v39, v40, v41))
    {
      v46 = objc_msgSend_deletedModelObject(v16, v42, v43, v44, v45);
      v51 = objc_msgSend_SAMPCollection(v46, v47, v48, v49, v50);
      objc_msgSend_setObject_(infoCopy, v52, v51, v53, v54);
      goto LABEL_11;
    }

    v46 = objc_msgSend_sharedInstance(PODataSource, v42, v43, v44, v45);
    v51 = objc_msgSend_objectID(v16, v91, v92, v93, v94);
    v87 = objc_msgSend_domainObjectWithUUID_(v46, v95, v51, v96, v97);
    objc_msgSend_setObject_(infoCopy, v98, v87, v99, v100);
  }

  else
  {
    v55 = objc_msgSend_anchorToRevision(self, v17, v18, v19, v20);
    v60 = objc_msgSend_allKeys(v55, v56, v57, v58, v59);

    v46 = objc_msgSend_sortedArrayUsingComparator_(v60, v61, &unk_2848D9E88, v62, v63);

    v68 = objc_msgSend_lastObject(v46, v64, v65, v66, v67);
    v51 = v68;
    if (!v68)
    {
      goto LABEL_11;
    }

    v73 = objc_msgSend_longLongValue(v68, v69, v70, v71, v72);
    if (v73 <= objc_msgSend_longLongValue(anchorCopy, v74, v75, v76, v77))
    {
      goto LABEL_11;
    }

    v82 = MEMORY[0x277CCACA8];
    v83 = objc_msgSend_longLongValue(anchorCopy, v78, v79, v80, v81);
    v87 = objc_msgSend_stringWithFormat_(v82, v84, @"%lli", v85, v86, v83 + 1);
    objc_msgSend_setPostAnchor_(infoCopy, v88, v87, v89, v90);
  }

LABEL_11:
  POLogInitIfNeeded(v101, v102);
  if (POLogContextSync)
  {
    v103 = POLogContextSync;
  }

  else
  {
    v103 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v105 = anchorCopy;
    v106 = 2112;
    v107 = infoCopy;
    _os_log_impl(&dword_23352D000, v103, OS_LOG_TYPE_INFO, "Get change getting called with anchor %@, changeInfo %@", buf, 0x16u);
  }
}

- (void)syncDidEnd
{
  POLogInitIfNeeded(self, a2);
  if (POLogContextSync)
  {
    v3 = POLogContextSync;
  }

  else
  {
    v3 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_23352D000, v3, OS_LOG_TYPE_INFO, "syncDidEnd getting called", v7, 2u);
  }

  objc_msgSend_setAnchorToRevision_(self, v4, 0, v5, v6);
}

@end