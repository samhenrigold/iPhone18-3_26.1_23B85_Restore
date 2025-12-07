@interface HMIFaceUtilities
+ (BOOL)isValidFaceCrop:(id)crop;
+ (BOOL)saveFaceClassifications:(id)classifications videoId:(id)id fragmentId:(unint64_t)fragmentId frameId:(id)frameId baseURL:(id)l error:(id *)error;
+ (BOOL)serializeJSONObject:(id)object url:(id)url error:(id *)error;
+ (CGRect)absoluteFaceBoxFromPhotosFaceCropImageData:(id)data;
+ (CGRect)faceBoundingBoxFromPhotosFaceCropData:(id)data;
+ (CGSize)faceCropDimensionsFromFaceCrop:(id)crop error:(id *)error;
+ (id)croppedJpegDataFromFaceCrop:(id)crop;
+ (id)faceObservationFromFaceprint:(id)faceprint;
+ (id)faceObservationFromTorsoprint:(id)torsoprint;
+ (id)faceObservationsFromFaceprintsForClustering:(id)clustering;
+ (id)imageCreationOptions;
+ (id)mergedPersonEventsFromEvents:(id)events;
+ (id)newDictionaryPopulatedWithFaceCropDataFromImageData:(id)data;
@end

@implementation HMIFaceUtilities

+ (id)faceObservationsFromFaceprintsForClustering:(id)clustering
{
  clusteringCopy = clustering;
  array = [MEMORY[0x277CBEB18] array];
  obj = clusteringCopy;
  v5 = [obj countByEnumeratingWithState:? objects:? count:?];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = MEMORY[0];
    do
    {
      for (i = 0; i != v6; i = (i + 1))
      {
        if (MEMORY[0] != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(8 * i);
        v11 = [MEMORY[0x277CE2CD0] faceObservationWithRequestRevision:? boundingBox:? andAlignedBoundingBox:?];
        v12 = objc_alloc(MEMORY[0x277CE2CE0]);
        data = [v10 data];
        [data bytes];
        +[HMIFaceUtilities faceprintDefaultRevision];
        v14 = [v12 initWithData:? elementCount:? elementType:? lengthInBytes:? confidence:? requestRevision:?];

        [v11 setFaceprint:?];
        [v11 setFaceId:?];
        ++v7;
        [array addObject:?];
      }

      v6 = [obj countByEnumeratingWithState:? objects:? count:?];
    }

    while (v6);
  }

  return array;
}

+ (id)faceObservationFromTorsoprint:(id)torsoprint
{
  v3 = MEMORY[0x277CE2CE0];
  torsoprintCopy = torsoprint;
  v5 = [v3 alloc];
  data = [torsoprintCopy data];

  [data bytes];
  v7 = [v5 initWithData:? elementCount:? elementType:? lengthInBytes:? confidence:? requestRevision:?];

  v8 = [MEMORY[0x277CE2CD0] faceObservationWithRequestRevision:? boundingBox:? andAlignedBoundingBox:?];
  [v8 setFaceprint:?];

  return v8;
}

+ (id)faceObservationFromFaceprint:(id)faceprint
{
  v3 = MEMORY[0x277CE2CD0];
  faceprintCopy = faceprint;
  v5 = [v3 faceObservationWithRequestRevision:? boundingBox:? andAlignedBoundingBox:?];
  v6 = objc_alloc(MEMORY[0x277CE2CE0]);
  data = [faceprintCopy data];

  [data bytes];
  +[HMIFaceUtilities faceprintDefaultRevision];
  v8 = [v6 initWithData:? elementCount:? elementType:? lengthInBytes:? confidence:? requestRevision:?];

  [v5 setFaceprint:?];

  return v5;
}

+ (id)croppedJpegDataFromFaceCrop:(id)crop
{
  cropCopy = crop;
  v4 = objc_alloc_init(HMIFaceprinter);
  v5 = [HMIFaceprinter createFacePixelBufferFromFaceCrop:v4 error:"createFacePixelBufferFromFaceCrop:error:"];

  if (v5)
  {
    v6 = [HMIVisionUtilities createJPEGDataFromPixelBuffer:"createJPEGDataFromPixelBuffer:scale:encodeQuality:error:" scale:? encodeQuality:? error:?];
    CVPixelBufferRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)mergedPersonEventsFromEvents:(id)events
{
  eventsCopy = events;
  allObjects = [eventsCopy allObjects];
  v5 = [allObjects na_filter:?];

  allObjects2 = [eventsCopy allObjects];
  v34 = [allObjects2 na_filter:?];

  allObjects3 = [eventsCopy allObjects];
  v8 = [allObjects3 na_filter:?];

  v9 = [eventsCopy na_filter:?];

  v37 = [v9 mutableCopy];
  array = [MEMORY[0x277CBEB18] array];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v55 = v8;
  v56 = array;
  [v5 enumerateObjectsUsingBlock:?];
  v11 = MEMORY[0x277CCAB58];
  [v5 count];
  v12 = [v11 indexSetWithIndexesInRange:?];
  v13 = MEMORY[0x277CCAB58];
  [v55 count];
  v14 = [v13 indexSetWithIndexesInRange:?];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v16 = [v56 sortedArrayUsingComparator:?];
  v51 = v14;
  v52 = dictionary2;
  v53 = v55;
  v36 = v14;
  [v16 na_each:?];

  v47 = v52;
  v48 = v5;
  v49 = v53;
  v50 = v12;
  [v36 enumerateIndexesUsingBlock:?];
  [v56 removeAllObjects];
  v44 = v47;
  v45 = dictionary;
  v46 = v34;
  v35 = v56;
  [v50 enumerateIndexesUsingBlock:?];
  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  dictionary4 = [MEMORY[0x277CBEB38] dictionary];
  v19 = MEMORY[0x277CCAB58];
  [v46 count];
  v20 = [v19 indexSetWithIndexesInRange:?];
  v21 = [v35 sortedArrayUsingComparator:?];
  v39 = v50;
  v40 = v20;
  v41 = dictionary3;
  v42 = v46;
  v43 = dictionary4;
  v22 = v20;
  [v21 na_each:?];

  v38 = v41;
  v23 = v39;
  v24 = v49;
  v33 = v48;
  v25 = v42;
  v26 = v43;
  [v22 enumerateIndexesUsingBlock:?];
  v27 = v37;
  v28 = v38;
  v29 = v44;
  v30 = v45;
  [v23 enumerateIndexesUsingBlock:?];
  v31 = [v27 copy];

  return v31;
}

BOOL __49__HMIFaceUtilities_mergedPersonEventsFromEvents___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  if (v3 == objc_opt_class() || (v4 = objc_opt_class(), v4 == objc_opt_class()))
  {
    v6 = 0;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = v5 != objc_opt_class();
  }

  return v6;
}

void __49__HMIFaceUtilities_mergedPersonEventsFromEvents___block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  [v6 setObject:? forKeyedSubscript:?];

  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __49__HMIFaceUtilities_mergedPersonEventsFromEvents___block_invoke_6;
  v13 = &unk_278754748;
  v14 = v5;
  v8 = *(a1 + 40);
  v15 = *(a1 + 48);
  v16 = a3;
  v9 = v5;
  [v8 enumerateObjectsUsingBlock:?];
}

void __49__HMIFaceUtilities_mergedPersonEventsFromEvents___block_invoke_6(uint64_t a1, void *a2, uint64_t a3)
{
  v31 = a2;
  [*(a1 + 32) boundingBox];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v31 boundingBox];
  HMICGRectIntersectionOverArea(v5, v7, v9, v11, v12, v13, v14, v15);
  if (v16 > 0.7)
  {
    [*(a1 + 32) boundingBox];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    [v31 boundingBox];
    HMICGRectIntersectionOverUnion(v18, v20, v22, v24, v25, v26, v27, v28);
    v29 = *(a1 + 40);
    v30 = [HMIPairwiseMatch initWithFirstIndex:"initWithFirstIndex:secondIndex:score:" secondIndex:? score:?];
    [v29 addObject:?];
  }
}

void __49__HMIFaceUtilities_mergedPersonEventsFromEvents___block_invoke_7(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v15 = v3;
  [v3 secondIndex];
  if ([v4 containsIndex:?])
  {
    v5 = a1[5];
    v6 = MEMORY[0x277CCABB0];
    [v15 firstIndex];
    v7 = [v6 numberWithUnsignedInteger:?];
    v8 = [v5 objectForKeyedSubscript:?];

    if (!v8)
    {
      v9 = a1[4];
      [v15 secondIndex];
      [v9 removeIndex:?];
      v10 = a1[6];
      [v15 secondIndex];
      v11 = [v10 objectAtIndexedSubscript:?];
      v12 = a1[5];
      v13 = MEMORY[0x277CCABB0];
      [v15 firstIndex];
      v14 = [v13 numberWithUnsignedInteger:?];
      [v12 setObject:? forKeyedSubscript:?];
    }
  }
}

void *__49__HMIFaceUtilities_mergedPersonEventsFromEvents___block_invoke_8(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 48) objectAtIndexedSubscript:?];
  v4 = MEMORY[0x277CCABB0];
  v5 = *(a1 + 32);
  [*(a1 + 40) count];
  v6 = [v4 numberWithUnsignedInteger:?];
  [v5 setObject:? forKeyedSubscript:?];

  v7 = *(a1 + 56);
  [*(a1 + 40) count];

  return [v7 addIndex:?];
}

void __49__HMIFaceUtilities_mergedPersonEventsFromEvents___block_invoke_9(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v6 = [v4 objectForKeyedSubscript:?];
  v7 = 32;
  if (!v6)
  {
    v7 = 40;
  }

  v8 = *(a1 + v7);
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v10 = [v8 objectForKeyedSubscript:?];

  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __49__HMIFaceUtilities_mergedPersonEventsFromEvents___block_invoke_10;
  v16 = &unk_278754748;
  v17 = v10;
  v11 = *(a1 + 48);
  v18 = *(a1 + 56);
  v19 = a2;
  v12 = v10;
  [v11 enumerateObjectsUsingBlock:?];
}

void __49__HMIFaceUtilities_mergedPersonEventsFromEvents___block_invoke_10(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  [v4 boundingBox];
  MinX = CGRectGetMinX(v22);
  [*(a1 + 32) boundingBox];
  MinY = CGRectGetMinY(v23);
  [*(a1 + 32) boundingBox];
  Width = CGRectGetWidth(v24);
  [*(a1 + 32) boundingBox];
  v9 = CGRectGetHeight(v25) * 0.4;
  [v5 boundingBox];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  HMICGRectIntersectionOverArea(v11, v13, v15, v17, MinX, MinY, Width, v9);
  if (v18 > 0.0)
  {
    v19 = *(a1 + 40);
    v20 = [HMIPairwiseMatch initWithFirstIndex:"initWithFirstIndex:secondIndex:score:" secondIndex:? score:?];
    [v19 addObject:?];
  }
}

void __49__HMIFaceUtilities_mergedPersonEventsFromEvents___block_invoke_11(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v26 = v3;
  [v3 firstIndex];
  if ([v4 containsIndex:?])
  {
    v5 = a1[5];
    [v26 secondIndex];
    if ([v5 containsIndex:?])
    {
      v6 = a1[6];
      v7 = MEMORY[0x277CCABB0];
      [v26 firstIndex];
      v8 = [v7 numberWithUnsignedInteger:?];
      v9 = [v6 objectForKeyedSubscript:?];

      if (!v9)
      {
        v22 = a1[5];
        [v26 secondIndex];
        [v22 removeIndex:?];
        v23 = a1[7];
        [v26 secondIndex];
        v17 = [v23 objectAtIndexedSubscript:?];
        v24 = a1[6];
        v25 = MEMORY[0x277CCABB0];
        [v26 firstIndex];
        v18 = [v25 numberWithUnsignedInteger:?];
        [v24 setObject:? forKeyedSubscript:?];
        goto LABEL_8;
      }
    }

    v10 = a1[5];
    [v26 secondIndex];
    if ([v10 containsIndex:?])
    {
      v11 = a1[8];
      v12 = MEMORY[0x277CCABB0];
      [v26 secondIndex];
      v13 = [v12 numberWithUnsignedInteger:?];
      v14 = [v11 objectForKeyedSubscript:?];

      if (!v14)
      {
        v15 = a1[6];
        v16 = MEMORY[0x277CCABB0];
        [v26 firstIndex];
        v17 = [v16 numberWithUnsignedInteger:?];
        v18 = [v15 objectForKeyedSubscript:?];
        v19 = a1[8];
        v20 = MEMORY[0x277CCABB0];
        [v26 secondIndex];
        v21 = [v20 numberWithUnsignedInteger:?];
        [v19 setObject:? forKeyedSubscript:?];

LABEL_8:
      }
    }
  }
}

void __49__HMIFaceUtilities_mergedPersonEventsFromEvents___block_invoke_12(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v5 = [v3 objectForKeyedSubscript:?];

  if (!v5 || (v6 = *(a1 + 32), [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "objectForKeyedSubscript:"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "boundingBox"), v13 = HMICGRectArea(v9, v10, v11, v12), v8, v7, objc_msgSend(*(a1 + 40), "objectAtIndexedSubscript:"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "boundingBox"), v19 = HMICGRectArea(v15, v16, v17, v18), v14, v19 * 9.0 >= v13))
  {
    v20 = [*(a1 + 40) objectAtIndexedSubscript:?];
    v21 = MEMORY[0x277CCABB0];
    v22 = *(a1 + 48);
    [*(a1 + 56) count];
    [*(a1 + 64) count];
    v23 = [v21 numberWithUnsignedInteger:?];
    [v22 setObject:? forKeyedSubscript:?];

    v24 = *(a1 + 72);
    [*(a1 + 56) count];
    [*(a1 + 64) count];

    [v24 addIndex:?];
  }
}

void __49__HMIFaceUtilities_mergedPersonEventsFromEvents___block_invoke_13(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v15 = [v3 objectForKeyedSubscript:?];

  v5 = *(a1 + 40);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v7 = [v5 objectForKeyedSubscript:?];

  v8 = *(a1 + 48);
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v10 = [v8 objectForKeyedSubscript:?];

  if (v15)
  {
    v11 = [HMIVideoAnalyzerEventPerson alloc];
    v12 = [v15 confidence];
    [v15 boundingBox];
    v13 = [HMIVideoAnalyzerEventPerson initWithConfidence:v11 boundingBox:"initWithConfidence:boundingBox:face:torso:" face:? torso:?];

    if (!v13)
    {
      goto LABEL_15;
    }

LABEL_14:
    [*(a1 + 56) addObject:?];

    goto LABEL_15;
  }

  if (v10 && v7)
  {
    v14 = [HMIVideoAnalyzerEventPerson initWithFaceEvent:"initWithFaceEvent:torso:" torso:?];
    goto LABEL_13;
  }

  if (v10 && !v7)
  {
    v14 = [[HMIVideoAnalyzerEventPerson alloc] initWithFaceEvent:?];
    goto LABEL_13;
  }

  if (!v10 && v7)
  {
    v14 = [[HMIVideoAnalyzerEventPerson alloc] initWithTorsoEvent:?];
LABEL_13:
    v13 = v14;
    if (!v14)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_15:
}

+ (BOOL)saveFaceClassifications:(id)classifications videoId:(id)id fragmentId:(unint64_t)fragmentId frameId:(id)frameId baseURL:(id)l error:(id *)error
{
  v103 = *MEMORY[0x277D85DE8];
  classificationsCopy = classifications;
  idCopy = id;
  frameIdCopy = frameId;
  lCopy = l;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [lCopy path];
  LOBYTE(id) = [defaultManager createDirectoryAtPath:? withIntermediateDirectories:? attributes:? error:?];
  v16 = 0;

  if (id)
  {
    errorCopy = error;
    obj = classificationsCopy;
    v70 = [obj countByEnumeratingWithState:? objects:? count:?];
    if (!v70)
    {
      v54 = 1;
      goto LABEL_35;
    }

    v68 = MEMORY[0];
    v69 = lCopy;
    v67 = classificationsCopy;
LABEL_4:
    v17 = 0;
    v18 = v16;
    while (1)
    {
      v84 = v18;
      if (MEMORY[0] != v68)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(8 * v17);
      v97 = @"0.1";
      v91 = @"version";
      v92 = @"personUUID";
      personUUID = [v19 personUUID];
      if (personUUID)
      {
        personUUID2 = [v19 personUUID];
        uUIDString = [personUUID2 UUIDString];
        v72 = uUIDString;
      }

      else
      {
        uUIDString = [MEMORY[0x277CBEB68] null];
        v76 = uUIDString;
      }

      v98 = uUIDString;
      v93 = @"sourceUUID";
      sourceUUID = [v19 sourceUUID];
      v80 = v17;
      if (sourceUUID)
      {
        sourceUUID2 = [v19 sourceUUID];
        uUIDString2 = [sourceUUID2 UUIDString];
        v73 = uUIDString2;
        v23 = v79;
      }

      else
      {
        uUIDString2 = [MEMORY[0x277CBEB68] null];
        v23 = uUIDString2;
      }

      v99 = uUIDString2;
      v94 = @"faceCropUUID";
      faceCrop = [v19 faceCrop];
      uUID = [faceCrop UUID];
      uUIDString3 = [uUID UUIDString];
      v100 = uUIDString3;
      v95 = @"faceprintUUID";
      faceprint = [v19 faceprint];
      uUID2 = [faceprint UUID];
      uUIDString4 = [uUID2 UUIDString];
      v101 = uUIDString4;
      v96 = @"confidence";
      v30 = MEMORY[0x277CCABB0];
      v85 = v19;
      [v19 confidence];
      v31 = [v30 numberWithDouble:?];
      v102 = v31;
      v86 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

      v32 = v23;
      if (sourceUUID)
      {

        v32 = sourceUUID2;
      }

      v79 = v23;

      v33 = v76;
      if (personUUID)
      {

        v33 = personUUID2;
      }

      v83 = MEMORY[0x277CCACA8];
      intValue = [frameIdCopy intValue];
      uUID3 = [v19 UUID];
      v35 = uUID3 ? @"known" : @"unknown";
      faceCrop2 = [v19 faceCrop];
      uUID4 = [faceCrop2 UUID];
      uUIDString5 = [uUID4 UUIDString];
      v39 = [uUIDString5 substringToIndex:?];
      sourceUUID3 = [v19 sourceUUID];
      uUIDString6 = [sourceUUID3 UUIDString];
      v42 = [uUIDString6 substringToIndex:?];
      v43 = [v83 stringWithFormat:idCopy, fragmentId, intValue, v35, v39, v42];

      lCopy = v69;
      v44 = [v69 URLByAppendingPathComponent:?];
      v45 = [v44 URLByAppendingPathExtension:?];
      v46 = v86;
      LOBYTE(v42) = [HMIFaceUtilities serializeJSONObject:"serializeJSONObject:url:error:" url:? error:?];
      v16 = v84;

      if ((v42 & 1) == 0)
      {
        break;
      }

      faceCrop3 = [v85 faceCrop];
      dataRepresentation = [faceCrop3 dataRepresentation];
      v49 = [v44 URLByAppendingPathExtension:?];
      v50 = [dataRepresentation writeToURL:? atomically:?];

      classificationsCopy = v67;
      if ((v50 & 1) == 0)
      {
        v60 = [MEMORY[0x277CCACA8] stringWithFormat:v85];
        v61 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:?];
        v62 = errorCopy;
        v46 = v86;
        if (!errorCopy)
        {
          goto LABEL_33;
        }

LABEL_32:
        v63 = v61;
        *v62 = v61;
LABEL_33:
        HMIErrorLogC(v61);

        goto LABEL_34;
      }

      v51 = objc_autoreleasePoolPush();
      v52 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
      {
        v53 = HMFGetLogIdentifier();
        *buf = 138543618;
        v88 = v53;
        v89 = 2112;
        v90 = v85;
        _os_log_impl(&dword_22D12F000, v52, OS_LOG_TYPE_INFO, "%{public}@Saved face classification:%@ to disk", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v51);
      v17 = v80 + 1;
      v18 = v16;
      if (v70 == (v80 + 1))
      {
        v54 = 1;
        v70 = [obj countByEnumeratingWithState:? objects:? count:?];
        if (v70)
        {
          goto LABEL_4;
        }

        goto LABEL_35;
      }
    }

    v60 = [MEMORY[0x277CCACA8] stringWithFormat:v85];
    v61 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:? underlyingError:?];
    classificationsCopy = v67;
    v62 = errorCopy;
    if (errorCopy)
    {
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  v55 = MEMORY[0x277CCACA8];
  path2 = [lCopy path];
  v57 = [v55 stringWithFormat:path2];

  obj = v57;
  v58 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:? underlyingError:?];
  v46 = v58;
  if (error)
  {
    v59 = v58;
    *error = v46;
  }

  HMIErrorLogC(v46);
LABEL_34:

  v54 = 0;
LABEL_35:

  return v54;
}

+ (BOOL)serializeJSONObject:(id)object url:(id)url error:(id *)error
{
  urlCopy = url;
  v7 = [MEMORY[0x277CCAAA0] dataWithJSONObject:? options:? error:?];
  v8 = 0;
  v9 = v8;
  if (v7)
  {
    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:? encoding:?];
    v11 = [v10 writeToURL:? atomically:? encoding:? error:?];
    v12 = v9;

    if ((v11 & 1) == 0)
    {
      if (error)
      {
        v13 = v12;
        *error = v12;
      }

      HMIErrorLogC(v12);
    }

    v9 = v12;
  }

  else
  {
    if (error)
    {
      v14 = v8;
      *error = v9;
    }

    HMIErrorLogC(v9);
    v11 = 0;
  }

  return v11;
}

+ (CGRect)faceBoundingBoxFromPhotosFaceCropData:(id)data
{
  dataCopy = data;
  [objc_opt_class() absoluteFaceBoxFromPhotosFaceCropImageData:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [objc_opt_class() faceCropDimensionsFromFaceCrop:? error:?];
  v13 = v12;
  v15 = v14;

  v26.origin.x = v5;
  v26.origin.y = v7;
  v26.size.width = v9;
  v26.size.height = v11;
  if (CGRectIsNull(v26))
  {
    return **&MEMORY[0x277CBF398];
  }

  if (v13 == *MEMORY[0x277CBF3A8] && v15 == *(MEMORY[0x277CBF3A8] + 8))
  {
    return **&MEMORY[0x277CBF398];
  }

  else
  {
    v33.origin.x = HMICGRectMakeWithSize();
    v33.origin.y = v17;
    v33.size.width = v18;
    v33.size.height = v19;
    v27.origin.x = v5;
    v27.origin.y = v7;
    v27.size.width = v9;
    v27.size.height = v11;
    v28 = CGRectIntersection(v27, v33);
    HMICGRectNormalizedFromPixel(v13, v15, v28.origin.x, v28.origin.y, v28.size.width, v28.size.height);
    x = v29.origin.x;
    y = v29.origin.y;
    width = v29.size.width;
    height = v29.size.height;
    v24 = CGRectGetWidth(v29) * 0.150000006 * 0.5;
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    v25 = CGRectGetHeight(v30) * 0.150000006 * 0.5;
    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    return CGRectInset(v31, v24, v25);
  }
}

+ (BOOL)isValidFaceCrop:(id)crop
{
  cropCopy = crop;
  v6 = objc_autoreleasePoolPush();
  v7 = [self newDictionaryPopulatedWithFaceCropDataFromImageData:?];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKeyedSubscript:?];
    v10 = [v9 isEqualToNumber:?];
    if ((v10 & 1) != 0 || ([v8 objectForKeyedSubscript:?], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqualToNumber:")))
    {
      v11 = [v8 objectForKeyedSubscript:?];
      if (v11)
      {
        v12 = [v8 objectForKeyedSubscript:?];
        v13 = v12 != 0;
      }

      else
      {
        v13 = 0;
      }

      if (v10)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v13 = 0;
    }

LABEL_12:
    goto LABEL_13;
  }

  v13 = 0;
LABEL_13:

  objc_autoreleasePoolPop(v6);
  return v13;
}

+ (CGRect)absoluteFaceBoxFromPhotosFaceCropImageData:(id)data
{
  v26 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v4 = [objc_opt_class() newDictionaryPopulatedWithFaceCropDataFromImageData:?];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:?];
    v7 = v6;
    if (v6)
    {
      memset(&rect, 0, sizeof(rect));
      if (CGRectMakeWithDictionaryRepresentation(v6, &rect))
      {
        p_rect = &rect;
        v9 = *&rect.origin.y;
      }

      else
      {
        v15 = objc_autoreleasePoolPush();
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = HMFGetLogIdentifier();
          *buf = 138543362;
          v24 = v17;
          _os_log_impl(&dword_22D12F000, v16, OS_LOG_TYPE_ERROR, "%{public}@Couldn't convert face box dict to rect", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v15);
        p_rect = MEMORY[0x277CBF398];
        v9 = *(MEMORY[0x277CBF398] + 8);
      }

      v22 = v9;
      height = p_rect->size.height;
      x = p_rect->origin.x;
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        LODWORD(rect.origin.x) = 138543362;
        *(&rect.origin.x + 4) = v14;
        _os_log_impl(&dword_22D12F000, v13, OS_LOG_TYPE_ERROR, "%{public}@Face Box dict is null in photos metadata", &rect, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
      x = *MEMORY[0x277CBF398];
      v22 = *(MEMORY[0x277CBF398] + 8);
      height = *(MEMORY[0x277CBF398] + 24);
    }
  }

  else
  {
    x = *MEMORY[0x277CBF398];
    v22 = *(MEMORY[0x277CBF398] + 8);
    height = *(MEMORY[0x277CBF398] + 24);
  }

  v19 = *(&v22 + 1);
  v18 = *&v22;
  v20 = x;
  v21 = height;
  result.size.height = v21;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v20;
  return result;
}

+ (CGSize)faceCropDimensionsFromFaceCrop:(id)crop error:(id *)error
{
  v17[3] = *MEMORY[0x277D85DE8];
  cropCopy = crop;
  v6 = objc_autoreleasePoolPush();
  if (([self isValidFaceCrop:?] & 1) == 0 || (v7 = CGImageSourceCreateWithData(cropCopy, objc_msgSend(self, "imageCreationOptions")), (v8 = v7) == 0))
  {
    v13 = [MEMORY[0x277CBEAD8] exceptionWithName:? reason:? userInfo:?];
    objc_exception_throw(v13);
  }

  v16 = -1;
  v17[0] = 0;
  v15 = 0;
  if ((getImagePropertiesFromCGImageSource(v7, &v16, v17, &v15) & 1) == 0)
  {
    v14 = [MEMORY[0x277CBEAD8] exceptionWithName:? reason:? userInfo:?];
    objc_exception_throw(v14);
  }

  v9 = v17[0];
  v10 = v15;
  CFRelease(v8);
  objc_autoreleasePoolPop(v6);

  v11 = v9;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

+ (id)imageCreationOptions
{
  if (imageCreationOptions_onceToken != -1)
  {
    +[HMIFaceUtilities imageCreationOptions];
  }

  v3 = imageCreationOptions_kImageCreationOptions;

  return v3;
}

void __40__HMIFaceUtilities_imageCreationOptions__block_invoke()
{
  v12 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CD3670];
  v4 = *MEMORY[0x277CD3618];
  v5 = v0;
  v8 = MEMORY[0x277CBEC28];
  v9 = MEMORY[0x277CBEC38];
  v1 = *MEMORY[0x277CD3648];
  v6 = *MEMORY[0x277CD3678];
  v7 = v1;
  v10 = MEMORY[0x277CBEC28];
  v11 = MEMORY[0x277CBEC38];
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  v3 = imageCreationOptions_kImageCreationOptions;
  imageCreationOptions_kImageCreationOptions = v2;
}

+ (id)newDictionaryPopulatedWithFaceCropDataFromImageData:(id)data
{
  v26 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v4 = objc_autoreleasePoolPush();
  if (dataCopy)
  {
    v5 = CGImageSourceCreateWithData(dataCopy, 0);
    v6 = v5;
    if (!v5)
    {
      v22 = [MEMORY[0x277CBEAD8] exceptionWithName:? reason:? userInfo:?];
      objc_exception_throw(v22);
    }

    v7 = CGImageSourceCopyMetadataAtIndex(v5, 0, 0);
    v8 = v7;
    if (!v7)
    {
      v23 = [MEMORY[0x277CBEAD8] exceptionWithName:? reason:? userInfo:?];
      objc_exception_throw(v23);
    }

    v9 = CGImageMetadataCopyStringValueWithPath(v7, 0, @"PVFC:PVFC");
    v10 = v9;
    if (v9)
    {
      v11 = MEMORY[0x277CCAAA0];
      v12 = [(__CFString *)v9 dataUsingEncoding:?];
      v13 = [v11 JSONObjectWithData:? options:? error:?];
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v24 = 138543362;
        v25 = v19;
        _os_log_impl(&dword_22D12F000, v18, OS_LOG_TYPE_ERROR, "%{public}@Metadata string is nil in photos face crop data", &v24, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
      v13 = 0;
    }

    v20 = v6;
    CFRelease(v8);
    v16 = v13;
    if (v20)
    {
      CFRelease(v20);
    }
  }

  else
  {
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v24 = 138543362;
      v25 = v15;
      _os_log_impl(&dword_22D12F000, v14, OS_LOG_TYPE_ERROR, "%{public}@imageData is nil", &v24, 0xCu);
    }

    v16 = 0;
  }

  objc_autoreleasePoolPop(v4);

  return v16;
}

@end