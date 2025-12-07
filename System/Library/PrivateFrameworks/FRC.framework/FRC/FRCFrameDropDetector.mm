@interface FRCFrameDropDetector
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)droppingThreshold;
- (FRCFrameDropDetector)init;
- (id)buildInsertionPointListFromInternalTimingList:(id)list bailOutCode:(int64_t *)code;
- (id)calculateFrameDropInfoFromSortedMetadataList:(id)list sortedTimingList:(id)timingList;
- (id)calculateFrameDurationFromSortedTimingList:(id)list;
- (id)detectFrameDropsFromFrameMetadataList:(id)list frameTimingList:(id)timingList;
- (id)detectFrameDropsFromFrameTimingList:(id)list;
- (id)detectFrameDropsFromInternalTimingList:(id)list;
- (id)detectSingleFrameDropsFromFrameTimingList:(id)list;
- (id)errorWithDescription:(id)description;
- (id)selectFrameInsertionPointsFromTimingList:(id)list metadataList:(id)metadataList sloMo:(BOOL)mo withError:(id *)error;
- (id)sortFrameMetadataListInDisplayOrderFromMetadataList:(id)list;
- (id)sortFrameTimingListInDisplayOrderFromTimingList:(id)list;
- (unint64_t)countNumberOfFramesWithRecipeInMetadataList:(id)list;
- (void)dealloc;
- (void)debugPrintFRCFRCFrameBurstyDropInfo:(id)info;
- (void)debugPrintFRCFrameInternalTimingInfo:(id)info;
- (void)debugPrintFRCFrameMetadataInfo:(id)info;
- (void)debugPrintFRCFrameTimingInfo:(id)info;
- (void)detectLocationOfBurstyGapsFromBurstyDropList:(id)list frameInternalTimingList:(id)timingList;
- (void)detectSingleFrameDropsFromInternalTimingList:(id)list;
- (void)scaleNumberOfFramesToInsertFor2xSloMo:(id)mo;
- (void)setPropertiesFromDefaults;
@end

@implementation FRCFrameDropDetector

- (FRCFrameDropDetector)init
{
  v9.receiver = self;
  v9.super_class = FRCFrameDropDetector;
  v2 = [(FRCFrameDropDetector *)&v9 init];
  v3 = v2;
  if (v2)
  {
    [(FRCFrameDropDetector *)v2 setDebugPrint:0];
    *&v3->_gatingEnabled = 257;
    [(FRCFrameDropDetector *)v3 setPropertiesFromDefaults];
    CMTimeMake(&v8, 600, 600);
    v4 = *&v8.value;
    v3->minDuration.epoch = v8.epoch;
    *&v3->minDuration.value = v4;
    v5 = os_log_create("com.apple.FRC", "FrameDropDetector");
    logger = v3->_logger;
    v3->_logger = v5;
  }

  return v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = FRCFrameDropDetector;
  [(FRCFrameDropDetector *)&v2 dealloc];
}

- (void)setPropertiesFromDefaults
{
  keyExistsAndHasValidFormat = 1;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"FrameDropDetectorDebug", @"com.apple.FRC", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    [(FRCFrameDropDetector *)self setDebugPrint:AppBooleanValue != 0];
  }

  v4 = CFPreferencesGetAppBooleanValue(@"SingleDropRecovery", @"com.apple.FRC", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    self->_singleDropRecoveryEnabled = v4 != 0;
  }
}

- (void)debugPrintFRCFrameMetadataInfo:(id)info
{
  v16 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  puts("[Frame] Curated Time, Original Time, Recipe, Displacement");
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  obj = infoCopy;
  v4 = [obj countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      v8 = 0;
      v9 = v6;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v6 = v9 + 1;
        printf("[%3ld] %ld, %ld, %ld, %3ld\n", v9, [*(*(&v11 + 1) + 8 * v8) ptsInNanos], objc_msgSend(*(*(&v11 + 1) + 8 * v8), "originalPTSInNanos"), objc_msgSend(*(*(&v11 + 1) + 8 * v8), "sequenceAdjusterRecipe"), objc_msgSend(*(*(&v11 + 1) + 8 * v8), "sequenceAdjusterDisplacement"));
        ++v8;
        ++v9;
      }

      while (v5 != v8);
      v5 = [obj countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)debugPrintFRCFrameTimingInfo:(id)info
{
  v15 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [infoCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(infoCopy);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if (v9)
        {
          objc_msgSend_presentationTimeStamp(v9);
        }

        NSLog(&cfstr_3ldPts4f4lldD.isa, v6++, (0 / 0), 0, 0);
      }

      v5 = [infoCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)debugPrintFRCFrameInternalTimingInfo:(id)info
{
  v15 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [infoCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(infoCopy);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if (v9)
        {
          objc_msgSend_presentationTimeStamp(v9);
          objc_msgSend_frameDuration(v9);
          objc_msgSend_interpolatedFrameDuration(v9);
        }

        NSLog(&cfstr_3ldPts4f4lldDD.isa, v6++, (0 / 0), 0, 0, 0, 0, 0, 0, [v9 framesToBeDuplicated], objc_msgSend(v9, "frameIsAtBigGap"));
      }

      v5 = [infoCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)debugPrintFRCFRCFrameBurstyDropInfo:(id)info
{
  v18 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [infoCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(infoCopy);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        burstyIdx = [v9 burstyIdx];
        burstyStart = [v9 burstyStart];
        burstyLen = [v9 burstyLen];
        if (v9)
        {
          objc_msgSend_burstyBaseDuration(v9);
        }

        NSLog(&cfstr_3ldBurstyDropI.isa, v6++, burstyIdx, burstyStart, burstyLen, 0, 0);
      }

      v5 = [infoCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }
}

- (id)sortFrameMetadataListInDisplayOrderFromMetadataList:(id)list
{
  listCopy = list;
  v5 = objc_alloc_init(MEMORY[0x277CBEA60]);
  sortedMetadataList = self->sortedMetadataList;
  self->sortedMetadataList = v5;

  v7 = [listCopy sortedArrayUsingComparator:&__block_literal_global_0];
  v8 = self->sortedMetadataList;
  self->sortedMetadataList = v7;

  if (self->_debugPrint)
  {
    NSLog(&cfstr_FrameDropDetec.isa);
    [(FRCFrameDropDetector *)self debugPrintFRCFrameMetadataInfo:listCopy];
    NSLog(&cfstr_FrameDropDetec_0.isa);
    [(FRCFrameDropDetector *)self debugPrintFRCFrameMetadataInfo:self->sortedMetadataList];
  }

  v9 = self->sortedMetadataList;
  v10 = v9;

  return v9;
}

uint64_t __76__FRCFrameDropDetector_sortFrameMetadataListInDisplayOrderFromMetadataList___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 ptsInNanos];
  v6 = [v4 ptsInNanos];

  if (v5 > v6)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (id)calculateFrameDropInfoFromSortedMetadataList:(id)list sortedTimingList:(id)timingList
{
  v51 = *MEMORY[0x277D85DE8];
  listCopy = list;
  timingListCopy = timingList;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  frameInternalPTSList = self->frameInternalPTSList;
  self->frameInternalPTSList = v8;

  memset(&v49, 0, sizeof(v49));
  v10 = [timingListCopy objectAtIndexedSubscript:0];
  v11 = v10;
  if (v10)
  {
    objc_msgSend_presentationTimeStamp(v10);
  }

  else
  {
    memset(&v49, 0, sizeof(v49));
  }

  memset(&v48, 0, sizeof(v48));
  CMTimeMake(&v48, 0, v49.timescale);
  v12 = [timingListCopy count];
  v36 = [listCopy count];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v13 = timingListCopy;
  v37 = [v13 countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v37)
  {
    v14 = 0;
    v34 = v12 - 1;
    v35 = *v45;
    v33 = listCopy;
    v32 = v13;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v45 != v35)
        {
          objc_enumerationMutation(v13);
        }

        v16 = *(*(&v44 + 1) + 8 * i);
        if (v16)
        {
          objc_msgSend_presentationTimeStamp(v16);
        }

        else
        {
          memset(&time, 0, sizeof(time));
        }

        v49 = time;
        if (v14 >= v36)
        {
          sequenceAdjusterDisplacement = 0;
          sequenceAdjusterRecipe = 0;
        }

        else
        {
          v17 = [listCopy objectAtIndexedSubscript:v14];
          sequenceAdjusterRecipe = [v17 sequenceAdjusterRecipe];
          sequenceAdjusterDisplacement = [v17 sequenceAdjusterDisplacement];
        }

        if (v14 >= v34)
        {
          v25 = 0;
          v26 = 0;
        }

        else
        {
          v20 = [v13 objectAtIndexedSubscript:v14 + 1];
          v21 = v20;
          memset(&time, 0, sizeof(time));
          if (v20)
          {
            objc_msgSend_presentationTimeStamp(v20);
          }

          lhs = time;
          rhs = v49;
          CMTimeSubtract(&v42, &lhs, &rhs);
          v48 = v42;
          if (v14 >= v36 - 1)
          {
            v25 = 0;
            v26 = 0;
          }

          else
          {
            v22 = [listCopy objectAtIndexedSubscript:v14 + 1];
            sequenceAdjusterRecipe2 = [v22 sequenceAdjusterRecipe];
            sequenceAdjusterDisplacement2 = [v22 sequenceAdjusterDisplacement];
            v25 = 0;
            v26 = 0;
            if (sequenceAdjusterRecipe && sequenceAdjusterRecipe2)
            {
              v27 = sequenceAdjusterDisplacement2 - sequenceAdjusterDisplacement;
              v28 = 3;
              if (sequenceAdjusterDisplacement)
              {
                v28 = 0;
              }

              if (v27 >= 2)
              {
                v25 = sequenceAdjusterDisplacement2 - sequenceAdjusterDisplacement - 1;
              }

              else
              {
                v25 = v28;
              }

              v26 = v27 < 2 && sequenceAdjusterDisplacement == 0;
              self->_retimingRecipe = sequenceAdjusterRecipe;
            }

            v13 = v32;
            listCopy = v33;
          }
        }

        v29 = objc_alloc_init(FRCFrameInternalTimingInfo);
        time = v49;
        [(FRCFrameInternalTimingInfo *)v29 setPresentationTimeStamp:&time];
        time = v48;
        [(FRCFrameInternalTimingInfo *)v29 setFrameDuration:&time];
        [(FRCFrameInternalTimingInfo *)v29 setFramesToBeDuplicated:v25];
        [(FRCFrameInternalTimingInfo *)v29 setFrameIsAtBigGap:v26];
        if (v25 < 1)
        {
          time = v48;
          [(FRCFrameInternalTimingInfo *)v29 setInterpolatedFrameDuration:&time];
        }

        else
        {
          CMTimeMake(&v42, 1, v48.timescale);
          lhs = v48;
          CMTimeAdd(&time, &lhs, &v42);
          CMTimeMultiplyByRatio(&v39, &time, 1, 2);
          time = v39;
          [(FRCFrameInternalTimingInfo *)v29 setInterpolatedFrameDuration:&time];
          if (v29)
          {
            objc_msgSend_interpolatedFrameDuration(v29);
          }

          else
          {
            memset(&time, 0, sizeof(time));
          }

          CMTimeConvertScale(&v38, &time, v48.timescale, kCMTimeRoundingMethod_QuickTime);
          time = v38;
          [(FRCFrameInternalTimingInfo *)v29 setInterpolatedFrameDuration:&time];
          ++self->_numberOfInsertionPoints;
        }

        [(NSMutableArray *)self->frameInternalPTSList addObject:v29];
        ++v14;
      }

      v37 = [v13 countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v37);
  }

  if (self->_debugPrint)
  {
    NSLog(&cfstr_FrameDropDetec_1.isa);
    [(FRCFrameDropDetector *)self debugPrintFRCFrameInternalTimingInfo:self->frameInternalPTSList];
  }

  v30 = self->frameInternalPTSList;

  return v30;
}

- (id)sortFrameTimingListInDisplayOrderFromTimingList:(id)list
{
  listCopy = list;
  v5 = objc_alloc_init(MEMORY[0x277CBEA60]);
  sortedTimingList = self->sortedTimingList;
  self->sortedTimingList = v5;

  v7 = [listCopy sortedArrayUsingComparator:&__block_literal_global_90];
  v8 = self->sortedTimingList;
  self->sortedTimingList = v7;

  if (self->_debugPrint)
  {
    NSLog(&cfstr_FrameDropDetec_2.isa);
    [(FRCFrameDropDetector *)self debugPrintFRCFrameTimingInfo:listCopy];
    NSLog(&cfstr_FrameDropDetec_3.isa);
    [(FRCFrameDropDetector *)self debugPrintFRCFrameTimingInfo:self->sortedTimingList];
  }

  v9 = self->sortedTimingList;
  v10 = v9;

  return v9;
}

uint64_t __72__FRCFrameDropDetector_sortFrameTimingListInDisplayOrderFromTimingList___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v5;
  if (v4)
  {
    objc_msgSend_presentationTimeStamp(v4);
    v7 = v12;
    if (v6)
    {
LABEL_3:
      objc_msgSend_presentationTimeStamp(v6);
      v8 = v11;
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  if (v7 > v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

- (id)calculateFrameDurationFromSortedTimingList:(id)list
{
  v35 = *MEMORY[0x277D85DE8];
  listCopy = list;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  frameInternalPTSList = self->frameInternalPTSList;
  self->frameInternalPTSList = v5;

  memset(&timescale, 0, sizeof(timescale));
  v7 = [listCopy objectAtIndexedSubscript:0];
  v8 = v7;
  if (v7)
  {
    objc_msgSend_presentationTimeStamp(v7);
  }

  else
  {
    memset(&timescale, 0, sizeof(timescale));
  }

  memset(&v32, 0, sizeof(v32));
  CMTimeMake(&v32, 0, timescale.timescale);
  CMTimeMake(&v31, timescale.timescale, timescale.timescale);
  self->minDuration = v31;
  v9 = [listCopy count];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = listCopy;
  v11 = [v10 countByEnumeratingWithState:&v27 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v28;
    v15 = v9 - 1;
    do
    {
      v16 = 0;
      v17 = v13;
      do
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v18 = *(*(&v27 + 1) + 8 * v16);
        if (v18)
        {
          objc_msgSend_presentationTimeStamp(v18);
        }

        else
        {
          memset(&v31, 0, sizeof(v31));
        }

        timescale = v31;
        v13 = v17 + 1;
        if (v17 < v15)
        {
          v19 = [v10 objectAtIndexedSubscript:v17 + 1];
          v20 = v19;
          memset(&v31, 0, sizeof(v31));
          if (v19)
          {
            objc_msgSend_presentationTimeStamp(v19);
          }

          lhs = v31;
          v24 = timescale;
          CMTimeSubtract(&time1, &lhs, &v24);
          v32 = time1;
          lhs = self->minDuration;
          if (CMTimeCompare(&time1, &lhs) == -1)
          {
            self->minDuration = v32;
          }
        }

        v21 = objc_alloc_init(FRCFrameInternalTimingInfo);
        v31 = timescale;
        [(FRCFrameInternalTimingInfo *)v21 setPresentationTimeStamp:&v31];
        v31 = v32;
        [(FRCFrameInternalTimingInfo *)v21 setFrameDuration:&v31];
        v31 = v32;
        [(FRCFrameInternalTimingInfo *)v21 setInterpolatedFrameDuration:&v31];
        [(NSMutableArray *)self->frameInternalPTSList addObject:v21];

        ++v16;
        v17 = v13;
      }

      while (v12 != v16);
      v12 = [v10 countByEnumeratingWithState:&v27 objects:v34 count:16];
    }

    while (v12);
  }

  if (self->_debugPrint)
  {
    NSLog(&cfstr_FrameDropDetec_1.isa);
    [(FRCFrameDropDetector *)self debugPrintFRCFrameInternalTimingInfo:self->frameInternalPTSList];
  }

  v22 = self->frameInternalPTSList;

  return v22;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)droppingThreshold
{
  retstr->var0 = 0;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  time = self->minDuration;
  CMTimeMultiplyByRatio(retstr, &time, 19, 10);
  timescale = self->minDuration.timescale;
  v7 = *retstr;
  CMTimeConvertScale(&time, &v7, timescale, kCMTimeRoundingMethod_QuickTime);
  *retstr = time;
  NSLog(&cfstr_FrameDropDetec_4.isa, self->minDuration.value, self->minDuration.timescale, retstr->var0, retstr->var1);
  return result;
}

- (id)detectFrameDropsFromInternalTimingList:(id)list
{
  v42 = *MEMORY[0x277D85DE8];
  listCopy = list;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  frameBurstyDropInfoList = self->frameBurstyDropInfoList;
  self->frameBurstyDropInfoList = v5;

  memset(&v40, 0, sizeof(v40));
  CMTimeMake(&v40, 0, self->minDuration.timescale);
  memset(&v39, 0, sizeof(v39));
  objc_msgSend_droppingThreshold(self);
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v7 = listCopy;
  v8 = [v7 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (!v8)
  {
    v24 = 0;
    goto LABEL_25;
  }

  v9 = v8;
  v10 = 0;
  v22 = 0;
  obj = v7;
  v11 = 0;
  v24 = 0;
  v12 = 0;
  v13 = *v36;
  v14 = 1;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v36 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v35 + 1) + 8 * i);
      memset(&v34, 0, sizeof(v34));
      if (v16)
      {
        objc_msgSend_frameDuration(v16);
      }

      time1 = v34;
      time2 = v39;
      if (CMTimeCompare(&time1, &time2) != -1)
      {
        if (v11)
        {
          if (v16)
          {
            goto LABEL_11;
          }

LABEL_16:
          v17 = 0;
          memset(&time2, 0, sizeof(time2));
          v28 = 0;
          v29 = 0;
          v27 = 0;
        }

        else
        {
          ++v24;
          v40 = v34;
          v22 = v12;
          if (!v16)
          {
            goto LABEL_16;
          }

LABEL_11:
          objc_msgSend_frameDuration(v16);
          objc_msgSend_frameDuration(v16);
          v17 = v28;
        }

        CMTimeMake(&rhs, 1, v17);
        CMTimeAdd(&time1, &time2, &rhs);
        CMTimeMultiplyByRatio(&v31, &time1, 1, 2);
        time1 = v31;
        [v16 setInterpolatedFrameDuration:&time1];
        if (v16)
        {
          objc_msgSend_interpolatedFrameDuration(v16);
          objc_msgSend_frameDuration(v16);
          v19 = v25;
        }

        else
        {
          v19 = 0;
          memset(&time1, 0, sizeof(time1));
          v25 = 0;
        }

        ++v10;
        CMTimeConvertScale(&v26, &time1, v19, kCMTimeRoundingMethod_QuickTime);
        time1 = v26;
        [v16 setInterpolatedFrameDuration:&time1];
        ++self->_numberOfInsertionPoints;
        v11 = 1;
        goto LABEL_21;
      }

      if (!(v14 & 1 | (v11 == 0)))
      {
        v18 = objc_alloc_init(FRCFrameBurstyDropInfo);
        [(FRCFrameBurstyDropInfo *)v18 setBurstyIdx:v24];
        [(FRCFrameBurstyDropInfo *)v18 setBurstyStart:v22];
        [(FRCFrameBurstyDropInfo *)v18 setBurstyLen:v10];
        time1 = v40;
        [(FRCFrameBurstyDropInfo *)v18 setBurstyBaseDuration:&time1];
        [(NSMutableArray *)self->frameBurstyDropInfoList addObject:v18];
      }

      v11 = 0;
      v14 = 0;
      v10 = 0;
LABEL_21:
      [v16 setFramesToBeDuplicated:v11];
      [v16 setFrameIsAtBigGap:0];
      ++v12;
    }

    v7 = obj;
    v9 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
  }

  while (v9);
LABEL_25:

  if (self->_debugPrint)
  {
    NSLog(&cfstr_FrameDropDetec_5.isa);
    [(FRCFrameDropDetector *)self debugPrintFRCFrameInternalTimingInfo:v7];
    NSLog(&cfstr_FrameDropDetec_6.isa, v24);
    [(FRCFrameDropDetector *)self debugPrintFRCFRCFrameBurstyDropInfo:self->frameBurstyDropInfoList];
  }

  v20 = self->frameBurstyDropInfoList;

  return v20;
}

- (void)detectLocationOfBurstyGapsFromBurstyDropList:(id)list frameInternalTimingList:(id)timingList
{
  v35 = *MEMORY[0x277D85DE8];
  listCopy = list;
  timingListCopy = timingList;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = listCopy;
  v7 = [listCopy countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        memset(&v29, 0, sizeof(v29));
        if (v11)
        {
          objc_msgSend_burstyBaseDuration(v11);
        }

        else
        {
          memset(&time, 0, sizeof(time));
        }

        CMTimeConvertScale(&v29, &time, 600, kCMTimeRoundingMethod_QuickTime);
        value = v29.value;
        burstyStart = [v11 burstyStart];
        burstyLen = [v11 burstyLen];
        v15 = burstyLen;
        v16 = burstyLen - 3;
        if ((burstyLen - 3) > 0xC)
        {
          v17 = 0;
          v18 = -99;
          goto LABEL_25;
        }

        if (value == 64)
        {
          v17 = 70;
        }

        else
        {
          v17 = 10 * ((value + 5.0) / 10.0);
        }

        v18 = -99;
        if (v17 <= 59)
        {
          v19 = &gap_offset_base40;
          if (v17 != 40)
          {
            if (v17 != 50)
            {
              goto LABEL_25;
            }

            v19 = &gap_offset_base50;
          }
        }

        else
        {
          switch(v17)
          {
            case '<':
              v19 = &gap_offset_base60;
              break;
            case 'F':
              v19 = &gap_offset_base70;
              break;
            case 'P':
              v19 = &gap_offset_base80;
              break;
            default:
              goto LABEL_25;
          }
        }

        v18 = v19[burstyLen];
LABEL_25:
        if ((burstyLen - 1) >= 2)
        {
          v20 = v18;
        }

        else
        {
          v20 = 0;
        }

        NSLog(&cfstr_FrameDropDetec_7.isa, v17, burstyStart, burstyLen, v20);
        if (v20 != -99)
        {
          v21 = v20 + burstyStart;
          v22 = [timingListCopy objectAtIndexedSubscript:v21];
          [v22 setFramesToBeDuplicated:3];
          [v22 setFrameIsAtBigGap:v15];
          if (v15 == 2)
          {
            v23 = [timingListCopy objectAtIndexedSubscript:v21 + 1];

            [v23 setFramesToBeDuplicated:2];
            [v23 setFrameIsAtBigGap:2];
            v22 = v23;
          }

          else if (v15 == 1)
          {
            [v22 setFramesToBeDuplicated:2];
          }

          else if (v17 == 80)
          {
            if (v16 > 1)
            {
              if (v15 == 7)
              {
                v25 = [timingListCopy objectAtIndexedSubscript:v21 - 1];

                [v25 setFramesToBeDuplicated:2];
                [v25 setFrameIsAtBigGap:7];
                v22 = [timingListCopy objectAtIndexedSubscript:v21 + 1];

                [v22 setFramesToBeDuplicated:2];
                [v22 setFrameIsAtBigGap:7];
              }
            }

            else
            {
              v24 = [timingListCopy objectAtIndexedSubscript:v21 + 1];

              [v24 setFramesToBeDuplicated:2];
              [v24 setFrameIsAtBigGap:v15];
              v22 = v24;
            }
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v8);
  }

  if (self->_debugPrint)
  {
    NSLog(&cfstr_FrameDropDetec_8.isa);
    [(FRCFrameDropDetector *)self debugPrintFRCFrameInternalTimingInfo:timingListCopy];
  }
}

- (id)detectFrameDropsFromFrameMetadataList:(id)list frameTimingList:(id)timingList
{
  listCopy = list;
  v7 = [(FRCFrameDropDetector *)self sortFrameTimingListInDisplayOrderFromTimingList:timingList];
  sortedTimingList = self->sortedTimingList;
  self->sortedTimingList = v7;

  v9 = [(FRCFrameDropDetector *)self sortFrameMetadataListInDisplayOrderFromMetadataList:listCopy];

  sortedMetadataList = self->sortedMetadataList;
  self->sortedMetadataList = v9;

  v11 = [(FRCFrameDropDetector *)self calculateFrameDropInfoFromSortedMetadataList:self->sortedMetadataList sortedTimingList:self->sortedTimingList];
  frameInternalPTSList = self->frameInternalPTSList;
  self->frameInternalPTSList = v11;

  v13 = self->frameInternalPTSList;

  return v13;
}

- (id)detectFrameDropsFromFrameTimingList:(id)list
{
  listCopy = list;
  if ([listCopy count])
  {
    v5 = [(FRCFrameDropDetector *)self sortFrameTimingListInDisplayOrderFromTimingList:listCopy];
    sortedTimingList = self->sortedTimingList;
    self->sortedTimingList = v5;

    v7 = [(FRCFrameDropDetector *)self calculateFrameDurationFromSortedTimingList:self->sortedTimingList];
    frameInternalPTSList = self->frameInternalPTSList;
    self->frameInternalPTSList = v7;

    v9 = [(FRCFrameDropDetector *)self detectFrameDropsFromInternalTimingList:self->frameInternalPTSList];
    frameBurstyDropInfoList = self->frameBurstyDropInfoList;
    self->frameBurstyDropInfoList = v9;

    [(FRCFrameDropDetector *)self detectLocationOfBurstyGapsFromBurstyDropList:self->frameBurstyDropInfoList frameInternalTimingList:self->frameInternalPTSList];
    v11 = self->frameInternalPTSList;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)detectSingleFrameDropsFromInternalTimingList:(id)list
{
  v29 = *MEMORY[0x277D85DE8];
  listCopy = list;
  memset(&v27, 0, sizeof(v27));
  objc_msgSend_droppingThreshold(self);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = listCopy;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        memset(&v22, 0, sizeof(v22));
        if (v10)
        {
          objc_msgSend_frameDuration(v10);
        }

        time1 = v22;
        time2 = v27;
        if (CMTimeCompare(&time1, &time2) == 1)
        {
          if (v10)
          {
            objc_msgSend_frameDuration(v10);
            objc_msgSend_frameDuration(v10);
            v11 = v16;
          }

          else
          {
            v11 = 0;
            memset(&time2, 0, sizeof(time2));
            v16 = 0;
            v17 = 0;
            v15 = 0;
          }

          CMTimeMake(&rhs, 1, v11);
          CMTimeAdd(&time1, &time2, &rhs);
          CMTimeMultiplyByRatio(&v19, &time1, 1, 2);
          time1 = v19;
          [v10 setInterpolatedFrameDuration:&time1];
          if (v10)
          {
            objc_msgSend_interpolatedFrameDuration(v10);
            objc_msgSend_frameDuration(v10);
            v12 = v13;
          }

          else
          {
            v12 = 0;
            memset(&time1, 0, sizeof(time1));
            v13 = 0;
          }

          CMTimeConvertScale(&v14, &time1, v12, kCMTimeRoundingMethod_QuickTime);
          time1 = v14;
          [v10 setInterpolatedFrameDuration:&time1];
          [v10 setFramesToBeDuplicated:1];
          ++self->_numberOfInsertionPoints;
          if (v10)
          {
            objc_msgSend_frameDuration(v10);
          }

          else
          {
            memset(&time2, 0, sizeof(time2));
          }

          rhs = self->_maximumDuration;
          CMTimeMaximum(&time1, &rhs, &time2);
          self->_maximumDuration = time1;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  if (self->_debugPrint)
  {
    NSLog(&cfstr_FrameDropDetec_5.isa);
    [(FRCFrameDropDetector *)self debugPrintFRCFrameInternalTimingInfo:v5];
  }
}

- (id)detectSingleFrameDropsFromFrameTimingList:(id)list
{
  v4 = [(FRCFrameDropDetector *)self sortFrameTimingListInDisplayOrderFromTimingList:list];
  sortedTimingList = self->sortedTimingList;
  self->sortedTimingList = v4;

  v6 = [(FRCFrameDropDetector *)self calculateFrameDurationFromSortedTimingList:self->sortedTimingList];
  frameInternalPTSList = self->frameInternalPTSList;
  self->frameInternalPTSList = v6;

  [(FRCFrameDropDetector *)self detectSingleFrameDropsFromInternalTimingList:self->frameInternalPTSList];
  v8 = self->frameInternalPTSList;

  return v8;
}

- (id)buildInsertionPointListFromInternalTimingList:(id)list bailOutCode:(int64_t *)code
{
  v40 = *MEMORY[0x277D85DE8];
  listCopy = list;
  if (![listCopy count])
  {
    v19 = 0;
    *code = 1;
    goto LABEL_32;
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  insertionPointList = self->insertionPointList;
  self->insertionPointList = v7;

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v9 = listCopy;
  v10 = [v9 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v10)
  {
    v11 = v10;
    v28 = listCopy;
    v12 = 0;
    v13 = 0;
    v14 = *v36;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v36 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v35 + 1) + 8 * i);
        v33 = 0uLL;
        v34 = 0;
        if (v16)
        {
          objc_msgSend_presentationTimeStamp(v16);
        }

        v17 = objc_alloc_init(FRCFrameInsertionPoint);
        -[FRCFrameInsertionPoint setNumberOfFramesToInsert:](v17, "setNumberOfFramesToInsert:", [v16 framesToBeDuplicated]);
        if (v16)
        {
          objc_msgSend_interpolatedFrameDuration(v16);
        }

        else
        {
          v31 = 0uLL;
          v32 = 0;
        }

        v29 = v31;
        v30 = v32;
        [(FRCFrameInsertionPoint *)v17 setInterpolatedFrameDuration:&v29];
        v29 = v33;
        v30 = v34;
        [(FRCFrameInsertionPoint *)v17 setPresentationTimeStamp:&v29];
        [(NSMutableArray *)self->insertionPointList addObject:v17];
        v12 += [v16 framesToBeDuplicated];
      }

      v13 += v11;
      v11 = [v9 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v11);
    v18 = v13 - 2;
    listCopy = v28;
  }

  else
  {
    v12 = 0;
    v18 = -2;
  }

  if (self->_debugPrint)
  {
    NSLog(&cfstr_FrameDropDetec_9.isa, v12);
  }

  *code = 0;
  if (self->_gatingEnabled)
  {
    if (v12 > 17)
    {
      v20 = 2;
LABEL_30:
      *code = v20;
      v26 = self->insertionPointList;
      self->insertionPointList = 0;

      goto LABEL_31;
    }

    retimingRecipe = self->_retimingRecipe;
    if (retimingRecipe == 1000 || retimingRecipe <= 3)
    {
      v23 = [(NSMutableArray *)self->insertionPointList objectAtIndexedSubscript:v18];
      numberOfFramesToInsert = [v23 numberOfFramesToInsert];

      if (numberOfFramesToInsert < 2)
      {
        goto LABEL_28;
      }

      v22 = 4;
    }

    else
    {
      v22 = 3;
    }

    *code = v22;
    v25 = self->insertionPointList;
    self->insertionPointList = 0;
  }

LABEL_28:
  if (!v12)
  {
    v20 = 1;
    goto LABEL_30;
  }

LABEL_31:
  v19 = self->insertionPointList;
LABEL_32:

  return v19;
}

- (void)scaleNumberOfFramesToInsertFor2xSloMo:(id)mo
{
  v13 = *MEMORY[0x277D85DE8];
  moCopy = mo;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [moCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(moCopy);
        }

        [*(*(&v8 + 1) + 8 * v7) setNumberOfFramesToInsert:{(2 * objc_msgSend(*(*(&v8 + 1) + 8 * v7), "numberOfFramesToInsert")) | 1}];
        ++v7;
      }

      while (v5 != v7);
      v5 = [moCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (unint64_t)countNumberOfFramesWithRecipeInMetadataList:(id)list
{
  v15 = *MEMORY[0x277D85DE8];
  listCopy = list;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [listCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(listCopy);
        }

        if ([*(*(&v10 + 1) + 8 * i) sequenceAdjusterRecipe])
        {
          ++v6;
        }
      }

      v5 = [listCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)selectFrameInsertionPointsFromTimingList:(id)list metadataList:(id)metadataList sloMo:(BOOL)mo withError:(id *)error
{
  moCopy = mo;
  v33 = *MEMORY[0x277D85DE8];
  listCopy = list;
  metadataListCopy = metadataList;
  v12 = MEMORY[0x277CC08F0];
  self->_numberOfInsertionPoints = 0;
  self->_maximumDuration = *v12;
  v30 = 0;
  v13 = [metadataListCopy count];
  v14 = [(FRCFrameDropDetector *)self countNumberOfFramesWithRecipeInMetadataList:metadataListCopy];
  if (v13 < 1)
  {
    self->_retimingRecipe = 1000;
    v15 = [(FRCFrameDropDetector *)self detectFrameDropsFromFrameTimingList:listCopy];
  }

  else if (v14 || !self->_singleDropRecoveryEnabled)
  {
    v15 = [(FRCFrameDropDetector *)self detectFrameDropsFromFrameMetadataList:metadataListCopy frameTimingList:listCopy];
  }

  else
  {
    v15 = [(FRCFrameDropDetector *)self detectSingleFrameDropsFromFrameTimingList:listCopy];
  }

  frameInternalPTSList = self->frameInternalPTSList;
  self->frameInternalPTSList = v15;

  v17 = [(FRCFrameDropDetector *)self buildInsertionPointListFromInternalTimingList:self->frameInternalPTSList bailOutCode:&v30];
  insertionPointList = self->insertionPointList;
  self->insertionPointList = v17;

  v19 = self->insertionPointList;
  if (moCopy && v19)
  {
    [(FRCFrameDropDetector *)self scaleNumberOfFramesToInsertFor2xSloMo:?];
    v19 = self->insertionPointList;
  }

  self->_gatingCause = 0;
  if (error && !v19)
  {
    v20 = v30;
    if (v30 > 2)
    {
      if (v30 == 3)
      {
        v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bail out at frame drop detection (reason: very low frame rate. recipe=%ld)", self->_retimingRecipe];
        *error = [(FRCFrameDropDetector *)self errorWithDescription:v22];

        goto LABEL_22;
      }

      if (v30 == 4)
      {
        v21 = @"Bail out at frame drop detection (reason: burst drop in the end)";
        goto LABEL_20;
      }
    }

    else
    {
      if (v30 == 1)
      {
        v21 = @"Bail out at frame drop detection (reason: no drops detected)";
        goto LABEL_20;
      }

      if (v30 == 2)
      {
        v21 = @"Bail out at frame drop detection (reason: too many drops detected)";
LABEL_20:
        *error = [(FRCFrameDropDetector *)self errorWithDescription:v21];
LABEL_22:
        self->_gatingCause = v20;
      }
    }

    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *error;
      v25 = logger;
      localizedDescription = [v24 localizedDescription];
      uTF8String = [localizedDescription UTF8String];
      *buf = 136315138;
      v32 = uTF8String;
      _os_log_impl(&dword_24A8C8000, v25, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    v19 = self->insertionPointList;
  }

  v28 = v19;

  return v28;
}

- (id)errorWithDescription:(id)description
{
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObject:description forKey:*MEMORY[0x277CCA450]];
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.FRC" code:-22006 userInfo:v3];

  return v4;
}

@end