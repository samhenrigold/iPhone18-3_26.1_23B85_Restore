@interface DialogProducingIntentHandler
- (NSString)description;
- (_TtC23AudioFlowDelegatePlugin28DialogProducingIntentHandler)init;
- (void)handlePlayMedia:(INPlayMediaIntent *)media completion:(id)completion;
@end

@implementation DialogProducingIntentHandler

- (void)handlePlayMedia:(INPlayMediaIntent *)media completion:(id)completion
{
  v7 = sub_20410(&qword_34E4B0, &qword_2D3520);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = media;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_2CE4D0();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2D3530;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2D3540;
  v14[5] = v13;
  mediaCopy = media;
  selfCopy = self;
  sub_D7B48(0, 0, v9, &unk_2D3550, v14);
}

- (NSString)description
{
  v2 = sub_2CE260();

  return v2;
}

- (_TtC23AudioFlowDelegatePlugin28DialogProducingIntentHandler)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DialogProducingIntentHandler();
  return [(DialogProducingIntentHandler *)&v3 init];
}

@end