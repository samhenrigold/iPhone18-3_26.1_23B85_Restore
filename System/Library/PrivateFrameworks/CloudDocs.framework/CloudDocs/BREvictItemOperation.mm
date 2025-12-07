@interface BREvictItemOperation
- (BREvictItemOperation)initWithURL:(id)l;
- (id)description;
- (void)finishWithResult:(id)result error:(id)error;
- (void)main;
@end

@implementation BREvictItemOperation

- (BREvictItemOperation)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = BREvictItemOperation;
  v6 = [(BROperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_url, l);
  }

  return v7;
}

- (id)description
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = selfCopy;
  v7.super_class = BREvictItemOperation;
  v4 = [(BROperation *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ url=%@", v4, selfCopy->_url];

  objc_sync_exit(selfCopy);

  return v5;
}

- (void)main
{
  v18 = *MEMORY[0x1E69E9840];
  v10 = 0uLL;
  v11 = 0;
  __brc_create_section(0, "[BREvictItemOperation main]", 33, 0, &v10);
  v3 = brc_bread_crumbs("[BREvictItemOperation main]", 33);
  v4 = brc_default_log(1, 0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    url = self->_url;
    *buf = 134218498;
    v13 = v10;
    v14 = 2112;
    v15 = url;
    v16 = 2112;
    v17 = v3;
    _os_log_debug_impl(&dword_1AE2A9000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx evicting item at: %@%@", buf, 0x20u);
  }

  *&self->_section.sectionID = v10;
  *&self->_section.line = v11;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v6 = self->_url;
  v9 = 0;
  [defaultManager evictUbiquitousItemAtURL:v6 error:&v9];
  v7 = v9;

  [(BROperation *)self completedWithResult:0 error:v7];
}

- (void)finishWithResult:(id)result error:(id)error
{
  v21 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  errorCopy = error;
  section = self->_section;
  v8 = brc_bread_crumbs("[BREvictItemOperation finishWithResult:error:]", 42);
  v9 = brc_default_log(1, 0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    url = self->_url;
    *buf = 134218498;
    sectionID = section.sectionID;
    v17 = 2112;
    v18 = url;
    v19 = 2112;
    v20 = v8;
    _os_log_debug_impl(&dword_1AE2A9000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx eviction for %@ finished%@", buf, 0x20u);
  }

  evictionCompletionBlock = [(BREvictItemOperation *)self evictionCompletionBlock];
  v11 = evictionCompletionBlock;
  if (evictionCompletionBlock)
  {
    (*(evictionCompletionBlock + 16))(evictionCompletionBlock, errorCopy);
    [(BREvictItemOperation *)self setEvictionCompletionBlock:0];
  }

  v13.receiver = self;
  v13.super_class = BREvictItemOperation;
  [(BROperation *)&v13 finishWithResult:resultCopy error:errorCopy];
  __brc_leave_section(&section);
}

@end