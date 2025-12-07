@interface DaemonHealthExperienceStore
- (void)debuggingInfoRequestedWithNote:(id)note;
@end

@implementation DaemonHealthExperienceStore

- (void)debuggingInfoRequestedWithNote:(id)note
{
  v3 = sub_22855BE9C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22855BE3C();

  DaemonHealthExperienceStore.debuggingInfoRequested(note:)();

  (*(v4 + 8))(v6, v3);
}

@end