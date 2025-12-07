@interface BaseQuery
- (_TtC18ActivityAwardsCore9BaseQuery)init;
- (void)transportEvent:(unint64_t)event data:(id)data;
- (void)transportRequest:(unint64_t)request data:(NSData *)data completion:(id)completion;
@end

@implementation BaseQuery

- (_TtC18ActivityAwardsCore9BaseQuery)init
{
  sub_227781E88();
  swift_allocObject();
  *(&self->super.isa + OBJC_IVAR____TtC18ActivityAwardsCore9BaseQuery_transportDispatchService) = sub_227781E78();
  v4.receiver = self;
  v4.super_class = type metadata accessor for BaseQuery();
  return [(BaseQuery *)&v4 init];
}

- (void)transportRequest:(unint64_t)request data:(NSData *)data completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE420, &qword_227782940);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = request;
  v13[3] = data;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_227781FE8();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_227782950;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_227782960;
  v16[5] = v15;
  dataCopy = data;
  selfCopy = self;
  sub_227770DA4(0, 0, v11, &unk_227782970, v16);
}

- (void)transportEvent:(unint64_t)event data:(id)data
{
  if (data)
  {
    selfCopy = self;
    dataCopy = data;
    v8 = sub_227781DE8();
    v10 = v9;
  }

  else
  {
    selfCopy2 = self;
    v8 = 0;
    v10 = 0xF000000000000000;
  }

  _s18ActivityAwardsCore9BaseQueryC14transportEvent_4dataySo16AACTransportItemV_10Foundation4DataVSgtF_0(event);
  sub_22776F3A4(v8, v10);
}

@end