@interface NSArray(SGStructuredEventDissector)
- (BOOL)sg_isEmptySchemaObject;
@end

@implementation NSArray(SGStructuredEventDissector)

- (BOOL)sg_isEmptySchemaObject
{
  sg_deepCopyWithoutEmptySchemaObjects = [self sg_deepCopyWithoutEmptySchemaObjects];
  v2 = objc_msgSend_count(sg_deepCopyWithoutEmptySchemaObjects) == 0;

  return v2;
}

@end