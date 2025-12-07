@interface NetworkProxy
+ (BOOL)canInitWithRequest:(id)request;
+ (id)canonicalRequestForRequest:(id)request;
- (_TtC13TVAppServices12NetworkProxy)initWithRequest:(id)request cachedResponse:(id)response client:(id)client;
- (uint64_t)stopLoading;
- (void)startLoading;
@end

@implementation NetworkProxy

- (void)startLoading
{
  selfCopy = self;
  sub_26CCF5D6C();
}

+ (BOOL)canInitWithRequest:(id)request
{
  v3 = sub_26CD39D0C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26CD39C6C();
  swift_getObjCClassMetadata();
  v7 = sub_26CCF6AA0(v6);
  (*(v4 + 8))(v6, v3);
  return v7 & 1;
}

+ (id)canonicalRequestForRequest:(id)request
{
  v3 = sub_26CD39D0C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26CD39C6C();
  v7 = sub_26CD39C4C();
  (*(v4 + 8))(v6, v3);

  return v7;
}

- (_TtC13TVAppServices12NetworkProxy)initWithRequest:(id)request cachedResponse:(id)response client:(id)client
{
  v8 = sub_26CD39D0C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26CD39C6C();
  responseCopy = response;
  swift_unknownObjectRetain();
  v13 = sub_26CD39C4C();
  v14 = type metadata accessor for NetworkProxy();
  v17.receiver = self;
  v17.super_class = v14;
  v15 = [(NSURLProtocol *)&v17 initWithRequest:v13 cachedResponse:responseCopy client:client];

  swift_unknownObjectRelease();
  (*(v9 + 8))(v11, v8);
  return v15;
}

- (uint64_t)stopLoading
{
  v0 = sub_26CD3A49C();
  v12 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26CD3A4CC();
  v3 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2804BBA90 != -1)
  {
    swift_once();
  }

  v6 = qword_2804BD990;
  aBlock[4] = sub_26CCF7048;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26CC1DDD0;
  aBlock[3] = &block_descriptor_11;
  v7 = _Block_copy(aBlock);
  v8 = v6;
  sub_26CD3A4AC();
  v13 = MEMORY[0x277D84F90];
  sub_26CC1A3A8(&qword_280BBB7F0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC40, &unk_26CD45D50);
  sub_26CCF7588(&qword_280BBB7D0, &unk_2804BCC40, &unk_26CD45D50);
  sub_26CD3AB5C();
  MEMORY[0x26D6AD3E0](0, v5, v2, v7);
  _Block_release(v7);

  (*(v12 + 8))(v2, v0);
  return (*(v3 + 8))(v5, v11);
}

@end