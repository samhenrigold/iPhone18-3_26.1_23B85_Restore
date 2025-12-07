@interface DOCIntentLocation(DOCIntentsExtensions)
@end

@implementation DOCIntentLocation(DOCIntentsExtensions)

+ (void)imageForType:()DOCIntentsExtensions .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "+[DOCIntentLocation(DOCIntentsExtensions) imageForType:]";
  v4 = 2112;
  v5 = a1;
  _os_log_fault_impl(&dword_249CE0000, a2, OS_LOG_TYPE_FAULT, "%s encountered enexpected location type: %@", &v2, 0x16u);
}

@end