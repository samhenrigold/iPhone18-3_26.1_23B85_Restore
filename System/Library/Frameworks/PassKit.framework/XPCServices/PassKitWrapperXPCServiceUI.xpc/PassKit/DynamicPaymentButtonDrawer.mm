@interface DynamicPaymentButtonDrawer
- (_TtC26PassKitWrapperXPCServiceUI26DynamicPaymentButtonDrawer)init;
- (void)getImageWithStyle:(id)style tag:(id)tag forRemote:(BOOL)remote reply:(id)reply;
@end

@implementation DynamicPaymentButtonDrawer

- (void)getImageWithStyle:(id)style tag:(id)tag forRemote:(BOOL)remote reply:(id)reply
{
  v9 = sub_100002218(&qword_100010BB0, &qword_1000075E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(reply);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = sub_100006D00();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = tag;
  v15[5] = style;
  v15[6] = sub_1000061DC;
  v15[7] = v13;
  styleCopy = style;
  tagCopy = tag;
  sub_100002F20(0, 0, v11, &unk_100007680, v15);
}

- (_TtC26PassKitWrapperXPCServiceUI26DynamicPaymentButtonDrawer)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DynamicPaymentButtonDrawer();
  return [(DynamicPaymentButtonDrawer *)&v3 init];
}

@end