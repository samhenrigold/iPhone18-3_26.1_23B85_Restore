@interface JSPersistence
- (id)getValueForKey:(id)key :(id)a4;
@end

@implementation JSPersistence

- (id)getValueForKey:(id)key :(id)a4
{
  keyCopy = key;
  v7 = a4;
  selfCopy = self;
  v9 = sub_216AE3860(keyCopy, v7);

  return v9;
}

@end