@interface SSRSpeakerProfileEmbeddingExtractor
+ (void)_extractWithModelContext:(id)context completion:(id)completion;
+ (void)extractPSRVoiceProfileWithContext:(id)context completion:(id)completion;
+ (void)extractProfileData:(id)data completion:(id)completion;
+ (void)extractSATVoiceProfileWithContext:(id)context completion:(id)completion;
@end

@implementation SSRSpeakerProfileEmbeddingExtractor

+ (void)extractProfileData:(id)data completion:(id)completion
{
  v56 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  completionCopy = completion;
  v7 = MEMORY[0x277D01970];
  v8 = *MEMORY[0x277D01970];
  v9 = *MEMORY[0x277D01970];
  if (dataCopy)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v8;
      path = [dataCopy path];
      *buf = 136315394;
      v52 = "+[SSRSpeakerProfileEmbeddingExtractor extractProfileData:completion:]";
      v53 = 2112;
      *v54 = path;
      _os_log_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEFAULT, "%s Extracting profile from : %@", buf, 0x16u);
    }

    v12 = MEMORY[0x277CBEAE0];
    path2 = [dataCopy path];
    v14 = [v12 inputStreamWithFileAtPath:path2];

    if (v14)
    {
      [v14 open];
      [v14 read:v55 maxLength:16];
      for (i = 0; i != 16; ++i)
      {
        v16 = v55[i];
        v17 = aSpkeratV001[i];
        if (v16 != v17)
        {
          v23 = *v7;
          if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v52 = "+[SSRSpeakerProfileEmbeddingExtractor extractProfileData:completion:]";
            v53 = 1024;
            *v54 = v16;
            *&v54[4] = 1024;
            *&v54[6] = v17;
            _os_log_error_impl(&dword_225E12000, v23, OS_LOG_TYPE_ERROR, "%s cannot extract profile embedding : cookie match failed %d %d", buf, 0x18u);
          }

          [v14 close];
          v20 = MEMORY[0x277CCA9B8];
          v21 = &unk_283933040;
          goto LABEL_25;
        }
      }

      v50 = 0;
      [v14 read:&v50 maxLength:4];
      v49 = 0;
      [v14 read:&v49 maxLength:4];
      v48 = 0;
      [v14 read:&v48 maxLength:4];
      v47 = 0;
      [v14 read:&v47 maxLength:4];
      v46 = 0;
      [v14 read:&v46 maxLength:4];
      v45 = 0;
      [v14 read:&v45 maxLength:4];
      v44 = 0;
      [v14 read:&v44 maxLength:4];
      v43 = 0;
      [v14 read:&v43 maxLength:4];
      v42 = 0;
      [v14 read:&v42 maxLength:4];
      v41 = 0;
      [v14 read:&v41 maxLength:4];
      [v14 read:&v41 maxLength:4];
      [v14 read:&v41 maxLength:4];
      [v14 read:&v41 maxLength:4];
      [v14 read:&v41 maxLength:4];
      [v14 read:&v41 maxLength:4];
      [v14 read:&v41 maxLength:4];
      if (v49 != 1)
      {
        v24 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v52 = "+[SSRSpeakerProfileEmbeddingExtractor extractProfileData:completion:]";
          _os_log_error_impl(&dword_225E12000, v24, OS_LOG_TYPE_ERROR, "%s cannot read incompatible version", buf, 0xCu);
        }

        [v14 close];
        v20 = MEMORY[0x277CCA9B8];
        v21 = &unk_283933068;
        goto LABEL_25;
      }

      v18 = v48;
      if (v48 >= 0x989681)
      {
        v19 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v52 = "+[SSRSpeakerProfileEmbeddingExtractor extractProfileData:completion:]";
          _os_log_error_impl(&dword_225E12000, v19, OS_LOG_TYPE_ERROR, "%s header specifies implausible filesize", buf, 0xCu);
        }

        [v14 close];
        v20 = MEMORY[0x277CCA9B8];
        v21 = &unk_283933090;
        goto LABEL_25;
      }

      if (!v47)
      {
        v27 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v52 = "+[SSRSpeakerProfileEmbeddingExtractor extractProfileData:completion:]";
          _os_log_error_impl(&dword_225E12000, v27, OS_LOG_TYPE_ERROR, "%s nil vector", buf, 0xCu);
        }

        v20 = MEMORY[0x277CCA9B8];
        v21 = &unk_2839330B8;
        goto LABEL_25;
      }

      if (!v46)
      {
        v30 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v52 = "+[SSRSpeakerProfileEmbeddingExtractor extractProfileData:completion:]";
          _os_log_error_impl(&dword_225E12000, v30, OS_LOG_TYPE_ERROR, "%s Empty profile", buf, 0xCu);
        }

        v20 = MEMORY[0x277CCA9B8];
        v21 = &unk_2839330E0;
        goto LABEL_25;
      }

      if (v44 < v47)
      {
        v26 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v52 = "+[SSRSpeakerProfileEmbeddingExtractor extractProfileData:completion:]";
          _os_log_error_impl(&dword_225E12000, v26, OS_LOG_TYPE_ERROR, "%s stride is less than width", buf, 0xCu);
        }

        [v14 close];
        v20 = MEMORY[0x277CCA9B8];
        v21 = &unk_283933108;
        goto LABEL_25;
      }

      if (v43 < v46)
      {
        v31 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v52 = "+[SSRSpeakerProfileEmbeddingExtractor extractProfileData:completion:]";
          _os_log_error_impl(&dword_225E12000, v31, OS_LOG_TYPE_ERROR, "%s stride is less than width", buf, 0xCu);
        }

        [v14 close];
        v20 = MEMORY[0x277CCA9B8];
        v21 = &unk_283933130;
        goto LABEL_25;
      }

      if (v42)
      {
        v32 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v52 = "+[SSRSpeakerProfileEmbeddingExtractor extractProfileData:completion:]";
          _os_log_error_impl(&dword_225E12000, v32, OS_LOG_TYPE_ERROR, "%s only float32 dataformat supported", buf, 0xCu);
        }

        [v14 close];
        v20 = MEMORY[0x277CCA9B8];
        v21 = &unk_283933158;
        goto LABEL_25;
      }

      if (v48 != 4 * v44 * v43)
      {
        v36 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v52 = "+[SSRSpeakerProfileEmbeddingExtractor extractProfileData:completion:]";
          _os_log_error_impl(&dword_225E12000, v36, OS_LOG_TYPE_ERROR, "%s unexpected file size", buf, 0xCu);
        }

        [v14 close];
        v20 = MEMORY[0x277CCA9B8];
        v21 = &unk_283933180;
        goto LABEL_25;
      }

      v25 = [MEMORY[0x277CBEB28] dataWithLength:v48];
      v33 = [v14 read:objc_msgSend(v25 maxLength:{"mutableBytes"), v18}];
      [v14 close];
      mutableBytes = [v25 mutableBytes];
      v35 = v44 * v43;
      if (v35)
      {
        while ((*mutableBytes & 0x7FFFFFFFu) < 0x7F800000)
        {
          ++mutableBytes;
          if (!--v35)
          {
            goto LABEL_52;
          }
        }

        v38 = MEMORY[0x277CCA9B8];
        v39 = &unk_2839331A8;
      }

      else
      {
LABEL_52:
        if (v33 == v48)
        {
          (*(completionCopy + 2))(completionCopy, v25, v46, v47, 0);
          goto LABEL_26;
        }

        v37 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v52 = "+[SSRSpeakerProfileEmbeddingExtractor extractProfileData:completion:]";
          _os_log_error_impl(&dword_225E12000, v37, OS_LOG_TYPE_ERROR, "%s cannot read enough data from file:", buf, 0xCu);
        }

        v38 = MEMORY[0x277CCA9B8];
        v39 = &unk_2839331D0;
      }

      v40 = [v38 errorWithDomain:@"com.apple.speakerrecognition" code:759 userInfo:v39];
      (*(completionCopy + 2))(completionCopy, 0, 0, 0, v40);
    }

    else
    {
      v22 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
      {
        v28 = v22;
        path3 = [dataCopy path];
        *buf = 136315394;
        v52 = "+[SSRSpeakerProfileEmbeddingExtractor extractProfileData:completion:]";
        v53 = 2112;
        *v54 = path3;
        _os_log_error_impl(&dword_225E12000, v28, OS_LOG_TYPE_ERROR, "%s cannot extract profile embedding : inputStream = nil, %@", buf, 0x16u);
      }

      v20 = MEMORY[0x277CCA9B8];
      v21 = &unk_283933018;
LABEL_25:
      v25 = [v20 errorWithDomain:@"com.apple.speakerrecognition" code:759 userInfo:v21];
      (*(completionCopy + 2))(completionCopy, 0, 0, 0, v25);
    }

LABEL_26:
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v52 = "+[SSRSpeakerProfileEmbeddingExtractor extractProfileData:completion:]";
      _os_log_error_impl(&dword_225E12000, v8, OS_LOG_TYPE_ERROR, "%s cannot extract profile embedding : profileURL = nil", buf, 0xCu);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0, 0, 0);
  }
}

+ (void)_extractWithModelContext:(id)context completion:(id)completion
{
  v42 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v19 = contextCopy;
  completionCopy = completion;
  if (contextCopy)
  {
    voiceProfilesModelFilePathsExclave = [contextCopy voiceProfilesModelFilePathsExclave];
    v18 = voiceProfilesModelFilePathsExclave;
    v8 = voiceProfilesModelFilePathsExclave;
    if (voiceProfilesModelFilePathsExclave && [voiceProfilesModelFilePathsExclave count])
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v38 = 0x3032000000;
      v39 = __Block_byref_object_copy__868;
      v40 = __Block_byref_object_dispose__869;
      v41 = 0;
      v34[0] = 0;
      v34[1] = v34;
      v34[2] = 0x2020000000;
      v35 = 0;
      v32[0] = 0;
      v32[1] = v32;
      v32[2] = 0x2020000000;
      v33 = 0;
      v26 = 0;
      v27 = &v26;
      v28 = 0x3032000000;
      v29 = __Block_byref_object_copy__868;
      v30 = __Block_byref_object_dispose__869;
      v31 = 0;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      allValues = [v8 allValues];
      v10 = [allValues countByEnumeratingWithState:&v22 objects:v36 count:16];
      if (v10)
      {
        v11 = *v23;
LABEL_6:
        v12 = 0;
        while (1)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(allValues);
          }

          v13 = MEMORY[0x277CBEBC0];
          path = [*(*(&v22 + 1) + 8 * v12) path];
          v15 = [v13 fileURLWithPath:path];

          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = __75__SSRSpeakerProfileEmbeddingExtractor__extractWithModelContext_completion___block_invoke;
          v21[3] = &unk_278577E50;
          v21[4] = &buf;
          v21[5] = v34;
          v21[6] = v32;
          v21[7] = &v26;
          [self extractProfileData:v15 completion:v21];
          LOBYTE(path) = v27[5] == 0;

          if (path)
          {
            break;
          }

          if (v10 == ++v12)
          {
            v10 = [allValues countByEnumeratingWithState:&v22 objects:v36 count:16];
            if (v10)
            {
              goto LABEL_6;
            }

            break;
          }
        }
      }

      if (completionCopy)
      {
        completionCopy[2]();
      }

      _Block_object_dispose(&v26, 8);

      _Block_object_dispose(v32, 8);
      _Block_object_dispose(v34, 8);
      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v16 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "+[SSRSpeakerProfileEmbeddingExtractor _extractWithModelContext:completion:]";
        _os_log_error_impl(&dword_225E12000, v16, OS_LOG_TYPE_ERROR, "%s cannot extract profile embedding : modelContext = nil", &buf, 0xCu);
      }

      (completionCopy[2])(completionCopy, 0, 0, 0, 0);
    }
  }

  else
  {
    v17 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "+[SSRSpeakerProfileEmbeddingExtractor _extractWithModelContext:completion:]";
      _os_log_error_impl(&dword_225E12000, v17, OS_LOG_TYPE_ERROR, "%s cannot extract profile embedding : model context is nil", &buf, 0xCu);
    }

    (completionCopy[2])(completionCopy, 0, 0, 0, 0);
  }
}

void __75__SSRSpeakerProfileEmbeddingExtractor__extractWithModelContext_completion___block_invoke(void *a1, void *a2, int a3, int a4, void *a5)
{
  v9 = a2;
  v10 = a5;
  v11 = *(a1[4] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v9;
  v15 = v9;

  *(*(a1[5] + 8) + 24) = a3;
  *(*(a1[6] + 8) + 24) = a4;
  v13 = *(a1[7] + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v10;
}

+ (void)extractSATVoiceProfileWithContext:(id)context completion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  if (completionCopy)
  {
    if (contextCopy)
    {
      modelsContext = [contextCopy modelsContext];
      v9 = [SSRUtils stringForSpeakerRecognizerType:2];
      v10 = [modelsContext objectForKeyedSubscript:v9];

      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __84__SSRSpeakerProfileEmbeddingExtractor_extractSATVoiceProfileWithContext_completion___block_invoke;
      v12[3] = &unk_278577E28;
      v13 = completionCopy;
      [self _extractWithModelContext:v10 completion:v12];
    }

    else
    {
      v11 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v15 = "+[SSRSpeakerProfileEmbeddingExtractor extractSATVoiceProfileWithContext:completion:]";
        _os_log_error_impl(&dword_225E12000, v11, OS_LOG_TYPE_ERROR, "%s cannot extract profile embedding : context is nil", buf, 0xCu);
      }

      (*(completionCopy + 2))(completionCopy, 0, 0, 0, 2, 0);
    }
  }
}

+ (void)extractPSRVoiceProfileWithContext:(id)context completion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  if (completionCopy)
  {
    if (contextCopy)
    {
      modelsContext = [contextCopy modelsContext];
      v9 = [SSRUtils stringForSpeakerRecognizerType:1];
      v10 = [modelsContext objectForKeyedSubscript:v9];

      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __84__SSRSpeakerProfileEmbeddingExtractor_extractPSRVoiceProfileWithContext_completion___block_invoke;
      v12[3] = &unk_278577E28;
      v13 = completionCopy;
      [self _extractWithModelContext:v10 completion:v12];
    }

    else
    {
      v11 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v15 = "+[SSRSpeakerProfileEmbeddingExtractor extractPSRVoiceProfileWithContext:completion:]";
        _os_log_error_impl(&dword_225E12000, v11, OS_LOG_TYPE_ERROR, "%s cannot extract profile embedding : context is nil", buf, 0xCu);
      }

      (*(completionCopy + 2))(completionCopy, 0, 0, 0, 1, 0);
    }
  }
}

@end