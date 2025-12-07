@interface MOResource(MOPerson)
@end

@implementation MOResource(MOPerson)

- (void)initWithPerson:()MOPerson .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a2 contactIdentifier];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_debug_impl(&dword_22D8C5000, a3, OS_LOG_TYPE_DEBUG, "MOResource UUID, %@, person, %@", &v6, 0x16u);
}

@end