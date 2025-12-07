@interface MKHTTPContentDisposition
- (MKHTTPContentDisposition)initWithHeaderValue:(id)value;
@end

@implementation MKHTTPContentDisposition

- (MKHTTPContentDisposition)initWithHeaderValue:(id)value
{
  v41 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v39.receiver = self;
  v39.super_class = MKHTTPContentDisposition;
  v5 = [(MKHTTPContentDisposition *)&v39 init];
  v6 = v5;
  if (v5)
  {
    v30 = v5;
    v32 = valueCopy;
    v33 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [valueCopy componentsSeparatedByString:@";"];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = v38 = 0u;
    v7 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v36;
      do
      {
        v10 = 0;
        do
        {
          if (*v36 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = [*(*(&v35 + 1) + 8 * v10) componentsSeparatedByString:{@"=", v30}];
          if ([v11 count] == 2)
          {
            v12 = [v11 objectAtIndexedSubscript:0];
            whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
            v14 = [v12 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

            v15 = [v11 objectAtIndexedSubscript:1];
            whitespaceAndNewlineCharacterSet2 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
            v17 = [v15 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet2];

            if ([v17 length] >= 2)
            {
              lowercaseString = [v14 lowercaseString];

              v19 = [v17 substringWithRange:{1, objc_msgSend(v17, "length") - 2}];

              [v33 setObject:v19 forKey:lowercaseString];
              v14 = lowercaseString;
              v17 = v19;
            }
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v8);
    }

    v20 = [v33 objectForKeyedSubscript:{@"filename", v30}];
    v21 = [v20 stringByReplacingOccurrencesOfString:@"+" withString:@" "];
    stringByRemovingPercentEncoding = [v21 stringByRemovingPercentEncoding];
    v6 = v31;
    [(MKHTTPContentDisposition *)v31 setFilename:stringByRemovingPercentEncoding];

    v23 = [v33 objectForKeyedSubscript:@"folder"];
    v24 = [v23 stringByReplacingOccurrencesOfString:@"+" withString:@" "];
    stringByRemovingPercentEncoding2 = [v24 stringByRemovingPercentEncoding];
    [(MKHTTPContentDisposition *)v31 setFolder:stringByRemovingPercentEncoding2];

    v26 = [v33 objectForKeyedSubscript:@"original_filename"];
    v27 = [v26 stringByReplacingOccurrencesOfString:@"+" withString:@" "];
    stringByRemovingPercentEncoding3 = [v27 stringByRemovingPercentEncoding];
    [(MKHTTPContentDisposition *)v31 setOriginalFilename:stringByRemovingPercentEncoding3];

    valueCopy = v32;
  }

  return v6;
}

@end