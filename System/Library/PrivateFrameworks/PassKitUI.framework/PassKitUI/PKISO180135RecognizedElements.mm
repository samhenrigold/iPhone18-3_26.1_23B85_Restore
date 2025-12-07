@interface PKISO180135RecognizedElements
- (BOOL)isDisplayOnly;
- (NSSet)dataElements;
- (PKISO180135RecognizedElements)init;
- (PKISO180135RecognizedElements)initWithDocumentType:(id)type documentElements:(id)elements;
@end

@implementation PKISO180135RecognizedElements

- (NSSet)dataElements
{
  v2 = *(self + OBJC_IVAR___PKISO180135RecognizedElements_dataElements);
  sub_1BD0E5E8C(0, &qword_1EBD406D0, 0x1E69B92E8);
  sub_1BD538E04();
  sub_1BE048C84();
  v3 = sub_1BE052A24();
  v2, v4, v5, v6, v7, v8, v9, v10;

  return v3;
}

- (BOOL)isDisplayOnly
{
  selfCopy = self;
  v3 = PKISO180135RecognizedElements.isDisplayOnly.getter();

  return v3;
}

- (PKISO180135RecognizedElements)initWithDocumentType:(id)type documentElements:(id)elements
{
  v4 = sub_1BE052434();
  v6 = v5;
  sub_1BD0E5E8C(0, &qword_1EBD406D0, 0x1E69B92E8);
  sub_1BD538E04();
  v7 = sub_1BE052A34();
  return PKISO180135RecognizedElements.init(documentType:documentElements:)(v4, v6, v7, v8);
}

- (PKISO180135RecognizedElements)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end