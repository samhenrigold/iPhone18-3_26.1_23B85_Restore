@interface RGBLivenessClassifierManager
- (void)stitchDetectedWithNotification:(id)notification;
@end

@implementation RGBLivenessClassifierManager

- (void)stitchDetectedWithNotification:(id)notification
{
  v3 = sub_245747B10();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245747AF0();

  sub_2456F3434();

  (*(v4 + 8))(v6, v3);
}

@end