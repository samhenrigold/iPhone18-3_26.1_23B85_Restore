@interface BKAccessibility
+ (BOOL)_isDisplayBacklightOff;
+ (BOOL)_objectWithinProximity;
+ (CGPoint)_displayConvertFromCAScreen:(CGPoint)screen;
+ (CGPoint)_displayConvertFromCAScreen:(CGPoint)screen withDisplayIntegerId:(unsigned int)id;
+ (CGPoint)_displayConvertToCAScreen:(CGPoint)screen;
+ (CGPoint)_displayConvertToCAScreen:(CGPoint)screen withDisplayIntegerId:(unsigned int)id;
+ (id)_authenticationMessageForLocationInCAScreenCoordinates:(CGPoint)coordinates eventType:(unsigned int)type excludeContextIDsFromHitTest:(id)test secureName:(unsigned int)name;
+ (void)_accessibilityProcessExternHIDEvent:(__IOHIDEvent *)event;
+ (void)_applyExtendedHitTestInformationForCAScreenCoordinates:(CGPoint)coordinates displayUUID:(id)d toPathAttributes:(id)attributes secureName:(unsigned int)name excludeContextIDs:(id)ds;
+ (void)_setCapsLockLightOn:(BOOL)on;
@end

@implementation BKAccessibility

+ (void)_setCapsLockLightOn:(BOOL)on
{
  onCopy = on;
  v4 = +[BKHIDEventProcessorRegistry sharedInstance];
  v5 = [v4 eventProcessorOfClass:objc_opt_class()];

  [v5 setCapsLockLightOn:onCopy];
}

+ (BOOL)_isDisplayBacklightOff
{
  os_unfair_lock_lock(&stru_100125E20);
  v2 = *&dword_100125E24;
  os_unfair_lock_unlock(&stru_100125E20);
  return v2 == 0.0;
}

+ (BOOL)_objectWithinProximity
{
  v2 = +[BKHIDEventProcessorRegistry sharedInstance];
  v3 = [v2 eventProcessorOfClass:objc_opt_class()];

  LOBYTE(v2) = [v3 isObjectWithinProximity];
  return v2;
}

+ (id)_authenticationMessageForLocationInCAScreenCoordinates:(CGPoint)coordinates eventType:(unsigned int)type excludeContextIDsFromHitTest:(id)test secureName:(unsigned int)name
{
  v6 = *&name;
  y = coordinates.y;
  x = coordinates.x;
  testCopy = test;
  v11 = objc_alloc_init(BKSHIDEventDigitizerPathAttributes);
  [self _applyExtendedHitTestInformationForCAScreenCoordinates:0 displayUUID:v11 toPathAttributes:v6 secureName:testCopy excludeContextIDs:{x, y}];

  authenticationMessage = [v11 authenticationMessage];

  return authenticationMessage;
}

+ (void)_applyExtendedHitTestInformationForCAScreenCoordinates:(CGPoint)coordinates displayUUID:(id)d toPathAttributes:(id)attributes secureName:(unsigned int)name excludeContextIDs:(id)ds
{
  v7 = *&name;
  y = coordinates.y;
  x = coordinates.x;
  dsCopy = ds;
  attributesCopy = attributes;
  dCopy = d;
  v15 = +[BKHIDEventProcessorRegistry sharedInstance];
  v16 = [v15 eventProcessorOfClass:objc_opt_class()];

  [v16 applyExtendedHitTestInformationForCAScreenCoordinates:dCopy displayUUID:attributesCopy toPathAttributes:v7 secureName:dsCopy excludeContextIDs:{x, y}];
}

+ (CGPoint)_displayConvertToCAScreen:(CGPoint)screen withDisplayIntegerId:(unsigned int)id
{
  v4 = *&id;
  v5 = +[CAWindowServer server];
  v6 = [v5 displayWithDisplayId:v4];
  uniqueId = [v6 uniqueId];
  sub_100007C3C(uniqueId);
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

+ (CGPoint)_displayConvertFromCAScreen:(CGPoint)screen withDisplayIntegerId:(unsigned int)id
{
  v4 = *&id;
  v5 = +[CAWindowServer server];
  v6 = [v5 displayWithDisplayId:v4];
  uniqueId = [v6 uniqueId];
  sub_100028ED0(uniqueId);
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

+ (CGPoint)_displayConvertToCAScreen:(CGPoint)screen
{
  sub_100007C3C(0);
  result.y = v4;
  result.x = v3;
  return result;
}

+ (CGPoint)_displayConvertFromCAScreen:(CGPoint)screen
{
  sub_100028ED0(0);
  result.y = v4;
  result.x = v3;
  return result;
}

+ (void)_accessibilityProcessExternHIDEvent:(__IOHIDEvent *)event
{
  v4 = +[BKHIDSystemInterface sharedInstance];
  [v4 injectHIDEvent:event];
}

@end