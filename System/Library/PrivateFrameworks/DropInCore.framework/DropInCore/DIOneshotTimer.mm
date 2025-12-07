@interface DIOneshotTimer
- (DIOneshotTimer)initWithInterval:(double)interval queue:(id)queue identifier:(id)identifier label:(id)label handler:(id)handler;
- (NSString)description;
- (void)cancelTimer;
@end

@implementation DIOneshotTimer

- (NSString)description
{
  selfCopy = self;
  sub_249E6BB34();

  v3 = sub_249E7AA88();

  return v3;
}

- (DIOneshotTimer)initWithInterval:(double)interval queue:(id)queue identifier:(id)identifier label:(id)label handler:(id)handler
{
  v10 = sub_249E7A628();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(handler);
  sub_249E7A608();
  v14 = sub_249E7AAA8();
  v16 = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  queueCopy = queue;
  return OneshotTimer.init(timeInterval:queue:identifier:label:timerFiredHandler:)(queue, v12, v14, v16, sub_249E6C80C, v17, interval);
}

- (void)cancelTimer
{
  selfCopy = self;
  sub_249E6B770();
}

@end