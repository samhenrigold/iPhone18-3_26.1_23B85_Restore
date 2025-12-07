@interface DEAttachmentItemSandboxExtensionHandle
- (DEAttachmentItemSandboxExtensionHandle)initWithSandboxExtensionToken:(id)token itemURL:(id)l errorOut:(id *)p_isa;
- (void)dealloc;
@end

@implementation DEAttachmentItemSandboxExtensionHandle

- (DEAttachmentItemSandboxExtensionHandle)initWithSandboxExtensionToken:(id)token itemURL:(id)l errorOut:(id *)p_isa
{
  v36[1] = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  lCopy = l;
  v10 = lCopy;
  if (!tokenCopy)
  {
    if (!p_isa)
    {
      goto LABEL_15;
    }

    v12 = MEMORY[0x277CCA9B8];
    v35 = *MEMORY[0x277CCA450];
    v36[0] = @"nil sandbox extension token. Do not try attempt to consume a token more than once.";
    v13 = MEMORY[0x277CBEAC0];
    v14 = v36;
    v15 = &v35;
    goto LABEL_13;
  }

  if (!lCopy)
  {
    if (!p_isa)
    {
      goto LABEL_15;
    }

    v12 = MEMORY[0x277CCA9B8];
    v33 = *MEMORY[0x277CCA450];
    v34 = @"nil item URL";
    v13 = MEMORY[0x277CBEAC0];
    v14 = &v34;
    v15 = &v33;
LABEL_13:
    v16 = [v13 dictionaryWithObjects:v14 forKeys:v15 count:1];
    v17 = [v12 errorWithDomain:@"DEExtensionErrorDomain" code:0 userInfo:v16];

    v18 = v17;
    *p_isa = v17;
    goto LABEL_14;
  }

  v30.receiver = self;
  v30.super_class = DEAttachmentItemSandboxExtensionHandle;
  self = [(DEAttachmentItemSandboxExtensionHandle *)&v30 init];
  if (self)
  {
    [tokenCopy UTF8String];
    self->__handle = sandbox_extension_consume();
    self->_didInit = 1;
    if ([(DEAttachmentItemSandboxExtensionHandle *)self _handle]!= -1)
    {
      objc_storeStrong(&self->_itemURL, l);
      goto LABEL_6;
    }

    if (!p_isa)
    {
      goto LABEL_15;
    }

    v20 = MEMORY[0x277CCACA8];
    itemURL = [(DEAttachmentItemSandboxExtensionHandle *)self itemURL];
    path = [itemURL path];
    v23 = __error();
    v24 = strerror(*v23);
    v25 = "Unknown";
    if (v24)
    {
      v25 = v24;
    }

    v17 = [v20 stringWithFormat:@"Failed to consume extension token for '%@' due to error: %s", path, v25];

    v26 = MEMORY[0x277CCA9B8];
    v31 = *MEMORY[0x277CCA450];
    v32 = v17;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v28 = [v26 errorWithDomain:@"DEExtensionErrorDomain" code:0 userInfo:v27];

    v29 = v28;
    *p_isa = v28;

LABEL_14:
    p_isa = 0;
    goto LABEL_15;
  }

LABEL_6:
  v11 = +[DELogging fwHandle];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [DEAttachmentItemSandboxExtensionHandle initWithSandboxExtensionToken:? itemURL:? errorOut:?];
  }

  self = self;
  p_isa = &self->super.isa;
LABEL_15:

  return p_isa;
}

- (void)dealloc
{
  itemURL = [self itemURL];
  path = [itemURL path];
  v3 = __error();
  strerror(*v3);
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)initWithSandboxExtensionToken:(void *)a1 itemURL:errorOut:.cold.1(void *a1)
{
  v1 = [a1 itemURL];
  v2 = [v1 path];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_248AB3000, v3, v4, "Extending sandbox for file at path '%@'", v5, v6, v7, v8);
}

@end