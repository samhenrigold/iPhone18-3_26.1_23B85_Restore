@interface AccessoryFirmwareUpdateManager
- (void)findMyAccessoryFirmwareUpdateManager:(id)manager didFailWithError:(id)error forDevice:(id)device;
- (void)findMyAccessoryFirmwareUpdateManager:(id)manager firmwareUpdateRequestForDevice:(id)device completedWithError:(id)error;
@end

@implementation AccessoryFirmwareUpdateManager

- (void)findMyAccessoryFirmwareUpdateManager:(id)manager didFailWithError:(id)error forDevice:(id)device
{
  v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  if (device)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  }

  else
  {
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  }

  managerCopy = manager;
  errorCopy = error;

  sub_101056E3C(errorCopy, v10);

  sub_10000B3A8(v10, &qword_1016980D0, &unk_10138F3B0);
}

- (void)findMyAccessoryFirmwareUpdateManager:(id)manager firmwareUpdateRequestForDevice:(id)device completedWithError:(id)error
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  managerCopy = manager;

  errorCopy = error;
  sub_101057240(v10, error);

  (*(v8 + 8))(v10, v7);
}

@end