@interface RCComposition(RCAVFoundation)
@end

@implementation RCComposition(RCAVFoundation)

- (void)_compositionAsset:()RCAVFoundation .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[RCComposition(RCAVFoundation) _compositionAsset:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_272442000, a2, OS_LOG_TYPE_ERROR, "%s -- insertError = %@", &v2, 0x16u);
}

- (void)_enumerateTracksForInsertion:()RCAVFoundation error:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[RCComposition(RCAVFoundation) _enumerateTracksForInsertion:error:]";
  _os_log_fault_impl(&dword_272442000, log, OS_LOG_TYPE_FAULT, "%s -- fragment asset has no audio tracks", &v1, 0xCu);
}

@end