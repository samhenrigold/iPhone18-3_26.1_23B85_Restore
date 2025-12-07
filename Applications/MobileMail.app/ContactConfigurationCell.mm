@interface ContactConfigurationCell
- (void)prepareForReuse;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation ContactConfigurationCell

- (void)traitCollectionDidChange:(id)change
{
  _objc_retain(change);
  _objc_retain(self);
  sub_100292E30(change, v4);
  _objc_release(self);
  _objc_release(change);
}

- (void)prepareForReuse
{
  v2 = _objc_retain(self);
  sub_100293658(v2, v3);
  _objc_release(self);
}

@end