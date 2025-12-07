@interface EKUIRemoteUIExtension
- (void)preferredContentSizeChanged:(id)changed;
@end

@implementation EKUIRemoteUIExtension

- (void)preferredContentSizeChanged:(id)changed
{
  v3 = sub_10001CE9C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001CE7C();
  sub_100009F30();
  (*(v4 + 8))(v6, v3);
}

@end