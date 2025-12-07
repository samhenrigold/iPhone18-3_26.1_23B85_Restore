char *sub_100583C90(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
    v13 = *(sub_100058000(&unk_1007759C0, &qword_100633140) + 48);
    v14 = type metadata accessor for TTRSection();
    (*(*(v14 - 8) + 16))(&a1[v13], &a2[v13], v14);
    goto LABEL_7;
  }

  if (!EnumCaseMultiPayload)
  {
    v8 = *a2;
    *a1 = *a2;
    v9 = v8;
    v10 = *(sub_100058000(&qword_100770AB8, &unk_100646E60) + 48);
    v11 = type metadata accessor for TTRSection();
    (*(*(v11 - 8) + 16))(&a1[v10], &a2[v10], v11);
LABEL_7:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v16 = *(v6 + 64);

  return memcpy(a1, a2, v16);
}

uint64_t sub_100583E34(id *a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v4 = &unk_1007759C0;
    v5 = &qword_100633140;
  }

  else
  {
    if (result)
    {
      return result;
    }

    v4 = &qword_100770AB8;
    v5 = &unk_100646E60;
  }

  v6 = *(sub_100058000(v4, v5) + 48);
  v7 = type metadata accessor for TTRSection();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1 + v6, v7);
}

char *sub_100583EE8(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
    v11 = *(sub_100058000(&unk_1007759C0, &qword_100633140) + 48);
    v12 = type metadata accessor for TTRSection();
    (*(*(v12 - 8) + 16))(&a1[v11], &a2[v11], v12);
    goto LABEL_5;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = *a2;
    *a1 = *a2;
    v8 = v7;
    v9 = *(sub_100058000(&qword_100770AB8, &unk_100646E60) + 48);
    v10 = type metadata accessor for TTRSection();
    (*(*(v10 - 8) + 16))(&a1[v9], &a2[v9], v10);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v14 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v14);
}

char *sub_10058404C(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1005838CC(a1, type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary.ChangeSummaryType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
    v11 = *(sub_100058000(&unk_1007759C0, &qword_100633140) + 48);
    v12 = type metadata accessor for TTRSection();
    (*(*(v12 - 8) + 16))(&a1[v11], &a2[v11], v12);
    goto LABEL_6;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = *a2;
    *a1 = *a2;
    v8 = v7;
    v9 = *(sub_100058000(&qword_100770AB8, &unk_100646E60) + 48);
    v10 = type metadata accessor for TTRSection();
    (*(*(v10 - 8) + 16))(&a1[v9], &a2[v9], v10);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v14 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v14);
}

char *sub_1005841D4(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
    v9 = *(sub_100058000(&unk_1007759C0, &qword_100633140) + 48);
    v10 = type metadata accessor for TTRSection();
    (*(*(v10 - 8) + 32))(&a1[v9], &a2[v9], v10);
    goto LABEL_5;
  }

  if (!EnumCaseMultiPayload)
  {
    *a1 = *a2;
    v7 = *(sub_100058000(&qword_100770AB8, &unk_100646E60) + 48);
    v8 = type metadata accessor for TTRSection();
    (*(*(v8 - 8) + 32))(&a1[v7], &a2[v7], v8);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

char *sub_100584334(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1005838CC(a1, type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary.ChangeSummaryType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
    v9 = *(sub_100058000(&unk_1007759C0, &qword_100633140) + 48);
    v10 = type metadata accessor for TTRSection();
    (*(*(v10 - 8) + 32))(&a1[v9], &a2[v9], v10);
    goto LABEL_6;
  }

  if (!EnumCaseMultiPayload)
  {
    *a1 = *a2;
    v7 = *(sub_100058000(&qword_100770AB8, &unk_100646E60) + 48);
    v8 = type metadata accessor for TTRSection();
    (*(*(v8 - 8) + 32))(&a1[v7], &a2[v7], v8);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

uint64_t sub_1005844B8(uint64_t a1)
{
  result = type metadata accessor for TTRSection();
  if (v2 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    v5 = &v4;
    swift_getTupleTypeLayout2();
    v6 = &v3;
    v7 = &value witness table for Builtin.Int64 + 64;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

char *sub_100584588(char *a1, char **a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = &v9[(v5 + 16) & ~v5];

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 3:
      v14 = *a2;
      *a1 = *a2;
      v15 = v14;
      goto LABEL_9;
    case 2:
      v10 = *a2;
      v11 = a2[1];
      *a1 = v10;
      *(a1 + 1) = v11;
      v12 = v10;
      v13 = v11;
      goto LABEL_9;
    case 1:
      v8 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
      (*(*(v8 - 8) + 16))(a1, a2, v8);
LABEL_9:
      swift_storeEnumTagMultiPayload();
      return a1;
  }

  v17 = *(v6 + 64);

  return memcpy(a1, a2, v17);
}

void sub_1005846E4(uint64_t a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v6 = *a1;
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v4 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
        v5 = *(*(v4 - 8) + 8);

        v5(a1, v4);
      }

      return;
    }

    v6 = *(a1 + 8);
  }
}

void **sub_1005847A0(void **a1, void **a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 3:
      v12 = *a2;
      *a1 = *a2;
      v13 = v12;
      goto LABEL_7;
    case 2:
      v8 = *a2;
      v9 = a2[1];
      *a1 = v8;
      a1[1] = v9;
      v10 = v8;
      v11 = v9;
      goto LABEL_7;
    case 1:
      v7 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_7:
      swift_storeEnumTagMultiPayload();
      return a1;
  }

  v15 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v15);
}

void **sub_1005848BC(void **a1, void **a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1005838CC(a1, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 3:
      v12 = *a2;
      *a1 = *a2;
      v13 = v12;
      goto LABEL_8;
    case 2:
      v8 = *a2;
      *a1 = *a2;
      v9 = a2[1];
      a1[1] = v9;
      v10 = v8;
      v11 = v9;
      goto LABEL_8;
    case 1:
      v7 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_8:
      swift_storeEnumTagMultiPayload();
      return a1;
  }

  v15 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v15);
}

void *sub_100584A24(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
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

void *sub_100584AF4(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1005838CC(a1, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

uint64_t sub_100584BE8(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_100584E60(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(v3 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_dataModelSource + 8);
  ObjectType = swift_getObjectType();
  return a3(ObjectType, v5);
}

uint64_t sub_10058500C(__n128 a1)
{
  updated = type metadata accessor for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType();
  v2 = *(updated - 8);
  __chkstk_darwin(updated);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&qword_10076E0D0, &unk_100635D70);
  __chkstk_darwin(v5 - 8);
  v7 = &v10 - v6;
  v8 = sub_100058000(&unk_1007756F0, &unk_100631C00);
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  (*(v2 + 104))(v4, enum case for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType.reload(_:), updated);
  type metadata accessor for TTRRemindersListTreeViewModelUpdateContext();
  swift_allocObject();

  return TTRRemindersListTreeViewModelUpdateContext.init(currentTreeViewModel:itemToStartEditing:viewUpdateType:)();
}

void *sub_1005851B8(void *a1)
{
  v3 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_remReminderByObjectID;
  swift_beginAccess();
  v4 = *(v1 + v3);

  v5 = sub_10013F404(a1, v4);

  return v5;
}

uint64_t sub_100585248(void *a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = a1;
  (*(v7 + 104))(v10, *a4, v6, v8);

  v11 = a1;
  TTRRemindersListTreeViewModel.sectionItem(with:)();

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_100585454(uint64_t a1, int a2)
{
  v4 = sub_100058000(&qword_10076E0D0, &unk_100635D70);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-v5];
  v7 = sub_100058000(&unk_1007756F0, &unk_100631C00);
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v12 = a1;
  v10 = a1;
  sub_100581B80(v6, a2, sub_10059A6DC, v11, sub_10059A6E0, v9);
  return sub_1000079B4(v6, &qword_10076E0D0, &unk_100635D70);
}

uint64_t sub_100585628(uint64_t a1)
{

  v1 = TTRRemindersListTreeViewModel.editingSessionState(for:)();

  return v1;
}

uint64_t sub_100585760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[1] = a3;
  v4 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v4 - 8);
  v6 = v17 - v5;
  v7 = sub_100058000(&qword_10076FA28, &unk_1006327A0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v17 - v12;
  sub_10000794C(a2, v6, &qword_100772140, &qword_10062D9F0);
  type metadata accessor for TTRRemindersListViewModel.Item();
  sub_10059A488(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);

  TTRDerivedTreeLocation.init(parent:index:)();
  TTRRemindersListTreeViewModel.unadjustInsertionLocation(_:forMoving:)();

  v14 = *(v8 + 8);
  v14(v10, v7);
  v15 = TTRDerivedTreeLocation.index.getter();
  v14(v13, v7);
  return v15;
}

uint64_t sub_100585A78@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_sortingCapability;
  swift_beginAccess();
  v4 = type metadata accessor for TTRListType.SortingCapability();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_100585B48(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(v3 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_dataModelSource + 8);
  ObjectType = swift_getObjectType();
  return a3(ObjectType, v5);
}

double sub_100585CD0(Swift::Bool a1)
{

  TTRRemindersListCurrentTipCapability.requestSetCurrentTipHidden(_:)(a1);

  return result;
}

double sub_100585D20()
{

  TTRRemindersListCurrentTipCapability.requestDismissTip()();

  return result;
}

uint64_t sub_100585D6C(uint64_t a1)
{

  v1 = TTRRemindersListTreeViewModel.editingSessionState(for:)();

  if (!v1)
  {
    return 0;
  }

  v2 = TTRRemindersListEditingSessionState.reminderChangeItem.getter();

  return v2;
}

uint64_t (*sub_100585DF8())(uint64_t a1)
{
  v1 = v0;
  v2 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v2 - 8);
  v4 = &v31 - v3;
  v5 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v31 - v10;
  v12 = v1 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v12 + 8);
    v14 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_cachedListInfo;
    swift_beginAccess();
    sub_10000794C(v1 + v14, v4, &unk_10078A380, &qword_10062DE60);
    if ((*(v6 + 48))(v4, 1, v5) != 1)
    {
      v24 = *(v6 + 32);
      v25 = v24(v11, v4, v5);
      v26 = (*(*v1 + 1048))(v25);
      ObjectType = swift_getObjectType();
      (*(v13 + 24))(v33, ObjectType, v13);
      swift_unknownObjectRelease();
      sub_100005FD0(v33, v32);
      v24(v8, v11, v5);
      v28 = (*(v6 + 80) + 56) & ~*(v6 + 80);
      v29 = swift_allocObject();
      sub_100005FD0(v32, v29 + 16);
      v24((v29 + v28), v8, v5);
      v30 = (v29 + v28 + v7);
      *v30 = v26;
      v30[1] = HIBYTE(v26) & 1;
      return sub_10059A4D0;
    }

    swift_unknownObjectRelease();
    sub_1000079B4(v4, &unk_10078A380, &qword_10062DE60);
  }

  if (qword_100767468 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100003E30(v15, qword_10078D7D8);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *&v33[0] = v19;
    *v18 = 136315138;
    v20 = _typeName(_:qualified:)();
    v22 = sub_100004060(v20, v21, v33);

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s: failed to provide presentationTreeCreator", v18, 0xCu);
    sub_100004758(v19);
  }

  return 0;
}

uint64_t sub_100586238(char a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v122 = a7;
  v123 = a6;
  v136 = a5;
  v119 = a4;
  v120 = a3;
  v10 = sub_100058000(&qword_100770AA8, &unk_100633130);
  __chkstk_darwin(v10 - 8);
  v118 = &v110 - v11;
  v117 = type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary(0);
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v113 = &v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100058000(&qword_10076E0D0, &unk_100635D70);
  __chkstk_darwin(v13 - 8);
  v125 = &v110 - v14;
  updated = type metadata accessor for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType();
  v133 = *(updated - 8);
  __chkstk_darwin(updated);
  v124 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v140 = &v110 - v17;
  v18 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v18 - 8);
  v128 = &v110 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v115 = &v110 - v21;
  __chkstk_darwin(v22);
  v131 = &v110 - v23;
  __chkstk_darwin(v24);
  v141 = &v110 - v25;
  v130 = type metadata accessor for REMRemindersListDataView.Diff();
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v111 = &v110 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v135 = &v110 - v28;
  v145 = type metadata accessor for TTRRemindersListViewModel.Item();
  v132 = *(v145 - 8);
  __chkstk_darwin(v145);
  v114 = &v110 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v143 = &v110 - v31;
  v144 = type metadata accessor for TTRRemindersListTreeViewModel.RecurrentReminderReplacement();
  v112 = *(v144 - 8);
  __chkstk_darwin(v144);
  v142 = &v110 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for TTRRemindersListLayout();
  v134 = *(v33 - 8);
  __chkstk_darwin(v33);
  v35 = &v110 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v138 = &v110 - v37;
  v38 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v38 - 8);
  v40 = &v110 - v39;
  if (a1)
  {
    *(v7 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_receivedFirstUpdateFromDataModelSource) = 1;
  }

  sub_10056F540(a2);
  v41 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_cachedListInfo;
  swift_beginAccess();
  v42 = v7 + v41;
  v43 = v7;
  sub_10000794C(v42, v40, &unk_10078A380, &qword_10062DE60);
  v44 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v45 = (*(*(v44 - 8) + 48))(v40, 1, v44);
  sub_1000079B4(v40, &unk_10078A380, &qword_10062DE60);
  v46 = v133;
  if (v45 == 1)
  {
    if (qword_100767468 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_100003E30(v47, qword_10078D7D8);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "Unexpected: a non-nil ListInfo should be set by the time the tree is updated.", v50, 2u);
    }
  }

  swift_getObjectType();
  if (dispatch thunk of TTRRemindersListDataModelSourceBaseType.layoutContext.getter())
  {
    swift_getObjectType();
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();
    (*(v134 + 32))(v138, v35, v33);
  }

  else
  {
    (*(v134 + 104))(v138, enum case for TTRRemindersListLayout.list(_:), v33);
  }

  v51 = v132;
  v52 = v131;
  v53 = v43 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v54 = *(v53 + 8);
    ObjectType = swift_getObjectType();
    (*(v54 + 40))(v138, 0, 0, ObjectType, v54);
    swift_unknownObjectRelease();
  }

  v121 = v53;
  v56 = &_swiftEmptySetSingleton;
  v147 = &_swiftEmptySetSingleton;
  v137 = (v43 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_nextDataModelUpdateOptions);
  v57 = *(v43 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_nextDataModelUpdateOptions + 2) == 1;
  v139 = v43;
  v126 = v33;
  if (v57)
  {
    v58 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_recurrentReminderReplacements;
    swift_beginAccess();
    v59 = *(v43 + v58);
    v60 = *(v59 + 16);
    if (v60)
    {
      v110 = v58;
      v61 = *(v112 + 16);
      v62 = v59 + ((*(v112 + 80) + 32) & ~*(v112 + 80));
      v63 = *(v112 + 72);
      v64 = (v112 + 8);
      v65 = (v51 + 8);
      v112 = v59;

      do
      {
        v66 = v142;
        v67 = v144;
        v61(v142, v62, v144);
        v68 = v143;
        TTRRemindersListTreeViewModel.RecurrentReminderReplacement.original.getter();
        (*v64)(v66, v67);
        v69 = TTRRemindersListViewModel.Item.reminderObjectID.getter();
        (*v65)(v68, v145);
        if (v69)
        {
          sub_10001DFB0(&v146, v69);
        }

        v62 += v63;
        --v60;
      }

      while (v60);

      v43 = v139;
      v58 = v110;
      v56 = v147;
      v46 = v133;
      v51 = v132;
      v52 = v131;
    }

    *(v43 + v58) = _swiftEmptyArrayStorage;

    v70 = v43;
    v71 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_reminderCompletionViewModelOverrides;
    swift_beginAccess();
    *(v70 + v71) = &_swiftEmptyDictionarySingleton;
  }

  if ((v56 & 0xC000000000000001) != 0)
  {
    __CocoaSet.count.getter();
  }

  v72 = v120();
  if (v137[1] == 1)
  {

    v74 = TTRRemindersListTreeViewModel.transferTemporaryItemsAndAuxiliaryData(to:)();

    sub_10057D710(v74);
    v56 = v147;
  }

  sub_10057AB60(v72, v73);
  v75 = REMRemindersListDataView.Diff.updatedReminderObjectIDs.getter();
  v76 = sub_10056F238(v56);
  sub_10059A2BC(v76, v75);

  if (_swiftEmptyArrayStorage >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_100403F5C(_swiftEmptyArrayStorage);
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_100403F5C(_swiftEmptyArrayStorage);
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_100403F5C(_swiftEmptyArrayStorage);
    }

    v46 = v133;
  }

  v77 = v145;
  REMRemindersListDataView.Diff.init(updatedReminderObjectIDs:insertedReminderObjectIDs:updatedListObjectIDs:updatedSectionObjectIDs:newReminderMembershipsViaAutomation:)();
  v78 = v141;
  (*(v51 + 56))(v141, 1, 1, v77);
  sub_10000794C(v122, v52, &qword_100772140, &qword_10062D9F0);
  v79 = *(v51 + 48);
  if (v79(v52, 1, v77) == 1)
  {
    sub_1000079B4(v52, &qword_100772140, &qword_10062D9F0);
  }

  else
  {
    v80 = v114;
    (*(v51 + 32))(v114, v52, v77);
    v81 = v115;
    TTRRemindersListTreeViewModel.uncommittedOrPlaceholderReminder(atTheEndOfSection:)();
    (*(v51 + 8))(v80, v77);
    sub_1000079B4(v141, &qword_100772140, &qword_10062D9F0);
    v82 = v81;
    v46 = v133;
    v78 = v141;
    sub_100016588(v82, v141, &qword_100772140, &qword_10062D9F0);
  }

  v83 = v128;
  if ((v123 & 1) != 0 || *v137 != 1)
  {
    v86 = &enum case for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType.reload(_:);
  }

  else
  {
    v84 = *(sub_100058000(&qword_10078E048, &qword_100646FF8) + 48);
    (*(v129 + 16))(v111, v135, v130);

    v85 = v140;
    v83 = v128;
    v78 = v141;
    TTRRemindersListTreeViewModelUpdateContext.TreeDiffGenerationParameters.init(originalTree:diff:useReloadRecurrentAnimation:)();
    v85[v84] = 1;
    v86 = &enum case for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType.incremental(_:);
  }

  v87 = v46;
  v88 = updated;
  (*(v46 + 104))(v140, *v86, updated);
  sub_10000794C(v78, v83, &qword_100772140, &qword_10062D9F0);
  v89 = 1;
  v90 = v145;
  v91 = v79(v83, 1, v145);
  v92 = sub_100058000(&unk_1007756F0, &unk_100631C00);
  v93 = v92;
  v57 = v91 == 1;
  v94 = v125;
  if (!v57)
  {
    v95 = *(v92 + 48);
    (*(v132 + 32))(v125, v83, v90);
    v96 = enum case for TTREditingStateOption.InputType.unspecified(_:);
    v97 = type metadata accessor for TTREditingStateOption.InputType();
    (*(*(v97 - 8) + 104))(&v94[v95], v96, v97);
    v89 = 0;
  }

  (*(*(v93 - 8) + 56))(v94, v89, 1, v93);

  (*(v87 + 16))(v124, v140, v88);
  type metadata accessor for TTRRemindersListTreeViewModelUpdateContext();
  swift_allocObject();

  v98 = TTRRemindersListTreeViewModelUpdateContext.init(currentTreeViewModel:itemToStartEditing:viewUpdateType:)();
  *(v139 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_tree) = v72;

  v99 = v121;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v100 = *(v99 + 8);
    v101 = swift_getObjectType();
    (*(v100 + 72))(v98, v101, v100);
    swift_unknownObjectRelease();
  }

  v102 = *(REMRemindersListDataView.Diff.newReminderMembershipsViaAutomation.getter() + 16);

  if (v102)
  {
    REMRemindersListDataView.Diff.newReminderMembershipsViaAutomation.getter();
    v103 = v118;
    sub_100587580(v118);

    if ((*(v116 + 48))(v103, 1, v117) == 1)
    {
      sub_1000079B4(v103, &qword_100770AA8, &unk_100633130);
    }

    else
    {
      v104 = v103;
      v105 = v113;
      sub_10059A3B0(v104, v113, type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v106 = *(v99 + 8);
        v107 = swift_getObjectType();
        (*(v106 + 136))(v105, v107, v106);
        swift_unknownObjectRelease();
      }

      sub_1005838CC(v105, type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary);
    }
  }

  sub_10057C1B0(0);

  (*(v87 + 8))(v140, v88);
  sub_1000079B4(v141, &qword_100772140, &qword_10062D9F0);
  (*(v129 + 8))(v135, v130);
  result = (*(v134 + 8))(v138, v126);
  v109 = v137;
  *v137 = 257;
  v109[2] = 0;
  return result;
}

uint64_t sub_1005873D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, _BYTE *, uint64_t, uint64_t (*)(), uint64_t), __n128 a5)
{
  type metadata accessor for TTRRemindersListTreeViewModel();
  sub_10000B0D8(a2, v14);
  v9 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_recurrentReminderReplacements;
  swift_beginAccess();
  v10 = *(a3 + v9);

  v11 = sub_100585DF8();
  return a4(a1, v14, v10, v11, v12);
}

BOOL sub_100587484(uint64_t a1, uint64_t a2)
{
  v2 = sub_100058000(&qword_100773318, &unk_100634EF0);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  TTRRemindersListTreeViewModel.insert(_:)();
  v5 = sub_100058000(&qword_100773320, &unk_100638D00);
  v6 = (*(*(v5 - 8) + 48))(v4, 1, v5) != 1;
  sub_1000079B4(v4, &qword_100773318, &unk_100634EF0);
  return v6;
}

uint64_t sub_100587580@<X0>(uint64_t a2@<X8>)
{
  v160 = a2;
  v2 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v2 - 8);
  v152 = &v142 - v3;
  v4 = sub_100058000(&unk_100775960, &unk_100634F40);
  __chkstk_darwin(v4 - 8);
  v6 = &v142 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v148 = &v142 - v8;
  v9 = type metadata accessor for TTRSection();
  v154 = *(v9 - 8);
  v155 = v9;
  __chkstk_darwin(v9);
  v146 = (&v142 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v147 = &v142 - v12;
  v158 = type metadata accessor for UUID();
  v13 = *(v158 - 8);
  __chkstk_darwin(v158);
  v15 = &v142 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v153 = &v142 - v17;
  __chkstk_darwin(v18);
  v20 = &v142 - v19;
  __chkstk_darwin(v21);
  v23 = &v142 - v22;
  __chkstk_darwin(v24);
  v159 = &v142 - v25;
  __chkstk_darwin(v26);
  v156 = &v142 - v27;
  v149 = type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary.ChangeSummaryType(0);
  __chkstk_darwin(v149);
  v151 = &v142 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v150 = (&v142 - v30);
  v31 = sub_100058000(&qword_10078E050, &qword_100647000);
  __chkstk_darwin(v31 - 8);
  v33 = &v142 - v32;
  v34 = type metadata accessor for REMRemindersListDataView.AutoCategorizationMessage();
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v37 = (&v142 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v38);
  v40 = &v142 - v39;
  v42 = v41;
  static REMRemindersListDataView.AutoCategorizationMessage.coalesceRecent(encodedMessageStrings:)();
  v43 = *(v35 + 48);
  v161 = v42;
  if (v43(v33, 1, v42) != 1)
  {
    v50 = v161;
    (*(v35 + 32))(v40, v33, v161);
    (*(v35 + 16))(v37, v40, v50);
    v51 = (*(v35 + 88))(v37, v50);
    if (v51 == enum case for REMRemindersListDataView.AutoCategorizationMessage.oneReminderToOneSection(_:))
    {
      v153 = v40;
      v145 = v35;
      (*(v35 + 96))(v37, v161);
      v146 = sub_100058000(&qword_10078E068, &unk_100647020);
      v52 = *(v146 + 12);
      v53 = v13[4];
      v54 = v156;
      v55 = v158;
      v53(v156, v37, v158);
      v53(v159, (v37 + v52), v55);
      v56 = v13[2];
      v56(v23, v54, v55);
      v57 = [objc_opt_self() cdEntityName];
      if (!v57)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v57 = String._bridgeToObjectiveC()();
      }

      v58 = objc_allocWithZone(REMObjectID);
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v143 = [v58 initWithUUID:isa entityName:v57];

      v60 = v13[1];
      v60(v23, v55);
      v56(v20, v159, v55);
      sub_100003540(0, &qword_10076E8E8, REMListSection_ptr);
      v61 = [swift_getObjCClassFromMetadata() cdEntityName];
      v62 = v55;
      if (!v61)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v61 = String._bridgeToObjectiveC()();
      }

      v63 = v37 + *(v146 + 16);
      v64 = objc_allocWithZone(REMObjectID);
      v65 = UUID._bridgeToObjectiveC()().super.isa;
      v66 = [v64 initWithUUID:v65 entityName:v61];

      v146 = v60;
      v60(v20, v55);
      v67 = v157;
      swift_getObjectType();
      v68 = v143;
      v69 = dispatch thunk of TTRRemindersListDataModelSourceBaseType.reminder(with:)();
      if (!v69)
      {
        goto LABEL_29;
      }

      v70 = v69;
      v71 = (*(*v67 + 424))();
      v144 = v63;
      if (v71)
      {
        v72 = v71;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v73 = *(v72 + 64);
          ObjectType = swift_getObjectType();
          (*(v73 + 16))(ObjectType, v73);
          swift_unknownObjectRelease();
          v75 = v66;
          v76 = v148;
          TTRSection.init(with:store:)();
          swift_unknownObjectRelease();
          v78 = v154;
          v77 = v155;
          if ((*(v154 + 48))(v76, 1, v155) == 1)
          {

            v62 = v158;
LABEL_28:
            sub_1000079B4(v76, &unk_100775960, &unk_100634F40);
            v63 = v144;
LABEL_29:
            if (qword_100767468 != -1)
            {
              swift_once();
            }

            v106 = type metadata accessor for Logger();
            sub_100003E30(v106, qword_10078D7D8);
            v107 = v66;
            v108 = v68;
            v109 = Logger.logObject.getter();
            v110 = static os_log_type_t.error.getter();

            v111 = os_log_type_enabled(v109, v110);
            v112 = v159;
            v113 = v146;
            if (v111)
            {
              v114 = swift_slowAlloc();
              v115 = swift_slowAlloc();
              *v114 = 138412546;
              *(v114 + 4) = v108;
              *(v114 + 12) = 2112;
              *(v114 + 14) = v107;
              *v115 = v108;
              v115[1] = v107;
              v116 = v107;
              v117 = v108;
              _os_log_impl(&_mh_execute_header, v109, v110, "summarizeAutoCategorizationMessages: could not get reminder or section {reminderObjectID: %@, sectionObjectID: %@}", v114, 0x16u);
              sub_100058000(&unk_10076DF80, &qword_10062F730);
              swift_arrayDestroy();
              v62 = v158;
            }

            v113(v112, v62);
            v113(v156, v62);
            (*(v145 + 8))(v153, v161);
LABEL_47:
            v140 = type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary(0);
            (*(*(v140 - 8) + 56))(v160, 1, 1, v140);
            v141 = type metadata accessor for Date();
            return (*(*(v141 - 8) + 8))(v63, v141);
          }

          v118 = v158;
          v119 = v146;
          v146(v159, v158);
          v119(v156, v118);
          v120 = *(v78 + 32);
          v121 = v147;
          v120(v147, v76, v77);
          v122 = *(sub_100058000(&qword_100770AB8, &unk_100646E60) + 48);
          v101 = v150;
          *v150 = v70;
          v120((v101 + v122), v121, v77);
          v102 = v152;
          v40 = v153;
          v35 = v145;
          goto LABEL_35;
        }

        swift_unknownObjectRelease();
      }

      v76 = v148;
      (*(v154 + 56))(v148, 1, 1, v155);
      goto LABEL_28;
    }

    if (v51 != enum case for REMRemindersListDataView.AutoCategorizationMessage.manyRemindersToOneSection(_:))
    {
      if (v51 != enum case for REMRemindersListDataView.AutoCategorizationMessage.manyRemindersToManySections(_:))
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }

      (*(v35 + 96))(v37, v161);
      v103 = *v37;
      v104 = v37 + *(sub_100058000(&qword_10078E058, &qword_100647008) + 48);
      v101 = v150;
      v105 = v151;
      *v150 = v103;
      v102 = v152;
      v67 = v157;
      goto LABEL_36;
    }

    v145 = v35;
    (*(v35 + 96))(v37, v161);
    v159 = *v37;
    v79 = sub_100058000(&qword_10078E060, &unk_100647010);
    v80 = v13;
    v81 = v153;
    v82 = v158;
    (v13[4])(v153, v37 + *(v79 + 48), v158);
    (v13[2])(v15, v81, v82);
    sub_100003540(0, &qword_10076E8E8, REMListSection_ptr);
    v83 = [swift_getObjCClassFromMetadata() cdEntityName];
    if (!v83)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v83 = String._bridgeToObjectiveC()();
      v80 = v13;
    }

    v84 = v37 + *(v79 + 64);
    v85 = objc_allocWithZone(REMObjectID);
    v86 = UUID._bridgeToObjectiveC()().super.isa;
    v87 = [v85 initWithUUID:v86 entityName:v83];

    v88 = v80[1];
    v89 = v88(v15, v82);
    v90 = (*(*v157 + 424))(v89);
    v144 = v84;
    if (v90)
    {
      v91 = v90;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v92 = v40;
        v93 = *(v91 + 64);
        v94 = swift_getObjectType();
        (*(v93 + 16))(v94, v93);
        swift_unknownObjectRelease();
        v95 = v87;
        v40 = v92;
        v82 = v158;
        TTRSection.init(with:store:)();
        swift_unknownObjectRelease();
        v97 = v154;
        v96 = v155;
        if ((*(v154 + 48))(v6, 1, v155) != 1)
        {
          v88(v153, v82);

          v98 = *(v97 + 32);
          v99 = v146;
          v98(v146, v6, v96);
          v100 = *(sub_100058000(&unk_1007759C0, &qword_100633140) + 48);
          v101 = v150;
          *v150 = v159;
          v98((v101 + v100), v99, v96);
          v35 = v145;
          v102 = v152;
          v67 = v157;
LABEL_35:
          v105 = v151;
          v104 = v144;
LABEL_36:
          swift_storeEnumTagMultiPayload();
          v123 = type metadata accessor for Date();
          (*(*(v123 - 8) + 8))(v104, v123);
          sub_10059A648(v101, v105, type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary.ChangeSummaryType);
          v124 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_cachedListInfo;
          swift_beginAccess();
          sub_10000794C(v67 + v124, v102, &unk_10078A380, &qword_10062DE60);
          v125 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
          v126 = *(v125 - 8);
          if ((*(v126 + 48))(v102, 1, v125) == 1)
          {
            sub_1005838CC(v101, type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary.ChangeSummaryType);
            (*(v35 + 8))(v40, v161);
            sub_1000079B4(v102, &unk_10078A380, &qword_10062DE60);
            v127 = 0;
          }

          else
          {
            v127 = TTRRemindersListViewModel.ListInfo.shouldCategorizeGroceryItems.getter();
            sub_1005838CC(v101, type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary.ChangeSummaryType);
            (*(v35 + 8))(v40, v161);
            (*(v126 + 8))(v102, v125);
          }

          v128 = v160;
          sub_10059A3B0(v105, v160, type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary.ChangeSummaryType);
          v129 = type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary(0);
          *(v128 + *(v129 + 20)) = v127 & 1;
          return (*(*(v129 - 8) + 56))(v128, 0, 1, v129);
        }

LABEL_42:
        sub_1000079B4(v6, &unk_100775960, &unk_100634F40);
        v130 = v145;
        if (qword_100767468 != -1)
        {
          swift_once();
        }

        v131 = type metadata accessor for Logger();
        sub_100003E30(v131, qword_10078D7D8);
        v132 = v87;
        v133 = Logger.logObject.getter();
        v134 = static os_log_type_t.error.getter();

        v135 = os_log_type_enabled(v133, v134);
        v63 = v144;
        if (v135)
        {
          v136 = swift_slowAlloc();
          v137 = v40;
          v138 = swift_slowAlloc();
          *v136 = 138412290;
          *(v136 + 4) = v132;
          *v138 = v132;
          v139 = v132;
          _os_log_impl(&_mh_execute_header, v133, v134, "summarizeAutoCategorizationMessages: could not get section {sectionObjectID: %@}", v136, 0xCu);
          sub_1000079B4(v138, &unk_10076DF80, &qword_10062F730);
          v40 = v137;
          v82 = v158;

          v130 = v145;
        }

        v88(v153, v82);
        (*(v130 + 8))(v40, v161);
        goto LABEL_47;
      }

      swift_unknownObjectRelease();
    }

    (*(v154 + 56))(v6, 1, 1, v155);
    goto LABEL_42;
  }

  sub_1000079B4(v33, &qword_10078E050, &qword_100647000);
  if (qword_100767468 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  sub_100003E30(v44, qword_10078D7D8);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&_mh_execute_header, v45, v46, "summarizeAutoCategorizationMessages: error coalescing encoded AutoCategorization message strings", v47, 2u);
  }

  v48 = type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary(0);
  return (*(*(v48 - 8) + 56))(v160, 1, 1, v48);
}

uint64_t sub_100588848()
{
  v1 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - v2;
  v4 = type metadata accessor for REMRemindersListDataView.Diff();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  if (_swiftEmptyArrayStorage >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
    swift_retain_n();
    if (v14)
    {
      sub_100403F5C(_swiftEmptyArrayStorage);
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_100403F5C(_swiftEmptyArrayStorage);
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_100403F5C(_swiftEmptyArrayStorage);
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_100403F5C(_swiftEmptyArrayStorage);
    }
  }

  else
  {
    swift_retain_n();
  }

  REMRemindersListDataView.Diff.init(updatedReminderObjectIDs:insertedReminderObjectIDs:updatedListObjectIDs:updatedSectionObjectIDs:newReminderMembershipsViaAutomation:)();
  v12 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v12 - 8) + 56))(v3, 1, 1, v12);

  sub_10059B024(0, v10, v7, 0, v3, v0, v0);

  sub_1000079B4(v3, &qword_100772140, &qword_10062D9F0);
  (*(v5 + 8))(v7, v4);
  sub_1000079B4(v10, &unk_10078A380, &qword_10062DE60);
}

uint64_t sub_100588BAC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v33 = a4;
  v34 = a5;
  v32 = a3;
  v30[1] = a1;
  v6 = sub_100058000(&qword_100773318, &unk_100634EF0);
  __chkstk_darwin(v6 - 8);
  v8 = v30 - v7;
  v9 = type metadata accessor for TTRRemindersListUncommittedReminder();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 16);
  if (v14)
  {
    v35 = 0;
    v17 = *(v10 + 16);
    v16 = v10 + 16;
    v15 = v17;
    v18 = a2 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v19 = (v16 - 8);
    v36 = *(v16 + 56);
    v31 = v9;
    v17(v13, v18, v9, v11);
    while (1)
    {
      TTRRemindersListTreeViewModel.insert(_:)();
      v21 = sub_100058000(&qword_100773320, &unk_100638D00);
      v22 = (*(*(v21 - 8) + 48))(v8, 1, v21);
      sub_1000079B4(v8, &qword_100773318, &unk_100634EF0);
      if (v22 == 1)
      {
        v23 = v15;
        v24 = v16;
        if (qword_100767468 != -1)
        {
          swift_once();
        }

        v25 = type metadata accessor for Logger();
        sub_100003E30(v25, qword_10078D7D8);
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&_mh_execute_header, v26, v27, "Failed to insert uncommittedReminder", v28, 2u);
        }

        v16 = v24;
        v15 = v23;
        v9 = v31;
      }

      else
      {
        sub_100588EB0(v13, v33);
        v35 = 1;
      }

      (*v19)(v13, v9);
      v18 += v36;
      if (!--v14)
      {
        break;
      }

      v15(v13, v18, v9, v20);
    }
  }

  else
  {
    v35 = 0;
  }

  return v35 & 1;
}

void sub_100588EB0(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (TTRRemindersListUncommittedReminder.editingSessionState.getter())
  {
    v8 = TTRRemindersListEditingSessionState.reminderChangeItem.getter();

    TTRRemindersListUncommittedReminder.item.getter();
    type metadata accessor for TTRReminderEditor();
    sub_10059A488(&unk_1007756A0, &type metadata accessor for TTRReminderEditor, &protocol conformance descriptor for TTRReminderEditor);
    v9 = v8;
    TTRUndoableEditing.init(changeItem:undoManager:)();
    v10 = v16;
    (*(*v2 + 752))(v7, v16);
    if (a2)
    {
      a2(v10);

      (*(v5 + 8))(v7, v4);
    }

    else
    {
      (*(v5 + 8))(v7, v4);
    }
  }

  else
  {
    if (qword_100767468 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100003E30(v11, qword_10078D7D8);
    v15 = Logger.logObject.getter();
    v12 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v15, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v15, v12, "Missing reminderChangeItem for presetUncommittedReminder", v13, 2u);
    }

    v14 = v15;
  }
}

uint64_t sub_100589194(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v9 = __chkstk_darwin(v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  if (!v12)
  {
    return 0;
  }

  v14 = *(v8 + 16);
  v13 = v8 + 16;
  v25 = v14;
  v15 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
  v23 = *(v13 + 56);
  v16 = (v4 + 88);
  v24 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:);
  v17 = (v13 - 8);
  v18 = (v4 + 8);
  while (1)
  {
    v19 = v13;
    v25(v11, v15, v7, v9);
    TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
    v20 = (*v16)(v6, v3);
    if (v20 != v24)
    {
      break;
    }

    (*v17)(v11, v7);
    (*v18)(v6, v3);
    v15 += v23;
    --v12;
    v13 = v19;
    if (!v12)
    {
      return 0;
    }
  }

  if (v20 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:) || v20 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:))
  {
    (*v17)(v11, v7);
    (*v18)(v6, v3);
    return 1;
  }

  if (v20 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
  {
    (*v17)(v11, v7);
    return 1;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void sub_100589444(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListDataModelSourceListReloadReason();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for TTRRemindersListDataModelSourceListReloadReason.sourceIdentityChanged(_:))
  {
    v10 = v2 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = *(v10 + 8);
      ObjectType = swift_getObjectType();
      LOBYTE(v11) = (*(v11 + 16))(ObjectType, v11);
      swift_unknownObjectRelease();
      v13 = 1;
      if (v11)
      {
        v14 = v2 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_nextDataModelUpdateOptions;
        *v14 = 0;
        *(v14 + 2) = 1;
        *(v2 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_receivedFirstUpdateFromDataModelSource) = 0;
        sub_100588848();
      }

      v15 = 0;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (v9 == enum case for TTRRemindersListDataModelSourceListReloadReason.showCompletedChanged(_:))
  {
LABEL_7:
    v15 = 0;
LABEL_8:
    v13 = 1;
LABEL_9:
    v16 = (v2 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_nextDataModelUpdateOptions);
    *v16 = v15;
    v16[1] = v15;
    v16[2] = v13;
    TTRModuleState.modelWillUnload()();
    return;
  }

  if (v9 != enum case for TTRRemindersListDataModelSourceListReloadReason.showCompletedAllowlistInserted(_:))
  {
    if (v9 == enum case for TTRRemindersListDataModelSourceListReloadReason.showCompletedAllowlistCleared(_:))
    {
      v15 = 1;
      goto LABEL_8;
    }

    if (v9 != enum case for TTRRemindersListDataModelSourceListReloadReason.currentLocationChange(_:) && v9 != enum case for TTRRemindersListDataModelSourceListReloadReason.groupedStateChanged(_:))
    {
      if (v9 == enum case for TTRRemindersListDataModelSourceListReloadReason.searchTermChanged(_:))
      {
        goto LABEL_21;
      }

      if (v9 != enum case for TTRRemindersListDataModelSourceListReloadReason.sortingStyleChanged(_:))
      {
        if (v9 == enum case for TTRRemindersListDataModelSourceListReloadReason.hashtagLabelsChanged(_:) || v9 == enum case for TTRRemindersListDataModelSourceListReloadReason.hideEmptySectionsChanged(_:))
        {
          goto LABEL_7;
        }

        if (v9 != enum case for TTRRemindersListDataModelSourceListReloadReason.initial(_:))
        {
          _diagnoseUnexpectedEnumCase<A>(type:)();
          __break(1u);
          return;
        }

LABEL_21:
        v15 = 0;
        v13 = 0;
        goto LABEL_9;
      }
    }

    v13 = 0;
    v15 = 1;
    goto LABEL_9;
  }
}

void sub_1005896D4(int a1)
{
  v2 = v1;
  v36 = a1;
  v3 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v3 - 8);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v31 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v37 = *(v9 - 8);
  __chkstk_darwin(v9);
  v35 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRRemindersListLayout();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  if (dispatch thunk of TTRRemindersListDataModelSourceBaseType.layoutContext.getter())
  {
    v34 = v9;
    v15 = v1 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v33 = v5;
      v16 = *(v15 + 8);
      ObjectType = swift_getObjectType();
      swift_getObjectType();
      dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
      v17 = *(v16 + 40);
      v18 = v16;
      v5 = v33;
      v17(v14, v36 & 1, 1, ObjectType, v18);
      swift_unknownObjectRelease();
      (*(v12 + 8))(v14, v11);
    }

    v19 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_cachedListInfo;
    swift_beginAccess();
    sub_10000794C(v2 + v19, v8, &unk_10078A380, &qword_10062DE60);
    v20 = v37;
    v21 = v34;
    if ((v37)[6](v8, 1, v34) == 1)
    {
      sub_1000079B4(v8, &unk_10078A380, &qword_10062DE60);
    }

    else
    {
      v29 = v35;
      (v20)[4](v35, v8, v21);
      (v20)[2](v5, v29, v21);
      (v20[7])(v5, 0, 1, v21);
      sub_10056F540(v5);
      sub_1000079B4(v5, &unk_10078A380, &qword_10062DE60);
      (v20[1])(v29, v21);
    }

    sub_1005820E8(0);
    sub_10057C1B0(1);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_100767468 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100003E30(v22, qword_10078D7D8);

    v37 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v38[0] = v25;
      *v24 = 136315138;
      v26 = _typeName(_:qualified:)();
      v28 = sub_100004060(v26, v27, v38);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v37, v23, "%s: missing layoutContext", v24, 0xCu);
      sub_100004758(v25);
    }

    else
    {
      v30 = v37;
    }
  }
}

uint64_t sub_100589C0C()
{
  v1 = v0 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v2 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 8))(ObjectType, v2);
  swift_unknownObjectRelease();
  return v4;
}

void sub_100589CBC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100058000(&qword_10076E0D0, &unk_100635D70);
  __chkstk_darwin(v4 - 8);
  v6 = &v50 - v5;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item.SectionCasesItem();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v60 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRRemindersListViewModel.Item();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v55 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v50 - v14;
  if (qword_100767468 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = sub_100003E30(v16, qword_10078D7D8);
  v18 = *(v11 + 16);
  v59 = a1;
  v56 = v18;
  v57 = v11 + 16;
  v18(v15, a1, v10);
  v54 = v17;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  v21 = os_log_type_enabled(v19, v20);
  v58 = v11;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v53 = v7;
    v23 = v22;
    v51 = swift_slowAlloc();
    v52 = v2;
    v61 = v51;
    *v23 = 136315138;
    sub_10059A488(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
    v24 = TTRTreeStorageItem.treeItemDescription.getter();
    v25 = v8;
    v26 = v6;
    v28 = v27;
    v29 = *(v11 + 8);
    v29(v15, v10);
    v30 = sub_100004060(v24, v28, &v61);
    v6 = v26;
    v8 = v25;

    *(v23 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v19, v20, "Discard uncommittedSection {item: %s}", v23, 0xCu);
    sub_100004758(v51);

    v7 = v53;
  }

  else
  {

    v29 = *(v11 + 8);
    v29(v15, v10);
  }

  v31 = v59;
  v32 = v60;
  TTRRemindersListViewModel.Item.sectionCasesOnly.getter();
  v33 = (*(v8 + 88))(v32, v7);
  if (v33 == enum case for TTRRemindersListViewModel.Item.SectionCasesItem.section(_:))
  {
    sub_100058000(&qword_100772150, &unk_100635D00);
    v34 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_10062D400;
    v56(v35 + v34, v31, v10);
    v36 = sub_100058000(&unk_1007756F0, &unk_100631C00);
    v37 = (*(*(v36 - 8) + 56))(v6, 1, 1, v36);
    __chkstk_darwin(v37);
    *(&v50 - 2) = v35;
    __chkstk_darwin(v38);
    *(&v50 - 2) = v35;
    sub_100581B80(v6, 1, sub_10059F0D0, v39, sub_10059F0CC, (&v50 - 4));

    sub_1000079B4(v6, &qword_10076E0D0, &unk_100635D70);
    (*(v8 + 8))(v32, v7);
  }

  else if (v33 == enum case for TTRRemindersListViewModel.Item.SectionCasesItem.unknown(_:))
  {
    v40 = v55;
    v56(v55, v31, v10);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = v29;
      v45 = swift_slowAlloc();
      v61 = v45;
      *v43 = 136315138;
      sub_10059A488(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
      v46 = TTRTreeStorageItem.treeItemDescription.getter();
      v48 = v47;
      v44(v40, v10);
      v49 = sub_100004060(v46, v48, &v61);

      *(v43 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v41, v42, "Discard uncommittedSection invalid item type {item: %s}", v43, 0xCu);
      sub_100004758(v45);
    }

    else
    {

      v29(v40, v10);
    }
  }

  else
  {
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }
}

void sub_10058A394(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v67 = a5;
  v62 = a4;
  v66 = a3;
  v61 = a1;
  v7 = type metadata accessor for TTRRemindersListSectionCreationLocation();
  v8 = *(v7 - 8);
  v74 = v7;
  v75 = v8;
  __chkstk_darwin(v7);
  v69 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v73 = &v61 - v11;
  v12 = sub_100058000(&qword_10076E0D0, &unk_100635D70);
  __chkstk_darwin(v12 - 8);
  v63 = &v61 - v13;
  v14 = type metadata accessor for TTRRemindersListViewModel.Item();
  v64 = *(v14 - 8);
  v65 = v14;
  __chkstk_darwin(v14);
  v68 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100058000(&qword_100773318, &unk_100634EF0);
  __chkstk_darwin(v16 - 8);
  v18 = &v61 - v17;
  v19 = sub_100058000(&qword_100773320, &unk_100638D00);
  v71 = *(v19 - 8);
  __chkstk_darwin(v19);
  v70 = &v61 - v20;
  v21 = sub_100058000(&qword_10078E0B8, &qword_100647098);
  __chkstk_darwin(v21 - 8);
  v23 = &v61 - v22;
  v24 = sub_100058000(&qword_10078E0C0, &unk_1006470A0);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v61 - v26;

  v72 = a2;
  TTRRemindersListTreeViewModel.resolve(_:)();

  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    v28 = &qword_10078E0B8;
    v29 = &qword_100647098;
    v30 = v23;
  }

  else
  {
    (*(v25 + 32))(v27, v23, v24);

    TTRRemindersListTreeViewModel.resolve(_:)();

    v31 = v71;
    if ((*(v71 + 48))(v18, 1, v19) != 1)
    {
      v45 = v5;
      v46 = *(v31 + 32);
      v75 = v19;
      v46(v70, v18, v19);
      v47 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
      v48 = v68;
      (*(*(v47 - 8) + 16))(v68, v61, v47);
      v49 = v64;
      v50 = v65;
      (*(v64 + 104))(v48, enum case for TTRRemindersListViewModel.Item.section(_:), v65);
      v51 = sub_100058000(&unk_1007756F0, &unk_100631C00);
      v52 = v51;
      if (v62)
      {
        v53 = *(v51 + 48);
        v54 = v63;
        (*(v49 + 16))(v63, v48, v50);
        v55 = enum case for TTREditingStateOption.InputType.unspecified(_:);
        v56 = type metadata accessor for TTREditingStateOption.InputType();
        v57 = v55;
        v48 = v68;
        (*(*(v56 - 8) + 104))(&v54[v53], v57, v56);
        v58 = 0;
      }

      else
      {
        v58 = 1;
        v54 = v63;
      }

      v59 = (*(*(v52 - 8) + 56))(v54, v58, 1, v52);
      __chkstk_darwin(v59);
      v60 = v70;
      *(&v61 - 4) = v48;
      *(&v61 - 3) = v60;
      *(&v61 - 2) = v66;
      *(&v61 - 1) = v45;
      sub_100581774(v54, v67 & 1, sub_10059C278, (&v61 - 6), v45);
      sub_1000079B4(v54, &qword_10076E0D0, &unk_100635D70);
      (*(v25 + 8))(v27, v24);
      (*(v49 + 8))(v48, v50);
      (*(v71 + 8))(v60, v75);
      return;
    }

    (*(v25 + 8))(v27, v24);
    v28 = &qword_100773318;
    v29 = &unk_100634EF0;
    v30 = v18;
  }

  sub_1000079B4(v30, v28, v29);
  v32 = v75;
  v33 = v73;
  if (qword_100767468 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_100003E30(v34, qword_10078D7D8);
  v35 = *(v32 + 16);
  v36 = v74;
  v35(v33, v72, v74);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v76 = v40;
    *v39 = 136315138;
    v35(v69, v33, v36);
    v41 = String.init<A>(describing:)();
    v43 = v42;
    (*(v32 + 8))(v33, v36);
    v44 = sub_100004060(v41, v43, &v76);

    *(v39 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v37, v38, "Cannot resolve SectionCreationLocation {location: %s}", v39, 0xCu);
    sub_100004758(v40);
  }

  else
  {

    (*(v32 + 8))(v33, v36);
  }
}

uint64_t sub_10058ABC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v22 - v7;
  v9 = sub_100058000(&qword_100773320, &unk_100638D00);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - v11;
  TTRRemindersListTreeViewModel.insertNewItem(_:at:)();
  v13 = type metadata accessor for TTRRemindersListViewModel.Item();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v8, a2, v13);
  (*(v14 + 56))(v8, 0, 1, v13);
  sub_10059A488(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
  TTRBaseTreeLocation.init(parent:index:)();
  v15 = TTRRemindersListTreeViewModel.move(_:to:)();
  (*(v10 + 8))(v12, v9);
  if (v15)
  {
    sub_10057AB60(a1, v16);
  }

  else
  {
    if (qword_100767468 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100003E30(v17, qword_10078D7D8);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to move items to editable section in tree view model", v20, 2u);
    }
  }

  return v15 & 1;
}

uint64_t sub_10058AEF4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_cachedListInfo;
  swift_beginAccess();
  return sub_10000794C(v1 + v3, a1, &unk_10078A380, &qword_10062DE60);
}

uint64_t sub_10058AFC0(uint64_t a1)
{
  result = sub_10059A488(&qword_10078E040, type metadata accessor for TTRRemindersListViewModelSource, &unk_100646FA0);
  *(a1 + 8) = result;
  return result;
}

void sub_10058B018(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRSectionID();
  v56 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v55 = &v45 - v8;
  v9 = sub_100058000(&qword_10078E3F0, &unk_1006472F0);
  __chkstk_darwin(v9 - 8);
  v13 = __chkstk_darwin(v10);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v50 = (&v45 - v11);
    v51 = v12;
    v49 = v6;
    v14 = 0;
    v47 = a1;
    v15 = *(a1 + 64);
    v46 = a1 + 64;
    v16 = 1 << *(a1 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v52 = v56 + 16;
    v53 = (v56 + 32);
    v48 = (v56 + 8);
    while (1)
    {
      v20 = v51;
      if (!v18)
      {
        break;
      }

      v54 = (v18 - 1) & v18;
      v21 = __clz(__rbit64(v18)) | (v14 << 6);
LABEL_16:
      v26 = *(*(v47 + 48) + 8 * v21);
      v28 = v55;
      v27 = v56;
      (*(v56 + 16))(v55, *(v47 + 56) + *(v56 + 72) * v21, v4, v13);
      v29 = sub_100058000(&qword_1007758D8, &qword_100635F08);
      v30 = *(v29 + 48);
      *v20 = v26;
      (*(v27 + 32))(&v20[v30], v28, v4);
      (*(*(v29 - 8) + 56))(v20, 0, 1, v29);
      v31 = v26;
LABEL_17:
      v32 = v50;
      sub_100016588(v20, v50, &qword_10078E3F0, &unk_1006472F0);
      v33 = sub_100058000(&qword_1007758D8, &qword_100635F08);
      if ((*(*(v33 - 8) + 48))(v32, 1, v33) == 1)
      {
        return;
      }

      v34 = a2;
      v35 = *v32;
      v36 = v49;
      (*v53)(v49, v32 + *(v33 + 48), v4);
      v37 = sub_1002613B0(v35);
      v39 = v38;

      if ((v39 & 1) == 0)
      {
        (*v48)(v36, v4);
        return;
      }

      v41 = v55;
      v40 = v56;
      (*(v56 + 16))(v55, *(v34 + 56) + *(v56 + 72) * v37, v4);
      sub_10059A488(&qword_10076BE70, &type metadata accessor for TTRSectionID, &protocol conformance descriptor for TTRSectionID);
      v42 = dispatch thunk of static Equatable.== infix(_:_:)();
      v43 = *(v40 + 8);
      v43(v41, v4);
      v43(v36, v4);
      a2 = v34;
      v18 = v54;
      if ((v42 & 1) == 0)
      {
        return;
      }
    }

    if (v19 <= v14 + 1)
    {
      v22 = v14 + 1;
    }

    else
    {
      v22 = v19;
    }

    v23 = v22 - 1;
    while (1)
    {
      v24 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v24 >= v19)
      {
        v44 = sub_100058000(&qword_1007758D8, &qword_100635F08);
        (*(*(v44 - 8) + 56))(v20, 1, 1, v44);
        v54 = 0;
        v14 = v23;
        goto LABEL_17;
      }

      v25 = *(v46 + 8 * v24);
      ++v14;
      if (v25)
      {
        v54 = (v25 - 1) & v25;
        v21 = __clz(__rbit64(v25)) | (v24 << 6);
        v14 = v24;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10058B518(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = _CocoaArrayWrapper.subscript.getter();
    type metadata accessor for REMObjectID_Codable();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    _StringGuts.grow(_:)(85);
    v3 = "rget type\nExpected ";
    v4 = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  type metadata accessor for REMObjectID_Codable();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  _StringGuts.grow(_:)(82);
  v3 = "TTRITemplateList-Editor";
  v4 = 0xD000000000000043;
LABEL_11:
  v6 = v3 | 0x8000000000000000;
  String.append(_:)(*&v4);
  v7._object = 0x800000010068CD70;
  v7._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x756F662074756220;
  v8._object = 0xEB0000000020646ELL;
  String.append(_:)(v8);
  swift_getObjectType();
  v9._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v9);

  result = _assertionFailure(_:_:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10058B6B8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10059A488(&qword_10076FE50, &type metadata accessor for TTRRemindersListViewModel.ItemID, &protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_10059A488(&qword_10076BB60, &type metadata accessor for TTRRemindersListViewModel.ItemID, &protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100594B08(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_10058B9BC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for TTRSectionID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10059A488(&qword_1007758E0, &type metadata accessor for TTRSectionID, &protocol conformance descriptor for TTRSectionID);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_10059A488(&qword_10076BE70, &type metadata accessor for TTRSectionID, &protocol conformance descriptor for TTRSectionID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100594DD0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_10058BC9C(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = static Hasher._hash(seed:_:)();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_100595098(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_10058BD80(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for REMObjectID_Codable();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1005945B0(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_100591D28(v20 + 1, &qword_1007823F8, &qword_10063E198);
    }

    v18 = v8;
    sub_1005949E0(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for REMObjectID_Codable();
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1005951B8(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_10058BFA8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10059A488(&qword_100776308, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_10059A488(&qword_100768B68, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100595348(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_10058C288(unsigned __int8 *a1, uint64_t a2)
{
  v3 = a2;
  v4 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();

  v5 = Hasher._finalize()();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v24 = ~v6;
    while (1)
    {
      v8 = *(*(v4 + 48) + v7);
      if (v8 > 2)
      {
        if (v8 == 3)
        {
          v9 = 0x6F6E6E4177656976;
          v10 = 0xEE006E6F69746174;
        }

        else
        {
          if (v8 == 4)
          {
            v9 = 0x75736F6C63736964;
          }

          else
          {
            v9 = 0xD000000000000016;
          }

          if (v8 == 4)
          {
            v10 = 0xEF65746174536572;
          }

          else
          {
            v10 = 0x800000010066E7D0;
          }
        }
      }

      else if (*(*(v4 + 48) + v7))
      {
        if (v8 == 1)
        {
          v9 = 0x74786554656D616ELL;
        }

        else
        {
          v9 = 0x6F74617261706573;
        }

        if (v8 == 1)
        {
          v10 = 0xEC00000077656956;
        }

        else
        {
          v10 = 0xE900000000000072;
        }
      }

      else
      {
        v9 = 0xD000000000000018;
        v10 = 0x800000010066E780;
      }

      v11 = 0x75736F6C63736964;
      if (v3 != 4)
      {
        v11 = 0xD000000000000016;
      }

      v12 = 0xEF65746174536572;
      if (v3 != 4)
      {
        v12 = 0x800000010066E7D0;
      }

      if (v3 == 3)
      {
        v11 = 0x6F6E6E4177656976;
        v12 = 0xEE006E6F69746174;
      }

      v13 = 0xD000000000000018;
      v14 = 0x74786554656D616ELL;
      if (v3 != 1)
      {
        v14 = 0x6F74617261706573;
      }

      v15 = 0xEC00000077656956;
      if (v3 != 1)
      {
        v15 = 0xE900000000000072;
      }

      if (v3)
      {
        v13 = v14;
        v16 = v15;
      }

      else
      {
        v16 = 0x800000010066E780;
      }

      v17 = v3 <= 2u ? v13 : v11;
      v18 = v3 <= 2u ? v16 : v12;
      if (v9 == v17 && v10 == v18)
      {
        break;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v19)
      {
        goto LABEL_45;
      }

      v7 = (v7 + 1) & v24;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_43;
      }
    }

LABEL_45:
    result = 0;
    v3 = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_43:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v22;
    sub_100595610(v3, v7, isUniquelyReferenced_nonNull_native);
    *v22 = v25;
    result = 1;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_10058C648(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10059A488(&qword_1007727B0, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier, &protocol conformance descriptor for TTRAccountsListsViewModel.ItemIdentifier);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_10059A488(&qword_10076B7A0, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier, &protocol conformance descriptor for TTRAccountsListsViewModel.ItemIdentifier);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100595A28(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_10058C94C(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = __CocoaSet.member(for:)();

    if (v16)
    {

      sub_100058000(a5, a6);
      swift_dynamicCast();
      result = 0;
      *a1 = v27;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v24 = sub_1005947D4(v15, result + 1, a3, a4, a5, a6);
    v25 = *(v24 + 16);
    if (*(v24 + 24) <= v25)
    {
      sub_100592944(v25 + 1, a3, a4);
    }

    sub_100594A64(v26, v24);

    *v11 = v24;
    goto LABEL_16;
  }

  Hasher.init(_seed:)();
  Hasher._combine(_:)(*(a2 + 16));
  v18 = Hasher._finalize()();
  v19 = -1 << *(v14 + 32);
  v20 = v18 & ~v19;
  if (((*(v14 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v6;

    sub_100595CF0(v23, v20, isUniquelyReferenced_nonNull_native, a3, a4, a5, a6);
    *v6 = v28;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v21 = ~v19;
  while (*(*(*(v14 + 48) + 8 * v20) + 16) != *(a2 + 16))
  {
    v20 = (v20 + 1) & v21;
    if (((*(v14 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v14 + 48) + 8 * v20);

  return 0;
}

uint64_t sub_10058CBA4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_100595E78(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10058CCF4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10059A488(&qword_100769AC0, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_10059A488(&unk_100772710, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100595FF8(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_10058CFD4(unsigned __int8 *a1, uint64_t a2)
{
  v3 = a2;
  v5 = *v2;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != v3)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1005962C0(v3, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_10058D0CC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10059A488(&unk_10076BB20, &type metadata accessor for TTRRemindersListViewModel.SectionID, &protocol conformance descriptor for TTRRemindersListViewModel.SectionID);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_10059A488(&qword_100768B80, &type metadata accessor for TTRRemindersListViewModel.SectionID, &protocol conformance descriptor for TTRRemindersListViewModel.SectionID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100596420(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_10058D3AC(unsigned __int8 *a1, uint64_t a2)
{
  v3 = a2;
  v4 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();

  v5 = Hasher._finalize()();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  v30 = v4 + 56;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v29 = ~v6;
    v8 = 0xEF726F6C6F43646ELL;
    v9 = 0x756F72676B636162;
    while (1)
    {
      v10 = *(*(v4 + 48) + v7);
      if (v10 <= 1)
      {
        if (*(*(v4 + 48) + v7))
        {
          v11 = 0x6F74617261706573;
        }

        else
        {
          v11 = 0xD000000000000010;
        }

        if (*(*(v4 + 48) + v7))
        {
          v12 = 0xE900000000000072;
        }

        else
        {
          v12 = 0x800000010066E810;
        }
      }

      else if (v10 == 2)
      {
        v11 = 0xD00000000000001BLL;
        v12 = 0x800000010066E830;
      }

      else
      {
        if (v10 == 3)
        {
          v11 = v9;
        }

        else
        {
          v11 = 0xD000000000000014;
        }

        if (v10 == 3)
        {
          v12 = v8;
        }

        else
        {
          v12 = 0x800000010066E860;
        }
      }

      v13 = 0xD00000000000001BLL;
      v14 = 0xD000000000000014;
      if (v3 == 3)
      {
        v14 = v9;
        v15 = v8;
      }

      else
      {
        v15 = 0x800000010066E860;
      }

      if (v3 != 2)
      {
        v13 = v14;
      }

      v16 = 0x800000010066E830;
      if (v3 != 2)
      {
        v16 = v15;
      }

      v17 = v3 ? 0x6F74617261706573 : 0xD000000000000010;
      v18 = v3 ? 0xE900000000000072 : 0x800000010066E810;
      v19 = v3 <= 1u ? v17 : v13;
      v20 = v3 <= 1u ? v18 : v16;
      v21 = v4;
      if (v11 == v19 && v12 == v20)
      {
        break;
      }

      v22 = v9;
      v23 = v8;
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v24)
      {
        goto LABEL_43;
      }

      v7 = (v7 + 1) & v29;
      v4 = v21;
      v8 = v23;
      v9 = v22;
      if (((*(v30 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_41;
      }
    }

LABEL_43:
    result = 0;
    v3 = *(*(v21 + 48) + v7);
  }

  else
  {
LABEL_41:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v27;
    sub_1005966E8(v3, v7, isUniquelyReferenced_nonNull_native);
    *v27 = v31;
    result = 1;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_10058D6B4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10059A488(&qword_10076BB40, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_10059A488(&qword_10076BB48, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100596A48(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_10058D994(unsigned __int8 *a1, uint64_t a2)
{
  v3 = a2;
  v5 = *v2;
  Hasher.init(_seed:)();
  v18 = v2;
  v19 = a1;
  String.hash(into:)();

  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_21:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v18;
    sub_100596D10(v3, v8, isUniquelyReferenced_nonNull_native);
    *v18 = v20;
    result = 1;
    goto LABEL_24;
  }

  v9 = ~v7;
  while (!*(*(v5 + 48) + v8))
  {
    v11 = 0xE700000000000000;
    v10 = 0x736E6F74747562;
    v12 = v3;
    if (!v3)
    {
      goto LABEL_17;
    }

LABEL_8:
    if (v12 == 1)
    {
      v13 = 0x6F697463656C6573;
    }

    else
    {
      v13 = 0xD000000000000014;
    }

    if (v12 == 1)
    {
      v14 = 0xE90000000000006ELL;
    }

    else
    {
      v14 = 0x800000010066E890;
    }

    if (v10 == v13)
    {
      goto LABEL_18;
    }

LABEL_19:
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v15)
    {
      goto LABEL_23;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if (*(*(v5 + 48) + v8) == 1)
  {
    v10 = 0x6F697463656C6573;
    v11 = 0xE90000000000006ELL;
    v12 = v3;
    if (!v3)
    {
      goto LABEL_17;
    }

    goto LABEL_8;
  }

  v10 = 0xD000000000000014;
  v11 = 0x800000010066E890;
  v12 = v3;
  if (v3)
  {
    goto LABEL_8;
  }

LABEL_17:
  v14 = 0xE700000000000000;
  if (v10 != 0x736E6F74747562)
  {
    goto LABEL_19;
  }

LABEL_18:
  if (v11 != v14)
  {
    goto LABEL_19;
  }

LABEL_23:
  result = 0;
  v3 = *(*(v5 + 48) + v8);
LABEL_24:
  *v19 = v3;
  return result;
}

uint64_t sub_10058DBF8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for TTRListOrCustomSmartList();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10059A488(&qword_100786578, &type metadata accessor for TTRListOrCustomSmartList, &protocol conformance descriptor for TTRListOrCustomSmartList);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_10059A488(&qword_10078E0A8, &type metadata accessor for TTRListOrCustomSmartList, &protocol conformance descriptor for TTRListOrCustomSmartList);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100596FC4(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

void sub_10058DF28()
{
  v1 = v0;
  sub_100058000(&qword_10078E108, &qword_100647100);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_10058E068(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100058000(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 56 + 8 * v8)
    {
      memmove(v7, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        v21 = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_10058E1E4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100058000(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 56 + 8 * v8)
    {
      memmove(v7, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        *(*(v6 + 48) + 8 * (v16 | (v10 << 6))) = *(*(v4 + 48) + 8 * (v16 | (v10 << 6)));
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_10058E324()
{
  v1 = v0;
  sub_100058000(&qword_100782420, &unk_10063E1B0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_10058E50C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100058000(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 56 + 8 * v8)
    {
      memmove(v7, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_10058E63C(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  sub_100058000(a2, a3);
  v11 = *v3;
  v12 = static _SetStorage.copy(original:)();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    v14 = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || v14 >= v11 + 56 + 8 * v15)
    {
      memmove(v14, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    v29 = v8 + 16;
    while (v20)
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
      (*(v8 + 32))(*(v13 + 48) + v25, v10, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }
}

void sub_10058E874(uint64_t a1)
{
  v2 = v1;
  v34 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v3 = *(v34 - 8);
  __chkstk_darwin(v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100058000(&qword_10078C4E0, &qword_100646130);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_10059A488(&qword_10076FE50, &type metadata accessor for TTRRemindersListViewModel.ItemID, &protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }
}

void sub_10058EB90(uint64_t a1)
{
  v2 = v1;
  v34 = type metadata accessor for TTRSectionID();
  v3 = *(v34 - 8);
  __chkstk_darwin(v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100058000(&qword_10078E0F0, &unk_1006470D0);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_10059A488(&qword_1007758E0, &type metadata accessor for TTRSectionID, &protocol conformance descriptor for TTRSectionID);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }
}

void sub_10058EEAC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100058000(&qword_10078E108, &qword_100647100);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      v17 = static Hasher._hash(seed:_:)();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }
}

void sub_10058F09C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_100058000(a2, a3);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v28 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v7 + 40);
      v19 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      v20 = NSObject._rawHashValue(seed:)(v18);
      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v19;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v28;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v4 = v7;
  }
}

void sub_10058F2A8(uint64_t a1)
{
  v2 = v1;
  v34 = type metadata accessor for TTRRemindersListViewModel.Item();
  v3 = *(v34 - 8);
  __chkstk_darwin(v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100058000(&qword_10078E0A0, &qword_100647080);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_10059A488(&qword_100776308, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }
}

void sub_10058F5C4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100058000(&qword_10078E0E0, &qword_1006470C8);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      v12 = Hasher._finalize()();
      v13 = -1 << *(v5 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v11 + 8 * (v14 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        while (++v15 != v22 || (v21 & 1) == 0)
        {
          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v15);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v15 << 6);
            goto LABEL_8;
          }
        }

        goto LABEL_29;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v11 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v11 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_27;
      }

      v19 = *(v3 + 56 + 8 * v6);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v9 = (v19 - 1) & v19;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }
}

void sub_10058F8D8(uint64_t a1)
{
  v2 = v1;
  v34 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v3 = *(v34 - 8);
  __chkstk_darwin(v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100058000(&unk_10078C4F0, &unk_100646140);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_10059A488(&qword_1007727B0, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier, &protocol conformance descriptor for TTRAccountsListsViewModel.ItemIdentifier);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }
}

void sub_10058FBF4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_100058000(a2, a3);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(*(v18 + 16));
      v19 = Hasher._finalize()();
      v20 = -1 << *(v7 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v3;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v4 = v7;
  }
}

void sub_10058FE14(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100058000(&qword_100782420, &unk_10063E1B0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v20 = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_10059004C(uint64_t a1)
{
  v2 = v1;
  v34 = type metadata accessor for IndexPath();
  v3 = *(v34 - 8);
  __chkstk_darwin(v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100058000(&qword_10078C4D8, &unk_100647050);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_10059A488(&qword_100769AC0, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }
}

void sub_100590368(uint64_t a1)
{
  v2 = v1;
  v34 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v3 = *(v34 - 8);
  __chkstk_darwin(v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100058000(&qword_10078E090, &qword_100647068);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_10059A488(&unk_10076BB20, &type metadata accessor for TTRRemindersListViewModel.SectionID, &protocol conformance descriptor for TTRRemindersListViewModel.SectionID);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }
}

void sub_100590684(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100058000(&qword_10078C4E8, &qword_100646138);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v16);
      v17 = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_1005908A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100058000(&qword_10078E0D0, &qword_1006470B8);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      v12 = Hasher._finalize()();
      v13 = -1 << *(v5 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v11 + 8 * (v14 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        while (++v15 != v22 || (v21 & 1) == 0)
        {
          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v15);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v15 << 6);
            goto LABEL_8;
          }
        }

        goto LABEL_29;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v11 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v11 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_27;
      }

      v19 = *(v3 + 56 + 8 * v6);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v9 = (v19 - 1) & v19;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }
}

void sub_100590B90(uint64_t a1)
{
  v2 = v1;
  v34 = type metadata accessor for UUID();
  v3 = *(v34 - 8);
  __chkstk_darwin(v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100058000(&qword_10078E098, &unk_100647070);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_10059A488(&qword_10076BB40, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }
}

void sub_100590EAC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100058000(&qword_10078E0C8, &qword_1006470B0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      v17 = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_100591130(uint64_t a1)
{
  v2 = v1;
  v34 = type metadata accessor for TTRListOrCustomSmartList();
  v3 = *(v34 - 8);
  __chkstk_darwin(v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100058000(&qword_10078E0B0, &unk_100647088);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_10059A488(&qword_100786578, &type metadata accessor for TTRListOrCustomSmartList, &protocol conformance descriptor for TTRListOrCustomSmartList);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }
}

void sub_10059144C(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100058000(&qword_10078C4E0, &qword_100646130);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_10059A488(&qword_10076FE50, &type metadata accessor for TTRRemindersListViewModel.ItemID, &protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_1005917A8(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for TTRSectionID();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100058000(&qword_10078E0F0, &unk_1006470D0);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_10059A488(&qword_1007758E0, &type metadata accessor for TTRSectionID, &protocol conformance descriptor for TTRSectionID);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_100591B04(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100058000(&qword_10078E108, &qword_100647100);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v26 = v2;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      v18 = static Hasher._hash(seed:_:)();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_100591D28(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_100058000(a2, a3);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      v20 = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
}

void sub_100591F48(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for TTRRemindersListViewModel.Item();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100058000(&qword_10078E0A0, &qword_100647080);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_10059A488(&qword_100776308, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_1005922A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100058000(&qword_10078E0E0, &qword_1006470C8);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v18 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v21 = *(*(v3 + 48) + (v18 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      v13 = Hasher._finalize()();
      v14 = -1 << *(v5 + 32);
      v15 = v13 & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v12 + 8 * (v15 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v14) >> 6;
        while (++v16 != v23 || (v22 & 1) == 0)
        {
          v24 = v16 == v23;
          if (v16 == v23)
          {
            v16 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v16);
          if (v25 != -1)
          {
            v17 = __clz(__rbit64(~v25)) + (v16 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v12 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v5 + 48) + v17) = v21;
      ++*(v5 + 16);
    }

    v19 = v6;
    while (1)
    {
      v6 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v20 = v7[v6];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v10 = (v20 - 1) & v20;
        goto LABEL_16;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1005925E8(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100058000(&unk_10078C4F0, &unk_100646140);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_10059A488(&qword_1007727B0, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier, &protocol conformance descriptor for TTRAccountsListsViewModel.ItemIdentifier);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_100592944(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_100058000(a2, a3);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(*(v19 + 16));
      v20 = Hasher._finalize()();
      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v4 = v3;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
}

void sub_100592B8C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100058000(&qword_100782420, &unk_10063E1B0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      v21 = Hasher._finalize()();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_100592DEC(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for IndexPath();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100058000(&qword_10078C4D8, &unk_100647050);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_10059A488(&qword_100769AC0, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_100593148(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100058000(&qword_10078E090, &qword_100647068);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_10059A488(&unk_10076BB20, &type metadata accessor for TTRRemindersListViewModel.SectionID, &protocol conformance descriptor for TTRRemindersListViewModel.SectionID);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_1005934A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100058000(&qword_10078C4E8, &qword_100646138);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v17);
      v18 = Hasher._finalize()();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1005936F4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100058000(&qword_10078E0D0, &qword_1006470B8);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v18 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v21 = *(*(v3 + 48) + (v18 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      v13 = Hasher._finalize()();
      v14 = -1 << *(v5 + 32);
      v15 = v13 & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v12 + 8 * (v15 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v14) >> 6;
        while (++v16 != v23 || (v22 & 1) == 0)
        {
          v24 = v16 == v23;
          if (v16 == v23)
          {
            v16 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v16);
          if (v25 != -1)
          {
            v17 = __clz(__rbit64(~v25)) + (v16 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v12 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v5 + 48) + v17) = v21;
      ++*(v5 + 16);
    }

    v19 = v6;
    while (1)
    {
      v6 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v20 = v7[v6];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v10 = (v20 - 1) & v20;
        goto LABEL_16;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_100593A10(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for UUID();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100058000(&qword_10078E098, &unk_100647070);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_10059A488(&qword_10076BB40, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_100593D6C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100058000(&qword_10078E0C8, &qword_1006470B0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      v18 = Hasher._finalize()();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_100594020(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for TTRListOrCustomSmartList();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100058000(&qword_10078E0B0, &unk_100647088);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_10059A488(&qword_100786578, &type metadata accessor for TTRListOrCustomSmartList, &protocol conformance descriptor for TTRListOrCustomSmartList);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

Swift::Int sub_1005943A0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100058000(&qword_100782428, &unk_100643110);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100591D28(v9 + 1, &qword_100782428, &unk_100643110);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_1005945B0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100058000(&qword_1007823F8, &qword_10063E198);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for REMObjectID_Codable();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100591D28(v9 + 1, &qword_1007823F8, &qword_10063E198);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_1005947D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    sub_100058000(a3, a4);
    v10 = static _SetStorage.convert(_:capacity:)();
    v23 = v10;
    __CocoaSet.makeIterator()();
    for (; __CocoaSet.Iterator.next()(); ++*(v10 + 16))
    {
      sub_100058000(a5, a6);
      swift_dynamicCast();
      v17 = *(v10 + 16);
      if (*(v10 + 24) <= v17)
      {
        sub_100592944(v17 + 1, a3, a4);
        v10 = v23;
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(*(v22 + 16));
      result = Hasher._finalize()();
      v12 = v10 + 56;
      v13 = -1 << *(v10 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v10 + 56 + 8 * (v14 >> 6))) != 0)
      {
        v16 = __clz(__rbit64((-1 << v14) & ~*(v10 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = 0;
        v19 = (63 - v13) >> 6;
        do
        {
          if (++v15 == v19 && (v18 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v20 = v15 == v19;
          if (v15 == v19)
          {
            v15 = 0;
          }

          v18 |= v20;
          v21 = *(v12 + 8 * v15);
        }

        while (v21 == -1);
        v16 = __clz(__rbit64(~v21)) + (v15 << 6);
      }

      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v10 + 48) + 8 * v16) = v22;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v10;
}

unint64_t sub_1005949E0(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

unint64_t sub_100594A64(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*(a1 + 16));
  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_100594B08(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10059144C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_10058E63C(&type metadata accessor for TTRRemindersListViewModel.ItemID, &qword_10078C4E0, &qword_100646130);
      goto LABEL_12;
    }

    sub_10058E874(v11 + 1);
  }

  v13 = *v3;
  sub_10059A488(&qword_10076FE50, &type metadata accessor for TTRRemindersListViewModel.ItemID, &protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_10059A488(&qword_10076BB60, &type metadata accessor for TTRRemindersListViewModel.ItemID, &protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100594DD0(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = type metadata accessor for TTRSectionID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1005917A8(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_10058E63C(&type metadata accessor for TTRSectionID, &qword_10078E0F0, &unk_1006470D0);
      goto LABEL_12;
    }

    sub_10058EB90(v11 + 1);
  }

  v13 = *v3;
  sub_10059A488(&qword_1007758E0, &type metadata accessor for TTRSectionID, &protocol conformance descriptor for TTRSectionID);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_10059A488(&qword_10076BE70, &type metadata accessor for TTRSectionID, &protocol conformance descriptor for TTRSectionID);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100595098(uint64_t a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100591B04(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_10058DF28();
      a2 = v7;
      goto LABEL_12;
    }

    sub_10058EEAC(v5 + 1);
  }

  v8 = *v3;
  v9 = static Hasher._hash(seed:_:)();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != a1)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = a1;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1005951B8(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100591D28(v6 + 1, &qword_1007823F8, &qword_10063E198);
  }

  else
  {
    if (v7 > v6)
    {
      sub_10058E068(&qword_1007823F8, &qword_10063E198);
      goto LABEL_12;
    }

    sub_10058F09C(v6 + 1, &qword_1007823F8, &qword_10063E198);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for REMObjectID_Codable();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100595348(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100591F48(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_10058E63C(&type metadata accessor for TTRRemindersListViewModel.Item, &qword_10078E0A0, &qword_100647080);
      goto LABEL_12;
    }

    sub_10058F2A8(v11 + 1);
  }

  v13 = *v3;
  sub_10059A488(&qword_100776308, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_10059A488(&qword_100768B68, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100595610(unsigned __int8 a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_50;
  }

  if (a3)
  {
    sub_1005922A4(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      sub_10058E50C(&qword_10078E0E0, &qword_1006470C8);
      goto LABEL_50;
    }

    sub_10058F5C4(v5 + 1);
  }

  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();

  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  a2 = v8 & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      v11 = *(*(v7 + 48) + a2);
      if (v11 > 2)
      {
        if (v11 == 3)
        {
          v12 = 0x6F6E6E4177656976;
          v13 = 0xEE006E6F69746174;
        }

        else
        {
          if (v11 == 4)
          {
            v12 = 0x75736F6C63736964;
          }

          else
          {
            v12 = 0xD000000000000016;
          }

          if (v11 == 4)
          {
            v13 = 0xEF65746174536572;
          }

          else
          {
            v13 = 0x800000010066E7D0;
          }
        }
      }

      else if (*(*(v7 + 48) + a2))
      {
        if (v11 == 1)
        {
          v12 = 0x74786554656D616ELL;
        }

        else
        {
          v12 = 0x6F74617261706573;
        }

        if (v11 == 1)
        {
          v13 = 0xEC00000077656956;
        }

        else
        {
          v13 = 0xE900000000000072;
        }
      }

      else
      {
        v12 = 0xD000000000000018;
        v13 = 0x800000010066E780;
      }

      v14 = 0x75736F6C63736964;
      if (a1 != 4)
      {
        v14 = 0xD000000000000016;
      }

      v15 = 0xEF65746174536572;
      if (a1 != 4)
      {
        v15 = 0x800000010066E7D0;
      }

      if (a1 == 3)
      {
        v14 = 0x6F6E6E4177656976;
        v15 = 0xEE006E6F69746174;
      }

      v16 = 0xD000000000000018;
      v17 = 0x74786554656D616ELL;
      if (a1 != 1)
      {
        v17 = 0x6F74617261706573;
      }

      v18 = 0xEC00000077656956;
      if (a1 != 1)
      {
        v18 = 0xE900000000000072;
      }

      if (a1)
      {
        v16 = v17;
        v19 = v18;
      }

      else
      {
        v19 = 0x800000010066E780;
      }

      v20 = a1 <= 2u ? v16 : v14;
      v21 = a1 <= 2u ? v19 : v15;
      if (v12 == v20 && v13 == v21)
      {
        goto LABEL_53;
      }

      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v22)
      {
        goto LABEL_54;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_50:
  v23 = *v27;
  *(*v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v23 + 48) + a2) = a1;
  v24 = *(v23 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v23 + 16) = v26;
    return;
  }

  __break(1u);
LABEL_53:

LABEL_54:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100595A28(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1005925E8(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_10058E63C(&type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier, &unk_10078C4F0, &unk_100646140);
      goto LABEL_12;
    }

    sub_10058F8D8(v11 + 1);
  }

  v13 = *v3;
  sub_10059A488(&qword_1007727B0, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier, &protocol conformance descriptor for TTRAccountsListsViewModel.ItemIdentifier);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_10059A488(&qword_10076B7A0, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier, &protocol conformance descriptor for TTRAccountsListsViewModel.ItemIdentifier);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100595CF0(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v11 = *(*v7 + 16);
  v12 = *(*v7 + 24);
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v9 = a6;
    v8 = a7;
    sub_100592944(v11 + 1, a4, a5);
  }

  else
  {
    if (v12 > v11)
    {
      v8 = a2;
      sub_10058E1E4(a4, a5);
      a2 = v8;
      goto LABEL_12;
    }

    v9 = a6;
    v8 = a7;
    sub_10058FBF4(v11 + 1, a4, a5);
  }

  v13 = *v7;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*(a1 + 16));
  v14 = Hasher._finalize()();
  v15 = -1 << *(v13 + 32);
  a2 = v14 & ~v15;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    while (*(*(*(v13 + 48) + 8 * a2) + 16) != *(a1 + 16))
    {
      a2 = (a2 + 1) & v16;
      if (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v17 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + 8 * a2) = a1;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v17 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_15:
  sub_100058000(v9, v8);
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_100595E78(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100592B8C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_10058E324();
      goto LABEL_16;
    }

    sub_10058FE14(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == a1 && v14[1] == a2;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = a1;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100595FF8(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100592DEC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_10058E63C(&type metadata accessor for IndexPath, &qword_10078C4D8, &unk_100647050);
      goto LABEL_12;
    }

    sub_10059004C(v11 + 1);
  }

  v13 = *v3;
  sub_10059A488(&qword_100769AC0, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_10059A488(&unk_100772710, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1005962C0(unsigned __int8 a1, unint64_t a2, char a3)
{
  v4 = a1;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1005934A4(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_10058E50C(&qword_10078C4E8, &qword_100646138);
      a2 = v7;
      goto LABEL_12;
    }

    sub_100590684(v5 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100596420(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100593148(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_10058E63C(&type metadata accessor for TTRRemindersListViewModel.SectionID, &qword_10078E090, &qword_100647068);
      goto LABEL_12;
    }

    sub_100590368(v11 + 1);
  }

  v13 = *v3;
  sub_10059A488(&unk_10076BB20, &type metadata accessor for TTRRemindersListViewModel.SectionID, &protocol conformance descriptor for TTRRemindersListViewModel.SectionID);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_10059A488(&qword_100768B80, &type metadata accessor for TTRRemindersListViewModel.SectionID, &protocol conformance descriptor for TTRRemindersListViewModel.SectionID);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1005966E8(unsigned __int8 a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_47;
  }

  if (a3)
  {
    sub_1005936F4(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      sub_10058E50C(&qword_10078E0D0, &qword_1006470B8);
      goto LABEL_47;
    }

    sub_1005908A4(v5 + 1);
  }

  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();

  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  a2 = v8 & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v28 = ~v9;
    v10 = 0xEF726F6C6F43646ELL;
    do
    {
      v11 = *(*(v7 + 48) + a2);
      if (v11 <= 1)
      {
        if (*(*(v7 + 48) + a2))
        {
          v12 = 0x6F74617261706573;
        }

        else
        {
          v12 = 0xD000000000000010;
        }

        if (*(*(v7 + 48) + a2))
        {
          v13 = 0xE900000000000072;
        }

        else
        {
          v13 = 0x800000010066E810;
        }
      }

      else if (v11 == 2)
      {
        v12 = 0xD00000000000001BLL;
        v13 = 0x800000010066E830;
      }

      else
      {
        if (v11 == 3)
        {
          v12 = 0x756F72676B636162;
        }

        else
        {
          v12 = 0xD000000000000014;
        }

        if (v11 == 3)
        {
          v13 = v10;
        }

        else
        {
          v13 = 0x800000010066E860;
        }
      }

      v14 = 0xD00000000000001BLL;
      v15 = 0xD000000000000014;
      if (a1 == 3)
      {
        v15 = 0x756F72676B636162;
      }

      v16 = v10;
      if (a1 != 3)
      {
        v10 = 0x800000010066E860;
      }

      if (a1 == 2)
      {
        v17 = 0x800000010066E830;
      }

      else
      {
        v14 = v15;
        v17 = v10;
      }

      if (a1)
      {
        v18 = 0x6F74617261706573;
      }

      else
      {
        v18 = 0xD000000000000010;
      }

      v19 = 0xE900000000000072;
      if (!a1)
      {
        v19 = 0x800000010066E810;
      }

      v20 = a1 <= 1u ? v18 : v14;
      v21 = a1 <= 1u ? v19 : v17;
      if (v12 == v20 && v13 == v21)
      {
        goto LABEL_50;
      }

      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v22)
      {
        goto LABEL_51;
      }

      a2 = (a2 + 1) & v28;
      v10 = v16;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_47:
  v23 = *v27;
  *(*v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v23 + 48) + a2) = a1;
  v24 = *(v23 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v23 + 16) = v26;
    return;
  }

  __break(1u);
LABEL_50:

LABEL_51:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100596A48(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100593A10(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_10058E63C(&type metadata accessor for UUID, &qword_10078E098, &unk_100647070);
      goto LABEL_12;
    }

    sub_100590B90(v11 + 1);
  }

  v13 = *v3;
  sub_10059A488(&qword_10076BB40, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_10059A488(&qword_10076BB48, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100596D10(unsigned __int8 a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100593D6C(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        sub_10058E50C(&qword_10078E0C8, &qword_1006470B0);
        goto LABEL_28;
      }

      sub_100590EAC(v6 + 1);
    }

    v8 = *v3;
    Hasher.init(_seed:)();
    String.hash(into:)();

    v9 = Hasher._finalize()();
    v10 = -1 << *(v8 + 32);
    a2 = v9 & ~v10;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      do
      {
        if (*(*(v8 + 48) + a2))
        {
          if (*(*(v8 + 48) + a2) == 1)
          {
            v12 = 0x6F697463656C6573;
            v13 = 0xE90000000000006ELL;
            v14 = a1;
            if (!a1)
            {
              goto LABEL_24;
            }
          }

          else
          {
            v12 = 0xD000000000000014;
            v13 = 0x800000010066E890;
            v14 = a1;
            if (!a1)
            {
LABEL_24:
              v16 = 0xE700000000000000;
              if (v12 == 0x736E6F74747562)
              {
                goto LABEL_25;
              }

              goto LABEL_26;
            }
          }
        }

        else
        {
          v13 = 0xE700000000000000;
          v12 = 0x736E6F74747562;
          v14 = a1;
          if (!a1)
          {
            goto LABEL_24;
          }
        }

        if (v14 == 1)
        {
          v15 = 0x6F697463656C6573;
        }

        else
        {
          v15 = 0xD000000000000014;
        }

        if (v14 == 1)
        {
          v16 = 0xE90000000000006ELL;
        }

        else
        {
          v16 = 0x800000010066E890;
        }

        if (v12 == v15)
        {
LABEL_25:
          if (v13 == v16)
          {
            goto LABEL_31;
          }
        }

LABEL_26:
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v17)
        {
          goto LABEL_32;
        }

        a2 = (a2 + 1) & v11;
      }

      while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_28:
  v18 = *v22;
  *(*v22 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_31:

LABEL_32:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v21;
  }
}

uint64_t sub_100596FC4(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = type metadata accessor for TTRListOrCustomSmartList();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100594020(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_10058E63C(&type metadata accessor for TTRListOrCustomSmartList, &qword_10078E0B0, &unk_100647088);
      goto LABEL_12;
    }

    sub_100591130(v11 + 1);
  }

  v13 = *v3;
  sub_10059A488(&qword_100786578, &type metadata accessor for TTRListOrCustomSmartList, &protocol conformance descriptor for TTRListOrCustomSmartList);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_10059A488(&qword_10078E0A8, &type metadata accessor for TTRListOrCustomSmartList, &protocol conformance descriptor for TTRListOrCustomSmartList);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10059728C(uint64_t a1, uint64_t a2)
{
  v62 = a1;
  v63 = a2;
  v2 = type metadata accessor for TTRSection();
  v59 = *(v2 - 8);
  v60 = v2;
  __chkstk_darwin(v2);
  v58 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRRemindersListReminderActionTarget(0);
  __chkstk_darwin(v4);
  v61 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = (&v58 - v7);
  __chkstk_darwin(v9);
  v11 = (&v58 - v10);
  __chkstk_darwin(v12);
  v14 = (&v58 - v13);
  __chkstk_darwin(v15);
  v17 = (&v58 - v16);
  __chkstk_darwin(v18);
  v20 = (&v58 - v19);
  __chkstk_darwin(v21);
  v23 = &v58 - v22;
  v24 = sub_100058000(&qword_10078E0D8, &qword_1006470C0);
  __chkstk_darwin(v24 - 8);
  v26 = &v58 - v25;
  v28 = (&v58 + *(v27 + 56) - v25);
  sub_10059A648(v62, &v58 - v25, type metadata accessor for TTRRemindersListReminderActionTarget);
  sub_10059A648(v63, v28, type metadata accessor for TTRRemindersListReminderActionTarget);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_10059A648(v26, v23, type metadata accessor for TTRRemindersListReminderActionTarget);
      if (swift_getEnumCaseMultiPayload())
      {
LABEL_35:
        sub_1000079B4(v26, &qword_10078E0D8, &qword_1006470C0);
        goto LABEL_36;
      }

      v39 = *v23 == *v28;
      goto LABEL_31;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_10059A648(v26, v20, type metadata accessor for TTRRemindersListReminderActionTarget);
      v30 = *v20;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
LABEL_14:
        v38 = *v28;
        sub_100003540(0, &qword_100775690, NSObject_ptr);
LABEL_15:
        v39 = static NSObject.== infix(_:_:)();

LABEL_31:
        sub_1005838CC(v26, type metadata accessor for TTRRemindersListReminderActionTarget);
        return v39 & 1;
      }
    }

    else
    {
      sub_10059A648(v26, v17, type metadata accessor for TTRRemindersListReminderActionTarget);
      v30 = *v17;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        goto LABEL_14;
      }
    }

LABEL_24:

    goto LABEL_35;
  }

  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_10059A648(v26, v14, type metadata accessor for TTRRemindersListReminderActionTarget);
      v30 = *v14;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v31 = *v28;
        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;
        if (v32 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v34 == v35)
        {

LABEL_40:
          sub_1005838CC(v26, type metadata accessor for TTRRemindersListReminderActionTarget);
          v39 = 1;
          return v39 & 1;
        }

        v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v37)
        {
          goto LABEL_40;
        }

        goto LABEL_28;
      }

      goto LABEL_24;
    }

    sub_10059A648(v26, v11, type metadata accessor for TTRRemindersListReminderActionTarget);
    v48 = *v11;
    v30 = v11[1];
    if (swift_getEnumCaseMultiPayload() != 4)
    {

      goto LABEL_35;
    }

    v49 = *v28;
    v38 = v28[1];
    sub_100003540(0, &qword_100775690, NSObject_ptr);
    v50 = static NSObject.== infix(_:_:)();

    if ((v50 & 1) == 0)
    {

LABEL_28:
      sub_1005838CC(v26, type metadata accessor for TTRRemindersListReminderActionTarget);
LABEL_36:
      v39 = 0;
      return v39 & 1;
    }

    goto LABEL_15;
  }

  if (EnumCaseMultiPayload != 5)
  {
    v51 = v61;
    sub_10059A648(v26, v61, type metadata accessor for TTRRemindersListReminderActionTarget);
    if (swift_getEnumCaseMultiPayload() != 6)
    {
      (*(v59 + 8))(v51, v60);
      goto LABEL_35;
    }

    v53 = v58;
    v52 = v59;
    v54 = v28;
    v55 = v60;
    (*(v59 + 32))(v58, v54, v60);
    v39 = static TTRSection.== infix(_:_:)();
    v56 = *(v52 + 8);
    v56(v53, v55);
    v56(v51, v55);
    goto LABEL_31;
  }

  sub_10059A648(v26, v8, type metadata accessor for TTRRemindersListReminderActionTarget);
  v41 = *v8;
  v40 = v8[1];
  v42 = v8[2];
  if (swift_getEnumCaseMultiPayload() != 5)
  {

    goto LABEL_35;
  }

  v43 = v26;
  v45 = *v28;
  v44 = v28[1];
  v46 = v28[2];
  sub_100003540(0, &qword_100775690, NSObject_ptr);
  v47 = static NSObject.== infix(_:_:)();

  if ((v47 & 1) == 0 || (static NSObject.== infix(_:_:)() & 1) == 0)
  {

    sub_1005838CC(v43, type metadata accessor for TTRRemindersListReminderActionTarget);
    goto LABEL_36;
  }

  v39 = static NSObject.== infix(_:_:)();

  sub_1005838CC(v43, type metadata accessor for TTRRemindersListReminderActionTarget);
  return v39 & 1;
}

uint64_t sub_10059799C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
  v47 = *(v4 - 8);
  v48 = v4;
  __chkstk_darwin(v4);
  v46 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
  __chkstk_darwin(v6);
  v8 = (&v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v11 = (&v45 - v10);
  __chkstk_darwin(v12);
  v14 = &v45 - v13;
  __chkstk_darwin(v15);
  v17 = &v45 - v16;
  v18 = sub_100058000(&qword_10078E088, &qword_100647060);
  __chkstk_darwin(v18 - 8);
  v20 = &v45 - v19;
  v22 = (&v45 + *(v21 + 56) - v19);
  sub_10059A648(a1, &v45 - v19, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
  sub_10059A648(a2, v22, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_10059A648(v20, v11, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
      v25 = *v11;
      v26 = v11[1];
      if (swift_getEnumCaseMultiPayload() != 2)
      {

        goto LABEL_25;
      }

      v28 = *v22;
      v27 = v22[1];
      sub_100003540(0, &qword_100775690, NSObject_ptr);
      v29 = static NSObject.== infix(_:_:)();

      if (v29)
      {
        if (v26)
        {
          if (v27)
          {
            sub_100003540(0, &qword_10076ABC0, REMList_ptr);
            v30 = v26;
            v31 = static NSObject.== infix(_:_:)();

            if ((v31 & 1) == 0)
            {
              goto LABEL_33;
            }

LABEL_28:
            sub_1005838CC(v20, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
            v24 = 1;
            return v24 & 1;
          }

          v27 = v26;
        }

        else if (!v27)
        {
          goto LABEL_28;
        }
      }

      else
      {
      }

LABEL_33:
      sub_1005838CC(v20, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
      goto LABEL_34;
    }

    sub_10059A648(v20, v8, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
    v36 = *v8;
    if (swift_getEnumCaseMultiPayload() != 3)
    {

      goto LABEL_25;
    }

    v37 = *v22;
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;
    if (v38 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v40 == v41)
    {
    }

    else
    {
      v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v43 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    goto LABEL_28;
  }

  if (EnumCaseMultiPayload)
  {
    sub_10059A648(v20, v14, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v33 = v46;
      v32 = v47;
      v34 = v48;
      (*(v47 + 32))(v46, v22, v48);
      v24 = static TTRRemindersListTargetContainer.TargetList.== infix(_:_:)();
      v35 = *(v32 + 8);
      v35(v33, v34);
      v35(v14, v34);
      goto LABEL_14;
    }

    (*(v47 + 8))(v14, v48);
    goto LABEL_25;
  }

  sub_10059A648(v20, v17, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
  if (swift_getEnumCaseMultiPayload())
  {
LABEL_25:
    sub_1000079B4(v20, &qword_10078E088, &qword_100647060);
LABEL_34:
    v24 = 0;
    return v24 & 1;
  }

  v24 = *v17 == *v22;
LABEL_14:
  sub_1005838CC(v20, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
  return v24 & 1;
}