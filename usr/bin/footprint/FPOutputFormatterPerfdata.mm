@interface FPOutputFormatterPerfdata
- (void)endAtTime:(id)time;
- (void)printGlobalAuxData:(id)data;
- (void)printProcessAuxData:(id)data forProcess:(id)process;
- (void)printProcessCategories:(id)categories total:(id *)total forProcess:(id)process;
- (void)printProcessTotal:(id)total forProcess:(id)process;
- (void)printSummaryCategories:(id)categories total:(id *)total hadErrors:(BOOL)errors;
@end

@implementation FPOutputFormatterPerfdata

- (void)printProcessTotal:(id)total forProcess:(id)process
{
  processCopy = process;
  [total unsignedLongLongValue];
  pdwriter_new_value();
  name = [processCopy name];
  [name UTF8String];
  pdwriter_record_variable_str();

  name2 = [processCopy name];
  [name2 UTF8String];
  pdwriter_record_variable_str();

  LODWORD(total) = [processCopy pid];
  snprintf(__str, 0xBuLL, "%d", total);
  pdwriter_record_label_str();
  pdwriter_record_tag();
}

- (void)printProcessCategories:(id)categories total:(id *)total forProcess:(id)process
{
  categoriesCopy = categories;
  v6 = objc_alloc_init(NSMutableDictionary);
  currentProcessTotals = self->_currentProcessTotals;
  self->_currentProcessTotals = v6;

  v8 = objc_alloc_init(NSMutableDictionary);
  currentProcessAuxDatas = self->_currentProcessAuxDatas;
  self->_currentProcessAuxDatas = v8;

  sub_10001732C(self, categoriesCopy);
}

- (void)printProcessAuxData:(id)data forProcess:(id)process
{
  dataCopy = data;
  name = [process name];
  uTF8String = [name UTF8String];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = self->_currentProcessTotals;
  v8 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v23 = *v25;
    do
    {
      v10 = 0;
      do
      {
        if (*v25 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v24 + 1) + 8 * v10);
        v12 = [(NSMutableDictionary *)self->_currentProcessTotals objectForKeyedSubscript:v11];
        v13 = [(NSMutableDictionary *)self->_currentProcessAuxDatas objectForKeyedSubscript:v11];
        v14 = v13;
        if (v13)
        {
          v15 = *(v13 + 16);
        }

        else
        {
          v15 = 0;
        }

        if (v15)
        {
          v11 = v15;
        }

        v16 = v11;
        v17 = v15;
        [v11 UTF8String];
        [v12 unsignedLongLongValue];
        pdwriter_new_value();

        pdwriter_record_variable_str();
        pdwriter_record_variable_str();
        if (v14)
        {
          sub_1000177D4(self, v14[1], 0);
        }

        v10 = v10 + 1;
      }

      while (v9 != v10);
      v18 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      v9 = v18;
    }

    while (v18);
  }

  currentProcessTotals = self->_currentProcessTotals;
  self->_currentProcessTotals = 0;

  currentProcessAuxDatas = self->_currentProcessAuxDatas;
  self->_currentProcessAuxDatas = 0;

  sub_1000179A8(self, dataCopy, "aux_data", uTF8String, 0);
}

- (void)printSummaryCategories:(id)categories total:(id *)total hadErrors:(BOOL)errors
{
  categoriesCopy = categories;
  pdwriter_new_group();
  pdwriter_new_value();
  pdwriter_record_variable_str();
  pdwriter_record_variable_str();
  pdwriter_record_tag();
  if (categoriesCopy)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    obj = categoriesCopy;
    v15 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v15)
    {
      v14 = *v18;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v9 = [obj objectForKeyedSubscript:*(*(&v17 + 1) + 8 * i)];
          v10 = sub_10001BCE8(v9);
          if (v10 && (sub_10001BD88(v9), (v11 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v12 = v11;
            v13 = 0;
          }

          else
          {
            v11 = sub_10001BC9C(v9);
            v5 = v11;
            v12 = 0;
            v13 = 1;
          }

          [v11 UTF8String];
          [v9 totalDirtySize];
          [v9 totalSwappedSize];
          pdwriter_new_value();
          if (v13)
          {
          }

          pdwriter_record_variable_str();
          pdwriter_record_variable_str();
          if (v10)
          {
            sub_1000177D4(self, v10, 0);
          }
        }

        v15 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v15);
    }
  }
}

- (void)printGlobalAuxData:(id)data
{
  if (data)
  {
    sub_1000179A8(self, data, "sys_aux_data", "ALL_PROCESSES", 1);
  }
}

- (void)endAtTime:(id)time
{
  sub_100016F9C(time);
  sub_100016F9C(self->_startTime);
  pdwriter_new_value();

  pdwriter_record_tag();
}

@end