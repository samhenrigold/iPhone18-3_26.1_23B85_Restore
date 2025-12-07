@interface CNUILikenessRenderingScope(CNAvatarImageRenderingScope)
- (char)avatarViewBackgroundStyle;
@end

@implementation CNUILikenessRenderingScope(CNAvatarImageRenderingScope)

- (char)avatarViewBackgroundStyle
{
  result = [self backgroundStyle];
  if ((result - 1) >= 4)
  {
    return 0;
  }

  return result;
}

@end