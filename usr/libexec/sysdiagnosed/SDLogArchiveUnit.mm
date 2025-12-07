@interface SDLogArchiveUnit
+ (id)logArchiveUnitWithDictionary:(id)dictionary;
- (void)logArchiveOverride:(id)override;
@end

@implementation SDLogArchiveUnit

+ (id)logArchiveUnitWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___SDLogArchiveUnit;
  v5 = [objc_msgSendSuper2(&v9 "alloc")];
  v6 = v5;
  if (dictionaryCopy && v5)
  {
    v7 = [dictionaryCopy mutableCopy];
    [v6 setArchive_arguments:v7];
  }

  return v6;
}

- (void)logArchiveOverride:(id)override
{
  overrideCopy = override;
  archive_arguments = [(SDLogArchiveUnit *)self archive_arguments];

  if (archive_arguments)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = overrideCopy;
    v6 = overrideCopy;
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v20 + 1) + 8 * i);
          archive_arguments2 = [(SDLogArchiveUnit *)self archive_arguments];
          v13 = [v6 objectForKeyedSubscript:v11];
          [archive_arguments2 setValue:v13 forKey:v11];

          v15 = sub_1000278E8(v14);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = [v6 objectForKeyedSubscript:v11];
            *buf = 138412546;
            v25 = v11;
            v26 = 2112;
            v27 = v16;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Updated %@ to %@", buf, 0x16u);
          }

          v17 = +[SDResourceManager sharedResourceManager];
          v18 = [v6 objectForKeyedSubscript:v11];
          [v17 logWithSubsystem:"com.apple.sysdiagnose" category:"containers" msg:{@"Updated %@ to %@", v11, v18}];
        }

        v8 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v8);
    }

    overrideCopy = v19;
  }
}

@end