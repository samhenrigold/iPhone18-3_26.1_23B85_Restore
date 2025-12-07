@interface HKMedicationsBarcodeExtractor
+ (id)extractedBarcodesFromRequestHandler:(id)handler error:(id *)error;
@end

@implementation HKMedicationsBarcodeExtractor

+ (id)extractedBarcodesFromRequestHandler:(id)handler error:(id *)error
{
  v26[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v6 = objc_alloc_init(MEMORY[0x277CE2C58]);
  v26[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  LODWORD(error) = [handlerCopy performRequests:v7 error:error];

  if (error)
  {
    results = [v6 results];
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = results;
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v21 + 1) + 8 * i);
          payloadStringValue = [v15 payloadStringValue];
          v17 = [v9 objectForKeyedSubscript:payloadStringValue];

          if (!v17)
          {
            payloadStringValue2 = [v15 payloadStringValue];
            [v9 setObject:v15 forKeyedSubscript:payloadStringValue2];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v12);
    }

    allValues = [v9 allValues];
  }

  else
  {
    allValues = 0;
  }

  return allValues;
}

@end