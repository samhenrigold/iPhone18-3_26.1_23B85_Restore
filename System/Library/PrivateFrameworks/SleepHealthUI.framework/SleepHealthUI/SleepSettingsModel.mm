@interface SleepSettingsModel
- (_TtC13SleepHealthUI18SleepSettingsModel)init;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation SleepSettingsModel

- (void)dealloc
{
  v3 = sub_269D97D30();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v8, *MEMORY[0x277D62620], v3, v6);
  selfCopy = self;

  sub_269D97D50();

  (*(v4 + 8))(v8, v3);

  v10 = type metadata accessor for SleepSettingsModel();
  v11.receiver = selfCopy;
  v11.super_class = v10;
  [(SleepSettingsModel *)&v11 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (path)
  {
    v10 = sub_269D9A630();
    v12 = v11;
    if (object)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v18, 0, sizeof(v18));
    changeCopy = change;
    selfCopy = self;
    if (change)
    {
      goto LABEL_4;
    }

LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v10 = 0;
  v12 = 0;
  if (!object)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  changeCopy2 = change;
  selfCopy2 = self;
  sub_269D9AED0();
  swift_unknownObjectRelease();
  if (!change)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_269CB5CB8(&qword_28034DBB0, 255, type metadata accessor for NSKeyValueChangeKey, &unk_269D9FBA8);
  v15 = sub_269D9A490();

LABEL_8:
  sub_269CB5220(v10, v12, v18, v15, context);

  sub_269CB6B2C(v18);
}

- (_TtC13SleepHealthUI18SleepSettingsModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end