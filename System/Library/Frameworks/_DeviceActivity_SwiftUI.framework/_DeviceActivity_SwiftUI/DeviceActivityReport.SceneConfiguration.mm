@interface DeviceActivityReport.SceneConfiguration
- (void)updateDeviceActivityData:(id)data segmentInterval:(id)interval replyHandler:(id)handler;
@end

@implementation DeviceActivityReport.SceneConfiguration

- (void)updateDeviceActivityData:(id)data segmentInterval:(id)interval replyHandler:(id)handler
{
  v7 = sub_23B6D69D0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(handler);
  v12 = sub_23B6D70B0();
  sub_23B6D69C0();
  _Block_copy(v11);
  selfCopy = self;
  sub_23B6CDF80(v12, v10, selfCopy, v11);
  _Block_release(v11);
  _Block_release(v11);

  (*(v8 + 8))(v10, v7);
}

@end