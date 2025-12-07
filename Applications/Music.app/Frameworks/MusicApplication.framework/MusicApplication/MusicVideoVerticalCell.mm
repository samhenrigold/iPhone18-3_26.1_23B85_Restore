@interface MusicVideoVerticalCell
+ (void)visualContentInsets;
- (CGRect)bounds;
- (CGRect)frame;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation MusicVideoVerticalCell

- (CGRect)frame
{
  sub_2B678C(self, a2, &selRef_frame);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)bounds
{
  sub_2B678C(self, a2, &selRef_bounds);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_2B6A08();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_2B6CF8(change);
}

+ (void)visualContentInsets
{
  sub_2B7184();
  v2 = v1;
  if (qword_DE6A78 != -1)
  {
    swift_once();
  }

  if (v2 >> 62)
  {
    v3 = sub_ABB060();
    if (!v3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
    if (!v3)
    {
LABEL_12:

      return;
    }
  }

  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
    __break(1u);
    goto LABEL_14;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
LABEL_14:
    sub_36003C(v5, v2, v0);
    goto LABEL_10;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v5 < *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
  {

LABEL_10:
    swift_beginAccess();

    goto LABEL_12;
  }

  __break(1u);
}

@end