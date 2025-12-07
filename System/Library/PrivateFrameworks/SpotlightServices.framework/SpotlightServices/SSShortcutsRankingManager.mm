@interface SSShortcutsRankingManager
+ (id)moveShortcutsToRelatedAppSectionsForAllSections:(id)sections isAsYouTypeTopHitSearch:(BOOL)search sectionBuilderBlock:(id)block;
@end

@implementation SSShortcutsRankingManager

+ (id)moveShortcutsToRelatedAppSectionsForAllSections:(id)sections isAsYouTypeTopHitSearch:(BOOL)search sectionBuilderBlock:(id)block
{
  searchCopy = search;
  v158 = *MEMORY[0x1E69E9840];
  sectionsCopy = sections;
  blockCopy = block;
  v7 = [sectionsCopy mutableCopy];
  v8 = objc_opt_new();
  v114 = sectionsCopy;
  if (!objc_msgSend_count(sectionsCopy))
  {
    goto LABEL_38;
  }

  v9 = 0;
  v10 = @"com.apple.shortcuts";
  v11 = -1;
  do
  {
    v12 = [sectionsCopy objectAtIndexedSubscript:v9];
    bundleIdentifier = [v12 bundleIdentifier];
    [v8 setObject:v12 forKeyedSubscript:bundleIdentifier];

    bundleIdentifier2 = [v12 bundleIdentifier];
    v15 = [bundleIdentifier2 isEqualToString:@"com.apple.shortcuts"];

    if (v15)
    {
      v11 = v9;
    }

    ++v9;
  }

  while (v9 < objc_msgSend_count(sectionsCopy));
  if (v11 == -1)
  {
LABEL_38:
    SSShortcutsAppSectionEnabled();
    v16 = 0;
  }

  else
  {
    v16 = [sectionsCopy objectAtIndexedSubscript:v11];
    if (SSShortcutsAppSectionEnabled() && v16)
    {
      v130 = v8;
      v110 = v7;
      v124 = objc_opt_new();
      v126 = objc_opt_new();
      results = [v16 results];
      v134 = [results mutableCopy];

      v153 = 0u;
      v154 = 0u;
      v151 = 0u;
      v152 = 0u;
      v112 = v16;
      results2 = [v16 results];
      v19 = [results2 countByEnumeratingWithState:&v151 objects:v157 count:16];
      if (!v19)
      {
        goto LABEL_42;
      }

      v20 = v19;
      v21 = *v152;
      v122 = results2;
      v139 = 1;
      v132 = *v152;
LABEL_11:
      v22 = 0;
      v135 = v20;
LABEL_12:
      if (*v152 != v21)
      {
        objc_enumerationMutation(results2);
      }

      v23 = *(*(&v151 + 1) + 8 * v22);
      relatedAppIdentifier = [v23 relatedAppIdentifier];
      if (![relatedAppIdentifier length] || (objc_msgSend(relatedAppIdentifier, "isEqualToString:", v10) & 1) != 0)
      {
        v139 = 0;
        goto LABEL_35;
      }

      v25 = [v130 objectForKey:relatedAppIdentifier];
      v141 = [sectionsCopy indexOfObject:v25];
      if (v25)
      {
        v137 = v25;
        results3 = [v25 results];
        v27 = [results3 mutableCopy];

        v28 = objc_msgSend_count(v27);
        if (!objc_msgSend_count(v27))
        {
          goto LABEL_33;
        }

        obj = v28;
        v29 = v10;
        v28 = 0;
        while (1)
        {
          v30 = [v27 objectAtIndexedSubscript:v28];
          resultBundleId = [v30 resultBundleId];
          v32 = [resultBundleId isEqualToString:v29];

          if (v32)
          {
            rankingItem = [v23 rankingItem];
            [rankingItem likelihood];
            v35 = v34;
            rankingItem2 = [v30 rankingItem];
            [rankingItem2 likelihood];
            v38 = v37;

            if (v35 > v38)
            {
              goto LABEL_31;
            }
          }

          else if (v11 < v141)
          {
LABEL_31:

LABEL_32:
            sectionsCopy = v114;
            v10 = v29;
            results2 = v122;
LABEL_33:
            [v27 insertObject:v23 atIndex:v28];
            v25 = v137;
            [v137 setResults:v27];
            v21 = v132;
LABEL_34:

            [v134 removeObject:v23];
            v20 = v135;
LABEL_35:

            if (++v22 == v20)
            {
              v20 = [results2 countByEnumeratingWithState:&v151 objects:v157 count:16];
              if (!v20)
              {
                goto LABEL_42;
              }

              goto LABEL_11;
            }

            goto LABEL_12;
          }

          if (++v28 >= objc_msgSend_count(v27))
          {
            v28 = obj;
            goto LABEL_32;
          }
        }
      }

      v39 = blockCopy[2](blockCopy, relatedAppIdentifier);
      if (v39)
      {
        v27 = v39;
        [v39 addResults:v23];
        if (v139)
        {
          v40 = v124;
        }

        else
        {
          v40 = v126;
        }

        [v40 addObject:v27];
        [v130 setObject:v27 forKey:relatedAppIdentifier];
        goto LABEL_34;
      }

      v41 = SSGeneralLog();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        [SSShortcutsRankingManager moveShortcutsToRelatedAppSectionsForAllSections:v41 isAsYouTypeTopHitSearch:? sectionBuilderBlock:?];
      }

LABEL_42:
      [v112 setResults:v134];
      v7 = v110;
      if (v11 > objc_msgSend_count(v110))
      {
        v11 = objc_msgSend_count(v110);
        v42 = SSGeneralLog();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          [SSShortcutsRankingManager moveShortcutsToRelatedAppSectionsForAllSections:v42 isAsYouTypeTopHitSearch:? sectionBuilderBlock:?];
        }
      }

      v8 = v130;
      if (objc_msgSend_count(v126))
      {
        v43 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v11 + 1, objc_msgSend_count(v126)}];
        [v110 insertObjects:v126 atIndexes:v43];
      }

      if (objc_msgSend_count(v124))
      {
        v44 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v11, objc_msgSend_count(v124)}];
        [v110 insertObjects:v124 atIndexes:v44];
      }

      v16 = v112;
    }
  }

  if ([v16 resultsCount])
  {
    v113 = v16;
  }

  else
  {
    [v7 removeObject:v16];
    [v8 removeObjectForKey:@"com.apple.shortcuts"];

    v113 = 0;
  }

  v45 = [v8 objectForKey:@"com.apple.spotlight.tophits"];
  v46 = v45;
  if (v45)
  {
    results4 = [v45 results];
    firstObject = [results4 firstObject];
    sectionBundleIdentifier = [firstObject sectionBundleIdentifier];
    v50 = v46;
    v51 = [sectionBundleIdentifier isEqualToString:@"com.apple.application"];

    if (v51)
    {
      results5 = [v50 results];
      firstObject2 = [results5 firstObject];
      resultBundleId2 = [firstObject2 resultBundleId];
    }

    else
    {
      resultBundleId2 = 0;
    }

    sectionsCopy = v114;
    v46 = v50;
  }

  else
  {
    resultBundleId2 = 0;
  }

  if (SSShortcutsAppSectionEnabled())
  {
    v54 = resultBundleId2;
    v55 = [resultBundleId2 length];
    if (v55)
    {
      v55 = [v8 objectForKey:resultBundleId2];
      v57 = v55;
    }

    else
    {
      v57 = 0;
    }
  }

  else
  {
    v55 = v113;
    v57 = v55;
    v54 = resultBundleId2;
  }

  v58 = isIpad(v55, v56);
  v59 = 3;
  if (v58)
  {
    v59 = 5;
  }

  v123 = v59;
  if (searchCopy && SSAppTopHitWithShortcutsEnabled(v58) && [v46 resultsCount] == 1 && objc_msgSend(v54, "length") && v57 && !+[SSTopHitAppWithEntitiesSectionBuilder supportsAppTopHitWithoutIndexFor:](SSTopHitAppWithEntitiesSectionBuilder, "supportsAppTopHitWithoutIndexFor:", v54))
  {
    v131 = v8;
    v111 = v7;
    results6 = [v57 results];
    v136 = [results6 mutableCopy];

    v61 = objc_opt_new();
    v147 = 0u;
    v148 = 0u;
    v149 = 0u;
    v150 = 0u;
    obja = [v57 results];
    v62 = [obja countByEnumeratingWithState:&v147 objects:v156 count:16];
    v108 = v57;
    v109 = v46;
    if (!v62)
    {
      v121 = &unk_1F55B4440;
      goto LABEL_119;
    }

    v63 = v62;
    v64 = 0;
    v65 = *v148;
    v118 = *MEMORY[0x1E6964AB0];
    v116 = *MEMORY[0x1E6963F88];
    v115 = *MEMORY[0x1E69E0FC0];
    v121 = &unk_1F55B4440;
    v125 = *v148;
    v133 = v61;
    while (1)
    {
      v66 = 0;
      v127 = v63;
      do
      {
        if (*v148 != v65)
        {
          objc_enumerationMutation(obja);
        }

        v67 = *(*(&v147 + 1) + 8 * v66);
        resultBundleId3 = [v67 resultBundleId];
        if (![resultBundleId3 isEqualToString:@"com.apple.shortcuts"])
        {
          goto LABEL_114;
        }

        relatedAppIdentifier2 = [v67 relatedAppIdentifier];
        v70 = v67;
        v71 = [relatedAppIdentifier2 isEqualToString:v54];

        if (!v71)
        {
          v65 = v125;
          v63 = v127;
          goto LABEL_115;
        }

        v72 = [v70 valueForAttribute:v118 withType:objc_opt_class()];
        bOOLValue = [v72 BOOLValue];

        v74 = [v70 valueForAttribute:v116 withType:objc_opt_class()];
        v75 = [v74 isEqualToString:v115];

        v138 = v70;
        displayOrder = [v70 displayOrder];
        v77 = displayOrder;
        v78 = &unk_1F55B4440;
        if (displayOrder)
        {
          v78 = displayOrder;
        }

        resultBundleId3 = v78;

        v142 = v75;
        if (v75)
        {
LABEL_83:
          objc_msgSend_count(v61);
          v79 = 0;
          v140 = v64 + 1;
          v80 = v70;
          while (v79 != objc_msgSend_count(v61))
          {
            if (v140 == v79)
            {
              v81 = v142;
            }

            else
            {
              v81 = 0;
            }

            if (v81 == 1)
            {
              v64 = v140;
              [v61 insertObject:v80 atIndex:v140];
              goto LABEL_106;
            }

            v82 = [v61 objectAtIndexedSubscript:v79];
            if (v79 <= v64)
            {
              title = [v80 title];
              text = [title text];
              title2 = [v82 title];
              [title2 text];
              v89 = v66;
              v90 = resultBundleId3;
              v92 = v91 = v64;
              v93 = [text localizedCompare:v92];

              v64 = v91;
              resultBundleId3 = v90;
              v66 = v89;
              v80 = v138;

              v94 = v93 == -1;
              v61 = v133;
              if (v94)
              {
LABEL_105:
                [v61 insertObject:v80 atIndex:v79];

                goto LABEL_106;
              }
            }

            else
            {
              unsignedIntValue = [resultBundleId3 unsignedIntValue];
              displayOrder2 = [v82 displayOrder];
              unsignedIntValue2 = [displayOrder2 unsignedIntValue];

              if (unsignedIntValue < unsignedIntValue2)
              {
                goto LABEL_105;
              }
            }

            if (++v79 > objc_msgSend_count(v61))
            {
              goto LABEL_106;
            }
          }

          [v61 addObject:v80];
          if (v142)
          {
            v64 = v79;
          }

LABEL_106:
          v54 = resultBundleId2;
          if (objc_msgSend_count(v61) > v123)
          {
            [v61 removeObjectsInRange:{v123, objc_msgSend_count(v61) - v123}];
          }

          v96 = objc_msgSend_count(v61);
          if (v64 >= v96 - 1)
          {
            v64 = v96 - 1;
          }

          lastObject = [v61 lastObject];
          displayOrder3 = [lastObject displayOrder];
          v99 = displayOrder3;
          v100 = &unk_1F55B4440;
          if (displayOrder3)
          {
            v100 = displayOrder3;
          }

          v101 = v100;

          v121 = v101;
          goto LABEL_113;
        }

        if (objc_msgSend_count(v61) >= v123)
        {
          unsignedIntValue3 = [resultBundleId3 unsignedIntValue];
          if (((unsignedIntValue3 < [v121 unsignedIntValue]) & bOOLValue) != 0)
          {
            goto LABEL_83;
          }
        }

        else if ((bOOLValue | v75))
        {
          goto LABEL_83;
        }

LABEL_113:
        v65 = v125;
        v63 = v127;
LABEL_114:

LABEL_115:
        ++v66;
      }

      while (v66 != v63);
      v63 = [obja countByEnumeratingWithState:&v147 objects:v156 count:16];
      if (!v63)
      {
LABEL_119:

        v145 = 0u;
        v146 = 0u;
        v143 = 0u;
        v144 = 0u;
        v102 = v61;
        v103 = [v102 countByEnumeratingWithState:&v143 objects:v155 count:16];
        v7 = v111;
        v8 = v131;
        if (v103)
        {
          v104 = v103;
          v105 = *v144;
          do
          {
            for (i = 0; i != v104; ++i)
            {
              if (*v144 != v105)
              {
                objc_enumerationMutation(v102);
              }

              [v136 removeObject:{*(*(&v143 + 1) + 8 * i), v108}];
            }

            v104 = [v102 countByEnumeratingWithState:&v143 objects:v155 count:16];
          }

          while (v104);
        }

        v57 = v108;
        [v108 setResults:v136];

        sectionsCopy = v114;
        v46 = v109;
        break;
      }
    }
  }

  return v7;
}

@end