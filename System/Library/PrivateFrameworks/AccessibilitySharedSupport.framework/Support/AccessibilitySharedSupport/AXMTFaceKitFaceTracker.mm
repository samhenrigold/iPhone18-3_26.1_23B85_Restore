@interface AXMTFaceKitFaceTracker
+ (NSDictionary)_faceKitCreationOptions;
+ (__n128)_poseRotationMatrixFromArray:(void *)array;
+ (__n128)_poseTranslationMatrixFromArray:(void *)array;
+ (id)_backupIntrinsicsMatrixForiOS;
+ (id)_faceKitProcessOptionsForSampleBuffer:(opaqueCMSampleBuffer *)buffer detectedFaceInfo:(id)info callback:(id)callback;
+ (id)_intrinsicsArrayFromMatrix:(__n128)matrix;
- ($AA6A45B2DFCED8527C3A0E9A46B0D48F)_updateAXExpressions:(SEL)expressions withFaceKitLiteExpresion:(id *)expresion faceKitLiteExpressionActivation:(id)activation;
- (AXMTFaceKitFaceTracker)initWithFaceKitPipeline:(BOOL)pipeline;
- (AXMTFaceKitFaceTrackerDelegate)delegate;
- (BOOL)_videoFrameisValidForProcessing:(opaqueCMSampleBuffer *)processing;
- (id)_generateFaceKitResultForLiteOutput:(id)output imageProcessedInExclaves:(BOOL)exclaves;
- (id)_generateFaceKitResultForVanillaOutput:(id)output withSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (id)_handleFaceBlendShapes:(id)shapes;
- (unint64_t)_axFacialExpressionActivationForFaceKitLiteExpresionActivation:(unsigned __int8)activation;
- (void)_processFaceKitOnVideoFrame:(opaqueCMSampleBuffer *)frame;
- (void)_processFaceKitResults:(__CFDictionary *)results withSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)_updateFaceInfoIfNeededWithMetadata:(id)metadata;
- (void)dealloc;
- (void)didUpdateVideoResolution:(CGSize)resolution;
- (void)failedToTrackFaceWithError:(id)error;
- (void)processTrackedFacesMetadata:(id)metadata;
- (void)processVideoFrame:(opaqueCMSampleBuffer *)frame;
- (void)processVideoFrame:(opaqueCMSampleBuffer *)frame metadata:(id)metadata;
- (void)reset;
@end

@implementation AXMTFaceKitFaceTracker

- (AXMTFaceKitFaceTracker)initWithFaceKitPipeline:(BOOL)pipeline
{
  pipelineCopy = pipeline;
  v26.receiver = self;
  v26.super_class = AXMTFaceKitFaceTracker;
  v4 = [(AXMTFaceKitFaceTracker *)&v26 init];
  if (!v4)
  {
    goto LABEL_30;
  }

  if (pipelineCopy)
  {
    v25 = 0;
    _faceKitCreationOptions = [objc_opt_class() _faceKitCreationOptions];
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v6 = off_100054690;
    v35 = off_100054690;
    if (!off_100054690)
    {
      v27 = _NSConcreteStackBlock;
      v28 = 3221225472;
      v29 = sub_100027DA8;
      v30 = &unk_100048BA8;
      v31 = &v32;
      v7 = sub_100027DF8();
      v8 = dlsym(v7, "CVAFaceTrackingCreate");
      *(v31[1] + 24) = v8;
      off_100054690 = *(v31[1] + 24);
      v6 = v33[3];
    }

    _Block_object_dispose(&v32, 8);
    if (!v6)
    {
LABEL_33:
      sub_100029794();
      v24 = v23;
      _Block_object_dispose(&v32, 8);
      _Unwind_Resume(v24);
    }

    v9 = kCFAllocatorDefault;
    v10 = v6(kCFAllocatorDefault, _faceKitCreationOptions, &v25);

    v11 = v25;
    v12 = AXSSLogForCategory();
    v13 = v12;
    if (v10)
    {
      v14 = 1;
    }

    else
    {
      v14 = v11 == 0;
    }

    if (v14)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100028DC0();
      }

      goto LABEL_29;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_100028E34(&v25, v13);
    }

    v4->__faceKitRef = v25;
  }

  else
  {
    v15 = AXSSLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_100028D7C(v15);
    }

    v9 = kCFAllocatorDefault;
  }

  v25 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v17 = off_1000546A0;
  v35 = off_1000546A0;
  if (!off_1000546A0)
  {
    v27 = _NSConcreteStackBlock;
    v28 = 3221225472;
    v29 = sub_100027F6C;
    v30 = &unk_100048BA8;
    v31 = &v32;
    v18 = sub_100027DF8();
    v19 = dlsym(v18, "CVAFaceTrackingLiteFilterCreate");
    *(v31[1] + 24) = v19;
    off_1000546A0 = *(v31[1] + 24);
    v17 = v33[3];
  }

  _Block_object_dispose(&v32, 8);
  if (!v17)
  {
    sub_100029794();
    goto LABEL_33;
  }

  if (v17(v9, &v25))
  {
    v20 = 1;
  }

  else
  {
    v20 = v25 == 0;
  }

  if (!v20)
  {
    v4->__faceKitLiteFilterRef = v25;
LABEL_30:
    v21 = v4;
    goto LABEL_31;
  }

  v13 = AXSSLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_100028EB0();
  }

LABEL_29:

  v21 = 0;
LABEL_31:

  return v21;
}

- (void)dealloc
{
  faceKitRef = self->__faceKitRef;
  if (faceKitRef)
  {
    CFRelease(faceKitRef);
    self->__faceKitRef = 0;
  }

  v4.receiver = self;
  v4.super_class = AXMTFaceKitFaceTracker;
  [(AXMTFaceKitFaceTracker *)&v4 dealloc];
}

- (void)reset
{
  [(AXMTFaceKitFaceTracker *)self setLastResult:0];

  [(AXMTFaceKitFaceTracker *)self set_initialFaceInfo:0];
}

- (void)processVideoFrame:(opaqueCMSampleBuffer *)frame
{
  if ([(AXMTFaceKitFaceTracker *)self _videoFrameisValidForProcessing:?])
  {

    [(AXMTFaceKitFaceTracker *)self _processFaceKitOnVideoFrame:frame];
  }
}

- (void)processVideoFrame:(opaqueCMSampleBuffer *)frame metadata:(id)metadata
{
  metadataCopy = metadata;
  if ([(AXMTFaceKitFaceTracker *)self _videoFrameisValidForProcessing:frame])
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = sub_100022044;
    v12 = sub_100022054;
    v13 = 0;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10002205C;
    v7[3] = &unk_100049158;
    v7[4] = &v8;
    [metadataCopy enumerateObjectsUsingBlock:v7];
    if (v9[5])
    {
      [(AXMTFaceKitFaceTracker *)self _updateFaceInfoIfNeededWithMetadata:?];
      [(AXMTFaceKitFaceTracker *)self _processFaceKitOnVideoFrame:frame];
    }

    _Block_object_dispose(&v8, 8);
  }
}

- (void)processTrackedFacesMetadata:(id)metadata
{
  metadataCopy = metadata;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_100022044;
  v12 = sub_100022054;
  v13 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100022218;
  v7[3] = &unk_100049158;
  v7[4] = &v8;
  [metadataCopy enumerateObjectsUsingBlock:v7];
  v5 = v9[5];
  if (v5)
  {
    payload = [v5 payload];
    [(AXMTFaceKitFaceTracker *)self _processFaceKitResults:payload withSampleBuffer:0];
  }

  _Block_object_dispose(&v8, 8);
}

- (void)failedToTrackFaceWithError:(id)error
{
  errorCopy = error;
  delegate = [(AXMTFaceKitFaceTracker *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [[AXMTFaceKitResult alloc] initWithError:errorCopy];
    delegate2 = [(AXMTFaceKitFaceTracker *)self delegate];
    [delegate2 faceKitFaceTracker:self updatedResult:v6];
  }
}

- (void)didUpdateVideoResolution:(CGSize)resolution
{
  v4 = [NSValue valueWithSize:resolution.width, resolution.height];
  [(AXMTFaceKitFaceTracker *)self set_referenceDimensionsValue:v4];
}

- (BOOL)_videoFrameisValidForProcessing:(opaqueCMSampleBuffer *)processing
{
  if (processing && [(AXMTFaceKitFaceTracker *)self _faceKitRef])
  {
    return 1;
  }

  v6 = AXSSLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100028F24(processing, self, v6);
  }

  return 0;
}

- (void)_processFaceKitOnVideoFrame:(opaqueCMSampleBuffer *)frame
{
  v5 = dispatch_semaphore_create(0);
  v6 = objc_opt_class();
  _initialFaceInfo = [(AXMTFaceKitFaceTracker *)self _initialFaceInfo];
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_100022658;
  v22 = &unk_100049180;
  selfCopy = self;
  frameCopy = frame;
  v8 = v5;
  v24 = v8;
  v9 = [v6 _faceKitProcessOptionsForSampleBuffer:frame detectedFaceInfo:_initialFaceInfo callback:&v19];

  v10 = [(AXMTFaceKitFaceTracker *)self _faceKitRef:v19];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v11 = off_1000546A8;
  v34 = off_1000546A8;
  if (!off_1000546A8)
  {
    v26 = _NSConcreteStackBlock;
    v27 = 3221225472;
    v28 = sub_100027FBC;
    v29 = &unk_100048BA8;
    v30 = &v31;
    v12 = sub_100027DF8();
    v13 = dlsym(v12, "CVAFaceTrackingProcess");
    *(v30[1] + 24) = v13;
    off_1000546A8 = *(v30[1] + 24);
    v11 = v32[3];
  }

  _Block_object_dispose(&v31, 8);
  if (!v11)
  {
    sub_100029794();
    v18 = v17;
    _Block_object_dispose(&v31, 8);
    _Unwind_Resume(v18);
  }

  v14 = v11(v10, v9);
  if (v14)
  {
    v15 = v14;
    v16 = AXSSLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100028FD4(frame, v15, v16);
    }
  }

  else
  {
    dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  }
}

- (id)_generateFaceKitResultForVanillaOutput:(id)output withSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  outputCopy = output;
  v5 = outputCopy;
  if (qword_100054608 != -1)
  {
    sub_10002905C();
  }

  v37 = v5;
  v38 = [v5 objectForKeyedSubscript:sub_100022FAC(outputCopy)];
  if (![v38 count])
  {
    v27 = 0;
    goto LABEL_33;
  }

  firstObject = [v38 firstObject];
  v6 = firstObject;
  if (firstObject)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v8 = [firstObject objectForKeyedSubscript:sub_1000230A0(isKindOfClass)];
      v48 = 0;
      v49 = &v48;
      v50 = 0x2020000000;
      v9 = qword_1000546D0;
      v51 = qword_1000546D0;
      if (!qword_1000546D0)
      {
        v43 = _NSConcreteStackBlock;
        v44 = 3221225472;
        v45 = sub_10002814C;
        v46 = &unk_100048BA8;
        v47 = &v48;
        v10 = sub_100027DF8();
        v49[3] = dlsym(v10, "kCVAFaceTracking_Animation");
        qword_1000546D0 = *(v47[1] + 24);
        v9 = v49[3];
      }

      _Block_object_dispose(&v48, 8);
      if (v9)
      {
        v33 = [v8 objectForKeyedSubscript:*v9];

        if (!v33)
        {
          v26 = 0;
LABEL_29:
          v28 = [AXMTFaceKitXNUResult alloc];
          v29 = qword_1000545F8;
          _referenceDimensionsValue = [(AXMTFaceKitFaceTracker *)self _referenceDimensionsValue];
          v27 = [(AXMTFaceKitXNUResult *)v28 initWithFaceKitTrackedFaceDictionary:firstObject semanticsDictionary:v29 sampleBuffer:buffer expressions:v26 referenceDimensionsValue:_referenceDimensionsValue];

          if (v27)
          {
            v31 = v27;
          }

          v6 = firstObject;
          goto LABEL_32;
        }

        v48 = 0;
        v49 = &v48;
        v50 = 0x2020000000;
        v11 = qword_1000546D8;
        v51 = qword_1000546D8;
        if (!qword_1000546D8)
        {
          v43 = _NSConcreteStackBlock;
          v44 = 3221225472;
          v45 = sub_10002819C;
          v46 = &unk_100048BA8;
          v47 = &v48;
          v12 = sub_100027DF8();
          v49[3] = dlsym(v12, "kCVAFaceTracking_AnimationBlendshapes");
          qword_1000546D8 = *(v47[1] + 24);
          v11 = v49[3];
        }

        _Block_object_dispose(&v48, 8);
        if (v11)
        {
          v13 = [v33 objectForKeyedSubscript:*v11];
          v14 = +[NSMutableDictionary dictionary];
          if (v13)
          {
            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            v15 = qword_100054600;
            v16 = [v15 countByEnumeratingWithState:&v39 objects:v52 count:16];
            if (v16)
            {
              v17 = *v40;
              do
              {
                for (i = 0; i != v16; i = i + 1)
                {
                  if (*v40 != v17)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v19 = *(*(&v39 + 1) + 8 * i);
                  v20 = [qword_100054600 objectForKeyedSubscript:{v19, v33}];
                  unsignedIntValue = [v20 unsignedIntValue];

                  v22 = v13;
                  LODWORD(v23) = *([v13 bytes] + unsignedIntValue);
                  v24 = [NSNumber numberWithFloat:v23];
                  [v14 setObject:v24 forKey:v19];
                }

                v16 = [v15 countByEnumeratingWithState:&v39 objects:v52 count:16];
              }

              while (v16);
            }

            v25 = [v33 objectForKeyedSubscript:@"tongue_out"];
            if (v25)
            {
              [v14 setObject:v25 forKey:@"tongue_out"];
            }

            v26 = [(AXMTFaceKitFaceTracker *)self _handleFaceBlendShapes:v14, v33];
          }

          else
          {
            v26 = 0;
          }

          goto LABEL_29;
        }
      }

      sub_100029794();
      __break(1u);
    }
  }

  v27 = 0;
LABEL_32:

LABEL_33:

  return v27;
}

- (id)_generateFaceKitResultForLiteOutput:(id)output imageProcessedInExclaves:(BOOL)exclaves
{
  exclavesCopy = exclaves;
  outputCopy = output;
  v46 = [outputCopy objectForKeyedSubscript:sub_1000238F4(outputCopy)];
  *&v52 = 0;
  *(&v52 + 1) = &v52;
  *&v53 = 0x2020000000;
  v5 = qword_1000546E8;
  *(&v53 + 1) = qword_1000546E8;
  if (!qword_1000546E8)
  {
    *&v61 = _NSConcreteStackBlock;
    *(&v61 + 1) = 3221225472;
    *&v62 = sub_10002823C;
    *(&v62 + 1) = &unk_100048BA8;
    *&v63 = &v52;
    v6 = sub_100027DF8();
    v7 = dlsym(v6, "kCVAFaceTrackingLiteFilter_ClientData");
    *(*(v63 + 8) + 24) = v7;
    qword_1000546E8 = *(*(v63 + 8) + 24);
    v5 = *(*(&v52 + 1) + 24);
  }

  _Block_object_dispose(&v52, 8);
  if (!v5)
  {
    goto LABEL_35;
  }

  v8 = [outputCopy objectForKeyedSubscript:*v5];
  *&v52 = 0;
  *(&v52 + 1) = &v52;
  *&v53 = 0x2020000000;
  v9 = qword_1000546F0;
  *(&v53 + 1) = qword_1000546F0;
  if (!qword_1000546F0)
  {
    *&v61 = _NSConcreteStackBlock;
    *(&v61 + 1) = 3221225472;
    *&v62 = sub_10002828C;
    *(&v62 + 1) = &unk_100048BA8;
    *&v63 = &v52;
    v10 = sub_100027DF8();
    v11 = dlsym(v10, "kCVAFaceTrackingLiteFilter_ClientDataAccessibility");
    *(*(v63 + 8) + 24) = v11;
    qword_1000546F0 = *(*(v63 + 8) + 24);
    v9 = *(*(&v52 + 1) + 24);
  }

  _Block_object_dispose(&v52, 8);
  if (!v9)
  {
    goto LABEL_35;
  }

  v12 = [v8 objectForKeyedSubscript:*v9];

  v44 = [v46 objectForKeyedSubscript:sub_100022FAC(v13)];
  firstObject = [v44 firstObject];
  v43 = [firstObject objectForKeyedSubscript:sub_1000230A0(firstObject)];
  if (v12 && v43)
  {
    *&v52 = 0;
    *(&v52 + 1) = &v52;
    *&v53 = 0x2020000000;
    v15 = qword_1000546F8;
    *(&v53 + 1) = qword_1000546F8;
    if (!qword_1000546F8)
    {
      *&v61 = _NSConcreteStackBlock;
      *(&v61 + 1) = 3221225472;
      *&v62 = sub_1000282DC;
      *(&v62 + 1) = &unk_100048BA8;
      *&v63 = &v52;
      v16 = sub_100027DF8();
      v17 = dlsym(v16, "kCVAFaceTrackingLiteFilterClientAccessibility_Expressions");
      *(*(v63 + 8) + 24) = v17;
      qword_1000546F8 = *(*(v63 + 8) + 24);
      v15 = *(*(&v52 + 1) + 24);
    }

    _Block_object_dispose(&v52, 8);
    if (v15)
    {
      v18 = [v12 objectForKeyedSubscript:*v15];
      v65 = 0;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      objc_msgSend_emptyAccessibilityExpressions(AXSSMotionTrackingExpressionConfiguration_Exclave);
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v19 = v18;
      v20 = [v19 countByEnumeratingWithState:&v57 objects:v66 count:16];
      if (v20)
      {
        v21 = *v58;
        do
        {
          for (i = 0; i != v20; i = i + 1)
          {
            if (*v58 != v21)
            {
              objc_enumerationMutation(v19);
            }

            v23 = [v19 objectForKeyedSubscript:*(*(&v57 + 1) + 8 * i)];
            [v23 charValue];
            v49 = v63;
            v50 = v64;
            v51 = v65;
            v47 = v61;
            v48 = v62;
            objc_msgSend__updateAXExpressions_withFaceKitLiteExpresion_faceKitLiteExpressionActivation_(self);
            v63 = v54;
            v64 = v55;
            v65 = v56;
            v61 = v52;
            v62 = v53;
          }

          v20 = [v19 countByEnumeratingWithState:&v57 objects:v66 count:16];
        }

        while (v20);
      }

      *&v47 = 0;
      *(&v47 + 1) = &v47;
      *&v48 = 0x2020000000;
      v24 = qword_100054700;
      *(&v48 + 1) = qword_100054700;
      if (!qword_100054700)
      {
        *&v52 = _NSConcreteStackBlock;
        *(&v52 + 1) = 3221225472;
        *&v53 = sub_10002832C;
        *(&v53 + 1) = &unk_100048BA8;
        *&v54 = &v47;
        v25 = sub_100027DF8();
        v26 = dlsym(v25, "kCVAFaceTrackingLiteFilterClientAccessibility_Landmarks");
        *(*(v54 + 8) + 24) = v26;
        qword_100054700 = *(*(v54 + 8) + 24);
        v24 = *(*(&v47 + 1) + 24);
      }

      _Block_object_dispose(&v47, 8);
      if (v24)
      {
        v27 = [v12 objectForKeyedSubscript:*v24];
        *&v47 = 0;
        *(&v47 + 1) = &v47;
        *&v48 = 0x2020000000;
        v28 = qword_100054708;
        *(&v48 + 1) = qword_100054708;
        if (!qword_100054708)
        {
          *&v52 = _NSConcreteStackBlock;
          *(&v52 + 1) = 3221225472;
          *&v53 = sub_10002837C;
          *(&v53 + 1) = &unk_100048BA8;
          *&v54 = &v47;
          v29 = sub_100027DF8();
          v30 = dlsym(v29, "kCVAFaceTrackingLiteFilterClientAccessibility_LandmarkNoseBaseCenter");
          *(*(v54 + 8) + 24) = v30;
          qword_100054708 = *(*(v54 + 8) + 24);
          v28 = *(*(&v47 + 1) + 24);
        }

        _Block_object_dispose(&v47, 8);
        if (v28)
        {
          v31 = [v27 objectForKeyedSubscript:*v28];

          if ([v31 count] == 2)
          {
            v32 = [v31 objectAtIndexedSubscript:0];
            v33 = [v31 objectAtIndexedSubscript:1];
            [v32 doubleValue];
            v35 = v34;
            [v33 doubleValue];
            v37 = [NSValue valueWithPoint:v35, v36];
            v38 = [AXMTFaceKitExclavesResult alloc];
            _referenceDimensionsValue = [(AXMTFaceKitFaceTracker *)self _referenceDimensionsValue];
            v54 = v63;
            v55 = v64;
            v56 = v65;
            v52 = v61;
            v53 = v62;
            v40 = [(AXMTFaceKitExclavesResult *)v38 initWithFaceKitLiteSharedDataDictionary:v46 expressions:&v52 noseBaseCenter:v37 referenceDimensionsValue:_referenceDimensionsValue imageProcessedInExclaves:exclavesCopy];
          }

          else
          {
            v40 = 0;
          }

          goto LABEL_32;
        }
      }

      sub_100029794();
LABEL_37:
      __break(1u);
    }

LABEL_35:
    sub_100029794();
    goto LABEL_37;
  }

  v19 = AXSSLogForCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    sub_1000290E4();
  }

  v40 = 0;
LABEL_32:

  return v40;
}

- ($AA6A45B2DFCED8527C3A0E9A46B0D48F)_updateAXExpressions:(SEL)expressions withFaceKitLiteExpresion:(id *)expresion faceKitLiteExpressionActivation:(id)activation
{
  v6 = a6;
  activationCopy = activation;
  v11 = [(AXMTFaceKitFaceTracker *)self _axFacialExpressionActivationForFaceKitLiteExpresionActivation:v6];
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v12 = qword_100054710;
  v37 = qword_100054710;
  if (!qword_100054710)
  {
    v13 = sub_100027DF8();
    v35[3] = dlsym(v13, "kCVAFaceTrackingLiteFilterClientAccessibility_ExpressionBrowsUp");
    qword_100054710 = v35[3];
    v12 = v35[3];
  }

  _Block_object_dispose(&v34, 8);
  if (!v12)
  {
    sub_100029794();
LABEL_39:
    sub_100029794();
LABEL_40:
    sub_100029794();
LABEL_41:
    sub_100029794();
LABEL_42:
    sub_100029794();
    goto LABEL_43;
  }

  v14 = [activationCopy isEqualToString:*v12];
  p_var1 = expresion;
  if (v14)
  {
LABEL_36:
    p_var1->var0 = v11;
    goto LABEL_37;
  }

  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v16 = qword_100054718;
  v37 = qword_100054718;
  if (!qword_100054718)
  {
    v17 = sub_100027DF8();
    v35[3] = dlsym(v17, "kCVAFaceTrackingLiteFilterClientAccessibility_ExpressionJawOpen");
    qword_100054718 = v35[3];
    v16 = v35[3];
  }

  _Block_object_dispose(&v34, 8);
  if (!v16)
  {
    goto LABEL_39;
  }

  if ([activationCopy isEqualToString:*v16])
  {
    p_var1 = &expresion->var1;
    goto LABEL_36;
  }

  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v18 = qword_100054720;
  v37 = qword_100054720;
  if (!qword_100054720)
  {
    v19 = sub_100027DF8();
    v35[3] = dlsym(v19, "kCVAFaceTrackingLiteFilterClientAccessibility_ExpressionSmile");
    qword_100054720 = v35[3];
    v18 = v35[3];
  }

  _Block_object_dispose(&v34, 8);
  if (!v18)
  {
    goto LABEL_40;
  }

  if ([activationCopy isEqualToString:*v18])
  {
    p_var1 = &expresion->var2;
    goto LABEL_36;
  }

  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v20 = qword_100054728;
  v37 = qword_100054728;
  if (!qword_100054728)
  {
    v21 = sub_100027DF8();
    v35[3] = dlsym(v21, "kCVAFaceTrackingLiteFilterClientAccessibility_ExpressionTongueOut");
    qword_100054728 = v35[3];
    v20 = v35[3];
  }

  _Block_object_dispose(&v34, 8);
  if (!v20)
  {
    goto LABEL_41;
  }

  if ([activationCopy isEqualToString:*v20])
  {
    p_var1 = &expresion->var3;
    goto LABEL_36;
  }

  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v22 = qword_100054730;
  v37 = qword_100054730;
  if (!qword_100054730)
  {
    v23 = sub_100027DF8();
    v35[3] = dlsym(v23, "kCVAFaceTrackingLiteFilterClientAccessibility_ExpressionEyeBlink");
    qword_100054730 = v35[3];
    v22 = v35[3];
  }

  _Block_object_dispose(&v34, 8);
  if (!v22)
  {
    goto LABEL_42;
  }

  if ([activationCopy isEqualToString:*v22])
  {
    p_var1 = &expresion->var4;
    goto LABEL_36;
  }

  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v24 = qword_100054738;
  v37 = qword_100054738;
  if (!qword_100054738)
  {
    v25 = sub_100027DF8();
    v35[3] = dlsym(v25, "kCVAFaceTrackingLiteFilterClientAccessibility_ExpressionNoseSneer");
    qword_100054738 = v35[3];
    v24 = v35[3];
  }

  _Block_object_dispose(&v34, 8);
  if (!v24)
  {
LABEL_43:
    sub_100029794();
    v33 = v32;
    _Block_object_dispose(&v34, 8);
    _Unwind_Resume(v33);
  }

  v26 = [activationCopy isEqualToString:*v24];
  if (v26)
  {
    p_var1 = &expresion->var5;
    goto LABEL_36;
  }

  v27 = [activationCopy isEqualToString:sub_100023F84(v26)];
  if (v27)
  {
    p_var1 = &expresion->var6;
    goto LABEL_36;
  }

  v28 = [activationCopy isEqualToString:sub_100024078(v27)];
  if (v28)
  {
    p_var1 = &expresion->var8;
    goto LABEL_36;
  }

  if ([activationCopy isEqualToString:sub_10002416C(v28)])
  {
    p_var1 = &expresion->var7;
    goto LABEL_36;
  }

LABEL_37:
  v29 = *&expresion->var6;
  *&retstr->var4 = *&expresion->var4;
  *&retstr->var6 = v29;
  retstr->var8 = expresion->var8;
  v30 = *&expresion->var2;
  *&retstr->var0 = *&expresion->var0;
  *&retstr->var2 = v30;

  return result;
}

- (unint64_t)_axFacialExpressionActivationForFaceKitLiteExpresionActivation:(unsigned __int8)activation
{
  if ((activation - 1) < 3)
  {
    return (activation - 1) + 1;
  }

  else
  {
    return 0;
  }
}

- (void)_processFaceKitResults:(__CFDictionary *)results withSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  resultsCopy = results;
  v7 = [(__CFDictionary *)resultsCopy objectForKeyedSubscript:sub_1000238F4(resultsCopy)];
  v8 = v7;
  if (buffer)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7 == 0;
  }

  v10 = !v9;
  if (v7)
  {
    goto LABEL_18;
  }

  _faceKitLiteFilterRef = [(AXMTFaceKitFaceTracker *)self _faceKitLiteFilterRef];
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v12 = off_100054758;
  v47 = off_100054758;
  if (!off_100054758)
  {
    v39 = _NSConcreteStackBlock;
    v40 = 3221225472;
    v41 = sub_10002869C;
    v42 = &unk_100048BA8;
    v43 = &v44;
    v13 = sub_100027DF8();
    v45[3] = dlsym(v13, "CVAFaceTrackingLiteFilterProcessVanilla");
    off_100054758 = *(v43[1] + 24);
    v12 = v45[3];
  }

  _Block_object_dispose(&v44, 8);
  if (!v12)
  {
    sub_100029794();
LABEL_32:
    sub_100029794();
    goto LABEL_33;
  }

  v12(_faceKitLiteFilterRef, resultsCopy);
  v38 = 0;
  v37 = 0;
  _faceKitLiteFilterRef2 = [(AXMTFaceKitFaceTracker *)self _faceKitLiteFilterRef];
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v15 = off_100054768;
  v47 = off_100054768;
  if (!off_100054768)
  {
    v39 = _NSConcreteStackBlock;
    v40 = 3221225472;
    v41 = sub_10002873C;
    v42 = &unk_100048BA8;
    v43 = &v44;
    v16 = sub_100027DF8();
    v45[3] = dlsym(v16, "CVAFaceTrackingLiteFilterGetOutput");
    off_100054768 = *(v43[1] + 24);
    v15 = v45[3];
  }

  _Block_object_dispose(&v44, 8);
  if (!v15)
  {
    goto LABEL_32;
  }

  v17 = v15(_faceKitLiteFilterRef2);
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v18 = off_100054760;
  v47 = off_100054760;
  if (!off_100054760)
  {
    v39 = _NSConcreteStackBlock;
    v40 = 3221225472;
    v41 = sub_1000286EC;
    v42 = &unk_100048BA8;
    v43 = &v44;
    v19 = sub_100027DF8();
    v45[3] = dlsym(v19, "CVAFaceTrackingLiteFilterCopyDecodedOutput");
    off_100054760 = *(v43[1] + 24);
    v18 = v45[3];
  }

  _Block_object_dispose(&v44, 8);
  if (!v18)
  {
LABEL_33:
    sub_100029794();
    v36 = v35;
    _Block_object_dispose(&v44, 8);
    _Unwind_Resume(v36);
  }

  v18(v17, &v38, &v37);
  v20 = v38;

  resultsCopy = v20;
LABEL_18:
  v21 = [(__CFDictionary *)resultsCopy objectForKeyedSubscript:sub_1000238F4(v7)];

  if (v21)
  {
    [(AXMTFaceKitFaceTracker *)self _generateFaceKitResultForLiteOutput:resultsCopy imageProcessedInExclaves:v10];
  }

  else
  {
    [(AXMTFaceKitFaceTracker *)self _generateFaceKitResultForVanillaOutput:resultsCopy withSampleBuffer:buffer];
  }
  v22 = ;
  if (!v22)
  {
    v23 = AXSSLogForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_100029164();
    }

    [(AXMTFaceKitFaceTracker *)self set_initialFaceInfo:0];
    lastResult = [(AXMTFaceKitFaceTracker *)self lastResult];
    error = [lastResult error];
    if (error)
    {
      lastResult2 = [(AXMTFaceKitFaceTracker *)self lastResult];
      error2 = [lastResult2 error];
      v28 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [error2 code]);
    }

    else
    {
      v28 = 0;
    }

    v29 = [AXMTUtilities errorCodeForFaceKitPayload:resultsCopy lastReportedFailureNumber:v28];
    v30 = [NSError alloc];
    v31 = [v30 initWithDomain:AXSSMotionTrackingErrorDomain code:v29 userInfo:0];
    v22 = [[AXMTFaceKitResult alloc] initWithError:v31];
  }

  [(AXMTFaceKitFaceTracker *)self setLastResult:v22];
  delegate = [(AXMTFaceKitFaceTracker *)self delegate];
  v33 = objc_opt_respondsToSelector();

  if (v33)
  {
    delegate2 = [(AXMTFaceKitFaceTracker *)self delegate];
    [delegate2 faceKitFaceTracker:self updatedResult:v22];
  }
}

- (void)_updateFaceInfoIfNeededWithMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = [[AXMTFaceKitFaceTrackerFaceInfo alloc] initWithFaceMetadata:metadataCopy];

  [(AXMTFaceKitFaceTracker *)self set_initialFaceInfo:v5];
}

- (id)_handleFaceBlendShapes:(id)shapes
{
  shapesCopy = shapes;
  if (qword_100054618 != -1)
  {
    sub_1000291E4();
  }

  v4 = +[NSMutableDictionary dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = qword_100054610;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [shapesCopy objectForKeyedSubscript:{v10, v14}];
        if (v11)
        {
          v12 = [qword_100054610 objectForKeyedSubscript:v10];
          [v4 setObject:v11 forKey:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (__n128)_poseTranslationMatrixFromArray:(void *)array
{
  arrayCopy = array;
  v4 = [arrayCopy objectAtIndexedSubscript:0];
  [v4 floatValue];
  v13 = v5;
  v6 = [arrayCopy objectAtIndexedSubscript:1];
  [v6 floatValue];
  v12 = v7;
  v8 = [arrayCopy objectAtIndexedSubscript:2];

  [v8 floatValue];
  v11 = v9;

  result.n128_u32[0] = v13;
  result.n128_u32[1] = v12;
  result.n128_u32[2] = v11;
  return result;
}

+ (__n128)_poseRotationMatrixFromArray:(void *)array
{
  arrayCopy = array;
  v4 = [arrayCopy objectAtIndexedSubscript:0];
  v5 = [v4 objectAtIndexedSubscript:0];
  [v5 floatValue];
  v28 = v6;

  v7 = [arrayCopy objectAtIndexedSubscript:1];
  v8 = [v7 objectAtIndexedSubscript:0];
  [v8 floatValue];
  v27 = v9;

  v10 = [arrayCopy objectAtIndexedSubscript:2];
  v11 = [v10 objectAtIndexedSubscript:0];
  [v11 floatValue];
  v12.n128_u64[0] = __PAIR64__(v27, v28);
  v12.n128_u64[1] = v13;
  v29 = v12;

  v14 = [arrayCopy objectAtIndexedSubscript:0];
  v15 = [v14 objectAtIndexedSubscript:1];
  [v15 floatValue];

  v16 = [arrayCopy objectAtIndexedSubscript:1];
  v17 = [v16 objectAtIndexedSubscript:1];
  [v17 floatValue];

  v18 = [arrayCopy objectAtIndexedSubscript:2];
  v19 = [v18 objectAtIndexedSubscript:1];
  [v19 floatValue];

  v20 = [arrayCopy objectAtIndexedSubscript:0];
  v21 = [v20 objectAtIndexedSubscript:2];
  [v21 floatValue];

  v22 = [arrayCopy objectAtIndexedSubscript:1];
  v23 = [v22 objectAtIndexedSubscript:2];
  [v23 floatValue];

  v24 = [arrayCopy objectAtIndexedSubscript:2];

  v25 = [v24 objectAtIndexedSubscript:2];
  [v25 floatValue];

  return v29;
}

+ (id)_intrinsicsArrayFromMatrix:(__n128)matrix
{
  v19 = [NSNumber numberWithFloat:?];
  v25[0] = v19;
  v18 = [NSNumber numberWithFloat:a2.n128_f64[0]];
  v25[1] = v18;
  v17 = [NSNumber numberWithFloat:matrix.n128_f64[0]];
  v25[2] = v17;
  v3 = [NSArray arrayWithObjects:v25 count:3];
  v26[0] = v3;
  HIDWORD(v4) = self.n128_u32[1];
  LODWORD(v4) = self.n128_u32[1];
  v5 = [NSNumber numberWithFloat:v4];
  v24[0] = v5;
  HIDWORD(v6) = a2.n128_u32[1];
  LODWORD(v6) = a2.n128_u32[1];
  v7 = [NSNumber numberWithFloat:v6];
  v24[1] = v7;
  HIDWORD(v8) = matrix.n128_u32[1];
  LODWORD(v8) = matrix.n128_u32[1];
  v9 = [NSNumber numberWithFloat:v8];
  v24[2] = v9;
  v10 = [NSArray arrayWithObjects:v24 count:3];
  v26[1] = v10;
  v11 = [NSNumber numberWithFloat:COERCE_DOUBLE(__PAIR64__(self.n128_u32[1], self.n128_u32[2]))];
  v23[0] = v11;
  v12 = [NSNumber numberWithFloat:COERCE_DOUBLE(__PAIR64__(a2.n128_u32[1], a2.n128_u32[2]))];
  v23[1] = v12;
  v13 = [NSNumber numberWithFloat:COERCE_DOUBLE(__PAIR64__(matrix.n128_u32[1], matrix.n128_u32[2]))];
  v23[2] = v13;
  v14 = [NSArray arrayWithObjects:v23 count:3];
  v26[2] = v14;
  v15 = [NSArray arrayWithObjects:v26 count:3];

  return v15;
}

+ (id)_faceKitProcessOptionsForSampleBuffer:(opaqueCMSampleBuffer *)buffer detectedFaceInfo:(id)info callback:(id)callback
{
  infoCopy = info;
  callbackCopy = callback;
  v9 = +[NSMutableDictionary dictionary];
  v64[0] = sub_100025A00(v9);
  v65[0] = &off_100049FB8;
  v64[1] = sub_100025AF4(v64[0]);
  v65[1] = &off_100049FD0;
  v49 = [NSDictionary dictionaryWithObjects:v65 forKeys:v64 count:2];
  v53 = +[NSMutableDictionary dictionary];
  [v53 setObject:v49 forKeyedSubscript:sub_100025BE8(v53)];
  ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
  if (!ImageBuffer)
  {
    v11 = AXSSLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000291F8();
    }
  }

  v12 = CMGetAttachment(buffer, kCMSampleBufferAttachmentKey_CameraIntrinsicMatrix, 0);
  v13 = v12;
  if (v12 && (v14 = CFGetTypeID(v12), v14 == CFDataGetTypeID()))
  {
    *v56 = 0u;
    memset(time, 0, sizeof(time));
    [v13 getBytes:time length:48];
    _backupIntrinsicsMatrixForiOS = [self _intrinsicsArrayFromMatrix:{*time, *&time[16], v56[0]}];
    v51 = _backupIntrinsicsMatrixForiOS;
  }

  else
  {
    if (!ImageBuffer)
    {
LABEL_12:
      v51 = 0;
      goto LABEL_13;
    }

    _backupIntrinsicsMatrixForiOS = [objc_opt_class() _backupIntrinsicsMatrixForiOS];
    v51 = _backupIntrinsicsMatrixForiOS;
  }

  if (!v51)
  {
    goto LABEL_12;
  }

  [v53 setObject:v51 forKeyedSubscript:sub_100025CDC(_backupIntrinsicsMatrixForiOS)];
LABEL_13:
  v16 = [v53 copy];
  [v9 setObject:v16 forKeyedSubscript:sub_100025DD0(v16)];

  if (!infoCopy)
  {
    v17 = AXSSLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100029278();
    }
  }

  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v18 = qword_100054798;
  v60 = qword_100054798;
  if (!qword_100054798)
  {
    *time = _NSConcreteStackBlock;
    *&time[8] = 3221225472;
    *&time[16] = sub_10002891C;
    *&time[24] = &unk_100048BA8;
    *&v56[0] = &v57;
    v19 = sub_100027DF8();
    v20 = dlsym(v19, "kCVAFaceTracking_DetectedFaceFaceID");
    *(*(*&v56[0] + 8) + 24) = v20;
    qword_100054798 = *(*(*&v56[0] + 8) + 24);
    v18 = v58[3];
  }

  _Block_object_dispose(&v57, 8);
  if (!v18)
  {
    goto LABEL_47;
  }

  v61[0] = *v18;
  v50 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [infoCopy identifier]);
  v62[0] = v50;
  v61[1] = sub_100025EC4(v50);
  [infoCopy boundingBoxInNormalizedCoordinates];
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v67);
  v62[1] = DictionaryRepresentation;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v22 = qword_1000547A8;
  v60 = qword_1000547A8;
  if (!qword_1000547A8)
  {
    *time = _NSConcreteStackBlock;
    *&time[8] = 3221225472;
    *&time[16] = sub_1000289BC;
    *&time[24] = &unk_100048BA8;
    *&v56[0] = &v57;
    v23 = sub_100027DF8();
    v24 = dlsym(v23, "kCVAFaceTracking_DetectedFaceAngleInfoRoll");
    *(*(*&v56[0] + 8) + 24) = v24;
    qword_1000547A8 = *(*(*&v56[0] + 8) + 24);
    v22 = v58[3];
  }

  _Block_object_dispose(&v57, 8);
  if (!v22)
  {
    goto LABEL_47;
  }

  v61[2] = *v22;
  [infoCopy roll];
  v25 = [NSNumber numberWithDouble:?];
  v62[2] = v25;
  v26 = [NSDictionary dictionaryWithObjects:v62 forKeys:v61 count:3];
  v63 = v26;
  v27 = [NSArray arrayWithObjects:&v63 count:1];
  v28 = infoCopy;
  bufferCopy = buffer;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v30 = qword_1000547B0;
  v60 = qword_1000547B0;
  if (!qword_1000547B0)
  {
    *time = _NSConcreteStackBlock;
    *&time[8] = 3221225472;
    *&time[16] = sub_100028A0C;
    *&time[24] = &unk_100048BA8;
    *&v56[0] = &v57;
    v31 = sub_100027DF8();
    v32 = dlsym(v31, "kCVAFaceTracking_DetectedFacesArray");
    *(*(*&v56[0] + 8) + 24) = v32;
    qword_1000547B0 = *(*(*&v56[0] + 8) + 24);
    v30 = v58[3];
  }

  _Block_object_dispose(&v57, 8);
  if (!v30)
  {
    goto LABEL_47;
  }

  [v9 setObject:v27 forKeyedSubscript:*v30];

  if (!ImageBuffer)
  {
    goto LABEL_31;
  }

  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v33 = qword_1000547B8;
  v60 = qword_1000547B8;
  if (!qword_1000547B8)
  {
    *time = _NSConcreteStackBlock;
    *&time[8] = 3221225472;
    *&time[16] = sub_100028A5C;
    *&time[24] = &unk_100048BA8;
    *&v56[0] = &v57;
    v34 = sub_100027DF8();
    v35 = dlsym(v34, "kCVAFaceTracking_Color");
    *(*(*&v56[0] + 8) + 24) = v35;
    qword_1000547B8 = *(*(*&v56[0] + 8) + 24);
    v33 = v58[3];
  }

  _Block_object_dispose(&v57, 8);
  if (!v33)
  {
LABEL_47:
    sub_100029794();
    goto LABEL_51;
  }

  [v9 setObject:ImageBuffer forKeyedSubscript:*v33];
LABEL_31:
  memset(&v54, 0, sizeof(v54));
  CMSampleBufferGetPresentationTimeStamp(&v54, bufferCopy);
  *time = v54;
  v36 = CMTimeCopyAsDictionary(time, kCFAllocatorDefault);
  if (v36)
  {
    v57 = 0;
    v58 = &v57;
    v59 = 0x2020000000;
    v37 = qword_1000547C0;
    v60 = qword_1000547C0;
    if (!qword_1000547C0)
    {
      *time = _NSConcreteStackBlock;
      *&time[8] = 3221225472;
      *&time[16] = sub_100028AAC;
      *&time[24] = &unk_100048BA8;
      *&v56[0] = &v57;
      v38 = sub_100027DF8();
      v39 = dlsym(v38, "kCVAFaceTracking_Timestamp");
      *(*(*&v56[0] + 8) + 24) = v39;
      qword_1000547C0 = *(*(*&v56[0] + 8) + 24);
      v37 = v58[3];
    }

    _Block_object_dispose(&v57, 8);
    if (!v37)
    {
      goto LABEL_50;
    }

    [v9 setObject:v36 forKeyedSubscript:*v37];
  }

  if (callbackCopy)
  {
    v40 = objc_retainBlock(callbackCopy);
    v57 = 0;
    v58 = &v57;
    v59 = 0x2020000000;
    v41 = qword_1000547C8;
    v60 = qword_1000547C8;
    if (!qword_1000547C8)
    {
      *time = _NSConcreteStackBlock;
      *&time[8] = 3221225472;
      *&time[16] = sub_100028AFC;
      *&time[24] = &unk_100048BA8;
      *&v56[0] = &v57;
      v42 = sub_100027DF8();
      v43 = dlsym(v42, "kCVAFaceTracking_Callback");
      *(*(*&v56[0] + 8) + 24) = v43;
      qword_1000547C8 = *(*(*&v56[0] + 8) + 24);
      v41 = v58[3];
    }

    _Block_object_dispose(&v57, 8);
    if (!v41)
    {
      goto LABEL_50;
    }

    [v9 setObject:v40 forKeyedSubscript:*v41];
  }

  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v44 = qword_1000547D0;
  v60 = qword_1000547D0;
  if (!qword_1000547D0)
  {
    *time = _NSConcreteStackBlock;
    *&time[8] = 3221225472;
    *&time[16] = sub_100028B4C;
    *&time[24] = &unk_100048BA8;
    *&v56[0] = &v57;
    v45 = sub_100027DF8();
    v46 = dlsym(v45, "kCVAFaceTracking_AddMesh");
    *(*(*&v56[0] + 8) + 24) = v46;
    qword_1000547D0 = *(*(*&v56[0] + 8) + 24);
    v44 = v58[3];
  }

  _Block_object_dispose(&v57, 8);
  if (!v44)
  {
LABEL_50:
    sub_100029794();
LABEL_51:
    __break(1u);
  }

  [v9 setObject:&__kCFBooleanTrue forKeyedSubscript:*v44];
  v47 = [v9 copy];

  return v47;
}

+ (NSDictionary)_faceKitCreationOptions
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v2 = qword_1000547D8;
  v19 = qword_1000547D8;
  if (!qword_1000547D8)
  {
    v3 = sub_100027DF8();
    v17[3] = dlsym(v3, "kCVAFaceTracking_ColorOnly");
    qword_1000547D8 = v17[3];
    v2 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (!v2)
  {
    goto LABEL_16;
  }

  v20[0] = *v2;
  v21[0] = &__kCFBooleanTrue;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v4 = qword_1000547E0;
  v19 = qword_1000547E0;
  if (!qword_1000547E0)
  {
    v5 = sub_100027DF8();
    v17[3] = dlsym(v5, "kCVAFaceTracking_NumTrackedFaces");
    qword_1000547E0 = v17[3];
    v4 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (!v4)
  {
    goto LABEL_16;
  }

  v20[1] = *v4;
  v6 = [NSNumber numberWithInteger:1];
  v21[1] = v6;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v7 = qword_1000547E8;
  v19 = qword_1000547E8;
  if (!qword_1000547E8)
  {
    v8 = sub_100027DF8();
    v17[3] = dlsym(v8, "kCVAFaceTracking_UseRecognition");
    qword_1000547E8 = v17[3];
    v7 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (!v7)
  {
    goto LABEL_16;
  }

  v20[2] = *v7;
  v9 = [NSNumber numberWithBool:AXMTFaceKitUseRecognition];
  v21[2] = v9;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v10 = qword_1000547F0;
  v19 = qword_1000547F0;
  if (!qword_1000547F0)
  {
    v11 = sub_100027DF8();
    v17[3] = dlsym(v11, "kCVAFaceTracking_NetworkFailureThresholdMultiplier");
    qword_1000547F0 = v17[3];
    v10 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (!v10)
  {
LABEL_16:
    sub_100029794();
    __break(1u);
  }

  v20[3] = *v10;
  LODWORD(v12) = 1069547520;
  v13 = [NSNumber numberWithFloat:v12];
  v21[3] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:4];

  return v14;
}

+ (id)_backupIntrinsicsMatrixForiOS
{
  if (qword_100054628 != -1)
  {
    sub_1000292F8();
  }

  v3 = qword_100054620;

  return v3;
}

- (AXMTFaceKitFaceTrackerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end