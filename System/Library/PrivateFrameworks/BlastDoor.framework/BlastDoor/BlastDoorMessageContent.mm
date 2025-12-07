@interface BlastDoorMessageContent
- (BlastDoorMessageContent)init;
- (NSAttributedString)content;
- (NSString)description;
@end

@implementation BlastDoorMessageContent

- (NSString)description
{
  v2 = *&self->messageContent[OBJC_IVAR___BlastDoorMessageContent_messageContent + 24];
  v3 = *&self->messageContent[OBJC_IVAR___BlastDoorMessageContent_messageContent + 32];
  v4 = *&self->messageContent[OBJC_IVAR___BlastDoorMessageContent_messageContent + 40];

  sub_214031CA0(v2, v3, v4);
  sub_2146D9608();
  v5 = sub_2146D9588();

  return v5;
}

- (NSAttributedString)content
{
  if (*&self->messageContent[OBJC_IVAR___BlastDoorMessageContent_messageContent + 24])
  {
    v3 = sub_214664BB8();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BlastDoorMessageContent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end