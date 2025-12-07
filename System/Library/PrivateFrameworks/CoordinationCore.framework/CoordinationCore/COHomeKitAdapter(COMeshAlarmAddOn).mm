@interface COHomeKitAdapter(COMeshAlarmAddOn)
@end

@implementation COHomeKitAdapter(COMeshAlarmAddOn)

- (void)addAlarm:()COMeshAlarmAddOn toAccessory:inHome:.cold.1(void *a1)
{
  v1 = [a1 uniqueIdentifier];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_0_11(&dword_244378000, v2, v3, "Alarm add failed to find the accessory settings on %@!", v4, v5, v6, v7, v8, DWORD2(v8));
}

- (void)updateAlarm:()COMeshAlarmAddOn onAccessory:inHome:.cold.1(void *a1)
{
  v1 = [a1 uniqueIdentifier];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_0_11(&dword_244378000, v2, v3, "Alarm remove failed to find the accessory settings on %@!", v4, v5, v6, v7, v8, DWORD2(v8));
}

@end