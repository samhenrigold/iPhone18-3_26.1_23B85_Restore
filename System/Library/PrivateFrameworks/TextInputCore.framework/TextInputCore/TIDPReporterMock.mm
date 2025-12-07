@interface TIDPReporterMock
- (BOOL)record:(id)record;
- (BOOL)recordNumbersVectors:(id)vectors metadata:(id)metadata;
- (BOOL)recordTokenFrequency:(id)frequency withLocale:(id)locale withTokenType:(id)type;
- (NSArray)recordsWritten;
- (TIDPReporterMock)init;
@end

@implementation TIDPReporterMock

- (NSArray)recordsWritten
{
  v2 = [(NSMutableArray *)self->_recordsWritten copy];

  return v2;
}

- (BOOL)recordTokenFrequency:(id)frequency withLocale:(id)locale withTokenType:(id)type
{
  v6 = MEMORY[0x277CBEA60];
  frequencyCopy = frequency;
  v8 = [[v6 alloc] initWithObjects:{frequencyCopy, 0}];

  [(TIDPReporterMock *)self record:v8];
  return 1;
}

- (BOOL)recordNumbersVectors:(id)vectors metadata:(id)metadata
{
  v16 = *MEMORY[0x277D85DE8];
  vectorsCopy = vectors;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [vectorsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(vectorsCopy);
        }

        [(TIDPReporterMock *)self record:*(*(&v11 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [vectorsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  return 1;
}

- (BOOL)record:(id)record
{
  v15 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [recordCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(recordCopy);
        }

        [(NSMutableArray *)self->_recordsWritten addObject:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [recordCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return 1;
}

- (TIDPReporterMock)init
{
  v7.receiver = self;
  v7.super_class = TIDPReporterMock;
  v3 = [(TIDPReporterMock *)&v7 init];
  if (v3 == self)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    recordsWritten = v3->_recordsWritten;
    v3->_recordsWritten = v4;
  }

  return v3;
}

@end