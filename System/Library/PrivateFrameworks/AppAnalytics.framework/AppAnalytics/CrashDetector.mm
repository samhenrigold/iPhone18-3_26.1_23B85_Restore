@interface CrashDetector
- (void)willTerminate;
@end

@implementation CrashDetector

- (void)willTerminate
{
  v3 = qword_1EB95A9D8;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_1EB95C350;
  v5 = sub_1B6AB9900();
  sub_1B6AB8F70("graceful app termination observed", 33, 2, &dword_1B697C000, v4, v5, MEMORY[0x1E69E7CC0]);
  v6 = *self->userDefaults;
  v7 = sub_1B6AB92B0();
  [v6 setBool:1 forKey:v7];
}

@end