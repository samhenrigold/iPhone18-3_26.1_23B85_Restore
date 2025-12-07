void sub_100539A38(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_showLargeAttachmentsValue) != (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_showLargeAttachmentsValue) = a1 & 1;
    v2 = *(v1 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_smartList);
    if (v2)
    {
      v4 = v2;
      v3 = [v4 customContext];
      if (v3)
      {

        type metadata accessor for TTRSmartListEditor();
        __chkstk_darwin(v4);
        static TTROneshotEditing.oneshotEdit(_:undoManager:editBlock:)();
      }

      else
      {
      }
    }
  }
}

uint64_t sub_100539B50()
{
  if (*(v0 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_hasIncompleteOrCompletedReminders) == 2)
  {
    return TTRRemindersListViewModel.EmptyListMessagingType.init(completedCount:)();
  }

  else
  {
    return TTRRemindersListViewModel.EmptyListMessagingType.init(hasIncompleteOrCompletedReminders:shouldCategorizeGroceryItems:)();
  }
}

uint64_t sub_100539B94@<X0>(char *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_smartList);
  if (v3 && (v4 = [v3 customContext]) != 0)
  {
    v5 = v4;
    v6 = *(sub_100058000(&qword_10076E918, &unk_100631E20) + 48);
    v7 = [v5 account];
    v8 = [v7 objectID];

    *a1 = v8;
    v9 = REMSmartListCustomContext.filter.getter();
    if (v9)
    {
      v10 = v9;
      REMCustomSmartListFilterDescriptor.lists.getter();
    }

    else
    {

      v16 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterLists();
      (*(*(v16 - 8) + 56))(&a1[v6], 1, 1, v16);
    }

    v17 = enum case for TTRAutoCompleteReminderListScope.matching(_:);
    v18 = type metadata accessor for TTRAutoCompleteReminderListScope();
    v20 = *(v18 - 8);
    (*(v20 + 104))(a1, v17, v18);
    v12 = *(v20 + 56);
    v14 = a1;
    v15 = 0;
    v13 = v18;
  }

  else
  {
    v11 = type metadata accessor for TTRAutoCompleteReminderListScope();
    v12 = *(*(v11 - 8) + 56);
    v13 = v11;
    v14 = a1;
    v15 = 1;
  }

  return v12(v14, v15, 1, v13);
}

id sub_100539D94@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_smartList);
  if (v3)
  {
    *a1 = v3;
    v4 = enum case for TTRRemindersListSortingStyleSaveTarget.smartList(_:);
    v10 = v3;
    v5 = type metadata accessor for TTRRemindersListSortingStyleSaveTarget();
    v6 = *(v5 - 8);
    (*(v6 + 104))(a1, v4, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    v7 = v10;
  }

  else
  {
    v8 = type metadata accessor for TTRRemindersListSortingStyleSaveTarget();
    (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
    v7 = 0;
  }

  return v7;
}

uint64_t sub_100539ECC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_smartList);
  if (v3)
  {
    v4 = v3;
    sub_100539F8C(a1);
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v6 = sub_1004DD314;
  }

  else
  {
    *a1 = 0;
    type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
    swift_storeEnumTagMultiPayload();
    v5 = 0;
    v6 = sub_10057F4D0;
  }

  v7 = v6;
  result = type metadata accessor for TTRRemindersListCreationTargetWithSectionID(0);
  v9 = (a1 + *(result + 20));
  *v9 = v7;
  v9[1] = v5;
  return result;
}

uint64_t sub_100539F8C@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_100058000(&qword_10076D018, &unk_100630CC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v22[-v4];
  v6 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterLists();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v1 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_smartList);
  if (v10)
  {
    v11 = v10;
    v12 = [v11 customContext];
    if (v12 && (v13 = v12, v14 = REMSmartListCustomContext.filter.getter(), v13, v14))
    {
      REMCustomSmartListFilterDescriptor.lists.getter();
      if ((*(v7 + 48))(v5, 1, v6) == 1)
      {

        sub_1000079B4(v5, &qword_10076D018, &unk_100630CC0);
      }

      else
      {
        (*(v7 + 32))(v9, v5, v6);
        v19 = [objc_opt_self() daemonUserDefaults];
        v20 = [v19 preferredDefaultListID];

        v21 = REMCustomSmartListFilterDescriptor.FilterLists.alternateTargetList(for:defaultListID:)();
        (*(v7 + 8))(v9, v6);

        if (v21)
        {
          *a1 = v21;
          v15 = &enum case for TTRRemindersListTargetContainer.TargetList.listID(_:);
          goto LABEL_8;
        }
      }
    }

    else
    {
    }
  }

  v15 = &enum case for TTRRemindersListTargetContainer.TargetList.defaultList(_:);
LABEL_8:
  v16 = *v15;
  v17 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
  (*(*(v17 - 8) + 104))(a1, v16, v17);
  type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10053A29C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (*(v4 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_sectionsContextInstance))
  {
    __chkstk_darwin(a1);
    v12[2] = v6;
    v12[3] = v7;
    v12[4] = v8;
    v9 = v8;
    type metadata accessor for TTRRemindersListViewModelSourceSectionsContext();

    v10 = sub_1002E7DEC(v9, a4 & 1, sub_10053F7AC, v12);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_10053A394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v8 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  (*(*(v8 - 8) + 16))(v7, a3, v8);
  (*(v5 + 104))(v7, enum case for TTRRemindersListViewModel.Item.section(_:), v4);
  v9 = dispatch thunk of TTRRemindersListTreeContentsQueryable.hasLoadedReminderItems(in:)();
  (*(v5 + 8))(v7, v4);
  return v9 & 1;
}

double sub_10053A4F0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10053A690();
  v9 = *(v5 + 16);
  v9(v7, a1, v4);
  v10 = *(v5 + 88);
  v11 = (v5 + 8);
  if (v10(v7, v4) == enum case for TTRRemindersListViewModel.Item.reminder(_:))
  {
    (*v11)(v7, v4);
    v12 = type metadata accessor for TTRSmartListDragAndDropPresenterCapability.MoveReminderSubjectForItem(0);
    *(a2 + 24) = v12;
    *(a2 + 32) = &off_10071A5E0;
    v13 = sub_1000317B8(a2);
    v9(v13, a1, v4);
    *(v13 + *(v12 + 20)) = v8;
    *(v13 + *(v12 + 24)) = 0;
  }

  else
  {

    (*v11)(v7, v4);
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_10053A690()
{
  v1 = OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource____lazy_storage___dragAndDropCapability;
  if (*(v0 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource____lazy_storage___dragAndDropCapability))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource____lazy_storage___dragAndDropCapability);
  }

  else
  {
    v3 = REMSmartListTypeCustom;
    type metadata accessor for TTRAttributeMatchingDragAndDropPresenterCapability();
    v2 = swift_allocObject();
    *(v2 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v2 + 40) = 1;
    *(v2 + 24) = &off_10072DF68;
    *(v2 + 32) = v3;
    swift_unknownObjectWeakAssign();
    *(v0 + v1) = v2;
    v4 = v3;
  }

  return v2;
}

uint64_t sub_10053A74C(uint64_t a1)
{
  v3 = type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate.FilterableReminder();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  if (dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter())
  {
    swift_getObjectType();
    v7 = dispatch thunk of TTRRemindersListDataModelSourceShowCompletedContextType.matchesPredicate(_:)();
    swift_unknownObjectRelease();
    if ((v7 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v8 = *(v1 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_smartList);
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = [v8 customContext];
  if (v9)
  {
    v10 = REMSmartListCustomContext.filter.getter();

    if (v10)
    {
      sub_100058000(&qword_10076E928, &qword_100631E38);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_10062D400;
      sub_10000B0D8(a1, v9 + 32);
      static Set<>.typesSupportedByCustomSmartList.getter();
      v14[3] = &type metadata for TTRReminderIDsWithMatchingHashtagsProvider;
      v14[4] = sub_10014A994();
      v14[0] = v9;
      v11 = REMCustomSmartListFilterDescriptor.postFetchPredicates(for:reminderIDsWithMatchingHashtagsProvider:)();

      sub_100004758(v14);
      v13[2] = v11;
      sub_10000B0D8(a1, v14);
      v13[1] = v11;
      sub_100058000(&qword_10076E938, &unk_100631E40);
      sub_10011763C(&qword_10076E940, &qword_10076E938, &unk_100631E40);
      Sequence<>.postFetchPredicateTypes.getter();
      REMCustomSmartListFilterDescriptor.PostFetchPredicate.FilterableReminder.init(reminder:forEvaluatingAgainst:)();
      LOBYTE(v9) = Sequence<>.evaluate(with:)();

      (*(v4 + 8))(v6, v3);

      return v9 & 1;
    }

LABEL_7:
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

double sub_10053A9C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10053A690();
  sub_1001D6AC0(a1, a2, a3);

  return result;
}

double sub_10053AA24@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10053A690();
  sub_1001D6C98(a1, a2);

  return result;
}

void sub_10053AA78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v53 = a2;
  v4 = type metadata accessor for TTRSectionID();
  v48 = *(v4 - 8);
  __chkstk_darwin(v4);
  v47 = (&v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v44 - v11;
  v13 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v49 = *(v13 - 8);
  v50 = v13;
  __chkstk_darwin(v13);
  v51 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v3 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_smartList);
  if (v19)
  {
    v46 = v4;
    v52 = v19;
    v20 = [v52 customContext];
    if (v20 && (v21 = v20, v45 = v7, v22 = REMSmartListCustomContext.filter.getter(), v21, v22))
    {
      Date.init()();
      TTRReminderEditor.edit(toMatch:now:)();
      (*(v16 + 8))(v18, v15);

      TTRRemindersListTreeViewModel.parent(of:)();

      v23 = type metadata accessor for TTRRemindersListViewModel.Item();
      v24 = *(v23 - 8);
      if ((*(v24 + 48))(v12, 1, v23) == 1)
      {

        sub_1000079B4(v12, &qword_100772140, &qword_10062D9F0);
      }

      else if ((*(v24 + 88))(v12, v23) == enum case for TTRRemindersListViewModel.Item.section(_:))
      {
        (*(v24 + 96))(v12, v23);
        v26 = v49;
        v27 = v51;
        v28 = v12;
        v29 = v50;
        (*(v49 + 32))(v51, v28, v50);
        TTRRemindersListViewModel.SectionHeader.id.getter();
        v30 = v45;
        if (v45[11](v9, v6) == enum case for TTRRemindersListViewModel.SectionID.objectID(_:))
        {
          v30[12](v9, v6);
          v45 = *v9;
          sub_100058000(&qword_10076B780, &qword_10062D7C0);
          v31 = v26;
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10062D420;
          v33 = v53;
          v34 = TTRReminderEditor.changeItem.getter();
          v35 = [v34 objectID];

          *(inited + 32) = v35;
          sub_10001D5F8(inited);
          swift_setDeallocating();
          swift_arrayDestroy();
          type metadata accessor for TTRSmartListEditor();
          v55 = v52;
          v36 = v52;
          v37 = TTRReminderEditor.changeItem.getter();
          v38 = [v37 saveRequest];

          v54 = v33;
          type metadata accessor for TTRReminderEditor();
          sub_10053F764(&unk_1007756A0, &type metadata accessor for TTRReminderEditor, &protocol conformance descriptor for TTRReminderEditor);
          TTRUndoableEditing.undoManager.getter();
          TTROneshotEditing.init(item:saveRequest:undoManager:)();
          v40 = v47;
          v39 = v48;
          v41 = v45;
          v42 = v46;
          *v47 = v45;
          (*(v39 + 104))(v40, enum case for TTRSectionID.sectioned(_:), v42);
          v43 = v41;
          TTRSmartListEditor.updateMembershipsOfReminders(withReminderIDs:destinationSectionID:initialSectionIDByReminderID:)();

          (*(v39 + 8))(v40, v42);
          (*(v31 + 8))(v51, v29);
        }

        else
        {
          (*(v26 + 8))(v27, v29);

          v30[1](v9, v6);
        }
      }

      else
      {

        (*(v24 + 8))(v12, v23);
      }
    }

    else
    {
      v25 = v52;
    }
  }
}

uint64_t sub_10053B168@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for TTRRemindersListTargetContainer.TargetList.defaultList(_:);
  v3 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

void sub_10053B240(void *a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_smartList);
  if (v8)
  {
    v9 = [v8 customContext];
    if (v9)
    {
      v10 = v9;
      v11 = REMSmartListCustomContext.filter.getter();

      if (v11)
      {
        type metadata accessor for TTRReminderEditor();
        sub_10053F764(&unk_1007756A0, &type metadata accessor for TTRReminderEditor, &protocol conformance descriptor for TTRReminderEditor);
        v12 = a1;
        TTRUndoableEditing.init(changeItem:undoManager:)();
        Date.init()();
        TTRReminderEditor.edit(toMatch:now:)();

        (*(v4 + 8))(v7, v3);
      }
    }
  }
}

void *sub_10053B3CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_smartList);
  if (v1)
  {
    sub_100003540(0, &qword_1007865E0, NSUserActivity_ptr);
    v2 = v1;
    v1 = static NSUserActivity.forStoringCustomSmartListPayload(for:)();
  }

  return v1;
}

void sub_10053B434()
{
  v1 = type metadata accessor for TTRUserActivityListPayload.State();
  v3 = __chkstk_darwin(v1);
  v5 = (&v9[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_smartList);
  if (v6)
  {
    *v5 = v6;
    (*(v2 + 104))(v5, enum case for TTRUserActivityListPayload.State.customSmartList(_:), v3);
    v9[3] = type metadata accessor for TTRUserActivityListPayload();
    v9[4] = &protocol witness table for TTRUserActivityListPayload;
    sub_1000317B8(v9);
    v7 = v6;
    TTRUserActivityListPayload.init(state:)();
    NSUserActivity.setPayload(_:)();

    sub_100004758(v9);
  }
}

uint64_t sub_10053B560()
{
  v1 = v0;
  v2 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v29 - v11;
  v13 = sub_100058000(&unk_10076BB50, &unk_10062DEA0);
  __chkstk_darwin(v13 - 8);
  v15 = &v29 - v14;
  v16 = *(v1 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_smartList);
  if (!v16)
  {
    return 0;
  }

  v30 = v3;
  v31 = v2;
  sub_100003540(0, &qword_1007865E0, NSUserActivity_ptr);
  v17 = v16;
  v18 = static NSUserActivity.forStoringWindowSceneRestorationPayload()();
  v19 = v1 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v29 = v17;
    v20 = *(v19 + 8);
    ObjectType = swift_getObjectType();
    sub_10056FD04(ObjectType, v20);
    swift_unknownObjectRelease();
    v22 = type metadata accessor for TTRRemindersListViewModel.Item();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v12, 1, v22) == 1)
    {
      sub_1000079B4(v12, &qword_100772140, &qword_10062D9F0);
      v24 = 1;
    }

    else
    {
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
      (*(v23 + 8))(v12, v22);
      v24 = 0;
    }

    v17 = v29;
  }

  else
  {
    v24 = 1;
  }

  v25 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  (*(*(v25 - 8) + 56))(v15, v24, 1, v25);
  v26 = *(sub_100058000(&qword_10076E920, &qword_100631E30) + 48);
  *v5 = [v17 objectID];
  sub_10000794C(v15, v5 + v26, &unk_10076BB50, &unk_10062DEA0);
  (*(v30 + 104))(v5, enum case for TTRUserActivityWindowSceneRestorationPayload.State.selectedListID(_:), v31);
  TTRUserActivityWindowSceneRestorationPayload.init(state:)();
  v32[3] = v6;
  v32[4] = &protocol witness table for TTRUserActivityWindowSceneRestorationPayload;
  v27 = sub_1000317B8(v32);
  (*(v7 + 16))(v27, v9, v6);
  NSUserActivity.setPayload(_:)();

  (*(v7 + 8))(v9, v6);
  sub_1000079B4(v15, &unk_10076BB50, &unk_10062DEA0);
  sub_100004758(v32);
  return v18;
}

uint64_t sub_10053B9A4()
{
  v1 = sub_100058000(&unk_10076DF20, &unk_10063BD50);
  __chkstk_darwin(v1 - 8);
  v3 = (&v11 - v2);
  v4 = *(v0 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_smartList);
  if (v4)
  {
    v5 = v4;
    v6 = [v5 accountCapabilities];
    [v6 supportsSections];

    *v3 = v5;
    v7 = enum case for TTRListOrCustomSmartList.customSmartList(_:);
    v8 = type metadata accessor for TTRListOrCustomSmartList();
    v9 = *(v8 - 8);
    (*(v9 + 104))(v3, v7, v8);
    (*(v9 + 56))(v3, 0, 1, v8);
    return TTRRemindersListSectionMenuCapabilities.init(listOrCustomSmartList:canSupportAddSection:)();
  }

  else
  {

    return TTRRemindersListSectionMenuCapabilities.init()();
  }
}

id sub_10053BB2C@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_smartList);
  if (v3)
  {
    *a1 = v3;
    v4 = enum case for TTRRemindersListInteractorSectionsCapabilityTarget.smartList(_:);
    v10 = v3;
    v5 = type metadata accessor for TTRRemindersListInteractorSectionsCapabilityTarget();
    v6 = *(v5 - 8);
    (*(v6 + 104))(a1, v4, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    v7 = v10;
  }

  else
  {
    v8 = type metadata accessor for TTRRemindersListInteractorSectionsCapabilityTarget();
    (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
    v7 = 0;
  }

  return v7;
}

uint64_t sub_10053BC64@<X0>(uint64_t a1@<X8>)
{
  v89 = a1;
  v2 = type metadata accessor for TTRRemindersListViewModel.ListInfo.MacOS();
  __chkstk_darwin(v2 - 8);
  v4 = &v67[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for TTRRemindersListViewModel.ListInfo.IOS();
  __chkstk_darwin(v5 - 8);
  v7 = &v67[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_100058000(&qword_1007693B0, &unk_100631DC0);
  __chkstk_darwin(v8 - 8);
  v10 = &v67[-v9];
  v11 = sub_100058000(&qword_1007693B8, &unk_10062DEC0);
  __chkstk_darwin(v11 - 8);
  v88 = &v67[-v12];
  v13 = type metadata accessor for TTRRemindersListViewModel.SupportsEditableSections();
  v87 = *(v13 - 8);
  __chkstk_darwin(v13);
  v91 = &v67[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_100058000(&unk_10076DF20, &unk_10063BD50);
  __chkstk_darwin(v15 - 8);
  v84 = &v67[-v16];
  v17 = type metadata accessor for TTRRemindersListSectionMenuCapabilities();
  v85 = *(v17 - 8);
  v86 = v17;
  __chkstk_darwin(v17);
  v19 = &v67[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_100058000(&unk_100780980, &unk_100631DD0);
  __chkstk_darwin(v20 - 8);
  v90 = &v67[-v21];
  v22 = sub_100058000(&unk_100775640, &unk_10062DED0);
  __chkstk_darwin(v22 - 8);
  v24 = &v67[-v23];
  v25 = type metadata accessor for TTRListColors.Color();
  __chkstk_darwin(v25);
  v29 = OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_smartList;
  v30 = *(v1 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_smartList);
  if (v30)
  {
    v31 = v1;
    v75 = v13;
    v79 = v28;
    v80 = v26;
    v81 = v10;
    v82 = v7;
    v83 = v4;
    v32 = &v67[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
    type metadata accessor for TTRListColors();
    v93[3] = sub_100003540(0, &qword_100770978, REMSmartList_ptr);
    v93[4] = &protocol witness table for REMSmartList;
    v93[0] = v30;
    v33 = v30;
    static TTRListColors.color(for:)();
    sub_1000079B4(v93, &unk_100775680, &qword_10062E3B0);
    v34 = [v33 accountCapabilities];
    v68 = [v34 supportsSections];

    *v24 = [v33 objectID];
    v35 = enum case for TTRListType.customSmartList(_:);
    v36 = type metadata accessor for TTRListType();
    v37 = *(v36 - 8);
    (*(v37 + 104))(v24, v35, v36);
    v38 = *(v37 + 56);
    v78 = v24;
    v38(v24, 0, 1, v36);
    v76 = v33;
    v92 = v33;
    v74 = protocol witness for TTRListProtocol.displayName.getter in conformance REMSmartList();
    v73 = v39;
    v77 = v32;
    v72 = TTRListColors.Color.nativeColor.getter();
    v40 = 0;
    v70 = *(v31 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_remindersCount + 16);
    if ((v70 & 1) == 0)
    {
      v40 = *(v31 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_remindersCount + 8);
    }

    v69 = (v31 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_remindersCount);
    v71 = v40;
    v41 = type metadata accessor for TTRRemindersListViewModel.ListSharingInfo();
    (*(*(v41 - 8) + 56))(v90, 1, 1, v41);
    swift_getObjectType();
    v42 = dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter();
    v43 = v91;
    if (v42)
    {
      swift_unknownObjectRelease();
    }

    v44 = *(v31 + v29);
    if (v44)
    {
      v45 = v44;
      v46 = [v45 accountCapabilities];
      [v46 supportsSections];

      v47 = v84;
      *v84 = v45;
      v48 = enum case for TTRListOrCustomSmartList.customSmartList(_:);
      v49 = type metadata accessor for TTRListOrCustomSmartList();
      v50 = *(v49 - 8);
      (*(v50 + 104))(v47, v48, v49);
      (*(v50 + 56))(v47, 0, 1, v49);
      v43 = v91;
      TTRRemindersListSectionMenuCapabilities.init(listOrCustomSmartList:canSupportAddSection:)();
    }

    else
    {
      TTRRemindersListSectionMenuCapabilities.init()();
    }

    v56 = v75;
    LODWORD(v84) = TTRRemindersListSectionMenuCapabilities.canSupportAddSection.getter();
    (*(v85 + 8))(v19, v86);
    v57 = dispatch thunk of TTRRemindersListDataModelSourceBaseType.deleteCompletedContext.getter();
    if (v57)
    {
      swift_unknownObjectRelease();
    }

    v58 = dispatch thunk of TTRRemindersListDataModelSourceBaseType.templateContext.getter();
    if (v58)
    {
      swift_unknownObjectRelease();
    }

    v59 = &enum case for TTRRemindersListViewModel.SupportsEditableSections.firstLevel(_:);
    if (!v68)
    {
      v59 = &enum case for TTRRemindersListViewModel.SupportsEditableSections.unsupported(_:);
    }

    (*(v87 + 104))(v43, *v59, v56);
    dispatch thunk of TTRRemindersListDataModelSourceBaseType.printingDataModelSource.getter();
    sub_1000079B4(v93, &qword_1007693C0, &unk_100631DE0);
    if (dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter())
    {
      swift_getObjectType();
      LODWORD(v87) = dispatch thunk of TTRRemindersListDataModelSourceShowCompletedContextType.showCompleted.getter();
      swift_unknownObjectRelease();
    }

    else
    {
      LODWORD(v87) = 0;
    }

    if (v69[2])
    {
      v85 = 0;
    }

    else
    {
      v85 = *v69;
    }

    LODWORD(v86) = v58 != 0;
    LODWORD(v75) = v57 != 0;
    LODWORD(v69) = v42 != 0;
    v60 = v76;
    v61 = [v76 objectID];
    v62 = [v61 stringRepresentation];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = type metadata accessor for TTRRemindersListViewModel.HashtagsState();
    (*(*(v63 - 8) + 56))(v88, 1, 1, v63);
    v64 = type metadata accessor for TTRTemplatePublicLinkData();
    (*(*(v64 - 8) + 56))(v81, 1, 1, v64);
    [v60 isOriginOfExistingTemplate];
    TTRRemindersListViewModel.ListInfo.IOS.init(showsActionMenuButton:hasBottomInsetForPencilInput:usesFlatDiffableSnapshot_workaroundRdar135908527:)();
    TTRRemindersListViewModel.ListInfo.MacOS.init(wantsTopShadow:)();
    v65 = v89;
    TTRRemindersListViewModel.ListInfo.init(listType:name:color:reminderCount:sharingInfo:canCreateNewReminder:canToggleCompletedReminderVisbility:canAddSection:canClearCompletedReminders:canSaveAsTemplate:supportsEditableSections:canBePrinted:completedRemindersShown:hasDefaultNewReminderButton:completedRemindersCount:canBeDeleted:collapsedStatesAutosaveName:canCreateCustomSmartListForHashtagsState:hashtagsStateToShow:templateStatus:isOriginOfExistingTemplate:isPublicTemplatePreview:shouldCategorizeGroceryItems:shouldAutoCategorizeItems:isRecentlyDeletedList:iOS:macOS:)();

    (*(v79 + 8))(v77, v80);
    v66 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
    return (*(*(v66 - 8) + 56))(v65, 0, 1, v66);
  }

  else
  {
    v51 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
    v52 = *(*(v51 - 8) + 56);
    v53 = v51;
    v54 = v89;

    return v52(v54, 1, 1, v53);
  }
}

double sub_10053C75C()
{

  return result;
}

uint64_t sub_10053C7AC()
{
  v0 = sub_10056FD38();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRShowCustomSmartListViewModelSource(uint64_t a1)
{
  result = qword_10078B958;
  if (!qword_10078B958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10053C90C(void *a1)
{
  v2 = v1;
  v36 = *v1;
  v37 = type metadata accessor for REMAnalyticsEvent();
  v4 = *(v37 - 8);
  __chkstk_darwin(v37);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  *&v8 = __chkstk_darwin(v7 - 8).n128_u64[0];
  v10 = &v36 - v9;
  v11 = [a1 objectID];
  v12 = OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_smartList;
  v13 = *(v1 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_smartList);
  if (v13)
  {
    v14 = [v13 objectID];
    v15 = v14;
    if (v11)
    {
      if (v14)
      {
        sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
        v16 = static NSObject.== infix(_:_:)();

LABEL_9:
        v11 = v15;
        goto LABEL_10;
      }

LABEL_6:
      v16 = 0;
LABEL_10:

      goto LABEL_12;
    }

    if (v14)
    {
      v16 = 0;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    goto LABEL_6;
  }

  v16 = 1;
LABEL_12:
  v17 = [a1 showingLargeAttachments];
  *(v1 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_showLargeAttachmentsValue) = v17;
  v18 = *(v1 + v12);
  *(v1 + v12) = a1;

  v19 = a1;
  sub_10053BC64(v10);
  sub_10056F540(v10);
  if ((v16 & 1) == 0)
  {
    v20 = v1 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v21 = *(v20 + 1);
      ObjectType = swift_getObjectType();
      (*(v21 + 88))(1, ObjectType, v21);
      swift_unknownObjectRelease();
    }

    type metadata accessor for TTRUserDefaults();
    v23 = static TTRUserDefaults.appUserDefaults.getter();
    type metadata accessor for REMAnalyticsManager();
    static REMAnalyticsManager.shared.getter();
    v24 = sub_100058000(&qword_100770980, &unk_1006339B0);
    v25 = &v6[*(v24 + 48)];
    v26 = &v6[*(v24 + 80)];
    v27 = enum case for REMRemindersOpenUserOperation.customSmartList(_:);
    v28 = type metadata accessor for REMRemindersOpenUserOperation();
    (*(*(v28 - 8) + 104))(v6, v27, v28);
    *v25 = TTRUserDefaults.activitySessionId.getter();
    v25[1] = v29;
    TTRUserDefaults.activitySessionBeginTime.getter();
    *v26 = _typeName(_:qualified:)();
    v26[1] = v30;
    v31 = v37;
    (*(v4 + 104))(v6, enum case for REMAnalyticsEvent.openListUserOperation(_:), v37);
    REMAnalyticsManager.post(event:)();

    (*(v4 + 8))(v6, v31);
  }

  v32 = v2 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v33 = *(v32 + 1);
    v34 = swift_getObjectType();
    (*(v33 + 104))(v34, v33);
    swift_unknownObjectRelease();
  }

  return sub_1000079B4(v10, &unk_10078A380, &qword_10062DE60);
}

uint64_t sub_10053CCF0(void *a1, uint64_t a2, uint64_t a3)
{
  v193 = a2;
  v6 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v6 - 8);
  v147 = &v144 - v7;
  v8 = sub_100058000(&unk_10076B050, &unk_100631DF0);
  __chkstk_darwin(v8 - 8);
  v214 = &v144 - v9;
  v213 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v175 = *(v213 - 8);
  __chkstk_darwin(v213);
  v212 = (&v144 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v211 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.TextSize();
  v176 = *(v211 - 8);
  __chkstk_darwin(v211);
  v210 = &v144 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor();
  v177 = *(v209 - 8);
  __chkstk_darwin(v209);
  v208 = &v144 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.TextStyle();
  v179 = *(v194 - 8);
  __chkstk_darwin(v194);
  v207 = &v144 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100058000(&unk_10076B060, &unk_1006324D0);
  __chkstk_darwin(v14 - 8);
  v206 = &v144 - v15;
  v205 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
  v172 = *(v205 - 8);
  __chkstk_darwin(v205);
  v204 = &v144 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.Separator();
  v171 = *(v219 - 8);
  __chkstk_darwin(v219);
  v162 = &v144 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v203 = &v144 - v19;
  v202 = type metadata accessor for REMRemindersListDataView.SectionLite.SectionType();
  v170 = *(v202 - 8);
  __chkstk_darwin(v202);
  v217 = (&v144 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v201 = type metadata accessor for TTRListColors.Color();
  v169 = *(v201 - 8);
  __chkstk_darwin(v201);
  v163 = &v144 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v168 = *(v200 - 8);
  __chkstk_darwin(v200);
  v199 = &v144 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v198 = &v144 - v24;
  v197 = sub_100058000(&qword_10076E8D8, &unk_100645250);
  __chkstk_darwin(v197);
  v222 = &v144 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v196 = &v144 - v27;
  v195 = type metadata accessor for TTRRemindersListTreeViewModel.Section();
  v216 = *(v195 - 8);
  __chkstk_darwin(v195);
  v215 = &v144 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_100058000(&qword_10076E8D0, &unk_10063ABA0);
  __chkstk_darwin(v29);
  v146 = &v144 - v30;
  v31 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v31 - 8);
  v145 = &v144 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v149 = &v144 - v34;
  v35 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v190 = *(v35 - 8);
  __chkstk_darwin(v35);
  v189 = &v144 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for TTRTipKitDataModelSourceContextKeyCondition();
  v220 = *(v37 - 8);
  v221 = v37;
  __chkstk_darwin(v37);
  v218 = &v144 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v192 = &v144 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_100058000(&qword_100769378, &qword_10062DE80);
  __chkstk_darwin(v42 - 8);
  v44 = &v144 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v46 = __chkstk_darwin(v45).n128_u64[0];
  v48 = &v144 - v47;
  v49 = OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_smartList;
  v160 = v3;
  v50 = *(v3 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_smartList);
  v148 = a3;
  v144 = v29;
  if (!v50)
  {
    if (!a1)
    {
      v53 = 0;
      v54 = 1;
      goto LABEL_16;
    }

    v52 = 0;
LABEL_7:
    v55 = [a1 sortingStyle];
    v56 = v55;
    if (v52)
    {
      if (v55)
      {
        v187 = v39;
        v188 = a1;
        v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v59 = v58;
        if (v57 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v59 == v60)
        {
          LODWORD(v191) = 1;
        }

        else
        {
          LODWORD(v191) = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        a1 = v188;
        v39 = v187;
      }

      else
      {
        LODWORD(v191) = 0;
        v56 = v52;
      }
    }

    else
    {
      if (!v55)
      {
        LODWORD(v191) = 1;
        goto LABEL_20;
      }

      LODWORD(v191) = 0;
    }

LABEL_20:
    v61 = v160;
    v62 = *(v160 + v49);
    *(v160 + v49) = a1;
    v53 = a1;
    v52 = a1;

    v63 = v61 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v64 = *(v63 + 8);
      ObjectType = swift_getObjectType();
      (*(v64 + 104))(ObjectType, v64);
      swift_unknownObjectRelease();
    }

    v54 = 0;
    goto LABEL_23;
  }

  v51 = [v50 sortingStyle];
  v52 = v51;
  if (a1)
  {
    goto LABEL_7;
  }

  v53 = 0;
  v54 = 1;
  if (!v51)
  {
LABEL_16:
    LODWORD(v191) = 1;
    goto LABEL_24;
  }

  LODWORD(v191) = 0;
LABEL_23:

LABEL_24:
  REMRemindersListDataView.SectionsModel.remindersCount.getter();
  sub_10000794C(v48, v44, &qword_100769378, &qword_10062DE80);
  v66 = (*(v40 + 48))(v44, 1, v39);
  if (v66 == 1)
  {
    v67 = 0;
    v68 = 0;
  }

  else
  {
    v69 = v192;
    (*(v40 + 32))(v192, v44, v39);
    v67 = REMRemindersListDataView.CountByCompleted.completed.getter();
    v68 = REMRemindersListDataView.CountByCompleted.incomplete.getter();
    (*(v40 + 8))(v69, v39);
  }

  sub_1000079B4(v48, &qword_100769378, &qword_10062DE80);
  v70 = v160;
  v71 = v160 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_remindersCount;
  *v71 = v67;
  *(v71 + 8) = v68;
  *(v71 + 16) = v66 == 1;
  *(v70 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_hasIncompleteOrCompletedReminders) = REMRemindersListDataView.SectionsModel.hasIncompleteOrCompletedReminders.getter();
  swift_getObjectType();
  result = dispatch thunk of TTRRemindersListDataModelSourceBaseType.tipKitContext.getter();
  if (result)
  {
    swift_getObjectType();
    (*(v220 + 104))(v218, enum case for TTRTipKitDataModelSourceContextKeyCondition.unknown(_:), v221);
    dispatch thunk of TTRRemindersListDataModelSourceTipKitContextType.thisListHasCompletedReminders.setter();
    result = swift_unknownObjectRelease();
  }

  v73 = v163;
  if ((v54 & 1) == 0)
  {
    v74 = v53;
    v75 = v74;
    if ((v191 & 1) == 0)
    {
      v123 = [v74 sortingStyle];
      v124 = v189;
      REMSortingStyle.dataViewSortingStyle.getter();

      sub_10057A85C(v124, 1, v125);
      return (*(v190 + 8))(v124, v35);
    }

    sub_10053BC64(v149);
    v159 = static TTRRemindersListViewModel.SectionHeaderTitle.Separator.fullWidthOrHiddenForFirstSection.getter();
    v161 = v76;
    v77 = REMRemindersListDataView.SectionsModel.sections.getter();
    v78 = *(v77 + 16);
    if (v78)
    {
      v192 = v75;
      *&v223 = _swiftEmptyArrayStorage;
      sub_1004A22E0(0, v78, 0);
      v191 = *(v77 + 16);
      v188 = type metadata accessor for REMRemindersListDataView.SectionLite();
      v79 = *(v188 - 1);
      v186 = v77 + ((*(v79 + 80) + 32) & ~*(v79 + 80));
      v80 = v223;
      v218 = type metadata accessor for TTRListColors();
      v81 = 0;
      v185 = v79 + 16;
      v187 = v79;
      v184 = v79 + 32;
      v183 = (v170 + 11);
      v182 = enum case for REMRemindersListDataView.SectionLite.SectionType.sectioned(_:);
      v158 = enum case for REMRemindersListDataView.SectionLite.SectionType.sectionless(_:);
      v157 = enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.fullWidth(_:);
      v156 = (v171 + 104);
      v181 = (v169 + 7);
      v180 = enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextStyle.plain(_:);
      v179 += 13;
      v178 = enum case for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor.regular(_:);
      v177 += 13;
      v176 += 13;
      v175 += 13;
      v174 = (v172 + 2);
      v173 = (v172 + 7);
      ++v172;
      v155 = (v170 + 12);
      v154 = (v171 + 16);
      v153 = (v169 + 2);
      v152 = (v171 + 8);
      LODWORD(v171) = enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextSize.regular(_:);
      v170 = (v168 + 2);
      ++v169;
      ++v168;
      v151 = enum case for TTRRemindersListViewModel.SectionID.sectionless(_:);
      v150 = enum case for TTRRemindersListViewModel.SectionID.objectID(_:);
      v167 = v216 + 32;
      v82 = v217;
      v190 = v77;
      v189 = v78;
      while (v191 != v81)
      {
        if (v81 >= *(v77 + 16))
        {
          goto LABEL_56;
        }

        v221 = v80;
        v83 = v197;
        v84 = *(v197 + 48);
        v85 = v187;
        v86 = v196;
        v87 = v188;
        (*(v187 + 16))(&v196[v84], v186 + *(v187 + 72) * v81, v188);
        v88 = v222;
        *v222 = v81;
        v89 = *(v83 + 48);
        (*(v85 + 32))(&v88[v89], &v86[v84], v87);
        v90 = sub_100003540(0, &qword_100770978, REMSmartList_ptr);
        v225 = v90;
        v226 = &protocol witness table for REMSmartList;
        v224 = v192;
        v91 = v192;
        static TTRListColors.color(for:)();
        sub_1000079B4(&v224, &unk_100775680, &qword_10062E3B0);
        v220 = v89;
        REMRemindersListDataView.SectionLite.type.getter();
        v92 = v202;
        v93 = (*v183)(v82, v202);
        if (v93 == v182)
        {
          (*v155)(v82, v92);
          v94 = v82[1];
          v165 = *v82;
          v164 = v94;

          v95 = v203;
          v159(v81);
          (*v154)(v162, v95, v219);
          v96 = *v153;
          v166 = v91;
          v97 = v206;
          v98 = v201;
          v96(v206, v73, v201);
          (*v181)(v97, 0, 1, v98);
          (*v179)(v207, v180, v194);
          v99 = v73;
          (*v177)(v208, v178, v209);
          (*v176)(v210, v171, v211);
          v100 = v204;
          v101 = v98;
          TTRRemindersListViewModel.SectionHeaderTitle.init(text:disabled:textStyle:defaultTextColor:textSize:hidesTitleIfEmpty:separator:disclosureColor:ttrAccessibilityIsPlaceholder:)();
          v103 = v212;
          v102 = v213;
          v104 = v165;
          *v212 = v165;
          (*v175)(v103, v150, v102);
          v105 = v214;
          v106 = v205;
          (*v174)(v214, v100, v205);
          (*v173)(v105, 0, 1, v106);
          v107 = v104;
          v108 = [v166 objectID];
          v109 = v198;
          TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();

          (*v172)(v100, v106);
          (*v152)(v95, v219);
        }

        else
        {
          v101 = v201;
          if (v93 != v158)
          {
            goto LABEL_57;
          }

          REMRemindersListDataView.SectionsModel.sections.getter();

          (*v156)(v203, v157, v219);
          v225 = v90;
          v226 = &protocol witness table for REMSmartList;
          v224 = v91;
          v110 = v91;
          v111 = v206;
          static TTRListColors.color(for:)();
          sub_1000079B4(&v224, &unk_100775680, &qword_10062E3B0);
          (*v181)(v111, 0, 1, v101);
          (*v179)(v207, v180, v194);
          (*v177)(v208, v178, v209);
          (*v176)(v210, v171, v211);
          v112 = v204;
          TTRRemindersListViewModel.SectionHeaderTitle.init(text:disabled:textStyle:defaultTextColor:textSize:hidesTitleIfEmpty:separator:disclosureColor:ttrAccessibilityIsPlaceholder:)();
          v113 = [v110 objectID];
          v115 = v212;
          v114 = v213;
          *v212 = v113;
          (*v175)(v115, v151, v114);
          v116 = v214;
          v117 = v205;
          (*v174)(v214, v112, v205);
          (*v173)(v116, 0, 1, v117);
          v109 = v198;
          TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
          (*v172)(v112, v117);
          v99 = v163;
        }

        v118 = v200;
        (*v170)(v199, v109, v200);
        v119 = v222;
        REMRemindersListDataView.SectionLite.reminders.getter();
        v120 = v215;
        TTRRemindersListTreeViewModel.Section.init(header:reminders:isDroppedWhenEmpty:)();
        (*v169)(v99, v101);
        (*v168)(v109, v118);
        sub_1000079B4(v119, &qword_10076E8D8, &unk_100645250);
        v80 = v221;
        *&v223 = v221;
        v122 = *(v221 + 16);
        v121 = *(v221 + 24);
        v73 = v99;
        if (v122 >= v121 >> 1)
        {
          sub_1004A22E0((v121 > 1), v122 + 1, 1);
          v120 = v215;
          v80 = v223;
        }

        ++v81;
        v80[2] = v122 + 1;
        (*(v216 + 32))(v80 + ((*(v216 + 80) + 32) & ~*(v216 + 80)) + *(v216 + 72) * v122, v120, v195);
        v82 = v217;
        v77 = v190;
        if (v189 == v81)
        {
          v126 = v80;

          v70 = v160;
          v75 = v192;
          goto LABEL_45;
        }
      }

      __break(1u);
LABEL_56:
      __break(1u);
      while (1)
      {
LABEL_57:
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
      }
    }

    v126 = _swiftEmptyArrayStorage;
LABEL_45:
    v127 = v145;
    sub_10000794C(v149, v145, &unk_10078A380, &qword_10062DE60);
    v128 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
    v129 = *(v128 - 8);
    if ((*(v129 + 48))(v127, 1, v128) == 1)
    {
      sub_1000079B4(v127, &unk_10078A380, &qword_10062DE60);
      v130 = type metadata accessor for TTRRemindersListViewModel.SupportsEditableSections();
      (*(*(v130 - 8) + 56))(v146, 1, 1, v130);
    }

    else
    {
      v131 = v146;
      TTRRemindersListViewModel.ListInfo.supportsEditableSections.getter();
      (*(v129 + 8))(v127, v128);
      v132 = type metadata accessor for TTRRemindersListViewModel.SupportsEditableSections();
      v133 = *(v132 - 8);
      (*(v133 + 56))(v131, 0, 1, v132);
      v134 = (*(v133 + 88))(v131, v132);
      if (v134 != enum case for TTRRemindersListViewModel.SupportsEditableSections.unsupported(_:))
      {
        if (v134 == enum case for TTRRemindersListViewModel.SupportsEditableSections.firstLevel(_:))
        {
          v135 = REMRemindersListDataView.SectionsModel.sections.getter();
          v136 = sub_100003540(0, &qword_10076E8F0, REMSmartListSection_ptr);
          type metadata accessor for TTRRemindersListViewModelSourceSectionsContext();
          v137 = swift_allocObject();
          *(v137 + 64) = 0;
          *(v137 + 24) = 0;
          *(v137 + 32) = 0;
          *(v137 + 16) = 0;
          swift_unknownObjectWeakInit();
          *(v137 + 128) = 0u;
          *(v137 + 144) = 0u;
          *(v137 + 96) = 0u;
          *(v137 + 112) = 0u;
          *(v137 + 64) = &off_10072ED30;
          swift_unknownObjectWeakAssign();
          *(v137 + 80) = v135;
          *(v137 + 88) = v136;
          *(v137 + 72) = v135;
          *(v137 + 40) = &_swiftEmptySetSingleton;
          *(v137 + 48) = 1;
          *(v70 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_sectionsContextInstance) = v137;

LABEL_53:

          v138 = type metadata accessor for TTRRemindersListObjectIDOnlyReminderIDProvider();
          v139 = static TTRRemindersListReminderIDProviding<>.uniqueWithinTree.getter();
          v140 = type metadata accessor for TTRRemindersListViewModel.Item();
          v141 = v147;
          (*(*(v140 - 8) + 56))(v147, 1, 1, v140);
          v225 = v138;
          v226 = &protocol witness table for TTRRemindersListObjectIDOnlyReminderIDProvider;
          v224 = v139;
          sub_10000B0D8(&v224, &v223);
          v142 = swift_allocObject();
          *(v142 + 16) = v126;
          sub_100005FD0(&v223, v142 + 24);
          *(v142 + 64) = v70;

          v143 = v149;
          sub_100586238(1, v149, sub_100070528, v142, v148, 0, v141);

          sub_1000079B4(v141, &qword_100772140, &qword_10062D9F0);
          sub_1000079B4(v143, &unk_10078A380, &qword_10062DE60);

          return sub_100004758(&v224);
        }

        if (v134 != enum case for TTRRemindersListViewModel.SupportsEditableSections.secondLevel(_:))
        {
          goto LABEL_57;
        }
      }
    }

    *(v70 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_sectionsContextInstance) = 0;
    goto LABEL_53;
  }

  return result;
}

uint64_t sub_10053EA44()
{
  v1 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v17 - v6;
  v8 = type metadata accessor for TTRListType.SortingCapability();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_sortingCapability;
  swift_beginAccess();
  (*(v9 + 16))(v11, v0 + v12, v8);
  v13 = (*(v9 + 88))(v11, v8);
  if (v13 == enum case for TTRListType.SortingCapability.notSupported(_:))
  {
    (*(v9 + 96))(v11, v8);
    (*(v2 + 32))(v7, v11, v1);
    (*(v2 + 104))(v4, enum case for REMRemindersListDataView.SortingStyle.manual(_:), v1);
    v14 = static REMRemindersListDataView.SortingStyle.== infix(_:_:)();
    v15 = *(v2 + 8);
    v15(v4, v1);
    v15(v7, v1);
    return v14 & 1;
  }

  if (v13 == enum case for TTRListType.SortingCapability.supported(_:))
  {
    (*(v9 + 96))(v11, v8);
    v14 = *v11;
    return v14 & 1;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10053ECEC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionID.NamedID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v40 - v9;
  v11 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  TTRRemindersListViewModel.SectionHeader.id.getter();
  v15 = (*(v12 + 88))(v14, v11);
  if (v15 == enum case for TTRRemindersListViewModel.SectionID.named(_:))
  {
    (*(v12 + 96))(v14, v11);
    (*(v5 + 32))(v10, v14, v4);
    (*(v5 + 16))(v7, v10, v4);
    v16 = (*(v5 + 88))(v7, v4);
    if (v16 == enum case for TTRRemindersListViewModel.SectionID.NamedID.customSmartListSection(_:))
    {
      (*(v5 + 8))(v10, v4);
      goto LABEL_46;
    }

    if (v16 == enum case for TTRRemindersListViewModel.SectionID.NamedID.flaggedSection(_:) || v16 == enum case for TTRRemindersListViewModel.SectionID.NamedID.remindersInListSection(_:) || v16 == enum case for TTRRemindersListViewModel.SectionID.NamedID.siriFoundInAppsSection(_:) || v16 == enum case for TTRRemindersListViewModel.SectionID.NamedID.taggedSection(_:) || v16 == enum case for TTRRemindersListViewModel.SectionID.NamedID.todaySection(_:) || v16 == enum case for TTRRemindersListViewModel.SectionID.NamedID.beforeTodaySection(_:) || v16 == enum case for TTRRemindersListViewModel.SectionID.NamedID.todayAllDaySection(_:) || v16 == enum case for TTRRemindersListViewModel.SectionID.NamedID.todayMorningSection(_:) || v16 == enum case for TTRRemindersListViewModel.SectionID.NamedID.todayAfternoonSection(_:) || v16 == enum case for TTRRemindersListViewModel.SectionID.NamedID.todayTonightSection(_:) || v16 == enum case for TTRRemindersListViewModel.SectionID.NamedID.todayNearbySection(_:) || v16 == enum case for TTRRemindersListViewModel.SectionID.NamedID.todayEmptySection(_:) || v16 == enum case for TTRRemindersListViewModel.SectionID.NamedID.designatedItemsSection(_:) || v16 == enum case for TTRRemindersListViewModel.SectionID.NamedID.completedPastSevenDaysSection(_:) || v16 == enum case for TTRRemindersListViewModel.SectionID.NamedID.completedPastThirtyDaysSection(_:))
    {
      (*(v5 + 8))(v10, v4);
      goto LABEL_52;
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
LABEL_55:
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  if (v15 != enum case for TTRRemindersListViewModel.SectionID.objectID(_:))
  {
    if (v15 == enum case for TTRRemindersListViewModel.SectionID.scheduledPastDue(_:) || v15 == enum case for TTRRemindersListViewModel.SectionID.date(_:) || v15 == enum case for TTRRemindersListViewModel.SectionID.day(_:) || v15 == enum case for TTRRemindersListViewModel.SectionID.month(_:) || v15 == enum case for TTRRemindersListViewModel.SectionID.year(_:) || v15 == enum case for TTRRemindersListViewModel.SectionID.eraAndYear(_:))
    {
      goto LABEL_51;
    }

    if (v15 == enum case for TTRRemindersListViewModel.SectionID.sectionless(_:))
    {
      (*(v12 + 8))(v14, v11);
      goto LABEL_46;
    }

    if (v15 == enum case for TTRRemindersListViewModel.SectionID.uncommittedEditingSection(_:))
    {
LABEL_51:
      (*(v12 + 8))(v14, v11);
      goto LABEL_52;
    }

    goto LABEL_55;
  }

  (*(v12 + 96))(v14, v11);
  v17 = *v14;
  v18 = [*v14 entityName];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  sub_100003540(0, &qword_10076E8F0, REMSmartListSection_ptr);
  v22 = [swift_getObjCClassFromMetadata() cdEntityName];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  if (v19 == v23 && v21 == v25)
  {

    goto LABEL_46;
  }

  v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v27)
  {
LABEL_46:
    v33 = *(v2 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_smartList);
    if (v33)
    {
      v34 = [v33 customContext];
      if (v34)
      {
        v35 = v34;
        v36 = REMSmartListCustomContext.filter.getter();

        if (v36)
        {
          *a1 = v36;
          v37 = type metadata accessor for TTRRemindersListMatchedAttributeValue(0);
          swift_storeEnumTagMultiPayload();
          return (*(*(v37 - 8) + 56))(a1, 0, 1, v37);
        }
      }
    }
  }

LABEL_52:
  v39 = type metadata accessor for TTRRemindersListMatchedAttributeValue(0);
  return (*(*(v39 - 8) + 56))(a1, 1, 1, v39);
}

void sub_10053F310(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *(v2 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_sectionsContextInstance);
  if (v4 && swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v4 + 64);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 16);

    v8(ObjectType, v6);
    swift_unknownObjectRelease();
    v9 = a1;
    TTRSection.init(with:store:)();
  }

  else
  {
    v10 = type metadata accessor for TTRSection();
    v11 = *(*(v10 - 8) + 56);

    v11(a2, 1, 1, v10);
  }
}

void *sub_10053F43C(uint64_t a1, uint64_t a2)
{
  if (!*(v2 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_sectionsContextInstance))
  {
    return 0;
  }

  v4 = sub_1002E28FC(a2);

  return v4;
}

void *sub_10053F4E4()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:))
  {
    (*(v7 + 96))(v9, v6);
    (*(v3 + 32))(v5, v9, v2);
    v11 = TTRRemindersListViewModel.ReminderID.objectID.getter();
    v12 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_remReminderByObjectID;
    swift_beginAccess();
    v13 = *(v1 + v12);

    v14 = sub_10013F404(v11, v13);

    (*(v3 + 8))(v5, v2);
    return v14;
  }

  if (v10 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:) || v10 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:))
  {
    (*(v7 + 8))(v9, v6);
  }

  else if (v10 != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  return 0;
}

uint64_t sub_10053F764(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10053F7EC()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10078BEE0);
  v1 = sub_100003E30(v0, qword_10078BEE0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10053F8B4(id a1)
{
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
  if (!a1)
  {
    if (!v3)
    {
      return;
    }

    v8 = v3;
    goto LABEL_8;
  }

  v8 = v3;
  if (!v3)
  {
    a1 = a1;
    goto LABEL_8;
  }

  sub_100003540(0, &qword_100788D40, NSUndoManager_ptr);
  a1 = a1;
  v4 = v8;
  v5 = static NSObject.== infix(_:_:)();

  if ((v5 & 1) == 0)
  {
LABEL_8:
    v7._object = 0x800000010068C070;
    v7._countAndFlagsBits = 0xD000000000000025;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v7);

    v6 = v8;
    goto LABEL_9;
  }

  v6 = v4;
LABEL_9:
}

uint64_t sub_10053F9B8()
{
  sub_100058000(&qword_10078BFD0, &unk_100645888);
  swift_allocObject();
  *(v0 + 16) = CurrentValueSubject.init(_:)();
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_100003540(0, &qword_100777780, OS_dispatch_queue_ptr);
  static OS_dispatch_queue.main.getter();
  type metadata accessor for TTRDeferredAction();
  swift_allocObject();
  *(v0 + 40) = TTRDeferredAction.init(queue:)();
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 2;
  sub_100540A68();

  TTRDeferredAction.delegate.setter();

  return v0;
}

void sub_10053FAF0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v2 = Strong, v3 = [Strong viewIfLoaded], v2, !v3))
  {
    v12 = 0;
    goto LABEL_8;
  }

  v12 = UIView.firstResponderDescendant.getter();

  if (!v12)
  {
    v12 = 0;
LABEL_8:
    v5 = *(v0 + 24);
    v8 = v5;
    v6 = *(v0 + 64);
    if (!v5)
    {
      if (!v6)
      {
        goto LABEL_16;
      }

      v5 = 0;
      goto LABEL_14;
    }

    v9 = v8;
    if (!v6)
    {
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  v4 = [v12 undoManager];
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v4;
  v6 = *(v0 + 64);
  v7 = v4;
  if (!v6)
  {
LABEL_6:
    swift_unknownObjectRelease();
LABEL_14:
    v11 = *(v0 + 64);
    *(v0 + 64) = v5;
    v10 = v5;

    sub_10053FC14();
    goto LABEL_15;
  }

LABEL_10:
  swift_unknownObjectRelease();
  if (v5 != v6)
  {
    goto LABEL_14;
  }

  v10 = v12;
  v12 = v5;
LABEL_15:

LABEL_16:
}

void sub_10053FC14()
{
  v1 = v0;
  if (qword_100767448 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_10078BEE0);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v31[0] = v6;
    *v5 = 136315138;
    v33 = *(v0 + 64);
    sub_100058000(&qword_10078BFE0, &unk_100645898);
    v7 = Optional.descriptionOrNil.getter();
    v9 = sub_100004060(v7, v8, v31);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "TTRIShowRemindersUndoManagerObserver: start observing undo manager: %s", v5, 0xCu);
    sub_100004758(v6);
  }

  v10 = *(v0 + 64);
  if (v10)
  {
    v34 = NSUndoManagerDidCloseUndoGroupNotification;
    v35 = NSUndoManagerDidUndoChangeNotification;
    v11 = TTRUndoManagerDidRemoveAllActionsNotification;
    v36 = NSUndoManagerDidRedoChangeNotification;
    v37 = TTRUndoManagerDidRemoveAllActionsNotification;
    v33 = _swiftEmptyArrayStorage;
    v12 = v10;
    v13 = NSUndoManagerDidCloseUndoGroupNotification;
    v14 = NSUndoManagerDidUndoChangeNotification;
    v29 = NSUndoManagerDidRedoChangeNotification;
    v30 = v11;
    specialized ContiguousArray.reserveCapacity(_:)();
    v15 = objc_opt_self();
    v16 = v13;
    v17 = [v15 defaultCenter];
    v18 = sub_100003540(0, &qword_100788D40, NSUndoManager_ptr);
    v32 = v18;
    v31[0] = v12;
    swift_allocObject();
    swift_weakInit();
    v19 = v12;

    NSNotificationCenter.ttr_addObserver(forName:object:queue:using:)();

    sub_10000B070(v31);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v20 = v14;
    v21 = [v15 defaultCenter];
    v32 = v18;
    v31[0] = v19;
    swift_allocObject();
    swift_weakInit();
    v22 = v19;

    NSNotificationCenter.ttr_addObserver(forName:object:queue:using:)();

    sub_10000B070(v31);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v23 = v29;
    v24 = [v15 defaultCenter];
    v32 = v18;
    v31[0] = v22;
    swift_allocObject();
    swift_weakInit();
    v25 = v22;

    NSNotificationCenter.ttr_addObserver(forName:object:queue:using:)();

    sub_10000B070(v31);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v26 = v30;
    v27 = [v15 defaultCenter];
    v32 = v18;
    v31[0] = v25;
    swift_allocObject();
    swift_weakInit();
    v28 = v25;

    NSNotificationCenter.ttr_addObserver(forName:object:queue:using:)();

    sub_10000B070(v31);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();

    type metadata accessor for Name(0);
    swift_arrayDestroy();
    v10 = v33;
  }

  *(v1 + 56) = v10;

  sub_10054049C();
}

double sub_1005401E4(uint64_t a1, uint64_t a2)
{
  v2 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  type metadata accessor for MainActor();

  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v6;

  sub_10009EF3C(0, 0, v4, &unk_1006458B0, v8);

  return result;
}

uint64_t sub_100540364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1005403FC, v6, v5);
}

uint64_t sub_1005403FC()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_10054049C();
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

void sub_10054049C()
{
  v1 = v0;
  v2 = *(v0 + 64);
  if (v2)
  {
    v3 = v2;
    v4 = [v3 canUndo];
    v5 = [v3 canRedo];

    if (v5)
    {
      v6 = 256;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6 | v4;
    v8 = *(v1 + 80);
    if (*(v1 + 80) != 2 && v2 == *(v1 + 72) && ((v4 ^ v8) & 1) == 0 && ((v5 ^ ((v8 & 0x100) == 0)) & 1) != 0)
    {
      return;
    }
  }

  else
  {
    if (*(v0 + 80) == 2)
    {
      return;
    }

    v7 = 2;
  }

  if (qword_100767448 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100003E30(v9, qword_10078BEE0);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "TTRIShowRemindersUndoManagerObserver: undo manager state changed", v12, 2u);
  }

  *(v1 + 72) = v2;
  *(v1 + 80) = v7;
  v13 = *(v1 + 64);
  CurrentValueSubject.send(_:)();
}

uint64_t sub_100540640()
{

  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for TTRIShowRemindersUndoManagerObserver.UndoManagerAndState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIShowRemindersUndoManagerObserver.UndoManagerAndState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

double sub_100540774(void *a1)
{
  v2 = v1;
  swift_unknownObjectWeakAssign();
  *(v2 + 48) = 0;

  v4 = [a1 viewIfLoaded];
  if (v4 && (v5 = v4, v6 = [v4 window], v5, v6))
  {
    v7 = [objc_opt_self() defaultCenter];
    v17[3] = sub_100003540(0, &qword_10078BFE8, UIWindow_ptr);
    v17[0] = v6;
    v8 = objc_opt_self();
    v9 = v6;
    v10 = [v8 mainQueue];
    swift_allocObject();
    swift_weakInit();

    v11 = NSNotificationCenter.ttr_addObserver(forName:object:queue:using:)();

    sub_10000B070(v17);
  }

  else
  {
    if (qword_100767448 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100003E30(v12, qword_10078BEE0);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "TTRIShowRemindersUndoManagerObserver#startObserving: missing window", v15, 2u);
    }

    v11 = 0;
  }

  *(v2 + 48) = v11;

  return result;
}

double sub_1005409CC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v3._object = 0x800000010068C070;
    v3._countAndFlagsBits = 0xD000000000000025;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v3);
  }

  return result;
}

unint64_t sub_100540A68()
{
  result = qword_10078BFD8;
  if (!qword_10078BFD8)
  {
    type metadata accessor for TTRIShowRemindersUndoManagerObserver();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078BFD8);
  }

  return result;
}

uint64_t sub_100540AC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001AA3C;

  return sub_100540364(a1, v4, v5, v6);
}

void *sub_100540B84(void *a1, void *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = a3[6];
    *(a1 + a3[5]) = *(a2 + a3[5]);
    v9 = (a1 + v8);
    v10 = (a2 + v8);
    v11 = v10[1];
    *v9 = *v10;
    v9[1] = v11;
    *(a1 + a3[7]) = *(a2 + a3[7]);
  }

  return a1;
}

double sub_100540C74(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v3 - 8) + 8))(a1, v3);

  return result;
}

uint64_t sub_100540CF8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;
  *(a1 + a3[7]) = *(a2 + a3[7]);

  return a1;
}

uint64_t sub_100540D9C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v7 = a3[6];
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  *v8 = *v9;
  v8[1] = v9[1];

  *(a1 + a3[7]) = *(a2 + a3[7]);

  return a1;
}

uint64_t sub_100540E60(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

uint64_t sub_100540EF0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v11 = *v9;
  v10 = v9[1];
  *v8 = v11;
  v8[1] = v10;

  *(a1 + a3[7]) = *(a2 + a3[7]);

  return a1;
}

uint64_t type metadata accessor for TTRIReminderCellAutoCompleteViewModel(uint64_t a1)
{
  result = qword_10078C048;
  if (!qword_10078C048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10054100C(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.Item();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

id sub_1005410B8(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  sub_1005421BC();
  static TTRTypedController.currentArgument.getter();
  v5 = v11;
  v6 = v12;
  *&v2[OBJC_IVAR____TtC9Reminders29TTRIGroupDetailViewController_presenter] = v10[1];
  v2[OBJC_IVAR____TtC9Reminders29TTRIGroupDetailViewController_style] = v5;
  *&v2[OBJC_IVAR____TtC9Reminders29TTRIGroupDetailViewController_localUndoManager] = v6;
  v10[0].receiver = v2;
  v10[0].super_class = ObjectType;
  swift_unknownObjectRetain();
  v7 = v6;
  v8 = [(objc_super *)v10 initWithCoder:a1];

  swift_unknownObjectRelease();
  if (v8)
  {
  }

  return v8;
}

void sub_100541210()
{
  v1 = v0;
  v35.receiver = v0;
  v35.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v35, "viewDidLoad");
  v2 = [v0 tableView];
  if (!v2)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v3 = v2;
  UITableView.fixUpBackgroundColorLoadedFromNibIfNeeded_workaroundRdar108920406()();

  if (v1[OBJC_IVAR____TtC9Reminders29TTRIGroupDetailViewController_style])
  {
    v4._countAndFlagsBits = 0x6E492070756F7247;
    v5._countAndFlagsBits = 0xD000000000000036;
    v5._object = 0x800000010068C1D0;
    v4._object = 0xEA00000000006F66;
    TTRLocalizedString(_:comment:)(v4, v5);
    v6 = 0xD000000000000041;
    v7 = 0x800000010068C210;
    v8 = 1701736260;
    v9 = 0xE400000000000000;
  }

  else
  {
    v10._countAndFlagsBits = 0x756F72472077654ELL;
    v11._countAndFlagsBits = 0xD000000000000035;
    v11._object = 0x800000010068C280;
    v10._object = 0xE900000000000070;
    TTRLocalizedString(_:comment:)(v10, v11);
    v8 = 0x657461657243;
    v6 = 0xD00000000000003ALL;
    v7 = 0x800000010068C2C0;
    v9 = 0xE600000000000000;
  }

  TTRLocalizedString(_:comment:)(*&v8, *&v6);
  v12 = [v1 navigationItem];
  v13 = String._bridgeToObjectiveC()();

  [v12 setTitle:v13];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_18;
  }

  v15 = Strong;
  v16 = String._bridgeToObjectiveC()();

  [v15 setTitle:v16];

  v17 = swift_unknownObjectWeakLoadStrong();
  if (!v17)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v18 = v17;
  v19 = objc_opt_self();
  v20 = [v19 labelColor];
  [v18 setTextColor:v20];

  v21 = swift_unknownObjectWeakLoadStrong();
  if (!v21)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  v22 = v21;
  v23 = [v21 textLabel];

  if (v23)
  {
    v24 = [v19 labelColor];
    [v23 setTextColor:v24];
  }

  v25 = swift_unknownObjectWeakLoadStrong();
  if (!v25)
  {
    goto LABEL_21;
  }

  v26 = v25;
  v27 = [v25 textLabel];

  if (v27)
  {
    v28._countAndFlagsBits = 0x6564756C636E49;
    v29._object = 0x800000010068C260;
    v28._object = 0xE700000000000000;
    v29._countAndFlagsBits = 0xD00000000000001FLL;
    TTRLocalizedString(_:comment:)(v28, v29);
    v30 = String._bridgeToObjectiveC()();

    [v27 setText:v30];
  }

  v31 = swift_unknownObjectWeakLoadStrong();
  if (!v31)
  {
    goto LABEL_22;
  }

  v32 = v31;
  v33 = [v31 detailTextLabel];

  if (v33)
  {
    v34 = [v19 tableCellGrayTextColor];
    [v33 setTextColor:v34];
  }
}

void sub_10054161C()
{
  sub_10014EFDC();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_15;
  }

  v1 = Strong;
  v2 = String._bridgeToObjectiveC()();
  [v1 setText:v2];

  v3 = swift_unknownObjectWeakLoadStrong();
  if (!v3)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  v4 = v3;
  v5 = [v3 detailTextLabel];

  if (v5)
  {
    v6 = String._bridgeToObjectiveC()();

    [v5 setText:v6];
  }

  else
  {
  }

  v7 = swift_unknownObjectWeakLoadStrong();
  if (!v7)
  {
    goto LABEL_16;
  }

  v8 = v7;
  v9 = [v7 text];

  if (v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = String.validatedListName()();
    isValid = v14.isValid;
  }

  else
  {
    isValid = 0;
  }

  v11 = swift_unknownObjectWeakLoadStrong();
  if (!v11)
  {
    goto LABEL_17;
  }

  v12 = v11;
  [v11 setEnabled:isValid];
}

void sub_100541864(char a1)
{
  v12.receiver = v1;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "viewDidAppear:", a1 & 1);
  [v1 becomeFirstResponder];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = Strong;
  v5 = [Strong text];

  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
LABEL_6:
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = v10;
      sub_1001AAB2C();
      UITextInput<>.ttrBeginEditing()();

      return;
    }

LABEL_10:
    __break(1u);
  }
}

void sub_100541DBC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong text];

    if (v2)
    {
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0xE000000000000000;
    }

    sub_10014F30C(v4, v6, v3);

    sub_10014F630(v7);
  }

  else
  {
    __break(1u);
  }
}

void sub_100541EC4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  v1 = Strong;
  v2 = [Strong text];

  if (v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = String.validatedListName()();
    isValid = v7.isValid;
  }

  else
  {
    isValid = 0;
  }

  v4 = swift_unknownObjectWeakLoadStrong();
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = v4;
  [v4 setEnabled:isValid];
}

void sub_10054210C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong text];

    if (v2)
    {
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0xE000000000000000;
    }

    sub_10014F30C(v4, v6, v3);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1005421BC()
{
  result = qword_10078C0F0;
  if (!qword_10078C0F0)
  {
    type metadata accessor for TTRIGroupDetailViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078C0F0);
  }

  return result;
}

uint64_t AnyListEntityQuery.init(queryType:)(uint64_t a1)
{
  v2 = type metadata accessor for AppIntentsDependencyKey();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v10 - v7;
  sub_100058000(&qword_100767540, &qword_100645990);
  (*(v3 + 104))(v8, enum case for AppIntentsDependencyKey.remStore(_:), v2);
  (*(v3 + 16))(v5, v8, v2);
  sub_10054FD8C(&qword_100767548, &type metadata accessor for AppIntentsDependencyKey, &protocol conformance descriptor for AppIntentsDependencyKey);
  AnyHashable.init<A>(_:)();
  (*(v3 + 8))(v8, v2);
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  return a1;
}

uint64_t AnyListEntityQuery.init()()
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
  sub_10054FD8C(&qword_100767548, &type metadata accessor for AppIntentsDependencyKey, &protocol conformance descriptor for AppIntentsDependencyKey);
  AnyHashable.init<A>(_:)();
  (*(v1 + 8))(v6, v0);
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  return 0;
}

uint64_t AnyListEntityQuery.entities(for:)(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 448) = a2;
  *(v3 + 88) = a1;
  *(v3 + 96) = a3;
  sub_100058000(&qword_10078C100, &qword_1006459A0);
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  *(v3 + 120) = v4;
  *(v3 + 128) = *(v4 - 8);
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = *(type metadata accessor for AnyListEntity(0) - 8);
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  v5 = type metadata accessor for SmartListType();
  *(v3 + 224) = v5;
  *(v3 + 232) = *(v5 - 8);
  *(v3 + 240) = swift_task_alloc();
  *(v3 + 248) = swift_task_alloc();
  v6 = type metadata accessor for AnyListEntityID(0);
  *(v3 + 256) = v6;
  *(v3 + 264) = *(v6 - 8);
  *(v3 + 272) = swift_task_alloc();
  *(v3 + 280) = swift_task_alloc();
  *(v3 + 288) = swift_task_alloc();
  *(v3 + 296) = swift_task_alloc();
  *(v3 + 304) = swift_task_alloc();
  *(v3 + 312) = swift_task_alloc();
  *(v3 + 320) = swift_task_alloc();
  *(v3 + 328) = swift_task_alloc();
  *(v3 + 336) = swift_task_alloc();
  v7 = type metadata accessor for REMAccountsListDataView.Model();
  *(v3 + 344) = v7;
  *(v3 + 352) = *(v7 - 8);
  *(v3 + 360) = swift_task_alloc();
  v8 = type metadata accessor for REMAccountsListDataView.Result();
  *(v3 + 368) = v8;
  *(v3 + 376) = *(v8 - 8);
  *(v3 + 384) = swift_task_alloc();
  Style = type metadata accessor for REMAccountsListDataView.CachablePropertyFetchStyle();
  *(v3 + 392) = Style;
  *(v3 + 400) = *(Style - 8);
  *(v3 + 408) = swift_task_alloc();
  *(v3 + 416) = swift_task_alloc();
  Options = type metadata accessor for REMAccountsListDataView.FetchOptions();
  *(v3 + 424) = Options;
  *(v3 + 432) = *(Options - 8);
  *(v3 + 440) = swift_task_alloc();

  return _swift_task_switch(sub_100542A18, 0, 0);
}

uint64_t sub_100542A18()
{
  v221 = v0;
  v1 = *(v0 + 408);
  v2 = *(v0 + 392);
  v3 = enum case for REMAccountsListDataView.CachablePropertyFetchStyle.doNotFetch(_:);
  v4 = *(*(v0 + 400) + 104);
  v4(*(v0 + 416), enum case for REMAccountsListDataView.CachablePropertyFetchStyle.doNotFetch(_:), v2);
  v4(v1, v3, v2);
  REMAccountsListDataView.FetchOptions.init(fetchAccounts:fetchReminderCounts:fetchHashtagLabels:fetchSmartListHashtagLabels:fetchUserDefinedVisibilityOfPredefinedSmartLists:fetchOrderedPinnedLists:)();
  type metadata accessor for REMAccountsListDataView();
  AppDependency.wrappedValue.getter();
  v5 = *(v0 + 16);
  static REMAccountsListDataView.fetchModel(store:diffingAgainst:options:)();
  v7 = *(v0 + 352);
  v6 = *(v0 + 360);
  v8 = *(v0 + 344);
  v9 = *(v0 + 88);

  REMAccountsListDataView.Result.model.getter();
  v196 = REMAccountsListDataView.Model.userDefinedVisibilityOfPredefinedSmartLists.getter();
  (*(v7 + 8))(v6, v8);
  v10 = _swiftEmptyArrayStorage;
  v11 = *(v9 + 16);
  v195 = v11;
  if (v11)
  {
    v12 = *(v0 + 264);
    v13 = *(v0 + 232);
    v14 = *(v0 + 128);
    LODWORD(v203) = *(v0 + 448);
    v208 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v15 = *(v0 + 88) + v208;
    v204 = (v14 + 16);
    v206 = (v14 + 32);
    v16 = (v14 + 8);
    v200 = (v13 + 8);
    v202 = (v13 + 32);
    v198 = *(v0 + 168);
    v199 = (v13 + 16);
    v210 = &_swiftEmptyDictionarySingleton;
    v212 = _swiftEmptyArrayStorage;
    v214 = *(v12 + 72);
    v197 = (v14 + 8);
    while (1)
    {
      v26 = *(v0 + 328);
      v25 = *(v0 + 336);
      sub_10054FFD4(v15, v25, type metadata accessor for AnyListEntityID);
      sub_10054FFD4(v25, v26, type metadata accessor for AnyListEntityID);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v28 = *(v0 + 336);
          v29 = *(v0 + 312);
          (*v206)(*(v0 + 160), *(v0 + 328), *(v0 + 120));
          sub_10054FFD4(v28, v29, type metadata accessor for AnyListEntityID);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v30 = v212;
          }

          else
          {
            v30 = sub_100548964(0, v212[2] + 1, 1, v212, &qword_10078C2F8, &unk_100645EA0, type metadata accessor for AnyListEntityID);
          }

          v32 = v30[2];
          v31 = v30[3];
          if (v32 >= v31 >> 1)
          {
            v30 = sub_100548964((v31 > 1), v32 + 1, 1, v30, &qword_10078C2F8, &unk_100645EA0, type metadata accessor for AnyListEntityID);
          }

          v213 = v10;
          v33 = *(v0 + 312);
          v35 = *(v0 + 152);
          v34 = *(v0 + 160);
          v36 = *(v0 + 120);
          v212 = v30;
          v30[2] = v32 + 1;
          sub_10055003C(v33, v30 + v208 + v32 * v214, type metadata accessor for AnyListEntityID);
          (*v204)(v35, v34, v36);
          v37 = [objc_opt_self() cdEntityName];
          if (!v37)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v37 = String._bridgeToObjectiveC()();
          }

          v17 = *(v0 + 152);
          v18 = *(v0 + 120);
          v19 = objc_allocWithZone(REMObjectID);
          isa = UUID._bridgeToObjectiveC()().super.isa;
          [v19 initWithUUID:isa entityName:v37];

          v21 = *v16;
          (*v16)(v17, v18);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v22 = *(v0 + 336);
          v23 = *(v0 + 160);
          v24 = *(v0 + 120);
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v21(v23, v24);
          sub_10054FC30(v22, type metadata accessor for AnyListEntityID);
        }

        else
        {
          v43 = *(v0 + 336);
          v44 = *(v0 + 304);
          (*v206)(*(v0 + 144), *(v0 + 328), *(v0 + 120));
          sub_10054FFD4(v43, v44, type metadata accessor for AnyListEntityID);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_100548964(0, v10[2] + 1, 1, v10, &qword_10078C2F8, &unk_100645EA0, type metadata accessor for AnyListEntityID);
          }

          v46 = v10[2];
          v45 = v10[3];
          if (v46 >= v45 >> 1)
          {
            v10 = sub_100548964((v45 > 1), v46 + 1, 1, v10, &qword_10078C2F8, &unk_100645EA0, type metadata accessor for AnyListEntityID);
          }

          v47 = *(v0 + 304);
          v49 = *(v0 + 136);
          v48 = *(v0 + 144);
          v50 = *(v0 + 120);
          v213 = v10;
          v10[2] = v46 + 1;
          sub_10055003C(v47, v10 + v208 + v46 * v214, type metadata accessor for AnyListEntityID);
          (*v204)(v49, v48, v50);
          v51 = [objc_opt_self() cdEntityName];
          if (!v51)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v51 = String._bridgeToObjectiveC()();
          }

          v52 = *(v0 + 136);
          v53 = *(v0 + 120);
          v54 = objc_allocWithZone(REMObjectID);
          v55 = UUID._bridgeToObjectiveC()().super.isa;
          [v54 initWithUUID:v55 entityName:v51];

          v56 = *v16;
          (*v16)(v52, v53);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v57 = *(v0 + 336);
          v58 = *(v0 + 144);
          v59 = *(v0 + 120);
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v56(v58, v59);
          sub_10054FC30(v57, type metadata accessor for AnyListEntityID);
        }

        v10 = v213;
        goto LABEL_7;
      }

      (*v202)(*(v0 + 248), *(v0 + 328), *(v0 + 224));
      if (v203)
      {
        v38 = SmartListType.remSmartListType.getter();
        if (*(v196 + 16) && (v39 = sub_1003B3EE0(), (v40 & 1) != 0))
        {
          v41 = *(*(v196 + 56) + 8 * v39);

          if (v41 == 2)
          {
            v42 = *(v0 + 336);
            (*v200)(*(v0 + 248), *(v0 + 224));
            sub_10054FC30(v42, type metadata accessor for AnyListEntityID);
            goto LABEL_7;
          }
        }

        else
        {
        }
      }

      v60 = *(v0 + 320);
      v62 = *(v0 + 240);
      v61 = *(v0 + 248);
      v64 = *(v0 + 216);
      v63 = *(v0 + 224);
      v65 = *(v0 + 208);
      sub_10054FFD4(*(v0 + 336), v60, type metadata accessor for AnyListEntityID);
      (*v199)(v62, v61, v63);
      sub_10046D10C(v62, v64);
      sub_10055003C(v64, v65, type metadata accessor for AnyListEntity);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v218[0] = v210;
      v67 = sub_1003AB9AC(v60);
      v69 = v210[2];
      v70 = (v68 & 1) == 0;
      v71 = __OFADD__(v69, v70);
      v72 = v69 + v70;
      if (v71)
      {
        goto LABEL_111;
      }

      v73 = v68;
      if (v210[3] >= v72)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v84 = v67;
          sub_1003B0B9C();
          v67 = v84;
          v210 = v218[0];
        }
      }

      else
      {
        v74 = *(v0 + 320);
        sub_10054E2C8(v72, isUniquelyReferenced_nonNull_native);
        v210 = v218[0];
        v67 = sub_1003AB9AC(v74);
        if ((v73 & 1) != (v75 & 1))
        {
LABEL_106:

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }
      }

      v76 = *(v0 + 336);
      v77 = *(v0 + 320);
      v78 = *(v0 + 248);
      v79 = *(v0 + 224);
      v80 = *(v0 + 208);
      if (v73)
      {
        sub_100128850(*(v0 + 208), v210[7] + *(v198 + 72) * v67);
        sub_10054FC30(v77, type metadata accessor for AnyListEntityID);
        (*v200)(v78, v79);
        sub_10054FC30(v76, type metadata accessor for AnyListEntityID);
        v16 = v197;
      }

      else
      {
        v213 = *(v0 + 336);
        v210[(v67 >> 6) + 8] |= 1 << v67;
        v81 = v67;
        sub_10054FFD4(v77, v210[6] + v67 * v214, type metadata accessor for AnyListEntityID);
        sub_10055003C(v80, v210[7] + *(v198 + 72) * v81, type metadata accessor for AnyListEntity);
        sub_10054FC30(v77, type metadata accessor for AnyListEntityID);
        (*v200)(v78, v79);
        sub_10054FC30(v213, type metadata accessor for AnyListEntityID);
        v82 = v210[2];
        v71 = __OFADD__(v82, 1);
        v83 = v82 + 1;
        if (v71)
        {
          goto LABEL_116;
        }

        v210[2] = v83;
        v16 = v197;
      }

LABEL_7:
      v15 += v214;
      if (!--v11)
      {
        goto LABEL_43;
      }
    }
  }

  v210 = &_swiftEmptyDictionarySingleton;
  v212 = _swiftEmptyArrayStorage;
LABEL_43:

  AppDependency.wrappedValue.getter();
  v85 = *(v0 + 24);
  sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
  v86 = Array._bridgeToObjectiveC()().super.isa;
  *(v0 + 32) = 0;
  v87 = [v85 fetchListsWithObjectIDs:v86 error:v0 + 32];

  v88 = *(v0 + 32);
  if (!v87)
  {
    v111 = *(v0 + 432);
    v215 = *(v0 + 440);
    v112 = *(v0 + 424);
    v114 = *(v0 + 376);
    v113 = *(v0 + 384);
    v115 = *(v0 + 368);
    v116 = v88;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v114 + 8))(v113, v115);
    (*(v111 + 8))(v215, v112);
LABEL_103:

    v154 = *(v0 + 8);

    return v154();
  }

  v213 = v10;
  LODWORD(v202) = *(v0 + 448);
  v89 = sub_100003540(0, &qword_10076ABC0, REMList_ptr);
  sub_1001288B4();
  v90 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v91 = v88;

  v92 = v212;
  v93 = v212[2];
  if (!v93)
  {
LABEL_70:

    goto LABEL_73;
  }

  v94 = 0;
  v95 = *(v0 + 264);
  v11 = _swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8;
  v96 = v90 & 0xFFFFFFFFFFFFFF8;
  if (v90 < 0)
  {
    v96 = v90;
  }

  v203 = v96;
  v201 = *(v0 + 264);
  while (1)
  {
    if (v94 >= v92[2])
    {
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

    sub_10054FFD4(v92 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v94, *(v0 + 296), type metadata accessor for AnyListEntityID);
    if (_swiftEmptyArrayStorage >> 62)
    {
      break;
    }

    if (v94 == *(v11 + 16))
    {
      goto LABEL_72;
    }

LABEL_53:
    if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
    {
      v97 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v94 >= *(v11 + 16))
      {
        goto LABEL_110;
      }

      v97 = _swiftEmptyArrayStorage[v94 + 4];
    }

    v98 = v97;
    v99 = *(v0 + 288);
    v100 = *(v0 + 112);
    sub_10055003C(*(v0 + 296), v100, type metadata accessor for AnyListEntityID);
    sub_10055003C(v100, v99, type metadata accessor for AnyListEntityID);
    if ((v90 & 0xC000000000000001) != 0)
    {
      v101 = __CocoaDictionary.lookup(_:)();
      if (v101)
      {
        *(v0 + 48) = v101;
        swift_dynamicCast();
        v102 = *(v0 + 40);
        if (v102)
        {
          goto LABEL_63;
        }
      }
    }

    else if (*(v90 + 16))
    {
      v103 = sub_1002613B0(v98);
      if (v104)
      {
        v102 = *(*(v90 + 56) + 8 * v103);
        if (v102)
        {
LABEL_63:
          if (v202 == 1 && ![v102 isPinned])
          {
            sub_10054FC30(*(v0 + 288), type metadata accessor for AnyListEntityID);
          }

          else
          {
            v105 = *(v0 + 288);
            v106 = *(v0 + 200);
            v219 = v89;
            v220 = &protocol witness table for REMList;
            v218[0] = v102;
            v107 = v102;
            v108 = v89;
            v109 = v107;
            sub_10046D708(v218, v106);
            v110 = swift_isUniquelyReferenced_nonNull_native();
            v218[0] = v210;
            sub_100128324(v106, v105, v110);

            v89 = v108;
            v95 = v201;
            sub_10054FC30(v105, type metadata accessor for AnyListEntityID);

            v210 = v218[0];
          }

          goto LABEL_49;
        }
      }
    }

    sub_10054FC30(*(v0 + 288), type metadata accessor for AnyListEntityID);

LABEL_49:
    ++v94;
    v92 = v212;
    v11 = _swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8;
    if (v93 == v94)
    {
      goto LABEL_70;
    }
  }

  if (v94 != _CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_53;
  }

LABEL_72:
  v117 = *(v0 + 296);

  sub_10054FC30(v117, type metadata accessor for AnyListEntityID);
LABEL_73:
  AppDependency.wrappedValue.getter();
  v118 = *(v0 + 56);
  *(v0 + 64) = 0;
  v119 = [v118 fetchCustomSmartListsWithError:v0 + 64];

  v120 = *(v0 + 64);
  if (!v119)
  {
    v147 = *(v0 + 432);
    v148 = *(v0 + 440);
    v149 = *(v0 + 424);
    v151 = *(v0 + 376);
    v150 = *(v0 + 384);
    v152 = *(v0 + 368);
    v153 = v120;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v151 + 8))(v150, v152);
    (*(v147 + 8))(v148, v149);
    goto LABEL_103;
  }

  v203 = sub_100003540(0, &qword_100770978, REMSmartList_ptr);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v121 = v120;

  if (v11 >> 62)
  {
LABEL_118:
    v122 = _CocoaArrayWrapper.endIndex.getter();
    v123 = v213;
    if (!v122)
    {
      goto LABEL_119;
    }

LABEL_76:
    v124 = 0;
    v216 = v11 & 0xC000000000000001;
    v209 = v11 & 0xFFFFFFFFFFFFFF8;
    v125 = &_swiftEmptyDictionarySingleton;
    v205 = v122;
    v207 = v11;
    while (1)
    {
      if (v216)
      {
        v129 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v124 >= *(v209 + 16))
        {
          goto LABEL_113;
        }

        v129 = *(v11 + 8 * v124 + 32);
      }

      v130 = v129;
      v11 = v124 + 1;
      if (__OFADD__(v124, 1))
      {
        goto LABEL_112;
      }

      v131 = [v129 objectID];
      if ((v125 & 0xC000000000000001) != 0)
      {
        if (v125 < 0)
        {
          v132 = v125;
        }

        else
        {
          v132 = v125 & 0xFFFFFFFFFFFFFF8;
        }

        v133 = v130;
        v134 = __CocoaDictionary.count.getter();
        if (__OFADD__(v134, 1))
        {
          goto LABEL_115;
        }

        v125 = sub_100548B64(v132, v134 + 1, &qword_100781320, &unk_10063CF08, &qword_100770978, REMSmartList_ptr);
      }

      else
      {
        v135 = v130;
      }

      v136 = swift_isUniquelyReferenced_nonNull_native();
      v218[0] = v125;
      v138 = sub_1002613B0(v131);
      v139 = *(v125 + 16);
      v140 = (v137 & 1) == 0;
      v141 = v139 + v140;
      if (__OFADD__(v139, v140))
      {
        goto LABEL_114;
      }

      v142 = v137;
      if (*(v125 + 24) >= v141)
      {
        if (v136)
        {
          if (v137)
          {
            goto LABEL_77;
          }
        }

        else
        {
          sub_1003B0E90();
          v125 = v218[0];
          if (v142)
          {
            goto LABEL_77;
          }
        }
      }

      else
      {
        sub_10054EA0C(v141, v136, &qword_100781320, &unk_10063CF08);
        v125 = v218[0];
        v143 = sub_1002613B0(v131);
        if ((v142 & 1) != (v144 & 1))
        {
          goto LABEL_106;
        }

        v138 = v143;
        if (v142)
        {
LABEL_77:
          v126 = *(v125 + 56);
          v127 = *(v126 + 8 * v138);
          *(v126 + 8 * v138) = v130;

          goto LABEL_78;
        }
      }

      *(v125 + 8 * (v138 >> 6) + 64) |= 1 << v138;
      *(*(v125 + 48) + 8 * v138) = v131;
      *(*(v125 + 56) + 8 * v138) = v130;

      v145 = *(v125 + 16);
      v71 = __OFADD__(v145, 1);
      v146 = v145 + 1;
      if (v71)
      {
        goto LABEL_117;
      }

      *(v125 + 16) = v146;
LABEL_78:
      ++v124;
      v128 = v11 == v205;
      v123 = v213;
      v11 = v207;
      if (v128)
      {
        goto LABEL_120;
      }
    }
  }

  v122 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v123 = v213;
  if (v122)
  {
    goto LABEL_76;
  }

LABEL_119:
  v125 = &_swiftEmptyDictionarySingleton;
LABEL_120:

  v217 = *(v123 + 16);
  if (v217)
  {
    v156 = 0;
    v157 = *(v0 + 264);
    v158 = v210;
    while (1)
    {
      if (v156 >= *(v213 + 16))
      {
        __break(1u);
LABEL_161:
        __break(1u);
      }

      sub_10054FFD4(v213 + ((*(v157 + 80) + 32) & ~*(v157 + 80)) + *(v157 + 72) * v156, *(v0 + 280), type metadata accessor for AnyListEntityID);
      if (_swiftEmptyArrayStorage >> 62)
      {
        if (v156 == _CocoaArrayWrapper.endIndex.getter())
        {
LABEL_155:
          v189 = *(v0 + 280);

          sub_10054FC30(v189, type metadata accessor for AnyListEntityID);
          v173 = v195;
          if (!v195)
          {
            goto LABEL_156;
          }

LABEL_146:
          v174 = *(v0 + 264);
          v175 = *(v0 + 168);
          v176 = *(v0 + 88) + ((*(v174 + 80) + 32) & ~*(v174 + 80));
          v177 = *(v174 + 72);
          v178 = _swiftEmptyArrayStorage;
          v211 = v158;
          do
          {
            if (v158[2])
            {
              v180 = sub_1003AB9AC(v176);
              if (v181)
              {
                v183 = *(v0 + 184);
                v182 = *(v0 + 192);
                v184 = *(v0 + 176);
                v185 = v158[7];
                v186 = *(v175 + 72);
                sub_10054FFD4(v185 + v186 * v180, v183, type metadata accessor for AnyListEntity);
                sub_10055003C(v183, v182, type metadata accessor for AnyListEntity);
                sub_10055003C(v182, v184, type metadata accessor for AnyListEntity);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v178 = sub_100548964(0, v178[2] + 1, 1, v178, &qword_10078C2F0, &unk_100645E90, type metadata accessor for AnyListEntity);
                }

                v188 = v178[2];
                v187 = v178[3];
                if (v188 >= v187 >> 1)
                {
                  v178 = sub_100548964((v187 > 1), v188 + 1, 1, v178, &qword_10078C2F0, &unk_100645E90, type metadata accessor for AnyListEntity);
                }

                v179 = *(v0 + 176);
                v178[2] = v188 + 1;
                sub_10055003C(v179, v178 + ((*(v175 + 80) + 32) & ~*(v175 + 80)) + v188 * v186, type metadata accessor for AnyListEntity);
                v158 = v211;
              }
            }

            v176 += v177;
            --v173;
          }

          while (v173);
          goto LABEL_157;
        }
      }

      else if (v156 == *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_155;
      }

      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v159 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v156 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_161;
        }

        v159 = _swiftEmptyArrayStorage[v156 + 4];
      }

      v160 = v159;
      v161 = *(v0 + 272);
      v162 = *(v0 + 104);
      sub_10055003C(*(v0 + 280), v162, type metadata accessor for AnyListEntityID);
      sub_10055003C(v162, v161, type metadata accessor for AnyListEntityID);
      if ((v125 & 0xC000000000000001) != 0)
      {
        v163 = __CocoaDictionary.lookup(_:)();
        if (v163)
        {
          *(v0 + 80) = v163;
          swift_dynamicCast();
          v164 = *(v0 + 72);
          if (v164)
          {
            goto LABEL_137;
          }
        }
      }

      else if (*(v125 + 16))
      {
        v165 = sub_1002613B0(v160);
        if (v166)
        {
          v164 = *(*(v125 + 56) + 8 * v165);
          if (v164)
          {
LABEL_137:
            if (v202 == 1 && ![v164 isPinned])
            {
              sub_10054FC30(*(v0 + 272), type metadata accessor for AnyListEntityID);
            }

            else
            {
              v167 = *(v0 + 272);
              v168 = *(v0 + 200);
              v219 = v203;
              v220 = &protocol witness table for REMSmartList;
              v218[0] = v164;
              v169 = v164;
              v170 = v158;
              v171 = v169;
              sub_10046D708(v218, v168);
              v172 = swift_isUniquelyReferenced_nonNull_native();
              v218[0] = v170;
              sub_100128324(v168, v167, v172);

              sub_10054FC30(v167, type metadata accessor for AnyListEntityID);
              v158 = v218[0];
            }

            goto LABEL_123;
          }
        }
      }

      sub_10054FC30(*(v0 + 272), type metadata accessor for AnyListEntityID);

LABEL_123:
      if (v217 == ++v156)
      {
        goto LABEL_145;
      }
    }
  }

  v158 = v210;
LABEL_145:

  v173 = v195;
  if (v195)
  {
    goto LABEL_146;
  }

LABEL_156:
  v178 = _swiftEmptyArrayStorage;
LABEL_157:
  v190 = v178;
  v191 = *(v0 + 432);
  v192 = *(v0 + 440);
  v193 = *(v0 + 424);
  (*(*(v0 + 376) + 8))(*(v0 + 384), *(v0 + 368));
  (*(v191 + 8))(v192, v193);

  v194 = *(v0 + 8);

  return v194(v190);
}

uint64_t AnyListEntityQuery.suggestedEntities()(char a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  *(v2 + 448) = a1;
  v3 = type metadata accessor for REMAccountsListDataView.Model.GroupChild();
  *(v2 + 32) = v3;
  *(v2 + 40) = *(v3 - 8);
  *(v2 + 48) = swift_task_alloc();
  v4 = type metadata accessor for REMAccountsListDataView.Model.Group();
  *(v2 + 56) = v4;
  *(v2 + 64) = *(v4 - 8);
  *(v2 + 72) = swift_task_alloc();
  v5 = type metadata accessor for REMAccountsListDataView.Model.AccountChild();
  *(v2 + 80) = v5;
  *(v2 + 88) = *(v5 - 8);
  *(v2 + 96) = swift_task_alloc();
  v6 = type metadata accessor for REMAccountsListDataView.Model.Account();
  *(v2 + 104) = v6;
  *(v2 + 112) = *(v6 - 8);
  *(v2 + 120) = swift_task_alloc();
  sub_100058000(&qword_10078C108, &unk_1006459B0);
  *(v2 + 128) = swift_task_alloc();
  v7 = type metadata accessor for SmartListType();
  *(v2 + 136) = v7;
  *(v2 + 144) = *(v7 - 8);
  *(v2 + 152) = swift_task_alloc();
  *(v2 + 160) = swift_task_alloc();
  sub_100058000(&qword_100767520, &qword_10062BD10);
  *(v2 + 168) = swift_task_alloc();
  v8 = type metadata accessor for AnyListEntity(0);
  *(v2 + 176) = v8;
  *(v2 + 184) = *(v8 - 8);
  *(v2 + 192) = swift_task_alloc();
  *(v2 + 200) = swift_task_alloc();
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 216) = swift_task_alloc();
  *(v2 + 224) = swift_task_alloc();
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  *(v2 + 256) = swift_task_alloc();
  *(v2 + 264) = swift_task_alloc();
  v9 = type metadata accessor for REMAccountsListDataView.Model.PinnedList();
  *(v2 + 272) = v9;
  *(v2 + 280) = *(v9 - 8);
  *(v2 + 288) = swift_task_alloc();
  *(v2 + 296) = swift_task_alloc();
  *(v2 + 304) = swift_task_alloc();
  *(v2 + 312) = swift_task_alloc();
  *(v2 + 320) = swift_task_alloc();
  *(v2 + 328) = swift_task_alloc();
  v10 = type metadata accessor for REMAccountsListDataView.Model();
  *(v2 + 336) = v10;
  *(v2 + 344) = *(v10 - 8);
  *(v2 + 352) = swift_task_alloc();
  *(v2 + 360) = swift_task_alloc();
  v11 = type metadata accessor for REMAccountsListDataView.Result();
  *(v2 + 368) = v11;
  *(v2 + 376) = *(v11 - 8);
  *(v2 + 384) = swift_task_alloc();
  Style = type metadata accessor for REMAccountsListDataView.CachablePropertyFetchStyle();
  *(v2 + 392) = Style;
  *(v2 + 400) = *(Style - 8);
  *(v2 + 408) = swift_task_alloc();
  *(v2 + 416) = swift_task_alloc();
  Options = type metadata accessor for REMAccountsListDataView.FetchOptions();
  *(v2 + 424) = Options;
  *(v2 + 432) = *(Options - 8);
  *(v2 + 440) = swift_task_alloc();

  return _swift_task_switch(sub_100544A48, 0, 0);
}

void sub_100544A48()
{
  v211 = v0;
  v1 = *(v0 + 408);
  v2 = *(v0 + 392);
  v199 = *(v0 + 448);
  v3 = enum case for REMAccountsListDataView.CachablePropertyFetchStyle.doNotFetch(_:);
  v4 = *(*(v0 + 400) + 104);
  v4(*(v0 + 416), enum case for REMAccountsListDataView.CachablePropertyFetchStyle.doNotFetch(_:), v2);
  v4(v1, v3, v2);
  REMAccountsListDataView.FetchOptions.init(fetchAccounts:fetchReminderCounts:fetchHashtagLabels:fetchSmartListHashtagLabels:fetchUserDefinedVisibilityOfPredefinedSmartLists:fetchOrderedPinnedLists:)();
  type metadata accessor for REMAccountsListDataView();
  AppDependency.wrappedValue.getter();
  v5 = *(v0 + 16);
  static REMAccountsListDataView.fetchModel(store:diffingAgainst:options:)();
  v6 = *(v0 + 360);
  v7 = *(v0 + 336);
  v8 = *(v0 + 344);

  REMAccountsListDataView.Result.model.getter();
  v9 = REMAccountsListDataView.Model.orderedPinnedLists.getter();
  v10 = *(v8 + 8);
  v10(v6, v7);
  REMAccountsListDataView.Result.model.getter();
  v177 = REMAccountsListDataView.Model.userDefinedVisibilityOfPredefinedSmartLists.getter();
  v159 = v10;
  v10(v6, v7);
  v197 = *(v9 + 16);
  if (v197)
  {
    v11 = v9;
    v12 = 0;
    v13 = *(v0 + 280);
    v184 = *(v0 + 448);
    v190 = enum case for REMAccountsListDataView.Model.PinnedList.predefinedSmartList(_:);
    v182 = enum case for REMAccountsListDataView.Model.PinnedList.list(_:);
    v178 = enum case for REMAccountsListDataView.Model.PinnedList.customSmartList(_:);
    v187 = (v13 + 8);
    v201 = (v13 + 32);
    v14 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v12 >= *(v11 + 16))
      {
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
        return;
      }

      v15 = *(v0 + 328);
      v16 = *(v0 + 312);
      v17 = *(v0 + 272);
      v204 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v18 = *(v13 + 72);
      v19 = *(v13 + 16);
      v19(v15, v11 + v204 + v18 * v12, v17);
      v19(v16, v15, v17);
      v20 = (*(v13 + 88))(v16, v17);
      if (v20 != v190)
      {
        break;
      }

      v21 = *(v0 + 312);
      (*(v13 + 96))(v21, *(v0 + 272));
      v22 = *v21;
      if (!v184 || !*(v177 + 16) || (v23 = sub_1003B3EE0(), (v24 & 1) == 0))
      {

LABEL_14:
        v26 = *v201;
        (*v201)(*(v0 + 304), *(v0 + 328), *(v0 + 272));
        v208[0] = v14;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1004A26B8(0, *(v14 + 2) + 1, 1);
          v14 = v208[0];
        }

        v28 = *(v14 + 2);
        v27 = *(v14 + 3);
        if (v28 >= v27 >> 1)
        {
          sub_1004A26B8((v27 > 1), v28 + 1, 1);
          v14 = v208[0];
        }

        v29 = *(v0 + 304);
        v30 = *(v0 + 272);
        *(v14 + 2) = v28 + 1;
        v26(&v14[v204 + v28 * v18], v29, v30);
        goto LABEL_19;
      }

      v25 = *(*(v177 + 56) + 8 * v23);

      if (v25 != 2)
      {
        goto LABEL_14;
      }

      (*v187)(*(v0 + 328), *(v0 + 272));
LABEL_19:
      ++v12;
      v11 = v9;
      if (v197 == v12)
      {
        goto LABEL_22;
      }
    }

    if (v20 != v182 && v20 != v178)
    {
LABEL_122:

      _diagnoseUnexpectedEnumCase<A>(type:)();
      return;
    }

    (*v187)(*(v0 + 312), *(v0 + 272));
    goto LABEL_14;
  }

  v14 = _swiftEmptyArrayStorage;
LABEL_22:
  v31 = *(v14 + 2);
  if (!v31)
  {

    v37 = _swiftEmptyArrayStorage;
    if (v199 != 1)
    {
      goto LABEL_44;
    }

LABEL_62:
    v206 = v37;
    goto LABEL_119;
  }

  v32 = *(v0 + 280);
  v33 = *(v32 + 16);
  v32 += 16;
  v195 = v33;
  v34 = *(v0 + 144);
  v35 = &v14[(*(v32 + 64) + 32) & ~*(v32 + 64)];
  v193 = (v32 + 72);
  v185 = (v32 - 8);
  v188 = (v32 + 80);
  v175 = (v34 + 48);
  v165 = (v34 + 32);
  v163 = (v34 + 104);
  v36 = *(v0 + 184);
  v183 = *(v32 + 56);
  v191 = enum case for REMAccountsListDataView.Model.PinnedList.predefinedSmartList(_:);
  v173 = enum case for REMAccountsListDataView.Model.PinnedList.list(_:);
  v161 = enum case for REMAccountsListDataView.Model.PinnedList.customSmartList(_:);
  v160 = enum case for SmartListType.today(_:);
  v169 = (v34 + 8);
  v171 = (v34 + 16);
  v167 = v36;
  v179 = (v36 + 48);
  v181 = (v36 + 56);
  v37 = _swiftEmptyArrayStorage;
  do
  {
    v39 = *(v0 + 320);
    v41 = *(v0 + 288);
    v40 = *(v0 + 296);
    v42 = *(v0 + 272);
    v195(v39, v35, v42);
    v195(v40, v39, v42);
    v195(v41, v40, v42);
    v43 = (*v193)(v41, v42);
    v202 = v31;
    if (v43 == v191)
    {
      v44 = *(v0 + 288);
      v46 = *(v0 + 128);
      v45 = *(v0 + 136);
      (*v188)(v44, *(v0 + 272));
      v47 = *v44;
      SmartListType.init(remSmartListType:)();
      v48 = *v175;
      v49 = (*v175)(v46, 1, v45);
      v50 = *(v0 + 160);
      v52 = *(v0 + 128);
      v51 = *(v0 + 136);
      if (v49 == 1)
      {
        (*v163)(v50, v160, *(v0 + 136));
        if (v48(v52, 1, v51) != 1)
        {
          sub_1000079B4(*(v0 + 128), &qword_10078C108, &unk_1006459B0);
        }
      }

      else
      {
        (*v165)(v50, *(v0 + 128), *(v0 + 136));
      }

      v60 = *(v0 + 296);
      v61 = *(v0 + 272);
      v62 = *(v0 + 256);
      v63 = *(v0 + 152);
      v64 = *(v0 + 160);
      v65 = *(v0 + 136);
      (*v171)(v63, v64, v65);
      sub_10046D10C(v63, v62);

      v66 = *v185;
      (*v185)(v60, v61);
      (*v169)(v64, v65);
    }

    else
    {
      if (v43 == v173)
      {
        v54 = *(v0 + 288);
        v53 = *(v0 + 296);
        v55 = *(v0 + 272);
        v56 = *(v0 + 256);
        (*v188)(v54, v55);
        v57 = *v54;
        v58 = type metadata accessor for REMList_Codable();
        v59 = &protocol witness table for REMList;
      }

      else
      {
        if (v43 != v161)
        {
          goto LABEL_122;
        }

        v67 = *(v0 + 288);
        v53 = *(v0 + 296);
        v55 = *(v0 + 272);
        v56 = *(v0 + 256);
        (*v188)(v67, v55);
        v57 = *v67;
        v58 = type metadata accessor for REMSmartList_Codable();
        v59 = &protocol witness table for REMSmartList;
      }

      v209 = v58;
      v210 = v59;
      v208[0] = v57;
      sub_10046D708(v208, v56);
      v66 = *v185;
      (*v185)(v53, v55);
    }

    v68 = *(v0 + 320);
    v69 = *(v0 + 272);
    v71 = *(v0 + 168);
    v70 = *(v0 + 176);
    sub_10055003C(*(v0 + 256), v71, type metadata accessor for AnyListEntity);
    (*v181)(v71, 0, 1, v70);
    v66(v68, v69);
    if ((*v179)(v71, 1, v70) == 1)
    {
      sub_1000079B4(*(v0 + 168), &qword_100767520, &qword_10062BD10);
      v38 = v199;
    }

    else
    {
      sub_10055003C(*(v0 + 168), *(v0 + 264), type metadata accessor for AnyListEntity);
      v38 = v199;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_100548964(0, v37[2] + 1, 1, v37, &qword_10078C2F0, &unk_100645E90, type metadata accessor for AnyListEntity);
      }

      v73 = v37[2];
      v72 = v37[3];
      if (v73 >= v72 >> 1)
      {
        v37 = sub_100548964((v72 > 1), v73 + 1, 1, v37, &qword_10078C2F0, &unk_100645E90, type metadata accessor for AnyListEntity);
      }

      v74 = *(v0 + 264);
      v37[2] = v73 + 1;
      sub_10055003C(v74, v37 + ((*(v167 + 80) + 32) & ~*(v167 + 80)) + *(v167 + 72) * v73, type metadata accessor for AnyListEntity);
    }

    v35 += v183;
    v31 = v202 - 1;
  }

  while (v202 != 1);

  if (v38 == 1)
  {
    goto LABEL_62;
  }

LABEL_44:
  v75 = *(v0 + 352);
  v76 = *(v0 + 336);
  REMAccountsListDataView.Result.model.getter();
  v77 = REMAccountsListDataView.Model.accounts.getter();
  v159(v75, v76);
  v78 = *(v77 + 16);
  if (!v78)
  {

    v96 = _swiftEmptyArrayStorage;
    v97 = _swiftEmptyArrayStorage[2];
    if (!v97)
    {
      goto LABEL_118;
    }

LABEL_64:
    v98 = 0;
    v192 = *(v0 + 184);
    v99 = *(v0 + 64);
    v180 = enum case for REMAccountsListDataView.Model.AccountChild.list(_:);
    v172 = enum case for REMAccountsListDataView.Model.AccountChild.customSmartList(_:);
    v168 = enum case for REMAccountsListDataView.Model.AccountChild.group(_:);
    v186 = *(v0 + 88);
    v176 = (v186 + 96);
    v166 = (v99 + 32);
    v196 = enum case for REMAccountsListDataView.Model.GroupChild.list(_:);
    v203 = *(v0 + 40);
    v194 = (v203 + 96);
    v162 = (v99 + 8);
    v100 = &selRef_defaultStore;
    v189 = enum case for REMAccountsListDataView.Model.GroupChild.customSmartList(_:);
    v174 = v96;
    v164 = v97;
    while (1)
    {
      if (v98 >= v96[2])
      {
        goto LABEL_131;
      }

      v101 = *(v0 + 96);
      v102 = *(v0 + 80);
      (*(v186 + 16))(v101, v96 + ((*(v186 + 80) + 32) & ~*(v186 + 80)) + *(v186 + 72) * v98, v102);
      v103 = (*(v186 + 88))(v101, v102);
      if (v103 == v180)
      {
        v104 = *(v0 + 96);
        (*v176)(v104, *(v0 + 80));
        v105 = *v104;
        if ([v105 v100[18]])
        {
          goto LABEL_75;
        }

        v106 = v98;
        v108 = *(v0 + 240);
        v107 = *(v0 + 248);
        v209 = type metadata accessor for REMList_Codable();
        v210 = &protocol witness table for REMList;
        v208[0] = v105;
        v109 = v105;
        sub_10046D708(v208, v107);
        sub_10054FFD4(v107, v108, type metadata accessor for AnyListEntity);
        v110 = sub_100548964(0, 1, 1, _swiftEmptyArrayStorage, &qword_10078C2F0, &unk_100645E90, type metadata accessor for AnyListEntity);
        v112 = v110[2];
        v111 = v110[3];
        v113 = v112 + 1;
        if (v112 >= v111 >> 1)
        {
          v110 = sub_100548964((v111 > 1), v112 + 1, 1, v110, &qword_10078C2F0, &unk_100645E90, type metadata accessor for AnyListEntity);
        }

        v115 = *(v0 + 240);
        v114 = *(v0 + 248);
LABEL_100:

        sub_10054FC30(v114, type metadata accessor for AnyListEntity);
        v110[2] = v113;
        sub_10055003C(v115, v110 + ((*(v192 + 80) + 32) & ~*(v192 + 80)) + *(v192 + 72) * v112, type metadata accessor for AnyListEntity);
        v98 = v106;
        v100 = &selRef_defaultStore;
        goto LABEL_103;
      }

      if (v103 == v172)
      {
        v116 = *(v0 + 96);
        (*v176)(v116, *(v0 + 80));
        v105 = *v116;
        if ([v105 v100[18]])
        {
LABEL_75:

          v110 = _swiftEmptyArrayStorage;
          goto LABEL_103;
        }

        v106 = v98;
        v143 = *(v0 + 224);
        v142 = *(v0 + 232);
        v209 = type metadata accessor for REMSmartList_Codable();
        v210 = &protocol witness table for REMSmartList;
        v208[0] = v105;
        v109 = v105;
        sub_10046D708(v208, v142);
        sub_10054FFD4(v142, v143, type metadata accessor for AnyListEntity);
        v110 = sub_100548964(0, 1, 1, _swiftEmptyArrayStorage, &qword_10078C2F0, &unk_100645E90, type metadata accessor for AnyListEntity);
        v112 = v110[2];
        v144 = v110[3];
        v113 = v112 + 1;
        if (v112 >= v144 >> 1)
        {
          v110 = sub_100548964((v144 > 1), v112 + 1, 1, v110, &qword_10078C2F0, &unk_100645E90, type metadata accessor for AnyListEntity);
        }

        v115 = *(v0 + 224);
        v114 = *(v0 + 232);
        goto LABEL_100;
      }

      if (v103 != v168)
      {
        goto LABEL_122;
      }

      v170 = v98;
      v207 = v37;
      v117 = *(v0 + 96);
      v118 = *(v0 + 72);
      v119 = *(v0 + 56);
      (*v176)(v117, *(v0 + 80));
      (*v166)(v118, v117, v119);
      v120 = REMAccountsListDataView.Model.Group.lists.getter();
      v121 = v120;
      v122 = *(v120 + 16);
      if (v122)
      {
        break;
      }

      v110 = _swiftEmptyArrayStorage;
LABEL_102:
      (*v162)(*(v0 + 72), *(v0 + 56));

      v37 = v207;
      v97 = v164;
      v98 = v170;
LABEL_103:
      v145 = v110[2];
      v146 = v37[2];
      v147 = v146 + v145;
      if (__OFADD__(v146, v145))
      {
        goto LABEL_132;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v147 <= v37[3] >> 1)
      {
        if (!v110[2])
        {
          goto LABEL_65;
        }
      }

      else
      {
        if (v146 <= v147)
        {
          v149 = v146 + v145;
        }

        else
        {
          v149 = v146;
        }

        v37 = sub_100548964(isUniquelyReferenced_nonNull_native, v149, 1, v37, &qword_10078C2F0, &unk_100645E90, type metadata accessor for AnyListEntity);
        if (!v110[2])
        {
LABEL_65:

          v96 = v174;
          if (v145)
          {
            goto LABEL_133;
          }

          goto LABEL_66;
        }
      }

      if ((v37[3] >> 1) - v37[2] < v145)
      {
        goto LABEL_134;
      }

      swift_arrayInitWithCopy();

      v96 = v174;
      if (v145)
      {
        v150 = v37[2];
        v94 = __OFADD__(v150, v145);
        v151 = v150 + v145;
        if (v94)
        {
          goto LABEL_135;
        }

        v37[2] = v151;
      }

LABEL_66:
      if (++v98 == v97)
      {
        goto LABEL_118;
      }
    }

    v123 = 0;
    v110 = _swiftEmptyArrayStorage;
    v124 = *(v120 + 16);
    while (1)
    {
      if (v123 >= *(v121 + 16))
      {
        goto LABEL_126;
      }

      v125 = *(v0 + 48);
      v126 = *(v0 + 32);
      (*(v203 + 16))(v125, v121 + ((*(v203 + 80) + 32) & ~*(v203 + 80)) + *(v203 + 72) * v123, v126);
      v127 = (*(v203 + 88))(v125, v126);
      if (v127 == v196)
      {
        v128 = *(v0 + 48);
        (*v194)(v128, *(v0 + 32));
        v129 = *v128;
        if (([v129 v100[18]] & 1) == 0)
        {
          v131 = *(v0 + 208);
          v130 = *(v0 + 216);
          v209 = type metadata accessor for REMList_Codable();
          v210 = &protocol witness table for REMList;
          v208[0] = v129;
          v132 = v129;
          sub_10046D708(v208, v130);
          sub_10054FFD4(v130, v131, type metadata accessor for AnyListEntity);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v110 = sub_100548964(0, v110[2] + 1, 1, v110, &qword_10078C2F0, &unk_100645E90, type metadata accessor for AnyListEntity);
          }

          v134 = v110[2];
          v133 = v110[3];
          v135 = v134 + 1;
          if (v134 >= v133 >> 1)
          {
            v110 = sub_100548964((v133 > 1), v134 + 1, 1, v110, &qword_10078C2F0, &unk_100645E90, type metadata accessor for AnyListEntity);
          }

          v137 = *(v0 + 208);
          v136 = *(v0 + 216);
LABEL_96:

          sub_10054FC30(v136, type metadata accessor for AnyListEntity);
          v110[2] = v135;
          sub_10055003C(v137, v110 + ((*(v192 + 80) + 32) & ~*(v192 + 80)) + *(v192 + 72) * v134, type metadata accessor for AnyListEntity);
          v100 = &selRef_defaultStore;
          v122 = v124;
          goto LABEL_80;
        }
      }

      else
      {
        if (v127 != v189)
        {
          goto LABEL_122;
        }

        v138 = *(v0 + 48);
        (*v194)(v138, *(v0 + 32));
        v129 = *v138;
        if (([v129 v100[18]] & 1) == 0)
        {
          v140 = *(v0 + 192);
          v139 = *(v0 + 200);
          v209 = type metadata accessor for REMSmartList_Codable();
          v210 = &protocol witness table for REMSmartList;
          v208[0] = v129;
          v132 = v129;
          sub_10046D708(v208, v139);
          sub_10054FFD4(v139, v140, type metadata accessor for AnyListEntity);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v110 = sub_100548964(0, v110[2] + 1, 1, v110, &qword_10078C2F0, &unk_100645E90, type metadata accessor for AnyListEntity);
          }

          v134 = v110[2];
          v141 = v110[3];
          v135 = v134 + 1;
          if (v134 >= v141 >> 1)
          {
            v110 = sub_100548964((v141 > 1), v134 + 1, 1, v110, &qword_10078C2F0, &unk_100645E90, type metadata accessor for AnyListEntity);
          }

          v137 = *(v0 + 192);
          v136 = *(v0 + 200);
          goto LABEL_96;
        }
      }

LABEL_80:
      if (v122 == ++v123)
      {
        goto LABEL_102;
      }
    }
  }

  v205 = v37;
  v79 = *(v0 + 112);
  v80 = *(v79 + 16);
  v79 += 16;
  v200 = v80;
  v81 = v77 + ((*(v79 + 64) + 32) & ~*(v79 + 64));
  v198 = *(v79 + 56);
  v82 = (v79 - 8);
  v83 = _swiftEmptyArrayStorage;
  do
  {
    v84 = *(v0 + 120);
    v85 = *(v0 + 104);
    v200(v84, v81, v85);
    v86 = REMAccountsListDataView.Model.Account.children.getter();
    (*v82)(v84, v85);
    v87 = *(v86 + 16);
    v88 = v83[2];
    v89 = v88 + v87;
    if (__OFADD__(v88, v87))
    {
      goto LABEL_127;
    }

    v90 = swift_isUniquelyReferenced_nonNull_native();
    v91 = v83;
    if (v90 && v89 <= v83[3] >> 1)
    {
      if (!*(v86 + 16))
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (v88 <= v89)
      {
        v92 = v88 + v87;
      }

      else
      {
        v92 = v88;
      }

      v91 = sub_100548964(v90, v92, 1, v83, &qword_10078C2E8, &unk_100645E80, &type metadata accessor for REMAccountsListDataView.Model.AccountChild);
      if (!*(v86 + 16))
      {
LABEL_46:
        v83 = v91;

        if (v87)
        {
          goto LABEL_128;
        }

        goto LABEL_47;
      }
    }

    if ((v91[3] >> 1) - v91[2] < v87)
    {
      goto LABEL_129;
    }

    v83 = v91;
    swift_arrayInitWithCopy();

    if (v87)
    {
      v93 = v83[2];
      v94 = __OFADD__(v93, v87);
      v95 = v93 + v87;
      if (v94)
      {
        goto LABEL_130;
      }

      v83[2] = v95;
    }

LABEL_47:
    v81 += v198;
    --v78;
  }

  while (v78);

  v37 = v205;
  v96 = v83;
  v97 = v83[2];
  if (v97)
  {
    goto LABEL_64;
  }

LABEL_118:
  v206 = v37;

LABEL_119:
  v153 = *(v0 + 432);
  v152 = *(v0 + 440);
  v154 = *(v0 + 424);
  v155 = *(v0 + 376);
  v156 = *(v0 + 384);
  v157 = *(v0 + 368);

  (*(v155 + 8))(v156, v157);
  (*(v153 + 8))(v152, v154);

  v158 = *(v0 + 8);

  v158(v206);
}

uint64_t sub_10054632C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AppIntentsDependencyKey();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v10 - v7;
  sub_100058000(&qword_100767540, &qword_100645990);
  (*(v3 + 104))(v8, enum case for AppIntentsDependencyKey.remStore(_:), v2);
  (*(v3 + 16))(v5, v8, v2);
  sub_10054FD8C(&qword_100767548, &type metadata accessor for AppIntentsDependencyKey, &protocol conformance descriptor for AppIntentsDependencyKey);
  AnyHashable.init<A>(_:)();
  (*(v3 + 8))(v8, v2);
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  result = AppDependency.__allocating_init(key:manager:)();
  *a1 = 0;
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1005464E4(uint64_t a1)
{
  v4 = *(v1 + 8);
  v5 = *v1;
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1005500B4;

  return AnyListEntityQuery.entities(for:)(a1, v5, v4);
}

uint64_t sub_100546590(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *(v1 + 8);
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_100546630;

  return AnyListEntityQuery.suggestedEntities()(v4, v3);
}

uint64_t sub_100546630(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_100546740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1004F3200;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100546800(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10046BBA8();
  *v5 = v2;
  v5[1] = sub_10001AA3C;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_1005468B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001AA3C;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

char *sub_100546970(char *result, int64_t a2, char a3, char *a4)
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
    sub_100058000(&unk_100771E10, &qword_100634270);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100546A7C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100058000(&qword_10078C140, &unk_100645B98);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 3 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_100546B80(char *result, int64_t a2, char a3, char *a4)
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
    sub_100058000(&qword_1007699E8, &unk_10062E410);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_100546C7C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100058000(&qword_10078C148, &qword_100645BA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100546DD8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100058000(&qword_10076B848, &qword_10062FBE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_100546F48(char *result, int64_t a2, char a3, char *a4)
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
    sub_100058000(&qword_10078C180, &unk_100645C10);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1005470E4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100058000(&unk_100777760, &unk_1006372A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100547498(char *result, int64_t a2, char a3, char *a4)
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
    sub_100058000(&qword_100774070, &unk_10063B4E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1005476A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100058000(&qword_10077FE80, &qword_10063F230);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100547808(char *result, int64_t a2, char a3, char *a4)
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
    sub_100058000(&qword_100785FC8, &unk_100641D10);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10054792C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100058000(&qword_10078C288, &qword_100645DF8);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100547A78(char *result, int64_t a2, char a3, char *a4)
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
    sub_100058000(&qword_1007860D0, &qword_100641EA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100547B84(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100058000(&qword_100786510, &qword_100641E28);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100058000(&unk_10076BCD0, &qword_1006393C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100547CE0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100058000(&qword_10078C260, &qword_100645DC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100547E48(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100058000(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size_1(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100058000(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_100547F7C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100058000(&qword_10078C1E8, &qword_100645CE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_100548184(char *result, int64_t a2, char a3, char *a4)
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
    sub_100058000(&qword_10078C290, &qword_100645E00);
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

void *sub_100548310(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100058000(&qword_10078C1F0, &unk_100645CF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100058000(&qword_100781C20, &qword_10063D7F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1005484A0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100058000(a5, a6);
  v16 = *(sub_100058000(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size_1(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_100058000(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_1005486D4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100058000(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size_1(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100058000(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_10054881C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100058000(&qword_10078C228, &qword_100645D48);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100058000(&qword_10078C230, &unk_100645D50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100548964(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100058000(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size_1(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

Swift::Int sub_100548B64(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  if (a2)
  {
    sub_100058000(a3, a4);
    v10 = static _DictionaryStorage.convert(_:capacity:)();
    v28 = v10;
    __CocoaDictionary.makeIterator()();
    v11 = __CocoaDictionary.Iterator.next()();
    if (v11)
    {
      v25 = a4;
      v12 = v11;
      sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
      v13 = v12;
      do
      {
        v26 = v13;
        swift_dynamicCast();
        sub_100003540(0, a5, a6);
        swift_dynamicCast();
        v20 = *(v10 + 16);
        if (*(v10 + 24) <= v20)
        {
          sub_10054EA0C(v20 + 1, 1, a3, v25);
        }

        v10 = v28;
        result = NSObject._rawHashValue(seed:)(*(v28 + 40));
        v15 = v28 + 64;
        v16 = -1 << *(v28 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v28 + 64 + 8 * (v17 >> 6))) != 0)
        {
          v19 = __clz(__rbit64((-1 << v17) & ~*(v28 + 64 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v21 = 0;
          v22 = (63 - v16) >> 6;
          do
          {
            if (++v18 == v22 && (v21 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v23 = v18 == v22;
            if (v18 == v22)
            {
              v18 = 0;
            }

            v21 |= v23;
            v24 = *(v15 + 8 * v18);
          }

          while (v24 == -1);
          v19 = __clz(__rbit64(~v24)) + (v18 << 6);
        }

        *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v28 + 48) + 8 * v19) = v27;
        *(*(v28 + 56) + 8 * v19) = v26;
        ++*(v28 + 16);
        v13 = __CocoaDictionary.Iterator.next()();
      }

      while (v13);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v10;
}

void sub_100548DC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100058000(&qword_1007812A0, &unk_10063CE80);
  v40 = v4;
  v10 = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v9;
    v39 = v6;
    v41 = (v6 + 32);
    v18 = v10 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v41)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      sub_10054FD8C(&qword_10076FE50, &type metadata accessor for TTRRemindersListViewModel.ItemID, &protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v41)((*(v11 + 48) + v43 * v19), v44, v5);
      *(*(v11 + 56) + 8 * v19) = v42;
      ++*(v11 + 16);
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_1005491B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100058000(&unk_10076B980, &unk_10063CE20);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v4;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      v22 = Hasher._finalize()();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
}

void sub_10054945C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100058000(&qword_100781260, &qword_10063CE38);
  v39 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v38 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (1)
    {
      if (!v12)
      {
        v18 = v8;
        while (1)
        {
          v8 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            __break(1u);
            goto LABEL_41;
          }

          if (v8 >= v13)
          {
            break;
          }

          v19 = v9[v8];
          ++v18;
          if (v19)
          {
            v17 = __clz(__rbit64(v19));
            v12 = (v19 - 1) & v19;
            goto LABEL_15;
          }
        }

        if (v39)
        {
          v37 = 1 << *(v5 + 32);
          if (v37 >= 64)
          {
            bzero(v9, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
          }

          else
          {
            *v9 = -1 << v37;
          }

          *(v5 + 16) = 0;
        }

        v3 = v2;
        goto LABEL_39;
      }

      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(v5 + 48) + 16 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v21 + 8 * v20);
      if ((v39 & 1) == 0)
      {
        v26 = v25;
      }

      Hasher.init(_seed:)();
      if (!v24)
      {
        break;
      }

      if (v24 == 1)
      {
        v27 = 4;
LABEL_21:
        Hasher._combine(_:)(v27);
        v28 = v23;
        goto LABEL_23;
      }

      v28 = qword_100645EC8[v23];
LABEL_23:
      Hasher._combine(_:)(v28);
      v29 = Hasher._finalize()();
      v30 = -1 << *(v7 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_41:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 16 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(*(v7 + 56) + 8 * v15) = v25;
      ++*(v7 + 16);
      v5 = v38;
    }

    v27 = 2;
    goto LABEL_21;
  }

LABEL_39:
  *v3 = v7;
}

void sub_100549754(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for TTRReminderListEditingPresenter.PendingDisplay(0);
  v43 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v48 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v47 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100058000(&qword_100781278, &unk_100645C50);
  v44 = v4;
  v11 = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = v11;
  if (*(v10 + 16))
  {
    v39 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v40 = (v8 + 16);
    v41 = v8;
    v45 = (v8 + 32);
    v19 = v11 + 64;
    v42 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v46 = *(v8 + 72);
      v26 = v25 + v46 * v24;
      if (v44)
      {
        (*v45)(v47, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v43 + 72);
        sub_10055003C(v27 + v28 * v24, v48, type metadata accessor for TTRReminderListEditingPresenter.PendingDisplay);
      }

      else
      {
        (*v40)(v47, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v43 + 72);
        sub_10054FFD4(v29 + v28 * v24, v48, type metadata accessor for TTRReminderListEditingPresenter.PendingDisplay);
      }

      sub_10054FD8C(&qword_10076FE50, &type metadata accessor for TTRRemindersListViewModel.ItemID, &protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
      v30 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v31 = -1 << *(v12 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v19 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v19 + 8 * v33);
          if (v37 != -1)
          {
            v20 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v20 = __clz(__rbit64((-1 << v32) & ~*(v19 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v45)((*(v12 + 48) + v46 * v20), v47, v7);
      sub_10055003C(v48, *(v12 + 56) + v28 * v20, type metadata accessor for TTRReminderListEditingPresenter.PendingDisplay);
      ++*(v12 + 16);
      v8 = v41;
      v10 = v42;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v14, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
}

void sub_100549BF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100058000(&qword_100781308, &qword_10063CEF0);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
      }

      v23 = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v4 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_100549E64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100058000(&qword_100775FE8, &qword_10063F9C0);
  v36 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v36 & 1) == 0)
      {
        v25 = v21;
      }

      v26 = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_10054A0E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for TTRRemindersListPostponeType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100058000(&qword_100781300, &unk_10063F9E0);
  v41 = v4;
  v10 = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v37 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v38 = (v6 + 16);
    v39 = v6;
    v42 = (v6 + 32);
    v18 = v10 + 64;
    v40 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v43 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v41)
      {
        (*v42)(v44, v26, v5);
      }

      else
      {
        (*v38)(v44, v26, v5);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      sub_10054FD8C(&qword_100781290, &type metadata accessor for TTRRemindersListPostponeType, &protocol conformance descriptor for TTRRemindersListPostponeType);
      v28 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v29 = -1 << *(v11 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v18 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v18 + 8 * v31);
          if (v35 != -1)
          {
            v19 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v30) & ~*(v18 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v42)((*(v11 + 48) + v25 * v19), v44, v5);
      *(*(v11 + 56) + 8 * v19) = v27;
      ++*(v11 + 16);
      v6 = v39;
      v9 = v40;
      v16 = v43;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v13, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_10054A4A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100058000(&qword_1007812F8, &unk_10063CEE0);
  v34 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v34 & 1) == 0)
      {
        v22 = v20;
      }

      Hasher.init(_seed:)();
      if (v20)
      {
        Hasher._combine(_:)(1u);
        v23 = v20;
        NSObject.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v24 = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if (v34)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_10054A754(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for TTRIGroupMembershipViewModel.Diff.PartialMove(0);
  v38 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_100058000(&qword_1007812C8, &unk_10063CEB0);
  v39 = v4;
  v9 = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    v37 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = v9 + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + 8 * v22);
      v24 = *(v38 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v39)
      {
        sub_10055003C(v25, v7, type metadata accessor for TTRIGroupMembershipViewModel.Diff.PartialMove);
      }

      else
      {
        sub_10054FFD4(v25, v7, type metadata accessor for TTRIGroupMembershipViewModel.Diff.PartialMove);
        v26 = v23;
      }

      v27 = NSObject._rawHashValue(seed:)(*(v10 + 40));
      v28 = -1 << *(v10 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      sub_10055003C(v7, *(v10 + 56) + v24 * v18, type metadata accessor for TTRIGroupMembershipViewModel.Diff.PartialMove);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v35 = 1 << *(v8 + 32);
    v3 = v37;
    if (v35 >= 64)
    {
      bzero((v8 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
}

void sub_10054AA9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v53 = type metadata accessor for REMRemindersListDataView.SectionLite();
  v5 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRSectionID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v54 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100058000(&qword_100781270, &unk_10063CE50);
  v48 = v4;
  v11 = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = v11;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v44 = (v14 + 16);
    v45 = v14;
    v42 = v2;
    v43 = v5 + 16;
    v46 = v10;
    v47 = v5;
    v49 = (v5 + 32);
    v50 = (v14 + 32);
    v20 = v11 + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v51 = *(v21 + 72);
      v28 = v27 + v51 * v26;
      if (v48)
      {
        (*v50)(v54, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v47 + 72);
        (*(v47 + 32))(v52, v29 + v30 * v26, v53);
      }

      else
      {
        (*v44)(v54, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v47 + 72);
        (*(v47 + 16))(v52, v31 + v30 * v26, v53);
      }

      sub_10054FD8C(&qword_1007758E0, &type metadata accessor for TTRSectionID, &protocol conformance descriptor for TTRSectionID);
      v32 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v33 = -1 << *(v12 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v20 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v20 + 8 * v35);
          if (v39 != -1)
          {
            v22 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v34) & ~*(v20 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v50)((*(v12 + 48) + v51 * v22), v54, v7);
      (*v49)(*(v12 + 56) + v30 * v22, v52, v53);
      ++*(v12 + 16);
      v21 = v45;
      v10 = v46;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_34;
    }

    v40 = 1 << *(v10 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v15, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v40;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
}

void sub_10054AF44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v46 = type metadata accessor for REMRemindersListDataView.SectionLite();
  v5 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_100058000(&qword_100781280, &qword_10063CE60);
  v43 = v4;
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v39 = v2;
    v40 = (v5 + 16);
    v41 = v7;
    v42 = v5;
    v44 = (v5 + 32);
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v42 + 72);
      v28 = v23 + v27 * v22;
      if (v43)
      {
        (*v44)(v45, v28, v46);
      }

      else
      {
        (*v40)(v45, v28, v46);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v29 = Hasher._finalize()();
      v30 = -1 << *(v9 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v16 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v16 + 8 * v32);
          if (v36 != -1)
          {
            v17 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v31) & ~*(v16 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      (*v44)((*(v9 + 56) + v27 * v17), v45, v46);
      ++*(v9 + 16);
      v7 = v41;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v7 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v11, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

void sub_10054B2D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_100058000(a3, a4);
  v33 = v6;
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v33 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(*(v22 + 16));
      v24 = Hasher._finalize()();
      v25 = -1 << *(v9 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v32 = 1 << *(v7 + 32);
    v5 = v4;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

void sub_10054B560(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100058000(&qword_100781238, &unk_10063CE00);
  v40 = v4;
  v10 = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v9;
    v39 = v6;
    v41 = (v6 + 32);
    v18 = v10 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v41)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      sub_10054FD8C(&qword_1007727B0, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier, &protocol conformance descriptor for TTRAccountsListsViewModel.ItemIdentifier);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v41)((*(v11 + 48) + v43 * v19), v44, v5);
      *(*(v11 + 56) + 8 * v19) = v42;
      ++*(v11 + 16);
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_10054B950(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_100058000(a3, a4);
  v35 = v6;
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = (*(v7 + 56) + 16 * v22);
      v25 = *v24;
      v36 = v24[1];
      if ((v35 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(*(v23 + 16));
      v26 = Hasher._finalize()();
      v27 = -1 << *(v9 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v23;
      v18 = (*(v9 + 56) + 16 * v17);
      *v18 = v25;
      v18[1] = v36;
      ++*(v9 + 16);
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

void sub_10054BBF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v53 = type metadata accessor for REMHashtagLabelSpecifier();
  v5 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v54 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100058000(&qword_100781248, &unk_100645BC0);
  v48 = v4;
  v11 = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = v11;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v44 = (v14 + 16);
    v45 = v14;
    v42 = v2;
    v43 = v5 + 16;
    v46 = v10;
    v47 = v5;
    v49 = (v5 + 32);
    v50 = (v14 + 32);
    v20 = v11 + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v51 = *(v21 + 72);
      v28 = v27 + v51 * v26;
      if (v48)
      {
        (*v50)(v54, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v47 + 72);
        (*(v47 + 32))(v52, v29 + v30 * v26, v53);
      }

      else
      {
        (*v44)(v54, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v47 + 72);
        (*(v47 + 16))(v52, v31 + v30 * v26, v53);
      }

      sub_10054FD8C(&qword_1007727B0, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier, &protocol conformance descriptor for TTRAccountsListsViewModel.ItemIdentifier);
      v32 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v33 = -1 << *(v12 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v20 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v20 + 8 * v35);
          if (v39 != -1)
          {
            v22 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v34) & ~*(v20 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v50)((*(v12 + 48) + v51 * v22), v54, v7);
      (*v49)(*(v12 + 56) + v30 * v22, v52, v53);
      ++*(v12 + 16);
      v21 = v45;
      v10 = v46;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_34;
    }

    v40 = 1 << *(v10 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v15, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v40;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
}

void sub_10054C098(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = v3;
  v5 = a2;
  v54 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v6 = *(v54 - 8);
  __chkstk_darwin(v54);
  v53 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v55 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  sub_100058000(&qword_100781240, &unk_10063CE10);
  v49 = v5;
  v12 = static _DictionaryStorage.resize(original:capacity:move:)();
  v13 = v12;
  if (*(v11 + 16))
  {
    v14 = 0;
    v15 = v9;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v45 = (v15 + 16);
    v46 = v15;
    v43 = v3;
    v44 = v6 + 16;
    v47 = v11;
    v48 = v6;
    v50 = (v6 + 32);
    v51 = (v15 + 32);
    v21 = v12 + 64;
    v22 = v15;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v27 = v24 | (v14 << 6);
      v28 = *(v11 + 48);
      v52 = *(v22 + 72);
      v29 = v28 + v52 * v27;
      if (v49)
      {
        (*v51)(v55, v29, v8);
        v30 = *(v11 + 56);
        v31 = *(v48 + 72);
        (*(v48 + 32))(v53, v30 + v31 * v27, v54);
      }

      else
      {
        (*v45)(v55, v29, v8);
        v32 = *(v11 + 56);
        v31 = *(v48 + 72);
        (*(v48 + 16))(v53, v32 + v31 * v27, v54);
      }

      sub_10054FD8C(&qword_1007727B0, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier, &protocol conformance descriptor for TTRAccountsListsViewModel.ItemIdentifier);
      v33 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v34 = -1 << *(v13 + 32);
      v35 = v33 & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v21 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v21 + 8 * v36);
          if (v40 != -1)
          {
            v23 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v23 = __clz(__rbit64((-1 << v35) & ~*(v21 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      (*v51)((*(v13 + 48) + v52 * v23), v55, v8);
      (*v50)(*(v13 + 56) + v31 * v23, v53, v54);
      ++*(v13 + 16);
      v22 = v46;
      v11 = v47;
    }

    v25 = v14;
    while (1)
    {
      v14 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v14 >= v20)
      {
        break;
      }

      v26 = v16[v14];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v49 & 1) == 0)
    {

      v4 = v43;
      goto LABEL_34;
    }

    v41 = 1 << *(v11 + 32);
    v4 = v43;
    if (v41 >= 64)
    {
      bzero(v16, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v41;
    }

    *(v11 + 16) = 0;
  }

LABEL_34:
  *v4 = v13;
}

void sub_10054C540(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100058000(&qword_100781258, &qword_10063CE30);
  v47 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v44 = v2;
    v45 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    v46 = v6;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v48 = (v12 - 1) & v12;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = v23[1];
      v52 = *v23;
      v25 = *(v5 + 56) + 56 * v22;
      v50 = *v25;
      v26 = *(v25 + 16);
      v49 = *(v25 + 24);
      v28 = *(v25 + 32);
      v27 = *(v25 + 40);
      v29 = *(v25 + 48);
      if ((v47 & 1) == 0)
      {

        v30 = v27;
      }

      v51 = v27;
      v31 = v29;
      v32 = v28;
      v33 = v26;
      v34 = v24;
      v7 = v46;
      Hasher.init(_seed:)();
      String.hash(into:)();
      v35 = Hasher._finalize()();
      v36 = -1 << *(v46 + 32);
      v37 = v35 & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v14 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        v16 = v51;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v14 + 8 * v38);
          if (v42 != -1)
          {
            v15 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v37) & ~*(v14 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
      v16 = v51;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v17 = (*(v46 + 48) + 16 * v15);
      *v17 = v52;
      v17[1] = v34;
      v18 = *(v46 + 56) + 56 * v15;
      *v18 = v50;
      v12 = v48;
      *(v18 + 16) = v33;
      *(v18 + 24) = v49;
      *(v18 + 32) = v32;
      *(v18 + 40) = v16;
      *(v18 + 48) = v31;
      ++*(v46 + 16);
      v5 = v45;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v48 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_33;
    }

    v43 = 1 << *(v5 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero(v9, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v43;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_10054C868(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100058000(&qword_1007812F0, &qword_100645E20);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
      }

      v23 = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_10054CAE0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_100058000(a3, a4);
  v35 = v6;
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(v7 + 56) + 16 * v22;
      v25 = *v24;
      v36 = *(v24 + 8);
      if ((v35 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(*(v23 + 16));
      v26 = Hasher._finalize()();
      v27 = -1 << *(v9 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v23;
      v18 = *(v9 + 56) + 16 * v17;
      *v18 = v25;
      *(v18 + 8) = v36;
      ++*(v9 + 16);
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

void sub_10054CD80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v53 = type metadata accessor for TTRUserDefaults.SmartListVersionWarning();
  v5 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v54 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100058000(&qword_100781328, &qword_10063CF18);
  v48 = v4;
  v11 = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = v11;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v44 = (v14 + 16);
    v45 = v14;
    v42 = v2;
    v43 = v5 + 16;
    v46 = v10;
    v47 = v5;
    v49 = (v5 + 32);
    v50 = (v14 + 32);
    v20 = v11 + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v51 = *(v21 + 72);
      v28 = v27 + v51 * v26;
      if (v48)
      {
        (*v50)(v54, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v47 + 72);
        (*(v47 + 32))(v52, v29 + v30 * v26, v53);
      }

      else
      {
        (*v44)(v54, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v47 + 72);
        (*(v47 + 16))(v52, v31 + v30 * v26, v53);
      }

      sub_10054FD8C(&qword_10076BB40, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v32 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v33 = -1 << *(v12 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v20 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v20 + 8 * v35);
          if (v39 != -1)
          {
            v22 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v34) & ~*(v20 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v50)((*(v12 + 48) + v51 * v22), v54, v7);
      (*v49)(*(v12 + 56) + v30 * v22, v52, v53);
      ++*(v12 + 16);
      v21 = v45;
      v10 = v46;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_34;
    }

    v40 = 1 << *(v10 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v15, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v40;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
}

void sub_10054D228(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100058000(&qword_100781338, &qword_100645EC0);
  v36 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v36 & 1) == 0)
      {

        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v26 = Hasher._finalize()();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_10054D4F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v9 = a2;
  v46 = a3(0);
  v10 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v41 - v11;
  v12 = *v5;
  sub_100058000(a4, a5);
  v44 = v9;
  v13 = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = v13;
  if (*(v12 + 16))
  {
    v41 = v5;
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v42 = (v10 + 16);
    v43 = v10;
    v21 = (v10 + 32);
    v22 = v13 + 64;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v27 = v24 | (v15 << 6);
      v28 = *(*(v12 + 48) + 8 * v27);
      v29 = *(v10 + 72);
      v30 = *(v12 + 56) + v29 * v27;
      if (v44)
      {
        (*v21)(v45, v30, v46);
      }

      else
      {
        (*v42)(v45, v30, v46);
        v31 = v28;
      }

      v32 = NSObject._rawHashValue(seed:)(*(v14 + 40));
      v33 = -1 << *(v14 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v22 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v22 + 8 * v35);
          if (v39 != -1)
          {
            v23 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v23 = __clz(__rbit64((-1 << v34) & ~*(v22 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      *(*(v14 + 48) + 8 * v23) = v28;
      (*v21)((*(v14 + 56) + v29 * v23), v45, v46);
      ++*(v14 + 16);
      v10 = v43;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v8 = v41;
      goto LABEL_34;
    }

    v40 = 1 << *(v12 + 32);
    v8 = v41;
    if (v40 >= 64)
    {
      bzero((v12 + 64), ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v40;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v8 = v14;
}

void sub_10054D840(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100058000(&qword_1007812D0, &unk_100645DA0);
  v41 = v4;
  v10 = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v45 = v5;
    v37 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v38 = (v6 + 16);
    v39 = v6;
    v42 = (v6 + 32);
    v18 = v10 + 64;
    v40 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v43 = *(v6 + 72);
      v25 = v24 + v43 * v23;
      v26 = 32 * v23;
      if (v41)
      {
        (*v42)(v44, v25, v45);
        sub_10016A43C(*(v9 + 56) + v26, v46);
      }

      else
      {
        (*v38)(v44, v25, v45);
        sub_10016A5B4(*(v9 + 56) + v26, v46);
      }

      sub_10054FD8C(&qword_10076FE50, &type metadata accessor for TTRRemindersListViewModel.ItemID, &protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
      v27 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v28 = -1 << *(v11 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        v6 = v39;
        v9 = v40;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      v6 = v39;
      v9 = v40;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v42)((*(v11 + 48) + v43 * v19), v44, v45);
      sub_10016A43C(v46, *(v11 + 56) + 32 * v19);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v37;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}