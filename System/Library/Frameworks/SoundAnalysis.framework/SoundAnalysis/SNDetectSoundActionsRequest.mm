@interface SNDetectSoundActionsRequest
- (NSArray)commands;
- (SNDetectSoundActionsRequest)initWithModel:(id)model dictionary:(id)dictionary error:(id *)error;
- (void)setCommands:(id)commands;
@end

@implementation SNDetectSoundActionsRequest

- (NSArray)commands
{
  selfCopy = self;
  sub_1C99D2278();

  type metadata accessor for SNSoundActionCommand(v3);
  v4 = sub_1C9A92768();

  return v4;
}

- (void)setCommands:(id)commands
{
  type metadata accessor for SNSoundActionCommand(v3);
  v5 = sub_1C9A92798();
  selfCopy = self;
  sub_1C99D2418(v5);
}

- (SNDetectSoundActionsRequest)initWithModel:(id)model dictionary:(id)dictionary error:(id *)error
{
  v6 = sub_1C9A92328();
  sub_1C99D2624(model, v6);
  return result;
}

@end