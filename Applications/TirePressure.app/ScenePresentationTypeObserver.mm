@interface ScenePresentationTypeObserver
- (_TtC12TirePressure29ScenePresentationTypeObserver)init;
- (void)scene:(id)scene didUpdateSettings:(id)settings;
@end

@implementation ScenePresentationTypeObserver

- (void)scene:(id)scene didUpdateSettings:(id)settings
{
  sceneCopy = scene;
  settingsCopy = settings;
  selfCopy = self;
  sub_100015834(sceneCopy);
}

- (_TtC12TirePressure29ScenePresentationTypeObserver)init
{
  v3 = sub_100002410(&qword_100026098, &unk_100018910);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - v5;
  v7 = OBJC_IVAR____TtC12TirePressure29ScenePresentationTypeObserver__presentationType;
  v12 = 0;
  type metadata accessor for CRSUIHostedAltScreenPresentationType(0);
  Published.init(initialValue:)();
  (*(v4 + 32))(self + v7, v6, v3);
  v8 = type metadata accessor for ScenePresentationTypeObserver(0);
  v11.receiver = self;
  v11.super_class = v8;
  return [(ScenePresentationTypeObserver *)&v11 init];
}

@end