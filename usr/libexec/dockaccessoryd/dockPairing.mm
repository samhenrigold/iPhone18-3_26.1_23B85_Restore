@interface dockPairing
- (void)clearSecureTrackingUserPreference;
- (void)saveSecureTrackingUserPreferenceWithEnabled:(BOOL)enabled;
- (void)setSetupPayloadWithUri:(id)uri completion:(id)completion;
@end

@implementation dockPairing

- (void)setSetupPayloadWithUri:(id)uri completion:(id)completion
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(completion);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v10);
  selfCopy = self;
  sub_1001801F4(v9, selfCopy, v10);
  _Block_release(v10);
  _Block_release(v10);

  (*(v7 + 8))(v9, v6);
}

- (void)saveSecureTrackingUserPreferenceWithEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  if (enabledCopy)
  {
    v4 = 5;
  }

  else
  {
    v4 = 12;
  }

  sub_1000EC468(v4);
}

- (void)clearSecureTrackingUserPreference
{
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  sub_1000EC468(13);
}

@end