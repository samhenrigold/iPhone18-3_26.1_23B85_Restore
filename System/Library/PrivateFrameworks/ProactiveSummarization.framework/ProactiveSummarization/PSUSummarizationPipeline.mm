@interface PSUSummarizationPipeline
- (void)deleteItemsWithIdentifiers:(id)identifiers bundleId:(id)id;
- (void)processItem:(id)item receivedDate:(id)date positionInReceivedItems:(int64_t)items;
@end

@implementation PSUSummarizationPipeline

- (void)processItem:(id)item receivedDate:(id)date positionInReceivedItems:(int64_t)items
{
  sub_231E0F950();
  OUTLINED_FUNCTION_24();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_162_0();
  sub_231E0F910();
  itemCopy = item;
  selfCopy = self;
  OUTLINED_FUNCTION_112_3();
  sub_231DAB414();

  v11 = OUTLINED_FUNCTION_83();
  v12(v11);
}

- (void)deleteItemsWithIdentifiers:(id)identifiers bundleId:(id)id
{
  sub_231E11870();
  sub_231E11620();
  selfCopy = self;
  OUTLINED_FUNCTION_112_3();
  sub_231DAF60C();
}

@end