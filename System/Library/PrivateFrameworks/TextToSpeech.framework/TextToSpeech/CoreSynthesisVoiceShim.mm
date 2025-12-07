@interface CoreSynthesisVoiceShim
+ (_TtC12TextToSpeech22CoreSynthesisVoiceShim)shared;
+ (void)setShared:(id)shared;
- (_TtC12TextToSpeech22CoreSynthesisVoiceShim)init;
- (id)internalVoicesIncludingSiri:(BOOL)siri;
- (id)publicVoices;
- (id)resourceVoicesWithOnlyInstalled:(BOOL)installed;
- (id)resourcesWithLanguageCode:(id)code;
- (id)voiceWithLanguageCode:(id)code;
- (void)internalVoiceWithIdentifier:(NSString *)identifier completionHandler:(id)handler;
- (void)internalVoicesIncludingSiri:(BOOL)siri completionHandler:(id)handler;
- (void)publicVoicesWithCompletionHandler:(id)handler;
- (void)reloadPublicResolver;
- (void)resourceVoiceWithIdentifier:(NSString *)identifier completionHandler:(id)handler;
- (void)resourceVoicesWithOnlyInstalled:(BOOL)installed completionHandler:(id)handler;
- (void)resourcesWithLanguageCode:(NSString *)code completionHandler:(id)handler;
- (void)voiceWithIdentifier:(NSString *)identifier completionHandler:(id)handler;
- (void)voiceWithLanguageCode:(NSString *)code completionHandler:(id)handler;
@end

@implementation CoreSynthesisVoiceShim

+ (_TtC12TextToSpeech22CoreSynthesisVoiceShim)shared
{
  if (qword_1EB389558 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return qword_1EB389560;
}

+ (void)setShared:(id)shared
{
  v3 = qword_1EB389558;
  sharedCopy = shared;
  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = qword_1EB389560;
  qword_1EB389560 = sharedCopy;
}

- (void)voiceWithIdentifier:(NSString *)identifier completionHandler:(id)handler
{
  v7 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = identifier;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1A957C688();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1A9595700;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1A9595708;
  v14[5] = v13;
  identifierCopy = identifier;
  selfCopy = self;
  sub_1A93CC8FC(0, 0, v9, &unk_1A9595710, v14);
}

- (void)voiceWithLanguageCode:(NSString *)code completionHandler:(id)handler
{
  v7 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = code;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1A957C688();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1A95956D8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1A95956E0;
  v14[5] = v13;
  codeCopy = code;
  selfCopy = self;
  sub_1A93CC8FC(0, 0, v9, &unk_1A95956E8, v14);
}

- (id)voiceWithLanguageCode:(id)code
{
  if (code)
  {
    v4 = sub_1A957C0F8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  sub_1A94C46C8();
  v7 = swift_allocObject();
  v7[2] = self;
  v7[3] = v4;
  v7[4] = v6;
  selfCopy = self;
  sub_1A937829C(&qword_1EB387FD0, &qword_1A9595480);
  sub_1A957B9C8();

  return v10;
}

- (void)publicVoicesWithCompletionHandler:(id)handler
{
  v5 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1A957C688();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1A95956B0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1A95956B8;
  v12[5] = v11;
  selfCopy = self;
  sub_1A93CC8FC(0, 0, v7, &unk_1A95956C0, v12);
}

- (id)publicVoices
{
  sub_1A94C46C8();
  *(swift_allocObject() + 16) = self;
  selfCopy = self;
  sub_1A937829C(&qword_1EB387FD8, &qword_1A95954C0);
  sub_1A957B9C8();

  sub_1A9387478(0, &qword_1EB385ED8, 0x1E69584F8);
  v4 = sub_1A957C4B8();

  return v4;
}

- (void)internalVoicesIncludingSiri:(BOOL)siri completionHandler:(id)handler
{
  v7 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = siri;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = sub_1A957C688();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1A9595688;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1A9595690;
  v14[5] = v13;
  selfCopy = self;
  sub_1A93CC8FC(0, 0, v9, &unk_1A9595698, v14);
}

- (id)internalVoicesIncludingSiri:(BOOL)siri
{
  sub_1A94C46C8();
  v5 = swift_allocObject();
  *(v5 + 16) = self;
  *(v5 + 24) = siri;
  selfCopy = self;
  sub_1A937829C(&qword_1EB387FD8, &qword_1A95954C0);
  sub_1A957B9C8();

  sub_1A9387478(0, &qword_1EB385ED8, 0x1E69584F8);
  v7 = sub_1A957C4B8();

  return v7;
}

- (void)internalVoiceWithIdentifier:(NSString *)identifier completionHandler:(id)handler
{
  v7 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = identifier;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1A957C688();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1A9595660;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1A9595668;
  v14[5] = v13;
  identifierCopy = identifier;
  selfCopy = self;
  sub_1A93CC8FC(0, 0, v9, &unk_1A9595670, v14);
}

- (void)resourceVoiceWithIdentifier:(NSString *)identifier completionHandler:(id)handler
{
  v7 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = identifier;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1A957C688();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1A9595638;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1A9595640;
  v14[5] = v13;
  identifierCopy = identifier;
  selfCopy = self;
  sub_1A93CC8FC(0, 0, v9, &unk_1A9595648, v14);
}

- (void)resourceVoicesWithOnlyInstalled:(BOOL)installed completionHandler:(id)handler
{
  v7 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = installed;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = sub_1A957C688();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1A9595610;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1A9595618;
  v14[5] = v13;
  selfCopy = self;
  sub_1A93CC8FC(0, 0, v9, &unk_1A9595620, v14);
}

- (id)resourceVoicesWithOnlyInstalled:(BOOL)installed
{
  sub_1A94C46C8();
  v5 = swift_allocObject();
  *(v5 + 16) = self;
  *(v5 + 24) = installed;
  selfCopy = self;
  sub_1A937829C(&qword_1EB387FE8, &qword_1A9595530);
  sub_1A957B9C8();

  sub_1A9387478(0, &qword_1EB385F28, off_1E787F2E0);
  v7 = sub_1A957C4B8();

  return v7;
}

- (void)resourcesWithLanguageCode:(NSString *)code completionHandler:(id)handler
{
  v7 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = code;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1A957C688();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1A95955D0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1A95955E0;
  v14[5] = v13;
  codeCopy = code;
  selfCopy = self;
  sub_1A93CC8FC(0, 0, v9, &unk_1A95955F0, v14);
}

- (id)resourcesWithLanguageCode:(id)code
{
  v4 = sub_1A957C0F8();
  v6 = v5;
  sub_1A94C46C8();
  v7 = swift_allocObject();
  v7[2] = self;
  v7[3] = v4;
  v7[4] = v6;
  selfCopy = self;
  sub_1A937829C(&qword_1EB387FE8, &qword_1A9595530);
  sub_1A957B9C8();

  sub_1A9387478(0, &qword_1EB385F28, off_1E787F2E0);
  v9 = sub_1A957C4B8();

  return v9;
}

- (void)reloadPublicResolver
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0xD8);
  selfCopy = self;
  v4 = v3();
  (*((*v2 & selfCopy->super.isa) + 0xC8))(v4);
}

- (_TtC12TextToSpeech22CoreSynthesisVoiceShim)init
{
  v3 = OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim_executor;
  sub_1A957B978();
  swift_allocObject();
  *(&self->super.isa + v3) = sub_1A957B968();
  *(&self->super.isa + OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim____lazy_storage___voiceSource) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim____lazy_storage___resourceResolver) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim____lazy_storage___internalResolver) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim____lazy_storage___publicResolver) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for CoreSynthesisVoiceShim();
  return [(CoreSynthesisVoiceShim *)&v5 init];
}

@end