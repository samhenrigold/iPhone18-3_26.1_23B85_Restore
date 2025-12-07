@interface SiriCallAnnouncementProvider
- (void)propertiesDidChangeForConfiguration:(id)configuration;
- (void)voiceOverObserver:(id)observer didChangeEnabled:(BOOL)enabled;
@end

@implementation SiriCallAnnouncementProvider

- (void)voiceOverObserver:(id)observer didChangeEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1003FF9C0(selfCopy, enabledCopy);
  swift_unknownObjectRelease();
}

- (void)propertiesDidChangeForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  sub_1003FFCFC(configurationCopy);
}

@end