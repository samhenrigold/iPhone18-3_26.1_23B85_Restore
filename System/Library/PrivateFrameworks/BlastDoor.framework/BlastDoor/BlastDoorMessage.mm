@interface BlastDoorMessage
- (BlastDoorMessage)init;
- (NSAttributedString)content;
- (NSString)description;
@end

@implementation BlastDoorMessage

- (NSString)description
{
  v2 = *&self->message[OBJC_IVAR___BlastDoorMessage_message + 72];
  v3 = *&self->message[OBJC_IVAR___BlastDoorMessage_message + 40];
  v18 = *&self->message[OBJC_IVAR___BlastDoorMessage_message + 56];
  v19 = v2;
  v4 = *&self->message[OBJC_IVAR___BlastDoorMessage_message + 72];
  v20 = *&self->message[OBJC_IVAR___BlastDoorMessage_message + 88];
  v5 = *&self->message[OBJC_IVAR___BlastDoorMessage_message + 8];
  v15[0] = *(&self->super.isa + OBJC_IVAR___BlastDoorMessage_message);
  v15[1] = v5;
  v6 = *&self->message[OBJC_IVAR___BlastDoorMessage_message + 40];
  v8 = *(&self->super.isa + OBJC_IVAR___BlastDoorMessage_message);
  v7 = *&self->message[OBJC_IVAR___BlastDoorMessage_message + 8];
  v16 = *&self->message[OBJC_IVAR___BlastDoorMessage_message + 24];
  v17 = v6;
  v9 = *&self->message[OBJC_IVAR___BlastDoorMessage_message + 88];
  v13[5] = v4;
  v13[6] = v9;
  v13[0] = v8;
  v13[1] = v7;
  v13[2] = v16;
  v21 = *&self->message[OBJC_IVAR___BlastDoorMessage_message + 104];
  v14 = *&self->message[OBJC_IVAR___BlastDoorMessage_message + 104];
  v13[3] = v3;
  v13[4] = v18;
  sub_214091538(v15, v12);
  sub_2146D9608();
  v10 = sub_2146D9588();

  return v10;
}

- (NSAttributedString)content
{
  selfCopy = self;
  v3 = sub_21457BADC();

  return v3;
}

- (BlastDoorMessage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end