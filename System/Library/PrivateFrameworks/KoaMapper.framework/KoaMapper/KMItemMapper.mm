@interface KMItemMapper
+ (id)_mapperForObjectClass:(Class)class error:(id *)error;
- (KMItemMapper)init;
- (KMItemMapper)initWithObjectClass:(Class)class error:(id *)error;
- (id)itemsFromExternalObject:(id)object additionalFields:(id)fields error:(id *)error;
@end

@implementation KMItemMapper

- (id)itemsFromExternalObject:(id)object additionalFields:(id)fields error:(id *)error
{
  v34[1] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  fieldsCopy = fields;
  if (objectCopy)
  {
    if (objc_opt_isKindOfClass())
    {
      if (!fieldsCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v10 = [(KMMapper *)self->_mapper itemsFromExternalObject:objectCopy additionalFields:fieldsCopy error:error];
        goto LABEL_11;
      }

      v22 = MEMORY[0x277CCA9B8];
      v29 = *MEMORY[0x277CCA068];
      v23 = MEMORY[0x277CCACA8];
      v24 = objc_opt_class();
      v17 = NSStringFromClass(v24);
      v25 = [v23 stringWithFormat:@"Invalid additional fields: %@ must be %@", fieldsCopy, v17];
      v30 = v25;
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      v27 = [v22 errorWithDomain:@"com.apple.siri.koa.mapper" code:5 userInfo:v26];
      KVSetError();
    }

    else
    {
      v14 = MEMORY[0x277CCA9B8];
      v31 = *MEMORY[0x277CCA068];
      v15 = MEMORY[0x277CCACA8];
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = NSStringFromClass(self->_externalObjectClass);
      v19 = [v15 stringWithFormat:@"Object class (%@) inconsistent with expected class (%@) provided at initialization", v17, v18];
      v32 = v19;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v21 = [v14 errorWithDomain:@"com.apple.siri.koa.mapper" code:3 userInfo:v20];
      KVSetError();
    }
  }

  else
  {
    v11 = MEMORY[0x277CCA9B8];
    v33 = *MEMORY[0x277CCA068];
    v34[0] = @"Object to be mapped is nil";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v13 = [v11 errorWithDomain:@"com.apple.siri.koa.mapper" code:1 userInfo:v12];
    KVSetError();
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (KMItemMapper)initWithObjectClass:(Class)class error:(id *)error
{
  v11.receiver = self;
  v11.super_class = KMItemMapper;
  v6 = [(KMItemMapper *)&v11 init];
  if (v6)
  {
    v7 = [objc_opt_class() _mapperForObjectClass:class error:error];
    mapper = v6->_mapper;
    v6->_mapper = v7;

    if (!v6->_mapper)
    {
      v9 = 0;
      goto LABEL_6;
    }

    v6->_externalObjectClass = [objc_opt_class() externalObjectClass];
  }

  v9 = v6;
LABEL_6:

  return v9;
}

- (KMItemMapper)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"init unsupported" userInfo:MEMORY[0x277CBEC10]];
  objc_exception_throw(v2);
}

+ (id)_mapperForObjectClass:(Class)class error:(id *)error
{
  v15[1] = *MEMORY[0x277D85DE8];
  if (+[KMMapper_SAPerson externalObjectClass]== class)
  {
    v12 = KMMapper_SAPerson;
  }

  else if (+[KMMapper_SAAppInfo externalObjectClass]== class)
  {
    v12 = KMMapper_SAAppInfo;
  }

  else if (+[KMMapper_INVocabularyItem externalObjectClass]== class)
  {
    v12 = KMMapper_INVocabularyItem;
  }

  else if (+[KMMapper_CNContact externalObjectClass]== class)
  {
    v12 = KMMapper_CNContact;
  }

  else if (+[KMMapper_LSApplicationRecord externalObjectClass]== class)
  {
    v12 = KMMapper_LSApplicationRecord;
  }

  else if (+[KMMapper_HMHome externalObjectClass]== class)
  {
    v12 = KMMapper_HMHome;
  }

  else if (+[KMMapper_MPMediaEntity externalObjectClass]== class)
  {
    v12 = KMMapper_MPMediaEntity;
  }

  else if (+[KMMapper_SASyncSiriKitAppVocabulary externalObjectClass]== class)
  {
    v12 = KMMapper_SASyncSiriKitAppVocabulary;
  }

  else if (+[KMMapper_RTLocationOfInterest externalObjectClass]== class)
  {
    v12 = KMMapper_RTLocationOfInterest;
  }

  else if (+[KMMapper_PortraitEntity externalObjectClass]== class)
  {
    v12 = KMMapper_PortraitEntity;
  }

  else if (+[KMMapper_AppGlobalVocabulary externalObjectClass]== class)
  {
    v12 = KMMapper_AppGlobalVocabulary;
  }

  else if (+[KMMapper_EKEvent externalObjectClass]== class)
  {
    v12 = KMMapper_EKEvent;
  }

  else
  {
    if (+[KMMapper_PBSUserProfile externalObjectClass]!= class)
    {
      v5 = MEMORY[0x277CCA9B8];
      v14 = *MEMORY[0x277CCA068];
      v6 = MEMORY[0x277CCACA8];
      v7 = NSStringFromClass(class);
      v8 = [v6 stringWithFormat:@"Object class (%@) not supported", v7, v14];
      v15[0] = v8;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      v10 = [v5 errorWithDomain:@"com.apple.siri.koa.mapper" code:2 userInfo:v9];
      KVSetError();

      v11 = 0;
      goto LABEL_29;
    }

    v12 = KMMapper_PBSUserProfile;
  }

  v11 = objc_alloc_init(v12);
LABEL_29:

  return v11;
}

@end