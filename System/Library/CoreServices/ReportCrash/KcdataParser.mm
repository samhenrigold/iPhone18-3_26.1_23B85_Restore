@interface KcdataParser
- (void)parseElement:(unsigned int)element from:(kcdata_iter)from;
@end

@implementation KcdataParser

- (void)parseElement:(unsigned int)element from:(kcdata_iter)from
{
  end = from.end;
  item = from.item;
  v6 = *&element;
  selfCopy = self;
  sub_100003A30(v6, &item->type, end);
}

@end