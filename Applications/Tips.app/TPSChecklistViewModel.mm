@interface TPSChecklistViewModel
- (BOOL)hasContent;
- (NSArray)currentDisplayTips;
- (NSArray)tips;
- (NSString)selectedTipIdentifier;
- (id)actionHandler;
- (id)assetsBaseURLFor:(id)for;
- (id)bodyContentFor:(id)for;
- (id)firstTip;
- (id)subtitleFor:(id)for;
- (id)symbolIdentifierFor:(id)for;
- (id)tipWithIdentifier:(id)identifier;
- (id)titleFor:(id)for;
- (int64_t)suggestedTipsCount;
- (void)reset;
- (void)setActionHandler:(id)handler;
- (void)setCollection:(id)collection;
- (void)setCurrentDisplayTips:(id)tips;
- (void)setCurrentTip:(id)tip;
- (void)setSelectedTipIdentifier:(id)identifier;
- (void)updateSelectionIfNeeded;
- (void)updateTips;
@end

@implementation TPSChecklistViewModel

- (void)setCollection:(id)collection
{
  swift_getKeyPath();
  swift_getKeyPath();
  collectionCopy = collection;
  selfCopy = self;
  v7 = collectionCopy;
  static Published.subscript.setter();
  sub_100024904();
}

- (NSString)selectedTipIdentifier
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  static Published.subscript.getter();

  if (v6)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setSelectedTipIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_100024DD8(v4, v6);
}

- (void)setCurrentTip:(id)tip
{
  tipCopy = tip;
  selfCopy = self;
  sub_100025098(tip);
}

- (NSArray)tips
{
  selfCopy = self;
  sub_1000255F0();

  sub_10001AC14(0, &qword_1000B30C8, TPSTip_ptr);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (NSArray)currentDisplayTips
{
  if (*(self + OBJC_IVAR___TPSChecklistViewModel_currentDisplayTips))
  {
    sub_10001AC14(0, &qword_1000B30C8, TPSTip_ptr);

    v2.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  return v2.super.isa;
}

- (void)setCurrentDisplayTips:(id)tips
{
  if (tips)
  {
    sub_10001AC14(0, &qword_1000B30C8, TPSTip_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  *(self + OBJC_IVAR___TPSChecklistViewModel_currentDisplayTips) = v4;
}

- (id)actionHandler
{
  if (*(self + OBJC_IVAR___TPSChecklistViewModel_actionHandler))
  {
    v2 = *(self + OBJC_IVAR___TPSChecklistViewModel_actionHandler + 8);
    v5[4] = *(self + OBJC_IVAR___TPSChecklistViewModel_actionHandler);
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_100032D1C;
    v5[3] = &unk_1000A37E0;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setActionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_100029480;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___TPSChecklistViewModel_actionHandler);
  v8 = *(self + OBJC_IVAR___TPSChecklistViewModel_actionHandler);
  v9 = *(self + OBJC_IVAR___TPSChecklistViewModel_actionHandler + 8);
  *v7 = v6;
  v7[1] = v4;
  selfCopy = self;
  sub_10001E970(v8, v9);
}

- (BOOL)hasContent
{
  selfCopy = self;
  v3 = sub_100025978();

  return v3 & 1;
}

- (int64_t)suggestedTipsCount
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  static Published.subscript.getter();

  if (v6)
  {
    if (v6 >> 62)
    {
      v4 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v4 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)updateTips
{
  selfCopy = self;
  sub_100025B08();
}

- (id)tipWithIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  v8 = sub_100026408(v4, v6);

  return v8;
}

- (void)updateSelectionIfNeeded
{
  selfCopy = self;
  sub_1000268CC();
}

- (id)firstTip
{
  selfCopy = self;
  v3 = sub_100026BB0();

  return v3;
}

- (void)reset
{
  selfCopy = self;
  sub_100024DD8(0, 0);
  sub_100025098(0);
}

- (id)assetsBaseURLFor:(id)for
{
  v5 = sub_10001B4A4(&unk_1000B3380, &qword_100079940);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - v6;
  forCopy = for;
  selfCopy = self;
  sub_100027A38(forCopy, v7);

  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v7, 1, v10);
  v13 = 0;
  if (v12 != 1)
  {
    URL._bridgeToObjectiveC()(v12);
    v15 = v14;
    (*(v11 + 8))(v7, v10);
    v13 = v15;
  }

  return v13;
}

- (id)titleFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  checklistContent = [forCopy checklistContent];
  if (checklistContent && (v7 = checklistContent, v8 = [checklistContent title], v7, v8))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
  }

  v9 = String._bridgeToObjectiveC()();

  return v9;
}

- (id)subtitleFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  sub_100027E1C(forCopy);

  v6 = String._bridgeToObjectiveC()();

  return v6;
}

- (id)bodyContentFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  sub_100029020(forCopy);

  sub_10001B4A4(&qword_1000B31C8, &qword_100078040);
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (id)symbolIdentifierFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  checklistContent = [forCopy checklistContent];
  if (checklistContent && (v7 = checklistContent, v8 = [checklistContent assets], v7, v8) && (v9 = objc_msgSend(v8, "symbolId"), v8, v9))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
  }

  v10 = String._bridgeToObjectiveC()();

  return v10;
}

@end