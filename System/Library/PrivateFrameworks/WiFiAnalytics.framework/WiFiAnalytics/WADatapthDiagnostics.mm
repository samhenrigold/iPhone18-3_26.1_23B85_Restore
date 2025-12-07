@interface WADatapthDiagnostics
- (PBCodable)awdReport;
- (WADatapthDiagnostics)initWithWADatapthDiagnosticsReport:(const void *)report length:(unint64_t)length;
- (unsigned)awdMetricID;
@end

@implementation WADatapthDiagnostics

- (WADatapthDiagnostics)initWithWADatapthDiagnosticsReport:(const void *)report length:(unint64_t)length
{
  v26 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = WADatapthDiagnostics;
  v6 = [(WADatapthDiagnostics *)&v19 init];
  v7 = objc_autoreleasePoolPush();
  v8 = [MEMORY[0x1E695DEF0] dataWithBytes:report length:length];
  if (!v8)
  {
    v10 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v21 = "[WADatapthDiagnostics initWithWADatapthDiagnosticsReport:length:]";
      v22 = 1024;
      v23 = 50;
      _os_log_impl(&dword_1C8460000, v10, OS_LOG_TYPE_ERROR, "%{public}s::%d:resultData failed", buf, 0x12u);
    }

    goto LABEL_16;
  }

  v6->_action = 2;
  v18 = 0;
  v9 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v8 error:&v18];
  v10 = v18;
  awdReport = v6->_awdReport;
  v6->_awdReport = v9;

  if (v6->_awdReport)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (!v12)
  {
    v16 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v21 = "[WADatapthDiagnostics initWithWADatapthDiagnosticsReport:length:]";
      v22 = 1024;
      v23 = 56;
      v24 = 2112;
      v25 = v10;
      _os_log_impl(&dword_1C8460000, v16, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to unarchive WAMessage: %@", buf, 0x1Cu);
    }

LABEL_16:
    objc_autoreleasePoolPop(v7);
    v14 = 0;
    goto LABEL_10;
  }

  objc_autoreleasePoolPop(v7);
  v13 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 136446466;
    v21 = "[WADatapthDiagnostics initWithWADatapthDiagnosticsReport:length:]";
    v22 = 1024;
    v23 = 58;
    _os_log_impl(&dword_1C8460000, v13, OS_LOG_TYPE_INFO, "%{public}s::%d:Success", buf, 0x12u);
  }

  v14 = v6;
LABEL_10:

  return v14;
}

- (unsigned)awdMetricID
{
  if (self->_awdMetricID)
  {
    return self->_awdMetricID;
  }

  else
  {
    return 589928;
  }
}

- (PBCodable)awdReport
{
  v18 = *MEMORY[0x1E69E9840];
  awdReport = self->_awdReport;
  if (!awdReport)
  {
    v10 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 136446466;
      v13 = "[WADatapthDiagnostics awdReport]";
      v14 = 1024;
      v15 = 75;
      v11 = "%{public}s::%d:_awdReport missing";
LABEL_13:
      _os_log_impl(&dword_1C8460000, v10, OS_LOG_TYPE_ERROR, v11, &v12, 0x12u);
    }

LABEL_14:

    v8 = 0;
    goto LABEL_6;
  }

  stallNotifications = [(PBCodable *)awdReport stallNotifications];
  v5 = [stallNotifications count];

  if (v5)
  {
    v10 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 136446466;
      v13 = "[WADatapthDiagnostics awdReport]";
      v14 = 1024;
      v15 = 78;
      v11 = "%{public}s::%d:_awdReport 0 stallNotifications";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  [(WADatapthDiagnostics *)self setAwdMetricID:589928];
  v6 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = self->_awdReport;
    v12 = 136446722;
    v13 = "[WADatapthDiagnostics awdReport]";
    v14 = 1024;
    v15 = 85;
    v16 = 2114;
    v17 = v7;
    _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Generated wifi datapath diagnostics report: %{public}@", &v12, 0x1Cu);
  }

  v8 = self->_awdReport;
LABEL_6:

  return v8;
}

@end