@interface CNAssetSpatialAudioInfo
+ (BOOL)isSupported;
+ (void)checkIfContainsSpatialAudio:(id)audio completionHandler:(id)handler;
+ (void)findAssociatedRemixMetadata:(id)metadata completionHandler:(id)handler;
+ (void)loadFromAsset:(id)asset completionHandler:(id)handler;
- (CNAssetSpatialAudioInfo)initWithSpatialAudioTrack:(id)track metadataBlob:(id)blob;
- (id)assetReaderOutputSettingsForContentType:(int64_t)type;
- (id)assetWriterInputSettingsForContentType:(int64_t)type;
- (id)audioMixWithEffectIntensity:(float)intensity renderingStyle:(int64_t)style;
@end

@implementation CNAssetSpatialAudioInfo

+ (void)findAssociatedRemixMetadata:(id)metadata completionHandler:(id)handler
{
  metadataCopy = metadata;
  handlerCopy = handler;
  asset = [metadataCopy asset];
  v18 = 0;
  formatDescriptions = [metadataCopy formatDescriptions];
  getEligibleCinematicAudioVersion(formatDescriptions, &v18);

  v9 = *MEMORY[0x277CE5E70];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __73__CNAssetSpatialAudioInfo_findAssociatedRemixMetadata_completionHandler___block_invoke;
  v13[3] = &unk_278A16070;
  v15 = metadataCopy;
  v16 = handlerCopy;
  v17 = v18;
  v14 = asset;
  v10 = metadataCopy;
  v11 = asset;
  v12 = handlerCopy;
  [v11 loadTracksWithMediaType:v9 completionHandler:v13];
}

void __73__CNAssetSpatialAudioInfo_findAssociatedRemixMetadata_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v60 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = _CNLogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __73__CNAssetSpatialAudioInfo_findAssociatedRemixMetadata_completionHandler___block_invoke_cold_1();
    }

LABEL_4:

    (*(*(a1 + 48) + 16))();
    goto LABEL_49;
  }

  if (![v5 count])
  {
    v8 = _CNLogSystem(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __73__CNAssetSpatialAudioInfo_findAssociatedRemixMetadata_completionHandler___block_invoke_cold_5();
    }

    goto LABEL_4;
  }

  v44 = v5;
  v45 = a1;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v5;
  v9 = [obj countByEnumeratingWithState:&v53 objects:v59 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v54;
    while (2)
    {
      v12 = 0;
      do
      {
        if (*v54 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v53 + 1) + 8 * v12);
        v14 = [v13 formatDescriptions];
        if ([v14 count])
        {
          v15 = 0;
          while (1)
          {
            v16 = [v14 objectAtIndex:v15];
            if (CMFormatDescriptionGetMediaType(v16) == 1835365473 && CMFormatDescriptionGetMediaSubType(v16) == 1835360888)
            {
              Identifiers = CMMetadataFormatDescriptionGetIdentifiers(v16);
              v61.length = CFArrayGetCount(Identifiers);
              v61.location = 0;
              if (CFArrayContainsValue(Identifiers, v61, @"mdta/com.apple.quicktime.cinematic-audio"))
              {
                break;
              }
            }

            if (++v15 >= [v14 count])
            {
              goto LABEL_17;
            }
          }

          v18 = v13;

          if (v18)
          {

            v22 = *(v45 + 32);
            v57 = *MEMORY[0x277CC08F0];
            v58 = *(MEMORY[0x277CC08F0] + 16);
            v23 = [v18 makeSampleCursorWithPresentationTimeStamp:&v57];
            v24 = v23;
            obja = v22;
            if (v23)
            {
              v25 = [objc_alloc(MEMORY[0x277CE6628]) initWithStartCursor:v23];
              v26 = [objc_alloc(MEMORY[0x277CE6618]) initWithAsset:v22 timebase:0];
              [v25 setDirection:1];
              [v25 setPreferredMinSampleCount:1];
              [v25 setMaxSampleCount:1];
              v27 = [v26 createSampleBufferForRequest:v25 error:0];
              v28 = [objc_alloc(MEMORY[0x277CE6648]) initWithSampleBuffer:v27];
              v29 = [v28 items];
              v30 = [v29 indexOfObjectPassingTest:&__block_literal_global_54];

              if (v30 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v31 = 0;
                v32 = 0;
                v33 = 0;
                goto LABEL_40;
              }

              v35 = [v28 items];
              v33 = [v35 objectAtIndex:v30];

              if (v33)
              {
                v34 = [v33 dataValue];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v36 = v34;
                  v32 = 1;
                  v31 = v34;
                }

                else
                {
                  v31 = 0;
                  v32 = 0;
                }

                goto LABEL_39;
              }

              v31 = 0;
              v32 = 0;
            }

            else
            {
              v34 = _CNLogSystem(0);
              if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
              {
                __73__CNAssetSpatialAudioInfo_findAssociatedRemixMetadata_completionHandler___block_invoke_cold_2(v34);
              }

              v31 = 0;
              v25 = 0;
              v26 = 0;
              v32 = 0;
              v33 = 0;
              v28 = 0;
LABEL_39:
            }

LABEL_40:

            v37 = v31;
            v38 = v37;
            if ((v32 & 1) == 0)
            {
              v40 = _CNLogSystem(v37);
              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                __73__CNAssetSpatialAudioInfo_findAssociatedRemixMetadata_completionHandler___block_invoke_cold_3();
              }

              v39 = *(*(v45 + 48) + 16);
              goto LABEL_46;
            }

            if (*(v45 + 56) == 65537)
            {
              v39 = *(*(v45 + 48) + 16);
LABEL_46:
              v39();

              goto LABEL_48;
            }

            v41 = *MEMORY[0x277CE6198];
            v48[0] = MEMORY[0x277D85DD0];
            v48[1] = 3221225472;
            v48[2] = __73__CNAssetSpatialAudioInfo_findAssociatedRemixMetadata_completionHandler___block_invoke_1;
            v48[3] = &unk_278A16048;
            v49 = *(v45 + 40);
            v50 = *(v45 + 32);
            v42 = *(v45 + 48);
            v51 = v38;
            v52 = v42;
            v43 = v38;
            [v18 loadAssociatedTracksOfType:v41 completionHandler:v48];

            goto LABEL_48;
          }
        }

        else
        {
LABEL_17:
        }

        ++v12;
      }

      while (v12 != v10);
      v19 = [obj countByEnumeratingWithState:&v53 objects:v59 count:16];
      v10 = v19;
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  v21 = _CNLogSystem(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    __73__CNAssetSpatialAudioInfo_findAssociatedRemixMetadata_completionHandler___block_invoke_cold_4();
  }

  (*(*(v45 + 48) + 16))();
LABEL_48:
  v7 = 0;
  v5 = v44;
LABEL_49:
}

void __73__CNAssetSpatialAudioInfo_findAssociatedRemixMetadata_completionHandler___block_invoke_1(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      v12 = *MEMORY[0x277CE5E48];
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v17 + 1) + 8 * i);
          v15 = [v14 mediaType];
          if ([v15 isEqualToString:v12])
          {
            v16 = [v14 isEqual:*(a1 + 32)];

            if (v16)
            {
              goto LABEL_16;
            }
          }

          else
          {
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v8 = _CNLogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __73__CNAssetSpatialAudioInfo_findAssociatedRemixMetadata_completionHandler___block_invoke_1_cold_1();
    }
  }

LABEL_16:

  (*(*(a1 + 56) + 16))();
}

+ (BOOL)isSupported
{
  if (isSupported_checkDeviceSupportsOnce != -1)
  {
    +[CNAssetSpatialAudioInfo isSupported];
  }

  return isSupported_audioMixIsSupported != 0;
}

void __38__CNAssetSpatialAudioInfo_isSupported__block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    isSupported_audioMixIsSupported = [v0 BOOLValue];
    v0 = v1;
  }
}

- (CNAssetSpatialAudioInfo)initWithSpatialAudioTrack:(id)track metadataBlob:(id)blob
{
  trackCopy = track;
  blobCopy = blob;
  v12.receiver = self;
  v12.super_class = CNAssetSpatialAudioInfo;
  v9 = [(CNAssetSpatialAudioInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_spatialAudioTrack, track);
    objc_storeStrong(&v10->_metadataBlob, blob);
  }

  return v10;
}

+ (void)loadFromAsset:(id)asset completionHandler:(id)handler
{
  assetCopy = asset;
  handlerCopy = handler;
  v7 = +[CNAssetSpatialAudioInfo isSupported];
  if ((v7 & 1) == 0)
  {
    v11 = _CNLogSystem(v7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[CNAssetSpatialAudioInfo loadFromAsset:completionHandler:];
    }

    goto LABEL_8;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v11 = _CNLogSystem(isKindOfClass);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[CNAssetSpatialAudioInfo loadFromAsset:completionHandler:];
    }

LABEL_8:

    v10 = _CNCinematicError(5, 0);
    handlerCopy[2](handlerCopy, 0, v10);
    goto LABEL_9;
  }

  v9 = *MEMORY[0x277CE5E48];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__CNAssetSpatialAudioInfo_loadFromAsset_completionHandler___block_invoke;
  v12[3] = &unk_278A16018;
  v13 = assetCopy;
  v14 = handlerCopy;
  [v13 loadTracksWithMediaType:v9 completionHandler:v12];

  v10 = v13;
LABEL_9:
}

void __59__CNAssetSpatialAudioInfo_loadFromAsset_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v37 = 0;
  if (v6)
  {
    v8 = _CNLogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __59__CNAssetSpatialAudioInfo_loadFromAsset_completionHandler___block_invoke_cold_1();
    }

    v9 = *(a1 + 40);
    v10 = _CNCinematicError(2, v7);
    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    v28 = a1;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v11 = v5;
    v12 = [v11 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v34;
LABEL_7:
      v15 = 0;
      while (1)
      {
        if (*v34 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v33 + 1) + 8 * v15);
        v17 = [v16 formatDescriptions];
        EligibleCinematicAudioVersion = getEligibleCinematicAudioVersion(v17, &v37);

        if (EligibleCinematicAudioVersion)
        {
          v19 = [v16 formatDescriptions];
          v20 = [v19 objectAtIndexedSubscript:0];

          mFormatID = CMAudioFormatDescriptionGetRichestDecodableFormat(v20)->mASBD.mFormatID;
          v22 = mFormatID == 1634754915 || mFormatID == 1902211171;
          v23 = v22 || mFormatID == 1667330147;
          if (v23 && HIWORD(v37) << 16 == 0x10000)
          {
            break;
          }
        }

        if (v13 == ++v15)
        {
          v13 = [v11 countByEnumeratingWithState:&v33 objects:v38 count:16];
          if (v13)
          {
            goto LABEL_7;
          }

          goto LABEL_22;
        }
      }

      v25 = v16;

      if (!v25)
      {
        goto LABEL_25;
      }

      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __59__CNAssetSpatialAudioInfo_loadFromAsset_completionHandler___block_invoke_11;
      v29[3] = &unk_278A160E0;
      v30 = v25;
      v32 = *(v28 + 40);
      v31 = *(v28 + 32);
      v10 = v25;
      [v10 loadValuesAsynchronouslyForKeys:&unk_284A06F88 completionHandler:v29];

      v7 = 0;
    }

    else
    {
LABEL_22:

LABEL_25:
      v26 = _CNLogSystem(v24);
      v7 = 0;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        __59__CNAssetSpatialAudioInfo_loadFromAsset_completionHandler___block_invoke_cold_2();
      }

      v27 = *(v28 + 40);
      v10 = _CNCinematicError(3, 0);
      (*(v27 + 16))(v27, 0, v10);
    }
  }
}

void __59__CNAssetSpatialAudioInfo_loadFromAsset_completionHandler___block_invoke_11(uint64_t a1)
{
  v2 = *(a1 + 32);
  v14 = 0;
  v3 = [v2 statusOfValueForKey:@"playable" error:&v14];
  v4 = v14;
  v5 = v4;
  if (v3 != 2)
  {
    v9 = _CNLogSystem(v4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __59__CNAssetSpatialAudioInfo_loadFromAsset_completionHandler___block_invoke_11_cold_1();
    }

    goto LABEL_8;
  }

  v6 = [*(a1 + 32) isPlayable];
  if (!v6)
  {
    v9 = _CNLogSystem(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __59__CNAssetSpatialAudioInfo_loadFromAsset_completionHandler___block_invoke_11_cold_2();
    }

LABEL_8:

    v10 = *(a1 + 48);
    v8 = _CNCinematicError(3, 0);
    (*(v10 + 16))(v10, 0, v8);
    goto LABEL_9;
  }

  v7 = *(a1 + 32);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__CNAssetSpatialAudioInfo_loadFromAsset_completionHandler___block_invoke_2;
  v11[3] = &unk_278A160B8;
  v13 = *(a1 + 48);
  v12 = *(a1 + 32);
  [CNAssetSpatialAudioInfo findAssociatedRemixMetadata:v7 completionHandler:v11];

  v8 = v13;
LABEL_9:
}

void __59__CNAssetSpatialAudioInfo_loadFromAsset_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v6 = v3;
  if (v3)
  {
    v5 = [[CNAssetSpatialAudioInfo alloc] initWithSpatialAudioTrack:*(a1 + 32) metadataBlob:v3];
    (*(v4 + 16))(v4, v5, 0);
  }

  else
  {
    v5 = _CNCinematicError(3, 0);
    (*(v4 + 16))(v4, 0, v5);
  }
}

+ (void)checkIfContainsSpatialAudio:(id)audio completionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__CNAssetSpatialAudioInfo_checkIfContainsSpatialAudio_completionHandler___block_invoke;
  v7[3] = &unk_278A16108;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [CNAssetSpatialAudioInfo loadFromAsset:audio completionHandler:v7];
}

uint64_t __73__CNAssetSpatialAudioInfo_checkIfContainsSpatialAudio_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = a3 == 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  return (*(v3 + 16))(v3, v5);
}

- (id)audioMixWithEffectIntensity:(float)intensity renderingStyle:(int64_t)style
{
  v17[1] = *MEMORY[0x277D85DE8];
  audioMix = [MEMORY[0x277CE6538] audioMix];
  v8 = objc_alloc_init(MEMORY[0x277CE6540]);
  [v8 setTrackID:{-[AVAssetTrack trackID](self->_spatialAudioTrack, "trackID")}];
  v15 = *MEMORY[0x277CC08F0];
  v14 = v15;
  v16 = *(MEMORY[0x277CC08F0] + 16);
  v9 = v16;
  [v8 setDialogMixBias:&v15 atTime:{COERCE_DOUBLE(__PAIR64__(DWORD1(v15), LODWORD(intensity)))}];
  *&v10 = style;
  v15 = v14;
  v16 = v9;
  [v8 setRenderingStyle:&v15 atTime:v10];
  v11 = [MEMORY[0x277CE6488] cinematicAudioEffectWithData:self->_metadataBlob];
  [v8 addEffect:v11];

  v17[0] = v8;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  [audioMix setInputParameters:v12];

  return audioMix;
}

- (id)assetReaderOutputSettingsForContentType:(int64_t)type
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (type)
  {
    if (type != 1)
    {
      goto LABEL_6;
    }

    v5 = FOAPlusDialogChannelLayoutAsData();
  }

  else
  {
    v11[0] = xmmword_236F67F70;
    v11[1] = unk_236F67F80;
    v5 = [MEMORY[0x277CBEA90] dataWithBytes:v11 length:32];
  }

  v6 = v5;
  [dictionary setValue:v5 forKey:*MEMORY[0x277CB8250]];

LABEL_6:
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1819304813];
  [dictionary setValue:v7 forKey:*MEMORY[0x277CB8280]];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:32];
  [dictionary setValue:v8 forKey:*MEMORY[0x277CB8288]];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [dictionary setValue:v9 forKey:*MEMORY[0x277CB82A0]];

  return dictionary;
}

- (id)assetWriterInputSettingsForContentType:(int64_t)type
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  formatDescriptions = [(AVAssetTrack *)self->_spatialAudioTrack formatDescriptions];
  v7 = [formatDescriptions objectAtIndexedSubscript:0];

  StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(v7);
  if (type)
  {
    if (type != 1)
    {
      goto LABEL_6;
    }

    v9 = FOAPlusDialogChannelLayoutAsData();
    [dictionary setValue:v9 forKey:*MEMORY[0x277CB8250]];

    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:StreamBasicDescription->mFormatID];
    [dictionary setValue:v10 forKey:*MEMORY[0x277CB8280]];

    v11 = [MEMORY[0x277CCABB0] numberWithDouble:StreamBasicDescription->mSampleRate];
    [dictionary setValue:v11 forKey:*MEMORY[0x277CB82E0]];

    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:480000];
    [dictionary setValue:v12 forKey:*MEMORY[0x277CB8258]];

    v13 = [MEMORY[0x277CCABB0] numberWithInteger:3];
    v14 = MEMORY[0x277CB8270];
  }

  else
  {
    v19[0] = xmmword_236F67F70;
    v19[1] = unk_236F67F80;
    v15 = [MEMORY[0x277CBEA90] dataWithBytes:v19 length:32];
    [dictionary setValue:v15 forKey:*MEMORY[0x277CB8250]];

    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1633772320];
    [dictionary setValue:v16 forKey:*MEMORY[0x277CB8280]];

    v17 = [MEMORY[0x277CCABB0] numberWithDouble:StreamBasicDescription->mSampleRate];
    [dictionary setValue:v17 forKey:*MEMORY[0x277CB82E0]];

    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:128000];
    v14 = MEMORY[0x277CB8258];
  }

  [dictionary setValue:v13 forKey:*v14];

LABEL_6:

  return dictionary;
}

void __73__CNAssetSpatialAudioInfo_findAssociatedRemixMetadata_completionHandler___block_invoke_cold_2(NSObject *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = **&MEMORY[0x277CC08F0];
  Seconds = CMTimeGetSeconds(&v3);
  LODWORD(v3.value) = 134217984;
  *(&v3.value + 4) = Seconds;
  _os_log_error_impl(&dword_236F52000, a1, OS_LOG_TYPE_ERROR, "failed to create cursor at cursorTime %0.3f, bad movie", &v3, 0xCu);
}

@end