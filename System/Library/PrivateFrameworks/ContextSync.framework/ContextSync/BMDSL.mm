@interface BMDSL
- (id)bmdsl_serialize;
@end

@implementation BMDSL

- (id)bmdsl_serialize
{
  v15 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v12 = 0;
    v1 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v12];
    v2 = v12;
    if (!v1)
    {
      v3 = __biome_log_for_category();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v14 = v2;
        OUTLINED_FUNCTION_0_3(&dword_244177000, v4, v5, "Failed to convert DSL to data because %@", v6, v7, v8, v9, v11, v12);
      }
    }
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

@end