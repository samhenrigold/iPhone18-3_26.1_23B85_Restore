@interface WFSaveLogsOperation
- (WFSaveLogsOperation)initWithComments:(id)comments;
- (void)start;
@end

@implementation WFSaveLogsOperation

- (WFSaveLogsOperation)initWithComments:(id)comments
{
  commentsCopy = comments;
  v9.receiver = self;
  v9.super_class = WFSaveLogsOperation;
  v6 = [(WFSaveLogsOperation *)&v9 init];
  objc_storeStrong(&v6->_comments, comments);
  if (![(NSString *)v6->_comments length])
  {
    comments = v6->_comments;
    v6->_comments = @"WiFi Settings";
  }

  return v6;
}

- (void)start
{
  v34 = *MEMORY[0x277D85DE8];
  comments = [(WFSaveLogsOperation *)self comments];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v4 = getW5ClientClass_softClass;
  v26 = getW5ClientClass_softClass;
  if (!getW5ClientClass_softClass)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v31 = __getW5ClientClass_block_invoke;
    v32 = &unk_279EBCD88;
    v33 = &v23;
    __getW5ClientClass_block_invoke(&buf);
    v4 = v24[3];
  }

  v5 = v4;
  _Block_object_dispose(&v23, 8);
  v6 = objc_alloc_init(v4);
  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  v9 = v8;
  v12 = WFCurrentLogLevel(v8, v10) > 2 && v7 != 0;
  if (v6)
  {
    if (v12 && os_log_type_enabled(v7, v9))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = comments;
      _os_log_impl(&dword_273ECD000, v7, v9, "WiFi Diagnostics log collection started (comment='%@')", &buf, 0xCu);
    }

    v23 = 0;
    v24 = &v23;
    v25 = 0x2050000000;
    v13 = getW5LogItemRequestClass_softClass;
    v26 = getW5LogItemRequestClass_softClass;
    if (!getW5LogItemRequestClass_softClass)
    {
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v31 = __getW5LogItemRequestClass_block_invoke;
      v32 = &unk_279EBCD88;
      v33 = &v23;
      __getW5LogItemRequestClass_block_invoke(&buf);
      v13 = v24[3];
    }

    v14 = v13;
    _Block_object_dispose(&v23, 8);
    v15 = [v13 requestWithItemID:55 configuration:0];
    v28[0] = @"Reason";
    v28[1] = @"Compress";
    v29[0] = comments;
    v29[1] = MEMORY[0x277CBEC38];
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
    v27 = v15;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __28__WFSaveLogsOperation_start__block_invoke;
    v20[3] = &unk_279EBCD60;
    v21 = comments;
    selfCopy = self;
    v18 = [v6 collectLogs:v17 configuration:v16 update:0 reply:v20];
  }

  else
  {
    if (v12 && os_log_type_enabled(v7, v9))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_273ECD000, v7, v9, "WiFiVelocity not available", &buf, 2u);
    }

    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.wififkit" code:-1 userInfo:0];
    [(WFOperation *)self setError:v19];

    [(WFOperation *)self finish];
  }
}

void __28__WFSaveLogsOperation_start__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = WFLogForCategory(0);
  v9 = OSLogForWFLogLevel(3uLL);
  v10 = v9;
  if (WFCurrentLogLevel(v9, v11) >= 3 && v8)
  {
    v12 = v8;
    if (os_log_type_enabled(v12, v10))
    {
      v13 = *(a1 + 32);
      v14 = [v6 code];
      v15 = [v7 path];
      v16 = 138412802;
      v17 = v13;
      v18 = 2048;
      v19 = v14;
      v20 = 2112;
      v21 = v15;
      _os_log_impl(&dword_273ECD000, v12, v10, "WiFi Diagnostics log collection completed (comment='%@', error=%ld, url=%@)", &v16, 0x20u);
    }
  }

  [*(a1 + 40) setError:v6];
  [*(a1 + 40) finish];
}

@end