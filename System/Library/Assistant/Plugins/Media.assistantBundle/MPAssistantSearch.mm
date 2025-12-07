@interface MPAssistantSearch
- (id)_audiobooksByName:(id)name;
- (id)_itemsByTitle:(id)title mediaTypes:(int64_t)types;
- (id)_perform;
- (id)_playlistsByDateCreatedOrder:(id)order;
- (id)_playlistsByName:(id)name isGeniusMix:(BOOL)mix;
- (id)_songCollectionsWithGroupingType:(int64_t)type searchString:(id)string mediaTypes:(int64_t)types;
- (id)_stationDictionariesWithParent:(unint64_t)parent;
- (id)_stationDictionaryForGenreName:(id)name parent:(unint64_t)parent;
- (id)_stationWithName:(id)name;
- (void)performWithCompletion:(id)completion;
@end

@implementation MPAssistantSearch

- (id)_stationDictionaryForGenreName:(id)name parent:(unint64_t)parent
{
  v51 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v10 = objc_msgSend__stationDictionariesWithParent_(self, v7, parent, v8, v9);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v14 = objc_msgSend_objectForKey_(v10, v11, @"children", v12, v13);
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v46, v50, 16);
  if (v16)
  {
    v20 = v16;
    v21 = *v47;
    v45 = v10;
    while (2)
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v47 != v21)
        {
          objc_enumerationMutation(v14);
        }

        v23 = *(*(&v46 + 1) + 8 * i);
        v24 = objc_msgSend_objectForKey_(v23, v17, @"name", v18, v19);
        v27 = objc_msgSend_compare_options_(v24, v25, nameCopy, 129, v26);

        if (!v27)
        {
          v42 = objc_msgSend_objectForKey_(v23, v17, @"station-dict", v18, v19);
LABEL_15:
          v43 = v42;
          v10 = v45;
          goto LABEL_16;
        }

        if (parent)
        {
          v28 = objc_msgSend_objectForKey_(v23, v17, @"children", v18, v19);
          v33 = objc_msgSend_count(v28, v29, v30, v31, v32);

          if (!v33)
          {
            continue;
          }
        }

        v34 = objc_msgSend_objectForKey_(v23, v17, @"id", v18, v19);
        v39 = objc_msgSend_unsignedLongLongValue(v34, v35, v36, v37, v38);

        v42 = objc_msgSend__stationDictionaryForGenreName_parent_(self, v40, nameCopy, v39, v41);
        if (v42)
        {
          goto LABEL_15;
        }
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v46, v50, 16);
      v43 = 0;
      v10 = v45;
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v43 = 0;
  }

LABEL_16:

  return v43;
}

- (id)_stationDictionariesWithParent:(unint64_t)parent
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_2334F3E68;
  v24 = sub_2334F3E78;
  v25 = 0;
  v4 = dispatch_semaphore_create(0);
  v5 = objc_alloc(MEMORY[0x277D44138]);
  v9 = objc_msgSend_initWithParentNodeID_(v5, v6, parent, v7, v8);
  if (v9)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_2334F3E80;
    v17[3] = &unk_2789DB5F8;
    v19 = &v20;
    v10 = v4;
    v18 = v10;
    objc_msgSend_startWithCompletionHandler_(v9, v11, v17, v12, v13);
    v14 = dispatch_time(0, 30000000000);
    dispatch_semaphore_wait(v10, v14);

    v4 = 0;
  }

  v15 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v15;
}

- (id)_stationWithName:(id)name
{
  v47 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (objc_msgSend_length(nameCopy, v4, v5, v6, v7))
  {
    v12 = objc_msgSend_sharedModel(MEMORY[0x277D44140], v8, v9, v10, v11);
    v17 = objc_msgSend_userStations(v12, v13, v14, v15, v16);
    v22 = objc_msgSend_featuredStations(v12, v18, v19, v20, v21);
    v26 = objc_msgSend_arrayByAddingObjectsFromArray_(v17, v23, v22, v24, v25);

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v27 = v26;
    v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v42, v46, 16);
    if (v33)
    {
      v34 = *v43;
      while (2)
      {
        for (i = 0; i != v33; i = i + 1)
        {
          if (*v43 != v34)
          {
            objc_enumerationMutation(v27);
          }

          v36 = *(*(&v42 + 1) + 8 * i);
          v37 = objc_msgSend_name(v36, v29, v30, v31, v32, v42);
          objc_msgSend_rangeOfString_options_(v37, v38, nameCopy, 129, v39);
          if (v40)
          {
            v33 = v36;

            goto LABEL_12;
          }
        }

        v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v29, &v42, v46, 16);
        if (v33)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

- (id)_playlistsByDateCreatedOrder:(id)order
{
  v70[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CD5E30];
  v5 = *MEMORY[0x277CD5928];
  orderCopy = order;
  v9 = objc_msgSend_predicateWithValue_forProperty_(v4, v7, MEMORY[0x277CBEC38], v5, v8);
  v10 = MEMORY[0x277CBEC28];
  v13 = objc_msgSend_predicateWithValue_forProperty_(MEMORY[0x277CD5E30], v11, MEMORY[0x277CBEC28], *MEMORY[0x277CD5910], v12);
  v16 = objc_msgSend_predicateWithValue_forProperty_(MEMORY[0x277CD5E30], v14, v10, *MEMORY[0x277CD5920], v15);
  v17 = objc_alloc(MEMORY[0x277CD5E38]);
  v21 = objc_msgSend_setWithObjects_(MEMORY[0x277CBEB98], v18, v9, v19, v20, v13, v16, 0);
  v25 = objc_msgSend_initWithFilterPredicates_(v17, v22, v21, v23, v24);

  v26 = *MEMORY[0x277CD5900];
  v70[0] = *MEMORY[0x277CD5900];
  v29 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v27, v70, 1, v28);
  objc_msgSend__setOrderingProperties_(v25, v30, v29, v31, v32);

  LODWORD(v29) = objc_msgSend_isEqualToString_(orderCopy, v33, @"Descending", v34, v35);
  if (v29)
  {
    v68 = v26;
    v69 = &unk_2848D8C70;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v36, &v69, &v68, 1);
  }

  else
  {
    v66 = v26;
    v67 = &unk_2848D8C88;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v36, &v67, &v66, 1);
  }
  v37 = ;
  objc_msgSend__setOrderingDirectionMappings_(v25, v38, v37, v39, v40);

  objc_msgSend_setUseSections_(v25, v41, 0, v42, v43);
  objc_msgSend_setGroupingType_(v25, v44, 6, v45, v46);
  objc_msgSend_setIgnoreSystemFilterPredicates_(v25, v47, 1, v48, v49);
  objc_msgSend_setShouldIncludeNonLibraryEntities_(v25, v50, 1, v51, v52);
  v56 = objc_msgSend_deviceMediaLibraryWithUserIdentity_(MEMORY[0x277CD5E10], v53, self->_userIdentity, v54, v55);
  objc_msgSend_setMediaLibrary_(v25, v57, v56, v58, v59);

  v64 = objc_msgSend_collections(v25, v60, v61, v62, v63);

  return v64;
}

- (id)_songCollectionsWithGroupingType:(int64_t)type searchString:(id)string mediaTypes:(int64_t)types
{
  stringCopy = string;
  v16 = objc_msgSend_titlePropertyForGroupingType_(MEMORY[0x277CD5DE0], v9, type, v10, v11);
  if (v16)
  {
    v17 = MEMORY[0x277CD5E30];
    v18 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v12, types, v14, v15);
    v21 = objc_msgSend_predicateWithValue_forProperty_(v17, v19, v18, *MEMORY[0x277CD57C8], v20);

    if (stringCopy)
    {
      v25 = objc_msgSend_setWithObject_(MEMORY[0x277CBEB98], v22, v16, v23, v24);
      v28 = objc_msgSend_predicateWithSearchString_forProperties_(MEMORY[0x277CD6120], v26, stringCopy, v25, v27);
    }

    else
    {
      v28 = 0;
    }

    v30 = objc_alloc(MEMORY[0x277CD5E38]);
    v34 = objc_msgSend_setWithObjects_(MEMORY[0x277CBEB98], v31, v21, v32, v33, v28, 0);
    v38 = objc_msgSend_initWithFilterPredicates_(v30, v35, v34, v36, v37);

    objc_msgSend_setUseSections_(v38, v39, 0, v40, v41);
    objc_msgSend_setGroupingType_(v38, v42, type, v43, v44);
    objc_msgSend_setIgnoreSystemFilterPredicates_(v38, v45, 1, v46, v47);
    objc_msgSend_setShouldIncludeNonLibraryEntities_(v38, v48, 1, v49, v50);
    v54 = objc_msgSend_deviceMediaLibraryWithUserIdentity_(MEMORY[0x277CD5E10], v51, self->_userIdentity, v52, v53);
    objc_msgSend_setMediaLibrary_(v38, v55, v54, v56, v57);

    v29 = objc_msgSend_collections(v38, v58, v59, v60, v61);
  }

  else
  {
    v29 = objc_msgSend_array(MEMORY[0x277CBEA60], v12, v13, v14, v15);
  }

  return v29;
}

- (id)_playlistsByName:(id)name isGeniusMix:(BOOL)mix
{
  mixCopy = mix;
  nameCopy = name;
  v7 = MEMORY[0x277CD5E30];
  v11 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v8, mixCopy, v9, v10);
  v14 = objc_msgSend_predicateWithValue_forProperty_(v7, v12, v11, *MEMORY[0x277CD5918], v13);

  v15 = MEMORY[0x277CBEC28];
  v18 = objc_msgSend_predicateWithValue_forProperty_(MEMORY[0x277CD5E30], v16, MEMORY[0x277CBEC28], *MEMORY[0x277CD5910], v17);
  v24 = objc_msgSend_predicateWithValue_forProperty_(MEMORY[0x277CD5E30], v19, v15, *MEMORY[0x277CD5920], v20);
  if (nameCopy)
  {
    v25 = objc_msgSend_setWithObject_(MEMORY[0x277CBEB98], v21, *MEMORY[0x277CD5930], v22, v23);
    v28 = objc_msgSend_predicateWithSearchString_forProperties_(MEMORY[0x277CD6120], v26, nameCopy, v25, v27);
  }

  else
  {
    v28 = 0;
  }

  v29 = objc_alloc(MEMORY[0x277CD5E38]);
  v33 = objc_msgSend_setWithObjects_(MEMORY[0x277CBEB98], v30, v14, v31, v32, v18, v24, v28, 0);
  v37 = objc_msgSend_initWithFilterPredicates_(v29, v34, v33, v35, v36);

  objc_msgSend_setUseSections_(v37, v38, 0, v39, v40);
  objc_msgSend_setGroupingType_(v37, v41, 6, v42, v43);
  objc_msgSend_setIgnoreSystemFilterPredicates_(v37, v44, 1, v45, v46);
  objc_msgSend_setShouldIncludeNonLibraryEntities_(v37, v47, 1, v48, v49);
  v53 = objc_msgSend_deviceMediaLibraryWithUserIdentity_(MEMORY[0x277CD5E10], v50, self->_userIdentity, v51, v52);
  objc_msgSend_setMediaLibrary_(v37, v54, v53, v55, v56);

  v61 = objc_msgSend_collections(v37, v57, v58, v59, v60);

  return v61;
}

- (id)_itemsByTitle:(id)title mediaTypes:(int64_t)types
{
  v6 = MEMORY[0x277CD5E30];
  v7 = MEMORY[0x277CCABB0];
  titleCopy = title;
  v12 = objc_msgSend_numberWithInteger_(v7, v9, types, v10, v11);
  v15 = objc_msgSend_predicateWithValue_forProperty_(v6, v13, v12, *MEMORY[0x277CD57C8], v14);

  v19 = objc_msgSend_setWithObject_(MEMORY[0x277CBEB58], v16, *MEMORY[0x277CD58B8], v17, v18);
  v22 = objc_msgSend_predicateWithSearchString_forProperties_(MEMORY[0x277CD6120], v20, titleCopy, v19, v21);

  v23 = objc_alloc(MEMORY[0x277CD5E38]);
  v27 = objc_msgSend_setWithObjects_(MEMORY[0x277CBEB98], v24, v15, v25, v26, v22, 0);
  v31 = objc_msgSend_initWithFilterPredicates_(v23, v28, v27, v29, v30);

  objc_msgSend_setUseSections_(v31, v32, 0, v33, v34);
  objc_msgSend_setIgnoreSystemFilterPredicates_(v31, v35, 1, v36, v37);
  objc_msgSend_setShouldIncludeNonLibraryEntities_(v31, v38, 1, v39, v40);
  v44 = objc_msgSend_deviceMediaLibraryWithUserIdentity_(MEMORY[0x277CD5E10], v41, self->_userIdentity, v42, v43);
  objc_msgSend_setMediaLibrary_(v31, v45, v44, v46, v47);

  v52 = objc_msgSend_items(v31, v48, v49, v50, v51);

  return v52;
}

- (id)_audiobooksByName:(id)name
{
  if (name)
  {
    v4 = MEMORY[0x277CBEB98];
    v5 = *MEMORY[0x277CD56D0];
    nameCopy = name;
    v10 = objc_msgSend_setWithObject_(v4, v7, v5, v8, v9);
    v13 = objc_msgSend_predicateWithSearchString_forProperties_(MEMORY[0x277CD6120], v11, nameCopy, v10, v12);
  }

  else
  {
    v13 = 0;
  }

  v14 = objc_alloc(MEMORY[0x277CD5E38]);
  v18 = objc_msgSend_setWithObject_(MEMORY[0x277CBEB98], v15, v13, v16, v17);
  v22 = objc_msgSend_initWithFilterPredicates_(v14, v19, v18, v20, v21);

  objc_msgSend_setUseSections_(v22, v23, 0, v24, v25);
  objc_msgSend_setGroupingType_(v22, v26, 10, v27, v28);
  objc_msgSend_setIgnoreSystemFilterPredicates_(v22, v29, 1, v30, v31);
  objc_msgSend_setShouldIncludeNonLibraryEntities_(v22, v32, 1, v33, v34);
  v38 = objc_msgSend_deviceMediaLibraryWithUserIdentity_(MEMORY[0x277CD5E10], v35, self->_userIdentity, v36, v37);
  objc_msgSend_setMediaLibrary_(v22, v39, v38, v40, v41);

  v46 = objc_msgSend_collections(v22, v42, v43, v44, v45);

  return v46;
}

- (id)_perform
{
  v100 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3, v4);
  v11 = objc_msgSend_maxResults(self, v7, v8, v9, v10);
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = MEMORY[0x277CBEB98];
  v18 = objc_msgSend_searchTypes(self, v14, v15, v16, v17);
  v22 = objc_msgSend_setWithArray_(v13, v19, v18, v20, v21);

  v26 = objc_msgSend_containsObject_(v22, v23, *MEMORY[0x277D486D8], v24, v25);
  v31 = objc_msgSend_constraints(self, v27, v28, v29, v30);
  v91[0] = MEMORY[0x277D85DD0];
  v91[1] = 3221225472;
  v91[2] = sub_2334F4D58;
  v91[3] = &unk_2789DB580;
  v32 = v12;
  v92 = v32;
  selfCopy = self;
  v95 = v26;
  v33 = v22;
  v94 = v33;
  objc_msgSend_enumerateObjectsUsingBlock_(v31, v34, v91, v35, v36);

  v85 = MEMORY[0x277D85DD0];
  v86 = 3221225472;
  v87 = sub_2334F57EC;
  v88 = &unk_2789DB5D0;
  v37 = v6;
  v89 = v37;
  v90 = v11;
  objc_msgSend_enumerateObjectsUsingBlock_(v32, v38, &v85, v39, v40);
  if (objc_msgSend_count(v37, v41, v42, v43, v44, v85, v86, v87, v88) || !sub_2335055C0(self->_userIdentity))
  {
    v62 = objc_alloc_init(MEMORY[0x277D475B0]);
    objc_msgSend_setResults_(v62, v63, v37, v64, v65);
    if (!objc_msgSend_length(self->_requestAceHash, v66, v67, v68, v69))
    {
      v74 = objc_msgSend_aceId(self, v70, v71, v72, v73);
      v75 = sub_233505670(@"Search", v74);
      requestAceHash = self->_requestAceHash;
      self->_requestAceHash = v75;
    }

    v77 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
    {
      v82 = self->_requestAceHash;
      v83 = objc_msgSend_count(v37, v78, v79, v80, v81);
      *buf = 138543618;
      v97 = v82;
      v98 = 2048;
      v99 = v83;
      _os_log_impl(&dword_2334D9000, v77, OS_LOG_TYPE_DEFAULT, "Search (search) <%{public}@>: found %ld results.", buf, 0x16u);
    }
  }

  else
  {
    if (!objc_msgSend_length(self->_requestAceHash, v45, v46, v47, v48))
    {
      v53 = objc_msgSend_aceId(self, v49, v50, v51, v52);
      v54 = sub_233505670(@"Search", v53);
      v55 = self->_requestAceHash;
      self->_requestAceHash = v54;
    }

    v56 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      v57 = self->_requestAceHash;
      *buf = 138543362;
      v97 = v57;
      _os_log_impl(&dword_2334D9000, v56, OS_LOG_TYPE_ERROR, "Search (search) <%{public}@>: still loading library", buf, 0xCu);
    }

    v58 = objc_alloc(MEMORY[0x277D47208]);
    v62 = objc_msgSend_initWithErrorCode_(v58, v59, *MEMORY[0x277D48630], v60, v61);
  }

  return v62;
}

- (void)performWithCompletion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (!objc_msgSend_length(self->_requestAceHash, v5, v6, v7, v8))
  {
    v13 = objc_msgSend_aceId(self, v9, v10, v11, v12);
    v14 = sub_233505670(@"Search", v13);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v14;
  }

  v16 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = self->_requestAceHash;
    *buf = 138543362;
    v27 = v17;
    _os_log_impl(&dword_2334D9000, v16, OS_LOG_TYPE_DEFAULT, "Search (invoke) <%{public}@>: invoked", buf, 0xCu);
  }

  objc_msgSend__prepare(self, v18, v19, v20, v21);
  v22 = self->_requestAceHash;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_2334F5AA8;
  v24[3] = &unk_2789DB648;
  v24[4] = self;
  v25 = completionCopy;
  v23 = completionCopy;
  sub_233506A24(@"Search", v22, 0, 0, v24);
}

@end