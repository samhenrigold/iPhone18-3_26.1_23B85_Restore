uint64_t sub_1003CA5E0(uint64_t a1, uint64_t a2, int a3)
{
  v32 = a3;
  v29 = a2;
  v27[1] = a1;
  v34 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v35 = *(v4 - 8);
  v36 = v4;
  __chkstk_darwin(v4);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListHighlightTarget.TargetItem();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchTime();
  v31 = v11;
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v27 - v16;
  sub_100003540(0, &qword_100777780, OS_dispatch_queue_ptr);
  v28 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v30 = *(v12 + 8);
  v30(v14, v11);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v8 + 16))(v10, v29, v7);
  v19 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v20 = v19 + v9;
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  (*(v8 + 32))(v21 + v19, v10, v7);
  *(v21 + v20) = v32;
  aBlock[4] = sub_1003DE2F0;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001047C;
  aBlock[3] = &unk_1007255D0;
  v22 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1003DF088(&qword_10076B7D0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100058000(&qword_100780A50, &qword_100635D30);
  sub_10000E188(&qword_10076B7E0, &qword_100780A50, &qword_100635D30, &protocol conformance descriptor for [A]);
  v24 = v33;
  v23 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v25 = v28;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v22);

  (*(v37 + 8))(v24, v23);
  (*(v35 + 8))(v6, v36);
  return (v30)(v17, v31);
}

void sub_1003CAAB0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRRemindersListViewModel.Item();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v32 = v5;
    v14 = v4;
    v15 = a3;
    v16 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
    TTRRemindersListHighlightTarget.TargetItem.item.getter();
    v17 = *&v16[qword_10078A548];
    if (v17)
    {
      v18 = v17;
      v19 = sub_1000DE654(v11);

      (*(v9 + 8))(v11, v8);
      v20 = v15;
      v21 = v14;
      v22 = v32;
      if (v19)
      {
        type metadata accessor for TTRIRemindersListReminderCell();
        v23 = swift_dynamicCastClass();
        if (v23)
        {
          v24 = v23;
          if (TTRIRemindersListReminderCell.isViewModelValid.getter())
          {
            UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, v24);
          }
        }
      }

      v25 = *&v13[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView];
      v26 = *&v25[qword_10078A548];
      if (v26)
      {
        v27 = *&v26[qword_100771730];
        v28 = v25;
        v29 = v26;
        v30 = v27;
        NSNotFound.getter();
        NSNotFound.getter();
        IndexPath.init(row:section:)();
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        (*(v22 + 8))(v7, v21);
        [v30 highlightRowAtIndexPath:isa animated:v20 & 1 scrollPosition:0];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_1003CAD9C()
{
  v0 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  v1 = *&v0[qword_10078A548];
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    sub_1001A0494(0, 0, 0, 0, v3, sub_1003DE460);
  }

  else
  {
    __break(1u);
  }
}

void sub_1003CAE4C(uint64_t a1)
{
  v2 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = type metadata accessor for TTRRemindersListViewModel.Item();
    v7 = *(v6 - 8);
    v8 = (v7 + 16);
    v9 = (v7 + 56);
    v10 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v11 = *(v7 + 72);
    while (1)
    {
      v12 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
      (*v8)(v4, v10, v6);
      (*v9)(v4, 0, 1, v6);
      v13 = *&v12[qword_10078A548];
      if (!v13)
      {
        break;
      }

      v14 = v13;
      sub_1000D9550(v4, 0, 5);

      sub_1000079B4(v4, &qword_100772140, &qword_10062D9F0);
      v10 += v11;
      if (!--v5)
      {
        return;
      }
    }

    __break(1u);
  }
}

char *sub_1003CB008(uint64_t a1, uint64_t a2)
{
  v65 = a1;
  v3 = type metadata accessor for TTRRemindersListViewModel.SectionID.EditableCasesSectionID();
  v62 = *(v3 - 8);
  v63 = v3;
  __chkstk_darwin(v3);
  v5 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v10 = *(v61 - 8);
  __chkstk_darwin(v61);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTRIFocusGroupIdentifier();
  v59 = *(v13 - 8);
  v60 = v13;
  __chkstk_darwin(v13);
  v58 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TTRRemindersListViewModel.Item.iOSListCasesInItem();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = a2;
  TTRRemindersListViewModel.Item.iOSListCasesOnly.getter();
  v19 = (*(v16 + 88))(v18, v15);
  if (v19 != enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.sectionsContainer(_:))
  {
    if (v19 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.section(_:))
    {
      (*(v16 + 96))(v18, v15);
      v16 = v61;
      (*(v10 + 32))(v12, v18, v61);
      TTRRemindersListViewModel.SectionHeader.id.getter();
      TTRRemindersListViewModel.SectionID.editableSectionCasesOnly.getter();
      (*(v7 + 8))(v9, v6);
      v21 = v62;
      v20 = v63;
      v22 = (*(v62 + 88))(v5, v63);
      if (v22 != enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.objectID(_:) && v22 != enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.sectionless(_:) && v22 != enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.uncommittedEditingSection(_:))
      {
        goto LABEL_48;
      }

      (*(v21 + 8))(v5, v20);
      type metadata accessor for TTRIRemindersListEditableSectionCell(0);
      v23 = *(v65 + qword_10078A540);
      if (v23)
      {
        v24 = v23;
        v25 = UITableView.dequeueReusableCell<A>(_:)();

        (*(v10 + 8))(v12, v16);
LABEL_8:
        v26 = v25;
LABEL_25:
        sub_1003DA7FC(v26, v64);

        return v26;
      }

      __break(1u);
      goto LABEL_39;
    }

    if (v19 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.reminder(_:) || v19 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.uncommittedReminder(_:) || v19 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.placeholderReminder(_:))
    {
      v29 = *(v16 + 8);
      v16 += 8;
      v29(v18, v15);
      type metadata accessor for TTRIRemindersListReminderCell();
      v30 = *(v65 + qword_10078A540);
      if (v30)
      {
        v31 = v30;
        v32 = UITableView.dequeueReusableCell<A>(_:)();

        v34 = v58;
        v33 = v59;
        v35 = v60;
        (*(v59 + 104))(v58, enum case for TTRIFocusGroupIdentifier.remindersList(_:), v60);
        v26 = v32;
        TTRIFocusGroupIdentifier.rawValue.getter();
        (*(v33 + 8))(v34, v35);
        v36 = String._bridgeToObjectiveC()();

        [v26 setTtrFocusGroupIdentifier:v36];

        goto LABEL_25;
      }

LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (v19 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.completed(_:))
    {
      type metadata accessor for TTRIRemindersListCompletedCell();
      v37 = *(v65 + qword_10078A540);
      if (!v37)
      {
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

LABEL_21:
      v38 = v37;
      v39 = UITableView.dequeueReusableCell<A>(_:)();

      v40 = *(v16 + 8);
      v26 = v39;
      v40(v18, v15);
      goto LABEL_25;
    }

    if (v19 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.hashtags(_:))
    {
      type metadata accessor for TTRIRemindersListHashtagCollectionCell(0);
      v41 = *(v65 + qword_10078A540);
      if (v41)
      {
        v42 = v41;
        v43 = UITableView.dequeueReusableCell<A>(_:)();

        v45 = v58;
        v44 = v59;
        v46 = v60;
        (*(v59 + 104))(v58, enum case for TTRIFocusGroupIdentifier.remindersList(_:), v60);
        v26 = v43;
        TTRIFocusGroupIdentifier.rawValue.getter();
        (*(v44 + 8))(v45, v46);
        v47 = String._bridgeToObjectiveC()();

        [v26 setTtrFocusGroupIdentifier:v47];

        (*(v16 + 8))(v18, v15);
        goto LABEL_25;
      }

      goto LABEL_41;
    }

    if (v19 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.templateStatus(_:))
    {
      v19 = type metadata accessor for TTRIRemindersListTemplateStatusCell(0);
      v37 = *(v65 + qword_10078A540);
      if (v37)
      {
        goto LABEL_21;
      }

      __break(1u);
    }

    if (v19 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.tip(_:))
    {
      v19 = type metadata accessor for TTRIRemindersListTipCell();
      v37 = *(v65 + qword_10078A540);
      if (v37)
      {
        goto LABEL_21;
      }

      __break(1u);
    }

    if (v19 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.publicTemplatePreviewStatus(_:))
    {
      v19 = type metadata accessor for TTRIRemindersListPublicTemplatePreviewStatusCell(0);
      v49 = *(v65 + qword_10078A540);
      if (v49)
      {
        goto LABEL_37;
      }

      __break(1u);
    }

    if (v19 != enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.recentlyDeletedDisclaimer(_:))
    {
      goto LABEL_53;
    }

    type metadata accessor for TTRIRemindersListRecentlyDeletedDisclaimerCell(0);
    v49 = *(v65 + qword_10078A540);
    if (!v49)
    {
      goto LABEL_42;
    }

LABEL_37:
    v50 = v49;
    v25 = UITableView.dequeueReusableCell<A>(_:)();

    goto LABEL_8;
  }

LABEL_43:
  (*(v16 + 8))(v18, v15);
  do
  {
    if (qword_100767240 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_100003E30(v51, qword_100781340);
    v52 = sub_100008E04(_swiftEmptyArrayStorage);
    v53 = sub_100008E04(_swiftEmptyArrayStorage);
    v54 = "Unexpected item type for cellForItem";
    for (i = 36; ; i = 41)
    {
      sub_1003F9818(v54, i, 2uLL, v52, v53);
      __break(1u);
LABEL_48:
      if (v22 != enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.unknown(_:))
      {
        break;
      }

      if (qword_100767240 != -1)
      {
        swift_once();
      }

      v56 = type metadata accessor for Logger();
      sub_100003E30(v56, qword_100781340);
      v52 = sub_100008E04(_swiftEmptyArrayStorage);
      v53 = sub_100008E04(_swiftEmptyArrayStorage);
      v54 = "Unexpected sectionID type for cellForItem";
    }

    v19 = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
LABEL_53:
    ;
  }

  while (v19 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.unknown(_:));
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void *sub_1003CB93C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    sub_10000B0D8(result + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter, v5);

    v3 = v5[4];
    sub_10000C36C(v5, v5[3]);
    v4 = static TTRITipKitSignalContext.RemindersList.keyboardShortcut.getter();
    (*(*(v3 + 8) + 968))(v4);

    return sub_100004758(v5);
  }

  return result;
}

uint64_t sub_1003CB9F0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v2 = Strong;
  sub_10000B0D8(Strong + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter, v7);

  v3 = v8;
  v4 = v9;
  sub_10000C36C(v7, v8);
  v5 = (*(*(v4 + 8) + 216))(v3);
  sub_100004758(v7);
  return v5;
}

uint64_t sub_1003CBA9C(uint64_t a1, void *a2)
{
  v3 = v2;
  v139 = a1;
  v5 = type metadata accessor for TTRRemindersListItemStateTracker.CellState();
  v146 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&unk_10078A3A0, &qword_10063D380);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v130 = &v126 - v10;
  v11 = sub_100058000(&unk_100781930, &qword_10063D388);
  __chkstk_darwin(v11 - 8);
  v13 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v144 = &v126 - v15;
  v148 = sub_100058000(&qword_100778EA0, &unk_10063D390);
  v16 = *(v148 - 8);
  __chkstk_darwin(v148);
  v129 = &v126 - v17;
  v18 = sub_100058000(&unk_100781940, &unk_100638910);
  __chkstk_darwin(v18 - 8);
  v135 = &v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v142 = &v126 - v21;
  v140 = sub_100058000(&qword_10078A3B0, &unk_100638720);
  v147 = *(v140 - 8);
  __chkstk_darwin(v140);
  v128 = &v126 - v22;
  v23 = sub_100058000(&qword_100781950, &unk_100642A90);
  __chkstk_darwin(v23 - 8);
  v134 = &v126 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v126 - v26;
  v28 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v28 - 8);
  v143 = &v126 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v141 = &v126 - v31;
  __chkstk_darwin(v32);
  v138 = &v126 - v33;
  v34 = sub_100058000(&qword_100772738, &unk_10063D2B0);
  __chkstk_darwin(v34 - 8);
  v145 = &v126 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v126 - v37;
  type metadata accessor for TTRIRemindersListReminderCell();
  v151 = swift_dynamicCastClass();
  if (v151)
  {
    v136 = v16;
    v126 = v13;
    v137 = v9;
    v132 = v8;
    v127 = v7;
    v133 = v5;
    v149 = v3;
    v39 = &v3[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter];
    v40 = *&v3[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24];
    v41 = *(v39 + 4);
    sub_10000C36C(v39, v40);
    v42 = *(v41 + 8);
    v43 = v139;
    v44 = *(v42 + 512);
    v45 = a2;
    v131 = v38;
    v44(v43, v40, v42);
    v47 = *(v39 + 3);
    v46 = *(v39 + 4);
    sub_10000C36C(v39, v47);
    if ((*(*(v46 + 8) + 1040))(v43, v47))
    {
      v49 = *(v39 + 3);
      v48 = *(v39 + 4);
      sub_10000C36C(v39, v49);
      (*(*(v48 + 8) + 904))(v43, v49);
    }

    sub_1003DF088(&qword_100781958, type metadata accessor for TTRIRemindersListContentViewController, &unk_10063CFE8);
    swift_unknownObjectRetain();
    TTRIRemindersListReminderCell.delegate.setter();
    v150 = v39;
    sub_10000B0D8(v39, &v152);
    v50 = *(&v153 + 1);
    v51 = v154;
    sub_10000C36C(&v152, *(&v153 + 1));
    TTRIRemindersListReminderCell.titleModule.getter();
    v52 = v147;
    v53 = v140;
    v54 = (*(v147 + 48))(v27, 1, v140);
    v55 = v148;
    v56 = v138;
    if (v54)
    {
      sub_1000079B4(v27, &qword_100781950, &unk_100642A90);
      v57 = type metadata accessor for TTRRemindersListViewModel.Item();
      (*(*(v57 - 8) + 56))(v56, 1, 1, v57);
    }

    else
    {
      v66 = v128;
      (*(v52 + 16))(v128, v27, v53);
      sub_1000079B4(v27, &qword_100781950, &unk_100642A90);
      TTRRemindersListInCellModule.interface.getter();
      (*(v52 + 8))(v66, v53);
      swift_getObjectType();
      v52 = v147;
      v55 = v148;
      TTRIReminderCellTitleModuleInterface.item.getter();
      swift_unknownObjectRelease();
    }

    v67 = (*(v51[1] + 312))(v43, v56, v50);
    sub_1000079B4(v56, &qword_100772140, &qword_10062D9F0);
    sub_100004758(&v152);
    v68 = v149;
    v69 = v132;
    if ((v67 & 1) == 0)
    {
LABEL_19:
      sub_10000B0D8(v150, &v152);
      v77 = *(&v153 + 1);
      v78 = v154;
      sub_10000C36C(&v152, *(&v153 + 1));
      v79 = v142;
      TTRIRemindersListReminderCell.notesModule.getter();
      v80 = v79;
      v81 = v136;
      v82 = v55;
      if ((*(v136 + 48))(v80, 1, v55))
      {
        sub_1000079B4(v80, &unk_100781940, &unk_100638910);
        v83 = type metadata accessor for TTRRemindersListViewModel.Item();
        v84 = v141;
        (*(*(v83 - 8) + 56))(v141, 1, 1, v83);
      }

      else
      {
        v85 = v43;
        v86 = v68;
        v87 = v69;
        v88 = v129;
        (*(v81 + 16))(v129, v80, v55);
        sub_1000079B4(v80, &unk_100781940, &unk_100638910);
        TTRRemindersListInCellModule.interface.getter();
        v89 = v88;
        v69 = v87;
        v68 = v86;
        v43 = v85;
        v82 = v55;
        (*(v81 + 8))(v89, v55);
        swift_getObjectType();
        v84 = v141;
        TTRIReminderCellNotesModuleInterface.item.getter();
        swift_unknownObjectRelease();
      }

      v90 = (*(v78[1] + 312))(v43, v84, v77);
      sub_1000079B4(v84, &qword_100772140, &qword_10062D9F0);
      sub_100004758(&v152);
      v65 = v151;
      if ((v90 & 1) == 0)
      {
LABEL_29:
        v98 = v150;
        sub_10000B0D8(v150, &v152);
        v99 = *(&v153 + 1);
        v100 = v154;
        sub_10000C36C(&v152, *(&v153 + 1));
        v101 = v144;
        TTRIRemindersListReminderCell.hashtagModule.getter();
        v102 = v101;
        v103 = v137;
        if ((*(v137 + 48))(v102, 1, v69))
        {
          sub_1000079B4(v102, &unk_100781930, &qword_10063D388);
          v104 = type metadata accessor for TTRRemindersListViewModel.Item();
          v105 = v143;
          (*(*(v104 - 8) + 56))(v143, 1, 1, v104);
        }

        else
        {
          v106 = v130;
          (*(v103 + 16))(v130, v102, v69);
          sub_1000079B4(v102, &unk_100781930, &qword_10063D388);
          TTRRemindersListInCellModule.interface.getter();
          v107 = v106;
          v98 = v150;
          (*(v103 + 8))(v107, v69);
          swift_getObjectType();
          v105 = v143;
          dispatch thunk of TTRIReminderCellHashtagModuleInterface.item.getter();
          swift_unknownObjectRelease();
          v108 = type metadata accessor for TTRRemindersListViewModel.Item();
          (*(*(v108 - 8) + 56))(v105, 0, 1, v108);
        }

        v109 = (*(v100[1] + 312))(v43, v105, v99);
        sub_1000079B4(v105, &qword_100772140, &qword_10062D9F0);
        sub_100004758(&v152);
        if ((v109 & 1) == 0)
        {
          goto LABEL_39;
        }

        sub_10000B0D8(v98, &v152);
        v110 = *(&v153 + 1);
        v111 = v154;
        sub_10000C36C(&v152, *(&v153 + 1));
        v112 = [v68 parentViewController];
        if (v112)
        {
          swift_getObjectType();
          v113 = swift_conformsToProtocol2();
          if (v113)
          {
            v114 = *(v113 + 16);
LABEL_38:
            v115 = *(v111[1] + 336);
            v116 = v126;
            v115(v43, v112, v114, v68, v110);
            swift_unknownObjectRelease();
            (*(v137 + 56))(v116, 0, 1, v69);
            TTRIRemindersListReminderCell.hashtagModule.setter();
            sub_100004758(&v152);
LABEL_39:
            v117 = v131;
            v118 = v145;
            sub_10000794C(v131, v145, &qword_100772738, &unk_10063D2B0);
            v119 = type metadata accessor for TTRRemindersListViewModel.Reminder();
            v120 = *(v119 - 8);
            if ((*(v120 + 48))(v118, 1, v119) == 1)
            {
              sub_1000079B4(v118, &qword_100772738, &unk_10063D2B0);
              v152 = 0u;
              v153 = 0u;
              v154 = 0;
            }

            else
            {
              *(&v153 + 1) = v119;
              v154 = &protocol witness table for TTRRemindersListViewModel.Reminder;
              v121 = sub_1000317B8(&v152);
              (*(v120 + 32))(v121, v118, v119);
            }

            v122 = v133;
            v123 = v146;
            TTRIRemindersListReminderCell.viewModel.setter();
            if (TTRIRemindersListReminderCell.isViewModelValid.getter())
            {
              v124 = v127;
              (*(v123 + 104))(v127, enum case for TTRRemindersListItemStateTracker.CellState.viewModelLoaded(_:), v122);
              TTRRemindersListItemStateTracker.fullfil(_:of:)();
              (*(v123 + 8))(v124, v122);
            }

            sub_1000079B4(v117, &qword_100772738, &unk_10063D2B0);
            return v65;
          }

          v112 = 0;
        }

        v114 = 0;
        goto LABEL_38;
      }

      sub_10000B0D8(v150, &v152);
      v91 = *(&v153 + 1);
      v92 = v154;
      sub_10000C36C(&v152, *(&v153 + 1));
      v93 = [v68 parentViewController];
      if (v93)
      {
        swift_getObjectType();
        v94 = swift_conformsToProtocol2();
        if (v94)
        {
          v95 = *(v94 + 24);
LABEL_28:
          v96 = *(v92[1] + 328);
          v97 = v135;
          v96(v43, v93, v95, v68, v91);
          swift_unknownObjectRelease();
          (*(v136 + 56))(v97, 0, 1, v82);
          TTRIRemindersListReminderCell.notesModule.setter();
          sub_100004758(&v152);
          goto LABEL_29;
        }

        v93 = 0;
      }

      v95 = 0;
      goto LABEL_28;
    }

    sub_10000B0D8(v150, &v152);
    v70 = *(&v153 + 1);
    v71 = v154;
    sub_10000C36C(&v152, *(&v153 + 1));
    v72 = [v68 parentViewController];
    if (v72)
    {
      swift_getObjectType();
      v73 = swift_conformsToProtocol2();
      if (v73)
      {
        v74 = *(v73 + 32);
LABEL_18:
        v75 = *(v71[1] + 320);
        v76 = v134;
        v75(v43, v72, v74, v68, v70);
        swift_unknownObjectRelease();
        (*(v52 + 56))(v76, 0, 1, v53);
        TTRIRemindersListReminderCell.titleModule.setter();
        sub_100004758(&v152);
        goto LABEL_19;
      }

      v72 = 0;
    }

    v74 = 0;
    goto LABEL_18;
  }

  if (qword_100767240 != -1)
  {
    swift_once();
  }

  v58 = type metadata accessor for Logger();
  sub_100003E30(v58, qword_100781340);
  v59 = a2;
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *v62 = 138412290;
    *(v62 + 4) = v59;
    *v63 = v59;
    v64 = v59;
    _os_log_impl(&_mh_execute_header, v60, v61, "Failed to cast cell to reminderListCell {cell: %@}", v62, 0xCu);
    sub_1000079B4(v63, &unk_10076DF80, &qword_10062F730);
  }

  return 0;
}

uint64_t sub_1003CCB6C(uint64_t a1, uint64_t (**a2)(char *, uint64_t))
{
  v5 = type metadata accessor for TTRICollectionViewCellSelectionOption();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_isHighlightingItemsProgrammatically))
  {
    goto LABEL_2;
  }

  sub_10000C36C((v2 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), *(v2 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24));
  v11 = qword_10078A540;
  v12 = *(a1 + qword_10078A540);
  if (!v12)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_10041EAF8(a2, [v12 isEditing], v8);
  v13 = (*(v6 + 88))(v8, v5);
  if (v13 == enum case for TTRICollectionViewCellSelectionOption.disallowed(_:))
  {
    v9 = 0;
    v10 = 3;
    goto LABEL_15;
  }

  if (v13 == enum case for TTRICollectionViewCellSelectionOption.selectItem(_:))
  {
LABEL_2:
    v9 = 1;
    v10 = 3;
LABEL_15:
    v15 = *(a1 + qword_10078A548);
    if (v15)
    {
      v16 = v15;
      v17 = sub_1000DE654(a2);

      [v17 setSelectionStyle:v10];
      return v9;
    }

    __break(1u);
    goto LABEL_18;
  }

  if (v13 == enum case for TTRICollectionViewCellSelectionOption.editPrimaryText(_:))
  {
    v14 = *(a1 + v11);
    if (!v14)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if ([v14 hasActiveDrop])
    {
      v10 = 3;
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_14;
  }

  if (v13 == enum case for TTRICollectionViewCellSelectionOption.performPrimaryAction(_:))
  {
    v10 = 0;
LABEL_14:
    v9 = 1;
    goto LABEL_15;
  }

LABEL_20:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1003CCD88@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(char *, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v45 = a3;
  v7 = type metadata accessor for TTREditingStateOption.InputType();
  v43 = *(v7 - 8);
  v44 = v7;
  __chkstk_darwin(v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v42 - v11;
  v13 = type metadata accessor for TTRICollectionViewCellSelectionOption();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = (v3 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter);
  sub_10000C36C((v3 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), *(v3 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24));
  v18 = *(a1 + qword_10078A540);
  if (!v18)
  {
    __break(1u);
    goto LABEL_22;
  }

  sub_10041EAF8(a2, [v18 isEditing], v16);
  v19 = (*(v14 + 88))(v16, v13);
  if (v19 == enum case for TTRICollectionViewCellSelectionOption.disallowed(_:))
  {
LABEL_3:
    v20 = type metadata accessor for TTRRemindersListViewModel.Item();
    return (*(*(v20 - 8) + 56))(v45, 1, 1, v20);
  }

  if (v19 != enum case for TTRICollectionViewCellSelectionOption.selectItem(_:))
  {
    if (v19 != enum case for TTRICollectionViewCellSelectionOption.editPrimaryText(_:))
    {
      if (v19 == enum case for TTRICollectionViewCellSelectionOption.performPrimaryAction(_:))
      {
        v34 = v17[3];
        v35 = v17[4];
        sub_10000C36C(v17, v34);
        (*(*(v35 + 8) + 784))(a2, v34);
        goto LABEL_3;
      }

      goto LABEL_24;
    }

    v28 = *(a1 + qword_10078A548);
    if (v28)
    {
      v29 = v28;
      v30 = sub_1000DE654(a2);

      if (v30)
      {
        swift_getObjectType();
        if (swift_conformsToProtocol2())
        {
          v31 = *(v4 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_internalFocusedCell);
          if (v31 && (type metadata accessor for TTRIRemindersListReminderCell(), swift_dynamicCastClass() == v31))
          {
            v36 = v17[3];
            v37 = v17[4];
            sub_10000C36C(v17, v36);
            v38 = *(v37 + 8);
            v39 = *(v38 + 400);
            v40 = v31;
            v41 = v30;
            v39(a2, v36, v38);

            sub_1000079B4(v12, &qword_100772140, &qword_10062D9F0);
          }

          else
          {
            swift_getObjectType();
            v33 = v43;
            v32 = v44;
            (*(v43 + 104))(v9, enum case for TTREditingStateOption.InputType.unspecified(_:), v44);
            dispatch thunk of TTRIShowRemindersEditableCell.beginEditingPrimaryString(_:)();

            (*(v33 + 8))(v9, v32);
          }
        }

        else
        {
        }
      }

      goto LABEL_3;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  v22 = *(a1 + qword_10078A548);
  if (!v22)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v23 = v22;
  v24 = sub_1000DE654(a2);

  if (v24)
  {
    [v24 setSelectionStyle:3];
  }

  v25 = type metadata accessor for TTRRemindersListViewModel.Item();
  v26 = *(v25 - 8);
  v27 = v45;
  (*(v26 + 16))(v45, a2, v25);
  return (*(v26 + 56))(v27, 0, 1, v25);
}

void sub_1003CD2A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession.SelectionState(0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + qword_10078A540);
  if (!v11)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (![v11 isEditing])
  {
    return;
  }

  if (!*&v4[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_automaticSubtaskSelectionController])
  {
LABEL_10:
    __break(1u);
    return;
  }

  v12 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v12 - 8) + 16))(v10, a2, v12);
  swift_storeEnumTagMultiPayload();

  sub_100069304(v10);

  sub_1003DEF7C(v10, type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession.SelectionState);
  v13 = [v4 parentViewController];
  if (v13)
  {
    v14 = v13;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      sub_10037DD70(1, 0);
      sub_10037FFC0();
    }
  }
}

void sub_1003CD43C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v22 = a4;
  v23 = a5;
  v21 = a3;
  v20[1] = a1;
  v20[2] = a2;
  v24 = a6;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v20[0] = v7;
  v8 = *(v7 - 8);
  v20[3] = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRReminderSwipeAction();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v12 + 16))(v14, a1, v11);
  (*(v8 + 16))(v10, v21, v7);
  v16 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v17 = (v13 + *(v8 + 80) + v16) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  (*(v12 + 32))(v18 + v16, v14, v11);
  (*(v8 + 32))(v18 + v17, v10, v20[0]);

  v19 = TTRReminderSwipeAction.makeContextualAction(handler:)();

  *v24 = v19;
}

void sub_1003CD6A0(char *a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v40 - v11;
  v13 = qword_10078A548;
  v14 = *&a1[qword_10078A548];
  if (!v14)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v14;
  v16 = sub_1000DE654(a2);

  if (!v16)
  {
    return;
  }

  type metadata accessor for TTRIRemindersListReminderCell();
  v17 = swift_dynamicCastClass();
  if (!v17)
  {

    return;
  }

  v18 = v17;
  [a1 convertPoint:v17 toCoordinateSpace:{a3, a4}];
  v20 = v19;
  v22 = v21;
  v40 = v5;
  v23 = (v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter);
  v25 = *(v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
  v24 = *(v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
  sub_10000C36C(v23, v25);
  v26 = *&a1[v13];
  if (!v26)
  {
    goto LABEL_15;
  }

  v27 = v26;
  v28 = sub_1000DEE9C(1);

  v29 = *&a1[qword_10078A540];
  if (!v29)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v30 = (*(*(v24 + 8) + 840))(a2, v18, v28, [v29 isEditing], v25, v20, v22);
  v32 = v31;
  v34 = v33;

  if (v30)
  {
    if (v34)
    {
      sub_1003DE74C(v32, 1);
      v35 = type metadata accessor for TTRRemindersListViewModel.Item();
      (*(*(v35 - 8) + 56))(v12, 1, 1, v35);
    }

    else
    {
      sub_1003DE74C(v32, 0);
      v36 = type metadata accessor for TTRRemindersListViewModel.Item();
      v37 = *(v36 - 8);
      (*(v37 + 16))(v12, a2, v36);
      (*(v37 + 56))(v12, 0, 1, v36);
    }

    v38 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_contextMenuOriginatorItem;
    v39 = v40;
    swift_beginAccess();
    sub_10000D184(v12, v39 + v38, &qword_100772140, &qword_10062D9F0);
    swift_endAccess();
  }
}

void sub_1003CD9B0(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    sub_1003CDA40(a6, a7, a2, a3, a4);
  }
}

void sub_1003CDA40(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v80 = a3;
  v10 = type metadata accessor for TTRIPopoverAnchor();
  v77 = *(v10 - 8);
  v78 = v10;
  __chkstk_darwin(v10);
  v76 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRRemindersListPostponeType();
  v79 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TTRReminderSwipeAction();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, a1, v15, v17);
  v20 = (*(v16 + 88))(v19, v15);
  if (v20 == enum case for TTRReminderSwipeAction.delete(_:))
  {
    v21 = *(v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
    v22 = *(v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
    sub_10000C36C((v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), v21);
    (*(*(v22 + 8) + 88))(a2, a4, a5, v21);
    return;
  }

  v23 = a2;
  v75 = a4;
  if (v20 == enum case for TTRReminderSwipeAction.showDetails(_:))
  {
    v24 = v5;
    v25 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
    v26 = *&v25[qword_10078A548];
    if (v26)
    {
      v27 = v25;
      v28 = v26;
      v29 = sub_1000DE654(a2);

      if (v29)
      {
        type metadata accessor for TTRIRemindersListReminderCell();
        v30 = swift_dynamicCastClass();
        v31 = a5;
        v32 = v75;
        if (v30)
        {
          v33 = (v24 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter);
          v34 = *(v24 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
          v35 = v33[4];
          sub_10000C36C(v33, v34);
          (*(*(v35 + 8) + 128))(a2, v80, v32, v31, v34);

          return;
        }

        v38 = 0;
        goto LABEL_41;
      }

      goto LABEL_39;
    }

    __break(1u);
    goto LABEL_44;
  }

  if (v20 == enum case for TTRReminderSwipeAction.flag(_:))
  {
    v36 = *(v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
    v37 = *(v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
    sub_10000C36C((v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), v36);
    v38 = (*(*(v37 + 8) + 96))(1, a2, v36);
  }

  else
  {
    if (v20 == enum case for TTRReminderSwipeAction.unflag(_:))
    {
      v39 = *(v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
      v40 = *(v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
      sub_10000C36C((v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), v39);
      v38 = (*(*(v40 + 8) + 96))(0, a2, v39);
      goto LABEL_40;
    }

    if (v20 == enum case for TTRReminderSwipeAction.indent(_:))
    {
      v41 = *(v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
      v42 = *(v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
      sub_10000C36C((v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), v41);
      sub_100058000(&qword_100772150, &unk_100635D00);
      v43 = type metadata accessor for TTRRemindersListViewModel.Item();
      v44 = *(v43 - 8);
      v45 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_10062D400;
      (*(v44 + 16))(v46 + v45, v23, v43);
      v47 = (*(*(v42 + 8) + 744))(v46, v41);
    }

    else
    {
      if (v20 != enum case for TTRReminderSwipeAction.outdent(_:))
      {
        if (v20 == enum case for TTRReminderSwipeAction.postponeToTomorrow(_:))
        {
          v55 = *(v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
          v56 = *(v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
          sub_10000C36C((v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), v55);
          v57 = &enum case for TTRRemindersListPostponeType.tomorrow(_:);
        }

        else
        {
          if (v20 != enum case for TTRReminderSwipeAction.postponeToThisWeekend(_:) && v20 != enum case for TTRReminderSwipeAction.postponeToNextWeekend(_:))
          {
            if (v20 != enum case for TTRReminderSwipeAction.setCustomDateAndTime(_:))
            {
              if (v20 == enum case for TTRReminderSwipeAction.permanentlyHide(_:))
              {
                v70 = *(v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
                v71 = *(v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
                sub_10000C36C((v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), v70);
                v72 = v76;
                static TTRIPopoverAnchor.sourceView(_:permittedArrowDirections:)();
                (*(*(v71 + 8) + 264))(a2, v72, v75, a5, v70);
                (*(v77 + 8))(v72, v78);
                return;
              }

              if (v20 == enum case for TTRReminderSwipeAction.moveToAnyList(_:))
              {
                v73 = *(v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
                v74 = *(v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
                sub_10000C36C((v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), v73);
                (*(*(v74 + 8) + 272))(a2, v80, v75, a5, v73);
                return;
              }

LABEL_45:
              _diagnoseUnexpectedEnumCase<A>(type:)();
              __break(1u);
              return;
            }

            v60 = v5;
            v61 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
            v62 = *&v61[qword_10078A548];
            if (v62)
            {
              v63 = v61;
              v64 = v62;
              v65 = sub_1000DE654(a2);

              if (v65)
              {
                type metadata accessor for TTRIRemindersListReminderCell();
                if (swift_dynamicCastClass())
                {
                  v66 = (v60 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter);
                  v67 = *(v60 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
                  v68 = v66[4];
                  sub_10000C36C(v66, v67);
                  v69 = v76;
                  static TTRIPopoverAnchor.sourceView(_:permittedArrowDirections:)();
                  (*(*(v68 + 8) + 160))(v23, v69, v75, a5, v67);

                  (*(v77 + 8))(v69, v78);
                  return;
                }
              }

LABEL_39:
              v38 = 0;
              goto LABEL_40;
            }

LABEL_44:
            __break(1u);
            goto LABEL_45;
          }

          v55 = *(v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
          v56 = *(v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
          sub_10000C36C((v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), v55);
          v57 = &enum case for TTRRemindersListPostponeType.weekend(_:);
        }

        v59 = v79;
        (*(v79 + 104))(v14, *v57, v12);
        (*(*(v56 + 8) + 712))(a2, v14, v75, a5, v55);
        (*(v59 + 8))(v14, v12);
        return;
      }

      v48 = *(v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
      v49 = *(v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
      sub_10000C36C((v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), v48);
      sub_100058000(&qword_100772150, &unk_100635D00);
      v50 = type metadata accessor for TTRRemindersListViewModel.Item();
      v51 = *(v50 - 8);
      v52 = (*(v51 + 80) + 32) & ~*(v51 + 80);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_10062D400;
      (*(v51 + 16))(v53 + v52, v23, v50);
      v47 = (*(*(v49 + 8) + 752))(v53, v48);
    }

    v54 = v47;

    v38 = v54;
  }

LABEL_40:
  v32 = v75;
LABEL_41:
  v32(v38 & 1);
}

uint64_t sub_1003CE350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a3;
  v46 = a1;
  v3 = sub_100058000(&qword_10076B070, &unk_100637140);
  __chkstk_darwin(v3 - 8);
  v44 = &v43 - v4;
  v5 = sub_100058000(&unk_10076B050, &unk_100631DF0);
  __chkstk_darwin(v5 - 8);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v43 - v9;
  v11 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v43 - v16;
  v18 = type metadata accessor for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.Item.sectionsContainerAndSectionCasesOnly.getter();
  v22 = (*(v19 + 88))(v21, v18);
  if (v22 != enum case for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem.sectionsContainer(_:))
  {
    if (v22 == enum case for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem.section(_:))
    {
      (*(v19 + 96))(v21, v18);
      v18 = v11;
      (*(v12 + 32))(v14, v21, v11);
      if (TTRRemindersListViewModel.SectionHeader.isVisible.getter())
      {
        result = type metadata accessor for TTRIRemindersListSectionHeader(0);
        v34 = *(v46 + qword_10078A540);
        if (v34)
        {
          v35 = v34;
          v26 = UITableView.dequeueReusableHeaderFooterView<A>(_:)();

          TTRRemindersListViewModel.SectionHeader.title.getter();
          v36 = OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_title;
          swift_beginAccess();
          sub_10000794C(v26 + v36, v7, &unk_10076B050, &unk_100631DF0);
          swift_beginAccess();
          sub_100019180(v10, v26 + v36, &unk_10076B050, &unk_100631DF0);
          swift_endAccess();
          sub_100296984(v7);
          sub_1000079B4(v7, &unk_10076B050, &unk_100631DF0);
          sub_1000079B4(v10, &unk_10076B050, &unk_100631DF0);
          v37 = v44;
          TTRRemindersListViewModel.SectionHeader.id.getter();
          v38 = type metadata accessor for TTRRemindersListViewModel.SectionID();
          (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
          v39 = OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_sectionID;
          swift_beginAccess();
          sub_10000D184(v37, v26 + v39, &qword_10076B070, &unk_100637140);
          swift_endAccess();
          sub_10029810C(v45 == 0);
          v40 = TTRRemindersListViewModel.SectionHeader.isTappable.getter();
          v41 = 0;
          if (v40)
          {
            v42 = v43;
            v41 = &off_100725088;
          }

          *(v26 + OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_delegate + 8) = v41;
          swift_unknownObjectWeakAssign();
          sub_1002968A4();
          swift_unknownObjectRelease();
          (*(v12 + 8))(v14, v11);
          return v26;
        }

        goto LABEL_21;
      }
    }

    else
    {
      if (v22 == enum case for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem.unknown(_:))
      {
        return 0;
      }

      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }

    (*(v12 + 8))(v14, v18);
    return 0;
  }

  (*(v19 + 96))(v21, v18);
  (*(v12 + 32))(v17, v21, v11);
  if ((TTRRemindersListViewModel.SectionHeader.isVisible.getter() & 1) == 0)
  {
    (*(v12 + 8))(v17, v11);
    return 0;
  }

  result = type metadata accessor for TTRIRemindersListSectionHeader(0);
  v24 = *(v46 + qword_10078A540);
  if (v24)
  {
    v25 = v24;
    v26 = UITableView.dequeueReusableHeaderFooterView<A>(_:)();

    TTRRemindersListViewModel.SectionHeader.title.getter();
    v27 = OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_title;
    swift_beginAccess();
    sub_10000794C(v26 + v27, v7, &unk_10076B050, &unk_100631DF0);
    swift_beginAccess();
    sub_100019180(v10, v26 + v27, &unk_10076B050, &unk_100631DF0);
    swift_endAccess();
    sub_100296984(v7);
    sub_1000079B4(v7, &unk_10076B050, &unk_100631DF0);
    sub_1000079B4(v10, &unk_10076B050, &unk_100631DF0);
    v28 = v44;
    TTRRemindersListViewModel.SectionHeader.id.getter();
    v29 = type metadata accessor for TTRRemindersListViewModel.SectionID();
    (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
    v30 = OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_sectionID;
    swift_beginAccess();
    sub_10000D184(v28, v26 + v30, &qword_10076B070, &unk_100637140);
    swift_endAccess();
    sub_10029810C(v45 == 0);
    v31 = TTRRemindersListViewModel.SectionHeader.isTappable.getter();
    v32 = 0;
    if (v31)
    {
      v33 = v43;
      v32 = &off_100725088;
    }

    *(v26 + OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_delegate + 8) = v32;
    swift_unknownObjectWeakAssign();
    sub_1002968A4();
    swift_unknownObjectRelease();
    (*(v12 + 8))(v17, v11);
    return v26;
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_1003CEA9C(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v26 - v14;
  [a2 locationInView:{a1, v13}];
  v16 = [a1 hitTest:0 withEvent:?];
  if (v16 && (v17 = v16, type metadata accessor for TTRIRemindersListReminderCell(), v18 = static TTRIRemindersListReminderCell.ignoreDragging(view:)(), v17, (v18 & 1) != 0))
  {
    result = _swiftEmptyArrayStorage;
  }

  else
  {
    v20 = *(v4 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
    v21 = *(v4 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
    sub_10000C36C((v4 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), v20);
    result = (*(*(v21 + 8) + 552))(a3, v20);
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return result;
    }

    goto LABEL_7;
  }

  v24 = result;
  v25 = _CocoaArrayWrapper.endIndex.getter();
  result = v24;
  if (!v25)
  {
LABEL_7:
    v22 = result;
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    swift_beginAccess();
    sub_10058B6B8(v15, v11);
    swift_endAccess();
    (*(v9 + 8))(v15, v8);
    v23._countAndFlagsBits = 0x5F28747265736E69;
    v23._object = 0xEA0000000000293ALL;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v23);
    return v22;
  }

  return result;
}

void sub_1003CECE8(uint64_t *a1, uint64_t a2)
{
  v245 = a1;
  v3 = sub_100058000(&qword_1007818D8, &qword_10063D340);
  __chkstk_darwin(v3 - 8);
  v5 = &v237 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v270 = (&v237 - v7);
  __chkstk_darwin(v8);
  v269 = (&v237 - v9);
  __chkstk_darwin(v10);
  v268 = &v237 - v11;
  v12 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v12 - 8);
  v259 = &v237 - v13;
  v14 = sub_100058000(&unk_1007818E0, &qword_10063D348);
  v261 = *(v14 - 8);
  __chkstk_darwin(v14 - 8);
  v16 = (&v237 - v15);
  v264 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v255 = *(v264 - 8);
  __chkstk_darwin(v264);
  v247 = &v237 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v246 = &v237 - v19;
  v20 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v20 - 8);
  v256 = &v237 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v252 = &v237 - v23;
  v263 = type metadata accessor for IndexPath();
  v254 = *(v263 - 8);
  __chkstk_darwin(v263);
  v243 = &v237 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v244 = &v237 - v26;
  v253 = sub_100058000(&qword_10076BC90, qword_10063D350);
  v257 = *(v253 - 8);
  __chkstk_darwin(v253);
  v266 = (&v237 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v28);
  v30 = (&v237 - v29);
  v274 = type metadata accessor for TTRRemindersListViewModel.Item();
  v272 = *(v274 - 8);
  __chkstk_darwin(v274);
  v267 = &v237 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v271 = &v237 - v33;
  __chkstk_darwin(v34);
  v260 = (&v237 - v35);
  __chkstk_darwin(v36);
  v265 = &v237 - v37;
  __chkstk_darwin(v38);
  v40 = &v237 - v39;
  __chkstk_darwin(v41);
  v258 = &v237 - v42;
  v43 = sub_100058000(&qword_100772108, &qword_1006344A0);
  __chkstk_darwin(v43);
  v45 = &v237 - v44;
  v273 = a2;
  sub_1003B3FA0(&unk_100772110, &unk_10063D370, &unk_100781910, &unk_1006305A0, &type metadata accessor for TTRRemindersListViewModel.Item, sub_1003B823C, sub_1001AF0C4, &unk_100772130, &v237 - v44, &qword_1006344B8, sub_1001B33C4, &qword_100772108, &qword_1006344A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v62 = *&v45[*(sub_100058000(&unk_100772130, &qword_1006344B8) + 48)];
      v63 = v272;
      (*(v272 + 32))(v267, v45, v274);
      v64 = sub_1003B74A4(&unk_1007818E0, &qword_10063D348, sub_1004A24F0, sub_1003C02F0);
      v65 = v64[2];
      if (v65)
      {
        v273 = v62;
        v276 = _swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        v66 = v64 + ((*(v261 + 80) + 32) & ~*(v261 + 80));
        v67 = v261[9];
        do
        {
          sub_10000794C(v66, v16, &unk_1007818E0, &qword_10063D348);
          v68 = *v16;
          sub_1000079B4(v16, &unk_1007818E0, &qword_10063D348);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v66 += v67;
          --v65;
        }

        while (v65);

        v69 = v276;
        v63 = v272;
        v62 = v273;
      }

      else
      {

        v69 = _swiftEmptyArrayStorage;
      }

      v168 = *(v262 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
      v167 = *(v262 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
      sub_10000C36C((v262 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), v168);
      (*(*(v167 + 8) + 616))(&v276, v69, v168);

      v169 = v277;
      v170 = v278;
      sub_10000C36C(&v276, v277);
      v171 = v267;
      (*(v170 + 72))(v267, v62, v169, v170);
      (*(v63 + 8))(v171, v274);
    }

    else
    {
      v84 = sub_1003B74A4(&unk_1007818E0, &qword_10063D348, sub_1004A24F0, sub_1003C02F0);
      v85 = *(v84 + 2);
      if (v85)
      {
        v276 = _swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        v86 = *(v261 + 80);
        v269 = v84;
        v87 = &v84[(v86 + 32) & ~v86];
        v88 = v261[9];
        v30 = &qword_10063D348;
        do
        {
          sub_10000794C(v87, v16, &unk_1007818E0, &qword_10063D348);
          v89 = *v16;
          sub_1000079B4(v16, &unk_1007818E0, &qword_10063D348);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v87 += v88;
          --v85;
        }

        while (v85);

        v90 = v276;
      }

      else
      {

        v90 = _swiftEmptyArrayStorage;
      }

      v178 = *(v262 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
      v179 = *(v262 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
      sub_10000C36C((v262 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), v178);
      (*(*(v179 + 8) + 616))(&v276, v90, v178);

      v180 = v277;
      v181 = v278;
      sub_10000C36C(&v276, v277);
      v182 = (*(v181 + 24))(v180, v181);
      v183 = v277;
      v184 = v278;
      sub_10000C36C(&v276, v277);
      v54 = v272;
      if (v182)
      {
        v48 = (*(v184 + 64))(v183, v184);
        i = 0;
        v186 = *(v48 + 16);
        v269 = (v54 + 32);
        v272 = v54 + 8;
        v47 = &unk_1007818F0;
        v53 = &unk_10063E550;
        if (v186)
        {
          goto LABEL_166;
        }

LABEL_169:
        v195 = sub_100058000(&unk_1007818F0, &unk_10063E550);
        (*(*(v195 - 8) + 56))(v5, 1, 1, v195);
        for (i = v186; ; i = (i + 1))
        {
          v196 = v270;
          sub_100016588(v5, v270, &qword_1007818D8, &qword_10063D340);
          v197 = sub_100058000(&unk_1007818F0, &unk_10063E550);
          if ((*(*(v197 - 8) + 48))(v196, 1, v197) == 1)
          {

            goto LABEL_225;
          }

          v30 = v186;
          v187 = v48;
          v188 = *v196;
          v189 = v196 + *(v197 + 48);
          v54 = v5;
          v190 = v271;
          v191 = v274;
          (*v269)(v271, v189, v274);
          sub_1003B6584(v188, v190);

          v48 = v187;
          v186 = v30;
          v192 = v190;
          v5 = v54;
          (*v272)(v192, v191);
          if (i == v30)
          {
            goto LABEL_169;
          }

LABEL_166:
          if ((i & 0x8000000000000000) != 0)
          {
            break;
          }

          if (i >= *(v48 + 16))
          {
            goto LABEL_212;
          }

          v193 = sub_100058000(&unk_1007818F0, &unk_10063E550);
          v194 = *(v193 - 8);
          sub_10000794C(v48 + ((*(v194 + 80) + 32) & ~*(v194 + 80)) + *(v194 + 72) * i, v5, &unk_1007818F0, &unk_10063E550);
          (*(v194 + 56))(v5, 0, 1, v193);
        }

LABEL_211:
        __break(1u);
LABEL_212:
        __break(1u);
LABEL_213:
        __break(1u);
LABEL_214:
        __break(1u);
LABEL_215:
        __break(1u);
LABEL_216:
        __break(1u);
LABEL_217:
        __break(1u);
LABEL_218:
        __break(1u);
LABEL_219:
        __break(1u);
LABEL_220:
        __break(1u);
LABEL_221:
        __break(1u);
        goto LABEL_222;
      }

      if ((*(v184 + 40))(v183, v184))
      {
        v198 = v277;
        v199 = v278;
        sub_10000C36C(&v276, v277);
        (*(v199 + 80))(v198, v199);
      }
    }

    goto LABEL_225;
  }

  if (!EnumCaseMultiPayload)
  {
    v47 = *&v45[*(sub_100058000(&unk_100772130, &qword_1006344B8) + 48)];
    v48 = v272;
    v49 = (v272 + 32);
    v50 = *(v272 + 32);
    v30 = v260;
    v50(v260, v45, v274);
    v51 = sub_1003B823C(1);
    v52 = v51[2];
    if (v52)
    {
      v53 = v51;
      v54 = v274;
      if (v52 != 1)
      {
LABEL_9:
        v59 = *(v262 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
        v60 = *(v262 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
        sub_10000C36C((v262 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), v59);
        v61 = v259;
        (*(v48 + 16))(v259, v30, v54);
        (*(v48 + 56))(v61, 0, 1, v54);
        (*(*(v60 + 8) + 600))(v53, v61, v47, 0, 0, v59);

        sub_1000079B4(v61, &qword_100772140, &qword_10062D9F0);
        (*(v48 + 8))(v30, v54);
        return;
      }

      if (qword_100767240 == -1)
      {
LABEL_6:
        v55 = type metadata accessor for Logger();
        sub_100003E30(v55, qword_100781340);
        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          *v58 = 0;
          _os_log_impl(&_mh_execute_header, v56, v57, "Unexpected: handling single item move in treeView(_:performDropWith:)", v58, 2u);
        }

        goto LABEL_9;
      }

LABEL_222:
      swift_once();
      goto LABEL_6;
    }

    v267 = v50;
    v270 = v49;

    v200 = sub_1003B74A4(&unk_1007818E0, &qword_10063D348, sub_1004A24F0, sub_1003C02F0);
    v201 = v200[2];
    if (v201)
    {
      v266 = v47;
      v276 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v202 = v200 + ((*(v261 + 80) + 32) & ~*(v261 + 80));
      v203 = v261[9];
      do
      {
        sub_10000794C(v202, v16, &unk_1007818E0, &qword_10063D348);
        v204 = *v16;
        sub_1000079B4(v16, &unk_1007818E0, &qword_10063D348);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v202 += v203;
        --v201;
      }

      while (v201);

      v205 = v276;
      v48 = v272;
      v30 = v260;
      v47 = v266;
    }

    else
    {

      v205 = _swiftEmptyArrayStorage;
    }

    v224 = *(v262 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
    v53 = *(v262 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
    sub_10000C36C((v262 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), v224);
    (*(v53[1] + 616))(&v276, v205, v224);

    v225 = v277;
    v226 = v278;
    sub_10000C36C(&v276, v277);
    v227 = (*(v226 + 48))(v30, v47, v225, v226);
    v47 = 0;
    v30 = *(v227 + 16);
    v48 += 8;
    v54 = &unk_1007818F0;
    while (1)
    {
      v228 = v269;
      if (v47 == v30)
      {
        v229 = sub_100058000(&unk_1007818F0, &unk_10063E550);
        (*(*(v229 - 8) + 56))(v228, 1, 1, v229);
        v47 = v30;
      }

      else
      {
        if ((v47 & 0x8000000000000000) != 0)
        {
          goto LABEL_214;
        }

        if (v47 >= *(v227 + 16))
        {
          goto LABEL_215;
        }

        v230 = sub_100058000(&unk_1007818F0, &unk_10063E550);
        v231 = *(v230 - 8);
        sub_10000794C(v227 + ((*(v231 + 80) + 32) & ~*(v231 + 80)) + *(v231 + 72) * v47, v228, &unk_1007818F0, &unk_10063E550);
        v47 = (v47 + 1);
        (*(v231 + 56))(v228, 0, 1, v230);
      }

      v232 = v268;
      sub_100016588(v228, v268, &qword_1007818D8, &qword_10063D340);
      v233 = sub_100058000(&unk_1007818F0, &unk_10063E550);
      if ((*(*(v233 - 8) + 48))(v232, 1, v233) == 1)
      {
        break;
      }

      v53 = *v232;
      v234 = v232 + *(v233 + 48);
      v235 = v271;
      v236 = v274;
      (v267)(v271, v234, v274);
      sub_1003B6584(v53, v235);

      (*v48)(v235, v236);
    }

    (*v48)(v260, v274);

    goto LABEL_225;
  }

  v70 = v272;
  v71 = v258;
  v267 = *(v272 + 32);
  v268 = (v272 + 32);
  (v267)(v258, v45, v274);
  v72 = sub_1003B5934(1);
  v73 = v72[2];
  if (!v73)
  {

    v172 = sub_1003B74A4(&unk_1007818E0, &qword_10063D348, sub_1004A24F0, sub_1003C02F0);
    v173 = v172[2];
    if (v173)
    {
      v276 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v174 = v172 + ((*(v261 + 80) + 32) & ~*(v261 + 80));
      v175 = v261[9];
      do
      {
        sub_10000794C(v174, v16, &unk_1007818E0, &qword_10063D348);
        v176 = *v16;
        sub_1000079B4(v16, &unk_1007818E0, &qword_10063D348);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v174 += v175;
        --v173;
      }

      while (v173);

      v177 = v276;
      v71 = v258;
    }

    else
    {

      v177 = _swiftEmptyArrayStorage;
    }

    v206 = *(v262 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
    v207 = *(v262 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
    sub_10000C36C((v262 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), v206);
    (*(*(v207 + 8) + 616))(&v276, v177, v206);

    v208 = v277;
    v209 = v278;
    sub_10000C36C(&v276, v277);
    v210 = (*(v209 + 56))(v71, v208, v209);
    v211 = *(v245 + qword_10078A548);
    v212 = v274;
    if (!v211)
    {
      goto LABEL_235;
    }

    v213 = v210;
    v214 = v211;
    v215 = sub_1000DE654(v71);

    if (v215)
    {
      [v215 bounds];
      CGRect.center.getter();
      v217 = v216;
      v219 = v218;
      if (v213 >> 62)
      {
        v220 = _CocoaArrayWrapper.endIndex.getter();
        if (v220)
        {
          goto LABEL_186;
        }
      }

      else
      {
        v220 = *((v213 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v220)
        {
LABEL_186:
          if (v220 < 1)
          {
            goto LABEL_232;
          }

          for (j = 0; j != v220; ++j)
          {
            if ((v213 & 0xC000000000000001) != 0)
            {
              v222 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v222 = *(v213 + 8 * j + 32);
            }

            v223 = v222;
            sub_1003B6F50(v222, v71, v217, v219, 0.0, 0.0);
          }
        }
      }

      (*(v272 + 8))(v71, v274);
      goto LABEL_225;
    }

    (*(v272 + 8))(v71, v212);

LABEL_225:
    sub_100004758(&v276);
    return;
  }

  v276 = _swiftEmptyArrayStorage;
  sub_1004A1C48(0, v73, 0);
  v74 = v73;
  v75 = v276;
  v76 = (*(v257 + 80) + 32) & ~*(v257 + 80);
  v251 = v72;
  v77 = v72 + v76;
  v78 = *(v257 + 72);
  v270 = (v70 + 16);
  v271 = v78;
  v250 = v72 + v76;
  v249 = v74;
  v79 = v274;
  v80 = v253;
  do
  {
    sub_10000794C(v77, v30, &qword_10076BC90, qword_10063D350);
    v81 = v30 + *(v80 + 40);
    v269 = *v270;
    v269(v40, v81, v79);
    sub_1000079B4(v30, &qword_10076BC90, qword_10063D350);
    v276 = v75;
    v83 = v75[2];
    v82 = v75[3];
    if (v83 >= v82 >> 1)
    {
      sub_1004A1C48((v82 > 1), v83 + 1, 1);
      v80 = v253;
      v75 = v276;
    }

    v75[2] = v83 + 1;
    (v267)(v75 + ((*(v272 + 80) + 32) & ~*(v272 + 80)) + *(v272 + 72) * v83, v40, v79);
    v77 += v271;
    --v74;
  }

  while (v74);
  v91 = *(v262 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
  v53 = *(v262 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
  sub_10000C36C((v262 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), v91);
  v47 = v258;
  v92 = (*(v53[1] + 608))(v75, v258, v91);

  v30 = v245;
  if ((v92 & 1) == 0)
  {
    (*(v272 + 8))(v47, v79);
LABEL_180:

    return;
  }

  v93 = 0;
  v262 = qword_10078A548;
  v261 = (v255 + 8);
  v260 = (v254 + 56);
  v242 = (v254 + 48);
  v240 = (v254 + 32);
  v239 = (v254 + 8);
  v248 = (v272 + 8);
  v54 = v247;
  v48 = v246;
  v94 = v253;
  while (1)
  {
    if (v93 >= v251[2])
    {
      goto LABEL_213;
    }

    v99 = v48;
    v267 = v93;
    v100 = v266;
    sub_10000794C(&v250[v93 * v271], v266, &qword_10076BC90, qword_10063D350);
    v269(v265, v100 + *(v94 + 40), v79);
    v101 = *(v30 + v262);
    if (!v101)
    {
      goto LABEL_233;
    }

    v268 = v101;
    v272 = sub_1000C84C8();
    v53 = v102;
    v104 = v103;
    v106 = v105;
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    if (!v53[2] || (v107 = sub_1003AB294(v48), (v108 & 1) == 0))
    {

      v259 = *v261;
      (v259)(v48, v264);
LABEL_44:
      v119 = v252;
      v257 = *v260;
      (v257)(v252, 1, 1, v263);
LABEL_45:
      sub_1000079B4(v119, &unk_100771B10, qword_10062E540);
      goto LABEL_46;
    }

    v255 = v104;
    v109 = v30;
    v110 = *(v53[7] + 8 * v107);
    v48 = v261;
    v111 = *v261;

    v259 = v111;
    (v111)(v99, v264);
    v112 = sub_1000A97B4(v110);

    v254 = v112;
    if (!v112)
    {

      v30 = v109;
      v47 = v258;
      v48 = v99;
      goto LABEL_44;
    }

    v241 = v53;
    v113 = v255;
    v30 = v109;
    if (!*(v255 + 16))
    {
      v120 = 1;
      v119 = v252;
      v47 = v258;
      goto LABEL_117;
    }

    v114 = sub_1003B3EDC();
    v47 = v258;
    if ((v115 & 1) == 0)
    {
      v120 = 1;
LABEL_116:
      v119 = v252;
      goto LABEL_117;
    }

    v238 = *(*(v113 + 56) + 8 * v114);
    if ((v106 & 1) == 0)
    {
      break;
    }

    v30 = v254;
    Strong = swift_weakLoadStrong();

    for (k = 0; Strong; v47 = v258)
    {
      v138 = __OFADD__(k++, 1);
      if (v138)
      {
        goto LABEL_220;
      }

      v54 = Strong;
      swift_beginAccess();
      v47 = *(Strong + 64);
      if (v47 >> 62)
      {
        v139 = _CocoaArrayWrapper.endIndex.getter();
        if (!v139)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v139 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v139)
        {
          goto LABEL_57;
        }
      }

      v257 = v47 & 0xFFFFFFFFFFFFFF8;

      v140 = 0;
      do
      {
        if ((v47 & 0xC000000000000001) != 0)
        {
          v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v53 = (v140 + 1);
          if (__OFADD__(v140, 1))
          {
            goto LABEL_203;
          }
        }

        else
        {
          if (v140 >= *(v257 + 16))
          {
            goto LABEL_209;
          }

          v48 = v47[v140 + 4];

          v53 = (v140 + 1);
          if (__OFADD__(v140, 1))
          {
LABEL_203:
            __break(1u);
LABEL_204:
            __break(1u);
LABEL_205:
            __break(1u);
LABEL_206:
            __break(1u);
LABEL_207:
            __break(1u);
LABEL_208:
            __break(1u);
LABEL_209:
            __break(1u);
LABEL_210:
            __break(1u);
            goto LABEL_211;
          }
        }

        if (v48 == v30)
        {

LABEL_57:

          goto LABEL_58;
        }

        v138 = __OFADD__(k, 1);
        v141 = k + 1;
        if (v138)
        {
          goto LABEL_204;
        }

        if (*(v48 + 48))
        {
          v275 = 0;
          sub_10023C598(v48, &v275);
          v142 = v275;
          *(v48 + 40) = v275;
          *(v48 + 48) = 0;
        }

        else
        {
          v142 = *(v48 + 40);
        }

        v138 = __OFADD__(v141, v142);
        k = v141 + v142;
        if (v138)
        {
          goto LABEL_205;
        }

        ++v140;
      }

      while (v53 != v139);

LABEL_58:
      Strong = swift_weakLoadStrong();

      v30 = v54;
    }

    v118 = k - 1;
    if (__OFSUB__(k, 1))
    {
      goto LABEL_230;
    }

    v79 = v274;
    v30 = v245;
    v54 = v247;
    v99 = v246;
    v119 = v252;
    if (v118 < 0)
    {
      v120 = 1;
    }

    else
    {
      IndexPath.init(row:section:)();
      v120 = 0;
    }

LABEL_117:
    v153 = v263;
    v257 = *v260;
    (v257)(v119, v120, 1, v263);

    if ((*v242)(v119, 1, v153) == 1)
    {

      v48 = v99;
      goto LABEL_45;
    }

    v154 = v244;
    (*v240)(v244, v119, v153);
    v155 = v268;
    v156 = *&v268[qword_100771730];
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v158 = [v156 cellForRowAtIndexPath:isa];

    v159 = v246;
    v54 = v247;

    v160 = v153;
    v48 = v159;
    (*v239)(v154, v160);
    v161 = v265;
    if (v158)
    {

      sub_1003B6584(*v266, v161);
      v96 = *v248;
      v48 = v159;
      (*v248)(v161, v79);
      goto LABEL_30;
    }

LABEL_46:
    v121 = *(v30 + v262);
    if (!v121)
    {
      goto LABEL_234;
    }

    v254 = v121;
    v255 = sub_1000C84C8();
    v123 = v122;
    v272 = v124;
    v126 = v125;
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    if (*(v123 + 2) && (v268 = v123, v127 = sub_1003AB294(v54), (v128 & 1) != 0))
    {
      v129 = *(*(v268 + 7) + 8 * v127);

      (v259)(v54, v264);
      v130 = sub_1000A97B4(v129);

      if (v130)
      {
        v131 = v272;
        if (*(v272 + 16) && (v132 = sub_1003B3EDC(), (v133 & 1) != 0))
        {
          v241 = *(*(v131 + 56) + 8 * v132);
          v95 = v256;
          if (v126)
          {
            v134 = swift_weakLoadStrong();

            v30 = v130;
            v238 = v130;
            v135 = 0;
            if (!v134)
            {
LABEL_54:

              v30 = v245;
              if (__OFSUB__(v135, 1))
              {
                goto LABEL_231;
              }

              v54 = v247;
              v48 = v246;
              v136 = v263;
              if (v135 - 1 < 0)
              {
                v137 = 1;
              }

              else
              {
                IndexPath.init(row:section:)();
                v137 = 0;
              }

LABEL_107:
              (v257)(v95, v137, 1, v136);

              if ((*v242)(v95, 1, v136) != 1)
              {
                v53 = v243;
                (*v240)(v243, v95, v136);
                v147 = v254;
                v148 = *&v254[qword_100771730];
                v149 = IndexPath._bridgeToObjectiveC()().super.isa;
                v150 = [v148 cellForRowAtIndexPath:v149];

                (*v239)(v53, v136);
                if (v150)
                {
                  [v150 bounds];
                  CGRect.center.getter();
                  sub_1003B6F50(*v266, v47, v151, v152, 0.0, 0.0);
                }

                v96 = *v248;
                (*v248)(v265, v79);
                v54 = v247;
                v48 = v246;
                goto LABEL_30;
              }

              v96 = *v248;
              (*v248)(v265, v79);
              goto LABEL_29;
            }

            while (1)
            {
              v138 = __OFADD__(v135++, 1);
              if (v138)
              {
                goto LABEL_221;
              }

              v54 = v134;
              swift_beginAccess();
              v47 = *(v134 + 64);
              if (v47 >> 62)
              {
                v143 = _CocoaArrayWrapper.endIndex.getter();
                if (v143)
                {
LABEL_85:
                  v259 = (v47 & 0xFFFFFFFFFFFFFF8);

                  v144 = 0;
                  while (1)
                  {
                    if ((v47 & 0xC000000000000001) != 0)
                    {
                      v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                      v53 = (v144 + 1);
                      if (__OFADD__(v144, 1))
                      {
                        goto LABEL_206;
                      }
                    }

                    else
                    {
                      if (v144 >= *(v259 + 2))
                      {
                        goto LABEL_210;
                      }

                      v48 = v47[v144 + 4];

                      v53 = (v144 + 1);
                      if (__OFADD__(v144, 1))
                      {
                        goto LABEL_206;
                      }
                    }

                    if (v48 == v30)
                    {
                      break;
                    }

                    v138 = __OFADD__(v135, 1);
                    v145 = v135 + 1;
                    if (v138)
                    {
                      goto LABEL_207;
                    }

                    if (*(v48 + 48))
                    {
                      v275 = 0;
                      sub_10023C598(v48, &v275);
                      v146 = v275;
                      *(v48 + 40) = v275;
                      *(v48 + 48) = 0;
                    }

                    else
                    {
                      v146 = *(v48 + 40);
                    }

                    v138 = __OFADD__(v145, v146);
                    v135 = v145 + v146;
                    if (v138)
                    {
                      goto LABEL_208;
                    }

                    ++v144;
                    if (v53 == v143)
                    {

                      goto LABEL_101;
                    }
                  }

LABEL_101:
                  v79 = v274;
                  goto LABEL_81;
                }
              }

              else
              {
                v143 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v143)
                {
                  goto LABEL_85;
                }
              }

LABEL_81:
              v134 = swift_weakLoadStrong();

              v30 = v54;
              v47 = v258;
              v95 = v256;
              if (!v134)
              {
                goto LABEL_54;
              }
            }
          }

          if ((v241 & 0x8000000000000000) != 0)
          {
            goto LABEL_228;
          }

          if (v241 >= *(v255 + 16))
          {
            goto LABEL_229;
          }

          v165 = *(v255 + 16 * v241 + 40);
          if (v165 >> 62)
          {
            v166 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v166 = *((v165 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v53 = (v165 & 0xC000000000000001);

          v54 = 0;
          while (v166 != v54)
          {
            if (v53)
            {
              v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              swift_unknownObjectRelease();
              if (v48 == v130)
              {
                goto LABEL_148;
              }
            }

            else
            {
              if (v54 >= *((v165 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_218;
              }

              if (*(v165 + 8 * v54 + 32) == v130)
              {
LABEL_148:

                v95 = v256;
                IndexPath.init(row:section:)();
                v137 = 0;
                v54 = v247;
                v48 = v246;
                goto LABEL_106;
              }
            }

            v138 = __OFADD__(v54++, 1);
            if (v138)
            {
              goto LABEL_219;
            }
          }

          v137 = 1;
          v54 = v247;
          v48 = v246;
        }

        else
        {
          v137 = 1;
        }

        v95 = v256;
LABEL_106:
        v136 = v263;
        goto LABEL_107;
      }
    }

    else
    {

      (v259)(v54, v264);
    }

    v95 = v256;
    v96 = *v248;
    (*v248)(v265, v79);
    (v257)(v95, 1, 1, v263);
LABEL_29:
    sub_1000079B4(v95, &unk_100771B10, qword_10062E540);
LABEL_30:
    v97 = v267 + 1;
    sub_1000079B4(v266, &qword_10076BC90, qword_10063D350);
    v93 = v97;
    v98 = v97 == v249;
    v94 = v253;
    if (v98)
    {
      v96(v47, v79);
      goto LABEL_180;
    }
  }

  v162 = v254;
  if ((v238 & 0x8000000000000000) == 0)
  {
    if (v238 >= *(v272 + 16))
    {
      goto LABEL_227;
    }

    v163 = *(v272 + 16 * v238 + 40);
    if (v163 >> 62)
    {
      v164 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v164 = *((v163 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v53 = (v163 & 0xC000000000000001);

    v54 = 0;
    while (v164 != v54)
    {
      if (v53)
      {
        v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        swift_unknownObjectRelease();
        if (v48 == v162)
        {
          goto LABEL_134;
        }
      }

      else
      {
        if (v54 >= *((v163 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_216;
        }

        if (*(v163 + 8 * v54 + 32) == v162)
        {
LABEL_134:

          v119 = v252;
          IndexPath.init(row:section:)();
          v120 = 0;
          v54 = v247;
          v99 = v246;
          goto LABEL_117;
        }
      }

      v138 = __OFADD__(v54++, 1);
      if (v138)
      {
        goto LABEL_217;
      }
    }

    v120 = 1;
    v54 = v247;
    v99 = v246;
    goto LABEL_116;
  }

  __break(1u);
LABEL_227:
  __break(1u);
LABEL_228:
  __break(1u);
LABEL_229:
  __break(1u);
LABEL_230:
  __break(1u);
LABEL_231:
  __break(1u);
LABEL_232:
  __break(1u);
LABEL_233:
  __break(1u);
LABEL_234:
  __break(1u);
LABEL_235:
  __break(1u);
}

uint64_t sub_1003D146C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v66 = a3;
  v67 = a2;
  v4 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v64 - v5;
  v65 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v65 - 8);
  __chkstk_darwin(v65);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v64 - v11;
  __chkstk_darwin(v13);
  v15 = &v64 - v14;
  v16 = sub_100058000(&qword_100772108, &qword_1006344A0);
  __chkstk_darwin(v16);
  v18 = &v64 - v17;
  sub_10000794C(a1, &v64 - v17, &qword_100772108, &qword_1006344A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v43 = v65;
      (*(v7 + 32))(v12, v18, v65);
      sub_1001AB458();
      v45 = v44;
      if (v46)
      {
        v47 = *(v66 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
        v48 = *(v66 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
        sub_10000C36C((v66 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), v47);
        (*(*(v48 + 8) + 616))(v68, v45, v47);

        v49 = v69;
        v50 = v70;
        sub_10000C36C(v68, v69);
        v28 = (*(v50 + 16))(v12, v49, v50);
        (*(v7 + 8))(v12, v43);
        goto LABEL_17;
      }

      v60 = *(v66 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
      v61 = *(v66 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
      sub_10000C36C((v66 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), v60);
      v28 = (*(*(v61 + 8) + 592))(v45, v12, v60);

      (*(v7 + 8))(v12, v43);
    }

    else
    {
      v64 = *&v18[*(sub_100058000(&unk_100772130, &qword_1006344B8) + 48)];
      v20 = v65;
      (*(v7 + 32))(v15, v18, v65);
      sub_1001AB458();
      v22 = v21;
      if (v23)
      {
        v24 = *(v66 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
        v25 = *(v66 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
        sub_10000C36C((v66 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), v24);
        (*(*(v25 + 8) + 616))(v68, v22, v24);

        v26 = v69;
        v27 = v70;
        sub_10000C36C(v68, v69);
        v28 = (*(v27 + 8))(v15, v64, v26, v27);
        (*(v7 + 8))(v15, v20);
LABEL_17:
        sub_100004758(v68);
        return v28 & 1;
      }

      v58 = *(v66 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
      v59 = *(v66 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
      sub_10000C36C((v66 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), v58);
      (*(v7 + 16))(v6, v15, v20);
      (*(v7 + 56))(v6, 0, 1, v20);
      v28 = (*(*(v59 + 8) + 576))(v22, v6, v64, v58);

      sub_1000079B4(v6, &qword_100772140, &qword_10062D9F0);
      (*(v7 + 8))(v15, v20);
    }

    return v28 & 1;
  }

  if (EnumCaseMultiPayload != 2)
  {
    sub_1001AB458();
    if (v52)
    {
      v53 = *(v66 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
      v54 = *(v66 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
      v55 = v51;
      sub_10000C36C((v66 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), v53);
      (*(*(v54 + 8) + 616))(v68, v55, v53);

      v56 = v69;
      v57 = v70;
      sub_10000C36C(v68, v69);
      if ((*(v57 + 24))(v56, v57))
      {
        v28 = 1;
      }

      else
      {
        v62 = v69;
        v63 = v70;
        sub_10000C36C(v68, v69);
        v28 = (*(v63 + 40))(v62, v63);
      }

      goto LABEL_17;
    }

    v28 = 0;
    return v28 & 1;
  }

  v29 = *&v18[*(sub_100058000(&unk_100772130, &qword_1006344B8) + 48)];
  v30 = v7;
  v31 = v9;
  v32 = v65;
  (*(v7 + 32))(v9, v18, v65);
  v33 = qword_1007A84A0;
  v34 = v67;
  swift_beginAccess();
  v35 = sub_100058000(qword_100771F18, &qword_100634320);
  result = (*(*(v35 - 8) + 48))(v34 + v33, 1, v35);
  if (result != 1)
  {
    v37 = [*(v34 + v33) items];
    sub_100003540(0, &qword_10076BAC0, UIDragItem_ptr);
    v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v39 = *(v66 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
    v40 = *(v66 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
    sub_10000C36C((v66 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), v39);
    (*(*(v40 + 8) + 616))(v68, v38, v39);

    v41 = v69;
    v42 = v70;
    sub_10000C36C(v68, v69);
    v28 = (*(v42 + 32))(v31, v29, v41, v42);
    (*(v30 + 8))(v31, v32);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

id sub_1003D1BE0()
{
  v1 = [v0 parentViewController];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  swift_getObjectType();
  v3 = swift_conformsToProtocol2();
  if (v3)
  {
    v4 = sub_10037BD64(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1003D1D3C(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    type metadata accessor for TTRIRemindersListReminderCell();
    v9 = swift_dynamicCastClass();
    v10 = *&v8[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_pencilAutoCommitTracker];
    if (v9)
    {
      v11 = v6;

      sub_1003258FC(a3, a4);

      TTRIRemindersListReminderCell.inputViewForPencilInput.getter();
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
      sub_1003DF088(&qword_1007817D0, &type metadata accessor for PromiseError, &protocol conformance descriptor for PromiseError);
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
    sub_1003DF088(&qword_1007817D0, &type metadata accessor for PromiseError, &protocol conformance descriptor for PromiseError);
    swift_allocError();
    (*(*(v13 - 8) + 104))(v14, enum case for PromiseError.cancelled(_:), v13);
    sub_100058000(&unk_10078A390, &qword_10063D278);
    swift_allocObject();
    return Promise.init(error:)();
  }
}

char *sub_1003D1FE4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *&result[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_pencilAutoCommitTracker];
    v4 = result;

    *(v3 + 16) = 0;
    *(v3 + 24) = 0;

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1003D2060()
{
  v1 = sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), *(v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24));
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

uint64_t sub_1003D21D0(uint64_t a1, char a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v34[-1] - v9;
  TTRIRemindersListReminderCell.viewModel.getter();
  v11 = v35;
  if (!v35)
  {
    return sub_1000079B4(v34, &qword_100780978, &unk_10063C720);
  }

  v33 = v10;
  v12 = v2;
  v13 = v4;
  v14 = sub_10000C36C(v34, v35);
  v15 = v5;
  v16 = a2;
  v17 = *(v11 - 8);
  v18 = __chkstk_darwin(v14);
  v20 = &v34[-1] - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, v18);
  sub_1000079B4(v34, &qword_100780978, &unk_10063C720);
  v21 = v13;
  v22 = v12;
  v23 = v33;
  dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
  (*(v17 + 8))(v20, v11);
  (*(v15 + 32))(v23, v7, v21);
  v25 = *&v22[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24];
  v24 = *&v22[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32];
  sub_10000C36C(&v22[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter], v25);
  (*(*(v24 + 8) + 48))(v16 & 1, v23, v25);
  v26 = [v22 parentViewController];
  if (v26)
  {
    v27 = v26;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v28 = *&v27[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_feedbackGenerator];
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v28 = 0;
  }

  [v28 impactOccurred];

  v30 = [v22 parentViewController];
  if (v30)
  {
    v31 = v30;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v32 = *&v31[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_feedbackGenerator];

      [v32 prepare];
      v31 = v32;
    }
  }

  return (*(v15 + 8))(v23, v21);
}

uint64_t sub_1003D2550()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.Item();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v20[-1] - v7;
  TTRIRemindersListReminderCell.viewModel.getter();
  v9 = v21;
  if (!v21)
  {
    return sub_1000079B4(v20, &qword_100780978, &unk_10063C720);
  }

  v10 = sub_10000C36C(v20, v21);
  v11 = *(v9 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v20[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v12);
  sub_1000079B4(v20, &qword_100780978, &unk_10063C720);
  dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
  (*(v11 + 8))(v14, v9);
  (*(v3 + 32))(v8, v5, v2);
  v15 = (v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter);
  v16 = *(v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
  v17 = v15[4];
  sub_10000C36C(v15, v16);
  (*(*(v17 + 8) + 56))(v8, v16);
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_1003D27B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for TTRRemindersListViewModel.Item();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v24[-1] - v10;
  TTRIRemindersListReminderCell.viewModel.getter();
  v12 = v25;
  if (!v25)
  {
    return sub_1000079B4(v24, &qword_100780978, &unk_10063C720);
  }

  v13 = sub_10000C36C(v24, v25);
  v14 = *(v12 - 8);
  v23 = a2;
  v15 = v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v24[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, v16);
  sub_1000079B4(v24, &qword_100780978, &unk_10063C720);
  dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
  (*(v15 + 8))(v18, v12);
  (*(v6 + 32))(v11, v8, v5);
  v19 = (v3 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter);
  v21 = *(v3 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
  v20 = v19[4];
  sub_10000C36C(v19, v21);
  (*(*(v20 + 8) + 120))(v11, v23, v21);
  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_1003D2A2C()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.Item();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v20[-1] - v7;
  TTRIRemindersListReminderCell.viewModel.getter();
  v9 = v21;
  if (!v21)
  {
    return sub_1000079B4(v20, &qword_100780978, &unk_10063C720);
  }

  v10 = sub_10000C36C(v20, v21);
  v11 = *(v9 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v20[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v12);
  sub_1000079B4(v20, &qword_100780978, &unk_10063C720);
  dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
  (*(v11 + 8))(v14, v9);
  (*(v3 + 32))(v8, v5, v2);
  v15 = (v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter);
  v16 = *(v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
  v17 = v15[4];
  sub_10000C36C(v15, v16);
  (*(*(v17 + 8) + 144))(v8, v16);
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_1003D2C94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  TTRIRemindersListReminderCell.viewModel.getter();
  v11 = v31;
  if (!v31)
  {
    return sub_1000079B4(v30, &qword_100780978, &unk_10063C720);
  }

  v29 = a2;
  v12 = sub_10000C36C(v30, v31);
  v13 = *(v11 - 8);
  v28 = v2;
  v14 = v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, v15);
  sub_1000079B4(v30, &qword_100780978, &unk_10063C720);
  dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
  (*(v14 + 8))(v17, v11);
  (*(v5 + 32))(v10, v7, v4);
  sub_10000B0D8(v28 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter, v30);
  v18 = v31;
  v19 = v32;
  sub_10000C36C(v30, v31);
  v20 = TTRIRemindersListReminderCell.attributedTitle.getter();
  if (v20)
  {
    v21 = v20;
    v22 = [v20 string];

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  (*(*(v19 + 8) + 152))(v10, v23, v25, v29, v18);

  (*(v5 + 8))(v10, v4);
  return sub_100004758(v30);
}

uint64_t sub_1003D2F88()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.Item();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v20[-1] - v7;
  TTRIRemindersListReminderCell.viewModel.getter();
  v9 = v21;
  if (!v21)
  {
    return sub_1000079B4(v20, &qword_100780978, &unk_10063C720);
  }

  v10 = sub_10000C36C(v20, v21);
  v11 = *(v9 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v20[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v12);
  sub_1000079B4(v20, &qword_100780978, &unk_10063C720);
  dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
  (*(v11 + 8))(v14, v9);
  (*(v3 + 32))(v8, v5, v2);
  v15 = (v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter);
  v16 = *(v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
  v17 = v15[4];
  sub_10000C36C(v15, v16);
  (*(*(v17 + 8) + 200))(v8, v16);
  return (*(v3 + 8))(v8, v2);
}

void sub_1003D31F0(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  TTRIRemindersListReminderCell.viewModel.getter();
  v10 = v22;
  if (v22)
  {
    v11 = sub_10000C36C(v21, v22);
    v12 = *(v10 - 8);
    v13 = __chkstk_darwin(v11);
    v15 = &v21[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v15, v13);
    sub_1000079B4(v21, &qword_100780978, &unk_10063C720);
    v16 = dispatch thunk of TTRIRemindersListReminderCellViewModel.imageAttachments.getter();
    (*(v12 + 8))(v15, v10);
    if (v16)
    {
      v17 = (v6 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter);
      v18 = *(v6 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
      v19 = v17[4];
      sub_10000C36C(v17, v18);
      (*(*(v19 + 8) + 208))(v16, a3, a4, a5, v18);
    }
  }

  else
  {
    sub_1000079B4(v21, &qword_100780978, &unk_10063C720);
  }
}

uint64_t sub_1003D33AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  TTRIRemindersListReminderCell.viewModel.getter();
  v14 = v28;
  if (!v28)
  {
    return sub_1000079B4(v27, &qword_100780978, &unk_10063C720);
  }

  v15 = sub_10000C36C(v27, v28);
  v25 = a2;
  v26 = a3;
  v16 = *(v14 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, v17);
  sub_1000079B4(v27, &qword_100780978, &unk_10063C720);
  dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
  (*(v16 + 8))(v19, v14);
  (*(v8 + 32))(v13, v10, v7);
  v20 = (v4 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter);
  v22 = *(v4 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
  v21 = v20[4];
  sub_10000C36C(v20, v22);
  (*(*(v21 + 8) + 1048))(v13, v25, v26, v22);
  return (*(v8 + 8))(v13, v7);
}

double sub_1003D3624()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.Item();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRIRemindersListReminderCell.viewModel.getter();
  v6 = v23;
  if (v23)
  {
    v7 = sub_10000C36C(v22, v23);
    v8 = *(v6 - 8);
    v9 = __chkstk_darwin(v7);
    v11 = &v22[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    sub_1000079B4(v22, &qword_100780978, &unk_10063C720);
    dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
    (*(v8 + 8))(v11, v6);
    sub_1003DF088(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
    v12 = TTRTreeStorageItem.treeItemDescription.getter();
    v14 = v13;
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    sub_1000079B4(v22, &qword_100780978, &unk_10063C720);
    v14 = 0xEC0000006C6C6563;
    v12 = 0x206E776F6E6B6E75;
  }

  sub_10032573C(v12, v14);

  if (qword_100767240 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100003E30(v15, qword_100781340);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "TTRIRemindersListViewController: Cancel any hover detection once scribbling begins, before the cells is actually edited", v18, 2u);
  }

  v19 = *(v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_pencilHoverCleanupAction);
  if (*(v19 + 56))
  {

    AnyCancellable.cancel()();
  }

  *(v19 + 56) = 0;

  return result;
}

double sub_1003D3988()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.Item();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRIRemindersListReminderCell.viewModel.getter();
  v4 = v16;
  if (v16)
  {
    v5 = sub_10000C36C(v15, v16);
    v6 = *(v4 - 8);
    v7 = __chkstk_darwin(v5);
    v9 = &v15[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    sub_1000079B4(v15, &qword_100780978, &unk_10063C720);
    dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
    (*(v6 + 8))(v9, v4);
    sub_1003DF088(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
    v10 = TTRTreeStorageItem.treeItemDescription.getter();
    v12 = v11;
    (*(v1 + 8))(v3, v0);
  }

  else
  {
    sub_1000079B4(v15, &qword_100780978, &unk_10063C720);
    v12 = 0xEC0000006C6C6563;
    v10 = 0x206E776F6E6B6E75;
  }

  sub_100326040(v10, v12);

  return result;
}

uint64_t sub_1003D3BFC()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.Item();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v20[-1] - v7;
  TTRIRemindersListReminderCell.viewModel.getter();
  v9 = v21;
  if (!v21)
  {
    return sub_1000079B4(v20, &qword_100780978, &unk_10063C720);
  }

  v10 = sub_10000C36C(v20, v21);
  v11 = *(v9 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v20[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v12);
  sub_1000079B4(v20, &qword_100780978, &unk_10063C720);
  dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
  (*(v11 + 8))(v14, v9);
  (*(v3 + 32))(v8, v5, v2);
  v15 = (v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter);
  v16 = *(v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
  v17 = v15[4];
  sub_10000C36C(v15, v16);
  (*(*(v17 + 8) + 88))(v8, TTRReminderIDsWithMatchingHashtagsProvider.init(reminders:), 0, v16);
  return (*(v3 + 8))(v8, v2);
}

id sub_1003D3E7C()
{
  v1 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  result = *&v1[qword_10078A540];
  if (result)
  {
    v3 = [result isEditing];

    if (!v3)
    {
      return v3;
    }

    result = *(*(v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView) + qword_10078A540);
    if (result)
    {
      [result setEditing:0 animated:1];
      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1003D3F24()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.Item();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v21[-1] - v7;
  TTRIRemindersListReminderCell.viewModel.getter();
  v9 = v22;
  if (v22)
  {
    v10 = sub_10000C36C(v21, v22);
    v11 = *(v9 - 8);
    v12 = __chkstk_darwin(v10);
    v14 = &v21[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14, v12);
    sub_1000079B4(v21, &qword_100780978, &unk_10063C720);
    dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
    (*(v11 + 8))(v14, v9);
    (*(v3 + 32))(v8, v5, v2);
    v15 = (v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter);
    v16 = *(v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
    v17 = v15[4];
    sub_10000C36C(v15, v16);
    v18 = (*(*(v17 + 8) + 1112))(v8, v16);
    (*(v3 + 8))(v8, v2);
  }

  else
  {
    sub_1000079B4(v21, &qword_100780978, &unk_10063C720);
    return 0;
  }

  return v18;
}

uint64_t sub_1003D41A4(uint64_t a1)
{
  v3 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v3 - 8);
  v5 = v18 - v4;
  sub_10000B0D8(v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter, v20);
  v6 = v21;
  v7 = v22;
  sub_10000C36C(v20, v21);
  if (!a1)
  {
    goto LABEL_5;
  }

  TTRIRemindersListReminderCell.viewModel.getter();
  v8 = v19;
  if (!v19)
  {
    sub_1000079B4(v18, &qword_100780978, &unk_10063C720);
LABEL_5:
    v15 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
    goto LABEL_6;
  }

  v9 = sub_10000C36C(v18, v19);
  v10 = *(v8 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, v11);
  sub_1000079B4(v18, &qword_100780978, &unk_10063C720);
  dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
  (*(v10 + 8))(v13, v8);
  v14 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v14 - 8) + 56))(v5, 0, 1, v14);
LABEL_6:
  v16 = (*(*(v7 + 8) + 1120))(v5, v6);
  sub_1000079B4(v5, &qword_100772140, &qword_10062D9F0);
  sub_100004758(v20);
  return v16 & 1;
}

uint64_t sub_1003D4474()
{
  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1006322B0;
  *(v0 + 32) = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___completedTasksRotor, sub_1003C55F8);
  *(v0 + 40) = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___incompleteTasksRotor, sub_1003C5A70);
  *(v0 + 48) = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___overdueTasksRotor, sub_1003C5C9C);
  return v0;
}

uint64_t sub_1003D4534()
{
  v1 = (v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter);
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
  v3 = *(v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
  sub_10000C36C(v1, v2);
  return (*(*(v3 + 8) + 376))(v2);
}

id sub_1003D4598()
{
  v0 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  result = *&v0[qword_10078A540];
  if (result)
  {
    v2 = [result hasActiveDrag];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003D4604@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  sub_10000B0D8(v2 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter, v12);
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

uint64_t sub_1003D4754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
  v8 = *(v4 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
  sub_10000C36C((v4 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), v7);
  return (*(*(v8 + 8) + 312))(a3, a4, v7) & 1;
}

uint64_t sub_1003D47D0(uint64_t a1)
{
  result = sub_1003DF088(&qword_100781570, type metadata accessor for TTRIRemindersListContentViewController, &unk_10063D188);
  *(a1 + 8) = result;
  return result;
}

BOOL sub_1003D4828(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = Strong;
  if (Strong)
  {
  }

  return v2 != 0;
}

void *sub_1003D4880@<X0>(void *a1@<X0>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    type metadata accessor for TTRIRemindersListReminderCellAccessibilityElement();
    if (swift_dynamicCastClass())
    {
      v6 = a1;
      v7 = TTRIRemindersListReminderCellAccessibilityElement.cell.getter();
      if (v7)
      {
        v8 = v7;
        swift_getObjectType();
        dispatch thunk of TTRIRemindersListReminderCellAccessibilityElementContaining.viewModel.getter();
        if (v12)
        {
          sub_10000C36C(v11, v12);
          dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();

          v9 = type metadata accessor for TTRRemindersListViewModel.Item();
          (*(*(v9 - 8) + 56))(a3, 0, 1, v9);
          return sub_100004758(v11);
        }

        sub_1000079B4(v11, &qword_100780978, &unk_10063C720);
      }

      else
      {
      }
    }

    v10 = type metadata accessor for TTRRemindersListViewModel.Item();
    return (*(*(v10 - 8) + 56))(a3, 1, 1, v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1003D4A1C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = result;
  result = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  v5 = *&result[qword_10078A548];
  if (!v5)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = v5;
  v8 = sub_1000DE654(a1);

  if (v8)
  {
    type metadata accessor for TTRIRemindersListReminderCell();
    if (swift_dynamicCastClass())
    {
      v9 = TTRIRemindersListReminderCell.customAccessibilityElement.getter();
      v10 = v8;
    }

    else
    {
      v9 = 0;
      v10 = v4;
      v4 = v8;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id sub_1003D4B20(void *a1, uint64_t a2, uint64_t (*a3)(char *), uint64_t a4)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v8 = sub_1003D4BB0(a1, a3, a4);

  if (!v8)
  {
    return 0;
  }

  v9 = [objc_allocWithZone(UIAccessibilityCustomRotorItemResult) initWithTargetElement:v8 targetRange:0];

  return v9;
}

uint64_t sub_1003D4BB0(void *a1, uint64_t (*a2)(char *), uint64_t a3)
{
  v75 = a2;
  v76 = a3;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v74 = &v70 - v9;
  v10 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v10 - 8);
  v72 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v70 - v13;
  __chkstk_darwin(v15);
  v17 = &v70 - v16;
  __chkstk_darwin(v18);
  v81 = &v70 - v19;
  __chkstk_darwin(v20);
  v22 = &v70 - v21;
  __chkstk_darwin(v23);
  v25 = &v70 - v24;
  v27 = __chkstk_darwin(v26);
  v29 = &v70 - v28;
  v79 = v5[7];
  v80 = v5 + 7;
  v79(&v70 - v28, 1, 1, v4, v27);
  v82 = a1;
  v30 = [a1 currentItem];
  v31 = [v30 targetElement];

  if (!v31)
  {
    goto LABEL_11;
  }

  objc_opt_self();
  v32 = swift_dynamicCastObjCClass();
  if (v32)
  {
    v83 = v25;
    v33 = *(v84 + qword_10078A550);
    if (v33)
    {
      v77 = v32;
      v78 = v5;
      v34 = *(v33 + 16);

      if (v34(v35))
      {
        v36 = v83;
        (*(v33 + 32))(v77);
        swift_unknownObjectRelease();
        sub_1000079B4(v29, &qword_100772140, &qword_10062D9F0);
        v37 = v36;

        v5 = v78;
LABEL_10:
        sub_100016588(v37, v29, &qword_100772140, &qword_10062D9F0);
        goto LABEL_11;
      }

      swift_unknownObjectRelease();

      v5 = v78;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    sub_1000079B4(v29, &qword_100772140, &qword_10062D9F0);
    v37 = v83;
    (v79)(v83, 1, 1, v4);
    goto LABEL_10;
  }

  swift_unknownObjectRelease();
LABEL_11:
  v83 = v29;
  v71 = v7;
  (v79)(v22, 1, 1, v4);
  v38 = (v5 + 6);
  v73 = (v5 + 2);
  v77 = (v5 + 4);
  v78 = v5 + 1;
  v39 = &qword_100772140;
  while (1)
  {
    v41 = [v82 searchDirection];
    v42 = v39;
    v43 = v81;
    v44 = v22;
    v45 = v83;
    sub_1003D537C(v83, v41, v81);
    v46 = v43;
    v39 = v42;
    sub_10000D184(v46, v44, v42, &qword_10062D9F0);
    v47 = v44;
    sub_10000794C(v44, v17, v42, &qword_10062D9F0);
    v48 = *v38;
    if ((*v38)(v17, 1, v4) != 1)
    {
      break;
    }

    sub_1000079B4(v17, v42, &qword_10062D9F0);
    v22 = v47;
LABEL_13:
    sub_10000794C(v22, v14, v39, &qword_10062D9F0);
    v40 = v48(v14, 1, v4);
    sub_1000079B4(v14, v39, &qword_10062D9F0);
    if (v40 == 1)
    {
      goto LABEL_16;
    }
  }

  sub_1000079B4(v45, v42, &qword_10062D9F0);
  v49 = v14;
  v50 = v4;
  v51 = v74;
  (*v77)(v74, v17, v50);
  (*v73)(v45, v51, v50);
  (v79)(v45, 0, 1, v50);
  v52 = v75(v51);
  v53 = v51;
  v4 = v50;
  v14 = v49;
  v39 = v42;
  (*v78)(v53, v4);
  v22 = v47;
  if ((v52 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_16:
  v54 = v72;
  sub_10000794C(v22, v72, &qword_100772140, &qword_10062D9F0);
  if (v48(v54, 1, v4) == 1)
  {
    sub_1000079B4(v22, &qword_100772140, &qword_10062D9F0);
    sub_1000079B4(v83, &qword_100772140, &qword_10062D9F0);
    sub_1000079B4(v54, &qword_100772140, &qword_10062D9F0);
    return 0;
  }

  v56 = v71;
  result = (*v77)(v71, v54, v4);
  v58 = v83;
  v59 = *(v84 + qword_10078A548);
  if (!v59)
  {
    __break(1u);
    return result;
  }

  v60 = v59;
  sub_1003BD378();
  v62 = v61;

  if (!v62 || (__chkstk_darwin(v63), *(&v70 - 2) = v56, sub_1004B4D40(sub_1003DE17C, (&v70 - 4), v62), v65 = *(v64 + 16), , !v65))
  {
    if ([v82 searchDirection] == 1)
    {
      v66 = 3;
    }

    else
    {
      v66 = 1;
    }

    sub_1000E5C98(v56, v66, 0);
  }

  v67 = *(v84 + qword_10078A550);
  if (!v67)
  {
LABEL_29:
    sub_1000079B4(v22, &qword_100772140, &qword_10062D9F0);
    sub_1000079B4(v58, &qword_100772140, &qword_10062D9F0);
    v55 = 0;
    goto LABEL_30;
  }

  v68 = *(v67 + 16);

  if ((v68(v69) & 1) == 0)
  {

    goto LABEL_29;
  }

  v55 = (*(v67 + 48))(v56);
  sub_1000079B4(v22, &qword_100772140, &qword_10062D9F0);
  sub_1000079B4(v58, &qword_100772140, &qword_10062D9F0);

LABEL_30:
  (*v78)(v56, v4);
  return v55;
}

void sub_1003D537C(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v188 = a2;
  v199 = a3;
  v4 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v4 - 8);
  v6 = v177 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v189 = v177 - v8;
  __chkstk_darwin(v9);
  v194 = v177 - v10;
  __chkstk_darwin(v11);
  v191 = v177 - v12;
  __chkstk_darwin(v13);
  v190 = v177 - v14;
  __chkstk_darwin(v15);
  v186 = (v177 - v16);
  __chkstk_darwin(v17);
  v19 = v177 - v18;
  __chkstk_darwin(v20);
  v182 = v177 - v21;
  __chkstk_darwin(v22);
  v183 = (v177 - v23);
  __chkstk_darwin(v24);
  v26 = v177 - v25;
  __chkstk_darwin(v27);
  v29 = v177 - v28;
  __chkstk_darwin(v30);
  v200 = v177 - v31;
  __chkstk_darwin(v32);
  v34 = v177 - v33;
  v35 = type metadata accessor for TTRRemindersListViewModel.Item();
  __chkstk_darwin(v35);
  v187 = v177 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v193 = v177 - v38;
  __chkstk_darwin(v39);
  v196 = v177 - v40;
  __chkstk_darwin(v41);
  v185 = v177 - v42;
  __chkstk_darwin(v43);
  v184 = (v177 - v44);
  __chkstk_darwin(v45);
  v47 = v177 - v46;
  v49 = v48;
  sub_10000794C(a1, v34, &qword_100772140, &qword_10062D9F0);
  v50 = v49[6];
  if (v50(v34, 1, v35) == 1)
  {
    sub_1000079B4(v34, &qword_100772140, &qword_10062D9F0);
    v51 = v49[7];
    v51(v29, 1, 1, v35);
    v52 = v201;
    v53 = sub_1003D693C(v29);
    sub_1000079B4(v29, &qword_100772140, &qword_10062D9F0);
    if (v53 <= 0)
    {
      v51(v199, 1, 1, v35);
      return;
    }

    v51(v6, 1, 1, v35);
    v54 = *(v52 + qword_10078A548);
    if (v54)
    {
      v55 = v54;
      sub_1003BC308(0, v6, v199);

      sub_1000079B4(v6, &qword_100772140, &qword_10062D9F0);
      return;
    }

    goto LABEL_73;
  }

  v181 = v50;
  v179 = v49 + 6;
  v177[0] = v19;
  v198 = v49;
  v56 = v49[4];
  v57 = v35;
  v177[1] = v49 + 4;
  v178 = v56;
  v56(v47, v34, v35);
  v195 = qword_10078A548;
  v58 = *(v201 + qword_10078A548);
  if (!v58)
  {
    goto LABEL_72;
  }

  v59 = v58;
  sub_1000C84C8();
  v192 = v47;
  v61 = sub_1000F2C50(v47, v60);

  if (v61)
  {
    Strong = swift_weakLoadStrong();

    v63 = v198;
    v64 = v201;
    if (Strong)
    {
      v65 = *(*Strong + 144);
      swift_beginAccess();
      v66 = Strong + v65;
      v67 = v200;
      (v63[2])(v200, v66, v35);

      v68 = 0;
    }

    else
    {
      v68 = 1;
      v67 = v200;
    }
  }

  else
  {

    v68 = 1;
    v63 = v198;
    v67 = v200;
    v64 = v201;
  }

  v69 = v63[7];
  v70 = v35;
  v197 = v63 + 7;
  v71 = v69;
  v69(v67, v68, 1, v70);
  v72 = sub_1003D693C(v67);
  if (v72 <= 0)
  {
    goto LABEL_15;
  }

  v73 = *(v64 + v195);
  if (!v73)
  {
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v74 = v72;
  v75 = v73;
  v76 = sub_1003BC088(v192, sub_1000C84C8, sub_1000F2C50, sub_1000F2C38, sub_1003B3EDC);
  v78 = v77;

  if (v78)
  {
LABEL_15:
    sub_1000079B4(v200, &qword_100772140, &qword_10062D9F0);
    (v198[1])(v192, v57);
    goto LABEL_16;
  }

  v180 = v57;
  if (!v188)
  {
    v81 = v198;
    if (v76 <= 0)
    {
      (v198[1])(v192, v57);
      sub_100016588(v200, v199, &qword_100772140, &qword_10062D9F0);
      return;
    }

    v82 = *(v64 + v195);
    if (!v82)
    {
      goto LABEL_78;
    }

    v83 = v82;
    v84 = v186;
    v85 = v76 - 1;
    v86 = v200;
    sub_1003BC308(v85, v200, v186);

    if (v181(v84, 1, v57) != 1)
    {
      v95 = v29;
      v96 = v185;
      v178(v185, v84, v57);
      v97 = v81[2];
      v98 = v196;
      v97(v196, v96, v57);
      v188 = v81 + 2;
      v186 = v97;
      v97(v95, v98, v57);
      v71(v95, 0, 1, v57);
      v99 = sub_1003D693C(v95);
      sub_1000079B4(v95, &qword_100772140, &qword_10062D9F0);
      if (v99 >= 1)
      {
        v100 = (v198 + 1);
        v101 = &qword_100772140;
        v183 = (v198 + 1);
        do
        {
          v102 = v191;
          v186(v191, v196, v57);
          v71(v102, 0, 1, v57);
          v103 = *(v201 + v195);
          if (!v103)
          {
            goto LABEL_75;
          }

          v104 = v103;
          v105 = v190;
          sub_1003BC308(v99 - 1, v102, v190);

          sub_1000079B4(v102, v101, &qword_10062D9F0);
          if (v181(v105, 1, v57) == 1)
          {
            sub_1000079B4(v105, &qword_100772140, &qword_10062D9F0);
            break;
          }

          v106 = v196;
          v184 = *v100;
          v184(v196, v57);
          v107 = v101;
          v108 = v193;
          v109 = v178;
          v178(v193, v105, v57);
          v110 = v71;
          v111 = v186;
          v186(v106, v108, v180);
          v112 = v194;
          v111(v194, v106, v180);
          v71 = v110;
          v110(v112, 0, 1, v180);
          v101 = v107;
          v57 = v180;
          v113 = v112;
          v114 = v189;
          sub_10000794C(v113, v189, v107, &qword_10062D9F0);
          if (v181(v114, 1, v57) == 1)
          {
            sub_1000079B4(v114, v107, &qword_10062D9F0);
            v100 = v183;
            v115 = v184;
          }

          else
          {
            v116 = v187;
            v109(v187, v114, v57);
            v117 = *(v201 + v195);
            if (!v117)
            {
              goto LABEL_77;
            }

            v118 = v117;
            v119 = sub_1000CAD68(v116);

            v120 = v116;
            v100 = v183;
            v115 = v184;
            v184(v120, v57);
            if ((v119 & 1) == 0)
            {
              sub_1000079B4(v194, &qword_100772140, &qword_10062D9F0);
              v115(v193, v57);
              break;
            }
          }

          v121 = *(v201 + v195);
          if (!v121)
          {
            goto LABEL_76;
          }

          v122 = v121;
          v123 = v194;
          v99 = sub_1003BCE6C(v194);
          v125 = v124;

          sub_1000079B4(v123, v101, &qword_10062D9F0);
          v115(v193, v57);
        }

        while ((v125 & 1) == 0 && v99 >= 1);
      }

      v154 = v198[1];
      v154(v185, v57);
      sub_1000079B4(v200, &qword_100772140, &qword_10062D9F0);
      v154(v192, v57);
      v155 = v199;
      v178(v199, v196, v57);
      v79 = v155;
      v80 = 0;
LABEL_17:
      v71(v79, v80, 1, v57);
      return;
    }

    sub_1000079B4(v86, &qword_100772140, &qword_10062D9F0);
    (v81[1])(v192, v57);
    sub_1000079B4(v84, &qword_100772140, &qword_10062D9F0);
LABEL_16:
    v79 = v199;
    v80 = 1;
    goto LABEL_17;
  }

  if (v188 == 1)
  {
    v87 = v192;
    v196 = v198[2];
    (v196)(v29, v192, v57);
    v71(v29, 0, 1, v57);
    v88 = v64;
    v89 = sub_1003D693C(v29);
    sub_1000079B4(v29, &qword_100772140, &qword_10062D9F0);
    if (v89 > 0)
    {
      (v196)(v26, v87, v57);
      v71(v26, 0, 1, v57);
      v90 = *(v88 + v195);
      if (v90)
      {
        v91 = v90;
        sub_1003BC308(0, v26, v199);

        sub_1000079B4(v26, &qword_100772140, &qword_10062D9F0);
        sub_1000079B4(v200, &qword_100772140, &qword_10062D9F0);
        (v198[1])(v87, v57);
        return;
      }

      goto LABEL_79;
    }

    if (v76 < v74 - 1)
    {
      v92 = *(v201 + v195);
      if (v92)
      {
        v93 = v92;
        v94 = v200;
        sub_1003BC308(v76 + 1, v200, v199);

        sub_1000079B4(v94, &qword_100772140, &qword_10062D9F0);
        (v198[1])(v192, v57);
        return;
      }

      goto LABEL_80;
    }

    v126 = v200;
    v127 = v183;
    sub_10000794C(v200, v183, &qword_100772140, &qword_10062D9F0);
    v128 = v181(v127, 1, v57);
    v129 = v201;
    if (v128 == 1)
    {
      sub_1000079B4(v126, &qword_100772140, &qword_10062D9F0);
      (v198[1])(v192, v57);
      sub_1000079B4(v127, &qword_100772140, &qword_10062D9F0);
      goto LABEL_16;
    }

    v130 = v57;
    v131 = v71;
    v132 = v184;
    v178(v184, v127, v130);
    v133 = *(v129 + v195);
    v134 = v192;
    if (!v133)
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v135 = v133;
    v136 = sub_1003BC088(v132, sub_1000C84C8, sub_1000F2C50, sub_1000F2C38, sub_1003B3EDC);
    v138 = v137;

    if (v138)
    {
      v139 = v198[1];
      v140 = v180;
      v139(v132, v180);
      sub_1000079B4(v126, &qword_100772140, &qword_10062D9F0);
      v139(v134, v140);
      v57 = v140;
      goto LABEL_16;
    }

    v141 = *(v201 + v195);
    if (!v141)
    {
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    v142 = v141;
    sub_1000C84C8();
    v144 = sub_1000F2C50(v184, v143);

    if (v144)
    {
      v145 = swift_weakLoadStrong();

      v146 = v182;
      if (v145)
      {
        v147 = *(*v145 + 144);
        swift_beginAccess();
        v148 = v145 + v147;
        v149 = v180;
        (v196)(v146, v148, v180);

        v150 = 0;
        v151 = v200;
        v152 = v184;
        v153 = v192;
LABEL_60:
        v71(v146, v150, 1, v149);
        v156 = sub_1003D693C(v146);
        sub_1000079B4(v146, &qword_100772140, &qword_10062D9F0);
        if (!__OFSUB__(v156, 1))
        {
          if (v136 >= v156 - 1)
          {
            v167 = v198[1];
            v168 = v152;
            v169 = v180;
            v167(v168, v180);
            sub_1000079B4(v151, &qword_100772140, &qword_10062D9F0);
            v167(v153, v169);
            v57 = v169;
            goto LABEL_16;
          }

          v157 = *(v201 + v195);
          if (!v157)
          {
LABEL_83:
            __break(1u);
LABEL_84:
            __break(1u);
            goto LABEL_85;
          }

          v158 = v157;
          sub_1000C84C8();
          v160 = sub_1000F2C50(v184, v159);

          if (v160)
          {
            v161 = swift_weakLoadStrong();

            if (v161)
            {
              v162 = *(*v161 + 144);
              swift_beginAccess();
              v163 = v177[0];
              v164 = v180;
              (v196)(v177[0], v161 + v162, v180);

              v165 = 0;
              v166 = v200;
              goto LABEL_69;
            }
          }

          else
          {
          }

          v165 = 1;
          v166 = v200;
          v163 = v177[0];
          v164 = v180;
LABEL_69:
          v131(v163, v165, 1, v164);
          v170 = *(v201 + v195);
          v171 = v198;
          if (v170)
          {
            v172 = v170;
            sub_1003BC308(v136 + 1, v163, v199);

            sub_1000079B4(v163, &qword_100772140, &qword_10062D9F0);
            v173 = v171[1];
            v173(v184, v164);
            sub_1000079B4(v166, &qword_100772140, &qword_10062D9F0);
            v173(v192, v164);
            return;
          }

          goto LABEL_84;
        }

        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }

      v150 = 1;
      v151 = v200;
      v152 = v184;
    }

    else
    {

      v150 = 1;
      v151 = v200;
      v152 = v184;
      v146 = v182;
    }

    v153 = v192;
    v149 = v180;
    goto LABEL_60;
  }

LABEL_85:
  if (qword_1007673B0 != -1)
  {
    swift_once();
  }

  v174 = type metadata accessor for Logger();
  sub_100003E30(v174, qword_1007875C8);
  v175 = sub_100008E04(_swiftEmptyArrayStorage);
  v176 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("unknown direction", 17, 2uLL, v175, v176);
  __break(1u);
}

uint64_t sub_1003D67C8()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v10 - v5;
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
  sub_1003DF088(&qword_10076BB60, &type metadata accessor for TTRRemindersListViewModel.ItemID, &protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
  v7 = dispatch thunk of static Equatable.== infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  return v7 & 1;
}

uint64_t sub_1003D693C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000794C(a1, v6, &qword_100772140, &qword_10062D9F0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    result = sub_1000079B4(v6, &qword_100772140, &qword_10062D9F0);
  }

  else
  {
    result = (*(v8 + 32))(v10, v6, v7);
    v12 = *(v2 + qword_10078A548);
    if (!v12)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    v13 = v12;
    v14 = sub_1000CAD68(v10);

    result = (*(v8 + 8))(v10, v7);
    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  v15 = *(v2 + qword_10078A548);
  if (!v15)
  {
    __break(1u);
    goto LABEL_12;
  }

  v16 = v15;
  v17 = sub_1003BCE6C(a1);
  v19 = v18;

  if (v19)
  {
    return 0;
  }

  else
  {
    return v17;
  }
}

void *sub_1003D6B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = Strong;
  sub_100454D4C(a3);
  v8 = v7;

  return v8;
}

void *sub_1003D6BB4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v8 = Strong;
  v9 = sub_1003CEA9C(a1, a2, a3);

  return v9;
}

void *sub_1003D6C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = *(Strong + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
  v7 = *(Strong + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
  v8 = Strong;
  sub_10000C36C((Strong + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), v6);
  v9 = (*(*(v7 + 8) + 552))(a3, v6);

  return v9;
}

uint64_t sub_1003D6CF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();

  return 0;
}

void sub_1003D6D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v6 = *(a1 + qword_10078A548);
    if (v6)
    {
      v7 = v6;
      v8 = sub_1000DE654(a2);

      if (v8)
      {
        swift_getObjectType();
        if (swift_conformsToProtocol2())
        {
          TTRICollectionViewDragPreviewParametersProvidingCell.dragPreviewParameters.getter();
        }

        else
        {
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1003D6E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();

  return 1;
}

uint64_t sub_1003D6EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();

  return 0;
}

uint64_t sub_1003D6F00(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100058000(a1, a2);
  if (swift_isClassType() && v6)
  {
    v7 = &qword_10076B780;
    v8 = &qword_10062D7C0;
  }

  else
  {
    v7 = a3;
    v8 = a4;
  }

  return sub_100058000(v7, v8);
}

void sub_1003D6F6C(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(unint64_t *, unint64_t *, unint64_t *))
{
  v8 = a1[1];
  v9 = _minimumMergeRunLength(_:)(v8);
  if (v9 < v8)
  {
    if (v8 >= -1)
    {
      v10 = v9;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100058000(a2, a3);
        v12 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v12[2] = v11;
      }

      v13 = *(sub_100058000(a2, a3) - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      sub_1003D7320(v14, v15, a1, v10, a2, a3, a4);
      v12[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    sub_1003D70D0(0, v8, 1, a1, a2, a3);
  }
}

void sub_1003D70D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v38 = sub_100058000(a5, a6);
  __chkstk_darwin(v38);
  v37 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  __chkstk_darwin(v16);
  v19 = &v28 - v18;
  v30 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = *(v17 + 72);
    v22 = *a4 + v21 * (a3 - 1);
    v35 = -v21;
    v36 = v20;
    v23 = a1 - a3;
    v29 = v21;
    v24 = v20 + v21 * a3;
LABEL_5:
    v33 = v22;
    v34 = a3;
    v31 = v24;
    v32 = v23;
    while (1)
    {
      sub_10000794C(v24, v19, a5, a6);
      sub_10000794C(v22, v15, a5, a6);
      v25 = static IndexPath.< infix(_:_:)();
      sub_1000079B4(v15, a5, a6);
      sub_1000079B4(v19, a5, a6);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v34 + 1;
        v22 = v33 + v29;
        v23 = v32 - 1;
        v24 = v31 + v29;
        if (v34 + 1 == v30)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v26 = v37;
      sub_100016588(v24, v37, a5, a6);
      swift_arrayInitWithTakeFrontToBack();
      sub_100016588(v26, v22, a5, a6);
      v22 += v35;
      v24 += v35;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1003D7320(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(unint64_t *, unint64_t *, unint64_t *))
{
  v126 = a7;
  v115 = a4;
  v116 = a1;
  v10 = sub_100058000(a5, a6);
  v128 = *(v10 - 8);
  __chkstk_darwin(v10);
  v120 = &v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v131 = &v114 - v13;
  __chkstk_darwin(v14);
  v133 = &v114 - v15;
  __chkstk_darwin(v16);
  v132 = &v114 - v17;
  v129 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = _swiftEmptyArrayStorage;
LABEL_99:
    v134 = *v116;
    if (!v134)
    {
      goto LABEL_139;
    }

    v10 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = v118;
    if (isUniquelyReferenced_nonNull_native)
    {
      v108 = v10;
LABEL_102:
      v135 = v108;
      v10 = *(v108 + 2);
      if (v10 >= 2)
      {
        v109 = v126;
        while (*v129)
        {
          v110 = *&v108[16 * v10];
          v111 = v108;
          v112 = *&v108[16 * v10 + 24];
          sub_1003D7C64(*v129 + *(v128 + 72) * v110, *v129 + *(v128 + 72) * *&v108[16 * v10 + 16], *v129 + *(v128 + 72) * v112, v134, a5, a6, v109);
          if (v36)
          {
            goto LABEL_111;
          }

          if (v112 < v110)
          {
            goto LABEL_126;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v111 = sub_1000ED7BC(v111);
          }

          if (v10 - 2 >= *(v111 + 2))
          {
            goto LABEL_127;
          }

          v113 = &v111[16 * v10];
          *v113 = v110;
          *(v113 + 1) = v112;
          v135 = v111;
          sub_1000ED730(v10 - 1);
          v108 = v135;
          v10 = *(v135 + 2);
          if (v10 <= 1)
          {
            goto LABEL_111;
          }
        }

        goto LABEL_137;
      }

LABEL_111:

      return;
    }

LABEL_133:
    v108 = sub_1000ED7BC(v10);
    goto LABEL_102;
  }

  v19 = 0;
  v20 = _swiftEmptyArrayStorage;
  v134 = v10;
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    v121 = v20;
    if (v22 >= v18)
    {
      v34 = v22;
      v35 = v115;
      v36 = v118;
    }

    else
    {
      v23 = *v129;
      v24 = *(v128 + 72);
      v25 = *v129 + v24 * v22;
      v26 = v132;
      sub_10000794C(v25, v132, a5, a6);
      v27 = v23 + v24 * v21;
      v117 = v21;
      v28 = v133;
      sub_10000794C(v27, v133, a5, a6);
      LODWORD(v127) = static IndexPath.< infix(_:_:)();
      sub_1000079B4(v28, a5, a6);
      sub_1000079B4(v26, a5, a6);
      v29 = v117 + 2;
      v130 = v24;
      v30 = v23 + v24 * (v117 + 2);
      while (v18 != v29)
      {
        v31 = v132;
        sub_10000794C(v30, v132, a5, a6);
        v32 = v133;
        sub_10000794C(v25, v133, a5, a6);
        v33 = static IndexPath.< infix(_:_:)() & 1;
        sub_1000079B4(v32, a5, a6);
        sub_1000079B4(v31, a5, a6);
        ++v29;
        v30 += v130;
        v25 += v130;
        if ((v127 & 1) != v33)
        {
          v34 = v29 - 1;
          goto LABEL_12;
        }
      }

      v34 = v18;
LABEL_12:
      v35 = v115;
      v10 = v134;
      v21 = v117;
      v36 = v118;
      if (v127)
      {
        if (v34 < v117)
        {
          goto LABEL_130;
        }

        if (v117 < v34)
        {
          v37 = v130 * (v34 - 1);
          v38 = v34 * v130;
          v127 = v34;
          v39 = v117;
          v40 = v117 * v130;
          do
          {
            if (v39 != --v34)
            {
              v41 = *v129;
              if (!*v129)
              {
                goto LABEL_136;
              }

              sub_100016588(v41 + v40, v120, a5, a6);
              if (v40 < v37 || v41 + v40 >= (v41 + v38))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v40 != v37)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_100016588(v120, v41 + v37, a5, a6);
            }

            ++v39;
            v37 -= v130;
            v38 -= v130;
            v40 += v130;
          }

          while (v39 < v34);
          v21 = v117;
          v36 = v118;
          v35 = v115;
          v10 = v134;
          v34 = v127;
        }
      }
    }

    v42 = v129[1];
    if (v34 >= v42)
    {
      goto LABEL_35;
    }

    if (__OFSUB__(v34, v21))
    {
      goto LABEL_129;
    }

    if (v34 - v21 >= v35)
    {
LABEL_35:
      v44 = v34;
      if (v34 < v21)
      {
        goto LABEL_128;
      }

      goto LABEL_36;
    }

    if (__OFADD__(v21, v35))
    {
      goto LABEL_131;
    }

    if (v21 + v35 >= v42)
    {
      v43 = v129[1];
    }

    else
    {
      v43 = v21 + v35;
    }

    if (v43 < v21)
    {
LABEL_132:
      __break(1u);
      goto LABEL_133;
    }

    if (v34 == v43)
    {
      goto LABEL_35;
    }

    v117 = v21;
    v118 = v36;
    v93 = *v129;
    v94 = *(v128 + 72);
    v95 = *v129 + v94 * (v34 - 1);
    v96 = v34;
    v97 = -v94;
    v98 = v21 - v96;
    v127 = v96;
    v130 = v93;
    v119 = v94;
    v99 = v93 + v96 * v94;
    v122 = v43;
LABEL_89:
    v123 = v99;
    v124 = v98;
    v100 = v98;
    v125 = v95;
    v101 = v95;
LABEL_90:
    v102 = v132;
    sub_10000794C(v99, v132, a5, a6);
    v103 = v133;
    sub_10000794C(v101, v133, a5, a6);
    v104 = static IndexPath.< infix(_:_:)();
    sub_1000079B4(v103, a5, a6);
    sub_1000079B4(v102, a5, a6);
    if (v104)
    {
      break;
    }

    v10 = v134;
LABEL_88:
    v95 = v125 + v119;
    v98 = v124 - 1;
    v44 = v122;
    v99 = v123 + v119;
    if (++v127 != v122)
    {
      goto LABEL_89;
    }

    v21 = v117;
    v36 = v118;
    if (v122 < v117)
    {
      goto LABEL_128;
    }

LABEL_36:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v20 = v121;
    }

    else
    {
      v20 = sub_100546DD8(0, *(v121 + 2) + 1, 1, v121);
    }

    v46 = *(v20 + 2);
    v45 = *(v20 + 3);
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      v20 = sub_100546DD8((v45 > 1), v46 + 1, 1, v20);
    }

    *(v20 + 2) = v47;
    v48 = &v20[16 * v46];
    *(v48 + 4) = v21;
    *(v48 + 5) = v44;
    v49 = *v116;
    if (!*v116)
    {
      goto LABEL_138;
    }

    v122 = v44;
    if (v46)
    {
      v50 = v49;
      v10 = v134;
      while (1)
      {
        v51 = v47 - 1;
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v52 = *(v20 + 4);
          v53 = *(v20 + 5);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_56:
          if (v55)
          {
            goto LABEL_117;
          }

          v68 = &v20[16 * v47];
          v70 = *v68;
          v69 = *(v68 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_120;
          }

          v74 = &v20[16 * v51 + 32];
          v76 = *v74;
          v75 = *(v74 + 1);
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_123;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_124;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v51 = v47 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v78 = &v20[16 * v47];
        v80 = *v78;
        v79 = *(v78 + 1);
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_70:
        if (v73)
        {
          goto LABEL_119;
        }

        v81 = &v20[16 * v51];
        v83 = *(v81 + 4);
        v82 = *(v81 + 5);
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_122;
        }

        if (v84 < v72)
        {
          goto LABEL_4;
        }

LABEL_77:
        v10 = v51 - 1;
        if (v51 - 1 >= v47)
        {
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
          goto LABEL_132;
        }

        if (!*v129)
        {
          goto LABEL_135;
        }

        v89 = v20;
        v90 = *&v20[16 * v10 + 32];
        v91 = *&v20[16 * v51 + 40];
        sub_1003D7C64(*v129 + *(v128 + 72) * v90, *v129 + *(v128 + 72) * *&v20[16 * v51 + 32], *v129 + *(v128 + 72) * v91, v50, a5, a6, v126);
        if (v36)
        {
          goto LABEL_111;
        }

        if (v91 < v90)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v89 = sub_1000ED7BC(v89);
        }

        if (v10 >= *(v89 + 2))
        {
          goto LABEL_114;
        }

        v92 = &v89[16 * v10];
        *(v92 + 4) = v90;
        *(v92 + 5) = v91;
        v135 = v89;
        sub_1000ED730(v51);
        v20 = v135;
        v47 = *(v135 + 2);
        v10 = v134;
        if (v47 <= 1)
        {
          goto LABEL_4;
        }
      }

      v56 = &v20[16 * v47 + 32];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_115;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_116;
      }

      v63 = &v20[16 * v47];
      v65 = *v63;
      v64 = *(v63 + 1);
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_118;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_121;
      }

      if (v67 >= v59)
      {
        v85 = &v20[16 * v51 + 32];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_125;
        }

        if (v54 < v88)
        {
          v51 = v47 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

    v10 = v134;
LABEL_4:
    v118 = v36;
    v18 = v129[1];
    v19 = v122;
    if (v122 >= v18)
    {
      goto LABEL_99;
    }
  }

  if (v130)
  {
    v105 = v131;
    sub_100016588(v99, v131, a5, a6);
    v10 = v134;
    swift_arrayInitWithTakeFrontToBack();
    sub_100016588(v105, v101, a5, a6);
    v101 += v97;
    v99 += v97;
    if (__CFADD__(v100++, 1))
    {
      goto LABEL_88;
    }

    goto LABEL_90;
  }

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
}

void sub_1003D7C64(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(unint64_t *, unint64_t *, unint64_t *))
{
  v53 = a3;
  v49 = a5;
  v50 = a6;
  v52 = sub_100058000(a5, a6);
  __chkstk_darwin(v52);
  v51 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v48 = &v41 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_60;
  }

  v16 = v53 - a2;
  if (v53 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_61;
  }

  v42 = a7;
  v17 = (a2 - a1) / v15;
  v56 = a1;
  v55 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v19;
    if (v19 >= 1)
    {
      v27 = -v15;
      v28 = a4 + v19;
      v45 = a1;
      v46 = a4;
      v44 = -v15;
      do
      {
        v41 = v26;
        v29 = a2;
        v30 = a2 + v27;
        v47 = v29;
        while (1)
        {
          v31 = v53;
          if (v29 <= a1)
          {
            v56 = v29;
            v54 = v41;
            goto LABEL_58;
          }

          v43 = v26;
          v53 += v27;
          v32 = v28 + v27;
          v33 = v28 + v27;
          v35 = v48;
          v34 = v49;
          v36 = v50;
          sub_10000794C(v33, v48, v49, v50);
          v37 = v30;
          v38 = v30;
          v39 = v51;
          sub_10000794C(v38, v51, v34, v36);
          v40 = static IndexPath.< infix(_:_:)();
          sub_1000079B4(v39, v34, v36);
          sub_1000079B4(v35, v34, v36);
          if (v40)
          {
            break;
          }

          v26 = v32;
          if (v31 < v28 || v53 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v37;
            v27 = v44;
            a1 = v45;
          }

          else
          {
            v30 = v37;
            v27 = v44;
            a1 = v45;
            if (v31 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v28 = v32;
          v29 = v47;
          if (v32 <= v46)
          {
            a2 = v47;
            goto LABEL_57;
          }
        }

        if (v31 < v47 || v53 >= v47)
        {
          a2 = v37;
          swift_arrayInitWithTakeFrontToBack();
          v27 = v44;
          a1 = v45;
          v26 = v43;
        }

        else
        {
          a2 = v37;
          v27 = v44;
          a1 = v45;
          v26 = v43;
          if (v31 != v47)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v28 > v46);
    }

LABEL_57:
    v56 = a2;
    v54 = v26;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v47 = a4 + v18;
    v54 = a4 + v18;
    if (v18 >= 1 && a2 < v53)
    {
      do
      {
        v21 = v48;
        v22 = v49;
        v23 = v50;
        sub_10000794C(a2, v48, v49, v50);
        v24 = v51;
        sub_10000794C(a4, v51, v22, v23);
        v25 = static IndexPath.< infix(_:_:)();
        sub_1000079B4(v24, v22, v23);
        sub_1000079B4(v21, v22, v23);
        if (v25)
        {
          if (a1 < a2 || a1 >= a2 + v15)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v15;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v15)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v55 = a4 + v15;
          a4 += v15;
        }

        a1 += v15;
        v56 = a1;
      }

      while (a4 < v47 && a2 < v53);
    }
  }

LABEL_58:
  v42(&v56, &v55, &v54);
}

void *sub_1003D8280()
{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[2] = sub_1003DF100;
  v0[3] = v1;
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[4] = sub_1003DEFDC;
  v0[5] = v2;
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[6] = sub_1003DEFE4;
  v0[7] = v3;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[8] = sub_1003DEFEC;
  v0[9] = v4;
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[10] = sub_1003DEFF4;
  v0[11] = v5;
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[12] = sub_1003DF024;
  v0[13] = v6;
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[14] = sub_1003DF054;
  v0[15] = v7;
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[16] = sub_1003DF05C;
  v0[17] = v8;
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[18] = sub_1003DF150;
  v0[19] = v9;
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[20] = sub_1003DF078;
  v0[21] = v10;
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[22] = sub_1003DF080;
  v0[23] = v11;
  return v0;
}

uint64_t sub_1003D84F0()
{
  *(v0 + 608) = 0;
  *(v0 + 592) = 0u;
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 16) = sub_1003DECF8;
  *(v0 + 24) = v1;
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 32) = sub_1003DED18;
  *(v0 + 40) = v2;
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 48) = sub_1003DED20;
  *(v0 + 56) = v3;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 64) = sub_1003DF0E8;
  *(v0 + 72) = v4;
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 80) = sub_1003DED28;
  *(v0 + 88) = v5;
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 96) = sub_1003DF148;
  *(v0 + 104) = v6;
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 112) = sub_1003DED44;
  *(v0 + 120) = v7;
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 128) = sub_1003DED4C;
  *(v0 + 136) = v8;
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 144) = sub_1003DF14C;
  *(v0 + 152) = v9;
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 160) = sub_1003DF14C;
  *(v0 + 168) = v10;
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 176) = sub_1003DED54;
  *(v0 + 184) = v11;
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 192) = sub_1003DED5C;
  *(v0 + 200) = v12;
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 208) = sub_1003DED8C;
  *(v0 + 216) = v13;
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 224) = sub_1003DED94;
  *(v0 + 232) = v14;
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 240) = sub_1003DED9C;
  *(v0 + 248) = v15;
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 256) = sub_1003DEDA4;
  *(v0 + 264) = v16;
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 272) = sub_1003DEDAC;
  *(v0 + 280) = v17;
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 288) = sub_1003DEDDC;
  *(v0 + 296) = v18;
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 304) = sub_1003DEE0C;
  *(v0 + 312) = v19;
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 320) = sub_1003DEE14;
  *(v0 + 328) = v20;
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 336) = sub_1003DEE44;
  *(v0 + 344) = v21;
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 352) = sub_1003DEE4C;
  *(v0 + 360) = v22;
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 368) = sub_1003DEE78;
  *(v0 + 376) = v23;
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 384) = sub_1003DEE84;
  *(v0 + 392) = v24;
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 400) = sub_1003DEEA4;
  *(v0 + 408) = v25;
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 416) = sub_1003DEEC4;
  *(v0 + 424) = v26;
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 432) = sub_1003DF160;
  *(v0 + 440) = v27;
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 448) = sub_1003DF14C;
  *(v0 + 456) = v28;
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 464) = sub_1003DEEE0;
  *(v0 + 472) = v29;
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 480) = sub_1003DEEE8;
  *(v0 + 488) = v30;
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 496) = sub_1003DEEF0;
  *(v0 + 504) = v31;
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 512) = sub_1003DF0EC;
  *(v0 + 520) = v32;
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 528) = sub_1003DF0E8;
  *(v0 + 536) = v33;
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 544) = sub_1003DE578;
  *(v0 + 552) = v34;
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 560) = sub_1003DF0E8;
  *(v0 + 568) = v35;
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 576) = sub_1003DEF0C;
  *(v0 + 584) = v36;
  return v0;
}

void *sub_1003D8C94()
{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[2] = sub_1003DEC98;
  v0[3] = v1;
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[4] = sub_1003DECB8;
  v0[5] = v2;
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[6] = sub_1003DECE8;
  v0[7] = v3;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[8] = sub_1003DECF0;
  v0[9] = v4;
  return v0;
}

id sub_1003D8D98()
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v0[qword_100787F68] = 0;
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = &v0[qword_100787F30];
  *v3 = sub_1003DEC18;
  *(v3 + 1) = v2;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = &v0[qword_100787F38];
  *v5 = sub_1003DEC18;
  *(v5 + 1) = v4;
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = &v0[qword_100787F40];
  *v7 = sub_1003DEC20;
  v7[1] = v6;
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = &v0[qword_100787F48];
  *v9 = sub_1003DEC3C;
  v9[1] = v8;
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = &v0[qword_100787F50];
  *v11 = sub_1003DF144;
  v11[1] = v10;
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = &v0[qword_100787F58];
  *v13 = sub_1003DEC58;
  v13[1] = v12;
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = &v0[qword_100787F60];
  *v15 = sub_1003DEC78;
  v15[1] = v14;
  v17.receiver = v0;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, "init");
}

id sub_1003D8FDC()
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v0[qword_100780CB8] = 0;
  *&v0[qword_100780CC0] = &_swiftEmptyDictionarySingleton;
  v2 = &v0[qword_100780CD8];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = &v0[qword_100780C80];
  *v4 = sub_1003DEB78;
  v4[1] = v3;
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = &v0[qword_100780C88];
  *v6 = sub_1003DF154;
  v6[1] = v5;
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = &v0[qword_100780C90];
  *v8 = sub_1003DF144;
  v8[1] = v7;
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = &v0[qword_100780C98];
  *v10 = sub_1003DEBA8;
  v10[1] = v9;
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = &v0[qword_100780CA0];
  *v12 = sub_1003DF144;
  v12[1] = v11;
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = &v0[qword_100780CA8];
  *v14 = sub_1003DEBB0;
  v14[1] = v13;
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = &v0[qword_100780CB0];
  *v16 = sub_1003DF158;
  v16[1] = v15;
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = &v0[qword_100780CC8];
  *v18 = sub_1003DEBB8;
  v18[1] = v17;
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = &v0[qword_100780CD0];
  *v20 = sub_1003DEBE8;
  v20[1] = v19;
  v22.receiver = v0;
  v22.super_class = ObjectType;
  return objc_msgSendSuper2(&v22, "init");
}

uint64_t sub_1003D92D0()
{
  v1 = v0;
  if (qword_100767240 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_100781340);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "TTRIRemindersListViewController: Pencil hover interaction ended -- removing uncommitted reminder if it has not input", v5, 2u);
  }

  v6 = (v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter);
  v7 = *(v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
  v8 = v6[4];
  sub_10000C36C(v6, v7);
  return (*(*(v8 + 8) + 408))(v7);
}

uint64_t sub_1003D93E4()
{
  *(v0 + 608) = 0;
  *(v0 + 592) = 0u;
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 16) = sub_1003DF100;
  *(v0 + 24) = v1;
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 32) = sub_1003DE570;
  *(v0 + 40) = v2;
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 48) = sub_1003DE578;
  *(v0 + 56) = v3;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 64) = sub_1003DF0E8;
  *(v0 + 72) = v4;
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 80) = sub_1003DF148;
  *(v0 + 88) = v5;
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 96) = sub_1003DF148;
  *(v0 + 104) = v6;
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 112) = sub_1003DF14C;
  *(v0 + 120) = v7;
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 128) = sub_1003DE594;
  *(v0 + 136) = v8;
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 144) = sub_1003DF14C;
  *(v0 + 152) = v9;
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 160) = sub_1003DF14C;
  *(v0 + 168) = v10;
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 176) = sub_1003DE59C;
  *(v0 + 184) = v11;
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 192) = sub_1003DE5A4;
  *(v0 + 200) = v12;
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 208) = sub_1003DE5D4;
  *(v0 + 216) = v13;
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 224) = sub_1003DE5F4;
  *(v0 + 232) = v14;
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 240) = sub_1003DE614;
  *(v0 + 248) = v15;
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 256) = sub_1003DE630;
  *(v0 + 264) = v16;
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 272) = sub_1003DE638;
  *(v0 + 280) = v17;
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 288) = sub_1003DE640;
  *(v0 + 296) = v18;
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 304) = sub_1003DE670;
  *(v0 + 312) = v19;
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 320) = sub_1003DE678;
  *(v0 + 328) = v20;
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 336) = sub_1003DE680;
  *(v0 + 344) = v21;
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 352) = sub_1003DE688;
  *(v0 + 360) = v22;
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 368) = sub_1003DE6B4;
  *(v0 + 376) = v23;
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 384) = sub_1003DF160;
  *(v0 + 392) = v24;
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 400) = sub_1003DF0F4;
  *(v0 + 408) = v25;
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 416) = sub_1003DF0F8;
  *(v0 + 424) = v26;
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 432) = sub_1003DE6C0;
  *(v0 + 440) = v27;
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 448) = sub_1003DE6C8;
  *(v0 + 456) = v28;
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 464) = sub_1003DE6F8;
  *(v0 + 472) = v29;
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 480) = sub_1003DE700;
  *(v0 + 488) = v30;
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 496) = sub_1003DF0EC;
  *(v0 + 504) = v31;
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 512) = sub_1003DF0EC;
  *(v0 + 520) = v32;
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 528) = sub_1003DE708;
  *(v0 + 536) = v33;
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 544) = sub_1003DF0E8;
  *(v0 + 552) = v34;
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 560) = sub_1003DE710;
  *(v0 + 568) = v35;
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 576) = sub_1003DE718;
  *(v0 + 584) = v36;
  return v0;
}

id sub_1003D9B88(uint64_t a1)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.Item();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = sub_10000C36C((v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), *(v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24));
  v7 = *(*v6 + 72);
  v8 = *(*v6 + 80);
  sub_10000C36C((*v6 + 48), v7);
  (*(v8 + 8))(v7, v8);
  v9 = sub_10025D4DC(a1);

  v19 = v1;
  v20 = a1;
  sub_100399264(sub_1003DE758, v18, v9);
  v11 = v10;

  v21 = v11;
  (*(v4 + 16))(&v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v3);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  (*(v4 + 32))(v13 + v12, &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v3);
  v14 = static TTRDebugMenuUtilities.objectIDContextualActions(provideObjectID:)();

  sub_100081654(v14);
  sub_100003540(0, &qword_10076BC40, UIContextualAction_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v16 = [objc_opt_self() configurationWithActions:isa];

  return v16;
}

void sub_1003D9DDC()
{
  v1 = sub_100058000(qword_100784690, &unk_10062DDD0);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - v2;
  v4 = sub_1003C3C78();
  if (v4)
  {
    v5 = v4;
    [v4 endEditing:1];
  }

  v6 = *(v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_automaticSubtaskSelectionController);
  if (v6)
  {
    type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession.SelectionState(0);
    swift_storeEnumTagMultiPayload();
    v7 = type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession(0);
    (*(*(v7 - 8) + 56))(v3, 0, 1, v7);
    v8 = OBJC_IVAR____TtC9Reminders52TTRIRemindersListAutomaticSubtaskSelectionController_currentMultipleSelectionInteractionSession;
    swift_beginAccess();

    sub_10000D184(v3, v6 + v8, qword_100784690, &unk_10062DDD0);
    swift_endAccess();

    v9 = (v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter);
    v10 = *(v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
    v11 = *(v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
    sub_10000C36C(v9, v10);
    (*(*(v11 + 8) + 352))(v10);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1003D9F68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item.iOSListCasesInItem();
  v5 = *(v4 - 1);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.Item.iOSListCasesOnly.getter();
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.sectionsContainer(_:) || v8 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.section(_:))
  {
    goto LABEL_3;
  }

  if (v8 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.reminder(_:) || v8 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.uncommittedReminder(_:) || v8 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.placeholderReminder(_:))
  {
    result = (*(v5 + 8))(v7, v4);
    v12 = *(a1 + qword_10078A548);
    if (!v12)
    {
      __break(1u);
      return result;
    }

    v13 = v12;
    v4 = sub_1000DE654(a2);

    if (v4)
    {
      type metadata accessor for TTRIRemindersListReminderCell();
      if (!swift_dynamicCastClass())
      {
LABEL_31:

        return 1;
      }

      v14 = v4;
      v15 = UIView.firstResponderDescendant.getter();

      if (v15)
      {

        return 0;
      }
    }

    return 1;
  }

  if (v8 != enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.completed(_:) && v8 != enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.hashtags(_:) && v8 != enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.templateStatus(_:) && v8 != enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.tip(_:))
  {
    if (v8 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.publicTemplatePreviewStatus(_:) || v8 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.recentlyDeletedDisclaimer(_:) || v8 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.unknown(_:))
    {
      return 0;
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    goto LABEL_31;
  }

LABEL_3:
  (*(v5 + 8))(v7, v4);
  return 0;
}

void *sub_1003DA1E0()
{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[2] = sub_1003DF13C;
  v0[3] = v1;
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[4] = sub_1003DE530;
  v0[5] = v2;
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[6] = sub_1003DE560;
  v0[7] = v3;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[8] = sub_1003DE568;
  v0[9] = v4;
  return v0;
}

uint64_t sub_1003DA2E4()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.Item.sectionsContainerAndSectionCasesOnly.getter();
  result = (*(v8 + 88))(v10, v7);
  if (result == enum case for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem.sectionsContainer(_:) || (v6 = v3, result == enum case for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem.section(_:)))
  {
    (*(v8 + 96))(v10, v7);
    (*(v1 + 32))(v6, v10, v0);
    TTRRemindersListViewModel.SectionHeader.isVisible.getter();
    return (*(v1 + 8))(v6, v0);
  }

  else if (result != enum case for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem.unknown(_:))
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

id sub_1003DA560()
{
  result = *(*(v0 + 16) + qword_10078A540);
  if (result)
  {
    return [result performBatchUpdates:0 completion:0];
  }

  __break(1u);
  return result;
}

void *sub_1003DA58C()
{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[2] = sub_1003DF100;
  v0[3] = v1;
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[4] = sub_1003DE9C8;
  v0[5] = v2;
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[6] = sub_1003DE9D0;
  v0[7] = v3;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[8] = sub_1003DE9D8;
  v0[9] = v4;
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[10] = sub_1003DE9E0;
  v0[11] = v5;
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[12] = sub_1003DF0E8;
  v0[13] = v6;
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[14] = sub_1003DEA10;
  v0[15] = v7;
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[16] = sub_1003DF150;
  v0[17] = v8;
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[18] = sub_1003DF150;
  v0[19] = v9;
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[20] = sub_1003DEA44;
  v0[21] = v10;
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[22] = sub_1003DEA4C;
  v0[23] = v11;
  return v0;
}

void sub_1003DA7FC(char *a1, uint64_t a2)
{
  v237 = a1;
  v218 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.Separator();
  v216 = *(v218 - 8);
  __chkstk_darwin(v218);
  v217 = &v191 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.TextSize();
  v213 = *(v4 - 8);
  v214 = v4;
  __chkstk_darwin(v4);
  v215 = &v191 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor();
  v210 = *(v6 - 8);
  v211 = v6;
  __chkstk_darwin(v6);
  v212 = &v191 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.TextStyle();
  v206 = *(v208 - 8);
  __chkstk_darwin(v208);
  v209 = &v191 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&unk_10076B060, &unk_1006324D0);
  __chkstk_darwin(v9 - 8);
  v207 = &v191 - v10;
  v11 = sub_100058000(&unk_10076B050, &unk_100631DF0);
  __chkstk_darwin(v11 - 8);
  v228 = &v191 - v12;
  v223 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
  v221 = *(v223 - 8);
  __chkstk_darwin(v223);
  v224 = &v191 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = type metadata accessor for TTRRemindersListViewModel.Item();
  v230 = *(v220 - 8);
  __chkstk_darwin(v220);
  v231 = &v191 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100058000(&unk_100792D90, &qword_10062F3C8);
  __chkstk_darwin(v15 - 8);
  v205 = &v191 - v16;
  v229 = type metadata accessor for TTRRemindersListEditableSectionNameViewModel();
  v225 = *(v229 - 8);
  __chkstk_darwin(v229);
  v201 = &v191 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100058000(&unk_100776BC0, &qword_10062F2B0);
  __chkstk_darwin(v18 - 8);
  v222 = &v191 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v204 = &v191 - v21;
  v22 = sub_100058000(&qword_100781830, &unk_10062EF50);
  v226 = *(v22 - 8);
  v227 = v22;
  __chkstk_darwin(v22);
  v203 = &v191 - v23;
  v24 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v24 - 8);
  v219 = &v191 - v25;
  v26 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v235 = *(v26 - 8);
  v236 = v26;
  __chkstk_darwin(v26);
  v234 = &v191 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for TTRRemindersListTip();
  v192 = *(v28 - 8);
  v193 = v28;
  __chkstk_darwin(v28);
  v191 = &v191 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for TTRTemplatePublicLinkData();
  v195 = *(v30 - 8);
  v196 = v30;
  __chkstk_darwin(v30);
  v32 = &v191 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v194 = &v191 - v34;
  v35 = sub_100058000(&qword_1007693B8, &unk_10062DEC0);
  __chkstk_darwin(v35 - 8);
  v197 = &v191 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v39 = &v191 - v38;
  v40 = type metadata accessor for TTRRemindersListViewModel.HashtagsState();
  v198 = *(v40 - 8);
  v199 = v40;
  __chkstk_darwin(v40);
  v200 = (&v191 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v202 = type metadata accessor for TTRRemindersListViewModel.CompletedRemindersState();
  v42 = *(v202 - 1);
  __chkstk_darwin(v202);
  v44 = &v191 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v47 = &v191 - v46;
  v48 = type metadata accessor for TTRRemindersListViewModel.Item.iOSListCasesInItem();
  v49 = *(v48 - 8);
  __chkstk_darwin(v48);
  v51 = &v191 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = a2;
  TTRRemindersListViewModel.Item.iOSListCasesOnly.getter();
  v52 = (*(v49 + 88))(v51, v48);
  if (v52 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.sectionsContainer(_:))
  {
    goto LABEL_2;
  }

  if (v52 != enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.section(_:))
  {
    if (v52 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.reminder(_:))
    {
      v69 = sub_1003CBA9C(v232, v237);
      if (v69)
      {
        v70 = v69;
        TTRIRemindersListReminderCell.hideSeparatorDueToLastItemInSection.setter();
      }

      goto LABEL_2;
    }

    if (v52 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.uncommittedReminder(_:))
    {
      v72 = v232;
      v71 = v233;
      v73 = sub_1003CBA9C(v232, v237);
      if (v73)
      {
        v74 = v73;
        v75 = &v71[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter];
        v76 = *&v71[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24];
        v77 = *&v71[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32];
        sub_10000C36C(&v71[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter], v76);
        if ((*(*(v77 + 8) + 1040))(v72, v76))
        {
          v78 = sub_10000C36C(v75, *(v75 + 3));
          v79 = *(*v78 + 72);
          v80 = *(*v78 + 80);
          sub_10000C36C((*v78 + 48), v79);
          sub_10045E42C(v79, v80);
          swift_getObjectType();
          dispatch thunk of TTRRemindersListTreeContentsQueryable.isLastItemInSection(_:)();
          swift_unknownObjectRelease();
        }

        goto LABEL_33;
      }
    }

    else
    {
      if (v52 != enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.placeholderReminder(_:))
      {
        if (v52 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.completed(_:))
        {
          (*(v49 + 96))(v51, v48);
          v101 = v42;
          v102 = v202;
          (*(v42 + 4))(v47, v51, v202);
          type metadata accessor for TTRIRemindersListCompletedCell();
          v103 = v237;
          if (swift_dynamicCastClass())
          {
            (*(v42 + 2))(v44, v47, v102);
            v104 = v103;
            sub_1004D2BE8(v44, &v256);
            v106 = v260;
            v105 = v261;
            v241 = v256;
            v236 = v47;
            v237 = v101;
            v108 = v258;
            v107 = v259;
            v242 = v257;
            v109 = swift_allocObject();
            swift_unknownObjectWeakInit();
            sub_1000301AC(v108, v107);
            v110 = swift_allocObject();
            swift_unknownObjectWeakInit();
            sub_1000301AC(v106, v105);
            v243 = v256;
            *&v244 = v257;
            *(&v244 + 1) = sub_1003DE964;
            *&v245 = v109;
            *(&v245 + 1) = sub_1003DE96C;
            v246 = v110;
            v239 = &type metadata for TTRIRemindersListCompletedCellContentConfiguration;
            v240 = sub_1003DE974();
            v111 = swift_allocObject();
            v238 = v111;
            v112 = v244;
            *(v111 + 16) = v243;
            *(v111 + 32) = v112;
            *(v111 + 48) = v245;
            *(v111 + 64) = v246;
            v113 = v104;
            sub_10008E15C(&v243, &v247);
            UITableViewCell.contentConfiguration.setter();

            (*(v237 + 1))(v236, v202);
            v247 = v241;
            v248 = v242;
            v249 = sub_1003DE964;
            v250 = v109;
            v251 = sub_1003DE96C;
            v252 = v110;
            sub_10008E220(&v247);
          }

          else
          {
            if (qword_100767240 != -1)
            {
              swift_once();
            }

            v152 = type metadata accessor for Logger();
            sub_100003E30(v152, qword_100781340);
            v153 = v103;
            v154 = Logger.logObject.getter();
            v155 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v154, v155))
            {
              v156 = swift_slowAlloc();
              v157 = swift_slowAlloc();
              *v156 = 138412290;
              *(v156 + 4) = v153;
              *v157 = v153;
              v158 = v153;
              _os_log_impl(&_mh_execute_header, v154, v155, "Failed to cast cell to completedCell {cell: %@}", v156, 0xCu);
              sub_1000079B4(v157, &unk_10076DF80, &qword_10062F730);
            }

            (*(v101 + 1))(v47, v102);
          }

          return;
        }

        if (v52 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.hashtags(_:))
        {
          (*(v49 + 96))(v51, v48);
          v139 = v198;
          v140 = v200;
          v141 = v51;
          v142 = v199;
          (*(v198 + 32))(v200, v141, v199);
          type metadata accessor for TTRIRemindersListHashtagCollectionCell(0);
          v143 = v237;
          v144 = swift_dynamicCastClass();
          if (v144)
          {
            v145 = v144;
            (*(v139 + 16))(v39, v140, v142);
            (*(v139 + 56))(v39, 0, 1, v142);
            v146 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_viewModel;
            swift_beginAccess();
            v147 = v197;
            sub_10000794C(v145 + v146, v197, &qword_1007693B8, &unk_10062DEC0);
            swift_beginAccess();
            v148 = v143;
            sub_100019180(v39, v145 + v146, &qword_1007693B8, &unk_10062DEC0);
            swift_endAccess();
            sub_1005FCE90(v147);
            sub_1000079B4(v147, &qword_1007693B8, &unk_10062DEC0);
            sub_1000079B4(v39, &qword_1007693B8, &unk_10062DEC0);
            (*(v139 + 8))(v200, v142);
            *(v145 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_allowsExcludedSelection) = 1;
            *(v145 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_delegate + 8) = &off_1007250A8;
            swift_unknownObjectWeakAssign();
          }

          else
          {
            if (qword_100767240 != -1)
            {
              swift_once();
            }

            v170 = type metadata accessor for Logger();
            sub_100003E30(v170, qword_100781340);
            v171 = v143;
            v172 = Logger.logObject.getter();
            v173 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v172, v173))
            {
              v174 = swift_slowAlloc();
              v175 = swift_slowAlloc();
              *v174 = 138412290;
              *(v174 + 4) = v171;
              *v175 = v171;
              v176 = v171;
              _os_log_impl(&_mh_execute_header, v172, v173, "Failed to cast cell to hashtagsCell {cell: %@}", v174, 0xCu);
              sub_1000079B4(v175, &unk_10076DF80, &qword_10062F730);
            }

            (*(v139 + 8))(v140, v142);
          }

          return;
        }

        if (v52 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.templateStatus(_:))
        {
          (*(v49 + 96))(v51, v48);
          v47 = v194;
          v48 = v195;
          v49 = v196;
          (*(v195 + 32))(v194, v51, v196);
          type metadata accessor for TTRIRemindersListTemplateStatusCell(0);
          v44 = v237;
          v149 = swift_dynamicCastClass();
          if (v149)
          {
            v150 = v149;
            (*(v48 + 16))(v32, v47, v49);
            v151 = v44;
            sub_100300E3C(v32);
            (*(v48 + 8))(v47, v49);
            *(v150 + qword_10077C060 + 8) = &off_100725098;
            swift_unknownObjectWeakAssign();

            return;
          }
        }

        else
        {
          if (v52 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.tip(_:))
          {
            (*(v49 + 96))(v51, v48);
            v160 = v191;
            v159 = v192;
            v161 = v193;
            (*(v192 + 32))(v191, v51, v193);
            type metadata accessor for TTRIRemindersListTipCell();
            v162 = v237;
            if (swift_dynamicCastClass())
            {
              v163 = *&v233[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24];
              v164 = *&v233[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32];
              sub_10000C36C(&v233[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter], v163);
              v165 = *(v164 + 8);
              v166 = v160;
              v167 = *(v165 + 1104);
              v168 = v162;
              v167(&v256, v166, v163, v165);
              sub_10000B0D8(&v256, &v247);
              v169 = v168;
              UITableViewCell.contentConfiguration.setter();

              sub_100004758(&v256);
              (*(v159 + 8))(v166, v193);
            }

            else
            {
              if (qword_100767240 != -1)
              {
                swift_once();
              }

              v184 = type metadata accessor for Logger();
              sub_100003E30(v184, qword_100781340);
              v185 = v162;
              v186 = Logger.logObject.getter();
              v187 = static os_log_type_t.fault.getter();

              if (os_log_type_enabled(v186, v187))
              {
                v188 = swift_slowAlloc();
                v189 = swift_slowAlloc();
                *v188 = 138412290;
                *(v188 + 4) = v185;
                *v189 = v185;
                v190 = v185;
                _os_log_impl(&_mh_execute_header, v186, v187, "Failed to cast cell to tipCell {cell: %@}", v188, 0xCu);
                sub_1000079B4(v189, &unk_10076DF80, &qword_10062F730);
              }

              (*(v159 + 8))(v160, v161);
            }

            return;
          }

          if (v52 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.publicTemplatePreviewStatus(_:) || v52 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.recentlyDeletedDisclaimer(_:) || v52 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.unknown(_:))
          {
            return;
          }

          _diagnoseUnexpectedEnumCase<A>(type:)();
          __break(1u);
        }

        if (qword_100767240 != -1)
        {
          swift_once();
        }

        v177 = type metadata accessor for Logger();
        sub_100003E30(v177, qword_100781340);
        v178 = v44;
        v179 = Logger.logObject.getter();
        v180 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v179, v180))
        {
          v181 = swift_slowAlloc();
          v182 = swift_slowAlloc();
          *v181 = 138412290;
          *(v181 + 4) = v178;
          *v182 = v178;
          v183 = v178;
          _os_log_impl(&_mh_execute_header, v179, v180, "Failed to cast cell to templateStatusCell {cell: %@}", v181, 0xCu);
          sub_1000079B4(v182, &unk_10076DF80, &qword_10062F730);
        }

        (*(v48 + 8))(v47, v49);
        return;
      }

      v89 = v232;
      v88 = v233;
      v90 = sub_1003CBA9C(v232, v237);
      if (v90)
      {
        v74 = v90;
        v91 = *&v88[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24];
        v92 = *&v88[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32];
        sub_10000C36C(&v88[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter], v91);
        (*(*(v92 + 8) + 1040))(v89, v91);
LABEL_33:
        TTRIRemindersListReminderCell.hideSeparatorDueToLastItemInSection.setter();
      }
    }

LABEL_2:
    (*(v49 + 8))(v51, v48);
    return;
  }

  (*(v49 + 96))(v51, v48);
  v53 = v234;
  (*(v235 + 32))(v234, v51, v236);
  v54 = type metadata accessor for TTRIRemindersListEditableSectionCell(0);
  v55 = v237;
  v56 = swift_dynamicCastClass();
  if (v56)
  {
    v57 = v56;
    v202 = v54;
    *(v56 + OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_delegate + 8) = &off_100725070;
    v58 = v233;
    swift_unknownObjectWeakAssign();
    v59 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter;
    sub_10000B0D8(&v58[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter], &v256);
    v60 = v258;
    v61 = v259;
    v200 = sub_10000C36C(&v256, v258);
    v62 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameModule;
    swift_beginAccess();
    v64 = v226;
    v63 = v227;
    if ((*(v226 + 48))(&v57[v62], 1, v227))
    {
      v65 = v219;
      v66 = v55;
      v67 = v220;
      (*(v230 + 56))(v219, 1, 1, v220);
      v68 = v66;
    }

    else
    {
      v199 = v61;
      v93 = v203;
      (*(v64 + 16))(v203, &v57[v62], v63);
      v94 = v55;
      TTRRemindersListInCellModule.interface.getter();
      (*(v64 + 8))(v93, v63);
      v95 = v243;
      v96 = OBJC_IVAR____TtC9Reminders45TTRIRemindersListEditableSectionNamePresenter_viewModel;
      swift_beginAccess();
      v97 = v204;
      sub_10000794C(v95 + v96, v204, &unk_100776BC0, &qword_10062F2B0);
      v98 = v225;
      v99 = v229;
      if ((*(v225 + 48))(v97, 1, v229))
      {
        swift_unknownObjectRelease();
        sub_1000079B4(v97, &unk_100776BC0, &qword_10062F2B0);
        v100 = 1;
        v65 = v219;
      }

      else
      {
        v114 = v201;
        (*(v98 + 16))(v201, v97, v99);
        sub_1000079B4(v97, &unk_100776BC0, &qword_10062F2B0);
        v65 = v219;
        TTRRemindersListEditableSectionNameViewModel.item.getter();
        swift_unknownObjectRelease();
        (*(v98 + 8))(v114, v229);
        v100 = 0;
      }

      v67 = v220;
      (*(v230 + 56))(v65, v100, 1, v220);
      v61 = v199;
    }

    v115 = v232;
    v116 = (*(*(v61 + 8) + 312))(v232, v65, v60);
    sub_1000079B4(v65, &qword_100772140, &qword_10062D9F0);
    sub_100004758(&v256);
    if ((v116 & 1) == 0)
    {
LABEL_37:
      (*(v230 + 16))(v231, v115, v67);
      v125 = v228;
      v126 = v234;
      TTRRemindersListViewModel.SectionHeader.title.getter();
      v127 = v221;
      v128 = *(v221 + 48);
      v129 = v223;
      if (v128(v125, 1, v223) == 1)
      {
        v130 = type metadata accessor for TTRListColors.Color();
        (*(*(v130 - 8) + 56))(v207, 1, 1, v130);
        (*(v206 + 104))(v209, enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextStyle.plain(_:), v208);
        (*(v210 + 104))(v212, enum case for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor.regular(_:), v211);
        (*(v213 + 104))(v215, enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextSize.regular(_:), v214);
        (*(v216 + 104))(v217, enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.fullWidth(_:), v218);
        v126 = v234;
        v131 = v228;
        TTRRemindersListViewModel.SectionHeaderTitle.init(text:disabled:textStyle:defaultTextColor:textSize:hidesTitleIfEmpty:separator:disclosureColor:ttrAccessibilityIsPlaceholder:)();
        v132 = v128(v131, 1, v129);
        v133 = v225;
        v134 = v237;
        if (v132 != 1)
        {
          sub_1000079B4(v131, &unk_10076B050, &unk_100631DF0);
        }
      }

      else
      {
        (*(v127 + 32))(v224, v125, v129);
        v133 = v225;
        v134 = v237;
      }

      v135 = v222;
      TTRRemindersListEditableSectionNameViewModel.init(item:sectionHeaderTitle:)();
      (*(v133 + 56))(v135, 0, 1, v229);
      sub_100496818(v135);
      v136 = TTRRemindersListViewModel.SectionHeader.isVisible.getter();
      v137 = v202;
      v255.receiver = v57;
      v255.super_class = v202;
      v138 = objc_msgSendSuper2(&v255, "isHidden");
      v254.receiver = v57;
      v254.super_class = v137;
      objc_msgSendSuper2(&v254, "setHidden:", (v136 & 1) == 0);
      v253.receiver = v57;
      v253.super_class = v137;
      if (v138 != objc_msgSendSuper2(&v253, "isHidden"))
      {
        [v57 setNeedsLayout];
      }

      (*(v235 + 8))(v126, v236);
      return;
    }

    v117 = v233;
    sub_10000B0D8(&v233[v59], &v256);
    v118 = v258;
    v119 = v259;
    sub_10000C36C(&v256, v258);
    v120 = [v117 parentViewController];
    if (v120)
    {
      swift_getObjectType();
      v121 = swift_conformsToProtocol2();
      if (v121)
      {
        v122 = *(v121 + 8);
LABEL_36:
        v123 = *(*(v119 + 8) + 344);
        v124 = v205;
        v115 = v232;
        v123(v232, v120, v122, v117, v118);
        swift_unknownObjectRelease();
        (*(v226 + 56))(v124, 0, 1, v227);
        swift_beginAccess();
        sub_100019180(v124, &v57[v62], &unk_100792D90, &qword_10062F3C8);
        swift_endAccess();
        sub_1004978D4();
        sub_1000079B4(v124, &unk_100792D90, &qword_10062F3C8);
        sub_100004758(&v256);
        goto LABEL_37;
      }

      v120 = 0;
    }

    v122 = 0;
    goto LABEL_36;
  }

  if (qword_100767240 != -1)
  {
    swift_once();
  }

  v81 = type metadata accessor for Logger();
  sub_100003E30(v81, qword_100781340);
  v82 = v55;
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    *v85 = 138412290;
    *(v85 + 4) = v82;
    *v86 = v82;
    v87 = v82;
    _os_log_impl(&_mh_execute_header, v83, v84, "Failed to cast cell to editableSectionCell {cell: %@}", v85, 0xCu);
    sub_1000079B4(v86, &unk_10076DF80, &qword_10062F730);
  }

  (*(v235 + 8))(v53, v236);
}

void *sub_1003DC640(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item.iOSListCasesInItem();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.Item.iOSListCasesOnly.getter();
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.sectionsContainer(_:) || v8 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.section(_:) || v8 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.reminder(_:) || v8 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.uncommittedReminder(_:) || v8 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.placeholderReminder(_:))
  {
    goto LABEL_15;
  }

  if (v8 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.completed(_:))
  {
    (*(v5 + 8))(v7, v4);
    v14 = 1;
    return (v14 & 1);
  }

  v15 = v8 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.hashtags(_:) || v8 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.templateStatus(_:);
  if (v15 || v8 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.tip(_:))
  {
LABEL_15:
    (*(v5 + 8))(v7, v4);
  }

  else if (v8 != enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.publicTemplatePreviewStatus(_:) && v8 != enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.recentlyDeletedDisclaimer(_:) && v8 != enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.unknown(_:))
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    goto LABEL_36;
  }

  result = *(a1 + qword_10078A540);
  if (result)
  {
    v14 = sub_10042122C(a2, [result isEditing]);
    return (v14 & 1);
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_1003DC85C()
{
  v1 = type metadata accessor for TTRTemplateSharingAction();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter);
  v7 = *(v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
  v6 = *(v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
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

id sub_1003DC9C4()
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v0[qword_100780CB8] = 0;
  *&v0[qword_100780CC0] = &_swiftEmptyDictionarySingleton;
  v2 = &v0[qword_100780CD8];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = &v0[qword_100780C80];
  *v4 = sub_1003DE4B8;
  v4[1] = v3;
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = &v0[qword_100780C88];
  *v6 = sub_1003DE4E8;
  v6[1] = v5;
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = &v0[qword_100780C90];
  *v8 = sub_1003DE4F0;
  v8[1] = v7;
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = &v0[qword_100780C98];
  *v10 = sub_1003DE4F8;
  v10[1] = v9;
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = &v0[qword_100780CA0];
  *v12 = sub_1003DF144;
  v12[1] = v11;
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = &v0[qword_100780CA8];
  *v14 = sub_1003DE500;
  v14[1] = v13;
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = &v0[qword_100780CB0];
  *v16 = sub_1003DF158;
  v16[1] = v15;
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = &v0[qword_100780CC8];
  *v18 = sub_1003DE508;
  v18[1] = v17;
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = &v0[qword_100780CD0];
  *v20 = sub_1003DE510;
  v20[1] = v19;
  v22.receiver = v0;
  v22.super_class = ObjectType;
  return objc_msgSendSuper2(&v22, "init");
}

void sub_1003DCCB8()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_initialFrameForLoadingView;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 1;
  v3 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_preferredChromelessBarStates;
  sub_100058000(&unk_100781980, &unk_10063CC90);
  swift_allocObject();
  *(v0 + v3) = TTRObservableViewModel.init(value:)();
  *(v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_scrollingController) = 0;
  v4 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_itemStateTracker;
  type metadata accessor for TTRRemindersListItemStateTracker();
  swift_allocObject();
  *(v0 + v4) = TTRRemindersListItemStateTracker.init()();
  v5 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_pencilAutoCommitTracker;
  type metadata accessor for TTRIRemindersListPencilAutoCommitTracker();
  v6 = swift_allocObject();
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v1 + v5) = v6;
  *(v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_chromelessToolbarUpdater) = 0;
  *(v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView) = 0;
  v7 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_canMoveItemReturnValueTempOverrides;
  type metadata accessor for TTRIRemindersListTemporaryItemSet();
  v8 = swift_allocObject();
  *(v8 + 24) = &_swiftEmptySetSingleton;
  sub_100003540(0, &qword_100777780, OS_dispatch_queue_ptr);
  static OS_dispatch_queue.main.getter();
  type metadata accessor for TTRDeferredAction();
  swift_allocObject();
  *(v8 + 16) = TTRDeferredAction.init(queue:)();
  sub_1003DF088(&qword_1007810E0, type metadata accessor for TTRIRemindersListTemporaryItemSet, &unk_10063E814);

  TTRDeferredAction.delegate.setter();

  *(v1 + v7) = v8;
  *(v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_automaticSubtaskSelectionController) = 0;
  v9 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_contextMenuOriginatorItem;
  v10 = type metadata accessor for TTRRemindersListViewModel.Item();
  v11 = *(*(v10 - 8) + 56);
  v11(v1 + v9, 1, 1, v10);
  *(v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_treeViewHasSwipedItem) = 0;
  *(v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_isHighlightingItemsProgrammatically) = 0;
  v11(v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_firstVisibleItemToRestore, 1, 1, v10);
  *(v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_internalFocusedCell) = 0;
  *(v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___completedTasksRotor) = 0;
  *(v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___incompleteTasksRotor) = 0;
  *(v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___overdueTasksRotor) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1003DCF8C()
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v0[qword_100787F68] = 0;
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = &v0[qword_100787F30];
  *v3 = sub_1003DE518;
  *(v3 + 1) = v2;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = &v0[qword_100787F38];
  *v5 = sub_1003DE520;
  *(v5 + 1) = v4;
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = &v0[qword_100787F40];
  *v7 = sub_1003DE528;
  v7[1] = v6;
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = &v0[qword_100787F48];
  *v9 = sub_1003DF144;
  v9[1] = v8;
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = &v0[qword_100787F50];
  *v11 = sub_1003DF144;
  v11[1] = v10;
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = &v0[qword_100787F58];
  *v13 = sub_1003DF154;
  v13[1] = v12;
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = &v0[qword_100787F60];
  *v15 = sub_1003DF15C;
  v15[1] = v14;
  v17.receiver = v0;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, "init");
}

uint64_t sub_1003DD1D0(char a1)
{
  TTRObservableViewModel.value.getter();
  sub_10016A680();
  return TTRObservableViewModel<A>.update(with:forcePublish:)();
}

uint64_t sub_1003DD23C()
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
  v18 = *&v1[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24];
  v17 = *&v1[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32];
  sub_10000C36C(&v1[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter], v18);
  (*(*(v17 + 8) + 392))(v18);
  v19 = sub_100058000(&qword_100775A58, &qword_100636070);
  if ((*(*(v19 - 8) + 48))(v8, 1, v19) == 1)
  {
    sub_1000079B4(v8, &qword_100775698, &unk_100635D50);
LABEL_4:
    v20 = type metadata accessor for PromiseError();
    sub_1003DF088(&qword_1007817D0, &type metadata accessor for PromiseError, &protocol conformance descriptor for PromiseError);
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
  sub_1003C3EF0(v16, v5);
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

void sub_1003DD888(void *a1, double a2, double a3)
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
        sub_1003DD23C();
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

void *sub_1003DD988()
{
  v1 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  result = *&v1[qword_10078A540];
  if (result)
  {
    v3 = [result hasActiveDrag];

    if (v3)
    {
      return 0;
    }

    result = *(*(v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView) + qword_10078A540);
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

uint64_t sub_1003DDA30(uint64_t a1)
{
  v2 = type metadata accessor for AppEntityID();
  v42 = *(v2 - 8);
  v43 = v2;
  __chkstk_darwin(v2);
  v41 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v39 = *(v4 - 8);
  v40 = v4;
  __chkstk_darwin(v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v44 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRRemindersListViewModel.Item();
  v45 = *(v10 - 8);
  v46 = v10;
  __chkstk_darwin(v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v38 - v14;
  v16 = type metadata accessor for REMFeatureFlags();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 104))(v20, enum case for REMFeatureFlags.viewAnnotation(_:), v16, v18);
  v21 = REMFeatureFlags.isEnabled.getter();
  result = (*(v17 + 8))(v20, v16);
  if (v21)
  {
    TTRIRemindersListReminderCell.viewModel.getter();
    v23 = v48;
    if (!v48)
    {
      return sub_1000079B4(v47, &qword_100780978, &unk_10063C720);
    }

    v38 = a1;
    v24 = sub_10000C36C(v47, v48);
    v25 = *(v23 - 8);
    v26 = __chkstk_darwin(v24);
    v28 = &v38 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v25 + 16))(v28, v26);
    sub_1000079B4(v47, &qword_100780978, &unk_10063C720);
    dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
    (*(v25 + 8))(v28, v23);
    v30 = v45;
    v29 = v46;
    (*(v45 + 32))(v15, v12, v46);
    TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
    v31 = v44;
    v32 = (*(v44 + 88))(v9, v7);
    if (v32 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:))
    {
      (*(v31 + 96))(v9, v7);
      v34 = v39;
      v33 = v40;
      (*(v39 + 32))(v6, v9, v40);
      v35 = TTRRemindersListViewModel.ReminderID.objectID.getter();
      (*(v34 + 8))(v6, v33);
      type metadata accessor for ReminderEntity();
      v36 = v35;
      v37 = v41;
      AppEntityID.init(objectID:)();
      sub_1003DF088(&qword_10076DF78, &type metadata accessor for ReminderEntity, &protocol conformance descriptor for ReminderEntity);
      UIView.setAssociatedAppEntity<A>(entityType:identifier:)();

      (*(v42 + 8))(v37, v43);
      return (*(v30 + 8))(v15, v29);
    }

    if (v32 != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:) && v32 != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:))
    {
      if (v32 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
      {
LABEL_11:
        UIView.removeAssociatedAppEntity()();
        return (*(v30 + 8))(v15, v29);
      }

      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }

    (*(v31 + 8))(v9, v7);
    goto LABEL_11;
  }

  return result;
}

id sub_1003DE020()
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
    sub_1003DF088(&unk_100781820, type metadata accessor for OpenExternalURLOptionsKey, &unk_10062D358);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v6 openURL:v9 options:isa completionHandler:0];
  }

  return v5;
}

uint64_t sub_1003DE1A4(uint64_t a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  LOBYTE(a1) = sub_1003C57CC(a1, v3);

  return a1 & 1;
}

uint64_t sub_1003DE1E4()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_1003DE224(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRemindersListHighlightTarget() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  sub_1003C9454(a1, *(v1 + 16), v1 + v4, *v5, *(v5 + 8));
}

uint64_t sub_1003DE308(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for TTRRemindersListHighlightTarget.TargetItem() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));
  v5 = *(v4 + *(v2 + 64));

  return a1(v3, v4, v5);
}

double sub_1003DE74C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_1003DE794(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

void sub_1003DE864(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v9 = *(type metadata accessor for TTRReminderSwipeAction() - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(type metadata accessor for TTRRemindersListViewModel.Item() - 8);
  v13 = *(v4 + 16);
  v14 = v4 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80));

  sub_1003CD9B0(a1, a2, a3, a4, v13, v4 + v10, v14);
}

unint64_t sub_1003DE974()
{
  result = qword_100781920;
  if (!qword_100781920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781920);
  }

  return result;
}

uint64_t sub_1003DEF14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003DEF7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003DF088(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003DF174(uint64_t result)
{
  if (result <= 1u)
  {
    if (!result)
    {
      return result;
    }

    v5 = "ng view - declined";
    v6 = 0x747065636341;
  }

  else
  {
    if (result != 2)
    {
      if (result == 3)
      {
        v1 = 0xD000000000000031;
        v2 = 0x676E69646E6550;
        v3 = 0x8000000100684A00;
        v4 = 0xE700000000000000;
      }

      else
      {
        v1 = 0xD000000000000026;
        v2 = 0x72656E774FLL;
        v3 = 0x80000001006849D0;
        v4 = 0xE500000000000000;
      }

      return TTRLocalizedString(_:comment:)(*&v2, *&v1)._countAndFlagsBits;
    }

    v5 = "ng view - pending";
    v6 = 0x6E696C636544;
  }

  v2 = v6 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
  v3 = v5 | 0x8000000000000000;
  v4 = 0xE800000000000000;
  v1 = 0xD000000000000032;
  return TTRLocalizedString(_:comment:)(*&v2, *&v1)._countAndFlagsBits;
}

uint64_t sub_1003DF268()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_1007819E0);
  v1 = sub_100003E30(v0, qword_1007819E0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

BOOL sub_1003DF330(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[5];
  v10[4] = a1[4];
  v11[0] = v2;
  *(v11 + 9) = *(a1 + 89);
  v3 = a1[1];
  v10[0] = *a1;
  v10[1] = v3;
  v4 = a1[3];
  v10[2] = a1[2];
  v10[3] = v4;
  v5 = a2[1];
  v12[0] = *a2;
  v12[1] = v5;
  v6 = a2[2];
  v7 = a2[3];
  *&v13[9] = *(a2 + 89);
  v8 = a2[5];
  v12[4] = a2[4];
  *v13 = v8;
  v12[2] = v6;
  v12[3] = v7;
  return sub_1003DF3A8(v10, v12);
}

BOOL sub_1003DF3A8(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (!v5)
    {
      return 0;
    }

    sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
    v6 = v5;
    v7 = v4;
    v8 = static NSObject.== infix(_:_:)();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v9 = *(a1 + 16);
  v10 = *(a2 + 16);
  if (v9)
  {
    if (!v10 || (*(a1 + 8) != *(a2 + 8) || v9 != v10) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v11 = *(a1 + 32);
  v12 = *(a2 + 32);
  if (v11)
  {
    if (!v12 || (*(a1 + 24) != *(a2 + 24) || v11 != v12) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  v13 = *(a1 + 48);
  v14 = *(a2 + 48);
  if (v13)
  {
    if (!v14 || (*(a1 + 40) != *(a2 + 40) || v13 != v14) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v15 = *(a1 + 64);
  v16 = *(a2 + 64);
  if (v15)
  {
    if (!v16 || (*(a1 + 56) != *(a2 + 56) || v15 != v16) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v17 = *(a1 + 80);
  v18 = *(a2 + 80);
  if (v17)
  {
    if (!v18 || (*(a1 + 72) != *(a2 + 72) || v17 != v18) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  v19 = *(a1 + 96);
  v20 = *(a2 + 96);
  if (v19)
  {
    if (!v20 || (*(a1 + 88) != *(a2 + 88) || v19 != v20) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

    return *(a1 + 104) == *(a2 + 104);
  }

  if (!v20)
  {
    return *(a1 + 104) == *(a2 + 104);
  }

  return 0;
}

void sub_1003DF5B4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 objectID];
  v5 = [a1 displayName];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = [a1 firstName];
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v13;
  }

  else
  {
    v12 = 0;
    v46 = 0;
  }

  v14 = [a1 lastName];
  if (v14)
  {
    v15 = v14;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v17;
    v44 = v16;
  }

  else
  {
    v42 = 0;
    v44 = 0;
  }

  v18 = [a1 address];
  if (v18)
  {
    v19 = v18;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  v23 = [a1 status];
  if (v23 < 6)
  {
    v24 = v23;
    v47 = v12;
    v48 = v9;
    v49 = v7;
    if (v22)
    {
      String.lowercased()();
      v25 = String._bridgeToObjectiveC()();
      v26 = [v25 hasMailto];

      v27 = String._bridgeToObjectiveC()();
      v28 = v27;
      if (v26)
      {

        v29 = [v28 rem_removingMailto];

        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        v33 = 0;
        v34 = 0;
LABEL_22:
        *a2 = v4;
        *(a2 + 8) = v49;
        *(a2 + 16) = v48;
        *(a2 + 24) = v47;
        *(a2 + 32) = v46;
        *(a2 + 40) = v45;
        *(a2 + 48) = v43;
        *(a2 + 56) = v20;
        *(a2 + 64) = v22;
        *(a2 + 72) = v30;
        *(a2 + 80) = v32;
        *(a2 + 88) = v33;
        *(a2 + 96) = v34;
        *(a2 + 104) = 0x30000020100uLL >> (8 * v24);
        return;
      }

      v35 = [v27 hasTel];

      if (v35)
      {
        v36 = String._bridgeToObjectiveC()();

        v37 = [v36 rem_removingTel];

        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v38;

LABEL_21:
        v30 = 0;
        v32 = 0;
        goto LABEL_22;
      }
    }

    v33 = 0;
    v34 = 0;
    goto LABEL_21;
  }

  if (qword_100767248 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  sub_100003E30(v39, qword_1007819E0);
  v40 = sub_100008E04(_swiftEmptyArrayStorage);
  v41 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("unknown sharee status", 21, 2uLL, v40, v41);
  __break(1u);
}

double sub_1003DF908@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = [a1 sharedOwnerID];
  v4 = [a1 sharedOwnerName];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = [a1 sharedOwnerAddress];
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    String.lowercased()();
    v14 = String._bridgeToObjectiveC()();
    v15 = [v14 hasMailto];

    v16 = String._bridgeToObjectiveC()();
    v17 = v16;
    if (v15)
    {

      v18 = [v17 rem_removingMailto];

      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22 = 0;
      v23 = 0;
    }

    else
    {
      v24 = [v16 hasTel];

      if (v24)
      {
        v25 = String._bridgeToObjectiveC()();

        v26 = [v25 rem_removingTel];

        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v27;
      }

      else
      {

        v22 = 0;
        v23 = 0;
      }

      v19 = 0;
      v21 = 0;
    }
  }

  else
  {

    v22 = 0;
    v23 = 0;
    v19 = 0;
    v21 = 0;
    v11 = 0;
    v13 = 0;
  }

  *a2 = v29;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8;
  result = 0.0;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = v11;
  *(a2 + 64) = v13;
  *(a2 + 72) = v19;
  *(a2 + 80) = v21;
  *(a2 + 88) = v22;
  *(a2 + 96) = v23;
  *(a2 + 104) = 4;
  return result;
}

char *sub_1003DFB40(void *a1)
{
  v1 = a1;
  v2 = [a1 shareeContext];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 sharees];

    sub_100003540(0, &qword_10076BC70, REMSharee_ptr);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v5 >> 62))
    {
      goto LABEL_3;
    }

LABEL_14:
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_15:

    v7 = _swiftEmptyArrayStorage;
    goto LABEL_16;
  }

  v5 = _swiftEmptyArrayStorage;
  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_14;
  }

LABEL_3:
  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_15;
  }

LABEL_4:
  *&v29[0] = _swiftEmptyArrayStorage;
  v7 = v29;
  sub_1004A21D8(0, v6 & ~(v6 >> 63), 0);
  if (v6 < 0)
  {
    __break(1u);
LABEL_24:
    v7 = sub_100547808(0, *(v7 + 2) + 1, 1, v7);
    goto LABEL_19;
  }

  v8 = 0;
  v7 = *&v29[0];
  do
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v9 = *(v5 + 8 * v8 + 32);
    }

    sub_1003DF5B4(v9, v27);
    *&v29[0] = v7;
    v11 = *(v7 + 2);
    v10 = *(v7 + 3);
    if (v11 >= v10 >> 1)
    {
      sub_1004A21D8((v10 > 1), v11 + 1, 1);
      v7 = *&v29[0];
    }

    ++v8;
    *(v7 + 2) = v11 + 1;
    v12 = &v7[112 * v11];
    v13 = v27[0];
    v14 = v27[2];
    *(v12 + 3) = v27[1];
    *(v12 + 4) = v14;
    *(v12 + 2) = v13;
    v15 = v27[3];
    v16 = v27[4];
    v17 = v28[0];
    *(v12 + 121) = *(v28 + 9);
    *(v12 + 6) = v16;
    *(v12 + 7) = v17;
    *(v12 + 5) = v15;
  }

  while (v6 != v8);

LABEL_16:
  if ([v1 isOwnedByMe])
  {

    return v7;
  }

  v1 = v1;
  sub_1003DF908(v1, v29);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_19:
  v19 = *(v7 + 2);
  v18 = *(v7 + 3);
  if (v19 >= v18 >> 1)
  {
    v7 = sub_100547808((v18 > 1), v19 + 1, 1, v7);
  }

  *(v7 + 2) = v19 + 1;
  v20 = &v7[112 * v19];
  v21 = v29[0];
  v22 = v29[2];
  *(v20 + 3) = v29[1];
  *(v20 + 4) = v22;
  *(v20 + 2) = v21;
  v23 = v29[3];
  v24 = v29[4];
  v25 = v30[0];
  *(v20 + 121) = *(v30 + 9);
  *(v20 + 6) = v24;
  *(v20 + 7) = v25;
  *(v20 + 5) = v23;
  return v7;
}

double destroy for TTRListSharingViewModel.Participant(id *a1)
{

  return result;
}

uint64_t initializeWithCopy for TTRListSharingViewModel.Participant(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;
  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;
  v7 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v7;
  v8 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v8;
  v9 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v9;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  v10 = v3;

  return a1;
}

uint64_t assignWithCopy for TTRListSharingViewModel.Participant(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  return a1;
}

__n128 initializeWithTake for TTRListSharingViewModel.Participant(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t assignWithTake for TTRListSharingViewModel.Participant(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v5;

  v6 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v6;

  v7 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v7;

  v8 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v8;

  v9 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v9;

  v10 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v10;

  *(a1 + 104) = *(a2 + 104);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRListSharingViewModel.Participant(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 105))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for TTRListSharingViewModel.Participant(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1003E01B4()
{
  result = qword_1007819F8;
  if (!qword_1007819F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007819F8);
  }

  return result;
}

uint64_t sub_1003E0208(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (a2)
  {
    return a2(a1);
  }

  return a1;
}

void sub_1003E0238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_allocWithZone(REMSaveRequest) initWithStore:*(v4 + 16)];
  static TTRDebugExampleInserts.makeSomeExampleInsertsToCloudKitAccount(saveRequest:lists:reminders:)();
  sub_1000A96A0();
  v8 = static OS_dispatch_queue.main.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v11[4] = sub_1003E03A0;
  v11[5] = v9;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100009DE4;
  v11[3] = &unk_100725B28;
  v10 = _Block_copy(v11);
  sub_10003BE34(a3, a4);

  [v7 saveWithQueue:v8 completion:v10];
  _Block_release(v10);
}

uint64_t sub_1003E03A0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

void *sub_1003E03D0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v17 = _swiftEmptyArrayStorage;
  result = sub_1004A1D74(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v17 = v3;
        v8 = v3[2];
        v7 = v3[3];
        if (v8 >= v7 >> 1)
        {
          sub_1004A1D74((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = type metadata accessor for TTRIRemindersListDragReminder();
        v16 = &off_10072B5C0;
        *&v14 = v6;
        v3[2] = v8 + 1;
        sub_100005FD0(&v14, &v3[5 * v8 + 4]);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v11 = v3[2];
        v12 = v3[3];
        v13 = v10;
        if (v11 >= v12 >> 1)
        {
          sub_1004A1D74((v12 > 1), v11 + 1, 1);
          v3 = v17;
        }

        v15 = type metadata accessor for TTRIRemindersListDragReminder();
        v16 = &off_10072B5C0;
        *&v14 = v13;
        v3[2] = v11 + 1;
        sub_100005FD0(&v14, &v3[5 * v11 + 4]);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_1003E0588(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1004A1E3C(0, v1, 0);
    v3 = a1 + 40;
    do
    {
      v4 = *(v3 - 8);
      sub_100058000(&qword_100781C90, &qword_100641D60);
      sub_100058000(&qword_100781C98, &qword_10063D8B0);
      swift_dynamicCast();
      v6 = _swiftEmptyArrayStorage[2];
      v5 = _swiftEmptyArrayStorage[3];
      if (v6 >= v5 >> 1)
      {
        sub_1004A1E3C((v5 > 1), v6 + 1, 1);
      }

      v3 += 16;
      _swiftEmptyArrayStorage[2] = v6 + 1;
      v7 = &_swiftEmptyArrayStorage[2 * v6];
      v7[4] = v9;
      v7[5] = v10;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_1003E06B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1004A2134(0, v1, 0);
    v3 = a1 + 32;
    do
    {

      sub_100058000(&qword_100781CA0, &qword_10063D8B8);
      sub_100058000(&unk_10076BCD0, &qword_1006393C0);
      swift_dynamicCast();
      v5 = _swiftEmptyArrayStorage[2];
      v4 = _swiftEmptyArrayStorage[3];
      if (v5 >= v4 >> 1)
      {
        sub_1004A2134((v4 > 1), v5 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v5 + 1;
      _swiftEmptyArrayStorage[v5 + 4] = v7;
      v3 += 8;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_1003E07FC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  result = sub_1004A23A8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = 0;
      do
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v7 = _swiftEmptyArrayStorage[2];
        v6 = _swiftEmptyArrayStorage[3];
        if (v7 >= v6 >> 1)
        {
          sub_1004A23A8((v6 > 1), v7 + 1, 1);
        }

        ++v4;
        v8 = sub_10000E188(&qword_100777BD0, &qword_100776900, &unk_1006377A0, &protocol conformance descriptor for TTRITableCell<A>);
        _swiftEmptyArrayStorage[2] = v7 + 1;
        v9 = &_swiftEmptyArrayStorage[2 * v7];
        v9[4] = v5;
        v9[5] = v8;
      }

      while (v2 != v4);
    }

    else
    {
      v10 = (a1 + 32);
      v11 = _swiftEmptyArrayStorage[2];
      v12 = 2 * v11;
      do
      {
        v13 = *v10;
        v14 = _swiftEmptyArrayStorage[3];

        if (v11 >= v14 >> 1)
        {
          sub_1004A23A8((v14 > 1), v11 + 1, 1);
        }

        v15 = sub_10000E188(&qword_100777BD0, &qword_100776900, &unk_1006377A0, &protocol conformance descriptor for TTRITableCell<A>);
        _swiftEmptyArrayStorage[2] = v11 + 1;
        v16 = &_swiftEmptyArrayStorage[v12];
        v16[4] = v13;
        v16[5] = v15;
        v12 += 2;
        ++v10;
        ++v11;
        --v2;
      }

      while (v2);
    }

    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

void *sub_1003E09F0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  result = sub_1004A2368(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = 0;
      do
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v7 = _swiftEmptyArrayStorage[2];
        v6 = _swiftEmptyArrayStorage[3];
        if (v7 >= v6 >> 1)
        {
          v9 = v5;
          sub_1004A2368((v6 > 1), v7 + 1, 1);
          v5 = v9;
        }

        ++v4;
        _swiftEmptyArrayStorage[2] = v7 + 1;
        v8 = &_swiftEmptyArrayStorage[2 * v7];
        v8[4] = v5;
        v8[5] = &protocol witness table for TTRITableSection;
      }

      while (v2 != v4);
    }

    else
    {
      v10 = (a1 + 32);
      v11 = _swiftEmptyArrayStorage[2];
      v12 = 2 * v11;
      do
      {
        v13 = *v10;
        v14 = _swiftEmptyArrayStorage[3];

        if (v11 >= v14 >> 1)
        {
          sub_1004A2368((v14 > 1), v11 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v11 + 1;
        v15 = &_swiftEmptyArrayStorage[v12];
        v15[4] = v13;
        v15[5] = &protocol witness table for TTRITableSection;
        v12 += 2;
        ++v10;
        ++v11;
        --v2;
      }

      while (v2);
    }

    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

char *sub_1003E0B88(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_10002AFF4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_100003540(0, &qword_10076BA60, UIAction_ptr);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_10002AFF4((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_100007DD8(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_100003540(0, &qword_10076BA60, UIAction_ptr);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_10002AFF4((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_100007DD8(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_1003E0D84(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_10002AFF4(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_10002AFF4((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_100007DD8(&v8, &v2[4 * v6 + 4]);
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_1003E0E84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1004A2550(0, v1, 0);
    v3 = a1 + 48;
    do
    {

      sub_100058000(&qword_100781C20, &qword_10063D7F0);
      sub_100058000(&qword_100781C28, &qword_10063D7F8);
      swift_dynamicCast();
      v5 = _swiftEmptyArrayStorage[2];
      v4 = _swiftEmptyArrayStorage[3];
      if (v5 >= v4 >> 1)
      {
        sub_1004A2550((v4 > 1), v5 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v5 + 1;
      v6 = &_swiftEmptyArrayStorage[3 * v5];
      v6[4] = v8;
      v6[5] = v9;
      *(v6 + 48) = v10;
      v3 += 24;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1003E0FBC()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100781AA0);
  v1 = sub_100003E30(v0, qword_100781AA0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003E1084@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v59 = a1;
  v3 = sub_100058000(&qword_10076D038, &qword_100630CE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v53 - v4;
  v6 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterHashtags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v53 = (&v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v54 = &v53 - v10;
  v11 = type metadata accessor for REMHashtagLabelSpecifier();
  v57 = *(v11 - 8);
  v58 = v11;
  __chkstk_darwin(v11);
  v56 = (&v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for REMHashtagLabelCollection();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v1[13];
  v17 = v1[14];
  sub_10000C36C(v1 + 10, v18);
  (*(v17 + 16))(v18, v17);
  v55 = REMHashtagLabelCollection.labels.getter();
  (*(v14 + 8))(v16, v13);
  v19 = v1[13];
  v20 = v1[14];
  sub_10000C36C(v2 + 10, v2[13]);
  v21 = (*(v20 + 8))(v19, v20);
  if (!v21)
  {
    (*(v7 + 56))(v5, 1, 1, v6);
    goto LABEL_7;
  }

  v22 = v21;
  REMCustomSmartListFilterDescriptor.hashtags.getter();

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
LABEL_7:
    sub_1000079B4(v5, &qword_10076D038, &qword_100630CE0);
    v34 = v56;
    static REMHashtagLabelSpecifier.empty.getter();
    v40 = 0;
    goto LABEL_8;
  }

  v23 = v6;
  v24 = v54;
  (*(v7 + 32))(v54, v5, v23);
  v25 = v53;
  (*(v7 + 16))(v53, v24, v23);
  v26 = (*(v7 + 88))(v25, v23);
  if (v26 != enum case for REMCustomSmartListFilterDescriptor.FilterHashtags.hashtags(_:))
  {
    if (v26 != enum case for REMCustomSmartListFilterDescriptor.FilterHashtags.untagged(_:))
    {
      v52 = v23;
      v39 = v57;
      v38 = v58;
      v34 = v56;
      if (v26 == enum case for REMCustomSmartListFilterDescriptor.FilterHashtags.any(_:))
      {
        (*(v7 + 8))(v24, v52);
        (*(v39 + 104))(v34, enum case for REMHashtagLabelSpecifier.allLabels(_:), v38);
        v40 = 1;
        goto LABEL_9;
      }

      goto LABEL_17;
    }

    v34 = v56;
    static REMHashtagLabelSpecifier.empty.getter();
    (*(v7 + 8))(v24, v23);
    v40 = 4;
LABEL_8:
    v39 = v57;
    v38 = v58;
    goto LABEL_9;
  }

  (*(v7 + 96))(v25, v23);
  v28 = *v25;
  v27 = v25[1];
  v29 = *(sub_100058000(&qword_100781C18, &unk_10063D7C8) + 64);
  v30 = type metadata accessor for REMCustomSmartListFilterDescriptor.Operation();
  v31 = (*(*(v30 - 8) + 88))(v25 + v29, v30);
  if (v31 == enum case for REMCustomSmartListFilterDescriptor.Operation.and(_:))
  {
    v32 = *(sub_100058000(&qword_10076B830, &qword_100630550) + 64);
    v33 = sub_1004B61FC(v28);

    v34 = v56;
    *v56 = v33;
    v35 = sub_1004B61FC(v27);

    (*(v7 + 8))(v24, v23);
    v34[1] = v35;
    v36 = enum case for REMHashtagLabelSpecifier.Operation.and(_:);
    v37 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
    (*(*(v37 - 8) + 104))(v34 + v32, v36, v37);
    v39 = v57;
    v38 = v58;
    (*(v57 + 104))(v34, enum case for REMHashtagLabelSpecifier.labels(_:), v58);
    v40 = 3;
LABEL_9:
    v41 = *(v2 + OBJC_IVAR____TtC9Reminders34TTRISmartListFilterEditorPresenter_showsAllHashtagLabels);
    v42 = OBJC_IVAR____TtC9Reminders34TTRISmartListFilterEditorPresenter_hashtagLabelsLayoutResult;
    swift_beginAccess();
    v43 = type metadata accessor for TTRISmartListFilterEditorHashtagsViewModel(0);
    v44 = v2 + v42;
    v45 = v59;
    sub_10000794C(v44, v59 + v43[8], &qword_100776A98, &qword_100636ED0);
    *v45 = v55;
    result = (*(v39 + 32))(v45 + v43[5], v34, v38);
    *(v45 + v43[6]) = v40;
    *(v45 + v43[7]) = v41;
    return result;
  }

  if (v31 == enum case for REMCustomSmartListFilterDescriptor.Operation.or(_:))
  {
    v47 = *(sub_100058000(&qword_10076B830, &qword_100630550) + 64);
    v48 = sub_1004B61FC(v28);

    v34 = v56;
    *v56 = v48;
    v49 = sub_1004B61FC(v27);

    (*(v7 + 8))(v24, v23);
    v34[1] = v49;
    v50 = enum case for REMHashtagLabelSpecifier.Operation.or(_:);
    v51 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
    (*(*(v51 - 8) + 104))(v34 + v47, v50, v51);
    v39 = v57;
    v38 = v58;
    (*(v57 + 104))(v34, enum case for REMHashtagLabelSpecifier.labels(_:), v58);
    v40 = 2;
    goto LABEL_9;
  }

  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
LABEL_17:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void sub_1003E17E0()
{
  v1 = v0;
  v2 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(v0 + 104);
  v6 = *(v0 + 112);
  sub_10000C36C((v0 + 80), v5);
  v7 = (*(v6 + 8))(v5, v6);
  if (v7)
  {
    v8 = v7;
    if (REMCustomSmartListFilterDescriptor.requiresSydneyRomeKincaid.getter())
    {
      v9 = type metadata accessor for TaskPriority();
      (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
      type metadata accessor for MainActor();

      v10 = static MainActor.shared.getter();
      v11 = swift_allocObject();
      v11[2] = v10;
      v11[3] = &protocol witness table for MainActor;
      v11[4] = v1;
      sub_10009E31C(0, 0, v4, &unk_10063D7C0, v11);

      return;
    }
  }

  if (*(v0 + 64) == 1)
  {
    *(v0 + 64) = 0;
    v12._object = 0x8000000100670CE0;
    v12._countAndFlagsBits = 0xD000000000000011;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v12);
  }
}

uint64_t sub_1003E1994(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100058000(&qword_10076D020, &qword_100633180);
  __chkstk_darwin(v4 - 8);
  v6 = &v45 - v5;
  v7 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterLocation();
  v48 = *(v7 - 8);
  v49 = v7;
  __chkstk_darwin(v7);
  v9 = (&v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v46 = &v45 - v11;
  v12 = sub_100058000(&qword_100775720, &unk_100635D90);
  __chkstk_darwin(v12 - 8);
  v47 = &v45 - v13;
  v14 = sub_100058000(&qword_100776AB0, &unk_100641180);
  __chkstk_darwin(v14 - 8);
  v16 = &v45 - v15;
  v17 = a1 + *(type metadata accessor for TTRSmartListFilterEditorViewModel(0) + 32);
  sub_10000794C(v17, v16, &qword_100776AB0, &unk_100641180);
  v18 = type metadata accessor for TTRSmartListFilterEditorViewModel.LocationData(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  v21 = v18;
  v22 = v20;
  v50 = v19 + 48;
  LODWORD(a1) = (v20)(v16, 1);
  result = sub_1000079B4(v16, &qword_100776AB0, &unk_100641180);
  if (a1 != 1 || *(v2 + 288) == 1)
  {
    if (!v22(v17, 1, v21))
    {
      swift_getObjectType();
      *(v17 + 40) = dispatch thunk of TTRLocationQuickPicksInteractorType.quickPickItems.getter();
    }

    v24 = *(v2 + 104);
    v25 = *(v2 + 112);
    sub_10000C36C((v2 + 80), v24);
    v26 = (*(v25 + 8))(v24, v25);
    if (v26)
    {
      v27 = v26;
      REMCustomSmartListFilterDescriptor.location.getter();

      v29 = v48;
      v28 = v49;
      if ((*(v48 + 48))(v6, 1, v49) != 1)
      {
        v30 = v46;
        (*(v29 + 32))(v46, v6, v28);
        (*(v29 + 16))(v9, v30, v28);
        v31 = (*(v29 + 88))(v9, v28);
        if (v31 == enum case for REMCustomSmartListFilterDescriptor.FilterLocation.vehicle(_:))
        {
          (*(v29 + 8))(v30, v28);
          (*(v29 + 96))(v9, v28);
          if (*v9 == 2)
          {
            v43 = enum case for TTRLocationQuickPickItem.gettingOutOfCar(_:);
            v34 = type metadata accessor for TTRLocationQuickPickItem();
            v35 = *(v34 - 8);
            v32 = v47;
            (*(v35 + 104))(v47, v43, v34);
            goto LABEL_23;
          }

          v32 = v47;
          if (*v9 == 1)
          {
            v33 = enum case for TTRLocationQuickPickItem.gettingInCar(_:);
            v34 = type metadata accessor for TTRLocationQuickPickItem();
            v35 = *(v34 - 8);
            (*(v35 + 104))(v32, v33, v34);
LABEL_23:
            (*(v35 + 56))(v32, 0, 1, v34);
            goto LABEL_14;
          }

LABEL_26:
          v44 = type metadata accessor for TTRLocationQuickPickItem();
          (*(*(v44 - 8) + 56))(v32, 1, 1, v44);
LABEL_14:
          if (v22(v17, 1, v21))
          {
            return sub_1000079B4(v32, &qword_100775720, &unk_100635D90);
          }

          else
          {
            return sub_10000D184(v32, v17 + *(v21 + 24), &qword_100775720, &unk_100635D90);
          }
        }

        if (v31 == enum case for REMCustomSmartListFilterDescriptor.FilterLocation.location(_:))
        {
          (*(v29 + 96))(v9, v28);
          v37 = v9[2];
          v38 = v9[3];
          v39 = v9[4];
          sub_100003540(0, &qword_100781C88, REMStructuredLocation_ptr);
          v40 = objc_allocWithZone(CLCircularRegion);
          v41 = String._bridgeToObjectiveC()();
          [v40 initWithCenter:v41 radius:v37 identifier:{v38, v39}];

          v42 = REMStructuredLocation.init(title:circularRegion:placemark:)();
          swift_getObjectType();
          v32 = v47;
          dispatch thunk of TTRLocationQuickPicksInteractorType.quickPickItems(matching:)();

          (*(v48 + 8))(v46, v49);
          goto LABEL_14;
        }

        if (v31 != enum case for REMCustomSmartListFilterDescriptor.FilterLocation.any(_:))
        {
          v32 = v47;
          if (v31 != enum case for REMCustomSmartListFilterDescriptor.FilterLocation.noLocation(_:))
          {
            result = _diagnoseUnexpectedEnumCase<A>(type:)();
            __break(1u);
            return result;
          }

          (*(v29 + 8))(v46, v28);
          goto LABEL_26;
        }

        (*(v29 + 8))(v30, v28);
LABEL_13:
        v36 = type metadata accessor for TTRLocationQuickPickItem();
        v32 = v47;
        (*(*(v36 - 8) + 56))(v47, 1, 1, v36);
        goto LABEL_14;
      }
    }

    else
    {
      (*(v48 + 56))(v6, 1, 1, v49);
    }

    sub_1000079B4(v6, &qword_10076D020, &qword_100633180);
    goto LABEL_13;
  }

  return result;
}

void sub_1003E20F8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100058000(&qword_100776AA0, &qword_100636ED8);
  __chkstk_darwin(v4 - 8);
  v6 = (&v32 - v5);
  v7 = sub_100058000(&qword_100781C80, &unk_10063D8A0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v32 - v9);
  v11 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData(0);
  __chkstk_darwin(v11);
  v13 = (&v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for TTRSmartListFilterEditorViewModel(0);
  sub_1003EFF40(a1 + *(v14 + 44), v13, type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v34 = a1;
    v15 = *v13;
    v16 = sub_100058000(&qword_100776AA8, &unk_100636EE0);
    sub_1000079B4(v13 + *(v16 + 48), &qword_100776AA0, &qword_100636ED8);
    v17 = v2[13];
    v18 = v2[14];
    sub_10000C36C(v2 + 10, v17);
    (*(v18 + 40))(v15, v17, v18);
    v19 = (*(v8 + 88))(v10, v7);
    if (v19 == enum case for REMAsyncOperationState.running<A>(_:))
    {
      (*(v8 + 96))(v10, v7);
      swift_allocObject();
      swift_weakInit();
      v20 = zalgo.getter();
      sub_100058000(&qword_10076B288, &unk_100635D40);
      dispatch thunk of Promise.then<A>(on:closure:)();
    }

    else if (v19 == enum case for REMAsyncOperationState.succeeded<A>(_:))
    {
      (*(v8 + 96))(v10, v7);
      v21 = *v10;
      v22 = [*v10 displayName];
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v24;
      v33 = v23;

      type metadata accessor for TTRListColors();
      v25 = sub_100003540(0, &qword_10076ABC0, REMList_ptr);
      v36 = v25;
      v37 = &protocol witness table for REMList;
      v35[0] = v21;
      v26 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListData(0);
      v27 = v21;
      static TTRListColors.color(for:)();
      sub_1000079B4(v35, &unk_100775680, &qword_10062E3B0);
      v28 = *(v26 + 24);
      v36 = v25;
      v37 = &protocol witness table for REMList;
      v35[0] = v27;
      v29 = v27;
      TTRReminderDetailViewModel.BadgeViewModel.init(listProtocol:)();
      v30 = type metadata accessor for TTRReminderDetailViewModel.BadgeViewModel();
      (*(*(v30 - 8) + 56))(v6 + v28, 0, 1, v30);
      v31 = v32;
      *v6 = v33;
      v6[1] = v31;
      (*(*(v26 - 8) + 56))(v6, 0, 1, v26);
      TTRSmartListFilterEditorViewModel.ListsData.listData.setter(v6);
    }

    else if (v19 == enum case for REMAsyncOperationState.failed<A>(_:))
    {

      (*(v8 + 8))(v10, v7);
    }

    else
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }
  }
}

void sub_1003E25B0(char a1)
{
  v2 = type metadata accessor for REMCustomSmartListFilterDescriptor.Operation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v25 = &v24 - v7;
  if (qword_100767250 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003E30(v8, qword_100781AA0);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 28532;
  *(inited + 40) = 0xE200000000000000;
  LOBYTE(aBlock[0]) = a1 & 1;
  if (a1)
  {
    v10 = &enum case for REMCustomSmartListFilterDescriptor.Operation.and(_:);
  }

  else
  {
    v10 = &enum case for REMCustomSmartListFilterDescriptor.Operation.or(_:);
  }

  v11 = String.init<A>(describing:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v11;
  *(inited + 56) = v12;
  v13 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
  sub_10000FD44("Request filter inclusion operation change {to: %@}", 50, 2, v13);

  v14 = v25;
  (*(v3 + 104))(v25, *v10, v2);
  v24 = objc_opt_self();
  v15._countAndFlagsBits = 0xD00000000000002ELL;
  v15._object = 0x80000001006852C0;
  v16._object = 0x80000001006852F0;
  v17._countAndFlagsBits = 0xD000000000000042;
  v17._object = 0x8000000100685310;
  v16._countAndFlagsBits = 0xD000000000000016;
  TTRLocalizedString(_:value:comment:)(v15, v16, v17);
  v18 = String._bridgeToObjectiveC()();

  (*(v3 + 16))(v5, v14, v2);
  v19 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v26;
  (*(v3 + 32))(v20 + v19, v5, v2);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1003F061C;
  *(v21 + 24) = v20;
  aBlock[4] = sub_100068444;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026440;
  aBlock[3] = &unk_100726458;
  v22 = _Block_copy(aBlock);

  [v24 withActionName:v18 block:v22];
  _Block_release(v22);

  (*(v3 + 8))(v14, v2);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void sub_1003E29D0(unsigned __int8 a1, __n128 a2)
{
  v76 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v72 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v73 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_100058000(&qword_100781C48, &unk_10063D810);
  __chkstk_darwin(v69);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v67 - v9;
  v11 = type metadata accessor for Date();
  v68 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v67 - v15;
  v17 = sub_100058000(&qword_10076D030, &unk_100633170);
  v79 = *(v17 - 8);
  __chkstk_darwin(v17 - 8);
  v80 = v18;
  v81 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v82 = &v67 - v20;
  if (qword_100767250 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100003E30(v21, qword_100781AA0);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 28532;
  *(inited + 40) = 0xE200000000000000;
  LOBYTE(aBlock[0]) = a1;
  v23 = String.init<A>(describing:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v23;
  *(inited + 56) = v24;
  v25 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
  sub_10000FD44("Request date filter change {to: %@}", 35, 2, v25);

  if (a1 > 3u)
  {
    if (a1 <= 5u)
    {
      v28 = v82;
      Date.init()();
      if (a1 == 4)
      {
        v37 = &enum case for REMCustomSmartListFilterDescriptor.FilterDate.beforeDate(_:);
      }

      else
      {
        v37 = &enum case for REMCustomSmartListFilterDescriptor.FilterDate.afterDate(_:);
      }

      v57 = *v37;
      v46 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate();
      v47 = *(v46 - 8);
      (*(v47 + 104))(v28, v57, v46);
    }

    else
    {
      if (a1 != 6)
      {
        if (a1 == 7)
        {
          (*(v70 + 104))(v72, enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction.inNext(_:), v71);
          (*(v75 + 104))(v74, enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units.day(_:), v76);
          v26 = v73;
          REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.init(direction:magnitude:units:includePastDue:)();
          v27 = v77;
          v28 = v82;
          v29 = v78;
          (*(v77 + 16))(v82, v26, v78);
          v30 = enum case for REMCustomSmartListFilterDescriptor.FilterDate.relativeRange(_:);
          v31 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate();
          v32 = *(v31 - 8);
          (*(v32 + 104))(v28, v30, v31);
          (*(v32 + 56))(v28, 0, 1, v31);
          (*(v27 + 8))(v26, v29);
          v33 = v83;
          *(v83 + 56) = 4;
        }

        else
        {
          v54 = enum case for REMCustomSmartListFilterDescriptor.FilterDate.noDate(_:);
          v55 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate();
          v56 = *(v55 - 8);
          v28 = v82;
          (*(v56 + 104))(v82, v54, v55);
          (*(v56 + 56))(v28, 0, 1, v55);
          v33 = v83;
        }

        goto LABEL_24;
      }

      Date.init()();
      Date.init()();
      sub_1003EFDC4(&qword_100781C50, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      if ((dispatch thunk of static Comparable.<= infix(_:_:)() & 1) == 0)
      {
        goto LABEL_27;
      }

      v38 = v68;
      v39 = *(v68 + 32);
      v39(v10, v16, v11);
      v40 = v69;
      v39(&v10[*(v69 + 48)], v13, v11);
      sub_10000794C(v10, v7, &qword_100781C48, &unk_10063D810);
      v41 = *(v40 + 48);
      v28 = v82;
      v39(v82, v7, v11);
      v42 = *(v38 + 8);
      v42(&v7[v41], v11);
      sub_100016588(v10, v7, &qword_100781C48, &unk_10063D810);
      v43 = *(v40 + 48);
      v44 = sub_100058000(&qword_100781C58, &unk_10063D820);
      v39((v28 + *(v44 + 36)), &v7[v43], v11);
      v42(v7, v11);
      v45 = enum case for REMCustomSmartListFilterDescriptor.FilterDate.dateRange(_:);
      v46 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate();
      v47 = *(v46 - 8);
      (*(v47 + 104))(v28, v45, v46);
    }

    (*(v47 + 56))(v28, 0, 1, v46);
    v33 = v83;
    *(v83 + 56) = 1;
LABEL_24:
    v34 = v81;
    goto LABEL_25;
  }

  v28 = v82;
  v33 = v83;
  v34 = v81;
  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      Date.init()();
      v51 = enum case for REMCustomSmartListFilterDescriptor.FilterDate.onDate(_:);
      v52 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate();
      v53 = *(v52 - 8);
      (*(v53 + 104))(v28, v51, v52);
      (*(v53 + 56))(v28, 0, 1, v52);
      *(v33 + 56) = 1;
      goto LABEL_25;
    }

    *v82 = 0;
    v36 = &enum case for REMCustomSmartListFilterDescriptor.FilterDate.today(_:);
    goto LABEL_18;
  }

  if (a1)
  {
    v36 = &enum case for REMCustomSmartListFilterDescriptor.FilterDate.any(_:);
LABEL_18:
    v48 = *v36;
    v49 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate();
    v50 = *(v49 - 8);
    (*(v50 + 104))(v28, v48, v49);
    (*(v50 + 56))(v28, 0, 1, v49);
    goto LABEL_25;
  }

  v35 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate();
  (*(*(v35 - 8) + 56))(v28, 1, 1, v35);
LABEL_25:
  v58 = objc_opt_self();
  v59._countAndFlagsBits = 0xD000000000000023;
  v59._object = 0x8000000100684E30;
  v60._object = 0x8000000100684E60;
  v61._countAndFlagsBits = 0xD000000000000037;
  v61._object = 0x8000000100684E80;
  v60._countAndFlagsBits = 0xD000000000000012;
  TTRLocalizedString(_:value:comment:)(v59, v60, v61);
  v62 = String._bridgeToObjectiveC()();

  sub_10000794C(v28, v34, &qword_10076D030, &unk_100633170);
  v63 = (*(v79 + 80) + 24) & ~*(v79 + 80);
  v64 = swift_allocObject();
  *(v64 + 16) = v33;
  sub_100016588(v34, v64 + v63, &qword_10076D030, &unk_100633170);
  v65 = swift_allocObject();
  *(v65 + 16) = sub_1003EFE14;
  *(v65 + 24) = v64;
  aBlock[4] = sub_100068444;
  aBlock[5] = v65;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026440;
  aBlock[3] = &unk_100725F08;
  v66 = _Block_copy(aBlock);

  [v58 withActionName:v62 block:v66];
  _Block_release(v66);

  sub_1000079B4(v28, &qword_10076D030, &unk_100633170);
  LOBYTE(v58) = swift_isEscapingClosureAtFileLocation();

  if ((v58 & 1) == 0)
  {
    return;
  }

  __break(1u);
LABEL_27:
  __break(1u);
}