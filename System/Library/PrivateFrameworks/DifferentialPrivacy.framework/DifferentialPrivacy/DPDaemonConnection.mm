@interface DPDaemonConnection
@end

@implementation DPDaemonConnection

void __66___DPDaemonConnection_recordBitVectors_metadata_forKey_withReply___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  (*(*(a1 + 48) + 16))();
  v2 = +[_DPLog framework];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_22622D000, v2, OS_LOG_TYPE_DEFAULT, "End: recordBitVectors:metadata: for key %@", &v4, 0xCu);
  }
}

@end