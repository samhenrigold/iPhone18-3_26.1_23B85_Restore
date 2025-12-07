@interface BKAccelerometerInterfaceAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (int64_t)processEvent:(__IOHIDEvent *)event sender:(id)sender dispatcher:(id)dispatcher;
- (void)orientationManager:(id)manager deviceOrientationMayHaveChanged:(int64_t)changed changeSource:(int64_t)source isDeviceOrientationLocked:(BOOL)locked;
@end

@implementation BKAccelerometerInterfaceAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  v3 = MEMORY[0x29EDBA0F8];
  validationsCopy = validations;
  v5 = [v3 stringWithUTF8String:"^^{__IOHIDEvent}"];
  v7 = [v3 stringWithFormat:@"N%@", v5];

  v6 = v7;
  [validationsCopy validateClass:@"BKAccelerometerInterface" hasInstanceMethod:@"processEvent:sender:dispatcher:" withFullSignature:{"q", objc_msgSend(v7, "UTF8String"), "@", "@", 0}];
  [validationsCopy validateClass:@"BKAccelerometerInterface" hasInstanceMethod:@"orientationManager: deviceOrientationMayHaveChanged: changeSource: isDeviceOrientationLocked:" withFullSignature:{"v", "@", "q", "q", "B", 0}];
}

- (int64_t)processEvent:(__IOHIDEvent *)event sender:(id)sender dispatcher:(id)dispatcher
{
  senderCopy = sender;
  dispatcherCopy = dispatcher;
  v10 = +[AXBAccessibilityManager sharedManager];
  accelerometerDisabled = [v10 accelerometerDisabled];

  if (accelerometerDisabled)
  {
    v12 = 0;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = BKAccelerometerInterfaceAccessibility;
    v12 = [(BKAccelerometerInterfaceAccessibility *)&v14 processEvent:event sender:senderCopy dispatcher:dispatcherCopy];
  }

  return v12;
}

- (void)orientationManager:(id)manager deviceOrientationMayHaveChanged:(int64_t)changed changeSource:(int64_t)source isDeviceOrientationLocked:(BOOL)locked
{
  lockedCopy = locked;
  managerCopy = manager;
  v11 = +[AXBAccessibilityManager sharedManager];
  accelerometerDisabled = [v11 accelerometerDisabled];

  if (source == 2 || (accelerometerDisabled & 1) == 0)
  {
    v13.receiver = self;
    v13.super_class = BKAccelerometerInterfaceAccessibility;
    [(BKAccelerometerInterfaceAccessibility *)&v13 orientationManager:managerCopy deviceOrientationMayHaveChanged:changed changeSource:source isDeviceOrientationLocked:lockedCopy];
  }
}

@end