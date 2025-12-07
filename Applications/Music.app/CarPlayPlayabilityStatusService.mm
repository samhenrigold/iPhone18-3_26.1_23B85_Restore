@interface CarPlayPlayabilityStatusService
+ (BOOL)isModelObjectPlayable:(id)playable;
- (_TtC5Music31CarPlayPlayabilityStatusService)init;
@end

@implementation CarPlayPlayabilityStatusService

+ (BOOL)isModelObjectPlayable:(id)playable
{
  v4 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v13 - v8;
  if (playable)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      LOBYTE(playable) = 1;
    }

    else
    {
      playableCopy = playable;
      sub_100537EF0(playableCopy, v9);
      (*(v5 + 104))(v7, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v4);
      LOBYTE(playable) = static MusicPlayer.PlayabilityStatus.== infix(_:_:)();

      v11 = *(v5 + 8);
      v11(v7, v4);
      v11(v9, v4);
    }
  }

  return playable & 1;
}

- (_TtC5Music31CarPlayPlayabilityStatusService)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CarPlayPlayabilityStatusService();
  return [(CarPlayPlayabilityStatusService *)&v3 init];
}

@end