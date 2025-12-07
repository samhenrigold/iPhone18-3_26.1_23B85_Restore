void sub_275D4454C()
{
  v0 = dispatch_queue_create("com.apple.iWork.KNMotionBackground.imageGenerationQueue", 0);
  v1 = qword_280A3BF08;
  qword_280A3BF08 = v0;
}

void sub_275D45A60(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_275D46850(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [v3 adoptStylesheet:*(a1 + 40) withMapper:*(a1 + 48)];
  }
}

id sub_275D46D5C(uint64_t a1, void *a2)
{
  v2 = [a2 objectUUID];

  return v2;
}

void sub_275D46D8C()
{
  v0 = TSULogCreateCategory();
  v1 = qword_280A39EE8;
  qword_280A39EE8 = v0;
}

id sub_275D4859C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = TSUCheckedDynamicCast();

  return v3;
}

uint64_t sub_275D486D8(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_275D4B270(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_275D4C180(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 drawable];
  v4 = [v2 containsObject:v3];

  return v4;
}

BOOL sub_275D4C2D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 drawable];
  if (v4 == *(a1 + 32))
  {
    if (*(a1 + 40))
    {
      v5 = [v3 animationType] == *(a1 + 40);
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_275D4EB98(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_275D4FED4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_275D52794(_Unwind_Exception *a1)
{
  _Block_object_dispose((v4 - 192), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_275D52944(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_275D5295C(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = *(a1 + 48);
  if (v5 != [v4 count])
  {
    v6 = MEMORY[0x277D81150];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAbstractSlide loadFromArchive:unarchiver:]_block_invoke"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm"];
    [v6 handleFailureInFunction:v7 file:v8 lineNumber:3184 isFatal:0 description:"Expected the number of info messages to match the number of unarchived infos.  Document is possibly corrupted."];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v9 = v4;
  v10 = [v9 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v10)
  {
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v13 + 1) + 8 * v12++) setParentInfoDuringUnarchiving:*(a1 + 32) inDocument:{*(a1 + 56), v13}];
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

void sub_275D52B3C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v11 = v3;
  if (v4 != [v3 count])
  {
    v5 = MEMORY[0x277D81150];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAbstractSlide loadFromArchive:unarchiver:]_block_invoke_2"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm"];
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:3197 isFatal:0 description:"Expected the number of drawable z-order infos messages to match the number of unarchived infos.  Document is possibly corrupted."];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  v8 = [objc_alloc(MEMORY[0x277CBEB40]) initWithArray:v11];
  v9 = *(a1 + 32);
  v10 = *(v9 + 72);
  *(v9 + 72) = v8;
}

void sub_275D52C64(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v3];
  v5 = *(a1 + 32);
  v6 = *(v5 + 200);
  *(v5 + 200) = v4;

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v7 = *(*(a1 + 32) + 200);
  v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v8)
  {
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v11 + 1) + 8 * v10++) setSlide:{*(a1 + 32), v11}];
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

void sub_275D52E0C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 176), a2);
  v4 = a2;
  [*(*(a1 + 32) + 176) setParentInfoDuringUnarchiving:*(a1 + 32) inDocument:*(a1 + 40)];
}

void sub_275D52E94(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) setObject:v3 forKeyedSubscript:*(a1 + 40)];
  }
}

void sub_275D52EFC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) setObject:*(a1 + 40) forKeyedSubscript:v3];
  }
}

void sub_275D52F64(uint64_t a1)
{
  v135 = *MEMORY[0x277D85DE8];
  if (*(a1 + 96) == 1)
  {
    v2 = *(a1 + 72);
    if (v2 <= 0x51FF6E3FFLL)
    {
      [*(a1 + 32) p_updateChartBuildChunksImmediatelyWithoutUndoHistory];
      v2 = *(a1 + 72);
    }

    if (v2 <= 0x520051B0FLL)
    {
      [*(a1 + 32) p_updateOverlappingBuildEventTriggers];
    }
  }

  v113 = a1;
  obj = [*(*(a1 + 32) + 200) objectsPassingTest:&unk_2884D4BA0];
  v3 = [*(*(a1 + 32) + 200) count];
  if (v3 != [obj count])
  {
    if (KNBuildArchivingLogCat_init_token != -1)
    {
      sub_275E59CCC();
    }

    [*(v113 + 32) willModifyForUpgrade];
    objc_storeStrong((*(v113 + 32) + 200), obj);
  }

  v4 = [*(*(v113 + 32) + 208) count];
  v105 = [MEMORY[0x277CBEB18] arrayWithCapacity:v4];
  v108 = [MEMORY[0x277CCAB58] indexSet];
  v109 = [MEMORY[0x277CBEB58] setWithCapacity:v4];
  v107 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(*(*(v113 + 32) + 208), "count")}];
  for (i = 0; ; ++i)
  {
    v6 = [*(*(v113 + 32) + 208) count];
    v7 = *(v113 + 32);
    if (i >= v6)
    {
      break;
    }

    v8 = [v7[26] objectAtIndexedSubscript:i];
    v9 = [v109 containsObject:v8];
    [v109 addObject:v8];
    v10 = [v8 build];
    if (v10 && !(v9 & 1 | (([*(*(v113 + 32) + 200) containsObject:v10] & 1) == 0)))
    {
      if (*(v113 + 97))
      {
        goto LABEL_24;
      }

      v11 = [v8 chunkIdentifier];
      if (v11)
      {
        v12 = [v107 objectForKeyedSubscript:v11];

        if (v12)
        {
          v13 = [v10 chunkCount];
          if (v13 == [v10 expectedChunkCount])
          {
            [v8 i_clearChunkIdentifier];
            [v10 i_generateAndApplyNewChunkIdentifierToChunk:v8];
          }

          else
          {
            [v108 addIndex:i];
          }
        }

        else
        {
          [v107 setObject:v8 forKeyedSubscript:v11];
        }
      }

      if (*(v113 + 97))
      {
LABEL_24:
        v14 = [v8 chunkIdentifier];
        v15 = [v14 isValid];

        if ((v15 & 1) == 0)
        {
          [v10 i_generateAndApplyNewChunkIdentifierToChunk:v8];
        }
      }

      v16 = [v8 chunkIdentifier];
      v17 = [v16 buildUUID];

      if (v17)
      {
        v18 = [v10 objectUUID];
        v19 = [v17 isEqual:v18];

        if (v19)
        {
          [v105 addObject:v8];
        }
      }
    }

    else
    {
      [v108 addIndex:i];
      if (KNBuildArchivingLogCat_init_token != -1)
      {
        sub_275E59D1C();
      }
    }
  }

  v20 = v113;
  [v7 p_updateBuildEffects:*(v113 + 96) version:*(v113 + 80)];
  if ([v108 count])
  {
    if (KNBuildArchivingLogCat_init_token != -1)
    {
      sub_275E59CE0();
      v20 = v113;
    }

    v21 = [*(*(v20 + 32) + 208) mutableCopy];
    [v21 removeObjectsAtIndexes:v108];
    [*(v20 + 32) willModifyForUpgrade];
    objc_storeStrong((*(v20 + 32) + 208), v21);
    [*(v20 + 32) p_updateChunkCount];
  }

  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  v112 = v105;
  v22 = [v112 countByEnumeratingWithState:&v127 objects:v134 count:16];
  if (v22)
  {
    v23 = *v128;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v128 != v23)
        {
          objc_enumerationMutation(v112);
        }

        v25 = *(*(&v127 + 1) + 8 * j);
        v26 = [v25 build];
        [v26 i_registerBuildChunkIdentifierForChunk:v25];
      }

      v22 = [v112 countByEnumeratingWithState:&v127 objects:v134 count:16];
    }

    while (v22);
  }

  v27 = v113;
  [*(v113 + 32) p_updateStartAndEndOffsetsIfNecessaryForFileVersion:*(v113 + 88)];
  v106 = [*(v113 + 32) documentRoot];
  v102 = [v106 show];
  if (!v102)
  {
    v28 = MEMORY[0x277D81150];
    v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAbstractSlide loadFromArchive:unarchiver:]_block_invoke_11"];
    v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm"];
    [v28 handleFailureInFunction:v29 file:v30 lineNumber:3472 isFatal:0 description:{"invalid nil value for '%{public}s'", "show"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
    v27 = v113;
  }

  if (!*(*(v27 + 32) + 72))
  {
    v31 = [objc_alloc(MEMORY[0x277CBEB40]) initWithArray:*(*(*(v27 + 40) + 8) + 40)];
    v32 = *(v27 + 32);
    v33 = *(v32 + 72);
    *(v32 + 72) = v31;

    v27 = v113;
  }

  v34 = objc_alloc(MEMORY[0x277D802E8]);
  [v102 size];
  v101 = [v34 initWithSize:?];
  v35 = [KNSlideBackgroundInfo backgroundWithSlide:*(v27 + 32) andGeometry:?];
  v36 = *(v27 + 32);
  v37 = *(v36 + 64);
  *(v36 + 64) = v35;

  v103 = *(*(v27 + 32) + 72);
  v38 = v113;
  if (*(*(*(v113 + 48) + 8) + 40))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = *(v113 + 32);
      v40 = *(*(*(v113 + 48) + 8) + 40);
      v41 = *(v39 + 152);
      *(v39 + 152) = v40;
    }

    else
    {
      [*(v113 + 32) willModifyForUpgrade];
      v41 = [MEMORY[0x277D805F0] defaultContext];
      v42 = [[KNTitlePlaceholderInfo alloc] initWithKNPlaceholderInfo:*(*(*(v113 + 48) + 8) + 40)];
      v43 = *(v113 + 32);
      v44 = *(v43 + 152);
      *(v43 + 152) = v42;

      [*(*(*(v113 + 48) + 8) + 40) willBeRemovedFromDocumentRoot:v106];
      [*(*(v113 + 32) + 152) willBeAddedToDocumentRoot:v106 dolcContext:v41];
      v45 = [*(*(*(v113 + 48) + 8) + 40) objectUUID];
      [*(*(v113 + 32) + 152) setObjectUUID:v45];

      v46 = [*(*(*(v113 + 48) + 8) + 40) textStorage];
      v47 = [v46 objectUUID];
      v48 = [*(*(v113 + 32) + 152) textStorage];
      [v48 setObjectUUID:v47];

      [*(*(v113 + 32) + 152) wasAddedToDocumentRoot:v106 dolcContext:v41];
      [*(*(*(v113 + 48) + 8) + 40) wasRemovedFromDocumentRoot:v106];
      v49 = [v103 indexOfObject:*(*(*(v113 + 48) + 8) + 40)];
      if (v49 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v103 replaceObjectAtIndex:v49 withObject:*(*(v113 + 32) + 152)];
      }

      [*(v113 + 32) p_updateBuildsReplacingPlaceholder:*(*(*(v113 + 48) + 8) + 40) withPlaceholder:*(*(v113 + 32) + 152)];
    }

    v38 = v113;
    [*(*(v113 + 32) + 152) setParentInfoDuringUnarchiving:*(v113 + 32) inDocument:*(v113 + 98)];
  }

  if (*(*(*(v38 + 56) + 8) + 40))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v50 = *(v38 + 32);
      v51 = *(*(*(v38 + 56) + 8) + 40);
      v52 = *(v50 + 160);
      *(v50 + 160) = v51;
    }

    else
    {
      [*(v38 + 32) willModifyForUpgrade];
      v52 = [MEMORY[0x277D805F0] defaultContext];
      v53 = [[KNBodyPlaceholderInfo alloc] initWithKNPlaceholderInfo:*(*(*(v38 + 56) + 8) + 40)];
      v54 = *(v38 + 32);
      v55 = *(v54 + 160);
      *(v54 + 160) = v53;

      [*(*(*(v113 + 56) + 8) + 40) willBeRemovedFromDocumentRoot:v106];
      [*(*(v113 + 32) + 160) willBeAddedToDocumentRoot:v106 dolcContext:v52];
      v56 = [*(*(*(v113 + 56) + 8) + 40) objectUUID];
      [*(*(v113 + 32) + 160) setObjectUUID:v56];

      v57 = [*(*(*(v113 + 56) + 8) + 40) textStorage];
      v58 = [v57 objectUUID];
      v59 = [*(*(v113 + 32) + 160) textStorage];
      [v59 setObjectUUID:v58];

      [*(*(v113 + 32) + 160) wasAddedToDocumentRoot:v106 dolcContext:v52];
      [*(*(*(v113 + 56) + 8) + 40) wasRemovedFromDocumentRoot:v106];
      v60 = [v103 indexOfObject:*(*(*(v113 + 56) + 8) + 40)];
      if (v60 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v103 replaceObjectAtIndex:v60 withObject:*(*(v113 + 32) + 160)];
      }

      [*(v113 + 32) p_updateBuildsReplacingPlaceholder:*(*(*(v113 + 56) + 8) + 40) withPlaceholder:*(*(v113 + 32) + 160)];
    }

    v38 = v113;
    [*(*(v113 + 32) + 160) setParentInfoDuringUnarchiving:*(v113 + 32) inDocument:*(v113 + 98)];
  }

  if (*(*(*(v38 + 64) + 8) + 40))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v61 = *(v38 + 32);
      v62 = *(*(*(v38 + 64) + 8) + 40);
      v63 = *(v61 + 168);
      *(v61 + 168) = v62;
    }

    else
    {
      [*(v38 + 32) willModifyForUpgrade];
      v63 = [MEMORY[0x277D805F0] defaultContext];
      v64 = [[KNObjectPlaceholderInfo alloc] initWithKNPlaceholderInfo:*(*(*(v38 + 64) + 8) + 40)];
      v65 = *(v38 + 32);
      v66 = *(v65 + 168);
      *(v65 + 168) = v64;

      [*(*(*(v113 + 64) + 8) + 40) willBeRemovedFromDocumentRoot:v106];
      [*(*(v113 + 32) + 168) willBeAddedToDocumentRoot:v106 dolcContext:v63];
      v67 = [*(*(*(v113 + 64) + 8) + 40) objectUUID];
      [*(*(v113 + 32) + 168) setObjectUUID:v67];

      v68 = [*(*(*(v113 + 64) + 8) + 40) textStorage];
      v69 = [v68 objectUUID];
      v70 = [*(*(v113 + 32) + 168) textStorage];
      [v70 setObjectUUID:v69];

      [*(*(v113 + 32) + 168) wasAddedToDocumentRoot:v106 dolcContext:v63];
      [*(*(*(v113 + 64) + 8) + 40) wasRemovedFromDocumentRoot:v106];
      v71 = [v103 indexOfObject:*(*(*(v113 + 64) + 8) + 40)];
      if (v71 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v103 replaceObjectAtIndex:v71 withObject:*(*(v113 + 32) + 168)];
      }

      [*(v113 + 32) p_updateBuildsReplacingPlaceholder:*(*(*(v113 + 64) + 8) + 40) withPlaceholder:*(*(v113 + 32) + 168)];
    }

    [*(*(v113 + 32) + 168) setParentInfoDuringUnarchiving:*(v113 + 32) inDocument:*(v113 + 98)];
  }

  v111 = [MEMORY[0x277CBEB18] array];
  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v72 = v103;
  v73 = [v72 countByEnumeratingWithState:&v123 objects:v133 count:16];
  if (v73)
  {
    v74 = *v124;
    do
    {
      for (k = 0; k != v73; ++k)
      {
        if (*v124 != v74)
        {
          objc_enumerationMutation(v72);
        }

        objc_opt_class();
        v76 = TSUDynamicCast();
        v77 = v76;
        if (v76 && ([v76 isValidShapeToUnarchive] & 1) == 0)
        {
          [v111 addObject:v77];
        }
      }

      v73 = [v72 countByEnumeratingWithState:&v123 objects:v133 count:16];
    }

    while (v73);
  }

  v122[0] = MEMORY[0x277D85DD0];
  v122[1] = 3221225472;
  v122[2] = sub_275D54330;
  v122[3] = &unk_27A697AD0;
  v122[4] = *(v113 + 32);
  [v111 enumerateObjectsUsingBlock:v122];
  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v78 = [*(*(v113 + 32) + 192) allValues];
  v79 = [v78 countByEnumeratingWithState:&v118 objects:v132 count:16];
  if (v79)
  {
    v80 = *v119;
    v81 = MEMORY[0x277D81408];
    do
    {
      v82 = 0;
      do
      {
        if (*v119 != v80)
        {
          objc_enumerationMutation(v78);
        }

        v83 = *(*(&v118 + 1) + 8 * v82);
        v84 = [*(v113 + 32) childInfos];
        v85 = [v84 containsObject:v83];

        if ((v85 & 1) == 0)
        {
          if (*v81 != -1)
          {
            sub_275E59CF4();
          }

          [*(v113 + 32) removeTagForDrawable:v83];
        }

        ++v82;
      }

      while (v79 != v82);
      v79 = [v78 countByEnumeratingWithState:&v118 objects:v132 count:16];
    }

    while (v79);
  }

  v86 = v113;
  if (*(v113 + 96) == 1)
  {
    [*(v113 + 32) willModifyForUpgrade];
    v87 = [*(v113 + 32) documentRoot];
    v110 = [v87 stylesheet];

    v100 = [v110 isLocked];
    [v110 setIsLocked:0];
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v88 = [*(v113 + 32) childInfos];
    v89 = [v88 countByEnumeratingWithState:&v114 objects:v131 count:16];
    if (!v89)
    {
      goto LABEL_102;
    }

    v90 = *v115;
    while (1)
    {
      for (m = 0; m != v89; ++m)
      {
        if (*v115 != v90)
        {
          objc_enumerationMutation(v88);
        }

        objc_opt_class();
        v92 = TSUDynamicCast();
        v93 = v92;
        if (v92)
        {
          v94 = [v92 geometry];
          if ([v94 heightValid])
          {
            v95 = [v93 displaysInstructionalText];

            if (!v95)
            {
              goto LABEL_100;
            }

            v94 = [objc_alloc(MEMORY[0x277D80AB8]) initWithCapacity:1];
            [v94 setBoxedObject:MEMORY[0x277CBEC38] forProperty:152];
            v96 = [v93 style];
            v97 = [v110 variationOfStyle:v96 propertyMap:v94];

            [v93 setStyle:v97];
          }
        }

LABEL_100:
      }

      v89 = [v88 countByEnumeratingWithState:&v114 objects:v131 count:16];
      if (!v89)
      {
LABEL_102:

        if (v100)
        {
          [v110 setIsLocked:1];
        }

        v86 = v113;
        break;
      }
    }
  }

  v98 = [*(v86 + 32) motionBackgroundStyle];
  v99 = v98 == 0;

  if (!v99)
  {
    [*(v113 + 32) updateMotionBackground];
  }
}

void sub_275D54264()
{
  v0 = TSULogCreateCategory();
  v1 = KNBuildArchivingLogCat_log_t;
  KNBuildArchivingLogCat_log_t = v0;
}

void sub_275D542A8()
{
  v0 = TSULogCreateCategory();
  v1 = KNBuildArchivingLogCat_log_t;
  KNBuildArchivingLogCat_log_t = v0;
}

void sub_275D542EC()
{
  v0 = TSULogCreateCategory();
  v1 = KNBuildArchivingLogCat_log_t;
  KNBuildArchivingLogCat_log_t = v0;
}

void sub_275D5433C()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void *sub_275D55B98(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_275D55C50();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

void sub_275D55C68(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_275D55CC4(exception, a1);
  __cxa_throw(exception, off_27A697808, MEMORY[0x277D825F0]);
}

std::logic_error *sub_275D55CC4(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

uint64_t sub_275D55D64(void *a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = a1;
  v6 = KNAnimationTypeFromNumber();
  v7 = [v5 localizedNameForType:v6];

  v8 = [v4 localizedNameForType:v6];

  v9 = [v7 localizedCompare:v8];
  return v9;
}

uint64_t sub_275D55DF8(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (qword_280A3BF10 != -1)
  {
    sub_275E59D30();
  }

  v5 = [qword_280A3BF18 indexOfObject:v3];
  v6 = [qword_280A3BF18 indexOfObject:v4];
  if (v5 >= v6)
  {
    if (v5 > v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = [v3 caseInsensitiveCompare:v4];
    }
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

void sub_275D55EA0()
{
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:11];
  for (i = 0; i != 11; ++i)
  {
    v1 = [KNAnimationRegistry localizedCategoryNameForCategory:qword_275E70880[i]];
    [v4 addObject:v1];
  }

  v2 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v4];
  v3 = qword_280A3BF18;
  qword_280A3BF18 = v2;
}

void sub_275D55FA0()
{
  v0 = objc_alloc_init(KNAnimationRegistry);
  v1 = qword_280A3BF28;
  qword_280A3BF28 = v0;
}

void sub_275D5685C()
{
  v23 = objc_alloc(MEMORY[0x277CBEAC0]);
  v30 = sub_275DC204C(v23);
  v36 = [v30 localizedStringForKey:@"Shimmer" value:&stru_2884D8E20 table:@"Keynote"];
  v29 = sub_275DC204C(v36);
  v21 = [v29 localizedStringForKey:@"Sparkle" value:&stru_2884D8E20 table:@"Keynote"];
  v28 = sub_275DC204C(v21);
  v35 = [v28 localizedStringForKey:@"Swoosh" value:&stru_2884D8E20 table:@"Keynote"];
  v27 = sub_275DC204C(v35);
  v18 = [v27 localizedStringForKey:@"Blur" value:&stru_2884D8E20 table:@"Keynote"];
  v26 = sub_275DC204C(v18);
  v34 = [v26 localizedStringForKey:@"Burn" value:&stru_2884D8E20 table:@"Keynote"];
  v25 = sub_275DC204C(v34);
  v15 = [v25 localizedStringForKey:@"Falling Tiles" value:&stru_2884D8E20 table:@"Keynote"];
  v24 = sub_275DC204C(v15);
  v33 = [v24 localizedStringForKey:@"Flash" value:&stru_2884D8E20 table:@"Keynote"];
  v22 = sub_275DC204C(v33);
  v32 = [v22 localizedStringForKey:@"Motion Dissolve" value:&stru_2884D8E20 table:@"Keynote"];
  v20 = sub_275DC204C(v32);
  v31 = [v20 localizedStringForKey:@"Radial" value:&stru_2884D8E20 table:@"Keynote"];
  v19 = sub_275DC204C(v31);
  v11 = [v19 localizedStringForKey:@"Shutter" value:&stru_2884D8E20 table:@"Keynote"];
  v17 = sub_275DC204C(v11);
  v10 = [v17 localizedStringForKey:@"Convergence" value:&stru_2884D8E20 table:@"Keynote"];
  v16 = sub_275DC204C(v10);
  v9 = [v16 localizedStringForKey:@"Drift by Object" value:&stru_2884D8E20 table:@"Keynote"];
  v14 = sub_275DC204C(v9);
  v8 = [v14 localizedStringForKey:@"Drop" value:&stru_2884D8E20 table:@"Keynote"];
  v13 = sub_275DC204C(v8);
  v0 = [v13 localizedStringForKey:@"Revolve" value:&stru_2884D8E20 table:@"Keynote"];
  v12 = sub_275DC204C(v0);
  v1 = [v12 localizedStringForKey:@"Lens Flare" value:&stru_2884D8E20 table:@"Keynote"];
  v2 = sub_275DC204C(v1);
  v3 = [v2 localizedStringForKey:@"Pop" value:&stru_2884D8E20 table:@"Keynote"];
  v4 = sub_275DC204C(v3);
  v5 = [v4 localizedStringForKey:@"Typewriter" value:&stru_2884D8E20 table:@"Keynote"];
  v6 = [v23 initWithObjectsAndKeys:{v36, @"apple:ca-text-shimmer", v21, @"apple:ca-text-sparkle", v35, @"com.apple.iWork.Keynote.BLTSwoosh", v18, @"com.apple.iWork.Keynote.KLNBlur", v34, @"apple:burn", v15, @"apple:fallingtiles", v33, @"apple:flash", v32, @"apple:motion dissolve", v31, @"apple:wipe-radial", v11, @"com.apple.iWork.Keynote.BLTShutter", v10, @"com.apple.iWork.Keynote.KLNBCConvergence", v9, @"apple:drift object", v8, @"apple:dropbuild", v0, @"apple:revolve", v1, @"com.apple.iWork.Keynote.BUKLensFlare", v3, @"apple:pop", v5, *MEMORY[0x277D80168], 0}];
  v7 = qword_280A3BF38;
  qword_280A3BF38 = v6;
}

void sub_275D56E3C(uint64_t a1)
{
  for (i = 0; i != 11; ++i)
  {
    v3 = [MEMORY[0x277CCABB0] numberWithInt:LODWORD(qword_275E70880[i])];
    [*(a1 + 32) addObject:v3];
  }
}

void sub_275D58970(uint64_t a1, uint64_t a2)
{
  v29[11] = *MEMORY[0x277D85DE8];
  v28 = sub_275DC204C(a1);
  v27 = [v28 localizedStringForKey:@"Title" value:&stru_2884D8E20 table:@"Keynote"];
  v29[0] = v27;
  v26 = sub_275DC204C(v27);
  v25 = [v26 localizedStringForKey:@"Title Alt" value:&stru_2884D8E20 table:@"Keynote"];
  v29[1] = v25;
  v24 = sub_275DC204C(v25);
  v23 = [v24 localizedStringForKey:@"Subtitle" value:&stru_2884D8E20 table:@"Keynote"];
  v29[2] = v23;
  v22 = sub_275DC204C(v23);
  v21 = [v22 localizedStringForKey:@"Body" value:&stru_2884D8E20 table:@"Keynote"];
  v29[3] = v21;
  v20 = sub_275DC204C(v21);
  v19 = [v20 localizedStringForKey:@"Body Small" value:&stru_2884D8E20 table:@"Keynote"];
  v29[4] = v19;
  v18 = sub_275DC204C(v19);
  v17 = [v18 localizedStringForKey:@"Bullets" value:&stru_2884D8E20 table:@"Keynote"];
  v29[5] = v17;
  v16 = sub_275DC204C(v17);
  v2 = [v16 localizedStringForKey:@"Bullets Small" value:&stru_2884D8E20 table:@"Keynote"];
  v29[6] = v2;
  v3 = sub_275DC204C(v2);
  v4 = [v3 localizedStringForKey:@"Caption" value:&stru_2884D8E20 table:@"Keynote"];
  v29[7] = v4;
  v5 = sub_275DC204C(v4);
  v6 = [v5 localizedStringForKey:@"Caption Alt" value:&stru_2884D8E20 table:@"Keynote"];
  v29[8] = v6;
  v7 = sub_275DC204C(v6);
  v8 = [v7 localizedStringForKey:@"Label" value:&stru_2884D8E20 table:@"Keynote"];
  v29[9] = v8;
  v9 = sub_275DC204C(v8);
  v10 = [v9 localizedStringForKey:@"Label Alt" value:&stru_2884D8E20 table:@"Keynote"];
  v29[10] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:11];
  v12 = qword_280A3BF48;
  qword_280A3BF48 = v11;

  if (!qword_280A3BF48)
  {
    v13 = MEMORY[0x277D81150];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNDocumentRoot protected_defaultTextPresetOrdering]_block_invoke"];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNDocumentRoot.m"];
    [v13 handleFailureInFunction:v14 file:v15 lineNumber:499 isFatal:0 description:{"invalid nil value for '%{public}s'", "sDefaultTextPresetOrdering"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }
}

void sub_275D58FDC(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 name];
  v4 = [v3 rangeOfString:@"transient style from -mappedTextStyleOfClass:forStyle:"];

  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) theme];
    v7 = [v6 defaultCharacterStyle];
    v8 = [v10 fullPropertyMap];
    v9 = [v5 variationOfStyle:v7 propertyMap:v8];

    [*(a1 + 48) setObject:v9 forKey:v10];
  }
}

void sub_275D590C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 referencedStyles];
  v5 = [v4 intersectsSet:*(a1 + 32)];

  if (v5)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_275D59180;
    v6[3] = &unk_27A697B70;
    v7 = *(a1 + 40);
    [v3 replaceReferencedStylesUsingBlock:v6];
  }
}

id sub_275D59180(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4)
  {
    v5 = [*(a1 + 32) objectForKey:v3];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }

    v8 = v7;
  }

  else
  {
    v8 = v3;
  }

  return v8;
}

void sub_275D5A540(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [*(a1 + 56) localizedTemplateStringForKey:v5 value:v5 table:*MEMORY[0x277D80008] templateBundle:*(a1 + 32) locale:*(a1 + 40)];
  if (v6)
  {
    [*(a1 + 48) setInstructionalText:v6 forInfo:v10];
  }

  else
  {
    v7 = MEMORY[0x277D81150];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[KNDocumentRoot localizeModelObject:withTemplateBundle:andLocale:]_block_invoke"];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNDocumentRoot.m"];
    [v7 handleFailureInFunction:v8 file:v9 lineNumber:1535 isFatal:0 description:{"no localized string for instructional text '%{public}@'", v5}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }
}

uint64_t sub_275D5B3E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  if (v4)
  {
    v5 = [*(a1 + 40) objectForKeyedSubscript:v3];
    if (v5)
    {
      v6 = objc_opt_class();
      if (v6 != objc_opt_class())
      {
        v7 = MEMORY[0x277D81150];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNDocumentRoot compareLocationSortingInfo:toSortingInfo:]_block_invoke"];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNDocumentRoot.m"];
        [v7 handleFailureInFunction:v8 file:v9 lineNumber:1712 isFatal:0 description:{"Values for key %@ should be of the same class %@ %@", v3, v4, v5}];

        [MEMORY[0x277D81150] logBacktraceThrottled];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v4 compare:v5];
LABEL_10:
        v11 = v10;
LABEL_13:

        goto LABEL_14;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v4 localizedCaseInsensitiveCompare:v5];
        goto LABEL_10;
      }

      v12 = MEMORY[0x277D81150];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNDocumentRoot compareLocationSortingInfo:toSortingInfo:]_block_invoke"];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNDocumentRoot.m"];
      [v12 handleFailureInFunction:v13 file:v14 lineNumber:1720 isFatal:0 description:{"Unexpected value class for key %@ %@", v3, v4}];

      [MEMORY[0x277D81150] logBacktraceThrottled];
    }

    v11 = 0;
    goto LABEL_13;
  }

  v11 = 0;
LABEL_14:

  return v11;
}

void sub_275D5B8D0(uint64_t a1)
{
  [*(a1 + 32) removeAll];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = [MEMORY[0x277D805F0] defaultContext];
  [v3 addSlideNode:v2 atDepth:1 dolcContext:v4];
}

void sub_275D5BE48(uint64_t a1, void *a2)
{
  v3 = [a2 object];
  [*(a1 + 32) setCustomFormatListToUpgrade:?];
}

id sub_275D5BFD8(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  *(v3 + 16) |= 2u;
  v4 = *(v3 + 32);
  if (!v4)
  {
    v5 = *(v3 + 8);
    if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    }

    v4 = MEMORY[0x277C8EF60](v5);
    *(v3 + 32) = v4;
  }

  v6 = a1[4];
  v8.receiver = v2;
  v8.super_class = KNDocumentRoot;
  return objc_msgSendSuper2(&v8, sel_saveToArchive_archiver_, v4, v6);
}

void sub_275D5C284(uint64_t a1)
{
  v202 = *MEMORY[0x277D85DE8];
  v123 = [*(a1 + 32) show];
  v125 = [v123 theme];
  v124 = [v123 slideTree];
  if (![*(a1 + 32) hasPreUFFVersion])
  {
    if (*(a1 + 48) >= *MEMORY[0x277D80950])
    {
      goto LABEL_57;
    }

    v180 = 0u;
    v181 = 0u;
    v178 = 0u;
    v179 = 0u;
    v8 = [v124 slideNodes];
    v25 = [v8 countByEnumeratingWithState:&v178 objects:v199 count:16];
    if (v25)
    {
      v26 = *v179;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v179 != v26)
          {
            objc_enumerationMutation(v8);
          }

          v28 = *(*(&v178 + 1) + 8 * i);
          [v28 willModifyForUpgrade];
          [v28 invalidateBuildEventCountCaches];
        }

        v25 = [v8 countByEnumeratingWithState:&v178 objects:v199 count:16];
      }

      while (v25);
    }

    goto LABEL_56;
  }

  v2 = *(a1 + 40);
  if (v2 <= 0x51FF69643)
  {
    v188 = 0u;
    v189 = 0u;
    v186 = 0u;
    v187 = 0u;
    v3 = [v124 visibleSlideNodes];
    v4 = [v3 countByEnumeratingWithState:&v186 objects:v201 count:16];
    if (v4)
    {
      v5 = *v187;
      do
      {
        for (j = 0; j != v4; ++j)
        {
          if (*v187 != v5)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v186 + 1) + 8 * j) invalidateBuildEventCountCaches];
        }

        v4 = [v3 countByEnumeratingWithState:&v186 objects:v201 count:16];
      }

      while (v4);
    }

    v2 = *(a1 + 40);
  }

  if (v2 <= 0x774114FEBLL)
  {
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 pathForResource:@"NativeThemes" ofType:@"plist"];

    v121 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v8];
    v9 = [v125 UUID];
    v118 = [v121 objectForKeyedSubscript:v9];

    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v119 = [v10 pathForResource:@"OldNativeThemesMap" ofType:@"plist"];

    v117 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v119];
    v11 = [v125 UUID];
    v120 = [v117 objectForKeyedSubscript:v11];

    if (!v118 && v120)
    {
      [v125 willModifyForUpgrade];
      v12 = [v121 objectForKeyedSubscript:v120];
      v13 = [v12 isEqualToString:@"White"];

      if (v13)
      {
        v14 = [v125 templateSlides];
        v15 = [v14 objectAtIndexedSubscript:0];
        v16 = [v15 slide];
        v17 = [v16 childInfos];

        v184 = 0u;
        v185 = 0u;
        v182 = 0u;
        v183 = 0u;
        obj = v17;
        v18 = [obj countByEnumeratingWithState:&v182 objects:v200 count:16];
        if (v18)
        {
          v19 = *v183;
          while (2)
          {
            for (k = 0; k != v18; ++k)
            {
              if (*v183 != v19)
              {
                objc_enumerationMutation(obj);
              }

              v21 = *(*(&v182 + 1) + 8 * k);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v22 = v21;
                v23 = [v22 imageData];
                v24 = [v23 documentResourceLocator];

                if (![v24 caseInsensitiveCompare:@"T11/PhotoPortfolio/Photo Portfolio - Image 1"])
                {
                  v29 = [v121 allKeysForObject:@"PhotoPortfolio"];
                  if ([v29 count])
                  {
LABEL_44:
                    v30 = [v29 objectAtIndexedSubscript:0];
                    [v125 setUUID:v30];
                  }

                  else
                  {
                    v34 = MEMORY[0x277D81150];
                    v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNDocumentRoot(PersistenceAdditions) loadFromUnarchiver:]_block_invoke"];
                    v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNDocumentRootPersistenceAdditions.mm"];
                    [v34 handleFailureInFunction:v35 file:v36 lineNumber:164 isFatal:0 description:"Could not resolve the theme for PhotoPortfolio from NativeThemes.plist. Is it imported?"];

                    [MEMORY[0x277D81150] logBacktraceThrottled];
                  }

LABEL_48:

                  goto LABEL_49;
                }

                if (![v24 caseInsensitiveCompare:@"Renaissance/72801391_2880x1920"])
                {
                  v29 = [v121 allKeysForObject:@"Renaissance"];
                  if ([v29 count])
                  {
                    goto LABEL_44;
                  }

                  v37 = MEMORY[0x277D81150];
                  v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNDocumentRoot(PersistenceAdditions) loadFromUnarchiver:]_block_invoke"];
                  v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNDocumentRootPersistenceAdditions.mm"];
                  [v37 handleFailureInFunction:v38 file:v39 lineNumber:177 isFatal:0 description:"Could not resolve the theme for Renaissance from NativeThemes.plist. Is it imported?"];

                  [MEMORY[0x277D81150] logBacktraceThrottled];
                  goto LABEL_48;
                }

                if (![v24 caseInsensitiveCompare:@"Ginger/gray_placeholder/Happy_Girls"] || !objc_msgSend(v24, "caseInsensitiveCompare:", @"T11/White/PLACEHOLDER_apple_17-cr2_1877_comp"))
                {
                  v29 = [v121 allKeysForObject:@"White"];
                  if ([v29 count])
                  {
                    goto LABEL_44;
                  }

                  v31 = MEMORY[0x277D81150];
                  v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNDocumentRoot(PersistenceAdditions) loadFromUnarchiver:]_block_invoke"];
                  v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNDocumentRootPersistenceAdditions.mm"];
                  [v31 handleFailureInFunction:v32 file:v33 lineNumber:191 isFatal:0 description:"Could not resolve the theme for White from NativeThemes.plist. Is it imported?"];

                  [MEMORY[0x277D81150] logBacktraceThrottled];
                  goto LABEL_48;
                }
              }
            }

            v18 = [obj countByEnumeratingWithState:&v182 objects:v200 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }
        }

LABEL_49:
      }

      else
      {
        [v125 setUUID:v120];
      }

      v40 = [v125 UUID];
      v41 = [v121 objectForKeyedSubscript:v40];
      v42 = v41 == 0;

      if (v42)
      {
        v43 = MEMORY[0x277D81150];
        v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNDocumentRoot(PersistenceAdditions) loadFromUnarchiver:]_block_invoke"];
        v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNDocumentRootPersistenceAdditions.mm"];
        [v43 handleFailureInFunction:v44 file:v45 lineNumber:204 isFatal:0 description:"Didn't end up with a new native theme. Failing over to White."];

        [MEMORY[0x277D81150] logBacktraceThrottled];
        v46 = [v121 allKeysForObject:@"White"];
        if ([v46 count])
        {
          v47 = [v46 objectAtIndexedSubscript:0];
          [v125 setUUID:v47];
        }

        else
        {
          v48 = MEMORY[0x277D81150];
          v49 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNDocumentRoot(PersistenceAdditions) loadFromUnarchiver:]_block_invoke"];
          v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNDocumentRootPersistenceAdditions.mm"];
          [v48 handleFailureInFunction:v49 file:v50 lineNumber:209 isFatal:0 description:"Could not resolve the theme for White from NativeThemes.plist. Is it imported?"];

          [MEMORY[0x277D81150] logBacktraceThrottled];
        }
      }
    }

LABEL_56:
  }

LABEL_57:
  [*(a1 + 32) performHyperlinkUpgradesIfNecessaryForVersion:*(a1 + 40)];
  if (*(a1 + 48) < *MEMORY[0x277D80968])
  {
    v51 = *(a1 + 32);
    v52 = [v124 slideNodes];
    [v51 p_hyperlinkAndBreadcrumbUpgradeForUnity20SlideNodes:v52];
  }

  v176 = 0u;
  v177 = 0u;
  v174 = 0u;
  v175 = 0u;
  v53 = [v125 templateSlides];
  v54 = [v53 countByEnumeratingWithState:&v174 objects:v198 count:16];
  if (v54)
  {
    v55 = *v175;
    do
    {
      for (m = 0; m != v54; ++m)
      {
        if (*v175 != v55)
        {
          objc_enumerationMutation(v53);
        }

        v57 = [*(*(&v174 + 1) + 8 * m) slide];
        [v57 generateObjectPlaceholderIfNecessary];
      }

      v54 = [v53 countByEnumeratingWithState:&v174 objects:v198 count:16];
    }

    while (v54);
  }

  if (*(a1 + 48) <= 0x2000000000017uLL)
  {
    v122 = [*(a1 + 32) stylesheet];
    v58 = [*(a1 + 32) makeStyleMapper];
    [v58 setClientsMustRemap:1];
    v59 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    v168 = 0;
    v169 = &v168;
    v170 = 0x3042000000;
    v171 = sub_275D5D8AC;
    v172 = sub_275D5D8B8;
    v173 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_275D5D8C0;
    aBlock[3] = &unk_27A697CB0;
    v60 = v59;
    v165 = v60;
    v61 = v122;
    v166 = v61;
    v167 = &v168;
    v62 = _Block_copy(aBlock);
    objc_storeWeak(v169 + 5, v62);
    v162[0] = 0;
    v162[1] = v162;
    v162[2] = 0x2020000000;
    v163 = 0;
    v63 = [*(a1 + 32) modelEnumeratorWithFlags:2];
    v158[0] = MEMORY[0x277D85DD0];
    v158[1] = 3221225472;
    v158[2] = sub_275D5DB60;
    v158[3] = &unk_27A697D28;
    v64 = v62;
    v160 = v64;
    v65 = v58;
    v159 = v65;
    v161 = v162;
    [v63 enumerateStyleClientsUsingBlock:v158];

    _Block_object_dispose(v162, 8);
    _Block_object_dispose(&v168, 8);
    objc_destroyWeak(&v173);
  }

  v66 = [*(a1 + 32) stylesheet];
  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  v67 = [*(a1 + 32) show];
  v68 = [v67 theme];
  v69 = [v68 templateSlides];

  v70 = [v69 countByEnumeratingWithState:&v154 objects:v197 count:16];
  if (v70)
  {
    v71 = *v155;
    do
    {
      for (n = 0; n != v70; ++n)
      {
        if (*v155 != v71)
        {
          objc_enumerationMutation(v69);
        }

        v73 = [*(*(&v154 + 1) + 8 * n) slide];
        v74 = [v73 style];

        v75 = [v74 parent];
        LODWORD(v73) = v75 == 0;

        if (v73)
        {
          v76 = [v74 styleIdentifier];
          v77 = v76 == 0;

          if (v77)
          {
            v78 = [v66 unusedStyleIdentifierWithPackageString:@"slide" styleDescriptor:@"slidestyle" contentTag:0];
            [v66 setIdentifier:v78 ofStyle:v74];
          }
        }
      }

      v70 = [v69 countByEnumeratingWithState:&v154 objects:v197 count:16];
    }

    while (v70);
  }

  v79 = *(a1 + 48);
  if (v79 <= 0x4000100000005 && v79 >= *MEMORY[0x277D809A8])
  {
    v80 = [v123 recording];
    v81 = [v80 recordingByAddingMissingEventsForRadar49654305];
    if (v81 != v80)
    {
      [v123 willModifyForUpgrade];
      [v123 setRecording:v81];
    }

    v152 = 0u;
    v153 = 0u;
    v150 = 0u;
    v151 = 0u;
    v82 = [v124 visibleSlideNodes];
    v83 = [v82 countByEnumeratingWithState:&v150 objects:v196 count:16];
    if (v83)
    {
      v84 = *v151;
      do
      {
        for (ii = 0; ii != v83; ++ii)
        {
          if (*v151 != v84)
          {
            objc_enumerationMutation(v82);
          }

          [*(*(&v150 + 1) + 8 * ii) invalidateBuildEventCountCaches];
        }

        v83 = [v82 countByEnumeratingWithState:&v150 objects:v196 count:16];
      }

      while (v83);
    }
  }

  v86 = sub_275E53AE0();
  v87 = *(a1 + 48);
  if (v87 >= v86)
  {
    if (v87 >= sub_275E53AF0())
    {
      v132 = 0uLL;
      v133 = 0uLL;
      v130 = 0uLL;
      v131 = 0uLL;
      v107 = [v124 slideNodes];
      v108 = [v107 countByEnumeratingWithState:&v130 objects:v191 count:16];
      if (v108)
      {
        v109 = *v131;
        do
        {
          for (jj = 0; jj != v108; ++jj)
          {
            if (*v131 != v109)
            {
              objc_enumerationMutation(v107);
            }

            v111 = *(*(&v130 + 1) + 8 * jj);
            if ([v111 needsToUpdateLiveVideoSourceUsageAfterUnarchiving])
            {
              [v111 willModifyForUpgrade];
              [v111 updateLiveVideoSourceUsage];
            }
          }

          v108 = [v107 countByEnumeratingWithState:&v130 objects:v191 count:16];
        }

        while (v108);
      }

      v128 = 0u;
      v129 = 0u;
      v126 = 0u;
      v127 = 0u;
      v93 = [v125 templateSlides];
      v112 = [v93 countByEnumeratingWithState:&v126 objects:v190 count:16];
      if (v112)
      {
        v113 = *v127;
        do
        {
          for (kk = 0; kk != v112; ++kk)
          {
            if (*v127 != v113)
            {
              objc_enumerationMutation(v93);
            }

            v115 = *(*(&v126 + 1) + 8 * kk);
            if ([v115 needsToUpdateLiveVideoSourceUsageAfterUnarchiving])
            {
              [v115 willModifyForUpgrade];
              [v115 updateLiveVideoSourceUsage];
            }
          }

          v112 = [v93 countByEnumeratingWithState:&v126 objects:v190 count:16];
        }

        while (v112);
      }
    }

    else
    {
      v140 = 0uLL;
      v141 = 0uLL;
      v138 = 0uLL;
      v139 = 0uLL;
      v98 = [v124 slideNodes];
      v99 = [v98 countByEnumeratingWithState:&v138 objects:v193 count:16];
      if (v99)
      {
        v100 = *v139;
        do
        {
          for (mm = 0; mm != v99; ++mm)
          {
            if (*v139 != v100)
            {
              objc_enumerationMutation(v98);
            }

            v102 = *(*(&v138 + 1) + 8 * mm);
            [v102 willModifyForUpgrade];
            [v102 updateLiveVideoSourceUsage];
          }

          v99 = [v98 countByEnumeratingWithState:&v138 objects:v193 count:16];
        }

        while (v99);
      }

      v136 = 0u;
      v137 = 0u;
      v134 = 0u;
      v135 = 0u;
      v93 = [v125 templateSlides];
      v103 = [v93 countByEnumeratingWithState:&v134 objects:v192 count:16];
      if (v103)
      {
        v104 = *v135;
        do
        {
          for (nn = 0; nn != v103; ++nn)
          {
            if (*v135 != v104)
            {
              objc_enumerationMutation(v93);
            }

            v106 = *(*(&v134 + 1) + 8 * nn);
            [v106 willModifyForUpgrade];
            [v106 updateLiveVideoSourceUsage];
          }

          v103 = [v93 countByEnumeratingWithState:&v134 objects:v192 count:16];
        }

        while (v103);
      }
    }
  }

  else
  {
    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    v88 = [v124 slideNodes];
    v89 = [v88 countByEnumeratingWithState:&v146 objects:v195 count:16];
    if (v89)
    {
      v90 = *v147;
      do
      {
        for (i1 = 0; i1 != v89; ++i1)
        {
          if (*v147 != v90)
          {
            objc_enumerationMutation(v88);
          }

          v92 = *(*(&v146 + 1) + 8 * i1);
          [v92 willModifyForUpgrade];
          [v92 updateTemplateSlideUUID];
          [v92 updateLiveVideoSourceUsage];
        }

        v89 = [v88 countByEnumeratingWithState:&v146 objects:v195 count:16];
      }

      while (v89);
    }

    v144 = 0u;
    v145 = 0u;
    v142 = 0u;
    v143 = 0u;
    v93 = [v125 templateSlides];
    v94 = [v93 countByEnumeratingWithState:&v142 objects:v194 count:16];
    if (v94)
    {
      v95 = *v143;
      do
      {
        for (i2 = 0; i2 != v94; ++i2)
        {
          if (*v143 != v95)
          {
            objc_enumerationMutation(v93);
          }

          v97 = *(*(&v142 + 1) + 8 * i2);
          [v97 willModifyForUpgrade];
          [v97 updateTemplateSlideUUID];
          [v97 updateLiveVideoSourceUsage];
        }

        v94 = [v93 countByEnumeratingWithState:&v142 objects:v194 count:16];
      }

      while (v94);
    }
  }
}

uint64_t sub_275D5D8C0(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) objectForKey:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 BOOLValue];
    goto LABEL_19;
  }

  if (!v3)
  {
LABEL_18:
    v6 = 0;
    goto LABEL_19;
  }

  v7 = [v3 stylesheet];
  v8 = *(a1 + 40);

  if (v7 != v8)
  {
    v9 = *(a1 + 32);
    goto LABEL_7;
  }

  WeakRetained = objc_loadWeakRetained((*(*(a1 + 48) + 8) + 40));
  v11 = [v3 parent];
  v12 = WeakRetained[2](WeakRetained, v11);

  v9 = *(a1 + 32);
  if (!v12)
  {
    [v9 setObject:MEMORY[0x277CBEC38] forKey:v3];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v13 = [v3 referencedStyles];
    v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v14)
    {
      v15 = *v21;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v20 + 1) + 8 * i);
          v18 = objc_loadWeakRetained((*(*(a1 + 48) + 8) + 40));
          LODWORD(v17) = v18[2](v18, v17);

          if (v17)
          {
            [*(a1 + 32) setObject:MEMORY[0x277CBEC38] forKey:v3];

            goto LABEL_8;
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    [*(a1 + 32) setObject:MEMORY[0x277CBEC28] forKey:v3];
    goto LABEL_18;
  }

LABEL_7:
  [v9 setObject:MEMORY[0x277CBEC38] forKey:v3];
LABEL_8:
  v6 = 1;
LABEL_19:

  return v6;
}

void sub_275D5DB60(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 referencedStyles];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_275D5DCFC;
  v9[3] = &unk_27A697CD8;
  v10 = *(a1 + 40);
  v5 = [v4 objectsPassingTest:v9];

  if ([v5 count])
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_275D5DD0C;
    v6[3] = &unk_27A697D00;
    v7 = v5;
    v8 = *(a1 + 32);
    [v3 replaceReferencedStylesUsingBlock:v6];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

id sub_275D5DD0C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if ([*(a1 + 32) containsObject:v3])
  {
    v4 = [*(a1 + 40) mappedStyleForStyle:v3];
  }

  return v4;
}

void *sub_275D5E550(uint64_t a1, void *a2, uint64_t a3)
{
  [*(a1 + 32) setObject:a2 forKeyedSubscript:{objc_msgSend(a2, "objectUUID")}];
  result = [*(*(a1 + 40) + 96) objectAtIndexedSubscript:a3];
  if (result)
  {
    v7 = result;
    result = [result isEqualToString:&stru_2884D8E20];
    if ((result & 1) == 0)
    {
      v8 = *(a1 + 48);

      return [v8 setObject:a2 forKeyedSubscript:v7];
    }
  }

  return result;
}

void *sub_275D5E5F8(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (!result)
  {
    v5 = [*(a1 + 40) childInfos];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_275D5E68C;
    v6[3] = &unk_27A697DA0;
    v6[4] = a2;
    return [v5 tsu_firstObjectPassingTest:v6];
  }

  return result;
}

uint64_t sub_275D5E68C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectUUID];

  return [v2 isEqual:v3];
}

id sub_275D5EC10(uint64_t a1, void *a2)
{
  result = a2;
  *(*(a1 + 32) + 64) = result;
  return result;
}

id sub_275D5EC44(uint64_t a1, void *a2)
{
  result = a2;
  *(*(a1 + 32) + 88) = result;
  return result;
}

void *sub_275D5EFD8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_275D5F01C(a1, 0);
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

uint64_t sub_275D5F01C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E59D80(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 24, sub_275D5F0A4);
}

void sub_275D5F0A4(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void sub_275D60E60(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  v3 = TSUDynamicCast();
  v4 = v3;
  if (v3 && [v3 isPlaceholder])
  {
    [*(a1 + 32) addObject:v5];
  }
}

void sub_275D60FAC(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    v3 = TSUDynamicCast();
    v4 = v3;
    if (v3)
    {
      if ([v3 isPlaceholder])
      {
LABEL_5:

        goto LABEL_6;
      }
    }

    else if ([*(a1 + 40) hasTagForInfo:v5])
    {
      goto LABEL_5;
    }

    [*(a1 + 32) addObject:v5];
    goto LABEL_5;
  }

LABEL_6:
}

void sub_275D61340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275D61358(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 slide];
  if (v6 != a1[4])
  {
    v8 = v6;
    v7 = [v6 style];
    if ([v7 isRelatedTo:a1[5]])
    {
      *(*(a1[6] + 8) + 24) = 1;
      *a4 = 0;
    }

    v6 = v8;
  }
}

void sub_275D61AC4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) appendString:@"\n"];
  }

  [*(a1 + 32) appendString:v5];
}

void sub_275D61B2C(uint64_t a1, void *a2, unint64_t a3)
{
  v12 = a2;
  if (a3)
  {
    [*(a1 + 32) unarchiverAppendParagraphBreak:10];
  }

  [*(a1 + 32) insertString:v12 atCharIndex:objc_msgSend(*(a1 + 32) undoTransaction:{"length"), 0}];
  [*(a1 + 32) setParagraphLevel:a3 atParIndex:a3 undoTransaction:0];
  v5 = [*(a1 + 40) count];
  v6 = *(a1 + 40);
  if (v5 <= a3)
  {
    [v6 lastObject];
  }

  else
  {
    [v6 objectAtIndexedSubscript:a3];
  }
  v7 = ;
  [*(a1 + 32) setParagraphStyle:v7 atParIndex:a3 undoTransaction:0];
  v8 = *(a1 + 48);
  if (v8)
  {
    v9 = [v8 count];
    v10 = *(a1 + 48);
    if (v9 <= a3)
    {
      [v10 lastObject];
    }

    else
    {
      [v10 objectAtIndexedSubscript:a3];
    }
    v11 = ;
    [*(a1 + 32) setListStyle:v11 atParIndex:a3 undoTransaction:0];
  }
}

uint64_t sub_275D627F0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4 && (v5 = [a1 count], v5 == objc_msgSend(v4, "count")))
  {
    if ([a1 count])
    {
      v6 = 0;
      do
      {
        v7 = [a1 objectAtIndexedSubscript:v6];
        v8 = [v4 objectAtIndexedSubscript:v6];
        v9 = [v7 isEquivalentForCrossDocumentPasteMasterComparison:v8];

        if ((v9 & 1) == 0)
        {
          break;
        }

        ++v6;
      }

      while (v6 < [a1 count]);
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_275D62E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275D62EA0(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a3;
  v9 = a2;
  v10 = [v7 placeholdersForTags];
  v11 = [v10 objectForKeyedSubscript:v9];

  LOBYTE(v9) = [v8 isEquivalentForCrossDocumentPasteMasterComparison:v11];
  if ((v9 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

uint64_t sub_275D62F5C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();
  if (v5)
  {
    v6 = [a1 propertyMap];
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 1;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_275D630A0;
    v10[3] = &unk_27A697F58;
    v7 = v6;
    v11 = v7;
    v12 = v5;
    v13 = a1;
    v14 = &v15;
    [v7 enumeratePropertiesAndObjectsUsingBlock:v10];
    v8 = *(v16 + 24);

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void sub_275D63088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275D630A0(uint64_t a1, uint64_t a2, int a3, void *a4, _BYTE *a5)
{
  v25 = a4;
  if (a3 != 2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_14;
    }

    v16 = [*(a1 + 40) boxedObjectForProperty:a2];
    objc_opt_class();
    v17 = TSUDynamicCast();
    objc_opt_class();
    v18 = TSUDynamicCast();
    v19 = v18;
    if (v17 && v18)
    {
      if (([v17 isEqualWithTolerance:v18] & 1) == 0)
      {
        v20 = 1090;
LABEL_12:
        v21 = MEMORY[0x277CCACA8];
        v22 = String();
        v23 = [v21 stringWithFormat:@"property %d(%@) of style %@", a2, v22, *(a1 + 48)];

        v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlide.m"];
        [KNTemplateSlide templatesNotEquivalentWithFile:v24 lineNumber:v20 reason:v23];

        *(*(*(a1 + 56) + 8) + 24) = 0;
        *a5 = 1;
      }
    }

    else if (([v25 isEquivalentForCrossDocumentPasteMasterComparison:v16] & 1) == 0)
    {
      v20 = 1095;
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  [*(a1 + 32) floatValueForProperty:a2];
  v10 = v9;
  [*(a1 + 40) floatValueForProperty:a2];
  if (v10 != v11 && vabdd_f64(v10, v11) >= fabs(v11 * 0.000000999999997))
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = String();
    v14 = [v12 stringWithFormat:@"property %d(%@) of style %@", a2, v13, *(a1 + 48)];

    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlide.m"];
    [KNTemplateSlide templatesNotEquivalentWithFile:v15 lineNumber:1073 reason:v14];

    *(*(*(a1 + 56) + 8) + 24) = 0;
    *a5 = 1;
  }

LABEL_14:
}

uint64_t sub_275D633D0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = [a1 caption];

  if (!v6)
  {
    v12 = [v5 caption];

    if (v12)
    {
      v10 = @"caption 2";
      v11 = 1134;
      goto LABEL_12;
    }

LABEL_7:
    v13 = [a1 title];

    if (v13)
    {
      v14 = [a1 title];
      v15 = [v5 title];
      v16 = [v14 isEquivalentForCrossDocumentPasteMasterComparison:v15];

      if ((v16 & 1) == 0)
      {
        v10 = @"title";
        v11 = 1141;
        goto LABEL_12;
      }
    }

    else
    {
      v17 = [v5 title];

      if (v17)
      {
        v10 = @"title 2";
        v11 = 1145;
        goto LABEL_12;
      }
    }

    v20 = 1;
    goto LABEL_14;
  }

  v7 = [a1 caption];
  v8 = [v5 caption];
  v9 = [v7 isEquivalentForCrossDocumentPasteMasterComparison:v8];

  if (v9)
  {
    goto LABEL_7;
  }

  v10 = @"caption";
  v11 = 1130;
LABEL_12:
  v18 = [MEMORY[0x277CCACA8] stringWithFormat:v10];
  v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlide.m"];
  [KNTemplateSlide templatesNotEquivalentWithFile:v19 lineNumber:v11 reason:v18];

LABEL_13:
  v20 = 0;
LABEL_14:

  return v20;
}

uint64_t sub_275D635A8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [a1 geometry];
  v7 = [v5 geometry];
  v8 = [v6 isEqual:v7];

  if ((v8 & 1) == 0)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"info geometry"];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlide.m"];
    [KNTemplateSlide templatesNotEquivalentWithFile:v13 lineNumber:1163 reason:v12];

    goto LABEL_6;
  }

  v15.receiver = a1;
  v15.super_class = TSDStyledInfo_0;
  if (!objc_msgSendSuper2(&v15, sel_isEquivalentForCrossDocumentPasteMasterComparison_, v5))
  {
LABEL_6:
    v11 = 0;
    goto LABEL_7;
  }

  v9 = [a1 style];
  v10 = [v5 style];
  v11 = [v9 isEquivalentForCrossDocumentPasteMasterComparison:v10];

LABEL_7:
  return v11;
}

uint64_t sub_275D63710(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [a1 geometry];
  v7 = [v5 geometry];
  if (v6 | v7)
  {
    v8 = v7;
    v9 = [v6 isEqual:v7];

    if (!v9)
    {
      v15 = @"maskInfo geometry";
      v16 = 1181;
LABEL_9:
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:v15];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlide.m"];
      [KNTemplateSlide templatesNotEquivalentWithFile:v18 lineNumber:v16 reason:v17];

LABEL_10:
      v14 = 0;
      goto LABEL_11;
    }
  }

  v10 = [a1 pathSource];
  v11 = [v5 pathSource];
  if (v10 | v11)
  {
    v12 = v11;
    v13 = [v10 isEqual:v11];

    if ((v13 & 1) == 0)
    {
      v15 = @"maskInfo pathSource";
      v16 = 1185;
      goto LABEL_9;
    }
  }

  v14 = 1;
LABEL_11:

  return v14;
}

uint64_t sub_275D63878(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  objc_opt_class();
  v6 = TSUDynamicCast();

  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = [a1 maskInfo];
  if (v7 || ([v6 maskInfo], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = [a1 maskInfo];
    v9 = [v6 maskInfo];
    v10 = [v8 isEquivalentForCrossDocumentPasteMasterComparison:v9];

    if (v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = 1;
  }

LABEL_8:
  v16.receiver = a1;
  v16.super_class = &off_2885322B8;
  if (!objc_msgSendSuper2(&v16, sel_isEquivalentForCrossDocumentPasteMasterComparison_, v6))
  {
LABEL_13:
    v10 = 0;
    goto LABEL_16;
  }

  v11 = [a1 imageData];
  v12 = [v6 imageData];
  if ([v11 isEqual:v12])
  {
    v13 = [a1 instantAlphaPath];
    v14 = [v6 instantAlphaPath];
    if (v13 | v14)
    {
      v10 = [v13 isEqual:v14] & v10;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_16:
  return v10;
}

uint64_t sub_275D63A10(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (v5 && (v10.receiver = a1, v10.super_class = &off_288532D70, objc_msgSendSuper2(&v10, sel_isEquivalentForCrossDocumentPasteMasterComparison_, v5)))
  {
    v6 = [a1 movieData];
    v7 = [v5 movieData];
    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_275D63ADC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (v5 && (v14.receiver = a1, v14.super_class = TSDShapeInfo_0, objc_msgSendSuper2(&v14, sel_isEquivalentForCrossDocumentPasteMasterComparison_, v5)))
  {
    v6 = [a1 pathSource];
    v7 = [v5 pathSource];
    if (v6 | v7 && ![v6 isEqual:v7])
    {
      v12 = 0;
    }

    else
    {
      v8 = [a1 headLineEnd];
      v9 = [v5 headLineEnd];
      if (v8 | v9 && ![v8 isEqual:v9])
      {
        v12 = 0;
      }

      else
      {
        v10 = [a1 tailLineEnd];
        v11 = [v5 tailLineEnd];
        if (v10 | v11)
        {
          v12 = [v10 isEqual:v11];
        }

        else
        {
          v12 = 1;
        }
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t sub_275D63C58(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (v5)
  {
    v6 = [a1 range];
    v8 = v7;
    v9 = [v5 range];
    if (![a1 compareRange:v6 otherStorage:v8 otherRange:v5 options:v9 objectComparisonBlock:{v10, 0, &unk_2884D4CF0}])
    {
      v13 = 1;
      goto LABEL_6;
    }

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"text storage equivalence"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlide.m"];
    [KNTemplateSlide templatesNotEquivalentWithFile:v12 lineNumber:1257 reason:v11];
  }

  v13 = 0;
LABEL_6:

  return v13;
}

uint64_t sub_275D63D74(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (v5 && (v10.receiver = a1, v10.super_class = TSWPShapeInfo_0, objc_msgSendSuper2(&v10, sel_isEquivalentForCrossDocumentPasteMasterComparison_, v5)))
  {
    v6 = [a1 textStorage];
    v7 = [v5 textStorage];
    v8 = [v6 isEquivalentForCrossDocumentPasteMasterComparison:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id sub_275D63E40(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (v5)
  {
    v6 = [a1 geometry];
    v7 = [v5 geometry];
    if ([v6 isEqual:v7])
    {
      v8 = [a1 childInfos];
      v9 = [v5 childInfos];
      if ([v8 kn_isEquivalentForCrossDocumentPasteMasterComparison:v9])
      {
        v12.receiver = a1;
        v12.super_class = &off_288534B38;
        v10 = objc_msgSendSuper2(&v12, sel_isEquivalentForCrossDocumentPasteMasterComparison_, v5);
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id sub_275D63F5C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([a1 isEquivalentForCrossDocumentPasteMasterComparison:v4 objectComparisonBlock:&unk_2884D4D10])
  {
    v9.receiver = a1;
    v9.super_class = &off_28853D210;
    v5 = objc_msgSendSuper2(&v9, sel_isEquivalentForCrossDocumentPasteMasterComparison_, v4);
  }

  else
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"table equivalence"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlide.m"];
    [KNTemplateSlide templatesNotEquivalentWithFile:v7 lineNumber:1300 reason:v6];

    v5 = 0;
  }

  return v5;
}

id sub_275D64040(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [a1 placement];
  v7 = [v5 placement];
  v8 = [v6 isEqual:v7];

  if ((v8 & 1) == 0)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"title placement"];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlide.m"];
    [KNTemplateSlide templatesNotEquivalentWithFile:v11 lineNumber:1318 reason:v10];

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v13.receiver = a1;
  v13.super_class = &off_28853D720;
  v9 = objc_msgSendSuper2(&v13, sel_isEquivalentForCrossDocumentPasteMasterComparison_, v5);
LABEL_6:

  return v9;
}

uint64_t sub_275D64178(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v11.receiver = a1;
  v11.super_class = &off_28853DB18;
  if (objc_msgSendSuper2(&v11, sel_isEquivalentForCrossDocumentPasteMasterComparison_, v4))
  {
    objc_opt_class();
    v5 = TSUDynamicCast();
    if (v5)
    {
      v6 = [a1 isAnchored];
      if (v6 == [v5 isAnchored])
      {
        v8 = [a1 drawable];
        v9 = [v5 drawable];
        v7 = [v8 isEquivalentForCrossDocumentPasteMasterComparison:v9];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_275D6482C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275D6486C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 slideIfLoaded];
  v7 = *(a1 + 32);

  if (v6 == v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void sub_275D64FDC(uint64_t a1)
{
  v151 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  v145 = a1;
  v2 = [*(a1 + 32) titlePlaceholder];
  v3 = TSUDynamicCast();

  v140 = v3;
  if (!v3 || *(v145 + 40))
  {
    [*(v145 + 32) willModifyForUpgrade];
    v4 = [*(v145 + 32) documentRoot];
    v5 = [v4 stylesheet];

    if (!v5)
    {
      v6 = MEMORY[0x277D81150];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNTemplateSlide(PersistenceAdditions) loadFromUnarchiver:]_block_invoke_4"];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlidePersistenceAdditions.mm"];
      [v6 handleFailureInFunction:v7 file:v8 lineNumber:237 isFatal:0 description:{"invalid nil value for '%{public}s'", "self.documentRoot.stylesheet"}];

      [MEMORY[0x277D81150] logBacktraceThrottled];
    }

    v142 = [*(v145 + 32) titlePlaceholder];
    v9 = *(v145 + 32);
    v10 = objc_opt_class();
    v11 = *(v145 + 48);
    v12 = [*(v145 + 32) documentRoot];
    v13 = [v12 stylesheet];
    v15 = *(v145 + 88);
    v14 = *(v145 + 96);
    if ([*(v145 + 40) count])
    {
      v16 = v145;
      v17 = *(v145 + 40);
    }

    else
    {
      v17 = 0;
      v16 = v145;
    }

    v18 = [*(v16 + 32) context];
    v19 = [v9 placeholderOfClass:v10 withGeometry:v11 stylesheet:v13 shapePresetIndex:v15 textPresetIndex:v14 layoutPropertyMap:v17 paragraphPropertyMap:0 listPropertyMap:0 context:v18];
    [*(v145 + 32) setTitlePlaceholder:v19];

    if (v142)
    {
      v20 = *(v145 + 32);
      v21 = [v20 titlePlaceholder];
      [v20 replaceChildInfo:v142 with:v21];
    }
  }

  objc_opt_class();
  v22 = [*(v145 + 32) bodyPlaceholder];
  v23 = TSUDynamicCast();

  v141 = v23;
  if (!v23 || *(v145 + 56))
  {
    [*(v145 + 32) willModifyForUpgrade];
    v24 = [*(v145 + 32) documentRoot];
    v25 = [v24 stylesheet];

    if (!v25)
    {
      v26 = MEMORY[0x277D81150];
      v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNTemplateSlide(PersistenceAdditions) loadFromUnarchiver:]_block_invoke_4"];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlidePersistenceAdditions.mm"];
      [v26 handleFailureInFunction:v27 file:v28 lineNumber:264 isFatal:0 description:{"invalid nil value for '%{public}s'", "self.documentRoot.stylesheet"}];

      [MEMORY[0x277D81150] logBacktraceThrottled];
    }

    v143 = [*(v145 + 32) bodyPlaceholder];
    v29 = *(v145 + 32);
    v30 = objc_opt_class();
    v31 = *(v145 + 64);
    v32 = [*(v145 + 32) documentRoot];
    v33 = [v32 stylesheet];
    v34 = *(v145 + 104);
    v35 = *(v145 + 112);
    if ([*(v145 + 56) count])
    {
      v36 = v145;
      v37 = *(v145 + 56);
    }

    else
    {
      v37 = 0;
      v36 = v145;
    }

    v38 = [*(v36 + 32) context];
    v39 = [v29 placeholderOfClass:v30 withGeometry:v31 stylesheet:v33 shapePresetIndex:v34 textPresetIndex:v35 layoutPropertyMap:v37 paragraphPropertyMap:0 listPropertyMap:0 context:v38];
    [*(v145 + 32) setBodyPlaceholder:v39];

    if (v143)
    {
      v40 = *(v145 + 32);
      v41 = [v40 bodyPlaceholder];
      [v40 replaceChildInfo:v143 with:v41];
    }
  }

  v42 = [*(v145 + 32) slideNumberPlaceholder];
  if (!v42 || (v43 = *(v145 + 72), v42, v43))
  {
    [*(v145 + 32) willModifyForUpgrade];
    v44 = [*(v145 + 32) documentRoot];
    v45 = [v44 stylesheet];

    if (!v45)
    {
      v46 = MEMORY[0x277D81150];
      v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNTemplateSlide(PersistenceAdditions) loadFromUnarchiver:]_block_invoke_4"];
      v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTemplateSlidePersistenceAdditions.mm"];
      [v46 handleFailureInFunction:v47 file:v48 lineNumber:290 isFatal:0 description:{"invalid nil value for '%{public}s'", "self.documentRoot.stylesheet"}];

      [MEMORY[0x277D81150] logBacktraceThrottled];
    }

    v144 = [*(v145 + 32) slideNumberPlaceholder];
    v49 = *(v145 + 32);
    v50 = objc_opt_class();
    v51 = *(v145 + 80);
    v52 = [*(v145 + 32) documentRoot];
    v53 = [v52 stylesheet];
    v54 = *(v145 + 120);
    v55 = *(v145 + 128);
    if ([*(v145 + 72) count])
    {
      v56 = v145;
      v57 = *(v145 + 72);
    }

    else
    {
      v57 = 0;
      v56 = v145;
    }

    v58 = [*(v56 + 32) context];
    v59 = [v49 placeholderOfClass:v50 withGeometry:v51 stylesheet:v53 shapePresetIndex:v54 textPresetIndex:v55 layoutPropertyMap:v57 paragraphPropertyMap:0 listPropertyMap:0 context:v58];
    [*(v145 + 32) setSlideNumberPlaceholder:v59];

    if (v144)
    {
      v60 = *(v145 + 32);
      v61 = [v60 slideNumberPlaceholder];
      [v60 replaceChildInfo:v144 with:v61];
    }
  }

  v62 = [*(v145 + 32) titlePlaceholder];
  v63 = [v62 geometry];

  v64 = [*(v145 + 32) bodyPlaceholder];
  v65 = [v64 geometry];

  if (!v63 || !v65)
  {
    [*(v145 + 32) willModifyForUpgrade];
    objc_opt_class();
    v66 = [*(v145 + 32) documentRoot];
    v67 = TSUDynamicCast();

    v68 = [v67 show];
    [v68 size];

    v69 = [*(v145 + 32) titlePlaceholder];
    v70 = [v69 geometry];

    if (!v70)
    {
      v71 = objc_alloc(MEMORY[0x277D802E8]);
      TSURoundedRect();
      v73 = v72;
      v75 = v74;
      v76 = [v71 initWithPosition:? size:?];
      v77 = [*(v145 + 32) titlePlaceholder];
      [v77 setGeometry:v76];

      v78 = [objc_alloc(MEMORY[0x277D801C8]) initWithNaturalSize:{v73, v75}];
      v79 = [*(v145 + 32) titlePlaceholder];
      [v79 setPathSource:v78];
    }

    v80 = [*(v145 + 32) bodyPlaceholder];
    v81 = [v80 geometry];

    if (!v81)
    {
      v82 = objc_alloc(MEMORY[0x277D802E8]);
      TSURoundedRect();
      v84 = v83;
      v86 = v85;
      v87 = [v82 initWithPosition:? size:?];
      v88 = [*(v145 + 32) bodyPlaceholder];
      [v88 setGeometry:v87];

      v89 = [objc_alloc(MEMORY[0x277D801C8]) initWithNaturalSize:{v84, v86}];
      v90 = [*(v145 + 32) bodyPlaceholder];
      [v90 setPathSource:v89];
    }
  }

  v91 = v145;
  if (*(v145 + 136) <= 0x774114A0FuLL)
  {
    v92 = [*(v145 + 32) placeholdersForTags];
    v93 = [v92 count];

    v91 = v145;
    if (!v93)
    {
      v148 = 0u;
      v149 = 0u;
      v146 = 0u;
      v147 = 0u;
      v94 = [*(v145 + 32) imagePlaceholders];
      v95 = [v94 countByEnumeratingWithState:&v146 objects:v150 count:16];
      if (v95)
      {
        v96 = 0;
        v97 = *v147;
        do
        {
          for (i = 0; i != v95; ++i)
          {
            if (*v147 != v97)
            {
              objc_enumerationMutation(v94);
            }

            v99 = *(*(&v146 + 1) + 8 * i);
            if (v96)
            {
              v100 = [MEMORY[0x277CCACA8] stringWithFormat:@"Media-%ld", v96];
            }

            else
            {
              v100 = @"Media";
            }

            [*(v145 + 32) setInfo:v99 forSageTag:v100];

            ++v96;
          }

          v95 = [v94 countByEnumeratingWithState:&v146 objects:v150 count:16];
        }

        while (v95);
      }

      v91 = v145;
    }
  }

  if (*(v91 + 152) != 1)
  {
    goto LABEL_60;
  }

  v101 = [*(v91 + 32) thumbnailTextForTitlePlaceholder];
  if (v101)
  {
    goto LABEL_55;
  }

  v102 = [*(v145 + 32) titlePlaceholder];
  v103 = [v102 textStorage];
  v104 = [v103 length] == 0;

  if (!v104)
  {
    v101 = [*(v145 + 32) titlePlaceholder];
    v105 = [v101 textStorage];
    v106 = [v105 string];
    [*(v145 + 32) setThumbnailTextForTitlePlaceholder:v106];

LABEL_55:
  }

  v107 = [*(v145 + 32) thumbnailTextForBodyPlaceholder];
  if (v107)
  {
LABEL_59:

    v91 = v145;
    goto LABEL_60;
  }

  v108 = [*(v145 + 32) bodyPlaceholder];
  v109 = [v108 textStorage];
  v110 = [v109 length] == 0;

  v91 = v145;
  if (!v110)
  {
    v107 = [*(v145 + 32) bodyPlaceholder];
    v111 = [v107 textStorage];
    v112 = [v111 string];
    [*(v145 + 32) setThumbnailTextForBodyPlaceholder:v112];

    goto LABEL_59;
  }

LABEL_60:
  if (*(v91 + 144) < *MEMORY[0x277D80960])
  {
    v113 = [*(v91 + 32) hasBug16580905];
    v91 = v145;
    if (v113)
    {
      [*(v145 + 32) willModifyForUpgrade];
      v114 = [*(v145 + 32) owningDocument];
      v115 = [v114 show];
      v116 = [v115 theme];

      v117 = [MEMORY[0x277D805F0] pastingContext];
      v118 = objc_alloc(MEMORY[0x277D7FFD0]);
      v119 = [v114 stylesheet];
      v120 = [v118 initWithTargetStylesheet:v119];

      [v120 setClientsMustRemap:1];
      v121 = *(v145 + 32);
      v122 = [v114 stylesheet];
      [v121 adoptStylesheet:v122 withMapper:v120];

      v123 = [KNSlideNode alloc];
      v124 = [*(v145 + 32) context];
      v125 = [(KNSlideNode *)v123 initWithContext:v124];

      [(KNSlideNode *)v125 setSlide:*(v145 + 32)];
      [*(v145 + 32) setSlideNode:v125];
      [*(v145 + 32) willBeRemovedFromDocumentRoot:v114];
      [*(v145 + 32) wasRemovedFromDocumentRoot:v114];
      [v116 addTemplateSlideNode:v125 dolcContext:v117];

      v91 = v145;
    }
  }

  if (![*(*(v91 + 32) + 264) count])
  {
    v126 = [*(v145 + 32) bodyPlaceholder];
    v127 = objc_alloc(MEMORY[0x277CBEA60]);
    v128 = [v126 textStorage];
    v129 = [v128 paragraphStyleAtParIndex:0 effectiveRange:0];
    v130 = [v127 initWithObjects:{v129, 0}];
    v131 = *(v145 + 32);
    v132 = *(v131 + 264);
    *(v131 + 264) = v130;
  }

  if (![*(*(v145 + 32) + 272) count])
  {
    v133 = [*(v145 + 32) bodyPlaceholder];
    v134 = objc_alloc(MEMORY[0x277CBEA60]);
    v135 = [v133 textStorage];
    v136 = [v135 listStyleAtParIndex:0 effectiveRange:0];
    v137 = [v134 initWithObjects:{v136, 0}];
    v138 = *(v145 + 32);
    v139 = *(v138 + 272);
    *(v138 + 272) = v137;
  }

  [*(v145 + 32) updatePlaceholderText];
}

void sub_275D66404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_275D665A4(uint64_t a1)
{
  context = objc_autoreleasePoolPush();
  *&asbd.mSampleRate = xmmword_275E70938;
  *&asbd.mBytesPerPacket = unk_275E70948;
  *&asbd.mBitsPerChannel = 32;
  layout = *ymmword_275E70960;
  formatDescriptionOut = 0;
  v2 = *MEMORY[0x277CBECE8];
  CMAudioFormatDescriptionCreate(*MEMORY[0x277CBECE8], &asbd, 0x20uLL, &layout, 0, 0, 0, &formatDescriptionOut);
  blockBufferOut = 0;
  CMBlockBufferCreateWithMemoryBlock(v2, 0, 0x8000uLL, v2, 0, 0, 0x8000uLL, 1u, &blockBufferOut);
  dataPointerOut = 0;
  CMBlockBufferGetDataPointer(blockBufferOut, 0, 0, 0, &dataPointerOut);
  bzero(dataPointerOut, 0x8000uLL);
  v3 = objc_alloc(MEMORY[0x277CE6460]);
  v4 = [*(a1 + 32) generatedFileURL];
  v5 = [v3 initWithURL:v4 fileType:*MEMORY[0x277CE5DA8] error:0];

  v24 = objc_alloc(MEMORY[0x277CE6468]);
  v22 = MEMORY[0x277CBEAC0];
  v23 = *MEMORY[0x277CE5E48];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1633772320];
  v7 = *MEMORY[0x277CB8280];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:asbd.mSampleRate];
  v9 = *MEMORY[0x277CB82E0];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:2];
  v11 = *MEMORY[0x277CB82B0];
  v12 = [MEMORY[0x277CBEA90] dataWithBytes:&layout length:32];
  v13 = *MEMORY[0x277CB8250];
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:64000];
  v15 = [v22 dictionaryWithObjectsAndKeys:{v6, v7, v8, v9, v10, v11, v12, v13, v14, *MEMORY[0x277CB8268], 0}];
  v16 = [v24 initWithMediaType:v23 outputSettings:v15];

  [v5 addInput:v16];
  [v5 setShouldOptimizeForNetworkUse:1];
  [v5 startWriting];
  v36 = *MEMORY[0x277CC08F0];
  v25 = v36;
  v37 = *(MEMORY[0x277CC08F0] + 16);
  v17 = v37;
  [v5 startSessionAtSourceTime:&v36];
  memset(&v42, 0, sizeof(v42));
  CMTimeMakeWithSeconds(&v42, *(*(a1 + 32) + 8), asbd.mSampleRate);
  memset(&v41, 0, sizeof(v41));
  CMTimeMake(&v41, 4096, asbd.mSampleRate);
  *&v36 = 0;
  *(&v36 + 1) = &v36;
  v37 = 0x3810000000;
  v38 = &unk_275E9EF93;
  v39 = v25;
  v40 = v17;
  v18 = dispatch_queue_create("KNEmptyMovieFileGenerator audio writing", 0);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_275D669D4;
  v27[3] = &unk_27A698040;
  v19 = v16;
  v34 = v41;
  v28 = v19;
  v31 = &v36;
  v32 = blockBufferOut;
  v33 = formatDescriptionOut;
  v35 = v42;
  v20 = v5;
  v29 = v20;
  v30 = *(a1 + 40);
  [v19 requestMediaDataWhenReadyOnQueue:v18 usingBlock:v27];

  _Block_object_dispose(&v36, 8);
  objc_autoreleasePoolPop(context);
}

void sub_275D669BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275D669D4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) isReadyForMoreMediaData])
  {
    v3 = *MEMORY[0x277CBECE8];
    v11 = *MEMORY[0x277CC0898];
    v4 = *(MEMORY[0x277CC0898] + 16);
    while (1)
    {
      v5 = objc_autoreleasePoolPush();
      v20 = 0;
      *&sampleTimingArray.decodeTimeStamp.timescale = 0u;
      *&sampleTimingArray.presentationTimeStamp.epoch = 0u;
      *&sampleTimingArray.presentationTimeStamp.value = 0u;
      *&sampleTimingArray.duration.value = *(a1 + 80);
      sampleTimingArray.duration.epoch = *(a1 + 96);
      v6 = *(a1 + 64);
      v7 = *(*(a1 + 56) + 8);
      v8 = *(v7 + 32);
      sampleTimingArray.presentationTimeStamp.epoch = *(v7 + 48);
      *&sampleTimingArray.presentationTimeStamp.value = v8;
      *&sampleTimingArray.decodeTimeStamp.value = v11;
      sampleTimingArray.decodeTimeStamp.epoch = v4;
      sampleSizeArray = 8;
      CMSampleBufferCreate(v3, v6, 1u, 0, 0, *(a1 + 72), 4096, 1, &sampleTimingArray, 1, &sampleSizeArray, &v20);
      [*(a1 + 32) appendSampleBuffer:v20];
      CFRelease(v20);
      lhs = *(*(*(a1 + 56) + 8) + 32);
      rhs = *(a1 + 80);
      CMTimeAdd(&v17, &lhs, &rhs);
      *(*(*(a1 + 56) + 8) + 32) = v17;
      lhs = *(*(*(a1 + 56) + 8) + 32);
      rhs = *(a1 + 104);
      if ((CMTimeCompare(&lhs, &rhs) & 0x80000000) == 0)
      {
        break;
      }

      objc_autoreleasePoolPop(v5);
      if (([*(a1 + 32) isReadyForMoreMediaData] & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    [*(a1 + 32) markAsFinished];
    v9 = *(a1 + 40);
    lhs = *(a1 + 104);
    [v9 endSessionAtSourceTime:&lhs];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_275D66C38;
    v12[3] = &unk_27A698018;
    v14 = vextq_s8(*(a1 + 64), *(a1 + 64), 8uLL);
    v10 = *(a1 + 40);
    v13 = *(a1 + 48);
    [v10 finishWritingWithCompletionHandler:v12];

    objc_autoreleasePoolPop(v5);
  }

LABEL_7:
  objc_autoreleasePoolPop(v2);
}

void sub_275D66C38(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  CFRelease(*(a1 + 40));
  CFRelease(*(a1 + 48));
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_275D66CF0()
{
  v0 = [objc_alloc(MEMORY[0x277D80AC0]) initWithProperties:{4101, 4102, 4107, 4112, 4118, 4119, 4120, 4121, 4122, 4123, 4124, 4146, 4147, 4148, 4149, 4150, 4151, 4152, 4153, 4156, 4177, 4176, 4178, 4103, 4104, 4105, 4106, 4108, 4109, 4110, 4111, 4113, 4114, 4115, 4116, 4117, 4125, 4126, 4127, 4128, 4129, 4130, 4131, 4132, 4133, 4134, 4135, 4136, 4137, 4138, 4139, 4140, 4141, 4142, 4143, 4144, 4145, 4154, 4155, 4157, 4158}];
  v1 = qword_280A3BF60;
  qword_280A3BF60 = v0;

  if (!qword_280A3BF60)
  {
    v2 = MEMORY[0x277D81150];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[KNMotionBackgroundStyle properties]_block_invoke"];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNMotionBackgroundStyle.mm"];
    [v2 handleFailureInFunction:v3 file:v4 lineNumber:190 isFatal:0 description:{"invalid nil value for '%{public}s'", "properties"}];

    v5 = MEMORY[0x277D81150];

    [v5 logBacktraceThrottled];
  }
}

void sub_275D67124()
{
  v0 = objc_alloc_init(MEMORY[0x277D80AC0]);
  v1 = qword_280A3BF70;
  v5 = v0;
  qword_280A3BF70 = v0;

  if (!qword_280A3BF70)
  {
    v2 = MEMORY[0x277D81150];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[KNMotionBackgroundStyle propertiesAllowingNSNull]_block_invoke"];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNMotionBackgroundStyle.mm"];
    [v2 handleFailureInFunction:v3 file:v4 lineNumber:204 isFatal:0 description:{"invalid nil value for '%{public}s'", "s_nullProperties"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }
}

uint64_t sub_275D679EC(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = TSUDynamicCast();
  v5 = v4;
  if (v4)
  {
    v6 = [v4 valueForProperty:4101];
    v7 = [v6 isEqualToString:*(a1 + 32)];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_275D67CD0(uint64_t a1, uint64_t a2)
{
  v41[18] = *MEMORY[0x277D85DE8];
  v40[0] = @"motionBackground-0-motionBackgroundStyle";
  v39 = sub_275DC204C(a1);
  v38 = [v39 localizedStringForKey:@"Rainbow" value:&stru_2884D8E20 table:@"Keynote"];
  v41[0] = v38;
  v40[1] = @"motionBackground-1-motionBackgroundStyle";
  v37 = sub_275DC204C(v38);
  v36 = [v37 localizedStringForKey:@"Ocean Floor" value:&stru_2884D8E20 table:@"Keynote"];
  v41[1] = v36;
  v40[2] = @"motionBackground-2-motionBackgroundStyle";
  v35 = sub_275DC204C(v36);
  v34 = [v35 localizedStringForKey:@"Neptune" value:&stru_2884D8E20 table:@"Keynote"];
  v41[2] = v34;
  v40[3] = @"motionBackground-3-motionBackgroundStyle";
  v33 = sub_275DC204C(v34);
  v32 = [v33 localizedStringForKey:@"Snow Day" value:&stru_2884D8E20 table:@"Keynote"];
  v41[3] = v32;
  v40[4] = @"motionBackground-4-motionBackgroundStyle";
  v31 = sub_275DC204C(v32);
  v30 = [v31 localizedStringForKey:@"Neon Splash" value:&stru_2884D8E20 table:@"Keynote"];
  v41[4] = v30;
  v40[5] = @"motionBackground-5-motionBackgroundStyle";
  v29 = sub_275DC204C(v30);
  v28 = [v29 localizedStringForKey:@"Jade Cliffs" value:&stru_2884D8E20 table:@"Keynote"];
  v41[5] = v28;
  v40[6] = @"motionBackground-6-motionBackgroundStyle";
  v27 = sub_275DC204C(v28);
  v26 = [v27 localizedStringForKey:@"Stormy Seas" value:&stru_2884D8E20 table:@"Keynote"];
  v41[6] = v26;
  v40[7] = @"motionBackground-7-motionBackgroundStyle";
  v25 = sub_275DC204C(v26);
  v24 = [v25 localizedStringForKey:@"Poolside" value:&stru_2884D8E20 table:@"Keynote"];
  v41[7] = v24;
  v40[8] = @"motionBackground-8-motionBackgroundStyle";
  v23 = sub_275DC204C(v24);
  v22 = [v23 localizedStringForKey:@"Nebula" value:&stru_2884D8E20 table:@"Keynote"];
  v41[8] = v22;
  v40[9] = @"motionBackground-9-motionBackgroundStyle";
  v21 = sub_275DC204C(v22);
  v20 = [v21 localizedStringForKey:@"Black Smoke" value:&stru_2884D8E20 table:@"Keynote"];
  v41[9] = v20;
  v40[10] = @"motionBackground-10-motionBackgroundStyle";
  v19 = sub_275DC204C(v20);
  v18 = [v19 localizedStringForKey:@"Lime Juice" value:&stru_2884D8E20 table:@"Keynote"];
  v41[10] = v18;
  v40[11] = @"motionBackground-11-motionBackgroundStyle";
  v17 = sub_275DC204C(v18);
  v16 = [v17 localizedStringForKey:@"Solar Flare" value:&stru_2884D8E20 table:@"Keynote"];
  v41[11] = v16;
  v40[12] = @"motionBackground-12-motionBackgroundStyle";
  v15 = sub_275DC204C(v16);
  v14 = [v15 localizedStringForKey:@"Sunset Dunes" value:&stru_2884D8E20 table:@"Keynote"];
  v41[12] = v14;
  v40[13] = @"motionBackground-13-motionBackgroundStyle";
  v2 = sub_275DC204C(v14);
  v3 = [v2 localizedStringForKey:@"Morning Surf" value:&stru_2884D8E20 table:@"Keynote"];
  v41[13] = v3;
  v40[14] = @"motionBackground-14-motionBackgroundStyle";
  v4 = sub_275DC204C(v3);
  v5 = [v4 localizedStringForKey:@"Lava Lamp" value:&stru_2884D8E20 table:@"Keynote"];
  v41[14] = v5;
  v40[15] = @"motionBackground-15-motionBackgroundStyle";
  v6 = sub_275DC204C(v5);
  v7 = [v6 localizedStringForKey:@"Flamingo" value:&stru_2884D8E20 table:@"Keynote"];
  v41[15] = v7;
  v40[16] = @"motionBackground-16-motionBackgroundStyle";
  v8 = sub_275DC204C(v7);
  v9 = [v8 localizedStringForKey:@"Cool Breeze" value:&stru_2884D8E20 table:@"Keynote"];
  v41[16] = v9;
  v40[17] = @"motionBackground-17-motionBackgroundStyle";
  v10 = sub_275DC204C(v9);
  v11 = [v10 localizedStringForKey:@"Purple Vista" value:&stru_2884D8E20 table:@"Keynote"];
  v41[17] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:18];
  v13 = qword_280A3BF80;
  qword_280A3BF80 = v12;
}

void sub_275D685D4(uint64_t a1, uint64_t a2)
{
  v41[18] = *MEMORY[0x277D85DE8];
  v40[0] = @"motionBackground-0-motionBackgroundStyle";
  v39 = sub_275DC204C(a1);
  v38 = [v39 localizedStringForKey:@"Ambient diffused moving background that transitions through the colors of the rainbow" value:&stru_2884D8E20 table:@"Keynote"];
  v41[0] = v38;
  v40[1] = @"motionBackground-1-motionBackgroundStyle";
  v37 = sub_275DC204C(v38);
  v36 = [v37 localizedStringForKey:@"Black moving background with blue mountains" value:&stru_2884D8E20 table:@"Keynote"];
  v41[1] = v36;
  v40[2] = @"motionBackground-2-motionBackgroundStyle";
  v35 = sub_275DC204C(v36);
  v34 = [v35 localizedStringForKey:@"Ambient diffused moving background that transitions through blue and navy" value:&stru_2884D8E20 table:@"Keynote"];
  v41[2] = v34;
  v40[3] = @"motionBackground-3-motionBackgroundStyle";
  v33 = sub_275DC204C(v34);
  v32 = [v33 localizedStringForKey:@"Light blue moving background with white mountains" value:&stru_2884D8E20 table:@"Keynote"];
  v41[3] = v32;
  v40[4] = @"motionBackground-4-motionBackgroundStyle";
  v31 = sub_275DC204C(v32);
  v30 = [v31 localizedStringForKey:@"Ambient diffused moving background that transitions through pink and purple" value:&stru_2884D8E20 table:@"Keynote"];
  v41[4] = v30;
  v40[5] = @"motionBackground-5-motionBackgroundStyle";
  v29 = sub_275DC204C(v30);
  v28 = [v29 localizedStringForKey:@"Dark blue moving background with green and aqua mountains" value:&stru_2884D8E20 table:@"Keynote"];
  v41[5] = v28;
  v40[6] = @"motionBackground-6-motionBackgroundStyle";
  v27 = sub_275DC204C(v28);
  v26 = [v27 localizedStringForKey:@"Dark blue moving background with green waves" value:&stru_2884D8E20 table:@"Keynote"];
  v41[6] = v26;
  v40[7] = @"motionBackground-7-motionBackgroundStyle";
  v25 = sub_275DC204C(v26);
  v24 = [v25 localizedStringForKey:@"Ambient diffused moving background that transitions through aqua and blue" value:&stru_2884D8E20 table:@"Keynote"];
  v41[7] = v24;
  v40[8] = @"motionBackground-8-motionBackgroundStyle";
  v23 = sub_275DC204C(v24);
  v22 = [v23 localizedStringForKey:@"Black moving background with diffused purple mountains" value:&stru_2884D8E20 table:@"Keynote"];
  v41[8] = v22;
  v40[9] = @"motionBackground-9-motionBackgroundStyle";
  v21 = sub_275DC204C(v22);
  v20 = [v21 localizedStringForKey:@"Black moving background with gray landscape" value:&stru_2884D8E20 table:@"Keynote"];
  v41[9] = v20;
  v40[10] = @"motionBackground-10-motionBackgroundStyle";
  v19 = sub_275DC204C(v20);
  v18 = [v19 localizedStringForKey:@"Green moving background with light green blobs" value:&stru_2884D8E20 table:@"Keynote"];
  v41[10] = v18;
  v40[11] = @"motionBackground-11-motionBackgroundStyle";
  v17 = sub_275DC204C(v18);
  v16 = [v17 localizedStringForKey:@"Light orange moving background with orange waves" value:&stru_2884D8E20 table:@"Keynote"];
  v41[11] = v16;
  v40[12] = @"motionBackground-12-motionBackgroundStyle";
  v15 = sub_275DC204C(v16);
  v14 = [v15 localizedStringForKey:@"Purple moving background with orange mountains" value:&stru_2884D8E20 table:@"Keynote"];
  v41[12] = v14;
  v40[13] = @"motionBackground-13-motionBackgroundStyle";
  v2 = sub_275DC204C(v14);
  v3 = [v2 localizedStringForKey:@"Gray moving background with light gray waves" value:&stru_2884D8E20 table:@"Keynote"];
  v41[13] = v3;
  v40[14] = @"motionBackground-14-motionBackgroundStyle";
  v4 = sub_275DC204C(v3);
  v5 = [v4 localizedStringForKey:@"Orange moving background with pink blobs" value:&stru_2884D8E20 table:@"Keynote"];
  v41[14] = v5;
  v40[15] = @"motionBackground-15-motionBackgroundStyle";
  v6 = sub_275DC204C(v5);
  v7 = [v6 localizedStringForKey:@"Ambient diffused moving background that transitions through pink and peach" value:&stru_2884D8E20 table:@"Keynote"];
  v41[15] = v7;
  v40[16] = @"motionBackground-16-motionBackgroundStyle";
  v8 = sub_275DC204C(v7);
  v9 = [v8 localizedStringForKey:@"White moving background with multicolored waves" value:&stru_2884D8E20 table:@"Keynote"];
  v41[16] = v9;
  v40[17] = @"motionBackground-17-motionBackgroundStyle";
  v10 = sub_275DC204C(v9);
  v11 = [v10 localizedStringForKey:@"Purple moving background with dark purple mountains" value:&stru_2884D8E20 table:@"Keynote"];
  v41[17] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:18];
  v13 = qword_280A3BF90;
  qword_280A3BF90 = v12;
}

void sub_275D6DC90(uint64_t a1)
{
  if (*(a1 + 52) == 1 && *(a1 + 40) < *MEMORY[0x277D808B8])
  {
    v8 = [*(a1 + 32) pathSource];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      [*(a1 + 32) willModifyForUpgrade];
      v3 = [*(a1 + 32) pathSource];
      v9 = [v3 bezierPath];

      v4 = [objc_alloc(MEMORY[0x277D801C8]) initWithBezierPath:v9];
      [*(a1 + 32) setPathSource:v4];
    }
  }

  if (*(a1 + 48) == 4)
  {
    v10 = [*(a1 + 32) geometry];
    [v10 angle];
    v6 = v5;

    if (v6 != 0.0)
    {
      [*(a1 + 32) willModifyForUpgrade];
      v7 = [*(a1 + 32) geometry];
      v11 = [v7 mutableCopy];

      [v11 setAngle:0.0];
      [*(a1 + 32) setGeometry:v11];
    }
  }
}

id sub_275D6DF2C(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  *(v3 + 16) |= 1u;
  v4 = *(v3 + 24);
  if (!v4)
  {
    v5 = *(v3 + 8);
    if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    }

    v4 = MEMORY[0x277C8F0D0](v5);
    *(v3 + 24) = v4;
  }

  v6 = a1[4];
  v8.receiver = v2;
  v8.super_class = KNPlaceholderInfo;
  return objc_msgSendSuper2(&v8, sel_saveToArchive_archiver_, v4, v6);
}

void sub_275D6E830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_275D6E848(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isSlideNumberVisible];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

void sub_275D70124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) indexOfObjectIdenticalTo:a2];
  v6 = [*(a1 + 40) objectAtIndexedSubscript:a3];
  [*(a1 + 32) setObject:v6 atIndexedSubscript:v5];
}

void sub_275D73740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275D73780(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v8 = TSUDynamicCast();

  v4 = v8;
  if (v8)
  {
    v5 = [v8 url];
    v6 = [KNHyperlinkController uniqueIdentifierFromHyperlinkURL:v5];
    v7 = v6;
    if (v6 && [v6 isEqualToString:*(a1 + 32)])
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }

    v4 = v8;
  }
}

void sub_275D74EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_275D74EF4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_275D74F0C(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  objc_opt_class();
  v14 = TSUDynamicCast();

  v6 = v14;
  if (v14)
  {
    v7 = [v14 tableName];
    v8 = [v14 objectLocale];
    if ([v8 localizedCaseInsensitiveIsEqual:v7 toString:*(a1 + 32)])
    {
      v9 = *(*(a1 + 40) + 8);
      v10 = *(v9 + 40);
      if (!v10)
      {
        v11 = [v14 baseTableModel];
        v12 = *(*(a1 + 40) + 8);
        v13 = *(v12 + 40);
        *(v12 + 40) = v11;

        if (!a3)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }

      *(v9 + 40) = 0;

      if (a3)
      {
LABEL_5:
        *a3 = 1;
      }
    }

LABEL_6:

    v6 = v14;
  }
}

void sub_275D75144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275D7515C(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v11 = TSUDynamicCast();

  v4 = v11;
  if (v11)
  {
    v5 = [v11 tableName];
    if (![*(a1 + 32) length] || (v6 = *(a1 + 32), objc_msgSend(v11, "objectLocale"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "locale"), v8 = objc_claimAutoreleasedReturnValue(), LODWORD(v6) = objc_msgSend(v5, "tst_hasCaseInsensitivePrefix:withLocale:", v6, v8), v8, v7, v6))
    {
      v9 = *(*(*(a1 + 40) + 8) + 40);
      v10 = [v11 resolver];
      [v9 addObject:v10];
    }

    v4 = v11;
  }
}

void sub_275D75348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275D75360(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = v8;
  if (isKindOfClass)
  {
    v7 = [v8 tableName];
    if (![v7 caseInsensitiveCompare:*(a1 + 32)])
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      if (a3)
      {
        *a3 = 1;
      }
    }

    v6 = v8;
  }
}

void sub_275D768F4(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 64), a2);
  v4 = a2;
  [v4 addLoadObserver:*(a1 + 32) action:sel_didLoadSlide_];
}

void sub_275D76978(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_275D76A20;
  v6[3] = &unk_27A6982F8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [a2 enumerateObjectsUsingBlock:v6];
}

void sub_275D76A20(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  v5 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  [v5 CGSizeValue];
  v7 = v6;
  v9 = v8;

  v10 = [v12 data];
  v11 = [MEMORY[0x277D80828] null];

  if (v10 != v11)
  {
    [*(a1 + 40) addThumbnail:v10 atSize:{v7, v9}];
  }
}

void sub_275D76B0C(uint64_t a1, void *a2)
{
  v6 = [a2 data];
  if (v6)
  {
    v3 = [MEMORY[0x277D80828] null];

    if (v6 != v3)
    {
      v4 = [v6 needsDownload];
      v5 = *(a1 + 32);
      if (v4)
      {
        [v6 tsck_addDownloadObserver:v5 lockMode:2 options:2 completionHandler:&unk_2884D4DB0];
      }

      else
      {
        [MEMORY[0x277D801D0] naturalSizeForImageData:v6];
        [v5 addThumbnail:v6 atSize:?];
      }
    }
  }
}

void sub_275D76BE4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  [MEMORY[0x277D801D0] naturalSizeForImageData:v4];
  [v5 addThumbnail:v4 atSize:?];
}

void sub_275D76C68(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5 = 0;
  v3 = [v2 slideAndReturnError:&v5];
  v4 = v5;
  if (v3)
  {
    [*(a1 + 32) willModifyForUpgrade];
    *(*(a1 + 32) + 102) = [v3 isSlideNumberVisible];
  }

  else if (KNPersistenceLogCat_init_token != -1)
  {
    sub_275E5A0C8();
  }
}

void sub_275D76D20()
{
  v0 = TSULogCreateCategory();
  v1 = KNPersistenceLogCat_log_t;
  KNPersistenceLogCat_log_t = v0;
}

void sub_275D76D64(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5 = 0;
  v3 = [v2 slideAndReturnError:&v5];
  v4 = v5;
  if (v3)
  {
    [*(a1 + 32) willModifyForUpgrade];
    *(*(a1 + 32) + 152) = [v3 backgroundIsNoFillOrColorFillWithAlpha];
  }

  else if (KNPersistenceLogCat_init_token != -1)
  {
    sub_275E5A0F0();
  }
}

void sub_275D76E1C()
{
  v0 = TSULogCreateCategory();
  v1 = KNPersistenceLogCat_log_t;
  KNPersistenceLogCat_log_t = v0;
}

void sub_275D76E60(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 count])
  {
    [*(a1 + 32) willModifyForUpgrade];
    objc_storeStrong((*(a1 + 32) + 144), a2);
  }
}

void sub_275D7822C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27)
{
  _Block_object_dispose(&a22, 8);

  _Unwind_Resume(a1);
}

void sub_275D78290(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 224), a2);
  v4 = a2;
  [*(*(a1 + 32) + 224) setParentInfo:?];
}

void sub_275D78318(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [MEMORY[0x277CBEB58] setWithArray:?];
  v4 = *(a1 + 32);
  v5 = *(v4 + 232);
  *(v4 + 232) = v3;
}

uint64_t sub_275D783A0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_275D783C8(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) titlePlaceholder];

  if (!v2)
  {
    [*(a1 + 32) willModifyForUpgrade];
    v3 = [*(a1 + 32) defaultTitlePlaceholder];
    [*(a1 + 32) setTitlePlaceholder:v3];
  }

  v4 = [*(a1 + 32) bodyPlaceholder];

  if (!v4)
  {
    [*(a1 + 32) willModifyForUpgrade];
    v5 = [*(a1 + 32) defaultBodyPlaceholder];
    [*(a1 + 32) setBodyPlaceholder:v5];
  }

  v6 = [*(a1 + 32) slideNumberPlaceholder];

  if (!v6)
  {
    [*(a1 + 32) willModifyForUpgrade];
    v7 = [*(a1 + 32) defaultSlideNumberPlaceholder];
    [*(a1 + 32) setSlideNumberPlaceholder:v7];
  }

  if (*(a1 + 56))
  {
    [*(a1 + 32) willModifyForUpgrade];
    if (*(*(a1 + 32) + 232))
    {
      v8 = MEMORY[0x277D81150];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNSlide(PersistenceAdditions) loadFromArchive:unarchiver:]_block_invoke_2"];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlidePersistenceAdditions.mm"];
      [v8 handleFailureInFunction:v9 file:v10 lineNumber:112 isFatal:0 description:"Expected _infosUsingObjectPlaceholderGeometry to be nil at this point since we're upgrading a document."];

      [MEMORY[0x277D81150] logBacktraceThrottled];
    }

    if (*(*(*(a1 + 40) + 8) + 40))
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v12 = *(a1 + 32);
      v13 = *(v12 + 232);
      *(v12 + 232) = v11;

      [*(*(a1 + 32) + 232) addObject:*(*(*(a1 + 40) + 8) + 40)];
    }
  }

  v14 = *(a1 + 32);
  if (!v14[29])
  {
    v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v16 = *(a1 + 32);
    v17 = *(v16 + 232);
    *(v16 + 232) = v15;

    v14 = *(a1 + 32);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v18 = [v14 placeholdersForTags];
  v19 = [v18 allKeys];

  v20 = [v19 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v20)
  {
    v21 = *v31;
    v22 = MEMORY[0x277D81408];
    do
    {
      v23 = 0;
      do
      {
        if (*v31 != v21)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v30 + 1) + 8 * v23);
        v25 = [*(a1 + 32) templateSlide];
        v26 = [v25 infoForTag:v24];
        v27 = v26 == 0;

        if (v27)
        {
          v28 = [*(a1 + 32) infoForTag:v24];
          if (*v22 != -1)
          {
            sub_275E5A118();
          }

          [*(a1 + 32) removeTagForDrawable:v28];
        }

        ++v23;
      }

      while (v20 != v23);
      v20 = [v19 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v20);
  }

  if (*(a1 + 48) < *MEMORY[0x277D80960])
  {
    v29 = [*(a1 + 32) templateSlide];
    [v29 hasBug16580905];
  }
}

void sub_275D787C8()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_275D78C8C(uint64_t a1)
{
  if (*(a1 + 40) <= 0x51FF678F7uLL)
  {
    v2 = *(a1 + 32);
    if (!v2[28])
    {
      [v2 willModifyForUpgrade];
      v3 = [*(a1 + 32) context];
      v4 = [v3 documentRoot];

      v5 = [v4 theme];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = sub_275D78DC4;
      v7[3] = &unk_27A698458;
      v7[4] = *(a1 + 32);
      v6 = v4;
      v8 = v6;
      [v5 upgradeStylesWithBlock:v7];
    }
  }
}

void sub_275D78DC4(uint64_t a1, void *a2)
{
  v14 = a2;
  [v14 addDefaultPresenterNotesStylesIfAbsent];
  v3 = [v14 defaultPresenterNotesParagraphStyle];
  v4 = objc_alloc(MEMORY[0x277D80F28]);
  v5 = [*(a1 + 32) context];
  v6 = [*(a1 + 40) stylesheet];
  v7 = [v3 initialListStyle];
  v8 = [v4 initWithContext:v5 string:0 kind:4 stylesheet:v6 paragraphStyle:v3 listStyle:v7 section:0 columnStyle:0];

  v9 = [KNNoteInfo alloc];
  v10 = [*(a1 + 32) context];
  v11 = [(KNNoteInfo *)v9 initWithContext:v10 containedStorage:v8];
  v12 = *(a1 + 32);
  v13 = *(v12 + 224);
  *(v12 + 224) = v11;

  [*(*(a1 + 32) + 224) setParentInfo:?];
}

void *sub_275D7BCE4(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[35])
  {
    [result willModifyForUpgrade];
    v3 = objc_opt_class();
    v4 = [*(a1 + 32) context];
    v5 = [v3 i_makeArchivedMoviePosterImageDataWithContext:v4];
    v6 = *(a1 + 32);
    v7 = *(v6 + 280);
    *(v6 + 280) = v5;

    v8 = *(a1 + 32);
    v9 = v8[35];

    return [v8 didAddReferenceToData:v9];
  }

  return result;
}

id sub_275D7C454(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  *(v3 + 40) |= 4u;
  v4 = *(v3 + 64);
  if (!v4)
  {
    v5 = *(v3 + 8);
    if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    }

    v4 = MEMORY[0x277C8EF90](v5);
    *(v3 + 64) = v4;
  }

  v6 = a1[4];
  v8.receiver = v2;
  v8.super_class = KNLiveVideoInfo;
  return objc_msgSendSuper2(&v8, sel_saveToArchive_archiver_, v4, v6);
}

void sub_275D7C728(uint64_t a1)
{
  if (*(a1 + 40) <= 0x2CBCCA934uLL)
  {
    [*(a1 + 32) willModifyForUpgrade];
    v8 = [*(a1 + 32) textStorage];
    v2 = [KNSlideNumberAttachment alloc];
    v3 = [*(a1 + 32) context];
    v4 = [(TSWPNumberAttachment *)v2 initWithContext:v3];

    [v8 willModifyForUpgrade];
    v5 = [v8 range];
    [v8 insertAttachmentOrFootnote:v4 range:{v5, v6}];
  }

  [*(a1 + 32) willModifyForUpgrade];
  v7 = [*(a1 + 32) geometry];
  v9 = [v7 mutableCopy];

  [v9 size];
  [v9 setSize:?];
  [v9 setHeightValid:0];
  if (*(a1 + 40) <= 0x51FF64FF5uLL)
  {
    [v9 size];
    [v9 setSize:0.0];
    [v9 setWidthValid:0];
  }

  [*(a1 + 32) setGeometry:v9];
}

void sub_275D7C8CC(uint64_t a1)
{
  [*(a1 + 32) willModifyForUpgrade];
  v2 = [*(a1 + 32) geometry];
  v3 = [v2 mutableCopy];

  [v3 size];
  [v3 setSize:?];
  [v3 setHeightValid:0];
  [*(a1 + 32) setGeometry:v3];
}

void sub_275D7C97C(uint64_t a1)
{
  [*(a1 + 32) willModifyForUpgrade];
  v2 = MEMORY[0x277D80380];
  v4 = [*(a1 + 32) geometry];
  [v4 size];
  v3 = [v2 pathSourceForShapeType:0 naturalSize:?];
  [*(a1 + 32) setPathSource:v3];
}

uint64_t sub_275D7CD28(uint64_t a1)
{
  (*(*(*(a1 + 32) + 48) + 16))();
  dispatch_source_cancel(*(*(a1 + 32) + 56));
  result = *(*(a1 + 32) + 64);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_275D7D410()
{
  v0 = [objc_alloc(MEMORY[0x277D80AC0]) initWithProperties:{516, 4096, 0}];
  v1 = qword_280A3BFA8;
  qword_280A3BFA8 = v0;

  if (!qword_280A3BFA8)
  {
    v2 = MEMORY[0x277D81150];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[KNSlideStyle properties]_block_invoke"];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideStyle.mm"];
    [v2 handleFailureInFunction:v3 file:v4 lineNumber:55 isFatal:0 description:{"invalid nil value for '%{public}s'", "properties"}];

    v5 = MEMORY[0x277D81150];

    [v5 logBacktraceThrottled];
  }
}

void sub_275D7D568()
{
  v0 = [objc_alloc(MEMORY[0x277D80AC0]) initWithProperties:{516, 0}];
  v1 = qword_280A3BFB8;
  v5 = v0;
  qword_280A3BFB8 = v0;

  if (!qword_280A3BFB8)
  {
    v2 = MEMORY[0x277D81150];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[KNSlideStyle propertiesAllowingNSNull]_block_invoke"];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideStyle.mm"];
    [v2 handleFailureInFunction:v3 file:v4 lineNumber:69 isFatal:0 description:{"invalid nil value for '%{public}s'", "s_nullProperties"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }
}

void sub_275D7D974(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_275D7DE70(uint64_t a1)
{
  if ([*(a1 + 32) containsProperty:516])
  {
    v2 = [*(a1 + 32) objectForProperty:516];
    v3 = *(a1 + 48);
    v8 = v2;
    LODWORD(v3) = [v3 validateObjectValue:&v8 withClass:objc_opt_class() forProperty:516];
    v4 = v8;

    if (v3)
    {
      v5 = *(a1 + 56);
      *(v5 + 16) |= 1u;
      v6 = *(v5 + 24);
      if (!v6)
      {
        v7 = *(v5 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = MEMORY[0x277C8EF70](v7);
        *(v5 + 24) = v6;
      }

      [v4 saveToArchive:v6 archiver:*(a1 + 40)];
    }
  }
}

void sub_275D7E93C()
{
  v0 = objc_alloc(MEMORY[0x277D80AB8]);
  v1 = [MEMORY[0x277D80048] numberFormatWithFormatType:258 decimalPlaces:0 showThousandsSeparator:1];
  v5 = [v0 initWithPropertiesAndValues:{1349, 0, 1350, 0, 1271, 1, 1264, 1, 1287, 0, 1286, 0, 1239, 0x3FA999999999999ALL, 1481, 0, 1484, 1, 1433, v1, 1435, 4, 1431, 0, 1472, 0, 1474, 0, 0}];

  objc_storeStrong(&qword_280A3BFC8, v5);
  if (!qword_280A3BFC8)
  {
    v2 = MEMORY[0x277D81150];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAppPropertiesProvider appChartPropertyOverrides]_block_invoke"];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAppPropertiesProvider.m"];
    [v2 handleFailureInFunction:v3 file:v4 lineNumber:169 isFatal:0 description:{"invalid nil value for '%{public}s'", "sAppChartPropertyOverrides"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }
}

uint64_t sub_275D81FD0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 indexOfSlideNode:a2];
  v8 = [*(a1 + 32) indexOfSlideNode:v6];

  if (v7 < v8)
  {
    return -1;
  }

  else
  {
    return v7 > v8;
  }
}

void sub_275D829AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  _Block_object_dispose(&a27, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_275D82A0C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_275D82A34(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [objc_alloc(MEMORY[0x277CBEB40]) initWithArray:v6];
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  *(v4 + 16) = v3;

  [v6 makeObjectsPerformSelector:sel_setSlideTree_ withObject:*(a1 + 32)];
}

uint64_t sub_275D82AD0(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 40))
  {
    v1 = result;
    [*(result + 32) willModifyForUpgrade];
    v2 = *(*(*(v1 + 40) + 8) + 40);

    return MEMORY[0x2821F9670](v2, sel_addOldModelDescendantsToSlideTree_);
  }

  return result;
}

void sub_275D82E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_275D82E64(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_275D82E7C(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 144));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [*(a1 + 32) templateSlides];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v13 + 1) + 8 * v9) slide];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    v10 = [*(a1 + 32) p_findDefaultTemplateSlideWithoutLoadingSlides];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

double sub_275D856EC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [v5 center];
  [v6 center];
  TSUDistance();
  v8 = (*(a1 + 32) - v7) / *(a1 + 32) * 0.5 + 0.0;
  if ([v5 widthValid] && objc_msgSend(v6, "widthValid"))
  {
    [v5 size];
    v10 = v9;
    [v6 size];
    v12 = (v10 - v11) * 0.25;
    [v5 size];
    v14 = v13;
    [v6 size];
    v8 = v8 + v12 / fmax(v14, v15);
  }

  if ([v5 heightValid] && objc_msgSend(v6, "heightValid"))
  {
    [v5 size];
    v17 = v16;
    [v6 size];
    v19 = (v17 - v18) * 0.25;
    [v5 size];
    v21 = v20;
    [v6 size];
    v8 = v8 + v19 / fmax(v21, v22);
  }

  return v8;
}

BOOL sub_275D85838(uint64_t a1, void *a2)
{
  v2 = [a2 textStorage];
  v3 = [v2 listStyleAtParIndex:0 effectiveRange:0];

  v4 = [v3 effectiveTypeForLevel:0] != 0;
  return v4;
}

uint64_t sub_275D85C3C(uint64_t a1, void *a2)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v3 p_matchScoreForTemplateSlide:v5 toTemplateSlide:v4];
  LODWORD(v2) = [v5 isEquivalentForCrossDocumentPasteMasterComparison:*(v2 + 40)];

  if (v2)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_275D85F44(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 styleIdentifier];
  v6 = String();
  v7 = [v4 styleIdentifier];

  v8 = String();
  if (v6 < v8)
  {
    v9 = -1;
  }

  else
  {
    v9 = v6 > v8;
  }

  return v9;
}

void sub_275D85FC0(uint64_t a1, void *a2)
{
  v264[6] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB18];
  v244 = a2;
  v245 = [v2 array];
  v3 = objc_alloc(MEMORY[0x277D80AB8]);
  v4 = MEMORY[0x277D80278];
  v5 = [MEMORY[0x277D81180] colorWithRed:0.0171778519 green:0.953631818 blue:1.0692215 alpha:1.0];
  v264[0] = v5;
  v6 = [MEMORY[0x277D81180] colorWithRed:0.0329328626 green:1.07337511 blue:0.776418328 alpha:1.0];
  v264[1] = v6;
  v7 = [MEMORY[0x277D81180] colorWithRed:0.865645945 green:0.970207214 blue:0.187016323 alpha:1.0];
  v264[2] = v7;
  v8 = [MEMORY[0x277D81180] colorWithRed:1.06287956 green:0.740338981 blue:0.0960855409 alpha:1.0];
  v264[3] = v8;
  v9 = [MEMORY[0x277D81180] colorWithRed:1.15655303 green:0.122111596 blue:0.877481461 alpha:1.0];
  v264[4] = v9;
  v10 = [MEMORY[0x277D81180] colorWithRed:0.768655657 green:0.0957314074 blue:1.1493324 alpha:1.0];
  v264[5] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v264 count:6];
  v12 = [v4 evenlyDistributedLinearGradientWithColors:v11];
  v243 = [v3 initWithPropertiesAndValues:{4101, @"KNGradientLinearBase", 4107, v12, 4118, 0x4060000000000000, 4116, 0, 4125, 0x3FEB68D060000000, 4120, 0x3FEF249D60000000, 4121, 0x3FF8000000000000, 4124, 0x3FF8000000000000, 4192, 0x4040D9999999999ALL, 4167, 0x3FF6BA5E353F7CEELL, 4173, 0x4044C9520200604DLL, 4137, 0x3FE0000000000000, 0}];

  v13 = [KNMotionBackgroundStyle alloc];
  v14 = [*(a1 + 32) context];
  v242 = [(KNMotionBackgroundStyle *)v13 initWithContext:v14 name:@"Rainbow" overridePropertyMap:v243 isVariation:0];

  [v244 addStyle:v242 withIdentifier:@"motionBackground-0-motionBackgroundStyle"];
  [v245 addObject:v242];
  v15 = objc_alloc(MEMORY[0x277D80AB8]);
  v16 = MEMORY[0x277D80278];
  v17 = [MEMORY[0x277D81180] colorWithRed:0.049046088 green:0.049046088 blue:0.049046088 alpha:1.0];
  v263[0] = v17;
  v18 = [MEMORY[0x277D81180] colorWithRed:0.0527705923 green:0.0527705923 blue:0.222461507 alpha:1.0];
  v263[1] = v18;
  v19 = [MEMORY[0x277D81180] colorWithRed:0.0560052283 green:0.0560052283 blue:0.680407583 alpha:1.0];
  v263[2] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v263 count:3];
  v21 = [v16 evenlyDistributedLinearGradientWithColors:v20];
  v241 = [v15 initWithPropertiesAndValues:{4101, @"KNGradientTerrainBase", 4107, v21, 4118, 0x4058CD33A0000000, 4122, 0, 4119, 0x3FF0000000000000, 4120, 0x3FF0000000000000, 4123, 0, 4121, 0x3FF0000000000000, 4124, 0x3FF0000000000000, 4146, 0x400570A3D70A3D71, 4147, 0xC059000000000000, 4148, 0x4000000000000000, 4150, 0x401DFAE147AE147BLL, 4151, 0x401DFAE147AE147BLL, 4156, 0x401AAE147AE147AELL, 4162, 0x400780B6A0000000, 4195, 0x401D5A7080000000, 4116, 0, 4125, 0x3FF00505C0000000, 4133, 0x3FF4368BA0000000, 4134, 0x4017EF85E0000000, 4135, 0x3FF15FE180000000, 4190, 0x4041133333333333, 4166, 0x3FF009C200000000, 4175, 0x3FA3D0B400000000, 4176, 0x404A066666666666, 4180, 0, 4182, 16, 4152, 0x3FE0000000000000, 4153, 0x4000000000000000, 4137}];

  v22 = [KNMotionBackgroundStyle alloc];
  v23 = [*(a1 + 32) context];
  v240 = [(KNMotionBackgroundStyle *)v22 initWithContext:v23 name:@"Ocean Floor" overridePropertyMap:v241 isVariation:0];

  [v244 addStyle:v240 withIdentifier:@"motionBackground-1-motionBackgroundStyle"];
  [v245 addObject:v240];
  v24 = objc_alloc(MEMORY[0x277D80AB8]);
  v25 = MEMORY[0x277D80278];
  v26 = [MEMORY[0x277D81180] colorWithRed:0.000194204549 green:0.158831462 blue:0.651384592 alpha:1.0];
  v262[0] = v26;
  v27 = [MEMORY[0x277D81180] colorWithRed:0.00000465818812 green:0.367956161 blue:1.32507861 alpha:1.0];
  v262[1] = v27;
  v28 = [MEMORY[0x277D81180] colorWithRed:0.00794737693 green:0.00000427937221 blue:0.719858705 alpha:1.0];
  v262[2] = v28;
  v29 = [MEMORY[0x277D81180] colorWithRed:0.0000199353944 green:0.00443308149 blue:0.317127168 alpha:1.0];
  v262[3] = v29;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v262 count:4];
  v31 = [v25 evenlyDistributedLinearGradientWithColors:v30];
  v239 = [v24 initWithPropertiesAndValues:{4101, @"KNGradientDiffusionBase", 4107, v31, 4118, 0x40669C53AFFFFFFELL, 4122, 0, 4119, 0x3FF0000000000000, 4120, 0x3FF0000000000000, 4121, 0x3FF0000000000000, 4124, 0x3FF0000000000000, 4167, 0x3FF0000000000000, 4173, 0x404E800000000000, 4146, 0x4000000000000000, 4148, 0x4012333333333333, 4207, 3, 4149, 0x3FB999999999999ALL, 4156, 0x3FE231E89C000000, 0}];

  v32 = [KNMotionBackgroundStyle alloc];
  v33 = [*(a1 + 32) context];
  v238 = [(KNMotionBackgroundStyle *)v32 initWithContext:v33 name:@"Neptune" overridePropertyMap:v239 isVariation:0];

  [v244 addStyle:v238 withIdentifier:@"motionBackground-2-motionBackgroundStyle"];
  [v245 addObject:v238];
  v34 = objc_alloc(MEMORY[0x277D80AB8]);
  v35 = MEMORY[0x277D80278];
  v36 = [MEMORY[0x277D81180] colorWithRed:0.772300243 green:0.857222974 blue:0.947685062 alpha:1.0];
  v261[0] = v36;
  v37 = [MEMORY[0x277D81180] colorWithRed:0.810903847 green:0.898848414 blue:0.993541002 alpha:1.0];
  v261[1] = v37;
  v38 = [MEMORY[0x277D81180] colorWithRed:0.97643584 green:0.976442396 blue:0.976442396 alpha:1.0];
  v261[2] = v38;
  v39 = [MEMORY[0x277D81180] colorWithRed:0.979920387 green:0.927681446 blue:0.981947541 alpha:1.0];
  v261[3] = v39;
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v261 count:4];
  v41 = [v35 evenlyDistributedLinearGradientWithColors:v40];
  v237 = [v34 initWithPropertiesAndValues:{4101, @"KNGradientTerrainBase", 4107, v41, 4118, 0x405914E8FFFFFFFCLL, 4122, 0, 4119, 0x3FF0000000000000, 4120, 0x3FF0000000000000, 4123, 0, 4121, 0x3FF0000000000000, 4124, 0x3FF0000000000000, 4146, 0x4012FE425AEE6320, 4147, 0x40336BCBFFB00000, 4148, 0x4000000000000000, 4150, 0x3FF2CCCCCCCCCCCDLL, 4151, 0x3FF2CCCCCCCCCCCDLL, 4156, 0x403AAB851EB851ECLL, 4162, 0x403AECBCA0000000, 4195, 0x401D5A7080000000, 4116, 0x3F83CB29A0000000, 4125, 0x3FF3574EC0000000, 4133, 0x3FF5874500000000, 4134, 0x401AF1DE60000000, 4135, 0x3FEDC0FD40000000, 4137, 0x3FD22328A0000000, 4190, 0x3FE84C3EC0000000, 4166, 0x3FF009C200000001, 4175, 0x3FA3D0B400000000, 4176, 0x40492AED80000000, 4180, 0, 4182, 16, 4152, 0x3FE0000000000000, 4153}];

  v42 = [KNMotionBackgroundStyle alloc];
  v43 = [*(a1 + 32) context];
  v236 = [(KNMotionBackgroundStyle *)v42 initWithContext:v43 name:@"Snow Day" overridePropertyMap:v237 isVariation:0];

  [v244 addStyle:v236 withIdentifier:@"motionBackground-3-motionBackgroundStyle"];
  [v245 addObject:v236];
  v44 = objc_alloc(MEMORY[0x277D80AB8]);
  v45 = MEMORY[0x277D80278];
  v46 = [MEMORY[0x277D81180] colorWithRed:0.446791917 green:0.226384312 blue:0.993499338 alpha:1.0];
  v260[0] = v46;
  v47 = [MEMORY[0x277D81180] colorWithRed:1.13155365 green:0.322087973 blue:0.995109021 alpha:1.0];
  v260[1] = v47;
  v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v260 count:2];
  v49 = [v45 evenlyDistributedLinearGradientWithColors:v48];
  v235 = [v44 initWithPropertiesAndValues:{4101, @"KNGradientLinearBase", 4107, v49, 4118, 0x4060000000000000, 4116, 0, 4125, 0x3FF0000000000000, 4120, 0x3FE8000000000000, 4177, 0, 4121, 0x3FF8000000000000, 4124, 0x3FF8000000000000, 4192, 0x4060E00000000000, 4167, 0x4004000000000000, 4173, 0x404EBD70A3D70A3DLL, 4137, 0x3FE0000000000000, 0}];

  v50 = [KNMotionBackgroundStyle alloc];
  v51 = [*(a1 + 32) context];
  v234 = [(KNMotionBackgroundStyle *)v50 initWithContext:v51 name:@"Neon Splash" overridePropertyMap:v235 isVariation:0];

  [v244 addStyle:v234 withIdentifier:@"motionBackground-4-motionBackgroundStyle"];
  [v245 addObject:v234];
  v52 = objc_alloc(MEMORY[0x277D80AB8]);
  v53 = MEMORY[0x277D80278];
  v54 = [MEMORY[0x277D81180] colorWithRed:0.0369332023 green:0.0122549022 blue:0.262192398 alpha:1.0];
  v259[0] = v54;
  v55 = [MEMORY[0x277D81180] colorWithRed:0.141640306 green:0.995141327 blue:0.645448267 alpha:1.0];
  v259[1] = v55;
  v56 = [MEMORY[0x277D81180] colorWithRed:0.694874286 green:0.949148654 blue:1.18095016 alpha:1.0];
  v259[2] = v56;
  v57 = [MEMORY[0x277D81180] colorWithRed:0.049046088 green:0.049046088 blue:0.049046088 alpha:1.0];
  v259[3] = v57;
  v58 = [MEMORY[0x277CBEA60] arrayWithObjects:v259 count:4];
  v59 = [v53 evenlyDistributedLinearGradientWithColors:v58];
  v233 = [v52 initWithPropertiesAndValues:{4101, @"KNGradientTerrainFlyover", 4107, v59, 4118, 0x4058CD33A0000000, 4122, 0, 4119, 0x3FF0000000000000, 4120, 0x3FF0000000000000, 4123, 0, 4121, 0x3FF0000000000000, 4124, 0x3FF0000000000000, 4146, 0x4012836B8F9B1316, 4147, 0x4059000000000000, 4148, 0x4010000000000000, 4150, 0x4016000000000000, 4151, 0x4016000000000000, 4156, 0, 4162, 0x40314CC560000000, 4195, 0x401D5A7080000000, 4116, 0, 4125, 0x3FF00505C0000000, 4133, 0x3FEB8D4FE0000000, 4134, 0x401D000000000000, 4135, 0x3FF15FE180000000, 4137, 0x3FE4CCDAE0000000, 4190, 0x4059400000000000, 4166, 0x3FF009C200000000, 4175, 0x3FA3D0B400000000, 4176, 0x4043FD70A3D70A3DLL, 4180, 0, 4182, 20, 4152, 0x3FE0000000000000, 4153}];

  v60 = [KNMotionBackgroundStyle alloc];
  v61 = [*(a1 + 32) context];
  v232 = [(KNMotionBackgroundStyle *)v60 initWithContext:v61 name:@"Jade Cliffs" overridePropertyMap:v233 isVariation:0];

  [v244 addStyle:v232 withIdentifier:@"motionBackground-5-motionBackgroundStyle"];
  [v245 addObject:v232];
  v62 = objc_alloc(MEMORY[0x277D80AB8]);
  v63 = MEMORY[0x277D80278];
  v64 = [MEMORY[0x277D81180] colorWithRed:0.230470389 green:0.677356958 blue:0.615757406 alpha:1.0];
  v258[0] = v64;
  v65 = [MEMORY[0x277D81180] colorWithRed:0.164266706 green:0.249249399 blue:0.286720216 alpha:1.0];
  v258[1] = v65;
  v66 = [MEMORY[0x277D81180] colorWithRed:0.435294122 green:0.450980395 blue:0.494117647 alpha:1.0];
  v258[2] = v66;
  v67 = [MEMORY[0x277D81180] colorWithRed:0.53725493 green:0.627451003 blue:0.603921592 alpha:1.0];
  v258[3] = v67;
  v68 = [MEMORY[0x277CBEA60] arrayWithObjects:v258 count:4];
  v69 = [v63 evenlyDistributedLinearGradientWithColors:v68];
  v70 = [MEMORY[0x277D81180] colorWithRed:0.164266706 green:0.249249399 blue:0.286720216 alpha:1.0];
  v231 = [v62 initWithPropertiesAndValues:{4101, @"KNWavesBase", 4107, v69, 4108, v70, 4103, @"Hard Light", 4189, 0x3FE6848BEB5B2D4DLL, 4116, 0, 4125, 0x3FF1BB5260000000, 4188, 0x3FC5645680000000, 4135, 0x3FF0000000000000, 4137, 0x3FD7970CE0000000, 4190, 0x3FDD1E95C0000000, 4184, 1, 4158, 0x3FE398D640000000, 4159, 0x3FC43C45E0000000, 4166, 0x3FF4ECB0E0000000, 4183, 0, 4185, 0x3FEDF62B6AE7D567, 4173, 0x4046800000000000, 4127, 0x400C48CF40000000, 4167, 0x400F728E80000000, 4187, 0xBFE2BE2480000000, 4186, 0x3FE4364380000000, 0}];

  v71 = [KNMotionBackgroundStyle alloc];
  v72 = [*(a1 + 32) context];
  v230 = [(KNMotionBackgroundStyle *)v71 initWithContext:v72 name:@"Stormy Seas" overridePropertyMap:v231 isVariation:0];

  [v244 addStyle:v230 withIdentifier:@"motionBackground-6-motionBackgroundStyle"];
  [v245 addObject:v230];
  v73 = objc_alloc(MEMORY[0x277D80AB8]);
  v74 = MEMORY[0x277D80278];
  v75 = MEMORY[0x277D80280];
  v76 = [MEMORY[0x277D81180] colorWithRed:0.00046732201 green:0.63853234 blue:2.49315023 alpha:1.0];
  v77 = [v75 gradientStopWithColor:v76 fraction:0.0];
  v257[0] = v77;
  v78 = MEMORY[0x277D80280];
  v79 = [MEMORY[0x277D81180] colorWithRed:0.0350950137 green:1.84629607 blue:1.84625077 alpha:1.0];
  v80 = [v78 gradientStopWithColor:v79 fraction:0.834862];
  v257[1] = v80;
  v81 = MEMORY[0x277D80280];
  v82 = [MEMORY[0x277D81180] colorWithRed:0.000711828586 green:0.617635965 blue:1.75101733 alpha:1.0];
  v83 = [v81 gradientStopWithColor:v82 fraction:1.0];
  v257[2] = v83;
  v84 = [MEMORY[0x277CBEA60] arrayWithObjects:v257 count:3];
  v85 = [v74 linearGradientWithGradientStops:v84];
  v229 = [v73 initWithPropertiesAndValues:{4101, @"KNGradientDiffusionBase", 4107, v85, 4118, 0x4063A3D70A3D70A4, 4122, 0, 4119, 0x3FF0000000000000, 4120, 0x3FF0000000000000, 4121, 0x3FF0000000000000, 4124, 0x3FF0000000000000, 4167, 0x3FFFAE147AE147AELL, 4173, 0x404E800000000000, 4146, 0x4000000000000000, 4148, 0x4012CCCCCCCCCCCDLL, 4207, 3, 4149, 0x3FB1EB851EB851ECLL, 4156, 0x3FE231E89C000000, 0}];

  v86 = [KNMotionBackgroundStyle alloc];
  v87 = [*(a1 + 32) context];
  v228 = [(KNMotionBackgroundStyle *)v86 initWithContext:v87 name:@"Poolside" overridePropertyMap:v229 isVariation:0];

  [v244 addStyle:v228 withIdentifier:@"motionBackground-7-motionBackgroundStyle"];
  [v245 addObject:v228];
  v88 = objc_alloc(MEMORY[0x277D80AB8]);
  v89 = MEMORY[0x277D80278];
  v225 = [MEMORY[0x277D81180] colorWithRed:0.0215697698 green:0.036212191 blue:0.0266084224 alpha:1.0];
  v256[0] = v225;
  v90 = [MEMORY[0x277D81180] colorWithRed:1.42408955 green:0.110789873 blue:1.42408955 alpha:1.0];
  v256[1] = v90;
  v91 = [MEMORY[0x277D81180] colorWithRed:0.444156796 green:0.00737953744 blue:0.581361473 alpha:1.0];
  v256[2] = v91;
  v92 = [MEMORY[0x277D81180] colorWithRed:0.0165861789 green:0.0033961744 blue:0.371912181 alpha:1.0];
  v256[3] = v92;
  v93 = [MEMORY[0x277D81180] colorWithRed:0.0215697698 green:0.036212191 blue:0.0266084224 alpha:1.0];
  v256[4] = v93;
  v94 = [MEMORY[0x277CBEA60] arrayWithObjects:v256 count:5];
  v95 = [v89 evenlyDistributedLinearGradientWithColors:v94];
  v227 = [v88 initWithPropertiesAndValues:{4101, @"KNGradientTerrainBase", 4107, v95, 4118, 0x4058CD33A0000000, 4122, 0, 4119, 0x3FF40CA0C0000000, 4120, 0x3FF75606E0000000, 4123, 0, 4121, 0x3FF31889C0000000, 4124, 0x3FF0000000000000, 4146, 0x3FF6DB22D0E56042, 4147, 0x4059000000000000, 4148, 0x4008000000000000, 4150, 0x3FB820E8C0000000, 4151, 0x3FB820E8C0000000, 4162, 0x4025CC59E0000000, 4195, 0x400E724B40000000, 4116, 0, 4125, 0x3FF00505C0000000, 4133, 0x3FE5F81220000000, 4134, 0x4034000000000000, 4135, 0x3FF15FE180000000, 4190, 0x3FEA0EFAA0000000, 4166, 0x3FF009C200000000, 4175, 0x3FA3D0B400000000, 4176, 0x404FCF5A20000000, 4180, 0, 4182, 16, 4152, 0x3FE0000000000000, 4153, 0x4000000000000000, 4156, 0x3FE231E89C000000, 4137}];

  v96 = [KNMotionBackgroundStyle alloc];
  v97 = [*(a1 + 32) context];
  v226 = [(KNMotionBackgroundStyle *)v96 initWithContext:v97 name:@"Nebula" overridePropertyMap:v227 isVariation:0];

  [v244 addStyle:v226 withIdentifier:@"motionBackground-8-motionBackgroundStyle"];
  [v245 addObject:v226];
  v98 = objc_alloc(MEMORY[0x277D80AB8]);
  v99 = MEMORY[0x277D80278];
  v100 = [MEMORY[0x277D81180] colorWithRed:0.0559352264 green:0.0559352264 blue:0.0559352264 alpha:1.0];
  v255[0] = v100;
  v101 = [MEMORY[0x277D81180] colorWithRed:0.112279594 green:0.112280518 blue:0.112280019 alpha:1.0];
  v255[1] = v101;
  v102 = [MEMORY[0x277D81180] colorWithRed:0.181982964 green:0.181984901 blue:0.181983843 alpha:1.0];
  v255[2] = v102;
  v103 = [MEMORY[0x277D81180] colorWithRed:0.112279594 green:0.112280518 blue:0.112280019 alpha:1.0];
  v255[3] = v103;
  v104 = [MEMORY[0x277D81180] colorWithRed:0.0559352264 green:0.0559352264 blue:0.0559352264 alpha:1.0];
  v255[4] = v104;
  v105 = [MEMORY[0x277CBEA60] arrayWithObjects:v255 count:5];
  v106 = [v99 evenlyDistributedLinearGradientWithColors:v105];
  v224 = [v98 initWithPropertiesAndValues:{4101, @"KNGradientTerrainBase", 4107, v106, 4118, 0x4054A692E0000000, 4122, 0, 4119, 0x3FF0000000000000, 4120, 0x3FF0000000000000, 4123, 0, 4121, 0x3FF0000000000000, 4124, 0x3FF0000000000000, 4146, 0x4012FE425AEE6320, 4147, 0x40336BCBFFB00000, 4148, 0x4000000000000000, 4150, 0x3FF2CCCCCCCCCCCDLL, 4151, 0x3FF2CCCCCCCCCCCDLL, 4156, 0x401C449BA5E353F8, 4162, 0x403AECBCA0000000, 4195, 0x401D5A7080000000, 4116, 0, 4125, 0x3FF1727EE0000000, 4133, 0x3FF31A7480000000, 4134, 0x4015CAC1A0000000, 4135, 0x3FE6B47620000000, 4137, 0x3FDE351760000000, 4190, 0, 4166, 0x3FF009C200000000, 4175, 0x3FA3D0B400000000, 4176, 0x4043711E00000000, 4180, 0, 4182, 16, 4152, 0x3FE0000000000000, 4153}];

  v107 = [KNMotionBackgroundStyle alloc];
  v108 = [*(a1 + 32) context];
  v223 = [(KNMotionBackgroundStyle *)v107 initWithContext:v108 name:@"Black Smoke" overridePropertyMap:v224 isVariation:0];

  [v244 addStyle:v223 withIdentifier:@"motionBackground-9-motionBackgroundStyle"];
  [v245 addObject:v223];
  v109 = objc_alloc(MEMORY[0x277D80AB8]);
  v110 = MEMORY[0x277D80278];
  v111 = [MEMORY[0x277D81180] colorWithRed:0.221773937 green:0.493775129 blue:0.274629623 alpha:1.0];
  v254[0] = v111;
  v112 = [MEMORY[0x277D81180] colorWithRed:0.26312685 green:1.06772661 blue:0.0647380053 alpha:1.0];
  v254[1] = v112;
  v113 = [MEMORY[0x277D81180] colorWithRed:0.367542922 green:0.768351912 blue:0.603538454 alpha:1.0];
  v254[2] = v113;
  v114 = [MEMORY[0x277D81180] colorWithRed:0.32191357 green:0.600937724 blue:0.306578815 alpha:1.0];
  v254[3] = v114;
  v115 = [MEMORY[0x277D81180] colorWithRed:0.37398842 green:0.721991062 blue:0.383742362 alpha:1.0];
  v254[4] = v115;
  v116 = [MEMORY[0x277CBEA60] arrayWithObjects:v254 count:5];
  v117 = [v110 evenlyDistributedLinearGradientWithColors:v116];
  v222 = [v109 initWithPropertiesAndValues:{4101, @"KNGraphicSpheresBase", 4107, v117, 4122, 0, 4118, 0, 4119, 0x3FF0000000000000, 4120, 0x3FF0000000000000, 4123, 0, 4121, 0x3FF0000000000000, 4124, 0x3FF0000000000000, 4116, 0, 4125, 0x3FEDC28F5C28F5C3, 4135, 0x3FF68F5C28F5C28FLL, 4166, 0x3FF8000000000000, 4176, 0x4056800000000000, 4149, 0x401419CE075F6FD2, 4158, 0x4020C027525460AALL, 4159, 0x3FE0A3D70A3D70A4, 4165, 0x4069000000000000, 4173, 0x4056000000000000, 0}];

  v118 = [KNMotionBackgroundStyle alloc];
  v119 = [*(a1 + 32) context];
  v221 = [(KNMotionBackgroundStyle *)v118 initWithContext:v119 name:@"Lime Juice" overridePropertyMap:v222 isVariation:0];

  [v244 addStyle:v221 withIdentifier:@"motionBackground-10-motionBackgroundStyle"];
  [v245 addObject:v221];
  v120 = objc_alloc(MEMORY[0x277D80AB8]);
  v121 = MEMORY[0x277D80278];
  v122 = [MEMORY[0x277D81180] colorWithRed:0.999174178 green:0.677044213 blue:0.327683568 alpha:1.0];
  v253[0] = v122;
  v123 = [MEMORY[0x277D81180] colorWithRed:1.0 green:0.784695327 blue:0.563535571 alpha:1.0];
  v253[1] = v123;
  v124 = [MEMORY[0x277D81180] colorWithRed:1.0 green:0.618000329 blue:0.190617591 alpha:1.0];
  v253[2] = v124;
  v125 = [MEMORY[0x277D81180] colorWithRed:1.0 green:0.873410165 blue:0.645642161 alpha:1.0];
  v253[3] = v125;
  v126 = [MEMORY[0x277CBEA60] arrayWithObjects:v253 count:4];
  v127 = [v121 evenlyDistributedLinearGradientWithColors:v126];
  v128 = [MEMORY[0x277D81180] colorWithRed:0.99949199 green:0.873410165 blue:0.73082751 alpha:1.0];
  v220 = [v120 initWithPropertiesAndValues:{4101, @"KNWavesSymmetrical", 4107, v127, 4108, v128, 4103, @"Multiply", 4189, 0, 4116, 0x3FC251FA20000000, 4125, 0x3FE94EE560000000, 4188, 0x3FD3D14D80000000, 4135, 0x3FF26ACFBFFFFFFELL, 4137, 0x3FCF0BB660000000, 4190, 0x3FD0284660000000, 4184, 1, 4158, 0x4006F4F6A0000000, 4159, 0x3FD04DFF00000000, 4166, 0x3FFF07ABC0000000, 4183, 1, 4185, 0x4024000000000000, 4173, 0x4046800000000000, 4186, 0, 4127, 0x4010000000000000, 4167, 0x4009C9526FFFFFFFLL, 4187, 0, 0}];

  v129 = [KNMotionBackgroundStyle alloc];
  v130 = [*(a1 + 32) context];
  v219 = [(KNMotionBackgroundStyle *)v129 initWithContext:v130 name:@"Solar Flare" overridePropertyMap:v220 isVariation:0];

  [v244 addStyle:v219 withIdentifier:@"motionBackground-11-motionBackgroundStyle"];
  [v245 addObject:v219];
  v217 = objc_alloc(MEMORY[0x277D80AB8]);
  v131 = MEMORY[0x277D80278];
  v132 = MEMORY[0x277D80280];
  v215 = [MEMORY[0x277D81180] colorWithRed:0.175603896 green:0.0676446185 blue:0.316335797 alpha:1.0];
  v133 = [v132 gradientStopWithColor:v215 fraction:0.0589611];
  v252[0] = v133;
  v134 = MEMORY[0x277D80280];
  v135 = [MEMORY[0x277D81180] colorWithRed:0.628993213 green:0.082050614 blue:0.292652041 alpha:1.0];
  v136 = [v134 gradientStopWithColor:v135 fraction:0.509015];
  v252[1] = v136;
  v137 = MEMORY[0x277D80280];
  v138 = [MEMORY[0x277D81180] colorWithRed:0.626752197 green:0.0597777478 blue:0.101361342 alpha:1.0];
  v139 = [v137 gradientStopWithColor:v138 fraction:0.652395];
  v252[2] = v139;
  v140 = MEMORY[0x277D80280];
  v141 = [MEMORY[0x277D81180] colorWithRed:1.25981414 green:0.863757967 blue:0.118308976 alpha:1.0];
  v142 = [v140 gradientStopWithColor:v141 fraction:0.79569];
  v252[3] = v142;
  v143 = [MEMORY[0x277CBEA60] arrayWithObjects:v252 count:4];
  v144 = [v131 linearGradientWithGradientStops:v143];
  v218 = [v217 initWithPropertiesAndValues:{4101, @"KNGradientTerrainFlyover", 4107, v144, 4118, 0x4069000000000000, 4122, 0, 4119, 0x3FF0000000000000, 4120, 0x3FF0000000000000, 4123, 0, 4121, 0x3FF0000000000000, 4124, 0x3FF0000000000000, 4146, 0x400CCC6E6D9BE4CDLL, 4147, 0xC059000000000000, 4148, 0x4008000000000000, 4150, 0x4015000000000000, 4151, 0x4015000000000000, 4156, 0, 4162, 0x4040000000000000, 4195, 0x402E000000000000, 4116, 0x3F9E5FEFE0000000, 4125, 0x3FF2EE34E0000000, 4133, 0x3FF25B5D00000000, 4134, 0x40145B3460000000, 4135, 0x3FF15FE180000000, 4137, 0x3FE4CCCCCCCCCCCDLL, 4190, 0x4059000000000000, 4166, 0x3FF019F920000000, 4175, 0x3FA3D0B400000000, 4176, 0x40370A3D70A3D70ALL, 4180, 0, 4182, 16, 4152, 0x3FE0000000000000, 4153}];

  v145 = [KNMotionBackgroundStyle alloc];
  v146 = [*(a1 + 32) context];
  v216 = [(KNMotionBackgroundStyle *)v145 initWithContext:v146 name:@"Sunset Dunes" overridePropertyMap:v218 isVariation:0];

  [v244 addStyle:v216 withIdentifier:@"motionBackground-12-motionBackgroundStyle"];
  [v245 addObject:v216];
  v147 = objc_alloc(MEMORY[0x277D80AB8]);
  v148 = MEMORY[0x277D80278];
  v149 = [MEMORY[0x277D81180] colorWithRed:0.49 green:0.514 blue:0.608 alpha:1.0];
  v251[0] = v149;
  v150 = [MEMORY[0x277D81180] colorWithRed:1.0 green:0.997588038 blue:0.976123512 alpha:1.0];
  v251[1] = v150;
  v151 = [MEMORY[0x277D81180] colorWithRed:0.667 green:0.7 blue:0.831 alpha:1.0];
  v251[2] = v151;
  v152 = [MEMORY[0x277CBEA60] arrayWithObjects:v251 count:3];
  v153 = [v148 evenlyDistributedLinearGradientWithColors:v152];
  v154 = [MEMORY[0x277D81180] colorWithRed:0.489 green:0.513 blue:0.608 alpha:1.0];
  v214 = [v147 initWithPropertiesAndValues:{4101, @"KNWavesBase", 4107, v153, 4108, v154, 4103, @"Soft Light", 4189, 0x3FD9C8216C61522ALL, 4116, 0x3FB29C2580000000, 4125, 0x3FF03F6660000000, 4188, 0x3FDA72DD00000000, 4135, 0x3FFF21E040000000, 4137, 0x3FE31C2BC0000000, 4190, 0x3FE8ECDA60000000, 4184, 1, 4158, 0x400B1039E0000000, 4159, 0x3FE186D9C0000000, 4166, 0x3FE7943840000000, 4183, 0, 4185, 0x3FF8DAB9F559B3D0, 4167, 0x40195BA540000001, 4173, 0x4049000006400000, 4186, 0x3FF5099A00000000, 4127, 0x4010000000000000, 4187, 0xBFE0F5C28F5C28F6, 0}];

  v155 = [KNMotionBackgroundStyle alloc];
  v156 = [*(a1 + 32) context];
  v213 = [(KNMotionBackgroundStyle *)v155 initWithContext:v156 name:@"Morning Surf" overridePropertyMap:v214 isVariation:0];

  [v244 addStyle:v213 withIdentifier:@"motionBackground-13-motionBackgroundStyle"];
  [v245 addObject:v213];
  v157 = objc_alloc(MEMORY[0x277D80AB8]);
  v158 = MEMORY[0x277D80278];
  v159 = [MEMORY[0x277D81180] colorWithRed:3.69858384 green:1.17111111 blue:0.584948957 alpha:1.0];
  v250[0] = v159;
  v160 = [MEMORY[0x277D81180] colorWithRed:3.15873384 green:1.54265821 blue:0.264154911 alpha:1.0];
  v250[1] = v160;
  v161 = [MEMORY[0x277D81180] colorWithRed:2.81668305 green:0.830420374 blue:3.62037063 alpha:1.0];
  v250[2] = v161;
  v162 = [MEMORY[0x277D81180] colorWithRed:3.15873384 green:1.54265821 blue:0.264154911 alpha:1.0];
  v250[3] = v162;
  v163 = [MEMORY[0x277D81180] colorWithRed:1.80219495 green:0.00101774395 blue:0.284373045 alpha:1.0];
  v250[4] = v163;
  v164 = [MEMORY[0x277CBEA60] arrayWithObjects:v250 count:5];
  v165 = [v158 evenlyDistributedLinearGradientWithColors:v164];
  v212 = [v157 initWithPropertiesAndValues:{4101, @"KNGraphicSpheresBase", 4107, v165, 4122, 0, 4118, 0, 4119, 0x3FF0000000000000, 4120, 0x3FF0000000000000, 4123, 0, 4121, 0x3FF0000000000000, 4124, 0x3FF0000000000000, 4116, 0, 4125, 0x4000000000000000, 4135, 0x3FF2FDBBC0000000, 4166, 0x4000000000000000, 4176, 0x40516CDAC0000000, 4149, 0x4011C28F5C28F5C3, 4158, 0x400C000000000000, 4159, 0x3FD12200A0000000, 4173, 0x402A000000000000, 0}];

  v166 = [KNMotionBackgroundStyle alloc];
  v167 = [*(a1 + 32) context];
  v211 = [(KNMotionBackgroundStyle *)v166 initWithContext:v167 name:@"Lava Lamp" overridePropertyMap:v212 isVariation:0];

  [v244 addStyle:v211 withIdentifier:@"motionBackground-14-motionBackgroundStyle"];
  [v245 addObject:v211];
  v168 = objc_alloc(MEMORY[0x277D80AB8]);
  v169 = MEMORY[0x277D80278];
  v170 = [MEMORY[0x277D81180] colorWithRed:0.973410904 green:0.735510945 blue:0.675889551 alpha:1.0];
  v249[0] = v170;
  v171 = [MEMORY[0x277D81180] colorWithRed:1.0 green:0.516379893 blue:0.594603539 alpha:1.0];
  v249[1] = v171;
  v172 = [MEMORY[0x277CBEA60] arrayWithObjects:v249 count:2];
  v173 = [v169 evenlyDistributedLinearGradientWithColors:v172];
  v210 = [v168 initWithPropertiesAndValues:{4101, @"KNGradientLinearBase", 4107, v173, 4118, 0x407F400000000000, 4116, 0, 4125, 0x3FF0000000000000, 4120, 0x3FF0000000000000, 4177, 0, 4121, 0x3FF0000000000000, 4124, 0x3FF0000000000000, 4192, 0x4060E00000000000, 4167, 0x4004000000000000, 4173, 0x404EBD70A3D70A3DLL, 4137, 0x3FE0000000000000, 0}];

  v174 = [KNMotionBackgroundStyle alloc];
  v175 = [*(a1 + 32) context];
  v209 = [(KNMotionBackgroundStyle *)v174 initWithContext:v175 name:@"Flamingo" overridePropertyMap:v210 isVariation:0];

  [v244 addStyle:v209 withIdentifier:@"motionBackground-15-motionBackgroundStyle"];
  [v245 addObject:v209];
  v176 = objc_alloc(MEMORY[0x277D80AB8]);
  v177 = MEMORY[0x277D80278];
  v178 = [MEMORY[0x277D81180] colorWithRed:0.763 green:0.81228 blue:0.98 alpha:1.0];
  v248[0] = v178;
  v179 = [MEMORY[0x277D81180] colorWithRed:0.79 green:0.69 blue:0.69 alpha:1.0];
  v248[1] = v179;
  v180 = [MEMORY[0x277D81180] colorWithRed:0.868 green:0.429 blue:0.325 alpha:1.0];
  v248[2] = v180;
  v181 = [MEMORY[0x277D81180] colorWithRed:0.376 green:0.791 blue:0.8392 alpha:1.0];
  v248[3] = v181;
  v182 = [MEMORY[0x277CBEA60] arrayWithObjects:v248 count:4];
  v183 = [v177 evenlyDistributedLinearGradientWithColors:v182];
  v184 = [MEMORY[0x277D81180] colorWithRed:0.943699419 green:0.992402017 blue:0.992575824 alpha:1.0];
  v208 = [v176 initWithPropertiesAndValues:{4101, @"KNWavesSymmetrical", 4107, v183, 4108, v184, 4103, @"Multiply", 4189, 0x4013626809D49518, 4116, 0, 4125, 0x3FEFE41160000000, 4188, 0x3FD0ABDAE0000000, 4135, 0x3FE4212F80000000, 4137, 0x3FAB3BA4E0000000, 4190, 0x3FE8ECDA60000000, 4184, 0, 4158, 0x400E50C180000000, 4159, 0x3FD2112CE0000000, 4166, 0x3FF750EDA0000000, 4183, 1, 4185, 0x4024000000000000, 4173, 0x4059000000000000, 4186, 0, 4127, 0x3FFEB517E0000000, 4167, 0x401D0F21E4000000, 4187, 0xBFF0000000000000, 0}];

  v185 = [KNMotionBackgroundStyle alloc];
  v186 = [*(a1 + 32) context];
  v207 = [(KNMotionBackgroundStyle *)v185 initWithContext:v186 name:@"Cool Breeze" overridePropertyMap:v208 isVariation:0];

  [v244 addStyle:v207 withIdentifier:@"motionBackground-16-motionBackgroundStyle"];
  [v245 addObject:v207];
  v205 = objc_alloc(MEMORY[0x277D80AB8]);
  v187 = MEMORY[0x277D80278];
  v188 = MEMORY[0x277D80280];
  v206 = [MEMORY[0x277D81180] colorWithRed:0.697872459 green:0.442927033 blue:1.21634281 alpha:1.0];
  v189 = [v188 gradientStopWithColor:v206 fraction:0.0];
  v247[0] = v189;
  v190 = MEMORY[0x277D80280];
  v191 = [MEMORY[0x277D81180] colorWithRed:0.252315938 green:0.206160709 blue:0.608057677 alpha:1.0];
  v192 = [v190 gradientStopWithColor:v191 fraction:0.239216];
  v247[1] = v192;
  v193 = MEMORY[0x277D80280];
  v194 = [MEMORY[0x277D81180] colorWithRed:0.461889237 green:0.414777309 blue:1.01745367 alpha:1.0];
  v195 = [v193 gradientStopWithColor:v194 fraction:0.444954];
  v247[2] = v195;
  v196 = MEMORY[0x277D80280];
  v197 = [MEMORY[0x277D81180] colorWithRed:0.046404738 green:0.0 blue:0.00527885091 alpha:1.0];
  v198 = [v196 gradientStopWithColor:v197 fraction:1.0];
  v247[3] = v198;
  v199 = [MEMORY[0x277CBEA60] arrayWithObjects:v247 count:4];
  v200 = [v187 linearGradientWithGradientStops:v199];
  v201 = [v205 initWithPropertiesAndValues:{4101, @"KNGradientTerrainFlyover", 4107, v200, 4118, 0x4069000000000000, 4122, 0, 4119, 0x3FF0000000000000, 4120, 0x3FF0000000000000, 4123, 0, 4121, 0x3FF0000000000000, 4124, 0x3FF0000000000000, 4146, 0x401A0E4B87BDCF03, 4147, 0xC059000000000000, 4148, 0x4008000000000000, 4150, 0x4016000000000000, 4151, 0x4016000000000000, 4156, 0, 4162, 0x4040000000000000, 4195, 0x402E000000000000, 4116, 0x3F9E5FEFE0000000, 4125, 0x3FF2EE34E0000000, 4133, 0x3FF25B5D00000000, 4134, 0x40145B3460000000, 4135, 0x3FF15FE180000000, 4137, 0x3FE4CCCCCCCCCCCDLL, 4190, 0x4059400000000000, 4166, 0x3FF019F920000000, 4175, 0x3FA3D0B400000000, 4176, 0x40438A3D70A3D70ALL, 4180, 0, 4182, 16, 4152, 0x3FE0000000000000, 4153}];

  v202 = [KNMotionBackgroundStyle alloc];
  v203 = [*(a1 + 32) context];
  v204 = [(KNMotionBackgroundStyle *)v202 initWithContext:v203 name:@"Purple Vista" overridePropertyMap:v201 isVariation:0];

  [v244 addStyle:v204 withIdentifier:@"motionBackground-17-motionBackgroundStyle"];
  [v245 addObject:v204];
  [*(a1 + 32) setPresets:v245 ofKind:*MEMORY[0x277D80B60]];
}

void sub_275D8AAA0(uint64_t a1)
{
  v2 = [*(a1 + 32) p_findDefaultTemplateSlideWithoutLoadingSlides];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_275D8AD40(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) templateSlides];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v9 + 1) + 8 * v6) slide];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v7 = *(a1 + 32);
  v8 = [v7 p_findDefaultTemplateSlideWithoutLoadingSlides];
  [v7 p_setDefaultTemplateSlideNode:v8];
}

void sub_275D8C850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  _Block_object_dispose((v11 - 256), 8);

  _Block_object_dispose((v11 - 208), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_275D8C8FC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_275D8C964(void *a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a1;
  v7 = a3;
  v8 = a4;
  [v9 readRepeatedReferenceMessage:a2 class:objc_opt_class() protocol:v7 completion:v8];
}

uint64_t sub_275D8CA28(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = [*(a1 + 32) legacyStylesheet];
    [v2 upgradeDefaultPresenterNotesStyles];
  }

  v3 = *(a1 + 32);
  v4 = *(*(*(a1 + 40) + 8) + 40);
  if (v4)
  {
    objc_storeWeak((v3 + 144), v4);
  }

  else if ((*(v3 + 152) & 1) == 0)
  {
    if (*(*(*(a1 + 48) + 8) + 40) && ([v3 templateSlides], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "containsObject:", *(*(*(a1 + 48) + 8) + 40)), v5, v3 = *(a1 + 32), v6))
    {
      objc_storeWeak((v3 + 144), *(*(*(a1 + 48) + 8) + 40));
      *(*(a1 + 32) + 152) = 0;
    }

    else
    {
      *(v3 + 152) = 1;
    }
  }

  [*(a1 + 32) upgradeStylesWithBlock:&unk_2884D4EB0];
  v7 = *(a1 + 32);

  return [v7 createDefaultMotionBackgroundStylePresetsIfNeeded];
}

void sub_275D8CC98(uint64_t a1)
{
  if (*(a1 + 40) <= 0x77411C1FBuLL)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 144));

    if (!WeakRetained)
    {
      v3 = *(a1 + 32);

      MEMORY[0x2821F9670](v3, sel_resolveDefaultTemplateSlide);
    }
  }
}

id sub_275D8D3DC(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  *(v3 + 16) |= 2u;
  v4 = *(v3 + 128);
  if (!v4)
  {
    v5 = *(v3 + 8);
    if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    }

    v4 = MEMORY[0x277C8F070](v5);
    *(v3 + 128) = v4;
  }

  v6 = a1[4];
  v8.receiver = v2;
  v8.super_class = KNTheme;
  return objc_msgSendSuper2(&v8, sel_saveToArchive_archiver_, v4, v6);
}

id sub_275D8D594(uint64_t a1)
{
  v2 = [KNAbstractSlide parentSlideForInfo:a1];
  objc_opt_class();
  v3 = TSUDynamicCast();
  v4 = v3;
  if (v3)
  {
    v5 = [v3 templateSlide];
    v6 = [v5 infoCorrespondingToInfo:a1];

    if (v6)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v7 = MEMORY[0x277D81150];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPShapeInfo(KeynoteAdditions) instructionalTextFromModel]"];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/TSWPShapeInfoAdditions.m"];
        [v7 handleFailureInFunction:v8 file:v9 lineNumber:43 isFatal:0 description:{"%@ is a slide TSWPShapeInfo for which the corresponding template object %@ is not a TSWPShapeInfo. This particular call will handle this without problems, but it we should track down how this happened because it might cause problems elsewhere.", a1, v6}];

        [MEMORY[0x277D81150] logBacktraceThrottled];
      }

      v10 = [v4 templateSlide];
      v11 = [v10 instructionalTextForInfo:v6];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    objc_opt_class();
    v6 = TSUCheckedDynamicCast();
    v11 = [v6 instructionalTextForInfo:a1];
  }

  return v11;
}

uint64_t sub_275D8D73C(void *a1)
{
  v2 = [a1 instructionalTextFromModel];

  if (v2)
  {
    return 1;
  }

  v4 = [a1 geometry];
  if ([a1 isTextBox] && (objc_msgSend(a1, "isLinked") & 1) == 0)
  {
    if ([v4 widthValid])
    {
      v3 = [v4 heightValid] ^ 1;
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_275D8D7D0(void *a1)
{
  v2 = [a1 instructionalTextFromModel];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [a1 defaultInstructionalText];
  }

  v5 = v4;

  return v5;
}

id sub_275D8D830(uint64_t a1)
{
  if (qword_280A3BFE0 != -1)
  {
    sub_275E5B420();
  }

  v2 = qword_280A3BFD8;

  return v2;
}

void sub_275D8D874()
{
  v0 = [MEMORY[0x277D80AC0] propertySetWithProperties:{16, 17, 19, 20, 35, 36, 37, 41, 43, 44, 45, 0}];
  v1 = qword_280A3BFD8;
  qword_280A3BFD8 = v0;
}

id sub_275D8D900(uint64_t a1)
{
  if (qword_280A3BFF0 != -1)
  {
    sub_275E5B434();
  }

  v2 = qword_280A3BFE8;

  return v2;
}

void sub_275D8D944()
{
  v0 = [MEMORY[0x277D80AA8] propertySetWithProperties:{21, 0}];
  v1 = qword_280A3BFE8;
  qword_280A3BFE8 = v0;
}

id sub_275D8D994(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_275D8DA34;
  block[3] = &unk_27A698760;
  block[4] = a1;
  if (qword_280A3C000 != -1)
  {
    dispatch_once(&qword_280A3C000, block);
  }

  v1 = qword_280A3BFF8;

  return v1;
}

void sub_275D8DA34(uint64_t a1)
{
  v2 = [MEMORY[0x277D80AA8] propertySetWithProperties:{21, 48, 17, 23, 24, 25, 26, 27, 28, 29, 30, 50, 38, 40, 94, 98, 0}];
  v3 = [*(a1 + 32) textPropertiesNeedingCharacterAnimation];
  [v2 addProperties:v3];

  v4 = qword_280A3BFF8;
  qword_280A3BFF8 = v2;
}

id sub_275D8DB0C(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_275D8DBAC;
  block[3] = &unk_27A698760;
  block[4] = a1;
  if (qword_280A3C010 != -1)
  {
    dispatch_once(&qword_280A3C010, block);
  }

  v1 = qword_280A3C008;

  return v1;
}

void sub_275D8DBAC(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D80AA8]);
  v3 = [*(a1 + 32) textPropertiesAffectingVisualStyle];
  v4 = [v2 initWithPropertySet:v3];

  [v4 removeProperty:17];
  v5 = qword_280A3C008;
  qword_280A3C008 = v4;
}

id sub_275D8DC28(uint64_t a1)
{
  if (qword_280A3C020 != -1)
  {
    sub_275E5B448();
  }

  v2 = qword_280A3C018;

  return v2;
}

void sub_275D8DC6C()
{
  v0 = [MEMORY[0x277D80AC0] propertySetWithProperties:{31, 34, 39, 46, 47, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 95, 96, 105, 106, 99, 100, 101, 102, 103, 121, 104, 108, 109, 107, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 0}];
  v1 = qword_280A3C018;
  qword_280A3C018 = v0;
}

id sub_275D8DDC0(uint64_t a1)
{
  if (qword_280A3C030 != -1)
  {
    sub_275E5B45C();
  }

  v2 = qword_280A3C028;

  return v2;
}

void sub_275D8DE04()
{
  v0 = [MEMORY[0x277D80AA8] propertySetWithProperties:{25, 29, 38, 40, 94, 98, 0}];
  v1 = qword_280A3C028;
  qword_280A3C028 = v0;
}

BOOL sub_275D8DE70(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, unint64_t a5, void *a6, unint64_t a7, unint64_t a8)
{
  v13 = a3;
  v14 = a6;
  v23 = *MEMORY[0x277D81510];
  v24 = v23;
  v15 = [v13 paragraphStyleAtCharIndex:a4 effectiveRange:&v24];
  v16 = [v14 paragraphStyleAtCharIndex:a7 effectiveRange:&v23];
  v17 = v16;
  if (*(&v24 + 1) != *(&v23 + 1))
  {
    if (v24 != a4 || *(&v24 + 1) != a5)
    {
      goto LABEL_13;
    }

    v19 = 0;
    if (v23 != __PAIR128__(a8, a7))
    {
      goto LABEL_24;
    }
  }

  if ((v15 != 0) != (v16 != 0) || v15 && v16 && ![v15 isEqual:v16])
  {
LABEL_13:
    v19 = 0;
    goto LABEL_24;
  }

  v22 = [v13 characterStyleAtCharIndex:a4 effectiveRange:&v24];
  v18 = [v14 characterStyleAtCharIndex:a7 effectiveRange:&v23];
  if (*(&v24 + 1) == *(&v23 + 1) || (v19 = 0, v24 == __PAIR128__(a5, a4)) && (v19 = 0, v23 == __PAIR128__(a8, a7)))
  {
    v19 = (v22 != 0) == (v18 != 0) && (!v22 || !v18 || [v22 isEqual:v18]);
  }

LABEL_24:
  return v19;
}

uint64_t sub_275D8E05C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v92 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v55 = a6;
  v84 = 0;
  v85 = &v84;
  v86 = 0x2020000000;
  v87 = 0;
  v80 = 0;
  v81 = &v80;
  v82 = 0x2020000000;
  v83 = 1;
  v76 = 0u;
  v77 = 0u;
  v12 = v11;
  v78 = 0u;
  v79 = 0u;
  v54 = v11;
  if (!v11)
  {
    v12 = [MEMORY[0x277CBEB68] null];
  }

  v89[0] = v12;
  v50 = a4;
  v51 = a5;
  v13 = [MEMORY[0x277CCAE60] valueWithRange:{a4, a5}];
  v89[1] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v89 count:2];
  v90[0] = v14;
  v15 = v55;
  if (!v55)
  {
    v15 = [MEMORY[0x277CBEB68] null];
  }

  v88[0] = v15;
  v16 = [MEMORY[0x277CCAE60] valueWithRange:{a7, a8}];
  v88[1] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:2];
  v90[1] = v17;
  obj = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:2];

  if (!v55)
  {
  }

  if (!v54)
  {
  }

  v18 = [obj countByEnumeratingWithState:&v76 objects:v91 count:16];
  if (v18)
  {
    v58 = *v77;
    while (2)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v77 != v58)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v76 + 1) + 8 * i);
        v21 = [v20 objectAtIndexedSubscript:0];
        v22 = [v20 objectAtIndexedSubscript:1];
        v23 = [v22 rangeValue];
        v25 = v24;

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v75.location = 0;
          v75.length = 0;
          v26 = [v21 valueForProperty:48 atCharIndex:v23 effectiveRange:&v75];
          v93.location = v23;
          v93.length = v25;
          v27 = NSIntersectionRange(v93, v75);
          if (v23 != v27.location || v25 != v27.length)
          {
            v29 = MEMORY[0x277D81150];
            v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPShapeInfo(KeynoteAdditions) shouldDisableTextMorphsFromPropertiesBetweenOutgoingStorage:outgoingRange:incomingStorage:incomingRange:]"];
            v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/TSWPShapeInfoAdditions.m"];
            [v29 handleFailureInFunction:v30 file:v31 lineNumber:329 isFatal:0 description:"Range for TSWPCharacterFillProperty is different from effective range of style!"];

            [MEMORY[0x277D81150] logBacktraceThrottled];
          }

          if (v26)
          {
            if ([v26 fillType] || ((objc_msgSend(v26, "referenceColor"), v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v32, "alphaComponent"), fabs(v33 + -1.0) >= 0.00999999978) ? (v34 = v33 != 1.0) : (v34 = 0), v32, v34))
            {
              *(v85 + 24) = 1;

              goto LABEL_38;
            }
          }

          v74.location = 0;
          v74.length = 0;
          v35 = [v21 valueForProperty:50 atCharIndex:v23 effectiveRange:&v74];
          v94.location = v23;
          v94.length = v25;
          v36 = NSIntersectionRange(v94, v74);
          if (v23 != v36.location || v25 != v36.length)
          {
            v37 = MEMORY[0x277D81150];
            v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPShapeInfo(KeynoteAdditions) shouldDisableTextMorphsFromPropertiesBetweenOutgoingStorage:outgoingRange:incomingStorage:incomingRange:]"];
            v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/TSWPShapeInfoAdditions.m"];
            [v37 handleFailureInFunction:v38 file:v39 lineNumber:348 isFatal:0 description:"Range for TSWPCharacterStrokeProperty is different from effective range of style!"];

            [MEMORY[0x277D81150] logBacktraceThrottled];
          }

          if (v35)
          {
            *(v85 + 24) = 1;
LABEL_37:

LABEL_38:
            goto LABEL_39;
          }

          v40 = [a1 textPropertiesAffectingTextMorph];
          v68[0] = MEMORY[0x277D85DD0];
          v68[1] = 3221225472;
          v68[2] = sub_275D8E73C;
          v68[3] = &unk_27A698788;
          v41 = v21;
          v72 = v23;
          v73 = v25;
          v69 = v41;
          v70 = v26;
          v71 = &v84;
          [v40 enumeratePropertiesUsingBlock:v68];

          v42 = *(v85 + 24);
          if (v42)
          {
            goto LABEL_37;
          }
        }
      }

      v18 = [obj countByEnumeratingWithState:&v76 objects:v91 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

LABEL_39:

  if (v85[3] & 1) != 0 || ([a1 textPropertiesAffectingVisualStyle], v43 = objc_claimAutoreleasedReturnValue(), objc_msgSend(a1, "textPropertiesAffectingVisualStyleExceptSize"), v44 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v43, "propertySetByRemovingPropertiesFromSet:", v44), v45 = objc_claimAutoreleasedReturnValue(), v44, v43, objc_msgSend(a1, "textPropertiesAffectingVisualStyle"), v46 = objc_claimAutoreleasedReturnValue(), v59[0] = MEMORY[0x277D85DD0], v59[1] = 3221225472, v59[2] = sub_275D8E8E8, v59[3] = &unk_27A6987B0, v47 = v45, v60 = v47, v61 = v54, v64 = v50, v65 = v51, v66 = a7, v67 = a8, v62 = v55, v63 = &v80, objc_msgSend(v46, "enumeratePropertiesUsingBlock:", v59), v46, v62, v61, v60, v47, (v85[3]))
  {
    v48 = 1;
  }

  else
  {
    v48 = *(v81 + 24);
  }

  _Block_object_dispose(&v80, 8);
  _Block_object_dispose(&v84, 8);

  return v48 & 1;
}

void sub_275D8E6F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, ...)
{
  va_start(va, a57);
  _Block_object_dispose(&a54, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275D8E73C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v18.location = 0;
  v18.length = 0;
  v5 = [*(a1 + 32) valueForProperty:a2 atCharIndex:*(a1 + 56) effectiveRange:&v18];
  v6 = NSIntersectionRange(*(a1 + 56), v18);
  if (*(a1 + 56) != v6.location || *(a1 + 64) != v6.length)
  {
    v8 = MEMORY[0x277D81150];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPShapeInfo(KeynoteAdditions) shouldDisableTextMorphsFromPropertiesBetweenOutgoingStorage:outgoingRange:incomingStorage:incomingRange:]_block_invoke"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/TSWPShapeInfoAdditions.m"];
    [v8 handleFailureInFunction:v9 file:v10 lineNumber:362 isFatal:0 description:"Range is different from effective range of style!"];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  objc_opt_class();
  v11 = TSUDynamicCast();
  objc_opt_class();
  v12 = TSUDynamicCast();
  v13 = v12;
  if (v12)
  {
    v14 = [v12 referenceColor];

    v11 = v14;
  }

  if (!v11)
  {
    if (!v5)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v15 = *(a1 + 40);
  if (!v15 || ([v15 referenceColor], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v11, "isEqual:", v16), v16, (v17 & 1) == 0))
  {
LABEL_13:
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

LABEL_14:
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    *a3 = 1;
  }
}

void sub_275D8E8E8(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = [*(a1 + 32) containsProperty:a2];
  v19.location = 0;
  v19.length = 0;
  v7 = [*(a1 + 40) valueForProperty:a2 atCharIndex:*(a1 + 64) effectiveRange:&v19];
  if ((v6 & 1) == 0)
  {
    v8 = NSIntersectionRange(*(a1 + 64), v19);
    if (*(a1 + 64) != v8.location || *(a1 + 72) != v8.length)
    {
      v10 = MEMORY[0x277D81150];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPShapeInfo(KeynoteAdditions) shouldDisableTextMorphsFromPropertiesBetweenOutgoingStorage:outgoingRange:incomingStorage:incomingRange:]_block_invoke_2"];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/TSWPShapeInfoAdditions.m"];
      [v10 handleFailureInFunction:v11 file:v12 lineNumber:404 isFatal:0 description:"outgoing range is different from effective range of style!"];

      [MEMORY[0x277D81150] logBacktraceThrottled];
    }
  }

  v18.location = 0;
  v18.length = 0;
  v13 = [*(a1 + 48) valueForProperty:a2 atCharIndex:*(a1 + 80) effectiveRange:&v18];
  if ((v6 & 1) == 0)
  {
    v14 = NSIntersectionRange(*(a1 + 80), v18);
    if (*(a1 + 80) != v14.location || *(a1 + 88) != v14.length)
    {
      v15 = MEMORY[0x277D81150];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPShapeInfo(KeynoteAdditions) shouldDisableTextMorphsFromPropertiesBetweenOutgoingStorage:outgoingRange:incomingStorage:incomingRange:]_block_invoke_2"];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/TSWPShapeInfoAdditions.m"];
      [v15 handleFailureInFunction:v16 file:v17 lineNumber:413 isFatal:0 description:"incoming range is different from effective range of style!"];

      [MEMORY[0x277D81150] logBacktraceThrottled];
    }
  }

  if (v7 != v13 && ![v7 isEqual:v13] || v6 && (v19.location != v18.location || v19.length != v18.length))
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    *a3 = 1;
  }
}

uint64_t sub_275D8EB00(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = a11;
  v16 = a3;
  v17 = a4;
  v18 = a7;
  if (!a11)
  {
    v25 = v16;
    v19 = MEMORY[0x277D81150];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPShapeInfo(KeynoteAdditions) numberOfDifferencesBetweenStyleProperties:betweenOutgoingStorage:outgoingRange:incomingStorage:incomingRange:maxDifferencesBeforeReturning:]"];
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/TSWPShapeInfoAdditions.m"];
    v22 = v19;
    v16 = v25;
    [v22 handleFailureInFunction:v20 file:v21 lineNumber:435 isFatal:0 description:{"Dude why are you even calling me then, GAWD"}];

    v15 = 0;
    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  if ([objc_opt_class() stylesAreEqualWithOutgoingStorage:v17 outgoingRange:a5 incomingStorage:a6 incomingRange:{v18, a9, a10}])
  {
    v23 = 0;
  }

  else
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = sub_275D8ECFC;
    v26[3] = &unk_27A6987D8;
    v30 = a5;
    v31 = a6;
    v32 = a9;
    v33 = a10;
    v27 = v17;
    v28 = v18;
    v29 = &v35;
    v34 = v15;
    [v16 enumeratePropertiesUsingBlock:v26];
    v23 = v36[3];

    _Block_object_dispose(&v35, 8);
  }

  return v23;
}

void sub_275D8ECE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275D8ECFC(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*(a1 + 64) >= *(a1 + 80))
  {
    v3 = *(a1 + 80);
  }

  else
  {
    v3 = *(a1 + 64);
  }

  if (!v3)
  {
    return;
  }

  v7 = 0;
  while (1)
  {
    v8 = *(a1 + 56);
    v9 = *(a1 + 72);
    [*(a1 + 32) characterAtIndex:v7 + v8];
    v10 = IsWhitespaceCharacter();
    [*(a1 + 40) characterAtIndex:v7 + v9];
    v11 = IsWhitespaceCharacter();
    if (v11 && (v10 & 1) != 0)
    {
      goto LABEL_14;
    }

    v14 = [*(a1 + 32) valueForProperty:a2 atCharIndex:v7 + v8 effectiveRange:0];
    v12 = [*(a1 + 40) valueForProperty:a2 atCharIndex:v7 + v9 effectiveRange:0];
    v13 = v12;
    if (v10 != v11 || (v14 != 0) != (v12 != 0) || v14 && v12 && ([v14 isEqual:v12] & 1) == 0)
    {
      break;
    }

LABEL_14:
    if (v3 == ++v7)
    {
      return;
    }
  }

  if (++*(*(*(a1 + 48) + 8) + 24) >= *(a1 + 88))
  {
    *a3 = 1;
  }
}

uint64_t sub_275D8EE94(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  objc_opt_class();
  v4 = TSUDynamicCast();

  if (!v4)
  {
    v5 = MEMORY[0x277D81150];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPShapeInfo(KeynoteAdditions) mixingTypeWithObject:context:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/TSWPShapeInfoAdditions.m"];
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:494 isFatal:0 description:"nil object after cast"];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  return 4;
}

id sub_275D8EF64(void *a1, double a2, uint64_t a3, void *a4)
{
  v6 = a4;
  objc_opt_class();
  v7 = TSUDynamicCast();

  v8 = [a1 geometry];
  v9 = [v7 geometry];
  v29 = TSDMixingMixedObjectWithFraction();

  v10 = [a1 shapeStyle];
  v11 = [v7 shapeStyle];
  v12 = TSDMixingMixedObjectWithFraction();

  v13 = [a1 pathSource];
  v14 = [v7 pathSource];
  v15 = TSDMixingMixedObjectWithFraction();

  if (a2 > 0.5)
  {
    v16 = v7;
  }

  else
  {
    v16 = a1;
  }

  v17 = v16;
  v18 = [v17 textStorage];
  v19 = [v17 textStorage];
  v20 = [v19 range];
  v22 = v21;
  v23 = [v17 context];
  v24 = [v18 newSubstorageWithRange:v20 context:v22 flags:{v23, 1}];

  v25 = objc_alloc(MEMORY[0x277D80F00]);
  v26 = [a1 context];

  v27 = [v25 initWithContext:v26 geometry:v29 style:v12 pathSource:v15 wpStorage:v24];

  return v27;
}

BOOL sub_275D8F18C(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 0;
  }

  v3 = [a1 containingGroup];
  v2 = v3 == 0;

  return v2;
}

void sub_275D8F1EC(uint64_t a1)
{
  v3 = [MEMORY[0x277D80630] threadCollector];
  v2 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D807F8]];
  [v3 registerChange:50003 details:v2 forChangeSource:a1];
}

KNWebVideoRenderer *sub_275D92D18(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = [(KNBuildRenderer *)[KNWebVideoRenderer alloc] initWithAnimatedBuild:v11 info:a1 buildStage:v10 animatedSlideView:v9];

  return v12;
}

void sub_275D974E8(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v10];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 entryByMergingEntry:v5];
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;
  [*(a1 + 32) setObject:v8 forKeyedSubscript:v10];
}

void sub_275D97BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275D97C1C(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [*(a1 + 32) sourceWithObjectUUID:a2];
  if (v8 == *(a1 + 40))
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v9 = [v7 archivedBackgroundKinds];
    v10 = [v9 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v10)
    {
      v11 = *v14;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v9);
          }

          if (+[KNLiveVideoInfo i_backgroundKindForArchivedBackgroundKind:](KNLiveVideoInfo, "i_backgroundKindForArchivedBackgroundKind:", [*(*(&v13 + 1) + 8 * i) integerValue]) == *(a1 + 56))
          {
            *(*(*(a1 + 48) + 8) + 24) = 1;
            goto LABEL_12;
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      *a4 = 1;
    }
  }
}

void sub_275D98434(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x277D812A8]) initWithFirst:v7 second:v5];
  [*(a1 + 32) addObject:v6];
}

uint64_t sub_275D984E0(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 first];
  v6 = [v4 first];
  v7 = [v5 tsu_compare:v6];

  return v7;
}

void sub_275D98550(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_275D987F8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_275D98CF0(unsigned int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  if (v2 < 1)
  {
    v4 = *(a1 + 1);
    v5 = 0;
    if (!v2)
    {
      if (a2 < 4)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v4 = *(a1 + 1);
    v5 = (v4 - 8);
  }

  v4 = *(v4 - 8);
  if (a2 < 4)
  {
LABEL_6:
    v6 = 4;
    goto LABEL_13;
  }

  if (v2 > 0x3FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    goto LABEL_13;
  }

LABEL_10:
  v7 = 2 * v2;
  if (v7 <= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v7;
  }

LABEL_13:
  v8 = 4 * v6;
  if (v4)
  {
    sub_275D98DF4(v4, v8 + 8);
  }

  else
  {
    v9 = operator new(v8 + 8);
  }

  *v9 = v4;
  v10 = v9 + 1;
  a1[1] = v6;
  *(a1 + 1) = v10;
  v11 = *a1;
  if (v11 >= 1)
  {
    memcpy(v10, v5 + 1, 4 * v11);
  }

  if (v5 && !*v5)
  {

    operator delete(v5);
  }
}

void sub_275D98DF4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_275E5B470(a1, (a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  JUMPOUT(0x277C8F160);
}

void sub_275D99CEC()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_275D99DB8(uint64_t a1)
{
  [*(a1 + 32) updateDefaultsValues];
  v1 = objc_opt_new();
  v2 = qword_280A3C058;
  qword_280A3C058 = v1;
}

void sub_275D9B3C0()
{
  v0 = TSULogCreateCategory();
  v1 = qword_280A3C068;
  qword_280A3C068 = v0;
}

void sub_275D9B538()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_275D9B8FC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_275D9B98C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = KNNoteRep;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_275D9BF68()
{
  v0 = TSULogCreateCategory();
  v1 = KNAnimationEngineCat_log_t;
  KNAnimationEngineCat_log_t = v0;
}

void sub_275D9C2C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_275D9C2F0(uint64_t a1, void *a2, double a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  [v5 startTime];
  v7 = v6 + a3;
  [v5 durationWithChildren];
  v9 = v7 + v8;
  if ((*(*(a1 + 32) + 56) & 1) == 0)
  {
    v10 = [v5 pluginClass];
    if ([v10 isSubclassOfClass:objc_opt_class()])
    {
      v11 = [*(a1 + 40) deliveryOption] == 3 || objc_msgSend(*(a1 + 40), "deliveryOption") == 2;
    }

    else
    {
      v11 = 0;
    }

    if ([v10 isSubclassOfClass:objc_opt_class()] && !v11 || objc_msgSend(v10, "isSubclassOfClass:", objc_opt_class()))
    {
      v9 = v7;
    }
  }

  (*(*(a1 + 48) + 16))(v7 + *(a1 + 72), v9 + *(a1 + 72));
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v12 = [*(a1 + 32) rendererForAnimatedBuild:v5];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v13 = [v12 animatedBuildsToStartAtEnd];
    v14 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v19;
LABEL_14:
      v17 = 0;
      while (1)
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        (*(*(*(*(a1 + 64) + 8) + 24) + 16))(v9);
        if (*(*(*(a1 + 56) + 8) + 24))
        {
          break;
        }

        if (v15 == ++v17)
        {
          v15 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v15)
          {
            goto LABEL_14;
          }

          break;
        }
      }
    }
  }
}

uint64_t sub_275D9E10C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 eventIndex];
  if (v6 < [v5 eventIndex])
  {
LABEL_2:
    v7 = -1;
    goto LABEL_11;
  }

  v8 = [v4 eventIndex];
  if (v8 > [v5 eventIndex])
  {
    v7 = 1;
    goto LABEL_11;
  }

  [v4 eventEndTime];
  v10 = v9;
  [v5 eventEndTime];
  if (v10 == v11)
  {
    v12 = [v4 parentBuild];

    if (v12 != v5)
    {
      v13 = [v5 parentBuild];
      v7 = v13 == v4;

      goto LABEL_11;
    }

    goto LABEL_2;
  }

  [v4 eventEndTime];
  v15 = v14;
  [v5 eventEndTime];
  if (v15 >= v16)
  {
    v7 = 1;
  }

  else
  {
    v7 = -1;
  }

LABEL_11:

  return v7;
}

void sub_275DA15FC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 appendString:@"\r            "];
  v5 = *(a1 + 32);
  v6 = [v4 description];

  [v5 appendString:v6];
}

void sub_275DA32A0(uint64_t a1, CGContextRef c)
{
  CGContextSetRGBFillColor(c, 0.0, 0.0, 0.0, 1.0);
  [objc_msgSend(*(*(a1 + 32) + 8) "animationContext")];

  CGContextFillRect(c, *&v4);
}

double sub_275DA4478(void *a1, uint64_t a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 clipRect];
  x = v5;
  y = v7;
  width = v9;
  height = v11;
  v13 = [v4 childReps];
  v14 = [v13 count];

  if (v14)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v15 = [v4 childReps];
    v16 = [v15 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v31;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v31 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [a1 p_clipRectForRep:*(*(&v30 + 1) + 8 * i)];
          v39.origin.x = v20;
          v39.origin.y = v21;
          v39.size.width = v22;
          v39.size.height = v23;
          v36.origin.x = x;
          v36.origin.y = y;
          v36.size.width = width;
          v36.size.height = height;
          v37 = CGRectUnion(v36, v39);
          x = v37.origin.x;
          y = v37.origin.y;
          width = v37.size.width;
          height = v37.size.height;
        }

        v17 = [v15 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v17);
    }
  }

  v24 = [v4 layout];
  v25 = [v24 geometry];
  v26 = v25;
  if (v25)
  {
    objc_msgSend_transform(v25);
  }

  else
  {
    memset(&v29, 0, sizeof(v29));
  }

  v38.origin.x = x;
  v38.origin.y = y;
  v38.size.width = width;
  v38.size.height = height;
  *&v27 = CGRectApplyAffineTransform(v38, &v29);

  return v27;
}

double sub_275DA4678(void *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  v6 = [a1 info];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [a1 childReps];
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = [v12 info];
        v14 = [v6 isNonGroupedChild:v13];

        if ((v14 & 1) == 0)
        {
          [a1 p_clipRectForRep:v12];
          v30.origin.x = v15;
          v30.origin.y = v16;
          v30.size.width = v17;
          v30.size.height = v18;
          v27.origin.x = x;
          v27.origin.y = y;
          v27.size.width = width;
          v27.size.height = height;
          v28 = CGRectUnion(v27, v30);
          x = v28.origin.x;
          y = v28.origin.y;
          width = v28.size.width;
          height = v28.size.height;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  if (CGRectIsNull(v29))
  {
    TSURectWithSize();
    x = v19;
  }

  return x;
}

id sub_275DA4858(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 isMagicMove];
  memset(&v49, 0, sizeof(v49));
  v6 = [a1 layout];
  v7 = v6;
  if (v6)
  {
    objc_msgSend_transformInRoot(v6);
  }

  else
  {
    memset(&v49, 0, sizeof(v49));
  }

  if (v5)
  {
    v47 = v49;
    objc_msgSend_unRotatedTransform_(a1);
    v49 = v48;
  }

  v8 = [a1 canvas];
  [v8 viewScale];
  v10 = v9;

  [a1 p_rectIncludingChildCaptions];
  x = v51.origin.x;
  y = v51.origin.y;
  width = v51.size.width;
  height = v51.size.height;
  v48 = v49;
  CGRectApplyAffineTransform(v51, &v48);
  TSUMultiplyRectScalar();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [a1 naturalBounds];
  v48 = v49;
  CGRectApplyAffineTransform(v52, &v48);
  TSUMultiplyRectScalar();
  v53.origin.x = v15;
  v53.origin.y = v17;
  v53.size.width = v19;
  v53.size.height = v21;
  v54 = CGRectIntegral(v53);
  v22 = v54.origin.x;
  v23 = v54.origin.y;
  v24 = v54.size.width;
  v25 = v54.size.height;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_275DA4BEC;
  aBlock[3] = &unk_27A6989D0;
  v40 = v54;
  v26 = v4;
  v41 = x;
  v42 = y;
  v43 = width;
  v44 = height;
  v45 = v10;
  v46 = v49;
  v38 = v26;
  v39 = a1;
  v27 = _Block_copy(aBlock);
  v28 = objc_alloc_init(MEMORY[0x277D803E0]);
  [v28 setRep:a1];
  [v28 setObjectType:0];
  v29 = objc_alloc(MEMORY[0x277D803E8]);
  TSUSubtractPoints();
  v32 = [v29 initWithSize:v27 offset:v24 renderBlock:{v25, v30, v31}];
  [v28 setIsMagicMove:v5];
  [v32 setTextureType:5];
  [v32 setTextureOpacity:1.0];
  [v28 addRenderable:v32];
  [a1 opacity];
  [v28 setTextureOpacity:?];
  [a1 centerForRotation];
  [v28 setCenter:?];
  [a1 setTextureAttributes:v28 textureBounds:{v22, v23, v24, v25}];
  if ((v5 & 1) == 0)
  {
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = sub_275DA4DF8;
    v36[3] = &unk_27A6989F8;
    v36[4] = a1;
    v33 = _Block_copy(v36);
    [a1 addChildTexturesToTextureSet:v28 forDescription:v26 passingTest:v33];
  }

  return v28;
}

void sub_275DA4BEC(uint64_t a1, CGContextRef c)
{
  v23 = *MEMORY[0x277D85DE8];
  CGContextSetAllowsFontSubpixelQuantization(c, 0);
  CGContextTranslateCTM(c, -*(a1 + 48), -*(a1 + 56));
  if ([*(a1 + 32) shouldDistortToFit])
  {
    v4 = *(a1 + 64) / *(a1 + 96);
    v5 = *(a1 + 72) / *(a1 + 104);
    v6 = c;
  }

  else
  {
    v4 = *(a1 + 112);
    v6 = c;
    v5 = v4;
  }

  CGContextScaleCTM(v6, v4, v5);
  v7 = *(a1 + 136);
  *&transform.a = *(a1 + 120);
  *&transform.c = v7;
  *&transform.tx = *(a1 + 152);
  CGContextConcatCTM(c, &transform);
  CGContextSaveGState(c);
  [*(a1 + 40) drawInContext:c];
  CGContextRestoreGState(c);
  if (([*(a1 + 32) shouldNotAddContainedReps] & 1) == 0)
  {
    v8 = [*(a1 + 40) info];
    CGContextSaveGState(c);
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = [*(a1 + 40) childReps];
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v17 + 1) + 8 * i);
          v15 = [v14 info];
          v16 = [v8 isNonGroupedChild:v15];

          if ((v16 & 1) == 0)
          {
            CGContextSaveGState(c);
            [v14 recursivelyDrawInContext:c keepingChildrenPassingTest:0];
            CGContextRestoreGState(c);
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v11);
    }

    CGContextRestoreGState(c);
  }
}

BOOL sub_275DA4DF8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 info];
  v5 = [v3 info];

  v6 = [v4 title];
  if (v6 == v5)
  {
    v8 = 1;
  }

  else
  {
    v7 = [v4 caption];
    v8 = v7 == v5;
  }

  return v8;
}

void sub_275DA5A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_275DA5A88(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 integerValue];
  *(*(*(a1 + 32) + 8) + 24) = result == *(a1 + 40);
  *a4 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_275DAB56C(uint64_t a1, void *a2)
{
  v28 = a2;
  TSDRegisterPersistentClasses();
  TSKRegisterPersistentClasses();
  __C();
  String();
  TSTRegisterPersistentClasses();
  __C();
  __C();
  TSWPRegisterPersistentClasses();
  TSARegisterPersistentClasses();
  v2 = sub_275E05E2C();
  google::protobuf::internal::AssignDescriptors();
  [v28 setMessageType:1 messagePrototype:v2 descriptor:off_2812EA908[58] unarchiveClassname:"KNDocumentRoot"];
  v3 = sub_275E0455C();
  google::protobuf::internal::AssignDescriptors();
  [v28 setMessageType:2 messagePrototype:v3 descriptor:off_2812EA908[56] unarchiveClassname:"KNShow"];
  v4 = sub_275DFB644();
  google::protobuf::internal::AssignDescriptors();
  [v28 setMessageType:3 messagePrototype:v4 descriptor:off_2812EA908[40] unarchiveClassname:"KNArchivedUIState"];
  v5 = sub_275DF7570();
  google::protobuf::internal::AssignDescriptors();
  [v28 setMessageType:4 messagePrototype:v5 descriptor:off_2812EA908[36] unarchiveClassname:"KNSlideNode"];
  v6 = sub_275DF20A4();
  google::protobuf::internal::AssignDescriptors();
  [v28 setMessageType:5 messagePrototype:v6 descriptor:off_2812EA908[32] unarchiveClassname:"KNAbstractSlide"];
  [v28 setUpgradeMessageType:6 messagePrototype:sub_275DF20A4() unarchiveClassname:"KNAbstractSlide"];
  v7 = sub_275DEE32C();
  google::protobuf::internal::AssignDescriptors();
  [v28 setMessageType:7 messagePrototype:v7 descriptor:off_2812EA908[18] unarchiveClassname:"KNPlaceholderInfo"];
  v8 = sub_275DED6FC();
  google::protobuf::internal::AssignDescriptors();
  [v28 setMessageType:8 messagePrototype:v8 descriptor:off_2812EA908[16] unarchiveClassname:"KNBuild"];
  v9 = sub_275E074C4();
  google::protobuf::internal::AssignDescriptors();
  [v28 setMessageType:9 messagePrototype:v9 descriptor:off_2812EA908[62] unarchiveClassname:"KNSlideStyle"];
  v10 = sub_275E022F8();
  google::protobuf::internal::AssignDescriptors();
  [v28 setMessageType:10 messagePrototype:v10 descriptor:off_2812EA908[52] unarchiveClassname:"KNTheme"];
  v11 = [v28 setUpgradeMessageType:12 messagePrototype:sub_275DEE32C() unarchiveClassname:"KNPlaceholderInfo"];
  [v28 setUpgradeMessageType:14 messagePrototype:TSWP::TextualAttachmentArchive::default_instance(v11) unarchiveClassname:"KNSlideNumberAttachment"];
  v12 = sub_275DEEAE8();
  google::protobuf::internal::AssignDescriptors();
  [v28 setMessageType:15 messagePrototype:v12 descriptor:off_2812EA908[20] unarchiveClassname:"KNNoteInfo"];
  v13 = sub_275E0C630();
  google::protobuf::internal::AssignDescriptors();
  [v28 setMessageType:16 messagePrototype:v13 descriptor:off_2812EA908[70] unarchiveClassname:"KNRecording"];
  v14 = sub_275E0E20C();
  google::protobuf::internal::AssignDescriptors();
  [v28 setMessageType:17 messagePrototype:v14 descriptor:off_2812EA908[76] unarchiveClassname:"KNRecordingEventTrack"];
  v15 = sub_275E11ABC();
  google::protobuf::internal::AssignDescriptors();
  [v28 setMessageType:18 messagePrototype:v15 descriptor:off_2812EA908[88] unarchiveClassname:"KNRecordingMovieTrack"];
  v16 = sub_275DEF174();
  google::protobuf::internal::AssignDescriptors();
  [v28 setMessageType:19 messagePrototype:v16 descriptor:off_2812EA908[22] unarchiveClassname:"KNClassicStylesheetRecord"];
  v17 = sub_275DEFB34();
  google::protobuf::internal::AssignDescriptors();
  [v28 setMessageType:20 messagePrototype:v17 descriptor:off_2812EA908[24] unarchiveClassname:"KNClassicThemeRecord"];
  v18 = sub_275E12C40();
  google::protobuf::internal::AssignDescriptors();
  [v28 setMessageType:21 messagePrototype:v18 descriptor:off_2812EA908[92] unarchiveClassname:"KNSoundtrack"];
  v19 = sub_275E13588();
  google::protobuf::internal::AssignDescriptors();
  [v28 setMessageType:22 messagePrototype:v19 descriptor:off_2812EA908[94] unarchiveClassname:"KNSlideNumberAttachment"];
  v20 = sub_275DFA528();
  google::protobuf::internal::AssignDescriptors();
  v21 = TSWP::NumberAttachmentArchive::default_instance([v28 setMessageType:23 messagePrototype:v20 descriptor:off_2812EA908[38] unarchiveClassname:"KNMacArchivedUILayout"]);
  v22 = MEMORY[0x277D810B8];
  google::protobuf::internal::AssignDescriptors();
  [v28 setOverrideMessageType:2043 messagePrototype:v21 descriptor:*(*(v22 + 88) + 1072) unarchiveClassname:"KNSlideNumberAttachment"];
  v23 = sub_275E1E63C();
  google::protobuf::internal::AssignDescriptors();
  [v28 setMessageType:26 messagePrototype:v23 descriptor:off_2812EA908[118] unarchiveClassname:"KNMotionBackgroundStyle"];
  v24 = sub_275DE7EBC();
  google::protobuf::internal::AssignDescriptors();
  [v28 setMessageType:153 messagePrototype:v24 descriptor:off_2812EA908[6] unarchiveClassname:"KNBuildChunk"];
  v25 = sub_275DEA2A4();
  google::protobuf::internal::AssignDescriptors();
  [v28 setMessageType:159 messagePrototype:v25 descriptor:off_2812EA908[12] unarchiveClassname:"KNBuildAttributeTuple"];
  v26 = sub_275E1797C();
  google::protobuf::internal::AssignDescriptors();
  [v28 setMessageType:184 messagePrototype:v26 descriptor:off_2812EA908[106] unarchiveClassname:"KNLiveVideoSource"];
  v27 = sub_275E19E08();
  google::protobuf::internal::AssignDescriptors();
  [v28 setMessageType:185 messagePrototype:v27 descriptor:off_2812EA908[112] unarchiveClassname:"KNLiveVideoSourceCollection"];
  [MEMORY[0x277D80248] registerSubclass:objc_opt_class()];
}

void sub_275DABB70(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = [MEMORY[0x277D80880] sharedRegistry];
  String();
  TSDRegisterPropertyCommandObjects();
  TSTRegisterPropertyCommandObjects();
  TSWPRegisterPropertyCommandObjects();
}

void sub_275DACA08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_275DACDF0(uint64_t a1)
{
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] activateBackground:{objc_msgSend(MEMORY[0x277CCACC8], "isMainThread") ^ 1}];
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v4 = *(a1 + 40);
  v5 = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained renderIntoContext:v4 eventIndex:objc_msgSend(v5 ignoreBuildVisibility:{"currentEventIndex"), *(a1 + 48)}];

  objc_autoreleasePoolPop(v2);
  v6 = MEMORY[0x277CD9FF0];

  return [v6 commit];
}

void sub_275DACF64(uint64_t a1)
{
  v2 = [*(a1 + 32) copyImageOfCurrentEventIgnoringBuildVisilibity:0];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v2);
  }

  CGImageRelease(v2);
}

void sub_275DAF66C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_275DAF684(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) p_checkNodeEqualityIncludingUUID:a2 secondSlideNode:*(a1 + 40)];
  if (result)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_275DAF7C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_275DAF7D8(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) p_checkNodeEqualityIncludingUUID:a2 secondSlideNode:*(a1 + 40)];
  if (result)
  {
    *(*(*(a1 + 48) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

void *sub_275DB197C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[27])
  {
    [v2 willChangeValueForKey:@"playerController"];
    [*(*(a1 + 32) + 216) teardown];

    *(*(a1 + 32) + 216) = 0;
    [*(a1 + 32) didChangeValueForKey:@"playerController"];
  }

  objc_opt_class();
  v3 = TSUDynamicCast();
  if (v3)
  {
    [v3 setPlayer:0];
  }

  *(*(a1 + 32) + 224) = 0;
  result = [*(a1 + 32) p_didEndMoviePlayback];
  *(*(a1 + 32) + 313) &= ~2u;
  return result;
}

void sub_275DB2158()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v2 = @"KNShowMovieHUDWhenMouseOver";
  v3[0] = MEMORY[0x277CBEC38];
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:&v2 count:1];
  [v0 registerDefaults:v1];
}

void sub_275DB2430()
{
  v0 = TSULogCreateCategory();
  v1 = KNAnimationEngineCat_log_t;
  KNAnimationEngineCat_log_t = v0;
}

uint64_t sub_275DB51BC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((v2 + 264));
  v5 = [WeakRetained canMakeInfoVisible:v3 allowAudioOnlyMovies:1];

  return v5;
}

void sub_275DB665C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_275DB6694(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_275DB66AC(void *a1, void *a2, double a3, double a4)
{
  v18 = a2;
  v6 = *(a1[4] + 8);
  v7 = *(v6 + 24);
  if (v7 <= a4)
  {
    v7 = a4;
  }

  *(v6 + 24) = v7;
  if (*(*(a1[5] + 8) + 24))
  {
    v8 = [*(*(a1[6] + 8) + 40) stringByAppendingString:@"+"];
    v9 = *(a1[6] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  v11 = *(*(a1[6] + 8) + 40);
  v12 = NSStringFromClass([v18 pluginClass]);
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = @"nil";
  }

  v15 = [v11 stringByAppendingString:v14];
  v16 = *(a1[6] + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  ++*(*(a1[5] + 8) + 24);
}

uint64_t sub_275DB81B4(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_275DB956C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak(&location);
  objc_sync_exit(v18);
  _Unwind_Resume(a1);
}

void sub_275DB959C(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 264));
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_275DB966C;
  v6[3] = &unk_27A698B08;
  objc_copyWeak(v7, (a1 + 40));
  v5 = *(a1 + 48);
  v7[1] = a2;
  v7[2] = v5;
  v8 = *(a1 + 56);
  [WeakRetained performSlideRead:v6];

  objc_destroyWeak(v7);
}

void sub_275DB966C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained renderIntoContext:*(a1 + 40) eventIndex:*(a1 + 48) ignoreBuildVisibility:*(a1 + 56)];
}

void sub_275DBCB08(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 data];
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  *(v4 + 8) = v3;
}

void sub_275DBD774(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [objc_alloc(MEMORY[0x277CBEB70]) initWithArray:v6];
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  *(v4 + 8) = v3;
}

id sub_275DC204C(uint64_t a1)
{
  if (qword_280A3C080 != -1)
  {
    sub_275E5B548();
  }

  v2 = qword_280A3C078;

  return v2;
}

void sub_275DC2090()
{
  Class = objc_getClass("KNBundleLookup");
  if (Class)
  {
    v1 = [MEMORY[0x277CCA8D8] bundleForClass:Class];
    v2 = qword_280A3C078;
    qword_280A3C078 = v1;
  }
}

void sub_275DC2320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_275DC2338()
{
  v0 = dispatch_queue_create("parameterGroup", 0);
  v1 = qword_280A3C098;
  qword_280A3C098 = v0;

  return MEMORY[0x2821F9670](KNAnimParameterGroup, sel_p_loadAllParametersIfNecessary);
}

uint64_t sub_275DC2384(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_275DC239C(uint64_t a1)
{
  v2 = +[KNAnimationTools isAnimationEditorConnected];
  v3 = qword_280A3C088;
  if (v2)
  {
    v4 = 0;
  }

  else
  {
    if (qword_280A3C088)
    {
      goto LABEL_6;
    }

    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v3 = qword_280A3C088;
  }

  qword_280A3C088 = v4;

LABEL_6:
  v5 = [qword_280A3C088 objectForKeyedSubscript:*(a1 + 32)];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v9 = sub_275DC204C(v8);
    v14 = [v9 pathForResource:*(a1 + 32) ofType:@"parameterGroup"];

    if (v14 || ([*(a1 + 32) stringByAppendingPathExtension:@"parameterGroup"], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v10 = [[KNAnimParameterGroup alloc] initWithFileName:v14];
      v11 = *(*(a1 + 40) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      v13 = *(*(*(a1 + 40) + 8) + 40);
      if (v13)
      {
        [qword_280A3C088 setObject:v13 forKeyedSubscript:*(a1 + 32)];
      }
    }

    else
    {
      v14 = 0;
    }
  }
}

void sub_275DC2548(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  if (!qword_280A3C088)
  {
    v1 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v2 = qword_280A3C088;
    qword_280A3C088 = v1;
  }

  v3 = sub_275DC204C(a1);
  v4 = [v3 pathsForResourcesOfType:@"parameterGroup" inDirectory:0];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      v8 = 0;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v20 + 1) + 8 * v8);
        v10 = [[KNAnimParameterGroup alloc] initWithFileName:v9];
        v11 = [v9 lastPathComponent];
        v12 = [v11 stringByDeletingPathExtension];

        if (v12)
        {
          if (v10)
          {
            [qword_280A3C088 setObject:v10 forKeyedSubscript:v12];
            goto LABEL_13;
          }
        }

        else
        {
          v13 = MEMORY[0x277D81150];
          v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[KNAnimParameterGroup p_loadAllParametersIfNecessary]_block_invoke"];
          v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimParameterGroup.m"];
          [v13 handleFailureInFunction:v14 file:v15 lineNumber:117 isFatal:0 description:{"invalid nil value for '%{public}s'", "name"}];

          [MEMORY[0x277D81150] logBacktraceThrottled];
          if (v10)
          {
            goto LABEL_13;
          }
        }

        v16 = MEMORY[0x277D81150];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[KNAnimParameterGroup p_loadAllParametersIfNecessary]_block_invoke"];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimParameterGroup.m"];
        [v16 handleFailureInFunction:v17 file:v18 lineNumber:118 isFatal:0 description:{"invalid nil value for '%{public}s'", "parameterGroup"}];

        [MEMORY[0x277D81150] logBacktraceThrottled];
LABEL_13:

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }
}

void sub_275DC45F0(uint64_t a1, char *__s)
{
  *(a1 + 16) |= 1u;
  v3 = strlen(__s);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_275D55C50();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v6 = v3;
  if (v3)
  {
    memcpy(&__dst, __s, v3);
  }

  *(&__dst + v4) = 0;
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_275DC46E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_275DC4B2C()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_275DC5BDC(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = objc_alloc(MEMORY[0x277CCAA78]);
  if (*(a1 + 72))
  {
    v4 = *(a1 + 72);
  }

  else
  {
    v4 = MEMORY[0x277D80A08];
  }

  v5 = [v3 tsp_initWithMessage:v4];
  [*(a1 + 32) setObject:v5 forUncopiedKey:v6];
}

void sub_275DC5C90(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
}

void sub_275DC6928(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v8 = v3;
    [*(a1 + 32) willModifyForUpgrade];
    v4 = [v8 objectUUID];
    v5 = [v4 copy];
    v6 = *(a1 + 40);
    v7 = *(v6 + 24);
    *(v6 + 24) = v5;

    v3 = v8;
  }
}

void sub_275DC69CC(uint64_t a1)
{
  if (*(*(a1 + 32) + 24))
  {
    v2 = [*(a1 + 40) context];
    objc_storeWeak((*(a1 + 32) + 16), v2);
  }
}

void sub_275DC7AF0(uint64_t a1, char *__s)
{
  *(a1 + 16) |= 1u;
  v3 = strlen(__s);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_275D55C50();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v6 = v3;
  if (v3)
  {
    memcpy(&__dst, __s, v3);
  }

  *(&__dst + v4) = 0;
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_275DC7BE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_275DC7FE4(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  objc_opt_class();
  v6 = TSUDynamicCast();
  if (v6)
  {
    v7 = [*(a1 + 40) mappedStyleForStyle:v6];
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v8];
  }
}

void sub_275DC81B0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addObject:v4];
  }
}

void sub_275DC8348(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_2884F66B8])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [*(a1 + 32) addObject:v4];
    }
  }
}

void sub_275DC85E8(uint64_t a1, void *a2)
{
  v3 = [a2 object];
  if (v3)
  {
    [*(a1 + 32) setObject:v3 forKeyedSubscript:*(a1 + 40)];
  }
}

void sub_275DC8658(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [*(*(a1 + 32) + 64) objectEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = *v13;
    do
    {
      v5 = 0;
      do
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(v2);
        }

        objc_opt_class();
        v6 = TSUDynamicCast();
        v7 = v6;
        if (v6)
        {
          v8 = [v6 stylesheet];
          v9 = v8 == 0;

          if (v9)
          {
            v10 = [*(a1 + 32) documentRoot];
            v11 = [v10 stylesheet];
            [v11 addStyle:v7 withParent:0 identifier:0 shouldDoDOLC:0];
          }
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v3);
  }
}

void sub_275DC8DCC(uint64_t a1, char *__s)
{
  *(a1 + 16) |= 1u;
  v3 = strlen(__s);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_275D55C50();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v6 = v3;
  if (v3)
  {
    memcpy(&__dst, __s, v3);
  }

  *(&__dst + v4) = 0;
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_275DC8EC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_275DCAAC0(void *a1)
{
  v2 = [a1 movieData];
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v4 = [a1 movieRemoteURL];
    v3 = v4 != 0;
  }

  return v3;
}

id sub_275DCAB18(void *a1)
{
  v1 = [a1 isAudioOnly];
  v2 = MEMORY[0x277D80148];
  if (!v1)
  {
    v2 = MEMORY[0x277D80158];
  }

  v3 = *v2;

  return v3;
}

KNMovieRenderer *sub_275DCAB6C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = [[KNMovieRenderer alloc] initWithAnimatedBuild:v11 info:a1 buildStage:v10 animatedSlideView:v9];

  return v12;
}

void sub_275DCBF84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t sub_275DD0518(uint64_t a1, CGContextRef c)
{
  CGContextTranslateCTM(c, -*(a1 + 40), -*(a1 + 48));
  CGContextScaleCTM(c, *(a1 + 72), *(a1 + 72));
  v4 = *(a1 + 96);
  *&v6.a = *(a1 + 80);
  *&v6.c = v4;
  *&v6.tx = *(a1 + 112);
  CGContextConcatCTM(c, &v6);
  [*(a1 + 32) p_antialiasingDefeatedVideoMaskBoundsInContext:c];
  return [*(a1 + 32) p_drawBackgroundFillRect:c inContext:?];
}

id sub_275DD0818()
{
  v0 = [MEMORY[0x277D80EC8] presetStyleDescriptor];
  v1 = String();

  return v1;
}

id sub_275DD087C(void *a1)
{
  v2 = [objc_opt_class() presenterNotesParagraphStyleIdentifier];
  objc_opt_class();
  v3 = [a1 cascadedStyleWithIdentifier:v2];
  v4 = TSUDynamicCast();

  return v4;
}

id sub_275DD0908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [MEMORY[0x277D80EA0] presetStyleDescriptor];
  v4 = String();

  return v4;
}

void sub_275DD098C(void *a1, uint64_t a2, int a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v23 = [a1 isLocked];
  v4 = objc_opt_class();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [a1 p_boxedLabelTypesForNotesListStyles];
  v5 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v27;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [*(*(&v26 + 1) + 8 * i) unsignedIntegerValue];
        v10 = [v4 p_presenterNotesListStyleIdentifierForListLabelType:v9];
        objc_opt_class();
        v11 = [a1 styleWithIdentifier:v10];
        v12 = TSUDynamicCast();

        if (v12)
        {
          if (a3)
          {
            [v12 willModifyForUpgrade];
            v13 = [a1 p_defaultPresenterNotesListStylePropertyMapForListLabelType:v9];
            [v12 removeAllValues];
            [v12 setValuesForProperties:v13];
          }
        }

        else
        {
          [a1 setIsLocked:0];
          [a1 willModifyForUpgrade];
          v14 = [a1 context];
          v12 = [a1 p_newDefaultPresenterNotesListStyleWithContext:v14 forListLabelType:v9];

          [a1 addStyle:v12 withIdentifier:v10];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v6);
  }

  v15 = [v4 presenterNotesParagraphStyleIdentifier];
  objc_opt_class();
  v16 = [a1 styleWithIdentifier:v15];
  v17 = TSUDynamicCast();

  if (v17)
  {
    if (a3)
    {
      [v17 willModifyForUpgrade];
      v18 = [a1 p_defaultPresenterNotesParagraphStylePropertyMap];
      [v17 removeAllValues];
      [v17 setValuesForProperties:v18];
    }
  }

  else
  {
    [a1 setIsLocked:0];
    [a1 willModifyForUpgrade];
    v19 = [a1 context];
    v17 = [a1 p_defaultPresenterNotesParagraphStyleWithContext:v19];

    [a1 addStyle:v17 withIdentifier:v15];
  }

  [a1 setIsLocked:v23];
  v20 = [v17 name];

  if (!v20)
  {
    v21 = sub_275DC204C([v17 willModifyForUpgrade]);
    v22 = [v21 localizedStringForKey:@"Presenter Notes" value:&stru_2884D8E20 table:@"Keynote"];
    [v17 setName:v22];
  }
}

id sub_275DD0CE8(void *a1)
{
  v2 = [MEMORY[0x277D81180] blackColor];
  v3 = [objc_alloc(MEMORY[0x277D80E80]) initWithMode:0 amount:1.17999995];
  v4 = [objc_opt_class() p_presenterNotesListStyleIdentifierForListLabelType:0];
  if (!v4)
  {
    v5 = MEMORY[0x277D81150];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStylesheet(KNPresenterNotesAdditions) p_defaultPresenterNotesParagraphStylePropertyMap]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/TSSStylesheet_KNPresenterNotesAdditions.m"];
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:123 isFatal:0 description:{"invalid nil value for '%{public}s'", "listStyleIdentifier"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  objc_opt_class();
  v8 = [a1 styleWithIdentifier:v4];
  v9 = TSUDynamicCast();

  v10 = [MEMORY[0x277D80EC8] defaultPropertyMap];
  [v10 setObject:@"HelveticaNeue" forProperty:16];
  v11 = [MEMORY[0x277D801F8] colorWithColor:v2];
  [v10 setObject:v11 forProperty:48];

  [v10 setObject:v3 forProperty:85];
  LODWORD(v12) = 22.0;
  [v10 setFloatValue:17 forProperty:v12];
  [v10 setFloatValue:80 forProperty:0.0];
  [v10 setFloatValue:81 forProperty:0.0];
  [v10 setFloatValue:82 forProperty:0.0];
  [v10 setIntValue:0 forProperty:86];
  [v10 setObject:v9 forProperty:103];

  return v10;
}

id sub_275DD0F10(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [a1 p_defaultPresenterNotesParagraphStylePropertyMap];
  v6 = [objc_alloc(MEMORY[0x277D80EC8]) initWithContext:v4 name:0 overridePropertyMap:v5 isVariation:0];

  return v6;
}

id sub_275DD0F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v8 = [MEMORY[0x277D80EA0] defaultPropertyMap];
    goto LABEL_16;
  }

  v4 = [&unk_2884F3E38 count];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:v4];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  if (v4)
  {
    v7 = v4;
    do
    {
      [v5 addObject:v6];
      --v7;
    }

    while (v7);
  }

  v8 = [MEMORY[0x277D80AB8] propertyMapWithPropertiesAndValues:{180, v5, 177, &unk_2884F3E38, 0}];
  if (a3 == 2)
  {
    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:v4];
    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:v4];
    v12 = [MEMORY[0x277D80EA0] defaultLabelString];
    v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:v4];
    for (i = [objc_alloc(MEMORY[0x277D80E98]) initWithScale:1 scaleWithText:0.800000012 baselineOffset:0.0]; v4; --v4)
    {
      [v9 addObject:&unk_2884F3D18];
      [v11 addObject:v12];
      [v15 addObject:i];
    }

    [v8 setObject:v9 forProperty:176];
    [v8 setObject:v11 forProperty:183];
    j = v15;
    goto LABEL_14;
  }

  if (a3 == 3)
  {
    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:v4];
    v10 = [MEMORY[0x277D80EA0] defaultLabelNumberType];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
    v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:v4];
    *&v13 = flt_275E71268[v10] / 24.0;
    for (j = [MEMORY[0x277CCABB0] numberWithFloat:v13];
    {
      [v9 addObject:v11];
      [v12 addObject:j];
    }

    v15 = [MEMORY[0x277D80EA0] defaultLabelGeometries];
    [v8 setObject:v12 forProperty:176];
    [v8 setObject:v9 forProperty:184];
    i = v15;
LABEL_14:
    [v8 setObject:v15 forProperty:181];
  }

LABEL_16:

  return v8;
}

uint64_t sub_275DD1268(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = [a1 p_defaultPresenterNotesListStylePropertyMapForListLabelType:a4];
  v8 = [objc_alloc(MEMORY[0x277D80EA0]) initWithContext:v6 name:0 overridePropertyMap:v7 isVariation:0];

  return v8;
}

id sub_275DD12E0(void *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277D81268]);
  v3 = objc_opt_class();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_275DD1514;
  aBlock[3] = &unk_27A698ED8;
  v15 = v2;
  v22 = v15;
  v4 = _Block_copy(aBlock);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [a1 p_boxedLabelTypesForNotesListStyles];
  v5 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [v3 p_presenterNotesListStyleIdentifierForListLabelType:{objc_msgSend(*(*(&v17 + 1) + 8 * v8), "unsignedIntegerValue", v15)}];
        objc_opt_class();
        v10 = [a1 styleWithIdentifier:v9];
        v11 = TSUDynamicCast();

        v4[2](v4, v11);
        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v6);
  }

  v12 = [a1 defaultPresenterNotesParagraphStyle];
  v4[2](v4, v12);

  v13 = v15;
  return v15;
}

void sub_275DD1514(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
    v4 = [v3 descendants];
    v5 = v4;
    if (v4)
    {
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v11;
        do
        {
          v9 = 0;
          do
          {
            if (*v11 != v8)
            {
              objc_enumerationMutation(v5);
            }

            [*(a1 + 32) addObject:*(*(&v10 + 1) + 8 * v9++)];
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        }

        while (v7);
      }
    }
  }
}

id sub_275DD1638(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [a1 styles];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    v7 = *MEMORY[0x277D810C0];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 styleIdentifier];
        v11 = [v10 hasPrefix:v7];

        if (v11)
        {
          [v2 addObject:v9];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  return v2;
}

double sub_275DD1CE4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(a3 "rep")];
  v6 = [objc_msgSend(a4 "rep")];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v40[0] = [MEMORY[0x277D80F00] textPropertiesNeedingCharacterAnimation];
  v40[1] = &unk_2884F3EE0;
  v41[0] = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
  v39[0] = [MEMORY[0x277D80F00] textPropertiesAffectingVisualStyle];
  v39[1] = &unk_2884F3EF0;
  v41[1] = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
  obj = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
  v7 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v36;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v35 + 1) + 8 * i);
        v13 = [v12 objectAtIndex:0];
        [objc_msgSend(v12 objectAtIndex:{1), "floatValue"}];
        v15 = v14;
        v16 = MEMORY[0x277D80F00];
        v17 = [a3 range];
        v19 = v18;
        v20 = [a4 range];
        v22 = [v16 numberOfDifferencesBetweenStyleProperties:v13 betweenOutgoingStorage:v5 outgoingRange:v17 incomingStorage:v19 incomingRange:v6 maxDifferencesBeforeReturning:{v20, v21, 3}];
        if (v22 >= 3)
        {
          v23 = 3;
        }

        else
        {
          v23 = v22;
        }

        v10 = v10 + (3 - v23) / 3.0 * v15;
      }

      v8 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 0.0;
  }

  v24 = [a3 hasListLabel];
  if (v24 == [a4 hasListLabel])
  {
    v10 = v10 + 0.5;
  }

  v25 = [a3 range];
  v27 = v26;
  v28 = [a4 range];
  v30 = v27 == v29 && v25 == v28;
  v31 = v10 + 0.001;
  if (!v30)
  {
    v31 = v10;
  }

  return v31 / 2.001;
}

void *sub_275DD1F74(void *a1, uint64_t a2, _BYTE *a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v79 = *MEMORY[0x277D85DE8];
  v46 = [MEMORY[0x277CBEB18] array];
  if (a3 == 1)
  {
    v48 = [MEMORY[0x277CCAB50] punctuationCharacterSet];
  }

  else
  {
    v48 = 0;
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v10 = [a4 countByEnumeratingWithState:&v69 objects:v78 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v70;
    v54 = a5;
    v41 = *v70;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v70 != v12)
        {
          objc_enumerationMutation(a4);
        }

        v57 = *(*(&v69 + 1) + 8 * i);
        if ([v57 isVisible])
        {
          v58 = [v57 range];
          v51 = v14;
          if (v14 >= a3 && (a7 != 2 || v14 == a3))
          {
            v15 = [v57 shouldTreatAsSingleCharacter];
            v16 = v51 == a3 || v15 == 0;
            if (v16 && ([v57 hasBackgroundShape] & 1) == 0)
            {
              v53 = [v57 unhandledIndexSet];
              if ([v53 count] >= a3)
              {
                v50 = [v57 stringValue];
                v56 = [v57 rep];
                v49 = [objc_msgSend(v56 "textStorageForTexture")];
                v65 = 0u;
                v66 = 0u;
                v67 = 0u;
                v68 = 0u;
                v62 = [a5 countByEnumeratingWithState:&v65 objects:v77 count:16];
                if (v62)
                {
                  v55 = *v66;
                  v42 = i;
                  v43 = v11;
                  do
                  {
                    v17 = 0;
                    v18 = v55;
                    do
                    {
                      if (*v66 != v18)
                      {
                        objc_enumerationMutation(a5);
                      }

                      v64 = *(*(&v65 + 1) + 8 * v17);
                      if ([v64 isVisible])
                      {
                        v19 = [v64 range];
                        if (v20 >= a3)
                        {
                          v21 = v19;
                          v22 = v20;
                          if (a7 != 2 || v20 == a3)
                          {
                            v23 = [v64 shouldTreatAsSingleCharacter];
                            if ((v22 == a3 || v23 == 0) && ([v64 hasBackgroundShape] & 1) == 0)
                            {
                              v63 = [v64 unhandledIndexSet];
                              if ([v63 count] >= a3)
                              {
                                v59 = [v64 stringValue];
                                v25 = [v64 rep];
                                v26 = [objc_msgSend(objc_msgSend(v56 "info")];
                                v52 = v25;
                                v16 = v26 == [objc_msgSend(objc_msgSend(v25 "info")];
                                a5 = v54;
                                if (v16)
                                {
                                  v27 = 0;
                                  do
                                  {
                                    v61 = v27;
                                    if ([v53 countOfIndexesInRange:{&v27[v58], a3}] == a3)
                                    {
                                      v60 = [v50 substringWithRange:{v61, a3}];
                                      if ([v60 length] != 1 || v49 < 6 || (objc_msgSend(v48, "characterIsMember:", objc_msgSend(v60, "characterAtIndex:", 0)) & 1) == 0)
                                      {
                                        if (![v60 hasPrefix:@" "] || (v28 = objc_msgSend(v57, "hasListLabel"), !v61) && v28)
                                        {
                                          if (([v60 hasSuffix:@" "] & 1) == 0)
                                          {
                                            v29 = 0;
                                            do
                                            {
                                              if ([v63 countOfIndexesInRange:{v29 + v21, a3}] == a3)
                                              {
                                                v30 = [v59 substringWithRange:{v29, a3}];
                                                if (![v60 compare:v30 options:0])
                                                {
                                                  v31 = ([v57 hasListLabel] & 1) != 0 ? 1 : objc_msgSend(v64, "hasListLabel");
                                                  [objc_msgSend(v56 "containedRep")];
                                                  if (!CGRectIsNull(v80))
                                                  {
                                                    [objc_msgSend(objc_msgSend(v56 "layout")];
                                                    [objc_msgSend(v52 "containedRep")];
                                                    if (!CGRectIsNull(v81))
                                                    {
                                                      TSUAddPoints();
                                                      [objc_msgSend(objc_msgSend(v52 "layout")];
                                                      TSUAddPoints();
                                                      v32 = MEMORY[0x277D80320];
                                                      TSUCenterOfRect();
                                                      v33 = [v32 matchObjectWithTextRep:v56 position:v60 stringValue:&v61[v58] stringRange:a3];
                                                      v75 = @"kMagicMoveTextChunkKey";
                                                      v76 = v57;
                                                      [v33 setAttributes:{objc_msgSend(MEMORY[0x277CBEB38], "dictionaryWithDictionary:", objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v76, &v75, 1))}];
                                                      v34 = MEMORY[0x277D80320];
                                                      TSUCenterOfRect();
                                                      v35 = [v34 matchObjectWithTextRep:v52 position:v30 stringValue:v29 + v21 stringRange:a3];
                                                      v73 = @"kMagicMoveTextChunkKey";
                                                      v74 = v64;
                                                      [v35 setAttributes:{objc_msgSend(MEMORY[0x277CBEB38], "dictionaryWithDictionary:", objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v74, &v73, 1))}];
                                                      v18 = v55;
                                                      [a1 p_mmAttributeMatchPercentWithOutgoingTextChunk:v57 incomingTextChunk:v64];
                                                      [v46 addObject:{objc_msgSend(MEMORY[0x277D80318], "matchWithOutgoingObject:incomingObject:matchType:attributeMatchPercent:textureDescription:", v33, v35, 3, a6)}];
                                                    }
                                                  }
                                                }
                                              }

                                              if (a7 > 2)
                                              {
                                                if ((a7 - 3) >= 2)
                                                {
                                                  continue;
                                                }
                                              }

                                              else if (a7)
                                              {
                                                if (a7 != 1)
                                                {
                                                  if (a7 == 2)
                                                  {
                                                    v29 += v22;
                                                  }

                                                  continue;
                                                }
                                              }

                                              else
                                              {
                                                v36 = MEMORY[0x277D81150];
                                                v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPShapeRep(KeynoteAdditions) p_potentialMatchesWithChunkLength:outgoingTextChunks:incomingTextChunks:textureDescription:textDeliveryType:]"];
                                                [v36 handleFailureInFunction:v37 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" isFatal:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/TSWPShapeRepAdditions.mm") description:{356, 0, "Undefined text delivery type, defaulting to By Object"}];
                                                v18 = v55;
                                                [MEMORY[0x277D81150] logBacktraceThrottled];
                                              }

                                              ++v29;
                                            }

                                            while (v29 <= v22 - a3);
                                          }
                                        }
                                      }
                                    }

                                    if (a7 > 2)
                                    {
                                      a5 = v54;
                                      v27 = v61;
                                      if ((a7 - 3) >= 2)
                                      {
                                        continue;
                                      }
                                    }

                                    else
                                    {
                                      v27 = v61;
                                      if (a7)
                                      {
                                        a5 = v54;
                                        if (a7 != 1)
                                        {
                                          if (a7 == 2)
                                          {
                                            v27 = &v51[v61];
                                          }

                                          continue;
                                        }
                                      }

                                      else
                                      {
                                        v38 = MEMORY[0x277D81150];
                                        v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPShapeRep(KeynoteAdditions) p_potentialMatchesWithChunkLength:outgoingTextChunks:incomingTextChunks:textureDescription:textDeliveryType:]"];
                                        [v38 handleFailureInFunction:v39 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" isFatal:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/TSWPShapeRepAdditions.mm") description:{372, 0, "Undefined text delivery type, defaulting to By Object"}];
                                        [MEMORY[0x277D81150] logBacktraceThrottled];
                                        v27 = v61;
                                        a5 = v54;
                                      }
                                    }

                                    ++v27;
                                  }

                                  while (v27 <= v51 - a3);
                                }
                              }
                            }
                          }
                        }
                      }

                      ++v17;
                    }

                    while (v17 != v62);
                    i = v42;
                    v11 = v43;
                    v12 = v41;
                    v62 = [a5 countByEnumeratingWithState:&v65 objects:v77 count:16];
                  }

                  while (v62);
                }
              }
            }
          }
        }
      }

      v11 = [a4 countByEnumeratingWithState:&v69 objects:v78 count:16];
    }

    while (v11);
  }

  return v46;
}

void *sub_275DD2744(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, uint64_t a5, void *a6)
{
  if (a4 < a4 + a5)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = a6;
    while (1)
    {
      v14 = [a3 valueForProperty:21 atCharIndex:a4 + v10 effectiveRange:0];
      if (v14)
      {
        v15 = [v14 intValue];
        if ((v15 - 1) < 2)
        {
          if (v11)
          {
            v16 = v11;
          }

          else
          {
            v16 = [a6 uppercaseString];
            v11 = v16;
          }

          goto LABEL_12;
        }

        if (v15 == 3)
        {
          if (v12)
          {
            v16 = v12;
          }

          else
          {
            v16 = [a6 capitalizedString];
            v12 = v16;
          }

LABEL_12:
          v17 = [v16 substringWithRange:{v10, 1}];
          if (v17)
          {
            v13 = [v13 stringByReplacingCharactersInRange:v10 withString:{1, v17}];
          }
        }
      }

      if (a5 == ++v10)
      {
        return v13;
      }
    }
  }

  return a6;
}

unint64_t sub_275DD2848(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v106 = *MEMORY[0x277D85DE8];
  if (qword_280A3C0A8 != -1)
  {
    sub_275E5B598();
  }

  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  obj = [a3 arrayByAddingObjectsFromArray:a4];
  v74 = [obj countByEnumeratingWithState:&v100 objects:v105 count:16];
  v10 = 0;
  if (v74)
  {
    v72 = *v101;
    v11 = 0x277CCA000uLL;
    v93 = a5;
    do
    {
      v12 = 0;
      do
      {
        if (*v101 != v72)
        {
          objc_enumerationMutation(obj);
        }

        v75 = v12;
        v13 = *(*(&v100 + 1) + 8 * v12);
        v90 = [v13 stageChunksForDeliveryStyle:objc_msgSend(a8 byGlyphStyle:{"deliveryStyle"), objc_msgSend(a8, "byGlyphStyle")}];
        v14 = [a3 containsObject:v13];
        v15 = [v13 textStorageForTexture];
        v16 = [v15 range];
        v18 = v17;
        v95 = [v15 string];
        v96 = 0u;
        v97 = 0u;
        v98 = 0u;
        v99 = 0u;
        v76 = [objc_msgSend(objc_msgSend(v13 "layout")];
        v78 = [v76 countByEnumeratingWithState:&v96 objects:v104 count:16];
        if (v78)
        {
          v19 = v16 + v18;
          v77 = *v97;
          v20 = a7;
          if (v14)
          {
            v20 = a6;
          }

          v92 = v20;
          v21 = v93;
          do
          {
            v22 = 0;
            do
            {
              if (*v97 != v77)
              {
                objc_enumerationMutation(v76);
              }

              v23 = *(*(&v96 + 1) + 8 * v22);
              v79 = v22;
              if (v21 == 1)
              {
                v24 = [v23 range];
                v26 = v25;
                v27 = objc_opt_new();
                [v27 setRep:v13];
                [v27 setRange:{v24, v26}];
                [v27 setStringValue:{objc_msgSend(v95, "substringWithRange:", v24, v26)}];
                [v27 setHasListLabel:{objc_msgSend(v15, "paragraphHasListLabelAtCharIndex:", v24)}];
                [v27 setUnhandledIndexSet:{objc_msgSend(MEMORY[0x277CCAB58], "indexSetWithIndexesInRange:", v24, v26)}];
                [v27 setStageIndex:0];
                [v92 addObject:v27];

                v21 = v93;
                if (v10 <= v26)
                {
                  v10 = v26;
                }
              }

              else if ([v23 lineCount])
              {
                v28 = 0;
                v80 = v23;
                while (1)
                {
                  v81 = v28;
                  v29 = [v23 rangeOfLineFragmentAtIndex:v28];
                  v31 = v29 + v30;
                  if (v29 < v29 + v30)
                  {
                    break;
                  }

LABEL_91:
                  v23 = v80;
                  v28 = v81 + 1;
                  if (v81 + 1 >= [v80 lineCount])
                  {
                    goto LABEL_92;
                  }
                }

                v32 = v29;
                while (2)
                {
                  v33 = v31 - v32;
                  [v15 attachmentIndexRangeForTextRange:{v32, v31 - v32}];
                  if (v21 == 2 || v34)
                  {
                    for (i = v31 > v32; v32 < v31; i = ++v32 < v31)
                    {
                      if (v32 >= v19)
                      {
                        break;
                      }

                      if (![objc_msgSend(*(v11 + 2304) "whitespaceAndNewlineCharacterSet")])
                      {
                        goto LABEL_32;
                      }
                    }

                    if (i)
                    {
LABEL_32:
                      if (v21 == 2)
                      {
                        v36 = [*(v11 + 2304) tswp_invisibleCharacterSet];
                      }

                      else
                      {
                        v36 = qword_280A3C0A0;
                      }

                      v37 = [v95 rangeOfCharacterFromSet:v36 options:0 range:{v32, v31 - v32}];
                      v38 = v37 - v32;
                      if (v37 == 0x7FFFFFFFFFFFFFFFLL)
                      {
                        v38 = v31 - v32;
                      }

                      if (v37 == v32)
                      {
                        v33 = 1;
                      }

                      else
                      {
                        v33 = v38;
                      }

                      if (!v33)
                      {
                        goto LABEL_49;
                      }

                      goto LABEL_41;
                    }
                  }

                  else
                  {
                    if (!v33)
                    {
                      goto LABEL_49;
                    }

LABEL_41:
                    if (v32 >= v19)
                    {
LABEL_49:
                      v39 = v32;
                      if (v33)
                      {
                        goto LABEL_50;
                      }
                    }

                    else
                    {
                      v39 = v32;
                      while (1)
                      {
                        [v15 characterAtIndex:v39];
                        if (!IsWhitespaceCharacter())
                        {
                          break;
                        }

                        [objc_msgSend(v13 "containedRep")];
                        if (v40 != 0.0)
                        {
                          break;
                        }

                        ++v39;
                        if (!--v33 || v39 >= v19)
                        {
                          if (v33)
                          {
                            break;
                          }

                          goto LABEL_57;
                        }
                      }

LABEL_50:
                      while (v39 + v33 - 1 < v19)
                      {
                        [v15 characterAtIndex:?];
                        if (!IsWhitespaceCharacter())
                        {
                          break;
                        }

                        if (!--v33)
                        {
                          goto LABEL_57;
                        }
                      }

                      if (v33 == 1)
                      {
                        [v15 attachmentIndexRangeForTextRange:{v39, 1}];
                        if (v41)
                        {
                          v33 = 1;
                          goto LABEL_86;
                        }
                      }
                    }

LABEL_57:
                    if ([v13 p_hasContentForRange:v39 labelOnly:{v33, 1}])
                    {
                      v42 = [a1 p_stringByApplyingCapitalizationPropertyFromStorage:v15 withRange:v39 toString:{v33, objc_msgSend(v95, "substringWithRange:", v39, v33)}];
                      v94 = v10;
                      if (v39 == [v15 paragraphStartAtCharIndex:v32])
                      {
                        v43 = [v15 paragraphHasListLabelAtCharIndex:v32];
                      }

                      else
                      {
                        v43 = 0;
                      }

                      v44 = objc_opt_new();
                      [v44 setRep:v13];
                      [v44 setRange:{v39, v33}];
                      [v44 setStringValue:v42];
                      v88 = v43;
                      [v44 setHasListLabel:v43];
                      [v44 setUnhandledIndexSet:{objc_msgSend(MEMORY[0x277CCAB58], "indexSetWithIndexesInRange:", v39, v33)}];
                      [v44 setStageIndex:{objc_msgSend(v13, "stageIndexForStorageRange:forTextureDescription:stageChunks:", v39, v33, a8, v90)}];
                      [v44 setShouldTreatAsSingleCharacter:{objc_msgSend(objc_msgSend(v13, "containedRep"), "charCountOfGlyphStartingAtCharIndex:", v39) == v33}];
                      if ([v44 shouldTreatAsSingleCharacter])
                      {
                        v45 = [v15 dropCapStyleAtCharIndex:v39];
                        if (v45)
                        {
                          [v44 setHasBackgroundShape:{objc_msgSend(objc_msgSend(v45, "objectForProperty:", 256), "shapeEnabled")}];
                        }
                      }

                      [v92 addObject:v44];

                      v21 = v93;
                      if (v93 == 2 && v33 >= 2 && ([v44 shouldTreatAsSingleCharacter] & 1) == 0)
                      {
                        v84 = [v44 unhandledIndexSet];
                        v46 = [v95 rangeOfCharacterFromSet:objc_msgSend(MEMORY[0x277CCA900] options:"punctuationCharacterSet") range:{0, v39, v33}];
                        if (v46 == v39)
                        {
                          v48 = v47;
                          v49 = v39;
                          v50 = v33;
                          v51 = v33;
                          v52 = v33 - v47;
                          if (v33 >= v47)
                          {
                            if (v33 > v47)
                            {
                              v53 = v46;
                              v85 = v33 - v47;
                              v54 = objc_opt_new();
                              [v54 setRep:v13];
                              [v54 setRange:{v53, v48}];
                              [v54 setStringValue:{objc_msgSend(v95, "substringWithRange:", v53, v48)}];
                              [v54 setHasListLabel:v88];
                              [v54 setUnhandledIndexSet:v84];
                              [v54 setStageIndex:{objc_msgSend(v13, "stageIndexForStorageRange:forTextureDescription:stageChunks:", v53, v48, a8, v90)}];
                              [v92 addObject:v54];

                              v52 = v85;
                            }

                            v49 = v48 + v39;
                            v50 = v52;
                            v51 = v52;
                          }
                        }

                        else
                        {
                          v49 = v39;
                          v50 = v33;
                          v51 = v33;
                        }

                        v86 = v51;
                        v55 = v49;
                        v56 = [a1 p_stringByApplyingCapitalizationPropertyFromStorage:v15 withRange:v49 toString:{v50, objc_msgSend(v95, "substringWithRange:", v49, v50)}];
                        v57 = [v56 stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x277CCA900], "punctuationCharacterSet")}];
                        v58 = [v57 length] + v55;
                        v83 = v57;
                        v59 = [v57 length];
                        v82 = v55;
                        if (v58 <= v55)
                        {
LABEL_76:
                          v60 = v86;
                        }

                        else
                        {
                          v60 = v86;
                          v61 = v86 - v59;
                          if (v86 != v59)
                          {
                            v86 = v59;
                            v62 = objc_opt_new();
                            [v62 setRep:v13];
                            [v62 setRange:{v58, v61}];
                            [v62 setStringValue:{objc_msgSend(v95, "substringWithRange:", v58, v61)}];
                            [v62 setHasListLabel:0];
                            [v62 setUnhandledIndexSet:v84];
                            [v62 setStageIndex:{objc_msgSend(v13, "stageIndexForStorageRange:forTextureDescription:stageChunks:", v58, v61, a8, v90)}];
                            [v92 addObject:v62];

                            goto LABEL_76;
                          }
                        }

                        v63 = v60;
                        v64 = [v83 length];
                        v65 = v63;
                        v21 = 2;
                        if (v64 && v65 && v33 != v65)
                        {
                          v87 = v65;
                          v66 = objc_opt_new();
                          [v66 setRep:v13];
                          [v66 setRange:{v82, v87}];
                          [v66 setStringValue:v83];
                          if (v39 == v82)
                          {
                            v67 = v88;
                          }

                          else
                          {
                            v67 = 0;
                          }

                          [v66 setHasListLabel:v67];
                          [v66 setUnhandledIndexSet:v84];
                          [v66 setStageIndex:{objc_msgSend(v13, "stageIndexForStorageRange:forTextureDescription:stageChunks:", v82, v87, a8, v90)}];
                          [v92 addObject:v66];

                          v21 = 2;
                        }
                      }

                      v10 = v94;
                      if (v94 <= v33)
                      {
                        v10 = v33;
                      }
                    }

LABEL_86:
                    if (v32 + 1 > v33 + v39)
                    {
                      ++v32;
                    }

                    else
                    {
                      v32 = v33 + v39;
                    }

                    v11 = 0x277CCA000;
                  }

                  if (v32 >= v31)
                  {
                    goto LABEL_91;
                  }

                  continue;
                }
              }

LABEL_92:
              v22 = v79 + 1;
            }

            while (v79 + 1 != v78);
            v78 = [v76 countByEnumeratingWithState:&v96 objects:v104 count:16];
          }

          while (v78);
        }

        v12 = v75 + 1;
      }

      while (v75 + 1 != v74);
      v74 = [obj countByEnumeratingWithState:&v100 objects:v105 count:16];
    }

    while (v74);
  }

  return v10;
}

id sub_275DD31A0()
{
  result = [MEMORY[0x277CCA900] characterSetWithCharactersInString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%C", 65532)}];
  qword_280A3C0A0 = result;
  return result;
}

uint64_t sub_275DD3200(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, char *a7)
{
  v12 = [a3 listStyleAtCharIndex:a4 effectiveRange:0];
  v13 = [a5 listStyleAtCharIndex:a6 effectiveRange:0];
  v14 = 0;
  if (!v12)
  {
    result = 0;
    goto LABEL_21;
  }

  v15 = v13;
  result = 0;
  if (!v15)
  {
    goto LABEL_21;
  }

  v17 = [a3 paragraphIndexAtCharIndex:a4];
  v18 = [a5 paragraphIndexAtCharIndex:a6];
  v19 = [a3 listNumberForParagraphIndex:v17 numberingData:v25];
  v20 = [a5 listNumberForParagraphIndex:v18 numberingData:v24];
  if (v25[0] != v24[0])
  {
    v14 = 0;
    result = 0;
    goto LABEL_21;
  }

  v21 = v20;
  v14 = 0;
  result = 1;
  if (v25[0] > 1)
  {
    if (v25[0] == 4)
    {
      v22 = MEMORY[0x277D81150];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPShapeRep(KeynoteAdditions) p_listLabelsAreEqualWithOutgoingStorage:outgoingCharIndex:incomingStorage:incomingCharIndex:shouldMatch:]"];
      [v22 handleFailureInFunction:v23 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" isFatal:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/TSWPShapeRepAdditions.mm") description:{701, 0, "Invalid List Label Type!"}];
      [MEMORY[0x277D81150] logBacktraceThrottled];
      v14 = 0;
LABEL_15:
      result = 1;
      goto LABEL_21;
    }

    if (v25[0] != 3)
    {
      if (v25[0] != 2)
      {
        goto LABEL_21;
      }

LABEL_20:
      v14 = 1;
      goto LABEL_21;
    }

    if (v19 == v21 && ([objc_msgSend(v12 "numberTypeName")] & 1) != 0)
    {
      v14 = 1;
      goto LABEL_15;
    }

LABEL_19:
    result = 0;
    goto LABEL_20;
  }

  if (!v25[0])
  {
    goto LABEL_20;
  }

  if (v25[0] == 1)
  {
    goto LABEL_19;
  }

LABEL_21:
  if (a7)
  {
    *a7 = v14;
  }

  return result;
}

id sub_275DD33D8(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (!a7 || ![a7 p_hasContentForRange:a8 labelOnly:{a9, a11}])
  {
    return 0;
  }

  v20 = objc_alloc_init(MEMORY[0x277D803E0]);
  [v20 setRep:a7];
  v21 = *(MEMORY[0x277CBF3A0] + 16);
  v33 = *MEMORY[0x277CBF3A0];
  v34 = v21;
  LOBYTE(v31) = 0;
  v22 = [a7 newTextureRenderableForRange:a8 includeListLabel:a9 isMagicMove:a11 desiredContentRect:1 textureByGlyphStyle:a10 includeGroupedShadow:1 groupedShadowOnly:a1 textureBounds:{a2, a3, a4, v31, &v33}];
  if (v22)
  {
    v23 = v22;
    [v20 addRenderable:v22];
  }

  else
  {
    v24 = MEMORY[0x277D81150];
    v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPShapeRep(KeynoteAdditions) p_textureSetFromRep:range:textureByGlyphStyle:includeListLabel:desiredContentRect:]"];
    [v24 handleFailureInFunction:v25 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" isFatal:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/TSWPShapeRepAdditions.mm") description:{736, 0, "nil texture!"}];
    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  [v20 setIsMagicMove:1];
  [v20 setShouldTransformUsingTextureCenter:1];
  [v20 setObjectType:2];
  [a7 setTextureAttributes:v20 textureBounds:{v33, v34}];
  [objc_msgSend(a7 "info")];
  [v20 setTextureOpacity:v26];
  [v20 setLayerGeometry];
  v27 = [objc_msgSend(a7 "textStorageForTexture")];
  LOBYTE(v32) = 0;
  v29 = [a7 newTextureRenderableForRange:v27 includeListLabel:v28 isMagicMove:a11 desiredContentRect:1 textureByGlyphStyle:a10 includeGroupedShadow:1 groupedShadowOnly:*MEMORY[0x277CBF398] textureBounds:{*(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24), v32, 0}];
  [v29 frame];
  [v20 setBoundingRect:?];
  [v29 teardown];

  return v20;
}