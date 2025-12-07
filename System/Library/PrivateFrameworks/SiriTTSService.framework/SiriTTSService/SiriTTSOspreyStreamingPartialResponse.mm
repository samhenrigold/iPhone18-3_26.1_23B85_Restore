@interface SiriTTSOspreyStreamingPartialResponse
+ (void)processServerLogs:(id)logs;
- (AudioStreamBasicDescription)asbd;
- (SiriTTSOspreyStreamingPartialResponse)initWithOspreyPartialResponse:(id)response;
- (void)setAsbd:(AudioStreamBasicDescription *)asbd;
@end

@implementation SiriTTSOspreyStreamingPartialResponse

- (void)setAsbd:(AudioStreamBasicDescription *)asbd
{
  v3 = *&asbd->mSampleRate;
  v4 = *&asbd->mBytesPerPacket;
  *&self->_asbd.mBitsPerChannel = *&asbd->mBitsPerChannel;
  *&self->_asbd.mBytesPerPacket = v4;
  *&self->_asbd.mSampleRate = v3;
}

- (AudioStreamBasicDescription)asbd
{
  v3 = *&self[1].mSampleRate;
  *&retstr->mSampleRate = *&self->mBytesPerFrame;
  *&retstr->mBytesPerPacket = v3;
  *&retstr->mBitsPerChannel = *&self[1].mBytesPerPacket;
  return self;
}

- (SiriTTSOspreyStreamingPartialResponse)initWithOspreyPartialResponse:(id)response
{
  v26 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  v24.receiver = self;
  v24.super_class = SiriTTSOspreyStreamingPartialResponse;
  v5 = [(SiriTTSOspreyStreamingPartialResponse *)&v24 init];
  if (v5)
  {
    audio = [responseCopy audio];
    audioData = v5->_audioData;
    v5->_audioData = audio;

    array = [MEMORY[0x1E695DF70] array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v19 = responseCopy;
    word_timing_info = [responseCopy word_timing_info];
    v10 = [word_timing_info countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        v13 = 0;
        do
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(word_timing_info);
          }

          v14 = *(*(&v20 + 1) + 8 * v13);
          v15 = objc_alloc_init(SiriTTSOspreyWordTimingInfo);
          -[SiriTTSOspreyWordTimingInfo setTextRange:](v15, "setTextRange:", [v14 offset], objc_msgSend(v14, "length"));
          [v14 timestamp];
          [(SiriTTSOspreyWordTimingInfo *)v15 setTimestamp:v16];
          [(NSArray *)array addObject:v15];

          ++v13;
        }

        while (v11 != v13);
        v11 = [word_timing_info countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v11);
    }

    timingInfos = v5->_timingInfos;
    v5->_timingInfos = array;

    responseCopy = v19;
  }

  return v5;
}

+ (void)processServerLogs:(id)logs
{
  v91 = *MEMORY[0x1E69E9840];
  [logs feature];
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v54 = v80 = 0u;
  replacement = [v54 replacement];
  v4 = [replacement countByEnumeratingWithState:&v77 objects:v90 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v78;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v78 != v6)
        {
          objc_enumerationMutation(replacement);
        }

        v8 = *(*(&v77 + 1) + 8 * i);
        v9 = TTSGetServiceLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          original = [v8 original];
          replacement2 = [v8 replacement];
          *buf = 138412546;
          v87 = original;
          v88 = 2112;
          v89 = replacement2;
        }
      }

      v5 = [replacement countByEnumeratingWithState:&v77 objects:v90 count:16];
    }

    while (v5);
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  prompts = [v54 prompts];
  v13 = [prompts countByEnumeratingWithState:&v73 objects:v85 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v74;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v74 != v15)
        {
          objc_enumerationMutation(prompts);
        }

        v17 = *(*(&v73 + 1) + 8 * j);
        prompts2 = [v17 prompts];
        v19 = [prompts2 count];

        if (v19)
        {
          v20 = TTSGetServiceLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            prompts3 = [v17 prompts];
            v22 = [prompts3 componentsJoinedByString:@" "];
            *buf = 138412290;
            v87 = v22;
            _os_log_impl(&dword_1B1A8A000, v20, OS_LOG_TYPE_INFO, "Prompt: %@", buf, 0xCu);
          }
        }
      }

      v14 = [prompts countByEnumeratingWithState:&v73 objects:v85 count:16];
    }

    while (v14);
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = [v54 phoneme_sequence];
  v23 = [obj countByEnumeratingWithState:&v69 objects:v84 count:16];
  if (v23)
  {
    v24 = v23;
    v56 = *v70;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v70 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v69 + 1) + 8 * k);
        array = [MEMORY[0x1E695DF70] array];
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        word_phonemes = [v26 word_phonemes];
        v29 = [word_phonemes countByEnumeratingWithState:&v65 objects:v83 count:16];
        if (v29)
        {
          v30 = v29;
          v31 = *v66;
          do
          {
            for (m = 0; m != v30; ++m)
            {
              if (*v66 != v31)
              {
                objc_enumerationMutation(word_phonemes);
              }

              phonemes = [*(*(&v65 + 1) + 8 * m) phonemes];
              v34 = [phonemes componentsJoinedByString:@" "];
              [array addObject:v34];
            }

            v30 = [word_phonemes countByEnumeratingWithState:&v65 objects:v83 count:16];
          }

          while (v30);
        }

        v35 = TTSGetServiceLog();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          v36 = [array componentsJoinedByString:@" _ "];
          *buf = 138412290;
          v87 = v36;
          _os_log_impl(&dword_1B1A8A000, v35, OS_LOG_TYPE_INFO, "Phonemes: %@", buf, 0xCu);
        }
      }

      v24 = [obj countByEnumeratingWithState:&v69 objects:v84 count:16];
    }

    while (v24);
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  normalized_text = [v54 normalized_text];
  v38 = [normalized_text countByEnumeratingWithState:&v61 objects:v82 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v62;
    do
    {
      for (n = 0; n != v39; ++n)
      {
        if (*v62 != v40)
        {
          objc_enumerationMutation(normalized_text);
        }

        v42 = *(*(&v61 + 1) + 8 * n);
        v43 = TTSGetServiceLog();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          text = [v42 text];
          *buf = 138412290;
          v87 = text;
        }
      }

      v39 = [normalized_text countByEnumeratingWithState:&v61 objects:v82 count:16];
    }

    while (v39);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  neural_phoneme_sequence = [v54 neural_phoneme_sequence];
  v46 = [neural_phoneme_sequence countByEnumeratingWithState:&v57 objects:v81 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v58;
    do
    {
      for (ii = 0; ii != v47; ++ii)
      {
        if (*v58 != v48)
        {
          objc_enumerationMutation(neural_phoneme_sequence);
        }

        v50 = *(*(&v57 + 1) + 8 * ii);
        v51 = TTSGetServiceLog();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          phonemes2 = [v50 phonemes];
          v53 = [phonemes2 componentsJoinedByString:@" "];
          *buf = 138412290;
          v87 = v53;
          _os_log_impl(&dword_1B1A8A000, v51, OS_LOG_TYPE_INFO, "Neural Phonemes: %@", buf, 0xCu);
        }
      }

      v47 = [neural_phoneme_sequence countByEnumeratingWithState:&v57 objects:v81 count:16];
    }

    while (v47);
  }
}

@end