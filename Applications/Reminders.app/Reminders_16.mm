void sub_1001A8128(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = 252 - (1u >> (8 * v5));
  if (v5 >= 4)
  {
    v6 = 252;
  }

  v7 = v5 + 1;
  if (v6 >= a3)
  {
    v8 = 0;
    if (v6 < a2)
    {
      goto LABEL_15;
    }

LABEL_19:
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        *&a1[v7] = 0;
        if (!a2)
        {
          return;
        }

LABEL_31:
        a1[v5] = -a2;
        return;
      }

      *&a1[v7] = 0;
    }

    else if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  v8 = 1;
  if (v7 <= 3)
  {
    v9 = ((~(-1 << (8 * v7)) + a3 - v6) >> (8 * v7)) + 1;
    v10 = HIWORD(v9);
    if (v9 < 0x100)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    if (v9 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v10)
    {
      v8 = 4;
    }

    else
    {
      v8 = v12;
    }
  }

  if (v6 >= a2)
  {
    goto LABEL_19;
  }

LABEL_15:
  v13 = ~v6 + a2;
  if (v7 >= 4)
  {
    bzero(a1, v7);
    *a1 = v13;
    v14 = 1;
    if (v8 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  v14 = (v13 >> (8 * v7)) + 1;
  if (v5 == -1)
  {
LABEL_35:
    if (v8 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  v15 = v13 & ~(-1 << (8 * v7));
  bzero(a1, v7);
  if (v7 == 3)
  {
    *a1 = v15;
    a1[2] = BYTE2(v15);
    goto LABEL_35;
  }

  if (v7 == 2)
  {
    *a1 = v15;
    if (v8 > 1)
    {
LABEL_39:
      if (v8 == 2)
      {
        *&a1[v7] = v14;
      }

      else
      {
        *&a1[v7] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v13;
    if (v8 > 1)
    {
      goto LABEL_39;
    }
  }

LABEL_36:
  if (v8)
  {
    a1[v7] = v14;
  }
}

uint64_t sub_1001A82F0(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 64);
  v3 = a1[v2];
  v4 = v3 - 3;
  if (v3 >= 3)
  {
    if (v2 <= 3)
    {
      v5 = *(*(*(a2 + 16) - 8) + 64);
    }

    else
    {
      v5 = 4;
    }

    if (v5 <= 1)
    {
      if (!v5)
      {
        return v3;
      }

      v6 = *a1;
    }

    else if (v5 == 2)
    {
      v6 = *a1;
    }

    else if (v5 == 3)
    {
      v6 = *a1 | (a1[2] << 16);
    }

    else
    {
      v6 = *a1;
    }

    v7 = (v6 | (v4 << (8 * v2))) + 3;
    LODWORD(v3) = v6 + 3;
    if (v2 >= 4)
    {
      return v3;
    }

    else
    {
      return v7;
    }
  }

  return v3;
}

void sub_1001A8384(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (a2 > 2)
  {
    v4 = a2 - 3;
    if (v3 < 4)
    {
      a1[v3] = (v4 >> (8 * v3)) + 3;
      if (v3)
      {
        v6 = v4 & ~(-1 << (8 * v3));
        bzero(a1, v3);
        if (v3 == 3)
        {
          *a1 = v6;
          a1[2] = BYTE2(v6);
        }

        else if (v3 == 2)
        {
          *a1 = v6;
        }

        else
        {
          *a1 = v4;
        }
      }
    }

    else
    {
      a1[v3] = 3;
      bzero(a1, v3);
      *a1 = v4;
    }
  }

  else
  {
    a1[v3] = a2;
  }
}

uint64_t sub_1001A84CC()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100771CF0);
  v1 = sub_100003E30(v0, qword_100771CF0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

BOOL sub_1001A8668(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_1001AA540(v5, v7);
}

void sub_1001A86C4()
{
  v1 = v0;
  type metadata accessor for TTRUserDefaults();
  v2 = static TTRUserDefaults.appUserDefaults.getter();
  TTRUserDefaults.animationSlowModeEnabled.getter();

  type metadata accessor for TTRIAnimationSlowMode();
  swift_allocObject();
  TTRIAnimationSlowMode.init(isSlowModeEnabled:)();
  v3 = 0.15;
  if (v1[OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_selectedStateShowsPinnedListColor])
  {
    v3 = 0.25;
  }

  v4 = TTRIAnimationSlowMode.adjust(_:)(v3);
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  v6 = objc_allocWithZone(UIViewPropertyAnimator);
  v10[4] = sub_1001AA5CC;
  v10[5] = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10001047C;
  v10[3] = &unk_1007199D8;
  v7 = _Block_copy(v10);
  v8 = v1;

  v9 = [v6 initWithDuration:v7 controlPoint1:v4 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
  _Block_release(v7);
  [v9 startAnimation];
}

void sub_1001A88C8(void *a1, uint64_t a2, uint64_t a3, SEL *a4, SEL *a5)
{
  ObjectType = swift_getObjectType();
  v14.receiver = a1;
  v14.super_class = ObjectType;
  v10 = *a4;
  v11 = a1;
  LODWORD(v10) = objc_msgSendSuper2(&v14, v10);
  v13.receiver = v11;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, *a5, a3);
  v12.receiver = v11;
  v12.super_class = ObjectType;
  if (v10 != objc_msgSendSuper2(&v12, *a4))
  {
    sub_1001A86C4();
  }
}

void sub_1001A8A4C(void *a1, uint64_t a2)
{
  v12.receiver = v2;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "didUpdateFocusInContext:withAnimationCoordinator:", a1, a2);
  v5 = [a1 nextFocusedView];
  if (v5)
  {
    v6 = v5;
    sub_100003540(0, &qword_10076B020, UIView_ptr);
    v7 = v2;
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      v9 = &v7[OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_delegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v10 = *(v9 + 1);
        ObjectType = swift_getObjectType();
        (*(v10 + 24))(v7, ObjectType, v10);
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_1001A8BD0(uint64_t a1)
{
  result = static REMFeatureFlags.pinnedListTileNewStyleEnabled.getter();
  v2 = 12.0;
  if (result)
  {
    v2 = 16.0;
  }

  qword_100771D08 = *&v2;
  return result;
}

UIAccessibilityTraits sub_1001A8C64()
{
  ObjectType = swift_getObjectType();
  v2 = UIAccessibilityTraitButton;
  if (([v0 isUserInteractionEnabled] & 1) == 0)
  {
    v3 = UIAccessibilityTraitNotEnabled;
    if ((UIAccessibilityTraitNotEnabled & ~v2) == 0)
    {
      v3 = 0;
    }

    v2 |= v3;
  }

  v7.receiver = v0;
  v7.super_class = ObjectType;
  if (objc_msgSendSuper2(&v7, "isSelected"))
  {
    v4 = UIAccessibilityTraitSelected;
    if ((UIAccessibilityTraitSelected & ~v2) == 0)
    {
      v4 = 0;
    }

    v2 |= v4;
  }

  v5 = UIAccessibilityTraitStaticText;
  if ((UIAccessibilityTraitStaticText & ~v2) == 0)
  {
    v5 = 0;
  }

  return v5 | v2;
}

uint64_t sub_1001A8D98()
{
  v1 = type metadata accessor for Date();
  v112 = *(v1 - 8);
  __chkstk_darwin(v1);
  v111 = &v108 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v115 = *(v3 - 8);
  v116 = v3;
  __chkstk_darwin(v3);
  v114 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v108 - v6;
  v8 = type metadata accessor for TTRAccountsListsViewModel.SmartList();
  v118 = *(v8 - 8);
  v119 = v8;
  __chkstk_darwin(v8);
  v117 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&qword_100771DE0, &qword_100634258);
  __chkstk_darwin(v10 - 8);
  v113 = &v108 - v11;
  v12 = type metadata accessor for TTRAccountsListsViewModel.List();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v120 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100058000(&qword_100771DD0, qword_100634780);
  __chkstk_darwin(v15 - 8);
  v17 = &v108 - v16;
  v124 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v18 = *(v124 - 8);
  __chkstk_darwin(v124);
  v20 = &v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v22 = __chkstk_darwin(v21).n128_u64[0];
  v122 = &v108 - v23;
  v24 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_titleLabel;
  v25 = *(v0 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_titleLabel);
  if (!v25)
  {
    __break(1u);
    goto LABEL_43;
  }

  v26 = [v25 text];
  v110 = v1;
  if (v26)
  {
    v27 = v26;
    v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v123 = v28;
  }

  else
  {
    v121 = static TTRAccesibility.General.Label.Untitled.getter();
    v123 = v29;
  }

  v30 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_pinnedList;
  swift_beginAccess();
  sub_10002C688(v0 + v30, v17);
  v31 = v18;
  v32 = v124;
  if ((*(v18 + 48))(v17, 1, v124) == 1)
  {
    sub_1000079B4(v17, &qword_100771DD0, qword_100634780);
    static TTRAccesibility.AccountsList.Format.Name_ItemCount.getter();
    sub_100058000(&unk_100786CB0, &qword_100636EF0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_10062D3F0;
    *(v33 + 56) = &type metadata for String;
    v34 = sub_10005C390();
    v35 = v123;
    *(v33 + 32) = v121;
    *(v33 + 40) = v35;
    v36 = *(v0 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_count);
    *(v33 + 96) = &type metadata for Int;
    *(v33 + 104) = &protocol witness table for Int;
    *(v33 + 64) = v34;
    *(v33 + 72) = v36;
    v37 = String.init(format:_:)();

    return v37;
  }

  v109 = v12;
  v38 = v122;
  (*(v18 + 32))(v122, v17, v32);
  (*(v18 + 16))(v20, v38, v32);
  v39 = (*(v18 + 88))(v20, v32);
  if (v39 != enum case for TTRAccountsListsViewModel.PinnedList.predefinedSmartList(_:))
  {
    if (v39 != enum case for TTRAccountsListsViewModel.PinnedList.list(_:))
    {
LABEL_44:
      if (qword_100766FD0 != -1)
      {
        swift_once();
      }

      v102 = type metadata accessor for Logger();
      sub_100003E30(v102, qword_100771CF0);
      v103 = sub_100008E04(_swiftEmptyArrayStorage);
      v104 = sub_100008E04(_swiftEmptyArrayStorage);
      v105 = "Unknown pinned list type";
      v106 = 24;
      goto LABEL_47;
    }

    (*(v18 + 96))(v20, v32);
    v47 = v13;
    (*(v13 + 32))(v120, v20, v109);
    v48 = *(v0 + v24);
    if (v48)
    {
      v49 = v48;

      v50 = [v49 text];

      v51 = v113;
      if (v50)
      {
        v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v54 = v53;
      }

      else
      {
        v52 = static TTRAccesibility.General.Label.Untitled.getter();
        v54 = v66;
      }

      sub_100058000(&unk_100771E10, &qword_100634270);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_10062D400;
      *(v67 + 32) = v52;
      *(v67 + 40) = v54;
      v68 = [objc_opt_self() currentRequest];
      if (v68)
      {
        v69 = v68;
        v70 = [v68 technology];

        LOBYTE(v69) = AXTechnology.ttrShouldProvideAdditionalContext.getter();
        if (v69)
        {
          v71 = static TTRAccesibility.AccountsList.Attributes.Pinned.getter();
          v74 = *(v67 + 16);
          v73 = *(v67 + 24);
          if (v74 >= v73 >> 1)
          {
            v99 = v71;
            v100 = v72;
            v101 = sub_100546970((v73 > 1), v74 + 1, 1, v67);
            v72 = v100;
            v67 = v101;
            v71 = v99;
          }

          *(v67 + 16) = v74 + 1;
          v75 = v67 + 16 * v74;
          *(v75 + 32) = v71;
          *(v75 + 40) = v72;
        }
      }

      TTRAccountsListsViewModel.List.sharingContactsData.getter();
      v76 = type metadata accessor for TTRAccountsListsViewModel.SharingContactsData();
      v77 = *(v76 - 8);
      if ((*(v77 + 48))(v51, 1, v76) == 1)
      {
        sub_1000079B4(v51, &qword_100771DE0, &qword_100634258);
      }

      else
      {
        TTRAccountsListsViewModel.SharingContactsData.contacts.getter();
        (*(v77 + 8))(v51, v76);
        v78 = Array<A>.ttrAccessibilitySharingSummary()();
        v80 = v79;

        if (v80)
        {
          v82 = *(v67 + 16);
          v81 = *(v67 + 24);
          if (v82 >= v81 >> 1)
          {
            v67 = sub_100546970((v81 > 1), v82 + 1, 1, v67);
          }

          *(v67 + 16) = v82 + 1;
          v83 = v67 + 16 * v82;
          *(v83 + 32) = v78;
          *(v83 + 40) = v80;
        }
      }

      if (TTRAccountsListsViewModel.List.isCustomSmartList.getter())
      {
        v84 = static TTRAccesibility.AccountsList.Label.SmartList.getter();
        v87 = *(v67 + 16);
        v86 = *(v67 + 24);
        if (v87 >= v86 >> 1)
        {
          v96 = v84;
          v97 = v85;
          v98 = sub_100546970((v86 > 1), v87 + 1, 1, v67);
          v85 = v97;
          v67 = v98;
          v84 = v96;
        }

        *(v67 + 16) = v87 + 1;
        v88 = v67 + 16 * v87;
        *(v88 + 32) = v84;
        *(v88 + 40) = v85;
      }

      v125 = v67;
      static TTRAccesibility.General.Label.Separator.getter();
      sub_100058000(&unk_100781F20, &unk_10062D7E0);
      sub_10006089C();
      v89 = BidirectionalCollection<>.joined(separator:)();
      v91 = v90;

      static TTRAccesibility.AccountsList.Format.Name_ItemCount.getter();
      sub_100058000(&unk_100786CB0, &qword_100636EF0);
      v92 = swift_allocObject();
      *(v92 + 16) = xmmword_10062D3F0;
      *(v92 + 56) = &type metadata for String;
      *(v92 + 64) = sub_10005C390();
      *(v92 + 32) = v89;
      *(v92 + 40) = v91;
      v93 = v120;
      v94 = TTRAccountsListsViewModel.List.count.getter();
      *(v92 + 96) = &type metadata for Int;
      *(v92 + 104) = &protocol witness table for Int;
      *(v92 + 72) = v94;
      v37 = String.init(format:_:)();

      (*(v47 + 8))(v93, v109);
      (*(v18 + 8))(v122, v124);
      return v37;
    }

LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  (*(v18 + 96))(v20, v32);
  v40 = v117;
  v41 = v118;
  v42 = v119;
  (*(v118 + 32))(v117, v20, v119);
  TTRAccountsListsViewModel.SmartList.type.getter();
  v43 = TTRListType.PredefinedSmartListType.isCountHidden.getter();
  v45 = v115;
  v44 = v116;
  (*(v115 + 8))(v7, v116);
  if (v43)
  {
    v46 = v123;
  }

  else
  {
    static TTRAccesibility.AccountsList.Format.Name_ItemCount.getter();
    sub_100058000(&unk_100786CB0, &qword_100636EF0);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_10062D3F0;
    *(v55 + 56) = &type metadata for String;
    *(v55 + 64) = sub_10005C390();
    v56 = v123;
    *(v55 + 32) = v121;
    *(v55 + 40) = v56;

    v57 = TTRAccountsListsViewModel.SmartList.count.getter();
    *(v55 + 96) = &type metadata for Int;
    *(v55 + 104) = &protocol witness table for Int;
    *(v55 + 72) = v57;
    v121 = String.init(format:_:)();
    v46 = v58;
  }

  v59 = v114;
  TTRAccountsListsViewModel.SmartList.type.getter();
  v60 = (*(v45 + 88))(v59, v44);
  if (v60 == enum case for TTRListType.PredefinedSmartListType.today(_:))
  {

    v61 = v111;
    Date.init()();
    v62 = Date.rem_localizedTodayString.getter();
    v64 = v63;
    (*(v112 + 8))(v61, v110);
    sub_100058000(&unk_100771E10, &qword_100634270);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_10062D3F0;
    *(v65 + 32) = v121;
    *(v65 + 40) = v46;
    *(v65 + 48) = v62;
    *(v65 + 56) = v64;
    v125 = v65;
    static TTRAccesibility.General.Label.Separator.getter();
    sub_100058000(&unk_100781F20, &unk_10062D7E0);
    sub_10006089C();
    v37 = BidirectionalCollection<>.joined(separator:)();

    (*(v41 + 8))(v40, v42);
    (*(v31 + 8))(v122, v124);
  }

  else
  {
    if (v60 != enum case for TTRListType.PredefinedSmartListType.scheduled(_:) && v60 != enum case for TTRListType.PredefinedSmartListType.all(_:) && v60 != enum case for TTRListType.PredefinedSmartListType.flagged(_:) && v60 != enum case for TTRListType.PredefinedSmartListType.assigned(_:) && v60 != enum case for TTRListType.PredefinedSmartListType.siriFoundInApps(_:) && v60 != enum case for TTRListType.PredefinedSmartListType.completed(_:))
    {
      while (1)
      {
        if (qword_100766FD0 != -1)
        {
          swift_once();
        }

        v107 = type metadata accessor for Logger();
        sub_100003E30(v107, qword_100771CF0);
        v103 = sub_100008E04(_swiftEmptyArrayStorage);
        v104 = sub_100008E04(_swiftEmptyArrayStorage);
        v105 = "Unknown smart list type";
        v106 = 23;
LABEL_47:
        sub_1003F9818(v105, v106, 2uLL, v103, v104);
        __break(1u);
      }
    }

    (*(v41 + 8))(v40, v42);
    (*(v31 + 8))(v122, v124);
    return v121;
  }

  return v37;
}

uint64_t sub_1001A9BB8()
{
  result = *(v0 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_titleLabel);
  if (result)
  {
    v2 = [result text];
    if (v2)
    {
      v3 = v2;
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v5;
    }

    else
    {
      v4 = static TTRAccesibility.General.Label.Untitled.getter();
      v6 = v7;
    }

    sub_100058000(&unk_100771E10, &qword_100634270);
    result = swift_allocObject();
    *(result + 16) = xmmword_10062D400;
    *(result + 32) = v4;
    *(result + 40) = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1001A9D7C()
{
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v9, "accessibilityCustomActions");
  if (v1)
  {
    v2 = v1;
    sub_100003540(0, &qword_10076BCE0, UIAccessibilityCustomAction_ptr);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v10 = v3;
  v4 = &v0[OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 32))(v0, ObjectType, v5);
    swift_unknownObjectRelease();
    if (v7)
    {
      sub_1000816D8(v7);
      v3 = v10;
    }
  }

  if (v3 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      return v3;
    }

    goto LABEL_9;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:

    return 0;
  }

  return v3;
}

void *sub_1001AA0A0(unint64_t a1, id a2)
{
  v4 = [a2 view];
  if (!v4)
  {

    return a1;
  }

  v5 = v4;
  if (qword_100766FD8 != -1)
  {
    swift_once();
  }

  v6 = *&qword_100771D08;
  v7 = [objc_allocWithZone(UIDragPreviewParameters) init];
  [v2 bounds];
  v12 = [objc_opt_self() bezierPathWithRoundedRect:v8 cornerRadius:{v9, v10, v11, v6}];
  [v7 setVisiblePath:v12];

  if (!(a1 >> 62))
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  if (!v13)
  {
LABEL_15:

    return _swiftEmptyArrayStorage;
  }

LABEL_6:
  v25 = _swiftEmptyArrayStorage;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v13 & 0x8000000000000000) == 0)
  {
    v15 = 0;
    v23 = a1 & 0xC000000000000001;
    v16 = a1;
    do
    {
      if (v23)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v17 = *(a1 + 8 * v15 + 32);
      }

      v18 = v17;
      ++v15;
      v19 = swift_allocObject();
      *(v19 + 16) = v5;
      *(v19 + 24) = v7;
      aBlock[4] = sub_1001AA648;
      aBlock[5] = v19;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100313CFC;
      aBlock[3] = &unk_100719AA0;
      v20 = _Block_copy(aBlock);
      v21 = v7;
      v22 = v5;

      [v18 setPreviewProvider:v20];
      _Block_release(v20);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      a1 = v16;
    }

    while (v13 != v15);

    return v25;
  }

  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for TTRIPinnedListControl.ControlMargins(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 49))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRIPinnedListControl.ControlMargins(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 49) = v3;
  return result;
}

BOOL sub_1001AA540(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    return (*(a2 + 48) & 1) == 0 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*(a1 + 16), *(a2 + 16)), vceqq_f64(*(a1 + 32), *(a2 + 32))), xmmword_100634150)) & 0xF) == 0;
  }

  return (*(a2 + 48) & 1) != 0;
}

unint64_t sub_1001AA5F0()
{
  result = qword_100771DE8;
  if (!qword_100771DE8)
  {
    type metadata accessor for ListEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100771DE8);
  }

  return result;
}

id sub_1001AA648()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = objc_allocWithZone(UIDragPreview);

  return [v3 initWithView:v1 parameters:v2];
}

void sub_1001AA694(__n128 a1)
{
  *(v1 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_isDropTarget) = 0;
  v2 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_pinnedList;
  v3 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  *(v1 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_count) = 0;
  *(v1 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_usesLongTitle) = 0;
  *(v1 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_selectedStateShowsPinnedListColor) = 0;
  *(v1 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_dynamicDateGlyphCache) = 0;
  *(v1 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_gradientBackgroundView) = 0;
  *(v1 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_pinnedListBackgroundView) = 0;
  *(v1 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_badgeView) = 0;
  *(v1 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_countLabel) = 0;
  *(v1 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_titleLabel) = 0;
  *(v1 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_stackedAvatarsView) = 0;
  *(v1 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_customSmartListIconImageView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1001AA7E4(void *a1)
{
  v1 = [a1 view];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [objc_allocWithZone(UIPreviewParameters) init];
  v4 = [objc_opt_self() clearColor];
  [v3 setBackgroundColor:v4];

  v5 = [objc_allocWithZone(UITargetedPreview) initWithView:v2 parameters:v3];
  return v5;
}

void sub_1001AA8D4(uint64_t a1)
{
  sub_1001AAABC(a1, v11);
  if (v12)
  {
    sub_1001AAB2C();
    if (swift_dynamicCast())
    {
      v1 = [v10 hasMarkedText];
      v2 = [v10 text];
      if (v2)
      {
        v3 = v2;
        v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v6 = v5;
      }

      else
      {
        v4 = 0;
        v6 = 0xE000000000000000;
      }

      v7._countAndFlagsBits = v4;
      v7._object = v6;
      object = TTRHashtagAssociationPresenterCapability.validateNewHashtagName(_:hasMarkedText:)(v7, v1).value._object;

      if (object)
      {
        v9 = String._bridgeToObjectiveC()();

        [v10 setText:v9];
      }
    }
  }

  else
  {
    sub_10000B070(v11);
  }
}

uint64_t sub_1001AAABC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10076AE40, &qword_10062EE50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001AAB2C()
{
  result = qword_100771E60;
  if (!qword_100771E60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100771E60);
  }

  return result;
}

void sub_1001AAB78(uint64_t a1)
{
  type metadata accessor for TTRITreeViewDropProposal(319);
  if (v2 <= 0x3F)
  {
    sub_1001C1A4C(319);
    if (v4 <= 0x3F)
    {
      type metadata accessor for TTRITreeViewDropUpdateCoordinator.HitTestResult(255, *(a1 + 80), *(a1 + 88), v3);
      type metadata accessor for Optional();
      if (v5 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

void sub_1001AACA0()
{
  v1 = v0;
  v2 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  __chkstk_darwin(v2 - 8);
  v52 = &v46 - v3;
  v60 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v4 = *(v60 - 8);
  __chkstk_darwin(v60);
  v51 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v50 = &v46 - v7;
  v8 = type metadata accessor for IndexPath();
  v61 = *(v8 - 8);
  __chkstk_darwin(v8);
  v63 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = qword_1007A84A0;
  swift_beginAccess();
  v11 = sub_100058000(qword_100771F18, &qword_100634320);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v0 + v10, 1, v11) == 1)
  {
    goto LABEL_46;
  }

  if ([*(v0 + v10) localDragSession])
  {
    swift_getObjectType();
    v58 = *(v0 + qword_100771E88);
    Strong = swift_unknownObjectUnownedLoadStrong();
    v14 = sub_10039C078(Strong);

    swift_unknownObjectRelease();
    if (v14)
    {
      v15 = qword_1007A8808;
      swift_beginAccess();
      v16 = *(v14 + v15);

      v17 = v16 + 56;
      v18 = 1 << *(v16 + 32);
      v19 = -1;
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      v20 = v19 & *(v16 + 56);
      v21 = (v18 + 63) >> 6;
      v57 = v61 + 16;
      v48 = (v4 + 16);
      v54 = (v61 + 8);
      v55 = (v4 + 56);
      v53 = (v4 + 48);
      v46 = v4;
      v47 = (v4 + 32);
      v59 = v16;

      v22 = 0;
      v49 = _swiftEmptyArrayStorage;
      v23 = v52;
      v56 = v8;
      while (1)
      {
        v24 = v22;
        if (!v20)
        {
          while (1)
          {
            v22 = v24 + 1;
            if (__OFADD__(v24, 1))
            {
              break;
            }

            if (v22 >= v21)
            {

              return;
            }

            v20 = *(v17 + 8 * v22);
            ++v24;
            if (v20)
            {
              goto LABEL_11;
            }
          }

          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
          return;
        }

LABEL_11:
        (*(v61 + 16))(v63, *(v59 + 48) + *(v61 + 72) * (__clz(__rbit64(v20)) | (v22 << 6)), v8);
        v25 = sub_1000C8504();
        v62 = v26;
        v27 = *(v25 + 16);
        v28 = IndexPath.section.getter();
        if (v28 < 0 || v28 >= v27)
        {
          break;
        }

        v29 = IndexPath.section.getter();
        if ((v29 & 0x8000000000000000) != 0)
        {
          goto LABEL_41;
        }

        if (v29 >= *(v25 + 16))
        {
          goto LABEL_42;
        }

        v30 = *(v25 + 16 * v29 + 40);
        if (v30 >> 62)
        {
          v44 = _CocoaArrayWrapper.endIndex.getter();
          if (v44 < 0)
          {
            goto LABEL_43;
          }

          v31 = v44;
        }

        else
        {
          v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v32 = IndexPath.row.getter();
        if ((v32 & 0x8000000000000000) != 0 || v32 >= v31)
        {

          v23 = v52;
          goto LABEL_26;
        }

        v33 = IndexPath.row.getter();
        if ((v30 & 0xC000000000000001) != 0)
        {
          v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v33 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          if (v33 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_45;
          }

          v34 = *(v30 + 8 * v33 + 32);
        }

        v35 = *(*v34 + 144);
        swift_beginAccess();
        v23 = v52;
        (*v48)(v52, v34 + v35, v60);

        v36 = 0;
LABEL_27:
        v8 = v56;
        v20 &= v20 - 1;
        v37 = v60;
        (*v55)(v23, v36, 1, v60);
        (*v54)(v63, v8);
        if ((*v53)(v23, 1, v37) == 1)
        {
          sub_1000079B4(v23, &unk_100771B40, &unk_10062FB70);
        }

        else
        {
          v38 = *v47;
          v39 = v50;
          v40 = v60;
          (*v47)(v50, v23, v60);
          v38(v51, v39, v40);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v49 = sub_100547678(0, *(v49 + 2) + 1, 1, v49);
          }

          v42 = *(v49 + 2);
          v41 = *(v49 + 3);
          if (v42 >= v41 >> 1)
          {
            v49 = sub_100547678((v41 > 1), v42 + 1, 1, v49);
          }

          v43 = v49;
          *(v49 + 2) = v42 + 1;
          v38(&v43[((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v42], v51, v60);
        }
      }

LABEL_26:

      v36 = 1;
      goto LABEL_27;
    }
  }

  if (v12(v1 + v10, 1, v11) == 1)
  {
    goto LABEL_47;
  }

  v45 = [*(v1 + v10) items];
  sub_1000776A8();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
}

void sub_1001AB458()
{
  v1 = v0;
  v2 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v2 - 8);
  v52 = &v46 - v3;
  v60 = type metadata accessor for TTRRemindersListViewModel.Item();
  v4 = *(v60 - 8);
  __chkstk_darwin(v60);
  v51 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v50 = &v46 - v7;
  v8 = type metadata accessor for IndexPath();
  v61 = *(v8 - 8);
  __chkstk_darwin(v8);
  v63 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = qword_1007A84A0;
  swift_beginAccess();
  v11 = sub_100058000(qword_100771F18, &qword_100634320);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v0 + v10, 1, v11) == 1)
  {
    goto LABEL_46;
  }

  if ([*(v0 + v10) localDragSession])
  {
    swift_getObjectType();
    v58 = *(v0 + qword_100771E88);
    Strong = swift_unknownObjectUnownedLoadStrong();
    v14 = sub_10039C078(Strong);

    swift_unknownObjectRelease();
    if (v14)
    {
      v15 = qword_1007A8808;
      swift_beginAccess();
      v16 = *(v14 + v15);

      v17 = v16 + 56;
      v18 = 1 << *(v16 + 32);
      v19 = -1;
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      v20 = v19 & *(v16 + 56);
      v21 = (v18 + 63) >> 6;
      v57 = v61 + 16;
      v48 = (v4 + 16);
      v54 = (v61 + 8);
      v55 = (v4 + 56);
      v53 = (v4 + 48);
      v46 = v4;
      v47 = (v4 + 32);
      v59 = v16;

      v22 = 0;
      v49 = _swiftEmptyArrayStorage;
      v23 = v52;
      v56 = v8;
      while (1)
      {
        v24 = v22;
        if (!v20)
        {
          while (1)
          {
            v22 = v24 + 1;
            if (__OFADD__(v24, 1))
            {
              break;
            }

            if (v22 >= v21)
            {

              return;
            }

            v20 = *(v17 + 8 * v22);
            ++v24;
            if (v20)
            {
              goto LABEL_11;
            }
          }

          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
          return;
        }

LABEL_11:
        (*(v61 + 16))(v63, *(v59 + 48) + *(v61 + 72) * (__clz(__rbit64(v20)) | (v22 << 6)), v8);
        v25 = sub_1000C84C8();
        v62 = v26;
        v27 = *(v25 + 16);
        v28 = IndexPath.section.getter();
        if (v28 < 0 || v28 >= v27)
        {
          break;
        }

        v29 = IndexPath.section.getter();
        if ((v29 & 0x8000000000000000) != 0)
        {
          goto LABEL_41;
        }

        if (v29 >= *(v25 + 16))
        {
          goto LABEL_42;
        }

        v30 = *(v25 + 16 * v29 + 40);
        if (v30 >> 62)
        {
          v44 = _CocoaArrayWrapper.endIndex.getter();
          if (v44 < 0)
          {
            goto LABEL_43;
          }

          v31 = v44;
        }

        else
        {
          v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v32 = IndexPath.row.getter();
        if ((v32 & 0x8000000000000000) != 0 || v32 >= v31)
        {

          v23 = v52;
          goto LABEL_26;
        }

        v33 = IndexPath.row.getter();
        if ((v30 & 0xC000000000000001) != 0)
        {
          v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v33 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          if (v33 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_45;
          }

          v34 = *(v30 + 8 * v33 + 32);
        }

        v35 = *(*v34 + 144);
        swift_beginAccess();
        v23 = v52;
        (*v48)(v52, v34 + v35, v60);

        v36 = 0;
LABEL_27:
        v8 = v56;
        v20 &= v20 - 1;
        v37 = v60;
        (*v55)(v23, v36, 1, v60);
        (*v54)(v63, v8);
        if ((*v53)(v23, 1, v37) == 1)
        {
          sub_1000079B4(v23, &qword_100772140, &qword_10062D9F0);
        }

        else
        {
          v38 = *v47;
          v39 = v50;
          v40 = v60;
          (*v47)(v50, v23, v60);
          v38(v51, v39, v40);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v49 = sub_100547094(0, *(v49 + 2) + 1, 1, v49);
          }

          v42 = *(v49 + 2);
          v41 = *(v49 + 3);
          if (v42 >= v41 >> 1)
          {
            v49 = sub_100547094((v41 > 1), v42 + 1, 1, v49);
          }

          v43 = v49;
          *(v49 + 2) = v42 + 1;
          v38(&v43[((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v42], v51, v60);
        }
      }

LABEL_26:

      v36 = 1;
      goto LABEL_27;
    }
  }

  if (v12(v1 + v10, 1, v11) == 1)
  {
    goto LABEL_47;
  }

  v45 = [*(v1 + v10) items];
  sub_1000776A8();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
}

void *sub_1001ABC10()
{
  result = sub_1001C42C8();
  if (result)
  {
    if ([result localDragSession])
    {
      swift_getObjectType();
      v1 = sub_1001893F4();
      v2 = sub_10039C078(v1);

      swift_unknownObjectRelease();
      if (v2)
      {
        swift_beginAccess();

        sub_100058000(&qword_100772168, &qword_1006344E8);
        sub_1001C4394();
        v3 = Sequence.compactMap<A>(_:)();

        return v3;
      }
    }

    result = sub_1001C42C8();
    if (result)
    {
      v4 = [result items];
      sub_1000776A8();
      v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

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

void sub_1001ABDBC(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v283 = a3;
  v296 = a5;
  v8 = sub_100058000(&qword_100772190, &qword_100634508);
  __chkstk_darwin(v8 - 8);
  v276 = &v243 - v9;
  v10 = sub_100058000(&qword_100772198, &qword_100634510);
  __chkstk_darwin(v10 - 8);
  v262 = &v243 - v11;
  v258 = sub_100058000(&qword_1007721A0, &qword_100634518);
  __chkstk_darwin(v258);
  v257 = &v243 - v12;
  v272 = sub_100058000(&unk_1007721A8, &unk_100634520);
  v271 = *(v272 - 8);
  __chkstk_darwin(v272);
  v250 = &v243 - v13;
  v14 = type metadata accessor for TTRITreeViewDropProposal.Intent(0);
  __chkstk_darwin(v14 - 8);
  v278 = &v243 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v266 = &v243 - v17;
  v269 = sub_100058000(&unk_10076BD90, &qword_10063D3E0);
  __chkstk_darwin(v269);
  v270 = &v243 - v18;
  v19 = sub_100058000(&qword_1007721B8, &qword_100634530);
  __chkstk_darwin(v19 - 8);
  v256 = &v243 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v254 = &v243 - v22;
  __chkstk_darwin(v23);
  v255 = &v243 - v24;
  v259 = sub_100058000(&qword_1007721C0, &qword_100634538);
  __chkstk_darwin(v259);
  v249 = &v243 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v245 = &v243 - v27;
  __chkstk_darwin(v28);
  v247 = &v243 - v29;
  v263 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v268 = *(v263 - 8);
  __chkstk_darwin(v263);
  v253 = &v243 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v248 = &v243 - v32;
  __chkstk_darwin(v33);
  v244 = &v243 - v34;
  __chkstk_darwin(v35);
  v246 = &v243 - v36;
  v37 = sub_100058000(&qword_1007721C8, &qword_100634540);
  __chkstk_darwin(v37 - 8);
  v251 = &v243 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v275 = &v243 - v40;
  __chkstk_darwin(v41);
  v279 = &v243 - v42;
  __chkstk_darwin(v43);
  v264 = &v243 - v44;
  __chkstk_darwin(v45);
  v267 = &v243 - v46;
  __chkstk_darwin(v47);
  v273 = &v243 - v48;
  v49 = sub_100058000(&qword_1007721D0, &qword_100634548);
  __chkstk_darwin(v49 - 8);
  v265 = &v243 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v277 = &v243 - v52;
  v286 = type metadata accessor for IndexPath();
  v285 = *(v286 - 8);
  __chkstk_darwin(v286);
  v252 = &v243 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v260 = &v243 - v55;
  __chkstk_darwin(v56);
  v281 = &v243 - v57;
  v294 = sub_100058000(&qword_1007721D8, &qword_100634550);
  __chkstk_darwin(v294);
  v295 = &v243 - v58;
  v59 = sub_100058000(&unk_1007721E0, &qword_10062FD68);
  __chkstk_darwin(v59 - 8);
  v288 = &v243 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v61);
  v284 = &v243 - v62;
  __chkstk_darwin(v63);
  v65 = &v243 - v64;
  v66 = sub_100058000(&unk_10076BA80, &unk_10062FD70);
  v67 = *(v66 - 8);
  v292 = v66;
  v293 = v67;
  __chkstk_darwin(v66);
  v289 = (&v243 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v69);
  v280 = &v243 - v70;
  __chkstk_darwin(v71);
  v73 = &v243 - v72;
  v74 = sub_100058000(&unk_100780EE0, &unk_10063CB70);
  __chkstk_darwin(v74 - 8);
  v76 = (&v243 - v75);
  v77 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v77 - 8);
  v261 = &v243 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v79);
  v274 = &v243 - v80;
  __chkstk_darwin(v81);
  v282 = &v243 - v82;
  __chkstk_darwin(v83);
  v85 = &v243 - v84;
  v86 = qword_1007A84A0;
  v300 = a2;

  v87 = a4;
  swift_beginAccess();
  sub_10000794C(a1 + v86, v76, &unk_100780EE0, &unk_10063CB70);
  v88 = sub_100058000(qword_100771F18, &qword_100634320);
  if ((*(*(v88 - 8) + 48))(v76, 1, v88) != 1)
  {
    v89 = *v76;
    v90 = v76[1];
    sub_100016588(v76 + *(v88 + 64), v85, &unk_100771B10, qword_10062E540);
    swift_retain_n();
    v297 = v87;
    v290 = v90;
    v291 = v85;
    v91 = v90;
    v299 = v89;
    v92 = a1;
    sub_1001B7938(v91, v89, v85, v73);
    v298 = v73;
    sub_10000794C(v73, v65, &unk_10076BA80, &unk_10062FD70);
    v94 = v292;
    v93 = v293;
    v287 = *(v293 + 56);
    v287(v65, 0, 1, v292);
    v95 = *(*a1 + 120);
    swift_beginAccess();
    v96 = v295;
    v97 = *(v294 + 48);
    sub_10000794C(v65, v295, &unk_1007721E0, &qword_10062FD68);
    v294 = v95;
    sub_10000794C(v92 + v95, &v96[v97], &unk_1007721E0, &qword_10062FD68);
    v98 = *(v93 + 48);
    if (v98(v96, 1, v94) == 1)
    {
      sub_1000079B4(v65, &unk_1007721E0, &qword_10062FD68);
      v99 = v98(&v96[v97], 1, v94);
      v100 = v298;
      if (v99 == 1)
      {
        swift_unknownObjectRelease();

        sub_1000079B4(v96, &unk_1007721E0, &qword_10062FD68);
LABEL_14:
        sub_1000079B4(v100, &unk_10076BA80, &unk_10062FD70);
        sub_1000079B4(v291, &unk_100771B10, qword_10062E540);
        v117 = qword_1007A8498;
        swift_beginAccess();
        sub_1001C4200(v92 + v117, v296);
        v106 = v297;
LABEL_61:

        return;
      }
    }

    else
    {
      v101 = v284;
      sub_10000794C(v96, v284, &unk_1007721E0, &qword_10062FD68);
      if (v98(&v96[v97], 1, v94) != 1)
      {
        v115 = v280;
        sub_100016588(&v96[v97], v280, &unk_10076BA80, &unk_10062FD70);
        v116 = sub_1001BFCFC(v101, v115);
        sub_1000079B4(v115, &unk_10076BA80, &unk_10062FD70);
        sub_1000079B4(v65, &unk_1007721E0, &qword_10062FD68);
        sub_1000079B4(v101, &unk_10076BA80, &unk_10062FD70);
        sub_1000079B4(v96, &unk_1007721E0, &qword_10062FD68);
        v100 = v298;
        if (v116)
        {
          swift_unknownObjectRelease();

          goto LABEL_14;
        }

LABEL_8:
        v102 = v288;
        sub_10000794C(v100, v288, &unk_10076BA80, &unk_10062FD70);
        v287(v102, 0, 1, v94);
        v103 = v294;
        swift_beginAccess();
        sub_10000D184(v102, v92 + v103, &unk_1007721E0, &qword_10062FD68);
        swift_endAccess();
        v104 = v289;
        sub_10000794C(v100, v289, &unk_10076BA80, &unk_10062FD70);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (!EnumCaseMultiPayload)
        {
          v118 = v276;
          sub_100016588(v104, v276, &qword_100772190, &qword_100634508);
          v119 = v300;

          v106 = v297;
          v120 = v297;
          sub_1001BA5CC(v118, v299, v92, v119, v283, v120, v296);
          swift_unknownObjectRelease();

          sub_1000079B4(v118, &qword_100772190, &qword_100634508);
          sub_1000079B4(v100, &unk_10076BA80, &unk_10062FD70);
          v121 = v291;
LABEL_60:
          sub_1000079B4(v121, &unk_100771B10, qword_10062E540);
          goto LABEL_61;
        }

        v106 = v297;
        if (EnumCaseMultiPayload == 1)
        {
          v107 = v282;
          sub_100016588(v104, v282, &unk_100771B10, qword_10062E540);
          v108 = v274;
          sub_10000794C(v107, v274, &unk_100771B10, qword_10062E540);
          v109 = v285;
          v111 = v285 + 48;
          v110 = *(v285 + 48);
          v112 = v286;
          if (v110(v108, 1, v286) == 1)
          {

            v113 = v106;
            sub_1000079B4(v108, &unk_100771B10, qword_10062E540);
            v114 = qword_1007A8498;
            swift_beginAccess();
            sub_1001C4200(v92 + v114, v296);

LABEL_56:
            v241 = v291;
            swift_unknownObjectRelease();
            sub_1000079B4(v107, &unk_100771B10, qword_10062E540);
            sub_1000079B4(v100, &unk_10076BA80, &unk_10062FD70);
            sub_1000079B4(v241, &unk_100771B10, qword_10062E540);
            goto LABEL_61;
          }

          v136 = *(v109 + 32);
          v292 = v109 + 32;
          v289 = v136;
          (v136)(v281, v108, v112);
          v137 = *(v271 + 56);
          v137(v277, 1, 1, v272);

          v295 = v106;
          v138 = v273;
          sub_1001C171C(v299, v273);
          v139 = v267;
          sub_10000794C(v138, v267, &qword_1007721C8, &qword_100634540);
          v293 = v111;
          v294 = v110;
          v140 = v110(v139, 2, v112);
          if (v140)
          {
            if (v140 != 1)
            {
              sub_1001AACA0();
              v190 = v189;
              v192 = v191;
              v193 = v285;
              v194 = v261;
              v146 = v286;
              (*(v285 + 16))(v261, v281, v286);
              (*(v193 + 56))(v194, 0, 1, v146);
              v195 = v255;
              sub_1001AEA30(v190, v192 & 1, v194, v255);

              sub_1000079B4(v194, &unk_100771B10, qword_10062E540);
              v196 = sub_100058000(&unk_1007819B0, &unk_10062FF40);
              if ((*(*(v196 - 8) + 48))(v195, 1, v196) == 1)
              {
                (*(v193 + 8))(v281, v146);
                sub_1000079B4(v195, &qword_1007721B8, &qword_100634530);
                v154 = 0;
                v170 = v266;
                v171 = v265;
                v172 = v264;
                goto LABEL_38;
              }

              v288 = *&v195[*(v196 + 48)];
              v222 = v195;
              v223 = v259;
              v224 = *(v259 + 48);
              v225 = v268;
              v226 = *(v268 + 32);
              v227 = v247;
              v228 = v263;
              v226(v247, v222, v263);
              *&v227[v224] = v288;
              v288 = *&v227[*(v223 + 48)];
              v229 = v246;
              v226(v246, v227, v228);
              v106 = v297;
              v100 = v298;
              v230 = *(v196 + 48);
              v231 = v270;
              (*(v225 + 16))(v270, v229, v228);
              *(v231 + v230) = v288;
              swift_storeEnumTagMultiPayload();
              v154 = sub_1000BDD44(v231, v300, v283, v295);
              sub_1000079B4(v231, &unk_10076BD90, &qword_10063D3E0);
              v232 = v228;
              v197 = v277;
              (*(v225 + 8))(v229, v232);
              (*(v285 + 8))(v281, v146);
              v170 = v266;
              v171 = v265;
              v172 = v264;
LABEL_45:
              sub_100016588(v273, v172, &qword_1007721C8, &qword_100634540);
              v233 = (v294)(v172, 2, v146);
              if (v233)
              {
                if (v233 == 1)
                {
                  v234 = 3;
                  if (v154)
                  {
                    goto LABEL_48;
                  }

LABEL_51:
                  sub_1000079B4(v197, &qword_1007721D0, &qword_100634548);
                  v236 = 1;
                  v234 = 1;
LABEL_55:
                  v107 = v282;
                  v238 = sub_100058000(&qword_100780DC0, &unk_1006344C0);
                  (*(*(v238 - 8) + 56))(v170, v236, 4, v238);
                  v239 = type metadata accessor for TTRITreeViewDropProposal(0);
                  v240 = v296;
                  sub_1001C4264(v170, v296 + *(v239 + 20));

                  *v240 = v234;
                  goto LABEL_56;
                }

                v234 = 2;
                if ((v154 & 1) == 0)
                {
                  goto LABEL_51;
                }
              }

              else
              {
                sub_1000079B4(v172, &qword_1007721C8, &qword_100634540);
                v234 = 3;
                if ((v154 & 1) == 0)
                {
                  goto LABEL_51;
                }
              }

LABEL_48:
              sub_100016588(v197, v171, &qword_1007721D0, &qword_100634548);
              v235 = v272;
              if ((*(v271 + 48))(v171, 1, v272) == 1)
              {
                sub_1000079B4(v171, &qword_1007721D0, &qword_100634548);
                v236 = 2;
              }

              else
              {
                v237 = v250;
                sub_100016588(v171, v250, &unk_1007721A8, &unk_100634520);
                (v289)(v170, v237 + *(v235 + 36), v286);
                v236 = 0;
              }

              goto LABEL_55;
            }

            v141 = v277;
            sub_1000079B4(v277, &qword_1007721D0, &qword_100634548);
            v142 = v272;
            v143 = v285;
            v144 = *(v285 + 16);
            v145 = v281;
            v146 = v286;
            v144(&v141[*(v272 + 36)], v281, v286);
            *v141 = 0;
            v137(v141, 0, 1, v142);
            v147 = v143;
            sub_1001AACA0();
            v149 = v148;
            LOBYTE(v142) = v150;
            v151 = v261;
            v144(v261, v145, v146);
            (*(v147 + 56))(v151, 0, 1, v146);
            v152 = v256;
            sub_1001AEA30(v149, v142 & 1, v151, v256);

            sub_1000079B4(v151, &unk_100771B10, qword_10062E540);
            v153 = sub_100058000(&unk_1007819B0, &unk_10062FF40);
            if ((*(*(v153 - 8) + 48))(v152, 1, v153) == 1)
            {
              (*(v147 + 8))(v145, v146);
              sub_1000079B4(v152, &qword_1007721B8, &qword_100634530);
              v154 = 0;
              v106 = v297;
              v100 = v298;
LABEL_33:
              v170 = v266;
              v171 = v265;
              v172 = v264;
LABEL_38:
              v197 = v277;
              goto LABEL_45;
            }

            v288 = *&v152[*(v153 + 48)];
            v198 = v152;
            v199 = v259;
            v200 = *(v259 + 48);
            v201 = v268;
            v202 = *(v268 + 32);
            v203 = v249;
            v204 = v263;
            v202(v249, v198, v263);
            *&v203[v200] = v288;
            v288 = *&v203[*(v199 + 48)];
            v205 = v248;
            v202(v248, v203, v204);
            v206 = *(v153 + 48);
            v207 = v270;
            (*(v201 + 16))(v270, v205, v204);
            *(v207 + v206) = v288;
            swift_storeEnumTagMultiPayload();
            v154 = sub_1000BDD44(v207, v300, v283, v295);
            sub_1000079B4(v207, &unk_10076BD90, &qword_10063D3E0);
            v208 = v204;
            v197 = v277;
            (*(v201 + 8))(v205, v208);
            (*(v147 + 8))(v281, v146);
            v106 = v297;
            v100 = v298;
          }

          else
          {
            v164 = v260;
            v146 = v286;
            (v289)(v260, v139, v286);
            v165 = v164;
            v166 = v254;
            v167 = v281;
            sub_1001AF758(v164, v281, 0, 0, v254);
            v168 = sub_100058000(&unk_1007819B0, &unk_10062FF40);
            if ((*(*(v168 - 8) + 48))(v166, 1, v168) == 1)
            {
              v169 = *(v285 + 8);
              v169(v165, v146);
              v169(v167, v146);
              sub_1000079B4(v166, &qword_1007721B8, &qword_100634530);
              v154 = 0;
              goto LABEL_33;
            }

            v288 = *(v166 + *(v168 + 48));
            v209 = v259;
            v210 = v166;
            v211 = *(v259 + 48);
            v212 = v285;
            v213 = v268;
            v214 = *(v268 + 32);
            v215 = v245;
            v216 = v263;
            v214(v245, v210, v263);
            *&v215[v211] = v288;
            v288 = *&v215[*(v209 + 48)];
            v217 = v244;
            v214(v244, v215, v216);
            v106 = v297;
            v100 = v298;
            v218 = *(v168 + 48);
            v219 = v270;
            (*(v213 + 16))(v270, v217, v216);
            *(v219 + v218) = v288;
            swift_storeEnumTagMultiPayload();
            v154 = sub_1000BDD44(v219, v300, v283, v295);
            sub_1000079B4(v219, &unk_10076BD90, &qword_10063D3E0);
            v220 = v216;
            v197 = v277;
            (*(v213 + 8))(v217, v220);
            v221 = *(v212 + 8);
            v221(v260, v146);
            v221(v281, v146);
          }

          v170 = v266;
          v171 = v265;
          v172 = v264;
          goto LABEL_45;
        }

        v295 = v106;
        v122 = v279;
        sub_1001C171C(v299, v279);
        v123 = sub_100058000(&qword_100780DC0, &unk_1006344C0);
        v124 = (*(v123 - 8) + 56);
        v125 = v278;
        v294 = *v124;
        (v294)(v278, 1, 4, v123);
        v126 = v275;
        sub_10000794C(v122, v275, &qword_1007721C8, &qword_100634540);
        v127 = *(v285 + 48);
        v128 = v127(v126, 2, v286);
        if (v128)
        {
          if (v128 != 1)
          {
            v160 = v270;
            swift_storeEnumTagMultiPayload();
            v159 = v295;
            v161 = sub_1000BDD44(v160, v300, v283, v295);
            sub_1000079B4(v160, &unk_10076BD90, &qword_10063D3E0);
            if (v161)
            {
              v162 = v251;
              sub_100016588(v122, v251, &qword_1007721C8, &qword_100634540);
              v163 = v127(v162, 2, v286);
              if (v163)
              {
                v156 = v296;
                v158 = v290;
                v157 = v291;
                if (v163 == 1)
                {
                  v155 = 3;
                }

                else
                {
                  v155 = 2;
                }

                goto LABEL_59;
              }

              sub_1000079B4(v162, &qword_1007721C8, &qword_100634540);
              v155 = 3;
            }

            else
            {
              sub_1000079B4(v122, &qword_1007721C8, &qword_100634540);
              v155 = 1;
            }

            v156 = v296;
            v158 = v290;
            v157 = v291;
LABEL_59:
            v242 = type metadata accessor for TTRITreeViewDropProposal(0);
            sub_1001C4264(v125, v156 + *(v242 + 20));

            *v156 = v155;
            swift_unknownObjectRelease();
            sub_1000079B4(v100, &unk_10076BA80, &unk_10062FD70);
            v121 = v157;
            goto LABEL_60;
          }

          sub_1001AACA0();
          v130 = v262;
          sub_1001B5AEC(v131, v129 & 1, v262);

          v132 = sub_100058000(&unk_1007721F0, &unk_100634558);
          if ((*(*(v132 - 8) + 48))(v130, 1, v132) != 1)
          {
            v289 = v124;
            v173 = *(v130 + *(v132 + 48));
            v293 = *(v132 + 64);
            v174 = v258;
            v175 = *(v258 + 48);
            v292 = *(v258 + 64);
            v176 = *(v268 + 32);
            v177 = v257;
            v178 = v263;
            v176(v257, v130, v263);
            *&v177[v175] = v173;
            v179 = v285 + 32;
            v180 = *(v285 + 32);
            v181 = v286;
            v180(&v177[v292], v130 + v293, v286);
            v293 = *&v177[*(v174 + 48)];
            v182 = *(v174 + 64);
            v183 = v253;
            v176(v253, v177, v178);
            v184 = &v177[v182];
            v185 = v252;
            v292 = v179;
            v180(v252, v184, v181);
            v186 = *(sub_100058000(&unk_1007819B0, &unk_10062FF40) + 48);
            v187 = v268;
            v188 = v270;
            (*(v268 + 16))(v270, v183, v178);
            *(v188 + v186) = v293;
            swift_storeEnumTagMultiPayload();
            LOBYTE(v186) = sub_1000BDD44(v188, v300, v283, v295);
            sub_1000079B4(v188, &unk_10076BD90, &qword_10063D3E0);
            (*(v187 + 8))(v183, v178);
            sub_1000079B4(v279, &qword_1007721C8, &qword_100634540);
            if ((v186 & 1) == 0)
            {
              (*(v285 + 8))(v185, v181);
              v155 = 0;
              v156 = v296;
              v106 = v297;
              v100 = v298;
              v158 = v290;
              v157 = v291;
              v125 = v278;
              v159 = v295;
              goto LABEL_59;
            }

            v125 = v278;
            sub_1001C445C(v278, type metadata accessor for TTRITreeViewDropProposal.Intent);
            v180(v125, v185, v181);
            (v294)(v125, 0, 4, v123);
            v155 = 3;
            v156 = v296;
            v106 = v297;
            v100 = v298;
            goto LABEL_26;
          }

          sub_1000079B4(v122, &qword_1007721C8, &qword_100634540);
          v133 = &qword_100772198;
          v134 = &qword_100634510;
          v135 = v130;
        }

        else
        {
          sub_1000079B4(v122, &qword_1007721C8, &qword_100634540);
          v135 = v126;
          v133 = &qword_1007721C8;
          v134 = &qword_100634540;
        }

        sub_1000079B4(v135, v133, v134);
        v155 = 0;
        v156 = v296;
LABEL_26:
        v157 = v291;
        v158 = v290;
        v159 = v295;
        goto LABEL_59;
      }

      sub_1000079B4(v65, &unk_1007721E0, &qword_10062FD68);
      sub_1000079B4(v101, &unk_10076BA80, &unk_10062FD70);
      v100 = v298;
    }

    sub_1000079B4(v96, &qword_1007721D8, &qword_100634550);
    goto LABEL_8;
  }

  __break(1u);
}

void sub_1001AE02C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v80 = a4;
  v7 = sub_100058000(&qword_1007720C8, &qword_100634478);
  __chkstk_darwin(v7 - 8);
  v67 = &v65 - v8;
  v79 = sub_100058000(&unk_1007720D0, &unk_100634480);
  __chkstk_darwin(v79);
  v77 = &v65 - v9;
  v10 = sub_100058000(&unk_10076BBE0, &qword_10062FE18);
  __chkstk_darwin(v10 - 8);
  v72 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v69 = &v65 - v13;
  __chkstk_darwin(v14);
  v81 = &v65 - v15;
  v16 = sub_100058000(&unk_1007720E0, &qword_10062FE20);
  v78 = *(v16 - 8);
  __chkstk_darwin(v16);
  v71 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v68 = &v65 - v19;
  __chkstk_darwin(v20);
  v22 = &v65 - v21;
  v23 = sub_100058000(&unk_100780EE0, &unk_10063CB70);
  __chkstk_darwin(v23 - 8);
  v25 = (&v65 - v24);
  v26 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v26 - 8);
  v66 = &v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v65 - v29;
  v31 = qword_1007A84A0;
  v82 = a2;

  v32 = a3;
  swift_beginAccess();
  sub_10000794C(a1 + v31, v25, &unk_100780EE0, &unk_10063CB70);
  v33 = sub_100058000(qword_100771F18, &qword_100634320);
  if ((*(*(v33 - 8) + 48))(v25, 1, v33) != 1)
  {
    v34 = *v25;
    v35 = v25[1];
    sub_100016588(v25 + *(v33 + 64), v30, &unk_100771B10, qword_10062E540);
    swift_retain_n();
    v36 = v32;
    v74 = v35;
    v75 = v36;
    v73 = v34;
    v76 = v30;
    sub_1001B836C(v35, v34, v30, v22);
    v37 = v81;
    sub_10000794C(v22, v81, &unk_1007720E0, &qword_10062FE20);
    v38 = v78;
    v70 = *(v78 + 56);
    v70(v37, 0, 1, v16);
    v39 = *(*a1 + 120);
    swift_beginAccess();
    v40 = *(v79 + 48);
    v41 = v37;
    v42 = v77;
    sub_10000794C(v41, v77, &unk_10076BBE0, &qword_10062FE18);
    v79 = a1;
    sub_10000794C(a1 + v39, v42 + v40, &unk_10076BBE0, &qword_10062FE18);
    v43 = *(v38 + 48);
    if (v43(v42, 1, v16) == 1)
    {
      sub_1000079B4(v81, &unk_10076BBE0, &qword_10062FE18);
      if (v43(v42 + v40, 1, v16) == 1)
      {
        swift_unknownObjectRelease();

        sub_1000079B4(v22, &unk_1007720E0, &qword_10062FE20);
        sub_1000079B4(v76, &unk_100771B10, qword_10062E540);
        sub_1000079B4(v42, &unk_10076BBE0, &qword_10062FE18);
        v44 = v75;
LABEL_14:
        v59 = v79;
        v60 = qword_1007A8498;
        swift_beginAccess();
        sub_1001C4200(v59 + v60, v80);
LABEL_18:

        return;
      }
    }

    else
    {
      v45 = v81;
      v46 = v69;
      sub_10000794C(v42, v69, &unk_10076BBE0, &qword_10062FE18);
      if (v43(v42 + v40, 1, v16) != 1)
      {
        v58 = v68;
        sub_100016588(v42 + v40, v68, &unk_1007720E0, &qword_10062FE20);
        LODWORD(v78) = sub_1001C04A8(v46, v58);
        sub_1000079B4(v58, &unk_1007720E0, &qword_10062FE20);
        sub_1000079B4(v45, &unk_10076BBE0, &qword_10062FE18);
        sub_1000079B4(v46, &unk_1007720E0, &qword_10062FE20);
        sub_1000079B4(v42, &unk_10076BBE0, &qword_10062FE18);
        v44 = v75;
        if (v78)
        {
          swift_unknownObjectRelease();

          sub_1000079B4(v22, &unk_1007720E0, &qword_10062FE20);
          sub_1000079B4(v76, &unk_100771B10, qword_10062E540);
          goto LABEL_14;
        }

LABEL_8:
        v47 = v72;
        sub_10000794C(v22, v72, &unk_1007720E0, &qword_10062FE20);
        v70(v47, 0, 1, v16);
        v48 = v79;
        swift_beginAccess();
        sub_10000D184(v47, v48 + v39, &unk_10076BBE0, &qword_10062FE18);
        swift_endAccess();
        v49 = v71;
        sub_10000794C(v22, v71, &unk_1007720E0, &qword_10062FE20);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          v51 = v82;
          v52 = v76;
          if (EnumCaseMultiPayload == 1)
          {
            v53 = v49;
            v54 = v66;
            sub_100016588(v53, v66, &unk_100771B10, qword_10062E540);

            v55 = v44;
            v56 = v74;
            sub_1001B8DA0(v54, v73, v48, v51, v55, v80);
            swift_unknownObjectRelease();

            sub_1000079B4(v54, &unk_100771B10, qword_10062E540);
          }

          else
          {

            v64 = v44;
            sub_1001B9E08(v73, v51, v64, v80);
            swift_unknownObjectRelease();
          }

          sub_1000079B4(v22, &unk_1007720E0, &qword_10062FE20);
          v57 = v52;
        }

        else
        {
          v61 = v67;
          sub_100016588(v49, v67, &qword_1007720C8, &qword_100634478);
          v62 = v82;

          v63 = v44;
          sub_1001BCD34(v61, v73, v48, v62, v63, v80);
          swift_unknownObjectRelease();

          sub_1000079B4(v61, &qword_1007720C8, &qword_100634478);
          sub_1000079B4(v22, &unk_1007720E0, &qword_10062FE20);
          v57 = v76;
        }

        sub_1000079B4(v57, &unk_100771B10, qword_10062E540);
        goto LABEL_18;
      }

      sub_1000079B4(v45, &unk_10076BBE0, &qword_10062FE18);
      sub_1000079B4(v46, &unk_1007720E0, &qword_10062FE20);
    }

    sub_1000079B4(v42, &unk_1007720D0, &unk_100634480);
    v44 = v75;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_1001AEA30@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v67 = a3;
  v68 = a4;
  v7 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  __chkstk_darwin(v7 - 8);
  v9 = &v63 - v8;
  v10 = sub_100058000(qword_100772218, &qword_100634588);
  __chkstk_darwin(v10);
  v12 = &v63 - v11;
  v66 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v69 = *(v66 - 8);
  __chkstk_darwin(v66);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v63 - v16;
  __chkstk_darwin(v18);
  v20 = &v63 - v19;
  __chkstk_darwin(v21);
  v23 = &v63 - v22;
  __chkstk_darwin(v24);
  v65 = &v63 - v25;
  v26 = v67;
  v67 = v4;
  sub_1001B2298(a1, a2 & 1, v26, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v41 = v17;
    v63 = v20;
    v29 = *(v69 + 32);
    v42 = v66;
    v29(v23, v12, v66);
    sub_1000C8504();
    v64 = v23;
    v44 = sub_1000F4DB4(v23, v43);

    if (v44)
    {
      Strong = swift_weakLoadStrong();

      if (Strong)
      {
        v46 = *(*Strong + 144);
        swift_beginAccess();
        v47 = v69;
        (*(v69 + 16))(v41, Strong + v46, v42);

        v48 = v63;
        v29(v63, v41, v42);
        v49 = v64;
        v50 = sub_1003BBFE0(v64);
        v51 = *(v47 + 8);
        if ((v52 & 1) == 0)
        {
          v32 = v50;
          v51(v49, v42);
          v59 = v65;
          v29(v65, v48, v42);
          goto LABEL_21;
        }

        v51(v48, v42);
      }
    }

    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_100003E30(v53, qword_1007716F0);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v54, v55, "Missing parent/childIndex", v56, 2u);
    }

    (*(v69 + 8))(v64, v42);
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload != 1)
  {
LABEL_18:
    v57 = sub_100058000(&unk_1007819B0, &unk_10062FF40);
    return (*(*(v57 - 8) + 56))(v68, 1, 1, v57);
  }

  v28 = v69;
  v29 = *(v69 + 32);
  v30 = v12;
  v31 = v66;
  v29(v14, v30, v66);
  (*(v28 + 16))(v9, v14, v31);
  (*(v28 + 56))(v9, 0, 1, v31);
  v32 = sub_1003BC960(v9);
  v34 = v33;
  sub_1000079B4(v9, &unk_100771B40, &unk_10062FB70);
  if (v34)
  {
    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100003E30(v35, qword_1007716F0);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.fault.getter();
    v38 = os_log_type_enabled(v36, v37);
    v39 = v66;
    if (v38)
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Missing parent child count", v40, 2u);
    }

    (*(v69 + 8))(v14, v39);
    goto LABEL_18;
  }

  v59 = v65;
  v29(v65, v14, v31);
  v42 = v31;
LABEL_21:
  v60 = sub_100058000(&unk_1007819B0, &unk_10062FF40);
  v61 = *(v60 + 48);
  v62 = v68;
  v29(v68, v59, v42);
  *&v62[v61] = v32;
  return (*(*(v60 - 8) + 56))(v62, 0, 1, v60);
}

uint64_t sub_1001AF0C4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v67 = a3;
  v68 = a4;
  v7 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v63 - v8;
  v10 = sub_100058000(&unk_100772158, &qword_1006344E0);
  __chkstk_darwin(v10);
  v12 = &v63 - v11;
  v66 = type metadata accessor for TTRRemindersListViewModel.Item();
  v69 = *(v66 - 8);
  __chkstk_darwin(v66);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v63 - v16;
  __chkstk_darwin(v18);
  v20 = &v63 - v19;
  __chkstk_darwin(v21);
  v23 = &v63 - v22;
  __chkstk_darwin(v24);
  v65 = &v63 - v25;
  v26 = v67;
  v67 = v4;
  sub_1001B284C(a1, a2 & 1, v26, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v41 = v17;
    v63 = v20;
    v29 = *(v69 + 32);
    v42 = v66;
    v29(v23, v12, v66);
    sub_1000C84C8();
    v64 = v23;
    v44 = sub_1000F2C50(v23, v43);

    if (v44)
    {
      Strong = swift_weakLoadStrong();

      if (Strong)
      {
        v46 = *(*Strong + 144);
        swift_beginAccess();
        v47 = v69;
        (*(v69 + 16))(v41, Strong + v46, v42);

        v48 = v63;
        v29(v63, v41, v42);
        v49 = v64;
        v50 = sub_1003BC034(v64);
        v51 = *(v47 + 8);
        if ((v52 & 1) == 0)
        {
          v32 = v50;
          v51(v49, v42);
          v59 = v65;
          v29(v65, v48, v42);
          goto LABEL_21;
        }

        v51(v48, v42);
      }
    }

    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_100003E30(v53, qword_1007716F0);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v54, v55, "Missing parent/childIndex", v56, 2u);
    }

    (*(v69 + 8))(v64, v42);
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload != 1)
  {
LABEL_18:
    v57 = sub_100058000(&unk_100772130, &qword_1006344B8);
    return (*(*(v57 - 8) + 56))(v68, 1, 1, v57);
  }

  v28 = v69;
  v29 = *(v69 + 32);
  v30 = v12;
  v31 = v66;
  v29(v14, v30, v66);
  (*(v28 + 16))(v9, v14, v31);
  (*(v28 + 56))(v9, 0, 1, v31);
  v32 = sub_1003BCE6C(v9);
  v34 = v33;
  sub_1000079B4(v9, &qword_100772140, &qword_10062D9F0);
  if (v34)
  {
    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100003E30(v35, qword_1007716F0);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.fault.getter();
    v38 = os_log_type_enabled(v36, v37);
    v39 = v66;
    if (v38)
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Missing parent child count", v40, 2u);
    }

    (*(v69 + 8))(v14, v39);
    goto LABEL_18;
  }

  v59 = v65;
  v29(v65, v14, v31);
  v42 = v31;
LABEL_21:
  v60 = sub_100058000(&unk_100772130, &qword_1006344B8);
  v61 = *(v60 + 48);
  v62 = v68;
  v29(v68, v59, v42);
  *&v62[v61] = v32;
  return (*(*(v60 - 8) + 56))(v62, 0, 1, v60);
}

uint64_t sub_1001AF758@<X0>(uint64_t a1@<X0>, char *a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v189 = a4;
  LODWORD(v198) = a3;
  v196 = a5;
  v197 = a2;
  v183 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v182 = *(v183 - 8);
  __chkstk_darwin(v183);
  v181 = &v180 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v180 = &v180 - v8;
  v9 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  __chkstk_darwin(v9 - 8);
  v191 = (&v180 - v10);
  v11 = sub_100058000(&unk_100772208, &unk_100634578);
  __chkstk_darwin(v11);
  v192 = &v180 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v180 - v14;
  __chkstk_darwin(v16);
  v18 = &v180 - v17;
  v19 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v200 = *(v19 - 8);
  v201 = v19;
  __chkstk_darwin(v19);
  v184 = &v180 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v185 = &v180 - v22;
  __chkstk_darwin(v23);
  v188 = &v180 - v24;
  __chkstk_darwin(v25);
  v186 = &v180 - v26;
  __chkstk_darwin(v27);
  v187 = &v180 - v28;
  __chkstk_darwin(v29);
  v190 = &v180 - v30;
  __chkstk_darwin(v31);
  v195 = &v180 - v32;
  __chkstk_darwin(v33);
  v35 = &v180 - v34;
  __chkstk_darwin(v36);
  v38 = &v180 - v37;
  __chkstk_darwin(v39);
  v41 = &v180 - v40;
  __chkstk_darwin(v42);
  v44 = &v180 - v43;
  __chkstk_darwin(v45);
  v47 = &v180 - v46;
  __chkstk_darwin(v48);
  v50 = &v180 - v49;
  __chkstk_darwin(v51);
  v194 = &v180 - v52;
  v193 = a1;
  sub_1001B3988(v197, v198, v18);
  v199 = v18;
  sub_10000794C(v18, v15, &unk_100772208, &unk_100634578);
  v198 = v11;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v195 = v35;
    v197 = v38;
    if (EnumCaseMultiPayload)
    {
      v112 = v15;
      v113 = *(v200 + 32);
      v113(v41, v112, v201);
      sub_1000C8504();
      v115 = sub_1000F4DB4(v41, v114);

      v56 = v199;
      if (v115)
      {
        Strong = swift_weakLoadStrong();

        if (Strong)
        {
          v117 = *(*Strong + 144);
          swift_beginAccess();
          v118 = v200;
          v119 = *(v200 + 16);
          v120 = Strong + v117;
          v121 = v195;
          v122 = v201;
          v119(v195, v120, v201);

          v123 = v197;
          v124 = v121;
          v54 = v122;
          v113(v197, v124, v122);
          v125 = sub_1003BBFE0(v41);
          if ((v126 & 1) == 0)
          {
            v143 = v125;
            v191 = v119;
            (*(v118 + 8))(v41, v122);
            v133 = v194;
            v113(v194, v123, v122);
            v135 = v192;
            v65 = v113;
            v136 = v143;
            goto LABEL_54;
          }

          (*(v118 + 8))(v123, v122);
        }
      }

      if (qword_100766FC8 != -1)
      {
        swift_once();
      }

      v127 = type metadata accessor for Logger();
      sub_100003E30(v127, qword_1007716F0);
      v128 = Logger.logObject.getter();
      v129 = static os_log_type_t.fault.getter();
      v130 = os_log_type_enabled(v128, v129);
      v131 = v201;
      if (v130)
      {
        v132 = swift_slowAlloc();
        *v132 = 0;
        _os_log_impl(&_mh_execute_header, v128, v129, "Missing parent/childIndex", v132, 2u);
      }

      (*(v200 + 8))(v41, v131);
      goto LABEL_47;
    }

    v74 = v50;
    v75 = v15;
    v76 = *(v200 + 32);
    v76(v50, v75, v201);
    sub_1000C8504();
    v78 = sub_1000F4DB4(v50, v77);

    if (v78)
    {
      v79 = swift_weakLoadStrong();

      if (v79)
      {
        v80 = *(*v79 + 144);
        swift_beginAccess();
        v81 = v200;
        v54 = v201;
        v191 = *(v200 + 16);
        v191(v44, v79 + v80, v201);

        v56 = v47;
        v82 = v47;
        v83 = v76;
        v76(v82, v44, v54);
        v84 = sub_1003BBFE0(v50);
        if ((v85 & 1) == 0)
        {
          v142 = v84;
          (*(v81 + 8))(v50, v54);
          v76(v194, v56, v54);
          v136 = v142 + 1;
          if (__OFADD__(v142, 1))
          {
            __break(1u);
            goto LABEL_76;
          }

          v65 = v83;
          v56 = v199;
          v133 = v194;
          v135 = v192;
LABEL_54:
          sub_10000794C(v56, v135, &unk_100772208, &unk_100634578);
          if (swift_getEnumCaseMultiPayload() == 3)
          {
            sub_1000079B4(v56, &unk_100772208, &unk_100634578);
            v145 = v135;
LABEL_67:
            sub_1000079B4(v145, &unk_100772208, &unk_100634578);
LABEL_68:
            v166 = sub_100058000(&unk_1007819B0, &unk_10062FF40);
            v167 = *(v166 + 48);
            v168 = v196;
            v65(v196, v133, v54);
            *(v168 + v167) = v136;
            return (*(*(v166 - 8) + 56))(v168, 0, 1, v166);
          }

          sub_1000079B4(v135, &unk_100772208, &unk_100634578);
          if ((v189 & 1) == 0)
          {
            v145 = v56;
            goto LABEL_67;
          }

          sub_1000C8504();
          v146 = sub_1001D6ABC();

          if (!v146)
          {
            v169 = v200;
            if (qword_100766FC8 != -1)
            {
              swift_once();
            }

            v170 = type metadata accessor for Logger();
            sub_100003E30(v170, qword_1007716F0);
            v171 = Logger.logObject.getter();
            v172 = static os_log_type_t.fault.getter();
            if (os_log_type_enabled(v171, v172))
            {
              v173 = swift_slowAlloc();
              *v173 = 0;
              _os_log_impl(&_mh_execute_header, v171, v172, "Unexpected: node not found at sourceIndexPath", v173, 2u);
            }

            sub_1000079B4(v56, &unk_100772208, &unk_100634578);
            (*(v169 + 8))(v133, v54);
            goto LABEL_49;
          }

          v202 = v65;
          v147 = *(*v146 + 144);
          swift_beginAccess();
          v148 = v188;
          v191(v188, v146 + v147, v54);
          sub_1000C8504();
          v150 = sub_1000F4DB4(v148, v149);

          if (v150)
          {
            v151 = swift_weakLoadStrong();

            if (v151)
            {
              v152 = *(*v151 + 144);
              swift_beginAccess();
              v153 = v184;
              v191(v184, v151 + v152, v54);

              v154 = v200;
              v155 = v185;
              v202(v185, v153, v54);
              v156 = sub_1003BBFE0(v188);
              if ((v157 & 1) == 0)
              {
                v174 = v180;
                v198 = v156;
                TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
                v175 = v181;
                v133 = v194;
                TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
                sub_1001C44BC(&qword_10076B7A0, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier, &protocol conformance descriptor for TTRAccountsListsViewModel.ItemIdentifier);
                v176 = v183;
                LODWORD(v197) = dispatch thunk of static Equatable.== infix(_:_:)();

                v177 = *(v182 + 8);
                v177(v175, v176);
                v178 = v176;
                v65 = v202;
                v177(v174, v178);
                v179 = *(v154 + 8);
                v179(v185, v54);
                v179(v188, v54);
                sub_1000079B4(v56, &unk_100772208, &unk_100634578);
                v136 -= v197 & (v198 < v136);
                goto LABEL_68;
              }

              (*(v154 + 8))(v155, v54);
            }
          }

          if (qword_100766FC8 == -1)
          {
LABEL_63:
            v158 = type metadata accessor for Logger();
            sub_100003E30(v158, qword_1007716F0);
            v159 = Logger.logObject.getter();
            v160 = static os_log_type_t.fault.getter();
            v161 = os_log_type_enabled(v159, v160);
            v162 = v194;
            v163 = v188;
            if (v161)
            {
              v164 = swift_slowAlloc();
              *v164 = 0;
              _os_log_impl(&_mh_execute_header, v159, v160, "Unexpected: parent/childIndex not found for item to be moved", v164, 2u);
            }

            v165 = *(v200 + 8);
            v165(v163, v54);
            sub_1000079B4(v56, &unk_100772208, &unk_100634578);
            v165(v162, v54);
            goto LABEL_49;
          }

LABEL_76:
          swift_once();
          goto LABEL_63;
        }

        (*(v81 + 8))(v56, v54);
        v74 = v50;
      }
    }

    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v86 = type metadata accessor for Logger();
    sub_100003E30(v86, qword_1007716F0);
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.fault.getter();
    v89 = os_log_type_enabled(v87, v88);
    v90 = v199;
    if (v89)
    {
      v91 = swift_slowAlloc();
      *v91 = 0;
      _os_log_impl(&_mh_execute_header, v87, v88, "Missing parent/childIndex", v91, 2u);
    }

    (*(v200 + 8))(v74, v201);
    v92 = v90;
    goto LABEL_48;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v54 = v201;
    if (EnumCaseMultiPayload != 3)
    {
      v92 = v199;
LABEL_48:
      sub_1000079B4(v92, &unk_100772208, &unk_100634578);
LABEL_49:
      v141 = sub_100058000(&unk_1007819B0, &unk_10062FF40);
      return (*(*(v141 - 8) + 56))(v196, 1, 1, v141);
    }

    sub_1000C8504();
    v55 = sub_1001D6ABC();

    v56 = v199;
    if (!v55)
    {
      if (qword_100766FC8 != -1)
      {
        swift_once();
      }

      v137 = type metadata accessor for Logger();
      sub_100003E30(v137, qword_1007716F0);
      v138 = Logger.logObject.getter();
      v139 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v138, v139))
      {
        v140 = swift_slowAlloc();
        *v140 = 0;
        _os_log_impl(&_mh_execute_header, v138, v139, "Unexpected: node not found at sourceIndexPath", v140, 2u);
      }

      goto LABEL_47;
    }

    v57 = *(*v55 + 144);
    swift_beginAccess();
    v58 = v190;
    v191 = *(v200 + 16);
    v191(v190, v55 + v57, v54);
    sub_1000C8504();
    v60 = sub_1000F4DB4(v58, v59);

    if (!v60 || (v61 = swift_weakLoadStrong(), , !v61))
    {
LABEL_9:
      if (qword_100766FC8 != -1)
      {
        swift_once();
      }

      v70 = type metadata accessor for Logger();
      sub_100003E30(v70, qword_1007716F0);
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&_mh_execute_header, v71, v72, "Unexpected: parent/childIndex not found for item to be moved", v73, 2u);
      }

      (*(v200 + 8))(v58, v54);
LABEL_47:
      v92 = v56;
      goto LABEL_48;
    }

    v62 = *(*v61 + 144);
    swift_beginAccess();
    v63 = v186;
    v191(v186, v61 + v62, v54);

    v64 = v200;
    v65 = *(v200 + 32);
    v66 = v187;
    v65(v187, v63, v54);
    v67 = sub_1003BBFE0(v58);
    v68 = v58;
    if (v69)
    {
      (*(v64 + 8))(v66, v54);
      v56 = v199;
      goto LABEL_9;
    }

    v136 = v67;
    (*(v64 + 8))(v68, v54);

    v144 = v66;
    v133 = v194;
    v65(v194, v144, v54);
    v135 = v192;
    v56 = v199;
    goto LABEL_54;
  }

  v94 = v200;
  v93 = v201;
  v95 = v195;
  v96 = v15;
  v97 = *(v200 + 32);
  v97(v195, v96, v201);
  v98 = swift_unknownObjectUnownedLoadStrong();
  v99 = *(v94 + 16);
  v100 = v191;
  v99(v191, v95, v93);
  result = (*(v94 + 56))(v100, 0, 1, v93);
  v102 = *&v98[qword_10078A548];
  if (v102)
  {
    v103 = v102;
    v104 = sub_1003BC960(v100);
    v106 = v105;

    sub_1000079B4(v100, &unk_100771B40, &unk_10062FB70);
    v107 = v199;
    if (v106)
    {
      if (qword_100766FC8 != -1)
      {
        swift_once();
      }

      v108 = type metadata accessor for Logger();
      sub_100003E30(v108, qword_1007716F0);
      v109 = Logger.logObject.getter();
      v110 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        *v111 = 0;
        _os_log_impl(&_mh_execute_header, v109, v110, "Missing parent child count", v111, 2u);
      }

      (*(v94 + 8))(v195, v201);
      v92 = v107;
      goto LABEL_48;
    }

    v191 = v99;
    v133 = v194;
    v134 = v201;
    v97(v194, v195, v201);
    v65 = v97;
    v135 = v192;
    v136 = v104;
    v56 = v107;
    v54 = v134;
    goto LABEL_54;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001B0CF8@<X0>(uint64_t a1@<X0>, char *a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v189 = a4;
  LODWORD(v198) = a3;
  v196 = a5;
  v197 = a2;
  v183 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v182 = *(v183 - 8);
  __chkstk_darwin(v183);
  v181 = &v180 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v180 = &v180 - v8;
  v9 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v9 - 8);
  v191 = (&v180 - v10);
  v11 = sub_100058000(&qword_100772148, &unk_1006344D0);
  __chkstk_darwin(v11);
  v192 = &v180 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v180 - v14;
  __chkstk_darwin(v16);
  v18 = &v180 - v17;
  v19 = type metadata accessor for TTRRemindersListViewModel.Item();
  v200 = *(v19 - 8);
  v201 = v19;
  __chkstk_darwin(v19);
  v184 = &v180 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v185 = &v180 - v22;
  __chkstk_darwin(v23);
  v188 = &v180 - v24;
  __chkstk_darwin(v25);
  v186 = &v180 - v26;
  __chkstk_darwin(v27);
  v187 = &v180 - v28;
  __chkstk_darwin(v29);
  v190 = &v180 - v30;
  __chkstk_darwin(v31);
  v195 = &v180 - v32;
  __chkstk_darwin(v33);
  v35 = &v180 - v34;
  __chkstk_darwin(v36);
  v38 = &v180 - v37;
  __chkstk_darwin(v39);
  v41 = &v180 - v40;
  __chkstk_darwin(v42);
  v44 = &v180 - v43;
  __chkstk_darwin(v45);
  v47 = &v180 - v46;
  __chkstk_darwin(v48);
  v50 = &v180 - v49;
  __chkstk_darwin(v51);
  v194 = &v180 - v52;
  v193 = a1;
  sub_1001B4A30(v198, v18);
  v199 = v18;
  sub_10000794C(v18, v15, &qword_100772148, &unk_1006344D0);
  v198 = v11;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v195 = v35;
    v197 = v38;
    if (EnumCaseMultiPayload)
    {
      v112 = v15;
      v113 = *(v200 + 32);
      v113(v41, v112, v201);
      sub_1000C84C8();
      v115 = sub_1000F2C50(v41, v114);

      v56 = v199;
      if (v115)
      {
        Strong = swift_weakLoadStrong();

        if (Strong)
        {
          v117 = *(*Strong + 144);
          swift_beginAccess();
          v118 = v200;
          v119 = *(v200 + 16);
          v120 = Strong + v117;
          v121 = v195;
          v122 = v201;
          v119(v195, v120, v201);

          v123 = v197;
          v124 = v121;
          v54 = v122;
          v113(v197, v124, v122);
          v125 = sub_1003BC034(v41);
          if ((v126 & 1) == 0)
          {
            v143 = v125;
            v191 = v119;
            (*(v118 + 8))(v41, v122);
            v133 = v194;
            v113(v194, v123, v122);
            v135 = v192;
            v65 = v113;
            v136 = v143;
            goto LABEL_54;
          }

          (*(v118 + 8))(v123, v122);
        }
      }

      if (qword_100766FC8 != -1)
      {
        swift_once();
      }

      v127 = type metadata accessor for Logger();
      sub_100003E30(v127, qword_1007716F0);
      v128 = Logger.logObject.getter();
      v129 = static os_log_type_t.fault.getter();
      v130 = os_log_type_enabled(v128, v129);
      v131 = v201;
      if (v130)
      {
        v132 = swift_slowAlloc();
        *v132 = 0;
        _os_log_impl(&_mh_execute_header, v128, v129, "Missing parent/childIndex", v132, 2u);
      }

      (*(v200 + 8))(v41, v131);
      goto LABEL_47;
    }

    v74 = v50;
    v75 = v15;
    v76 = *(v200 + 32);
    v76(v50, v75, v201);
    sub_1000C84C8();
    v78 = sub_1000F2C50(v50, v77);

    if (v78)
    {
      v79 = swift_weakLoadStrong();

      if (v79)
      {
        v80 = *(*v79 + 144);
        swift_beginAccess();
        v81 = v200;
        v54 = v201;
        v191 = *(v200 + 16);
        v191(v44, v79 + v80, v201);

        v56 = v47;
        v82 = v47;
        v83 = v76;
        v76(v82, v44, v54);
        v84 = sub_1003BC034(v50);
        if ((v85 & 1) == 0)
        {
          v142 = v84;
          (*(v81 + 8))(v50, v54);
          v76(v194, v56, v54);
          v136 = v142 + 1;
          if (__OFADD__(v142, 1))
          {
            __break(1u);
            goto LABEL_76;
          }

          v65 = v83;
          v56 = v199;
          v133 = v194;
          v135 = v192;
LABEL_54:
          sub_10000794C(v56, v135, &qword_100772148, &unk_1006344D0);
          if (swift_getEnumCaseMultiPayload() == 3)
          {
            sub_1000079B4(v56, &qword_100772148, &unk_1006344D0);
            v145 = v135;
LABEL_67:
            sub_1000079B4(v145, &qword_100772148, &unk_1006344D0);
LABEL_68:
            v166 = sub_100058000(&unk_100772130, &qword_1006344B8);
            v167 = *(v166 + 48);
            v168 = v196;
            v65(v196, v133, v54);
            *(v168 + v167) = v136;
            return (*(*(v166 - 8) + 56))(v168, 0, 1, v166);
          }

          sub_1000079B4(v135, &qword_100772148, &unk_1006344D0);
          if ((v189 & 1) == 0)
          {
            v145 = v56;
            goto LABEL_67;
          }

          sub_1000C84C8();
          v146 = sub_1001D6ABC();

          if (!v146)
          {
            v169 = v200;
            if (qword_100766FC8 != -1)
            {
              swift_once();
            }

            v170 = type metadata accessor for Logger();
            sub_100003E30(v170, qword_1007716F0);
            v171 = Logger.logObject.getter();
            v172 = static os_log_type_t.fault.getter();
            if (os_log_type_enabled(v171, v172))
            {
              v173 = swift_slowAlloc();
              *v173 = 0;
              _os_log_impl(&_mh_execute_header, v171, v172, "Unexpected: node not found at sourceIndexPath", v173, 2u);
            }

            sub_1000079B4(v56, &qword_100772148, &unk_1006344D0);
            (*(v169 + 8))(v133, v54);
            goto LABEL_49;
          }

          v202 = v65;
          v147 = *(*v146 + 144);
          swift_beginAccess();
          v148 = v188;
          v191(v188, v146 + v147, v54);
          sub_1000C84C8();
          v150 = sub_1000F2C50(v148, v149);

          if (v150)
          {
            v151 = swift_weakLoadStrong();

            if (v151)
            {
              v152 = *(*v151 + 144);
              swift_beginAccess();
              v153 = v184;
              v191(v184, v151 + v152, v54);

              v154 = v200;
              v155 = v185;
              v202(v185, v153, v54);
              v156 = sub_1003BC034(v188);
              if ((v157 & 1) == 0)
              {
                v174 = v180;
                v198 = v156;
                TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
                v175 = v181;
                v133 = v194;
                TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
                sub_1001C44BC(&qword_10076BB60, &type metadata accessor for TTRRemindersListViewModel.ItemID, &protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
                v176 = v183;
                LODWORD(v197) = dispatch thunk of static Equatable.== infix(_:_:)();

                v177 = *(v182 + 8);
                v177(v175, v176);
                v178 = v176;
                v65 = v202;
                v177(v174, v178);
                v179 = *(v154 + 8);
                v179(v185, v54);
                v179(v188, v54);
                sub_1000079B4(v56, &qword_100772148, &unk_1006344D0);
                v136 -= v197 & (v198 < v136);
                goto LABEL_68;
              }

              (*(v154 + 8))(v155, v54);
            }
          }

          if (qword_100766FC8 == -1)
          {
LABEL_63:
            v158 = type metadata accessor for Logger();
            sub_100003E30(v158, qword_1007716F0);
            v159 = Logger.logObject.getter();
            v160 = static os_log_type_t.fault.getter();
            v161 = os_log_type_enabled(v159, v160);
            v162 = v194;
            v163 = v188;
            if (v161)
            {
              v164 = swift_slowAlloc();
              *v164 = 0;
              _os_log_impl(&_mh_execute_header, v159, v160, "Unexpected: parent/childIndex not found for item to be moved", v164, 2u);
            }

            v165 = *(v200 + 8);
            v165(v163, v54);
            sub_1000079B4(v56, &qword_100772148, &unk_1006344D0);
            v165(v162, v54);
            goto LABEL_49;
          }

LABEL_76:
          swift_once();
          goto LABEL_63;
        }

        (*(v81 + 8))(v56, v54);
        v74 = v50;
      }
    }

    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v86 = type metadata accessor for Logger();
    sub_100003E30(v86, qword_1007716F0);
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.fault.getter();
    v89 = os_log_type_enabled(v87, v88);
    v90 = v199;
    if (v89)
    {
      v91 = swift_slowAlloc();
      *v91 = 0;
      _os_log_impl(&_mh_execute_header, v87, v88, "Missing parent/childIndex", v91, 2u);
    }

    (*(v200 + 8))(v74, v201);
    v92 = v90;
    goto LABEL_48;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v54 = v201;
    if (EnumCaseMultiPayload != 3)
    {
      v92 = v199;
LABEL_48:
      sub_1000079B4(v92, &qword_100772148, &unk_1006344D0);
LABEL_49:
      v141 = sub_100058000(&unk_100772130, &qword_1006344B8);
      return (*(*(v141 - 8) + 56))(v196, 1, 1, v141);
    }

    sub_1000C84C8();
    v55 = sub_1001D6ABC();

    v56 = v199;
    if (!v55)
    {
      if (qword_100766FC8 != -1)
      {
        swift_once();
      }

      v137 = type metadata accessor for Logger();
      sub_100003E30(v137, qword_1007716F0);
      v138 = Logger.logObject.getter();
      v139 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v138, v139))
      {
        v140 = swift_slowAlloc();
        *v140 = 0;
        _os_log_impl(&_mh_execute_header, v138, v139, "Unexpected: node not found at sourceIndexPath", v140, 2u);
      }

      goto LABEL_47;
    }

    v57 = *(*v55 + 144);
    swift_beginAccess();
    v58 = v190;
    v191 = *(v200 + 16);
    v191(v190, v55 + v57, v54);
    sub_1000C84C8();
    v60 = sub_1000F2C50(v58, v59);

    if (!v60 || (v61 = swift_weakLoadStrong(), , !v61))
    {
LABEL_9:
      if (qword_100766FC8 != -1)
      {
        swift_once();
      }

      v70 = type metadata accessor for Logger();
      sub_100003E30(v70, qword_1007716F0);
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&_mh_execute_header, v71, v72, "Unexpected: parent/childIndex not found for item to be moved", v73, 2u);
      }

      (*(v200 + 8))(v58, v54);
LABEL_47:
      v92 = v56;
      goto LABEL_48;
    }

    v62 = *(*v61 + 144);
    swift_beginAccess();
    v63 = v186;
    v191(v186, v61 + v62, v54);

    v64 = v200;
    v65 = *(v200 + 32);
    v66 = v187;
    v65(v187, v63, v54);
    v67 = sub_1003BC034(v58);
    v68 = v58;
    if (v69)
    {
      (*(v64 + 8))(v66, v54);
      v56 = v199;
      goto LABEL_9;
    }

    v136 = v67;
    (*(v64 + 8))(v68, v54);

    v144 = v66;
    v133 = v194;
    v65(v194, v144, v54);
    v135 = v192;
    v56 = v199;
    goto LABEL_54;
  }

  v94 = v200;
  v93 = v201;
  v95 = v195;
  v96 = v15;
  v97 = *(v200 + 32);
  v97(v195, v96, v201);
  v98 = swift_unknownObjectUnownedLoadStrong();
  v99 = *(v94 + 16);
  v100 = v191;
  v99(v191, v95, v93);
  result = (*(v94 + 56))(v100, 0, 1, v93);
  v102 = *&v98[qword_10078A548];
  if (v102)
  {
    v103 = v102;
    v104 = sub_1003BCE6C(v100);
    v106 = v105;

    sub_1000079B4(v100, &qword_100772140, &qword_10062D9F0);
    v107 = v199;
    if (v106)
    {
      if (qword_100766FC8 != -1)
      {
        swift_once();
      }

      v108 = type metadata accessor for Logger();
      sub_100003E30(v108, qword_1007716F0);
      v109 = Logger.logObject.getter();
      v110 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        *v111 = 0;
        _os_log_impl(&_mh_execute_header, v109, v110, "Missing parent child count", v111, 2u);
      }

      (*(v94 + 8))(v195, v201);
      v92 = v107;
      goto LABEL_48;
    }

    v191 = v99;
    v133 = v194;
    v134 = v201;
    v97(v194, v195, v201);
    v65 = v97;
    v135 = v192;
    v136 = v104;
    v56 = v107;
    v54 = v134;
    goto LABEL_54;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001B2298@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v5 = v4;
  v46 = a2;
  v47 = a1;
  v50 = a4;
  v7 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  __chkstk_darwin(v7 - 8);
  v48 = &v44 - v8;
  v49 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v9 = *(v49 - 8);
  __chkstk_darwin(v49);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v45 = &v44 - v13;
  v14 = qword_10062E540;
  v15 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v15 - 8);
  v17 = &v44 - v16;
  v18 = type metadata accessor for IndexPath();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000794C(a3, v17, &unk_100771B10, qword_10062E540);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    v22 = &unk_100771B10;
    v23 = qword_10062E540;
    v24 = v17;
LABEL_3:
    sub_1000079B4(v24, v22, v23);
    goto LABEL_17;
  }

  (*(v19 + 32))(v21, v17, v18);
  v25 = sub_1000C8504();

  v26 = *(v25 + 16);

  v27 = IndexPath.section.getter();
  if (v27 < 0 || v27 >= v26)
  {
    (*(v19 + 8))(v21, v18);
    goto LABEL_17;
  }

  v28 = sub_1000C8504();
  v30 = v29;

  v31 = IndexPath.section.getter();
  if ((v31 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v31 >= *(v28 + 16))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v44 = v5;
  v32 = v28 + 16 * v31;
  v14 = *(v32 + 32);
  v30 = *(v32 + 40);

  if (!(v30 >> 62))
  {
    for (i = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10); IndexPath.row.getter() < i; i = v34)
    {
      v34 = IndexPath.row.getter();
      v5 = v49;
      if ((v30 & 0xC000000000000001) != 0)
      {
        goto LABEL_25;
      }

      if ((v34 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v34 < *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v35 = *(v30 + 8 * v34 + 32);

        goto LABEL_15;
      }

      __break(1u);
LABEL_28:
      ;
    }

    v38 = *(*v14 + 144);
    swift_beginAccess();
    v39 = v49;
    (*(v9 + 16))(v11, v14 + v38, v49);
    v40 = v48;
    sub_1001B662C(v47, v46 & 1, v11, v48);

    (*(v9 + 8))(v11, v39);
    (*(v19 + 8))(v21, v18);
    v41 = v40;
    if ((*(v9 + 48))(v40, 1, v39) != 1)
    {
      v42 = *(v9 + 32);
      v43 = v45;
      v42(v45, v41, v39);
      v42(v50, v43, v39);
      goto LABEL_17;
    }

    v22 = &unk_100771B40;
    v23 = &unk_10062FB70;
    v24 = v40;
    goto LABEL_3;
  }

LABEL_23:
  v34 = _CocoaArrayWrapper.endIndex.getter();
  if ((v34 & 0x8000000000000000) == 0)
  {
    goto LABEL_28;
  }

  __break(1u);
LABEL_25:
  v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_15:

  (*(v19 + 8))(v21, v18);
  v36 = *(*v35 + 144);
  swift_beginAccess();
  (*(v9 + 16))(v50, v35 + v36, v5);

LABEL_17:
  sub_100058000(qword_100772218, &qword_100634588);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1001B284C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v5 = v4;
  v46 = a2;
  v47 = a1;
  v50 = a4;
  v7 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v7 - 8);
  v48 = &v44 - v8;
  v49 = type metadata accessor for TTRRemindersListViewModel.Item();
  v9 = *(v49 - 8);
  __chkstk_darwin(v49);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v45 = &v44 - v13;
  v14 = qword_10062E540;
  v15 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v15 - 8);
  v17 = &v44 - v16;
  v18 = type metadata accessor for IndexPath();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000794C(a3, v17, &unk_100771B10, qword_10062E540);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    v22 = &unk_100771B10;
    v23 = qword_10062E540;
    v24 = v17;
LABEL_3:
    sub_1000079B4(v24, v22, v23);
    goto LABEL_17;
  }

  (*(v19 + 32))(v21, v17, v18);
  v25 = sub_1000C84C8();

  v26 = *(v25 + 16);

  v27 = IndexPath.section.getter();
  if (v27 < 0 || v27 >= v26)
  {
    (*(v19 + 8))(v21, v18);
    goto LABEL_17;
  }

  v28 = sub_1000C84C8();
  v30 = v29;

  v31 = IndexPath.section.getter();
  if ((v31 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v31 >= *(v28 + 16))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v44 = v5;
  v32 = v28 + 16 * v31;
  v14 = *(v32 + 32);
  v30 = *(v32 + 40);

  if (!(v30 >> 62))
  {
    for (i = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10); IndexPath.row.getter() < i; i = v34)
    {
      v34 = IndexPath.row.getter();
      v5 = v49;
      if ((v30 & 0xC000000000000001) != 0)
      {
        goto LABEL_25;
      }

      if ((v34 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v34 < *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v35 = *(v30 + 8 * v34 + 32);

        goto LABEL_15;
      }

      __break(1u);
LABEL_28:
      ;
    }

    v38 = *(*v14 + 144);
    swift_beginAccess();
    v39 = v49;
    (*(v9 + 16))(v11, v14 + v38, v49);
    v40 = v48;
    sub_1001B6BEC(v47, v46 & 1, v11, v48);

    (*(v9 + 8))(v11, v39);
    (*(v19 + 8))(v21, v18);
    v41 = v40;
    if ((*(v9 + 48))(v40, 1, v39) != 1)
    {
      v42 = *(v9 + 32);
      v43 = v45;
      v42(v45, v41, v39);
      v42(v50, v43, v39);
      goto LABEL_17;
    }

    v22 = &qword_100772140;
    v23 = &qword_10062D9F0;
    v24 = v40;
    goto LABEL_3;
  }

LABEL_23:
  v34 = _CocoaArrayWrapper.endIndex.getter();
  if ((v34 & 0x8000000000000000) == 0)
  {
    goto LABEL_28;
  }

  __break(1u);
LABEL_25:
  v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_15:

  (*(v19 + 8))(v21, v18);
  v36 = *(*v35 + 144);
  swift_beginAccess();
  (*(v9 + 16))(v50, v35 + v36, v5);

LABEL_17:
  sub_100058000(&unk_100772158, &qword_1006344E0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1001B2E00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  __chkstk_darwin(v6 - 8);
  v8 = v50 - v7;
  v9 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v10 = *(v9 - 8);
  v53 = v9;
  v54 = v10;
  __chkstk_darwin(v9);
  v55 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &unk_100771B10;
  v13 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v13 - 8);
  v15 = v50 - v14;
  v16 = type metadata accessor for IndexPath();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000794C(a1, v15, &unk_100771B10, qword_10062E540);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1000079B4(v15, &unk_100771B10, qword_10062E540);
LABEL_19:
    v42 = sub_100058000(&unk_1007819B0, &unk_10062FF40);
    v43 = *(*(v42 - 8) + 56);
    v44 = a2;
    return v43(v44, 1, 1, v42);
  }

  (*(v17 + 32))(v19, v15, v16);
  v20 = sub_1000C8504();

  v21 = *(v20 + 16);

  v22 = IndexPath.section.getter();
  if (v22 < 0 || v22 >= v21)
  {
LABEL_18:
    (*(v17 + 8))(v19, v16);
    goto LABEL_19;
  }

  v23 = sub_1000C8504();
  v25 = v24;

  v26 = IndexPath.section.getter();
  if ((v26 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v26 >= *(v23 + 16))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v52 = v3;
  v27 = v23 + 16 * v26;
  v25 = *(v27 + 32);
  v12 = *(v27 + 40);

  if (!(v12 >> 62))
  {
    for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v30)
    {
      v29 = IndexPath.row.getter();
      if ((v29 & 0x8000000000000000) != 0 || v29 >= i)
      {
        break;
      }

      v30 = IndexPath.row.getter();
      v50[1] = v25;
      v51 = a2;
      v50[0] = v8;
      if ((v12 & 0xC000000000000001) != 0)
      {
        goto LABEL_27;
      }

      if ((v30 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v30 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v31 = *(v12 + 8 * v30 + 32);

        goto LABEL_15;
      }

      __break(1u);
LABEL_30:
      ;
    }

    goto LABEL_18;
  }

LABEL_25:
  v30 = _CocoaArrayWrapper.endIndex.getter();
  if ((v30 & 0x8000000000000000) == 0)
  {
    goto LABEL_30;
  }

  __break(1u);
LABEL_27:
  v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_15:
  v32 = *(*v31 + 144);
  swift_beginAccess();
  v33 = v55;
  v34 = *(v54 + 16);
  v35 = v31 + v32;
  v36 = v53;
  v34(v55, v35, v53);

  v37 = v50[0];
  v34(v50[0], v33, v36);
  v38 = v54;
  v39 = v36;
  (*(v54 + 56))(v37, 0, 1, v36);
  v40 = sub_1003BC960(v37);
  LOBYTE(v36) = v41;

  sub_1000079B4(v37, &unk_100771B40, &unk_10062FB70);
  (*(v17 + 8))(v19, v16);
  if ((v36 & 1) == 0)
  {
    v46 = sub_100058000(&unk_1007819B0, &unk_10062FF40);
    v47 = v38;
    v48 = *(v46 + 48);
    v49 = v51;
    (*(v47 + 32))(v51, v55, v39);
    *(v49 + v48) = v40;
    return (*(*(v46 - 8) + 56))(v49, 0, 1, v46);
  }

  (*(v38 + 8))(v55, v39);
  v42 = sub_100058000(&unk_1007819B0, &unk_10062FF40);
  v43 = *(*(v42 - 8) + 56);
  v44 = v51;
  return v43(v44, 1, 1, v42);
}

uint64_t sub_1001B33C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v6 - 8);
  v8 = v50 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.Item();
  v10 = *(v9 - 8);
  v53 = v9;
  v54 = v10;
  __chkstk_darwin(v9);
  v55 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &unk_100771B10;
  v13 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v13 - 8);
  v15 = v50 - v14;
  v16 = type metadata accessor for IndexPath();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000794C(a1, v15, &unk_100771B10, qword_10062E540);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1000079B4(v15, &unk_100771B10, qword_10062E540);
LABEL_19:
    v42 = sub_100058000(&unk_100772130, &qword_1006344B8);
    v43 = *(*(v42 - 8) + 56);
    v44 = a2;
    return v43(v44, 1, 1, v42);
  }

  (*(v17 + 32))(v19, v15, v16);
  v20 = sub_1000C84C8();

  v21 = *(v20 + 16);

  v22 = IndexPath.section.getter();
  if (v22 < 0 || v22 >= v21)
  {
LABEL_18:
    (*(v17 + 8))(v19, v16);
    goto LABEL_19;
  }

  v23 = sub_1000C84C8();
  v25 = v24;

  v26 = IndexPath.section.getter();
  if ((v26 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v26 >= *(v23 + 16))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v52 = v3;
  v27 = v23 + 16 * v26;
  v25 = *(v27 + 32);
  v12 = *(v27 + 40);

  if (!(v12 >> 62))
  {
    for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v30)
    {
      v29 = IndexPath.row.getter();
      if ((v29 & 0x8000000000000000) != 0 || v29 >= i)
      {
        break;
      }

      v30 = IndexPath.row.getter();
      v50[1] = v25;
      v51 = a2;
      v50[0] = v8;
      if ((v12 & 0xC000000000000001) != 0)
      {
        goto LABEL_27;
      }

      if ((v30 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v30 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v31 = *(v12 + 8 * v30 + 32);

        goto LABEL_15;
      }

      __break(1u);
LABEL_30:
      ;
    }

    goto LABEL_18;
  }

LABEL_25:
  v30 = _CocoaArrayWrapper.endIndex.getter();
  if ((v30 & 0x8000000000000000) == 0)
  {
    goto LABEL_30;
  }

  __break(1u);
LABEL_27:
  v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_15:
  v32 = *(*v31 + 144);
  swift_beginAccess();
  v33 = v55;
  v34 = *(v54 + 16);
  v35 = v31 + v32;
  v36 = v53;
  v34(v55, v35, v53);

  v37 = v50[0];
  v34(v50[0], v33, v36);
  v38 = v54;
  v39 = v36;
  (*(v54 + 56))(v37, 0, 1, v36);
  v40 = sub_1003BCE6C(v37);
  LOBYTE(v36) = v41;

  sub_1000079B4(v37, &qword_100772140, &qword_10062D9F0);
  (*(v17 + 8))(v19, v16);
  if ((v36 & 1) == 0)
  {
    v46 = sub_100058000(&unk_100772130, &qword_1006344B8);
    v47 = v38;
    v48 = *(v46 + 48);
    v49 = v51;
    (*(v47 + 32))(v51, v55, v39);
    *(v49 + v48) = v40;
    return (*(*(v46 - 8) + 56))(v49, 0, 1, v46);
  }

  (*(v38 + 8))(v55, v39);
  v42 = sub_100058000(&unk_100772130, &qword_1006344B8);
  v43 = *(*(v42 - 8) + 56);
  v44 = v51;
  return v43(v44, 1, 1, v42);
}

uint64_t sub_1001B3988@<X0>(uint64_t a1@<X1>, int a2@<W2>, void (*a3)(_BYTE *, _BYTE *, uint64_t)@<X8>)
{
  v4 = v3;
  LODWORD(v124) = a2;
  v7 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  __chkstk_darwin(v7 - 8);
  v122 = &v115[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v115[-v10];
  __chkstk_darwin(v12);
  v120 = &v115[-v13];
  v14 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v127 = *(v14 - 8);
  v128 = v14;
  __chkstk_darwin(v14);
  v125 = &v115[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v126 = &v115[-v17];
  v18 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v132 = *(v18 - 8);
  v133 = v18;
  __chkstk_darwin(v18);
  v121 = &v115[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v22 = &v115[-v21];
  __chkstk_darwin(v23);
  v119 = &v115[-v24];
  __chkstk_darwin(v25);
  v27 = &v115[-v26];
  __chkstk_darwin(v28);
  v129 = &v115[-v29];
  v137 = sub_100058000(&unk_100772208, &unk_100634578);
  __chkstk_darwin(v137);
  v131 = &v115[-v30];
  v31 = type metadata accessor for IndexPath();
  v32 = *(v31 - 8);
  v135 = v31;
  v136 = v32;
  __chkstk_darwin(v31);
  v134 = &v115[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = sub_1000C8504();

  v35 = *(v34 + 16);

  v36 = IndexPath.section.getter();
  if ((v36 & 0x8000000000000000) == 0 && v36 < v35)
  {
    sub_1000C8504();
    v130 = v4;
    v38 = v37;
    v123 = a3;
    v39 = sub_1001D6ABC();
    v40 = v123;

    if (v39)
    {
      Strong = swift_weakLoadStrong();
      if (!Strong)
      {
        if (qword_100766FC8 == -1)
        {
LABEL_13:
          v52 = type metadata accessor for Logger();
          sub_100003E30(v52, qword_1007716F0);
          v53 = Logger.logObject.getter();
          v54 = static os_log_type_t.fault.getter();
          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            *v55 = 0;
            _os_log_impl(&_mh_execute_header, v53, v54, "section node cannot be moved", v55, 2u);
          }

          goto LABEL_16;
        }

LABEL_47:
        swift_once();
        goto LABEL_13;
      }

      v118 = v39;
      v42 = *(Strong + 16);

      v43 = sub_1000C8504();

      v44 = IndexPath.section.getter();
      if ((v44 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v117 = v42;
        if (v44 < *(v43 + 16))
        {
          v45 = v43 + 16 * v44;
          v38 = *(v45 + 32);
          v42 = *(v45 + 40);

          v46 = v134;
          (*(v136 + 16))(v134, a1, v135);
          v47 = IndexPath.section.getter();
          if (v47 == IndexPath.section.getter())
          {
            v48 = IndexPath.row.getter();
            v49 = IndexPath.row.getter();
            LODWORD(a1) = v48 < v49;
            if (v48 < v49 && (v124 & 1) != 0)
            {
              v50 = IndexPath.row.modify();
              if (__OFADD__(*v51, 1))
              {
                __break(1u);
LABEL_49:
                swift_once();
LABEL_27:
                v74 = type metadata accessor for Logger();
                sub_100003E30(v74, qword_1007716F0);
                v75 = Logger.logObject.getter();
                v76 = static os_log_type_t.fault.getter();
                if (os_log_type_enabled(v75, v76))
                {
                  v77 = swift_slowAlloc();
                  *v77 = 0;
                  _os_log_impl(&_mh_execute_header, v75, v76, "Failed to lookup node given a valid destinationIndexPath", v77, 2u);
                }

                else
                {
                }

                (*(v136 + 8))(v46, v135);
                return swift_storeEnumTagMultiPayload();
              }

              ++*v51;
              v50(v138, 0);
              LODWORD(a1) = 1;
            }
          }

          else
          {
            LODWORD(a1) = 0;
          }

          if (!(v42 >> 62))
          {
            v57 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v58 = IndexPath.row.getter();
            if (v58 < 0)
            {
              goto LABEL_51;
            }

            goto LABEL_22;
          }

          goto LABEL_45;
        }
      }

      __break(1u);
LABEL_45:
      v116 = a1;
      v57 = _CocoaArrayWrapper.endIndex.getter();
      v58 = IndexPath.row.getter();
      if ((v57 & 0x8000000000000000) == 0)
      {
        v40 = v123;
        v46 = v134;
        LODWORD(a1) = v116;
        if (v58 < 0)
        {
          goto LABEL_51;
        }

LABEL_22:
        if (v58 < v57)
        {
          v116 = a1;
          sub_1000C8504();
          v59 = sub_1001D6ABC();

          if (v59)
          {
            v122 = v42;
            v124 = v38;
            v60 = *(*v59 + 144);
            swift_beginAccess();
            v61 = v132;
            v62 = *(v132 + 16);
            v117 = v60;
            v63 = v59 + v60;
            v64 = v129;
            v65 = v133;
            v62(v129, v63, v133);
            v121 = v59;
            v66 = v126;
            TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
            v67 = *(v61 + 8);
            v67(v64, v65);
            v68 = v118;
            v69 = *(*v118 + 144);
            swift_beginAccess();
            v62(v27, v68 + v69, v65);
            v70 = v125;
            TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
            v67(v27, v65);
            sub_1001C44BC(&qword_10076B7A0, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier, &protocol conformance descriptor for TTRAccountsListsViewModel.ItemIdentifier);
            v71 = v128;
            LOBYTE(v69) = dispatch thunk of static Equatable.== infix(_:_:)();
            v72 = *(v127 + 8);
            v72(v70, v71);
            v72(v66, v71);
            if (v69)
            {
              (*(v136 + 8))(v134, v135);

              v73 = v131;
              swift_storeEnumTagMultiPayload();
              v40 = v123;
              return sub_100016588(v73, v40, &unk_100772208, &unk_100634578);
            }

            v78 = v121;
            v73 = v131;
            v62(v131, &v121[v117], v65);
            swift_storeEnumTagMultiPayload();
            v40 = v123;
            if (v116)
            {
              v79 = v118;
              v80 = swift_weakLoadStrong();
              v81 = v134;
              if (v80)
              {
                v82 = *(v80 + 16);

                if (*(v79 + 32))
                {
                  (*(v136 + 8))(v81, v135);

                  return sub_100016588(v73, v40, &unk_100772208, &unk_100634578);
                }

                if ((v78[32] & 1) == 0 && *(v78 + 3) < *(v79 + 24))
                {
                  v83 = v120;
                  sub_1001B71AC(v82, v120);

                  (*(v136 + 8))(v81, v135);
                  v84 = v132;
                  v85 = v133;
                  if ((*(v132 + 48))(v83, 1, v133) == 1)
                  {
                    sub_1000079B4(v83, &unk_100771B40, &unk_10062FB70);
                    return sub_100016588(v73, v40, &unk_100772208, &unk_100634578);
                  }

                  sub_1000079B4(v73, &unk_100772208, &unk_100634578);
                  v86 = *(v84 + 32);
                  v87 = v119;
                  v86(v119, v83, v85);
                  v86(v73, v87, v85);
                  goto LABEL_57;
                }
              }

              (*(v136 + 8))(v81, v135);
            }

            else
            {
              (*(v136 + 8))(v134, v135);
            }

            return sub_100016588(v73, v40, &unk_100772208, &unk_100634578);
          }

          if (qword_100766FC8 == -1)
          {
            goto LABEL_27;
          }

          goto LABEL_49;
        }

LABEL_51:
        if (v57 == v58)
        {
          v124 = v38;
          sub_1001B71AC(v117, v11);
          v88 = v132;
          v89 = v133;
          v90 = *(v132 + 48);
          if (v90(v11, 1, v133) != 1)
          {
            v104 = *(v88 + 32);
            v130 = v88 + 32;
            v123 = v104;
            v104(v22, v11, v89);
            v105 = v126;
            TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
            v106 = v118;
            v107 = v88;
            v108 = *(*v118 + 144);
            swift_beginAccess();
            v109 = v129;
            (*(v107 + 16))(v129, v106 + v108, v89);
            v110 = v125;
            TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
            v132 = *(v107 + 8);
            (v132)(v109, v89);
            sub_1001C44BC(&qword_10076B7A0, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier, &protocol conformance descriptor for TTRAccountsListsViewModel.ItemIdentifier);
            v111 = v128;
            LOBYTE(v108) = dispatch thunk of static Equatable.== infix(_:_:)();

            v112 = *(v127 + 8);
            v112(v110, v111);
            v112(v105, v111);
            (*(v136 + 8))(v134, v135);
            if (v108)
            {
              (v132)(v22, v89);
              v73 = v131;
            }

            else
            {
              v73 = v131;
              v123(v131, v22, v89);
            }

            goto LABEL_57;
          }

          sub_1000079B4(v11, &unk_100771B40, &unk_10062FB70);
          sub_100058000(&unk_10076BAA0, &unk_10062FD90);
          v91 = *(v88 + 80);
          v128 = v90;
          v92 = (v91 + 32) & ~v91;
          v93 = swift_allocObject();
          *(v93 + 16) = xmmword_10062D400;
          v94 = v118;
          v95 = *(*v118 + 144);
          swift_beginAccess();
          v96 = *(v132 + 16);
          v96(v93 + v92, v94 + v95, v133);
          v97 = v124;
          v98 = *(*v124 + 144);
          swift_beginAccess();
          v99 = v97 + v98;
          v100 = v129;
          v96(v129, v99, v133);
          v101 = v133;
          v102 = v122;
          sub_1001B662C(v93, 0, v100, v122);

          v103 = v132;

          (*(v103 + 8))(v100, v101);
          (*(v136 + 8))(v134, v135);
          if (v128(v102, 1, v101) != 1)
          {
            v113 = *(v103 + 32);
            v114 = v121;
            v113(v121, v102, v101);
            v73 = v131;
            v113(v131, v114, v101);
            goto LABEL_57;
          }

          sub_1000079B4(v102, &unk_100771B40, &unk_10062FB70);
        }

        else
        {
          (*(v136 + 8))(v46, v135);
        }

        v73 = v131;
LABEL_57:
        swift_storeEnumTagMultiPayload();
        return sub_100016588(v73, v40, &unk_100772208, &unk_100634578);
      }

      __break(1u);
      goto LABEL_47;
    }
  }

LABEL_16:

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1001B4A30@<X0>(int a1@<W2>, void (*a2)(_BYTE *, _BYTE *, uint64_t)@<X8>)
{
  v3 = v2;
  LODWORD(v120) = a1;
  v5 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v123 = *(v5 - 8);
  v124 = v5;
  __chkstk_darwin(v5);
  v121 = &v111[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v122 = &v111[-v8];
  v9 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v9 - 8);
  v116 = &v111[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v118 = &v111[-v12];
  __chkstk_darwin(v13);
  v15 = &v111[-v14];
  v129 = type metadata accessor for TTRRemindersListViewModel.Item();
  v126 = *(v129 - 8);
  __chkstk_darwin(v129);
  v115 = &v111[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v111[-v18];
  __chkstk_darwin(v20);
  v117 = &v111[-v21];
  __chkstk_darwin(v22);
  v125 = &v111[-v23];
  __chkstk_darwin(v24);
  v26 = &v111[-v25];
  v133 = sub_100058000(&qword_100772148, &unk_1006344D0);
  __chkstk_darwin(v133);
  v128 = &v111[-v27];
  v28 = type metadata accessor for IndexPath();
  v29 = *(v28 - 8);
  v131 = v28;
  v132 = v29;
  __chkstk_darwin(v28);
  v130 = &v111[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = sub_1000C84C8();

  v32 = *(v31 + 16);

  v33 = IndexPath.section.getter();
  if ((v33 & 0x8000000000000000) == 0 && v33 < v32)
  {
    sub_1000C84C8();
    v127 = v3;
    v35 = v34;
    v119 = a2;
    v36 = sub_1001D6ABC();
    v37 = v119;

    if (v36)
    {
      Strong = swift_weakLoadStrong();
      if (!Strong)
      {
        if (qword_100766FC8 == -1)
        {
LABEL_13:
          v49 = type metadata accessor for Logger();
          sub_100003E30(v49, qword_1007716F0);
          v50 = Logger.logObject.getter();
          v51 = static os_log_type_t.fault.getter();
          if (os_log_type_enabled(v50, v51))
          {
            v52 = swift_slowAlloc();
            *v52 = 0;
            _os_log_impl(&_mh_execute_header, v50, v51, "section node cannot be moved", v52, 2u);
          }

          goto LABEL_16;
        }

LABEL_47:
        swift_once();
        goto LABEL_13;
      }

      v114 = v36;
      v39 = *(Strong + 16);

      v40 = sub_1000C84C8();

      v41 = IndexPath.section.getter();
      if ((v41 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v113 = v39;
        if (v41 < *(v40 + 16))
        {
          v42 = v40 + 16 * v41;
          v35 = *(v42 + 32);
          v39 = *(v42 + 40);

          v43 = v130;
          (*(v132 + 16))();
          v44 = IndexPath.section.getter();
          if (v44 == IndexPath.section.getter())
          {
            v45 = IndexPath.row.getter();
            v46 = IndexPath.row.getter();
            LODWORD(v40) = v45 < v46;
            if (v45 < v46 && (v120 & 1) != 0)
            {
              v47 = IndexPath.row.modify();
              if (__OFADD__(*v48, 1))
              {
                __break(1u);
LABEL_49:
                swift_once();
LABEL_27:
                v73 = type metadata accessor for Logger();
                sub_100003E30(v73, qword_1007716F0);
                v74 = Logger.logObject.getter();
                v75 = static os_log_type_t.fault.getter();
                if (os_log_type_enabled(v74, v75))
                {
                  v76 = swift_slowAlloc();
                  *v76 = 0;
                  _os_log_impl(&_mh_execute_header, v74, v75, "Failed to lookup node given a valid destinationIndexPath", v76, 2u);
                }

                else
                {
                }

                (*(v132 + 8))(v43, v131);
                return swift_storeEnumTagMultiPayload();
              }

              ++*v48;
              v47(v134, 0);
              LODWORD(v40) = 1;
            }
          }

          else
          {
            LODWORD(v40) = 0;
          }

          if (!(v39 >> 62))
          {
            v54 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v55 = IndexPath.row.getter();
            if (v55 < 0)
            {
              goto LABEL_51;
            }

            goto LABEL_22;
          }

          goto LABEL_45;
        }
      }

      __break(1u);
LABEL_45:
      v112 = v40;
      v54 = _CocoaArrayWrapper.endIndex.getter();
      v55 = IndexPath.row.getter();
      if ((v54 & 0x8000000000000000) == 0)
      {
        v37 = v119;
        v43 = v130;
        LODWORD(v40) = v112;
        if (v55 < 0)
        {
          goto LABEL_51;
        }

LABEL_22:
        if (v55 < v54)
        {
          sub_1000C84C8();
          v56 = sub_1001D6ABC();

          if (v56)
          {
            v112 = v40;
            v113 = v39;
            v120 = v35;
            v57 = *(*v56 + 144);
            swift_beginAccess();
            v58 = v126;
            v59 = *(v126 + 16);
            v117 = v57;
            v60 = &v57[v56];
            v61 = v125;
            v118 = v56;
            v62 = v129;
            (v59)(v125, v60, v129);
            v63 = v122;
            TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
            v64 = *(v58 + 8);
            v64(v61, v62);
            v65 = v114;
            v66 = *(*v114 + 144);
            swift_beginAccess();
            v125 = v59;
            (v59)(v19, v65 + v66, v62);
            v67 = v121;
            TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
            v68 = v19;
            v69 = v62;
            v64(v68, v62);
            sub_1001C44BC(&qword_10076BB60, &type metadata accessor for TTRRemindersListViewModel.ItemID, &protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
            v70 = v124;
            LOBYTE(v66) = dispatch thunk of static Equatable.== infix(_:_:)();
            v71 = *(v123 + 8);
            v71(v67, v70);
            v71(v63, v70);
            if (v66)
            {
              (*(v132 + 8))(v130, v131);

              v72 = v128;
              swift_storeEnumTagMultiPayload();
              v37 = v119;
              return sub_100016588(v72, v37, &qword_100772148, &unk_1006344D0);
            }

            v77 = v118;
            v72 = v128;
            (v125)(v128, &v117[v118], v69);
            swift_storeEnumTagMultiPayload();
            v37 = v119;
            if (v112)
            {
              v78 = v114;
              v79 = swift_weakLoadStrong();
              v80 = v130;
              if (v79)
              {
                v81 = *(v79 + 16);

                if (*(v78 + 32))
                {
                  (*(v132 + 8))(v80, v131);

                  return sub_100016588(v72, v37, &qword_100772148, &unk_1006344D0);
                }

                if ((v77[32] & 1) == 0 && *(v77 + 3) < *(v78 + 24))
                {
                  v82 = v116;
                  sub_1001B7424(v81, v116);

                  (*(v132 + 8))(v80, v131);
                  v83 = v126;
                  if ((*(v126 + 48))(v82, 1, v69) == 1)
                  {
                    sub_1000079B4(v82, &qword_100772140, &qword_10062D9F0);
                    return sub_100016588(v72, v37, &qword_100772148, &unk_1006344D0);
                  }

                  sub_1000079B4(v72, &qword_100772148, &unk_1006344D0);
                  v84 = *(v83 + 32);
                  v85 = v115;
                  v84(v115, v82, v69);
                  v84(v72, v85, v69);
                  goto LABEL_57;
                }
              }

              (*(v132 + 8))(v80, v131);
            }

            else
            {
              (*(v132 + 8))(v130, v131);
            }

            return sub_100016588(v72, v37, &qword_100772148, &unk_1006344D0);
          }

          if (qword_100766FC8 == -1)
          {
            goto LABEL_27;
          }

          goto LABEL_49;
        }

LABEL_51:
        if (v54 == v55)
        {
          v120 = v35;
          sub_1001B7424(v113, v15);
          v86 = v126;
          v87 = *(v126 + 48);
          v88 = v129;
          if (v87(v15, 1, v129) != 1)
          {
            v101 = *(v86 + 32);
            v127 = v86 + 32;
            v119 = v101;
            v101(v26, v15, v88);
            v102 = v122;
            TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
            v103 = v114;
            v104 = *(*v114 + 144);
            swift_beginAccess();
            v105 = v125;
            (*(v86 + 16))(v125, v103 + v104, v88);
            v106 = v121;
            TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
            v126 = *(v86 + 8);
            (v126)(v105, v88);
            sub_1001C44BC(&qword_10076BB60, &type metadata accessor for TTRRemindersListViewModel.ItemID, &protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
            v107 = v124;
            LOBYTE(v104) = dispatch thunk of static Equatable.== infix(_:_:)();

            v108 = *(v123 + 8);
            v108(v106, v107);
            v108(v102, v107);
            (*(v132 + 8))(v130, v131);
            if (v104)
            {
              (v126)(v26, v88);
              v72 = v128;
            }

            else
            {
              v72 = v128;
              v119(v128, v26, v88);
            }

            goto LABEL_57;
          }

          sub_1000079B4(v15, &qword_100772140, &qword_10062D9F0);
          sub_100058000(&qword_100772150, &unk_100635D00);
          v89 = *(v86 + 80);
          v113 = v39;
          v90 = (v89 + 32) & ~v89;
          v91 = swift_allocObject();
          *(v91 + 16) = xmmword_10062D400;
          v124 = v87;
          v92 = v114;
          v93 = *(*v114 + 144);
          swift_beginAccess();
          v94 = *(v86 + 16);
          v94(v91 + v90, v92 + v93, v129);
          v95 = v120;
          v96 = *(*v120 + 144);
          swift_beginAccess();
          v97 = v95 + v96;
          v98 = v125;
          v94(v125, v97, v129);
          v99 = v129;
          v100 = v118;
          sub_1001B6BEC(v91, 0, v98, v118);

          (*(v86 + 8))(v98, v99);
          (*(v132 + 8))(v130, v131);
          if (v124(v100, 1, v99) != 1)
          {
            v109 = *(v86 + 32);
            v110 = v117;
            v109(v117, v100, v99);
            v72 = v128;
            v109(v128, v110, v99);
            goto LABEL_57;
          }

          sub_1000079B4(v100, &qword_100772140, &qword_10062D9F0);
        }

        else
        {
          (*(v132 + 8))(v43, v131);
        }

        v72 = v128;
LABEL_57:
        swift_storeEnumTagMultiPayload();
        return sub_100016588(v72, v37, &qword_100772148, &unk_1006344D0);
      }

      __break(1u);
      goto LABEL_47;
    }
  }

LABEL_16:

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1001B5AEC@<X0>(void (*a1)(char *, uint64_t)@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v42) = a2;
  v43 = a1;
  v4 = type metadata accessor for IndexPath();
  v40 = *(v4 - 8);
  __chkstk_darwin(v4);
  v39 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  __chkstk_darwin(v6 - 8);
  v8 = v37 - v7;
  v9 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v37 - v14;
  v16 = sub_1000C8504();

  v17 = *(v16 + 16);

  if (v17)
  {
    v38 = v4;
    v18 = sub_1000C8504();

    if (v17 > *(v18 + 16))
    {
      __break(1u);
    }

    else
    {
      v41 = a3;
      v37[1] = v17 - 1;
      v19 = v18 + 16 * (v17 - 1);
      v21 = *(v19 + 32);
      v20 = *(v19 + 40);

      v22 = *(*v21 + 144);
      swift_beginAccess();
      v37[0] = *(v10 + 16);
      (v37[0])(v12, v21 + v22, v9);

      sub_1001B662C(v43, v42 & 1, v12, v8);
      v43 = *(v10 + 8);
      v43(v12, v9);
      if ((*(v10 + 48))(v8, 1, v9) == 1)
      {

        sub_1000079B4(v8, &unk_100771B40, &unk_10062FB70);
LABEL_14:
        v36 = sub_100058000(&unk_1007721F0, &unk_100634558);
        return (*(*(v36 - 8) + 56))(v41, 1, 1, v36);
      }

      v42 = v20;
      (*(v10 + 32))(v15, v8, v9);
      sub_1000C8504();
      v10 = sub_1000F4DB4(v15, v26);

      if (!v10)
      {
        v43(v15, v9);

        goto LABEL_14;
      }

      if (!(v42 >> 62))
      {
        goto LABEL_10;
      }
    }

    _CocoaArrayWrapper.endIndex.getter();
LABEL_10:
    v27 = v39;
    v28 = v37[0];
    IndexPath.init(row:section:)();
    v28(v41, v15, v9);
    swift_beginAccess();
    v29 = *(v10 + 64);
    if (v29 >> 62)
    {
      v30 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v31 = v40;

    v32 = sub_100058000(&unk_1007721F0, &unk_100634558);
    v33 = *(v32 + 48);
    v34 = *(v32 + 64);

    v43(v15, v9);
    v35 = v41;
    *(v41 + v33) = v30;
    (*(v31 + 32))(v35 + v34, v27, v38);
    return (*(*(v32 - 8) + 56))(v35, 0, 1, v32);
  }

  v23 = sub_100058000(&unk_1007721F0, &unk_100634558);
  v24 = *(*(v23 - 8) + 56);

  return v24(a3, 1, 1, v23);
}

uint64_t sub_1001B608C@<X0>(void (*a1)(char *, uint64_t)@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v42) = a2;
  v43 = a1;
  v4 = type metadata accessor for IndexPath();
  v40 = *(v4 - 8);
  __chkstk_darwin(v4);
  v39 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v6 - 8);
  v8 = v37 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.Item();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v37 - v14;
  v16 = sub_1000C84C8();

  v17 = *(v16 + 16);

  if (v17)
  {
    v38 = v4;
    v18 = sub_1000C84C8();

    if (v17 > *(v18 + 16))
    {
      __break(1u);
    }

    else
    {
      v41 = a3;
      v37[1] = v17 - 1;
      v19 = v18 + 16 * (v17 - 1);
      v21 = *(v19 + 32);
      v20 = *(v19 + 40);

      v22 = *(*v21 + 144);
      swift_beginAccess();
      v37[0] = *(v10 + 16);
      (v37[0])(v12, v21 + v22, v9);

      sub_1001B6BEC(v43, v42 & 1, v12, v8);
      v43 = *(v10 + 8);
      v43(v12, v9);
      if ((*(v10 + 48))(v8, 1, v9) == 1)
      {

        sub_1000079B4(v8, &qword_100772140, &qword_10062D9F0);
LABEL_14:
        v36 = sub_100058000(&qword_100772188, &qword_100634500);
        return (*(*(v36 - 8) + 56))(v41, 1, 1, v36);
      }

      v42 = v20;
      (*(v10 + 32))(v15, v8, v9);
      sub_1000C84C8();
      v10 = sub_1000F2C50(v15, v26);

      if (!v10)
      {
        v43(v15, v9);

        goto LABEL_14;
      }

      if (!(v42 >> 62))
      {
        goto LABEL_10;
      }
    }

    _CocoaArrayWrapper.endIndex.getter();
LABEL_10:
    v27 = v39;
    v28 = v37[0];
    IndexPath.init(row:section:)();
    v28(v41, v15, v9);
    swift_beginAccess();
    v29 = *(v10 + 64);
    if (v29 >> 62)
    {
      v30 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v31 = v40;

    v32 = sub_100058000(&qword_100772188, &qword_100634500);
    v33 = *(v32 + 48);
    v34 = *(v32 + 64);

    v43(v15, v9);
    v35 = v41;
    *(v41 + v33) = v30;
    (*(v31 + 32))(v35 + v34, v27, v38);
    return (*(*(v32 - 8) + 56))(v35, 0, 1, v32);
  }

  v23 = sub_100058000(&qword_100772188, &qword_100634500);
  v24 = *(*(v23 - 8) + 56);

  return v24(a3, 1, 1, v23);
}

uint64_t sub_1001B662C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a2;
  v39 = a1;
  v7 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  __chkstk_darwin(v7 - 8);
  v43 = &v37[-v8];
  v49 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v9 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = &v37[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for TTRITreeViewExpandedState();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v37[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = v4;
  sub_1000C8504();
  v40 = a3;
  v16 = sub_1000F4DB4(a3, v15);

  if (!v16)
  {
    v19 = _swiftEmptyArrayStorage;
LABEL_25:
    v30 = v43;
    if (!v19[2])
    {

      return (*(v9 + 56))(a4, 1, 1, v49);
    }

    v31 = *(v42 + qword_100771758);
    if (v31)
    {
      v32 = *(v31 + 16);

      if (v32(v33))
      {
        Strong = swift_unknownObjectUnownedLoadStrong();
        (*(v31 + 368))(Strong, v39, v38 & 1, v19, v40);

        return sub_100016588(v30, a4, &unk_100771B40, &unk_10062FB70);
      }

      if (!v19[2])
      {

        (*(v9 + 56))(v30, 1, 1, v49);
        return sub_100016588(v30, a4, &unk_100771B40, &unk_10062FB70);
      }
    }

    v36 = v49;
    (*(v9 + 16))(v30, v19 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v49);

    (*(v9 + 56))(v30, 0, 1, v36);
    return sub_100016588(v30, a4, &unk_100771B40, &unk_10062FB70);
  }

  v41 = a4;
  v17 = (v12 + 16);
  v18 = (v12 + 88);
  v47 = enum case for TTRITreeViewExpandedState.notExpandable(_:);
  v46 = enum case for TTRITreeViewExpandedState.collapsed(_:);
  v45 = enum case for TTRITreeViewExpandedState.expanded(_:);
  v44 = v9 + 32;

  v19 = _swiftEmptyArrayStorage;
  while (1)
  {
    v20 = qword_1007A84C0;
    swift_beginAccess();
    (*v17)(v14, &v16[v20], v11);
    v21 = (*v18)(v14, v11);
    if (v21 == v47 || v21 == v46)
    {
LABEL_23:

      a4 = v41;
      goto LABEL_25;
    }

    if (v21 != v45)
    {
      goto LABEL_37;
    }

    v23 = *(*v16 + 144);
    swift_beginAccess();
    (*(v9 + 16))(v48, &v16[v23], v49);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_100547678(0, v19[2] + 1, 1, v19);
    }

    v25 = v19[2];
    v24 = v19[3];
    if (v25 >= v24 >> 1)
    {
      v19 = sub_100547678((v24 > 1), v25 + 1, 1, v19);
    }

    v19[2] = v25 + 1;
    (*(v9 + 32))(v19 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v25, v48, v49);
    swift_beginAccess();
    v26 = *(v16 + 8);
    if (v26 >> 62)
    {
      v27 = _CocoaArrayWrapper.endIndex.getter();
      if (!v27)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v27)
      {
        goto LABEL_23;
      }
    }

    v28 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
      break;
    }

    if ((v26 & 0xC000000000000001) != 0)
    {

      v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v28 & 0x8000000000000000) != 0)
      {
        goto LABEL_35;
      }

      if (v28 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_36;
      }

      v29 = *(v26 + 8 * v28 + 32);
    }

    v16 = v29;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1001B6BEC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a2;
  v39 = a1;
  v7 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v7 - 8);
  v43 = &v37[-v8];
  v49 = type metadata accessor for TTRRemindersListViewModel.Item();
  v9 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = &v37[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for TTRITreeViewExpandedState();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v37[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = v4;
  sub_1000C84C8();
  v40 = a3;
  v16 = sub_1000F2C50(a3, v15);

  if (!v16)
  {
    v19 = _swiftEmptyArrayStorage;
LABEL_25:
    v30 = v43;
    if (!v19[2])
    {

      return (*(v9 + 56))(a4, 1, 1, v49);
    }

    v31 = *(v42 + qword_100771758);
    if (v31)
    {
      v32 = *(v31 + 16);

      if (v32(v33))
      {
        Strong = swift_unknownObjectUnownedLoadStrong();
        (*(v31 + 368))(Strong, v39, v38 & 1, v19, v40);

        return sub_100016588(v30, a4, &qword_100772140, &qword_10062D9F0);
      }

      if (!v19[2])
      {

        (*(v9 + 56))(v30, 1, 1, v49);
        return sub_100016588(v30, a4, &qword_100772140, &qword_10062D9F0);
      }
    }

    v36 = v49;
    (*(v9 + 16))(v30, v19 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v49);

    (*(v9 + 56))(v30, 0, 1, v36);
    return sub_100016588(v30, a4, &qword_100772140, &qword_10062D9F0);
  }

  v41 = a4;
  v17 = (v12 + 16);
  v18 = (v12 + 88);
  v47 = enum case for TTRITreeViewExpandedState.notExpandable(_:);
  v46 = enum case for TTRITreeViewExpandedState.collapsed(_:);
  v45 = enum case for TTRITreeViewExpandedState.expanded(_:);
  v44 = v9 + 32;

  v19 = _swiftEmptyArrayStorage;
  while (1)
  {
    v20 = qword_1007A84C0;
    swift_beginAccess();
    (*v17)(v14, &v16[v20], v11);
    v21 = (*v18)(v14, v11);
    if (v21 == v47 || v21 == v46)
    {
LABEL_23:

      a4 = v41;
      goto LABEL_25;
    }

    if (v21 != v45)
    {
      goto LABEL_37;
    }

    v23 = *(*v16 + 144);
    swift_beginAccess();
    (*(v9 + 16))(v48, &v16[v23], v49);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_100547094(0, v19[2] + 1, 1, v19);
    }

    v25 = v19[2];
    v24 = v19[3];
    if (v25 >= v24 >> 1)
    {
      v19 = sub_100547094((v24 > 1), v25 + 1, 1, v19);
    }

    v19[2] = v25 + 1;
    (*(v9 + 32))(v19 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v25, v48, v49);
    swift_beginAccess();
    v26 = *(v16 + 8);
    if (v26 >> 62)
    {
      v27 = _CocoaArrayWrapper.endIndex.getter();
      if (!v27)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v27)
      {
        goto LABEL_23;
      }
    }

    v28 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
      break;
    }

    if ((v26 & 0xC000000000000001) != 0)
    {

      v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v28 & 0x8000000000000000) != 0)
      {
        goto LABEL_35;
      }

      if (v28 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_36;
      }

      v29 = *(v26 + 8 * v28 + 32);
    }

    v16 = v29;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1001B71AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = IndexPath.row.getter();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    IndexPath.section.getter();
    IndexPath.init(row:section:)();
    sub_1000C8504();
    v9 = sub_1001D6ABC();

    if (v9)
    {
      Strong = swift_weakLoadStrong();
      (*(v5 + 8))(v7, v4);
      if (Strong)
      {
        v11 = *(Strong + 16);

        if (v11 == a1)
        {
          v12 = *(*v9 + 144);
          swift_beginAccess();
          v13 = type metadata accessor for TTRAccountsListsViewModel.Item();
          v14 = *(v13 - 8);
          (*(v14 + 16))(a2, v9 + v12, v13);

          return (*(v14 + 56))(a2, 0, 1, v13);
        }
      }
    }

    else
    {
      (*(v5 + 8))(v7, v4);
    }

    v15 = type metadata accessor for TTRAccountsListsViewModel.Item();
    return (*(*(v15 - 8) + 56))(a2, 1, 1, v15);
  }

  return result;
}

uint64_t sub_1001B7424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = IndexPath.row.getter();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    IndexPath.section.getter();
    IndexPath.init(row:section:)();
    sub_1000C84C8();
    v9 = sub_1001D6ABC();

    if (v9)
    {
      Strong = swift_weakLoadStrong();
      (*(v5 + 8))(v7, v4);
      if (Strong)
      {
        v11 = *(Strong + 16);

        if (v11 == a1)
        {
          v12 = *(*v9 + 144);
          swift_beginAccess();
          v13 = type metadata accessor for TTRRemindersListViewModel.Item();
          v14 = *(v13 - 8);
          (*(v14 + 16))(a2, v9 + v12, v13);

          return (*(v14 + 56))(a2, 0, 1, v13);
        }
      }
    }

    else
    {
      (*(v5 + 8))(v7, v4);
    }

    v15 = type metadata accessor for TTRRemindersListViewModel.Item();
    return (*(*(v15 - 8) + 56))(a2, 1, 1, v15);
  }

  return result;
}

uint64_t sub_1001B769C()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100771E70);
  v1 = sub_100003E30(v0, qword_100771E70);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1001B7764(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1001B77A4(a1);
  return v2;
}

uint64_t *sub_1001B77A4(uint64_t a1)
{
  v3 = *v1;
  v4 = v1 + qword_1007A8498;
  v5 = *(type metadata accessor for TTRITreeViewDropProposal(0) + 20);
  v6 = sub_100058000(&qword_100780DC0, &unk_1006344C0);
  (*(*(v6 - 8) + 56))(&v4[v5], 1, 4, v6);
  *v4 = 0;
  v7 = qword_1007A84A0;
  v8 = sub_100058000(qword_100771F18, &qword_100634320);
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  v9 = *(*v1 + 120);
  updated = type metadata accessor for TTRITreeViewDropUpdateCoordinator.HitTestResult(0, *(v3 + 80), *(v3 + 88), v10);
  (*(*(updated - 8) + 56))(v1 + v9, 1, 1, updated);
  *(v1 + *(*v1 + 128)) = 0;
  *(v1 + qword_100771E88) = a1;
  return v1;
}

void (*sub_1001B7938@<X0>(void *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>))(uint64_t *, void)
{
  v112 = a2;
  v113 = a4;
  v111 = sub_100058000(&qword_100772190, &qword_100634508);
  __chkstk_darwin(v111);
  v110 = &v101[-v6];
  v7 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v108 = *(v7 - 8);
  v109 = v7;
  __chkstk_darwin(v7);
  v106 = &v101[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v107 = &v101[-v10];
  v11 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v11 - 8);
  v13 = &v101[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v101[-v15];
  v17 = type metadata accessor for IndexPath();
  __chkstk_darwin(v17);
  v19 = &v101[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v105 = &v101[-v21];
  __chkstk_darwin(v22);
  v24 = &v101[-v23];
  __chkstk_darwin(v25);
  v27 = &v101[-v26];
  v28 = a3;
  v30 = v29;
  sub_10000794C(v28, v16, &unk_100771B10, qword_10062E540);
  if ((*(v30 + 48))(v16, 1, v17) == 1)
  {
    sub_1000079B4(v16, &unk_100771B10, qword_10062E540);
LABEL_19:
    sub_100058000(&unk_10076BA80, &unk_10062FD70);
    return swift_storeEnumTagMultiPayload();
  }

  v104 = *(v30 + 32);
  v104(v27, v16, v17);
  [v112 locationInView:a1];
  v32 = v31;
  v33 = [a1 indexPathForRowAtPoint:?];
  if (v33)
  {
    v112 = v27;
    v34 = v33;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    [a1 rectForRowAtIndexPath:isa];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;

    v115.origin.x = v37;
    v115.origin.y = v39;
    v115.size.width = v41;
    v115.size.height = v43;
    v44 = CGRectGetHeight(v115) * 0.5;
    v116.origin.x = v37;
    v116.origin.y = v39;
    v116.size.width = v41;
    v116.size.height = v43;
    CGRectGetHeight(v116);
    v103 = v37;
    v117.origin.x = sub_100068328(v37, v39, v41, v43, v44, 0.0);
    x = v117.origin.x;
    y = v117.origin.y;
    width = v117.size.width;
    height = v117.size.height;
    if (v32 >= CGRectGetMinY(v117))
    {
      v119.origin.x = x;
      v119.origin.y = y;
      v119.size.width = width;
      v119.size.height = height;
      v102 = CGRectGetMaxY(v119) < v32;
    }

    else
    {
      v102 = 0;
    }

    v66 = v103;
    v120.origin.x = v103;
    v120.origin.y = v39;
    v120.size.width = v41;
    v120.size.height = v43;
    v67 = CGRectGetHeight(v120) * 0.2;
    v121.origin.x = v66;
    v121.origin.y = v39;
    v121.size.width = v41;
    v121.size.height = v43;
    CGRectGetHeight(v121);
    v122.origin.x = sub_100068328(v66, v39, v41, v43, v67, 0.0);
    v68 = v122.origin.x;
    v69 = v122.origin.y;
    v70 = v122.size.width;
    v71 = v122.size.height;
    if (v32 >= CGRectGetMinY(v122) && (v123.origin.x = v68, v123.origin.y = v69, v123.size.width = v70, v123.size.height = v71, CGRectGetMaxY(v123) >= v32))
    {
      v72 = v30;
      v73 = 1;
    }

    else
    {
      v72 = v30;
      v73 = 0;
    }

    sub_1000C8504();
    v74 = sub_1001D6ABC();

    if (v74)
    {
      v75 = *(*v74 + 144);
      swift_beginAccess();
      v77 = v108;
      v76 = v109;
      v78 = v74 + v75;
      v79 = v106;
      (*(v108 + 16))(v106, v78, v109);

      (*(v72 + 8))(v112, v17);
      v80 = *(v77 + 32);
      v81 = v107;
      v80(v107, v79, v76);
      v82 = v110;
      v104(v110, v24, v17);
      v83 = v111;
      v80((v82 + *(v111 + 36)), v81, v76);
      *(v82 + *(v83 + 40)) = v102;
      *(v82 + *(v83 + 44)) = v73;
      sub_100016588(v82, v113, &qword_100772190, &qword_100634508);
    }

    else
    {
      v85 = v72;
      if (qword_100766FE0 != -1)
      {
        swift_once();
      }

      v86 = type metadata accessor for Logger();
      sub_100003E30(v86, qword_100771E70);
      v87 = *(v72 + 16);
      v88 = v105;
      v87(v105, v24, v17);
      v89 = Logger.logObject.getter();
      v90 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = v85;
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v114[0] = v93;
        *v92 = 136315138;
        v94 = IndexPath.description.getter();
        v96 = v95;
        v97 = *(v91 + 8);
        v97(v88, v17);
        v98 = sub_100004060(v94, v96, v114);

        *(v92 + 4) = v98;
        _os_log_impl(&_mh_execute_header, v89, v90, "TTRITreeViewDropUpdateCoordinator: internal inconsistency: can't lookup item {at: %s}", v92, 0xCu);
        sub_100004758(v93);

        v97(v24, v17);
        v97(v112, v17);
      }

      else
      {

        v99 = *(v85 + 8);
        v99(v88, v17);
        v99(v24, v17);
        v99(v112, v17);
      }
    }

    goto LABEL_19;
  }

  v49 = v27;
  if (!IndexPath.row.getter() || (v50 = v30, v51 = IndexPath.row.getter(), v52 = v51 == [a1 numberOfRowsInSection:IndexPath.section.getter()], v30 = v50, v52) || (v53 = IndexPath._bridgeToObjectiveC()().super.isa, objc_msgSend(a1, "rectForRowAtIndexPath:", v53), v55 = v54, v57 = v56, v59 = v58, v61 = v60, v53, v118.origin.x = v55, v118.origin.y = v57, v118.size.width = v59, v118.size.height = v61, v32 < CGRectGetMinY(v118)))
  {
    v62 = v13;
    v63 = v49;
LABEL_10:
    v104(v62, v63, v17);
    v64 = 0;
LABEL_11:
    v65 = v113;
    (*(v30 + 56))(v13, v64, 1, v17);
    sub_100016588(v13, v65, &unk_100771B10, qword_10062E540);
    goto LABEL_19;
  }

  v124.origin.x = v55;
  v124.origin.y = v57;
  v124.size.width = v59;
  v124.size.height = v61;
  if (CGRectGetMinY(v124) >= v32)
  {
    (*(v50 + 8))(v49, v17);
    v64 = 1;
    goto LABEL_11;
  }

  (*(v50 + 16))(v19, v49, v17);
  result = IndexPath.row.modify();
  if (!__OFADD__(*v100, 1))
  {
    ++*v100;
    result(v114, 0);
    (*(v50 + 8))(v49, v17);
    v62 = v13;
    v63 = v19;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void (*sub_1001B836C@<X0>(void *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>))(uint64_t *, void)
{
  v112 = a2;
  v113 = a4;
  v111 = sub_100058000(&qword_1007720C8, &qword_100634478);
  __chkstk_darwin(v111);
  v110 = &v101[-v6];
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v108 = *(v7 - 8);
  v109 = v7;
  __chkstk_darwin(v7);
  v106 = &v101[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v107 = &v101[-v10];
  v11 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v11 - 8);
  v13 = &v101[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v101[-v15];
  v17 = type metadata accessor for IndexPath();
  __chkstk_darwin(v17);
  v19 = &v101[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v105 = &v101[-v21];
  __chkstk_darwin(v22);
  v24 = &v101[-v23];
  __chkstk_darwin(v25);
  v27 = &v101[-v26];
  v28 = a3;
  v30 = v29;
  sub_10000794C(v28, v16, &unk_100771B10, qword_10062E540);
  if ((*(v30 + 48))(v16, 1, v17) == 1)
  {
    sub_1000079B4(v16, &unk_100771B10, qword_10062E540);
LABEL_19:
    sub_100058000(&unk_1007720E0, &qword_10062FE20);
    return swift_storeEnumTagMultiPayload();
  }

  v104 = *(v30 + 32);
  v104(v27, v16, v17);
  [v112 locationInView:a1];
  v32 = v31;
  v33 = [a1 indexPathForRowAtPoint:?];
  if (v33)
  {
    v112 = v27;
    v34 = v33;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    [a1 rectForRowAtIndexPath:isa];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;

    v115.origin.x = v37;
    v115.origin.y = v39;
    v115.size.width = v41;
    v115.size.height = v43;
    v44 = CGRectGetHeight(v115) * 0.5;
    v116.origin.x = v37;
    v116.origin.y = v39;
    v116.size.width = v41;
    v116.size.height = v43;
    CGRectGetHeight(v116);
    v103 = v37;
    v117.origin.x = sub_100068328(v37, v39, v41, v43, v44, 0.0);
    x = v117.origin.x;
    y = v117.origin.y;
    width = v117.size.width;
    height = v117.size.height;
    if (v32 >= CGRectGetMinY(v117))
    {
      v119.origin.x = x;
      v119.origin.y = y;
      v119.size.width = width;
      v119.size.height = height;
      v102 = CGRectGetMaxY(v119) < v32;
    }

    else
    {
      v102 = 0;
    }

    v66 = v103;
    v120.origin.x = v103;
    v120.origin.y = v39;
    v120.size.width = v41;
    v120.size.height = v43;
    v67 = CGRectGetHeight(v120) * 0.2;
    v121.origin.x = v66;
    v121.origin.y = v39;
    v121.size.width = v41;
    v121.size.height = v43;
    CGRectGetHeight(v121);
    v122.origin.x = sub_100068328(v66, v39, v41, v43, v67, 0.0);
    v68 = v122.origin.x;
    v69 = v122.origin.y;
    v70 = v122.size.width;
    v71 = v122.size.height;
    if (v32 >= CGRectGetMinY(v122) && (v123.origin.x = v68, v123.origin.y = v69, v123.size.width = v70, v123.size.height = v71, CGRectGetMaxY(v123) >= v32))
    {
      v72 = v30;
      v73 = 1;
    }

    else
    {
      v72 = v30;
      v73 = 0;
    }

    sub_1000C84C8();
    v74 = sub_1001D6ABC();

    if (v74)
    {
      v75 = *(*v74 + 144);
      swift_beginAccess();
      v77 = v108;
      v76 = v109;
      v78 = v74 + v75;
      v79 = v106;
      (*(v108 + 16))(v106, v78, v109);

      (*(v72 + 8))(v112, v17);
      v80 = *(v77 + 32);
      v81 = v107;
      v80(v107, v79, v76);
      v82 = v110;
      v104(v110, v24, v17);
      v83 = v111;
      v80((v82 + *(v111 + 36)), v81, v76);
      *(v82 + *(v83 + 40)) = v102;
      *(v82 + *(v83 + 44)) = v73;
      sub_100016588(v82, v113, &qword_1007720C8, &qword_100634478);
    }

    else
    {
      v85 = v72;
      if (qword_100766FE0 != -1)
      {
        swift_once();
      }

      v86 = type metadata accessor for Logger();
      sub_100003E30(v86, qword_100771E70);
      v87 = *(v72 + 16);
      v88 = v105;
      v87(v105, v24, v17);
      v89 = Logger.logObject.getter();
      v90 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = v85;
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v114[0] = v93;
        *v92 = 136315138;
        v94 = IndexPath.description.getter();
        v96 = v95;
        v97 = *(v91 + 8);
        v97(v88, v17);
        v98 = sub_100004060(v94, v96, v114);

        *(v92 + 4) = v98;
        _os_log_impl(&_mh_execute_header, v89, v90, "TTRITreeViewDropUpdateCoordinator: internal inconsistency: can't lookup item {at: %s}", v92, 0xCu);
        sub_100004758(v93);

        v97(v24, v17);
        v97(v112, v17);
      }

      else
      {

        v99 = *(v85 + 8);
        v99(v88, v17);
        v99(v24, v17);
        v99(v112, v17);
      }
    }

    goto LABEL_19;
  }

  v49 = v27;
  if (!IndexPath.row.getter() || (v50 = v30, v51 = IndexPath.row.getter(), v52 = v51 == [a1 numberOfRowsInSection:IndexPath.section.getter()], v30 = v50, v52) || (v53 = IndexPath._bridgeToObjectiveC()().super.isa, objc_msgSend(a1, "rectForRowAtIndexPath:", v53), v55 = v54, v57 = v56, v59 = v58, v61 = v60, v53, v118.origin.x = v55, v118.origin.y = v57, v118.size.width = v59, v118.size.height = v61, v32 < CGRectGetMinY(v118)))
  {
    v62 = v13;
    v63 = v49;
LABEL_10:
    v104(v62, v63, v17);
    v64 = 0;
LABEL_11:
    v65 = v113;
    (*(v30 + 56))(v13, v64, 1, v17);
    sub_100016588(v13, v65, &unk_100771B10, qword_10062E540);
    goto LABEL_19;
  }

  v124.origin.x = v55;
  v124.origin.y = v57;
  v124.size.width = v59;
  v124.size.height = v61;
  if (CGRectGetMinY(v124) >= v32)
  {
    (*(v50 + 8))(v49, v17);
    v64 = 1;
    goto LABEL_11;
  }

  (*(v50 + 16))(v19, v49, v17);
  result = IndexPath.row.modify();
  if (!__OFADD__(*v100, 1))
  {
    ++*v100;
    result(v114, 0);
    (*(v50 + 8))(v49, v17);
    v62 = v13;
    v63 = v19;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void sub_1001B8DA0(char *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X5>, uint64_t *a6@<X8>)
{
  v162 = a4;
  v163 = a5;
  v164 = a3;
  v153 = a2;
  v159 = a1;
  v161 = a6;
  v158 = sub_100058000(&qword_100772100, &qword_100634498);
  v160 = *(v158 - 8);
  __chkstk_darwin(v158);
  v141 = v133 - v6;
  v7 = type metadata accessor for TTRITreeViewDropProposal.Intent(0);
  __chkstk_darwin(v7 - 8);
  v156 = v133 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_100058000(&qword_100772108, &qword_1006344A0);
  __chkstk_darwin(v150);
  v151 = v133 - v9;
  v10 = sub_100058000(&unk_100772110, &unk_10063D370);
  __chkstk_darwin(v10 - 8);
  v144 = v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v142 = v133 - v13;
  __chkstk_darwin(v14);
  v143 = v133 - v15;
  v148 = sub_100058000(&unk_100781910, &unk_1006305A0);
  __chkstk_darwin(v148);
  v139 = v133 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v136 = v133 - v18;
  __chkstk_darwin(v19);
  v138 = v133 - v20;
  v152 = type metadata accessor for TTRRemindersListViewModel.Item();
  v149 = *(v152 - 8);
  __chkstk_darwin(v152);
  v140 = v133 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v137 = v133 - v23;
  __chkstk_darwin(v24);
  v146 = v133 - v25;
  v26 = sub_100058000(&qword_100772120, &qword_1006344A8);
  __chkstk_darwin(v26 - 8);
  v154 = v133 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = v133 - v29;
  __chkstk_darwin(v31);
  v33 = v133 - v32;
  v34 = sub_100058000(&qword_100772128, &qword_1006344B0);
  __chkstk_darwin(v34 - 8);
  v155 = v133 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = v133 - v37;
  v39 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v39 - 8);
  v41 = v133 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v44 = v133 - v43;
  v45 = type metadata accessor for IndexPath();
  v46 = *(v45 - 8);
  __chkstk_darwin(v45);
  v147 = v133 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v50 = v133 - v49;
  sub_10000794C(v159, v44, &unk_100771B10, qword_10062E540);
  v52 = v46 + 48;
  v51 = *(v46 + 48);
  if ((v51)(v44, 1, v45) != 1)
  {
    v134 = v46;
    v56 = *(v46 + 32);
    v159 = v50;
    v133[1] = v46 + 32;
    v133[0] = v56;
    v56(v50, v44, v45);
    v57 = *(v160 + 56);
    v145 = v38;
    v57(v38, 1, 1, v158);
    sub_1001C171C(v153, v33);
    sub_10000794C(v33, v30, &qword_100772120, &qword_1006344A8);
    v153 = v51;
    v133[2] = v52;
    v58 = (v51)(v30, 2, v45);
    v135 = v33;
    v157 = v45;
    if (v58)
    {
      if (v58 != 1)
      {
        sub_1001AB458();
        v78 = v77;
        v80 = v79;
        v81 = v134;
        (*(v134 + 16))(v41, v159, v45);
        (*(v81 + 56))(v41, 0, 1, v45);
        v82 = v143;
        sub_1001AF0C4(v78, v80 & 1, v41, v143);

        sub_1000079B4(v41, &unk_100771B10, qword_10062E540);
        v83 = sub_100058000(&unk_100772130, &qword_1006344B8);
        v84 = (*(*(v83 - 8) + 48))(v82, 1, v83);
        v85 = v160;
        v86 = v155;
        if (v84 == 1)
        {
          (*(v81 + 8))(v159, v157);
          sub_1000079B4(v82, &unk_100772110, &unk_10063D370);
          v76 = 0;
          v55 = v163;
        }

        else
        {
          v164 = *&v82[*(v83 + 48)];
          v114 = v148;
          v113 = v149;
          v147 = *(v148 + 48);
          v115 = v82;
          v116 = *(v149 + 32);
          v117 = v138;
          v116(v138, v115, v152);
          *&v117[v147] = v164;
          v164 = *&v117[*(v114 + 48)];
          v118 = v146;
          v119 = v117;
          v120 = v152;
          v116(v146, v119, v152);
          v121 = *(v83 + 48);
          v122 = v151;
          (*(v113 + 16))(v151, v118, v120);
          *(v122 + v121) = v164;
          swift_storeEnumTagMultiPayload();
          v55 = v163;
          v76 = sub_1003D146C(v122, v162, v163);
          sub_1000079B4(v122, &qword_100772108, &qword_1006344A0);
          (*(v113 + 8))(v146, v120);
          (*(v81 + 8))(v159, v157);
        }

        v111 = v161;
        v112 = v156;
LABEL_17:
        v123 = v154;
        sub_100016588(v135, v154, &qword_100772120, &qword_1006344A8);
        v124 = (v153)(v123, 2, v157);
        if (v124)
        {
          v125 = v124 == 1;
          v126 = v145;
          if (v125)
          {
            v127 = 3;
            if ((v76 & 1) == 0)
            {
              goto LABEL_26;
            }
          }

          else
          {
            v127 = 2;
            if ((v76 & 1) == 0)
            {
              goto LABEL_26;
            }
          }
        }

        else
        {
          sub_1000079B4(v123, &qword_100772120, &qword_1006344A8);
          v127 = 3;
          v126 = v145;
          if ((v76 & 1) == 0)
          {
LABEL_26:
            sub_1000079B4(v126, &qword_100772128, &qword_1006344B0);
            v129 = 1;
            v127 = 1;
LABEL_28:
            v131 = sub_100058000(&qword_100780DC0, &unk_1006344C0);
            (*(*(v131 - 8) + 56))(v112, v129, 4, v131);
            v132 = type metadata accessor for TTRITreeViewDropProposal(0);
            sub_1001C4264(v112, v111 + *(v132 + 20));

            *v111 = v127;
            goto LABEL_29;
          }
        }

        sub_100016588(v126, v86, &qword_100772128, &qword_1006344B0);
        v128 = v158;
        if ((*(v85 + 48))(v86, 1, v158) == 1)
        {
          sub_1000079B4(v86, &qword_100772128, &qword_1006344B0);
          v129 = 2;
        }

        else
        {
          v130 = v141;
          sub_100016588(v86, v141, &qword_100772100, &qword_100634498);
          (v133[0])(v112, v130 + *(v128 + 36), v157);
          v129 = 0;
        }

        goto LABEL_28;
      }

      v59 = v145;
      sub_1000079B4(v145, &qword_100772128, &qword_1006344B0);
      v60 = v158;
      v61 = v159;
      v62 = v134;
      v63 = *(v134 + 16);
      v63(v59 + *(v158 + 36), v159, v45);
      *v59 = 0;
      v57(v59, 0, 1, v60);
      v64 = v62;
      sub_1001AB458();
      v66 = v65;
      LOBYTE(v59) = v67;
      v63(v41, v61, v45);
      (*(v62 + 56))(v41, 0, 1, v45);
      v68 = v144;
      sub_1001AF0C4(v66, v59 & 1, v41, v144);

      sub_1000079B4(v41, &unk_100771B10, qword_10062E540);
      v69 = sub_100058000(&unk_100772130, &qword_1006344B8);
      if ((*(*(v69 - 8) + 48))(v68, 1, v69) != 1)
      {
        v164 = *&v68[*(v69 + 48)];
        v87 = v61;
        v88 = v148;
        v89 = v149;
        v90 = *(v148 + 48);
        v91 = *(v149 + 32);
        v92 = v139;
        v93 = v68;
        v94 = v152;
        v91(v139, v93, v152);
        *&v92[v90] = v164;
        v95 = *&v92[*(v88 + 48)];
        v96 = v140;
        v91(v140, v92, v94);
        v97 = *(v69 + 48);
        v98 = v151;
        (*(v89 + 16))(v151, v96, v94);
        *(v98 + v97) = v95;
        swift_storeEnumTagMultiPayload();
        v55 = v163;
        v76 = sub_1003D146C(v98, v162, v163);
        sub_1000079B4(v98, &qword_100772108, &qword_1006344A0);
        (*(v89 + 8))(v96, v94);
        (*(v64 + 8))(v87, v157);
        goto LABEL_14;
      }

      (*(v62 + 8))(v61, v157);
      v70 = v68;
    }

    else
    {
      v71 = v147;
      (v133[0])(v147, v30, v45);
      v72 = v142;
      v73 = v159;
      sub_1001B0CF8(v71, v159, 0, 0, v142);
      v74 = sub_100058000(&unk_100772130, &qword_1006344B8);
      if ((*(*(v74 - 8) + 48))(v72, 1, v74) != 1)
      {
        v164 = *(v72 + *(v74 + 48));
        v99 = v148;
        v100 = v149;
        v101 = *(v148 + 48);
        v102 = *(v149 + 32);
        v103 = v136;
        v104 = v152;
        v102(v136, v72, v152);
        *&v103[v101] = v164;
        v105 = *&v103[*(v99 + 48)];
        v106 = v137;
        v102(v137, v103, v104);
        v107 = *(v74 + 48);
        v108 = v151;
        (*(v100 + 16))(v151, v106, v104);
        *(v108 + v107) = v105;
        swift_storeEnumTagMultiPayload();
        v55 = v163;
        v76 = sub_1003D146C(v108, v162, v163);
        sub_1000079B4(v108, &qword_100772108, &qword_1006344A0);
        (*(v100 + 8))(v106, v104);
        v109 = *(v134 + 8);
        v110 = v157;
        v109(v147, v157);
        v109(v73, v110);
        goto LABEL_14;
      }

      v75 = *(v134 + 8);
      v75(v71, v45);
      v75(v73, v45);
      v70 = v72;
    }

    sub_1000079B4(v70, &unk_100772110, &unk_10063D370);
    v76 = 0;
    v55 = v163;
LABEL_14:
    v85 = v160;
    v111 = v161;
    v86 = v155;
    v112 = v156;
    goto LABEL_17;
  }

  sub_1000079B4(v44, &unk_100771B10, qword_10062E540);
  v53 = qword_1007A8498;
  v54 = v164;
  swift_beginAccess();
  sub_1001C4200(v54 + v53, v161);

  v55 = v163;
LABEL_29:
}

void sub_1001B9E08(void *a1@<X0>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t *a4@<X8>)
{
  v79 = a4;
  v80 = a3;
  v78 = a2;
  v75 = sub_100058000(&qword_100772108, &qword_1006344A0);
  __chkstk_darwin(v75);
  v76 = &v63 - v5;
  v6 = sub_100058000(&qword_100772178, &qword_1006344F0);
  __chkstk_darwin(v6 - 8);
  v72 = &v63 - v7;
  v68 = sub_100058000(&qword_100772180, &qword_1006344F8);
  __chkstk_darwin(v68);
  v67 = &v63 - v8;
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v73 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRRemindersListViewModel.Item();
  v70 = *(v12 - 8);
  v71 = v12;
  __chkstk_darwin(v12);
  v69 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRITreeViewDropProposal.Intent(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100058000(&qword_100772120, &qword_1006344A8);
  __chkstk_darwin(v17 - 8);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v63 - v21;
  __chkstk_darwin(v23);
  v25 = &v63 - v24;
  sub_1001C171C(a1, &v63 - v24);
  v26 = sub_100058000(&qword_100780DC0, &unk_1006344C0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 56);
  v77 = v16;
  v29 = v16;
  v30 = v10;
  v65 = v27 + 56;
  v66 = v28;
  v28(v29, 1, 4, v26);
  sub_10000794C(v25, v22, &qword_100772120, &qword_1006344A8);
  v31 = *(v10 + 48);
  v74 = v9;
  v32 = v31(v22, 2, v9);
  if (!v32)
  {
    sub_1000079B4(v25, &qword_100772120, &qword_1006344A8);
    v39 = v22;
    v37 = &qword_100772120;
    v38 = &qword_1006344A8;
    goto LABEL_6;
  }

  if (v32 == 1)
  {
    sub_1001AB458();
    v34 = v72;
    sub_1001B608C(v35, v33 & 1, v72);

    v36 = sub_100058000(&qword_100772188, &qword_100634500);
    if ((*(*(v36 - 8) + 48))(v34, 1, v36) == 1)
    {
      sub_1000079B4(v25, &qword_100772120, &qword_1006344A8);
      v37 = &qword_100772178;
      v38 = &qword_1006344F0;
      v39 = v34;
LABEL_6:
      sub_1000079B4(v39, v37, v38);
      v40 = 0;
      v41 = v79;
      v42 = v80;
      v43 = v77;
      goto LABEL_17;
    }

    v47 = *(v34 + *(v36 + 48));
    v48 = *(v36 + 64);
    v50 = v67;
    v49 = v68;
    v51 = *(v68 + 48);
    v52 = *(v70 + 32);
    v63 = *(v68 + 64);
    v64 = v52;
    v52(v67, v34, v71);
    *&v50[v51] = v47;
    v53 = *(v30 + 32);
    v54 = v34 + v48;
    v55 = v74;
    v53(&v50[v63], v54, v74);
    v72 = *&v50[*(v49 + 48)];
    v56 = *(v49 + 64);
    v57 = v71;
    v64(v69, v50, v71);
    v67 = v53;
    v68 = v30 + 32;
    v53(v73, &v50[v56], v55);
    v58 = *(sub_100058000(&unk_100772130, &qword_1006344B8) + 48);
    v59 = v69;
    v60 = v70;
    v61 = v76;
    (*(v70 + 16))(v76, v69, v57);
    *(v61 + v58) = v72;
    swift_storeEnumTagMultiPayload();
    v42 = v80;
    LOBYTE(v58) = sub_1003D146C(v61, v78, v80);
    sub_1000079B4(v61, &qword_100772108, &qword_1006344A0);
    (*(v60 + 8))(v59, v57);
    sub_1000079B4(v25, &qword_100772120, &qword_1006344A8);
    if (v58)
    {
      v43 = v77;
      sub_1001C445C(v77, type metadata accessor for TTRITreeViewDropProposal.Intent);
      (v67)(v43, v73, v74);
      v66(v43, 0, 4, v26);
      v40 = 3;
      v41 = v79;
      goto LABEL_17;
    }

    (*(v30 + 8))(v73, v74);
    v40 = 0;
LABEL_16:
    v41 = v79;
    v43 = v77;
    goto LABEL_17;
  }

  v44 = v76;
  swift_storeEnumTagMultiPayload();
  v42 = v80;
  v45 = sub_1003D146C(v44, v78, v80);
  sub_1000079B4(v44, &qword_100772108, &qword_1006344A0);
  if ((v45 & 1) == 0)
  {
    sub_1000079B4(v25, &qword_100772120, &qword_1006344A8);
    v40 = 1;
    goto LABEL_16;
  }

  sub_100016588(v25, v19, &qword_100772120, &qword_1006344A8);
  v46 = v31(v19, 2, v74);
  if (!v46)
  {
    sub_1000079B4(v19, &qword_100772120, &qword_1006344A8);
    v40 = 3;
    goto LABEL_16;
  }

  v41 = v79;
  v43 = v77;
  if (v46 == 1)
  {
    v40 = 3;
  }

  else
  {
    v40 = 2;
  }

LABEL_17:
  v62 = type metadata accessor for TTRITreeViewDropProposal(0);
  sub_1001C4264(v43, v41 + *(v62 + 20));

  *v41 = v40;
}

void sub_1001BA5CC(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, void *a6@<X5>, uint64_t *a7@<X8>)
{
  v402 = a5;
  v410 = a1;
  v390 = a7;
  v406 = sub_100058000(&unk_1007721A8, &unk_100634520);
  v11 = *(v406 - 8);
  v388 = v11;
  __chkstk_darwin(v406);
  v357 = &v349 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v358 = &v349 - v14;
  v15 = type metadata accessor for TTRITreeViewDropProposal.Intent(0);
  __chkstk_darwin(v15 - 8);
  v17 = (&v349 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18);
  v395 = &v349 - v19;
  v397 = sub_100058000(&unk_10076BD90, &qword_10063D3E0);
  __chkstk_darwin(v397);
  v401 = &v349 - v20;
  v21 = type metadata accessor for IndexPath();
  v411 = *(v21 - 8);
  v412 = v21;
  __chkstk_darwin(v21);
  v362 = &v349 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v373 = (&v349 - v24);
  __chkstk_darwin(v25);
  v403 = (&v349 - v26);
  __chkstk_darwin(v27);
  v382 = &v349 - v28;
  __chkstk_darwin(v29);
  v387 = &v349 - v30;
  __chkstk_darwin(v31);
  v380 = &v349 - v32;
  __chkstk_darwin(v33);
  v398 = (&v349 - v34);
  __chkstk_darwin(v35);
  v385 = &v349 - v36;
  __chkstk_darwin(v37);
  v386 = &v349 - v38;
  v39 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v39 - 8);
  v361 = (&v349 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v41);
  v363 = (&v349 - v42);
  __chkstk_darwin(v43);
  v377 = (&v349 - v44);
  __chkstk_darwin(v45);
  v389 = &v349 - v46;
  __chkstk_darwin(v47);
  v379 = (&v349 - v48);
  v49 = sub_100058000(&qword_1007721B8, &qword_100634530);
  __chkstk_darwin(v49 - 8);
  v360 = &v349 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v376 = &v349 - v52;
  __chkstk_darwin(v53);
  v372 = &v349 - v54;
  __chkstk_darwin(v55);
  v374 = &v349 - v56;
  __chkstk_darwin(v57);
  v59 = &v349 - v58;
  __chkstk_darwin(v60);
  v384 = (&v349 - v61);
  __chkstk_darwin(v62);
  v383 = (&v349 - v63);
  __chkstk_darwin(v64);
  v378 = &v349 - v65;
  v396 = sub_100058000(&qword_1007721C0, &qword_100634538);
  __chkstk_darwin(v396);
  v350 = &v349 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v67);
  v354 = &v349 - v68;
  __chkstk_darwin(v69);
  v352 = &v349 - v70;
  __chkstk_darwin(v71);
  v356 = &v349 - v72;
  __chkstk_darwin(v73);
  v367 = &v349 - v74;
  __chkstk_darwin(v75);
  v365 = &v349 - v76;
  __chkstk_darwin(v77);
  v371 = &v349 - v78;
  __chkstk_darwin(v79);
  v369 = &v349 - v80;
  v81 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v399 = *(v81 - 8);
  v400 = v81;
  __chkstk_darwin(v81);
  v349 = &v349 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v83);
  v353 = &v349 - v84;
  __chkstk_darwin(v85);
  v351 = &v349 - v86;
  __chkstk_darwin(v87);
  v355 = &v349 - v88;
  __chkstk_darwin(v89);
  v368 = &v349 - v90;
  __chkstk_darwin(v91);
  v364 = &v349 - v92;
  __chkstk_darwin(v93);
  v370 = &v349 - v94;
  __chkstk_darwin(v95);
  v366 = &v349 - v96;
  v97 = sub_100058000(&qword_1007721C8, &qword_100634540);
  __chkstk_darwin(v97 - 8);
  v393 = &v349 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v99);
  v101 = &v349 - v100;
  __chkstk_darwin(v102);
  v407 = &v349 - v103;
  v104 = sub_100058000(&qword_1007721D0, &qword_100634548);
  __chkstk_darwin(v104 - 8);
  v394 = &v349 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v106);
  v375 = &v349 - v107;
  __chkstk_darwin(v108);
  v110 = &v349 - v109;
  __chkstk_darwin(v111);
  v408 = a4;
  v409 = &v349 - v112;
  swift_retain_n();
  v405 = a6;
  v113 = a2;
  v114 = [a2 localDragSession];
  v359 = v17;
  if (v114 && (swift_getObjectType(), Strong = swift_unknownObjectUnownedLoadStrong(), v116 = sub_10039C078(Strong), Strong, swift_unknownObjectRelease(), v116))
  {
    v117 = qword_1007A8808;
    swift_beginAccess();
    v118 = *(v116 + v117);
  }

  else
  {
    v118 = &_swiftEmptySetSingleton;
  }

  v119 = *(v11 + 56);
  v381 = (v11 + 56);
  v119(v409, 1, 1, v406);
  v120 = v407;
  v404 = a3;
  sub_1001C171C(v113, v407);
  v121 = sub_1000AA78C(v410, v118);

  sub_10000794C(v120, v101, &qword_1007721C8, &qword_100634540);
  v122 = v412;
  v124 = v411 + 48;
  v123 = *(v411 + 48);
  v125 = v123(v101, 2, v412);
  v391 = v124;
  v392 = v123;
  if (!v125)
  {
    v143 = v411;
    v403 = *(v411 + 32);
    v403(v398, v101, v122);
    v144 = *(v404 + qword_100771E88);
    v146 = (v143 + 16);
    v145 = *(v143 + 16);
    v147 = v387;
    v148 = v410;
    v383 = v145;
    v145(v387, v410, v122);
    if (*(v148 + *(sub_100058000(&qword_100772190, &qword_100634508) + 40)))
    {
      v149 = IndexPath.row.modify();
      if (__OFADD__(*v150, 1))
      {
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      ++*v150;
      v149(v413, 0);
    }

    v381 = v146;
    LODWORD(v386) = v121;
    v151 = v380;
    v403(v380, v147, v122);
    v382 = v144;
    sub_1001AF758(v398, v151, 0, 0, v59);
    v152 = (v411 + 8);
    v153 = *(v411 + 8);
    v153(v151, v122);
    v154 = sub_100058000(&unk_1007819B0, &unk_10062FF40);
    v155 = *(v154 - 8);
    v156 = *(v155 + 48);
    v379 = (v155 + 48);
    v157 = v156(v59, 1, v154);
    v385 = v152;
    v384 = v153;
    v380 = v156;
    if (v157 == 1)
    {
      sub_1000079B4(v59, &qword_1007721B8, &qword_100634530);
      LODWORD(v404) = 0;
      LODWORD(v387) = 0;
      LOBYTE(v140) = 0;
      v158 = v400;
      v159 = v401;
      v160 = v399;
      if (v386)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v197 = *&v59[*(v154 + 48)];
      v198 = v396;
      v199 = *(v396 + 48);
      v160 = v399;
      v200 = v400;
      v201 = *(v399 + 32);
      v202 = v367;
      v201(v367, v59, v400);
      *&v202[v199] = v197;
      v203 = *&v202[*(v198 + 48)];
      v204 = v368;
      v201(v368, v202, v200);
      v205 = *(v154 + 48);
      v206 = *(v160 + 16);
      v159 = v401;
      v206(v401, v204, v200);
      v404 = v203;
      *(v159 + v205) = v203;
      swift_storeEnumTagMultiPayload();
      v207 = v408;
      v208 = v405;
      LODWORD(v387) = sub_1000BDD44(v159, v408, v402, v405);
      sub_1000079B4(v159, &unk_10076BD90, &qword_10063D3E0);
      if (v386)
      {
        (*(v160 + 8))(v204, v200);
        LOBYTE(v140) = 0;
        LODWORD(v404) = 0;
LABEL_46:
        v122 = v412;
LABEL_47:
        v384(v398, v122);
        v142 = v395;
        v263 = v394;
        v264 = v393;
        v265 = v392;
        v141 = v387;
        v139 = v404;
        goto LABEL_59;
      }

      v386 = *(v154 + 48);
      v206(v159, v204, v200);
      *(v159 + v386) = v404;
      swift_storeEnumTagMultiPayload();
      LODWORD(v404) = sub_1000BDD44(v159, v207, v402, v208);
      sub_1000079B4(v159, &unk_10076BD90, &qword_10063D3E0);
      (*(v160 + 8))(v204, v200);
      v122 = v412;
      v158 = v200;
    }

    v266 = v389;
    v383(v389, v410, v122);
    (*(v411 + 56))(v266, 0, 1, v122);

    v140 = v405;
    v267 = v374;
    sub_1001B2E00(v266, v374);
    sub_1000079B4(v266, &unk_100771B10, qword_10062E540);
    if ((v380)(v267, 1, v154) == 1)
    {
      sub_1000079B4(v267, &qword_1007721B8, &qword_100634530);

      LOBYTE(v140) = 0;
    }

    else
    {
      v268 = *(v267 + *(v154 + 48));
      v269 = v396;
      v270 = *(v396 + 48);
      v271 = *(v160 + 32);
      v410 = v140;
      v140 = v356;
      v271(v356, v267, v158);
      *(v140 + v270) = v268;
      v272 = *(v140 + *(v269 + 48));
      v273 = v355;
      v271(v355, v140, v158);
      v274 = v408;
      v275 = *(v154 + 48);
      (*(v160 + 16))(v159, v273, v158);
      *(v159 + v275) = v272;
      swift_storeEnumTagMultiPayload();
      v276 = v410;
      LOBYTE(v140) = sub_1000BDD44(v159, v274, v402, v410);
      sub_1000079B4(v159, &unk_10076BD90, &qword_10063D3E0);
      (*(v160 + 8))(v273, v158);
    }

    goto LABEL_46;
  }

  if (v125 != 1)
  {
    v161 = *(v404 + qword_100771E88);

    v387 = v405;
    sub_1001AACA0();
    v162 = v122;
    v164 = v163;
    v166 = v165;
    v167 = v410;
    v168 = (v411 + 16);
    v169 = v386;
    v398 = *(v411 + 16);
    (v398)(v386, v410, v162);
    v170 = *(v167 + *(sub_100058000(&qword_100772190, &qword_100634508) + 40));
    if (v170 == 1)
    {
      v171 = IndexPath.row.modify();
      if (__OFADD__(*v172, 1))
      {
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      ++*v172;
      v171(v413, 0);
    }

    LODWORD(v376) = v170;
    v380 = v168;
    v174 = v411;
    v173 = v412;
    v175 = v379;
    v403 = *(v411 + 32);
    v374 = v411 + 32;
    v403(v379, v169, v412);
    v176 = *(v174 + 56);
    v386 = v174 + 56;
    v382 = v176;
    (v176)(v175, 0, 1, v173);
    v177 = v378;
    sub_1001AEA30(v164, v166 & 1, v175, v378);

    sub_1000079B4(v175, &unk_100771B10, qword_10062E540);
    v178 = sub_100058000(&unk_1007819B0, &unk_10062FF40);
    v179 = *(v178 - 8);
    v180 = *(v179 + 48);
    v381 = (v179 + 48);
    v181 = v180(v177, 1, v178);
    v379 = v178;
    if (v181 == 1)
    {
      sub_1000079B4(v177, &qword_1007721B8, &qword_100634530);
      v141 = 0;
    }

    else
    {
      v372 = *&v177[*(v178 + 48)];
      v209 = v396;
      v210 = v180;
      v211 = *(v396 + 48);
      v212 = v399;
      v213 = v400;
      v214 = *(v399 + 32);
      v215 = v161;
      v216 = v369;
      v214(v369, v177, v400);
      *&v216[v211] = v372;
      v180 = v210;
      v217 = *&v216[*(v209 + 48)];
      v218 = v366;
      v219 = v216;
      v161 = v215;
      v178 = v379;
      v214(v366, v219, v213);
      v220 = *(v178 + 48);
      v221 = v401;
      (*(v212 + 16))(v401, v218, v213);
      *(v221 + v220) = v217;
      swift_storeEnumTagMultiPayload();
      v141 = sub_1000BDD44(v221, v408, v402, v387);
      sub_1000079B4(v221, &unk_10076BD90, &qword_10063D3E0);
      (*(v212 + 8))(v218, v213);
    }

    v222 = v389;
    v223 = v383;
    v224 = v412;
    (v398)(v389, v410, v412);
    (v382)(v222, 0, 1, v224);
    sub_1001B2E00(v222, v223);
    sub_1000079B4(v222, &unk_100771B10, qword_10062E540);
    v225 = v180(v223, 1, v178);
    v373 = v180;
    if (v225 == 1)
    {
      sub_1000079B4(v223, &qword_1007721B8, &qword_100634530);
      LODWORD(v140) = 0;
    }

    else
    {
      v226 = *(v223 + *(v178 + 48));
      v389 = v161;
      v227 = v141;
      v228 = v396;
      v229 = *(v396 + 48);
      v230 = v399;
      v231 = *(v399 + 32);
      v140 = v371;
      v232 = v223;
      v233 = v400;
      v231(v371, v232, v400);
      *(v140 + v229) = v226;
      v234 = *(v228 + 48);
      v141 = v227;
      v235 = *(v140 + v234);
      v236 = v370;
      v231(v370, v140, v233);
      v237 = *(v178 + 48);
      v238 = v401;
      (*(v230 + 16))(v401, v236, v233);
      *(v238 + v237) = v235;
      swift_storeEnumTagMultiPayload();
      LODWORD(v140) = sub_1000BDD44(v238, v408, v402, v387);
      sub_1000079B4(v238, &unk_10076BD90, &qword_10063D3E0);
      (*(v230 + 8))(v236, v233);
    }

    v239 = v385;
    v240 = v384;
    sub_1001AACA0();
    v242 = v241;
    v244 = v243;
    (v398)(v239, v410, v412);
    if (v376)
    {
      v245 = IndexPath.row.modify();
      if (__OFADD__(*v246, 1))
      {
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      ++*v246;
      v245(v413, 0);
    }

    v247 = v377;
    v248 = v239;
    v249 = v412;
    v403(v377, v248, v412);
    (v382)(v247, 0, 1, v249);
    sub_1001AEA30(v242, v244 & 1, v247, v240);

    sub_1000079B4(v247, &unk_100771B10, qword_10062E540);
    if (v373(v240, 1, v178) == 1)
    {
      sub_1000079B4(v240, &qword_1007721B8, &qword_100634530);

      v139 = 0;
    }

    else
    {
      v250 = *&v240[*(v178 + 48)];
      v251 = v396;
      v252 = *(v396 + 48);
      v253 = v399;
      LODWORD(v389) = v140;
      v140 = *(v399 + 32);
      v254 = v141;
      v255 = v365;
      v256 = v400;
      (v140)(v365, v240, v400);
      *&v255[v252] = v250;
      v257 = *&v255[*(v251 + 48)];
      v258 = v364;
      v259 = v255;
      v141 = v254;
      (v140)(v364, v259, v256);
      LOBYTE(v140) = v389;
      v260 = *(v379 + 12);
      v261 = v401;
      (*(v253 + 16))(v401, v258, v256);
      *(v261 + v260) = v257;
      swift_storeEnumTagMultiPayload();
      v262 = v387;
      v139 = sub_1000BDD44(v261, v408, v402, v387);
      sub_1000079B4(v261, &unk_10076BD90, &qword_10063D3E0);
      (*(v253 + 8))(v258, v256);
    }

    v142 = v395;
    v122 = v412;
    goto LABEL_41;
  }

  LODWORD(v386) = v121;
  v126 = sub_100058000(&qword_100772190, &qword_100634508);
  v127 = v410;
  v128 = *(v410 + *(v126 + 44));
  v129 = (v411 + 16);
  v130 = v403;
  v398 = *(v411 + 16);
  (v398)(v403, v410, v122);
  LODWORD(v385) = *(v127 + *(v126 + 40));
  if ((v385 & 1) == 0)
  {
    goto LABEL_10;
  }

  v131 = IndexPath.row.modify();
  if (__OFADD__(*v132, 1))
  {
    __break(1u);
    goto LABEL_82;
  }

  ++*v132;
  v131(v413, 0);
LABEL_10:
  v384 = v129;
  v133 = v409;
  sub_1000079B4(v409, &qword_1007721D0, &qword_100634548);
  v134 = (v411 + 32);
  v135 = *(v411 + 32);
  v136 = v382;
  v135(v382, v130, v122);
  *v110 = v128;
  v137 = v406;
  v138 = &v110[*(v406 + 36)];
  v403 = v135;
  v383 = v134;
  v135(v138, v136, v122);
  v119(v110, 0, 1, v137);
  sub_100016588(v110, v133, &qword_1007721D0, &qword_100634548);
  if (v386)
  {
    v139 = 0;
    LOBYTE(v140) = 0;
    v141 = 0;
    v142 = v395;
LABEL_41:
    v263 = v394;
    v264 = v393;
    v265 = v392;
    goto LABEL_59;
  }

  v182 = *(v404 + qword_100771E88);

  v386 = v405;
  sub_1001AACA0();
  v184 = v183;
  v186 = v185;
  v187 = v373;
  (v398)(v373, v410, v122);
  v188 = v376;
  v189 = v372;
  if (!v385)
  {
    goto LABEL_26;
  }

  v190 = IndexPath.row.modify();
  if (__OFADD__(*v191, 1))
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  ++*v191;
  v190(v413, 0);
LABEL_26:
  v192 = v363;
  v403(v363, v187, v122);
  v193 = (v411 + 56);
  v382 = *(v411 + 56);
  (v382)(v192, 0, 1, v122);
  sub_1001AEA30(v184, v186 & 1, v192, v189);

  sub_1000079B4(v192, &unk_100771B10, qword_10062E540);
  v194 = sub_100058000(&unk_1007819B0, &unk_10062FF40);
  v195 = *(v194 - 8);
  v381 = *(v195 + 48);
  v380 = (v195 + 48);
  v196 = v381(v189, 1, v194);
  v379 = v193;
  if (v196 == 1)
  {
    sub_1000079B4(v189, &qword_1007721B8, &qword_100634530);
    LODWORD(v387) = 0;
  }

  else
  {
    v277 = *&v189[*(v194 + 48)];
    v278 = v396;
    v279 = *(v396 + 48);
    v378 = v182;
    v281 = v399;
    v280 = v400;
    v282 = *(v399 + 32);
    v283 = v352;
    v282(v352, v189, v400);
    *&v283[v279] = v277;
    v122 = v412;
    v284 = *&v283[*(v278 + 48)];
    v285 = v351;
    v286 = v283;
    v287 = v386;
    v282(v351, v286, v280);
    v288 = *(v194 + 48);
    v289 = v401;
    (*(v281 + 16))(v401, v285, v280);
    *(v289 + v288) = v284;
    swift_storeEnumTagMultiPayload();
    LODWORD(v387) = sub_1000BDD44(v289, v408, v402, v287);
    v290 = v289;
    v188 = v376;
    sub_1000079B4(v290, &unk_10076BD90, &qword_10063D3E0);
    (*(v281 + 8))(v285, v280);
  }

  v291 = v389;
  (v398)(v389, v410, v122);
  (v382)(v291, 0, 1, v122);
  sub_1001B2E00(v291, v188);
  sub_1000079B4(v291, &unk_100771B10, qword_10062E540);
  if (v381(v188, 1, v194) == 1)
  {
    sub_1000079B4(v188, &qword_1007721B8, &qword_100634530);
    LODWORD(v389) = 0;
  }

  else
  {
    v292 = *(v188 + *(v194 + 48));
    v293 = v396;
    v294 = *(v396 + 48);
    v296 = v399;
    v295 = v400;
    v297 = v188;
    v298 = *(v399 + 32);
    v299 = v354;
    v298(v354, v297, v400);
    *&v299[v294] = v292;
    v300 = *&v299[*(v293 + 48)];
    v301 = v353;
    v298(v353, v299, v295);
    v302 = *(v194 + 48);
    v303 = v401;
    (*(v296 + 16))(v401, v301, v295);
    *(v303 + v302) = v300;
    swift_storeEnumTagMultiPayload();
    LODWORD(v389) = sub_1000BDD44(v303, v408, v402, v386);
    sub_1000079B4(v303, &unk_10076BD90, &qword_10063D3E0);
    (*(v296 + 8))(v301, v295);
  }

  v304 = v362;
  sub_1001AACA0();
  v306 = v305;
  v308 = v307;
  (v398)(v304, v410, v412);
  if (!v385)
  {
    goto LABEL_55;
  }

  v309 = IndexPath.row.modify();
  if (!__OFADD__(*v310, 1))
  {
    ++*v310;
    v309(v413, 0);
LABEL_55:
    v311 = v361;
    v312 = v412;
    v403(v361, v304, v412);
    (v382)(v311, 0, 1, v312);
    v313 = v308 & 1;
    v314 = v360;
    sub_1001AEA30(v306, v313, v311, v360);

    sub_1000079B4(v311, &unk_100771B10, qword_10062E540);
    if (v381(v314, 1, v194) == 1)
    {
      sub_1000079B4(v314, &qword_1007721B8, &qword_100634530);

      v139 = 0;
    }

    else
    {
      v315 = *&v314[*(v194 + 48)];
      v316 = v396;
      v317 = *(v396 + 48);
      v318 = v399;
      v319 = *(v399 + 32);
      v320 = v350;
      v321 = v314;
      v322 = v400;
      v319(v350, v321, v400);
      *&v320[v317] = v315;
      v323 = *&v320[*(v316 + 48)];
      v324 = v349;
      v319(v349, v320, v322);
      v325 = *(v194 + 48);
      v326 = v401;
      (*(v318 + 16))(v401, v324, v322);
      *(v326 + v325) = v323;
      swift_storeEnumTagMultiPayload();
      v327 = v386;
      v139 = sub_1000BDD44(v326, v408, v402, v386);
      sub_1000079B4(v326, &unk_10076BD90, &qword_10063D3E0);
      (*(v318 + 8))(v324, v322);
    }

    v142 = v395;
    v122 = v412;
    v263 = v394;
    v264 = v393;
    v265 = v392;
    v141 = v387;
    LOBYTE(v140) = v389;
LABEL_59:
    sub_100016588(v407, v264, &qword_1007721C8, &qword_100634540);
    v328 = v265(v264, 2, v122);
    if (v328)
    {
      if (v328 != 1)
      {
        v329 = 2;
        v330 = v405;
        if ((v141 & 1) == 0)
        {
LABEL_62:
          sub_1000079B4(v409, &qword_1007721D0, &qword_100634548);
          v331 = sub_100058000(&qword_100780DC0, &unk_1006344C0);
          v332 = *(*(v331 - 8) + 56);
          if ((v140 & 1) == 0)
          {
            v332(v142, 1, 4, v331);
            if (v139)
            {
              v329 = 2;
            }

            else
            {
              v329 = 1;
            }

            goto LABEL_78;
          }

          v333 = v142;
          v334 = 3;
          goto LABEL_77;
        }

LABEL_66:
        v335 = (v388 + 48);
        if (v140)
        {
          v336 = v375;
          sub_100016588(v409, v375, &qword_1007721D0, &qword_100634548);
          v337 = v406;
          if ((*v335)(v336, 1, v406) == 1)
          {
            sub_1000079B4(v336, &qword_1007721D0, &qword_100634548);
            v338 = sub_100058000(&qword_100780DC0, &unk_1006344C0);
            (*(*(v338 - 8) + 56))(v142, 4, 4, v338);
          }

          else
          {
            v341 = v358;
            sub_100016588(v336, v358, &unk_1007721A8, &unk_100634520);
            if (*v341)
            {
              sub_1000079B4(v341, &unk_1007721A8, &unk_100634520);
              v342 = 3;
              v343 = v359;
            }

            else
            {
              v347 = &v341[*(v337 + 36)];
              v343 = v359;
              v403(v359, v347, v122);
              v342 = 0;
            }

            v348 = sub_100058000(&qword_100780DC0, &unk_1006344C0);
            (*(*(v348 - 8) + 56))(v343, v342, 4, v348);
            sub_1001C4264(v343, v142);
          }

          goto LABEL_78;
        }

        sub_100016588(v409, v263, &qword_1007721D0, &qword_100634548);
        v339 = v406;
        if ((*v335)(v263, 1, v406) == 1)
        {
          sub_1000079B4(v263, &qword_1007721D0, &qword_100634548);
          v340 = sub_100058000(&qword_100780DC0, &unk_1006344C0);
          (*(*(v340 - 8) + 56))(v142, 2, 4, v340);
LABEL_78:
          v345 = v390;
          v346 = type metadata accessor for TTRITreeViewDropProposal(0);
          sub_1001C4264(v142, v345 + *(v346 + 20));

          *v345 = v329;

          return;
        }

        v344 = v357;
        sub_100016588(v263, v357, &unk_1007721A8, &unk_100634520);
        v403(v142, (v344 + *(v339 + 36)), v122);
        v331 = sub_100058000(&qword_100780DC0, &unk_1006344C0);
        v332 = *(*(v331 - 8) + 56);
        v333 = v142;
        v334 = 0;
LABEL_77:
        v332(v333, v334, 4, v331);
        goto LABEL_78;
      }
    }

    else
    {
      sub_1000079B4(v264, &qword_1007721C8, &qword_100634540);
    }

    v329 = 3;
    v330 = v405;
    if ((v141 & 1) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_66;
  }

LABEL_86:
  __break(1u);
}

void sub_1001BCD34(id a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v419 = a1;
  v400 = a6;
  v414 = sub_100058000(&qword_100772100, &qword_100634498);
  v398 = *(v414 - 8);
  v418 = v398;
  __chkstk_darwin(v414);
  v369 = &v360 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v370 = &v360 - v12;
  v13 = type metadata accessor for TTRITreeViewDropProposal.Intent(0);
  __chkstk_darwin(v13 - 8);
  v15 = &v360 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v405 = &v360 - v17;
  v410 = sub_100058000(&qword_100772108, &qword_1006344A0);
  __chkstk_darwin(v410);
  v409 = &v360 - v18;
  v19 = type metadata accessor for IndexPath();
  v420 = *(v19 - 8);
  v421 = v19;
  __chkstk_darwin(v19);
  v374 = &v360 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v385 = (&v360 - v22);
  __chkstk_darwin(v23);
  v412 = (&v360 - v24);
  __chkstk_darwin(v25);
  v392 = (&v360 - v26);
  __chkstk_darwin(v27);
  v397 = &v360 - v28;
  __chkstk_darwin(v29);
  v391 = &v360 - v30;
  __chkstk_darwin(v31);
  v411 = &v360 - v32;
  __chkstk_darwin(v33);
  v395 = (&v360 - v34);
  __chkstk_darwin(v35);
  v396 = &v360 - v36;
  v37 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v37 - 8);
  v373 = &v360 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v376 = &v360 - v40;
  __chkstk_darwin(v41);
  v389 = &v360 - v42;
  __chkstk_darwin(v43);
  v399 = &v360 - v44;
  __chkstk_darwin(v45);
  v47 = &v360 - v46;
  v48 = sub_100058000(&unk_100772110, &unk_10063D370);
  __chkstk_darwin(v48 - 8);
  v372 = &v360 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v388 = (&v360 - v51);
  __chkstk_darwin(v52);
  v375 = &v360 - v53;
  __chkstk_darwin(v54);
  v386 = &v360 - v55;
  __chkstk_darwin(v56);
  v58 = &v360 - v57;
  __chkstk_darwin(v59);
  v394 = (&v360 - v60);
  __chkstk_darwin(v61);
  v393 = (&v360 - v62);
  __chkstk_darwin(v63);
  v390 = &v360 - v64;
  v406 = sub_100058000(&unk_100781910, &unk_1006305A0);
  __chkstk_darwin(v406);
  v362 = &v360 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v66);
  v366 = &v360 - v67;
  __chkstk_darwin(v68);
  v364 = &v360 - v69;
  __chkstk_darwin(v70);
  v368 = &v360 - v71;
  __chkstk_darwin(v72);
  v380 = &v360 - v73;
  __chkstk_darwin(v74);
  v378 = &v360 - v75;
  __chkstk_darwin(v76);
  v384 = &v360 - v77;
  __chkstk_darwin(v78);
  v382 = &v360 - v79;
  v408 = type metadata accessor for TTRRemindersListViewModel.Item();
  v407 = *(v408 - 8);
  __chkstk_darwin(v408);
  v361 = &v360 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v81);
  v365 = &v360 - v82;
  __chkstk_darwin(v83);
  v363 = &v360 - v84;
  __chkstk_darwin(v85);
  v367 = &v360 - v86;
  __chkstk_darwin(v87);
  v381 = &v360 - v88;
  __chkstk_darwin(v89);
  v377 = &v360 - v90;
  __chkstk_darwin(v91);
  v383 = &v360 - v92;
  __chkstk_darwin(v93);
  v379 = &v360 - v94;
  v95 = sub_100058000(&qword_100772120, &qword_1006344A8);
  __chkstk_darwin(v95 - 8);
  v403 = &v360 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v97);
  v99 = &v360 - v98;
  __chkstk_darwin(v100);
  v416 = &v360 - v101;
  v102 = sub_100058000(&qword_100772128, &qword_1006344B0);
  __chkstk_darwin(v102 - 8);
  v404 = &v360 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v104);
  v387 = &v360 - v105;
  __chkstk_darwin(v106);
  v108 = &v360 - v107;
  __chkstk_darwin(v109);
  v417 = &v360 - v110;
  v415 = a4;
  swift_retain_n();
  v413 = a5;
  v111 = a2;
  v112 = [a2 localDragSession];
  v371 = v15;
  if (v112)
  {
    swift_getObjectType();
    v113 = a3;
    Strong = swift_unknownObjectUnownedLoadStrong();
    v115 = sub_10039C078(Strong);

    swift_unknownObjectRelease();
    if (v115)
    {
      v116 = qword_1007A8808;
      swift_beginAccess();
      v117 = *(v115 + v116);

      goto LABEL_6;
    }
  }

  else
  {
    v113 = a3;
  }

  v117 = &_swiftEmptySetSingleton;
LABEL_6:
  v118 = *(v418 + 56);
  v418 += 56;
  v118(v417, 1, 1, v414);
  v119 = v416;
  sub_1001C171C(v111, v416);
  v120 = sub_1000AA78C(v419, v117);

  sub_10000794C(v119, v99, &qword_100772120, &qword_1006344A8);
  v121 = v421;
  v122 = v420 + 48;
  v401 = *(v420 + 48);
  v123 = v401(v99, 2, v421);
  v402 = v122;
  if (!v123)
  {
    v140 = v420;
    v412 = *(v420 + 32);
    v412(v411, v99, v121);
    v141 = *(v113 + qword_100771E88);
    v143 = *(v140 + 16);
    v142 = (v140 + 16);
    v144 = v397;
    v145 = v419;
    v395 = v143;
    v143(v397, v419, v121);
    if (*(v145 + *(sub_100058000(&qword_1007720C8, &qword_100634478) + 40)))
    {
      v146 = IndexPath.row.modify();
      if (__OFADD__(*v147, 1))
      {
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      ++*v147;
      v146(v423, 0);
    }

    LODWORD(v396) = v120;
    v148 = v391;
    v412(v391, v144, v121);
    v393 = v141;
    sub_1001B0CF8(v411, v148, 0, 0, v58);
    v150 = (v420 + 8);
    v149 = *(v420 + 8);
    v149(v148, v121);
    v151 = sub_100058000(&unk_100772130, &qword_1006344B8);
    v152 = *(v151 - 8);
    v153 = *(v152 + 48);
    v154 = (v152 + 48);
    v155 = v153(v58, 1, v151);
    v392 = v153;
    v391 = v154;
    if (v155 == 1)
    {
      sub_1000079B4(v58, &unk_100772110, &unk_10063D370);
      LODWORD(v397) = 0;
      LODWORD(v139) = 0;
      v138 = 0;
      v156 = v415;
      if (v396)
      {
LABEL_46:
        v149(v411, v121);
        goto LABEL_47;
      }
    }

    else
    {
      v389 = v142;
      v394 = v149;
      v390 = v150;
      v196 = *&v58[*(v151 + 48)];
      v197 = v406;
      v198 = *(v406 + 48);
      v199 = v407;
      v200 = *(v407 + 32);
      v201 = v380;
      v202 = v408;
      v200(v380, v58, v408);
      *&v201[v198] = v196;
      v203 = *&v201[*(v197 + 48)];
      v204 = v381;
      v200(v381, v201, v202);
      v205 = *(v151 + 48);
      v206 = *(v199 + 16);
      v207 = v409;
      v206(v409, v204, v202);
      v397 = v203;
      *&v207[v205] = v203;
      v208 = v202;
      swift_storeEnumTagMultiPayload();
      v209 = v207;
      v156 = v415;
      v210 = v207;
      v139 = v413;
      LODWORD(v418) = sub_1003D146C(v209, v415, v413);
      sub_1000079B4(v210, &qword_100772108, &qword_1006344A0);
      if (v396)
      {
        (*(v199 + 8))(v204, v208);
        v138 = 0;
        LODWORD(v397) = 0;
        v121 = v421;
        LOBYTE(v139) = v418;
        v394(v411, v421);
        goto LABEL_47;
      }

      v396 = *(v151 + 48);
      v206(v210, v204, v208);
      *(v210 + v396) = v397;
      swift_storeEnumTagMultiPayload();
      LODWORD(v397) = sub_1003D146C(v210, v156, v139);
      sub_1000079B4(v210, &qword_100772108, &qword_1006344A0);
      (*(v199 + 8))(v204, v208);
      v121 = v421;
      LODWORD(v139) = v418;
      v149 = v394;
    }

    v269 = v399;
    v395(v399, v419, v121);
    (*(v420 + 56))(v269, 0, 1, v121);

    v270 = v413;
    v271 = v386;
    sub_1001B33C4(v269, v386);
    sub_1000079B4(v269, &unk_100771B10, qword_10062E540);
    if (v392(v271, 1, v151) == 1)
    {
      sub_1000079B4(v271, &unk_100772110, &unk_10063D370);

      v138 = 0;
    }

    else
    {
      v272 = v271;
      v415 = *(v271 + *(v151 + 48));
      v394 = v149;
      v273 = v406;
      v274 = *(v406 + 48);
      v419 = v270;
      v275 = v407;
      LODWORD(v418) = v139;
      v139 = *(v407 + 32);
      v276 = v368;
      v277 = v408;
      (v139)(v368, v272, v408);
      *&v276[v274] = v415;
      v278 = *&v276[*(v273 + 48)];
      v279 = v367;
      (v139)(v367, v276, v277);
      LOBYTE(v139) = v418;
      v280 = *(v151 + 48);
      v281 = v409;
      (*(v275 + 16))(v409, v279, v277);
      *(v281 + v280) = v278;
      swift_storeEnumTagMultiPayload();
      v282 = v419;
      v138 = sub_1003D146C(v281, v156, v419);
      sub_1000079B4(v281, &qword_100772108, &qword_1006344A0);
      v283 = v279;
      v149 = v394;
      (*(v275 + 8))(v283, v277);
    }

    v121 = v421;
    goto LABEL_46;
  }

  if (v123 != 1)
  {
    v157 = *(v113 + qword_100771E88);

    v392 = v413;
    v411 = v113;
    sub_1001AB458();
    v158 = v121;
    v160 = v159;
    v162 = v161;
    v163 = v419;
    v165 = (v420 + 16);
    v164 = *(v420 + 16);
    v166 = v396;
    v164(v396, v419, v158);
    v167 = *(v163 + *(sub_100058000(&qword_1007720C8, &qword_100634478) + 40));
    if (v167 == 1)
    {
      v168 = IndexPath.row.modify();
      if (__OFADD__(*v169, 1))
      {
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      ++*v169;
      v168(v423, 0);
    }

    LODWORD(v381) = v167;
    v388 = v164;
    v171 = v420;
    v170 = v421;
    v412 = *(v420 + 32);
    v380 = (v420 + 32);
    v412(v47, v166, v421);
    v172 = *(v171 + 56);
    v397 = (v171 + 56);
    v396 = v172;
    v172(v47, 0, 1, v170);
    v173 = v390;
    sub_1001AF0C4(v160, v162 & 1, v47, v390);

    sub_1000079B4(v47, &unk_100771B10, qword_10062E540);
    v174 = sub_100058000(&unk_100772130, &qword_1006344B8);
    v175 = *(v174 - 8);
    v176 = *(v175 + 48);
    v391 = (v175 + 48);
    v177 = v176(v173, 1, v174);
    v386 = v157;
    v385 = v176;
    if (v177 == 1)
    {
      sub_1000079B4(v173, &unk_100772110, &unk_10063D370);
      v178 = 0;
    }

    else
    {
      v211 = *&v173[*(v174 + 48)];
      v212 = v406;
      v213 = *(v406 + 48);
      v214 = v407;
      v215 = v165;
      v216 = v174;
      v217 = *(v407 + 32);
      v218 = v382;
      v219 = v173;
      v220 = v408;
      v217(v382, v219, v408);
      *&v218[v213] = v211;
      v221 = *&v218[*(v212 + 48)];
      v222 = v379;
      v217(v379, v218, v220);
      v174 = v216;
      v165 = v215;
      v223 = *(v174 + 48);
      v224 = v409;
      (*(v214 + 16))(v409, v222, v220);
      *(v224 + v223) = v221;
      swift_storeEnumTagMultiPayload();
      v178 = sub_1003D146C(v224, v415, v392);
      sub_1000079B4(v224, &qword_100772108, &qword_1006344A0);
      v225 = v222;
      v176 = v385;
      (*(v214 + 8))(v225, v220);
    }

    v226 = v399;
    v227 = v393;
    v228 = v421;
    v229 = v388;
    v388(v399, v419, v421);
    (v396)(v226, 0, 1, v228);
    sub_1001B33C4(v226, v227);
    sub_1000079B4(v226, &unk_100771B10, qword_10062E540);
    v230 = v176(v227, 1, v174);
    LODWORD(v418) = v178;
    if (v230 == 1)
    {
      sub_1000079B4(v227, &unk_100772110, &unk_10063D370);
      LODWORD(v399) = 0;
    }

    else
    {
      v231 = *(v227 + *(v174 + 48));
      v393 = v165;
      v232 = v406;
      v233 = *(v406 + 48);
      v234 = v407;
      v235 = *(v407 + 32);
      v236 = v384;
      v237 = v408;
      v235(v384, v227, v408);
      *&v236[v233] = v231;
      v238 = *(v232 + 48);
      v239 = v392;
      v240 = *&v236[v238];
      v241 = v383;
      v242 = v236;
      v229 = v388;
      v235(v383, v242, v237);
      v243 = *(v174 + 48);
      v244 = v409;
      (*(v234 + 16))(v409, v241, v237);
      *(v244 + v243) = v240;
      swift_storeEnumTagMultiPayload();
      LODWORD(v399) = sub_1003D146C(v244, v415, v239);
      sub_1000079B4(v244, &qword_100772108, &qword_1006344A0);
      (*(v234 + 8))(v241, v237);
    }

    v245 = v395;
    v246 = v394;
    sub_1001AB458();
    v248 = v247;
    v250 = v249;
    v229(v245, v419, v421);
    if (v381)
    {
      v251 = IndexPath.row.modify();
      if (__OFADD__(*v252, 1))
      {
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      ++*v252;
      v251(v423, 0);
    }

    v253 = v389;
    v254 = v245;
    v255 = v421;
    v412(v389, v254, v421);
    (v396)(v253, 0, 1, v255);
    sub_1001AF0C4(v248, v250 & 1, v253, v246);

    sub_1000079B4(v253, &unk_100771B10, qword_10062E540);
    if (v385(v246, 1, v174) == 1)
    {
      sub_1000079B4(v246, &unk_100772110, &unk_10063D370);

      v256 = &v422;
LABEL_57:

      LODWORD(v397) = 0;
LABEL_60:
      v284 = v405;
      v121 = v421;
      v285 = v404;
      v286 = v403;
      v287 = v401;
      LOBYTE(v139) = v418;
      v138 = v399;
LABEL_61:
      sub_100016588(v416, v286, &qword_100772120, &qword_1006344A8);
      v339 = v287(v286, 2, v121);
      if (v339)
      {
        if (v339 != 1)
        {
          v340 = 2;
          v341 = v413;
          if ((v139 & 1) == 0)
          {
LABEL_64:
            sub_1000079B4(v417, &qword_100772128, &qword_1006344B0);
            v342 = sub_100058000(&qword_100780DC0, &unk_1006344C0);
            v343 = *(*(v342 - 8) + 56);
            if ((v138 & 1) == 0)
            {
              v343(v284, 1, 4, v342);
              if (v397)
              {
                v340 = 2;
              }

              else
              {
                v340 = 1;
              }

              goto LABEL_80;
            }

            v344 = v284;
            v345 = 3;
            goto LABEL_79;
          }

LABEL_68:
          v346 = (v398 + 48);
          if (v138)
          {
            v347 = v387;
            sub_100016588(v417, v387, &qword_100772128, &qword_1006344B0);
            v348 = v414;
            if ((*v346)(v347, 1, v414) == 1)
            {
              sub_1000079B4(v347, &qword_100772128, &qword_1006344B0);
              v349 = sub_100058000(&qword_100780DC0, &unk_1006344C0);
              (*(*(v349 - 8) + 56))(v284, 4, 4, v349);
            }

            else
            {
              v352 = v370;
              sub_100016588(v347, v370, &qword_100772100, &qword_100634498);
              if (*v352)
              {
                sub_1000079B4(v352, &qword_100772100, &qword_100634498);
                v353 = 3;
                v354 = v371;
              }

              else
              {
                v358 = &v352[*(v348 + 36)];
                v354 = v371;
                v412(v371, v358, v121);
                v353 = 0;
              }

              v359 = sub_100058000(&qword_100780DC0, &unk_1006344C0);
              (*(*(v359 - 8) + 56))(v354, v353, 4, v359);
              sub_1001C4264(v354, v284);
            }

            goto LABEL_80;
          }

          sub_100016588(v417, v285, &qword_100772128, &qword_1006344B0);
          v350 = v414;
          if ((*v346)(v285, 1, v414) == 1)
          {
            sub_1000079B4(v285, &qword_100772128, &qword_1006344B0);
            v351 = sub_100058000(&qword_100780DC0, &unk_1006344C0);
            (*(*(v351 - 8) + 56))(v284, 2, 4, v351);
LABEL_80:
            v356 = v400;
            v357 = type metadata accessor for TTRITreeViewDropProposal(0);
            sub_1001C4264(v284, v356 + *(v357 + 20));

            *v356 = v340;

            return;
          }

          v355 = v369;
          sub_100016588(v285, v369, &qword_100772100, &qword_100634498);
          v412(v284, (v355 + *(v350 + 36)), v121);
          v342 = sub_100058000(&qword_100780DC0, &unk_1006344C0);
          v343 = *(*(v342 - 8) + 56);
          v344 = v284;
          v345 = 0;
LABEL_79:
          v343(v344, v345, 4, v342);
          goto LABEL_80;
        }
      }

      else
      {
        sub_1000079B4(v286, &qword_100772120, &qword_1006344A8);
      }

      v340 = 3;
      v341 = v413;
      if ((v139 & 1) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_68;
    }

    v257 = *&v246[*(v174 + 48)];
    v258 = v406;
    v259 = *(v406 + 48);
    v260 = v407;
    v261 = *(v407 + 32);
    v262 = v378;
    v263 = v408;
    v261(v378, v246, v408);
    *&v262[v259] = v257;
    v264 = *&v262[*(v258 + 48)];
    v265 = v377;
    v261(v377, v262, v263);
    v266 = *(v174 + 48);
    v267 = v409;
    (*(v260 + 16))(v409, v265, v263);
    *(v267 + v266) = v264;
    swift_storeEnumTagMultiPayload();
    v268 = v392;
    LODWORD(v397) = sub_1003D146C(v267, v415, v392);
    sub_1000079B4(v267, &qword_100772108, &qword_1006344A0);
    (*(v260 + 8))(v265, v263);
LABEL_59:

    goto LABEL_60;
  }

  LODWORD(v396) = v120;
  v124 = sub_100058000(&qword_1007720C8, &qword_100634478);
  v125 = v419;
  v126 = *(v419 + *(v124 + 44));
  v127 = *(v420 + 16);
  v128 = v412;
  v397 = (v420 + 16);
  v127(v412, v419, v121);
  LODWORD(v395) = *(v125 + *(v124 + 40));
  if ((v395 & 1) == 0)
  {
    goto LABEL_11;
  }

  v129 = IndexPath.row.modify();
  if (__OFADD__(*v130, 1))
  {
    __break(1u);
    goto LABEL_84;
  }

  ++*v130;
  v129(v423, 0);
LABEL_11:
  v393 = v127;
  v131 = v417;
  sub_1000079B4(v417, &qword_100772128, &qword_1006344B0);
  v132 = (v420 + 32);
  v133 = *(v420 + 32);
  v134 = v128;
  v135 = v392;
  v133(v392, v134, v121);
  *v108 = v126;
  v136 = v414;
  v137 = &v108[*(v414 + 36)];
  v412 = v133;
  v394 = v132;
  v133(v137, v135, v121);
  v118(v108, 0, 1, v136);
  sub_100016588(v108, v131, &qword_100772128, &qword_1006344B0);
  if (v396)
  {
    v138 = 0;
    LODWORD(v397) = 0;
    LOBYTE(v139) = 0;
LABEL_47:
    v284 = v405;
    v285 = v404;
    v286 = v403;
    v287 = v401;
    goto LABEL_61;
  }

  v179 = *(v113 + qword_100771E88);

  v396 = v413;
  v411 = v113;
  sub_1001AB458();
  v181 = v180;
  v183 = v182;
  v184 = v385;
  v185 = v393;
  v393(v385, v419, v121);
  v186 = v388;
  if (!v395)
  {
    goto LABEL_27;
  }

  v187 = IndexPath.row.modify();
  if (__OFADD__(*v188, 1))
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  ++*v188;
  v187(v423, 0);
LABEL_27:
  v189 = v376;
  v412(v376, v184, v121);
  v190 = *(v420 + 56);
  v392 = (v420 + 56);
  v391 = v190;
  (v190)(v189, 0, 1, v121);
  v191 = v375;
  sub_1001AF0C4(v181, v183 & 1, v189, v375);

  sub_1000079B4(v189, &unk_100771B10, qword_10062E540);
  v192 = sub_100058000(&unk_100772130, &qword_1006344B8);
  v193 = *(v192 - 8);
  v390 = *(v193 + 48);
  v389 = (v193 + 48);
  v194 = (v390)(v191, 1, v192);
  v386 = v179;
  if (v194 == 1)
  {
    sub_1000079B4(v191, &unk_100772110, &unk_10063D370);
    v195 = 0;
  }

  else
  {
    v288 = *&v191[*(v192 + 48)];
    v289 = v406;
    v290 = *(v406 + 48);
    v291 = v407;
    v292 = v191;
    v293 = *(v407 + 32);
    v294 = v364;
    v295 = v408;
    v293(v364, v292, v408);
    *&v294[v290] = v288;
    v121 = v421;
    v296 = *&v294[*(v289 + 48)];
    v297 = v363;
    v293(v363, v294, v295);
    v298 = *(v192 + 48);
    v299 = v409;
    (*(v291 + 16))(v409, v297, v295);
    *(v299 + v298) = v296;
    swift_storeEnumTagMultiPayload();
    v195 = sub_1003D146C(v299, v415, v396);
    v300 = v299;
    v186 = v388;
    sub_1000079B4(v300, &qword_100772108, &qword_1006344A0);
    v301 = v297;
    v185 = v393;
    (*(v291 + 8))(v301, v295);
  }

  v302 = v399;
  v185(v399, v419, v121);
  (v391)(v302, 0, 1, v121);
  sub_1001B33C4(v302, v186);
  sub_1000079B4(v302, &unk_100771B10, qword_10062E540);
  v303 = (v390)(v186, 1, v192);
  LODWORD(v418) = v195;
  if (v303 == 1)
  {
    sub_1000079B4(v186, &unk_100772110, &unk_10063D370);
    LODWORD(v399) = 0;
  }

  else
  {
    v304 = *(v186 + *(v192 + 48));
    v305 = v406;
    v306 = *(v406 + 48);
    v307 = v407;
    v308 = v186;
    v309 = *(v407 + 32);
    v310 = v366;
    v311 = v408;
    v309(v366, v308, v408);
    *&v310[v306] = v304;
    v312 = *&v310[*(v305 + 48)];
    v313 = v365;
    v309(v365, v310, v311);
    v314 = *(v192 + 48);
    v315 = v409;
    (*(v307 + 16))(v409, v313, v311);
    *(v315 + v314) = v312;
    swift_storeEnumTagMultiPayload();
    LODWORD(v399) = sub_1003D146C(v315, v415, v396);
    sub_1000079B4(v315, &qword_100772108, &qword_1006344A0);
    (*(v307 + 8))(v313, v311);
  }

  v316 = v374;
  sub_1001AB458();
  v318 = v317;
  v320 = v319;
  v185(v316, v419, v421);
  if (!v395)
  {
    goto LABEL_55;
  }

  v321 = IndexPath.row.modify();
  if (!__OFADD__(*v322, 1))
  {
    ++*v322;
    v321(v423, 0);
LABEL_55:
    v323 = v373;
    v324 = v421;
    v412(v373, v316, v421);
    (v391)(v323, 0, 1, v324);
    v325 = v320 & 1;
    v326 = v372;
    sub_1001AF0C4(v318, v325, v323, v372);

    sub_1000079B4(v323, &unk_100771B10, qword_10062E540);
    if ((v390)(v326, 1, v192) == 1)
    {
      sub_1000079B4(v326, &unk_100772110, &unk_10063D370);

      v256 = &v424;
      goto LABEL_57;
    }

    v327 = *&v326[*(v192 + 48)];
    v328 = v406;
    v329 = *(v406 + 48);
    v330 = v407;
    v331 = *(v407 + 32);
    v332 = v362;
    v333 = v326;
    v334 = v408;
    v331(v362, v333, v408);
    *&v332[v329] = v327;
    v335 = *&v332[*(v328 + 48)];
    v336 = v361;
    v331(v361, v332, v334);
    v337 = *(v192 + 48);
    v338 = v409;
    (*(v330 + 16))(v409, v336, v334);
    *(v338 + v337) = v335;
    swift_storeEnumTagMultiPayload();
    v268 = v396;
    LODWORD(v397) = sub_1003D146C(v338, v415, v396);
    sub_1000079B4(v338, &qword_100772108, &qword_1006344A0);
    (*(v330 + 8))(v336, v334);
    goto LABEL_59;
  }

LABEL_88:
  __break(1u);
}

uint64_t sub_1001BF42C(uint64_t a1)
{
  v3 = qword_1007A8498;
  swift_beginAccess();
  sub_1001C43F8(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1001BF48C()
{
  v1 = *v0;
  v2 = type metadata accessor for TTRITreeViewDropProposal(0);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for TTRITreeViewDropUpdateCoordinator.HitTestResult(255, *(v1 + 80), *(v1 + 88), v6);
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v18 - v11;
  (*(*(updated - 8) + 56))(&v18 - v11, 1, 1, updated, v10);
  v13 = *(*v0 + 120);
  swift_beginAccess();
  (*(v9 + 40))(v0 + v13, v12, v8);
  swift_endAccess();
  v14 = *(v3 + 28);
  v15 = sub_100058000(&qword_100780DC0, &unk_1006344C0);
  (*(*(v15 - 8) + 56))(&v5[v14], 1, 4, v15);
  *v5 = 0;
  v16 = qword_1007A8498;
  swift_beginAccess();
  sub_100100648(v5, v0 + v16);
  return swift_endAccess();
}

id sub_1001BF6C8()
{
  v1 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v1 - 8);
  v3 = &v41[-v2];
  v4 = type metadata accessor for TTRITreeViewDropProposal.Intent(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v41[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for TTRITreeViewDropProposal(0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v41[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for IndexPath();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v41[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = qword_1007A8498;
  swift_beginAccess();
  sub_1001C4200(v0 + v15, v10);
  sub_1001C4264(&v10[*(v8 + 28)], v6);
  v16 = sub_100058000(&qword_100780DC0, &unk_1006344C0);
  if ((*(*(v16 - 8) + 48))(v6, 4, v16))
  {
    sub_1001C445C(v6, type metadata accessor for TTRITreeViewDropProposal.Intent);
    goto LABEL_7;
  }

  (*(v12 + 32))(v14, v6, v11);
  if (*(v0 + v15) != 3)
  {
    (*(v12 + 8))(v14, v11);
    goto LABEL_7;
  }

  v17 = v0 + qword_1007A84A0;
  swift_beginAccess();
  v18 = sub_100058000(qword_100771F18, &qword_100634320);
  if ((*(*(v18 - 8) + 48))(v17, 1, v18))
  {
    (*(v12 + 8))(v14, v11);
    swift_endAccess();
    goto LABEL_7;
  }

  v20 = *(v17 + 8);
  swift_endAccess();
  type metadata accessor for TTRITreeViewMultiRowReorderingDropIndicatorView();
  v21 = v20;
  v22 = v0;
  static TTRITreeViewMultiRowReorderingDropIndicatorView.preferredHeight.getter();
  v24 = v23;
  v25 = v0;
  v26 = sub_1001ABC10();
  v28 = v27;
  (*(v12 + 16))(v3, v14, v11);
  (*(v12 + 56))(v3, 0, 1, v11);
  sub_10019EE90(v26, v28 & 1, v3, v42, v24);

  sub_1000079B4(v3, &unk_100771B10, qword_10062E540);
  if (v43)
  {
    (*(v12 + 8))(v14, v11);

    v0 = v22;
LABEL_7:
    result = *(v0 + *(*v0 + 128));
    if (result)
    {
      return [result removeFromSuperview];
    }

    return result;
  }

  v29 = *v42;
  v30 = *&v42[1];
  v31 = *&v42[2];
  v32 = *&v42[3];
  v33 = *(*v22 + 128);
  v34 = *(v22 + v33);
  if (v34)
  {
    v35 = *(v25 + v33);
  }

  else
  {
    v35 = sub_1001BFBDC(v22);
  }

  v36 = v35;
  v37 = v34;
  v38 = [v36 superview];
  v39 = &selRef_addSubview_;
  if (v38)
  {
    v40 = v38;

    if (v40 == v21)
    {
      v39 = &selRef_bringSubviewToFront_;
    }
  }

  [v21 *v39];
  [v36 setFrame:{v29, v30, v31, v32}];

  return (*(v12 + 8))(v14, v11);
}

id sub_1001BFBDC(uint64_t a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for TTRITreeViewMultiRowReorderingDropIndicatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = *(*a1 + 128);
  v4 = *(a1 + v3);
  *(a1 + v3) = v2;
  v5 = v2;

  return v5;
}

id sub_1001BFC50()
{
  result = *(v0 + *(*v0 + 128));
  if (result)
  {
    return [result removeFromSuperview];
  }

  return result;
}

Swift::Int sub_1001BFCB4(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

uint64_t sub_1001BFCFC(uint64_t a1, uint64_t a2)
{
  v69 = a1;
  v70 = a2;
  v2 = type metadata accessor for IndexPath();
  v65 = *(v2 - 8);
  v66 = v2;
  __chkstk_darwin(v2);
  v60 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v4 - 8);
  v62 = &v59 - v5;
  v63 = sub_100058000(&unk_1007720B0, &qword_100634470);
  __chkstk_darwin(v63);
  v64 = &v59 - v6;
  v67 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v61 = *(v67 - 8);
  __chkstk_darwin(v67);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v59 - v10;
  v12 = sub_100058000(&qword_100772190, &qword_100634508);
  __chkstk_darwin(v12);
  v14 = &v59 - v13;
  v15 = sub_100058000(&unk_10076BA80, &unk_10062FD70);
  __chkstk_darwin(v15);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v68 = &v59 - v19;
  v20 = sub_100058000(&qword_100772200, &unk_100634568);
  __chkstk_darwin(v20 - 8);
  v22 = &v59 - v21;
  v24 = *(v23 + 56);
  sub_10000794C(v69, &v59 - v21, &unk_10076BA80, &unk_10062FD70);
  sub_10000794C(v70, &v22[v24], &unk_10076BA80, &unk_10062FD70);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    sub_10000794C(v22, v17, &unk_10076BA80, &unk_10062FD70);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = v64;
      v27 = *(v63 + 48);
      sub_100016588(v17, v64, &unk_100771B10, qword_10062E540);
      sub_100016588(&v22[v24], v26 + v27, &unk_100771B10, qword_10062E540);
      v29 = v65;
      v28 = v66;
      v30 = *(v65 + 48);
      if (v30(v26, 1, v66) == 1)
      {
        if (v30(v26 + v27, 1, v28) == 1)
        {
          sub_1000079B4(v26, &unk_100771B10, qword_10062E540);
LABEL_10:
          sub_1000079B4(v22, &unk_10076BA80, &unk_10062FD70);
          return 1;
        }
      }

      else
      {
        v51 = v62;
        sub_10000794C(v26, v62, &unk_100771B10, qword_10062E540);
        if (v30(v26 + v27, 1, v28) != 1)
        {
          v52 = v26 + v27;
          v53 = v60;
          (*(v29 + 32))(v60, v52, v28);
          sub_1001C44BC(&unk_100772710, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
          v54 = dispatch thunk of static Equatable.== infix(_:_:)();
          v55 = *(v29 + 8);
          v55(v53, v28);
          v55(v51, v28);
          sub_1000079B4(v26, &unk_100771B10, qword_10062E540);
          if (v54)
          {
            goto LABEL_10;
          }

          goto LABEL_22;
        }

        (*(v29 + 8))(v51, v28);
      }

      v49 = &unk_1007720B0;
      v50 = &qword_100634470;
      v48 = v26;
      goto LABEL_21;
    }

    v34 = &unk_100771B10;
    v35 = qword_10062E540;
    v36 = v17;
  }

  else
  {
    v31 = v14;
    v32 = v67;
    v33 = v68;
    sub_10000794C(v22, v68, &unk_10076BA80, &unk_10062FD70);
    if (!swift_getEnumCaseMultiPayload())
    {
      v40 = &v22[v24];
      v41 = v31;
      sub_100016588(v40, v31, &qword_100772190, &qword_100634508);
      if (static IndexPath.== infix(_:_:)())
      {
        TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
        v42 = v8;
        TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
        sub_1001C44BC(&qword_10076B7A0, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier, &protocol conformance descriptor for TTRAccountsListsViewModel.ItemIdentifier);
        v43 = v12;
        v44 = v32;
        v45 = dispatch thunk of static Equatable.== infix(_:_:)();
        v46 = *(v61 + 8);
        v47 = v42;
        v41 = v31;
        v46(v47, v44);
        v33 = v68;
        v46(v11, v44);
        if ((v45 & 1) != 0 && *(v33 + *(v43 + 40)) == *(v31 + *(v43 + 40)))
        {
          v56 = *(v43 + 44);
          v57 = *(v33 + v56);
          v58 = *(v31 + v56);
          sub_1000079B4(v31, &qword_100772190, &qword_100634508);
          sub_1000079B4(v33, &qword_100772190, &qword_100634508);
          if (v57 == v58)
          {
            goto LABEL_10;
          }

          goto LABEL_22;
        }
      }

      sub_1000079B4(v41, &qword_100772190, &qword_100634508);
      v48 = v33;
      v49 = &qword_100772190;
      v50 = &qword_100634508;
LABEL_21:
      sub_1000079B4(v48, v49, v50);
LABEL_22:
      v38 = &unk_10076BA80;
      v39 = &unk_10062FD70;
      goto LABEL_23;
    }

    v34 = &qword_100772190;
    v35 = &qword_100634508;
    v36 = v33;
  }

  sub_1000079B4(v36, v34, v35);
LABEL_13:
  v38 = &qword_100772200;
  v39 = &unk_100634568;
LABEL_23:
  sub_1000079B4(v22, v38, v39);
  return 0;
}

uint64_t sub_1001C04A8(uint64_t a1, uint64_t a2)
{
  v69 = a1;
  v70 = a2;
  v2 = type metadata accessor for IndexPath();
  v65 = *(v2 - 8);
  v66 = v2;
  __chkstk_darwin(v2);
  v60 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v4 - 8);
  v62 = &v59 - v5;
  v63 = sub_100058000(&unk_1007720B0, &qword_100634470);
  __chkstk_darwin(v63);
  v64 = &v59 - v6;
  v67 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v61 = *(v67 - 8);
  __chkstk_darwin(v67);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v59 - v10;
  v12 = sub_100058000(&qword_1007720C8, &qword_100634478);
  __chkstk_darwin(v12);
  v14 = &v59 - v13;
  v15 = sub_100058000(&unk_1007720E0, &qword_10062FE20);
  __chkstk_darwin(v15);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v68 = &v59 - v19;
  v20 = sub_100058000(&unk_1007720F0, &qword_100634490);
  __chkstk_darwin(v20 - 8);
  v22 = &v59 - v21;
  v24 = *(v23 + 56);
  sub_10000794C(v69, &v59 - v21, &unk_1007720E0, &qword_10062FE20);
  sub_10000794C(v70, &v22[v24], &unk_1007720E0, &qword_10062FE20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    sub_10000794C(v22, v17, &unk_1007720E0, &qword_10062FE20);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = v64;
      v27 = *(v63 + 48);
      sub_100016588(v17, v64, &unk_100771B10, qword_10062E540);
      sub_100016588(&v22[v24], v26 + v27, &unk_100771B10, qword_10062E540);
      v29 = v65;
      v28 = v66;
      v30 = *(v65 + 48);
      if (v30(v26, 1, v66) == 1)
      {
        if (v30(v26 + v27, 1, v28) == 1)
        {
          sub_1000079B4(v26, &unk_100771B10, qword_10062E540);
LABEL_10:
          sub_1000079B4(v22, &unk_1007720E0, &qword_10062FE20);
          return 1;
        }
      }

      else
      {
        v51 = v62;
        sub_10000794C(v26, v62, &unk_100771B10, qword_10062E540);
        if (v30(v26 + v27, 1, v28) != 1)
        {
          v52 = v26 + v27;
          v53 = v60;
          (*(v29 + 32))(v60, v52, v28);
          sub_1001C44BC(&unk_100772710, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
          v54 = dispatch thunk of static Equatable.== infix(_:_:)();
          v55 = *(v29 + 8);
          v55(v53, v28);
          v55(v51, v28);
          sub_1000079B4(v26, &unk_100771B10, qword_10062E540);
          if (v54)
          {
            goto LABEL_10;
          }

          goto LABEL_22;
        }

        (*(v29 + 8))(v51, v28);
      }

      v49 = &unk_1007720B0;
      v50 = &qword_100634470;
      v48 = v26;
      goto LABEL_21;
    }

    v34 = &unk_100771B10;
    v35 = qword_10062E540;
    v36 = v17;
  }

  else
  {
    v31 = v14;
    v32 = v67;
    v33 = v68;
    sub_10000794C(v22, v68, &unk_1007720E0, &qword_10062FE20);
    if (!swift_getEnumCaseMultiPayload())
    {
      v40 = &v22[v24];
      v41 = v31;
      sub_100016588(v40, v31, &qword_1007720C8, &qword_100634478);
      if (static IndexPath.== infix(_:_:)())
      {
        TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
        v42 = v8;
        TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
        sub_1001C44BC(&qword_10076BB60, &type metadata accessor for TTRRemindersListViewModel.ItemID, &protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
        v43 = v12;
        v44 = v32;
        v45 = dispatch thunk of static Equatable.== infix(_:_:)();
        v46 = *(v61 + 8);
        v47 = v42;
        v41 = v31;
        v46(v47, v44);
        v33 = v68;
        v46(v11, v44);
        if ((v45 & 1) != 0 && *(v33 + *(v43 + 40)) == *(v31 + *(v43 + 40)))
        {
          v56 = *(v43 + 44);
          v57 = *(v33 + v56);
          v58 = *(v31 + v56);
          sub_1000079B4(v31, &qword_1007720C8, &qword_100634478);
          sub_1000079B4(v33, &qword_1007720C8, &qword_100634478);
          if (v57 == v58)
          {
            goto LABEL_10;
          }

          goto LABEL_22;
        }
      }

      sub_1000079B4(v41, &qword_1007720C8, &qword_100634478);
      v48 = v33;
      v49 = &qword_1007720C8;
      v50 = &qword_100634478;
LABEL_21:
      sub_1000079B4(v48, v49, v50);
LABEL_22:
      v38 = &unk_1007720E0;
      v39 = &qword_10062FE20;
      goto LABEL_23;
    }

    v34 = &qword_1007720C8;
    v35 = &qword_100634478;
    v36 = v33;
  }

  sub_1000079B4(v36, v34, v35);
LABEL_13:
  v38 = &unk_1007720F0;
  v39 = &qword_100634490;
LABEL_23:
  sub_1000079B4(v22, v38, v39);
  return 0;
}

uint64_t sub_1001C0C54(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v61 = a1;
  v62 = a2;
  v6 = type metadata accessor for IndexPath();
  v56 = *(v6 - 8);
  v57 = v6;
  __chkstk_darwin(v6);
  v50 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v8 - 8);
  v51 = &v49 - v9;
  v54 = sub_100058000(&unk_1007720B0, &qword_100634470);
  __chkstk_darwin(v54);
  v55 = &v49 - v10;
  updated = type metadata accessor for TTRITreeViewDropUpdateCoordinator.Hit(0, a3, a4, v11);
  v58 = *(updated - 8);
  v59 = updated;
  __chkstk_darwin(updated);
  v14 = &v49 - v13;
  v52 = a3;
  v53 = a4;
  v16 = type metadata accessor for TTRITreeViewDropUpdateCoordinator.HitTestResult(0, a3, a4, v15);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v49 - v21;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v24 = *(TupleTypeMetadata2 - 8);
  v25 = __chkstk_darwin(TupleTypeMetadata2);
  v27 = &v49 - v26;
  v29 = *(v28 + 48);
  v60 = v17;
  v30 = *(v17 + 16);
  v30(&v49 - v26, v61, v16, v25);
  (v30)(&v27[v29], v62, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v62 = v14;
    v38 = v58;
    v37 = v59;
    (v30)(v22, v27, v16);
    if (!swift_getEnumCaseMultiPayload())
    {
      v41 = v38;
      v42 = v62;
      (*(v38 + 32))(v62, &v27[v29], v37);
      v39 = sub_1001C1348(v22, v42, v52, v53);
      v43 = *(v41 + 8);
      v43(v42, v37);
      v43(v22, v37);
      v24 = v60;
      goto LABEL_13;
    }

    (*(v38 + 8))(v22, v37);
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_10;
    }

LABEL_12:
    v39 = 0;
    v16 = TupleTypeMetadata2;
    goto LABEL_13;
  }

  (v30)(v19, v27, v16);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1000079B4(v19, &unk_100771B10, qword_10062E540);
    goto LABEL_12;
  }

  v32 = v55;
  v33 = *(v54 + 48);
  sub_100016588(v19, v55, &unk_100771B10, qword_10062E540);
  sub_100016588(&v27[v29], v32 + v33, &unk_100771B10, qword_10062E540);
  v35 = v56;
  v34 = v57;
  v36 = *(v56 + 48);
  if (v36(v32, 1, v57) != 1)
  {
    v44 = v51;
    sub_10000794C(v32, v51, &unk_100771B10, qword_10062E540);
    if (v36(v32 + v33, 1, v34) != 1)
    {
      v45 = v32 + v33;
      v46 = v50;
      (*(v35 + 32))(v50, v45, v34);
      sub_1001C44BC(&unk_100772710, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v47 = dispatch thunk of static Equatable.== infix(_:_:)();
      v48 = *(v35 + 8);
      v48(v46, v34);
      v48(v44, v34);
      sub_1000079B4(v32, &unk_100771B10, qword_10062E540);
      if (v47)
      {
        goto LABEL_10;
      }

LABEL_18:
      v39 = 0;
      v24 = v60;
      goto LABEL_13;
    }

    (*(v35 + 8))(v44, v34);
LABEL_17:
    sub_1000079B4(v32, &unk_1007720B0, &qword_100634470);
    goto LABEL_18;
  }

  if (v36(v32 + v33, 1, v34) != 1)
  {
    goto LABEL_17;
  }

  sub_1000079B4(v32, &unk_100771B10, qword_10062E540);
LABEL_10:
  v39 = 1;
  v24 = v60;
LABEL_13:
  (*(v24 + 8))(v27, v16);
  return v39 & 1;
}

Swift::Int sub_1001C12FC(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1001BFC8C(v3, *v1);
  return Hasher._finalize()();
}

uint64_t sub_1001C1348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v23 - v13;
  if (static IndexPath.== infix(_:_:)() & 1) != 0 && (updated = type metadata accessor for TTRITreeViewDropUpdateCoordinator.Hit(0, a3, a4, v15), v26 = v9, v17 = a1, v18 = *(a4 + 24), v24 = v17, v18(a3, a4), v23 = updated, v25 = a2, v18(a3, a4), swift_getAssociatedConformanceWitness(), v19 = dispatch thunk of static Equatable.== infix(_:_:)(), v20 = *(v26 + 8), v20(v11, AssociatedTypeWitness), v20(v14, AssociatedTypeWitness), (v19) && *(v24 + *(v23 + 40)) == *(v25 + *(v23 + 40)))
  {
    v21 = *(v24 + *(v23 + 44)) ^ *(v25 + *(v23 + 44)) ^ 1;
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t sub_1001C1574(uint64_t a1)
{
  _StringGuts.grow(_:)(39);

  type metadata accessor for IndexPath();
  sub_1001C44BC(&qword_1007720C0, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x6E6F6974726F7020;
  v4._object = 0xEA0000000000203ALL;
  String.append(_:)(v4);
  if (*(v1 + *(a1 + 40)))
  {
    v5 = 0x6D6F74746F62;
  }

  else
  {
    v5 = 7368564;
  }

  if (*(v1 + *(a1 + 40)))
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = v6;
  String.append(_:)(*&v5);

  v8._object = 0x80000001006763F0;
  v8._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v8);
  if (*(v1 + *(a1 + 44)))
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (*(v1 + *(a1 + 44)))
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  v11 = v10;
  String.append(_:)(*&v9);

  return 0x203A746948;
}

uint64_t sub_1001C171C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ([a1 localDragSession] && (swift_getObjectType(), Strong = swift_unknownObjectUnownedLoadStrong(), v4 = sub_10039C078(Strong), Strong, swift_unknownObjectRelease(), v4))
  {
    v5 = qword_1007A8808;
    swift_beginAccess();
    v6 = *(v4 + v5);
  }

  else
  {
    v6 = &_swiftEmptySetSingleton;
  }

  v7 = v6[2];
  if (v7 == 1)
  {
    v8 = _HashTable.startBucket.getter();
    sub_10057EB98(v8, *(v6 + 9), v6, a2);

    v9 = type metadata accessor for IndexPath();
    return (*(*(v9 - 8) + 56))(a2, 0, 2, v9);
  }

  else
  {

    v11 = type metadata accessor for IndexPath();
    if (v7)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    return (*(*(v11 - 8) + 56))(a2, v12, 2, v11);
  }
}

uint64_t *sub_1001C18C0()
{
  v1 = *v0;
  sub_1001C445C(v0 + qword_1007A8498, type metadata accessor for TTRITreeViewDropProposal);
  sub_1000079B4(v0 + qword_1007A84A0, &unk_100780EE0, &unk_10063CB70);

  v2 = *(*v0 + 120);
  type metadata accessor for TTRITreeViewDropUpdateCoordinator.HitTestResult(255, *(v1 + 80), *(v1 + 88), v3);
  v4 = type metadata accessor for Optional();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  return v0;
}

uint64_t sub_1001C19DC()
{
  sub_1001C18C0();

  return swift_deallocClassInstance();
}

void sub_1001C1A4C(uint64_t a1)
{
  if (!qword_100771F10)
  {
    sub_10005D20C(qword_100771F18, &qword_100634320);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100771F10);
    }
  }
}

void sub_1001C1AC8(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for TTRITreeViewDropUpdateCoordinator.Hit(319, *(a1 + 16), *(a1 + 24), a5);
  if (v5 <= 0x3F)
  {
    sub_1001C3488(319);
    if (v6 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
    }
  }
}

void *sub_1001C1B90(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = v11;
  v13 = v8 + v11;
  v14 = *(v10 + 64);
  v15 = *(v7 + 80);
  if (*(v7 + 84))
  {
    v16 = *(*(v6 - 8) + 64);
  }

  else
  {
    v16 = v8 + 1;
  }

  if (v16 <= v14 + ((v8 + v11) & ~v11) + 2)
  {
    v17 = v14 + ((v8 + v11) & ~v11) + 2;
  }

  else
  {
    v17 = v16;
  }

  v18 = v17 + 1;
  v19 = (v15 | v11);
  if (v19 > 7 || ((v15 | v11) & 0x100000) != 0 || v18 > 0x18)
  {
    v22 = *a2;
    *a1 = *a2;
    a1 = (v22 + ((v19 + 16) & ~v19));

    return a1;
  }

  v23 = v6;
  v24 = a2[v17];
  v25 = v24 - 2;
  if (v24 >= 2)
  {
    if (v17 <= 3)
    {
      v26 = v17;
    }

    else
    {
      v26 = 4;
    }

    if (v26 <= 1)
    {
      if (!v26)
      {
        goto LABEL_30;
      }

      v27 = *a2;
    }

    else if (v26 == 2)
    {
      v27 = *a2;
    }

    else if (v26 == 3)
    {
      v27 = *a2 | (a2[2] << 16);
    }

    else
    {
      v27 = *a2;
    }

    v28 = (v27 | (v25 << (8 * v17))) + 2;
    v24 = v27 + 2;
    if (v17 < 4)
    {
      v24 = v28;
    }
  }

LABEL_30:
  if (v24 == 1)
  {
    if ((*(v7 + 48))(a2, 1, v6))
    {
      memcpy(a1, a2, v16);
    }

    else
    {
      (*(v7 + 16))(a1, a2, v23);
      (*(v7 + 56))(a1, 0, 1, v23);
    }

    *(a1 + v17) = 1;
    return a1;
  }

  if (!v24)
  {
    v29 = ~v12;
    (*(v7 + 16))(a1, a2, v6);
    v30 = &a2[v13] & v29;
    (*(v10 + 16))((a1 + v13) & v29, v30, v9);
    v31 = (((a1 + v13) & v29) + v14);
    *v31 = *(v30 + v14);
    v31[1] = *(v30 + v14 + 1);
    *(a1 + v17) = 0;
    return a1;
  }

  return memcpy(a1, a2, v18);
}

uint64_t sub_1001C1E7C(unsigned __int8 *a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(a2 + 16);
  result = *(v7 - 8);
  v9 = *(result + 80);
  v10 = v6 + v9;
  v11 = *(result + 64) + ((v6 + v9) & ~v9) + 2;
  if (!*(v5 + 84))
  {
    ++v6;
  }

  if (v6 <= v11)
  {
    v6 = v11;
  }

  v12 = a1[v6];
  v13 = v12 - 2;
  if (v12 >= 2)
  {
    if (v6 <= 3)
    {
      v14 = v6;
    }

    else
    {
      v14 = 4;
    }

    if (v14 <= 1)
    {
      if (!v14)
      {
        goto LABEL_19;
      }

      v15 = *a1;
    }

    else if (v14 == 2)
    {
      v15 = *a1;
    }

    else if (v14 == 3)
    {
      v15 = *a1 | (a1[2] << 16);
    }

    else
    {
      v15 = *a1;
    }

    v16 = (v15 | (v13 << (8 * v6))) + 2;
    v12 = v15 + 2;
    if (v6 < 4)
    {
      v12 = v16;
    }
  }

LABEL_19:
  if (v12 == 1)
  {
    v22 = *(v4 - 8);
    result = (*(v5 + 48))(a1, 1, v4);
    if (result)
    {
      return result;
    }

    v18 = *(v22 + 8);
    v19 = a1;
    v20 = v4;
  }

  else
  {
    if (v12)
    {
      return result;
    }

    v17 = ~v9;
    v21 = *(v7 - 8);
    (*(v5 + 8))(a1, v4);
    v18 = *(v21 + 8);
    v19 = (&a1[v10] & v17);
    v20 = v7;
  }

  return v18(v19, v20);
}

void *sub_1001C2098(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = v8 + v11;
  v13 = *(v10 + 64);
  if (*(v7 + 84))
  {
    v14 = *(*(v6 - 8) + 64);
  }

  else
  {
    v14 = v8 + 1;
  }

  if (v14 <= v13 + ((v8 + v11) & ~v11) + 2)
  {
    v15 = v13 + ((v8 + v11) & ~v11) + 2;
  }

  else
  {
    v15 = v14;
  }

  v16 = a2[v15];
  v17 = v16 - 2;
  if (v16 >= 2)
  {
    if (v15 <= 3)
    {
      v18 = v15;
    }

    else
    {
      v18 = 4;
    }

    if (v18 <= 1)
    {
      if (!v18)
      {
        goto LABEL_21;
      }

      v19 = *a2;
    }

    else if (v18 == 2)
    {
      v19 = *a2;
    }

    else if (v18 == 3)
    {
      v19 = *a2 | (a2[2] << 16);
    }

    else
    {
      v19 = *a2;
    }

    v20 = (v19 | (v17 << (8 * v15))) + 2;
    v16 = v19 + 2;
    if (v15 < 4)
    {
      v16 = v20;
    }
  }

LABEL_21:
  if (v16 == 1)
  {
    if ((*(v7 + 48))(a2, 1, v6))
    {
      memcpy(a1, a2, v14);
    }

    else
    {
      (*(v7 + 16))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
    }

    *(a1 + v15) = 1;
    return a1;
  }

  if (!v16)
  {
    v21 = ~v11;
    (*(v7 + 16))(a1, a2, v6);
    v22 = &a2[v12] & v21;
    (*(v10 + 16))((a1 + v12) & v21, v22, v9);
    v23 = (((a1 + v12) & v21) + v13);
    *v23 = *(v22 + v13);
    v23[1] = *(v22 + v13 + 1);
    *(a1 + v15) = 0;
    return a1;
  }

  return memcpy(a1, a2, v15 + 1);
}

unsigned __int8 *sub_1001C2348(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v29 = *(a3 + 16);
  v9 = *(v29 - 8);
  v10 = *(v9 + 80);
  v11 = v8 + v10;
  v12 = *(v9 + 64);
  if (*(v7 + 84))
  {
    v13 = *(*(v6 - 8) + 64);
  }

  else
  {
    v13 = v8 + 1;
  }

  if (v13 <= v12 + ((v8 + v10) & ~v10) + 2)
  {
    v14 = v12 + ((v8 + v10) & ~v10) + 2;
  }

  else
  {
    v14 = v13;
  }

  v15 = a1[v14];
  v16 = v15 - 2;
  if (v15 >= 2)
  {
    if (v14 <= 3)
    {
      v17 = v14;
    }

    else
    {
      v17 = 4;
    }

    if (v17 <= 1)
    {
      if (!v17)
      {
        goto LABEL_22;
      }

      v18 = *a1;
    }

    else if (v17 == 2)
    {
      v18 = *a1;
    }

    else if (v17 == 3)
    {
      v18 = *a1 | (a1[2] << 16);
    }

    else
    {
      v18 = *a1;
    }

    v19 = (v18 | (v16 << (8 * v14))) + 2;
    v15 = v18 + 2;
    if (v14 < 4)
    {
      v15 = v19;
    }
  }

LABEL_22:
  v20 = ~v10;
  if (v15 == 1)
  {
    if (!(*(v7 + 48))(a1, 1, v6))
    {
      (*(v7 + 8))(a1, v6);
    }
  }

  else if (!v15)
  {
    (*(v7 + 8))(a1, v6);
    (*(v9 + 8))(&a1[v11] & v20, v29);
  }

  v21 = a2[v14];
  v22 = v21 - 2;
  if (v21 >= 2)
  {
    if (v14 <= 3)
    {
      v23 = v14;
    }

    else
    {
      v23 = 4;
    }

    if (v23 <= 1)
    {
      if (!v23)
      {
        goto LABEL_41;
      }

      v24 = *a2;
    }

    else if (v23 == 2)
    {
      v24 = *a2;
    }

    else if (v23 == 3)
    {
      v24 = *a2 | (a2[2] << 16);
    }

    else
    {
      v24 = *a2;
    }

    v25 = (v24 | (v22 << (8 * v14))) + 2;
    v21 = v24 + 2;
    if (v14 < 4)
    {
      v21 = v25;
    }
  }

LABEL_41:
  if (v21 == 1)
  {
    if ((*(v7 + 48))(a2, 1, v6))
    {
      memcpy(a1, a2, v13);
    }

    else
    {
      (*(v7 + 16))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
    }

    a1[v14] = 1;
    return a1;
  }

  if (!v21)
  {
    (*(v7 + 16))(a1, a2, v6);
    v26 = &a2[v11] & v20;
    (*(v9 + 16))(&a1[v11] & v20, v26, v29);
    v27 = ((&a1[v11] & v20) + v12);
    *v27 = *(v26 + v12);
    v27[1] = *(v26 + v12 + 1);
    a1[v14] = 0;
    return a1;
  }

  return memcpy(a1, a2, v14 + 1);
}