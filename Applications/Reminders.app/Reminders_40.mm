void sub_100454D4C(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.SmartList();
  v71 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRAccountsListsViewModel.Group();
  v69 = *(v5 - 8);
  v70 = v5;
  __chkstk_darwin(v5);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State();
  v73 = *(v8 - 8);
  v74 = v8;
  __chkstk_darwin(v8);
  v72 = (&v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for TTRAccountsListsViewModel.List();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, a1, v14, v16);
  v19 = (*(v15 + 88))(v18, v14);
  if (v19 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    (*(v15 + 96))(v18, v14);
    v20 = type metadata accessor for UUID();
    (*(*(v20 - 8) + 8))(v18, v20);
    return;
  }

  if (v19 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v19 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:))
  {
    goto LABEL_5;
  }

  if (v19 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:))
  {
    (*(v15 + 96))(v18, v14);
    v21 = v71;
    (*(v71 + 32))(v4, v18, v2);
    v22 = *(sub_100058000(&qword_1007693A0, &unk_1006324E0) + 48);
    v23 = v72;
    TTRAccountsListsViewModel.SmartList.type.getter();
    v24 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    (*(*(v24 - 8) + 56))(v23 + v22, 1, 1, v24);
    v26 = v73;
    v25 = v74;
    (*(v73 + 104))(v23, enum case for TTRUserActivityWindowSceneRestorationPayload.State.predefinedSmartListType(_:), v74);
    v27 = type metadata accessor for TTRIAccountsListsDragItem(0);
    v28 = objc_allocWithZone(v27);
    (*(v26 + 16))(v28 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsDragItem_listState, v23, v25);
    v77.receiver = v28;
    v77.super_class = v27;
    v29 = objc_msgSendSuper2(&v77, "init");
    (*(v26 + 8))(v23, v25);
    v30 = [objc_allocWithZone(NSItemProvider) initWithObject:v29];
    v31 = [objc_allocWithZone(UIDragItem) initWithItemProvider:v30];

    sub_100058000(&qword_10076B780, &qword_10062D7C0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_10062D420;
    *(v32 + 32) = v31;

    (*(v21 + 8))(v4, v2);
    return;
  }

  if (v19 == enum case for TTRAccountsListsViewModel.Item.account(_:))
  {
    goto LABEL_5;
  }

  if (v19 == enum case for TTRAccountsListsViewModel.Item.list(_:))
  {
    (*(v15 + 96))(v18, v14);
    v33 = v13;
    (*(v11 + 32))(v13, v18, v10);
    v34 = *(sub_100058000(&qword_10076E920, &qword_100631E30) + 48);
    v35 = TTRAccountsListsViewModel.List.objectID.getter();
    v36 = v72;
    *v72 = v35;
    v37 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    (*(*(v37 - 8) + 56))(v36 + v34, 1, 1, v37);
    v39 = v73;
    v38 = v74;
    (*(v73 + 104))(v36, enum case for TTRUserActivityWindowSceneRestorationPayload.State.selectedListID(_:), v74);
    v40 = type metadata accessor for TTRIAccountsListsDragItem(0);
    v41 = objc_allocWithZone(v40);
    (*(v39 + 16))(v41 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsDragItem_listState, v36, v38);
    v75.receiver = v41;
    v75.super_class = v40;
    v42 = objc_msgSendSuper2(&v75, "init");
LABEL_14:
    v48 = v42;
    (*(v39 + 8))(v36, v38);
    v49 = [objc_allocWithZone(NSItemProvider) initWithObject:v48];
    v50 = [objc_allocWithZone(UIDragItem) initWithItemProvider:v49];

    sub_100058000(&qword_10076B780, &qword_10062D7C0);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_10062D420;
    *(v51 + 32) = v50;

    (*(v11 + 8))(v33, v10);
    return;
  }

  if (v19 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:))
  {
    (*(v15 + 96))(v18, v14);
    v33 = v13;
    (*(v11 + 32))(v13, v18, v10);
    v43 = *(sub_100058000(&qword_10076E920, &qword_100631E30) + 48);
    v44 = TTRAccountsListsViewModel.List.objectID.getter();
    v36 = v72;
    *v72 = v44;
    v45 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    (*(*(v45 - 8) + 56))(v36 + v43, 1, 1, v45);
    v39 = v73;
    v38 = v74;
    (*(v73 + 104))(v36, enum case for TTRUserActivityWindowSceneRestorationPayload.State.selectedCustomSmartListID(_:), v74);
    v46 = type metadata accessor for TTRIAccountsListsDragItem(0);
    v47 = objc_allocWithZone(v46);
    (*(v39 + 16))(v47 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsDragItem_listState, v36, v38);
    v78.receiver = v47;
    v78.super_class = v46;
    v42 = objc_msgSendSuper2(&v78, "init");
    goto LABEL_14;
  }

  if (v19 == enum case for TTRAccountsListsViewModel.Item.group(_:))
  {
    (*(v15 + 96))(v18, v14);
    v53 = v69;
    v52 = v70;
    (*(v69 + 32))(v7, v18, v70);
    v54 = *(sub_100058000(&qword_10076E920, &qword_100631E30) + 48);
    v55 = TTRAccountsListsViewModel.Group.objectID.getter();
    v56 = v72;
    *v72 = v55;
    v57 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    (*(*(v57 - 8) + 56))(v56 + v54, 1, 1, v57);
    v59 = v73;
    v58 = v74;
    (*(v73 + 104))(v56, enum case for TTRUserActivityWindowSceneRestorationPayload.State.selectedListID(_:), v74);
    v60 = type metadata accessor for TTRIAccountsListsDragItem(0);
    v61 = objc_allocWithZone(v60);
    (*(v59 + 16))(v61 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsDragItem_listState, v56, v58);
    v76.receiver = v61;
    v76.super_class = v60;
    v62 = objc_msgSendSuper2(&v76, "init");
    (*(v59 + 8))(v56, v58);
    v63 = [objc_allocWithZone(NSItemProvider) initWithObject:v62];
    v64 = [objc_allocWithZone(UIDragItem) initWithItemProvider:v63];

    sub_100058000(&qword_10076B780, &qword_10062D7C0);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_10062D420;
    *(v65 + 32) = v64;

    (*(v53 + 8))(v7, v52);
    return;
  }

  if (v19 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v19 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v19 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v19 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v19 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) || v19 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:) || v19 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
  {
LABEL_5:
    (*(v15 + 8))(v18, v14);
  }

  else if (v19 != enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:) && v19 != enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
  {
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    sub_100003E30(v66, qword_100782E90);
    v67 = sub_100008E04(_swiftEmptyArrayStorage);
    v68 = sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown item type", 17, 2uLL, v67, v68);
    __break(1u);
  }
}

void sub_100455928(uint64_t a1)
{
  v41 = a1;
  v38 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v2 = &v36 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TTRAccountsListsViewModel.List();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State();
  v7 = *(v37 - 8);
  __chkstk_darwin(v37);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRAccountsListsViewModel.SmartList();
  v39 = *(v10 - 8);
  v40 = v10;
  __chkstk_darwin(v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, v41, v13, v15);
  v18 = (*(v14 + 88))(v17, v13);
  if (v18 == enum case for TTRAccountsListsViewModel.PinnedList.predefinedSmartList(_:))
  {
    (*(v14 + 96))(v17, v13);
    v20 = v39;
    v19 = v40;
    v21 = v12;
    (*(v39 + 32))(v12, v17, v40);
    v22 = *(sub_100058000(&qword_1007693A0, &unk_1006324E0) + 48);
    TTRAccountsListsViewModel.SmartList.type.getter();
    v23 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    (*(*(v23 - 8) + 56))(&v9[v22], 1, 1, v23);
    v24 = v37;
    (*(v7 + 104))(v9, enum case for TTRUserActivityWindowSceneRestorationPayload.State.predefinedSmartListType(_:), v37);
    v25 = type metadata accessor for TTRIAccountsListsDragItem(0);
    v26 = objc_allocWithZone(v25);
    (*(v7 + 16))(v26 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsDragItem_listState, v9, v24);
    v42.receiver = v26;
    v42.super_class = v25;
    v27 = objc_msgSendSuper2(&v42, "init");
    (*(v7 + 8))(v9, v24);
    v28 = [objc_allocWithZone(NSItemProvider) initWithObject:v27];
    v29 = [objc_allocWithZone(UIDragItem) initWithItemProvider:v28];

    sub_100058000(&qword_10076B780, &qword_10062D7C0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_10062D420;
    *(v30 + 32) = v29;

    (*(v20 + 8))(v21, v19);
  }

  else if (v18 == enum case for TTRAccountsListsViewModel.PinnedList.list(_:))
  {
    (*(v14 + 96))(v17, v13);
    (*(v4 + 32))(v6, v17, v3);
    (*(v4 + 16))(v2, v6, v3);
    v31 = v36;
    v32 = v38;
    (*(v36 + 104))(v2, enum case for TTRAccountsListsViewModel.Item.list(_:), v38);
    sub_100454D4C(v2);
    (*(v31 + 8))(v2, v32);
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100003E30(v33, qword_100782E90);
    v34 = sub_100008E04(_swiftEmptyArrayStorage);
    v35 = sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown item type", 17, 2uLL, v34, v35);
    __break(1u);
  }
}

uint64_t sub_100455F48(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for TTRHashtagAssociationOperation() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for TTRIPopoverAnchor() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_10001AA38;

  return sub_1002A6034(a1, v10, v11, v12, v1 + v6, v1 + v9, v13);
}

uint64_t sub_1004560D8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for TTRHashtagAssociationOperation() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for TTRIPopoverAnchor() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_10001AA3C;

  return sub_1002A6034(a1, v10, v11, v12, v1 + v6, v1 + v9, v13);
}

Class sub_100456268(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRIPopoverAnchor() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_10043E47C(a1, v4, v5, v6, v7);
}

uint64_t sub_1004562E0@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 88);
  ObjectType = swift_getObjectType();
  result = (*(v3 + 8))(ObjectType, v3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_100456378(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, char *))
{
  v4 = *(type metadata accessor for TTRIPopoverAnchor() - 8);
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2 + ((*(v4 + 80) + 40) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7, v8);
}

uint64_t sub_100456404()
{
  v1 = type metadata accessor for TTRHashtagAssociationOperation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for TTRIPopoverAnchor();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 8, v10 | 7);
}

uint64_t sub_10045657C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001AA38;

  return sub_100440708(a1, v4, v5, v6);
}

BOOL sub_100456630(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRAccountsListsViewModel.List() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 25) & ~*(v3 + 80));

  return sub_100435864(a1, v4, v5, v6);
}

uint64_t sub_100456804(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = *(v3 + 16);
  v7 = v3 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return a3(a1, v6, v7);
}

uint64_t sub_100456918(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_100456A90(uint64_t a1)
{
  v4 = *(type metadata accessor for TTRAccountsListsViewModel.List() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001AA38;

  return sub_100435BC8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100456B88(uint64_t a1)
{
  v4 = *(type metadata accessor for TTRAccountsListsViewModel.List() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001AA38;

  return sub_10043594C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100456C80(uint64_t a1)
{
  v4 = *(type metadata accessor for TTRAccountsListsViewModel.List() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001AA38;

  return sub_100436084(a1, v6, v7, v8, v1 + v5);
}

double sub_100456D78()
{
  v1 = *(type metadata accessor for TTRAccountsListsInteractorDeleteArguments() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1004457B0(v2, v3);
}

uint64_t sub_100456E08()
{
  v1 = type metadata accessor for TTRListOrCustomSmartList();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for TTRAccountsListsViewModel.List();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_100456F84(void (*a1)(uint64_t, uint64_t, uint64_t), uint64_t (*a2)(uint64_t, uint64_t))
{
  v5 = *(type metadata accessor for TTRListOrCustomSmartList() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for TTRAccountsListsViewModel.List() - 8);
  return sub_100448190(*(v2 + 16), v2 + v6, v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)), a1, a2, v9);
}

uint64_t sub_1004570B8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = *(v3 + 16);
  v7 = v3 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return a3(a1, v6, v7);
}

double sub_100457170(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRAccountsListsViewModel.List() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1004470E0(a1, v4, v5, v6);
}

uint64_t sub_10045742C(uint64_t a1)
{
  v4 = *(type metadata accessor for TTRAccountsListsViewModel.List() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001AA38;

  return sub_100447684(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100457524(uint64_t a1)
{
  v4 = *(type metadata accessor for TTRAccountsListsViewModel.List() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001AA38;

  return sub_100447170(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10045761C(uint64_t a1)
{
  v4 = *(type metadata accessor for TTRAccountsListsViewModel.List() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001AA38;

  return sub_100447970(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10045771C()
{
  sub_100058000(&qword_100783210, &qword_10063F320);
  v1 = *(v0 + 16);

  return sub_100448788(v1);
}

char *sub_1004577D0(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      result = [v2 isViewLoaded];
      if (result)
      {
        if (!*&v2[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presentationTreesCapability])
        {
          __break(1u);
          return result;
        }

        v3 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v4 = swift_allocObject();
        *(v4 + 16) = 512;
        *(v4 + 24) = 0;
        *(v4 + 32) = 0;
        *(v4 + 40) = v3;

        TTRICollectionViewPresentationTreeManagementViewCapability.applyPresentationTree(with:completion:)();
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100457918(uint64_t (*a1)(char *))
{
  v15 = a1;
  v2 = sub_100058000(&qword_100783140, &qword_10063F158);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  v8 = type metadata accessor for REMAccountsListDataView.Model();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_dataViewModel;
  swift_beginAccess();
  sub_10000794C(v1 + v12, v7, &qword_100783140, &qword_10063F158);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000079B4(v7, &qword_100783140, &qword_10063F158);
  }

  (*(v9 + 32))(v11, v7, v8);
  if (v15(v11))
  {
    (*(v9 + 16))(v4, v11, v8);
    (*(v9 + 56))(v4, 0, 1, v8);
    swift_beginAccess();
    sub_10001AEBC(v4, v1 + v12);
    swift_endAccess();
    sub_10001AFE0(v11, 0, 2, 1);
  }

  return (*(v9 + 8))(v11, v8);
}

void sub_100457BA0()
{
  v1 = v0;
  if (![objc_opt_self() isInternalInstall])
  {
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100003E30(v8, qword_100782E90);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(oslog, v5))
    {
      goto LABEL_12;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "didEncounterMigrationError. Not running internal install. Done";
    goto LABEL_11;
  }

  type metadata accessor for TTRUserDefaults();
  v2 = static TTRUserDefaults.appUserDefaults.getter();
  v3 = TTRUserDefaults.migrationFailureAlertShown.getter();

  if (v3)
  {
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100003E30(v4, qword_100782E90);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(oslog, v5))
    {
      goto LABEL_12;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "migrationFailureAlertShown is true, not showing dialog.";
LABEL_11:
    _os_log_impl(&_mh_execute_header, oslog, v5, v7, v6, 2u);

LABEL_12:

    return;
  }

  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100003E30(v9, qword_100782E90);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "migrationFailureAlertShown is false and running internal install. Showing dialog.", v12, 2u);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v13 + 72))(ObjectType, v13);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_100457E78(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100058000(&qword_100783140, &qword_10063F158);
  __chkstk_darwin(v4 - 8);
  v6 = &v29 - v5;
  v7 = type metadata accessor for REMAccountsListDataView.Model();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v32 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRCloudKitNetworkActivityMonitor.Activity();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v33 = v8;
  v14 = type metadata accessor for Logger();
  sub_100003E30(v14, qword_100782E90);
  (*(v11 + 16))(v13, a1, v10);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = v6;
    v18 = v17;
    v19 = swift_slowAlloc();
    v34[0] = v19;
    *v18 = 136315138;
    v20 = TTRCloudKitNetworkActivityMonitor.Activity.description.getter();
    v31 = v7;
    v21 = v2;
    v23 = v22;
    (*(v11 + 8))(v13, v10);
    v24 = sub_100004060(v20, v23, v34);
    v2 = v21;
    v7 = v31;

    *(v18 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v15, v16, "TTRIAccountsListsPresenter interactor did update CK network activity {activity: %s}", v18, 0xCu);
    sub_100004758(v19);

    v6 = v30;
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  v25 = OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_dataViewModel;
  swift_beginAccess();
  sub_10000794C(v2 + v25, v6, &qword_100783140, &qword_10063F158);
  v26 = v33;
  if ((*(v33 + 48))(v6, 1, v7) == 1)
  {
    return sub_1000079B4(v6, &qword_100783140, &qword_10063F158);
  }

  v28 = v32;
  (*(v26 + 32))(v32, v6, v7);
  sub_10001AFE0(v28, 0, 2, 1);
  return (*(v26 + 8))(v28, v7);
}

double sub_100458274(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  sub_10000C36C((v2 + 112), *(v2 + 136));
  sub_1002A5298(a2);
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v8;

  sub_100084EC0(0, 0, v6, &unk_10063F340, v10);

  return result;
}

uint64_t sub_1004583E4(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_10045842C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001AA3C;

  return sub_10044B278(a1, v4, v5, v6);
}

void sub_1004584E0()
{
  v1._object = 0x8000000100686D70;
  v2._object = 0x8000000100686D70;
  v1._countAndFlagsBits = 0x1000000000000015;
  v2._countAndFlagsBits = 0x1000000000000015;
  TTRLocalizedString(_:comment:)(v1, v2);
  v3._object = 0x8000000100686D90;
  v4._object = 0x8000000100686D90;
  v3._countAndFlagsBits = 0xD000000000000037;
  v4._countAndFlagsBits = 0xD000000000000037;
  TTRLocalizedString(_:comment:)(v3, v4);
  v5 = String._bridgeToObjectiveC()();

  v6 = String._bridgeToObjectiveC()();

  v11 = [objc_opt_self() alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  static TTRLocalizableStrings.Common.alertOKButton.getter();
  v7 = String._bridgeToObjectiveC()();

  v8 = [objc_opt_self() actionWithTitle:v7 style:0 handler:0];

  [v11 addAction:v8];
  sub_10000C36C((v0 + 112), *(v0 + 136));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    [Strong presentViewController:v11 animated:1 completion:0];
  }
}

void sub_100458690(uint64_t a1)
{
  v2 = type metadata accessor for TimeZone();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003E30(v6, qword_100782E90);
  (*(v3 + 16))(v5, a1, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136446210;
    sub_10001F128(&qword_1007756E8, &type metadata accessor for TimeZone, &protocol conformance descriptor for TimeZone);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    (*(v3 + 8))(v5, v2);
    v14 = sub_100004060(v11, v13, &v18);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "TTRIAccountsListsPresenter: Set time zone override to timeZone: %{public}s", v9, 0xCu);
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

uint64_t sub_100458970()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1004589B8()
{
  v1 = sub_100058000(&qword_100783180, &qword_10063F1C8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100458AB0(void (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, __n128))
{
  v3 = *(sub_100058000(&qword_100783180, &qword_10063F1C8) - 8);
  sub_1004460F0(v1[2], v1[3], v1[4], v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80)), a1);
  return v4 & 1;
}

uint64_t sub_100458B2C(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 16));
  a2(*(v3 + 24));

  return _swift_deallocObject(v3, a3, 7);
}

uint64_t sub_100458BC8(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

void sub_100458C58(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TTRAccountsListsViewModel.Item() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_100442C54(v4, a1);
}

double sub_100458D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for TTRAccountsListsViewModel.Item() - 8);
  v10 = *(v4 + 16);
  v11 = v4 + ((*(v9 + 80) + 24) & ~*(v9 + 80));

  return sub_100441F68(a1, a2, a3, a4, v10, v11);
}

uint64_t sub_100458E14(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for TTRAccountsListsViewModel.Item() - 8);
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

  return sub_1004421EC(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_100458F50(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64) + v5;

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v6 + 1, v4 | 7);
}

double sub_100459020()
{
  v1 = *(type metadata accessor for TTRAccountsListsInteractorDeleteArguments() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v4 = *(v3 + *(v1 + 64));

  return sub_1004459A0(v2, v3, v4);
}

Class sub_1004590B0(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRAccountsListsViewModel.Item() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_10043D624(a1, v1 + v4, v6, v7);
}

uint64_t sub_100459180(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = *(v3 + 16);
  v7 = v3 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return a3(a1, v6, v7);
}

uint64_t sub_100459238(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_10045934C(uint64_t (*a1)(void), void (*a2)(void), void (*a3)(void))
{
  v6 = a1(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 40) & ~v8;
  v10 = *(v7 + 64);
  a2(*(v3 + 16));
  a3(*(v3 + 32));
  (*(v7 + 8))(v3 + v9, v6);

  return _swift_deallocObject(v3, v9 + v10, v8 | 7);
}

uint64_t sub_100459438(uint64_t a1)
{
  v4 = *(type metadata accessor for TTRAccountsListsViewModel.Group() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001AA38;

  return sub_100447F80(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100459530(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIAccountsListsSelection(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004595A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001AA38;

  return sub_1004465F4(a1, v4, v5, v7, v6);
}

uint64_t *sub_10045969C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRAccountsListsViewModel.Account();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = v11 | *(v7 + 80) & 0xF8;
  if (v12 <= 7 && ((*(v7 + 80) | *(v10 + 80)) & 0x100000) == 0 && ((-17 - (((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + v11)) | v11) - *(*(v9 - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    (*(v7 + 16))(a1, a2, v6);
    v16 = ((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    v17 = ((a2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v16 = *v17;
    v16[1] = v17[1];
    v18 = *(v10 + 16);

    v18(v16 + 2, v17 + 2, v9);
  }

  else
  {
    v15 = *a2;
    *a1 = *a2;
    a1 = (v15 + (((v12 | 7) + 16) & ~(v12 | 7)));
  }

  return a1;
}

uint64_t sub_100459838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRAccountsListsViewModel.Account();
  v7 = *(v6 - 8) + 24;
  (*v7)(a1, a2, v6);
  v8 = *(v7 + 40) + 7;
  v9 = ((v8 + a1) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v9[1] = v10[1];

  v11 = *(*(a3 + 16) - 8);
  (*(v11 + 24))((v9 + *(v11 + 80) + 16) & ~*(v11 + 80), (v10 + *(v11 + 80) + 16) & ~*(v11 + 80));
  return a1;
}

uint64_t sub_10045992C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRAccountsListsViewModel.Account();
  v7 = *(v6 - 8) + 32;
  (*v7)(a1, a2, v6);
  v8 = *(v7 + 32) + 7;
  v9 = ((v8 + a1) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v11 = *(*(a3 + 16) - 8);
  (*(v11 + 32))((v9 + *(v11 + 80) + 16) & ~*(v11 + 80), (v10 + *(v11 + 80) + 16) & ~*(v11 + 80));
  return a1;
}

uint64_t sub_100459A00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRAccountsListsViewModel.Account();
  v7 = *(v6 - 8) + 40;
  (*v7)(a1, a2, v6);
  v8 = *(v7 + 24) + 7;
  v9 = ((v8 + a1) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v9[1] = v10[1];

  v11 = *(*(a3 + 16) - 8);
  (*(v11 + 40))((v9 + *(v11 + 80) + 16) & ~*(v11 + 80), (v10 + *(v11 + 80) + 16) & ~*(v11 + 80));
  return a1;
}

uint64_t sub_100459AE4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRAccountsListsViewModel.Account();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v7 + 64);
  v11 = *(v9 + 80);
  if (v8 <= *(v9 + 84))
  {
    v12 = *(v9 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v14 = ((v11 + ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v11) + *(v9 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 < 2)
    {
LABEL_31:
      if (v8 == v13)
      {
        v22 = *(v7 + 48);

        return v22(a1, v8, v6);
      }

      else
      {
        v23 = (a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
        if ((v12 & 0x80000000) != 0)
        {
          v25 = *(v9 + 48);

          return v25((v23 + v11 + 16) & ~v11);
        }

        else
        {
          v24 = *(v23 + 8);
          if (v24 >= 0xFFFFFFFF)
          {
            LODWORD(v24) = -1;
          }

          return (v24 + 1);
        }
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_31;
  }

LABEL_18:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v20 = ((v11 + ((v10 + 7) & 0xFFFFFFF8) + 16) & ~v11) + *(v9 + 64);
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v13 + (v21 | v19) + 1;
}

void sub_100459D64(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = type metadata accessor for TTRAccountsListsViewModel.Account();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(*(a4 + 16) - 8);
  v12 = *(v9 + 64);
  v13 = *(v11 + 80);
  if (v10 <= *(v11 + 84))
  {
    v14 = *(v11 + 84);
  }

  else
  {
    v14 = *(v9 + 84);
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  v16 = ((v13 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v13) + *(v11 + 64);
  if (a3 <= v15)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v15 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v15 < a2)
  {
    v18 = ~v15 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_52:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_49;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_52;
      }
    }

LABEL_49:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v10 == v15)
  {
    v23 = *(v9 + 56);

    v23(a1, a2, v10, v8);
  }

  else
  {
    v24 = (&a1[v12 + 7] & 0xFFFFFFFFFFFFFFF8);
    if ((v14 & 0x80000000) != 0)
    {
      v25 = *(v11 + 56);

      v25((v24 + v13 + 16) & ~v13, a2);
    }

    else if ((a2 & 0x80000000) != 0)
    {
      *v24 = a2 & 0x7FFFFFFF;
      v24[1] = 0;
    }

    else
    {
      v24[1] = (a2 - 1);
    }
  }
}

unint64_t sub_10045A07C()
{
  result = qword_100783330;
  if (!qword_100783330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783330);
  }

  return result;
}

unint64_t sub_10045A0D4()
{
  result = qword_100783338;
  if (!qword_100783338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783338);
  }

  return result;
}

id sub_10045A1AC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{

  return sub_1000493FC(a1, a2, a3, a4, a5);
}

id TTRIGroupMembershipAssembly.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIGroupMembershipAssembly();
  return objc_msgSendSuper2(&v2, "init");
}

id TTRIGroupMembershipAssembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIGroupMembershipAssembly();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id TTRListDetailCreationChangeItem.accountID.getter()
{
  v1 = [*(v0 + 24) objectID];

  return v1;
}

id TTRListDetailCreationChangeItem.accountCapabilities.getter()
{
  v1 = [*(v0 + 24) capabilities];

  return v1;
}

uint64_t TTRListDetailCreationChangeItem.__allocating_init(saveRequest:account:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TTRListDetailCreationChangeItem.init(saveRequest:account:)(a1, a2);
  return v4;
}

uint64_t TTRListDetailCreationChangeItem.Storage.copy(with:)@<X0>(char **a1@<X8>)
{
  v21 = a1;
  v20 = type metadata accessor for TTRRemindersListListType();
  v2 = *(v20 - 8);
  v3 = __chkstk_darwin(v20);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[2];
  v6 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  (*(v2 + 16))(v5, v1 + OBJC_IVAR____TtCC9Reminders31TTRListDetailCreationChangeItem7Storage_listType, v3);
  v11 = type metadata accessor for TTRListDetailCreationChangeItem.Storage(0);
  v12 = swift_allocObject();
  *(v12 + 2) = v7;
  *(v12 + 3) = v6;
  *(v12 + 4) = v8;
  *(v12 + 5) = v9;
  *(v12 + 6) = v10;
  v13 = OBJC_IVAR____TtCC9Reminders31TTRListDetailCreationChangeItem7Storage_listType;
  v14 = *(v2 + 32);
  v15 = v10;
  v16 = v9;

  v17 = v8;
  result = v14(&v12[v13], v5, v20);
  v19 = v21;
  v21[3] = v11;
  *v19 = v12;
  return result;
}

id *TTRListDetailCreationChangeItem.Storage.deinit()
{

  v1 = OBJC_IVAR____TtCC9Reminders31TTRListDetailCreationChangeItem7Storage_listType;
  v2 = type metadata accessor for TTRRemindersListListType();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t TTRListDetailCreationChangeItem.Storage.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtCC9Reminders31TTRListDetailCreationChangeItem7Storage_listType;
  v2 = type metadata accessor for TTRRemindersListListType();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *TTRListDetailCreationChangeItem.storage.getter()
{
  v1 = type metadata accessor for TTRRemindersListListType();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v6 = *(v0 + 5);
  v5 = *(v0 + 6);
  swift_beginAccess();
  v7 = *(v0 + 7);
  swift_beginAccess();
  v8 = *(v0 + 8);
  swift_beginAccess();
  v9 = *(v0 + 9);
  v10 = OBJC_IVAR____TtC9Reminders31TTRListDetailCreationChangeItem_listType;
  swift_beginAccess();
  (*(v2 + 16))(v4, &v0[v10], v1);
  type metadata accessor for TTRListDetailCreationChangeItem.Storage(0);
  v11 = swift_allocObject();
  v11[2] = v6;
  v11[3] = v5;
  v11[4] = v7;
  v11[5] = v8;
  v11[6] = v9;
  (*(v2 + 32))(v11 + OBJC_IVAR____TtCC9Reminders31TTRListDetailCreationChangeItem7Storage_listType, v4, v1);
  v12 = v9;

  v13 = v7;
  v14 = v8;
  return v11;
}

id TTRListDetailCreationChangeItem.objectID.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

void TTRListDetailCreationChangeItem.objectID.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t _s9Reminders31TTRListDetailCreationChangeItemC11displayNameSSvg_0()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

double TTRListDetailCreationChangeItem.name.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;

  return result;
}

void *TTRListDetailCreationChangeItem.color.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

void TTRListDetailCreationChangeItem.color.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

void *TTRListDetailCreationChangeItem.badge.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

void TTRListDetailCreationChangeItem.badge.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  *(v1 + 64) = a1;
}

void *TTRListDetailCreationChangeItem.filter.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

void TTRListDetailCreationChangeItem.filter.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 72);
  *(v1 + 72) = a1;
}

uint64_t TTRListDetailCreationChangeItem.listType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9Reminders31TTRListDetailCreationChangeItem_listType;
  swift_beginAccess();
  v4 = type metadata accessor for TTRRemindersListListType();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

double TTRListDetailCreationChangeItem.listType.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9Reminders31TTRListDetailCreationChangeItem_listType;
  swift_beginAccess();
  v4 = type metadata accessor for TTRRemindersListListType();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  swift_endAccess();
  return result;
}

id TTRListDetailCreationChangeItem.canMakeIntoGroceriesList.getter()
{
  v1 = [*(v0 + 24) capabilities];
  v2 = [v1 supportsGroceriesList];

  return v2;
}

BOOL TTRListDetailCreationChangeItem.shouldUseItemWording.getter()
{
  v1 = type metadata accessor for TTRRemindersListListType();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v11 - v6;
  v8 = OBJC_IVAR____TtC9Reminders31TTRListDetailCreationChangeItem_listType;
  swift_beginAccess();
  (*(v2 + 16))(v7, v0 + v8, v1);
  (*(v2 + 104))(v4, enum case for TTRRemindersListListType.groceries(_:), v1);
  sub_10045B84C(&qword_10077A0D0, &type metadata accessor for TTRRemindersListListType, &protocol conformance descriptor for TTRRemindersListListType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v9 = *(v2 + 8);
  v9(v4, v1);
  v9(v7, v1);
  return v11[2] == v11[1];
}

char *TTRListDetailCreationChangeItem.init(saveRequest:account:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 5) = 0;
  *(v2 + 6) = 0xE000000000000000;
  *(v2 + 8) = 0;
  *(v2 + 9) = 0;
  *(v2 + 7) = 0;
  v5 = OBJC_IVAR____TtC9Reminders31TTRListDetailCreationChangeItem_listType;
  v6 = enum case for TTRRemindersListListType.standard(_:);
  v7 = type metadata accessor for TTRRemindersListListType();
  (*(*(v7 - 8) + 104))(&v2[v5], v6, v7);
  *(v2 + 2) = a1;
  *(v2 + 3) = a2;
  *(v2 + 4) = [objc_opt_self() newObjectID];
  return v2;
}

id *TTRListDetailCreationChangeItem.deinit()
{

  v1 = OBJC_IVAR____TtC9Reminders31TTRListDetailCreationChangeItem_listType;
  v2 = type metadata accessor for TTRRemindersListListType();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t TTRListDetailCreationChangeItem.__deallocating_deinit()
{
  TTRListDetailCreationChangeItem.deinit();

  return swift_deallocClassInstance();
}

id sub_10045B2D8()
{
  v1 = [*(*v0 + 24) capabilities];
  v2 = [v1 supportsGroceriesList];

  return v2;
}

uint64_t TTRListDetailCreationChangeItem.badgeDisplayStyle.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 72);
  v4 = type metadata accessor for TTRListDetailViewModelBadgeDisplayStyle();
  v5 = &enum case for TTRListDetailViewModelBadgeDisplayStyle.list(_:);
  if (v3)
  {
    v5 = &enum case for TTRListDetailViewModelBadgeDisplayStyle.smartList(_:);
  }

  return (*(*(v4 - 8) + 104))(a1, *v5, v4);
}

uint64_t sub_10045B3F8()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 40);

  return v2;
}

uint64_t sub_10045B448@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 72);
  v5 = type metadata accessor for TTRListDetailViewModelBadgeDisplayStyle();
  v6 = &enum case for TTRListDetailViewModelBadgeDisplayStyle.list(_:);
  if (v4)
  {
    v6 = &enum case for TTRListDetailViewModelBadgeDisplayStyle.smartList(_:);
  }

  return (*(*(v5 - 8) + 104))(a1, *v6, v5);
}

id sub_10045B4E0()
{
  v1 = [*(*v0 + 24) capabilities];

  return v1;
}

BOOL _s9Reminders31TTRListDetailCreationChangeItemC7StorageC2eeoiySbAE_AEtFZ_0(char *a1, char *a2)
{
  v4 = type metadata accessor for TTRRemindersListListType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v30 - v9;
  v11 = *(a1 + 2) == *(a2 + 2) && *(a1 + 3) == *(a2 + 3);
  if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v12 = *(a1 + 4);
  v13 = *(a2 + 4);
  if (v12)
  {
    if (!v13)
    {
      return 0;
    }

    sub_100003540(0, &qword_100783618, REMColor_ptr);
    v14 = v13;
    v15 = v12;
    v16 = static NSObject.== infix(_:_:)();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  v17 = *(a1 + 5);
  v18 = *(a2 + 5);
  if (v17)
  {
    if (!v18)
    {
      return 0;
    }

    sub_100003540(0, &qword_100783610, REMListBadge_ptr);
    v19 = v18;
    v20 = v17;
    v21 = static NSObject.== infix(_:_:)();

    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  v22 = *(a1 + 6);
  v23 = *(a2 + 6);
  if (v22)
  {
    if (v23)
    {
      type metadata accessor for REMCustomSmartListFilterDescriptor();
      v24 = v23;
      v25 = v22;
      v26 = static NSObject.== infix(_:_:)();

      if (v26)
      {
        goto LABEL_19;
      }
    }
  }

  else if (!v23)
  {
LABEL_19:
    v27 = *(v5 + 16);
    v27(v10, &a1[OBJC_IVAR____TtCC9Reminders31TTRListDetailCreationChangeItem7Storage_listType], v4);
    v27(v7, &a2[OBJC_IVAR____TtCC9Reminders31TTRListDetailCreationChangeItem7Storage_listType], v4);
    sub_10045B84C(&qword_10077A0D0, &type metadata accessor for TTRRemindersListListType, &protocol conformance descriptor for TTRRemindersListListType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v28 = *(v5 + 8);
    v28(v7, v4);
    v28(v10, v4);
    return v30[1] == v30[0];
  }

  return 0;
}

uint64_t sub_10045B84C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10045B8BC(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListListType();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10045B980(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListListType();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *sub_10045BA40()
{
  v1 = v0;
  v2 = type metadata accessor for TTRIRemindersBoardFocusController.FocusedItem(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v34 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v10 = *(v9 - 8);
  v36 = v9;
  v37 = v10;
  __chkstk_darwin(v9);
  v35 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v34 - v13;
  __chkstk_darwin(v15);
  v17 = &v34 - v16;
  v18 = sub_100058000(&unk_10076BB50, &unk_10062DEA0);
  __chkstk_darwin(v18 - 8);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v34 - v22;
  v24 = OBJC_IVAR____TtC9Reminders33TTRIRemindersBoardFocusController_currentFocusedItem;
  swift_beginAccess();
  if ((*(v3 + 48))(v1 + v24, 1, v2))
  {
    v25 = OBJC_IVAR____TtC9Reminders33TTRIRemindersBoardFocusController_lastFocusedItemID;
    swift_beginAccess();
    sub_10000794C(v1 + v25, v23, &unk_10076BB50, &unk_10062DEA0);
    v27 = v36;
    v26 = v37;
  }

  else
  {
    v34 = v1;
    sub_10045C6F0(v1 + v24, v8);
    sub_10045C754(v8, v5);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
    }

    v27 = v36;
    v26 = v37;
    v28 = *(v37 + 32);
    v28(v14, v5, v36);
    v28(v17, v14, v27);
    v28(v23, v17, v27);
    (*(v26 + 56))(v23, 0, 1, v27);
  }

  sub_10000794C(v23, v20, &unk_10076BB50, &unk_10062DEA0);
  if ((*(v26 + 48))(v20, 1, v27) == 1)
  {
    sub_1000079B4(v20, &unk_10076BB50, &unk_10062DEA0);
LABEL_11:
    v32 = _swiftEmptyArrayStorage;
    goto LABEL_12;
  }

  v29 = v35;
  (*(v26 + 32))(v35, v20, v27);
  v30 = sub_100495DBC(v29);
  if (!v30)
  {
    (*(v26 + 8))(v29, v27);
    goto LABEL_11;
  }

  v31 = v30;
  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v32 = swift_allocObject();
  *(v32 + 1) = xmmword_10062D420;
  v32[4] = v31;
  (*(v26 + 8))(v29, v27);
LABEL_12:
  sub_1000079B4(v23, &unk_10076BB50, &unk_10062DEA0);
  return v32;
}

uint64_t sub_10045BEBC()
{
  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders33TTRIRemindersBoardFocusController_currentFocusedItem, &qword_1007837A0, &qword_1006408A0);

  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders33TTRIRemindersBoardFocusController_lastFocusedItemID, &unk_10076BB50, &unk_10062DEA0);

  return swift_deallocClassInstance();
}

void sub_10045BF88(uint64_t a1)
{
  sub_10045C0B4(319, &unk_100783668, type metadata accessor for TTRIRemindersBoardFocusController.FocusedItem);
  if (v1 <= 0x3F)
  {
    sub_10045C0B4(319, &qword_100774300, &type metadata accessor for TTRRemindersListViewModel.ItemID);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10045C0B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t *sub_10045C108(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v5 + 16) & ~v5));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v7 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    if (EnumCaseMultiPayload != 1)
    {
      v9 = *(sub_100058000(&unk_1007845A0, &qword_10063F7B8) + 48);
      v10 = *(a2 + v9);
      *(a1 + v9) = v10;
      v11 = v10;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void sub_10045C220(uint64_t a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  (*(*(v4 - 8) + 8))(a1, v4);
  if (EnumCaseMultiPayload != 1)
  {
    v5 = *(a1 + *(sub_100058000(&unk_1007845A0, &qword_10063F7B8) + 48));
  }
}

uint64_t sub_10045C2C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  if (EnumCaseMultiPayload != 1)
  {
    v7 = *(sub_100058000(&unk_1007845A0, &qword_10063F7B8) + 48);
    v8 = *(a2 + v7);
    *(a1 + v7) = v8;
    v9 = v8;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_10045C384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_10045C458(a1);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v6 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    if (EnumCaseMultiPayload != 1)
    {
      v7 = *(sub_100058000(&unk_1007845A0, &qword_10063F7B8) + 48);
      v8 = *(a2 + v7);
      *(a1 + v7) = v8;
      v9 = v8;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_10045C458(uint64_t a1)
{
  v2 = type metadata accessor for TTRIRemindersBoardFocusController.FocusedItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10045C4B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  if (EnumCaseMultiPayload != 1)
  {
    v7 = sub_100058000(&unk_1007845A0, &qword_10063F7B8);
    *(a1 + *(v7 + 48)) = *(a2 + *(v7 + 48));
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_10045C574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_10045C458(a1);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v6 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    if (EnumCaseMultiPayload != 1)
    {
      v7 = sub_100058000(&unk_1007845A0, &qword_10063F7B8);
      *(a1 + *(v7 + 48)) = *(a2 + *(v7 + 48));
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_10045C644(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.ItemID();
  if (v2 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    swift_getTupleTypeLayout2();
    v4[4] = v4;
    v4[5] = v3;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_10045C6F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIRemindersBoardFocusController.FocusedItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10045C754(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIRemindersBoardFocusController.FocusedItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_10045C7B8(void *a1)
{
  v2 = v1;
  v106 = sub_100058000(&qword_10076DCB8, &qword_100631830);
  __chkstk_darwin(v106);
  v5 = &v93 - v4;
  v105 = type metadata accessor for TTRIRemindersBoardFocusController.FocusedItem(0);
  v6 = *(v105 - 8);
  __chkstk_darwin(v105);
  v98 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v102 = &v93 - v9;
  __chkstk_darwin(v10);
  v96 = &v93 - v11;
  v12 = sub_100058000(&unk_10076BB50, &unk_10062DEA0);
  __chkstk_darwin(v12 - 8);
  v99 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v113 = &v93 - v15;
  __chkstk_darwin(v16);
  v115 = &v93 - v17;
  __chkstk_darwin(v18);
  v20 = &v93 - v19;
  v21 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v114 = *(v21 - 8);
  __chkstk_darwin(v21);
  v94 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v97 = &v93 - v24;
  __chkstk_darwin(v25);
  v95 = &v93 - v26;
  __chkstk_darwin(v27);
  v29 = &v93 - v28;
  v30 = sub_100058000(&qword_1007837A0, &qword_1006408A0);
  __chkstk_darwin(v30 - 8);
  v110 = &v93 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v33 = __chkstk_darwin(v32).n128_u64[0];
  v35 = &v93 - v34;
  v36 = [a1 nextFocusedView];
  v111 = v35;
  if (v36)
  {
    v37 = v36;
    v38 = sub_1004961A4(v37);
    v109 = v20;
    v39 = v2;
    v40 = v21;
    v41 = v6;
    v43 = v42;
    v45 = v44;
    v47 = v46;

    v36 = v38;
    v48 = v43;
    v6 = v41;
    v21 = v40;
    v2 = v39;
    v20 = v109;
    v49 = v47;
    v35 = v111;
  }

  else
  {
    v48 = 0;
    v45 = 0;
    v49 = 0;
  }

  v107 = v5;
  v103 = v36;
  v104 = v48;
  v109 = v49;
  sub_100495C00(v36, v48, v45, v20);
  v50 = v114;
  v51 = *(v114 + 48);
  v101 = v114 + 48;
  v100 = v51;
  v52 = v51(v20, 1, v21);
  v108 = v45;
  v112 = v2;
  if (v52 == 1)
  {
    sub_1000079B4(v20, &unk_10076BB50, &unk_10062DEA0);
    v53 = 1;
    v54 = v105;
  }

  else
  {
    v55 = *(v50 + 32);
    v55(v29, v20, v21);
    if (v45)
    {
      if (v109)
      {
        v55(v35, v29, v21);
        v54 = v105;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v56 = *(sub_100058000(&unk_1007845A0, &qword_10063F7B8) + 48);
        v55(v35, v29, v21);
        v57 = v108;
        *&v35[v56] = v108;
        v58 = v105;
        swift_storeEnumTagMultiPayload();
        v59 = v57;
        v54 = v58;
      }

      v53 = 0;
      v2 = v112;
    }

    else
    {
      (*(v50 + 8))(v29, v21);
      v53 = 1;
      v2 = v112;
      v54 = v105;
    }
  }

  v60 = 1;
  (*(v6 + 56))(v35, v53, 1, v54);
  v61 = OBJC_IVAR____TtC9Reminders33TTRIRemindersBoardFocusController_currentFocusedItem;
  swift_beginAccess();
  v62 = *(v6 + 48);
  v63 = v62(v2 + v61, 1, v54);
  v64 = v102;
  if (!v63)
  {
    v65 = v35;
    v66 = v96;
    sub_10045C6F0(v112 + v61, v96);
    sub_10045C754(v66, v64);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
    }

    v67 = *(v114 + 32);
    v68 = v95;
    v67(v95, v64, v21);
    v67(v115, v68, v21);
    v60 = 0;
    v35 = v65;
  }

  v69 = *(v114 + 56);
  v69(v115, v60, 1, v21);
  v70 = v110;
  sub_10000794C(v35, v110, &qword_1007837A0, &qword_1006408A0);
  v71 = v62(v70, 1, v54);
  v105 = v61;
  if (v71 == 1)
  {
    sub_1000079B4(v70, &qword_1007837A0, &qword_1006408A0);
    v72 = 1;
    v73 = v107;
  }

  else
  {
    v74 = v98;
    sub_10045C6F0(v70, v98);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v73 = v107;
    if (EnumCaseMultiPayload != 1)
    {
    }

    v76 = *(v114 + 32);
    v77 = v97;
    v76(v97, v74, v21);
    v76(v113, v77, v21);
    sub_10045C458(v110);
    v72 = 0;
  }

  v78 = v113;
  v69(v113, v72, 1, v21);
  v79 = *(v106 + 48);
  sub_10000794C(v115, v73, &unk_10076BB50, &unk_10062DEA0);
  sub_10000794C(v78, v73 + v79, &unk_10076BB50, &unk_10062DEA0);
  v80 = v100;
  if (v100(v73, 1, v21) == 1)
  {
    sub_1000079B4(v113, &unk_10076BB50, &unk_10062DEA0);

    v81 = v80(v73 + v79, 1, v21);
    v82 = v112;
    v83 = v105;
    if (v81 == 1)
    {
      sub_1000079B4(v73, &unk_10076BB50, &unk_10062DEA0);
LABEL_29:
      sub_1000079B4(v115, &unk_10076BB50, &unk_10062DEA0);
      goto LABEL_30;
    }

    goto LABEL_26;
  }

  v84 = v99;
  sub_10000794C(v73, v99, &unk_10076BB50, &unk_10062DEA0);
  v85 = v80(v73 + v79, 1, v21);
  v82 = v112;
  if (v85 == 1)
  {
    sub_1000079B4(v113, &unk_10076BB50, &unk_10062DEA0);

    (*(v114 + 8))(v84, v21);
    v83 = v105;
LABEL_26:
    sub_1000079B4(v73, &qword_10076DCB8, &qword_100631830);
    goto LABEL_27;
  }

  v87 = v114;
  v88 = v94;
  (*(v114 + 32))(v94, v73 + v79, v21);
  sub_1001E66F0();
  v89 = dispatch thunk of static Equatable.== infix(_:_:)();

  v90 = *(v87 + 8);
  v90(v88, v21);
  sub_1000079B4(v113, &unk_10076BB50, &unk_10062DEA0);
  v90(v84, v21);
  sub_1000079B4(v73, &unk_10076BB50, &unk_10062DEA0);
  v83 = v105;
  if (v89)
  {
    goto LABEL_29;
  }

LABEL_27:
  v86 = OBJC_IVAR____TtC9Reminders33TTRIRemindersBoardFocusController_lastFocusedItemID;
  swift_beginAccess();
  sub_10000D184(v115, v82 + v86, &unk_10076BB50, &unk_10062DEA0);
  swift_endAccess();
LABEL_30:
  v91 = v111;
  swift_beginAccess();
  sub_10000D184(v91, v82 + v83, &qword_1007837A0, &qword_1006408A0);
  swift_endAccess();
  return result;
}

char *sub_10045D290(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v37 = type metadata accessor for TTRListBadgeView.ImageContentMode();
  v10 = *(v37 - 8);
  __chkstk_darwin(v37);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100058000(&qword_100768848, &unk_10063B3E0);
  __chkstk_darwin(v13 - 8);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = (&v36 - v17);
  v19 = OBJC_IVAR____TtC9Reminders52TTRIAccountsListsSuggestGroceriesCell_collectionView_addAccessory;
  type metadata accessor for AddAccessory(0);
  v20 = swift_allocObject();
  v21 = OBJC_IVAR____TtC9RemindersP33_DEAFC400F035D386D50AC552DAA1108312AddAccessory_accessoryState;
  v22 = sub_100058000(&qword_10077FF18, &qword_10063C0D8);
  (*(*(v22 - 8) + 56))(v20 + v21, 1, 1, v22);
  *(v20 + OBJC_IVAR____TtC9RemindersP33_DEAFC400F035D386D50AC552DAA1108312AddAccessory____lazy_storage___plusView) = 0;
  *&v4[v19] = v20;
  v38.receiver = v4;
  v38.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v38, "initWithFrame:", a1, a2, a3, a4);
  sub_100003540(0, &qword_10076FCB0, UIImage_ptr);
  v24 = v23;
  v25 = static UIImage.ttr_systemSymbolImage(named:)();
  v26 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge(0);
  v27 = *(v26 + 20);
  v28 = objc_opt_self();
  *(v18 + v27) = [v28 systemGreenColor];
  type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge.Color(0);
  swift_storeEnumTagMultiPayload();
  v29 = *(v26 + 24);
  v30 = enum case for TTRListBadgeView.Shape.round(_:);
  v31 = type metadata accessor for TTRListBadgeView.Shape();
  (*(*(v31 - 8) + 104))(v18 + v29, v30, v31);
  (*(v10 + 104))(v12, enum case for TTRListBadgeView.ImageContentMode.center(_:), v37);
  v32 = [v28 whiteColor];
  TTRListBadgeView.ImageParams.init(color:blendMode:contentMode:)();
  *v18 = v25;
  type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.Content(0);
  swift_storeEnumTagMultiPayload();
  v33 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration(0);
  (*(*(v33 - 8) + 56))(v18, 0, 1, v33);
  v34 = OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_badgeConfiguration;
  swift_beginAccess();
  sub_10000794C(v24 + v34, v15, &qword_100768848, &unk_10063B3E0);
  swift_beginAccess();
  sub_10045E3BC(v18, v24 + v34);
  swift_endAccess();
  sub_100036640(v15);

  sub_1000079B4(v15, &qword_100768848, &unk_10063B3E0);
  sub_1000079B4(v18, &qword_100768848, &unk_10063B3E0);
  return v24;
}

uint64_t sub_10045D7D8()
{
  v0 = type metadata accessor for UIListContentConfiguration.TextProperties();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v16 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  sub_100036110();
  UIListContentConfiguration.textProperties.getter();
  sub_100003540(0, &qword_100771DF0, UIFont_ptr);
  static UIFont.roundedFootnoteFont.getter();
  UIListContentConfiguration.TextProperties.font.setter();
  v9 = objc_opt_self();
  v10 = [v9 secondaryLabelColor];
  UIListContentConfiguration.TextProperties.color.setter();
  v11 = *(v1 + 16);
  v11(v5, v8, v0);
  UIListContentConfiguration.textProperties.setter();
  UIListContentConfiguration.secondaryTextProperties.getter();
  static UIFont.roundedBodyFont.getter();
  UIListContentConfiguration.TextProperties.font.setter();
  v12 = [v9 labelColor];
  UIListContentConfiguration.TextProperties.color.setter();
  v11(v16, v5, v0);
  UIListContentConfiguration.secondaryTextProperties.setter();
  static TTRLocalizableStrings.SuggestGroceries.cellTitle.getter();
  UIListContentConfiguration.text.setter();
  static TTRLocalizableStrings.SuggestGroceries.cellSubtitle.getter();
  UIListContentConfiguration.secondaryText.setter();
  v13 = *(v1 + 8);
  v13(v5, v0);
  return (v13)(v8, v0);
}

id sub_10045DB98()
{
  v1 = OBJC_IVAR____TtC9RemindersP33_DEAFC400F035D386D50AC552DAA1108312AddAccessory____lazy_storage___plusView;
  v2 = *(v0 + OBJC_IVAR____TtC9RemindersP33_DEAFC400F035D386D50AC552DAA1108312AddAccessory____lazy_storage___plusView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9RemindersP33_DEAFC400F035D386D50AC552DAA1108312AddAccessory____lazy_storage___plusView);
  }

  else
  {
    v4 = sub_10045DBF8();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10045DBF8()
{
  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10062D410;
  v1 = objc_opt_self();
  *(v0 + 32) = [v1 whiteColor];
  *(v0 + 40) = [v1 systemGreenColor];
  sub_100003540(0, &qword_100772610, UIColor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = objc_opt_self();
  v4 = [v3 configurationWithPaletteColors:isa];

  sub_100003540(0, &qword_100771DF0, UIFont_ptr);
  v5 = v4;
  v6 = static UIFont.roundedSubheadlineSemiboldFont.getter();
  v7 = [v3 configurationWithFont:v6];

  v8 = [v5 configurationByApplyingConfiguration:v7];
  v9 = v8;
  v10 = [v3 configurationWithScale:3];
  v11 = [v9 configurationByApplyingConfiguration:v10];

  sub_100003540(0, &qword_10076FCB0, UIImage_ptr);
  v12 = v11;
  v13 = static UIImage.ttr_systemSymbolImage(named:withConfiguration:)();

  v14 = [objc_allocWithZone(UIImageView) initWithImage:v13];
  return v14;
}

uint64_t sub_10045DE3C()
{
  sub_1000079B4(v0 + OBJC_IVAR____TtC9RemindersP33_DEAFC400F035D386D50AC552DAA1108312AddAccessory_accessoryState, &qword_1007800C8, &unk_10063F8A0);

  return swift_deallocClassInstance();
}

void sub_10045DEE8(uint64_t a1)
{
  sub_100014A40(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10045DF80@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9RemindersP33_DEAFC400F035D386D50AC552DAA1108312AddAccessory_accessoryState;
  swift_beginAccess();
  return sub_10000794C(v3 + v4, a1, &qword_1007800C8, &unk_10063F8A0);
}

double sub_10045DFEC(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9RemindersP33_DEAFC400F035D386D50AC552DAA1108312AddAccessory_accessoryState;
  swift_beginAccess();
  sub_100031E0C(a1, v3 + v4);
  swift_endAccess();
  return result;
}

uint64_t sub_10045E0B4@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  v1 = sub_100058000(&unk_10077FC20, &unk_100638BA0);
  __chkstk_darwin(v1 - 8);
  v3 = v17 - v2;
  v4 = type metadata accessor for UICellAccessory.Placement();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10045DB98();
  v12 = &v7[*(sub_100058000(&qword_100779498, &unk_100638BB0) + 48)];
  v13 = enum case for UICellAccessory.DisplayedState.always(_:);
  v14 = type metadata accessor for UICellAccessory.DisplayedState();
  (*(*(v14 - 8) + 104))(v7, v13, v14);
  *v12 = variable initialization expression of TTRSmartListFilterEditorInteractor.listFetchOperationManager;
  v12[1] = 0;
  (*(v5 + 104))(v7, enum case for UICellAccessory.Placement.trailing(_:), v4);
  v15 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
  UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
  static UICellAccessory.customView(configuration:)();
  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_10045E364()
{
  result = qword_1007838B0;
  if (!qword_1007838B0)
  {
    type metadata accessor for AddAccessory(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007838B0);
  }

  return result;
}

uint64_t sub_10045E3BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100768848, &unk_10063B3E0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10045E42C(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(a1);
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 208))(ObjectType, v3);
  swift_unknownObjectRelease();
  return v5;
}

char *TTRListDetailPresenter.init(interactor:viewModelSource:undoManager:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v3;
  v7 = sub_100461E24(a1, a2, a3);

  (*(*(*(v6 + 88) - 8) + 8))(a2);
  swift_unknownObjectRelease();
  return v7;
}

char *TTRListDetailPresenter.deinit()
{
  v1 = *v0;
  swift_unknownObjectRelease();
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 120));

  v2 = *(*v0 + 136);
  v3 = type metadata accessor for TTRRemindersListListType();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t TTRListDetailPresenter.viewModel.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = __chkstk_darwin(AssociatedTypeWitness);
  v8 = &v10 - v7;
  (*(v2 + 24))(v3, v2, v6);
  (*(*(v1 + 104) + 16))(v8, *(v1 + 88));
  return (*(v5 + 8))(v8, AssociatedTypeWitness);
}

uint64_t TTRListDetailPresenter.colors.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = __chkstk_darwin(AssociatedTypeWitness);
  v8 = &v11 - v7;
  (*(v2 + 24))(v3, v2, v6);
  v9 = (*(*(v1 + 104) + 24))(v8, *(v1 + 88));
  (*(v5 + 8))(v8, AssociatedTypeWitness);
  return v9;
}

Swift::Void __swiftcall TTRListDetailPresenter.requestUpdateName(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  v7 = __chkstk_darwin(AssociatedTypeWitness);
  v9 = &v21 - v8;
  (*(v4 + 24))(v5, v4, v7);
  if (qword_1007672E0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100003E30(v10, qword_1007838B8);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x44497463656A626FLL;
  *(inited + 40) = 0xE800000000000000;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = (*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness, AssociatedConformanceWitness);
  *(inited + 72) = sub_10001DF64();
  *(inited + 48) = v13;
  v14 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_10011F2F8(inited + 32);
  sub_10000FD44("Change List Name {objectID: %@}", 31, 2, v14);

  static TTRLocalizableStrings.UndoAction.renameList.getter();
  v15 = objc_opt_self();
  v16 = String._bridgeToObjectiveC()();

  v17 = swift_allocObject();
  v17[2] = v2;
  v17[3] = countAndFlagsBits;
  v17[4] = object;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_100462314;
  *(v18 + 24) = v17;
  aBlock[4] = sub_100026418;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026440;
  aBlock[3] = &unk_100729478;
  v19 = _Block_copy(aBlock);

  [v15 withActionName:v16 block:v19];
  _Block_release(v19);

  (*(v21 + 8))(v9, AssociatedTypeWitness);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

Swift::Void __swiftcall TTRListDetailPresenter.requestUpdateColor(index:)(Swift::Int index)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 96);
  v37 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v8 = &v34 - v7;
  v9 = type metadata accessor for TTRListColors.Color();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = TTRListDetailPresenter.colors.getter();
  if (index < 0)
  {
    __break(1u);
  }

  else if (*(v13 + 16) > index)
  {
    v34 = v4;
    v35 = v10;
    v14 = *(v10 + 16);
    v15 = v13 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * index;
    v36 = v9;
    v14(v12, v15, v9);

    if (qword_1007672E0 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  __break(1u);
LABEL_13:
  swift_once();
LABEL_4:
  v16 = type metadata accessor for Logger();
  sub_100003E30(v16, qword_1007838B8);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 28532;
  *(inited + 40) = 0xE200000000000000;
  v18 = TTRListColors.Color.description.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v18;
  *(inited + 56) = v19;
  v20 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_10011F2F8(inited + 32);
  sub_10000FD44("Change List Badge Color {to: %@}", 32, 2, v20);

  (*(v5 + 24))(v37, v5);
  v21 = (*(*(v34 + 104) + 32))(v12, v8, *(v34 + 88));
  (*(v6 + 8))(v8, AssociatedTypeWitness);
  if (v21)
  {
    v22 = v21;
    v23._countAndFlagsBits = 0x432065676E616843;
    v23._object = 0xEC000000726F6C6FLL;
    v24._object = 0x8000000100687430;
    v24._countAndFlagsBits = 0xD00000000000002FLL;
    TTRLocalizedString(_:comment:)(v23, v24);
    v25 = objc_opt_self();
    v26 = String._bridgeToObjectiveC()();

    v27 = swift_allocObject();
    *(v27 + 16) = v2;
    *(v27 + 24) = v22;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_10046237C;
    *(v28 + 24) = v27;
    aBlock[4] = sub_1001A84C0;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100026440;
    aBlock[3] = &unk_1007294F0;
    v29 = _Block_copy(aBlock);
    v30 = v22;

    [v25 withActionName:v26 block:v29];
    _Block_release(v29);

    (*(v35 + 8))(v12, v36);
    LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

    if ((v29 & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "Unable to get list color", v33, 2u);
  }

  (*(v35 + 8))(v12, v36);
}

Swift::Void __swiftcall TTRListDetailPresenter.requestUpdateBadgeEmblem(index:)(Swift::Int index)
{
  v4 = index - 1;
  if (__OFSUB__(index, 1))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_7;
  }

  v1 = v2;
  type metadata accessor for TTRListBadgeEmblem();
  v5 = dispatch thunk of static TTRListBadgeEmblem.allBadges.getter();
  if (v4 >= *(v5 + 16))
  {
    goto LABEL_16;
  }

  v3 = *(v5 + 8 * v4 + 32);

  if (qword_1007672E0 != -1)
  {
LABEL_17:
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003E30(v6, qword_1007838B8);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 28532;
  *(inited + 40) = 0xE200000000000000;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v8;
  *(inited + 56) = v9;
  v10 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_10011F2F8(inited + 32);
  sub_10000FD44("Change List Badge Emblem {to: %@}", 33, 2, v10);

  v11._countAndFlagsBits = 0x422065676E616843;
  v11._object = 0xEC00000065676461;
  v12._object = 0x8000000100687490;
  v12._countAndFlagsBits = 0xD00000000000002FLL;
  TTRLocalizedString(_:comment:)(v11, v12);
  v13 = objc_opt_self();
  v14 = String._bridgeToObjectiveC()();

  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  *(v15 + 24) = v3;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1004623E0;
  *(v16 + 24) = v15;
  aBlock[4] = sub_1001A84C0;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026440;
  aBlock[3] = &unk_100729568;
  v17 = _Block_copy(aBlock);
  v18 = v3;

  [v13 withActionName:v14 block:v17];

  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return;
  }

  __break(1u);
LABEL_7:
  if (qword_1007672E0 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100003E30(v20, qword_1007838B8);
  oslog = Logger.logObject.getter();
  v21 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(oslog, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    aBlock[0] = v23;
    *v22 = 136315138;
    sub_100234DC8();
    v24 = BinaryInteger.description.getter();
    v26 = sub_100004060(v24, v25, aBlock);

    *(v22 + 4) = v26;
    _os_log_impl(&_mh_execute_header, oslog, v21, "Failed to update badge emblem because emblemIndex should not be less than 0 {emblemIndex: %s}", v22, 0xCu);
    sub_100004758(v23);
  }

  else
  {
  }
}

Swift::Void __swiftcall TTRListDetailPresenter.requestUpdateBadgeEmoji(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if (qword_1007672E0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003E30(v5, qword_1007838B8);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 28532;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = countAndFlagsBits;
  *(inited + 56) = object;

  v7 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_10011F2F8(inited + 32);
  sub_10000FD44("Change List Badge Emoji {to: %@}", 32, 2, v7);

  v8._countAndFlagsBits = 0x452065676E616843;
  v8._object = 0xEC000000696A6F6DLL;
  v9._object = 0x80000001006874F0;
  v9._countAndFlagsBits = 0xD00000000000002FLL;
  TTRLocalizedString(_:comment:)(v8, v9);
  v10 = objc_opt_self();
  v11 = String._bridgeToObjectiveC()();

  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = countAndFlagsBits;
  v12[4] = object;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_100462444;
  *(v13 + 24) = v12;
  v16[4] = sub_1001A84C0;
  v16[5] = v13;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_100026440;
  v16[3] = &unk_1007295E0;
  v14 = _Block_copy(v16);

  [v10 withActionName:v11 block:v14];

  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void TTRListDetailPresenter.requestUpdateListType(_:)(uint64_t a1)
{
  v2 = v1;
  v35 = a1;
  v37 = *v1;
  v36 = type metadata accessor for TTRRemindersListListType();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v33 = v4;
  v34 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v37[12];
  v6 = v37[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = *(AssociatedTypeWitness - 8);
  v8 = __chkstk_darwin(AssociatedTypeWitness);
  v10 = &v30 - v9;
  (*(v5 + 24))(v6, v5, v8);
  if (qword_1007672E0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100003E30(v11, qword_1007838B8);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x44497463656A626FLL;
  *(inited + 40) = 0xE800000000000000;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = *(AssociatedConformanceWitness + 40);
  v32 = v10;
  v15 = v14(AssociatedTypeWitness, AssociatedConformanceWitness);
  *(inited + 72) = sub_10001DF64();
  *(inited + 48) = v15;
  v16 = sub_100008E04(inited);
  v31 = AssociatedTypeWitness;
  v17 = v16;
  swift_setDeallocating();
  sub_10011F2F8(inited + 32);
  sub_10000FD44("Change List Type {objectID: %@}", 31, 2, v17);

  v18._object = 0x8000000100687540;
  v19._countAndFlagsBits = 0xD000000000000033;
  v19._object = 0x8000000100687560;
  v18._countAndFlagsBits = 0xD000000000000010;
  TTRLocalizedString(_:comment:)(v18, v19);
  v20 = objc_opt_self();
  v21 = String._bridgeToObjectiveC()();

  v22 = v34;
  v23 = v36;
  (*(v3 + 16))(v34, v35, v36);
  v24 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v25 = swift_allocObject();
  *(v25 + 2) = v6;
  v26 = v37;
  *(v25 + 3) = v37[11];
  *(v25 + 4) = v5;
  *(v25 + 5) = v26[13];
  *(v25 + 6) = v2;
  (*(v3 + 32))(&v25[v24], v22, v23);
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1004624AC;
  *(v27 + 24) = v25;
  aBlock[4] = sub_1001A84C0;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026440;
  aBlock[3] = &unk_100729658;
  v28 = _Block_copy(aBlock);

  [v20 withActionName:v21 block:v28];
  _Block_release(v28);

  (*(v38 + 8))(v32, v31);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

Swift::Bool __swiftcall TTRListDetailPresenter.shouldPresentConfirmationAlertForRemovingExistingSections()()
{
  v28 = *v0;
  v1 = v28[12];
  v31 = v28[10];
  v32 = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v30 = v20 - v3;
  v27 = type metadata accessor for TTRListDetailViewModel(0);
  __chkstk_darwin(v27);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListListType();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v7 + 104);
  v26(v10, enum case for TTRRemindersListListType.groceries(_:), v6, v8);
  sub_100462550();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v11 = *(v7 + 8);
  v11(v10, v6);
  if (v34 == v33)
  {
    v12 = *v0;
    v25 = AssociatedTypeWitness;
    v23 = v12[15];
    v24 = v11;
    v13 = *(v32 + 24);
    v14 = v30;
    v20[1] = v0[2];
    v21 = v13;
    v22 = v32 + 24;
    (v13)(v31);
    v15 = v25;
    (*(v28[13] + 16))(v14, v28[11]);
    v29 = *(v29 + 8);
    (v29)(v14, v15);
    (v26)(v10, enum case for TTRRemindersListListType.standard(_:), v6);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v24(v10, v6);
    if (v34 == v33)
    {
      v16 = v30;
      v21(v31, v32);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v18 = (*(AssociatedConformanceWitness + 96))(v15, AssociatedConformanceWitness);
      (v29)(v16, v15);
    }

    else
    {
      v18 = 0;
    }

    sub_1004625A8(v5);
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

Swift::Void __swiftcall TTRListDetailPresenter.removeExistingSections()()
{
  v1._countAndFlagsBits = 0x732065766F6D6552;
  v1._object = 0xEF736E6F69746365;
  v2._object = 0x80000001006875A0;
  v2._countAndFlagsBits = 0xD00000000000006FLL;
  TTRLocalizedString(_:comment:)(v1, v2);
  v3 = objc_opt_self();
  v4 = String._bridgeToObjectiveC()();

  v5 = swift_allocObject();
  *(v5 + 16) = sub_100462604;
  *(v5 + 24) = v0;
  v7[4] = sub_1001A84C0;
  v7[5] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100026440;
  v7[3] = &unk_1007296A8;
  v6 = _Block_copy(v7);

  [v3 withActionName:v4 block:v6];

  _Block_release(v6);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }
}

uint64_t sub_100460520()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_1007838B8);
  v1 = sub_100003E30(v0, qword_1007838B8);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *TTRListDetailPresenter.__allocating_init(interactor:viewModelSource:undoManager:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  swift_allocObject();
  v8 = sub_100461E24(a1, a2, a3);

  (*(*(*(v4 + 88) - 8) + 8))(a2);
  swift_unknownObjectRelease();
  return v8;
}

Swift::Int sub_100460708(uint64_t a1)
{
  Hasher.init(_seed:)();
  TTRListDetailSavedObjectID.ObjectType.hash(into:)(v3, *v1);
  return Hasher._finalize()();
}

uint64_t TTRListDetailPresenter.__deallocating_deinit()
{
  TTRListDetailPresenter.deinit();

  return swift_deallocClassInstance();
}

char *sub_100460820(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100058000(&qword_1007839B8, &qword_10063FA30);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_100460914(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100058000(&qword_100781288, &qword_10063CE68);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100009044(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100460A28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100058000(&qword_1007708F8, &unk_100632FC0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000794C(v4, &v11, &unk_100776BE0, &unk_10062D7F0);
      v5 = v11;
      result = sub_1003B3EE0();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100007DD8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100460B78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100058000(&unk_10076B980, &unk_10063CE20);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_1003AB368(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100460C58(uint64_t a1)
{
  v2 = sub_100058000(&qword_100783968, &unk_10063F9A0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100058000(&qword_100781268, &unk_10063CE40);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000794C(v9, v5, &qword_100783968, &unk_10063F9A0);
      v11 = *v5;
      result = sub_1002613B0(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for TTRSectionID();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5 + v8, v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100460E40(uint64_t a1)
{
  v2 = sub_100058000(&qword_100783980, &qword_10063F9D8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100058000(&qword_100781300, &unk_10063F9E0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000794C(v9, v5, &qword_100783980, &qword_10063F9D8);
      result = sub_1003AB490(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for TTRRemindersListPostponeType();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100461028(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100058000(&qword_1007758E8, &unk_100635F10);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100009044(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100461124(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100058000(&qword_1007812F8, &unk_10063CEE0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = v5;
      result = sub_1003AB564(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100461210(uint64_t a1)
{
  v2 = sub_100058000(&qword_100783970, &unk_10063F9B0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100058000(&qword_100781270, &unk_10063CE50);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000794C(v9, v5, &qword_100783970, &unk_10063F9B0);
      result = sub_1003AB5F4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for TTRSectionID();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for REMRemindersListDataView.SectionLite();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100461430(uint64_t a1)
{
  v2 = sub_100058000(&qword_100783978, &unk_10063F9C8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100058000(&qword_100781280, &qword_10063CE60);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000794C(v9, v5, &qword_100783978, &unk_10063F9C8);
      v11 = *v5;
      v12 = v5[1];
      result = sub_100009044(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for REMRemindersListDataView.SectionLite();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_100461644(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void *))
{
  v4 = a1[2];
  if (!v4)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100058000(a2, a3);
  v7 = static _DictionaryStorage.allocate(capacity:)();
  v9 = a1[4];
  v8 = a1[5];
  v10 = a1[6];
  v11 = a4(v9);
  if (v12)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v7;
  }

  v13 = v11;
  result = v9;
  v15 = a1 + 9;
  while (1)
  {
    *(v7 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
    *(v7[6] + 8 * v13) = result;
    v16 = (v7[7] + 16 * v13);
    *v16 = v8;
    v16[1] = v10;
    v17 = v7[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      break;
    }

    v7[2] = v19;
    if (!--v4)
    {
      goto LABEL_8;
    }

    v20 = v15 + 3;
    v21 = *(v15 - 2);
    v22 = *(v15 - 1);
    v10 = *v15;

    v13 = a4(v21);
    v15 = v20;
    v8 = v22;
    result = v21;
    if (v23)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100461778(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100058000(&qword_100783950, &unk_10063F980);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1003B3EE0();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10046187C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100058000(&qword_100783958, &qword_10063F990);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000794C(v4, &v11, &qword_100783960, &qword_10063F998);
      v5 = v11;
      result = sub_1003B3EE0();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100007DD8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1004619A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100058000(&qword_1007839B0, &unk_10063FA20);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1003B3EE0();
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100461A9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100058000(&qword_1007839A8, &qword_10063FA18);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v8 = *(i - 2);
      v7 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_100009044(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = (v3[7] + 24 * result);
      *v14 = v8;
      v14[1] = v7;
      v14[2] = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100461BC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100058000(&qword_100783988, &qword_10063F9F0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000794C(v4, v13, &qword_100783990, &unk_10063F9F8);
      result = sub_1003AB968(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100007DD8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100461CFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100058000(&qword_1007812B8, &unk_10063CEA0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000794C(v4, &v11, &qword_100783998, &qword_10063FA08);
      v5 = v11;
      result = sub_1003B3EE0();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100007DD8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

char *sub_100461E24(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v28 = a2;
  v8 = *v4;
  v9 = type metadata accessor for TTRRemindersListListType();
  v34 = *(v9 - 8);
  v35 = v9;
  __chkstk_darwin(v9);
  v33 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v8[12];
  v30 = v8[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = *(AssociatedTypeWitness - 8);
  v32 = AssociatedTypeWitness;
  __chkstk_darwin(AssociatedTypeWitness);
  v14 = &v28 - v13;
  v15 = type metadata accessor for TTRListDetailViewModel(0);
  v16 = v15 - 8;
  v17 = __chkstk_darwin(v15);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 2) = a1;
  v29 = v8;
  v20 = v8[15];
  v21 = v8[11];
  (*(*(v21 - 8) + 16))(&v4[v20], a2, v21, v17);
  *&v4[*(*v4 + 128)] = a3;
  v22 = *(v11 + 24);
  swift_unknownObjectRetain();
  v23 = a3;
  v22(v30, v11);
  (*(v29[13] + 16))(v14, v21);
  (*(v31 + 8))(v14, v32);
  v25 = v33;
  v24 = v34;
  v26 = v35;
  (*(v34 + 16))(v33, &v19[*(v16 + 76)], v35);
  sub_1004625A8(v19);
  (*(v24 + 32))(&v4[*(*v4 + 136)], v25, v26);
  return v4;
}

char *_s9Reminders22TTRListDetailPresenterC6badgesSayAA0bC15AppearanceBadgeVGvg_0()
{
  type metadata accessor for TTRListBadgeEmblem();
  v0 = dispatch thunk of static TTRListBadgeEmblem.allBadges.getter();
  v1 = *(v0 + 16);
  if (v1)
  {
    sub_1004A223C(0, v1, 0);
    v2 = 32;
    v3 = _swiftEmptyArrayStorage;
    do
    {
      v4 = *(v0 + v2);
      v5 = REMListBadgeEmblem.image.getter();
      v6 = REMListBadgeEmblem.name.getter();
      v20 = v3;
      v9 = *(v3 + 2);
      v8 = *(v3 + 3);
      if (v9 >= v8 >> 1)
      {
        v11 = v6;
        v12 = v7;
        sub_1004A223C((v8 > 1), v9 + 1, 1);
        v7 = v12;
        v6 = v11;
        v3 = v20;
      }

      *(v3 + 2) = v9 + 1;
      v10 = &v3[32 * v9];
      *(v10 + 4) = v5;
      *(v10 + 5) = v6;
      *(v10 + 6) = v7;
      *(v10 + 7) = v4;
      v2 += 8;
      --v1;
    }

    while (v1);
  }

  else
  {

    v3 = _swiftEmptyArrayStorage;
  }

  v13 = static TTRCommonAsset.Image.emojiIcon.getter();
  v14._countAndFlagsBits = 0x696A6F6D45;
  v15._object = 0x8000000100687630;
  v14._object = 0xE500000000000000;
  v15._countAndFlagsBits = 0xD000000000000014;
  v16 = TTRLocalizedString(_:comment:)(v14, v15);
  v17 = *(v3 + 2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v17 >= *(v3 + 3) >> 1)
  {
    v3 = sub_100547A78(isUniquelyReferenced_nonNull_native, v17 + 1, 1, v3);
  }

  sub_1000EDD80(0, 0, 1, v13, v16._countAndFlagsBits, v16._object, 0);
  return v3;
}

unint64_t sub_100462550()
{
  result = qword_10077A0D0;
  if (!qword_10077A0D0)
  {
    type metadata accessor for TTRRemindersListListType();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077A0D0);
  }

  return result;
}

uint64_t sub_1004625A8(uint64_t a1)
{
  v2 = type metadata accessor for TTRListDetailViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void destroy for TTRListDetailAppearanceBadge(uint64_t a1)
{

  v2 = *(a1 + 24);
}

void *initializeWithCopy for TTRListDetailAppearanceBadge(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  v5 = *(a2 + 24);
  a1[2] = *(a2 + 16);
  a1[3] = v5;
  v6 = v3;

  v7 = v5;
  return a1;
}

uint64_t assignWithCopy for TTRListDetailAppearanceBadge(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  v7 = *(a1 + 24);
  v8 = *(a2 + 24);
  *(a1 + 24) = v8;
  v9 = v8;

  return a1;
}

uint64_t assignWithTake for TTRListDetailAppearanceBadge(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  v5 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t sub_1004627D8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TTRRemindersListListType();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100462930()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100783A48);
  v1 = sub_100003E30(v0, qword_100783A48);
  if (qword_100767290 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A8700);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1004629F8(void *a1)
{
  v142 = type metadata accessor for REMNotificationIdentifier();
  v147 = *(v142 - 8);
  __chkstk_darwin(v142);
  v141[1] = v141 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v141[2] = v141 - v4;
  __chkstk_darwin(v5);
  v144 = v141 - v6;
  v7 = sub_100058000(&qword_100783A60, &qword_10063FAF8);
  __chkstk_darwin(v7 - 8);
  v9 = v141 - v8;
  v10 = type metadata accessor for RDUserNotificationType();
  v149 = *(v10 - 8);
  v150 = v10;
  __chkstk_darwin(v10);
  v143 = v141 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v145 = v141 - v13;
  v14 = type metadata accessor for RDUserNotificationAction();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v141 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v19 = __chkstk_darwin(v18).n128_u64[0];
  v21 = v141 - v20;
  v151 = [a1 notification];
  v22 = [a1 actionIdentifier];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  if (v23 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v25 == v26)
  {
    goto LABEL_22;
  }

  v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v27)
  {
    goto LABEL_5;
  }

  v148 = *(v15 + 104);
  v148(v21, enum case for RDUserNotificationAction.viewAssignmentInList(_:), v14);
  v45 = RDUserNotificationAction.rawValue.getter();
  v47 = v46;
  v141[0] = *(v15 + 8);
  (v141[0])(v21, v14);
  if (v23 == v45 && v25 == v47)
  {
    goto LABEL_22;
  }

  v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v48)
  {
    goto LABEL_5;
  }

  v148(v17, enum case for RDUserNotificationAction.declineAssignment(_:), v14);
  v49 = RDUserNotificationAction.rawValue.getter();
  v51 = v50;
  (v141[0])(v17, v14);
  if (v23 == v49 && v25 == v51)
  {
LABEL_22:
  }

  else
  {
    v88 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v88 & 1) == 0)
    {
      if (qword_1007672E8 == -1)
      {
LABEL_50:
        v89 = type metadata accessor for Logger();
        sub_100003E30(v89, qword_100783A48);

        v90 = Logger.logObject.getter();
        v91 = static os_log_type_t.fault.getter();

        v92 = os_log_type_enabled(v90, v91);
        v93 = v151;
        if (v92)
        {
          v94 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          v152 = v95;
          *v94 = 136315138;
          v96 = sub_100004060(v23, v25, &v152);

          *(v94 + 4) = v96;
          _os_log_impl(&_mh_execute_header, v90, v91, "App should not receive non-default or 'fall-through-as-default' actions. remindd is not configured properly. {actionIdentifier: %s", v94, 0xCu);
          sub_100004758(v95);
        }

        else
        {
        }

        return;
      }

LABEL_95:
      swift_once();
      goto LABEL_50;
    }
  }

LABEL_5:
  v28 = [v151 request];
  v29 = [v28 content];

  v148 = v29;
  RDUserNotificationType.init(notificationContent:)();
  v23 = v149;
  v30 = v150;
  if ((*(v149 + 48))(v9, 1, v150) == 1)
  {

    sub_1000079B4(v9, &qword_100783A60, &qword_10063FAF8);
    if (qword_1007672E8 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100003E30(v31, qword_100783A48);
    v32 = v148;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      *(v35 + 4) = v32;
      *v36 = v32;
      v37 = v32;
      _os_log_impl(&_mh_execute_header, v33, v34, "Cannot determine notification type from content. {content: %@}", v35, 0xCu);
      sub_1000079B4(v36, &unk_10076DF80, &qword_10062F730);
    }

    else
    {
    }

    return;
  }

  v38 = v145;
  (*(v23 + 32))(v145, v9, v30);
  v39 = v143;
  (*(v23 + 16))(v143, v38, v30);
  v40 = (*(v23 + 88))(v39, v30);
  v42 = v146;
  v41 = v147;
  v43 = v144;
  if (v40 == enum case for RDUserNotificationType.reminderAlarm(_:) || v40 == enum case for RDUserNotificationType.todayNotificationForSingleReminder(_:))
  {
    goto LABEL_53;
  }

  if (v40 == enum case for RDUserNotificationType.caldavSharedList(_:))
  {

    (*(v23 + 96))(v39, v30);
    v44 = *v39;
    (*(v42 + 24))(*v39);
LABEL_14:

LABEL_15:
    goto LABEL_16;
  }

  if (v40 != enum case for RDUserNotificationType.assignmentNotification(_:))
  {
    if (v40 == enum case for RDUserNotificationType.sharedListAddedReminderNotification(_:))
    {

      (*(v23 + 96))(v39, v30);
      v41 = *v39;
      if (!(*v39 >> 62))
      {
        if (!*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_86;
        }

LABEL_39:
        if ((v41 & 0xC000000000000001) != 0)
        {
          v69 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_42;
        }

        if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v69 = v41[4].isa;
LABEL_42:
          v70 = v69;

          v71 = *v42;
          v152 = 0;
          v72 = [v71 fetchReminderWithObjectID:v70 error:&v152];
          if (v72)
          {
            v73 = v72;
            v74 = qword_1007672E8;
            v75 = v152;
            if (v74 != -1)
            {
              swift_once();
            }

            v76 = type metadata accessor for Logger();
            sub_100003E30(v76, qword_100783A48);
            v77 = v70;
            v78 = Logger.logObject.getter();
            v79 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v78, v79))
            {
              v80 = swift_slowAlloc();
              v147 = swift_slowAlloc();
              v152 = v147;
              *v80 = 136315138;
              v81 = [(objc_class *)v77 description];
              v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v84 = v83;

              v30 = v150;
              v85 = sub_100004060(v82, v84, &v152);
              v38 = v145;

              *(v80 + 4) = v85;
              v23 = v149;
              _os_log_impl(&_mh_execute_header, v78, v79, "REMSharedEntitySyncActivity: sharedListUpdateNotification.reminderIDs.first {reminderID: %s}", v80, 0xCu);
              sub_100004758(v147);
            }

            v86 = *(v146 + 8);
            v87 = [v73 objectID];
            v86();

            goto LABEL_15;
          }

          v124 = v152;
          v125 = _convertNSErrorToError(_:)();

          swift_willThrow();
          if (qword_1007672E8 != -1)
          {
            swift_once();
          }

          v126 = type metadata accessor for Logger();
          sub_100003E30(v126, qword_100783A48);
          v127 = v70;
          v128 = Logger.logObject.getter();
          v129 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v128, v129))
          {
            v130 = swift_slowAlloc();
            v131 = swift_slowAlloc();
            v152 = v131;
            *v130 = 136315138;
            v132 = [(objc_class *)v127 description];
            v147 = v125;
            v133 = v23;
            v134 = v132;
            v135 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v137 = v136;

            v138 = sub_100004060(v135, v137, &v152);

            *(v130 + 4) = v138;
            _os_log_impl(&_mh_execute_header, v128, v129, "REMSharedEntitySyncActivity: Cannot look up reminder by sharedListUpdateNotification.reminderIDs.first {reminderID: %s}", v130, 0xCu);
            sub_100004758(v131);

            (*(v133 + 8))(v145, v30);
            return;
          }

LABEL_16:
          (*(v23 + 8))(v38, v30);
          return;
        }

        __break(1u);
        goto LABEL_95;
      }

LABEL_85:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_86:

        if (qword_1007672E8 != -1)
        {
          swift_once();
        }

        v140 = type metadata accessor for Logger();
        sub_100003E30(v140, qword_100783A48);
        v44 = Logger.logObject.getter();
        v121 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v44, v121))
        {
          v122 = swift_slowAlloc();
          *v122 = 0;
          v123 = "REMSharedEntitySyncActivity: Received shared list update notification response by this notification has no reminderID.";
          goto LABEL_90;
        }

        goto LABEL_91;
      }

      goto LABEL_39;
    }

    if (v40 != enum case for RDUserNotificationType.dueDateDeltaAlarm(_:))
    {
      if (v40 == enum case for RDUserNotificationType.todayNotification(_:))
      {

        (*(v42 + 56))(v103);
LABEL_92:

        goto LABEL_15;
      }

      if (v40 != enum case for RDUserNotificationType.todayNotificationBadge(_:))
      {
        if (v40 == enum case for RDUserNotificationType.beforeFirstUnlock(_:))
        {
          (*(v23 + 8))(v38, v30);
        }

        else
        {
          _diagnoseUnexpectedEnumCase<A>(type:)();
          __break(1u);
        }

        return;
      }

      if (qword_1007672E8 != -1)
      {
        swift_once();
      }

      v120 = type metadata accessor for Logger();
      sub_100003E30(v120, qword_100783A48);
      v44 = Logger.logObject.getter();
      v121 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v44, v121))
      {
        v122 = swift_slowAlloc();
        *v122 = 0;
        v123 = "Received todayNotificationBadge response but this notification has no banner.";
LABEL_90:
        _os_log_impl(&_mh_execute_header, v44, v121, v123, v122, 2u);

        goto LABEL_14;
      }

LABEL_91:

      goto LABEL_92;
    }

LABEL_53:

    (*(v23 + 96))(v39, v30);
    v97 = v142;
    (v41[4].isa)(v43, v39, v142);
    v98 = REMStore.fetchReminder(notificationIdentifier:includingDueDateDeltaAlerts:)();
    (v41[1].isa)(v43, v97);
    if ([v98 isOverdue])
    {
      v99 = *(v146 + 40);
      v100 = [v98 objectID];
      v99();
    }

    else
    {
      v101 = *(v146 + 8);
      v102 = [v98 objectID];
      v101();
    }

    (*(v23 + 8))(v38, v150);
    return;
  }

  (*(v23 + 96))(v39, v30);
  v52 = *v39;
  if (!(v52 >> 62))
  {
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_27;
    }

LABEL_79:

    if (qword_1007672E8 != -1)
    {
      swift_once();
    }

    v139 = type metadata accessor for Logger();
    sub_100003E30(v139, qword_100783A48);
    v44 = Logger.logObject.getter();
    v121 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v44, v121))
    {
      v122 = swift_slowAlloc();
      *v122 = 0;
      v123 = "Received assignment notification response but this notification has no reminderID.";
      goto LABEL_90;
    }

    goto LABEL_91;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_79;
  }

LABEL_27:
  if ((v52 & 0xC000000000000001) == 0)
  {
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v53 = v52[4].isa;
      goto LABEL_30;
    }

    __break(1u);
    goto LABEL_85;
  }

  v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_30:
  v54 = v53;

  v55 = *v42;
  v152 = 0;
  v56 = [v55 fetchReminderWithObjectID:v54 error:&v152];
  if (!v56)
  {
    v104 = v152;
    v105 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1007672E8 != -1)
    {
      swift_once();
    }

    v106 = type metadata accessor for Logger();
    sub_100003E30(v106, qword_100783A48);
    v107 = v54;
    v108 = Logger.logObject.getter();
    v109 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v152 = v111;
      *v110 = 136315138;
      v112 = v107;
      v113 = [(objc_class *)v112 description];
      v147 = v105;
      v114 = v38;
      v115 = v113;
      v116 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v118 = v117;

      v119 = sub_100004060(v116, v118, &v152);

      *(v110 + 4) = v119;
      _os_log_impl(&_mh_execute_header, v108, v109, "Cannot look up reminder by assignmentNotification.reminderIDs.first {reminderID: %s}", v110, 0xCu);
      sub_100004758(v111);

      (*(v149 + 8))(v114, v30);
      return;
    }

    goto LABEL_16;
  }

  v57 = v56;
  v58 = qword_1007672E8;
  v59 = v152;
  if (v58 != -1)
  {
    swift_once();
  }

  v60 = type metadata accessor for Logger();
  sub_100003E30(v60, qword_100783A48);
  v61 = v57;
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v64 = 138412290;
    v66 = [v61 objectID];
    *(v64 + 4) = v66;
    *v65 = v66;
    _os_log_impl(&_mh_execute_header, v62, v63, "REMAssignment: assignmentNotification navigateToReminderBy {reminderID: %@}.", v64, 0xCu);
    sub_1000079B4(v65, &unk_10076DF80, &qword_10062F730);
  }

  v67 = *(v146 + 8);
  v68 = [v61 objectID];
  v67();

  (*(v23 + 8))(v145, v30);
}

uint64_t sub_1004640A8()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100783A68);
  v1 = sub_100003E30(v0, qword_100783A68);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100464170()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_1007672F0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003E30(v3, qword_100783A68);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "TTRIWelcomeViewController dealloc", v6, 2u);
  }

  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "dealloc");
}

void sub_100464398(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v6 = a1;
  _bridgeAnyObjectToAny(_:)();
  v7 = swift_unknownObjectRelease();
  a4(v7);
  sub_100004758(v8);
}

uint64_t sub_100464414(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TTRUserDefaults.WelcomeScreenVersion();
  __chkstk_darwin(v3 - 8);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    type metadata accessor for TTRUserDefaults();
    v6 = static TTRUserDefaults.appUserDefaults.getter();
    static TTRUserDefaults.WelcomeScreenVersion.current.getter();
    TTRUserDefaults.lastSeenWelcomeScreenVersion.setter();

    sub_10000C36C((v5 + 72), *(v5 + 96));
    swift_unknownObjectRetain();
    sub_100502974(a2, v5);
  }

  return result;
}

uint64_t sub_100464510(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectRetain();
  v6 = a1;
  _bridgeAnyObjectToAny(_:)();
  v7 = swift_unknownObjectRelease();
  sub_100464414(v7, a4);

  return sub_100004758(v9);
}

double sub_100464584()
{
  v1 = v0;
  v50.receiver = v0;
  v50.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v50, "viewDidLoad");
  if (sub_10014D4E8())
  {
    v2._countAndFlagsBits = 0xD000000000000019;
    v2._object = 0x80000001006879D0;
    v3._countAndFlagsBits = 0xD00000000000001DLL;
    v3._object = 0x8000000100687720;
    TTRLocalizedString(_:comment:)(v2, v3);
    v4 = String._bridgeToObjectiveC()();

    v5._countAndFlagsBits = 0xD000000000000044;
    v5._object = 0x80000001006879F0;
    v6._object = 0x8000000100687790;
    v6._countAndFlagsBits = 0xD00000000000001CLL;
    TTRLocalizedString(_:comment:)(v5, v6);
    v7 = String._bridgeToObjectiveC()();

    v8 = static TTRIAsset.Image.WelcomeBullet.smiling.getter();
    [v1 addBulletedListItemWithTitle:v4 description:v7 image:v8];

    v9._countAndFlagsBits = 0xD00000000000001ELL;
    v9._object = 0x8000000100687A40;
    v10._countAndFlagsBits = 0xD00000000000001DLL;
    v10._object = 0x80000001006877D0;
    TTRLocalizedString(_:comment:)(v9, v10);
    v11 = String._bridgeToObjectiveC()();

    v12._countAndFlagsBits = 0xD00000000000004CLL;
    v12._object = 0x8000000100687A60;
    v13._object = 0x8000000100687840;
    v13._countAndFlagsBits = 0xD00000000000001CLL;
    TTRLocalizedString(_:comment:)(v12, v13);
    v14 = String._bridgeToObjectiveC()();

    v15 = static TTRIAsset.Image.WelcomeBullet.collaboration.getter();
    [v1 addBulletedListItemWithTitle:v11 description:v14 image:v15];

    v16 = [v1 headerView];
    [v16 setAllowFullWidthIcon:1];
  }

  else
  {
    v17._countAndFlagsBits = 0x7243206B63697551;
    v17._object = 0xEE006E6F69746165;
    v18._countAndFlagsBits = 0xD00000000000001DLL;
    v18._object = 0x8000000100687720;
    TTRLocalizedString(_:comment:)(v17, v18);
    v19 = String._bridgeToObjectiveC()();

    v20._countAndFlagsBits = 0xD00000000000004DLL;
    v20._object = 0x8000000100687740;
    v21._object = 0x8000000100687790;
    v21._countAndFlagsBits = 0xD00000000000001CLL;
    TTRLocalizedString(_:comment:)(v20, v21);
    v22 = String._bridgeToObjectiveC()();

    v23 = static TTRIAsset.Image.WelcomeBullet.one.getter();
    [v1 addBulletedListItemWithTitle:v19 description:v22 image:v23];

    v24._countAndFlagsBits = 0xD000000000000010;
    v24._object = 0x80000001006877B0;
    v25._countAndFlagsBits = 0xD00000000000001DLL;
    v25._object = 0x80000001006877D0;
    TTRLocalizedString(_:comment:)(v24, v25);
    v26._countAndFlagsBits = 0xD000000000000049;
    v26._object = 0x80000001006877F0;
    v27._object = 0x8000000100687840;
    v27._countAndFlagsBits = 0xD00000000000001CLL;
    TTRLocalizedString(_:comment:)(v26, v27);
    v28 = static TTRIAsset.Image.WelcomeBullet.two.getter();
    if (sub_100466174())
    {
      v29 = String._bridgeToObjectiveC()();

      v30 = String._bridgeToObjectiveC()();

      [v1 addBulletedListItemWithTitle:v29 description:v30 image:v28];
    }

    else
    {
    }

    v31._countAndFlagsBits = 0x6168532079736145;
    v31._object = 0xEC000000676E6972;
    v32._countAndFlagsBits = 0xD00000000000001DLL;
    v32._object = 0x8000000100687860;
    TTRLocalizedString(_:comment:)(v31, v32);
    v33 = String._bridgeToObjectiveC()();

    v34._countAndFlagsBits = 0xD000000000000038;
    v34._object = 0x8000000100687880;
    v35._object = 0x80000001006878C0;
    v35._countAndFlagsBits = 0xD00000000000001CLL;
    TTRLocalizedString(_:comment:)(v34, v35);
    v36 = String._bridgeToObjectiveC()();

    v37 = static TTRIAsset.Image.WelcomeBullet.three.getter();
    [v1 addBulletedListItemWithTitle:v33 description:v36 image:v37];

    v38._countAndFlagsBits = 0xD000000000000015;
    v38._object = 0x80000001006878E0;
    v39._countAndFlagsBits = 0xD00000000000001DLL;
    v39._object = 0x8000000100687900;
    TTRLocalizedString(_:comment:)(v38, v39);
    v40 = String._bridgeToObjectiveC()();

    v41._countAndFlagsBits = 0xD000000000000082;
    v41._object = 0x8000000100687920;
    v42._object = 0x80000001006879B0;
    v42._countAndFlagsBits = 0xD00000000000001CLL;
    TTRLocalizedString(_:comment:)(v41, v42);
    v43 = String._bridgeToObjectiveC()();

    v16 = static TTRIAsset.Image.WelcomeBullet.four.getter();
    [v1 addBulletedListItemWithTitle:v40 description:v43 image:v16];
  }

  v44 = sub_10014D380();
  v45 = &v1[OBJC_IVAR____TtC9Reminders25TTRIWelcomeViewController_viewModel];
  v46 = *&v1[OBJC_IVAR____TtC9Reminders25TTRIWelcomeViewController_viewModel];
  v47 = *&v1[OBJC_IVAR____TtC9Reminders25TTRIWelcomeViewController_viewModel + 8];
  *v45 = v44;
  v45[1] = v48;
  sub_10014E588(v46, v47);
  sub_100464B2C();
  return sub_10014D6B0();
}

void sub_100464B2C()
{
  v1 = v0;
  v2 = sub_100058000(&unk_100775660, &qword_10062F6B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v53 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9._countAndFlagsBits = 0x65756E69746E6F43;
  v10._countAndFlagsBits = 0xD000000000000015;
  v10._object = 0x8000000100687AB0;
  v9._object = 0xE800000000000000;
  TTRLocalizedString(_:comment:)(v9, v10);
  v11 = *&v0[OBJC_IVAR____TtC9Reminders25TTRIWelcomeViewController_viewModel + 8];
  if (v11 > 2)
  {
    if (v11 == 3)
    {
      sub_100465450();
      v12 = [objc_opt_self() boldButton];
      v28 = String._bridgeToObjectiveC()();

      [v12 setTitle:v28 forState:0];

      [v12 addTarget:v1 action:"didTapContinueButton:" forControlEvents:64];
      v14 = [v1 buttonTray];
      goto LABEL_14;
    }

    if (v11 == 4)
    {
      sub_100465450();
      v12 = [objc_opt_self() boldButton];
      v15 = String._bridgeToObjectiveC()();

      [v12 setTitle:v15 forState:0];

      [v12 addTarget:v1 action:"didTapContinueToUpgradeAutomaticallyButton:" forControlEvents:64];
      v14 = [v1 buttonTray];
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  if (v11 != 1)
  {
    if (v11 == 2)
    {
      sub_100465450();
      v12 = [objc_opt_self() boldButton];
      v13 = String._bridgeToObjectiveC()();

      [v12 setTitle:v13 forState:0];

      [v12 addTarget:v1 action:"didTapDismissButton:" forControlEvents:64];
      v14 = [v1 buttonTray];
LABEL_14:
      v57 = v14;
      [v57 addButton:v12];

      v29 = v57;

      return;
    }

LABEL_8:
    v56 = *&v0[OBJC_IVAR____TtC9Reminders25TTRIWelcomeViewController_viewModel];

    sub_100465450();
    v16 = [objc_opt_self() boldButton];
    v17._countAndFlagsBits = 0x4E20657461647055;
    v18._countAndFlagsBits = 0xD000000000000017;
    v18._object = 0x800000010067DA60;
    v17._object = 0xEA0000000000776FLL;
    TTRLocalizedString(_:comment:)(v17, v18);
    v19 = String._bridgeToObjectiveC()();

    [v16 setTitle:v19 forState:0];

    [v16 addTarget:v0 action:"didTapUpgradeButton:" forControlEvents:64];
    v20 = [v0 buttonTray];
    [v20 addButton:v16];

    v21 = [objc_opt_self() linkButton];
    v22._countAndFlagsBits = 0x4C20657461647055;
    v22._object = 0xEC00000072657461;
    v23._countAndFlagsBits = 0xD000000000000019;
    v23._object = 0x800000010067DA80;
    TTRLocalizedString(_:comment:)(v22, v23);
    v24 = String._bridgeToObjectiveC()();
    v57 = v6;
    v25 = v24;

    [v21 setTitle:v25 forState:0];

    v26 = v57;
    [v21 addTarget:v1 action:"didTapLaterButton:" forControlEvents:64];
    v27 = [v1 buttonTray];
    [v27 addButton:v21];

    URL.init(string:)();
    if ((v26[6])(v4, 1, v5) == 1)
    {
      sub_10014E588(v56, v11);

      sub_1000079B4(v4, &unk_100775660, &qword_10062F6B0);
    }

    else
    {
      v55 = v21;
      v30 = v16;
      v26[4](v8, v4, v5);
      v31._countAndFlagsBits = 0xD000000000000049;
      v31._object = 0x8000000100687AD0;
      v32._countAndFlagsBits = 0xD00000000000005ALL;
      v32._object = 0x8000000100687B20;
      v33 = TTRLocalizedString(_:comment:)(v31, v32);
      v34 = v56;
      if (v11)
      {
        v54._object = v33._object;
        if (qword_1007672F0 != -1)
        {
          swift_once();
        }

        v54._countAndFlagsBits = v33._countAndFlagsBits;
        v35 = type metadata accessor for Logger();
        sub_100003E30(v35, qword_100783A68);

        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.info.getter();
        sub_10014E588(v34, v11);
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v58[0] = v39;
          *v38 = 136315138;
          *(v38 + 4) = sub_100004060(v34, v11, v58);
          _os_log_impl(&_mh_execute_header, v36, v37, "Showing accountBeingUpgradedHint label {accountBeingUpgradedHint: %s}", v38, 0xCu);
          sub_100004758(v39);
        }

        v26 = v57;
        v40._object = 0x8000000100687B80;
        v41._countAndFlagsBits = 0xD000000000000062;
        v41._object = 0x8000000100687BA0;
        v40._countAndFlagsBits = 0xD000000000000013;
        TTRLocalizedString(_:comment:)(v40, v41);
        sub_100058000(&unk_100786CB0, &qword_100636EF0);
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_10062D400;
        *(v42 + 56) = &type metadata for String;
        *(v42 + 64) = sub_10005C390();
        *(v42 + 32) = v34;
        *(v42 + 40) = v11;
        v43 = String.init(format:_:)();
        v45 = v44;

        v58[0] = v43;
        v58[1] = v45;

        v46._countAndFlagsBits = 2570;
        v46._object = 0xE200000000000000;
        String.append(_:)(v46);

        String.append(_:)(v54);
      }

      v47 = v55;
      v48 = [v1 buttonTray];
      v49 = String._bridgeToObjectiveC()();

      URL._bridgeToObjectiveC()(v50);
      v52 = v51;
      [v48 setCaptionText:v49 learnMoreURL:v51];

      (v26[1])(v8, v5);
    }

    return;
  }

  sub_1004655B0();
}

void sub_100465450()
{
  v1 = OBJC_IVAR____TtC9Reminders25TTRIWelcomeViewController_spinner;
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders25TTRIWelcomeViewController_spinner);
  if (v2)
  {
    if (*(v0 + OBJC_IVAR____TtC9Reminders25TTRIWelcomeViewController_newBottomConstraints) && *(v0 + OBJC_IVAR____TtC9Reminders25TTRIWelcomeViewController_originalBottomConstraints))
    {
      v3 = objc_opt_self();
      sub_100003540(0, &qword_10076BAD0, NSLayoutConstraint_ptr);
      v4 = v2;

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v3 deactivateConstraints:isa];

      v6 = Array._bridgeToObjectiveC()().super.isa;

      [v3 activateConstraints:v6];
    }

    else
    {
      v7 = v2;
    }

    [v2 stopAnimating];
    [v2 removeFromSuperview];

    v8 = *(v0 + v1);
    *(v0 + v1) = 0;
  }
}

void sub_1004655B0()
{
  v1 = OBJC_IVAR____TtC9Reminders25TTRIWelcomeViewController_spinner;
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders25TTRIWelcomeViewController_spinner);
  if (v2)
  {

    [v2 startAnimating];
  }

  else
  {
    v3 = v0;
    v4 = sub_100465908();
    if (v4)
    {
      v23 = v4;
      v5 = sub_100465A14();
      if (v5)
      {
        v7 = v5;
        v8 = v6;
        v9 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
        [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v9 startAnimating];
        [v23 addSubview:v9];
        sub_100058000(&qword_10076B780, &qword_10062D7C0);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_10062D420;
        *(v10 + 32) = v7;
        *(v3 + OBJC_IVAR____TtC9Reminders25TTRIWelcomeViewController_originalBottomConstraints) = v10;
        v11 = v7;

        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_10062D410;
        v13 = [v23 centerXAnchor];
        v14 = [v9 centerXAnchor];
        v15 = [v13 constraintEqualToAnchor:v14];

        *(v12 + 32) = v15;
        v16 = [v9 topAnchor];

        v17 = [v8 bottomAnchor];
        v18 = [v16 constraintEqualToAnchor:v17 constant:sub_100465B7C()];

        *(v12 + 40) = v18;
        *(v3 + OBJC_IVAR____TtC9Reminders25TTRIWelcomeViewController_newBottomConstraints) = v12;

        v19 = objc_opt_self();
        sub_100003540(0, &qword_10076BAD0, NSLayoutConstraint_ptr);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v19 deactivateConstraints:isa];

        v21 = Array._bridgeToObjectiveC()().super.isa;

        [v19 activateConstraints:v21];

        v22 = *(v3 + v1);
        *(v3 + v1) = v9;
      }

      else
      {
        v22 = v23;
      }
    }
  }
}

uint64_t sub_100465908()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 valueForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_100003540(0, &qword_10076B020, UIView_ptr);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1000079B4(v7, &qword_10076AE40, &qword_10062EE50);
    return 0;
  }
}

unint64_t sub_100465A14()
{
  result = sub_100465F74();
  if (!result)
  {
    return result;
  }

  v3 = (result & 0xFFFFFFFFFFFFFF8);
  if (result >> 62)
  {
    v1 = result;
    v4 = _CocoaArrayWrapper.endIndex.getter();
    result = v1;
    if (!v4)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
LABEL_27:

      return 0;
    }
  }

  v5 = __OFSUB__(v4, 1);
  v6 = v4 - 1;
  if (v5)
  {
    __break(1u);
  }

  else if ((result & 0xC000000000000001) == 0)
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v6 < v3[2])
    {
      v7 = *(result + 8 * v6 + 32);
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_25;
  }

  v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_9:
  v3 = v7;

  v8 = sub_100466070();
  if (!v8)
  {

    return 0;
  }

  v0 = v8;
  v1 = v8 & 0xFFFFFFFFFFFFFF8;
  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  v9 = _CocoaArrayWrapper.endIndex.getter();
  if (!v9)
  {
LABEL_26:

    goto LABEL_27;
  }

LABEL_12:
  v5 = __OFSUB__(v9, 1);
  result = v9 - 1;
  if (v5)
  {
    __break(1u);
    goto LABEL_31;
  }

  if ((v0 & 0xC000000000000001) != 0)
  {
LABEL_31:
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_17;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v1 + 16))
  {
    v10 = *(v0 + 8 * result + 32);
LABEL_17:
    v11 = v10;

    return v11;
  }

  __break(1u);
  return result;
}

double sub_100465B7C()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 valueForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_1000079B4(v7, &qword_10076AE40, &qword_10062EE50);
  }

  return 0.0;
}

double destroy for TTRIWelcomeViewController.ViewModel(uint64_t a1)
{
  if ((*(a1 + 8) - 1) >= 4)
  {
  }

  return result;
}

void *sub_100465D08(void *result, void *a2)
{
  v2 = a2[1];
  if ((v2 - 1) >= 4)
  {
    *result = *a2;
    result[1] = v2;
    v3 = result;

    return v3;
  }

  else
  {
    *result = *a2;
  }

  return result;
}

void *assignWithCopy for TTRIWelcomeViewController.ViewModel(void *result, uint64_t a2)
{
  v2 = *(a2 + 8) - 1;
  if ((result[1] - 1) >= 4)
  {
    if (v2 < 4)
    {
      v3 = result;
      sub_1000079B4(result, &qword_100783AD8, &qword_10063FB20);
      *v3 = *a2;
      return v3;
    }

    *result = *a2;
    v5 = result;
    result[1] = *(a2 + 8);
  }

  else
  {
    if (v2 < 4)
    {
      *result = *a2;
      return result;
    }

    *result = *a2;
    v5 = result;
    result[1] = *(a2 + 8);
  }

  return v5;
}

void *assignWithTake for TTRIWelcomeViewController.ViewModel(void *result, void *a2)
{
  if ((result[1] - 1) >= 4)
  {
    v2 = a2[1];
    if ((v2 - 1) >= 4)
    {
      *result = *a2;
      result[1] = v2;
      v3 = result;
    }

    else
    {
      v3 = result;
      sub_1000079B4(result, &qword_100783AD8, &qword_10063FB20);
      *v3 = *a2;
    }

    return v3;
  }

  else
  {
    *result = *a2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRIWelcomeViewController.ViewModel(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 4;
  if (v4 < 4)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIWelcomeViewController.ViewModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = a2 - 2147483643;
    *(result + 8) = 0;
    if (a3 > 0x7FFFFFFA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_100465F74()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 valueForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_100058000(&unk_10076BCD0, &qword_1006393C0);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1000079B4(v7, &qword_10076AE40, &qword_10062EE50);
    return 0;
  }
}

uint64_t sub_100466070()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 valueForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_100058000(&qword_10076BAD8, &qword_10062FDA8);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1000079B4(v7, &qword_10076AE40, &qword_10062EE50);
    return 0;
  }
}

uint64_t sub_100466174()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for REMGroceryDummyModel();
  static Locale.current.getter();
  Locale.identifier.getter();
  (*(v1 + 8))(v3, v0);
  LOBYTE(v3) = static REMGroceryDummyModel.isSupported(localeIdentifier:)();

  return v3 & 1;
}

double destroy for TTRIRemindersListNavigationBarViewModel.FixedTrailingItem(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = -1;
  if (v1 < 0xFFFFFFFF)
  {
    v2 = v1;
  }

  if (v2 - 1 < 0)
  {
  }

  return result;
}

void *sub_100466400(void *result, void *a2)
{
  v2 = a2[1];
  LODWORD(v3) = -1;
  if (v2 < 0xFFFFFFFF)
  {
    v3 = a2[1];
  }

  if (v3 - 1 < 0)
  {
    *result = *a2;
    result[1] = v2;
    v4 = result;

    return v4;
  }

  else
  {
    *result = *a2;
  }

  return result;
}

void *assignWithCopy for TTRIRemindersListNavigationBarViewModel.FixedTrailingItem(void *result, void *a2)
{
  LODWORD(v2) = -1;
  if (result[1] >= 0xFFFFFFFFuLL)
  {
    LODWORD(v3) = -1;
  }

  else
  {
    v3 = result[1];
  }

  v4 = v3 - 1;
  if (a2[1] < 0xFFFFFFFFuLL)
  {
    v2 = a2[1];
  }

  v5 = v2 - 1;
  if (v4 < 0)
  {
    if (v5 < 0)
    {
      *result = *a2;
      v6 = result;
      result[1] = a2[1];
    }

    else
    {
      v6 = result;

      *v6 = *a2;
    }
  }

  else
  {
    if ((v5 & 0x80000000) == 0)
    {
      *result = *a2;
      return result;
    }

    *result = *a2;
    v6 = result;
    result[1] = a2[1];
  }

  return v6;
}

void *assignWithTake for TTRIRemindersListNavigationBarViewModel.FixedTrailingItem(void *result, void *a2)
{
  LODWORD(v2) = -1;
  if (result[1] < 0xFFFFFFFFuLL)
  {
    v2 = result[1];
  }

  if (v2 - 1 < 0)
  {
    v3 = a2[1];
    LODWORD(v4) = -1;
    if (v3 < 0xFFFFFFFF)
    {
      v4 = a2[1];
    }

    if (v4 - 1 < 0)
    {
      *result = *a2;
      result[1] = v3;
      v5 = result;
    }

    else
    {
      v5 = result;

      *v5 = *a2;
    }

    return v5;
  }

  else
  {
    *result = *a2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRIWelcomeViewController.ButtonConfig(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 3;
  if (v5 >= 5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRIWelcomeViewController.ButtonConfig(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_100466654(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void *sub_100466678(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t sub_1004666BC()
{
  v1 = v0;
  v2 = sub_100058000(&qword_1007757F0, &unk_10062DE70);
  __chkstk_darwin(v2 - 8);
  v4 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v82 - v6;
  __chkstk_darwin(v8);
  v88 = &v82 - v9;
  __chkstk_darwin(v10);
  v12 = &v82 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v89 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v92 = &v82 - v17;
  __chkstk_darwin(v18);
  v87 = &v82 - v19;
  __chkstk_darwin(v20);
  v91 = &v82 - v21;
  __chkstk_darwin(v22);
  v24 = &v82 - v23;
  __chkstk_darwin(v25);
  v27 = &v82 - v26;
  sub_1004681DC();
  v28 = v0[9];
  if (!v28)
  {
    if (qword_1007672F8 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100003E30(v31, qword_100783AE0);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "TTRIAppStoreProvider: Failed to fetch REMAppStoreReviewCloudConfiguration properties", v34, 2u);
    }

    goto LABEL_38;
  }

  v83 = v4;
  v86 = v28;
  swift_unknownObjectRetain();
  Date.init()();
  swift_beginAccess();
  sub_10000C36C(v0 + 4, v0[7]);
  dispatch thunk of TTRAppStoreUserDefaults.lastAppStoreRatingPromptDate.getter();
  swift_endAccess();
  v29 = *(v14 + 48);
  v30 = v29(v12, 1, v13);
  v90 = v29;
  v85 = v7;
  if (v30 == 1)
  {
    static Date.distantPast.getter();
    if (v29(v12, 1, v13) != 1)
    {
      sub_1000079B4(v12, &qword_1007757F0, &unk_10062DE70);
    }
  }

  else
  {
    (*(v14 + 32))(v24, v12, v13);
  }

  Date.timeIntervalSince(_:)();
  v36 = v35;
  v37 = v14;
  v38 = *(v14 + 8);
  v38(v24, v13);
  v38(v27, v13);
  v39 = v86;
  [v86 appStoreReviewTimeIntervalSinceLastPrompt];
  v41 = v40;
  Date.init()();
  swift_beginAccess();
  sub_10000C36C(v1 + 4, v1[7]);
  v42 = v88;
  dispatch thunk of TTRAppStoreUserDefaults.lastCreatedOrCompletedRemindersFetchDate.getter();
  swift_endAccess();
  v43 = v90;
  v44 = v90(v42, 1, v13);
  v84 = v37;
  if (v44 == 1)
  {
    v45 = v87;
    static Date.distantPast.getter();
    if (v43(v42, 1, v13) != 1)
    {
      sub_1000079B4(v42, &qword_1007757F0, &unk_10062DE70);
    }
  }

  else
  {
    v45 = v87;
    (*(v37 + 32))(v87, v42, v13);
  }

  v46 = v91;
  Date.timeIntervalSince(_:)();
  v48 = v47;
  v38(v45, v13);
  v38(v46, v13);
  [v39 appStoreReviewTimeIntervalSinceLastFetch];
  v50 = v49;
  Date.init()();
  swift_beginAccess();
  sub_10000C36C(v1 + 4, v1[7]);
  v51 = v85;
  dispatch thunk of TTRAppStoreUserDefaults.firstTimeAppForegroundingDate.getter();
  swift_endAccess();
  v52 = v90;
  if (v90(v51, 1, v13) == 1)
  {
    v53 = v89;
    static Date.now.getter();
    if (v52(v51, 1, v13) != 1)
    {
      sub_1000079B4(v51, &qword_1007757F0, &unk_10062DE70);
    }
  }

  else
  {
    v53 = v89;
    (*(v84 + 32))(v89, v51, v13);
  }

  v54 = v92;
  Date.timeIntervalSince(_:)();
  v56 = v55;
  v38(v53, v13);
  v38(v54, v13);
  [v39 appStoreReviewTimeIntervalSinceInitialForeground];
  v58 = v57;
  v59 = [v39 appStoreReviewNumberOfForegroundsThreshold];
  [v39 appStoreReviewTimeIntervalOfInterest];
  v61 = sub_1004683E0(v59, v60);
  v62 = v61;
  if (v36 < v41 || v48 < v50 || v58 >= v56 || !v61)
  {
    if (qword_1007672F8 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    sub_100003E30(v64, qword_100783AE0);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 67109888;
      *(v67 + 4) = v36 < v41;
      *(v67 + 8) = 1024;
      *(v67 + 10) = v48 < v50;
      *(v67 + 14) = 1024;
      *(v67 + 16) = v58 < v56;
      *(v67 + 20) = 1024;
      *(v67 + 22) = v62;
      _os_log_impl(&_mh_execute_header, v65, v66, "TTRIAppStoreProvider: Not showing App Store rating prompt: didPromptRecently = %{BOOL}d, didFetchRecently = %{BOOL}d, isPastFirstAppForegroundThreshold = %{BOOL}d, hasEnoughForegroundCount = %{BOOL}d", v67, 0x1Au);
    }

    goto LABEL_40;
  }

  [v39 appStoreReviewTimeIntervalOfInterest];
  v68 = sub_1004687E0(v63);
  v69 = v83;
  static Date.now.getter();
  (*(v84 + 56))(v69, 0, 1, v13);
  swift_beginAccess();
  sub_10000AE84((v1 + 4), v1[7]);
  dispatch thunk of TTRAppStoreUserDefaults.lastCreatedOrCompletedRemindersFetchDate.setter();
  swift_endAccess();
  v70 = [v39 appStoreReviewCreatedOrCompletedRemindersCountThreshold];
  v71 = [v68 integerValue];

  if ((v71 & 0x8000000000000000) != 0 || v71 < v70)
  {
    if (qword_1007672F8 != -1)
    {
      swift_once();
    }

    v77 = type metadata accessor for Logger();
    sub_100003E30(v77, qword_100783AE0);
    v78 = v68;
    v65 = Logger.logObject.getter();
    v79 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v65, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      *v80 = 138412546;
      *(v80 + 4) = v78;
      *v81 = v78;
      *(v80 + 12) = 2048;
      *(v80 + 14) = v70;
      v32 = v78;
      _os_log_impl(&_mh_execute_header, v65, v79, "TTRIAppStoreProvider: Not showing App Store rating prompt: only created or completed %@ out of %lu reminders", v80, 0x16u);
      sub_1000079B4(v81, &unk_10076DF80, &qword_10062F730);

      swift_unknownObjectRelease();

LABEL_38:
      return 0;
    }

LABEL_40:
    swift_unknownObjectRelease();

    return 0;
  }

  if (qword_1007672F8 != -1)
  {
    swift_once();
  }

  v72 = type metadata accessor for Logger();
  sub_100003E30(v72, qword_100783AE0);
  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    *v75 = 0;
    _os_log_impl(&_mh_execute_header, v73, v74, "TTRIAppStoreProvider: Determined we should display the App Store rating prompt", v75, 2u);
  }

  swift_unknownObjectRelease();

  result = 1;
  *(v1 + 16) = 1;
  return result;
}

void sub_1004672E0(char a1)
{
  v44 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v44 - 8);
  __chkstk_darwin(v44);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v45 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTime();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v38 - v13;
  sub_100469118();
  if (v15)
  {
    v16 = v15;
    v41 = v5;
    v42 = v2;
    v17 = sub_100469374();
    sub_100003540(0, &qword_100777780, OS_dispatch_queue_ptr);
    v40 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    v18 = (v9 + 8);
    v19 = a1 & 1;
    + infix(_:_:)();
    if (v17)
    {
      v39 = *v18;
      v20 = v11;
      v21 = v8;
      v39(v20, v8);
      v22 = swift_allocObject();
      *(v22 + 16) = v43;
      *(v22 + 24) = v19;
      v50 = sub_100469554;
      v51 = v22;
      aBlock = _NSConcreteStackBlock;
      v47 = 1107296256;
      v48 = sub_10001047C;
      v49 = &unk_100729A88;
      v23 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_10001A4CC();
      sub_100058000(&qword_100780A50, &qword_100635D30);
      sub_10001A524();
      v24 = v44;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v25 = v40;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v23);

      (*(v42 + 8))(v4, v24);
      (v45[1].isa)(v7, v41);
      v26 = v14;
      v27 = v21;
    }

    else
    {
      v32 = *v18;
      v38 = v8;
      v39 = v32;
      v32(v11, v8);
      v33 = swift_allocObject();
      *(v33 + 16) = v43;
      *(v33 + 24) = v19;
      *(v33 + 32) = v16;
      v50 = sub_1004694B4;
      v51 = v33;
      aBlock = _NSConcreteStackBlock;
      v47 = 1107296256;
      v48 = sub_10001047C;
      v49 = &unk_100729A38;
      v34 = _Block_copy(&aBlock);

      v35 = v16;

      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_10001A4CC();
      sub_100058000(&qword_100780A50, &qword_100635D30);
      sub_10001A524();
      v36 = v44;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v37 = v40;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v34);

      (*(v42 + 8))(v4, v36);
      (v45[1].isa)(v7, v41);
      v26 = v14;
      v27 = v38;
    }

    v39(v26, v27);
  }

  else
  {
    if (qword_1007672F8 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100003E30(v28, qword_100783AE0);
    v45 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v45, v29, "TTRIAppStoreProvider: Can't prompt user for App Store review. Missing required active window scene.", v30, 2u);
    }

    v31 = v45;
  }
}

void sub_10046791C()
{
  v2 = v0;
  v3 = sub_100058000(&qword_1007757F0, &unk_10062DE70);
  __chkstk_darwin(v3 - 8);
  v5 = v49 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v53 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v52 = v49 - v10;
  __chkstk_darwin(v11);
  v13 = v49 - v12;
  __chkstk_darwin(v14);
  v62 = (v49 - v15);
  __chkstk_darwin(v16);
  v18 = v49 - v17;
  sub_1004681DC();
  v19 = v0[9];
  if (v19)
  {
    v55 = v13;
    v56 = v6;
    v51 = [swift_unknownObjectRetain() appStoreReviewNumberOfForegroundsThreshold];
    swift_beginAccess();
    sub_10000C36C(v0 + 4, v0[7]);
    v20 = dispatch thunk of TTRAppStoreUserDefaults.lastAppForegroundingDates.getter();
    if (!v20)
    {
      swift_endAccess();
      static Date.now.getter();
      (*(v7 + 56))(v5, 0, 1, v56);
      swift_beginAccess();
      sub_10000AE84((v0 + 4), v0[7]);
      dispatch thunk of TTRAppStoreUserDefaults.firstTimeAppForegroundingDate.setter();
      swift_endAccess();
      sub_100058000(&qword_100783BD0, qword_10063FBC8);
      *(swift_allocObject() + 16) = xmmword_10062D400;
      static Date.now.getter();
      swift_beginAccess();
      sub_10000AE84((v0 + 4), v0[7]);
      dispatch thunk of TTRAppStoreUserDefaults.lastAppForegroundingDates.setter();
      swift_endAccess();
LABEL_30:
      swift_unknownObjectRelease();
      return;
    }

    v21 = v20;
    v50 = v0;
    swift_endAccess();
    v49[1] = v19;
    [v19 appStoreReviewTimeIntervalOfInterest];
    v23 = v56;
    v61 = *(v21 + 16);
    if (v61)
    {
      v24 = v22;
      v25 = 0;
      v58 = v7 + 8;
      v59 = v7 + 16;
      v57 = (v7 + 32);
      v26 = _swiftEmptyArrayStorage;
      v27 = v55;
      v54 = v7;
      v60 = v21;
      while (v25 < *(v21 + 16))
      {
        v1 = v26;
        v2 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v28 = v21 + v2;
        v29 = *(v7 + 72);
        (*(v7 + 16))(v18, v28 + v29 * v25, v23);
        v30 = v62;
        Date.init()();
        Date.timeIntervalSince(_:)();
        v32 = v31;
        v33 = v18;
        v34 = *(v7 + 8);
        v34(v30, v23);
        if (v32 > v24)
        {
          v34(v33, v23);
          v18 = v33;
          v26 = v1;
        }

        else
        {
          v35 = *v57;
          (*v57)(v27, v33, v23);
          v26 = v1;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v64 = v1;
          v18 = v33;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1004A23E8(0, v1[2] + 1, 1);
            v26 = v64;
          }

          v38 = v26[2];
          v37 = v26[3];
          if (v38 >= v37 >> 1)
          {
            sub_1004A23E8((v37 > 1), v38 + 1, 1);
            v26 = v64;
          }

          v26[2] = v38 + 1;
          v39 = v26 + v2 + v38 * v29;
          v27 = v55;
          v23 = v56;
          v35(v39, v55, v56);
          v7 = v54;
        }

        ++v25;
        v21 = v60;
        if (v61 == v25)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
    }

    else
    {
      v26 = _swiftEmptyArrayStorage;
LABEL_23:

      v63 = v26;
      if (v26[2] >= v51)
      {
        v44 = v62;
        sub_1000C5E24(0, v62);
        (*(v7 + 8))(v44, v23);
        v1 = v53;
        static Date.now.getter();
        v26 = v63;
      }

      else
      {
        v1 = v52;
        static Date.now.getter();
      }

      v45 = swift_isUniquelyReferenced_nonNull_native();
      v2 = v50;
      if (v45)
      {
        goto LABEL_27;
      }
    }

    v26 = sub_1005482A0(0, v26[2] + 1, 1, v26);
LABEL_27:
    v47 = v26[2];
    v46 = v26[3];
    v48 = v26;
    if (v47 >= v46 >> 1)
    {
      v48 = sub_1005482A0((v46 > 1), v47 + 1, 1, v26);
    }

    v48[2] = v47 + 1;
    (*(v7 + 32))(v48 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v47, v1, v23);
    swift_beginAccess();
    sub_10000AE84(v2 + 32, *(v2 + 56));
    dispatch thunk of TTRAppStoreUserDefaults.lastAppForegroundingDates.setter();
    swift_endAccess();
    goto LABEL_30;
  }

  if (qword_1007672F8 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  sub_100003E30(v40, qword_100783AE0);
  v62 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v62, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v62, v41, "TTRIAppStoreProvider: Failed to fetch REMAppStoreReviewCloudConfiguration properties", v42, 2u);
  }

  v43 = v62;
}

uint64_t sub_100468030()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100783AE0);
  v1 = sub_100003E30(v0, qword_100783AE0);
  if (qword_100767278 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1004680F8(uint64_t a1)
{
  v1 = [objc_allocWithZone(REMAppStoreDataView) initWithStore:a1];
  v6 = 0;
  v2 = [v1 fetchAppStoreCloudConfigurationPropertiesWithError:&v6];
  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

void sub_1004681DC()
{
  if (!*(v0 + 72))
  {
    *(v0 + 72) = (*(v0 + 80))();

    swift_unknownObjectRelease();
  }
}

BOOL sub_1004683E0(unint64_t a1, double a2)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v44 = v5;
  v45 = v6;
  __chkstk_darwin(v5);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v37 - v10;
  __chkstk_darwin(v12);
  v37[0] = v37 - v13;
  swift_beginAccess();
  sub_10000C36C((v2 + 32), *(v2 + 56));
  v14 = dispatch thunk of TTRAppStoreUserDefaults.lastAppForegroundingDates.getter();
  if (!v14)
  {
    swift_endAccess();
    if (qword_1007672F8 == -1)
    {
LABEL_16:
      v30 = type metadata accessor for Logger();
      sub_100003E30(v30, qword_100783AE0);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "TTRIAppStoreProvider: Failed to save any app foregrounding dates", v33, 2u);
      }

      return 0;
    }

LABEL_29:
    swift_once();
    goto LABEL_16;
  }

  v15 = v14;
  swift_endAccess();
  if (*(v15 + 16) != a1)
  {

    return 0;
  }

  if (a1)
  {
    v43 = v8;
    v16 = 0;
    v40 = (v45 + 32);
    v41 = v45 + 16;
    v17 = _swiftEmptyArrayStorage;
    v38 = v11;
    v39 = a1;
    v18 = v37[0];
    v42 = v15;
    v37[1] = v45 + 8;
    while (v16 < *(v15 + 16))
    {
      v20 = v44;
      v19 = v45;
      v46 = (*(v19 + 80) + 32) & ~*(v19 + 80);
      v21 = *(v45 + 72);
      (*(v45 + 16))(v18, v15 + v46 + v21 * v16, v44);
      Date.init()();
      v22 = v18;
      Date.timeIntervalSince(_:)();
      v24 = v23;
      v25 = *(v19 + 8);
      v25(v11, v20);
      if (v24 > a2)
      {
        v25(v22, v20);
        v18 = v22;
      }

      else
      {
        v26 = *v40;
        (*v40)(v43, v22, v20);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v47 = v17;
        if (isUniquelyReferenced_nonNull_native)
        {
          v18 = v22;
        }

        else
        {
          sub_1004A23E8(0, v17[2] + 1, 1);
          v18 = v37[0];
          v17 = v47;
        }

        v29 = v17[2];
        v28 = v17[3];
        if (v29 >= v28 >> 1)
        {
          sub_1004A23E8((v28 > 1), v29 + 1, 1);
          v18 = v37[0];
          v17 = v47;
        }

        v17[2] = v29 + 1;
        v26(v17 + v46 + v29 * v21, v43, v20);
        v11 = v38;
        a1 = v39;
      }

      ++v16;
      v15 = v42;
      if (a1 == v16)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_29;
  }

  v17 = _swiftEmptyArrayStorage;
LABEL_22:

  v35 = v17[2];

  if (v35)
  {
    v36 = v35 > a1;
  }

  else
  {
    v36 = 0;
  }

  return !v36;
}

id sub_1004687E0(double a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  __chkstk_darwin(v4);
  v6 = &v19 - v5;
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  v10 = *(v1 + 24);
  Date.init()();
  static Date.now.getter();
  Date.init(timeInterval:since:)();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v12 = Date._bridgeToObjectiveC()().super.isa;
  v19 = 0;
  v13 = [v10 fetchCreatedOrCompletedRemindersCountForAppStoreFromDate:isa toDate:v12 error:&v19];

  if (v13)
  {
    v14 = *(v3 + 8);
    v15 = v19;
    v14(v6, v2);
    v14(v9, v2);
  }

  else
  {
    v16 = v19;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_willThrow();
    v17 = *(v3 + 8);
    v17(v6, v2);
    v17(v9, v2);
  }

  return v13;
}

void sub_100468A24(uint64_t a1, int a2, void (*a3)(char *, uint64_t))
{
  v31 = a3;
  v34 = a2;
  v4 = sub_100058000(&qword_1007757F0, &unk_10062DE70);
  __chkstk_darwin(v4 - 8);
  v6 = &v29 - v5;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DispatchQoS();
  v10 = *(v32 - 8);
  __chkstk_darwin(v32);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchTime();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v29 - v18;
  if (sub_100469374())
  {
    sub_100003540(0, &qword_100777780, OS_dispatch_queue_ptr);
    v30 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v31 = *(v14 + 8);
    v31(v16, v13);
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    *(v20 + 24) = v34 & 1;
    aBlock[4] = sub_1004694C4;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001047C;
    aBlock[3] = &unk_100729AD8;
    v21 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10001A4CC();
    sub_100058000(&qword_100780A50, &qword_100635D30);
    sub_10001A524();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v22 = v30;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v21);

    (*(v33 + 8))(v9, v7);
    (*(v10 + 8))(v12, v32);
    v31(v19, v13);
  }

  else if (*(a1 + 16) == 1)
  {
    if (v34)
    {
      if (qword_1007672F8 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_100003E30(v23, qword_100783AE0);
      v24 = sub_100008E04(_swiftEmptyArrayStorage);
      v25 = "TTRIAppStoreProvider: Prompted user for App Store review after completing a reminder";
      v26 = 84;
    }

    else
    {
      if (qword_1007672F8 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_100003E30(v27, qword_100783AE0);
      v24 = sub_100008E04(_swiftEmptyArrayStorage);
      v25 = "TTRIAppStoreProvider: Prompted user for App Store review after creating a reminder";
      v26 = 82;
    }

    sub_10000FD44(v25, v26, 2, v24);

    [objc_opt_self() requestReviewInScene:v31];
    static Date.now.getter();
    v28 = type metadata accessor for Date();
    (*(*(v28 - 8) + 56))(v6, 0, 1, v28);
    swift_beginAccess();
    sub_10000AE84(a1 + 32, *(a1 + 56));
    dispatch thunk of TTRAppStoreUserDefaults.lastAppStoreRatingPromptDate.setter();
    swift_endAccess();
    *(a1 + 16) = 0;
  }
}

void sub_100468FA8(uint64_t a1, char a2)
{
  if (qword_1007672F8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003E30(v3, qword_100783AE0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "TTRIAppStoreProvider: Delay showing the App Store review prompt due to user active editing", v6, 2u);
  }

  sub_1004672E0(a2 & 1);
}

uint64_t sub_10046909C()
{
  sub_100004758((v0 + 32));
  swift_unknownObjectRelease();

  sub_100004758((v0 + 96));

  return swift_deallocClassInstance();
}

void sub_100469118()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_100003540(0, &qword_10077EB68, UIScene_ptr);
  sub_1004694E4();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v2 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v2 = v20;
    v3 = v21;
    v4 = v22;
    v5 = v23;
    v6 = v24;
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(v2 + 56);
  }

  v17 = v4;
  v10 = (v4 + 64) >> 6;
  while (v2 < 0)
  {
    v16 = __CocoaSet.Iterator.next()();
    if (!v16 || (v18 = v16, swift_dynamicCast(), v15 = v19, v13 = v5, v14 = v6, !v19))
    {
LABEL_20:
      sub_10008BA48(v2);
      return;
    }

LABEL_18:
    if (![v15 activationState])
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        goto LABEL_20;
      }
    }

    v5 = v13;
    v6 = v14;
  }

  v11 = v5;
  v12 = v6;
  v13 = v5;
  if (v6)
  {
LABEL_14:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_20;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

BOOL sub_100469374()
{
  sub_100469118();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 keyWindow];
    if (v2)
    {
      v3 = v2;
      v4 = UIResponder.firstResponder.getter();

      if (v4)
      {
        type metadata accessor for TTRIRootViewController();
        v5 = swift_dynamicCastClass() == 0;
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  if (qword_1007672F8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003E30(v6, qword_100783AE0);
  v4 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v4, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, v7, "TTRIAppStoreProvider: Can't determine if user is actively editing a reminder.", v8, 2u);
  }

  v5 = 0;
LABEL_11:

  return v5;
}

unint64_t sub_1004694E4()
{
  result = qword_10077EB70;
  if (!qword_10077EB70)
  {
    sub_100003540(255, &qword_10077EB68, UIScene_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077EB70);
  }

  return result;
}

unint64_t sub_1004695BC()
{
  result = qword_100783D10;
  if (!qword_100783D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783D10);
  }

  return result;
}

id sub_100469610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = objc_opt_self();
    v6 = String._bridgeToObjectiveC()();
    v7 = [v5 predicateForContactsMatchingEmailAddress:v6];
  }

  else
  {
    if (!a4)
    {
      return 0;
    }

    v8 = objc_allocWithZone(CNPhoneNumber);
    v9 = String._bridgeToObjectiveC()();
    v6 = [v8 initWithStringValue:v9];

    v7 = [objc_opt_self() predicateForContactsMatchingPhoneNumber:v6];
  }

  v10 = v7;

  v11 = *(v4 + 32);
  Strong = swift_unknownObjectWeakLoadStrong();
  v13 = v10;
  if (Strong)
  {
    swift_unknownObjectRelease();
    sub_100058000(&qword_10076B780, &qword_10062D7C0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_10062D410;
    *(v14 + 32) = [objc_opt_self() descriptorForRequiredKeys];
    *(v14 + 40) = [objc_opt_self() descriptorForRequiredKeysWithThreeDTouchEnabled:0];
  }

  sub_100058000(&qword_100783DD8, &qword_10063FE08);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v24 = 0;
  v16 = [v11 unifiedContactsMatchingPredicate:v13 keysToFetch:isa error:&v24];

  v17 = v24;
  if (!v16)
  {
    v23 = v24;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }

  sub_100469C1C();
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v17;

  if (v18 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

  if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_16:

    return 0;
  }

LABEL_10:
  if ((v18 & 0xC000000000000001) != 0)
  {
    v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v20 = *(v18 + 32);
  }

  v21 = v20;

  return v21;
}

id sub_10046991C(void *a1)
{
  v2 = [objc_allocWithZone(CNMutableContact) init];
  if (a1[10])
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = String._bridgeToObjectiveC()();
    v4 = objc_allocWithZone(CNLabeledValue);
    v5 = String._bridgeToObjectiveC()();

    v6 = [v4 initWithLabel:v5 value:v3];

    sub_100058000(&qword_10076B780, &qword_10062D7C0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_10062D420;
    *(v7 + 32) = v6;
    v8 = v6;
    sub_100058000(&qword_100783DD0, &unk_10063FDF8);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v2 setEmailAddresses:isa];
  }

  if (a1[12])
  {
    v10 = objc_allocWithZone(CNPhoneNumber);
    v11 = String._bridgeToObjectiveC()();
    v12 = [v10 initWithStringValue:v11];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = objc_allocWithZone(CNLabeledValue);
    v14 = v12;
    v15 = String._bridgeToObjectiveC()();

    v16 = [v13 initWithLabel:v15 value:v14];

    sub_100058000(&qword_10076B780, &qword_10062D7C0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_10062D420;
    *(v17 + 32) = v16;
    v18 = v16;
    sub_100058000(&qword_100783DD0, &unk_10063FDF8);
    v19 = Array._bridgeToObjectiveC()().super.isa;

    [v2 setPhoneNumbers:v19];
  }

  if (a1[4] || a1[2])
  {
    v20 = String._bridgeToObjectiveC()();
    [v2 setGivenName:v20];
  }

  if (a1[6])
  {
    v21 = String._bridgeToObjectiveC()();
    [v2 setFamilyName:v21];
  }

  return v2;
}

unint64_t sub_100469C1C()
{
  result = qword_100783DE0;
  if (!qword_100783DE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100783DE0);
  }

  return result;
}

void sub_100469C68()
{
  v38 = *v0;
  v1 = sub_100058000(&qword_10076C938, &qword_1006308B0);
  __chkstk_darwin(v1 - 8);
  v3 = &v30 - v2;
  v4 = sub_100058000(&qword_100783ED0, &qword_10063FEA8);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - v5;
  v7 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v8 = *(v7 - 8);
  v31 = v7;
  v32 = v8;
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&qword_100783ED8, &qword_10063FEB0);
  v12 = *(v11 - 8);
  v34 = v11;
  v35 = v12;
  __chkstk_darwin(v11);
  v14 = &v30 - v13;
  v15 = sub_100058000(&qword_100783EE0, qword_10063FEB8);
  v16 = *(v15 - 8);
  v36 = v15;
  v37 = v16;
  __chkstk_darwin(v15);
  v18 = &v30 - v17;
  v33 = v0;
  sub_100010360();
  Just.init(_:)();
  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  (*(v8 + 56))(v6, 1, 1, v7);
  v39 = v0[7];
  v19 = v39;
  v20 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v20 - 8) + 56))(v3, 1, 1, v20);
  sub_1000A96A0();
  sub_10000E188(&qword_100783EE8, &qword_100783ED8, &qword_10063FEB0, &protocol conformance descriptor for Just<A>);
  sub_1001184EC();
  v21 = v19;
  v22 = v34;
  Publisher.delay<A>(for:tolerance:scheduler:options:)();
  sub_1000079B4(v3, &qword_10076C938, &qword_1006308B0);

  sub_1000079B4(v6, &qword_100783ED0, &qword_10063FEA8);
  (*(v32 + 8))(v10, v31);
  (*(v35 + 8))(v14, v22);
  sub_10000E188(&qword_100783EF0, &qword_100783EE0, qword_10063FEB8, &protocol conformance descriptor for Publishers.Delay<A, B>);
  v23 = v33;
  v24 = v36;
  v25 = Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();
  (*(v37 + 8))(v18, v24);
  v23[8] = v25;

  if (qword_100767300 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_100003E30(v26, qword_100783DF0);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "Application visibility change handler did set up subscription for timeout", v29, 2u);
  }
}

void sub_10046A1B4(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 56);
  *v7 = v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3, v5);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    sub_1000093DC(0, 0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10046A2CC()
{
  sub_10003B788(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for TTRIShowRemindersChromelessBarStates(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_10046A40C()
{
  result = qword_100783EF8;
  if (!qword_100783EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783EF8);
  }

  return result;
}

unint64_t sub_10046A464()
{
  result = qword_100783F00;
  if (!qword_100783F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783F00);
  }

  return result;
}

uint64_t AnyListEntity.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for AnyListEntity(0) + 20));

  return v1;
}

uint64_t type metadata accessor for AnyListEntity(uint64_t a1)
{
  result = qword_100783FE0;
  if (!qword_100783FE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AnyListEntity.init(id:name:listBadge:color:supportsListAppearance:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v44 = a4;
  v13 = type metadata accessor for AnyListEntityLazyImage.Parameters();
  v46 = *(v13 - 8);
  v47 = v13;
  __chkstk_darwin(v13);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SmartListType();
  v42 = *(v16 - 8);
  v43 = v16;
  __chkstk_darwin(v16);
  v41 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AnyListEntityID(0);
  __chkstk_darwin(v18);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002923BC(a1, a7);
  v21 = type metadata accessor for AnyListEntity(0);
  v22 = (a7 + v21[5]);
  *v22 = a2;
  v22[1] = a3;
  v23 = v44;
  sub_10000794C(v44, a7 + v21[6], &qword_100783F08, &qword_1006400C0);
  v24 = a7 + v21[7];
  v48 = a5;
  sub_10000794C(a5, v24, &qword_100783F10, &qword_1006400C8);
  v25 = v21[8];
  v45 = a7;
  *(a7 + v25) = a6;
  v49 = a1;
  sub_1002923BC(a1, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v27 = sub_100058000(&qword_100783F18, &qword_1006400D0);
      v28 = v27[12];
      v29 = v27[16];
      v30 = v27[20];
      *v15 = 1;
    }

    else
    {
      v36 = sub_100058000(&qword_100783F18, &qword_1006400D0);
      v28 = v36[12];
      v29 = v36[16];
      v30 = v36[20];
      *v15 = 0;
    }

    sub_10000794C(v23, &v15[v28], &qword_100783F08, &qword_1006400C0);
    v37 = &v15[v29];
    v38 = v48;
    sub_10000794C(v48, v37, &qword_100783F10, &qword_1006400C8);
    v15[v30] = a6;
    (*(v46 + 104))(v15, enum case for AnyListEntityLazyImage.Parameters.list(_:), v47);
    type metadata accessor for AnyListEntityLazyImage();
    swift_allocObject();
    v39 = AnyListEntityLazyImage.init(for:)();
    sub_1000079B4(v38, &qword_100783F10, &qword_1006400C8);
    sub_1000079B4(v23, &qword_100783F08, &qword_1006400C0);
    sub_100292420(v49);
    *(v45 + v21[9]) = v39;
    return sub_100292420(v20);
  }

  else
  {
    v32 = v41;
    v31 = v42;
    v33 = v43;
    (*(v42 + 32))(v41, v20, v43);
    (*(v31 + 16))(v15, v32, v33);
    (*(v46 + 104))(v15, enum case for AnyListEntityLazyImage.Parameters.smartList(_:), v47);
    type metadata accessor for AnyListEntityLazyImage();
    swift_allocObject();
    v34 = AnyListEntityLazyImage.init(for:)();
    sub_1000079B4(v48, &qword_100783F10, &qword_1006400C8);
    sub_1000079B4(v23, &qword_100783F08, &qword_1006400C0);
    sub_100292420(v49);
    result = (*(v31 + 8))(v32, v33);
    *(v45 + v21[9]) = v34;
  }

  return result;
}

uint64_t sub_10046AA6C()
{
  v0 = sub_100058000(&qword_100767528, &qword_10062BD18);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = type metadata accessor for LocalizedStringResource.BundleDescription();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for LocalizedStringResource();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = type metadata accessor for TypeDisplayRepresentation();
  sub_100003E68(v10, static AnyListEntity.typeDisplayRepresentation);
  sub_100003E30(v10, static AnyListEntity.typeDisplayRepresentation);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v9 + 56))(v2, 1, 1, v8);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t AnyListEntity.typeDisplayRepresentation.unsafeMutableAddressor(__n128 a1)
{
  if (qword_100767308 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for TypeDisplayRepresentation();

  return sub_100003E30(v1, static AnyListEntity.typeDisplayRepresentation);
}

uint64_t static AnyListEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100767308 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for TypeDisplayRepresentation();
  v4 = sub_100003E30(v3, static AnyListEntity.typeDisplayRepresentation);
  swift_beginAccess();
  return (*(*(v3 - 8) + 16))(a1, v4, v3);
}

uint64_t static AnyListEntity.typeDisplayRepresentation.setter(uint64_t a1, __n128 a2)
{
  if (qword_100767308 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for TypeDisplayRepresentation();
  v4 = sub_100003E30(v3, static AnyListEntity.typeDisplayRepresentation);
  swift_beginAccess();
  v5 = *(v3 - 8);
  (*(v5 + 24))(v4, a1, v3);
  swift_endAccess();
  return (*(v5 + 8))(a1, v3);
}

uint64_t (*static AnyListEntity.typeDisplayRepresentation.modify(uint64_t a1, __n128 a2))(uint64_t a1)
{
  if (qword_100767308 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  sub_100003E30(v2, static AnyListEntity.typeDisplayRepresentation);
  swift_beginAccess();
  return j_j__swift_endAccess_0;
}

uint64_t AnyListEntity.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v1 = sub_100058000(&qword_100767528, &qword_10062BD18);
  __chkstk_darwin(v1 - 8);
  v3 = v18 - v2;
  v4 = sub_100058000(&qword_100783F20, &qword_1006400D8);
  __chkstk_darwin(v4 - 8);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for LocalizedStringResource();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v18 - v15;
  sub_10046B240();
  type metadata accessor for AnyListEntity(0);
  AnyListEntityLazyImage.displayRepresentationImage.getter();
  (*(v11 + 16))(v13, v16, v10);
  (*(v11 + 56))(v3, 1, 1, v10);
  sub_10000794C(v9, v6, &qword_100783F20, &qword_1006400D8);
  DisplayRepresentation.init(title:subtitle:image:)();
  sub_1000079B4(v9, &qword_100783F20, &qword_1006400D8);
  return (*(v11 + 8))(v16, v10);
}

uint64_t sub_10046B240()
{
  v1 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v1 - 8);
  __chkstk_darwin(v2);
  v3 = type metadata accessor for SmartListType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AnyListEntityID(0);
  __chkstk_darwin(v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002923BC(v0, v9);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_100292420(v9);
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v10);
    v11 = *(v0 + *(type metadata accessor for AnyListEntity(0) + 20));
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v11);
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v12);
    return LocalizedStringResource.init(stringInterpolation:)();
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v14);
    v15 = SmartListType.remSmartListType.getter();
    v16 = REMSmartListType.title.getter();
    v18 = v17;

    if (v18)
    {
      v19 = v16;
    }

    else
    {
      v19 = 0;
    }

    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = 0xE000000000000000;
    }

    v21 = v20;
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(*&v19);

    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v22);
    LocalizedStringResource.init(stringInterpolation:)();
    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_10046B4D4@<X0>(uint64_t a1@<X8>)
{
  if (qword_100767310 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1007A8780;
  *a1 = static AnyListEntity.defaultQuery;
  *(a1 + 8) = v2;
}

uint64_t static AnyListEntity.defaultQuery.getter()
{
  if (qword_100767310 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static AnyListEntity.defaultQuery;

  return v0;
}

uint64_t sub_10046B5E8(uint64_t a1)
{
  v2 = sub_10046DFE4(&qword_100767538, type metadata accessor for AnyListEntity, &protocol conformance descriptor for AnyListEntity);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10046B668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10001AA3C;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_10046B72C(uint64_t a1)
{
  v2 = sub_10046DFE4(&qword_100783F60, type metadata accessor for AnyListEntity, &protocol conformance descriptor for AnyListEntity);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10046B7A8()
{
  v0 = type metadata accessor for AppIntentsDependencyKey();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v8 - v5;
  sub_100058000(&qword_100767540, &qword_100645990);
  (*(v1 + 104))(v6, enum case for AppIntentsDependencyKey.remStore(_:), v0);
  (*(v1 + 16))(v3, v6, v0);
  sub_10046DFE4(&qword_100767548, &type metadata accessor for AppIntentsDependencyKey, &protocol conformance descriptor for AppIntentsDependencyKey);
  AnyHashable.init<A>(_:)();
  (*(v1 + 8))(v6, v0);
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  result = AppDependency.__allocating_init(key:manager:)();
  static AnyListEntity.defaultQuery = 0;
  qword_1007A8780 = result;
  return result;
}

char *AnyListEntity.defaultQuery.unsafeMutableAddressor()
{
  if (qword_100767310 != -1)
  {
    swift_once();
  }

  return &static AnyListEntity.defaultQuery;
}

double static AnyListEntity.defaultQuery.setter(char a1, uint64_t a2)
{
  if (qword_100767310 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static AnyListEntity.defaultQuery = a1;
  qword_1007A8780 = a2;

  return result;
}

uint64_t (*static AnyListEntity.defaultQuery.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_100767310 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess_0;
}

unint64_t sub_10046BBA8()
{
  result = qword_100783F40;
  if (!qword_100783F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783F40);
  }

  return result;
}

unint64_t sub_10046BD20()
{
  result = qword_100783F70;
  if (!qword_100783F70)
  {
    sub_10005D20C(&qword_100783F78, &qword_100640228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783F70);
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for AnyListEntity(char *a1, char *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));
  }

  else
  {
    type metadata accessor for AnyListEntityID(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
    {
      v8 = type metadata accessor for UUID();
    }

    else
    {
      v8 = type metadata accessor for SmartListType();
    }

    (*(*(v8 - 8) + 16))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    v10 = a3[5];
    v11 = a3[6];
    v12 = &a1[v10];
    v13 = &a2[v10];
    v14 = *(v13 + 1);
    *v12 = *v13;
    *(v12 + 1) = v14;
    v15 = type metadata accessor for ListBadgeEntity();
    v16 = *(v15 - 8);
    v17 = *(v16 + 48);

    if (v17(&a2[v11], 1, v15))
    {
      v18 = sub_100058000(&qword_100783F08, &qword_1006400C0);
      memcpy(&a1[v11], &a2[v11], *(*(v18 - 8) + 64));
    }

    else
    {
      (*(v16 + 16))(&a1[v11], &a2[v11], v15);
      (*(v16 + 56))(&a1[v11], 0, 1, v15);
    }

    v19 = a3[7];
    v20 = type metadata accessor for ColorEntity();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(&a2[v19], 1, v20))
    {
      v22 = sub_100058000(&qword_100783F10, &qword_1006400C8);
      memcpy(&a1[v19], &a2[v19], *(*(v22 - 8) + 64));
    }

    else
    {
      (*(v21 + 16))(&a1[v19], &a2[v19], v20);
      (*(v21 + 56))(&a1[v19], 0, 1, v20);
    }

    v23 = a3[9];
    a1[a3[8]] = a2[a3[8]];
    *&a1[v23] = *&a2[v23];
  }

  return a1;
}

double destroy for AnyListEntity(uint64_t a1, int *a2)
{
  type metadata accessor for AnyListEntityID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
  {
    v5 = type metadata accessor for UUID();
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_7;
    }

    v5 = type metadata accessor for SmartListType();
  }

  (*(*(v5 - 8) + 8))(a1, v5);
LABEL_7:

  v6 = a2[6];
  v7 = type metadata accessor for ListBadgeEntity();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a1 + v6, 1, v7))
  {
    (*(v8 + 8))(a1 + v6, v7);
  }

  v9 = a2[7];
  v10 = type metadata accessor for ColorEntity();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(a1 + v9, 1, v10))
  {
    (*(v11 + 8))(a1 + v9, v10);
  }

  return result;
}

uint64_t initializeWithCopy for AnyListEntity(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for AnyListEntityID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
  {
    v7 = type metadata accessor for UUID();
  }

  else
  {
    v7 = type metadata accessor for SmartListType();
  }

  (*(*(v7 - 8) + 16))(a1, a2, v7);
  swift_storeEnumTagMultiPayload();
  v8 = a3[5];
  v9 = a3[6];
  v10 = (a1 + v8);
  v11 = (a2 + v8);
  v12 = v11[1];
  *v10 = *v11;
  v10[1] = v12;
  v13 = type metadata accessor for ListBadgeEntity();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);

  if (v15(a2 + v9, 1, v13))
  {
    v16 = sub_100058000(&qword_100783F08, &qword_1006400C0);
    memcpy((a1 + v9), (a2 + v9), *(*(v16 - 8) + 64));
  }

  else
  {
    (*(v14 + 16))(a1 + v9, a2 + v9, v13);
    (*(v14 + 56))(a1 + v9, 0, 1, v13);
  }

  v17 = a3[7];
  v18 = type metadata accessor for ColorEntity();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(a2 + v17, 1, v18))
  {
    v20 = sub_100058000(&qword_100783F10, &qword_1006400C8);
    memcpy((a1 + v17), (a2 + v17), *(*(v20 - 8) + 64));
  }

  else
  {
    (*(v19 + 16))(a1 + v17, a2 + v17, v18);
    (*(v19 + 56))(a1 + v17, 0, 1, v18);
  }

  v21 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + v21) = *(a2 + v21);

  return a1;
}

uint64_t assignWithCopy for AnyListEntity(uint64_t a1, uint64_t a2, int *a3)
{
  if (a1 != a2)
  {
    sub_100292420(a1);
    type metadata accessor for AnyListEntityID(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
    {
      v7 = type metadata accessor for UUID();
    }

    else
    {
      v7 = type metadata accessor for SmartListType();
    }

    (*(*(v7 - 8) + 16))(a1, a2, v7);
    swift_storeEnumTagMultiPayload();
  }

  v8 = a3[5];
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  *v9 = *v10;
  v9[1] = v10[1];

  v11 = a3[6];
  v12 = type metadata accessor for ListBadgeEntity();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  v15 = v14(a1 + v11, 1, v12);
  v16 = v14(a2 + v11, 1, v12);
  if (v15)
  {
    if (!v16)
    {
      (*(v13 + 16))(a1 + v11, a2 + v11, v12);
      (*(v13 + 56))(a1 + v11, 0, 1, v12);
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v16)
  {
    (*(v13 + 8))(a1 + v11, v12);
LABEL_12:
    v17 = sub_100058000(&qword_100783F08, &qword_1006400C0);
    memcpy((a1 + v11), (a2 + v11), *(*(v17 - 8) + 64));
    goto LABEL_13;
  }

  (*(v13 + 24))(a1 + v11, a2 + v11, v12);
LABEL_13:
  v18 = a3[7];
  v19 = type metadata accessor for ColorEntity();
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  v22 = v21(a1 + v18, 1, v19);
  v23 = v21(a2 + v18, 1, v19);
  if (!v22)
  {
    if (!v23)
    {
      (*(v20 + 24))(a1 + v18, a2 + v18, v19);
      goto LABEL_19;
    }

    (*(v20 + 8))(a1 + v18, v19);
    goto LABEL_18;
  }

  if (v23)
  {
LABEL_18:
    v24 = sub_100058000(&qword_100783F10, &qword_1006400C8);
    memcpy((a1 + v18), (a2 + v18), *(*(v24 - 8) + 64));
    goto LABEL_19;
  }

  (*(v20 + 16))(a1 + v18, a2 + v18, v19);
  (*(v20 + 56))(a1 + v18, 0, 1, v19);
LABEL_19:
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + a3[9]) = *(a2 + a3[9]);

  return a1;
}

uint64_t initializeWithTake for AnyListEntity(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for AnyListEntityID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
  {
    v7 = type metadata accessor for UUID();
  }

  else
  {
    v7 = type metadata accessor for SmartListType();
  }

  (*(*(v7 - 8) + 32))(a1, a2, v7);
  swift_storeEnumTagMultiPayload();
  v8 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v9 = type metadata accessor for ListBadgeEntity();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a2 + v8, 1, v9))
  {
    v11 = sub_100058000(&qword_100783F08, &qword_1006400C0);
    memcpy((a1 + v8), (a2 + v8), *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v10 + 32))(a1 + v8, a2 + v8, v9);
    (*(v10 + 56))(a1 + v8, 0, 1, v9);
  }

  v12 = a3[7];
  v13 = type metadata accessor for ColorEntity();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(a2 + v12, 1, v13))
  {
    v15 = sub_100058000(&qword_100783F10, &qword_1006400C8);
    memcpy((a1 + v12), (a2 + v12), *(*(v15 - 8) + 64));
  }

  else
  {
    (*(v14 + 32))(a1 + v12, a2 + v12, v13);
    (*(v14 + 56))(a1 + v12, 0, 1, v13);
  }

  v16 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + v16) = *(a2 + v16);
  return a1;
}

uint64_t assignWithTake for AnyListEntity(uint64_t a1, uint64_t a2, int *a3)
{
  if (a1 != a2)
  {
    sub_100292420(a1);
    type metadata accessor for AnyListEntityID(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
    {
      v7 = type metadata accessor for UUID();
    }

    else
    {
      v7 = type metadata accessor for SmartListType();
    }

    (*(*(v7 - 8) + 32))(a1, a2, v7);
    swift_storeEnumTagMultiPayload();
  }

  v8 = a3[5];
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  v12 = *v10;
  v11 = v10[1];
  *v9 = v12;
  v9[1] = v11;

  v13 = a3[6];
  v14 = type metadata accessor for ListBadgeEntity();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  v17 = v16(a1 + v13, 1, v14);
  v18 = v16(a2 + v13, 1, v14);
  if (v17)
  {
    if (!v18)
    {
      (*(v15 + 32))(a1 + v13, a2 + v13, v14);
      (*(v15 + 56))(a1 + v13, 0, 1, v14);
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v18)
  {
    (*(v15 + 8))(a1 + v13, v14);
LABEL_12:
    v19 = sub_100058000(&qword_100783F08, &qword_1006400C0);
    memcpy((a1 + v13), (a2 + v13), *(*(v19 - 8) + 64));
    goto LABEL_13;
  }

  (*(v15 + 40))(a1 + v13, a2 + v13, v14);
LABEL_13:
  v20 = a3[7];
  v21 = type metadata accessor for ColorEntity();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  v24 = v23(a1 + v20, 1, v21);
  v25 = v23(a2 + v20, 1, v21);
  if (!v24)
  {
    if (!v25)
    {
      (*(v22 + 40))(a1 + v20, a2 + v20, v21);
      goto LABEL_19;
    }

    (*(v22 + 8))(a1 + v20, v21);
    goto LABEL_18;
  }

  if (v25)
  {
LABEL_18:
    v26 = sub_100058000(&qword_100783F10, &qword_1006400C8);
    memcpy((a1 + v20), (a2 + v20), *(*(v26 - 8) + 64));
    goto LABEL_19;
  }

  (*(v22 + 32))(a1 + v20, a2 + v20, v21);
  (*(v22 + 56))(a1 + v20, 0, 1, v21);
LABEL_19:
  v27 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + v27) = *(a2 + v27);

  return a1;
}

void sub_10046CF5C(uint64_t a1)
{
  type metadata accessor for AnyListEntityID(319);
  if (v1 <= 0x3F)
  {
    sub_10046D0B8(319, &qword_100783FF0, &type metadata accessor for ListBadgeEntity);
    if (v2 <= 0x3F)
    {
      sub_10046D0B8(319, &qword_100783FF8, &type metadata accessor for ColorEntity);
      if (v3 <= 0x3F)
      {
        swift_initStructMetadata();
      }
    }
  }
}

void sub_10046D0B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10046D10C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AnyListEntityLazyImage.Parameters();
  v55 = *(v4 - 8);
  v56 = v4;
  __chkstk_darwin(v4);
  v54 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SmartListType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v53 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&qword_100783F10, &qword_1006400C8);
  __chkstk_darwin(v9 - 8);
  v11 = &v51 - v10;
  v12 = sub_100058000(&qword_100783F08, &qword_1006400C0);
  __chkstk_darwin(v12 - 8);
  v14 = &v51 - v13;
  v15 = type metadata accessor for AnyListEntityID(0);
  __chkstk_darwin(v15);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v21 = &v51 - v20;
  v59 = v7;
  v60 = v6;
  v52 = *(v7 + 16);
  v52(&v51 - v20, a1, v6, v19);
  swift_storeEnumTagMultiPayload();
  v61 = a1;
  v22 = SmartListType.title.getter();
  v24 = v23;
  v25 = type metadata accessor for ListBadgeEntity();
  (*(*(v25 - 8) + 56))(v14, 1, 1, v25);
  v26 = type metadata accessor for ColorEntity();
  (*(*(v26 - 8) + 56))(v11, 1, 1, v26);
  sub_1002923BC(v21, a2);
  v27 = type metadata accessor for AnyListEntity(0);
  v28 = (a2 + v27[5]);
  *v28 = v22;
  v28[1] = v24;
  v29 = a2 + v27[6];
  v57 = v14;
  sub_10000794C(v14, v29, &qword_100783F08, &qword_1006400C0);
  v30 = a2 + v27[7];
  v58 = v11;
  sub_10000794C(v11, v30, &qword_100783F10, &qword_1006400C8);
  v31 = v27[8];
  v62 = a2;
  *(a2 + v31) = 2;
  v32 = v17;
  sub_1002923BC(v21, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v34 = sub_100058000(&qword_100783F18, &qword_1006400D0);
      v35 = v34[12];
      v36 = v34[16];
      v37 = v34[20];
      v38 = v54;
      *v54 = 1;
    }

    else
    {
      v46 = sub_100058000(&qword_100783F18, &qword_1006400D0);
      v35 = v46[12];
      v36 = v46[16];
      v37 = v46[20];
      v38 = v54;
      *v54 = 0;
    }

    v47 = v57;
    sub_10000794C(v57, &v38[v35], &qword_100783F08, &qword_1006400C0);
    v48 = &v38[v36];
    v49 = v58;
    sub_10000794C(v58, v48, &qword_100783F10, &qword_1006400C8);
    v38[v37] = 2;
    (*(v55 + 104))(v38, enum case for AnyListEntityLazyImage.Parameters.list(_:), v56);
    type metadata accessor for AnyListEntityLazyImage();
    swift_allocObject();
    v50 = AnyListEntityLazyImage.init(for:)();
    (*(v59 + 8))(v61, v60);
    sub_1000079B4(v49, &qword_100783F10, &qword_1006400C8);
    sub_1000079B4(v47, &qword_100783F08, &qword_1006400C0);
    sub_100292420(v21);
    *(v62 + v27[9]) = v50;
    return sub_100292420(v32);
  }

  else
  {
    v40 = v59;
    v39 = v60;
    v41 = v53;
    (*(v59 + 32))(v53, v17, v60);
    v42 = v54;
    (v52)(v54, v41, v39);
    (*(v55 + 104))(v42, enum case for AnyListEntityLazyImage.Parameters.smartList(_:), v56);
    type metadata accessor for AnyListEntityLazyImage();
    swift_allocObject();
    v43 = AnyListEntityLazyImage.init(for:)();
    v44 = *(v40 + 8);
    v44(v61, v39);
    v44(v41, v39);
    sub_1000079B4(v58, &qword_100783F10, &qword_1006400C8);
    sub_1000079B4(v57, &qword_100783F08, &qword_1006400C0);
    result = sub_100292420(v21);
    *(v62 + v27[9]) = v43;
  }

  return result;
}

uint64_t sub_10046D708@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = type metadata accessor for AnyListEntityLazyImage.Parameters();
  v74 = *(v3 - 8);
  v75 = v3;
  __chkstk_darwin(v3);
  v77 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for SmartListType();
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v68 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for AnyListEntity(0);
  __chkstk_darwin(v85);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_100783F10, &qword_1006400C8);
  __chkstk_darwin(v8 - 8);
  v84 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v67 - v11;
  v13 = sub_100058000(&qword_100783F08, &qword_1006400C0);
  __chkstk_darwin(v13 - 8);
  v83 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v67 - v16;
  v71 = type metadata accessor for AnyListEntityID(0);
  __chkstk_darwin(v71);
  v73 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v82 = &v67 - v20;
  __chkstk_darwin(v21);
  v23 = &v67 - v22;
  v24 = a1[3];
  v86 = a1;
  sub_10000C36C(a1, v24);
  v25 = dispatch thunk of TTRListProtocol.objectID.getter();
  v26 = [v25 entityName];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v30 = [objc_opt_self() cdEntityName];
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  v80 = v7;
  if (v27 == v31 && v29 == v33)
  {
  }

  else
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v72 = v25;
  v34 = [v25 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_storeEnumTagMultiPayload();
  v35 = v86;
  sub_10000B0D8(v86, v87);
  ListBadgeEntity.init(list:)();
  sub_10000B0D8(v35, v87);
  ColorEntity.init(list:)();
  v76 = v23;
  v36 = v23;
  v37 = v82;
  sub_1002923BC(v36, v82);
  sub_10000C36C(v35, v35[3]);
  v38 = dispatch thunk of TTRListProtocol.displayName.getter();
  v40 = v39;
  v78 = v17;
  v41 = v17;
  v42 = v83;
  sub_10000794C(v41, v83, &qword_100783F08, &qword_1006400C0);
  v79 = v12;
  v43 = v84;
  sub_10000794C(v12, v84, &qword_100783F10, &qword_1006400C8);
  sub_10000C36C(v35, v35[3]);
  v44 = dispatch thunk of TTRListProtocol.accountCapabilities.getter();
  v45 = [v44 supportsListAppearance];

  v46 = v80;
  sub_1002923BC(v37, v80);
  v47 = v85;
  v48 = (v46 + *(v85 + 20));
  *v48 = v38;
  v48[1] = v40;
  sub_10000794C(v42, v46 + v47[6], &qword_100783F08, &qword_1006400C0);
  sub_10000794C(v43, v46 + v47[7], &qword_100783F10, &qword_1006400C8);
  *(v46 + v47[8]) = v45;
  v49 = v37;
  v50 = v73;
  sub_1002923BC(v49, v73);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v52 = sub_100058000(&qword_100783F18, &qword_1006400D0);
      v53 = v52[12];
      v54 = v52[16];
      v55 = v52[20];
      v56 = v77;
      *v77 = 1;
    }

    else
    {
      v62 = sub_100058000(&qword_100783F18, &qword_1006400D0);
      v53 = v62[12];
      v54 = v62[16];
      v55 = v62[20];
      v56 = v77;
      *v77 = 0;
    }

    v63 = v83;
    sub_10000794C(v83, &v56[v53], &qword_100783F08, &qword_1006400C0);
    v64 = v84;
    sub_10000794C(v84, &v56[v54], &qword_100783F10, &qword_1006400C8);
    v56[v55] = v45;
    (*(v74 + 104))(v56, enum case for AnyListEntityLazyImage.Parameters.list(_:), v75);
    type metadata accessor for AnyListEntityLazyImage();
    swift_allocObject();
    v65 = AnyListEntityLazyImage.init(for:)();

    sub_1000079B4(v64, &qword_100783F10, &qword_1006400C8);
    sub_1000079B4(v63, &qword_100783F08, &qword_1006400C0);
    sub_100292420(v82);
    sub_1000079B4(v79, &qword_100783F10, &qword_1006400C8);
    sub_1000079B4(v78, &qword_100783F08, &qword_1006400C0);
    sub_100292420(v76);
    *(v46 + *(v85 + 36)) = v65;
    sub_100292420(v50);
  }

  else
  {
    v57 = v69;
    v58 = v68;
    v59 = v70;
    (*(v69 + 32))(v68, v50, v70);
    v60 = v77;
    (*(v57 + 16))(v77, v58, v59);
    (*(v74 + 104))(v60, enum case for AnyListEntityLazyImage.Parameters.smartList(_:), v75);
    type metadata accessor for AnyListEntityLazyImage();
    swift_allocObject();
    v61 = AnyListEntityLazyImage.init(for:)();

    (*(v57 + 8))(v58, v59);
    sub_1000079B4(v84, &qword_100783F10, &qword_1006400C8);
    sub_1000079B4(v83, &qword_100783F08, &qword_1006400C0);
    sub_100292420(v82);
    sub_1000079B4(v79, &qword_100783F10, &qword_1006400C8);
    sub_1000079B4(v78, &qword_100783F08, &qword_1006400C0);
    sub_100292420(v76);
    *(v46 + *(v85 + 36)) = v61;
  }

  sub_10046DF80(v46, v81);
  return sub_100004758(v86);
}

uint64_t sub_10046DF80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyListEntity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10046DFE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10046E034()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100784038);
  v1 = sub_100003E30(v0, qword_100784038);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10046E0FC(void **a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10076DB50, &qword_1006315A8);
  isa = v4[-1].isa;
  __chkstk_darwin(v4);
  v7 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v53 - v9;
  sub_100058000(&qword_10076DB40, &qword_1006315A0);
  __chkstk_darwin(a1);
  v13 = (v53 - v12);
  v14 = *a1;
  if (!v14)
  {
    if (qword_100767318 == -1)
    {
LABEL_19:
      v46 = type metadata accessor for Logger();
      sub_100003E30(v46, qword_100784038);
      v58 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v58, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&_mh_execute_header, v58, v47, "Given upgrade info has no eligible CalDav account ID for upgrade. Giving up.", v48, 2u);
      }

      v49 = v58;

      return;
    }

LABEL_29:
    swift_once();
    goto LABEL_19;
  }

  v54 = v13;
  v55 = isa;
  v58 = v4;
  v56 = v11;
  sub_1002AAF0C(v11, v59);
  v57 = v14;
  v53[1] = a2;
  v15 = dispatch thunk of TTRCloudKitMigrationManager.accountsEligibleForMigration.getter();
  v16 = v15;
  v17 = v15 + 64;
  v18 = 1 << *(v15 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v15 + 64);
  v21 = (v18 + 63) >> 6;

  v22 = 0;
  if (!v20)
  {
LABEL_6:
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v21)
      {

        v30 = v54;
        v29 = v55;
        v31 = *(v55 + 7);
        v32 = v54;
        v33 = 1;
        goto LABEL_13;
      }

      v20 = *(v17 + 8 * v23);
      ++v22;
      if (v20)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_29;
  }

  while (1)
  {
    v23 = v22;
LABEL_9:
    v24 = __clz(__rbit64(v20)) | (v23 << 6);
    v25 = *(v16 + 56);
    v26 = *(*(v16 + 48) + 8 * v24);
    v27 = type metadata accessor for TTRCloudKitMigrationManager.MigrationState();
    (*(*(v27 - 8) + 16))(&v10[SLODWORD(v58[6].isa)], v25 + *(*(v27 - 8) + 72) * v24, v27);
    *v10 = v26;
    sub_10046E9C0(v10, v7);
    sub_100093330();
    v28 = v26;
    if (static NSObject.== infix(_:_:)())
    {
      break;
    }

    v20 &= v20 - 1;
    sub_1000079B4(v7, &qword_10076DB50, &qword_1006315A8);
    v22 = v23;
    if (!v20)
    {
      goto LABEL_6;
    }
  }

  v30 = v54;
  sub_10046E9C0(v7, v54);
  v29 = v55;
  v31 = *(v55 + 7);
  v32 = v30;
  v33 = 0;
LABEL_13:
  v34 = v58;
  v31(v32, v33, 1, v58);

  if ((*(v29 + 6))(v30, 1, v34) != 1)
  {
    v50 = *v30;
    isa_low = SLODWORD(v34[6].isa);
    v52 = type metadata accessor for TTRCloudKitMigrationManager.MigrationState();
    (*(*(v52 - 8) + 8))(v30 + isa_low, v52);
    dispatch thunk of TTRCloudKitMigrationManager.migrateAccountToCloudKit(accountID:)();

    goto LABEL_25;
  }

  sub_1000079B4(v30, &qword_10076DB40, &qword_1006315A0);
  if (qword_100767318 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_100003E30(v35, qword_100784038);
  v36 = v57;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v59[0] = v40;
    *v39 = 136446210;
    v41 = [v36 stringRepresentation];
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    v45 = sub_100004060(v42, v44, v59);

    *(v39 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v37, v38, "Given account in the upgrade info is no longer eligible for migration currently. Giving up. {accountID: %{public}s}", v39, 0xCu);
    sub_100004758(v40);

LABEL_25:
    sub_1002AAF68(v56);
    return;
  }

  sub_1002AAF68(v56);
}

double sub_10046E6FC(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v6 = *(v15 - 8);
  __chkstk_darwin(v15);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRCloudKitMigrationManager();
  v9 = static TTRCloudKitMigrationManager.shared.getter();
  v10 = TTRCloudKitMigrationManager.queue.getter();
  v11 = swift_allocObject();
  v12 = *(a1 + 16);
  *(v11 + 16) = *a1;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(a1 + 32);
  *(v11 + 64) = *(a1 + 48);
  *(v11 + 72) = v9;
  aBlock[4] = sub_10046E9B4;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001047C;
  aBlock[3] = &unk_100729E08;
  v13 = _Block_copy(aBlock);
  sub_1002AAF0C(a1, &v16);

  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_10001A4CC();
  sub_100058000(&qword_100780A50, &qword_100635D30);
  sub_10001A524();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v3 + 8))(v5, v2);
  (*(v6 + 8))(v8, v15);

  return result;
}

uint64_t sub_10046E9C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10076DB50, &qword_1006315A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10046EA30()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_1007840F0);
  v1 = sub_100003E30(v0, qword_1007840F0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10046EAF8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionButtonCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionButtonCell_appliedConfiguration;
  v11 = type metadata accessor for TTRPermissionConfiguration.PrimaryButton();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  *&v4[OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionButtonCell____lazy_storage___primaryButton] = 0;
  v32.receiver = v4;
  v32.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v32, "initWithFrame:", a1, a2, a3, a4);
  sub_1004704E8();
  v13 = v12;
  UICollectionViewCell.contentConfiguration.setter();
  v14 = [v13 contentView];
  _s9Reminders14ContentBoxViewCMa_0();
  v15 = swift_dynamicCastClass();
  if (!v15)
  {

    if (qword_100767320 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100003E30(v16, qword_1007840F0);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "TTRIAccountsListsInlinePermissionButtonCell: failed to create ContentBoxView", v19, 2u);
    }

    v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v14 = v15;
  }

  v20 = v15;
  v21 = v14;
  v22 = v20;
  [v22 setPreservesSuperviewLayoutMargins:1];
  [v22 setLayoutMarginsRelativeArrangement:1];
  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10062D420;
  *(v23 + 32) = sub_10046EEE4();
  v24 = objc_allocWithZone(type metadata accessor for TTRNoAnimationContainerBoxView());
  sub_100003540(0, &qword_10076B020, UIView_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v26 = [v24 initWithArrangedSubviews:isa];

  v27 = v26;
  [v27 setPreservesSuperviewLayoutMargins:0];
  v28 = v27;
  [v28 setLayoutMarginsRelativeArrangement:1];
  [v28 setDebugBoundingBoxesEnabled:0];

  [v28 setDirectionalLayoutMargins:{0.0, 44.0, 0.0, 0.0}];
  [v28 setHorizontalAlignment:1];

  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_10062D420;
  *(v29 + 32) = v28;
  v30 = Array._bridgeToObjectiveC()().super.isa;

  [v22 setArrangedSubviews:v30];

  return v13;
}

id sub_10046EEE4()
{
  v1 = v0;
  v2 = type metadata accessor for UIButton.Configuration.TitleAlignment();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UIButton.Configuration();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  v13 = OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionButtonCell____lazy_storage___primaryButton;
  v14 = *&v0[OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionButtonCell____lazy_storage___primaryButton];
  if (v14)
  {
    v15 = *&v0[OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionButtonCell____lazy_storage___primaryButton];
  }

  else
  {
    static UIButton.Configuration.plain()();
    UIButton.Configuration.contentInsets.setter();
    UIButton.Configuration.titlePadding.setter();
    (*(v3 + 104))(v5, enum case for UIButton.Configuration.TitleAlignment.leading(_:), v2);
    UIButton.Configuration.titleAlignment.setter();
    sub_100003540(0, &unk_10077A690, UIButton_ptr);
    (*(v7 + 16))(v9, v12, v6);
    sub_100003540(0, &qword_10076BA60, UIAction_ptr);
    *(swift_allocObject() + 16) = v0;
    v16 = v0;
    UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v17 = UIButton.init(configuration:primaryAction:)();
    (*(v7 + 8))(v12, v6);
    v18 = *&v1[v13];
    *&v1[v13] = v17;
    v15 = v17;

    v14 = 0;
  }

  v19 = v14;
  return v15;
}

uint64_t sub_10046F2A0(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v3 = sub_100058000(&qword_10076BE18, &qword_10062FFA0);
  __chkstk_darwin(v3 - 8);
  v38 = &v34 - v4;
  v5 = type metadata accessor for TTRPermissionConfiguration.PrimaryButton();
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin(v5);
  v35 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&unk_10077A660, &unk_100634770);
  __chkstk_darwin(v7 - 8);
  v9 = &v34 - v8;
  v10 = type metadata accessor for TTRIAccountsListsItemIntermediateViewModel(0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v34 - v19;
  __chkstk_darwin(v21);
  v23 = &v34 - v22;
  v39 = v2;
  sub_100030908();
  sub_100058000(&qword_10076EA28, &unk_100631EF0);
  TTRCollectionViewItemObservedViewModel.intermediateViewModel.getter();
  sub_10000794C(&v13[*(v11 + 28)], v9, &unk_10077A660, &unk_100634770);
  v24 = sub_100058000(&qword_10077A670, &unk_100631300);
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v9, 1, v24) == 1)
  {
    sub_1000299A4(v13);
    return sub_1000079B4(v9, &unk_10077A660, &unk_100634770);
  }

  else
  {
    TTRDiffableEquatableWrapper.base.getter();
    sub_1000299A4(v13);
    (*(v25 + 8))(v9, v24);
    (*(v15 + 32))(v23, v20, v14);
    (*(v15 + 16))(v17, v23, v14);
    if ((*(v15 + 88))(v17, v14) == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:))
    {
      (*(v15 + 96))(v17, v14);
      v27 = type metadata accessor for TTRAccountsListsViewModel.PermissionRequest();
      v28 = *(v27 - 8);
      if ((*(v28 + 88))(v17, v27) == enum case for TTRAccountsListsViewModel.PermissionRequest.primaryButton(_:))
      {
        (*(v28 + 96))(v17, v27);
        v30 = v35;
        v29 = v36;
        v31 = v37;
        (*(v36 + 32))(v35, v17, v37);
        v32 = v38;
        (*(v29 + 16))(v38, v30, v31);
        (*(v29 + 56))(v32, 0, 1, v31);
        sub_10046F824(v32);
        (*(v29 + 8))(v30, v31);
        return (*(v15 + 8))(v23, v14);
      }

      else
      {
        (*(v15 + 8))(v23, v14);
        return (*(v28 + 8))(v17, v27);
      }
    }

    else
    {
      v33 = *(v15 + 8);
      v33(v23, v14);
      return (v33)(v17, v14);
    }
  }
}

uint64_t sub_10046F824(uint64_t a1)
{
  v3 = type metadata accessor for TTRPermissionConfiguration.PrimaryButton();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v20 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_10076BE18, &qword_10062FFA0);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_100058000(&qword_100784190, &qword_1006404A8);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v13 = OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionButtonCell_appliedConfiguration;
  swift_beginAccess();
  v14 = *(v10 + 56);
  sub_10000794C(v1 + v13, v12, &qword_10076BE18, &qword_10062FFA0);
  sub_10000794C(a1, &v12[v14], &qword_10076BE18, &qword_10062FFA0);
  v15 = *(v4 + 48);
  if (v15(v12, 1, v3) != 1)
  {
    sub_10000794C(v12, v8, &qword_10076BE18, &qword_10062FFA0);
    if (v15(&v12[v14], 1, v3) != 1)
    {
      v17 = v20;
      (*(v4 + 32))(v20, &v12[v14], v3);
      sub_100470A04(&qword_100784198, &type metadata accessor for TTRPermissionConfiguration.PrimaryButton, &protocol conformance descriptor for TTRPermissionConfiguration.PrimaryButton);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v4 + 8);
      v19(v17, v3);
      v19(v8, v3);
      sub_1000079B4(v12, &qword_10076BE18, &qword_10062FFA0);
      if (v18)
      {
        return sub_1000079B4(a1, &qword_10076BE18, &qword_10062FFA0);
      }

      goto LABEL_7;
    }

    (*(v4 + 8))(v8, v3);
LABEL_6:
    sub_1000079B4(v12, &qword_100784190, &qword_1006404A8);
LABEL_7:
    sub_10046FE44(a1);
    return sub_1000079B4(a1, &qword_10076BE18, &qword_10062FFA0);
  }

  if (v15(&v12[v14], 1, v3) != 1)
  {
    goto LABEL_6;
  }

  sub_1000079B4(v12, &qword_10076BE18, &qword_10062FFA0);
  return sub_1000079B4(a1, &qword_10076BE18, &qword_10062FFA0);
}

uint64_t sub_10046FB8C(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for UIListContentConfiguration();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v19[-1] - v10;
  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v20.receiver = v2;
  v20.super_class = ObjectType;
  objc_msgSendSuper2(&v20, "_bridgedUpdateConfigurationUsingState:", isa);

  static UIListContentConfiguration.cell()();
  v13 = type metadata accessor for UICellConfigurationState();
  v19[3] = v13;
  v19[4] = &protocol witness table for UICellConfigurationState;
  v14 = sub_1000317B8(v19);
  (*(*(v13 - 8) + 16))(v14, a1, v13);
  UIListContentConfiguration.updated(for:)();
  v15 = *(v6 + 8);
  v15(v8, v5);
  sub_100004758(v19);
  v16 = [v2 contentView];
  UIView.applyLayoutMargins(from:)();

  return (v15)(v11, v5);
}

uint64_t sub_10046FE44(uint64_t a1)
{
  v3 = sub_100058000(&unk_100772600, &unk_1006348F0);
  __chkstk_darwin(v3 - 8);
  v22 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v22 - v6;
  v8 = sub_100058000(&qword_10076BE18, &qword_10062FFA0);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for TTRPermissionConfiguration.PrimaryButton();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionButtonCell_appliedConfiguration;
  swift_beginAccess();
  sub_10047053C(a1, v1 + v15);
  swift_endAccess();
  sub_10000794C(v1 + v15, v10, &qword_10076BE18, &qword_10062FFA0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v16 = &qword_10076BE18;
    v17 = &qword_10062FFA0;
    v18 = v10;
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v19 = sub_10046EEE4();
    UIButton.configuration.getter();
    v20 = type metadata accessor for UIButton.Configuration();
    if (!(*(*(v20 - 8) + 48))(v7, 1, v20))
    {
      TTRPermissionConfiguration.PrimaryButton.title.getter();
      UIButton.Configuration.title.setter();
      UIButton.configuration.setter();

      return (*(v12 + 8))(v14, v11);
    }

    sub_10000794C(v7, v22, &unk_100772600, &unk_1006348F0);
    UIButton.configuration.setter();

    (*(v12 + 8))(v14, v11);
    v18 = v7;
    v16 = &unk_100772600;
    v17 = &unk_1006348F0;
  }

  return sub_1000079B4(v18, v16, v17);
}

void sub_100470160()
{
  sub_10003B788(v0 + OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionButtonCell_delegate);
  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionButtonCell_appliedConfiguration, &qword_10076BE18, &qword_10062FFA0);
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionButtonCell____lazy_storage___primaryButton);
}

unint64_t sub_1004703EC@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &_s9Reminders37ContentConfigurationForContentBoxViewVN_0;
  result = sub_1004704E8();
  *(a1 + 32) = result;
  return result;
}

void (*sub_100470420(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 24) = &_s9Reminders37ContentConfigurationForContentBoxViewVN_0;
  *(v2 + 32) = sub_1004704E8();
  return sub_10009D584;
}

uint64_t sub_100470498(uint64_t a1)
{
  sub_10000B0D8(a1, v2);
  sub_100058000(&qword_10077A650, &qword_10063DD30);
  return swift_dynamicCast();
}

unint64_t sub_1004704E8()
{
  result = qword_100784188;
  if (!qword_100784188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784188);
  }

  return result;
}

uint64_t sub_10047053C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10076BE18, &qword_10062FFA0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id sub_1004705D0()
{
  _s9Reminders14ContentBoxViewCMa_0();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_100470A04(&qword_1007841A8, _s9Reminders14ContentBoxViewCMa_0, &unk_100640440);
  return v0;
}

uint64_t sub_100470648()
{
  v1 = v0;
  v2 = sub_100058000(&qword_10077A688, &unk_1006393D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = type metadata accessor for TTRPermissionConfiguration.Action();
  v20 = *(v5 - 8);
  __chkstk_darwin(v5);
  v19 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&qword_10076BE18, &qword_10062FFA0);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for TTRPermissionConfiguration.PrimaryButton();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionButtonCell_appliedConfiguration;
  swift_beginAccess();
  sub_10000794C(v1 + v14, v9, &qword_10076BE18, &qword_10062FFA0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000079B4(v9, &qword_10076BE18, &qword_10062FFA0);
  }

  (*(v11 + 32))(v13, v9, v10);
  TTRPermissionConfiguration.PrimaryButton.action.getter();
  v16 = v20;
  if ((*(v20 + 48))(v4, 1, v5) == 1)
  {
    (*(v11 + 8))(v13, v10);
    return sub_1000079B4(v4, &qword_10077A688, &unk_1006393D0);
  }

  else
  {
    v17 = v19;
    (*(v16 + 32))(v19, v4, v5);
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      sub_100470A04(&qword_1007841A0, type metadata accessor for TTRIAccountsListsInlinePermissionButtonCell, &unk_100640480);
      dispatch thunk of TTRInlinePermissionViewDelegate.inlinePermissionView(_:didRequestAction:)();
      swift_unknownObjectRelease();
    }

    (*(v16 + 8))(v17, v5);
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_100470A04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100470A4C(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100470B24(a1, result);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100470AA8()
{
  sub_10003B788(v0 + 16);
  sub_10003B788(v0 + 32);
  sub_10012EDC8(*(v0 + 48));
  swift_unknownObjectRelease();
  sub_100004758((v0 + 72));

  return swift_deallocClassInstance();
}

double sub_100470B24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMNavigationSpecifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v39[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v39[-v9];
  __chkstk_darwin(v11);
  v13 = &v39[-v12];
  if ((*(a1 + 48) - 1) <= 1)
  {
    v14 = sub_10009337C();
    v15 = sub_100093644(v14);

    if (v15)
    {
      v47 = a2;
      v16 = *(sub_100058000(&unk_100793000, &unk_10063BD90) + 48);
      *v13 = [v15 objectID];
      v17 = enum case for REMNavigationSpecifier.ListPathSpecifier.newReminder(_:);
      v18 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
      (*(*(v18 - 8) + 104))(&v13[v16], v17, v18);
      (*(v5 + 104))(v13, enum case for REMNavigationSpecifier.list(_:), v4);
      if (qword_100767210 != -1)
      {
        swift_once();
      }

      v46 = v15;
      v19 = type metadata accessor for Logger();
      sub_100003E30(v19, qword_10077FC40);
      v20 = *(v5 + 16);
      v20(v10, v13, v4);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v41 = v21;
        v24 = v23;
        v42 = swift_slowAlloc();
        v48 = v42;
        *v24 = 136446210;
        v20(v7, v10, v4);
        v25 = String.init<A>(describing:)();
        v43 = v20;
        v26 = v25;
        v40 = v22;
        v28 = v27;
        v29 = *(v5 + 8);
        v44 = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v45 = v29;
        v29(v10, v4);
        v30 = sub_100004060(v26, v28, &v48);

        v31 = v24;
        *(v24 + 4) = v30;
        v20 = v43;
        v32 = v41;
        _os_log_impl(&_mh_execute_header, v41, v40, "Performing post-welcome navigation {navigationSpecifier: %{public}s}", v31, 0xCu);
        sub_100004758(v42);
      }

      else
      {

        v33 = *(v5 + 8);
        v44 = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v45 = v33;
        v33(v10, v4);
      }

      v34 = swift_allocObject();
      swift_weakInit();
      v20(v7, v13, v4);
      v35 = (*(v5 + 80) + 24) & ~*(v5 + 80);
      v36 = swift_allocObject();
      *(v36 + 16) = v34;
      (*(v5 + 32))(v36 + v35, v7, v4);
      *(v36 + ((v6 + v35 + 7) & 0xFFFFFFFFFFFFFFF8)) = 0;
      v37 = swift_allocObject();
      *(v37 + 16) = sub_100371CC8;
      *(v37 + 24) = v36;

      TTRStartupItemQueue.enqueueItem<A, B>(startupContext:promise:)();

      v45(v13, v4);
    }
  }

  InitiallyEmptyCurrentValueSubject.send(_:)();

  return result;
}