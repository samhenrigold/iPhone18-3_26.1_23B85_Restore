@interface WFIntelligencePromptView
- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (BOOL)textViewShouldBeginEditing:(id)editing;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)accessoryButtonTapped;
- (void)contentSizeCategoryDidChange;
- (void)detachedButtonTapped;
- (void)layoutSubviews;
- (void)textViewDidBeginEditing:(id)editing;
- (void)textViewDidChange:(id)change;
- (void)textViewDidEndEditing:(id)editing;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation WFIntelligencePromptView

- (void)contentSizeCategoryDidChange
{
  selfCopy = self;
  sub_1C8399620(selfCopy);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1C839A0FC();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
  v5 = sub_1C839AD6C(width);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1C83A0C48(change);
}

- (void)accessoryButtonTapped
{
  selfCopy = self;
  sub_1C83A359C(selfCopy);
}

- (void)detachedButtonTapped
{
  selfCopy = self;
  sub_1C83A364C(selfCopy);
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  v3 = sub_1C83A3740();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (BOOL)textViewShouldBeginEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  LOBYTE(self) = sub_1C83A37EC(selfCopy);

  return self & 1;
}

- (void)textViewDidBeginEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_1C83A38B0(selfCopy);
}

- (void)textViewDidEndEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_1C83A3978(selfCopy);
}

- (void)textViewDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1C83A3A40(changeCopy);
}

- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  sub_1C840CDDC();
  viewCopy = view;
  selfCopy = self;
  v9 = sub_1C83A3CF4(viewCopy);

  return v9 & 1;
}

@end