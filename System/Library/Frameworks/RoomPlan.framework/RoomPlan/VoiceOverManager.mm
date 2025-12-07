@interface VoiceOverManager
- (void)announcementFinished:(id)finished;
@end

@implementation VoiceOverManager

- (void)announcementFinished:(id)finished
{
  v4 = sub_23AA0BD14();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23AA0BD04();
  v8 = *(v5 + 8);

  v8(v7, v4);
  self->isAnnouncingNewScanItems[0] = 0;
}

@end