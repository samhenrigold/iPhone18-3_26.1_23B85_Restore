@interface ATCIOA2Stream
- (ATCIOA2Stream)initWithService:(id)service connection:(id)connection index:(unint64_t)index input:(BOOL)input description:(id)description;
@end

@implementation ATCIOA2Stream

- (ATCIOA2Stream)initWithService:(id)service connection:(id)connection index:(unint64_t)index input:(BOOL)input description:(id)description
{
  v39 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  connectionCopy = connection;
  descriptionCopy = description;
  v37.receiver = self;
  v37.super_class = ATCIOA2Stream;
  v16 = [(ATCIOA2Stream *)&v37 init];
  v17 = v16;
  if (v16)
  {
    v32 = serviceCopy;
    objc_storeStrong(&v16->_service, service);
    objc_storeStrong(&v17->_connection, connection);
    v17->_index = index;
    v17->_input = input;
    v18 = [descriptionCopy objectForKeyedSubscript:@"stream ID"];
    v17->_physicalID = [v18 unsignedIntValue];

    v19 = [descriptionCopy objectForKeyedSubscript:@"starting channel"];
    v17->_startingChannel = [v19 unsignedIntValue];

    v20 = [descriptionCopy objectForKeyedSubscript:@"current format"];
    v21 = [ATCIOA2StreamFormat aeaStreamFormatWithDictionary:v20];
    currentFormat = v17->_currentFormat;
    v17->_currentFormat = v21;

    array = [MEMORY[0x277CBEB18] array];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v24 = [descriptionCopy objectForKeyedSubscript:@"available formats"];
    v25 = [v24 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v34;
      do
      {
        v28 = 0;
        do
        {
          if (*v34 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = [ATCIOA2StreamFormat aeaStreamFormatsWithRangedDictionary:*(*(&v33 + 1) + 8 * v28)];
          if (v29)
          {
            [(NSArray *)array addObjectsFromArray:v29];
          }

          ++v28;
        }

        while (v26 != v28);
        v26 = [v24 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v26);
    }

    availableFormats = v17->_availableFormats;
    v17->_availableFormats = array;

    serviceCopy = v32;
  }

  return v17;
}

@end