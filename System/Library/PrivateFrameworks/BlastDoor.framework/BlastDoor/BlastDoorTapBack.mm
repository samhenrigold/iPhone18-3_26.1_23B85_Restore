@interface BlastDoorTapBack
- (BlastDoorTapBack)init;
- (NSString)description;
- (_NSRange)associatedMessageRange;
- (int64_t)associatedMessageType;
@end

@implementation BlastDoorTapBack

- (NSString)description
{
  v2 = *&self->tapBack[OBJC_IVAR___BlastDoorTapBack_tapBack + 136];
  v3 = *&self->tapBack[OBJC_IVAR___BlastDoorTapBack_tapBack + 104];
  v25 = *&self->tapBack[OBJC_IVAR___BlastDoorTapBack_tapBack + 120];
  v26 = v2;
  v4 = *&self->tapBack[OBJC_IVAR___BlastDoorTapBack_tapBack + 136];
  v27 = *&self->tapBack[OBJC_IVAR___BlastDoorTapBack_tapBack + 152];
  v5 = *&self->tapBack[OBJC_IVAR___BlastDoorTapBack_tapBack + 72];
  v6 = *&self->tapBack[OBJC_IVAR___BlastDoorTapBack_tapBack + 40];
  v21 = *&self->tapBack[OBJC_IVAR___BlastDoorTapBack_tapBack + 56];
  v22 = v5;
  v7 = *&self->tapBack[OBJC_IVAR___BlastDoorTapBack_tapBack + 72];
  v8 = *&self->tapBack[OBJC_IVAR___BlastDoorTapBack_tapBack + 104];
  v23 = *&self->tapBack[OBJC_IVAR___BlastDoorTapBack_tapBack + 88];
  v24 = v8;
  v9 = *&self->tapBack[OBJC_IVAR___BlastDoorTapBack_tapBack + 8];
  v18[0] = *(&self->super.isa + OBJC_IVAR___BlastDoorTapBack_tapBack);
  v18[1] = v9;
  v10 = *&self->tapBack[OBJC_IVAR___BlastDoorTapBack_tapBack + 40];
  v12 = *(&self->super.isa + OBJC_IVAR___BlastDoorTapBack_tapBack);
  v11 = *&self->tapBack[OBJC_IVAR___BlastDoorTapBack_tapBack + 8];
  v19 = *&self->tapBack[OBJC_IVAR___BlastDoorTapBack_tapBack + 24];
  v20 = v10;
  v16[8] = v25;
  v16[9] = v4;
  v16[10] = *&self->tapBack[OBJC_IVAR___BlastDoorTapBack_tapBack + 152];
  v16[4] = v21;
  v16[5] = v7;
  v16[6] = v23;
  v16[7] = v3;
  v16[0] = v12;
  v16[1] = v11;
  v28 = *&self->tapBack[OBJC_IVAR___BlastDoorTapBack_tapBack + 168];
  v17 = *&self->tapBack[OBJC_IVAR___BlastDoorTapBack_tapBack + 168];
  v16[2] = v19;
  v16[3] = v6;
  sub_21430208C(v18, v15);
  sub_2146D9608();
  v13 = sub_2146D9588();

  return v13;
}

- (int64_t)associatedMessageType
{
  result = sub_21459308C(qword_214760550[*(&self->super.isa + OBJC_IVAR___BlastDoorTapBack_tapBack)]);
  if (v3)
  {
    __break(1u);
  }

  return result;
}

- (_NSRange)associatedMessageRange
{
  v2 = sub_21457AF78(self, a2, &OBJC_IVAR___BlastDoorTapBack_tapBack);
  result.length = v3;
  result.location = v2;
  return result;
}

- (BlastDoorTapBack)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end