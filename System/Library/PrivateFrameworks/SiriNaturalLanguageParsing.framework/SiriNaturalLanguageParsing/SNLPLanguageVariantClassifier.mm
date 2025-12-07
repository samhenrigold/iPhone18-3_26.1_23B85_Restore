@interface SNLPLanguageVariantClassifier
+ (id)classifierWithPathURL:(id)l error:(id *)error;
@end

@implementation SNLPLanguageVariantClassifier

+ (id)classifierWithPathURL:(id)l error:(id *)error
{
  v58[3] = *MEMORY[0x277D85DE8];
  lCopy = l;
  v56 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [lCopy path];
  v8 = [defaultManager fileExistsAtPath:path isDirectory:&v56];

  if (!v8 || v56 != 1)
  {
    if (error)
    {
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v29 = [mainBundle localizedStringForKey:@"An error occured when attempting to read the LVC model bundle at: %@" value:&stru_2835E9330 table:0];

      mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
      v49 = [mainBundle2 localizedStringForKey:@"Check that the path contains a valid model bundle: %@" value:&stru_2835E9330 table:0];

      v31 = MEMORY[0x277CCA9B8];
      v57[0] = *MEMORY[0x277CCA450];
      v32 = MEMORY[0x277CCACA8];
      path2 = [lCopy path];
      v34 = [v32 stringWithFormat:v29, path2];
      v58[0] = v34;
      v57[1] = *MEMORY[0x277CCA470];
      v35 = MEMORY[0x277CCACA8];
      path3 = [lCopy path];
      v37 = [v35 stringWithFormat:v29, path3];
      v58[1] = v37;
      v57[2] = *MEMORY[0x277CCA498];
      v38 = MEMORY[0x277CCACA8];
      path4 = [lCopy path];
      v40 = [v38 stringWithFormat:v49, path4];
      v58[2] = v40;
      v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:3];
      *error = [v31 errorWithDomain:@"SNLPLanguageVariantClassifierErrorDomain" code:1 userInfo:v41];
    }

    v24 = 0;
    goto LABEL_21;
  }

  v9 = MEMORY[0x277CCACA8];
  std::string::basic_string[abi:ne200100]<0>(__p, "config.json");
  if (v55 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  v11 = [v9 stringWithUTF8String:v10];
  v48 = [lCopy URLByAppendingPathComponent:v11];

  if (v55 < 0)
  {
    operator delete(__p[0]);
  }

  v45 = [lCopy URLByAppendingPathComponent:@"LVC/LVC.mlmodelc"];
  v47 = [lCopy URLByAppendingPathComponent:@"LVC/spans_pad.txt"];
  v46 = [lCopy URLByAppendingPathComponent:@"LVC/span_label_mapping.txt"];
  v12 = [lCopy URLByAppendingPathComponent:@"LVC/context_pad.txt"];
  v13 = [lCopy URLByAppendingPathComponent:@"LVC/targets.txt"];
  v14 = MEMORY[0x277CCACA8];
  std::string::basic_string[abi:ne200100]<0>(__p, "version.yaml");
  if (v55 >= 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  v16 = [v14 stringWithUTF8String:v15];
  v17 = [lCopy URLByAppendingPathComponent:v16];

  if (v55 < 0)
  {
    operator delete(__p[0]);
  }

  v53 = 0;
  v18 = [SNLPITFMModelBundle bundleWithEspressoModelURL:v45 configURL:v48 contextVocabularyURL:v12 spanVocabularyURL:v47 spanMappingURL:v46 targetVocabularyURL:v13 versionURL:v17 errorDomain:@"SNLPLanguageVariantClassifierErrorDomain" error:&v53];
  v19 = v53;
  v20 = v19;
  if (v18)
  {
    v21 = [[SNLPITFMModelInfo alloc] initWithType:3 loggingComponent:5 errorDomain:@"SNLPLanguageVariantClassifierErrorDomain"];
    v22 = [self alloc];
    v52.receiver = self;
    v52.super_class = &OBJC_METACLASS___SNLPLanguageVariantClassifier;
    v23 = objc_msgSendSuper2(&v52, sel__initializationBlock);
    v51 = 0;
    v24 = [v22 initWithModelBundle:v18 modelInfo:v21 initializationBlock:v23 error:&v51];
    v25 = v51;

    v26 = v24 != 0;
    if (error && !v24)
    {
      v27 = v25;
      *error = v25;
    }
  }

  else if (error)
  {
    v44 = v19;
    v26 = 0;
    v24 = 0;
    *error = v20;
  }

  else
  {
    v26 = 0;
    v24 = 0;
  }

  if (v26)
  {
LABEL_21:
    v24 = v24;
    v42 = v24;
    goto LABEL_22;
  }

  v42 = 0;
LABEL_22:

  return v42;
}

@end