@interface JSAPackage
- (JSAPackage)init;
- (NSString)nameForJSContext;
- (NSString)version;
- (id)bytesAtPath:(id)path;
- (id)dataAtPath:(id)path;
- (id)dirAtPath:(id)path;
- (id)localizationPathForLocale:(id)locale;
- (id)stringAtPath:(id)path;
- (void)startEviction;
@end

@implementation JSAPackage

- (NSString)nameForJSContext
{

  v2 = sub_8437C();

  return v2;
}

- (NSString)version
{
  type metadata accessor for BooksJetPackResourceBundle(0);
  sub_5CBB4(&qword_CA768, type metadata accessor for BooksJetPackResourceBundle, &protocol conformance descriptor for BooksJetPackResourceBundle);
  selfCopy = self;
  sub_83FCC();

  v4 = sub_8437C();

  return v4;
}

- (id)dataAtPath:(id)path
{
  v4 = sub_843AC();
  v6 = v5;
  selfCopy = self;
  v8 = Package.data(atPath:)(v4, v6);
  v10 = v9;

  if (v10 >> 60 == 15)
  {
    v11 = 0;
  }

  else
  {
    isa = sub_839FC().super.isa;
    sub_3BB60(v8, v10);
    v11 = isa;
  }

  return v11;
}

- (id)bytesAtPath:(id)path
{
  v4 = sub_843AC();
  v6 = v5;
  selfCopy = self;
  v8 = sub_5AF90(v4, v6);

  if (v8)
  {
    v9.super.isa = sub_8458C().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  return v9.super.isa;
}

- (id)stringAtPath:(id)path
{
  v4 = sub_843AC();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  object = Package.string(atPath:)(v8).value._object;

  if (object)
  {
    v10 = sub_8437C();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)dirAtPath:(id)path
{
  v4 = sub_843AC();
  v6 = v5;
  selfCopy = self;
  Package.dir(atPath:)(v4, v6);

  v8.super.isa = sub_8458C().super.isa;

  return v8.super.isa;
}

- (id)localizationPathForLocale:(id)locale
{
  v4 = sub_843AC();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  Package.localizationPath(forLocale:)(v8);

  v9 = sub_8437C();

  return v9;
}

- (void)startEviction
{
  selfCopy = self;
  Package.startEviction()();
}

- (JSAPackage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end