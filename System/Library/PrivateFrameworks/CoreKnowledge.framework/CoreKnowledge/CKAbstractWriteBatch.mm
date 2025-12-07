@interface CKAbstractWriteBatch
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation CKAbstractWriteBatch

- (void)setObject:(id)object forKey:(id)key
{
  if (object)
  {
    keyCopy = key;

    swift_unknownObjectRetain();
    sub_1C86F929C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    keyCopy2 = key;
  }

  v7 = sub_1C86F8EFC();
  v9 = v8;

  sub_1C86D61F4(v10, v7, v9);

  sub_1C86885EC(v10);
}

@end