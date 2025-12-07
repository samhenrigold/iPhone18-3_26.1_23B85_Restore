@interface SKDJournalItemProcessor
- (void)completeItemUpdate:(id)update pipeline:(id)pipeline;
@end

@implementation SKDJournalItemProcessor

- (void)completeItemUpdate:(id)update pipeline:(id)pipeline
{
  v10[1] = *MEMORY[0x277D85DE8];
  updateCopy = update;
  needsProcessingAttribute = [pipeline needsProcessingAttribute];
  v7 = needsProcessingAttribute;
  if (needsProcessingAttribute)
  {
    v9 = needsProcessingAttribute;
    v10[0] = *MEMORY[0x277CBEEE8];
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    [updateCopy addAttributesFromDictionary:v8];
  }
}

@end