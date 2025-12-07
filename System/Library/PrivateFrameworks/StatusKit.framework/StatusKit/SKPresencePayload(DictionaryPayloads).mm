@interface SKPresencePayload(DictionaryPayloads)
- (void)payloadDictionary;
@end

@implementation SKPresencePayload(DictionaryPayloads)

- (void)initWithDictionary:()DictionaryPayloads .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_26BA07000, a2, OS_LOG_TYPE_ERROR, "Error serializing presence payload dictionary: %@", &v2, 0xCu);
}

- (void)payloadDictionary
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_26BA07000, a2, OS_LOG_TYPE_ERROR, "Error deserializing presence payload data as dictionary: %@", &v2, 0xCu);
}

@end