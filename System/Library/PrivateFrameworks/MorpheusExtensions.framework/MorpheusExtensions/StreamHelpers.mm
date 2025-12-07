@interface StreamHelpers
+ (id)eventOfType:(Class)type jsonDictionary:(id)dictionary error:(id *)error;
+ (id)logger;
+ (id)lookupStream:(id)stream;
@end

@implementation StreamHelpers

+ (id)logger
{
  if (logger_onceToken[0] != -1)
  {
    +[StreamHelpers logger];
  }

  v3 = logger__framework;

  return v3;
}

uint64_t __23__StreamHelpers_logger__block_invoke()
{
  logger__framework = os_log_create("com.apple.priml.pfl.Morpheus", "MorpheusExtension");

  return MEMORY[0x2821F96F8]();
}

+ (id)lookupStream:(id)stream
{
  v31 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  v4 = [streamCopy componentsSeparatedByString:@":"];
  if ([v4 count] < 3)
  {
    firstObject = [v4 firstObject];
    v7 = MEMORY[0x25F853310]();
    v6 = [v7 streamWithIdentifier:firstObject error:0];

    if (!v6)
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v8 = MEMORY[0x25F853310]();
      allStreams = [v8 allStreams];

      obj = allStreams;
      v10 = [allStreams countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v27;
        v24 = streamCopy;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v27 != v12)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v26 + 1) + 8 * i);
            configuration = [v14 configuration];
            streamUUID = [configuration streamUUID];
            uUIDString = [streamUUID UUIDString];
            v18 = [uUIDString isEqual:firstObject];

            if (v18)
            {
              goto LABEL_20;
            }

            configuration2 = [v14 configuration];
            legacyNames = [configuration2 legacyNames];
            v21 = [legacyNames containsObject:firstObject];

            if (v21)
            {
              v22 = +[StreamHelpers logger];
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                [(StreamHelpers *)firstObject lookupStream:v14, v22];
              }

LABEL_20:
              v6 = v14;
              streamCopy = v24;
              goto LABEL_21;
            }
          }

          v11 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
          v6 = 0;
          streamCopy = v24;
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v6 = 0;
      }

LABEL_21:
    }
  }

  else
  {
    firstObject = +[StreamHelpers logger];
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
    {
      [(StreamHelpers *)streamCopy lookupStream:firstObject];
    }

    v6 = 0;
  }

  return v6;
}

+ (id)eventOfType:(Class)type jsonDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v8 = [[type alloc] initWithJSONDictionary:dictionaryCopy error:error];

  return v8;
}

+ (void)lookupStream:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a2 identifier];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_25AAA0000, a3, OS_LOG_TYPE_ERROR, "WARNING: '%@' is the legacy name for '%@'", &v6, 0x16u);
}

+ (void)lookupStream:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_25AAA0000, a2, OS_LOG_TYPE_ERROR, "Invalid stream ID %@", &v2, 0xCu);
}

@end