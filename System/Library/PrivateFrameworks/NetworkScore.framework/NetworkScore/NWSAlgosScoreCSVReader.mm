@interface NWSAlgosScoreCSVReader
+ (id)csvReader:(id)reader header:(BOOL)header;
- (NWSAlgosScoreCSVReader)initWithFileName:(id)name header:(BOOL)header;
- (double)doubleAtRow:(id)row col:(id)col defaultValue:(double)value;
- (double)doubleAtRow:(id)row colIndex:(int64_t)index defaultValue:(double)value;
- (id)atRow:(id)row col:(id)col;
- (id)atRowIndex:(int64_t)index col:(id)col;
- (id)fixStrings:(id)strings;
- (id)parseFile:(id)file header:(BOOL)header;
- (id)stripAndQuoteString:(id)string;
- (int64_t)intAtRow:(id)row col:(id)col defaultValue:(int64_t)value;
- (int64_t)intAtRow:(id)row colIndex:(int64_t)index defaultValue:(int64_t)value;
- (void)debugPrint:(int)print;
- (void)sortOnColumn:(id)column ascending:(BOOL)ascending;
- (void)sortOnColumnIndex:(int64_t)index ascending:(BOOL)ascending;
@end

@implementation NWSAlgosScoreCSVReader

+ (id)csvReader:(id)reader header:(BOOL)header
{
  headerCopy = header;
  readerCopy = reader;
  v6 = [[NWSAlgosScoreCSVReader alloc] initWithFileName:readerCopy header:headerCopy];

  return v6;
}

- (id)stripAndQuoteString:(id)string
{
  stringCopy = string;
  v4 = &stru_286D2DF20;
  if (([stringCopy isEqualToString:&stru_286D2DF20] & 1) == 0)
  {
    v11 = 0;
    v5 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"\\S+|.*" options:1 error:&v11];
    v4 = 0;
    if (!v11)
    {
      v6 = [v5 firstMatchInString:stringCopy options:0 range:{0, objc_msgSend(stringCopy, "length")}];
      v7 = v6;
      if (v6)
      {
        range = [v6 range];
        v4 = [stringCopy substringWithRange:{range, v9}];
      }

      else
      {
        v4 = 0;
      }
    }
  }

  return v4;
}

- (id)fixStrings:(id)strings
{
  v18 = *MEMORY[0x277D85DE8];
  stringsCopy = strings;
  array = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = stringsCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(NWSAlgosScoreCSVReader *)self stripAndQuoteString:*(*(&v13 + 1) + 8 * i), v13];
        [array addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return array;
}

- (id)parseFile:(id)file header:(BOOL)header
{
  headerCopy = header;
  v44 = *MEMORY[0x277D85DE8];
  v41 = 0;
  v6 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:file encoding:4 error:&v41];
  v7 = v41;
  array = [MEMORY[0x277CBEB18] array];
  if (!v7)
  {
    v26 = v6;
    v9 = [v6 componentsSeparatedByString:@"\n"];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v32 = [v9 countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v32)
    {
      v10 = *v38;
      v11 = 1;
      selfCopy = self;
      v30 = headerCopy;
      v28 = v9;
      v29 = array;
      v27 = *v38;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v38 != v10)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v37 + 1) + 8 * i);
          if (([v13 isEqualToString:&stru_286D2DF20] & 1) == 0)
          {
            if ((v11 & headerCopy) == 1)
            {
              dictionary = [MEMORY[0x277CBEB38] dictionary];
              v33 = 0u;
              v34 = 0u;
              v35 = 0u;
              v36 = 0u;
              v15 = [v13 componentsSeparatedByString:{@", "}];
              v16 = [(NWSAlgosScoreCSVReader *)self fixStrings:v15];

              v17 = [v16 countByEnumeratingWithState:&v33 objects:v42 count:16];
              if (v17)
              {
                v18 = v17;
                v19 = 0;
                v20 = *v34;
                do
                {
                  for (j = 0; j != v18; ++j)
                  {
                    if (*v34 != v20)
                    {
                      objc_enumerationMutation(v16);
                    }

                    v22 = *(*(&v33 + 1) + 8 * j);
                    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v19];
                    [dictionary setObject:v23 forKey:v22];

                    ++v19;
                  }

                  v18 = [v16 countByEnumeratingWithState:&v33 objects:v42 count:16];
                }

                while (v18);
              }

              self = selfCopy;
              [(NWSAlgosScoreCSVReader *)selfCopy setHeadings:dictionary];
              headerCopy = v30;
              v9 = v28;
              array = v29;
              v10 = v27;
            }

            else
            {
              dictionary = [v13 componentsSeparatedByString:{@", "}];
              v24 = [(NWSAlgosScoreCSVReader *)self fixStrings:dictionary];
              [array addObject:v24];
            }

            v11 = 0;
          }
        }

        v32 = [v9 countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v32);
    }

    [(NWSAlgosScoreCSVReader *)self setRows:array];

    v6 = v26;
    v7 = 0;
  }

  return v7;
}

- (NWSAlgosScoreCSVReader)initWithFileName:(id)name header:(BOOL)header
{
  headerCopy = header;
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = NWSAlgosScoreCSVReader;
  v7 = [(NWSAlgosScoreCSVReader *)&v11 init];
  v8 = v7;
  if (v7)
  {
    v9 = [(NWSAlgosScoreCSVReader *)v7 parseFile:nameCopy header:headerCopy];
    [(NWSAlgosScoreCSVReader *)v8 setError:v9];
  }

  return v8;
}

- (id)atRow:(id)row col:(id)col
{
  rowCopy = row;
  colCopy = col;
  headings = [(NWSAlgosScoreCSVReader *)self headings];
  v9 = [headings objectForKeyedSubscript:colCopy];

  if (v9)
  {
    v10 = [rowCopy objectAtIndexedSubscript:{objc_msgSend(v9, "integerValue")}];
  }

  else
  {
    v10 = &stru_286D2DF20;
  }

  return v10;
}

- (id)atRowIndex:(int64_t)index col:(id)col
{
  colCopy = col;
  headings = [(NWSAlgosScoreCSVReader *)self headings];
  v8 = [headings objectForKeyedSubscript:colCopy];

  integerValue = [v8 integerValue];
  rows = [(NWSAlgosScoreCSVReader *)self rows];
  v11 = [rows objectAtIndexedSubscript:index];
  v12 = [v11 objectAtIndexedSubscript:integerValue];

  return v12;
}

- (double)doubleAtRow:(id)row col:(id)col defaultValue:(double)value
{
  rowCopy = row;
  colCopy = col;
  v10 = [(NWSAlgosScoreCSVReader *)self atRow:rowCopy col:colCopy];
  if (([v10 isEqualToString:&stru_286D2DF20] & 1) == 0)
  {
    [v10 doubleValue];
    value = v11;
  }

  return value;
}

- (double)doubleAtRow:(id)row colIndex:(int64_t)index defaultValue:(double)value
{
  rowCopy = row;
  v8 = [rowCopy objectAtIndexedSubscript:index];
  if (([v8 isEqualToString:&stru_286D2DF20] & 1) == 0)
  {
    [v8 doubleValue];
    value = v9;
  }

  return value;
}

- (int64_t)intAtRow:(id)row col:(id)col defaultValue:(int64_t)value
{
  rowCopy = row;
  colCopy = col;
  v10 = [(NWSAlgosScoreCSVReader *)self atRow:rowCopy col:colCopy];
  if (([v10 isEqualToString:&stru_286D2DF20] & 1) == 0)
  {
    value = [v10 longLongValue];
  }

  return value;
}

- (int64_t)intAtRow:(id)row colIndex:(int64_t)index defaultValue:(int64_t)value
{
  rowCopy = row;
  v8 = [rowCopy objectAtIndexedSubscript:index];
  if (([v8 isEqualToString:&stru_286D2DF20] & 1) == 0)
  {
    value = [v8 longLongValue];
  }

  return value;
}

- (void)sortOnColumnIndex:(int64_t)index ascending:(BOOL)ascending
{
  rows = [(NWSAlgosScoreCSVReader *)self rows];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__NWSAlgosScoreCSVReader_sortOnColumnIndex_ascending___block_invoke;
  v7[3] = &__block_descriptor_41_e11_q24__0_8_16l;
  ascendingCopy = ascending;
  v7[4] = index;
  [rows sortUsingComparator:v7];
}

BOOL __54__NWSAlgosScoreCSVReader_sortOnColumnIndex_ascending___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [a2 objectAtIndexedSubscript:v6];
  v9 = [v8 intValue];
  v10 = [v7 objectAtIndexedSubscript:*(a1 + 32)];

  v11 = [v10 intValue];
  if (v5)
  {
    return v9 > v11;
  }

  else
  {
    return v9 < v11;
  }
}

- (void)sortOnColumn:(id)column ascending:(BOOL)ascending
{
  ascendingCopy = ascending;
  columnCopy = column;
  headings = [(NWSAlgosScoreCSVReader *)self headings];
  v7 = [headings objectForKeyedSubscript:columnCopy];

  if (!v7)
  {
    v8 = [MEMORY[0x277CBEAD8] exceptionWithName:@"No column field" reason:0 userInfo:0];
    objc_exception_throw(v8);
  }

  -[NWSAlgosScoreCSVReader sortOnColumnIndex:ascending:](self, "sortOnColumnIndex:ascending:", [v7 intValue], ascendingCopy);
}

- (void)debugPrint:(int)print
{
  v55 = *MEMORY[0x277D85DE8];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  headings = [(NWSAlgosScoreCSVReader *)self headings];
  v4 = [headings countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v49;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v49 != v6)
        {
          objc_enumerationMutation(headings);
        }

        v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%-15s", objc_msgSend(*(*(&v48 + 1) + 8 * i), "cStringUsingEncoding:", 4)];
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v46[2] = __37__NWSAlgosScoreCSVReader_debugPrint___block_invoke;
        v46[3] = &unk_27996D048;
        v47 = v8;
        v9 = v8;
        __nws_log_run_with_lock(v46);
      }

      v5 = [headings countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v5);
  }

  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"\n"];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __37__NWSAlgosScoreCSVReader_debugPrint___block_invoke_2;
  v44[3] = &unk_27996D048;
  v45 = v10;
  v11 = v10;
  __nws_log_run_with_lock(v44);

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [(NWSAlgosScoreCSVReader *)self rows];
  v26 = [obj countByEnumeratingWithState:&v40 objects:v53 count:16];
  printCopy = print;
  if (v26)
  {
    v25 = *v41;
LABEL_10:
    v13 = 0;
    v27 = printCopy & ~(printCopy >> 31);
    while (1)
    {
      if (*v41 != v25)
      {
        objc_enumerationMutation(obj);
      }

      if (v13 == v27)
      {
        break;
      }

      v31 = printCopy;
      v29 = v13;
      v14 = *(*(&v40 + 1) + 8 * v13);
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v36 objects:v52 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v37;
        do
        {
          for (j = 0; j != v17; ++j)
          {
            if (*v37 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%-15s", objc_msgSend(*(*(&v36 + 1) + 8 * j), "cStringUsingEncoding:", 4)];
            v34[0] = MEMORY[0x277D85DD0];
            v34[1] = 3221225472;
            v34[2] = __37__NWSAlgosScoreCSVReader_debugPrint___block_invoke_3;
            v34[3] = &unk_27996D048;
            v35 = v20;
            v21 = v20;
            __nws_log_run_with_lock(v34);
          }

          v17 = [v15 countByEnumeratingWithState:&v36 objects:v52 count:16];
        }

        while (v17);
      }

      printCopy = v31 - 1;

      v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"\n"];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __37__NWSAlgosScoreCSVReader_debugPrint___block_invoke_4;
      v32[3] = &unk_27996D048;
      v33 = v22;
      v23 = v22;
      __nws_log_run_with_lock(v32);

      v13 = v29 + 1;
      if (v29 + 1 == v26)
      {
        v26 = [obj countByEnumeratingWithState:&v40 objects:v53 count:16];
        if (v26)
        {
          goto LABEL_10;
        }

        break;
      }
    }
  }
}

uint64_t __37__NWSAlgosScoreCSVReader_debugPrint___block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x277D85E08];
  v2 = [*(a1 + 32) UTF8String];

  return fputs(v2, v1);
}

uint64_t __37__NWSAlgosScoreCSVReader_debugPrint___block_invoke_2(uint64_t a1)
{
  v1 = *MEMORY[0x277D85E08];
  v2 = [*(a1 + 32) UTF8String];

  return fputs(v2, v1);
}

uint64_t __37__NWSAlgosScoreCSVReader_debugPrint___block_invoke_3(uint64_t a1)
{
  v1 = *MEMORY[0x277D85E08];
  v2 = [*(a1 + 32) UTF8String];

  return fputs(v2, v1);
}

uint64_t __37__NWSAlgosScoreCSVReader_debugPrint___block_invoke_4(uint64_t a1)
{
  v1 = *MEMORY[0x277D85E08];
  v2 = [*(a1 + 32) UTF8String];

  return fputs(v2, v1);
}

@end