@interface GenerativePartnerServiceUserDefaults
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation GenerativePartnerServiceUserDefaults

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (path)
  {
    sub_1BE54C70C();
    if (object)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v20, 0, sizeof(v20));
    changeCopy = change;
    selfCopy = self;
    if (!change)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  if (!object)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  changeCopy2 = change;
  selfCopy2 = self;
  sub_1BE54CA3C();
  swift_unknownObjectRelease();
  if (change)
  {
LABEL_4:
    type metadata accessor for NSKeyValueChangeKey(0, v11, v12, v13);
    sub_1BE5419A8(v14, v15, v16, v17);
    sub_1BE54C5FC();
  }

LABEL_7:
  sub_1BE5412EC();

  sub_1BE537874(v20);
}

@end