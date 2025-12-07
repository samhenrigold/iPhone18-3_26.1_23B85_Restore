@interface MPAssistantAddMediaItemsToUpNextQueue
- (BOOL)_isInsertionPositionSupported:(int)supported origin:(void *)origin supportedCommands:(__CFArray *)commands;
- (id)_createLocalLibraryPlaybackQueueWithCollection:(id)collection error:(id *)error;
- (id)_createPlaybackQueueWithCollection:(id)collection error:(id *)error;
- (id)_createStoreTracklistPlaybackQueueWithCollection:(id)collection error:(id *)error;
- (void)_perform:(id)_perform;
- (void)performWithCompletion:(id)completion;
@end

@implementation MPAssistantAddMediaItemsToUpNextQueue

- (BOOL)_isInsertionPositionSupported:(int)supported origin:(void *)origin supportedCommands:(__CFArray *)commands
{
  v32 = *MEMORY[0x277D85DE8];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_2334E2AB0;
  v28[3] = &unk_2789DADB0;
  supportedCopy = supported;
  v28[4] = self;
  v7 = MEMORY[0x2383A14D0](v28, a2, *&supported, origin);
  Count = CFArrayGetCount(commands);
  if (Count < 1)
  {
    goto LABEL_8;
  }

  v13 = Count;
  v9 = 0;
  v14 = 1;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(commands, v9);
    if (MEMORY[0x2383A0F00]() == 125)
    {
      break;
    }

    v9 = v14;
    if (v13 <= v14++)
    {
      goto LABEL_8;
    }
  }

  if (MRMediaRemoteCommandInfoGetEnabled())
  {
    v17 = (v7)[2](v7, ValueAtIndex);
  }

  else
  {
LABEL_8:
    if (!objc_msgSend_length(self->_requestAceHash, v9, v10, v11, v12))
    {
      v22 = objc_msgSend_aceId(self, v18, v19, v20, v21);
      v23 = sub_233505670(@"Add Media Items To Up Next Queue", v22);
      requestAceHash = self->_requestAceHash;
      self->_requestAceHash = v23;
    }

    v25 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = self->_requestAceHash;
      *buf = 138543362;
      v31 = v26;
      _os_log_impl(&dword_2334D9000, v25, OS_LOG_TYPE_ERROR, "Add Media Items To Up Next Queue (issupported) <%{public}@>: MRMediaRemoteCommandInsertIntoPlaybackQueue not found in supported commands", buf, 0xCu);
    }

    v17 = 0;
  }

  return v17;
}

- (id)_createStoreTracklistPlaybackQueueWithCollection:(id)collection error:(id *)error
{
  v142 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  v128 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v133 = 0u;
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  v127 = collectionCopy;
  v10 = objc_msgSend_items(collectionCopy, v6, v7, v8, v9);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v133, v141, 16);
  if (v12)
  {
    v17 = v12;
    v18 = *v134;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v134 != v18)
        {
          objc_enumerationMutation(v10);
        }

        v20 = objc_msgSend_identifier(*(*(&v133 + 1) + 8 * i), v13, v14, v15, v16);
        if (sub_23350261C(v20) == 3)
        {
          v25 = objc_msgSend_lastPathComponent(v20, v21, v22, v23, v24);
          v30 = objc_msgSend_longLongValue(v25, v26, v27, v28, v29);

          v34 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v31, v30, v32, v33);
          objc_msgSend_addObject_(v128, v35, v34, v36, v37);
        }

        else
        {
          if (!objc_msgSend_length(self->_requestAceHash, v21, v22, v23, v24))
          {
            v42 = objc_msgSend_aceId(self, v38, v39, v40, v41);
            v43 = sub_233505670(@"Add Media Items To Up Next Queue", v42);
            requestAceHash = self->_requestAceHash;
            self->_requestAceHash = v43;
          }

          v34 = _MPLogCategoryAssistant();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v45 = self->_requestAceHash;
            *buf = 138543618;
            v138 = v45;
            v139 = 2114;
            v140 = v20;
            _os_log_impl(&dword_2334D9000, v34, OS_LOG_TYPE_ERROR, "Add Media Items To Up Next Queue (storetrack) <%{public}@>: unknown origin for %{public}@", buf, 0x16u);
          }
        }
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v133, v141, 16);
    }

    while (v17);
  }

  if (!objc_msgSend_count(v128, v46, v47, v48, v49))
  {
    v54 = objc_msgSend_identifier(v127, v50, v51, v52, v53);

    if (v54)
    {
      v55 = objc_msgSend_identifier(v127, v50, v51, v52, v53);
      v60 = objc_msgSend_lastPathComponent(v55, v56, v57, v58, v59);
      v65 = objc_msgSend_longLongValue(v60, v61, v62, v63, v64);

      v69 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v66, v65, v67, v68);
      objc_msgSend_addObject_(v128, v70, v69, v71, v72);
    }
  }

  v73 = objc_msgSend_emptyIdentifierSet(MEMORY[0x277CD5DA0], v50, v51, v52, v53);
  v78 = objc_msgSend_identifier(v127, v74, v75, v76, v77);
  v83 = objc_msgSend_scheme(v78, v79, v80, v81, v82);
  isEqualToString = objc_msgSend_isEqualToString_(v83, v84, @"x-sampplaylist", v85, v86);

  if (isEqualToString)
  {
    v92 = objc_alloc(MEMORY[0x277CD5DA0]);
    v97 = objc_msgSend_identityKind(MEMORY[0x277CD5F08], v93, v94, v95, v96);
    v131[0] = MEMORY[0x277D85DD0];
    v131[1] = 3221225472;
    v131[2] = sub_2334E30DC;
    v131[3] = &unk_2789DB7B0;
    v98 = &v132;
    v132 = v127;
    v100 = objc_msgSend_initWithSource_modelKind_block_(v92, v99, @"MPCAssistant", v97, v131);
  }

  else
  {
    v101 = objc_msgSend_identifier(v127, v88, v89, v90, v91);
    v106 = objc_msgSend_scheme(v101, v102, v103, v104, v105);
    v110 = objc_msgSend_isEqualToString_(v106, v107, @"x-sampcollection-album", v108, v109);

    if (!v110)
    {
      goto LABEL_22;
    }

    v111 = objc_alloc(MEMORY[0x277CD5DA0]);
    v97 = objc_msgSend_identityKind(MEMORY[0x277CD5E48], v112, v113, v114, v115);
    v129[0] = MEMORY[0x277D85DD0];
    v129[1] = 3221225472;
    v129[2] = sub_2334E3168;
    v129[3] = &unk_2789DB7B0;
    v98 = &v130;
    v130 = v127;
    v100 = objc_msgSend_initWithSource_modelKind_block_(v111, v116, @"MPCAssistant", v97, v129);
  }

  v117 = v100;

  v73 = v117;
LABEL_22:
  v118 = objc_alloc(MEMORY[0x277D27888]);
  v123 = objc_msgSend_refId(self, v119, v120, v121, v122);
  v125 = objc_msgSend_initWithContextID_storeItemIDs_collectionIdentifierSet_(v118, v124, v123, v128, v73);

  return v125;
}

- (id)_createLocalLibraryPlaybackQueueWithCollection:(id)collection error:(id *)error
{
  v50 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  v12 = objc_msgSend_MPMediaItemCollectionRepresentationWithUserIdentity_plugin_hash_(collectionCopy, v7, self->_userIdentity, @"Add Media Items To Up Next Queue", self->_requestAceHash);
  if (v12)
  {
    v13 = objc_alloc(MEMORY[0x277CD5E38]);
    v18 = objc_msgSend_items(v12, v14, v15, v16, v17);
    v21 = objc_msgSend_initWithEntities_entityType_(v13, v19, v18, 0, v20);

    v22 = objc_alloc(MEMORY[0x277D27868]);
    v27 = objc_msgSend_refId(self, v23, v24, v25, v26);
    error = objc_msgSend_initWithContextID_query_(v22, v28, v27, v21, v29);
  }

  else if (error)
  {
    if (!objc_msgSend_length(self->_requestAceHash, v8, v9, v10, v11))
    {
      v34 = objc_msgSend_aceId(self, v30, v31, v32, v33);
      v35 = sub_233505670(@"Add Media Items To Up Next Queue", v34);
      requestAceHash = self->_requestAceHash;
      self->_requestAceHash = v35;
    }

    v37 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = self->_requestAceHash;
      *buf = 138543618;
      v47 = v38;
      v48 = 2114;
      v49 = collectionCopy;
      _os_log_impl(&dword_2334D9000, v37, OS_LOG_TYPE_ERROR, "Add Media Items To Up Next Queue (libraryqueue) <%{public}@>: collection %{public}@ does not exist", buf, 0x16u);
    }

    v39 = MEMORY[0x277CCA9B8];
    v44 = *MEMORY[0x277CCA450];
    v45 = @"Collection does not exist in library";
    v41 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v40, &v45, &v44, 1);
    *error = objc_msgSend_errorWithDomain_code_userInfo_(v39, v42, @"MPAssistantAddToUpNextErrorDomain", -1, v41);

    error = 0;
  }

  return error;
}

- (id)_createPlaybackQueueWithCollection:(id)collection error:(id *)error
{
  collectionCopy = collection;
  v11 = objc_msgSend_identifier(collectionCopy, v7, v8, v9, v10);
  v16 = objc_msgSend_scheme(v11, v12, v13, v14, v15);
  if (!v16)
  {
    goto LABEL_5;
  }

  v17 = sub_23350261C(v11);
  if (v17 == 3)
  {
    v20 = objc_msgSend__createStoreTracklistPlaybackQueueWithCollection_error_(self, v18, collectionCopy, error, v19);
    goto LABEL_7;
  }

  if (v17 != 1)
  {
LABEL_5:
    v21 = 0;
    goto LABEL_8;
  }

  v20 = objc_msgSend__createLocalLibraryPlaybackQueueWithCollection_error_(self, v18, collectionCopy, error, v19);
LABEL_7:
  v21 = v20;
LABEL_8:

  return v21;
}

- (void)_perform:(id)_perform
{
  _performCopy = _perform;
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = sub_2334E385C;
  v42[3] = &unk_2789DACC0;
  v42[4] = self;
  v5 = _performCopy;
  v43 = v5;
  v6 = MEMORY[0x2383A14D0](v42);
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = sub_2334E3BEC;
  v39[3] = &unk_2789DAD10;
  v7 = v6;
  v40 = v7;
  v8 = v5;
  v41 = v8;
  v9 = MEMORY[0x2383A14D0](v39);
  v14 = objc_msgSend_hashedRouteUIDs(self, v10, v11, v12, v13);
  v19 = objc_msgSend_count(v14, v15, v16, v17, v18);

  if (v19)
  {
    v20 = objc_alloc_init(MEMORY[0x277D27840]);
    v25 = objc_msgSend_hashedRouteUIDs(self, v21, v22, v23, v24);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = sub_2334E3DF0;
    v30[3] = &unk_2789DAD88;
    v31 = v20;
    selfCopy = self;
    v33 = v8;
    v34 = v9;
    v26 = v9;
    v27 = v20;
    objc_msgSend_decodeHashedRouteUIDs_completion_(v27, v28, v25, v30, v29);
  }

  else
  {
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = sub_2334E3CC0;
    v35[3] = &unk_2789DAE78;
    v35[4] = self;
    v36 = v9;
    v37 = v8;
    v38 = v7;
    v27 = v9;
    sub_2334E3CC0(v35, 0);
  }
}

- (void)performWithCompletion:(id)completion
{
  v71 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (!objc_msgSend_length(self->_requestAceHash, v5, v6, v7, v8))
  {
    v13 = objc_msgSend_aceId(self, v9, v10, v11, v12);
    v14 = sub_233505670(@"Add Media Items To Up Next Queue", v13);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v14;
  }

  v16 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v21 = self->_requestAceHash;
    v22 = objc_msgSend_hashedRouteUIDs(self, v17, v18, v19, v20);
    v27 = objc_msgSend_count(v22, v23, v24, v25, v26);
    v32 = objc_msgSend_insertLocation(self, v28, v29, v30, v31);
    v37 = objc_msgSend_mediaCollection(self, v33, v34, v35, v36);
    v42 = objc_msgSend_dictionary(v37, v38, v39, v40, v41);
    *buf = 138544130;
    v64 = v21;
    v65 = 2048;
    v66 = v27;
    v67 = 2114;
    v68 = v32;
    v69 = 2114;
    v70 = v42;
    _os_log_impl(&dword_2334D9000, v16, OS_LOG_TYPE_DEFAULT, "Add Media Items To Up Next Queue (invoke) <%{public}@>: %lu UIDs, insert location %{public}@, media collection %{public}@", buf, 0x2Au);
  }

  v43 = self->_requestAceHash;
  v48 = objc_msgSend_hashedRouteUIDs(self, v44, v45, v46, v47);
  sub_2335057BC(@"Add Media Items To Up Next Queue", v43, v48);

  v49 = self->_requestAceHash;
  v54 = objc_msgSend_speakerSharedUserId(self, v50, v51, v52, v53);
  v59 = objc_msgSend_musicAccountSharedUserId(self, v55, v56, v57, v58);
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = sub_2334E4B78;
  v61[3] = &unk_2789DB648;
  v61[4] = self;
  v62 = completionCopy;
  v60 = completionCopy;
  sub_233506A24(@"Add Media Items To Up Next Queue", v49, v54, v59, v61);
}

@end