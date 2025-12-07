@interface VMTranscriptionService
+ (BOOL)isSupportedTranscriptionLanguageCode:(id)code;
+ (BOOL)isTranscriptionAvailable;
- (BOOL)cache_isTranscribing;
- (BOOL)enableProfanityFilter:(id)filter;
- (BOOL)isLSRPreferenceProfanityAllowed;
- (BOOL)isTranscriptionServiceAvailable;
- (BOOL)processTranscriptionSpeechAnalyzerCompletionHandlerForRecordWithIndentifier:(int)indentifier transcript:(id)transcript error:(id)error;
- (BOOL)writeDataToFile:(id)file fileData:(id)data;
- (TranscriptionProgress_t)getTranscriptionProgress;
- (VMTranscriptionService)init;
- (VMVoicemailTranscriptionController)transcriptionController;
- (id)determineAssetLocale:(id)locale;
- (id)processLanguageIDCompletionHandlerForRecordWithIndentifier:(int)indentifier duration:(double)duration languageDetectorResult:(id)result error:(id)error;
- (id)processLanguageIDResults:(id)results error:(id)error;
- (id)processLanguageIDResultsForRecordWithIndentifier:(int)indentifier languageDetectorResult:(id)result error:(id)error;
- (id)processTranscriptionSpeechAnalyzerResults:(id)results error:(id)error;
- (id)readDataFromFile:(id)file;
- (unint64_t)languageIDFailureReasonForError:(id)error;
- (unint64_t)transcriptionFailureReasonForError:(id)error;
- (void)addTranscriptionDelegate:(id)delegate queue:(id)queue;
- (void)cache_setTranscribing:(BOOL)transcribing;
- (void)donateToLanguageConsumptionBiomeStream:(id)stream confidence:(id)confidence duration:(double)duration;
- (void)fetchLanguageIDBasedDictationResultForFileAtURL:(int)l dataURL:(id)rL queuePriority:(int64_t)priority duration:(double)duration completion:(id)completion;
- (void)handleAFLanguageCodeDidChangeNotification:(id)notification;
- (void)handleNSCurrentLocaleDidChangeNotification:(id)notification;
- (void)loadTranscriptionService;
- (void)performAtomicAccessorBlock:(id)block;
- (void)performSynchronousBlock:(id)block;
- (void)prepareAndReportVoicemailMetrics:(void *)metrics transcriptionResultsDict:(id)dict;
- (void)processPersonalizedTranscriptForFileAtPath:(id)path priority:(int64_t)priority completion:(id)completion;
- (void)processSpeechAnalyzerTranscriptForRecordWithIdentifier:(int)identifier priority:(int64_t)priority completion:(id)completion;
- (void)processTranscriptForFileAtPath:(id)path transcription:(id)transcription priority:(int64_t)priority completion:(id)completion;
- (void)processTranscriptForRecordWithIdentifier:(int)identifier priority:(int64_t)priority completion:(id)completion;
- (void)removeTranscriptionDelegate:(id)delegate;
- (void)reportTranscriptionProblemForRecord:(void *)record;
- (void)reportTranscriptionRatedAccurate:(BOOL)accurate forRecord:(void *)record;
- (void)resetTranscriptionProgress;
- (void)retranscribeAllVoicemails;
- (void)setToTranscribingForRecordWithIdentifier:(int)identifier;
- (void)setTranscriptionController:(id)controller;
- (void)setTranscriptionFractionCompleted:(double)completed;
- (void)setTranscriptionServiceAvailable:(BOOL)available;
- (void)setTranscriptionTotalUnitCount:(int64_t)count;
- (void)transcriptionAvailabilityChanged:(BOOL)changed;
- (void)transcriptionController:(id)controller transcriptionProgressFractionCompletedChanged:(double)changed;
- (void)transcriptionController:(id)controller transcriptionProgressTotalUnitCountChanged:(int64_t)changed;
- (void)transcriptionController:(id)controller transcriptionStatusChanged:(BOOL)changed;
- (void)unloadTranscriptionService;
@end

@implementation VMTranscriptionService

+ (BOOL)isTranscriptionAvailable
{
  v2 = +[VMPreferences sharedInstance];
  transcriptionEnabled = [v2 transcriptionEnabled];

  if (!transcriptionEnabled)
  {
    return 0;
  }

  v4 = +[NSLocale currentLocale];
  languageIdentifier = [v4 languageIdentifier];

  if (AFOfflineDictationCapable())
  {
    v6 = [objc_opt_class() isSupportedTranscriptionLanguageCode:languageIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (VMVoicemailTranscriptionController)transcriptionController
{
  os_unfair_lock_lock(&self->lock);
  v3 = self->_transcriptionController;
  os_unfair_lock_unlock(&self->lock);

  return v3;
}

- (VMTranscriptionService)init
{
  v13.receiver = self;
  v13.super_class = VMTranscriptionService;
  v2 = [(VMTranscriptionService *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->lock._os_unfair_lock_opaque = 0;
    *&v2->fCacheIsTranscribing = 0;
    v4 = dispatch_queue_create("com.apple.vmd.VMTranscriptionService", 0);
    queue = v3->_queue;
    v3->_queue = v4;

    dispatch_queue_set_specific(v3->_queue, off_10010D068, v3, 0);
    v6 = [[VMVoicemailTranscriptionTask alloc] initWithTranscriptionService:v3];
    transcriptionTask = v3->_transcriptionTask;
    v3->_transcriptionTask = v6;

    v8 = objc_alloc_init(VMBiomeClient);
    biomeClient = v3->_biomeClient;
    v3->_biomeClient = v8;

    v10 = +[NSMapTable weakToWeakObjectsMapTable];
    delegates = v3->_delegates;
    v3->_delegates = v10;
  }

  return v3;
}

+ (BOOL)isSupportedTranscriptionLanguageCode:(id)code
{
  codeCopy = code;
  v4 = codeCopy;
  if (codeCopy)
  {
    v5 = _os_feature_enabled_impl();
    if (v5)
    {
      v6 = sub_1000330E0(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "isSupportedTranscriptionLanguageCode: Flag lvmExpansionLiveOnEnabled enabled", buf, 2u);
      }

      matchLocaleForTranscriptionLanguage = [objc_opt_class() matchLocaleForTranscriptionLanguage];
      LODWORD(v8) = matchLocaleForTranscriptionLanguage != 0;
    }

    else
    {
      [objc_opt_class() transcriptionLanguageCodes];
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      matchLocaleForTranscriptionLanguage = v14 = 0u;
      v8 = [matchLocaleForTranscriptionLanguage countByEnumeratingWithState:&v13 objects:v21 count:16];
      if (v8)
      {
        v9 = *v14;
        while (2)
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v14 != v9)
            {
              objc_enumerationMutation(matchLocaleForTranscriptionLanguage);
            }

            if ([v4 isEqualToString:{*(*(&v13 + 1) + 8 * i), v13}])
            {
              LODWORD(v8) = 1;
              goto LABEL_17;
            }
          }

          v8 = [matchLocaleForTranscriptionLanguage countByEnumeratingWithState:&v13 objects:v21 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

LABEL_17:
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  v11 = sub_1000330E0(codeCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v18 = v8;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "isSupportedTranscriptionLanguageCode: Supported: %d for language: %@", buf, 0x12u);
  }

  return v8;
}

- (void)loadTranscriptionService
{
  queue = [(VMTranscriptionService *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000331AC;
  block[3] = &unk_1000EDEC8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)unloadTranscriptionService
{
  queue = [(VMTranscriptionService *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100033698;
  block[3] = &unk_1000EDEC8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (BOOL)isLSRPreferenceProfanityAllowed
{
  v2 = +[MCProfileConnection sharedConnection];
  v3 = [v2 effectiveBoolValueForSetting:MCFeatureAssistantProfanityFilterForced] != 1;

  return v3;
}

- (BOOL)enableProfanityFilter:(id)filter
{
  filterCopy = filter;
  v5 = filterCopy;
  if (filterCopy && ([filterCopy BOOLValue] & 1) != 0)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v6 = ![(VMTranscriptionService *)self isLSRPreferenceProfanityAllowed];
  }

  return v6;
}

- (void)processTranscriptForFileAtPath:(id)path transcription:(id)transcription priority:(int64_t)priority completion:(id)completion
{
  pathCopy = path;
  transcriptionCopy = transcription;
  completionCopy = completion;
  v13 = [completionCopy copy];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100033AE8;
  v26[3] = &unk_1000EE218;
  v26[4] = self;
  v14 = transcriptionCopy;
  v27 = v14;
  v15 = v13;
  v28 = v15;
  v16 = objc_retainBlock(v26);
  transcriptionController = [(VMTranscriptionService *)self transcriptionController];

  if (transcriptionController)
  {
    v19 = [NSURL fileURLWithPath:pathCopy isDirectory:0];
    v20 = [AVURLAsset assetWithURL:v19];
    v21 = v20;
    if (v20)
    {
      objc_msgSend_duration(v20);
    }

    else
    {
      memset(&v25, 0, sizeof(v25));
    }

    Seconds = CMTimeGetSeconds(&v25);
    transcriptionController2 = [(VMTranscriptionService *)self transcriptionController];
    [transcriptionController2 retrieveDictationResultForFileAtURL:v19 queuePriority:priority duration:&stru_1000EE238 transcriptionBeginCallback:v16 completion:Seconds];
  }

  else
  {
    v22 = sub_1000330E0(v18);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25.value) = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Transcription service is disabled, not transcribing", &v25, 2u);
    }

    (v16[2])(v16, 0, 0);
  }
}

- (void)processPersonalizedTranscriptForFileAtPath:(id)path priority:(int64_t)priority completion:(id)completion
{
  pathCopy = path;
  completionCopy = completion;
  v26 = [completionCopy copy];
  v8 = [NSURL fileURLWithPath:pathCopy isDirectory:0];
  v9 = [AVURLAsset assetWithURL:v8];
  v24 = v9;
  if (v9)
  {
    objc_msgSend_duration(v9);
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  Seconds = CMTimeGetSeconds(&time);
  time.value = 0;
  *&time.timescale = &time;
  time.epoch = 0x3032000000;
  v60 = sub_1000344C4;
  v61 = sub_1000344D4;
  v62 = &stru_1000F0098;
  v57[0] = 0;
  v57[1] = v57;
  v57[2] = 0x3032000000;
  v57[3] = sub_1000344C4;
  v57[4] = sub_1000344D4;
  v58 = &stru_1000F0098;
  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x3032000000;
  v55[3] = sub_1000344C4;
  v55[4] = sub_1000344D4;
  v56 = &stru_1000F0098;
  v53[0] = 0;
  v53[1] = v53;
  v53[2] = 0x3032000000;
  v53[3] = sub_1000344C4;
  v53[4] = sub_1000344D4;
  v54 = &stru_1000F0098;
  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x3032000000;
  v51[3] = sub_1000344C4;
  v51[4] = sub_1000344D4;
  v52 = &stru_1000F0098;
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x2020000000;
  v50 = 0;
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_1000344DC;
  v47[3] = &unk_1000EE260;
  v47[4] = self;
  v11 = v8;
  v48 = v11;
  v12 = objc_retainBlock(v47);
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100034624;
  v39[3] = &unk_1000EE2B0;
  v39[4] = self;
  p_time = &time;
  v42 = v57;
  v43 = v49;
  v44 = v55;
  v45 = v51;
  v46 = v53;
  v13 = v26;
  v40 = v13;
  v14 = objc_retainBlock(v39);
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100034954;
  v27[3] = &unk_1000EE300;
  v27[4] = self;
  v31 = &time;
  v32 = v57;
  v33 = v55;
  v34 = v51;
  v35 = v53;
  v36 = v49;
  v15 = v11;
  v28 = v15;
  priorityCopy = priority;
  v38 = Seconds;
  v16 = v12;
  v29 = v16;
  v17 = v14;
  v30 = v17;
  v18 = objc_retainBlock(v27);
  transcriptionController = [(VMTranscriptionService *)self transcriptionController];
  LOBYTE(v14) = transcriptionController == 0;

  if (v14)
  {
    v22 = sub_1000330E0(v20);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v64 = v15;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "processAudioForFileAtURL: Transcription service is disabled, not transcribing audio at external URL %@", buf, 0xCu);
    }

    (v17[2])(v17, 0, 0);
  }

  else
  {
    transcriptionController2 = [(VMTranscriptionService *)self transcriptionController];
    [transcriptionController2 retrieveLanguageIDResultForFileAtURL:v15 queuePriority:priority completion:v18];
  }

  _Block_object_dispose(v49, 8);
  _Block_object_dispose(v51, 8);

  _Block_object_dispose(v53, 8);
  _Block_object_dispose(v55, 8);

  _Block_object_dispose(v57, 8);
  _Block_object_dispose(&time, 8);
}

- (void)processTranscriptForRecordWithIdentifier:(int)identifier priority:(int64_t)priority completion:(id)completion
{
  completionCopy = completion;
  v9 = [completionCopy copy];
  queue = [(VMTranscriptionService *)self queue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100034F8C;
  v12[3] = &unk_1000EE410;
  identifierCopy = identifier;
  v13 = v9;
  priorityCopy = priority;
  v12[4] = self;
  v11 = v9;
  dispatch_async(queue, v12);
}

- (void)setToTranscribingForRecordWithIdentifier:(int)identifier
{
  v4 = VMStoreCopyRecordWithIdentifier();
  if (v4)
  {
    v5 = v4;
    Flags = VMStoreRecordGetFlags(v4);
    v8 = VMStoreRecordGetLabel(v5);
    VMStoreRecordSetFlags(v8, v5, Flags & 0xFFFE7DFF | 0x200);
    VMStoreSave();
    CFRelease(v5);
  }

  else
  {
    v7 = sub_1000330E0(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      identifierCopy = identifier;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Record %d deleted during transcribe operation, not setting transcribing flag.", buf, 8u);
    }
  }
}

- (id)processLanguageIDResults:(id)results error:(id)error
{
  resultsCopy = results;
  errorCopy = error;
  v30 = resultsCopy;
  v7 = objc_alloc_init(NSMutableDictionary);
  v8 = v7;
  if (resultsCopy)
  {
    [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:@"lidSuccess"];
    [v8 setObject:0 forKeyedSubscript:@"lidFailureReason"];
    dominantLocale = [resultsCopy dominantLocale];
    languageIdentifier = [dominantLocale languageIdentifier];

    dominantLocale2 = [resultsCopy dominantLocale];
    v11 = [dominantLocale2 objectForKey:NSLocaleLanguageCode];
    [v8 setObject:v11 forKeyedSubscript:@"detectedDominantLanguage"];

    detectedLanguageCode = [resultsCopy detectedLanguageCode];
    v13 = [detectedLanguageCode isEqualToString:@"en"];

    v14 = [NSNumber numberWithInt:v13];
    [v8 setObject:v14 forKeyedSubscript:@"isEnglish"];

    [v8 setObject:languageIdentifier forKeyedSubscript:@"detectedDominantLocale"];
    v15 = +[NSMutableDictionary dictionary];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    alternatives = [resultsCopy alternatives];
    v17 = [alternatives countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v17)
    {
      v18 = *v32;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v32 != v18)
          {
            objc_enumerationMutation(alternatives);
          }

          v20 = *(*(&v31 + 1) + 8 * i);
          [v20 confidence];
          v21 = [NSNumber numberWithDouble:?];
          locale = [v20 locale];
          localeIdentifier = [locale localeIdentifier];
          [v15 setObject:v21 forKeyedSubscript:localeIdentifier];
        }

        v17 = [alternatives countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v17);
    }

    if ([v15 count])
    {
      [v8 setObject:v15 forKeyedSubscript:@"altLocaleDict"];
      v24 = [v8 objectForKeyedSubscript:@"altLocaleDict"];
      v25 = [v24 objectForKeyedSubscript:languageIdentifier];
      [v8 setObject:v25 forKeyedSubscript:@"dominantLocaleConfidence"];
    }

    else
    {
      [v8 setObject:0 forKeyedSubscript:@"altLocaleDict"];
      [v8 setObject:0 forKeyedSubscript:@"dominantLocaleConfidence"];
    }
  }

  else
  {
    [v7 setObject:&__kCFBooleanFalse forKeyedSubscript:@"lidSuccess"];
    [v8 setObject:&__kCFBooleanFalse forKeyedSubscript:@"isEnglish"];
    [v8 setObject:0 forKeyedSubscript:@"detectedDominantLocale"];
    [v8 setObject:0 forKeyedSubscript:@"altLocaleDict"];
    [v8 setObject:0 forKeyedSubscript:@"dominantLocaleConfidence"];
    if (errorCopy)
    {
      v26 = [NSNumber numberWithUnsignedInteger:[(VMTranscriptionService *)self languageIDFailureReasonForError:?]];
      [v8 setObject:v26 forKeyedSubscript:@"lidFailureReason"];
    }

    else
    {
      [v8 setObject:&off_1000F5800 forKeyedSubscript:@"lidFailureReason"];
    }
  }

  return v8;
}

- (id)processLanguageIDResultsForRecordWithIndentifier:(int)indentifier languageDetectorResult:(id)result error:(id)error
{
  v6 = *&indentifier;
  resultCopy = result;
  errorCopy = error;
  v10 = VMStoreCopyRecordWithIdentifier();
  if (v10)
  {
    v11 = [(VMTranscriptionService *)self processLanguageIDResults:resultCopy error:errorCopy];
    v12 = [NSNumber numberWithInt:v6];
    [v11 setObject:v12 forKeyedSubscript:@"vmIdentifier"];

    v14 = sub_1000330E0(v13);
    v15 = v14;
    if (resultCopy)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v11 objectForKeyedSubscript:@"detectedDominantLocale"];
        v19 = 138412802;
        v20 = resultCopy;
        v21 = 2112;
        v22 = v16;
        v23 = 1024;
        v24 = v6;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Language ID result:'%@' Dominant Locale: '%@' for voicemail with identifier %d", &v19, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10009CB24();
    }

    CFRelease(v10);
  }

  else
  {
    v17 = sub_1000330E0(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 67109120;
      LODWORD(v20) = v6;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Record with identifier %d deleted during Language ID operation, ignoring LID result.", &v19, 8u);
    }

    v11 = 0;
  }

  return v11;
}

- (id)processTranscriptionSpeechAnalyzerResults:(id)results error:(id)error
{
  resultsCopy = results;
  errorCopy = error;
  v8 = objc_alloc_init(NSMutableDictionary);
  v9 = v8;
  if (resultsCopy)
  {
    v10 = sub_1000330E0(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      [resultsCopy confidence];
      v17 = 138412546;
      v18 = resultsCopy;
      v19 = 2048;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Dictation result was: '%@', confidence %f", &v17, 0x16u);
    }

    transcriptionString = [resultsCopy transcriptionString];
    [v9 setObject:transcriptionString forKeyedSubscript:@"transcriptionString"];

    [resultsCopy confidence];
    v13 = [NSNumber numberWithFloat:?];
    [v9 setObject:v13 forKeyedSubscript:@"confidence"];

    if ([resultsCopy confidenceRating] >= 2)
    {
      [v9 setObject:&__kCFBooleanTrue forKeyedSubscript:@"transcriptionSuccess"];
      [v9 setObject:0 forKeyedSubscript:@"transcriptionFailureReason"];
      goto LABEL_11;
    }

    [v9 setObject:&__kCFBooleanFalse forKeyedSubscript:@"transcriptionSuccess"];
    v15 = &off_1000F57D0;
  }

  else
  {
    [v8 setObject:0 forKeyedSubscript:@"confidence"];
    [v9 setObject:&__kCFBooleanFalse forKeyedSubscript:@"transcriptionSuccess"];
    if (errorCopy)
    {
      v14 = [NSNumber numberWithUnsignedInteger:[(VMTranscriptionService *)self transcriptionFailureReasonForError:errorCopy]];
      [v9 setObject:v14 forKeyedSubscript:@"transcriptionFailureReason"];

      goto LABEL_11;
    }

    v15 = &off_1000F5800;
  }

  [v9 setObject:v15 forKeyedSubscript:@"transcriptionFailureReason"];
LABEL_11:

  return v9;
}

- (BOOL)processTranscriptionSpeechAnalyzerCompletionHandlerForRecordWithIndentifier:(int)indentifier transcript:(id)transcript error:(id)error
{
  transcriptCopy = transcript;
  errorCopy = error;
  v10 = VMStoreCopyRecordWithIdentifier();
  v11 = v10;
  if (v10)
  {
    v12 = VMStoreRecordGetLabel(v10);
    v13 = [(VMTranscriptionService *)self processTranscriptionSpeechAnalyzerResults:transcriptCopy error:errorCopy];
    v23 = v13;
    if (!transcriptCopy)
    {
      v14 = sub_1000330E0(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10009CB94();
      }

      LOBYTE(v17) = 0;
      goto LABEL_21;
    }

    v14 = VMStoreRecordCopyTranscriptionPath(v11);
    if ([v14 length])
    {
      v15 = [NSURL fileURLWithPath:v14 isDirectory:0];
      if (v15)
      {
        archivedData = [transcriptCopy archivedData];
        v24 = 0;
        v17 = [archivedData writeToURL:v15 options:268435457 error:&v24];
        v18 = v24;

        if (v17)
        {
          VMStoreRecordSetFlag(v12, v11, 0x100u);
        }

        else
        {
          v20 = sub_1000330E0(v19);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            sub_10009C988();
          }
        }

        goto LABEL_20;
      }
    }

    else
    {
      v15 = sub_1000330E0(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10009C9F8();
      }
    }

    LOBYTE(v17) = 0;
LABEL_20:

LABEL_21:
    [(VMTranscriptionService *)self prepareAndReportVoicemailMetrics:v11 transcriptionResultsDict:v23];
    Flags = VMStoreRecordGetFlags(v11);
    VMStoreRecordSetFlags(v12, v11, Flags & 0xFFFF6DFF | 0x1000);
    VMStoreSave();
    CFRelease(v11);

    goto LABEL_22;
  }

  v12 = sub_1000330E0(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    indentifierCopy = indentifier;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Record with identifier %d deleted during transcribe operation, ignoring transcript result.", buf, 8u);
  }

  LOBYTE(v17) = 0;
LABEL_22:

  return v17;
}

- (id)determineAssetLocale:(id)locale
{
  localeCopy = locale;
  transcriptionController = [(VMTranscriptionService *)self transcriptionController];
  isPersTranscriptionAvailable = [transcriptionController isPersTranscriptionAvailable];

  if (isPersTranscriptionAvailable)
  {
    if (localeCopy && ([localeCopy objectForKeyedSubscript:@"lidSuccess"], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqual:", &__kCFBooleanTrue), v7, v8))
    {
      v10 = sub_1000330E0(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v27) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "personalizedTranscriptionEnabled enabled and LID is successful.", &v27, 2u);
      }

      transcriptionController2 = [(VMTranscriptionService *)self transcriptionController];
      matchedSystemLocale = [transcriptionController2 matchedSystemLocale];
      if (matchedSystemLocale)
      {
        v13 = [localeCopy objectForKeyedSubscript:@"detectedDominantLanguage"];
        transcriptionController3 = [(VMTranscriptionService *)self transcriptionController];
        matchedSystemLocale2 = [transcriptionController3 matchedSystemLocale];
        v16 = [matchedSystemLocale2 objectForKey:NSLocaleLanguageCode];
        v17 = [v13 isEqualToString:v16];

        if (v17)
        {
          transcriptionController4 = [(VMTranscriptionService *)self transcriptionController];
          matchedSystemLocale3 = [transcriptionController4 matchedSystemLocale];
          localeIdentifier = [matchedSystemLocale3 localeIdentifier];

          goto LABEL_19;
        }
      }

      else
      {
      }

      v24 = [localeCopy objectForKeyedSubscript:@"dominantLocaleConfidence"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([v24 doubleValue], v25 > 0.5))
      {
        localeIdentifier = [localeCopy objectForKeyedSubscript:@"detectedDominantLocale"];
      }

      else
      {
        localeIdentifier = &stru_1000F0098;
      }
    }

    else
    {
      transcriptionController5 = [(VMTranscriptionService *)self transcriptionController];
      localeIdentifier = [transcriptionController5 getTranscriptionLocaleIdentifier];

      v24 = sub_1000330E0(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v27 = 138412290;
        v28 = localeIdentifier;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "personalizedTranscriptionEnabled enabled but LID failed. Asset locale set to %@", &v27, 0xCu);
      }
    }
  }

  else
  {
    transcriptionController6 = [(VMTranscriptionService *)self transcriptionController];
    localeIdentifier = [transcriptionController6 getTranscriptionLocaleIdentifier];
  }

LABEL_19:

  return localeIdentifier;
}

- (id)processLanguageIDCompletionHandlerForRecordWithIndentifier:(int)indentifier duration:(double)duration languageDetectorResult:(id)result error:(id)error
{
  v8 = *&indentifier;
  resultCopy = result;
  errorCopy = error;
  v46 = objc_alloc_init(NSMutableDictionary);
  v10 = VMStoreCopyRecordWithIdentifier();
  if (v10)
  {
    v11 = [(VMTranscriptionService *)self processLanguageIDResultsForRecordWithIndentifier:v8 languageDetectorResult:resultCopy error:errorCopy];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 objectForKeyedSubscript:@"lidSuccess"];
      v14 = [v13 isEqual:&__kCFBooleanTrue];

      if (v14)
      {
        v15 = [v12 objectForKeyedSubscript:@"detectedDominantLocale"];
        v16 = [v12 objectForKeyedSubscript:@"dominantLocaleConfidence"];
        [(VMTranscriptionService *)self donateToLanguageConsumptionBiomeStream:v15 confidence:v16 duration:duration];
      }

      v17 = 1;
    }

    else
    {
      v18 = objc_alloc_init(NSMutableDictionary);
      [v18 setObject:&__kCFBooleanFalse forKeyedSubscript:@"lidSuccess"];
      [v18 setObject:&off_1000F5800 forKeyedSubscript:@"lidFailureReason"];
      v17 = 0;
      v12 = v18;
    }

    v19 = +[NSLocale currentLocale];
    localeIdentifier = [v19 localeIdentifier];
    [v12 setObject:localeIdentifier forKeyedSubscript:@"systemLocale"];

    v21 = [(VMTranscriptionService *)self determineAssetLocale:v12];
    [v12 setObject:v21 forKeyedSubscript:@"assetLocale"];

    v22 = [NSLocale alloc];
    v23 = [v12 objectForKeyedSubscript:@"assetLocale"];
    v24 = [v22 initWithLocaleIdentifier:v23];

    transcriptionController = [(VMTranscriptionService *)self transcriptionController];
    if ([transcriptionController isPersTranscriptionAvailable])
    {
      v26 = [v12 objectForKeyedSubscript:@"lidSuccess"];
      v27 = [v26 isEqual:&__kCFBooleanTrue];

      if (!v27)
      {
LABEL_14:
        v31 = VMStoreRecordCopySummarizationPath(v10);
        v32 = [(VMTranscriptionService *)self writeDataToFile:v31 fileData:v12];
        if ((v32 & 1) == 0)
        {
          v33 = sub_1000330E0(v32);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            sub_10009CC04();
          }
        }

        v34 = [v12 objectForKeyedSubscript:@"assetLocale"];
        transcriptionController2 = [(VMTranscriptionService *)self transcriptionController];
        v36 = +[VMConfiguration getVMLocaleSpeechAssetTypeforLocaleIdentifier:gasrEnabled:](VMConfiguration, "getVMLocaleSpeechAssetTypeforLocaleIdentifier:gasrEnabled:", v34, [transcriptionController2 isGasrModelAvailable]);

        if (v36 == kVM_GASRTaskHint || v36 == kVM_NGASRTaskHint)
        {
          [v46 setObject:v24 forKeyedSubscript:@"transcriptionAssetLocale"];
          transcriptionController3 = [(VMTranscriptionService *)self transcriptionController];
          v38 = [v46 objectForKeyedSubscript:@"transcriptionAssetLocale"];
          v39 = [transcriptionController3 isSpeechAnalyzerTranscriptionModelInstalledForTaskHint:v38 taskHint:v36];

          if ((v39 & 1) == 0)
          {
            v40 = VMStoreRecordGetLabel(v10);
            VMStoreRecordSetFlag(v40, v10, 0x8000u);
          }
        }

        CFRelease(v10);

        goto LABEL_23;
      }

      v28 = [NSLocale alloc];
      v29 = [v12 objectForKeyedSubscript:@"detectedDominantLocale"];
      transcriptionController = [v28 initWithLocaleIdentifier:v29];

      transcriptionController4 = [(VMTranscriptionService *)self transcriptionController];
      [transcriptionController4 updateControllerWithLocale:transcriptionController assetLocale:v24];
    }

    goto LABEL_14;
  }

  v12 = sub_1000330E0(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Record deleted during Language ID operation, ignoring LID result.", buf, 2u);
  }

  v17 = 0;
LABEL_23:

  v42 = sub_1000330E0(v41);
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    v48 = v8;
    v49 = 1024;
    v50 = v17;
    v51 = 2112;
    v52 = v46;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Done processing Language ID results for record with identifier %d. Finished? %d Results : %@", buf, 0x18u);
  }

  return v46;
}

- (void)fetchLanguageIDBasedDictationResultForFileAtURL:(int)l dataURL:(id)rL queuePriority:(int64_t)priority duration:(double)duration completion:(id)completion
{
  rLCopy = rL;
  completionCopy = completion;
  v12 = [completionCopy copy];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100038410;
  v40[3] = &unk_1000EE348;
  v40[4] = self;
  lCopy = l;
  v13 = objc_retainBlock(v40);
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_1000384B8;
  v37[3] = &unk_1000EE460;
  v37[4] = self;
  lCopy2 = l;
  v14 = v12;
  v38 = v14;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100038620;
  v30[3] = &unk_1000EE4B0;
  v30[4] = self;
  lCopy3 = l;
  durationCopy = duration;
  v15 = objc_retainBlock(v37);
  v32 = v15;
  v16 = rLCopy;
  v31 = v16;
  priorityCopy = priority;
  v17 = v13;
  v33 = v17;
  v18 = objc_retainBlock(v30);
  transcriptionController = [(VMTranscriptionService *)self transcriptionController];
  LOBYTE(completion) = transcriptionController == 0;

  if (completion)
  {
    v22 = sub_1000330E0(v20);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      lCopy5 = l;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Transcription service is disabled, not transcribing record with identifier %d", buf, 8u);
    }

    (v15[2])(v15, 0, 0);
  }

  else
  {
    if (duration <= 3.0)
    {
      transcriptionController2 = [(VMTranscriptionService *)self transcriptionController];
      getTranscriptionLocaleIdentifier = [transcriptionController2 getTranscriptionLocaleIdentifier];

      v25 = sub_1000330E0(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109378;
        lCopy5 = l;
        v44 = 2112;
        v45 = getTranscriptionLocaleIdentifier;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Skipping Language ID as voicemail is too short. Attempting to transcribe record with identifier %d in locale %@", buf, 0x12u);
      }

      transcriptionController3 = [(VMTranscriptionService *)self transcriptionController];
      v27 = [[NSLocale alloc] initWithLocaleIdentifier:getTranscriptionLocaleIdentifier];
      [transcriptionController3 retrieveDictationResultWithLocaleForFileAtURL:v16 locale:v27 profanityFilterOverride:-[VMTranscriptionService enableProfanityFilter:](self queuePriority:"enableProfanityFilter:" duration:0) transcriptionBeginCallback:priority completion:{v17, v15, duration}];
    }

    else
    {
      getTranscriptionLocaleIdentifier = [(VMTranscriptionService *)self transcriptionController];
      [getTranscriptionLocaleIdentifier retrieveLanguageIDResultForFileAtURL:v16 queuePriority:priority completion:v18];
    }
  }
}

- (void)processSpeechAnalyzerTranscriptForRecordWithIdentifier:(int)identifier priority:(int64_t)priority completion:(id)completion
{
  completionCopy = completion;
  v9 = sub_1000330E0(completionCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "transcriptionV2SpeechAPIEnabled enabled", buf, 2u);
  }

  v10 = [completionCopy copy];
  queue = [(VMTranscriptionService *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100038C34;
  v13[3] = &unk_1000EE410;
  identifierCopy = identifier;
  v14 = v10;
  priorityCopy = priority;
  v13[4] = self;
  v12 = v10;
  dispatch_async(queue, v13);
}

- (unint64_t)transcriptionFailureReasonForError:(id)error
{
  errorCopy = error;
  queue = [(VMTranscriptionService *)self queue];
  dispatch_assert_queue_V2(queue);

  if (errorCopy)
  {
    code = [errorCopy code];
    if ((code - 1038) >= 3)
    {
      v7 = 5;
    }

    else
    {
      v7 = qword_1000C9390[(code - 1038)];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)languageIDFailureReasonForError:(id)error
{
  errorCopy = error;
  queue = [(VMTranscriptionService *)self queue];
  dispatch_assert_queue_V2(queue);

  if (errorCopy)
  {
    code = [errorCopy code];
    if ((code - 1041) >= 4)
    {
      v7 = 5;
    }

    else
    {
      v7 = qword_1000C93A8[(code - 1041)];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)donateToLanguageConsumptionBiomeStream:(id)stream confidence:(id)confidence duration:(double)duration
{
  streamCopy = stream;
  confidenceCopy = confidence;
  biomeClient = [(VMTranscriptionService *)self biomeClient];
  [biomeClient donateToLanguageConsumptionBiomeStream:streamCopy confidence:confidenceCopy duration:duration];
}

- (void)prepareAndReportVoicemailMetrics:(void *)metrics transcriptionResultsDict:(id)dict
{
  dictCopy = dict;
  if (metrics && dictCopy)
  {
    v42 = dictCopy;
    v7 = VMStoreRecordCopySummarizationPath(metrics);
    v8 = +[NSSet set];
    v9 = [VMUtilities readDataFromFile:v7 customClassSet:v8];

    v41 = v9;
    if (v9 && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0))
    {
      v11 = v9;
    }

    else
    {
      v12 = sub_1000330E0(isKindOfClass);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        metricsCopy = metrics;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Language ID results do not exist for record %@.", buf, 0xCu);
      }

      v13 = objc_alloc_init(NSMutableDictionary);
      v14 = +[NSLocale currentLocale];
      localeIdentifier = [v14 localeIdentifier];
      [v13 setObject:localeIdentifier forKeyedSubscript:@"systemLocale"];

      transcriptionController = [(VMTranscriptionService *)self transcriptionController];
      getTranscriptionLocaleIdentifier = [transcriptionController getTranscriptionLocaleIdentifier];
      [v13 setObject:getTranscriptionLocaleIdentifier forKeyedSubscript:@"assetLocale"];

      [v13 setObject:&__kCFBooleanFalse forKeyedSubscript:@"lidSuccess"];
      [v13 setObject:&off_1000F5800 forKeyedSubscript:@"lidFailureReason"];
      [v13 setObject:&__kCFBooleanFalse forKeyedSubscript:@"isEnglish"];
      [v13 setObject:0 forKeyedSubscript:@"detectedDominantLocale"];
      [v13 setObject:0 forKeyedSubscript:@"altLocaleDict"];
      v11 = v13;
      [v13 setObject:0 forKeyedSubscript:@"dominantLocaleConfidence"];
    }

    v39 = +[VMAWDReporter sharedInstance];
    v40 = [v11 objectForKeyedSubscript:@"systemLocale"];
    v35 = [v42 objectForKeyedSubscript:@"transcriptionSuccess"];
    bOOLValue = [v35 BOOLValue];
    v37 = [v42 objectForKeyedSubscript:@"transcriptionFailureReason"];
    v36 = [v11 objectForKeyedSubscript:@"assetLocale"];
    v38 = [v42 objectForKeyedSubscript:@"confidence"];
    v19 = [v11 objectForKeyedSubscript:@"lidSuccess"];
    bOOLValue2 = [v19 BOOLValue];
    v21 = [v11 objectForKeyedSubscript:@"lidFailureReason"];
    v22 = [v11 objectForKeyedSubscript:@"isEnglish"];
    bOOLValue3 = [v22 BOOLValue];
    v24 = [v11 objectForKeyedSubscript:@"detectedDominantLocale"];
    v25 = [v11 objectForKeyedSubscript:@"dominantLocaleConfidence"];
    v26 = [v11 objectForKeyedSubscript:@"altLocaleDict"];
    LOBYTE(v34) = bOOLValue3;
    [v39 reportVoicemailProcessed:v40 transcriptionSuccess:bOOLValue transcriptionFailureReason:v37 assetLocale:v36 transcriptionConfidence:v38 lidSuccess:bOOLValue2 lidFailureReason:v21 isEnglish:v34 dominantLocale:v24 dominantLocaleConfidence:v25 altLocaleDict:v26];

    v27 = +[VMAWDReporter sharedInstance];
    v28 = [v11 objectForKeyedSubscript:@"systemLocale"];
    v29 = [v42 objectForKeyedSubscript:@"transcriptionSuccess"];
    bOOLValue4 = [v29 BOOLValue];
    v31 = [v42 objectForKeyedSubscript:@"transcriptionFailureReason"];
    v32 = [v11 objectForKeyedSubscript:@"assetLocale"];
    v33 = [v42 objectForKeyedSubscript:@"confidence"];
    [v27 reportVoicemailTranscriptionProcessed:v28 success:bOOLValue4 reason:v31 assetLocale:v32 confidence:v33];

    dictCopy = v42;
  }
}

- (void)reportTranscriptionProblemForRecord:(void *)record
{
  CFRetain(record);
  queue = [(VMTranscriptionService *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003989C;
  v6[3] = &unk_1000EE4D8;
  v6[4] = self;
  v6[5] = record;
  dispatch_async(queue, v6);
}

- (void)reportTranscriptionRatedAccurate:(BOOL)accurate forRecord:(void *)record
{
  CFRetain(record);
  queue = [(VMTranscriptionService *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100039AF0;
  v8[3] = &unk_1000EE4F8;
  v8[4] = record;
  accurateCopy = accurate;
  dispatch_async(queue, v8);
}

- (void)handleAFLanguageCodeDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(VMTranscriptionService *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100039D3C;
  v7[3] = &unk_1000EE260;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)handleNSCurrentLocaleDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(VMTranscriptionService *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100039F14;
  v7[3] = &unk_1000EE260;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)performSynchronousBlock:(id)block
{
  block = block;
  if (dispatch_get_specific(off_10010D068) == self)
  {
    block[2]();
  }

  else
  {
    queue = [(VMTranscriptionService *)self queue];
    dispatch_sync(queue, block);
  }
}

- (void)performAtomicAccessorBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    os_unfair_lock_lock_with_options();
    blockCopy[2]();
    os_unfair_lock_unlock(&self->lock);
  }

  else
  {
    v5 = +[NSAssertionHandler currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"VMTranscriptionService.mm" lineNumber:1259 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }
}

- (id)readDataFromFile:(id)file
{
  fileCopy = file;
  if (![fileCopy length])
  {
    v4 = sub_1000330E0(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10009CCF4();
    }

    goto LABEL_13;
  }

  v4 = [NSURL fileURLWithPath:fileCopy isDirectory:0];
  v26 = 0;
  v5 = [NSData dataWithContentsOfURL:v4 options:1 error:&v26];
  v6 = v26;
  v7 = v6;
  if (!v5)
  {
    localizedDescription = [v6 localizedDescription];
    v21 = [NSString stringWithFormat:@"readDataFromFile: error %@\n", localizedDescription];
    v22 = v21;
    uTF8String = [v21 UTF8String];
    fputs(uTF8String, __stderrp);

LABEL_13:
    v19 = 0;
    goto LABEL_14;
  }

  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [NSSet setWithObjects:v8, v9, v10, objc_opt_class(), 0];
  v25 = v7;
  v12 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v11 fromData:v5 error:&v25];
  v13 = v25;

  if (v13)
  {
    v15 = sub_1000330E0(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10009CC78();
    }
  }

  v16 = sub_1000330E0(v14);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_opt_class();
    *buf = 138412546;
    v28 = fileCopy;
    v29 = 2112;
    v30 = v17;
    v18 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "For file %@, unarchived object class: %@", buf, 0x16u);
  }

  v19 = v12;
  v4 = v19;
LABEL_14:

  return v19;
}

- (BOOL)writeDataToFile:(id)file fileData:(id)data
{
  fileCopy = file;
  dataCopy = data;
  if ([fileCopy length])
  {
    v7 = [NSURL fileURLWithPath:fileCopy isDirectory:0];
    if (!v7)
    {
      v12 = sub_1000330E0(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10009CE1C();
      }

      v13 = 0;
      goto LABEL_15;
    }

    v18 = 0;
    v8 = [NSKeyedArchiver archivedDataWithRootObject:dataCopy requiringSecureCoding:1 error:&v18];
    v9 = v18;
    v10 = v9;
    if (v9)
    {
      v11 = sub_1000330E0(v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10009CD30();
      }

      v12 = 0;
    }

    else
    {
      v17 = 0;
      v15 = [v8 writeToURL:v7 options:268435457 error:&v17];
      v12 = v17;
      v16 = sub_1000330E0(v12);
      v11 = v16;
      if (v15)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v20 = dataCopy;
          v21 = 2112;
          v22 = v7;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "File data %@ written to location: %@", buf, 0x16u);
        }

        v13 = 1;
        goto LABEL_8;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10009CDA0();
      }
    }

    v13 = 0;
LABEL_8:

LABEL_15:
    goto LABEL_16;
  }

  v7 = sub_1000330E0(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_10009CE8C();
  }

  v13 = 0;
LABEL_16:

  return v13;
}

- (void)setTranscriptionController:(id)controller
{
  controllerCopy = controller;
  os_unfair_lock_lock(&self->lock);
  transcriptionController = self->_transcriptionController;
  self->_transcriptionController = controllerCopy;

  os_unfair_lock_unlock(&self->lock);
}

- (void)setTranscriptionServiceAvailable:(BOOL)available
{
  os_unfair_lock_lock(&self->lock);
  self->fCacheIsTranscriptionServiceAvailable = available;

  os_unfair_lock_unlock(&self->lock);
}

- (BOOL)isTranscriptionServiceAvailable
{
  os_unfair_lock_lock(&self->lock);
  fCacheIsTranscriptionServiceAvailable = self->fCacheIsTranscriptionServiceAvailable;
  os_unfair_lock_unlock(&self->lock);
  return fCacheIsTranscriptionServiceAvailable;
}

- (void)cache_setTranscribing:(BOOL)transcribing
{
  os_unfair_lock_lock(&self->lock);
  self->fCacheIsTranscribing = transcribing;

  os_unfair_lock_unlock(&self->lock);
}

- (BOOL)cache_isTranscribing
{
  os_unfair_lock_lock(&self->lock);
  fCacheIsTranscribing = self->fCacheIsTranscribing;
  os_unfair_lock_unlock(&self->lock);
  return fCacheIsTranscribing;
}

- (void)resetTranscriptionProgress
{
  os_unfair_lock_lock(&self->lock);
  self->fTranscriptionProgress.fractionCompleted = 0.0;
  self->fTranscriptionProgress.totalUnitCount = 0;

  os_unfair_lock_unlock(&self->lock);
}

- (void)setTranscriptionFractionCompleted:(double)completed
{
  os_unfair_lock_lock(&self->lock);
  self->fTranscriptionProgress.fractionCompleted = completed;

  os_unfair_lock_unlock(&self->lock);
}

- (void)setTranscriptionTotalUnitCount:(int64_t)count
{
  os_unfair_lock_lock(&self->lock);
  self->fTranscriptionProgress.totalUnitCount = count;

  os_unfair_lock_unlock(&self->lock);
}

- (TranscriptionProgress_t)getTranscriptionProgress
{
  os_unfair_lock_lock(&self->lock);
  fractionCompleted = self->fTranscriptionProgress.fractionCompleted;
  totalUnitCount = self->fTranscriptionProgress.totalUnitCount;
  os_unfair_lock_unlock(&self->lock);
  v5 = fractionCompleted;
  v6 = totalUnitCount;
  result.totalUnitCount = v6;
  result.fractionCompleted = v5;
  return result;
}

- (void)retranscribeAllVoicemails
{
  queue = [(VMTranscriptionService *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003AA28;
  block[3] = &unk_1000EDEC8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)transcriptionAvailabilityChanged:(BOOL)changed
{
  v5 = sub_1000330E0(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = asNSStringBOOL();
    *buf = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is executing transcriptionAvailabilityChanged with transcription service available %@", buf, 0x16u);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003ABF4;
  v8[3] = &unk_1000ED8D8;
  v8[4] = self;
  changedCopy = changed;
  [(VMTranscriptionService *)self performAtomicAccessorBlock:v8];
}

- (void)transcriptionController:(id)controller transcriptionStatusChanged:(BOOL)changed
{
  changedCopy = changed;
  controllerCopy = controller;
  v7 = sub_1000330E0(controllerCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = asNSStringBOOL();
    *buf = 138412546;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ is handling transcriptionStatusChanged with transcribing %@", buf, 0x16u);
  }

  [(VMTranscriptionService *)self cache_setTranscribing:changedCopy];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10003AFD0;
  v11[3] = &unk_1000EDFC8;
  v11[4] = self;
  v10 = controllerCopy;
  v12 = v10;
  v13 = changedCopy;
  [(VMTranscriptionService *)self performAtomicAccessorBlock:v11];
}

- (void)transcriptionController:(id)controller transcriptionProgressFractionCompletedChanged:(double)changed
{
  controllerCopy = controller;
  v7 = sub_1000330E0(controllerCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v14 = objc_opt_class();
    v15 = 2048;
    changedCopy = changed;
    v8 = v14;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ is handling TranscriptionProgressFractionCompletedChanged with fractionCompleted %f", buf, 0x16u);
  }

  [(VMTranscriptionService *)self setTranscriptionFractionCompleted:changed];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10003B3A0;
  v10[3] = &unk_1000EE520;
  v10[4] = self;
  v9 = controllerCopy;
  v11 = v9;
  changedCopy2 = changed;
  [(VMTranscriptionService *)self performAtomicAccessorBlock:v10];
}

- (void)transcriptionController:(id)controller transcriptionProgressTotalUnitCountChanged:(int64_t)changed
{
  controllerCopy = controller;
  v7 = sub_1000330E0(controllerCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v14 = objc_opt_class();
    v15 = 2048;
    changedCopy = changed;
    v8 = v14;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ is handling transcriptionProgressTotalUnitCountChanged with totalUnitCount %lld", buf, 0x16u);
  }

  [(VMTranscriptionService *)self setTranscriptionTotalUnitCount:changed];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10003B76C;
  v10[3] = &unk_1000EE520;
  v10[4] = self;
  v9 = controllerCopy;
  v11 = v9;
  changedCopy2 = changed;
  [(VMTranscriptionService *)self performAtomicAccessorBlock:v10];
}

- (void)addTranscriptionDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v8 = sub_1000330E0(queueCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = objc_opt_class();
    v17 = 2112;
    v18 = delegateCopy;
    v9 = v16;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ add delegate %@", buf, 0x16u);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10003BB4C;
  v12[3] = &unk_1000EE120;
  v12[4] = self;
  v10 = queueCopy;
  v13 = v10;
  v11 = delegateCopy;
  v14 = v11;
  [(VMTranscriptionService *)self performAtomicAccessorBlock:v12];
}

- (void)removeTranscriptionDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = sub_1000330E0(delegateCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v11 = objc_opt_class();
    v12 = 2112;
    v13 = delegateCopy;
    v6 = v11;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ remove delegate %@", buf, 0x16u);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003BD20;
  v8[3] = &unk_1000EE260;
  v8[4] = self;
  v7 = delegateCopy;
  v9 = v7;
  [(VMTranscriptionService *)self performAtomicAccessorBlock:v8];
}

@end