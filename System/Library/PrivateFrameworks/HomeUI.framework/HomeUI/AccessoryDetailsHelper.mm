@interface AccessoryDetailsHelper
- (_TtC6HomeUI22AccessoryDetailsHelper)init;
- (void)editRoomViewControllerDidFinish:(id)finish withNewRoom:(id)room;
@end

@implementation AccessoryDetailsHelper

- (void)editRoomViewControllerDidFinish:(id)finish withNewRoom:(id)room
{
  swift_getKeyPath();
  sub_20D056AEC(&qword_27C81FE10, type metadata accessor for AccessoryDetailsHelper, &unk_20D5C5BD0);
  selfCopy = self;
  roomCopy = room;
  sub_20D563908();

  v8 = *(&selfCopy->super.isa + OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper__roomEditorDidFinish);
  if (v8)
  {
    v9 = *&selfCopy->item[OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper__roomEditorDidFinish];

    v8(roomCopy);

    sub_20CEC8164(v8, v9);
  }

  else
  {
  }
}

- (_TtC6HomeUI22AccessoryDetailsHelper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end