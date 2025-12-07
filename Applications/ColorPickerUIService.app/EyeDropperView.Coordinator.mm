@interface EyeDropperView.Coordinator
- (_TtCV20ColorPickerUIServiceP33_DBD1622CFBB2996DAF9D1081F3537E2A14EyeDropperView11Coordinator)init;
- (void)buttonPressed:(id)pressed;
- (void)buttonUp:(id)up;
@end

@implementation EyeDropperView.Coordinator

- (void)buttonPressed:(id)pressed
{
  if (*(&self->super.isa + OBJC_IVAR____TtCV20ColorPickerUIServiceP33_DBD1622CFBB2996DAF9D1081F3537E2A14EyeDropperView11Coordinator_parent))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
  }

  else
  {
    type metadata accessor for ColorPickerState(0);
    sub_10000C094(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
    selfCopy = self;
    EnvironmentObject.error()();
    __break(1u);
  }
}

- (void)buttonUp:(id)up
{
  upCopy = up;
  selfCopy = self;
  sub_10000B780();
}

- (_TtCV20ColorPickerUIServiceP33_DBD1622CFBB2996DAF9D1081F3537E2A14EyeDropperView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end