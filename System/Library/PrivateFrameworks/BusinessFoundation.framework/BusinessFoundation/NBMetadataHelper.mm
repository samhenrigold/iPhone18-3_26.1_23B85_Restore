@interface NBMetadataHelper
@end

@implementation NBMetadataHelper

uint64_t __39___NBMetadataHelper_phoneNumberDataMap__block_invoke(uint64_t a1)
{
  _MergedGlobals = [*(a1 + 32) jsonObjectFromZippedDataWithBytes:&kPhoneNumberMetaData compressedLength:47081 expandedLength:315645];

  return MEMORY[0x2821F96F8]();
}

void __32___NBMetadataHelper_CCode2CNMap__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) CN2CCodeMap];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = qword_281346948;
  qword_281346948 = v2;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = v1;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [v4 objectForKeyedSubscript:v9];
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v16;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v16 != v13)
              {
                objc_enumerationMutation(v10);
              }

              [qword_281346948 setObject:v9 forKeyedSubscript:*(*(&v15 + 1) + 8 * j)];
            }

            v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
          }

          while (v12);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v6);
  }
}

@end