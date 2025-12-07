@interface NSMutableString
- (void)gqd_insertCharacter:(unsigned __int16)character atIndex:(unsigned __int16)index;
@end

@implementation NSMutableString

- (void)gqd_insertCharacter:(unsigned __int16)character atIndex:(unsigned __int16)index
{
  indexCopy = index;
  character = [[NSString alloc] initWithFormat:@"%C", character];
  [(NSMutableString *)self insertString:character atIndex:indexCopy];
}

@end