@interface TPSSavedTipsManager
+ (TPSSavedTipsManager)sharedInstance;
- (BOOL)isCurrentTipSaved;
- (BOOL)isSavedWithTipIdentifier:(id)identifier;
- (TPSTip)currentTip;
- (id)identifiers;
- (id)savedDateWithCorrelationId:(id)id;
- (void)removeInvalidEntries;
- (void)setCurrentTip:(id)tip;
- (void)setIsCurrentTipSaved:(BOOL)saved;
- (void)toggleSavedTipWithCorrelationId:(id)id tipIdentifier:(id)identifier;
- (void)updateSavedTipsWithCorrelationId:(id)id tipIdentifier:(id)identifier savedDate:(id)date lastUsedVersion:(id)version;
@end

@implementation TPSSavedTipsManager

- (TPSTip)currentTip
{
  swift_getKeyPath();
  sub_1C0122EFC(&qword_1EBE06978, type metadata accessor for TPSSavedTipsManager, &protocol conformance descriptor for TPSSavedTipsManager);
  selfCopy = self;
  sub_1C014BF00();

  v4 = OBJC_IVAR___TPSSavedTipsManager__currentTip;
  swift_beginAccess();
  v5 = *(&selfCopy->super.isa + v4);
  v6 = v5;

  return v5;
}

- (void)setCurrentTip:(id)tip
{
  tipCopy = tip;
  selfCopy = self;
  sub_1C011D034(tip);
}

- (BOOL)isCurrentTipSaved
{
  swift_getKeyPath();
  sub_1C0122EFC(&qword_1EBE06978, type metadata accessor for TPSSavedTipsManager, &protocol conformance descriptor for TPSSavedTipsManager);
  selfCopy = self;
  sub_1C014BF00();

  v4 = OBJC_IVAR___TPSSavedTipsManager__isCurrentTipSaved;
  swift_beginAccess();
  LOBYTE(v4) = *(&selfCopy->super.isa + v4);

  return v4;
}

- (void)setIsCurrentTipSaved:(BOOL)saved
{
  selfCopy = self;
  sub_1C011D754(saved);
}

+ (TPSSavedTipsManager)sharedInstance
{
  if (qword_1EDD44AC8 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDD44AD0;

  return v3;
}

- (BOOL)isSavedWithTipIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = sub_1C014C230();
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x1EEE9AC00](v4);
  selfCopy = self;
  sub_1C014C5B0();

  return v7;
}

- (id)savedDateWithCorrelationId:(id)id
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06688, &qword_1C0156730);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16[-v5];
  v7 = sub_1C014C230();
  selfCopy = self;
  v18 = v7;
  v19 = v8;
  selfCopy2 = self;
  sub_1C014C5B0();

  v10 = sub_1C014BD40();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v6, 1, v10);
  v13 = 0;
  if (v12 != 1)
  {
    v14 = sub_1C014BCE0();
    (*(v11 + 8))(v6, v10);
    v13 = v14;
  }

  return v13;
}

- (void)toggleSavedTipWithCorrelationId:(id)id tipIdentifier:(id)identifier
{
  v5 = sub_1C014C230();
  v7 = v6;
  v8 = sub_1C014C230();
  v10 = v9;
  selfCopy = self;
  sub_1C011E654(v5, v7, v8, v10);
}

- (void)updateSavedTipsWithCorrelationId:(id)id tipIdentifier:(id)identifier savedDate:(id)date lastUsedVersion:(id)version
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06688, &qword_1C0156730);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v23 - v9;
  v11 = sub_1C014C230();
  v13 = v12;
  v14 = sub_1C014C230();
  v16 = v15;
  if (date)
  {
    sub_1C014BD00();
    v17 = sub_1C014BD40();
    (*(*(v17 - 8) + 56))(v10, 0, 1, v17);
  }

  else
  {
    v18 = sub_1C014BD40();
    (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  }

  v19 = sub_1C014C230();
  v21 = v20;
  selfCopy = self;
  sub_1C011EC38(v11, v13, v14, v16, v10, v19, v21);

  sub_1C012348C(v10);
}

- (id)identifiers
{
  selfCopy = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE067C0, &qword_1C0157160);
  sub_1C014C5B0();

  v3 = sub_1C014C3B0();

  return v3;
}

- (void)removeInvalidEntries
{
  v3 = *(&self->super.isa + OBJC_IVAR___TPSSavedTipsManager_queue);
  v4 = swift_allocObject();
  *(v4 + 16) = self;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1C0123B8C;
  *(v5 + 24) = v4;
  v8[4] = sub_1C0123B80;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1C011EB80;
  v8[3] = &block_descriptor_54;
  v6 = _Block_copy(v8);
  selfCopy = self;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }
}

@end