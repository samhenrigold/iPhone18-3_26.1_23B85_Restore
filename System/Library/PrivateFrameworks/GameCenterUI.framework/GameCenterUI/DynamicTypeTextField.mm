@interface DynamicTypeTextField
- (BOOL)jet_isTextExtraTall;
- (CGRect)editingRectForBounds:(CGRect)bounds;
- (CGRect)textRectForBounds:(CGRect)bounds;
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (UIEdgeInsets)jet_languageAwareOutsets;
- (UIFont)font;
- (int64_t)jet_textLength;
- (int64_t)textAlignment;
- (void)setFont:(id)font;
- (void)setTextAlignment:(int64_t)alignment;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation DynamicTypeTextField

- (BOOL)jet_isTextExtraTall
{
  selfCopy = self;
  v3 = sub_24E01C398();

  return v3 & 1;
}

- (UIEdgeInsets)jet_languageAwareOutsets
{
  selfCopy = self;
  sub_24E01C51C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (int64_t)jet_textLength
{
  selfCopy = self;
  v4 = sub_24E01C5DC(v3);

  return v4;
}

- (UIFont)font
{
  selfCopy = self;
  v4 = sub_24E2D2410(v3);

  return v4;
}

- (void)setFont:(id)font
{
  fontCopy = font;
  selfCopy = self;
  sub_24E2D24B8(font);
}

- (int64_t)textAlignment
{
  selfCopy = self;
  v4 = sub_24E2D25BC(v3);

  return v4;
}

- (void)setTextAlignment:(int64_t)alignment
{
  selfCopy = self;
  sub_24E2D2648(alignment);
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_24E2D27B8(change);
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  height = fitting.height;
  width = fitting.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  v9.n128_f64[0] = width;
  sub_24E2D2AF0(in, v9, height);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  swift_unknownObjectRelease();

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.var3 = v21;
  result.var2 = v20;
  result.var1 = v19;
  result.var0 = v18;
  return result;
}

- (CGRect)textRectForBounds:(CGRect)bounds
{
  v3 = sub_24E2D2D48();
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)editingRectForBounds:(CGRect)bounds
{
  v3 = sub_24E2D2D48();
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

@end