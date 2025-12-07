@interface DIOneshotTimer
- (DIOneshotTimer)initWithInterval:(double)interval queue:(id)queue identifier:(id)identifier label:(id)label handler:(id)handler;
- (NSString)description;
- (void)cancelTimer;
@end

@implementation DIOneshotTimer

- (NSString)description
{
  selfCopy = self;
  sub_249DD8124();

  v3 = sub_249DDC848();

  return v3;
}

- (DIOneshotTimer)initWithInterval:(double)interval queue:(id)queue identifier:(id)identifier label:(id)label handler:(id)handler
{
  v10 = sub_249DDC6A8();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(handler);
  sub_249DDC688();
  v14 = sub_249DDC878();
  v16 = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  queueCopy = queue;
  return OneshotTimer.init(timeInterval:queue:identifier:label:timerFiredHandler:)(queue, v12, v14, v16, sub_249DD9BC0, v17, interval);
}

- (void)cancelTimer
{
  selfCopy = self;
  sub_249DD9634();
}

@end