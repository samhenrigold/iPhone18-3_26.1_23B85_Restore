@interface VoiceOptionsView
- (SUICVoiceSelectionEventHandling)voiceSelectionEventHandler;
- (SUICVoiceSelectionViewModelProviding)voiceSelectionViewModelProvider;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)voiceSelectionViewModelDidChange;
@end

@implementation VoiceOptionsView

- (SUICVoiceSelectionViewModelProviding)voiceSelectionViewModelProvider
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (SUICVoiceSelectionEventHandling)voiceSelectionEventHandler
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_269057744();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269057724();
  viewCopy = view;
  selfCopy = self;
  sub_269014E88();

  (*(v7 + 8))(v9, v6);
}

- (void)voiceSelectionViewModelDidChange
{
  selfCopy = self;
  sub_2690147C4();
}

@end