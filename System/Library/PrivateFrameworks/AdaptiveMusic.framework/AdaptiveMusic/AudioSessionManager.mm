@interface AudioSessionManager
- (void)handleInterruptionWithNotification:(id)notification;
@end

@implementation AudioSessionManager

- (void)handleInterruptionWithNotification:(id)notification
{
  v4 = sub_23E7DCB48();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E7DCB28();
  selfCopy = self;
  sub_23E7B9D28();

  (*(v5 + 8))(v7, v4);
}

@end