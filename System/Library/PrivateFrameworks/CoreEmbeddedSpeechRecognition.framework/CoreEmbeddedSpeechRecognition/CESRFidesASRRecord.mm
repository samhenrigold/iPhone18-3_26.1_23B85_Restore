@interface CESRFidesASRRecord
+ (id)recordFromData:(id)data;
+ (id)recordWithLanguage:(id)language task:(id)task context:(id)context narrowband:(BOOL)narrowband farField:(BOOL)field interactionIdentifier:(id)identifier asrSelfComponentIdentifier:(id)componentIdentifier pluginId:(id)self0;
+ (id)recordWithLanguage:(id)language task:(id)task context:(id)context narrowband:(BOOL)narrowband farField:(BOOL)field interactionIdentifier:(id)identifier asrSelfComponentIdentifier:(id)componentIdentifier pluginId:(id)self0 frequency:(unint64_t)self1;
+ (void)deleteAllRecordsForPlugin:(id)plugin completion:(id)completion;
- (BOOL)hasData;
- (CESRFidesASRRecord)initWithCoder:(id)coder;
- (CESRFidesASRRecord)initWithLanguage:(id)language task:(id)task context:(id)context narrowband:(BOOL)narrowband farField:(BOOL)field interactionIdentifier:(id)identifier asrSelfComponentIdentifier:(id)componentIdentifier pluginId:(id)self0;
- (double)_audioPacketsDuration;
- (id)_recordData;
- (id)_recordInfo;
- (id)concatenatedAudioPackets;
- (id)description;
- (id)todaysDate;
- (void)addAudioPacket:(id)packet;
- (void)encodeWithCoder:(id)coder;
- (void)save;
- (void)saveOneRecordPerDay;
- (void)setCorrectedText:(id)text;
- (void)setCorrectedTextV2:(id)v2;
@end

@implementation CESRFidesASRRecord

- (void)saveOneRecordPerDay
{
  v3 = [objc_alloc(MEMORY[0x277D05630]) initWithBundleIdentifier:self->_pluginId];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__CESRFidesASRRecord_saveOneRecordPerDay__block_invoke;
  v5[3] = &unk_27857F6D0;
  v5[4] = self;
  v6 = v3;
  v4 = v3;
  [v4 fetchSavedRecordInfoWithCompletion:v5];
}

void __41__CESRFidesASRRecord_saveOneRecordPerDay__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *MEMORY[0x277CEF0B8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0B8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "[CESRFidesASRRecord saveOneRecordPerDay]_block_invoke";
      _os_log_error_impl(&dword_225EEB000, v7, OS_LOG_TYPE_ERROR, "%s Failed to fetch records.", buf, 0xCu);
    }
  }

  else
  {
    v19 = a1;
    v8 = [*(a1 + 32) todaysDate];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = [v5 allKeys];
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          v15 = [v5 objectForKeyedSubscript:v14];
          v16 = [v15 objectForKeyedSubscript:@"date"];

          if ([v16 isEqualToString:v8])
          {
            v20[0] = MEMORY[0x277D85DD0];
            v20[1] = 3221225472;
            v20[2] = __41__CESRFidesASRRecord_saveOneRecordPerDay__block_invoke_2;
            v20[3] = &unk_27857F6A8;
            v18 = *(v19 + 32);
            v17 = *(v19 + 40);
            v20[4] = v14;
            v20[5] = v18;
            [v17 deleteSavedRecordWithIdentfier:v14 completion:v20];

            goto LABEL_14;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v27 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    [*(v19 + 32) save];
LABEL_14:

    v6 = 0;
  }
}

void __41__CESRFidesASRRecord_saveOneRecordPerDay__block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF0B8];
  if (v3)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF0B8], OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v7 = 136315394;
      v8 = "[CESRFidesASRRecord saveOneRecordPerDay]_block_invoke_2";
      v9 = 2112;
      v10 = v5;
      _os_log_error_impl(&dword_225EEB000, v4, OS_LOG_TYPE_ERROR, "%s Failed to delete record: %@", &v7, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF0B8], OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 32);
      v7 = 136315394;
      v8 = "[CESRFidesASRRecord saveOneRecordPerDay]_block_invoke";
      v9 = 2112;
      v10 = v6;
      _os_log_debug_impl(&dword_225EEB000, v4, OS_LOG_TYPE_DEBUG, "%s Deleted record(%@)", &v7, 0x16u);
    }

    [*(a1 + 40) save];
  }
}

- (id)todaysDate
{
  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  v3 = [MEMORY[0x277CBEBB0] timeZoneWithAbbreviation:@"UTC"];
  [v2 setTimeZone:v3];

  [v2 setDateFormat:@"yyyyMMdd"];
  date = [MEMORY[0x277CBEAA8] date];
  v5 = [v2 stringFromDate:date];

  return v5;
}

- (void)save
{
  v18 = *MEMORY[0x277D85DE8];
  if (self->_hasRecognizedAnything)
  {
    v3 = [objc_alloc(MEMORY[0x277D05630]) initWithBundleIdentifier:self->_pluginId];
    todaysDate = [(CESRFidesASRRecord *)self todaysDate];
    date = self->_date;
    self->_date = todaysDate;

    _recordInfo = [(CESRFidesASRRecord *)self _recordInfo];
    _recordData = [(CESRFidesASRRecord *)self _recordData];
    v8 = *MEMORY[0x277CEF0B8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0B8], OS_LOG_TYPE_DEBUG))
    {
      v10 = v8;
      *buf = 136315650;
      v13 = "[CESRFidesASRRecord save]";
      v14 = 2114;
      v15 = _recordInfo;
      v16 = 2050;
      v17 = [_recordData length];
      _os_log_debug_impl(&dword_225EEB000, v10, OS_LOG_TYPE_DEBUG, "%s Creating DES record (SPI v2): %{public}@, %{public}zu bytes", buf, 0x20u);
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __26__CESRFidesASRRecord_save__block_invoke;
    v11[3] = &unk_27857F680;
    v11[4] = self;
    [v3 saveRecordWithData:_recordData recordInfo:_recordInfo completion:v11];
  }

  else
  {
    v9 = *MEMORY[0x277CEF0B8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0B8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v13 = "[CESRFidesASRRecord save]";
      _os_log_impl(&dword_225EEB000, v9, OS_LOG_TYPE_INFO, "%s Skip DES record creation because of no recognition", buf, 0xCu);
    }
  }
}

void __26__CESRFidesASRRecord_save__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *MEMORY[0x277CEF0B8];
  if (v6)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF0B8], OS_LOG_TYPE_ERROR))
    {
      v8 = *(*(a1 + 32) + 32);
      v10 = 136315650;
      v11 = "[CESRFidesASRRecord save]_block_invoke";
      v12 = 2114;
      v13 = v8;
      v14 = 2114;
      v15 = v6;
      _os_log_error_impl(&dword_225EEB000, v7, OS_LOG_TYPE_ERROR, "%s Could not write DES record for SPI v2 %{public}@: %{public}@", &v10, 0x20u);
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277CEF0B8], OS_LOG_TYPE_INFO))
  {
    v9 = *(*(a1 + 32) + 32);
    v10 = 136315650;
    v11 = "[CESRFidesASRRecord save]_block_invoke";
    v12 = 2112;
    v13 = v9;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_225EEB000, v7, OS_LOG_TYPE_INFO, "%s DES Record created for SPI v2 %@: %@", &v10, 0x20u);
  }

  [MEMORY[0x277CEF148] logDESRecordingForLanguage:*(*(a1 + 32) + 32) error:v6];
}

- (id)_recordData
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v2 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v6];
  v3 = v6;
  if (!v2)
  {
    v4 = *MEMORY[0x277CEF0B8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0B8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v8 = "[CESRFidesASRRecord _recordData]";
      v9 = 2112;
      v10 = v3;
      _os_log_error_impl(&dword_225EEB000, v4, OS_LOG_TYPE_ERROR, "%s Unable to serialize DES record: %@", buf, 0x16u);
    }
  }

  return v2;
}

- (id)_recordInfo
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v3 setObject:self->_language forKeyedSubscript:@"language"];
  [v3 setObject:self->_task forKeyedSubscript:@"task"];
  [v3 setObject:self->_context forKeyedSubscript:@"context"];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_samplingRate];
  [v3 setObject:v4 forKeyedSubscript:@"samplingRate"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_farField];
  [v3 setObject:v5 forKeyedSubscript:@"farField"];

  [v3 setObject:self->_interactionIdentifier forKeyedSubscript:@"interactionIdentifier"];
  [v3 setObject:self->_asrSelfComponentIdentifier forKeyedSubscript:@"asrSelfComponentIdentifier"];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_personalizedLMUsed];
  [v3 setObject:v6 forKeyedSubscript:@"personalizedLMUsed"];

  [v3 setObject:self->_applicationName forKeyedSubscript:@"applicationName"];
  v7 = MEMORY[0x277CCABB0];
  [(CESRFidesASRRecord *)self _audioPacketsDuration];
  v8 = [v7 numberWithDouble:?];
  [v3 setObject:v8 forKeyedSubscript:@"audioPacketsDuration"];

  [v3 setObject:self->_date forKeyedSubscript:@"date"];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  v12 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  [coderCopy encodeObject:self->_pluginId forKey:@"_pluginId"];
  [coderCopy encodeObject:self->_language forKey:@"_language"];
  [coderCopy encodeObject:self->_task forKey:@"_task"];
  [coderCopy encodeInteger:self->_samplingRate forKey:@"_samplingRate"];
  [coderCopy encodeBool:self->_farField forKey:@"_farField"];
  [coderCopy encodeObject:self->_context forKey:@"_context"];
  [coderCopy encodeObject:self->_UUIDString forKey:@"_UUIDString"];
  originalAudioFileURL = self->_originalAudioFileURL;
  if (originalAudioFileURL)
  {
    v6 = *MEMORY[0x277CEF0B8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0B8], OS_LOG_TYPE_INFO))
    {
      v10 = 136315138;
      v11 = "[CESRFidesASRRecord encodeWithCoder:]";
      _os_log_impl(&dword_225EEB000, v6, OS_LOG_TYPE_INFO, "%s Skipping audio bytes and save originalAudioFileURL instead", &v10, 0xCu);
      originalAudioFileURL = self->_originalAudioFileURL;
    }

    v7 = @"_originalAudioFileURL";
    v8 = coderCopy;
    audioPackets = originalAudioFileURL;
  }

  else
  {
    audioPackets = self->_audioPackets;
    v7 = @"_audioPackets";
    v8 = coderCopy;
  }

  [v8 encodeObject:audioPackets forKey:v7];
  [coderCopy encodeBool:self->_hasRecognizedAnything forKey:@"_hasRecognizedAnything"];
  [coderCopy encodeObject:self->_interactionIdentifier forKey:@"_interactionIdentifier"];
  [coderCopy encodeObject:self->_asrSelfComponentIdentifier forKey:@"_asrSelfComponentIdentifier"];
  [coderCopy encodeObject:self->_correctedText forKey:@"_correctedText"];
  [coderCopy encodeObject:self->_correctedTextV2 forKey:@"_correctedTextV2"];
  [coderCopy encodeObject:self->_recognizedText forKey:@"_recognizedText"];
  [coderCopy encodeObject:self->_postITNRecognizedText forKey:@"_postITNRecognizedText"];
  [coderCopy encodeObject:self->_recognizedNbest forKey:@"_recognizedNbest"];
  [coderCopy encodeBool:self->_personalizedLMUsed forKey:@"_personalizedLMUsed"];
  [coderCopy encodeObject:self->_applicationName forKey:@"_applicationName"];
  [coderCopy encodeObject:self->_date forKey:@"_date"];
  [coderCopy encodeDouble:@"_timestamp" forKey:self->_timestamp];
  [coderCopy encodeObject:self->_alternatives forKey:@"_alternatives"];
  [coderCopy encodeObject:self->_profile forKey:@"_profile"];
}

- (CESRFidesASRRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CESRFidesASRRecord *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_pluginId"];
    pluginId = v5->_pluginId;
    v5->_pluginId = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_language"];
    language = v5->_language;
    v5->_language = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_task"];
    task = v5->_task;
    v5->_task = v10;

    v5->_samplingRate = [coderCopy decodeIntegerForKey:@"_samplingRate"];
    v5->_farField = [coderCopy decodeBoolForKey:@"_farField"];
    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v12 setWithObjects:{v13, v14, v15, v16, objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"_context"];
    context = v5->_context;
    v5->_context = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_UUIDString"];
    UUIDString = v5->_UUIDString;
    v5->_UUIDString = v20;

    v22 = MEMORY[0x277CBEB98];
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v27 = [v22 setWithObjects:{v23, v24, v25, v26, objc_opt_class(), 0}];
    v28 = [coderCopy decodeObjectOfClasses:v27 forKey:@"_audioPackets"];
    v29 = [v28 mutableCopy];
    audioPackets = v5->_audioPackets;
    v5->_audioPackets = v29;

    v5->_hasRecognizedAnything = [coderCopy decodeBoolForKey:@"_hasRecognizedAnything"];
    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_interactionIdentifier"];
    interactionIdentifier = v5->_interactionIdentifier;
    v5->_interactionIdentifier = v31;

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_asrSelfComponentIdentifier"];
    asrSelfComponentIdentifier = v5->_asrSelfComponentIdentifier;
    v5->_asrSelfComponentIdentifier = v33;

    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_correctedText"];
    correctedText = v5->_correctedText;
    v5->_correctedText = v35;

    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_correctedTextV2"];
    correctedTextV2 = v5->_correctedTextV2;
    v5->_correctedTextV2 = v37;

    v39 = MEMORY[0x277CBEB98];
    v40 = objc_opt_class();
    v41 = objc_opt_class();
    v42 = objc_opt_class();
    v43 = objc_opt_class();
    v44 = [v39 setWithObjects:{v40, v41, v42, v43, objc_opt_class(), 0}];
    v45 = [coderCopy decodeObjectOfClasses:v44 forKey:@"_recognizedText"];
    recognizedText = v5->_recognizedText;
    v5->_recognizedText = v45;

    v47 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_postITNRecognizedText"];
    postITNRecognizedText = v5->_postITNRecognizedText;
    v5->_postITNRecognizedText = v47;

    v49 = MEMORY[0x277CBEB98];
    v50 = objc_opt_class();
    v51 = objc_opt_class();
    v52 = objc_opt_class();
    v53 = objc_opt_class();
    v54 = [v49 setWithObjects:{v50, v51, v52, v53, objc_opt_class(), 0}];
    v55 = [coderCopy decodeObjectOfClasses:v54 forKey:@"_recognizedNbest"];
    recognizedNbest = v5->_recognizedNbest;
    v5->_recognizedNbest = v55;

    v5->_personalizedLMUsed = [coderCopy decodeBoolForKey:@"_personalizedLMUsed"];
    v57 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_applicationName"];
    applicationName = v5->_applicationName;
    v5->_applicationName = v57;

    v59 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_date"];
    date = v5->_date;
    v5->_date = v59;

    [coderCopy decodeDoubleForKey:@"_timestamp"];
    v5->_timestamp = v61;
    v62 = MEMORY[0x277CBEB98];
    v63 = objc_opt_class();
    v64 = objc_opt_class();
    v65 = objc_opt_class();
    v66 = objc_opt_class();
    v67 = [v62 setWithObjects:{v63, v64, v65, v66, objc_opt_class(), 0}];
    v68 = [coderCopy decodeObjectOfClasses:v67 forKey:@"_alternatives"];
    alternatives = v5->_alternatives;
    v5->_alternatives = v68;

    v70 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_profile"];
    profile = v5->_profile;
    v5->_profile = v70;

    v72 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_originalAudioFileURL"];
    originalAudioFileURL = v5->_originalAudioFileURL;
    v5->_originalAudioFileURL = v72;
  }

  return v5;
}

- (void)setCorrectedTextV2:(id)v2
{
  v2Copy = v2;
  if (!self->_audioExceededMaxDuration)
  {
    v6 = v2Copy;
    objc_storeStrong(&self->_correctedTextV2, v2);
    v2Copy = v6;
  }
}

- (void)setCorrectedText:(id)text
{
  textCopy = text;
  if (!self->_audioExceededMaxDuration)
  {
    v6 = textCopy;
    objc_storeStrong(&self->_correctedText, text);
    textCopy = v6;
  }
}

- (id)description
{
  v13 = MEMORY[0x277CCACA8];
  v14.receiver = self;
  v14.super_class = CESRFidesASRRecord;
  v3 = [(CESRFidesASRRecord *)&v14 description];
  v12 = *&self->_pluginId;
  samplingRate = self->_samplingRate;
  task = self->_task;
  farField = self->_farField;
  UUIDString = self->_UUIDString;
  context = self->_context;
  [(CESRFidesASRRecord *)self _audioPacketsDuration];
  v5 = [v13 stringWithFormat:@"%@, pluginId=%@, language=%@, task=%@, samplingRate=%ld, farField=%d, context=%@, UUIDString=%@, audioPackets(duration)=%f, hasRecognizedAnything=%d, interactionIdentifier=%@, asrSelfComponentIdentifier=%@, correctedText=%@, correctedTextV2=%@, recognizedText=%@, postITNRecognizedText=%@, recognizedNbest(count)=%lu, personalizedLMUsed=%d, applicationName=%@, date=%@, timestamp=%f, alternatives=%@, profile(length)=%ld, originalAudioFileURL=%@", v3, v12, task, samplingRate, farField, context, UUIDString, v4, self->_hasRecognizedAnything, self->_interactionIdentifier, self->_asrSelfComponentIdentifier, self->_correctedText, self->_correctedTextV2, self->_recognizedText, self->_postITNRecognizedText, -[NSArray count](self->_recognizedNbest, "count"), self->_personalizedLMUsed, self->_applicationName, self->_date, *&self->_timestamp, self->_alternatives, -[NSData length](self->_profile, "length"), self->_originalAudioFileURL];

  return v5;
}

- (id)concatenatedAudioPackets
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_audioPackets;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 appendData:{*(*(&v10 + 1) + 8 * i), v10}];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (double)_audioPacketsDuration
{
  v16 = *MEMORY[0x277D85DE8];
  if (!self->_samplingRate)
  {
    return 0.0;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_audioPackets;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v3);
        }

        v6 += [*(*(&v11 + 1) + 8 * i) length];
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
    v9 = (v6 >> 1);
  }

  else
  {
    v9 = 0.0;
  }

  return v9 / self->_samplingRate;
}

- (BOOL)hasData
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_originalAudioFileURL)
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v3 = self->_audioPackets;
    v2 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v2)
    {
      v4 = *v8;
      while (2)
      {
        for (i = 0; i != v2; ++i)
        {
          if (*v8 != v4)
          {
            objc_enumerationMutation(v3);
          }

          if ([*(*(&v7 + 1) + 8 * i) length])
          {
            LOBYTE(v2) = 1;
            goto LABEL_13;
          }
        }

        v2 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
        if (v2)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v2;
}

- (void)addAudioPacket:(id)packet
{
  packetCopy = packet;
  if (!self->_originalAudioFileURL && self->_samplingRate)
  {
    v6 = packetCopy;
    v5 = self->_collectedAudioDurationMS + ([packetCopy length] >> 1) / self->_samplingRate * 1000.0;
    if (v5 <= 60000.0)
    {
      self->_collectedAudioDurationMS = v5;
      [(NSMutableArray *)self->_audioPackets addObject:v6];
    }

    else
    {
      self->_audioExceededMaxDuration = 1;
    }

    packetCopy = v6;
  }
}

- (CESRFidesASRRecord)initWithLanguage:(id)language task:(id)task context:(id)context narrowband:(BOOL)narrowband farField:(BOOL)field interactionIdentifier:(id)identifier asrSelfComponentIdentifier:(id)componentIdentifier pluginId:(id)self0
{
  narrowbandCopy = narrowband;
  languageCopy = language;
  taskCopy = task;
  contextCopy = context;
  identifierCopy = identifier;
  componentIdentifierCopy = componentIdentifier;
  idCopy = id;
  v44.receiver = self;
  v44.super_class = CESRFidesASRRecord;
  v22 = [(CESRFidesASRRecord *)&v44 init];
  if (v22)
  {
    v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
    audioPackets = v22->_audioPackets;
    v22->_audioPackets = v23;

    v25 = [languageCopy copy];
    language = v22->_language;
    v22->_language = v25;

    v27 = [taskCopy copy];
    task = v22->_task;
    v22->_task = v27;

    v29 = [contextCopy copy];
    context = v22->_context;
    v22->_context = v29;

    v31 = 16000;
    if (narrowbandCopy)
    {
      v31 = 8000;
    }

    v22->_samplingRate = v31;
    v22->_farField = field;
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    UUIDString = v22->_UUIDString;
    v22->_UUIDString = uUIDString;

    v22->_hasRecognizedAnything = 0;
    v35 = [identifierCopy copy];
    interactionIdentifier = v22->_interactionIdentifier;
    v22->_interactionIdentifier = v35;

    v37 = [componentIdentifierCopy copy];
    asrSelfComponentIdentifier = v22->_asrSelfComponentIdentifier;
    v22->_asrSelfComponentIdentifier = v37;

    v39 = [idCopy copy];
    pluginId = v22->_pluginId;
    v22->_pluginId = v39;

    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
    v22->_timestamp = v42;

    v22->_audioExceededMaxDuration = 0;
  }

  return v22;
}

+ (void)deleteAllRecordsForPlugin:(id)plugin completion:(id)completion
{
  pluginCopy = plugin;
  completionCopy = completion;
  v7 = [objc_alloc(MEMORY[0x277D05630]) initWithBundleIdentifier:pluginCopy];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__CESRFidesASRRecord_deleteAllRecordsForPlugin_completion___block_invoke;
  v10[3] = &unk_27857FE80;
  v11 = pluginCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = pluginCopy;
  [v7 deleteAllSavedRecordsWithCompletion:v10];
}

void __59__CESRFidesASRRecord_deleteAllRecordsForPlugin_completion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF0B8];
  if (v3)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF0B8], OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v8 = 136315650;
      v9 = "+[CESRFidesASRRecord deleteAllRecordsForPlugin:completion:]_block_invoke";
      v10 = 2112;
      v11 = v5;
      v12 = 2112;
      v13 = v3;
      _os_log_error_impl(&dword_225EEB000, v4, OS_LOG_TYPE_ERROR, "%s Failed to delete all records for plugin=%@ with error=%@", &v8, 0x20u);
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277CEF0B8], OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v8 = 136315394;
    v9 = "+[CESRFidesASRRecord deleteAllRecordsForPlugin:completion:]_block_invoke";
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_225EEB000, v4, OS_LOG_TYPE_INFO, "%s Successfully deleted all records for plugin=%@", &v8, 0x16u);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }
}

+ (id)recordFromData:(id)data
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAAC8];
  dataCopy = data;
  v10 = 0;
  v5 = [[v3 alloc] initForReadingFromData:dataCopy error:&v10];

  v6 = v10;
  v7 = [v5 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCA308]];
  [v5 finishDecoding];
  if (!v7)
  {
    v8 = *MEMORY[0x277CEF0B8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0B8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v12 = "+[CESRFidesASRRecord recordFromData:]";
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_225EEB000, v8, OS_LOG_TYPE_INFO, "%s DES record unarchive error: %@", buf, 0x16u);
    }
  }

  return v7;
}

+ (id)recordWithLanguage:(id)language task:(id)task context:(id)context narrowband:(BOOL)narrowband farField:(BOOL)field interactionIdentifier:(id)identifier asrSelfComponentIdentifier:(id)componentIdentifier pluginId:(id)self0 frequency:(unint64_t)self1
{
  fieldCopy = field;
  narrowbandCopy = narrowband;
  v29 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  taskCopy = task;
  contextCopy = context;
  identifierCopy = identifier;
  componentIdentifierCopy = componentIdentifier;
  idCopy = id;
  v22 = [objc_alloc(MEMORY[0x277D05630]) initWithBundleIdentifier:idCopy];
  if ([v22 shouldMakeRecordWithFrequency:frequency])
  {
    v23 = [[self alloc] initWithLanguage:languageCopy task:taskCopy context:contextCopy narrowband:narrowbandCopy farField:fieldCopy interactionIdentifier:identifierCopy asrSelfComponentIdentifier:componentIdentifierCopy pluginId:idCopy];
  }

  else
  {
    v24 = *MEMORY[0x277CEF0B8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0B8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v28 = "+[CESRFidesASRRecord recordWithLanguage:task:context:narrowband:farField:interactionIdentifier:asrSelfComponentIdentifier:pluginId:frequency:]";
      _os_log_impl(&dword_225EEB000, v24, OS_LOG_TYPE_INFO, "%s Lost the lottery: not creating DES record this time", buf, 0xCu);
    }

    v23 = 0;
  }

  return v23;
}

+ (id)recordWithLanguage:(id)language task:(id)task context:(id)context narrowband:(BOOL)narrowband farField:(BOOL)field interactionIdentifier:(id)identifier asrSelfComponentIdentifier:(id)componentIdentifier pluginId:(id)self0
{
  fieldCopy = field;
  narrowbandCopy = narrowband;
  v28 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  taskCopy = task;
  contextCopy = context;
  identifierCopy = identifier;
  componentIdentifierCopy = componentIdentifier;
  idCopy = id;
  v22 = [objc_alloc(MEMORY[0x277D05630]) initWithBundleIdentifier:idCopy];
  if ([v22 shouldMakeRecord])
  {
    v23 = [[self alloc] initWithLanguage:languageCopy task:taskCopy context:contextCopy narrowband:narrowbandCopy farField:fieldCopy interactionIdentifier:identifierCopy asrSelfComponentIdentifier:componentIdentifierCopy pluginId:idCopy];
  }

  else
  {
    v24 = *MEMORY[0x277CEF0B8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0B8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v27 = "+[CESRFidesASRRecord recordWithLanguage:task:context:narrowband:farField:interactionIdentifier:asrSelfComponentIdentifier:pluginId:]";
      _os_log_impl(&dword_225EEB000, v24, OS_LOG_TYPE_INFO, "%s Lost the lottery: not creating DES record this time", buf, 0xCu);
    }

    v23 = 0;
  }

  return v23;
}

@end