@interface NBObjCURLCanonicalizer
- (id)canonicalizedURLForURL:(id)l;
@end

@implementation NBObjCURLCanonicalizer

- (id)canonicalizedURLForURL:(id)l
{
  v4 = sub_25C339C50();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  sub_25C339BE0();
  selfCopy = self;
  URLCanonicalizer.canonicalizedURL(for:)(v8, v10);
  v12 = *(v5 + 8);
  v12(v8, v4);

  v13 = sub_25C339BD0();
  v12(v10, v4);

  return v13;
}

@end