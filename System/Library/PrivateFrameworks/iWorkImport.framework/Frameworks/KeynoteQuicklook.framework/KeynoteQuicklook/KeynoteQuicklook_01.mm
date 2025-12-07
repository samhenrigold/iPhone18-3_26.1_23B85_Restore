void sub_275DD3604(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, unsigned int a8, void *a9, uint64_t a10, uint64_t a11, unsigned int a12, unsigned __int8 a13)
{
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  if (a5 && [a5 p_hasContentForRange:a6 labelOnly:{a7, a13}])
  {
    BYTE1(v42) = 1;
    LOBYTE(v42) = a13;
    [a5 p_getBoundsRect:0 contentRect:&v44 transform:0 applyReflection:0 applyShadow:0 forRange:a6 includeListLabel:a7 isMagicMove:v42];
    TSURectWithInverseNormalizedRect();
    v48.origin.x = v23;
    v48.origin.y = v24;
    v48.size.width = v25;
    v48.size.height = v26;
    v45.origin.x = x;
    v45.origin.y = y;
    v45.size.width = width;
    v45.size.height = height;
    v46 = CGRectUnion(v45, v48);
    x = v46.origin.x;
    y = v46.origin.y;
    width = v46.size.width;
    height = v46.size.height;
  }

  if (a9 && [a9 p_hasContentForRange:a10 labelOnly:{a11, a13}])
  {
    BYTE1(v42) = 1;
    LOBYTE(v42) = a13;
    [a9 p_getBoundsRect:0 contentRect:&v44 transform:0 applyReflection:0 applyShadow:0 forRange:a10 includeListLabel:a11 isMagicMove:v42];
    TSURectWithInverseNormalizedRect();
    v49.origin.x = v27;
    v49.origin.y = v28;
    v49.size.width = v29;
    v49.size.height = v30;
    v47.origin.x = x;
    v47.origin.y = y;
    v47.size.width = width;
    v47.size.height = height;
    CGRectUnion(v47, v49);
  }

  TSURectWithInverseNormalizedRect();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  if (a5 && [a5 p_hasContentForRange:a6 labelOnly:{a7, a13}])
  {
    v39 = [a1 p_textureSetFromRep:a5 range:a6 textureByGlyphStyle:a7 includeListLabel:a8 desiredContentRect:{a13, v32, v34, v36, v38}];
    if (![objc_msgSend(v39 "visibleTextures")])
    {
      v39 = 0;
    }

    if (!a9)
    {
LABEL_20:
      v41 = 0;
      if (!a3)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v39 = 0;
    if (!a9)
    {
      goto LABEL_20;
    }
  }

  if (![a9 p_hasContentForRange:a10 labelOnly:{a11, a13}])
  {
    goto LABEL_20;
  }

  v40 = [a1 p_textureSetFromRep:a9 range:a10 textureByGlyphStyle:a11 includeListLabel:a12 desiredContentRect:{a13, v32, v34, v36, v38}];
  if ([objc_msgSend(v40 "visibleTextures")])
  {
    v41 = v40;
  }

  else
  {
    v41 = 0;
  }

  if (a3)
  {
LABEL_21:
    *a3 = v39;
  }

LABEL_22:
  if (a4)
  {
    *a4 = v41;
  }
}

void *sub_275DD38A4(void *a1, uint64_t a2, void *a3)
{
  v85 = *MEMORY[0x277D85DE8];
  v69 = [MEMORY[0x277CBEB18] array];
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  obj = a3;
  v67 = [a3 countByEnumeratingWithState:&v80 objects:v84 count:16];
  if (v67)
  {
    v66 = *v81;
    do
    {
      v4 = 0;
      do
      {
        if (*v81 != v66)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v80 + 1) + 8 * v4);
        v6 = [objc_msgSend(v5 "outgoingObject")];
        v77 = v5;
        v7 = [objc_msgSend(v5 "incomingObject")];
        v8 = v7;
        v9 = v7 != 0;
        v68 = v4;
        if (!(v6 | v7))
        {
          v12 = MEMORY[0x277D81150];
          v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPShapeRep(KeynoteAdditions) magicMoveAnimationMatchesFromMatches:description:]"];
          [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" isFatal:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/TSWPShapeRepAdditions.mm") description:{848, 0, "No incoming NOR outgoing rep!"}];
          [MEMORY[0x277D81150] logBacktraceThrottled];
          v14 = 0;
          v9 = 0;
          goto LABEL_19;
        }

        if (v6)
        {
          v10 = [objc_msgSend(objc_msgSend(objc_msgSend(v5 "outgoingObject")];
          if (v8)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v10 = 0;
          if (v7)
          {
LABEL_9:
            v11 = [objc_msgSend(objc_msgSend(objc_msgSend(v77 "incomingObject")];
            goto LABEL_13;
          }
        }

        v11 = 0;
LABEL_13:
        v14 = v10 | v11;
        if (v6)
        {
          v15 = [objc_msgSend(v77 "outgoingObject")];
          if (![v6 p_hasContentForRange:v15 labelOnly:{v16, v14 & 1}])
          {
            goto LABEL_48;
          }

          if (!v8)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v9 = 0;
          if (!v8)
          {
            goto LABEL_19;
          }
        }

        v17 = [objc_msgSend(v77 "incomingObject")];
        if (![v8 p_hasContentForRange:v17 labelOnly:{v18, v14 & 1}])
        {
          goto LABEL_48;
        }

LABEL_19:
        v19 = [objc_msgSend(v77 "outgoingObject")];
        v21 = v20;
        v22 = [objc_msgSend(v77 "incomingObject")];
        v24 = v23;
        if (v9)
        {
          v25 = v22;
          v26 = [v6 textStorageForTexture];
          v27 = [v8 textStorageForTexture];
          v28 = MEMORY[0x277D80F00];
          v29 = [MEMORY[0x277D80F00] textPropertiesNeedingCharacterAnimation];
          v30 = v28;
          v31 = v27;
          v32 = [v30 numberOfDifferencesBetweenStyleProperties:v29 betweenOutgoingStorage:v26 outgoingRange:v19 incomingStorage:v21 incomingRange:v27 maxDifferencesBeforeReturning:{v25, v24, 1}];
          v71 = v32 > 0;
          v70 = v32 < 1;
          if (v32 < 1)
          {
            v33 = 1;
          }

          else
          {
            v33 = v21;
          }

          if (v32 >= 1)
          {
            v24 = 1;
          }

          v73 = v24;
          v74 = v33;
          if (v32 >= 1)
          {
            v21 = 1;
          }

          v75 = v21;
          if (v14)
          {
            v34 = v32;
            v79 = 0;
            v35 = v31;
            v36 = [a1 p_listLabelsAreEqualWithOutgoingStorage:v26 outgoingCharIndex:v19 incomingStorage:v31 incomingCharIndex:v25 shouldMatch:&v79];
            if (v34 < 1)
            {
              v14 = v36;
            }

            else
            {
              v14 = 0;
            }

            if ((v14 & 1) == 0)
            {
              v37 = v36;
              v38 = [v26 rangeByExtendingRangeToLineBreak:{v19, v21}];
              v39 = [v35 rangeByExtendingRangeToLineBreak:{v25, v73}];
              v78 = 0uLL;
              BYTE4(v64) = 1;
              LODWORD(v64) = v71;
              [a1 p_getOutgoingTextureSet:&v78 + 8 incomingTextureSet:&v78 withOutgoingRep:v6 outgoingChunkRange:v38 outgoingTextureByGlyphStyle:0 incomingRep:v8 incomingChunkRange:v39 incomingTextureByGlyphStyle:0 includeListLabels:v64];
              v40 = v78;
              if (v78 != 0)
              {
                if (v79 == 1)
                {
                  v41 = objc_alloc(MEMORY[0x277D80310]);
                  v42 = [v77 matchType];
                  v43 = [v41 initWithMatchType:v42 outgoingTexture:*(&v78 + 1) incomingTexture:v78];
                  v44 = v43;
                  if ((v37 & 1) == 0)
                  {
                    [v43 setShouldDisableTextMorphing:1];
                  }

LABEL_54:
                  [v69 addObject:v44];
                }

                else
                {
                  if (*(&v78 + 1))
                  {
                    v60 = objc_alloc(MEMORY[0x277D80310]);
                    [v69 addObject:{objc_msgSend(v60, "initWithMatchType:outgoingTexture:incomingTexture:", 5, *(&v78 + 1), 0)}];
                    v40 = v78;
                  }

                  if (v40)
                  {
                    v61 = objc_alloc(MEMORY[0x277D80310]);
                    v44 = [v61 initWithMatchType:5 outgoingTexture:0 incomingTexture:v78];
                    goto LABEL_54;
                  }
                }
              }
            }
          }

          else
          {
            v14 = 0;
          }

          if (!v74)
          {
            goto LABEL_48;
          }

          goto LABEL_39;
        }

        v75 = v21;
        v71 = 0;
        v70 = 1;
        v73 = v23;
        v74 = 1;
LABEL_39:
        for (i = 0; i != v74; ++i)
        {
          v46 = [objc_msgSend(v77 "outgoingObject")];
          v47 = [objc_msgSend(v77 "incomingObject")] + i;
          if (v6 && ([v6 p_hasContentForRange:v46 + i labelOnly:{v75, v14 & 1}] & 1) != 0 || v8 && objc_msgSend(v8, "p_hasContentForRange:labelOnly:", v47, v73, v14 & 1))
          {
            v76 = 1;
            v48 = [MEMORY[0x277D80F00] numberOfDifferencesBetweenStyleProperties:objc_msgSend(MEMORY[0x277D80F00] betweenOutgoingStorage:"textPropertiesAffectingVisualStyleExceptSize") outgoingRange:objc_msgSend(v6 incomingStorage:"textStorageForTexture") incomingRange:v46 + i maxDifferencesBeforeReturning:{v75, objc_msgSend(v8, "textStorageForTexture"), v47, v73, 1}];
            if (!v70)
            {
              v76 = [a1 p_shouldDisableTextMorphingBetweenOutgoingRep:v6 outgoingChunkRange:v46 + i incomingRep:v75 incomingChunkRange:{v8, v47, v73}];
            }

            v78 = 0uLL;
            BYTE4(v64) = v14 & 1;
            LODWORD(v64) = v71;
            [a1 p_getOutgoingTextureSet:&v78 + 8 incomingTextureSet:&v78 withOutgoingRep:v6 outgoingChunkRange:v46 + i outgoingTextureByGlyphStyle:v75 incomingRep:v8 incomingChunkRange:v47 incomingTextureByGlyphStyle:v73 includeListLabels:v64];
            [objc_msgSend(objc_msgSend(objc_msgSend(v77 "outgoingObject")];
            v50 = v49;
            v51 = *(&v78 + 1);
            [*(&v78 + 1) textureOpacity];
            [v51 setTextureOpacity:v50 * v52];
            [objc_msgSend(objc_msgSend(objc_msgSend(v77 "incomingObject")];
            v54 = v53;
            v55 = v78;
            [v78 textureOpacity];
            [v55 setTextureOpacity:v54 * v56];
            v57 = objc_alloc(MEMORY[0x277D80310]);
            v58 = [v77 matchType];
            v59 = [v57 initWithMatchType:v58 outgoingTexture:*(&v78 + 1) incomingTexture:v78];
            [v59 setIsTextStyleIdenticalExceptSize:v48 == 0];
            [v59 setShouldDisableTextMorphing:v76];
            [v69 addObject:v59];
          }
        }

LABEL_48:
        v4 = v68 + 1;
      }

      while (v68 + 1 != v67);
      v62 = [obj countByEnumeratingWithState:&v80 objects:v84 count:16];
      v67 = v62;
    }

    while (v62);
  }

  return v69;
}

BOOL sub_275DD3F64(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v42 = *MEMORY[0x277D85DE8];
  v11 = [MEMORY[0x277CBEB18] array];
  [v11 tsu_addNonNilObject:a3];
  [v11 tsu_addNonNilObject:a6];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v38;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v38 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v37 + 1) + 8 * i);
        v18 = [objc_msgSend(v17 "info")];
        v19 = v18;
        if (v18)
        {
          if ([v18 isEnabled])
          {
            [v19 opacity];
            LODWORD(v19) = v20 > 0.0;
          }

          else
          {
            LODWORD(v19) = 0;
          }
        }

        if ([objc_msgSend(v17 "info")] && (objc_msgSend(objc_msgSend(objc_msgSend(v17, "info"), "fill"), "isClear") & 1) == 0)
        {
          v21 = [objc_msgSend(objc_msgSend(v17 "info")] ^ 1;
        }

        else
        {
          v21 = 1;
        }

        v22 = v21 | v14;
        if (v19)
        {
          v14 = v22;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v13);
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  v23 = [objc_msgSend(a3 "info")];
  v24 = [objc_msgSend(a6 "info")];
  if (v23)
  {
    [v23 opacity];
    if (v25 > 0.0)
    {
      if (v24)
      {
        [v24 opacity];
      }

      return 1;
    }
  }

  if (v24)
  {
    [v24 opacity];
    v27 = a5;
    if ((v26 > 0.0) | v14 & 1)
    {
      return 1;
    }
  }

  else
  {
    v27 = a5;
    if (v14)
    {
      return 1;
    }
  }

  v28 = 1;
  v29 = [objc_msgSend(a3 "containedRep")];
  if (((v29 | [objc_msgSend(a6 "containedRep")]) & 0x2000) == 0)
  {
    v28 = [MEMORY[0x277D80F00] shouldDisableTextMorphsFromPropertiesBetweenOutgoingStorage:objc_msgSend(a3 outgoingRange:"textStorageForTexture") incomingStorage:a4 incomingRange:{v27, objc_msgSend(a6, "textStorageForTexture"), a7, a8}];
    if (!v28 && v27 && a8)
    {
      [objc_msgSend(a3 "textStorageForTexture")];
      v31 = v30;
      [objc_msgSend(a6 "textStorageForTexture")];
      return (v31 | v32) != 0;
    }
  }

  return v28;
}

void *sub_275DD4258(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v112 = *MEMORY[0x277D85DE8];
  v73 = [MEMORY[0x277CBEB18] array];
  v12 = [MEMORY[0x277CBEB18] array];
  v13 = [MEMORY[0x277CBEB18] array];
  v62 = a1;
  v72 = a3;
  v74 = a5;
  v61 = [a1 p_longestChunkInOutgoingObjects:a3 incomingObjects:a4 textDeliveryType:a6 addOutgoingChunksToArray:v12 addIncomingChunksToArray:v13 textureDescription:a5];
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v63 = v13;
  v64 = v12;
  v110[0] = v12;
  v110[1] = v13;
  obj = [MEMORY[0x277CBEA60] arrayWithObjects:v110 count:2];
  v68 = [obj countByEnumeratingWithState:&v100 objects:v111 count:16];
  if (v68)
  {
    v66 = *v101;
    do
    {
      v14 = 0;
      do
      {
        if (*v101 != v66)
        {
          v15 = v14;
          objc_enumerationMutation(obj);
          v14 = v15;
        }

        v70 = v14;
        v75 = *(*(&v100 + 1) + 8 * v14);
        v16 = [MEMORY[0x277CBEB18] array];
        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        v17 = [v75 countByEnumeratingWithState:&v96 objects:v109 count:16];
        if (v17)
        {
          v18 = *v97;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v97 != v18)
              {
                objc_enumerationMutation(v75);
              }

              v20 = *(*(&v96 + 1) + 8 * i);
              v21 = [a7 objectForKey:{objc_msgSend(v20, "rep")}];
              if (!v21)
              {
                v22 = MEMORY[0x277D81150];
                v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPShapeRep(KeynoteAdditions) magicMoveTextMatchesBetweenOutgoingObjects:andIncomingObjects:textureDescription:textDeliveryType:repToOpacityTextRangeDictMap:]"];
                [v22 handleFailureInFunction:v23 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" isFatal:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/TSWPShapeRepAdditions.mm") description:{1122, 0, "invalid nil value for '%{public}s'", "opacityRangeDict"}];
                [MEMORY[0x277D81150] logBacktraceThrottled];
              }

              v92 = 0;
              v93 = &v92;
              v94 = 0x2020000000;
              v95 = 0x3FF0000000000000;
              v91[0] = MEMORY[0x277D85DD0];
              v91[1] = 3221225472;
              v91[2] = sub_275DD4A8C;
              v91[3] = &unk_27A698F00;
              v91[4] = v20;
              v91[5] = &v92;
              [v21 enumerateKeysAndObjectsUsingBlock:v91];
              [v20 setOpacityFromRenderer:v93[3]];
              if (v93[3] == 0.0)
              {
                [v20 setIsVisible:0];
                [v16 addObject:v20];
              }

              _Block_object_dispose(&v92, 8);
            }

            v17 = [v75 countByEnumeratingWithState:&v96 objects:v109 count:16];
          }

          while (v17);
        }

        [v75 removeObjectsInArray:v16];
        v14 = v70 + 1;
      }

      while (v70 + 1 != v68);
      v68 = [obj countByEnumeratingWithState:&v100 objects:v111 count:16];
    }

    while (v68);
  }

  v24 = v61;
  if (v61)
  {
    do
    {
      v25 = v24;
      v26 = [v62 p_potentialMatchesWithChunkLength:? outgoingTextChunks:? incomingTextChunks:? textureDescription:? textDeliveryType:?];
      if ([v26 count])
      {
        v27 = objc_autoreleasePoolPush();
        v28 = [MEMORY[0x277D80328] matchingEngine];
        [v28 addMatches:v26];
        v29 = [v28 matchResults];
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v30 = [v29 countByEnumeratingWithState:&v87 objects:v108 count:16];
        if (v30)
        {
          v31 = *v88;
          do
          {
            for (j = 0; j != v30; ++j)
            {
              if (*v88 != v31)
              {
                objc_enumerationMutation(v29);
              }

              v33 = *(*(&v87 + 1) + 8 * j);
              v34 = [objc_msgSend(objc_msgSend(objc_msgSend(v33 "outgoingObject")];
              v35 = [objc_msgSend(objc_msgSend(objc_msgSend(v33 "incomingObject")];
              v36 = [objc_msgSend(v33 "outgoingObject")];
              [v34 removeIndexesInRange:{v36, v37}];
              v38 = [objc_msgSend(v33 "incomingObject")];
              [v35 removeIndexesInRange:{v38, v39}];
            }

            v30 = [v29 countByEnumeratingWithState:&v87 objects:v108 count:16];
          }

          while (v30);
        }

        [v73 addObjectsFromArray:v29];
        objc_autoreleasePoolPop(v27);
      }

      v24 = v25 - 1;
    }

    while (v25 != 1);
  }

  v67 = [v64 arrayByAddingObjectsFromArray:v63];
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v71 = [v67 countByEnumeratingWithState:&v83 objects:v107 count:16];
  if (v71)
  {
    v69 = *v84;
    do
    {
      for (k = 0; k != v71; k = k + 1)
      {
        if (*v84 != v69)
        {
          objc_enumerationMutation(v67);
        }

        v78 = *(*(&v83 + 1) + 8 * k);
        if ([v78 isVisible])
        {
          v40 = [v78 rep];
          v41 = [v78 unhandledIndexSet];
          v42 = [objc_msgSend(v40 "textStorageForTexture")];
          v43 = [MEMORY[0x277CBEB18] array];
          v44 = [v41 firstIndex];
          v45 = v44;
          if (v44 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v46 = v44;
            do
            {
              v47 = v46 + 1;
              if (([v41 containsIndex:v46 + 1] & 1) == 0)
              {
                [v43 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithRange:", v45, v47 - v45)}];
                v47 = [v41 indexGreaterThanIndex:v46];
                v45 = v47;
              }

              v46 = v47;
            }

            while (v45 != 0x7FFFFFFFFFFFFFFFLL);
          }

          v81 = 0u;
          v82 = 0u;
          v79 = 0u;
          v80 = 0u;
          v48 = [v43 countByEnumeratingWithState:&v79 objects:v106 count:16];
          if (v48)
          {
            v49 = *v80;
            do
            {
              for (m = 0; m != v48; ++m)
              {
                if (*v80 != v49)
                {
                  objc_enumerationMutation(v43);
                }

                v51 = [*(*(&v79 + 1) + 8 * m) rangeValue];
                v53 = v52;
                if ([v40 p_hasContentForRange:v51 labelOnly:{v52, 0}])
                {
                  [objc_msgSend(v40 "containedRep")];
                  v54 = [v42 substringWithRange:{v51, v53}];
                  v55 = MEMORY[0x277D80320];
                  TSUCenterOfRect();
                  v56 = [v55 matchObjectWithTextRep:v40 position:v54 stringValue:v51 stringRange:v53];
                  v104 = @"kMagicMoveTextChunkKey";
                  v105 = v78;
                  [v56 setAttributes:{objc_msgSend(MEMORY[0x277CBEB38], "dictionaryWithDictionary:", objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v105, &v104, 1))}];
                  v57 = [v72 containsObject:v40];
                  if (v57)
                  {
                    v58 = v56;
                  }

                  else
                  {
                    v58 = 0;
                  }

                  if (v57)
                  {
                    v59 = 0;
                  }

                  else
                  {
                    v59 = v56;
                  }

                  [v73 addObject:{objc_msgSend(MEMORY[0x277D80318], "matchWithOutgoingObject:incomingObject:matchType:attributeMatchPercent:textureDescription:", v58, v59, 5, v74, 0.0)}];
                  [objc_msgSend(objc_msgSend(objc_msgSend(v56 "attributes")];
                }
              }

              v48 = [v43 countByEnumeratingWithState:&v79 objects:v106 count:16];
            }

            while (v48);
          }
        }
      }

      v71 = [v67 countByEnumeratingWithState:&v83 objects:v107 count:16];
    }

    while (v71);
  }

  return v73;
}

void sub_275DD4A6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, ...)
{
  va_start(va, a54);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_275DD4A8C(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = [a2 rangeValue];
  v9 = v8;
  v15.location = [*(a1 + 32) range];
  v15.length = v10;
  v14.location = v7;
  v14.length = v9;
  v12 = NSIntersectionRange(v14, v15);
  result = v12.location;
  if (v12.length)
  {
    result = [a3 doubleValue];
    *(*(*(a1 + 40) + 8) + 24) = v13;
    *a4 = 1;
  }

  return result;
}

double sub_275DD4B10(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  if (a3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = MEMORY[0x277D81150];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPShapeRep(KeynoteAdditions) magicMoveAttributeMatchPercentBetweenOutgoingObject:incomingObject:mixingTypeContext:]"];
      [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" isFatal:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/TSWPShapeRepAdditions.mm") description:{1257, 0, "outgoingObject is not TSWPShapeRep!"}];
      [MEMORY[0x277D81150] logBacktraceThrottled];
    }

    if (!a4)
    {
      return 0.0;
    }
  }

  else if (!a4)
  {
    v27 = MEMORY[0x277D81150];
    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPShapeRep(KeynoteAdditions) magicMoveAttributeMatchPercentBetweenOutgoingObject:incomingObject:mixingTypeContext:]"];
    [v27 handleFailureInFunction:v28 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" isFatal:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/TSWPShapeRepAdditions.mm") description:{1259, 0, "Both objects are NULL!"}];
    [MEMORY[0x277D81150] logBacktraceThrottled];
    return 0.0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = MEMORY[0x277D81150];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPShapeRep(KeynoteAdditions) magicMoveAttributeMatchPercentBetweenOutgoingObject:incomingObject:mixingTypeContext:]"];
    [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" isFatal:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/TSWPShapeRepAdditions.mm") description:{1258, 0, "incomingObject is not TSWPShapeRep!"}];
    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  v13 = 0.0;
  if (a3)
  {
    if ([a5 shouldDisableMatchesOnText])
    {
      goto LABEL_11;
    }

    v15 = [objc_msgSend(a3 "textStorageForTexture")];
    v16 = [objc_msgSend(a4 "textStorageForTexture")];
    if (([v15 isEqualToString:v16] & 1) == 0 && (objc_msgSend(objc_msgSend(v15, "stringByTrimmingCharactersInSet:", objc_msgSend(MEMORY[0x277CCA900], "whitespaceAndNewlineCharacterSet")), "length") || objc_msgSend(objc_msgSend(v16, "stringByTrimmingCharactersInSet:", objc_msgSend(MEMORY[0x277CCA900], "whitespaceAndNewlineCharacterSet")), "length")))
    {
      return v13;
    }

    v17 = [objc_msgSend(objc_msgSend(a3 "layout")];
    v18 = [objc_msgSend(objc_msgSend(a4 "layout")];
    v19 = [v17 count];
    if (v19 != [v18 count])
    {
      return v13;
    }

    if (![v17 count])
    {
LABEL_11:
      v14 = [objc_msgSend(objc_msgSend(objc_msgSend(a3 "layout")];
      v13 = 0.0;
      if (v14 <= 2)
      {
        if (v14)
        {
          if (v14 == 2)
          {
            v13 = 0.125;
          }
        }

        else
        {
          v29 = MEMORY[0x277D81150];
          v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPShapeRep(KeynoteAdditions) magicMoveAttributeMatchPercentBetweenOutgoingObject:incomingObject:mixingTypeContext:]"];
          [v29 handleFailureInFunction:v30 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" isFatal:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/TSWPShapeRepAdditions.mm") description:{1340, 0, "Undefined mixing type!"}];
          [MEMORY[0x277D81150] logBacktraceThrottled];
        }
      }

      else
      {
        switch(v14)
        {
          case 3:
            v13 = 0.25;
            break;
          case 4:
            v13 = 0.5;
            break;
          case 5:
            v13 = 1.0;
            break;
        }
      }

      if (![a3 isShapeInvisible] || (objc_msgSend(a4, "isShapeInvisible") & 1) == 0)
      {
        v34.receiver = a1;
        v34.super_class = &OBJC_METACLASS___TSWPShapeRep_0;
        objc_msgSendSuper2(&v34, sel_magicMoveAttributeMatchPercentBetweenOutgoingObject_incomingObject_mixingTypeContext_, a3, a4, a5);
        TSUMix();
        return v31;
      }
    }

    else
    {
      v20 = 0;
      v33 = a1;
      while (1)
      {
        v21 = [objc_msgSend(v17 objectAtIndexedSubscript:{v20), "lineCount"}];
        if (v21 != [objc_msgSend(v18 objectAtIndexedSubscript:{v20), "lineCount"}])
        {
          break;
        }

        if (v21)
        {
          v22 = 0;
          do
          {
            v23 = [objc_msgSend(v17 objectAtIndexedSubscript:{v20), "rangeOfLineFragmentAtIndex:", v22}];
            v25 = v24;
            if (v23 != [objc_msgSend(v18 objectAtIndexedSubscript:{v20), "rangeOfLineFragmentAtIndex:", v22}])
            {
              return v13;
            }

            if (v25 != v26)
            {
              return v13;
            }

            [objc_msgSend(a3 "textStorageForTexture")];
            [objc_msgSend(a4 "textStorageForTexture")];
            if (TSDMixingTypeWithObjects() == 1)
            {
              return v13;
            }
          }

          while (v21 != ++v22);
        }

        ++v20;
        a1 = v33;
        if (v20 >= [v17 count])
        {
          goto LABEL_11;
        }
      }
    }
  }

  return v13;
}

uint64_t sub_275DD4FB8(void *a1)
{
  v2 = [objc_msgSend(a1 "layout")];
  v3 = [objc_msgSend(a1 "shapeLayout")];
  if (v2 && ([v2 shouldRender] & 1) != 0)
  {
    return 0;
  }

  if (!v3)
  {
    return 1;
  }

  return [v3 isClear];
}

id sub_275DD5034(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = objc_opt_new();
  v7 = [a1 textStorageForTexture];
  v8 = [v7 paragraphCount];
  v9 = [v7 range];
  if (v8)
  {
    v11 = v9;
    v12 = v10;
    v13 = 0;
    v14 = 0;
    v30 = a3;
    v15 = 1;
    v29 = v7;
    while ((v15 & 1) == 0)
    {
      if (v8 != 1)
      {
        v38.location = [v7 textRangeForParagraphAtIndex:v14];
        v38.length = v18;
        v37.location = v11;
        v37.length = v12;
        v19 = NSUnionRange(v37, v38);
        length = v19.length;
        location = v19.location;
LABEL_8:
        v11 = location;
        v12 = length;
      }

      if (v11 == 0x7FFFFFFFFFFFFFFFLL || v14 != v8 - 1 && [v7 characterAtIndex:v12 + v11 - 1] == 11 || a3 == 2 && !a4 && v14 + 1 < v8 && objc_msgSend(v7, "paragraphLevelAtParIndex:"))
      {
        v15 = 0;
      }

      else
      {
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v20 = [v6 countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v32;
LABEL_19:
          v23 = 0;
          while (1)
          {
            if (*v32 != v22)
            {
              objc_enumerationMutation(v6);
            }

            v24 = *(*(&v31 + 1) + 8 * v23);
            if ([v24 stageIndex] == v13)
            {
              break;
            }

            if (v21 == ++v23)
            {
              v21 = [v6 countByEnumeratingWithState:&v31 objects:v35 count:16];
              if (v21)
              {
                goto LABEL_19;
              }

              goto LABEL_27;
            }
          }

          if (v24)
          {
            goto LABEL_28;
          }
        }

LABEL_27:
        v24 = objc_opt_new();
        [v24 setStageIndex:v13];
        [v6 addObject:v24];

LABEL_28:
        v25 = [v24 storageRanges];
        if (v25)
        {
          v26 = v25;
        }

        else
        {
          v26 = MEMORY[0x277CBEBF8];
        }

        [v24 setStorageRanges:{objc_msgSend(v26, "arrayByAddingObject:", objc_msgSend(MEMORY[0x277CCAE60], "valueWithRange:", v11, v12))}];
        a3 = v30;
        if (v30)
        {
          v7 = v29;
          if (v30 != 2 || !a4 || v14 + 1 >= v8 || ![v29 paragraphLevelAtParIndex:?])
          {
            ++v13;
          }

          v15 = 1;
        }

        else
        {
          v15 = 1;
          v7 = v29;
        }
      }

      if (++v14 == v8)
      {
        return v6;
      }
    }

    location = [v7 range];
    if (v8 != 1)
    {
      location = [v7 textRangeForParagraphAtIndex:v14];
    }

    goto LABEL_8;
  }

  return v6;
}

uint64_t sub_275DD5318(uint64_t a1, uint64_t a2, NSUInteger a3, NSUInteger a4, uint64_t a5, void *a6)
{
  v35 = a3 + a4;
  v50 = *MEMORY[0x277D85DE8];
  for (i = 1; ; --i)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v38 = [a6 countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v38)
    {
      break;
    }

    if (!i)
    {
      result = -1;
      goto LABEL_31;
    }

LABEL_27:
    ;
  }

  v32 = i;
  v8 = i + a3;
  v36 = -1;
  v37 = *v45;
  do
  {
    for (j = 0; j != v38; ++j)
    {
      if (*v45 != v37)
      {
        objc_enumerationMutation(a6);
      }

      v10 = *(*(&v44 + 1) + 8 * j);
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v11 = [v10 storageRanges];
      v12 = [v11 countByEnumeratingWithState:&v40 objects:v48 count:16];
      if (v12)
      {
        v13 = v12;
        v39 = v10;
        v14 = *v41;
        while (2)
        {
          for (k = 0; k != v13; ++k)
          {
            if (*v41 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [*(*(&v40 + 1) + 8 * k) rangeValue];
            v18 = v16 + v17;
            if (v16 <= a3 && v18 >= v8)
            {
              v20 = v16;
              v21 = v17;
              v36 = [v39 stageIndex];
              if (v18 < v35)
              {
                v22 = MEMORY[0x277D81150];
                v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPShapeRep(KeynoteAdditions) stageIndexForStorageRange:forTextureDescription:stageChunks:]"];
                v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/TSWPShapeRepAdditions.mm"];
                v51.location = v20;
                v51.length = v21;
                v25 = NSStringFromRange(v51);
                v26 = [v39 stageIndex];
                v52.location = a3;
                v52.length = a4;
                [v22 handleFailureInFunction:v23 file:v24 lineNumber:1466 isFatal:0 description:{"Range %@ at stage %d does not contain input range %@!", v25, v26, NSStringFromRange(v52)}];
                [MEMORY[0x277D81150] logBacktraceThrottled];
              }

              goto LABEL_21;
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v40 objects:v48 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

LABEL_21:
      ;
    }

    v38 = [a6 countByEnumeratingWithState:&v44 objects:v49 count:16];
  }

  while (v38);
  result = v36;
  i = v32;
  if (v32 && v36 == -1)
  {
    goto LABEL_27;
  }

  if ((v36 & 0x8000000000000000) == 0)
  {
    return result;
  }

LABEL_31:
  v28 = MEMORY[0x277D81150];
  v29 = result;
  v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPShapeRep(KeynoteAdditions) stageIndexForStorageRange:forTextureDescription:stageChunks:]"];
  v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/TSWPShapeRepAdditions.mm"];
  v53.location = a3;
  v53.length = a4;
  [v28 handleFailureInFunction:v30 file:v31 lineNumber:1473 isFatal:0 description:{"Didn't find range %@ in stageStorageRanges!", NSStringFromRange(v53)}];
  [MEMORY[0x277D81150] logBacktraceThrottled];
  return v29;
}

id sub_275DD5630(void *a1, uint64_t a2, void *a3)
{
  v88 = *MEMORY[0x277D85DE8];
  v73 = [a3 isMagicMove];
  v5 = [a3 copy];
  if (([v5 shouldSeparateText] & 1) == 0)
  {
    [v5 setShouldNotAddContainedReps:0];
  }

  v6 = [v5 shouldNotAddText];
  if (v6)
  {
    [v5 setShouldNotAddContainedReps:1];
  }

  v72 = [a1 textStorageForTexture];
  v7 = [v72 range];
  v9 = v7;
  v10 = v8;
  if ((v6 & 1) != 0 || !(v7 | v8))
  {
    v11 = 1;
    goto LABEL_8;
  }

  if (![v5 deliveryStyle] && !objc_msgSend(v5, "byGlyphStyle") || v73 && (objc_msgSend(v5, "shouldSeparateText") & 1) == 0)
  {
    v11 = 0;
LABEL_8:
    v12 = [v72 valueForProperty:105 atCharIndex:v9 effectiveRange:0];
    v13 = [v72 valueForProperty:94 atCharIndex:v9 effectiveRange:0];
    if ([v12 isEqualToNumber:&unk_2884F3A38])
    {
      if (v13)
      {
        [v13 alphaComponent];
        LOBYTE(v13) = v14 != 0.0;
      }
    }

    else
    {
      LOBYTE(v13) = 1;
    }

    v85.receiver = a1;
    v85.super_class = TSWPShapeRep_0;
    if (objc_msgSendSuper2(&v85, sel_isInvisible))
    {
      if ((v13 & 1) == 0)
      {
        [a1 opacity];
        if (v15 != 0.0)
        {
          if (v11)
          {
            v16 = 0;
          }

          else
          {
            v16 = objc_alloc_init(MEMORY[0x277D803E0]);
            [v16 setRep:a1];
            [objc_msgSend(a1 "info")];
            [v16 setTextureOpacity:v57];
            [objc_msgSend(objc_msgSend(a1 "info")];
            [v16 setTextureAngle:v58 * 0.0174532925];
            [v16 setShouldTransformUsingTextureCenter:1];
            [v16 setIsMagicMove:v73];
            [v16 setObjectType:2];
            LOBYTE(v62) = 0;
            v59 = [a1 newTextureRenderableForRange:v9 includeListLabel:v10 isMagicMove:1 desiredContentRect:v73 textureByGlyphStyle:objc_msgSend(v5 includeGroupedShadow:"byGlyphStyle") groupedShadowOnly:1 textureBounds:{*MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24), v62, 0}];
            if (v59)
            {
              v60 = v59;
              [v16 addRenderable:v59];
            }

            if (([v5 shouldNotAddContainedReps] & 1) == 0)
            {
              [a1 addChildTexturesToTextureSet:v16 forDescription:v5 passingTest:0];
            }
          }

          goto LABEL_91;
        }
      }
    }

    if (((v11 | [v5 shouldSeparateText] & v73 ^ 1) & 1) == 0)
    {
      [v5 setShouldNotAddContainedReps:1];
    }

    v84.receiver = a1;
    v84.super_class = TSWPShapeRep_0;
    v16 = objc_msgSendSuper2(&v84, sel_textureForDescription_, v5);
    [v16 setIsMagicMove:v73];
    if (((v6 | v11 | [v5 shouldSeparateText] & v73 ^ 1) & 1) == 0)
    {
      LOBYTE(v62) = 0;
      v17 = [a1 newTextureRenderableForRange:v9 includeListLabel:v10 isMagicMove:0 desiredContentRect:1 textureByGlyphStyle:objc_msgSend(v5 includeGroupedShadow:"byGlyphStyle") groupedShadowOnly:1 textureBounds:{*MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24), v62, 0}];
      if (v17)
      {
        v18 = v17;
        [v16 addRenderable:v17 forStage:0];
LABEL_86:

        goto LABEL_91;
      }
    }

    goto LABEL_91;
  }

  v19 = [v72 paragraphCount];
  v83.receiver = a1;
  v83.super_class = TSWPShapeRep_0;
  v20 = objc_msgSendSuper2(&v83, sel_isInvisible);
  if ((v20 & 1) != 0 || (v21 = [v5 shouldNotAddContainedReps], objc_msgSend(v5, "setShouldNotAddContainedReps:", 1), v82.receiver = a1, v82.super_class = TSWPShapeRep_0, v22 = objc_msgSendSuper2(&v82, sel_textureForDescription_, v5), objc_msgSend(v5, "setShouldNotAddContainedReps:", v21), !v22))
  {
    v22 = objc_alloc_init(MEMORY[0x277D803E0]);
    [v22 setRep:a1];
    [objc_msgSend(a1 "info")];
    [v22 setTextureOpacity:v23];
    [objc_msgSend(objc_msgSend(a1 "info")];
    [v22 setTextureAngle:v24 * 0.0174532925];
    [v22 setObjectType:2];
    if (v20)
    {
      [v22 setShouldTransformUsingTextureCenter:1];
    }
  }

  v25 = [objc_msgSend(a1 "shapeInfo")];
  if (v25)
  {
    v26 = v25;
    if ([v25 isEnabled])
    {
      if (([v26 isContactShadow] & 1) != 0 || objc_msgSend(v26, "isCurvedShadow"))
      {
        v27 = [v72 range];
        LOBYTE(v62) = 1;
        v29 = [a1 newTextureRenderableForRange:v27 includeListLabel:v28 isMagicMove:1 desiredContentRect:v73 textureByGlyphStyle:objc_msgSend(v5 includeGroupedShadow:"byGlyphStyle") groupedShadowOnly:1 textureBounds:{*MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24), v62, 0}];
        if (v29)
        {
          v30 = v29;
          [v22 addRenderable:v29 forStage:-2];
        }
      }
    }
  }

  v71 = [v5 byGlyphStyle];
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  obj = [a1 stageChunksForDeliveryStyle:objc_msgSend(v5 byGlyphStyle:{"deliveryStyle"), objc_msgSend(v5, "byGlyphStyle")}];
  v31 = v72;
  v65 = [obj countByEnumeratingWithState:&v78 objects:v87 count:16];
  if (v65)
  {
    v64 = *v79;
    v67 = v19 - 1;
    v32 = MEMORY[0x277CBF398];
    do
    {
      v33 = 0;
      do
      {
        if (*v79 != v64)
        {
          objc_enumerationMutation(obj);
        }

        v66 = v33;
        v34 = *(*(&v78 + 1) + 8 * v33);
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v68 = [v34 storageRanges];
        v70 = [v68 countByEnumeratingWithState:&v74 objects:v86 count:16];
        if (v70)
        {
          v69 = *v75;
          do
          {
            v35 = 0;
            do
            {
              if (*v75 != v69)
              {
                objc_enumerationMutation(v68);
              }

              v36 = [*(*(&v74 + 1) + 8 * v35) rangeValue];
              v38 = v37;
              v39 = [v31 paragraphIndexAtCharIndex:v36];
              if (!v38)
              {
                goto LABEL_52;
              }

              v40 = [v31 characterAtIndex:v38 + v36 - 1];
              v41 = IsParagraphBreakingCharacter();
              if (v40 == 8232)
              {
                v42 = 1;
              }

              else
              {
                v42 = v41;
              }

              v38 -= v42;
              if (!v71)
              {
                v31 = v72;
                if (v38)
                {
                  goto LABEL_56;
                }

LABEL_52:
                if (v39 != v67)
                {
                  goto LABEL_56;
                }

                v38 = 0;
                if (![v31 paragraphHasListLabelAtCharIndex:v36])
                {
                  goto LABEL_56;
                }

                goto LABEL_54;
              }

              v31 = v72;
              if (!v38)
              {
                goto LABEL_52;
              }

LABEL_54:
              LOBYTE(v62) = 0;
              v43 = [a1 newTextureRenderableForRange:v36 includeListLabel:0 isMagicMove:1 desiredContentRect:v73 textureByGlyphStyle:objc_msgSend(v5 includeGroupedShadow:"byGlyphStyle") groupedShadowOnly:0 textureBounds:{*v32, v32[1], v32[2], v32[3], v62, 0}];
              if (v43)
              {
                v44 = v43;
                [v22 addRenderable:v43 forStage:{objc_msgSend(v34, "stageIndex")}];
              }

LABEL_56:
              if (v71)
              {
                v45 = v38 + v36;
                while (1)
                {
                  if (v36 >= v45)
                  {
                    goto LABEL_75;
                  }

                  v46 = [v5 byGlyphStyle];
                  if (v46 == 3)
                  {
                    v47 = [v72 rangeByExtendingRangeToLineBreak:{v36, 0}];
                  }

                  else
                  {
                    if (v46 != 2)
                    {
                      if (v46 == 1)
                      {
                        v38 = [objc_msgSend(a1 "containedRep")];
                        if (!v38)
                        {
                          goto LABEL_69;
                        }
                      }

                      goto LABEL_67;
                    }

                    v47 = [v72 rangeByExtendingRangeToWhitespace:{v36, 0}];
                  }

                  v36 = v47;
                  v38 = v48;
                  if (!v48)
                  {
                    goto LABEL_69;
                  }

LABEL_67:
                  LOBYTE(v62) = 0;
                  v49 = [a1 newTextureRenderableForRange:v36 includeListLabel:v38 isMagicMove:0 desiredContentRect:v73 textureByGlyphStyle:objc_msgSend(v5 includeGroupedShadow:"byGlyphStyle") groupedShadowOnly:0 textureBounds:{*v32, v32[1], v32[2], v32[3], v62, 0}];
                  if (v49)
                  {
                    v50 = v49;
                    [v22 addRenderable:v49 forStage:{objc_msgSend(v34, "stageIndex")}];
                  }

LABEL_69:
                  if ([v5 byGlyphStyle] == 2)
                  {
                    ++v38;
                  }

                  if (!v38)
                  {
                    goto LABEL_75;
                  }

                  v36 += v38;
                }
              }

              LOBYTE(v62) = 0;
              v51 = [a1 newTextureRenderableForRange:v36 includeListLabel:v38 isMagicMove:0 desiredContentRect:v73 textureByGlyphStyle:objc_msgSend(v5 includeGroupedShadow:"byGlyphStyle") groupedShadowOnly:0 textureBounds:{*v32, v32[1], v32[2], v32[3], v62, 0}];
              if (v51)
              {
                v52 = v51;
                [v22 addRenderable:v51 forStage:{objc_msgSend(v34, "stageIndex")}];
              }

LABEL_75:
              ++v35;
              v31 = v72;
            }

            while (v35 != v70);
            v53 = [v68 countByEnumeratingWithState:&v74 objects:v86 count:16];
            v70 = v53;
          }

          while (v53);
        }

        v33 = v66 + 1;
      }

      while (v66 + 1 != v65);
      v65 = [obj countByEnumeratingWithState:&v78 objects:v87 count:16];
    }

    while (v65);
  }

  v16 = v22;
  if (([v5 shouldNotAddContainedReps] & 1) == 0)
  {
    v54 = [v5 copy];
    [v54 setByGlyphStyle:{objc_msgSend(v5, "childRepByGlyphStyle")}];
    [a1 addChildTexturesToTextureSet:v22 forDescription:v54 passingTest:0];

    v31 = v72;
  }

  if ([v22 shouldTransformUsingTextureCenter])
  {
    v55 = [v31 range];
    LOBYTE(v62) = 0;
    v18 = [a1 newTextureRenderableForRange:v55 includeListLabel:v56 isMagicMove:1 desiredContentRect:v73 textureByGlyphStyle:objc_msgSend(v5 includeGroupedShadow:"byGlyphStyle") groupedShadowOnly:0 textureBounds:{*MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24), v62, 0}];
    [v18 frame];
    [v16 setBoundingRect:?];
    [v18 teardown];
    goto LABEL_86;
  }

LABEL_91:
  if (v73)
  {
    [v16 setIsMagicMove:1];
    [v16 setLayerGeometry];
  }

  return v16;
}

id sub_275DD6048(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_275DD60CC;
  v7[3] = &unk_27A698F28;
  v7[4] = a1;
  v7[5] = a5;
  v6.receiver = a1;
  v6.super_class = TSWPShapeRep_0;
  return objc_msgSendSuper2(&v6, sel_addChildTexturesToTextureSet_forDescription_passingTest_, a3, a4, v7);
}

uint64_t sub_275DD60CC(uint64_t a1, void *a2)
{
  if ([*(a1 + 32) containedRep] == a2)
  {
    return 0;
  }

  v3 = *(a1 + 40);
  if (!v3)
  {
    return 1;
  }

  v4 = *(v3 + 16);

  return v4();
}

uint64_t sub_275DD613C(void *a1)
{
  v2 = [a1 layout];
  v3 = [v2 info];
  v4 = [v3 textStorage];
  if ([v4 length] || !objc_msgSend(v3, "displaysInstructionalText") || !objc_msgSend(objc_msgSend(a1, "canvas"), "shouldShowInstructionalTextForLayout:", v2))
  {
    return v4;
  }

  v5 = [v2 containedLayout];

  return [v5 storage];
}

double sub_275DD61D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x5012000000;
  v15 = sub_275DD6314;
  v16 = nullsub_2;
  v17 = &unk_275E9EF93;
  v7 = *(MEMORY[0x277CBF398] + 16);
  v18 = *MEMORY[0x277CBF398];
  v19 = v7;
  v8 = [a1 textStorageForTexture];
  if (v8)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_275DD6324;
    v11[3] = &unk_27A698F50;
    v11[4] = a1;
    v11[5] = &v12;
    [v8 enumerateSmartFieldsWithAttributeKind:7 inRange:a3 usingBlock:{a4, v11}];
  }

  v9 = v13[6];
  _Block_object_dispose(&v12, 8);
  return v9;
}

void sub_275DD62FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_275DD6314(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

void sub_275DD6324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_msgSend(*(a1 + 32) "containedRep")];
  v6 = *(*(a1 + 40) + 8);
  v7 = v6[6];
  v8 = v6[7];
  v9 = v6[8];
  v10 = v6[9];
  [objc_msgSend(*(a1 + 32) "containedRep")];
  v16.origin.x = v11;
  v16.origin.y = v12;
  v16.size.width = v13;
  v16.size.height = v14;
  v15.origin.x = v7;
  v15.origin.y = v8;
  v15.size.width = v9;
  v15.size.height = v10;
  *(*(*(a1 + 40) + 8) + 48) = CGRectUnion(v15, v16);
}

void *sub_275DD63CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = [a1 textStorageForTexture];
  if (result)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_275DD6470;
    v10[3] = &unk_27A698F78;
    v10[4] = a1;
    v10[5] = a4;
    v10[6] = a5;
    v10[7] = a3;
    return [result enumerateSmartFieldsWithAttributeKind:7 inRange:a4 usingBlock:{a5, v10}];
  }

  return result;
}

uint64_t sub_275DD6470(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 + a3 - 1;
  v6 = *(result + 40);
  v8 = v5 >= v6;
  v7 = v5 - v6;
  v8 = !v8 || v7 >= *(result + 48);
  if (!v8)
  {
    v9 = result;
    [objc_msgSend(*(result + 32) "containedRep")];
    v10 = [*(v9 + 32) containedRep];

    return MEMORY[0x2821F9670](v10, sel_drawRubyInContext_rubyFieldStart_rubyGlyphRange_);
  }

  return result;
}

BOOL sub_275DD64F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  [objc_msgSend(a1 "containedRep")];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [a1 p_rectForRubyFields:{a3, a4}];
  v28.origin.x = v16;
  v28.origin.y = v17;
  v28.size.width = v18;
  v28.size.height = v19;
  v25.origin.x = v9;
  v25.origin.y = v11;
  v25.size.width = v13;
  v25.size.height = v15;
  v26 = CGRectUnion(v25, v28);
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;
  result = 0;
  if (!CGRectIsNull(v26))
  {
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    if (!CGRectIsEmpty(v27))
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_275DD65CC(void *a1, uint64_t a2, unint64_t *a3, void *a4, _OWORD *a5, _BYTE *a6, _BYTE *a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, char a12)
{
  [objc_msgSend(a1 canvas];
  v16 = [objc_msgSend(a1 "shapeInfo")];
  v17 = [objc_msgSend(a1 "shapeInfo")];
  v18 = [objc_msgSend(a1 "info")];
  if (v17)
  {
    v19 = v18;
    if ([v17 isEnabled])
    {
      v72.receiver = a1;
      v72.super_class = TSWPShapeRep_0;
      LODWORD(v17) = 1;
      if ((objc_msgSendSuper2(&v72, sel_isInvisible) & 1) == 0 && v19)
      {
        LODWORD(v17) = [v19 isClear];
      }
    }

    else
    {
      LODWORD(v17) = 0;
    }
  }

  [objc_msgSend(a1 "containedRep")];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  [a1 p_rectForRubyFields:{a9, a10}];
  v82.origin.x = v28;
  v82.origin.y = v29;
  v82.size.width = v30;
  v82.size.height = v31;
  v73.origin.x = v21;
  v73.origin.y = v23;
  v73.size.width = v25;
  v73.size.height = v27;
  v74 = CGRectUnion(v73, v82);
  x = v74.origin.x;
  y = v74.origin.y;
  width = v74.size.width;
  height = v74.size.height;
  if (CGRectIsNull(v74))
  {
    v36 = 0;
    if (!v17)
    {
LABEL_9:
      v64.size.width = width;
      v64.size.height = height;
      v64.origin.x = x;
      v64.origin.y = y;
      goto LABEL_12;
    }
  }

  else
  {
    v75.origin.x = x;
    v75.origin.y = y;
    v75.size.width = width;
    v75.size.height = height;
    v36 = !CGRectIsEmpty(v75);
    if (!v17)
    {
      goto LABEL_9;
    }
  }

  v37 = [objc_msgSend(a1 "shapeInfo")];
  [objc_msgSend(objc_msgSend(a1 "info")];
  [v37 shadowBoundsForRect:x additionalAngle:{y, width, height, v38}];
  v83.origin.x = v39;
  v83.origin.y = v40;
  v83.size.width = v41;
  v83.size.height = v42;
  v76.origin.x = x;
  v76.origin.y = y;
  v76.size.width = width;
  v76.size.height = height;
  v64 = CGRectUnion(v76, v83);
LABEL_12:
  memset(&v71, 0, sizeof(v71));
  v43 = [a1 layout];
  if (v43)
  {
    objc_msgSend_transformInRoot(v43);
    if (!a12)
    {
      goto LABEL_20;
    }
  }

  else
  {
    memset(&v71, 0, sizeof(v71));
    if (!a12)
    {
      goto LABEL_20;
    }
  }

  v69 = v71;
  if (a1)
  {
    objc_msgSend_unRotatedTransform_(a1);
  }

  else
  {
    memset(&v70, 0, sizeof(v70));
  }

  v71 = v70;
LABEL_20:
  v44 = [objc_msgSend(objc_msgSend(a1 "containedRep")];
  if (v44)
  {
    objc_msgSend_transform(v44);
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  t2 = v71;
  CGAffineTransformConcat(&v70, &t1, &t2);
  v71 = v70;
  if (v16)
  {
    v70 = v71;
    v77.origin.x = v21;
    v77.origin.y = v23;
    v77.size.width = v25;
    v77.size.height = v27;
    v78 = CGRectApplyAffineTransform(v77, &v70);
    [objc_msgSend(a1 "styledLayout")];
    v62 = v79.origin.y;
    v63 = v79.origin.x;
    v60 = v79.size.height;
    v61 = v79.size.width;
    v45 = !CGRectIsNull(v79);
  }

  else
  {
    v45 = 0;
    v62 = *(MEMORY[0x277CBF398] + 8);
    v63 = *MEMORY[0x277CBF398];
    v60 = *(MEMORY[0x277CBF398] + 24);
    v61 = *(MEMORY[0x277CBF398] + 16);
  }

  v70 = v71;
  v80.origin.x = x;
  v80.origin.y = y;
  v80.size.width = width;
  v80.size.height = height;
  CGRectApplyAffineTransform(v80, &v70);
  v70 = v71;
  v81 = CGRectApplyAffineTransform(v64, &v70);
  if (v45)
  {
    v84.origin.y = v62;
    v84.origin.x = v63;
    v84.size.height = v60;
    v84.size.width = v61;
    CGRectUnion(v81, v84);
  }

  TSUNormalizedPointInRect();
  TSURectGetMaxPoint();
  TSUNormalizedPointInRect();
  TSUMultiplyRectScalar();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  if (a4)
  {
    TSURectWithPoints();
    *a4 = v54;
    a4[1] = v55;
    a4[2] = v56;
    a4[3] = v57;
  }

  if (a3)
  {
    *a3 = v47;
    a3[1] = v49;
    a3[2] = v51;
    a3[3] = v53;
  }

  if (a5)
  {
    v58 = *&v71.c;
    *a5 = *&v71.a;
    a5[1] = v58;
    a5[2] = *&v71.tx;
  }

  if (a6)
  {
    *a6 = v45;
  }

  if (a7)
  {
    *a7 = v17;
  }

  return v36;
}

void sub_275DD6AA8(void *a1, double a2, double a3, uint64_t a4, uint64_t a5, _OWORD *a6, uint64_t a7)
{
  [objc_msgSend(a1 "canvas")];
  [objc_msgSend(objc_msgSend(a1 "containedRep")];
  [objc_msgSend(a1 "containedRep")];
  v20 = v12;
  v21 = v11;
  v14 = v13;
  v16 = v15;
  TSURoundedSize();
  TSUMultiplySizeScalar();
  TSUAddSizes();
  v17 = a6[1];
  *&v22.a = *a6;
  *&v22.c = v17;
  *&v22.tx = a6[2];
  memset(&v23, 0, sizeof(v23));
  CGAffineTransformTranslate(&v23, &v22, v18, v19);
  v22 = v23;
  v24.origin.y = v20;
  v24.origin.x = v21;
  v24.size.width = v14;
  v24.size.height = v16;
  CGRectApplyAffineTransform(v24, &v22);
  TSUMultiplyRectScalar();
  TSUMultiplyPointScalar();
  TSUSubtractPoints();
  TSURectWithOriginAndSize();
}

void *sub_275DD6C08(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, int a10, int a11, char a12, char a13, double *a14)
{
  v24 = a10 ^ 1;
  v116[2] = *MEMORY[0x277D85DE8];
  if (a11)
  {
    v24 = 0;
  }

  v25 = v24 | a9;
  [objc_msgSend(a1 "canvas")];
  v27 = v26;
  [objc_msgSend(a1 "info")];
  v29 = v28;
  v30 = [objc_msgSend(a1 "shapeInfo")];
  v31 = [objc_msgSend(a1 "shapeInfo")];
  v106 = 0;
  BYTE1(v74) = a10;
  LOBYTE(v74) = v25;
  if (![a1 p_getBoundsRect:&v108 contentRect:&v112 transform:&v107 applyReflection:&v106 + 1 applyShadow:&v106 forRange:a7 includeListLabel:a8 isMagicMove:v74])
  {
    return 0;
  }

  v32 = v29;
  v117.origin.x = a2;
  v117.origin.y = a3;
  v117.size.width = a4;
  v117.size.height = a5;
  IsNull = CGRectIsNull(v117);
  v34 = v108;
  v35 = v109;
  v36 = v110;
  v37 = v111;
  if (!IsNull)
  {
    v72 = a2;
    v73 = a3;
    v75 = a4;
    v76 = a5;
    TSURectByExpandingBoundingRectToContentRect();
    v108 = v34;
    v109 = v35;
    v110 = v36;
    v111 = v37;
    v112 = a2;
    v113 = a3;
    v114 = a4;
    v115 = a5;
  }

  v118 = CGRectIntegral(*&v34);
  x = v118.origin.x;
  y = v118.origin.y;
  width = v118.size.width;
  height = v118.size.height;
  v92[0] = MEMORY[0x277D85DD0];
  v92[1] = 3221225472;
  v95 = v107;
  v92[2] = sub_275DD72EC;
  v92[3] = &unk_27A698FC8;
  v93 = v118;
  v94 = v27;
  v96 = a7;
  v97 = a8;
  v100 = v25;
  v99 = a11;
  v101 = v106;
  v102 = a13;
  v103 = a12;
  v92[4] = a1;
  v92[5] = v30;
  v104 = HIBYTE(v106);
  v98 = v32;
  v105 = a10;
  v42 = [a1 layout];
  if (v42)
  {
    objc_msgSend_transformInRoot(v42);
  }

  else
  {
    memset(&v87, 0, sizeof(v87));
  }

  v107 = v87;
  if (a10)
  {
    v44 = [a1 layout];
    if (v44)
    {
      objc_msgSend_transformInRoot(v44);
      if (a1)
      {
LABEL_13:
        objc_msgSend_unRotatedTransform_(a1, *&v72, *&v73, *&v75, *&v76);
LABEL_16:
        v107 = v87;
        goto LABEL_17;
      }
    }

    else
    {
      v90 = 0u;
      v91 = 0u;
      v89 = 0u;
      if (a1)
      {
        goto LABEL_13;
      }
    }

    memset(&v87, 0, sizeof(v87));
    goto LABEL_16;
  }

LABEL_17:
  v45 = a7 + a8;
  v46 = [objc_msgSend(a1 containedRep];
  if (v46)
  {
    v47 = v46;
    objc_msgSend_lineMetricsAtCharIndex_allowEndOfLine_(v46);
    v84 = v27 * v87.tx;
    objc_msgSend_lineMetricsAtCharIndex_allowEndOfLine_(v47);
    v48 = v27 * v88;
  }

  else
  {
    v84 = 1.0;
    v48 = 0.0;
  }

  v85 = y;
  v86 = x;
  if (a10 && v31 && (v106 & 0x100) == 0)
  {
    v83 = *(MEMORY[0x277CBF348] + 8);
    [a1 naturalBounds];
    [a1 convertNaturalRectToUnscaledCanvas:?];
    [a1 naturalBounds];
    TSUCenterRectOverRect();
    TSUMultiplyRectScalar();
    TSUSubtractPoints();
    v81 = v58;
    v82 = v57;
    v52 = v83;
    if (a10)
    {
      goto LABEL_24;
    }

LABEL_26:
    v87 = v107;
    [a1 p_getCaretRectForCharIndex:a7 transform:&v87 integralBounds:1 leadingEdge:{x, y, width, height}];
    v79 = v60;
    v80 = v59;
    v77 = v62;
    v78 = v61;
    if (v45)
    {
      v63 = v45 - 1;
    }

    else
    {
      v63 = 0;
    }

    v87 = v107;
    [a1 p_getCaretRectForCharIndex:v63 transform:&v87 integralBounds:0 leadingEdge:{x, y, width, height}];
    v53 = v64;
    v54 = v65;
    v55 = v66;
    v56 = v67;
    goto LABEL_30;
  }

  [a1 naturalBounds];
  v87 = v107;
  CGRectApplyAffineTransform(v119, &v87);
  TSUMultiplyRectScalar();
  TSUSubtractPoints();
  v81 = v50;
  v82 = v49;
  [objc_msgSend(objc_msgSend(objc_msgSend(a1 "containedRep")];
  TSUMultiplyRectScalar();
  TSUSubtractPoints();
  v52 = v51;
  if ((a10 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_24:
  v53 = *MEMORY[0x277CBF3A0];
  v54 = *(MEMORY[0x277CBF3A0] + 8);
  v55 = *(MEMORY[0x277CBF3A0] + 16);
  v56 = *(MEMORY[0x277CBF3A0] + 24);
  v79 = v54;
  v80 = *MEMORY[0x277CBF3A0];
  v77 = v56;
  v78 = v55;
LABEL_30:
  v43 = [objc_alloc(MEMORY[0x277D803E8]) initWithSize:v92 offset:width renderBlock:{height, v82, v81}];
  [v43 setTextureOpacity:1.0];
  [v43 setTextureType:6];
  [v43 setContentRect:{v112, v113, v114, v115}];
  [v43 setIsVerticalText:{objc_msgSend(objc_msgSend(a1, "info"), "textIsVertical")}];
  [v43 setTextBaseline:(v84 - v52) / height];
  [v43 setTextXHeight:v48 / height];
  [v43 setLeadingCaretRect:{v80, v79, v78, v77}];
  [v43 setTrailingCaretRect:{v53, v54, v55, v56}];
  if (a13)
  {
    [v43 setTextureType:4];
  }

  v68 = [a1 textStorageForTexture];
  [v43 setText:{objc_msgSend(v68, "substringWithRange:", a7, a8)}];
  [v43 setTextRange:{a7, a8}];
  if (a8)
  {
    objc_opt_class();
    [v68 valueForProperty:48 atCharIndex:a7 effectiveRange:0];
    v69 = [TSUDynamicCast() referenceColor];
  }

  else
  {
    v116[0] = [v68 listStyleAtCharIndex:a7 effectiveRange:0];
    v116[1] = [v68 paragraphStyleAtCharIndex:a7 effectiveRange:0];
    [MEMORY[0x277CBEA60] arrayWithObjects:v116 count:2];
    v69 = TSWPResolvePropertyForStyles();
  }

  [v43 setTextColor:v69];
  objc_opt_class();
  [v68 valueForProperty:50 atCharIndex:a7 effectiveRange:0];
  v70 = TSUDynamicCast();
  if (v70)
  {
    [v43 setTextBorderColor:{objc_msgSend(v70, "color")}];
  }

  if (a14)
  {
    *a14 = v86;
    a14[1] = v85;
    a14[2] = width;
    a14[3] = height;
  }

  return v43;
}

void sub_275DD72EC(uint64_t a1, CGContextRef c)
{
  CGContextTranslateCTM(c, -*(a1 + 48), -*(a1 + 56));
  CGContextScaleCTM(c, *(a1 + 80), *(a1 + 80));
  v4 = *(a1 + 104);
  *&transform.a = *(a1 + 88);
  *&transform.c = v4;
  *&transform.tx = *(a1 + 120);
  CGContextConcatCTM(c, &transform);
  v5 = *(a1 + 144);
  if (v5)
  {
    if (*(a1 + 160))
    {
      v6 = [objc_alloc(MEMORY[0x277D80EF8]) initWithRange:{*(a1 + 136), *(a1 + 144)}];
LABEL_13:
      v14 = v6;
      goto LABEL_15;
    }
  }

  else
  {
    if (*(a1 + 164) != 1)
    {
      goto LABEL_14;
    }

    if (*(a1 + 160))
    {
      v7 = objc_alloc(MEMORY[0x277D80EF8]);
      v8 = *(a1 + 136);
      v9 = *(a1 + 144);
      v10 = 1;
LABEL_12:
      v6 = [v7 initWithType:v10 range:v8 styleInsertionBehavior:v9 caretAffinity:{2, 0}];
      goto LABEL_13;
    }
  }

  v11 = *(a1 + 136);
  if (v11 != [objc_msgSend(*(a1 + 32) "textStorageForTexture")] || v5 != v12)
  {
    v7 = objc_alloc(MEMORY[0x277D80EF8]);
    v8 = *(a1 + 136);
    v9 = *(a1 + 144);
    v10 = 2;
    goto LABEL_12;
  }

LABEL_14:
  v14 = 0;
LABEL_15:
  if (*(a1 + 165) == 1)
  {
    if (*(a1 + 166) == 1 && *(a1 + 167) == 1)
    {
      v15 = 1;
      [*(a1 + 32) drawShadowInContext:c withChildren:1 withDrawableOpacity:0];
      goto LABEL_30;
    }

    CGContextSaveGState(c);
    if ([*(a1 + 40) isDropShadow])
    {
      v16 = *(a1 + 40);
      [objc_msgSend(*(a1 + 32) "canvas")];
      v18 = v17;
      if ([objc_msgSend(*(a1 + 32) "canvas")])
      {
        v19 = [objc_msgSend(*(a1 + 32) "canvas")];
      }

      else
      {
        v19 = 0;
      }

      [v16 applyToContext:c viewScale:v19 flipped:v18];
    }

    else if (*(a1 + 167) == 1)
    {
      [*(a1 + 32) drawShadowInContext:c withChildren:1 withDrawableOpacity:0];
    }

    if ([objc_msgSend(*(a1 + 32) "canvas")])
    {
      v15 = 0;
      goto LABEL_30;
    }

    CGContextBeginTransparencyLayer(c, 0);
  }

  v15 = 1;
LABEL_30:
  if ((*(a1 + 166) & 1) == 0)
  {
    CGContextSetShouldSubpixelQuantizeFonts(c, 0);
    CGContextSetAllowsFontSubpixelQuantization(c, 0);
    [objc_msgSend(*(a1 + 32) "containedRep")];
    if (v14)
    {
      [*(a1 + 32) p_drawRubyInContext:c forRange:{*(a1 + 136), *(a1 + 144)}];
    }

    if (*(a1 + 165) == 1)
    {
      if (v15)
      {
        CGContextEndTransparencyLayer(c);
      }

      CGContextRestoreGState(c);
    }

    if (*(a1 + 168) == 1)
    {
      v20 = [objc_msgSend(objc_msgSend(*(a1 + 32) "containedRep")];
      if (v20)
      {
        objc_msgSend_transform(v20);
      }

      else
      {
        memset(&v29, 0, sizeof(v29));
      }

      CGAffineTransformInvert(&transform, &v29);
      CGContextConcatCTM(c, &transform);
      v21 = *(a1 + 136);
      v22 = *(a1 + 144);
      v25 = v21 != [objc_msgSend(*(a1 + 32) "textStorageForTexture")] || v22 != v23;
      v26 = *(a1 + 32);
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = sub_275DD7644;
      v27[3] = &unk_27A698FA0;
      v27[6] = *(a1 + 152);
      v28 = *(a1 + 169);
      v27[4] = v26;
      v27[5] = v14;
      [v26 drawReflectionInContext:c withTransparencyLayer:v25 applyingOpacity:1 shouldClipGradient:1 withBlock:v27];
    }
  }
}

uint64_t sub_275DD7644(uint64_t a1, CGContextRef c)
{
  v4 = *(a1 + 48);
  if (v4 < 1.0 && (*(a1 + 56) & 1) == 0)
  {
    CGContextSetAlpha(c, v4);
  }

  v5 = [objc_msgSend(objc_msgSend(*(a1 + 32) "containedRep")];
  if (v5)
  {
    objc_msgSend_transform(v5);
  }

  else
  {
    memset(&v7, 0, sizeof(v7));
  }

  CGContextConcatCTM(c, &v7);
  return [objc_msgSend(*(a1 + 32) "containedRep")];
}

uint64_t sub_275DD7FF4(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 isLocked] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_275DD8D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);

  TSWPAttributeEnumerator::~TSWPAttributeEnumerator(va);
  _Unwind_Resume(a1);
}

void sub_275DD9188(_Unwind_Exception *a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);

  TSWPAttributeEnumerator::~TSWPAttributeEnumerator(va);
  _Unwind_Resume(a1);
}

void sub_275DDA454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

uint64_t sub_275DDA62C(void *a1)
{
  v1 = qword_280A3C0B8;
  v2 = a1;
  if (v1 != -1)
  {
    sub_275E5B5AC();
  }

  v3 = [qword_280A3C0B0 containsObject:v2];

  return v3;
}

void sub_275DDA684()
{
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  v1 = [v0 initWithObjects:{@"KNBuildAttributesDirection", @"KNBuildAttributesInitialChunkCreationEventTrigger", @"KNBuildAttributesStartOffset", @"KNBuildAttributesEndOffset", @"KNAnimationOrder", *MEMORY[0x277D80108], *MEMORY[0x277D800E8], @"KNBuildCustomAttributesTextDelivery", @"KNBuildCustomAttributesDeliveryOption", @"KNBuildCustomAttributesRandomNumberSeed", @"KNActionBuildCustomAttributesJiggleIntensity", @"KNActionBuildCustomAttributesRepeatCount", @"KNBuildChunkReferentProperty", @"KNTextureDeliveryStyleProperty", 0}];
  v2 = qword_280A3C0B0;
  qword_280A3C0B0 = v1;
}

uint64_t sub_275DDA790(void *a1)
{
  v1 = qword_280A3C0C8;
  v2 = a1;
  if (v1 != -1)
  {
    sub_275E5B5C0();
  }

  v3 = [qword_280A3C0C0 containsObject:v2];

  return v3;
}

void sub_275DDA7E8()
{
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  v1 = [v0 initWithObjects:{@"KNBuildAttributesDefaultDuration", @"KNBuildChunkDurationProperty", @"KNBuildAttributesInitialChunkCreationDelay", @"KNAnimationDelayAutomaticAfter", @"KNAnimationDelayAutomaticWith", @"KNBuildAttributesDeprecatedInterchunkDelay", @"com.apple.iWork.Keynote.KLNBCConvergence.height", @"KNActionBuildCustomAttributesScale", *MEMORY[0x277D80110], *MEMORY[0x277D800E8], *MEMORY[0x277D80100], *MEMORY[0x277D800F0], @"KNBuildChunkDelayProperty", @"KNBuildCustomAttributesDetail", @"KNBuildCustomAttributesScaleAmount", @"KNBuildCustomAttributesTravelDistance", 0}];
  v2 = qword_280A3C0C0;
  qword_280A3C0C0 = v1;
}

uint64_t sub_275DDA910(void *a1)
{
  v1 = qword_280A3C0D8;
  v2 = a1;
  if (v1 != -1)
  {
    sub_275E5B5D4();
  }

  v3 = [qword_280A3C0D0 containsObject:v2];

  return v3;
}

void sub_275DDA968()
{
  v0 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"KNBuildAttributesDeprecatedInterchunkAuto", @"KNBuildCustomAttributesBounce", @"KNBuildCustomAttributesAlignToPath", @"KNBuildCustomAttributesMotionBlur", @"KNActionBuildCustomAttributesDecay", @"KNBuildChunkAutomaticProperty", @"WritingDirectionIsRTL", @"KNBuildCustomAttributesIncludeEndpoints", @"KNBuildCustomAttributesShine", @"KNBuildCustomAttributesCursor", 0}];
  v1 = qword_280A3C0D0;
  qword_280A3C0D0 = v0;
}

uint64_t sub_275DDAA3C(void *a1)
{
  v1 = qword_280A3C0E8;
  v2 = a1;
  if (v1 != -1)
  {
    sub_275E5B5E8();
  }

  v3 = [qword_280A3C0E0 containsObject:v2];

  return v3;
}

void sub_275DDAA94()
{
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  v1 = [v0 initWithObjects:{*MEMORY[0x277D80178], @"KNBuildDeliveryProperty", @"KNBuildEffectProperty", @"KNAnimationAttributesCustomEffectTimingCurveThemeName1", @"KNAnimationAttributesCustomEffectTimingCurveThemeName2", @"KNAnimationAttributesCustomEffectTimingCurveThemeName3", 0}];
  v2 = qword_280A3C0E0;
  qword_280A3C0E0 = v1;
}

uint64_t sub_275DDAB30(void *a1)
{
  v1 = qword_280A3C0F8;
  v2 = a1;
  if (v1 != -1)
  {
    sub_275E5B5FC();
  }

  v3 = [qword_280A3C0F0 containsObject:v2];

  return v3;
}

void sub_275DDAB88()
{
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  v1 = [v0 initWithObjects:{*MEMORY[0x277D800F8], @"KNAnimationAttributesCustomEffectTimingCurve1", @"KNAnimationAttributesCustomEffectTimingCurve2", @"KNAnimationAttributesCustomEffectTimingCurve3", 0}];
  v2 = qword_280A3C0F0;
  qword_280A3C0F0 = v1;
}

void sub_275DDAF30()
{
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  v1 = [v0 initWithObjects:{@"KNBuildCustomAttributesTextDelivery", @"KNBuildCustomAttributesDeliveryOption", @"KNBuildCustomAttributesBounce", @"KNBuildCustomAttributesAlignToPath", @"KNBuildCustomAttributesMotionBlur", @"KNBuildCustomAttributesRandomNumberSeed", @"KNBuildCustomAttributesIncludeEndpoints", @"KNBuildCustomAttributesShine", @"KNBuildCustomAttributesScaleAmount", @"KNBuildCustomAttributesTravelDistance", @"KNBuildCustomAttributesCursor", @"KNAnimationAttributesCustomEffectTimingCurve1", @"KNAnimationAttributesCustomEffectTimingCurve2", @"KNAnimationAttributesCustomEffectTimingCurve3", @"KNAnimationAttributesCustomEffectTimingCurveThemeName1", @"KNAnimationAttributesCustomEffectTimingCurveThemeName2", @"KNAnimationAttributesCustomEffectTimingCurveThemeName3", @"KNBuildCustomAttributesDetail", *MEMORY[0x277D800E8], @"KNActionBuildCustomAttributesJiggleIntensity", @"KNActionBuildCustomAttributesRepeatCount", @"KNActionBuildCustomAttributesDecay", @"KNActionBuildCustomAttributesScale", 0}];
  v2 = qword_280A3C100;
  qword_280A3C100 = v1;
}

uint64_t sub_275DDB8A8(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = TSUDynamicCast();

  if (v4)
  {
    v5 = [v4 objectUUID];
    v6 = [v5 isEqual:*(a1 + 32)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_275DDC834(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = KNNoteLayout;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_275DDF234()
{
  v0 = TSULogCreateCategory();
  v1 = KNAnimatedTextureManagerCat_log_t;
  KNAnimatedTextureManagerCat_log_t = v0;
}

void sub_275DDF4F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_275DDF518(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_275DDF5EC;
  v4[3] = &unk_27A699078;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  objc_copyWeak(&v6, (a1 + 48));
  [WeakRetained performSlideRead:v4];

  objc_destroyWeak(&v6);
}

void sub_275DDF5EC(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACC8] currentThread];
  v3 = [v2 threadDictionary];

  v4 = *MEMORY[0x277D80478];
  [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D80478]];
  v5 = [*(a1 + 32) ASVForSlideNode:*(a1 + 40)];
  if (!v5)
  {
    v6 = MEMORY[0x277D81150];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimatedTextureManager p_setupGenerateTexturesOperationOnSlideNode:]_block_invoke_2"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimatedTextureManager.m"];
    [v6 handleFailureInFunction:v7 file:v8 lineNumber:350 isFatal:0 description:{"invalid nil value for '%{public}s'", "asv"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v10 = [WeakRetained isCancelled];

  if ((v10 & 1) == 0)
  {
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    [MEMORY[0x277CD9FF0] activateBackground:{objc_msgSend(MEMORY[0x277CCACC8], "isMainThread") ^ 1}];
    v11 = *MEMORY[0x277D805D8];
    [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D805D8]];
    v12 = os_signpost_id_make_with_pointer(*(*(a1 + 32) + 120), v5);
    v13 = *(*(a1 + 32) + 120);
    v14 = v13;
    if (v12 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {

      [v5 generateTextures];
      if (v12 == -1)
      {
LABEL_12:
        [v3 setObject:0 forKeyedSubscript:v11];
        [MEMORY[0x277CD9FF0] commit];
        goto LABEL_13;
      }

      v15 = *(*(a1 + 32) + 120);
    }

    else
    {
      if (os_signpost_enabled(v13))
      {
        *buf = 134217984;
        v17 = [v5 slideNumber];
        _os_signpost_emit_with_name_impl(&dword_275D41000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "GenerateTextures", "Begin slide %ld", buf, 0xCu);
      }

      [v5 generateTextures];
      v15 = *(*(a1 + 32) + 120);
      if (os_signpost_enabled(v15))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_275D41000, v15, OS_SIGNPOST_INTERVAL_END, v12, "GenerateTextures", "End", buf, 2u);
      }
    }

    goto LABEL_12;
  }

LABEL_13:
  [v3 setObject:0 forKeyedSubscript:v4];
}

void sub_275DDFA00(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_275DDFA20(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACC8] currentThread];
  v3 = [v2 threadDictionary];

  v4 = *MEMORY[0x277D80478];
  [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D80478]];
  v5 = [*(a1 + 32) ASVForSlideNode:*(a1 + 40)];
  if (!v5)
  {
    v6 = MEMORY[0x277D81150];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimatedTextureManager p_setupRenderTexturesOperationOnSlideNode:]_block_invoke"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimatedTextureManager.m"];
    [v6 handleFailureInFunction:v7 file:v8 lineNumber:398 isFatal:0 description:{"invalid nil value for '%{public}s'", "asv"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v10 = [WeakRetained isCancelled];

  if ((v10 & 1) == 0)
  {
    v11 = os_signpost_id_make_with_pointer(*(*(a1 + 32) + 120), v5);
    v12 = *(*(a1 + 32) + 120);
    v13 = v12;
    if (v11 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {

      [v5 renderTextures];
      if (v11 == -1)
      {
LABEL_12:
        [*(a1 + 32) p_addSlideNodeToMemorySet:*(a1 + 40)];
        goto LABEL_13;
      }

      v14 = *(*(a1 + 32) + 120);
    }

    else
    {
      if (os_signpost_enabled(v12))
      {
        *buf = 134217984;
        v16 = [v5 slideNumber];
        _os_signpost_emit_with_name_impl(&dword_275D41000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "Rasterization", "Begin slide %ld", buf, 0xCu);
      }

      [v5 renderTextures];
      v14 = *(*(a1 + 32) + 120);
      if (os_signpost_enabled(v14))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_275D41000, v14, OS_SIGNPOST_INTERVAL_END, v11, "Rasterization", "End", buf, 2u);
      }
    }

    goto LABEL_12;
  }

LABEL_13:
  [v3 setObject:0 forKeyedSubscript:v4];
}

void sub_275DDFD9C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_275DDFDB8(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACC8] currentThread];
  v3 = [v2 threadDictionary];

  v4 = *MEMORY[0x277D80478];
  [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D80478]];
  v5 = [*(a1 + 32) ASVForSlideNode:*(a1 + 40)];
  if (!v5)
  {
    v6 = MEMORY[0x277D81150];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimatedTextureManager p_setupPrepareAnimationsOperationOnSlideNode:]_block_invoke"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimatedTextureManager.m"];
    [v6 handleFailureInFunction:v7 file:v8 lineNumber:429 isFatal:0 description:{"invalid nil value for '%{public}s'", "asv"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v10 = [WeakRetained isCancelled];

  if ((v10 & 1) == 0)
  {
    v11 = os_signpost_id_make_with_pointer(*(*(a1 + 32) + 120), v5);
    v12 = *(*(a1 + 32) + 120);
    v13 = v12;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      if (os_signpost_enabled(v12))
      {
        *buf = 134217984;
        v16 = [v5 slideNumber];
        _os_signpost_emit_with_name_impl(&dword_275D41000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "PrepareAnimations", "Begin slide %ld", buf, 0xCu);
      }

      [v5 prepareAnimations];
      v14 = *(*(a1 + 32) + 120);
      if (os_signpost_enabled(v14))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_275D41000, v14, OS_SIGNPOST_INTERVAL_END, v11, "PrepareAnimations", "End", buf, 2u);
      }

      goto LABEL_11;
    }

    [v5 prepareAnimations];
    if (v11 != -1)
    {
      v14 = *(*(a1 + 32) + 120);
LABEL_11:
    }
  }

  [v3 setObject:0 forKeyedSubscript:v4];
}

void sub_275DE0334()
{
  v0 = TSULogCreateCategory();
  v1 = KNAnimatedTextureManagerCat_log_t;
  KNAnimatedTextureManagerCat_log_t = v0;
}

void sub_275DE05BC(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 16));
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  os_unfair_lock_unlock((v2 + 16));
  if (v3 == 1)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    [v4 p_processSlideNode:v5 isHighPriority:0];
  }
}

void sub_275DE0C20(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v3 - 88));
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_275DE0C54(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained isCancelled];

  if ((v3 & 1) == 0)
  {
    v4 = [MEMORY[0x277CCACC8] currentThread];
    v10 = [v4 threadDictionary];

    v5 = *MEMORY[0x277D805D8];
    [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D805D8]];
    v6 = [a1[4] parent];
    v7 = [v6 rep];

    if (v7)
    {
      v8 = [a1[4] parent];
      v9 = [v8 rep];

      objc_sync_enter(v9);
      [a1[5] p_rasterizeTexture:a1[4]];
      objc_sync_exit(v9);
    }

    else
    {
      [a1[5] p_rasterizeTexture:a1[4]];
    }

    [v10 setObject:0 forKeyedSubscript:v5];
  }
}

void sub_275DE0DA0(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  [*(a1 + 32) setRenderingOperation:0];
  objc_sync_exit(obj);
}

void sub_275DE121C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak(&a27);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_275DE1260()
{
  v0 = TSULogCreateCategory();
  v1 = KNAnimatedTextureManagerCat_log_t;
  KNAnimatedTextureManagerCat_log_t = v0;
}

void sub_275DE12A0(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACC8] currentThread];
  v3 = [v2 threadDictionary];

  v4 = *MEMORY[0x277D80478];
  [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D80478]];
  v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
  os_unfair_lock_lock((*(a1 + 32) + 16));
  v5 = [*(*(a1 + 32) + 32) objectForKey:*(a1 + 40)];
  if (!v5)
  {
    goto LABEL_23;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (([WeakRetained isCancelled] & 1) != 0 || (v7 = *(a1 + 32), v8 = *(a1 + 40), *(v7 + 24) == v8))
  {

    goto LABEL_23;
  }

  v9 = objc_loadWeakRetained((v7 + 8));
  v10 = [v9 alternateNextSlideNode];

  if (v8 == v10)
  {
LABEL_23:
    os_unfair_lock_unlock((*(a1 + 32) + 16));
    v29 = 0;
    goto LABEL_24;
  }

  v31 = v4;
  v32 = v3;
  v30 = v5;
  v11 = v5;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v12 = *(*(a1 + 32) + 32);
  v13 = [v12 countByEnumeratingWithState:&v39 objects:v44 count:16];
  v33 = v11;
  if (v13)
  {
    v14 = v13;
    v15 = *v40;
    do
    {
      v16 = 0;
      do
      {
        if (*v40 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v39 + 1) + 8 * v16);
        v18 = objc_loadWeakRetained((*(a1 + 32) + 8));
        v19 = [v18 nextSlideNodeAfterSlideNode:v17];

        v20 = [*(*(a1 + 32) + 32) objectForKey:v19];
        if (v20 == v11)
        {
          v21 = [*(*(a1 + 32) + 32) objectForKey:v17];
          v22 = [v21 model];
          v23 = [v22 transitionRenderer];
          [v34 addObject:v23];

          v11 = v33;
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v14);
  }

  [*(*(a1 + 32) + 40) removeObject:*(a1 + 40)];
  [*(*(a1 + 32) + 32) removeObjectForKey:*(a1 + 40)];
  [*(*(a1 + 32) + 48) removeObject:*(a1 + 40)];
  os_unfair_lock_unlock((*(a1 + 32) + 16));
  [*(a1 + 32) p_removeTextureCacheForASV:v11];
  [v11 serializeTextures];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v24 = v34;
  v25 = [v24 countByEnumeratingWithState:&v35 objects:v43 count:16];
  v4 = v31;
  v3 = v32;
  v5 = v30;
  if (v25)
  {
    v26 = v25;
    v27 = *v36;
    do
    {
      v28 = 0;
      do
      {
        if (*v36 != v27)
        {
          objc_enumerationMutation(v24);
        }

        [*(*(&v35 + 1) + 8 * v28++) teardown];
      }

      while (v26 != v28);
      v26 = [v24 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v26);
  }

  v29 = v33;
LABEL_24:
  [v3 setObject:0 forKeyedSubscript:v4];
}

void sub_275DE1848()
{
  v0 = TSULogCreateCategory();
  v1 = KNAnimatedTextureManagerCat_log_t;
  KNAnimatedTextureManagerCat_log_t = v0;
}

void sub_275DE18EC()
{
  v0 = TSULogCreateCategory();
  v1 = KNAnimatedTextureManagerCat_log_t;
  KNAnimatedTextureManagerCat_log_t = v0;
}

void sub_275DE1A94()
{
  v0 = TSULogCreateCategory();
  v1 = KNAnimatedTextureManagerCat_log_t;
  KNAnimatedTextureManagerCat_log_t = v0;
}

void sub_275DE1D48(uint64_t a1)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v2 = [*(a1 + 32) count];
  if (v2 >= 2 && *(a1 + 56) == 1)
  {
    if ([KNRecordingMovieSegmentTrimmer canTrimMovieSegmentsInContext:*(a1 + 40)])
    {
      [*(a1 + 48) willModifyForUpgrade];
      v3 = objc_alloc_init(MEMORY[0x277CCAB58]);
      v4 = 1;
      do
      {
        v5 = [*(a1 + 32) objectAtIndexedSubscript:v4 - 1];
        [v5 startTime];
        v7 = v6;
        v8 = [*(a1 + 32) objectAtIndexedSubscript:v4];
        [v8 startTime];
        v10 = v9;

        v11 = v10 - v7;
        if (v11 <= 0.0)
        {
          [v3 addIndex:v4 - 1];
        }

        else
        {
          v12 = [[KNRecordingMovieSegmentTrimmer alloc] initWithMovieSegment:v5 trimDuration:v11];
          v13 = dispatch_semaphore_create(0);
          v15[0] = MEMORY[0x277D85DD0];
          v15[1] = 3221225472;
          v15[2] = sub_275DE2004;
          v15[3] = &unk_27A6990C8;
          v16 = *(a1 + 32);
          v18 = &v20;
          v19 = v4 - 1;
          v14 = v13;
          v17 = v14;
          [(KNRecordingMovieSegmentTrimmer *)v12 trimMovieSegmentWithCompletionHandler:v15];
          dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
        }

        ++v4;
      }

      while (v2 != v4);
      [*(a1 + 32) removeObjectsAtIndexes:v3];
    }

    else
    {
      *(v21 + 24) = 1;
    }
  }

  objc_storeStrong((*(a1 + 48) + 64), *(a1 + 32));
  *(*(a1 + 48) + 72) = *(v21 + 24) ^ 1;
  _Block_object_dispose(&v20, 8);
}

void sub_275DE1F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275DE2004(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    [*(a1 + 32) setObject:v3 atIndexedSubscript:*(a1 + 56)];
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

uint64_t sub_275DE244C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  qword_2812EB470 = &unk_2884D63B8;
  *algn_2812EB478 = 0;
  dword_2812EB480 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE24C4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275DE4498(&unk_2812EAA50, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE2534(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275DED580(&unk_2812EAD30, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE25A4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275DEA0D4(qword_2812EAC18, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE2614(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275DE92E4(&unk_2812EABD0, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE2684(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275DEACE0(&unk_2812EAC50, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE26F4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812EAB68 = v4;
  qword_2812EAB60 = &unk_2884D5548;
  if (atomic_load_explicit(dword_2812EA040, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  unk_2812EAB96 = 0u;
  unk_2812EAB88 = 0u;
  unk_2812EAB78 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275DE27B0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812EABB0 = v4;
  qword_2812EABA8 = &unk_2884D55F8;
  if (atomic_load_explicit(dword_2812EA070, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812EABC8 = 0;
  qword_2812EABC0 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275DE2864(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275E00180(&unk_2812EB3D0, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE28D4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275DEF034(qword_2812EADB8, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE2944(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275DEF9B0(qword_2812EADF0, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE29B4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  qword_2812EB1E8 = 0;
  unk_2812EB1F0 = 0;
  qword_2812EB1E0 = &unk_2884D6048;
  qword_2812EB1F8 = 0;
  unk_2812EB200 = 0;
  byte_2812EB208 = 1;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE2A38(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812EB610 = v4;
  qword_2812EB608 = &unk_2884D6728;
  if (atomic_load_explicit(dword_2812EA118, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812EB620 = 0;
  unk_2812EB628 = 0;
  qword_2812EB630 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275DE2AEC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812EB368 = v4;
  qword_2812EB360 = &unk_2884D61A8;
  if (atomic_load_explicit(dword_2812EA140, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812EB378 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275DE2B9C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275DFF4B4(qword_2812EB380, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE2C0C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275E19198(qword_2812EBD48, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE2C7C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812EBC88 = v4;
  qword_2812EBC80 = &unk_2884D76F8;
  if (atomic_load_explicit(dword_2812EA198, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812EBCC8 = 0;
  unk_2812EBCB8 = 0u;
  unk_2812EBCA8 = 0u;
  unk_2812EBC98 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275DE2D3C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275E17764(&unk_2812EBCD0, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE2DAC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812EBD28 = v4;
  qword_2812EBD20 = &unk_2884D7858;
  if (atomic_load_explicit(dword_2812EA1F8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  byte_2812EBD40 = 0;
  qword_2812EBD38 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275DE2E60(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275E19CC8(qword_2812EBD90, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE2ED0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  qword_2812EBDD0 = 0;
  unk_2812EBDD8 = 0;
  qword_2812EBDC8 = &unk_2884D7A68;
  qword_2812EBDE0 = 0;
  dword_2812EBDE8 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE2F50(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275E15710(&unk_2812EBBF8, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE2FC0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812EC178 = v4;
  qword_2812EC170 = &unk_2884D7C78;
  if (atomic_load_explicit(dword_2812EA280, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812EC188 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275DE3070(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812EC140 = v4;
  qword_2812EC138 = &unk_2884D7BC8;
  if (atomic_load_explicit(dword_2812EA2A0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812EC150 = 0;
  unk_2812EC158 = 0;
  dword_2812EC168 = 0;
  qword_2812EC160 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275DE3128(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275E1AB2C(&unk_2812EBDF0, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE3198(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275E12248(qword_2812EBAC8, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE3208(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812EADA0 = v4;
  qword_2812EAD98 = &unk_2884D5A18;
  if (atomic_load_explicit(dword_2812EA320, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812EADB0 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275DE32B8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275E08518(&unk_2812EB6C0, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE3328(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812EB6A0 = v4;
  qword_2812EB698 = &unk_2884D6938;
  if (atomic_load_explicit(dword_2812EA390, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812EB6B0 = 0;
  unk_2812EB6B8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275DE33D8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812EAD78 = v4;
  qword_2812EAD70 = &unk_2884D5968;
  if (atomic_load_explicit(dword_2812EA3B0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812EAD90 = 0;
  qword_2812EAD88 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275DE348C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812EBBE0 = v4;
  qword_2812EBBD8 = &unk_2884D7598;
  if (atomic_load_explicit(dword_2812EA3D0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812EBBF0 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275DE353C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275E0B488(qword_2812EB848, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE35AC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275E0C440(&unk_2812EB8B8, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE361C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  qword_2812EB948 = 0;
  unk_2812EB950 = 0;
  qword_2812EB940 = &unk_2884D6CA8;
  byte_2812EB958 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE3698(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275E0E9E0(&unk_2812EB998, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE3708(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275E0E0B8(qword_2812EB960, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE3778(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812EBA10 = v4;
  qword_2812EBA08 = &unk_2884D6F68;
  if (atomic_load_explicit(dword_2812EA4C0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812EBA20 = 0;
  unk_2812EBA28 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275DE3828(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275E1101C(&unk_2812EBA50, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE3898(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275E119AC(&unk_2812EBA90, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE3908(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812EB9E0 = v4;
  qword_2812EB9D8 = &unk_2884D6EB8;
  if (atomic_load_explicit(dword_2812EA528, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812EB9F0 = 0;
  unk_2812EB9F8 = 0;
  qword_2812EBA00 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275DE39BC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812EBA38 = v4;
  qword_2812EBA30 = &unk_2884D7018;
  dword_2812EBA48 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275DE3A40(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812EB920 = v4;
  qword_2812EB918 = &unk_2884D6BF8;
  if (atomic_load_explicit(dword_2812EA568, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  byte_2812EB938 = 0;
  qword_2812EB930 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275DE3AF4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275E0433C(&unk_2812EB590, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE3B64(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275DF1B58(&unk_2812EAEB0, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE3BD4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275DF13EC(&unk_2812EAE80, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE3C44(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275DF0D04(qword_2812EAE58, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE3CB4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275DF04A4(qword_2812EAE30, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE3D24(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275E1443C(qword_2812EBB80, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE3D94(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812EBB60 = v4;
  qword_2812EBB58 = &unk_2884D7438;
  if (atomic_load_explicit(dword_2812EA6A0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812EBB70 = 0;
  unk_2812EBB78 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275DE3E44(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275DF7204(&unk_2812EB0B8, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE3EB4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275DF693C(qword_2812EB080, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE3F24(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812EBB40 = v4;
  qword_2812EBB38 = &unk_2884D7388;
  if (atomic_load_explicit(dword_2812EA728, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812EBB50 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275DE3FD4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812EB670 = v4;
  qword_2812EB668 = &unk_2884D6888;
  if (atomic_load_explicit(dword_2812EA748, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812EB680 = 0;
  unk_2812EB688 = 0;
  dword_2812EB690 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275DE4088(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812EB640 = v4;
  qword_2812EB638 = &unk_2884D67D8;
  if (atomic_load_explicit(dword_2812EA770, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812EB650 = 0;
  unk_2812EB658 = 0;
  unk_2812EB65D = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275DE413C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275E03A04(qword_2812EB558, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE41AC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275E12B2C(&unk_2812EBAF8, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE421C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275E02064(&unk_2812EB4B0, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE428C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275E01804(qword_2812EB488, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE42FC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812EAB48 = v4;
  qword_2812EAB40 = &unk_2884D5498;
  if (atomic_load_explicit(dword_2812EA828, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812EAB58 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275DE43AC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275DE609C(&unk_2812EAAD8, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE441C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.pb.cc", a4);
  sub_275DFB2C8(&unk_2812EB210, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275DE4498(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884D5338;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  if (atomic_load_explicit(dword_2812E9F68, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(a1 + 24) = MEMORY[0x277D80A90];
  *(a1 + 32) = v3;
  *(a1 + 40) = v3;
  *(a1 + 48) = v3;
  *(a1 + 56) = v3;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  return a1;
}

uint64_t sub_275DE4520(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = &unk_2884D5338;
  v4 = *(a2 + 16);
  *(a1 + 16) = v4;
  v5 = *(a2 + 8);
  if (v5)
  {
    sub_275E22484((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v4 = *(a2 + 16);
  }

  v6 = MEMORY[0x277D80A90];
  *(a1 + 24) = MEMORY[0x277D80A90];
  if (v4)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v4 = *(a2 + 16);
  }

  *(a1 + 32) = v6;
  if ((v4 & 2) != 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v4 = *(a2 + 16);
  }

  *(a1 + 40) = v6;
  if ((v4 & 4) != 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v4 = *(a2 + 16);
  }

  *(a1 + 48) = v6;
  if ((v4 & 8) != 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v4 = *(a2 + 16);
  }

  *(a1 + 56) = v6;
  if ((v4 & 0x10) != 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v4 = *(a2 + 16);
  }

  if ((v4 & 0x20) != 0)
  {
    operator new();
  }

  *(a1 + 64) = 0;
  if ((v4 & 0x40) != 0)
  {
    operator new();
  }

  *(a1 + 72) = 0;
  if ((v4 & 0x80) != 0)
  {
    operator new();
  }

  *(a1 + 80) = 0;
  if ((v4 & 0x100) != 0)
  {
    operator new();
  }

  *(a1 + 88) = 0;
  v7 = *(a2 + 96);
  v8 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v7;
  *(a1 + 112) = v8;
  return a1;
}

uint64_t sub_275DE4794(uint64_t a1)
{
  sub_275DE47C8(a1);
  sub_275DE4968((a1 + 8));
  return a1;
}

uint64_t sub_275DE47C8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277C8F960](v2, 0x1012C40EC159624);
  }

  v4 = *(v1 + 32);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    result = MEMORY[0x277C8F960](v4, 0x1012C40EC159624);
  }

  v5 = *(v1 + 40);
  if (v5 != v3)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    result = MEMORY[0x277C8F960](v5, 0x1012C40EC159624);
  }

  v6 = *(v1 + 48);
  if (v6 != v3)
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    result = MEMORY[0x277C8F960](v6, 0x1012C40EC159624);
  }

  v7 = *(v1 + 56);
  if (v7 != v3)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    result = MEMORY[0x277C8F960](v7, 0x1012C40EC159624);
  }

  if (v1 != &unk_2812EAA50)
  {
    v8 = *(v1 + 64);
    if (v8)
    {
      TSP::Color::~Color(v8);
      MEMORY[0x277C8F960]();
    }

    if (*(v1 + 72))
    {
      v9 = MEMORY[0x277C8E820]();
      MEMORY[0x277C8F960](v9, 0x10A1C405E354A75);
    }

    if (*(v1 + 80))
    {
      v10 = MEMORY[0x277C8E820]();
      MEMORY[0x277C8F960](v10, 0x10A1C405E354A75);
    }

    result = *(v1 + 88);
    if (result)
    {
      MEMORY[0x277C8E820]();

      JUMPOUT(0x277C8F960);
    }
  }

  return result;
}

uint64_t *sub_275DE4968(uint64_t *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = v1 & 0xFFFFFFFFFFFFFFFELL;
    if (!*(v1 & 0xFFFFFFFFFFFFFFFELL) && v2 != 0)
    {
      v4 = *(v2 + 8);
      if (v4 != *(v2 + 16))
      {
        google::protobuf::UnknownFieldSet::ClearFallback((v2 + 8));
        v4 = *(v2 + 8);
      }

      if (v4)
      {
        *(v2 + 16) = v4;
        operator delete(v4);
      }

      JUMPOUT(0x277C8F960);
    }
  }

  return result;
}

void sub_275DE4A00(uint64_t a1)
{
  sub_275DE4794(a1);

  JUMPOUT(0x277C8F960);
}

google::protobuf::UnknownFieldSet *sub_275DE4A40(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = *(result + 4);
  if (!v2)
  {
    goto LABEL_11;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_23:
    v6 = *(result + 4) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_27;
      }
    }

LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_31:
    v8 = *(result + 6) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v8 + 23) < 0)
    {
      **v8 = 0;
      *(v8 + 8) = 0;
      if ((v2 & 0x10) != 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      *v8 = 0;
      *(v8 + 23) = 0;
      if ((v2 & 0x10) != 0)
      {
        goto LABEL_35;
      }
    }

LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_39:
    result = TSP::Color::Clear(*(result + 8));
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_40;
  }

  v5 = *(result + 3) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_23;
    }
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_27:
  v7 = *(result + 5) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v7 + 23) < 0)
  {
    **v7 = 0;
    *(v7 + 8) = 0;
    if ((v2 & 8) != 0)
    {
      goto LABEL_31;
    }
  }

  else
  {
    *v7 = 0;
    *(v7 + 23) = 0;
    if ((v2 & 8) != 0)
    {
      goto LABEL_31;
    }
  }

LABEL_6:
  if ((v2 & 0x10) == 0)
  {
    goto LABEL_7;
  }

LABEL_35:
  v9 = *(result + 7) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v9 + 23) < 0)
  {
    **v9 = 0;
    *(v9 + 8) = 0;
    if ((v2 & 0x20) != 0)
    {
      goto LABEL_39;
    }
  }

  else
  {
    *v9 = 0;
    *(v9 + 23) = 0;
    if ((v2 & 0x20) != 0)
    {
      goto LABEL_39;
    }
  }

LABEL_8:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_40:
  result = TSD::PathSourceArchive::Clear(*(v1 + 72));
  if ((v2 & 0x80) != 0)
  {
LABEL_10:
    result = TSD::PathSourceArchive::Clear(*(v1 + 80));
  }

LABEL_11:
  if ((v2 & 0x100) != 0)
  {
    result = TSD::PathSourceArchive::Clear(*(v1 + 88));
  }

  if ((v2 & 0xFE00) != 0)
  {
    *(v1 + 128) = 0;
    *(v1 + 96) = 0u;
    *(v1 + 112) = 0u;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_275E224D0(v3);
  }

  return result;
}

google::protobuf::internal *sub_275DE4BEC(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v44 = a2;
  v5 = 0;
  if ((sub_275E221E8(a3, &v44, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v44 + 1);
      v8 = *v44;
      if (*v44 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v44, (v9 - 128));
          v44 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_90;
          }

          v7 = TagFallback;
          v8 = v11;
          goto LABEL_7;
        }

        v7 = (v44 + 2);
      }

      v44 = v7;
LABEL_7:
      switch(v8 >> 3)
      {
        case 1u:
          if (v8 != 10)
          {
            goto LABEL_71;
          }

          *(a1 + 16) |= 1u;
          goto LABEL_52;
        case 2u:
          if (v8 != 18)
          {
            goto LABEL_71;
          }

          *(a1 + 16) |= 2u;
          goto LABEL_52;
        case 3u:
          if (v8 != 25)
          {
            goto LABEL_71;
          }

          v17 = *v7;
          v12 = (v7 + 8);
          v5 |= 0x200u;
          *(a1 + 96) = v17;
          goto LABEL_27;
        case 4u:
          if (v8 != 32)
          {
            goto LABEL_71;
          }

          v5 |= 0x800u;
          v21 = (v7 + 1);
          LODWORD(v22) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_37;
          }

          v23 = *v21;
          v22 = (v22 + (v23 << 7) - 128);
          if (v23 < 0)
          {
            v38 = google::protobuf::internal::VarintParseSlow32(v7, v22);
            v44 = v38;
            *(a1 + 112) = v39;
            if (!v38)
            {
              goto LABEL_90;
            }
          }

          else
          {
            v21 = (v7 + 2);
LABEL_37:
            v44 = v21;
            *(a1 + 112) = v22;
          }

          goto LABEL_79;
        case 5u:
          if (v8 != 41)
          {
            goto LABEL_71;
          }

          v14 = *v7;
          v12 = (v7 + 8);
          v5 |= 0x400u;
          *(a1 + 104) = v14;
          goto LABEL_27;
        case 6u:
          if (v8 != 48)
          {
            goto LABEL_71;
          }

          v5 |= 0x4000u;
          v26 = (v7 + 1);
          v25 = *v7;
          if ((v25 & 0x8000000000000000) == 0)
          {
            goto LABEL_49;
          }

          v27 = *v26;
          v25 = (v27 << 7) + v25 - 128;
          if (v27 < 0)
          {
            v40 = google::protobuf::internal::VarintParseSlow64(v7, v25);
            v44 = v40;
            *(a1 + 128) = v41 != 0;
            if (!v40)
            {
              goto LABEL_90;
            }
          }

          else
          {
            v26 = (v7 + 2);
LABEL_49:
            v44 = v26;
            *(a1 + 128) = v25 != 0;
          }

          goto LABEL_79;
        case 7u:
          if (v8 != 58)
          {
            goto LABEL_71;
          }

          *(a1 + 16) |= 0x20u;
          v29 = *(a1 + 64);
          if (!v29)
          {
            v30 = *(a1 + 8);
            if (v30)
            {
              v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
            }

            v29 = MEMORY[0x277C8F010](v30);
            *(a1 + 64) = v29;
            v7 = v44;
          }

          v28 = sub_275E5B69C(a3, v29, v7);
          goto LABEL_78;
        case 8u:
          if (v8 != 66)
          {
            goto LABEL_71;
          }

          *(a1 + 16) |= 0x40u;
          v15 = *(a1 + 72);
          if (v15)
          {
            goto LABEL_70;
          }

          v24 = *(a1 + 8);
          if (v24)
          {
            v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
          }

          v15 = MEMORY[0x277C8EFB0](v24);
          *(a1 + 72) = v15;
          goto LABEL_69;
        case 9u:
          if (v8 != 74)
          {
            goto LABEL_71;
          }

          *(a1 + 16) |= 0x80u;
          v15 = *(a1 + 80);
          if (v15)
          {
            goto LABEL_70;
          }

          v34 = *(a1 + 8);
          if (v34)
          {
            v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
          }

          v15 = MEMORY[0x277C8EFB0](v34);
          *(a1 + 80) = v15;
          goto LABEL_69;
        case 0xAu:
          if (v8 != 82)
          {
            goto LABEL_71;
          }

          *(a1 + 16) |= 0x100u;
          v15 = *(a1 + 88);
          if (v15)
          {
            goto LABEL_70;
          }

          v16 = *(a1 + 8);
          if (v16)
          {
            v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
          }

          v15 = MEMORY[0x277C8EFB0](v16);
          *(a1 + 88) = v15;
LABEL_69:
          v7 = v44;
LABEL_70:
          v28 = sub_275E5B76C(a3, v15, v7);
          goto LABEL_78;
        case 0xBu:
          if (v8 != 88)
          {
            goto LABEL_71;
          }

          v5 |= 0x1000u;
          v31 = (v7 + 1);
          LODWORD(v32) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_63;
          }

          v33 = *v31;
          v32 = (v32 + (v33 << 7) - 128);
          if (v33 < 0)
          {
            v42 = google::protobuf::internal::VarintParseSlow32(v7, v32);
            v44 = v42;
            *(a1 + 116) = v43;
            if (!v42)
            {
              goto LABEL_90;
            }
          }

          else
          {
            v31 = (v7 + 2);
LABEL_63:
            v44 = v31;
            *(a1 + 116) = v32;
          }

          goto LABEL_79;
        case 0xCu:
          if (v8 != 97)
          {
            goto LABEL_71;
          }

          v13 = *v7;
          v12 = (v7 + 8);
          v5 |= 0x2000u;
          *(a1 + 120) = v13;
LABEL_27:
          v44 = v12;
          goto LABEL_79;
        case 0xDu:
          if (v8 != 106)
          {
            goto LABEL_71;
          }

          *(a1 + 16) |= 4u;
          goto LABEL_52;
        case 0xEu:
          if (v8 != 114)
          {
            goto LABEL_71;
          }

          *(a1 + 16) |= 8u;
          goto LABEL_52;
        case 0xFu:
          if (v8 != 122)
          {
            goto LABEL_71;
          }

          *(a1 + 16) |= 0x10u;
LABEL_52:
          google::protobuf::internal::ArenaStringPtr::Mutable();
          v28 = google::protobuf::internal::InlineGreedyStringParser();
          goto LABEL_78;
        case 0x10u:
          if (v8 != 128)
          {
            goto LABEL_71;
          }

          v5 |= 0x8000u;
          v19 = (v7 + 1);
          v18 = *v7;
          if ((v18 & 0x8000000000000000) == 0)
          {
            goto LABEL_32;
          }

          v20 = *v19;
          v18 = (v20 << 7) + v18 - 128;
          if (v20 < 0)
          {
            v36 = google::protobuf::internal::VarintParseSlow64(v7, v18);
            v44 = v36;
            *(a1 + 129) = v37 != 0;
            if (!v36)
            {
              goto LABEL_90;
            }
          }

          else
          {
            v19 = (v7 + 2);
LABEL_32:
            v44 = v19;
            *(a1 + 129) = v18 != 0;
          }

          goto LABEL_79;
        default:
LABEL_71:
          if (v8)
          {
            v35 = (v8 & 7) == 4;
          }

          else
          {
            v35 = 1;
          }

          if (v35)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_275E22260((a1 + 8));
          }

          v28 = google::protobuf::internal::UnknownFieldParse();
LABEL_78:
          v44 = v28;
          if (!v28)
          {
LABEL_90:
            v44 = 0;
            goto LABEL_2;
          }

LABEL_79:
          if (sub_275E221E8(a3, &v44, *(a3 + 92)))
          {
            goto LABEL_2;
          }

          break;
      }
    }
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v44;
}

unsigned __int8 *sub_275DE51A0(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_275DE5774(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_275DE5774(a3, 2, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x200) == 0)
  {
LABEL_4:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_5;
    }

LABEL_23:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v8 = *(a1 + 112);
    *v4 = 32;
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v9 = v8 >> 7;
      if (v8 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v4;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v4 - 1) = v10;
        if ((v6 & 0x400) != 0)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v4[2] = v9;
        v4 += 3;
        if ((v6 & 0x400) != 0)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
      v4[1] = v8;
      v4 += 2;
      if ((v6 & 0x400) != 0)
      {
        goto LABEL_34;
      }
    }

LABEL_6:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_20:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(a1 + 96);
  *v4 = 25;
  *(v4 + 1) = v7;
  v4 += 9;
  if ((v6 & 0x800) != 0)
  {
    goto LABEL_23;
  }

LABEL_5:
  if ((v6 & 0x400) == 0)
  {
    goto LABEL_6;
  }

LABEL_34:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v12 = *(a1 + 104);
  *v4 = 41;
  *(v4 + 1) = v12;
  v4 += 9;
  if ((v6 & 0x4000) == 0)
  {
LABEL_7:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

LABEL_37:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v13 = *(a1 + 128);
  *v4 = 48;
  v4[1] = v13;
  v4 += 2;
  if ((v6 & 0x20) == 0)
  {
LABEL_8:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_50;
  }

LABEL_40:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v14 = *(a1 + 64);
  *v4 = 58;
  v15 = *(v14 + 5);
  if (v15 > 0x7F)
  {
    v4[1] = v15 | 0x80;
    v17 = v15 >> 7;
    if (v15 >> 14)
    {
      v16 = v4 + 3;
      do
      {
        *(v16 - 1) = v17 | 0x80;
        v18 = v17 >> 7;
        ++v16;
        v19 = v17 >> 14;
        v17 >>= 7;
      }

      while (v19);
      *(v16 - 1) = v18;
    }

    else
    {
      v4[2] = v17;
      v16 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v15;
    v16 = v4 + 2;
  }

  v4 = TSP::Color::_InternalSerialize(v14, v16, a3);
  if ((v6 & 0x40) == 0)
  {
LABEL_9:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_60;
  }

LABEL_50:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v20 = *(a1 + 72);
  *v4 = 66;
  v21 = *(v20 + 5);
  if (v21 > 0x7F)
  {
    v4[1] = v21 | 0x80;
    v23 = v21 >> 7;
    if (v21 >> 14)
    {
      v22 = v4 + 3;
      do
      {
        *(v22 - 1) = v23 | 0x80;
        v24 = v23 >> 7;
        ++v22;
        v25 = v23 >> 14;
        v23 >>= 7;
      }

      while (v25);
      *(v22 - 1) = v24;
    }

    else
    {
      v4[2] = v23;
      v22 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v21;
    v22 = v4 + 2;
  }

  v4 = TSD::PathSourceArchive::_InternalSerialize(v20, v22, a3);
  if ((v6 & 0x80) == 0)
  {
LABEL_10:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_70;
  }

LABEL_60:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v26 = *(a1 + 80);
  *v4 = 74;
  v27 = *(v26 + 5);
  if (v27 > 0x7F)
  {
    v4[1] = v27 | 0x80;
    v29 = v27 >> 7;
    if (v27 >> 14)
    {
      v28 = v4 + 3;
      do
      {
        *(v28 - 1) = v29 | 0x80;
        v30 = v29 >> 7;
        ++v28;
        v31 = v29 >> 14;
        v29 >>= 7;
      }

      while (v31);
      *(v28 - 1) = v30;
    }

    else
    {
      v4[2] = v29;
      v28 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v27;
    v28 = v4 + 2;
  }

  v4 = TSD::PathSourceArchive::_InternalSerialize(v26, v28, a3);
  if ((v6 & 0x100) == 0)
  {
LABEL_11:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

LABEL_80:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v38 = *(a1 + 116);
    *v4 = 88;
    if (v38 > 0x7F)
    {
      v4[1] = v38 | 0x80;
      v39 = v38 >> 7;
      if (v38 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v39 | 0x80;
          v40 = v39 >> 7;
          ++v4;
          v41 = v39 >> 14;
          v39 >>= 7;
        }

        while (v41);
        *(v4 - 1) = v40;
        if ((v6 & 0x2000) != 0)
        {
          goto LABEL_91;
        }
      }

      else
      {
        v4[2] = v39;
        v4 += 3;
        if ((v6 & 0x2000) != 0)
        {
          goto LABEL_91;
        }
      }
    }

    else
    {
      v4[1] = v38;
      v4 += 2;
      if ((v6 & 0x2000) != 0)
      {
        goto LABEL_91;
      }
    }

LABEL_13:
    if ((v6 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_94;
  }

LABEL_70:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v32 = *(a1 + 88);
  *v4 = 82;
  v33 = *(v32 + 5);
  if (v33 > 0x7F)
  {
    v4[1] = v33 | 0x80;
    v35 = v33 >> 7;
    if (v33 >> 14)
    {
      v34 = v4 + 3;
      do
      {
        *(v34 - 1) = v35 | 0x80;
        v36 = v35 >> 7;
        ++v34;
        v37 = v35 >> 14;
        v35 >>= 7;
      }

      while (v37);
      *(v34 - 1) = v36;
    }

    else
    {
      v4[2] = v35;
      v34 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v33;
    v34 = v4 + 2;
  }

  v4 = TSD::PathSourceArchive::_InternalSerialize(v32, v34, a3);
  if ((v6 & 0x1000) != 0)
  {
    goto LABEL_80;
  }

LABEL_12:
  if ((v6 & 0x2000) == 0)
  {
    goto LABEL_13;
  }

LABEL_91:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v42 = *(a1 + 120);
  *v4 = 97;
  *(v4 + 1) = v42;
  v4 += 9;
  if ((v6 & 4) == 0)
  {
LABEL_14:
    if ((v6 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_95;
  }

LABEL_94:
  v4 = sub_275DE5774(a3, 13, (*(a1 + 40) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) == 0)
  {
LABEL_15:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_96;
  }

LABEL_95:
  v4 = sub_275DE5774(a3, 14, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x10) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_97;
  }

LABEL_96:
  v4 = sub_275DE5774(a3, 15, (*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x8000) == 0)
  {
    goto LABEL_100;
  }

LABEL_97:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v43 = *(a1 + 129);
  *v4 = 384;
  v4[2] = v43;
  v4 += 3;
LABEL_100:
  v44 = *(a1 + 8);
  if ((v44 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v44 & 0xFFFFFFFFFFFFFFFELL) + 8, v4, a3);
}

uint64_t sub_275DE5774(uint64_t *a1, uint64_t a2, const void **a3, _BYTE *a4)
{
  v4 = *(a3 + 23);
  if ((v4 & 0x8000000000000000) == 0 || (v4 = a3[1], v4 <= 127))
  {
    v5 = *a1;
    v6 = 8 * a2;
    if ((8 * a2) >= 0x80)
    {
      v8 = 2;
      v9 = 3;
      v10 = 4;
      if (v6 >> 28)
      {
        v10 = 5;
      }

      if (v6 >= 0x200000)
      {
        v9 = v10;
      }

      if (v6 >= 0x4000)
      {
        v8 = v9;
      }

      if ((v5 + ~&a4[v8] + 16) >= v4)
      {
        *a4 = v6 | 0x82;
        v11 = v6 >> 7;
        if (v6 >> 14)
        {
          v7 = a4 + 2;
          do
          {
            *(v7 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v7;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v7 - 1) = v12;
        }

        else
        {
          a4[1] = v11;
          v7 = a4 + 2;
        }

LABEL_18:
        *v7 = v4;
        v14 = v7 + 1;
        if (*(a3 + 23) >= 0)
        {
          v15 = a3;
        }

        else
        {
          v15 = *a3;
        }

        memcpy(v14, v15, v4);
        return v14 + v4;
      }
    }

    else if (v5 - a4 + 14 >= v4)
    {
      *a4 = v6 | 2;
      v7 = a4 + 1;
      goto LABEL_18;
    }
  }

  return MEMORY[0x2821EAB50](a1, a2);
}

uint64_t sub_275DE58A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    v3 = 0;
    goto LABEL_19;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v4 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(v4 + 23);
  v6 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  v3 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
LABEL_9:
    v7 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((v2 & 4) != 0)
  {
    v15 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v16 = *(v15 + 23);
    v17 = *(v15 + 8);
    if ((v16 & 0x80u) == 0)
    {
      v17 = v16;
    }

    v3 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_14:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_43;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_14;
  }

  v18 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  v19 = *(v18 + 23);
  v20 = *(v18 + 8);
  if ((v19 & 0x80u) == 0)
  {
    v20 = v19;
  }

  v3 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_15:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_46;
  }

LABEL_43:
  v21 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  v22 = *(v21 + 23);
  v23 = *(v21 + 8);
  if ((v22 & 0x80u) == 0)
  {
    v23 = v22;
  }

  v3 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_16:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_47;
  }

LABEL_46:
  v24 = TSP::Color::ByteSizeLong(*(a1 + 64));
  v3 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_17:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_47:
  v25 = TSD::PathSourceArchive::ByteSizeLong(*(a1 + 72));
  v3 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_18:
    v10 = TSD::PathSourceArchive::ByteSizeLong(*(a1 + 80));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_19:
  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v11 = TSD::PathSourceArchive::ByteSizeLong(*(a1 + 88));
      v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v12 = v3 + 9;
    if ((v2 & 0x200) == 0)
    {
      v12 = v3;
    }

    if ((v2 & 0x400) != 0)
    {
      v12 += 9;
    }

    if ((v2 & 0x800) != 0)
    {
      v12 += ((9 * (__clz(*(a1 + 112) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 0x1000) != 0)
    {
      v12 += ((9 * (__clz(*(a1 + 116) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 0x2000) != 0)
    {
      v12 += 9;
    }

    v13 = v12 + ((v2 >> 13) & 2);
    if ((v2 & 0x8000) != 0)
    {
      v3 = v13 + 3;
    }

    else
    {
      v3 = v13;
    }
  }

  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v3, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v3;
    return v3;
  }
}

uint64_t sub_275DE5BE0(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D7D18, 0);
  if (v4)
  {

    return sub_275DE5C88(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275DE5C88(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      result = google::protobuf::internal::ArenaStringPtr::Set();
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 16) |= 2u;
    result = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

LABEL_13:
    *(v3 + 16) |= 4u;
    result = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    }

LABEL_14:
    *(v3 + 16) |= 8u;
    result = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

LABEL_15:
    *(v3 + 16) |= 0x10u;
    result = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 0x20) == 0)
    {
LABEL_24:
      v9 = MEMORY[0x277D804C8];
      if ((v5 & 0x40) != 0)
      {
        *(v3 + 16) |= 0x40u;
        v10 = *(v3 + 72);
        if (!v10)
        {
          v11 = *(v3 + 8);
          if (v11)
          {
            v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
          }

          v10 = MEMORY[0x277C8EFB0](v11);
          *(v3 + 72) = v10;
        }

        if (*(a2 + 72))
        {
          v12 = *(a2 + 72);
        }

        else
        {
          v12 = v9;
        }

        result = TSD::PathSourceArchive::MergeFrom(v10, v12);
      }

      if ((v5 & 0x80) != 0)
      {
        *(v3 + 16) |= 0x80u;
        v13 = *(v3 + 80);
        if (!v13)
        {
          v14 = *(v3 + 8);
          if (v14)
          {
            v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
          }

          v13 = MEMORY[0x277C8EFB0](v14);
          *(v3 + 80) = v13;
        }

        if (*(a2 + 80))
        {
          v15 = *(a2 + 80);
        }

        else
        {
          v15 = v9;
        }

        result = TSD::PathSourceArchive::MergeFrom(v13, v15);
      }

      goto LABEL_42;
    }

LABEL_16:
    *(v3 + 16) |= 0x20u;
    v6 = *(v3 + 64);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = MEMORY[0x277C8F010](v7);
      *(v3 + 64) = v6;
    }

    if (*(a2 + 64))
    {
      v8 = *(a2 + 64);
    }

    else
    {
      v8 = MEMORY[0x277D809E8];
    }

    result = TSP::Color::MergeFrom(v6, v8);
    goto LABEL_24;
  }

LABEL_42:
  if ((v5 & 0xFF00) == 0)
  {
    return result;
  }

  if ((v5 & 0x100) != 0)
  {
    *(v3 + 16) |= 0x100u;
    v16 = *(v3 + 88);
    if (!v16)
    {
      v17 = *(v3 + 8);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = MEMORY[0x277C8EFB0](v17);
      *(v3 + 88) = v16;
    }

    if (*(a2 + 88))
    {
      v18 = *(a2 + 88);
    }

    else
    {
      v18 = MEMORY[0x277D804C8];
    }

    result = TSD::PathSourceArchive::MergeFrom(v16, v18);
    if ((v5 & 0x200) == 0)
    {
LABEL_45:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_63;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_45;
  }

  *(v3 + 96) = *(a2 + 96);
  if ((v5 & 0x400) == 0)
  {
LABEL_46:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(v3 + 104) = *(a2 + 104);
  if ((v5 & 0x800) == 0)
  {
LABEL_47:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(v3 + 112) = *(a2 + 112);
  if ((v5 & 0x1000) == 0)
  {
LABEL_48:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(v3 + 116) = *(a2 + 116);
  if ((v5 & 0x2000) == 0)
  {
LABEL_49:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_50;
    }

LABEL_67:
    *(v3 + 128) = *(a2 + 128);
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

LABEL_66:
  *(v3 + 120) = *(a2 + 120);
  if ((v5 & 0x4000) != 0)
  {
    goto LABEL_67;
  }

LABEL_50:
  if ((v5 & 0x8000) != 0)
  {
LABEL_51:
    *(v3 + 129) = *(a2 + 129);
  }

LABEL_52:
  *(v3 + 16) |= v5;
  return result;
}

google::protobuf::UnknownFieldSet *sub_275DE5FA4(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275DE4A40(result);

    return sub_275DE5BE0(v4, a2);
  }

  return result;
}

uint64_t sub_275DE5FF0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x20) != 0)
  {
    result = TSP::Color::IsInitialized(*(a1 + 64));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x40) != 0)
  {
    result = TSD::PathSourceArchive::IsInitialized(*(a1 + 72));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x80) != 0)
  {
    result = TSD::PathSourceArchive::IsInitialized(*(a1 + 80));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x100) == 0)
  {
    return 1;
  }

  result = TSD::PathSourceArchive::IsInitialized(*(a1 + 88));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_275DE609C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884D53E8;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  if (atomic_load_explicit(dword_2812EA848, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(a1 + 24) = MEMORY[0x277D80A90];
  *(a1 + 32) = v3;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 92) = 0x100000001;
  return a1;
}

uint64_t sub_275DE6128(uint64_t a1)
{
  sub_275DE615C(a1);
  sub_275DE4968((a1 + 8));
  return a1;
}

uint64_t sub_275DE615C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277C8F960](v2, 0x1012C40EC159624);
  }

  v4 = *(v1 + 32);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    result = MEMORY[0x277C8F960](v4, 0x1012C40EC159624);
  }

  if (v1 != &unk_2812EAAD8)
  {
    v5 = *(v1 + 40);
    if (v5)
    {
      TSP::Color::~Color(v5);
      MEMORY[0x277C8F960]();
    }

    result = *(v1 + 48);
    if (result)
    {
      sub_275DE4794(result);

      JUMPOUT(0x277C8F960);
    }
  }

  return result;
}

void sub_275DE625C(uint64_t a1)
{
  sub_275DE6128(a1);

  JUMPOUT(0x277C8F960);
}

google::protobuf::UnknownFieldSet *sub_275DE629C(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_7;
  }

  if (v2)
  {
    v5 = *(result + 3) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_19;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_19:
  v6 = *(result + 4) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v6 + 23) < 0)
  {
    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_23;
    }

LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  *v6 = 0;
  *(v6 + 23) = 0;
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_23:
  result = TSP::Color::Clear(*(result + 5));
  if ((v2 & 8) != 0)
  {
LABEL_6:
    result = sub_275DE4A40(*(v1 + 48));
  }

LABEL_7:
  if ((v2 & 0xF0) != 0)
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
    *(v1 + 72) = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 84) = 0;
    *(v1 + 76) = 0;
    *(v1 + 92) = 1;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 88) = 1;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_275E224D0(v3);
  }

  return result;
}

google::protobuf::internal *sub_275DE63AC(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v64 = a2;
  v5 = 0;
  if ((sub_275E221E8(a3, &v64, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v64 + 1);
      v8 = *v64;
      if (*v64 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v64, (v9 - 128));
          v64 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_116;
          }

          v7 = TagFallback;
          v8 = v11;
          goto LABEL_7;
        }

        v7 = (v64 + 2);
      }

      v64 = v7;
LABEL_7:
      switch(v8 >> 3)
      {
        case 1u:
          if (v8 != 10)
          {
            goto LABEL_85;
          }

          *(a1 + 16) |= 1u;
          goto LABEL_33;
        case 2u:
          if (v8 != 18)
          {
            goto LABEL_85;
          }

          *(a1 + 16) |= 2u;
LABEL_33:
          google::protobuf::internal::ArenaStringPtr::Mutable();
          v23 = google::protobuf::internal::InlineGreedyStringParser();
          goto LABEL_92;
        case 3u:
          if (v8 != 25)
          {
            goto LABEL_85;
          }

          v33 = *v7;
          v18 = (v7 + 8);
          v5 |= 0x10u;
          *(a1 + 56) = v33;
          goto LABEL_84;
        case 4u:
          if (v8 != 32)
          {
            goto LABEL_85;
          }

          v5 |= 0x20u;
          v30 = (v7 + 1);
          LODWORD(v31) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_48;
          }

          v32 = *v30;
          v31 = (v31 + (v32 << 7) - 128);
          if (v32 < 0)
          {
            v58 = google::protobuf::internal::VarintParseSlow32(v7, v31);
            v64 = v58;
            *(a1 + 64) = v59;
            if (!v58)
            {
              goto LABEL_116;
            }
          }

          else
          {
            v30 = (v7 + 2);
LABEL_48:
            v64 = v30;
            *(a1 + 64) = v31;
          }

          goto LABEL_93;
        case 5u:
          if (v8 != 45)
          {
            goto LABEL_85;
          }

          v19 = *v7;
          v18 = (v7 + 4);
          v5 |= 0x40u;
          *(a1 + 68) = v19;
          goto LABEL_84;
        case 6u:
          if (v8 != 48)
          {
            goto LABEL_85;
          }

          v5 |= 0x2000u;
          v25 = (v7 + 1);
          v24 = *v7;
          if ((v24 & 0x8000000000000000) == 0)
          {
            goto LABEL_38;
          }

          v26 = *v25;
          v24 = (v26 << 7) + v24 - 128;
          if (v26 < 0)
          {
            v54 = google::protobuf::internal::VarintParseSlow64(v7, v24);
            v64 = v54;
            *(a1 + 87) = v55 != 0;
            if (!v54)
            {
              goto LABEL_116;
            }
          }

          else
          {
            v25 = (v7 + 2);
LABEL_38:
            v64 = v25;
            *(a1 + 87) = v24 != 0;
          }

          goto LABEL_93;
        case 7u:
          if (v8 != 58)
          {
            goto LABEL_85;
          }

          *(a1 + 16) |= 4u;
          v34 = *(a1 + 40);
          if (!v34)
          {
            v35 = *(a1 + 8);
            if (v35)
            {
              v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
            }

            v34 = MEMORY[0x277C8F010](v35);
            *(a1 + 40) = v34;
            v7 = v64;
          }

          v23 = sub_275E5B69C(a3, v34, v7);
          goto LABEL_92;
        case 8u:
          if (v8 != 66)
          {
            goto LABEL_85;
          }

          *(a1 + 16) |= 8u;
          v36 = *(a1 + 48);
          if (!v36)
          {
            v37 = *(a1 + 8);
            if (v37)
            {
              v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
            }

            v36 = sub_275E1F5E0(v37);
            *(a1 + 48) = v36;
            v7 = v64;
          }

          v23 = sub_275E5B83C(a3, v36, v7);
          goto LABEL_92;
        case 9u:
          if (v8 != 77)
          {
            goto LABEL_85;
          }

          v47 = *v7;
          v18 = (v7 + 4);
          v5 |= 0x80u;
          *(a1 + 72) = v47;
          goto LABEL_84;
        case 0xAu:
          if (v8 != 80)
          {
            goto LABEL_85;
          }

          v5 |= 0x100u;
          v44 = (v7 + 1);
          LODWORD(v45) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_79;
          }

          v46 = *v44;
          v45 = (v45 + (v46 << 7) - 128);
          if (v46 < 0)
          {
            v62 = google::protobuf::internal::VarintParseSlow32(v7, v45);
            v64 = v62;
            *(a1 + 76) = v63;
            if (!v62)
            {
              goto LABEL_116;
            }
          }

          else
          {
            v44 = (v7 + 2);
LABEL_79:
            v64 = v44;
            *(a1 + 76) = v45;
          }

          goto LABEL_93;
        case 0xBu:
          if (v8 != 88)
          {
            goto LABEL_85;
          }

          v5 |= 0x200u;
          v15 = (v7 + 1);
          LODWORD(v16) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_23;
          }

          v17 = *v15;
          v16 = (v16 + (v17 << 7) - 128);
          if (v17 < 0)
          {
            v50 = google::protobuf::internal::VarintParseSlow32(v7, v16);
            v64 = v50;
            *(a1 + 80) = v51;
            if (!v50)
            {
              goto LABEL_116;
            }
          }

          else
          {
            v15 = (v7 + 2);
LABEL_23:
            v64 = v15;
            *(a1 + 80) = v16;
          }

          goto LABEL_93;
        case 0xCu:
          if (v8 != 96)
          {
            goto LABEL_85;
          }

          v5 |= 0x400u;
          v28 = (v7 + 1);
          v27 = *v7;
          if ((v27 & 0x8000000000000000) == 0)
          {
            goto LABEL_43;
          }

          v29 = *v28;
          v27 = (v29 << 7) + v27 - 128;
          if (v29 < 0)
          {
            v56 = google::protobuf::internal::VarintParseSlow64(v7, v27);
            v64 = v56;
            *(a1 + 84) = v57 != 0;
            if (!v56)
            {
              goto LABEL_116;
            }
          }

          else
          {
            v28 = (v7 + 2);
LABEL_43:
            v64 = v28;
            *(a1 + 84) = v27 != 0;
          }

          goto LABEL_93;
        case 0xDu:
          if (v8 != 104)
          {
            goto LABEL_85;
          }

          v5 |= 0x800u;
          v21 = (v7 + 1);
          v20 = *v7;
          if ((v20 & 0x8000000000000000) == 0)
          {
            goto LABEL_30;
          }

          v22 = *v21;
          v20 = (v22 << 7) + v20 - 128;
          if (v22 < 0)
          {
            v52 = google::protobuf::internal::VarintParseSlow64(v7, v20);
            v64 = v52;
            *(a1 + 85) = v53 != 0;
            if (!v52)
            {
              goto LABEL_116;
            }
          }

          else
          {
            v21 = (v7 + 2);
LABEL_30:
            v64 = v21;
            *(a1 + 85) = v20 != 0;
          }

          goto LABEL_93;
        case 0xFu:
          if (v8 != 120)
          {
            goto LABEL_85;
          }

          v13 = (v7 + 1);
          v12 = *v7;
          if ((v12 & 0x8000000000000000) == 0)
          {
            goto LABEL_16;
          }

          v14 = *v13;
          v12 = (v14 << 7) + v12 - 128;
          if (v14 < 0)
          {
            v64 = google::protobuf::internal::VarintParseSlow64(v7, v12);
            if (!v64)
            {
              goto LABEL_116;
            }
          }

          else
          {
            v13 = (v7 + 2);
LABEL_16:
            v64 = v13;
          }

          if ((v12 - 1) > 4)
          {
            sub_275E5F558();
          }

          else
          {
            *(a1 + 16) |= 0x8000u;
            *(a1 + 92) = v12;
          }

          goto LABEL_93;
        case 0x10u:
          if (v8 != 128)
          {
            goto LABEL_85;
          }

          v39 = (v7 + 1);
          v38 = *v7;
          if ((v38 & 0x8000000000000000) == 0)
          {
            goto LABEL_67;
          }

          v40 = *v39;
          v38 = (v40 << 7) + v38 - 128;
          if (v40 < 0)
          {
            v64 = google::protobuf::internal::VarintParseSlow64(v7, v38);
            if (!v64)
            {
              goto LABEL_116;
            }
          }

          else
          {
            v39 = (v7 + 2);
LABEL_67:
            v64 = v39;
          }

          if ((v38 - 1) > 3)
          {
            sub_275E5F51C();
          }

          else
          {
            *(a1 + 16) |= 0x10000u;
            *(a1 + 96) = v38;
          }

          goto LABEL_93;
        case 0x11u:
          if (v8 != 136)
          {
            goto LABEL_85;
          }

          v5 |= 0x1000u;
          v42 = (v7 + 1);
          v41 = *v7;
          if ((v41 & 0x8000000000000000) == 0)
          {
            goto LABEL_74;
          }

          v43 = *v42;
          v41 = (v43 << 7) + v41 - 128;
          if (v43 < 0)
          {
            v60 = google::protobuf::internal::VarintParseSlow64(v7, v41);
            v64 = v60;
            *(a1 + 86) = v61 != 0;
            if (!v60)
            {
              goto LABEL_116;
            }
          }

          else
          {
            v42 = (v7 + 2);
LABEL_74:
            v64 = v42;
            *(a1 + 86) = v41 != 0;
          }

          goto LABEL_93;
        case 0x12u:
          if (v8 != 149)
          {
            goto LABEL_85;
          }

          v48 = *v7;
          v18 = (v7 + 4);
          v5 |= 0x4000u;
          *(a1 + 88) = v48;
LABEL_84:
          v64 = v18;
          goto LABEL_93;
        default:
LABEL_85:
          if (v8)
          {
            v49 = (v8 & 7) == 4;
          }

          else
          {
            v49 = 1;
          }

          if (v49)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_275E22260((a1 + 8));
          }

          v23 = google::protobuf::internal::UnknownFieldParse();
LABEL_92:
          v64 = v23;
          if (!v23)
          {
LABEL_116:
            v64 = 0;
            goto LABEL_2;
          }

LABEL_93:
          if (sub_275E221E8(a3, &v64, *(a3 + 92)))
          {
            goto LABEL_2;
          }

          break;
      }
    }
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v64;
}

unsigned __int8 *sub_275DE6A84(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_275DE5774(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_275DE5774(a3, 2, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x10) == 0)
  {
LABEL_4:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_5;
    }

LABEL_24:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v8 = *(a1 + 64);
    *v4 = 32;
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v9 = v8 >> 7;
      if (v8 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v4;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v4 - 1) = v10;
        if ((v6 & 0x40) != 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v4[2] = v9;
        v4 += 3;
        if ((v6 & 0x40) != 0)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
      v4[1] = v8;
      v4 += 2;
      if ((v6 & 0x40) != 0)
      {
        goto LABEL_35;
      }
    }

LABEL_6:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_38;
  }

LABEL_21:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(a1 + 56);
  *v4 = 25;
  *(v4 + 1) = v7;
  v4 += 9;
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_24;
  }

LABEL_5:
  if ((v6 & 0x40) == 0)
  {
    goto LABEL_6;
  }

LABEL_35:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v12 = *(a1 + 68);
  *v4 = 45;
  *(v4 + 1) = v12;
  v4 += 5;
  if ((v6 & 0x2000) == 0)
  {
LABEL_7:
    if ((v6 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_41;
  }

LABEL_38:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v13 = *(a1 + 87);
  *v4 = 48;
  v4[1] = v13;
  v4 += 2;
  if ((v6 & 4) == 0)
  {
LABEL_8:
    if ((v6 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_51;
  }

LABEL_41:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v14 = *(a1 + 40);
  *v4 = 58;
  v15 = *(v14 + 5);
  if (v15 > 0x7F)
  {
    v4[1] = v15 | 0x80;
    v17 = v15 >> 7;
    if (v15 >> 14)
    {
      v16 = v4 + 3;
      do
      {
        *(v16 - 1) = v17 | 0x80;
        v18 = v17 >> 7;
        ++v16;
        v19 = v17 >> 14;
        v17 >>= 7;
      }

      while (v19);
      *(v16 - 1) = v18;
    }

    else
    {
      v4[2] = v17;
      v16 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v15;
    v16 = v4 + 2;
  }

  v4 = TSP::Color::_InternalSerialize(v14, v16, a3);
  if ((v6 & 8) == 0)
  {
LABEL_9:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_61;
  }

LABEL_51:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v20 = *(a1 + 48);
  *v4 = 66;
  v21 = *(v20 + 20);
  if (v21 > 0x7F)
  {
    v4[1] = v21 | 0x80;
    v23 = v21 >> 7;
    if (v21 >> 14)
    {
      v22 = v4 + 3;
      do
      {
        *(v22 - 1) = v23 | 0x80;
        v24 = v23 >> 7;
        ++v22;
        v25 = v23 >> 14;
        v23 >>= 7;
      }

      while (v25);
      *(v22 - 1) = v24;
    }

    else
    {
      v4[2] = v23;
      v22 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v21;
    v22 = v4 + 2;
  }

  v4 = sub_275DE51A0(v20, v22, a3);
  if ((v6 & 0x80) == 0)
  {
LABEL_10:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_64;
  }

LABEL_61:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v26 = *(a1 + 72);
  *v4 = 77;
  *(v4 + 1) = v26;
  v4 += 5;
  if ((v6 & 0x100) == 0)
  {
LABEL_11:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_12;
    }

LABEL_75:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v31 = *(a1 + 80);
    *v4 = 88;
    if (v31 > 0x7F)
    {
      v4[1] = v31 | 0x80;
      v32 = v31 >> 7;
      if (v31 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v32 | 0x80;
          v33 = v32 >> 7;
          ++v4;
          v34 = v32 >> 14;
          v32 >>= 7;
        }

        while (v34);
        *(v4 - 1) = v33;
        if ((v6 & 0x400) != 0)
        {
          goto LABEL_86;
        }
      }

      else
      {
        v4[2] = v32;
        v4 += 3;
        if ((v6 & 0x400) != 0)
        {
          goto LABEL_86;
        }
      }
    }

    else
    {
      v4[1] = v31;
      v4 += 2;
      if ((v6 & 0x400) != 0)
      {
        goto LABEL_86;
      }
    }

LABEL_13:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_89;
  }

LABEL_64:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v27 = *(a1 + 76);
  *v4 = 80;
  if (v27 > 0x7F)
  {
    v4[1] = v27 | 0x80;
    v28 = v27 >> 7;
    if (v27 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v28 | 0x80;
        v29 = v28 >> 7;
        ++v4;
        v30 = v28 >> 14;
        v28 >>= 7;
      }

      while (v30);
      *(v4 - 1) = v29;
      if ((v6 & 0x200) != 0)
      {
        goto LABEL_75;
      }
    }

    else
    {
      v4[2] = v28;
      v4 += 3;
      if ((v6 & 0x200) != 0)
      {
        goto LABEL_75;
      }
    }
  }

  else
  {
    v4[1] = v27;
    v4 += 2;
    if ((v6 & 0x200) != 0)
    {
      goto LABEL_75;
    }
  }

LABEL_12:
  if ((v6 & 0x400) == 0)
  {
    goto LABEL_13;
  }

LABEL_86:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v35 = *(a1 + 84);
  *v4 = 96;
  v4[1] = v35;
  v4 += 2;
  if ((v6 & 0x800) == 0)
  {
LABEL_14:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_92;
  }

LABEL_89:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v36 = *(a1 + 85);
  *v4 = 104;
  v4[1] = v36;
  v4 += 2;
  if ((v6 & 0x8000) == 0)
  {
LABEL_15:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_16;
    }

LABEL_103:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v41 = *(a1 + 96);
    *v4 = 384;
    if (v41 > 0x7F)
    {
      v4[2] = v41 | 0x80;
      v42 = v41 >> 7;
      if (v41 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v42 | 0x80;
          v43 = v42 >> 7;
          ++v4;
          v44 = v42 >> 14;
          v42 >>= 7;
        }

        while (v44);
        *(v4 - 1) = v43;
        if ((v6 & 0x1000) != 0)
        {
          goto LABEL_114;
        }
      }

      else
      {
        v4[3] = v42;
        v4 += 4;
        if ((v6 & 0x1000) != 0)
        {
          goto LABEL_114;
        }
      }
    }

    else
    {
      v4[2] = v41;
      v4 += 3;
      if ((v6 & 0x1000) != 0)
      {
        goto LABEL_114;
      }
    }

LABEL_17:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_117;
  }

LABEL_92:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v37 = *(a1 + 92);
  *v4 = 120;
  if (v37 > 0x7F)
  {
    v4[1] = v37 | 0x80;
    v38 = v37 >> 7;
    if (v37 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v38 | 0x80;
        v39 = v38 >> 7;
        ++v4;
        v40 = v38 >> 14;
        v38 >>= 7;
      }

      while (v40);
      *(v4 - 1) = v39;
      if ((v6 & 0x10000) != 0)
      {
        goto LABEL_103;
      }
    }

    else
    {
      v4[2] = v38;
      v4 += 3;
      if ((v6 & 0x10000) != 0)
      {
        goto LABEL_103;
      }
    }
  }

  else
  {
    v4[1] = v37;
    v4 += 2;
    if ((v6 & 0x10000) != 0)
    {
      goto LABEL_103;
    }
  }

LABEL_16:
  if ((v6 & 0x1000) == 0)
  {
    goto LABEL_17;
  }

LABEL_114:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v45 = *(a1 + 86);
  *v4 = 392;
  v4[2] = v45;
  v4 += 3;
  if ((v6 & 0x4000) != 0)
  {
LABEL_117:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v46 = *(a1 + 88);
    *v4 = 405;
    *(v4 + 2) = v46;
    v4 += 6;
  }

LABEL_120:
  v47 = *(a1 + 8);
  if ((v47 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v47 & 0xFFFFFFFFFFFFFFFELL) + 8, v4, a3);
}

uint64_t sub_275DE7130(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    v4 = 0;
    goto LABEL_24;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v5 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v6 = *(v5 + 23);
  v7 = *(v5 + 8);
  if ((v6 & 0x80u) == 0)
  {
    v7 = v6;
  }

  v3 = v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
LABEL_9:
    v8 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v9 = *(v8 + 23);
    v10 = *(v8 + 8);
    if ((v9 & 0x80u) == 0)
    {
      v10 = v9;
    }

    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((v2 & 4) != 0)
  {
    v20 = TSP::Color::ByteSizeLong(*(a1 + 40));
    v3 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if ((v2 & 8) != 0)
  {
LABEL_14:
    v11 = sub_275DE58A0(*(a1 + 48));
    v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_15:
  v12 = v3 + 9;
  if ((v2 & 0x10) == 0)
  {
    v12 = v3;
  }

  if ((v2 & 0x20) != 0)
  {
    v12 += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if ((v2 & 0x40) != 0)
  {
    v12 += 5;
  }

  if ((v2 & 0x80) != 0)
  {
    v4 = v12 + 5;
  }

  else
  {
    v4 = v12;
  }

LABEL_24:
  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v4 += ((9 * (__clz(*(a1 + 76) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 0x200) != 0)
    {
      v4 += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v13 = v4 + ((v2 >> 10) & 2) + ((v2 >> 9) & 2);
    if ((v2 & 0x1000) != 0)
    {
      v13 += 3;
    }

    v14 = v13 + ((v2 >> 12) & 2);
    if ((v2 & 0x4000) != 0)
    {
      v4 = v14 + 6;
    }

    else
    {
      v4 = v14;
    }

    if ((v2 & 0x8000) != 0)
    {
      v15 = *(a1 + 92);
      v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v15 >= 0)
      {
        v17 = v16;
      }

      else
      {
        v17 = 11;
      }

      v4 += v17;
    }
  }

  if ((v2 & 0x10000) != 0)
  {
    v18 = *(a1 + 96);
    if (v18 < 0)
    {
      v19 = 12;
    }

    else
    {
      v19 = ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v4 += v19;
  }

  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v4, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v4;
    return v4;
  }
}

uint64_t sub_275DE73E4(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D7D30, 0);
  if (v4)
  {

    return sub_275DE748C(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275DE748C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      result = google::protobuf::internal::ArenaStringPtr::Set();
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_30;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 16) |= 2u;
    result = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_38;
    }

LABEL_30:
    *(v3 + 16) |= 4u;
    v7 = *(v3 + 40);
    if (!v7)
    {
      v8 = *(v3 + 8);
      if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
      }

      v7 = MEMORY[0x277C8F010](v8);
      *(v3 + 40) = v7;
    }

    if (*(a2 + 40))
    {
      v9 = *(a2 + 40);
    }

    else
    {
      v9 = MEMORY[0x277D809E8];
    }

    result = TSP::Color::MergeFrom(v7, v9);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_46;
    }

LABEL_38:
    *(v3 + 16) |= 8u;
    v10 = *(v3 + 48);
    if (!v10)
    {
      v11 = *(v3 + 8);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = sub_275E1F5E0(v11);
      *(v3 + 48) = v10;
    }

    if (*(a2 + 48))
    {
      v12 = *(a2 + 48);
    }

    else
    {
      v12 = &unk_2812EAA50;
    }

    result = sub_275DE5C88(v10, v12);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_47;
    }

LABEL_46:
    *(v3 + 56) = *(a2 + 56);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_48;
    }

LABEL_47:
    *(v3 + 64) = *(a2 + 64);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
LABEL_13:
        *(v3 + 16) |= v5;
        goto LABEL_14;
      }

LABEL_12:
      *(v3 + 72) = *(a2 + 72);
      goto LABEL_13;
    }

LABEL_48:
    *(v3 + 68) = *(a2 + 68);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_25;
  }

  if ((v5 & 0x100) != 0)
  {
    *(v3 + 76) = *(a2 + 76);
    if ((v5 & 0x200) == 0)
    {
LABEL_17:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_52;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_17;
  }

  *(v3 + 80) = *(a2 + 80);
  if ((v5 & 0x400) == 0)
  {
LABEL_18:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(v3 + 84) = *(a2 + 84);
  if ((v5 & 0x800) == 0)
  {
LABEL_19:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(v3 + 85) = *(a2 + 85);
  if ((v5 & 0x1000) == 0)
  {
LABEL_20:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(v3 + 86) = *(a2 + 86);
  if ((v5 & 0x2000) == 0)
  {
LABEL_21:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_22;
    }

LABEL_56:
    *(v3 + 88) = *(a2 + 88);
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_55:
  *(v3 + 87) = *(a2 + 87);
  if ((v5 & 0x4000) != 0)
  {
    goto LABEL_56;
  }

LABEL_22:
  if ((v5 & 0x8000) != 0)
  {
LABEL_23:
    *(v3 + 92) = *(a2 + 92);
  }

LABEL_24:
  *(v3 + 16) |= v5;
LABEL_25:
  if ((v5 & 0x10000) != 0)
  {
    v6 = *(a2 + 96);
    *(v3 + 16) |= 0x10000u;
    *(v3 + 96) = v6;
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_275DE76E4(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275DE629C(result);

    return sub_275DE73E4(v4, a2);
  }

  return result;
}

uint64_t sub_275DE7730(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 4) != 0)
  {
    result = TSP::Color::IsInitialized(*(a1 + 40));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) == 0)
  {
    return 1;
  }

  result = sub_275DE5FF0(*(a1 + 48));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *sub_275DE77B4(uint64_t *a1)
{
  if (a1 != &qword_2812EAB40)
  {
    v2 = a1[3];
    if (v2)
    {
      v3 = sub_275DE6128(v2);
      MEMORY[0x277C8F960](v3, 0x10A1C40E6413DF5);
    }
  }

  sub_275DE4968(a1 + 1);
  return a1;
}

void sub_275DE7818(uint64_t *a1)
{
  sub_275DE77B4(a1);

  JUMPOUT(0x277C8F960);
}

google::protobuf::UnknownFieldSet *sub_275DE7858(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_275DE629C(*(result + 3));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_275E224D0(v2);
  }

  return result;
}

google::protobuf::internal *sub_275DE78B4(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v16 = a2;
  for (i = *(a3 + 92); (sub_275E221E8(a3, &v16, i) & 1) == 0; i = *(a3 + 92))
  {
    v6 = (v16 + 1);
    v7 = *v16;
    if (*v16 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v16, (v8 - 128));
        v16 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v6 = TagFallback;
        v7 = v14;
        goto LABEL_7;
      }

      v6 = (v16 + 2);
    }

    v16 = v6;
LABEL_7:
    if (v7 == 18)
    {
      *(a1 + 16) |= 1u;
      v11 = *(a1 + 24);
      if (!v11)
      {
        v12 = *(a1 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = sub_275E1F66C(v12);
        *(a1 + 24) = v11;
        v6 = v16;
      }

      v10 = sub_275E5B90C(a3, v11, v6);
    }

    else
    {
      if (v7)
      {
        v9 = (v7 & 7) == 4;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        *(a3 + 80) = v7 - 1;
        return v16;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_275E22260((a1 + 8));
      }

      v10 = google::protobuf::internal::UnknownFieldParse();
    }

    v16 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  return v16;
}

unsigned __int8 *sub_275DE79FC(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(a1 + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(a1 + 24);
    *a2 = 18;
    v6 = *(v5 + 20);
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v8 = v6 >> 7;
      if (v6 >> 14)
      {
        v7 = a2 + 3;
        do
        {
          *(v7 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++v7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(v7 - 1) = v9;
      }

      else
      {
        a2[2] = v8;
        v7 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v6;
      v7 = a2 + 2;
    }

    a2 = sub_275DE6A84(v5, v7, a3);
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t sub_275DE7AEC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_275DE7130(*(a1 + 24));
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v2, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v2;
    return v2;
  }
}

uint64_t sub_275DE7B78(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D7D48, 0);
  if (v4)
  {

    return sub_275DE7C20(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275DE7C20(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    v5 = *(a2 + 24);
    *(v3 + 16) |= 1u;
    v6 = *(v3 + 24);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = sub_275E1F66C(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 24);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &unk_2812EAAD8;
    }

    return sub_275DE748C(v6, v8);
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_275DE7CC8(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275DE7858(result);

    return sub_275DE7B78(v4, a2);
  }

  return result;
}

uint64_t sub_275DE7D14(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return sub_275DE7730(*(a1 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_275DE7D64(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884D5548;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  if (atomic_load_explicit(dword_2812EA040, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 54) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  return a1;
}

uint64_t *sub_275DE7DD8(uint64_t *a1)
{
  if (a1 != &qword_2812EAB60)
  {
    v2 = a1[3];
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C8F960]();
    }

    v3 = a1[4];
    if (v3)
    {
      v4 = sub_275DE8CE8(v3);
      MEMORY[0x277C8F960](v4, 0x10A1C40C05B56FCLL);
    }

    v5 = a1[5];
    if (v5)
    {
      TSP::UUID::~UUID(v5);
      MEMORY[0x277C8F960]();
    }
  }

  sub_275DE4968(a1 + 1);
  return a1;
}

void sub_275DE7E7C(uint64_t *a1)
{
  sub_275DE7DD8(a1);

  JUMPOUT(0x277C8F960);
}

uint64_t *sub_275DE7EBC()
{
  if (atomic_load_explicit(dword_2812EA040, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &qword_2812EAB60;
}

google::protobuf::UnknownFieldSet *sub_275DE7EFC(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      result = TSP::Reference::Clear(*(result + 3));
      if ((v2 & 2) == 0)
      {
LABEL_4:
        if ((v2 & 4) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    else if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    result = sub_275DE7F94(*(v1 + 32));
    if ((v2 & 4) != 0)
    {
LABEL_5:
      result = TSP::UUID::Clear(*(v1 + 40));
    }
  }

LABEL_6:
  if ((v2 & 0xF8) != 0)
  {
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
    *(v1 + 62) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_275E224D0(v3);
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_275DE7F94(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = TSP::UUID::Clear(*(result + 3));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 24) = 0;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_275E224D0(v2);
  }

  return result;
}

google::protobuf::internal *sub_275DE7FF4(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v40 = a2;
  v5 = 0;
  if ((sub_275E221E8(a3, &v40, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v40 + 1);
      v8 = *v40;
      if ((*v40 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v40, (v9 - 128));
      v40 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_78;
      }

      v7 = TagFallback;
      v8 = v24;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 4)
      {
        if (v8 >> 3 > 6)
        {
          if (v10 == 7)
          {
            if (v8 != 58)
            {
              goto LABEL_61;
            }

            *(a1 + 16) |= 2u;
            v31 = *(a1 + 32);
            if (!v31)
            {
              v32 = *(a1 + 8);
              if (v32)
              {
                v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
              }

              v31 = sub_275E1F89C(v32);
              *(a1 + 32) = v31;
              v7 = v40;
            }

            v22 = sub_275E5BAAC(a3, v31, v7);
          }

          else
          {
            if (v10 == 8 && v8 == 66)
            {
              *(a1 + 16) |= 4u;
              v20 = *(a1 + 40);
              if (!v20)
              {
                v21 = *(a1 + 8);
                if (v21)
                {
                  v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
                }

                v20 = MEMORY[0x277C8F000](v21);
                *(a1 + 40) = v20;
                v7 = v40;
              }

              v22 = sub_275E5BB7C(a3, v20, v7);
              goto LABEL_68;
            }

LABEL_61:
            if (v8)
            {
              v33 = (v8 & 7) == 4;
            }

            else
            {
              v33 = 1;
            }

            if (v33)
            {
              *(a3 + 80) = v8 - 1;
              goto LABEL_2;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_275E22260((a1 + 8));
            }

            v22 = google::protobuf::internal::UnknownFieldParse();
          }

LABEL_68:
          v40 = v22;
          if (!v22)
          {
            goto LABEL_78;
          }

          goto LABEL_69;
        }

        if (v10 == 5)
        {
          if (v8 != 40)
          {
            goto LABEL_61;
          }

          v5 |= 0x40u;
          v28 = (v7 + 1);
          v27 = *v7;
          if ((v27 & 0x8000000000000000) == 0)
          {
            goto LABEL_51;
          }

          v29 = *v28;
          v27 = (v29 << 7) + v27 - 128;
          if ((v29 & 0x80000000) == 0)
          {
            v28 = (v7 + 2);
LABEL_51:
            v40 = v28;
            *(a1 + 68) = v27 != 0;
            goto LABEL_69;
          }

          v34 = google::protobuf::internal::VarintParseSlow64(v7, v27);
          v40 = v34;
          *(a1 + 68) = v35 != 0;
          if (!v34)
          {
            goto LABEL_78;
          }
        }

        else
        {
          if (v10 != 6 || v8 != 48)
          {
            goto LABEL_61;
          }

          v5 |= 0x80u;
          v16 = (v7 + 1);
          v15 = *v7;
          if ((v15 & 0x8000000000000000) == 0)
          {
            goto LABEL_26;
          }

          v17 = *v16;
          v15 = (v17 << 7) + v15 - 128;
          if ((v17 & 0x80000000) == 0)
          {
            v16 = (v7 + 2);
LABEL_26:
            v40 = v16;
            *(a1 + 69) = v15 != 0;
            goto LABEL_69;
          }

          v38 = google::protobuf::internal::VarintParseSlow64(v7, v15);
          v40 = v38;
          *(a1 + 69) = v39 != 0;
          if (!v38)
          {
LABEL_78:
            v40 = 0;
            goto LABEL_2;
          }
        }
      }

      else
      {
        if (v8 >> 3 > 2)
        {
          if (v10 == 3)
          {
            if (v8 == 25)
            {
              v30 = *v7;
              v18 = (v7 + 8);
              v5 |= 8u;
              *(a1 + 48) = v30;
              goto LABEL_54;
            }
          }

          else if (v10 == 4 && v8 == 33)
          {
            v19 = *v7;
            v18 = (v7 + 8);
            v5 |= 0x10u;
            *(a1 + 56) = v19;
LABEL_54:
            v40 = v18;
            goto LABEL_69;
          }

          goto LABEL_61;
        }

        if (v10 == 1)
        {
          if (v8 == 10)
          {
            *(a1 + 16) |= 1u;
            v25 = *(a1 + 24);
            if (!v25)
            {
              v26 = *(a1 + 8);
              if (v26)
              {
                v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
              }

              v25 = MEMORY[0x277C8F050](v26);
              *(a1 + 24) = v25;
              v7 = v40;
            }

            v22 = sub_275E5B9DC(a3, v25, v7);
            goto LABEL_68;
          }

          goto LABEL_61;
        }

        if (v10 != 2 || v8 != 16)
        {
          goto LABEL_61;
        }

        v5 |= 0x20u;
        v12 = (v7 + 1);
        LODWORD(v13) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_18;
        }

        v14 = *v12;
        v13 = (v13 + (v14 << 7) - 128);
        if ((v14 & 0x80000000) == 0)
        {
          v12 = (v7 + 2);
LABEL_18:
          v40 = v12;
          *(a1 + 64) = v13;
          goto LABEL_69;
        }

        v36 = google::protobuf::internal::VarintParseSlow32(v7, v13);
        v40 = v36;
        *(a1 + 64) = v37;
        if (!v36)
        {
          goto LABEL_78;
        }
      }

LABEL_69:
      if (sub_275E221E8(a3, &v40, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v40 + 2);
LABEL_6:
    v40 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v40;
}

unsigned __int8 *sub_275DE83CC(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(a1 + 64);
    *a2 = 16;
    if (v12 > 0x7F)
    {
      a2[1] = v12 | 0x80;
      v13 = v12 >> 7;
      if (v12 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v13 | 0x80;
          v14 = v13 >> 7;
          ++a2;
          v15 = v13 >> 14;
          v13 >>= 7;
        }

        while (v15);
        *(a2 - 1) = v14;
        if ((v5 & 8) != 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
        a2[2] = v13;
        a2 += 3;
        if ((v5 & 8) != 0)
        {
          goto LABEL_31;
        }
      }
    }

    else
    {
      a2[1] = v12;
      a2 += 2;
      if ((v5 & 8) != 0)
      {
        goto LABEL_31;
      }
    }

LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_34;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(a1 + 24);
  *a2 = 10;
  v7 = *(v6 + 5);
  if (v7 > 0x7F)
  {
    a2[1] = v7 | 0x80;
    v9 = v7 >> 7;
    if (v7 >> 14)
    {
      v8 = a2 + 3;
      do
      {
        *(v8 - 1) = v9 | 0x80;
        v10 = v9 >> 7;
        ++v8;
        v11 = v9 >> 14;
        v9 >>= 7;
      }

      while (v11);
      *(v8 - 1) = v10;
    }

    else
    {
      a2[2] = v9;
      v8 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v7;
    v8 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v6, v8, a3);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_20;
  }

LABEL_3:
  if ((v5 & 8) == 0)
  {
    goto LABEL_4;
  }

LABEL_31:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v16 = *(a1 + 48);
  *a2 = 25;
  *(a2 + 1) = v16;
  a2 += 9;
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_37;
  }

LABEL_34:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v17 = *(a1 + 56);
  *a2 = 33;
  *(a2 + 1) = v17;
  a2 += 9;
  if ((v5 & 0x40) == 0)
  {
LABEL_6:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

LABEL_37:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v18 = *(a1 + 68);
  *a2 = 40;
  a2[1] = v18;
  a2 += 2;
  if ((v5 & 0x80) == 0)
  {
LABEL_7:
    if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_43;
  }

LABEL_40:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v19 = *(a1 + 69);
  *a2 = 48;
  a2[1] = v19;
  a2 += 2;
  if ((v5 & 2) == 0)
  {
LABEL_8:
    if ((v5 & 4) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_53;
  }

LABEL_43:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v20 = *(a1 + 32);
  *a2 = 58;
  v21 = *(v20 + 20);
  if (v21 > 0x7F)
  {
    a2[1] = v21 | 0x80;
    v23 = v21 >> 7;
    if (v21 >> 14)
    {
      v22 = a2 + 3;
      do
      {
        *(v22 - 1) = v23 | 0x80;
        v24 = v23 >> 7;
        ++v22;
        v25 = v23 >> 14;
        v23 >>= 7;
      }

      while (v25);
      *(v22 - 1) = v24;
    }

    else
    {
      a2[2] = v23;
      v22 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v21;
    v22 = a2 + 2;
  }

  a2 = sub_275DE8F64(v20, v22, a3);
  if ((v5 & 4) != 0)
  {
LABEL_53:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v26 = *(a1 + 40);
    *a2 = 66;
    v27 = *(v26 + 5);
    if (v27 > 0x7F)
    {
      a2[1] = v27 | 0x80;
      v29 = v27 >> 7;
      if (v27 >> 14)
      {
        v28 = a2 + 3;
        do
        {
          *(v28 - 1) = v29 | 0x80;
          v30 = v29 >> 7;
          ++v28;
          v31 = v29 >> 14;
          v29 >>= 7;
        }

        while (v31);
        *(v28 - 1) = v30;
      }

      else
      {
        a2[2] = v29;
        v28 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v27;
      v28 = a2 + 2;
    }

    a2 = TSP::UUID::_InternalSerialize(v26, v28, a3);
  }

LABEL_63:
  v32 = *(a1 + 8);
  if ((v32 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v32 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t sub_275DE876C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_17;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v5 = TSP::Reference::ByteSizeLong(*(a1 + 24));
  v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v6 = sub_275DE90E4(*(a1 + 32));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v7 = TSP::UUID::ByteSizeLong(*(a1 + 40));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v8 = v3 + 9;
  if ((v2 & 8) == 0)
  {
    v8 = v3;
  }

  if ((v2 & 0x10) != 0)
  {
    v8 += 9;
  }

  if ((v2 & 0x20) != 0)
  {
    v8 += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v4 = v8 + ((v2 >> 6) & 2) + ((v2 >> 5) & 2);
LABEL_17:
  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v4, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v4;
    return v4;
  }
}

uint64_t sub_275DE88D0(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D7D60, 0);
  if (v4)
  {

    return sub_275DE8978(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275DE8978(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v6 = *(v3 + 24);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = MEMORY[0x277C8F050](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = MEMORY[0x277D80A18];
      }

      result = TSP::Reference::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_31;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 16) |= 2u;
    v9 = *(v3 + 32);
    if (!v9)
    {
      v10 = *(v3 + 8);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = sub_275E1F89C(v10);
      *(v3 + 32) = v9;
    }

    if (*(a2 + 32))
    {
      v11 = *(a2 + 32);
    }

    else
    {
      v11 = &qword_2812EABA8;
    }

    result = sub_275DE8B14(v9, v11);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_39;
    }

LABEL_31:
    *(v3 + 16) |= 4u;
    v12 = *(v3 + 40);
    if (!v12)
    {
      v13 = *(v3 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = MEMORY[0x277C8F000](v13);
      *(v3 + 40) = v12;
    }

    if (*(a2 + 40))
    {
      v14 = *(a2 + 40);
    }

    else
    {
      v14 = MEMORY[0x277D809E0];
    }

    result = TSP::UUID::MergeFrom(v12, v14);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_40;
    }

LABEL_39:
    *(v3 + 48) = *(a2 + 48);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_41;
    }

LABEL_40:
    *(v3 + 56) = *(a2 + 56);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_42;
    }

LABEL_41:
    *(v3 + 64) = *(a2 + 64);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
LABEL_13:
        *(v3 + 16) |= v5;
        return result;
      }

LABEL_12:
      *(v3 + 69) = *(a2 + 69);
      goto LABEL_13;
    }

LABEL_42:
    *(v3 + 68) = *(a2 + 68);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  return result;
}

uint64_t sub_275DE8B14(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v6 = *(v3 + 24);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = MEMORY[0x277C8F000](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = MEMORY[0x277D809E0];
      }

      result = TSP::UUID::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 32);
    }

    *(v3 + 16) |= v5;
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_275DE8BC8(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275DE7EFC(result);

    return sub_275DE88D0(v4, a2);
  }

  return result;
}

uint64_t sub_275DE8C14(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 24));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) != 0)
  {
    v4 = *(a1 + 32);
    if (*(v4 + 16))
    {
      result = TSP::UUID::IsInitialized(*(v4 + 24));
      if (!result)
      {
        return result;
      }

      v2 = *(a1 + 16);
    }
  }

  if ((v2 & 4) == 0)
  {
    return 1;
  }

  result = TSP::UUID::IsInitialized(*(a1 + 40));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_275DE8C80(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::UUID::IsInitialized(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *sub_275DE8CE8(uint64_t *a1)
{
  if (a1 != &qword_2812EABA8)
  {
    v2 = a1[3];
    if (v2)
    {
      TSP::UUID::~UUID(v2);
      MEMORY[0x277C8F960]();
    }
  }

  sub_275DE4968(a1 + 1);
  return a1;
}

void sub_275DE8D4C(uint64_t *a1)
{
  sub_275DE8CE8(a1);

  JUMPOUT(0x277C8F960);
}

google::protobuf::internal *sub_275DE8D8C(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  v5 = 0;
  if ((sub_275E221E8(a3, &v22, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v22 + 1);
      v8 = *v22;
      if ((*v22 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v22, (v9 - 128));
      v22 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_37;
      }

      v7 = TagFallback;
      v8 = v19;
LABEL_7:
      if (v8 >> 3 != 2)
      {
        if (v8 >> 3 == 1 && v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v16 = *(a1 + 24);
          if (!v16)
          {
            v17 = *(a1 + 8);
            if (v17)
            {
              v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
            }

            v16 = MEMORY[0x277C8F000](v17);
            *(a1 + 24) = v16;
            v7 = v22;
          }

          v12 = sub_275E5BB7C(a3, v16, v7);
        }

        else
        {
LABEL_12:
          if (v8)
          {
            v11 = (v8 & 7) == 4;
          }

          else
          {
            v11 = 1;
          }

          if (v11)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_275E22260((a1 + 8));
          }

          v12 = google::protobuf::internal::UnknownFieldParse();
        }

        v22 = v12;
        if (!v12)
        {
          goto LABEL_37;
        }

        goto LABEL_30;
      }

      if (v8 != 16)
      {
        goto LABEL_12;
      }

      v5 |= 2u;
      v14 = (v7 + 1);
      LODWORD(v13) = *v7;
      if ((v13 & 0x80) == 0)
      {
        goto LABEL_23;
      }

      v15 = *v14;
      v13 = (v13 + (v15 << 7) - 128);
      if ((v15 & 0x80000000) == 0)
      {
        v14 = (v7 + 2);
LABEL_23:
        v22 = v14;
        *(a1 + 32) = v13;
        goto LABEL_30;
      }

      v20 = google::protobuf::internal::VarintParseSlow64(v7, v13);
      v22 = v20;
      *(a1 + 32) = v21;
      if (!v20)
      {
LABEL_37:
        v22 = 0;
        goto LABEL_2;
      }

LABEL_30:
      if (sub_275E221E8(a3, &v22, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v22 + 2);
LABEL_6:
    v22 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v22;
}

unsigned __int8 *sub_275DE8F64(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(a1 + 24);
    *a2 = 10;
    v7 = *(v6 + 5);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = TSP::UUID::_InternalSerialize(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(a1 + 32);
    *a2 = 16;
    if (v12 > 0x7F)
    {
      a2[1] = v12 | 0x80;
      v13 = v12 >> 7;
      if (v12 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v13 | 0x80;
          v14 = v13 >> 7;
          ++a2;
          v15 = v13 >> 14;
          v13 >>= 7;
        }

        while (v15);
        *(a2 - 1) = v14;
      }

      else
      {
        a2[2] = v13;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v12;
      a2 += 2;
    }
  }

  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v16 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t sub_275DE90E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_11;
  }

  if (v2)
  {
    v4 = TSP::UUID::ByteSizeLong(*(a1 + 24));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_7:
    v5 = *(a1 + 32);
    if (v5 < 0)
    {
      v6 = 11;
    }

    else
    {
      v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v6;
    goto LABEL_11;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_11:
  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v3, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v3;
    return v3;
  }
}

uint64_t sub_275DE91B8(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D7D78, 0);
  if (v4)
  {

    return sub_275DE8B14(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

google::protobuf::UnknownFieldSet *sub_275DE9260(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275DE7F94(result);

    return sub_275DE91B8(v4, a2);
  }

  return result;
}

uint64_t sub_275DE92E4(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884D56A8;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  if (atomic_load_explicit(dword_2812E9FE8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 24) = MEMORY[0x277D80A90];
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return a1;
}

uint64_t sub_275DE9360(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C8F960](v2, 0x1012C40EC159624);
  }

  if (a1 != &unk_2812EABD0)
  {
    if (*(a1 + 32))
    {
      v3 = MEMORY[0x277C8E820]();
      MEMORY[0x277C8F960](v3, 0x10A1C405E354A75);
    }

    v4 = *(a1 + 40);
    if (v4)
    {
      TSP::Color::~Color(v4);
      MEMORY[0x277C8F960]();
    }
  }

  sub_275DE4968((a1 + 8));
  return a1;
}

void sub_275DE9420(uint64_t a1)
{
  sub_275DE9360(a1);

  JUMPOUT(0x277C8F960);
}

google::protobuf::UnknownFieldSet *sub_275DE9460(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 7) == 0)
  {
    goto LABEL_6;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_16;
  }

  v5 = *(result + 3) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_16;
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  *v5 = 0;
  *(v5 + 23) = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_16:
  result = TSD::PathSourceArchive::Clear(*(result + 4));
  if ((v2 & 4) != 0)
  {
LABEL_5:
    result = TSP::Color::Clear(*(v1 + 40));
  }

LABEL_6:
  if ((v2 & 0x78) != 0)
  {
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_275E224D0(v3);
  }

  return result;
}

google::protobuf::internal *sub_275DE951C(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v38 = a2;
  v5 = 0;
  if ((sub_275E221E8(a3, &v38, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v38 + 1);
      v8 = *v38;
      if ((*v38 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v38, (v9 - 128));
      v38 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_79;
      }

      v7 = TagFallback;
      v8 = v24;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 3)
      {
        if (v8 >> 3 > 5)
        {
          if (v10 != 6)
          {
            if (v10 == 7 && v8 == 56)
            {
              v18 = (v7 + 1);
              v19 = *v7;
              if ((v19 & 0x8000000000000000) == 0)
              {
                goto LABEL_34;
              }

              v20 = *v18;
              v21 = (v20 << 7) + v19;
              LODWORD(v19) = v21 - 128;
              if (v20 < 0)
              {
                v38 = google::protobuf::internal::VarintParseSlow64(v7, (v21 - 128));
                if (!v38)
                {
                  goto LABEL_79;
                }

                LODWORD(v19) = v35;
              }

              else
              {
                v18 = (v7 + 2);
LABEL_34:
                v38 = v18;
              }

              if ((v19 - 2) < 5 || v19 == 0)
              {
                *(a1 + 16) |= 0x40u;
                *(a1 + 64) = v19;
              }

              else
              {
                v31 = *(a1 + 8);
                if (v31)
                {
                  v32 = ((v31 & 0xFFFFFFFFFFFFFFFELL) + 8);
                }

                else
                {
                  v32 = sub_275E22260((a1 + 8));
                }

                google::protobuf::UnknownFieldSet::AddVarint(v32);
              }

              goto LABEL_66;
            }

            goto LABEL_58;
          }

          if (v8 != 50)
          {
            goto LABEL_58;
          }

          *(a1 + 16) |= 4u;
          v28 = *(a1 + 40);
          if (!v28)
          {
            v29 = *(a1 + 8);
            if (v29)
            {
              v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
            }

            v28 = MEMORY[0x277C8F010](v29);
            *(a1 + 40) = v28;
            v7 = v38;
          }

          v13 = sub_275E5B69C(a3, v28, v7);
        }

        else if (v10 == 4)
        {
          if (v8 != 34)
          {
            goto LABEL_58;
          }

          *(a1 + 16) |= 1u;
          google::protobuf::internal::ArenaStringPtr::Mutable();
          v13 = google::protobuf::internal::InlineGreedyStringParser();
        }

        else
        {
          if (v10 != 5 || v8 != 42)
          {
            goto LABEL_58;
          }

          *(a1 + 16) |= 2u;
          v11 = *(a1 + 32);
          if (!v11)
          {
            v12 = *(a1 + 8);
            if (v12)
            {
              v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
            }

            v11 = MEMORY[0x277C8EFB0](v12);
            *(a1 + 32) = v11;
            v7 = v38;
          }

          v13 = sub_275E5B76C(a3, v11, v7);
        }

LABEL_65:
        v38 = v13;
        if (!v13)
        {
          goto LABEL_79;
        }

        goto LABEL_66;
      }

      if (v10 == 1)
      {
        if (v8 != 8)
        {
          goto LABEL_58;
        }

        v5 |= 0x10u;
        v25 = (v7 + 1);
        LODWORD(v26) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_47;
        }

        v27 = *v25;
        v26 = (v26 + (v27 << 7) - 128);
        if ((v27 & 0x80000000) == 0)
        {
          v25 = (v7 + 2);
LABEL_47:
          v38 = v25;
          *(a1 + 56) = v26;
          goto LABEL_66;
        }

        v33 = google::protobuf::internal::VarintParseSlow32(v7, v26);
        v38 = v33;
        *(a1 + 56) = v34;
        if (!v33)
        {
          goto LABEL_79;
        }
      }

      else
      {
        if (v10 == 2)
        {
          if (v8 == 17)
          {
            v5 |= 8u;
            *(a1 + 48) = *v7;
            v38 = (v7 + 8);
            goto LABEL_66;
          }

LABEL_58:
          if (v8)
          {
            v30 = (v8 & 7) == 4;
          }

          else
          {
            v30 = 1;
          }

          if (v30)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_275E22260((a1 + 8));
          }

          v13 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_65;
        }

        if (v10 != 3 || v8 != 24)
        {
          goto LABEL_58;
        }

        v5 |= 0x20u;
        v16 = (v7 + 1);
        v15 = *v7;
        if ((v15 & 0x8000000000000000) == 0)
        {
          goto LABEL_27;
        }

        v17 = *v16;
        v15 = (v17 << 7) + v15 - 128;
        if ((v17 & 0x80000000) == 0)
        {
          v16 = (v7 + 2);
LABEL_27:
          v38 = v16;
          *(a1 + 60) = v15 != 0;
          goto LABEL_66;
        }

        v36 = google::protobuf::internal::VarintParseSlow64(v7, v15);
        v38 = v36;
        *(a1 + 60) = v37 != 0;
        if (!v36)
        {
LABEL_79:
          v38 = 0;
          goto LABEL_2;
        }
      }

LABEL_66:
      if (sub_275E221E8(a3, &v38, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v38 + 2);
LABEL_6:
    v38 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v38;
}