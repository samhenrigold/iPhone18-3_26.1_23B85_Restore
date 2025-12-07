@interface MADVSKClient
- (MADVSKClient)initWithConfig:(id)config error:(id *)error;
- (void)cooldown;
- (void)dealloc;
- (void)warmup;
@end

@implementation MADVSKClient

- (MADVSKClient)initWithConfig:(id)config error:(id *)error
{
  configCopy = config;
  v11.receiver = self;
  v11.super_class = MADVSKClient;
  v7 = [(MADVSKClient *)&v11 init];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E69DF608]) initWithConfig:configCopy error:error];
    client = v7->_client;
    v7->_client = v8;
  }

  return v7;
}

- (void)warmup
{
  if (!self->_isPrewarmed)
  {
    v3 = VCPSignPostLog(self);
    v4 = os_signpost_id_generate(v3);

    v6 = VCPSignPostLog(v5);
    v7 = v6;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v4, "MAD_VSKClientWarmup", "", buf, 2u);
    }

    v8 = VCPSignPostLog([(VSKClient *)self->_client warmup]);
    v9 = v8;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *v10 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v9, OS_SIGNPOST_INTERVAL_END, v4, "MAD_VSKClientWarmup", "", v10, 2u);
    }

    self->_isPrewarmed = 1;
  }
}

- (void)cooldown
{
  if (self->_isPrewarmed)
  {
    v14 = v2;
    v15 = v3;
    v5 = VCPSignPostLog(self);
    v6 = os_signpost_id_generate(v5);

    v8 = VCPSignPostLog(v7);
    v9 = v8;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v6, "MAD_VSKClientCooldown", "", buf, 2u);
    }

    v10 = VCPSignPostLog([(VSKClient *)self->_client cooldown]);
    v11 = v10;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      *v12 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v11, OS_SIGNPOST_INTERVAL_END, v6, "MAD_VSKClientCooldown", "", v12, 2u);
    }

    self->_isPrewarmed = 0;
  }
}

- (void)dealloc
{
  [(MADVSKClient *)self cooldown];
  v3.receiver = self;
  v3.super_class = MADVSKClient;
  [(MADVSKClient *)&v3 dealloc];
}

@end