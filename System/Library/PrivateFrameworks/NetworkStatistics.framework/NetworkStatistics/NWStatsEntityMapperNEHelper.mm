@interface NWStatsEntityMapperNEHelper
- (id)identifierForUUID:(id)d derivation:(int *)derivation;
@end

@implementation NWStatsEntityMapperNEHelper

- (id)identifierForUUID:(id)d derivation:(int *)derivation
{
  v17[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v6 = dCopy;
  v17[0] = 0;
  v17[1] = 0;
  if (dCopy)
  {
    [dCopy getUUIDBytes:v17];
    v7 = NEHelperCacheCopySigningIdentifierMapping();
    v8 = v7;
    if (!v7)
    {
LABEL_8:
      v12 = 0;
      v13 = 0;
      goto LABEL_9;
    }

    v9 = MEMORY[0x25F8758A0](v7);
    if (v9 == MEMORY[0x277D864C0])
    {
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:xpc_string_get_string_ptr(v8)];
      if (v15)
      {
        v13 = v15;
        v12 = 4;
LABEL_9:

        if (!derivation)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      v10 = NStatGetLog(0);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      *v16 = 0;
      v11 = "NEHelper signing id is string but no identifier";
    }

    else
    {
      v10 = NStatGetLog(v9);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
LABEL_7:

        goto LABEL_8;
      }

      *v16 = 0;
      v11 = "xpc get type does not give a string";
    }

    _os_log_impl(&dword_25BA3A000, v10, OS_LOG_TYPE_ERROR, v11, v16, 2u);
    goto LABEL_7;
  }

  v12 = 0;
  v13 = 0;
  if (derivation)
  {
LABEL_10:
    *derivation = v12;
  }

LABEL_11:

  return v13;
}

@end