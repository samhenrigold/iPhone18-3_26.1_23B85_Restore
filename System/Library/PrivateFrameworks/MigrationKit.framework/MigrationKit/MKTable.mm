@interface MKTable
- (MKTable)init;
- (void)addRow:(id)row;
- (void)writeToDisk:(id)disk;
- (void)writeToLog;
@end

@implementation MKTable

- (MKTable)init
{
  v6.receiver = self;
  v6.super_class = MKTable;
  v2 = [(MKTable *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(MKTable *)v2 setRows:v3];

    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(MKTable *)v2 setColumns:v4];
  }

  return v2;
}

- (void)addRow:(id)row
{
  rowCopy = row;
  columns = [(MKTable *)self columns];
  v5 = [columns count];
  totalColumns = [rowCopy totalColumns];

  if (v5 < totalColumns)
  {
    do
    {
      columns2 = [(MKTable *)self columns];
      v8 = objc_alloc_init(MKTableColumn);
      [columns2 addObject:v8];

      columns3 = [(MKTable *)self columns];
      v10 = [columns3 count];
      totalColumns2 = [rowCopy totalColumns];
    }

    while (v10 < totalColumns2);
  }

  columns4 = [(MKTable *)self columns];
  [rowCopy adjustColumnsToFit:columns4];

  rows = [(MKTable *)self rows];
  [rows addObject:rowCopy];
}

- (void)writeToLog
{
  v21 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  rows = [(MKTable *)self rows];
  v4 = [rows countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v15;
    *&v5 = 138412290;
    v13 = v5;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(rows);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        v10 = +[MKLog log];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          columns = [(MKTable *)self columns];
          v12 = [v9 asciiRepresentationUsingColumns:columns];
          *buf = v13;
          v19 = v12;
          _os_log_impl(&dword_2592D2000, v10, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [rows countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v6);
  }
}

- (void)writeToDisk:(id)disk
{
  v27 = *MEMORY[0x277D85DE8];
  diskCopy = disk;
  v5 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  rows = [(MKTable *)self rows];
  v7 = [rows countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(rows);
        }

        csvRepresentation = [*(*(&v18 + 1) + 8 * v10) csvRepresentation];
        v12 = csvRepresentation;
        if (csvRepresentation)
        {
          [v5 appendFormat:@"%@\n", csvRepresentation];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [rows countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v8);
  }

  v17 = 0;
  v13 = [v5 writeToFile:diskCopy atomically:0 encoding:4 error:&v17];
  v14 = v17;
  v15 = +[MKLog log];
  v16 = v15;
  if (v13)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      selfCopy = self;
      v24 = 2112;
      v25 = diskCopy;
      _os_log_impl(&dword_2592D2000, v16, OS_LOG_TYPE_INFO, "%@: Wrote table to disk at %@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [(MKTable *)self writeToDisk:v14, v16];
  }
}

@end