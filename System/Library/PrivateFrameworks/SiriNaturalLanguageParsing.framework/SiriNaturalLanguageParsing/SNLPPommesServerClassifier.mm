@interface SNLPPommesServerClassifier
+ (id)classifierWithPathURL:(id)l error:(id *)error;
- (id)responseForRequest:(id)request error:(id *)error;
@end

@implementation SNLPPommesServerClassifier

void __50__SNLPPommesServerClassifier__initializationBlock__block_invoke(void *a1@<X1>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a1;
  a2;
  *a3 = 0;
  v6 = [v5 configURL];
  v7 = [v6 path];
  std::string::basic_string[abi:ne200100]<0>(&v11, [v7 UTF8String]);

  [v5 versionURL];
  v8 = [objc_claimAutoreleasedReturnValue() path];
  v9 = v8;
  v12 = [v8 UTF8String];
  v10 = std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(v13, &v12);
  getAssetDirectoryNCV(v10);
}

- (id)responseForRequest:(id)request error:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = SNLPPommesServerClassifier;
  v5 = [(SNLPITFMClassifier *)&v25 responseForRequest:request error:error];
  v6 = v5;
  if (v5)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    hypotheses = [v5 hypotheses];
    v8 = [hypotheses countByEnumeratingWithState:&v21 objects:v36 count:16];
    if (v8)
    {
      v9 = *v22;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(hypotheses);
          }

          v11 = *(*(&v21 + 1) + 8 * i);
          if ([v11 label] == 1)
          {
            [v11 probability];
            v13 = v12;
            [(SNLPPommesServerClassifier *)self confidenceThreshold];
            if (v13 < v14)
            {
              v15 = SNLPOSLoggerForCategory(2);
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
              {
                stringLabel = [v11 stringLabel];
                [v11 probability];
                v18 = v17;
                [(SNLPPommesServerClassifier *)self confidenceThreshold];
                *buf = 136316162;
                v27 = "PSC";
                v28 = 2080;
                v29 = "[insights-snlp-psc]: ";
                v30 = 2112;
                v31 = stringLabel;
                v32 = 2048;
                v33 = v18;
                v34 = 2048;
                v35 = v19;
                _os_log_impl(&dword_22284A000, v15, OS_LOG_TYPE_DEBUG, "[%s] %sPSC %@ probability (%1.2f) is below the 'confidence_threshold: (%1.2f)', setting to -0.0", buf, 0x34u);
              }

              [v11 setProbability:COERCE_DOUBLE(0x8000000080000000)];
              [v6 setClassificationProbability:COERCE_DOUBLE(0x8000000080000000)];
            }

            goto LABEL_15;
          }
        }

        v8 = [hypotheses countByEnumeratingWithState:&v21 objects:v36 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }

  return v6;
}

+ (id)classifierWithPathURL:(id)l error:(id *)error
{
  v71 = *MEMORY[0x277D85DE8];
  v64 = 0;
  lCopy = l;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [lCopy path];
  v6 = [defaultManager fileExistsAtPath:path isDirectory:&v64];

  if (!v6 || v64 != 1)
  {
    if (error)
    {
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v34 = [mainBundle localizedStringForKey:@"An error occured when attempting to read the LVC model bundle at: %@" value:&stru_2835E9330 table:0];

      mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
      v36 = [mainBundle2 localizedStringForKey:@"Check that the path contains a valid model bundle: %@" value:&stru_2835E9330 table:0];

      v37 = MEMORY[0x277CCA9B8];
      v65[0] = *MEMORY[0x277CCA450];
      v38 = MEMORY[0x277CCACA8];
      path2 = [lCopy path];
      v40 = [v38 stringWithFormat:v34, path2];
      v66[0] = v40;
      v65[1] = *MEMORY[0x277CCA470];
      v41 = MEMORY[0x277CCACA8];
      path3 = [lCopy path];
      v43 = [v41 stringWithFormat:v34, path3];
      v66[1] = v43;
      v65[2] = *MEMORY[0x277CCA498];
      v44 = MEMORY[0x277CCACA8];
      path4 = [lCopy path];
      v46 = [v44 stringWithFormat:v36, path4];
      v66[2] = v46;
      v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:3];
      *error = [v37 errorWithDomain:@"SNLPPommesServerClassifierErrorDomain" code:1 userInfo:v47];
    }

    v21 = 0;
    goto LABEL_25;
  }

  v7 = MEMORY[0x277CCACA8];
  std::string::basic_string[abi:ne200100]<0>(buf, "config.json");
  if (v70 >= 0)
  {
    v8 = buf;
  }

  else
  {
    v8 = *buf;
  }

  v9 = [v7 stringWithUTF8String:v8];
  v58 = [lCopy URLByAppendingPathComponent:v9];

  if (v70 < 0)
  {
    operator delete(*buf);
  }

  v54 = [lCopy URLByAppendingPathComponent:@"PSC/PSC.mlmodelc"];
  v55 = [lCopy URLByAppendingPathComponent:@"PSC/spans_pad.txt"];
  v56 = [lCopy URLByAppendingPathComponent:@"PSC/span_label_mapping.txt"];
  v57 = [lCopy URLByAppendingPathComponent:@"PSC/context_pad.txt"];
  v10 = [lCopy URLByAppendingPathComponent:@"PSC/targets.txt"];
  v11 = MEMORY[0x277CCACA8];
  std::string::basic_string[abi:ne200100]<0>(buf, "version.yaml");
  if (v70 >= 0)
  {
    v12 = buf;
  }

  else
  {
    v12 = *buf;
  }

  v13 = [v11 stringWithUTF8String:v12];
  v53 = [lCopy URLByAppendingPathComponent:v13];

  if (v70 < 0)
  {
    operator delete(*buf);
  }

  path5 = [v10 path];
  v15 = [defaultManager isReadableFileAtPath:path5];

  if ((v15 & 1) == 0)
  {

    v10 = 0;
  }

  v63 = 0;
  v16 = [SNLPITFMModelBundle bundleWithEspressoModelURL:v54 configURL:v58 contextVocabularyURL:v57 spanVocabularyURL:v55 spanMappingURL:v56 targetVocabularyURL:v10 versionURL:v53 errorDomain:@"SNLPPommesServerClassifierErrorDomain" error:&v63];
  v17 = v63;
  v18 = v17;
  if (v16)
  {
    v52 = [[SNLPITFMModelInfo alloc] initWithType:2 loggingComponent:4 errorDomain:@"SNLPPommesServerClassifierErrorDomain"];
    v19 = [self alloc];
    _initializationBlock = [self _initializationBlock];
    v62 = 0;
    v21 = [v19 initWithModelBundle:v16 modelInfo:v52 initializationBlock:_initializationBlock error:&v62];
    v22 = v62;

    v23 = v21 != 0;
    if (v21)
    {
      v24 = MEMORY[0x277CCAAA0];
      v25 = MEMORY[0x277CBEA90];
      configURL = [v16 configURL];
      v27 = [v25 dataWithContentsOfURL:configURL];
      v28 = [v24 JSONObjectWithData:v27 options:0 error:0];

      v29 = [v28 objectForKey:@"confidence_threshold"];
      [v29 floatValue];
      [v21 setConfidenceThreshold:?];

      [v21 confidenceThreshold];
      if (v30 > 0.0)
      {
        v31 = SNLPOSLoggerForCategory(2);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          [v21 confidenceThreshold];
          *buf = 136315394;
          *&buf[4] = "PSC";
          v68 = 2048;
          v69 = v32;
          _os_log_impl(&dword_22284A000, v31, OS_LOG_TYPE_DEBUG, "[%s] Loaded config confidence_threshold: %1.2f", buf, 0x16u);
        }
      }
    }

    else if (error)
    {
      v51 = v22;
      *error = v22;
    }
  }

  else if (error)
  {
    v50 = v17;
    v23 = 0;
    v21 = 0;
    *error = v18;
  }

  else
  {
    v23 = 0;
    v21 = 0;
  }

  if (v23)
  {
LABEL_25:
    v21 = v21;
    v48 = v21;
    goto LABEL_26;
  }

  v48 = 0;
LABEL_26:

  return v48;
}

@end