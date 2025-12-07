@interface FMTerminalView
- (_TtC6FindMy14FMTerminalView)initWithCoder:(id)coder;
- (void)handleAction;
@end

@implementation FMTerminalView

- (_TtC6FindMy14FMTerminalView)initWithCoder:(id)coder
{
  *&self->super.mediator[OBJC_IVAR____TtC6FindMy14FMTerminalView_delegate] = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy14FMTerminalView_isVisible) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy14FMTerminalView_isPeopleTab) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy14FMTerminalView_state) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy14FMTerminalView_conditionSubcription) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)handleAction
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy14FMTerminalView_state);
  if (v2 > 3)
  {
    if (v2 == 4)
    {
      selfCopy7 = self;
      selfCopy2 = self;
      sub_10040BD04();
    }

    else
    {
      if (v2 != 5)
      {
        return;
      }

      selfCopy7 = self;
      selfCopy4 = self;
      sub_10040BE38();
    }
  }

  else
  {
    if (v2 - 1 >= 2)
    {
      if (!*(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy14FMTerminalView_state))
      {
        return;
      }

      selfCopy7 = self;
      selfCopy6 = self;
      v5 = 0x6F723A7366657270;
      v4 = 0xEF494649573D746FLL;
    }

    else
    {
      selfCopy7 = self;
      selfCopy8 = self;
      v4 = 0x80000001005891F0;
      v5 = 0xD000000000000018;
    }

    sub_10040C818(v5, v4);
  }
}

@end