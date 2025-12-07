@interface FRCLivePhotoMetadataReader
- (BOOL)processLivePhotoMetadataItem:(id)item isIDR:(BOOL)r recipeAvailable:(BOOL)available;
- (FRCLivePhotoMetadataReader)init;
- (id)createMetadataAdaptorForAsset:(id)asset;
- (id)createMetadataEntryForV3Metadata:(id *)metadata frameIndex:(unint64_t)index time:(id *)time isIDR:(BOOL)r noRecipeGap:(BOOL)gap;
- (unint64_t)preParseMetadata;
- (void)parseStillImageMetadata:(id)metadata;
- (void)printMetadata:(id)metadata withVideoFrame:(id)frame;
- (void)printMetadataListWithVideoTimingInfo:(id)info;
- (void)readLivePhotoMetadataFromAsset:(id)asset;
@end

@implementation FRCLivePhotoMetadataReader

- (FRCLivePhotoMetadataReader)init
{
  v3.receiver = self;
  v3.super_class = FRCLivePhotoMetadataReader;
  result = [(FRCLivePhotoMetadataReader *)&v3 init];
  result->_printMetadata = 1;
  return result;
}

- (unint64_t)preParseMetadata
{
  memset(&v18, 0, sizeof(v18));
  CMTimeMakeWithSeconds(&v18, 1.0, 600);
  self->_totalFrames = 0;
  v3 = MEMORY[0x277CC0898];
  self->_numberOfInterpolatedFrames = 0;
  self->_burstDropTime = *v3;
  nextTimedMetadataGroup = [(AVAssetReaderOutputMetadataAdaptor *)self->_metadataOutputAdaptor nextTimedMetadataGroup];
  if (nextTimedMetadataGroup)
  {
    v5 = nextTimedMetadataGroup;
    v6 = 0;
    while (1)
    {
      items = [v5 items];
      firstObject = [items firstObject];

      if (firstObject)
      {
        objc_msgSend_duration(firstObject);
      }

      else
      {
        memset(&time2, 0, sizeof(time2));
      }

      v15 = v18;
      CMTimeMinimum(&v17, &v15, &time2);
      v18 = v17;
      v17.value = 0;
      time2.value = 0;
      value = [firstObject value];
      deserializeLivePhotoMetadata(value, &v17, &time2);

      if (!v17.value)
      {
        break;
      }

      FigLivePhotoMetadataV3 = getFigLivePhotoMetadataV3(v17.value);
      if (!FigLivePhotoMetadataV3)
      {
        break;
      }

      v11 = FigLivePhotoMetadataV3->u16[0];
      if ((v11 & 0x20) != 0)
      {
        self->_numberOfInterpolatedFrames += FigLivePhotoMetadataV3[3].u8[10];
      }

      v6 += (v11 >> 3) & 1;
      free(v17.value);
      ++self->_totalFrames;

      nextTimedMetadataGroup2 = [(AVAssetReaderOutputMetadataAdaptor *)self->_metadataOutputAdaptor nextTimedMetadataGroup];

      v5 = nextTimedMetadataGroup2;
      if (!nextTimedMetadataGroup2)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_14:
  time2 = v18;
  CMTimeMultiplyByRatio(&v17, &time2, 19, 10);
  *&self->_droppingThreshold.value = *&v17.value;
  epoch = v17.epoch;
  self->_droppingThreshold.epoch = v17.epoch;
  *&time2.value = *&self->_droppingThreshold.value;
  time2.epoch = epoch;
  CMTimeConvertScale(&v17, &time2, v18.timescale, kCMTimeRoundingMethod_QuickTime);
  self->_droppingThreshold = v17;
  return v6;
}

- (void)parseStillImageMetadata:(id)metadata
{
  v34 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  self->_stillImageTime = **&MEMORY[0x277CC0898];
  *&self->_stillImageTransformAvailable = 0;
  v23 = metadataCopy;
  [metadataCopy tracksWithMediaType:*MEMORY[0x277CE5E70]];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v32 = 0u;
  v5 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v30;
    v24 = *v30;
    selfCopy = self;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v29 + 1) + 8 * i);
        formatDescriptions = [v9 formatDescriptions];
        v11 = [formatDescriptions objectAtIndexedSubscript:0];

        if (v11)
        {
          v12 = CMMetadataFormatDescriptionGetIdentifiers(v11);
          if ([v12 containsObject:@"mdta/com.apple.quicktime.still-image-time"])
          {
            v13 = v9;
            v14 = [MEMORY[0x277CE6430] assetReaderTrackOutputWithTrack:v13 outputSettings:0];
            v15 = MEMORY[0x277CE6410];
            asset = [v13 asset];
            v17 = [v15 assetReaderWithAsset:asset error:0];

            [v17 addOutput:v14];
            [v17 startReading];
            copyNextSampleBuffer = [v14 copyNextSampleBuffer];
            if (copyNextSampleBuffer)
            {
              copyNextSampleBuffer2 = copyNextSampleBuffer;
              v20 = 0;
              do
              {
                if (CMSampleBufferGetNumSamples(copyNextSampleBuffer2))
                {
                  v21 = [objc_alloc(MEMORY[0x277CE6648]) initWithSampleBuffer:copyNextSampleBuffer2];

                  v20 = v21;
                }

                CFRelease(copyNextSampleBuffer2);
                copyNextSampleBuffer2 = [v14 copyNextSampleBuffer];
              }

              while (copyNextSampleBuffer2);
            }

            else
            {
              v20 = 0;
            }

            [v17 cancelReading];
            v22 = v20;

            if (v22)
            {
              objc_msgSend_timeRange(v22);
            }

            else
            {
              v28 = 0;
              v27 = 0u;
            }

            v7 = v24;
            self = selfCopy;
            *&selfCopy->_stillImageTime.value = v27;
            selfCopy->_stillImageTime.epoch = v28;
          }

          if ([v12 containsObject:@"mdta/com.apple.quicktime.live-photo-still-image-transform"])
          {
            self->_stillImageTransformAvailable = 1;
          }

          if ([v12 containsObject:@"mdta/com.apple.quicktime.live-photo-still-image-transform-reference-dimensions"])
          {
            self->_stillImageTransformReferenceDimensionsAvailable = 1;
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v6);
  }
}

- (void)readLivePhotoMetadataFromAsset:(id)asset
{
  assetCopy = asset;
  v5 = findIRAPs(assetCopy);
  v6 = MEMORY[0x277CE6520];
  metadata = [assetCopy metadata];
  v8 = [v6 metadataItemsFromArray:metadata filteredByIdentifier:@"mdta/com.apple.quicktime.software"];
  firstObject = [v8 firstObject];

  value = [firstObject value];
  [value floatValue];
  v12 = v11;

  v13 = MEMORY[0x277CE6520];
  metadata2 = [assetCopy metadata];
  v15 = [v13 metadataItemsFromArray:metadata2 filteredByIdentifier:@"mdta/com.apple.quicktime.model"];
  firstObject2 = [v15 firstObject];

  if (self->_printMetadata)
  {
    printf("OS Version : %.1f\n", v12);
    value2 = [firstObject2 value];
    printf("Model      : %s\n", [value2 UTF8String]);

    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    metadataList = self->_metadataList;
    self->_metadataList = v18;
  }

  [(FRCLivePhotoMetadataReader *)self parseStillImageMetadata:assetCopy];
  v20 = [(FRCLivePhotoMetadataReader *)self createMetadataAdaptorForAsset:assetCopy];
  metadataOutputAdaptor = self->_metadataOutputAdaptor;
  self->_metadataOutputAdaptor = v20;

  if (self->_metadataOutputAdaptor)
  {
    preParseMetadata = [(FRCLivePhotoMetadataReader *)self preParseMetadata];
    v23 = [(FRCLivePhotoMetadataReader *)self createMetadataAdaptorForAsset:assetCopy];
    v24 = self->_metadataOutputAdaptor;
    self->_metadataOutputAdaptor = v23;

    self->_frameIndex = 0;
    self->_recipe = 0;
    self->_numberOfDroppedFrames = 0;
    nextTimedMetadataGroup = [(AVAssetReaderOutputMetadataAdaptor *)self->_metadataOutputAdaptor nextTimedMetadataGroup];
    if (nextTimedMetadataGroup)
    {
      v26 = nextTimedMetadataGroup;
      while (1)
      {
        if (![v5 count])
        {
          goto LABEL_11;
        }

        objc_msgSend_timeRange(v26);
        time1 = v35;
        firstObject3 = [v5 firstObject];
        v28 = firstObject3;
        if (firstObject3)
        {
          objc_msgSend_time(firstObject3);
        }

        else
        {
          memset(&time2, 0, sizeof(time2));
        }

        v29 = CMTimeCompare(&time1, &time2);

        if (!v29)
        {
          [v5 removeObjectAtIndex:0];
          v30 = 1;
        }

        else
        {
LABEL_11:
          v30 = 0;
        }

        items = [v26 items];
        firstObject4 = [items firstObject];

        if (![(FRCLivePhotoMetadataReader *)self processLivePhotoMetadataItem:firstObject4 isIDR:v30 recipeAvailable:preParseMetadata != 0])
        {
          break;
        }

        ++self->_frameIndex;

        nextTimedMetadataGroup2 = [(AVAssetReaderOutputMetadataAdaptor *)self->_metadataOutputAdaptor nextTimedMetadataGroup];

        v26 = nextTimedMetadataGroup2;
        if (!nextTimedMetadataGroup2)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
LABEL_15:
      self->_numberOfMetadataFrames = self->_frameIndex;
    }
  }
}

- (BOOL)processLivePhotoMetadataItem:(id)item isIDR:(BOOL)r recipeAvailable:(BOOL)available
{
  rCopy = r;
  itemCopy = item;
  v24 = 0;
  v23 = 0;
  numberOfInterpolatedFrames = self->_numberOfInterpolatedFrames;
  value = [itemCopy value];
  deserializeLivePhotoMetadata(value, &v24, &v23);

  v11 = v24;
  if (!v24)
  {
    goto LABEL_10;
  }

  self->_metadataVersion = *v24;
  FigLivePhotoMetadataV3 = getFigLivePhotoMetadataV3(v11);
  if (!FigLivePhotoMetadataV3)
  {
    free(v24);
    printf("No LivePhotoMetadataV3 in this movie. Metadata verison is %d\n", self->_metadataVersion);
LABEL_10:
    v15 = 0;
    goto LABEL_34;
  }

  v13 = FigLivePhotoMetadataV3;
  if ((FigLivePhotoMetadataV3->i16[0] & 0x10) != 0)
  {
    v16 = FigLivePhotoMetadataV3[3].i8[9];
    if (self->_recipe)
    {
      v17 = v16 - self->_previousDisplacement;
      if (v17 >= 2)
      {
        self->_numberOfDroppedFrames = v17 + self->_numberOfDroppedFrames - 1;
      }
    }

    else
    {
      self->_recipe = FigLivePhotoMetadataV3[3].u8[8];
    }

    self->_previousDisplacement = v16;
    if (!v16 && (self->_burstDropTime.flags & 1) == 0)
    {
      if (itemCopy)
      {
        objc_msgSend_time(itemCopy);
      }

      else
      {
        memset(&time1, 0, sizeof(time1));
      }

      v14 = 0;
      self->_burstDropTime = time1;
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (available || self->_frameIndex >= self->_totalFrames - 1)
  {
LABEL_27:
    v14 = 0;
    goto LABEL_28;
  }

  if ((FigLivePhotoMetadataV3->i16[0] & 0x20) == 0 || !FigLivePhotoMetadataV3[3].i8[10])
  {
    if (!numberOfInterpolatedFrames)
    {
      if (itemCopy)
      {
        objc_msgSend_duration(itemCopy);
      }

      else
      {
        memset(&time1, 0, sizeof(time1));
      }

      time2 = self->_droppingThreshold;
      if (CMTimeCompare(&time1, &time2) == 1)
      {
        ++self->_numberOfDroppedFrames;
        v14 = 1;
        goto LABEL_28;
      }
    }

    goto LABEL_27;
  }

  v14 = 0;
  ++self->_numberOfDroppedFrames;
LABEL_28:
  if (self->_printMetadata)
  {
    frameIndex = self->_frameIndex;
    if (itemCopy)
    {
      objc_msgSend_time(itemCopy);
    }

    else
    {
      memset(&time1, 0, sizeof(time1));
    }

    v19 = [(FRCLivePhotoMetadataReader *)self createMetadataEntryForV3Metadata:v13 frameIndex:frameIndex time:&time1 isIDR:rCopy noRecipeGap:v14];
    [(NSMutableArray *)self->_metadataList addObject:v19];
  }

  free(v24);
  v15 = 1;
LABEL_34:

  return v15;
}

- (id)createMetadataAdaptorForAsset:(id)asset
{
  v27 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  v4 = [assetCopy tracksWithMediaType:*MEMORY[0x277CE5E70]];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v23;
  v9 = *MEMORY[0x277CF3BD0];
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v23 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v11 = *(*(&v22 + 1) + 8 * i);
      formatDescriptions = [v11 formatDescriptions];
      v13 = [formatDescriptions objectAtIndexedSubscript:0];

      if (v13)
      {
        v14 = CMMetadataFormatDescriptionGetIdentifiers(v13);
        if ([v14 containsObject:v9])
        {
          v15 = v11;

          v7 = v15;
        }
      }
    }

    v6 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
  }

  while (v6);
  if (v7)
  {
    v16 = objc_alloc(MEMORY[0x277CE6410]);
    asset = [v7 asset];
    v18 = [v16 initWithAsset:asset error:0];

    v19 = [MEMORY[0x277CE6430] assetReaderTrackOutputWithTrack:v7 outputSettings:0];
    if ([v18 canAddOutput:v19])
    {
      [v18 addOutput:v19];
      v20 = [MEMORY[0x277CE6420] assetReaderOutputMetadataAdaptorWithAssetReaderTrackOutput:v19];
      [v18 startReading];
    }

    else
    {
      puts("Error: cannot add metadata output");
      v20 = 0;
    }
  }

  else
  {
LABEL_15:
    puts("Error : No LivePhoto metadata track");
    v20 = 0;
  }

  return v20;
}

- (id)createMetadataEntryForV3Metadata:(id *)metadata frameIndex:(unint64_t)index time:(id *)time isIDR:(BOOL)r noRecipeGap:(BOOL)gap
{
  gapCopy = gap;
  rCopy = r;
  var0 = metadata->var0;
  v13 = objc_alloc_init(FRCLivePhotoMetadata);
  [(FRCLivePhotoMetadata *)v13 setNoRecipeGap:gapCopy];
  [(FRCLivePhotoMetadata *)v13 setIsIDR:rCopy];
  v15 = *time;
  [(FRCLivePhotoMetadata *)v13 setTime:&v15];
  [(FRCLivePhotoMetadata *)v13 setFrameIndex:index];
  if ((var0 & 0x20) != 0)
  {
    [(FRCLivePhotoMetadata *)v13 setInterpolated:metadata->var6 != 0];
    if ((var0 & 4) == 0)
    {
LABEL_3:
      if ((var0 & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((var0 & 4) == 0)
  {
    goto LABEL_3;
  }

  [(FRCLivePhotoMetadata *)v13 setPtsInNanos:metadata->var2];
  [(FRCLivePhotoMetadata *)v13 setOriginalPTSInNanos:metadata->var3];
  if ((var0 & 8) != 0)
  {
LABEL_4:
    [(FRCLivePhotoMetadata *)v13 setSequenceAdjusterRecipe:metadata->var4];
    [(FRCLivePhotoMetadata *)v13 setSequenceAdjusterDisplacement:metadata->var5];
  }

LABEL_5:

  return v13;
}

- (void)printMetadata:(id)metadata withVideoFrame:(id)frame
{
  metadataCopy = metadata;
  frameCopy = frame;
  memset(&v16, 0, sizeof(v16));
  v8 = [metadataCopy ptsInNanos] / 1000000000.0;
  if (metadataCopy)
  {
    objc_msgSend_time(metadataCopy);
    v9 = v14;
  }

  else
  {
    v9 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

  CMTimeMakeWithSeconds(&v16, v8, v9);
  if (![metadataCopy frameIndex])
  {
    self->_initialOriginalPTS = [metadataCopy ptsInNanos];
    self->_initialTime = v16;
  }

  if (self->_verbose)
  {
    if (frameCopy)
    {
      objc_msgSend_presentationTimeStamp(frameCopy);
      printf("Video: %4lld");
    }

    else
    {
      printf("            ");
    }
  }

  if (metadataCopy)
  {
    if (self->_verbose)
    {
      if (frameCopy)
      {
        objc_msgSend_presentationTimeStamp(frameCopy);
      }

      else
      {
        memset(&time1, 0, sizeof(time1));
      }

      objc_msgSend_time(metadataCopy);
      if (CMTimeCompare(&time1, &time2))
      {
        printf(" != ");
        ++self->_ptsMismatches;
      }

      else
      {
        printf("    ");
      }

      objc_msgSend_time(metadataCopy);
      printf("Metadata: %4lld ", v10);
      [metadataCopy ptsInNanos];
      [metadataCopy originalPTSInNanos];
      printf("\tPTSinNanos: %-15lld \tOriginalPTSinNanos: %-15lld ");
    }

    else
    {
      objc_msgSend_time(metadataCopy);
      printf("Time %4lld:");
    }

    printf("\tinterpolated:%d", [metadataCopy interpolated]);
    if ([metadataCopy sequenceAdjusterRecipe])
    {
      printf("\trecipe:%ld  displacement:%ld", [metadataCopy sequenceAdjusterRecipe], objc_msgSend(metadataCopy, "sequenceAdjusterDisplacement"));
    }

    if ([metadataCopy noRecipeGap])
    {
      printf("\t*");
    }

    if ([metadataCopy isIDR])
    {
      printf("\tIDR");
    }
  }

  putchar(10);
}

- (void)printMetadataListWithVideoTimingInfo:(id)info
{
  infoCopy = info;
  if ([(NSMutableArray *)self->_metadataList count])
  {
    v4 = [(NSMutableArray *)self->_metadataList count];
    v5 = [(NSMutableArray *)infoCopy count];
    metadataList = infoCopy;
    if (v4 > v5)
    {
      metadataList = self->_metadataList;
    }

    v7 = [(NSMutableArray *)metadataList count];
    if (v7 >= 1)
    {
      v8 = v7;
      for (i = 0; i != v8; ++i)
      {
        printf("[%3ld] ", i);
        if (i >= [(NSMutableArray *)infoCopy count])
        {
          v10 = 0;
        }

        else
        {
          v10 = [(NSMutableArray *)infoCopy objectAtIndex:i];
        }

        if (i >= [(NSMutableArray *)self->_metadataList count])
        {
          v11 = 0;
        }

        else
        {
          v11 = [(NSMutableArray *)self->_metadataList objectAtIndex:i];
        }

        [(FRCLivePhotoMetadataReader *)self printMetadata:v11 withVideoFrame:v10];
      }
    }
  }
}

@end