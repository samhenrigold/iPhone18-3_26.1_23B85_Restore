@interface AudioQueueStateManager
- (_TtC21SiriInformationSearch22AudioQueueStateManager)init;
- (void)nowPlayingObserver:(id)observer playbackStateDidChangeFrom:(int64_t)from to:(int64_t)to lastPlayingDate:(id)date;
@end

@implementation AudioQueueStateManager

- (void)nowPlayingObserver:(id)observer playbackStateDidChangeFrom:(int64_t)from to:(int64_t)to lastPlayingDate:(id)date
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22[-1] - v12;
  if (date)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = type metadata accessor for Date();
    (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  }

  else
  {
    v15 = type metadata accessor for Date();
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  }

  v16 = 0;
  if (observer)
  {
    v16 = type metadata accessor for SOMediaNowPlayingObserver();
    v17 = &protocol witness table for SOMediaNowPlayingObserver;
  }

  else
  {
    v17 = 0;
    v22[1] = 0;
    v22[2] = 0;
  }

  v22[0] = observer;
  v22[3] = v16;
  v22[4] = v17;
  v18 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x130);
  observerCopy = observer;
  selfCopy = self;
  v18(v22, from, to, v13);

  outlined destroy of MediaUserStateCenter?(v13, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of MediaUserStateCenter?(v22, &_s21SiriInformationSearch24MediaNowPlayingObserving_pSgMd, &_s21SiriInformationSearch24MediaNowPlayingObserving_pSgMR);
}

- (_TtC21SiriInformationSearch22AudioQueueStateManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end