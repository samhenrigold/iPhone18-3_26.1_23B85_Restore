@interface CalStructuredDataArchiver
+ (NSSet)defaultPermittedClasses;
+ (id)archiveDictionary:(id)dictionary error:(id *)error;
+ (id)archiveDictionary:(id)dictionary permittedClasses:(id)classes strict:(BOOL)strict error:(id *)error;
+ (id)unarchiveDictionaryFromData:(id)data error:(id *)error;
+ (id)unarchiveDictionaryFromData:(id)data permittedClasses:(id)classes strict:(BOOL)strict error:(id *)error;
@end

@implementation CalStructuredDataArchiver

+ (NSSet)defaultPermittedClasses
{
  if (defaultPermittedClasses_onceToken != -1)
  {
    +[CalStructuredDataArchiver defaultPermittedClasses];
  }

  v3 = defaultPermittedClasses_permittedClasses;

  return v3;
}

void __52__CalStructuredDataArchiver_defaultPermittedClasses__block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:9];
  v4 = [v2 setWithArray:{v3, v6, v7, v8, v9, v10, v11, v12, v13}];
  v5 = defaultPermittedClasses_permittedClasses;
  defaultPermittedClasses_permittedClasses = v4;
}

+ (id)unarchiveDictionaryFromData:(id)data error:(id *)error
{
  dataCopy = data;
  defaultPermittedClasses = [self defaultPermittedClasses];
  v8 = [self unarchiveDictionaryFromData:dataCopy permittedClasses:defaultPermittedClasses strict:0 error:error];

  return v8;
}

+ (id)unarchiveDictionaryFromData:(id)data permittedClasses:(id)classes strict:(BOOL)strict error:(id *)error
{
  strictCopy = strict;
  dataCopy = data;
  classesCopy = classes;
  if (dataCopy)
  {
    if (strictCopy)
    {
      [MEMORY[0x1E696ACD0] _strictlyUnarchivedObjectOfClasses:classesCopy fromData:dataCopy error:error];
    }

    else
    {
      [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:classesCopy fromData:dataCopy error:error];
    }
    v11 = ;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)archiveDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  defaultPermittedClasses = [self defaultPermittedClasses];
  v8 = [self archiveDictionary:dictionaryCopy permittedClasses:defaultPermittedClasses strict:0 error:error];

  return v8;
}

+ (id)archiveDictionary:(id)dictionary permittedClasses:(id)classes strict:(BOOL)strict error:(id *)error
{
  if (dictionary)
  {
    v7 = [MEMORY[0x1E696ACC8] CalArchivedDataWithRootObject:dictionary ofClasses:classes strict:strict error:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end