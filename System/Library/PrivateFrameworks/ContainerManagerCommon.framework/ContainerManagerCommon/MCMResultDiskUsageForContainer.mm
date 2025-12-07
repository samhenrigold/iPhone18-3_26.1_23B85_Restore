@interface MCMResultDiskUsageForContainer
+ (id)_reportingWorkloop;
- (BOOL)encodeResultOntoReply:(id)reply;
- (MCMResultDiskUsageForContainer)initWithDiskUsageBytes:(unint64_t)bytes descendants:(unint64_t)descendants containerClass:(unint64_t)class personaType:(int)type;
- (unint64_t)_roundToTwoSignificantDigitsWithNumber:(unint64_t)number;
- (void)_report;
@end

@implementation MCMResultDiskUsageForContainer

- (unint64_t)_roundToTwoSignificantDigitsWithNumber:(unint64_t)number
{
  numberCopy = number;
  v4 = log10(number);
  v5 = __exp10(ceil(v4) + -2.0);
  return (v5 * floor(numberCopy / v5 + 0.5));
}

- (void)_report
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [(MCMResultDiskUsageForContainer *)self _roundToTwoSignificantDigitsWithNumber:self->_descendants];
  v4 = [(MCMResultDiskUsageForContainer *)self _roundToTwoSignificantDigitsWithNumber:self->_diskUsageBytes];
  personaType = self->_personaType;
  containerClass = self->_containerClass;
  v7 = container_log_handle_for_category();
  v8 = os_signpost_id_make_with_pointer(v7, self);

  _reportingWorkloop = [objc_opt_class() _reportingWorkloop];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __41__MCMResultDiskUsageForContainer__report__block_invoke;
  v10[3] = &__block_descriptor_68_e5_v8__0l;
  v11 = personaType;
  v10[4] = containerClass;
  v10[5] = v8;
  v10[6] = v3;
  v10[7] = v4;
  dispatch_async(_reportingWorkloop, v10);
}

void __41__MCMResultDiskUsageForContainer__report__block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2 != 7)
  {
    if (v2 == 4)
    {
      v10 = *(a1 + 64);
      if (v10 == 1)
      {
        v18 = container_log_handle_for_category();
        v5 = v18;
        v6 = *(a1 + 40);
        if (v6 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v18))
        {
          goto LABEL_29;
        }

        v19 = *(a1 + 48);
        v20 = *(a1 + 56);
        v27 = 134349312;
        v28 = v19;
        v29 = 2050;
        v30 = v20;
        v9 = "DiskUsage_Managed_pluginData";
      }

      else
      {
        if (v10)
        {
          return;
        }

        v11 = container_log_handle_for_category();
        v5 = v11;
        v6 = *(a1 + 40);
        if (v6 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v11))
        {
          goto LABEL_29;
        }

        v12 = *(a1 + 48);
        v13 = *(a1 + 56);
        v27 = 134349312;
        v28 = v12;
        v29 = 2050;
        v30 = v13;
        v9 = "DiskUsage_pluginData";
      }
    }

    else
    {
      if (v2 != 2)
      {
        return;
      }

      v3 = *(a1 + 64);
      if (v3 == 1)
      {
        v24 = container_log_handle_for_category();
        v5 = v24;
        v6 = *(a1 + 40);
        if (v6 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v24))
        {
          goto LABEL_29;
        }

        v25 = *(a1 + 48);
        v26 = *(a1 + 56);
        v27 = 134349312;
        v28 = v25;
        v29 = 2050;
        v30 = v26;
        v9 = "DiskUsage_Managed_appData";
      }

      else
      {
        if (v3)
        {
          return;
        }

        v4 = container_log_handle_for_category();
        v5 = v4;
        v6 = *(a1 + 40);
        if (v6 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v4))
        {
          goto LABEL_29;
        }

        v7 = *(a1 + 48);
        v8 = *(a1 + 56);
        v27 = 134349312;
        v28 = v7;
        v29 = 2050;
        v30 = v8;
        v9 = "DiskUsage_appData";
      }
    }

    goto LABEL_28;
  }

  v14 = *(a1 + 64);
  if (v14 == 1)
  {
    v21 = container_log_handle_for_category();
    v5 = v21;
    v6 = *(a1 + 40);
    if (v6 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v21))
    {
      goto LABEL_29;
    }

    v22 = *(a1 + 48);
    v23 = *(a1 + 56);
    v27 = 134349312;
    v28 = v22;
    v29 = 2050;
    v30 = v23;
    v9 = "DiskUsage_Managed_appGroup";
    goto LABEL_28;
  }

  if (v14)
  {
    return;
  }

  v15 = container_log_handle_for_category();
  v5 = v15;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    v16 = *(a1 + 48);
    v17 = *(a1 + 56);
    v27 = 134349312;
    v28 = v16;
    v29 = 2050;
    v30 = v17;
    v9 = "DiskUsage_appGroup";
LABEL_28:
    _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v5, OS_SIGNPOST_EVENT, v6, v9, " enableTelemetry=YES  descendants=%{public, signpost.telemetry:number1}llu bytes=%{public, signpost.telemetry:number2}llu", &v27, 0x16u);
  }

LABEL_29:
}

- (BOOL)encodeResultOntoReply:(id)reply
{
  v9 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v8.receiver = self;
  v8.super_class = MCMResultDiskUsageForContainer;
  v5 = [(MCMResultBase *)&v8 encodeResultOntoReply:replyCopy];
  if (v5)
  {
    error = [(MCMResultBase *)self error];

    if (!error)
    {
      xpc_dictionary_set_uint64(replyCopy, "ReplyDiskUsage", [(MCMResultDiskUsageForContainer *)self diskUsageBytes]);
    }
  }

  return v5;
}

- (MCMResultDiskUsageForContainer)initWithDiskUsageBytes:(unint64_t)bytes descendants:(unint64_t)descendants containerClass:(unint64_t)class personaType:(int)type
{
  v14 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = MCMResultDiskUsageForContainer;
  v10 = [(MCMResultBase *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_diskUsageBytes = bytes;
    v10->_descendants = descendants;
    v10->_containerClass = class;
    v10->_personaType = type;
    [(MCMResultDiskUsageForContainer *)v10 _report];
  }

  return v11;
}

+ (id)_reportingWorkloop
{
  if (_reportingWorkloop_onceToken != -1)
  {
    dispatch_once(&_reportingWorkloop_onceToken, &__block_literal_global_14728);
  }

  v2 = _reportingWorkloop_workloop;

  return v2;
}

uint64_t __52__MCMResultDiskUsageForContainer__reportingWorkloop__block_invoke()
{
  _reportingWorkloop_workloop = dispatch_workloop_create("com.apple.containermanagerd.disk-usage-reporting");

  return MEMORY[0x1EEE66BB8]();
}

@end