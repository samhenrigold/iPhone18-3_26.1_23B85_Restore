@interface SFAirDropBrowser
- (SFAirDropBrowser)init;
- (SFAirDropBrowserBatchDelegate)batchDelegate;
- (SFAirDropBrowserDelegate)delegate;
- (SFAirDropBrowserDiffableDelegate)diffableDelegate;
- (void)dealloc;
- (void)getChangedIndexesForClientPeopleList:(id)list withCompletion:(id)completion;
- (void)pause;
- (void)resume;
- (void)start;
- (void)stop;
- (void)updateDiscoveredPeople;
@end

@implementation SFAirDropBrowser

- (SFAirDropBrowser)init
{
  v9.receiver = self;
  v9.super_class = SFAirDropBrowser;
  v2 = [(SFAirDropBrowser *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_browser = 0;
    v4 = objc_opt_new();
    nodes = v3->_nodes;
    v3->_nodes = v4;

    v6 = objc_opt_new();
    nodeIDToNode = v3->_nodeIDToNode;
    v3->_nodeIDToNode = v6;
  }

  return v3;
}

- (void)dealloc
{
  [(SFAirDropBrowser *)self stop];
  v3.receiver = self;
  v3.super_class = SFAirDropBrowser;
  [(SFAirDropBrowser *)&v3 dealloc];
}

- (void)start
{
  v13 = *MEMORY[0x1E69E9840];
  if (!self->_browser)
  {
    *&v6 = 0;
    v7 = 0u;
    v8 = 0;
    *(&v6 + 1) = self;
    v3 = SFBrowserCreate(0, @"AirDrop");
    self->_browser = v3;
    SFBrowserSetClient(v3, browserCallBack, &v6);
    SFBrowserSetDispatchQueue(self->_browser, MEMORY[0x1E69E96A0]);
    sendingAppBundleID = self->_sendingAppBundleID;
    if (!sendingAppBundleID)
    {
      sendingAppBundleID = &stru_1F1D30528;
    }

    v10 = sendingAppBundleID;
    v9[0] = @"BundleID";
    v9[1] = @"URLsBeingShared";
    v11 = vbslq_s8(vceqzq_s64(*&self->_urlsBeingShared), vdupq_n_s64(MEMORY[0x1E695E0F0]), *&self->_urlsBeingShared);
    v9[2] = @"PhotosAssetIDs";
    v9[3] = @"ShouldCollectDiscoveryMetrics";
    v12 = MEMORY[0x1E695E118];
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:v9 count:{4, v6, v7, v8}];
    SFBrowserSetOptions(self->_browser, v5);
    SFBrowserOpenNode(self->_browser, 0, self->_sessionID, 0);
  }
}

- (void)pause
{
  WeakRetained = objc_loadWeakRetained(&self->_batchDelegate);

  if (WeakRetained)
  {
    self->_shouldDeliverEmptyUpdates = 1;

    [(SFAirDropBrowser *)self stop];
  }
}

- (void)resume
{
  WeakRetained = objc_loadWeakRetained(&self->_batchDelegate);

  if (WeakRetained)
  {

    [(SFAirDropBrowser *)self start];
  }
}

- (void)stop
{
  browser = self->_browser;
  if (browser)
  {
    SFBrowserInvalidate(browser);
    CFRelease(self->_browser);
    self->_browser = 0;
  }
}

- (void)updateDiscoveredPeople
{
  v179 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  browser = self->_browser;
  if (browser)
  {
    v5 = SFBrowserCopyChildren(browser, 0);
  }

  else
  {
    v5 = 0;
  }

  people = self->_people;
  if (people)
  {
    v7 = people;
  }

  else
  {
    v7 = objc_opt_new();
  }

  v127 = v7;
  v166 = 0u;
  v167 = 0u;
  v164 = 0u;
  v165 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v164 objects:v178 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v165;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v165 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v164 + 1) + 8 * i);
        v13 = [MEMORY[0x1E696B098] valueWithPointer:v12];
        v14 = [(NSMutableDictionary *)self->_nodes objectForKeyedSubscript:v13];
        if (v14)
        {
          v15 = v14;
          [v14 updateWithSFNode:v12];
          nodeIDToNode = self->_nodeIDToNode;
          nodeIdentifier = [v15 nodeIdentifier];
          v18 = nodeIDToNode;
        }

        else
        {
          v15 = [SFAirDropNode nodeWithSFNode:v12];
          [(NSMutableDictionary *)self->_nodes setObject:v15 forKeyedSubscript:v13];
          nodeIdentifier = [MEMORY[0x1E696AFB0] UUID];
          [v15 setNodeIdentifier:nodeIdentifier];
          v18 = self->_nodeIDToNode;
        }

        [(NSMutableDictionary *)v18 setObject:v15 forKeyedSubscript:nodeIdentifier];

        [v3 addObject:v15];
      }

      v9 = [obj countByEnumeratingWithState:&v164 objects:v178 count:16];
    }

    while (v9);
  }

  array = [v3 array];
  v20 = v127;
  v21 = [array differenceFromArray:v127];

  v118 = v21;
  hasChanges = [v21 hasChanges];
  if (hasChanges)
  {
    v23 = airdrop_log(hasChanges);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v177 = v21;
      _os_log_impl(&dword_1A9662000, v23, OS_LOG_TYPE_DEFAULT, "Updated people: %@", buf, 0xCu);
    }

    v162 = 0u;
    v163 = 0u;
    v160 = 0u;
    v161 = 0u;
    insertions = [v21 insertions];
    v25 = [insertions countByEnumeratingWithState:&v160 objects:v175 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v161;
      do
      {
        v28 = 0;
        do
        {
          if (*v161 != v27)
          {
            objc_enumerationMutation(insertions);
          }

          v29 = *(*(&v160 + 1) + 8 * v28);
          v30 = airdrop_log(v25);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            object = [v29 object];
            *buf = 138412290;
            v177 = object;
            _os_log_impl(&dword_1A9662000, v30, OS_LOG_TYPE_DEFAULT, "Updated people: Adding person %@", buf, 0xCu);
          }

          ++v28;
        }

        while (v26 != v28);
        v25 = [insertions countByEnumeratingWithState:&v160 objects:v175 count:16];
        v26 = v25;
      }

      while (v25);
    }

    v158 = 0u;
    v159 = 0u;
    v156 = 0u;
    v157 = 0u;
    removals = [v118 removals];
    v33 = [removals countByEnumeratingWithState:&v156 objects:v174 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v157;
      do
      {
        v36 = 0;
        do
        {
          if (*v157 != v35)
          {
            objc_enumerationMutation(removals);
          }

          v37 = *(*(&v156 + 1) + 8 * v36);
          v38 = airdrop_log(v33);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            object2 = [v37 object];
            *buf = 138412290;
            v177 = object2;
            _os_log_impl(&dword_1A9662000, v38, OS_LOG_TYPE_DEFAULT, "Updated people: Removing person %@", buf, 0xCu);
          }

          ++v36;
        }

        while (v34 != v36);
        v33 = [removals countByEnumeratingWithState:&v156 objects:v174 count:16];
        v34 = v33;
      }

      while (v33);
    }

    v20 = v127;
  }

  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  array4 = [MEMORY[0x1E695DF70] array];
  v152 = 0u;
  v153 = 0u;
  v154 = 0u;
  v155 = 0u;
  v43 = v20;
  v44 = [(NSArray *)v43 countByEnumeratingWithState:&v152 objects:v173 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v153;
    do
    {
      for (j = 0; j != v45; ++j)
      {
        if (*v153 != v46)
        {
          objc_enumerationMutation(v43);
        }

        v48 = *(*(&v152 + 1) + 8 * j);
        if ([v3 containsObject:v48])
        {
          v49 = array2;
        }

        else
        {
          v49 = array4;
        }

        [v49 addObject:v48];
      }

      v45 = [(NSArray *)v43 countByEnumeratingWithState:&v152 objects:v173 count:16];
    }

    while (v45);
  }

  v150 = 0u;
  v151 = 0u;
  v148 = 0u;
  v149 = 0u;
  v50 = v3;
  v51 = [v50 countByEnumeratingWithState:&v148 objects:v172 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v149;
    do
    {
      for (k = 0; k != v52; ++k)
      {
        if (*v149 != v53)
        {
          objc_enumerationMutation(v50);
        }

        v55 = *(*(&v148 + 1) + 8 * k);
        if (![(NSArray *)v43 containsObject:v55])
        {
          [array3 addObject:v55];
        }
      }

      v52 = [v50 countByEnumeratingWithState:&v148 objects:v172 count:16];
    }

    while (v52);
  }

  v122 = array4;
  v123 = v43;
  v121 = v50;

  [array3 sortUsingComparator:&__block_literal_global_2];
  array5 = [MEMORY[0x1E695DF70] array];
  array6 = [MEMORY[0x1E695DF70] array];
  array7 = [MEMORY[0x1E695DF70] array];
  array8 = [MEMORY[0x1E695DF70] array];
  v59 = array2;
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  indexSet2 = [MEMORY[0x1E696AD50] indexSet];
  array9 = [MEMORY[0x1E695DF70] array];
  array10 = [MEMORY[0x1E695DF70] array];
  array11 = [MEMORY[0x1E695DF70] array];
  v144 = 0u;
  v145 = 0u;
  v146 = 0u;
  v147 = 0u;
  v128 = array3;
  v61 = [v128 countByEnumeratingWithState:&v144 objects:v171 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = *v145;
    do
    {
      for (m = 0; m != v62; ++m)
      {
        if (*v145 != v63)
        {
          objc_enumerationMutation(v128);
        }

        v65 = *(*(&v144 + 1) + 8 * m);
        isSuggestion = [v65 isSuggestion];
        v67 = array8;
        if ((isSuggestion & 1) == 0)
        {
          isMe = [v65 isMe];
          v67 = array7;
          if ((isMe & 1) == 0)
          {
            if ([v65 isUnknown])
            {
              v67 = array6;
            }

            else
            {
              v67 = array5;
            }
          }
        }

        [v67 addObject:v65];
      }

      v62 = [v128 countByEnumeratingWithState:&v144 objects:v171 count:16];
    }

    while (v62);
  }

  if ([v59 count])
  {
    v69 = 0;
    v70 = 0;
    do
    {
      v71 = [v59 objectAtIndexedSubscript:v69];
      if (([v71 isSuggestion] & 1) != 0 || objc_msgSend(v71, "isMe"))
      {
        ++v70;
      }

      ++v69;
    }

    while ([v59 count] > v69);
  }

  else
  {
    v70 = 0;
  }

  v120 = array6;
  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v141 = 0u;
  v72 = array8;
  v73 = [v72 countByEnumeratingWithState:&v140 objects:v170 count:16];
  if (v73)
  {
    v74 = v73;
    v75 = *v141;
    do
    {
      v76 = 0;
      v77 = v70;
      do
      {
        if (*v141 != v75)
        {
          objc_enumerationMutation(v72);
        }

        [v59 insertObject:*(*(&v140 + 1) + 8 * v76) atIndex:v77];
        v70 = v77 + 1;
        [indexSet addIndex:v77];
        ++v76;
        ++v77;
      }

      while (v74 != v76);
      v74 = [v72 countByEnumeratingWithState:&v140 objects:v170 count:16];
    }

    while (v74);
  }

  if ([v59 count])
  {
    v78 = 0;
    v79 = 0;
    v80 = array9;
    do
    {
      v81 = [v59 objectAtIndexedSubscript:v78];
      if ([v81 isMe])
      {
        [array9 addObject:v81];
        ++v79;
      }

      ++v78;
    }

    while ([v59 count] > v78);
  }

  else
  {
    v79 = 0;
    v80 = array9;
  }

  v115 = v72;
  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  v126 = array7;
  v82 = [v126 countByEnumeratingWithState:&v136 objects:v169 count:16];
  if (v82)
  {
    v83 = v82;
    v84 = *v137;
    do
    {
      v85 = 0;
      v86 = v79;
      do
      {
        if (*v137 != v84)
        {
          objc_enumerationMutation(v126);
        }

        v87 = *(*(&v136 + 1) + 8 * v85);
        [v59 insertObject:v87 atIndex:v86];
        v79 = v86 + 1;
        [indexSet addIndex:v86];
        [v80 addObject:v87];
        ++v85;
        ++v86;
      }

      while (v83 != v85);
      v83 = [v126 countByEnumeratingWithState:&v136 objects:v169 count:16];
    }

    while (v83);
  }

  if ([v59 count])
  {
    v88 = 0;
    v89 = 0;
    while (1)
    {
      v90 = [v59 objectAtIndexedSubscript:v88];
      if ([v90 isUnknown])
      {
        break;
      }

      ++v89;
      isMe2 = [v90 isMe];
      v91 = array10;
      if ((isMe2 & 1) == 0)
      {
        goto LABEL_104;
      }

LABEL_105:

      if ([v59 count] <= ++v88)
      {
        goto LABEL_108;
      }
    }

    v91 = array11;
LABEL_104:
    [v91 addObject:v90];
    goto LABEL_105;
  }

  v89 = 0;
LABEL_108:
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v93 = array5;
  v94 = [v93 countByEnumeratingWithState:&v132 objects:v168 count:16];
  if (v94)
  {
    v95 = v94;
    v96 = *v133;
    do
    {
      v97 = 0;
      v98 = v89;
      do
      {
        if (*v133 != v96)
        {
          objc_enumerationMutation(v93);
        }

        v99 = *(*(&v132 + 1) + 8 * v97);
        [v59 insertObject:v99 atIndex:v98];
        v89 = v98 + 1;
        [indexSet addIndex:v98];
        [array10 addObject:v99];
        ++v97;
        ++v98;
      }

      while (v95 != v97);
      v95 = [v93 countByEnumeratingWithState:&v132 objects:v168 count:16];
    }

    while (v95);
  }

  v100 = [array11 arrayByAddingObjectsFromArray:v120];
  v125 = [v100 copy];

  v101 = [v59 arrayByAddingObjectsFromArray:v120];
  v102 = self->_people;
  self->_people = v101;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained browserWillChangePeople:self];

  v104 = v123;
  v105 = v121;
  if ([(NSArray *)v123 count])
  {
    v106 = 0;
    do
    {
      v107 = [(NSArray *)v104 objectAtIndexedSubscript:v106];
      if ([v122 containsObject:v107])
      {
        v108 = objc_loadWeakRetained(&self->_delegate);
        [v108 browser:self didDeletePersonAtIndex:v106];

        v105 = v121;
        [indexSet2 addIndex:v106];
      }

      ++v106;
      v104 = v123;
    }

    while ([(NSArray *)v123 count]> v106);
  }

  v131[0] = MEMORY[0x1E69E9820];
  v131[1] = 3221225472;
  v131[2] = __42__SFAirDropBrowser_updateDiscoveredPeople__block_invoke_2;
  v131[3] = &unk_1E788B0B8;
  v131[4] = self;
  [indexSet enumerateIndexesUsingBlock:v131];
  v109 = [v59 count];
  if (v109 < [v120 count] + v109)
  {
    v110 = v109;
    do
    {
      v111 = objc_loadWeakRetained(&self->_delegate);
      [v111 browser:self didInsertPersonAtIndex:v110];

      [indexSet addIndex:v110++];
    }

    while (v110 < [v120 count] + v109);
  }

  v112 = objc_loadWeakRetained(&self->_delegate);
  [v112 browserDidChangePeople:self];

  v113 = objc_loadWeakRetained(&self->_diffableDelegate);
  [v113 browserDidUpdateMePeople:array9 knownPeople:array10 unknownPeople:v125];

  if (!self->_shouldDeliverEmptyUpdates || [(NSArray *)self->_people count])
  {
    self->_shouldDeliverEmptyUpdates = 0;
    v114 = objc_loadWeakRetained(&self->_batchDelegate);
    [v114 browserDidUpdatePeople:self];
  }
}

uint64_t __42__SFAirDropBrowser_updateDiscoveredPeople__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v5;
  v8 = v7;
  if (v6)
  {
    v9 = -1;
  }

  else
  {
    v9 = v7 != 0;
  }

  if (v6 && v7)
  {
    if (![v6 isClassroom] || objc_msgSend(v8, "isClassroom"))
    {
      if ([v6 isClassroom] & 1) == 0 && (objc_msgSend(v8, "isClassroom"))
      {
LABEL_14:
        v9 = 1;
        goto LABEL_17;
      }

      if (![v6 isClassroomCourse] || objc_msgSend(v8, "isClassroomCourse"))
      {
        if (([v6 isClassroomCourse] & 1) != 0 || (objc_msgSend(v8, "isClassroomCourse") & 1) == 0)
        {
          v10 = [v6 displayName];
          v11 = [v8 displayName];
          v9 = [v10 localizedCaseInsensitiveCompare:v11];

          goto LABEL_17;
        }

        goto LABEL_14;
      }
    }

    v9 = -1;
  }

LABEL_17:

  return v9;
}

void __42__SFAirDropBrowser_updateDiscoveredPeople__block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  [WeakRetained browser:*(a1 + 32) didInsertPersonAtIndex:a2];
}

- (void)getChangedIndexesForClientPeopleList:(id)list withCompletion:(id)completion
{
  listCopy = list;
  if (listCopy)
  {
    v7 = listCopy;
    completionCopy = completion;
  }

  else
  {
    completionCopy2 = completion;
    v7 = objc_opt_new();
  }

  v10 = [(NSArray *)self->_people sortedArrayUsingComparator:&__block_literal_global_138];
  v13 = 0;
  v14 = 0;
  [v7 sf_differencesFromArray:v10 removedIndexes:&v14 insertedIndexes:&v13];
  v11 = v14;
  v12 = v13;
  (*(completion + 2))(completion, v10, v11, v12);
}

uint64_t __72__SFAirDropBrowser_getChangedIndexesForClientPeopleList_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v5;
  v8 = v7;
  if (v6)
  {
    v9 = -1;
  }

  else
  {
    v9 = v7 != 0;
  }

  if (v6 && v7)
  {
    if ([v6 isClassroom] && !objc_msgSend(v8, "isClassroom"))
    {
      goto LABEL_30;
    }

    if (([v6 isClassroom] & 1) != 0 || (objc_msgSend(v8, "isClassroom") & 1) == 0)
    {
      if ([v6 isClassroomCourse] && !objc_msgSend(v8, "isClassroomCourse"))
      {
        goto LABEL_30;
      }

      if (([v6 isClassroomCourse] & 1) != 0 || (objc_msgSend(v8, "isClassroomCourse") & 1) == 0)
      {
        if ([v6 isSuggestion] && objc_msgSend(v8, "isSuggestion"))
        {
          v10 = [v6 model];
          v11 = [v8 model];
LABEL_33:
          v13 = v11;
          v9 = [v10 compare:v11];

          goto LABEL_31;
        }

        if ([v6 isSuggestion] && !objc_msgSend(v8, "isSuggestion"))
        {
          goto LABEL_30;
        }

        if (([v6 isSuggestion] & 1) != 0 || (objc_msgSend(v8, "isSuggestion") & 1) == 0)
        {
          if ([v6 isMe] && !objc_msgSend(v8, "isMe"))
          {
            goto LABEL_30;
          }

          if (([v6 isMe] & 1) != 0 || (objc_msgSend(v8, "isMe") & 1) == 0)
          {
            if (![v6 isKnown] || objc_msgSend(v8, "isKnown"))
            {
              if (([v6 isKnown] & 1) != 0 || (objc_msgSend(v8, "isKnown") & 1) == 0)
              {
                v10 = [v6 discoveryDate];
                v11 = [v8 discoveryDate];
                goto LABEL_33;
              }

              goto LABEL_29;
            }

LABEL_30:
            v9 = -1;
            goto LABEL_31;
          }
        }
      }
    }

LABEL_29:
    v9 = 1;
  }

LABEL_31:

  return v9;
}

- (SFAirDropBrowserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SFAirDropBrowserBatchDelegate)batchDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_batchDelegate);

  return WeakRetained;
}

- (SFAirDropBrowserDiffableDelegate)diffableDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_diffableDelegate);

  return WeakRetained;
}

@end