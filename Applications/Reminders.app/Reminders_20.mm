uint64_t sub_1002182C0(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.Item();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TTRIRemindersCommonPresenter.ContextMenuIdentifier.Action(319);
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void *sub_1002183B8(uint64_t a1)
{
  v2 = *v1;
  v3 = sub_1003A4A1C(a1, *v1);
  *(v2 + 24) = *(v4 + 8);
  swift_unknownObjectWeakAssign();
  return v3;
}

uint64_t sub_100218424()
{
  v1 = *(*v0 + 144);
  ObjectType = swift_getObjectType();
  return (*(v1 + 552))(ObjectType, v1);
}

uint64_t sub_100218468(uint64_t a1)
{
  v3 = *(*v1 + 144);
  ObjectType = swift_getObjectType();
  return (*(v3 + 560))(a1, ObjectType, v3);
}

double sub_1002184C0(char a1, uint64_t a2)
{
  v5 = type metadata accessor for TTRRemindersListViewModel.Item();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = *v2;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  (*(v6 + 16))(v8, a2, v5);
  type metadata accessor for MainActor();

  v14 = static MainActor.shared.getter();
  v15 = (*(v6 + 80) + 41) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = &protocol witness table for MainActor;
  *(v16 + 32) = v12;
  *(v16 + 40) = a1;
  (*(v6 + 32))(v16 + v15, v8, v5);
  sub_10009E31C(0, 0, v11, &unk_100635D28, v16);

  return result;
}

uint64_t sub_1002186F4(uint64_t a1)
{
  sub_100058000(&qword_100772150, &unk_100635D00);
  v2 = type metadata accessor for TTRRemindersListViewModel.Item();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10062D400;
  (*(v3 + 16))(v5 + v4, a1, v2);
  LOBYTE(a1) = sub_100241BB8(v5);
  swift_setDeallocating();
  (*(v3 + 8))(v5 + v4, v2);
  swift_deallocClassInstance();
  return a1 & 1;
}

BOOL sub_100218820(uint64_t a1)
{
  sub_100058000(&qword_100772150, &unk_100635D00);
  v2 = type metadata accessor for TTRRemindersListViewModel.Item();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10062D400;
  v6.n128_f64[0] = (*(v3 + 16))(v5 + v4, a1, v2);
  LOWORD(a1) = sub_10024D72C(v5, v6);
  swift_setDeallocating();
  (*(v3 + 8))(v5 + v4, v2);
  swift_deallocClassInstance();
  return (a1 & 0xFF00) != 512;
}

double sub_100218978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v10 - 8);
  v12 = &v21 - v11;
  v13 = *v3;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  (*(v7 + 16))(v9, a1, v6);
  type metadata accessor for MainActor();

  v15 = static MainActor.shared.getter();
  v16 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 2) = v15;
  *(v18 + 3) = &protocol witness table for MainActor;
  *(v18 + 4) = v13;
  (*(v7 + 32))(&v18[v16], v9, v6);
  v19 = &v18[v17];
  *v19 = v22;
  v19[1] = a3;
  sub_10009E31C(0, 0, v12, &unk_100635D18, v18);

  return result;
}

BOOL sub_100218BA8(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  sub_100058000(&qword_100772150, &unk_100635D00);
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 1) = xmmword_10062D400;
  (*(v5 + 16))(&v7[v6], a2, v4);
  v8._rawValue = v7;
  v9 = sub_100242CC8(v3, v8);

  return v9 > 0;
}

uint64_t sub_100218CBC(uint64_t a1, uint64_t a2)
{
  sub_100058000(&qword_100772150, &unk_100635D00);
  v3 = type metadata accessor for TTRRemindersListViewModel.Item();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10062D400;
  (*(v4 + 16))(v6 + v5, a2, v3);
  if (qword_100767028 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003E30(v7, qword_100776068);
  v8 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44("Reminders List set due date", 27, 2, v8);

  TTRRemindersListPresenterCapabilityCore.request(setDueDateWith:for:)();
}

uint64_t sub_100218E4C(char *a1, uint64_t a2)
{
  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003E30(v4, qword_1007741F0);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 1835365481;
  *(inited + 40) = 0xE400000000000000;
  type metadata accessor for TTRRemindersListViewModel.Item();
  sub_10022DFF4(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
  v6 = TTRTreeStorageItem.treeItemDescription.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  v8 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
  sub_10000FD44("Reminders List Show Reminder Details {item: %@}", 47, 2, v8);

  return sub_1001F960C(a1, a2, 0, 0);
}

uint64_t sub_100218FE8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003E30(v8, qword_1007741F0);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 1835365481;
  *(inited + 40) = 0xE400000000000000;
  type metadata accessor for TTRRemindersListViewModel.Item();
  sub_10022DFF4(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
  v10 = TTRTreeStorageItem.treeItemDescription.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v10;
  *(inited + 56) = v11;
  v12 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
  sub_10000FD44("Reminders List Show Reminder Details (Swipe Action) {item: %@}", 62, 2, v12);

  return sub_1001F960C(a1, a2, a3, a4);
}

uint64_t sub_100219290(uint64_t a1)
{
  sub_100058000(&qword_100772150, &unk_100635D00);
  v2 = type metadata accessor for TTRRemindersListViewModel.Item();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10062D400;
  (*(v3 + 16))(v5 + v4, a1, v2);
  v6 = sub_100200688(v5, 0);

  return v6;
}

uint64_t sub_100219420(uint64_t a1)
{
  v3 = *v1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v5 + 208))(a1, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100219598@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(*v1 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter);
  v4 = OBJC_IVAR____TtC9Reminders31TTRReminderListEditingPresenter_state;
  swift_beginAccess();
  a1[3] = type metadata accessor for TTRReminderListEditingPresenter.EditingState(0);
  a1[4] = sub_10022DFF4(&unk_1007755F8, type metadata accessor for TTRReminderListEditingPresenter.EditingState, &unk_1006440F8);
  v5 = sub_1000317B8(a1);
  return sub_100233874(v3 + v4, v5, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
}

BOOL sub_100219660()
{
  v1 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  v2 = v1 - 8;
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*v0 + 144);
  ObjectType = swift_getObjectType();
  (*(v5 + 16))(ObjectType, v5);
  LOBYTE(v2) = v4[*(v2 + 60)];
  sub_10022E05C(v4, type metadata accessor for TTRRemindersListEditingInteractionOptions);
  return (v2 & 1) == 0;
}

uint64_t sub_1002197FC()
{
  v1 = *v0;
  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_1007741F0);
  v3 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44("Reminders List select reminders", 31, 2, v3);

  sub_1004EF1AC(*(v1 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter), v4);
  v5 = *(v1 + 144);
  ObjectType = swift_getObjectType();
  return (*(v5 + 664))(1, ObjectType, v5);
}

uint64_t sub_1002199AC(uint64_t a1)
{
  result = TTRInCellEditingPresenterManagingHelper.activeInCellEditingPresenter.getter();
  if (result)
  {
    swift_getObjectType();
    dispatch thunk of TTRReminderCellPropertyEditingPresenterType.requestEndEditing()();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100219AE0(uint64_t a1)
{
  v2 = *(*v1 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter);
  if (TTRInCellEditingPresenterManagingHelper.activeInCellEditingPresenter.getter())
  {
    swift_getObjectType();
    dispatch thunk of TTRReminderCellPropertyEditingPresenterType.requestEndEditing()();
    swift_unknownObjectRelease();
  }

  return sub_1004EF1A4(v2, v3);
}

uint64_t sub_100219B88()
{
  v1 = *(*v0 + 144);
  ObjectType = swift_getObjectType();
  return (*(v1 + 136))(ObjectType, v1);
}

uint64_t sub_100219BCC()
{
  sub_10000794C(*v0 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_navigationBar, v3, &unk_100775590, &qword_100635200);
  v1 = v3[4];
  sub_100004758(v3);
  return v1;
}

uint64_t sub_100219C50(uint64_t a1)
{
  v3 = *(*v1 + 144);
  ObjectType = swift_getObjectType();
  return (*(v3 + 232))(a1, ObjectType, v3);
}

uint64_t sub_100219CA8()
{
  v1 = *(*v0 + 144);
  ObjectType = swift_getObjectType();
  (*(v1 + 208))(ObjectType, v1);
  swift_getObjectType();
  v3 = dispatch thunk of TTRRemindersListTreeContentsQueryable.remindersWithSubtasks.getter();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_100219D10(uint64_t a1)
{
  v2 = *(*v1 + 144);
  ObjectType = swift_getObjectType();
  (*(v2 + 208))(ObjectType, v2);
  swift_getObjectType();
  v4 = dispatch thunk of TTRRemindersListTreeContentsQueryable.isReminderWithSubtasks(_:)();
  swift_unknownObjectRelease();
  return v4 & 1;
}

uint64_t sub_100219D8C(uint64_t a1)
{
  v2 = *(*v1 + 144);
  ObjectType = swift_getObjectType();
  (*(v2 + 208))(ObjectType, v2);
  swift_getObjectType();
  dispatch thunk of TTRRemindersListTreeContentsQueryable.presentationTree.getter();
  swift_unknownObjectRelease();
  swift_getObjectType();
  dispatch thunk of TTRTreeContentsQueryable.item(withID:)();
  return swift_unknownObjectRelease();
}

uint64_t sub_100219FB8(uint64_t a1)
{
  v3 = *v1;
  v4 = [objc_opt_self() generalPasteboard];
  type metadata accessor for TTRIRemindersListPasteRequest();
  v7 = *(v3 + 136);
  v8 = *(v3 + 72);
  inited = swift_initStackObject();
  *(inited + 16) = v4;
  *(inited + 24) = v7;
  *(inited + 40) = v8;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  LOBYTE(a1) = sub_10031F0B8(a1);
  swift_setDeallocating();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return a1 & 1;
}

double sub_10021A0D0(uint64_t a1)
{
  v3 = *v1;
  v4 = [objc_opt_self() generalPasteboard];
  type metadata accessor for TTRIRemindersListPasteRequest();
  v5 = swift_allocObject();
  v6 = *(v3 + 136);
  v7 = *(v3 + 72);
  *(v5 + 16) = v4;
  *(v5 + 24) = v6;
  *(v5 + 40) = v7;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_10031F238(a1);

  return result;
}

BOOL sub_10021A1B8()
{
  v1 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  v2 = v1 - 8;
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*v0 + 144);
  ObjectType = swift_getObjectType();
  (*(v5 + 16))(ObjectType, v5);
  LOBYTE(v2) = v4[*(v2 + 52)];
  sub_10022E05C(v4, type metadata accessor for TTRRemindersListEditingInteractionOptions);
  return (v2 & 1) == 0;
}

uint64_t sub_10021A284(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(*v2 + 104) + 72);
  ObjectType = swift_getObjectType();
  (*(v8 + 16))(ObjectType, v8);
  v10 = v7[*(v5 + 52)];
  sub_10022E05C(v7, type metadata accessor for TTRRemindersListEditingInteractionOptions);
  if (v10 == 1)
  {
    v11 = type metadata accessor for TTRRemindersListPostponeType();
    (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
    v12 = 0;
  }

  else
  {
    v12 = TTRRemindersListPresenterCapabilityCore.canPostpone(_:)();
  }

  return v12 & 1;
}

BOOL sub_10021A438(uint64_t a1)
{
  v3 = *(*(*v1 + 104) + 72);
  ObjectType = swift_getObjectType();
  sub_100058000(&qword_100772150, &unk_100635D00);
  v5 = type metadata accessor for TTRRemindersListViewModel.Item();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10062D400;
  (*(v6 + 16))(v8 + v7, a1, v5);
  v9 = (*(v3 + 536))(v8, ObjectType, v3);
  v11 = v10;

  if (!v9)
  {
    return 0;
  }

  return v11 > 0;
}

BOOL sub_10021A590(uint64_t a1)
{
  v3 = *(*(*v1 + 104) + 72);
  ObjectType = swift_getObjectType();
  sub_100058000(&qword_100772150, &unk_100635D00);
  v5 = type metadata accessor for TTRRemindersListViewModel.Item();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10062D400;
  (*(v6 + 16))(v8 + v7, a1, v5);
  v9 = (*(v3 + 544))(v8, ObjectType, v3);
  v11 = v10;

  if (!v9)
  {
    return 0;
  }

  return v11 > 0;
}

uint64_t sub_10021A894@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_10000B0D8(v3 + 32, a1);
}

BOOL sub_10021AA70()
{
  v1 = (*(**v0 + 1656))();
  result = 0;
  if (v1)
  {
    v2 = v1;
    v3 = [v1 capabilities];
    v4 = [v3 supportsTemplates];

    if (v4)
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_10021AB0C()
{
  v1 = sub_100058000(&unk_10076DF20, &unk_10063BD50);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  v4 = *(*v0 + 144);
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 96))(ObjectType, v4);
  if (v6)
  {
    swift_getObjectType();
    dispatch thunk of TTRRemindersListDataModelSourceTemplateContextType.sourceListForSavingAsTemplate.getter();
    swift_unknownObjectRelease();
    v7 = type metadata accessor for TTRListOrCustomSmartList();
    (*(*(v7 - 8) + 56))(v3, 0, 1, v7);
  }

  else
  {
    v8 = type metadata accessor for TTRListOrCustomSmartList();
    (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  }

  sub_1000079B4(v3, &unk_10076DF20, &unk_10063BD50);
  return v6 != 0;
}

BOOL sub_10021AD48()
{
  v1 = *(*v0 + 144);
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 128))(ObjectType, v1);
  if (v3)
  {
    swift_unknownObjectRelease();
  }

  return v3 != 0;
}

uint64_t sub_10021ADA4()
{
  v1 = *(*v0 + 144);
  ObjectType = swift_getObjectType();
  result = (*(v1 + 128))(ObjectType, v1);
  if (result)
  {
    swift_getObjectType();
    v4 = dispatch thunk of TTRRemindersListDataModelSourceAutoCategorizationContextType.shouldAutoCategorizeItems.getter();
    swift_unknownObjectRelease();
    return v4 & 1;
  }

  return result;
}

uint64_t sub_10021AE58()
{
  v1 = *(*v0 + 144);
  ObjectType = swift_getObjectType();
  return (*(v1 + 32))(ObjectType, v1) & 1;
}

uint64_t sub_10021AF34()
{
  v1 = type metadata accessor for TTRRemindersListSectionMenuCapabilities();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(*v0 + 104) + 72);
  ObjectType = swift_getObjectType();
  (*(v5 + 192))(ObjectType, v5);
  v7 = TTRRemindersListSectionMenuCapabilities.canSupportAddSection.getter();
  (*(v2 + 8))(v4, v1);
  return v7 & 1;
}

uint64_t sub_10021B0AC(uint64_t a1)
{
  v2 = *(*(*v1 + 104) + 72);
  ObjectType = swift_getObjectType();
  (*(v2 + 208))(ObjectType, v2);
  swift_getObjectType();
  v4 = dispatch thunk of TTRRemindersListTreeContentsQueryable.isItemInSection(_:)();
  swift_unknownObjectRelease();
  return v4 & 1;
}

BOOL sub_10021B150(uint64_t a1)
{
  v1 = sub_10024BAEC(a1);
  if (v1)
  {
  }

  return v1 != 0;
}

uint64_t sub_10021B214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  sub_100058000(&qword_100772150, &unk_100635D00);
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10062D400;
  (*(v7 + 16))(v9 + v8, a1, v6);
  v10 = a4(v9);

  return v10;
}

uint64_t sub_10021B320()
{
  v1 = type metadata accessor for TTRRemindersListLayout();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*v0 + 144);
  ObjectType = swift_getObjectType();
  if ((*(v5 + 112))(ObjectType, v5))
  {
    swift_getObjectType();
    v7 = dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.supportedLayouts.getter();
    (*(v2 + 104))(v4, enum case for TTRRemindersListLayout.columns(_:), v1);
    v8 = sub_1000AA258(v4, v7);
    swift_unknownObjectRelease();

    (*(v2 + 8))(v4, v1);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_10021B490(uint64_t a1)
{
  v2 = *(*v1 + 144);
  ObjectType = swift_getObjectType();
  (*(v2 + 208))(ObjectType, v2);
  swift_getObjectType();
  v4 = dispatch thunk of TTRRemindersListTreeContentsQueryable.accessibilitySectionName(for:)();
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_10021B654(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_100781850, &unk_10063D2D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    v10 = enum case for TTREditingStateOption.InputType.unspecified(_:);
    v11 = type metadata accessor for TTREditingStateOption.InputType();
    v12 = *(v11 - 8);
    (*(v12 + 104))(v6, v10, v11);
    (*(v12 + 56))(v6, 0, 1, v11);
    (*(v8 + 200))(a2, v6, ObjectType, v8);
    swift_unknownObjectRelease();
    return sub_1000079B4(v6, &unk_100781850, &unk_10063D2D0);
  }

  return result;
}

void sub_10021B7C0()
{
  if (sub_1004666BC())
  {
    sub_1004672E0(0);
  }
}

uint64_t sub_10021B7F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 160))(a3, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10021B874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 152))(a3, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_10021B8F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for TTRRemindersListViewModel.Item();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  (*(v6 + 16))(&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5, v8);
  v9 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v3;
  (*(v6 + 32))(v10 + v9, &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  sub_100133054(1, sub_100232134, v10);

  return result;
}

uint64_t sub_10021BA48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    sub_100058000(&qword_100772150, &unk_100635D00);
    v8 = type metadata accessor for TTRRemindersListViewModel.Item();
    v9 = *(v8 - 8);
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_10062D400;
    (*(v9 + 16))(v11 + v10, a3, v8);
    (*(v6 + 216))(v11, ObjectType, v6);
    swift_unknownObjectRelease();
    swift_setDeallocating();
    (*(v9 + 8))(v11 + v10, v8);

    return swift_deallocClassInstance();
  }

  return result;
}

uint64_t sub_10021BBD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[6] = a7;
  v8[7] = v7;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a3;
  v8[3] = a4;
  return _swift_task_switch(sub_10021BC00, 0, 0);
}

uint64_t sub_10021BC00()
{
  v1 = *(v0[7] + 104);
  v2 = v1[21];
  v3 = v1[22];
  sub_10000C36C(v1 + 18, v2);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_10021BCCC;
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];

  return dispatch thunk of TTRAutoCompleteReminderProviderType.search(title:listScope:baseLanguage:)(v9, v7, v8, v5, v6, v2, v3);
}

uint64_t sub_10021BCCC(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_10021BDCC()
{
  v1 = v0;
  v2 = *(v0 + 104);
  TTRDebouncedAction.drain()();
  v3 = OBJC_IVAR____TtC9Reminders35TTRRemindersListPresenterCapability_suggestedSectionCanonicalNameByReminderTitle;
  swift_beginAccess();
  *(v2 + v3) = 0;

  v4 = OBJC_IVAR____TtC9Reminders35TTRRemindersListPresenterCapability_suggestedSectionCanonicalNameByReminderID;
  swift_beginAccess();
  *(v2 + v4) = 0;

  v5 = OBJC_IVAR____TtC9Reminders35TTRRemindersListPresenterCapability_reminderIDsPreviouslyShownWithSuggestedSection;
  swift_beginAccess();
  *(v2 + v5) = &_swiftEmptySetSingleton;

  v6 = *(v2 + 72);
  ObjectType = swift_getObjectType();
  if ((*(v6 + 120))(ObjectType, v6))
  {
    swift_getObjectType();
    dispatch thunk of TTRRemindersListDataModelSourceNewReminderContextType.newlyInsertedReminderIDs.setter();
    swift_unknownObjectRelease();
  }

  v8 = *(v2 + 72);
  v9 = swift_getObjectType();
  v10 = (*(v8 + 104))(v9, v8);
  if (v10)
  {
    v11 = v10;
    swift_beginAccess();
    *(v11 + 40) = &_swiftEmptySetSingleton;
    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *(v1 + 24);
    v14 = swift_getObjectType();
    (*(v13 + 288))(v14, v13);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10021BFAC()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = v0[20];
    ObjectType = swift_getObjectType();
    v8[3] = type metadata accessor for TTRIRemindersCommonPresenter(0);
    v8[4] = &off_10071AA88;
    v8[0] = v0;
    v3 = *(v1 + 8);

    v4 = v3(v8, ObjectType, v1);
    swift_unknownObjectRelease();
    sub_100004758(v8);
  }

  else
  {
    v4 = 0;
  }

  swift_beginAccess();
  v5 = v0[7];
  v6 = v0[8];
  sub_10000AE84((v0 + 4), v5);
  (*(v6 + 24))(v4, v5, v6);
  return swift_endAccess();
}

double sub_10021C0AC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = *(v3 + 144);
  ObjectType = swift_getObjectType();
  (*(v7 + 136))(ObjectType, v7);
  LOBYTE(v7) = TTRModuleState.isReady.getter();

  if ((v7 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v3 + 24);
    v10 = swift_getObjectType();
    (*(v9 + 192))(a1, a2, v10, v9);

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_10021C198()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  ObjectType = swift_getObjectType();
  (*(v2 + 136))(ObjectType, v2);
  TTRModuleState.readyPromise.getter();

  v4 = swift_allocObject();
  *(v4 + 16) = sub_10023A450;
  *(v4 + 24) = v1;

  v5 = zalgo.getter();
  sub_100058000(&qword_100775650, &unk_10063BD60);
  v6 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v6;
}

uint64_t sub_10021C28C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = *(*v1 + 144);
  ObjectType = swift_getObjectType();
  (*(v6 + 152))(ObjectType, v6);
  v8 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v5, 1, v8) == 1)
  {
    sub_1000079B4(v5, &unk_10078A380, &qword_10062DE60);
    v10 = type metadata accessor for TTRListType();
    return (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  }

  else
  {
    TTRRemindersListViewModel.ListInfo.listType.getter();
    return (*(v9 + 8))(v5, v8);
  }
}

double sub_10021C454()
{
  v1 = *v0;
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  v3[2] = v2;
  v3[3] = sub_1002328D8;
  v3[4] = v1;
  swift_retain_n();

  sub_100133054(1, sub_1002328E8, v3);

  return result;
}

uint64_t sub_10021C550(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v35 = a4;
  v37 = a3;
  v38 = a1;
  v36 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v32 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v7;
  v8 = type metadata accessor for TTRRemindersListSubtaskDisplayStyle();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v4 + 144);
  ObjectType = swift_getObjectType();
  if ((*(v12 + 112))(ObjectType, v12))
  {
    swift_getObjectType();
    TTRRemindersListDataModelSourceLayoutContextType.forceListLayoutIfNeeded(forNavigatingTo:persistingPreferencesIfPossible:)();
    swift_unknownObjectRelease();
  }

  if ((*(v12 + 40))(ObjectType, v12))
  {
    v30[1] = v14;
    swift_getObjectType();
    v31 = v8;
    (*(v12 + 184))(ObjectType, v12);
    TTRRemindersListDataModelSourceShowCompletedContextType.setShowCompletedIfNeeded(forRevealing:pathSpecifier:subtaskDisplayStyle:persistingPreferencesIfPossible:)();
    swift_unknownObjectRelease();
    (*(v9 + 8))(v11, v31);
  }

  (*(v12 + 136))(ObjectType, v12);
  TTRModuleState.readyPromise.getter();

  v15 = swift_allocObject();
  *(v15 + 16) = sub_10023A450;
  *(v15 + 24) = v4;

  v16 = zalgo.getter();
  sub_100058000(&qword_100775650, &unk_10063BD60);
  v31 = dispatch thunk of Promise.then<A>(on:closure:)();

  v17 = v34;
  v18 = v32;
  v19 = v36;
  (*(v34 + 16))(v32, a2, v36);
  v20 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v21 = (v33 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = v35;
  (*(v17 + 32))(v23 + v20, v18, v19);
  *(v23 + v21) = v5;
  v24 = v37;
  v25 = v38;
  *(v23 + v22) = v38;
  *(v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8)) = v24;

  v26 = v25;
  v27 = zalgo.getter();
  v28 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v28;
}

uint64_t sub_10021C96C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a2;
  v23 = a1;
  v6 = type metadata accessor for REMNavigationSpecifier.SectionPathSpecifier();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v4 + 144);
  ObjectType = swift_getObjectType();
  (*(v10 + 136))(ObjectType, v10);
  TTRModuleState.readyPromise.getter();

  v12 = swift_allocObject();
  *(v12 + 16) = sub_10023A450;
  *(v12 + 24) = v4;

  v13 = zalgo.getter();
  sub_100058000(&qword_100775650, &unk_10063BD60);
  dispatch thunk of Promise.then<A>(on:closure:)();

  (*(v7 + 16))(v9, v22, v6);
  v14 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v15 = (v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  (*(v7 + 32))(v16 + v14, v9, v6);
  *(v16 + v15) = v4;
  v17 = v23;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = v23;

  v18 = v17;
  v19 = zalgo.getter();
  v20 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v20;
}

uint64_t sub_10021CBF8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a2;
  v23 = a1;
  v6 = type metadata accessor for REMNavigationSpecifier.SectionPathSpecifier();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v4 + 144);
  ObjectType = swift_getObjectType();
  (*(v10 + 136))(ObjectType, v10);
  TTRModuleState.readyPromise.getter();

  v12 = swift_allocObject();
  *(v12 + 16) = sub_10023A450;
  *(v12 + 24) = v4;

  v13 = zalgo.getter();
  sub_100058000(&qword_100775650, &unk_10063BD60);
  dispatch thunk of Promise.then<A>(on:closure:)();

  (*(v7 + 16))(v9, v22, v6);
  v14 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v15 = (v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  (*(v7 + 32))(v16 + v14, v9, v6);
  *(v16 + v15) = v4;
  v17 = v23;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = v23;

  v18 = v17;
  v19 = zalgo.getter();
  v20 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v20;
}

uint64_t sub_10021CE84(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a2;
  v23 = a1;
  v6 = type metadata accessor for REMNavigationSpecifier.SectionPathSpecifier();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v4 + 144);
  ObjectType = swift_getObjectType();
  (*(v10 + 136))(ObjectType, v10);
  TTRModuleState.readyPromise.getter();

  v12 = swift_allocObject();
  *(v12 + 16) = sub_10023A450;
  *(v12 + 24) = v4;

  v13 = zalgo.getter();
  sub_100058000(&qword_100775650, &unk_10063BD60);
  dispatch thunk of Promise.then<A>(on:closure:)();

  (*(v7 + 16))(v9, v22, v6);
  v14 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v15 = (v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  (*(v7 + 32))(v16 + v14, v9, v6);
  *(v16 + v15) = v4;
  v17 = v23;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = v23;

  v18 = v17;
  v19 = zalgo.getter();
  v20 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v20;
}

uint64_t sub_10021D110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  v5 = type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = *(v3 + 144);
  ObjectType = swift_getObjectType();
  (*(v8 + 136))(ObjectType, v8);
  TTRModuleState.readyPromise.getter();

  v10 = swift_allocObject();
  *(v10 + 16) = sub_100232310;
  *(v10 + 24) = v3;

  v11 = zalgo.getter();
  sub_100058000(&qword_100775650, &unk_10063BD60);
  dispatch thunk of Promise.then<A>(on:closure:)();

  (*(v6 + 16))(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v12 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v18;
  (*(v6 + 32))(v13 + v12, &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  *(v13 + ((v7 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v3;

  v14 = zalgo.getter();
  v15 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v15;
}

uint64_t sub_10021D368(uint64_t a1)
{
  type metadata accessor for TTRRemindersListViewModel.Item();
  firstly<A>(closure:)();

  v1 = zalgo.getter();
  v2 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v2;
}

uint64_t sub_10021D420()
{
  v1 = *v0;
  result = sub_1001324F4();
  if (!result)
  {
    v3 = *(v1 + 144);
    ObjectType = swift_getObjectType();
    return (*(v3 + 568))(ObjectType, v3);
  }

  return result;
}

uint64_t sub_10021D470(char a1)
{
  v3 = *(*v1 + 144);
  ObjectType = swift_getObjectType();
  result = (*(v3 + 80))(ObjectType, v3);
  if (result)
  {
    sub_100171980(a1 & 1);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10021D540(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 144);
  ObjectType = swift_getObjectType();
  (*(v6 + 136))(ObjectType, v6);
  TTRModuleState.readyPromise.getter();

  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = a1;
  v8[4] = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1002322A4;
  *(v9 + 24) = v8;

  v10 = zalgo.getter();
  sub_100058000(&qword_10076B288, &unk_100635D40);
  dispatch thunk of Promise.then<A>(on:closure:)();
}

uint64_t sub_10021D680(void *a1)
{
  v9 = *v1;
  type metadata accessor for TTRRemindersListViewModel.Item();
  firstly<A>(closure:)();
  v3 = swift_allocObject();
  *(v3 + 16) = v9;
  *(v3 + 24) = a1;

  v4 = a1;
  v5 = zalgo.getter();
  dispatch thunk of Promise.then<A>(on:closure:)();

  v6 = zalgo.getter();
  v7 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v7;
}

void sub_10021D7A0()
{
  v1 = *v0;
  if (*(v1 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_needsRefreshItemsWhenSceneEntersForeground) == 1)
  {
    *(v1 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_needsRefreshItemsWhenSceneEntersForeground) = 0;
    sub_1001F8E54(0xD00000000000001BLL, 0x8000000100677DC0);
  }

  TTRDebouncedAction.drain()();
}

uint64_t sub_10021D874@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v3 - 8);
  v5 = &v26[-1] - v4;
  v6 = sub_100058000(&unk_100775640, &unk_10062DED0);
  __chkstk_darwin(v6 - 8);
  v8 = &v26[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v26[-1] - v10;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v25 = a1;
    v12 = *(v1 + 160);
    ObjectType = swift_getObjectType();
    v26[3] = type metadata accessor for TTRIRemindersCommonPresenter(0);
    v26[4] = &off_10071AA88;
    v26[0] = v1;
    v14 = *(v12 + 8);

    v14(v26, ObjectType, v12);
    swift_unknownObjectRelease();
    sub_100004758(v26);
    v15 = *(v1 + 144);
    v16 = swift_getObjectType();
    (*(v15 + 152))(v16, v15);
    v17 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v5, 1, v17) == 1)
    {
      sub_1000079B4(v5, &unk_10078A380, &qword_10062DE60);
      v19 = type metadata accessor for TTRListType();
      (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
    }

    else
    {
      TTRRemindersListViewModel.ListInfo.listType.getter();
      (*(v18 + 8))(v5, v17);
    }

    v23 = v25;
    sub_10000794C(v11, v8, &unk_100775640, &unk_10062DED0);
    TTRRemindersListUndoContext.init(undoManager:listType:)();
    sub_1000079B4(v11, &unk_100775640, &unk_10062DED0);
    v24 = type metadata accessor for TTRRemindersListUndoContext();
    return (*(*(v24 - 8) + 56))(v23, 0, 1, v24);
  }

  else
  {
    v20 = type metadata accessor for TTRRemindersListUndoContext();
    v21 = *(*(v20 - 8) + 56);

    return v21(a1, 1, 1, v20);
  }
}

uint64_t sub_10021DBF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 144);
  ObjectType = swift_getObjectType();
  result = (*(v5 + 120))(ObjectType, v5);
  if (result)
  {
    swift_getObjectType();

    v8 = dispatch thunk of TTRRemindersListDataModelSourceNewReminderContextType.newlyInsertedReminderIDs.modify();
    sub_10057D710(a3);
    v8(&v9, 0);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10021DCB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v37 = a2;
  v38 = a4;
  v10 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v10 - 8);
  v12 = v36 - v11;
  v13 = type metadata accessor for TTRRemindersListViewModel.Item();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000794C(a1, v12, &qword_100772140, &qword_10062D9F0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_1000079B4(v12, &qword_100772140, &qword_10062D9F0);
  }

  (*(v14 + 32))(v16, v12, v13);
  v18 = *(v6 + 144);
  ObjectType = swift_getObjectType();
  (*(v18 + 208))(ObjectType, v18);
  swift_getObjectType();
  v20 = dispatch thunk of TTRRemindersListTreeContentsQueryable.accessibilitySectionName(for:)();
  v22 = v21;
  swift_unknownObjectRelease();
  if (v22)
  {
    v23 = static TTRAccesibility.RemindersList.AutoCategorization.ProbableUserCategorizationError.getter();
    v36[0] = v24;
    v36[1] = v23;
    sub_100058000(&unk_100786CB0, &qword_100636EF0);
    v25 = v6;
    v26 = v20;
    v27 = a5;
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_10062F800;
    *(v28 + 56) = &type metadata for String;
    v29 = sub_10005C390();
    v30 = v38;
    *(v28 + 32) = v37;
    *(v28 + 40) = a3;
    *(v28 + 96) = &type metadata for String;
    *(v28 + 104) = v29;
    *(v28 + 64) = v29;
    *(v28 + 72) = v26;
    *(v28 + 80) = v22;
    *(v28 + 136) = &type metadata for String;
    *(v28 + 144) = v29;
    *(v28 + 112) = v30;
    *(v28 + 120) = v27;

    v31 = static String.localizedStringWithFormat(_:_:)();
    v33 = v32;

    if (swift_unknownObjectWeakLoadStrong())
    {
      v34 = *(v25 + 24);
      v35 = swift_getObjectType();
      (*(v34 + 296))(v31, v33, v35, v34);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return (*(v14 + 8))(v16, v13);
}

void sub_10021DFDC()
{
  if (sub_1004666BC())
  {
    sub_1004672E0(1);
  }
}

uint64_t sub_10021E03C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for TTRITipKitSignal();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_unknownObjectRetain();

    sub_100133054(1, 0, 0);
    swift_unknownObjectRelease();
    v10 = *(v2 + 24);
    if (v10)
    {
      v11 = *(v2 + 32);

      v10(1);
      sub_1000301AC(v10, v11);
    }

    v12 = static TTRLocalizableStrings.UndoAction.changeReminder.getter();
    v14 = v13;
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_100207460(v12, v14, a1, a2);

      (*(v6 + 104))(v8, enum case for TTRITipKitSignal.editedReminder(_:), v5);
      v15.value._countAndFlagsBits = static TTRITipKitSignalContext.ReminderDetail.AnyField.getter();
      TTRITipKitSignal.donate(signalContext:)(v15);

      return (*(v6 + 8))(v8, v5);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10021E208()
{
  swift_weakDestroy();
  sub_1000301AC(*(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

void *sub_10021E278(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v47 = type metadata accessor for TTRRecurrenceRuleModel();
  v48 = *(v47 - 8);
  __chkstk_darwin(v47 - 8);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_10076C6B8, &unk_100630540);
  __chkstk_darwin(v8 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v44 - v12;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = *(Strong + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter);
    if (TTRInCellEditingPresenterManagingHelper.activeInCellEditingPresenter.getter())
    {
      swift_getObjectType();
      dispatch thunk of TTRReminderCellPropertyEditingPresenterType.requestEndEditing()();
      swift_unknownObjectRelease();
    }

    sub_1004EF1A4(v15, v16);
  }

  if (swift_weakLoadStrong())
  {
    swift_unknownObjectRetain();

    sub_100133054(1, 0, 0);
    swift_unknownObjectRelease();
  }

  v17 = *(v2 + 40);
  if (v17)
  {
    v17(1);
  }

  if (swift_weakLoadStrong())
  {

    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      v19 = v18;
      v20 = [v18 dueDateComponents];

      if (v20)
      {
        static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

        v21 = type metadata accessor for DateComponents();
        (*(*(v21 - 8) + 56))(v10, 0, 1, v21);
      }

      else
      {
        v23 = type metadata accessor for DateComponents();
        (*(*(v23 - 8) + 56))(v10, 1, 1, v23);
      }

      sub_100016588(v10, v13, &qword_10076C6B8, &unk_100630540);
    }

    else
    {
      v22 = type metadata accessor for DateComponents();
      (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
    }

    sub_100251524(v13, *(v2 + 32));

    sub_1000079B4(v13, &qword_10076C6B8, &unk_100630540);
  }

  v24 = swift_unknownObjectWeakLoadStrong();
  if (!v24 || (v25 = v24, v26 = [v24 recurrenceRules], v25, !v26))
  {
    if (swift_weakLoadStrong())
    {

      v36._rawValue = *(v3 + 32);
      v37._rawValue = _swiftEmptyArrayStorage;
      sub_100251738(v37, v36);
    }

    goto LABEL_37;
  }

  sub_100003540(0, &unk_100775670, REMRecurrenceRule_ptr);
  v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v27 >> 62)
  {
    v28 = _CocoaArrayWrapper.endIndex.getter();
    v46 = v3;
    if (v28)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v46 = v3;
    if (v28)
    {
LABEL_21:
      v44 = a1;
      v45 = a2;
      v49 = _swiftEmptyArrayStorage;
      result = sub_1004A242C(0, v28 & ~(v28 >> 63), 0);
      if (v28 < 0)
      {
        __break(1u);
        return result;
      }

      v30 = 0;
      v31 = v49;
      v32 = v47;
      do
      {
        if ((v27 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v33 = *(v27 + 8 * v30 + 32);
        }

        TTRRecurrenceRuleModel.init(sourceRule:)();
        v49 = v31;
        v35 = v31[2];
        v34 = v31[3];
        if (v35 >= v34 >> 1)
        {
          sub_1004A242C((v34 > 1), v35 + 1, 1);
          v32 = v47;
          v31 = v49;
        }

        ++v30;
        v31[2] = v35 + 1;
        (*(v48 + 32))(v31 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v35, v7, v32);
      }

      while (v28 != v30);

      a1 = v44;
      a2 = v45;
      goto LABEL_34;
    }
  }

  v31 = _swiftEmptyArrayStorage;
LABEL_34:
  v38 = v46;
  if (swift_weakLoadStrong())
  {

    v39._rawValue = *(v38 + 32);
    v40._rawValue = v31;
    sub_100251738(v40, v39);
  }

LABEL_37:
  v41 = static TTRLocalizableStrings.UndoAction.batchChangeDueDate.getter();
  v43 = v42;
  if (swift_weakLoadStrong())
  {
    sub_100207460(v41, v43, a1, a2);
  }
}

uint64_t sub_10021E814()
{
  swift_weakDestroy();
  swift_unknownObjectWeakDestroy();

  sub_1000301AC(*(v0 + 40), *(v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t sub_10021E894(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for TTRAssigneeCandidate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v60 = &v47 - v11;
  v12 = type metadata accessor for TTRParticipantModel();
  v58 = *(v12 - 8);
  v59 = v12;
  __chkstk_darwin(v12);
  v56 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v57 = &v47 - v15;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = *(Strong + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter);
    if (TTRInCellEditingPresenterManagingHelper.activeInCellEditingPresenter.getter())
    {
      swift_getObjectType();
      dispatch thunk of TTRReminderCellPropertyEditingPresenterType.requestEndEditing()();
      swift_unknownObjectRelease();
    }

    sub_1004EF1A4(v17, v18);
  }

  if (swift_weakLoadStrong())
  {
    swift_unknownObjectRetain();

    sub_100133054(1, 0, 0);
    swift_unknownObjectRelease();
  }

  v19 = swift_unknownObjectWeakLoadStrong();
  if (!v19)
  {
    v66 = 0;
    v64 = 0u;
    v65 = 0u;
    goto LABEL_29;
  }

  v20 = v19;
  REMReminderChangeItem.ttrAssignmentContext.getter();

  if (!*(&v65 + 1))
  {
LABEL_29:
    sub_1000079B4(&v64, &qword_100769988, &qword_10062E3A8);
    goto LABEL_36;
  }

  sub_100005FD0(&v64, v67);
  sub_10000C36C(v67, v67[3]);
  v21 = dispatch thunk of TTRReminderAssignmentContextProtocol.currentAssignment.getter();
  if (!v21)
  {
    goto LABEL_35;
  }

  v22 = v21;
  v23 = [v21 assigneeID];

  if (!v23)
  {
    goto LABEL_35;
  }

  v24 = swift_unknownObjectWeakLoadStrong();
  if (!v24)
  {

    v63 = 0;
    v61 = 0u;
    v62 = 0u;
LABEL_34:
    sub_1000079B4(&v61, &unk_100775680, &qword_10062E3B0);
    goto LABEL_35;
  }

  v25 = v24;
  REMReminderChangeItem.ttrList.getter();

  if (!*(&v62 + 1))
  {

    goto LABEL_34;
  }

  v55 = v23;
  sub_100005FD0(&v61, &v64);
  sub_10000C36C(&v64, *(&v65 + 1));
  v26 = dispatch thunk of TTRListProtocol.shareeForCurrentUser.getter();
  if (!v26 || (v27 = v26, v28 = [v26 objectID], v27, !v28))
  {

LABEL_32:
    sub_100004758(&v64);
LABEL_35:
    sub_100004758(v67);
    goto LABEL_36;
  }

  v49 = v28;
  sub_10000C36C(&v64, *(&v65 + 1));
  dispatch thunk of TTRListProtocol.ttrShareeContext.getter();
  if (!*(&v62 + 1))
  {

    sub_1000079B4(&v61, &qword_100769990, &qword_10062E3B8);
    goto LABEL_32;
  }

  sub_10000C36C(&v61, *(&v62 + 1));
  v29 = dispatch thunk of TTRListShareeContextProtocol.sharees.getter();
  sub_100004758(&v61);
  v48 = v6;
  if (!(v29 >> 62))
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
      goto LABEL_18;
    }

    goto LABEL_49;
  }

LABEL_48:
  v30 = _CocoaArrayWrapper.endIndex.getter();
  if (!v30)
  {
LABEL_49:

    sub_100004758(&v64);
    sub_100004758(v67);
    v6 = v48;
LABEL_36:
    if (swift_weakLoadStrong())
    {

      (*(v7 + 104))(v9, enum case for TTRAssigneeCandidate.noOne(_:), v6);
      sub_10024F250(v9, *(v3 + 32));

      (*(v7 + 8))(v9, v6);
    }

    goto LABEL_38;
  }

LABEL_18:
  v31 = 0;
  v54 = v29 & 0xC000000000000001;
  v53 = v29 & 0xFFFFFFFFFFFFFF8;
  v52 = a2;
  v51 = a1;
  v50 = v29;
  while (1)
  {
    if (v54)
    {
      v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v31 >= *(v53 + 16))
      {
        goto LABEL_47;
      }

      v32 = *(v29 + 8 * v31 + 32);
    }

    v29 = v32;
    a1 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    sub_100003540(0, &qword_100775690, NSObject_ptr);
    v33 = [v29 objectID];
    v34 = static NSObject.== infix(_:_:)();

    if (v34)
    {
      break;
    }

    ++v31;
    v35 = a1 == v30;
    a2 = v52;
    a1 = v51;
    v29 = v50;
    if (v35)
    {
      goto LABEL_49;
    }
  }

  v40 = v29;
  v41 = v57;
  TTRParticipantModel.init(sharee:)();
  (*(v58 + 16))(v56, v41, v59);
  v42 = v55;
  v43 = v49;
  static NSObject.== infix(_:_:)();
  v44 = v60;
  TTRAssigneeCandidateData.init(id:contact:contactInfo:isMe:avatarImage:)();
  v45 = v48;
  (*(v7 + 104))(v44, enum case for TTRAssigneeCandidate.participant(_:), v48);
  v46 = swift_weakLoadStrong();
  a2 = v52;
  a1 = v51;
  if (v46)
  {

    sub_10024F250(v60, *(v3 + 32));

    v44 = v60;
  }

  else
  {
  }

  (*(v7 + 8))(v44, v45);
  (*(v58 + 8))(v57, v59);
  sub_100004758(&v64);
  sub_100004758(v67);
LABEL_38:
  v36 = static TTRLocalizableStrings.UndoAction.batchChangeAssignment.getter();
  v38 = v37;
  if (swift_weakLoadStrong())
  {
    sub_100207460(v36, v38, a1, a2);
  }
}

uint64_t sub_10021F03C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TTRRemindersListLayout();
  v11 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + 144);
    ObjectType = swift_getObjectType();
    if ((*(v6 + 112))(ObjectType, v6))
    {
      swift_getObjectType();
      dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
      swift_unknownObjectRelease();

      (*(v11 + 32))(a1, v4, v2);
    }

    else
    {

      (*(v11 + 104))(a1, enum case for TTRRemindersListLayout.list(_:), v2);
    }

    return (*(v11 + 56))(a1, 0, 1, v2);
  }

  else
  {
    v8 = *(v11 + 56);

    return v8(a1, 1, 1, v2);
  }
}

uint64_t sub_10021F20C()
{
  swift_weakDestroy();
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

void sub_10021F284(uint64_t a1)
{
  v2 = v1;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter);
    if (TTRInCellEditingPresenterManagingHelper.activeInCellEditingPresenter.getter())
    {
      swift_getObjectType();
      dispatch thunk of TTRReminderCellPropertyEditingPresenterType.requestEndEditing()();
      swift_unknownObjectRelease();
    }

    sub_1004EF1A4(v5, v6);
  }

  static TTRLocalizableStrings.UndoAction.batchChangeTags.getter();
  v7 = objc_opt_self();
  v8 = String._bridgeToObjectiveC()();

  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  *(v9 + 24) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_100232F40;
  *(v10 + 24) = v9;
  v13[4] = sub_100068444;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100026440;
  v13[3] = &unk_10071B5F8;
  v11 = _Block_copy(v13);

  [v7 withActionName:v8 block:v11];

  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void sub_10021F480(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  if (*(a1 + 32) == 1)
  {
    if (swift_weakLoadStrong())
    {

      sub_10024343C(v2, *(v3 + 24));
    }
  }

  else
  {
    v4 = a2 + 56;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;

    v9 = 0;
    v21 = v3;
    v22 = v2;
    while (v7)
    {
LABEL_14:
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = (*(v2 + 48) + ((v9 << 10) | (16 * v11)));
      v13 = *v12;
      v14 = v12[1];
      if (swift_weakLoadStrong())
      {

        v15 = *(v3 + 24);
        if (qword_100767028 != -1)
        {
          swift_once();
        }

        v16 = type metadata accessor for Logger();
        sub_100003E30(v16, qword_100776068);
        sub_100058000(&unk_100775610, &unk_1006323A0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10062D3F0;
        *(inited + 32) = 0x67617468736168;
        *(inited + 40) = 0xE700000000000000;
        *(inited + 48) = v13;
        *(inited + 56) = v14;
        *(inited + 72) = &type metadata for String;
        *(inited + 80) = 0x736D657469;
        *(inited + 88) = 0xE500000000000000;
        *(inited + 120) = sub_100058000(&qword_10076E0B0, &unk_100631BD0);
        *(inited + 96) = v15;

        v23._rawValue = v15;
        v18 = v13;
        v19 = sub_100008E04(inited);
        swift_setDeallocating();
        sub_100058000(&unk_10076BA70, &qword_10062FD60);
        swift_arrayDestroy();
        sub_10000FD44("Reminders List add  {hashtag: %@, items: %@}", 44, 2, v19);

        v20._countAndFlagsBits = v18;
        v20._object = v14;
        TTRRemindersListPresenterCapabilityCore.request(addStructuredHashtag:for:)(v20, v23);

        v3 = v21;
        v2 = v22;
      }
    }

    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v8)
      {

        return;
      }

      v7 = *(v4 + 8 * v10);
      ++v9;
      if (v7)
      {
        v9 = v10;
        goto LABEL_14;
      }
    }

    __break(1u);
  }
}

void sub_10021F7C0(uint64_t a1)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter);
    if (TTRInCellEditingPresenterManagingHelper.activeInCellEditingPresenter.getter())
    {
      swift_getObjectType();
      dispatch thunk of TTRReminderCellPropertyEditingPresenterType.requestEndEditing()();
      swift_unknownObjectRelease();
    }

    sub_1004EF1A4(v4, v5);
    static TTRLocalizableStrings.UndoAction.hashtagsChange.getter();
    swift_getObjectType();
    sub_100058000(&qword_10076B780, &qword_10062D7C0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_10062D420;
    v7 = *(v1 + 24);
    *(v6 + 32) = v7;
    swift_unknownObjectRetain();
    v8 = v7;
    dispatch thunk of TTRRemindersListInteractorType.attributeEditor(for:)();
    swift_unknownObjectRelease();

    v9 = objc_opt_self();
    v10 = String._bridgeToObjectiveC()();

    sub_10000B0D8(v16, v15);
    v11 = swift_allocObject();
    sub_100005FD0(v15, v11 + 16);
    *(v11 + 56) = a1;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_100232F48;
    *(v12 + 24) = v11;
    v14[4] = sub_100068444;
    v14[5] = v12;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1107296256;
    v14[2] = sub_100026440;
    v14[3] = &unk_10071B670;
    v13 = _Block_copy(v14);

    [v9 withActionName:v10 block:v13];

    _Block_release(v13);
    LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

    if (v10)
    {
      __break(1u);
    }

    else
    {
      swift_getObjectType();
      dispatch thunk of TTRRemindersListInteractorType.save(_:completion:)();
      sub_100004758(v16);
    }
  }
}

uint64_t sub_10021FAA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRITipKitSignal();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_unknownObjectRetain();

    v9 = swift_allocObject();
    swift_weakInit();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = a1;
    v10[4] = a2;

    swift_unknownObjectRetain();
    sub_100133054(1, sub_100232F94, v10);
    swift_unknownObjectRelease();

    (*(v5 + 104))(v7, enum case for TTRITipKitSignal.editedReminder(_:), v4);
    v11.value._countAndFlagsBits = static TTRITipKitSignalContext.ReminderDetail.AnyField.getter();
    TTRITipKitSignal.donate(signalContext:)(v11);

    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10021FC74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = [*(Strong + 24) objectID];
    if (swift_weakLoadStrong())
    {
      v7 = swift_allocObject();
      v7[2] = a2;
      v7[3] = a3;
      v7[4] = v6;
      swift_unknownObjectRetain();
      v8 = v6;
      sub_100213A1C(sub_100232FA0, v7);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10021FD74(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  type metadata accessor for TTRReminderEditor();
  swift_getObjectType();
  v5 = dispatch thunk of TTRIReminderDetailModuleInterface.undoManager.getter();
  v6 = TTRReminderEditor.changeItem.getter();
  sub_10022DFF4(&unk_1007756A0, &type metadata accessor for TTRReminderEditor, &protocol conformance descriptor for TTRReminderEditor);
  v7 = a4;
  static TTRUndoableEditing.reapplyActions(in:overridingTargetWith:sourceChangeItemID:)();
}

uint64_t sub_10021FE50@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TTRRemindersListLayout();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = *(result + 144);
    ObjectType = swift_getObjectType();
    if ((*(v7 + 112))(ObjectType, v7))
    {
      swift_getObjectType();
      dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
      swift_unknownObjectRelease();

      (*(v3 + 32))(a1, v5, v2);
    }

    else
    {

      (*(v3 + 104))(a1, enum case for TTRRemindersListLayout.list(_:), v2);
    }

    return (*(v3 + 56))(a1, 0, 1, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_100220030(uint64_t a1)
{
  if (swift_weakLoadStrong())
  {
    v3 = swift_allocObject();
    *(v3 + 16) = a1;

    sub_100213A1C(sub_10023310C, v3);
  }

  return result;
}

double sub_1002200D4()
{
  v1 = sub_100058000(&unk_100781850, &unk_10063D2D0);
  __chkstk_darwin(v1 - 8);
  v23 = &v21 - v2;
  v24 = type metadata accessor for TTRRemindersListViewModel.Item();
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v21 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRRemindersListEditingSessionFinishingOption();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v0;
  swift_getObjectType();
  v26 = _swiftEmptyArrayStorage;
  sub_10022DFF4(&qword_10076C6D0, &type metadata accessor for TTRRemindersListEditingSessionFinishingOption, &protocol conformance descriptor for TTRRemindersListEditingSessionFinishingOption);
  sub_100058000(&unk_1007756D0, &qword_100630568);
  sub_10000E188(&qword_10076C6D8, &unk_1007756D0, &qword_100630568, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of TTRRemindersListEditingSession.finish(options:)();
  (*(v5 + 8))(v7, v4);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = (Strong + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_currentAttachImportingContext);
    v12 = *(Strong + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_currentAttachImportingContext);
    v13 = v11[1];
    v11[1] = 0;
    v11[2] = 0;
    *v11 = 0;
    sub_100053470(v12, v13);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(v10 + 24);
      ObjectType = swift_getObjectType();
      v16 = v21;
      dispatch thunk of TTRRemindersListEditingSession.item.getter();
      v17 = enum case for TTREditingStateOption.InputType.unspecified(_:);
      v18 = type metadata accessor for TTREditingStateOption.InputType();
      v19 = *(v18 - 8);
      v20 = v23;
      (*(v19 + 104))(v23, v17, v18);
      (*(v19 + 56))(v20, 0, 1, v18);
      (*(v14 + 200))(v16, v20, ObjectType, v14);

      swift_unknownObjectRelease();
      sub_1000079B4(v20, &unk_100781850, &unk_10063D2D0);
      (*(v22 + 8))(v16, v24);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1002204B0(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  dispatch thunk of TTRRemindersListEditingSession.attributeEditor.getter();
  sub_10000C36C(v3, v3[3]);
  dispatch thunk of TTRRemindersListAttributeEditing.addAttachments(_:)();
  return sub_100004758(v3);
}

uint64_t sub_100220540(void (*a1)(void), uint64_t a2)
{
  swift_weakDestroy();
  a1(*(v2 + 24));

  return swift_deallocClassInstance();
}

double sub_1002205F0()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = (Strong + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_currentAttachImportingContext);
    v4 = *(Strong + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_currentAttachImportingContext);
    v3 = *(Strong + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_currentAttachImportingContext + 8);
    v2[1] = 0;
    v2[2] = 0;
    *v2 = 0;
    sub_100053470(v4, v3);
  }

  return result;
}

double sub_100220660(uint64_t a1, uint64_t a2)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = (Strong + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_currentAttachImportingContext);
    v6 = *(Strong + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_currentAttachImportingContext);
    v7 = v5[1];
    v5[1] = 0;
    v5[2] = 0;
    *v5 = 0;
    sub_100053470(v6, v7);
    v8 = swift_allocObject();
    *(v8 + 16) = a2;

    sub_100213A1C(sub_1002334A0, v8);
  }

  return result;
}

double sub_100220724(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TTRUndoNavigationEditingTarget();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    swift_getObjectType();
    v10 = dispatch thunk of TTRIReminderLocationPickerModuleInterface.undoManager.getter();
    if (v10)
    {
      v11 = v10;
      v12 = (v9 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_currentLocationPickerModuleDelegate);
      *v12 = 0;
      v12[1] = 0;
      swift_unknownObjectRelease();
      swift_getObjectType();
      sub_100058000(&qword_10076B780, &qword_10062D7C0);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_10062D420;
      v14 = *(v2 + 24);
      *(v13 + 32) = v14;
      v15 = v14;
      TTRUndoNavigationEditingTarget.init(reminderIDs:)();
      dispatch thunk of TTRRemindersListInteractorType.registerUndo(forEditing:byDraining:)();

      (*(v4 + 8))(v6, v3);
    }

    else
    {
    }
  }

  return result;
}

double sub_100220914(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100003540(0, &qword_1007756E0, REMReminderChangeItem_ptr);
    v3 = TTRReminderProtocol.mostRelevantAlarmLocationTrigger()();
    if (v3)
    {
      v4 = v3;
      TTRReminderEditor.edit(locationTrigger:)();
    }

    else
    {
      v5 = TTRReminderProtocol.mostRelevantVehicleTrigger()();
      if (!v5)
      {
LABEL_7:

        return result;
      }

      v4 = v5;
      TTRReminderEditor.edit(vehicleTrigger:)();
    }

    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100220A08()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_100220A78@<X0>(uint64_t *a1@<X8>)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v3 + 80))(v7, ObjectType, v3);
    swift_unknownObjectRelease();
    return sub_100005FD0(v7, a1);
  }

  else
  {
    v6 = type metadata accessor for TTRDerivedUntouchedPresentationTreeMaker();
    result = swift_allocObject();
    a1[3] = v6;
    a1[4] = &off_10072C4E8;
    *a1 = result;
  }

  return result;
}

void sub_100220B18(void *a1)
{
  v98 = a1;
  v2 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v2 - 8);
  v86 = &v82 - v3;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  v87 = v4;
  v88 = v5;
  __chkstk_darwin(v4);
  v96 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v82 = &v82 - v8;
  v9 = sub_100058000(&qword_10076E0D0, &unk_100635D70);
  __chkstk_darwin(v9 - 8);
  v90 = &v82 - v10;
  v11 = sub_100058000(&unk_10076BB50, &unk_10062DEA0);
  __chkstk_darwin(v11 - 8);
  v89 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v93 = &v82 - v14;
  v15 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v94 = *(v15 - 8);
  v95 = v15;
  __chkstk_darwin(v15);
  v91 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v92 = &v82 - v18;
  v19 = type metadata accessor for OSSignpostID();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v1[17];
  v23 = v1[18];
  ObjectType = swift_getObjectType();
  v26 = *(v23 + 136);
  v26(ObjectType, v23);
  LODWORD(v97) = TTRModuleState.modelLoaded.getter();

  v84 = v24;
  v83 = ObjectType;
  v27 = ObjectType;
  v28 = v96;
  v85 = v23;
  v26(v27, v23);
  TTRModuleState.modelDidReceive()();

  static os_signpost_type_t.begin.getter();
  v29 = objc_opt_self();
  v30 = [v29 ppt];
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  v31 = v1;
  v32 = *(v20 + 8);
  v32(v22, v19);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v33 = v1[3];
    v34 = swift_getObjectType();
    v35 = *(v33 + 120);
    v36 = v33;
    v31 = v1;
    v35(v98, v34, v36);
    swift_unknownObjectRelease();
  }

  static os_signpost_type_t.end.getter();
  v37 = [v29 ppt];
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  v38.n128_f64[0] = v32(v22, v19);
  sub_10022164C(v38);
  if ((v97 & 1) == 0)
  {
    v39 = OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_firstVisibleItemIDToRestore;
    swift_beginAccess();
    v40 = v93;
    sub_10000794C(v31 + v39, v93, &unk_10076BB50, &unk_10062DEA0);
    v42 = v94;
    v41 = v95;
    if ((*(v94 + 48))(v40, 1, v95) == 1)
    {
      sub_1000079B4(v40, &unk_10076BB50, &unk_10062DEA0);
      return;
    }

    v43 = v31;
    v44 = v92;
    (*(v42 + 32))(v92, v40, v41);
    v45 = v89;
    (*(v42 + 56))(v89, 1, 1, v41);
    swift_beginAccess();
    v97 = v43;
    sub_10000D184(v45, v43 + v39, &unk_10076BB50, &unk_10062DEA0);
    swift_endAccess();
    v46 = v90;
    TTRRemindersListTreeViewModelUpdateContext.itemToStartEditing.getter();
    v47 = sub_100058000(&unk_1007756F0, &unk_100631C00);
    v48 = (*(*(v47 - 8) + 48))(v46, 1, v47);
    sub_1000079B4(v46, &qword_10076E0D0, &unk_100635D70);
    v49 = v91;
    if (v48 != 1)
    {
      goto LABEL_9;
    }

    v50 = v28;
    (*(v85 + 208))(v83);
    swift_getObjectType();
    v51 = dispatch thunk of TTRRemindersListTreeContentsQueryable.presentationTree.getter();
    swift_unknownObjectRelease();
    swift_getObjectType();
    v99[0] = v51;
    v52 = v86;
    dispatch thunk of TTRTreeContentsQueryable.item(withID:)();
    swift_unknownObjectRelease();
    v54 = v87;
    v53 = v88;
    if ((*(v88 + 48))(v52, 1, v87) == 1)
    {
      sub_1000079B4(v52, &qword_100772140, &qword_10062D9F0);
LABEL_9:
      if (qword_100767008 != -1)
      {
        swift_once();
      }

      v55 = type metadata accessor for Logger();
      sub_100003E30(v55, qword_1007741F0);
      (*(v42 + 16))(v49, v44, v41);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v99[0] = v59;
        *v58 = 136315138;
        v60 = TTRRemindersListViewModel.ItemID.description.getter();
        v61 = v44;
        v63 = v62;
        v64 = *(v42 + 8);
        v64(v49, v41);
        v65 = sub_100004060(v60, v63, v99);

        *(v58 + 4) = v65;
        _os_log_impl(&_mh_execute_header, v56, v57, "TTRIRemindersCommonPresenter: failed to look up item for firstVisibleItemID {itemID: %s}", v58, 0xCu);
        sub_100004758(v59);

        v64(v61, v41);
      }

      else
      {

        v66 = *(v42 + 8);
        v66(v49, v41);
        v66(v44, v41);
      }

      return;
    }

    v67 = v82;
    (*(v53 + 32))(v82, v52, v54);
    if (qword_100767008 != -1)
    {
      swift_once();
    }

    v68 = type metadata accessor for Logger();
    sub_100003E30(v68, qword_1007741F0);
    v69 = v50;
    (*(v53 + 16))(v50, v67, v54);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = v69;
      v73 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v99[0] = v98;
      *v73 = 136315138;
      sub_10022DFF4(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
      v74 = TTRTreeStorageItem.treeItemDescription.getter();
      v76 = v75;
      v77 = *(v53 + 8);
      v77(v72, v54);
      v78 = sub_100004060(v74, v76, v99);
      v67 = v82;

      *(v73 + 4) = v78;
      _os_log_impl(&_mh_execute_header, v70, v71, "TTRIRemindersCommonPresenter: restoring firstVisibleItem {item: %s}", v73, 0xCu);
      sub_100004758(v98);
      v44 = v92;
    }

    else
    {

      v77 = *(v53 + 8);
      v77(v69, v54);
    }

    v79 = v97;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v80 = *(v79 + 24);
      v81 = swift_getObjectType();
      (*(v80 + 272))(v67, v81, v80);
      swift_unknownObjectRelease();
    }

    v77(v67, v54);
    (*(v42 + 8))(v44, v41);
  }
}

double sub_10022164C(__n128 a1)
{
  v2 = v1;
  v3 = type metadata accessor for OSSignpostID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for REMFeatureFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 2;
  if (*(v1 + 168) == 1)
  {
    v12 = *(v1 + 144);
    ObjectType = swift_getObjectType();
    (*(v12 + 136))(ObjectType, v12);
    LOBYTE(v12) = TTRModuleState.defersResolve.getter();

    v11 = (v12 & 1) != 0 ? 0 : 2;
    (*(v8 + 104))(v10, enum case for REMFeatureFlags.ppt_forceLayoutForNavigationTests(_:), v7);
    v14 = REMFeatureFlags.isEnabled.getter();
    (*(v8 + 8))(v10, v7);
    if (v14)
    {
      if (qword_100767008 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_100003E30(v15, qword_1007741F0);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "TTRIRemindersCommonPresenter: PPT: force layout contents", v18, 2u);
      }

      static os_signpost_type_t.begin.getter();
      v19 = objc_opt_self();
      v20 = [v19 ppt];
      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:)();

      v21 = *(v4 + 8);
      v21(v6, v3);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v22 = *(v2 + 24);
        v23 = swift_getObjectType();
        (*(v22 + 312))(v23, v22);
        swift_unknownObjectRelease();
      }

      static os_signpost_type_t.end.getter();
      v24 = [v19 ppt];
      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:)();

      v21(v6, v3);
    }
  }

  v25 = *(v2 + 144);
  v26 = swift_getObjectType();
  (*(v25 + 136))(v26, v25);
  TTRModuleState.modelDidLoad(defersResolveOverride:)(v11);

  return result;
}

void sub_100221A28(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100058000(&unk_100780980, &unk_100631DD0);
  __chkstk_darwin(v4 - 8);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v19[-v8];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v10 + 136))(a1, ObjectType, v10);
    swift_unknownObjectRelease();
  }

  TTRRemindersListViewModel.ListInfo.sharingInfo.getter();
  v12 = OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_sharingInfo;
  swift_beginAccess();
  sub_10000794C(v2 + v12, v6, &unk_100780980, &unk_100631DD0);
  swift_beginAccess();
  sub_100019180(v9, v2 + v12, &unk_100780980, &unk_100631DD0);
  swift_endAccess();
  sub_10020F1B8(v6);
  sub_1000079B4(v6, &unk_100780980, &unk_100631DD0);
  sub_1000079B4(v9, &unk_100780980, &unk_100631DD0);
  v13 = *(v2 + 144);
  v14 = swift_getObjectType();
  v15 = *(v13 + 128);
  if (v15(v14, v13) && (swift_getObjectType(), v16 = dispatch thunk of TTRRemindersListDataModelSourceAutoCategorizationContextType.shouldAutoCategorizeItems.getter(), swift_unknownObjectRelease(), (v16 & 1) != 0) && v15(v14, v13) && (swift_getObjectType(), v17 = dispatch thunk of TTRRemindersListDataModelSourceAutoCategorizationContextType.sourceListForAutoCategorization.getter(), swift_unknownObjectRelease(), v18 = [v17 objectID], v17, v18))
  {
    TTRRemindersListAutoCategorizationActivityMonitor.startMonitoringAutoCategorizationActivityIfNeeded(forListID:)();
  }

  else
  {
    TTRRemindersListAutoCategorizationActivityMonitor.stopMonitoringAutoCategorizationActivity()();
  }
}

uint64_t *sub_100221D58(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v7 = *a2;
    *a1 = *a2;
    a1 = (v7 + ((v5 + 16) & ~v5));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = type metadata accessor for URL();
      (*(*(v6 - 8) + 16))(a1, a2, v6);
    }

    else
    {
      v8 = a2[1];
      *a1 = *a2;
      a1[1] = v8;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_100221E54(uint64_t *a1, uint64_t a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = type metadata accessor for URL();
    v4 = *(*(v3 - 8) + 8);

    return v4(a1, v3);
  }

  else
  {
  }
}

uint64_t *sub_100221EE4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for URL();
    (*(*(v5 - 8) + 16))(a1, a2, v5);
  }

  else
  {
    v6 = a2[1];
    *a1 = *a2;
    a1[1] = v6;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t *sub_100221F94(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_10022E05C(a1, type metadata accessor for TTRIRemindersCommonPresenter.ContextMenuIdentifier.Action);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = type metadata accessor for URL();
      (*(*(v5 - 8) + 16))(a1, a2, v5);
    }

    else
    {
      *a1 = *a2;
      a1[1] = a2[1];
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void *sub_100222070(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for URL();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }
}

void *sub_100222140(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_10022E05C(a1, type metadata accessor for TTRIRemindersCommonPresenter.ContextMenuIdentifier.Action);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for URL();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

uint64_t sub_100222234(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t destroy for TTRIRemindersCommonPresenter.AttachImportingContext(id *a1)
{

  return swift_unknownObjectRelease();
}

uint64_t assignWithCopy for TTRIRemindersCommonPresenter.AttachImportingContext(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 16) = v7;
  return a1;
}

uint64_t assignWithTake for TTRIRemindersCommonPresenter.AttachImportingContext(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  swift_unknownObjectRelease();
  *(a1 + 16) = v4;
  return a1;
}

uint64_t sub_1002223C4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListLayout();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v26 - v9;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v1 + 24);
    v12 = *(v1 + 144);
    ObjectType = swift_getObjectType();
    if ((*(v12 + 112))(ObjectType, v12))
    {
      swift_getObjectType();
      dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
      swift_unknownObjectRelease();
      (*(v5 + 32))(v10, v7, v4);
    }

    else
    {
      (*(v5 + 104))(v10, enum case for TTRRemindersListLayout.list(_:), v4);
    }

    v14 = swift_getObjectType();
    (*(v11 + 280))(a1, v10, v14, v11);
    swift_unknownObjectRelease();
    (*(v5 + 8))(v10, v4);
  }

  result = sub_10057EFA4();
  if (v16)
  {
    v17 = result;
    v18 = v16;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v19 = *(v2 + 24);
      v20 = swift_getObjectType();
      sub_100058000(&unk_100771E10, &qword_100634270);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_10062D3F0;
      *(v21 + 32) = v17;
      *(v21 + 40) = v18;
      *(v21 + 48) = static TTRAccesibility.RemindersList.AutoCategorization.AutoCategorizationOverlayHint.getter();
      *(v21 + 56) = v22;
      v26[1] = v21;
      static TTRAccesibility.General.Label.Separator.getter();
      sub_100058000(&unk_100781F20, &unk_10062D7E0);
      sub_10000E188(&qword_100771E20, &unk_100781F20, &unk_10062D7E0, &protocol conformance descriptor for [A]);
      v23 = BidirectionalCollection<>.joined(separator:)();
      v25 = v24;

      (*(v19 + 296))(v23, v25, v20, v19);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1002226D8()
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 40))(ObjectType, v1);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_100222750()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    LOBYTE(v2) = (*(v2 + 48))(ObjectType, v2);
    swift_unknownObjectRelease();
    return v2 & 1;
  }

  return result;
}

uint64_t sub_1002227B0()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    LOBYTE(v2) = (*(v2 + 88))(ObjectType, v2);
    swift_unknownObjectRelease();
    return v2 & 1;
  }

  return result;
}

uint64_t sub_10022280C(uint64_t a1, char a2, char a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 112))(a1, a2 & 1, a3 & 1, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1002228AC(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListEditingSessionDisplayTargets();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TTRRemindersListEditingSessionDisplayTargets.cell.getter();
  sub_1004F1000(v5, a1);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100222994(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 144))(a1, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100222A1C(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListEditingSessionDisplayTargets();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100058000(&qword_100772150, &unk_100635D00);
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10062D400;
  (*(v7 + 16))(v9 + v8, a1, v6);
  static TTRRemindersListEditingSessionDisplayTargets.cell.getter();
  sub_1004F1000(v5, v9);
  swift_setDeallocating();
  (*(v7 + 8))(v9 + v8, v6);
  swift_deallocClassInstance();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100222BF4(char a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 256))(a1 & 1, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100222C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v7 + 264))(a1, a2, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  else
  {
    v10 = type metadata accessor for TTRRemindersListViewModel.Item();
    v11 = *(*(v10 - 8) + 56);

    return v11(a3, 1, 1, v10);
  }
}

uint64_t sub_100222D60()
{
  sub_10000794C(v0 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_navigationBar, v2, &unk_100775590, &qword_100635200);
  sub_100085758();
  swift_unknownObjectRelease();
  return sub_100004758(v2);
}

uint64_t sub_100222E00@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TTRRemindersListCreationTargetWithSectionID(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 144);
  ObjectType = swift_getObjectType();
  v11 = *(v9 + 312);

  v11(0, sub_10023A388, v1, ObjectType, v9);

  sub_100233874(v5, v8, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
  sub_10022E05C(v5, type metadata accessor for TTRRemindersListCreationTargetWithSectionID);
  sub_10023409C(v8, a1, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
  v12 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.ReminderPropertyEditingItemsInfoSource(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v12 - 8) + 56))(a1, 0, 1, v12);
}

void sub_100222FE0(uint64_t a1, void *a2, uint64_t a3)
{
  v75 = a2;
  v70 = type metadata accessor for TTRRemindersListViewModel.Item();
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v68 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&unk_10076FCD0, &unk_1006304D0);
  __chkstk_darwin(v5 - 8);
  v71 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v76 = &v67 - v8;
  v81 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier.DateVisibleSection();
  v80 = *(v81 - 8);
  v9 = *(v80 + 64);
  __chkstk_darwin(v81);
  v72 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v67 - v11;
  v74 = type metadata accessor for TTRIRemindersCommonPresenter.NavigationBarEditingTarget(0);
  __chkstk_darwin(v74);
  v14 = (&v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v79 = (&v67 - v16);
  v17 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v17 - 8);
  v77 = &v67 - v18;
  v19 = type metadata accessor for TTRRemindersListPostponeType();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v67 - v24;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v67 = v9;
    v73 = v12;
    v26 = *(v20 + 16);
    v26(v25, a1, v19);
    v27 = (*(v20 + 88))(v25, v19);
    if (v27 == enum case for TTRRemindersListPostponeType.none(_:) || v27 == enum case for TTRRemindersListPostponeType.today(_:) || v27 == enum case for TTRRemindersListPostponeType.tomorrow(_:) || v27 == enum case for TTRRemindersListPostponeType.weekend(_:) || v27 == enum case for TTRRemindersListPostponeType.startOfWeekday(_:))
    {
      v26(v22, a1, v19);
      v44 = (*(v20 + 80) + 16) & ~*(v20 + 80);
      v45 = swift_allocObject();
      (*(v20 + 32))(v45 + v44, v22, v19);
      v46 = Strong;
      sub_100213A1C(sub_100233ED0, v45);

      v47 = type metadata accessor for TaskPriority();
      v48 = v77;
      (*(*(v47 - 8) + 56))(v77, 1, 1, v47);
      type metadata accessor for MainActor();

      v49 = static MainActor.shared.getter();
      v50 = swift_allocObject();
      v50[2] = v49;
      v50[3] = &protocol witness table for MainActor;
      v50[4] = v46;
      sub_10009E31C(0, 0, v48, &unk_100635E18, v50);
    }

    else if (v27 == enum case for TTRRemindersListPostponeType.custom(_:))
    {
      v28 = v81;
      v29 = v80;
      v30 = v76;
      v31 = v73;
      if (qword_100767008 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      sub_100003E30(v32, qword_1007741F0);
      v33 = sub_100008E04(_swiftEmptyArrayStorage);
      sub_10000FD44("Reminders List New Reminder With Custom Due Date", 48, 2, v33);

      v34 = v79;
      v35 = v75;
      *v79 = v75;
      swift_storeEnumTagMultiPayload();
      (*(v29 + 104))(v31, enum case for REMNavigationSpecifier.ReminderPathSpecifier.DateVisibleSection.date(_:), v28);
      v36 = type metadata accessor for TTRIPopoverAnchor();
      v37 = *(*(v36 - 8) + 56);
      v37(v30, 1, 1, v36);
      sub_100233874(v34, v14, type metadata accessor for TTRIRemindersCommonPresenter.NavigationBarEditingTarget);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v38 = v30;
        v39 = *v14;
        v40 = v35;
        if ([v39 presentationSourceItem])
        {
          swift_unknownObjectRetain();
          v41 = v71;
          static TTRIPopoverAnchor.sourceItem(_:permittedArrowDirections:)();
          v42 = v73;
          swift_unknownObjectRelease_n();
          v43 = 0;
        }

        else
        {
          v43 = 1;
          v41 = v71;
          v42 = v73;
        }

        v57 = v80;
        v37(v41, v43, 1, v36);
        v55 = Strong;
        sub_100227684(v41, &v89);

        sub_1000079B4(v41, &unk_10076FCD0, &unk_1006304D0);
      }

      else
      {
        v51 = v69;
        v52 = v68;
        v53 = v70;
        (*(v69 + 32))(v68, v14, v70);
        v54 = v35;
        v55 = Strong;
        v56 = sub_1002111BC(v52, v30, 0, 0, &v89);
        (*(v51 + 8))(v52, v53, v56);
        v38 = v30;
        v42 = v73;
        v57 = v80;
      }

      sub_10000794C(&v89, &v82, &qword_100775748, &qword_100635DC0);
      if (v82)
      {
        v87[2] = v84;
        v87[3] = v85;
        v88 = v86;
        v87[0] = v82;
        v87[1] = v83;
        *(v55 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_currentDetailModuleEventHandler) = v85;
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        v58 = type metadata accessor for TaskPriority();
        v59 = v77;
        (*(*(v58 - 8) + 56))(v77, 1, 1, v58);
        sub_100233AF0(v87, &v82);
        v60 = v72;
        v61 = v81;
        (*(v57 + 16))(v72, v42, v81);
        type metadata accessor for MainActor();

        v62 = static MainActor.shared.getter();
        v63 = (*(v57 + 80) + 105) & ~*(v57 + 80);
        v64 = swift_allocObject();
        v65 = v82;
        *(v64 + 56) = v83;
        v66 = v85;
        *(v64 + 72) = v84;
        *(v64 + 88) = v66;
        *(v64 + 16) = v62;
        *(v64 + 24) = &protocol witness table for MainActor;
        *(v64 + 32) = v55;
        *(v64 + 104) = v86;
        *(v64 + 40) = v65;
        (*(v57 + 32))(v64 + v63, v60, v61);
        sub_10009E31C(0, 0, v59, &unk_100635E08, v64);

        sub_100233BFC(v87);
        sub_1000079B4(&v89, &qword_100775748, &qword_100635DC0);
        sub_1000079B4(v38, &unk_10076FCD0, &unk_1006304D0);
        (*(v57 + 8))(v42, v61);
        sub_10022E05C(v79, type metadata accessor for TTRIRemindersCommonPresenter.NavigationBarEditingTarget);
      }

      else
      {

        sub_1000079B4(&v89, &qword_100775748, &qword_100635DC0);
        sub_1000079B4(v38, &unk_10076FCD0, &unk_1006304D0);
        (*(v57 + 8))(v42, v81);
        sub_10022E05C(v79, type metadata accessor for TTRIRemindersCommonPresenter.NavigationBarEditingTarget);
        sub_1000079B4(&v82, &qword_100775748, &qword_100635DC0);
      }
    }

    else
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }
  }
}

uint64_t sub_100223B40()
{
  v0 = sub_100058000(&qword_1007757C0, &qword_100635E20);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  v3 = type metadata accessor for TTRDateChangeType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListPostponeType.dateChangeType.getter();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_1000079B4(v2, &qword_1007757C0, &qword_100635E20);
  }

  (*(v4 + 32))(v6, v2, v3);
  TTRReminderEditor.edit(dueDateComponentsUsing:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100223CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_100223D64, v6, v5);
}

uint64_t sub_100223D64()
{
  v0[2] = *(v0[3] + 128);
  v1 = swift_task_alloc();
  v0[7] = v1;
  v2 = type metadata accessor for TTRIPrivacyChecker();
  *v1 = v0;
  v1[1] = sub_100223E20;

  return TTRPrivacyChecker.checkAndPromptNotificationAccess(needsPresentationOfWarmingSheet:)(2, v2, &protocol witness table for TTRIPrivacyChecker);
}

uint64_t sub_100223E20()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_100223F40, v3, v2);
}

uint64_t sub_100223F40()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_100223FA0(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
  __chkstk_darwin(v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100233874(a1, v11, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v14 = *(v11 + 1);

      return v14;
    }

    else
    {
      sub_10022E05C(v11, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
      return 0;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      return 0;
    }

    (*(v3 + 32))(v8, v11, v2);
    (*(v3 + 16))(v5, v8, v2);
    v15 = (*(v3 + 88))(v5, v2);
    if (v15 == enum case for TTRRemindersListTargetContainer.TargetList.listID(_:))
    {
      (*(v3 + 96))(v5, v2);
      v16 = *v5;
      swift_getObjectType();
      v17 = dispatch thunk of TTRRemindersListInteractorType.fetchList(with:)();

LABEL_8:
      (*(v3 + 8))(v8, v2);
      return v17;
    }

    if (v15 == enum case for TTRRemindersListTargetContainer.TargetList.staleList(_:) || v15 == enum case for TTRRemindersListTargetContainer.TargetList.upToDateList(_:))
    {
      (*(v3 + 8))(v8, v2);
      (*(v3 + 96))(v5, v2);
      return *v5;
    }

    else
    {
      if (v15 == enum case for TTRRemindersListTargetContainer.TargetList.defaultList(_:))
      {
        swift_getObjectType();
        v17 = dispatch thunk of TTRRemindersListInteractorType.fetchDefaultList()();
        goto LABEL_8;
      }

      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }
  }

  return result;
}

void sub_1002242B8(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getObjectType();
    type metadata accessor for RDIDispatchQueue();
    swift_unknownObjectRetain();
    v7 = static RDIDispatchQueue.storeUserInteractiveQueue.getter();
    sub_100003540(0, &qword_100777780, OS_dispatch_queue_ptr);
    v8 = static OS_dispatch_queue.main.getter();
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    *(v9 + 24) = a2;

    dispatch thunk of TTRRemindersListInteractorType.fetchAllHashtagLabels(backgroundQueue:callbackQueue:completion:)();

    swift_unknownObjectRelease();
  }

  else
  {
    a1(_swiftEmptyArrayStorage);
  }
}

double sub_1002243FC(void *a1, uint64_t a2, __n128 a3)
{
  v101 = a1;
  v107 = type metadata accessor for TTRIPopoverAnchor();
  v111 = *(v107 - 8);
  __chkstk_darwin(v107);
  v98 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v99 = &v93 - v5;
  v6 = sub_100058000(&unk_10076DF90, &qword_100631A48);
  __chkstk_darwin(v6 - 8);
  v104 = &v93 - v7;
  v105 = type metadata accessor for TTRIHashtagEditorPresentationStyle();
  v103 = *(v105 - 8);
  __chkstk_darwin(v105);
  v102 = (&v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_100058000(&unk_10076FCD0, &unk_1006304D0);
  __chkstk_darwin(v9 - 8);
  v106 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v93 - v12;
  __chkstk_darwin(v14);
  v100 = &v93 - v15;
  __chkstk_darwin(v16);
  v18 = &v93 - v17;
  v19 = type metadata accessor for TTRRemindersListReminderInsertionPosition();
  v109 = *(v19 - 8);
  v110 = v19;
  __chkstk_darwin(v19);
  v108 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100058000(&qword_100775760, &unk_1006442C0);
  __chkstk_darwin(v21 - 8);
  v23 = &v93 - v22;
  v24 = sub_100058000(&qword_100775768, &qword_100635DE0);
  __chkstk_darwin(v24);
  v26 = &v93 - v25;
  v112 = type metadata accessor for TTRRemindersListTargetContainer();
  v27 = *(v112 - 1);
  __chkstk_darwin(v112);
  v29 = &v93 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_100003E30(v30, qword_1007741F0);
  v31 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44("Reminders List New Reminder With Custom Tags", 44, 2, v31);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v34 = Strong;
    if (!swift_unknownObjectWeakLoadStrong())
    {
      goto LABEL_25;
    }

    v96 = v13;
    v97 = v18;
    v35 = *(v34 + 160);
    ObjectType = swift_getObjectType();
    v113 = v34;
    v37 = ObjectType;
    v115 = type metadata accessor for TTRIRemindersCommonPresenter(0);
    v116 = &off_10071AA88;
    aBlock[0] = v113;
    v38 = *(v35 + 8);

    v39 = v37;
    v40 = v113;
    v41 = v38(aBlock, v39, v35);
    swift_unknownObjectRelease();
    sub_100004758(aBlock);
    v42 = *(v40 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter);
    sub_1004EB45C(0, v23);
    v43 = sub_100058000(&qword_100775770, &unk_1006442D0);
    if ((*(*(v43 - 8) + 48))(v23, 1, v43) == 1)
    {

      sub_1000079B4(v23, &qword_100775760, &unk_1006442C0);
LABEL_25:

      return result;
    }

    v95 = v41;
    v94 = *(v43 + 48);
    v93 = *(v24 + 48);
    v44 = type metadata accessor for TTRRemindersListViewModel.SectionID();
    v45 = *(v44 - 8);
    (*(v45 + 32))(v26, v23, v44);
    v46 = *(v27 + 32);
    v47 = &v23[v94];
    v48 = v112;
    v46(&v26[v93], v47, v112);
    v46(v29, &v26[*(v24 + 48)], v48);
    (*(v45 + 8))(v26, v44);
    v94 = *(v42 + 56);
    swift_getObjectType();
    v49 = v108;
    v50 = v109;
    v51 = v110;
    (*(v109 + 104))(v108, enum case for TTRRemindersListReminderInsertionPosition.afterAll(_:), v110);
    v52 = *(v42 + 40);
    v53 = swift_getObjectType();
    (*(v52 + 408))(v53, v52);
    v54 = TTRRemindersListInteractorType.newReminderChangeItem(objectID:title:targetContainer:position:remindersBeingSaved:)();

    (*(v50 + 8))(v49, v51);
    (*(v27 + 8))(v29, v112);
    v112 = v54;
    if (!v54)
    {

      return result;
    }

    if ([v101 presentationSourceItem])
    {
      swift_unknownObjectRetain();
      v55 = v97;
      static TTRIPopoverAnchor.sourceItem(_:permittedArrowDirections:)();
      swift_unknownObjectRelease_n();
      v56 = 0;
    }

    else
    {
      v56 = 1;
      v55 = v97;
    }

    v57 = v107;
    (*(v111 + 56))(v55, v56, 1, v107);
    sub_10000794C(v55, v100, &unk_10076FCD0, &unk_1006304D0);
    v58 = v113;
    type metadata accessor for TTRIRemindersListDetailPopoverAnchorProvider();
    swift_allocObject();

    v59 = TTRIRemindersListDetailPopoverAnchorProvider.init(targetItems:popoverAnchor:cellInfoButtonVisibilityAssertion:)();
    TTRIRemindersListDetailPopoverAnchorProvider.temporarilyAssertCellInfoButtonVisibility()();
    type metadata accessor for NavigationBarReminderCreationHashtagEditorModuleDelegate();
    v60 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v61 = sub_10022DFF4(&unk_1007757B0, type metadata accessor for NavigationBarReminderCreationHashtagEditorModuleDelegate, &unk_100635A98);
    v62 = (v58 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_currentHashtagEditorModuleEventHandler);
    *v62 = v60;
    v62[1] = v61;

    swift_unknownObjectRelease();
    v108 = *(v58 + 88);
    v118 = v59;
    type metadata accessor for TTRIHashtagEditorAssembly();
    v63 = v102;
    *v102 = 1;
    v64 = v103;
    v65 = v105;
    (*(v103 + 104))(v63, enum case for TTRIHashtagEditorPresentationStyle.batchEdit(_:), v105);
    v66 = type metadata accessor for TTRHashtagEditorModuleState();
    v67 = v104;
    (*(*(v66 - 8) + 56))(v104, 1, 1, v66);

    v110 = v60;
    v68 = v95;
    v69 = static TTRIHashtagEditorAssembly.createViewController(style:reminderChangeItem:previousModuleState:delegate:undoManager:)();
    v70 = v67;
    v71 = v69;
    sub_1000079B4(v70, &unk_10076DF90, &qword_100631A48);
    (*(v64 + 8))(v63, v65);
    swift_unknownObjectRelease();
    v72 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v71];
    v73 = v96;
    dispatch thunk of TTRIRemindersListDetailPopoverAnchorProviding.acquirePopoverAnchor()();
    v74 = v111;
    v109 = v59;

    v75 = v73;
    v76 = v106;
    sub_10000794C(v75, v106, &unk_10076FCD0, &unk_1006304D0);
    if ((*(v74 + 48))(v76, 1, v57) == 1)
    {
      v77 = v72;
      sub_1000079B4(v76, &unk_10076FCD0, &unk_1006304D0);
    }

    else
    {
      v78 = *(v74 + 32);
      v107 = v71;
      v79 = v99;
      v78(v99, v76, v57);
      v72;
      UIPopoverArrowDirection.addingRTLFallback()();
      v80 = v98;
      TTRIPopoverAnchor.withPermittedArrowDirectionsIfNil(_:)();
      v81 = *(v74 + 8);
      v81(v79, v57);
      v78(v79, v80, v57);
      UIViewController.setupForAdaptivePopoverPresentation(anchoredAt:)();
      v82 = v79;
      v71 = v107;
      v68 = v95;
      v81(v82, v57);
    }

    v83 = [v72 presentationController];

    v84 = v96;
    if (v83)
    {
      [v83 setDelegate:v71];
    }

    v85 = swift_unknownObjectWeakLoadStrong();
    if (v85)
    {
      v86 = v85;
      v87 = [v85 presentedViewController];
      if (v87)
      {
        v88 = v87;
        v89 = swift_allocObject();
        *(v89 + 16) = v86;
        *(v89 + 24) = v72;
        *(v89 + 32) = 1;
        v116 = sub_10023A490;
        v117 = v89;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10001047C;
        v115 = &unk_10071B990;
        v90 = _Block_copy(aBlock);
        v91 = v72;
        v92 = v86;

        [v88 dismissViewControllerAnimated:1 completion:v90];

        _Block_release(v90);

LABEL_24:
        sub_1000079B4(v84, &unk_10076FCD0, &unk_1006304D0);
        sub_1000079B4(v97, &unk_10076FCD0, &unk_1006304D0);
        goto LABEL_25;
      }

      [v86 presentViewController:v72 animated:1 completion:0];
    }

    else
    {
    }

    goto LABEL_24;
  }

  return result;
}

double sub_1002251B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;

    sub_100213A1C(sub_100233DC0, v7);
  }

  return result;
}

uint64_t sub_100225260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for TTRHashtagSpecifier();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = a2;
  v9[1] = a3;
  v9[2] = 0;
  (*(v6 + 104))(v9, enum case for TTRHashtagSpecifier.named(_:), v5, v7);

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100225374(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a5;
  *(v6 + 32) = a6;
  *(v6 + 72) = a4;
  type metadata accessor for MainActor();
  *(v6 + 40) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 48) = v8;
  *(v6 + 56) = v7;

  return _swift_task_switch(sub_100225410, v8, v7);
}

uint64_t sub_100225410()
{
  if (*(v0 + 72) == 1)
  {
    *(v0 + 16) = *(*(v0 + 24) + 128);
    v1 = swift_task_alloc();
    *(v0 + 64) = v1;
    v2 = type metadata accessor for TTRIPrivacyChecker();
    *v1 = v0;
    v1[1] = sub_100225544;

    return TTRPrivacyChecker.checkAndPromptNotificationAccess(needsPresentationOfWarmingSheet:)(2, v2, &protocol witness table for TTRIPrivacyChecker);
  }

  else
  {

    (*(**(v0 + 24) + 1648))(*(v0 + 72), *(v0 + 32));
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_100225544()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_100225664, v3, v2);
}

uint64_t sub_100225664()
{

  (*(**(v0 + 24) + 1648))(*(v0 + 72), *(v0 + 32));
  v1 = *(v0 + 8);

  return v1();
}

void sub_1002256F8()
{
  v1 = *(v0 + 88);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (*(v1 + 88) || (type metadata accessor for TTRFeedbackProvider(), swift_allocObject(), v3 = v4, *(v1 + 88) = TTRFeedbackProvider.init(hostingViewController:)(), , *(v1 + 88)))
    {

      TTRFeedbackProvider.handleAutoCategorizationConcern()();
    }
  }
}

void sub_1002257B0(char a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRIRemindersListNavigationBarEditingTarget(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100233874(a2, v10, type metadata accessor for TTRIRemindersListNavigationBarEditingTarget);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = a1 & 1;
    sub_100213A1C(sub_100233C38, v11);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_100058000(&qword_100772150, &unk_100635D00);
    v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v13 = swift_allocObject();
    *(v13 + 1) = xmmword_10062D400;
    (*(v5 + 16))(&v13[v12], v7, v4);
    v14._rawValue = v13;
    sub_100242CC8(a1 & 1, v14);

    (*(v5 + 8))(v7, v4);
  }
}

void sub_1002259EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_100058000(&qword_100775780, &unk_100630580);
  __chkstk_darwin(v5 - 8);
  v7 = &v41 - v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.Item();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRIRemindersListNavigationBarEditingTarget(0);
  __chkstk_darwin(v12 - 8);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = [objc_allocWithZone(type metadata accessor for TTRIAttachmentImportingController()) init];
  v15 = TTRIAttachmentImportingController.createPicker(of:)();
  if (v15)
  {
    v16 = v15;
    sub_100233874(a2, v14, type metadata accessor for TTRIRemindersListNavigationBarEditingTarget);
    if ((*(v9 + 48))(v14, 1, v8) == 1)
    {
      type metadata accessor for NavigationBarReminderCreationAttachmentImportingControllerDelegate();
      v17 = swift_allocObject();
      swift_weakInit();
      swift_weakAssign();
      v18 = sub_10022DFF4(&qword_100775788, type metadata accessor for NavigationBarReminderCreationAttachmentImportingControllerDelegate, &unk_100635A38);
    }

    else
    {
      (*(v9 + 32))(v11, v14, v8);
      v20 = *(v2 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter);
      v43 = *(v2 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter + 8);
      ObjectType = swift_getObjectType();
      aBlock = 0;
      v48 = 0xE000000000000000;
      _StringGuts.grow(_:)(25);
      v21 = _typeName(_:qualified:)();
      v42 = v2;
      v22 = v21;
      v24 = v23;

      aBlock = v22;
      v48 = v24;
      v25._object = 0x8000000100678010;
      v25._countAndFlagsBits = 0xD000000000000017;
      String.append(_:)(v25);
      v45 = v20;
      sub_100410DCC(v7);
      sub_10022DFF4(&qword_100775790, type metadata accessor for TTRRemindersListEditingSessionProvider, &unk_10063E618);

      v26 = TTRRemindersListEditingSessionProviderCapability.acquireEditingSession(forEditing:acquirerName:undoContext:editingSessionState:editingSessionDelegate:)();
      sub_1000079B4(v7, &qword_100775780, &unk_100630580);

      if (!v26)
      {
        (*(v9 + 8))(v11, v8);

        return;
      }

      type metadata accessor for AttachmentImportingControllerDelegate();
      v17 = swift_allocObject();
      swift_weakInit();
      v27 = v42;
      swift_weakAssign();
      *(v17 + 24) = v26;
      *(v17 + 32) = &protocol witness table for TTRRemindersListConcreteEditingSession;
      v18 = sub_10022DFF4(&qword_100775798, type metadata accessor for AttachmentImportingControllerDelegate, &unk_100635A68);

      dispatch thunk of TTRReminderCellPropertyEditingPresenterManaging.request(populateTitleIfEmpty:)();

      (*(v9 + 8))(v11, v8);
      v3 = v27;
    }

    swift_unknownObjectRetain();
    TTRIAttachmentImportingController.delegate.setter();
    v28 = (v3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_currentAttachImportingContext);
    v29 = *(v3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_currentAttachImportingContext);
    v30 = *(v3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_currentAttachImportingContext + 8);
    v31 = v46;
    *v28 = v46;
    v28[1] = v17;
    v28[2] = v18;
    v32 = v31;
    sub_100053470(v29, v30);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v34 = Strong;
      v35 = [Strong presentedViewController];
      if (v35)
      {
        v36 = v35;
        v37 = swift_allocObject();
        *(v37 + 16) = v34;
        *(v37 + 24) = v16;
        *(v37 + 32) = 1;
        v51 = sub_100233C2C;
        v52 = v37;
        aBlock = _NSConcreteStackBlock;
        v48 = 1107296256;
        v49 = sub_10001047C;
        v50 = &unk_10071B8C8;
        v38 = _Block_copy(&aBlock);
        v39 = v34;
        v40 = v16;

        [v36 dismissViewControllerAnimated:1 completion:v38];

        swift_unknownObjectRelease();
        _Block_release(v38);

        return;
      }

      [v34 presentViewController:v16 animated:1 completion:0];
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v19 = v46;
  }
}

void sub_100226060(uint64_t a1, uint64_t a2, void *a3)
{
  *&v73 = a1;
  v64 = a3;
  v74 = a2;
  v3 = sub_100058000(&unk_10076FCD0, &unk_1006304D0);
  __chkstk_darwin(v3 - 8);
  v70 = &v63 - v4;
  v68 = type metadata accessor for TTRIRemindersCommonPresenter.NavigationBarEditingTarget(0);
  __chkstk_darwin(v68);
  v69 = (&v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v71 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRIRemindersListNavigationBarEditingTarget(0);
  v66 = *(v9 - 8);
  v10 = *(v66 + 64);
  __chkstk_darwin(v9 - 8);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v67 = &v63 - v13;
  __chkstk_darwin(v14);
  v65 = &v63 - v15;
  v16 = sub_100058000(&qword_100775718, &qword_100635D88);
  __chkstk_darwin(v16 - 8);
  v18 = &v63 - v17;
  v19 = sub_100058000(&qword_100775720, &unk_100635D90);
  __chkstk_darwin(v19 - 8);
  v21 = &v63 - v20;
  v22 = type metadata accessor for TTRLocationQuickPickItem();
  __chkstk_darwin(v22);
  v24 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v63 - v26;
  v29 = v28;
  v31 = v30;
  sub_10000794C(v73, v21, &qword_100775720, &unk_100635D90);
  if ((*(v29 + 48))(v21, 1, v31) == 1)
  {
    sub_1000079B4(v21, &qword_100775720, &unk_100635D90);
    sub_100233874(v74, v11, type metadata accessor for TTRIRemindersListNavigationBarEditingTarget);
    if ((*(v7 + 48))(v11, 1, v6) != 1)
    {
      v32 = v6;
      v33 = v71;
      (*(v7 + 32))(v71, v11, v6);
      v74 = sub_100058000(&qword_100772150, &unk_100635D00);
      v34 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v35 = swift_allocObject();
      v73 = xmmword_10062D400;
      *(v35 + 16) = xmmword_10062D400;
      v36 = *(v7 + 16);
      v36(v35 + v34, v33, v6);
      sub_100242E78(0, v35);

      v37 = swift_allocObject();
      *(v37 + 16) = v73;
      v36(v37 + v34, v33, v32);
      sub_100243084(0, v37);

      (*(v7 + 8))(v33, v32);
    }
  }

  else
  {
    (*(v29 + 32))(v27, v21, v31);
    v38 = *(v29 + 16);
    *&v73 = v27;
    v38(v24, v27, v31);
    v39 = (*(v29 + 88))(v24, v31);
    if (v39 == enum case for TTRLocationQuickPickItem.current(_:) || v39 == enum case for TTRLocationQuickPickItem.home(_:) || v39 == enum case for TTRLocationQuickPickItem.work(_:) || v39 == enum case for TTRLocationQuickPickItem.gettingInCar(_:) || v39 == enum case for TTRLocationQuickPickItem.gettingOutOfCar(_:))
    {
      v47 = v29;
      v48 = v31;
      v49 = v72;
      swift_getObjectType();
      v50 = sub_100058000(&qword_100775728, &unk_10063D860);
      (*(*(v50 - 8) + 56))(v18, 1, 1, v50);
      v51 = v73;
      v52 = dispatch thunk of TTRLocationQuickPicksInteractorType.locationTrigger(for:togglingProximityForCurrentSelection:)();
      sub_1000079B4(v18, &qword_100775718, &qword_100635D88);
      v53 = v74;
      if (v52)
      {
        v75 = v52;
        v54 = swift_allocObject();
        swift_weakInit();
        v55 = v65;
        sub_100233874(v53, v65, type metadata accessor for TTRIRemindersListNavigationBarEditingTarget);
        v56 = (*(v66 + 80) + 24) & ~*(v66 + 80);
        v57 = swift_allocObject();
        *(v57 + 16) = v54;
        sub_10023409C(v55, v57 + v56, type metadata accessor for TTRIRemindersListNavigationBarEditingTarget);
        sub_100058000(&qword_100775730, &unk_100635DA0);
        sub_10000E188(&qword_100775738, &qword_100775730, &unk_100635DA0, &protocol conformance descriptor for AnyPublisher<A, B>);
        v58 = Publisher.sink(receiveCompletion:receiveValue:)();

        (*(v47 + 8))(v51, v48);

        *(v49 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_locationTriggerCancellable) = v58;
      }

      else
      {
        (*(v47 + 8))(v51, v48);
      }
    }

    else if (v39 == enum case for TTRLocationQuickPickItem.custom(_:))
    {
      v40 = v29;
      v41 = v67;
      sub_100233874(v74, v67, type metadata accessor for TTRIRemindersListNavigationBarEditingTarget);
      if ((*(v7 + 48))(v41, 1, v6) == 1)
      {
        v42 = v69;
        v43 = v64;
        *v69 = v64;
        swift_storeEnumTagMultiPayload();
        v44 = type metadata accessor for TTRIPopoverAnchor();
        v45 = v70;
        (*(*(v44 - 8) + 56))(v70, 1, 1, v44);
        v46 = v43;
        sub_10020AE28(v42, v45, 0, 0);
        sub_1000079B4(v45, &unk_10076FCD0, &unk_1006304D0);
        sub_10022E05C(v42, type metadata accessor for TTRIRemindersCommonPresenter.NavigationBarEditingTarget);
      }

      else
      {
        v59 = v71;
        (*(v7 + 32))(v71, v41, v6);
        v60 = v69;
        (*(v7 + 16))(v69, v59, v6);
        swift_storeEnumTagMultiPayload();
        v61 = type metadata accessor for TTRIPopoverAnchor();
        v62 = v70;
        (*(*(v61 - 8) + 56))(v70, 1, 1, v61);
        sub_10020AE28(v60, v62, 0, 0);
        sub_1000079B4(v62, &unk_10076FCD0, &unk_1006304D0);
        sub_10022E05C(v60, type metadata accessor for TTRIRemindersCommonPresenter.NavigationBarEditingTarget);
        (*(v7 + 8))(v59, v6);
      }

      (*(v40 + 8))(v73, v31);
    }

    else
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }
  }
}

double sub_100226A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a1;
  v4 = sub_100058000(&qword_100775740, &qword_10063D870);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = type metadata accessor for TTRIRemindersListNavigationBarEditingTarget(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v12 - 8);
  v14 = &v23 - v13;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_locationTriggerCancellable) = 0;
    v17 = Strong;

    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v14, 1, 1, v18);
    sub_100233874(a3, &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TTRIRemindersListNavigationBarEditingTarget);
    (*(v5 + 16))(v7, v23, v4);
    type metadata accessor for MainActor();

    v19 = static MainActor.shared.getter();
    v20 = (*(v9 + 80) + 40) & ~*(v9 + 80);
    v21 = (v10 + *(v5 + 80) + v20) & ~*(v5 + 80);
    v22 = swift_allocObject();
    *(v22 + 2) = v19;
    *(v22 + 3) = &protocol witness table for MainActor;
    *(v22 + 4) = v17;
    sub_10023409C(v11, &v22[v20], type metadata accessor for TTRIRemindersListNavigationBarEditingTarget);
    (*(v5 + 32))(&v22[v21], v7, v4);
    sub_10009E31C(0, 0, v14, &unk_100635DB8, v22);
  }

  return result;
}

uint64_t sub_100226DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = sub_100058000(&qword_100775740, &qword_10063D870);
  v6[6] = v7;
  v8 = *(v7 - 8);
  v6[7] = v8;
  v6[8] = *(v8 + 64);
  v6[9] = swift_task_alloc();
  v6[10] = swift_task_alloc();
  v9 = type metadata accessor for TTRRemindersListViewModel.Item();
  v6[11] = v9;
  v6[12] = *(v9 - 8);
  v6[13] = swift_task_alloc();
  type metadata accessor for TTRIRemindersListNavigationBarEditingTarget(0);
  v6[14] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[15] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[16] = v11;
  v6[17] = v10;

  return _swift_task_switch(sub_100226F64, v11, v10);
}

uint64_t sub_100226F64()
{
  v0[2] = *(v0[3] + 128);
  v1 = swift_task_alloc();
  v0[18] = v1;
  v2 = type metadata accessor for TTRIPrivacyChecker();
  *v1 = v0;
  v1[1] = sub_100227018;

  return TTRPrivacyChecker.checkAndPromptLocationAccess()(v2, &protocol witness table for TTRIPrivacyChecker);
}

uint64_t sub_100227018()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return _swift_task_switch(sub_100227138, v3, v2);
}

uint64_t sub_100227138()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  sub_100233874(v0[4], v1, type metadata accessor for TTRIRemindersListNavigationBarEditingTarget);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[9];
    v5 = v0[6];
    v6 = v0[7];
    v7 = v0[5];

    (*(v6 + 16))(v4, v7, v5);
    v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v9 = swift_allocObject();
    (*(v6 + 32))(v9 + v8, v4, v5);
    sub_100213A1C(sub_100233A74, v9);

LABEL_8:

    v37 = v0[1];

    return v37();
  }

  v10 = v0[10];
  v11 = v0[6];
  v12 = v0[7];
  v13 = v0[5];
  (*(v0[12] + 32))(v0[13], v0[14], v0[11]);
  (*(v12 + 16))(v10, v13, v11);
  v14 = (*(v12 + 88))(v10, v11);
  if (v14 == enum case for Either.left<A, B>(_:))
  {
    v16 = v0[12];
    v15 = v0[13];
    v17 = v0[10];
    v18 = v0[11];
    v20 = v0[6];
    v19 = v0[7];

    (*(v19 + 96))(v17, v20);
    v21 = *v17;
    sub_100058000(&qword_100772150, &unk_100635D00);
    v22 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_10062D400;
    (*(v16 + 16))(v23 + v22, v15, v18);
    v24 = v21;
    sub_100242E78(v21, v23);
LABEL_7:
    v35 = v0[12];
    v34 = v0[13];
    v36 = v0[11];

    (*(v35 + 8))(v34, v36);
    goto LABEL_8;
  }

  if (v14 == enum case for Either.right<A, B>(_:))
  {
    v26 = v0[12];
    v25 = v0[13];
    v27 = v0[10];
    v28 = v0[11];
    v30 = v0[6];
    v29 = v0[7];

    (*(v29 + 96))(v27, v30);
    v31 = *v27;
    sub_100058000(&qword_100772150, &unk_100635D00);
    v32 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_10062D400;
    (*(v26 + 16))(v33 + v32, v25, v28);
    v24 = v31;
    sub_100243084(v31, v33);
    goto LABEL_7;
  }

  return _diagnoseUnexpectedEnumCase<A>(type:)();
}

void sub_1002274F4(uint64_t a1, uint64_t a2)
{
  v3 = sub_100058000(&qword_100775740, &qword_10063D870);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (&v10 - v6);
  (*(v4 + 16))(&v10 - v6, a2, v3, v5);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == enum case for Either.left<A, B>(_:))
  {
    (*(v4 + 96))(v7, v3);
    v9 = *v7;
    TTRReminderEditor.edit(locationTrigger:)();
LABEL_5:

    return;
  }

  if (v8 == enum case for Either.right<A, B>(_:))
  {
    (*(v4 + 96))(v7, v3);
    v9 = *v7;
    TTRReminderEditor.edit(vehicleTrigger:)();
    goto LABEL_5;
  }

  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

double sub_100227684@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_100058000(&unk_10076FCD0, &unk_1006304D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v42 - v7;
  v9 = type metadata accessor for TTRRemindersListReminderInsertionPosition();
  v49 = *(v9 - 8);
  v50 = v9;
  __chkstk_darwin(v9);
  v48 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&qword_100775760, &unk_1006442C0);
  __chkstk_darwin(v11 - 8);
  v13 = &v42 - v12;
  v14 = sub_100058000(&qword_100775768, &qword_100635DE0);
  __chkstk_darwin(v14);
  v16 = &v42 - v15;
  v52 = type metadata accessor for TTRRemindersListTargetContainer();
  v17 = *(v52 - 8);
  __chkstk_darwin(v52);
  v47 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v2 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter);
  sub_1004EB45C(0, v13);
  v20 = sub_100058000(&qword_100775770, &unk_1006442D0);
  if ((*(*(v20 - 8) + 48))(v13, 1, v20) == 1)
  {
    sub_1000079B4(v13, &qword_100775760, &unk_1006442C0);
LABEL_7:
    *(a2 + 64) = 0;
    result = 0.0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  v42 = a1;
  v43 = v8;
  v44 = v3;
  v51 = *(v20 + 48);
  v21 = *(v14 + 48);
  v22 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v23 = *(v22 - 8);
  v46 = a2;
  v24 = v23;
  (*(v23 + 32))(v16, v13, v22);
  v25 = *(v17 + 32);
  v26 = &v16[v21];
  v27 = v52;
  v25(v26, &v13[v51], v52);
  v28 = &v16[*(v14 + 48)];
  v29 = v47;
  v25(v47, v28, v27);
  (*(v24 + 8))(v16, v22);
  a2 = v46;
  v51 = *(v19 + 56);
  ObjectType = swift_getObjectType();
  v30 = v48;
  v31 = v49;
  v32 = v50;
  (*(v49 + 104))(v48, enum case for TTRRemindersListReminderInsertionPosition.afterAll(_:), v50);
  v33 = *(v19 + 40);
  v34 = swift_getObjectType();
  (*(v33 + 408))(v34, v33);
  v51 = TTRRemindersListInteractorType.newReminderChangeItem(objectID:title:targetContainer:position:remindersBeingSaved:)();

  (*(v31 + 8))(v30, v32);
  (*(v17 + 8))(v29, v52);
  if (!v51)
  {
    goto LABEL_7;
  }

  sub_10000794C(v42, v43, &unk_10076FCD0, &unk_1006304D0);
  v35 = type metadata accessor for TTRIRemindersListDetailPopoverAnchorProvider();
  swift_allocObject();

  v36 = TTRIRemindersListDetailPopoverAnchorProvider.init(targetItems:popoverAnchor:cellInfoButtonVisibilityAssertion:)();
  TTRIRemindersListDetailPopoverAnchorProvider.temporarilyAssertCellInfoButtonVisibility()();
  v54 = v35;
  v55 = &protocol witness table for TTRIRemindersListDetailPopoverAnchorProvider;
  *&v53 = v36;
  type metadata accessor for NavigationBarReminderCreationReminderDetailModuleDelegate();
  v37 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  *(v37 + 24) = v51;
  v38 = sub_10022DFF4(&qword_100775778, type metadata accessor for NavigationBarReminderCreationReminderDetailModuleDelegate, &unk_100635AC8);
  *a2 = v51;
  sub_100005FD0(&v53, a2 + 8);
  *(a2 + 48) = v37;
  *(a2 + 56) = v38;
  *(a2 + 64) = 0;
  v39 = v51;

  v40 = v39;
  return result;
}

uint64_t sub_100227C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  type metadata accessor for MainActor();
  v6[6] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[7] = v8;
  v6[8] = v7;

  return _swift_task_switch(sub_100227CE4, v8, v7);
}

uint64_t sub_100227CE4()
{
  v0[2] = *(v0[3] + 128);
  v1 = swift_task_alloc();
  v0[9] = v1;
  v2 = type metadata accessor for TTRIPrivacyChecker();
  *v1 = v0;
  v1[1] = sub_100227DA0;

  return TTRPrivacyChecker.checkAndPromptNotificationAccess(needsPresentationOfWarmingSheet:)(2, v2, &protocol witness table for TTRIPrivacyChecker);
}

uint64_t sub_100227DA0()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_100227EC0, v3, v2);
}

uint64_t sub_100227EC0()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];

  v4 = *(v2 + 88);
  v5 = *v3;
  v6 = *(v3 + 64);
  v7 = *(v3 + 48);
  v8 = *(v3 + 56);
  v9 = *(v3 + 32);
  v10 = *(v3 + 40);
  v11 = sub_10000C36C((v3 + 8), v9);
  sub_100138310(v5, v1, v6, v7, v8, v11, v4, v9, v10);
  v12 = v0[1];

  return v12();
}

uint64_t sub_100227F8C(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v9 = type metadata accessor for TTRIPopoverAnchor();
  v8[8] = v9;
  v8[9] = *(v9 - 8);
  v8[10] = swift_task_alloc();
  v8[11] = swift_task_alloc();
  sub_100058000(&unk_10076FCD0, &unk_1006304D0);
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[14] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[15] = v11;
  v8[16] = v10;

  return _swift_task_switch(sub_1002280D4, v11, v10);
}

uint64_t sub_1002280D4()
{
  v1 = *(v0[4] + 128);
  v0[17] = v1;
  v0[2] = v1;

  v2 = swift_task_alloc();
  v0[18] = v2;
  v3 = type metadata accessor for TTRIPrivacyChecker();
  v0[19] = v3;
  *v2 = v0;
  v2[1] = sub_1002281A0;

  return TTRPrivacyChecker.checkAndPromptNotificationAccess(needsPresentationOfWarmingSheet:)(2, v3, &protocol witness table for TTRIPrivacyChecker);
}

uint64_t sub_1002281A0()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v6 = *v0;

  v1[3] = v2;
  v1 += 3;
  v3 = swift_task_alloc();
  v1[17] = v3;
  *v3 = v6;
  v3[1] = sub_1002282F4;
  v4 = v1[16];

  return TTRPrivacyChecker.checkAndPromptLocationAccess()(v4, &protocol witness table for TTRIPrivacyChecker);
}

uint64_t sub_1002282F4()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return _swift_task_switch(sub_100228438, v3, v2);
}

uint64_t sub_100228438()
{
  v1 = v0[5];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong navigationController];

    if (v4)
    {
      v26 = v4;
LABEL_6:
      v6 = v0[12];
      v7 = v0[13];
      v8 = v0[9];
      v25 = v0[8];
      v9 = v0[5];
      v10 = static TTRIReminderLocationPickerAssembly.createViewController(reminderChangeItem:showsDoneButton:savesOnCommit:delegate:undoManager:)();
      v11 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v10];
      sub_10000C36C((v1 + 8), *(v9 + 32));
      dispatch thunk of TTRIRemindersListDetailPopoverAnchorProviding.acquirePopoverAnchor()();
      sub_10000794C(v7, v6, &unk_10076FCD0, &unk_1006304D0);
      v12 = (*(v8 + 48))(v6, 1, v25);
      v13 = v0[12];
      if (v12 == 1)
      {
        v14 = v11;
        sub_1000079B4(v13, &unk_10076FCD0, &unk_1006304D0);
      }

      else
      {
        v16 = v0[10];
        v15 = v0[11];
        v18 = v0[8];
        v17 = v0[9];
        v19 = *(v17 + 32);
        v19(v15, v0[12], v18);
        v11;
        UIPopoverArrowDirection.addingRTLFallback()();
        TTRIPopoverAnchor.withPermittedArrowDirectionsIfNil(_:)();
        v20 = *(v17 + 8);
        v20(v15, v18);
        v19(v15, v16, v18);
        UIViewController.setupForAdaptivePopoverPresentation(anchoredAt:)();
        v20(v15, v18);
      }

      v21 = v0[13];
      swift_getObjectType();
      v22 = [v11 presentationController];

      dispatch thunk of TTRIReminderLocationPickerModuleInterface.prepareForModalPresentation(by:)();
      [v26 presentViewController:v11 animated:1 completion:0];

      swift_unknownObjectRelease();
      sub_1000079B4(v21, &unk_10076FCD0, &unk_1006304D0);
      goto LABEL_10;
    }
  }

  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v26 = v5;
    goto LABEL_6;
  }

LABEL_10:

  v23 = v0[1];

  return v23();
}

uint64_t sub_100228750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, __n128), uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v11 = a7(a3, a4);
  }

  else
  {
    v11 = 0;
  }

  return (a5)(v11 & 1);
}

uint64_t sub_100228814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v13;
  v8[8] = v14;
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  type metadata accessor for MainActor();
  v8[9] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[10] = v10;
  v8[11] = v9;

  return _swift_task_switch(sub_1002288C0, v10, v9);
}

uint64_t sub_1002288C0()
{
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_100228970;
  v3 = v0[3];
  v2 = v0[4];

  return sub_1001DFFD4(v3, v2);
}

uint64_t sub_100228970(char a1)
{
  v2 = *v1;
  *(*v1 + 104) = a1;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);

  return _swift_task_switch(sub_100228A98, v4, v3);
}

uint64_t sub_100228A98()
{
  v1 = *(v0 + 104);

  if (v1 == 2 || (*(v0 + 104) & 1) == 0)
  {
    v7 = *(v0 + 40);
    if (!v7)
    {
      goto LABEL_10;
    }

    v8 = 0;
    goto LABEL_9;
  }

  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter);
  if (TTRInCellEditingPresenterManagingHelper.activeInCellEditingPresenter.getter())
  {
    swift_getObjectType();
    dispatch thunk of TTRReminderCellPropertyEditingPresenterType.requestEndEditing()();
    swift_unknownObjectRelease();
  }

  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 40);
  sub_1004EF1A4(v2, v3);
  sub_100252618(v4, v5);
  if (v6)
  {
    v7 = *(v0 + 40);
    v8 = 1;
LABEL_9:
    v7(v8);
  }

LABEL_10:
  v9 = *(v0 + 8);

  return v9();
}

double sub_100228C18(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_100058000(&unk_10076FCD0, &unk_1006304D0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v11 = &v20 - v10;
  v12 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v12 - 8);
  v14 = &v20 - v13;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_10000794C(a4, v11, &unk_10076FCD0, &unk_1006304D0);
  type metadata accessor for MainActor();

  v16 = static MainActor.shared.getter();
  v17 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = &protocol witness table for MainActor;
  *(v18 + 32) = a3;
  *(v18 + 40) = v5;
  sub_100016588(v11, v18 + v17, &unk_10076FCD0, &unk_1006304D0);
  sub_10009E31C(0, 0, v14, &unk_100635DF0, v18);

  return result;
}

uint64_t sub_100228E1C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter);
  if (TTRInCellEditingPresenterManagingHelper.activeInCellEditingPresenter.getter())
  {
    swift_getObjectType();
    dispatch thunk of TTRReminderCellPropertyEditingPresenterType.requestEndEditing()();
    swift_unknownObjectRelease();
  }

  sub_1004EF1A4(v2, v3);
  v4 = *(v1 + 144);
  ObjectType = swift_getObjectType();
  return (*(v4 + 664))(0, ObjectType, v4);
}

void sub_100228ECC(__n128 a1)
{
  v1 = type metadata accessor for REMGenerativeModelsFeature();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for REMGenerativeModelsAvailabilityManager();
  v6[1] = static REMGenerativeModelsAvailabilityManager.shared.getter();
  (*(v2 + 104))(v4, enum case for REMGenerativeModelsFeature.autoCategorization(_:), v1);
  v5 = REMGenerativeModelsAvailabilityManagerType.isRestrictedFeature(_:)();
  (*(v2 + 8))(v4, v1);

  if (v5)
  {
    sub_10020E9D4();
  }

  else
  {
    sub_1002256F8();
  }
}

uint64_t sub_100229020()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    v4 = (*(v2 + 32))(ObjectType, v2);
    swift_unknownObjectRelease();
    return v4;
  }

  return result;
}

void sub_10022907C(uint64_t a1, uint64_t a2)
{
  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003E30(v4, qword_1007741F0);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x656372756F73;
  *(inited + 40) = 0xE600000000000000;
  v6 = type metadata accessor for TTRIAttachmentImportingController.Source();
  *(inited + 72) = v6;
  v7 = sub_1000317B8((inited + 48));
  (*(*(v6 - 8) + 16))(v7, a1, v6);
  v8 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
  sub_10000FD44("Reminders List show attachment importer {source: %@}", 52, 2, v8);

  sub_1002259EC(a1, a2);
}

uint64_t sub_100229228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = type metadata accessor for TTRContactsAccessAlertFeature();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = type metadata accessor for TTRPrivacyType();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[14] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[15] = v9;
  v5[16] = v8;

  return _swift_task_switch(sub_100229378, v9, v8);
}

uint64_t sub_100229378(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = 0;
  *(v3 + 136) = *(*(v3 + 48) + 16);
  v5 = enum case for TTRPrivacyType.location(_:);
  *(v3 + 192) = enum case for TTRPrivacyType.notifications(_:);
  *(v3 + 196) = v5;
  v6 = enum case for TTRPrivacyType.reminderDeletion(_:);
  *(v3 + 200) = enum case for TTRPrivacyType.contacts(_:);
  *(v3 + 204) = v6;
  v7 = enum case for TTRContactsAccessAlertFeature.location(_:);
  *(v3 + 208) = enum case for TTRPrivacyType.urgentAlarms(_:);
  *(v3 + 212) = v7;
  while (1)
  {
    v8 = *(v3 + 136);
    if (v4 == v8)
    {
      break;
    }

    if (v4 >= v8)
    {
      __break(1u);
LABEL_29:
      __break(1u);
      return TTRPrivacyChecker.checkContactsAccess(contactsFeature:)(a1, a2, a3);
    }

    *(v3 + 144) = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_29;
    }

    v9 = *(v3 + 192);
    v11 = *(v3 + 96);
    v10 = *(v3 + 104);
    v12 = *(v3 + 88);
    (*(v11 + 16))(v10, *(v3 + 48) + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v4, v12);
    a1 = (*(v11 + 88))(v10, v12);
    if (a1 == v9)
    {
      *(v3 + 40) = *(*(v3 + 56) + 128);
      v16 = swift_task_alloc();
      *(v3 + 152) = v16;
      v17 = type metadata accessor for TTRIPrivacyChecker();
      *v16 = v3;
      v16[1] = sub_1002297D4;

      return TTRPrivacyChecker.checkAndPromptNotificationAccess(needsPresentationOfWarmingSheet:)(2, v17, &protocol witness table for TTRIPrivacyChecker);
    }

    if (a1 == *(v3 + 196))
    {
      *(v3 + 32) = *(*(v3 + 56) + 128);
      v18 = swift_task_alloc();
      *(v3 + 160) = v18;
      v19 = type metadata accessor for TTRIPrivacyChecker();
      *v18 = v3;
      v18[1] = sub_100229CF0;

      return TTRPrivacyChecker.checkAndPromptLocationAccess()(v19, &protocol witness table for TTRIPrivacyChecker);
    }

    if (a1 == *(v3 + 200))
    {
      v20 = *(v3 + 212);
      v22 = *(v3 + 72);
      v21 = *(v3 + 80);
      v23 = *(v3 + 64);
      v24 = *(*(v3 + 56) + 128);
      *(v3 + 168) = v24;
      *(v3 + 24) = v24;
      (*(v22 + 104))(v21, v20, v23);

      v25 = swift_task_alloc();
      *(v3 + 176) = v25;
      a2 = type metadata accessor for TTRIPrivacyChecker();
      *v25 = v3;
      v25[1] = sub_100229E10;
      a1 = *(v3 + 80);
      a3 = &protocol witness table for TTRIPrivacyChecker;

      return TTRPrivacyChecker.checkContactsAccess(contactsFeature:)(a1, a2, a3);
    }

    ++v4;
    if (a1 != *(v3 + 204))
    {
      if (a1 == *(v3 + 208))
      {
        *(v3 + 16) = *(*(v3 + 56) + 128);
        v13 = swift_task_alloc();
        *(v3 + 184) = v13;
        v14 = type metadata accessor for TTRIPrivacyChecker();
        *v13 = v3;
        v13[1] = sub_100229FB0;

        return TTRPrivacyChecker.checkAndPromptUrgentAlarmAccess()(v14, &protocol witness table for TTRIPrivacyChecker);
      }

      else
      {

        return _diagnoseUnexpectedEnumCase<A>(type:)();
      }
    }
  }

  v15 = *(v3 + 8);

  return v15();
}

uint64_t sub_1002297D4()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return _swift_task_switch(sub_1002298F4, v3, v2);
}

uint64_t sub_1002298F4(uint64_t a1, uint64_t a2, void *a3)
{
  for (i = *(v3 + 144); ; ++i)
  {
    v5 = *(v3 + 136);
    if (i == v5)
    {
      break;
    }

    if (i >= v5)
    {
      __break(1u);
LABEL_29:
      __break(1u);
      return TTRPrivacyChecker.checkContactsAccess(contactsFeature:)(a1, a2, a3);
    }

    *(v3 + 144) = i + 1;
    if (__OFADD__(i, 1))
    {
      goto LABEL_29;
    }

    v6 = *(v3 + 192);
    v8 = *(v3 + 96);
    v7 = *(v3 + 104);
    v9 = *(v3 + 88);
    (*(v8 + 16))(v7, *(v3 + 48) + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * i, v9);
    a1 = (*(v8 + 88))(v7, v9);
    if (a1 == v6)
    {
      *(v3 + 40) = *(*(v3 + 56) + 128);
      v13 = swift_task_alloc();
      *(v3 + 152) = v13;
      v14 = type metadata accessor for TTRIPrivacyChecker();
      *v13 = v3;
      v13[1] = sub_1002297D4;

      return TTRPrivacyChecker.checkAndPromptNotificationAccess(needsPresentationOfWarmingSheet:)(2, v14, &protocol witness table for TTRIPrivacyChecker);
    }

    if (a1 == *(v3 + 196))
    {
      *(v3 + 32) = *(*(v3 + 56) + 128);
      v15 = swift_task_alloc();
      *(v3 + 160) = v15;
      v16 = type metadata accessor for TTRIPrivacyChecker();
      *v15 = v3;
      v15[1] = sub_100229CF0;

      return TTRPrivacyChecker.checkAndPromptLocationAccess()(v16, &protocol witness table for TTRIPrivacyChecker);
    }

    if (a1 == *(v3 + 200))
    {
      v17 = *(v3 + 212);
      v19 = *(v3 + 72);
      v18 = *(v3 + 80);
      v20 = *(v3 + 64);
      v21 = *(*(v3 + 56) + 128);
      *(v3 + 168) = v21;
      *(v3 + 24) = v21;
      (*(v19 + 104))(v18, v17, v20);

      v22 = swift_task_alloc();
      *(v3 + 176) = v22;
      a2 = type metadata accessor for TTRIPrivacyChecker();
      *v22 = v3;
      v22[1] = sub_100229E10;
      a1 = *(v3 + 80);
      a3 = &protocol witness table for TTRIPrivacyChecker;

      return TTRPrivacyChecker.checkContactsAccess(contactsFeature:)(a1, a2, a3);
    }

    if (a1 != *(v3 + 204))
    {
      if (a1 == *(v3 + 208))
      {
        *(v3 + 16) = *(*(v3 + 56) + 128);
        v10 = swift_task_alloc();
        *(v3 + 184) = v10;
        v11 = type metadata accessor for TTRIPrivacyChecker();
        *v10 = v3;
        v10[1] = sub_100229FB0;

        return TTRPrivacyChecker.checkAndPromptUrgentAlarmAccess()(v11, &protocol witness table for TTRIPrivacyChecker);
      }

      else
      {

        return _diagnoseUnexpectedEnumCase<A>(type:)();
      }
    }
  }

  v12 = *(v3 + 8);

  return v12();
}

uint64_t sub_100229CF0()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return _swift_task_switch(sub_10023A44C, v3, v2);
}

uint64_t sub_100229E10()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);

  (*(v3 + 8))(v2, v4);

  v5 = *(v1 + 128);
  v6 = *(v1 + 120);

  return _swift_task_switch(sub_10023A44C, v6, v5);
}

uint64_t sub_100229FB0()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return _swift_task_switch(sub_10023A44C, v3, v2);
}

double sub_10022A0D0@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100058000(&unk_10076FCD0, &unk_1006304D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v33 - v9;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v11 + 224))(a1, ObjectType, v11);
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = type metadata accessor for TTRIPopoverAnchor();
    v13.n128_f64[0] = (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  }

  v15 = sub_1004EDBEC(a1, v13);
  if (v15)
  {
    v16 = v15;
    v36 = v7;
    v37 = a2;
    swift_getObjectType();
    v35 = dispatch thunk of TTRRemindersListInteractorType.reminderChangeItem(forEditing:)();
    v17 = &unk_10062D000;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v18 = *(v2 + 24);
      v34 = swift_getObjectType();
      sub_100058000(&qword_100772150, &unk_100635D00);
      v19 = type metadata accessor for TTRRemindersListViewModel.Item();
      v20 = *(v19 - 8);
      v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_10062D400;
      (*(v20 + 16))(v22 + v21, a1, v19);
      v23 = *(v18 + 216);
      v24 = v18;
      v17 = &unk_10062D000;
      v23(v22, v34, v24);
      swift_unknownObjectRelease();
      swift_setDeallocating();
      (*(v20 + 8))(v22 + v21, v19);
      swift_deallocClassInstance();
    }

    sub_100058000(&qword_100772150, &unk_100635D00);
    v25 = type metadata accessor for TTRRemindersListViewModel.Item();
    v26 = *(v25 - 8);
    v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = v17[64];
    (*(v26 + 16))(v28 + v27, a1, v25);
    sub_10000794C(v10, v36, &unk_10076FCD0, &unk_1006304D0);
    v29 = type metadata accessor for TTRIRemindersListDetailPopoverAnchorProvider();
    swift_allocObject();

    v30 = TTRIRemindersListDetailPopoverAnchorProvider.init(targetItems:popoverAnchor:cellInfoButtonVisibilityAssertion:)();
    TTRIRemindersListDetailPopoverAnchorProvider.temporarilyAssertCellInfoButtonVisibility()();
    v39 = v29;
    v40 = &protocol witness table for TTRIRemindersListDetailPopoverAnchorProvider;

    *&v38 = v30;
    sub_1000079B4(v10, &unk_10076FCD0, &unk_1006304D0);
    v31 = v37;
    *v37 = v35;
    sub_100005FD0(&v38, (v31 + 1));
  }

  else
  {
    sub_1000079B4(v10, &unk_10076FCD0, &unk_1006304D0);
    result = 0.0;
    *a2 = 0u;
    *(a2 + 1) = 0u;
    *(a2 + 2) = 0u;
  }

  return result;
}

uint64_t sub_10022A504()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    v4 = (*(v2 + 96))(ObjectType, v2);
    swift_unknownObjectRelease();
    return v4;
  }

  return result;
}

uint64_t sub_10022A56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for TTRIRemindersListNavigationBarEditingTarget(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRRemindersListViewModel.Item();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a3, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  sub_1002259EC(a4, v8);
  return sub_10022E05C(v8, type metadata accessor for TTRIRemindersListNavigationBarEditingTarget);
}

uint64_t sub_10022A684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 208))(a3, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10022A710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100058000(&unk_10076FCD0, &unk_1006304D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for TTRIRemindersCommonPresenter.NavigationBarEditingTarget(0);
  __chkstk_darwin(v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v10 - 8) + 16))(v9, a3, v10);
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for TTRIPopoverAnchor();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  sub_10020AE28(v9, v6, 0, 0);
  sub_1000079B4(v6, &unk_10076FCD0, &unk_1006304D0);
  return sub_10022E05C(v9, type metadata accessor for TTRIRemindersCommonPresenter.NavigationBarEditingTarget);
}

void sub_10022A8C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong presentViewController:a3 animated:1 completion:0];
  }
}

uint64_t sub_10022A938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for TTRRemindersListViewModel.Item();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000794C(a5, v10, &qword_100772140, &qword_10062D9F0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1000079B4(v10, &qword_100772140, &qword_10062D9F0);
    return 0;
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v16 = sub_1004EFFD8(v14, a3, a4);
    (*(v12 + 8))(v14, v11);
    return v16;
  }
}

double sub_10022AB14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  type metadata accessor for MainActor();

  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = a3;
  v11[5] = v4;
  sub_10009E31C(0, 0, v8, &unk_100635E30, v11);

  return result;
}

uint64_t sub_10022AC44(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v60 = a3;
  v61 = a6;
  v57 = a5;
  v59 = a4;
  v7 = sub_100058000(&unk_10076FCD0, &unk_1006304D0);
  __chkstk_darwin(v7 - 8);
  v54 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v53 - v10;
  v58 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier.DetailSection();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v55 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier.ShowInListPathSpecifier();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v53 - v18;
  v20 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v24, a2, v20, v22);
  v25 = (*(v21 + 88))(v24, v20);
  if (v25 == enum case for REMNavigationSpecifier.ReminderPathSpecifier.showInList(_:))
  {
    (*(v21 + 96))(v24, v20);
    (*(v14 + 32))(v19, v24, v13);
    (*(v14 + 16))(v16, v19, v13);
    v26 = (*(v14 + 88))(v16, v13);
    v27 = v14;
    if (v26 == enum case for REMNavigationSpecifier.ReminderPathSpecifier.ShowInListPathSpecifier.revealSubtasks(_:))
    {
      v28 = [v59 objectID];
      __chkstk_darwin(v28);
      v29 = v60;
      *(&v53 - 4) = v60;
      *(&v53 - 3) = v30;
      *(&v53 - 16) = 1;
      __chkstk_darwin(v30);
      *(&v53 - 4) = v29;
      *(&v53 - 3) = sub_10023A3AC;
      *(&v53 - 2) = v31;
      *(&v53 - 8) = v32;
      firstly<A>(closure:)();

      v33 = swift_allocObject();
      *(v33 + 16) = v61;
      *(v33 + 24) = v29;

      v34 = zalgo.getter();
LABEL_8:
      v46 = dispatch thunk of Promise.then<A>(on:closure:)();

      (*(v27 + 8))(v19, v13);
      return v46;
    }

    if (v26 == enum case for REMNavigationSpecifier.ReminderPathSpecifier.ShowInListPathSpecifier.selectItem(_:))
    {
      v47 = [v59 objectID];
      __chkstk_darwin(v47);
      v48 = v60;
      *(&v53 - 4) = v60;
      *(&v53 - 3) = v49;
      *(&v53 - 16) = 0;
      __chkstk_darwin(v49);
      *(&v53 - 4) = v48;
      *(&v53 - 3) = sub_10023A3AC;
      *(&v53 - 2) = v50;
      *(&v53 - 8) = 1;
      firstly<A>(closure:)();

      v51 = swift_allocObject();
      *(v51 + 16) = v61;
      *(v51 + 24) = v48;

      v34 = zalgo.getter();
      goto LABEL_8;
    }
  }

  else
  {
    if (v25 == enum case for REMNavigationSpecifier.ReminderPathSpecifier.showDetail(_:))
    {
      (*(v21 + 96))(v24, v20);
      v36 = v55;
      v35 = v56;
      (*(v56 + 32))(v55, v24, v58);
      v37 = type metadata accessor for TTRIPopoverAnchor();
      (*(*(v37 - 8) + 56))(v11, 1, 1, v37);
      sub_10000794C(v11, v54, &unk_10076FCD0, &unk_1006304D0);
      v38 = v60;
      v39 = type metadata accessor for TTRIRemindersListDetailPopoverAnchorProvider();
      swift_allocObject();

      v40 = TTRIRemindersListDetailPopoverAnchorProvider.init(targetItems:popoverAnchor:cellInfoButtonVisibilityAssertion:)();
      TTRIRemindersListDetailPopoverAnchorProvider.temporarilyAssertCellInfoButtonVisibility()();
      v62[3] = v39;
      v62[4] = &protocol witness table for TTRIRemindersListDetailPopoverAnchorProvider;
      v62[0] = v40;
      sub_1000079B4(v11, &unk_10076FCD0, &unk_1006304D0);
      type metadata accessor for ReminderDetailModuleDelegate();
      v41 = swift_allocObject();
      swift_weakInit();
      *(v41 + 24) = 0;
      *(v41 + 32) = 0;
      swift_weakAssign();
      v42 = *(v41 + 24);
      v43 = *(v41 + 32);
      *(v41 + 24) = 0;
      *(v41 + 32) = 0;
      sub_1000301AC(v42, v43);
      v44 = sub_10022DFF4(&qword_100775658, type metadata accessor for ReminderDetailModuleDelegate, &unk_100635C00);
      v45 = (v38 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_currentDetailModuleEventHandler);
      *v45 = v41;
      v45[1] = v44;

      swift_unknownObjectRelease();
      v46 = sub_1001325F4(v59, v36, v41, v44, v62, v57, v61);

      (*(v35 + 8))(v36, v58);
      sub_100004758(v62);
      return v46;
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10022B40C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[3] = type metadata accessor for TTRIRemindersCommonPresenter(0);
  v5[0] = a2;

  throwingCast<A>(_:as:failureMessage:)();
  return sub_100004758(v5);
}

uint64_t sub_10022B490(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v29[1] = a8;
  v14 = type metadata accessor for REMNavigationSpecifier.SectionPathSpecifier();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, a2, v14, v16);
  v19 = (*(v15 + 88))(v18, v14);
  if (v19 == enum case for REMNavigationSpecifier.SectionPathSpecifier.none(_:) || v19 == enum case for REMNavigationSpecifier.SectionPathSpecifier.showExpanded(_:))
  {
    v21 = v19 != enum case for REMNavigationSpecifier.SectionPathSpecifier.none(_:);
    v22 = [a4 objectID];
    __chkstk_darwin(v22);
    v29[-4] = a3;
    v29[-3] = v23;
    LOBYTE(v29[-2]) = v21;
    __chkstk_darwin(v23);
    v29[-4] = a3;
    v29[-3] = a6;
    v29[-2] = v24;
    LOBYTE(v29[-1]) = 1;
    firstly<A>(closure:)();

    v25 = swift_allocObject();
    *(v25 + 16) = a5;
    *(v25 + 24) = a3;

    v26 = zalgo.getter();
    v27 = dispatch thunk of Promise.then<A>(on:closure:)();

    return v27;
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10022B6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for REMNavigationSpecifier.SectionPathSpecifier();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a2, v9, v11);
  v14 = (*(v10 + 88))(v13, v9);
  if (v14 == enum case for REMNavigationSpecifier.SectionPathSpecifier.none(_:) || v14 == enum case for REMNavigationSpecifier.SectionPathSpecifier.showExpanded(_:))
  {
    __chkstk_darwin(v14);
    *(&v23 - 4) = a3;
    *(&v23 - 3) = a4;
    *(&v23 - 16) = v16;
    __chkstk_darwin(v17);
    *(&v23 - 4) = a3;
    *(&v23 - 3) = sub_10023256C;
    *(&v23 - 2) = v18;
    *(&v23 - 8) = 1;
    firstly<A>(closure:)();
    v19 = swift_allocObject();
    *(v19 + 16) = a5;
    *(v19 + 24) = a3;

    v20 = zalgo.getter();
    v21 = dispatch thunk of Promise.then<A>(on:closure:)();

    return v21;
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

char *sub_10022B918(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v7 = sub_100058000(&unk_10076FCD0, &unk_1006304D0);
  __chkstk_darwin(v7 - 8);
  v9 = v37 - v8;
  __chkstk_darwin(v10);
  __chkstk_darwin(v11);
  v37[1] = v37 - v12;
  __chkstk_darwin(v13);
  v15 = v37 - v14;
  v16 = type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = (v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v20, a2, v16, v18);
  v21 = (*(v17 + 88))(v20, v16);
  if (v21 == enum case for REMNavigationSpecifier.CommonListPathSpecifier.select(_:))
  {
    v22 = (*(v17 + 96))(v20, v16);
    v23 = *v20;
    __chkstk_darwin(v22);
    v37[-4] = a3;
    v37[-3] = v23;
    LOBYTE(v37[-2]) = 0;
    __chkstk_darwin(v24);
    v37[-4] = a3;
    v37[-3] = sub_10023240C;
    v37[-2] = v25;
    LOBYTE(v37[-1]) = 1;
    firstly<A>(closure:)();
    v26 = swift_allocObject();
    *(v26 + 16) = a4;
    *(v26 + 24) = a3;

    v27 = zalgo.getter();
    v15 = dispatch thunk of Promise.then<A>(on:closure:)();

LABEL_5:

    return v15;
  }

  if (v21 == enum case for REMNavigationSpecifier.CommonListPathSpecifier.showEdits(_:))
  {
    (*(v17 + 96))(v20, v16);
    v28 = *v20;
    v29 = *(a3 + 18);
    ObjectType = swift_getObjectType();
    (*(v29 + 136))(ObjectType, v29);
    TTRModuleState.readyAndModelIsUpToDatePromise.getter();

    v31 = swift_allocObject();
    v31[2] = a4;
    v31[3] = a3;
    v31[4] = v28;

    v27 = zalgo.getter();
    v15 = dispatch thunk of Promise.then<A>(on:closure:)();
    goto LABEL_5;
  }

  if (v21 == enum case for REMNavigationSpecifier.CommonListPathSpecifier.showContents(_:))
  {
    goto LABEL_8;
  }

  if (v21 == enum case for REMNavigationSpecifier.CommonListPathSpecifier.newReminder(_:))
  {
    v15 = a3;
    sub_1001EBF2C(0, 0, 0);
    v39 = type metadata accessor for TTRIRemindersCommonPresenter(0);
    v38[0] = a3;

    v34 = v40;
    throwingCast<A>(_:as:failureMessage:)();
    if (v34)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

  if (v21 == enum case for REMNavigationSpecifier.CommonListPathSpecifier.showSectionlessSection(_:))
  {
LABEL_8:
    v39 = type metadata accessor for TTRIRemindersCommonPresenter(0);
    v38[0] = a3;

    v33 = v40;
    throwingCast<A>(_:as:failureMessage:)();
    if (v33)
    {
LABEL_9:
      sub_100004758(v38);
      return v15;
    }

LABEL_17:
    type metadata accessor for Promise();
    sub_100004758(v38);
    return Promise.__allocating_init(value:)();
  }

  if (v21 == enum case for REMNavigationSpecifier.CommonListPathSpecifier.showManageSharedList(_:))
  {
    v35 = type metadata accessor for TTRIPopoverAnchor();
    (*(*(v35 - 8) + 56))(v9, 1, 1, v35);
    v15 = a3;
    (*(*a3 + 1648))(0, v9);
    sub_1000079B4(v9, &unk_10076FCD0, &unk_1006304D0);
    v39 = type metadata accessor for TTRIRemindersCommonPresenter(0);
    v38[0] = a3;

    v36 = v40;
    throwingCast<A>(_:as:failureMessage:)();
    if (v36)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10022BF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  firstly<A>(closure:)();
  v6 = swift_allocObject();
  *(v6 + 16) = a4;
  *(v6 + 24) = a2;

  v7 = zalgo.getter();
  v8 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v8;
}

uint64_t sub_10022C064(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_100781850, &unk_10063D2D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  v7 = enum case for TTREditingStateOption.InputType.unspecified(_:);
  v8 = type metadata accessor for TTREditingStateOption.InputType();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v6, v7, v8);
  (*(v9 + 56))(v6, 0, 1, v8);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(a2 + 24);
    ObjectType = swift_getObjectType();
    (*(v10 + 200))(a1, v6, ObjectType, v10);
    swift_unknownObjectRelease();
  }

  return sub_1000079B4(v6, &unk_100781850, &unk_10063D2D0);
}

uint64_t sub_10022C1D8(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v11 - 8);
  v13 = &v44 - v12;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v47 = v3;
    v14 = *(a2 + 24);
    v45 = a2;
    ObjectType = swift_getObjectType();
    v46 = (*(v14 + 248))(a1, ObjectType, v14);
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
    (*(v8 + 16))(&v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
    type metadata accessor for MainActor();
    v17 = v45;

    v18 = static MainActor.shared.getter();
    v19 = (*(v8 + 80) + 41) & ~*(v8 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    *(v20 + 24) = &protocol witness table for MainActor;
    *(v20 + 32) = v17;
    *(v20 + 40) = 1;
    (*(v8 + 32))(v20 + v19, v10, v7);
    sub_10009E31C(0, 0, v13, &unk_100635D38, v20);

    swift_unknownObjectRelease();
    return v46;
  }

  else
  {
    if (qword_100767008 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100003E30(v22, qword_1007741F0);

    v23 = a3;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v48[0] = v28;
      *v26 = 136315394;
      v49 = a2;
      type metadata accessor for TTRIRemindersCommonPresenter(0);

      v29 = String.init<A>(describing:)();
      v31 = a2;
      v32 = sub_100004060(v29, v30, v48);

      *(v26 + 4) = v32;
      a2 = v31;
      *(v26 + 12) = 2112;
      *(v26 + 14) = v23;
      *v27 = v23;
      v33 = v23;
      _os_log_impl(&_mh_execute_header, v24, v25, "RemindersListPresenter.delegate is nil. Cannot mark reminder as completed {presenter: %s, reminder: %@}", v26, 0x16u);
      sub_1000079B4(v27, &unk_10076DF80, &qword_10062F730);

      sub_100004758(v28);
    }

    v34 = objc_opt_self();
    v48[0] = 0;
    v48[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(103);
    v35._object = 0x8000000100677DE0;
    v35._countAndFlagsBits = 0xD000000000000056;
    String.append(_:)(v35);
    v49 = a2;
    type metadata accessor for TTRIRemindersCommonPresenter(0);
    _print_unlocked<A, B>(_:_:)();
    v36._countAndFlagsBits = 0x646E696D6572202CLL;
    v36._object = 0xEC000000203A7265;
    String.append(_:)(v36);
    v37 = [v23 description];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    v41._countAndFlagsBits = v38;
    v41._object = v40;
    String.append(_:)(v41);

    v42._countAndFlagsBits = 125;
    v42._object = 0xE100000000000000;
    String.append(_:)(v42);
    v43 = String._bridgeToObjectiveC()();

    [v34 internalErrorWithDebugDescription:v43];

    return swift_willThrow();
  }
}

BOOL sub_10022C710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    (*(v7 + 304))(a2, a3, ObjectType, v7);
    swift_unknownObjectRelease();
  }

  return Strong == 0;
}

uint64_t sub_10022C790@<X0>(uint64_t (*a1)(void)@<X1>, _BYTE *a2@<X8>)
{
  result = a1();
  *a2 = result & 1;
  return result;
}

uint64_t sub_10022C7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v4 + 160);
    ObjectType = swift_getObjectType();
    (*(v8 + 24))(a3, a4, 1, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Int sub_10022C868(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1000EF334(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_10022C8D4(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_10022C8D4(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_10022CA9C(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10022C9CC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10022C9CC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10022CA9C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1000ED7BC(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_10022D078((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100546DD8(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_100546DD8((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_10022D078((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1000ED7BC(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1000ED730(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_10022D078(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_10022D2A0(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v79 = a5;
  v7 = (a1 + 408);
  v8 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v8 - 8);
  v10 = v69 - v9;
  *(a3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a3 + 160) = 0;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_sharingInfo;
  v12 = type metadata accessor for TTRRemindersListViewModel.ListSharingInfo();
  (*(*(v12 - 8) + 56))(a3 + v11, 1, 1, v12);
  v13 = (a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_currentDetailModuleEventHandler);
  *v13 = 0;
  v13[1] = 0;
  v14 = (a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_currentHashtagEditorModuleEventHandler);
  *v14 = 0;
  v14[1] = 0;
  v15 = (a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_currentAttachImportingContext);
  v15[1] = 0;
  v15[2] = 0;
  *v15 = 0;
  *(a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_locationTriggerCancellable) = 0;
  v16 = (a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_currentLocationPickerModuleDelegate);
  *v16 = 0;
  v16[1] = 0;
  v17 = OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_showRemindersAsOverdueObserver;
  type metadata accessor for TTRUserDefaultsShowRemindersAsOverdueObserver();
  swift_allocObject();
  *(a3 + v17) = TTRUserDefaultsShowRemindersAsOverdueObserver.init()();
  v18 = OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_autoCategorizationActivityMonitor;
  type metadata accessor for TTRRemindersListAutoCategorizationActivityMonitor();
  swift_allocObject();
  *(a3 + v18) = TTRRemindersListAutoCategorizationActivityMonitor.init()();
  v19 = a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_userDefaults;
  *(v19 + 32) = 0;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_reminderChangeItemForShowDetailsCancellable) = 0;
  *(a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_localeChangedObserver) = 0;
  *(a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_timeZoneOverrideChangedObserver) = 0;
  *(a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_hasPreparedForModalPresentation) = 0;
  *(a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_needsRefreshItemsWhenSceneEntersForeground) = 0;
  v20 = OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_firstVisibleItemIDToRestore;
  v21 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  (*(*(v21 - 8) + 56))(a3 + v20, 1, 1, v21);
  *(a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_activeTemplateSavingDismissAnimationCoordinator) = 0;
  v22 = OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_cellInfoButtonVisibilityAssertion;
  v23 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v23 - 8) + 56))(v10, 1, 1, v23);
  v81 = sub_100058000(&qword_100775588, &unk_10063CCB0);
  swift_allocObject();
  *(a3 + v22) = CurrentValueSubject.init(_:)();
  *(a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_cellInfoButtonVisibilityAssertionCancellable) = 0;
  v25 = a1[1];
  v78 = *a1;
  v24 = *(&v78 + 1);
  v75 = v25;
  v76 = v78;
  *(a3 + 72) = v78;
  v80 = v24;
  *(a3 + 88) = v25;
  v26 = a1[2];
  v77 = v26;
  v27 = v26;
  *(a3 + 136) = v26;
  v74 = *(&v26 + 1);
  sub_10000794C((a1 + 16), &v91, &unk_100775590, &qword_100635200);
  v28 = a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_navigationBar;
  v83 = v93;
  sub_100007DD8(&v91, (a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_navigationBar));
  *(v28 + 32) = v83;
  sub_10000794C((a1 + 19), &v91, &qword_100769608, &unk_1006302F0);
  v29 = a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_quickBar;
  v83 = v93;
  sub_100007DD8(&v91, (a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_quickBar));
  *(v29 + 32) = v83;
  sub_10000B0D8((a1 + 10), a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_titleAttributesInteractor);
  v30 = *(a1 + 45);
  v70 = *(a1 + 44);
  v71 = v30;
  v31 = (a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter);
  *v31 = v70;
  v31[1] = v30;
  v32 = v7[1];
  v72 = *v7;
  v73 = v32;
  *(a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_locationQuickPicksInteractor) = v72;
  *(a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_listPickerInteractor) = v32;
  v33 = type metadata accessor for TTRIRemindersCommonPresenterConfiguration(0);
  v34 = *(v33 + 108);
  v35 = v33;
  *&v83 = v33;
  *(a3 + 168) = *(a1 + v34);
  *(a3 + 160) = v79;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *&v75 = *(a1 + 12);
  *&v73 = *(a1 + 19);
  sub_10000B0D8(a1 + 200, &v91);
  v36 = *(a1 + 31);
  v69[3] = *(a1 + 30);
  *&v72 = v36;
  v82 = a1;
  sub_10000B0D8((a1 + 23), v90);
  sub_10000B0D8(a1 + *(v35 + 100), v89);
  sub_10000B0D8((a1 + 3), v88);
  v37 = *(a1 + 17);
  v87[3] = type metadata accessor for TTRIPrivacyChecker();
  v87[4] = &protocol witness table for TTRIPrivacyChecker;
  v87[0] = v37;
  v79 = v37;
  type metadata accessor for TTRRemindersListPresenterCapability(0);
  v38 = swift_allocObject();
  *(v38 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v38 + 32) = 0x4000000000000000;
  v39 = objc_allocWithZone(NSCache);

  *(v38 + 240) = [v39 init];
  v40 = OBJC_IVAR____TtC9Reminders35TTRRemindersListPresenterCapability_currentShareURL;
  v41 = type metadata accessor for URL();
  (*(*(v41 - 8) + 56))(v38 + v40, 1, 1, v41);
  v42 = OBJC_IVAR____TtC9Reminders35TTRRemindersListPresenterCapability_fetchSuggestedSectionsPassthroughSubject;
  sub_100058000(&unk_1007755A0, &qword_100635CF0);
  swift_allocObject();
  *(v38 + v42) = PassthroughSubject.init()();
  *(v38 + OBJC_IVAR____TtC9Reminders35TTRRemindersListPresenterCapability_fetchSuggestedSectionsCancellable) = 0;
  *(v38 + OBJC_IVAR____TtC9Reminders35TTRRemindersListPresenterCapability_suggestedSectionCanonicalNameByReminderID) = 0;
  *(v38 + OBJC_IVAR____TtC9Reminders35TTRRemindersListPresenterCapability_suggestedSectionCanonicalNameByReminderTitle) = 0;
  *(v38 + OBJC_IVAR____TtC9Reminders35TTRRemindersListPresenterCapability_reminderIDsPreviouslyShownWithSuggestedSection) = &_swiftEmptySetSingleton;
  v74 = *(v74 + 8);
  sub_10000B0D8(&v91, &v86);
  v43 = v71;
  v69[2] = *(v71 + 24);
  sub_10000B0D8(v90, &v85);
  sub_10000B0D8(v88, &v84);
  type metadata accessor for TTRRemindersListPresenterCapabilityCore();
  swift_allocObject();
  v69[1] = v27;
  swift_unknownObjectRetain();
  v44 = v70;
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  *(v38 + 40) = TTRRemindersListPresenterCapabilityCore.init(viewModelSource:attachmentThumbnailsManager:urlMetadataInteractor:contactsProvider:userActivityMetadataInterator:editingPresenter:avatarProvider:geoService:)();
  v45 = v77;
  *(v38 + 48) = v78;
  *(v38 + 64) = v45;
  v46 = v75;
  *(v38 + 80) = v75;
  sub_10000B0D8(&v91, v38 + 88);
  *(v38 + 128) = v44;
  *(v38 + 136) = v43;
  sub_10000B0D8(v89, v38 + 144);
  sub_10000B0D8(v87, v38 + 184);
  type metadata accessor for TTRDeleteRemindersPresenterCapability();
  swift_allocObject();
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v47 = v46;
  *(v38 + 224) = TTRDeleteRemindersPresenterCapability.init(interactor:)();
  type metadata accessor for TTRSetReminderCompletedPresenterCapability();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v38 + 232) = TTRSetReminderCompletedPresenterCapability.init(interactor:)();
  sub_100003540(0, &qword_100777780, OS_dispatch_queue_ptr);
  static OS_dispatch_queue.main.getter();
  type metadata accessor for TTRDebouncedAction();
  swift_allocObject();
  *(v38 + 248) = TTRDebouncedAction.init(interval:queue:)();
  sub_10022DFF4(&qword_1007755B0, type metadata accessor for TTRRemindersListPresenterCapability, &unk_100636740);

  TTRRemindersListPresenterCapabilityCore.delegate.setter();

  sub_10022DFF4(&qword_1007755B8, type metadata accessor for TTRRemindersListPresenterCapability, &unk_100636718);

  TTRDebouncedAction.delegate.setter();
  sub_100004758(v88);
  sub_100004758(v89);
  sub_100004758(v90);
  sub_100004758(&v91);
  sub_100004758(v87);
  *(a3 + 104) = v38;
  v48 = v82;
  *(a3 + 112) = *(v82 + 120);
  v49 = v79;
  *(a3 + 120) = *(v48 + 16);
  *(a3 + 128) = v49;
  sub_10000B0D8(v48 + *(v83 + 104), a3 + 32);
  *(v38 + 24) = &off_10071AA40;
  swift_unknownObjectWeakAssign();
  v50 = objc_opt_self();

  v51 = [v50 defaultCenter];
  v91 = 0u;
  v92 = 0u;
  v52 = objc_opt_self();
  v53 = [v52 mainQueue];
  swift_allocObject();
  swift_weakInit();

  v54 = NSNotificationCenter.ttr_addObserver(forName:object:queue:using:)();

  sub_1000079B4(&v91, &qword_10076AE40, &qword_10062EE50);

  *(a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_localeChangedObserver) = v54;

  v55 = [v50 defaultCenter];
  v56 = static NSNotificationName.timeZoneOverrideDidChange.getter();
  v91 = 0u;
  v92 = 0u;
  v57 = [v52 mainQueue];
  swift_allocObject();
  swift_weakInit();

  v58 = NSNotificationCenter.ttr_addObserver(forName:object:queue:using:)();

  sub_1000079B4(&v91, &qword_10076AE40, &qword_10062EE50);

  *(a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_timeZoneOverrideChangedObserver) = v58;

  v59 = *(v83 + 96);
  v60 = OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_firstVisibleItemIDToRestore;
  swift_beginAccess();
  v61 = v82;
  sub_100019180(v82 + v59, a3 + v60, &unk_10076BB50, &unk_10062DEA0);
  swift_endAccess();
  v62 = *(a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_navigationBar + 32);
  swift_beginAccess();
  v63 = sub_10000C36C((a3 + 32), *(a3 + 56));
  sub_1003A5654(v38, *v63, v62);
  *&v91 = *(a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_cellInfoButtonVisibilityAssertion);
  swift_allocObject();
  swift_weakInit();
  sub_10000E188(&qword_1007755C0, &qword_100775588, &unk_10063CCB0, &protocol conformance descriptor for CurrentValueSubject<A, B>);

  v64 = Publisher<>.sink(receiveValue:)();

  *(a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_cellInfoButtonVisibilityAssertionCancellable) = v64;

  swift_allocObject();
  swift_weakInit();

  TTRRemindersListAutoCategorizationActivityMonitor.autoCategorizationInProgressReminderIDsChangeHandler.setter();

  v65 = type metadata accessor for TTRUserDefaults();
  v66 = static TTRUserDefaults.appUserDefaults.getter();
  *(&v92 + 1) = v65;
  *&v93 = &protocol witness table for TTRUserDefaults;

  *&v91 = v66;
  sub_10022E05C(v61, type metadata accessor for TTRIRemindersCommonPresenterConfiguration);
  v67 = OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_userDefaults;
  swift_beginAccess();
  sub_10000D184(&v91, a3 + v67, &qword_1007755C8, &qword_100635CF8);
  swift_endAccess();
  return a3;
}

uint64_t sub_10022DFF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10022E05C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_10022E0BC(uint64_t a1, _BYTE *a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_10022DFF4(&qword_100775A80, type metadata accessor for TTRIRemindersListEditableSectionNamePresenter, &unk_100643B8C);
  *&a2[OBJC_IVAR____TtC9Reminders50TTRIRemindersListEditableSectionNameViewController_nameTextView] = 0;
  v6 = &a2[OBJC_IVAR____TtC9Reminders50TTRIRemindersListEditableSectionNameViewController_previousLineIndexWhereClippingBegins];
  *v6 = 0;
  v6[8] = 1;
  swift_unknownObjectWeakInit();
  *&a2[OBJC_IVAR____TtC9Reminders50TTRIRemindersListEditableSectionNameViewController_previousTextColor] = 0;
  v7 = &a2[OBJC_IVAR____TtC9Reminders50TTRIRemindersListEditableSectionNameViewController_previousText];
  *v7 = 0;
  v7[1] = 0;
  a2[OBJC_IVAR____TtC9Reminders50TTRIRemindersListEditableSectionNameViewController_needsLayoutEmptyTextView] = 0;
  v8 = &a2[OBJC_IVAR____TtC9Reminders50TTRIRemindersListEditableSectionNameViewController_presenter];
  *v8 = a1;
  v8[1] = v5;
  v10.receiver = a2;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, "init");
}

char *sub_10022E1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TTRIRemindersListEditableSectionNameRouter();
  v25[3] = v8;
  v25[4] = &off_10072B410;
  v25[0] = a2;
  type metadata accessor for TTRIRemindersListEditableSectionNamePresenter(0);
  v9 = swift_allocObject();
  v10 = sub_10000AE84(v25, v8);
  v11 = __chkstk_darwin(v10);
  v13 = (&v25[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, v11);
  v15 = *v13;
  v16 = &v9[OBJC_IVAR____TtC9Reminders45TTRIRemindersListEditableSectionNamePresenter_router];
  *(v16 + 3) = v8;
  *(v16 + 4) = &off_10072B410;
  *v16 = v15;
  *(v9 + 3) = 0;
  swift_unknownObjectWeakInit();
  *(v9 + 5) = 0;
  swift_unknownObjectWeakInit();
  *(v9 + 7) = 0;
  swift_unknownObjectWeakInit();
  v17 = OBJC_IVAR____TtC9Reminders45TTRIRemindersListEditableSectionNamePresenter_viewModel;
  v18 = type metadata accessor for TTRRemindersListEditableSectionNameViewModel();
  (*(*(v18 - 8) + 56))(&v9[v17], 1, 1, v18);
  *&v9[OBJC_IVAR____TtC9Reminders45TTRIRemindersListEditableSectionNamePresenter_currentText] = 0;
  v9[OBJC_IVAR____TtC9Reminders45TTRIRemindersListEditableSectionNamePresenter_layoutStyle] = 2;
  v19 = &v9[OBJC_IVAR____TtC9Reminders45TTRIRemindersListEditableSectionNamePresenter_interactor];
  *v19 = a1;
  *(v19 + 1) = &protocol witness table for TTRRemindersListEditableSectionNameInteractor;
  v20 = &v9[OBJC_IVAR____TtC9Reminders45TTRIRemindersListEditableSectionNamePresenter_editingPresenter];
  *v20 = a3;
  *(v20 + 1) = &protocol witness table for TTRRemindersListEditableSectionNameEditingPresenter;
  v21 = OBJC_IVAR____TtC9Reminders45TTRIRemindersListEditableSectionNamePresenter_listLayout;
  v22 = type metadata accessor for TTRRemindersListLayout();
  (*(*(v22 - 8) + 32))(&v9[v21], a4, v22);
  sub_100004758(v25);
  return v9;
}

uint64_t sub_10022E404(uint64_t a1)
{
  v2 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = [objc_opt_self() daemonUserDefaults];
  v6 = [v5 enableAutoCompleteReminders];

  if (v6)
  {
    sub_10000794C(a1, v4, &qword_100772140, &qword_10062D9F0);
    v7 = type metadata accessor for TTRRemindersListViewModel.Item();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v4, 1, v7) != 1)
    {
      v9 = TTRRemindersListViewModel.Item.isEligibleForAutoCompleteReminder.getter();
      (*(v8 + 8))(v4, v7);
      return v9 & 1;
    }

    sub_1000079B4(v4, &qword_100772140, &qword_10062D9F0);
  }

  v9 = 0;
  return v9 & 1;
}

uint64_t sub_10022E574(uint64_t a1)
{
  v3 = sub_100058000(&unk_10076FCD0, &unk_1006304D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v24 - v4;
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRIRemindersListContextualMenuAssembly.DueDateContextMenuConfiguration();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRIRemindersListNavigationBarEditingTarget(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100233874(a1, v16, type metadata accessor for TTRIRemindersListNavigationBarEditingTarget);
  if ((*(v7 + 48))(v16, 1, v6) == 1)
  {
    sub_100460E40(_swiftEmptyArrayStorage);
    swift_allocObject();
    swift_weakInit();
    TTRIRemindersListContextualMenuAssembly.DueDateContextMenuConfiguration.init(showsMenuTitle:showsNoneOption:showsIcons:menuStateByPostponeType:handleSelection:)();
    v17 = static TTRIRemindersListContextualMenuAssembly.makeDueDateContextMenu(configuration:)();
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    (*(v7 + 32))(v9, v16, v6);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v18 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      (*(v18 + 224))(v9, ObjectType, v18);
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = type metadata accessor for TTRIPopoverAnchor();
      (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
    }

    sub_100058000(&qword_100772150, &unk_100635D00);
    v21 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_10062D400;
    (*(v7 + 16))(v22 + v21, v9, v6);
    v17 = sub_1001FF444(v22, 0, 1, v5);

    sub_1000079B4(v5, &unk_10076FCD0, &unk_1006304D0);
    (*(v7 + 8))(v9, v6);
  }

  return v17;
}

void sub_10022E970()
{
  v0._countAndFlagsBits = 0x7561666544206F4ELL;
  v0._object = 0xEF7473694C20746CLL;
  v1._countAndFlagsBits = 0xD00000000000004FLL;
  v1._object = 0x8000000100677CD0;
  TTRLocalizedString(_:comment:)(v0, v1);
  v2._object = 0x8000000100677D20;
  v3._countAndFlagsBits = 0xD000000000000051;
  v3._object = 0x8000000100677D60;
  v2._countAndFlagsBits = 0xD000000000000037;
  TTRLocalizedString(_:comment:)(v2, v3);
  v4 = String._bridgeToObjectiveC()();

  v5 = String._bridgeToObjectiveC()();

  v6 = [objc_opt_self() alertControllerWithTitle:v4 message:v5 preferredStyle:1];

  static TTRLocalizableStrings.Common.alertCancelButton.getter();
  v7 = String._bridgeToObjectiveC()();

  v8 = objc_opt_self();
  v9 = [v8 actionWithTitle:v7 style:1 handler:0];

  [v6 addAction:v9];
  static TTRLocalizableStrings.Common.settingsButton.getter();
  v10 = String._bridgeToObjectiveC()();

  v15[4] = sub_10011CA1C;
  v15[5] = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_1001762CC;
  v15[3] = &unk_10071B170;
  v11 = _Block_copy(v15);

  v12 = [v8 actionWithTitle:v10 style:0 handler:v11];
  _Block_release(v11);

  [v6 addAction:v12];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    [Strong presentViewController:v6 animated:1 completion:0];
  }
}

uint64_t sub_10022EBF8(uint64_t a1)
{
  v2 = sub_100058000(&unk_10076FCD0, &unk_1006304D0);
  __chkstk_darwin(v2 - 8);
  v29 = &v27 - v3;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRIRemindersListContextualMenuAssembly.HashtagsContextMenuConfiguration.CustomTagsOption();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for TTRIRemindersListContextualMenuAssembly.HashtagsContextMenuConfiguration();
  v12 = *(v28 - 8);
  __chkstk_darwin(v28);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TTRIRemindersListNavigationBarEditingTarget(0);
  __chkstk_darwin(v15 - 8);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100233874(a1, v17, type metadata accessor for TTRIRemindersListNavigationBarEditingTarget);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    (*(v9 + 104))(v11, enum case for TTRIRemindersListContextualMenuAssembly.HashtagsContextMenuConfiguration.CustomTagsOption.visible(_:), v8);
    sub_100461028(_swiftEmptyArrayStorage);
    swift_allocObject();
    swift_weakInit();
    swift_allocObject();
    swift_weakInit();
    swift_allocObject();
    swift_weakInit();
    TTRIRemindersListContextualMenuAssembly.HashtagsContextMenuConfiguration.init(showsMenuTitle:itemCount:customTagsOption:itemCountByHashtagLabel:fetchAllHashtagLabels:handleCustomTags:handleTagSelection:handleClearTags:)();
    v18 = static TTRIRemindersListContextualMenuAssembly.createHashtagsContextMenu(configuration:)();
    (*(v12 + 8))(v14, v28);
  }

  else
  {
    (*(v5 + 32))(v7, v17, v4);
    v19 = v30;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v20 = *(v19 + 24);
      ObjectType = swift_getObjectType();
      v22 = v29;
      (*(v20 + 224))(v7, ObjectType, v20);
      swift_unknownObjectRelease();
    }

    else
    {
      v23 = type metadata accessor for TTRIPopoverAnchor();
      v22 = v29;
      (*(*(v23 - 8) + 56))(v29, 1, 1, v23);
    }

    sub_100058000(&qword_100772150, &unk_100635D00);
    v24 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_10062D400;
    (*(v5 + 16))(v25 + v24, v7, v4);
    v18 = sub_100200EA8(v25, 0, v22);

    sub_1000079B4(v22, &unk_10076FCD0, &unk_1006304D0);
    (*(v5 + 8))(v7, v4);
  }

  return v18;
}

uint64_t sub_10022F12C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRRemindersListCreationTargetWithSectionID(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v29[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v29[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRIRemindersListNavigationBarEditingTarget(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v29[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100233874(a1, v16, type metadata accessor for TTRIRemindersListNavigationBarEditingTarget);
  if ((*(v5 + 48))(v16, 1, v4) != 1)
  {
    (*(v5 + 32))(v7, v16, v4);
    sub_100058000(&qword_100772150, &unk_100635D00);
    v25 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_10062D400;
    (*(v5 + 16))(v26 + v25, v7, v4);
    v24 = sub_100200688(v26, 0);

    (*(v5 + 8))(v7, v4);
    return v24;
  }

  v17 = *(v2 + 144);
  ObjectType = swift_getObjectType();
  v19 = *(v17 + 312);

  v19(0, sub_100233DC8, v2, ObjectType, v17);

  sub_100233874(v10, v13, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
  sub_10022E05C(v10, type metadata accessor for TTRRemindersListCreationTargetWithSectionID);
  v20 = sub_100223FA0(v13);
  if (!v20)
  {
    sub_10022E05C(v13, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
    return 0;
  }

  v21 = v20;
  v29[3] = sub_100003540(0, &qword_10076ABC0, REMList_ptr);
  v29[4] = &protocol witness table for REMList;
  v29[0] = v21;
  v22 = v21;
  v23 = TTRRemindersListPresenterCapabilityCore.assigneeCandidates(for:)();
  sub_100004758(v29);
  if (!v23)
  {
    sub_10022E05C(v13, type metadata accessor for TTRRemindersListReminderActionTargetExtended);

    return 0;
  }

  v24 = sub_100200450(v23);

  sub_10022E05C(v13, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
  return v24;
}

void *sub_10022F534()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TimeZone();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022DFF4(&unk_1007757A0, type metadata accessor for TTRIRemindersCommonPresenter, &unk_1006359C0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    static TimeZone.ttr_default.getter();
    Date.init()();
    v10 = static TTRITimeZonePickerAssembly.createViewControllerForModalPresentation(delegate:currentTimeZone:date:)();
    (*(v1 + 8))(v3, v0);
    [v9 presentViewController:v10 animated:1 completion:0];

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

void sub_10022F72C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v71 = a3;
  v62 = a2;
  v5 = sub_100058000(&unk_10076FCD0, &unk_1006304D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v60 = &v53 - v9;
  v61 = type metadata accessor for TTRIPopoverAnchor();
  v64 = *(v61 - 8);
  __chkstk_darwin(v61);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRIReminderListPickerModalPresentationStyle();
  v58 = *(v12 - 8);
  v59 = v12;
  __chkstk_darwin(v12);
  v57 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRReminderListPickerAction();
  v69 = *(v14 - 8);
  v70 = v14;
  __chkstk_darwin(v14);
  v63 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for REMListPickerDataView.PickerMode();
  v67 = *(v16 - 8);
  v68 = v16;
  __chkstk_darwin(v16);
  v66 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100058000(&qword_100775608, &qword_1006367C0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18 - 8);
  v22 = &v53 - v21;
  v23 = a1;
  v24 = sub_10024DEE4(a1);
  if (v24)
  {
    v26 = v24;
    v27 = v25;
    v53 = v7;
    v54 = v11;
    v56 = *(v3 + 88);
    swift_getObjectType();
    v65 = dispatch thunk of TTRRemindersListInteractorType.store.getter();
    v28 = swift_allocObject();
    swift_weakInit();
    sub_10000794C(v62, v22, &qword_100775608, &qword_1006367C0);
    v29 = (*(v19 + 80) + 40) & ~*(v19 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = v28;
    *(v30 + 24) = HIBYTE(v27) & 1;
    *(v30 + 32) = v23;
    sub_100016588(v22, v30 + v29, &qword_100775608, &qword_1006367C0);
    *(v30 + ((v20 + v29 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
    Strong = swift_unknownObjectWeakLoadStrong();
    v62 = v28;

    if (Strong && (v32 = [Strong navigationController], Strong, v32))
    {
      v56 = v32;
      v33 = v63;
    }

    else
    {
      v34 = swift_unknownObjectWeakLoadStrong();
      v33 = v63;
      if (!v34)
      {

LABEL_19:

        return;
      }

      v56 = v34;
    }

    v35 = &enum case for REMListPickerDataView.PickerMode.cloudKitOnlyAccounts(_:);
    if ((v27 & 1) == 0)
    {
      v35 = &enum case for REMListPickerDataView.PickerMode.allAccounts(_:);
    }

    (*(v67 + 104))(v66, *v35, v68);
    *v33 = (v27 & 0x100) == 0;
    (*(v69 + 104))(v33, enum case for TTRReminderListPickerAction.moveSelection(_:), v70);
    v36 = v61;
    v55 = *(v64 + 48);
    if (v55(v71, 1, v61) == 1)
    {
      v37 = v57;
      *v57 = 1;
      v38 = &enum case for TTRIReminderListPickerModalPresentationStyle.formSheet(_:);
    }

    else
    {
      v38 = &enum case for TTRIReminderListPickerModalPresentationStyle.popover(_:);
      v37 = v57;
    }

    v40 = v58;
    v39 = v59;
    (*(v58 + 104))(v37, *v38, v59);
    type metadata accessor for TTRIReminderListPickerAssembly();
    v41 = v66;
    v63 = v26;
    v57 = static TTRIReminderListPickerAssembly.createViewController(mode:action:store:selectedListID:showingInstructionsForMovingReminders:modalPresentationStyle:)();
    (*(v40 + 8))(v37, v39);
    (*(v69 + 8))(v33, v70);
    (*(v67 + 8))(v41, v68);
    swift_getObjectType();
    v42 = swift_allocObject();
    *(v42 + 16) = sub_10023104C;
    *(v42 + 24) = v30;

    dispatch thunk of TTRIReminderListPickerModuleInterface.completion.setter();
    v43 = v60;
    sub_10000794C(v71, v60, &unk_10076FCD0, &unk_1006304D0);
    if (v55(v43, 1, v36) == 1)
    {
      sub_1000079B4(v43, &unk_10076FCD0, &unk_1006304D0);
      v44 = v57;
    }

    else
    {
      v45 = v64;
      v46 = v54;
      (*(v64 + 32))(v54, v43, v36);
      v47 = v53;
      (*(v45 + 16))(v53, v46, v36);
      (*(v45 + 56))(v47, 0, 1, v36);
      v48 = v57;
      v49 = UIViewController.canPresentDCIDrillinPopover(withAnchor:)();
      sub_1000079B4(v47, &unk_10076FCD0, &unk_1006304D0);
      v44 = v48;
      if (v49)
      {
        UIViewController.setupForAdaptivePopoverPresentation(anchoredAt:)();
        v50 = v56;
        [v56 presentViewController:v48 animated:1 completion:0];

        swift_unknownObjectRelease();

        (*(v45 + 8))(v46, v36);

        return;
      }

      (*(v45 + 8))(v46, v36);
    }

    v51 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v44];
    v52 = v56;
    [v56 presentViewController:v51 animated:1 completion:0];

    swift_unknownObjectRelease();

    goto LABEL_19;
  }
}

uint64_t sub_10022FF94(void *a1, __n128 a2)
{
  v45 = type metadata accessor for UTType();
  v3 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for TTRSection();
  v41 = *(v42 - 8);
  *&v5 = __chkstk_darwin(v42).n128_u64[0];
  v40 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 items];
  sub_100003540(0, &qword_10076BAC0, UIDragItem_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v10 = 0;
    v49 = v8 & 0xFFFFFFFFFFFFFF8;
    v50 = v8 & 0xC000000000000001;
    v48 = 0x8000000100677B80;
    v46 = 0x8000000100677BB0;
    v43 = v3 + 1;
    v11 = &type metadata for String;
    v12 = &protocol witness table for String;
    v47 = v8;
    while (1)
    {
      if (v50)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v10 >= *(v49 + 16))
        {
          goto LABEL_26;
        }

        v13 = *(v8 + 8 * v10 + 32);
      }

      v3 = v13;
      v14 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v15 = type metadata accessor for TTRIRemindersListDragReminder();
      v53 = 0xD000000000000029;
      v54 = v48;
      v16 = v3;
      AnyHashable.init<A>(_:)();
      UIDragItem.localObject<A>(ofType:forKey:)();
      sub_100077654(v55);
      v17 = v56;
      if (v56)
      {
        v28 = *&v56[OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder_reminder];
        v29 = v56[OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder_isFromRecentlyDeletedList];
        v30 = objc_allocWithZone(v15);
        v30[OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder____lazy_storage___hasSubtasks] = 2;
        *&v30[OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder_reminder] = v28;
        v30[OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder_isFromRecentlyDeletedList] = v29;
        v51.receiver = v30;
        v51.super_class = v15;
        v31 = v28;
        v32 = objc_msgSendSuper2(&v51, "init");

        return 1;
      }

      v18 = type metadata accessor for TTRIRemindersListDragSection(0);
      v53 = 0xD000000000000027;
      v54 = v46;
      v19 = v16;
      v20 = v11;
      v21 = v12;
      AnyHashable.init<A>(_:)();
      UIDragItem.localObject<A>(ofType:forKey:)();
      sub_100077654(v55);
      v22 = v56;
      if (v56)
      {
        v33 = v41;
        v34 = *(v41 + 16);
        v35 = v40;
        v36 = v42;
        v34(v40, &v56[OBJC_IVAR____TtC9Reminders28TTRIRemindersListDragSection_section], v42);
        v37 = objc_allocWithZone(v18);
        v34(&v37[OBJC_IVAR____TtC9Reminders28TTRIRemindersListDragSection_section], v35, v36);
        v52.receiver = v37;
        v52.super_class = v18;
        v38 = objc_msgSendSuper2(&v52, "init");

        (*(v33 + 8))(v35, v36);

        return 1;
      }

      v23 = [v19 itemProvider];
      sub_100003540(0, &qword_10076FCB0, UIImage_ptr);
      if ([v23 canLoadObjectOfClass:swift_getObjCClassFromMetadata()] & 1) != 0 || (v24 = v44, static UTType.image.getter(), UTType.identifier.getter(), (*v43)(v24, v45), v25 = String._bridgeToObjectiveC()(), , v26 = objc_msgSend(v23, "hasItemConformingToTypeIdentifier:", v25), v25, (v26) || (sub_100003540(0, &unk_1007755E0, NSURL_ptr), (objc_msgSend(v23, "canLoadObjectOfClass:", swift_getObjCClassFromMetadata())) || (sub_100003540(0, &qword_1007865E0, NSUserActivity_ptr), (objc_msgSend(v23, "canLoadObjectOfClass:", swift_getObjCClassFromMetadata())))
      {
      }

      else
      {
        sub_100003540(0, &qword_1007755F0, NSString_ptr);
        v3 = [v23 canLoadObjectOfClass:swift_getObjCClassFromMetadata()];

        if ((v3 & 1) == 0)
        {

          v11 = v20;
          goto LABEL_16;
        }
      }

      v3 = [v19 itemProvider];
      type metadata accessor for TTRIAccountsListsDragItem(0);
      v27 = [v3 canLoadObjectOfClass:swift_getObjCClassFromMetadata()];

      v11 = v20;
      if ((v27 & 1) == 0)
      {

        return 1;
      }

LABEL_16:
      ++v10;
      v12 = v21;
      v8 = v47;
      if (v14 == i)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

LABEL_28:

  return 0;
}

uint64_t sub_100230604(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v49 = *(v2 - 8);
  v50 = v2;
  __chkstk_darwin(v2);
  v47 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for DateComponents();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRReminderEditor.WeekendType();
  v52 = *(v6 - 1);
  v53 = v6;
  __chkstk_darwin(v6);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v51 = &v45 - v10;
  v11 = type metadata accessor for TTRRemindersListPostponeType();
  v12 = *(v11 - 1);
  __chkstk_darwin(v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v45 - v16;
  v19 = __chkstk_darwin(v18);
  v21 = &v45 - v20;
  v22 = *(v12 + 16);
  v22(&v45 - v20, a1, v11, v19);
  v23 = (*(v12 + 88))(v21, v11);
  if (v23 != enum case for TTRRemindersListPostponeType.none(_:))
  {
    if (v23 == enum case for TTRRemindersListPostponeType.today(_:))
    {
      v32 = 0x65754420656B614DLL;
      v33 = 0xEE007961646F5420;
      v34 = 0xD00000000000003ELL;
      v35 = 0x8000000100677B40;
      return TTRLocalizedString(_:comment:)(*&v32, *&v34)._countAndFlagsBits;
    }

    if (v23 == enum case for TTRRemindersListPostponeType.tomorrow(_:))
    {
      v33 = 0x8000000100677AD0;
      v34 = 0xD000000000000041;
      v35 = 0x8000000100677AF0;
      v32 = 0xD000000000000011;
      return TTRLocalizedString(_:comment:)(*&v32, *&v34)._countAndFlagsBits;
    }

    if (v23 == enum case for TTRRemindersListPostponeType.weekend(_:))
    {
      a1 = type metadata accessor for TTRReminderEditor();
      v37 = v47;
      Date.init()();
      v38 = v51;
      static TTRReminderEditor.weekendDueDateComponents(now:)();
      (*(v49 + 8))(v37, v50);
      (*(v46 + 8))(v5, v48);
      v12 = v52;
      v11 = v53;
      (*(v52 + 16))(v8, v38, v53);
      v39 = (*(v12 + 88))(v8, v11);
      if (v39 == enum case for TTRReminderEditor.WeekendType.thisWeekend(_:))
      {
        v40 = "Make Due This Weekend";
        v41 = "Make Due This Weekend";
LABEL_19:
        v42._countAndFlagsBits = 0xD000000000000015;
        v42._object = ((v41 - 32) | 0x8000000000000000);
        v43._countAndFlagsBits = 0xD000000000000045;
        v43._object = (v40 | 0x8000000000000000);
        countAndFlagsBits = TTRLocalizedString(_:comment:)(v42, v43)._countAndFlagsBits;
        (*(v12 + 8))(v38, v11);
        return countAndFlagsBits;
      }

      if (v39 == enum case for TTRReminderEditor.WeekendType.nextWeekend(_:))
      {
        v40 = "Make Due Next Weekend";
        v41 = "Make Due Next Weekend";
        goto LABEL_19;
      }
    }

    else
    {
      if (v23 == enum case for TTRRemindersListPostponeType.startOfWeekday(_:))
      {
        v32 = 0xD000000000000012;
        v33 = 0x8000000100677980;
        v34 = 0xD000000000000042;
        v35 = 0x80000001006779A0;
        return TTRLocalizedString(_:comment:)(*&v32, *&v34)._countAndFlagsBits;
      }

      if (v23 == enum case for TTRRemindersListPostponeType.custom(_:))
      {
        goto LABEL_2;
      }
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    goto LABEL_22;
  }

LABEL_2:
  if (qword_100767008 != -1)
  {
LABEL_22:
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100003E30(v24, qword_1007741F0);
  (v22)(v17, a1, v11);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v54 = v53;
    *v27 = 136315138;
    (v22)(v14, v17, v11);
    v28 = String.init<A>(describing:)();
    v30 = v29;
    (*(v12 + 8))(v17, v11);
    v31 = sub_100004060(v28, v30, &v54);

    *(v27 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v25, v26, "Trying to get keyCommandTitle for unsupported postponeType %s", v27, 0xCu);
    sub_100004758(v53);
  }

  else
  {

    (*(v12 + 8))(v17, v11);
  }

  return 0;
}

uint64_t sub_100230CD0(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v3 = sub_100058000(&unk_10076FCD0, &unk_1006304D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v24 - v4;
  v6 = sub_100058000(&qword_100775608, &qword_1006367C0);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100003E30(v9, qword_1007741F0);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  v24 = xmmword_10062D400;
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 1835365481;
  *(inited + 40) = 0xE400000000000000;
  v11 = type metadata accessor for TTRRemindersListViewModel.Item();
  *(inited + 72) = v11;
  v12 = sub_1000317B8((inited + 48));
  v13 = *(v11 - 8);
  v14 = *(v13 + 16);
  v15 = v13 + 16;
  v14(v12, a1, v11);
  v16 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
  sub_10000FD44("Reminder list move items to Any List {items: %@}", 48, 2, v16);

  sub_100058000(&qword_100772150, &unk_100635D00);
  v17 = (*(v15 + 64) + 32) & ~*(v15 + 64);
  v18 = swift_allocObject();
  *(v18 + 16) = v24;
  v14((v18 + v17), a1, v11);
  v19 = enum case for REMRDLUserOperationDetail.rdl_swipeToMoveAndRecover(_:);
  v20 = type metadata accessor for REMRDLUserOperationDetail();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v8, v19, v20);
  (*(v21 + 56))(v8, 0, 1, v20);
  static TTRIPopoverAnchor.sourceView(_:permittedArrowDirections:)();
  v22 = type metadata accessor for TTRIPopoverAnchor();
  (*(*(v22 - 8) + 56))(v5, 0, 1, v22);
  sub_10022F72C(v18, v8, v5);

  sub_1000079B4(v5, &unk_10076FCD0, &unk_1006304D0);
  return sub_1000079B4(v8, &qword_100775608, &qword_1006367C0);
}

void sub_10023104C(uint64_t a1)
{
  v3 = *(sub_100058000(&qword_100775608, &qword_1006367C0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100211E84(a1, v5, v6, v7, (v1 + v4), v8);
}

uint64_t sub_100231128()
{
  v1 = *(type metadata accessor for TTRListOrCustomSmartList() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_1002126D0(v2, v3, v4, v5);
}

uint64_t sub_100231190(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for TTRRemindersListViewModel.Item() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10001AA38;

  return sub_100208078(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_1002312CC(uint64_t a1)
{
  v4 = *(type metadata accessor for TTRRemindersListViewModel.Item() - 8);
  v5 = (*(v4 + 80) + 41) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10001AA38;

  return sub_100207BC0(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_1002313D4()
{
  v0 = type metadata accessor for TTRSectionID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v23 - v5;
  v7 = type metadata accessor for TTRSectionLite();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = &v23 - v13;
  v15 = sub_1002E2EA8(v12)[2];

  if (!v15)
  {
    return 0;
  }

  v17 = sub_1002E2EA8(v16)[2];

  if (v17 == 1)
  {
    v19 = sub_1002E2EA8(v18);
    if (v19[2])
    {
      (*(v8 + 16))(v10, v19 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7);

      (*(v8 + 32))(v14, v10, v7);
      TTRSectionLite.sectionID.getter();
      (*(v1 + 104))(v3, enum case for TTRSectionID.sectionless(_:), v0);
      v20 = static TTRSectionID.== infix(_:_:)();
      v21 = *(v1 + 8);
      v21(v3, v0);
      v21(v6, v0);
      (*(v8 + 8))(v14, v7);
      if (v20)
      {
        return 0;
      }
    }

    else
    {
    }
  }

  return 1;
}

uint64_t sub_10023166C(uint64_t a1)
{
  v3 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - v4;
  v6 = type metadata accessor for TTRIRemindersListContextualMenuAssembly.IndentOutdentContextMenuActionConfiguration();
  v25 = *(v6 - 8);
  v26 = v6;
  __chkstk_darwin(v6);
  v22 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v1;
  v8 = *(v1 + 144);
  ObjectType = swift_getObjectType();
  v10 = (*(v8 + 544))(a1, ObjectType, v8);
  v11 = *(v8 + 536);
  v23 = a1;
  v12 = v11(a1, ObjectType, v8);
  v13 = v12;
  if (v10)
  {

    if (!v13)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  if (v12)
  {
LABEL_3:
  }

LABEL_5:
  (*(v8 + 152))(ObjectType, v8);
  v14 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v5, 1, v14) == 1)
  {
    sub_1000079B4(v5, &unk_10078A380, &qword_10062DE60);
  }

  else
  {
    TTRRemindersListViewModel.ListInfo.shouldCategorizeGroceryItems.getter();
    (*(v15 + 8))(v5, v14);
  }

  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v23;

  v18 = v22;
  TTRIRemindersListContextualMenuAssembly.IndentOutdentContextMenuActionConfiguration.init(numberOfTasksOutdented:numberOfTopLevelRemindersIndented:isForGroceries:handleSelection:)();
  v19 = static TTRIRemindersListContextualMenuAssembly.makeIndentOutdentContextMenuAction(configuration:)();
  (*(v25 + 8))(v18, v26);
  return v19;
}

Class sub_100231998()
{
  v1 = (*(*v0 + 1600))();
  preferredElementSize = _swiftEmptyArrayStorage;
  v16 = _swiftEmptyArrayStorage;
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v1 + 32;
    do
    {
      sub_100233FB0(v4, v15);
      sub_100233FB0(v15, v12);
      if (v14)
      {
        v10[0] = v12[0];
        v10[1] = v12[1];
        v11 = v13;
        v5 = (*(*v0 + 1608))(v10);
        sub_100077654(v10);
      }

      else
      {
        v5 = sub_1001FD138(LOBYTE(v12[0]));
      }

      sub_10023400C(v15);
      if (v5)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        preferredElementSize = v16;
      }

      v4 += 48;
      --v3;
    }

    while (v3);
  }

  sub_100003540(0, &unk_10076B890, UIMenu_ptr);
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v17.value.super.isa = 0;
  v17.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v6, 0, v17, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v9).super.super.isa;

  return isa;
}

void sub_100231B64()
{
  v1 = v0;
  v2 = (*(*v0 + 1656))();
  if (v2)
  {
    v9 = v2;
    v3 = [v2 capabilities];
    v4 = [v3 supportsTemplates];

    if (v4)
    {
      if (qword_100767008 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_100003E30(v5, qword_1007741F0);
      sub_100058000(&unk_100775610, &unk_1006323A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10062D400;
      *(inited + 32) = 0x49746E756F636361;
      *(inited + 40) = 0xE900000000000044;
      v7 = [v9 objectID];
      *(inited + 72) = sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
      *(inited + 48) = v7;
      v8 = sub_100008E04(inited);
      swift_setDeallocating();
      sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
      sub_10000FD44("Reminders List show templates list {accountID: %@}", 50, 2, v8);

      sub_100133E38(v9, v1, &off_10071A8F0);
    }

    else
    {
    }
  }
}

uint64_t sub_100231D6C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v20 = *(v4 - 8);
  v21 = v4;
  __chkstk_darwin(v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTime();
  v19 = v7;
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v17 - v12;
  sub_100003540(0, &qword_100777780, OS_dispatch_queue_ptr);
  v17 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v18 = *(v8 + 8);
  v18(v10, v7);
  aBlock[4] = sub_10023212C;
  v24 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001047C;
  aBlock[3] = &unk_10071B148;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10022DFF4(&qword_10076B7D0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100058000(&qword_100780A50, &qword_100635D30);
  sub_10000E188(&qword_10076B7E0, &qword_100780A50, &qword_100635D30, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v15 = v17;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v14);

  (*(v22 + 8))(v3, v1);
  (*(v20 + 8))(v6, v21);
  return (v18)(v13, v19);
}

uint64_t sub_1002321B8()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.Item();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 41) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1002322B0@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result & 1;
  return result;
}

char *sub_100232344(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  return sub_10022B918(a1, v1 + v5, *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8)), v3);
}

uint64_t sub_10023246C@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for TTRIRemindersCommonPresenter(0);
  a1[4] = &off_10071AA88;
  *a1 = v1;
}

uint64_t sub_1002324B8(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(type metadata accessor for REMNavigationSpecifier.SectionPathSpecifier() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_10022B6D8(a1, v1 + v5, *(v1 + v6), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8)), v3);
}

uint64_t sub_100232604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 16);
  v12 = *(type metadata accessor for REMNavigationSpecifier.SectionPathSpecifier() - 8);
  v13 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v14 = (*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_10022B490(a1, v5 + v13, *(v5 + v14), *(v5 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8)), v11, a2, a3, a4, a5);
}

uint64_t sub_100232710()
{
  v1 = type metadata accessor for REMNavigationSpecifier.SectionPathSpecifier();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100232818(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_10022AC44(a1, v1 + v5, *(v1 + v6), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), v3);
}

uint64_t sub_1002328F4(uint64_t a1)
{
  v2 = sub_100058000(&unk_100775660, &qword_10062F6B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 104);
  v10 = OBJC_IVAR____TtC9Reminders35TTRRemindersListPresenterCapability_currentShareURL;
  swift_beginAccess();
  sub_10000794C(v9 + v10, v4, &unk_100775660, &qword_10062F6B0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_1000079B4(v4, &unk_100775660, &qword_10062F6B0);
  }

  (*(v6 + 32))(v8, v4, v5);
  TTRSharedWithYouProvider.postNotice(for:with:)();
  return (*(v6 + 8))(v8, v5);
}

void sub_100232AC8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRIViewControllerDismissalState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!swift_weakLoadStrong())
  {
    __break(1u);
    goto LABEL_9;
  }

  swift_unknownObjectRetain();

  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == enum case for TTRIViewControllerDismissalState.dismissedOrPopped(_:))
  {
    goto LABEL_5;
  }

  if (v8 != enum case for TTRIViewControllerDismissalState.requested(_:))
  {
LABEL_9:
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return;
  }

  sub_100133054(1, 0, 0);
LABEL_5:
  swift_unknownObjectRelease();
  v9 = *(v2 + 24);
  if (v9)
  {
    v10 = *(v2 + 32);

    v9(0);
    sub_1000301AC(v9, v10);
  }
}

uint64_t sub_100232C60(uint64_t a1)
{
  v3 = type metadata accessor for TTRIViewControllerDismissalState();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_unknownObjectRetain();

    (*(v4 + 16))(v6, a1, v3);
    v8 = (*(v4 + 88))(v6, v3);
    if (v8 != enum case for TTRIViewControllerDismissalState.dismissedOrPopped(_:))
    {
      if (v8 != enum case for TTRIViewControllerDismissalState.requested(_:))
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }

      sub_100133054(1, 0, 0);
    }

    result = swift_unknownObjectRelease();
  }

  v9 = *(v1 + 40);
  if (v9)
  {
    return v9(0);
  }

  return result;
}

uint64_t sub_100232DE4(uint64_t a1)
{
  v2 = type metadata accessor for TTRIViewControllerDismissalState();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_unknownObjectRetain();

    (*(v3 + 16))(v5, a1, v2);
    v7 = (*(v3 + 88))(v5, v2);
    if (v7 != enum case for TTRIViewControllerDismissalState.dismissedOrPopped(_:))
    {
      if (v7 != enum case for TTRIViewControllerDismissalState.requested(_:))
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }

      sub_100133054(1, 0, 0);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100232FAC(uint64_t a1)
{
  v2 = type metadata accessor for TTRIViewControllerDismissalState();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_weakLoadStrong())
  {
    swift_unknownObjectRetain();

    (*(v3 + 16))(v5, a1, v2);
    v6 = (*(v3 + 88))(v5, v2);
    if (v6 == enum case for TTRIViewControllerDismissalState.dismissedOrPopped(_:))
    {
      return swift_unknownObjectRelease();
    }

    if (v6 == enum case for TTRIViewControllerDismissalState.requested(_:))
    {
      sub_100133054(1, 0, 0);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void sub_100233138(uint64_t a1)
{
  v14 = type metadata accessor for TTRRemindersListEditingSessionDisplayTargets();
  v3 = *(v14 - 8);
  __chkstk_darwin(v14);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  static TTRLocalizableStrings.UndoAction.addAttachments.getter();
  v7 = String._bridgeToObjectiveC()();

  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  *(v8 + 24) = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100233498;
  *(v9 + 24) = v8;
  aBlock[4] = sub_100068444;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026440;
  aBlock[3] = &unk_10071B788;
  v10 = _Block_copy(aBlock);

  [v6 withActionName:v7 block:v10];

  _Block_release(v10);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  else
  {
    v13 = *(v1 + 32);
    swift_getObjectType();
    sub_100058000(&qword_10076C6E0, &unk_100630570);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_10062D3F0;
    static TTRRemindersListEditingSessionDisplayTargets.cell.getter();
    static TTRRemindersListEditingSessionDisplayTargets.reminderEditingComponents.getter();
    aBlock[0] = v11;
    sub_10022DFF4(&unk_1007756B0, &type metadata accessor for TTRRemindersListEditingSessionDisplayTargets, &protocol conformance descriptor for TTRRemindersListEditingSessionDisplayTargets);
    sub_100058000(&qword_10076C6E8, &unk_100635D60);
    sub_10000E188(&unk_1007756C0, &qword_10076C6E8, &unk_100635D60, &protocol conformance descriptor for [A]);
    v12 = v14;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    dispatch thunk of TTRRemindersListEditingSession.setNeedsDisplay(_:)();
    (*(v3 + 8))(v5, v12);
    sub_1002200D4();
  }
}

uint64_t sub_1002334CC()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = (result + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_currentLocationPickerModuleDelegate);
    *v1 = 0;
    v1[1] = 0;
    swift_unknownObjectRelease();
    v2 = swift_allocObject();
    swift_weakInit();

    sub_100213A1C(sub_10023357C, v2);
  }

  return result;
}

void sub_100233584(uint64_t a1)
{
  v2 = type metadata accessor for TimeZone();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003E30(v6, qword_1007741F0);
  (*(v3 + 16))(v5, a1, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136446210;
    sub_10022DFF4(&qword_1007756E8, &type metadata accessor for TimeZone, &protocol conformance descriptor for TimeZone);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    (*(v3 + 8))(v5, v2);
    v14 = sub_100004060(v11, v13, &v18);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "TTRIRemindersCommonPresenter: Set time zone override to timeZone: %{public}s", v9, 0xCu);
    sub_100004758(v10);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  v15 = [objc_opt_self() daemonUserDefaults];
  TimeZone.identifier.getter();
  v16 = String._bridgeToObjectiveC()();

  [v15 setTimeZoneOverride:v16];
}

uint64_t sub_100233874(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100233908(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for TTRIRemindersListNavigationBarEditingTarget(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_100058000(&qword_100775740, &qword_10063D870) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10001AA38;

  return sub_100226DC4(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

void sub_100233A74(uint64_t a1)
{
  v3 = *(sub_100058000(&qword_100775740, &qword_10063D870) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1002274F4(a1, v4);
}

uint64_t sub_100233B28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[14];
  v8 = v1[15];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001AA38;

  return sub_100227F8C(v10, a1, v4, v5, v6, (v1 + 5), v7, v8);
}

uint64_t sub_100233C64(uint64_t a1)
{
  v4 = *(sub_100058000(&unk_10076FCD0, &unk_1006304D0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10001AA38;

  return sub_100225374(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_100233DD4(uint64_t a1)
{
  v4 = *(type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier.DateVisibleSection() - 8);
  v5 = (*(v4 + 80) + 105) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001AA38;

  return sub_100227C48(a1, v6, v7, v8, (v1 + 5), v1 + v5);
}

uint64_t sub_100233EFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001AA38;

  return sub_100223CCC(a1, v4, v5, v6);
}

uint64_t sub_10023409C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100234104(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001AA38;

  return sub_100229228(a1, v4, v5, v7, v6);
}

void sub_1002341C4(void *a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v5 = [Strong presentedViewController];
    if (v5)
    {
      v6 = v5;
      v7 = swift_allocObject();
      *(v7 + 16) = v12;
      *(v7 + 24) = a1;
      v8 = a2 & 1;
      *(v7 + 32) = v8;
      aBlock[4] = sub_10023A490;
      aBlock[5] = v7;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10001047C;
      aBlock[3] = &unk_10071BAD0;
      v9 = _Block_copy(aBlock);
      v10 = v12;
      v11 = a1;

      [v6 dismissViewControllerAnimated:v8 completion:v9];

      _Block_release(v9);
    }

    else
    {
      [v12 presentViewController:a1 animated:a2 & 1 completion:0];
    }
  }
}

uint64_t sub_100234344(uint64_t a1)
{
  v53 = a1;
  v1 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v1 - 8);
  v48 = v46 - v2;
  v3 = type metadata accessor for TTRRemindersListViewModel.Item();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&unk_10076FCD0, &unk_1006304D0);
  __chkstk_darwin(v7 - 8);
  v46[0] = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v46 - v10;
  v12 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier.DateVisibleSection();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v47 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46[1] = v14;
  __chkstk_darwin(v15);
  v17 = v46 - v16;
  v18 = type metadata accessor for TTRIRemindersCommonPresenter.NavigationBarEditingTarget(0);
  __chkstk_darwin(v18);
  v20 = (v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __chkstk_darwin(v21);
  v24 = v46 - v23;
  (*(v4 + 16))(v46 - v23, v53, v3, v22);
  swift_storeEnumTagMultiPayload();
  v52 = v13;
  v25 = *(v13 + 104);
  v51 = v17;
  v53 = v12;
  v25(v17, enum case for REMNavigationSpecifier.ReminderPathSpecifier.DateVisibleSection.date(_:), v12);
  v26 = type metadata accessor for TTRIPopoverAnchor();
  v27 = *(*(v26 - 8) + 56);
  v27(v11, 1, 1, v26);
  v50 = v24;
  sub_100233874(v24, v20, type metadata accessor for TTRIRemindersCommonPresenter.NavigationBarEditingTarget);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = v49;
    v29 = *v20;
    if ([v29 presentationSourceItem])
    {
      swift_unknownObjectRetain();
      v30 = v46[0];
      static TTRIPopoverAnchor.sourceItem(_:permittedArrowDirections:)();
      swift_unknownObjectRelease_n();
      v31 = 0;
    }

    else
    {
      v31 = 1;
      v30 = v46[0];
    }

    v27(v30, v31, 1, v26);
    sub_100227684(v30, v61);

    sub_1000079B4(v30, &unk_10076FCD0, &unk_1006304D0);
  }

  else
  {
    (*(v4 + 32))(v6, v20, v3);
    v32 = v49;
    v33 = sub_1002111BC(v6, v11, 0, 0, v61);
    (*(v4 + 8))(v6, v3, v33);
    v28 = v32;
  }

  sub_10000794C(v61, &v54, &qword_100775748, &qword_100635DC0);
  if (v54)
  {
    v59[2] = v56;
    v59[3] = v57;
    v60 = v58;
    v59[0] = v54;
    v59[1] = v55;
    *(v28 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_currentDetailModuleEventHandler) = v57;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v34 = type metadata accessor for TaskPriority();
    v35 = v48;
    (*(*(v34 - 8) + 56))(v48, 1, 1, v34);
    sub_100233AF0(v59, &v54);
    v36 = v52;
    v37 = v47;
    v38 = v51;
    v39 = v53;
    (*(v52 + 16))(v47, v51, v53);
    type metadata accessor for MainActor();

    v40 = static MainActor.shared.getter();
    v41 = (*(v36 + 80) + 105) & ~*(v36 + 80);
    v42 = swift_allocObject();
    v43 = v54;
    *(v42 + 56) = v55;
    v44 = v57;
    *(v42 + 72) = v56;
    *(v42 + 88) = v44;
    *(v42 + 16) = v40;
    *(v42 + 24) = &protocol witness table for MainActor;
    *(v42 + 32) = v28;
    *(v42 + 104) = v58;
    *(v42 + 40) = v43;
    (*(v36 + 32))(v42 + v41, v37, v39);
    sub_10009E31C(0, 0, v35, &unk_100635E40, v42);

    sub_100233BFC(v59);
    sub_1000079B4(v61, &qword_100775748, &qword_100635DC0);
    sub_1000079B4(v11, &unk_10076FCD0, &unk_1006304D0);
    (*(v36 + 8))(v38, v39);
    return sub_10022E05C(v50, type metadata accessor for TTRIRemindersCommonPresenter.NavigationBarEditingTarget);
  }

  else
  {
    sub_1000079B4(v61, &qword_100775748, &qword_100635DC0);
    sub_1000079B4(v11, &unk_10076FCD0, &unk_1006304D0);
    (*(v52 + 8))(v51, v53);
    sub_10022E05C(v50, type metadata accessor for TTRIRemindersCommonPresenter.NavigationBarEditingTarget);
    return sub_1000079B4(&v54, &qword_100775748, &qword_100635DC0);
  }
}

uint64_t sub_100234AE0(uint64_t a1)
{
  sub_10022A0D0(a1, &v13);
  if (!v13)
  {
    return sub_1000079B4(&v13, &qword_1007757C8, &qword_100635E38);
  }

  v17 = v13;
  sub_100005FD0(&v14, v18);
  v2 = v17;
  sub_100005FD0(v18, &v13);
  type metadata accessor for ReminderDetailModuleDelegate();
  v3 = swift_allocObject();
  swift_weakInit();
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  swift_weakAssign();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  sub_1000301AC(v4, v5);
  v6 = sub_10022DFF4(&qword_100775658, type metadata accessor for ReminderDetailModuleDelegate, &unk_100635C00);
  v7 = (v1 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_currentDetailModuleEventHandler);
  *v7 = v3;
  v7[1] = v6;

  swift_unknownObjectRelease();
  v8 = *(v1 + 88);
  v9 = v15;
  v10 = v16;
  v11 = sub_10000C36C(&v13, v15);
  sub_100138E84(v2, 1, 1, v3, v6, v11, v8, v9, v10);

  return sub_100004758(&v13);
}

uint64_t sub_100234C54()
{
  v1 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier.DateVisibleSection();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 105) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  sub_100004758((v0 + 48));
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

double sub_100234D44(uint64_t a1)
{
  v3 = *(sub_100058000(&qword_1007757F0, &unk_10062DE70) - 8);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_1002178B8(v4, a1, v5, v6, v7, v8);
}

unint64_t sub_100234DC8()
{
  result = qword_1007757F8;
  if (!qword_1007757F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007757F8);
  }

  return result;
}

uint64_t sub_100234E28(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

Class sub_100234E38(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRemindersListViewModel.Item() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for TTRIRemindersCommonPresenter.ContextMenuIdentifier.Action(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for URL() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1002156A0(a1, *(v1 + 16), v1 + v4, v1 + v7, v1 + v10, *(v1 + v11), *(v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_100234FE0(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRemindersListViewModel.Item() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for TTRIRemindersCommonPresenter.ContextMenuIdentifier.Action(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for URL() - 8);
  v10 = *(v1 + 16);
  v11 = v1 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80));

  sub_1002162EC(a1, v10, v1 + v4, v1 + v7, v11);
}

uint64_t sub_10023511C(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRemindersListViewModel.Item() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for URL() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + v8);
  v13 = *(v1 + v9);
  v14 = *(v1 + v10);
  v15 = *(v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100216D68(a1, v11, v1 + v4, v1 + v7, v12, v13, v14, v15);
}

uint64_t sub_10023525C()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.Item();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10023534C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v4 = *(type metadata accessor for TTRRemindersListViewModel.Item() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v2 + 16);
  v7 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v6, v2 + v5, v7);
}

uint64_t sub_100235448(void (*a1)(uint64_t, unint64_t, void), uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100216B58(a1, a2, v6);
}

uint64_t sub_1002354D0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100235550(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001AA38;

  return sub_1002144BC(a1, v4, v5, v7, v6);
}

uint64_t sub_100235610(uint64_t a1)
{
  sub_100058000(&qword_100775608, &qword_1006367C0);
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10001AA38;

  return sub_100228814(a1, v3, v4, v5, v6, v7, v8, v9);
}

double sub_1002357B8(uint64_t a1)
{
  v3 = *(sub_100058000(&unk_10076FCD0, &unk_1006304D0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return sub_100213DD4(a1, v4, v5, v6);
}

uint64_t sub_1002358B0(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_10023596C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t sub_100235A14(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001AA38;

  return sub_100213234(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100235AE0()
{
  v1 = *(sub_100058000(&unk_10076FCD0, &unk_1006304D0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for TTRIPopoverAnchor();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_100235C08(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_100058000(&unk_10076FCD0, &unk_1006304D0) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = (v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)));

  sub_100212D2C(a1, a2, v6, v7, v8);
}

uint64_t sub_100235C98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001AA38;

  return sub_10020CAB4(a1, v4, v5, v6);
}

uint64_t sub_100235D54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001AA3C;

  return sub_100212A18(a1, v4, v5, v7, v6);
}

void sub_100235E4C(char a1)
{
  v3 = *(type metadata accessor for TTRRemindersListSectionMenuCapabilities() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1002119E4(a1 & 1, v5, v1 + v4, v6);
}

uint64_t sub_100235FDC(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for TTRRemindersListViewModel.Item() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_100236054(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001AA38;

  return sub_10020EB24(a1, v4, v5, v6);
}

uint64_t sub_100236108(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001AA38;

  return sub_10020E918(a1, v4, v5, v7, v6);
}

uint64_t sub_1002361D8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100236260(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001AA38;

  return sub_10020CAB4(a1, v4, v5, v6);
}

uint64_t sub_100236314(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001AA38;

  return sub_10020CAB4(a1, v4, v5, v6);
}

uint64_t sub_1002363E0()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.Item();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for TTRRemindersListPostponeType();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 16, v10 | 7);
}

uint64_t sub_100236560(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v5 = *(type metadata accessor for TTRRemindersListViewModel.Item() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for TTRRemindersListPostponeType() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_100228750(a1, *(v2 + 16), v2 + v6, v2 + v9, *v10, *(v10 + 8), a2);
}

uint64_t sub_100236698(void (*a1)(void), void (*a2)(void))
{
  swift_unknownObjectRelease();
  a1(*(v2 + 32));
  a2(*(v2 + 40));

  return _swift_deallocObject(v2, 48, 7);
}

uint64_t sub_100236700(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001AA38;

  return sub_10020C85C(a1, v4, v5, v7, v6);
}

uint64_t sub_1002367F8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100236840(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001AA38;

  return sub_10020C360(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100236924@<X0>(uint64_t *a2@<X8>)
{
  swift_getObjectType();
  result = dispatch thunk of TTRRemindersListPresenterCapabilityCoreViewModelSourceType.remReminder(for:)();
  *a2 = result;
  return result;
}

uint64_t sub_100236990()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1002369EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10001AA38;

  return sub_10020C058(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_100236B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for TTRRemindersListViewModel.Item() - 8);
  v8 = *(v3 + 16);
  v9 = v3 + ((*(v7 + 80) + 24) & ~*(v7 + 80));

  sub_10020B854(a1, a2, a3, v8, v9);
}

uint64_t sub_100236BF4(void (*a1)(void, __n128), uint64_t a2)
{

  (a1)(*(v2 + 24));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_100236C50(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return _swift_deallocObject(v2, 40, 7);
}

void sub_100236CB4(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for TTRRemindersListViewModel.Item() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for TTRIPopoverAnchor() - 8);
  v9 = *(v2 + 16);
  v10 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  sub_10020A844(a1, a2, v9, v2 + v6, v10);
}

uint64_t sub_100236D9C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for TTRRemindersListViewModel.Item() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = (v1 + v7);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v1 + v8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_10001AA38;

  return sub_100208E64(v17, a1, v9, v10, v11, v1 + v6, v13, v14, v15);
}

uint64_t sub_100236F1C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = *(v3 + 16);
  v7 = v3 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return a3(a1, v6, v7);
}

double sub_100236FA8(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRemindersListViewModel.Item() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  return sub_10020A01C(a1, v6, v7, (v1 + v4), v5);
}

uint64_t sub_100237048()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100237090(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_100237188(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = *(v3 + 16);
  v7 = v3 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return a3(a1, v6, v7);
}

uint64_t sub_100237214(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100058000(&qword_100775740, &qword_10063D870) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for TTRRemindersListViewModel.Item() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10001AA38;

  return sub_100208774(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

char *sub_100237390(char *a1, char *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v13 = *a2;
    *v4 = *a2;
    v4 = (v13 + ((v5 + 16) & ~v5));
  }

  else
  {
    *a1 = *a2;
    v6 = *(a3 + 20);
    v8 = type metadata accessor for TTRRemindersListViewModel.Item();
    v9 = *(v8 - 8);
    v10 = *(v9 + 16);
    v10(&v4[v6], &a2[v6], v8);
    v11 = *(a3 + 24);
    if ((*(v9 + 48))(&a2[v11], 2, v8))
    {
      v12 = type metadata accessor for TTRIRemindersListItemAdjustedSelection.AssociatedItems(0);
      memcpy(&v4[v11], &a2[v11], *(*(v12 - 8) + 64));
    }

    else
    {
      v10(&v4[v11], &a2[v11], v8);
      (*(v9 + 56))(&v4[v11], 0, 2, v8);
    }
  }

  return v4;
}

uint64_t sub_10023750C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for TTRRemindersListViewModel.Item();
  v6 = *(v5 - 8);
  v9 = *(v6 + 8);
  v9(a1 + v4, v5);
  v7 = *(a2 + 24);
  result = (*(v6 + 48))(a1 + v7, 2, v5);
  if (!result)
  {

    return (v9)(a1 + v7, v5);
  }

  return result;
}

_BYTE *sub_100237618(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v9(&a1[v6], &a2[v6], v7);
  v10 = *(a3 + 24);
  if ((*(v8 + 48))(&a2[v10], 2, v7))
  {
    v11 = type metadata accessor for TTRIRemindersListItemAdjustedSelection.AssociatedItems(0);
    memcpy(&a1[v10], &a2[v10], *(*(v11 - 8) + 64));
  }

  else
  {
    v9(&a1[v10], &a2[v10], v7);
    (*(v8 + 56))(&a1[v10], 0, 2, v7);
  }

  return a1;
}

_BYTE *sub_100237748(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v3 = a3;
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  v9 = *(v8 + 24);
  v9(&a1[v6], &a2[v6], v7);
  v10 = *(v3 + 24);
  v11 = *(v8 + 48);
  LODWORD(v3) = v11(&a1[v10], 2, v7);
  v12 = v11(&a2[v10], 2, v7);
  if (!v3)
  {
    if (!v12)
    {
      v9(&a1[v10], &a2[v10], v7);
      return a1;
    }

    (*(v8 + 8))(&a1[v10], v7);
    goto LABEL_6;
  }

  if (v12)
  {
LABEL_6:
    v13 = type metadata accessor for TTRIRemindersListItemAdjustedSelection.AssociatedItems(0);
    memcpy(&a1[v10], &a2[v10], *(*(v13 - 8) + 64));
    return a1;
  }

  (*(v8 + 16))(&a1[v10], &a2[v10], v7);
  (*(v8 + 56))(&a1[v10], 0, 2, v7);
  return a1;
}

_BYTE *sub_1002378E0(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  v9 = *(v8 + 32);
  v9(&a1[v6], &a2[v6], v7);
  v10 = *(a3 + 24);
  if ((*(v8 + 48))(&a2[v10], 2, v7))
  {
    v11 = type metadata accessor for TTRIRemindersListItemAdjustedSelection.AssociatedItems(0);
    memcpy(&a1[v10], &a2[v10], *(*(v11 - 8) + 64));
  }

  else
  {
    v9(&a1[v10], &a2[v10], v7);
    (*(v8 + 56))(&a1[v10], 0, 2, v7);
  }

  return a1;
}

_BYTE *sub_100237A10(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v3 = a3;
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  v9 = *(v8 + 40);
  v9(&a1[v6], &a2[v6], v7);
  v10 = *(v3 + 24);
  v11 = *(v8 + 48);
  LODWORD(v3) = v11(&a1[v10], 2, v7);
  v12 = v11(&a2[v10], 2, v7);
  if (!v3)
  {
    if (!v12)
    {
      v9(&a1[v10], &a2[v10], v7);
      return a1;
    }

    (*(v8 + 8))(&a1[v10], v7);
    goto LABEL_6;
  }

  if (v12)
  {
LABEL_6:
    v13 = type metadata accessor for TTRIRemindersListItemAdjustedSelection.AssociatedItems(0);
    memcpy(&a1[v10], &a2[v10], *(*(v13 - 8) + 64));
    return a1;
  }

  (*(v8 + 32))(&a1[v10], &a2[v10], v7);
  (*(v8 + 56))(&a1[v10], 0, 2, v7);
  return a1;
}

uint64_t sub_100237BD0(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.Item();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TTRIRemindersListItemAdjustedSelection.AssociatedItems(319);
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *sub_100237CA4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a2, 2, v7))
  {
    (*(v8 + 16))(a1, a2, v7);
    (*(v8 + 56))(a1, 0, 2, v7);
    return a1;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}