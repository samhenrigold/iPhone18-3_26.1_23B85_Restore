@interface JSAURLParser
- (JSAURLParser)init;
- (id)processCampaignAttributedURL:(id)l;
- (void)isCommerceUIURLWithCallback:(id)callback :(id)a4;
- (void)typeForURL:(NSURL *)l completion:(id)completion;
@end

@implementation JSAURLParser

- (void)typeForURL:(NSURL *)l completion:(id)completion
{
  v7 = sub_2805C(&qword_CA5E8, &qword_A0850);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = l;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_8468C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_A11F0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_A11F8;
  v14[5] = v13;
  lCopy = l;
  selfCopy = self;
  sub_55564(0, 0, v9, &unk_A1200, v14);
}

- (JSAURLParser)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(JSAURLParser *)&v3 init];
}

- (void)isCommerceUIURLWithCallback:(id)callback :(id)a4
{
  v6 = sub_2805C(&qword_CA5E8, &qword_A0850);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_843AC();
  v11 = v10;
  v12 = sub_8468C();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = self;
  v13[5] = v9;
  v13[6] = v11;
  v13[7] = a4;
  v14 = a4;
  selfCopy = self;
  v16 = v14;
  sub_3BBC8(0, 0, v8, &unk_A11E0, v13);

  sub_38328(v8, &qword_CA5E8, &qword_A0850);
}

- (id)processCampaignAttributedURL:(id)l
{
  v4 = sub_843AC();
  v6 = v5;
  selfCopy = self;
  _s5JSApp9URLParserC28processCampaignAttributedURLySo7JSValueCSSF_0(v4, v6);
  v9 = v8;

  return v9;
}

@end