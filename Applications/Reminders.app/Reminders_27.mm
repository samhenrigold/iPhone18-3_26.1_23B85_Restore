uint64_t sub_1002E9D98(uint64_t a1)
{

  v2 = sub_1002E9894(v1);
  if ((v2 & 0x10000) != 0)
  {
    if ((v2 & 0x1000000) != 0)
    {
      if ((v2 & 1) == 0)
      {
        if ((v2 & 0x100) != 0)
        {
          v9 = " not delete its reminders.";
          v11 = 0xD00000000000010ALL;
          v12 = 0x800000010067FCE0;
          v10 = 0xD00000000000008DLL;
          goto LABEL_26;
        }

        v8 = "ustom smart list.";
        v9 = "elete its reminders.";
        v11 = 0xD000000000000074;
        v10 = 0xD000000000000077;
        goto LABEL_20;
      }

      if ((v2 & 0x100) != 0)
      {
        v9 = "t delete its reminders.";
        v11 = 0x1000000000000117;
        v12 = 0x8000000100680020;
        v10 = 0xD0000000000000A9;
        goto LABEL_26;
      }

      v14 = "t one is a custom smart list.";
      v15 = "ot delete its reminders.";
      v11 = 0xD000000000000108;
    }

    else
    {
      if (v2)
      {
        if ((v2 & 0x100) != 0)
        {
          v12 = 0x800000010067FA40;
          v10 = 0xD0000000000000A1;
          v13 = 0x800000010067FB30;
          v11 = 0x10000000000000E2;
          return TTRLocalizedString(_:comment:)(*&v11, *&v10)._countAndFlagsBits;
        }

        v8 = " a custom smart list.";
        v9 = "l of their devices.";
        v10 = 0xD00000000000007DLL;
        v11 = 0xD0000000000000D3;
        goto LABEL_20;
      }

      if ((v2 & 0x100) == 0)
      {
        v8 = "rt lists on macOS.";
        v9 = " the lists and their reminders.";
        v11 = 0xD00000000000003FLL;
        v10 = 0xD00000000000006FLL;
LABEL_20:
        v12 = v8 | 0x8000000000000000;
LABEL_26:
        v13 = v9 | 0x8000000000000000;
        return TTRLocalizedString(_:comment:)(*&v11, *&v10)._countAndFlagsBits;
      }

      v14 = "d. None is a custom smart list.";
      v15 = "ou were invited with.";
      v11 = 0xD0000000000000D5;
    }

    v12 = v14 | 0x8000000000000000;
    v13 = v15 | 0x8000000000000000;
    v10 = 0xD000000000000085;
    return TTRLocalizedString(_:comment:)(*&v11, *&v10)._countAndFlagsBits;
  }

  if ((v2 & 0x1000000) != 0)
  {
    v10 = 0xD000000000000042;
    v11 = 0xD000000000000066;
    v12 = 0x800000010067F600;
    v13 = 0x800000010067F670;
    return TTRLocalizedString(_:comment:)(*&v11, *&v10)._countAndFlagsBits;
  }

  if (qword_100767178 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003E30(v3, qword_10077A940);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Attempted to get deletion confirmation message for deleting a group with no list", v6, 2u);
  }

  return 0;
}

Swift::Int sub_1002EA030(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    result = sub_1003AB368(a3);
    if (v7)
    {
      v8 = result;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v3;
      v13 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1003AE128();
        v10 = v13;
      }

      result = sub_1003AC8A4(v8, v10);
      *v4 = v10;
    }
  }

  else
  {
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    result = sub_100126C90(a1, a3, v12);
    *v3 = v14;
  }

  return result;
}

void sub_1002EA0E4(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_100127020(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v12;
  }

  else
  {
    v6 = sub_1002613B0(a2);
    if (v7)
    {
      v8 = v6;
      v9 = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v13 = *v3;
      if (!v9)
      {
        sub_1003AE758();
        v10 = v13;
      }

      sub_1003ACA38(v8, v10);

      *v3 = v10;
    }

    else
    {
    }
  }
}

double sub_1002EA1E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_100127484(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1003B3EDC();
    if (v11)
    {
      v12 = v10;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v4;
      if (!v13)
      {
        sub_1003AF6F4();
        v14 = v16;
      }

      sub_1003AD1D8(v12, v14);

      *v4 = v14;
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1002EA304(uint64_t a1, uint64_t a2)
{
  v5 = sub_100058000(&qword_100771DD0, qword_100634780);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    sub_1000079B4(a1, &qword_100771DD0, qword_100634780);
    sub_1002EF7AC(a2, &type metadata accessor for TTRAccountsListsViewModel.PinnedList, sub_1003AD37C, sub_1003AF8A4, v7);
    v13 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_1000079B4(v7, &qword_100771DD0, qword_100634780);
  }

  else
  {
    (*(v9 + 32))(v12, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_1001275D0(v12, a2, isUniquelyReferenced_nonNull_native);
    v16 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_1002EA56C(uint64_t a1, uint64_t a2)
{
  v5 = sub_100058000(&unk_100776650, &unk_100636AF0);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for REMHashtagLabelSpecifier();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    sub_1000079B4(a1, &unk_100776650, &unk_100636AF0);
    sub_1002EF7AC(a2, &type metadata accessor for REMHashtagLabelSpecifier, sub_1003AD364, sub_1003AF868, v7);
    v13 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_1000079B4(v7, &unk_100776650, &unk_100636AF0);
  }

  else
  {
    (*(v9 + 32))(v12, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_100127624(v12, a2, isUniquelyReferenced_nonNull_native);
    v16 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

void sub_1002EA7D4(char *a1@<X8>)
{
  v3 = type metadata accessor for REMHashtagLabelSpecifier();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v78 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v62 - v7;
  v91 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v95 = *(v91 - 8);
  __chkstk_darwin(v91);
  v93 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v97 = &v62 - v11;
  v82 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v79 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v80 = &v62 - v14;
  v15 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v62 - v20;
  v92 = v1;
  v22 = *(v1 + qword_10078A548);
  if (!v22)
  {
    __break(1u);
LABEL_44:
    if (qword_100767180 != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    sub_100003E30(v59, qword_10077A980);
    v60 = sub_100008E04(_swiftEmptyArrayStorage);
    v61 = sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown item type", 17, 2uLL, v60, v61);
    __break(1u);
    return;
  }

  v23 = v22;
  v24 = sub_1000DF504(0);

  v100 = v24[2];
  if (!v100)
  {

    v42 = type metadata accessor for TTRIAccountsListsTreeView.ExtendedSelection(0);
    v43 = *(*(v42 - 8) + 56);

    v43(a1, 1, 1, v42);
    return;
  }

  v63 = v8;
  v64 = v4;
  v65 = v3;
  v84 = a1;
  v26 = 0;
  v89 = qword_10077A9A0;
  v69 = qword_10077A9A8;
  v99 = v16 + 88;
  v98 = enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:);
  v96 = enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:);
  v94 = enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:);
  v87 = enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:);
  v85 = enum case for TTRAccountsListsViewModel.Item.account(_:);
  v83 = enum case for TTRAccountsListsViewModel.Item.list(_:);
  v77 = enum case for TTRAccountsListsViewModel.Item.customSmartList(_:);
  v76 = enum case for TTRAccountsListsViewModel.Item.group(_:);
  v75 = enum case for TTRAccountsListsViewModel.Item.permissionSection(_:);
  v74 = enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:);
  v73 = enum case for TTRAccountsListsViewModel.Item.tipSection(_:);
  v72 = enum case for TTRAccountsListsViewModel.Item.tip(_:);
  v71 = enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:);
  v70 = enum case for TTRAccountsListsViewModel.Item.hashtags(_:);
  v68 = enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:);
  v67 = enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:);
  v27 = (v16 + 8);
  v90 = (v95 + 1);
  v95 = (v16 + 96);
  v66 = enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:);
  v28 = v93;
  v88 = v24;
  v86 = v16 + 16;
  while (v26 < v24[2])
  {
    v23 = *(v16 + 16);
    (v23)(v21, v24 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v26, v15);
    (v23)(v18, v21, v15);
    v29 = (*(v16 + 88))(v18, v15);
    if (v29 == v98)
    {
      (*v95)(v18, v15);
      v30 = type metadata accessor for UUID();
      (*(*(v30 - 8) + 8))(v18, v30);
      goto LABEL_11;
    }

    v23 = v97;
    if (v29 == v96)
    {
      goto LABEL_10;
    }

    if (v29 == v94)
    {
      v31 = *v27;
      (*v27)(v18, v15);
      v32 = v23;
      TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
      v33 = v92;
      v34 = v89;
      swift_beginAccess();
      v23 = *(v33 + v34);
      v35 = v32;
      if (v23[2])
      {
        v36 = sub_1003AB730(v32);
        if (v37)
        {
          v44 = v81;
          v45 = v79;
          v46 = v82;
          (*(v81 + 16))(v79, v23[7] + *(v81 + 72) * v36, v82);
          v47 = *(v44 + 32);
          v48 = v80;
          v47(v80, v45, v46);
          swift_endAccess();

          (*v90)(v35, v91);
          v49 = *(sub_100058000(&unk_10076B860, &unk_100639720) + 48);
          v50 = v84;
          (*(v16 + 32))(v84, v21, v15);
          v47(&v50[v49], v48, v46);
          v51 = type metadata accessor for TTRIAccountsListsTreeView.ExtendedSelection(0);
          goto LABEL_40;
        }
      }

      swift_endAccess();
      (*v90)(v32, v91);
      v25 = v31(v21, v15);
      v28 = v93;
      v24 = v88;
    }

    else
    {
      if (v29 == v87 || v29 == v85 || v29 == v83 || v29 == v77 || v29 == v76 || v29 == v75 || v29 == v74 || v29 == v73 || v29 == v72)
      {
        goto LABEL_10;
      }

      if (v29 != v71 && v29 != v70)
      {
        if (v29 == v68)
        {
LABEL_10:
          (*v27)(v18, v15);
        }

        else if (v29 != v67 && v29 != v66)
        {
          goto LABEL_44;
        }

LABEL_11:
        v25 = (*v27)(v21, v15);
        goto LABEL_5;
      }

      v62 = *v27;
      v62(v18, v15);
      TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
      v38 = v69;
      swift_beginAccess();
      v23 = *(v92 + v38);
      if (v23[2])
      {
        v25 = sub_1003AB730(v28);
        if (v39)
        {
          goto LABEL_42;
        }
      }

      swift_endAccess();
      (*v90)(v28, v91);
      v25 = (v62)(v21, v15);
    }

LABEL_5:
    if (v100 == ++v26)
    {
      v40 = v84;
      *v84 = v24;
      v41 = type metadata accessor for TTRIAccountsListsTreeView.ExtendedSelection(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
      return;
    }
  }

  __break(1u);
LABEL_42:
  v52 = v64;
  v53 = v28;
  v54 = v78;
  v55 = v65;
  (*(v64 + 16))(v78, v23[7] + *(v64 + 72) * v25, v65);
  v56 = *(v52 + 32);
  v57 = v63;
  v56(v63, v54, v55);
  swift_endAccess();

  (*v90)(v53, v91);
  v58 = *(sub_100058000(&qword_10076B858, &unk_10062FBF0) + 48);
  v50 = v84;
  (*(v16 + 32))(v84, v21, v15);
  v56(&v50[v58], v57, v55);
  v51 = type metadata accessor for TTRIAccountsListsTreeView.ExtendedSelection(0);
LABEL_40:
  swift_storeEnumTagMultiPayload();
  (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
}

void sub_1002EB374(uint64_t a1, char *a2, int a3, uint64_t a4, uint64_t a5)
{
  v75 = a2;
  v76 = a5;
  v63 = a4;
  v64 = a3;
  v7 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  __chkstk_darwin(v7 - 8);
  v72 = &v60 - v8;
  v9 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v69 = *(v9 - 8);
  v70 = v9;
  __chkstk_darwin(v9);
  v67 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v68 = &v60 - v12;
  v13 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v14 = *(v13 - 8);
  v77 = v13;
  v78 = v14;
  __chkstk_darwin(v13);
  v73 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100058000(&qword_100771DD0, qword_100634780);
  __chkstk_darwin(v16 - 8);
  v66 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v74 = &v60 - v19;
  __chkstk_darwin(v20);
  v22 = &v60 - v21;
  v23 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for TTRAccountsListsViewModel.PinnedLists();
  v28 = *(v27 - 8);
  v29 = __chkstk_darwin(v27);
  v31 = &v60 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v24 + 16);
  v71 = a1;
  v65 = v32;
  (v32)(v26, a1, v23, v29);
  if ((*(v24 + 88))(v26, v23) == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:))
  {
    v62 = v5;
    (*(v24 + 96))(v26, v23);
    (*(v28 + 32))(v31, v26, v27);
    v33 = TTRAccountsListsViewModel.PinnedLists.lists.getter();
    __chkstk_darwin(v33);
    v34 = v76;
    *(&v60 - 2) = v75;
    sub_1002ECBD4(v34, v33, &type metadata accessor for TTRAccountsListsViewModel.PinnedList, v22);

    v35 = v74;
    sub_10002C688(v22, v74);
    v36 = v77;
    v37 = v78;
    if ((*(v78 + 48))(v35, 1, v77) == 1)
    {
      sub_1000079B4(v22, &qword_100771DD0, qword_100634780);
      (*(v28 + 8))(v31, v27);
      sub_1000079B4(v35, &qword_100771DD0, qword_100634780);
      return;
    }

    v61 = v31;
    v75 = v28;
    v76 = v27;
    v60 = v22;
    v42 = v73;
    (*(v37 + 32))(v73, v35, v36);
    v43 = v68;
    v44 = v71;
    TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
    v45 = v66;
    (*(v37 + 16))(v66, v42, v36);
    (*(v37 + 56))(v45, 0, 1, v36);
    v46 = v62;
    swift_beginAccess();
    sub_1002EA304(v45, v43);
    swift_endAccess();
    v47 = v67;
    TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
    swift_beginAccess();
    sub_10058C648(v43, v47);
    swift_endAccess();
    (*(v69 + 8))(v43, v70);
    v48 = v72;
    v65(v72, v44, v23);
    (*(v24 + 56))(v48, 0, 1, v23);
    v49 = qword_10078A548;
    v50 = *(v46 + qword_10078A548);
    if (v50)
    {
      v51 = v50;
      v52 = sub_1000DF504(0);

      v53 = *(v46 + v49);
      v54 = v60;
      v56 = v75;
      v55 = v76;
      v57 = v61;
      if (v53)
      {
        v58 = v53;
        v59 = v64;
        sub_1000DFB6C(v48, v64 & 1, v63);

        sub_1002EE0CC(v52, v59 & 1);

        sub_1000079B4(v48, &unk_100771B40, &unk_10062FB70);
        (*(v78 + 8))(v73, v77);
        sub_1000079B4(v54, &qword_100771DD0, qword_100634780);
        (*(v56 + 1))(v57, v55);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    (*(v24 + 8))(v26, v23);
    if (qword_100767180 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_100003E30(v38, qword_10077A980);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "selectSmartListItem: invalid item", v41, 2u);
    }
  }
}

void sub_1002EBB5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v39 = a4;
  v40 = a3;
  v42 = a2;
  v5 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  __chkstk_darwin(v5 - 8);
  v45 = &v38 - v6;
  v7 = sub_100058000(&unk_100776650, &unk_100636AF0);
  __chkstk_darwin(v7 - 8);
  v9 = &v38 - v8;
  v10 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v43 = *(v10 - 8);
  v44 = v10;
  __chkstk_darwin(v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v38 - v14;
  v16 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1;
  v41 = *(v17 + 16);
  v41(v20, a1, v16, v18);
  v22 = (*(v17 + 88))(v20, v16);
  LODWORD(a1) = enum case for TTRAccountsListsViewModel.Item.hashtags(_:);
  (*(v17 + 8))(v20, v16);
  if (v22 == a1)
  {
    TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
    v23 = type metadata accessor for REMHashtagLabelSpecifier();
    v24 = *(v23 - 8);
    (*(v24 + 16))(v9, v42, v23);
    (*(v24 + 56))(v9, 0, 1, v23);
    v25 = v46;
    swift_beginAccess();
    sub_1002EA56C(v9, v15);
    swift_endAccess();
    TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
    swift_beginAccess();
    sub_10058C648(v15, v12);
    swift_endAccess();
    (*(v43 + 8))(v15, v44);
    v26 = v45;
    (v41)(v45, v21, v16);
    (*(v17 + 56))(v26, 0, 1, v16);
    v27 = qword_10078A548;
    v28 = *(v25 + qword_10078A548);
    if (v28)
    {
      v29 = v28;
      v30 = sub_1000DF504(0);

      v31 = *(v25 + v27);
      if (v31)
      {
        v32 = v31;
        v33 = v40;
        sub_1000DFB6C(v26, v40 & 1, v39);

        sub_1002EE0CC(v30, v33 & 1);

        sub_1000079B4(v26, &unk_100771B40, &unk_10062FB70);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    if (qword_100767180 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100003E30(v34, qword_10077A980);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "selectHashtagItem: invalid item", v37, 2u);
    }
  }
}

void sub_1002EC064(void *a1, uint64_t a2)
{
  v63 = type metadata accessor for REMHashtagLabelSpecifier();
  v65 = *(v63 - 8);
  __chkstk_darwin(v63);
  v55 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v64 = &v53 - v6;
  v7 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v59 = *(v7 - 8);
  v60 = v7;
  __chkstk_darwin(v7);
  v56 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v57 = &v53 - v10;
  v11 = sub_100058000(&qword_10076B850, &qword_10062FBE8);
  __chkstk_darwin(v11 - 8);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v53 - v15;
  v17 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v61 = *(v21 - 8);
  v62 = v21;
  __chkstk_darwin(v21);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v53 - v25;
  v27 = sub_100058000(&qword_100771DD0, qword_100634780);
  __chkstk_darwin(v27 - 8);
  v29 = &v53 - v28;
  v58 = a2;
  sub_1002EFA60(a2);
  if (v30 != 2)
  {
    if (v30)
    {
      type metadata accessor for TTRIHashtagCollectionCell();
      if (swift_dynamicCastClass())
      {
        v31 = a1;
        v32 = v64;
        static REMHashtagLabelSpecifier.empty.getter();
        sub_1002EA7D4(v13);
        v33 = type metadata accessor for TTRIAccountsListsTreeView.ExtendedSelection(0);
        if ((*(*(v33 - 8) + 48))(v13, 1, v33) == 1)
        {
          sub_1000079B4(v13, &qword_10076B850, &qword_10062FBE8);
          v34 = v63;
        }

        else if (swift_getEnumCaseMultiPayload() == 2)
        {
          v66 = v31;
          v40 = *(sub_100058000(&qword_10076B858, &unk_10062FBF0) + 48);
          v41 = v61;
          (*(v61 + 32))(v23, v13, v62);
          v34 = v63;
          v54 = *(v65 + 32);
          v54(v55, &v13[v40], v63);
          v42 = v57;
          TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
          v43 = v56;
          TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
          LOBYTE(v40) = static TTRAccountsListsViewModel.ItemIdentifier.== infix(_:_:)();
          v44 = *(v59 + 8);
          v45 = v43;
          v46 = v60;
          v44(v45, v60);
          v44(v42, v46);
          (*(v41 + 8))(v23, v62);
          v47 = *(v65 + 8);
          if (v40)
          {
            v32 = v64;
            v47(v64, v34);
            v54(v32, v55, v34);
          }

          else
          {
            v47(v55, v34);
            v32 = v64;
          }

          v31 = v66;
        }

        else
        {
          sub_1002EFEBC(v13, type metadata accessor for TTRIAccountsListsTreeView.ExtendedSelection);
          v34 = v63;
        }

        TTRIHashtagCollectionCell.setSelection(_:animated:)();

        (*(v65 + 8))(v32, v34);
      }
    }

    else
    {
      type metadata accessor for TTRIAccountsListsViewPinnedListsCell();
      v35 = swift_dynamicCastClass();
      if (v35)
      {
        v36 = v35;
        v37 = v18;
        v65 = *(v18 + 56);
        (v65)(v29, 1, 1, v17);
        v38 = a1;
        sub_1002EA7D4(v16);
        v39 = type metadata accessor for TTRIAccountsListsTreeView.ExtendedSelection(0);
        if ((*(*(v39 - 8) + 48))(v16, 1, v39) == 1)
        {
          sub_1000079B4(v16, &qword_10076B850, &qword_10062FBE8);
        }

        else if (swift_getEnumCaseMultiPayload() == 1)
        {
          v64 = v38;
          v66 = v36;
          v48 = *(sub_100058000(&unk_10076B860, &unk_100639720) + 48);
          (*(v61 + 32))(v26, v16, v62);
          v54 = *(v37 + 32);
          v55 = (v37 + 32);
          v54(v20, &v16[v48], v17);
          v49 = v57;
          TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
          v58 = v37;
          v50 = v56;
          TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
          LODWORD(v63) = static TTRAccountsListsViewModel.ItemIdentifier.== infix(_:_:)();
          v51 = v60;
          v52 = *(v59 + 8);
          v52(v50, v60);
          v52(v49, v51);
          (*(v61 + 8))(v26, v62);
          if (v63)
          {
            sub_1000079B4(v29, &qword_100771DD0, qword_100634780);
            v54(v29, v20, v17);
            (v65)(v29, 0, 1, v17);
          }

          else
          {
            (*(v58 + 8))(v20, v17);
          }

          v38 = v64;
        }

        else
        {
          sub_1002EFEBC(v16, type metadata accessor for TTRIAccountsListsTreeView.ExtendedSelection);
        }

        sub_100329FF4(v29, 0);

        sub_1000079B4(v29, &qword_100771DD0, qword_100634780);
      }
    }
  }
}

uint64_t sub_1002EC8F0@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      sub_1002EFDF4(v12, v10);
      v14 = a1(v10);
      if (v3)
      {
        return sub_1002EFEBC(v10, type metadata accessor for TTRIGroupMembershipViewModel.List);
      }

      if (v14)
      {
        break;
      }

      sub_1002EFEBC(v10, type metadata accessor for TTRIGroupMembershipViewModel.List);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    sub_1002EFE58(v10, v18);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

void *sub_1002ECA94(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_1002ECBD4@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v25 = a1;
  v7 = a3(0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v21 - v10;
  v12 = *(a2 + 16);
  if (v12)
  {
    v22 = v8;
    v23 = a4;
    v14 = *(v8 + 16);
    v13 = v8 + 16;
    v24 = v14;
    v15 = (v13 - 8);
    v16 = a2 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    while (1)
    {
      v24(v11, v16, v7, v9);
      v18 = v25(v11);
      if (v4)
      {
        return (*v15)(v11, v7);
      }

      if (v18)
      {
        break;
      }

      (*v15)(v11, v7);
      v16 += v17;
      if (!--v12)
      {
        v19 = 1;
        v8 = v22;
        a4 = v23;
        return (*(v8 + 56))(a4, v19, 1, v7);
      }
    }

    v8 = v22;
    a4 = v23;
    (*(v22 + 32))(v23, v11, v7);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  return (*(v8 + 56))(a4, v19, 1, v7);
}

uint64_t sub_1002ECDA8(uint64_t (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 9;
  }

  v6 = (a3 + 32);
  while (1)
  {
    v8 = *v6++;
    v7 = v8;
    v11 = v8;
    v9 = a1(&v11, a2);
    if (v3 || (v9 & 1) != 0)
    {
      break;
    }

    if (!--v4)
    {
      return 9;
    }
  }

  return v7;
}

id sub_1002ECE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1000F2C50(a1, a3);
  if (result)
  {
    v8 = result;
    v9 = sub_1002EF9F4(result, a2, a4, sub_1003B3EDC);
    if (v9 && (v10 = v9, , v10 == v8) && *(a4 + 16) && (v11 = sub_1003B3EDC(), (v12 & 1) != 0))
    {
      v13 = [*(v4 + qword_100771730) headerViewForSection:*(*(a4 + 56) + 8 * v11)];

      return v13;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_1002ECEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1000F4DB4(a1, a3);
  if (result)
  {
    v8 = result;
    v9 = sub_1002EF9F4(result, a2, a4, sub_1003B3EDC);
    if (v9 && (v10 = v9, , v10 == v8) && *(a4 + 16) && (v11 = sub_1003B3EDC(), (v12 & 1) != 0))
    {
      v13 = [*(v4 + qword_100771730) headerViewForSection:*(*(a4 + 56) + 8 * v11)];

      return v13;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void sub_1002ECFBC(uint64_t a1, int a2)
{
  v23 = a2;
  v4 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v4 - 8);
  v6 = &v22[-v5];
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v2 + qword_10078A548);
  if (v11)
  {
    v12 = v11;
    v13 = sub_1000C8504();
    v15 = v14;
    v17 = v16;
    v19 = sub_1000F4DB4(a1, v18);
    if (!v19)
    {

      (*(v8 + 56))(v6, 1, 1, v7);
      goto LABEL_6;
    }

    sub_1000C77E8(v19, v17 & 1, v13, v15, v6);

    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {

LABEL_6:
      sub_1000079B4(v6, &unk_100771B10, qword_10062E540);
      return;
    }

    (*(v8 + 32))(v10, v6, v7);
    v20 = *&v12[qword_100771730];
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    [v20 deselectRowAtIndexPath:isa animated:v23 & 1];

    (*(v8 + 8))(v10, v7);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1002ED254()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10077A980);
  v1 = sub_100003E30(v0, qword_10077A980);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1002ED31C(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v3 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v20 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRAccountsListsViewModel.SmartList();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1, v10, v12);
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == enum case for TTRAccountsListsViewModel.PinnedList.predefinedSmartList(_:))
  {
    (*(v11 + 96))(v14, v10);
    (*(v7 + 32))(v9, v14, v6);
    TTRAccountsListsViewModel.SmartList.type.getter();
    sub_1002EF994(&qword_10077B010, &type metadata accessor for TTRListType.PredefinedSmartListType, &protocol conformance descriptor for TTRListType.PredefinedSmartListType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v23 != v21 || v24 != v22)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    (*(v20 + 8))(v5, v3);
    (*(v7 + 8))(v9, v6);
  }

  else if (v15 == enum case for TTRAccountsListsViewModel.PinnedList.list(_:))
  {
    (*(v11 + 8))(v14, v10);
  }

  else
  {
    if (qword_100767180 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100003E30(v16, qword_10077A980);
    v17 = sub_100008E04(_swiftEmptyArrayStorage);
    v18 = sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown pinned list type", 24, 2uLL, v17, v18);
    __break(1u);
  }
}

void sub_1002ED6FC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TTRAccountsListsViewModel.List();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7, v9);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == enum case for TTRAccountsListsViewModel.PinnedList.predefinedSmartList(_:))
  {
    (*(v8 + 8))(v11, v7);
  }

  else if (v12 == enum case for TTRAccountsListsViewModel.PinnedList.list(_:))
  {
    (*(v8 + 96))(v11, v7);
    (*(v4 + 32))(v6, v11, v3);
    static TTRAccountsListsViewModel.List.== infix(_:_:)();
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    if (qword_100767180 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100003E30(v13, qword_10077A980);
    v14 = sub_100008E04(_swiftEmptyArrayStorage);
    v15 = sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown pinned list type", 24, 2uLL, v14, v15);
    __break(1u);
  }
}

void sub_1002ED9A4(uint64_t a1, int a2)
{
  v57 = a2;
  v3 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v55 = *(v3 - 8);
  __chkstk_darwin(v3);
  v53 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v54 = &v52 - v6;
  v7 = type metadata accessor for REMHashtagLabelSpecifier();
  v56 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&unk_100776650, &unk_100636AF0);
  __chkstk_darwin(v10 - 8);
  v12 = &v52 - v11;
  v13 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100058000(&qword_100771DD0, qword_100634780);
  __chkstk_darwin(v17 - 8);
  v19 = &v52 - v18;
  sub_1002EFA60(a1);
  if (v20 == 2)
  {
    return;
  }

  v21 = v20;
  v52 = v3;
  TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
  v22 = (v14 + 8);
  if ((v21 & 1) == 0)
  {
    v28 = v58;
    swift_beginAccess();
    sub_1003A9928(v16, v19);
    swift_endAccess();
    (*v22)(v16, v13);
    sub_1000079B4(v19, &qword_100771DD0, qword_100634780);
    v29 = *(v28 + qword_10078A548);
    if (v29)
    {
      v30 = v29;
      v31 = sub_1000DE964(a1);

      if (v31)
      {
        type metadata accessor for TTRIAccountsListsViewPinnedListsCell();
        if (swift_dynamicCastClass())
        {
          v32 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
          (*(*(v32 - 8) + 56))(v19, 1, 1, v32);
          sub_100329FF4(v19, v57 & 1);

          sub_1000079B4(v19, &qword_100771DD0, qword_100634780);
        }

        else
        {
        }
      }

      return;
    }

    goto LABEL_25;
  }

  v23 = v58;
  swift_beginAccess();
  sub_1003A9B14(v16, v12);
  swift_endAccess();
  (*v22)(v16, v13);
  sub_1000079B4(v12, &unk_100776650, &unk_100636AF0);
  v24 = qword_10078A548;
  v25 = *(v23 + qword_10078A548);
  if (!v25)
  {
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v26 = v25;
  v27 = sub_1000DE964(a1);

  if (v27)
  {
    type metadata accessor for TTRIHashtagCollectionCell();
    if (swift_dynamicCastClass())
    {
      static REMHashtagLabelSpecifier.empty.getter();
      TTRIHashtagCollectionCell.setSelection(_:animated:)();

      (*(v56 + 8))(v9, v7);
    }

    else
    {
    }
  }

  v33 = *(v58 + v24);
  if (!v33)
  {
    goto LABEL_26;
  }

  v34 = v33;
  sub_1000C8504();
  v36 = sub_1000F4DB4(a1, v35);

  if (!v36)
  {

    return;
  }

  v37 = sub_1000C8504();
  v39 = sub_1002EF9F4(v36, v37, v38, sub_1003B3EDC);

  v40 = v52;
  if (v39)
  {
    v41 = *(*v39 + 144);
    swift_beginAccess();
    v42 = v55;
    v43 = v39 + v41;
    v44 = v53;
    (*(v55 + 16))(v53, v43, v40);

    v45 = v54;
    (*(v42 + 32))(v54, v44, v40);
    v46 = *(v58 + v24);
    if (v46)
    {
      v47 = v46;
      v48 = sub_1000C8504();
      v51 = sub_1002ECEE8(v45, v48, v49, v50);

      if (v51)
      {
        type metadata accessor for TTRIAccountsListsTagsSectionHeaderView(0);
        if (swift_dynamicCastClass())
        {
          sub_10039A0BC(1);
        }
      }

      (*(v42 + 8))(v45, v52);
      return;
    }

LABEL_27:
    __break(1u);
  }
}

void sub_1002EE048(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "_dynamicUserInterfaceTraitDidChange");
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  swift_endAccess();
}

void sub_1002EE0CC(uint64_t a1, int a2)
{
  v69 = a2;
  v65 = a1;
  v3 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v63 = *(v3 - 8);
  __chkstk_darwin(v3);
  v88 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v63 - v6;
  __chkstk_darwin(v8);
  v77 = &v63 - v9;
  v10 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v87 = *(v10 - 8);
  __chkstk_darwin(v10);
  v79 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v80 = &v63 - v13;
  __chkstk_darwin(v14);
  v78 = &v63 - v15;
  __chkstk_darwin(v16);
  v18 = &v63 - v17;
  v73 = v2;
  v19 = *(v2 + qword_10078A548);
  if (v19)
  {
    v20 = v19;
    v21 = sub_1000DF504(0);

    v85 = v21;
    v22 = v21[2];
    v89 = v10;
    v70 = v22;
    if (v22)
    {
      v23 = v87;
      v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
      v67 = v85 + v24;
      v68 = qword_10077A9B0;
      swift_beginAccess();
      v25 = 0;
      v83 = v23 + 16;
      v66 = v63 + 16;
      v26 = (v63 + 8);
      v64 = v65 + v24;
      v86 = (v23 + 8);
      v84 = v18;
      while (v25 < v85[2])
      {
        v28 = *(v87 + 72);
        v72 = v25;
        v81 = *(v87 + 16);
        v82 = v28;
        (v81)(v18, &v67[v28 * v25], v10);
        v29 = *(v73 + v68);

        TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
        v30 = *(v29 + 16);
        v71 = v86 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        if (v30 && (sub_1002EF994(&qword_1007727B0, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier, &protocol conformance descriptor for TTRAccountsListsViewModel.ItemIdentifier), v31 = dispatch thunk of Hashable._rawHashValue(seed:)(), v32 = -1 << *(v29 + 32), v33 = v31 & ~v32, ((*(v29 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) != 0))
        {
          v74 = ~v32;
          v34 = *(v63 + 72);
          v75 = *(v63 + 16);
          v76 = v34;
          while (1)
          {
            v75(v7, *(v29 + 48) + v76 * v33, v3);
            sub_1002EF994(&qword_10076B7A0, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier, &protocol conformance descriptor for TTRAccountsListsViewModel.ItemIdentifier);
            v35 = dispatch thunk of static Equatable.== infix(_:_:)();
            v36 = *v26;
            (*v26)(v7, v3);
            if (v35)
            {
              break;
            }

            v33 = (v33 + 1) & v74;
            if (((*(v29 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          v36(v77, v3);
        }

        else
        {
LABEL_13:

          v37 = *v26;
          (*v26)(v77, v3);
          v38 = *(v65 + 16) + 1;
          v39 = v64;
          while (--v38)
          {
            v40 = v39 + v82;
            v41 = v78;
            v42 = v89;
            (v81)(v78);
            TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
            v43 = v88;
            TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
            v44 = static TTRAccountsListsViewModel.ItemIdentifier.== infix(_:_:)();
            v37(v43, v3);
            v37(v7, v3);
            v27 = *v86;
            (*v86)(v41, v42);
            v39 = v40;
            if (v44)
            {
              v18 = v84;
              goto LABEL_6;
            }
          }
        }

        v18 = v84;
        sub_1002EE998(v84, v69 & 1);
        v27 = *v86;
LABEL_6:
        v25 = v72 + 1;
        v10 = v89;
        v27(v18, v89);
        if (v25 == v70)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_17:
      v82 = v3;
      v45 = v80;
      v78 = *(v65 + 16);
      if (!v78)
      {
LABEL_26:

        v61 = qword_10077A9B0;
        v62 = v73;
        swift_beginAccess();
        *(v62 + v61) = &_swiftEmptySetSingleton;

        return;
      }

      v46 = 0;
      v86 = *(v87 + 16);
      v47 = (*(v87 + 80) + 32) & ~*(v87 + 80);
      v77 = (v65 + v47);
      v84 = *(v87 + 72);
      v76 = v85 + v47;
      v48 = (v63 + 8);
      v87 += 16;
      v49 = (v87 - 8);
      v83 = -v70;
      v75 = ((v87 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v50 = v89;
LABEL_21:
      v81 = v46 + 1;
      (v86)(v45, &v77[v84 * v46], v10);
      v52 = -1;
      v53 = v76;
      while (1)
      {
        if (v83 + v52 == -1)
        {
          v45 = v80;
          sub_1002ED9A4(v80, v69 & 1);
          v51 = *v49;
          goto LABEL_20;
        }

        if (++v52 >= v85[2])
        {
          break;
        }

        v54 = &v84[v53];
        v55 = v79;
        (v86)(v79);
        TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
        v56 = v88;
        TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
        v57 = static TTRAccountsListsViewModel.ItemIdentifier.== infix(_:_:)();
        v58 = *v48;
        v59 = v56;
        v60 = v82;
        (*v48)(v59, v82);
        v58(v7, v60);
        v51 = *v49;
        (*v49)(v55, v50);
        v53 = v54;
        if (v57)
        {
          v45 = v80;
LABEL_20:
          v10 = v89;
          v51(v45, v89);
          v46 = v81;
          if (v81 == v78)
          {
            goto LABEL_26;
          }

          goto LABEL_21;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1002EE904(uint64_t result, char a2)
{
  v3 = *(v2 + qword_10078A548);
  if (v3)
  {
    v5 = result;
    v6 = v3;
    v7 = sub_1000DF504(0);

    sub_1002ECFBC(v5, a2 & 1);
    sub_1002EE0CC(v7, a2 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1002EE998(uint64_t a1, int a2)
{
  v80 = a2;
  v79 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v81 = *(v79 - 8);
  __chkstk_darwin(v79);
  v78 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v82 = &v77 - v5;
  v6 = type metadata accessor for REMHashtagLabelSpecifier();
  v84 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v85 = (&v77 - v10);
  v11 = sub_100058000(&qword_100771DD0, qword_100634780);
  __chkstk_darwin(v11 - 8);
  v77 = &v77 - v12;
  v13 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v77 - v18;
  v83 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v20 = *(v83 - 8);
  __chkstk_darwin(v83);
  v22 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v77 - v24;
  v86 = a1;
  sub_1002EFA60(a1);
  if (v26 != 2)
  {
    if (v26)
    {
      v27 = v6;
      TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
      v28 = qword_10077A9A8;
      v29 = v87;
      swift_beginAccess();
      v30 = *(v29 + v28);
      if (*(v30 + 16))
      {
        v31 = sub_1003AB730(v16);
        if (v32)
        {
          v33 = v84;
          (*(v84 + 16))(v8, *(v30 + 56) + *(v84 + 72) * v31, v27);
          (*(v33 + 32))(v85, v8, v27);
          swift_endAccess();
          (*(v14 + 8))(v16, v13);
          v34 = qword_10078A548;
          v35 = *(v87 + qword_10078A548);
          if (v35)
          {
            v36 = v35;
            v37 = sub_1000DE964(v86);

            v38 = v82;
            if (v37)
            {
              type metadata accessor for TTRIHashtagCollectionCell();
              if (swift_dynamicCastClass())
              {
                TTRIHashtagCollectionCell.setSelection(_:animated:)();
              }
            }

            v39 = *(v87 + v34);
            if (v39)
            {
              v40 = v39;
              sub_1000C8504();
              v42 = sub_1000F4DB4(v86, v41);

              if (v42)
              {
                v43 = sub_1000C8504();
                v45 = sub_1002EF9F4(v42, v43, v44, sub_1003B3EDC);

                if (v45)
                {
                  v46 = *(*v45 + 144);
                  swift_beginAccess();
                  v47 = v81;
                  v48 = v45 + v46;
                  v49 = v78;
                  v50 = v79;
                  (*(v81 + 16))(v78, v48, v79);

                  (*(v47 + 32))(v38, v49, v50);
                  v51 = *(v87 + v34);
                  if (v51)
                  {
                    v52 = v51;
                    v53 = sub_1000C8504();
                    v56 = sub_1002ECEE8(v38, v53, v54, v55);

                    if (v56)
                    {
                      type metadata accessor for TTRIAccountsListsTagsSectionHeaderView(0);
                      if (swift_dynamicCastClass())
                      {
                        v57 = v85;
                        sub_100399C20(v85);

                        (*(v81 + 8))(v38, v50);
                        (*(v84 + 8))(v57, v27);
                        return;
                      }
                    }

                    (*(v81 + 8))(v38, v50);
                    goto LABEL_39;
                  }

                  goto LABEL_43;
                }
              }

              else
              {
              }

LABEL_39:
              (*(v84 + 8))(v85, v27);
              return;
            }

LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
            return;
          }

          __break(1u);
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }
      }

      swift_endAccess();
      (*(v14 + 8))(v16, v13);
      if (qword_100767180 != -1)
      {
        swift_once();
      }

      v71 = type metadata accessor for Logger();
      sub_100003E30(v71, qword_10077A980);
      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v72, v73))
      {
        goto LABEL_32;
      }

      v74 = swift_slowAlloc();
      *v74 = 0;
      v75 = "Unable to select hashtag cell - missing associated hashtag selection";
      goto LABEL_31;
    }

    TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
    v58 = qword_10077A9A0;
    v59 = v87;
    swift_beginAccess();
    v60 = *(v59 + v58);
    if (!*(v60 + 16) || (v61 = sub_1003AB730(v19), (v62 & 1) == 0))
    {
      swift_endAccess();
      (*(v14 + 8))(v19, v13);
      if (qword_100767180 != -1)
      {
        swift_once();
      }

      v76 = type metadata accessor for Logger();
      sub_100003E30(v76, qword_10077A980);
      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v72, v73))
      {
        goto LABEL_32;
      }

      v74 = swift_slowAlloc();
      *v74 = 0;
      v75 = "Unable to smart list cell - missing associated predefined smart list type";
LABEL_31:
      _os_log_impl(&_mh_execute_header, v72, v73, v75, v74, 2u);

LABEL_32:

      return;
    }

    v63 = v20;
    v64 = *(v60 + 56) + *(v20 + 72) * v61;
    v65 = *(v20 + 16);
    v66 = v83;
    v85 = v65;
    (v65)(v22, v64, v83);
    (*(v63 + 32))(v25, v22, v66);
    swift_endAccess();
    (*(v14 + 8))(v19, v13);
    v67 = *(v87 + qword_10078A548);
    if (!v67)
    {
      goto LABEL_41;
    }

    v68 = v67;
    v69 = sub_1000DE964(v86);

    if (v69)
    {
      type metadata accessor for TTRIAccountsListsViewPinnedListsCell();
      if (swift_dynamicCastClass())
      {
        v70 = v77;
        (v85)(v77, v25, v66);
        (*(v63 + 56))(v70, 0, 1, v66);
        sub_100329FF4(v70, v80 & 1);

        sub_1000079B4(v70, &qword_100771DD0, qword_100634780);
      }

      else
      {
      }
    }

    (*(v63 + 8))(v25, v66);
  }
}

char *sub_1002EF320(uint64_t a1, double a2, double a3, double a4, double a5)
{
  *&v5[qword_10077A998 + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v5[qword_10077A9A0] = &_swiftEmptyDictionarySingleton;
  *&v5[qword_10077A9A8] = &_swiftEmptyDictionarySingleton;
  *&v5[qword_10077A9B0] = &_swiftEmptySetSingleton;
  *&v5[qword_10078A540] = 0;
  *&v5[qword_10078A548] = 0;
  *&v5[qword_10078A550] = 0;
  v5[qword_10078A558] = 0;
  v26.receiver = v5;
  v26.super_class = sub_100058000(&qword_10077B018, &unk_100639730);
  v11 = objc_msgSendSuper2(&v26, "initWithFrame:", a2, a3, a4, a5);
  [v11 bounds];
  v16 = [objc_allocWithZone(type metadata accessor for TTRITreeTableView()) initWithFrame:a1 style:{v12, v13, v14, v15}];
  v17 = *&v11[qword_10078A540];
  *&v11[qword_10078A540] = v16;
  v18 = v16;

  [v18 setAutoresizingMask:18];
  [v18 setPreservesSuperviewLayoutMargins:1];
  [v11 addSubview:v18];

  objc_allocWithZone(sub_100058000(&qword_10076B8F8, &qword_10062FC58));
  v19 = v11;
  v20 = v18;
  v21 = sub_1003BBBAC(v19, v20);
  v22 = qword_10078A548;
  v23 = *&v19[qword_10078A548];
  *&v19[qword_10078A548] = v21;

  v24 = &off_100719448;
  if (!*&v19[v22])
  {
    v24 = 0;
  }

  *&v20[OBJC_IVAR____TtC9Reminders17TTRITreeTableView_contextMenuDelegate + 8] = v24;
  swift_unknownObjectWeakAssign();

  return v19;
}

id sub_1002EF560(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[qword_10077A998 + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[qword_10077A9A0] = &_swiftEmptyDictionarySingleton;
  *&v1[qword_10077A9A8] = &_swiftEmptyDictionarySingleton;
  *&v1[qword_10077A9B0] = &_swiftEmptySetSingleton;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t sub_1002EF644()
{
  sub_10003B788(v0 + qword_10077A998);
}

uint64_t sub_1002EF6A4(uint64_t a1)
{
  sub_10003B788(a1 + qword_10077A998);
}

uint64_t sub_1002EF7AC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v9 = v5;
  v11 = sub_1003AB730(a1);
  if (v12)
  {
    v13 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v5;
    v28 = *v9;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a4();
      v15 = v28;
    }

    v16 = *(v15 + 48);
    v17 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
    v18 = v13;
    (*(*(v17 - 8) + 8))(v16 + *(*(v17 - 8) + 72) * v13, v17);
    v19 = *(v15 + 56);
    v20 = a2(0);
    v27 = *(v20 - 8);
    (*(v27 + 32))(a5, v19 + *(v27 + 72) * v18, v20);
    a3(v18, v15);
    *v9 = v15;
    v21 = *(v27 + 56);
    v22 = a5;
    v23 = 0;
    v24 = v20;
  }

  else
  {
    v25 = a2(0);
    v21 = *(*(v25 - 8) + 56);
    v24 = v25;
    v22 = a5;
    v23 = 1;
  }

  return v21(v22, v23, 1, v24);
}

uint64_t sub_1002EF994(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002EF9F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  result = a4(a1);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = *(*(a3 + 56) + 8 * result);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v8 < *(a2 + 16))
  {
  }

  __break(1u);
  return result;
}

void sub_1002EFA60(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    (*(v3 + 96))(v6, v2);
    v8 = type metadata accessor for UUID();
    (*(*(v8 - 8) + 8))(v6, v8);
    return;
  }

  if (v7 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:))
  {
    goto LABEL_4;
  }

  if (v7 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:))
  {
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    if (v7 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:) || v7 == enum case for TTRAccountsListsViewModel.Item.account(_:) || v7 == enum case for TTRAccountsListsViewModel.Item.list(_:) || v7 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:) || v7 == enum case for TTRAccountsListsViewModel.Item.group(_:) || v7 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v7 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v7 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v7 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v7 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) || v7 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:) || v7 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
    {
LABEL_4:
      (*(v3 + 8))(v6, v2);
      return;
    }

    if (v7 != enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:) && v7 != enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
    {
      if (qword_100767180 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_100003E30(v9, qword_10077A980);
      v10 = sub_100008E04(_swiftEmptyArrayStorage);
      v11 = sub_100008E04(_swiftEmptyArrayStorage);
      sub_1003F9818("Unknown item type", 17, 2uLL, v10, v11);
      __break(1u);
    }
  }
}

uint64_t sub_1002EFDF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002EFE58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002EFEBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_1002EFF1C(char *a1, char *a2, uint64_t a3)
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
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v11 = type metadata accessor for TTRAccountsListsViewModel.Item();
      (*(*(v11 - 8) + 16))(a1, a2, v11);
      v12 = *(sub_100058000(&qword_10076B858, &unk_10062FBF0) + 48);
      v13 = type metadata accessor for REMHashtagLabelSpecifier();
      (*(*(v13 - 8) + 16))(&a1[v12], &a2[v12], v13);
    }

    else if (EnumCaseMultiPayload == 1)
    {
      v7 = type metadata accessor for TTRAccountsListsViewModel.Item();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
      v8 = *(sub_100058000(&unk_10076B860, &unk_100639720) + 48);
      v9 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
      (*(*(v9 - 8) + 16))(&a1[v8], &a2[v8], v9);
    }

    else
    {
      *a1 = *a2;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_1002F0114(char *a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 2:
      v7 = type metadata accessor for TTRAccountsListsViewModel.Item();
      (*(*(v7 - 8) + 8))(a1, v7);
      v5 = *(sub_100058000(&qword_10076B858, &unk_10062FBF0) + 48);
      v6 = type metadata accessor for REMHashtagLabelSpecifier();
      break;
    case 1:
      v4 = type metadata accessor for TTRAccountsListsViewModel.Item();
      (*(*(v4 - 8) + 8))(a1, v4);
      v5 = *(sub_100058000(&unk_10076B860, &unk_100639720) + 48);
      v6 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
      break;
    case 0:

    default:
      return result;
  }

  v8 = *(*(v6 - 8) + 8);

  return v8(&a1[v5], v6);
}

char *sub_1002F0268(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v9 = type metadata accessor for TTRAccountsListsViewModel.Item();
    (*(*(v9 - 8) + 16))(a1, a2, v9);
    v10 = *(sub_100058000(&qword_10076B858, &unk_10062FBF0) + 48);
    v11 = type metadata accessor for REMHashtagLabelSpecifier();
    (*(*(v11 - 8) + 16))(&a1[v10], &a2[v10], v11);
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v6 = type metadata accessor for TTRAccountsListsViewModel.Item();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    v7 = *(sub_100058000(&unk_10076B860, &unk_100639720) + 48);
    v8 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
    (*(*(v8 - 8) + 16))(&a1[v7], &a2[v7], v8);
  }

  else
  {
    *a1 = *a2;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

char *sub_1002F0414(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_1002EFEBC(a1, type metadata accessor for TTRIAccountsListsTreeView.ExtendedSelection);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v9 = type metadata accessor for TTRAccountsListsViewModel.Item();
      (*(*(v9 - 8) + 16))(a1, a2, v9);
      v10 = *(sub_100058000(&qword_10076B858, &unk_10062FBF0) + 48);
      v11 = type metadata accessor for REMHashtagLabelSpecifier();
      (*(*(v11 - 8) + 16))(&a1[v10], &a2[v10], v11);
    }

    else if (EnumCaseMultiPayload == 1)
    {
      v6 = type metadata accessor for TTRAccountsListsViewModel.Item();
      (*(*(v6 - 8) + 16))(a1, a2, v6);
      v7 = *(sub_100058000(&unk_10076B860, &unk_100639720) + 48);
      v8 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
      (*(*(v8 - 8) + 16))(&a1[v7], &a2[v7], v8);
    }

    else
    {
      *a1 = *a2;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

char *sub_1002F05E4(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v10 = type metadata accessor for TTRAccountsListsViewModel.Item();
    (*(*(v10 - 8) + 32))(a1, a2, v10);
    v11 = *(sub_100058000(&qword_10076B858, &unk_10062FBF0) + 48);
    v12 = type metadata accessor for REMHashtagLabelSpecifier();
    (*(*(v12 - 8) + 32))(&a1[v11], &a2[v11], v12);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v7 = type metadata accessor for TTRAccountsListsViewModel.Item();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    v8 = *(sub_100058000(&unk_10076B860, &unk_100639720) + 48);
    v9 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
    (*(*(v9 - 8) + 32))(&a1[v8], &a2[v8], v9);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v14 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v14);
}

char *sub_1002F07B0(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1002EFEBC(a1, type metadata accessor for TTRIAccountsListsTreeView.ExtendedSelection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v10 = type metadata accessor for TTRAccountsListsViewModel.Item();
    (*(*(v10 - 8) + 32))(a1, a2, v10);
    v11 = *(sub_100058000(&qword_10076B858, &unk_10062FBF0) + 48);
    v12 = type metadata accessor for REMHashtagLabelSpecifier();
    (*(*(v12 - 8) + 32))(&a1[v11], &a2[v11], v12);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v7 = type metadata accessor for TTRAccountsListsViewModel.Item();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    v8 = *(sub_100058000(&unk_10076B860, &unk_100639720) + 48);
    v9 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
    (*(*(v9 - 8) + 32))(&a1[v8], &a2[v8], v9);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v14 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v14);
}

uint64_t sub_1002F09A0(uint64_t a1)
{
  v7 = &value witness table for Builtin.BridgeObject + 64;
  result = type metadata accessor for TTRAccountsListsViewModel.Item();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
    if (v3 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v8 = &v6;
      result = type metadata accessor for REMHashtagLabelSpecifier();
      if (v4 <= 0x3F)
      {
        swift_getTupleTypeLayout2();
        v9 = &v5;
        swift_initEnumMetadataMultiPayload();
        return 0;
      }
    }
  }

  return result;
}

void sub_1002F0AEC(unint64_t a1, uint64_t a2)
{
  sub_100003540(0, &qword_100771DF0, UIFont_ptr);
  v3 = static UIFont.roundedBodyFont.getter();
  v13.super.isa = UIFont.withBoldTrait()().super.isa;

  v12 = static TTRCommonAsset.Color.hashtagTokenTextColor.getter();
  if (!(a1 >> 62))
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_15:

    return;
  }

LABEL_14:
  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (!v4)
  {
    goto LABEL_15;
  }

LABEL_3:
  v5 = 0;
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v9 = [v6 attributedText];
    if (!v9)
    {
      break;
    }

    v10 = v9;
    __chkstk_darwin(v9);
    v11 = NSAttributedString.withMutations(_:)();

    [v7 setAttributedText:v11];
    ++v5;
    if (v8 == v4)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

id sub_1002F0C8C(void *a1, id a2)
{
  [a2 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [a2 setEdgesPreservingSuperviewLayoutMargins:10];
  [a2 setLayoutMarginsRelativeArrangement:1];
  result = [a1 effectiveUserInterfaceLayoutDirection];
  if (result == 1)
  {
    v5 = [a2 arrangedSubviews];
    sub_100003540(0, &qword_10076B020, UIView_ptr);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v6 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v8 = 0;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v9 = *(v6 + 8 * v8 + 32);
        }

        v10 = v9;
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        objc_opt_self();
        v12 = swift_dynamicCastObjCClass();
        if (v12)
        {
          v13 = v12;
          if ([v12 contentMode] == 7)
          {
            [v13 setContentMode:8];
          }
        }

        ++v8;
        if (v11 == i)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_18:
  }

  return result;
}

void sub_1002F0E80(unint64_t a1)
{
  sub_100003540(0, &qword_10076FCB0, UIImage_ptr);
  v2 = static UIImage.ttr_systemSymbolImage(named:)();
  if (!v2)
  {
    return;
  }

  v3 = v2;
  sub_100003540(0, &qword_100772610, UIColor_ptr);
  v4 = static UIColor.ttrSecondaryLabelColor.getter();
  v5 = [v3 imageWithTintColor:v4];

  v14 = v5;
  if (!v5)
  {
    return;
  }

  if (!(a1 >> 62))
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_17:

    return;
  }

LABEL_16:
  v6 = _CocoaArrayWrapper.endIndex.getter();
  if (!v6)
  {
    goto LABEL_17;
  }

LABEL_5:
  v7 = 0;
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v8 = *(a1 + 8 * v7 + 32);
    }

    v9 = v8;
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v11 = [v8 attributedText];
    if (!v11)
    {
      break;
    }

    v12 = v11;
    __chkstk_darwin(v11);
    v13 = NSAttributedString.withMutations(_:)();

    [v9 setAttributedText:v13];
    ++v7;
    if (v10 == v6)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

id sub_1002F10A4(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_100058000(&qword_100776A40, &unk_100636E90);
  __chkstk_darwin(v5 - 8);
  v7 = &v18 - v6;
  v8 = sub_100058000(&qword_100776A48, qword_100638FE0);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  static TTRHelpAnchor.IOSHelpTopic.defaultVersion.getter();
  TTRHelpAnchor.IOSHelpTopic.init(identifier:helpTopicID:version:)();
  v11 = type metadata accessor for TTRHelpAnchor.IOSHelpTopic();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  v12 = type metadata accessor for TTRHelpAnchor.MacOSHelpAnchor();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  TTRHelpAnchor.init(iOSHelpTopic:macOSHelpAnchor:)();
  v13 = &v2[OBJC_IVAR____TtC9Reminders30TTRILearnMoreCSLViewController_learnMoreEllipsisPlaceholder];
  *v13 = 0xD000000000000024;
  *(v13 + 1) = 0x80000001006708A0;
  v14 = &v2[OBJC_IVAR____TtC9Reminders30TTRILearnMoreCSLViewController_howToPlaceholder];
  *v14 = 0xD000000000000017;
  *(v14 + 1) = 0x80000001006708D0;
  v15 = &v2[OBJC_IVAR____TtC9Reminders30TTRILearnMoreCSLViewController_learnMoreTagsPlaceholder];
  *v15 = 0xD000000000000029;
  *(v15 + 1) = 0x80000001006708F0;
  sub_1002F2808();
  static TTRTypedController.currentArgument.getter();
  *&v2[OBJC_IVAR____TtC9Reminders30TTRILearnMoreCSLViewController_presenter] = v19;
  v18.receiver = v2;
  v18.super_class = ObjectType;
  swift_unknownObjectRetain();
  v16 = objc_msgSendSuper2(&v18, "initWithCoder:", a1);

  swift_unknownObjectRelease();
  if (v16)
  {
  }

  return v16;
}

void sub_1002F142C()
{
  v1 = v0;
  sub_100058000(&qword_10076AE48, &qword_10062EE58);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100633540;
  *(v2 + 32) = swift_unknownObjectWeakLoadStrong();
  *(v2 + 40) = swift_unknownObjectWeakLoadStrong();
  *(v2 + 48) = swift_unknownObjectWeakLoadStrong();
  *(v2 + 56) = swift_unknownObjectWeakLoadStrong();
  *(v2 + 64) = swift_unknownObjectWeakLoadStrong();
  sub_100058000(&qword_10076AE50, &qword_10062EE60);
  sub_100003540(0, &unk_10076B090, UITextView_ptr);
  sub_100096990();
  v3 = Sequence.removingNils<A>()();

  if (v3 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    goto LABEL_17;
  }

  v5 = 0;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  left = UIEdgeInsetsZero.left;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v9 = *(v3 + 8 * v5 + 32);
    }

    v10 = v9;
    ++v5;
    [v9 setTextContainerInset:{UIEdgeInsetsZero.top, left, bottom, right}];
    v11 = [v10 textContainer];
    [v11 setLineFragmentPadding:0.0];
  }

  while (v4 != v5);
LABEL_10:

  sub_1002F1C60();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10062D3F0;
  *(v12 + 32) = swift_unknownObjectWeakLoadStrong();
  *(v12 + 40) = swift_unknownObjectWeakLoadStrong();
  v13 = Sequence.removingNils<A>()();

  sub_1002F0AEC(v13, sub_1002F2800);

  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10062D400;
  *(v14 + 32) = swift_unknownObjectWeakLoadStrong();
  v15 = Sequence.removingNils<A>()();

  sub_1002F0E80(v15);

  sub_100058000(&unk_10076AE60, &qword_10062EE68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18 = *&v1[OBJC_IVAR____TtC9Reminders30TTRILearnMoreCSLViewController_learnMoreTagsPlaceholder];
  v19 = *&v1[OBJC_IVAR____TtC9Reminders30TTRILearnMoreCSLViewController_learnMoreTagsPlaceholder + 8];
  *(inited + 32) = Strong;
  *(inited + 40) = v18;
  *(inited + 48) = v19;
  *(inited + 56) = 2;
  v20 = swift_unknownObjectWeakLoadStrong();
  if (!v20)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v21 = *&v1[OBJC_IVAR____TtC9Reminders30TTRILearnMoreCSLViewController_howToPlaceholder];
  v22 = *&v1[OBJC_IVAR____TtC9Reminders30TTRILearnMoreCSLViewController_howToPlaceholder + 8];
  *(inited + 64) = v20;
  *(inited + 72) = v21;
  *(inited + 80) = v22;
  *(inited + 88) = 0;

  sub_1002F21F8(inited, v1);
  v23 = [v1 view];
  if (!v23)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v24 = v23;
  v25 = swift_unknownObjectWeakLoadStrong();
  if (!v25)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v26 = v25;
  sub_1002F0C8C(v24, v25);

  v27 = swift_unknownObjectWeakLoadStrong();
  if (v27)
  {
    v28 = v27;
    swift_setDeallocating();
    swift_arrayDestroy();
    v29._object = 0x8000000100680630;
    v30._countAndFlagsBits = 0xD000000000000079;
    v30._object = 0x8000000100680670;
    v29._countAndFlagsBits = 0xD000000000000032;
    TTRLocalizedString(_:comment:)(v29, v30);
    v31 = String._bridgeToObjectiveC()();

    [v28 setAccessibilityLabel:v31];

    return;
  }

LABEL_21:
  __break(1u);
}

void sub_1002F1C60()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_11;
  }

  v1 = Strong;
  static TTRLocalizableStrings.LearnMore.whySmartLists.getter();
  v2 = String._bridgeToObjectiveC()();

  [v1 setText:v2];

  v3 = swift_unknownObjectWeakLoadStrong();
  if (!v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  static TTRLocalizableStrings.LearnMore.whySmartListsExampleBody.getter();
  v5 = String._bridgeToObjectiveC()();

  [v4 setText:v5];

  v6 = swift_unknownObjectWeakLoadStrong();
  if (!v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = v6;
  static TTRLocalizableStrings.LearnMore.makeSmartListBody.getter();
  v8 = String._bridgeToObjectiveC()();

  [v7 setText:v8];

  v9 = swift_unknownObjectWeakLoadStrong();
  if (!v9)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v9;
  static TTRLocalizableStrings.LearnMore.filteringTags.getter();
  v11 = String._bridgeToObjectiveC()();

  [v10 setText:v11];

  v12 = swift_unknownObjectWeakLoadStrong();
  if (!v12)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = v12;
  static TTRLocalizableStrings.LearnMore.addRemindersToSmartLists.getter();
  v14 = String._bridgeToObjectiveC()();

  [v13 setText:v14];

  v15 = swift_unknownObjectWeakLoadStrong();
  if (!v15)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v16 = v15;
  static TTRLocalizableStrings.LearnMore.howToAddRemindersToSmartLists.getter();
  v17 = String._bridgeToObjectiveC()();

  [v16 setText:v17];
}

uint64_t type metadata accessor for TTRILearnMoreCSLViewController(uint64_t a1)
{
  result = qword_10077B168;
  if (!qword_10077B168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002F203C(uint64_t a1, __n128 a2)
{
  result = type metadata accessor for TTRHelpAnchor();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1002F21F8(uint64_t a1, uint64_t a2)
{
  sub_100003540(0, &qword_100772610, UIColor_ptr);
  v18 = static UIColor.ttrLinkColor.getter();
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 56);
    while (1)
    {
      v5 = *v4;
      v6 = *(v4 - 3);
      swift_bridgeObjectRetain_n();
      v7 = v6;
      v8 = [v7 text];
      if (!v8)
      {
        break;
      }

      v9 = v8;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10007D420();
      LOBYTE(v9) = StringProtocol.contains<A>(_:)();

      if (v9)
      {
        if (v5)
        {
          if (v5 == 1)
          {
            v10 = 0x1000000000000051;
            v11 = 0x8000000100670760;
            v12 = 0x6F4D206E7261654CLL;
            v13 = 0xAD0000A680E26572;
          }

          else
          {
            v13 = 0x80000001006707C0;
            v10 = 0x100000000000005CLL;
            v11 = 0x80000001006707E0;
            v12 = 0x1000000000000018;
          }
        }

        else
        {
          v11 = 0x8000000100670840;
          v12 = 0x41206F542D776F48;
          v13 = 0xEE00656C63697472;
          v10 = 0xD000000000000052;
        }

        TTRLocalizedString(_:comment:)(*&v12, *&v10);
        [v7 setSelectable:1];
        [v7 _setInteractiveTextSelectionDisabled:1];
        [v7 setDelegate:a2];
        v14 = [v7 attributedText];
        if (!v14)
        {
          goto LABEL_16;
        }

        v15 = v14;
        __chkstk_darwin(v14);
        v16 = NSAttributedString.withMutations(_:)();

        [v7 setAttributedText:v16];
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v4 += 4;
      if (!--v3)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:
  }
}

uint64_t sub_1002F250C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRLearnMoreContent();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v9 = Strong, sub_100003540(0, &unk_10076B090, UITextView_ptr), v10 = a1, v11 = static NSObject.== infix(_:_:)(), v9, v10, (v11 & 1) != 0))
  {
    v12 = *(v2 + OBJC_IVAR____TtC9Reminders30TTRILearnMoreCSLViewController_presenter);
    v13 = OBJC_IVAR____TtC9Reminders30TTRILearnMoreCSLViewController_cslHelpAnchor;
    if (qword_100766FC0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100003E30(v14, qword_1007712B0);
    v15 = sub_100008E04(_swiftEmptyArrayStorage);
    sub_10000FD44("Learn More open help", 20, 2, v15);

    sub_10000C36C((v12 + 48), *(v12 + 72));
    sub_100094F90(v2 + v13);
  }

  else
  {
    v16 = swift_unknownObjectWeakLoadStrong();
    if (v16)
    {
      v17 = v16;
      sub_100003540(0, &unk_10076B090, UITextView_ptr);
      v18 = a1;
      v19 = static NSObject.== infix(_:_:)();

      if (v19)
      {
        v20 = *(v2 + OBJC_IVAR____TtC9Reminders30TTRILearnMoreCSLViewController_presenter);
        (*(v5 + 104))(v7, enum case for TTRLearnMoreContent.hashtags(_:), v4);
        if (qword_100766FC0 != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        sub_100003E30(v21, qword_1007712B0);
        v22 = sub_100008E04(_swiftEmptyArrayStorage);
        sub_10000FD44("Learn More open other learn more", 32, 2, v22);

        sub_10000C36C((v20 + 48), *(v20 + 72));
        sub_1000950E8(v7);
        (*(v5 + 8))(v7, v4);
      }
    }
  }

  return 0;
}

unint64_t sub_1002F2808()
{
  result = qword_10077B180;
  if (!qword_10077B180)
  {
    type metadata accessor for TTRILearnMoreCSLViewController(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077B180);
  }

  return result;
}

uint64_t sub_1002F2874()
{
  sub_10003B788(v0 + 16);
  sub_10003B788(v0 + 32);
  swift_unknownObjectRelease();
  sub_100004758((v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_1002F28E8()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10077B248);
  v1 = sub_100003E30(v0, qword_10077B248);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002F29B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 && (v9 = type metadata accessor for TTRIRemindersListBarItem(0, a3, a4, v8), *(a1 + *(v9 + 36)) == *(a2 + *(v9 + 36))))
  {
    v10 = *(a1 + *(v9 + 40)) ^ *(a2 + *(v9 + 40)) ^ 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

void sub_1002F2A34(uint64_t a1, Swift::UInt a2, char a3)
{
  v3 = a2;
  if (a3)
  {
    if (a3 == 1)
    {
      Hasher._combine(_:)(4uLL);
    }

    else
    {
      v3 = qword_100639C30[a2];
    }
  }

  else
  {
    Hasher._combine(_:)(2uLL);
  }

  Hasher._combine(_:)(v3);
}

Swift::Int sub_1002F2AD4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  sub_1002F2A34(v4, v1, v2);
  return Hasher._finalize()();
}

Swift::Int sub_1002F2B30(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  Hasher.init(_seed:)();
  sub_1002F2A34(v5, v2, v3);
  return Hasher._finalize()();
}

uint64_t sub_1002F2B94(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  v4 = *(a2 + 8);
  v5 = *(a2 + 9);
  return sub_1001254F0(*a1, *a2) & ~(v2 ^ v4) & ~(v3 ^ v5) & 1;
}

uint64_t sub_1002F2BF0()
{
  if (v0[8])
  {
    v1 = v0[8];
  }

  else
  {
    v2 = v0;
    v5[3] = *v0;
    v5[0] = v0;
    type metadata accessor for TTRIAddReminderBarButtonModule();
    swift_allocObject();

    v1 = sub_1001C60D8(1, v5, "newReminderAction:");
    v3 = *(v1 + 48);
    if (v3)
    {
      [v3 setContentHorizontalAlignment:{4, v5[0]}];
    }

    v2[8] = v1;
  }

  return v1;
}

uint64_t sub_1002F2CD4(char a1, int a2)
{
  v3 = v2;
  LODWORD(v4) = a2;
  v6 = type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v179 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRIRemindersListToolbarBatchMoveToSectionParams(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v179 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v179 - v14;
  v191 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v190 = *(v191 - 8);
  __chkstk_darwin(v191);
  v189 = &v179 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v196 = 0;
    v194 = 0u;
    v195 = 0u;
    return sub_1000079B4(&v194, &qword_10077B340, &qword_100639A98);
  }

  v18 = Strong;
  v185 = v15;
  v19 = sub_10037BD64(Strong);
  if (v19)
  {
    v20 = v19;
    swift_unknownObjectRelease();
    v21 = &off_10071F0F8;
    v18 = v20;
    v22 = &type metadata for TTRIRemindersListUIToolbarUpdater;
  }

  else
  {
    v21 = &off_10071F110;
    v22 = &type metadata for TTRIRemindersListViewControllerToolbarUpdater;
  }

  *(&v195 + 1) = v22;
  v196 = v21;
  *&v194 = v18;
  sub_100005FD0(&v194, v197);
  v24 = swift_unknownObjectWeakLoadStrong();
  v188 = v6;
  v183 = v9;
  v187 = v7;
  v186 = v12;
  if (a1)
  {
    if (v24)
    {
      v25 = *(v24 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController);
      v26 = *(v24 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController + 8);
      v27 = v24;
      ObjectType = swift_getObjectType();
      v29 = *(v26 + 160);
      v30 = v25;
      v31 = v29(0, ObjectType, v26);

      v32 = *(v27 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
      v33 = *(v27 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32);
      sub_10000C36C((v27 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v32);
      v34 = (*(v33 + 424))(v31, v32, v33);
      v36 = v35;
      swift_unknownObjectRelease();

      v37 = v36 & 0x100;
    }

    else
    {
      LOBYTE(v36) = 0;
      v37 = 0;
      v34 = _swiftEmptyArrayStorage;
    }

    v39 = v37 | v36 & 1 | 0xFFFF8000;
  }

  else if (v24)
  {
    v38 = sub_1003903E8();
    swift_unknownObjectRelease();
    v39 = 0;
    v34 = v38 & 1;
  }

  else
  {
    v34 = 0;
    v39 = 0;
  }

  v40 = *(v3 + 56);
  if ((~v40 & 0xFFFFFEFE) == 0)
  {
    sub_1002F6104(v34, v39);
    if ((v39 & 0x80000000) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_22;
  }

  v41 = *(v3 + 48);
  if ((v40 & 0x80000000) == 0)
  {
    sub_1002F690C(*(v3 + 48), v40);
    if ((v39 & 0x80000000) != 0)
    {
      sub_1002F6104(v34, v39);
LABEL_31:
      v50 = (v39 >> 8) & 1;
      goto LABEL_32;
    }

    if (((v41 ^ v34) & 1) == 0)
    {
      return sub_100004758(v197);
    }

LABEL_22:
    v42 = static REMFeatureFlags.isSolariumEnabled.getter();
    sub_100058000(&qword_10076B780, &qword_10062D7C0);
    v43 = swift_allocObject();
    if (v42)
    {
      *(v43 + 16) = xmmword_10062D410;
      *(v43 + 32) = [objc_opt_self() flexibleSpaceItem];
      v44 = (v43 + 40);
    }

    else
    {
      *(v43 + 16) = xmmword_10062D420;
      v44 = (v43 + 32);
    }

    v45 = *(sub_1002F2BF0() + 16);

    *v44 = v45;
    *&v194 = v43;
    if (v34)
    {
      if (static REMFeatureFlags.isSolariumEnabled.getter())
      {
        v46 = sub_1002F4138();
        sub_1000F17D0(0, 0, v46);
      }

      else
      {
        sub_100058000(&qword_10076B780, &qword_10062D7C0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10062D410;
        *(inited + 32) = [objc_opt_self() flexibleSpaceItem];
        *(inited + 40) = sub_1002F4138();
        sub_100018520(inited);
      }
    }

    v48 = v198;
    v49 = v199;
    sub_10000C36C(v197, v198);
    (*(v49 + 16))(v194, v4 & 1, v48, v49);

LABEL_159:
    v171 = *(v3 + 48);
    *(v3 + 48) = v34;
    v172 = *(v3 + 56);
    *(v3 + 56) = v39;
    sub_1002F690C(v171, v172);
    return sub_100004758(v197);
  }

  if ((v39 & 0x80000000) == 0)
  {
    goto LABEL_22;
  }

  v173 = *(v3 + 56);
  v50 = (v39 >> 8) & 1;
  v174 = sub_1001254F0(*(v3 + 48), v34);
  sub_1002F6104(v34, v39);
  if ((v174 & 1) != 0 && ((v173 ^ v39) & 1) == 0 && (((v173 ^ v39) >> 8) & 1) == 0)
  {
    sub_1002F6104(v34, v39);
    return sub_100004758(v197);
  }

LABEL_32:
  v51 = *(v3 + 56);
  v182 = v34;
  v184 = v39;
  if ((~v51 & 0xFFFFFEFE) != 0 && v51 < 0)
  {
    v52 = *(v3 + 48);
    sub_1002F60E8(v34, v39);
    sub_1002F68F8(v52, v51);
    v53 = sub_1002F6730(v34, v39 & 1, v52, v51 & 1);
    sub_1002F690C(v52, v51);
    if (v53)
    {
      goto LABEL_121;
    }
  }

  else
  {
  }

  v180 = v50;
  v54 = *(v34 + 16);
  v55 = _swiftEmptyArrayStorage;
  v181 = v4;
  if (v54)
  {
    v192 = _swiftEmptyArrayStorage;

    specialized ContiguousArray.reserveCapacity(_:)();
    v56 = (v34 + 40);
    while (1)
    {
      v55 = *(v56 - 1);
      v59 = *v56;
      swift_beginAccess();
      v60 = *(v3 + 40);
      if (*(v60 + 16))
      {
        v61 = sub_1003AB3D4(v55, v59);
        if (v62)
        {
          v63 = *(*(v60 + 56) + 8 * v61);
          swift_endAccess();
          v64 = v63;
          goto LABEL_41;
        }
      }

      swift_endAccess();
      sub_100003540(0, &qword_10076B800, UIBarButtonItem_ptr);
      sub_100003540(0, &qword_10076BA60, UIAction_ptr);
      v65 = swift_allocObject();
      swift_weakInit();
      v66 = swift_allocObject();
      *(v66 + 16) = v65;
      *(v66 + 24) = v55;
      *(v66 + 32) = v59;
      v203.is_nil = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v203.value.super.isa = 0;
      v204.value.super.super.isa = 0;
      isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(0, v203, v204, v205).super.super.isa;
      swift_beginAccess();
      v4 = isa;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v193 = *(v3 + 40);
      v69 = v193;
      *(v3 + 40) = 0x8000000000000000;
      v71 = sub_1003AB3D4(v55, v59);
      v72 = v69[2];
      v73 = (v70 & 1) == 0;
      v74 = v72 + v73;
      if (__OFADD__(v72, v73))
      {
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
        goto LABEL_179;
      }

      v75 = v70;
      if (v69[3] >= v74)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v78 = v193;
          if ((v70 & 1) == 0)
          {
            goto LABEL_52;
          }
        }

        else
        {
          sub_1003AE29C();
          v78 = v193;
          if ((v75 & 1) == 0)
          {
            goto LABEL_52;
          }
        }
      }

      else
      {
        sub_10054945C(v74, isUniquelyReferenced_nonNull_native);
        v76 = sub_1003AB3D4(v55, v59);
        if ((v75 & 1) != (v77 & 1))
        {
          goto LABEL_190;
        }

        v71 = v76;
        v78 = v193;
        if ((v75 & 1) == 0)
        {
LABEL_52:
          v78[(v71 >> 6) + 8] |= 1 << v71;
          v79 = v78[6] + 16 * v71;
          *v79 = v55;
          *(v79 + 8) = v59;
          *(v78[7] + 8 * v71) = v4;
          v80 = v78[2];
          v81 = __OFADD__(v80, 1);
          v82 = v80 + 1;
          if (v81)
          {
            goto LABEL_177;
          }

          v78[2] = v82;
          goto LABEL_40;
        }
      }

      v57 = v78[7];
      v58 = *(v57 + 8 * v71);
      *(v57 + 8 * v71) = v4;

LABEL_40:
      *(v3 + 40) = v78;
      swift_endAccess();
LABEL_41:
      v56 += 16;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (!--v54)
      {
        LOBYTE(v39) = v184;
        sub_1002F6104(v182, v184);
        v55 = v192;
        LOBYTE(v4) = v181;
        break;
      }
    }
  }

  v192 = v55;
  if ((v180 & 1) == 0)
  {
    goto LABEL_75;
  }

  swift_beginAccess();
  v83 = *(v3 + 40);
  if (!*(v83 + 16) || (v84 = sub_1003AB3D4(1uLL, 2), (v85 & 1) == 0))
  {
    swift_endAccess();
LABEL_72:
    sub_1002F45C4();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v192 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v192 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_75:
    if ((v39 & 1) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_76;
  }

  v86 = *(*(v83 + 56) + 8 * v84);
  swift_endAccess();
  if (!(v55 >> 62))
  {
    v87 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v87)
    {
      goto LABEL_72;
    }

    goto LABEL_62;
  }

  v87 = _CocoaArrayWrapper.endIndex.getter();
  if (!v87)
  {
    goto LABEL_72;
  }

LABEL_62:
  v88 = v4;
  v4 = v55 & 0xC000000000000001;
  v89 = v86;
  v54 = 0;
  while (1)
  {
    if (v4)
    {
      v90 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      swift_unknownObjectRelease();
      if (v90 == v89)
      {
        break;
      }

      goto LABEL_68;
    }

    if (v54 >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_182;
    }

    if (*(v55 + 8 * v54 + 32) == v89)
    {
      break;
    }

LABEL_68:
    v91 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      goto LABEL_178;
    }

    ++v54;
    if (v91 == v87)
    {

      LOBYTE(v39) = v184;
      LOBYTE(v4) = v88;
      goto LABEL_72;
    }
  }

  v175 = v54 + 1;
  if (__OFADD__(v54, 1))
  {
    __break(1u);
LABEL_187:
    __break(1u);
    goto LABEL_188;
  }

  v176 = sub_1002F45C4();
  LOBYTE(v4) = v88;
  if (v55 >> 62)
  {
    v177 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v177 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v178 = v184;
  if (v177 < v175)
  {
    goto LABEL_187;
  }

  if ((v175 & 0x8000000000000000) == 0)
  {
    sub_1000F17D0(v175, v175, v176);

    if ((v178 & 1) == 0)
    {
      while (1)
      {
LABEL_78:
        v54 = v192;
        v55 = v192 >> 62;
        if (v192 >> 62)
        {
LABEL_179:
          if (!_CocoaArrayWrapper.endIndex.getter())
          {
            goto LABEL_120;
          }
        }

        else if (!*((v192 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_120;
        }

        v92 = [objc_opt_self() flexibleSpaceItem];
        [v92 setHidesSharedBackground:0];
        v93 = v55 ? _CocoaArrayWrapper.endIndex.getter() : *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!__OFSUB__(v93, 1))
        {
          break;
        }

        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_77:
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      if (v93 - 1 < 1)
      {
        goto LABEL_119;
      }

      v94 = v93 + 4;
      v95 = 8 * v93 + 24;
      while (2)
      {
        v4 = v94 - 5;
        v96 = v54 < 0 || (v54 & 0x4000000000000000) != 0;
        if (v96)
        {
          if (v54 < 0)
          {
            v55 = v54;
          }

          else
          {
            v55 = v54 & 0xFFFFFFFFFFFFFF8;
          }

          if (_CocoaArrayWrapper.endIndex.getter() < v4)
          {
            goto LABEL_174;
          }

          if (_CocoaArrayWrapper.endIndex.getter() < v4)
          {
            goto LABEL_189;
          }

          v103 = _CocoaArrayWrapper.endIndex.getter();
          v98 = v103 + 1;
          if (__OFADD__(v103, 1))
          {
            goto LABEL_175;
          }
        }

        else
        {
          v97 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v97 < v4)
          {
            goto LABEL_174;
          }

          v98 = v97 + 1;
          if (__OFADD__(v97, 1))
          {
            goto LABEL_175;
          }
        }

        v55 = v92;
        if (swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          if ((v54 & 0x8000000000000000) == 0 && (v54 & 0x4000000000000000) == 0)
          {
            v99 = v54 & 0xFFFFFFFFFFFFFF8;
            if (v98 > *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
LABEL_99:
              v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v99 = v54 & 0xFFFFFFFFFFFFFF8;
            }

            sub_100003540(0, &qword_10076B800, UIBarButtonItem_ptr);
            swift_arrayDestroy();
            if (!(v54 >> 62))
            {
              v100 = *(v99 + 16);
              v101 = v100 - v4;
              if (__OFSUB__(v100, v4))
              {
                goto LABEL_118;
              }

              goto LABEL_102;
            }

            v104 = _CocoaArrayWrapper.endIndex.getter();
            v101 = v104 - v4;
            if (!__OFSUB__(v104, v4))
            {
LABEL_102:
              memmove((v99 + 8 * v94), (v99 + v95), 8 * v101);
              if (v54 >> 62)
              {
                v102 = _CocoaArrayWrapper.endIndex.getter();
              }

              else
              {
                v102 = *(v99 + 16);
              }

              if (__OFADD__(v102, 1))
              {
                goto LABEL_176;
              }

              *(v99 + 16) = v102 + 1;
              *(v99 + v95) = v55;
              --v94;
              v95 -= 8;
              if (v4 <= 1)
              {
                goto LABEL_119;
              }

              continue;
            }

LABEL_118:
            __break(1u);
LABEL_119:

            LOBYTE(v4) = v181;
LABEL_120:
            v105 = v198;
            v106 = v199;
            sub_10000C36C(v197, v198);
            (*(v106 + 16))(v54, v4 & 1, v105, v106);

LABEL_121:
            v107 = sub_1002F4620();
            v108 = swift_unknownObjectWeakLoadStrong();
            v109 = &OBJC_IVAR____TtC9RemindersP33_A10A20E84AB2AC9C74D0C6E6C8D7962E16SpinnerAccessory_accessoryState;
            v127 = v108 && (v110 = *(v108 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController), v111 = *(v108 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController + 8), v112 = v108, v113 = swift_getObjectType(), v114 = *(v111 + 160), v115 = v110, v116 = v114(0, v113, v111), v115, v117 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_listInfo, swift_beginAccess(), v118 = v190, v119 = v189, v120 = v191, (*(v190 + 16))(v189, v112 + v117, v191), LOBYTE(v117) = TTRRemindersListViewModel.ListInfo.shouldCategorizeGroceryItems.getter(), (*(v118 + 8))(v119, v120), v121 = *(v112 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24), v122 = *(v112 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32), sub_10000C36C((v112 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v121), v123 = (*(v122 + 432))(v116, v117 & 1, v121, v122), v125 = v124, swift_unknownObjectRelease(), , v126 = *(v123 + 16), , v126) && v125 > 0;
            [v107 setEnabled:v127];

            v128 = sub_1002F45C4();
            v129 = swift_unknownObjectWeakLoadStrong();
            if (v129 && (v130 = *(v129 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController), v131 = *(v129 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController + 8), v132 = v129, v133 = swift_getObjectType(), v109 = *(v131 + 160), v134 = v130, v135 = (v109)(0, v133, v131), v134, v136 = *(v132 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24), v137 = *(v132 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32), sub_10000C36C((v132 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v136), v138 = v185, (*(v137 + 440))(v135, v136, v137), swift_unknownObjectRelease(), , v139 = v186, sub_1002F692C(v138, v186, type metadata accessor for TTRIRemindersListToolbarBatchMoveToSectionParams), v140 = v188, (*(v187 + 48))(v139, 1, v188) != 1))
            {
              v142 = v139;
              v143 = v183;
              sub_1002F692C(v142, v183, type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration);
              v144 = *(v143 + *(v140 + 40));
              sub_1002F6A28(v143, type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration);
              v141 = v144 > 0;
            }

            else
            {
              v141 = 0;
            }

            v34 = v182;
            LOWORD(v39) = v184;
            [v128 setEnabled:v141];

            v145 = *(v34 + 16);
            if (v145)
            {
              v187 = "$_moveSectionButton";
              v146 = (v34 + 42);
              v190 = v3;
              while (1)
              {
                v147 = *(v146 - 10);
                v148 = *(v146 - 2);
                v149 = *(v146 - 1);
                v150 = *v146;
                swift_beginAccess();
                v151 = *(v3 + 40);
                if (*(v151 + 16))
                {
                  v152 = sub_1003AB3D4(v147, v148);
                  if (v153)
                  {
                    break;
                  }
                }

                swift_endAccess();
LABEL_132:
                v146 += 16;
                if (!--v145)
                {
                  v34 = v182;
                  v170 = v182;
                  LOWORD(v39) = v184;
                  goto LABEL_158;
                }
              }

              v154 = *(*(v151 + 56) + 8 * v152);
              swift_endAccess();
              v155 = v154;
              [v155 setEnabled:v149];
              if (v149)
              {
                v156 = 256;
              }

              else
              {
                v156 = 0;
              }

              if (v150)
              {
                v157 = 0x10000;
              }

              else
              {
                v157 = 0;
              }

              LODWORD(v109) = v109 & 0xFF000000 | v148 | v156 | v157;
              v158 = v155;
              v159 = sub_1002F467C(v147, v109);
              [v158 setImage:v159];

              if (v148)
              {
                if (v148 == 1)
                {
                  v160 = v109;
                  v161 = v189 & 0xFF000000 | 1 | v156 | v157;
                  v162 = v147;
                  v163 = &v202;
                }

                else
                {
                  if (v147 != 4)
                  {
                    [v158 setTitle:0];

                    if (v147 != 1)
                    {
                      goto LABEL_154;
                    }

                    goto LABEL_152;
                  }

                  v160 = v109;
                  v161 = v186 & 0xFF000000 | v148 | v156 | v157;
                  v162 = 4;
                  v163 = &v200;
                }
              }

              else
              {
                v160 = v109;
                v161 = v188 & 0xFF000000 | v156 | v157;
                v162 = v147;
                v163 = &v201;
              }

              *(v163 - 64) = v161;
              sub_1002F56AC(v162, v161);
              v109 = String._bridgeToObjectiveC()();

              [v158 setTitle:v109];

              LODWORD(v109) = v160;
              if (v148)
              {
                if (v148 == 1)
                {
                  v3 = v190;
LABEL_154:
                  v167 = v191 & 0xFF000000 | v148 | v156 | v157;
                  v168 = v158;
                  LODWORD(v191) = v167;
                  sub_1002F56AC(v147, v167);
                  goto LABEL_155;
                }

                v3 = v190;
                if (v147 != 1)
                {
                  goto LABEL_154;
                }
              }

              else
              {
                v3 = v190;
              }

LABEL_152:
              v164 = v158;
              v165._object = (v187 | 0x8000000000000000);
              v166._countAndFlagsBits = 0x206F542065766F4DLL;
              v166._object = 0xEC0000007473694CLL;
              v165._countAndFlagsBits = 0xD00000000000005DLL;
              TTRLocalizedString(_:comment:)(v166, v165);
LABEL_155:
              v169 = String._bridgeToObjectiveC()();

              [v158 setAccessibilityLabel:v169];

              goto LABEL_132;
            }

            v170 = v34;
LABEL_158:
            sub_1002F6104(v170, v39);
            goto LABEL_159;
          }
        }

        else if (!v96)
        {
          goto LABEL_99;
        }

        break;
      }

      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_99;
    }

LABEL_76:
    sub_1002F4620();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v192 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v192 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_183;
    }

    goto LABEL_77;
  }

LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1002F40A8@<X0>(uint64_t a1@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    result = sub_10037BD64(result);
    if (result)
    {
      v4 = result;
      *(a1 + 24) = &type metadata for TTRIRemindersListUIToolbarUpdater;
      *(a1 + 32) = &off_10071F0F8;
      result = swift_unknownObjectRelease();
      *a1 = v4;
    }

    else
    {
      *(a1 + 24) = &type metadata for TTRIRemindersListViewControllerToolbarUpdater;
      *(a1 + 32) = &off_10071F110;
      *a1 = v3;
    }
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

id sub_1002F4138()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 72);
  }

  else
  {
    v3 = sub_1002F4978(v0);
    v4 = *(v0 + 72);
    *(v0 + 72) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

double sub_1002F4194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1002F4208(a3, v4);
  }

  return result;
}

void sub_1002F4208(uint64_t a1, char a2)
{
  v3 = *(v2 + 56);
  if ((~v3 & 0xFFFFFEFE) == 0)
  {
    return;
  }

  if (v3 < 0)
  {
    v4 = *(v2 + 48);
    v6 = a1;
    v7 = a2;
    sub_1002F60E8(v4, *(v2 + 56));
    a1 = v6;
    a2 = v7;
    v5 = v4[2];
    if (!v5)
    {
LABEL_62:

      return;
    }
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
    v5 = _swiftEmptyArrayStorage[2];
    if (!v5)
    {
      goto LABEL_62;
    }
  }

  v8 = a1 == 7 && a2 == 2;
  v9 = a1 == 6 && a2 == 2;
  v10 = a1 == 5 && a2 == 2;
  v11 = a1 == 4 && a2 == 2;
  v12 = a1 == 3 && a2 == 2;
  v13 = a1 == 2 && a2 == 2;
  v14 = a1 == 1 && a2 == 2;
  if (a1)
  {
    v15 = 0;
  }

  else
  {
    v15 = a2 == 2;
  }

  v16 = v4 + 42;
  v17 = 1;
  while (1)
  {
    v18 = *(v16 - 10);
    v19 = *(v16 - 2);
    if (*(v16 - 2))
    {
      break;
    }

    if (!a2)
    {
      goto LABEL_33;
    }

LABEL_34:
    v16 += 16;
    if (!--v5)
    {
      goto LABEL_62;
    }
  }

  if (v19 != 1)
  {
    if (v18 > 3)
    {
      if (v18 > 5)
      {
        if (v18 == 6)
        {
          if (v9)
          {
            v17 = 6;
            goto LABEL_66;
          }
        }

        else if (v8)
        {
          v17 = 7;
          goto LABEL_66;
        }
      }

      else if (v18 == 4)
      {
        if (v11)
        {
          v17 = 4;
          goto LABEL_66;
        }
      }

      else if (v10)
      {
        v17 = 5;
        goto LABEL_66;
      }
    }

    else if (v18 > 1)
    {
      if (v18 == 2)
      {
        if (v13)
        {
          v17 = 2;
          goto LABEL_66;
        }
      }

      else if (v12)
      {
        v17 = 3;
        goto LABEL_66;
      }
    }

    else if (v18)
    {
      if (v14)
      {
        goto LABEL_66;
      }
    }

    else if (v15)
    {
      v17 = 0;
      goto LABEL_66;
    }

    goto LABEL_34;
  }

  if (a2 != 1)
  {
    goto LABEL_34;
  }

LABEL_33:
  if (v18 != a1)
  {
    goto LABEL_34;
  }

  v17 = a1;
LABEL_66:
  v20 = *(v16 - 1);
  v27 = *v16;

  v21 = swift_beginAccess();
  __chkstk_darwin(v21);
  __chkstk_darwin(v22);

  sub_100058000(&qword_10077B350, &unk_100639AA8);
  sub_100003540(0, &qword_10076B800, UIBarButtonItem_ptr);
  sub_1002F6B48();
  Sequence.firstMap<A>(_:)();

  if (v28)
  {
    if (v20)
    {
      v23 = 256;
    }

    else
    {
      v23 = 0;
    }

    v24 = v23 | v19;
    if (v27)
    {
      v25 = 0x10000;
    }

    else
    {
      v25 = 0;
    }

    v26 = v28;
    sub_1002F5A7C(v17, v24 | v25, v26);
  }
}

id sub_1002F45C4()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    v2 = *(v0 + 88);
  }

  else
  {
    v3 = sub_1002F50D8(v0);
    v4 = *(v0 + 88);
    *(v0 + 88) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_1002F4620()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    v2 = *(v0 + 80);
  }

  else
  {
    v3 = sub_1002F4A90(v0);
    v4 = *(v0 + 80);
    *(v0 + 80) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_1002F467C(uint64_t a1, char a2)
{
  if ((a2 & 0xFE) == 0)
  {
    return 0;
  }

  if (a1 > 3)
  {
    if (a1 != 4)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (a1 <= 1 && a1)
  {
    return static TTRCommonAsset.Image.moveToListIcon.getter();
  }

LABEL_11:
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() _systemImageNamed:v3];

  return v4;
}

uint64_t sub_1002F48F0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a2;
  v7 = *(a2 + 8);
  if (v5 < 0)
  {
    if (v7 < 0)
    {
      v8 = sub_1001254F0(v4, v6) & (v7 ^ v5 ^ 1) & (((v7 & 0x100) == 0) ^ ((v5 & 0x100) >> 8));
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    LOBYTE(v8) = v6 ^ v4 ^ 1;
    if (v7 < 0)
    {
      LOBYTE(v8) = 0;
    }
  }

  return v8 & 1;
}

id sub_1002F4978(uint64_t a1)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() _systemImageNamed:v2];

  v4 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v3 style:0 target:a1 action:"toolbarFileGroceryRadar:"];
  v5 = v4;
  v6._object = 0x80000001006808C0;
  v7._countAndFlagsBits = 0xD000000000000068;
  v7._object = 0x80000001006808F0;
  v6._countAndFlagsBits = 0xD00000000000002BLL;
  TTRLocalizedString(_:comment:)(v6, v7);
  v8 = String._bridgeToObjectiveC()();

  [v5 setAccessibilityLabel:v8];

  return v5;
}

id sub_1002F4A90(uint64_t a1)
{
  v1 = static TTRCommonAsset.Image.actionMenuIcon.getter();
  v2 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v1 style:0 target:0 action:0];
  v3 = swift_allocObject();
  swift_weakInit();
  v10[4] = sub_1002F6A88;
  v10[5] = v3;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10010CA7C;
  v10[3] = &unk_10071EFE0;
  v4 = _Block_copy(v10);

  [v2 _setSecondaryActionsProvider:v4];
  _Block_release(v4);
  v5 = v2;
  v6._countAndFlagsBits = 0x7463412065726F4DLL;
  v6._object = 0xEC000000736E6F69;
  v7._object = 0x8000000100680A20;
  v7._countAndFlagsBits = 0xD000000000000030;
  TTRLocalizedString(_:comment:)(v6, v7);
  v8 = String._bridgeToObjectiveC()();

  [v5 setAccessibilityLabel:v8];

  return v5;
}

Class sub_1002F4C18()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v6 = *(Strong + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController);
  v7 = *(Strong + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController + 8);
  v8 = Strong;
  ObjectType = swift_getObjectType();
  v10 = *(v7 + 160);
  v11 = v6;
  v12 = v10(0, ObjectType, v7);

  v13 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_listInfo;
  swift_beginAccess();
  (*(v2 + 16))(v4, v8 + v13, v1);
  LOBYTE(v13) = TTRRemindersListViewModel.ListInfo.shouldCategorizeGroceryItems.getter();
  (*(v2 + 8))(v4, v1);
  v46 = v8;
  v14 = *(v8 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
  v15 = *(v8 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32);
  sub_10000C36C((v8 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v14);
  v16 = (*(v15 + 432))(v12, v13 & 1, v14, v15);
  v45 = v17;
  v44 = v18;

  v19 = _swiftEmptyArrayStorage;
  v53 = _swiftEmptyArrayStorage;
  v20 = *(v16 + 16);
  if (v20)
  {
    v47 = "$_moveSectionButton";

    v43[1] = v16;
    v21 = (v16 + 42);
    do
    {
      if (*(v21 - 1) == 1)
      {
        v26 = *(v21 - 10);
        v27 = *v21;
        v28 = *(v21 - 2);
        v50 = sub_100003540(0, &qword_10076BA60, UIAction_ptr);
        if (v27)
        {
          v29 = 0x10000;
        }

        else
        {
          v29 = 0;
        }

        v51 = v29 | v51 & 0xFF000000 | v28 | 0x100;
        sub_1002F56AC(v26, v51);
        v52 = v29 | v52 & 0xFF000000 | v28 | 0x100;
        sub_1002F467C(v26, v52);
        v30 = swift_allocObject();
        swift_weakInit();
        v31 = swift_allocObject();
        *(v31 + 16) = v30;
        *(v31 + 24) = v26;
        *(v31 + 32) = v28;
        *(v31 + 33) = 1;
        *(v31 + 34) = v27;
        v32 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        v33 = v32;
        if (v28 && (v28 == 1 || v26 != 1))
        {
          v34 = v48 & 0xFF000000 | v28 | v29 | 0x100;
          v35 = v32;
          v48 = v34;
          sub_1002F56AC(v26, v34);
        }

        else
        {
          v22 = v32;
          v23._object = (v47 | 0x8000000000000000);
          v24._countAndFlagsBits = 0x206F542065766F4DLL;
          v24._object = 0xEC0000007473694CLL;
          v23._countAndFlagsBits = 0xD00000000000005DLL;
          TTRLocalizedString(_:comment:)(v24, v23);
        }

        v25 = String._bridgeToObjectiveC()();

        [v33 setAccessibilityLabel:v25];

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v19 = v53;
      }

      v21 += 16;
      --v20;
    }

    while (v20);
  }

  v36 = static TTRLocalizableStrings.Common.remindersCountText(withCount:isForGroceries:)();
  v38 = v37;

  sub_100003540(0, &unk_10076B890, UIMenu_ptr);
  v39._countAndFlagsBits = v36;
  v39._object = v38;
  v54.value.super.isa = 0;
  v54.is_nil = 0;
  v40.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v39, 0, v54, 0, 0xFFFFFFFFFFFFFFFFLL, v19, v42).super.super.isa;
  swift_unknownObjectRelease();
  return v40.super.super.isa;
}

id sub_1002F50D8(uint64_t a1)
{
  v1 = static TTRCommonAsset.Image.moveToSectionIcon.getter();
  v2 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v1 style:0 target:0 action:0];

  [v2 setEnabled:0];
  v3 = swift_allocObject();
  swift_weakInit();
  v10[4] = sub_1002F6994;
  v10[5] = v3;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10010CA7C;
  v10[3] = &unk_10071EFB8;
  v4 = _Block_copy(v10);

  [v2 _setSecondaryActionsProvider:v4];
  _Block_release(v4);
  v5 = v2;
  v6._countAndFlagsBits = 0x6365532065766F4DLL;
  v6._object = 0xED0000736E6F6974;
  v7._object = 0x8000000100680A20;
  v7._countAndFlagsBits = 0xD000000000000030;
  TTRLocalizedString(_:comment:)(v6, v7);
  v8 = String._bridgeToObjectiveC()();

  [v5 setAccessibilityLabel:v8];

  return v5;
}

uint64_t sub_1002F5278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  v5 = a4();

  return v5;
}

Class sub_1002F52E8()
{
  v0 = sub_100058000(&qword_10077B348, &qword_100639AA0);
  __chkstk_darwin(v0 - 8);
  v2 = &v33 - v1;
  v3 = type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for TTRIRemindersListToolbarBatchMoveToSectionParams(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v33 - v11;
  __chkstk_darwin(v13);
  v15 = &v33 - v14;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v34 = v6;
    v35 = result;
    v36 = v9;
    v17 = *(result + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController);
    v18 = *(result + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController + 8);
    ObjectType = swift_getObjectType();
    v20 = v15;
    v21 = v3;
    v22 = v2;
    v23 = *(v18 + 160);
    v24 = v17;
    v25 = v23(0, ObjectType, v18);

    v27 = *(v35 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
    v26 = *(v35 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32);
    sub_10000C36C((v35 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v27);
    (*(v26 + 440))(v25, v27, v26);
    swift_unknownObjectRelease();
    v28 = v36;

    sub_1002F692C(v12, v20, type metadata accessor for TTRIRemindersListToolbarBatchMoveToSectionParams);
    sub_1002F69C4(v20, v28);
    v29 = *(v4 + 48);
    v30 = 1;
    if (v29(v28, 1, v21) != 1)
    {
      sub_1002F692C(v28, v22, type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration);
      v30 = 0;
    }

    (*(v4 + 56))(v22, v30, 1, v21);
    if (v29(v22, 1, v21) == 1)
    {
      sub_1002F6A28(v20, type metadata accessor for TTRIRemindersListToolbarBatchMoveToSectionParams);
      sub_1000079B4(v22, &qword_10077B348, &qword_100639AA0);
      return 0;
    }

    else
    {
      v31 = v34;
      sub_1002F692C(v22, v34, type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration);
      v32 = sub_100553C24(v31);
      sub_1002F6A28(v31, type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration);
      sub_1002F6A28(v20, type metadata accessor for TTRIRemindersListToolbarBatchMoveToSectionParams);
      return v32;
    }
  }

  return result;
}

uint64_t sub_1002F56AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return static TTRLocalizableStrings.Toolbar.moveItemsString(withCount:)(a1);
  }

  if (a2 == 1)
  {
    return static TTRLocalizableStrings.Toolbar.deleteItemsString(withCount:)(a1);
  }

  if (a1 <= 2)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v4 = 0xE26F542065766F4DLL;
        v6 = 0x8000000100680A20;
        v7 = 0xAA0000000000A680;
      }

      else
      {
        v4 = 0x6574656C6544;
        v6 = 0x8000000100680A20;
        v7 = 0xE600000000000000;
      }
    }

    else
    {
      v4 = 0x2065754420746553;
      v7 = 0xEC00000065746144;
      v6 = 0x8000000100680A20;
    }

    v5 = 0xD000000000000030;
  }

  else if (a1 > 5)
  {
    if (a1 == 6)
    {
      if ((a2 & 0x10000) != 0)
      {
        v9._countAndFlagsBits = 0xD000000000000013;
        v9._object = 0x80000001006809A0;
        v10._countAndFlagsBits = 1734437958;
        v10._object = 0xE400000000000000;
        return TTRLocalizedString(_:comment:)(v10, v9)._countAndFlagsBits;
      }

      v8 = "Assign button in menu";
      v5 = 0xD000000000000015;
      v4 = 0x67616C666E55;
    }

    else
    {
      v8 = "sible in internal build.";
      v5 = 0xD000000000000015;
      v4 = 0x6E6769737341;
    }

    v6 = v8 | 0x8000000000000000;
    v7 = 0xE600000000000000;
  }

  else if ((a1 - 3) >= 2)
  {
    v5 = 0xD000000000000016;
    v4 = 0x67615420646441;
    v6 = 0x80000001006809C0;
    v7 = 0xE700000000000000;
  }

  else
  {
    if ((a2 & 0x10000) != 0)
    {
      v2 = "ion Mark as Incomplete";
      v3 = "Incomplete button in menu";
      v4 = 0xD000000000000011;
      v5 = 0xD000000000000017;
    }

    else
    {
      v2 = "Reminders List Set Custom Tags";
      v3 = "Add Tag button in menu";
      v4 = 0xD000000000000012;
      v5 = 0xD000000000000019;
    }

    v7 = v2 | 0x8000000000000000;
    v6 = v3 | 0x8000000000000000;
  }

  return TTRLocalizedString(_:comment:)(*&v4, *&v5)._countAndFlagsBits;
}

void sub_1002F5884(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v6 = sub_1002F4620();
    sub_1002F5A7C(a3, a4 & 0x101FF, v6);
  }
}

void *sub_1002F5908(uint64_t a1, char a2, void *a3, uint64_t a4, char a5)
{
  if (a2)
  {
    if (a2 != 1)
    {
      if (a1 > 3)
      {
        if (a1 > 5)
        {
          if (a1 == 6)
          {
            result = 0;
            if (a5 == 2 && a4 == 6)
            {
              goto LABEL_7;
            }
          }

          else
          {
            result = 0;
            if (a5 == 2 && a4 == 7)
            {
              goto LABEL_7;
            }
          }
        }

        else if (a1 == 4)
        {
          result = 0;
          if (a5 == 2 && a4 == 4)
          {
            goto LABEL_7;
          }
        }

        else
        {
          result = 0;
          if (a5 == 2 && a4 == 5)
          {
            goto LABEL_7;
          }
        }
      }

      else if (a1 > 1)
      {
        if (a1 == 2)
        {
          result = 0;
          if (a5 == 2 && a4 == 2)
          {
            goto LABEL_7;
          }
        }

        else
        {
          result = 0;
          if (a5 == 2 && a4 == 3)
          {
            goto LABEL_7;
          }
        }
      }

      else
      {
        result = 0;
        if (a1)
        {
          if (a5 == 2 && a4 == 1)
          {
            goto LABEL_7;
          }
        }

        else if (a5 == 2 && !a4)
        {
          goto LABEL_7;
        }
      }

      return result;
    }

    result = 0;
    if (a5 != 1)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if (a5)
    {
      return result;
    }
  }

  if (a1 == a4)
  {
LABEL_7:
    v8 = a3;
    return a3;
  }

  return result;
}

void sub_1002F5A7C(uint64_t a1, int a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRIPopoverAnchor();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002F40A8(v30);
  v10 = v31;
  if (v31)
  {
    v11 = v32;
    sub_10000C36C(v30, v31);
    v12 = (*(v11 + 8))(v10, v11);
    v29 = a3;
    __chkstk_darwin(v12);
    v28[-2] = &v29;
    v13 = sub_10000C108(sub_1000386DC, &v28[-4], v12);

    sub_100004758(v30);
    if (v13)
    {
      static TTRIPopoverAnchor.barButtonItem(_:permittedArrowDirections:)();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v15 = *(Strong + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController);
        v16 = *(Strong + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController + 8);
        v17 = Strong;
        ObjectType = swift_getObjectType();
        v28[0] = a1;
        v19 = *(v16 + 160);
        v20 = v15;
        v21 = v19(1, ObjectType, v16);

        v22 = *(v17 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
        v23 = *(v17 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32);
        sub_10000C36C((v17 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v22);
        (*(v23 + 448))(v21, v28[0], a2 & 0x101FF, v9, v22, v23);
        swift_unknownObjectRelease();
      }

      (*(v7 + 8))(v9, v6);
      return;
    }
  }

  else
  {
    sub_1000079B4(v30, &qword_10077B340, &qword_100639A98);
  }

  if (qword_100767188 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100003E30(v24, qword_10077B248);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "TTRIRemindersListToolbarController#lowLevelPerformAction: unable to determine popoverAnchor", v27, 2u);
  }
}

void sub_1002F5DB0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
    v2 = *(Strong + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32);
    v3 = Strong;
    sub_10000C36C((Strong + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v1);
    sub_100207888(0, v1, v2);
    LODWORD(v1) = UIAccessibilityLayoutChangedNotification;
    v4 = *(v3 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController);
    v5 = *(v3 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController + 8);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 64);
    v8 = v4;
    argument = v7(ObjectType, v5);

    UIAccessibilityPostNotification(v1, argument);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1002F5EE0()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = (result + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter);
    v2 = v1[3];
    v3 = v1[4];
    sub_10000C36C(v1, v2);
    (*(v3 + 920))(v4, v2, v3);
    if (v5)
    {
      sub_10000C36C(v4, v5);
      sub_100537BD4();
      swift_unknownObjectRelease();
      return sub_100004758(v4);
    }

    else
    {
      swift_unknownObjectRelease();
      return sub_1000079B4(v4, &qword_10077B360, &qword_100639AB8);
    }
  }

  return result;
}

uint64_t sub_1002F5FBC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *))
{
  if (a3)
  {

    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  a4(v6);

  return sub_1000079B4(v6, &qword_10076AE40, &qword_10062EE50);
}

uint64_t sub_1002F6058()
{
  sub_10003B788(v0 + 16);

  sub_1002F690C(*(v0 + 48), *(v0 + 56));

  return swift_deallocClassInstance();
}

double sub_1002F60E8(uint64_t a1, __int16 a2)
{
  if (a2 < 0)
  {
  }

  return result;
}

uint64_t sub_1002F6104(uint64_t result, __int16 a2)
{
  if (a2 < 0)
  {
  }

  return v2;
}

uint64_t assignWithCopy for TTRIRemindersListToolbarController.ToolbarConfiguration(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_1002F60E8(*a2, v4);
  v5 = *a1;
  *a1 = v3;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  sub_1002F6104(v5, v6);
  return a1;
}

uint64_t initializeWithTake for TTRIRemindersListToolbarEditingConfiguration(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t assignWithTake for TTRIRemindersListToolbarController.ToolbarConfiguration(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = v3;
  sub_1002F6104(v4, v5);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIRemindersListToolbarController.ToolbarConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFF && *(a1 + 10))
  {
    return (*a1 + 0x3FFF);
  }

  v3 = (*(a1 + 8) & 0xFE | (*(a1 + 8) >> 15) | (*(a1 + 8) >> 1) & 0x3F00) ^ 0x3FFF;
  if (v3 >= 0x3FFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for TTRIRemindersListToolbarController.ToolbarConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x3FFF;
    if (a3 >= 0x3FFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 1) & 0x1FFF) - (a2 << 13);
      *result = 0;
      *(result + 8) = (4 * v3) & 0xFE00 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

uint64_t sub_1002F62CC(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 4);

  return a1;
}

uint64_t *assignWithCopy for TTRIRemindersListToolbarEditingConfiguration(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  return a1;
}

uint64_t *assignWithTake for TTRIRemindersListToolbarEditingConfiguration(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIRemindersListToolbarEditingConfiguration(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIRemindersListToolbarEditingConfiguration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1002F6450()
{
  result = qword_10077B338;
  if (!qword_10077B338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077B338);
  }

  return result;
}

void *sub_1002F64C8(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = v4;
  sub_100003540(0, &qword_10076B800, UIBarButtonItem_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

void sub_1002F6548(uint64_t a1, char a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = *v5;
  sub_100003540(0, &qword_10076B800, UIBarButtonItem_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v8 *a5];
}

BOOL sub_1002F65D4(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (!a2)
  {
    if (!a4)
    {
      return a1 == a3;
    }

    return 0;
  }

  if (a2 == 1)
  {
    if (a4 == 1)
    {
      return a1 == a3;
    }

    return 0;
  }

  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a1 == 6)
      {
        if (a4 != 2 || a3 != 6)
        {
          return 0;
        }
      }

      else if (a4 != 2 || a3 != 7)
      {
        return 0;
      }
    }

    else if (a1 == 4)
    {
      if (a4 != 2 || a3 != 4)
      {
        return 0;
      }
    }

    else if (a4 != 2 || a3 != 5)
    {
      return 0;
    }
  }

  else if (a1 > 1)
  {
    if (a1 == 2)
    {
      if (a4 != 2 || a3 != 2)
      {
        return 0;
      }
    }

    else if (a4 != 2 || a3 != 3)
    {
      return 0;
    }
  }

  else if (a1)
  {
    if (a4 != 2 || a3 != 1)
    {
      return 0;
    }
  }

  else if (a4 != 2 || a3)
  {
    return 0;
  }

  return 1;
}

uint64_t type metadata accessor for TTRIRemindersListToolbarBatchMoveToSectionParams(uint64_t a1)
{
  result = qword_10077B3D8;
  if (!qword_10077B3D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002F6730(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = a4;
  v6 = a2;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1004A1B54(0, v7, 0);
    v10 = _swiftEmptyArrayStorage[2];
    v11 = 2 * v10;
    v12 = (a1 + 40);
    do
    {
      v13 = *(v12 - 1);
      v14 = *v12;
      v15 = _swiftEmptyArrayStorage[3];
      v16 = v10 + 1;
      if (v10 >= v15 >> 1)
      {
        sub_1004A1B54((v15 > 1), v10 + 1, 1);
      }

      v12 += 16;
      _swiftEmptyArrayStorage[2] = v16;
      v17 = &_swiftEmptyArrayStorage[v11];
      v17[4] = v13;
      *(v17 + 40) = v14;
      v11 += 2;
      v10 = v16;
      --v7;
    }

    while (v7);
    v4 = a4;
    v6 = a2;
  }

  v18 = *(a3 + 16);
  if (v18)
  {
    sub_1004A1B54(0, v18, 0);
    v19 = _swiftEmptyArrayStorage[2];
    v20 = 2 * v19;
    v21 = (a3 + 40);
    do
    {
      v22 = *(v21 - 1);
      v23 = *v21;
      v24 = _swiftEmptyArrayStorage[3];
      v25 = v19 + 1;
      if (v19 >= v24 >> 1)
      {
        sub_1004A1B54((v24 > 1), v19 + 1, 1);
      }

      v21 += 16;
      _swiftEmptyArrayStorage[2] = v25;
      v26 = &_swiftEmptyArrayStorage[v20];
      v26[4] = v22;
      *(v26 + 40) = v23;
      v20 += 2;
      v19 = v25;
      --v18;
    }

    while (v18);
  }

  v27 = sub_1001265AC(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage);

  return v27 & ~(v6 ^ v4) & 1;
}

double sub_1002F68F8(uint64_t a1, int a2)
{
  if ((~a2 & 0xFEFE) != 0)
  {
    return sub_1002F60E8(a1, a2);
  }

  return result;
}

uint64_t sub_1002F690C(uint64_t result, int a2)
{
  if ((~a2 & 0xFEFE) != 0)
  {
    return sub_1002F6104(result, a2);
  }

  return result;
}

uint64_t sub_1002F692C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002F69C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIRemindersListToolbarBatchMoveToSectionParams(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002F6A28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1002F6AB8(uint64_t a1)
{
  if (*(v1 + 33))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *(v1 + 32);
  if (*(v1 + 34))
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  sub_1002F5884(a1, *(v1 + 16), *(v1 + 24), v3 | v4);
}

uint64_t sub_1002F6AF8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, *(a1 + 8), *(a1 + 16));
  *a2 = result;
  return result;
}

unint64_t sub_1002F6B48()
{
  result = qword_10077B358;
  if (!qword_10077B358)
  {
    sub_10005D20C(&qword_10077B350, &unk_100639AA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077B358);
  }

  return result;
}

char *sub_1002F6BCC(char *a1, char *a2, uint64_t a3)
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
  v7 = type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0);
  v8 = *(v7 - 1);
  if (!(*(v8 + 48))(a2, 1, v7))
  {
    v12 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v12;
    v13 = *(a2 + 2);
    v14 = a2[24];

    sub_100263EE8(v13, v14);
    *(a1 + 2) = v13;
    a1[24] = v14;
    *(a1 + 25) = *(a2 + 25);
    v15 = v7[9];
    v16 = type metadata accessor for TTRRemindersListLayout();
    (*(*(v16 - 8) + 16))(&a1[v15], &a2[v15], v16);
    *&a1[v7[10]] = *&a2[v7[10]];
    v17 = v7[11];
    v18 = &a1[v17];
    v19 = &a2[v17];
    v20 = *(v19 + 1);
    *v18 = *v19;
    *(v18 + 1) = v20;
    v21 = v7[12];
    v22 = &a1[v21];
    v23 = &a2[v21];
    v24 = *&a2[v21];

    if (v24)
    {
      v25 = *(v23 + 1);
      *v22 = v24;
      *(v22 + 1) = v25;
    }

    else
    {
      *v22 = *v23;
    }

    v26 = v7[13];
    v27 = &a1[v26];
    v28 = &a2[v26];
    if (*v28)
    {
      v29 = *(v28 + 1);
      *v27 = *v28;
      *(v27 + 1) = v29;
    }

    else
    {
      *v27 = *v28;
    }

    (*(v8 + 56))(a1, 0, 1, v7);
    return a1;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

double sub_1002F6E14(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0);
  if (!(*(*(v2 - 1) + 48))(a1, 1, v2))
  {

    sub_100263FE4(*(a1 + 16), *(a1 + 24));
    v4 = v2[9];
    v5 = type metadata accessor for TTRRemindersListLayout();
    (*(*(v5 - 8) + 8))(a1 + v4, v5);

    if (*(a1 + v2[12]))
    {
    }

    if (*(a1 + v2[13]))
    {
    }
  }

  return result;
}

uint64_t *sub_1002F6F34(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0);
  v7 = *(v6 - 1);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v10 = a2[1];
    *a1 = *a2;
    a1[1] = v10;
    v11 = a2[2];
    v12 = *(a2 + 24);

    sub_100263EE8(v11, v12);
    a1[2] = v11;
    *(a1 + 24) = v12;
    *(a1 + 25) = *(a2 + 25);
    v13 = v6[9];
    v14 = type metadata accessor for TTRRemindersListLayout();
    (*(*(v14 - 8) + 16))(a1 + v13, a2 + v13, v14);
    *(a1 + v6[10]) = *(a2 + v6[10]);
    v15 = v6[11];
    v16 = (a1 + v15);
    v17 = (a2 + v15);
    v18 = v17[1];
    *v16 = *v17;
    v16[1] = v18;
    v19 = v6[12];
    v20 = (a1 + v19);
    v21 = a2 + v19;
    v22 = *(a2 + v19);

    if (v22)
    {
      v23 = *(v21 + 1);
      *v20 = v22;
      v20[1] = v23;
    }

    else
    {
      *v20 = *v21;
    }

    v24 = v6[13];
    v25 = (a1 + v24);
    v26 = (a2 + v24);
    if (*v26)
    {
      v27 = v26[1];
      *v25 = *v26;
      v25[1] = v27;
    }

    else
    {
      *v25 = *v26;
    }

    (*(v7 + 56))(a1, 0, 1, v6);
    return a1;
  }
}

char *sub_1002F7140(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0);
  v7 = *(v6 - 1);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (v10)
    {
      sub_1002F6A28(a1, type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration);
      goto LABEL_7;
    }

    *a1 = *a2;

    *(a1 + 1) = *(a2 + 1);

    v26 = *(a2 + 2);
    v27 = a2[24];
    sub_100263EE8(v26, v27);
    v28 = *(a1 + 2);
    *(a1 + 2) = v26;
    v29 = a1[24];
    a1[24] = v27;
    sub_100263FE4(v28, v29);
    a1[25] = a2[25];
    a1[26] = a2[26];
    v30 = v6[9];
    v31 = type metadata accessor for TTRRemindersListLayout();
    (*(*(v31 - 8) + 24))(&a1[v30], &a2[v30], v31);
    *&a1[v6[10]] = *&a2[v6[10]];
    v32 = v6[11];
    v33 = &a1[v32];
    v34 = &a2[v32];
    v35 = *(v34 + 1);
    *v33 = *v34;
    *(v33 + 1) = v35;

    v36 = v6[12];
    v37 = &a1[v36];
    v38 = &a2[v36];
    v39 = *&a1[v36];
    v40 = *&a2[v36];
    if (v39)
    {
      if (v40)
      {
        v41 = *(v38 + 1);
        *v37 = v40;
        *(v37 + 1) = v41;

        goto LABEL_23;
      }
    }

    else if (v40)
    {
      v46 = *(v38 + 1);
      *v37 = v40;
      *(v37 + 1) = v46;

      goto LABEL_23;
    }

    *v37 = *v38;
LABEL_23:
    v47 = v6[13];
    v48 = &a1[v47];
    v49 = &a2[v47];
    v50 = *&a1[v47];
    v51 = *v49;
    if (v50)
    {
      if (v51)
      {
        v52 = *(v49 + 1);
        *v48 = v51;
        *(v48 + 1) = v52;

        return a1;
      }
    }

    else if (v51)
    {
      v53 = *(v49 + 1);
      *v48 = v51;
      *(v48 + 1) = v53;

      return a1;
    }

    *v48 = *v49;
    return a1;
  }

  if (!v10)
  {
    *a1 = *a2;
    *(a1 + 1) = *(a2 + 1);
    v11 = *(a2 + 2);
    v12 = a2[24];

    sub_100263EE8(v11, v12);
    *(a1 + 2) = v11;
    a1[24] = v12;
    a1[25] = a2[25];
    a1[26] = a2[26];
    v13 = v6[9];
    v14 = type metadata accessor for TTRRemindersListLayout();
    (*(*(v14 - 8) + 16))(&a1[v13], &a2[v13], v14);
    *&a1[v6[10]] = *&a2[v6[10]];
    v15 = v6[11];
    v16 = &a1[v15];
    v17 = &a2[v15];
    v18 = *(v17 + 1);
    *v16 = *v17;
    *(v16 + 1) = v18;
    v19 = v6[12];
    v20 = &a1[v19];
    v21 = &a2[v19];
    v22 = *&a2[v19];

    if (v22)
    {
      v23 = *(v21 + 1);
      *v20 = v22;
      *(v20 + 1) = v23;
    }

    else
    {
      *v20 = *v21;
    }

    v42 = v6[13];
    v43 = &a1[v42];
    v44 = &a2[v42];
    if (*v44)
    {
      v45 = *(v44 + 1);
      *v43 = *v44;
      *(v43 + 1) = v45;
    }

    else
    {
      *v43 = *v44;
    }

    (*(v7 + 56))(a1, 0, 1, v6);
    return a1;
  }

LABEL_7:
  v24 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v24);
}

_OWORD *sub_1002F7530(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0);
  v7 = *(v6 - 1);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    *a1 = *a2;
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 25) = *(a2 + 25);
    v10 = v6[9];
    v11 = type metadata accessor for TTRRemindersListLayout();
    (*(*(v11 - 8) + 32))(a1 + v10, a2 + v10, v11);
    *(a1 + v6[10]) = *(a2 + v6[10]);
    *(a1 + v6[11]) = *(a2 + v6[11]);
    *(a1 + v6[12]) = *(a2 + v6[12]);
    *(a1 + v6[13]) = *(a2 + v6[13]);
    (*(v7 + 56))(a1, 0, 1, v6);
    return a1;
  }
}

char *sub_1002F76CC(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0);
  v7 = *(v6 - 1);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (v10)
    {
      sub_1002F6A28(a1, type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration);
      goto LABEL_7;
    }

    *a1 = *a2;

    *(a1 + 1) = *(a2 + 1);

    v15 = a2[24];
    v16 = *(a1 + 2);
    *(a1 + 2) = *(a2 + 2);
    v17 = a1[24];
    a1[24] = v15;
    sub_100263FE4(v16, v17);
    a1[25] = a2[25];
    a1[26] = a2[26];
    v18 = v6[9];
    v19 = type metadata accessor for TTRRemindersListLayout();
    (*(*(v19 - 8) + 40))(&a1[v18], &a2[v18], v19);
    *&a1[v6[10]] = *&a2[v6[10]];
    *&a1[v6[11]] = *&a2[v6[11]];

    v20 = v6[12];
    v21 = &a1[v20];
    v22 = &a2[v20];
    v23 = *&a1[v20];
    v24 = *&a2[v20];
    if (v23)
    {
      if (v24)
      {
        v25 = *(v22 + 1);
        *v21 = v24;
        *(v21 + 1) = v25;

        goto LABEL_17;
      }
    }

    else if (v24)
    {
      v26 = *(v22 + 1);
      *v21 = v24;
      *(v21 + 1) = v26;
      goto LABEL_17;
    }

    *v21 = *v22;
LABEL_17:
    v27 = v6[13];
    v28 = &a1[v27];
    v29 = &a2[v27];
    v30 = *&a1[v27];
    v31 = *v29;
    if (v30)
    {
      if (v31)
      {
        v32 = *(v29 + 1);
        *v28 = v31;
        *(v28 + 1) = v32;

        return a1;
      }
    }

    else if (v31)
    {
      v33 = *(v29 + 1);
      *v28 = v31;
      *(v28 + 1) = v33;
      return a1;
    }

    *v28 = *v29;
    return a1;
  }

  if (!v10)
  {
    *a1 = *a2;
    *(a1 + 2) = *(a2 + 2);
    a1[24] = a2[24];
    *(a1 + 25) = *(a2 + 25);
    v11 = v6[9];
    v12 = type metadata accessor for TTRRemindersListLayout();
    (*(*(v12 - 8) + 32))(&a1[v11], &a2[v11], v12);
    *&a1[v6[10]] = *&a2[v6[10]];
    *&a1[v6[11]] = *&a2[v6[11]];
    *&a1[v6[12]] = *&a2[v6[12]];
    *&a1[v6[13]] = *&a2[v6[13]];
    (*(v7 + 56))(a1, 0, 1, v6);
    return a1;
  }

LABEL_7:
  v14 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v14);
}

uint64_t sub_1002F7A30(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0);
  v3 = *(*(v2 - 8) + 48);

  return v3(a1, 1, v2);
}

uint64_t sub_1002F7A98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, 1, v4);
}

uint64_t sub_1002F7B08(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(319);
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

uint64_t sub_1002F7B80(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *sub_1002F7C1C(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if (v6 <= 7 && (v5 + 2) <= 0x18 && (*(v4 + 80) & 0x100000) == 0)
  {
    (*(v4 + 16))(a1);
    v11 = v3 + v5;
    *v11 = *(a2 + v5);
    v11[1] = *(a2 + v5 + 1);
  }

  else
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v6 + 16) & ~v6));
  }

  return v3;
}

uint64_t sub_1002F7D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48);
  v7 = (v6 + a1);
  v8 = (v6 + a2);
  *v7 = *v8;
  v7[1] = v8[1];
  return a1;
}

uint64_t sub_1002F7DA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40);
  v7 = (v6 + a1);
  v8 = (v6 + a2);
  *v7 = *v8;
  v7[1] = v8[1];
  return a1;
}

uint64_t sub_1002F7E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32);
  v7 = (v6 + a1);
  v8 = (v6 + a2);
  *v7 = *v8;
  v7[1] = v8[1];
  return a1;
}

uint64_t sub_1002F7E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24);
  v7 = (v6 + a1);
  v8 = (v6 + a2);
  *v7 = *v8;
  v7[1] = v8[1];
  return a1;
}

uint64_t sub_1002F7F08(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_25;
  }

  v9 = v6 + 2;
  v10 = 8 * (v6 + 2);
  if ((v6 + 2) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
      }

      if (v9)
      {
        if (v9 > 3)
        {
          LODWORD(v9) = 4;
        }

        if (v9 > 2)
        {
          if (v9 == 3)
          {
            LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v9) = *a1;
          }
        }

        else if (v9 == 1)
        {
          LODWORD(v9) = *a1;
        }

        else
        {
          LODWORD(v9) = *a1;
        }
      }

      return v7 + (v9 | v13) + 1;
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))();
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
}

unsigned int *sub_1002F807C(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 2;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFE)
      {
        *(result + v8) = a2 + 1;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 2);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -2)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

uint64_t sub_1002F82D8(uint64_t a1)
{
  v3 = sub_100058000(&qword_100771588, &qword_1006388F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = OBJC_IVAR____TtC9Reminders37TTRIReminderCellAutoCompletePresenter_viewModel;
  swift_beginAccess();
  sub_1002F8814(a1, v1 + v6);
  swift_endAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100186D64(v1 + v6, v5);
    sub_100186640(v5);
    swift_unknownObjectRelease();
    sub_100186DD4(a1);
    v7 = v5;
  }

  else
  {
    v7 = a1;
  }

  return sub_100186DD4(v7);
}

uint64_t sub_1002F83D4()
{
  sub_10003B788(v0 + 16);
  sub_10003B788(v0 + 32);
  sub_100186DD4(v0 + OBJC_IVAR____TtC9Reminders37TTRIReminderCellAutoCompletePresenter_viewModel);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIReminderCellAutoCompletePresenter(uint64_t a1)
{
  result = qword_10077B490;
  if (!qword_10077B490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002F849C(uint64_t a1, __n128 a2)
{
  sub_1002F8538(319, a2);
  if (v2 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1002F8538(uint64_t a1, __n128 a2)
{
  if (!qword_10077B4A0)
  {
    type metadata accessor for TTRIReminderCellAutoCompleteViewModel(255);
    v2 = type metadata accessor for Optional();
    if (!v3)
    {
      atomic_store(v2, &qword_10077B4A0);
    }
  }
}

uint64_t sub_1002F8590(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC9Reminders42TTRIReminderCellAutoCompleteViewController_autoCompleteStack);
    if (v3)
    {
      v4 = v3;
      v5 = TTRIRemindersListCellAutoCompleteSuggestionsStackView.handleIfNecessary(_:for:)();
    }

    else
    {
      v5 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1002F8614(uint64_t a1)
{
  v1 = sub_100058000(&qword_10078A3B0, &unk_100638720);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - v3;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_titleModule;
    swift_beginAccess();
    if (!(*(v2 + 48))(v6 + v7, 1, v1))
    {
      (*(v2 + 16))(v4, v6 + v7, v1);
      TTRRemindersListInCellModule.interface.getter();
      (*(v2 + 8))(v4, v1);
      swift_getObjectType();
      dispatch thunk of TTRIReminderCellTitleModuleInterface.requestApply(textEditingSuggestion:)();
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_1002F8794(uint64_t a1)
{
  result = sub_1002F87BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1002F87BC()
{
  result = qword_10077B530;
  if (!qword_10077B530)
  {
    type metadata accessor for TTRIReminderCellAutoCompletePresenter(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077B530);
  }

  return result;
}

uint64_t sub_1002F8814(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100771588, &qword_1006388F0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002F8884@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  v3 = v2[5];
  v4 = type metadata accessor for TTRReminderListCompletionBehavior.AlertContents();
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = enum case for TTRReminderListCompletionBehavior.disallowed(_:);
  v6 = type metadata accessor for TTRReminderListCompletionBehavior();
  result = (*(*(v6 - 8) + 104))(&a1[v3], v5, v6);
  *a1 = 0;
  a1[v2[6]] = 1;
  a1[v2[7]] = 1;
  a1[v2[8]] = 1;
  a1[v2[9]] = 1;
  a1[v2[10]] = 0;
  a1[v2[11]] = 1;
  a1[v2[12]] = 0;
  a1[v2[13]] = 0;
  return result;
}

uint64_t sub_1002F899C()
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

uint64_t sub_1002F8AF8()
{
  v0 = type metadata accessor for TTRUserDefaults.ShowingLargeAttachmentsType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRUserDefaults();
  v4 = static TTRUserDefaults.appUserDefaults.getter();
  (*(v1 + 104))(v3, enum case for TTRUserDefaults.ShowingLargeAttachmentsType.siriFoundInApps(_:), v0);
  v5 = TTRUserDefaults.showingLargeAttachments(forType:)();

  (*(v1 + 8))(v3, v0);
  return v5 & 1;
}

uint64_t sub_1002F8C08(uint64_t a1)
{
  v1 = type metadata accessor for TTRUserDefaults.ShowingLargeAttachmentsType();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRUserDefaults();
  v5 = static TTRUserDefaults.appUserDefaults.getter();
  (*(v2 + 104))(v4, enum case for TTRUserDefaults.ShowingLargeAttachmentsType.siriFoundInApps(_:), v1);
  TTRUserDefaults.setShowingLargeAttachments(value:forType:)();

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1002F8D18()
{
  v0 = type metadata accessor for TTRUserActivityListPayload.State();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = enum case for TTRListType.PredefinedSmartListType.siriFoundInApps(_:);
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

uint64_t sub_1002F8E6C()
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
  sub_100070538();
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
  v22 = enum case for TTRListType.PredefinedSmartListType.siriFoundInApps(_:);
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

uint64_t sub_1002F9294@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v1 = type metadata accessor for TTRRemindersListViewModel.ListInfo.MacOS();
  __chkstk_darwin(v1 - 8);
  v41 = v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TTRRemindersListViewModel.ListInfo.IOS();
  __chkstk_darwin(v3 - 8);
  v40 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&qword_1007693B0, &unk_100631DC0);
  __chkstk_darwin(v5 - 8);
  v39 = v32 - v6;
  v7 = sub_100058000(&qword_1007693B8, &unk_10062DEC0);
  __chkstk_darwin(v7 - 8);
  v36 = v32 - v8;
  v34 = type metadata accessor for TTRRemindersListViewModel.SupportsEditableSections();
  v9 = *(v34 - 8);
  __chkstk_darwin(v34);
  v43 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRRemindersListSectionMenuCapabilities();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100058000(&unk_100780980, &unk_100631DD0);
  __chkstk_darwin(v15 - 8);
  v17 = v32 - v16;
  v18 = sub_100058000(&unk_100775640, &unk_10062DED0);
  __chkstk_darwin(v18 - 8);
  v20 = v32 - v19;
  v21 = enum case for TTRListType.PredefinedSmartListType.siriFoundInApps(_:);
  v22 = type metadata accessor for TTRListType.PredefinedSmartListType();
  (*(*(v22 - 8) + 104))(v20, v21, v22);
  v23 = enum case for TTRListType.predefinedSmartList(_:);
  v24 = type metadata accessor for TTRListType();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v20, v23, v24);
  v26 = *(v25 + 56);
  v37 = v20;
  v26(v20, 0, 1, v24);
  v32[1] = REMSmartListType.title.getter();
  v35 = static TTRListColors.SmartList.siriFoundInApps.getter();
  v27 = type metadata accessor for TTRRemindersListViewModel.ListSharingInfo();
  v28 = *(*(v27 - 8) + 56);
  v38 = v17;
  v28(v17, 1, 1, v27);
  swift_getObjectType();
  if (dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter())
  {
    swift_unknownObjectRelease();
  }

  TTRRemindersListSectionMenuCapabilities.init()();
  v33 = TTRRemindersListSectionMenuCapabilities.canSupportAddSection.getter();
  (*(v12 + 8))(v14, v11);
  if (dispatch thunk of TTRRemindersListDataModelSourceBaseType.deleteCompletedContext.getter())
  {
    swift_unknownObjectRelease();
  }

  (*(v9 + 104))(v43, enum case for TTRRemindersListViewModel.SupportsEditableSections.unsupported(_:), v34);
  dispatch thunk of TTRRemindersListDataModelSourceBaseType.printingDataModelSource.getter();
  sub_1000079B4(v44, &qword_1007693C0, &unk_100631DE0);
  if (dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter())
  {
    swift_getObjectType();
    dispatch thunk of TTRRemindersListDataModelSourceShowCompletedContextType.showCompleted.getter();
    swift_unknownObjectRelease();
  }

  v29 = type metadata accessor for TTRRemindersListViewModel.HashtagsState();
  (*(*(v29 - 8) + 56))(v36, 1, 1, v29);
  v30 = type metadata accessor for TTRTemplatePublicLinkData();
  (*(*(v30 - 8) + 56))(v39, 1, 1, v30);
  TTRRemindersListViewModel.ListInfo.IOS.init(showsActionMenuButton:hasBottomInsetForPencilInput:usesFlatDiffableSnapshot_workaroundRdar135908527:)();
  TTRRemindersListViewModel.ListInfo.MacOS.init(wantsTopShadow:)();
  return TTRRemindersListViewModel.ListInfo.init(listType:name:color:reminderCount:sharingInfo:canCreateNewReminder:canToggleCompletedReminderVisbility:canAddSection:canClearCompletedReminders:canSaveAsTemplate:supportsEditableSections:canBePrinted:completedRemindersShown:hasDefaultNewReminderButton:completedRemindersCount:canBeDeleted:collapsedStatesAutosaveName:canCreateCustomSmartListForHashtagsState:hashtagsStateToShow:templateStatus:isOriginOfExistingTemplate:isPublicTemplatePreview:shouldCategorizeGroceryItems:shouldAutoCategorizeItems:isRecentlyDeletedList:iOS:macOS:)();
}

uint64_t sub_1002F9930()
{
  sub_10056FD38();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRShowSiriFoundInAppsViewModelSource(uint64_t a1)
{
  result = qword_10077B560;
  if (!qword_10077B560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1002F9A14()
{
  result = qword_10077BAB8;
  if (!qword_10077BAB8)
  {
    type metadata accessor for TTRShowSiriFoundInAppsViewModelSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077BAB8);
  }

  return result;
}

uint64_t sub_1002F9A6C(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v48 = a1;
  v2 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v2 - 8);
  v50 = &v41 - v3;
  v4 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v4 - 8);
  v46 = &v41 - v5;
  v49 = type metadata accessor for TTRRemindersListTreeViewModel.Section();
  v47 = *(v49 - 8);
  v54 = v47;
  __chkstk_darwin(v49);
  v53 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&unk_10076B050, &unk_100631DF0);
  __chkstk_darwin(v7 - 8);
  v9 = &v41 - v8;
  v10 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v44 = v14;
  v45 = *(v14 - 8);
  v15 = v45;
  __chkstk_darwin(v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v52 = &v41 - v19;
  v43 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002F9294(v21);
  v22 = enum case for TTRRemindersListViewModel.SectionID.NamedID.siriFoundInAppsSection(_:);
  v23 = type metadata accessor for TTRRemindersListViewModel.SectionID.NamedID();
  (*(*(v23 - 8) + 104))(v13, v22, v23);
  (*(v11 + 104))(v13, enum case for TTRRemindersListViewModel.SectionID.named(_:), v10);
  v24 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
  (*(*(v24 - 8) + 56))(v9, 1, 1, v24);
  v25 = v52;
  TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
  (*(v15 + 16))(v17, v25, v14);
  REMRemindersListDataView.FlatModel.reminders.getter();
  v26 = v53;
  TTRRemindersListTreeViewModel.Section.init(header:reminders:isDroppedWhenEmpty:)();
  v27 = v42;
  v28 = v46;
  v29 = v43;
  (*(v42 + 16))(v46, v21, v43);
  v30 = v27;
  (*(v27 + 56))(v28, 0, 1, v29);
  sub_100058000(&qword_100770900, &qword_100632FD0);
  v31 = v54;
  v32 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_10062D400;
  v34 = v49;
  (*(v31 + 16))(v33 + v32, v26, v49);
  v35 = type metadata accessor for TTRRemindersListObjectIDOnlyReminderIDProvider();
  v36 = static TTRRemindersListReminderIDProviding<>.uniqueWithinTree.getter();
  v37 = type metadata accessor for TTRRemindersListViewModel.Item();
  v38 = v50;
  (*(*(v37 - 8) + 56))(v50, 1, 1, v37);
  v57[3] = v35;
  v57[4] = &protocol witness table for TTRRemindersListObjectIDOnlyReminderIDProvider;
  v57[0] = v36;
  sub_10000B0D8(v57, v56);
  v39 = swift_allocObject();
  *(v39 + 16) = v33;
  sub_100005FD0(v56, v39 + 24);
  *(v39 + 64) = v55;

  sub_100586238(1, v28, sub_100070528, v39, v51, 0, v38);

  sub_1000079B4(v38, &qword_100772140, &qword_10062D9F0);
  sub_1000079B4(v28, &unk_10078A380, &qword_10062DE60);
  (*(v54 + 8))(v53, v34);
  (*(v45 + 8))(v52, v44);
  (*(v30 + 8))(v21, v29);

  return sub_100004758(v57);
}

uint64_t sub_1002FA140()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10077BAC0);
  v1 = sub_100003E30(v0, qword_10077BAC0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002FA208()
{
  v0 = type metadata accessor for TTRListOrCustomSmartList();
  __chkstk_darwin(v0 - 8);
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_5;
  }

  type metadata accessor for TTRITemplateSavingViewController();
  if ((sub_10037A688() & 1) == 0)
  {
    swift_unknownObjectRelease();
LABEL_5:
    swift_getObjectType();
    dispatch thunk of TTRTemplateSavingInteractorType.templateName.getter();
    String.validatedListName()();
    goto LABEL_6;
  }

  sub_10037A6EC();
  String.validatedListName()();
  swift_unknownObjectRelease();
LABEL_6:

  swift_getObjectType();
  dispatch thunk of TTRTemplateSavingInteractorType.sourceList.getter();
  dispatch thunk of TTRTemplateSavingInteractorType.templateName.getter();
  dispatch thunk of TTRTemplateSavingInteractorType.templateConfiguration.getter();
  dispatch thunk of TTRTemplateSavingInteractorType.completedReminderCount.getter();
  return TTRTemplateSavingViewModel.init(sourceList:name:templateConfiguration:completedReminderCount:allowsCommit:)();
}

uint64_t sub_1002FA3CC()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for TTRITemplateSavingViewController();
    if (sub_10037A688())
    {
      v0 = sub_10037A6EC();
      v2 = v1;
      swift_getObjectType();
      if (v0 == dispatch thunk of TTRTemplateSavingInteractorType.templateName.getter() && v2 == v3)
      {
        swift_unknownObjectRelease();
      }

      else
      {
        v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
        swift_unknownObjectRelease();

        if ((v5 & 1) == 0)
        {
          return 1;
        }
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  swift_getObjectType();
  return dispatch thunk of TTRTemplateSavingInteractorType.hasUncommittedChanges.getter() & 1;
}

void sub_1002FA524(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_100767190 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003E30(v6, qword_10077BAC0);
  v7 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44("Save as Template Change Name", 28, 2, v7);

  static TTRLocalizableStrings.UndoAction.renameTemplate.getter();
  v8 = objc_opt_self();
  v9 = String._bridgeToObjectiveC()();

  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = a1;
  v10[4] = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1002FB264;
  *(v11 + 24) = v10;
  v14[4] = sub_100068444;
  v14[5] = v11;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_100026440;
  v14[3] = &unk_10071F2C0;
  v12 = _Block_copy(v14);

  [v8 withActionName:v9 block:v12];

  _Block_release(v12);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else
  {
    v13._object = 0x8000000100679110;
    v13._countAndFlagsBits = 0xD000000000000019;
    TTRMainActorDeferredAction.scheduleNextRunLoop(reason:)(v13);
  }
}

void sub_1002FA774(char a1)
{
  v2 = v1;
  if (qword_100767190 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003E30(v4, qword_10077BAC0);
  v5 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44("Save as Template Change Includes Completed", 42, 2, v5);

  static TTRLocalizableStrings.UndoAction.changeTemplate.getter();
  v6 = objc_opt_self();
  v7 = String._bridgeToObjectiveC()();

  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = a1 & 1;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1002FB210;
  *(v9 + 24) = v8;
  v12[4] = sub_100026410;
  v12[5] = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100026440;
  v12[3] = &unk_10071F248;
  v10 = _Block_copy(v12);

  [v6 withActionName:v7 block:v10];

  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void sub_1002FA994(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRIPopoverAnchor();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100767190 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003E30(v8, qword_10077BAC0);
  v9 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44("Save as Template Cancel", 23, 2, v9);

  if (sub_1002FA3CC())
  {
    v10._countAndFlagsBits = 0xD000000000000033;
    v10._object = 0x8000000100680BB0;
    v11._object = 0x8000000100680BF0;
    v11._countAndFlagsBits = 0xD000000000000026;
    TTRLocalizedString(_:comment:)(v10, v11);
    v12 = String._bridgeToObjectiveC()();

    v13 = [objc_opt_self() alertControllerWithTitle:0 message:v12 preferredStyle:0];

    static TTRLocalizableStrings.Common.alertDiscardChangesButton.getter();
    v14 = swift_allocObject();
    v29 = a1;
    v15 = v14;
    swift_weakInit();

    v16 = String._bridgeToObjectiveC()();

    aBlock[4] = sub_1002FB2C0;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001762CC;
    aBlock[3] = &unk_10071F310;
    v17 = _Block_copy(aBlock);

    v18 = objc_opt_self();
    v28 = v4;
    v19 = [v18 actionWithTitle:v16 style:2 handler:v17];
    _Block_release(v17);

    [v13 addAction:v19];
    static TTRLocalizableStrings.Common.alertCancelButton.getter();
    v20 = String._bridgeToObjectiveC()();

    v21 = [v18 actionWithTitle:v20 style:1 handler:0];

    [v13 addAction:v21];
    static TTRIPopoverAnchor.barButtonItem(_:permittedArrowDirections:)();
    UIViewController.setupForAdaptivePopoverPresentation(anchoredAt:)();
    (*(v5 + 8))(v7, v28);
    sub_10000C36C((v2 + OBJC_IVAR____TtC9Reminders27TTRITemplateSavingPresenter_router), *(v2 + OBJC_IVAR____TtC9Reminders27TTRITemplateSavingPresenter_router + 24));
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v23 = Strong;
      [Strong presentViewController:v13 animated:1 completion:0];
    }
  }

  else
  {
    sub_10000C36C((v1 + OBJC_IVAR____TtC9Reminders27TTRITemplateSavingPresenter_router), *(v1 + OBJC_IVAR____TtC9Reminders27TTRITemplateSavingPresenter_router + 24));
    v24 = swift_unknownObjectWeakLoadStrong();
    if (v24)
    {
      v29 = v24;
      v25 = [v24 presentingViewController];
      if (v25)
      {
        v26 = v25;
        [v25 dismissViewControllerAnimated:1 completion:0];
      }

      v27 = v29;
    }
  }
}

uint64_t sub_1002FADE4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10000B0D8(result + OBJC_IVAR____TtC9Reminders27TTRITemplateSavingPresenter_router, v7);

    sub_10000C36C(v7, v7[3]);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = [Strong presentingViewController];
      if (v5)
      {
        v6 = v5;
        [v5 dismissViewControllerAnimated:1 completion:0];
      }
    }

    return sub_100004758(v7);
  }

  return result;
}

uint64_t sub_1002FAEAC()
{
  sub_10003B788(v0 + 16);
  sub_10003B788(v0 + 32);
  v1 = OBJC_IVAR____TtC9Reminders27TTRITemplateSavingPresenter_viewModel;
  v2 = type metadata accessor for TTRTemplateSavingViewModel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  sub_100004758((v0 + OBJC_IVAR____TtC9Reminders27TTRITemplateSavingPresenter_router));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRITemplateSavingPresenter(uint64_t a1)
{
  result = qword_10077BB20;
  if (!qword_10077BB20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002FAFEC(uint64_t a1)
{
  result = type metadata accessor for TTRTemplateSavingViewModel();
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

void sub_1002FB0B8()
{
  v0._object = 0x8000000100679110;
  v0._countAndFlagsBits = 0xD000000000000019;
  TTRMainActorDeferredAction.scheduleNextRunLoop(reason:)(v0);
}

uint64_t sub_1002FB100()
{
  v1 = type metadata accessor for TTRTemplateSavingViewModel();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002FA208();
  v5 = OBJC_IVAR____TtC9Reminders27TTRITemplateSavingPresenter_viewModel;
  swift_beginAccess();
  (*(v2 + 40))(v0 + v5, v4, v1);
  swift_endAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10037A37C();
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1002FB2D8(void *a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC9Reminders22TTRIRootViewController_detailNavigationController) transitionCoordinator];
  if (v2)
  {
    v3 = v2;
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = a1;
    aBlock[4] = sub_1002FC7E8;
    aBlock[5] = v5;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002FB78C;
    aBlock[3] = &unk_10071F418;
    v6 = _Block_copy(aBlock);
    v7 = a1;

    [v3 animateAlongsideTransition:0 completion:v6];

    _Block_release(v6);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1002FB4A4(a1);
  }
}

void sub_1002FB448(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1002FB4A4(a3);
  }
}

void sub_1002FB4A4(void *a1)
{
  v2 = v1;
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for TTRIRootViewEmptyViewController()) init];
  }

  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10062D420;
  *(v5 + 32) = v4;
  v6 = *(v2 + OBJC_IVAR____TtC9Reminders22TTRIRootViewController_detailNavigationController);
  v7 = a1;
  v8 = v4;
  v9 = [v6 viewControllers];
  sub_100003540(0, &qword_10076AD28, UIViewController_ptr);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v9) = sub_100126778(v10, v5);

  if (v9)
  {
  }

  else
  {
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v6 setViewControllers:isa];

    v12 = [v6 viewControllers];
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v12) = sub_100126778(v13, v5);

    if ((v12 & 1) == 0)
    {
      if (qword_100767198 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_100003E30(v14, qword_10077BBE0);
      v15 = v8;
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 138412290;
        *(v18 + 4) = v15;
        *v19 = v15;
        v20 = v15;
        _os_log_impl(&_mh_execute_header, v16, v17, "Failed to set detailViewController because there's an existing transition or presentation occuring {detailViewController: %@}", v18, 0xCu);
        sub_1000079B4(v19, &unk_10076DF80, &qword_10062F730);
      }
    }
  }

  sub_1002FB7EC(1);
  v21 = sub_100341598();
  sub_10001A06C(v21);
}

uint64_t sub_1002FB78C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_1002FB7EC(char a1)
{
  if ([v1 isCollapsed] && (v3 = *&v1[OBJC_IVAR____TtC9Reminders22TTRIRootViewController_mainNavigationController], v4 = objc_msgSend(v3, "viewControllers"), sub_100003540(0, &qword_10076AD28, UIViewController_ptr), v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v4, v6 = *&v1[OBJC_IVAR____TtC9Reminders22TTRIRootViewController_detailNavigationController], aBlock[0] = v6, __chkstk_darwin(v7), v16[2] = aBlock, LOBYTE(v4) = sub_10000C108(sub_10001D5BC, v16, v5), , (v4 & 1) != 0))
  {
    v8 = [v3 topViewController];
    if (!v8 || (v9 = v8, v8, v6 != v9))
    {
    }
  }

  else if (a1)
  {
    [v1 showDetailViewController:*&v1[OBJC_IVAR____TtC9Reminders22TTRIRootViewController_detailNavigationController] sender:v1];
  }

  else
  {
    v10 = objc_opt_self();
    v11 = swift_allocObject();
    *(v11 + 16) = v1;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1002FC7C8;
    *(v12 + 24) = v11;
    aBlock[4] = sub_100026410;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100026440;
    aBlock[3] = &unk_10071F3A0;
    v13 = _Block_copy(aBlock);
    v14 = v1;

    [v10 performWithoutAnimation:v13];
    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

double sub_1002FBB48@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  sub_10000C36C((*&v3[OBJC_IVAR____TtC9Reminders22TTRIRootViewController_presenter] + 48), *(*&v3[OBJC_IVAR____TtC9Reminders22TTRIRootViewController_presenter] + 72));
  sub_1003969FC(a1, a2, &v20);
  if (*(&v21 + 1))
  {
    sub_100007DD8(&v20, a3);
  }

  else
  {
    sub_1000079B4(&v20, &qword_10076AE40, &qword_10062EE50);
    sub_1001AAABC(a2, &v20);
    v10 = *(&v21 + 1);
    if (*(&v21 + 1))
    {
      v11 = sub_10000C36C(&v20, *(&v21 + 1));
      v12 = *(v10 - 8);
      v13 = __chkstk_darwin(v11);
      v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v12 + 16))(v15, v13);
      v16 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v12 + 8))(v15, v10);
      sub_100004758(&v20);
    }

    else
    {
      v16 = 0;
    }

    v19.receiver = v4;
    v19.super_class = ObjectType;
    v17 = objc_msgSendSuper2(&v19, "targetForAction:withSender:", a1, v16);
    swift_unknownObjectRelease();
    if (v17)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
    }

    result = *&v20;
    v18 = v21;
    *a3 = v20;
    a3[1] = v18;
  }

  return result;
}

uint64_t sub_1002FBEDC(void (*a1)(uint64_t))
{
  sub_100003540(0, &unk_10076BD00, UICommand_ptr);
  v2._object = 0x8000000100680EE0;
  v3._countAndFlagsBits = 1701736270;
  v3._object = 0xE400000000000000;
  v2._countAndFlagsBits = 0xD000000000000037;
  TTRLocalizedString(_:comment:)(v3, v2);
  v4 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v8 = [v4 attributes];
  UIMenuElementAttributes.setDisabled(_:)(1);
  [v4 setAttributes:v8];
  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10062D420;
  *(v5 + 32) = v4;
  v6 = v4;
  a1(v5);
}

id sub_1002FC234()
{
  v1 = OBJC_IVAR____TtC9Reminders43TTRIRootActivityItemsConfigurationProviding_visibleList;
  if ([*&v0[OBJC_IVAR____TtC9Reminders43TTRIRootActivityItemsConfigurationProviding_visibleList] canBeShared] && (v2 = objc_msgSend(*&v0[v1], "account"), v3 = objc_msgSend(v2, "accountTypeHost"), v2, LODWORD(v2) = objc_msgSend(v3, "isCloudKit"), v3, v2))
  {
    if (qword_100767198 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100003E30(v4, qword_10077BBE0);
    v5 = v0;
    v6 = v0;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v23 = v10;
      *v9 = 136315138;
      v11 = [*&v5[v1] displayName];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = sub_100004060(v12, v14, &v23);

      *(v9 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v7, v8, "TTRIRootViewController providing activityItemsConfiguration for list {remList: %s}.", v9, 0xCu);
      sub_100004758(v10);
    }

    v16 = *&v5[v1];
    v17 = _s9Reminders23TTRListSharingUtilitiesC26activityItemsConfiguration3forSo010UIActivityfG0CSo7REMListC_tFZ_0(v16);

    return v17;
  }

  else
  {
    if (qword_100767198 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100003E30(v19, qword_10077BBE0);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "TTRIRootViewController cannot provide activityItemsConfiguration, list is not shareable.", v22, 2u);
    }

    return 0;
  }
}

uint64_t sub_1002FC56C(void *a1)
{
  v2 = [a1 viewControllerForColumn:2];
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4 && (v5 = [v4 topViewController]) != 0)
    {
      v11 = v5;
      v6 = v5;
      sub_100003540(0, &qword_10076AD28, UIViewController_ptr);
      v7 = v6;
      sub_100058000(&qword_10077BDE8, &qword_10063A008);
      if (swift_dynamicCast())
      {
        sub_100005FD0(v9, v12);
        sub_10000C36C(v12, v12[3]);
        dispatch thunk of TTRIEffectiveNavigationControllerForBarsObserving.effectiveNavigationControllerForBarsDidChange()();

        sub_100004758(v12);
      }

      else
      {

        v10 = 0;
        memset(v9, 0, sizeof(v9));
        sub_1000079B4(v9, &qword_10077BDF0, &qword_10063A010);
      }
    }

    else
    {
    }
  }

  return sub_100010B1C([v1 isCollapsed]);
}

void sub_1002FC7F0()
{
  v1 = [*(*(v0 + 16) + OBJC_IVAR____TtC9Reminders22TTRIRootViewController_mainNavigationController) popToRootViewControllerAnimated:*(v0 + 24)];
}

uint64_t sub_1002FC854(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  sub_100003540(0, &qword_100775690, NSObject_ptr);
  if (static NSObject.== infix(_:_:)())
  {
    if (v2)
    {
      if (v3)
      {
        sub_100003540(0, &qword_100772610, UIColor_ptr);
        v4 = v3;
        v5 = v2;
        v6 = static NSObject.== infix(_:_:)();

        if (v6)
        {
          return 1;
        }
      }
    }

    else if (!v3)
    {
      return 1;
    }
  }

  return 0;
}

BOOL sub_1002FC90C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for TTRRectCorners();
  sub_1002FE140();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  return v8 == v7 && *(a1 + *(a3 + 20)) == *(a2 + *(a3 + 20));
}

BOOL sub_1002FC9B0(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v5 = a1[3];
  v4 = a1[4];
  v6 = a2[1];
  v7 = a2[2];
  v9 = a2[3];
  v8 = a2[4];
  sub_100003540(0, &qword_100775690, NSObject_ptr);
  v10 = static NSObject.== infix(_:_:)();
  result = 0;
  if ((v10 & 1) != 0 && v2 == v6 && v3 == v7 && v5 == v9)
  {
    return v4 == v8;
  }

  return result;
}

void sub_1002FCA54(uint64_t a1, void *a2)
{
  v3 = v2;
  v4 = &v2[OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_fill];
  v5 = *&v2[OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_fill];
  if (!v5)
  {
    return;
  }

  v6 = *(v4 + 1);
  if (a1)
  {
    sub_100003540(0, &qword_100775690, NSObject_ptr);
    sub_1002FE2A4(v5, v6);
    if ((static NSObject.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_8;
    }

    if (!v6)
    {
      sub_100037C04(v5, 0);
      if (!a2)
      {
        return;
      }

      goto LABEL_9;
    }

    if (a2)
    {
      sub_100003540(0, &qword_100772610, UIColor_ptr);
      v8 = a2;
      v9 = v6;
      v10 = static NSObject.== infix(_:_:)();

      sub_100037C04(v5, v6);
      if (v10)
      {
        return;
      }
    }

    else
    {
LABEL_8:
      sub_100037C04(v5, v6);
    }

LABEL_9:
    v5 = *v4;
    if (!*v4)
    {
      return;
    }

    v6 = *(v4 + 1);
  }

  v11 = v6;
  v12 = v5;
  v19 = [v3 layer];
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = v13;
    if (v6)
    {
      v15 = v11;
      v16 = [v12 _colorBlendedWithColor:v15];
      if (!v16)
      {
        __break(1u);
        return;
      }

      v17 = v16;
    }

    else
    {
      v17 = v12;
    }

    v18 = [v17 CGColor];
    [v14 setFillColor:v18];

    v11 = v19;
    v12 = v18;
    v19 = v17;
  }
}

void sub_1002FCC88()
{
  v1 = *&v0[OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_fill];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_fill + 8];
    v3 = v2;
    v4 = v1;
    v11 = [v0 layer];
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = v5;
      if (v2)
      {
        v7 = v3;
        v8 = [v4 _colorBlendedWithColor:v7];
        if (!v8)
        {
          __break(1u);
          return;
        }

        v9 = v8;
      }

      else
      {
        v9 = v4;
      }

      v10 = [v9 CGColor];
      [v6 setFillColor:v10];

      v3 = v11;
      v4 = v10;
      v11 = v9;
    }
  }
}

uint64_t sub_1002FCDE0(uint64_t a1)
{
  v3 = type metadata accessor for TTRIBoardColumnDraggingAnimationCellBackgroundView.Shape(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v21[0] = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_10076C008, &qword_1006301A0);
  __chkstk_darwin(v6 - 8);
  v8 = v21 - v7;
  v9 = sub_100058000(&qword_10077BEF0, qword_10063A158);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = v21 - v11;
  v13 = OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_shape;
  swift_beginAccess();
  v14 = *(v10 + 56);
  sub_10000794C(v1 + v13, v12, &qword_10076C008, &qword_1006301A0);
  sub_10000794C(a1, &v12[v14], &qword_10076C008, &qword_1006301A0);
  v15 = *(v4 + 48);
  if (v15(v12, 1, v3) == 1)
  {
    if (v15(&v12[v14], 1, v3) == 1)
    {
      return sub_1000079B4(v12, &qword_10076C008, &qword_1006301A0);
    }

    goto LABEL_6;
  }

  sub_10000794C(v12, v8, &qword_10076C008, &qword_1006301A0);
  if (v15(&v12[v14], 1, v3) == 1)
  {
    sub_1002FE198(v8);
LABEL_6:
    sub_1000079B4(v12, &qword_10077BEF0, qword_10063A158);
    return sub_1002FD128();
  }

  v17 = v21[0];
  sub_1002FE1F4(&v12[v14], v21[0]);
  type metadata accessor for TTRRectCorners();
  sub_1002FE140();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v21[2] != v21[1])
  {
    sub_1002FE198(v17);
    sub_1002FE198(v8);
    sub_1000079B4(v12, &qword_10076C008, &qword_1006301A0);
    return sub_1002FD128();
  }

  v18 = *(v3 + 20);
  v19 = *&v8[v18];
  v20 = *(v17 + v18);
  sub_1002FE198(v17);
  sub_1002FE198(v8);
  result = sub_1000079B4(v12, &qword_10076C008, &qword_1006301A0);
  if (v19 != v20)
  {
    return sub_1002FD128();
  }

  return result;
}

uint64_t sub_1002FD128()
{
  v1 = v0;
  v2 = sub_100058000(&qword_10076C008, &qword_1006301A0);
  __chkstk_darwin(v2 - 8);
  v4 = &v36 - v3;
  v5 = type metadata accessor for TTRIBoardColumnDraggingAnimationCellBackgroundView.Shape(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_shape;
  swift_beginAccess();
  sub_10000794C(&v1[v9], v4, &qword_10076C008, &qword_1006301A0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_1000079B4(v4, &qword_10076C008, &qword_1006301A0);
  }

  sub_1002FE1F4(v4, v8);
  v11 = [v1 layer];
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v13 = v12;
    [v1 bounds];
    x = v43.origin.x;
    y = v43.origin.y;
    width = v43.size.width;
    height = v43.size.height;
    MidX = CGRectGetMidX(v43);
    v44.origin.x = x;
    v44.origin.y = y;
    v44.size.width = width;
    v44.size.height = height;
    MinY = CGRectGetMinY(v44);
    v45.origin.x = x;
    v45.origin.y = y;
    v45.size.width = width;
    v45.size.height = height;
    MaxX = CGRectGetMaxX(v45);
    v46.origin.x = x;
    v46.origin.y = y;
    v46.size.width = width;
    v46.size.height = height;
    v21 = CGRectGetMinY(v46);
    v47.origin.x = x;
    v47.origin.y = y;
    v47.size.width = width;
    v47.size.height = height;
    v38 = CGRectGetMaxX(v47);
    v48.origin.x = x;
    v48.origin.y = y;
    v48.size.width = width;
    v48.size.height = height;
    MaxY = CGRectGetMaxY(v48);
    v49.origin.x = x;
    v49.origin.y = y;
    v49.size.width = width;
    v49.size.height = height;
    MinX = CGRectGetMinX(v49);
    v50.origin.x = x;
    v50.origin.y = y;
    v50.size.width = width;
    v50.size.height = height;
    v39 = CGRectGetMaxY(v50);
    v51.origin.x = x;
    v51.origin.y = y;
    v51.size.width = width;
    v51.size.height = height;
    v42 = CGRectGetMinX(v51);
    v52.origin.x = x;
    v52.origin.y = y;
    v52.size.width = width;
    v52.size.height = height;
    v41 = CGRectGetMinY(v52);
    v22 = [objc_allocWithZone(UIBezierPath) init];
    [v22 moveToPoint:{MidX, MinY}];
    v23 = TTRRectCorners.cornerMask(layoutDirection:isFlipped:)([v1 effectiveUserInterfaceLayoutDirection], 1);
    v24 = sub_1002FE258(v23);
    v25 = 0.0;
    v26 = 0.0;
    if ((v24 & 2) != 0)
    {
      v26 = *&v8[*(v5 + 20)];
    }

    if (fabs(v26) >= 0.0000000149011612)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0.001;
    }

    [v22 _addRoundedCornerWithTrueCorner:2 radius:0 corner:MaxX clockwise:{v21, v27, v27}];
    if ((v24 & 8) != 0)
    {
      v25 = *&v8[*(v5 + 20)];
    }

    if (fabs(v25) >= 0.0000000149011612)
    {
      v28 = v25;
    }

    else
    {
      v28 = 0.001;
    }

    [v22 _addRoundedCornerWithTrueCorner:8 radius:0 corner:v38 clockwise:{MaxY, v28, v28}];
    v29 = 0.0;
    v30 = 0.0;
    if ((v24 & 4) != 0)
    {
      v30 = *&v8[*(v5 + 20)];
    }

    if (fabs(v30) >= 0.0000000149011612)
    {
      v31 = v30;
    }

    else
    {
      v31 = 0.001;
    }

    [v22 _addRoundedCornerWithTrueCorner:4 radius:0 corner:MinX clockwise:{v39, v31, v31}];
    if (v24)
    {
      v29 = *&v8[*(v5 + 20)];
    }

    if (fabs(v29) >= 0.0000000149011612)
    {
      v32 = v29;
    }

    else
    {
      v32 = 0.001;
    }

    [v22 _addRoundedCornerWithTrueCorner:1 radius:0 corner:v42 clockwise:{v41, v32, v32}];
    [v22 closePath];
    v33 = &v1[OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_boundsUsedForShapePath];
    *v33 = x;
    v33[1] = y;
    v33[2] = width;
    v33[3] = height;
    *(v33 + 32) = 0;
    v34 = [v22 CGPath];
    [v13 setPath:v34];
    v35 = v11;
    [v13 setShadowPath:v34];
  }

  else
  {
  }

  return sub_1002FE198(v8);
}

void sub_1002FD608(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = &v2[OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_shadow];
  v5 = *&v2[OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_shadow];
  if (!v5)
  {
    if (!v3)
    {
      return;
    }

    goto LABEL_7;
  }

  if (!v3)
  {
LABEL_7:
    sub_10000794C(a1, v21, &qword_10076C020, &qword_1006301B8);

LABEL_8:
    if (*v4)
    {
      v9 = *(v4 + 3);
      v10 = *(v4 + 4);
      v12 = *(v4 + 1);
      v11 = *(v4 + 2);
      v13 = *v4;
      v14 = [v2 layer];
      v15 = [v13 CGColor];
      [v14 setShadowColor:v15];

      [v14 setShadowOffset:{v12, v11}];
      [v14 setShadowRadius:v9];
      *&v16 = v10;
      [v14 setShadowOpacity:v16];
    }

    return;
  }

  v19 = *(a1 + 8);
  v20 = *(a1 + 24);
  v17 = *(v4 + 8);
  v18 = *(v4 + 24);
  sub_100003540(0, &qword_100775690, NSObject_ptr);
  sub_10000794C(a1, v21, &qword_10076C020, &qword_1006301B8);
  v7 = v5;
  v8 = static NSObject.== infix(_:_:)();
  sub_1000079B4(a1, &qword_10076C020, &qword_1006301B8);

  if ((v8 & 1) == 0 || (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v17, v19), vceqq_f64(v18, v20)), xmmword_100634150)) & 0xF) != 0)
  {
    goto LABEL_8;
  }
}

id sub_1002FD9F0(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_fill];
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_shape;
  v6 = type metadata accessor for TTRIBoardColumnDraggingAnimationCellBackgroundView.Shape(0);
  (*(*(v6 - 8) + 56))(&v1[v5], 1, 1, v6);
  v7 = &v1[OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_shadow];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  v1[OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_debugShowsBoundingBox] = 0;
  v8 = &v1[OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_boundsUsedForShapePath];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  v8[32] = 1;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, "initWithCoder:", a1);

  if (v9)
  {
  }

  return v9;
}

void sub_1002FDBBC(uint64_t a1)
{
  sub_1002FDC74(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1002FDC74(uint64_t a1)
{
  if (!qword_10077BE50)
  {
    type metadata accessor for TTRIBoardColumnDraggingAnimationCellBackgroundView.Shape(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10077BE50);
    }
  }
}

uint64_t assignWithCopy for TTRIBoardColumnDraggingAnimationCellBackgroundView.Fill(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  *(a1 + 8) = v8;
  v9 = v8;

  return a1;
}

uint64_t *sub_1002FDD64(uint64_t *a1, uint64_t *a2, uint64_t a3)
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
    v7 = type metadata accessor for TTRRectCorners();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  }

  return a1;
}

uint64_t sub_1002FDE2C(uint64_t a1)
{
  v2 = type metadata accessor for TTRRectCorners();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t sub_1002FDE90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRectCorners();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t sub_1002FDF0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRectCorners();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t sub_1002FDF88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRectCorners();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t sub_1002FE004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRectCorners();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t sub_1002FE0A8(uint64_t a1)
{
  result = type metadata accessor for TTRRectCorners();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t sub_1002FE140()
{
  result = qword_10077BEE8;
  if (!qword_10077BEE8)
  {
    type metadata accessor for TTRRectCorners();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077BEE8);
  }

  return result;
}

uint64_t sub_1002FE198(uint64_t a1)
{
  v2 = type metadata accessor for TTRIBoardColumnDraggingAnimationCellBackgroundView.Shape(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002FE1F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIBoardColumnDraggingAnimationCellBackgroundView.Shape(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002FE258(char a1)
{
  if (a1)
  {
    if ((a1 & 4) != 0)
    {
      v1 = 5;
      if ((a1 & 2) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v1 = 1;
      if ((a1 & 2) == 0)
      {
        goto LABEL_5;
      }
    }

LABEL_4:
    v1 |= 2uLL;
    goto LABEL_5;
  }

  if ((a1 & 4) == 0)
  {
    v1 = 0;
    if ((a1 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v1 = 4;
  if ((a1 & 2) != 0)
  {
    goto LABEL_4;
  }

LABEL_5:
  if ((a1 & 8) != 0)
  {
    return v1 | 8;
  }

  return v1;
}

id sub_1002FE2A4(id result, void *a2)
{
  if (result)
  {
    v3 = result;
    v2 = a2;

    return v3;
  }

  return result;
}

uint64_t sub_1002FE2E4()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10077BF00);
  v1 = sub_100003E30(v0, qword_10077BF00);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1002FE450()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for TTRRemindersListLayout();
  v28 = *(v3 - 8);
  v29 = v3;
  __chkstk_darwin(v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UICollectionLayoutListConfiguration.FooterMode();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UICollectionLayoutListConfiguration();
  v30 = *(v14 - 8);
  v31 = v14;
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32.receiver = v1;
  v32.super_class = ObjectType;
  objc_msgSendSuper2(&v32, "viewDidLoad", v15);
  (*(v11 + 104))(v13, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v10);
  UICollectionLayoutListConfiguration.init(appearance:)();
  (*(v7 + 104))(v9, enum case for UICollectionLayoutListConfiguration.FooterMode.supplementary(_:), v6);
  UICollectionLayoutListConfiguration.footerMode.setter();
  sub_100003540(0, &qword_10077BFE0, UICollectionViewCompositionalLayout_ptr);
  v18 = static UICollectionViewCompositionalLayout.list(using:)();
  result = [v1 collectionView];
  if (result)
  {
    v20 = result;
    [result setCollectionViewLayout:v18 animated:0];

    result = [v1 collectionView];
    if (result)
    {
      v21 = result;
      [result setAllowsSelection:0];

      sub_1002FE8E8();
      sub_1002FEDCC(0);
      v22 = [v1 navigationItem];
      sub_10023D8F0(v5);
      static TTRLocalizableStrings.RemindersList.editSectionsActionText(listLayout:)();
      (*(v28 + 8))(v5, v29);
      v23 = String._bridgeToObjectiveC()();

      [v22 setTitle:v23];

      v24 = [v1 navigationItem];
      v25 = sub_100017E3C(&OBJC_IVAR____TtC9Reminders30TTRIEditSectionsViewController____lazy_storage___cancelButton, &selRef_didTapCancel_, 1);
      [v24 setLeftBarButtonItem:v25];

      v26 = [v1 navigationItem];
      v27 = sub_100017E3C(&OBJC_IVAR____TtC9Reminders30TTRIEditSectionsViewController____lazy_storage___doneButton, &selRef_didTapDone_, 0);
      [v26 setRightBarButtonItem:v27];

      return (*(v30 + 8))(v17, v31);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1002FE8E8()
{
  v31 = sub_100058000(&qword_10077FBE0, &qword_10063A1C0);
  v28 = *(v31 - 8);
  v1 = *(v28 + 64);
  __chkstk_darwin(v31);
  v27 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v4 = &v26 - v3;
  v33 = sub_100058000(&unk_10077BFF0, &qword_10063A1C8);
  v5 = *(v33 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v33);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for TTRIEditSectionsCell(0);
  type metadata accessor for TTREditSectionsViewModel.ItemIdentifier();
  v32 = v10;
  UICollectionView.CellRegistration.init(handler:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100003540(0, &qword_10077FBF0, UICollectionViewListCell_ptr);
  v30 = v4;
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  v29 = v0;
  if ([v0 collectionView])
  {
    v11 = v33;
    (*(v5 + 16))(v7, v32, v33);
    v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v13 = swift_allocObject();
    (*(v5 + 32))(v13 + v12, v7, v11);
    v14 = objc_allocWithZone(sub_100058000(&qword_10077C000, &qword_10063A1D0));
    v15 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
    v16 = v27;
    v17 = v28;
    v18 = v30;
    v19 = v31;
    (*(v28 + 16))(v27, v30, v31);
    v20 = (*(v17 + 80) + 16) & ~*(v17 + 80);
    v21 = swift_allocObject();
    (*(v17 + 32))(v21 + v20, v16, v19);
    dispatch thunk of UICollectionViewDiffableDataSource.supplementaryViewProvider.setter();
    v22 = UICollectionViewDiffableDataSource.reorderingHandlers.modify();
    sub_100058000(&qword_10077C008, &qword_10063A1D8);
    UICollectionViewDiffableDataSource.ReorderingHandlers.canReorderItem.setter();
    v22(v34, 0);
    swift_allocObject();
    v23 = v29;
    swift_unknownObjectWeakInit();
    v24 = UICollectionViewDiffableDataSource.reorderingHandlers.modify();
    UICollectionViewDiffableDataSource.ReorderingHandlers.didReorder.setter();
    v24(v34, 0);
    (*(v17 + 8))(v18, v19);
    (*(v5 + 8))(v32, v33);
    v25 = *&v23[OBJC_IVAR____TtC9Reminders30TTRIEditSectionsViewController_dataSource];
    *&v23[OBJC_IVAR____TtC9Reminders30TTRIEditSectionsViewController_dataSource] = v15;
  }

  else
  {
    __break(1u);
  }
}

void sub_1002FEDCC(unsigned __int8 a1)
{
  v2 = v1;
  v3 = sub_100058000(&unk_10077BFD0, &unk_10063A1B0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
  v7 = *(*(v1 + OBJC_IVAR____TtC9Reminders30TTRIEditSectionsViewController_presenter) + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_viewModel);
  v8 = OBJC_IVAR____TtC9Reminders30TTRIEditSectionsViewController_lastConsumedViewModel;
  if (*(v1 + OBJC_IVAR____TtC9Reminders30TTRIEditSectionsViewController_lastConsumedViewModel))
  {

    TTREditSectionsViewModel.isEmpty.getter();
  }

  else
  {
  }

  TTREditSectionsViewModel.snapshot(previousViewModel:)();

  v9 = *(v1 + OBJC_IVAR____TtC9Reminders30TTRIEditSectionsViewController_dataSource);
  if (v9)
  {
    v10 = v9;
    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

    (*(v4 + 8))(v6, v3);
    *(v2 + v8) = v7;
  }

  else
  {
    __break(1u);
  }
}

void sub_1002FF0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v68 = a3;
  v5 = type metadata accessor for TTRRemindersListLayout();
  v62 = *(v5 - 8);
  __chkstk_darwin(v5);
  v61 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for UICellAccessory.Placement();
  v55 = *(v56 - 8);
  __chkstk_darwin(v56);
  v57 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&unk_10077FC20, &unk_100638BA0);
  __chkstk_darwin(v9 - 8);
  v66 = &v52 - v10;
  v11 = type metadata accessor for UICellAccessory.ReorderOptions();
  v63 = *(v11 - 8);
  v64 = v11;
  __chkstk_darwin(v11);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UICellAccessory.DisplayedState();
  v65 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for UICellAccessory();
  v67 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100058000(&unk_10077C040, &unk_10063A210);
  __chkstk_darwin(v20 - 8);
  v22 = &v52 - v21;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    v54 = v14;
    v53 = v5;
    v25 = a1;
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
    TTREditSectionsViewModel.section(with:)();
    sub_1001185AC(v22);
    v26 = *(a1 + OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_displayNameField);
    swift_beginAccess();
    v27 = swift_unknownObjectWeakLoadStrong();
    v28 = v26;
    [v28 setDelegate:v27];

    v29 = type metadata accessor for TTREditSectionsViewModel.SectionItem();
    if ((*(*(v29 - 8) + 48))(v22, 1, v29) == 1)
    {
      v30 = v25;
      swift_beginAccess();
      v31 = swift_unknownObjectWeakLoadStrong();
      if (v31)
      {
        v32 = v31;
        v33 = [objc_allocWithZone(UISwitch) init];
        [v33 setOn:TTREditSectionsViewModel.shouldHideEmptySections.getter() & 1];
        [v33 addTarget:v32 action:"didToggleHideEmptySections:" forControlEvents:4096];
        [v33 setIsAccessibilityElement:0];
        v34 = sub_100058000(&qword_100779498, &unk_100638BB0);
        v35 = v57;
        v36 = &v57[*(v34 + 48)];
        (*(v65 + 104))(v57, enum case for UICellAccessory.DisplayedState.always(_:), v54);
        *v36 = variable initialization expression of TTRSmartListFilterEditorInteractor.listFetchOperationManager;
        v36[1] = 0;
        (*(v55 + 104))(v35, enum case for UICellAccessory.Placement.trailing(_:), v56);
        v37 = type metadata accessor for UICellAccessory.LayoutDimension();
        (*(*(v37 - 8) + 56))(v66, 1, 1, v37);
        v38 = v33;
        v39 = v58;
        UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
        sub_100058000(&unk_10077C050, &unk_10063A220);
        *(swift_allocObject() + 16) = xmmword_10062D400;
        static UICellAccessory.customView(configuration:)();
        UICollectionViewListCell.accessories.setter();
        v40 = v61;
        sub_10023D8F0(v61);

        (*(v59 + 8))(v39, v60);
        sub_1000079B4(v22, &unk_10077C040, &unk_10063A210);
        v41 = OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_currentLayout;
        swift_beginAccess();
        (*(v62 + 40))(v30 + v41, v40, v53);
        swift_endAccess();
        *(v30 + OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_accessibilityDelegate + 8) = &off_10071F610;
        swift_unknownObjectWeakAssign();

        return;
      }
    }

    else
    {
      v46 = v65;
      v47 = v54;
      (*(v65 + 104))(v16, enum case for UICellAccessory.DisplayedState.whenNotEditing(_:), v54);
      v48 = type metadata accessor for UICellAccessory.LayoutDimension();
      (*(*(v48 - 8) + 56))(v66, 1, 1, v48);
      UICellAccessory.ReorderOptions.init(isHidden:reservedLayoutWidth:tintColor:showsVerticalSeparator:)();
      static UICellAccessory.reorder(displayed:options:)();
      (*(v63 + 8))(v13, v64);
      (*(v46 + 8))(v16, v47);
      sub_100058000(&unk_10077C050, &unk_10063A220);
      v49 = v67;
      v50 = (*(v67 + 80) + 32) & ~*(v67 + 80);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_10062D400;
      (*(v49 + 16))(v51 + v50, v19, v17);
      UICollectionViewListCell.accessories.setter();

      (*(v49 + 8))(v19, v17);
    }

    sub_1000079B4(v22, &unk_10077C040, &unk_10063A210);
  }

  else
  {
    if (qword_1007671A0 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_100003E30(v42, qword_10077BF00);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "TTRIEditSectionsViewController: No viewModel found for cell registration", v45, 2u);
    }
  }
}

void sub_1002FFAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1002FFB50();
  }
}

uint64_t sub_1002FFB50()
{
  v1 = type metadata accessor for TTRRemindersListLayout();
  v19 = *(v1 - 8);
  v20 = v1;
  __chkstk_darwin(v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100058000(&unk_10077C030, &unk_10063A200);
  __chkstk_darwin(v4);
  v6 = &v18 - v5;
  v7 = type metadata accessor for UIListContentConfiguration();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  UICollectionViewListCell.defaultContentConfiguration()();
  v18 = v0;
  v11 = *(v0 + OBJC_IVAR____TtC9Reminders30TTRIEditSectionsViewController_dataSource);
  if (v11)
  {
    v12 = v11;
    IndexPath.section.getter();
    dispatch thunk of UICollectionViewDiffableDataSource.sectionIdentifier(for:)();

    v13 = type metadata accessor for TTREditSectionsViewModel.SectionIdentifier();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v6, 1, v13) == 1)
    {
LABEL_6:
      v21[3] = v7;
      v21[4] = &protocol witness table for UIListContentConfiguration;
      v16 = sub_1000317B8(v21);
      (*(v8 + 16))(v16, v10, v7);
      UICollectionViewCell.contentConfiguration.setter();
      return (*(v8 + 8))(v10, v7);
    }

    v15 = (*(v14 + 88))(v6, v13);
    if (v15 == enum case for TTREditSectionsViewModel.SectionIdentifier.toggle(_:))
    {
      sub_10023D8F0(v3);
      static TTRLocalizableStrings.Sections.hideEmptySectionsSubtitle(listLayout:)();
      (*(v19 + 8))(v3, v20);
      UIListContentConfiguration.text.setter();
      goto LABEL_6;
    }

    if (v15 == enum case for TTREditSectionsViewModel.SectionIdentifier.items(_:))
    {
      goto LABEL_6;
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

uint64_t sub_1002FFE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_100058000(&qword_10077C028, &qword_10063A1F8);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TTREditSectionsViewModel.ItemIdentifier();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a3, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  type metadata accessor for TTRIEditSectionsCell(0);
  v10 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
  sub_1000079B4(v7, &qword_10077C028, &qword_10063A1F8);
  return v10;
}

uint64_t sub_1002FFFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v6 == a3)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  sub_100003540(0, &qword_10077FBF0, UICollectionViewListCell_ptr);
  return UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
}

void sub_10030008C(uint64_t a1, uint64_t a2)
{
  v2 = sub_100058000(&qword_10077C010, &qword_10063A1E0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = sub_100058000(&qword_10077C018, &qword_10063A1E8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    sub_100058000(&qword_10077C020, &qword_10063A1F0);
    v15 = NSDiffableDataSourceTransaction.sectionTransactions.getter();
    if (*(v15 + 16))
    {
      (*(v7 + 16))(v9, v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);

      (*(v7 + 32))(v12, v9, v6);
      NSDiffableDataSourceSectionTransaction.initialSnapshot.getter();
      v16 = NSDiffableDataSourceSectionSnapshot.items.getter();
      v17 = *(v3 + 8);
      v17(v5, v2);
      v18 = sub_100300B18(v16);

      NSDiffableDataSourceSectionTransaction.finalSnapshot.getter();
      v19 = NSDiffableDataSourceSectionSnapshot.items.getter();
      v17(v5, v2);
      v20 = sub_100300B18(v19);

      sub_10023E27C(v20, v18);

      (*(v7 + 8))(v12, v6);
    }

    else
    {
    }
  }
}

uint64_t sub_100300560(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC9Reminders30TTRIEditSectionsViewController_presenter);
  v3 = [a1 isOn];
  if (qword_100767020 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003E30(v4, qword_100775E20);
  v5 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44("Edit Sections toggle hide empty sections", 40, 2, v5);

  TTREditSectionsViewModel.shouldHideEmptySections.setter();

  *(v2 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_shouldHideEmptySections) = v3;
  v6._object = 0x8000000100679110;
  v6._countAndFlagsBits = 0xD000000000000019;
  TTRMainActorDeferredAction.scheduleNextRunLoop(reason:)(v6);
  *(v2 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_hideEmptySectionsToggleChanged) = 1;
  sub_10000C36C((v2 + 88), *(v2 + 112));
  return dispatch thunk of TTREditSectionsInteractorType.toggleHideEmptySections(isOn:)();
}

uint64_t sub_1003009D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_100058000(&unk_10077BFF0, &qword_10063A1C8) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_1002FFE78(a1, a2, a3, v8);
}

uint64_t sub_100300A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_100058000(&qword_10077FBE0, &qword_10063A1C0) - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  return sub_1002FFFC8(a1, a2, a3, a4, v10);
}

void *sub_100300B18(uint64_t a1)
{
  v2 = type metadata accessor for TTREditSectionsViewModel.ItemIdentifier();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v20 = a1;
  v21 = _swiftEmptyArrayStorage;
  v9 = *(a1 + 16);
  v19 = v3 + 16;
  v10 = enum case for TTREditSectionsViewModel.ItemIdentifier.sectionItem(_:);
  v11 = enum case for TTREditSectionsViewModel.ItemIdentifier.toggleItem(_:);
  v18 = (v3 + 96);
  while (1)
  {
    if (v9 == v7)
    {
      return v8;
    }

    if (v7 >= v9)
    {
      break;
    }

    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_13;
    }

    (*(v3 + 16))(v6, v20 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v7, v2, v4);
    v13 = (*(v3 + 88))(v6, v2);
    if (v13 == v10)
    {
      (*v18)(v6, v2);
      v14 = *v6;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v17 = v14;
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v14 = v17;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v8 = v21;
      v7 = v12;
    }

    else
    {
      ++v7;
      if (v13 != v11)
      {
        goto LABEL_14;
      }
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for TTRIRemindersListTemplateStatusCell(uint64_t a1)
{
  result = qword_10077C078;
  if (!qword_10077C078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100300D88(uint64_t a1)
{
  result = type metadata accessor for TTRTemplatePublicLinkData();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_100300E3C(char *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRTemplatePublicLinkData();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &aBlock[-1] - v9;
  v11 = qword_1007A8568;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, &v2[v11], v4);
  swift_beginAccess();
  (*(v5 + 24))(&v2[v11], a1, v4);
  swift_endAccess();
  v12(v7, &v2[v11], v4);
  sub_1003022A4(&qword_10077C0C8, &type metadata accessor for TTRTemplatePublicLinkData, &protocol conformance descriptor for TTRTemplatePublicLinkData);
  LOBYTE(v11) = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = *(v5 + 8);
  v13(v7, v4);
  if (v11 & 1) == 0 && (v19 = TTRITableViewContainerCell.containerView.getter(), v14 = swift_allocObject(), *(v14 + 16) = v2, v15 = swift_allocObject(), *(v15 + 16) = sub_10030229C, *(v15 + 24) = v14, aBlock[4] = sub_100026410, aBlock[5] = v15, aBlock[0] = _NSConcreteStackBlock, aBlock[1] = 1107296256, aBlock[2] = sub_100026440, aBlock[3] = &unk_10071F6F8, v16 = _Block_copy(aBlock), v17 = v2, , , v18 = v19, [v19 performBatchUpdates:v16], v18, _Block_release(v16), LOBYTE(v18) = swift_isEscapingClosureAtFileLocation(), , , (v18))
  {
    __break(1u);
  }

  else
  {
    v13(a1, v4);
    v13(v10, v4);
  }
}

void sub_10030117C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v39[1] = a2;
  v43 = a1;
  ObjectType = swift_getObjectType();
  v6 = sub_100058000(&unk_100772600, &unk_1006348F0);
  __chkstk_darwin(v6 - 8);
  v8 = v39 - v7;
  v9 = sub_100058000(&qword_100769CF8, &qword_10062E8F0);
  __chkstk_darwin(v9 - 8);
  v11 = v39 - v10;
  v12 = type metadata accessor for UIButton.Configuration();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[qword_10077C060 + 8] = 0;
  swift_unknownObjectWeakInit();
  TTRTemplatePublicLinkData.init()();
  v16 = [objc_allocWithZone(UILabel) init];
  sub_100003540(0, &qword_100771DF0, UIFont_ptr);
  v17 = static UIFont.roundedBodyFont.getter();
  [v16 setFont:v17];

  v18 = [objc_opt_self() secondaryLabelColor];
  [v16 setTextColor:v18];

  [v16 setAdjustsFontForContentSizeCategory:1];
  v19 = a3;
  v20 = [objc_allocWithZone(UIButton) init];
  static UIButton.Configuration.borderless()();
  static TTRLocalizableStrings.Templates.templateStatusUpdateSharedTemplate.getter();
  UIButton.Configuration.title.setter();
  UIButton.Configuration.contentInsets.setter();
  UIConfigurationTextAttributesTransformer.init(_:)();
  v21 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v21 - 8) + 56))(v11, 0, 1, v21);
  UIButton.Configuration.titleTextAttributesTransformer.setter();
  (*(v13 + 16))(v8, v15, v12);
  v40 = v13;
  v41 = v12;
  (*(v13 + 56))(v8, 0, 1, v12);
  UIButton.configuration.setter();
  *&v4[qword_10077C068] = v16;
  *&v4[qword_10077C070] = v20;
  v22 = v16;
  v23 = v20;
  if (v19)
  {
    v24 = String._bridgeToObjectiveC()();
  }

  else
  {
    v24 = 0;
  }

  v45.receiver = v4;
  v45.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v45, "initWithStyle:reuseIdentifier:", v43, v24);

  v26 = v25;
  v27 = TTRITableViewContainerCell.containerView.getter();
  [v27 setHorizontalAlignment:1];
  [v27 setVerticalAlignment:0];
  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_10062D410;
  *(v28 + 32) = v16;
  *(v28 + 40) = v20;
  sub_100003540(0, &qword_10076B020, UIView_ptr);
  v29 = v16;
  v30 = v20;
  v31 = v27;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v31 setArrangedSubviews:isa];

  [v30 addTarget:v26 action:"buttonAction:" forControlEvents:0x2000];
  [v26 setSeparatorInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v33 = TTRITableViewContainerCell.containerView.getter();
  v34 = swift_allocObject();
  *(v34 + 16) = v26;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1003022F0;
  *(v35 + 24) = v34;
  aBlock[4] = sub_100068444;
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026440;
  aBlock[3] = &unk_10071F770;
  v36 = _Block_copy(aBlock);
  v37 = v26;

  [v33 performBatchUpdates:v36];

  _Block_release(v36);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    UITableViewCell.ttr_registerForRemindersListCellBackgroundConfiguration()();

    (*(v40 + 8))(v15, v41);
  }
}

uint64_t sub_10030179C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttributeContainer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  sub_100003540(0, &qword_100771DF0, UIFont_ptr);
  static UIFont.roundedBodyFont.getter();
  sub_10008CD14();
  return AttributeContainer.subscript.setter();
}

void sub_100301850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  sub_10030117C(a3, a4, v6);
}

void sub_10030189C()
{
  v1 = objc_allocWithZone(v0);
  *&v1[qword_10077C060 + 8] = 0;
  swift_unknownObjectWeakInit();
  TTRTemplatePublicLinkData.init()();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100301930(uint64_t a1)
{
  *(a1 + qword_10077C060 + 8) = 0;
  swift_unknownObjectWeakInit();
  TTRTemplatePublicLinkData.init()();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Class sub_1003019BC(void *a1)
{
  v1 = a1;
  v2 = sub_100301A2C();

  if (v2)
  {
    v3.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  return v3.super.isa;
}

char *sub_100301A2C()
{
  v1 = *(v0 + qword_10077C068);
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

  v6 = *(v0 + qword_10077C070);
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

void sub_100301BC8(uint64_t a1)
{
  v2 = type metadata accessor for TTRTemplatePublicLinkData.Capabilities();
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v35 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v34 = &v33 - v5;
  v6 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay();
  v41 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRTemplatePublicLinkData();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v33 - v14;
  v16 = qword_1007A8568;
  swift_beginAccess();
  v17 = *(v10 + 16);
  v40 = a1;
  v17(v15, a1 + v16, v9);
  TTRTemplatePublicLinkData.stateToDisplay.getter();
  v18 = *(v10 + 8);
  v18(v15, v9);
  v19 = *(v41 + 88);
  v38 = v8;
  v39 = v6;
  v20 = v19(v8, v6);
  if (v20 == enum case for TTRTemplatePublicLinkData.StateToDisplay.created(_:))
  {
    v21 = v40;
    v17(v12, v40 + v16, v9);
    v22 = v34;
    TTRTemplatePublicLinkData.capabilities.getter();
    v18(v12, v9);
    v23 = v35;
    static TTRTemplatePublicLinkData.Capabilities.updateLink.getter();
    sub_1003022A4(&qword_10076EEC8, &type metadata accessor for TTRTemplatePublicLinkData.Capabilities, &protocol conformance descriptor for TTRTemplatePublicLinkData.Capabilities);
    v24 = v37;
    v25 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v26 = *(v36 + 8);
    v26(v23, v24);
    v26(v22, v24);
    if (v25)
    {
      v27 = *(v21 + qword_10077C070);
      [v27 setHidden:0];
      [*(v21 + qword_10077C068) setHidden:1];
      [v27 setEnabled:1];
    }

    else
    {
      static TTRLocalizableStrings.Templates.templateStatusSharedTemplate.getter();
      [*(v21 + qword_10077C070) setHidden:1];
      v31 = *(v21 + qword_10077C068);
      [v31 setHidden:0];
      v32 = String._bridgeToObjectiveC()();

      [v31 setText:v32];
    }

    (*(v41 + 8))(v38, v39);
  }

  else
  {
    v28 = v40;
    if (v20 == enum case for TTRTemplatePublicLinkData.StateToDisplay.notRequested(_:))
    {
      static TTRLocalizableStrings.Templates.templateStatusTemplate.getter();
      [*(v28 + qword_10077C070) setHidden:1];
      v29 = *(v28 + qword_10077C068);
      [v29 setHidden:0];
      v30 = String._bridgeToObjectiveC()();

      [v29 setText:v30];
    }

    else
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }
  }
}

uint64_t sub_10030209C(char *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v5 = a1;
  }

  v6 = &a1[qword_10077C060];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 1);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(a1, ObjectType, v7);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return sub_10000B070(v10);
}

void sub_100302160()
{
  sub_10003B788(v0 + qword_10077C060);
  v1 = qword_1007A8568;
  v2 = type metadata accessor for TTRTemplatePublicLinkData();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + qword_10077C070);
}

void sub_1003021F8(uint64_t a1)
{
  sub_10003B788(a1 + qword_10077C060);
  v2 = qword_1007A8568;
  v3 = type metadata accessor for TTRTemplatePublicLinkData();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);

  v4 = *(a1 + qword_10077C070);
}

uint64_t sub_1003022A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100302364()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10077C0D0);
  v1 = sub_100003E30(v0, qword_10077C0D0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100302430()
{
  v0 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRISmartListFilterEditorRelativeRangeContentState(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRITableCellContent.state.getter();
  v7.n128_f64[0] = (*(v1 + 32))(v3, v6, v0);
  return sub_100302550(v3, v7);
}

uint64_t sub_100302550(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v5 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v30 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v29 - v16;
  REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.direction.getter();
  (*(v12 + 16))(v14, v17, v11);
  v18 = (*(v12 + 88))(v14, v11);
  if (v18 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction.inPast(_:) || v18 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction.inNext(_:))
  {
    v20 = v18 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction.inPast(_:);
    (*(v12 + 8))(v17, v11);
    v21 = *(v3 + qword_10077C190);
    *(v3 + qword_10077C190) = v20;
    sub_100303900(v21);
    v22 = REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.magnitude.getter();
    sub_100302E48(v22);
    REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.units.getter();
    v23 = v30;
    (*(v6 + 16))(v30, v10, v5);
    v24 = (*(v6 + 88))(v23, v5);
    if (v24 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units.hour(_:))
    {
      v25 = 0;
    }

    else if (v24 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units.day(_:))
    {
      v25 = 1;
    }

    else if (v24 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units.week(_:))
    {
      v25 = 2;
    }

    else if (v24 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units.month(_:))
    {
      v25 = 3;
    }

    else
    {
      if (v24 != enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units.year(_:))
      {
        goto LABEL_17;
      }

      v25 = 4;
    }

    (*(v6 + 8))(v10, v5);
    v26 = *(v3 + qword_10077C1A0);
    *(v3 + qword_10077C1A0) = v25;
    sub_1003039D0(v26);
    [*(v3 + qword_10077C180) setOn:REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.includePastDue.getter() & 1];
    v27 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
    return (*(*(v27 - 8) + 8))(a1, v27);
  }

  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
LABEL_17:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100302C64(__n128 a1)
{
  v2 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction();
  v9 = __chkstk_darwin(v6);
  v10 = *(v1 + qword_10077C190);
  v11 = &enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction.inPast(_:);
  if (!v10)
  {
    v11 = &enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction.inNext(_:);
  }

  (*(v8 + 104))(&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *v11, v9);
  (*(v3 + 104))(v5, **(&off_10071F9D8 + *(v1 + qword_10077C1A0)), v2);
  if ((v10 & 1) == 0)
  {
    [*(v1 + qword_10077C180) isOn];
  }

  return REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.init(direction:magnitude:units:includePastDue:)();
}

id sub_100302E48(id result)
{
  v2 = qword_10077C198;
  v3 = *(v1 + qword_10077C198);
  *(v1 + qword_10077C198) = result;
  if (v3 == result)
  {
    return result;
  }

  v4 = *(v1 + qword_10077C170);
  result = [v4 numberOfComponents];
  v5 = *(v1 + qword_10077C188 + 8);
  v6 = v5[2];
  if (v6 < 2)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v5[5] < result)
  {
    v7 = *(v1 + v2);
    if (__OFSUB__(v7, 1))
    {
LABEL_14:
      __break(1u);
      return result;
    }

    result = [v4 selectRow:v7 - 1 inComponent:? animated:?];
    v6 = v5[2];
  }

  if (v6 < 3)
  {
    goto LABEL_12;
  }

  result = [v4 reloadComponent:v5[6]];
  if (!v5[2])
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = v5[4];

  return [v4 reloadComponent:v8];
}