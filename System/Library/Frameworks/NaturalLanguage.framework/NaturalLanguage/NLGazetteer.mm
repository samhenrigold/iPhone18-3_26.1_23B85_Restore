@interface NLGazetteer
+ (BOOL)writeGazetteerForDictionary:(NSDictionary *)dictionary language:(NLLanguage)language toURL:(NSURL *)url error:(NSError *)error;
+ (BOOL)writeGazetteerMLModelForDictionary:(id)dictionary language:(id)language toURL:(id)l options:(id)options error:(id *)error;
+ (NLGazetteer)gazetteerWithContentsOfURL:(NSURL *)url error:(NSError *)error;
+ (NLGazetteer)gazetteerWithData:(id)data error:(id *)error;
+ (NLGazetteer)gazetteerWithMLModel:(id)model error:(id *)error;
- (BOOL)writeMLModelToURL:(id)l options:(id)options error:(id *)error;
- (NLGazetteer)initWithContentsOfURL:(NSURL *)url error:(NSError *)error;
- (NLGazetteer)initWithData:(NSData *)data error:(NSError *)error;
- (NLGazetteer)initWithDictionary:(NSDictionary *)dictionary language:(NLLanguage)language error:(NSError *)error;
- (NLGazetteer)initWithMLModel:(id)model error:(id *)error;
- (NLGazetteer)initWithNLModel:(id)model error:(id *)p_isa;
- (NSData)data;
- (NSString)labelForString:(NSString *)string;
- (id)labels;
- (id)modelDescription;
- (void)dealloc;
@end

@implementation NLGazetteer

+ (NLGazetteer)gazetteerWithContentsOfURL:(NSURL *)url error:(NSError *)error
{
  v5 = url;
  v6 = [objc_alloc(objc_opt_class()) initWithContentsOfURL:v5 error:error];

  return v6;
}

+ (NLGazetteer)gazetteerWithData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = [objc_alloc(objc_opt_class()) initWithData:dataCopy error:error];

  return v6;
}

+ (NLGazetteer)gazetteerWithMLModel:(id)model error:(id *)error
{
  modelCopy = model;
  v6 = [objc_alloc(objc_opt_class()) initWithMLModel:modelCopy error:error];

  return v6;
}

- (NLGazetteer)initWithContentsOfURL:(NSURL *)url error:(NSError *)error
{
  v34[1] = *MEMORY[0x1E69E9840];
  v6 = url;
  path = [(NSURL *)v6 path];
  pathExtension = [path pathExtension];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v26 = 0;
  if (([defaultManager fileExistsAtPath:path isDirectory:&v26] & 1) == 0)
  {
    if (!error)
    {
      goto LABEL_10;
    }

    v13 = MEMORY[0x1E696ABC0];
    v33 = *MEMORY[0x1E696A578];
    v34[0] = @"Could not find gazetteer file";
    v14 = MEMORY[0x1E695DF20];
    v15 = v34;
    v16 = &v33;
    goto LABEL_8;
  }

  if (v26)
  {
    goto LABEL_3;
  }

  if ([pathExtension isEqualToString:@"mlmodel"])
  {
    if (!error)
    {
      goto LABEL_10;
    }

    v13 = MEMORY[0x1E696ABC0];
    v31 = *MEMORY[0x1E696A578];
    v32 = @"Cannot load gazetteer from uncompiled mlmodel file";
    v14 = MEMORY[0x1E695DF20];
    v15 = &v32;
    v16 = &v31;
LABEL_8:
    v17 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:1];
    *error = [v13 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:1 userInfo:v17];

    goto LABEL_9;
  }

  if ((v26 & 1) == 0)
  {
    v25 = 0;
    v29 = *MEMORY[0x1E6998140];
    v30 = v6;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v19 = NLGazetteerCreate();
    if (v19)
    {
      v20 = v19;
      v24.receiver = self;
      v24.super_class = NLGazetteer;
      v21 = [(NLGazetteer *)&v24 init];
      if (v21)
      {
        v21->_gazetteer = v20;
      }

      v12 = v21;
      goto LABEL_5;
    }

    if (error)
    {
      v22 = MEMORY[0x1E696ABC0];
      v27 = *MEMORY[0x1E696A578];
      v28 = @"Failed to load gazetteer file";
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      *error = [v22 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:1 userInfo:v23];
    }
  }

LABEL_3:
  v10 = [NLModel modelWithContentsOfURL:v6 error:error];
  if (!v10)
  {
LABEL_9:
    error = 0;
    goto LABEL_10;
  }

  v11 = v10;
  v12 = [(NLGazetteer *)self initWithNLModel:v10 error:error];
LABEL_5:
  self = v12;

  error = self;
LABEL_10:

  return error;
}

- (NLGazetteer)initWithData:(NSData *)data error:(NSError *)error
{
  v22[1] = *MEMORY[0x1E69E9840];
  v6 = data;
  v18 = 0;
  v21 = *MEMORY[0x1E6998138];
  v22[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  v8 = NLGazetteerCreate();
  if (v8)
  {
    v9 = v8;
    v17.receiver = self;
    v17.super_class = NLGazetteer;
    v10 = [(NLGazetteer *)&v17 init];
    if (v10)
    {
      v10->_gazetteer = v9;
    }

    self = v10;
    selfCopy2 = self;
  }

  else
  {
    v12 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A578];
    v20 = @"Failed to load gazetteer data";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    *error = [v12 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:5 userInfo:v13];

    v14 = [NLModel modelWithData:v6 error:error];
    if (v14)
    {
      v15 = v14;
      self = [(NLGazetteer *)self initWithNLModel:v14 error:error];

      selfCopy2 = self;
    }

    else
    {
      selfCopy2 = 0;
    }
  }

  return selfCopy2;
}

- (NLGazetteer)initWithNLModel:(id)model error:(id *)p_isa
{
  v16[1] = *MEMORY[0x1E69E9840];
  modelCopy = model;
  gazetteer = [modelCopy gazetteer];
  _gazetteerRef = [gazetteer _gazetteerRef];

  if (_gazetteerRef)
  {
    v14.receiver = self;
    v14.super_class = NLGazetteer;
    v10 = [(NLGazetteer *)&v14 init];
    if (v10)
    {
      v10->_gazetteer = CFRetain(_gazetteerRef);
      objc_storeStrong(&v10->_nlModel, model);
    }

    self = v10;
    p_isa = &self->super.isa;
  }

  else if (p_isa)
  {
    v11 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696A578];
    v16[0] = @"Failed to load gazetteer file";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    *p_isa = [v11 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:6 userInfo:v12];

    p_isa = 0;
  }

  return p_isa;
}

- (NLGazetteer)initWithMLModel:(id)model error:(id *)error
{
  v6 = [NLModel modelWithMLModel:model error:?];
  if (v6)
  {
    self = [(NLGazetteer *)self initWithNLModel:v6 error:error];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v8 = selfCopy;

  return v8;
}

- (NLGazetteer)initWithDictionary:(NSDictionary *)dictionary language:(NLLanguage)language error:(NSError *)error
{
  v8 = dictionary;
  v9 = language;
  v17 = 0;
  if (v9)
  {
    v10 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v9];
  }

  else
  {
    v10 = 0;
  }

  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v8, *MEMORY[0x1E6998148], v10, *MEMORY[0x1E6998150], 0}];
  v12 = NLGazetteerCreate();
  if (v12)
  {
    v13 = v12;
    v16.receiver = self;
    v16.super_class = NLGazetteer;
    v14 = [(NLGazetteer *)&v16 init];
    self = v14;
    if (v14)
    {
      v14->_gazetteer = v13;
    }
  }

  else if (error)
  {
    *error = v17;
  }

  return self;
}

- (void)dealloc
{
  gazetteer = self->_gazetteer;
  if (gazetteer)
  {
    CFRelease(gazetteer);
  }

  v4.receiver = self;
  v4.super_class = NLGazetteer;
  [(NLGazetteer *)&v4 dealloc];
}

- (NSString)labelForString:(NSString *)string
{
  v3 = NLGazetteerCopyLabel();

  return v3;
}

- (id)labels
{
  v2 = NLGazetteerCopyAvailableLabels();

  return v2;
}

- (NSData)data
{
  v2 = NLGazetteerCopyCompressedModel();

  return v2;
}

+ (BOOL)writeGazetteerForDictionary:(NSDictionary *)dictionary language:(NLLanguage)language toURL:(NSURL *)url error:(NSError *)error
{
  v9 = url;
  v10 = language;
  v11 = dictionary;
  v12 = [objc_alloc(objc_opt_class()) initWithDictionary:v11 language:v10 error:error];

  if (v12)
  {
    data = [v12 data];
    v14 = [data writeToURL:v9 options:1 error:error];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)modelDescription
{
  labels = [(NLGazetteer *)self labels];
  v3 = labels;
  if (labels && [labels count])
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = [v3 componentsJoinedByString:{@", "}];
    v6 = [v4 stringWithFormat:@"This model is a gazetteer which tags words according to set {%@}", v5];
  }

  else
  {
    v6 = @"This model is a gazetteer";
  }

  return v6;
}

- (BOOL)writeMLModelToURL:(id)l options:(id)options error:(id *)error
{
  lCopy = l;
  optionsCopy = options;
  v10 = MEMORY[0x1E695DF20];
  language = [(NLGazetteer *)self language];
  v12 = [v10 dictionaryWithObjectsAndKeys:{language, @"Language", 0}];
  v13 = [NLModelConfiguration defaultModelConfigurationForType:0 options:v12 error:error];

  v14 = [[NLModelImplG alloc] initWithGazetteer:self];
  v15 = [[NLModel alloc] initWithConfiguration:v13 modelImpl:v14];
  if (v15)
  {
    v16 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:optionsCopy];
    v17 = *MEMORY[0x1E695FDB8];
    v18 = [v16 objectForKey:*MEMORY[0x1E695FDB8]];

    if (!v18)
    {
      modelDescription = [(NLGazetteer *)self modelDescription];
      [v16 setObject:modelDescription forKey:v17];
    }

    v20 = [(NLModel *)v15 writeMLModelToURL:lCopy options:v16 error:error];
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"NLNaturalLanguageErrorDomain" code:6 userInfo:0];
    *error = v20 = 0;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (BOOL)writeGazetteerMLModelForDictionary:(id)dictionary language:(id)language toURL:(id)l options:(id)options error:(id *)error
{
  lCopy = l;
  optionsCopy = options;
  languageCopy = language;
  dictionaryCopy = dictionary;
  v15 = [objc_alloc(objc_opt_class()) initWithDictionary:dictionaryCopy language:languageCopy error:error];

  if (v15)
  {
    v16 = [v15 writeMLModelToURL:lCopy options:optionsCopy error:error];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end