@interface PSTaskInput(Roya)
@end

@implementation PSTaskInput(Roya)

- (uint64_t)initWithResourceKey:()Roya type:capacity:forwardingCount:.cold.1(char **a1)
{
  v11 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v1 = asprintf(a1, "PSInputTypeSynced cannot be set directly. Please use -initSyncedInputWithResourceKey: instead.");
  v2 = __PSGraphLogSharedInstance(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v7 = 136315394;
    v8 = "[PSTaskInput(Roya) initWithResourceKey:type:capacity:forwardingCount:]";
    v9 = 1024;
    v10 = 24;
    _os_log_impl(&dword_25EC85000, v2, OS_LOG_TYPE_FAULT, "%s:%d PSInputTypeSynced cannot be set directly. Please use -initSyncedInputWithResourceKey: instead.", &v7, 0x12u);
  }

  v3 = OSLogFlushBuffers();
  if (v3)
  {
    v4 = v3;
    v5 = __PSGraphLogSharedInstance(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[PSTaskInput(Roya) initWithResourceKey:type:capacity:forwardingCount:]";
      v9 = 1024;
      v10 = v4;
      _os_log_impl(&dword_25EC85000, v5, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v7, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  abort_with_reason();
  return [PSDependencyResolver initWithVertices:withParentToEdgeFetcher:withChildToEdgeFetcher:];
}

@end