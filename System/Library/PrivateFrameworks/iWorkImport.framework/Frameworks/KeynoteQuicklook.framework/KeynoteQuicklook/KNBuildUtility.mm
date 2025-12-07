@interface KNBuildUtility
+ (BOOL)animationInfo:(id)info onInfo:(id)onInfo canRunSimultaneouslyWithAnimationInfo:(id)animationInfo onInfo:(id)a6;
+ (id)UUIDToTSPObjectMapForTSPObjects:(id)objects;
+ (id)buildUUIDToChunkIdentifiersMapForChunkIdentifiers:(id)identifiers;
+ (id)buildsForChunks:(id)chunks;
+ (id)buildsToChunksMapForBuilds:(id)builds chunks:(id)chunks;
+ (id)buildsToChunksMapForChunks:(id)chunks;
+ (id)chunksForInfos:(id)infos;
+ (id)chunksInBuilds:(id)builds;
+ (id)nonNilChunkIdentifierFromPossiblyNilChunk:(id)chunk;
+ (id)orderedBuildsFromUnorderedBuilds:(id)builds;
+ (id)uniqueBuildsOrderedByChunks:(id)chunks;
+ (id)validIdentifierForChunkToInsertAfterFromPossiblyInvalidIdentifier:(id)identifier build:(id)build;
+ (int64_t)sharedAnimationTypeForBuildChunks:(id)chunks;
+ (int64_t)sharedAnimationTypeForBuilds:(id)builds;
+ (unint64_t)countOfInfosThatSupportContentBuilds:(id)builds;
@end

@implementation KNBuildUtility

+ (int64_t)sharedAnimationTypeForBuildChunks:(id)chunks
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  chunksCopy = chunks;
  v4 = [chunksCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(chunksCopy);
        }

        build = [*(*(&v12 + 1) + 8 * i) build];
        animationType = [build animationType];

        if (v6)
        {
          if (v6 != animationType)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v6 = animationType;
        }
      }

      v5 = [chunksCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
LABEL_13:
    v6 = 0;
  }

  return v6;
}

+ (int64_t)sharedAnimationTypeForBuilds:(id)builds
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  buildsCopy = builds;
  v4 = [buildsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(buildsCopy);
        }

        animationType = [*(*(&v11 + 1) + 8 * i) animationType];
        if (v6)
        {
          if (v6 != animationType)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v6 = animationType;
        }
      }

      v5 = [buildsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
LABEL_13:
    v6 = 0;
  }

  return v6;
}

+ (BOOL)animationInfo:(id)info onInfo:(id)onInfo canRunSimultaneouslyWithAnimationInfo:(id)animationInfo onInfo:(id)a6
{
  infoCopy = info;
  animationInfoCopy = animationInfo;
  v11 = a6;
  onInfoCopy = onInfo;
  effectIdentifier = [infoCopy effectIdentifier];
  IsEmphasisEffect = KNEffectIsEmphasisEffect();

  effectIdentifier2 = [animationInfoCopy effectIdentifier];
  v16 = KNEffectIsEmphasisEffect();

  LODWORD(effectIdentifier2) = [onInfoCopy isEqual:v11];
  if (effectIdentifier2)
  {
    if ((IsEmphasisEffect | v16) & 1) != 0 || (v17 = [infoCopy animationClass], v18 = objc_msgSend(animationInfoCopy, "animationClass"), (objc_msgSend(v17, "isSubclassOfClass:", v18)))
    {
      LOBYTE(v19) = 0;
    }

    else
    {
      v19 = (v17 != v18) & ~[v18 isSubclassOfClass:v17];
    }
  }

  else
  {
    LOBYTE(v19) = 1;
  }

  return v19;
}

+ (id)chunksInBuilds:(id)builds
{
  buildsCopy = builds;
  if ([buildsCopy count])
  {
    v4 = [MEMORY[0x277CBEB98] setWithSet:buildsCopy];
    anyObject = [v4 anyObject];
    slide = [anyObject slide];

    buildChunks = [slide buildChunks];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_275E526D4;
    v11[3] = &unk_27A699788;
    v12 = v4;
    v8 = v4;
    v9 = [buildChunks tsu_arrayOfObjectsPassingTest:v11];
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  return v9;
}

+ (id)buildsForChunks:(id)chunks
{
  v17 = *MEMORY[0x277D85DE8];
  chunksCopy = chunks;
  v4 = [MEMORY[0x277CBEB58] set];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = chunksCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        build = [*(*(&v12 + 1) + 8 * i) build];
        [v4 addObject:build];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)uniqueBuildsOrderedByChunks:(id)chunks
{
  v18 = *MEMORY[0x277D85DE8];
  chunksCopy = chunks;
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = chunksCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        build = [*(*(&v13 + 1) + 8 * i) build];
        [orderedSet addObject:build];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  array = [orderedSet array];

  return array;
}

+ (id)chunksForInfos:(id)infos
{
  v18 = *MEMORY[0x277D85DE8];
  infosCopy = infos;
  v4 = [MEMORY[0x277CBEB58] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = infosCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        objc_opt_class();
        v10 = TSUDynamicCast();
        buildChunks = [v10 buildChunks];
        [v4 addObjectsFromArray:buildChunks];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)orderedBuildsFromUnorderedBuilds:(id)builds
{
  v3 = MEMORY[0x277CBEB18];
  allObjects = [builds allObjects];
  v5 = [v3 arrayWithArray:allObjects];

  [v5 sortUsingFunction:sub_275E521FC context:0];

  return v5;
}

+ (id)buildsToChunksMapForChunks:(id)chunks
{
  v22 = *MEMORY[0x277D85DE8];
  chunksCopy = chunks;
  v4 = objc_alloc_init(MEMORY[0x277D812B8]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = chunksCopy;
  v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        build = [v9 build];
        if (!build)
        {
          v11 = MEMORY[0x277D81150];
          v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[KNBuildUtility buildsToChunksMapForChunks:]"];
          v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildUtility.m"];
          [v11 handleFailureInFunction:v12 file:v13 lineNumber:211 isFatal:0 description:{"invalid nil value for '%{public}s'", "build"}];

          [MEMORY[0x277D81150] logBacktraceThrottled];
        }

        array = [v4 objectForKeyedSubscript:build];
        if (!array)
        {
          array = [MEMORY[0x277CBEB18] array];
          [v4 setObject:array forUncopiedKey:build];
        }

        [array addObject:v9];
      }

      v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  return v4;
}

+ (id)buildsToChunksMapForBuilds:(id)builds chunks:(id)chunks
{
  v46 = *MEMORY[0x277D85DE8];
  buildsCopy = builds;
  chunksCopy = chunks;
  v7 = objc_alloc_init(MEMORY[0x277D812B8]);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = chunksCopy;
  v35 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v35)
  {
    v34 = *v41;
    v30 = v7;
    v31 = buildsCopy;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v41 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v40 + 1) + 8 * i);
        chunkIdentifier = [v9 chunkIdentifier];
        if (chunkIdentifier)
        {
          chunkIdentifier2 = [v9 chunkIdentifier];
          buildUUID = [chunkIdentifier2 buildUUID];

          if (!buildUUID)
          {
            v13 = MEMORY[0x277D81150];
            v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[KNBuildUtility buildsToChunksMapForBuilds:chunks:]"];
            v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildUtility.m"];
            [v13 handleFailureInFunction:v14 file:v15 lineNumber:239 isFatal:0 description:{"invalid nil value for '%{public}s'", "buildUUID"}];

            [MEMORY[0x277D81150] logBacktraceThrottled];
          }

          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v16 = buildsCopy;
          v17 = [v16 countByEnumeratingWithState:&v36 objects:v44 count:16];
          if (v17)
          {
            v33 = chunkIdentifier;
            v18 = *v37;
            while (2)
            {
              for (j = 0; j != v17; j = j + 1)
              {
                if (*v37 != v18)
                {
                  objc_enumerationMutation(v16);
                }

                v20 = *(*(&v36 + 1) + 8 * j);
                objectUUID = [v20 objectUUID];
                v22 = [objectUUID isEqual:buildUUID];

                if (v22)
                {
                  v17 = v20;
                  goto LABEL_19;
                }
              }

              v17 = [v16 countByEnumeratingWithState:&v36 objects:v44 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }

LABEL_19:
            v7 = v30;
            buildsCopy = v31;
            chunkIdentifier = v33;
          }
        }

        else
        {
          buildUUID = [v9 build];
          if (buildUUID && [buildsCopy containsObject:buildUUID])
          {
            buildUUID = buildUUID;
            v17 = buildUUID;
          }

          else
          {
            v17 = 0;
          }
        }

        if (v17)
        {
          array = [v7 objectForKeyedSubscript:v17];
          if (!array)
          {
            array = [MEMORY[0x277CBEB18] array];
            [v7 setObject:array forUncopiedKey:v17];
          }

          [array addObject:v9];
        }

        else
        {
          v24 = chunkIdentifier;
          v25 = MEMORY[0x277D81150];
          v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[KNBuildUtility buildsToChunksMapForBuilds:chunks:]"];
          v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildUtility.m"];
          v28 = v25;
          chunkIdentifier = v24;
          [v28 handleFailureInFunction:v26 file:v27 lineNumber:261 isFatal:0 description:{"invalid nil value for '%{public}s'", "buildForChunk"}];

          [MEMORY[0x277D81150] logBacktraceThrottled];
        }
      }

      v35 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v35);
  }

  return v7;
}

+ (id)buildUUIDToChunkIdentifiersMapForChunkIdentifiers:(id)identifiers
{
  v22 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = identifiersCopy;
  v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        buildUUID = [v9 buildUUID];
        if (!buildUUID)
        {
          v11 = MEMORY[0x277D81150];
          v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[KNBuildUtility buildUUIDToChunkIdentifiersMapForChunkIdentifiers:]"];
          v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildUtility.m"];
          [v11 handleFailureInFunction:v12 file:v13 lineNumber:284 isFatal:0 description:{"invalid nil value for '%{public}s'", "buildUUID"}];

          [MEMORY[0x277D81150] logBacktraceThrottled];
        }

        array = [v4 objectForKeyedSubscript:buildUUID];
        if (!array)
        {
          array = [MEMORY[0x277CBEB18] array];
          [v4 setObject:array forKeyedSubscript:buildUUID];
        }

        [array addObject:v9];
      }

      v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  return v4;
}

+ (id)UUIDToTSPObjectMapForTSPObjects:(id)objects
{
  v24 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  if (!objectsCopy)
  {
    v4 = MEMORY[0x277D81150];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[KNBuildUtility UUIDToTSPObjectMapForTSPObjects:]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildUtility.m"];
    [v4 handleFailureInFunction:v5 file:v6 lineNumber:300 isFatal:0 description:{"Invalid parameter not satisfying: %{public}s", "objects != nil"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = objectsCopy;
  v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        objectUUID = [v12 objectUUID];
        if (!objectUUID)
        {
          v14 = MEMORY[0x277D81150];
          v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[KNBuildUtility UUIDToTSPObjectMapForTSPObjects:]"];
          v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildUtility.m"];
          [v14 handleFailureInFunction:v15 file:v16 lineNumber:306 isFatal:0 description:{"invalid nil value for '%{public}s'", "objectUUID"}];

          [MEMORY[0x277D81150] logBacktraceThrottled];
        }

        [dictionary setObject:v12 forKeyedSubscript:objectUUID];
      }

      v9 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  return dictionary;
}

+ (id)nonNilChunkIdentifierFromPossiblyNilChunk:(id)chunk
{
  chunkIdentifier = [chunk chunkIdentifier];
  if (!chunkIdentifier)
  {
    chunkIdentifier = +[KNBuildChunkIdentifier emptyIdentifier];
  }

  return chunkIdentifier;
}

+ (id)validIdentifierForChunkToInsertAfterFromPossiblyInvalidIdentifier:(id)identifier build:(id)build
{
  v34 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  buildCopy = build;
  if (!buildCopy)
  {
    v7 = MEMORY[0x277D81150];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[KNBuildUtility validIdentifierForChunkToInsertAfterFromPossiblyInvalidIdentifier:build:]"];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildUtility.m"];
    [v7 handleFailureInFunction:v8 file:v9 lineNumber:331 isFatal:0 description:{"Invalid parameter not satisfying: %{public}s", "build != nil"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  slide = [buildCopy slide];
  v11 = [identifierCopy resolveToChunkOnSlide:slide];

  if (v11)
  {
    if (identifierCopy)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

  chunks = [buildCopy chunks];
  if (identifierCopy && ([identifierCopy buildUUID], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(buildCopy, "objectUUID"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v14, "isEqual:", v15), v15, v14, !v16))
  {
    chunkID = [identifierCopy chunkID];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v20 = chunks;
    v21 = [v20 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v30;
      while (2)
      {
        v24 = 0;
        v25 = identifierCopy;
        do
        {
          if (*v30 != v23)
          {
            objc_enumerationMutation(v20);
          }

          identifierCopy = [*(*(&v29 + 1) + 8 * v24) chunkIdentifier];
          if (chunkID < [identifierCopy chunkID])
          {

            identifierCopy = v25;
            goto LABEL_21;
          }

          ++v24;
          v25 = identifierCopy;
        }

        while (v22 != v24);
        v22 = [v20 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }
    }

LABEL_21:
  }

  else
  {
    lastObject = [chunks lastObject];
    v18 = [KNBuildUtility nonNilChunkIdentifierFromPossiblyNilChunk:lastObject];

    identifierCopy = v18;
  }

  if (!identifierCopy)
  {
LABEL_23:
    v26 = MEMORY[0x277D81150];
    v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[KNBuildUtility validIdentifierForChunkToInsertAfterFromPossiblyInvalidIdentifier:build:]"];
    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildUtility.m"];
    [v26 handleFailureInFunction:v27 file:v28 lineNumber:363 isFatal:0 description:{"invalid nil value for '%{public}s'", "identifierForChunkToInsertAfter"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

LABEL_5:

  return identifierCopy;
}

+ (unint64_t)countOfInfosThatSupportContentBuilds:(id)builds
{
  v17 = *MEMORY[0x277D85DE8];
  buildsCopy = builds;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [buildsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(buildsCopy);
        }

        v9 = [KNBuild supportedAnimationInfosForDrawableInfo:*(*(&v12 + 1) + 8 * i) animationType:5];
        v10 = [v9 count];

        if (v10)
        {
          ++v6;
        }
      }

      v5 = [buildsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end