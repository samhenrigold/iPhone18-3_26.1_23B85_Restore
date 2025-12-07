void *sub_10001DC14(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    isa = sub_100049EB0().super.isa;
    v6 = [a1 cellForItemAtIndexPath:isa];

    if (v6)
    {
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        v7 = v6;
        v8 = sub_10004BEB0();

        return v8;
      }
    }

    return 0;
  }

  return result;
}

void sub_10001DD00()
{
  v1 = sub_100003150(&qword_100067F68, &unk_100053890);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v14 - v3;
  v5 = type metadata accessor for TTRISECreateRemindersPresentationTree(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_diffableDataSource);
  if (v10)
  {
    v11 = v10;
    sub_10004BD30();

    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_10000A138(v4, &qword_100067F68, &unk_100053890);
    }

    else
    {
      sub_10002A5CC(v4, v9, type metadata accessor for TTRISECreateRemindersPresentationTree);
      sub_1000211EC(v9[*(v5 + 40)]);
      v12 = sub_10004A140();
      if (v12)
      {
        sub_100021400(v12);
      }

      else
      {
        v13 = sub_10001CAE0();
        [v13 setEnabled:sub_10002E4B8() & 1];
      }

      sub_10002A634(v9, type metadata accessor for TTRISECreateRemindersPresentationTree);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10001DFC4()
{
  v1 = v0;
  v2 = sub_10004A4E0();
  v53 = *(v2 - 8);
  v54 = v2;
  __chkstk_darwin(v2, v3);
  v52 = &v49[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10004A460();
  v56 = *(v5 - 8);
  v57 = v5;
  __chkstk_darwin(v5, v6);
  v55 = &v49[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8, v9);
  v11 = &v49[-v10];
  v12 = sub_10004A4B0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12, v14);
  v16 = &v49[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17, v18);
  v20 = &v49[-v19];
  __chkstk_darwin(v21, v22);
  v24 = &v49[-v23];
  v25 = OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_deferredItemUpdates;
  swift_beginAccess();
  v26 = *(v13 + 16);
  v26(v24, &v1[v25], v12);
  if (sub_10004A4A0())
  {
    (*(v13 + 8))(v24, v12);
    return;
  }

  v51 = v24;
  v27 = *(v56 + 104);
  v50 = enum case for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction.none(_:);
  v27(v11);
  sub_10004A490();
  swift_beginAccess();
  (*(v13 + 24))(&v1[v25], v20, v12);
  swift_endAccess();
  v26(v16, &v1[v25], v12);
  v28 = sub_10004A4A0();
  v29 = *(v13 + 8);
  v29(v16, v12);
  v30 = v12;
  if ((v28 & 1) == 0)
  {
    v31 = [v1 viewIfLoaded];
    [v31 setNeedsLayout];
  }

  v29(v20, v12);
  v32 = v55;
  v33 = v51;
  sub_10004A470();
  v35 = v56;
  v34 = v57;
  v36 = (*(v56 + 88))(v32, v57);
  if (v36 == enum case for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction.beginEditing(_:))
  {
    goto LABEL_6;
  }

  if (v36 == enum case for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction.textChange(_:))
  {
    (*(v35 + 96))(v32, v34);
    v37 = *(sub_100003150(&qword_100068028, &qword_1000536A0) + 48);
    sub_100003674(v32, v59);
    v39 = v52;
    v38 = v53;
    v40 = v32 + v37;
    v41 = v54;
    (*(v53 + 32))(v52, v40, v54);
    v42 = sub_10004A4D0();
    sub_10000DAC4(v59, v58);
    v43 = swift_allocObject();
    *(v43 + 16) = v42;
    sub_100003674(v58, v43 + 24);
    v44 = [v1 collectionView];
    if (v44)
    {
      v45 = v44;

      sub_10004C870();

      (*(v38 + 8))(v39, v41);
      sub_10000343C(v59);
      v29(v33, v30);

      return;
    }

    __break(1u);
  }

  else
  {
    if (v36 == enum case for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction.keyboardFrameChange(_:))
    {
LABEL_6:
      v29(v33, v30);
      (*(v35 + 96))(v32, v34);
      sub_10000343C(v32);
      return;
    }

    if (v36 == v50)
    {
      v29(v33, v30);
      return;
    }
  }

  if (qword_100066F20 != -1)
  {
    swift_once();
  }

  v46 = sub_10004C1B0();
  sub_10000D49C(v46, qword_100067EA8);
  v47 = sub_100011BA4(_swiftEmptyArrayStorage);
  v48 = sub_100011BA4(_swiftEmptyArrayStorage);
  sub_100014FC0("Unknown pendingScrollAction", 27, 2, v47, v48);
  __break(1u);
}

id sub_10001E610(char a1)
{
  v2 = v1;
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "viewDidAppear:", a1 & 1);
  result = [v2 view];
  if (result)
  {
    v5 = result;
    v6 = sub_10004CA40();

    if (v6)
    {
    }

    else
    {
      [v2 becomeFirstResponder];
    }

    sub_10004A020();
    sub_10004A560();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001E728(char a1)
{
  v2 = v1;
  v5.receiver = v2;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "viewWillDisappear:", a1 & 1);
  if (*&v2[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_currentTextInputModeObserver])
  {

    sub_10004B1C0();
  }

  sub_10004C930();
  [v2 resignFirstResponder];
  sub_10004A020();
  sub_10004A580();
}

uint64_t sub_10001E828(uint64_t a1)
{
  v30 = a1;
  v1 = sub_100003150(&qword_100067D58, &unk_1000530C0);
  __chkstk_darwin(v1 - 8, v2);
  v27 = &v26 - v3;
  v4 = sub_100003150(&qword_100068160, &qword_100053798);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v26 - v6;
  v8 = sub_10004C280();
  v28 = *(v8 - 8);
  v29 = v8;
  __chkstk_darwin(v8, v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10004C1E0();
  v26 = v12;
  v13 = *(v12 - 8);
  __chkstk_darwin(v12, v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10004C3D0();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17, v19);
  v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004C3C0();
  sub_10004A320();
  sub_10004C3A0();
  sub_100049EA0();
  sub_10004C310();
  v31[3] = v17;
  v31[4] = &protocol witness table for UIListContentConfiguration;
  v22 = sub_10000B790(v31);
  (*(v18 + 16))(v22, v21, v17);
  sub_10004C990();
  sub_100003150(&qword_100067D70, &unk_1000530D0);
  sub_10004C2D0();
  *(swift_allocObject() + 16) = xmmword_1000528D0;
  (*(v13 + 104))(v16, enum case for UICellAccessory.DisplayedState.always(_:), v12);
  v23 = sub_10004C260();
  (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
  v24 = sub_10004C1F0();
  (*(*(v24 - 8) + 56))(v27, 1, 1, v24);
  sub_10004C270();
  sub_10004C220();
  (*(v28 + 8))(v11, v29);
  (*(v13 + 8))(v16, v26);
  sub_10004C9A0();
  return (*(v18 + 8))(v21, v17);
}

char *sub_10001EC9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_100003150(&qword_100067D58, &unk_1000530C0);
  __chkstk_darwin(v6 - 8, v7);
  v9 = v24 - v8;
  v10 = sub_10004C2A0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10004C1E0();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15, v17);
  v19 = v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = result;
    v24[1] = a3;
    sub_100003150(&qword_100067D70, &unk_1000530D0);
    v25 = v10;
    sub_10004C2D0();
    *(swift_allocObject() + 16) = xmmword_1000528D0;
    (*(v16 + 104))(v19, enum case for UICellAccessory.DisplayedState.always(_:), v15);
    v22 = sub_10004C1F0();
    (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
    sub_10004C290();
    sub_10004C230();
    (*(v11 + 8))(v14, v25);
    (*(v16 + 8))(v19, v15);
    sub_10004C9A0();
    *(a1 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersListPickerCell_delegate + 8) = &off_10005FDC0;
    result = swift_unknownObjectWeakAssign();
    if (*&v21[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presentationTreesCapability])
    {

      v23 = sub_10004A400();

      if (v23)
      {
        sub_10004B240();

        if (*(a1 + OBJC_IVAR____TtC25RemindersSharingExtension39TTRISECreateRemindersCollectionListCell_viewModelObserver))
        {

          sub_10004A940();
        }

LABEL_9:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

char *sub_10001F058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    if (*&result[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presentationTreesCapability])
    {

      v6 = sub_10004A400();

      if (v6)
      {
        sub_10004B240();

        sub_10004A140();
        v7 = sub_10004BC40();
        sub_10004BC10();
        v7(v10, 0);
        sub_10004A140();
        v8 = sub_10004BC40();
        sub_10004BC00();
        v8(v10, 0);
        sub_10002A4C4(&qword_100068148, type metadata accessor for TTRISECreateRemindersViewController, &unk_100053440);
        v9 = v5;
        sub_10004BC70();
        result = sub_10004BE40();
        if (result)
        {
          sub_10004A930();
        }

LABEL_9:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_10001F230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_10004A3A0();
  __chkstk_darwin(v3 - 8, v4);
  v31[1] = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004BBD0();
  v32 = *(v6 - 8);
  __chkstk_darwin(v6, v7);
  v31[0] = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v12 = v31 - v11;
  v13 = type metadata accessor for TTRISECreateRemindersItemIntermediateViewModel(0);
  __chkstk_darwin(v13 - 8, v14);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100003150(&qword_100067B78, &qword_100052E90);
  __chkstk_darwin(v17 - 8, v18);
  v20 = v31 - v19;
  v21 = sub_100003150(&unk_100067B80, qword_100052E98);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21, v23);
  v25 = v31 - v24;
  sub_10000A198(a1, v20, &qword_100067B78, &qword_100052E90);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_10000A138(v20, &qword_100067B78, &qword_100052E90);
  }

  else
  {
    (*(v22 + 32))(v25, v20, v21);
    sub_10004A3C0();
    v26 = v32;
    if ((*(v32 + 48))(v16, 1, v6) != 1)
    {
      (*(v26 + 32))(v12, v16, v6);
      sub_10004A3E0();
      (*(v26 + 16))(v31[0], v12, v6);
      sub_10002A4C4(&qword_100068158, &type metadata accessor for TTRIRemindersListItemIntermediateViewModel, &protocol conformance descriptor for TTRIRemindersListItemIntermediateViewModel);
      v28 = v33;
      sub_10004A3D0();
      (*(v26 + 8))(v12, v6);
      (*(v22 + 8))(v25, v21);
      v27 = 0;
      goto LABEL_7;
    }

    (*(v22 + 8))(v25, v21);
  }

  v27 = 1;
  v28 = v33;
LABEL_7:
  v29 = sub_100003150(&qword_100068150, &qword_100053790);
  return (*(*(v29 - 8) + 56))(v28, v27, 1, v29);
}

uint64_t sub_10001F678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v7 = (a1 + OBJC_IVAR____TtC25RemindersSharingExtension41TTRISECreateRemindersSuggestionHeaderCell_includeAllAction);
  v8 = *(a1 + OBJC_IVAR____TtC25RemindersSharingExtension41TTRISECreateRemindersSuggestionHeaderCell_includeAllAction);
  v9 = *(a1 + OBJC_IVAR____TtC25RemindersSharingExtension41TTRISECreateRemindersSuggestionHeaderCell_includeAllAction + 8);
  *v7 = sub_10002A4BC;
  v7[1] = v5;

  sub_10002A4AC(v8, v9);
}

void *sub_10001F738(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    swift_unknownObjectRetain();

    sub_100049FC0();
    return swift_unknownObjectRelease();
  }

  return result;
}

char *sub_10001F7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v41[2] = a8;
  v41[3] = a6;
  v43 = a3;
  v41[4] = a2;
  v41[5] = a1;
  v10 = sub_100003150(&qword_100067F98, &unk_100053620);
  __chkstk_darwin(v10 - 8, v11);
  v13 = v41 - v12;
  v14 = sub_10004A330();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14, v16);
  v18 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100003150(&qword_100068020, &qword_100053B30);
  __chkstk_darwin(v19 - 8, v20);
  v22 = v41 - v21;
  v23 = sub_10004A350();
  v42 = *(v23 - 8);
  __chkstk_darwin(v23, v24);
  v26 = v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = result;
    v29 = *&result[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_diffableDataSource];
    if (v29)
    {
      v30 = v29;
      sub_10004BD70();

      v31 = v42;
      if ((*(v42 + 48))(v22, 1, v23) == 1)
      {

        sub_10000A138(v22, &qword_100068020, &qword_100053B30);
        return 0;
      }

      v41[1] = a7;
      (*(v31 + 32))(v26, v22, v23);
      v32 = v31;
      sub_10004A340();
      v33 = (*(v15 + 88))(v18, v14);
      if (v33 == enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.suggestedReminder(_:))
      {
        v34 = sub_10004A380();
        v35 = *(v34 - 8);
        (*(v35 + 16))(v13, v43, v34);
        (*(v35 + 56))(v13, 0, 1, v34);
        sub_10004BC90();
        v36 = sub_10004C910();

        sub_10000A138(v13, &qword_100067F98, &unk_100053620);
        (*(v32 + 8))(v26, v23);
LABEL_9:
        (*(v15 + 8))(v18, v14);
        return v36;
      }

      if (v33 == enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.remindersListItem(_:))
      {
        v37 = sub_10004A380();
        v38 = *(v37 - 8);
        (*(v38 + 16))(v13, v43, v37);
        (*(v38 + 56))(v13, 0, 1, v37);
        sub_10004BC90();
        v36 = sub_10004C910();

        sub_10000A138(v13, &qword_100067F98, &unk_100053620);
        (*(v42 + 8))(v26, v23);
        goto LABEL_9;
      }

      if (v33 == enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.listPicker(_:))
      {
        v39 = sub_10004A380();
        v40 = *(v39 - 8);
        (*(v40 + 16))(v13, v43, v39);
        (*(v40 + 56))(v13, 0, 1, v39);
        type metadata accessor for TTRISECreateRemindersListPickerCell(0);
        v36 = sub_10004C910();

        sub_10000A138(v13, &qword_100067F98, &unk_100053620);
LABEL_17:
        (*(v42 + 8))(v26, v23);
        return v36;
      }

      if (v33 == enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.suggestionHeader(_:))
      {
        v44 = 0;
        type metadata accessor for TTRISECreateRemindersSuggestionHeaderCell();
LABEL_16:
        v36 = sub_10004C910();

        goto LABEL_17;
      }

      if (v33 == enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.suggestionLoading(_:))
      {
        v44 = 0;
        type metadata accessor for TTRISECreateRemindersSuggestionLoadingCell();
        goto LABEL_16;
      }

      if (v33 == enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.unknown(_:))
      {
        (*(v42 + 8))(v26, v23);

        return 0;
      }
    }

    else
    {
      __break(1u);
    }

    result = sub_10004CDC0();
    __break(1u);
  }

  return result;
}

uint64_t sub_10001FE68()
{
  v0 = sub_10004C3D0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v8[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004C9B0();
  v9._object = 0x800000010004F050;
  v10._countAndFlagsBits = 0xD00000000000005BLL;
  v10._object = 0x800000010004F0B0;
  v9._countAndFlagsBits = 0xD000000000000056;
  sub_10004A790(v9, v10);
  sub_10004C3A0();
  v8[3] = v0;
  v8[4] = &protocol witness table for UIListContentConfiguration;
  v5 = sub_10000B790(v8);
  (*(v1 + 16))(v5, v4, v0);
  sub_10004C990();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_10001FFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = (a1 + OBJC_IVAR____TtC25RemindersSharingExtension41TTRISECreateRemindersSuggestionFooterCell_feedbackButtonHandler);
  v8 = *(a1 + OBJC_IVAR____TtC25RemindersSharingExtension41TTRISECreateRemindersSuggestionFooterCell_feedbackButtonHandler);
  v9 = *(a1 + OBJC_IVAR____TtC25RemindersSharingExtension41TTRISECreateRemindersSuggestionFooterCell_feedbackButtonHandler + 8);
  *v7 = sub_10002A4A4;
  v7[1] = v6;

  sub_10002A4AC(v8, v9);
}

char *sub_100020058(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *&result[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presenter];
    v3 = result;
    swift_unknownObjectRetain();

    if (qword_100066F40 != -1)
    {
      swift_once();
    }

    v4 = sub_10004C1B0();
    sub_10000D49C(v4, qword_1000685E0);
    v5 = sub_100011BA4(_swiftEmptyArrayStorage);
    sub_100014D1C("Create Reminders Show Suggested Reminders Feedback", 50, 2, v5);

    sub_1000032DC((v2 + 64), *(v2 + 88));
    sub_10002CAC0();
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100020158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v38[3] = a6;
  v39 = a2;
  v40 = a3;
  v41 = a4;
  v9 = sub_100003150(&qword_100067F98, &unk_100053620);
  __chkstk_darwin(v9 - 8, v10);
  v12 = v38 - v11;
  v13 = sub_100003150(&qword_100068140, &qword_100053788);
  __chkstk_darwin(v13 - 8, v14);
  v16 = v38 - v15;
  v17 = sub_10004A390();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17, v19);
  v21 = v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v23);
  v25 = v38 - v24;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    v38[1] = a7;
    v38[2] = a1;
    v28 = *(Strong + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_diffableDataSource);
    if (v28)
    {
      v29 = v28;
      sub_100049EE0();
      sub_10004C410();

      v30 = sub_10004A380();
      v31 = *(v30 - 8);
      if ((*(v31 + 48))(v12, 1, v30) == 1)
      {

        sub_10000A138(v12, &qword_100067F98, &unk_100053620);
        (*(v18 + 56))(v16, 1, 1, v17);
LABEL_7:
        sub_10000A138(v16, &qword_100068140, &qword_100053788);
        return;
      }

      sub_10004A370();
      (*(v31 + 8))(v12, v30);
      if ((*(v18 + 48))(v16, 1, v17) == 1)
      {

        goto LABEL_7;
      }

      (*(v18 + 32))(v25, v16, v17);
      if (sub_10004C690() == v39 && v32 == v40)
      {
      }

      else
      {
        v33 = sub_10004CDD0();

        if ((v33 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      (*(v18 + 16))(v21, v25, v17);
      v34 = (*(v18 + 88))(v21, v17);
      if (v34 == enum case for TTRSECreateRemindersViewModel.SectionID.listPicker(_:))
      {
        sub_100009FF0(0, &qword_100068130, UICollectionViewListCell_ptr);
LABEL_19:
        sub_10004C920();

        (*(v18 + 8))(v25, v17);
        return;
      }

      if (v34 == enum case for TTRSECreateRemindersViewModel.SectionID.reminders(_:))
      {
LABEL_16:
        (*(v18 + 8))(v25, v17);

        return;
      }

      if (v34 == enum case for TTRSECreateRemindersViewModel.SectionID.suggestions(_:))
      {
        type metadata accessor for TTRISECreateRemindersSuggestionFooterCell();
        goto LABEL_19;
      }
    }

    else
    {
      __break(1u);
    }

    if (qword_100066F20 != -1)
    {
      swift_once();
    }

    v35 = sub_10004C1B0();
    sub_10000D49C(v35, qword_100067EA8);
    v36 = sub_100011BA4(_swiftEmptyArrayStorage);
    v37 = sub_100011BA4(_swiftEmptyArrayStorage);
    sub_100014FC0("Unknown sectionID", 17, 2, v36, v37);
    __break(1u);
  }
}

void *sub_10002063C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
    v7 = sub_100003150(&qword_100067688, &qword_100052990);
    v8 = sub_100003364(&qword_100067FB8, &qword_100067688, &qword_100052990, &protocol conformance descriptor for TTRICollectionViewCollapsedStatesPresenterCapability<A>);
    a3(a1, v7, v8);
  }

  return result;
}

char *sub_100020734(uint64_t a1, uint64_t a2)
{
  v2 = sub_100003150(&qword_100068020, &qword_100053B30);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v16 - v4;
  v6 = sub_10004A350();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    goto LABEL_5;
  }

  v12 = result;
  v13 = *&result[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_diffableDataSource];
  if (v13)
  {
    v14 = v13;
    sub_10004BD70();

    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      (*(v7 + 32))(v10, v5, v6);
      v15 = sub_10004A010();
      (*(v7 + 8))(v10, v6);

      return (v15 & 1);
    }

    sub_10000A138(v5, &qword_100068020, &qword_100053B30);
LABEL_5:
    v15 = 0;
    return (v15 & 1);
  }

  __break(1u);
  return result;
}

char *sub_100020938(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *))
{
  v4 = sub_100003150(&qword_100068020, &qword_100053B30);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v18 - v6;
  v8 = sub_10004A350();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    v15 = *&result[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_diffableDataSource];
    if (v15)
    {
      v16 = v15;
      sub_10004BD60();

      if ((*(v9 + 48))(v7, 1, v8) == 1)
      {

        sub_10000A138(v7, &qword_100068020, &qword_100053B30);
        return 0;
      }

      else
      {
        (*(v9 + 32))(v12, v7, v8);
        v17 = a3(v12);
        (*(v9 + 8))(v12, v8);

        return v17;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

char *sub_100020B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28[1] = a2;
  v5 = sub_10004C4A0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v13 = v28 - v12;
  v14 = sub_10004C4D0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14, v16);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_projectBox();
  swift_beginAccess();
  (*(v15 + 16))(v18, v19, v14);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    goto LABEL_5;
  }

  v21 = result;
  v22 = *&result[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_diffableDataSource];
  if (v22)
  {
    v23 = v22;
    sub_10002B5C4(a1);
    v25 = v24;

    if (v25)
    {
      v26 = &enum case for UICollectionLayoutListConfiguration.FooterMode.supplementary(_:);
LABEL_6:
      (*(v6 + 104))(v13, *v26, v5);
      (*(v6 + 16))(v9, v13, v5);
      sub_10004C4C0();
      sub_100009FF0(0, &qword_100068168, NSCollectionLayoutSection_ptr);
      v27 = sub_10004C9D0();
      (*(v6 + 8))(v13, v5);
      (*(v15 + 8))(v18, v14);
      return v27;
    }

LABEL_5:
    v26 = &enum case for UICollectionLayoutListConfiguration.FooterMode.none(_:);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

id sub_100020DFC(uint64_t a1)
{
  v3 = sub_100003150(&qword_100067FD0, &qword_100053658);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v38 - v5;
  v7 = sub_100049EF0();
  v40 = *(v7 - 8);
  v41 = v7;
  __chkstk_darwin(v7, v8);
  v39 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004AD40();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100003150(&qword_100067F98, &unk_100053620);
  __chkstk_darwin(v15 - 8, v16);
  v18 = &v38 - v17;
  v19 = sub_10004A380();
  v20 = *(v19 - 8);
  v22 = __chkstk_darwin(v19, v21);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1, v10, v22);
  sub_10004A360();
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    v25 = &qword_100067F98;
    v26 = &unk_100053620;
    v27 = v18;
LABEL_6:
    sub_10000A138(v27, v25, v26);
    return 0;
  }

  result = (*(v20 + 32))(v24, v18, v19);
  v29 = *&v1[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_diffableDataSource];
  if (!v29)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v30 = v1;
  v31 = v29;
  sub_10004C460();

  v33 = v40;
  v32 = v41;
  v34 = (*(v40 + 48))(v6, 1, v41);
  v35 = v39;
  if (v34 == 1)
  {
    (*(v20 + 8))(v24, v19);
    v25 = &qword_100067FD0;
    v26 = &qword_100053658;
    v27 = v6;
    goto LABEL_6;
  }

  (*(v33 + 32))(v39, v6, v32);
  result = [v30 collectionView];
  if (!result)
  {
    goto LABEL_11;
  }

  v36 = result;
  v37 = sub_10004C8E0();

  (*(v33 + 8))(v35, v32);
  (*(v20 + 8))(v24, v19);
  return v37;
}

uint64_t sub_1000211EC(char a1)
{
  v3 = sub_100003150(&unk_100067618, &qword_100052940);
  __chkstk_darwin(v3 - 8, v4);
  v6 = v15 - v5;
  v7 = OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_taskToShowLoadingState;
  v8 = *(v1 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_taskToShowLoadingState);
  if (a1)
  {
    v9 = *(v1 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_taskToShowLoadingState);
    if (!v8)
    {
      v10 = sub_10004C790();
      (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_10004C770();

      v12 = sub_10004C760();
      v13 = swift_allocObject();
      v13[2] = v12;
      v13[3] = &protocol witness table for MainActor;
      v13[4] = v11;

      v9 = sub_1000219E8(0, 0, v6, &unk_100053610, v13);
    }

    *(v1 + v7) = v9;
  }

  else
  {
    if (v8)
    {

      sub_100003150(&qword_100067F80, &qword_100053600);
      sub_10004C7A0();
    }

    *(v1 + v7) = 0;

    v16 = 0;
    memset(v15, 0, sizeof(v15));
    return sub_10004C970();
  }
}

uint64_t sub_100021400(uint64_t a1)
{
  v2 = v1;
  result = sub_10004A140();
  if (result)
  {
    v4 = sub_10001CAE0();
    v5 = [v4 isEnabled];

    result = [v2 collectionView];
    if (result)
    {
      v6 = result;
      v7 = [result indexPathsForSelectedItems];

      if (v7)
      {
        sub_100049EF0();
        v8 = sub_10004C720();
      }

      else
      {
        v8 = _swiftEmptyArrayStorage;
      }

      v9 = v8[2];

      if (v5 != (v9 != 0))
      {
        v10 = *&v2[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController____lazy_storage___commitButton];

        return [v10 setEnabled:v9 != 0];
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100021524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v5 = sub_10004CD10();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  sub_10004C770();
  v4[14] = sub_10004C760();
  v7 = sub_10004C750();
  v4[15] = v7;
  v4[16] = v6;

  return _swift_task_switch(sub_100021618, v7, v6);
}

uint64_t sub_100021618()
{
  sub_10004CE20();
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_1000216E4;

  return sub_100026A78(500000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1000216E4()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  *(*v1 + 144) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 128);
  v7 = *(v2 + 120);
  if (v0)
  {
    v8 = sub_10002197C;
  }

  else
  {
    v8 = sub_10002187C;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10002187C()
{
  v1 = v0[18];

  sub_10004C7B0();
  if (!v1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v0[5] = sub_10004C3F0();
      v0[6] = &protocol witness table for UIContentUnavailableConfiguration;
      sub_10000B790(v0 + 2);
      v4 = v3;
      sub_10004C3E0();
      sub_10004C970();
    }
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_10002197C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000219E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100003150(&unk_100067618, &qword_100052940);
  __chkstk_darwin(v8 - 8, v9);
  v11 = v23 - v10;
  sub_10000A198(a3, v23 - v10, &unk_100067618, &qword_100052940);
  v12 = sub_10004C790();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000A138(v11, &unk_100067618, &qword_100052940);
  }

  else
  {
    sub_10004C780();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_10004C750();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_10004C6A0() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_10000A138(a3, &unk_100067618, &qword_100052940);

      return v21;
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

  sub_10000A138(a3, &unk_100067618, &qword_100052940);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

id sub_100021C94(uint64_t a1, uint64_t a2)
{
  v43[1] = a2;
  v3 = sub_10004A380();
  v45 = *(v3 - 8);
  v46 = v3;
  __chkstk_darwin(v3, v4);
  v6 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003150(&qword_100067FD0, &qword_100053658);
  __chkstk_darwin(v7 - 8, v8);
  v10 = v43 - v9;
  v11 = sub_100049EF0();
  v47 = *(v11 - 8);
  v48 = v11;
  __chkstk_darwin(v11, v12);
  v44 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10004AD30();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14, v16);
  v18 = v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100003150(&qword_100068020, &qword_100053B30);
  __chkstk_darwin(v19 - 8, v20);
  v22 = v43 - v21;
  v23 = sub_10004A350();
  v24 = *(v23 - 8);
  v26 = __chkstk_darwin(v23, v25);
  v28 = v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, a1, v14, v26);
  sub_10004A300();
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    return sub_10000A138(v22, &qword_100068020, &qword_100053B30);
  }

  result = (*(v24 + 32))(v28, v22, v23);
  v30 = *&v49[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_diffableDataSource];
  if (!v30)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v31 = v49;
  v32 = v30;
  sub_10004A310();
  sub_10004C460();

  (*(v45 + 8))(v6, v46);
  v34 = v47;
  v33 = v48;
  if ((*(v47 + 48))(v10, 1, v48) == 1)
  {
    (*(v24 + 8))(v28, v23);
    return sub_10000A138(v10, &qword_100067FD0, &qword_100053658);
  }

  (*(v34 + 32))(v44, v10, v33);
  result = [v31 collectionView];
  if (!result)
  {
    goto LABEL_17;
  }

  v35 = result;
  [result layoutIfNeeded];

  result = [v31 collectionView];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v36 = result;
  v37 = v44;
  isa = sub_100049EB0().super.isa;
  [v36 scrollToItemAtIndexPath:isa atScrollPosition:0 animated:0];

  result = [v31 collectionView];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v39 = result;
  [result layoutIfNeeded];

  result = [v31 collectionView];
  if (!result)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v40 = result;
  v41 = sub_10004C8E0();

  if (v41)
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v42 = v41;
      sub_10004A450();
    }
  }

  (*(v34 + 8))(v37, v33);
  return (*(v24 + 8))(v28, v23);
}

uint64_t sub_100022228(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = result;
  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  do
  {
    for (i = v7; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      v10 = sub_10004A4C0();
      v12 = *(v10 - 8);
      result = v10 - 8;
      v11 = v12;
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      result = v6(v19, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
      if (v3)
      {

        return v8;
      }

      if ((v20 & 1) == 0)
      {
        break;
      }

      if (v7 == v4)
      {
        return v8;
      }
    }

    v17 = v19[1];
    v18 = v19[0];
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10003163C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v14 = *(v8 + 2);
    v13 = *(v8 + 3);
    v15 = v14 + 1;
    if (v14 >= v13 >> 1)
    {
      result = sub_10003163C((v13 > 1), v14 + 1, 1, v8);
      v15 = v14 + 1;
      v8 = result;
    }

    *(v8 + 2) = v15;
    v16 = &v8[32 * v14];
    *(v16 + 2) = v18;
    *(v16 + 3) = v17;
  }

  while (v7 != v4);
  return v8;
}

uint64_t sub_1000223BC()
{
  v1 = sub_100003150(&unk_100067618, &qword_100052940);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v12 - v3;
  v5 = *(v0 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presenter);
  if (qword_100066F40 != -1)
  {
    swift_once();
  }

  v6 = sub_10004C1B0();
  sub_10000D49C(v6, qword_1000685E0);
  v7 = sub_100011BA4(_swiftEmptyArrayStorage);
  sub_100014D1C("Create Reminders Cancel", 23, 2, v7);

  v8 = sub_10004C790();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  sub_10004C770();
  swift_unknownObjectRetain();
  v9 = sub_10004C760();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v5;
  sub_100034498(0, 0, v4, &unk_100053728, v10);
}

void sub_100022578()
{
  v1 = v0;
  v2 = sub_100003150(&unk_100067618, &qword_100052940);
  __chkstk_darwin(v2 - 8, v3);
  v5 = v18 - v4;
  v6 = *&v0[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presenter];
  if (sub_10004A140())
  {
    v7 = [v0 collectionView];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 indexPathsForSelectedItems];

      if (!v9)
      {
        v13 = _swiftEmptyArrayStorage;
        goto LABEL_9;
      }

      sub_100049EF0();
      v10 = sub_10004C720();

      v11 = *&v1[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_diffableDataSource];
      if (v11)
      {
        v18[1] = v10;
        v12 = v11;
        sub_100003150(&qword_1000680B0, &qword_100053720);
        sub_100003364(&qword_1000680B8, &qword_1000680B0, &qword_100053720, &protocol conformance descriptor for [A]);
        v13 = sub_10004BD80();

LABEL_9:
        sub_100035824(v13);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  swift_beginAccess();
  v14 = sub_10004B280();
  swift_endAccess();
  if (v14)
  {
    v15 = sub_10004C790();
    (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
    sub_10004C770();
    swift_unknownObjectRetain();
    v16 = sub_10004C760();
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = &protocol witness table for MainActor;
    v17[4] = v6;
    v17[5] = 0;
    sub_100034498(0, 0, v5, &unk_100054240, v17);
  }
}

uint64_t sub_100022818(void *a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_10004CBA0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v9);

  return sub_10000A138(v9, &qword_1000680A8, &unk_100053710);
}

uint64_t type metadata accessor for TTRISECreateRemindersViewController(uint64_t a1)
{
  result = qword_100067F40;
  if (!qword_100067F40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100022A68(uint64_t a1)
{
  result = sub_10004A4B0();
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

void sub_100022B28(uint64_t a2@<X8>)
{
  v4 = sub_100003150(&qword_100067F68, &unk_100053890);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = *(v2 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_diffableDataSource);
  if (v8)
  {
    v9 = v8;
    sub_10004BD30();

    v10 = type metadata accessor for TTRISECreateRemindersPresentationTree(0);
    if ((*(*(v10 - 8) + 48))(v7, 1, v10) == 1)
    {
      sub_10000A138(v7, &qword_100067F68, &unk_100053890);
      v11 = 1;
    }

    else
    {
      sub_10002E9A8(a2);
      sub_10002A634(v7, type metadata accessor for TTRISECreateRemindersPresentationTree);
      v11 = 0;
    }

    v12 = type metadata accessor for TTRISECreateRemindersItemIntermediateViewModel(0);
    (*(*(v12 - 8) + 56))(a2, v11, 1, v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100022CA0@<X0>(void *a1@<X8>)
{
  sub_10004BF60();
  v2 = sub_100003150(&qword_100067F70, &unk_1000535F0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

void sub_100022D34()
{
  if (*(v0 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_dragAndDropCoordinator))
  {

    sub_10004BB00();
  }

  else
  {
    __break(1u);
  }
}

NSObject *sub_100022D84(uint64_t a1, uint64_t a2)
{
  result = [v2 collectionView];
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v6 = result;
  v7 = [result isEditing];

  if (v7)
  {
    if ([v2 isEditing])
    {
      if (qword_100066F20 != -1)
      {
        swift_once();
      }

      v8 = sub_10004C1B0();
      sub_10000D49C(v8, qword_100067EA8);
      v9 = sub_10004C1A0();
      v10 = sub_10004C890();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "TTRISECreateRemindersViewController: trying to start editing a reminder while in edit mode", v11, 2u);
      }

      goto LABEL_11;
    }

    result = [v2 collectionView];
    if (result)
    {
      v9 = result;
      [result setEditing:0];
LABEL_11:

      goto LABEL_12;
    }

LABEL_16:
    __break(1u);
    return result;
  }

LABEL_12:

  return sub_100021C94(a1, a2);
}

void sub_100022F14()
{
  v0 = sub_10004AD40();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004ACF0();
  v5 = sub_100020DFC(v4);
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    sub_10004BC90();
    if (swift_dynamicCastClass())
    {
      sub_10004BC50();
      goto LABEL_9;
    }
  }

  if (qword_100066F20 != -1)
  {
    swift_once();
  }

  v6 = sub_10004C1B0();
  sub_10000D49C(v6, qword_100067EA8);
  v5 = sub_10004C1A0();
  v7 = sub_10004C880();
  if (os_log_type_enabled(v5, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, v7, "TTRISECreateRemindersViewController#createAndStartEditingNewHashtag: cell not found", v8, 2u);
  }

LABEL_9:
}

uint64_t sub_1000230D4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10004AD40();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004ACF0();
  v7 = sub_100020DFC(v6);
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    sub_10004BC90();
    if (swift_dynamicCastClass() && (v8 = sub_10004BC30()) != 0)
    {
      v9 = v8;
      sub_10004A700();

      v10 = 0;
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 1;
  }

  v11 = sub_10004A720();
  return (*(*(v11 - 8) + 56))(a1, v10, 1, v11);
}

void sub_100023250(char *a1)
{
  v73 = a1;
  v2 = sub_100003150(&qword_100067FD0, &qword_100053658);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v50 - v4;
  v61 = sub_100049EF0();
  v6 = *(v61 - 8);
  __chkstk_darwin(v61, v7);
  v54 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003150(&qword_100067F98, &unk_100053620);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v50 - v11;
  v13 = sub_10004A380();
  v72 = *(v13 - 8);
  __chkstk_darwin(v13, v14);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10004AD40();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17, v19);
  v71 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v22);
  v60 = &v50 - v23;
  v24 = sub_10004AD30();
  v25 = *(v24 - 8);
  *&v27 = __chkstk_darwin(v24, v26).n128_u64[0];
  v74 = &v50 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v1;
  v29 = [v1 viewIfLoaded];
  if (!v29)
  {
    return;
  }

  v30 = v29;
  v55 = sub_10004CA40();

  if (!v55)
  {
    return;
  }

  v31 = v6;
  v32 = *(v73 + 2);
  if (!v32)
  {
    v49 = v55;

    return;
  }

  v33 = v25 + 16;
  v69 = *(v25 + 16);
  v34 = &v73[(*(v25 + 80) + 32) & ~*(v25 + 80)];
  v59 = OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_diffableDataSource;
  v67 = (v72 + 48);
  v68 = (v18 + 16);
  v63 = *(v33 + 56);
  v57 = (v31 + 48);
  v58 = (v72 + 32);
  v53 = (v31 + 32);
  v51 = (v31 + 8);
  v56 = (v72 + 8);
  v70 = v33;
  v64 = (v33 - 8);
  v65 = (v18 + 8);
  v72 = v17;
  v73 = v16;
  v35 = v60;
  v52 = v12;
  v66 = v24;
  v69(v74, v34, v24);
  while (1)
  {
    sub_10004ACF0();
    (*v68)(v71, v35, v17);
    sub_10004A360();
    if ((*v67)(v12, 1, v13) == 1)
    {
      (*v65)(v35, v17);
      v36 = v12;
      v37 = &qword_100067F98;
      v38 = &unk_100053620;
LABEL_6:
      sub_10000A138(v36, v37, v38);
      v39 = v66;
LABEL_7:
      (*v64)(v74, v39);
      goto LABEL_8;
    }

    (*v58)(v16, v12, v13);
    v40 = *&v62[v59];
    if (!v40)
    {
      break;
    }

    v41 = v40;
    sub_10004C460();

    if ((*v57)(v5, 1, v61) == 1)
    {
      (*v56)(v16, v13);
      v35 = v60;
      (*v65)(v60, v17);
      v36 = v5;
      v37 = &qword_100067FD0;
      v38 = &qword_100053658;
      goto LABEL_6;
    }

    v42 = v54;
    v43 = v61;
    (*v53)(v54, v5, v61);
    v44 = [v62 collectionView];
    if (!v44)
    {
      goto LABEL_24;
    }

    v45 = v44;
    isa = sub_100049EB0().super.isa;
    v47 = [v45 cellForItemAtIndexPath:isa];

    (*v51)(v42, v43);
    (*v56)(v73, v13);
    v35 = v60;
    (*v65)(v60, v72);
    v12 = v52;
    v39 = v66;
    if (!v47)
    {
      goto LABEL_7;
    }

    v48 = [v55 isDescendantOfView:v47];

    (*v64)(v74, v39);
    if (v48)
    {
      [v55 resignFirstResponder];
LABEL_18:

      return;
    }

LABEL_8:
    v34 += v63;
    --v32;
    v17 = v72;
    v16 = v73;
    if (!v32)
    {
      goto LABEL_18;
    }

    v69(v74, v34, v39);
  }

  __break(1u);
LABEL_24:
  __break(1u);
}

void sub_10002394C(uint64_t a1)
{
  if ([v1 isViewLoaded])
  {
    if (*&v1[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presentationTreesCapability])
    {

      sub_10004A410();

      sub_10001DD00();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1000239F8(void *a1, uint64_t a2)
{
  v23 = a1;
  v3 = sub_10004B5E0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003150(&qword_100068020, &qword_100053B30);
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v15 = &v22 - v14;
  v16 = *(v2 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_diffableDataSource);
  if (v16)
  {
    v17 = v16;
    sub_10004BD60();

    v18 = sub_10004A350();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v11, 1, v18) == 1)
    {
      sub_10000A138(v11, &qword_100068020, &qword_100053B30);
      (*(v19 + 56))(v15, 1, 1, v18);
      sub_10000A138(v15, &qword_100068020, &qword_100053B30);
      (*(v4 + 104))(v7, enum case for TTRICollectionViewCellSelectionOption.disallowed(_:), v3);
    }

    else
    {
      (*(v19 + 32))(v15, v11, v18);
      sub_100036FF8(v15, v7);
      (*(v19 + 56))(v15, 0, 1, v18);
      sub_10000A138(v15, &qword_100068020, &qword_100053B30);
    }

    v20 = sub_10004B5D0();
    (*(v4 + 8))(v7, v3);
    if (v20)
    {
      isa = sub_100049EB0().super.isa;
      [v23 _unhighlightItemAtIndexPath:isa animated:0];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100023D3C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v8 = sub_100049EF0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100049EC0();
  v13 = a3;
  v14 = a1;
  sub_1000270D4(v12, a5);
  LOBYTE(a5) = v15;

  (*(v9 + 8))(v12, v8);
  return a5 & 1;
}

uint64_t sub_100023E4C(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  v4 = sub_10004A960();
  v38 = *(v4 - 8);
  v39 = v4;
  __chkstk_darwin(v4, v5);
  v37 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003150(&qword_100068020, &qword_100053B30);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v14 = &v36 - v13;
  v15 = sub_10004B5E0();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15, v17);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v21);
  v23 = &v36 - v22;
  v24 = *(v2 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_diffableDataSource);
  if (v24)
  {
    v25 = v24;
    v40 = a2;
    sub_10004BD60();

    v26 = sub_10004A350();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v10, 1, v26) == 1)
    {
      sub_10000A138(v10, &qword_100068020, &qword_100053B30);
      (*(v27 + 56))(v14, 1, 1, v26);
      sub_10000A138(v14, &qword_100068020, &qword_100053B30);
      v28 = enum case for TTRICollectionViewCellSelectionOption.disallowed(_:);
      (*(v16 + 104))(v23, enum case for TTRICollectionViewCellSelectionOption.disallowed(_:), v15);
    }

    else
    {
      (*(v27 + 32))(v14, v10, v26);
      sub_100036FF8(v14, v23);
      (*(v27 + 56))(v14, 0, 1, v26);
      sub_10000A138(v14, &qword_100068020, &qword_100053B30);
      v28 = enum case for TTRICollectionViewCellSelectionOption.disallowed(_:);
    }

    (*(v16 + 16))(v19, v23, v15);
    v29 = (*(v16 + 88))(v19, v15);
    if (v29 == v28 || v29 == enum case for TTRICollectionViewCellSelectionOption.selectItem(_:))
    {
      return (*(v16 + 8))(v23, v15);
    }

    if (v29 == enum case for TTRICollectionViewCellSelectionOption.editPrimaryText(_:))
    {
      v30 = sub_10004C8E0();
      if (v30)
      {
        v31 = v30;
        swift_getObjectType();
        if (swift_conformsToProtocol2())
        {
          v33 = v37;
          v32 = v38;
          v34 = v39;
          (*(v38 + 104))(v37, enum case for TTREditingStateOption.InputType.unspecified(_:), v39);
          sub_10004A450();

          (*(v32 + 8))(v33, v34);
        }

        else
        {
        }
      }

      return (*(v16 + 8))(v23, v15);
    }

    if (v29 == enum case for TTRICollectionViewCellSelectionOption.performPrimaryAction(_:))
    {
      return (*(v16 + 8))(v23, v15);
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_10004CDC0();
  __break(1u);
  return result;
}

uint64_t sub_100024304(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, char *))
{
  v8 = sub_100049EF0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100049EC0();
  v13 = a3;
  v14 = a1;
  a5(v13, v12);

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_100024414(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_100049EF0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100049EC0();
  v10 = a1;
  v11 = sub_10004A140();
  if (v11)
  {
    sub_100021400(v11);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000245E4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100003150(&qword_100067D20, &unk_1000537A0);
  __chkstk_darwin(v2 - 8, v3);
  v5 = (&v16 - v4);
  v6 = type metadata accessor for TTRSECreateRemindersViewModel.ListPickerCellState(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003500C(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10000A138(v5, &qword_100067D20, &unk_1000537A0);
  }

  else
  {
    sub_10002A5CC(v5, v10, type metadata accessor for TTRSECreateRemindersViewModel.ListPickerCellState);
    v11 = sub_1000353B4();
    if (v11)
    {
      v12 = v11;
      sub_10002A5CC(v10, a1, type metadata accessor for TTRSECreateRemindersViewModel.ListPickerCellState);
      v13 = _s26ListPickerCellStateAndMenuVMa(0);
      *(a1 + *(v13 + 20)) = v12;
      return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
    }

    sub_10002A634(v10, type metadata accessor for TTRSECreateRemindersViewModel.ListPickerCellState);
  }

  v15 = _s26ListPickerCellStateAndMenuVMa(0);
  return (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
}

uint64_t sub_100024814@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = sub_100003150(&qword_100068020, &qword_100053B30);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v28 - v3;
  v5 = sub_10004A350();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004AD40();
  __chkstk_darwin(v10 - 8, v11);
  v12 = sub_100003150(&qword_100067F98, &unk_100053620);
  __chkstk_darwin(v12 - 8, v13);
  v15 = &v28 - v14;
  v16 = sub_10004A380();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16, v18);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004BBC0();
  sub_10004A360();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    v21 = &qword_100067F98;
    v22 = &unk_100053620;
    v23 = v15;
LABEL_6:
    sub_10000A138(v23, v21, v22);
    v27 = sub_10004AD70();
    return (*(*(v27 - 8) + 56))(v29, 1, 1, v27);
  }

  result = (*(v17 + 32))(v20, v15, v16);
  v25 = *(v28 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_diffableDataSource);
  if (v25)
  {
    v26 = v25;
    sub_10004BD70();

    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      (*(v17 + 8))(v20, v16);
      v21 = &qword_100068020;
      v22 = &qword_100053B30;
      v23 = v4;
      goto LABEL_6;
    }

    (*(v6 + 32))(v9, v4, v5);
    sub_10004A0C0();
    (*(v6 + 8))(v9, v5);
    return (*(v17 + 8))(v20, v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100024BD8@<X0>(uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_10004A3B0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presenter);
  sub_10002A4C4(&qword_100068008, type metadata accessor for TTRISECreateRemindersViewController, &unk_1000533F8);
  sub_10000A198(v8 + 152, v19, &qword_100067678, &qword_100052980);
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  (*(v4 + 104))(v7, enum case for TTRIReminderCellModuleOwnerModuleType.remindersList(_:), v3);
  sub_100049FD0();
  v9 = sub_10004AF50();
  v11 = v10;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v4 + 8))(v7, v3);
  sub_10000A138(v17, &qword_100068010, &qword_100053690);
  sub_10000343C(v19);
  *&v17[0] = v9;
  *(&v17[0] + 1) = v11;
  sub_100015848(v20, v19);
  sub_100003150(&qword_100068018, &qword_100053698);
  v12 = v16;
  sub_10004AEF0();
  sub_10000343C(v20);
  v13 = sub_100003150(&qword_1000678D8, &qword_100053250);
  return (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
}

uint64_t sub_100024E60@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_10004A3B0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presenter);
  sub_10002A4C4(&qword_100067FF8, type metadata accessor for TTRISECreateRemindersViewController, &unk_1000533D0);
  sub_10000A198(v9 + 152, v16, &qword_100067678, &qword_100052980);
  (*(v5 + 104))(v8, enum case for TTRIReminderCellModuleOwnerModuleType.remindersList(_:), v4);
  sub_100049FD0();
  v10 = sub_10004AF40();
  v12 = v11;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v5 + 8))(v8, v4);
  sub_10000343C(v16);
  v15[0] = v10;
  v15[1] = v12;
  sub_100015848(v17, v16);
  sub_100003150(&qword_100068000, &unk_100053680);
  sub_10004AEF0();
  sub_10000343C(v17);
  v13 = sub_100003150(&unk_100067238, &unk_100052CB0);
  return (*(*(v13 - 8) + 56))(a2, 0, 1, v13);
}

uint64_t sub_1000250B8@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_10004A3B0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presenter);
  sub_10002A4C4(&qword_100067FE0, type metadata accessor for TTRISECreateRemindersViewController, &unk_1000533A8);
  sub_10000A198(v9 + 152, v16, &qword_100067678, &qword_100052980);
  (*(v5 + 104))(v8, enum case for TTRIReminderCellModuleOwnerModuleType.remindersList(_:), v4);
  sub_100049FD0();
  v10 = sub_10004B120();
  v12 = v11;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v5 + 8))(v8, v4);
  sub_10000343C(v16);
  v15[0] = v10;
  v15[1] = v12;
  sub_100015848(v17, v16);
  sub_100003150(&qword_100067FE8, &qword_100053670);
  sub_10004AEF0();
  sub_10000343C(v17);
  v13 = sub_100003150(&qword_100067FF0, &qword_100053678);
  return (*(*(v13 - 8) + 56))(a2, 0, 1, v13);
}

uint64_t sub_100025308(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v3 = sub_10004A900();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003150(&qword_100067630, &qword_100052960);
  __chkstk_darwin(v8 - 8, v9);
  v11 = v22 - v10;
  v12 = sub_10004AD30();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12, v14);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004BC80();
  if (!v25)
  {
    sub_10000A138(v24, &qword_100067FC8, &qword_100053650);
    (*(v13 + 56))(v11, 1, 1, v12);
    return sub_10000A138(v11, &qword_100067630, &qword_100052960);
  }

  v22[1] = v2;
  sub_1000032DC(v24, v25);
  sub_10004B6B0();
  (*(v13 + 56))(v11, 0, 1, v12);
  sub_10000343C(v24);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_10000A138(v11, &qword_100067630, &qword_100052960);
  }

  (*(v13 + 32))(v16, v11, v12);
  (*(v4 + 16))(v7, v23, v3);
  v17 = (*(v4 + 88))(v7, v3);
  if (v17 == enum case for TTRReminderCellStyle.SuggestedReminderType.siriFoundInApps(_:))
  {
    return (*(v13 + 8))(v16, v12);
  }

  if (v17 == enum case for TTRReminderCellStyle.SuggestedReminderType.unspecified(_:))
  {
    sub_100003150(&qword_100067FD8, &unk_100053660);
    v18 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v19 = swift_allocObject();
    *(v19 + 1) = xmmword_1000528D0;
    (*(v13 + 16))(&v19[v18], v16, v12);
    v20._rawValue = v19;
    sub_100049FB0(v20);

    return (*(v13 + 8))(v16, v12);
  }

  result = sub_10004CDC0();
  __break(1u);
  return result;
}

uint64_t sub_1000256A0(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v2 = sub_10004A720();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003150(&qword_100067630, &qword_100052960);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v19 - v9;
  v11 = sub_10004AD30();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004BC80();
  if (!v23)
  {
    sub_10000A138(v22, &qword_100067FC8, &qword_100053650);
    (*(v12 + 56))(v10, 1, 1, v11);
    return sub_10000A138(v10, &qword_100067630, &qword_100052960);
  }

  v20 = v3;
  sub_1000032DC(v22, v23);
  sub_10004B6B0();
  (*(v12 + 56))(v10, 0, 1, v11);
  sub_10000343C(v22);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_10000A138(v10, &qword_100067630, &qword_100052960);
  }

  (*(v12 + 32))(v15, v10, v11);
  sub_10004A700();
  if (qword_100066F40 != -1)
  {
    swift_once();
  }

  v16 = sub_10004C1B0();
  sub_10000D49C(v16, qword_1000685E0);
  v17 = sub_100011BA4(_swiftEmptyArrayStorage);
  sub_100014D1C("Create Reminders Show Details", 29, 2, v17);

  sub_100037814(v15, v6, 0, 0);
  (*(v20 + 8))(v6, v2);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_100025A10(uint64_t a1, int a2)
{
  v30 = a2;
  v2 = sub_100003150(&qword_100067F98, &unk_100053620);
  __chkstk_darwin(v2 - 8, v3);
  v5 = v29 - v4;
  v6 = sub_10004A380();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003150(&qword_100067FA0, &qword_100053B50);
  __chkstk_darwin(v11 - 8, v12);
  v14 = v29 - v13;
  v15 = sub_10004AD40();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15, v17);
  v19 = v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v21);
  v23 = v29 - v22;
  sub_10004BC60();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_10000A138(v14, &qword_100067FA0, &qword_100053B50);
  }

  (*(v16 + 32))(v23, v14, v15);
  (*(v16 + 16))(v19, v23, v15);
  sub_10004A360();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    (*(v16 + 8))(v23, v15);
    return sub_10000A138(v5, &qword_100067F98, &unk_100053620);
  }

  else
  {
    v25 = *(v7 + 32);
    v26 = v10;
    v29[0] = v10;
    v25(v10, v5, v6);
    sub_100003150(&qword_100067FA8, &unk_100053630);
    v27 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1000528D0;
    (*(v7 + 16))(v28 + v27, v26, v6);
    v31 = v28;

    v29[1] = sub_100003150(&qword_100067688, &qword_100052990);
    sub_100003150(&qword_100067FB0, &unk_100053640);
    sub_100003364(&qword_100067FB8, &qword_100067688, &qword_100052990, &protocol conformance descriptor for TTRICollectionViewCollapsedStatesPresenterCapability<A>);
    sub_100003364(&qword_100067FC0, &qword_100067FB0, &unk_100053640, &protocol conformance descriptor for [A]);
    sub_10004B620();

    (*(v7 + 8))(v29[0], v6);
    return (*(v16 + 8))(v23, v15);
  }
}

id sub_100025EF4()
{
  result = [v0 collectionView];
  if (result)
  {
    v2 = result;
    v3 = [result hasActiveDrag];

    if (v3)
    {
      return 0;
    }

    result = [v0 collectionView];
    if (result)
    {
      v4 = result;
      v5 = [result hasActiveDrop];

      return (v5 ^ 1);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_100025FA8()
{
  result = [v0 collectionView];
  if (result)
  {
    v2 = result;
    v3 = [result isEditing];

    if (!v3)
    {
      return v3;
    }

    result = [v0 collectionView];
    if (result)
    {
      v4 = result;
      [result setEditing:0];

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

id sub_10002604C()
{
  result = [v0 collectionView];
  if (result)
  {
    v2 = result;
    v3 = [result hasActiveDrag];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000260E4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(__n128), uint64_t (*a5)(uint64_t, uint64_t))
{
  v51 = a1;
  v52 = a5;
  v50 = a2;
  v7 = sub_10004A4B0();
  v47 = *(v7 - 8);
  v48 = v7;
  __chkstk_darwin(v7, v8);
  v46 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004A460();
  v45 = *(v10 - 8);
  __chkstk_darwin(v10, v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10004B310();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14, v16);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10004A4E0();
  v20 = *(v19 - 8);
  v22 = __chkstk_darwin(v19, v21);
  v24 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  a4(v22);
  (*(v15 + 16))(v18, a3, v14);
  v25 = (*(v15 + 88))(v18, v14);
  if (v25 == enum case for TTRIReminderCellTitleEditingEvent.editingWillBegin(_:) || v25 == enum case for TTRIReminderCellTitleEditingEvent.editingDidBegin(_:))
  {
    goto LABEL_11;
  }

  if (v25 == enum case for TTRIReminderCellTitleEditingEvent.editingChanged(_:))
  {
    ObjectType = swift_getObjectType();
    v28 = v52(ObjectType, v50);
    if (v28)
    {
      v30 = v28;
      v31 = v29;
      v32 = *(sub_100003150(&qword_100068028, &qword_1000536A0) + 48);
      *(v13 + 3) = swift_getObjectType();
      *(v13 + 4) = *(*(v31 + 8) + 8);
      *v13 = v30;
      (*(v20 + 16))(&v13[v32], v24, v19);
      (*(v45 + 104))(v13, enum case for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction.textChange(_:), v10);
      v33 = OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_deferredItemUpdates;
      v34 = v49;
      swift_beginAccess();
      v35 = v30;
      sub_10004A480();
      swift_endAccess();
      v37 = v46;
      v36 = v47;
      v38 = &v34[v33];
      v39 = v48;
      (*(v47 + 16))(v46, v38, v48);
      LOBYTE(v31) = sub_10004A4A0();
      (*(v36 + 8))(v37, v39);
      if ((v31 & 1) == 0)
      {
        v40 = [v34 viewIfLoaded];
        [v40 setNeedsLayout];

        v35 = v40;
      }
    }

    goto LABEL_11;
  }

  if (v25 == enum case for TTRIReminderCellTitleEditingEvent.editingDidEnd(_:))
  {
LABEL_11:
    (*(v20 + 8))(v24, v19);
    return;
  }

  if (qword_100066F20 != -1)
  {
    swift_once();
  }

  v41 = sub_10004C1B0();
  sub_10000D49C(v41, qword_100067EA8);
  v42 = sub_100011BA4(_swiftEmptyArrayStorage);
  v43 = sub_100011BA4(_swiftEmptyArrayStorage);
  sub_100014FC0("Unknown editing event", 21, 2, v42, v43);
  __break(1u);
}

void sub_1000265E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_diffableDataSource);
  if (v2)
  {
    v3 = v2;
    sub_10004BD70();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10002666C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_100003150(&qword_100067688, &qword_100052990);
  sub_100003364(&qword_100067FB8, &qword_100067688, &qword_100052990, &protocol conformance descriptor for TTRICollectionViewCollapsedStatesPresenterCapability<A>);
  sub_100003150(&qword_100068098, &qword_100053708);
  sub_100003364(&qword_1000680A0, &qword_100068098, &qword_100053708, &protocol conformance descriptor for Set<A>);
  sub_10004B600();
}

uint64_t sub_10002677C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100003150(&qword_100068088, &qword_100053700);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_100026808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return TTRICollectionViewDragAndDropCoordinatorDelegate.dragAndDropCoordinator(_:dropSessionDidEnd:)(a1, a2, a3, ObjectType, a5);
}

uint64_t sub_10002690C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100026948(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000B5FC;

  return sub_100021524(a1, v4, v5, v6);
}

id sub_1000269FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_100026A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_10004CD00();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_100026B78, 0, 0);
}

uint64_t sub_100026B78()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_10004CD10();
  v5 = sub_10002A4C4(&qword_100067F88, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_10004CE00();
  sub_10002A4C4(&qword_100067F90, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  sub_10004CD20();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_100026D08;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_100026D08()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_100026EC4, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_100026EC4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100026F30()
{
  v1 = sub_10004A460();
  v3 = __chkstk_darwin(v1, v2);
  *(v0 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presentationTreesCapability) = 0;
  *(v0 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_dragAndDropController) = 0;
  *(v0 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_dragAndDropCoordinator) = 0;
  *(v0 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_diffableDataSource) = 0;
  *(v0 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_currentTextInputModeObserver) = 0;
  (*(v5 + 104))(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction.none(_:), v3);
  sub_10004A490();
  *(v0 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_taskToShowLoadingState) = 0;
  *(v0 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController____lazy_storage___cancelButton) = 0;
  *(v0 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController____lazy_storage___commitButton) = 0;
  if (qword_100066F20 != -1)
  {
    swift_once();
  }

  v6 = sub_10004C1B0();
  sub_10000D49C(v6, qword_100067EA8);
  v7 = sub_100011BA4(_swiftEmptyArrayStorage);
  v8 = sub_100011BA4(_swiftEmptyArrayStorage);
  sub_100014FC0("init(coder:) has not been implemented", 37, 2, v7, v8);
  __break(1u);
}

void sub_1000270D4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = sub_10004B5E0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003150(&qword_100068020, &qword_100053B30);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v14);
  v16 = &v22 - v15;
  v17 = *(v2 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_diffableDataSource);
  if (v17)
  {
    v18 = v17;
    sub_10004BD60();

    v19 = sub_10004A350();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v12, 1, v19) == 1)
    {
      sub_10000A138(v12, &qword_100068020, &qword_100053B30);
      (*(v20 + 56))(v16, 1, 1, v19);
      sub_10000A138(v16, &qword_100068020, &qword_100053B30);
      v21 = (*(v5 + 104))(v8, enum case for TTRICollectionViewCellSelectionOption.disallowed(_:), v4);
    }

    else
    {
      (*(v20 + 32))(v16, v12, v19);
      sub_100036FF8(v16, v8);
      (*(v20 + 56))(v16, 0, 1, v19);
      v21 = sub_10000A138(v16, &qword_100068020, &qword_100053B30);
    }

    a2(v21);
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    __break(1u);
  }
}

id sub_1000273AC(uint64_t a1)
{
  v3 = sub_100003150(&qword_100068020, &qword_100053B30);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v22 - v5;
  v7 = sub_10004A350();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100049EF0();
  v13 = *(v12 - 8);
  v15 = __chkstk_darwin(v12, v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  if (*(a1 + 16) == 1)
  {
    result = (*(v13 + 16))(v17, a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v12, v15);
    v19 = *(v1 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_diffableDataSource);
    if (v19)
    {
      v20 = v19;
      sub_10004BD60();

      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {
        (*(v13 + 8))(v17, v12);
        sub_10000A138(v6, &qword_100068020, &qword_100053B30);
        return 0;
      }

      else
      {
        (*(v8 + 32))(v11, v6, v7);
        v21 = sub_1000381D4(v11);
        (*(v8 + 8))(v11, v7);
        (*(v13 + 8))(v17, v12);
        return v21;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_100027664(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_100003150(&qword_100068020, &qword_100053B30);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v26 - v7;
  v9 = sub_10004A350();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *&v2[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_diffableDataSource];
  if (!v14)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v15 = v14;
  sub_10004BD70();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10000A138(v8, &qword_100068020, &qword_100053B30);
    return;
  }

  (*(v10 + 32))(v13, v8, v9);
  v16 = [v2 collectionView];
  if (!v16)
  {
    goto LABEL_11;
  }

  v17 = v16;
  [a2 locationInView:v16];
  v19 = v18;
  v21 = v20;

  v22 = [v3 collectionView];
  if (!v22)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v23 = v22;
  v24 = [v22 hitTest:0 withEvent:{v19, v21}];

  if (v24 && (sub_10004BC90(), v25 = sub_10004BC20(), v24, (v25 & 1) != 0))
  {
    (*(v10 + 8))(v13, v9);
  }

  else
  {
    sub_1000389C4(v13);
    (*(v10 + 8))(v13, v9);
  }
}

void sub_10002790C(uint64_t a1)
{
  v2 = sub_100003150(&qword_100068020, &qword_100053B30);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v13 - v4;
  v6 = sub_10004A350();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_diffableDataSource);
  if (v11)
  {
    v12 = v11;
    sub_10004BD70();

    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_10000A138(v5, &qword_100068020, &qword_100053B30);
    }

    else
    {
      (*(v7 + 32))(v10, v5, v6);
      sub_100036DB8(v10);
      (*(v7 + 8))(v10, v6);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100027ADC(void *a1)
{
  if (sub_10004A140())
  {
    return 0;
  }

  v3 = [a1 items];
  sub_100009FF0(0, &qword_100068090, UIDragItem_ptr);
  v4 = sub_10004C720();

  if (v4 >> 62)
  {
LABEL_17:
    v5 = sub_10004CD50();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; v5 != i; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = sub_10004CC90();
    }

    else
    {
      if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    type metadata accessor for TTRISECreateRemindersDragItem(0);
    v9 = sub_1000490D0(v8);
    if (v9)
    {
      v10 = v9;

      return 1;
    }
  }

  return 0;
}

uint64_t sub_100027C30(uint64_t a1, uint64_t a2)
{
  v89 = a2;
  v86 = a1;
  v2 = sub_100003150(&qword_100068038, &qword_1000536B0);
  v81 = *(v2 - 8);
  v82 = v2;
  __chkstk_darwin(v2, v3);
  v87 = &v75 - v4;
  v5 = sub_100003150(&qword_100068020, &qword_100053B30);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v77 = &v75 - v11;
  v12 = sub_100003150(&qword_100068078, &qword_1000536F0);
  v13 = *(v12 - 8);
  v84 = v12;
  v85 = v13;
  __chkstk_darwin(v12, v14);
  v76 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v80 = &v75 - v18;
  v19 = sub_100003150(&qword_100068050, &qword_1000536C8);
  __chkstk_darwin(v19 - 8, v20);
  v22 = &v75 - v21;
  v78 = sub_100003150(&qword_100068058, &qword_1000536D0);
  __chkstk_darwin(v78, v23);
  v25 = &v75 - v24;
  v26 = sub_10004A350();
  v88 = *(v26 - 8);
  __chkstk_darwin(v26, v27);
  v79 = &v75 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29, v30);
  v83 = &v75 - v31;
  v32 = sub_100003150(&qword_100068060, &qword_1000536D8);
  v33 = *(v32 - 8);
  __chkstk_darwin(v32, v34);
  v36 = &v75 - v35;
  v37 = sub_100003150(&qword_100068068, &qword_1000536E0);
  v38 = *(v37 - 8);
  v40 = __chkstk_darwin(v37, v39);
  v42 = &v75 - v41;
  (*(v38 + 16))(&v75 - v41, v89, v37, v40);
  v43 = (*(v38 + 88))(v42, v37);
  if (v43 == enum case for TTRTreeViewDropDestination.insertAt<A, B>(_:))
  {
    (*(v38 + 96))(v42, v37);
    (*(v33 + 4))(v36, v42, v32);
    v44 = v90;
    v45 = *(v90 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_diffableDataSource);
    if (v45)
    {
      v46 = v45;
      sub_10004BD50();

      v47 = sub_100003150(&qword_100068070, &qword_1000536E8);
      if ((*(*(v47 - 8) + 48))(v22, 1, v47) == 1)
      {
        (*(v33 + 1))(v36, v32);
        sub_10000A138(v22, &qword_100068050, &qword_1000536C8);
        return 0;
      }

      v82 = v36;
      v87 = v33;
      v89 = v32;
      v53 = *&v22[*(v47 + 48)];
      v54 = v78;
      v55 = *(v78 + 48);
      v56 = *(v88 + 32);
      v56(v25, v22, v26);
      *&v25[v55] = v53;
      v81 = *&v25[*(v54 + 48)];
      v57 = v83;
      v58 = (v56)(v83, v25, v26);
      v60 = v84;
      v59 = v85;
      __chkstk_darwin(v58, v61);
      *(&v75 - 2) = v44;
      sub_100003150(&qword_100068080, &qword_1000536F8);
      v62 = v80;
      sub_10004B300();
      v63 = (*(v59 + 88))(v62, v60);
      if (v63 == enum case for TTRICollectionViewDragItemSources.DraggedItemsForValidation.local<A><A1>(_:))
      {
        (*(v59 + 96))(v62, v60);
        v64 = v88;
        v65 = v77;
        (*(v88 + 16))(v77, v57, v26);
        (*(v64 + 56))(v65, 0, 1, v26);
        v66 = sub_10004A250();

        sub_10000A138(v65, &qword_100068020, &qword_100053B30);
        (*(v64 + 8))(v57, v26);
        (*(v87 + 1))(v82, v89);
        goto LABEL_17;
      }

      if (v63 == enum case for TTRICollectionViewDragItemSources.DraggedItemsForValidation.external<A><A1>(_:))
      {
        (*(v88 + 8))(v83, v26);
        (*(v87 + 1))(v82, v89);
        (*(v59 + 8))(v62, v60);
        return 0;
      }

      goto LABEL_28;
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    sub_10004CDC0();
    __break(1u);
    goto LABEL_29;
  }

  v48 = v90;
  if (v43 == enum case for TTRTreeViewDropDestination.insertInto<A, B>(_:))
  {
    (*(v38 + 96))(v42, v37);
    v38 = v81;
    v22 = v82;
    v49 = v87;
    (*(v81 + 32))(v87, v42, v82);
    v50 = *(v48 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_diffableDataSource);
    if (!v50)
    {
      goto LABEL_27;
    }

    v51 = v50;
    sub_10004BD40();

    v37 = v88;
    v52 = (*(v88 + 48))(v8, 1, v26);
    v33 = v79;
    if (v52 == 1)
    {
      (*(v38 + 8))(v49, v22);
      sub_10000A138(v8, &qword_100068020, &qword_100053B30);
      return 0;
    }
  }

  else
  {
    if (v43 == enum case for TTRTreeViewDropDestination.copyToAround<A, B>(_:))
    {
      (*(v38 + 8))(v42, v37);
      return 0;
    }

    if (v43 == enum case for TTRTreeViewDropDestination.unknown<A, B>(_:))
    {
      return 0;
    }

    sub_10004CDC0();
    __break(1u);
  }

  v67 = (*(v37 + 32))(v33, v8, v26);
  v68 = v37;
  __chkstk_darwin(v67, v69);
  *(&v75 - 2) = v48;
  sub_100003150(&qword_100068080, &qword_1000536F8);
  v70 = v76;
  v71 = v85;
  sub_10004B300();
  v72 = v84;
  v73 = (*(v71 + 88))(v70, v84);
  if (v73 != enum case for TTRICollectionViewDragItemSources.DraggedItemsForValidation.local<A><A1>(_:))
  {
    if (v73 == enum case for TTRICollectionViewDragItemSources.DraggedItemsForValidation.external<A><A1>(_:))
    {
      (*(v37 + 8))(v33, v26);
      (*(v38 + 8))(v87, v22);
      (*(v71 + 8))(v70, v72);
      return 0;
    }

LABEL_29:
    result = sub_10004CDC0();
    __break(1u);
    return result;
  }

  (*(v71 + 96))(v70, v72);
  v66 = sub_10004A240();

  (*(v68 + 8))(v33, v26);
  (*(v38 + 8))(v87, v22);
LABEL_17:
  if (v66)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000286F4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100003150(&qword_100068038, &qword_1000536B0);
  v122 = *(v4 - 8);
  v123 = v4;
  __chkstk_darwin(v4, v5);
  v126 = &v110 - v6;
  v131 = sub_10004A380();
  v115 = *(v131 - 8);
  __chkstk_darwin(v131, v7);
  v111 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v114 = &v110 - v11;
  v113 = sub_100003150(&qword_100068040, &qword_1000536B8);
  v128 = *(v113 - 8);
  __chkstk_darwin(v113, v12);
  v110 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  v112 = &v110 - v16;
  v17 = sub_100003150(&qword_100068020, &qword_100053B30);
  __chkstk_darwin(v17 - 8, v18);
  v118 = &v110 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v21);
  v116 = &v110 - v22;
  v23 = sub_100003150(&qword_100068048, &qword_1000536C0);
  v124 = *(v23 - 8);
  v125 = v23;
  __chkstk_darwin(v23, v24);
  v119 = &v110 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26, v27);
  v120 = (&v110 - v28);
  v29 = sub_100003150(&qword_100068050, &qword_1000536C8);
  __chkstk_darwin(v29 - 8, v30);
  v32 = &v110 - v31;
  v117 = sub_100003150(&qword_100068058, &qword_1000536D0);
  __chkstk_darwin(v117, v33);
  v35 = &v110 - v34;
  v127 = sub_10004A350();
  v129 = *(v127 - 8);
  __chkstk_darwin(v127, v36);
  v130 = (&v110 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v38, v39);
  v121 = (&v110 - v40);
  v41 = sub_100003150(&qword_100068060, &qword_1000536D8);
  v42 = *(v41 - 8);
  __chkstk_darwin(v41, v43);
  v45 = &v110 - v44;
  v46 = sub_100003150(&qword_100068068, &qword_1000536E0);
  v47 = *(v46 - 8);
  __chkstk_darwin(v46, v48);
  v50 = &v110 - v49;
  v132 = a1;
  sub_10004B790();
  result = (*(v47 + 11))(v50, v46);
  if (result == enum case for TTRTreeViewDropDestination.insertAt<A, B>(_:))
  {
    (*(v47 + 12))(v50, v46);
    (*(v42 + 4))(v45, v50, v41);
    v52 = *&v2[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_diffableDataSource];
    if (v52)
    {
      v53 = v52;
      sub_10004BD50();

      v54 = sub_100003150(&qword_100068070, &qword_1000536E8);
      if ((*(*(v54 - 8) + 48))(v32, 1, v54) == 1)
      {
        (*(v42 + 1))(v45, v41);
        v55 = &qword_100068050;
        v56 = &qword_1000536C8;
        v57 = v32;
        return sub_10000A138(v57, v55, v56);
      }

      v122 = v45;
      v123 = v42;
      v126 = v41;
      v62 = *&v32[*(v54 + 48)];
      v63 = *(v117 + 48);
      v64 = v129;
      v65 = v129[4];
      v66 = v32;
      v67 = v127;
      v65(v35, v66, v127);
      *&v35[v63] = v62;
      v68 = v121;
      v69 = (v65)(v121, v35, v67);
      v70 = v67;
      __chkstk_darwin(v69, v71);
      *(&v110 - 2) = v2;
      v72 = v120;
      sub_10004B7A0();
      v74 = v124;
      v73 = v125;
      v75 = (*(v124 + 88))(v72, v125);
      if (v75 == enum case for TTRICollectionViewDropCommitCoordinator.DraggedItemsForCommitting.local<A><A1>(_:))
      {
        (*(v74 + 96))(v72, v73);
        v125 = *v72;
        v76 = v116;
        v64[2](v116, v68, v67);
        (v64[7])(v76, 0, 1, v67);
        if (qword_100066F40 != -1)
        {
          swift_once();
        }

        v77 = sub_10004C1B0();
        sub_10000D49C(v77, qword_1000685E0);
        v78 = sub_100011BA4(_swiftEmptyArrayStorage);
        sub_100014D1C("Create Reminders Move Items", 27, 2, v78);

        v79 = sub_10004A040();

        sub_10000A138(v76, &qword_100068020, &qword_100053B30);
        if ((v79 & 1) != 0 && (v80 = *(v125 + 16)) != 0)
        {
          v81 = v128 + 16;
          v130 = *(v128 + 16);
          v82 = v125 + ((*(v128 + 80) + 32) & ~*(v128 + 80));
          v83 = v113;
          v84 = v114;
          v128 = *(v128 + 72);
          v85 = (v115 + 8);
          v86 = v112;
          do
          {
            v130(v86, v82, v83);
            v87 = sub_10004B770();
            sub_10004B780();
            (*(v81 - 8))(v86, v83);
            sub_10004B7C0();

            (*v85)(v84, v131);
            v82 += v128;
            --v80;
          }

          while (v80);

          v70 = v127;
          v64 = v129;
          v68 = v121;
        }

        else
        {
        }

        (v64[1])(v68, v70);
        return (*(v123 + 1))(v122, v126);
      }

      if (v75 == enum case for TTRICollectionViewDropCommitCoordinator.DraggedItemsForCommitting.external<A><A1>(_:))
      {
        (v129[1])(v68, v67);
        (*(v123 + 1))(v122, v126);
        return (*(v74 + 8))(v72, v73);
      }

LABEL_42:
      result = sub_10004CDC0();
      __break(1u);
      return result;
    }

    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (result == enum case for TTRTreeViewDropDestination.insertInto<A, B>(_:))
  {
    (*(v47 + 12))(v50, v46);
    v47 = v122;
    v35 = v123;
    v58 = v126;
    (*(v122 + 4))(v126, v50, v123);
    v59 = *&v2[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_diffableDataSource];
    if (!v59)
    {
      goto LABEL_41;
    }

    v50 = v2;
    v60 = v59;
    v2 = v118;
    sub_10004BD40();

    v45 = v129;
    v46 = v127;
    v61 = (v129[6])(v2, 1, v127) == 1;
    v41 = v130;
    v42 = v119;
    if (v61)
    {
      (*(v47 + 1))(v58, v35);
      v55 = &qword_100068020;
      v56 = &qword_100053B30;
      v57 = v2;
      return sub_10000A138(v57, v55, v56);
    }
  }

  else
  {
    if (result == enum case for TTRTreeViewDropDestination.copyToAround<A, B>(_:))
    {
      return (*(v47 + 1))(v50, v46);
    }

    if (result == enum case for TTRTreeViewDropDestination.unknown<A, B>(_:))
    {
      return result;
    }

    sub_10004CDC0();
    __break(1u);
  }

  v88 = (*(v45 + 4))(v41, v2, v46);
  __chkstk_darwin(v88, v89);
  *(&v110 - 2) = v50;
  sub_10004B7A0();
  v91 = v124;
  v90 = v125;
  v92 = (*(v124 + 88))(v42, v125);
  if (v92 != enum case for TTRICollectionViewDropCommitCoordinator.DraggedItemsForCommitting.local<A><A1>(_:))
  {
    if (v92 == enum case for TTRICollectionViewDropCommitCoordinator.DraggedItemsForCommitting.external<A><A1>(_:))
    {
      (v129[1])(v41, v46);
      (*(v47 + 1))(v126, v35);
      return (*(v91 + 8))(v42, v90);
    }

    goto LABEL_42;
  }

  (*(v91 + 96))(v42, v90);
  v93 = *v42;
  if (qword_100066F40 != -1)
  {
    swift_once();
  }

  v94 = sub_10004C1B0();
  sub_10000D49C(v94, qword_1000685E0);
  v95 = sub_100011BA4(_swiftEmptyArrayStorage);
  sub_100014D1C("Create Reminders Drop Items Into Item", 37, 2, v95);

  v96 = sub_10004A030();

  v97 = v129;
  if ((v96 & 1) != 0 && (v98 = *(v93 + 2)) != 0)
  {
    v99 = *(v128 + 16);
    v100 = *(v128 + 80);
    v120 = v93;
    v101 = &v93[(v100 + 32) & ~v100];
    v102 = v113;
    v103 = v114;
    v124 = *(v128 + 72);
    v125 = v99;
    v128 += 16;
    v121 = (v128 - 8);
    v104 = (v115 + 8);
    v105 = v131;
    v106 = v111;
    v107 = v110;
    do
    {
      (v125)(v107, v101, v102);
      v108 = sub_10004B770();
      sub_10004B780();
      (*v121)(v107, v102);
      sub_10004A310();
      sub_10004B7B0();

      v109 = *v104;
      (*v104)(v106, v105);
      v109(v103, v105);
      v101 += v124;
      --v98;
    }

    while (v98);

    v46 = v127;
    v97 = v129;
    v41 = v130;
  }

  else
  {
  }

  v97[1](v41, v46);
  return (*(v122 + 1))(v126, v123);
}

id sub_1000295A8()
{
  result = [v0 collectionView];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = result;
  v3 = [result hasActiveDrag];

  if ((v3 & 1) == 0)
  {
    result = [v0 collectionView];
    if (result)
    {
      v4 = result;
      [result hasActiveDrop];

      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return result;
  }

LABEL_5:
  sub_10004BF30();

  sub_10004BB20();
}

void sub_100029690(uint64_t a1)
{
  v2 = sub_100003150(&qword_100068030, &qword_1000536A8);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v22 - v4;
  v6 = sub_100003150(&qword_100068020, &qword_100053B30);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v22 - v8;
  v10 = sub_10004A350();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_diffableDataSource);
  if (v15)
  {
    v16 = v15;
    sub_10004BD70();

    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      v17 = &qword_100068020;
      v18 = &qword_100053B30;
      v19 = v9;
LABEL_6:
      sub_10000A138(v19, v17, v18);
      return;
    }

    (*(v11 + 32))(v14, v9, v10);
    sub_10004A0C0();
    v20 = sub_10004AD70();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v5, 1, v20) == 1)
    {
      (*(v11 + 8))(v14, v10);
      v17 = &qword_100068030;
      v18 = &qword_1000536A8;
      v19 = v5;
      goto LABEL_6;
    }

    sub_10004AD50();
    (*(v11 + 8))(v14, v10);
    (*(v21 + 8))(v5, v20);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100029988()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000299D0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100029A10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002A6A0;

  return sub_100036178(a1, v4, v5, v6);
}

uint64_t sub_100029AC4()
{

  sub_10000343C((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100029B04(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4[2] = v1 + 24;
  v4[3] = a1;
  return sub_100022228(sub_100029B54, v4, v2);
}

double sub_100029B54@<D0>(uint64_t a2@<X8>)
{
  sub_1000032DC(*(v2 + 16), *(*(v2 + 16) + 24));
  sub_10004A4F0();
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_100029BFC()
{
  v1 = sub_100003150(&qword_100068128, &qword_100053778);
  v27 = *(v1 - 8);
  v28 = v1;
  v25 = *(v27 + 80);
  v2 = *(v27 + 64);
  v26 = sub_100003150(&qword_100068120, &qword_100053770);
  v3 = *(v26 - 8);
  v4 = *(v3 + 80);
  v22 = (((v25 + 24) & ~v25) + v2 + v4) & ~v4;
  v5 = *(v3 + 64);
  v24 = sub_100003150(&qword_100068118, &qword_100053768);
  v6 = *(v24 - 8);
  v7 = *(v6 + 80);
  v8 = (v22 + v5 + v7) & ~v7;
  v20 = v8;
  v9 = *(v6 + 64);
  v23 = sub_100003150(&qword_100068110, &qword_100053760);
  v10 = *(v23 - 8);
  v11 = *(v10 + 80);
  v12 = (v8 + v9 + v11) & ~v11;
  v13 = *(v10 + 64);
  v21 = sub_100003150(&qword_100068108, &qword_100053758);
  v14 = *(v21 - 8);
  v15 = *(v14 + 80);
  v16 = (v12 + v13 + v15) & ~v15;
  v19 = *(v14 + 64);
  v17 = v25 | v4 | v7 | v11 | v15;

  (*(v27 + 8))(v0 + ((v25 + 24) & ~v25), v28);
  (*(v3 + 8))(v0 + v22, v26);
  (*(v6 + 8))(v0 + v20, v24);
  (*(v10 + 8))(v0 + v12, v23);
  (*(v14 + 8))(v0 + v16, v21);

  return _swift_deallocObject(v0, v16 + v19, v17 | 7);
}

char *sub_100029F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_100003150(&qword_100068128, &qword_100053778) - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_100003150(&qword_100068120, &qword_100053770) - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(sub_100003150(&qword_100068118, &qword_100053768) - 8);
  v14 = (v11 + v12 + *(v13 + 80)) & ~*(v13 + 80);
  v15 = *(v13 + 64);
  v16 = *(sub_100003150(&qword_100068110, &qword_100053760) - 8);
  v17 = (v14 + v15 + *(v16 + 80)) & ~*(v16 + 80);
  v18 = *(v16 + 64);
  v19 = *(sub_100003150(&qword_100068108, &qword_100053758) - 8);
  return sub_10001F7AC(a1, a2, a3, *(v3 + 16), v3 + v8, v3 + v11, v3 + v14, v3 + v17, v3 + ((v17 + v18 + *(v19 + 80)) & ~*(v19 + 80)));
}

uint64_t sub_10002A17C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002A1BC()
{
  v1 = sub_100003150(&qword_100068100, &qword_100053750);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_100003150(&qword_1000680F8, &qword_100053748);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

void sub_10002A324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_100003150(&qword_100068100, &qword_100053750) - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_100003150(&qword_1000680F8, &qword_100053748) - 8);
  v13 = *(v4 + 16);
  v14 = v4 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80));

  sub_100020158(a1, a2, a3, a4, v13, v4 + v10, v14);
}

uint64_t sub_10002A4AC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10002A4C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10002A56C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002A5B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002A5CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002A634(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void static TTRSECreateRemindersViewModel.ListPickerCellState.placeholder.getter(void *a1@<X8>)
{
  type metadata accessor for TTRSECreateRemindersViewModel.ListPickerCellState(0);
  sub_10004AE00();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
}

uint64_t TTRSECreateRemindersViewModel.ListPickerCellState.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TTRSECreateRemindersViewModel.ListPickerCellState.badge.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TTRSECreateRemindersViewModel.ListPickerCellState(0) + 20);
  v4 = sub_10004AE10();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TTRSECreateRemindersViewModel.ListPickerCellState.init(name:badge:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for TTRSECreateRemindersViewModel.ListPickerCellState(0) + 20);
  v7 = sub_10004AE10();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t static TTRSECreateRemindersViewModel.ListPickerCellState.__derived_struct_equals(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_10004CDD0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for TTRSECreateRemindersViewModel.ListPickerCellState(0);

  return sub_10004ADF0();
}

uint64_t sub_10002A8B0(void *a1, void *a2, uint64_t a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (!v3 && (sub_10004CDD0() & 1) == 0)
  {
    return 0;
  }

  return sub_10004ADF0();
}

char *_s19ListPickerCellStateVwCP(char *a1, char *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + ((v4 + 16) & ~v4));
  }

  else
  {
    v5 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v5;
    v6 = *(a3 + 20);
    v8 = sub_10004AE10();
    v9 = *(*(v8 - 8) + 16);

    v9(&v3[v6], &a2[v6], v8);
  }

  return v3;
}

uint64_t _s19ListPickerCellStateVwxx(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 20);
  v5 = sub_10004AE10();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

char *_s19ListPickerCellStateVwcp(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  v6 = *(a3 + 20);
  v7 = sub_10004AE10();
  v8 = *(*(v7 - 8) + 16);

  v8(&a1[v6], &a2[v6], v7);
  return a1;
}

char *_s19ListPickerCellStateVwca(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);

  v6 = *(a3 + 20);
  v7 = sub_10004AE10();
  (*(*(v7 - 8) + 24))(&a1[v6], &a2[v6], v7);
  return a1;
}

char *_s19ListPickerCellStateVwtk(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = sub_10004AE10();
  (*(*(v6 - 8) + 32))(&a1[v5], &a2[v5], v6);
  return a1;
}

char *_s19ListPickerCellStateVwta(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v7 = *(a3 + 20);
  v8 = sub_10004AE10();
  (*(*(v8 - 8) + 40))(&a1[v7], &a2[v7], v8);
  return a1;
}

uint64_t sub_10002ACC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10004AE10();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10002AD80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10004AE10();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10002AE24(uint64_t a1)
{
  result = sub_10004AE10();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *sub_10002AEBC(char *a1, char *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v14 = *a2;
    *v3 = *a2;
    v3 = (v14 + ((v4 + 16) & ~v4));
  }

  else
  {
    v6 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v6;
    v8 = *(type metadata accessor for TTRSECreateRemindersViewModel.ListPickerCellState(0) + 20);
    v9 = sub_10004AE10();
    v10 = *(*(v9 - 8) + 16);

    v10(&v3[v8], &a2[v8], v9);
    v11 = *(a3 + 20);
    v12 = *&a2[v11];
    *&v3[v11] = v12;
    v13 = v12;
  }

  return v3;
}

void sub_10002AFB8(uint64_t a1, uint64_t a2)
{

  v4 = *(type metadata accessor for TTRSECreateRemindersViewModel.ListPickerCellState(0) + 20);
  v5 = sub_10004AE10();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  v6 = *(a1 + *(a2 + 20));
}

char *sub_10002B048(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = *(type metadata accessor for TTRSECreateRemindersViewModel.ListPickerCellState(0) + 20);
  v8 = sub_10004AE10();
  v9 = *(*(v8 - 8) + 16);

  v9(&a1[v7], &a2[v7], v8);
  v10 = *(a3 + 20);
  v11 = *&a2[v10];
  *&a1[v10] = v11;
  v12 = v11;
  return a1;
}

char *sub_10002B0F8(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);

  v6 = *(type metadata accessor for TTRSECreateRemindersViewModel.ListPickerCellState(0) + 20);
  v7 = sub_10004AE10();
  (*(*(v7 - 8) + 24))(&a1[v6], &a2[v6], v7);
  v8 = *(a3 + 20);
  v9 = *&a1[v8];
  v10 = *&a2[v8];
  *&a1[v8] = v10;
  v11 = v10;

  return a1;
}

char *sub_10002B1AC(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(type metadata accessor for TTRSECreateRemindersViewModel.ListPickerCellState(0) + 20);
  v7 = sub_10004AE10();
  (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  return a1;
}

char *sub_10002B23C(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v7 = *(type metadata accessor for TTRSECreateRemindersViewModel.ListPickerCellState(0) + 20);
  v8 = sub_10004AE10();
  (*(*(v8 - 8) + 40))(&a1[v7], &a2[v7], v8);
  v9 = *(a3 + 20);
  v10 = *&a1[v9];
  *&a1[v9] = *&a2[v9];

  return a1;
}

uint64_t sub_10002B2F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRSECreateRemindersViewModel.ListPickerCellState(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_10002B3CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TTRSECreateRemindersViewModel.ListPickerCellState(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_10002B4A4(uint64_t a1)
{
  result = type metadata accessor for TTRSECreateRemindersViewModel.ListPickerCellState(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for TTRISECreateRemindersDiffableDataSource(uint64_t a1)
{
  result = qword_1000682A8;
  if (!qword_1000682A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002B5C4(uint64_t a1)
{
  v36 = a1;
  v1 = sub_100003150(&qword_100067F98, &unk_100053620);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v36 - v3;
  v5 = sub_100003150(&qword_100068140, &qword_100053788);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v36 - v7;
  v9 = sub_10004A390();
  v37 = *(v9 - 8);
  __chkstk_darwin(v9, v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v14);
  v16 = &v36 - v15;
  v17 = sub_100003150(&qword_100067F68, &unk_100053890);
  __chkstk_darwin(v17 - 8, v18);
  v20 = &v36 - v19;
  v21 = type metadata accessor for TTRISECreateRemindersPresentationTree(0);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21, v23);
  v25 = &v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004BD30();
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    v26 = &qword_100067F68;
    v27 = &unk_100053890;
    v28 = v20;
LABEL_8:
    sub_10000A138(v28, v26, v27);
    return;
  }

  sub_10002BC1C(v20, v25);
  sub_10004C410();
  v29 = sub_10004A380();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v4, 1, v29) == 1)
  {
    sub_10002BC80(v25);
    sub_10000A138(v4, &qword_100067F98, &unk_100053620);
    (*(v37 + 56))(v8, 1, 1, v9);
LABEL_7:
    v26 = &qword_100068140;
    v27 = &qword_100053788;
    v28 = v8;
    goto LABEL_8;
  }

  sub_10004A370();
  (*(v30 + 8))(v4, v29);
  v31 = v37;
  if ((*(v37 + 48))(v8, 1, v9) == 1)
  {
    sub_10002BC80(v25);
    goto LABEL_7;
  }

  (*(v31 + 32))(v16, v8, v9);
  (*(v31 + 16))(v12, v16, v9);
  v32 = (*(v31 + 88))(v12, v9);
  if (v32 == enum case for TTRSECreateRemindersViewModel.SectionID.listPicker(_:) || v32 == enum case for TTRSECreateRemindersViewModel.SectionID.reminders(_:) || v32 == enum case for TTRSECreateRemindersViewModel.SectionID.suggestions(_:))
  {
    (*(v31 + 8))(v16, v9);
    sub_10002BC80(v25);
  }

  else
  {
    if (qword_100066F28 != -1)
    {
      swift_once();
    }

    v33 = sub_10004C1B0();
    sub_10000D49C(v33, qword_100068290);
    v34 = sub_100011BA4(_swiftEmptyArrayStorage);
    v35 = sub_100011BA4(_swiftEmptyArrayStorage);
    sub_100014FC0("Unknown sectionID", 17, 2, v34, v35);
    __break(1u);
  }
}

uint64_t sub_10002BB00()
{
  v0 = sub_10004C1B0();
  sub_10000D51C(v0, qword_100068290);
  v1 = sub_10000D49C(v0, qword_100068290);
  if (qword_100066F08 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D49C(v0, qword_10006A2F8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10002BC1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRISECreateRemindersPresentationTree(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002BC80(uint64_t a1)
{
  v2 = type metadata accessor for TTRISECreateRemindersPresentationTree(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002BCE0(void *a1, _BYTE *a2, char *a3, void *a4)
{
  v63 = a3;
  v64 = a4;
  v62 = a2;
  v59 = a1;
  v4 = sub_100003150(&qword_1000683A8, &qword_100053938);
  __chkstk_darwin(v4 - 8, v5);
  v61 = &v54 - v6;
  v60 = sub_10004A720();
  v56 = *(v60 - 8);
  __chkstk_darwin(v60, v7);
  v55 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003150(&qword_100067888, &unk_100053940);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v54 - v11;
  v13 = sub_100003150(&qword_100067890, &qword_100052C70);
  __chkstk_darwin(v13 - 8, v14);
  v16 = &v54 - v15;
  v17 = sub_10004AC10();
  v57 = *(v17 - 8);
  v58 = v17;
  __chkstk_darwin(v17, v18);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10004C0B0();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21, v23);
  v25 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10004AB40();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26, v28);
  v30 = &v54 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10004BE10();
  v65 = *(v31 - 8);
  v66 = v31;
  __chkstk_darwin(v31, v32);
  v34 = &v54 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004BE00();
  *v30 = 1;
  v67 = v27;
  v68 = v26;
  v35 = v27;
  v36 = v56;
  (*(v35 + 104))(v30, enum case for TTRIReminderDetailStyle.quickBarDueDatePicker(_:), v26);
  v37 = enum case for REMNavigationSpecifier.ReminderPathSpecifier.DateVisibleSection.date(_:);
  v38 = sub_10004C0C0();
  (*(*(v38 - 8) + 104))(v25, v37, v38);
  v69 = v22;
  v70 = v21;
  (*(v22 + 104))(v25, enum case for REMNavigationSpecifier.ReminderPathSpecifier.DetailSection.dueDate(_:), v21);
  sub_10004AD90();
  v39 = v59;
  sub_10004AC00();
  v40 = sub_10004A5C0();
  (*(*(v40 - 8) + 56))(v16, 1, 1, v40);
  v41 = sub_10004BCD0();
  (*(*(v41 - 8) + 56))(v12, 1, 1, v41);
  v62 = v30;
  v63 = v34;
  v42 = v25;
  v43 = sub_10004AD80();
  sub_10000A138(v12, &qword_100067888, &unk_100053940);
  sub_10000A138(v16, &qword_100067890, &qword_100052C70);
  (*(v57 + 8))(v20, v58);
  swift_getObjectType();
  sub_10004B340();

  v44 = objc_allocWithZone(UINavigationController);
  v59 = v43;
  v45 = [v44 initWithRootViewController:v43];
  sub_1000032DC(v64, v64[3]);
  v46 = v61;
  v47 = v60;
  sub_10004BD00();
  if ((*(v36 + 48))(v46, 1, v47) == 1)
  {
    sub_10000A138(v46, &qword_1000683A8, &qword_100053938);
  }

  else
  {
    v48 = v55;
    (*(v36 + 32))(v55, v46, v47);
    sub_10004C950();
    (*(v36 + 8))(v48, v47);
  }

  v49 = [v45 presentationController];
  if (v49)
  {
    v50 = v49;
    sub_10004B330();
  }

  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v52 = Strong;
    [Strong presentViewController:v45 animated:1 completion:0];
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  (*(v69 + 8))(v42, v70);
  (*(v67 + 8))(v62, v68);
  return (*(v65 + 8))(v63, v66);
}

uint64_t sub_10002C444(void *a1, char *a2, void *a3, char *a4, void *a5)
{
  v58 = a4;
  v59 = a5;
  v55 = a3;
  v61 = a2;
  v6 = sub_100003150(&qword_1000683A8, &qword_100053938);
  __chkstk_darwin(v6 - 8, v7);
  v57 = &v52 - v8;
  v56 = sub_10004A720();
  v54 = *(v56 - 8);
  __chkstk_darwin(v56, v9);
  v53 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003150(&qword_100067888, &unk_100053940);
  __chkstk_darwin(v11 - 8, v12);
  v14 = &v52 - v13;
  v15 = sub_100003150(&qword_100067890, &qword_100052C70);
  __chkstk_darwin(v15 - 8, v16);
  v18 = &v52 - v17;
  v19 = sub_10004AC10();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19, v21);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10004C0B0();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24, v26);
  v28 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10004AB40();
  v31 = __chkstk_darwin(v29, v30);
  v33 = &v52 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v34;
  v35 = *(v34 + 104);
  v62 = v36;
  v35(v33, enum case for TTRIReminderDetailStyle.assignmentPicker(_:), v31);
  v63 = v25;
  v64 = v24;
  (*(v25 + 104))(v28, enum case for REMNavigationSpecifier.ReminderPathSpecifier.DetailSection.assignments(_:), v24);
  sub_10004AD90();
  v37 = a1;
  sub_10004AC00();
  v38 = sub_10004A5C0();
  (*(*(v38 - 8) + 56))(v18, 1, 1, v38);
  v39 = sub_10004BCD0();
  (*(*(v39 - 8) + 56))(v14, 1, 1, v39);
  v58 = v33;
  v40 = sub_10004AD80();
  sub_10000A138(v14, &qword_100067888, &unk_100053940);
  sub_10000A138(v18, &qword_100067890, &qword_100052C70);
  (*(v20 + 8))(v23, v19);
  v41 = v54;
  swift_getObjectType();
  v61 = v28;
  v42 = v56;
  sub_10004B340();

  v43 = objc_allocWithZone(UINavigationController);
  v55 = v40;
  v44 = [v43 initWithRootViewController:v40];
  sub_1000032DC(v59, v59[3]);
  v45 = v57;
  sub_10004BD00();
  if ((*(v41 + 48))(v45, 1, v42) == 1)
  {
    sub_10000A138(v45, &qword_1000683A8, &qword_100053938);
  }

  else
  {
    v46 = v53;
    (*(v41 + 32))(v53, v45, v42);
    sub_10004C950();
    (*(v41 + 8))(v46, v42);
  }

  v47 = [v44 presentationController];
  if (v47)
  {
    v48 = v47;
    sub_10004B330();
  }

  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v50 = Strong;
    [Strong presentViewController:v44 animated:1 completion:0];
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  (*(v63 + 8))(v61, v64);
  return (*(v60 + 8))(v58, v62);
}

void sub_10002CAC0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (*(v0 + 32) || (sub_10004A7F0(), swift_allocObject(), v2 = v3, *(v0 + 32) = sub_10004A7E0(), , *(v0 + 32)))
    {

      sub_10004A7D0();
    }
  }
}

uint64_t sub_10002CB8C()
{
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_10002CC00()
{
  v0 = sub_10004C1B0();
  sub_10000D51C(v0, qword_1000683B0);
  v1 = sub_10000D49C(v0, qword_1000683B0);
  if (qword_100066F08 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D49C(v0, qword_10006A2F8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10002CCC8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_100003150(&qword_100068428, &qword_1000539D8);
  __chkstk_darwin(v10 - 8, v11);
  v13 = &v53 - v12;
  v14 = sub_10004CB10();
  v54 = *(v14 - 8);
  v55 = v14;
  __chkstk_darwin(v14, v15);
  v53 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10004CB50();
  v57 = *(v17 - 8);
  v58 = v17;
  __chkstk_darwin(v17, v18);
  v56 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v21);
  v23 = &v53 - v22;
  v24 = sub_100049F00();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24, v26);
  v28 = &v53 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = &v4[OBJC_IVAR____TtC25RemindersSharingExtension41TTRISECreateRemindersSuggestionFooterCell_feedbackButtonHandler];
  *v29 = 0;
  *(v29 + 1) = 0;
  v63.receiver = v4;
  v63.super_class = ObjectType;
  v30 = objc_msgSendSuper2(&v63, "initWithFrame:", a1, a2, a3, a4);
  v61 = &_s25RemindersSharingExtension37ContentConfigurationForContentBoxViewVN_0;
  v62 = sub_10002D928();
  v31 = v30;
  sub_10004C990();
  v32 = [v31 contentView];
  _s25RemindersSharingExtension14ContentBoxViewCMa_0();
  v33 = swift_dynamicCastClass();
  if (!v33)
  {

    if (qword_100066F30 != -1)
    {
      swift_once();
    }

    v34 = sub_10004C1B0();
    sub_10000D49C(v34, qword_1000683B0);
    v35 = sub_10004C1A0();
    v36 = sub_10004C890();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "TTRIRemindersListEditableSectionCell_collectionView: failed to create ContentBoxView", v37, 2u);
    }

    v33 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v32 = v33;
  }

  v38 = v33;
  v39 = v32;
  v40 = v38;
  [v40 setHorizontalAlignment:4];
  [v40 setVerticalAlignment:0];
  [v40 setPreservesSuperviewLayoutMargins:0];
  [v40 setDirectionalLayoutMargins:{8.0, 0.0, 10.0, 0.0}];
  [v40 setLayoutMarginsRelativeArrangement:1];
  [v40 setDebugBoundingBoxesEnabled:0];
  sub_10004C620();
  (*(v25 + 104))(v28, enum case for FBKSEvaluation.Action.reportConcern(_:), v24);
  sub_10004C610();
  (*(v25 + 8))(v28, v24);
  v41 = sub_10004C680();

  v42 = [objc_opt_self() systemImageNamed:v41];

  v59 = v42;
  sub_100003150(&qword_100068430, &unk_1000539E0);
  sub_10004CB70();

  v43 = v60;
  sub_10004AA60();
  sub_10004CAA0();
  (*(v54 + 104))(v53, enum case for UIButton.Configuration.Size.medium(_:), v55);
  sub_10004CAB0();
  sub_10004CB40();
  v44 = v43;
  sub_10004CB30();
  sub_10004CAE0();
  sub_10004C4F0();
  v45 = sub_10004C4E0();
  (*(*(v45 - 8) + 56))(v13, 0, 1, v45);
  sub_10004CB00();
  sub_100009FF0(0, &qword_100068438, UIButton_ptr);
  v46 = v57;
  v47 = v58;
  (*(v57 + 16))(v56, v23, v58);
  sub_100009FF0(0, &qword_100067D68, UIAction_ptr);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10004CA90();
  v48 = sub_10004CB60();

  sub_100003150(&qword_1000674B0, &qword_1000528A0);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_100052620;
  *(v49 + 32) = v48;
  sub_100009FF0(0, &qword_1000674B8, UIView_ptr);
  v50 = v48;
  isa = sub_10004C710().super.isa;

  [v40 setArrangedSubviews:isa];

  (*(v46 + 8))(v23, v47);
  return v31;
}

uint64_t sub_10002D44C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100049DB0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  sub_100009FF0(0, &qword_1000674A8, UIFont_ptr);
  sub_10004CA00();
  sub_10002DA14();
  return sub_100049DC0();
}

void sub_10002D500(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *&Strong[OBJC_IVAR____TtC25RemindersSharingExtension41TTRISECreateRemindersSuggestionFooterCell_feedbackButtonHandler];
    if (v4)
    {
      v5 = *&Strong[OBJC_IVAR____TtC25RemindersSharingExtension41TTRISECreateRemindersSuggestionFooterCell_feedbackButtonHandler + 8];
      sub_10002DA04(*&Strong[OBJC_IVAR____TtC25RemindersSharingExtension41TTRISECreateRemindersSuggestionFooterCell_feedbackButtonHandler], v5);

      v4();
      sub_10002A4AC(v4, v5);
    }

    else
    {
    }
  }
}

unint64_t sub_10002D82C@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &_s25RemindersSharingExtension37ContentConfigurationForContentBoxViewVN_0;
  result = sub_10002D928();
  *(a1 + 32) = result;
  return result;
}

void (*sub_10002D860(uint64_t *a1))(void **a1)
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
  *(v2 + 24) = &_s25RemindersSharingExtension37ContentConfigurationForContentBoxViewVN_0;
  *(v2 + 32) = sub_10002D928();
  return sub_100016960;
}

uint64_t sub_10002D8D8(uint64_t a1)
{
  sub_10000DAC4(a1, v2);
  sub_100003150(&qword_100067C68, &unk_100052F40);
  return swift_dynamicCast();
}

unint64_t sub_10002D928()
{
  result = qword_100068420;
  if (!qword_100068420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068420);
  }

  return result;
}

uint64_t sub_10002D97C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10002D9BC()
{
  _s25RemindersSharingExtension14ContentBoxViewCMa_0();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_10002DA78();
  return v0;
}

uint64_t sub_10002DA04(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_10002DA14()
{
  result = qword_100068440;
  if (!qword_100068440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068440);
  }

  return result;
}

unint64_t sub_10002DA78()
{
  result = qword_100068448;
  if (!qword_100068448)
  {
    _s25RemindersSharingExtension14ContentBoxViewCMa_0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068448);
  }

  return result;
}

char *sub_10002DAD0(uint64_t a1, uint64_t *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v13 = *a2;
    *v3 = *a2;
    v3 = (v13 + ((v4 + 16) & ~v4));
  }

  else
  {
    v6 = *(a2 + 3);
    *(a1 + 24) = v6;
    (**(v6 - 8))(a1);
    v8 = a2[6];
    *(v3 + 5) = a2[5];
    *(v3 + 6) = v8;
    v9 = a3[7];
    v10 = sub_10004B830();
    v11 = *(*(v10 - 8) + 16);

    v11(&v3[v9], a2 + v9, v10);
    v12 = a3[9];
    v3[a3[8]] = *(a2 + a3[8]);
    v3[v12] = *(a2 + v12);
    v3[a3[10]] = *(a2 + a3[10]);
  }

  return v3;
}

uint64_t sub_10002DC1C(char *a1, uint64_t a2)
{
  sub_10000343C(a1);

  v4 = *(a2 + 28);
  v5 = sub_10004B830();
  v6 = *(*(v5 - 8) + 8);

  return v6(&a1[v4], v5);
}

uint64_t sub_10002DC9C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 24);
  *(a1 + 24) = v6;
  (**(v6 - 8))();
  v7 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v7;
  v8 = a3[7];
  v9 = sub_10004B830();
  v10 = *(*(v9 - 8) + 16);

  v10(a1 + v8, a2 + v8, v9);
  v11 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + v11) = *(a2 + v11);
  *(a1 + a3[10]) = *(a2 + a3[10]);
  return a1;
}

uint64_t *sub_10002DD98(uint64_t *a1, uint64_t *a2, int *a3)
{
  sub_10002DE64(a1, a2);
  a1[5] = a2[5];

  a1[6] = a2[6];

  v6 = a3[7];
  v7 = sub_10004B830();
  (*(*(v7 - 8) + 24))(a1 + v6, a2 + v6, v7);
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + a3[10]) = *(a2 + a3[10]);
  return a1;
}

uint64_t *sub_10002DE64(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

uint64_t sub_10002E080(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  v7 = a3[7];
  v8 = sub_10004B830();
  (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
  v9 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + v9) = *(a2 + v9);
  *(a1 + a3[10]) = *(a2 + a3[10]);
  return a1;
}

uint64_t sub_10002E12C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_10000343C(a1);
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  v7 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v7;

  *(a1 + 48) = *(a2 + 48);

  v8 = a3[7];
  v9 = sub_10004B830();
  (*(*(v9 - 8) + 40))(a1 + v8, a2 + v8, v9);
  v10 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + v10) = *(a2 + v10);
  *(a1 + a3[10]) = *(a2 + a3[10]);
  return a1;
}

uint64_t sub_10002E200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10004B830();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10002E2C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_10004B830();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for TTRISECreateRemindersPresentationTree(uint64_t a1)
{
  result = qword_1000684C0;
  if (!qword_1000684C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002E3B0(uint64_t a1)
{
  result = sub_10004B830();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_10002E4B8()
{
  v53 = sub_10004ACE0();
  v44 = *(v53 - 8);
  __chkstk_darwin(v53, v0);
  v2 = &v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100003150(&qword_100067630, &qword_100052960);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v8);
  v10 = &v41 - v9;
  v11 = sub_10004AD30();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v19 = &v41 - v18;
  __chkstk_darwin(v20, v21);
  v23 = &v41 - v22;
  sub_10004AFC0();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10000A138(v10, &qword_100067630, &qword_100052960);
    return 0;
  }

  v50 = *(v12 + 32);
  v51 = v12 + 32;
  v50(v23, v10, v11);
  v24 = sub_10004AF90();
  swift_getObjectType();
  v54 = v24;
  v25 = *(v12 + 16);
  v42 = v23;
  v25(v6, v23, v11);
  v43 = v12;
  (*(v12 + 56))(v6, 0, 1, v11);
  v26 = sub_10004AC30();
  v27 = v6;
  v28 = v26;
  v30 = v29;
  v49 = v31;
  v52 = v32;
  sub_10000A138(v27, &qword_100067630, &qword_100052960);
  swift_unknownObjectRelease();
  if (v28 == v30)
  {
LABEL_4:

    (*(v43 + 8))(v42, v11);
    return 0;
  }

  if (v30 >= v28)
  {
    v34 = (v44 + 88);
    v48 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:);
    v47 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:);
    v46 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:);
    v45 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:);
    v35 = (v43 + 8);
    v36 = (v44 + 8);
    while (v30 != v28)
    {
      v54 = v28;
      v49(&v54);
      v50(v15, v19, v11);
      sub_10004AD10();
      v37 = v53;
      v38 = (*v34)(v2, v53);
      if (v38 == v48)
      {
        goto LABEL_9;
      }

      if (v38 == v47)
      {

        v39 = v37;
        v40 = *v35;
        (*v35)(v15, v11);
        (*v36)(v2, v39);
        v40(v42, v11);
        return 1;
      }

      if (v38 == v46)
      {
LABEL_9:
        (*v35)(v15, v11);
        (*v36)(v2, v37);
      }

      else
      {
        if (v38 != v45)
        {
          goto LABEL_20;
        }

        (*v35)(v15, v11);
      }

      if (v30 == ++v28)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  result = sub_10004CDC0();
  __break(1u);
  return result;
}

uint64_t sub_10002E9A8@<X0>(uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_10004ACD0();
  v34 = *(v3 - 8);
  __chkstk_darwin(v3, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004AD30();
  v32 = *(v7 - 8);
  v33 = v7;
  __chkstk_darwin(v7, v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003150(&qword_100068020, &qword_100053B30);
  __chkstk_darwin(v11 - 8, v12);
  v14 = &v32 - v13;
  v15 = sub_100003150(&qword_100068518, &unk_100053B38);
  __chkstk_darwin(v15, v16);
  v18 = &v32 - v17;
  sub_1000032DC(v2, v2[3]);
  sub_10004AC20();
  v19 = sub_10004A350();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v14, 1, v19) == 1)
  {
    sub_10000A138(v14, &qword_100068020, &qword_100053B30);
    v21 = sub_10004A330();
    v22 = 1;
    (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
    goto LABEL_3;
  }

  sub_10004A340();
  (*(v20 + 8))(v14, v19);
  v24 = sub_10004A330();
  v25 = *(v24 - 8);
  (*(v25 + 56))(v18, 0, 1, v24);
  v26 = (*(v25 + 88))(v18, v24);
  if (v26 == enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.suggestedReminder(_:))
  {
    (*(v25 + 96))(v18, v24);
    v27 = v34;
    (*(v34 + 32))(v6, v18, v3);
    v23 = v35;
    sub_100030DF0(v6, v35);
    (*(v27 + 8))(v6, v3);
    v22 = 0;
    goto LABEL_12;
  }

  if (v26 == enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.remindersListItem(_:))
  {
    (*(v25 + 96))(v18, v24);
    v29 = v32;
    v28 = v33;
    (*(v32 + 32))(v10, v18, v33);
    v23 = v35;
    sub_10002FD0C(v10, v35);
    (*(v29 + 8))(v10, v28);
    v22 = 0;
    goto LABEL_12;
  }

  v22 = 1;
  if (v26 == enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.listPicker(_:))
  {
LABEL_3:
    v23 = v35;
LABEL_12:
    v30 = sub_10004BBD0();
    return (*(*(v30 - 8) + 56))(v23, v22, 1, v30);
  }

  v23 = v35;
  if (v26 == enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.suggestionHeader(_:) || v26 == enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.suggestionLoading(_:) || v26 == enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.unknown(_:))
  {
    goto LABEL_12;
  }

  result = sub_10004CDC0();
  __break(1u);
  return result;
}

uint64_t sub_10002EEB8()
{
  v0 = sub_10004C1B0();
  sub_10000D51C(v0, qword_100068450);
  v1 = sub_10000D49C(v0, qword_100068450);
  if (qword_100066F08 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D49C(v0, qword_10006A2F8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10002EF80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v100 = a3;
  v111 = a2;
  v98 = a4;
  v5 = sub_100003150(&qword_100068570, &qword_100053B88);
  __chkstk_darwin(v5 - 8, v6);
  v110 = &v92 - v7;
  v8 = sub_100003150(&qword_100068578, &qword_100053B90);
  v9 = *(v8 - 8);
  v102 = v8;
  v103 = v9;
  __chkstk_darwin(v8, v10);
  v99 = &v92 - v11;
  v97 = sub_10004B5C0();
  __chkstk_darwin(v97, v12);
  v96 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100003150(&qword_100067630, &qword_100052960);
  __chkstk_darwin(v14 - 8, v15);
  v107 = &v92 - v16;
  v17 = sub_10004AD30();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17, v19);
  v108 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v22);
  v109 = &v92 - v23;
  __chkstk_darwin(v24, v25);
  v27 = &v92 - v26;
  v28 = sub_100003150(&qword_100068020, &qword_100053B30);
  __chkstk_darwin(v28 - 8, v29);
  v31 = &v92 - v30;
  v32 = sub_10004A350();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32, v34);
  v95 = &v92 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36, v37);
  v40 = &v92 - v39;
  v41 = v18;
  v44 = *(v18 + 16);
  v42 = v18 + 16;
  v43 = v44;
  (v44)(v27, a1, v17, v38);
  v45 = v33;
  sub_10004A300();
  v46 = (*(v33 + 48))(v31, 1, v32);
  v101 = v17;
  if (v46 == 1)
  {
    v47 = v41;
    sub_10000A138(v31, &qword_100068020, &qword_100053B30);
    if (qword_100066F38 != -1)
    {
      swift_once();
    }

    v48 = sub_10004C1B0();
    sub_10000D49C(v48, qword_100068450);
    v49 = v108;
    v50 = v101;
    v43(v108, a1, v101);
    v51 = sub_10004C1A0();
    v52 = sub_10004C890();
    v53 = os_log_type_enabled(v51, v52);
    v54 = v102;
    if (v53)
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v112 = v56;
      *v55 = 136315138;
      sub_100032FC8(&qword_100068588, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
      v57 = sub_10004A7A0();
      v59 = v58;
      (*(v47 + 8))(v49, v50);
      v60 = sub_100015238(v57, v59, &v112);

      *(v55 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v51, v52, "TTRSECreateRemindersViewModel: unexpected item type in remindersListTree {item: %s}", v55, 0xCu);
      sub_10000343C(v56);
    }

    else
    {

      (*(v47 + 8))(v49, v50);
    }

    return (*(v103 + 56))(v98, 1, 1, v54);
  }

  else
  {
    v61 = *(v33 + 32);
    v108 = v40;
    v94 = v32;
    v61(v40, v31, v32);
    v62 = v111;
    swift_getObjectType();
    v112 = v62;
    v63 = v107;
    v43(v107, a1, v17);
    v64 = v41;
    (*(v41 + 56))(v63, 0, 1, v17);
    v65 = sub_10004AC50();
    sub_10000A138(v63, &qword_100067630, &qword_100052960);
    v66 = *(v65 + 16);
    if (v66)
    {
      v67 = v42;
      v68 = v43;
      v92 = v65;
      v93 = v45;
      v69 = v65 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
      v70 = *(v64 + 72);
      v106 = (v64 + 8);
      v107 = v70;
      v71 = v102;
      v104 = (v103 + 32);
      v105 = (v103 + 48);
      v72 = _swiftEmptyArrayStorage;
      v74 = v100;
      v73 = v101;
      do
      {
        v76 = v109;
        v77 = v67;
        v78 = v68;
        v68(v109, v69, v73);
        v79 = v110;
        sub_10002EF80(v76, v111, v74, v110);
        (*v106)(v76, v73);
        v80 = v71;
        if ((*v105)(v79, 1, v71) == 1)
        {
          sub_10000A138(v79, &qword_100068570, &qword_100053B88);
          v75 = v108;
        }

        else
        {
          v81 = *v104;
          v82 = v99;
          (*v104)(v99, v79, v80);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v72 = sub_100031740(0, v72[2] + 1, 1, v72);
          }

          v75 = v108;
          v84 = v72[2];
          v83 = v72[3];
          if (v84 >= v83 >> 1)
          {
            v72 = sub_100031740((v83 > 1), v84 + 1, 1, v72);
          }

          v72[2] = v84 + 1;
          v85 = v82;
          v71 = v102;
          (v81)(v72 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v84, v85);
          v74 = v100;
          v73 = v101;
        }

        v69 += v107;
        --v66;
        v67 = v77;
        v68 = v78;
      }

      while (v66);

      v86 = v98;
      v87 = v71;
      v45 = v93;
    }

    else
    {

      v86 = v98;
      v75 = v108;
      v87 = v102;
    }

    v89 = *(v45 + 16);
    v90 = v45;
    v91 = v94;
    v89(v95, v75, v94);
    sub_10004B1A0();
    sub_100032FC8(&qword_100068510, &type metadata accessor for TTRSECreateRemindersViewModel.Item, &protocol conformance descriptor for TTRSECreateRemindersViewModel.Item);
    sub_10004ABA0();
    (*(v90 + 8))(v75, v91);
    return (*(v103 + 56))(v86, 0, 1, v87);
  }
}

uint64_t sub_10002F8C0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10004B400();
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2, v3);
  v35 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004B480();
  __chkstk_darwin(v5 - 8, v6);
  v34 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_10004B590();
  v8 = *(v33 - 8);
  __chkstk_darwin(v33, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10004B650();
  __chkstk_darwin(v12 - 8, v13);
  v14 = sub_100003150(&qword_100067FA0, &qword_100053B50);
  __chkstk_darwin(v14 - 8, v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v19);
  v21 = &v31 - v20;
  sub_10004AFF0();
  v22 = sub_10004BD90();
  v23 = sub_10004B4E0();
  v39 = v22;
  v40 = &protocol witness table for TTRRemindersListObjectIDOnlyReminderIDProvider;
  v38 = v23;
  v32 = sub_10004AFD0();
  v24 = sub_100003150(&qword_100068538, &qword_100053B60);
  v25 = sub_10004AA70();
  a1[3] = v24;
  a1[4] = sub_100031380();
  *a1 = v25;
  v26 = sub_10004AD40();
  v27 = *(*(v26 - 8) + 56);
  v27(v21, 1, 1, v26);
  v27(v17, 1, 1, v26);
  (*(v8 + 104))(v11, enum case for TTRIRemindersListCellInfoButtonState.hidden(_:), v33);
  sub_100032B88(_swiftEmptyArrayStorage);
  sub_10004B630();
  (*(v36 + 104))(v35, enum case for TTRIRemindersListCellQuickBarState.hidden(_:), v37);
  sub_100032DA8(_swiftEmptyArrayStorage);
  sub_10004B460();
  v28 = type metadata accessor for TTRISECreateRemindersPresentationTree(0);
  result = sub_10004B810();
  v30 = v32;
  a1[5] = &_swiftEmptySetSingleton;
  a1[6] = v30;
  *(a1 + v28[8]) = 0;
  *(a1 + v28[9]) = 0;
  *(a1 + v28[10]) = 1;
  return result;
}

uint64_t sub_10002FCD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + *(a3 + 32)) == *(a2 + *(a3 + 32)))
  {
    return (*(a1 + *(a3 + 36)) ^ *(a2 + *(a3 + 36))) & 1;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_10002FD0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v145 = a2;
  v3 = sub_100003150(&qword_100067630, &qword_100052960);
  __chkstk_darwin(v3 - 8, v4);
  v155 = &v122 - v5;
  v148 = sub_100003150(&qword_100068520, &qword_100053B48);
  __chkstk_darwin(v148, v6);
  v141 = &v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v130 = &v122 - v10;
  v11 = sub_100003150(&qword_100067FA0, &qword_100053B50);
  __chkstk_darwin(v11 - 8, v12);
  v124 = &v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  v132 = &v122 - v16;
  __chkstk_darwin(v17, v18);
  v134 = &v122 - v19;
  __chkstk_darwin(v20, v21);
  v123 = &v122 - v22;
  __chkstk_darwin(v23, v24);
  v146 = &v122 - v25;
  __chkstk_darwin(v26, v27);
  v147 = &v122 - v28;
  v129 = sub_10004B480();
  v128 = *(v129 - 8);
  __chkstk_darwin(v129, v29);
  v31 = &v122 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10004B400();
  v142 = *(v32 - 8);
  v143 = v32;
  __chkstk_darwin(v32, v33);
  v139 = &v122 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35, v36);
  v38 = &v122 - v37;
  v127 = sub_10004B650();
  v39 = *(v127 - 8);
  __chkstk_darwin(v127, v40);
  v42 = &v122 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_10004B590();
  v137 = *(v138 - 8);
  __chkstk_darwin(v138, v43);
  v136 = &v122 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45, v46);
  v154 = &v122 - v47;
  v48 = sub_100003150(&qword_100068528, &qword_100053B58);
  __chkstk_darwin(v48 - 8, v49);
  v152 = &v122 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51, v52);
  v159 = &v122 - v53;
  v153 = sub_10004B440();
  v135 = *(v153 - 8);
  __chkstk_darwin(v153, v54);
  v149 = &v122 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56, v57);
  v59 = &v122 - v58;
  v60 = sub_10004B830();
  v61 = *(v60 - 8);
  __chkstk_darwin(v60, v62);
  v64 = &v122 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_10004AD40();
  v158 = *(v150 - 8);
  __chkstk_darwin(v150, v65);
  v156 = &v122 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v67, v68);
  v157 = &v122 - v69;
  sub_10004ACF0();
  v70 = *(type metadata accessor for TTRISECreateRemindersPresentationTree(0) + 28);
  v131 = v61;
  v71 = *(v61 + 16);
  v160 = v64;
  v133 = v60;
  v71(v64, &v140[v70], v60);
  v151 = v59;
  sub_10004B430();
  v72 = sub_10004AFB0();
  v144 = a1;
  if (v72)
  {
    v73 = sub_10004AFA0();
    v74 = sub_10004BB90();
    v75 = *(v74 - 8);
    v76 = (v75 + 56);
    if (v73 < 1)
    {
      v77 = &enum case for TTRIRemindersListItemIntermediateViewModel.ReminderItemLevel.topLevelWithoutSubtasks(_:);
    }

    else
    {
      v77 = &enum case for TTRIRemindersListItemIntermediateViewModel.ReminderItemLevel.topLevelWithSubtasks(_:);
    }

    v83 = v159;
    (*(v75 + 104))(v159, *v77, v74);
    (*v76)(v83, 0, 1, v74);
  }

  else if (sub_10004AFE0())
  {
    v78 = enum case for TTRIRemindersListItemIntermediateViewModel.ReminderItemLevel.subtask(_:);
    v79 = sub_10004BB90();
    v80 = *(v79 - 8);
    v81 = v159;
    (*(v80 + 104))(v159, v78, v79);
    (*(v80 + 56))(v81, 0, 1, v79);
  }

  else
  {
    v82 = sub_10004BB90();
    (*(*(v82 - 8) + 56))(v159, 1, 1, v82);
  }

  v85 = v146;
  v84 = v147;
  sub_10004B7D0();
  v86 = v157;
  sub_10004B640();
  (*(v39 + 8))(v42, v127);
  sub_10004B7E0();
  v140 = v38;
  sub_10004B470();
  v128[1](v31, v129);
  sub_10004B7F0();
  v87 = v158;
  v88 = *(v158 + 16);
  v89 = v150;
  v127 = v158 + 16;
  v126 = v88;
  v88(v85, v86, v150);
  v125 = *(v87 + 56);
  v125(v85, 0, 1, v89);
  v90 = *(v148 + 48);
  v91 = v130;
  sub_10000A198(v84, v130, &qword_100067FA0, &qword_100053B50);
  sub_10000A198(v85, v91 + v90, &qword_100067FA0, &qword_100053B50);
  v92 = *(v87 + 48);
  v93 = (v92)(v91, 1, v89);
  v128 = v92;
  if (v93 == 1)
  {
    sub_10000A138(v85, &qword_100067FA0, &qword_100053B50);
    sub_10000A138(v84, &qword_100067FA0, &qword_100053B50);
    if ((v92)(v91 + v90, 1, v89) == 1)
    {
      sub_10000A138(v91, &qword_100067FA0, &qword_100053B50);
      LODWORD(v129) = 1;
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v94 = v123;
  sub_10000A198(v91, v123, &qword_100067FA0, &qword_100053B50);
  if ((v92)(v91 + v90, 1, v89) == 1)
  {
    sub_10000A138(v146, &qword_100067FA0, &qword_100053B50);
    sub_10000A138(v147, &qword_100067FA0, &qword_100053B50);
    (*(v158 + 8))(v94, v89);
LABEL_14:
    sub_10000A138(v91, &qword_100068520, &qword_100053B48);
    LODWORD(v129) = 0;
    goto LABEL_16;
  }

  v95 = v158;
  v96 = v91 + v90;
  v97 = v91;
  v98 = v156;
  (*(v158 + 32))(v156, v96, v89);
  sub_100032FC8(&qword_100068530, &type metadata accessor for TTRRemindersListViewModel.ItemID, &protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
  LODWORD(v129) = sub_10004C670();
  v99 = *(v95 + 8);
  v99(v98, v89);
  sub_10000A138(v146, &qword_100067FA0, &qword_100053B50);
  sub_10000A138(v147, &qword_100067FA0, &qword_100053B50);
  v99(v94, v89);
  sub_10000A138(v97, &qword_100067FA0, &qword_100053B50);
LABEL_16:
  v100 = v134;
  sub_10004B800();
  v101 = v132;
  v126(v132, v157, v89);
  v125(v101, 0, 1, v89);
  v102 = *(v148 + 48);
  v103 = v141;
  sub_10000A198(v100, v141, &qword_100067FA0, &qword_100053B50);
  sub_10000A198(v101, v103 + v102, &qword_100067FA0, &qword_100053B50);
  v104 = v128;
  if ((v128)(v103, 1, v89) != 1)
  {
    v105 = v124;
    sub_10000A198(v103, v124, &qword_100067FA0, &qword_100053B50);
    if ((v104)(v103 + v102, 1, v89) != 1)
    {
      v106 = v158;
      v107 = v103 + v102;
      v108 = v156;
      (*(v158 + 32))(v156, v107, v89);
      sub_100032FC8(&qword_100068530, &type metadata accessor for TTRRemindersListViewModel.ItemID, &protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
      LODWORD(v148) = sub_10004C670();
      v109 = *(v106 + 8);
      v109(v108, v89);
      sub_10000A138(v101, &qword_100067FA0, &qword_100053B50);
      sub_10000A138(v100, &qword_100067FA0, &qword_100053B50);
      v109(v105, v89);
      sub_10000A138(v103, &qword_100067FA0, &qword_100053B50);
      goto LABEL_23;
    }

    sub_10000A138(v101, &qword_100067FA0, &qword_100053B50);
    sub_10000A138(v100, &qword_100067FA0, &qword_100053B50);
    (*(v158 + 8))(v105, v89);
    goto LABEL_21;
  }

  sub_10000A138(v101, &qword_100067FA0, &qword_100053B50);
  sub_10000A138(v100, &qword_100067FA0, &qword_100053B50);
  if ((v104)(v103 + v102, 1, v89) != 1)
  {
LABEL_21:
    sub_10000A138(v103, &qword_100068520, &qword_100053B48);
    LODWORD(v148) = 0;
    goto LABEL_23;
  }

  sub_10000A138(v103, &qword_100067FA0, &qword_100053B50);
  LODWORD(v148) = 1;
LABEL_23:
  v110 = v144;
  sub_10004ACF0();
  v111 = sub_10004AD30();
  v112 = *(v111 - 8);
  v113 = v155;
  (*(v112 + 16))(v155, v110, v111);
  (*(v112 + 56))(v113, 0, 1, v111);
  sub_10000A198(v159, v152, &qword_100068528, &qword_100053B58);
  v114 = v135;
  (*(v135 + 16))(v149, v151, v153);
  sub_10004B820();
  v115 = v137;
  v116 = v154;
  v117 = v138;
  (*(v137 + 16))(v136, v154, v138);
  v119 = v142;
  v118 = v143;
  v120 = v140;
  (*(v142 + 16))(v139, v140, v143);
  sub_10004BBB0();
  (*(v119 + 8))(v120, v118);
  (*(v115 + 8))(v116, v117);
  sub_10000A138(v159, &qword_100068528, &qword_100053B58);
  (*(v114 + 8))(v151, v153);
  (*(v131 + 8))(v160, v133);
  return (*(v158 + 8))(v157, v150);
}

uint64_t sub_100030DF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a1;
  v52 = a2;
  v2 = sub_10004B400();
  v50 = *(v2 - 8);
  v51 = v2;
  __chkstk_darwin(v2, v3);
  v49 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004B590();
  v47 = *(v5 - 8);
  v48 = v5;
  __chkstk_darwin(v5, v6);
  v46 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003150(&qword_100068528, &qword_100053B58);
  __chkstk_darwin(v8 - 8, v9);
  v44 = &v42 - v10;
  v11 = sub_100003150(&qword_100067630, &qword_100052960);
  __chkstk_darwin(v11 - 8, v12);
  v53 = &v42 - v13;
  v14 = sub_10004AD40();
  __chkstk_darwin(v14 - 8, v15);
  v42 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10004ACD0();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17, v19);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10004AD30();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22, v24);
  v26 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_10004B440();
  v27 = *(v43 - 8);
  __chkstk_darwin(v43, v28);
  v30 = &v42 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31, v32);
  v34 = &v42 - v33;
  sub_10004B430();
  (*(v18 + 16))(v21, v45, v17);
  sub_10004AD00();
  sub_10004ACF0();
  v35 = v53;
  (*(v23 + 16))(v53, v26, v22);
  (*(v23 + 56))(v35, 0, 1, v22);
  v36 = enum case for TTRIRemindersListItemIntermediateViewModel.ReminderItemLevel.topLevelWithoutSubtasks(_:);
  v37 = sub_10004BB90();
  v38 = *(v37 - 8);
  v39 = v44;
  (*(v38 + 104))(v44, v36, v37);
  (*(v38 + 56))(v39, 0, 1, v37);
  v40 = v43;
  (*(v27 + 16))(v30, v34, v43);
  (*(v47 + 104))(v46, enum case for TTRIRemindersListCellInfoButtonState.hidden(_:), v48);
  (*(v50 + 104))(v49, enum case for TTRIRemindersListCellQuickBarState.hidden(_:), v51);
  sub_10004BBB0();
  (*(v23 + 8))(v26, v22);
  return (*(v27 + 8))(v34, v40);
}

unint64_t sub_100031380()
{
  result = qword_100068540;
  if (!qword_100068540)
  {
    sub_100003198(&qword_100068538, &qword_100053B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068540);
  }

  return result;
}

unint64_t sub_1000313E4(uint64_t a1)
{
  sub_10004AD40();
  sub_100032FC8(&qword_100068558, &type metadata accessor for TTRRemindersListViewModel.ItemID, &protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
  v2 = sub_10004C650();

  return sub_10003147C(a1, v2);
}

unint64_t sub_10003147C(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_10004AD40();
  v5 = *(v4 - 8);
  v7 = __chkstk_darwin(v4, v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v13 = v15;
    v16 = *(v14 + 56);
    do
    {
      v13(v9, *(v22 + 48) + v16 * v11, v4, v7);
      sub_100032FC8(&qword_100068530, &type metadata accessor for TTRRemindersListViewModel.ItemID, &protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
      v17 = sub_10004C670();
      (*(v14 - 8))(v9, v4);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

char *sub_10003163C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003150(&qword_100068590, &qword_100053BA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

void *sub_100031740(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100003150(&qword_100068580, &qword_100053B98);
  v10 = *(sub_100003150(&qword_100068578, &qword_100053B90) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100003150(&qword_100068578, &qword_100053B90) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_100031930(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100031990(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100031950(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100031A9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100031970(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100031BD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100031990(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003150(&unk_100068C30, &qword_100053BB8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

void *sub_100031A9C(void *result, int64_t a2, char a3, void *a4)
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
    sub_100003150(&qword_100068598, &qword_100053BA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003150(&qword_1000685A0, &qword_100053BB0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100031BD0(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100003150(&qword_100068580, &qword_100053B98);
  v10 = *(sub_100003150(&qword_100068578, &qword_100053B90) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100003150(&qword_100068578, &qword_100053B90) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_100031DC0(uint64_t a1, uint64_t a2)
{
  v115 = a2;
  v132 = a1;
  v2 = sub_100003150(&qword_100068570, &qword_100053B88);
  __chkstk_darwin(v2 - 8, v3);
  v126 = v107 - v4;
  v5 = sub_100003150(&qword_100067630, &qword_100052960);
  __chkstk_darwin(v5 - 8, v6);
  v128 = v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v131 = (v107 - v10);
  v112 = sub_10004AD30();
  v116 = *(v112 - 8);
  __chkstk_darwin(v112, v11);
  v134 = v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v14);
  v111 = v107 - v15;
  v16 = sub_10004B5C0();
  __chkstk_darwin(v16, v17);
  v139 = v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_10004A350();
  v19 = *(v141 - 8);
  __chkstk_darwin(v141, v20);
  v140 = v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v23);
  v25 = v107 - v24;
  v26 = sub_100003150(&qword_100068578, &qword_100053B90);
  v27 = *(v26 - 8);
  __chkstk_darwin(v26, v28);
  v108 = v107 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30, v31);
  v110 = v107 - v32;
  __chkstk_darwin(v33, v34);
  v109 = v107 - v35;
  __chkstk_darwin(v36, v37);
  v133 = v107 - v38;
  __chkstk_darwin(v39, v40);
  v124 = v107 - v41;
  __chkstk_darwin(v42, v43);
  v123 = v107 - v44;
  v45 = enum case for TTRSECreateRemindersViewModel.SectionID.listPicker(_:);
  v121 = sub_10004A390();
  v46 = *(v121 - 8);
  v120 = *(v46 + 104);
  v119 = v46 + 104;
  v138 = v25;
  v120(v25, v45, v121);
  v118 = enum case for TTRSECreateRemindersViewModel.Item.section(_:);
  v137 = v19;
  v47 = *(v19 + 104);
  v48 = v141;
  v47(v25);
  v117 = v47;
  v49 = sub_100003150(&qword_100068580, &qword_100053B98);
  v50 = *(v27 + 72);
  v122 = v27;
  v51 = *(v27 + 80);
  v52 = (v51 + 32) & ~v51;
  v143 = v50;
  v113 = v51;
  v114 = v49;
  *(swift_allocObject() + 16) = xmmword_1000528D0;
  (v47)(v140, enum case for TTRSECreateRemindersViewModel.Item.listPicker(_:), v48);
  sub_10004B1A0();
  v53 = sub_100032FC8(&qword_100068510, &type metadata accessor for TTRSECreateRemindersViewModel.Item, &protocol conformance descriptor for TTRSECreateRemindersViewModel.Item);
  v142 = v52;
  v54 = v112;
  sub_10004ABA0();
  v55 = v16;
  sub_10004B1A0();
  v56 = v138;
  v57 = v141;
  sub_10004ABA0();
  v120(v56, enum case for TTRSECreateRemindersViewModel.SectionID.reminders(_:), v121);
  v107[1] = v19 + 104;
  (v117)(v56, v118, v57);
  sub_10004B1A0();
  v58 = v116;
  v135 = v53;
  v136 = v55;
  sub_10004ABA0();
  v59 = v131;
  sub_10004AFC0();
  if ((*(v58 + 48))(v59, 1, v54) == 1)
  {
    sub_10000A138(v59, &qword_100067630, &qword_100052960);
    v60 = v115;
    v61 = v122;
  }

  else
  {
    v62 = v111;
    (*(v58 + 32))(v111, v59, v54);
    v63 = sub_10004AF90();
    v65 = v64;
    swift_getObjectType();
    v144 = v63;
    v66 = *(v58 + 16);
    v67 = v128;
    v131 = (v58 + 16);
    v129 = v66;
    v66(v128, v62, v54);
    (*(v58 + 56))(v67, 0, 1, v54);
    v132 = v65;
    v68 = sub_10004AC50();
    sub_10000A138(v67, &qword_100067630, &qword_100052960);
    v69 = *(v68 + 16);
    if (v69)
    {
      v70 = (*(v58 + 80) + 32) & ~*(v58 + 80);
      v107[0] = v68;
      v71 = v68 + v70;
      v128 = *(v58 + 72);
      v72 = (v58 + 8);
      v73 = (v122 + 48);
      v127 = (v122 + 32);
      v74 = _swiftEmptyArrayStorage;
      v75 = v126;
      v125 = v63;
      do
      {
        v76 = v134;
        v129(v134, v71, v54);
        sub_10002EF80(v76, v63, v132, v75);
        (*v72)(v76, v54);
        if ((*v73)(v75, 1, v26) == 1)
        {
          sub_10000A138(v75, &qword_100068570, &qword_100053B88);
        }

        else
        {
          v77 = v54;
          v78 = *v127;
          (*v127)(v133, v75, v26);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v74 = sub_100031740(0, *(v74 + 2) + 1, 1, v74);
          }

          v80 = *(v74 + 2);
          v79 = *(v74 + 3);
          if (v80 >= v79 >> 1)
          {
            v74 = sub_100031740((v79 > 1), v80 + 1, 1, v74);
          }

          *(v74 + 2) = v80 + 1;
          v78(&v74[v142 + v80 * v143], v133, v26);
          v54 = v77;
          v63 = v125;
          v75 = v126;
        }

        v71 += v128;
        --v69;
      }

      while (v69);

      v61 = v122;
      v58 = v116;
      v62 = v111;
    }

    else
    {

      v61 = v122;
    }

    sub_10004ABB0();
    swift_unknownObjectRelease();
    (*(v58 + 8))(v62, v54);
    v60 = v115;
  }

  v81 = v142;
  v82 = v143;
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_100052630;
  v84 = v83 + v81;
  v85 = *(v61 + 16);
  (v85)(v84, v123, v26);
  (v85)(v84 + v82, v124, v26);
  v86 = *(v60 + 16);
  if (v86)
  {
    v127 = v85;
    v128 = v61 + 16;
    v129 = v83;
    v144 = _swiftEmptyArrayStorage;
    sub_100031970(0, v86, 0);
    v87 = v144;
    v88 = *(v137 + 16);
    v89 = v60 + ((*(v137 + 80) + 32) & ~*(v137 + 80));
    v132 = *(v137 + 72);
    v133 = v88;
    v137 += 16;
    v131 = (v137 - 8);
    v134 = (v61 + 32);
    v90 = v108;
    v130 = v26;
    do
    {
      v91 = v138;
      v92 = v141;
      v93 = v133;
      (v133)(v138, v89, v141);
      (v93)(v140, v91, v92);
      sub_10004B1A0();
      sub_10004ABA0();
      (*v131)(v91, v92);
      v144 = v87;
      v95 = v87[2];
      v94 = v87[3];
      if (v95 >= v94 >> 1)
      {
        sub_100031970((v94 > 1), v95 + 1, 1);
        v87 = v144;
      }

      v87[2] = v95 + 1;
      v96 = v87 + v142 + v95 * v143;
      v97 = *v134;
      v26 = v130;
      (*v134)(v96, v90, v130);
      v89 += v132;
      --v86;
    }

    while (v86);
    v98 = v138;
    v120(v138, enum case for TTRSECreateRemindersViewModel.SectionID.suggestions(_:), v121);
    (v117)(v98, v118, v141);
    sub_10004B1A0();
    v99 = v109;
    sub_10004ABA0();
    v100 = v110;
    (v127)(v110, v99, v26);
    v101 = v129;
    v103 = *(v129 + 2);
    v102 = *(v129 + 3);
    if (v103 >= v102 >> 1)
    {
      v101 = sub_100031740((v102 > 1), v103 + 1, 1, v129);
    }

    v61 = v122;
    (*(v122 + 8))(v99, v26);
    *(v101 + 2) = v103 + 1;
    v97(&v101[v142 + v103 * v143], v100, v26);
  }

  sub_100003150(&qword_100068538, &qword_100053B60);
  v104 = sub_10004AA70();
  v105 = *(v61 + 8);
  v105(v124, v26);
  v105(v123, v26);
  return v104;
}

unint64_t sub_100032B88(uint64_t a1)
{
  v2 = sub_100003150(&qword_100068560, &qword_100053B78);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100003150(&qword_100068568, &qword_100053B80);
    v8 = sub_10004CD80();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10000A198(v10, v6, &qword_100068560, &qword_100053B78);
      result = sub_1000313E4(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_10004AD40();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_10004B590();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_100032DA8(uint64_t a1)
{
  v2 = sub_100003150(&qword_100068548, &qword_100053B68);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100003150(&qword_100068550, &qword_100053B70);
    v8 = sub_10004CD80();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10000A198(v10, v6, &qword_100068548, &qword_100053B68);
      result = sub_1000313E4(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_10004AD40();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_10004B400();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

uint64_t sub_100032FC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100033010(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_100003150(&qword_100067D58, &unk_1000530C0);
  __chkstk_darwin(v10 - 8, v11);
  v103 = &v83 - v12;
  v97 = sub_10004C2B0();
  v96 = *(v97 - 8);
  __chkstk_darwin(v97, v13);
  v99 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10004C250();
  v100 = *(v15 - 8);
  v101 = v15;
  __chkstk_darwin(v15, v16);
  v98 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_10004CAC0();
  v94 = *(v95 - 8);
  __chkstk_darwin(v95, v18);
  v93 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100003150(&qword_100068428, &qword_1000539D8);
  __chkstk_darwin(v20 - 8, v21);
  v91 = &v83 - v22;
  v90 = sub_10004CB10();
  v89 = *(v90 - 1);
  __chkstk_darwin(v90, v23);
  v88 = &v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_10004CB50();
  v104 = *(v106 - 8);
  __chkstk_darwin(v106, v25);
  v92 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27, v28);
  v102 = &v83 - v29;
  v30 = sub_10004C320();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30, v32);
  v34 = &v83 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10004C3D0();
  v105 = *(v35 - 8);
  __chkstk_darwin(v35, v36);
  v38 = &v83 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = &v4[OBJC_IVAR____TtC25RemindersSharingExtension41TTRISECreateRemindersSuggestionHeaderCell_includeAllAction];
  *v39 = 0;
  *(v39 + 1) = 0;
  v108.receiver = v4;
  v108.super_class = ObjectType;
  v87 = objc_msgSendSuper2(&v108, "initWithFrame:", a1, a2, a3, a4);
  sub_10004C390();
  v40 = objc_opt_self();
  v41 = [v40 configurationWithTextStyle:UIFontTextStyleBody scale:3];
  v42 = [v40 configurationWithWeight:6];
  v43 = [v41 configurationByApplyingConfiguration:v42];

  v44 = [v40 configurationPreferringMulticolor];
  v45 = [v43 configurationByApplyingConfiguration:v44];

  v46 = sub_10004C680();
  v47 = [objc_opt_self() _systemImageNamed:v46];

  if (v47)
  {
    v86 = v45;
    v48 = [v47 imageWithSymbolConfiguration:v45];

    sub_10004C3B0();
    sub_10004A9E0();
    sub_10004C3A0();
    v49 = objc_opt_self();
    v50 = [v49 secondaryLabelColor];
    v51 = sub_10004C360();
    sub_10004C340();
    v51(v107, 0);
    (*(v31 + 104))(v34, enum case for UIListContentConfiguration.TextProperties.TextTransform.uppercase(_:), v30);
    v52 = sub_10004C360();
    sub_10004C350();
    v52(v107, 0);
    sub_10004C370();
    v53 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleCaption1];
    v54 = [v53 fontDescriptorWithSymbolicTraits:2];

    if (v54 && (v55 = [v54 fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded], v54, v55))
    {
      v56 = objc_opt_self();
      v85 = v55;
      v57 = [v56 fontWithDescriptor:v55 size:0.0];
    }

    else
    {
      v57 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCaption1];
      v85 = 0;
    }

    v58 = v57;
    v59 = sub_10004C360();
    sub_10004C330();
    v59(v107, 0);
    v107[3] = v35;
    v107[4] = &protocol witness table for UIListContentConfiguration;
    v84 = v35;
    v60 = sub_10000B790(v107);
    (*(v105 + 16))(v60, v38, v35);
    v61 = v87;
    sub_10004C990();
    v62 = v102;
    sub_10004CB20();
    (*(v89 + 104))(v88, enum case for UIButton.Configuration.Size.medium(_:), v90);
    sub_10004CAB0();
    sub_10004AA00();
    sub_10004CB40();
    v63 = [v49 secondaryLabelColor];
    sub_10004CAF0();
    *(swift_allocObject() + 16) = v58;
    v90 = v58;
    v64 = v91;
    sub_10004C4F0();
    v65 = sub_10004C4E0();
    (*(*(v65 - 8) + 56))(v64, 0, 1, v65);
    sub_10004CB00();
    (*(v94 + 104))(v93, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v95);
    sub_10004CAD0();
    sub_100009FF0(0, &qword_100068438, UIButton_ptr);
    v66 = v104;
    (*(v104 + 16))(v92, v62, v106);
    sub_100009FF0(0, &qword_100067D68, UIAction_ptr);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10004CA90();
    v67 = sub_10004CB60();
    sub_100003150(&qword_100067D70, &unk_1000530D0);
    sub_10004C2D0();
    *(swift_allocObject() + 16) = xmmword_1000528D0;
    v68 = *(sub_100003150(&qword_1000685D8, &qword_100053BF8) + 48);
    v95 = v38;
    v69 = v99;
    v70 = &v99[v68];
    v71 = enum case for UICellAccessory.DisplayedState.always(_:);
    v72 = sub_10004C1E0();
    (*(*(v72 - 8) + 104))(v69, v71, v72);
    *v70 = sub_100005C64;
    v70[1] = 0;
    (*(v96 + 104))(v69, enum case for UICellAccessory.Placement.trailing(_:), v97);
    v73 = sub_10004C1F0();
    (*(*(v73 - 8) + 56))(v103, 1, 1, v73);
    v74 = v67;
    v75 = v98;
    sub_10004C240();
    sub_10004C1D0();
    (*(v100 + 8))(v75, v101);
    sub_10004C9A0();
    v76 = objc_opt_self();
    sub_100003150(&qword_1000674B0, &qword_1000528A0);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_100052620;
    v78 = [v61 separatorLayoutGuide];
    v79 = [v78 leadingAnchor];

    v80 = [v61 trailingAnchor];
    v81 = [v79 constraintEqualToAnchor:v80];

    *(v77 + 32) = v81;
    sub_100009FF0(0, &qword_100067D78, NSLayoutConstraint_ptr);
    isa = sub_10004C710().super.isa;

    [v76 activateConstraints:isa];

    (*(v66 + 8))(v62, v106);
    (*(v105 + 8))(v95, v84);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100033E08@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100049DB0();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  sub_10002DA14();
  v7 = a2;
  return sub_100049DC0();
}

void sub_100033EA8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *&Strong[OBJC_IVAR____TtC25RemindersSharingExtension41TTRISECreateRemindersSuggestionHeaderCell_includeAllAction];
    if (v4)
    {
      v5 = *&Strong[OBJC_IVAR____TtC25RemindersSharingExtension41TTRISECreateRemindersSuggestionHeaderCell_includeAllAction + 8];
      sub_10002DA04(*&Strong[OBJC_IVAR____TtC25RemindersSharingExtension41TTRISECreateRemindersSuggestionHeaderCell_includeAllAction], v5);

      v4();
      sub_10002A4AC(v4, v5);
    }

    else
    {
    }
  }
}

uint64_t sub_10003401C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003405C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10003409C(uint64_t a1)
{
  v2 = (a1 + 16);
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = *(a1 + 16);
  }

  else
  {
    v4 = [objc_allocWithZone(CNContactStore) init];
    swift_beginAccess();
    v5 = *v2;
    *v2 = v4;
    v3 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v3;
}

uint64_t sub_100034184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003150(&unk_100067618, &qword_100052940);
  __chkstk_darwin(v9 - 8, v10);
  v12 = v26 - v11;
  sub_10000A198(a3, v26 - v11, &unk_100067618, &qword_100052940);
  v13 = sub_10004C790();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000A138(v12, &unk_100067618, &qword_100052940);
  }

  else
  {
    sub_10004C780();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_10004C750();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_10004C6A0() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      sub_100003150(&unk_100068B10, &qword_100054288);
      v22 = (v19 | v17);
      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v23 = swift_task_create();

      sub_10000A138(a3, &unk_100067618, &qword_100052940);

      return v23;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000A138(a3, &unk_100067618, &qword_100052940);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  sub_100003150(&unk_100068B10, &qword_100054288);
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_100034498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003150(&unk_100067618, &qword_100052940);
  __chkstk_darwin(v9 - 8, v10);
  v12 = v26 - v11;
  sub_10000A198(a3, v26 - v11, &unk_100067618, &qword_100052940);
  v13 = sub_10004C790();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000A138(v12, &unk_100067618, &qword_100052940);
  }

  else
  {
    sub_10004C780();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_10004C750();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_10004C6A0() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_10000A138(a3, &unk_100067618, &qword_100052940);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000A138(a3, &unk_100067618, &qword_100052940);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_100034798(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_10004C770();
  v3[5] = sub_10004C760();
  v5 = sub_10004C750();
  v3[6] = v5;
  v3[7] = v4;

  return _swift_task_switch(sub_100034834, v5, v4);
}

uint64_t sub_100034834()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_100034938;
    v3 = v0[2];
    v4 = v0[3];

    return UIViewController.present<A>(alert:actions:didPresent:animated:)(v0 + 10, v3, v4, 0, 0, 1, &type metadata for Bool);
  }

  else
  {

    v5 = v0[1];

    return v5(2);
  }
}

uint64_t sub_100034938()
{
  v1 = *v0;
  v2 = *(*v0 + 64);

  *(v1 + 81) = *(v1 + 80);
  v3 = *(v1 + 56);
  v4 = *(v1 + 48);

  return _swift_task_switch(sub_100034A7C, v4, v3);
}

uint64_t sub_100034A7C()
{

  v1 = *(v0 + 81);
  v2 = *(v0 + 8);

  return v2(v1);
}

void *sub_100034AE0(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = _swiftEmptyArrayStorage;
  if (v6)
  {
    v13 = _swiftEmptyArrayStorage;
    sub_10004CCD0();
    v9 = *(sub_10004AB10() - 8);
    v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      a1(&v12, v10);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_10004CCB0();
      sub_10004CCE0();
      sub_10004CCF0();
      sub_10004CCC0();
      v10 += v11;
      if (!--v6)
      {
        return v13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100034C24()
{
  v0 = sub_10004C1B0();
  sub_10000D51C(v0, qword_1000685E0);
  v1 = sub_10000D49C(v0, qword_1000685E0);
  if (qword_100066F08 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D49C(v0, qword_10006A2F8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100034CEC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = sub_10004BCE0();

    if (v3)
    {
      sub_10004BCF0();
      sub_10004BFB0();
    }

    else
    {
      sub_10004BF90();
    }
  }

  return result;
}

uint64_t sub_100034D94(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_10004BF50();
  }

  return result;
}

uint64_t sub_100034E00(uint64_t a1, uint64_t a2)
{
  v3 = sub_100003150(&qword_100067630, &qword_100052960);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v16 - v5;
  v7 = sub_100003150(&qword_100067FA0, &qword_100053B50);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v16 - v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10000A198(a1, v6, &qword_100067630, &qword_100052960);
    v12 = sub_10004AD30();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v6, 1, v12) == 1)
    {
      sub_10000A138(v6, &qword_100067630, &qword_100052960);
      v14 = 1;
    }

    else
    {
      sub_10004ACF0();
      (*(v13 + 8))(v6, v12);
      v14 = 0;
    }

    v15 = sub_10004AD40();
    (*(*(v15 - 8) + 56))(v10, v14, 1, v15);
    sub_10004BF10();
  }

  return result;
}

uint64_t sub_10003500C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10004AE10();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000351F8(&v13);
  if (v14)
  {
    sub_100003674(&v13, v15);
    sub_100003674(v15, v16);
    sub_1000032DC(v16, v16[3]);
    v7 = sub_10004A5F0();
    v9 = v8;
    sub_10000DAC4(v16, &v13);
    sub_10004ADE0();
    *a1 = v7;
    a1[1] = v9;
    v10 = type metadata accessor for TTRSECreateRemindersViewModel.ListPickerCellState(0);
    (*(v3 + 32))(a1 + *(v10 + 20), v6, v2);
    (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
    return sub_10000343C(v16);
  }

  else
  {
    sub_10000A138(&v13, &qword_1000689F8, &qword_100054108);
    v12 = type metadata accessor for TTRSECreateRemindersViewModel.ListPickerCellState(0);
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }
}

double sub_1000351F8@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_10004BE30();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  if (sub_100049F60())
  {
    swift_getObjectType();
    sub_10004A2B0();
    sub_10004BE20();
    (*(v3 + 8))(v6, v2);
    if (v11)
    {
      sub_100003674(&v10, v12);
      sub_1000032DC(v12, v12[3]);
      v7 = sub_10004A600();
      v8 = sub_10004A2C0();
      swift_unknownObjectRelease();

      sub_10000DAC4(v12, a1);
      *(a1 + 40) = v8 & 1;
      sub_10000343C(v12);
      return result;
    }

    swift_unknownObjectRelease();
    sub_10000A138(&v10, &qword_100068A00, &qword_100054110);
  }

  result = 0.0;
  *(a1 + 25) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1000353B4()
{
  v0 = sub_10004B0C0();
  v18 = *(v0 - 8);
  __chkstk_darwin(v0, v1);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10004B520();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_10004B540();
  v17 = *(v19 - 8);
  __chkstk_darwin(v19, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  if (!sub_100049F60())
  {
    return 0;
  }

  swift_getObjectType();
  *v8 = sub_10004A2A0();
  (*(v5 + 104))(v8, enum case for TTRIListPickerContextualMenuAssembly.ListPickerContextMenuConfiguration.AccountFetchingOption.prefetched(_:), v4);
  sub_100003150(&qword_100068AE8, &qword_100054260);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000528D0;
  sub_1000351F8(v20);
  v16 = v0;
  if (v21)
  {
    sub_1000032DC(v20, v21);
    *(v12 + 32) = sub_10004A600();
    sub_10000343C(v20);
  }

  else
  {
    sub_10000A138(v20, &qword_1000689F8, &qword_100054108);
    *(v12 + 32) = 0;
  }

  v20[0] = v12;
  sub_100003150(&qword_100068AF0, &qword_100054268);
  sub_100009FF0(0, &qword_100067920, REMObjectID_ptr);
  sub_100003364(&qword_100068AF8, &qword_100068AF0, &qword_100054268, &protocol conformance descriptor for [A]);
  v14 = sub_10004C6F0();

  sub_100046E6C(v14);

  (*(v18 + 104))(v3, enum case for TTRReminderListPickerViewModel.CustomSmartListPredicate.includeAll(_:), v16);
  swift_allocObject();
  swift_weakInit();
  sub_10004B530();
  v13 = sub_10004B550();
  swift_unknownObjectRelease();
  (*(v17 + 8))(v11, v19);
  return v13;
}

uint64_t sub_1000357A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_10004A1E0();
  }

  return result;
}

uint64_t sub_100035824(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100003150(&unk_100067618, &qword_100052940);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v33 - v6;
  v8 = sub_100003150(&qword_100068030, &qword_1000536A8);
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v33 - v10;
  v12 = sub_10004A350();
  v15 = __chkstk_darwin(v12, v13);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v34 = v7;
    v18 = _swiftEmptyArrayStorage;
    v40 = _swiftEmptyArrayStorage;
    v19 = *(a1 + 16);
    v35 = v2;
    if (v19)
    {
      v20 = *(v2 + 120);
      v22 = *(v14 + 16);
      v21 = v14 + 16;
      v37 = v22;
      v38 = v20;
      v23 = a1 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
      v36 = *(v21 + 56);
      v39 = v21;
      v24 = (v21 - 8);
      v22(v17, v23, v12, v15);
      while (1)
      {
        sub_10004A0C0();
        v26 = sub_10004AD70();
        v27 = *(v26 - 8);
        if ((*(v27 + 48))(v11, 1, v26) == 1)
        {
          (*v24)(v17, v12);
          sub_10000A138(v11, &qword_100068030, &qword_1000536A8);
        }

        else
        {
          sub_10004AD60();
          (*v24)(v17, v12);
          (*(v27 + 8))(v11, v26);
          sub_10004C700();
          if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_10004C730();
          }

          sub_10004C740();
          v18 = v40;
        }

        v23 += v36;
        if (!--v19)
        {
          break;
        }

        v37(v17, v23, v12, v25);
      }
    }

    v7 = v34;
    v2 = v35;
  }

  else
  {
    v18 = 0;
  }

  swift_beginAccess();
  v28 = sub_10004B280();
  swift_endAccess();
  if (!v28)
  {
  }

  v29 = sub_10004C790();
  (*(*(v29 - 8) + 56))(v7, 1, 1, v29);
  sub_10004C770();

  v30 = sub_10004C760();
  v31 = swift_allocObject();
  v31[2] = v30;
  v31[3] = &protocol witness table for MainActor;
  v31[4] = v2;
  v31[5] = v18;
  sub_100034498(0, 0, v7, &unk_100054240, v31);
}

uint64_t sub_100035C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = sub_10004B0B0();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  sub_10004C770();
  v5[13] = sub_10004C760();
  v8 = sub_10004C750();
  v5[14] = v8;
  v5[15] = v7;

  return _swift_task_switch(sub_100035D14, v8, v7);
}

uint64_t sub_100035D14()
{
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_100035DB4;
  v2 = *(v0 + 72);

  return TTRSECreateRemindersPresenterCapability.requestSave(selectedItemIDs:)(v2);
}

uint64_t sub_100035DB4()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_100036048;
  }

  else
  {
    v5 = sub_100035EF0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100035EF0()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[11];

  (*(v3 + 104))(v1, enum case for TTRReminderDetailEditingResult.performed(_:), v2);
  swift_beginAccess();
  sub_10004B270();
  swift_endAccess();
  (*(v3 + 8))(v1, v2);
  sub_10004C190();
  sub_10004C180();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = [Strong extensionContext];
    if (v5)
    {
      v6 = v5;
      [v5 completeRequestReturningItems:0 completionHandler:0];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_100036048()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[11];

  (*(v3 + 104))(v1, enum case for TTRReminderDetailEditingResult.failed(_:), v2);
  swift_beginAccess();
  sub_10004B270();
  swift_endAccess();
  (*(v3 + 8))(v1, v2);
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = v0[17];
  if (Strong)
  {
    v6 = Strong;
    swift_errorRetain();
    sub_100011DD8(v5, v6);

    swift_unknownObjectRelease();
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_100036178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_10004B230();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = sub_10004B0B0();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  sub_10004C770();
  v4[9] = sub_10004C760();
  v8 = sub_10004C750();
  v4[10] = v8;
  v4[11] = v7;

  return _swift_task_switch(sub_1000362C8, v8, v7);
}

uint64_t sub_1000362C8()
{
  (*(v0[4] + 104))(v0[5], enum case for TTRIViewControllerDismissalState.requested(_:), v0[3]);
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_100036388;
  v2 = v0[8];
  v3 = v0[5];

  return sub_1000365DC(v2, v3);
}

uint64_t sub_100036388()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 40);
  v6 = *(*v0 + 32);
  v7 = *(*v0 + 24);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  v8 = *(v1 + 88);
  v9 = *(v1 + 80);

  return _swift_task_switch(sub_100036568, v9, v8);
}

uint64_t sub_100036568()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000365DC(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v3[11] = *v2;
  v4 = sub_10004C050();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  v5 = sub_10004B230();
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();
  sub_10004C770();
  v3[18] = sub_10004C760();
  v7 = sub_10004C750();
  v3[19] = v7;
  v3[20] = v6;

  return _swift_task_switch(sub_100036758, v7, v6);
}

uint64_t sub_100036758()
{
  v28 = v0;
  v0[21] = OBJC_IVAR____TtC25RemindersSharingExtension30TTRISECreateRemindersPresenter_completionState;
  swift_beginAccess();
  v1 = sub_10004B280();
  swift_endAccess();
  if (v1)
  {
    if (qword_100066F40 != -1)
    {
      swift_once();
    }

    v3 = v0[16];
    v2 = v0[17];
    v4 = v0[15];
    v5 = v0[9];
    v6 = sub_10004C1B0();
    sub_10000D49C(v6, qword_1000685E0);
    (*(v3 + 16))(v2, v5, v4);
    v7 = sub_10004C1A0();
    v8 = sub_10004C8A0();
    v9 = os_log_type_enabled(v7, v8);
    v11 = v0[16];
    v10 = v0[17];
    v12 = v0[15];
    if (v9)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v27 = v14;
      *v13 = 136315138;
      sub_10004565C(&qword_100068AD8, &type metadata accessor for TTRIViewControllerDismissalState, &protocol conformance descriptor for TTRIViewControllerDismissalState);
      v15 = sub_10004CDB0();
      v17 = v16;
      (*(v11 + 8))(v10, v12);
      v18 = sub_100015238(v15, v17, &v27);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v7, v8, "Create Reminders cancel editing {dismissalState: %s}", v13, 0xCu);
      sub_10000343C(v14);
    }

    else
    {

      (*(v11 + 8))(v10, v12);
    }

    v24 = swift_task_alloc();
    v0[22] = v24;
    *v24 = v0;
    v24[1] = sub_100036AB0;
    v25 = v0[9];
    v26 = v0[8];

    return sub_100041700(v26, v25);
  }

  else
  {
    v19 = v0[8];

    v20 = enum case for TTRReminderDetailEditingResult.failed(_:);
    v21 = sub_10004B0B0();
    (*(*(v21 - 8) + 104))(v19, v20, v21);

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_100036AB0()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return _swift_task_switch(sub_100036BD0, v3, v2);
}

uint64_t sub_100036BD0()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];

  swift_beginAccess();
  sub_10004B270();
  swift_endAccess();
  sub_10004A660();
  v4 = sub_10004A630();
  sub_10004C080();
  sub_10004C070();
  v5 = sub_100003150(&unk_100067700, &qword_100052C90);
  v6 = (v1 + *(v5 + 48));
  v7 = (v1 + *(v5 + 80));
  v8 = enum case for REMUserOperation.suggestedRemindersSessionCanceled(_:);
  v9 = sub_10004C040();
  (*(*(v9 - 8) + 104))(v1, v8, v9);
  *v6 = sub_10004A640();
  v6[1] = v10;
  sub_10004A650();
  *v7 = sub_10004CE80();
  v7[1] = v11;
  (*(v2 + 104))(v1, enum case for REMAnalyticsEvent.userOperation(_:), v3);
  sub_10004C060();

  (*(v2 + 8))(v1, v3);

  v12 = v0[1];

  return v12();
}

uint64_t sub_100036DB8(uint64_t a1)
{
  v1 = sub_10004A380();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004A310();
  if ((sub_10004A010() & 1) != 0 && (sub_100003150(&qword_100067688, &qword_100052990), sub_100003364(&qword_100067FB8, &qword_100067688, &qword_100052990, &protocol conformance descriptor for TTRICollectionViewCollapsedStatesPresenterCapability<A>), (sub_10004B5F0() & 1) == 0))
  {
    sub_100003150(&qword_100067FA8, &unk_100053630);
    v7 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1000528D0;
    (*(v2 + 16))(v8 + v7, v5, v1);
    v10[1] = v8;
    sub_100003150(&qword_100067FB0, &unk_100053640);
    sub_100003364(&qword_100067FC0, &qword_100067FB0, &unk_100053640, &protocol conformance descriptor for [A]);
    sub_10004B610();

    sub_10004BFA0();
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t sub_100036FF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10004A350();
  v5 = *(v4 - 8);
  v7 = __chkstk_darwin(v4, v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = (*(v5 + 88))(v9, v4);
  if (v10 == enum case for TTRSECreateRemindersViewModel.Item.section(_:))
  {
    goto LABEL_2;
  }

  if (v10 != enum case for TTRSECreateRemindersViewModel.Item.uncommittedReminder(_:) && v10 != enum case for TTRSECreateRemindersViewModel.Item.placeholderReminder(_:))
  {
    if (v10 == enum case for TTRSECreateRemindersViewModel.Item.suggestedReminder(_:))
    {
LABEL_2:
      (*(v5 + 8))(v9, v4);
LABEL_3:
      v11 = enum case for TTRICollectionViewCellSelectionOption.disallowed(_:);
      v12 = sub_10004B5E0();
      return (*(*(v12 - 8) + 104))(a2, v11, v12);
    }

    if (v10 == enum case for TTRSECreateRemindersViewModel.Item.listPicker(_:) || v10 == enum case for TTRSECreateRemindersViewModel.Item.suggestionHeader(_:) || v10 == enum case for TTRSECreateRemindersViewModel.Item.suggestionLoading(_:))
    {
      goto LABEL_3;
    }

    sub_10004CDC0();
    __break(1u);
    goto LABEL_20;
  }

  (*(v5 + 8))(v9, v4);
  v15 = sub_10004A140();
  v16 = sub_10004B5E0();
  v17 = *(*(v16 - 8) + 104);
  if ((v15 & 1) == 0)
  {
LABEL_20:
    v18 = &enum case for TTRICollectionViewCellSelectionOption.performPrimaryAction(_:);
    return v17(a2, *v18, v16);
  }

  v18 = &enum case for TTRICollectionViewCellSelectionOption.selectItem(_:);
  return v17(a2, *v18, v16);
}

id sub_10003729C(uint64_t a1, uint64_t (*a2)(_BYTE *), void *(*a3)(uint64_t *__return_ptr, uint64_t))
{
  v6 = v3;
  v7 = sub_10004AD30();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v26[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_10004A330();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12, v14);
  v16 = &v26[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10004A340();
  v17 = (*(v13 + 88))(v16, v12);
  if (v17 == enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.suggestedReminder(_:))
  {
    (*(v13 + 8))(v16, v12);
  }

  else
  {
    if (v17 == enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.remindersListItem(_:))
    {
      (*(v13 + 96))(v16, v12);
      (*(v8 + 32))(v11, v16, v7);
      v18 = a2(v11);
      __chkstk_darwin(v18, v19);
      *&v26[-16] = v6;
      *&v26[-8] = v11;
      sub_100034AE0(a3, &v26[-32], v18);

      sub_100009FF0(0, &qword_100068AE0, UIContextualAction_ptr);
      isa = sub_10004C710().super.isa;

      v21 = [objc_opt_self() configurationWithActions:isa];

      (*(v8 + 8))(v11, v7);
      return v21;
    }

    if (v17 != enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.listPicker(_:) && v17 != enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.suggestionHeader(_:) && v17 != enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.suggestionLoading(_:) && v17 != enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.unknown(_:))
    {
      result = sub_10004CDC0();
      __break(1u);
      return result;
    }
  }

  return 0;
}

uint64_t sub_1000375B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v25 = a4;
  v26 = a5;
  v24 = a3;
  v23[1] = a1;
  v23[2] = a2;
  v27 = a6;
  v7 = sub_10004AD30();
  v23[0] = v7;
  v8 = *(v7 - 8);
  v23[3] = *(v8 + 64);
  __chkstk_darwin(v7, v9);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10004AB10();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  v16 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  swift_weakInit();
  (*(v13 + 16))(v16, a1, v12);
  (*(v8 + 16))(v11, v24, v7);
  v18 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v19 = (v14 + *(v8 + 80) + v18) & ~*(v8 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  (*(v13 + 32))(v20 + v18, v16, v12);
  (*(v8 + 32))(v20 + v19, v11, v23[0]);

  v21 = sub_10004AB00();

  *v27 = v21;
  return result;
}

uint64_t sub_100037814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v73 = a4;
  v72 = a3;
  v7 = sub_100003150(&qword_1000683A8, &qword_100053938);
  __chkstk_darwin(v7 - 8, v8);
  v80 = v69 - v9;
  v81 = sub_10004A720();
  v79 = *(v81 - 8);
  __chkstk_darwin(v81, v10);
  v71 = v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003150(&qword_100067888, &unk_100053940);
  __chkstk_darwin(v12 - 8, v13);
  v78 = v69 - v14;
  v15 = sub_100003150(&qword_100067890, &qword_100052C70);
  __chkstk_darwin(v15 - 8, v16);
  v76 = v69 - v17;
  v77 = sub_10004AC10();
  v75 = *(v77 - 8);
  __chkstk_darwin(v77, v18);
  v74 = v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10004AB40();
  v85 = *(v20 - 8);
  v86 = v20;
  __chkstk_darwin(v20, v21);
  v84 = v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10004BE10();
  v82 = *(v23 - 8);
  __chkstk_darwin(v23, v24);
  v83 = v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10004AD30();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26, v29);
  v30 = v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  result = sub_100049F60();
  if (result)
  {
    v33 = result;
    v34 = v32;
    sub_100038F00(a1, &v87);
    if (v87)
    {
      v70 = v23;
      v90[0] = v87;
      v90[1] = v88;
      v91 = v89;
      v35 = swift_allocObject();
      v69[1] = v34;
      v36 = v35;
      swift_weakInit();
      (*(v27 + 16))(v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v26);
      v37 = (*(v27 + 80) + 24) & ~*(v27 + 80);
      v38 = (v28 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
      v39 = swift_allocObject();
      *(v39 + 16) = v36;
      (*(v27 + 32))(v39 + v37, v30, v26);
      v40 = (v39 + v38);
      v41 = v72;
      v42 = v73;
      *v40 = v72;
      v40[1] = v42;
      v43 = swift_allocObject();
      swift_weakInit();
      v44 = swift_allocObject();
      v44[2] = v43;
      v44[3] = v41;
      v44[4] = v42;
      v45 = type metadata accessor for ReminderDetailModuleDelegate();
      v46 = swift_allocObject();
      v46[2] = sub_1000454DC;
      v46[3] = v39;
      v46[4] = sub_1000455E0;
      v46[5] = v44;
      *(&v88 + 1) = v45;
      *&v87 = v46;
      v47 = OBJC_IVAR____TtC25RemindersSharingExtension30TTRISECreateRemindersPresenter_currentEventHandler;
      swift_beginAccess();
      sub_10002DA04(v41, v42);
      sub_10002DA04(v41, v42);

      sub_1000455EC(&v87, v5 + v47);
      swift_endAccess();
      sub_1000032DC((v5 + 64), *(v5 + 88));
      v48 = *&v90[0];
      swift_getObjectType();
      v73 = v33;
      sub_10004A290();
      (*(v85 + 104))(v84, enum case for TTRIReminderDetailStyle.sharingExtensionMultiReminders(_:), v86);
      sub_10004565C(&qword_1000689D0, type metadata accessor for ReminderDetailModuleDelegate, &unk_100053F14);
      sub_10004AD90();
      v49 = v48;
      v50 = v74;
      sub_10004AC00();
      v51 = sub_10004A5C0();
      v52 = v76;
      (*(*(v51 - 8) + 56))(v76, 1, 1, v51);
      v53 = sub_10004BCD0();
      v54 = v78;
      (*(*(v53 - 8) + 56))(v78, 1, 1, v53);
      v55 = sub_10004AD80();
      sub_10000A138(v54, &qword_100067888, &unk_100053940);
      sub_10000A138(v52, &qword_100067890, &qword_100052C70);
      (*(v75 + 8))(v50, v77);
      v56 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v55];
      sub_1000032DC(v90 + 1, v91);
      v57 = v80;
      sub_10004BD00();
      v58 = v57;
      v59 = v79;
      v60 = v81;
      if ((*(v79 + 48))(v57, 1, v81) == 1)
      {
        sub_10000A138(v57, &qword_1000683A8, &qword_100053938);
      }

      else
      {
        v64 = v71;
        (*(v59 + 32))(v71, v58, v60);
        sub_10004C950();
        (*(v59 + 8))(v64, v60);
      }

      v65 = [v56 presentationController];
      if (v65)
      {
        v66 = v65;
        swift_getObjectType();
        sub_10004B330();
      }

      swift_unknownObjectWeakAssign();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v68 = Strong;
        [Strong presentViewController:v56 animated:1 completion:0];
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
      }

      (*(v85 + 8))(v84, v86);
      (*(v82 + 8))(v83, v70);
      v61 = &unk_1000689D8;
      v62 = &unk_1000540F0;
      v63 = v90;
    }

    else
    {
      swift_unknownObjectRelease();
      v61 = &qword_1000689C8;
      v62 = &unk_1000540E0;
      v63 = &v87;
    }

    return sub_10000A138(v63, v61, v62);
  }

  return result;
}

id sub_1000381D4(uint64_t a1)
{
  v2 = sub_10004AD30();
  v23 = *(v2 - 8);
  __chkstk_darwin(v2, v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004ACD0();
  v22 = *(v6 - 8);
  __chkstk_darwin(v6, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004A350();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_10004A140() & 1) == 0)
  {
    (*(v11 + 16))(v14, a1, v10);
    v15 = (*(v11 + 88))(v14, v10);
    if (v15 == enum case for TTRSECreateRemindersViewModel.Item.section(_:))
    {
      goto LABEL_3;
    }

    if (v15 == enum case for TTRSECreateRemindersViewModel.Item.uncommittedReminder(_:))
    {
      (*(v11 + 96))(v14, v10);
      v17 = v22;
      (*(v22 + 32))(v9, v14, v6);
      (*(v17 + 16))(v5, v9, v6);
      v18 = v23;
      (*(v23 + 104))(v5, enum case for TTRRemindersListViewModel.Item.uncommittedReminder(_:), v2);
      v19 = sub_100038550(v5);
      (*(v18 + 8))(v5, v2);
      (*(v17 + 8))(v9, v6);
      return v19;
    }

    if (v15 == enum case for TTRSECreateRemindersViewModel.Item.placeholderReminder(_:) || v15 == enum case for TTRSECreateRemindersViewModel.Item.suggestedReminder(_:))
    {
LABEL_3:
      (*(v11 + 8))(v14, v10);
    }

    else if (v15 != enum case for TTRSECreateRemindersViewModel.Item.listPicker(_:) && v15 != enum case for TTRSECreateRemindersViewModel.Item.suggestionHeader(_:) && v15 != enum case for TTRSECreateRemindersViewModel.Item.suggestionLoading(_:))
    {
      result = sub_10004CDC0();
      __break(1u);
      return result;
    }
  }

  return 0;
}

id sub_100038550(uint64_t a1)
{
  v31 = sub_10004AD30();
  v3 = *(v31 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v31, v5);
  v6 = sub_10004B890();
  v32 = *(v6 - 8);
  v33 = v6;
  __chkstk_darwin(v6, v7);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = swift_allocObject();
  *(v30 + 16) = _swiftEmptyArrayStorage;
  v29[1] = sub_100003150(&qword_100068A60, &qword_1000541C0);
  v10 = swift_allocObject();
  v34 = xmmword_1000528D0;
  *(v10 + 16) = xmmword_1000528D0;
  v11 = sub_10004AF10();
  v36 = v1;
  v37 = a1;
  v29[0] = sub_10003E748(&_swiftEmptyDictionarySingleton, sub_100048214, v35, v11);

  v12 = swift_allocObject();
  swift_weakInit();
  v13 = v31;
  (*(v3 + 16))(v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v31);
  v14 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  (*(v3 + 32))(v15 + v14, v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  sub_10004B880();
  v16 = sub_10004B920();
  (*(v32 + 8))(v9, v33);
  *(v10 + 32) = v16;
  v17._rawValue = v10;
  v18 = v30;
  sub_10003C8DC(v17, v30);

  v19 = swift_allocObject();
  *(v19 + 16) = v34;
  *(v19 + 32) = sub_10003CA8C(a1);
  v20._rawValue = v19;
  sub_10003C8DC(v20, v18);

  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100052650;
  *(v21 + 32) = sub_10003D1F0(a1);
  *(v21 + 40) = sub_10003D4FC(a1);
  *(v21 + 48) = sub_10003DC08(a1);
  *(v21 + 56) = sub_10003DFB4(a1);
  v22._rawValue = v21;
  sub_10003C8DC(v22, v18);

  v23 = swift_allocObject();
  *(v23 + 16) = v34;
  *(v23 + 32) = sub_10003E35C(a1);
  v24._rawValue = v23;
  sub_10003C8DC(v24, v18);

  v25 = objc_opt_self();
  aBlock[4] = sub_1000482B4;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000459B0;
  aBlock[3] = &unk_100060580;
  v26 = _Block_copy(aBlock);

  v27 = [v25 configurationWithIdentifier:0 previewProvider:0 actionProvider:v26];

  _Block_release(v26);
  return v27;
}

id sub_1000389C4(uint64_t a1)
{
  v2 = sub_10004A380();
  v35 = *(v2 - 8);
  __chkstk_darwin(v2, v3);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004ACE0();
  v36 = *(v6 - 8);
  v37 = v6;
  __chkstk_darwin(v6, v7);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004AD30();
  v38 = *(v10 - 8);
  __chkstk_darwin(v10, v11);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10004A330();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14, v16);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10004A140())
  {
    return 0;
  }

  v34[1] = a1;
  sub_10004A340();
  v19 = (*(v15 + 88))(v18, v14);
  if (v19 != enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.suggestedReminder(_:))
  {
    if (v19 == enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.remindersListItem(_:))
    {
      (*(v15 + 96))(v18, v14);
      v20 = v38;
      (*(v38 + 32))(v13, v18, v10);
      sub_10004AD10();
      v21 = v36;
      v22 = v37;
      v23 = (*(v36 + 88))(v9, v37);
      if (v23 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:))
      {
        (*(v20 + 8))(v13, v10);
LABEL_7:
        (*(v21 + 8))(v9, v22);
        return 0;
      }

      if (v23 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:))
      {
        sub_10004A310();
        v28 = type metadata accessor for TTRISECreateRemindersDragItem(0);
        v29 = objc_allocWithZone(v28);
        v30 = v35;
        (*(v35 + 16))(v29 + OBJC_IVAR____TtC25RemindersSharingExtension29TTRISECreateRemindersDragItem_itemID, v5, v2);
        v39.receiver = v29;
        v39.super_class = v28;
        v31 = objc_msgSendSuper2(&v39, "init");
        (*(v30 + 8))(v5, v2);
        v32 = [objc_allocWithZone(NSItemProvider) initWithObject:v31];
        v33 = [objc_allocWithZone(UIDragItem) initWithItemProvider:v32];
        sub_10004903C();

        (*(v38 + 8))(v13, v10);
        (*(v21 + 8))(v9, v22);
        return v33;
      }

      if (v23 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:))
      {
        (*(v38 + 8))(v13, v10);
        goto LABEL_7;
      }

      if (v23 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
      {
        (*(v38 + 8))(v13, v10);
        return 0;
      }
    }

    else
    {
      if (v19 == enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.listPicker(_:) || v19 == enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.suggestionHeader(_:) || v19 == enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.suggestionLoading(_:) || v19 == enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.unknown(_:))
      {
        return 0;
      }

      sub_10004CDC0();
      __break(1u);
    }

    result = sub_10004CDC0();
    __break(1u);
    return result;
  }

  (*(v15 + 8))(v18, v14);
  return 0;
}

uint64_t sub_100038F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100003150(&qword_1000683A8, &qword_100053938);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v11 = &v29 - v10;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1000230D4(v11);
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = sub_10004A720();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  }

  v13 = sub_10004A210();
  if (v13)
  {
    v14 = v13;
    v29 = v7;
    p_MangledTypeName = &stru_100051FC0[5].MangledTypeName;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100003150(&qword_100067FD8, &unk_100053660);
      v16 = sub_10004AD30();
      v17 = *(v16 - 8);
      v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1000528D0;
      (*(v17 + 16))(v19 + v18, a1, v16);
      v20 = v14;
      sub_100023250(v19);
      swift_unknownObjectRelease();
      swift_setDeallocating();
      (*(v17 + 8))(v19 + v18, v16);
      p_MangledTypeName = (stru_100051FC0 + 64);
      swift_deallocClassInstance();
    }

    else
    {
      v22 = v14;
    }

    sub_100003150(&qword_100067FD8, &unk_100053660);
    v23 = sub_10004AD30();
    v24 = *(v23 - 8);
    v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = *(p_MangledTypeName + 141);
    (*(v24 + 16))(v26 + v25, a1, v23);
    sub_10000A198(v11, v29, &qword_1000683A8, &qword_100053938);
    v27 = sub_10004BBF0();
    swift_allocObject();

    v28 = sub_10004BBE0();
    v31 = v27;
    v32 = &protocol witness table for TTRIRemindersListDetailPopoverAnchorProvider;

    *&v30 = v28;
    sub_10000A138(v11, &qword_1000683A8, &qword_100053938);
    *a2 = v14;
    return sub_100003674(&v30, a2 + 8);
  }

  else
  {
    result = sub_10000A138(v11, &qword_1000683A8, &qword_100053938);
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
  }

  return result;
}

void sub_1000392CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7)
{
  v46 = a5;
  v12 = sub_10004B230();
  v48 = *(v12 - 8);
  __chkstk_darwin(v12, v13);
  v47 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_10004BCC0();
  v15 = *(v45 - 8);
  __chkstk_darwin(v45, v16);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v20 = Strong;
  v41 = a3;
  v42 = v12;
  v43 = a7;
  v44 = a6;
  sub_10004A9D0();
  v22 = v21;
  v23 = objc_opt_self();
  v40 = v22;
  v24 = sub_10004C680();
  v25 = swift_allocObject();
  v25[2] = v20;
  v25[3] = a1;
  v25[4] = a2;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1000456A4;
  *(v26 + 24) = v25;
  aBlock[4] = sub_100014CDC;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10003415C;
  aBlock[3] = &unk_100060288;
  v27 = _Block_copy(aBlock);

  swift_unknownObjectRetain();

  [v23 withActionName:v24 block:v27];

  _Block_release(v27);
  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if (v23)
  {
    __break(1u);
    goto LABEL_14;
  }

  sub_100003150(&qword_1000689E0, &qword_1000540F8);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100052630;
  sub_10004BCB0();
  sub_10004BCA0();
  aBlock[0] = v28;
  sub_10004565C(&qword_100067908, &type metadata accessor for TTRRemindersListEditingSessionDisplayTargets, &protocol conformance descriptor for TTRRemindersListEditingSessionDisplayTargets);
  sub_100003150(&qword_1000689E8, &qword_100054100);
  sub_100003364(&qword_1000689F0, &qword_1000689E8, &qword_100054100, &protocol conformance descriptor for [A]);
  v29 = v45;
  sub_10004CBC0();
  sub_100003150(&qword_100067FD8, &unk_100053660);
  v30 = sub_10004AD30();
  v31 = *(v30 - 8);
  v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1000528D0;
  (*(v31 + 16))(v33 + v32, v46, v30);
  sub_10004A0B0();

  (*(v15 + 8))(v18, v29);
  sub_1000032DC((v20 + 64), *(v20 + 88));
  v35 = v47;
  v34 = v48;
  v36 = v42;
  (*(v48 + 16))(v47, v41, v42);
  v37 = (*(v34 + 88))(v35, v36);
  if (v37 != enum case for TTRIViewControllerDismissalState.dismissedOrPopped(_:))
  {
    if (v37 == enum case for TTRIViewControllerDismissalState.requested(_:))
    {

      v38 = swift_unknownObjectWeakLoadStrong();
      if (v38)
      {
        v39 = v38;
        [v38 dismissViewControllerAnimated:1 completion:0];
      }

      else
      {
      }

      goto LABEL_9;
    }

LABEL_14:
    sub_10004CDC0();
    __break(1u);
    return;
  }

LABEL_9:
  a6 = v44;
LABEL_10:
  if (a6)
  {
    a6(1);
  }
}

uint64_t sub_100039894(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = sub_10004B230();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10000DAC4(result + 64, v14);

    sub_1000032DC(v14, v14[3]);
    (*(v6 + 16))(v9, a1, v5);
    v11 = (*(v6 + 88))(v9, v5);
    if (v11 != enum case for TTRIViewControllerDismissalState.dismissedOrPopped(_:))
    {
      if (v11 != enum case for TTRIViewControllerDismissalState.requested(_:))
      {
        result = sub_10004CDC0();
        __break(1u);
        return result;
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v13 = Strong;
        [Strong dismissViewControllerAnimated:1 completion:0];
      }
    }

    result = sub_10000343C(v14);
  }

  if (a3)
  {
    return a3(0);
  }

  return result;
}

uint64_t sub_100039A50(uint64_t a1, uint64_t a2, void (*a3)(BOOL), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100039AE4(a6, a7, a2, a3, a4);
  }

  return result;
}

uint64_t sub_100039AE4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(BOOL), uint64_t a5)
{
  v73 = a4;
  v74 = a5;
  v70[1] = a3;
  v81 = a2;
  v79 = a1;
  v6 = sub_10004A720();
  v71 = *(v6 - 8);
  v72 = v6;
  __chkstk_darwin(v6, v7);
  v70[0] = v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10004AB10();
  v77 = *(v9 - 8);
  v78 = v9;
  __chkstk_darwin(v9, v10);
  v76 = v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_10004AD40();
  v12 = *(v80 - 8);
  __chkstk_darwin(v80, v13);
  v15 = v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100003150(&qword_100067630, &qword_100052960);
  __chkstk_darwin(v16 - 8, v17);
  v19 = v70 - v18;
  v20 = type metadata accessor for TTRISECreateRemindersPresentationTree(0);
  __chkstk_darwin(v20 - 8, v21);
  v23 = v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10004AD30();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24, v26);
  v28 = v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v5;
  sub_10004BF40();

  sub_10002BC80(v23);
  v29 = sub_10004AF90();

  swift_getObjectType();
  v82 = v29;
  sub_10004ACF0();
  sub_10004AC20();
  (*(v12 + 8))(v15, v80);
  swift_unknownObjectRelease();
  if ((*(v25 + 48))(v19, 1, v24) == 1)
  {
    return sub_10000A138(v19, &qword_100067630, &qword_100052960);
  }

  (*(v25 + 32))(v28, v19, v24);
  v32 = v76;
  v31 = v77;
  v33 = v78;
  (*(v77 + 16))(v76, v79, v78);
  v34 = (*(v31 + 88))(v32, v33);
  v35 = v28;
  if (v34 == enum case for TTRReminderSwipeAction.delete(_:))
  {
    if (qword_100066F40 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_40;
  }

  if (v34 == enum case for TTRReminderSwipeAction.showDetails(_:))
  {
    if (qword_100066F40 != -1)
    {
      swift_once();
    }

    v43 = sub_10004C1B0();
    sub_10000D49C(v43, qword_1000685E0);
    v44 = sub_100011BA4(_swiftEmptyArrayStorage);
    sub_100014D1C("Create Reminders Show Details (Swipe Action)", 44, 2, v44);

    v45 = v70[0];
    sub_10004A700();
    sub_100037814(v28, v45, v73, v74);
    (*(v71 + 8))(v45, v72);
    return (*(v25 + 8))(v35, v24);
  }

  if (v34 == enum case for TTRReminderSwipeAction.flag(_:))
  {
    if (qword_100066F40 != -1)
    {
      swift_once();
    }

    v46 = sub_10004C1B0();
    sub_10000D49C(v46, qword_1000685E0);
    v47 = sub_100011BA4(_swiftEmptyArrayStorage);
    sub_100014D1C("Create Reminders Flag (Swipe Action)", 36, 2, v47);

    sub_100003150(&qword_100067FD8, &unk_100053660);
    v48 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v49 = swift_allocObject();
    *(v49 + 1) = xmmword_1000528D0;
    (*(v25 + 16))(&v49[v48], v35, v24);
    v50 = 1;
LABEL_19:
    v54._rawValue = v49;
    v55 = sub_10004A0E0(v50, v54);

    v42 = v55 > 0;
    goto LABEL_20;
  }

  if (v34 == enum case for TTRReminderSwipeAction.unflag(_:))
  {
    if (qword_100066F40 != -1)
    {
      swift_once();
    }

    v51 = sub_10004C1B0();
    sub_10000D49C(v51, qword_1000685E0);
    v52 = sub_100011BA4(_swiftEmptyArrayStorage);
    sub_100014D1C("Create Reminders Unflag (Swipe Action)", 38, 2, v52);

    sub_100003150(&qword_100067FD8, &unk_100053660);
    v53 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v49 = swift_allocObject();
    *(v49 + 1) = xmmword_1000528D0;
    (*(v25 + 16))(&v49[v53], v35, v24);
    v50 = 0;
    goto LABEL_19;
  }

  if (v34 == enum case for TTRReminderSwipeAction.indent(_:))
  {
    if (qword_100066F40 != -1)
    {
      swift_once();
    }

    v56 = sub_10004C1B0();
    sub_10000D49C(v56, qword_1000685E0);
    v57 = sub_100011BA4(_swiftEmptyArrayStorage);
    sub_100014D1C("Create Reminders Indent (Swipe Action)", 38, 2, v57);

    sub_100003150(&qword_100067FD8, &unk_100053660);
    v58 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v59 = swift_allocObject();
    *(v59 + 1) = xmmword_1000528D0;
    (*(v25 + 16))(&v59[v58], v35, v24);
    v60._rawValue = v59;
    v61 = sub_10004A070(v60);
LABEL_30:
    v42 = v61;

    goto LABEL_20;
  }

  if (v34 == enum case for TTRReminderSwipeAction.outdent(_:))
  {
    if (qword_100066F40 != -1)
    {
      swift_once();
    }

    v62 = sub_10004C1B0();
    sub_10000D49C(v62, qword_1000685E0);
    v63 = sub_100011BA4(_swiftEmptyArrayStorage);
    sub_100014D1C("Create Reminders Outdent (Swipe Action)", 39, 2, v63);

    sub_100003150(&qword_100067FD8, &unk_100053660);
    v64 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v65 = swift_allocObject();
    *(v65 + 1) = xmmword_1000528D0;
    (*(v25 + 16))(&v65[v64], v35, v24);
    v66._rawValue = v65;
    v61 = sub_10004A090(v66);
    goto LABEL_30;
  }

  v42 = 0;
  if (v34 == enum case for TTRReminderSwipeAction.postponeToTomorrow(_:) || v34 == enum case for TTRReminderSwipeAction.postponeToThisWeekend(_:) || v34 == enum case for TTRReminderSwipeAction.postponeToNextWeekend(_:) || v34 == enum case for TTRReminderSwipeAction.setCustomDateAndTime(_:) || v34 == enum case for TTRReminderSwipeAction.permanentlyHide(_:) || v34 == enum case for TTRReminderSwipeAction.moveToAnyList(_:))
  {
    goto LABEL_20;
  }

  if (qword_100066F40 != -1)
  {
    swift_once();
  }

  v67 = sub_10004C1B0();
  sub_10000D49C(v67, qword_1000685E0);
  v68 = sub_100011BA4(_swiftEmptyArrayStorage);
  v69 = sub_100011BA4(_swiftEmptyArrayStorage);
  sub_100014FC0("Unknown swipe action", 20, 2, v68, v69);
  __break(1u);
LABEL_40:
  swift_once();
LABEL_5:
  v36 = sub_10004C1B0();
  sub_10000D49C(v36, qword_1000685E0);
  v37 = sub_100011BA4(_swiftEmptyArrayStorage);
  sub_100014D1C("Create Reminders Delete (Swipe Action)", 38, 2, v37);

  sub_100003150(&qword_100067FD8, &unk_100053660);
  v38 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v39 = swift_allocObject();
  *(v39 + 1) = xmmword_1000528D0;
  (*(v25 + 16))(&v39[v38], v35, v24);
  v40._rawValue = v39;
  v41 = sub_10004A060(v40);

  if (!v41)
  {
    v42 = 0;
LABEL_20:
    v73(v42);
  }

  return (*(v25 + 8))(v35, v24);
}

uint64_t sub_10003A5FC(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v3 = sub_10004AD30();
  v2[24] = v3;
  v4 = *(v3 - 8);
  v2[25] = v4;
  v2[26] = *(v4 + 64);
  v2[27] = swift_task_alloc();
  sub_10004C770();
  v2[28] = sub_10004C760();
  v6 = sub_10004C750();
  v2[29] = v6;
  v2[30] = v5;

  return _swift_task_switch(sub_10003A6F8, v6, v5);
}

uint64_t sub_10003A6F8()
{
  v0[21] = *(v0[23] + 104);
  v1 = swift_task_alloc();
  v0[31] = v1;
  v2 = sub_10004A780();
  *v1 = v0;
  v1[1] = sub_10003A7B4;

  return TTRPrivacyChecker.checkAndPromptNotificationAccess(needsPresentationOfWarmingSheet:)(2, v2, &protocol witness table for TTRIPrivacyChecker);
}

uint64_t sub_10003A7B4()
{
  v1 = *v0;

  v2 = *(v1 + 240);
  v3 = *(v1 + 232);

  return _swift_task_switch(sub_10003A8D4, v3, v2);
}

uint64_t sub_10003A8D4()
{
  v1 = *(v0 + 176);

  sub_100038F00(v1, v0 + 64);
  if (*(v0 + 64))
  {
    v2 = *(v0 + 216);
    v3 = *(v0 + 192);
    v4 = *(v0 + 200);
    v6 = *(v0 + 176);
    v5 = *(v0 + 184);
    v7 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v7;
    *(v0 + 48) = *(v0 + 96);
    v8 = swift_allocObject();
    swift_weakInit();
    (*(v4 + 16))(v2, v6, v3);
    v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    (*(v4 + 32))(v10 + v9, v2, v3);
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = type metadata accessor for ReminderDetailModuleDelegate();
    v13 = swift_allocObject();
    *(v0 + 112) = v13;
    *(v13 + 16) = sub_10004896C;
    *(v13 + 24) = v10;
    *(v13 + 32) = sub_100049034;
    *(v13 + 40) = v11;
    *(v0 + 136) = v12;
    v14 = OBJC_IVAR____TtC25RemindersSharingExtension30TTRISECreateRemindersPresenter_currentEventHandler;
    swift_beginAccess();

    sub_1000455EC(v0 + 112, v5 + v14);
    swift_endAccess();
    sub_1000032DC((v5 + 64), *(v5 + 88));
    v15 = *(v0 + 16);
    v16 = sub_10004565C(&qword_1000689D0, type metadata accessor for ReminderDetailModuleDelegate, &unk_100053F14);

    sub_10002BCE0(v15, v13, v16, (v0 + 24));

    v17 = &unk_1000689D8;
    v18 = &unk_1000540F0;
    v19 = v0 + 16;
  }

  else
  {
    v17 = &qword_1000689C8;
    v18 = &unk_1000540E0;
    v19 = v0 + 64;
  }

  sub_10000A138(v19, v17, v18);

  v20 = *(v0 + 8);

  return v20();
}

void sub_10003AB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a5;
  v8 = sub_10004B230();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10004BCC0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13, v15);
  v17 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v39 = v12;
    v40 = v9;
    v41 = a3;
    v42 = v8;
    sub_10004A9B0();
    v21 = v20;
    v22 = objc_opt_self();
    v38[0] = v21;
    v23 = sub_10004C680();
    v24 = swift_allocObject();
    v24[2] = v19;
    v24[3] = a1;
    v24[4] = a2;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_100049038;
    *(v25 + 24) = v24;
    v38[1] = v24;
    aBlock[4] = sub_10004901C;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10003415C;
    aBlock[3] = &unk_1000607D8;
    v26 = _Block_copy(aBlock);

    swift_unknownObjectRetain();

    [v22 withActionName:v23 block:v26];

    _Block_release(v26);
    LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

    if (v26)
    {
      __break(1u);
    }

    else
    {
      sub_100003150(&qword_1000689E0, &qword_1000540F8);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_100052630;
      sub_10004BCB0();
      sub_10004BCA0();
      aBlock[0] = v27;
      sub_10004565C(&qword_100067908, &type metadata accessor for TTRRemindersListEditingSessionDisplayTargets, &protocol conformance descriptor for TTRRemindersListEditingSessionDisplayTargets);
      sub_100003150(&qword_1000689E8, &qword_100054100);
      sub_100003364(&qword_1000689F0, &qword_1000689E8, &qword_100054100, &protocol conformance descriptor for [A]);
      sub_10004CBC0();
      sub_100003150(&qword_100067FD8, &unk_100053660);
      v28 = sub_10004AD30();
      v29 = *(v28 - 8);
      v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1000528D0;
      (*(v29 + 16))(v31 + v30, v43, v28);
      sub_10004A0B0();

      (*(v14 + 8))(v17, v13);
      sub_1000032DC((v19 + 64), *(v19 + 88));
      v33 = v39;
      v32 = v40;
      v34 = v42;
      (*(v40 + 16))(v39, v41, v42);
      v35 = (*(v32 + 88))(v33, v34);
      if (v35 == enum case for TTRIViewControllerDismissalState.dismissedOrPopped(_:))
      {

        return;
      }

      if (v35 == enum case for TTRIViewControllerDismissalState.requested(_:))
      {

        v36 = swift_unknownObjectWeakLoadStrong();
        if (v36)
        {
          v37 = v36;
          [v36 dismissViewControllerAnimated:1 completion:0];
        }

        else
        {
        }

        return;
      }
    }

    sub_10004CDC0();
    __break(1u);
  }
}

uint64_t sub_10003B114(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10004BE10();
  v29 = *(v4 - 8);
  __chkstk_darwin(v4, v5);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004AD30();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v12 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  result = sub_100049F60();
  if (result)
  {
    v28[1] = v14;
    sub_100038F00(a1, &v30);
    if (v30)
    {
      v33[0] = v30;
      v33[1] = v31;
      v33[2] = v32;
      v15 = swift_allocObject();
      v28[0] = v4;
      v16 = v15;
      swift_weakInit();
      (*(v9 + 16))(v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
      v17 = (*(v9 + 80) + 24) & ~*(v9 + 80);
      v18 = swift_allocObject();
      *(v18 + 16) = v16;
      (*(v9 + 32))(v18 + v17, v12, v8);
      v19 = swift_allocObject();
      swift_weakInit();
      v20 = type metadata accessor for ReminderDetailModuleDelegate();
      v21 = swift_allocObject();
      v21[2] = sub_100047B94;
      v21[3] = v18;
      v21[4] = sub_100049034;
      v21[5] = v19;
      *(&v31 + 1) = v20;
      *&v30 = v21;
      v22 = OBJC_IVAR____TtC25RemindersSharingExtension30TTRISECreateRemindersPresenter_currentEventHandler;
      swift_beginAccess();

      sub_1000455EC(&v30, v2 + v22);
      swift_endAccess();
      sub_1000032DC((v2 + 64), *(v2 + 88));
      v23 = *&v33[0];
      swift_getObjectType();
      sub_10004A290();
      v24 = sub_10004565C(&qword_1000689D0, type metadata accessor for ReminderDetailModuleDelegate, &unk_100053F14);

      sub_10002C444(v23, v7, v21, v24, v33 + 1);
      swift_unknownObjectRelease();

      (*(v29 + 8))(v7, v28[0]);
      v25 = &unk_1000689D8;
      v26 = &unk_1000540F0;
      v27 = v33;
    }

    else
    {
      swift_unknownObjectRelease();
      v25 = &qword_1000689C8;
      v26 = &unk_1000540E0;
      v27 = &v30;
    }

    return sub_10000A138(v27, v25, v26);
  }

  return result;
}

void sub_10003B4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a5;
  v8 = sub_10004B230();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10004BCC0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13, v15);
  v17 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v39 = v12;
    v40 = v9;
    v41 = a3;
    v42 = v8;
    sub_10004A9C0();
    v21 = v20;
    v22 = objc_opt_self();
    v38[0] = v21;
    v23 = sub_10004C680();
    v24 = swift_allocObject();
    v24[2] = v19;
    v24[3] = a1;
    v24[4] = a2;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_100049038;
    *(v25 + 24) = v24;
    v38[1] = v24;
    aBlock[4] = sub_10004901C;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10003415C;
    aBlock[3] = &unk_1000603C8;
    v26 = _Block_copy(aBlock);

    swift_unknownObjectRetain();

    [v22 withActionName:v23 block:v26];

    _Block_release(v26);
    LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

    if (v26)
    {
      __break(1u);
    }

    else
    {
      sub_100003150(&qword_1000689E0, &qword_1000540F8);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_100052630;
      sub_10004BCB0();
      sub_10004BCA0();
      aBlock[0] = v27;
      sub_10004565C(&qword_100067908, &type metadata accessor for TTRRemindersListEditingSessionDisplayTargets, &protocol conformance descriptor for TTRRemindersListEditingSessionDisplayTargets);
      sub_100003150(&qword_1000689E8, &qword_100054100);
      sub_100003364(&qword_1000689F0, &qword_1000689E8, &qword_100054100, &protocol conformance descriptor for [A]);
      sub_10004CBC0();
      sub_100003150(&qword_100067FD8, &unk_100053660);
      v28 = sub_10004AD30();
      v29 = *(v28 - 8);
      v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1000528D0;
      (*(v29 + 16))(v31 + v30, v43, v28);
      sub_10004A0B0();

      (*(v14 + 8))(v17, v13);
      sub_1000032DC((v19 + 64), *(v19 + 88));
      v33 = v39;
      v32 = v40;
      v34 = v42;
      (*(v40 + 16))(v39, v41, v42);
      v35 = (*(v32 + 88))(v33, v34);
      if (v35 == enum case for TTRIViewControllerDismissalState.dismissedOrPopped(_:))
      {

        return;
      }

      if (v35 == enum case for TTRIViewControllerDismissalState.requested(_:))
      {

        v36 = swift_unknownObjectWeakLoadStrong();
        if (v36)
        {
          v37 = v36;
          [v36 dismissViewControllerAnimated:1 completion:0];
        }

        else
        {
        }

        return;
      }
    }

    sub_10004CDC0();
    __break(1u);
  }
}

uint64_t sub_10003BA68(uint64_t a1, uint64_t a2)
{
  v3 = sub_10004B230();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10000DAC4(result + 64, v12);

    sub_1000032DC(v12, v12[3]);
    (*(v4 + 16))(v7, a1, v3);
    v9 = (*(v4 + 88))(v7, v3);
    if (v9 != enum case for TTRIViewControllerDismissalState.dismissedOrPopped(_:))
    {
      if (v9 != enum case for TTRIViewControllerDismissalState.requested(_:))
      {
        result = sub_10004CDC0();
        __break(1u);
        return result;
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v11 = Strong;
        [Strong dismissViewControllerAnimated:1 completion:0];
      }
    }

    return sub_10000343C(v12);
  }

  return result;
}

uint64_t sub_10003BC04(uint64_t a1)
{
  v3 = sub_100003150(&qword_1000683A8, &qword_100053938);
  __chkstk_darwin(v3 - 8, v4);
  v49 = &v45 - v5;
  v6 = sub_10004A720();
  v48 = *(v6 - 8);
  __chkstk_darwin(v6, v7);
  v46 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003150(&qword_100068AB0, &qword_1000541F0);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v45 - v11;
  v47 = sub_10004B3D0();
  v13 = *(v47 - 8);
  __chkstk_darwin(v47, v14);
  v16 = (&v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_10004AD30();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17, v20);
  v21 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100038F00(a1, &v50);
  if (v50)
  {
    v53[0] = v50;
    v53[1] = v51;
    v54 = v52;
    v22 = swift_allocObject();
    v45 = v6;
    v23 = v22;
    swift_weakInit();
    (*(v18 + 16))(&v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v17);
    v24 = (*(v18 + 80) + 24) & ~*(v18 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = v23;
    (*(v18 + 32))(v25 + v24, v21, v17);
    v26 = type metadata accessor for HashtagEditorModuleDelegate();
    v27 = swift_allocObject();
    *(v27 + 16) = sub_100048534;
    *(v27 + 24) = v25;
    *(&v51 + 1) = v26;
    *&v50 = v27;
    v28 = OBJC_IVAR____TtC25RemindersSharingExtension30TTRISECreateRemindersPresenter_currentEventHandler;
    swift_beginAccess();

    sub_1000455EC(&v50, v1 + v28);
    swift_endAccess();
    sub_1000032DC((v1 + 64), *(v1 + 88));
    sub_10004565C(&qword_100068AB8, type metadata accessor for HashtagEditorModuleDelegate, &unk_100053E8C);
    sub_10004AC90();
    *v16 = 1;
    v29 = v47;
    (*(v13 + 104))(v16, enum case for TTRIHashtagEditorPresentationStyle.batchEdit(_:), v47);
    v30 = sub_10004ADB0();
    (*(*(v30 - 8) + 56))(v12, 1, 1, v30);
    v31 = sub_10004AC80();
    sub_10000A138(v12, &qword_100068AB0, &qword_1000541F0);
    (*(v13 + 8))(v16, v29);
    swift_unknownObjectRelease();
    v32 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v31];
    sub_1000032DC(v53 + 1, v54);
    v33 = v49;
    v34 = v45;
    sub_10004BD00();
    v35 = v48;
    if ((*(v48 + 48))(v33, 1, v34) == 1)
    {
      sub_10000A138(v33, &qword_1000683A8, &qword_100053938);
    }

    else
    {
      v39 = v46;
      (*(v35 + 32))(v46, v33, v34);
      sub_10004C950();
      (*(v35 + 8))(v39, v34);
    }

    v40 = [v32 presentationController];
    if (v40)
    {
      v41 = v40;
      [v40 setDelegate:v31];
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v43 = Strong;
      [Strong presentViewController:v32 animated:1 completion:0];
    }

    v36 = &unk_1000689D8;
    v37 = &unk_1000540F0;
    v38 = v53;
  }

  else
  {
    v36 = &qword_1000689C8;
    v37 = &unk_1000540E0;
    v38 = &v50;
  }

  return sub_10000A138(v38, v36, v37);
}

uint64_t sub_10003C228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10004BCC0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_10004BCB0();
    sub_100003150(&qword_100067FD8, &unk_100053660);
    v10 = sub_10004AD30();
    v11 = *(v10 - 8);
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1000528D0;
    (*(v11 + 16))(v13 + v12, a3, v10);
    sub_10004A0B0();

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_10003C414(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v2 = sub_10004BD10();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10004BCC0();
  v7 = *(v24 - 8);
  __chkstk_darwin(v24, v8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_10004CC70(34);
  v11 = sub_10004CE80();
  v13 = v12;

  v25 = v11;
  v26 = v13;
  v28._object = 0x800000010004F7F0;
  v28._countAndFlagsBits = 0xD000000000000020;
  sub_10004C6D0(v28);
  v14 = sub_10004A150();

  if (v14)
  {
    v21[1] = swift_getObjectType();
    sub_10004B0D0();
    v22 = v6;
    sub_1000032DC(&v25, v27);
    sub_10004B2A0();
    sub_10000343C(&v25);
    sub_100003150(&qword_1000689E0, &qword_1000540F8);
    v23 = v2;
    v16 = v3;
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_100052630;
    sub_10004BCB0();
    sub_10004BCA0();
    v25 = v17;
    sub_10004565C(&qword_100067908, &type metadata accessor for TTRRemindersListEditingSessionDisplayTargets, &protocol conformance descriptor for TTRRemindersListEditingSessionDisplayTargets);
    sub_100003150(&qword_1000689E8, &qword_100054100);
    sub_100003364(&qword_1000689F0, &qword_1000689E8, &qword_100054100, &protocol conformance descriptor for [A]);
    v18 = v24;
    sub_10004CBC0();
    sub_10004B0E0();
    (*(v7 + 8))(v10, v18);
    v25 = _swiftEmptyArrayStorage;
    sub_10004565C(&qword_100068A48, &type metadata accessor for TTRRemindersListEditingSessionFinishingOption, &protocol conformance descriptor for TTRRemindersListEditingSessionFinishingOption);
    sub_100003150(&qword_100068A50, &unk_1000541B0);
    sub_100003364(&qword_100068A58, &qword_100068A50, &unk_1000541B0, &protocol conformance descriptor for [A]);
    v19 = v22;
    v20 = v23;
    sub_10004CBC0();
    sub_10004B0F0();
    swift_unknownObjectRelease();
    return (*(v16 + 8))(v19, v20);
  }

  return result;
}

void sub_10003C858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  swift_getObjectType();
  v3 = sub_10004B320();
  sub_100049F50();
}

void sub_10003C8DC(Swift::OpaquePointer a1, uint64_t a2)
{
  sub_100003150(&qword_100068AC0, &qword_100054208);
  sub_100009FF0(0, &qword_100068A68, UIMenuElement_ptr);
  sub_100003364(&qword_100068AC8, &qword_100068AC0, &qword_100054208, &protocol conformance descriptor for [A]);
  v3 = sub_10004C6F0();
  v4 = v3;
  if (v3 >> 62)
  {
    if (sub_10004CD50())
    {
      goto LABEL_3;
    }

LABEL_7:

    return;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_100009FF0(0, &qword_100067D60, UIMenu_ptr);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v11.value._countAndFlagsBits = 0;
  v11.value._object = 0;
  v9.value.super.isa = 0;
  v9.is_nil = 0;
  v5.value = 1;
  isa = sub_10004CA10(v10, v11, v9, v5, 0xFFFFFFFFFFFFFFFFLL, v4, a1).super.super.isa;
  swift_beginAccess();
  v7 = isa;
  sub_10004C700();
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10004C730();
  }

  sub_10004C740();
  swift_endAccess();
}

uint64_t sub_10003CA8C(uint64_t a1)
{
  v2 = sub_10004AD30();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v64 = v5;
  v65 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004B8B0();
  v62 = *(v6 - 8);
  v63 = v6;
  __chkstk_darwin(v6, v7);
  v70 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10004B8C0();
  v71 = *(v9 - 8);
  __chkstk_darwin(v9, v10);
  v69 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10004BA40();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12, v14);
  v16 = (&v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100003150(&qword_100067FD8, &unk_100053660);
  v17 = *(v3 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1000528D0;
  v66 = a1;
  v67 = v3;
  v19 = *(v3 + 16);
  v68 = v2;
  v61 = v19;
  v19((v18 + ((v17 + 32) & ~v17)), a1, v2);
  sub_10004A190();
  v20 = (*(v13 + 88))(v16, v12);
  if (v20 == enum case for TTRRemindersListPresenterCapabilityCore.BatchAddHashtagParams.allowed(_:))
  {
    v58 = ~v17;
    v59 = v9;
    (*(v13 + 96))(v16, v12);
    v21 = *v16;
    v60 = v16[1];
    sub_100003150(&qword_100068A88, &qword_1000541E0);
    v22 = sub_10004CD60();
    v23 = v22;
    v24 = 0;
    v25 = 1 << *(v21 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & *(v21 + 64);
    v28 = (v25 + 63) >> 6;
    v29 = v22 + 64;
    if (v27)
    {
      while (1)
      {
        v30 = __clz(__rbit64(v27));
        v27 &= v27 - 1;
LABEL_11:
        v33 = v30 | (v24 << 6);
        v34 = (*(v21 + 48) + 16 * v33);
        v36 = *v34;
        v35 = v34[1];
        v37 = *(*(*(v21 + 56) + 8 * v33) + 16);
        *(v29 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
        v38 = (v23[6] + 16 * v33);
        *v38 = v36;
        v38[1] = v35;
        *(v23[7] + 8 * v33) = v37;
        v39 = v23[2];
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          break;
        }

        v23[2] = v41;

        if (!v27)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v31 = v24;
      while (1)
      {
        v24 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        if (v24 >= v28)
        {

          v43 = [v60 hashtags];
          sub_100009FF0(0, &qword_100068A90, REMHashtag_ptr);
          sub_100048498(&qword_100068A98, &qword_100068A90, REMHashtag_ptr);
          v44 = sub_10004C810();

          v72 = v44;
          sub_100003150(&qword_100068AA0, &qword_1000541E8);
          sub_100003364(&qword_100068AA8, &qword_100068AA0, &qword_1000541E8, &protocol conformance descriptor for Set<A>);
          LOBYTE(v43) = sub_10004C830();

          v45 = v43 & 1;
          v46 = v70;
          *v70 = v45;
          (*(v62 + 104))(v46, enum case for TTRIRemindersListContextualMenuAssembly.HashtagsContextMenuConfiguration.CustomTagsOption.showAsAddOrEdit(_:), v63);
          v63 = swift_allocObject();
          swift_weakInit();
          v47 = swift_allocObject();
          swift_weakInit();
          v48 = v65;
          v49 = v68;
          v61(v65, v66, v68);
          v50 = (v17 + 24) & v58;
          v51 = swift_allocObject();
          *(v51 + 16) = v47;
          (*(v67 + 32))(v51 + v50, v48, v49);
          v52 = swift_allocObject();
          swift_weakInit();
          v53 = swift_allocObject();
          *(v53 + 16) = v52;
          *(v53 + 24) = v18;
          v54 = swift_allocObject();
          swift_weakInit();
          v55 = swift_allocObject();
          *(v55 + 16) = v54;
          *(v55 + 24) = v18;

          v56 = v69;
          sub_10004B8A0();
          v57 = sub_10004B960();

          (*(v71 + 8))(v56, v59);
          return v57;
        }

        v32 = *(v21 + 64 + 8 * v24);
        ++v31;
        if (v32)
        {
          v30 = __clz(__rbit64(v32));
          v27 = (v32 - 1) & v32;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else if (v20 == enum case for TTRRemindersListPresenterCapabilityCore.BatchAddHashtagParams.disallowed(_:))
  {

    return 0;
  }

  result = sub_10004CDC0();
  __break(1u);
  return result;
}