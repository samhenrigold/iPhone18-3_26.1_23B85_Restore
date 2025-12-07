@interface NSCharacterSet(EMFEmojiExtras)
+ (id)_emojiCharacterSet;
@end

@implementation NSCharacterSet(EMFEmojiExtras)

+ (id)_emojiCharacterSet
{
  if (_emojiCharacterSet___onceToken != -1)
  {
    +[NSCharacterSet(EMFEmojiExtras) _emojiCharacterSet];
  }

  v2 = _emojiCharacterSet___emojiCharacterSet;

  return v2;
}

@end