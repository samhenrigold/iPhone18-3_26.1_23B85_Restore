@interface PASSQLTelemetryContext
@end

@implementation PASSQLTelemetryContext

id __41___PASSQLTelemetryContext_sendTelemetry___block_invoke(uint64_t a1)
{
  v12[5] = *MEMORY[0x1E69E9840];
  v12[0] = @"SqlEventLog";
  v11[0] = @"EventName";
  v11[1] = @"Process";
  v2 = [MEMORY[0x1E696AE30] processInfo];
  v3 = [v2 processName];
  v12[1] = v3;
  v11[2] = @"OsVersion";
  v4 = [MEMORY[0x1E696AE30] processInfo];
  v5 = [v4 operatingSystemVersionString];
  v12[2] = v5;
  v11[3] = @"SqlLength";
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", objc_msgSend(*(*(a1 + 32) + 16), "length")];
  v12[3] = v6;
  v11[4] = @"SqlEventLog";
  v7 = *(a1 + 32);
  v8 = 16;
  if (*(v7 + 40))
  {
    v8 = 32;
  }

  v12[4] = *(v7 + v8);
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:5];

  return v9;
}

@end