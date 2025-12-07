@interface BWFaceDetectionNode
- (BWFaceDetectionNode)initWithObjectMetadataIdentifiers:(id)identifiers movieFileOutputMetadataIdentifierGroups:(id)groups;
- (CGRect)rectOfInterest;
- (__n128)_resetDetection;
- (uint64_t)_addDetectedObjectsInfo:(uint64_t)info detectedObjectsSource:(const void *)source toSampleBuffer:;
- (uint64_t)_addFacesArray:(const void *)array toSampleBuffer:;
- (uint64_t)_getEmptyMetadataSampleData;
- (uint64_t)append:(_DWORD *)append toBoxedData:(_DWORD *)data localIDs:(int)ds isFace:;
- (uint64_t)localIDsForKey:(uint64_t)result;
- (void)_populateLocalIDsForCatBodiesWithFormatDescription:(uint64_t)description;
- (void)_populateLocalIDsForCatHeadsWithFormatDescription:(uint64_t)description;
- (void)_populateLocalIDsForDogBodiesWithFormatDescription:(uint64_t)description;
- (void)_populateLocalIDsForDogHeadsWithFormatDescription:(uint64_t)description;
- (void)_populateLocalIDsForFacesWithFormatDescription:(_DWORD *)description;
- (void)_populateLocalIDsForHumanBodiesWithFormatDescription:(uint64_t)description;
- (void)_populateLocalIDsForSalientObjectsWithFormatDescription:(uint64_t)description;
- (void)_renderSampleBuffer:forBoxedMetadataOutput:withDetectedObjectsInfo:;
- (void)_renderSampleBufferForBoxedMetadataOutput:withDetectedObjectsInfo:;
- (void)_renderSampleBufferForBoxedMetadataOutput:withFaceArray:;
- (void)_renderSampleBufferWithLock:(uint64_t)lock forInput:;
- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
- (void)setEmitsEmptyObjectDetectionMetadata:(BOOL)metadata;
- (void)setMetadataObjectOutputEnabled:(BOOL)enabled;
- (void)setRectOfInterest:(CGRect)interest;
- (void)updateMetadataIdentifiers:(id)identifiers rectOfInterest:(CGRect)interest emitsEmptyObjectDetectionMetadata:(BOOL)metadata;
@end

@implementation BWFaceDetectionNode

- (__n128)_resetDetection
{
  if (self)
  {
    *(self + 480) = 0;
    v1 = MEMORY[0x1E6960C70];
    result = *MEMORY[0x1E6960C70];
    *(self + 408) = *MEMORY[0x1E6960C70];
    v3 = *(v1 + 16);
    *(self + 424) = v3;
    *(self + 432) = result;
    *(self + 448) = v3;
    *(self + 456) = result;
    *(self + 472) = v3;
    *(self + 496) = 0;
    *(self + 504) = 0;
    *(self + 240) = -1;
    *(self + 244) = -1;
  }

  return result;
}

- (BWFaceDetectionNode)initWithObjectMetadataIdentifiers:(id)identifiers movieFileOutputMetadataIdentifierGroups:(id)groups
{
  v83.receiver = self;
  v83.super_class = BWFaceDetectionNode;
  v67 = [(BWNode *)&v83 init];
  if (!v67)
  {
    return 0;
  }

  v7 = [[BWNodeInput alloc] initWithMediaType:1835365473 node:v67];
  [(BWNode *)v67 addInput:v7];

  v67->_rectOfInterest.origin.x = 0.0;
  v67->_rectOfInterest.origin.y = 0.0;
  __asm { FMOV            V0.2D, #1.0 }

  v67->_rectOfInterest.size = _Q0;
  v67->_configurationLock._os_unfair_lock_opaque = 0;
  v67->_metadataObjectOutput = [[BWNodeOutput alloc] initWithMediaType:1836016234 node:v67];
  identifiersCopy = identifiers;
  [(BWNodeOutput *)v67->_metadataObjectOutput setFormat:[BWMetadataObjectFormat formatWithMetadataIdentifiers:identifiers]];
  [(BWNode *)v67 addOutput:v67->_metadataObjectOutput];
  v67->_localIDsForFaces_BE[0] = 0;
  v67->_localIDsForDetectedHumanBodies_BE[0] = 0;
  v67->_localIDsForDetectedCatHeads_BE[0] = 0;
  v67->_localIDsForDetectedCatBodies_BE[0] = 0;
  v67->_localIDsForDetectedDogHeads_BE[0] = 0;
  v67->_localIDsForDetectedDogBodies_BE[0] = 0;
  v67->_localIDsForDetectedSalientObjects_BE[0] = 0;
  v13 = [groups count];
  v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:v13];
  allocator = *MEMORY[0x1E695E480];
  theDict = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], v13, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFAutorelease(theDict);
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v66 = [groups countByEnumeratingWithState:&v79 objects:v78 count:16];
  if (!v66)
  {
    goto LABEL_5;
  }

  v63 = *v80;
  v73 = *MEMORY[0x1E6960388];
  v18 = *MEMORY[0x1E6960348];
  v19 = *MEMORY[0x1E6960338];
  v60 = *MEMORY[0x1E69602D0];
  v20 = *MEMORY[0x1E69628F8];
  v59 = *MEMORY[0x1E6962938];
  v21 = *MEMORY[0x1E6960298];
  v58 = *MEMORY[0x1E6962930];
  v77 = *MEMORY[0x1E6960248];
  v76 = *MEMORY[0x1E6960358];
  v75 = *MEMORY[0x1E6960360];
  v74 = *MEMORY[0x1E695E4C0];
  v57 = *MEMORY[0x1E6962940];
  v56 = *MEMORY[0x1E6960208];
  v55 = *MEMORY[0x1E6962948];
  v22 = *MEMORY[0x1E6960390];
  v54 = *MEMORY[0x1E69602D8];
  v53 = *MEMORY[0x1E6962950];
  v52 = *MEMORY[0x1E6962958];
  v71 = *MEMORY[0x1E6960378];
  v51 = *MEMORY[0x1E69602C8];
  v50 = *MEMORY[0x1E6962920];
  v49 = *MEMORY[0x1E6962928];
  v72 = *MEMORY[0x1E6960368];
  v48 = *MEMORY[0x1E69602C0];
  v47 = *MEMORY[0x1E6962910];
  v46 = *MEMORY[0x1E6962918];
  v70 = *MEMORY[0x1E6960398];
  v45 = *MEMORY[0x1E69602E0];
  v44 = *MEMORY[0x1E69629D0];
  v42 = v14;
  v43 = *MEMORY[0x1E69629C8];
  v23 = 0x1E695D000;
  obj = groups;
  v62 = *MEMORY[0x1E6960338];
  v68 = *MEMORY[0x1E6960298];
  do
  {
    v24 = 0;
    do
    {
      if (*v80 != v63)
      {
        objc_enumerationMutation(obj);
      }

      v69 = v24;
      v25 = *(*(&v79 + 1) + 8 * v24);
      formatDescriptionOut = 0;
      array = [MEMORY[0x1E695DF70] array];
      if ([v25 containsObject:v73])
      {
        v135[0] = v18;
        v135[1] = v19;
        v136[0] = v73;
        v136[1] = v60;
        v135[2] = v20;
        v132[0] = v18;
        v132[1] = v19;
        v133[0] = v59;
        v133[1] = v21;
        v134[0] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v133 forKeys:v132 count:2];
        v130[0] = v18;
        v130[1] = v19;
        v131[0] = v58;
        v131[1] = v77;
        v130[2] = v76;
        v128 = v75;
        v129 = v74;
        v131[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v129 forKeys:&v128 count:1];
        v134[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v131 forKeys:v130 count:3];
        v126[0] = v18;
        v126[1] = v19;
        v127[0] = v57;
        v127[1] = v56;
        v126[2] = v76;
        v124 = v75;
        v125 = v74;
        v127[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v125 forKeys:&v124 count:1];
        v134[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v127 forKeys:v126 count:3];
        v122[0] = v18;
        v122[1] = v19;
        v123[0] = v55;
        v123[1] = v56;
        v122[2] = v76;
        v14 = v42;
        v23 = 0x1E695D000uLL;
        v120 = v75;
        v21 = v68;
        v121 = v74;
        v123[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v121 forKeys:&v120 count:1];
        v134[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v123 forKeys:v122 count:3];
        v136[2] = [MEMORY[0x1E695DEC8] arrayWithObjects:v134 count:4];
        [array addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v136, v135, 3)}];
      }

      if ([v25 containsObject:v22])
      {
        v118[0] = v18;
        v118[1] = v19;
        v119[0] = v22;
        v119[1] = v54;
        v118[2] = v20;
        v115[0] = v18;
        v115[1] = v19;
        v116[0] = v53;
        v116[1] = v21;
        v117[0] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v116 forKeys:v115 count:2];
        v113[0] = v18;
        v113[1] = v19;
        v114[0] = v52;
        v114[1] = v77;
        v113[2] = v76;
        v111 = v75;
        v112 = v74;
        v114[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v112 forKeys:&v111 count:1];
        v117[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v114 forKeys:v113 count:3];
        v119[2] = [*(v23 + 3784) arrayWithObjects:v117 count:2];
        [array addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v119, v118, 3)}];
      }

      if ([v25 containsObject:v71])
      {
        v109[0] = v18;
        v109[1] = v19;
        v110[0] = v71;
        v110[1] = v51;
        v109[2] = v20;
        v106[0] = v18;
        v106[1] = v19;
        v107[0] = v50;
        v107[1] = v21;
        v108[0] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v107 forKeys:v106 count:2];
        v104[0] = v18;
        v104[1] = v19;
        v105[0] = v49;
        v105[1] = v77;
        v104[2] = v76;
        v102 = v75;
        v103 = v74;
        v105[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
        v108[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v105 forKeys:v104 count:3];
        v110[2] = [*(v23 + 3784) arrayWithObjects:v108 count:2];
        [array addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v110, v109, 3)}];
      }

      if ([v25 containsObject:v72])
      {
        v100[0] = v18;
        v100[1] = v19;
        v101[0] = v72;
        v101[1] = v48;
        v100[2] = v20;
        v97[0] = v18;
        v97[1] = v19;
        v98[0] = v47;
        v98[1] = v21;
        v99[0] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v98 forKeys:v97 count:2];
        v95[0] = v18;
        v95[1] = v19;
        v96[0] = v46;
        v96[1] = v77;
        v95[2] = v76;
        v93 = v75;
        v94 = v74;
        v96[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
        v99[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v96 forKeys:v95 count:3];
        v101[2] = [*(v23 + 3784) arrayWithObjects:v99 count:2];
        [array addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v101, v100, 3)}];
      }

      if ([v25 containsObject:v70])
      {
        v91[0] = v18;
        v91[1] = v19;
        v92[0] = v70;
        v92[1] = v45;
        v91[2] = v20;
        v88[0] = v18;
        v88[1] = v19;
        v89[0] = v44;
        v89[1] = v21;
        v90[0] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v89 forKeys:v88 count:2];
        v86[0] = v18;
        v86[1] = v19;
        v87[0] = v43;
        v87[1] = v77;
        v86[2] = v76;
        v84 = v75;
        v85 = v74;
        v87[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
        v90[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v87 forKeys:v86 count:3];
        v92[2] = [*(v23 + 3784) arrayWithObjects:v90 count:2];
        [array addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v92, v91, 3)}];
      }

      if (CMMetadataFormatDescriptionCreateWithMetadataSpecifications(allocator, 0x6D656278u, array, &formatDescriptionOut))
      {
        [BWFaceDetectionNode initWithObjectMetadataIdentifiers:movieFileOutputMetadataIdentifierGroups:];
        goto LABEL_49;
      }

      v27 = v18;
      v28 = v20;
      v29 = formatDescriptionOut;
      CFAutorelease(formatDescriptionOut);
      v30 = [[BWNodeOutput alloc] initWithMediaType:1835365473 node:v67];
      [(BWNodeOutput *)v30 setFormat:[BWMetadataFormat formatWithMetadataFormatDescription:v29]];
      [(BWNode *)v67 addOutput:v30];
      v31 = v14;
      [v14 addObject:v30];
      v32 = objc_alloc_init(BWBoxedOutputDetectionTimingInfo);
      CFDictionaryAddValue(theDict, v30, v32);

      if ([v25 containsObject:v73])
      {
        [(BWFaceDetectionNode *)v67 _populateLocalIDsForFacesWithFormatDescription:v29];
        if (v33)
        {
          [BWFaceDetectionNode initWithObjectMetadataIdentifiers:movieFileOutputMetadataIdentifierGroups:];
LABEL_49:

          return 0;
        }
      }

      if ([v25 containsObject:v22])
      {
        [BWFaceDetectionNode _populateLocalIDsForHumanBodiesWithFormatDescription:v67];
        if (v34)
        {
          [BWFaceDetectionNode initWithObjectMetadataIdentifiers:movieFileOutputMetadataIdentifierGroups:];
          goto LABEL_49;
        }
      }

      if ([v25 containsObject:@"mdta/com.apple.quicktime.detected-cat-head"])
      {
        [BWFaceDetectionNode _populateLocalIDsForCatHeadsWithFormatDescription:v67];
        if (v35)
        {
          [BWFaceDetectionNode initWithObjectMetadataIdentifiers:movieFileOutputMetadataIdentifierGroups:];
          goto LABEL_49;
        }
      }

      if ([v25 containsObject:v72])
      {
        [BWFaceDetectionNode _populateLocalIDsForCatBodiesWithFormatDescription:v67];
        if (v36)
        {
          [BWFaceDetectionNode initWithObjectMetadataIdentifiers:movieFileOutputMetadataIdentifierGroups:];
          goto LABEL_49;
        }
      }

      if ([v25 containsObject:@"mdta/com.apple.quicktime.detected-dog-head"])
      {
        [BWFaceDetectionNode _populateLocalIDsForDogHeadsWithFormatDescription:v67];
        if (v37)
        {
          [BWFaceDetectionNode initWithObjectMetadataIdentifiers:movieFileOutputMetadataIdentifierGroups:];
          goto LABEL_49;
        }
      }

      if ([v25 containsObject:v71])
      {
        [BWFaceDetectionNode _populateLocalIDsForDogBodiesWithFormatDescription:v67];
        if (v38)
        {
          [BWFaceDetectionNode initWithObjectMetadataIdentifiers:movieFileOutputMetadataIdentifierGroups:];
          goto LABEL_49;
        }
      }

      if ([v25 containsObject:v70])
      {
        [BWFaceDetectionNode _populateLocalIDsForSalientObjectsWithFormatDescription:v67];
        if (v39)
        {
          [BWFaceDetectionNode initWithObjectMetadataIdentifiers:movieFileOutputMetadataIdentifierGroups:];
          goto LABEL_49;
        }
      }

      v21 = v68;
      ++v24;
      v14 = v31;
      v20 = v28;
      v18 = v27;
      v19 = v62;
    }

    while (v66 != v69 + 1);
    groups = obj;
    v40 = [obj countByEnumeratingWithState:&v79 objects:v78 count:16];
    v66 = v40;
  }

  while (v40);
LABEL_5:
  v15 = [v14 count];
  if (v15)
  {
    v15 = v14;
  }

  v67->_boxedMetadataOutputs = v15;
  v67->_detectionTimingInfoByBoxedOutput = theDict;
  v16 = [MEMORY[0x1E695DFA8] set];
  FigCaptureAddDetectedObjectTypesFromMetadataIdentifiersToSet(identifiersCopy, v16);
  v67->_enabledDetectedObjectTypes = v16;
  v67->_metadataObjectOutputEnabled = [identifiersCopy count] != 0;
  v67->_boxedMetadataOutputEnabled = [groups count] != 0;
  v67->_emitsEmptyObjectDetectionMetadata = 0;
  *&v17 = [(BWFaceDetectionNode *)v67 _resetDetection].n128_u64[0];
  v67->_recordCollectionAtomIdentifier_BE = 1667592803;
  v67->_collectionItemsAtomIdentifier_BE = 1937008995;
  [(BWNode *)v67 setSupportsLiveReconfiguration:1, v17];
  [(BWNode *)v67 setSupportsPrepareWhileRunning:1];
  return v67;
}

- (void)dealloc
{
  emptyMetadataSampleData = self->_emptyMetadataSampleData;
  if (emptyMetadataSampleData)
  {
    CFRelease(emptyMetadataSampleData);
  }

  v4.receiver = self;
  v4.super_class = BWFaceDetectionNode;
  [(BWFanOutNode *)&v4 dealloc];
}

- (void)updateMetadataIdentifiers:(id)identifiers rectOfInterest:(CGRect)interest emitsEmptyObjectDetectionMetadata:(BOOL)metadata
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  os_unfair_lock_lock(&self->_configurationLock);
  v12 = [MEMORY[0x1E695DFA8] set];
  FigCaptureAddDetectedObjectTypesFromMetadataIdentifiersToSet(identifiers, v12);
  if (![(NSSet *)self->_enabledDetectedObjectTypes isEqualToSet:v12])
  {

    self->_enabledDetectedObjectTypes = v12;
  }

  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  v20.size.width = 1.0;
  v20.size.height = 1.0;
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  v19 = CGRectIntersection(v18, v20);
  v13 = v19.origin.x;
  v14 = v19.origin.y;
  v15 = v19.size.width;
  v16 = v19.size.height;
  if (CGRectIsEmpty(v19))
  {
    v13 = *MEMORY[0x1E695F058];
    v14 = *(MEMORY[0x1E695F058] + 8);
    v15 = *(MEMORY[0x1E695F058] + 16);
    v16 = *(MEMORY[0x1E695F058] + 24);
  }

  self->_rectOfInterest.origin.x = v13;
  self->_rectOfInterest.origin.y = v14;
  self->_rectOfInterest.size.width = v15;
  self->_rectOfInterest.size.height = v16;
  self->_metadataObjectOutputEnabled = [identifiers count] != 0;
  self->_emitsEmptyObjectDetectionMetadata = metadata;

  os_unfair_lock_unlock(&self->_configurationLock);
}

- (void)setRectOfInterest:(CGRect)interest
{
  v10.origin.x = 0.0;
  v10.origin.y = 0.0;
  v10.size.width = 1.0;
  v10.size.height = 1.0;
  v9 = CGRectIntersection(interest, v10);
  x = v9.origin.x;
  y = v9.origin.y;
  width = v9.size.width;
  height = v9.size.height;
  if (CGRectIsEmpty(v9))
  {
    x = *MEMORY[0x1E695F058];
    y = *(MEMORY[0x1E695F058] + 8);
    width = *(MEMORY[0x1E695F058] + 16);
    height = *(MEMORY[0x1E695F058] + 24);
  }

  os_unfair_lock_lock(&self->_configurationLock);
  self->_rectOfInterest.origin.x = x;
  self->_rectOfInterest.origin.y = y;
  self->_rectOfInterest.size.width = width;
  self->_rectOfInterest.size.height = height;

  os_unfair_lock_unlock(&self->_configurationLock);
}

- (CGRect)rectOfInterest
{
  x = self->_rectOfInterest.origin.x;
  y = self->_rectOfInterest.origin.y;
  width = self->_rectOfInterest.size.width;
  height = self->_rectOfInterest.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setMetadataObjectOutputEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  os_unfair_lock_lock(&self->_configurationLock);
  if (self->_metadataObjectOutputEnabled != enabledCopy)
  {
    self->_metadataObjectOutputEnabled = enabledCopy;
  }

  os_unfair_lock_unlock(&self->_configurationLock);
}

- (void)setEmitsEmptyObjectDetectionMetadata:(BOOL)metadata
{
  metadataCopy = metadata;
  os_unfair_lock_lock(&self->_configurationLock);
  if (self->_emitsEmptyObjectDetectionMetadata != metadataCopy)
  {
    self->_emitsEmptyObjectDetectionMetadata = metadataCopy;
  }

  os_unfair_lock_unlock(&self->_configurationLock);
}

- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input
{
  if (self->_metadataObjectOutputEnabled)
  {
    [(BWNodeOutput *)self->_metadataObjectOutput makeConfiguredFormatLive:d];
  }

  if (self->_boxedMetadataOutputEnabled)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    boxedMetadataOutputs = self->_boxedMetadataOutputs;
    v7 = [(NSArray *)boxedMetadataOutputs countByEnumeratingWithState:&v12 objects:v11 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(boxedMetadataOutputs);
          }

          [*(*(&v12 + 1) + 8 * v10++) makeConfiguredFormatLive];
        }

        while (v8 != v10);
        v8 = [(NSArray *)boxedMetadataOutputs countByEnumeratingWithState:&v12 objects:v11 count:16];
      }

      while (v8);
    }
  }
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  os_unfair_lock_lock(&self->_configurationLock);
  [BWFaceDetectionNode _renderSampleBufferWithLock:? forInput:?];

  os_unfair_lock_unlock(&self->_configurationLock);
}

- (void)_populateLocalIDsForFacesWithFormatDescription:(_DWORD *)description
{
  if (description)
  {
    if (description[62])
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_4_8();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v16, v17, v18, v19, v20, v21, vars0, vars8);
    }

    else if (OUTLINED_FUNCTION_12_51(description, *MEMORY[0x1E6960388], *MEMORY[0x1E69602D0]))
    {
      OUTLINED_FUNCTION_24_22();
      *(description + v4) = v3;
      description[88] = description[62];
      if (OUTLINED_FUNCTION_12_51(v5, *MEMORY[0x1E6962938], *MEMORY[0x1E6960298]))
      {
        OUTLINED_FUNCTION_24_22();
        OUTLINED_FUNCTION_10_54(v6);
        OUTLINED_FUNCTION_25_22();
        description[89] = *(v7 + 4);
        if (OUTLINED_FUNCTION_12_51(v8, *MEMORY[0x1E6962930], *MEMORY[0x1E6960248]))
        {
          OUTLINED_FUNCTION_24_22();
          OUTLINED_FUNCTION_11_53(v9);
          OUTLINED_FUNCTION_25_22();
          description[90] = *(v10 + 8);
          if (FigMetadataFormatDescriptionGetLocalIDForMetadataIdentifyingFactors())
          {
            OUTLINED_FUNCTION_24_22();
            *(description + v11 + 12) = v12;
            OUTLINED_FUNCTION_25_22();
            description[91] = *(v13 + 12);
            if (FigMetadataFormatDescriptionGetLocalIDForMetadataIdentifyingFactors())
            {
              OUTLINED_FUNCTION_5_87();
              description[66] = v14;
              OUTLINED_FUNCTION_25_22();
              description[92] = *(v15 + 16);
            }
          }
        }
      }
    }
  }
}

- (void)_populateLocalIDsForHumanBodiesWithFormatDescription:(uint64_t)description
{
  if (description)
  {
    if (*(description + 268))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_4_8();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v7, v8, v9, v10, v11, vars0, vars8);
    }

    else
    {
      v2 = OUTLINED_FUNCTION_12_51(description, *MEMORY[0x1E6960390], *MEMORY[0x1E69602D8]);
      if (v2)
      {
        *(description + 268) = bswap32(v2);
        v3 = OUTLINED_FUNCTION_12_51(v2, *MEMORY[0x1E6962950], *MEMORY[0x1E6960298]);
        if (v3)
        {
          OUTLINED_FUNCTION_10_54(bswap32(v3));
          if (OUTLINED_FUNCTION_12_51(v4, *MEMORY[0x1E6962958], *MEMORY[0x1E6960248]))
          {
            OUTLINED_FUNCTION_5_87();
            OUTLINED_FUNCTION_11_53(v5);
          }
        }
      }
    }
  }
}

- (void)_populateLocalIDsForCatHeadsWithFormatDescription:(uint64_t)description
{
  if (description)
  {
    if (*(description + 280))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_4_8();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v7, v8, v9, v10, v11, vars0, vars8);
    }

    else
    {
      v2 = OUTLINED_FUNCTION_12_51(description, @"mdta/com.apple.quicktime.detected-cat-head", @"com.apple.quicktime.detected-cat-head");
      if (v2)
      {
        *(description + 280) = bswap32(v2);
        v3 = OUTLINED_FUNCTION_12_51(v2, @"fiel/com.apple.quicktime.detected-cat-head.object-id", *MEMORY[0x1E6960298]);
        if (v3)
        {
          OUTLINED_FUNCTION_10_54(bswap32(v3));
          if (OUTLINED_FUNCTION_12_51(v4, @"fiel/com.apple.quicktime.detected-cat-head.bounds", *MEMORY[0x1E6960248]))
          {
            OUTLINED_FUNCTION_5_87();
            OUTLINED_FUNCTION_11_53(v5);
          }
        }
      }
    }
  }
}

- (void)_populateLocalIDsForCatBodiesWithFormatDescription:(uint64_t)description
{
  if (description)
  {
    if (*(description + 292))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_4_8();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v7, v8, v9, v10, v11, vars0, vars8);
    }

    else
    {
      v2 = OUTLINED_FUNCTION_12_51(description, *MEMORY[0x1E6960368], *MEMORY[0x1E69602C0]);
      if (v2)
      {
        *(description + 292) = bswap32(v2);
        v3 = OUTLINED_FUNCTION_12_51(v2, *MEMORY[0x1E6962910], *MEMORY[0x1E6960298]);
        if (v3)
        {
          OUTLINED_FUNCTION_10_54(bswap32(v3));
          if (OUTLINED_FUNCTION_12_51(v4, *MEMORY[0x1E6962918], *MEMORY[0x1E6960248]))
          {
            OUTLINED_FUNCTION_5_87();
            OUTLINED_FUNCTION_11_53(v5);
          }
        }
      }
    }
  }
}

- (void)_populateLocalIDsForDogHeadsWithFormatDescription:(uint64_t)description
{
  if (description)
  {
    if (*(description + 304))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_4_8();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v7, v8, v9, v10, v11, vars0, vars8);
    }

    else
    {
      v2 = OUTLINED_FUNCTION_12_51(description, @"mdta/com.apple.quicktime.detected-dog-head", @"com.apple.quicktime.detected-dog-head");
      if (v2)
      {
        *(description + 304) = bswap32(v2);
        v3 = OUTLINED_FUNCTION_12_51(v2, @"fiel/com.apple.quicktime.detected-dog-head.object-id", *MEMORY[0x1E6960298]);
        if (v3)
        {
          OUTLINED_FUNCTION_10_54(bswap32(v3));
          if (OUTLINED_FUNCTION_12_51(v4, @"fiel/com.apple.quicktime.detected-dog-head.bounds", *MEMORY[0x1E6960248]))
          {
            OUTLINED_FUNCTION_5_87();
            OUTLINED_FUNCTION_11_53(v5);
          }
        }
      }
    }
  }
}

- (void)_populateLocalIDsForDogBodiesWithFormatDescription:(uint64_t)description
{
  if (description)
  {
    if (*(description + 316))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_4_8();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v7, v8, v9, v10, v11, vars0, vars8);
    }

    else
    {
      v2 = OUTLINED_FUNCTION_12_51(description, *MEMORY[0x1E6960378], *MEMORY[0x1E69602C8]);
      if (v2)
      {
        *(description + 316) = bswap32(v2);
        v3 = OUTLINED_FUNCTION_12_51(v2, *MEMORY[0x1E6962920], *MEMORY[0x1E6960298]);
        if (v3)
        {
          OUTLINED_FUNCTION_10_54(bswap32(v3));
          if (OUTLINED_FUNCTION_12_51(v4, *MEMORY[0x1E6962928], *MEMORY[0x1E6960248]))
          {
            OUTLINED_FUNCTION_5_87();
            OUTLINED_FUNCTION_11_53(v5);
          }
        }
      }
    }
  }
}

- (void)_populateLocalIDsForSalientObjectsWithFormatDescription:(uint64_t)description
{
  if (description)
  {
    if (*(description + 328))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_4_8();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v7, v8, v9, v10, v11, vars0, vars8);
    }

    else
    {
      v2 = OUTLINED_FUNCTION_12_51(description, *MEMORY[0x1E6960398], *MEMORY[0x1E69602E0]);
      if (v2)
      {
        *(description + 328) = bswap32(v2);
        v3 = OUTLINED_FUNCTION_12_51(v2, *MEMORY[0x1E69629D0], *MEMORY[0x1E6960298]);
        if (v3)
        {
          OUTLINED_FUNCTION_10_54(bswap32(v3));
          if (OUTLINED_FUNCTION_12_51(v4, *MEMORY[0x1E69629C8], *MEMORY[0x1E6960248]))
          {
            OUTLINED_FUNCTION_5_87();
            OUTLINED_FUNCTION_11_53(v5);
          }
        }
      }
    }
  }
}

- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input
{
  *&v14 = [(BWFaceDetectionNode *)self _resetDetection].n128_u64[0];
  if (self->_metadataObjectOutputEnabled)
  {
    v6 = [(BWNodeOutput *)self->_metadataObjectOutput markEndOfLiveOutputForConfigurationID:d, v14];
  }

  if (self->_boxedMetadataOutputEnabled)
  {
    boxedMetadataOutputs = self->_boxedMetadataOutputs;
    v16 = OUTLINED_FUNCTION_32_16(v6, v7, v8, v9, v10, v11, v12, v13, v28);
    if (v16)
    {
      v17 = v16;
      v18 = MEMORY[0];
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (MEMORY[0] != v18)
          {
            objc_enumerationMutation(boxedMetadataOutputs);
          }

          v20 = [*(8 * i) markEndOfLiveOutputForConfigurationID:d];
        }

        v17 = OUTLINED_FUNCTION_32_16(v20, v21, v22, v23, v24, v25, v26, v27, v29);
      }

      while (v17);
    }
  }
}

- (void)_renderSampleBufferWithLock:(uint64_t)lock forInput:
{
  if (lock)
  {
    OUTLINED_FUNCTION_84();
    v3 = v2;
    v132 = 0;
    if (v2)
    {
      v4 = v1;
      if (BWSampleBufferIsMarkerBuffer(v2))
      {
        OUTLINED_FUNCTION_6_78();
        v5 = *(v4 + 184);
        v6 = OUTLINED_FUNCTION_30_16();
        if (v6)
        {
          v7 = v6;
          v8 = *v131;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              OUTLINED_FUNCTION_13_1();
              if (v10 != v8)
              {
                objc_enumerationMutation(v5);
              }

              [*(v130 + 8 * i) emitSampleBuffer:v3];
            }

            v7 = OUTLINED_FUNCTION_30_16();
          }

          while (v7);
        }

        [*(v4 + 176) emitSampleBuffer:v3];
        [*(v4 + 16) emitSampleBuffer:v3];
        v11 = CMGetAttachment(v3, @"FileWriterAction", 0);
        if (v11)
        {
          v12 = v11;
          if ((objc_msgSend_isEqualToString_(v11) & 1) == 0 && (objc_msgSend_isEqualToString_(v12) & 1) == 0)
          {
            isEqualToString = objc_msgSend_isEqualToString_(v12);
            v14 = (v4 + 384);
            v15 = MEMORY[0x1E6960C70];
            if (isEqualToString)
            {
              CMSampleBufferGetPresentationTimeStamp(&v120.duration, v3);
              *v14 = *&v120.duration.value;
              epoch = v120.duration.epoch;
            }

            else
            {
              *v14 = *MEMORY[0x1E6960C70];
              epoch = *(v15 + 2);
            }

            *(v4 + 400) = epoch;
            v80 = *v15;
            *(v4 + 408) = *v15;
            v81 = *(v15 + 2);
            *(v4 + 424) = v81;
            *(v4 + 432) = v80;
            *(v4 + 448) = v81;
            v98 = v80;
            *(v4 + 456) = v80;
            *(v4 + 472) = v81;
            v126 = 0u;
            v127 = 0u;
            v128 = 0u;
            v129 = 0u;
            allValues = [*(v4 + 344) allValues];
            v83 = [allValues countByEnumeratingWithState:&v126 objects:v125 count:16];
            if (v83)
            {
              v85 = v83;
              v86 = *v127;
              do
              {
                v87 = 0;
                do
                {
                  if (*v127 != v86)
                  {
                    objc_enumerationMutation(allValues);
                  }

                  v88 = *(*(&v126 + 1) + 8 * v87);
                  if (v88)
                  {
                    *(v88 + 8) = v98;
                    *(v88 + 24) = v81;
                    *(v88 + 32) = v98;
                    *(v88 + 48) = v81;
                    *(v88 + 56) = v98;
                    *(v88 + 72) = v81;
                    *(v88 + 80) = 0;
                  }

                  ++v87;
                }

                while (v85 != v87);
                v83 = OUTLINED_FUNCTION_1_18(v83, v84, &v126, v125);
                v85 = v83;
              }

              while (v83);
            }
          }
        }

        goto LABEL_69;
      }

      v17 = CMGetAttachment(v3, *off_1E798A3C8, 0);
      if (v17)
      {
        v18 = v17;
        v19 = [v17 objectForKeyedSubscript:*off_1E798B220];
        v20 = [v18 objectForKeyedSubscript:*off_1E798B218];
        v122 = 0.0;
        v123 = 0;
        __asm { FMOV            V0.2D, #1.0 }

        v124 = _Q0;
        if (!(v20 | v19) || (FigCFDictionaryGetCGRectIfPresent(), OUTLINED_FUNCTION_33(), !_ZF) || (memset(&v120, 0, sizeof(v120)), (SampleTimingInfoArray = CMSampleBufferGetSampleTimingInfoArray(v3, 1, &v120, 0)) == 0) && (OUTLINED_FUNCTION_15_40(), (SampleTimingInfoArray = CMSampleBufferCreate(v26, v27, v28, v29, v30, 0, 0, 1, &v120, 0, 0, &v132)) == 0))
        {
          v32 = *(&v124 + 1);
          v31 = *&v124;
          _ZF = *&v124 == 1.0 && *(&v124 + 1) == 1.0;
          if (_ZF)
          {
            v133.origin.x = 0.0;
            v133.origin.y = 0.0;
            v133.size.width = 1.0;
            v133.size.height = 1.0;
            v34 = !CGRectEqualToRect(*(v4 + 192), v133);
          }

          else
          {
            v34 = 1;
          }

          LODWORD(v97) = v34;
          v95 = v18;
          if ([v20 count])
          {
            v43 = [objc_msgSend(objc_msgSend(v20 "firstObject")];
            if (v43 > *(v4 + 496))
            {
              *(v4 + 496) = v43;
LABEL_34:
              if (LODWORD(v97))
              {
                v44 = OUTLINED_FUNCTION_18_36(v35, v36, v37, v38, v39, v40, v41, v42, *&sampleTimingArray, v92, *&sampleSizeArray, v94, *&v18, v96, v97, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, *&v116, *(&v116 + 1), *&v117, *(&v117 + 1), *&v118, *(&v118 + 1), *&v119, *(&v119 + 1), *&v120.duration.value, *&v120.duration.timescale, *&v120.duration.epoch, *&v120.presentationTimeStamp.value, *&v120.presentationTimeStamp.timescale, *&v120.presentationTimeStamp.epoch, *&v120.decodeTimeStamp.value, *&v120.decodeTimeStamp.timescale, *&v120.decodeTimeStamp.epoch, v121, v122);
                v52 = BWCreateCorrectedFacesArray(v20, v44, v45, v46, v47, v48, v49, v50, v51);
              }

              else
              {
                v52 = v20;
              }

              v54 = v52;
              OUTLINED_FUNCTION_33();
              if (_ZF && [*(v4 + 232) containsObject:*off_1E798ACB8])
              {
                v53 = [(BWFaceDetectionNode *)v4 _addFacesArray:v54 toSampleBuffer:v132];
              }

              else
              {
                v53 = 0;
              }

              OUTLINED_FUNCTION_33();
              if (_ZF && !v19)
              {
                OUTLINED_FUNCTION_3_19();
                [BWFaceDetectionNode _renderSampleBufferForBoxedMetadataOutput:withFaceArray:];
              }

              if (!v19)
              {
                goto LABEL_65;
              }

              goto LABEL_48;
            }
          }

          else
          {
            if (*(v4 + 240))
            {
              goto LABEL_34;
            }

            OUTLINED_FUNCTION_33();
            if (_ZF)
            {
              goto LABEL_34;
            }
          }

          v53 = 0;
          if (!v19)
          {
            goto LABEL_65;
          }

LABEL_48:
          v118 = 0u;
          v119 = 0u;
          v116 = 0u;
          v117 = 0u;
          allValues2 = [v19 allValues];
          v56 = [allValues2 countByEnumeratingWithState:&v116 objects:&v100 count:16];
          if (v56)
          {
            v57 = v56;
            v58 = *v117;
            v59 = *off_1E798B780;
            HIDWORD(v96) = v53;
LABEL_50:
            v60 = 0;
            while (1)
            {
              if (*v117 != v58)
              {
                objc_enumerationMutation(allValues2);
              }

              v61 = [objc_msgSend(*(*(&v116 + 1) + 8 * v60) objectForKeyedSubscript:{v59), "longLongValue"}];
              if (v61 > *(v4 + 504))
              {
                break;
              }

              if (v57 == ++v60)
              {
                v57 = OUTLINED_FUNCTION_21_10(v61, v62, &v116, &v100);
                v53 = HIDWORD(v96);
                if (v57)
                {
                  goto LABEL_50;
                }

                goto LABEL_65;
              }
            }

            *(v4 + 504) = v61;
            if ((LOBYTE(v97) & 1) != 0 || (OUTLINED_FUNCTION_33(), _ZF))
            {
              v79 = CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E480], v19, 1uLL);
              if (LODWORD(v97))
              {
                v71 = OUTLINED_FUNCTION_18_36(v63, v64, v65, v66, v67, v68, v69, v70, *&sampleTimingArray, v92, *&sampleSizeArray, v94, *&v95, v96, v97, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, *&v116, *(&v116 + 1), *&v117, *(&v117 + 1), *&v118, *(&v118 + 1), *&v119, *(&v119 + 1), *&v120.duration.value, *&v120.duration.timescale, *&v120.duration.epoch, *&v120.presentationTimeStamp.value, *&v120.presentationTimeStamp.timescale, *&v120.presentationTimeStamp.epoch, *&v120.decodeTimeStamp.value, *&v120.decodeTimeStamp.timescale, *&v120.decodeTimeStamp.epoch, v121, v122);
                BWCorrectRectanglesInDetectedObjectsInfo(v79, v71, v72, v73, v74, v75, v76, v77, v78);
              }
            }

            else
            {
              v79 = 0;
            }

            OUTLINED_FUNCTION_33();
            if (_ZF)
            {
              OUTLINED_FUNCTION_3_19();
              [BWFaceDetectionNode _renderSampleBufferForBoxedMetadataOutput:withDetectedObjectsInfo:];
            }

            OUTLINED_FUNCTION_33();
            v53 = HIDWORD(v96);
            if (!_ZF)
            {
              goto LABEL_65;
            }

            BWFilterDetectedObjectsInfoUsingSet(v79, *(v4 + 232));
            v89 = [objc_msgSend(v95 objectForKeyedSubscript:{*off_1E798B228), "intValue"}];
            if ((HIDWORD(v96) | [(BWFaceDetectionNode *)v4 _addDetectedObjectsInfo:v79 detectedObjectsSource:v89 toSampleBuffer:v132]))
            {
              goto LABEL_66;
            }

            goto LABEL_67;
          }

LABEL_65:
          if (v53)
          {
LABEL_66:
            [*(v4 + 16) emitSampleBuffer:v132];
          }

LABEL_67:
          if (v132)
          {
            CFRelease(v132);
          }

          goto LABEL_69;
        }

        v90 = SampleTimingInfoArray;
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_8();
        LODWORD(sampleTimingArray) = v90;
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", sampleTimingArray);
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      }
    }

LABEL_69:
    OUTLINED_FUNCTION_81();
  }
}

- (uint64_t)_addFacesArray:(const void *)array toSampleBuffer:
{
  if (!self)
  {
    return 0;
  }

  if (![a2 count] && !*(self + 240))
  {
    OUTLINED_FUNCTION_33();
    if (!v6)
    {
      return 0;
    }
  }

  v7 = 1;
  CMSetAttachment(array, *off_1E798A378, a2, 1u);
  CMSetAttachment(array, *off_1E798A380, [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(a2, "count")}], 1u);
  *(self + 240) = [a2 count];
  return v7;
}

- (void)_renderSampleBufferForBoxedMetadataOutput:withFaceArray:
{
  OUTLINED_FUNCTION_84();
  v109 = v2;
  sbuf = v1;
  obj = v3;
  if (!v0)
  {
    goto LABEL_54;
  }

  v4 = v0;
  OUTLINED_FUNCTION_6_78();
  v6 = *(v5 + 184);
  v8 = OUTLINED_FUNCTION_1_18(v5, v7, v152, v151);
  if (!v8)
  {
    goto LABEL_54;
  }

  v9 = v8;
  v10 = *v152[2];
  v11 = *MEMORY[0x1E6960388];
  while (2)
  {
    for (i = 0; i != v9; ++i)
    {
      OUTLINED_FUNCTION_13_1();
      if (v13 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v14 = *(v152[1] + 8 * i);
      v15 = -[__CFArray containsObject:](CMMetadataFormatDescriptionGetIdentifiers([objc_msgSend(v14 "format")]), "containsObject:", v11);
      if (v15)
      {
        if (!v14)
        {
          goto LABEL_54;
        }

        v17 = [objc_msgSend(v14 "format")];
        v18 = [obj count];
        v19 = v18;
        v20 = &OBJC_IVAR___BWFigVideoCaptureDevice__deviceMotionActivityDetector;
        if (!v18 && !*(v4 + 480) && ((*(v4 + 396) & 1) == 0 || (*(v4 + 468) & 1) != 0))
        {
          goto LABEL_54;
        }

        cf = 0;
        v149 = 0;
        x = *MEMORY[0x1E6960C70];
        y_low = *(MEMORY[0x1E6960C70] + 8);
        v106 = *(MEMORY[0x1E6960C70] + 16);
        if (v18 < 1)
        {
          EmptyMetadataSample = [(BWFaceDetectionNode *)v4 _getEmptyMetadataSampleData];
          if (!EmptyMetadataSample)
          {
            v69 = 0;
            cf = 0;
            goto LABEL_50;
          }

          v83 = CFRetain(EmptyMetadataSample);
          cf = v83;
          if (!v83)
          {
            goto LABEL_75;
          }

          v75 = v83;
          if (*(v4 + 444))
          {
            time = *(v4 + 408);
            OUTLINED_FUNCTION_8_60(v4 + 432);
            CMTimeAdd(&v137, &time, &rhs);
            x = v137.origin.x;
            y_high = HIDWORD(v137.origin.y);
            y_low = LODWORD(v137.origin.y);
            width = v137.size.width;
          }

          else if (*(v4 + 396) & 1) == 0 || (y_high = *(v4 + 396), (*(v4 + 420)) || (*(v4 + 468))
          {
            memset(&v137, 0, 24);
            CMTimeMake(&v137, *(v4 + 416) / 240, *(v4 + 416));
            if (!*&v137.origin.x)
            {
              *&v137.origin.x = 1;
            }

            OUTLINED_FUNCTION_8_60(v4 + 408);
            *&v133.value = v137.origin;
            v133.epoch = *&v137.size.width;
            CMTimeAdd(&time, &rhs, &v133);
            x = *&time.value;
            y_high = time.flags;
            y_low = time.timescale;
            width = *&time.epoch;
          }

          else
          {
            x = *(v4 + 384);
            y_low = *(v4 + 392);
            width = *(v4 + 400);
          }

          *(v4 + 424) = v106;
          v84 = *MEMORY[0x1E6960C70];
          *(v4 + 408) = *MEMORY[0x1E6960C70];
          *(v4 + 448) = v106;
          *(v4 + 432) = v84;
          OUTLINED_FUNCTION_14_42(456);
          goto LABEL_48;
        }

        v103 = v18;
        v21 = *(MEMORY[0x1E6960C70] + 12);
        v22 = 100 * v18;
        v23 = malloc_type_malloc(100 * v18, 0x9610EBD9uLL);
        v143 = 0u;
        v144 = 0u;
        v145 = 0u;
        v146 = 0u;
        v31 = OUTLINED_FUNCTION_28_18(v23, v24, v25, v26, v27, v28, v29, v30, sampleTimingArray, v91, sampleSizeArray, v95, v97, v99, v17, v103, v106, v109, sbuf, v113, v115, v117, v119, v121, v123, v23, obj, v128, DataLength, __dst.duration.value, *&__dst.duration.timescale, __dst.duration.epoch, __dst.presentationTimeStamp.value, *&__dst.presentationTimeStamp.timescale, __dst.presentationTimeStamp.epoch, __dst.decodeTimeStamp.value, *&__dst.decodeTimeStamp.timescale, __dst.decodeTimeStamp.epoch, v133.value, *&v133.timescale, v133.epoch, v134, rhs.value, *&rhs.timescale, rhs.epoch, v136, *&v137.origin.x, *&v137.origin.y, *&v137.size.width, *&v137.size.height, v138, v139.value, *&v139.timescale, v139.epoch, time.value, *&time.timescale, time.epoch, v141, v142);
        v129 = v4;
        if (v31)
        {
          v36 = v31;
          v100 = 100 * v19;
          v37 = 0;
          v38 = 0;
          v114 = *off_1E798B780;
          v122 = *off_1E798B2B8;
          v120 = *off_1E798B5C0;
          v118 = *off_1E798B160;
          v116 = *off_1E798B168;
          v124 = *v144;
          v39 = *v144;
          width = *&v107;
          while (1)
          {
            if (v39 != v124)
            {
              objc_enumerationMutation(obja);
            }

            v41 = *(*(&v143 + 1) + 8 * v38);
            if ((v21 & 1) == 0)
            {
              v42 = [*(*(&v143 + 1) + 8 * v38) objectForKeyedSubscript:v114];
              if (v42)
              {
                [v42 longLongValue];
                v43 = FigHostTimeToNanoseconds();
                CMTimeMake(&time, v43, 1000000000);
                CMSampleBufferGetPresentationTimeStamp(&v139, sbufa);
                CMTimeConvertScale(&v137, &time, v139.timescale, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
                x = v137.origin.x;
                v21 = HIDWORD(v137.origin.y);
                y_low = LODWORD(v137.origin.y);
                width = v137.size.width;
              }
            }

            v44 = v21;
            v45 = &v125[v37];
            v46 = [v41 objectForKeyedSubscript:v122];
            if (v46)
            {
              *(v45 + 6) = 201326592;
              *(v45 + 7) = *(v4 + 356);
              *(v45 + 8) = bswap32([v46 unsignedIntValue]);
              v47 = 36;
            }

            else
            {
              v47 = 24;
            }

            v48 = width;
            v49 = [v41 objectForKeyedSubscript:v120];
            if (v49)
            {
              v50 = &v45[v47];
              *v50 = 671088640;
              *(v50 + 1) = v129[90];
              memset(&v137, 0, sizeof(v137));
              if (!CGRectMakeWithDictionaryRepresentation(v49, &v137))
              {
                fig_log_get_emitter();
                OUTLINED_FUNCTION_0();
                FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", sampleTimingArraya, v92, sampleSizeArraya, v96, v98, v100, v101, v104);
                v69 = v125;
                goto LABEL_50;
              }

              v51 = v137.origin.x;
              v52.f64[0] = v137.origin.y;
              v52.f64[1] = v137.origin.x + v137.size.width;
              *(v50 + 12) = vrev32q_s8(vcvt_hight_f32_f64(vcvt_f32_f64(v52), v52));
              v53.f64[0] = v52.f64[0] + v137.size.height;
              v53.f64[1] = v51;
              v54 = vrev32_s8(vcvt_f32_f64(v53));
              *(v50 + 2) = v54.i32[1];
              *(v50 + 28) = v54;
              *(v50 + 9) = v54.i32[0];
              v47 += 40;
            }

            v55 = [v41 objectForKeyedSubscript:v118];
            if (v55)
            {
              v56 = &v45[v47];
              *v56 = 201326592;
              *(v56 + 1) = v129[91];
              [v55 floatValue];
              OUTLINED_FUNCTION_26_24();
              *(v56 + 2) = v57;
              v47 += 12;
            }

            width = v48;
            v58 = [v41 objectForKeyedSubscript:v116];
            if (v58)
            {
              v66 = &v45[v47];
              *v66 = 201326592;
              v4 = v129;
              *(v66 + 1) = v129[92];
              [v58 floatValue];
              OUTLINED_FUNCTION_26_24();
              *(v66 + 2) = v67;
              v47 += 12;
            }

            else
            {
              v4 = v129;
            }

            *v45 = bswap32(v47);
            v37 += v47;
            *(v45 + 1) = *(v4 + 352);
            *(v45 + 2) = bswap32(v47 - 8);
            *(v45 + 3) = 1667592803;
            *(v45 + 4) = bswap32(v47 - 16);
            *(v45 + 5) = 1937008995;
            ++v38;
            v21 = v44;
            if (v38 >= v36)
            {
              v68 = OUTLINED_FUNCTION_28_18(v58, v59, v60, v61, v62, v63, v64, v65, sampleTimingArraya, v92, sampleSizeArraya, v96, v98, v100, v101, v104, v107, v110, sbufa, v114, v116, v118, v120, v122, v124, v125, obja, v129, DataLength, __dst.duration.value, *&__dst.duration.timescale, __dst.duration.epoch, __dst.presentationTimeStamp.value, *&__dst.presentationTimeStamp.timescale, __dst.presentationTimeStamp.epoch, __dst.decodeTimeStamp.value, *&__dst.decodeTimeStamp.timescale, __dst.decodeTimeStamp.epoch, v133.value, *&v133.timescale, v133.epoch, v134, rhs.value, *&rhs.timescale, rhs.epoch, v136, *&v137.origin.x, *&v137.origin.y, *&v137.size.width, *&v137.size.height, v138, v139.value, *&v139.timescale, v139.epoch, time.value, *&time.timescale, time.epoch, v141, v142);
              if (!v68)
              {
                v22 = v100;
                goto LABEL_39;
              }

              v36 = v68;
              v38 = 0;
            }

            v39 = *v144;
          }
        }

        width = *&v107;
LABEL_39:
        v69 = v125;
        v70 = OUTLINED_FUNCTION_27_21(*MEMORY[0x1E695E480], v125, v22, *MEMORY[0x1E695E488], v32, v33, v34, v35, &cf);
        if (v70)
        {
          v86 = v70;
          fig_log_get_emitter();
          OUTLINED_FUNCTION_4_95();
          LODWORD(sampleTimingArrayb) = v86;
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", sampleTimingArrayb, v92, sampleSizeArraya, v96, v98, v100, v101, v104);
LABEL_50:
          free(v69);
          if (cf)
          {
            CFRelease(cf);
          }

          if (v149)
          {
            CFRelease(v149);
          }

          goto LABEL_54;
        }

        if (v21)
        {
          if (*(v4 + 420))
          {
            OUTLINED_FUNCTION_22_26();
            HIDWORD(v137.origin.y) = v21;
            v74 = OUTLINED_FUNCTION_13_43(v73, sampleTimingArrayb, v92, sampleSizeArraya, v96, v98, v100, v101, v104, v107, v110, sbufa, v114, v116, v118, v120, v122, v124, v125, obja, v129, DataLength, __dst.duration.value, *&__dst.duration.timescale, __dst.duration.epoch, __dst.presentationTimeStamp.value, *&__dst.presentationTimeStamp.timescale, __dst.presentationTimeStamp.epoch, __dst.decodeTimeStamp.value, *&__dst.decodeTimeStamp.timescale, __dst.decodeTimeStamp.epoch, v133.value, *&v133.timescale, v133.epoch, v134, rhs.value, *&rhs.timescale, rhs.epoch, v136, *&v137.origin.x, *&v137.origin.y, *&v137.size.width, *&v137.size.height, v138, v139.value, *&v139.timescale, v139.epoch, *&time.value, time.epoch);
            v17 = v102;
            LODWORD(v19) = v105;
            y_high = v21;
            v20 = &OBJC_IVAR___BWFigVideoCaptureDevice__deviceMotionActivityDetector;
            if (v74 > 0)
            {
              *&time.value = x;
              time.timescale = y_low;
              time.flags = y_high;
              *&time.epoch = width;
              OUTLINED_FUNCTION_8_60(v4 + 408);
              CMTimeSubtract(&v137, &time, &rhs);
              *(v4 + 432) = v137.origin;
              *(v4 + 448) = v137.size.width;
              goto LABEL_47;
            }
          }

          else
          {
            v17 = v101;
            LODWORD(v19) = v104;
            y_high = v21;
            v20 = &OBJC_IVAR___BWFigVideoCaptureDevice__deviceMotionActivityDetector;
            if ((*(v4 + 468) & 1) == 0)
            {
LABEL_47:
              OUTLINED_FUNCTION_14_42(408);
              v75 = cf;
LABEL_48:
              memcpy(&__dst, MEMORY[0x1E6960CF0], sizeof(__dst));
              *&__dst.presentationTimeStamp.value = x;
              __dst.presentationTimeStamp.timescale = y_low;
              __dst.presentationTimeStamp.flags = y_high;
              *&__dst.presentationTimeStamp.epoch = width;
              DataLength = CMBlockBufferGetDataLength(v75);
              OUTLINED_FUNCTION_15_40();
              v81 = CMSampleBufferCreate(v76, v77, v78, v79, v80, v17, 1, 1, &__dst, 1, &DataLength, &v149);
              if (!v81)
              {
                [v14 emitSampleBuffer:v149];
                v69 = 0;
                *(v4 + v20[691]) = v19;
                goto LABEL_50;
              }

              v85 = v81;
              fig_log_get_emitter();
              OUTLINED_FUNCTION_4_95();
              LODWORD(sampleTimingArrayc) = v85;
              FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", sampleTimingArrayc);
              goto LABEL_75;
            }

            OUTLINED_FUNCTION_22_26();
            HIDWORD(v137.origin.y) = y_high;
            if (OUTLINED_FUNCTION_13_43(v72, sampleTimingArrayb, v92, sampleSizeArraya, v96, v98, v100, v101, v104, v107, v110, sbufa, v114, v116, v118, v120, v122, v124, v125, obja, v129, DataLength, __dst.duration.value, *&__dst.duration.timescale, __dst.duration.epoch, __dst.presentationTimeStamp.value, *&__dst.presentationTimeStamp.timescale, __dst.presentationTimeStamp.epoch, __dst.decodeTimeStamp.value, *&__dst.decodeTimeStamp.timescale, __dst.decodeTimeStamp.epoch, v133.value, *&v133.timescale, v133.epoch, v134, rhs.value, *&rhs.timescale, rhs.epoch, v136, *&v137.origin.x, *&v137.origin.y, *&v137.size.width, *&v137.size.height, v138, v139.value, *&v139.timescale, v139.epoch, *&time.value, time.epoch) > 0)
            {
              *(v130 + 456) = *MEMORY[0x1E6960C70];
              *(v130 + 472) = v108;
              v4 = v130;
              goto LABEL_47;
            }
          }
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_0();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", sampleTimingArrayb);
LABEL_75:
        v69 = 0;
        goto LABEL_50;
      }
    }

    v9 = OUTLINED_FUNCTION_1_18(v15, v16, v152, v151);
    if (v9)
    {
      continue;
    }

    break;
  }

LABEL_54:
  OUTLINED_FUNCTION_81();
}

- (void)_renderSampleBufferForBoxedMetadataOutput:withDetectedObjectsInfo:
{
  OUTLINED_FUNCTION_84();
  v28 = v1;
  if (v1)
  {
    v2 = v0;
    v3 = OUTLINED_FUNCTION_6_78();
    obj = *(v28 + 184);
    v29 = [obj countByEnumeratingWithState:v40 objects:v39 count:{16, v3}];
    if (v29)
    {
      OUTLINED_FUNCTION_13_1();
      v27 = v4;
      v31 = *MEMORY[0x1E6960398];
      v32 = *MEMORY[0x1E6960378];
      v33 = *MEMORY[0x1E6960368];
      v5 = *MEMORY[0x1E6960390];
      v6 = *MEMORY[0x1E6960388];
      do
      {
        v7 = 0;
        do
        {
          OUTLINED_FUNCTION_13_1();
          if (v8 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v30 = v7;
          Identifiers = CMMetadataFormatDescriptionGetIdentifiers([objc_msgSend(*(v40[1] + 8 * v7) "format")]);
          dictionary = [MEMORY[0x1E695DF90] dictionary];
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v12 = OUTLINED_FUNCTION_1_18(dictionary, v11, &v35, v34);
          if (v12)
          {
            v13 = v12;
            v14 = *v36;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v36 != v14)
                {
                  objc_enumerationMutation(v2);
                }

                v16 = *(*(&v35 + 1) + 8 * i);
                isEqualToString = objc_msgSend_isEqualToString_(v16);
                v18 = v6;
                if ((isEqualToString & 1) == 0)
                {
                  v19 = objc_msgSend_isEqualToString_(v16);
                  v18 = v5;
                  if ((v19 & 1) == 0)
                  {
                    v20 = objc_msgSend_isEqualToString_(v16);
                    v18 = @"mdta/com.apple.quicktime.detected-cat-head";
                    if ((v20 & 1) == 0)
                    {
                      v21 = objc_msgSend_isEqualToString_(v16);
                      v18 = v33;
                      if ((v21 & 1) == 0)
                      {
                        v22 = objc_msgSend_isEqualToString_(v16);
                        v18 = @"mdta/com.apple.quicktime.detected-dog-head";
                        if ((v22 & 1) == 0)
                        {
                          v23 = objc_msgSend_isEqualToString_(v16);
                          v18 = v32;
                          if ((v23 & 1) == 0)
                          {
                            if (objc_msgSend_isEqualToString_(v16))
                            {
                              v18 = v31;
                            }

                            else
                            {
                              v18 = 0;
                            }
                          }
                        }
                      }
                    }
                  }
                }

                v24 = [(__CFArray *)Identifiers containsObject:v18];
                if (v24)
                {
                  v24 = [dictionary setObject:objc_msgSend(v2 forKeyedSubscript:{"objectForKeyedSubscript:", v16), v16}];
                }
              }

              v13 = OUTLINED_FUNCTION_1_18(v24, v25, &v35, v34);
            }

            while (v13);
          }

          [BWFaceDetectionNode _renderSampleBuffer:forBoxedMetadataOutput:withDetectedObjectsInfo:];
          v7 = v30 + 1;
        }

        while (v30 + 1 != v29);
        v29 = [obj countByEnumeratingWithState:v40 objects:v39 count:16];
      }

      while (v29);
    }
  }

  OUTLINED_FUNCTION_81();
}

- (uint64_t)_addDetectedObjectsInfo:(uint64_t)info detectedObjectsSource:(const void *)source toSampleBuffer:
{
  if (!self)
  {
    return 0;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [a2 countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = 0;
  v11 = 0;
  v12 = *v20;
  v13 = *off_1E798ACE8;
  do
  {
    v14 = 0;
    do
    {
      if (*v20 != v12)
      {
        objc_enumerationMutation(a2);
      }

      v15 = [objc_msgSend(a2 objectForKeyedSubscript:{*(*(&v19 + 1) + 8 * v14)), "objectForKeyedSubscript:", v13}];
      if (v15)
      {
        v11 += [v15 count];
        v10 = 1;
      }

      ++v14;
    }

    while (v9 != v14);
    v9 = [a2 countByEnumeratingWithState:&v19 objects:v18 count:16];
  }

  while (v9);
  if (v11 > 0)
  {
    goto LABEL_12;
  }

  if (*(self + 244))
  {
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else if ((*(self + 230) & v10 & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  v16 = 1;
  CMSetAttachment(source, *off_1E798A330, a2, 1u);
  *(self + 244) = v11;
  CMSetAttachment(source, *off_1E798A338, [MEMORY[0x1E696AD98] numberWithInt:info], 1u);
  return v16;
}

- (void)_renderSampleBuffer:forBoxedMetadataOutput:withDetectedObjectsInfo:
{
  OUTLINED_FUNCTION_84();
  sbuf = v3;
  if (!v0)
  {
    goto LABEL_68;
  }

  v4 = v2;
  v5 = v0;
  v71 = v1;
  formatDescription = [objc_msgSend(v1 "format")];
  v82 = v5;
  v73 = [*(v5 + 344) objectForKeyedSubscript:v71];
  v108 = 0;
  v109 = 0;
  value = *MEMORY[0x1E6960C70];
  timescale = *(MEMORY[0x1E6960C70] + 8);
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v7 = OUTLINED_FUNCTION_21_10(v73, v6, &v102, v101);
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    v11 = *v103;
    v12 = *off_1E798ACE8;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v103 != v11)
        {
          objc_enumerationMutation(v4);
        }

        v14 = *(*(&v102 + 1) + 8 * i);
        isEqualToString = objc_msgSend_isEqualToString_(v14);
        v16 = [objc_msgSend(objc_msgSend(v4 objectForKeyedSubscript:{v14), "objectForKeyedSubscript:", v12), "count"}];
        if (isEqualToString)
        {
          v18 = 0;
        }

        else
        {
          v18 = v16;
        }

        v9 += v18;
        if (isEqualToString)
        {
          v10 = v16;
        }
      }

      v8 = OUTLINED_FUNCTION_21_10(v16, v17, &v102, v101);
    }

    while (v8);
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v19 = MEMORY[0x1E6960C70];
  v20 = *(MEMORY[0x1E6960C70] + 16);
  if (v10 + v9)
  {
    v70 = 76 * v9 + 100 * v10;
    v30 = malloc_type_malloc(v70, 0x66141102uLL);
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v80 = OUTLINED_FUNCTION_21_10(v30, v31, &v97, v96);
    if (v80)
    {
      v32 = 0;
      v33 = 0;
      flags = *(v19 + 12);
      v79 = *v98;
      v78 = *off_1E798B780;
      v77 = *off_1E798ACE8;
      v69 = v20;
      epoch = v20;
      while (2)
      {
        v34 = 0;
        do
        {
          if (*v98 != v79)
          {
            objc_enumerationMutation(v4);
          }

          v35 = *(*(&v97 + 1) + 8 * v34);
          v36 = [objc_msgSend(v4 objectForKeyedSubscript:{v35), "objectForKeyedSubscript:", v78}];
          if (v36)
          {
            [v36 longLongValue];
            v37 = FigHostTimeToNanoseconds();
            CMTimeMake(&time, v37, 1000000000);
            CMSampleBufferGetPresentationTimeStamp(&v93, sbuf);
            CMTimeConvertScale(&time2, &time, v93.timescale, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
            value = time2.value;
            flags = time2.flags;
            timescale = time2.timescale;
            epoch = time2.epoch;
          }

          v38 = objc_msgSend_isEqualToString_(v35);
          v39 = [(BWFaceDetectionNode *)v82 localIDsForKey:v35];
          v81 = v34;
          if (*v39)
          {
            v41 = v39;
            v42 = [objc_msgSend(v4 objectForKeyedSubscript:{v35), "objectForKeyedSubscript:", v77}];
            v89 = 0u;
            v90 = 0u;
            v91 = 0u;
            v92 = 0u;
            v39 = [v42 countByEnumeratingWithState:&v89 objects:v88 count:16];
            if (v39)
            {
              v43 = v39;
              v44 = *v90;
LABEL_39:
              v45 = 0;
              v32 += v43;
              while (1)
              {
                if (*v90 != v44)
                {
                  objc_enumerationMutation(v42);
                }

                v46 = [(BWFaceDetectionNode *)v82 append:&v30[v33] toBoxedData:v41 localIDs:v38 isFace:?];
                if (!v46)
                {
                  goto LABEL_55;
                }

                v33 += v46;
                if (v43 == ++v45)
                {
                  v39 = [v42 countByEnumeratingWithState:&v89 objects:v88 count:16];
                  v43 = v39;
                  if (v39)
                  {
                    goto LABEL_39;
                  }

                  break;
                }
              }
            }
          }

          v34 = v81 + 1;
        }

        while (v81 + 1 != v80);
        v80 = OUTLINED_FUNCTION_21_10(v39, v40, &v97, v96);
        if (v80)
        {
          continue;
        }

        break;
      }

      if (v33)
      {
        v51 = OUTLINED_FUNCTION_27_21(*MEMORY[0x1E695E480], v30, v70, *MEMORY[0x1E695E488], v47, v48, v49, v50, &v109);
        if (v51)
        {
          v66 = v51;
          fig_log_get_emitter();
          OUTLINED_FUNCTION_3_42();
          LODWORD(sampleTimingArray) = v66;
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", sampleTimingArray);
          goto LABEL_64;
        }

        v21 = v73;
        v27 = flags;
        if ((flags & 1) == 0)
        {
          goto LABEL_82;
        }

        v28 = epoch;
        if (v73)
        {
          if ((*(v73 + 20) & 1) == 0)
          {
            if ((*(v73 + 68) & 1) == 0)
            {
              goto LABEL_59;
            }

            time2 = *(v73 + 56);
            OUTLINED_FUNCTION_7_78();
            if (CMTimeCompare(&time, &time2) > 0)
            {
              *(v73 + 56) = *MEMORY[0x1E6960C70];
              *(v73 + 72) = v69;
              goto LABEL_59;
            }

LABEL_82:
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0();
            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", sampleTimingArray);
LABEL_83:
            v30 = 0;
            goto LABEL_64;
          }

          v52 = *(v73 + 8);
          time2.epoch = *(v73 + 24);
          *&time2.value = v52;
          OUTLINED_FUNCTION_7_78();
          if (CMTimeCompare(&time, &time2) <= 0)
          {
            goto LABEL_82;
          }

          v53 = *(v73 + 8);
          time2.epoch = *(v73 + 24);
          *&time2.value = v53;
          OUTLINED_FUNCTION_7_78();
          CMTimeSubtract(&v87, &time, &time2);
          *(v73 + 32) = v87;
LABEL_59:
          *(v73 + 8) = value;
          *(v73 + 16) = timescale;
          *(v73 + 20) = flags;
          *(v73 + 24) = epoch;
        }

        v25 = v109;
        goto LABEL_61;
      }
    }

LABEL_55:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    goto LABEL_64;
  }

  v21 = v73;
  if (v73)
  {
    v22 = v5;
    if (!*(v73 + 80) && ((*(v5 + 396) & 1) == 0 || (*(v73 + 68) & 1) != 0))
    {
      goto LABEL_68;
    }
  }

  else
  {
    v22 = v5;
    if ((*(v5 + 396) & 1) == 0)
    {
      goto LABEL_68;
    }
  }

  EmptyMetadataSample = [(BWFaceDetectionNode *)v22 _getEmptyMetadataSampleData];
  if (!EmptyMetadataSample)
  {
    v30 = 0;
    v109 = 0;
    goto LABEL_64;
  }

  v24 = CFRetain(EmptyMetadataSample);
  v109 = v24;
  if (!v24)
  {
    goto LABEL_83;
  }

  v25 = v24;
  if (v73)
  {
    if (*(v73 + 44))
    {
      v60 = *(v73 + 8);
      time.epoch = *(v73 + 24);
      *&time.value = v60;
      rhs = *(v73 + 32);
      CMTimeAdd(&time2, &time, &rhs);
      value = time2.value;
      v27 = time2.flags;
      timescale = time2.timescale;
      v28 = time2.epoch;
      v29 = MEMORY[0x1E6960C70];
      *&time2.value = *MEMORY[0x1E6960C70];
      time2.epoch = v20;
LABEL_78:
      *(v21 + 8) = time2;
      *(v21 + 32) = *v29;
      v64 = value;
      *(v21 + 48) = v20;
      *(v21 + 56) = v64;
      *(v21 + 64) = timescale;
      *(v21 + 68) = v27;
      *(v21 + 72) = v28;
      goto LABEL_79;
    }

    v26 = v22 + 384;
    v27 = *(v22 + 396);
    if ((v27 & 1) != 0 && (*(v73 + 20) & 1) == 0 && (*(v73 + 68) & 1) == 0)
    {
      goto LABEL_28;
    }

    memset(&time2, 0, sizeof(time2));
    v61 = *(v73 + 16);
    v62 = v61 / 240;
  }

  else
  {
    v26 = v22 + 384;
    if (*(v22 + 396))
    {
      v27 = *(v22 + 396);
      v21 = v73;
LABEL_28:
      value = *v26;
      timescale = *(v26 + 8);
      v28 = *(v26 + 16);
      v29 = MEMORY[0x1E6960C70];
      goto LABEL_77;
    }

    v62 = 0;
    v61 = 0;
    memset(&time2, 0, sizeof(time2));
    v21 = v73;
  }

  CMTimeMake(&time2, v62, v61);
  v29 = MEMORY[0x1E6960C70];
  if (!time2.value)
  {
    time2.value = 1;
  }

  if (v21)
  {
    v63 = *(v21 + 8);
    rhs.epoch = *(v21 + 24);
    *&rhs.value = v63;
  }

  else
  {
    memset(&rhs, 0, sizeof(rhs));
  }

  v85 = time2;
  CMTimeAdd(&time, &rhs, &v85);
  value = time.value;
  v27 = time.flags;
  timescale = time.timescale;
  v28 = time.epoch;
LABEL_77:
  *&time2.value = *v29;
  time2.epoch = v20;
  if (v21)
  {
    goto LABEL_78;
  }

LABEL_79:
  v32 = 0;
LABEL_61:
  memcpy(&__dst, MEMORY[0x1E6960CF0], sizeof(__dst));
  __dst.presentationTimeStamp.value = value;
  __dst.presentationTimeStamp.timescale = timescale;
  __dst.presentationTimeStamp.flags = v27;
  __dst.presentationTimeStamp.epoch = v28;
  sampleSizeArray = CMBlockBufferGetDataLength(v25);
  OUTLINED_FUNCTION_15_40();
  v59 = CMSampleBufferCreate(v54, v55, v56, v57, v58, formatDescription, 1, 1, &__dst, 1, &sampleSizeArray, &v108);
  if (v59)
  {
    v65 = v59;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_42();
    LODWORD(sampleTimingArraya) = v65;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", sampleTimingArraya);
    goto LABEL_83;
  }

  [v71 emitSampleBuffer:v108];
  if (!v21)
  {
    goto LABEL_83;
  }

  v30 = 0;
  *(v21 + 80) = v32;
LABEL_64:
  free(v30);
  if (v109)
  {
    CFRelease(v109);
  }

  if (v108)
  {
    CFRelease(v108);
  }

LABEL_68:
  OUTLINED_FUNCTION_81();
}

- (uint64_t)localIDsForKey:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if (objc_msgSend_isEqualToString_(a2, a2, *off_1E798ACB8))
    {
      v4 = &OBJC_IVAR___BWFaceDetectionNode__localIDsForFaces_BE;
    }

    else if (objc_msgSend_isEqualToString_(a2))
    {
      v4 = &OBJC_IVAR___BWFaceDetectionNode__localIDsForDetectedHumanBodies_BE;
    }

    else if (objc_msgSend_isEqualToString_(a2))
    {
      v4 = &OBJC_IVAR___BWFaceDetectionNode__localIDsForDetectedDogHeads_BE;
    }

    else if (objc_msgSend_isEqualToString_(a2))
    {
      v4 = &OBJC_IVAR___BWFaceDetectionNode__localIDsForDetectedDogBodies_BE;
    }

    else if (objc_msgSend_isEqualToString_(a2))
    {
      v4 = &OBJC_IVAR___BWFaceDetectionNode__localIDsForDetectedCatHeads_BE;
    }

    else if (objc_msgSend_isEqualToString_(a2))
    {
      v4 = &OBJC_IVAR___BWFaceDetectionNode__localIDsForDetectedCatBodies_BE;
    }

    else
    {
      if (!objc_msgSend_isEqualToString_(a2))
      {
        return 0;
      }

      v4 = &OBJC_IVAR___BWFaceDetectionNode__localIDsForDetectedSalientObjects_BE;
    }

    return v3 + *v4;
  }

  return result;
}

- (uint64_t)append:(_DWORD *)append toBoxedData:(_DWORD *)data localIDs:(int)ds isFace:
{
  if (!self)
  {
    return 0;
  }

  v11 = off_1E798B2B8;
  if (!ds)
  {
    v11 = off_1E798AC78;
  }

  v12 = [a2 objectForKeyedSubscript:*v11];
  if (v12)
  {
    v13 = data[1];
    append[6] = 201326592;
    append[7] = v13;
    append[8] = bswap32([v12 unsignedIntValue]);
    v14 = 9;
  }

  else
  {
    v14 = 6;
  }

  v15 = [a2 objectForKeyedSubscript:*off_1E798B5C0];
  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = data[2];
  v17 = &append[v14];
  *v17 = 671088640;
  v17[1] = v16;
  memset(&rect, 0, sizeof(rect));
  if (!CGRectMakeWithDictionaryRepresentation(v15, &rect))
  {
    OUTLINED_FUNCTION_3_19();
    fig_log_get_emitter();
    v31 = OUTLINED_FUNCTION_17_37();
    FigDebugAssert3(v31, 0, v5);
    OUTLINED_FUNCTION_3_19();
    fig_log_get_emitter();
    LODWORD(v33) = -12780;
    v32 = OUTLINED_FUNCTION_17_37();
    FigDebugAssert3(v32, v33, v5);
    return 0;
  }

  x = rect.origin.x;
  v19.f64[0] = rect.origin.y;
  v20.f64[0] = rect.origin.y + rect.size.height;
  v19.f64[1] = rect.origin.x + rect.size.width;
  *(v17 + 3) = vrev32q_s8(vcvt_hight_f32_f64(vcvt_f32_f64(v19), v19));
  v20.f64[1] = x;
  v21 = vrev32_s8(vcvt_f32_f64(v20));
  v17[2] = v21.i32[1];
  *(v17 + 7) = v21;
  v17[9] = v21.i32[0];
  v14 += 10;
LABEL_10:
  if (ds)
  {
    v22 = [a2 objectForKeyedSubscript:*off_1E798B160];
    if (v22)
    {
      v23 = data[3];
      v24 = &append[v14];
      *v24 = 201326592;
      v24[1] = v23;
      [v22 floatValue];
      OUTLINED_FUNCTION_26_24();
      v24[2] = v25;
      v14 += 3;
    }

    v26 = [a2 objectForKeyedSubscript:*off_1E798B168];
    if (v26)
    {
      v27 = data[4];
      v28 = &append[v14];
      *v28 = 201326592;
      v28[1] = v27;
      [v26 floatValue];
      OUTLINED_FUNCTION_26_24();
      v28[2] = v29;
      v14 += 3;
    }
  }

  *append = bswap32(v14 * 4);
  append[1] = *data;
  append[2] = bswap32(v14 * 4 - 8);
  append[3] = *(self + 484);
  append[4] = bswap32(v14 * 4 - 16);
  append[5] = *(self + 488);
  return v14 * 4;
}

- (uint64_t)_getEmptyMetadataSampleData
{
  if (result)
  {
    v1 = result;
    if (!*(result + 376))
    {
      v2 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], 0, 8uLL, *MEMORY[0x1E695E480], 0, 0, 8uLL, 1u, (result + 376));
      if (v2)
      {
        v4 = v2;
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_8();
        LODWORD(blockBufferOut) = v4;
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", blockBufferOut);
      }

      else
      {
        dataPointerOut = 0;
        DataPointer = CMBlockBufferGetDataPointer(*(v1 + 376), 0, 0, 0, &dataPointerOut);
        if (DataPointer)
        {
          v5 = DataPointer;
          fig_log_get_emitter();
          OUTLINED_FUNCTION_1_8();
          LODWORD(blockBufferOut) = v5;
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", blockBufferOut);
        }

        else
        {
          *dataPointerOut = 0x8000000;
        }
      }
    }

    return *(v1 + 376);
  }

  return result;
}

@end