void sub_10051B7DC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_scrollingController);
  if (v2)
  {
    sub_100003540(0, &qword_100775690, NSObject_ptr);
    v3 = v2;
    if (static NSObject.== infix(_:_:)())
    {

      PassthroughSubject.send(_:)();
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10051BA3C(uint64_t (**a1)(char *, uint64_t), uint64_t a2, uint64_t a3)
{
  v6 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v20[-1] - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.Item();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v20[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v3 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource);
  if (!v13)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return;
  }

  v14 = v13;
  TTRICollectionViewTreeBackedDiffableDataSource.item(for:)();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000079B4(v8, &qword_100772140, &qword_10062D9F0);
    (*(v10 + 56))(a1, 1, 1, v9);
    v15 = enum case for TTRICollectionViewCellSelectionOption.disallowed(_:);
    v16 = type metadata accessor for TTRICollectionViewCellSelectionOption();
    (*(*(v16 - 8) + 104))(a2, v15, v16);
    return;
  }

  v17 = *(v10 + 32);
  v17(v12, v8, v9);
  sub_10000B0D8(v3 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter, v20);
  sub_10000C36C(v20, v20[3]);
  v18 = *(v3 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView);
  if (!v18)
  {
    goto LABEL_8;
  }

  sub_100309194(v12, [v18 isEditing], a2);
  sub_100004758(v20);
  v17(a1, v12, v9);
  (*(v10 + 56))(a1, 0, 1, v9);
}

uint64_t sub_10051BF60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v21 = a5;
  v6 = type metadata accessor for TTRICollectionViewCellSelectionOption();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v10 - 8);
  v12 = (&v20 - v11);
  v13 = type metadata accessor for IndexPath();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = a1;
  sub_10051BA3C(v12, v9, v16);
  v18 = sub_1000079B4(v12, &qword_100772140, &qword_10062D9F0);
  LOBYTE(a1) = v21(v18);

  (*(v7 + 8))(v9, v6);
  (*(v14 + 8))(v16, v13);
  return a1 & 1;
}

id sub_10051C198(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession.SelectionState(0);
  __chkstk_darwin(v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for TTRRemindersListViewModel.Item();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 isEditing];
  if (!result)
  {
    return result;
  }

  v17 = *&v3[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource];
  if (!v17)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v18 = v17;
  TTRICollectionViewTreeBackedDiffableDataSource.item(for:)();

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_1000079B4(v10, &qword_100772140, &qword_10062D9F0);
  }

  result = (*(v12 + 32))(v15, v10, v11);
  if (!*&v3[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_automaticSubtaskSelectionController])
  {
    goto LABEL_13;
  }

  (*(v12 + 16))(v7, v15, v11);
  swift_storeEnumTagMultiPayload();

  sub_100069304(v7);

  sub_100528984(v7, type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession.SelectionState);
  v19 = [v3 parentViewController];
  if (v19)
  {
    v20 = v19;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      sub_10037DD70(1, 0);
      sub_10037FFC0();
    }
  }

  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_10051C48C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  sub_10051C198(v12, v11, a5);

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_10051C598(uint64_t a1, uint64_t a2)
{
  v47 = a1;
  v3 = type metadata accessor for TTREditingStateOption.InputType();
  v44 = *(v3 - 8);
  v45 = v3;
  __chkstk_darwin(v3);
  v43 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRRemindersListViewModel.Item();
  v49 = *(v5 - 8);
  __chkstk_darwin(v5);
  v48 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRICollectionViewCellSelectionOption();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v41 - v12;
  v14 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v14 - 8);
  v42 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v41 - v17;
  __chkstk_darwin(v19);
  v21 = &v41 - v20;
  v46 = a2;
  sub_10051BA3C((&v41 - v20), v13, a2);
  v22 = v21;
  v23 = v49;
  sub_10000794C(v21, v18, &qword_100772140, &qword_10062D9F0);
  if ((*(v23 + 48))(v18, 1, v5) == 1)
  {
    (*(v8 + 8))(v13, v7);
    sub_1000079B4(v21, &qword_100772140, &qword_10062D9F0);
    v22 = v18;
    return sub_1000079B4(v22, &qword_100772140, &qword_10062D9F0);
  }

  v24 = v48;
  (*(v23 + 32))(v48, v18, v5);
  (*(v8 + 16))(v10, v13, v7);
  v25 = (*(v8 + 88))(v10, v7);
  if (v25 == enum case for TTRICollectionViewCellSelectionOption.disallowed(_:) || v25 == enum case for TTRICollectionViewCellSelectionOption.selectItem(_:))
  {
LABEL_13:
    (*(v23 + 8))(v24, v5);
    (*(v8 + 8))(v13, v7);
    return sub_1000079B4(v22, &qword_100772140, &qword_10062D9F0);
  }

  if (v25 == enum case for TTRICollectionViewCellSelectionOption.editPrimaryText(_:))
  {
    v46 = v22;
    v26 = UICollectionView.visibleCellForItem(at:)();
    v22 = v46;
    if (v26)
    {
      v27 = v26;
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        v47 = v5;
        v41 = v7;
        v28 = *(v50 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_internalFocusedCell);
        if (v27 == v28)
        {
          v29 = *(v50 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
          v30 = *(v50 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
          sub_10000C36C((v50 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v29);
          v31 = *(v30 + 8);
          v50 = v31 + 400;
          v45 = *(v31 + 400);
          v32 = v28;
          v33 = v42;
          v34 = v48;
          v45(v48, v29, v31);

          sub_1000079B4(v33, &qword_100772140, &qword_10062D9F0);
          (*(v23 + 8))(v34, v47);
        }

        else
        {
          v39 = v43;
          v38 = v44;
          v40 = v45;
          (*(v44 + 104))(v43, enum case for TTREditingStateOption.InputType.unspecified(_:), v45);
          dispatch thunk of TTRIShowRemindersEditableCell.beginEditingPrimaryString(_:)();

          (*(v38 + 8))(v39, v40);
          (*(v23 + 8))(v48, v47);
        }

        (*(v8 + 8))(v13, v41);
        v22 = v46;
        return sub_1000079B4(v22, &qword_100772140, &qword_10062D9F0);
      }
    }

    goto LABEL_13;
  }

  if (v25 == enum case for TTRICollectionViewCellSelectionOption.performPrimaryAction(_:))
  {
    v35 = *(v50 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
    v36 = *(v50 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
    sub_10000C36C((v50 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v35);
    (*(*(v36 + 8) + 784))(v24, v35);
    (*(v23 + 8))(v24, v5);
    (*(v8 + 8))(v13, v7);
    return sub_1000079B4(v22, &qword_100772140, &qword_10062D9F0);
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10051CF40(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item.iOSListCasesInItem();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for TTRRemindersListViewModel.Item();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource);
  if (!v15)
  {
    __break(1u);
    goto LABEL_28;
  }

  v16 = v15;
  TTRICollectionViewTreeBackedDiffableDataSource.item(for:)();

  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    (*(v12 + 32))(v14, v10, v11);
    TTRRemindersListViewModel.Item.iOSListCasesOnly.getter();
    v17 = (*(v5 + 88))(v7, v4);
    if (v17 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.sectionsContainer(_:) || v17 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.section(_:))
    {
      goto LABEL_6;
    }

    if (v17 != enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.reminder(_:) && v17 != enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.uncommittedReminder(_:) && v17 != enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.placeholderReminder(_:))
    {
      if (v17 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.completed(_:) || v17 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.hashtags(_:) || v17 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.templateStatus(_:) || v17 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.tip(_:))
      {
LABEL_6:
        (*(v12 + 8))(v14, v11);
        (*(v5 + 8))(v7, v4);
        return 0;
      }

      if (v17 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.publicTemplatePreviewStatus(_:) || v17 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.recentlyDeletedDisclaimer(_:) || v17 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.unknown(_:))
      {
        (*(v12 + 8))(v14, v11);
        return 0;
      }

LABEL_28:
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    (*(v5 + 8))(v7, v4);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v20 = [a1 cellForItemAtIndexPath:isa];

    if (v20)
    {
      type metadata accessor for TTRIRemindersListReminderCell_collectionView();
      if (swift_dynamicCastClass())
      {
        v21 = v20;
        v22 = UIView.firstResponderDescendant.getter();

        (*(v12 + 8))(v14, v11);
        if (v22)
        {

          return 0;
        }

        return 1;
      }
    }

    (*(v12 + 8))(v14, v11);
    return 1;
  }

  sub_1000079B4(v10, &qword_100772140, &qword_10062D9F0);
  return 0;
}

void sub_10051D568(void *a1, uint64_t a2, double a3, double a4)
{
  v9 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v49 - v10;
  v12 = type metadata accessor for TTRRemindersListViewModel.Item();
  v53 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for IndexPath();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v49 - v20;
  v22 = [a1 indexPathForItemAtPoint:{a3, a4}];
  if (!v22)
  {
    return;
  }

  v51 = a2;
  v23 = v22;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v16 + 32))(v21, v18, v15);
  v24 = OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource;
  v52 = v4;
  v25 = *(v4 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource);
  if (!v25)
  {
    __break(1u);
    goto LABEL_17;
  }

  v26 = v25;
  TTRICollectionViewTreeBackedDiffableDataSource.item(for:)();

  v27 = v53;
  if ((*(v53 + 48))(v11, 1, v12) == 1)
  {
    (*(v16 + 8))(v21, v15);
    sub_1000079B4(v11, &qword_100772140, &qword_10062D9F0);
    return;
  }

  (*(v27 + 32))(v14, v11, v12);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v29 = [a1 cellForItemAtIndexPath:isa];

  if (!v29)
  {
    (*(v27 + 8))(v14, v12);
LABEL_13:
    (*(v16 + 8))(v21, v15);
    return;
  }

  v50 = v29;
  v30 = *(v52 + v24);
  if (!v30)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v54 = v51;
  v31 = v30;
  sub_100058000(&unk_10078A370, &unk_10063AB80);
  sub_10000E188(&unk_100771B00, &unk_10078A370, &unk_10063AB80, &protocol conformance descriptor for [A]);
  v51 = TTRICollectionViewTreeBackedDiffableDataSource.items<A>(for:)();

  v32 = v50;
  [a1 convertPoint:v50 toCoordinateSpace:{a3, a4}];
  v34 = v33;
  v36 = v35;
  v37 = *(v52 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
  v38 = *(v52 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
  sub_10000C36C((v52 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v37);
  v39 = [a1 isEditing];
  v40 = *(v38 + 8);
  v41 = v51;
  v42 = (*(v40 + 840))(v14, v32, v51, v39, v37, v34, v36);
  if (!v42)
  {

    (*(v53 + 8))(v14, v12);
    goto LABEL_13;
  }

  if (v44)
  {
    v45 = v42;
    v46 = v43;
    v47 = v44;
    v48 = v42;
    sub_100528930(v46, 1);

    sub_1003DE74C(v46, 1);
    sub_10052893C(v45, v46, v47);

    (*(v53 + 8))(v14, v12);
    (*(v16 + 8))(v21, v15);
    *(v52 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_targetItemsForVisibleContextMenu) = _swiftEmptyArrayStorage;
  }

  else
  {
    sub_1003DE74C(v43, 0);

    (*(v53 + 8))(v14, v12);
    (*(v16 + 8))(v21, v15);
    *(v52 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_targetItemsForVisibleContextMenu) = v41;
  }
}

uint64_t sub_10051DD54(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    type metadata accessor for TTRIRemindersListReminderCell_collectionView();
    v9 = swift_dynamicCastClass();
    v10 = *&v8[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_pencilAutoCommitTracker];
    if (v9)
    {
      v11 = v6;

      sub_1003258FC(a3, a4);

      TTRIRemindersListReminderCell_collectionView.inputViewForPencilInput.getter();
      sub_100058000(&unk_10078A390, &qword_10063D278);
      swift_allocObject();
      v12 = Promise.init(value:)();
    }

    else
    {
      *(v10 + 16) = 0;
      *(v10 + 24) = 0;
      swift_unknownObjectRelease();
      v16 = type metadata accessor for PromiseError();
      sub_100522EA4(&qword_1007817D0, &type metadata accessor for PromiseError, &protocol conformance descriptor for PromiseError);
      swift_allocError();
      (*(*(v16 - 8) + 104))(v17, enum case for PromiseError.cancelled(_:), v16);
      sub_100058000(&unk_10078A390, &qword_10063D278);
      swift_allocObject();
      v12 = Promise.init(error:)();
    }

    return v12;
  }

  else
  {
    v13 = type metadata accessor for PromiseError();
    sub_100522EA4(&qword_1007817D0, &type metadata accessor for PromiseError, &protocol conformance descriptor for PromiseError);
    swift_allocError();
    (*(*(v13 - 8) + 104))(v14, enum case for PromiseError.cancelled(_:), v13);
    sub_100058000(&unk_10078A390, &qword_10063D278);
    swift_allocObject();
    return Promise.init(error:)();
  }
}

char *sub_10051DFFC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *&result[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_pencilAutoCommitTracker];
    v4 = result;

    *(v3 + 16) = 0;
    *(v3 + 24) = 0;

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10051E078()
{
  v1 = sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24));
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 88);
  v4 = sub_10000C36C((*v1 + 48), v2);
  v7[3] = v2;
  v7[4] = v3;
  v5 = sub_1000317B8(v7);
  (*(*(v2 - 8) + 16))(v5, v4, v2);
  (*(v3 + 384))(1, 0, 0, v2, v3);
  return sub_100004758(v7);
}

void sub_10051E1E8(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v37 = a1;
  v38 = a2;
  v3 = type metadata accessor for TTRRemindersListItemStateTracker.CellState();
  v34 = *(v3 - 8);
  v35 = v3;
  __chkstk_darwin(v3);
  v33 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&qword_100772738, &unk_10063D2B0);
  __chkstk_darwin(v5 - 8);
  v36 = &v33 - v6;
  v7 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v11 - 8);
  v13 = &v33 - v12;
  v14 = type metadata accessor for TTRRemindersListViewModel.Item();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource);
  if (v18)
  {
    v19 = v18;
    TTRIRemindersListItemIntermediateViewModel.itemID.getter();
    TTRICollectionViewTreeBackedDiffableDataSource.item(withID:)();

    (*(v8 + 8))(v10, v7);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      sub_1000079B4(v13, &qword_100772140, &qword_10062D9F0);
      v20 = type metadata accessor for TTRRemindersListViewModel.Reminder();
      (*(*(v20 - 8) + 56))(v38, 1, 1, v20);
    }

    else
    {
      (*(v15 + 32))(v17, v13, v14);
      v21 = (v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter);
      v22 = *(v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
      v23 = *(v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
      sub_10000C36C((v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v22);
      if ((*(*(v23 + 8) + 1040))(v17, v22))
      {
        v24 = v21[3];
        v25 = v21[4];
        sub_10000C36C(v21, v24);
        (*(*(v25 + 8) + 904))(v17, v24);
      }

      v26 = v21[3];
      v27 = v21[4];
      sub_10000C36C(v21, v26);
      v28 = v36;
      (*(*(v27 + 8) + 512))(v17, v26);
      v29 = type metadata accessor for TTRRemindersListViewModel.Reminder();
      if ((*(*(v29 - 8) + 48))(v28, 1, v29) != 1)
      {
        v31 = v33;
        v30 = v34;
        v32 = v35;
        (*(v34 + 104))(v33, enum case for TTRRemindersListItemStateTracker.CellState.viewModelLoaded(_:), v35);
        TTRRemindersListItemStateTracker.fullfil(_:of:)();
        (*(v30 + 8))(v31, v32);
      }

      (*(v15 + 8))(v17, v14);
      sub_100016588(v28, v38, &qword_100772738, &unk_10063D2B0);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10051E6BC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_10000B0D8(v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter, v12);
  v5 = v13;
  v6 = v14;
  sub_10000C36C(v12, v13);
  v7 = [v2 parentViewController];
  if (!v7)
  {
    goto LABEL_5;
  }

  swift_getObjectType();
  v8 = swift_conformsToProtocol2();
  if (!v8)
  {

    v7 = 0;
LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v9 = *(v8 + 32);
LABEL_6:
  (*(*(v6 + 8) + 320))(a1, v7, v9, v2, v5);
  swift_unknownObjectRelease();
  v10 = sub_100058000(&qword_10078A3B0, &unk_100638720);
  (*(*(v10 - 8) + 56))(a2, 0, 1, v10);
  return sub_100004758(v12);
}

uint64_t sub_10051E80C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_10000B0D8(v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter, v12);
  v5 = v13;
  v6 = v14;
  sub_10000C36C(v12, v13);
  v7 = [v2 parentViewController];
  if (!v7)
  {
    goto LABEL_5;
  }

  swift_getObjectType();
  v8 = swift_conformsToProtocol2();
  if (!v8)
  {

    v7 = 0;
LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v9 = *(v8 + 24);
LABEL_6:
  (*(*(v6 + 8) + 328))(a1, v7, v9, v2, v5);
  swift_unknownObjectRelease();
  v10 = sub_100058000(&qword_100778EA0, &unk_10063D390);
  (*(*(v10 - 8) + 56))(a2, 0, 1, v10);
  return sub_100004758(v12);
}

uint64_t sub_10051E95C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_10000B0D8(v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter, v12);
  v5 = v13;
  v6 = v14;
  sub_10000C36C(v12, v13);
  v7 = [v2 parentViewController];
  if (!v7)
  {
    goto LABEL_5;
  }

  swift_getObjectType();
  v8 = swift_conformsToProtocol2();
  if (!v8)
  {

    v7 = 0;
LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v9 = *(v8 + 16);
LABEL_6:
  (*(*(v6 + 8) + 336))(a1, v7, v9, v2, v5);
  swift_unknownObjectRelease();
  v10 = sub_100058000(&unk_10078A3A0, &qword_10063D380);
  (*(*(v10 - 8) + 56))(a2, 0, 1, v10);
  return sub_100004758(v12);
}

uint64_t sub_10051EAAC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v22[-1] - v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.Item();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRIRemindersListReminderCell_collectionView.viewModel.getter();
  if (!v23)
  {
    sub_1000079B4(v22, &qword_100780978, &unk_10063C720);
    (*(v9 + 56))(v7, 1, 1, v8);
    return sub_1000079B4(v7, &qword_100772140, &qword_10062D9F0);
  }

  sub_10000C36C(v22, v23);
  dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
  (*(v9 + 56))(v7, 0, 1, v8);
  sub_100004758(v22);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000079B4(v7, &qword_100772140, &qword_10062D9F0);
  }

  (*(v9 + 32))(v11, v7, v8);
  v12 = *&v2[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24];
  v13 = *&v2[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32];
  sub_10000C36C(&v2[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter], v12);
  (*(*(v13 + 8) + 48))(a2 & 1, v11, v12);
  v14 = [v2 parentViewController];
  if (v14)
  {
    v15 = v14;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v16 = *&v15[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_feedbackGenerator];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  [v16 impactOccurred];

  v18 = [v3 parentViewController];
  if (v18)
  {
    v19 = v18;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v20 = *&v19[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_feedbackGenerator];

      [v20 prepare];
      v19 = v20;
    }
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_10051EE04(uint64_t a1, char a2)
{
  v4 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v15[-1] - v5;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRIRemindersListReminderCell_collectionView.viewModel.getter();
  if (v16)
  {
    sub_10000C36C(v15, v16);
    dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
    (*(v8 + 56))(v6, 0, 1, v7);
    sub_100004758(v15);
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      (*(v8 + 32))(v10, v6, v7);
      v11 = *(v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
      v12 = *(v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
      sub_10000C36C((v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v11);
      (*(*(v12 + 8) + 96))(a2 & 1, v10, v11);
      return (*(v8 + 8))(v10, v7);
    }
  }

  else
  {
    sub_1000079B4(v15, &qword_100780978, &unk_10063C720);
    (*(v8 + 56))(v6, 1, 1, v7);
  }

  return sub_1000079B4(v6, &qword_100772140, &qword_10062D9F0);
}

uint64_t sub_10051F06C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v15[-1] - v5;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRIRemindersListReminderCell_collectionView.viewModel.getter();
  if (v16)
  {
    sub_10000C36C(v15, v16);
    dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
    (*(v8 + 56))(v6, 0, 1, v7);
    sub_100004758(v15);
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      (*(v8 + 32))(v10, v6, v7);
      v11 = *(v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
      v12 = *(v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
      sub_10000C36C((v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v11);
      (*(*(v12 + 8) + 104))(a2, v10, v11);
      return (*(v8 + 8))(v10, v7);
    }
  }

  else
  {
    sub_1000079B4(v15, &qword_100780978, &unk_10063C720);
    (*(v8 + 56))(v6, 1, 1, v7);
  }

  return sub_1000079B4(v6, &qword_100772140, &qword_10062D9F0);
}

uint64_t sub_10051F2D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v15[-1] - v5;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRIRemindersListReminderCell_collectionView.viewModel.getter();
  if (v16)
  {
    sub_10000C36C(v15, v16);
    dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
    (*(v8 + 56))(v6, 0, 1, v7);
    sub_100004758(v15);
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      (*(v8 + 32))(v10, v6, v7);
      v11 = *(v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
      v12 = *(v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
      sub_10000C36C((v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v11);
      (*(*(v12 + 8) + 160))(v10, a2, TTRReminderIDsWithMatchingHashtagsProvider.init(reminders:), 0, v11);
      return (*(v8 + 8))(v10, v7);
    }
  }

  else
  {
    sub_1000079B4(v15, &qword_100780978, &unk_10063C720);
    (*(v8 + 56))(v6, 1, 1, v7);
  }

  return sub_1000079B4(v6, &qword_100772140, &qword_10062D9F0);
}

uint64_t sub_10051F554(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v15[-1] - v5;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRIRemindersListReminderCell_collectionView.viewModel.getter();
  if (v16)
  {
    sub_10000C36C(v15, v16);
    dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
    (*(v8 + 56))(v6, 0, 1, v7);
    sub_100004758(v15);
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      (*(v8 + 32))(v10, v6, v7);
      v11 = *(v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
      v12 = *(v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
      sub_10000C36C((v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v11);
      (*(*(v12 + 8) + 168))(v10, a2, TTRReminderIDsWithMatchingHashtagsProvider.init(reminders:), 0, v11);
      return (*(v8 + 8))(v10, v7);
    }
  }

  else
  {
    sub_1000079B4(v15, &qword_100780978, &unk_10063C720);
    (*(v8 + 56))(v6, 1, 1, v7);
  }

  return sub_1000079B4(v6, &qword_100772140, &qword_10062D9F0);
}

uint64_t sub_10051F7D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v16[-1] - v5;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRIRemindersListReminderCell_collectionView.viewModel.getter();
  if (v17)
  {
    sub_10000C36C(v16, v17);
    dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
    (*(v8 + 56))(v6, 0, 1, v7);
    sub_100004758(v16);
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      (*(v8 + 32))(v10, v6, v7);
      v11 = *(v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
      v12 = *(v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
      sub_10000C36C((v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v11);
      v13 = (*(*(v12 + 8) + 176))(v10, a2, v11);
      (*(v8 + 8))(v10, v7);
      return v13;
    }
  }

  else
  {
    sub_1000079B4(v16, &qword_100780978, &unk_10063C720);
    (*(v8 + 56))(v6, 1, 1, v7);
  }

  sub_1000079B4(v6, &qword_100772140, &qword_10062D9F0);
  return 0;
}

uint64_t sub_10051FA48()
{
  v1 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v13[-1] - v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRIRemindersListReminderCell_collectionView.viewModel.getter();
  if (v14)
  {
    sub_10000C36C(v13, v14);
    dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
    (*(v5 + 56))(v3, 0, 1, v4);
    sub_100004758(v13);
    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      (*(v5 + 32))(v7, v3, v4);
      v8 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
      v9 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
      sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v8);
      v10 = (*(*(v9 + 8) + 184))(v7, v8);
      (*(v5 + 8))(v7, v4);
      return v10;
    }
  }

  else
  {
    sub_1000079B4(v13, &qword_100780978, &unk_10063C720);
    (*(v5 + 56))(v3, 1, 1, v4);
  }

  sub_1000079B4(v3, &qword_100772140, &qword_10062D9F0);
  return 0;
}

uint64_t sub_10051FCAC()
{
  v1 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v13[-1] - v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRIRemindersListReminderCell_collectionView.viewModel.getter();
  if (v14)
  {
    sub_10000C36C(v13, v14);
    dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
    (*(v5 + 56))(v3, 0, 1, v4);
    sub_100004758(v13);
    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      (*(v5 + 32))(v7, v3, v4);
      v8 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
      v9 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
      sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v8);
      v10 = (*(*(v9 + 8) + 192))(v7, v8);
      (*(v5 + 8))(v7, v4);
      return v10;
    }
  }

  else
  {
    sub_1000079B4(v13, &qword_100780978, &unk_10063C720);
    (*(v5 + 56))(v3, 1, 1, v4);
  }

  sub_1000079B4(v3, &qword_100772140, &qword_10062D9F0);
  return 0;
}

uint64_t sub_10051FF10(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v3 = type metadata accessor for TTRReminderCellStyle.SuggestedReminderType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for TTRRemindersListViewModel.Item();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRIRemindersListReminderCell_collectionView.viewModel.getter();
  if (!v22)
  {
    sub_1000079B4(v21, &qword_100780978, &unk_10063C720);
    (*(v11 + 56))(v9, 1, 1, v10);
    return sub_1000079B4(v9, &qword_100772140, &qword_10062D9F0);
  }

  v19 = v2;
  sub_10000C36C(v21, v22);
  dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
  (*(v11 + 56))(v9, 0, 1, v10);
  sub_100004758(v21);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000079B4(v9, &qword_100772140, &qword_10062D9F0);
  }

  (*(v11 + 32))(v13, v9, v10);
  (*(v4 + 16))(v6, v20, v3);
  v14 = (*(v4 + 88))(v6, v3);
  if (v14 == enum case for TTRReminderCellStyle.SuggestedReminderType.siriFoundInApps(_:))
  {
    v15 = *(v19 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
    v16 = *(v19 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
    sub_10000C36C((v19 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v15);
    (*(*(v16 + 8) + 56))(v13, v15);
  }

  else if (v14 != enum case for TTRReminderCellStyle.SuggestedReminderType.unspecified(_:))
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_100520268(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v15[-1] - v5;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRIRemindersListReminderCell_collectionView.viewModel.getter();
  if (v16)
  {
    sub_10000C36C(v15, v16);
    dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
    (*(v8 + 56))(v6, 0, 1, v7);
    sub_100004758(v15);
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      (*(v8 + 32))(v10, v6, v7);
      v11 = *(v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
      v12 = *(v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
      sub_10000C36C((v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v11);
      (*(*(v12 + 8) + 120))(v10, a2, v11);
      return (*(v8 + 8))(v10, v7);
    }
  }

  else
  {
    sub_1000079B4(v15, &qword_100780978, &unk_10063C720);
    (*(v8 + 56))(v6, 1, 1, v7);
  }

  return sub_1000079B4(v6, &qword_100772140, &qword_10062D9F0);
}

uint64_t sub_1005204D0()
{
  v1 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v12[-1] - v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRIRemindersListReminderCell_collectionView.viewModel.getter();
  if (v13)
  {
    sub_10000C36C(v12, v13);
    dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
    (*(v5 + 56))(v3, 0, 1, v4);
    sub_100004758(v12);
    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      (*(v5 + 32))(v7, v3, v4);
      v8 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
      v9 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
      sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v8);
      (*(*(v9 + 8) + 144))(v7, v8);
      return (*(v5 + 8))(v7, v4);
    }
  }

  else
  {
    sub_1000079B4(v12, &qword_100780978, &unk_10063C720);
    (*(v5 + 56))(v3, 1, 1, v4);
  }

  return sub_1000079B4(v3, &qword_100772140, &qword_10062D9F0);
}

uint64_t sub_100520728(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v21[-1] - v5;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRIRemindersListReminderCell_collectionView.viewModel.getter();
  if (!v22)
  {
    sub_1000079B4(v21, &qword_100780978, &unk_10063C720);
    (*(v8 + 56))(v6, 1, 1, v7);
    return sub_1000079B4(v6, &qword_100772140, &qword_10062D9F0);
  }

  sub_10000C36C(v21, v22);
  dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
  (*(v8 + 56))(v6, 0, 1, v7);
  sub_100004758(v21);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_1000079B4(v6, &qword_100772140, &qword_10062D9F0);
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_10000B0D8(v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter, v21);
  v11 = v22;
  v12 = v23;
  sub_10000C36C(v21, v22);
  v13 = TTRIRemindersListReminderCell_collectionView.attributedTitle.getter();
  if (v13)
  {
    v14 = v13;
    v15 = [v13 string];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  (*(*(v12 + 8) + 152))(v10, v16, v18, a2, v11);

  (*(v8 + 8))(v10, v7);
  return sub_100004758(v21);
}

uint64_t sub_100520A08()
{
  v1 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v12[-1] - v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRIRemindersListReminderCell_collectionView.viewModel.getter();
  if (v13)
  {
    sub_10000C36C(v12, v13);
    dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
    (*(v5 + 56))(v3, 0, 1, v4);
    sub_100004758(v12);
    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      (*(v5 + 32))(v7, v3, v4);
      v8 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
      v9 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
      sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v8);
      (*(*(v9 + 8) + 200))(v7, v8);
      return (*(v5 + 8))(v7, v4);
    }
  }

  else
  {
    sub_1000079B4(v12, &qword_100780978, &unk_10063C720);
    (*(v5 + 56))(v3, 1, 1, v4);
  }

  return sub_1000079B4(v3, &qword_100772140, &qword_10062D9F0);
}

void sub_100520C60(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  TTRIRemindersListReminderCell_collectionView.viewModel.getter();
  if (v13)
  {
    sub_10000C36C(v12, v13);
    v9 = dispatch thunk of TTRIRemindersListReminderCellViewModel.imageAttachments.getter();
    sub_100004758(v12);
    if (v9)
    {
      v10 = *(v5 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
      v11 = *(v5 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
      sub_10000C36C((v5 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v10);
      (*(*(v11 + 8) + 208))(v9, a3, a4, a5, v10);
    }
  }

  else
  {
    sub_1000079B4(v12, &qword_100780978, &unk_10063C720);
  }
}

uint64_t sub_100520D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v17[-1] - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.Item();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRIRemindersListReminderCell_collectionView.viewModel.getter();
  if (v18)
  {
    sub_10000C36C(v17, v18);
    dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
    (*(v10 + 56))(v8, 0, 1, v9);
    sub_100004758(v17);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      (*(v10 + 32))(v12, v8, v9);
      v13 = *(v3 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
      v14 = *(v3 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
      sub_10000C36C((v3 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v13);
      (*(*(v14 + 8) + 1048))(v12, a2, a3, v13);
      return (*(v10 + 8))(v12, v9);
    }
  }

  else
  {
    sub_1000079B4(v17, &qword_100780978, &unk_10063C720);
    (*(v10 + 56))(v8, 1, 1, v9);
  }

  return sub_1000079B4(v8, &qword_100772140, &qword_10062D9F0);
}

double sub_100520FCC()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.Item();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRIRemindersListReminderCell_collectionView.viewModel.getter();
  if (v17)
  {
    sub_10000C36C(v16, v17);
    dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
    sub_100522EA4(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
    v6 = TTRTreeStorageItem.treeItemDescription.getter();
    v8 = v7;
    (*(v3 + 8))(v5, v2);
    sub_100004758(v16);
  }

  else
  {
    sub_1000079B4(v16, &qword_100780978, &unk_10063C720);
    v8 = 0xEC0000006C6C6563;
    v6 = 0x206E776F6E6B6E75;
  }

  sub_10032573C(v6, v8);

  if (qword_100767428 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100003E30(v9, qword_10078A140);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "TTRIRemindersListViewController: Cancel any hover detection once scribbling begins, before the cells is actually edited", v12, 2u);
  }

  v13 = *(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_pencilHoverCleanupAction);
  if (*(v13 + 56))
  {

    AnyCancellable.cancel()();
  }

  *(v13 + 56) = 0;

  return result;
}

double sub_100521270()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.Item();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRIRemindersListReminderCell_collectionView.viewModel.getter();
  if (v10)
  {
    sub_10000C36C(v9, v10);
    dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
    sub_100522EA4(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
    v4 = TTRTreeStorageItem.treeItemDescription.getter();
    v6 = v5;
    (*(v1 + 8))(v3, v0);
    sub_100004758(v9);
  }

  else
  {
    sub_1000079B4(v9, &qword_100780978, &unk_10063C720);
    v6 = 0xEC0000006C6C6563;
    v4 = 0x206E776F6E6B6E75;
  }

  sub_100326040(v4, v6);

  return result;
}

uint64_t sub_100521424()
{
  v1 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v12[-1] - v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRIRemindersListReminderCell_collectionView.viewModel.getter();
  if (v13)
  {
    sub_10000C36C(v12, v13);
    dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
    (*(v5 + 56))(v3, 0, 1, v4);
    sub_100004758(v12);
    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      (*(v5 + 32))(v7, v3, v4);
      v8 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
      v9 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
      sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v8);
      (*(*(v9 + 8) + 88))(v7, TTRReminderIDsWithMatchingHashtagsProvider.init(reminders:), 0, v8);
      return (*(v5 + 8))(v7, v4);
    }
  }

  else
  {
    sub_1000079B4(v12, &qword_100780978, &unk_10063C720);
    (*(v5 + 56))(v3, 1, 1, v4);
  }

  return sub_1000079B4(v3, &qword_100772140, &qword_10062D9F0);
}

uint64_t sub_100521694()
{
  v1 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v13[-1] - v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRIRemindersListReminderCell_collectionView.viewModel.getter();
  if (v14)
  {
    sub_10000C36C(v13, v14);
    dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
    (*(v5 + 56))(v3, 0, 1, v4);
    sub_100004758(v13);
    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      (*(v5 + 32))(v7, v3, v4);
      v8 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
      v9 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
      sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v8);
      v10 = (*(*(v9 + 8) + 1112))(v7, v8);
      (*(v5 + 8))(v7, v4);
      return v10;
    }
  }

  else
  {
    sub_1000079B4(v13, &qword_100780978, &unk_10063C720);
    (*(v5 + 56))(v3, 1, 1, v4);
  }

  sub_1000079B4(v3, &qword_100772140, &qword_10062D9F0);
  return 0;
}

uint64_t sub_100521904(uint64_t a1)
{
  v3 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v3 - 8);
  v5 = v12 - v4;
  sub_10000B0D8(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter, v14);
  v6 = v15;
  v7 = v16;
  sub_10000C36C(v14, v15);
  if (!a1)
  {
    goto LABEL_5;
  }

  TTRIRemindersListReminderCell_collectionView.viewModel.getter();
  if (!v13)
  {
    sub_1000079B4(v12, &qword_100780978, &unk_10063C720);
LABEL_5:
    v9 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
    goto LABEL_6;
  }

  sub_10000C36C(v12, v13);
  dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
  v8 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
  sub_100004758(v12);
LABEL_6:
  v10 = (*(*(v7 + 8) + 1120))(v5, v6);
  sub_1000079B4(v5, &qword_100772140, &qword_10062D9F0);
  sub_100004758(v14);
  return v10 & 1;
}

uint64_t sub_100521AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
  v7 = *(v3 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
  sub_10000C36C((v3 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v6);
  return (*(*(v7 + 8) + 312))(a2, a3, v6) & 1;
}

uint64_t sub_100521BE4()
{
  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1006322B0;
  *(v0 + 32) = sub_100517274(&OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView____lazy_storage___completedTasksRotor, &static TTRAccesibility.RemindersList.Rotor.CompletedTasks.getter, sub_1005258EC);
  *(v0 + 40) = sub_100517274(&OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView____lazy_storage___incompleteTasksRotor, &static TTRAccesibility.RemindersList.Rotor.IncompleteTasks.getter, sub_1005258E4);
  *(v0 + 48) = sub_100517274(&OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView____lazy_storage___overdueTasksRotor, &static TTRAccesibility.RemindersList.Rotor.OverdueTasks.getter, sub_1005258DC);
  return v0;
}

uint64_t sub_100521CE0()
{
  v1 = (v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter);
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
  v3 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
  sub_10000C36C(v1, v2);
  return (*(*(v3 + 8) + 376))(v2);
}

id sub_100521D38()
{
  v1 = OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView;
  result = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView);
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = [result isEditing];
  if (!result)
  {
    return result;
  }

  v3 = result;
  result = *(v0 + v1);
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  [result setEditing:0];
  return v3;
}

id sub_100521DAC()
{
  result = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView);
  if (result)
  {
    return [result hasActiveDrag];
  }

  __break(1u);
  return result;
}

uint64_t sub_100521DE0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100058000(&qword_10076B070, &unk_100637140);
  __chkstk_darwin(v4 - 8);
  v6 = v20 - v5;
  v7 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_viewModel);
  swift_getKeyPath();
  v20[1] = v11;
  sub_100522EA4(&qword_100777EF8, type metadata accessor for ViewModel, &unk_100637AC8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__sectionID;
  swift_beginAccess();
  sub_10000794C(v11 + v12, v6, &qword_10076B070, &unk_100637140);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_1000079B4(v6, &qword_10076B070, &unk_100637140);
  }

  (*(v8 + 32))(v10, v6, v7);
  v14 = sub_10000C36C((v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), *(v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24));
  v15 = *(*v14 + 72);
  v16 = *(*v14 + 80);
  sub_10000C36C((*v14 + 48), v15);
  (*(v16 + 16))(v15, v16);
  v18 = v17;
  ObjectType = swift_getObjectType();
  (*(v18 + 632))(v10, ObjectType, v18);
  swift_unknownObjectRelease();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100522098@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_10000B0D8(v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter, v12);
  v5 = v13;
  v6 = v14;
  sub_10000C36C(v12, v13);
  v7 = [v2 parentViewController];
  if (!v7)
  {
    goto LABEL_5;
  }

  swift_getObjectType();
  v8 = swift_conformsToProtocol2();
  if (!v8)
  {

    v7 = 0;
LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v9 = *(v8 + 8);
LABEL_6:
  (*(*(v6 + 8) + 344))(a1, v7, v9, v2, v5);
  swift_unknownObjectRelease();
  v10 = sub_100058000(&qword_100781830, &unk_10062EF50);
  (*(*(v10 - 8) + 56))(a2, 0, 1, v10);
  return sub_100004758(v12);
}

uint64_t sub_100522200(uint64_t a1, int a2, void (*a3)(__n128))
{
  v6 = sub_100058000(&unk_10076BB50, &unk_10062DEA0);
  __chkstk_darwin(v6 - 8);
  v8 = v18 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(v11);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000079B4(v8, &unk_10076BB50, &unk_10062DEA0);
  }

  (*(v10 + 32))(v13, v8, v9);
  sub_10000C36C((v3 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), *(v3 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24));
  sub_100058000(&qword_100772760, &unk_100634AE0);
  v15 = *(v10 + 80);
  v18[1] = a2;
  v16 = (v15 + 32) & ~v15;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10062D400;
  (*(v10 + 16))(v17 + v16, v13, v9);
  v19 = v17;

  sub_100058000(&qword_10077C860, &qword_100644F30);
  sub_100058000(&unk_1007821D0, &unk_100631C10);
  sub_10000E188(&unk_10078A2E0, &qword_10077C860, &qword_100644F30, &protocol conformance descriptor for TTRICollectionViewCollapsedStatesPresenterCapability<A>);
  sub_10000E188(&unk_100784540, &unk_1007821D0, &unk_100631C10, &protocol conformance descriptor for [A]);
  TTRICollectionViewItemCollapsedStates.setCollapsed<A>(_:for:)();

  return (*(v10 + 8))(v13, v9);
}

void sub_100522544(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource);
  if (v2)
  {
    v3 = v2;
    TTRICollectionViewTreeBackedDiffableDataSource.item(withID:)();
  }

  else
  {
    __break(1u);
  }
}

double sub_1005225C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000C36C((v3 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), *(v3 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24));

  sub_100058000(&qword_10077C860, &qword_100644F30);
  sub_10000E188(&unk_10078A2E0, &qword_10077C860, &qword_100644F30, &protocol conformance descriptor for TTRICollectionViewCollapsedStatesPresenterCapability<A>);
  sub_100058000(&unk_10076BBD0, &qword_1006340A0);
  sub_10000E188(&unk_100772700, &unk_10076BBD0, &qword_1006340A0, &protocol conformance descriptor for Set<A>);
  dispatch thunk of TTRICollectionViewItemCollapsedStates.expand<A>(_:)();

  return result;
}

uint64_t sub_1005226DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
  v6 = *(v3 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
  sub_10000C36C((v3 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v5);
  return (*(*(v6 + 8) + 560))(a3, v5) & 1;
}

void sub_100522744()
{
  v0 = sub_1005124F8();
  if (v0)
  {
    v1 = v0;
    [v0 endEditing:1];
  }
}

void sub_10052279C(uint64_t a1@<X8>)
{
  sub_100058000(&unk_10078A3D8, &qword_100644FC8);
  TTRICollectionViewDragItemSources.itemsFromThisCollectionView.getter();
  sub_100058000(&qword_10078A3E8, &qword_100644FD0);
  type metadata accessor for TTRRemindersListViewModel.ItemID();
  sub_10000E188(&qword_10078A3F0, &qword_10078A3E8, &qword_100644FD0, &protocol conformance descriptor for [A]);
  sub_100522EA4(&qword_10076FE50, &type metadata accessor for TTRRemindersListViewModel.ItemID, &protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
  v3 = Sequence.mapToSet<A>(_:)();

  v4 = *(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource);
  if (v4)
  {
    v5 = v4;
    sub_100471774(v3, a1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100522918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return TTRICollectionViewDragAndDropCoordinatorDelegate.dragAndDropCoordinator(_:dropSessionDidEnd:)(a1, a2, a3, ObjectType, a5);
}

uint64_t sub_10052298C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRIRemindersListReminderCellAccessibilityElement();
  if (swift_dynamicCastClass())
  {
    v8 = a1;
    v9 = TTRIRemindersListReminderCellAccessibilityElement.cell.getter();
    if (v9)
    {
      v10 = v9;
      swift_getObjectType();
      dispatch thunk of TTRIRemindersListReminderCellAccessibilityElementContaining.viewModel.getter();
      if (v18)
      {
        sub_10000C36C(v17, v18);
        dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
        TTRRemindersListViewModel.Item.treeItemIdentifier.getter();

        (*(v5 + 8))(v7, v4);
        v11 = type metadata accessor for TTRRemindersListViewModel.ItemID();
        (*(*(v11 - 8) + 56))(a2, 0, 1, v11);
        return sub_100004758(v17);
      }

      else
      {

        sub_1000079B4(v17, &qword_100780978, &unk_10063C720);
        v15 = type metadata accessor for TTRRemindersListViewModel.ItemID();
        return (*(*(v15 - 8) + 56))(a2, 1, 1, v15);
      }
    }
  }

  v13 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v14 = *(*(v13 - 8) + 56);

  return v14(a2, 1, 1, v13);
}

void sub_100522C10(uint64_t a1)
{
  v2 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource);
  if (!v9)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v10 = v9;
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000079B4(v4, &unk_100771B10, qword_10062E540);
    return;
  }

  (*(v6 + 32))(v8, v4, v5);
  v11 = *(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView);
  if (!v11)
  {
    goto LABEL_11;
  }

  v12 = v11;
  v13 = UICollectionView.visibleCellForItem(at:)();

  (*(v6 + 8))(v8, v5);
  if (v13)
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      dispatch thunk of TTRIRemindersListReminderCellAccessibilityElementContaining.customAccessibilityElement.getter();
    }

    else
    {
    }
  }
}

uint64_t sub_100522EA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100522F3C(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRemindersListHighlightTarget() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  sub_10051A6E4(a1, *(v1 + 16), v1 + v4, *v5, *(v5 + 8));
}

void sub_100522FF0()
{
  v1 = *(type metadata accessor for TTRRemindersListHighlightTarget.TargetItem() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v4 = *(v3 + *(v1 + 64));

  sub_10051AEA0(v2, v3, v4);
}

void sub_1005230D4(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presentationTreesCapability))
  {

    TTRICollectionViewPresentationTreeManagementViewCapability.reload()();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100523124()
{
  v1 = v0;
  if (qword_100767428 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_10078A140);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "TTRIRemindersListViewController: Pencil hover interaction ended -- removing uncommitted reminder if it has not input", v5, 2u);
  }

  v6 = (v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter);
  v7 = *(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
  v8 = v6[4];
  sub_10000C36C(v6, v7);
  return (*(*(v8 + 8) + 408))(v7);
}

uint64_t sub_100523238()
{
  v1 = type metadata accessor for TTRTemplateSharingAction();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter);
  v7 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
  v6 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
  sub_10000C36C(v5, v7);
  (*(*(v6 + 8) + 864))(v11, v7);
  if (!v12)
  {
    return sub_1000079B4(v11, &unk_100781810, &qword_10063D2A8);
  }

  sub_10000C36C(v11, v12);
  (*(v2 + 104))(v4, enum case for TTRTemplateSharingAction.createLink(_:), v1);
  v8 = sub_1001E26D0(v4);
  (*(v2 + 8))(v4, v1, v8);
  return sub_100004758(v11);
}

void sub_1005233A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t (*a11)(uint64_t, uint64_t), uint64_t a12, uint64_t a13, uint64_t (*a14)(void))
{
  v61 = a8;
  v62 = a7;
  v18 = a14(0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v53 - v23;
  if (*(a1 + 24) != 1)
  {
    return;
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    swift_beginAccess();
    if (*(a3 + 16) >= a4)
    {
      if (*(a1 + 25) == 1)
      {
        if (qword_100767380 == -1)
        {
LABEL_12:
          v29 = type metadata accessor for Logger();
          sub_100003E30(v29, qword_1007865F0);
          v30 = Logger.logObject.getter();
          v31 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v30, v31))
          {
            goto LABEL_32;
          }

          v32 = swift_slowAlloc();
          *v32 = 0;
          v33 = "scrollWithCompensationTo: finishing scroll session because cell is ready.";
LABEL_31:
          _os_log_impl(&_mh_execute_header, v30, v31, v33, v32, 2u);

LABEL_32:

          if (*(a1 + 24) == 1)
          {
            *(a1 + 24) = 0;
            if (*(a1 + 16))
            {

              AnyCancellable.cancel()();
            }

            v63[3] = &type metadata for () + 8;
            DeferredPromise.resolve(_:)();
            sub_100004758(v63);
          }

          return;
        }

LABEL_39:
        swift_once();
        goto LABEL_12;
      }

      if (a5(v62))
      {
        if (qword_100767380 != -1)
        {
          swift_once();
        }

        v52 = type metadata accessor for Logger();
        sub_100003E30(v52, qword_1007865F0);
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v30, v31))
        {
          goto LABEL_32;
        }

        v32 = swift_slowAlloc();
        *v32 = 0;
        v33 = "scrollWithCompensationTo: target item has become visible upon end of scrolling animation.";
        goto LABEL_31;
      }

      v25 = "ellReadyTracker's result";
      v56 = 0xD00000000000003ELL;
    }

    else
    {
      v56 = 0xD000000000000029;
      v25 = "pon end of scrolling animation";
    }

    v26 = v61;
    swift_beginAccess();
    *(v26 + 16) = 1;
    if (a9)
    {
      swift_beginAccess();
      a1 = *(a3 + 16) < a10;
    }

    else
    {
      a1 = 0;
    }

    v60 = a12;
    v59 = a11;
    if (qword_100767380 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    v35 = sub_100003E30(v34, qword_1007865F0);
    v54 = *(v19 + 16);
    v54(v24, v62, v18);

    v53[1] = v35;
    v36 = Logger.logObject.getter();
    LODWORD(v35) = static os_log_type_t.default.getter();

    v55 = v35;
    v37 = os_log_type_enabled(v36, v35);
    v58 = v25;
    if (v37)
    {
      v38 = swift_slowAlloc();
      v57 = a1;
      v39 = v38;
      v64[0] = swift_slowAlloc();
      *v39 = 136315906;
      *(v39 + 4) = sub_100004060(v56, v25 | 0x8000000000000000, v64);
      *(v39 + 12) = 1024;
      *(v39 + 14) = v57;
      *(v39 + 18) = 2048;
      swift_beginAccess();
      *(v39 + 20) = *(a3 + 16);

      *(v39 + 28) = 2080;
      v54(v21, v24, v18);
      v40 = String.init<A>(describing:)();
      v42 = v41;
      (*(v19 + 8))(v24, v18);
      v43 = sub_100004060(v40, v42, v64);

      *(v39 + 30) = v43;
      _os_log_impl(&_mh_execute_header, v36, v55, "scrollWithCompensationTo: Performing scroll {reason: %s, animated: %{BOOL}d, scrollCountAttempted: %ld, item: %s}", v39, 0x26u);
      swift_arrayDestroy();

      a1 = v57;
    }

    else
    {

      (*(v19 + 8))(v24, v18);
    }

    v44 = v59(v62, a1);
    swift_beginAccess();
    v45 = *(a3 + 16);
    v46 = __OFADD__(v45, 1);
    v47 = v45 + 1;
    if (!v46)
    {
      *(a3 + 16) = v47;
      v48 = v61;
      swift_beginAccess();
      *(v48 + 16) = 0;
      if (v44)
      {
      }

      else
      {
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          _os_log_impl(&_mh_execute_header, v49, v50, "scrollWithCompensationTo: no animation after scroll", v51, 2u);
        }

        PassthroughSubject.send(_:)();
      }

      return;
    }

    __break(1u);
    goto LABEL_39;
  }

  *(a1 + 24) = 0;
  if (*(a1 + 16))
  {

    AnyCancellable.cancel()();
  }

  v27 = type metadata accessor for PromiseError();
  sub_100522EA4(&qword_1007817D0, &type metadata accessor for PromiseError, &protocol conformance descriptor for PromiseError);
  swift_allocError();
  (*(*(v27 - 8) + 104))(v28, enum case for PromiseError.cancelled(_:), v27);
  DeferredPromise.reject(_:)();
}

uint64_t sub_100523BB4(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

void sub_100523CDC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_1005233A0(*(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56), v3 + v6, *(v3 + v8), *(v3 + v8 + 8), *(v3 + v9), *(v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v3 + ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), a3);
}

void sub_100523E2C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v6 = *(a2(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  sub_10050E900(a1, v3 + v7, *(v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8)), a3);
}

void sub_100523EFC(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v4 = *(a1(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  sub_10050EC54(v2 + v5, *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8)), a2);
}

uint64_t sub_100524000(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v6 = *(a2(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  return sub_10050DFE4(*a1, a1[1], v3 + v7, *(v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8)), a3);
}

uint64_t sub_100524104(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 64) & ~v4;
  v6 = (((((v5 + *(v3 + 64) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v6 + 8, v4 | 7);
}

uint64_t sub_100524270(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, void))
{
  v6 = *(a2(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  return a3(a1, v3 + v7, *(v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_10052431C(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v6 + 8, v4 | 7);
}

uint64_t sub_1005243C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_100524430()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_initialFrameForLoadingView;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 1;
  *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_externalScrollViewDelegate) = 0;
  v3 = OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_preferredChromelessBarStates;
  sub_100058000(&unk_100781980, &unk_10063CC90);
  swift_allocObject();
  *(v0 + v3) = TTRObservableViewModel.init(value:)();
  *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_targetItemsForVisibleContextMenu) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_scrollingController) = 0;
  v4 = OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_itemStateTracker;
  type metadata accessor for TTRRemindersListItemStateTracker();
  swift_allocObject();
  *(v0 + v4) = TTRRemindersListItemStateTracker.init()();
  v5 = OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_pencilAutoCommitTracker;
  type metadata accessor for TTRIRemindersListPencilAutoCommitTracker();
  v6 = swift_allocObject();
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v1 + v5) = v6;
  *(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_chromelessToolbarUpdater) = 0;
  *(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presentationTreesCapability) = 0;
  *(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_dragAndDropController) = 0;
  *(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_dragAndDropCoordinator) = 0;
  v7 = OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_prefetchExtender;
  type metadata accessor for TTRListContentsPrefetchExtender();
  swift_allocObject();
  *(v1 + v7) = TTRListContentsPrefetchExtender.init(prefetchCountNeeded:)();
  *(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_accessibilityController) = 0;
  *(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView) = 0;
  *(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource) = 0;
  *(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_automaticSubtaskSelectionController) = 0;
  v8 = OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_contextMenuOriginatorItem;
  v9 = type metadata accessor for TTRRemindersListViewModel.Item();
  v10 = *(*(v9 - 8) + 56);
  v10(v1 + v8, 1, 1, v9);
  v10(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_firstVisibleItemToRestore, 1, 1, v9);
  *(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_itemCollapsedStatesOverrideCancellable) = 0;
  *(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_internalFocusedCell) = 0;
  v11 = OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_listInfo;
  v12 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  *(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView____lazy_storage___completedTasksRotor) = 0;
  *(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView____lazy_storage___incompleteTasksRotor) = 0;
  *(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView____lazy_storage___overdueTasksRotor) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1005246F0()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_scrollingController);
  if (v1)
  {
    v2 = *(*(v1 + OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_scrollSessionController) + 24);
    if (v2)
    {
      return (*(v2 + 24) ^ 1) & 1;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100524734(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_scrollingController);
  if (v2)
  {
    if ((a1 & 1) == 0)
    {
      v3 = *(*&v2[OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_scrollSessionController] + 24);
      if (!v3 || (*(v3 + 24) & 1) == 0)
      {
        v4 = *&v2[OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_processPendingReminderViewModelUpdates];
        v5 = v2;
        v4();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1005247D0()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_scrollingController);
  if (v1)
  {
    v2 = *(*&v1[OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_scrollSessionController] + 24);
    if (!v2 || (*(v2 + 24) & 1) == 0)
    {
      v3 = *&v1[OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_processPendingReminderViewModelUpdates];
      v4 = v1;
      v3();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100524868(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListItemStateTracker.CellState();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.Item();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource);
  if (v13)
  {
    v14 = v13;
    TTRICollectionViewTreeBackedDiffableDataSource.item(for:)();

    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_1000079B4(v8, &qword_100772140, &qword_10062D9F0);
    }

    else
    {
      (*(v10 + 32))(v12, v8, v9);
      (*(v3 + 104))(v5, enum case for TTRRemindersListItemStateTracker.CellState.displayed(_:), v2);
      TTRRemindersListItemStateTracker.fullfil(_:of:)();
      (*(v3 + 8))(v5, v2);
      (*(v10 + 8))(v12, v9);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100524AF0()
{
  v1 = sub_100058000(qword_100784690, &unk_10062DDD0);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  UIViewController.endFirstResponderEditing()();
  v4 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_automaticSubtaskSelectionController);
  if (v4)
  {
    type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession.SelectionState(0);
    swift_storeEnumTagMultiPayload();
    v5 = type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession(0);
    (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
    v6 = OBJC_IVAR____TtC9Reminders52TTRIRemindersListAutomaticSubtaskSelectionController_currentMultipleSelectionInteractionSession;
    swift_beginAccess();

    sub_10000D184(v3, v4 + v6, qword_100784690, &unk_10062DDD0);
    swift_endAccess();

    v7 = (v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter);
    v8 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
    v9 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
    sub_10000C36C(v7, v8);
    (*(*(v9 + 8) + 352))(v8);
  }

  else
  {
    __break(1u);
  }
}

void sub_100524C60()
{
  if (*&v0[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_automaticSubtaskSelectionController])
  {

    sub_100069648();

    v1 = [v0 parentViewController];
    if (v1)
    {
      v2 = v1;
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        sub_10037DD70(1, 0);
        sub_10037FFC0();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100524D2C(char a1)
{
  TTRObservableViewModel.value.getter();
  sub_10016A680();
  return TTRObservableViewModel<A>.update(with:forcePublish:)();
}

uint64_t sub_100524D98()
{
  v1 = v0;
  v2 = type metadata accessor for TTREditingStateOption.InputType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_100775698, &unk_100635D50);
  __chkstk_darwin(v6 - 8);
  v8 = &v35 - v7;
  v9 = sub_100058000(&unk_1007817C0, qword_10063D260);
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  v12 = type metadata accessor for TTRRemindersListViewModel.Item();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v1 isEditing])
  {
    goto LABEL_4;
  }

  v37 = v3;
  v38 = v13;
  v18 = *&v1[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24];
  v17 = *&v1[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32];
  sub_10000C36C(&v1[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter], v18);
  (*(*(v17 + 8) + 392))(v18);
  v19 = sub_100058000(&qword_100775A58, &qword_100636070);
  if ((*(*(v19 - 8) + 48))(v8, 1, v19) == 1)
  {
    sub_1000079B4(v8, &qword_100775698, &unk_100635D50);
LABEL_4:
    v20 = type metadata accessor for PromiseError();
    sub_100522EA4(&qword_1007817D0, &type metadata accessor for PromiseError, &protocol conformance descriptor for PromiseError);
    swift_allocError();
    (*(*(v20 - 8) + 104))(v21, enum case for PromiseError.cancelled(_:), v20);
    sub_100058000(&unk_10078A390, &qword_10063D278);
    swift_allocObject();
    return Promise.init(error:)();
  }

  v23 = *(v19 + 48);
  v24 = *(v9 + 48);
  v25 = v12;
  v26 = *(v38 + 32);
  v35 = *&v8[v23];
  v27 = v8;
  v28 = v25;
  v36 = v25;
  v26(v11, v27, v25);
  *&v11[v24] = v35;
  v35 = *&v11[*(v9 + 48)];
  v26(v16, v11, v28);
  v29 = v37;
  (*(v37 + 104))(v5, enum case for TTREditingStateOption.InputType.pencil(_:), v2);
  sub_100512C00(v16, v5);
  (*(v29 + 8))(v5, v2);
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  *(v31 + 24) = v35;
  swift_unknownObjectRetain();
  v32 = zalgo.getter();
  sub_100058000(&qword_1007817E0, &qword_10063D280);
  dispatch thunk of Promise.then<A>(on:closure:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  v33 = zalgo.getter();
  v34 = dispatch thunk of Promise.error(on:closure:)();
  swift_unknownObjectRelease();

  (*(v38 + 8))(v16, v36);

  return v34;
}

void sub_100525328(void *a1, double a2, double a3)
{
  sub_100117CEC();
  PassthroughSubject.send(_:)();
  v6 = [a1 view];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 hitTest:0 withEvent:{a2, a3}];
    if (v8)
    {
      v9 = v8;
      type metadata accessor for TTRIRemindersListBackgroundView();
      if (swift_dynamicCastClass())
      {
        v10 = v9;
        sub_100524D98();
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void *sub_100525428()
{
  v1 = OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView;
  result = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView);
  if (result)
  {
    if ([result hasActiveDrag])
    {
      return 0;
    }

    result = *(v0 + v1);
    if (result)
    {
      return ([result hasActiveDrop] ^ 1);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10052548C()
{
  v0 = type metadata accessor for AppEntityID();
  v16 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v17[-1] - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TTRRemindersListViewModel.Item();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for REMFeatureFlags();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, enum case for REMFeatureFlags.viewAnnotation(_:), v7, v9);
  v12 = REMFeatureFlags.isEnabled.getter();
  result = (*(v8 + 8))(v11, v7);
  if (v12)
  {
    TTRIRemindersListReminderCell_collectionView.viewModel.getter();
    if (v18)
    {
      sub_10000C36C(v17, v18);
      dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
      v14 = TTRRemindersListViewModel.Item.reminderObjectID.getter();
      (*(v4 + 8))(v6, v3);
      result = sub_100004758(v17);
      if (v14)
      {
        type metadata accessor for ReminderEntity();
        v15 = v14;
        AppEntityID.init(objectID:)();
        sub_100522EA4(&qword_10076DF78, &type metadata accessor for ReminderEntity, &protocol conformance descriptor for ReminderEntity);
        UIView.setAssociatedAppEntity<A>(entityType:identifier:)();

        return (*(v16 + 8))(v2, v0);
      }
    }

    else
    {
      return sub_1000079B4(v17, &qword_100780978, &unk_10063C720);
    }
  }

  return result;
}

id sub_100525794()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedApplication];
  URL._bridgeToObjectiveC()(v2);
  v4 = v3;
  v5 = [v1 canOpenURL:v3];

  if (v5)
  {
    v6 = [v0 sharedApplication];
    URL._bridgeToObjectiveC()(v7);
    v9 = v8;
    sub_10046187C(_swiftEmptyArrayStorage);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_100522EA4(&unk_100781820, type metadata accessor for OpenExternalURLOptionsKey, &unk_10062D358);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v6 openURL:v9 options:isa completionHandler:0];
  }

  return v5;
}

void sub_1005258F4(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v26 - v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.Item();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource);
  if (!v12)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v13 = v12;
  TTRICollectionViewTreeBackedDiffableDataSource.item(withID:)();

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000079B4(v7, &qword_100772140, &qword_10062D9F0);
    return;
  }

  (*(v9 + 32))(v11, v7, v8);
  v14 = OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView;
  if (!*(v3 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView))
  {
    goto LABEL_20;
  }

  [a2 locationInView:?];
  v15 = *(v3 + v14);
  if (v15)
  {
    v16 = [v15 hitTest:0 withEvent:?];
    if (v16 && (v17 = v16, type metadata accessor for TTRIRemindersListReminderCell_collectionView(), v18 = static TTRIRemindersListReminderCell_collectionView.ignoreDragging(view:)(), v17, (v18 & 1) != 0))
    {
      v19 = _swiftEmptyArrayStorage;
    }

    else
    {
      v20 = (v3 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter);
      v21 = *(v3 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
      v22 = v20[4];
      sub_10000C36C(v20, v21);
      v19 = (*(*(v22 + 8) + 552))(v11, v21);
    }

    if (v19 >> 62)
    {
      v24 = v19;
      v25 = _CocoaArrayWrapper.endIndex.getter();
      v19 = v24;
      if (!v25)
      {
        goto LABEL_16;
      }
    }

    else if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_16:

      (*(v9 + 8))(v11, v8);
      return;
    }

    if ((v19 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_16;
    }

    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v23 = *(v19 + 32);
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
}

void sub_100525BF0(uint64_t a1)
{
  v2 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = type metadata accessor for TTRRemindersListViewModel.Item();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource);
  if (v9)
  {
    v10 = v9;
    TTRICollectionViewTreeBackedDiffableDataSource.item(withID:)();

    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_1000079B4(v4, &qword_100772140, &qword_10062D9F0);
    }

    else
    {
      (*(v6 + 32))(v8, v4, v5);
      sub_10000C36C((v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), *(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24));
      sub_100309E08(v8);
      (*(v6 + 8))(v8, v5);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100525DCC(uint64_t a1, uint64_t a2)
{
  v145 = a2;
  v141 = a1;
  v140 = sub_100058000(&unk_100784640, &unk_100644F70);
  v136 = *(v140 - 8);
  __chkstk_darwin(v140);
  v135 = &v127 - v2;
  v3 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v3 - 8);
  v132 = &v127 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v129 = &v127 - v6;
  v138 = sub_100058000(&qword_10078A3D0, &qword_100644FC0);
  v142 = *(v138 - 8);
  __chkstk_darwin(v138);
  v128 = &v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v133 = &v127 - v9;
  v10 = sub_100058000(&unk_100784650, &unk_100644F90);
  __chkstk_darwin(v10 - 8);
  v12 = &v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v127 - v14;
  v137 = sub_100058000(&unk_100781910, &unk_1006305A0);
  __chkstk_darwin(v137);
  v17 = &v127 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v127 - v19;
  v21 = type metadata accessor for TTRRemindersListViewModel.Item();
  v22 = *(v21 - 8);
  v143 = v21;
  v144 = v22;
  __chkstk_darwin(v21);
  v130 = &v127 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v139 = &v127 - v25;
  __chkstk_darwin(v26);
  v134 = &v127 - v27;
  v28 = sub_100058000(&unk_100784660, &unk_100644FA0);
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v131 = &v127 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v127 - v32;
  v34 = sub_100058000(&qword_100769548, &qword_100640970);
  v35 = *(v34 - 8);
  v36 = __chkstk_darwin(v34);
  v38 = &v127 - v37;
  (*(v35 + 16))(&v127 - v37, v145, v34, v36);
  v39 = (*(v35 + 88))(v38, v34);
  if (v39 != enum case for TTRTreeViewDropDestination.insertAt<A, B>(_:))
  {
    v47 = v146;
    if (v39 != enum case for TTRTreeViewDropDestination.insertInto<A, B>(_:))
    {
      if (v39 != enum case for TTRTreeViewDropDestination.copyToAround<A, B>(_:))
      {
        if (v39 == enum case for TTRTreeViewDropDestination.unknown<A, B>(_:))
        {
          return 0;
        }

        goto LABEL_38;
      }

      (*(v35 + 96))(v38, v34);
      v58 = v131;
      (*(v29 + 32))(v131, v38, v28);
      v59 = *(v47 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource);
      if (v59)
      {
        v60 = v59;
        TTRICollectionViewTreeBackedDiffableDataSource.targetParentAndUnadjustedIndex(for:)();

        v61 = sub_100058000(&qword_100784670, &unk_100644FB0);
        v62 = (*(*(v61 - 8) + 48))(v12, 1, v61);
        v63 = v144;
        if (v62 == 1)
        {
          (*(v29 + 8))(v58, v28);
          sub_1000079B4(v12, &unk_100784650, &unk_100644F90);
          return 0;
        }

        v103 = *&v12[*(v61 + 48)];
        v104 = v137;
        v105 = *(v137 + 48);
        v106 = *(v144 + 32);
        v107 = v12;
        v108 = v143;
        v106(v17, v107, v143);
        *&v17[v105] = v103;
        v109 = *&v17[*(v104 + 48)];
        v106(v130, v17, v108);
        sub_100058000(&unk_10078A3D8, &qword_100644FC8);
        v110 = TTRICollectionViewDragItemSources.dropSession.getter();
        if (v110)
        {
          v111 = [v110 items];
          swift_unknownObjectRelease();
          sub_100003540(0, &qword_10076BAC0, UIDragItem_ptr);
          v112 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        }

        else
        {
          v112 = _swiftEmptyArrayStorage;
        }

        v121 = *(v146 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
        v122 = *(v146 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
        sub_10000C36C((v146 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v121);
        (*(*(v122 + 8) + 616))(v147, v112, v121);

        v123 = v148;
        v124 = v149;
        sub_10000C36C(v147, v148);
        v125 = v130;
        v102 = (*(v124 + 32))(v130, v109, v123, v124);
        (*(v63 + 8))(v125, v108);
        (*(v29 + 8))(v131, v28);
        goto LABEL_30;
      }

LABEL_37:
      __break(1u);
LABEL_38:
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      goto LABEL_39;
    }

    (*(v35 + 96))(v38, v34);
    v49 = v135;
    v48 = v136;
    v50 = v140;
    (*(v136 + 32))(v135, v38, v140);
    v51 = *(v47 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource);
    if (v51)
    {
      v52 = v51;
      v53 = v132;
      TTRICollectionViewTreeBackedDiffableDataSource.targetParent(for:)();

      v54 = v143;
      v55 = v144;
      v56 = (*(v144 + 48))(v53, 1, v143);
      v57 = v142;
      if (v56 == 1)
      {
        (*(v48 + 8))(v49, v50);
        sub_1000079B4(v53, &qword_100772140, &qword_10062D9F0);
        return 0;
      }

      v85 = (*(v55 + 32))(v139, v53, v54);
      __chkstk_darwin(v85);
      *(&v127 - 2) = v47;
      sub_100058000(&unk_10078A3D8, &qword_100644FC8);
      v86 = v128;
      TTRICollectionViewDragItemSources.draggedItemsForValidation<A>(transformItemID:)();
      v87 = v86;
      v88 = v138;
      v89 = (*(v57 + 88))(v86, v138);
      if (v89 == enum case for TTRICollectionViewDragItemSources.DraggedItemsForValidation.local<A><A1>(_:))
      {
        (*(v57 + 96))(v86, v88);
        v90 = *v86;
        v91 = (v47 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter);
        v92 = *(v47 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
        v93 = *(v47 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
        sub_10000C36C(v91, v92);
        v94 = *(*(v93 + 8) + 592);
        v95 = v139;
        v96 = v94(v90, v139, v92);

        (*(v55 + 8))(v95, v54);
        (*(v48 + 8))(v49, v140);
        v83 = (v96 & 1) == 0;
LABEL_19:
        if (v83)
        {
          return 0;
        }

        else
        {
          return 3;
        }
      }

      v113 = v140;
      if (v89 == enum case for TTRICollectionViewDragItemSources.DraggedItemsForValidation.external<A><A1>(_:))
      {
        (*(v57 + 96))(v87, v88);
        v114 = *v87;
        v115 = (v47 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter);
        v116 = *(v47 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
        v117 = *(v47 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
        sub_10000C36C(v115, v116);
        (*(*(v117 + 8) + 616))(v147, v114, v116);

        v118 = v148;
        v119 = v149;
        sub_10000C36C(v147, v148);
        v120 = v139;
        v102 = (*(v119 + 16))(v139, v118, v119);
        (*(v55 + 8))(v120, v54);
        (*(v48 + 8))(v49, v113);
        goto LABEL_30;
      }

LABEL_39:
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  (*(v35 + 96))(v38, v34);
  (*(v29 + 32))(v33, v38, v28);
  v40 = v146;
  v41 = *(v146 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource);
  if (!v41)
  {
    __break(1u);
    goto LABEL_36;
  }

  v42 = v29;
  v43 = v41;
  TTRICollectionViewTreeBackedDiffableDataSource.targetParentAndUnadjustedIndex(for:)();

  v44 = sub_100058000(&qword_100784670, &unk_100644FB0);
  v45 = (*(*(v44 - 8) + 48))(v15, 1, v44);
  v46 = v144;
  if (v45 == 1)
  {
    (*(v42 + 8))(v33, v28);
    sub_1000079B4(v15, &unk_100784650, &unk_100644F90);
    return 0;
  }

  v140 = v42;
  v145 = v28;
  v64 = *&v15[*(v44 + 48)];
  v65 = v137;
  v66 = *(v137 + 48);
  v67 = *(v144 + 32);
  v68 = v15;
  v69 = v143;
  v67(v20, v68, v143);
  *&v20[v66] = v64;
  v70 = *&v20[*(v65 + 48)];
  v71 = v134;
  v72 = (v67)(v134, v20, v69);
  v73 = v69;
  __chkstk_darwin(v72);
  *(&v127 - 2) = v40;
  sub_100058000(&unk_10078A3D8, &qword_100644FC8);
  v74 = v133;
  TTRICollectionViewDragItemSources.draggedItemsForValidation<A>(transformItemID:)();
  v75 = v142;
  v76 = v138;
  v77 = (*(v142 + 88))(v74, v138);
  if (v77 == enum case for TTRICollectionViewDragItemSources.DraggedItemsForValidation.local<A><A1>(_:))
  {
    (*(v75 + 96))(v74, v76);
    v78 = *v74;
    v79 = *(v40 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
    v80 = *(v40 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
    sub_10000C36C((v40 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v79);
    v81 = v129;
    (*(v46 + 16))(v129, v71, v73);
    (*(v46 + 56))(v81, 0, 1, v73);
    v82 = (*(*(v80 + 8) + 576))(v78, v81, v70, v79);

    sub_1000079B4(v81, &qword_100772140, &qword_10062D9F0);
    (*(v46 + 8))(v71, v73);
    (*(v140 + 8))(v33, v145);
    v83 = (v82 & 1) == 0;
    goto LABEL_19;
  }

  if (v77 != enum case for TTRICollectionViewDragItemSources.DraggedItemsForValidation.external<A><A1>(_:))
  {
    goto LABEL_38;
  }

  (*(v75 + 96))(v74, v76);
  v97 = *v74;
  v98 = *(v40 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
  v99 = *(v40 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
  sub_10000C36C((v40 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v98);
  (*(*(v99 + 8) + 616))(v147, v97, v98);

  v100 = v148;
  v101 = v149;
  sub_10000C36C(v147, v148);
  v102 = (*(v101 + 8))(v71, v70, v100, v101);
  (*(v46 + 8))(v71, v73);
  (*(v140 + 8))(v33, v145);
LABEL_30:
  if (v102)
  {
    v126 = 2;
  }

  else
  {
    v126 = 0;
  }

  sub_100004758(v147);
  return v126;
}

uint64_t sub_100526D28(char *a1)
{
  v197 = sub_100058000(&qword_10078A3B8, &qword_100644F68);
  v196 = *(v197 - 8);
  __chkstk_darwin(v197);
  v195 = &v192 - v3;
  v213 = sub_100058000(&unk_100784640, &unk_100644F70);
  v221 = *(v213 - 8);
  __chkstk_darwin(v213);
  v214 = &v192 - v4;
  v5 = sub_100058000(&qword_1007818D8, &qword_10063D340);
  __chkstk_darwin(v5 - 8);
  v225 = (&v192 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v224 = &v192 - v8;
  v228 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v211 = *(v228 - 8);
  __chkstk_darwin(v228);
  v194 = &v192 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v226 = &v192 - v11;
  v201 = sub_100058000(&qword_10078A3C0, &qword_100644F80);
  v200 = *(v201 - 8);
  __chkstk_darwin(v201);
  v193 = &v192 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v199 = &v192 - v14;
  v15 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v15 - 8);
  v210 = &v192 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v204 = &v192 - v18;
  v19 = sub_100058000(&qword_10078A3C8, &qword_100644F88);
  v216 = *(v19 - 8);
  v217 = v19;
  __chkstk_darwin(v19);
  v203 = (&v192 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v215 = &v192 - v22;
  v23 = sub_100058000(&unk_100784650, &unk_100644F90);
  __chkstk_darwin(v23 - 8);
  v202 = &v192 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v192 - v26;
  v212 = sub_100058000(&unk_100781910, &unk_1006305A0);
  __chkstk_darwin(v212);
  v198 = &v192 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v209 = &v192 - v30;
  v31 = type metadata accessor for TTRRemindersListViewModel.Item();
  v220 = *(v31 - 8);
  __chkstk_darwin(v31);
  v205 = &v192 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v222 = &v192 - v34;
  __chkstk_darwin(v35);
  v223 = (&v192 - v36);
  __chkstk_darwin(v37);
  v218 = &v192 - v38;
  v39 = sub_100058000(&unk_100784660, &unk_100644FA0);
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v208 = &v192 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v44 = &v192 - v43;
  v45 = sub_100058000(&qword_100769548, &qword_100640970);
  v46 = *(v45 - 8);
  __chkstk_darwin(v45);
  v48 = &v192 - v47;
  v229 = a1;
  TTRICollectionViewDropCommitCoordinator.destination.getter();
  result = (*(v46 + 88))(v48, v45);
  v227 = v31;
  if (result == enum case for TTRTreeViewDropDestination.insertAt<A, B>(_:))
  {
    (*(v46 + 96))(v48, v45);
    (*(v40 + 32))(v44, v48, v39);
    v50 = v219;
    v51 = *(v219 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource);
    if (!v51)
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v52 = v51;
    TTRICollectionViewTreeBackedDiffableDataSource.targetParentAndUnadjustedIndex(for:)();

    v53 = sub_100058000(&qword_100784670, &unk_100644FB0);
    v54 = (*(*(v53 - 8) + 48))(v27, 1, v53);
    v55 = v227;
    if (v54 == 1)
    {
      (*(v40 + 8))(v44, v39);
      v56 = &unk_100784650;
      v57 = &unk_100644F90;
      v58 = v27;
      return sub_1000079B4(v58, v56, v57);
    }

    v214 = v44;
    v207 = v39;
    v206 = v40;
    v75 = *&v27[*(v53 + 48)];
    v76 = v212;
    v77 = *(v212 + 48);
    v78 = v50;
    v80 = v220 + 32;
    v79 = *(v220 + 4);
    v81 = v209;
    v82 = v218;
    (v79)(v209, v27, v227);
    *&v81[v77] = v75;
    v83 = *&v81[*(v76 + 48)];
    v221 = v79;
    v222 = v80;
    v84 = (v79)(v82, v81, v55);
    __chkstk_darwin(v84);
    *(&v192 - 2) = v78;
    v85 = v215;
    TTRICollectionViewDropCommitCoordinator.draggedItemsForCommitting<A>(transformItemID:)();
    v86 = v216;
    v87 = v217;
    v88 = (*(v216 + 88))(v85, v217);
    if (v88 == enum case for TTRICollectionViewDropCommitCoordinator.DraggedItemsForCommitting.local<A><A1>(_:))
    {
      (*(v86 + 96))(v85, v87);
      v89 = v55;
      v91 = *v85;
      v90 = *(v85 + 1);
      v92 = v78 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter;
      v93 = v83;
      v95 = *(v78 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
      v94 = *(v92 + 4);
      sub_10000C36C(v92, v95);
      v96 = v220;
      v97 = v204;
      (*(v220 + 2))(v204, v218, v89);
      (*(v96 + 7))(v97, 0, 1, v89);
      (*(*(v94 + 8) + 600))(v90, v97, v93, 0, 0, v95);

      sub_1000079B4(v97, &qword_100772140, &qword_10062D9F0);
      v98 = *(v91 + 2);
      if (v98)
      {
        v99 = v200 + 16;
        v100 = *(v200 + 16);
        v101 = *(v200 + 80);
        v223 = v91;
        v102 = &v91[(v101 + 32) & ~v101];
        v224 = *(v200 + 72);
        v225 = v100;
        v103 = (v200 + 8);
        v104 = (v211 + 8);
        v105 = v226;
        v106 = v201;
        v107 = v199;
        do
        {
          v108 = v99;
          v225(v107, v102, v106);
          v109 = TTRICollectionViewDropCommitCoordinator.LocalDropItem.dragItem.getter();
          TTRICollectionViewDropCommitCoordinator.LocalDropItem.sourceItemID.getter();
          (*v103)(v107, v106);
          TTRICollectionViewDropCommitCoordinator.drop(_:toItem:)();

          (*v104)(v105, v228);
          v99 = v108;
          v102 += v224;
          --v98;
        }

        while (v98);

        v96 = v220;
      }

      else
      {
      }

      v185 = v207;
      (*(v96 + 1))(v218, v227);
      return (*(v206 + 8))(v214, v185);
    }

    v134 = v220;
    if (v88 == enum case for TTRICollectionViewDropCommitCoordinator.DraggedItemsForCommitting.external<A><A1>(_:))
    {
      v135 = v215;
      (*(v216 + 96))(v215, v87);
      v136 = *v135;
      v137 = v78 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter;
      v139 = *(v78 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
      v138 = *(v137 + 4);
      sub_10000C36C(v137, v139);
      (*(*(v138 + 8) + 616))(&v230, v136, v139);

      v140 = v231;
      v141 = v232;
      sub_10000C36C(&v230, v231);
      v66 = (*(v141 + 48))(v218, v83, v140, v141);
      i = 0;
      v48 = *(v66 + 16);
      v219 = (v211 + 8);
      v220 = v134 + 8;
      v143 = &unk_1007818F0;
      v144 = v225;
      if (v48)
      {
        goto LABEL_31;
      }

LABEL_34:
      v153 = sub_100058000(v143, &unk_10063E550);
      (*(*(v153 - 8) + 56))(v144, 1, 1, v153);
      for (i = v48; ; ++i)
      {
        v154 = v144;
        v155 = v224;
        sub_100016588(v154, v224, &qword_1007818D8, &qword_10063D340);
        v156 = sub_100058000(v143, &unk_10063E550);
        if ((*(*(v156 - 8) + 48))(v155, 1, v156) == 1)
        {

          (*v220)(v218, v227);
          (*(v206 + 8))(v214, v207);
          return sub_100004758(&v230);
        }

        v145 = *v155;
        v140 = v223;
        v146 = v143;
        v147 = v66;
        v148 = v227;
        (v221)(v223, v155 + *(v156 + 48), v227);
        v149 = v226;
        TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
        TTRICollectionViewDropCommitCoordinator.drop(_:toItem:)();

        (*v219)(v149, v228);
        v150 = v148;
        v66 = v147;
        v143 = v146;
        v144 = v225;
        (*v220)(v140, v150);
        if (i == v48)
        {
          goto LABEL_34;
        }

LABEL_31:
        if ((i & 0x8000000000000000) != 0)
        {
          break;
        }

        if (i >= *(v66 + 16))
        {
          goto LABEL_57;
        }

        v151 = sub_100058000(v143, &unk_10063E550);
        v152 = *(v151 - 8);
        sub_10000794C(v66 + ((*(v152 + 80) + 32) & ~*(v152 + 80)) + *(v152 + 72) * i, v144, v143, &unk_10063E550);
        (*(v152 + 56))(v144, 0, 1, v151);
      }

      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    goto LABEL_66;
  }

  v59 = v219;
  v206 = v40;
  v207 = v39;
  if (result == enum case for TTRTreeViewDropDestination.insertInto<A, B>(_:))
  {
    (*(v46 + 96))(v48, v45);
    v60 = v221;
    v61 = v214;
    v45 = v213;
    v221[4](v214, v48, v213);
    v62 = *(v59 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource);
    v27 = v220;
    if (!v62)
    {
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v63 = v62;
    v64 = v210;
    TTRICollectionViewTreeBackedDiffableDataSource.targetParent(for:)();

    a1 = v64;
    v1 = v227;
    v65 = (*(v27 + 6))(v64, 1, v227);
    v48 = v226;
    v66 = v228;
    v46 = v217;
    if (v65 == 1)
    {
      (v60[1])(v61, v45);
      v56 = &qword_100772140;
      v57 = &qword_10062D9F0;
      v58 = a1;
      return sub_1000079B4(v58, v56, v57);
    }
  }

  else
  {
    v66 = v220;
    if (result == enum case for TTRTreeViewDropDestination.copyToAround<A, B>(_:))
    {
      (*(v46 + 96))(v48, v45);
      v67 = v206;
      v68 = v208;
      v69 = v207;
      (*(v206 + 32))(v208, v48, v207);
      v70 = *(v59 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource);
      v71 = v227;
      if (v70)
      {
        v72 = v70;
        v73 = v202;
        TTRICollectionViewTreeBackedDiffableDataSource.targetParentAndUnadjustedIndex(for:)();

        v74 = sub_100058000(&qword_100784670, &unk_100644FB0);
        if ((*(*(v74 - 8) + 48))(v73, 1, v74) == 1)
        {
          (*(v67 + 8))(v68, v69);
          v56 = &unk_100784650;
          v57 = &unk_100644F90;
          v58 = v73;
          return sub_1000079B4(v58, v56, v57);
        }

        v157 = *&v73[*(v74 + 48)];
        v158 = v212;
        v159 = *(v212 + 48);
        v160 = *(v66 + 32);
        v161 = v198;
        v160(v198, v73, v71);
        *&v161[v159] = v157;
        v162 = *&v161[*(v158 + 48)];
        v163 = v161;
        v164 = v71;
        v160(v205, v163, v71);
        v165 = TTRICollectionViewDropCommitCoordinator.items.getter();
        v166 = *(v165 + 16);
        if (v166)
        {
          v228 = v162;
          v230 = _swiftEmptyArrayStorage;
          specialized ContiguousArray.reserveCapacity(_:)();
          v229 = *(v196 + 16);
          v167 = *(v196 + 80);
          v226 = v165;
          v168 = v165 + ((v167 + 32) & ~v167);
          v169 = *(v196 + 72);
          v170 = (v196 + 8);
          v171 = v197;
          v172 = v195;
          do
          {
            (v229)(v172, v168, v171);
            TTRICollectionViewDropCommitCoordinator.DropItem.dragItem.getter();
            (*v170)(v172, v171);
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v168 += v169;
            --v166;
          }

          while (v166);

          v173 = v230;
          v164 = v227;
          v162 = v228;
          v66 = v220;
        }

        else
        {

          v173 = _swiftEmptyArrayStorage;
        }

        v186 = v207;
        v187 = *(v219 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
        v188 = *(v219 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
        sub_10000C36C((v219 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v187);
        (*(*(v188 + 8) + 616))(&v230, v173, v187);

        v189 = v231;
        v190 = v232;
        sub_10000C36C(&v230, v231);
        v191 = v205;
        (*(v190 + 72))(v205, v162, v189, v190);
        (*(v66 + 8))(v191, v164);
        (*(v206 + 8))(v208, v186);
        return sub_100004758(&v230);
      }

      goto LABEL_65;
    }

    if (result == enum case for TTRTreeViewDropDestination.unknown<A, B>(_:))
    {
      return result;
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  v110 = (*(v27 + 4))(v222, a1, v1);
  v111 = v59;
  __chkstk_darwin(v110);
  *(&v192 - 2) = v59;
  v112 = v203;
  TTRICollectionViewDropCommitCoordinator.draggedItemsForCommitting<A>(transformItemID:)();
  v113 = v216;
  v114 = (*(v216 + 88))(v112, v46);
  if (v114 != enum case for TTRICollectionViewDropCommitCoordinator.DraggedItemsForCommitting.local<A><A1>(_:))
  {
    if (v114 == enum case for TTRICollectionViewDropCommitCoordinator.DraggedItemsForCommitting.external<A><A1>(_:))
    {
      (*(v113 + 96))(v112, v46);
      v174 = *v112;
      v175 = *(v59 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
      v176 = *(v59 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
      sub_10000C36C((v59 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v175);
      (*(*(v176 + 8) + 616))(&v230, v174, v175);

      v177 = v231;
      v178 = v232;
      sub_10000C36C(&v230, v231);
      v179 = (*(v178 + 56))(v222, v177, v178);
      v140 = v179;
      if (!(v179 >> 62))
      {
        v180 = *((v179 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v180)
        {
LABEL_59:

          (*(v220 + 1))(v222, v227);
          (v221[1])(v214, v213);
          return sub_100004758(&v230);
        }

        goto LABEL_44;
      }

LABEL_58:
      v180 = _CocoaArrayWrapper.endIndex.getter();
      if (!v180)
      {
        goto LABEL_59;
      }

LABEL_44:
      if (v180 >= 1)
      {
        v181 = 0;
        v182 = (v211 + 8);
        do
        {
          if ((v140 & 0xC000000000000001) != 0)
          {
            v183 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v183 = *(v140 + 8 * v181 + 32);
          }

          v184 = v183;
          ++v181;
          TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
          TTRICollectionViewDropCommitCoordinator.drop(_:intoCenterOfItem:)();

          (*v182)(v48, v66);
        }

        while (v180 != v181);
        goto LABEL_59;
      }

      __break(1u);
      goto LABEL_63;
    }

LABEL_66:
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  (*(v113 + 96))(v112, v46);
  v116 = *v112;
  v115 = v112[1];
  v117 = v111 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter;
  v118 = *(v111 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
  v119 = *(v117 + 4);
  sub_10000C36C(v117, v118);
  v120 = v222;
  v121 = (*(*(v119 + 8) + 608))(v115, v222, v118);

  if ((v121 & 1) != 0 && (v122 = v116[2]) != 0)
  {
    v123 = *(v200 + 16);
    v124 = *(v200 + 80);
    v219 = v116;
    v125 = v116 + ((v124 + 32) & ~v124);
    v224 = *(v200 + 72);
    v225 = v123;
    v223 = (v200 + 8);
    v126 = (v211 + 8);
    v127 = v201;
    v128 = v194;
    v129 = v193;
    do
    {
      v225(v129, v125, v127);
      v130 = TTRICollectionViewDropCommitCoordinator.LocalDropItem.dragItem.getter();
      TTRICollectionViewDropCommitCoordinator.LocalDropItem.sourceItemID.getter();
      (*v223)(v129, v127);
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
      TTRICollectionViewDropCommitCoordinator.drop(_:toItem:orIntoCenterOfItem:)();

      v131 = *v126;
      v132 = v228;
      (*v126)(v128, v228);
      v131(v48, v132);
      v125 += v224;
      v122 = (v122 - 1);
    }

    while (v122);

    v1 = v227;
    v133 = v220;
    v45 = v213;
    v120 = v222;
  }

  else
  {

    v133 = v220;
  }

  v133[1](v120, v1);
  return (v221[1])(v214, v45);
}

void sub_100528550()
{
  v1 = OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView;
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView);
  if (!v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (([v2 hasActiveDrag] & 1) == 0)
  {
    v3 = *(v0 + v1);
    if (v3)
    {
      [v3 hasActiveDrop];
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

LABEL_5:
  sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24));
  type metadata accessor for TTRIRemindersListCellPresentationStatesPresenterCapability();

  dispatch thunk of TTRIRemindersListCellPresentationContext.requestHandleDragAndDropActiveStateChange(_:)();
}

void sub_100528614(uint64_t a1)
{
  v2 = sub_100058000(&qword_100772738, &unk_10063D2B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v21 - v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.Item();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource);
  if (v12)
  {
    v13 = v12;
    TTRICollectionViewTreeBackedDiffableDataSource.item(withID:)();

    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      v14 = &qword_100772140;
      v15 = &qword_10062D9F0;
      v16 = v7;
LABEL_6:
      sub_1000079B4(v16, v14, v15);
      return;
    }

    (*(v9 + 32))(v11, v7, v8);
    v17 = *(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
    v18 = *(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
    sub_10000C36C((v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v17);
    (*(*(v18 + 8) + 512))(v11, v17);
    v19 = type metadata accessor for TTRRemindersListViewModel.Reminder();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v4, 1, v19) == 1)
    {
      (*(v9 + 8))(v11, v8);
      v14 = &qword_100772738;
      v15 = &unk_10063D2B0;
      v16 = v4;
      goto LABEL_6;
    }

    TTRRemindersListViewModel.Reminder.title.getter();
    (*(v9 + 8))(v11, v8);
    (*(v20 + 8))(v4, v19);
  }

  else
  {
    __break(1u);
  }
}

double sub_100528930(id a1, char a2)
{
  if (a2)
  {
    v2 = a1;
  }

  else
  {
  }

  return result;
}

double sub_10052893C(void *a1, void *a2, char a3)
{
  if (a1)
  {

    return sub_1003DE74C(a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100528984(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1005289E4()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView);
  if (result)
  {
    return [result setEditing:0];
  }

  __break(1u);
  return result;
}

uint64_t sub_100528A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_100058000(&unk_10078A498, &qword_100645030) - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_100058000(&qword_10078A490, &qword_100645028) - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(sub_100058000(&qword_10078A480, &qword_100645018) - 8);
  v14 = *(v13 + 80);
  v15 = (v11 + v12 + v14) & ~v14;
  v16 = *(v13 + 64);
  v17 = (v16 + v14 + v15) & ~v14;
  v18 = *(sub_100058000(&qword_10078A488, &qword_100645020) - 8);
  v19 = (v17 + v16 + *(v18 + 80)) & ~*(v18 + 80);
  v20 = *(v18 + 64);
  v21 = *(sub_100058000(&qword_10078A478, &qword_100645010) - 8);
  return sub_1005158AC(a1, a2, a3, *(v3 + 16), v3 + v8, v3 + v11, v3 + v15, v3 + v17, v3 + v19, v3 + ((v19 + v20 + *(v21 + 80)) & ~*(v21 + 80)));
}

uint64_t sub_100528CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_100058000(&qword_10077FBE0, &qword_10063A1C0) - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_100058000(&unk_10078A468, &unk_100645000) - 8);
  v14 = v4 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80));

  return sub_1005161FC(v13, a1, a2, a3, a4, v4 + v10, v14);
}

double sub_100528E80(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_100528E98()
{
  result = qword_10078A4B0;
  if (!qword_10078A4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078A4B0);
  }

  return result;
}

double sub_100528EEC(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_100528F1C(void (*a1)(void, __n128), uint64_t a2)
{

  (a1)(*(v2 + 24));

  return _swift_deallocObject(v2, a2, 7);
}

id sub_100528FF0(uint64_t *a1, void **a2, uint64_t a3, int a4, void *a5)
{
  v122 = a5;
  LODWORD(v118) = a4;
  v131 = a3;
  v129 = a1;
  v6 = type metadata accessor for TTRRemindersListLayout();
  v126 = *(v6 - 8);
  v127 = v6;
  __chkstk_darwin(v6);
  v106 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v128 = &v105 - v9;
  __chkstk_darwin(v10);
  v105 = &v105 - v11;
  __chkstk_darwin(v12);
  v125 = &v105 - v13;
  v14 = type metadata accessor for TTRIRemindersCommonPresenterConfiguration(0);
  __chkstk_darwin(v14 - 8);
  v120 = (&v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v121 = &v105 - v17;
  v119 = type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder(0);
  __chkstk_darwin(v119);
  v137 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TTRListType.SortingCapability();
  v135 = *(v19 - 8);
  v136 = v19;
  __chkstk_darwin(v19);
  *&v115 = &v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v134 = &v105 - v22;
  v116 = type metadata accessor for TTRRemindersListDefaultListType();
  v114 = *(v116 - 1);
  __chkstk_darwin(v116);
  v113 = &v105 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for REMSuggestedAttributesElector.ExcludedAttributes();
  __chkstk_darwin(v111);
  v112 = &v105 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v25 - 8);
  v117 = (&v105 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v110 = type metadata accessor for REMHashtagLabelSpecifier();
  v27 = *(v110 - 1);
  __chkstk_darwin(v110);
  v29 = &v105 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v30 = *(v133 - 8);
  __chkstk_darwin(v133);
  v32 = &v105 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v132 = &v105 - v34;
  v35 = type metadata accessor for REMSmartList.NonCustom();
  v36 = *(v35 - 8);
  v37 = __chkstk_darwin(v35);
  v39 = &v105 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = a2;
  v40 = *a2;
  (*(v36 + 104))(v39, enum case for REMSmartList.NonCustom.tagged(_:), v35, v37);
  v41 = REMStore.fetchOrCreateNonCustomSmartList(withType:)();
  (*(v36 + 8))(v39, v35);
  if (v41)
  {
    v42 = sub_100174F2C();
    v43 = &protocol witness table for REMSmartList;
    v44 = v41;
  }

  else
  {
    v44 = 0;
    v42 = 0;
    v43 = 0;
    v144[2] = 0;
    v144[1] = 0;
  }

  v144[4] = v43;
  v108 = v41 != 0;
  v144[3] = v42;
  v144[0] = v41;
  v109 = v44;
  static REMRemindersListDataView.SortingStyle.fallbackForTaggedSmartList.getter();
  v45 = v132;
  static REMRemindersListDataView.SortingStyle.sortingStyle(for:fallback:)();
  v46 = v133;
  v123 = *(v30 + 8);
  v124 = v30 + 8;
  v123(v32, v133);
  sub_1000079B4(v144, &unk_100775680, &qword_10062E3B0);
  (*(v27 + 16))(v29, v131, v110);
  v47 = *(v30 + 16);
  v47(v32, v45, v46);
  type metadata accessor for TTRShowTaggedDataModelSource();
  swift_allocObject();
  v110 = v41;
  v48 = v40;
  v131 = TTRShowTaggedDataModelSource.init(store:initialHashtagLabels:countCompleted:sortingStyle:canChangeSortingStyle:)();
  v107 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters;
  v49 = v117;
  sub_10010BD5C(v130, v117, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v144[0] = _swiftEmptyArrayStorage;
  sub_10052A4B8(&qword_100769628, &type metadata accessor for REMSuggestedAttributesElector.ExcludedAttributes, &protocol conformance descriptor for REMSuggestedAttributesElector.ExcludedAttributes);
  sub_100058000(&qword_10076C218, &unk_1006302E0);
  sub_10010BA44();
  v50 = v112;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v51 = v113;
  (*(v114 + 104))(v113, enum case for TTRRemindersListDefaultListType.cloudKitOnly(_:), v116);
  v52 = sub_10007786C(v49, v50, v51, v144);
  (v47)(v32, v45, v46, v52);
  v53 = v134;
  TTRListType.SortingCapability.init(canChangeSortingStyle:canSortByManual:initialSortingStyle:)();
  v54 = v144[0];
  v55 = v115;
  (*(v135 + 16))(v115, v53, v136);
  type metadata accessor for TTRShowTaggedViewModelSource(0);
  v56 = swift_allocObject();
  v57 = v109;
  v58 = v131;

  v116 = v54;
  v59 = sub_10052A048(v110, v58, v116, v55, 0, (v118 & 1) == 0, v56);
  v118 = v57;

  v60 = v107;
  sub_10010BD5C(v130, v49, v107);
  sub_10010BCAC(v144, v141);
  v61 = sub_10052A4B8(&qword_100781128, type metadata accessor for TTRShowTaggedViewModelSource, &unk_100646FD0);
  v62 = v137;
  sub_10010BD5C(v49, v137, v60);
  v63 = v119;
  sub_10010BCAC(v141, v62 + *(v119 + 20));
  v64 = (v62 + *(v63 + 24));
  *v64 = v59;
  v64[1] = v61;
  v65 = v141[0];
  sub_100058000(&qword_10076C230, &unk_1006339A0);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_10062D3F0;
  sub_10000794C(&v143, v140, &qword_100769608, &unk_1006302F0);
  v67 = *(v140[5] + 8);
  *(v66 + 32) = v140[4];
  *(v66 + 40) = v67;
  sub_10000794C(&v142, v138, &qword_100769600, &qword_10062E0A0);
  swift_retain_n();
  v68 = v65;
  swift_unknownObjectRelease();
  *(v66 + 48) = v139;
  sub_100004758(v138);
  sub_100004758(v140);
  type metadata accessor for TTRReminderListEditingPresenter(0);
  v69 = swift_allocObject();
  v70 = sub_1003A8A18(v68, v59, v66, v69);
  v130 = v59;

  sub_10010BD08(v141);
  sub_10010BE0C(v49, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v71 = *(v63 + 28);
  v117 = v70;
  *(v62 + v71) = v70;
  v72 = v121;
  sub_100078BBC(v121);
  v119 = type metadata accessor for TTRIShowTaggedPresenter(0);
  v73 = swift_allocObject();
  v74 = (v73 + OBJC_IVAR____TtC9Reminders23TTRIShowTaggedPresenter_dataModelSource);
  *v74 = v58;
  v74[1] = &protocol witness table for TTRShowTaggedDataModelSource;
  v115 = *(v72 + 104);
  *(v73 + OBJC_IVAR____TtC9Reminders23TTRIShowTaggedPresenter_hashtagAssociationModule) = v115;
  v75 = v120;
  sub_10010BD5C(v72, v120, type metadata accessor for TTRIRemindersCommonPresenterConfiguration);

  v76 = v122;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v77 = sub_1003A56E4(v75, v76, v73);
  sub_10010BE0C(v72, type metadata accessor for TTRIRemindersCommonPresenterConfiguration);
  v78 = *(v77 + 144);
  ObjectType = swift_getObjectType();
  v80 = *(v78 + 112);

  if (v80(ObjectType, v78))
  {
    swift_getObjectType();
    v81 = v105;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();
    v82 = v125;
    v83 = v126;
    v84 = v127;
    (*(v126 + 32))(v125, v81, v127);
  }

  else
  {
    v82 = v125;
    v83 = v126;
    v84 = v127;
    (*(v126 + 104))(v125, enum case for TTRRemindersListLayout.list(_:), v127);
  }

  v122 = sub_1003A4A1C(v82, v77);
  v125 = v85;
  v87 = v86;
  v89 = v88;
  (*(v83 + 8))(v82, v84);
  v126 = swift_getObjectType();
  v127 = v87;
  *(v77 + 24) = *(v89 + 8);
  swift_unknownObjectWeakAssign();
  v90 = *(v77 + 144);
  v91 = swift_getObjectType();
  v92 = *(v90 + 112);

  if (v92(v91, v90))
  {
    swift_getObjectType();
    v93 = v106;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();

    v94 = v128;
    (*(v83 + 32))(v128, v93, v84);
  }

  else
  {

    v94 = v128;
    (*(v83 + 104))(v128, enum case for TTRRemindersListLayout.list(_:), v84);
  }

  v95 = objc_allocWithZone(type metadata accessor for TTRIShowRemindersViewController(0));
  v96 = v122;
  v97 = sub_1003A8A4C(v77, v96, v125, v94, 0, 1, 0, v95);

  v98 = *(v89 + 32);
  v99 = v97;
  v98(v97, &off_100723D78, v126, v89);
  sub_10052A4B8(&qword_10078A510, type metadata accessor for TTRIShowTaggedPresenter, &unk_100635C58);

  TTRRemindersListInteractor.delegate.setter();

  TTRRemindersListInteractor.optimisticUpdatesDelegate.setter();
  swift_unknownObjectWeakAssign();
  sub_10052A4B8(&qword_10078A518, type metadata accessor for TTRShowTaggedViewModelSource, &unk_100632F54);

  v100 = v99;
  dispatch thunk of TTRShowTaggedDataModelSource.delegate.setter();

  sub_10056FEB0(v101, &off_10071A9B0);

  v117[3] = &off_10071AB30;
  swift_unknownObjectWeakAssign();
  sub_10000794C(&v145, v141, &qword_100769600, &qword_10062E0A0);
  v102 = v141[4];
  swift_unknownObjectRelease();
  *(v102 + 40) = &off_10071A918;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  sub_100004758(v141);
  sub_10000794C(&v146, v141, &qword_100769608, &unk_1006302F0);
  swift_getObjectType();
  sub_10052A4B8(&qword_10078A520, type metadata accessor for TTRIShowTaggedPresenter, &unk_100635930);

  dispatch thunk of TTRIQuickBarInputAccessoryModuleInterface.moduleDelegate.setter();
  swift_unknownObjectRelease();
  sub_100004758(v141);
  v103 = v129;
  v129[3] = v119;
  v103[4] = &off_100720998;

  swift_unknownObjectRelease();
  *v103 = v77;
  (*(v135 + 8))(v134, v136);
  v123(v132, v133);
  sub_10010BE0C(v137, type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder);
  sub_10010BD08(v144);
  return v100;
}

id TTRIShowTaggedAssembly.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TTRIShowTaggedAssembly();
  return objc_msgSendSuper2(&v3, "init");
}

id TTRIShowTaggedAssembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIShowTaggedAssembly();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10052A048(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, int a6, void *a7)
{
  v43 = a6;
  v44 = a3;
  v12 = *a7;
  v46 = a4;
  v47 = v12;
  v48 = type metadata accessor for REMAnalyticsEvent();
  v13 = *(v48 - 8);
  __chkstk_darwin(v48);
  v15 = &v42[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v16 - 8);
  v18 = &v42[-v17];
  v45 = type metadata accessor for TTRListType.SortingCapability();
  v19 = *(v45 - 8);
  v20 = __chkstk_darwin(v45);
  v22 = &v42[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(a7 + OBJC_IVAR____TtC9Reminders28TTRShowTaggedViewModelSource____lazy_storage___dragAndDropCapability) = 0;
  v23 = OBJC_IVAR____TtC9Reminders28TTRShowTaggedViewModelSource_smartList;
  *(a7 + OBJC_IVAR____TtC9Reminders28TTRShowTaggedViewModelSource_smartList) = 0;
  v24 = a7 + OBJC_IVAR____TtC9Reminders28TTRShowTaggedViewModelSource_completedRemindersCount;
  *v24 = 0;
  v24[8] = 1;
  *(a7 + OBJC_IVAR____TtC9Reminders28TTRShowTaggedViewModelSource_hasIncompleteOrCompletedReminders) = 2;
  *(a7 + v23) = a1;
  v25 = (a7 + OBJC_IVAR____TtC9Reminders28TTRShowTaggedViewModelSource_taggedDataModelSource);
  *v25 = a2;
  v25[1] = &protocol witness table for TTRShowTaggedDataModelSource;
  *(a7 + OBJC_IVAR____TtC9Reminders28TTRShowTaggedViewModelSource_hasDefaultNewReminderButtonWhenSelectingAllTags) = a5;
  *(a7 + OBJC_IVAR____TtC9Reminders28TTRShowTaggedViewModelSource_canShowHashtagLabelSelector) = v43;
  (*(v19 + 16))(v22, a4, v20);
  v26 = a1;

  v28 = sub_1003A649C(v27, v44, v22, a7);

  sub_10016D8C4(v18);
  v29 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  (*(*(v29 - 8) + 56))(v18, 0, 1, v29);
  sub_10056F540(v18);
  sub_1000079B4(v18, &unk_10078A380, &qword_10062DE60);
  type metadata accessor for TTRUserDefaults();
  v30 = static TTRUserDefaults.appUserDefaults.getter();
  type metadata accessor for REMAnalyticsManager();
  static REMAnalyticsManager.shared.getter();
  v31 = sub_100058000(&qword_100770980, &unk_1006339B0);
  v32 = &v15[*(v31 + 48)];
  v33 = &v15[*(v31 + 80)];
  v34 = enum case for REMRemindersOpenUserOperation.SmartListType.tagged(_:);
  v35 = type metadata accessor for REMRemindersOpenUserOperation.SmartListType();
  (*(*(v35 - 8) + 104))(v15, v34, v35);
  v36 = enum case for REMRemindersOpenUserOperation.smartList(_:);
  v37 = type metadata accessor for REMRemindersOpenUserOperation();
  (*(*(v37 - 8) + 104))(v15, v36, v37);
  *v32 = TTRUserDefaults.activitySessionId.getter();
  v32[1] = v38;
  TTRUserDefaults.activitySessionBeginTime.getter();
  *v33 = _typeName(_:qualified:)();
  v33[1] = v39;
  v40 = v48;
  (*(v13 + 104))(v15, enum case for REMAnalyticsEvent.openListUserOperation(_:), v48);
  REMAnalyticsManager.post(event:)();

  (*(v19 + 8))(v46, v45);
  (*(v13 + 8))(v15, v40);
  return v28;
}

uint64_t sub_10052A4B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10052A560(char a1)
{
  v1[qword_10078A558] = 0;
  if ((a1 & 1) == 0)
  {
    v3 = objc_opt_self();
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1003DA560;
    *(v5 + 24) = v4;
    v9[4] = sub_100026410;
    v9[5] = v5;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_100026440;
    v9[3] = &unk_10072D798;
    v6 = _Block_copy(v9);
    v7 = v1;

    [v3 performWithoutAnimation:v6];
    _Block_release(v6);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
    goto LABEL_8;
  }

  v2 = *&v1[qword_10078A540];
  if (!v2)
  {
LABEL_8:
    __break(1u);
    return;
  }

  [v2 performBatchUpdates:0 completion:0];
}

void sub_10052A73C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + qword_10078A548);
  if (v4)
  {
    v8 = v4;
    sub_100190AA0(a1, a2, v8, v6, v7);
  }

  else
  {
    __break(1u);
  }
}

void sub_10052A7CC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(v3 + qword_10078A548);
  if (v5)
  {
    v8 = v5;
    sub_100190EC4(a1, a2, a3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10052A864(uint64_t result, uint64_t (*a2)(uint64_t))
{
  v3 = *(v2 + qword_10078A548);
  if (v3)
  {
    v5 = result;
    v6 = v3;
    v7 = a2(v5);

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10052A8CC()
{
  v1 = *(v0 + qword_10078A548);
  if (v1)
  {
    v2 = v1;
    sub_100191FE8(0);
  }

  else
  {
    __break(1u);
  }
}

void sub_10052A918(uint64_t a1, char a2)
{
  v3 = *(v2 + qword_10078A548);
  if (v3)
  {
    v6 = v3;
    sub_1001921C8(a1, a2 & 1);
  }

  else
  {
    __break(1u);
  }
}

SEL *sub_10052A9B4(SEL *result)
{
  if (*(v1 + qword_10078A540))
  {
    return [*(v1 + qword_10078A540) *result];
  }

  __break(1u);
  return result;
}

void sub_10052A9E8(uint64_t a1)
{
  v2 = *(v1 + qword_10078A540);
  *(v1 + qword_10078A540) = a1;
}

void sub_10052A9FC(uint64_t a1)
{
  v2 = *(v1 + qword_10078A548);
  *(v1 + qword_10078A548) = a1;
}

id sub_10052AA30()
{
  v1 = (*((swift_isaMask & *v0) + 0x90))();
  v2 = *(v0 + qword_10078A540);
  *(v0 + qword_10078A540) = v1;
  v3 = v1;

  [v3 setAutoresizingMask:18];
  [v3 setPreservesSuperviewLayoutMargins:1];
  [v0 addSubview:v3];

  return v3;
}

id sub_10052AAEC(void *a1)
{
  v2 = *(v1 + qword_10078A540);
  *(v1 + qword_10078A540) = a1;
  v3 = a1;

  return [v3 setPreservesSuperviewLayoutMargins:1];
}

void sub_10052AB4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TTRITreeViewTableAdapter(0, *((swift_isaMask & *v4) + 0x50), *((swift_isaMask & *v4) + 0x58), a4);
  v6 = v4;
  v7 = sub_100189BDC(v6, a1);
  v8 = *(v6 + qword_10078A548);
  *(v6 + qword_10078A548) = v7;

  type metadata accessor for TTRITreeTableView();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = &off_100719448;
    if (!*(v6 + qword_10078A548))
    {
      v10 = 0;
    }

    *(v9 + OBJC_IVAR____TtC9Reminders17TTRITreeTableView_contextMenuDelegate + 8) = v10;

    swift_unknownObjectWeakAssign();
  }

  else
  {
    if (qword_100767430 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100003E30(v11, qword_10078A528);
    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v12, "UITableView contained in TTRITreeView is not a subclass of TTRITreeTableView", v13, 2u);
    }
  }
}

id sub_10052AD20(uint64_t a1)
{
  [v1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = objc_allocWithZone(type metadata accessor for TTRITreeTableView());

  return [v11 initWithFrame:a1 style:{v4, v6, v8, v10}];
}

uint64_t sub_10052ADA8()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10078A528);
  v1 = sub_100003E30(v0, qword_10078A528);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10052AE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = swift_isaMask & *v4;
  v7 = *(v4 + qword_10078A548);
  if (v7)
  {
    v8 = v7;
    sub_100189F08();
  }

  v9 = type metadata accessor for TTRITreeView(0, *(v6 + 80), *(v6 + 88), a4);
  v11.receiver = v5;
  v11.super_class = v9;
  return objc_msgSendSuper2(&v11, "dealloc");
}

double sub_10052AF40(uint64_t a1)
{

  return result;
}

id sub_10052AF9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = swift_isaMask;
  *(v4 + qword_10078A540) = 0;
  *(v4 + qword_10078A548) = 0;
  *(v4 + qword_10078A550) = 0;
  *(v4 + qword_10078A558) = 0;
  v8 = type metadata accessor for TTRITreeView(0, *((v7 & v6) + 0x50), *((v7 & v6) + 0x58), a4);
  v24.receiver = v4;
  v24.super_class = v8;
  v9 = objc_msgSendSuper2(&v24, "initWithCoder:", a1);
  v10 = v9;
  if (!v9)
  {
    goto LABEL_14;
  }

  v11 = v9;
  v12 = [v11 subviews];
  sub_10014C480();
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v13 >> 62))
  {
    result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_11:

    goto LABEL_12;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_4:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(v13 + 32);
LABEL_7:
    v16 = v15;

    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      v18 = *&v11[qword_10078A540];
      *&v11[qword_10078A540] = v17;
      v19 = v17;

      [v19 setPreservesSuperviewLayoutMargins:1];
LABEL_13:
      v20 = v16;
      sub_10052AB4C(v19, v21, v22, v23);

      a1 = v19;
LABEL_14:

      return v10;
    }

LABEL_12:
    v16 = sub_10052AA30();
    v19 = v16;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void sub_10052B1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for TTRITreeView(0, *((swift_isaMask & *v4) + 0x50), *((swift_isaMask & *v4) + 0x58), a4);
  v6.receiver = v4;
  v6.super_class = v5;
  objc_msgSendSuper2(&v6, "layoutSubviews");
  if (*(v4 + qword_10078A558) == 1)
  {
    *(v4 + qword_10078A558) = 0;
    sub_10052A560(0);
  }
}

void sub_10052B24C(void *a1)
{
  v4 = a1;
  sub_10052B1BC(v4, v1, v2, v3);
}

void sub_10052B31C(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_10052B41C()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10078A5E0);
  v1 = sub_100003E30(v0, qword_10078A5E0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10052B524@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  v3 = v2[5];
  static TTRLocalizableStrings.Templates.cantMarkAsCompletedAlertTitle.getter();
  static TTRLocalizableStrings.Templates.cantMarkAsCompletedAlertMessage.getter();
  TTRReminderListCompletionBehavior.AlertContents.init(title:message:)();
  v4 = type metadata accessor for TTRReminderListCompletionBehavior.AlertContents();
  (*(*(v4 - 8) + 56))(&a1[v3], 0, 1, v4);
  v5 = enum case for TTRReminderListCompletionBehavior.disallowed(_:);
  v6 = type metadata accessor for TTRReminderListCompletionBehavior();
  result = (*(*(v6 - 8) + 104))(&a1[v3], v5, v6);
  *a1 = 0;
  a1[v2[6]] = 0;
  a1[v2[7]] = 0;
  a1[v2[8]] = 0;
  a1[v2[9]] = 0;
  a1[v2[10]] = 0;
  a1[v2[11]] = 0;
  a1[v2[12]] = 0;
  a1[v2[13]] = 0;
  return result;
}

void sub_10052B66C(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_showLargeAttachmentsValue) != (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_showLargeAttachmentsValue) = a1 & 1;
    v2 = *(v1 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_template);
    if (v2)
    {
      v3 = type metadata accessor for TTRTemplateEditor();
      __chkstk_darwin(v3);
      v4 = v2;
      static TTROneshotEditing.oneshotEdit(_:undoManager:editBlock:)();
    }
  }
}

id sub_10052B768(uint64_t a1, uint64_t (*a2)(__n128), uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_listRepresentation);
  v5 = v4;
  if (!v4)
  {
    v5 = sub_100572610(a1, a2, a3);
  }

  v6 = v4;
  return v5;
}

id sub_10052B7B0@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_template);
  if (v3)
  {
    *a1 = v3;
    v4 = enum case for TTRRemindersListSortingStyleSaveTarget.template(_:);
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

uint64_t sub_10052B8E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (*(v4 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_sectionsContextInstance))
  {
    __chkstk_darwin(a1);
    v12[2] = v6;
    v12[3] = v7;
    v12[4] = v8;
    v9 = v8;
    type metadata accessor for TTRRemindersListViewModelSourceSectionsContext();

    v10 = sub_1002E7DEC(v9, a4 & 1, sub_100531818, v12);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_10052B9E0(uint64_t a1, uint64_t a2, uint64_t a3)
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

id sub_10052BB64@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_listRepresentation);
  if (v3)
  {
    *a1 = v3;
    v4 = enum case for TTRRemindersListTargetContainer.TargetList.upToDateList(_:);
    v5 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
    (*(*(v5 - 8) + 104))(a1, v4, v5);
    type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
    swift_storeEnumTagMultiPayload();
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    v7 = sub_1004DD314;
  }

  else
  {
    *a1 = 0;
    type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
    swift_storeEnumTagMultiPayload();
    v6 = 0;
    v7 = sub_10057F4D0;
  }

  v8 = v7;
  v9 = (a1 + *(type metadata accessor for TTRRemindersListCreationTargetWithSectionID(0) + 20));
  *v9 = v8;
  v9[1] = v6;
  v10 = v3;

  return v10;
}

void sub_10052BC8C(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v3 = type metadata accessor for TTRSectionID();
  v38 = *(v3 - 8);
  __chkstk_darwin(v3);
  v37 = (&v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_template);
  if (v16)
  {
    v35 = v3;
    v17 = v16;

    TTRRemindersListTreeViewModel.parent(of:)();

    v18 = type metadata accessor for TTRRemindersListViewModel.Item();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v11, 1, v18) == 1)
    {

      sub_1000079B4(v11, &qword_100772140, &qword_10062D9F0);
    }

    else if ((*(v19 + 88))(v11, v18) == enum case for TTRRemindersListViewModel.Item.section(_:))
    {
      (*(v19 + 96))(v11, v18);
      (*(v13 + 32))(v15, v11, v12);
      TTRRemindersListViewModel.SectionHeader.id.getter();
      if ((*(v6 + 88))(v8, v5) == enum case for TTRRemindersListViewModel.SectionID.objectID(_:))
      {
        (*(v6 + 96))(v8, v5);
        v34 = *v8;
        sub_100058000(&qword_10076B780, &qword_10062D7C0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10062D420;
        v21 = v36;
        v22 = v13;
        v23 = TTRReminderEditor.changeItem.getter();
        v24 = [v23 objectID];

        *(inited + 32) = v24;
        sub_10001D5F8(inited);
        swift_setDeallocating();
        swift_arrayDestroy();
        type metadata accessor for TTRTemplateEditor();
        v40 = v17;
        v25 = v17;
        v26 = TTRReminderEditor.changeItem.getter();
        v27 = [v26 saveRequest];

        v39 = v21;
        type metadata accessor for TTRReminderEditor();
        sub_1005317D0(&unk_1007756A0, &type metadata accessor for TTRReminderEditor, &protocol conformance descriptor for TTRReminderEditor);
        TTRUndoableEditing.undoManager.getter();
        TTROneshotEditing.init(item:saveRequest:undoManager:)();
        v28 = v37;
        v29 = v38;
        v30 = v34;
        v31 = v35;
        *v37 = v34;
        (*(v29 + 104))(v28, enum case for TTRSectionID.sectioned(_:), v31);
        v32 = v30;
        TTRTemplateEditor.updateMembershipsOfReminders(withReminderIDs:destinationSectionID:initialSectionIDByReminderID:)();

        (*(v29 + 8))(v28, v31);
        (*(v22 + 8))(v15, v12);
      }

      else
      {
        (*(v13 + 8))(v15, v12);

        (*(v6 + 8))(v8, v5);
      }
    }

    else
    {

      (*(v19 + 8))(v11, v18);
    }
  }
}

uint64_t sub_10052C23C@<X0>(void *a2@<X8>)
{
  v3 = v2;
  v38 = a2;
  v4 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v36 = *(v4 - 8);
  v37 = v4;
  __chkstk_darwin(v4);
  v35 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v34 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.Item();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  v16 = type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
  __chkstk_darwin(v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v18 = 0;
  swift_storeEnumTagMultiPayload();

  TTRRemindersListTreeViewModel.parent(of:)();

  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    (*(v10 + 32))(v15, v8, v9);
    v19 = *(v2 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_listRepresentation);
    if (v19)
    {
      (*(v10 + 16))(v12, v15, v9);
      v20 = (*(v10 + 88))(v12, v9);
      if (v20 == enum case for TTRRemindersListViewModel.Item.sectionsContainer(_:))
      {
        goto LABEL_5;
      }

      if (v20 == enum case for TTRRemindersListViewModel.Item.section(_:))
      {
        v22 = *(v10 + 8);
        v23 = v19;
        v22(v15, v9);
        sub_10014AA9C(v18);
        v24 = v38;
        *v38 = v23;
        v25 = enum case for TTRRemindersListTargetContainer.TargetList.upToDateList(_:);
        v26 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
        (*(*(v26 - 8) + 104))(v24, v25, v26);
        swift_storeEnumTagMultiPayload();
        return (v22)(v12, v9);
      }

      if (v20 == enum case for TTRRemindersListViewModel.Item.reminder(_:))
      {
        (*(v10 + 96))(v12, v9);
        (*(v36 + 32))();
        v34 = v19;
        v28 = TTRRemindersListViewModel.ReminderID.objectID.getter();
        v29 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_remReminderByObjectID;
        swift_beginAccess();
        v30 = *(v3 + v29);

        v31 = sub_10013F404(v28, v30);

        (*(v36 + 8))(v35, v37);
        (*(v10 + 8))(v15, v9);
        if (v31)
        {
          sub_10014AA9C(v18);
          v32 = v38;
          *v38 = v31;
          v32[1] = v19;
          return swift_storeEnumTagMultiPayload();
        }

        return sub_10014AA38(v18, v38);
      }

      if (v20 == enum case for TTRRemindersListViewModel.Item.uncommittedReminder(_:) || v20 == enum case for TTRRemindersListViewModel.Item.placeholderReminder(_:) || v20 == enum case for TTRRemindersListViewModel.Item.completed(_:) || v20 == enum case for TTRRemindersListViewModel.Item.hashtags(_:) || v20 == enum case for TTRRemindersListViewModel.Item.templateStatus(_:) || v20 == enum case for TTRRemindersListViewModel.Item.tip(_:))
      {
LABEL_5:
        v21 = *(v10 + 8);
        v21(v15, v9);
        v21(v12, v9);
        return sub_10014AA38(v18, v38);
      }

      if (v20 != enum case for TTRRemindersListViewModel.Item.publicTemplatePreviewStatus(_:) && v20 != enum case for TTRRemindersListViewModel.Item.recentlyDeletedDisclaimer(_:))
      {
        v33 = v19;
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }
    }

    (*(v10 + 8))(v15, v9);
    return sub_10014AA38(v18, v38);
  }

  sub_1000079B4(v8, &qword_100772140, &qword_10062D9F0);
  return sub_10014AA38(v18, v38);
}

double sub_10052C7F8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  v11 = sub_10052C9BC();
  v12 = *(v5 + 16);
  v12(v10, a1, v4);
  v13 = *(v5 + 88);
  v14 = (v5 + 8);
  if (v13(v10, v4) == enum case for TTRRemindersListViewModel.Item.reminder(_:))
  {
    (*v14)(v10, v4);
    v12(v7, a1, v4);
    *(a2 + 24) = type metadata accessor for TTRShowRemindersInListDragAndDropPresenterCapability.MoveReminderSubjectForItem(0);
    *(a2 + 32) = &off_10072B818;
    v15 = sub_1000317B8(a2);
    sub_1004B7ED8(v7, v11, v15);
  }

  else
  {

    (*v14)(v10, v4);
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_10052C9BC()
{
  v1 = OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource____lazy_storage___dragAndDropCapability;
  if (*(v0 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource____lazy_storage___dragAndDropCapability))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource____lazy_storage___dragAndDropCapability);
  }

  else
  {
    type metadata accessor for TTRShowRemindersInListDragAndDropPresenterCapability();
    v2 = swift_allocObject();
    *(v2 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v2 + 24) = &off_10072D7C0;
    swift_unknownObjectWeakAssign();
    *(v0 + v1) = v2;
  }

  return v2;
}

BOOL sub_10052CA58(void *a1)
{
  v2 = sub_10052C9BC();
  if (sub_1004B91A4())
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(v2, ObjectType, v4);
    swift_unknownObjectRelease();
    v6 = [a1 objectID];
    v7 = TTRRemindersListTreeViewModel.existingReminderIDs(having:)();

    v8 = *(v7 + 16);

    return v8 == 0;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_10052CB2C(void *a1)
{
  swift_getObjectType();
  if (dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter())
  {
    swift_getObjectType();
    v3 = dispatch thunk of TTRRemindersListDataModelSourceShowCompletedContextType.matchesPredicate(_:)();
    swift_unknownObjectRelease();
    if ((v3 & 1) == 0)
    {
LABEL_18:
      v9 = 0;
      return v9 & 1;
    }
  }

  v4 = OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_listRepresentation;
  v5 = *(v1 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_listRepresentation);
  if (!v5)
  {
LABEL_7:
    if (qword_100767438 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100003E30(v10, qword_10078A5E0);
    sub_10000B0D8(a1, v32);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = 7104878;
      v14 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v14 = 136315394;
      v15 = *(v1 + v4);
      if (v15)
      {
        v16 = [v15 description];
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;
      }

      else
      {
        v19 = 0xE300000000000000;
        v17 = 7104878;
      }

      v20 = sub_100004060(v17, v19, &v31);

      *(v14 + 4) = v20;
      *(v14 + 12) = 2080;
      sub_10000C36C(v32, v33);
      dispatch thunk of TTRReminderProtocol.ttrList.getter();
      sub_10000794C(&v29, &v27, &unk_100775680, &qword_10062E3B0);
      if (v28)
      {
        sub_100005FD0(&v27, v26);
        sub_10000B0D8(v26, &v25);
        sub_100058000(&unk_100787E60, &unk_1006435E0);
        v13 = String.init<A>(describing:)();
        v22 = v21;
        sub_100004758(v26);
        sub_1000079B4(&v29, &unk_100775680, &qword_10062E3B0);
      }

      else
      {
        sub_1000079B4(&v29, &unk_100775680, &qword_10062E3B0);
        v22 = 0xE300000000000000;
      }

      sub_100004758(v32);
      v23 = sub_100004060(v13, v22, &v31);

      *(v14 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v11, v12, "matchesListPredicate returns false because one of the lists is nil {viewModelSourceList: %s, reminderList: %s}", v14, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100004758(v32);
    }

    goto LABEL_18;
  }

  sub_10000C36C(a1, a1[3]);
  v6 = v5;
  dispatch thunk of TTRReminderProtocol.ttrList.getter();
  if (!v30)
  {

    sub_1000079B4(&v29, &unk_100775680, &qword_10062E3B0);
    goto LABEL_7;
  }

  sub_100005FD0(&v29, v32);
  sub_100003540(0, &qword_100775690, NSObject_ptr);
  v7 = [v6 objectID];
  sub_10000C36C(v32, v33);
  v8 = dispatch thunk of TTRListProtocol.objectID.getter();
  v9 = static NSObject.== infix(_:_:)();

  sub_100004758(v32);
  return v9 & 1;
}

double sub_10052CF48@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10052C9BC();
  sub_1004B7628(a1, a2, a3);

  return result;
}

double sub_10052CFA4@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10052C9BC();
  sub_1004B7834(a1, a2);

  return result;
}

uint64_t sub_10052CFF8(uint64_t a1)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v108 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_100776348, &unk_100636910);
  v100 = *(v6 - 8);
  __chkstk_darwin(v6);
  v95 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v105 = &v87 - v9;
  v10 = type metadata accessor for TTRRemindersListViewModel.Item();
  v117 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v1;
  v13 = sub_10052C9BC();
  if (!sub_1004B91A4())
  {

    goto LABEL_56;
  }

  v15 = v14;
  ObjectType = swift_getObjectType();
  (*(v15 + 8))(v13, ObjectType, v15);
  swift_unknownObjectRelease();

  v17 = TTRRemindersListTreeViewModel.moveSteps(forIndentingReminders:canIndentUncommittedReminder:supportsIndentOutdentInSection:)();
  v19 = v18;
  v87 = v20;

  v88 = v17;
  if (!v17)
  {
LABEL_56:
    result = 0;
    v106 = 0;
    return result;
  }

  v99 = v19;
  v94 = v6;
  v107 = v3;
  v21 = _swiftEmptyArrayStorage;
  v121 = _swiftEmptyArrayStorage;
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = (v117 + 2);
    v24 = v117[2];
    v25 = a1 + ((*(v117 + 80) + 32) & ~*(v117 + 80));
    v116 = v117[9];
    v117 = v24;
    v26 = (v23 - 8);
    (v24)(v12, v25, v10);
    while (1)
    {
      v27 = TTRRemindersListViewModel.Item.reminderObjectID.getter();
      (*v26)(v12, v10);
      if (v27)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v21 = v121;
      }

      v25 += v116;
      if (!--v22)
      {
        break;
      }

      (v117)(v12, v25, v10);
    }
  }

  v28 = sub_10001D5F8(v21);

  v30 = v99;
  v31 = v94;
  v98 = *(v99 + 16);
  if (v98)
  {
    v32 = 0;
    v104 = 0;
    v33 = v108;
    v34 = v28 & 0xFFFFFFFFFFFFFF8;
    if (v28 < 0)
    {
      v34 = v28;
    }

    v111 = v34;
    v117 = (v28 + 56);
    v112 = (v108 + 8);
    v113 = v28 & 0xC000000000000001;
    v106 = _swiftEmptyArrayStorage;
    v114 = (v108 + 16);
    v97 = (v108 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *&v29 = 138412546;
    v89 = v29;
    v35 = v107;
    v36 = v95;
    while (1)
    {
      if (v32 >= *(v30 + 16))
      {
        goto LABEL_60;
      }

      v102 = (*(v100 + 80) + 32) & ~*(v100 + 80);
      v37 = *(v100 + 72);
      v103 = v32;
      v101 = v37;
      v38 = v30 + v102 + v37 * v32;
      v39 = v105;
      sub_10000794C(v38, v105, &qword_100776348, &unk_100636910);
      v40 = *(v31 + 48);
      v41 = *(v39 + v40);
      v119 = v41;
      v42 = *(v41 + 16);

      v116 = v42;
      if (v42)
      {
        break;
      }

      (*v114)(v36, v105, v35);
LABEL_49:
      *(v36 + v40) = v41;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v106 = sub_10054847C(0, v106[2] + 1, 1, v106);
      }

      v82 = v106[2];
      v81 = v106[3];
      if (v82 >= v81 >> 1)
      {
        v106 = sub_10054847C((v81 > 1), v82 + 1, 1, v106);
      }

      v83 = v103 + 1;
      v84 = v106;
      v106[2] = v82 + 1;
      v85 = v84 + v102 + v82 * v101;
      v32 = v83;
      sub_1004DD25C(v36, v85);

      sub_1000079B4(v105, &qword_100776348, &unk_100636910);
      v30 = v99;
      if (v32 == v98)
      {
        goto LABEL_58;
      }
    }

    v43 = 0;
    while (1)
    {
      if (v43 >= *(v41 + 16))
      {
        __break(1u);
LABEL_60:
        __break(1u);
      }

      v44 = v41 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v43;
      v115 = *(v33 + 16);
      v115(v5, v44, v35);
      v45 = TTRRemindersListViewModel.ReminderID.objectID.getter();
      if (v113)
      {
        break;
      }

      if (*(v28 + 16))
      {
        sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
        v52 = NSObject._rawHashValue(seed:)(*(v28 + 40));
        v53 = -1 << *(v28 + 32);
        v54 = v52 & ~v53;
        if (((*(v117 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
        {
LABEL_31:

          v35 = v107;
          v33 = v108;
          goto LABEL_19;
        }

        v55 = ~v53;
        while (1)
        {
          v56 = *(*(v28 + 48) + 8 * v54);
          v57 = static NSObject.== infix(_:_:)();

          if (v57)
          {
            break;
          }

          v54 = (v54 + 1) & v55;
          if (((*(v117 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        v35 = v107;
        v33 = v108;
LABEL_23:
        v45 = TTRRemindersListViewModel.ReminderID.objectID.getter();
        v47 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_remReminderByObjectID;
        v48 = v110;
        swift_beginAccess();
        v49 = *(v48 + v47);
        if ((v49 & 0xC000000000000001) != 0)
        {

          v50 = __CocoaDictionary.lookup(_:)();
          if (v50)
          {
            v118 = v50;
            sub_100003540(0, &qword_10076BB00, REMReminder_ptr);
            swift_dynamicCast();
            v51 = v120;
            goto LABEL_35;
          }

LABEL_39:

          goto LABEL_19;
        }

        if (*(v49 + 16))
        {

          v58 = sub_1002613B0(v45);
          if (v59)
          {
            v51 = *(*(v49 + 56) + 8 * v58);
LABEL_35:

            if (v51)
            {
              v109 = [v51 subtaskContext];
              if (v109)
              {
                v120 = 0;
                v60 = [v109 fetchObjectIDsOfUnsupportedSubtasksWithError:&v120];
                v61 = v120;
                if (v60)
                {
                  v62 = v60;
                  sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
                  v63 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
                  v64 = v61;

                  __chkstk_darwin(v65);
                  *(&v87 - 2) = &v119;
                  *(&v87 - 1) = v5;
                  v66 = v104;
                  sub_10052B31C(sub_1005317B4, (&v87 - 4), v63);
                  v104 = v66;
                }

                else
                {
                  v67 = v120;
                  v68 = _convertNSErrorToError(_:)();

                  swift_willThrow();
                  if (qword_100767438 != -1)
                  {
                    swift_once();
                  }

                  v104 = 0;
                  v69 = type metadata accessor for Logger();
                  sub_100003E30(v69, qword_10078A5E0);
                  v70 = v51;
                  swift_errorRetain();
                  v71 = Logger.logObject.getter();
                  v72 = static os_log_type_t.error.getter();

                  if (os_log_type_enabled(v71, v72))
                  {
                    v73 = swift_slowAlloc();
                    v96 = v68;
                    v91 = v72;
                    v74 = v70;
                    v93 = v70;
                    v75 = v73;
                    v76 = swift_slowAlloc();
                    v90 = v76;
                    v92 = swift_slowAlloc();
                    v120 = v92;
                    *v75 = v89;
                    v77 = [v74 objectID];
                    *(v75 + 4) = v77;
                    *v76 = v77;
                    *(v75 + 12) = 2080;
                    swift_getErrorValue();
                    v78 = Error.rem_errorDescription.getter();
                    v80 = sub_100004060(v78, v79, &v120);

                    *(v75 + 14) = v80;
                    _os_log_impl(&_mh_execute_header, v71, v91, "Failed to fetch objectIDs of completed subtasks of reminder {reminder.objectID: %@, error: %s}", v75, 0x16u);
                    sub_1000079B4(v90, &unk_10076DF80, &qword_10062F730);

                    sub_100004758(v92);
                  }

                  else
                  {
                  }
                }
              }

              else
              {
              }
            }

            goto LABEL_19;
          }

          goto LABEL_39;
        }
      }

LABEL_19:
      ++v43;
      (*v112)(v5, v35);
      if (v43 == v116)
      {
        v41 = v119;
        v31 = v94;
        v40 = *(v94 + 48);
        v36 = v95;
        v115(v95, v105, v35);
        goto LABEL_49;
      }
    }

    v46 = __CocoaSet.contains(_:)();

    if ((v46 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_23;
  }

  v106 = _swiftEmptyArrayStorage;
LABEL_58:

  return v88;
}

uint64_t sub_10052DC58(id *a1, uint64_t *a2)
{
  v4 = sub_100058000(&qword_10076B070, &unk_100637140);
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  TTRRemindersListViewModel.ReminderID.groupID.getter();
  TTRRemindersListViewModel.ReminderID.init(objectID:groupID:)();
  v10 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_100548688(0, v10[2] + 1, 1, v10);
    *a2 = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_100548688((v12 > 1), v13 + 1, 1, v10);
    *a2 = v10;
  }

  v10[2] = v13 + 1;
  return (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v13, v8, v5);
}

uint64_t sub_10052DE2C(uint64_t a1)
{
  v1 = sub_10052C9BC();
  v3 = sub_1004B91A4();
  if (v3)
  {
    v4 = v2;
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(v1, ObjectType, v4);
    swift_unknownObjectRelease();

    v3 = TTRRemindersListTreeViewModel.moveSteps(forOutdentingReminders:canOutdentUncommittedReminder:supportsIndentOutdentInSection:)();
  }

  else
  {
  }

  return v3;
}

uint64_t sub_10052DF1C()
{
  v0 = sub_100058000(&unk_10076DF20, &unk_10063BD50);
  __chkstk_darwin(v0 - 8);
  v2 = &v5 - v1;
  v3 = type metadata accessor for TTRListOrCustomSmartList();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  return TTRRemindersListSectionMenuCapabilities.init(listOrCustomSmartList:canSupportAddSection:)();
}

id sub_10052E004@<X0>(void *a1@<X1>, unsigned int *a2@<X2>, uint64_t (*a3)(void)@<X3>, void *a4@<X8>)
{
  v6 = *(v4 + *a1);
  if (v6)
  {
    *a4 = v6;
    v7 = *a2;
    v13 = v6;
    v8 = (a3)(0);
    v9 = *(v8 - 8);
    (*(v9 + 104))(a4, v7, v8);
    (*(v9 + 56))(a4, 0, 1, v8);
    v10 = v13;
  }

  else
  {
    v11 = a3();
    (*(*(v11 - 8) + 56))(a4, 1, 1, v11);
    v10 = 0;
  }

  return v10;
}

uint64_t sub_10052E120@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListViewModel.ListInfo.MacOS();
  __chkstk_darwin(v4 - 8);
  v6 = v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.ListInfo.IOS();
  __chkstk_darwin(v7 - 8);
  v94 = v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&qword_1007693B0, &unk_100631DC0);
  __chkstk_darwin(v9 - 8);
  v93 = v71 - v10;
  v11 = sub_100058000(&qword_1007693B8, &unk_10062DEC0);
  __chkstk_darwin(v11 - 8);
  v90 = v71 - v12;
  v13 = type metadata accessor for TTRRemindersListViewModel.SupportsEditableSections();
  v88 = *(v13 - 1);
  v89 = v13;
  __chkstk_darwin(v13);
  v87 = v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100058000(&unk_10076DF20, &unk_10063BD50);
  __chkstk_darwin(v15 - 8);
  v17 = v71 - v16;
  v18 = type metadata accessor for TTRRemindersListSectionMenuCapabilities();
  v85 = *(v18 - 8);
  v86 = v18;
  __chkstk_darwin(v18);
  v20 = v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100058000(&unk_100780980, &unk_100631DD0);
  __chkstk_darwin(v21 - 8);
  v23 = v71 - v22;
  v24 = sub_100058000(&unk_100775640, &unk_10062DED0);
  __chkstk_darwin(v24 - 8);
  v95 = v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v96 = (v71 - v27);
  v28 = type metadata accessor for TTRListColors.Color();
  v91 = *(v28 - 8);
  v92 = v28;
  __chkstk_darwin(v28);
  v30 = v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_100058000(&qword_1007757F0, &unk_10062DE70);
  __chkstk_darwin(v31 - 8);
  v33 = v71 - v32;
  v34 = type metadata accessor for TTRTemplatePublicLinkData();
  __chkstk_darwin(v34);
  v38 = *(v2 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_template);
  if (v38)
  {
    v80 = v37;
    v81 = v35;
    v82 = v6;
    v83 = a1;
    v39 = v71 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = type metadata accessor for Date();
    (*(*(v40 - 8) + 56))(v33, 1, 1, v40);
    v41 = v38;
    v79 = v39;
    TTRTemplatePublicLinkData.init(template:now:)();
    type metadata accessor for TTRListColors();
    v97[3] = sub_100003540(0, &qword_100770AF8, REMTemplate_ptr);
    v97[4] = &protocol witness table for REMTemplate;
    v97[0] = v41;
    v42 = v41;
    static TTRListColors.color(for:)();
    sub_1000079B4(v97, &unk_100775680, &qword_10062E3B0);
    v43 = [v42 accountCapabilities];
    v78 = [v43 supportsSections];

    v44 = *(v2 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_listRepresentation);
    v84 = v30;
    if (v44 && (v45 = [v44 objectID]) != 0)
    {
      v46 = v96;
      *v96 = v45;
      *(v46 + 8) = 0;
      v47 = enum case for TTRListType.list(_:);
      v48 = type metadata accessor for TTRListType();
      v49 = v42;
      v50 = *(v48 - 8);
      (*(v50 + 104))(v46, v47, v48);
      (*(v50 + 56))(v46, 0, 1, v48);
      v42 = v49;
    }

    else
    {
      v51 = type metadata accessor for TTRListType();
      v46 = v96;
      (*(*(v51 - 8) + 56))(v96, 1, 1, v51);
    }

    sub_10000794C(v46, v95, &unk_100775640, &unk_10062DED0);
    v52 = [v42 name];
    v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v53;

    v75 = TTRListColors.Color.nativeColor.getter();
    v74 = *(v2 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_remindersCount + 16);
    if (v74)
    {
      v73 = 0;
    }

    else
    {
      v73 = *(v2 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_remindersCount + 8);
    }

    v57 = type metadata accessor for TTRRemindersListViewModel.ListSharingInfo();
    v58 = *(*(v57 - 8) + 56);
    v72 = v23;
    v58(v23, 1, 1, v57);
    v59 = type metadata accessor for TTRListOrCustomSmartList();
    (*(*(v59 - 8) + 56))(v17, 1, 1, v59);
    TTRRemindersListSectionMenuCapabilities.init(listOrCustomSmartList:canSupportAddSection:)();
    v71[1] = TTRRemindersListSectionMenuCapabilities.canSupportAddSection.getter();
    (*(v85 + 8))(v20, v86);
    v60 = &enum case for TTRRemindersListViewModel.SupportsEditableSections.firstLevel(_:);
    if (!v78)
    {
      v60 = &enum case for TTRRemindersListViewModel.SupportsEditableSections.unsupported(_:);
    }

    (*(v88 + 104))(v87, *v60, v89);
    v61 = [v42 objectID];
    v62 = [v61 stringRepresentation];
    v89 = v42;
    v63 = v62;

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = type metadata accessor for TTRRemindersListViewModel.HashtagsState();
    (*(*(v64 - 8) + 56))(v90, 1, 1, v64);
    v65 = v80;
    v66 = v93;
    v67 = v79;
    v68 = v81;
    (*(v80 + 16))(v93, v79, v81);
    (*(v65 + 56))(v66, 0, 1, v68);
    TTRRemindersListViewModel.ListInfo.IOS.init(showsActionMenuButton:hasBottomInsetForPencilInput:usesFlatDiffableSnapshot_workaroundRdar135908527:)();
    TTRRemindersListViewModel.ListInfo.MacOS.init(wantsTopShadow:)();
    v69 = v83;
    TTRRemindersListViewModel.ListInfo.init(listType:name:color:reminderCount:sharingInfo:canCreateNewReminder:canToggleCompletedReminderVisbility:canAddSection:canClearCompletedReminders:canSaveAsTemplate:supportsEditableSections:canBePrinted:completedRemindersShown:hasDefaultNewReminderButton:completedRemindersCount:canBeDeleted:collapsedStatesAutosaveName:canCreateCustomSmartListForHashtagsState:hashtagsStateToShow:templateStatus:isOriginOfExistingTemplate:isPublicTemplatePreview:shouldCategorizeGroceryItems:shouldAutoCategorizeItems:isRecentlyDeletedList:iOS:macOS:)();

    sub_1000079B4(v96, &unk_100775640, &unk_10062DED0);
    (*(v91 + 8))(v84, v92);
    (*(v65 + 8))(v67, v68);
    v70 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
    return (*(*(v70 - 8) + 56))(v69, 0, 1, v70);
  }

  else
  {
    v54 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
    v55 = *(*(v54 - 8) + 56);

    return v55(a1, 1, 1, v54);
  }
}

double sub_10052EC40()
{

  return result;
}

uint64_t sub_10052ECA0()
{
  v0 = sub_10056FD38();
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_template);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRShowTemplateViewModelSource(uint64_t a1)
{
  result = qword_10078A650;
  if (!qword_10078A650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10052EE04(void *a1)
{
  v3 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  *&v4 = __chkstk_darwin(v3 - 8).n128_u64[0];
  v6 = &v20 - v5;
  v7 = [a1 objectID];
  v8 = OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_template;
  v9 = *(v1 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_template);
  if (!v9)
  {
    if (v7)
    {
      goto LABEL_6;
    }

LABEL_11:
    v12 = 1;
    goto LABEL_12;
  }

  v10 = [v9 objectID];
  v11 = v10;
  if (!v7)
  {
    if (v10)
    {
      v12 = 0;
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  if (v10)
  {
    sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
    v12 = static NSObject.== infix(_:_:)();

LABEL_9:
    v7 = v11;
    goto LABEL_10;
  }

LABEL_6:
  v12 = 0;
LABEL_10:

LABEL_12:
  v13 = [a1 showingLargeAttachments];
  *(v1 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_showLargeAttachmentsValue) = v13;
  v14 = *(v1 + v8);
  *(v1 + v8) = a1;

  v15 = a1;
  sub_10052E120(v6);
  sub_10056F540(v6);
  if ((v12 & 1) == 0)
  {
    v16 = v1 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v17 = *(v16 + 8);
      ObjectType = swift_getObjectType();
      (*(v17 + 88))(1, ObjectType, v17);
      swift_unknownObjectRelease();
    }
  }

  return sub_1000079B4(v6, &unk_10078A380, &qword_10062DE60);
}

uint64_t sub_10052EFDC(id a1, void *a2, uint64_t a3, uint64_t a4)
{
  v155 = a4;
  v173 = a3;
  v7 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v7 - 8);
  v154 = &v150 - v8;
  v9 = sub_100058000(&unk_10076B050, &unk_100631DF0);
  __chkstk_darwin(v9 - 8);
  v226 = &v150 - v10;
  v225 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v184 = *(v225 - 8);
  __chkstk_darwin(v225);
  v224 = (&v150 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v223 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.TextSize();
  v185 = *(v223 - 8);
  __chkstk_darwin(v223);
  v222 = &v150 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor();
  v186 = *(v221 - 8);
  __chkstk_darwin(v221);
  v220 = &v150 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.TextStyle();
  v188 = *(v219 - 8);
  __chkstk_darwin(v219);
  v218 = &v150 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100058000(&unk_10076B060, &unk_1006324D0);
  __chkstk_darwin(v15 - 8);
  v217 = &v150 - v16;
  v216 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
  v181 = *(v216 - 8);
  __chkstk_darwin(v216);
  v215 = &v150 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.Separator();
  v180 = *(v214 - 8);
  __chkstk_darwin(v214);
  v168 = &v150 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v213 = &v150 - v20;
  v212 = type metadata accessor for REMRemindersListDataView.SectionLite.SectionType();
  v179 = *(v212 - 8);
  __chkstk_darwin(v212);
  v169 = &v150 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = type metadata accessor for TTRListColors.Color();
  v178 = *(v231 - 8);
  __chkstk_darwin(v231);
  v228 = &v150 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v177 = *(v211 - 8);
  __chkstk_darwin(v211);
  v210 = &v150 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v209 = &v150 - v25;
  v208 = sub_100058000(&qword_10076E8D8, &unk_100645250);
  __chkstk_darwin(v208);
  v232 = (&v150 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v27);
  v207 = &v150 - v28;
  v206 = type metadata accessor for TTRRemindersListTreeViewModel.Section();
  v227 = *(v206 - 8);
  __chkstk_darwin(v206);
  v205 = &v150 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_100058000(&qword_10076E8D0, &unk_10063ABA0);
  __chkstk_darwin(v151);
  v153 = &v150 - v30;
  v31 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v31 - 8);
  v152 = &v150 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v156 = &v150 - v34;
  v198 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v200 = *(v198 - 8);
  __chkstk_darwin(v198);
  v199 = &v150 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v202 = &v150 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_100058000(&qword_100769378, &qword_10062DE80);
  __chkstk_darwin(v39 - 8);
  v230 = (&v150 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v41);
  v43 = &v150 - v42;
  v172 = type metadata accessor for REMRemindersListDataView.SectionsModel();
  v204 = *(v172 - 8);
  __chkstk_darwin(v172);
  v171 = &v150 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v46 = __chkstk_darwin(v45).n128_u64[0];
  v48 = &v150 - v47;
  v49 = OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_template;
  v157 = v4;
  v50 = *(v4 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_template);
  v203 = a1;
  v229 = v36;
  if (!v50)
  {
    if (!a1)
    {
      v54 = 1;
      LODWORD(v201) = 1;
      v55 = v157;
      if (!a2)
      {
        goto LABEL_26;
      }

      goto LABEL_23;
    }

    v51 = a2;
    v53 = 0;
LABEL_7:
    v56 = [a1 sortingStyle];
    v57 = v56;
    if (v53)
    {
      if (v56)
      {
        v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v60 = v59;
        if (v58 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v60 == v61)
        {
          LODWORD(v201) = 1;
        }

        else
        {
          LODWORD(v201) = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        a1 = v203;
      }

      else
      {
        LODWORD(v201) = 0;
        v57 = v53;
      }
    }

    else
    {
      if (!v56)
      {
        LODWORD(v201) = 1;
        goto LABEL_20;
      }

      LODWORD(v201) = 0;
    }

LABEL_20:
    v62 = v157;
    v53 = *(v157 + v49);
    *(v157 + v49) = a1;
    v55 = v62;
    v63 = a1;
    v54 = 0;
    goto LABEL_21;
  }

  v51 = a2;
  v52 = [v50 sortingStyle];
  v53 = v52;
  if (a1)
  {
    goto LABEL_7;
  }

  v54 = 1;
  if (v52)
  {
    LODWORD(v201) = 0;
    v55 = v157;
LABEL_21:

    goto LABEL_22;
  }

  LODWORD(v201) = 1;
  v55 = v157;
LABEL_22:
  a2 = v51;
  if (!v51)
  {
    goto LABEL_26;
  }

LABEL_23:
  v64 = *(v55 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_listRepresentation);
  *(v55 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_listRepresentation) = a2;
  v65 = a2;

  v66 = v55 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v67 = *(v66 + 8);
    ObjectType = swift_getObjectType();
    (*(v67 + 104))(ObjectType, v67);
    swift_unknownObjectRelease();
  }

LABEL_26:
  REMRemindersListDataView.TemplateSectionsModel.sectionsModel.getter();
  REMRemindersListDataView.SectionsModel.remindersCount.getter();
  v69 = *(v204 + 8);
  v204 += 8;
  v170 = v69;
  v69(v48, v172);
  v70 = v230;
  sub_10000794C(v43, v230, &qword_100769378, &qword_10062DE80);
  v71 = v229;
  v72 = (*(v37 + 48))(v70, 1, v229);
  if (v72 == 1)
  {
    v73 = 0;
    v74 = 0;
  }

  else
  {
    v75 = v202;
    (*(v37 + 32))(v202, v70, v71);
    v73 = REMRemindersListDataView.CountByCompleted.completed.getter();
    v74 = REMRemindersListDataView.CountByCompleted.incomplete.getter();
    (*(v37 + 8))(v75, v71);
  }

  result = sub_1000079B4(v43, &qword_100769378, &qword_10062DE80);
  v77 = v55 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_remindersCount;
  *v77 = v73;
  *(v77 + 8) = v74;
  *(v77 + 16) = v72 == 1;
  if ((v54 & 1) == 0)
  {
    v78 = v203;
    v79 = v78;
    if ((v201 & 1) == 0)
    {
      v128 = [v78 sortingStyle];
      v129 = v199;
      REMSortingStyle.dataViewSortingStyle.getter();

      sub_10057A85C(v129, 1, v130);
      return v200[1](v129, v198);
    }

    v80 = v156;
    sub_10052E120(v156);
    v166 = static TTRRemindersListViewModel.SectionHeaderTitle.Separator.fullWidthOrHiddenForFirstSection.getter();
    v167 = v81;
    v82 = v171;
    REMRemindersListDataView.TemplateSectionsModel.sectionsModel.getter();
    v83 = REMRemindersListDataView.SectionsModel.sections.getter();
    v170(v82, v172);
    v84 = *(v83 + 16);
    if (v84)
    {
      *&v233 = _swiftEmptyArrayStorage;
      sub_1004A22E0(0, v84, 0);
      v203 = *(v83 + 16);
      v199 = type metadata accessor for REMRemindersListDataView.SectionLite();
      v85 = *(v199 - 1);
      v197 = v83 + ((*(v85 + 80) + 32) & ~*(v85 + 80));
      v86 = v233;
      v196 = type metadata accessor for TTRListColors();
      v87 = 0;
      v195 = v85 + 16;
      v198 = v85;
      v194 = v85 + 32;
      v193 = (v179 + 11);
      v192 = enum case for REMRemindersListDataView.SectionLite.SectionType.sectioned(_:);
      v165 = enum case for REMRemindersListDataView.SectionLite.SectionType.sectionless(_:);
      v164 = enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.fullWidth(_:);
      v163 = (v180 + 104);
      v191 = (v178 + 2);
      v190 = (v178 + 7);
      v189 = enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextStyle.plain(_:);
      v188 += 13;
      v187 = enum case for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor.regular(_:);
      v186 += 13;
      v185 += 13;
      v184 += 13;
      v183 = (v181 + 2);
      v182 = (v181 + 7);
      ++v181;
      v162 = (v179 + 12);
      v161 = (v180 + 16);
      v160 = (v180 + 8);
      LODWORD(v180) = enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextSize.regular(_:);
      v179 = (v177 + 2);
      ++v178;
      ++v177;
      v159 = enum case for TTRRemindersListViewModel.SectionID.sectionless(_:);
      v158 = enum case for TTRRemindersListViewModel.SectionID.objectID(_:);
      v176 = v227 + 32;
      v88 = v169;
      v202 = v79;
      v201 = v83;
      v200 = v84;
      while (v203 != v87)
      {
        if (v87 >= *(v83 + 16))
        {
          goto LABEL_57;
        }

        v230 = v86;
        v89 = v208;
        v90 = *(v208 + 48);
        v91 = v198;
        v92 = v207;
        v93 = v199;
        (*(v198 + 16))(&v207[v90], v197 + *(v198 + 72) * v87, v199);
        v94 = v232;
        *v232 = v87;
        v95 = v88;
        v96 = *(v89 + 48);
        (*(v91 + 32))(v94 + v96, &v92[v90], v93);
        v235 = sub_100003540(0, &qword_100770AF8, REMTemplate_ptr);
        v236 = &protocol witness table for REMTemplate;
        v234 = v79;
        v97 = v79;
        v98 = v228;
        static TTRListColors.color(for:)();
        sub_1000079B4(&v234, &unk_100775680, &qword_10062E3B0);
        v229 = v96;
        v88 = v95;
        REMRemindersListDataView.SectionLite.type.getter();
        v99 = v212;
        v100 = (*v193)(v95, v212);
        if (v100 == v192)
        {
          (*v162)(v95, v99);
          v101 = v95[1];
          v175 = *v95;
          v174 = v101;

          v102 = v213;
          v166(v87);
          v103 = v214;
          (*v161)(v168, v102, v214);
          v104 = v217;
          v105 = v231;
          (*v191)(v217, v98, v231);
          (*v190)(v104, 0, 1, v105);
          (*v188)(v218, v189, v219);
          v106 = v98;
          (*v186)(v220, v187, v221);
          (*v185)(v222, v180, v223);
          v107 = v215;
          TTRRemindersListViewModel.SectionHeaderTitle.init(text:disabled:textStyle:defaultTextColor:textSize:hidesTitleIfEmpty:separator:disclosureColor:ttrAccessibilityIsPlaceholder:)();
          v109 = v224;
          v108 = v225;
          *v224 = v175;
          (*v184)(v109, v158, v108);
          v110 = v226;
          v111 = v216;
          (*v183)(v226, v107, v216);
          (*v182)(v110, 0, 1, v111);
          v112 = v209;
          TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
          v113 = v107;
          v88 = v169;
          (*v181)(v113, v111);
          (*v160)(v102, v103);
        }

        else
        {
          if (v100 != v165)
          {
            goto LABEL_58;
          }

          v114 = v171;
          REMRemindersListDataView.TemplateSectionsModel.sectionsModel.getter();
          REMRemindersListDataView.SectionsModel.sections.getter();
          v170(v114, v172);

          (*v163)(v213, v164, v214);
          v115 = v217;
          v106 = v228;
          v116 = v231;
          (*v191)(v217, v228, v231);
          (*v190)(v115, 0, 1, v116);
          (*v188)(v218, v189, v219);
          (*v186)(v220, v187, v221);
          (*v185)(v222, v180, v223);
          v117 = v215;
          TTRRemindersListViewModel.SectionHeaderTitle.init(text:disabled:textStyle:defaultTextColor:textSize:hidesTitleIfEmpty:separator:disclosureColor:ttrAccessibilityIsPlaceholder:)();
          v118 = [v97 objectID];
          v120 = v224;
          v119 = v225;
          *v224 = v118;
          (*v184)(v120, v159, v119);
          v121 = v226;
          v122 = v216;
          (*v183)(v226, v117, v216);
          (*v182)(v121, 0, 1, v122);
          v112 = v209;
          TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
          (*v181)(v117, v122);
        }

        v123 = v211;
        (*v179)(v210, v112, v211);
        v124 = v232;
        REMRemindersListDataView.SectionLite.reminders.getter();
        v125 = v205;
        TTRRemindersListTreeViewModel.Section.init(header:reminders:isDroppedWhenEmpty:)();
        (*v178)(v106, v231);
        (*v177)(v112, v123);
        sub_1000079B4(v124, &qword_10076E8D8, &unk_100645250);
        v86 = v230;
        *&v233 = v230;
        v127 = v230[2];
        v126 = v230[3];
        if (v127 >= v126 >> 1)
        {
          sub_1004A22E0((v126 > 1), v127 + 1, 1);
          v86 = v233;
        }

        ++v87;
        v86[2] = v127 + 1;
        (*(v227 + 32))(v86 + ((*(v227 + 80) + 32) & ~*(v227 + 80)) + *(v227 + 72) * v127, v125, v206);
        v79 = v202;
        v83 = v201;
        if (v200 == v87)
        {

          v80 = v156;
          goto LABEL_45;
        }
      }

      __break(1u);
LABEL_57:
      __break(1u);
      while (1)
      {
LABEL_58:
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
      }
    }

    v86 = _swiftEmptyArrayStorage;
LABEL_45:
    v131 = v152;
    sub_10000794C(v80, v152, &unk_10078A380, &qword_10062DE60);
    v132 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
    v133 = *(v132 - 8);
    if ((*(v133 + 48))(v131, 1, v132) == 1)
    {
      sub_1000079B4(v131, &unk_10078A380, &qword_10062DE60);
      v134 = type metadata accessor for TTRRemindersListViewModel.SupportsEditableSections();
      (*(*(v134 - 8) + 56))(v153, 1, 1, v134);
    }

    else
    {
      v135 = v153;
      TTRRemindersListViewModel.ListInfo.supportsEditableSections.getter();
      (*(v133 + 8))(v131, v132);
      v136 = type metadata accessor for TTRRemindersListViewModel.SupportsEditableSections();
      v137 = *(v136 - 8);
      (*(v137 + 56))(v135, 0, 1, v136);
      v138 = (*(v137 + 88))(v135, v136);
      if (v138 != enum case for TTRRemindersListViewModel.SupportsEditableSections.unsupported(_:))
      {
        if (v138 == enum case for TTRRemindersListViewModel.SupportsEditableSections.firstLevel(_:))
        {
          v139 = v86;
          v140 = v171;
          REMRemindersListDataView.TemplateSectionsModel.sectionsModel.getter();
          v141 = REMRemindersListDataView.SectionsModel.sections.getter();
          v170(v140, v172);
          v142 = sub_100003540(0, &qword_10076E8F8, REMTemplateSection_ptr);
          type metadata accessor for TTRRemindersListViewModelSourceSectionsContext();
          v143 = swift_allocObject();
          *(v143 + 64) = 0;
          *(v143 + 24) = 0;
          *(v143 + 32) = 0;
          *(v143 + 16) = 0;
          swift_unknownObjectWeakInit();
          *(v143 + 128) = 0u;
          *(v143 + 144) = 0u;
          *(v143 + 96) = 0u;
          *(v143 + 112) = 0u;
          *(v143 + 64) = &off_10072ED30;
          v144 = v157;
          swift_unknownObjectWeakAssign();
          *(v143 + 80) = v141;
          *(v143 + 88) = v142;
          *(v143 + 72) = v141;
          *(v143 + 40) = &_swiftEmptySetSingleton;
          *(v143 + 48) = 1;
          *(v144 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_sectionsContextInstance) = v143;

LABEL_54:

          v145 = type metadata accessor for TTRRemindersListObjectIDOnlyReminderIDProvider();
          v146 = static TTRRemindersListReminderIDProviding<>.uniqueWithinTree.getter();
          v147 = type metadata accessor for TTRRemindersListViewModel.Item();
          v148 = v154;
          (*(*(v147 - 8) + 56))(v154, 1, 1, v147);
          v235 = v145;
          v236 = &protocol witness table for TTRRemindersListObjectIDOnlyReminderIDProvider;
          v234 = v146;
          sub_10000B0D8(&v234, &v233);
          v149 = swift_allocObject();
          *(v149 + 16) = v139;
          sub_100005FD0(&v233, v149 + 24);
          *(v149 + 64) = v144;

          sub_100586238(1, v80, sub_100070528, v149, v155, 0, v148);

          sub_1000079B4(v148, &qword_100772140, &qword_10062D9F0);
          sub_1000079B4(v80, &unk_10078A380, &qword_10062DE60);

          return sub_100004758(&v234);
        }

        if (v138 != enum case for TTRRemindersListViewModel.SupportsEditableSections.secondLevel(_:))
        {
          goto LABEL_58;
        }
      }
    }

    v139 = v86;
    v144 = v157;
    *(v157 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_sectionsContextInstance) = 0;
    goto LABEL_54;
  }

  return result;
}

double sub_100530DB0@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_template);
  if (v2 && (v3 = *(v1 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_listRepresentation)) != 0)
  {
    *(a1 + 24) = &type metadata for DragAndDropREMTemplateTarget;
    *(a1 + 32) = &off_10072D8D0;
    *a1 = v2;
    *(a1 + 8) = v3;
    v7 = v3;
    v4 = v2;

    v5 = v7;
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

void sub_100530E38(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *(v2 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_sectionsContextInstance);
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

uint64_t sub_100530F58()
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

void *sub_100531210(uint64_t a1, uint64_t a2)
{
  if (!*(v2 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_sectionsContextInstance))
  {
    return 0;
  }

  v4 = sub_1002E28FC(a2);

  return v4;
}

id sub_1005312B4@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v5 = *(v1 + 8);
  *a1 = *v1;
  a1[1] = v5;
  type metadata accessor for TTRRemindersListReminderActionTarget(0);
  swift_storeEnumTagMultiPayload();
  v3 = v2;

  return v5;
}

id sub_100531320@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  v8 = *(v2 + 8);
  *a2 = a1;
  a2[1] = v4;
  a2[2] = v8;
  type metadata accessor for TTRRemindersListReminderActionTarget(0);
  swift_storeEnumTagMultiPayload();
  v5 = a1;
  v6 = v4;

  return v8;
}

BOOL sub_100531398(uint64_t a1)
{
  v1 = type metadata accessor for TTRListEditor.ReminderParentListMutationOperation();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRListEditor();
  static TTRListEditor.actualOperation(forChangingParentListOf:to:allowsLossyCopying:)();
  v5 = (*(v2 + 88))(v4, v1);
  v6 = v5;
  v7 = enum case for TTRListEditor.ReminderParentListMutationOperation.disallowed(_:);
  if (v5 == enum case for TTRListEditor.ReminderParentListMutationOperation.disallowed(_:))
  {
    goto LABEL_7;
  }

  if (v5 != enum case for TTRListEditor.ReminderParentListMutationOperation.move(_:) && v5 != enum case for TTRListEditor.ReminderParentListMutationOperation.copyAndDelete(_:))
  {
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
LABEL_7:
    (*(v2 + 96))(v4, v1);
    v9 = type metadata accessor for TTRListEditor.ReminderParentListMutationOperation.DisallowReason();
    (*(*(v9 - 8) + 8))(v4, v9);
  }

  return v6 != v7;
}

void *sub_100531534()
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

uint64_t sub_1005317D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100531860(uint64_t a1, void *a2, void *a3)
{
  v5 = type metadata accessor for TTRListEditor.ReminderParentListMutationOperation();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003540(0, &qword_100775690, NSObject_ptr);
  v9 = [a2 list];
  v10 = [v9 objectID];

  v11 = [a3 objectID];
  LOBYTE(v9) = static NSObject.== infix(_:_:)();

  if ((v9 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for TTRListEditor();
  static TTRListEditor.actualOperation(forChangingParentListOf:to:allowsLossyCopying:)();
  v12 = (*(v6 + 88))(v8, v5);
  if (v12 == enum case for TTRListEditor.ReminderParentListMutationOperation.disallowed(_:))
  {
    (*(v6 + 96))(v8, v5);
    v13 = type metadata accessor for TTRListEditor.ReminderParentListMutationOperation.DisallowReason();
    (*(*(v13 - 8) + 8))(v8, v13);
    return 0;
  }

  if (v12 == enum case for TTRListEditor.ReminderParentListMutationOperation.move(_:) || v12 == enum case for TTRListEditor.ReminderParentListMutationOperation.copyAndDelete(_:))
  {
    return 1;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100531AB8()
{
  v1 = v0;
  v2 = sub_100058000(&qword_100776A98, &qword_100636ED0);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v16 - v6;
  v8 = type metadata accessor for TTRISmartListFilterEditorHashtagsViewModel(0);
  v9 = *(v8 + 32);
  sub_100531CE4(v1 + v9, v7);
  v10 = type metadata accessor for TTRIHashtagWrappingCollectionView.LayoutResult();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v7, 1, v10) == 1)
  {
    v13 = v7;
  }

  else
  {
    v14 = TTRIHashtagWrappingCollectionView.LayoutResult.totalRowCountIncludingHidden.getter();
    v17 = *(v11 + 8);
    v17(v7, v10);
    if (v14 <= 3 || (*(v1 + *(v8 + 28)) & 1) != 0)
    {
      return 0;
    }

    sub_100531CE4(v1 + v9, v4);
    if (v12(v4, 1, v10) != 1)
    {
      TTRIHashtagWrappingCollectionView.LayoutResult.hiddenHashtagLabelCount.getter();
      v17(v4, v10);
      return static TTRLocalizableStrings.Hashtags.showMoreCountText(withCount:)();
    }

    v13 = v4;
  }

  sub_100531D54(v13);
  return 0;
}

uint64_t type metadata accessor for TTRISmartListFilterEditorHashtagsViewModel(uint64_t a1)
{
  result = qword_10078ACC8;
  if (!qword_10078ACC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100531CE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100776A98, &qword_100636ED0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100531D54(uint64_t a1)
{
  v2 = sub_100058000(&qword_100776A98, &qword_100636ED0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_100531DBC(char *a1, char *a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = (v4 + ((v3 + 16) & ~v3));
  }

  else
  {
    v6 = a1;
    v7 = a3[5];
    v9 = type metadata accessor for REMHashtagLabelSpecifier();
    v10 = *(*(v9 - 8) + 16);

    v10(&v6[v7], &a2[v7], v9);
    v11 = a3[7];
    v6[a3[6]] = a2[a3[6]];
    v6[v11] = a2[v11];
    v12 = a3[8];
    v13 = type metadata accessor for TTRIHashtagWrappingCollectionView.LayoutResult();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(&a2[v12], 1, v13))
    {
      v15 = sub_100058000(&qword_100776A98, &qword_100636ED0);
      memcpy(&v6[v12], &a2[v12], *(*(v15 - 8) + 64));
    }

    else
    {
      (*(v14 + 16))(&v6[v12], &a2[v12], v13);
      (*(v14 + 56))(&v6[v12], 0, 1, v13);
    }
  }

  return v6;
}

uint64_t sub_100531F84(char *a1, uint64_t a2)
{

  v4 = *(a2 + 20);
  v5 = type metadata accessor for REMHashtagLabelSpecifier();
  (*(*(v5 - 8) + 8))(&a1[v4], v5);
  v6 = *(a2 + 32);
  v7 = type metadata accessor for TTRIHashtagWrappingCollectionView.LayoutResult();
  v10 = *(v7 - 8);
  result = (*(v10 + 48))(&a1[v6], 1, v7);
  if (!result)
  {
    v9 = *(v10 + 8);

    return v9(&a1[v6], v7);
  }

  return result;
}

char *sub_100532094(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = type metadata accessor for REMHashtagLabelSpecifier();
  v8 = *(*(v7 - 8) + 16);

  v8(&a1[v6], &a2[v6], v7);
  v9 = a3[7];
  a1[a3[6]] = a2[a3[6]];
  a1[v9] = a2[v9];
  v10 = a3[8];
  v11 = type metadata accessor for TTRIHashtagWrappingCollectionView.LayoutResult();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(&a2[v10], 1, v11))
  {
    v13 = sub_100058000(&qword_100776A98, &qword_100636ED0);
    memcpy(&a1[v10], &a2[v10], *(*(v13 - 8) + 64));
  }

  else
  {
    (*(v12 + 16))(&a1[v10], &a2[v10], v11);
    (*(v12 + 56))(&a1[v10], 0, 1, v11);
  }

  return a1;
}

char *sub_100532214(char *a1, char *a2, int *a3)
{
  *a1 = *a2;

  v6 = a3[5];
  v7 = type metadata accessor for REMHashtagLabelSpecifier();
  (*(*(v7 - 8) + 24))(&a1[v6], &a2[v6], v7);
  a1[a3[6]] = a2[a3[6]];
  a1[a3[7]] = a2[a3[7]];
  v8 = a3[8];
  v9 = type metadata accessor for TTRIHashtagWrappingCollectionView.LayoutResult();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  LODWORD(v6) = v11(&a1[v8], 1, v9);
  v12 = v11(&a2[v8], 1, v9);
  if (!v6)
  {
    if (!v12)
    {
      (*(v10 + 24))(&a1[v8], &a2[v8], v9);
      return a1;
    }

    (*(v10 + 8))(&a1[v8], v9);
    goto LABEL_6;
  }

  if (v12)
  {
LABEL_6:
    v13 = sub_100058000(&qword_100776A98, &qword_100636ED0);
    memcpy(&a1[v8], &a2[v8], *(*(v13 - 8) + 64));
    return a1;
  }

  (*(v10 + 16))(&a1[v8], &a2[v8], v9);
  (*(v10 + 56))(&a1[v8], 0, 1, v9);
  return a1;
}

char *sub_1005323F8(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = type metadata accessor for REMHashtagLabelSpecifier();
  (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
  v8 = a3[7];
  a1[a3[6]] = a2[a3[6]];
  a1[v8] = a2[v8];
  v9 = a3[8];
  v10 = type metadata accessor for TTRIHashtagWrappingCollectionView.LayoutResult();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(&a2[v9], 1, v10))
  {
    v12 = sub_100058000(&qword_100776A98, &qword_100636ED0);
    memcpy(&a1[v9], &a2[v9], *(*(v12 - 8) + 64));
  }

  else
  {
    (*(v11 + 32))(&a1[v9], &a2[v9], v10);
    (*(v11 + 56))(&a1[v9], 0, 1, v10);
  }

  return a1;
}

char *sub_100532564(char *a1, char *a2, int *a3)
{
  *a1 = *a2;

  v6 = a3[5];
  v7 = type metadata accessor for REMHashtagLabelSpecifier();
  (*(*(v7 - 8) + 40))(&a1[v6], &a2[v6], v7);
  v8 = a3[7];
  a1[a3[6]] = a2[a3[6]];
  a1[v8] = a2[v8];
  v9 = a3[8];
  v10 = type metadata accessor for TTRIHashtagWrappingCollectionView.LayoutResult();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  LODWORD(v6) = v12(&a1[v9], 1, v10);
  v13 = v12(&a2[v9], 1, v10);
  if (!v6)
  {
    if (!v13)
    {
      (*(v11 + 40))(&a1[v9], &a2[v9], v10);
      return a1;
    }

    (*(v11 + 8))(&a1[v9], v10);
    goto LABEL_6;
  }

  if (v13)
  {
LABEL_6:
    v14 = sub_100058000(&qword_100776A98, &qword_100636ED0);
    memcpy(&a1[v9], &a2[v9], *(*(v14 - 8) + 64));
    return a1;
  }

  (*(v11 + 32))(&a1[v9], &a2[v9], v10);
  (*(v11 + 56))(&a1[v9], 0, 1, v10);
  return a1;
}

void sub_100532764(uint64_t a1)
{
  type metadata accessor for REMHashtagLabelSpecifier();
  if (v2 <= 0x3F)
  {
    sub_1003EE660(319, v1);
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

uint64_t sub_100532850(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (a1[2])
  {
    v5 = v4 ^ v3 ^ 1;
    if ((a2[2] & 1) == 0)
    {
      v5 = 0;
    }

    return v5 & 1;
  }

  else if (a2[2])
  {
    return 0;
  }

  else
  {
    v7 = a1[1];
    if (v3 == v4 && v7 == a2[1])
    {
      return 1;
    }

    else
    {
      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }
}

uint64_t sub_1005328B8()
{
  v1 = *(v0 + 16);
  v9 = *v0;
  v10 = v1;
  v11 = *(v0 + 32);
  v2 = objc_allocWithZone(type metadata accessor for TemplateStatusCellContentView());
  v12 = v9;
  v13 = v10;
  v3 = *(&v10 + 1);
  v4 = v11;
  sub_100533FDC(&v12, v8);
  sub_10008E7EC(v3, v4);
  sub_100533934(&v9);
  v6 = v5;
  sub_100534028(&v12);
  sub_1000301AC(v3, v4);
  sub_1005343B4(&qword_10078AD50, type metadata accessor for TemplateStatusCellContentView, &unk_100645398);
  return v6;
}

uint64_t sub_10053298C@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  sub_100528E80(v2, v3, v4);

  return sub_10008E7EC(v5, v6);
}

char *sub_100532AA8()
{
  v1 = *(v0 + OBJC_IVAR____TtC9RemindersP33_4869690943FA7C97F8C5390C1CD5799A29TemplateStatusCellContentView_templateLabel);
  if ([v1 isHidden])
  {
    v2 = _swiftEmptyArrayStorage;
  }

  else
  {
    v12 = sub_100003540(0, &qword_100776820, UILabel_ptr);
    *&v11 = v1;
    v3 = v1;
    v2 = sub_1005470E4(0, 1, 1, _swiftEmptyArrayStorage);
    v5 = *(v2 + 2);
    v4 = *(v2 + 3);
    if (v5 >= v4 >> 1)
    {
      v2 = sub_1005470E4((v4 > 1), v5 + 1, 1, v2);
    }

    *(v2 + 2) = v5 + 1;
    sub_100007DD8(&v11, &v2[32 * v5 + 32]);
  }

  v6 = *(v0 + OBJC_IVAR____TtC9RemindersP33_4869690943FA7C97F8C5390C1CD5799A29TemplateStatusCellContentView_button);
  if (([v6 isHidden] & 1) == 0)
  {
    v12 = sub_100003540(0, &unk_10077A690, UIButton_ptr);
    *&v11 = v6;
    v7 = v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1005470E4(0, *(v2 + 2) + 1, 1, v2);
    }

    v9 = *(v2 + 2);
    v8 = *(v2 + 3);
    if (v9 >= v8 >> 1)
    {
      v2 = sub_1005470E4((v8 > 1), v9 + 1, 1, v2);
    }

    *(v2 + 2) = v9 + 1;
    sub_100007DD8(&v11, &v2[32 * v9 + 32]);
  }

  return v2;
}

double sub_100532C44(__int128 *a1)
{
  v2 = a1;
  v3 = isEscapingClosureAtFileLocation + OBJC_IVAR____TtC9RemindersP33_4869690943FA7C97F8C5390C1CD5799A29TemplateStatusCellContentView_internalConfiguration;
  v5 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC9RemindersP33_4869690943FA7C97F8C5390C1CD5799A29TemplateStatusCellContentView_internalConfiguration);
  v4 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC9RemindersP33_4869690943FA7C97F8C5390C1CD5799A29TemplateStatusCellContentView_internalConfiguration + 8);
  v6 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC9RemindersP33_4869690943FA7C97F8C5390C1CD5799A29TemplateStatusCellContentView_internalConfiguration + 16);
  v8 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC9RemindersP33_4869690943FA7C97F8C5390C1CD5799A29TemplateStatusCellContentView_internalConfiguration + 24);
  v7 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC9RemindersP33_4869690943FA7C97F8C5390C1CD5799A29TemplateStatusCellContentView_internalConfiguration + 32);
  v9 = a1[1];
  v22 = *a1;
  v23 = *(a1 + 16);
  v11 = *(a1 + 3);
  v10 = *(a1 + 4);
  *v3 = v22;
  *(v3 + 16) = v9;
  *(v3 + 32) = v10;
  if (v6)
  {
    if (v23 & 1) == 0 || ((v22 ^ v5))
    {
      goto LABEL_8;
    }

    return sub_1000301AC(v8, v7);
  }

  else
  {
    if ((v23 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_8:
    while (1)
    {
      v13 = swift_allocObject();
      v14 = *(v2 + 16);
      *(v13 + 16) = *v2;
      *(v13 + 32) = v14;
      *(v13 + 48) = *(v2 + 32);
      *(v13 + 56) = isEscapingClosureAtFileLocation;
      v2 = swift_allocObject();
      *(v2 + 16) = sub_1005345B4;
      *(v2 + 24) = v13;
      aBlock[4] = sub_100068444;
      v21 = v2;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100026440;
      aBlock[3] = &unk_10072DA80;
      v17 = v8;
      v18 = v7;
      v7 = _Block_copy(aBlock);
      v8 = v21;
      sub_100533FDC(&v22, v19);
      sub_10008E7EC(v11, v10);
      sub_10008E7EC(v11, v10);
      sub_100533FDC(&v22, v19);
      sub_10008E7EC(v11, v10);
      sub_100533FDC(&v22, v19);
      v15 = isEscapingClosureAtFileLocation;

      [v15 performBatchUpdates:v7];
      _Block_release(v7);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      sub_100528EEC(v5, v4, v6);
      sub_1000301AC(v17, v18);
      sub_100534028(&v22);
      sub_1000301AC(v11, v10);
      sub_100534028(&v22);
      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = v5 == v22 && v4 == *(&v22 + 1);
      if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_10008E7EC(v11, v10);
        sub_100533FDC(&v22, aBlock);
        sub_100528EEC(v5, v4, 0);
        sub_1000301AC(v8, v7);
        sub_100534028(&v22);
        return sub_1000301AC(v11, v10);
      }
    }

    return sub_1000301AC(v11, v10);
  }
}

void sub_100532F30(char *a1, uint64_t a2)
{
  v3 = *a1;
  if (a1[16])
  {
    v4 = *(a2 + OBJC_IVAR____TtC9RemindersP33_4869690943FA7C97F8C5390C1CD5799A29TemplateStatusCellContentView_button);
    [v4 setHidden:0];
    [*(a2 + OBJC_IVAR____TtC9RemindersP33_4869690943FA7C97F8C5390C1CD5799A29TemplateStatusCellContentView_templateLabel) setHidden:1];

    [v4 setEnabled:v3 & 1];
  }

  else
  {
    [*(a2 + OBJC_IVAR____TtC9RemindersP33_4869690943FA7C97F8C5390C1CD5799A29TemplateStatusCellContentView_button) setHidden:1];
    v5 = *(a2 + OBJC_IVAR____TtC9RemindersP33_4869690943FA7C97F8C5390C1CD5799A29TemplateStatusCellContentView_templateLabel);
    [v5 setHidden:0];
    v6 = String._bridgeToObjectiveC()();
    [v5 setText:v6];
  }
}

double destroy for TTRIRemindersListTemplateStatusCellContentConfiguration(uint64_t a1)
{
  result = sub_100528EEC(*a1, *(a1 + 8), *(a1 + 16));
  if (*(a1 + 24))
  {
  }

  return result;
}

uint64_t initializeWithCopy for TTRIRemindersListTemplateStatusCellContentConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  sub_100528E80(*a2, v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  v7 = *(a2 + 24);
  if (v7)
  {
    v8 = *(a2 + 32);
    *(a1 + 24) = v7;
    *(a1 + 32) = v8;
  }

  else
  {
    *(a1 + 24) = *(a2 + 24);
  }

  return a1;
}

uint64_t assignWithCopy for TTRIRemindersListTemplateStatusCellContentConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  sub_100528E80(*a2, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  sub_100528EEC(v7, v8, v9);
  v10 = *(a2 + 24);
  if (!*(a1 + 24))
  {
    if (v10)
    {
      v12 = *(a2 + 32);
      *(a1 + 24) = v10;
      *(a1 + 32) = v12;

      return a1;
    }

LABEL_7:
    *(a1 + 24) = *(a2 + 24);
    return a1;
  }

  if (!v10)
  {

    goto LABEL_7;
  }

  v11 = *(a2 + 32);
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;

  return a1;
}

uint64_t assignWithTake for TTRIRemindersListTemplateStatusCellContentConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  sub_100528EEC(v5, v6, v7);
  v8 = *(a2 + 24);
  if (!*(a1 + 24))
  {
    if (v8)
    {
      v10 = *(a2 + 32);
      *(a1 + 24) = v8;
      *(a1 + 32) = v10;
      return a1;
    }

LABEL_7:
    *(a1 + 24) = *(a2 + 24);
    return a1;
  }

  if (!v8)
  {

    goto LABEL_7;
  }

  v9 = *(a2 + 32);
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIRemindersListTemplateStatusCellContentConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIRemindersListTemplateStatusCellContentConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

void (*sub_100533510(void *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xF8uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[30] = v1;
  v5 = v1 + OBJC_IVAR____TtC9RemindersP33_4869690943FA7C97F8C5390C1CD5799A29TemplateStatusCellContentView_internalConfiguration;
  v6 = *(v1 + OBJC_IVAR____TtC9RemindersP33_4869690943FA7C97F8C5390C1CD5799A29TemplateStatusCellContentView_internalConfiguration);
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  v9 = *(v5 + 24);
  v10 = *(v5 + 32);
  v3[13] = &type metadata for TTRIRemindersListTemplateStatusCellContentConfiguration;
  v3[14] = sub_100528E98();
  v11 = swift_allocObject();
  v4[10] = v11;
  *(v11 + 16) = v6;
  *(v11 + 24) = v7;
  *(v11 + 32) = v8;
  *(v11 + 40) = v9;
  *(v11 + 48) = v10;
  sub_100528E80(v6, v7, v8);
  sub_10008E7EC(v9, v10);
  return sub_1005335FC;
}

void sub_1005335FC(void **a1, char a2)
{
  v3 = *a1;
  sub_10000B0D8(*a1 + 80, *a1 + 120);
  if (a2)
  {
    sub_10000B0D8(v3 + 120, v3 + 160);
    sub_100058000(&qword_10077A650, &qword_10063DD30);
    if (swift_dynamicCast())
    {
      v4 = *(v3 + 216);
      *v3 = *(v3 + 200);
      *(v3 + 16) = v4;
      *(v3 + 32) = *(v3 + 232);
      sub_100532C44(v3);
    }

    sub_100004758((v3 + 120));
  }

  else
  {
    sub_100058000(&qword_10077A650, &qword_10063DD30);
    if (swift_dynamicCast())
    {
      v5 = *(v3 + 176);
      *(v3 + 40) = *(v3 + 160);
      *(v3 + 56) = v5;
      *(v3 + 72) = *(v3 + 192);
      sub_100532C44((v3 + 40));
    }
  }

  sub_100004758((v3 + 80));

  free(v3);
}

uint64_t sub_100533708@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC9RemindersP33_4869690943FA7C97F8C5390C1CD5799A29TemplateStatusCellContentView_internalConfiguration;
  v4 = *(v1 + OBJC_IVAR____TtC9RemindersP33_4869690943FA7C97F8C5390C1CD5799A29TemplateStatusCellContentView_internalConfiguration);
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  a1[3] = &type metadata for TTRIRemindersListTemplateStatusCellContentConfiguration;
  a1[4] = sub_100528E98();
  v9 = swift_allocObject();
  *a1 = v9;
  *(v9 + 16) = v4;
  *(v9 + 24) = v5;
  *(v9 + 32) = v6;
  *(v9 + 40) = v7;
  *(v9 + 48) = v8;
  sub_100528E80(v4, v5, v6);

  return sub_10008E7EC(v7, v8);
}

uint64_t sub_1005337B0(void *a1)
{
  sub_10000B0D8(a1, v6);
  sub_100058000(&qword_10077A650, &qword_10063DD30);
  if (swift_dynamicCast())
  {
    v7[0] = v3;
    v7[1] = v4;
    v8 = v5;
    sub_100532C44(v7);
  }

  return sub_100004758(a1);
}

void (*sub_100533834(void *a1))(void *a1)
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
  v2[4] = sub_100533510(v2);
  return sub_1001861BC;
}

uint64_t sub_1005338A4(uint64_t a1)
{
  sub_10000B0D8(a1, v8);
  sub_100058000(&qword_10077A650, &qword_10063DD30);
  result = swift_dynamicCast();
  if (result)
  {
    v2 = result;
    sub_100528EEC(v3, v4, v5);
    sub_1000301AC(v6, v7);
    return v2;
  }

  return result;
}

void sub_100533934(__int128 *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_100058000(&unk_100772600, &unk_1006348F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v40 - v6;
  v8 = sub_100058000(&qword_100769CF8, &qword_10062E8F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v40 - v9;
  v11 = type metadata accessor for UIButton.Configuration();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[1];
  v46 = *a1;
  v47 = *(a1 + 16);
  v16 = *(a1 + 3);
  v17 = *(a1 + 4);
  v18 = &v2[OBJC_IVAR____TtC9RemindersP33_4869690943FA7C97F8C5390C1CD5799A29TemplateStatusCellContentView_internalConfiguration];
  *v18 = v46;
  *(v18 + 1) = v15;
  *(v18 + 4) = v17;
  v19 = objc_allocWithZone(UILabel);
  sub_100533FDC(&v46, aBlock);
  sub_10008E7EC(v16, v17);
  v20 = [v19 init];
  sub_100003540(0, &qword_100771DF0, UIFont_ptr);
  v21 = static UIFont.roundedBodyFont.getter();
  [v20 setFont:v21];

  v22 = [objc_opt_self() secondaryLabelColor];
  [v20 setTextColor:v22];

  [v20 setAdjustsFontForContentSizeCategory:1];
  v23 = [objc_allocWithZone(UIButton) init];
  static UIButton.Configuration.borderless()();
  static TTRLocalizableStrings.Templates.templateStatusUpdateSharedTemplate.getter();
  UIButton.Configuration.title.setter();
  UIButton.Configuration.contentInsets.setter();
  UIConfigurationTextAttributesTransformer.init(_:)();
  v24 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v24 - 8) + 56))(v10, 0, 1, v24);
  UIButton.Configuration.titleTextAttributesTransformer.setter();
  (*(v12 + 16))(v7, v14, v11);
  v41 = v12;
  v25 = *(v12 + 56);
  v42 = v11;
  v25(v7, 0, 1, v11);
  UIButton.configuration.setter();
  *&v2[OBJC_IVAR____TtC9RemindersP33_4869690943FA7C97F8C5390C1CD5799A29TemplateStatusCellContentView_templateLabel] = v20;
  *&v2[OBJC_IVAR____TtC9RemindersP33_4869690943FA7C97F8C5390C1CD5799A29TemplateStatusCellContentView_button] = v23;
  v45.receiver = v2;
  v45.super_class = ObjectType;
  v26 = v20;
  v27 = v23;
  v28 = objc_msgSendSuper2(&v45, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v28 setHorizontalAlignment:1];
  [v28 setVerticalAlignment:0];

  v29 = v28;
  [v29 setLayoutMarginsRelativeArrangement:1];
  [v29 setPreservesSuperviewLayoutMargins:1];
  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_10062D410;
  *(v30 + 32) = v26;
  *(v30 + 40) = v27;
  sub_100003540(0, &qword_10076B020, UIView_ptr);
  v31 = v26;
  v32 = v27;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v29 setArrangedSubviews:isa];

  [v32 addTarget:v29 action:"buttonAction:" forControlEvents:0x2000];
  v48 = *(v29 + OBJC_IVAR____TtC9RemindersP33_4869690943FA7C97F8C5390C1CD5799A29TemplateStatusCellContentView_internalConfiguration);
  v34 = *(v29 + OBJC_IVAR____TtC9RemindersP33_4869690943FA7C97F8C5390C1CD5799A29TemplateStatusCellContentView_internalConfiguration + 24);
  v49 = *(v29 + OBJC_IVAR____TtC9RemindersP33_4869690943FA7C97F8C5390C1CD5799A29TemplateStatusCellContentView_internalConfiguration + 16);
  v35 = *(v29 + OBJC_IVAR____TtC9RemindersP33_4869690943FA7C97F8C5390C1CD5799A29TemplateStatusCellContentView_internalConfiguration + 32);
  v51 = *(v29 + OBJC_IVAR____TtC9RemindersP33_4869690943FA7C97F8C5390C1CD5799A29TemplateStatusCellContentView_internalConfiguration + 16);
  v50 = v48;
  v36 = swift_allocObject();
  *(v36 + 16) = v48;
  *(v36 + 32) = v49;
  *(v36 + 40) = v34;
  *(v36 + 48) = v35;
  *(v36 + 56) = v29;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_10053405C;
  *(v37 + 24) = v36;
  aBlock[4] = sub_100026410;
  aBlock[5] = v37;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026440;
  aBlock[3] = &unk_10072D9E0;
  v38 = _Block_copy(aBlock);
  sub_100533FDC(&v50, v43);
  sub_10008E7EC(v34, v35);
  v39 = v29;
  sub_100533FDC(&v50, v43);
  sub_10008E7EC(v34, v35);

  [v39 performBatchUpdates:v38];
  _Block_release(v38);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  sub_100534028(&v50);
  sub_1000301AC(v34, v35);

  if (v11)
  {
    __break(1u);
  }

  else
  {
    (*(v41 + 8))(v14, v42);
  }
}

uint64_t sub_100533FDC(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_100528E80(*a1, v4, v5);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  return a2;
}

uint64_t sub_100534068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRTemplatePublicLinkData.Capabilities();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRTemplatePublicLinkData.stateToDisplay.getter();
  v15 = (*(v12 + 88))(v14, v11);
  if (v15 == enum case for TTRTemplatePublicLinkData.StateToDisplay.created(_:))
  {
    TTRTemplatePublicLinkData.capabilities.getter();
    static TTRTemplatePublicLinkData.Capabilities.updateLink.getter();
    sub_1005343B4(&qword_10076EEC8, &type metadata accessor for TTRTemplatePublicLinkData.Capabilities, &protocol conformance descriptor for TTRTemplatePublicLinkData.Capabilities);
    v16 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v27 = a1;
    v17 = *(v5 + 8);
    v17(v7, v4);
    v17(v10, v4);
    if (v16)
    {
      v18 = type metadata accessor for TTRTemplatePublicLinkData();
      (*(*(v18 - 8) + 8))(v27, v18);
      v19 = 0;
      v20 = 1;
    }

    else
    {
      v20 = static TTRLocalizableStrings.Templates.templateStatusSharedTemplate.getter();
      v19 = v24;
      v25 = type metadata accessor for TTRTemplatePublicLinkData();
      (*(*(v25 - 8) + 8))(v27, v25);
    }

    result = (*(v12 + 8))(v14, v11);
    goto LABEL_8;
  }

  if (v15 == enum case for TTRTemplatePublicLinkData.StateToDisplay.notRequested(_:))
  {
    v20 = static TTRLocalizableStrings.Templates.templateStatusTemplate.getter();
    v19 = v21;
    v22 = type metadata accessor for TTRTemplatePublicLinkData();
    result = (*(*(v22 - 8) + 8))(a1, v22);
    v16 = 0;
LABEL_8:
    *a2 = v20;
    *(a2 + 8) = v19;
    *(a2 + 16) = v16 & 1;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    return result;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1005343B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10053440C(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_100528E80(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for TTRIRemindersListTemplateStatusCellContentConfiguration.MainContent(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_100528E80(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  sub_100528EEC(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for TTRIRemindersListTemplateStatusCellContentConfiguration.MainContent(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  sub_100528EEC(v4, v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIRemindersListTemplateStatusCellContentConfiguration.MainContent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIRemindersListTemplateStatusCellContentConfiguration.MainContent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for TTRIRemindersListEditableSectionNameTextView(uint64_t a1)
{
  result = qword_10078AD58;
  if (!qword_10078AD58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1005346AC(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for TTRIRemindersListEditableSectionNameTextView(0);
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", v4);

  if (v5)
  {
  }

  return v5;
}

id sub_100534724()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIRemindersListEditableSectionNameTextView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100534978()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10078ADE0);
  v1 = sub_100003E30(v0, qword_10078ADE0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100534A40()
{
  v0 = sub_100058000(&qword_10077E850, &unk_10063B170);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v22 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v20 - v4;
  if (qword_1007674F0 != -1)
  {
    swift_once();
  }

  v6 = qword_1007A8A40;
  v27 = qword_1007A8A40;
  v21 = sub_100058000(&qword_100774070, &unk_10063B4E0);
  inited = swift_initStackObject();
  v20 = xmmword_10062D400;
  *(inited + 16) = xmmword_10062D400;
  LOBYTE(v25[0]) = 0;
  sub_1005394D4();

  AnyHashable.init<A>(_:)();
  *(inited + 72) = 1;
  *v5 = 0;
  v5[40] = 0;
  v23 = v1;
  v8 = *(v1 + 104);
  v8(v5, enum case for TTRRelativeInsertionPosition.after<A>(_:), v0);
  sub_100323F28();
  v9 = Array<A>.index<A>(forInsertingAt:where:)();
  if (v10)
  {
    v11 = TTRRelativeInsertionPosition.siblingAndIsAfter.getter();
    sub_1000079B4(v25, &qword_10077E868, &qword_10063B180);
    if (v11)
    {
      v9 = *(v6 + 16);
    }

    else
    {
      v9 = 0;
    }
  }

  sub_1000FE4D8(v9, v9, inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v12 = *(v23 + 8);
  v12(v5, v0);
  v24[0] = 1;
  AnyHashable.init<A>(_:)();
  v26 = 1;
  v13 = v22;
  v8(v22, enum case for TTRRelativeInsertionPosition.afterAll<A>(_:), v0);
  v14 = swift_initStackObject();
  *(v14 + 16) = v20;
  sub_100233FB0(v25, v14 + 32);
  v15 = v27;
  v16 = Array<A>.index<A>(forInsertingAt:where:)();
  if (v17)
  {
    v18 = TTRRelativeInsertionPosition.siblingAndIsAfter.getter();
    sub_1000079B4(v24, &qword_10077E868, &qword_10063B180);
    if (v18)
    {
      v16 = *(v15 + 16);
    }

    else
    {
      v16 = 0;
    }
  }

  sub_1000FE4D8(v16, v16, v14);
  swift_setDeallocating();
  swift_arrayDestroy();
  v12(v13, v0);
  sub_10023400C(v25);
  return v27;
}

uint64_t sub_100534DFC()
{
  v1 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v1 - 8);
  v3 = &v18[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v18[-v5];
  AnyHashable.base.getter();
  if (swift_dynamicCast())
  {
    if ((v18[15] & 1) == 0)
    {
      v11 = String._bridgeToObjectiveC()();
      v12 = [objc_opt_self() _systemImageNamed:v11];

      sub_100003540(0, &qword_10076BA60, UIAction_ptr);
      static TTRLocalizableStrings.AccountsList.showListInfoText.getter();
      swift_allocObject();
      swift_weakInit();
      return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    }

    v7 = *(v0 + 144);
    ObjectType = swift_getObjectType();
    (*(v7 + 152))(ObjectType, v7);
    sub_10000794C(v6, v3, &unk_10078A380, &qword_10062DE60);
    v9 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v3, 1, v9) == 1)
    {
      sub_1000079B4(v3, &unk_10078A380, &qword_10062DE60);
    }

    else
    {
      v14 = TTRRemindersListViewModel.ListInfo.canBeDeleted.getter();
      (*(v10 + 8))(v3, v9);
      if (v14)
      {
        v15 = String._bridgeToObjectiveC()();
        v16 = [objc_opt_self() _systemImageNamed:v15];

        sub_100003540(0, &qword_10076BA60, UIAction_ptr);
        static TTRLocalizableStrings.RemindersList.deleteListActionText.getter();
        swift_allocObject();
        swift_weakInit();

        v17 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        sub_1000079B4(v6, &unk_10078A380, &qword_10062DE60);

        return v17;
      }
    }

    sub_1000079B4(v6, &unk_10078A380, &qword_10062DE60);
  }

  return 0;
}

double sub_1005351DC(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for TTRITipKitSignal();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_getObjectType();
    v9 = dispatch thunk of TTRShowRemindersInListDataModelSourceBaseType.list.getter();
    if (v9)
    {
      v10 = v9;
      swift_getObjectType();
      swift_unknownObjectRetain();

      v11 = dispatch thunk of TTRRemindersListInteractorType.changeItem(for:)();
      swift_unknownObjectRelease();
      swift_unknownObjectRetain();

      type metadata accessor for TTRListDetailAssembly.ListComponentsCreator();
      swift_initStackObject();

      v12 = [v11 saveRequest];
      v13 = [v12 store];

      v14 = sub_10044DB08(v13, v11, 1, v8, &off_10072DB78);
      v16 = v15;

      v17 = v14;

      v18 = sub_10045A1AC(v17, v16, 0, 0, 0);

      v19 = swift_unknownObjectWeakLoadStrong();
      if (v19)
      {
        v20 = v19;
        [v19 presentViewController:v18 animated:1 completion:0];
      }

      swift_unknownObjectRelease();
      (*(v3 + 104))(v5, enum case for TTRITipKitSignal.tappedNameAndAppearanceAction(_:), v2);
      v21.value._countAndFlagsBits = static TTRITipKitSignalContext.RemindersList.MoreMenu.list.getter();
      TTRITipKitSignal.donate(signalContext:)(v21);

      (*(v3 + 8))(v5, v2);
    }

    else
    {
    }
  }

  return result;
}

double sub_1005354AC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100536CF8();
  }

  return result;
}

uint64_t sub_100535504@<X0>(void *a1@<X8>)
{
  v2 = v1;
  swift_getObjectType();
  result = dispatch thunk of TTRRemindersListDataModelSourceBaseType.isGroceryOrAutoCategorizedList.getter();
  if (result)
  {
    v5 = type metadata accessor for TTRIShowRemindersInListPresenter(0);

    v6 = &off_10072DB38;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v2 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  a1[3] = v5;
  a1[4] = v6;
  *a1 = v2;
  return result;
}

void sub_10053558C()
{
  v30 = *v0;
  v1 = type metadata accessor for REMAnalyticsEvent();
  v32 = *(v1 - 8);
  v33 = v1;
  __chkstk_darwin(v1);
  v31 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100767440 != -1)
  {
    swift_once();
  }

  v7 = sub_100003E30(v3, qword_10078ADE0);
  (*(v4 + 16))(v6, v7, v3);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x44497473696CLL;
  *(inited + 40) = 0xE600000000000000;
  v34 = v0;
  swift_getObjectType();
  v9 = dispatch thunk of TTRShowRemindersInListDataModelSourceBaseType.list.getter();
  if (v9)
  {
    v10 = v9;
    v11 = [v9 objectID];
  }

  else
  {
    v11 = 0;
  }

  v35 = v11;
  sub_100058000(&qword_10076DB18, &unk_10063E2D0);
  v12 = String.init<A>(describing:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v12;
  *(inited + 56) = v13;
  v14 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
  sub_10000FD44("List presented to user {listID: %@}", 35, 2, v14);

  (*(v4 + 8))(v6, v3);
  v15 = dispatch thunk of TTRShowRemindersInListDataModelSourceBaseType.list.getter();
  if (v15)
  {
    v16 = v15;
    v17 = [v15 groceryContext];
    if (v17)
    {
      v18 = v17;
      if ([v17 shouldCategorizeGroceryItems])
      {
        type metadata accessor for TTRUserDefaults();
        v19 = static TTRUserDefaults.appUserDefaults.getter();
        type metadata accessor for REMAnalyticsManager();
        static REMAnalyticsManager.shared.getter();
        v20 = sub_100058000(&qword_1007757E8, &unk_100635E60);
        v21 = v31;
        v22 = &v31[*(v20 + 48)];
        v23 = &v31[*(v20 + 80)];
        v24 = enum case for REMUserOperation.openGroceryList(_:);
        v25 = type metadata accessor for REMUserOperation();
        (*(*(v25 - 8) + 104))(v21, v24, v25);
        *v22 = TTRUserDefaults.activitySessionId.getter();
        v22[1] = v26;
        TTRUserDefaults.activitySessionBeginTime.getter();
        *v23 = _typeName(_:qualified:)();
        v23[1] = v27;
        v29 = v32;
        v28 = v33;
        (*(v32 + 104))(v21, enum case for REMAnalyticsEvent.userOperation(_:), v33);
        REMAnalyticsManager.post(event:)();

        (*(v29 + 8))(v21, v28);
      }

      else
      {
      }
    }

    swift_getObjectType();
    dispatch thunk of TTRRemindersListInteractorType.updateLastUserAccessDate(for:)();
  }
}

void sub_100535A14(int a1, uint64_t a2)
{
  v3 = v2;
  v96 = a2;
  v97 = a1;
  v98 = *v2;
  v4 = type metadata accessor for REMAnalyticsEvent();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for REMUserOperation();
  v101 = *(v103 - 8);
  __chkstk_darwin(v103);
  v100 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRListSharingUIType();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100058000(&qword_1007831D0, &qword_10063F270);
  __chkstk_darwin(v13 - 8);
  v99 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v92 - v16;
  __chkstk_darwin(v18);
  v102 = &v92 - v19;
  swift_getObjectType();
  v20 = dispatch thunk of TTRShowRemindersInListDataModelSourceBaseType.list.getter();
  if (!v20)
  {
    return;
  }

  v104 = v20;
  if ([v20 canBeShared])
  {
    v95 = v5;
    v93 = v4;
    if (qword_100767440 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100003E30(v21, qword_10078ADE0);
    sub_100058000(&unk_100775610, &unk_1006323A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10062D400;
    *(inited + 32) = 0x44497463656A626FLL;
    *(inited + 40) = 0xE800000000000000;
    v23 = [v104 objectID];
    *(inited + 72) = sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
    *(inited + 48) = v23;
    v24 = sub_100008E04(inited);
    swift_setDeallocating();
    sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
    sub_10000FD44("Reminders List share list {objectID: %@}", 40, 2, v24);

    v94 = *(v101 + 56);
    v94(v102, 1, 1, v103);
    v25 = [v104 account];
    REMAccount.listSharingUIType.getter();

    v26 = (*(v10 + 88))(v12, v9);
    if (v26 == enum case for TTRListSharingUIType.cloudKit(_:))
    {
      if (v97)
      {
        v27 = v7;
        sub_100133A90(v104, v96);
        v28 = v102;
        sub_1000079B4(v102, &qword_1007831D0, &qword_10063F270);
        v29 = enum case for REMSharedListUserOperationDetail.cloudKitShare(_:);
        v30 = type metadata accessor for REMSharedListUserOperationDetail();
        v31 = *(v30 - 8);
        (*(v31 + 104))(v28, v29, v30);
        (*(v31 + 56))(v28, 0, 1, v30);
        v32 = v101;
        v33 = v103;
        (*(v101 + 104))(v28, enum case for REMUserOperation.startSharedList(_:), v103);
        v94(v28, 0, 1, v33);
LABEL_31:
        v71 = v99;
LABEL_32:
        sub_10000794C(v28, v71, &qword_1007831D0, &qword_10063F270);
        v72 = (*(v32 + 48))(v71, 1, v33);
        v73 = v95;
        if (v72 == 1)
        {
          sub_1000079B4(v28, &qword_1007831D0, &qword_10063F270);

          v74 = v71;
        }

        else
        {
          v75 = v100;
          (*(v32 + 32))(v100, v71, v33);
          type metadata accessor for REMAnalyticsManager();
          v76 = v33;
          v101 = static REMAnalyticsManager.shared.getter();
          v77 = sub_100058000(&qword_1007757E8, &unk_100635E60);
          v78 = v27;
          v79 = &v27[*(v77 + 48)];
          v80 = &v78[*(v77 + 80)];
          (*(v32 + 16))(v78, v75, v76);
          type metadata accessor for TTRUserDefaults();
          v81 = v32;
          v82 = static TTRUserDefaults.appUserDefaults.getter();
          v83 = TTRUserDefaults.activitySessionId.getter();
          v85 = v84;

          *v79 = v83;
          v79[1] = v85;
          v86 = static TTRUserDefaults.appUserDefaults.getter();
          TTRUserDefaults.activitySessionBeginTime.getter();

          *v80 = _typeName(_:qualified:)();
          v80[1] = v87;
          v88 = v93;
          (*(v73 + 104))(v78, enum case for REMAnalyticsEvent.userOperation(_:), v93);
          REMAnalyticsManager.post(event:)();

          (*(v73 + 8))(v78, v88);
          (*(v81 + 8))(v100, v103);
          v74 = v102;
        }

        sub_1000079B4(v74, &qword_1007831D0, &qword_10063F270);
        return;
      }

      v40 = type metadata accessor for TTRIListSharingController();
      v41 = objc_allocWithZone(v40);
      *&v41[OBJC_IVAR____TtC9Reminders25TTRIListSharingController_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      v42 = v104;
      *&v41[OBJC_IVAR____TtC9Reminders25TTRIListSharingController_list] = v104;
      v111.receiver = v41;
      v111.super_class = v40;
      v43 = v42;
      v44 = objc_msgSendSuper2(&v111, "init");
      v45 = *(v3 + OBJC_IVAR____TtC9Reminders32TTRIShowRemindersInListPresenter_listSharingController);
      *(v3 + OBJC_IVAR____TtC9Reminders32TTRIShowRemindersInListPresenter_listSharingController) = v44;
      v46 = v44;

      *&v46[OBJC_IVAR____TtC9Reminders25TTRIListSharingController_delegate + 8] = &off_10072DB50;
      swift_unknownObjectWeakAssign();
      v47 = sub_1005AB938();
      if (v47)
      {
        v48 = v47;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v50 = Strong;
          v51 = [Strong presentedViewController];
          v28 = v102;
          if (v51)
          {
            v52 = v51;
            v53 = swift_allocObject();
            *(v53 + 16) = v50;
            *(v53 + 24) = v48;
            *(v53 + 32) = 1;
            v109 = sub_100233C2C;
            v110 = v53;
            aBlock = _NSConcreteStackBlock;
            v106 = 1107296256;
            v107 = sub_10001047C;
            v108 = &unk_10072DC58;
            v54 = _Block_copy(&aBlock);
            v55 = v50;
            v50 = v48;

            [v52 dismissViewControllerAnimated:1 completion:v54];
            _Block_release(v54);

            v46 = v55;
          }

          else
          {
            [v50 presentViewController:v48 animated:1 completion:0];
            v52 = v48;
          }

          v27 = v7;

          v46 = v52;
        }

        else
        {
          v27 = v7;
          v50 = v48;
          v28 = v102;
        }

        v71 = v99;

        sub_1000079B4(v28, &qword_1007831D0, &qword_10063F270);
        v89 = enum case for REMSharedListUserOperationDetail.cloudKitShare(_:);
        v90 = type metadata accessor for REMSharedListUserOperationDetail();
        v91 = *(v90 - 8);
        (*(v91 + 104))(v28, v89, v90);
        (*(v91 + 56))(v28, 0, 1, v90);
        v32 = v101;
        v33 = v103;
        (*(v101 + 104))(v28, enum case for REMUserOperation.manageSharedList(_:), v103);
        v94(v28, 0, 1, v33);
        goto LABEL_32;
      }

      v27 = v7;
    }

    else
    {
      if (v26 == enum case for TTRListSharingUIType.custom(_:))
      {
        v27 = v7;
        sub_100538E24(v104, v3, *(v3 + 88));
        v35 = [v104 isShared];
        v28 = v102;
        sub_1000079B4(v102, &qword_1007831D0, &qword_10063F270);
        v36 = enum case for REMSharedListUserOperationDetail.calDAVShare(_:);
        v37 = type metadata accessor for REMSharedListUserOperationDetail();
        v38 = *(v37 - 8);
        (*(v38 + 104))(v17, v36, v37);
        (*(v38 + 56))(v17, 0, 1, v37);
        v32 = v101;
        v39 = &enum case for REMUserOperation.manageSharedList(_:);
        if (!v35)
        {
          v39 = &enum case for REMUserOperation.startSharedList(_:);
        }

        v33 = v103;
        (*(v101 + 104))(v17, *v39, v103);
        v94(v17, 0, 1, v33);
        sub_100539454(v17, v28);
        goto LABEL_31;
      }

      if (v26 != enum case for TTRListSharingUIType.unsupported(_:))
      {
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return;
      }

      v27 = v7;
      v56 = v104;
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        *v59 = 138412802;
        v61 = [v56 objectID];
        *(v59 + 4) = v61;
        *v60 = v61;
        *(v59 + 12) = 2080;
        aBlock = 0;
        v106 = 0xE000000000000000;
        v62 = [v56 account];
        v63 = [v62 type];

        v112 = v63;
        type metadata accessor for REMAccountType(0);
        _print_unlocked<A, B>(_:_:)();
        v64 = sub_100004060(aBlock, v106, &v113);

        *(v59 + 14) = v64;
        *(v59 + 22) = 2080;
        aBlock = 0;
        v106 = 0xE000000000000000;
        v65 = [v56 canBeShared];
        v66 = v65 == 0;
        if (v65)
        {
          v67 = 1702195828;
        }

        else
        {
          v67 = 0x65736C6166;
        }

        if (v66)
        {
          v68 = 0xE500000000000000;
        }

        else
        {
          v68 = 0xE400000000000000;
        }

        v69 = v68;
        String.append(_:)(*&v67);

        v70 = sub_100004060(aBlock, v106, &v113);

        *(v59 + 24) = v70;
        _os_log_impl(&_mh_execute_header, v57, v58, "Trying to share a list that doesn't support sharing. Probably list.canBeShared is wrong. {listID: %@, accountType: %s, canBeShared: %s}", v59, 0x20u);
        sub_1000079B4(v60, &unk_10076DF80, &qword_10062F730);

        swift_arrayDestroy();
      }
    }

    v33 = v103;
    v32 = v101;
    v28 = v102;
    goto LABEL_31;
  }

  v34 = v104;
}

id sub_1005368C4()
{
  swift_getObjectType();
  v0 = dispatch thunk of TTRShowRemindersInListDataModelSourceBaseType.list.getter();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = [v0 account];

  return v2;
}

uint64_t sub_100536930()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 160);
    ObjectType = swift_getObjectType();
    v6[3] = type metadata accessor for TTRIShowRemindersInListPresenter(0);
    v6[4] = &off_10071AA88;
    v6[0] = v0;
    v4 = *(v0 + OBJC_IVAR____TtC9Reminders32TTRIShowRemindersInListPresenter_shouldShowReminderDeletePrivacyWarningIfNeeded);
    v5 = *(v2 + 16);

    v5(v6, v4, ObjectType, v2);
    swift_unknownObjectRelease();
    result = sub_100004758(v6);
  }

  *(v0 + OBJC_IVAR____TtC9Reminders32TTRIShowRemindersInListPresenter_shouldShowReminderDeletePrivacyWarningIfNeeded) = 0;
  return result;
}

uint64_t sub_100536A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRTipGroceryRenameSection();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for TTRTipCategorizeYourGroceries();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for TTRRemindersListTips.TipID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6, v8);
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 == enum case for TTRRemindersListTips.TipID.convertToGrocery(_:))
  {
    sub_10053940C(&qword_10078B8E0, type metadata accessor for TTRIShowRemindersInListPresenter, &unk_100645550);
    swift_unknownObjectRetain();
    TTRTipCategorizeYourGroceries.init(delegate:)();
    sub_10053940C(&qword_10078B8E8, &type metadata accessor for TTRTipCategorizeYourGroceries, &protocol conformance descriptor for TTRTipCategorizeYourGroceries);
LABEL_5:
    AnyTip.init<A>(_:)();
    v12 = type metadata accessor for AnyTip();
    return (*(*(v12 - 8) + 56))(a2, 0, 1, v12);
  }

  if (v11 == enum case for TTRRemindersListTips.TipID.renameSection(_:))
  {
    TTRTipGroceryRenameSection.init()();
    sub_10053940C(&qword_10078B8D8, &type metadata accessor for TTRTipGroceryRenameSection, &protocol conformance descriptor for TTRTipGroceryRenameSection);
    goto LABEL_5;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

double sub_100536CF8()
{
  v1 = v0;
  v2 = type metadata accessor for TTRListOrCustomSmartList();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getObjectType();
  v6 = dispatch thunk of TTRShowRemindersInListDataModelSourceBaseType.list.getter();
  if (!v6)
  {
    return result;
  }

  v8 = v6;
  if (qword_100767440 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100003E30(v9, qword_10078ADE0);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x44497463656A626FLL;
  *(inited + 40) = 0xE800000000000000;
  v11 = [v8 objectID];
  *(inited + 72) = sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
  *(inited + 48) = v11;
  v12 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
  sub_10000FD44("Reminders List delete list {objectID: %@}", 41, 2, v12);

  aBlock = 0;
  v13 = [v8 fetchRemindersWithError:&aBlock];
  v14 = aBlock;
  if (v13)
  {
    v15 = v13;
    sub_100003540(0, &qword_10076BB00, REMReminder_ptr);
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v14;

    if (v16 >> 62)
    {
      v18 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v18)
    {
      *v5 = v8;
      v19 = enum case for TTRListOrCustomSmartList.list(_:);
      v20 = *(v3 + 104);
      v20(v5, enum case for TTRListOrCustomSmartList.list(_:), v2);
      v21 = v8;
      sub_1002E91A0(v5);
      v46 = v1;
      v22 = *(v3 + 8);
      v22(v5, v2);
      *v5 = v21;
      v20(v5, v19, v2);
      v23 = v21;
      sub_1002E950C(v5);
      v22(v5, v2);
      v24 = String._bridgeToObjectiveC()();

      v25 = String._bridgeToObjectiveC()();

      v26 = [objc_opt_self() alertControllerWithTitle:v24 message:v25 preferredStyle:1];

      static TTRLocalizableStrings.Common.alertCancelButton.getter();
      v27 = String._bridgeToObjectiveC()();

      v28 = objc_opt_self();
      v29 = [v28 actionWithTitle:v27 style:1 handler:0];

      static TTRLocalizableStrings.Common.deleteButton.getter();
      v30 = swift_allocObject();
      swift_weakInit();
      v31 = swift_allocObject();
      *(v31 + 16) = v30;
      *(v31 + 24) = v23;
      v32 = v23;

      v33 = String._bridgeToObjectiveC()();

      v51 = sub_10053956C;
      v52 = v31;
      aBlock = _NSConcreteStackBlock;
      v48 = 1107296256;
      v49 = sub_1001762CC;
      v50 = &unk_10072DD98;
      v34 = _Block_copy(&aBlock);

      v35 = [v28 actionWithTitle:v33 style:2 handler:v34];
      _Block_release(v34);

      [v26 addAction:v29];
      [v26 addAction:v35];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v37 = Strong;
        [Strong presentViewController:v26 animated:1 completion:0];
      }

      return result;
    }
  }

  else
  {
    v38 = aBlock;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  static TTRLocalizableStrings.RemindersList.deleteList.getter();
  v39 = objc_opt_self();
  v40 = String._bridgeToObjectiveC()();

  v41 = swift_allocObject();
  *(v41 + 16) = v1;
  *(v41 + 24) = v8;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_100539528;
  *(v42 + 24) = v41;
  v51 = sub_100068444;
  v52 = v42;
  aBlock = _NSConcreteStackBlock;
  v48 = 1107296256;
  v49 = sub_100026440;
  v50 = &unk_10072DD48;
  v43 = _Block_copy(&aBlock);
  v44 = v8;

  [v39 withActionName:v40 block:v43];

  _Block_release(v43);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_100537430(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    static TTRLocalizableStrings.RemindersList.deleteList.getter();
    v6 = objc_opt_self();
    v7 = String._bridgeToObjectiveC()();

    v8 = swift_allocObject();
    *(v8 + 16) = v5;
    *(v8 + 24) = a3;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_100539574;
    *(v9 + 24) = v8;
    aBlock[4] = sub_100068444;
    aBlock[5] = v9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100026440;
    aBlock[3] = &unk_10072DE10;
    v10 = _Block_copy(aBlock);

    v11 = a3;

    [v6 withActionName:v7 block:v10];

    _Block_release(v10);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }
  }
}

uint64_t sub_100537600(uint64_t a1, uint64_t a2)
{
  v3 = REMList.accountCapabilities.getter();
  v4 = [v3 supportsDeletionByTTL];

  *(a1 + OBJC_IVAR____TtC9Reminders32TTRIShowRemindersInListPresenter_shouldShowReminderDeletePrivacyWarningIfNeeded) = v4;
  swift_getObjectType();
  return dispatch thunk of TTRRemindersListInteractorType.delete(_:)();
}

void sub_100537674()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders32TTRIShowRemindersInListPresenter_listSharingController);
}

uint64_t sub_1005376B4()
{
  v0 = sub_1001E6A30();

  swift_unknownObjectRelease();
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders32TTRIShowRemindersInListPresenter_listSharingController);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIShowRemindersInListPresenter(uint64_t a1)
{
  result = qword_10078AE38;
  if (!qword_10078AE38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005377F4()
{
  v1 = v0;
  v2 = *(v0 + 104);
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

double sub_1005379A8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);

  return result;
}

uint64_t sub_1005379EC(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for TTRUndoNavigationEditingTarget();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  TTRListDetailSavedObjectID.undoNavigationEditingTarget.getter(a2, a3);
  ObjectType = swift_getObjectType();
  v13 = (*(a5 + 16))(ObjectType, a5);
  dispatch thunk of TTRRemindersListInteractorType.registerUndo(forEditing:byDraining:)();

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100537B34(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      sub_10000C36C((v7 + 48), *(v7 + 72));
      sub_100396564(a3, a4);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100537BD4()
{
  v1 = v0;
  v2 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  swift_getObjectType();
  result = dispatch thunk of TTRRemindersListDataModelSourceBaseType.isGroceryOrAutoCategorizedList.getter();
  if (result)
  {
    result = dispatch thunk of TTRShowRemindersInListDataModelSourceBaseType.list.getter();
    if (result)
    {
      v6 = result;
      v7 = dispatch thunk of TTRShowRemindersInListDataModelSourceBaseType.list.getter();
      if (v7 && (v8 = v7, v9 = [v7 groceryContext], v8, v9) && (v10 = objc_msgSend(v9, "shouldCategorizeGroceryItems"), v9, (v10 & 1) != 0))
      {
        v11 = "Data Collection: Intelligent Grocery Corrections";
      }

      else
      {
        v11 = "Data Collection: Auto-Categorization Corrections";
      }

      v12 = (v11 - 32) | 0x8000000000000000;
      static TaskPriority.userInitiated.getter();
      v13 = type metadata accessor for TaskPriority();
      (*(*(v13 - 8) + 56))(v4, 0, 1, v13);
      v14 = swift_allocObject();
      v14[2] = 0;
      v14[3] = 0;
      v14[4] = v1;
      v14[5] = v6;
      v14[6] = 0xD000000000000030;
      v14[7] = v12;

      v15 = v6;
      sub_100538AA4(0, 0, v4, &unk_1006455D8, v14);

      return sub_1000079B4(v4, &qword_10076BE10, &qword_10062FF90);
    }
  }

  return result;
}

uint64_t sub_100537DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  sub_100058000(&qword_10076BE10, &qword_10062FF90);
  v7[14] = swift_task_alloc();
  sub_100058000(&unk_100775660, &qword_10062F6B0);
  v7[15] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v7[16] = v8;
  v9 = *(v8 - 8);
  v7[17] = v9;
  v7[18] = *(v9 + 64);
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v10 = type metadata accessor for CharacterSet();
  v7[21] = v10;
  v7[22] = *(v10 - 8);
  v7[23] = swift_task_alloc();

  return _swift_task_switch(sub_100537F74, 0, 0);
}

uint64_t sub_100537F74()
{
  v1 = *(v0[10] + 80);
  ObjectType = swift_getObjectType();
  v3 = swift_task_alloc();
  v0[24] = v3;
  *v3 = v0;
  v3[1] = sub_100538030;
  v4 = v0[11];

  return dispatch thunk of TTRRemindersListInteractorType.fetchAutoCategorizationLocalCorrections(of:)(v4, ObjectType, v1);
}

uint64_t sub_100538030(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v1;

  if (v1)
  {
    v4 = sub_100538778;
  }

  else
  {
    v4 = sub_100538144;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100538144()
{
  v68 = v0;
  v0[5] = v0[12];
  v1 = v0 + 5;
  v2 = v0[25];
  v4 = v0[22];
  v3 = v1[18];
  v5 = v1[16];
  v1[1] = v1[8];
  static CharacterSet.alphanumerics.getter();
  sub_10007D420();
  v6 = StringProtocol.addingPercentEncoding(withAllowedCharacters:)();
  v8 = v7;
  v62 = *(v4 + 8);
  v62(v3, v5);
  if (v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  v64 = v9;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  v11 = v2 + 64;
  v12 = -1;
  v13 = -1 << *(v2 + 32);
  if (-v13 < 64)
  {
    v12 = ~(-1 << -v13);
  }

  v14 = v12 & *(v2 + 64);
  v15 = (63 - v13) >> 6;

  v16 = 0;
  if (v14)
  {
    while (1)
    {
      v17 = v16;
LABEL_15:
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v19 = (v17 << 10) | (16 * v18);
      v20 = (*(v2 + 48) + v19);
      v21 = v20[1];
      v22 = (*(v2 + 56) + v19);
      v23 = *v22;
      v24 = v22[1];
      v66 = *v20;
      v67 = v21;
      swift_bridgeObjectRetain_n();

      v25._countAndFlagsBits = 540945696;
      v25._object = 0xE400000000000000;
      String.append(_:)(v25);
      v26._countAndFlagsBits = v23;
      v26._object = v24;
      String.append(_:)(v26);
      v27._countAndFlagsBits = 10;
      v27._object = 0xE100000000000000;
      String.append(_:)(v27);
      v28._countAndFlagsBits = v66;
      v28._object = v21;
      String.append(_:)(v28);

      if (!v14)
      {
        goto LABEL_11;
      }
    }
  }

  while (1)
  {
LABEL_11:
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_32:
      swift_once();
      goto LABEL_24;
    }

    if (v17 >= v15)
    {
      break;
    }

    v14 = *(v11 + 8 * v17);
    ++v16;
    if (v14)
    {
      v16 = v17;
      goto LABEL_15;
    }
  }

  v29 = v10;
  v10 = v65;
  v30 = v65[23];
  v31 = v65[21];
  v33 = v65[16];
  v32 = v65[17];
  v34 = v65[15];

  v65[7] = 0xD00000000000001DLL;
  v65[8] = 0x800000010068BE50;
  static CharacterSet.alphanumerics.getter();
  v35 = StringProtocol.addingPercentEncoding(withAllowedCharacters:)();
  v37 = v36;
  v62(v30, v31);

  if (v37)
  {
    v38 = v35;
  }

  else
  {
    v38 = 0;
  }

  if (!v37)
  {
    v37 = 0xE000000000000000;
  }

  v66 = 0;
  v67 = 0xE000000000000000;
  _StringGuts.grow(_:)(179);
  v39._countAndFlagsBits = 0xD0000000000000A8;
  v39._object = 0x800000010068BE70;
  String.append(_:)(v39);
  v40._countAndFlagsBits = v38;
  v40._object = v37;
  String.append(_:)(v40);

  v41._countAndFlagsBits = 0x3D656C74695426;
  v41._object = 0xE700000000000000;
  String.append(_:)(v41);
  v42._countAndFlagsBits = v64;
  v42._object = v29;
  String.append(_:)(v42);

  v11 = 0;
  v15 = 0xE000000000000000;
  URL.init(string:)();
  if ((*(v32 + 48))(v34, 1, v33) != 1)
  {
    v50 = v65[19];
    v49 = v65[20];
    v51 = v65[17];
    v52 = v65[15];
    v53 = v65[16];
    v54 = v65[14];
    v63 = v54;

    v55 = *(v51 + 32);
    v55(v49, v52, v53);
    v56 = type metadata accessor for TaskPriority();
    (*(*(v56 - 8) + 56))(v54, 1, 1, v56);
    (*(v51 + 16))(v50, v49, v53);
    type metadata accessor for MainActor();
    v57 = static MainActor.shared.getter();
    v58 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v59 = swift_allocObject();
    *(v59 + 16) = v57;
    *(v59 + 24) = &protocol witness table for MainActor;
    v55(v59 + v58, v50, v53);
    sub_10009EF3C(0, 0, v63, &unk_100645600, v59);

    (*(v51 + 8))(v49, v53);
    goto LABEL_28;
  }

  sub_1000079B4(v65[15], &unk_100775660, &qword_10062F6B0);
  if (qword_100767440 != -1)
  {
    goto LABEL_32;
  }

LABEL_24:
  v43 = type metadata accessor for Logger();
  sub_100003E30(v43, qword_10078ADE0);

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v66 = v47;
    *v46 = 136315138;
    v48 = sub_100004060(v11, v15, &v66);

    *(v46 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v44, v45, "Failed to file radar with auto-categorization local corrections due to invalid radar URL {radarURL: %s}", v46, 0xCu);
    sub_100004758(v47);
  }

  else
  {
  }

LABEL_28:

  v60 = *(v10 + 8);

  return v60();
}

uint64_t sub_100538778()
{
  v12 = v0;
  if (qword_100767440 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003E30(v1, qword_10078ADE0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.rem_errorDescription.getter();
    v8 = sub_100004060(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to file radar with grocery local corrections due to error upon fetching grocery local corrections {error: %s}", v4, 0xCu);
    sub_100004758(v5);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100538968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100538A00, v6, v5);
}

uint64_t sub_100538A00()
{

  v1 = [objc_opt_self() defaultWorkspace];
  if (v1)
  {
    LSApplicationWorkspace.open(universalLink:)();
  }

  **(v0 + 16) = v1 == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100538AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000794C(a3, v25 - v10, &qword_10076BE10, &qword_10062FF90);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000079B4(v11, &qword_10076BE10, &qword_10062FF90);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_100538D64()
{
  swift_getObjectType();
  v1 = dispatch thunk of TTRShowRemindersInListDataModelSourceBaseType.list.getter();
  if (v1)
  {
    v4 = v1;
    swift_getObjectType();
    dispatch thunk of TTRRemindersListInteractorType.convertListToGroceryList(for:)();
    v2 = *(v0 + 144);
    ObjectType = swift_getObjectType();
    (*(v2 + 672))(ObjectType, v2);
  }
}

void sub_100538E24(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 store];
  v6 = [a1 objectID];
  v19[0] = 0;
  v7 = [v5 fetchListWithObjectID:v6 error:v19];

  if (v7)
  {
    v8 = v19[0];
    v9 = sub_10045075C(v7, a2, [v7 isOwnedByMe] ^ 1);
    swift_unknownObjectRelease();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = [Strong presentedViewController];
      if (v12)
      {
        v13 = v12;
        v14 = swift_allocObject();
        *(v14 + 16) = v11;
        *(v14 + 24) = v9;
        *(v14 + 32) = 1;
        v19[4] = sub_10023A490;
        v19[5] = v14;
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 1107296256;
        v19[2] = sub_10001047C;
        v19[3] = &unk_10072DCA8;
        v15 = _Block_copy(v19);
        v16 = v11;
        v17 = v9;

        [v13 dismissViewControllerAnimated:1 completion:v15];

        _Block_release(v15);
        return;
      }

      [v11 presentViewController:v9 animated:1 completion:0];
    }
  }

  else
  {
    v18 = v19[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_100539080(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  static TTRLocalizableStrings.UndoAction.changeList.getter();
  v10 = objc_opt_self();
  v11 = String._bridgeToObjectiveC()();

  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  *(v12 + 40) = a1;
  *(v12 + 48) = a2;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_100539248;
  *(v13 + 24) = v12;
  v16[4] = sub_100026410;
  v16[5] = v13;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_100026440;
  v16[3] = &unk_10072DC08;
  v14 = _Block_copy(v16);

  v15 = a3;
  swift_unknownObjectRetain();

  [v10 withActionName:v11 block:v14];

  _Block_release(v14);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }
}

void sub_100539258()
{
  v0._object = 0x8000000100686D70;
  v1._countAndFlagsBits = 0x1000000000000034;
  v1._object = 0x800000010068BD30;
  v0._countAndFlagsBits = 0x1000000000000015;
  TTRLocalizedString(_:comment:)(v0, v1);
  v2._object = 0x8000000100686D90;
  v3._object = 0x8000000100686D90;
  v2._countAndFlagsBits = 0xD000000000000037;
  v3._countAndFlagsBits = 0xD000000000000037;
  TTRLocalizedString(_:comment:)(v2, v3);
  v4 = String._bridgeToObjectiveC()();

  v5 = String._bridgeToObjectiveC()();

  v10 = [objc_opt_self() alertControllerWithTitle:v4 message:v5 preferredStyle:1];

  static TTRLocalizableStrings.Common.alertOKButton.getter();
  v6 = String._bridgeToObjectiveC()();

  v7 = [objc_opt_self() actionWithTitle:v6 style:0 handler:0];

  [v10 addAction:v7];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    [Strong presentViewController:v10 animated:1 completion:0];
  }
}

uint64_t sub_10053940C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100539454(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_1007831D0, &qword_10063F270);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1005394D4()
{
  result = qword_10078B8F0;
  if (!qword_10078B8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078B8F0);
  }

  return result;
}

uint64_t sub_10053957C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10001AA3C;

  return sub_100537DD0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100539650(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001AA3C;

  return sub_10001A6BC(a1, v4);
}

uint64_t sub_100539708(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001AA38;

  return sub_100538968(a1, v6, v7, v1 + v5);
}

unint64_t sub_10053980C()
{
  result = qword_10078B8F8;
  if (!qword_10078B8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078B8F8);
  }

  return result;
}

uint64_t sub_1005398CC()
{
  v1 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_cachedListInfo;
  swift_beginAccess();
  sub_10000794C(v0 + v4, v3, &unk_10078A380, &qword_10062DE60);
  v5 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_1000079B4(v3, &unk_10078A380, &qword_10062DE60);
    return 0;
  }

  else
  {
    v8 = TTRRemindersListViewModel.ListInfo.color.getter();
    (*(v6 + 8))(v3, v5);
    return v8;
  }
}