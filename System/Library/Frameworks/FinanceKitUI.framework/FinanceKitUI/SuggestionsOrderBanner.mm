@interface SuggestionsOrderBanner
+ (id)walletLogo;
- (NSAttributedString)bannerAttributedSubtitle;
- (NSString)merchantName;
- (NSURL)orderDeepLink;
- (UIImage)merchantLogo;
- (_TtC12FinanceKitUI22SuggestionsOrderBanner)init;
- (id)init:(id)init error:(id *)error;
- (void)dealloc;
@end

@implementation SuggestionsOrderBanner

- (id)init:(id)init error:(id *)error
{
  initCopy = init;
  v5 = sub_23875B990();
  v7 = v6;

  return SuggestionsOrderBanner.init(_:)(v5, v7);
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  selfCopy = self;

  sub_238757BF0();

  v5.receiver = selfCopy;
  v5.super_class = ObjectType;
  [(SuggestionsOrderBanner *)&v5 dealloc];
}

- (NSString)merchantName
{
  v3 = sub_238757CC0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_238759B30();
  sub_238757C60();
  (*(v4 + 8))(v6, v3);
  v8 = sub_238757BD0();

  sub_2387586A0();

  v9 = sub_23875EA50();

  return v9;
}

- (UIImage)merchantLogo
{
  selfCopy = self;
  v3 = SuggestionsOrderBanner.merchantLogo.getter();

  return v3;
}

- (NSURL)orderDeepLink
{
  v19 = sub_23875A710();
  v3 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_238757A70();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23875B940();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_238757A20();
  LOBYTE(self) = sub_238757A60();
  (*(v7 + 8))(v9, v6);
  if (self)
  {
    sub_238759A40();
    sub_2387576B0();

    (*(v3 + 8))(v5, v19);
    v15 = sub_23875B860();
    (*(v11 + 8))(v13, v10);
    v16 = v15;
  }

  else
  {

    v16 = 0;
  }

  return v16;
}

- (NSAttributedString)bannerAttributedSubtitle
{
  selfCopy = self;
  v4 = SuggestionsOrderBanner.bannerAttributedSubtitle.getter(selfCopy, v3);

  return v4;
}

+ (id)walletLogo
{
  if (qword_27DF08CC8 != -1)
  {
    swift_once();
  }

  v3 = qword_27DF0AE88;

  return v3;
}

- (_TtC12FinanceKitUI22SuggestionsOrderBanner)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end