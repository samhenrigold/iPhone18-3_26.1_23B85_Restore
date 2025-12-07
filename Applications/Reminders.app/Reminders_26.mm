uint64_t sub_1002C9D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = type metadata accessor for AttributeMatchingRequest(0);
  a3[3] = v7;
  a3[4] = &off_10071E780;
  v8 = sub_1000317B8(a3);
  sub_10000794C(a1, v8, &qword_100772140, &qword_10062D9F0);
  *(v8 + *(v7 + 20)) = a2;
  *(v8 + *(v7 + 24)) = v3;
}

void sub_1002C9DF4(uint64_t a1, uint64_t a2)
{
  v34 = a1;
  v3 = sub_100058000(&qword_10076C6B8, &unk_100630540);
  __chkstk_darwin(v3 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v29 - v7;
  v9 = type metadata accessor for DateComponents();
  v33 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v12 - 8);
  v14 = &v29 - v13;
  v15 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = TTRReminderEditor.changeItem.getter();
  v35 = [v19 displayDate];

  v20 = v35;
  if (v35)
  {
  }

  else
  {
    v31 = a2;
    v32 = v18;
    v35 = v16;
    v29 = v11;
    v30 = v5;

    TTRRemindersListTreeViewModel.parent(of:)();

    v21 = type metadata accessor for TTRRemindersListViewModel.Item();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v14, 1, v21) == 1)
    {
      sub_1000079B4(v14, &qword_100772140, &qword_10062D9F0);
    }

    else if ((*(v22 + 88))(v14, v21) == enum case for TTRRemindersListViewModel.Item.section(_:))
    {
      (*(v22 + 96))(v14, v21);
      v23 = v35;
      v24 = v32;
      (*(v35 + 4))(v32, v14, v15);
      sub_1002CCA14(v8);
      v25 = v33;
      v26 = v9;
      if ((*(v33 + 48))(v8, 1, v9) == 1)
      {
        (v23)[1](v24, v15);
        sub_1000079B4(v8, &qword_10076C6B8, &unk_100630540);
      }

      else
      {
        v27 = v29;
        (*(v25 + 32))(v29, v8, v26);
        v28 = v30;
        (*(v25 + 16))(v30, v27, v26);
        (*(v25 + 56))(v28, 0, 1, v26);
        TTRReminderEditor.edit(dueDateComponents:)();
        sub_1000079B4(v28, &qword_10076C6B8, &unk_100630540);
        (*(v25 + 8))(v27, v26);
        (v23)[1](v24, v15);
      }
    }

    else
    {
      (*(v22 + 8))(v14, v21);
    }
  }
}

uint64_t sub_1002CA2C0(void *a1)
{
  swift_getObjectType();
  if (dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter())
  {
    swift_getObjectType();
    v2 = dispatch thunk of TTRRemindersListDataModelSourceShowCompletedContextType.matchesPredicate(_:)();
    swift_unknownObjectRelease();
    if ((v2 & 1) == 0)
    {
      return 0;
    }
  }

  sub_10000C36C(a1, a1[3]);
  result = dispatch thunk of TTRReminderProtocol.displayDate.getter();
  if (result)
  {

    return 1;
  }

  return result;
}

uint64_t sub_1002CA36C()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRShowScheduledViewModelSource_sectionHeadersNeedingPlaceholderReminderItems);

  TTRRemindersListViewModel.SectionHeader.id.getter();
  v6 = sub_1000A9D10(v4, v5);

  v7 = *(v2 + 8);
  v7(v4, v1);
  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v9 = OBJC_IVAR____TtC9Reminders31TTRShowScheduledViewModelSource_tappedSectionHeaders;
    swift_beginAccess();
    v10 = *(v0 + v9);

    TTRRemindersListViewModel.SectionHeader.id.getter();
    v8 = sub_1000A9D10(v4, v10);

    v7(v4, v1);
  }

  return v8 & 1;
}

uint64_t sub_1002CA4E0()
{
  v0 = type metadata accessor for TTRUserActivityListPayload.State();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = enum case for TTRListType.PredefinedSmartListType.scheduled(_:);
  v5 = type metadata accessor for TTRListType.PredefinedSmartListType();
  (*(*(v5 - 8) + 104))(v3, v4, v5);
  (*(v1 + 104))(v3, enum case for TTRUserActivityListPayload.State.predefinedSmartListType(_:), v0);
  v8[3] = type metadata accessor for TTRUserActivityListPayload();
  v8[4] = &protocol witness table for TTRUserActivityListPayload;
  sub_1000317B8(v8);
  TTRUserActivityListPayload.init(state:)();
  NSUserActivity.setPayload(_:)();
  return sub_100004758(v8);
}

uint64_t sub_1002CA634()
{
  v29 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State();
  v1 = *(v29 - 8);
  __chkstk_darwin(v29);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v27 - v9;
  v11 = sub_100058000(&unk_10076BB50, &unk_10062DEA0);
  __chkstk_darwin(v11 - 8);
  v13 = &v27 - v12;
  sub_100003540(0, &qword_1007865E0, NSUserActivity_ptr);
  v28 = static NSUserActivity.forStoringWindowSceneRestorationPayload()();
  v14 = v0 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = *(v14 + 8);
    ObjectType = swift_getObjectType();
    sub_10056FD04(ObjectType, v15);
    swift_unknownObjectRelease();
    v17 = type metadata accessor for TTRRemindersListViewModel.Item();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v10, 1, v17) != 1)
    {
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
      (*(v18 + 8))(v10, v17);
      v19 = 0;
      goto LABEL_6;
    }

    sub_1000079B4(v10, &qword_100772140, &qword_10062D9F0);
  }

  v19 = 1;
LABEL_6:
  v20 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  (*(*(v20 - 8) + 56))(v13, v19, 1, v20);
  v21 = *(sub_100058000(&qword_1007693A0, &unk_1006324E0) + 48);
  v22 = enum case for TTRListType.PredefinedSmartListType.scheduled(_:);
  v23 = type metadata accessor for TTRListType.PredefinedSmartListType();
  (*(*(v23 - 8) + 104))(v3, v22, v23);
  sub_10000794C(v13, &v3[v21], &unk_10076BB50, &unk_10062DEA0);
  (*(v1 + 104))(v3, enum case for TTRUserActivityWindowSceneRestorationPayload.State.predefinedSmartListType(_:), v29);
  TTRUserActivityWindowSceneRestorationPayload.init(state:)();
  v30[3] = v4;
  v30[4] = &protocol witness table for TTRUserActivityWindowSceneRestorationPayload;
  v24 = sub_1000317B8(v30);
  (*(v5 + 16))(v24, v7, v4);
  v25 = v28;
  NSUserActivity.setPayload(_:)();
  (*(v5 + 8))(v7, v4);
  sub_1000079B4(v13, &unk_10076BB50, &unk_10062DEA0);
  sub_100004758(v30);
  return v25;
}

uint64_t sub_1002CAA6C(char *a1)
{
  v55 = type metadata accessor for REMRemindersListDataView.Diff();
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v53 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v4 - 8);
  v56 = &v51 - v5;
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v60 = *(v6 - 8);
  v61 = v6;
  __chkstk_darwin(v6);
  v59 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_10076B070, &unk_100637140);
  __chkstk_darwin(v8 - 8);
  v58 = &v51 - v9;
  v10 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v63 = *(v10 - 8);
  v64 = v10;
  __chkstk_darwin(v10);
  v62 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v12 - 8);
  v52 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v65 = &v51 - v15;
  __chkstk_darwin(v16);
  v18 = &v51 - v17;
  v19 = type metadata accessor for TTRRemindersListViewModel.Item();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v1;
  sub_100576F6C(a1);
  v24 = *(v20 + 16);
  v66 = a1;
  v24(v22, a1, v19);
  v25 = *(v20 + 88);
  v26 = v25(v22, v19);
  v27 = enum case for TTRRemindersListViewModel.Item.placeholderReminder(_:);
  v57 = *(v20 + 8);
  result = (v57)(v22, v19);
  if (v26 == v27)
  {
    v29 = v23;

    v30 = TTRRemindersListTreeViewModel.sectionItems.getter();

    __chkstk_darwin(v31);
    v32 = v66;
    *(&v51 - 2) = v23;
    *(&v51 - 1) = v32;
    sub_1002EC8C4(sub_1002D57A4, v30, v18);

    v33 = v65;
    sub_10000794C(v18, v65, &qword_100772140, &qword_10062D9F0);
    if ((*(v20 + 48))(v33, 1, v19) == 1)
    {
      sub_1000079B4(v18, &qword_100772140, &qword_10062D9F0);
      v34 = v33;
      return sub_1000079B4(v34, &qword_100772140, &qword_10062D9F0);
    }

    if (v25(v33, v19) == enum case for TTRRemindersListViewModel.Item.section(_:))
    {
      v66 = v18;
      v57 = v20;
      v35 = v19;
      (*(v20 + 96))(v33, v19);
      v37 = v63;
      v36 = v64;
      v38 = v33;
      v39 = v62;
      (*(v63 + 32))(v62, v38, v64);
      v40 = v59;
      TTRRemindersListViewModel.SectionHeader.id.getter();
      swift_beginAccess();
      v41 = v58;
      sub_1000EA510(v40, v58);
      (*(v60 + 8))(v40, v61);
      sub_1000079B4(v41, &qword_10076B070, &unk_100637140);
      swift_endAccess();
      v42 = *(v29 + OBJC_IVAR____TtC9Reminders31TTRShowScheduledViewModelSource_lastSectionsSnapshot);
      if (!v42)
      {
        (*(v37 + 8))(v39, v36);
        v34 = v66;
        return sub_1000079B4(v34, &qword_100772140, &qword_10062D9F0);
      }

      v43 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
      v44 = v56;
      (*(*(v43 - 8) + 56))(v56, 1, 1, v43);
      if (_swiftEmptyArrayStorage >> 62)
      {
        v50 = _CocoaArrayWrapper.endIndex.getter();

        if (v50)
        {
          sub_100599F5C(_swiftEmptyArrayStorage);
        }

        if (_CocoaArrayWrapper.endIndex.getter())
        {
          sub_100599F5C(_swiftEmptyArrayStorage);
        }

        if (_CocoaArrayWrapper.endIndex.getter())
        {
          sub_100599F5C(_swiftEmptyArrayStorage);
        }

        if (_CocoaArrayWrapper.endIndex.getter())
        {
          sub_100599F5C(_swiftEmptyArrayStorage);
        }

        v44 = v56;
        v39 = v62;
        v37 = v63;
      }

      else
      {
      }

      v45 = v53;
      REMRemindersListDataView.Diff.init(updatedReminderObjectIDs:insertedReminderObjectIDs:updatedListObjectIDs:updatedSectionObjectIDs:newReminderMembershipsViaAutomation:)();
      v46 = type metadata accessor for TTRRemindersListObjectIDOnlyReminderIDProvider();
      v47 = static TTRRemindersListReminderIDProviding<>.uniqueWithinTree.getter();
      v48 = v52;
      (*(v57 + 56))(v52, 1, 1, v35);
      v68[3] = v46;
      v68[4] = &protocol witness table for TTRRemindersListObjectIDOnlyReminderIDProvider;
      v68[0] = v47;
      sub_10000B0D8(v68, v67);
      v49 = swift_allocObject();
      *(v49 + 16) = v42;
      sub_100005FD0(v67, v49 + 24);
      *(v49 + 64) = v29;

      sub_100586238(1, v44, sub_100283360, v49, v45, 0, v48);

      sub_1000079B4(v48, &qword_100772140, &qword_10062D9F0);
      (*(v54 + 8))(v45, v55);
      sub_1000079B4(v44, &unk_10078A380, &qword_10062DE60);
      (*(v37 + 8))(v39, v64);
      sub_1000079B4(v66, &qword_100772140, &qword_10062D9F0);

      return sub_100004758(v68);
    }

    else
    {
      sub_1000079B4(v18, &qword_100772140, &qword_10062D9F0);
      return (v57)(v33, v19);
    }
  }

  return result;
}

uint64_t sub_1002CB39C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v3 = type metadata accessor for TTRRemindersListViewModel.Item();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v26 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_100768B60, &qword_10062DA20);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v25 - v8;
  v10 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v10 - 8);
  v28 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v25 - v13;
  __chkstk_darwin(v15);
  v17 = &v25 - v16;

  TTRRemindersListTreeViewModel.uncommittedOrPlaceholderReminder(atTheEndOfSection:)();

  (*(v4 + 16))(v14, v27, v3);
  (*(v4 + 56))(v14, 0, 1, v3);
  v18 = *(v7 + 56);
  sub_10000794C(v17, v9, &qword_100772140, &qword_10062D9F0);
  sub_10000794C(v14, &v9[v18], &qword_100772140, &qword_10062D9F0);
  v19 = *(v4 + 48);
  if (v19(v9, 1, v3) != 1)
  {
    sub_10000794C(v9, v28, &qword_100772140, &qword_10062D9F0);
    if (v19(&v9[v18], 1, v3) != 1)
    {
      v21 = &v9[v18];
      v22 = v26;
      (*(v4 + 32))(v26, v21, v3);
      sub_1002D57C4(&qword_100768B68, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      v23 = *(v4 + 8);
      v23(v22, v3);
      sub_1000079B4(v14, &qword_100772140, &qword_10062D9F0);
      sub_1000079B4(v17, &qword_100772140, &qword_10062D9F0);
      v23(v28, v3);
      sub_1000079B4(v9, &qword_100772140, &qword_10062D9F0);
      return v20 & 1;
    }

    sub_1000079B4(v14, &qword_100772140, &qword_10062D9F0);
    sub_1000079B4(v17, &qword_100772140, &qword_10062D9F0);
    (*(v4 + 8))(v28, v3);
    goto LABEL_6;
  }

  sub_1000079B4(v14, &qword_100772140, &qword_10062D9F0);
  sub_1000079B4(v17, &qword_100772140, &qword_10062D9F0);
  if (v19(&v9[v18], 1, v3) != 1)
  {
LABEL_6:
    sub_1000079B4(v9, &qword_100768B60, &qword_10062DA20);
    v20 = 0;
    return v20 & 1;
  }

  sub_1000079B4(v9, &qword_100772140, &qword_10062D9F0);
  v20 = 1;
  return v20 & 1;
}

uint64_t sub_1002CB81C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for REMRemindersListDataView.Diff();
  v38 = *(v4 - 8);
  v39 = v4;
  __chkstk_darwin(v4);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v6 - 8);
  v40 = &v36 - v7;
  v8 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v8 - 8);
  v36 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  v13 = type metadata accessor for TTRRemindersListViewModel.Item();
  v41 = *(v13 - 8);
  v42 = v13;
  __chkstk_darwin(v13);
  v43 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v36 - v20;
  v22 = OBJC_IVAR____TtC9Reminders31TTRShowScheduledViewModelSource_tappedSectionHeaders;
  swift_beginAccess();
  v23 = *(v1 + v22);

  v24 = sub_1000A9D10(a1, v23);

  if ((v24 & 1) == 0)
  {
    (*(v16 + 16))(v18, a1, v15);
    swift_beginAccess();
    sub_10058D0CC(v21, v18);
    (*(v16 + 8))(v21, v15);
    result = swift_endAccess();
    v26 = *(v2 + OBJC_IVAR____TtC9Reminders31TTRShowScheduledViewModelSource_lastSectionsSnapshot);
    if (v26)
    {

      TTRRemindersListTreeViewModel.sectionItem(with:)();

      v28 = v41;
      v27 = v42;
      if ((*(v41 + 48))(v12, 1, v42) == 1)
      {

        return sub_1000079B4(v12, &qword_100772140, &qword_10062D9F0);
      }

      else
      {
        (*(v28 + 32))(v43, v12, v27);
        v29 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
        v30 = v40;
        (*(*(v29 - 8) + 56))(v40, 1, 1, v29);
        if (_swiftEmptyArrayStorage >> 62)
        {
          if (_CocoaArrayWrapper.endIndex.getter())
          {
            sub_100599F5C(_swiftEmptyArrayStorage);
          }

          if (_CocoaArrayWrapper.endIndex.getter())
          {
            sub_100599F5C(_swiftEmptyArrayStorage);
          }

          if (_CocoaArrayWrapper.endIndex.getter())
          {
            sub_100599F5C(_swiftEmptyArrayStorage);
          }

          if (_CocoaArrayWrapper.endIndex.getter())
          {
            sub_100599F5C(_swiftEmptyArrayStorage);
          }

          v30 = v40;
          v28 = v41;
          v27 = v42;
        }

        v31 = v37;
        REMRemindersListDataView.Diff.init(updatedReminderObjectIDs:insertedReminderObjectIDs:updatedListObjectIDs:updatedSectionObjectIDs:newReminderMembershipsViaAutomation:)();
        v32 = type metadata accessor for TTRRemindersListObjectIDOnlyReminderIDProvider();
        v33 = static TTRRemindersListReminderIDProviding<>.uniqueWithinTree.getter();
        v34 = v36;
        (*(v28 + 16))(v36, v43, v27);
        (*(v28 + 56))(v34, 0, 1, v27);
        v45[3] = v32;
        v45[4] = &protocol witness table for TTRRemindersListObjectIDOnlyReminderIDProvider;
        v45[0] = v33;
        sub_10000B0D8(v45, v44);
        v35 = swift_allocObject();
        *(v35 + 16) = v26;
        sub_100005FD0(v44, v35 + 24);
        *(v35 + 64) = v2;

        sub_100586238(1, v30, sub_100283360, v35, v31, 0, v34);

        sub_1000079B4(v34, &qword_100772140, &qword_10062D9F0);
        (*(v38 + 8))(v31, v39);
        sub_1000079B4(v30, &unk_10078A380, &qword_10062DE60);
        (*(v28 + 8))(v43, v27);

        return sub_100004758(v45);
      }
    }
  }

  return result;
}

uint64_t sub_1002CBEB4()
{
  v0 = type metadata accessor for Calendar();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = sub_100058000(&qword_1007757F0, &unk_10062DE70);
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - v3;
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  static Locale.current.getter();
  static Calendar.current.getter();
  type metadata accessor for TTRShowScheduledSectionHeaderTitleFormatter();
  swift_allocObject();
  result = TTRShowScheduledSectionHeaderTitleFormatter.init(locale:calendar:allowsRelativeDates:referenceDateForYearAndEra:)();
  qword_1007794B8 = result;
  return result;
}

uint64_t sub_1002CC038@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v2 = type metadata accessor for TTRRemindersListViewModel.ListInfo.MacOS();
  __chkstk_darwin(v2 - 8);
  v47 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRRemindersListViewModel.ListInfo.IOS();
  __chkstk_darwin(v4 - 8);
  v46 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_1007693B0, &unk_100631DC0);
  __chkstk_darwin(v6 - 8);
  v45 = v35 - v7;
  v8 = sub_100058000(&qword_1007693B8, &unk_10062DEC0);
  __chkstk_darwin(v8 - 8);
  v43 = v35 - v9;
  v40 = type metadata accessor for TTRRemindersListViewModel.SupportsEditableSections();
  v10 = *(v40 - 8);
  __chkstk_darwin(v40);
  v49 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for TTRRemindersListSectionMenuCapabilities();
  v12 = *(v39 - 8);
  __chkstk_darwin(v39);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100058000(&unk_100780980, &unk_100631DD0);
  __chkstk_darwin(v15 - 8);
  v17 = v35 - v16;
  v18 = sub_100058000(&unk_100775640, &unk_10062DED0);
  __chkstk_darwin(v18 - 8);
  v20 = v35 - v19;
  v21 = enum case for TTRListType.PredefinedSmartListType.scheduled(_:);
  v22 = type metadata accessor for TTRListType.PredefinedSmartListType();
  (*(*(v22 - 8) + 104))(v20, v21, v22);
  v23 = enum case for TTRListType.predefinedSmartList(_:);
  v24 = type metadata accessor for TTRListType();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v20, v23, v24);
  (*(v25 + 56))(v20, 0, 1, v24);
  v26 = REMSmartListType.title.getter();
  v36 = v27;
  v37 = v26;
  v41 = static TTRListColors.SmartList.scheduled.getter();
  v28 = type metadata accessor for TTRRemindersListViewModel.ListSharingInfo();
  v29 = *(*(v28 - 8) + 56);
  v42 = v17;
  v29(v17, 1, 1, v28);
  v44 = v1;
  swift_getObjectType();
  v30 = dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter();
  if (v30)
  {
    swift_unknownObjectRelease();
  }

  TTRRemindersListSectionMenuCapabilities.init()();
  v38 = TTRRemindersListSectionMenuCapabilities.canSupportAddSection.getter();
  (*(v12 + 8))(v14, v39);
  v31 = dispatch thunk of TTRRemindersListDataModelSourceBaseType.deleteCompletedContext.getter();
  if (v31)
  {
    swift_unknownObjectRelease();
  }

  (*(v10 + 104))(v49, enum case for TTRRemindersListViewModel.SupportsEditableSections.unsupported(_:), v40);
  dispatch thunk of TTRRemindersListDataModelSourceBaseType.printingDataModelSource.getter();
  sub_1000079B4(v50, &qword_1007693C0, &unk_100631DE0);
  if (dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter())
  {
    swift_getObjectType();
    LODWORD(v40) = dispatch thunk of TTRRemindersListDataModelSourceShowCompletedContextType.showCompleted.getter();
    swift_unknownObjectRelease();
  }

  else
  {
    LODWORD(v40) = 0;
  }

  LODWORD(v39) = v31 != 0;
  v35[3] = v30 != 0;
  v32 = type metadata accessor for TTRRemindersListViewModel.HashtagsState();
  (*(*(v32 - 8) + 56))(v43, 1, 1, v32);
  v33 = type metadata accessor for TTRTemplatePublicLinkData();
  (*(*(v33 - 8) + 56))(v45, 1, 1, v33);
  TTRRemindersListViewModel.ListInfo.IOS.init(showsActionMenuButton:hasBottomInsetForPencilInput:usesFlatDiffableSnapshot_workaroundRdar135908527:)();
  TTRRemindersListViewModel.ListInfo.MacOS.init(wantsTopShadow:)();
  return TTRRemindersListViewModel.ListInfo.init(listType:name:color:reminderCount:sharingInfo:canCreateNewReminder:canToggleCompletedReminderVisbility:canAddSection:canClearCompletedReminders:canSaveAsTemplate:supportsEditableSections:canBePrinted:completedRemindersShown:hasDefaultNewReminderButton:completedRemindersCount:canBeDeleted:collapsedStatesAutosaveName:canCreateCustomSmartListForHashtagsState:hashtagsStateToShow:templateStatus:isOriginOfExistingTemplate:isPublicTemplatePreview:shouldCategorizeGroceryItems:shouldAutoCategorizeItems:isRecentlyDeletedList:iOS:macOS:)();
}

uint64_t sub_1002CC714@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4, v10);
  v13 = (*(v5 + 88))(v7, v4);
  if (v13 == enum case for TTRRemindersListViewModel.SectionID.named(_:))
  {
    (*(v9 + 56))(a2, 1, 1, v8);
    return (*(v5 + 8))(v7, v4);
  }

  if (v13 == enum case for TTRRemindersListViewModel.SectionID.objectID(_:))
  {
    goto LABEL_27;
  }

  if (v13 == enum case for TTRRemindersListViewModel.SectionID.scheduledPastDue(_:) || v13 == enum case for TTRRemindersListViewModel.SectionID.date(_:) || v13 == enum case for TTRRemindersListViewModel.SectionID.day(_:) || v13 == enum case for TTRRemindersListViewModel.SectionID.month(_:) || v13 == enum case for TTRRemindersListViewModel.SectionID.year(_:))
  {
    (*(v5 + 96))(v7, v4);
    v19 = *(v9 + 32);
    v19(v12, v7, v8);
    v19(a2, v12, v8);
    return (*(v9 + 56))(a2, 0, 1, v8);
  }

  v20 = v13 == enum case for TTRRemindersListViewModel.SectionID.eraAndYear(_:) || v13 == enum case for TTRRemindersListViewModel.SectionID.sectionless(_:);
  if (v20 || v13 == enum case for TTRRemindersListViewModel.SectionID.uncommittedEditingSection(_:))
  {
LABEL_27:
    (*(v5 + 8))(v7, v4);
    return (*(v9 + 56))(a2, 1, 1, v8);
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1002CCA14@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100058000(&qword_1007775C0, &unk_100637150);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&qword_1007757F0, &unk_10062DE70);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.SectionHeader.id.getter();
  sub_1002CC714(v8, v11);
  (*(v6 + 8))(v8, v5);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000079B4(v11, &qword_1007757F0, &unk_10062DE70);
    v16 = 1;
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    type metadata accessor for TTRReminderEditor();
    static TimeZone.current.getter();
    v17 = type metadata accessor for TimeZone();
    (*(*(v17 - 8) + 56))(v4, 0, 1, v17);
    static TTRReminderEditor.dueDateComponents(from:isAllDay:timeZone:)();
    sub_1000079B4(v4, &qword_1007775C0, &unk_100637150);
    (*(v13 + 8))(v15, v12);
    v16 = 0;
  }

  v18 = type metadata accessor for DateComponents();
  return (*(*(v18 - 8) + 56))(a1, v16, 1, v18);
}

uint64_t sub_1002CCD54()
{
  v1 = OBJC_IVAR____TtC9Reminders31TTRShowScheduledViewModelSource_cachedEmptyListMessaging;
  v2 = type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders31TTRShowScheduledViewModelSource_defaultSectionID, &qword_10076B070, &unk_100637140);
}

uint64_t sub_1002CCE0C()
{
  v0 = sub_10056FD38();
  v1 = OBJC_IVAR____TtC9Reminders31TTRShowScheduledViewModelSource_cachedEmptyListMessaging;
  v2 = type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType();
  v3 = *(*(v2 - 8) + 8);

  v3(v0 + v1, v2);
  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders31TTRShowScheduledViewModelSource_defaultSectionID, &qword_10076B070, &unk_100637140);

  return swift_deallocClassInstance();
}

void sub_1002CCF50(uint64_t a1)
{
  type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType();
  if (v1 <= 0x3F)
  {
    sub_1002D6670(319, &qword_100768A58, &type metadata accessor for TTRRemindersListViewModel.SectionID);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1002CD0A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v409 = a2;
  v4 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v4 - 8);
  v408 = v399 - v5;
  v6 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v6 - 8);
  v407 = v399 - v7;
  v505 = type metadata accessor for TimeZone();
  v510 = *(v505 - 8);
  __chkstk_darwin(v505);
  v504 = v399 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v532 = type metadata accessor for Date();
  v519 = *(v532 - 8);
  __chkstk_darwin(v532);
  v467 = v399 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v416 = v399 - v11;
  __chkstk_darwin(v12);
  v466 = v399 - v13;
  __chkstk_darwin(v14);
  v415 = v399 - v15;
  __chkstk_darwin(v16);
  v425 = v399 - v17;
  __chkstk_darwin(v18);
  v529 = v399 - v19;
  v20 = sub_100058000(&unk_10076B050, &unk_100631DF0);
  __chkstk_darwin(v20 - 8);
  v516 = v399 - v21;
  v530 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v517 = *(v530 - 8);
  __chkstk_darwin(v530);
  v465 = v399 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v424 = v399 - v24;
  __chkstk_darwin(v25);
  v464 = v399 - v26;
  __chkstk_darwin(v27);
  v423 = v399 - v28;
  __chkstk_darwin(v29);
  v434 = v399 - v30;
  __chkstk_darwin(v31);
  v528 = v399 - v32;
  __chkstk_darwin(v33);
  v520 = v399 - v34;
  __chkstk_darwin(v35);
  v470 = v399 - v36;
  v533 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
  v511 = *(v533 - 8);
  __chkstk_darwin(v533);
  v463 = v399 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v422 = v399 - v39;
  __chkstk_darwin(v40);
  v462 = v399 - v41;
  __chkstk_darwin(v42);
  v421 = v399 - v43;
  __chkstk_darwin(v44);
  v433 = v399 - v45;
  __chkstk_darwin(v46);
  v527 = v399 - v47;
  __chkstk_darwin(v48);
  v469 = v399 - v49;
  v535 = type metadata accessor for TTRRemindersListTreeViewModel.Section();
  v449 = *(v535 - 8);
  __chkstk_darwin(v535);
  v461 = v399 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v460 = v399 - v52;
  __chkstk_darwin(v53);
  v420 = v399 - v54;
  __chkstk_darwin(v55);
  v419 = v399 - v56;
  __chkstk_darwin(v57);
  v414 = v399 - v58;
  __chkstk_darwin(v59);
  v459 = v399 - v60;
  __chkstk_darwin(v61);
  v458 = v399 - v62;
  __chkstk_darwin(v63);
  v418 = v399 - v64;
  __chkstk_darwin(v65);
  v417 = v399 - v66;
  __chkstk_darwin(v67);
  v413 = v399 - v68;
  __chkstk_darwin(v69);
  v432 = v399 - v70;
  __chkstk_darwin(v71);
  v431 = v399 - v72;
  __chkstk_darwin(v73);
  v526 = v399 - v74;
  __chkstk_darwin(v75);
  v525 = v399 - v76;
  __chkstk_darwin(v77);
  v445 = v399 - v78;
  __chkstk_darwin(v79);
  v81 = v399 - v80;
  v531 = type metadata accessor for REMRemindersListDataView.ScheduledDateBucketsModel.Day();
  v452 = *(v531 - 8);
  __chkstk_darwin(v531);
  v472 = v399 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v83);
  v401 = v399 - v84;
  __chkstk_darwin(v85);
  v471 = v399 - v86;
  __chkstk_darwin(v87);
  v400 = v399 - v88;
  __chkstk_darwin(v89);
  v438 = v399 - v90;
  __chkstk_darwin(v91);
  v524 = v399 - v92;
  __chkstk_darwin(v93);
  v435 = v399 - v94;
  __chkstk_darwin(v95);
  v437 = v399 - v96;
  v97 = sub_100058000(&qword_1007757F0, &unk_10062DE70);
  __chkstk_darwin(v97 - 8);
  v446 = v399 - v98;
  v534 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v99 = *(v534 - 8);
  __chkstk_darwin(v534);
  v475 = v399 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v101);
  v429 = v399 - v102;
  __chkstk_darwin(v103);
  v474 = v399 - v104;
  __chkstk_darwin(v105);
  v428 = v399 - v106;
  __chkstk_darwin(v107);
  v448 = v399 - v108;
  __chkstk_darwin(v109);
  v436 = v399 - v110;
  __chkstk_darwin(v111);
  v523 = v399 - v112;
  __chkstk_darwin(v113);
  v522 = v399 - v114;
  __chkstk_darwin(v115);
  v478 = v399 - v116;
  v451 = type metadata accessor for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket();
  v473 = *(v451 - 8);
  __chkstk_darwin(v451);
  v477 = v399 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v118);
  v483 = v399 - v119;
  v120 = sub_100058000(&qword_10076B070, &unk_100637140);
  __chkstk_darwin(v120 - 8);
  v485 = v399 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v122);
  v484 = v399 - v123;
  v406 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v405 = *(v406 - 8);
  __chkstk_darwin(v406);
  v426 = v399 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_100058000(&qword_100769378, &qword_10062DE80);
  __chkstk_darwin(v125 - 8);
  v127 = v399 - v126;
  REMRemindersListDataView.ScheduledDateBucketsModel.remindersCount.getter();
  v128 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
  v129 = *(v128 - 8);
  v130 = (*(v129 + 48))(v127, 1, v128);
  if (v130 == 1)
  {
    sub_1000079B4(v127, &qword_100769378, &qword_10062DE80);
    v131 = 0;
  }

  else
  {
    v131 = REMRemindersListDataView.CountByCompleted.completed.getter();
    (*(v129 + 8))(v127, v128);
  }

  v132 = v99;
  v133 = v3 + OBJC_IVAR____TtC9Reminders31TTRShowScheduledViewModelSource_completedRemindersCount;
  *v133 = v131;
  *(v133 + 8) = v130 == 1;
  sub_1002CC038(v426);
  v539 = _swiftEmptyArrayStorage;
  v538 = &_swiftEmptySetSingleton;
  v134 = *(v3 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_nextDataModelUpdateOptions + 2) == 1;
  v447 = v81;
  v441 = v3;
  if (v134)
  {
    v137 = v530;
    v138 = v478;
    v139 = v451;
    if (_swiftEmptyArrayStorage >> 62)
    {
LABEL_142:
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        sub_1004054A4(_swiftEmptyArrayStorage);
        v136 = v398;
      }

      else
      {
        v136 = &_swiftEmptySetSingleton;
      }
    }

    else
    {
      v136 = &_swiftEmptySetSingleton;
    }
  }

  else
  {
    v135 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_recurrentReminderReplacements;
    swift_beginAccess();
    v537[0] = *(v3 + v135);

    sub_100058000(&qword_100777590, &qword_100637120);
    sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
    sub_10011763C(&qword_100777598, &qword_100777590, &qword_100637120);
    sub_1001288B4();
    v136 = Sequence.compactMapToSet<A>(_:)();

    v137 = v530;
    v138 = v478;
    v139 = v451;
  }

  v506 = v136;
  v140 = *(v132 + 56);
  v482 = (v132 + 56);
  v481 = v140;
  v140(v484, 1, 1, v534);
  v450 = REMRemindersListDataView.ScheduledDateBucketsModel.buckets.getter();
  v141 = *(v450 + 16);
  v439 = OBJC_IVAR____TtC9Reminders31TTRShowScheduledViewModelSource_tappedSectionHeaders;
  swift_beginAccess();
  v468 = v141;
  if (v141)
  {
    v399[1] = 0;
    v142 = 0;
    v457 = v473 + 16;
    v456 = v473 + 88;
    v455 = (v473 + 96);
    v440 = (v519 + 32);
    v503 = (v519 + 16);
    v515 = (v99 + 104);
    v508 = v452 + 16;
    v454 = enum case for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket.pastDue(_:);
    v518 = (v452 + 8);
    v521 = (v99 + 16);
    v444 = enum case for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket.nextFiveDays(_:);
    v514 = (v511 + 2);
    v513 = (v511 + 7);
    v430 = enum case for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket.day(_:);
    v512 = (v517 + 2);
    ++v517;
    v412 = enum case for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket.month(_:);
    ++v511;
    v486 = (v99 + 8);
    v502 = (v510 + 1);
    v404 = enum case for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket.year(_:);
    v507 = (v519 + 8);
    v480 = (v99 + 32);
    v443 = (v519 + 56);
    v403 = enum case for TTRRemindersListViewModel.SectionID.year(_:);
    v427 = (v519 + 48);
    v501 = enum case for TTRRemindersListViewModel.SectionID.day(_:);
    v402 = enum case for TTRRemindersListViewModel.SectionID.month(_:);
    v442 = enum case for TTRRemindersListViewModel.SectionID.scheduledPastDue(_:);
    v510 = (v449 + 16);
    v519 = v449 + 32;
    v509 = (v449 + 8);
    v453 = (v473 + 8);
    v132 = _swiftEmptyArrayStorage;
    v411 = (v452 + 32);
    v143 = v450;
    v99 = v137;
    while (1)
    {
      if (v142 >= *(v143 + 16))
      {
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
        goto LABEL_142;
      }

      v144 = v99;
      v500 = v132;
      v145 = v473;
      v146 = v143 + ((*(v145 + 80) + 32) & ~*(v145 + 80));
      v147 = *(v473 + 72);
      v479 = v142;
      v148 = *(v473 + 16);
      v149 = v483;
      v148(v483, v146 + v147 * v142, v139);
      v137 = v477;
      v148(v477, v149, v139);
      v150 = (*(v145 + 88))(v137, v139);
      if (v150 == v454)
      {
        (*v455)(v137, v139);
        v151 = *v137;
        v152 = *(*v137 + 16);
        v476 = *v137;
        v99 = v152;
        if (v152)
        {
          v137 = v452;
          v153 = v437;
          v154 = v531;
          (*(v452 + 16))(v437, v151 + ((*(v137 + 80) + 32) & ~*(v137 + 80)), v531);
          v155 = v446;
          REMRemindersListDataView.ScheduledDateBucketsModel.Day.date.getter();
          (*(v137 + 8))(v153, v154);
          v156 = v532;
          (*v443)(v155, 0, 1, v532);
          (*v440)(v138, v155, v156);
          v132 = v500;
          v139 = v517;
          v157 = v144;
        }

        else
        {
          v194 = v446;
          v195 = v532;
          (*v443)(v446, 1, 1, v532);
          Date.init()();
          v196 = (*v427)(v194, 1, v195);
          v132 = v500;
          v139 = v517;
          v157 = v144;
          if (v196 != 1)
          {
            sub_1000079B4(v446, &qword_1007757F0, &unk_10062DE70);
          }
        }

        v500 = *v515;
        v500(v138, v442, v534);
        v197 = v99;
        if (v99)
        {
          if (!*(v476 + 2))
          {
            goto LABEL_135;
          }

          v99 = v157;
          v198 = v452;
          v199 = v435;
          v200 = v531;
          (*(v452 + 16))(v435, v476 + ((*(v198 + 80) + 32) & ~*(v198 + 80)), v531);
          v138 = REMRemindersListDataView.ScheduledDateBucketsModel.Day.reminders.getter();
          (*(v198 + 8))(v199, v200);
        }

        else
        {
          v138 = _swiftEmptyArrayStorage;
          v99 = v157;
        }

        v201 = v506;
        v202 = sub_1002D19E8(v138, v506);
        if (qword_100767140 != -1)
        {
          v202 = swift_once();
        }

        v203 = qword_1007794B8;
        __chkstk_darwin(v202);
        v399[-2] = v201;
        v204 = v469;
        v499 = v203;
        TTRShowScheduledSectionHeaderTitleFormatter.title(for:isFirst:hasVisibleReminders:)();
        v498 = *v521;
        v498(v522, v478, v534);
        v205 = v516;
        v206 = v533;
        v497 = *v514;
        v497(v516, v204, v533);
        v496 = *v513;
        (v496)(v205, 0, 1, v206);
        v207 = v470;
        TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
        v495 = *v512;
        v495(v520, v207, v99);
        v208 = v447;
        TTRRemindersListTreeViewModel.Section.init(header:reminders:isDroppedWhenEmpty:)();
        v209 = v445;
        v494 = *v510;
        v494(v445, v208, v535);
        swift_beginAccess();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v132 = sub_1005472D4(0, *(v132 + 16) + 1, 1, v132);
        }

        v137 = v476;
        v211 = *(v132 + 16);
        v210 = *(v132 + 24);
        if (v211 >= v210 >> 1)
        {
          v132 = sub_1005472D4((v210 > 1), v211 + 1, 1, v132);
        }

        *(v132 + 16) = v211 + 1;
        v493 = ((*(v449 + 80) + 32) & ~*(v449 + 80));
        v492 = *(v449 + 72);
        v491 = *(v449 + 32);
        v491(v493 + v132 + v492 * v211, v209, v535);
        v539 = v132;
        swift_endAccess();
        v212 = *v139;
        (*v139)(v470, v99);
        v490 = *v511;
        v490(v469, v533);
        v213 = *(v137 + 16);
        if (v213 >= 2)
        {
          if (!v197)
          {
            goto LABEL_136;
          }

          if (v213 < v197)
          {
            goto LABEL_137;
          }

          v489 = v212;
          v214 = v197 - 1;
          if (v197 != 1)
          {
            v215 = v132;
            v216 = v452;
            v217 = (*(v452 + 80) + 32) & ~*(v452 + 80);

            swift_beginAccess();
            v218 = *(v216 + 72);
            v487 = *(v216 + 16);
            v488 = v218;
            v219 = v218 + v137 + v217;
            do
            {
              v487(v524, v219, v531);
              v220 = v529;
              v221 = REMRemindersListDataView.ScheduledDateBucketsModel.Day.date.getter();
              __chkstk_darwin(v221);
              v399[-2] = v506;
              v222 = v527;
              TTRShowScheduledSectionHeaderTitleFormatter.title(for:hasVisibleReminders:)();
              v223 = v523;
              (*v503)(v523, v220, v532);
              v224 = v534;
              v500(v223, v501, v534);
              v498(v522, v223, v224);
              v225 = v516;
              v226 = v533;
              v497(v516, v222, v533);
              (v496)(v225, 0, 1, v226);
              v227 = v528;
              TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
              v495(v520, v227, v530);
              REMRemindersListDataView.ScheduledDateBucketsModel.Day.reminders.getter();
              v228 = v525;
              TTRRemindersListTreeViewModel.Section.init(header:reminders:isDroppedWhenEmpty:)();
              v494(v526, v228, v535);
              swift_beginAccess();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v215 = sub_1005472D4(0, *(v215 + 16) + 1, 1, v215);
              }

              v230 = *(v215 + 16);
              v229 = *(v215 + 24);
              if (v230 >= v229 >> 1)
              {
                v215 = sub_1005472D4((v229 > 1), v230 + 1, 1, v215);
              }

              *(v215 + 16) = v230 + 1;
              v231 = v535;
              v491(v493 + v215 + v230 * v492, v526, v535);
              v539 = v215;
              swift_endAccess();
              v232 = v504;
              static TimeZone.current.getter();
              v233 = v529;
              v234 = Date.rem_isToday(in:)();
              (*v502)(v232, v505);
              (*v509)(v525, v231);
              v99 = v530;
              v489(v528);
              v490(v527, v533);
              (*v507)(v233, v532);
              (*v518)(v524, v531);
              if (v234)
              {
                v235 = v484;
                sub_1000079B4(v484, &qword_10076B070, &unk_100637140);
                v236 = v485;
                v237 = v534;
                (*v480)(v485, v523, v534);
                v481(v236, 0, 1, v237);
                sub_100016588(v236, v235, &qword_10076B070, &unk_100637140);
              }

              else
              {
                (*v486)(v523, v534);
              }

              v219 += v488;
              --v214;
            }

            while (v214);
            v137 = v476;

            v208 = v447;
            v132 = v215;
          }

          v212 = v489;
        }

        v250 = v520;
        TTRRemindersListTreeViewModel.Section.header.getter();
        v251 = TTRRemindersListViewModel.SectionHeader.isTappable.getter();
        v212(v250, v99);
        if (v251)
        {

          (*v509)(v208, v535);
          v138 = v478;
          (*v486)(v478, v534);
        }

        else
        {
          TTRRemindersListTreeViewModel.Section.header.getter();
          v252 = v522;
          TTRRemindersListViewModel.SectionHeader.id.getter();
          v212(v250, v99);
          swift_beginAccess();
          v253 = v485;
          sub_1000EA510(v252, v485);
          v254 = *v486;
          v255 = v534;
          (*v486)(v252, v534);
          sub_1000079B4(v253, &qword_10076B070, &unk_100637140);
          swift_endAccess();

          (*v509)(v208, v535);
          v138 = v478;
          v254(v478, v255);
        }

        v139 = v451;
        (*v453)(v483, v451);
      }

      else
      {
        if (v150 == v444)
        {
          v158 = v477;
          (*v455)(v477, v139);
          sub_100058000(&qword_100779B68, &qword_100638C60);

          if (qword_100767138 != -1)
          {
            swift_once();
          }

          v159 = type metadata accessor for Logger();
          sub_100003E30(v159, qword_1007794A0);
          v160 = Logger.logObject.getter();
          v161 = static os_log_type_t.fault.getter();
          v162 = os_log_type_enabled(v160, v161);
          v132 = v500;
          if (v162)
          {
            v163 = swift_slowAlloc();
            *v163 = 0;
            _os_log_impl(&_mh_execute_header, v160, v161, "iOS and macOS do not support the Next Five Days section", v163, 2u);
            v99 = v530;
          }

          (*v453)(v483, v139);
          (*v507)(v158, v532);
          v138 = v478;
          goto LABEL_11;
        }

        v137 = v520;
        if (v150 == v430)
        {
          v164 = v477;
          (*v455)(v477, v139);
          (*v411)(v438, v164, v531);
          v165 = v436;
          REMRemindersListDataView.ScheduledDateBucketsModel.Day.date.getter();
          v166 = v534;
          (*v515)(v165, v501, v534);
          v167 = REMRemindersListDataView.ScheduledDateBucketsModel.Day.reminders.getter();
          v168 = v506;
          v169 = sub_1002D19E8(v167, v506);
          v170 = v169;
          v132 = v500;
          if (qword_100767140 != -1)
          {
            v169 = swift_once();
          }

          __chkstk_darwin(v169);
          v399[-2] = v168;
          v171 = v433;
          TTRShowScheduledSectionHeaderTitleFormatter.title(for:isFirst:hasVisibleReminders:)();
          v172 = *v521;
          (*v521)(v522, v165, v166);
          v173 = v516;
          v174 = v171;
          v175 = v533;
          (*v514)(v516, v174, v533);
          (*v513)(v173, 0, 1, v175);
          v176 = v434;
          TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
          (*v512)(v520, v176, v530);
          v177 = v431;
          TTRRemindersListTreeViewModel.Section.init(header:reminders:isDroppedWhenEmpty:)();
          (*v510)(v432, v177, v535);
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v137 = v517;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v132 = sub_1005472D4(0, *(v132 + 16) + 1, 1, v132);
          }

          v179 = v438;
          v181 = *(v132 + 16);
          v180 = *(v132 + 24);
          v99 = v530;
          if (v181 >= v180 >> 1)
          {
            v132 = sub_1005472D4((v180 > 1), v181 + 1, 1, v132);
          }

          *(v132 + 16) = v181 + 1;
          (*(v449 + 32))(v132 + ((*(v449 + 80) + 32) & ~*(v449 + 80)) + *(v449 + 72) * v181, v432, v535);
          v539 = v132;
          swift_endAccess();
          if (v170)
          {
            v182 = v448;
            v172(v448, v436, v166);
            swift_beginAccess();
            v183 = v522;
            sub_10058D0CC(v522, v182);
            swift_endAccess();
            (*v486)(v183, v166);
          }

          (*v509)(v431, v535);
          (*v137)(v434, v99);
          (*v511)(v433, v533);
          v184 = v425;
          REMRemindersListDataView.ScheduledDateBucketsModel.Day.date.getter();
          v185 = v504;
          static TimeZone.current.getter();
          v186 = Date.rem_isToday(in:)();
          (*v502)(v185, v505);
          (*v507)(v184, v532);
          if (v186)
          {
            v187 = v484;
            sub_1000079B4(v484, &qword_10076B070, &unk_100637140);
            v188 = v485;
            v189 = v436;
            v172(v485, v436, v166);
            v481(v188, 0, 1, v166);
            sub_100016588(v188, v187, &qword_10076B070, &unk_100637140);
            v190 = v448;
            v172(v448, v189, v166);
            swift_beginAccess();
            v137 = v522;
            sub_10058D0CC(v522, v190);
            swift_endAccess();
            v191 = *v486;
            (*v486)(v137, v166);
            v191(v189, v166);
            v192 = *v518;
            v193 = v438;
          }

          else
          {
            (*v486)(v436, v166);
            v192 = *v518;
            v193 = v179;
          }

          v256 = &v539;
        }

        else
        {
          if (v150 == v412)
          {
            v238 = v477;
            (*v455)(v477, v139);
            v239 = *&v238[*(sub_100058000(&qword_100779B68, &qword_100638C60) + 48)];
            v240 = v415;
            v241 = v238;
            v242 = v532;
            (*v440)(v415, v241, v532);
            v243 = v428;
            v499 = *v503;
            v499(v428, v240, v242);
            v244 = v534;
            v498 = *v515;
            v498(v243, v402, v534);
            v245 = *(v239 + 16);
            if (v245)
            {
              v246 = v452;
              v247 = v400;
              v248 = v531;
              (*(v452 + 16))(v400, v239 + ((*(v246 + 80) + 32) & ~*(v246 + 80)), v531);
              v249 = REMRemindersListDataView.ScheduledDateBucketsModel.Day.reminders.getter();
              (*(v246 + 8))(v247, v248);
            }

            else
            {
              v249 = _swiftEmptyArrayStorage;
            }

            v410 = v239;
            v269 = v506;
            v270 = sub_1002D19E8(v249, v506);
            v271 = v270;
            if (qword_100767140 != -1)
            {
              v270 = swift_once();
            }

            v272 = qword_1007794B8;
            __chkstk_darwin(v270);
            v399[-2] = v269;
            v273 = v421;
            v497 = v272;
            TTRShowScheduledSectionHeaderTitleFormatter.title(for:isFirst:hasVisibleReminders:)();
            v476 = *v521;
            v476(v522, v428, v244);
            v274 = v516;
            v275 = v533;
            v496 = *v514;
            v496(v516, v273, v533);
            v495 = *v513;
            (v495)(v274, 0, 1, v275);
            v276 = v423;
            TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
            v494 = *v512;
            v494(v137, v276, v530);
            v277 = v417;
            TTRRemindersListTreeViewModel.Section.init(header:reminders:isDroppedWhenEmpty:)();
            v493 = *v510;
            v493(v418, v277, v535);
            swift_beginAccess();
            v139 = v500;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v139 = sub_1005472D4(0, v139[2] + 1, 1, v139);
            }

            v279 = v139[2];
            v278 = v139[3];
            v99 = v530;
            v280 = v506;
            if (v279 >= v278 >> 1)
            {
              v139 = sub_1005472D4((v278 > 1), v279 + 1, 1, v139);
            }

            v139[2] = (v279 + 1);
            v492 = (*(v449 + 80) + 32) & ~*(v449 + 80);
            v491 = *(v449 + 72);
            v500 = *(v449 + 32);
            v500(v139 + v492 + v491 * v279, v418, v535);
            v132 = v139;
            v539 = v139;
            swift_endAccess();
            if (v271)
            {
              v281 = v448;
              v282 = v534;
              v476(v448, v428, v534);
              swift_beginAccess();
              v283 = v522;
              sub_10058D0CC(v522, v281);
              swift_endAccess();
              (*v486)(v283, v282);
            }

            v138 = v517;
            v487 = *v517;
            (v487)(v423, v99);
            v490 = *v511;
            v490(v421, v533);
            v500(v413, v417, v535);
            v284 = v410;
            v285 = *(v410 + 16);
            if (v285 >= 2)
            {
              if (!v245)
              {
                goto LABEL_138;
              }

              if (v285 < v245)
              {
                goto LABEL_141;
              }

              v286 = v245 - 1;
              if (v286)
              {
                v287 = (*(v452 + 80) + 32) & ~*(v452 + 80);
                v288 = *(v452 + 72);
                v488 = *(v452 + 16);

                v489 = v288;
                v289 = v288 + v287 + v284;
                v290 = v471;
                v291 = v476;
                v292 = v487;
                do
                {
                  v488(v290, v289, v531);
                  v293 = v466;
                  v294 = REMRemindersListDataView.ScheduledDateBucketsModel.Day.date.getter();
                  __chkstk_darwin(v294);
                  v399[-2] = v280;
                  v295 = v462;
                  TTRShowScheduledSectionHeaderTitleFormatter.title(for:hasVisibleReminders:)();
                  v296 = v474;
                  v499(v474, v293, v532);
                  v297 = v534;
                  v498(v296, v501, v534);
                  v291(v522, v296, v297);
                  v298 = v516;
                  v299 = v295;
                  v290 = v471;
                  v300 = v533;
                  v496(v516, v299, v533);
                  (v495)(v298, 0, 1, v300);
                  v301 = v464;
                  TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
                  v494(v520, v301, v530);
                  REMRemindersListDataView.ScheduledDateBucketsModel.Day.reminders.getter();
                  v302 = v458;
                  TTRRemindersListTreeViewModel.Section.init(header:reminders:isDroppedWhenEmpty:)();
                  v493(v459, v302, v535);
                  swift_beginAccess();
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v132 = sub_1005472D4(0, *(v132 + 16) + 1, 1, v132);
                  }

                  v304 = *(v132 + 16);
                  v303 = *(v132 + 24);
                  if (v304 >= v303 >> 1)
                  {
                    v132 = sub_1005472D4((v303 > 1), v304 + 1, 1, v132);
                  }

                  *(v132 + 16) = v304 + 1;
                  v500(v132 + v492 + v304 * v491, v459, v535);
                  v539 = v132;
                  swift_endAccess();
                  v305 = REMRemindersListDataView.ScheduledDateBucketsModel.Day.reminders.getter();
                  v306 = sub_1002D19E8(v305, v280);

                  if (v306)
                  {
                    v307 = v448;
                    v308 = v534;
                    v291(v448, v474, v534);
                    swift_beginAccess();
                    v309 = v522;
                    sub_10058D0CC(v522, v307);
                    swift_endAccess();
                    v310 = v309;
                    v280 = v506;
                    (*v486)(v310, v308);
                  }

                  v311 = v504;
                  static TimeZone.current.getter();
                  v312 = v466;
                  v313 = Date.rem_isToday(in:)();
                  (*v502)(v311, v505);
                  (*v509)(v458, v535);
                  v292(v464, v530);
                  v490(v462, v533);
                  (*v507)(v312, v532);
                  (*v518)(v290, v531);
                  if (v313)
                  {
                    v314 = v484;
                    sub_1000079B4(v484, &qword_10076B070, &unk_100637140);
                    v315 = v485;
                    v316 = v534;
                    (*v480)(v485, v474, v534);
                    v481(v315, 0, 1, v316);
                    v291 = v476;
                    v292 = v487;
                    sub_100016588(v315, v314, &qword_10076B070, &unk_100637140);
                  }

                  else
                  {
                    (*v486)(v474, v534);
                  }

                  v289 = v489 + v289;
                  --v286;
                }

                while (v286);

                v99 = v530;
                v137 = v520;
              }
            }

            v365 = v413;
            TTRRemindersListTreeViewModel.Section.header.getter();
            v366 = TTRRemindersListViewModel.SectionHeader.isTappable.getter();
            v367 = v487;
            (v487)(v137, v99);
            v368 = v137;
            v137 = v441;
            if (v366)
            {

              (*v509)(v365, v535);
              (*v486)(v428, v534);
            }

            else
            {
              TTRRemindersListTreeViewModel.Section.header.getter();
              v369 = v522;
              TTRRemindersListViewModel.SectionHeader.id.getter();
              v367(v368, v99);
              swift_beginAccess();
              v370 = v485;
              sub_1000EA510(v369, v485);
              v371 = *v486;
              v372 = v369;
              v373 = v534;
              (*v486)(v372, v534);
              sub_1000079B4(v370, &qword_10076B070, &unk_100637140);
              swift_endAccess();

              (*v509)(v365, v535);
              v371(v428, v373);
            }

            v192 = *v507;
            v374 = &v447;
          }

          else
          {
            if (v150 != v404)
            {
              result = _diagnoseUnexpectedEnumCase<A>(type:)();
              __break(1u);
              return result;
            }

            v257 = v477;
            (*v455)(v477, v139);
            v258 = *&v257[*(sub_100058000(&qword_100779B68, &qword_100638C60) + 48)];
            v259 = v416;
            v260 = v257;
            v261 = v532;
            (*v440)(v416, v260, v532);
            v262 = v429;
            v499 = *v503;
            v499(v429, v259, v261);
            v263 = v534;
            v498 = *v515;
            v498(v262, v403, v534);
            v264 = *(v258 + 16);
            if (v264)
            {
              v265 = v452;
              v266 = v401;
              v267 = v531;
              (*(v452 + 16))(v401, v258 + ((*(v265 + 80) + 32) & ~*(v265 + 80)), v531);
              v268 = REMRemindersListDataView.ScheduledDateBucketsModel.Day.reminders.getter();
              (*(v265 + 8))(v266, v267);
            }

            else
            {
              v268 = _swiftEmptyArrayStorage;
            }

            v410 = v258;
            v317 = v506;
            v318 = sub_1002D19E8(v268, v506);
            v319 = v318;
            if (qword_100767140 != -1)
            {
              v318 = swift_once();
            }

            v320 = qword_1007794B8;
            __chkstk_darwin(v318);
            v399[-2] = v317;
            v321 = v422;
            v497 = v320;
            TTRShowScheduledSectionHeaderTitleFormatter.title(for:isFirst:hasVisibleReminders:)();
            v476 = *v521;
            v476(v522, v429, v263);
            v322 = v516;
            v323 = v533;
            v496 = *v514;
            v496(v516, v321, v533);
            v495 = *v513;
            (v495)(v322, 0, 1, v323);
            v324 = v424;
            TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
            v494 = *v512;
            v494(v137, v324, v530);
            v325 = v419;
            TTRRemindersListTreeViewModel.Section.init(header:reminders:isDroppedWhenEmpty:)();
            v493 = *v510;
            v493(v420, v325, v535);
            swift_beginAccess();
            v139 = v500;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v139 = sub_1005472D4(0, v139[2] + 1, 1, v139);
            }

            v327 = v139[2];
            v326 = v139[3];
            v99 = v530;
            v328 = v506;
            if (v327 >= v326 >> 1)
            {
              v139 = sub_1005472D4((v326 > 1), v327 + 1, 1, v139);
            }

            v139[2] = (v327 + 1);
            v492 = (*(v449 + 80) + 32) & ~*(v449 + 80);
            v491 = *(v449 + 72);
            v500 = *(v449 + 32);
            v500(v139 + v492 + v491 * v327, v420, v535);
            v132 = v139;
            v539 = v139;
            swift_endAccess();
            if (v319)
            {
              v329 = v448;
              v330 = v534;
              v476(v448, v429, v534);
              swift_beginAccess();
              v331 = v522;
              sub_10058D0CC(v522, v329);
              swift_endAccess();
              (*v486)(v331, v330);
            }

            v138 = v517;
            v487 = *v517;
            (v487)(v424, v99);
            v490 = *v511;
            v490(v422, v533);
            v500(v414, v419, v535);
            v332 = v410;
            v333 = *(v410 + 16);
            if (v333 >= 2)
            {
              if (!v264)
              {
                goto LABEL_139;
              }

              if (v333 < v264)
              {
                goto LABEL_140;
              }

              v334 = v264 - 1;
              if (v334)
              {
                v335 = (*(v452 + 80) + 32) & ~*(v452 + 80);
                v336 = *(v452 + 72);
                v488 = *(v452 + 16);

                v489 = v336;
                v337 = v336 + v335 + v332;
                v338 = v472;
                v339 = v476;
                v340 = v487;
                do
                {
                  v488(v338, v337, v531);
                  v341 = v467;
                  v342 = REMRemindersListDataView.ScheduledDateBucketsModel.Day.date.getter();
                  __chkstk_darwin(v342);
                  v399[-2] = v328;
                  v343 = v463;
                  TTRShowScheduledSectionHeaderTitleFormatter.title(for:hasVisibleReminders:)();
                  v344 = v475;
                  v499(v475, v341, v532);
                  v345 = v534;
                  v498(v344, v501, v534);
                  v339(v522, v344, v345);
                  v346 = v516;
                  v347 = v343;
                  v338 = v472;
                  v348 = v533;
                  v496(v516, v347, v533);
                  (v495)(v346, 0, 1, v348);
                  v349 = v465;
                  TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
                  v494(v520, v349, v530);
                  REMRemindersListDataView.ScheduledDateBucketsModel.Day.reminders.getter();
                  v350 = v460;
                  TTRRemindersListTreeViewModel.Section.init(header:reminders:isDroppedWhenEmpty:)();
                  v493(v461, v350, v535);
                  swift_beginAccess();
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v132 = sub_1005472D4(0, *(v132 + 16) + 1, 1, v132);
                  }

                  v352 = *(v132 + 16);
                  v351 = *(v132 + 24);
                  if (v352 >= v351 >> 1)
                  {
                    v132 = sub_1005472D4((v351 > 1), v352 + 1, 1, v132);
                  }

                  *(v132 + 16) = v352 + 1;
                  v500(v132 + v492 + v352 * v491, v461, v535);
                  v539 = v132;
                  swift_endAccess();
                  v353 = REMRemindersListDataView.ScheduledDateBucketsModel.Day.reminders.getter();
                  v354 = sub_1002D19E8(v353, v328);

                  if (v354)
                  {
                    v355 = v448;
                    v356 = v534;
                    v339(v448, v475, v534);
                    swift_beginAccess();
                    v357 = v522;
                    sub_10058D0CC(v522, v355);
                    swift_endAccess();
                    v358 = v357;
                    v328 = v506;
                    (*v486)(v358, v356);
                  }

                  v359 = v504;
                  static TimeZone.current.getter();
                  v360 = v467;
                  v361 = Date.rem_isToday(in:)();
                  (*v502)(v359, v505);
                  (*v509)(v460, v535);
                  v340(v465, v530);
                  v490(v463, v533);
                  (*v507)(v360, v532);
                  (*v518)(v338, v531);
                  if (v361)
                  {
                    v362 = v484;
                    sub_1000079B4(v484, &qword_10076B070, &unk_100637140);
                    v363 = v485;
                    v364 = v534;
                    (*v480)(v485, v475, v534);
                    v481(v363, 0, 1, v364);
                    v339 = v476;
                    v340 = v487;
                    sub_100016588(v363, v362, &qword_10076B070, &unk_100637140);
                  }

                  else
                  {
                    (*v486)(v475, v534);
                  }

                  v337 = v489 + v337;
                  --v334;
                }

                while (v334);

                v99 = v530;
                v137 = v520;
              }
            }

            v375 = v414;
            TTRRemindersListTreeViewModel.Section.header.getter();
            v376 = TTRRemindersListViewModel.SectionHeader.isTappable.getter();
            v377 = v487;
            (v487)(v137, v99);
            v378 = v137;
            v137 = v441;
            if (v376)
            {

              (*v509)(v375, v535);
              (*v486)(v429, v534);
            }

            else
            {
              TTRRemindersListTreeViewModel.Section.header.getter();
              v379 = v522;
              TTRRemindersListViewModel.SectionHeader.id.getter();
              v377(v378, v99);
              swift_beginAccess();
              v380 = v485;
              sub_1000EA510(v379, v485);
              v381 = *v486;
              v382 = v379;
              v383 = v534;
              (*v486)(v382, v534);
              sub_1000079B4(v380, &qword_10076B070, &unk_100637140);
              swift_endAccess();

              (*v509)(v375, v535);
              v381(v429, v383);
            }

            v192 = *v507;
            v374 = &v448;
          }

          v193 = *(v374 - 32);
          v256 = &v540;
        }

        v192(v193, *(v256 - 32));
        v139 = v451;
        (*v453)(v483, v451);
        v138 = v478;
      }

      v143 = v450;
LABEL_11:
      v142 = v479 + 1;
      if (v479 + 1 == v468)
      {
        goto LABEL_133;
      }
    }
  }

  v132 = _swiftEmptyArrayStorage;
LABEL_133:

  v384 = v441;
  *(v441 + OBJC_IVAR____TtC9Reminders31TTRShowScheduledViewModelSource_lastSectionsSnapshot) = v132;

  v385 = v484;
  swift_beginAccess();
  v386 = v485;
  sub_10000794C(v385, v485, &qword_10076B070, &unk_100637140);
  v387 = OBJC_IVAR____TtC9Reminders31TTRShowScheduledViewModelSource_defaultSectionID;
  swift_beginAccess();
  sub_1002D5734(v386, v384 + v387);
  swift_endAccess();
  swift_beginAccess();
  v388 = v538;
  *(v384 + OBJC_IVAR____TtC9Reminders31TTRShowScheduledViewModelSource_sectionHeadersNeedingPlaceholderReminderItems) = v538;

  swift_beginAccess();
  sub_1000EC0CC(v388);
  swift_endAccess();
  v389 = v405;
  v390 = v407;
  v391 = v406;
  (*(v405 + 16))(v407, v426, v406);
  (*(v389 + 56))(v390, 0, 1, v391);
  v392 = type metadata accessor for TTRRemindersListObjectIDOnlyReminderIDProvider();
  v393 = static TTRRemindersListReminderIDProviding<>.uniqueWithinTree.getter();
  v394 = type metadata accessor for TTRRemindersListViewModel.Item();
  v395 = v408;
  (*(*(v394 - 8) + 56))(v408, 1, 1, v394);
  v537[3] = v392;
  v537[4] = &protocol witness table for TTRRemindersListObjectIDOnlyReminderIDProvider;
  v537[0] = v393;
  sub_10000B0D8(v537, &v536);
  v396 = swift_allocObject();
  *(v396 + 16) = v132;
  sub_100005FD0(&v536, v396 + 24);
  *(v396 + 64) = v384;

  sub_100586238(1, v390, sub_100070528, v396, v409, 0, v395);

  sub_1000079B4(v395, &qword_100772140, &qword_10062D9F0);
  sub_1000079B4(v390, &unk_10078A380, &qword_10062DE60);
  sub_1000079B4(v484, &qword_10076B070, &unk_100637140);
  (*(v389 + 8))(v426, v391);

  sub_100004758(v537);
}

uint64_t sub_1002D19E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (!v8)
  {
    return 0;
  }

  sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
  v9 = 0;
  v11 = *(v5 + 16);
  v10 = v5 + 16;
  v32 = a2 & 0xC000000000000001;
  v33 = v11;
  v31 = a1 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
  v12 = *(v10 + 56);
  v13 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 < 0)
  {
    v13 = a2;
  }

  v27 = v4;
  v28 = v13;
  v29 = (v10 - 8);
  v30 = v12;
  v14 = a2 + 56;
  v25 = v8;
  v26 = v10;
  while (1)
  {
    v33(v7, v31 + v30 * v9, v4);
    v15 = REMRemindersListDataView.ReminderLite.objectID.getter();
    if (!v32)
    {
      break;
    }

    v16 = __CocoaSet.contains(_:)();

    (*v29)(v7, v4);
    if ((v16 & 1) == 0)
    {
      return 1;
    }

LABEL_15:
    if (++v9 == v8)
    {
      return 0;
    }
  }

  if (*(a2 + 16))
  {
    v17 = NSObject._rawHashValue(seed:)(*(a2 + 40));
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if ((*(v14 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
    {
      v20 = ~v18;
      while (1)
      {
        v21 = *(*(a2 + 48) + 8 * v19);
        v22 = static NSObject.== infix(_:_:)();

        if (v22)
        {
          break;
        }

        v19 = (v19 + 1) & v20;
        if (((*(v14 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      v4 = v27;
      (*v29)(v7, v27);

      v8 = v25;
      goto LABEL_15;
    }
  }

LABEL_17:
  (*v29)(v7, v27);

  return 1;
}

void *sub_1002D1C6C()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + *(type metadata accessor for MoveSubject(0) + 20));
  TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
  v10 = (*(v6 + 88))(v8, v5);
  if (v10 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:))
  {
    (*(v6 + 96))(v8, v5);
    (*(v2 + 32))(v4, v8, v1);
    v11 = TTRRemindersListViewModel.ReminderID.objectID.getter();
    v12 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_remReminderByObjectID;
    swift_beginAccess();
    v13 = *(v9 + v12);

    v14 = sub_10013F404(v11, v13);

    (*(v2 + 8))(v4, v1);
    return v14;
  }

  if (v10 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:) || v10 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:))
  {
    (*(v6 + 8))(v8, v5);
  }

  else if (v10 != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  return 0;
}

uint64_t sub_1002D1EF8@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for TTRRemindersListViewModel.Item.sectionsContainer(_:))
  {
LABEL_2:
    (*(v5 + 8))(v8, v4);
LABEL_3:
    *a1 = 0;
    type metadata accessor for TTRRemindersListReminderActionTarget(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (v9 == enum case for TTRRemindersListViewModel.Item.section(_:))
  {
    v11 = REMSmartListTypeScheduled;
    *a1 = REMSmartListTypeScheduled;
    type metadata accessor for TTRRemindersListReminderActionTarget(0);
    swift_storeEnumTagMultiPayload();
    v12 = *(v5 + 8);
    v13 = v11;
    return v12(v8, v4);
  }

  else
  {
    if (v9 == enum case for TTRRemindersListViewModel.Item.reminder(_:) || v9 == enum case for TTRRemindersListViewModel.Item.uncommittedReminder(_:) || v9 == enum case for TTRRemindersListViewModel.Item.placeholderReminder(_:) || v9 == enum case for TTRRemindersListViewModel.Item.completed(_:) || v9 == enum case for TTRRemindersListViewModel.Item.hashtags(_:) || v9 == enum case for TTRRemindersListViewModel.Item.templateStatus(_:) || v9 == enum case for TTRRemindersListViewModel.Item.tip(_:))
    {
      goto LABEL_2;
    }

    if (v9 == enum case for TTRRemindersListViewModel.Item.publicTemplatePreviewStatus(_:) || v9 == enum case for TTRRemindersListViewModel.Item.recentlyDeletedDisclaimer(_:))
    {
      goto LABEL_3;
    }

    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1002D2130@<X0>(char *a1@<X8>)
{
  v41 = a1;
  v2 = type metadata accessor for TTRRemindersListViewModel.Item();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v35 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v5 - 8);
  v34 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v32 - v8;
  v10 = sub_100058000(&qword_10076FA28, &unk_1006327A0);
  v38 = *(v10 - 8);
  v39 = v10;
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  v13 = sub_100058000(&qword_100773318, &unk_100634EF0);
  __chkstk_darwin(v13 - 8);
  v15 = &v32 - v14;
  v16 = sub_100058000(&qword_100773320, &unk_100638D00);
  v37 = *(v16 - 8);
  __chkstk_darwin(v16);
  v40 = &v32 - v17;
  type metadata accessor for RemindersInsertionRequest(0);
  v33 = *(v3 + 16);
  v33(v9, v1, v2);
  v36 = v3;
  (*(v3 + 56))(v9, 0, 1, v2);
  sub_1002D57C4(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);

  TTRDerivedTreeLocation.init(parent:index:)();
  TTRRemindersListTreeViewModel.actualInsertionLocation(at:)();
  v18 = v12;
  v19 = v37;
  (*(v38 + 8))(v18, v39);
  if ((*(v19 + 48))(v15, 1, v16) == 1)
  {

    v20 = &qword_100773318;
    v21 = &unk_100634EF0;
    v22 = v15;
LABEL_5:
    sub_1000079B4(v22, v20, v21);
    v25 = sub_100058000(&qword_10076C708, &unk_1006305C0);
    return (*(*(v25 - 8) + 56))(v41, 1, 1, v25);
  }

  (*(v19 + 32))(v40, v15, v16);
  v23 = v34;
  TTRBaseTreeLocation.parent.getter();
  v24 = v36;
  if ((*(v36 + 48))(v23, 1, v2) == 1)
  {
    (*(v19 + 8))(v40, v16);

    v20 = &qword_100772140;
    v21 = &qword_10062D9F0;
    v22 = v23;
    goto LABEL_5;
  }

  v27 = v35;
  (*(v24 + 32))(v35, v23, v2);
  v28 = sub_100058000(&qword_10076C708, &unk_1006305C0);
  v39 = *(v28 + 48);
  v29 = v41;
  v33(v41, v27, v2);
  v30 = v40;
  v31 = TTRBaseTreeLocation.index.getter();

  (*(v24 + 8))(v35, v2);
  (*(v19 + 8))(v30, v16);
  *&v29[v39] = v31;
  return (*(*(v28 - 8) + 56))(v29, 0, 1, v28);
}

double sub_1002D26CC@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v82 = a1;
  v89 = a2;
  v3 = sub_100058000(&qword_10076C6B8, &unk_100630540);
  __chkstk_darwin(v3 - 8);
  v5 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v77 - v7;
  __chkstk_darwin(v9);
  v11 = &v77 - v10;
  v12 = type metadata accessor for DateComponents();
  v83 = *(v12 - 8);
  __chkstk_darwin(v12);
  v88 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v87 = &v77 - v15;
  v16 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v85 = *(v16 - 8);
  v86 = v16;
  __chkstk_darwin(v16);
  v84 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100058000(&qword_1007775C0, &unk_100637150);
  __chkstk_darwin(v18 - 8);
  v20 = &v77 - v19;
  v21 = sub_100058000(&qword_100779D40, &unk_100638D10);
  __chkstk_darwin(v21 - 8);
  v23 = &v77 - v22;
  v24 = type metadata accessor for TTRRemindersListViewModel.Item();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v28 = &v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v25 + 16);
  v90 = v2;
  v29(v28, v2, v24, v26);
  v30 = (*(v25 + 88))(v28, v24);
  if (v30 == enum case for TTRRemindersListViewModel.Item.sectionsContainer(_:))
  {
    goto LABEL_2;
  }

  if (v30 == enum case for TTRRemindersListViewModel.Item.section(_:))
  {
    (*(v25 + 96))(v28, v24);
    v24 = v84;
    v37 = v85;
    (*(v85 + 32))(v84, v28, v86);
    type metadata accessor for RemindersInsertionRequest(0);
    sub_1002CCA14(v11);
    v25 = v83;
    v80 = *(v83 + 48);
    v81 = v83 + 48;
    if (v80(v11, 1, v12) == 1)
    {
      sub_1000079B4(v11, &qword_10076C6B8, &unk_100630540);
      v38 = type metadata accessor for Calendar();
      (*(*(v38 - 8) + 56))(v23, 1, 1, v38);
      v39 = type metadata accessor for TimeZone();
      (*(*(v39 - 8) + 56))(v20, 1, 1, v39);
      v40 = type metadata accessor for RemindersInsertionPlan(0);
      v41 = v89;
      v89[3] = v40;
      v41[4] = &off_10071E7A8;
      v42 = v24;
      v43 = sub_1000317B8(v41);
      DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
      (*(v37 + 8))(v42, v86);
      sub_1002D674C(v90, v43 + *(v40 + 28), type metadata accessor for RemindersInsertionRequest);
      v43[1] = _swiftEmptyArrayStorage;
      *v43 = 1;
      return result;
    }
  }

  else
  {
    if (v30 == enum case for TTRRemindersListViewModel.Item.reminder(_:) || v30 == enum case for TTRRemindersListViewModel.Item.uncommittedReminder(_:) || v30 == enum case for TTRRemindersListViewModel.Item.placeholderReminder(_:) || v30 == enum case for TTRRemindersListViewModel.Item.completed(_:) || v30 == enum case for TTRRemindersListViewModel.Item.hashtags(_:) || v30 == enum case for TTRRemindersListViewModel.Item.templateStatus(_:) || v30 == enum case for TTRRemindersListViewModel.Item.tip(_:))
    {
LABEL_2:
      (*(v25 + 8))(v28, v24);
LABEL_3:
      v31 = type metadata accessor for Calendar();
      (*(*(v31 - 8) + 56))(v23, 1, 1, v31);
      v32 = type metadata accessor for TimeZone();
      (*(*(v32 - 8) + 56))(v20, 1, 1, v32);
      v33 = type metadata accessor for RemindersInsertionPlan(0);
      v34 = v89;
      v89[3] = v33;
      v34[4] = &off_10071E7A8;
      v35 = sub_1000317B8(v34);
      DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
      sub_1002D674C(v90, v35 + *(v33 + 28), type metadata accessor for RemindersInsertionRequest);
      v35[1] = _swiftEmptyArrayStorage;
      *v35 = 1;
      return result;
    }

    if (v30 == enum case for TTRRemindersListViewModel.Item.publicTemplatePreviewStatus(_:) || v30 == enum case for TTRRemindersListViewModel.Item.recentlyDeletedDisclaimer(_:))
    {
      goto LABEL_3;
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  v78 = *(v25 + 32);
  v79 = v25 + 32;
  v44.n128_f64[0] = v78(v87, v11, v12);
  v45 = v90;
  sub_1002D3214(v44);
  if (v46)
  {
    (*(v85 + 8))(v24, v86);
    v47 = 1;
    v48 = v82;
    goto LABEL_51;
  }

  v48 = v82;
  v49 = *(v82 + 16);
  if (!v49)
  {
    v47 = 0;
    goto LABEL_50;
  }

  v50 = v82 + 32;
  v51 = (v25 + 56);
  v83 = v25 + 8;
  while (1)
  {
    sub_10000B0D8(v50, v91);
    v52 = v92;
    v53 = v93;
    sub_10000C36C(v91, v92);
    v54 = (*(v53 + 8))(v52, v53);
    if (!v54)
    {
      (*v51)(v8, 1, 1, v12);
LABEL_27:
      sub_1000079B4(v8, &qword_10076C6B8, &unk_100630540);
      goto LABEL_42;
    }

    v55 = v54;
    v56 = [v54 dueDateComponents];

    if (v56)
    {
      static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

      v57 = 0;
    }

    else
    {
      v57 = 1;
    }

    (*v51)(v5, v57, 1, v12);
    sub_100016588(v5, v8, &qword_10076C6B8, &unk_100630540);
    if (v80(v8, 1, v12) == 1)
    {
      goto LABEL_27;
    }

    v78(v88, v8, v12);
    v58 = DateComponents.year.getter();
    v60 = v59;
    v61 = DateComponents.year.getter();
    if (v60)
    {
      if ((v62 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    else if ((v62 & 1) != 0 || v58 != v61)
    {
LABEL_41:
      (*v83)(v88, v12);
      goto LABEL_42;
    }

    v63 = DateComponents.month.getter();
    v65 = v64;
    v66 = DateComponents.month.getter();
    if (v65)
    {
      if ((v67 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    else if ((v67 & 1) != 0 || v63 != v66)
    {
      goto LABEL_41;
    }

    v77 = DateComponents.day.getter();
    v69 = v68;
    v70 = v88;
    v71 = DateComponents.day.getter();
    v73 = v72;
    (*v83)(v70, v12);
    if (v69)
    {
      if (v73)
      {
        sub_100004758(v91);
        v47 = 1;
        goto LABEL_48;
      }

      goto LABEL_42;
    }

    if ((v73 & 1) == 0)
    {
      break;
    }

LABEL_42:
    sub_100004758(v91);
LABEL_43:
    v50 += 40;
    if (!--v49)
    {
      v47 = 0;
      goto LABEL_48;
    }
  }

  sub_100004758(v91);
  if (v77 != v71)
  {
    goto LABEL_43;
  }

  v47 = 1;
LABEL_48:
  v45 = v90;
  v48 = v82;
LABEL_50:
  (*(v85 + 8))(v84, v86);
LABEL_51:
  v74 = type metadata accessor for RemindersInsertionPlan(0);
  v75 = v89;
  v89[3] = v74;
  v75[4] = &off_10071E7A8;
  v76 = sub_1000317B8(v75);
  v78(v76 + *(v74 + 24), v87, v12);
  sub_1002D674C(v45, v76 + *(v74 + 28), type metadata accessor for RemindersInsertionRequest);
  v76[1] = v48;
  *v76 = v47;

  return result;
}

void sub_1002D3214(__n128 a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.Item();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + *(type metadata accessor for RemindersInsertionRequest(0) + 20)) >= 1)
  {
    v22 = v2;
    type metadata accessor for TTRRemindersListTreeViewModel();
    v21 = v3;

    v13 = dispatch thunk of TTRRemindersListTreeContentsQueryable.presentationTree.getter();

    swift_getObjectType();
    v23 = v13;
    (*(v10 + 16))(v8, v1, v9);
    (*(v10 + 56))(v8, 0, 1, v9);
    v14 = v22;
    dispatch thunk of TTRTreeContentsQueryable.child(_:of:)();
    sub_1000079B4(v8, &qword_100772140, &qword_10062D9F0);
    v15 = v21;
    swift_unknownObjectRelease();
    TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
    v16 = (*(v15 + 88))(v5, v14);
    if (v16 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:) || v16 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:))
    {
      (*(v10 + 8))(v12, v9);
      (*(v15 + 8))(v5, v14);
    }

    else if (v16 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:))
    {
      (*(v10 + 8))(v12, v9);
      (*(v15 + 8))(v5, v14);
    }

    else if (v16 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
    {
      (*(v10 + 8))(v12, v9);
    }

    else
    {
      if (qword_100767138 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100003E30(v17, qword_1007794A0);
      v18 = sub_100008E04(_swiftEmptyArrayStorage);
      v19 = sub_100008E04(_swiftEmptyArrayStorage);
      sub_1003F9818("Unknown reminder case", 21, 2uLL, v18, v19);
      __break(1u);
    }
  }
}

void *sub_1002D362C()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v13 = _swiftEmptyArrayStorage;
    sub_1004A24B0(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v4 = v1 + 32;
    do
    {
      sub_10000B0D8(v4, &v11);
      v12[24] = 1;
      v13 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_1004A24B0((v5 > 1), v6 + 1, 1);
        v3 = v13;
      }

      v3[2] = v6 + 1;
      v7 = &v3[6 * v6];
      v8 = v11;
      v9 = *v12;
      *(v7 + 57) = *&v12[9];
      v7[2] = v8;
      v7[3] = v9;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_1002D3718()
{
  v1 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v1 - 8);
  v3 = v14 - v2;
  v4 = sub_100058000(&qword_10076FA28, &unk_1006327A0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - v6;
  v14[1] = *(v0 + 8);

  sub_100058000(&qword_100773338, &qword_100638D50);
  v8 = type metadata accessor for TTRRemindersListViewModel.Item();
  sub_10011763C(&qword_100773340, &qword_100773338, &qword_100638D50);
  v9 = Sequence.completeCompactMap<A>(_:)();

  if (!v9)
  {
    return 0;
  }

  v10 = v0 + *(type metadata accessor for RemindersInsertionPlan(0) + 28);
  type metadata accessor for RemindersInsertionRequest(0);
  v11 = *(v8 - 8);
  (*(v11 + 16))(v3, v10, v8);
  (*(v11 + 56))(v3, 0, 1, v8);
  sub_1002D57C4(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);

  TTRDerivedTreeLocation.init(parent:index:)();
  v12 = TTRRemindersListTreeViewModel.steps(forMoving:to:)();

  (*(v5 + 8))(v7, v4);
  return v12;
}

uint64_t sub_1002D39FC@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 8);
  v5 = _swiftEmptyArrayStorage;
  v19 = _swiftEmptyArrayStorage;
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = v4 + 32;
    do
    {
      sub_10000B0D8(v7, v16);
      v8 = v17;
      v9 = v18;
      sub_10000C36C(v16, v17);
      v10 = (*(v9 + 8))(v8, v9);
      sub_100004758(v16);
      if (v10)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v5 = v19;
      }

      v7 += 40;
      --v6;
    }

    while (v6);
  }

  v11 = *(sub_100058000(&qword_100776350, &unk_100636920) + 48);
  *a1 = v5;
  v12 = *(type metadata accessor for RemindersInsertionPlan(0) + 24);
  v13 = type metadata accessor for DateComponents();
  (*(*(v13 - 8) + 16))(&a1[v11], v2 + v12, v13);
  v14 = type metadata accessor for TTRRemindersListMovingRemindersParams(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v14 - 8) + 56))(a1, 0, 1, v14);
}

uint64_t sub_1002D3BC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100058000(&qword_100779DE0, &qword_100638D58);
  __chkstk_darwin(v4 - 8);
  v6 = &v18[-v5 - 8];
  v7 = type metadata accessor for MoveSubject(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_10000B0D8(a1, v18);
  sub_100058000(&qword_100773368, &qword_100634F30);
  v11 = swift_dynamicCast();
  v12 = *(v8 + 56);
  if (v11)
  {
    v12(v6, 0, 1, v7);
    sub_1002D66C4(v6, v10, type metadata accessor for MoveSubject);
    v13 = type metadata accessor for TTRRemindersListViewModel.Item();
    v14 = *(v13 - 8);
    (*(v14 + 16))(a2, v10, v13);
    sub_1002D6EE0(v10, type metadata accessor for MoveSubject);
    return (*(v14 + 56))(a2, 0, 1, v13);
  }

  else
  {
    v12(v6, 1, 1, v7);
    sub_1000079B4(v6, &qword_100779DE0, &qword_100638D58);
    v16 = type metadata accessor for TTRRemindersListViewModel.Item();
    return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }
}

void sub_1002D3E6C(void *a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.Item();
  v51 = *(v2 - 8);
  __chkstk_darwin(v2);
  v71 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v47 - v5;
  v58 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v50 = *(v58 - 8);
  __chkstk_darwin(v58);
  v57 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v72 = *(v60 - 8);
  __chkstk_darwin(v60);
  v59 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&qword_100773300, &qword_100634ED0);
  __chkstk_darwin(v9 - 8);
  v11 = &v47 - v10;
  v69 = sub_100058000(&qword_100773308, &qword_100634ED8);
  __chkstk_darwin(v69);
  v13 = &v47 - v12;
  v14 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v55 = *(v14 - 8);
  __chkstk_darwin(v14);
  v56 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v73 = &v47 - v17;
  v19 = a1[3];
  v18 = a1[4];
  v20 = sub_10000C36C(a1, v19);
  v21 = *(v18 + 8);
  v68 = v20;
  v22 = v21(v19, v18);
  if (v22)
  {

    sub_1002D4788(v11);
    v23 = sub_100058000(&qword_100773310, &unk_100634EE0);
    if ((*(*(v23 - 8) + 48))(v11, 1, v23) == 1)
    {
      sub_1000079B4(v11, &qword_100773300, &qword_100634ED0);
    }

    else
    {
      v66 = *(v23 + 48);
      v67 = v21;
      v65 = *(v69 + 48);
      v24 = v13;
      v25 = *(v55 + 32);
      v25(v24, v11, v14);
      sub_1002D66C4(&v11[v66], &v24[v65], type metadata accessor for TTRRemindersListMatchedAttributeValue);
      v26 = *(v69 + 48);
      v25(v73, v24, v14);
      sub_1002D6EE0(&v24[v26], type metadata accessor for TTRRemindersListMatchedAttributeValue);
      v27 = v67(v19, v18);
      if (v27)
      {
        v28 = v27;
        v52 = v14;
        v29 = *&v70[*(type metadata accessor for AttributeMatchingRequest(0) + 24)];
        v68 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_tree;
        v69 = v29;

        v30 = [v28 objectID];
        v31 = TTRRemindersListTreeViewModel.existingReminderIDs(having:)();

        v67 = *(v31 + 16);
        if (v67)
        {
          v47 = v28;
          v32 = 0;
          v66 = v31 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
          v65 = v72 + 16;
          v64 = enum case for TTRRemindersListViewModel.Item.reminder(_:);
          v70 = (v51 + 1);
          v62 = (v51 + 6);
          v63 = (v51 + 13);
          v54 = (v51 + 11);
          v53 = enum case for TTRRemindersListViewModel.Item.section(_:);
          v61 = (v72 + 8);
          v51 += 12;
          v49 = (v50 + 4);
          v48 = (v55 + 8);
          ++v50;
          v34 = v59;
          v33 = v60;
          while (v32 < *(v31 + 16))
          {
            v36 = v6;
            v37 = v2;
            v38 = *(v72 + 16);
            v38(v34, v66 + *(v72 + 72) * v32, v33);
            v39 = v71;
            v38(v71, v34, v33);
            v2 = v37;
            v6 = v36;
            (*v63)(v39, v64, v2);

            TTRRemindersListTreeViewModel.parent(of:)();

            v40 = *v70;
            (*v70)(v39, v2);
            if ((*v62)(v36, 1, v2) == 1)
            {
              (*v61)(v34, v33);
              sub_1000079B4(v36, &qword_100772140, &qword_10062D9F0);
            }

            else
            {
              v41 = (*v54)(v36, v2);
              if (v41 == v53)
              {
                (*v51)(v36, v2);
                v43 = v57;
                v42 = v58;
                (*v49)(v57, v6, v58);
                v44 = v56;
                TTRRemindersListViewModel.SectionHeader.id.getter();
                sub_1002D57C4(&qword_100768B80, &type metadata accessor for TTRRemindersListViewModel.SectionID, &protocol conformance descriptor for TTRRemindersListViewModel.SectionID);
                v45 = v52;
                v46 = dispatch thunk of static Equatable.== infix(_:_:)();
                (*v48)(v44, v45);
                (*v50)(v43, v42);
                v33 = v60;
                v34 = v59;
                (*v61)(v59, v60);
                if (v46)
                {
                  v35 = v73;
LABEL_18:
                  v28 = v47;
                  goto LABEL_19;
                }
              }

              else
              {
                v33 = v60;
                v34 = v59;
                (*v61)(v59, v60);
                v40(v36, v2);
              }
            }

            ++v32;
            v35 = v73;
            if (v67 == v32)
            {
              goto LABEL_18;
            }
          }

          __break(1u);
        }

        else
        {
          v35 = v73;
LABEL_19:

          (*(v55 + 8))(v35, v52);
        }
      }

      else
      {
        (*(v55 + 8))(v73, v14);
      }
    }
  }
}

uint64_t sub_1002D4788@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100058000(&qword_10076C6B8, &unk_100630540);
  __chkstk_darwin(v2 - 8);
  v46 = &v41 - v3;
  v4 = type metadata accessor for DateComponents();
  v5 = *(v4 - 8);
  v47 = v4;
  v48 = v5;
  __chkstk_darwin(v4);
  v45 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v44 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&qword_10076C6F8, &qword_10063E530);
  __chkstk_darwin(v10 - 8);
  v12 = &v41 - v11;
  v13 = sub_100058000(&unk_100781910, &unk_1006305A0);
  __chkstk_darwin(v13 - 8);
  v15 = &v41 - v14;
  v16 = type metadata accessor for TTRRemindersListViewModel.Item();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v41 - v21;
  sub_1002D5170(v12);
  v23 = sub_100058000(&qword_10076C708, &unk_1006305C0);
  if ((*(*(v23 - 8) + 48))(v12, 1, v23) == 1)
  {
    sub_1000079B4(v12, &qword_10076C6F8, &qword_10063E530);
    v24 = sub_100058000(&qword_100773310, &unk_100634EE0);
    v25 = *(*(v24 - 8) + 56);
    v26 = a1;
  }

  else
  {
    v43 = a1;
    v27 = *(v17 + 32);
    v27(v15, v12, v16);
    v27(v22, v15, v16);
    (*(v17 + 16))(v19, v22, v16);
    v28 = (*(v17 + 88))(v19, v16);
    if (v28 == enum case for TTRRemindersListViewModel.Item.sectionsContainer(_:))
    {
      v29 = *(v17 + 8);
      v29(v22, v16);
      v29(v19, v16);
      v30 = v43;
    }

    else
    {
      if (v28 == enum case for TTRRemindersListViewModel.Item.section(_:))
      {
        (*(v17 + 96))(v19, v16);
        v31 = v44;
        (*(v44 + 32))(v9, v19, v7);
        type metadata accessor for AttributeMatchingRequest(0);
        v32 = v46;
        sub_1002CCA14(v46);
        v33 = v47;
        v34 = v48;
        if ((*(v48 + 48))(v32, 1, v47) != 1)
        {
          v37 = *(v34 + 32);
          v48 = v34 + 32;
          v42 = v37;
          v37(v45, v32, v33);
          v38 = sub_100058000(&qword_100773310, &unk_100634EE0);
          v39 = *(v38 + 48);
          v40 = v43;
          TTRRemindersListViewModel.SectionHeader.id.getter();
          (*(v31 + 8))(v9, v7);
          (*(v17 + 8))(v22, v16);
          v42(v40 + v39, v45, v47);
          type metadata accessor for TTRRemindersListMatchedAttributeValue(0);
          swift_storeEnumTagMultiPayload();
          return (*(*(v38 - 8) + 56))(v40, 0, 1, v38);
        }

        (*(v31 + 8))(v9, v7);
        (*(v17 + 8))(v22, v16);
        sub_1000079B4(v32, &qword_10076C6B8, &unk_100630540);
        v24 = sub_100058000(&qword_100773310, &unk_100634EE0);
        v25 = *(*(v24 - 8) + 56);
        v26 = v43;
        return v25(v26, 1, 1, v24);
      }

      v30 = v43;
      if (v28 == enum case for TTRRemindersListViewModel.Item.reminder(_:) || v28 == enum case for TTRRemindersListViewModel.Item.uncommittedReminder(_:) || v28 == enum case for TTRRemindersListViewModel.Item.placeholderReminder(_:) || v28 == enum case for TTRRemindersListViewModel.Item.completed(_:) || v28 == enum case for TTRRemindersListViewModel.Item.hashtags(_:) || v28 == enum case for TTRRemindersListViewModel.Item.templateStatus(_:) || v28 == enum case for TTRRemindersListViewModel.Item.tip(_:))
      {
        v35 = *(v17 + 8);
        v35(v22, v16);
        v35(v19, v16);
      }

      else
      {
        if (v28 != enum case for TTRRemindersListViewModel.Item.publicTemplatePreviewStatus(_:) && v28 != enum case for TTRRemindersListViewModel.Item.recentlyDeletedDisclaimer(_:))
        {
          result = _diagnoseUnexpectedEnumCase<A>(type:)();
          __break(1u);
          return result;
        }

        (*(v17 + 8))(v22, v16);
      }
    }

    v24 = sub_100058000(&qword_100773310, &unk_100634EE0);
    v25 = *(*(v24 - 8) + 56);
    v26 = v30;
  }

  return v25(v26, 1, 1, v24);
}

uint64_t sub_1002D4F08@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100058000(&qword_100773300, &qword_100634ED0);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_100058000(&qword_100773308, &qword_100634ED8);
  __chkstk_darwin(v5);
  v7 = &v16 - v6;
  sub_1002D4788(v4);
  v8 = sub_100058000(&qword_100773310, &unk_100634EE0);
  if ((*(*(v8 - 8) + 48))(v4, 1, v8) == 1)
  {
    sub_1000079B4(v4, &qword_100773300, &qword_100634ED0);
    v9 = 1;
  }

  else
  {
    v10 = *(v8 + 48);
    v11 = *(v5 + 48);
    v12 = type metadata accessor for TTRRemindersListViewModel.SectionID();
    v13 = *(v12 - 8);
    (*(v13 + 32))(v7, v4, v12);
    sub_1002D66C4(&v4[v10], &v7[v11], type metadata accessor for TTRRemindersListMatchedAttributeValue);
    sub_1002D66C4(&v7[*(v5 + 48)], a1, type metadata accessor for TTRRemindersListMatchedAttributeValue);
    (*(v13 + 8))(v7, v12);
    v9 = 0;
  }

  v14 = type metadata accessor for TTRRemindersListMatchedAttributeValue(0);
  return (*(*(v14 - 8) + 56))(a1, v9, 1, v14);
}

uint64_t sub_1002D5170@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v35 = type metadata accessor for TTRRemindersListViewModel.Item();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v31 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v3 - 8);
  v32 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v31 - v6;
  v34 = sub_100058000(&qword_10076FA28, &unk_1006327A0);
  v8 = *(v34 - 8);
  __chkstk_darwin(v34);
  v10 = &v31 - v9;
  v11 = sub_100058000(&qword_100773318, &unk_100634EF0);
  __chkstk_darwin(v11 - 8);
  v13 = &v31 - v12;
  v14 = sub_100058000(&qword_100773320, &unk_100638D00);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v31 - v16;
  type metadata accessor for AttributeMatchingRequest(0);
  sub_10000794C(v1, v7, &qword_100772140, &qword_10062D9F0);
  sub_1002D57C4(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);

  v18 = v35;
  TTRDerivedTreeLocation.init(parent:index:)();
  TTRRemindersListTreeViewModel.actualInsertionLocation(at:)();

  (*(v8 + 8))(v10, v34);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v19 = &qword_100773318;
    v20 = &unk_100634EF0;
    v21 = v13;
LABEL_5:
    sub_1000079B4(v21, v19, v20);
    v24 = sub_100058000(&qword_10076C708, &unk_1006305C0);
    return (*(*(v24 - 8) + 56))(v36, 1, 1, v24);
  }

  (*(v15 + 32))(v17, v13, v14);
  v22 = v32;
  TTRBaseTreeLocation.parent.getter();
  v23 = v33;
  if ((*(v33 + 48))(v22, 1, v18) == 1)
  {
    (*(v15 + 8))(v17, v14);
    v19 = &qword_100772140;
    v20 = &qword_10062D9F0;
    v21 = v22;
    goto LABEL_5;
  }

  v26 = v31;
  (*(v23 + 32))(v31, v22, v18);
  v27 = sub_100058000(&qword_10076C708, &unk_1006305C0);
  v28 = *(v27 + 48);
  v29 = v36;
  (*(v23 + 16))(v36, v26, v18);
  v30 = TTRBaseTreeLocation.index.getter();
  (*(v23 + 8))(v26, v18);
  (*(v15 + 8))(v17, v14);
  *(v29 + v28) = v30;
  return (*(*(v27 - 8) + 56))(v29, 0, 1, v27);
}

id sub_1002D56C0@<X0>(void *a1@<X8>)
{
  v2 = REMSmartListTypeScheduled;
  *a1 = REMSmartListTypeScheduled;
  type metadata accessor for TTRRemindersListReminderActionTarget(0);
  swift_storeEnumTagMultiPayload();

  return v2;
}

uint64_t sub_1002D5734(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10076B070, &unk_100637140);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002D57C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002D586C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9Reminders31TTRShowScheduledViewModelSource_defaultSectionID;
  swift_beginAccess();
  return sub_10000794C(v1 + v3, a1, &qword_10076B070, &unk_100637140);
}

uint64_t *sub_1002D5914(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 24);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
    *(a1 + v8) = *(a2 + v8);
  }

  return a1;
}

double sub_1002D59E4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v3 - 8) + 8))(a1, v3);

  return result;
}

uint64_t sub_1002D5A58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v7) = *(a2 + v7);

  return a1;
}

uint64_t sub_1002D5AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));

  return a1;
}

uint64_t sub_1002D5B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v7) = *(a2 + v7);
  return a1;
}

uint64_t sub_1002D5BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v7) = *(a2 + v7);

  return a1;
}

uint64_t sub_1002D5CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = type metadata accessor for TTRRemindersListViewModel.Item();
  if (v6 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_1002D5D6C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.Item();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      v9 = sub_100058000(&qword_100772140, &qword_10062D9F0);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(a1, a2, v7);
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    v11 = *(a3 + 24);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
    *(a1 + v11) = *(a2 + v11);
  }

  return a1;
}

double sub_1002D5EF0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.Item();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1, v3))
  {
    (*(v4 + 8))(a1, v3);
  }

  return result;
}

char *sub_1002D5FBC(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = sub_100058000(&qword_100772140, &qword_10062D9F0);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = *(a3 + 24);
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  *&a1[v9] = *&a2[v9];

  return a1;
}

char *sub_1002D60F8(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 24))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v11 = sub_100058000(&qword_100772140, &qword_10062D9F0);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 16))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];

  return a1;
}

char *sub_1002D62A8(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = sub_100058000(&qword_100772140, &qword_10062D9F0);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = *(a3 + 24);
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  *&a1[v9] = *&a2[v9];
  return a1;
}

char *sub_1002D63E0(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 40))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v11 = sub_100058000(&qword_100772140, &qword_10062D9F0);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 32))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  v12 = *(a3 + 24);
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  *&a1[v12] = *&a2[v12];

  return a1;
}

void sub_1002D65AC(uint64_t a1)
{
  sub_1002D6670(319, &qword_100780930, &type metadata accessor for TTRRemindersListViewModel.Item);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_1002D6670(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_1002D66C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002D674C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

char *sub_1002D67B4(char *a1, char *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v15 = *a2;
    *v3 = *a2;
    v3 = (v15 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    *(a1 + 1) = *(a2 + 1);
    v5 = *(a3 + 24);
    v8 = type metadata accessor for DateComponents();
    v9 = *(*(v8 - 8) + 16);

    v9(&v3[v5], &a2[v5], v8);
    v10 = *(a3 + 28);
    v11 = &v3[v10];
    v12 = &a2[v10];
    v13 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v13 - 8) + 16))(v11, v12, v13);
    v14 = type metadata accessor for RemindersInsertionRequest(0);
    *&v11[*(v14 + 20)] = *&v12[*(v14 + 20)];
    *&v11[*(v14 + 24)] = *&v12[*(v14 + 24)];
  }

  return v3;
}

double sub_1002D6908(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 24);
  v5 = type metadata accessor for DateComponents();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  v6 = a1 + *(a2 + 28);
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v7 - 8) + 8))(v6, v7);
  type metadata accessor for RemindersInsertionRequest(0);

  return result;
}

uint64_t sub_1002D69D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for DateComponents();
  v8 = *(*(v7 - 8) + 16);

  v8(a1 + v6, a2 + v6, v7);
  v9 = *(a3 + 28);
  v10 = a1 + v9;
  v11 = a2 + v9;
  v12 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v12 - 8) + 16))(v10, v11, v12);
  v13 = type metadata accessor for RemindersInsertionRequest(0);
  *(v10 + *(v13 + 20)) = *(v11 + *(v13 + 20));
  *(v10 + *(v13 + 24)) = *(v11 + *(v13 + 24));

  return a1;
}

uint64_t sub_1002D6AE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v6 = *(a3 + 24);
  v7 = type metadata accessor for DateComponents();
  (*(*(v7 - 8) + 24))(a1 + v6, a2 + v6, v7);
  v8 = *(a3 + 28);
  v9 = a1 + v8;
  v10 = a2 + v8;
  v11 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v11 - 8) + 24))(v9, v10, v11);
  v12 = type metadata accessor for RemindersInsertionRequest(0);
  *(v9 + *(v12 + 20)) = *(v10 + *(v12 + 20));
  *(v9 + *(v12 + 24)) = *(v10 + *(v12 + 24));

  return a1;
}

uint64_t sub_1002D6BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for DateComponents();
  (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
  v8 = *(a3 + 28);
  v9 = a1 + v8;
  v10 = a2 + v8;
  v11 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v11 - 8) + 32))(v9, v10, v11);
  v12 = type metadata accessor for RemindersInsertionRequest(0);
  *(v9 + *(v12 + 20)) = *(v10 + *(v12 + 20));
  *(v9 + *(v12 + 24)) = *(v10 + *(v12 + 24));
  return a1;
}

uint64_t sub_1002D6CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v6 = *(a3 + 24);
  v7 = type metadata accessor for DateComponents();
  (*(*(v7 - 8) + 40))(a1 + v6, a2 + v6, v7);
  v8 = *(a3 + 28);
  v9 = a1 + v8;
  v10 = a2 + v8;
  v11 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v11 - 8) + 40))(v9, v10, v11);
  v12 = type metadata accessor for RemindersInsertionRequest(0);
  *(v9 + *(v12 + 20)) = *(v10 + *(v12 + 20));
  *(v9 + *(v12 + 24)) = *(v10 + *(v12 + 24));

  return a1;
}

uint64_t sub_1002D6E00(uint64_t a1)
{
  result = type metadata accessor for DateComponents();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for RemindersInsertionRequest(319);
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002D6EE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002D6F4C()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100779DE8);
  v1 = sub_100003E30(v0, qword_100779DE8);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002D7014(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10054161C();
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1002D707C()
{
  if (*(v0 + 56))
  {
    sub_1002D7384();

    static NSUndoManager.removeObserver(with:)();

    sub_10003B788(v0 + 16);

    swift_deallocClassInstance();
  }

  else
  {
    __break(1u);
  }
}

void sub_1002D7140(uint64_t a1)
{
  if (a1)
  {
    if (qword_100767148 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100003E30(v1, qword_100779DE8);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v12 = v4;
      *v3 = 136315138;
      swift_getErrorValue();
      v5 = Error.localizedDescription.getter();
      v7 = sub_100004060(v5, v6, &v12);

      *(v3 + 4) = v7;
      _os_log_impl(&_mh_execute_header, oslog, v2, "Error saving group: %s", v3, 0xCu);
      sub_100004758(v4);

      return;
    }
  }

  else
  {
    if (qword_100767148 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100003E30(v8, qword_100779DE8);
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v9, "Group saved!", v10, 2u);
    }
  }
}

unint64_t sub_1002D7384()
{
  result = qword_100788D40;
  if (!qword_100788D40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100788D40);
  }

  return result;
}

uint64_t sub_1002D73D0()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100779EC8);
  v1 = sub_100003E30(v0, qword_100779EC8);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002D7498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[8] = v7;
  v5[9] = v6;

  return _swift_task_switch(sub_1002D7538, v7, v6);
}

uint64_t sub_1002D7538()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_1002D7668;
    v3 = v0[4];
    v4 = v0[5];
    v5 = v0[2];
    v6 = v0[3];

    return UIViewController.present<A>(alert:actions:didPresent:animated:)(v5, v6, v3, 0, 0, 1, v4);
  }

  else
  {

    (*(*(v0[5] - 8) + 56))(v0[2], 1, 1);
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1002D7668()
{
  v1 = *v0;
  v2 = *(*v0 + 80);

  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return _swift_task_switch(sub_1002D77A8, v4, v3);
}

uint64_t sub_1002D77A8()
{

  (*(*(v0[5] - 8) + 56))(v0[2], 0, 1);
  v1 = v0[1];

  return v1();
}

void sub_1002D7840(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_10013F350();
    v3 = static HLPHelpViewController.viewController(forShowing:)();
    if (v3)
    {
      oslog = v3;
      [v2 presentViewController:? animated:? completion:?];

      goto LABEL_9;
    }
  }

  if (qword_100767150 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003E30(v4, qword_100779EC8);
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v5, "Attempted to open help with an empty view controller or HLPHelpViewController", v6, 2u);
  }

LABEL_9:
}

uint64_t sub_1002D7988()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1002D79EC()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100779F88);
  v1 = sub_100003E30(v0, qword_100779F88);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1002D7B70()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for TTRListDetailViewModel(0);
  *&v4 = __chkstk_darwin(v3).n128_u64[0];
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.receiver = v1;
  v15.super_class = ObjectType;
  objc_msgSendSuper2(&v15, "viewDidLoad", v4);
  v7 = [v1 view];
  if (v7)
  {
    v8 = v7;
    objc_opt_self();
    v9 = swift_dynamicCastObjCClassUnconditional();
    v10 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 1.0, 8.0}];
    [v9 setTableHeaderView:v10];

    sub_1002D7D6C();
    v11 = [v1 navigationItem];
    v12 = *&v1[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_presenter + 8];
    v13 = swift_getObjectType();
    (*(*(v12 + 8) + 8))(v13);

    sub_1002DE6EC(v6, type metadata accessor for TTRListDetailViewModel);
    v14 = String._bridgeToObjectiveC()();

    [v11 setTitle:v14];

    sub_1002D7F28();
  }

  else
  {
    __break(1u);
  }
}

void sub_1002D7D6C()
{
  v1 = [v0 navigationItem];
  v2 = objc_allocWithZone(UIBarButtonItem);
  v3 = v0;
  v4 = [v2 initWithBarButtonSystemItem:1 target:v3 action:"didTapCancel:"];
  [v1 setLeftBarButtonItem:v4];

  v5 = [v3 navigationItem];
  v6 = [v5 leftBarButtonItem];

  swift_unknownObjectWeakAssign();
  v7 = [v3 navigationItem];
  v8 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:v3 action:"didTapDone:"];

  [v7 setRightBarButtonItem:v8];
  v9 = [v3 navigationItem];
  v10 = [v9 rightBarButtonItem];

  swift_unknownObjectWeakAssign();
}

void sub_1002D7F28()
{
  v1 = type metadata accessor for TTRITableDataController.BatchUpdatesApplication();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRTableViewAnimations();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_tableDataController;
  if (!*&v0[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_tableDataController])
  {
    v22 = [v0 view];
    if (v22)
    {
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v21 = v11;
        sub_100058000(&qword_10076B780, &qword_10062D7C0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100634FC0;
        v13 = v0;
        *(inited + 32) = sub_1002D874C();
        *(inited + 40) = sub_1002DD3BC(&OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___filtersSection, sub_1002DAB48);
        *(inited + 48) = sub_1002D8958();
        *(inited + 56) = sub_1002D8B38();
        *(inited + 64) = sub_1002D8D18();
        v24 = sub_1002DE848();
        v25 = &protocol witness table for UITableView;
        v23 = v21;
        v22 = v22;
        sub_1003E09F0(inited);

        (*(v6 + 104))(v9, enum case for TTRTableViewAnimations.fade(_:), v5);
        v14 = objc_allocWithZone(type metadata accessor for TTRITableDataController());
        v15 = TTRITableDataController.init(tableView:sections:rowInsertionAnimationType:collapseSectionIfItemsAreHidden:)();
        TTRITableDataController.customSectionSpacing.setter();
        v16 = *&v13[v10];
        *&v13[v10] = v15;
        v17 = v15;

        v18 = v21;
        [v21 setDataSource:v17];
        [v18 setDelegate:v17];
        v19 = (*(v2 + 104))(v4, enum case for TTRITableDataController.BatchUpdatesApplication.reload(_:), v1);
        __chkstk_darwin(v19);
        *(&v21 - 2) = v13;
        TTRITableDataController.performBatchUpdates(by:updates:)();

        (*(v2 + 8))(v4, v1);
      }

      else
      {
        v20 = v22;
      }
    }
  }
}

id sub_1002D8308(char a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "viewWillAppear:", a1 & 1);
  result = [v1 view];
  if (result)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClassUnconditional();
    v8[3] = sub_1002DE848();
    v8[4] = &protocol witness table for UITableView;
    v8[0] = v4;
    UIViewController.deselectRowsAlongsideTransition(for:animated:)();
    sub_100004758(v8);
    v5 = UIViewController.effectiveNavigationControllerForBars.getter();
    if (v5)
    {
      v6 = a1 & 1;
      v7 = v5;
      [v5 setToolbarHidden:1 animated:v6];
    }

    sub_1002DE800(&qword_10077A100, type metadata accessor for TTRIListDetailViewController, &unk_100638EF0);
    return TTRKeyboardAvoidance<>.startAvoidingKeyboard()();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1002D848C(char a1)
{
  v2 = v1;
  v13.receiver = v2;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "viewDidAppear:", a1 & 1);
  [v2 becomeFirstResponder];
  v4 = *&v2[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_presenter + 8];
  ObjectType = swift_getObjectType();
  if (((*(v4 + 16))(ObjectType, v4) & 1) == 0)
  {
    sub_1002DD3BC(&OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___nameCell, sub_1002DA8A8);
    v6 = TTRITableCell.content.getter();

    v7 = TTRITextCellContent.currentText.getter();
    v9 = v8;

    if (!v9)
    {
      goto LABEL_6;
    }

    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (!v10)
    {
LABEL_6:
      v11 = OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_autoBeginEditingPerformed;
      if ((v2[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_autoBeginEditingPerformed] & 1) == 0)
      {

        v12 = TTRITableCell.content.getter();

        TTRITextCellContent.beginEditing()();

        v2[v11] = 1;
      }
    }
  }
}

uint64_t sub_1002D874C()
{
  v1 = sub_100058000(&qword_100777BC0, &unk_100633890);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v18 - v5;
  v7 = OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___badgeSection;
  if (*(v0 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___badgeSection))
  {
    v8 = *(v0 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___badgeSection);
  }

  else
  {
    v9 = type metadata accessor for TTRITableSectionHeaderFooter();
    v10 = *(*(v9 - 8) + 56);
    v10(v6, 1, 1, v9);
    v10(v3, 1, 1, v9);
    sub_100058000(&qword_1007768B0, &qword_1006338A0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_10062D3F0;
    v12 = v0;
    v13 = sub_1002DA5C0();
    v14 = sub_1002DE894(&unk_100780820, &qword_10077A0F8, &unk_100638FC0);
    *(v11 + 32) = v13;
    *(v11 + 40) = v14;
    v15 = sub_1002DD3BC(&OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___nameCell, sub_1002DA8A8);
    v16 = sub_1002DE894(&unk_10077A110, &unk_100780800, &qword_100638FB8);
    *(v11 + 48) = v15;
    *(v11 + 56) = v16;
    type metadata accessor for TTRITableSection();
    swift_allocObject();
    v8 = TTRITableSection.init(header:footer:items:)();
    *(v12 + v7) = v8;
  }

  return v8;
}

uint64_t sub_1002D8958()
{
  v1 = sub_100058000(&qword_100777BC0, &unk_100633890);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v16 - v5;
  v7 = OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___colorsSection;
  if (*(v0 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___colorsSection))
  {
    v8 = *(v0 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___colorsSection);
  }

  else
  {
    v9 = type metadata accessor for TTRITableSectionHeaderFooter();
    v10 = *(*(v9 - 8) + 56);
    v10(v6, 1, 1, v9);
    v10(v3, 1, 1, v9);
    sub_100058000(&qword_1007768B0, &qword_1006338A0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_10062D400;
    v12 = v0;
    v13 = sub_1002DD3BC(&OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___colorsCell, sub_1002DCE58);
    v14 = sub_1002DE894(&qword_10077A108, &qword_10077A090, &unk_100638F68);
    *(v11 + 32) = v13;
    *(v11 + 40) = v14;
    type metadata accessor for TTRITableSection();
    swift_allocObject();
    v8 = TTRITableSection.init(header:footer:items:)();
    *(v12 + v7) = v8;
  }

  return v8;
}

uint64_t sub_1002D8B38()
{
  v1 = sub_100058000(&qword_100777BC0, &unk_100633890);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v16 - v5;
  v7 = OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___emblemsSection;
  if (*(v0 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___emblemsSection))
  {
    v8 = *(v0 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___emblemsSection);
  }

  else
  {
    v9 = type metadata accessor for TTRITableSectionHeaderFooter();
    v10 = *(*(v9 - 8) + 56);
    v10(v6, 1, 1, v9);
    v10(v3, 1, 1, v9);
    sub_100058000(&qword_1007768B0, &qword_1006338A0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_10062D400;
    v12 = v0;
    v13 = sub_1002DD3BC(&OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___emblemsCell, sub_1002DD128);
    v14 = sub_1002DE894(&qword_10077A088, &qword_10077A080, &qword_100638F60);
    *(v11 + 32) = v13;
    *(v11 + 40) = v14;
    type metadata accessor for TTRITableSection();
    swift_allocObject();
    v8 = TTRITableSection.init(header:footer:items:)();
    *(v12 + v7) = v8;
  }

  return v8;
}

uint64_t sub_1002D8D18()
{
  v1 = sub_100058000(&qword_100777BC0, &unk_100633890);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v16 - v5;
  v7 = OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___makeListIntoCustomSmartListSection;
  if (*(v0 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___makeListIntoCustomSmartListSection))
  {
    v8 = *(v0 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___makeListIntoCustomSmartListSection);
  }

  else
  {
    v9 = type metadata accessor for TTRITableSectionHeaderFooter();
    v10 = *(*(v9 - 8) + 56);
    v10(v6, 1, 1, v9);
    v10(v3, 1, 1, v9);
    sub_100058000(&qword_1007768B0, &qword_1006338A0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_10062D400;
    v12 = v0;
    v13 = sub_1002DD3BC(&OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___makeListIntoCustomSmartListActionCell, sub_1002DD424);
    v14 = sub_1002DE894(&qword_10077A070, &qword_10077A078, &qword_100638F58);
    *(v11 + 32) = v13;
    *(v11 + 40) = v14;
    type metadata accessor for TTRITableSection();
    swift_allocObject();
    v8 = TTRITableSection.init(header:footer:items:)();
    *(v12 + v7) = v8;
  }

  return v8;
}

uint64_t sub_1002D8EF8()
{
  v1 = type metadata accessor for TTRListColors.Color();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRListDetailViewModel(0);
  __chkstk_darwin(v5);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v0 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_presenter + 8);
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 8);
  (*(v10 + 8))(ObjectType, v10);
  sub_1002D918C(v7);
  sub_1002D947C(v7);
  sub_1002D9688(v7);
  v11 = (*(v10 + 16))(ObjectType, v10);
  TTRListDetailBadgeViewModel.badgeColor.getter();
  v12 = sub_1000DC0DC(v4, v11);
  LOBYTE(ObjectType) = v13;

  (*(v2 + 8))(v4, v1);
  sub_1002DD3BC(&OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___colorsCell, sub_1002DCE58);
  v14 = TTRITableCell.content.getter();

  v20 = v12;
  v21 = ObjectType & 1;
  TTRITableCellContent.state.setter();

  sub_1002D9B90(v7);
  sub_1002D9FB0(v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    object = v7->_object;
    v17 = v7->_countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    if ((object & 0x2000000000000000) != 0)
    {
      v17 = HIBYTE(object) & 0xF;
    }

    v18 = Strong;
    [Strong setEnabled:v17 != 0];
  }

  return sub_1002DE6EC(v7, type metadata accessor for TTRListDetailViewModel);
}

void sub_1002D918C(uint64_t a1)
{
  v2 = type metadata accessor for TTRListDetailViewModelBadge();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRListDetailBadgeViewModel();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRIListDetailBadgeCellContentState(0);
  __chkstk_darwin(v10);
  v12 = (&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1002DA5C0();
  v27 = TTRITableCell.content.getter();

  v13 = type metadata accessor for TTRListDetailViewModel(0);
  v14 = *(v7 + 16);
  v15 = a1 + *(v13 + 20);
  v28 = v6;
  v14(v9, v15, v6);
  TTRListDetailBadgeViewModel.badge.getter();
  v16 = (*(v3 + 88))(v5, v2);
  if (v16 == enum case for TTRListDetailViewModelBadge.emblem(_:))
  {
    (*(v3 + 96))(v5, v2);
    v17 = *v5;
    v18 = REMListBadgeEmblem.image.getter();

    v19 = v18;
    v20 = 0;
    v21 = 0;
LABEL_5:
    TTRListDetailBadgeViewModel.badgeColor.getter();
    v22 = TTRListDetailBadgeViewModel.badgeName.getter();
    v24 = v23;
    TTRListDetailBadgeViewModel.badgeDisplayStyle.getter();

    (*(v7 + 8))(v9, v28);
    *v12 = v18;
    v12[1] = v20;
    v12[2] = v21;
    v25 = (v12 + *(v10 + 28));
    *v25 = v22;
    v25[1] = v24;
    v26 = v27;
    TTRITableCellContent.state.setter();

    return;
  }

  if (v16 == enum case for TTRListDetailViewModelBadge.emoji(_:))
  {
    (*(v3 + 96))(v5, v2);
    v18 = 0;
    v20 = *v5;
    v21 = *(v5 + 1);
    goto LABEL_5;
  }

  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

void sub_1002D947C(Swift::String *a1)
{
  v2 = type metadata accessor for TTRListColors.Color();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1002DD3BC(&OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___nameCell, sub_1002DA8A8);
  v6 = TTRITableCell.content.getter();

  TTRITextCellContent.setTextIfNotEditing(_:)(*a1);

  v7 = TTRITableCell.content.getter();

  type metadata accessor for TTRListDetailViewModel(0);
  TTRListDetailBadgeViewModel.badgeColor.getter();
  TTRListColors.Color.nativeColor.getter();
  (*(v3 + 8))(v5, v2);
  v8 = TTRITableCellContent.state.modify();
  TTRITextCellContentState.textColor.setter();
  v8(v11, 0);

  v9 = TTRITableCell.content.getter();

  v10 = TTRITableCellContent.state.modify();
  TTRITextCellContentState.placeholder.setter();
  v10(v11, 0);
}

void sub_1002D9688(uint64_t a1)
{
  v3 = type metadata accessor for TTRRemindersListListType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&qword_100777BC0, &unk_100633890);
  __chkstk_darwin(v7 - 8);
  v9 = v34 - v8;
  v10 = sub_100058000(&qword_100776880, &qword_1006337B0);
  __chkstk_darwin(v10 - 8);
  v12 = v34 - v11;
  sub_1002DD3BC(&OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___filtersSection, sub_1002DAB48);
  sub_1002DC634(a1, v1);
  TTRITableSection.isHidden.setter();

  if ((sub_1002DC634(a1, v1) & 1) == 0)
  {
    v37 = type metadata accessor for TTRListDetailViewModel(0);
    v13 = v37[14];
    v14 = (a1 + v37[13]);
    v15 = v14[1];
    if (v15)
    {
      v16 = *v14;
    }

    else
    {
      v16 = 0;
    }

    v17 = 0xE000000000000000;
    if (v15)
    {
      v17 = v15;
    }

    v34[0] = v17;
    v34[1] = v16;
    v36 = *(a1 + v13);
    swift_bridgeObjectRetain_n();
    sub_1002DD3BC(&OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___listTypeCell, sub_1002DB598);
    v18 = TTRITableCell.content.getter();

    sub_1002DC828(a1, v12);
    v19 = type metadata accessor for TTRIStaticTableViewStandardCell.Icon();
    (*(*(v19 - 8) + 56))(v12, 0, 1, v19);
    v20 = TTRITableCellContent.state.modify();
    v38 = v3;
    v21 = v20;
    sub_100058000(&qword_10077A098, &qword_100638F78);
    v35 = v6;
    TTRIOptionMenuCellContentState.icon.setter();
    v21(v39, 0);

    v22 = TTRITableCell.content.getter();

    v23 = TTRITableCellContent.state.modify();
    TTRIOptionMenuCellContentState.title.setter();
    v23(v39, 0);

    sub_1002DD3BC(&OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___filtersCell, sub_1002DB0F8);
    v24 = TTRITableCell.content.getter();

    v25 = TTRITableCellContent.state.modify();
    TTRIDetailCellState.title.setter();
    v25(v39, 0);

    v26 = TTRITableCell.content.getter();

    v27 = v36;
    v28 = TTRITableCellContent.state.modify();
    TTRIDetailCellState.subtitle.setter();
    v28(v39, 0);

    v29 = v38;

    sub_1002DCB08(a1, v1, v9);
    TTRITableSection.footer.setter();

    sub_1002DD3BC(&OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___editFiltersCell, sub_1002DC1EC);
    v30 = a1 + v37[17];
    v31 = v35;
    (*(v4 + 16))(v35, v30, v29);
    v32 = (*(v4 + 88))(v31, v29);
    v33 = v32 == enum case for TTRRemindersListListType.standard(_:) || v32 == enum case for TTRRemindersListListType.groceries(_:);
    if (v33 || v32 == enum case for TTRRemindersListListType.smartList(_:))
    {
      TTRITableCell.isHidden.setter();
    }

    else
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }
  }
}

void sub_1002D9B90(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRListDetailViewModelBadge();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1002D8B38();
  v8 = TTRITableSection.isHidden.getter();

  if (v8)
  {
    goto LABEL_25;
  }

  type metadata accessor for TTRListDetailViewModel(0);
  TTRListDetailBadgeViewModel.badge.getter();
  v9 = (*(v5 + 88))(v7, v4);
  v41[1] = a1;
  if (v9 == enum case for TTRListDetailViewModelBadge.emblem(_:))
  {
    (*(v5 + 96))(v7, v4);
    v10 = *v7;
    v11 = *(v1 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_presenter + 8);
    ObjectType = swift_getObjectType();
    v13 = (*(*(v11 + 8) + 24))(ObjectType);
    v14 = v13;
    v43 = *(v13 + 16);
    if (v43)
    {
      v15 = 0;
      v16 = (v13 + 56);
      v42 = v13;
      while (v15 < *(v14 + 16))
      {
        if (*v16)
        {
          v17 = *(v16 - 3);
          v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v20 = v19;
          if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
          {
            v36 = v17;

            v26 = v10;
            v37 = v10;

            v29 = 0;
            goto LABEL_23;
          }

          v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v24 = v17;

          v25 = v10;
          v26 = v10;
          v27 = v2;
          v28 = v25;

          v2 = v27;
          v10 = v26;

          v14 = v42;
          if (v23)
          {
            v29 = 0;
            goto LABEL_23;
          }
        }

        ++v15;
        v16 += 4;
        if (v43 == v15)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_27;
    }

LABEL_20:
    v26 = v10;
    v15 = 0;
    v29 = 1;
LABEL_23:

    goto LABEL_24;
  }

  if (v9 == enum case for TTRListDetailViewModelBadge.emoji(_:))
  {
    (*(v5 + 8))(v7, v4);
    v30 = *(v1 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_presenter + 8);
    v31 = swift_getObjectType();
    v32 = (*(*(v30 + 8) + 24))(v31);
    v33 = *(v32 + 16);
    if (v33)
    {
      v15 = 0;
      v34 = 56;
      while (1)
      {
        v35 = *(v32 + v34);
        v29 = v35 != 0;
        if (!v35)
        {
          break;
        }

        ++v15;
        v34 += 32;
        if (v33 == v15)
        {
          v15 = 0;
          break;
        }
      }
    }

    else
    {
      v15 = 0;
      v29 = 1;
    }

LABEL_24:

    sub_1002DD3BC(&OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___emblemsCell, sub_1002DD128);
    v38 = TTRITableCell.content.getter();

    v39 = TTRITableCellContent.state.modify();
    *v40 = v15;
    *(v40 + 8) = v29;
    v39(v44, 0);

LABEL_25:
    type metadata accessor for TTRListDetailViewModel(0);

    TTRITableSection.isHidden.setter();

    return;
  }

LABEL_27:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

double sub_1002D9FB0(uint64_t a1)
{
  v40 = a1;
  v1 = sub_100058000(&qword_100777BC0, &unk_100633890);
  __chkstk_darwin(v1 - 8);
  v39 = &v33 - v2;
  v3 = sub_100058000(&qword_100776A30, &qword_100636E80);
  __chkstk_darwin(v3 - 8);
  v36 = &v33 - v4;
  v5 = sub_100058000(&qword_100776A38, &qword_100636E88);
  __chkstk_darwin(v5 - 8);
  v34 = &v33 - v6;
  v7 = type metadata accessor for TTRIHelpLinkHeaderFooterContentConfiguration();
  v37 = *(v7 - 8);
  v38 = v7;
  __chkstk_darwin(v7);
  v35 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v33 - v10;
  v41 = type metadata accessor for UIListContentConfiguration();
  v12 = *(v41 - 8);
  __chkstk_darwin(v41);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v33 - v16;
  v18 = type metadata accessor for TTRLearnMoreContent();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for TTRIHelpLinkHeaderFooterContentConfiguration.LearnMore();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v40) = *(v40 + *(type metadata accessor for TTRListDetailViewModel(0) + 40));
  if (v40 == 1)
  {
    (*(v19 + 104))(v21, enum case for TTRLearnMoreContent.customSmartList(_:), v18);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = v25;
    TTRIHelpLinkHeaderFooterContentConfiguration.LearnMore.init(content:action:)();
    static UIListContentConfiguration.groupedFooter()();
    static TTRLocalizableStrings.ConvertToCustomSmartListAlert.detailsForFooter.getter();
    UIListContentConfiguration.attributedText.setter();
    (*(v12 + 16))(v14, v17, v41);
    v26 = type metadata accessor for TTRIHelpLinkHeaderFooterContentConfiguration.Help();
    (*(*(v26 - 8) + 56))(v34, 1, 1, v26);
    v27 = v36;
    (*(v23 + 16))(v36, v25, v22);
    (*(v23 + 56))(v27, 0, 1, v22);
    TTRIHelpLinkHeaderFooterContentConfiguration.init(listContentConfiguration:help:learnMore:)();
    sub_1002D8D18();
    v29 = v37;
    v28 = v38;
    (*(v37 + 16))(v35, v11, v38);
    sub_1002DE800(&qword_100776A50, &type metadata accessor for TTRIHelpLinkHeaderFooterContentConfiguration, &protocol conformance descriptor for TTRIHelpLinkHeaderFooterContentConfiguration);
    v30 = v39;
    TTRITableSectionHeaderFooter.init<A>(contentProvider:height:)();
    v31 = type metadata accessor for TTRITableSectionHeaderFooter();
    (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
    TTRITableSection.footer.setter();

    (*(v29 + 8))(v11, v28);
    (*(v12 + 8))(v17, v41);
    (*(v23 + 8))(v33, v22);
  }

  sub_1002D8D18();
  TTRITableSection.isHidden.setter();

  return result;
}

uint64_t sub_1002DA5C0()
{
  v1 = OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___badgeCell;
  if (*(v0 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___badgeCell))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___badgeCell);
  }

  else
  {
    v2 = sub_1002DA624();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1002DA624()
{
  v0 = type metadata accessor for TTRITableCellContentPrototypeCellView();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRIListDetailBadgeCellContentState(0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = (&v20 - v9);
  v11 = REMListBadgeEmblem.image.getter();
  type metadata accessor for TTRListColors();
  static TTRListColors.defaultColor.getter();
  v12 = *(v5 + 40);
  v13 = enum case for TTRListDetailViewModelBadgeDisplayStyle.list(_:);
  v14 = type metadata accessor for TTRListDetailViewModelBadgeDisplayStyle();
  (*(*(v14 - 8) + 104))(v10 + v12, v13, v14);
  v10[1] = 0;
  v10[2] = 0;
  *v10 = v11;
  v15 = (v10 + *(v5 + 36));
  v16 = type metadata accessor for TTRIListDetailBadgeCellContent(0);
  *v15 = 0;
  v15[1] = 0;
  v17 = objc_allocWithZone(v16);
  v18 = &v17[qword_100773438];
  *v18 = 0;
  *(v18 + 1) = 0;
  sub_1002DE684(v10, v7, type metadata accessor for TTRIListDetailBadgeCellContentState);
  (*(v1 + 104))(v3, enum case for TTRITableCellContentPrototypeCellView.cellClass(_:), v0);
  TTRITableCellContent.init(state:prototypeCellView:reuseIdentifier:)();
  sub_1002DE6EC(v10, type metadata accessor for TTRIListDetailBadgeCellContentState);
  sub_100058000(&qword_10077A0F8, &unk_100638FC0);
  swift_allocObject();
  return TTRITableCell.init(_:)();
}

uint64_t sub_1002DA8A8()
{
  v0 = type metadata accessor for TTRITextCellContentStateChangeEvent();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for TTRITextCellContentState();
  __chkstk_darwin(v1 - 8);
  [objc_allocWithZone(NSAttributedString) init];
  v2._countAndFlagsBits = 0x6D614E207473694CLL;
  v3._object = 0x800000010067E940;
  v2._object = 0xE900000000000065;
  v3._countAndFlagsBits = 0xD000000000000026;
  TTRLocalizedString(_:comment:)(v2, v3);
  TTRITextCellContentState.init(attributedText:placeholder:)();
  static TTRITextCellContentStateChangeEvent.editingChanged.getter();
  v4 = objc_allocWithZone(sub_100058000(&qword_10077A0F0, &qword_100638FB0));
  TTRITextCellContent.init(textAutocapitalizationType:keyboardType:state:stateChangeEvent:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  TTRITextCellContent.stateChangeBlock.setter();

  sub_100058000(&unk_100780800, &qword_100638FB8);
  swift_allocObject();
  return TTRITableCell.init(_:)();
}

char *sub_1002DAA88(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *&result[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_presenter + 8];
    v4 = result;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v5 = TTRITextCellContentState.text.getter();
    (*(*(v3 + 8) + 32))(v5);

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1002DAB48(uint64_t a1)
{
  v2 = sub_100058000(&qword_100777BC0, &unk_100633890);
  __chkstk_darwin(v2 - 8);
  v46 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v45 = &v38 - v5;
  v47 = type metadata accessor for TTRListDetailViewModel(0) - 8;
  __chkstk_darwin(v47);
  v43 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v38 - v8;
  v10 = type metadata accessor for TTRRemindersListListType();
  v42 = *(v10 - 8);
  v11 = v42;
  __chkstk_darwin(v10);
  v39 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v38 - v14;
  v44 = a1;
  v16 = *(a1 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_presenter + 8);
  ObjectType = swift_getObjectType();
  v41 = v16;
  v18 = *(v16 + 8);
  v19 = *(v18 + 8);
  v19(ObjectType, v18);
  (*(v11 + 16))(v15, &v9[*(v47 + 76)], v10);
  sub_1002DE6EC(v9, type metadata accessor for TTRListDetailViewModel);
  v20 = v43;
  v40 = ObjectType;
  v19(ObjectType, v18);
  v21 = v42;
  LODWORD(v16) = *(v20 + *(v47 + 56));
  sub_1002DE6EC(v20, type metadata accessor for TTRListDetailViewModel);
  if (v16 != 1 || (v22 = v39, (*(v21 + 104))(v39, enum case for TTRRemindersListListType.smartList(_:), v10), sub_1002DE800(&qword_10077A0B0, &type metadata accessor for TTRRemindersListListType, &protocol conformance descriptor for TTRRemindersListListType), v23 = dispatch thunk of static Equatable.== infix(_:_:)(), (*(v21 + 8))(v22, v10), (v23)) && ((*(v41 + 16))(v40))
  {
    v31 = type metadata accessor for TTRITableSectionHeaderFooter();
    v32 = *(*(v31 - 8) + 56);
    v32(v45, 1, 1, v31);
    v32(v46, 1, 1, v31);
    sub_100058000(&qword_1007768B0, &qword_1006338A0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_10062D400;
    v34 = sub_1002DD3BC(&OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___filtersCell, sub_1002DB0F8);
    v35 = sub_1002DE894(&qword_10077A0D8, &qword_10077A0A8, &qword_100638F88);
    *(v33 + 32) = v34;
    *(v33 + 40) = v35;
  }

  else
  {
    v24 = type metadata accessor for TTRITableSectionHeaderFooter();
    v25 = *(*(v24 - 8) + 56);
    v25(v45, 1, 1, v24);
    v25(v46, 1, 1, v24);
    sub_100058000(&qword_1007768B0, &qword_1006338A0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_10062D3F0;
    v27 = sub_1002DD3BC(&OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___listTypeCell, sub_1002DB598);
    v28 = sub_1002DE894(&qword_10077A0E0, &qword_10077A0C0, &unk_100638FA0);
    *(v26 + 32) = v27;
    *(v26 + 40) = v28;
    v29 = sub_1002DD3BC(&OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___editFiltersCell, sub_1002DC1EC);
    v30 = sub_1002DE894(&qword_10077A0E8, &qword_10077A0A0, &qword_100638F80);
    *(v26 + 48) = v29;
    *(v26 + 56) = v30;
  }

  type metadata accessor for TTRITableSection();
  swift_allocObject();
  v36 = TTRITableSection.init(header:footer:items:)();
  (*(v21 + 8))(v15, v10);
  return v36;
}

uint64_t sub_1002DB0F8(uint64_t a1)
{
  v31 = a1;
  v1 = type metadata accessor for TTRIDetailCellState.CheckmarkState();
  v29 = *(v1 - 8);
  v30 = v1;
  __chkstk_darwin(v1);
  v3 = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRListColors.Color();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_100776880, &qword_1006337B0);
  __chkstk_darwin(v8 - 8);
  v10 = v28 - v9;
  v11 = type metadata accessor for TTRIDetailCellState();
  __chkstk_darwin(v11 - 8);
  v12._countAndFlagsBits = 0x737265746C6946;
  v13._countAndFlagsBits = 0xD000000000000032;
  v13._object = 0x800000010067E810;
  v12._object = 0xE700000000000000;
  v14 = TTRLocalizedString(_:comment:)(v12, v13);
  v28[1] = v14._object;
  v28[2] = v14._countAndFlagsBits;
  v15._countAndFlagsBits = 0xD000000000000025;
  v15._object = 0x800000010067E850;
  v16._object = 0x800000010067E880;
  v16._countAndFlagsBits = 0xD000000000000024;
  TTRLocalizedString(_:comment:)(v15, v16);
  v17 = String._bridgeToObjectiveC()();
  v18 = [objc_opt_self() _systemImageNamed:v17];

  type metadata accessor for TTRListColors();
  static TTRListColors.defaultColor.getter();
  TTRListColors.Color.nativeColor.getter();
  (*(v5 + 8))(v7, v4);
  TTRIStaticTableViewStandardCell.RoundRectIcon.init(image:tintColor:backgroundColor:)();
  v19 = enum case for TTRIStaticTableViewStandardCell.Icon.roundRectIcon(_:);
  v20 = type metadata accessor for TTRIStaticTableViewStandardCell.Icon();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v10, v19, v20);
  (*(v21 + 56))(v10, 0, 1, v20);
  v22 = objc_allocWithZone(NSAttributedString);
  v23 = String._bridgeToObjectiveC()();

  [v22 initWithString:v23];

  (*(v29 + 104))(v3, enum case for TTRIDetailCellState.CheckmarkState.notSupported(_:), v30);
  TTRIDetailCellState.init(icon:title:titleTextColor:subtitle:detailText:detailTextColor:shortenedDetailText:checkmarkState:accessibilityLabel:accessibilityValue:accessibilityHint:accessibilityDifferentiateWithoutColorsIcon:)();
  v24 = objc_allocWithZone(type metadata accessor for TTRIDetailDisclosureCellContent());
  v25 = TTRIDetailDisclosureCellContent.init(state:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = v25;

  dispatch thunk of TTRIGenericCellContent.action.setter();

  sub_100058000(&qword_10077A0A8, &qword_100638F88);
  swift_allocObject();
  return TTRITableCell.init(_:)();
}

uint64_t sub_1002DB598(uint64_t a1)
{
  v102 = a1;
  v1 = type metadata accessor for TTRListColors.Color();
  v88 = *(v1 - 8);
  v89 = v1;
  __chkstk_darwin(v1);
  v87 = &v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100058000(&qword_100776880, &qword_1006337B0);
  __chkstk_darwin(v3 - 8);
  v90 = &v72 - v4;
  v5 = sub_100058000(&qword_10077A098, &qword_100638F78);
  __chkstk_darwin(v5 - 8);
  v100 = &v72 - v6;
  v94 = type metadata accessor for TTRListDetailViewModel(0);
  __chkstk_darwin(v94);
  v95 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRRemindersListListType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v72 - v13;
  v103 = sub_100058000(&qword_1007699F8, &qword_100638F90);
  v82 = *(v103 - 8);
  __chkstk_darwin(v103);
  v78 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v16);
  v19 = &v72 - v18;
  v20 = enum case for TTRRemindersListListType.standard(_:);
  v22 = v9 + 104;
  v21 = *(v9 + 104);
  (v21)(v14, enum case for TTRRemindersListListType.standard(_:), v8, v17);
  TTRRemindersListListType.localizedOptionString.getter();
  v86 = v9;
  v23 = v9;
  v24 = v82;
  v25 = *(v23 + 8);
  v101 = v14;
  v98 = v25;
  v99 = v23 + 8;
  v25(v14, v8);
  v84 = v21;
  v85 = v22;
  v21(v11, v20, v8);
  v96 = sub_1002DE800(&qword_10077A0B0, &type metadata accessor for TTRRemindersListListType, &protocol conformance descriptor for TTRRemindersListListType);
  v97 = v11;
  v93 = v8;
  TTRIMenuItem.init(title:image:item:selectedTitle:)();
  v26 = *(v24 + 104);
  v83 = enum case for TTRIOptionMenuCellContentState.Option.item<A>(_:);
  v91 = v26;
  v92 = v24 + 104;
  v26(v19);
  v27 = sub_100548160(0, 1, 1, _swiftEmptyArrayStorage);
  v29 = *(v27 + 2);
  v28 = *(v27 + 3);
  if (v29 >= v28 >> 1)
  {
    v27 = sub_100548160((v28 > 1), v29 + 1, 1, v27);
  }

  *(v27 + 2) = v29 + 1;
  v31 = *(v24 + 32);
  v30 = v24 + 32;
  v77 = *(v30 + 48);
  v32 = (v77 + 32) & ~v77;
  v33 = *(v30 + 40);
  v76 = v31;
  v31(&v27[v32 + v33 * v29], v19, v103);
  v104 = v27;
  v34 = *(v102 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_presenter);
  v35 = *(v102 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_presenter + 8);
  ObjectType = swift_getObjectType();
  v37 = *(v35 + 8);
  v38 = *(v37 + 8);
  v39 = v95;
  v81 = v37;
  v80 = v37 + 8;
  v79 = v38;
  v38();
  v40 = *(v39 + *(v94 + 48));
  sub_1002DE6EC(v39, type metadata accessor for TTRListDetailViewModel);
  v82 = ObjectType;
  if (v40 == 1)
  {
    v73 = v32;
    v74 = v33;
    v75 = v34;
    v41 = enum case for TTRRemindersListListType.groceries(_:);
    v42 = v101;
    v43 = v93;
    v44 = v84;
    v84(v101, enum case for TTRRemindersListListType.groceries(_:), v93);
    TTRRemindersListListType.localizedOptionString.getter();
    v98(v42, v43);
    v44(v97, v41, v43);
    v45 = v78;
    TTRIMenuItem.init(title:image:item:selectedTitle:)();
    v91(v45, v83, v103);
    v47 = *(v27 + 2);
    v46 = *(v27 + 3);
    if (v47 >= v46 >> 1)
    {
      v27 = sub_100548160((v46 > 1), v47 + 1, 1, v27);
    }

    v33 = v74;
    v32 = v73;
    *(v27 + 2) = v47 + 1;
    v76(&v27[v32 + v47 * v33], v45, v103);
    v104 = v27;
    ObjectType = v82;
  }

  if (((*(v35 + 16))(ObjectType, v35) & 1) == 0)
  {
    sub_100058000(&qword_10077A0C8, &qword_100645C30);
    v48 = swift_allocObject();
    v78 = v48;
    *(v48 + 16) = xmmword_10062D3F0;
    v49 = v48 + v32;
    v91(v48 + v32, enum case for TTRIOptionMenuCellContentState.Option.separator<A>(_:), v103);
    v50 = enum case for TTRRemindersListListType.smartList(_:);
    v51 = v33;
    v52 = v101;
    v53 = v93;
    v54 = v84;
    v84(v101, enum case for TTRRemindersListListType.smartList(_:), v93);
    TTRRemindersListListType.localizedOptionString.getter();
    v98(v52, v53);
    v55 = v50;
    ObjectType = v82;
    v54(v97, v55, v53);
    TTRIMenuItem.init(title:image:item:selectedTitle:)();
    v91(v49 + v51, v83, v103);
    sub_1000818CC(v78);
  }

  v56 = v95;
  (v79)(ObjectType, v81);
  v57 = v93;
  v58 = *(v86 + 16);
  v59 = v101;
  v58(v101, v56 + *(v94 + 68), v93);
  sub_1002DE6EC(v56, type metadata accessor for TTRListDetailViewModel);
  v60 = String._bridgeToObjectiveC()();
  v61 = [objc_opt_self() _systemImageNamed:v60];

  type metadata accessor for TTRListColors();
  v62 = v87;
  static TTRListColors.defaultColor.getter();
  TTRListColors.Color.nativeColor.getter();
  (*(v88 + 8))(v62, v89);
  v63 = v90;
  TTRIStaticTableViewStandardCell.RoundRectIcon.init(image:tintColor:backgroundColor:)();
  v64 = enum case for TTRIStaticTableViewStandardCell.Icon.roundRectIcon(_:);
  v65 = type metadata accessor for TTRIStaticTableViewStandardCell.Icon();
  v66 = *(v65 - 8);
  (*(v66 + 104))(v63, v64, v65);
  (*(v66 + 56))(v63, 0, 1, v65);
  v67._countAndFlagsBits = 0x707954207473694CLL;
  v68._object = 0x800000010067E910;
  v67._object = 0xE900000000000065;
  v68._countAndFlagsBits = 0xD00000000000002ALL;
  TTRLocalizedString(_:comment:)(v67, v68);
  v58(v97, v59, v57);
  TTRIOptionMenuCellContentState.init(icon:title:ttriAccessibilitySubtitle:menuOptions:selectedItem:isSeparatorHidden:)();
  v69 = objc_allocWithZone(sub_100058000(&qword_10077A0B8, &qword_100638F98));
  TTRIOptionMenuCellContent.init(state:menuImageProvider:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  TTRIOptionMenuCellContent.stateChangeBlock.setter();
  sub_100058000(&qword_10077A0C0, &unk_100638FA0);
  swift_allocObject();
  v70 = TTRITableCell.init(_:)();
  v98(v59, v57);
  return v70;
}

void sub_1002DC094(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for TTRRemindersListListType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_presenter + 8);
    v8 = Strong;
    ObjectType = swift_getObjectType();
    sub_100058000(&qword_10077A098, &qword_100638F78);
    TTRIOptionMenuCellContentState.selectedItem.getter();
    (*(*(v7 + 8) + 64))(v5, ObjectType);
    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1002DC1EC()
{
  v0 = type metadata accessor for TTRIListDetailEditFiltersCellStateAdaptor(0);
  v1 = v0 - 8;
  __chkstk_darwin(v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRIListDetailEditFiltersCellStateAdaptor.State(0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for TTRIStaticTableViewStandardCell.Icon();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12._countAndFlagsBits = 0x6C69462074696445;
  v12._object = 0xEC00000073726574;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  *&v10[*(v5 + 28)] = TTRLocalizedString(_:comment:)(v12, v13);
  objc_allocWithZone(type metadata accessor for TTRIListDetailEditFiltersCellContent(0));
  v14 = enum case for TTRITableCellContentPrototypeCellView.cellClass(_:);
  v15 = type metadata accessor for TTRITableCellContentPrototypeCellView();
  (*(*(v15 - 8) + 104))(v3, v14, v15);
  v16 = &v3[*(v1 + 28)];
  *v16 = 0xD000000000000011;
  *(v16 + 1) = 0x800000010067E6B0;
  sub_1002DE684(v10, v7, type metadata accessor for TTRIListDetailEditFiltersCellStateAdaptor.State);
  v17 = TTRIGenericCellContent.init(adaptor:hasDisclosure:state:)();
  sub_1002DE6EC(v10, type metadata accessor for TTRIListDetailEditFiltersCellStateAdaptor.State);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = v17;

  dispatch thunk of TTRIGenericCellContent.action.setter();

  sub_100058000(&qword_10077A0A0, &qword_100638F80);
  swift_allocObject();
  return TTRITableCell.init(_:)();
}

char *sub_1002DC4A8(uint64_t a1)
{
  v1 = type metadata accessor for TTRITipKitSignal();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *&result[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_presenter + 8];
    v7 = result;
    ObjectType = swift_getObjectType();
    v9 = *(v6 + 32);
    swift_unknownObjectRetain();
    v9(1, ObjectType, v6);
    swift_unknownObjectRelease();
    (*(v2 + 104))(v4, enum case for TTRITipKitSignal.editedCustomSmartList(_:), v1);
    v10.value._countAndFlagsBits = static TTRITipKitSignalContext.ListDetail.editFilters.getter();
    TTRITipKitSignal.donate(signalContext:)(v10);

    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

uint64_t sub_1002DC634(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListListType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRListDetailViewModel(0);
  v9 = v8;
  if (*(a1 + *(v8 + 32)) == 1 && (*(a1 + *(v8 + 28)) & 1) != 0)
  {
LABEL_7:
    v10 = 1;
    return v10 & 1;
  }

  (*(v5 + 104))(v7, enum case for TTRRemindersListListType.standard(_:), v4);
  sub_1002DE800(&qword_10077A0D0, &type metadata accessor for TTRRemindersListListType, &protocol conformance descriptor for TTRRemindersListListType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v5 + 8))(v7, v4);
  if (v14[1] == v14[0] && (*(a1 + *(v9 + 48)) & 1) == 0)
  {
    v11 = *(a2 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_presenter + 8);
    ObjectType = swift_getObjectType();
    if (((*(v11 + 16))(ObjectType, v11) & 1) == 0)
    {
      v10 = *(a1 + *(v9 + 44)) ^ 1;
      return v10 & 1;
    }

    goto LABEL_7;
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t sub_1002DC828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRListColors.Color();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRRemindersListListType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRListDetailViewModel(0);
  (*(v9 + 16))(v11, a1 + *(v12 + 68), v8);
  v13 = (*(v9 + 88))(v11, v8);
  if (v13 == enum case for TTRRemindersListListType.standard(_:) || v13 == enum case for TTRRemindersListListType.groceries(_:) || v13 == enum case for TTRRemindersListListType.smartList(_:))
  {
    v14 = String._bridgeToObjectiveC()();
    v15 = [objc_opt_self() _systemImageNamed:v14];

    type metadata accessor for TTRListColors();
    static TTRListColors.defaultColor.getter();
    TTRListColors.Color.nativeColor.getter();
    (*(v5 + 8))(v7, v4);
    TTRIStaticTableViewStandardCell.RoundRectIcon.init(image:tintColor:backgroundColor:)();
    v16 = enum case for TTRIStaticTableViewStandardCell.Icon.roundRectIcon(_:);
    v17 = type metadata accessor for TTRIStaticTableViewStandardCell.Icon();
    return (*(*(v17 - 8) + 104))(a2, v16, v17);
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1002DCB08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100058000(&qword_100777BC0, &unk_100633890);
  __chkstk_darwin(v6 - 8);
  v8 = &v28 - v7;
  v9 = type metadata accessor for TTRRemindersListListType();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTRListDetailViewModel(0);
  (*(v10 + 16))(v12, a1 + *(v13 + 68), v9);
  v14 = (*(v10 + 88))(v12, v9);
  if (v14 == enum case for TTRRemindersListListType.standard(_:))
  {
    v15 = type metadata accessor for TTRITableSectionHeaderFooter();
    return (*(*(v15 - 8) + 56))(a3, 1, 1, v15);
  }

  else if (v14 == enum case for TTRRemindersListListType.groceries(_:))
  {
    v17._countAndFlagsBits = 0xD00000000000002BLL;
    v17._object = 0x800000010067E760;
    v18._countAndFlagsBits = 0xD000000000000034;
    v18._object = 0x800000010067E790;
    v19._countAndFlagsBits = 0xD000000000000030;
    v19._object = 0x800000010067E7D0;
    TTRLocalizedString(_:value:comment:)(v17, v18, v19);
    TTRITableSectionHeaderFooter.init(title:height:)();
    v20 = type metadata accessor for TTRITableSectionHeaderFooter();
    return (*(*(v20 - 8) + 56))(a3, 0, 1, v20);
  }

  else if (v14 == enum case for TTRRemindersListListType.smartList(_:))
  {
    v21 = *(a2 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_presenter + 8);
    ObjectType = swift_getObjectType();
    if ((*(v21 + 16))(ObjectType, v21))
    {
      v23 = 1;
    }

    else
    {
      v24._countAndFlagsBits = 0xD000000000000029;
      v24._object = 0x800000010067E6D0;
      v25._object = 0x800000010067E700;
      v26._countAndFlagsBits = 0xD00000000000002ELL;
      v26._object = 0x800000010067E730;
      v25._countAndFlagsBits = 0xD000000000000026;
      TTRLocalizedString(_:value:comment:)(v24, v25, v26);
      TTRITableSectionHeaderFooter.init(title:height:)();
      v23 = 0;
    }

    v27 = type metadata accessor for TTRITableSectionHeaderFooter();
    (*(*(v27 - 8) + 56))(v8, v23, 1, v27);
    return sub_1002DE5E8(v8, a3);
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1002DCE58(uint64_t a1)
{
  v2 = type metadata accessor for TTRITableCellContentPrototypeCellView();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_presenter + 8);
  ObjectType = swift_getObjectType();
  v8 = (*(*(v6 + 8) + 16))(ObjectType);
  v9 = objc_allocWithZone(type metadata accessor for TTRIListDetailColorsContent(0));
  v10 = &v9[qword_100768C18];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v9[qword_100768C20] = v8;
  v17 = 0;
  v18 = 1;
  (*(v3 + 104))(v5, enum case for TTRITableCellContentPrototypeCellView.cellClass(_:), v2);
  v11 = TTRITableCellContent.init(state:prototypeCellView:reuseIdentifier:)();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = (v11 + qword_100768C18);
  v14 = *(v11 + qword_100768C18);
  v15 = *(v11 + qword_100768C18 + 8);
  *v13 = sub_1002DE5DC;
  v13[1] = v12;

  sub_1000301AC(v14, v15);

  sub_100058000(&qword_10077A090, &unk_100638F68);
  swift_allocObject();
  return TTRITableCell.init(_:)();
}

void sub_1002DD060(uint64_t a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if ((a2 & 1) == 0)
    {
      v6 = *&Strong[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_presenter + 8];
      v7 = Strong;
      ObjectType = swift_getObjectType();
      v9 = *(v6 + 8);
      v10 = *(v9 + 40);
      swift_unknownObjectRetain();
      v10(a1, ObjectType, v9);
      swift_unknownObjectRelease();
      Strong = v7;
    }
  }
}

id sub_1002DD128(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_presenter + 8];
  ObjectType = swift_getObjectType();
  v4 = (*(*(v2 + 8) + 24))(ObjectType);
  result = [a1 view];
  if (result)
  {
    v6 = result;
    v7 = objc_allocWithZone(type metadata accessor for TTRIListDetailEmblemsContent(0));
    v8 = sub_1005D04D8(0, 1, 0, 0, v4, v6);

    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = (v8 + qword_100790FF0);
    v11 = *(v8 + qword_100790FF0);
    v12 = *(v8 + qword_100790FF0 + 8);
    *v10 = sub_1002DE5C8;
    v10[1] = v9;

    sub_1000301AC(v11, v12);

    sub_100058000(&qword_10077A080, &qword_100638F60);
    swift_allocObject();
    return TTRITableCell.init(_:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1002DD280(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a2)
    {
      if (a4)
      {
        v10 = *&Strong[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_presenter + 8];
        v11 = Strong;
        ObjectType = swift_getObjectType();
        v13 = *(v10 + 8);
        v14 = *(v13 + 56);
        swift_unknownObjectRetain();
        v14(a3, a4, ObjectType, v13);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
      v15 = *&Strong[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_presenter + 8];
      v16 = Strong;
      v17 = swift_getObjectType();
      v18 = *(v15 + 8);
      v19 = *(v18 + 48);
      swift_unknownObjectRetain();
      v19(a1, v17, v18);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1002DD3BC(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    *(v2 + v3) = v5;
  }

  return v5;
}

uint64_t sub_1002DD424()
{
  v0 = type metadata accessor for TTRIButtonCellContentState();
  __chkstk_darwin(v0 - 8);
  v1._object = 0x800000010067C170;
  v2._countAndFlagsBits = 0xD000000000000022;
  v2._object = 0x800000010067E660;
  v1._countAndFlagsBits = 0xD000000000000015;
  TTRLocalizedString(_:comment:)(v1, v2);
  TTRIButtonCellContentState.init(title:)();
  v3 = objc_allocWithZone(type metadata accessor for TTRIButtonCellContent());
  TTRIButtonCellContent.init(state:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  TTRIButtonCellContent.action.setter();

  sub_100058000(&qword_10077A078, &qword_100638F58);
  swift_allocObject();
  return TTRITableCell.init(_:)();
}

char *sub_1002DD574(uint64_t a1)
{
  v1 = type metadata accessor for TTRITipKitSignal();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *&result[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_presenter + 8];
    v7 = result;
    ObjectType = swift_getObjectType();
    v9 = *(v6 + 40);
    swift_unknownObjectRetain();
    v9(ObjectType, v6);
    swift_unknownObjectRelease();
    (*(v2 + 104))(v4, enum case for TTRITipKitSignal.editedCustomSmartList(_:), v1);
    v10.value._countAndFlagsBits = static TTRITipKitSignalContext.ListDetail.convertList.getter();
    TTRITipKitSignal.donate(signalContext:)(v10);

    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

char *sub_1002DD6FC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *&result[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_presenter + 8];
    v4 = result;
    ObjectType = swift_getObjectType();
    v6 = OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_cslHelpAnchor;
    v7 = *(v3 + 64);
    swift_unknownObjectRetain();
    v7(&v4[v6], ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1002DD940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_1002DD9D8, v6, v5);
}

uint64_t sub_1002DD9D8()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_presenter + 8);
  ObjectType = swift_getObjectType();
  v5 = (*(v1 + 48) + **(v1 + 48));
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_1002DDB08;

  return v5(ObjectType, v1);
}

uint64_t sub_1002DDB08()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_10001E828, v3, v2);
}

void sub_1002DDD94()
{
  v1 = v0;
  v2 = type metadata accessor for TTRITableDataController.BatchUpdatesApplication();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRListDetailViewModel(0);
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v0 navigationItem];
  v11 = *&v0[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_presenter + 8];
  ObjectType = swift_getObjectType();
  (*(*(v11 + 8) + 8))(ObjectType);

  sub_1002DE6EC(v9, type metadata accessor for TTRListDetailViewModel);
  v13 = String._bridgeToObjectiveC()();

  [v10 setTitle:v13];

  v14 = *&v1[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_tableDataController];
  if (v14)
  {
    *v5 = 1;
    v15 = (*(v3 + 104))(v5, enum case for TTRITableDataController.BatchUpdatesApplication.incremental(_:), v2);
    __chkstk_darwin(v15);
    *(&v17 - 2) = v1;
    v16 = v14;
    TTRITableDataController.performBatchUpdates(by:updates:)();

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t type metadata accessor for TTRIListDetailViewController(uint64_t a1)
{
  result = qword_10077A060;
  if (!qword_10077A060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002DE200(uint64_t a1, __n128 a2)
{
  result = type metadata accessor for TTRHelpAnchor();
  if (v3 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_1002DE304()
{
  v1 = sub_100058000(&qword_100776A40, &unk_100636E90);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = sub_100058000(&qword_100776A48, qword_100638FE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_tableDataController) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_autoBeginEditingPerformed) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___badgeSection) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___badgeCell) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___nameCell) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___filtersSection) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___filtersCell) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___listTypeCell) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___editFiltersCell) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___colorsSection) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___colorsCell) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___emblemsSection) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___emblemsCell) = 0;
  static TTRHelpAnchor.IOSHelpTopic.defaultVersion.getter();
  TTRHelpAnchor.IOSHelpTopic.init(identifier:helpTopicID:version:)();
  v7 = type metadata accessor for TTRHelpAnchor.IOSHelpTopic();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = type metadata accessor for TTRHelpAnchor.MacOSHelpAnchor();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  TTRHelpAnchor.init(iOSHelpTopic:macOSHelpAnchor:)();
  *(v0 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___makeListIntoCustomSmartListSection) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___makeListIntoCustomSmartListActionCell) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1002DE5E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100777BC0, &unk_100633890);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002DE684(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002DE6EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002DE74C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001AA3C;

  return sub_1002DD940(a1, v4, v5, v6);
}

uint64_t sub_1002DE800(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1002DE848()
{
  result = qword_100771B60;
  if (!qword_100771B60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100771B60);
  }

  return result;
}

uint64_t sub_1002DE894(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10005D20C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1002DE8F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  sub_1001AAABC(a1, v19);
  v7 = v20;
  if (v20)
  {
    v8 = sub_10000C36C(v19, v20);
    v9 = *(v7 - 8);
    v10 = __chkstk_darwin(v8);
    v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12, v10);
    v13 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v9 + 8))(v12, v7);
    sub_100004758(v19);
  }

  else
  {
    v13 = 0;
  }

  v18.receiver = v3;
  v18.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v18, "initWithTarget:action:", v13, a2);
  swift_unknownObjectRelease();
  v15 = v14;
  v16 = String._bridgeToObjectiveC()();
  [v15 setName:v16];

  [v15 setDelegate:v15];
  [v15 setCancelsTouchesInView:0];
  [v15 setDelaysTouchesBegan:0];
  [v15 setDelaysTouchesEnded:0];

  sub_10000B070(a1);
  return v15;
}

uint64_t sub_1002DEB88(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 2;
  }

  v3 = Strong;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter() != 1)
    {
      goto LABEL_8;
    }

LABEL_6:
    v4 = sub_1000A9AE0(a1);
    if (v4)
    {
      v5 = v4;
      [v4 locationInView:v3];
      v7 = v6;
      v9 = v8;
      [v3 contentSize];
      v15.size.width = v10;
      v15.size.height = v11;
      v15.origin.x = 0.0;
      v15.origin.y = 0.0;
      v14.x = v7;
      v14.y = v9;
      v12 = CGRectContainsPoint(v15, v14);

      return v12;
    }

    goto LABEL_8;
  }

  if (*(a1 + 16) == 1)
  {
    goto LABEL_6;
  }

LABEL_8:

  return 2;
}

uint64_t sub_1002DEDD8(void *a1)
{
  v1 = [a1 name];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    if (v3 == 0xD000000000000023 && 0x800000010067EA80 == v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

unint64_t sub_1002DEE84()
{
  result = qword_10077A1B0;
  if (!qword_10077A1B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10077A1B0);
  }

  return result;
}

unint64_t sub_1002DEED0()
{
  result = qword_10077A1B8;
  if (!qword_10077A1B8)
  {
    sub_1002DEE84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077A1B8);
  }

  return result;
}

void sub_1002DEF28()
{
  _StringGuts.grow(_:)(24);
  v0 = TTRAppBundleIdentifier.getter();
  v2 = v1;

  *&v4 = v0;
  *(&v4 + 1) = v2;
  v3._object = 0x800000010067EB90;
  v3._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v3);
  xmmword_10077A1C0 = v4;
}

uint64_t type metadata accessor for TTRIRemindersBoardColumnDragItem(uint64_t a1)
{
  result = qword_10077A1F8;
  if (!qword_10077A1F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002DF0A4(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.ItemID();
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

Class sub_1002DF218()
{
  sub_100058000(&unk_100771E10, &qword_100634270);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10062D400;
  if (qword_100767160 != -1)
  {
    swift_once();
  }

  v1 = *(&xmmword_10077A1C0 + 1);
  *(v0 + 32) = xmmword_10077A1C0;
  *(v0 + 40) = v1;

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

uint64_t sub_1002DF358(uint64_t a1)
{
  v2 = objc_opt_self();
  _StringGuts.grow(_:)(28);

  if (qword_100767160 != -1)
  {
    swift_once();
  }

  String.append(_:)(xmmword_10077A1C0);
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 internalErrorWithDebugDescription:{v3, 0xD00000000000001ALL, 0x800000010067EBB0}];

  v5 = _convertErrorToNSError(_:)();
  (*(a1 + 16))(a1, 0, v5);

  return 0;
}

void *sub_1002DF6A8()
{

  return v0;
}

uint64_t sub_1002DF718()
{
  sub_1002DF6A8();

  return swift_deallocClassInstance();
}

uint64_t sub_1002DF7A4()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10077A490);
  v1 = sub_100003E30(v0, qword_10077A490);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *sub_1002DF86C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell_containerView] = 0;
  *&v4[OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell____lazy_storage___iconView] = 0;
  *&v4[OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell____lazy_storage___bodyLabel] = 0;
  *&v4[OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell____lazy_storage___dismissButton] = 0;
  v10 = OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell_appliedConfiguration;
  v11 = type metadata accessor for TTRPermissionConfiguration.Header();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v50.receiver = v4;
  v50.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v50, "initWithFrame:", a1, a2, a3, a4);
  sub_1002E2148();
  v13 = v12;
  UICollectionViewCell.contentConfiguration.setter();
  v14 = [v13 contentView];
  type metadata accessor for ContentGridView(0);
  v15 = swift_dynamicCastClass();
  if (!v15)
  {

    if (qword_100767168 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100003E30(v16, qword_10077A490);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "TTRIInlinePermissionViewCell_collectionView: failed to create ContentGridView", v19, 2u);
    }

    v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v14 = v15;
  }

  v20 = v15;
  v21 = v14;
  v22 = *&v13[OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell_containerView];
  *&v13[OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell_containerView] = v20;
  v49 = v20;

  sub_100003540(0, &qword_10076B020, UIView_ptr);
  sub_100058000(&unk_100771E00, &unk_100634260);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1006337E0;
  *(v23 + 32) = sub_1002DFF88();
  *(v23 + 40) = 1144750080;
  *(v23 + 48) = sub_1002DFFE8(&OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell____lazy_storage___titleLabel, &static UIFont.roundedHeadlineFont.getter, &static UIColor.ttrLabelColor.getter);
  *(v23 + 56) = 1132068864;
  *(v23 + 64) = sub_1002DFFE8(&OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell____lazy_storage___bodyLabel, &static UIFont.roundedSubheadlineFont.getter, &static UIColor.ttrSecondaryLabelColor.getter);
  *(v23 + 72) = 1132068864;
  *(v23 + 80) = sub_1002E004C();
  *(v23 + 88) = 1144750080;
  sub_100058000(&qword_1007884F0, &unk_1006393E0);
  v24 = type metadata accessor for TTRIViewContentPriorityType();
  v25 = *(v24 - 8);
  v26 = *(v25 + 72);
  v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v48 = v27;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_10062D3F0;
  v29 = (v28 + v27);
  *v29 = 0;
  v47 = enum case for TTRIViewContentPriorityType.hugging(_:);
  v30 = *(v25 + 104);
  v30(v28 + v27);
  *(v29 + v26) = 0;
  v46 = enum case for TTRIViewContentPriorityType.compressionResistance(_:);
  v30(v29 + v26);
  static UIView.setContentPriorities(_:for:)();

  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1006337E0;
  v32 = *&v13[OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell____lazy_storage___iconView];
  *(v31 + 32) = v32;
  *(v31 + 40) = 1144750080;
  v33 = v13;
  v34 = *&v13[OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell____lazy_storage___titleLabel];
  *(v31 + 48) = v34;
  type metadata accessor for UILayoutPriority(0);
  sub_1002E2894(&unk_10077A6B0, type metadata accessor for UILayoutPriority, &protocol conformance descriptor for UILayoutPriority);
  v35 = v32;
  v36 = v34;
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  v37 = *&v33[OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell____lazy_storage___bodyLabel];
  *(v31 + 64) = v37;
  v38 = v37;
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  v39 = *&v33[OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell____lazy_storage___dismissButton];
  *(v31 + 80) = v39;
  *(v31 + 88) = 1144750080;
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_10062D3F0;
  v41 = v40 + v48;
  *(v40 + v48) = 1;
  (v30)(v40 + v48, v47, v24);
  *(v41 + v26) = 1;
  (v30)(v41 + v26, v46, v24);
  v42 = v39;
  static UIView.setContentPriorities(_:for:)();

  v43 = v49;
  [v43 setHorizontalDistribution:0];
  [v43 setVerticalDistribution:0];
  [v43 setHorizontalAlignment:1];
  [v43 setVerticalAlignment:1];
  [v43 setColumnSpacing:12.0];
  [v43 setRowSpacing:4.0];

  [v43 setPreservesSuperviewLayoutMargins:1];
  v44 = v43;
  [v44 setLayoutMarginsRelativeArrangement:1];
  [v44 setDelegate:v33];

  sub_1002E0324();
  return v33;
}

id sub_1002DFF88()
{
  v1 = OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell____lazy_storage___iconView;
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell____lazy_storage___iconView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell____lazy_storage___iconView);
  }

  else
  {
    v4 = sub_1002E1730();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1002DFFE8(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v7 = sub_1002E18D4(a2, a3);
    v8 = *(v3 + v4);
    *(v3 + v4) = v7;
    v6 = v7;

    v5 = 0;
  }

  v9 = v5;
  return v6;
}

id sub_1002E004C()
{
  v1 = v0;
  v2 = type metadata accessor for UIButton.Configuration();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v9 = OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell____lazy_storage___dismissButton;
  v10 = *&v0[OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell____lazy_storage___dismissButton];
  if (v10)
  {
    v11 = *&v0[OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell____lazy_storage___dismissButton];
  }

  else
  {
    static UIButton.Configuration.plain()();
    v12 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleHeadline scale:1];
    v13 = String._bridgeToObjectiveC()();
    v14 = [objc_opt_self() _systemImageNamed:v13 withConfiguration:v12];

    UIButton.Configuration.image.setter();
    sub_100003540(0, &qword_100772610, UIColor_ptr);
    static UIColor.ttrTertiaryLabelColor.getter();
    UIButton.Configuration.baseForegroundColor.setter();
    UIButton.Configuration.contentInsets.setter();
    sub_100003540(0, &unk_10077A690, UIButton_ptr);
    (*(v3 + 16))(v5, v8, v2);
    sub_100003540(0, &qword_10076BA60, UIAction_ptr);
    *(swift_allocObject() + 16) = v1;
    v15 = v1;
    UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v16 = UIButton.init(configuration:primaryAction:)();

    (*(v3 + 8))(v8, v2);
    v17 = *&v1[v9];
    *&v1[v9] = v16;
    v11 = v16;

    v10 = 0;
  }

  v18 = v10;
  return v11;
}

void sub_1002E0324()
{
  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1006322B0;
  *(v1 + 32) = sub_1002DFF88();
  *(v1 + 40) = sub_1002DFFE8(&OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell____lazy_storage___titleLabel, &static UIFont.roundedHeadlineFont.getter, &static UIColor.ttrLabelColor.getter);
  *(v1 + 48) = sub_1002E004C();
  v2 = _swiftEmptyArrayStorage;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100547B84(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    v24 = v2;
  }

  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    v2 = sub_100547B84((v3 > 1), v4 + 1, 1, v2);
  }

  v2[2] = v4 + 1;
  v2[v4 + 4] = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1006322B0;
  v6 = *&v0[OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell____lazy_storage___iconView];
  *(v5 + 32) = v6;
  v7 = v6;
  *(v5 + 40) = sub_1002DFFE8(&OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell____lazy_storage___bodyLabel, &static UIFont.roundedSubheadlineFont.getter, &static UIColor.ttrSecondaryLabelColor.getter);
  *(v5 + 48) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100547B84(0, v2[2] + 1, 1, v2);
  }

  v9 = v2[2];
  v8 = v2[3];
  if (v9 >= v8 >> 1)
  {
    v2 = sub_100547B84((v8 > 1), v9 + 1, 1, v2);
  }

  v2[2] = v9 + 1;
  v2[v9 + 4] = v5;
  v24 = v2;
  v10 = OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell_containerView;
  v11 = *&v0[OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell_containerView];
  if (!v11)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v12 = [v11 arrangedSubviewRows];
  if (v12)
  {
    v13 = v12;
    sub_100058000(&unk_10076BCD0, &qword_1006393C0);
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v13) = sub_10012678C(v14, v2);

    if (v13)
    {
      v15 = 0;
      v16 = 0;
LABEL_16:

      sub_1000301AC(v15, v16);
      return;
    }
  }

  v17 = *&v0[v10];
  if (v17)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = v0;
    *(v16 + 24) = &v24;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_1002E28DC;
    *(v18 + 24) = v16;
    aBlock[4] = sub_100026410;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100026440;
    aBlock[3] = &unk_10071EB98;
    v19 = _Block_copy(aBlock);
    v20 = v17;
    v21 = v0;

    [v20 performBatchUpdates:v19];

    _Block_release(v19);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v15 = sub_1002E28DC;
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
}

uint64_t sub_1002E0790(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v3 = sub_100058000(&qword_10076BE20, &qword_10062FFA8);
  __chkstk_darwin(v3 - 8);
  v38 = &v34 - v4;
  v5 = type metadata accessor for TTRPermissionConfiguration.Header();
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
      if ((*(v28 + 88))(v17, v27) == enum case for TTRAccountsListsViewModel.PermissionRequest.header(_:))
      {
        (*(v28 + 96))(v17, v27);
        v30 = v35;
        v29 = v36;
        v31 = v37;
        (*(v36 + 32))(v35, v17, v37);
        v32 = v38;
        (*(v29 + 16))(v38, v30, v31);
        (*(v29 + 56))(v32, 0, 1, v31);
        sub_1002E0D14(v32);
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

uint64_t sub_1002E0D14(uint64_t a1)
{
  v3 = type metadata accessor for TTRPermissionConfiguration.Header();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v20 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_10076BE20, &qword_10062FFA8);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_100058000(&qword_10077A678, &qword_1006393C8);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v13 = OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell_appliedConfiguration;
  swift_beginAccess();
  v14 = *(v10 + 56);
  sub_10000794C(v1 + v13, v12, &qword_10076BE20, &qword_10062FFA8);
  sub_10000794C(a1, &v12[v14], &qword_10076BE20, &qword_10062FFA8);
  v15 = *(v4 + 48);
  if (v15(v12, 1, v3) != 1)
  {
    sub_10000794C(v12, v8, &qword_10076BE20, &qword_10062FFA8);
    if (v15(&v12[v14], 1, v3) != 1)
    {
      v17 = v20;
      (*(v4 + 32))(v20, &v12[v14], v3);
      sub_1002E2894(&qword_10077A680, &type metadata accessor for TTRPermissionConfiguration.Header, &protocol conformance descriptor for TTRPermissionConfiguration.Header);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v4 + 8);
      v19(v17, v3);
      v19(v8, v3);
      sub_1000079B4(v12, &qword_10076BE20, &qword_10062FFA8);
      if (v18)
      {
        return sub_1000079B4(a1, &qword_10076BE20, &qword_10062FFA8);
      }

      goto LABEL_7;
    }

    (*(v4 + 8))(v8, v3);
LABEL_6:
    sub_1000079B4(v12, &qword_10077A678, &qword_1006393C8);
LABEL_7:
    sub_1002E1334(a1);
    return sub_1000079B4(a1, &qword_10076BE20, &qword_10062FFA8);
  }

  if (v15(&v12[v14], 1, v3) != 1)
  {
    goto LABEL_6;
  }

  sub_1000079B4(v12, &qword_10076BE20, &qword_10062FFA8);
  return sub_1000079B4(a1, &qword_10076BE20, &qword_10062FFA8);
}

uint64_t sub_1002E107C(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for UIListContentConfiguration();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v20[-1] - v10;
  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v21.receiver = v2;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, "_bridgedUpdateConfigurationUsingState:", isa);

  static UIListContentConfiguration.cell()();
  v13 = type metadata accessor for UICellConfigurationState();
  v20[3] = v13;
  v20[4] = &protocol witness table for UICellConfigurationState;
  v14 = sub_1000317B8(v20);
  (*(*(v13 - 8) + 16))(v14, a1, v13);
  UIListContentConfiguration.updated(for:)();
  v15 = *(v6 + 8);
  v15(v8, v5);
  result = sub_100004758(v20);
  v17 = *&v2[OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell_containerView];
  if (v17)
  {
    v18 = v17;
    UIView.applyLayoutMargins(from:)();

    return (v15)(v11, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002E1334(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100058000(&qword_10077A688, &unk_1006393D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - v5;
  v7 = sub_100058000(&qword_10076BE20, &qword_10062FFA8);
  __chkstk_darwin(v7 - 8);
  v9 = &v26 - v8;
  v10 = type metadata accessor for TTRPermissionConfiguration.Header();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell_appliedConfiguration;
  swift_beginAccess();
  sub_1002E2800(a1, v2 + v14);
  swift_endAccess();
  sub_10000794C(v2 + v14, v9, &qword_10076BE20, &qword_10062FFA8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000079B4(v9, &qword_10076BE20, &qword_10062FFA8);
  }

  (*(v11 + 32))(v13, v9, v10);
  v16 = sub_1002DFF88();
  TTRPermissionConfiguration.Header.icon.getter();
  dispatch thunk of TTRListBadgeView.image.setter();

  v17 = sub_1002DFFE8(&OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell____lazy_storage___titleLabel, &static UIFont.roundedHeadlineFont.getter, &static UIColor.ttrLabelColor.getter);
  TTRPermissionConfiguration.Header.title.getter();
  v18 = String._bridgeToObjectiveC()();

  [v17 setText:v18];

  v19 = sub_1002E004C();
  TTRPermissionConfiguration.Header.action.getter();
  v20 = type metadata accessor for TTRPermissionConfiguration.Action();
  v21 = (*(*(v20 - 8) + 48))(v6, 1, v20) == 1;
  sub_1000079B4(v6, &qword_10077A688, &unk_1006393D0);
  [v19 setHidden:v21];

  v22 = sub_1002DFFE8(&OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell____lazy_storage___bodyLabel, &static UIFont.roundedSubheadlineFont.getter, &static UIColor.ttrSecondaryLabelColor.getter);
  [v22 setHidden:(TTRPermissionConfiguration.Header.showsBodyLabel.getter() & 1) == 0];

  if (TTRPermissionConfiguration.Header.showsBodyLabel.getter())
  {
    v23 = *(v2 + OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell____lazy_storage___bodyLabel);
    TTRPermissionConfiguration.Header.body.getter();
    if (v24)
    {
      v25 = String._bridgeToObjectiveC()();
    }

    else
    {
      v25 = 0;
    }

    [v23 setText:v25];
  }

  return (*(v11 + 8))(v13, v10);
}

id sub_1002E1730()
{
  v0 = type metadata accessor for TTRListBadgeView.Shape();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(type metadata accessor for TTRListBadgeView()) initWithFrame:{0.0, 0.0, 32.0, 32.0}];
  v5 = [objc_opt_self() whiteColor];
  dispatch thunk of TTRListBadgeView.imageColor.setter();
  sub_100003540(0, &qword_100772610, UIColor_ptr);
  v6 = v4;
  v7 = static UIColor.ttrSecondaryLabelColor.getter();
  [v6 setTintColor:v7];

  (*(v1 + 104))(v3, enum case for TTRListBadgeView.Shape.round(_:), v0);
  dispatch thunk of TTRListBadgeView.shape.setter();
  dispatch thunk of TTRListBadgeView.contentInset.setter();
  [v6 setAccessibilityElementsHidden:1];
  return v6;
}

id sub_1002E18D4(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v4 = [objc_allocWithZone(UILabel) init];
  sub_100003540(0, &qword_100771DF0, UIFont_ptr);
  v5 = a1();
  [v4 setFont:v5];

  sub_100003540(0, &qword_100772610, UIColor_ptr);
  v6 = a2();
  [v4 setTextColor:v6];

  [v4 setTextAlignment:4];
  [v4 setNumberOfLines:0];
  [v4 setLineBreakMode:0];
  return v4;
}

void sub_1002E19DC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell_containerView);
  if (v2)
  {
    v3 = v2;

    sub_100058000(&unk_10076BCD0, &qword_1006393C0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v3 setArrangedSubviewRows:isa];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1002E1A80()
{
  sub_10003B788(v0 + OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell_delegate);

  return sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell_appliedConfiguration, &qword_10076BE20, &qword_10062FFA8);
}

id sub_1002E1C94(uint64_t a1)
{
  if (*(a1 + qword_10077A580))
  {
    v1 = *(a1 + qword_10077A580 + 8);
    v4[4] = *(a1 + qword_10077A580);
    v4[5] = v1;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 1107296256;
    v4[2] = sub_10001047C;
    v4[3] = &unk_10071EAF8;
    v2 = _Block_copy(v4);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1002E1D5C(char *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_1002E219C;
  }

  else
  {
    v6 = 0;
  }

  v7 = &a1[qword_10077A580];
  v8 = *&a1[qword_10077A580];
  v9 = *&a1[qword_10077A580 + 8];
  *v7 = v6;
  *(v7 + 1) = v4;
  v10 = a1;
  sub_1000301AC(v8, v9);
}

id sub_1002E1E08(char *a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  v11 = &a1[qword_10077A580];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&a1[qword_10077A588] = 0;
  v13.receiver = a1;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, "initWithFrame:", a2, a3, a4, a5);
}

char *sub_1002E1E94(char *a1, uint64_t a2, Class isa)
{
  ObjectType = swift_getObjectType();
  if (isa)
  {
    sub_100058000(&unk_10076BCD0, &qword_1006393C0);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = &a1[qword_10077A580];
    *v6 = 0;
    *(v6 + 1) = 0;
    *&a1[qword_10077A588] = 0;
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7 = &a1[qword_10077A580];
    *v7 = 0;
    *(v7 + 1) = 0;
    *&a1[qword_10077A588] = 0;
  }

  v10.receiver = a1;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, "initWithArrangedSubviewRows:", isa);

  return v8;
}

char *sub_1002E1F78(char *a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v6 = &a1[qword_10077A580];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&a1[qword_10077A588] = 0;
  v10.receiver = a1;
  v10.super_class = ObjectType;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, "initWithCoder:", v7);

  if (v8)
  {
  }

  return v8;
}

unint64_t sub_1002E204C@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for ContentConfigurationForContentGridView;
  result = sub_1002E2148();
  *(a1 + 32) = result;
  return result;
}

void (*sub_1002E2080(uint64_t *a1))(void **a1)
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
  *(v2 + 24) = &type metadata for ContentConfigurationForContentGridView;
  *(v2 + 32) = sub_1002E2148();
  return sub_10009D584;
}

uint64_t sub_1002E20F8(uint64_t a1)
{
  sub_10000B0D8(a1, v2);
  sub_100058000(&qword_10077A650, &qword_10063DD30);
  return swift_dynamicCast();
}

unint64_t sub_1002E2148()
{
  result = qword_10077A658;
  if (!qword_10077A658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077A658);
  }

  return result;
}

id sub_1002E21A4()
{
  type metadata accessor for ContentGridView(0);
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_1002E2894(&unk_10077A6C0, type metadata accessor for ContentGridView, &unk_100639358);
  return v0;
}

void sub_1002E221C()
{
  *(v0 + OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell_containerView) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell____lazy_storage___iconView) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell____lazy_storage___bodyLabel) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell____lazy_storage___dismissButton) = 0;
  v1 = OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell_appliedConfiguration;
  v2 = type metadata accessor for TTRPermissionConfiguration.Header();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1002E2318()
{
  v1 = v0;
  v2 = sub_100058000(&qword_10077A688, &unk_1006393D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = type metadata accessor for TTRPermissionConfiguration.Action();
  v20 = *(v5 - 8);
  __chkstk_darwin(v5);
  v19 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&qword_10076BE20, &qword_10062FFA8);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for TTRPermissionConfiguration.Header();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell_appliedConfiguration;
  swift_beginAccess();
  sub_10000794C(v1 + v14, v9, &qword_10076BE20, &qword_10062FFA8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000079B4(v9, &qword_10076BE20, &qword_10062FFA8);
  }

  (*(v11 + 32))(v13, v9, v10);
  TTRPermissionConfiguration.Header.action.getter();
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
      sub_1002E2894(&unk_10077A6A0, type metadata accessor for TTRIAccountsListsInlinePermissionHeaderCell, &unk_100639398);
      dispatch thunk of TTRInlinePermissionViewDelegate.inlinePermissionView(_:didRequestAction:)();
      swift_unknownObjectRelease();
    }

    (*(v16 + 8))(v17, v5);
    return (*(v11 + 8))(v13, v10);
  }
}

void sub_1002E26C4()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell_containerView);
  if (v1)
  {
    v9 = v1;
    v2 = sub_1002DFFE8(&OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell____lazy_storage___titleLabel, &static UIFont.roundedHeadlineFont.getter, &static UIColor.ttrLabelColor.getter);
    UIView.leadingSpace(to:)();
    v4 = v3;
    v5 = qword_10077A588;
    if ((sub_10002E9C4(*&v9[qword_10077A588], 0.0000000149011612, v3) & 1) != 0 || (*&v9[v5] = v4, (v6 = *&v9[qword_10077A580]) == 0))
    {
    }

    else
    {
      v7 = *&v9[qword_10077A580 + 8];

      v6(v8);

      sub_1000301AC(v6, v7);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1002E2800(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10076BE20, &qword_10062FFA8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002E2894(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1002E28FC(uint64_t a1)
{
  v55 = type metadata accessor for TTRSectionID();
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v54 = v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v45 = v44 - v4;
  __chkstk_darwin(v5);
  v51 = v44 - v6;
  v7 = sub_100460C58(_swiftEmptyArrayStorage);
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_10001DF64();
    sub_10001DDC4(&qword_10076D1D0, sub_10001DF64, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    a1 = v58;
    v8 = v59;
    v9 = v60;
    v10 = v61;
    v11 = v62;
  }

  else
  {
    v12 = -1 << *(a1 + 32);
    v8 = a1 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(a1 + 56);

    v10 = 0;
  }

  v15 = (v9 + 64) >> 6;
  v44[0] = v9;
  v44[1] = v53 + 16;
  v48 = enum case for TTRSectionID.sectionless(_:);
  v46 = v53 + 40;
  v47 = (v53 + 104);
  v49 = a1;
  v50 = (v53 + 32);
  v52 = (v53 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  while (a1 < 0)
  {
    v21 = __CocoaSet.Iterator.next()();
    if (!v21 || (v56 = v21, sub_10001DF64(), swift_dynamicCast(), v20 = v57, v18 = v10, v19 = v11, !v57))
    {
LABEL_32:
      sub_10008BA48(a1);
      return v7;
    }

LABEL_19:
    v22 = sub_1002E3980();
    if (*(v22 + 16) && (v23 = sub_1002613B0(v20), (v24 & 1) != 0))
    {
      v25 = v53;
      v26 = v45;
      v27 = v55;
      (*(v53 + 16))(v45, *(v22 + 56) + *(v53 + 72) * v23, v55);

      v28 = *(v25 + 32);
      v29 = v51;
      v28(v51, v26, v27);
    }

    else
    {

      v29 = v51;
      v27 = v55;
      (*v47)(v51, v48, v55);
      v28 = *v50;
    }

    v28(v54, v29, v27);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = v7;
    v31 = sub_1002613B0(v20);
    v33 = v7[2];
    v34 = (v32 & 1) == 0;
    v35 = __OFADD__(v33, v34);
    v36 = v33 + v34;
    if (v35)
    {
      goto LABEL_34;
    }

    v37 = v32;
    if (v7[3] >= v36)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v42 = v31;
        sub_1003AE274();
        v31 = v42;
      }
    }

    else
    {
      sub_100549434(v36, isUniquelyReferenced_nonNull_native);
      v31 = sub_1002613B0(v20);
      if ((v37 & 1) != (v38 & 1))
      {
        goto LABEL_36;
      }
    }

    v39 = v55;
    v7 = v57;
    if (v37)
    {
      (*(v53 + 40))(v57[7] + *(v53 + 72) * v31, v54, v55);
    }

    else
    {
      v57[(v31 >> 6) + 8] |= 1 << v31;
      *(v7[6] + 8 * v31) = v20;
      v28((v7[7] + *(v53 + 72) * v31), v54, v39);
      v40 = v7[2];
      v35 = __OFADD__(v40, 1);
      v41 = v40 + 1;
      if (v35)
      {
        goto LABEL_35;
      }

      v7[2] = v41;
    }

    v10 = v18;
    v11 = v19;
    a1 = v49;
  }

  v16 = v10;
  v17 = v11;
  v18 = v10;
  if (v11)
  {
LABEL_15:
    v19 = (v17 - 1) & v17;
    v20 = *(*(a1 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v20)
    {
      goto LABEL_32;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_32;
    }

    v17 = *(v8 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  sub_10001DF64();
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1002E2DE0()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10077A6D0);
  v1 = sub_100003E30(v0, qword_10077A6D0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_1002E2EA8(__n128 a1)
{
  if (*(v1 + 16))
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v2 = sub_1002E2F08(v1, a1);
    *(v1 + 16) = v2;
  }

  return v2;
}

void *sub_1002E2F08(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for REMRemindersListDataView.SectionLite.SectionType();
  __chkstk_darwin(v3 - 8);
  v31 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for REMRemindersListDataView.SectionLite();
  v5 = *(v30 - 8);
  __chkstk_darwin(v30);
  v28 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for TTRSectionLite();
  v7 = *(v29 - 8);
  __chkstk_darwin(v29);
  v24 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 72);
  v10 = *(v9 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (v10)
  {
    v32 = _swiftEmptyArrayStorage;
    sub_1004A1AE0(0, v10, 0);
    v11 = v32;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v14 = v9 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v26 = *(v12 + 56);
    v27 = v13;
    v15 = (v12 - 8);
    v25 = v7 + 32;
    v16 = v24;
    do
    {
      v17 = v28;
      v18 = v30;
      v19 = v12;
      v27(v28, v14, v30);
      REMRemindersListDataView.SectionLite.type.getter();
      TTRSectionLite.init(sectionType:)();
      (*v15)(v17, v18);
      v32 = v11;
      v21 = v11[2];
      v20 = v11[3];
      if (v21 >= v20 >> 1)
      {
        sub_1004A1AE0((v20 > 1), v21 + 1, 1);
        v16 = v24;
        v11 = v32;
      }

      v11[2] = v21 + 1;
      (*(v7 + 32))(v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v21, v16, v29);
      v14 += v26;
      --v10;
      v12 = v19;
    }

    while (v10);
  }

  return v11;
}

uint64_t sub_1002E31CC()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    sub_1002E322C(v0);
    v1 = v2;
    *(v0 + 24) = v2;
  }

  return v1;
}

void sub_1002E322C(uint64_t a1)
{
  v2 = type metadata accessor for REMRemindersListDataView.SectionLite();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v20 - v8;
  v10 = *(a1 + 72);
  v27 = *(v10 + 16);
  if (v27)
  {
    v11 = 0;
    v21 = (v3 + 8);
    v25 = (v3 + 32);
    v26 = v3 + 16;
    v12 = _swiftEmptyArrayStorage;
    v23 = v5;
    v24 = v2;
    v22 = v10;
    while (v11 < *(v10 + 16))
    {
      v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v14 = *(v3 + 72);
      (*(v3 + 16))(v9, v10 + v13 + v14 * v11, v2, v7);
      if (REMRemindersListDataView.SectionLite.isEmpty.getter())
      {
        v15 = *v25;
        (*v25)(v5, v9, v2);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1004A1B84(0, v12[2] + 1, 1);
          v12 = v28;
        }

        v18 = v12[2];
        v17 = v12[3];
        if (v18 >= v17 >> 1)
        {
          sub_1004A1B84((v17 > 1), v18 + 1, 1);
          v12 = v28;
        }

        v12[2] = v18 + 1;
        v19 = v12 + v13 + v18 * v14;
        v5 = v23;
        v2 = v24;
        v15(v19, v23, v24);
        v10 = v22;
      }

      else
      {
        (*v21)(v9, v2);
      }

      if (v27 == ++v11)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
LABEL_13:
    v28 = v12;
    sub_100058000(&qword_10077A7F8, &qword_1006395A8);
    type metadata accessor for TTRSectionID();
    sub_1002E8554();
    sub_10001DDC4(&qword_1007758E0, &type metadata accessor for TTRSectionID, &protocol conformance descriptor for TTRSectionID);
    Sequence.mapToSet<A>(_:)();
  }
}

uint64_t sub_1002E3520(__n128 a1)
{
  v1 = type metadata accessor for REMRemindersListDataView.SectionLite.SectionType();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for TTRSectionLite();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  REMRemindersListDataView.SectionLite.type.getter();
  TTRSectionLite.init(sectionType:)();
  TTRSectionLite.sectionID.getter();
  return (*(v3 + 8))(v5, v2);
}

void *sub_1002E365C(__n128 a1)
{
  if (*(v1 + 32))
  {
    v2 = *(v1 + 32);
  }

  else
  {
    v2 = sub_1002E36BC(v1, a1);
    *(v1 + 32) = v2;
  }

  return v2;
}

void *sub_1002E36BC(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for REMRemindersListDataView.SectionLite.SectionType();
  __chkstk_darwin(v3 - 8);
  v31 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for REMRemindersListDataView.SectionLite();
  v5 = *(v30 - 8);
  __chkstk_darwin(v30);
  v28 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for TTRSectionLite();
  v7 = *(v29 - 8);
  __chkstk_darwin(v29);
  v24 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 80);
  v10 = *(v9 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (v10)
  {
    v32 = _swiftEmptyArrayStorage;
    sub_1004A1AE0(0, v10, 0);
    v11 = v32;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v14 = v9 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v26 = *(v12 + 56);
    v27 = v13;
    v15 = (v12 - 8);
    v25 = v7 + 32;
    v16 = v24;
    do
    {
      v17 = v28;
      v18 = v30;
      v19 = v12;
      v27(v28, v14, v30);
      REMRemindersListDataView.SectionLite.type.getter();
      TTRSectionLite.init(sectionType:)();
      (*v15)(v17, v18);
      v32 = v11;
      v21 = v11[2];
      v20 = v11[3];
      if (v21 >= v20 >> 1)
      {
        sub_1004A1AE0((v20 > 1), v21 + 1, 1);
        v16 = v24;
        v11 = v32;
      }

      v11[2] = v21 + 1;
      (*(v7 + 32))(v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v21, v16, v29);
      v14 += v26;
      --v10;
      v12 = v19;
    }

    while (v10);
  }

  return v11;
}

uint64_t sub_1002E3980()
{
  if (*(v0 + 96))
  {
    v1 = *(v0 + 96);
  }

  else
  {
    v1 = sub_1002E6528(v0);
    *(v0 + 96) = v1;
  }

  return v1;
}

void *sub_1002E39E0()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    v1 = sub_1002E6F68(v0);
    *(v0 + 104) = v1;
  }

  return v1;
}

void *sub_1002E3A40(uint64_t a1, int a2)
{
  v46 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v4 = *(v46 - 8);
  __chkstk_darwin(v46);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v40 = &v32 - v8;
  v9 = type metadata accessor for REMRemindersListDataView.SectionLite();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v32 - v14;
  v16 = sub_1002E39E0();
  if (!v16[2] || (v17 = sub_1003AB5F4(a1), (v18 & 1) == 0))
  {

    return _swiftEmptyArrayStorage;
  }

  (*(v10 + 16))(v12, v16[7] + *(v10 + 72) * v17, v9);

  (*(v10 + 32))(v15, v12, v9);
  result = REMRemindersListDataView.SectionLite.reminders.getter();
  v47 = _swiftEmptyArrayStorage;
  v43 = result[2];
  if (!v43)
  {

    v26 = _swiftEmptyArrayStorage;
LABEL_23:
    (*(v10 + 8))(v15, v9);
    return v26;
  }

  v32 = v15;
  v33 = v10;
  v20 = 0;
  v21 = *(v4 + 80);
  v34 = v9;
  v35 = (v21 + 32) & ~v21;
  v41 = result + v35;
  v42 = result;
  v45 = v4 + 16;
  v22 = (v4 + 8);
  v37 = v4;
  v23 = v40;
  v36 = a2;
  while (v20 < result[2])
  {
    v24 = *(v4 + 72);
    v44 = v20;
    v25 = *(v4 + 16);
    v25(v23, &v41[v24 * v20], v46);
    REMRemindersListDataView.ReminderLite.objectID.getter();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v4 = v37;
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v26 = v47;
    if ((a2 & 1) != 0 && (v27 = REMRemindersListDataView.ReminderLite.subtasks.getter()) != 0)
    {
      v28 = *(v27 + 16);
      if (v28)
      {
        v38 = v27;
        v39 = v22 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v29 = v27 + v35;
        do
        {
          v30 = v46;
          v25(v6, v29, v46);
          REMRemindersListDataView.ReminderLite.objectID.getter();
          v31 = *v22;
          (*v22)(v6, v30);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v29 += v24;
          --v28;
        }

        while (v28);
        v26 = v47;

        LOBYTE(a2) = v36;
      }

      else
      {

        v31 = *v22;
      }

      v23 = v40;
      v31(v40, v46);
      v4 = v37;
    }

    else
    {
      (*v22)(v23, v46);
    }

    result = v42;
    v20 = v44 + 1;
    if (v44 + 1 == v43)
    {

      v10 = v33;
      v9 = v34;
      v15 = v32;
      goto LABEL_23;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002E3E88(uint64_t a1)
{
  v44 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v2 = *(v44 - 8);
  __chkstk_darwin(v44);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v33 - v6;
  v8 = type metadata accessor for REMRemindersListDataView.SectionLite();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v33 - v13;
  v15 = sub_1002E39E0();
  if (!v15[2] || (v16 = sub_1003AB5F4(a1), (v17 & 1) == 0))
  {

    return 0;
  }

  (*(v9 + 16))(v11, v15[7] + *(v9 + 72) * v16, v8);

  (*(v9 + 32))(v14, v11, v8);
  result = REMRemindersListDataView.SectionLite.reminders.getter();
  v19 = result;
  v38 = *(result + 16);
  if (!v38)
  {
LABEL_18:

    (*(v9 + 8))(v14, v8);
    return 0;
  }

  v20 = 0;
  v42 = (v2 + 8);
  v43 = v2 + 16;
  v35 = v9;
  v36 = v8;
  v34 = v7;
  v37 = v2;
  v39 = result;
  v40 = v14;
  v21 = v44;
  while (v20 < *(v19 + 16))
  {
    v22 = v2;
    v23 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v24 = *(v22 + 72);
    v41 = v20;
    v25 = *(v22 + 16);
    v25(v7, v19 + v23 + v24 * v20, v44);
    if (REMRemindersListDataView.ReminderLite.isCompleted.getter())
    {

      (*v42)(v7, v44);
      (*(v9 + 8))(v40, v8);
      return 1;
    }

    result = REMRemindersListDataView.ReminderLite.subtasks.getter();
    if (result)
    {
      v26 = result;
      v27 = result + v23;
      v28 = -*(result + 16);
      v29 = -1;
      while (1)
      {
        if (v28 + v29 == -1)
        {

          v9 = v35;
          v8 = v36;
          v7 = v34;
          goto LABEL_9;
        }

        if (++v29 >= *(v26 + 16))
        {
          break;
        }

        v30 = v27 + v24;
        (v25)(v4);
        v31 = REMRemindersListDataView.ReminderLite.isCompleted.getter();
        v32 = *v42;
        result = (*v42)(v4, v21);
        v27 = v30;
        if (v31)
        {

          v32(v34, v44);
          (*(v35 + 8))(v40, v36);
          return 1;
        }
      }

      __break(1u);
      break;
    }

LABEL_9:
    v20 = v41 + 1;
    result = (*v42)(v7, v44);
    v2 = v37;
    v19 = v39;
    v14 = v40;
    if (v20 == v38)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002E4288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for REMRemindersListDataView.SectionLite.SectionType();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for REMRemindersListDataView.SectionLite();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v15 = &v23 - v14;
  v16 = sub_1002E4504(v13);
  if (*(v16 + 16) && (v17 = sub_100009044(a1, a2), (v18 & 1) != 0))
  {
    (*(v9 + 16))(v11, *(v16 + 56) + *(v9 + 72) * v17, v8);

    (*(v9 + 32))(v15, v11, v8);
    REMRemindersListDataView.SectionLite.type.getter();
    TTRSectionLite.init(sectionType:)();
    (*(v9 + 8))(v15, v8);
    v19 = type metadata accessor for TTRSectionLite();
    return (*(*(v19 - 8) + 56))(a3, 0, 1, v19);
  }

  else
  {

    v21 = type metadata accessor for TTRSectionLite();
    v22 = *(*(v21 - 8) + 56);

    return v22(a3, 1, 1, v21);
  }
}

uint64_t sub_1002E4504(__n128 a1)
{
  if (*(v1 + 112))
  {
    v2 = *(v1 + 112);
  }

  else
  {
    v2 = sub_1002E77E8(v1, a1);
    *(v1 + 112) = v2;
  }

  return v2;
}

uint64_t sub_1002E457C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int *a4@<X3>, char *a5@<X8>)
{
  v97 = a4;
  v99 = a2;
  v98 = a1;
  v7 = sub_100058000(&qword_10076E900, &qword_100631E10);
  __chkstk_darwin(v7 - 8);
  v9 = &v72 - v8;
  v80 = sub_100058000(&qword_10076B070, &unk_100637140);
  __chkstk_darwin(v80);
  v11 = &v72 - v10;
  v12 = type metadata accessor for TTRRemindersListSectionCreationLocation();
  v101 = *(v12 - 8);
  v102 = v12;
  __chkstk_darwin(v12);
  v100 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.Separator();
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v96 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.TextSize();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v93 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor();
  v87 = *(v89 - 8);
  __chkstk_darwin(v89);
  v90 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.TextStyle();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v88 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100058000(&unk_10076B060, &unk_1006324D0);
  __chkstk_darwin(v18 - 8);
  v20 = &v72 - v19;
  v21 = sub_100058000(&unk_10076B050, &unk_100631DF0);
  __chkstk_darwin(v21 - 8);
  v85 = &v72 - v22;
  v119 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v105 = *(v119 - 1);
  __chkstk_darwin(v119);
  v82 = (&v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v118 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v106 = *(v118 - 8);
  __chkstk_darwin(v118);
  v86 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for TTRRemindersListViewModel.Item();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v108 = &v72 - v30;
  v31 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v31 - 8);
  v109 = &v72 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v72 - v34;
  Strong = swift_unknownObjectWeakLoadStrong();
  v121 = v25;
  if (Strong)
  {
    v120 = v26;
    v103 = a3;
    v104 = v35;
    v37 = *(a3 + 64);
    ObjectType = swift_getObjectType();
    (*(v37 + 8))(ObjectType, v37);
    swift_unknownObjectRelease();
    v39 = TTRRemindersListTreeViewModel.sectionItems.getter();

    v117 = *(v39 + 16);
    if (v117)
    {
      v78 = v20;
      v79 = a5;
      v40 = 0;
      v116 = v39 + ((v120[80] + 32) & ~v120[80]);
      v114 = enum case for TTRRemindersListViewModel.SectionID.named(_:);
      v115 = (v120 + 16);
      v41 = (v106 + 48);
      v42 = (v105 + 56);
      v112 = (v105 + 88);
      v113 = (v106 + 8);
      v110 = enum case for TTRRemindersListViewModel.SectionID.objectID(_:);
      v107 = enum case for TTRRemindersListViewModel.SectionID.scheduledPastDue(_:);
      v81 = enum case for TTRRemindersListViewModel.SectionID.date(_:);
      v77 = enum case for TTRRemindersListViewModel.SectionID.day(_:);
      v76 = enum case for TTRRemindersListViewModel.SectionID.month(_:);
      v75 = enum case for TTRRemindersListViewModel.SectionID.year(_:);
      v74 = enum case for TTRRemindersListViewModel.SectionID.eraAndYear(_:);
      v111 = (v105 + 8);
      v43 = (v120 + 8);
      v73 = enum case for TTRRemindersListViewModel.SectionID.sectionless(_:);
      v72 = enum case for TTRRemindersListViewModel.SectionID.uncommittedEditingSection(_:);
      v44 = v121;
      while (1)
      {
        if (v40 >= *(v39 + 16))
        {
          __break(1u);
LABEL_41:

          (*v111)(v11, a5);
          v26 = v120;
          v35 = v104;
          (*(v120 + 4))(v104, v28, v44);
          (*(v26 + 7))(v35, 0, 1, v44);
          v47 = v79;
          a3 = v103;
          v20 = v78;
          goto LABEL_25;
        }

        (*(v120 + 2))(v28, v116 + *(v120 + 9) * v40, v44);
        TTRRemindersListViewModel.Item.sectionHeader.getter();
        v45 = v118;
        if ((*v41)(v9, 1, v118) == 1)
        {
          break;
        }

        TTRRemindersListViewModel.SectionHeader.id.getter();
        (*v113)(v9, v45);
        a5 = v119;
        (*v42)(v11, 0, 1, v119);
        v46 = (*v112)(v11, a5);
        if (v46 == v114)
        {
          (*v111)(v11, a5);
          goto LABEL_5;
        }

        v44 = v121;
        if (v46 != v110 && v46 != v107 && v46 != v81 && v46 != v77 && v46 != v76 && v46 != v75 && v46 != v74)
        {
          if (v46 == v73)
          {
            goto LABEL_41;
          }

          if (v46 != v72)
          {
            result = _diagnoseUnexpectedEnumCase<A>(type:)();
            __break(1u);
            return result;
          }
        }

        (*v111)(v11, a5);
LABEL_6:
        ++v40;
        (*v43)(v28, v44);
        if (v117 == v40)
        {

          v47 = v79;
          v20 = v78;
          goto LABEL_24;
        }
      }

      sub_1000079B4(v9, &qword_10076E900, &qword_100631E10);
      a5 = v119;
      (*v42)(v11, 1, 1, v119);
LABEL_5:
      v44 = v121;
      goto LABEL_6;
    }

    v44 = v121;
    v47 = a5;
    a5 = v119;
LABEL_24:
    v26 = v120;
    v35 = v104;
    (*(v120 + 7))(v104, 1, 1, v44);
    a3 = v103;
  }

  else
  {
    (*(v26 + 7))(v35, 1, 1, v25);
    v44 = v25;
    v47 = a5;
    a5 = v119;
  }

LABEL_25:
  v48 = v109;
  sub_10000794C(v35, v109, &qword_100772140, &qword_10062D9F0);
  if ((*(v26 + 6))(v48, 1, v44) == 1)
  {
    sub_1000079B4(v48, &qword_100772140, &qword_10062D9F0);
    if (qword_100767170 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_100003E30(v49, qword_10077A6D0);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "Unable to find sectionless item", v52, 2u);
    }
  }

  else
  {
    v53 = *(v26 + 4);
    (v53)(v108, v48, v44);
    if (*(a3 + 88))
    {
      v54 = [swift_getObjCClassFromMetadata() newObjectID];
      if (v54)
      {
        v120 = v53;
        v55 = v82;
        *v82 = v54;
        v56 = v54;
        (*(v105 + 104))(v55, *v97, a5);
        v57 = type metadata accessor for TTRListColors.Color();
        (*(*(v57 - 8) + 56))(v20, 1, 1, v57);
        (*(v83 + 104))(v88, enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextStyle.plain(_:), v84);
        (*(v87 + 104))(v90, enum case for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor.regular(_:), v89);
        (*(v91 + 104))(v93, enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextSize.regular(_:), v92);
        (*(v94 + 104))(v96, enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.fullWidth(_:), v95);
        v119 = v56;
        v58 = v47;

        v59 = v85;
        TTRRemindersListViewModel.SectionHeaderTitle.init(text:disabled:textStyle:defaultTextColor:textSize:hidesTitleIfEmpty:separator:disclosureColor:ttrAccessibilityIsPlaceholder:)();
        v60 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
        (*(*(v60 - 8) + 56))(v59, 0, 1, v60);
        v61 = v86;
        TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
        sub_1000079B4(v35, &qword_100772140, &qword_10062D9F0);
        v62 = v100;
        (v120)(v100, v108, v121);
        v64 = v101;
        v63 = v102;
        (*(v101 + 104))(v62, enum case for TTRRemindersListSectionCreationLocation.aboveItem(_:), v102);
        v65 = type metadata accessor for TTRRemindersListViewModelSourceSectionsContext.ParamsForAddingEditableSection(0);
        (*(v64 + 32))(&v58[*(v65 + 24)], v62, v63);
        (*(v106 + 32))(v58, v61, v118);
        *&v58[*(v65 + 20)] = v119;
        return (*(*(v65 - 8) + 56))(v58, 0, 1, v65);
      }
    }

    if (qword_100767170 != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    sub_100003E30(v67, qword_10077A6D0);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&_mh_execute_header, v68, v69, "Unable to create new section ID from section class", v70, 2u);
    }

    (*(v26 + 1))(v108, v121);
  }

  sub_1000079B4(v35, &qword_100772140, &qword_10062D9F0);
  v71 = type metadata accessor for TTRRemindersListViewModelSourceSectionsContext.ParamsForAddingEditableSection(0);
  return (*(*(v71 - 8) + 56))(v47, 1, 1, v71);
}

uint64_t sub_1002E562C@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  sub_10000794C(v1 + 120, &v6, &qword_10077A7E8, &qword_100639598);
  if (v7)
  {
    return sub_100005FD0(&v6, a1);
  }

  sub_1000079B4(&v6, &qword_10077A7E8, &qword_100639598);
  v4 = type metadata accessor for TTRRemindersListDragAndDropSectionsPresenterCapability();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 24) = &off_10071EBE0;
  swift_unknownObjectWeakAssign();
  a1[3] = v4;
  a1[4] = &off_100718330;
  *a1 = v5;
  sub_10000B0D8(a1, &v6);
  swift_beginAccess();
  sub_1002E84E4(&v6, v1 + 120);
  return swift_endAccess();
}

uint64_t sub_1002E5744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v16[-1] - v7;
  sub_1002E562C(v16);
  v9 = *sub_10000C36C(v16, v16[3]);
  sub_10000794C(a1, v8, &qword_100772140, &qword_10062D9F0);
  v10 = type metadata accessor for TTRRemindersListDragAndDropSectionsPresenterCapability.SectionsInsertionRequest(0);
  v11 = swift_allocObject();
  v12 = OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B24SectionsInsertionRequest____lazy_storage___creationTarget;
  v13 = sub_100058000(&qword_100775970, &qword_100632680);
  (*(*(v13 - 8) + 56))(v11 + v12, 1, 1, v13);
  *(v11 + OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B24SectionsInsertionRequest____lazy_storage___hasValidInsertionLocation) = 2;
  sub_100154F88(v8, v11 + OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B24SectionsInsertionRequest_parent);
  *(v11 + OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B24SectionsInsertionRequest_childIndex) = a2;
  *(v11 + OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B24SectionsInsertionRequest_dragAndDropCapability) = v9;
  a3[3] = v10;
  a3[4] = &off_100718320;
  *a3 = v11;

  return sub_100004758(v16);
}

uint64_t sub_1002E58D8(int a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for REMRemindersListDataView.SectionLite.SectionType();
  v45 = *(v5 - 8);
  v46 = v5;
  __chkstk_darwin(v5);
  v44 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for TTRRemindersListLayout();
  v7 = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v44 - v10;
  __chkstk_darwin(v12);
  v51 = &v44 - v13;
  v14 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v14 - 8);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v44 - v18;
  __chkstk_darwin(v20);
  v22 = &v44 - v21;
  Strong = swift_unknownObjectWeakLoadStrong();
  v49 = a1;
  v48 = a2;
  if (Strong)
  {
    v24 = *(a2 + 64);
    ObjectType = swift_getObjectType();
    (*(v24 + 24))(ObjectType, v24);
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
    (*(*(v26 - 8) + 56))(v22, 1, 1, v26);
  }

  sub_10000794C(v22, v19, &unk_10078A380, &qword_10062DE60);
  v27 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v28 = *(v27 - 8);
  v29 = *(v28 + 48);
  if (v29(v19, 1, v27) == 1)
  {
    sub_1000079B4(v19, &unk_10078A380, &qword_10062DE60);
    v30 = v50;
    v31 = v51;
    (*(v7 + 104))(v51, enum case for TTRRemindersListLayout.list(_:), v50);
  }

  else
  {
    TTRRemindersListViewModel.ListInfo.listLayout.getter();
    (*(v28 + 8))(v19, v27);
    v31 = v51;
    v32 = v11;
    v30 = v50;
    (*(v7 + 32))(v51, v32, v50);
  }

  sub_10000794C(v22, v16, &unk_10078A380, &qword_10062DE60);
  if (v29(v16, 1, v27) == 1)
  {
    sub_1000079B4(v16, &unk_10078A380, &qword_10062DE60);
    v33 = v49;
  }

  else
  {
    v34 = TTRRemindersListViewModel.ListInfo.shouldCategorizeGroceryItems.getter();
    (*(v28 + 8))(v16, v27);
    v33 = v34 | v49;
  }

  v35 = v47;
  v36 = v48;
  (*(v7 + 16))(v47, v31, v30);
  v37 = (*(v7 + 88))(v35, v30);
  if (v37 == enum case for TTRRemindersListLayout.list(_:))
  {
    v39 = sub_1002E365C(v38)[2];

    if (!v39)
    {
      v33 = 0;
      goto LABEL_16;
    }

    v40 = *(v36 + 32);
    sub_100058000(&qword_10077A7F0, &qword_1006395A0);
    type metadata accessor for TTRSectionLite();
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_10062D400;
    (*(v45 + 104))(v44, enum case for REMRemindersListDataView.SectionLite.SectionType.sectionless(_:), v46);

    TTRSectionLite.init(sectionType:)();
    v42 = sub_100126730(v40, v41);

    swift_setDeallocating();
    swift_arrayDestroy();
    v30 = v50;
    swift_deallocClassInstance();
    if (v42)
    {
      v33 = 0;
    }

LABEL_15:
    v31 = v51;
LABEL_16:
    (*(v7 + 8))(v31, v30);
    sub_1000079B4(v22, &unk_10078A380, &qword_10062DE60);
    return v33 & 1;
  }

  if (v37 == enum case for TTRRemindersListLayout.columns(_:))
  {
    goto LABEL_15;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1002E5EF4(int a1, uint64_t (*a2)(uint64_t), uint64_t a3, __n128 a4)
{
  v49 = a3;
  v50 = a2;
  v6 = type metadata accessor for REMRemindersListDataView.SectionLite.SectionType();
  v47 = *(v6 - 8);
  v48 = v6;
  __chkstk_darwin(v6);
  v46 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for TTRRemindersListLayout();
  v8 = *(v54 - 8);
  __chkstk_darwin(v54);
  v51 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v45 - v11;
  __chkstk_darwin(v13);
  v55 = &v45 - v14;
  v15 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v15 - 8);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v45 - v19;
  __chkstk_darwin(v21);
  v23 = &v45 - v22;
  Strong = swift_unknownObjectWeakLoadStrong();
  v53 = a1;
  v52 = v4;
  if (Strong)
  {
    v25 = *(v4 + 64);
    ObjectType = swift_getObjectType();
    (*(v25 + 24))(ObjectType, v25);
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
    (*(*(v27 - 8) + 56))(v23, 1, 1, v27);
  }

  v56 = v23;
  sub_10000794C(v23, v20, &unk_10078A380, &qword_10062DE60);
  v28 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v29 = *(v28 - 8);
  v30 = *(v29 + 48);
  if (v30(v20, 1, v28) == 1)
  {
    sub_1000079B4(v20, &unk_10078A380, &qword_10062DE60);
    v32 = v54;
    v31 = v55;
    (*(v8 + 104))(v55, enum case for TTRRemindersListLayout.list(_:), v54);
  }

  else
  {
    TTRRemindersListViewModel.ListInfo.listLayout.getter();
    (*(v29 + 8))(v20, v28);
    v31 = v55;
    v33 = v12;
    v32 = v54;
    (*(v8 + 32))(v55, v33, v54);
  }

  sub_10000794C(v56, v17, &unk_10078A380, &qword_10062DE60);
  if (v30(v17, 1, v28) == 1)
  {
    sub_1000079B4(v17, &unk_10078A380, &qword_10062DE60);
    v34 = v53;
  }

  else
  {
    v35 = TTRRemindersListViewModel.ListInfo.shouldCategorizeGroceryItems.getter();
    (*(v29 + 8))(v17, v28);
    v34 = v35 | v53;
  }

  v36 = v51;
  v37 = v52;
  (*(v8 + 16))(v51, v31, v32);
  v38 = (*(v8 + 88))(v36, v32);
  if (v38 == enum case for TTRRemindersListLayout.list(_:))
  {
    v40 = sub_1002E365C(v39)[2];

    if (!v40)
    {
LABEL_18:
      (*(v8 + 8))(v31, v32);
      sub_1000079B4(v56, &unk_10078A380, &qword_10062DE60);
      return v40 & 1;
    }

    v41 = *(v37 + 32);
    sub_100058000(&qword_10077A7F0, &qword_1006395A0);
    type metadata accessor for TTRSectionLite();
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_10062D400;
    (*(v47 + 104))(v46, enum case for REMRemindersListDataView.SectionLite.SectionType.sectionless(_:), v48);

    TTRSectionLite.init(sectionType:)();
    v43 = sub_100126730(v41, v42);

    swift_setDeallocating();
    swift_arrayDestroy();
    v31 = v55;
    v38 = swift_deallocClassInstance();
    if ((v43 | v34))
    {
      LOBYTE(v40) = v43 ^ 1;
      goto LABEL_18;
    }

LABEL_17:
    LOBYTE(v40) = v50(v38);
    goto LABEL_18;
  }

  if (v38 == enum case for TTRRemindersListLayout.columns(_:))
  {
    if (v34)
    {
      LOBYTE(v40) = 1;
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1002E6528(uint64_t a1)
{
  v2 = type metadata accessor for REMRemindersListDataView.SectionLite();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 72);
  result = sub_100460C58(_swiftEmptyArrayStorage);
  v12 = result;
  v8 = *(v6 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = (v3 + 8);
    while (v9 < *(v6 + 16))
    {
      (*(v3 + 16))(v5, v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v9, v2);
      sub_1002E66B8(&v12);
      ++v9;
      (*v10)(v5, v2);
      if (v8 == v9)
      {
        return v12;
      }
    }

    __break(1u);

    (*v10)(v5, v2);

    __break(1u);
  }

  return result;
}

uint64_t sub_1002E66B8(void *a1)
{
  v88 = type metadata accessor for TTRSectionID();
  v2 = *(v88 - 8);
  __chkstk_darwin(v88);
  v104 = &v71[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v87 = &v71[-v5];
  __chkstk_darwin(v6);
  v8 = &v71[-v7];
  __chkstk_darwin(v9);
  v79 = &v71[-v10];
  v101 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v80 = *(v101 - 8);
  __chkstk_darwin(v101);
  v86 = &v71[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v71[-v13];
  v15 = type metadata accessor for REMRemindersListDataView.SectionLite.SectionType();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v71[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  REMRemindersListDataView.SectionLite.type.getter();
  result = (*(v16 + 88))(v18, v15);
  if (result != enum case for REMRemindersListDataView.SectionLite.SectionType.sectioned(_:))
  {
    if (result == enum case for REMRemindersListDataView.SectionLite.SectionType.sectionless(_:))
    {
      return result;
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
LABEL_36:
  }

  (*(v16 + 96))(v18, v15);
  v20 = *v18;

  v21 = REMRemindersListDataView.SectionLite.reminders.getter();
  v78 = *(v21 + 16);
  if (!v78)
  {
  }

  v77 = v20;
  v22 = 0;
  v74 = (*(v80 + 80) + 32) & ~*(v80 + 80);
  v76 = v21 + v74;
  v99 = v80 + 16;
  v98 = enum case for TTRSectionID.sectioned(_:);
  v97 = (v2 + 104);
  v103 = (v2 + 32);
  v84 = (v2 + 40);
  v23 = v80 + 8;
  v24 = v88;
  v73 = v2;
  v72 = v8;
  v82 = v14;
  v75 = v21;
  v85 = (v80 + 8);
  while (v22 < *(v21 + 16))
  {
    v25 = *(v80 + 72);
    v83 = v22;
    v93 = v25;
    v96 = *(v80 + 16);
    v96(v14, v76 + v25 * v22, v101);
    v26 = REMRemindersListDataView.ReminderLite.objectID.getter();
    v27 = v79;
    v28 = v77;
    *v79 = v77;
    v95 = *v97;
    v95(v27, v98, v24);
    v102 = *v103;
    v102(v8, v27, v24);
    v100 = v28;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v105 = *a1;
    v30 = v105;
    v31 = sub_1002613B0(v26);
    v33 = v30[2];
    v34 = (v32 & 1) == 0;
    v35 = __OFADD__(v33, v34);
    v36 = v33 + v34;
    if (v35)
    {
      goto LABEL_44;
    }

    v37 = v32;
    if (v30[3] < v36)
    {
      sub_100549434(v36, isUniquelyReferenced_nonNull_native);
      v31 = sub_1002613B0(v26);
      if ((v37 & 1) != (v38 & 1))
      {
        goto LABEL_46;
      }

LABEL_12:
      v39 = v105;
      if (v37)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

    v41 = v31;
    sub_1003AE274();
    v31 = v41;
    v39 = v105;
    if (v37)
    {
LABEL_13:
      v40 = v39[7];
      v94 = *(v2 + 72);
      (*(v2 + 40))(v40 + v94 * v31, v8, v24);

      goto LABEL_17;
    }

LABEL_15:
    v39[(v31 >> 6) + 8] |= 1 << v31;
    *(v39[6] + 8 * v31) = v26;
    v42 = v39[7];
    v94 = *(v2 + 72);
    v102((v42 + v94 * v31), v8, v24);
    v43 = v39[2];
    v35 = __OFADD__(v43, 1);
    v44 = v43 + 1;
    if (v35)
    {
      goto LABEL_45;
    }

    v39[2] = v44;
LABEL_17:
    *a1 = v39;
    v14 = v82;
    v45 = REMRemindersListDataView.ReminderLite.subtasks.getter();
    if (v45)
    {
      v46 = v45;
      v47 = *(v45 + 16);
      v81 = v23 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v92 = v47;
      if (v47)
      {
        v48 = 0;
        v49 = v45 + v74;
        v50 = v23;
        v91 = v45;
        while (v48 < *(v46 + 16))
        {
          v51 = v86;
          v52 = v101;
          v96(v86, v49, v101);
          v53 = a1;
          v54 = v24;
          v55 = v100;
          v56 = REMRemindersListDataView.ReminderLite.objectID.getter();
          v90 = *v50;
          v90(v51, v52);
          v57 = v87;
          v89 = v55;
          *v87 = v55;
          v95(v57, v98, v54);
          v102(v104, v57, v54);
          v58 = swift_isUniquelyReferenced_nonNull_native();
          v105 = *v53;
          v59 = v105;
          v61 = sub_1002613B0(v56);
          v62 = v59[2];
          v63 = (v60 & 1) == 0;
          v64 = v62 + v63;
          if (__OFADD__(v62, v63))
          {
            goto LABEL_41;
          }

          v65 = v60;
          if (v59[3] >= v64)
          {
            if ((v58 & 1) == 0)
            {
              sub_1003AE274();
            }
          }

          else
          {
            sub_100549434(v64, v58);
            v66 = sub_1002613B0(v56);
            if ((v65 & 1) != (v67 & 1))
            {
              goto LABEL_46;
            }

            v61 = v66;
          }

          v24 = v88;
          v68 = v105;
          if (v65)
          {
            (*v84)(v105[7] + v94 * v61, v104, v88);
          }

          else
          {
            v105[(v61 >> 6) + 8] |= 1 << v61;
            *(v68[6] + 8 * v61) = v56;
            v102((v68[7] + v94 * v61), v104, v24);
            v69 = v68[2];
            v35 = __OFADD__(v69, 1);
            v70 = v69 + 1;
            if (v35)
            {
              goto LABEL_42;
            }

            v68[2] = v70;
          }

          ++v48;
          a1 = v53;
          *v53 = v68;
          v49 += v93;
          v50 = v85;
          v46 = v91;
          if (v92 == v48)
          {
            v23 = v85;

            v2 = v73;
            v8 = v72;
            v14 = v82;
            v90(v82, v101);
            goto LABEL_5;
          }
        }

        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        break;
      }

      (*v23)(v14, v101);
    }

    else
    {

      (*v23)(v14, v101);
    }

LABEL_5:
    v22 = v83 + 1;
    v21 = v75;
    if (v83 + 1 == v78)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  sub_10001DF64();
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_1002E6F68(uint64_t a1)
{
  v2 = type metadata accessor for TTRSectionID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v83 = (&v61 - v7);
  v8 = type metadata accessor for REMRemindersListDataView.SectionLite.SectionType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v85 = type metadata accessor for REMRemindersListDataView.SectionLite();
  v12 = *(v85 - 8);
  __chkstk_darwin(v85);
  v82 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v81 = &v61 - v15;
  __chkstk_darwin(v16);
  v18 = &v61 - v17;
  v19 = *(a1 + 72);
  v20 = sub_100461210(_swiftEmptyArrayStorage);
  v21 = v19;
  v22 = v20;
  v80 = *(v21 + 16);
  if (!v80)
  {
    return v22;
  }

  v23 = 0;
  v79 = (v9 + 88);
  v78 = enum case for REMRemindersListDataView.SectionLite.SectionType.sectioned(_:);
  v69 = enum case for REMRemindersListDataView.SectionLite.SectionType.sectionless(_:);
  v68 = enum case for TTRSectionID.sectionless(_:);
  v77 = (v3 + 104);
  v64 = v3 + 16;
  v63 = (v12 + 32);
  v70 = v3;
  v74 = (v12 + 8);
  v75 = (v3 + 8);
  v62 = (v12 + 40);
  v67 = (v9 + 96);
  v66 = enum case for TTRSectionID.sectioned(_:);
  v72 = v8;
  v24 = v85;
  v76 = v18;
  v84 = v12 + 16;
  v61 = v5;
  v65 = v11;
  v73 = v12;
  v71 = v21;
  while (v23 < *(v21 + 16))
  {
    v25 = v21 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v26 = *(v12 + 72);
    v86 = v23;
    v87 = v26;
    v27 = *(v12 + 16);
    v27(v18, v25 + v26 * v23, v24);
    REMRemindersListDataView.SectionLite.type.getter();
    v28 = (*v79)(v11, v8);
    if (v28 == v78)
    {
      (*v67)(v11, v8);
      v29 = *v11;

      v30 = v83;
      *v83 = v29;
      v31 = v2;
      (*v77)(v30, v66, v2);
      v27(v81, v18, v24);
      v32 = v29;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v88 = v22;
      v35 = sub_1003AB5F4(v30);
      v36 = v22[2];
      v37 = (v34 & 1) == 0;
      v38 = v36 + v37;
      if (__OFADD__(v36, v37))
      {
        goto LABEL_31;
      }

      v39 = v34;
      if (v22[3] >= v38)
      {
        v24 = v85;
        v18 = v76;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1003AF034();
          v24 = v85;
        }

        v2 = v31;
      }

      else
      {
        sub_10054AA9C(v38, isUniquelyReferenced_nonNull_native);
        v40 = sub_1003AB5F4(v83);
        v18 = v76;
        if ((v39 & 1) != (v41 & 1))
        {
          goto LABEL_37;
        }

        v35 = v40;
        v2 = v31;
        v24 = v85;
      }

      v22 = v88;
      v51 = v70;
      if (v39)
      {
        (*v62)(v88[7] + v35 * v87, v81, v24);

        (*v75)(v83, v2);
        (*v74)(v18, v24);
        v5 = v61;
        v8 = v72;
        v12 = v73;
        v11 = v65;
      }

      else
      {
        v88[(v35 >> 6) + 8] |= 1 << v35;
        v52 = v83;
        (*(v51 + 16))(v22[6] + *(v51 + 72) * v35, v83, v2);
        (*v63)(v22[7] + v35 * v87, v81, v24);

        (*(v51 + 8))(v52, v2);
        (*v74)(v18, v24);
        v53 = v22[2];
        v47 = __OFADD__(v53, 1);
        v54 = v53 + 1;
        v11 = v65;
        if (v47)
        {
          goto LABEL_33;
        }

        v22[2] = v54;
        v5 = v61;
        v8 = v72;
        v12 = v73;
      }
    }

    else
    {
      if (v28 != v69)
      {
        goto LABEL_35;
      }

      (*v77)(v5, v68, v2);
      v18 = v76;
      v27(v82, v76, v85);
      v42 = swift_isUniquelyReferenced_nonNull_native();
      v88 = v22;
      v43 = sub_1003AB5F4(v5);
      v45 = v22[2];
      v46 = (v44 & 1) == 0;
      v47 = __OFADD__(v45, v46);
      v48 = v45 + v46;
      if (v47)
      {
        goto LABEL_32;
      }

      v49 = v44;
      if (v22[3] >= v48)
      {
        v24 = v85;
        if ((v42 & 1) == 0)
        {
          v59 = v43;
          sub_1003AF034();
          v24 = v85;
          v43 = v59;
        }
      }

      else
      {
        sub_10054AA9C(v48, v42);
        v43 = sub_1003AB5F4(v5);
        if ((v49 & 1) != (v50 & 1))
        {
          goto LABEL_36;
        }

        v24 = v85;
      }

      v12 = v73;
      v22 = v88;
      if (v49)
      {
        (*v62)(v88[7] + v43 * v87, v82, v24);
        (*v75)(v5, v2);
        (*v74)(v18, v24);
      }

      else
      {
        v88[(v43 >> 6) + 8] |= 1 << v43;
        v55 = v70;
        v56 = v43;
        (*(v70 + 16))(v22[6] + *(v70 + 72) * v43, v5, v2);
        (*v63)(v22[7] + v56 * v87, v82, v24);
        (*(v55 + 8))(v5, v2);
        (*v74)(v18, v24);
        v57 = v22[2];
        v47 = __OFADD__(v57, 1);
        v58 = v57 + 1;
        if (v47)
        {
          goto LABEL_34;
        }

        v22[2] = v58;
      }

      v8 = v72;
    }

    v21 = v71;
    v23 = v86 + 1;
    if (v80 == v86 + 1)
    {
      return v22;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
LABEL_36:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_37:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1002E77E8(uint64_t a1, __n128 a2)
{
  v58 = type metadata accessor for REMRemindersListDataView.SectionLite.SectionType();
  v3 = *(v58 - 8);
  __chkstk_darwin(v58);
  v57 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for REMRemindersListDataView.SectionLite();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v49 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v42 - v9;
  v11 = *(a1 + 72);
  v50 = sub_100461430(_swiftEmptyArrayStorage);
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = 0;
    v55 = (v3 + 88);
    v56 = v6 + 16;
    v54 = enum case for REMRemindersListDataView.SectionLite.SectionType.sectioned(_:);
    v52 = v12;
    v53 = (v6 + 8);
    v51 = enum case for REMRemindersListDataView.SectionLite.SectionType.sectionless(_:);
    v44 = (v6 + 40);
    v45 = (v6 + 32);
    v47 = v12 - 1;
    v48 = (v3 + 96);
    while (2)
    {
      for (i = v13; ; ++i)
      {
        if (i >= *(v11 + 16))
        {
          __break(1u);
          goto LABEL_26;
        }

        v15 = v11;
        v16 = *(v6 + 72);
        v17 = v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + v16 * i;
        v18 = *(v6 + 16);
        v19 = v5;
        v18(v10, v17, v5);
        v13 = i + 1;
        v20 = v57;
        REMRemindersListDataView.SectionLite.type.getter();
        v21 = (*v55)(v20, v58);
        if (v21 == v54)
        {
          break;
        }

        if (v21 != v51)
        {
          goto LABEL_28;
        }

        v5 = v19;
        (*v53)(v10, v19);
        v11 = v15;
        if (v52 == v13)
        {
          return v50;
        }
      }

      v22 = v57;
      (*v48)(v57, v58);
      v23 = *v22;
      v46 = *(v22 + 3);
      v24 = *(v22 + 4);

      if (v24)
      {
        v43 = v24;
        v5 = v19;
        v18(v49, v10, v19);
        v25 = v50;
        LODWORD(v42) = swift_isUniquelyReferenced_nonNull_native();
        v59 = v25;
        v26 = v46;
        v27 = v43;
        v29 = sub_100009044(v46, v43);
        v30 = *(v25 + 16);
        v31 = (v28 & 1) == 0;
        v32 = v30 + v31;
        if (!__OFADD__(v30, v31))
        {
          if (*(v25 + 24) >= v32)
          {
            if (v42)
            {
              if ((v28 & 1) == 0)
              {
                goto LABEL_21;
              }
            }

            else
            {
              v42 = v29;
              LODWORD(v50) = v28;
              sub_1003AF070();
              v29 = v42;
              if ((v50 & 1) == 0)
              {
                goto LABEL_21;
              }
            }
          }

          else
          {
            LODWORD(v50) = v28;
            sub_10054AF44(v32, v42);
            v33 = sub_100009044(v26, v27);
            if ((v50 & 1) != (v34 & 1))
            {
              goto LABEL_29;
            }

            v29 = v33;
            if ((v50 & 1) == 0)
            {
LABEL_21:
              v36 = v59;
              v59[(v29 >> 6) + 8] |= 1 << v29;
              v37 = (v36[6] + 16 * v29);
              *v37 = v26;
              v37[1] = v27;
              (*v45)(v36[7] + v29 * v16, v49, v5);
              (*v53)(v10, v5);
              v38 = v36[2];
              v39 = __OFADD__(v38, 1);
              v40 = v38 + 1;
              if (!v39)
              {
                v50 = v36;
                v36[2] = v40;
                goto LABEL_23;
              }

LABEL_27:
              __break(1u);
LABEL_28:
              _diagnoseUnexpectedEnumCase<A>(type:)();
              __break(1u);
LABEL_29:
              result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return result;
            }
          }

          v35 = v29;

          v50 = v59;
          (*v44)(v59[7] + v35 * v16, v49, v5);
          (*v53)(v10, v5);
          goto LABEL_23;
        }

LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v5 = v19;
      (*v53)(v10, v19);
LABEL_23:
      v11 = v15;
      if (v47 != i)
      {
        continue;
      }

      break;
    }
  }

  return v50;
}

void *sub_1002E7CC4()
{

  sub_10003B788(v0 + 56);

  sub_1000079B4(v0 + 120, &qword_10077A7E8, &qword_100639598);
  return v0;
}

uint64_t sub_1002E7D44()
{
  sub_1002E7CC4();

  return swift_deallocClassInstance();
}

uint64_t sub_1002E7DEC(uint64_t a1, char a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v7 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.SectionHeader.id.getter();
  v11 = (*(v8 + 88))(v10, v7);
  if (v11 == enum case for TTRRemindersListViewModel.SectionID.named(_:))
  {
    goto LABEL_2;
  }

  if (v11 == enum case for TTRRemindersListViewModel.SectionID.objectID(_:))
  {
    (*(v8 + 8))(v10, v7);
    v12 = 1;
    return v12 & 1;
  }

  v14 = v11 == enum case for TTRRemindersListViewModel.SectionID.scheduledPastDue(_:) || v11 == enum case for TTRRemindersListViewModel.SectionID.date(_:);
  v15 = v14 || v11 == enum case for TTRRemindersListViewModel.SectionID.day(_:);
  v16 = v15 || v11 == enum case for TTRRemindersListViewModel.SectionID.month(_:);
  v17 = v16 || v11 == enum case for TTRRemindersListViewModel.SectionID.year(_:);
  if (v17 || v11 == enum case for TTRRemindersListViewModel.SectionID.eraAndYear(_:))
  {
    goto LABEL_2;
  }

  if (v11 == enum case for TTRRemindersListViewModel.SectionID.sectionless(_:))
  {
    v19.n128_f64[0] = (*(v8 + 8))(v10, v7);
    v12 = sub_1002E5EF4(a2 & 1, a3, a4, v19);
    return v12 & 1;
  }

  if (v11 == enum case for TTRRemindersListViewModel.SectionID.uncommittedEditingSection(_:))
  {
LABEL_2:
    (*(v8 + 8))(v10, v7);
    v12 = 0;
    return v12 & 1;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1002E8008@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for TTRRemindersListViewModel.SectionID.EditableCasesSectionID();
  v27 = *(v3 - 8);
  v28 = v3;
  __chkstk_darwin(v3);
  v5 = (v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v26 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTRRemindersListViewModel.Item.SectionCasesItem();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.Item.sectionCasesOnly.getter();
  v17 = (*(v14 + 88))(v16, v13);
  if (v17 == enum case for TTRRemindersListViewModel.Item.SectionCasesItem.section(_:))
  {
    (*(v14 + 96))(v16, v13);
    v14 = v26;
    (*(v26 + 32))(v12, v16, v10);
    TTRRemindersListViewModel.SectionHeader.id.getter();
    TTRRemindersListViewModel.SectionID.editableSectionCasesOnly.getter();
    (*(v7 + 8))(v9, v6);
    a1 = v27;
    v16 = v28;
    v18 = (*(v27 + 88))(v5, v28);
    if (v18 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.objectID(_:))
    {
      (*(a1 + 96))(v5, v16);
      v19 = *v5;
      v20 = v25[1];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v21 = *(v20 + 64);
        ObjectType = swift_getObjectType();
        (*(v21 + 16))(ObjectType, v21);
        swift_unknownObjectRelease();
        TTRSection.init(with:store:)();
        return (*(v14 + 8))(v12, v10);
      }

LABEL_12:
      (*(v14 + 8))(v12, v10);
      goto LABEL_13;
    }
  }

  else
  {
    if (v17 == enum case for TTRRemindersListViewModel.Item.SectionCasesItem.unknown(_:))
    {
      goto LABEL_13;
    }

    v18 = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  if (v18 != enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.sectionless(_:) && v18 != enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.uncommittedEditingSection(_:))
  {
    if (v18 != enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.unknown(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    goto LABEL_12;
  }

  (*(v14 + 8))(v12, v10);
  (*(a1 + 8))(v5, v16);
LABEL_13:
  v24 = type metadata accessor for TTRSection();
  return (*(*(v24 - 8) + 56))(v29, 1, 1, v24);
}

uint64_t type metadata accessor for TTRRemindersListViewModelSourceSectionsContext.ParamsForAddingEditableSection(uint64_t a1)
{
  result = qword_10077A860;
  if (!qword_10077A860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002E84E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10077A7E8, &qword_100639598);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002E8554()
{
  result = qword_10077A800;
  if (!qword_10077A800)
  {
    sub_10005D20C(&qword_10077A7F8, &qword_1006395A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077A800);
  }

  return result;
}

char *sub_1002E85B8(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v14 = *a2;
    *a1 = *a2;
    a1 = (v14 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = *(a3 + 24);
    v10 = *&a2[v8];
    *&a1[v8] = v10;
    v11 = type metadata accessor for TTRRemindersListSectionCreationLocation();
    v12 = *(*(v11 - 8) + 16);
    v13 = v10;
    v12(&a1[v9], &a2[v9], v11);
  }

  return a1;
}

uint64_t sub_1002E86D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  (*(*(v4 - 8) + 8))(a1, v4);

  v5 = *(a2 + 24);
  v6 = type metadata accessor for TTRRemindersListSectionCreationLocation();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1 + v5, v6);
}

uint64_t sub_1002E8784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a3 + 24);
  v9 = *(a2 + v7);
  *(a1 + v7) = v9;
  v10 = type metadata accessor for TTRRemindersListSectionCreationLocation();
  v11 = *(*(v10 - 8) + 16);
  v12 = v9;
  v11(a1 + v8, a2 + v8, v10);
  return a1;
}

uint64_t sub_1002E8854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a2 + v7);
  v9 = *(a1 + v7);
  *(a1 + v7) = v8;
  v10 = v8;

  v11 = *(a3 + 24);
  v12 = type metadata accessor for TTRRemindersListSectionCreationLocation();
  (*(*(v12 - 8) + 24))(a1 + v11, a2 + v11, v12);
  return a1;
}

uint64_t sub_1002E891C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a3 + 24);
  *(a1 + v7) = *(a2 + v7);
  v9 = type metadata accessor for TTRRemindersListSectionCreationLocation();
  (*(*(v9 - 8) + 32))(a1 + v8, a2 + v8, v9);
  return a1;
}

uint64_t sub_1002E89D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a1 + v7);
  *(a1 + v7) = *(a2 + v7);

  v9 = *(a3 + 24);
  v10 = type metadata accessor for TTRRemindersListSectionCreationLocation();
  (*(*(v10 - 8) + 40))(a1 + v9, a2 + v9, v10);
  return a1;
}

uint64_t sub_1002E8AC0(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TTRRemindersListSectionCreationLocation();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002E8BB8()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002E8C4C, v2, v1);
}

uint64_t sub_1002E8C4C()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1002E8CAC(uint64_t a1)
{
  v2 = sub_100058000(&qword_100771588, &qword_1006388F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = type metadata accessor for TTRRemindersListViewModel.Item();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() daemonUserDefaults];
  v10 = [v9 enableAutoCompleteReminders];

  result = 0;
  if (v10)
  {
    (*(v6 + 16))(v8, a1, v5);
    type metadata accessor for TTRIReminderCellAutoCompletePresenter(0);
    v12 = swift_allocObject();
    *(v12 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v12 + 40) = 0;
    swift_unknownObjectWeakInit();
    v13 = OBJC_IVAR____TtC9Reminders37TTRIReminderCellAutoCompletePresenter_viewModel;
    v14 = type metadata accessor for TTRIReminderCellAutoCompleteViewModel(0);
    v15 = *(*(v14 - 1) + 56);
    v15(v12 + v13, 1, 1, v14);
    (*(v6 + 32))(v4, v8, v5);
    v4[v14[5]] = 0;
    v16 = &v4[v14[6]];
    *v16 = 0;
    *(v16 + 1) = 0;
    *&v4[v14[7]] = _swiftEmptyArrayStorage;
    v15(v4, 0, 1, v14);
    swift_beginAccess();
    sub_1002E8FAC(v4, v12 + v13);
    swift_endAccess();
    v17 = sub_1002E901C();
    v18 = type metadata accessor for TTRIReminderCellAutoCompleteViewController();
    v19 = objc_allocWithZone(v18);
    *&v19[OBJC_IVAR____TtC9Reminders42TTRIReminderCellAutoCompleteViewController_autoCompleteStack] = 0;
    v20 = &v19[OBJC_IVAR____TtC9Reminders42TTRIReminderCellAutoCompleteViewController_presenter];
    *v20 = v12;
    v20[1] = v17;
    v23.receiver = v19;
    v23.super_class = v18;

    v21 = objc_msgSendSuper2(&v23, "init");
    *(v12 + 24) = &off_100719340;
    swift_unknownObjectWeakAssign();
    return v21;
  }

  return result;
}

uint64_t sub_1002E8FAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100771588, &qword_1006388F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002E901C()
{
  result = qword_10077A938;
  if (!qword_10077A938)
  {
    type metadata accessor for TTRIReminderCellAutoCompletePresenter(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077A938);
  }

  return result;
}

uint64_t sub_1002E9074()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10077A940);
  v1 = sub_100003E30(v0, qword_10077A940);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002E91A0(uint64_t a1)
{
  v2 = type metadata accessor for TTRListOrCustomSmartList();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for TTRListOrCustomSmartList.list(_:))
  {
    (*(v3 + 96))(v6, v2);
    v8 = *v6;
    v9 = [*v6 displayName];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if ([v8 sharingStatus] - 1 > 2)
    {
      v14 = 0x800000010067F540;
      v15 = 0xD000000000000036;
      v16 = 0x800000010067F560;
      v13 = 0x1000000000000015;
    }

    else
    {
      v13 = 0x100000000000001CLL;
      v14 = 0x800000010067F5A0;
      v15 = 0xD000000000000032;
      v16 = 0x800000010067F5C0;
    }

    TTRLocalizedString(_:comment:)(*&v13, *&v15);
    sub_100058000(&unk_100786CB0, &qword_100636EF0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_10062D400;
    *(v26 + 56) = &type metadata for String;
    *(v26 + 64) = sub_10005C390();
    *(v26 + 32) = v10;
    *(v26 + 40) = v12;
    v25 = String.init(format:_:)();

    return v25;
  }

  if (v7 == enum case for TTRListOrCustomSmartList.customSmartList(_:))
  {
    (*(v3 + 96))(v6, v2);
    v17 = *v6;
    v18._countAndFlagsBits = 0x100000000000001BLL;
    v18._object = 0x800000010067F4F0;
    v19._object = 0x800000010067F510;
    v19._countAndFlagsBits = 0xD00000000000002ELL;
    TTRLocalizedString(_:comment:)(v18, v19);
    sub_100058000(&unk_100786CB0, &qword_100636EF0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_10062D400;
    v21 = [v17 name];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = sub_10005C390();
    *(v20 + 32) = v22;
    *(v20 + 40) = v24;
    v25 = String.init(format:_:)();

    return v25;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1002E950C(uint64_t a1)
{
  v2 = type metadata accessor for TTRListOrCustomSmartList();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (&v22[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for TTRListOrCustomSmartList.list(_:))
  {
    (*(v3 + 96))(v6, v2);
    v8 = *v6;
    v9 = [*v6 sharingStatus];
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        if (v9 != 3)
        {
          goto LABEL_11;
        }

LABEL_10:
        v13 = "t shared by someone else";
        v14 = "eted from all of their devices.";
        v15 = 0xD00000000000007FLL;
LABEL_18:
        v16 = v13 | 0x8000000000000000;
        v18 = 0xD00000000000002ELL;
        goto LABEL_19;
      }

      v14 = "he link you were invited with.";
      v15 = 0xD00000000000008ELL;
      v16 = 0x800000010067F2A0;
      v18 = 0xD000000000000038;
LABEL_19:
      v17 = v14 | 0x8000000000000000;
      goto LABEL_20;
    }

    if (v9)
    {
      if (v9 != 1)
      {
LABEL_11:
        v16 = 0x800000010067F1F0;
        v17 = 0x800000010067F270;
        v15 = 0x1000000000000077;
        v18 = 0xD00000000000002DLL;
LABEL_20:
        countAndFlagsBits = TTRLocalizedString(_:comment:)(*&v15, *&v18)._countAndFlagsBits;

        return countAndFlagsBits;
      }

      goto LABEL_10;
    }

    REMList.ttrGroceryContext.getter();
    if (v23)
    {
      sub_10000C36C(v22, v23);
      ShouldCategorizeGrocery = dispatch thunk of TTRListGroceryContextProtocol.ttrShouldCategorizeGroceryItems.getter();
      sub_100004758(v22);
      if (ShouldCategorizeGrocery)
      {
        v14 = " all items in this list.";
        v15 = 0xD000000000000028;
        v16 = 0x800000010067F480;
        v18 = 0xD000000000000036;
        goto LABEL_19;
      }
    }

    else
    {
      sub_1002E982C(v22);
    }

    v13 = "te alert for list shared by me";
    v14 = " all reminders in this list.";
    v15 = 0xD00000000000002CLL;
    goto LABEL_18;
  }

  if (v7 == enum case for TTRListOrCustomSmartList.customSmartList(_:))
  {
    (*(v3 + 8))(v6, v2);
    v10._countAndFlagsBits = 0x1000000000000058;
    v10._object = 0x800000010067F150;
    v11._countAndFlagsBits = 0xD000000000000037;
    v11._object = 0x800000010067F1B0;
    return TTRLocalizedString(_:comment:)(v10, v11)._countAndFlagsBits;
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1002E982C(uint64_t a1)
{
  v2 = sub_100058000(&qword_1007757E0, &qword_100636780);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002E9894(uint64_t a1)
{
  v2 = type metadata accessor for TTRListOrCustomSmartList();
  __chkstk_darwin(v2);
  v4 = (&v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __chkstk_darwin(v5);
  v9 = &v32 - v8;
  v10 = *(a1 + 16);
  if (!v10)
  {

    v27 = 0;
    v28 = 0;
    v29 = 0;
    return v29 | v27 | v28 & 1;
  }

  v33 = 0;
  v47 = 0;
  v36 = 0;
  v11 = 0;
  v44 = 0;
  v45 = 0;
  v43 = 0;
  v12 = 0;
  v42 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v39 = (v6 + 88);
  v38 = enum case for TTRListOrCustomSmartList.list(_:);
  v35 = enum case for TTRListOrCustomSmartList.customSmartList(_:);
  v40 = v6 + 16;
  v41 = (v6 + 8);
  v34 = (v6 + 96);
  v32 = v10 - 1;
  v37 = v10;
  do
  {
    while (1)
    {
      if (v12 >= *(a1 + 16))
      {
        __break(1u);
LABEL_50:
        v27 = &_mh_execute_header;
        if ((v36 & 1) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_46;
      }

      v14 = v4;
      v15 = v6;
      v16 = *(v6 + 16);
      v17 = v2;
      v18 = v2;
      v19 = v9;
      v16(v9, v42 + *(v6 + 72) * v12, v17, v7);
      if (v44)
      {
        v11 = v43;
      }

      v20 = v47;
      if ((v44 & 1 & v43) != 0)
      {
        v20 = v45;
      }

      if ((v44 & 1 & v43 & v45) != 0)
      {
        (*v41)(v19, v18);

        v27 = 0x1000000;
        if (v33)
        {
          v27 = 0x101000000;
        }

        if (v36)
        {
          v27 |= 0x10000uLL;
        }

        v28 = 1;
        goto LABEL_48;
      }

      v46 = v11;
      v47 = v20;
      v21 = v19;
      (v16)(v14, v19, v18);
      v4 = v14;
      v22 = (*v39)(v14, v18);
      v2 = v18;
      if (v22 == v38)
      {
        break;
      }

      if (v22 != v35)
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }

      v26 = *v41;
      (*v41)(v21, v18);
      v26(v14, v18);
      v9 = v21;
      v47 = 1;
      v45 = 1;
      v6 = v15;
      v11 = v46;
      v13 = v37;
LABEL_5:
      if (v13 == ++v12)
      {

        v27 = 0x1000000;
        if (v33)
        {
          v27 = 0x101000000;
        }

        v30 = &_mh_execute_header;
        if ((v33 & 1) == 0)
        {
          v30 = 0;
        }

        if ((v47 & 1) == 0)
        {
          v27 = v30;
        }

        if (v36)
        {
          goto LABEL_46;
        }

LABEL_51:
        if (v11)
        {
          goto LABEL_47;
        }

        goto LABEL_52;
      }
    }

    (*v34)(v14, v18);
    v23 = *v14;
    if (([*v14 isGroup] & 1) == 0)
    {
      v24 = [v23 sharingStatus];

      (*v41)(v21, v2);
      if (v24 <= 1)
      {
        v6 = v15;
        v4 = v14;
        v11 = v46;
        if (v24)
        {
          v25 = v24 == 1;
          v9 = v21;
LABEL_22:
          v13 = v37;
          v36 = 1;
          if (v25)
          {
            v44 = 1;
          }

          goto LABEL_5;
        }

        v36 = 1;
      }

      else
      {
        v6 = v15;
        v4 = v14;
        if (v24 != 2)
        {
          v9 = v21;
          if (v24 != 4)
          {
            v25 = v24 == 3;
            v11 = v46;
            goto LABEL_22;
          }

          v36 = 1;
          v11 = v46;
          goto LABEL_4;
        }

        v36 = 1;
        v11 = 1;
        v43 = 1;
      }

      v9 = v21;
LABEL_4:
      v13 = v37;
      goto LABEL_5;
    }

    (*v41)(v21, v18);

    v9 = v21;
    v33 = 1;
    v25 = v32 == v12++;
    v6 = v15;
    v4 = v14;
    v11 = v46;
  }

  while (!v25);

  if ((v47 & 1) == 0)
  {
    goto LABEL_50;
  }

  v27 = 0x101000000;
  if ((v36 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_46:
  v27 |= 0x10000uLL;
  if (v11)
  {
LABEL_47:
    v28 = v44;
LABEL_48:
    v29 = 256;
    return v29 | v27 | v28 & 1;
  }

LABEL_52:
  v29 = 0;
  v28 = v44;
  return v29 | v27 | v28 & 1;
}