@interface StructuredDataReport
- (StructuredDataReport)initWithType:(int)type withFile:(id)file;
- (int)streamContentAtLevel:(BOOL)level withBlock:(id)block;
- (void)dealloc;
- (void)generateCustomLogAtLevel:(BOOL)level withBlock:(id)block;
@end

@implementation StructuredDataReport

- (StructuredDataReport)initWithType:(int)type withFile:(id)file
{
  v9.receiver = self;
  v9.super_class = StructuredDataReport;
  v6 = [(OSAReport *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_log_type = type;
    v6->_raw_logfile = file;
    *(&v7->super.super.isa + *MEMORY[0x277D36BA8]) = CFAbsoluteTimeGetCurrent();
    [*(&v7->super.super.isa + *MEMORY[0x277D36BB0]) setObject:@"ips.synced" forKeyedSubscript:*MEMORY[0x277D36C38]];
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = StructuredDataReport;
  [(StructuredDataReport *)&v3 dealloc];
}

- (void)generateCustomLogAtLevel:(BOOL)level withBlock:(id)block
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCACA8];
  v7 = OSADateFormat();
  v8 = [objc_msgSend(v6 stringWithFormat:@"Date:%@\nIncident ID:%@\n%@\n", v7, -[OSAReport incidentID](self, "incidentID"), GetDeviceConfig()), "dataUsingEncoding:allowLossyConversion:", 4, 1];
  (*(block + 2))(block, v8);
  v9 = fopen([(NSString *)self->_raw_logfile fileSystemRepresentation], "r");
  if (v9)
  {
    v10 = v9;
    v11 = [MEMORY[0x277CBEB28] dataWithLength:0x10000];
    if (v11)
    {
      v12 = v11;
      do
      {
        v13 = fread([v12 mutableBytes], 1uLL, 0x10000uLL, v10);
        v14 = ferror(v10);
        if (!v13)
        {
          break;
        }

        if (v14)
        {
          break;
        }

        [v12 setLength:v13];
        (*(block + 2))(block, v12);
      }

      while (!feof(v10));
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    raw_logfile = self->_raw_logfile;
    v16 = __error();
    v17 = strerror(*v16);
    *buf = 138412546;
    v19 = raw_logfile;
    v20 = 2080;
    v21 = v17;
    _os_log_impl(&dword_247DE9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Unable to open '%@': %s", buf, 0x16u);
  }
}

- (int)streamContentAtLevel:(BOOL)level withBlock:(id)block
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__StructuredDataReport_streamContentAtLevel_withBlock___block_invoke;
  v6[3] = &unk_278EDF550;
  v6[4] = block;
  v6[5] = &v7;
  [(StructuredDataReport *)self generateCustomLogAtLevel:level withBlock:v6];
  v4 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void *__55__StructuredDataReport_streamContentAtLevel_withBlock___block_invoke(void *result, void *a2)
{
  if (!*(*(result[5] + 8) + 24))
  {
    v2 = result;
    result = [a2 length];
    if (result)
    {
      result = (*(v2[4] + 16))();
      *(*(v2[5] + 8) + 24) = result;
    }
  }

  return result;
}

@end