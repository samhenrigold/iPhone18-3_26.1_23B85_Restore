@interface MODaemonSPINotifier
- (MODaemonSPINotifier)initWithName:(id)name;
- (void)sendNotification:(int)notification withPayload:(id)payload;
@end

@implementation MODaemonSPINotifier

- (MODaemonSPINotifier)initWithName:(id)name
{
  v7.receiver = self;
  v7.super_class = MODaemonSPINotifier;
  v3 = [(MONotifier *)&v7 initWithName:name];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (void)sendNotification:(int)notification withPayload:(id)payload
{
  v4 = *&notification;
  payloadCopy = payload;
  if ([(MONotifier *)self isEnabled])
  {
    [(MONotifier *)self notify:v4 withPayload:payloadCopy];
  }
}

@end