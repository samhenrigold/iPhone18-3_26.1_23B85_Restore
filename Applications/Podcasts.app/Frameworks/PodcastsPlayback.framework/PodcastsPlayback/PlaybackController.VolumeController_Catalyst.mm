@interface PlaybackController.VolumeController_Catalyst
- (void)updateOutputContext:(id)context;
@end

@implementation PlaybackController.VolumeController_Catalyst

- (void)updateOutputContext:(id)context
{
  v3 = sub_59474();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_59454();

  sub_4F504();

  (*(v4 + 8))(v6, v3);
}

@end