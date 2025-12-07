uint64_t sub_1004011A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001AA3C;

  return sub_1003FD600(a1, v4, v5, v7, v6);
}

uint64_t sub_1004012A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100401310(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100401370(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for TTRIRemindersListRecentlyDeletedDisclaimerCell(uint64_t a1)
{
  result = qword_100782230;
  if (!qword_100782230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100401474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v27[1] = a2;
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for TTRITableCellSeparatorInsetType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(UILabel) init];
  static TTRLocalizableStrings.RecentlyDeletedList.disclaimerString.getter();
  v13 = String._bridgeToObjectiveC()();

  [v12 setText:v13];

  sub_100003540(0, &qword_100771DF0, UIFont_ptr);
  v14 = static UIFont.roundedBodyFont.getter();
  [v12 setFont:v14];

  v15 = [objc_opt_self() secondaryLabelColor];
  [v12 setTextColor:v15];

  [v12 setAdjustsFontForContentSizeCategory:1];
  [v12 setNumberOfLines:0];
  v16 = v12;
  LODWORD(v17) = 1132068864;
  [v16 setContentCompressionResistancePriority:0 forAxis:v17];
  *&v4[qword_100782228] = v16;
  v18 = v16;
  if (a3)
  {
    v19 = String._bridgeToObjectiveC()();
  }

  else
  {
    v19 = 0;
  }

  v28.receiver = v4;
  v28.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v28, "initWithStyle:reuseIdentifier:", a1, v19);

  v21 = v20;
  v22 = TTRITableViewContainerCell.containerView.getter();
  [v22 setHorizontalAlignment:1];
  [v22 setVerticalAlignment:0];
  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10062D420;
  *(v23 + 32) = v16;
  sub_100003540(0, &qword_10076B020, UIView_ptr);
  v24 = v22;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v24 setArrangedSubviews:isa];

  (*(v9 + 104))(v11, enum case for TTRITableCellSeparatorInsetType.noSeparator(_:), v8);
  UITableViewCell.setSeparatorInsetType(_:)();
  (*(v9 + 8))(v11, v8);
  UITableViewCell.ttr_registerForRemindersListCellBackgroundConfiguration()();

  return v21;
}

id sub_1004017D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  return sub_100401474(a3, a4, v6);
}

Class sub_1004018D4(uint64_t a1)
{
  sub_100058000(&unk_100777760, &unk_1006372A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10062D400;
  v3 = *(a1 + qword_100782228);
  *(v2 + 56) = sub_100003540(0, &qword_100776820, UILabel_ptr);
  *(v2 + 32) = v3;
  v4 = v3;
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

uint64_t type metadata accessor for TTRListDetailViewModel(uint64_t a1)
{
  result = qword_100782388;
  if (!qword_100782388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TTRListDetailViewModel.init(changeItem:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v101 = a2;
  v3 = type metadata accessor for TTRRemindersListListType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v105 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v104 = &v84 - v7;
  v8 = type metadata accessor for Locale();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for TTRListDetailBadgeViewModel();
  v102 = *(v16 - 8);
  v103 = v16;
  __chkstk_darwin(v16);
  v100 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v19 = __chkstk_darwin(v18).n128_u64[0];
  v107 = &v84 - v20;
  v21 = [a1 displayName];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v96 = v23;
  v97 = v22;

  v24 = [a1 appearanceContext];
  v25 = v24;
  if (v24)
  {
  }

  v95 = v25;
  *v15 = a1;
  v26 = *(v13 + 104);
  v94 = enum case for TTRListOrCustomSmartListChangeItem.list(_:);
  v98 = v13 + 104;
  v93 = v26;
  v26(v15);
  v27 = a1;
  TTRListDetailBadgeViewModel.init(listOrCustomSmartListChangeItem:)();
  v92 = [v27 isShared];
  v28 = [v27 accountCapabilities];
  v106 = [v28 supportsCustomSmartLists];

  v29 = [v27 groceryContextChangeItem];
  v99 = v12;
  if (!v29)
  {
    goto LABEL_8;
  }

  v30 = v29;
  if (![v29 shouldCategorizeGroceryItems])
  {

LABEL_8:
    v33 = [objc_opt_self() daemonUserDefaults];
    v34 = [v33 preferredLocalizations];

    if (v34)
    {
      v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v35 + 16))
      {

        goto LABEL_14;
      }
    }

    static Locale.current.getter();
    Locale.identifier.getter();
LABEL_13:
    (*(v9 + 8))(v11, v8);
    goto LABEL_14;
  }

  v31 = [v30 groceryLocaleID];
  if (!v31)
  {
    v81 = [objc_opt_self() daemonUserDefaults];
    v82 = [v81 preferredLocalizations];

    if (v82)
    {
      countAndFlagsBits = v4;
      v83 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v83 + 16))
      {

        v4 = countAndFlagsBits;
        goto LABEL_14;
      }

      v4 = countAndFlagsBits;
    }

    static Locale.current.getter();
    Locale.identifier.getter();

    goto LABEL_13;
  }

  v32 = v31;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_14:
  type metadata accessor for REMGroceryDummyModel();
  v36 = static REMGroceryDummyModel.isSupported(localeIdentifier:)();

  v37 = [v27 accountCapabilities];
  v38 = [v37 supportsGroceriesList];

  v39 = v38 & v36;
  v40._countAndFlagsBits = 0x666E49207473694CLL;
  v41._object = 0x8000000100685AC0;
  v40._object = 0xE90000000000006FLL;
  v42._countAndFlagsBits = 0xD000000000000020;
  v42._object = 0x8000000100685AE0;
  v41._countAndFlagsBits = 0xD00000000000001BLL;
  v43 = TTRLocalizedString(_:value:comment:)(v41, v40, v42);
  countAndFlagsBits = v43._countAndFlagsBits;
  object = v43._object;
  v44._countAndFlagsBits = 0x6D614E207473694CLL;
  v45._countAndFlagsBits = 0xD000000000000026;
  v45._object = 0x800000010067E940;
  v44._object = 0xE900000000000065;
  v46 = TTRLocalizedString(_:comment:)(v44, v45);
  v89 = v46._countAndFlagsBits;
  v88 = v46._object;
  v47 = [v27 groceryContextChangeItem];
  if (v47 && (v48 = v47, v49 = [v47 shouldCategorizeGroceryItems], v48, (v49 & 1) != 0))
  {
    v50 = &enum case for TTRRemindersListListType.groceries(_:);
  }

  else
  {
    v50 = &enum case for TTRRemindersListListType.standard(_:);
  }

  v51 = v104;
  v52 = v4;
  (*(v4 + 104))(v104, *v50, v3);
  v53 = v95;
  v54 = v3;
  if (v39)
  {
    v55._countAndFlagsBits = 0x707954207473694CLL;
    v56._object = 0x8000000100685B10;
    v57._countAndFlagsBits = 0xD000000000000020;
    v57._object = 0x8000000100685B30;
    v56._countAndFlagsBits = 0xD00000000000001BLL;
    v55._object = 0xE900000000000065;
    v58 = TTRLocalizedString(_:value:comment:)(v56, v55, v57);
    v104 = v58._countAndFlagsBits;
    v87 = v58._object;
  }

  else
  {
    v104 = 0;
    v87 = 0;
  }

  LODWORD(v95) = v53 != 0;
  v85 = v39 ^ 1;
  v92 = v106 & (v92 ^ 1);
  type metadata accessor for TTRRemindersListDataModelSourceLayoutContext();
  v86 = v39;
  *v15 = v27;
  v93(v15, v94, v99);
  v59 = type metadata accessor for TTRUserDefaults();
  v60 = v27;
  v61 = static TTRUserDefaults.appUserDefaults.getter();
  v109 = v59;
  v110 = &protocol witness table for TTRUserDefaults;
  v108 = v61;
  v62 = TTRRemindersListDataModelSourceLayoutContext.__allocating_init(listOrSmartListChangeItem:userDefaults:)();
  v99 = v62;

  v63 = v103;
  v64 = *(v102 + 32);
  v65 = v100;
  v64(v100, v107, v103);
  v66 = *(v52 + 32);
  v67 = v105;
  v66(v105, v51, v54);
  v68 = &protocol witness table for TTRRemindersListDataModelSourceLayoutContext;
  if (!v62)
  {
    v68 = 0;
  }

  v107 = v68;
  v69 = v101;
  v70 = v96;
  *v101 = v97;
  v69[1] = v70;
  v71 = type metadata accessor for TTRListDetailViewModel(0);
  v64(v69 + v71[5], v65, v63);
  *(v69 + v71[6]) = 0;
  *(v69 + v71[7]) = v85;
  *(v69 + v71[8]) = 1;
  *(v69 + v71[9]) = v95;
  *(v69 + v71[10]) = v92;
  *(v69 + v71[11]) = v106;
  *(v69 + v71[12]) = v86;
  v72 = (v69 + v71[13]);
  v73 = v87;
  *v72 = v104;
  v72[1] = v73;
  *(v69 + v71[14]) = 0;
  v74 = (v69 + v71[15]);
  v75 = object;
  *v74 = countAndFlagsBits;
  v74[1] = v75;
  v76 = (v69 + v71[16]);
  v77 = v88;
  *v76 = v89;
  v76[1] = v77;
  result = (v66)(v69 + v71[17], v67, v54);
  v79 = (v69 + v71[18]);
  v80 = v107;
  *v79 = v99;
  v79[1] = v80;
  return result;
}

uint64_t TTRListDetailViewModel.init(changeItem:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v88 = type metadata accessor for TTRRemindersListListType();
  v86 = *(v88 - 8);
  __chkstk_darwin(v88);
  v84 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v71 - v6;
  v8 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v77 = type metadata accessor for TTRListDetailBadgeViewModel();
  v12 = *(v77 - 8);
  __chkstk_darwin(v77);
  v87 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v71 - v15;
  v89 = a1;
  sub_100003540(0, &qword_10076CAB8, REMSmartListChangeItem_ptr);
  v17 = protocol witness for TTRListProtocol.displayName.getter in conformance REMSmartListChangeItem();
  v82 = v18;
  v83 = v17;
  *v11 = a1;
  v19 = enum case for TTRListOrCustomSmartListChangeItem.customSmartList(_:);
  v21 = *(v9 + 104);
  v20 = v9 + 104;
  v78 = v8;
  v75 = v21;
  v21(v11, enum case for TTRListOrCustomSmartListChangeItem.customSmartList(_:), v8);
  v22 = a1;
  TTRListDetailBadgeViewModel.init(listOrCustomSmartListChangeItem:)();
  v23._countAndFlagsBits = 0xD000000000000011;
  v24._countAndFlagsBits = 0xD000000000000023;
  v24._object = 0x8000000100685B60;
  v23._object = 0x8000000100685B90;
  v25._countAndFlagsBits = 0xD000000000000028;
  v25._object = 0x8000000100685BB0;
  v26 = TTRLocalizedString(_:value:comment:)(v24, v23, v25);
  object = v26._object;
  countAndFlagsBits = v26._countAndFlagsBits;
  v27 = &selRef_layoutIfNeeded;
  v74 = v22;
  v28 = [v22 customContext];
  v85 = v7;
  if (v28)
  {
    LODWORD(v76) = v19;
    v29 = v28;
    v30 = REMSmartListCustomContextChangeItem.filter.getter();

    if (v30)
    {
      v31 = REMCustomSmartListFilterDescriptor.enabledFilterCount.getter();
      _s15RemindersUICore21TTRLocalizableStringsO0A0E10ListDetailO22enabledFiltersSubtitle5countSSSi_tFZ_0(v31);
      v32 = objc_allocWithZone(NSAttributedString);
      v73 = v20;
      v33 = v12;
      v34 = v32;
      v35 = String._bridgeToObjectiveC()();
      v7 = v85;

      v36 = v34;
      v37 = v77;
      v38 = [v36 initWithString:v35];

      v79 = v38;
      v39 = v38;
      v12 = v33;
      v27 = &selRef_layoutIfNeeded;
    }

    else
    {
      v79 = 0;
      v37 = v77;
    }

    v19 = v76;
  }

  else
  {
    v79 = 0;
    v37 = v77;
  }

  v40._countAndFlagsBits = 0xD000000000000021;
  v41._countAndFlagsBits = 0x694C207472616D53;
  v41._object = 0xEF6F666E49207473;
  v40._object = 0x8000000100685BE0;
  v42._object = 0x8000000100685C10;
  v42._countAndFlagsBits = 0xD000000000000026;
  v43 = TTRLocalizedString(_:value:comment:)(v40, v41, v42);
  v76 = v43._object;
  v77 = v43._countAndFlagsBits;
  v44._countAndFlagsBits = 0x6D614E207473694CLL;
  v45._object = 0x800000010067E940;
  v44._object = 0xE900000000000065;
  v45._countAndFlagsBits = 0xD000000000000026;
  v46 = TTRLocalizedString(_:comment:)(v44, v45);
  v73 = v46._countAndFlagsBits;
  v72 = v46._object;
  v86[13](v7, enum case for TTRRemindersListListType.smartList(_:), v88);
  type metadata accessor for TTRRemindersListDataModelSourceLayoutContext();
  v48 = v74;
  v47 = v75;
  *v11 = v74;
  v47(v11, v19, v78);
  v49 = type metadata accessor for TTRUserDefaults();
  v50 = v48;
  v51 = static TTRUserDefaults.appUserDefaults.getter();
  v90 = v49;
  v91 = &protocol witness table for TTRUserDefaults;
  v89 = v51;
  v78 = TTRRemindersListDataModelSourceLayoutContext.__allocating_init(listOrSmartListChangeItem:userDefaults:)();
  (*(v12 + 16))(v87, v16, v37);
  v52 = [v50 v27[366]];
  if (v52)
  {
    v53 = v52;
    v75 = REMSmartListCustomContextChangeItem.filter.getter();

    v54 = v79;
    (*(v12 + 8))(v16, v37);
  }

  else
  {
    (*(v12 + 8))(v16, v37);

    v54 = v79;
    v75 = 0;
  }

  v55 = v86[4];
  v56 = v84;
  v57 = v88;
  v55(v84, v85, v88);
  v58 = &protocol witness table for TTRRemindersListDataModelSourceLayoutContext;
  v59 = v78;
  if (!v78)
  {
    v58 = 0;
  }

  v86 = v58;
  v60 = v82;
  *a2 = v83;
  *(a2 + 1) = v60;
  v61 = type metadata accessor for TTRListDetailViewModel(0);
  (*(v12 + 32))(&a2[v61[5]], v87, v37);
  *&a2[v61[6]] = v75;
  a2[v61[7]] = 1;
  a2[v61[8]] = 0;
  a2[v61[9]] = 1;
  a2[v61[10]] = 0;
  a2[v61[11]] = 0;
  a2[v61[12]] = 0;
  v62 = &a2[v61[13]];
  v63 = object;
  *v62 = countAndFlagsBits;
  *(v62 + 1) = v63;
  *&a2[v61[14]] = v54;
  v64 = &a2[v61[15]];
  v65 = v76;
  *v64 = v77;
  *(v64 + 1) = v65;
  v66 = &a2[v61[16]];
  v67 = v72;
  *v66 = v73;
  *(v66 + 1) = v67;
  result = (v55)(&a2[v61[17]], v56, v57);
  v69 = &a2[v61[18]];
  v70 = v86;
  *v69 = v59;
  *(v69 + 1) = v70;
  return result;
}

uint64_t TTRListDetailViewModel.init(changeItem:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_100058000(&qword_100782320, &qword_10063E100);
  __chkstk_darwin(v4 - 8);
  v89 = &v73 - v5;
  v6 = type metadata accessor for Locale();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRListDetailBadgeViewModel();
  v87 = *(v10 - 8);
  v88 = v10;
  __chkstk_darwin(v10);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v13 = *(a1 + 40);
  v84 = *(a1 + 48);
  v85 = v13;
  v14 = *(a1 + 24);

  v15 = [v14 capabilities];
  v83 = [v15 supportsListAppearance];

  swift_beginAccess();
  v16 = *(a1 + 72);
  v91 = type metadata accessor for TTRListDetailCreationChangeItem(0);
  v92 = sub_100405794(&qword_10076EAB8, type metadata accessor for TTRListDetailCreationChangeItem, &protocol conformance descriptor for TTRListDetailCreationChangeItem);
  v90 = a1;

  v86 = v12;
  TTRListDetailBadgeViewModel.init(listProtocol:)();
  type metadata accessor for REMGroceryDummyModel();
  static Locale.current.getter();
  Locale.identifier.getter();
  (*(v7 + 8))(v9, v6);
  LODWORD(v9) = static REMGroceryDummyModel.isSupported(localeIdentifier:)();

  v17 = [*(a1 + 24) capabilities];
  v18 = [v17 supportsCustomSmartLists];

  v19 = [*(a1 + 24) capabilities];
  LODWORD(v15) = [v19 supportsGroceriesList];

  v81 = v15 & v9;
  v82 = v18;
  if ((v15 & v9) != 1)
  {
    v31._countAndFlagsBits = 0xD000000000000014;
    v32._countAndFlagsBits = 0xD000000000000026;
    v32._object = 0x8000000100685C40;
    v31._object = 0x8000000100685C70;
    v33._countAndFlagsBits = 0xD00000000000002BLL;
    v33._object = 0x8000000100685C90;
    v34 = TTRLocalizedString(_:value:comment:)(v32, v31, v33);
    countAndFlagsBits = v34._countAndFlagsBits;
    object = v34._object;
    v35 = *(a1 + 72);
    if (v35)
    {
      v36 = v35;
      v37 = REMCustomSmartListFilterDescriptor.enabledFilterCount.getter();
      _s15RemindersUICore21TTRLocalizableStringsO0A0E10ListDetailO22enabledFiltersSubtitle5countSSSi_tFZ_0(v37);
      v38 = objc_allocWithZone(NSAttributedString);
      v39 = String._bridgeToObjectiveC()();

      v40 = [v38 initWithString:v39];
    }

    else
    {
      v41._countAndFlagsBits = 0xD000000000000029;
      v41._object = 0x800000010067E6D0;
      v42._countAndFlagsBits = 0xD000000000000026;
      v42._object = 0x800000010067E700;
      v43._countAndFlagsBits = 0xD00000000000002ELL;
      v43._object = 0x800000010067E730;
      TTRLocalizedString(_:value:comment:)(v41, v42, v43);
      v44 = objc_allocWithZone(NSAttributedString);
      v39 = String._bridgeToObjectiveC()();

      v40 = [v44 initWithString:v39];
    }

    v24 = v40;
    v78 = v18 ^ 1;
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_8:
    v29 = 0xD00000000000001ALL;
    v25 = 0x7473694C2077654ELL;
    v27 = 0x8000000100682BE0;
    v28 = 0x8000000100682C00;
    v26 = 0xE800000000000000;
    v30 = 0xD00000000000001ALL;
    goto LABEL_9;
  }

  v20._countAndFlagsBits = 0xD00000000000001BLL;
  v21._countAndFlagsBits = 0x707954207473694CLL;
  v20._object = 0x8000000100685B10;
  v22._object = 0x8000000100685B30;
  v21._object = 0xE900000000000065;
  v22._countAndFlagsBits = 0xD000000000000020;
  v23 = TTRLocalizedString(_:value:comment:)(v20, v21, v22);
  countAndFlagsBits = v23._countAndFlagsBits;
  object = v23._object;
  v24 = 0;
  v78 = 0;
  if (!v16)
  {
    goto LABEL_8;
  }

LABEL_3:
  v25 = 0x72616D532077654ELL;
  v26 = 0xEE007473694C2074;
  v27 = 0x8000000100685CC0;
  v28 = 0x8000000100685CF0;
  v29 = 0xD000000000000020;
  v30 = 0xD000000000000020;
LABEL_9:
  v45 = TTRLocalizedString(_:value:comment:)(*&v29, *&v25, *&v30);
  v77 = v45._countAndFlagsBits;
  v76 = v45._object;
  v46 = v16 == 0;
  v47._countAndFlagsBits = 0x6D614E207473694CLL;
  v48._countAndFlagsBits = 0xD000000000000026;
  v48._object = 0x800000010067E940;
  v47._object = 0xE900000000000065;
  v49 = TTRLocalizedString(_:comment:)(v47, v48);
  v75 = v49._countAndFlagsBits;
  v74 = v49._object;
  v50 = OBJC_IVAR____TtC9Reminders31TTRListDetailCreationChangeItem_listType;
  swift_beginAccess();
  v51 = type metadata accessor for TTRListDetailViewModel(0);
  v52 = v51[17];
  v53 = type metadata accessor for TTRRemindersListListType();
  (*(*(v53 - 8) + 16))(&a2[v52], a1 + v50, v53);
  sub_100058000(&qword_100782328, &qword_10063E108);
  v54 = type metadata accessor for TTRRemindersListLayout();
  v55 = *(v54 - 8);
  v56 = (*(v55 + 80) + 32) & ~*(v55 + 80);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_10062D400;
  (*(v55 + 104))(v57 + v56, enum case for TTRRemindersListLayout.list(_:), v54);
  sub_1004044D8(v57);
  swift_setDeallocating();
  (*(v55 + 8))(v57 + v56, v54);
  swift_deallocClassInstance();
  v58 = type metadata accessor for TTRUserDefaults();
  v59 = static TTRUserDefaults.appUserDefaults.getter();
  v91 = v58;
  v92 = &protocol witness table for TTRUserDefaults;
  v90 = v59;
  v60 = type metadata accessor for TTRUserDefaults.RemindersListLayoutKey();
  (*(*(v60 - 8) + 56))(v89, 1, 1, v60);
  type metadata accessor for TTRRemindersListDataModelSourceLayoutContext();
  swift_allocObject();
  v61 = TTRRemindersListDataModelSourceLayoutContext.init(supportedLayouts:userDefaults:userDefaultsKey:)();

  v62 = *(a1 + 72);
  v63 = v62;

  v64 = v84;
  *a2 = v85;
  *(a2 + 1) = v64;
  result = (*(v87 + 32))(&a2[v51[5]], v86, v88);
  *&a2[v51[6]] = v62;
  a2[v51[7]] = v78;
  a2[v51[8]] = v46;
  a2[v51[9]] = v83;
  a2[v51[10]] = 0;
  a2[v51[11]] = v82;
  a2[v51[12]] = v81;
  v66 = &a2[v51[13]];
  v67 = object;
  *v66 = countAndFlagsBits;
  *(v66 + 1) = v67;
  *&a2[v51[14]] = v24;
  v68 = &a2[v51[15]];
  v69 = v76;
  *v68 = v77;
  *(v68 + 1) = v69;
  v70 = &a2[v51[16]];
  v71 = v74;
  *v70 = v75;
  *(v70 + 1) = v71;
  v72 = &a2[v51[18]];
  *v72 = v61;
  *(v72 + 1) = &protocol witness table for TTRRemindersListDataModelSourceLayoutContext;
  return result;
}

void TTRListDetailViewModel.init(changeItem:)(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_100058000(&qword_100782320, &qword_10063E100);
  *&v5 = __chkstk_darwin(v4 - 8).n128_u64[0];
  v7 = &v37 - v6;
  v8 = [a1 name];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v10;
  v41 = v9;

  v43 = sub_100003540(0, &qword_10076EAC0, REMTemplateChangeItem_ptr);
  v44 = &protocol witness table for REMTemplateChangeItem;
  v42 = a1;
  v11 = type metadata accessor for TTRListDetailViewModel(0);
  v12 = a1;
  TTRListDetailBadgeViewModel.init(listProtocol:)();
  v13._countAndFlagsBits = 0x6574616C706D6554;
  v13._object = 0xED00006F666E4920;
  v14._object = 0x8000000100685D20;
  v15._countAndFlagsBits = 0xD000000000000024;
  v15._object = 0x8000000100685D40;
  v14._countAndFlagsBits = 0xD00000000000001FLL;
  v16 = TTRLocalizedString(_:value:comment:)(v14, v13, v15);
  object = v16._object;
  countAndFlagsBits = v16._countAndFlagsBits;
  v17 = static TTRLocalizableStrings.Templates.namePlaceholderText.getter();
  v37 = v18;
  v19 = v11[17];
  v20 = enum case for TTRRemindersListListType.standard(_:);
  v21 = type metadata accessor for TTRRemindersListListType();
  (*(*(v21 - 8) + 104))(&a2[v19], v20, v21);
  sub_100058000(&qword_100782328, &qword_10063E108);
  v22 = type metadata accessor for TTRRemindersListLayout();
  v23 = *(v22 - 8);
  v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_10062D400;
  (*(v23 + 104))(v25 + v24, enum case for TTRRemindersListLayout.list(_:), v22);
  sub_1004044D8(v25);
  swift_setDeallocating();
  (*(v23 + 8))(v25 + v24, v22);
  swift_deallocClassInstance();
  v26 = type metadata accessor for TTRUserDefaults();
  v27 = static TTRUserDefaults.appUserDefaults.getter();
  v43 = v26;
  v44 = &protocol witness table for TTRUserDefaults;
  v42 = v27;
  v28 = type metadata accessor for TTRUserDefaults.RemindersListLayoutKey();
  (*(*(v28 - 8) + 56))(v7, 1, 1, v28);
  type metadata accessor for TTRRemindersListDataModelSourceLayoutContext();
  swift_allocObject();
  v29 = TTRRemindersListDataModelSourceLayoutContext.init(supportedLayouts:userDefaults:userDefaultsKey:)();

  v30 = v40;
  *a2 = v41;
  *(a2 + 1) = v30;
  *&a2[v11[6]] = 0;
  a2[v11[7]] = 1;
  a2[v11[8]] = 1;
  a2[v11[9]] = 1;
  a2[v11[10]] = 0;
  a2[v11[11]] = 0;
  a2[v11[12]] = 0;
  v31 = &a2[v11[13]];
  *v31 = 0;
  *(v31 + 1) = 0;
  *&a2[v11[14]] = 0;
  v32 = &a2[v11[15]];
  v33 = object;
  *v32 = countAndFlagsBits;
  *(v32 + 1) = v33;
  v34 = &a2[v11[16]];
  v35 = v37;
  *v34 = v17;
  *(v34 + 1) = v35;
  v36 = &a2[v11[18]];
  *v36 = v29;
  *(v36 + 1) = &protocol witness table for TTRRemindersListDataModelSourceLayoutContext;
}

BOOL TTRListDetailViewModel.canSave.getter()
{
  v1 = v0[1];
  v2 = *v0 & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  return v2 != 0;
}

uint64_t TTRSmartListFilterEditorViewModel.ListData.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TTRListDetailViewModel.badge.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TTRListDetailViewModel(0) + 20);
  v4 = type metadata accessor for TTRListDetailBadgeViewModel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void *TTRListDetailViewModel.filter.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRListDetailViewModel(0) + 24));
  v2 = v1;
  return v1;
}

uint64_t TTRListDetailViewModel.filterDisclosureTitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRListDetailViewModel(0) + 52));

  return v1;
}

void *TTRListDetailViewModel.filterDisclosureSubtitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRListDetailViewModel(0) + 56));
  v2 = v1;
  return v1;
}

uint64_t TTRListDetailViewModel.dialogViewTitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRListDetailViewModel(0) + 60));

  return v1;
}

void TTRListDetailViewModel.dialogViewTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TTRListDetailViewModel(0) + 60));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t TTRListDetailViewModel.placeholderText.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRListDetailViewModel(0) + 64));

  return v1;
}

void TTRListDetailViewModel.placeholderText.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TTRListDetailViewModel(0) + 64));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t TTRListDetailViewModel.listType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TTRListDetailViewModel(0) + 68);
  v4 = type metadata accessor for TTRRemindersListListType();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TTRListDetailViewModel.listType.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRListDetailViewModel(0) + 68);
  v4 = type metadata accessor for TTRRemindersListListType();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

void *sub_100403C3C(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100058000(&qword_100782400, &unk_10063E1A0);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_100405794(&qword_100782408, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_100405794(&qword_100782410, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void sub_100403F5C(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_100058000(&qword_1007823F8, &qword_10063E198);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v37 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        type metadata accessor for REMObjectID_Codable();
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = v3[5];
      v24 = *(a1 + 32 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        type metadata accessor for REMObjectID_Codable();
        while (1)
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v6[8 * v28] = v30 | v29;
        *(v3[6] + 8 * v27) = v24;
        v34 = v3[2];
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        v3[2] = v35;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

unint64_t sub_10040423C(unint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = result;
  v4 = result >> 62;
  if (result >> 62)
  {
    v8 = a3;
    v9 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v9;
    a3 = v8;
    if (result)
    {
LABEL_3:
      sub_100058000(a2, a3);
      result = static _SetStorage.allocate(capacity:)();
      v5 = result;
      v6 = v3 & 0xFFFFFFFFFFFFFF8;
      if (!v4)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v5 = &_swiftEmptySetSingleton;
  v6 = v3 & 0xFFFFFFFFFFFFFF8;
  if (!v4)
  {
LABEL_4:
    v7 = *(v6 + 16);
    if (!v7)
    {
      return v5;
    }

    goto LABEL_9;
  }

LABEL_8:
  result = _CocoaArrayWrapper.endIndex.getter();
  v7 = result;
  if (!result)
  {
    return v5;
  }

LABEL_9:
  v10 = v5 + 56;
  if ((v3 & 0xC000000000000001) != 0)
  {
    v11 = 0;
    while (1)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v12 = __OFADD__(v11++, 1);
      if (v12)
      {
        break;
      }

      v13 = result;
      Hasher.init(_seed:)();
      Hasher._combine(_:)(*(v13 + 16));
      result = Hasher._finalize()();
      v14 = -1 << v5[32];
      v15 = result & ~v14;
      v16 = v15 >> 6;
      v17 = *&v10[8 * (v15 >> 6)];
      v18 = 1 << v15;
      v19 = *(v5 + 6);
      if (((1 << v15) & v17) != 0)
      {
        v20 = ~v14;
        while (*(*(v19 + 8 * v15) + 16) != *(v13 + 16))
        {
          v15 = (v15 + 1) & v20;
          v16 = v15 >> 6;
          v17 = *&v10[8 * (v15 >> 6)];
          v18 = 1 << v15;
          if (((1 << v15) & v17) == 0)
          {
            goto LABEL_17;
          }
        }

        swift_unknownObjectRelease();
        if (v11 == v7)
        {
          return v5;
        }
      }

      else
      {
LABEL_17:
        *&v10[8 * v16] = v18 | v17;
        *(v19 + 8 * v15) = v13;
        v21 = *(v5 + 2);
        v12 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v12)
        {
          goto LABEL_31;
        }

        *(v5 + 2) = v22;
        if (v11 == v7)
        {
          return v5;
        }
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v24 = v3 + 32;
    v25 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v25)
    {
      v28 = *(v24 + 8 * v23);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(*(v28 + 16));
      result = Hasher._finalize()();
      v29 = -1 << v5[32];
      v30 = result & ~v29;
      v31 = v30 >> 6;
      v32 = *&v10[8 * (v30 >> 6)];
      v33 = 1 << v30;
      v34 = *(v5 + 6);
      if (((1 << v30) & v32) != 0)
      {
        v35 = ~v29;
        while (*(*(v34 + 8 * v30) + 16) != *(v28 + 16))
        {
          v30 = (v30 + 1) & v35;
          v31 = v30 >> 6;
          v32 = *&v10[8 * (v30 >> 6)];
          v33 = 1 << v30;
          if (((1 << v30) & v32) == 0)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
LABEL_21:
        *&v10[8 * v31] = v33 | v32;
        *(v34 + 8 * v30) = v28;
        v26 = *(v5 + 2);
        v12 = __OFADD__(v26, 1);
        v27 = v26 + 1;
        if (v12)
        {
          goto LABEL_33;
        }

        *(v5 + 2) = v27;
      }

      if (++v23 == v7)
      {
        return v5;
      }
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

void *sub_1004044D8(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListLayout();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100058000(&qword_100782440, &unk_10063E1D0);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_100405794(&unk_10076BAF0, &type metadata accessor for TTRRemindersListLayout, &protocol conformance descriptor for TTRRemindersListLayout);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_100405794(&qword_1007809E0, &type metadata accessor for TTRRemindersListLayout, &protocol conformance descriptor for TTRRemindersListLayout);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

char *initializeBufferWithCopyOfBuffer for TTRListDetailViewModel(char *a1, char *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v33 = *a2;
    *v3 = *a2;
    v3 = (v33 + ((v4 + 16) & ~v4));
  }

  else
  {
    v5 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v5;
    v6 = a3[5];
    v9 = type metadata accessor for TTRListDetailBadgeViewModel();
    v10 = *(*(v9 - 8) + 16);

    v10(&v3[v6], &a2[v6], v9);
    v11 = a3[6];
    v12 = a3[7];
    v36 = *&a2[v11];
    *&v3[v11] = v36;
    v3[v12] = a2[v12];
    v13 = a3[9];
    v3[a3[8]] = a2[a3[8]];
    v3[v13] = a2[v13];
    v14 = a3[11];
    v3[a3[10]] = a2[a3[10]];
    v3[v14] = a2[v14];
    v15 = a3[13];
    v3[a3[12]] = a2[a3[12]];
    v16 = &v3[v15];
    v17 = &a2[v15];
    v18 = *(v17 + 1);
    *v16 = *v17;
    *(v16 + 1) = v18;
    v19 = a3[14];
    v20 = a3[15];
    v21 = *&a2[v19];
    *&v3[v19] = v21;
    v22 = &v3[v20];
    v23 = &a2[v20];
    v24 = *(v23 + 1);
    *v22 = *v23;
    *(v22 + 1) = v24;
    v25 = a3[16];
    v26 = a3[17];
    v27 = &v3[v25];
    v28 = &a2[v25];
    v29 = *(v28 + 1);
    *v27 = *v28;
    *(v27 + 1) = v29;
    v30 = type metadata accessor for TTRRemindersListListType();
    v35 = *(*(v30 - 8) + 16);
    v31 = v36;

    v32 = v21;

    v35(&v3[v26], &a2[v26], v30);
    *&v3[a3[18]] = *&a2[a3[18]];
    swift_unknownObjectRetain();
  }

  return v3;
}

uint64_t destroy for TTRListDetailViewModel(uint64_t a1, int *a2)
{

  v4 = a2[5];
  v5 = type metadata accessor for TTRListDetailBadgeViewModel();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);

  v6 = a2[17];
  v7 = type metadata accessor for TTRRemindersListListType();
  (*(*(v7 - 8) + 8))(a1 + v6, v7);

  return swift_unknownObjectRelease();
}

char *initializeWithCopy for TTRListDetailViewModel(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = a3[5];
  v8 = type metadata accessor for TTRListDetailBadgeViewModel();
  v9 = *(*(v8 - 8) + 16);

  v9(&a1[v7], &a2[v7], v8);
  v10 = a3[6];
  v11 = a3[7];
  v34 = *&a2[v10];
  *&a1[v10] = v34;
  a1[v11] = a2[v11];
  v12 = a3[9];
  a1[a3[8]] = a2[a3[8]];
  a1[v12] = a2[v12];
  v13 = a3[11];
  a1[a3[10]] = a2[a3[10]];
  a1[v13] = a2[v13];
  v14 = a3[13];
  a1[a3[12]] = a2[a3[12]];
  v15 = &a1[v14];
  v16 = &a2[v14];
  v17 = *(v16 + 1);
  *v15 = *v16;
  *(v15 + 1) = v17;
  v18 = a3[14];
  v19 = a3[15];
  v20 = *&a2[v18];
  *&a1[v18] = v20;
  v21 = &a1[v19];
  v22 = &a2[v19];
  v23 = *(v22 + 1);
  *v21 = *v22;
  *(v21 + 1) = v23;
  v24 = a3[16];
  v25 = a3[17];
  v26 = &a1[v24];
  v27 = &a2[v24];
  v28 = *(v27 + 1);
  *v26 = *v27;
  *(v26 + 1) = v28;
  v29 = type metadata accessor for TTRRemindersListListType();
  v33 = *(*(v29 - 8) + 16);
  v30 = v34;

  v31 = v20;

  v33(&a1[v25], &a2[v25], v29);
  *&a1[a3[18]] = *&a2[a3[18]];
  swift_unknownObjectRetain();
  return a1;
}

char *assignWithCopy for TTRListDetailViewModel(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);

  v6 = a3[5];
  v7 = type metadata accessor for TTRListDetailBadgeViewModel();
  (*(*(v7 - 8) + 24))(&a1[v6], &a2[v6], v7);
  v8 = a3[6];
  v9 = *&a1[v8];
  v10 = *&a2[v8];
  *&a1[v8] = v10;
  v11 = v10;

  a1[a3[7]] = a2[a3[7]];
  a1[a3[8]] = a2[a3[8]];
  a1[a3[9]] = a2[a3[9]];
  a1[a3[10]] = a2[a3[10]];
  a1[a3[11]] = a2[a3[11]];
  a1[a3[12]] = a2[a3[12]];
  v12 = a3[13];
  v13 = &a1[v12];
  v14 = &a2[v12];
  *v13 = *v14;
  *(v13 + 1) = *(v14 + 1);

  v15 = a3[14];
  v16 = *&a1[v15];
  v17 = *&a2[v15];
  *&a1[v15] = v17;
  v18 = v17;

  v19 = a3[15];
  v20 = &a1[v19];
  v21 = &a2[v19];
  *v20 = *v21;
  *(v20 + 1) = *(v21 + 1);

  v22 = a3[16];
  v23 = &a1[v22];
  v24 = &a2[v22];
  *v23 = *v24;
  *(v23 + 1) = *(v24 + 1);

  v25 = a3[17];
  v26 = type metadata accessor for TTRRemindersListListType();
  (*(*(v26 - 8) + 24))(&a1[v25], &a2[v25], v26);
  v27 = a3[18];
  v28 = &a1[v27];
  v29 = &a2[v27];
  v30 = *(v29 + 1);
  *v28 = *v29;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(v28 + 1) = v30;
  return a1;
}

char *initializeWithTake for TTRListDetailViewModel(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = type metadata accessor for TTRListDetailBadgeViewModel();
  (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
  v8 = a3[7];
  *&a1[a3[6]] = *&a2[a3[6]];
  a1[v8] = a2[v8];
  v9 = a3[9];
  a1[a3[8]] = a2[a3[8]];
  a1[v9] = a2[v9];
  v10 = a3[11];
  a1[a3[10]] = a2[a3[10]];
  a1[v10] = a2[v10];
  v11 = a3[13];
  a1[a3[12]] = a2[a3[12]];
  *&a1[v11] = *&a2[v11];
  v12 = a3[15];
  *&a1[a3[14]] = *&a2[a3[14]];
  *&a1[v12] = *&a2[v12];
  v13 = a3[17];
  *&a1[a3[16]] = *&a2[a3[16]];
  v14 = type metadata accessor for TTRRemindersListListType();
  (*(*(v14 - 8) + 32))(&a1[v13], &a2[v13], v14);
  *&a1[a3[18]] = *&a2[a3[18]];
  return a1;
}

char *assignWithTake for TTRListDetailViewModel(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v7 = a3[5];
  v8 = type metadata accessor for TTRListDetailBadgeViewModel();
  (*(*(v8 - 8) + 40))(&a1[v7], &a2[v7], v8);
  v9 = a3[6];
  v10 = *&a1[v9];
  *&a1[v9] = *&a2[v9];

  v11 = a3[8];
  a1[a3[7]] = a2[a3[7]];
  a1[v11] = a2[v11];
  v12 = a3[10];
  a1[a3[9]] = a2[a3[9]];
  a1[v12] = a2[v12];
  v13 = a3[12];
  a1[a3[11]] = a2[a3[11]];
  a1[v13] = a2[v13];
  v14 = a3[13];
  v15 = &a1[v14];
  v16 = &a2[v14];
  v18 = *v16;
  v17 = *(v16 + 1);
  *v15 = v18;
  *(v15 + 1) = v17;

  v19 = a3[14];
  v20 = *&a1[v19];
  *&a1[v19] = *&a2[v19];

  v21 = a3[15];
  v22 = &a1[v21];
  v23 = &a2[v21];
  v25 = *v23;
  v24 = *(v23 + 1);
  *v22 = v25;
  *(v22 + 1) = v24;

  v26 = a3[16];
  v27 = &a1[v26];
  v28 = &a2[v26];
  v30 = *v28;
  v29 = *(v28 + 1);
  *v27 = v30;
  *(v27 + 1) = v29;

  v31 = a3[17];
  v32 = type metadata accessor for TTRRemindersListListType();
  (*(*(v32 - 8) + 40))(&a1[v31], &a2[v31], v32);
  v33 = a3[18];
  v34 = &a1[v33];
  v35 = &a2[v33];
  v36 = *(v35 + 1);
  *v34 = *v35;
  swift_unknownObjectRelease();
  *(v34 + 1) = v36;
  return a1;
}

uint64_t sub_1004051A8(uint64_t a1)
{
  result = type metadata accessor for TTRListDetailBadgeViewModel();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TTRRemindersListListType();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

void sub_1004052B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100058000(&qword_100782438, &qword_10063E1C8);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v24 = v1;
    v25 = a1 + 32;
    v6 = v1;
    do
    {
      v7 = *(v25 + 8 * v4);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v26 = v7;
      String.hash(into:)();
      v8 = Hasher._finalize()();

      v9 = -1 << *(v3 + 32);
      v10 = v8 & ~v9;
      v11 = v10 >> 6;
      v12 = *(v5 + 8 * (v10 >> 6));
      v13 = 1 << v10;
      if (((1 << v10) & v12) == 0)
      {
        goto LABEL_15;
      }

      v14 = ~v9;
      do
      {
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;
        if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
        {

LABEL_4:
          v6 = v24;
          goto LABEL_5;
        }

        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v20)
        {

          goto LABEL_4;
        }

        v10 = (v10 + 1) & v14;
        v11 = v10 >> 6;
        v12 = *(v5 + 8 * (v10 >> 6));
        v13 = 1 << v10;
      }

      while (((1 << v10) & v12) != 0);
      v6 = v24;
LABEL_15:
      *(v5 + 8 * v11) = v13 | v12;
      *(*(v3 + 48) + 8 * v10) = v26;
      v21 = *(v3 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        __break(1u);
        return;
      }

      *(v3 + 16) = v23;
LABEL_5:
      ++v4;
    }

    while (v4 != v6);
  }
}

void sub_1004054A4(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_100058000(&qword_100782428, &unk_100643110);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v38 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = a1 + 32;
    v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_100405794(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1004057DC()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100782448);
  v1 = sub_100003E30(v0, qword_100782448);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *sub_1004058A4()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 48);
  }

  else
  {
    v1 = sub_1003DFB40(*(*(v0 + 56) + 32));
    *(v0 + 48) = v1;
  }

  return v1;
}

void sub_10040590C(void *a1)
{
  v2 = v1;
  if (qword_1007672A0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003E30(v4, qword_100782448);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  strcpy((inited + 32), "participantID");
  *(inited + 46) = -4864;
  sub_100058000(&qword_10076DB18, &unk_10063E2D0);
  *(inited + 48) = Optional.descriptionOrNil.getter();
  *(inited + 56) = v6;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x44497473696CLL;
  *(inited + 88) = 0xE600000000000000;
  v7 = [*(v1[7] + 32) objectID];
  *(inited + 120) = sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
  *(inited + 96) = v7;
  v8 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70, &qword_10062FD60);
  swift_arrayDestroy();
  sub_10000FD44("List sharing show participant {participantID: %@, listID: %@}", 61, 2, v8);

  v9 = v2[15];
  v10 = sub_100469610(a1[9], a1[10], a1[11], a1[12]);
  if (v10)
  {
    v11 = v10;
    sub_10000C36C(v2 + 9, v2[12]);
    v12 = *(v9 + 32);
    v13 = objc_opt_self();
    v14 = v12;
    v15 = [v13 viewControllerForContact:v11];
  }

  else
  {
    v11 = sub_10046991C(a1);
    sub_10000C36C(v2 + 9, v2[12]);
    v16 = *(v9 + 32);
    v17 = objc_opt_self();
    v14 = v16;
    v15 = [v17 viewControllerForUnknownContact:v11];
  }

  v18 = v15;
  sub_100421E08(v18, v14);
}

void sub_100405BA0()
{
  v1 = v0;
  if (qword_1007672A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_100782448);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x44497473696CLL;
  *(inited + 40) = 0xE600000000000000;
  v4 = v0[7];
  v5 = [*(v4 + 32) objectID];
  *(inited + 72) = sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
  *(inited + 48) = v5;
  v6 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_10011F2F8(inited + 32);
  sub_10000FD44("List sharing show add sharees {listID: %@}", 42, 2, v6);

  v7 = [*(v4 + 32) account];
  v8 = [v7 daSupportsPhoneNumbers];

  v9 = [objc_allocWithZone(type metadata accessor for TTRIAddShareesViewController()) initWithAllowsPhoneNumbers:v8];
  if (v9)
  {
    v10 = v9;
    v11 = v9;
    v12 = [v11 navigationItem];
    v13 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:v1 action:"requestCancelAddingSharees"];
    [v12 setLeftBarButtonItem:v13];

    v14 = [v11 navigationItem];
    sub_100003540(0, &qword_10076B800, UIBarButtonItem_ptr);
    v15._object = 0x8000000100685EB0;
    v16._countAndFlagsBits = 6579265;
    v16._object = 0xE300000000000000;
    v15._countAndFlagsBits = 0xD000000000000029;
    TTRLocalizedString(_:comment:)(v16, v15);

    v17 = UIBarButtonItem.init(doneButtonWithCustomTitle:target:action:)();
    [v14 setRightBarButtonItem:{v17, v1}];

    v18 = v1[16];
    v1[16] = v10;
    v19 = v11;

    sub_10000C36C(v1 + 9, v1[12]);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v21 = Strong;
      [Strong pushViewController:v19 animated:1];
    }
  }
}

void sub_100405ED8(uint64_t *a1)
{
  v2 = v1;
  v17 = sub_1004058A4();
  sub_100103660(a1, v16);
  v4 = sub_100406714(&v17, a1);
  sub_1001036BC(a1);
  v5 = v17;
  v6 = *(v17 + 2);
  if (v4 > v6)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v4 < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (__OFADD__(v6, v4 - v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v4 > *(v5 + 3) >> 1)
  {
    if (v6 <= v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = v6;
    }

    v5 = sub_100547808(isUniquelyReferenced_nonNull_native, v8, 1, v5);
    v17 = v5;
  }

  sub_1000FE2E4(v4, v6, 0);
  *(v1 + 48) = v5;

  if (*a1)
  {
    v9 = qword_1007672A0;
    v4 = *a1;
    if (v9 == -1)
    {
LABEL_12:
      v10 = type metadata accessor for Logger();
      sub_100003E30(v10, qword_100782448);
      sub_100058000(&unk_100775610, &unk_1006323A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10062D3F0;
      *(inited + 32) = 0x44497473696CLL;
      *(inited + 40) = 0xE600000000000000;
      v12 = [*(*(v2 + 56) + 32) objectID];
      v13 = sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
      *(inited + 48) = v12;
      *(inited + 72) = v13;
      *(inited + 80) = 0x4449656572616873;
      *(inited + 120) = v13;
      *(inited + 88) = 0xE800000000000000;
      *(inited + 96) = v4;
      v14 = v4;
      v15 = sub_100008E04(inited);
      swift_setDeallocating();
      sub_100058000(&unk_10076BA70, &qword_10062FD60);
      swift_arrayDestroy();
      sub_10000FD44("List sharing delete sharee {listID: %@, shareeID: %@}", 53, 2, v15);

      sub_10041C880(v14, a1[7], a1[8]);

      return;
    }

LABEL_17:
    swift_once();
    goto LABEL_12;
  }
}

uint64_t sub_100406138()
{
  v1 = v0;
  if (qword_1007672A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_100782448);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x44497473696CLL;
  *(inited + 40) = 0xE600000000000000;
  v4 = [*(v0[7] + 32) objectID];
  *(inited + 72) = sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
  *(inited + 48) = v4;
  v5 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_10011F2F8(inited + 32);
  sub_10000FD44("List sharing done {listID: %@}", 30, 2, v5);

  sub_10000C36C(v0 + 9, v0[12]);
  if (qword_1007672C8 != -1)
  {
    swift_once();
  }

  sub_100003E30(v2, qword_100782D00);
  sub_1003F99F4(0x616853207473694CLL, 0xEC000000676E6972);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = v1[5];
    ObjectType = swift_getObjectType();
    (*(v9 + 8))(v1, &off_100726830, ObjectType, v9);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100406364()
{
  if (v0[16])
  {
    sub_10000C36C(v0 + 9, v0[12]);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      v3 = [Strong popViewControllerAnimated:1];
    }

    v4 = v0[16];
    v0[16] = 0;
  }
}

void sub_100406414()
{
  v1 = v0;
  v2 = v0[16];
  if (v2)
  {
    v3 = *(v1[7] + 32);
    v4 = v2;
    v5 = sub_10007C458(v3, 1);

    sub_10041BDB8(v5);

    sub_10000C36C(v1 + 9, v1[12]);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = [Strong popViewControllerAnimated:1];
    }

    v9 = v1[16];
    v1[16] = 0;
  }
}

double sub_10040651C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);

  return result;
}

uint64_t sub_100406560()
{
  sub_10003B788(v0 + 16);
  sub_10003B788(v0 + 32);

  swift_unknownObjectRelease();
  sub_100004758((v0 + 72));

  return v0;
}

uint64_t sub_1004065B8()
{
  sub_100406560();

  return swift_deallocClassInstance();
}

void sub_100406610()
{
  v1 = sub_1003DFB40(*(*(v0 + 56) + 32));
  v2 = sub_1004058A4();
  v3 = sub_100126464(v1, v2);

  if (v3)
  {
  }

  else
  {
    *(v0 + 48) = v1;

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = [Strong tableView];
      if (v5)
      {
        v6 = v5;
        [v5 reloadData];
        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_100406714(uint64_t result, uint64_t *a2)
{
  v3 = *result;
  v4 = *(*result + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = result;
  v7 = 0;
  v8 = 0;
  v9 = *a2;
  while (1)
  {
    v10 = *(v3 + v7 + 32);
    if (!v10)
    {
      if (!v9)
      {
        break;
      }

      goto LABEL_4;
    }

    if (v10 == v9)
    {
      break;
    }

LABEL_4:
    ++v8;
    v7 += 112;
    if (v4 == v8)
    {
      return *(*result + 16);
    }
  }

  if (v2)
  {
    return *(*result + 16);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    goto LABEL_33;
  }

  if (v11 == v4)
  {
    return v8;
  }

  v12 = v7 + 144;
  while (2)
  {
    if (v11 < v4)
    {
      v24 = (v3 + v12);
      v25 = *(v3 + v12);
      v26 = *a2;
      if (v25)
      {
        if (v25 != v26)
        {
LABEL_22:
          if (v11 != v8)
          {
            if (v8 >= v4)
            {
              goto LABEL_30;
            }

            v27 = 112 * v8;
            v28 = (v3 + 32 + 112 * v8);
            v29 = *v28;
            v30 = v28[2];
            v55 = v28[1];
            v56 = v30;
            v54 = v29;
            v31 = v28[3];
            v32 = v28[4];
            v33 = v28[5];
            *(v59 + 9) = *(v28 + 89);
            v58 = v32;
            v59[0] = v33;
            v57 = v31;
            v35 = v24[4];
            v34 = v24[5];
            v36 = v24[3];
            *(v65 + 9) = *(v24 + 89);
            v64 = v35;
            v65[0] = v34;
            v63 = v36;
            v37 = *v24;
            v38 = v24[2];
            v61 = v24[1];
            v62 = v38;
            v60 = v37;
            sub_100103660(&v54, v52);
            sub_100103660(&v60, v52);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_1003B2ED0(v3);
              v3 = result;
            }

            if (v8 >= *(v3 + 16))
            {
              goto LABEL_31;
            }

            v39 = (v3 + v27);
            v40 = *(v3 + v27 + 32);
            v41 = *(v3 + v27 + 64);
            v50[1] = *(v3 + v27 + 48);
            v50[2] = v41;
            v50[0] = v40;
            v42 = *(v3 + v27 + 80);
            v43 = *(v3 + v27 + 96);
            v44 = *(v3 + v27 + 112);
            *&v51[9] = *(v3 + v27 + 121);
            v50[4] = v43;
            *v51 = v44;
            v50[3] = v42;
            v46 = v64;
            v45 = v65[0];
            v47 = v63;
            *(v39 + 121) = *(v65 + 9);
            v39[6] = v46;
            v39[7] = v45;
            v39[5] = v47;
            v48 = v60;
            v49 = v62;
            v39[3] = v61;
            v39[4] = v49;
            v39[2] = v48;
            result = sub_1001036BC(v50);
            if (v11 >= *(v3 + 16))
            {
              goto LABEL_32;
            }

            v13 = (v3 + v12);
            v14 = *(v3 + v12);
            v15 = *(v3 + v12 + 32);
            v52[1] = *(v3 + v12 + 16);
            v52[2] = v15;
            v52[0] = v14;
            v16 = *(v3 + v12 + 48);
            v17 = *(v3 + v12 + 64);
            v18 = *(v3 + v12 + 80);
            *(v53 + 9) = *(v3 + v12 + 89);
            v52[4] = v17;
            v53[0] = v18;
            v52[3] = v16;
            v20 = v58;
            v19 = v59[0];
            v21 = v57;
            *(v13 + 89) = *(v59 + 9);
            v13[4] = v20;
            v13[5] = v19;
            v13[3] = v21;
            v22 = v54;
            v23 = v56;
            v13[1] = v55;
            v13[2] = v23;
            *v13 = v22;
            result = sub_1001036BC(v52);
            *v6 = v3;
          }

          ++v8;
        }
      }

      else if (v26)
      {
        goto LABEL_22;
      }

      ++v11;
      v4 = *(v3 + 16);
      v12 += 112;
      if (v11 == v4)
      {
        return v8;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

id sub_1004069B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PPTTestClass();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1004069E8(uint64_t a1, unint64_t a2)
{
  v3 = a1;
  *(v2 + OBJC_IVAR____TtC9Reminders33TTRISegmentedNavigationController_segmentedControl) = 0;
  *(v2 + OBJC_IVAR____TtC9Reminders33TTRISegmentedNavigationController_palette) = 0;
  v4 = (v2 + OBJC_IVAR____TtC9Reminders33TTRISegmentedNavigationController_selectedTabID);
  *v4 = 0;
  v4[1] = 0;
  v38 = v4;
  v5 = *(a1 + 16);

  v42 = v5;
  if (v5)
  {
    v6 = 0;
    v7 = (v3 + 64);
    v8 = &_swiftEmptyDictionarySingleton;
    v41 = v3;
    while (1)
    {
      if (v6 >= *(v3 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v12 = *(v7 - 4);
      v11 = *(v7 - 3);
      v13 = *(v7 - 2);
      v14 = *(v7 - 1);
      v15 = *v7;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v16 = v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v8;
      v18 = sub_100009044(v12, v11);
      v20 = v8[2];
      v21 = (v19 & 1) == 0;
      v22 = __OFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        goto LABEL_21;
      }

      v24 = v19;
      if (v8[3] < v23)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      v30 = v18;
      sub_1003AF8E0();
      v18 = v30;
      v8 = v44;
      if (v24)
      {
LABEL_3:
        v9 = (v8[7] + 56 * v18);
        v10 = v9[5];
        *v9 = v6;
        v9[1] = v12;
        v9[2] = v11;
        v9[3] = v13;
        v9[4] = v14;
        v9[5] = v16;
        v9[6] = 0;

        goto LABEL_4;
      }

LABEL_12:
      v8[(v18 >> 6) + 8] |= 1 << v18;
      v26 = (v8[6] + 16 * v18);
      *v26 = v12;
      v26[1] = v11;
      v27 = (v8[7] + 56 * v18);
      *v27 = v6;
      v27[1] = v12;
      v27[2] = v11;
      v27[3] = v13;
      v27[4] = v14;
      v27[5] = v16;
      v27[6] = 0;

      v28 = v8[2];
      v22 = __OFADD__(v28, 1);
      v29 = v28 + 1;
      if (v22)
      {
        goto LABEL_22;
      }

      v8[2] = v29;
LABEL_4:
      ++v6;
      v7 += 5;
      v3 = v41;
      if (v42 == v6)
      {
        goto LABEL_17;
      }
    }

    sub_10054C540(v23, isUniquelyReferenced_nonNull_native);
    v18 = sub_100009044(v12, v11);
    if ((v24 & 1) != (v25 & 1))
    {
      goto LABEL_25;
    }

LABEL_11:
    v8 = v44;
    if (v24)
    {
      goto LABEL_3;
    }

    goto LABEL_12;
  }

  v8 = &_swiftEmptyDictionarySingleton;
LABEL_17:

  *&v40[OBJC_IVAR____TtC9Reminders33TTRISegmentedNavigationController_tabStateByID] = v8;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

  if (*(v3 + 16) <= a2)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    v31 = (v3 + 40 * a2);
    v32 = v31[4];
    v33 = v31[5];
    v34 = v31[8];

    v35 = v34;

    *v38 = v32;
    v38[1] = v33;

    v43.receiver = v40;
    v43.super_class = type metadata accessor for TTRISegmentedNavigationController();
    v36 = objc_msgSendSuper2(&v43, "initWithRootViewController:", v35);

    return v36;
  }

  return result;
}

uint64_t sub_100406D10()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders33TTRISegmentedNavigationController_selectedTabID + 8);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v0 + OBJC_IVAR____TtC9Reminders33TTRISegmentedNavigationController_selectedTabID);
  v3 = OBJC_IVAR____TtC9Reminders33TTRISegmentedNavigationController_tabStateByID;
  swift_beginAccess();
  v4 = *(v0 + v3);
  if (*(v4 + 16))
  {

    v5 = sub_100009044(v2, v1);
    v7 = v6;

    if (v7)
    {
      v8 = (*(v4 + 56) + 56 * v5);
      v10 = *v8;
      v9 = v8[1];
      v12 = v8[2];
      v11 = v8[3];
      v13 = v8[4];
      v14 = v8[5];
      v15 = v8[6];

      v16 = v14;

      if (v12)
      {
        sub_10016B1B8(v10, v9, v12, v11, v13, v14, v15);
        return v10;
      }

      v18 = v10;
      v19 = v9;
      v20 = v11;
      v21 = v13;
      v22 = v14;
      v23 = v15;
      goto LABEL_8;
    }
  }

  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
LABEL_8:
  sub_10016B1B8(v18, v19, 0, v20, v21, v22, v23);
  return 0;
}

void sub_100406EE8()
{
  v1 = OBJC_IVAR____TtC9Reminders33TTRISegmentedNavigationController_tabStateByID;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);
  if (v3 >= 2)
  {
    v42 = v1;
    v4 = sub_1003AC5C0(v3, 0);
    v5 = sub_1003B30DC(&v46, (v4 + 4), v3, v2);
    v6 = v46;
    swift_bridgeObjectRetain_n();
    sub_10008BA48(v6);
    if (v5 != v3)
    {
      __break(1u);

      __break(1u);
      return;
    }

    v43 = v0;
    *&v46 = v4;
    sub_10040768C(&v46);

    v7 = v46;
    v8 = *(v46 + 16);
    if (v8)
    {
      v45 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      sub_100003540(0, &qword_10076BA60, UIAction_ptr);
      v9 = (v7 + 40);
      do
      {
        v47 = *v9;
        v10 = *(v9 + 2);
        v11 = *(v9 + 3);
        v12 = *(v9 + 4);
        v46 = v47;
        v13 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v14 = swift_allocObject();
        *(v14 + 16) = v13;
        *(v14 + 24) = v47;
        *(v14 + 40) = v10;
        *(v14 + 48) = v11;
        *(v14 + 56) = v12;
        swift_bridgeObjectRetain_n();
        sub_100408AE8(&v46, v44);
        v15 = v12;
        UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v9 = (v9 + 56);
        --v8;
      }

      while (v8);

      v16 = v45;
    }

    else
    {

      v16 = _swiftEmptyArrayStorage;
    }

    sub_1003E0B88(v16);

    v17 = objc_allocWithZone(UISegmentedControl);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v19 = [v17 initWithItems:isa];

    v20 = v43;
    v21 = *(v43 + OBJC_IVAR____TtC9Reminders33TTRISegmentedNavigationController_selectedTabID + 8);
    if (!v21)
    {
      goto LABEL_16;
    }

    v22 = *(v43 + v42);
    if (*(v22 + 16))
    {
      v23 = *(v43 + OBJC_IVAR____TtC9Reminders33TTRISegmentedNavigationController_selectedTabID);

      v24 = sub_100009044(v23, v21);
      v26 = v25;

      if (v26)
      {
        v27 = (*(v22 + 56) + 56 * v24);
        v28 = *v27;
        v29 = v27[1];
        v31 = v27[2];
        v30 = v27[3];
        v33 = v27[4];
        v32 = v27[5];
        v34 = v27[6];

        v35 = v32;

        if (v31)
        {
          sub_10016B1B8(v28, v29, v31, v30, v33, v32, v34);
          [v19 setSelectedSegmentIndex:v28];
          v20 = v43;
LABEL_16:
          v41 = *(v20 + OBJC_IVAR____TtC9Reminders33TTRISegmentedNavigationController_segmentedControl);
          *(v20 + OBJC_IVAR____TtC9Reminders33TTRISegmentedNavigationController_segmentedControl) = v19;

          return;
        }

        v36 = v29;
        v37 = v30;
        v38 = v33;
        v39 = v32;
        v40 = v34;
        v20 = v43;
LABEL_15:
        sub_10016B1B8(v28, v36, 0, v37, v38, v39, v40);
        goto LABEL_16;
      }
    }

    v28 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    goto LABEL_15;
  }
}

void sub_100407310(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = &v2[OBJC_IVAR____TtC9Reminders33TTRISegmentedNavigationController_selectedTabID];
  v7 = *&v2[OBJC_IVAR____TtC9Reminders33TTRISegmentedNavigationController_selectedTabID + 8];
  if (!v7 || (*v6 == a1 ? (v8 = v7 == a2) : (v8 = 0), !v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
    v9 = OBJC_IVAR____TtC9Reminders33TTRISegmentedNavigationController_tabStateByID;
    swift_beginAccess();
    v10 = *&v3[v9];
    if (*(v10 + 16))
    {

      v11 = sub_100009044(a1, a2);
      if (v12)
      {
        v13 = *(v10 + 56) + 56 * v11;
        v14 = *(v13 + 40);
        v15 = *(v13 + 48);

        v31 = v14;

        v16 = v6[1];
        if (v16)
        {
          v17 = *v6;

          v30 = sub_100406E88(v33);
          v19 = sub_100167284(v32, v17, v16);
          if (*(v18 + 16))
          {
            v20 = v18;
            v29 = v19;
            v21 = [v3 viewControllers];
            sub_100003540(0, &qword_10076AD28, UIViewController_ptr);
            v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            *(v20 + 48) = v22;

            (v29)(v32, 0);
          }

          else
          {
            (v19)(v32, 0);
          }

          (v30)(v33, 0);
        }

        *v6 = a1;
        v6[1] = a2;

        if (!v15)
        {
          sub_100058000(&qword_10076B780, &qword_10062D7C0);
          v23 = swift_allocObject();
          *(v23 + 16) = xmmword_10062D420;
          *(v23 + 32) = v31;
          v24 = v31;
        }

        v25 = sub_100406E88(v33);
        v27 = sub_100167284(v32, a1, a2);
        if (*(v26 + 16))
        {
          *(v26 + 48) = 0;
        }

        (v27)(v32, 0);
        (v25)(v33, 0);
        sub_100003540(0, &qword_10076AD28, UIViewController_ptr);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v3 setViewControllers:isa animated:0];
      }

      else
      {
      }
    }
  }
}

void sub_10040768C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1000EF320(v2);
  }

  v3 = *(v2 + 2);
  v23[0] = (v2 + 32);
  v23[1] = v3;
  v4 = _minimumMergeRunLength(_:)(v3);
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 80;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[56 * i + 32];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 6))
          {
            break;
          }

          v14 = *(v13 + 2);
          v15 = *(v13 + 3);
          v16 = *(v13 + 4);
          v17 = *(v13 + 7);
          v18 = *(v13 - 2);
          *(v13 + 8) = *(v13 - 3);
          v19 = *(v13 + 40);
          *(v13 + 24) = v18;
          *(v13 + 40) = *(v13 - 1);
          *(v13 + 7) = *v13;
          *(v13 - 6) = v11;
          *(v13 - 5) = v14;
          *(v13 - 4) = v15;
          *(v13 - 3) = v16;
          *(v13 - 1) = v19;
          *v13 = v17;
          v13 -= 56;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 56;
        --v9;
      }
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v21[0] = (v7 + 4);
    v21[1] = v6;
    sub_10040815C(v21, v22, v23, v5);
    v7[2] = 0;
  }

  *a1 = v2;
}

double sub_100407804@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

void sub_100407900()
{
  v1 = v0;
  v24.receiver = v0;
  v24.super_class = type metadata accessor for TTRISegmentedNavigationController();
  objc_msgSendSuper2(&v24, "viewDidLayoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC9Reminders33TTRISegmentedNavigationController_segmentedControl];
  if (v2)
  {
    v3 = v2;
    v4 = [v0 view];
    if (v4)
    {
      v5 = v4;
      [v4 layoutMargins];
      v7 = v6;
      v9 = v8;

      v10 = [v1 navigationBar];
      [v10 bounds];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      v25.origin.x = v12;
      v25.origin.y = v14;
      v25.size.width = v16;
      v25.size.height = v18;
      v19 = CGRectGetWidth(v25) - v7 - v9;
      v20 = [v1 traitCollection];
      v21 = [v20 horizontalSizeClass];

      if (v21 != 2 || v19 <= 366.0)
      {
        goto LABEL_7;
      }

      [v3 sizeThatFits:{v19, 0.0}];
      if (v19 >= 366.0)
      {
        sub_100408A88();
        Comparable.clamped(to:)();
LABEL_7:
        v22 = v3;
        [v22 bounds];
        CGRectGetHeight(v26);
        v23 = [v1 traitCollection];
        [v23 displayScale];

        UIRectRoundToScale();
        [v22 setFrame:?];

        return;
      }

      __break(1u);
    }

    __break(1u);
  }
}

void sub_100407B94(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_100407310(*a3, a3[1]);
  }
}

id sub_100407BF0(char *a1, void *a2)
{
  result = [a1 view];
  if (result)
  {
    v5 = result;
    [result bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v20.origin.x = v7;
    v20.origin.y = v9;
    v20.size.width = v11;
    v20.size.height = v13;
    Width = CGRectGetWidth(v20);
    [a2 sizeThatFits:{0.0, 0.0}];
    v16 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, Width, v15 + 12.0}];
    [v16 addSubview:a2];
    v17 = [objc_allocWithZone(_UINavigationBarPalette) initWithContentView:v16];

    v18 = *&a1[OBJC_IVAR____TtC9Reminders33TTRISegmentedNavigationController_palette];
    *&a1[OBJC_IVAR____TtC9Reminders33TTRISegmentedNavigationController_palette] = v17;
    v19 = v17;

    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100407DB4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRISegmentedNavigationController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double destroy for TTRISegmentedNavigationController.TabState(uint64_t a1)
{

  return result;
}

uint64_t initializeWithCopy for TTRISegmentedNavigationController.TabState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  *(a1 + 48) = *(a2 + 48);

  v5 = v4;

  return a1;
}

void *assignWithCopy for TTRISegmentedNavigationController.TabState(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];

  a1[3] = a2[3];
  a1[4] = a2[4];

  v4 = a2[5];
  v5 = a1[5];
  a1[5] = v4;
  v6 = v4;

  a1[6] = a2[6];

  return a1;
}

uint64_t assignWithTake for TTRISegmentedNavigationController.TabState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  v4 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRISegmentedNavigationController.TabState(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRISegmentedNavigationController.TabState(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10040815C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v105 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_1000ED7BC(v8);
    }

    v96 = v8 + 16;
    v97 = *(v8 + 2);
    if (v97 >= 2)
    {
      while (*a3)
      {
        v98 = &v8[16 * v97];
        v99 = *v98;
        v100 = &v96[2 * v97];
        v101 = v100[1];
        sub_100408754((*a3 + 56 * *v98), (*a3 + 56 * *v100), *a3 + 56 * v101, v105);
        if (v5)
        {
          goto LABEL_97;
        }

        if (v101 < v99)
        {
          goto LABEL_114;
        }

        if (v97 - 2 >= *v96)
        {
          goto LABEL_115;
        }

        *v98 = v99;
        *(v98 + 1) = v101;
        v102 = *v96 - v97;
        if (*v96 < v97)
        {
          goto LABEL_116;
        }

        v97 = *v96 - 1;
        memmove(v100, v100 + 2, 16 * v102);
        *v96 = v97;
        if (v97 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v103 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 56 * v7);
      v11 = 56 * v9;
      v12 = (*a3 + 56 * v9);
      v15 = *v12;
      v14 = v12 + 14;
      v13 = v15;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 7;
        v19 = (v10 < v13) ^ (v18 >= v17);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 56 * v7 - 56;
        v21 = v7;
        v22 = v9;
        do
        {
          if (v22 != --v21)
          {
            v33 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v33 + v11);
            v24 = (v33 + v20);
            v25 = *(v23 + 2);
            v26 = *(v23 + 3);
            v27 = *(v23 + 6);
            v28 = *v23;
            v29 = v23[2];
            v31 = v24[1];
            v30 = v24[2];
            v32 = *v24;
            *(v23 + 6) = *(v24 + 6);
            v23[1] = v31;
            v23[2] = v30;
            *v23 = v32;
            *v24 = v28;
            *(v24 + 2) = v25;
            *(v24 + 3) = v26;
            v24[2] = v29;
            *(v24 + 6) = v27;
          }

          ++v22;
          v20 -= 56;
          v11 += 56;
        }

        while (v22 < v21);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_100546DD8(0, *(v8 + 2) + 1, 1, v8);
    }

    v49 = *(v8 + 2);
    v48 = *(v8 + 3);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      v8 = sub_100546DD8((v48 > 1), v49 + 1, 1, v8);
    }

    *(v8 + 2) = v50;
    v51 = v8 + 32;
    v52 = &v8[16 * v49 + 32];
    *v52 = v9;
    *(v52 + 1) = v7;
    v105 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v49)
    {
      while (1)
      {
        v53 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v54 = *(v8 + 4);
          v55 = *(v8 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_57:
          if (v57)
          {
            goto LABEL_104;
          }

          v70 = &v8[16 * v50];
          v72 = *v70;
          v71 = *(v70 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_106;
          }

          v76 = &v51[16 * v53];
          v78 = *v76;
          v77 = *(v76 + 1);
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v74, v79))
          {
            goto LABEL_111;
          }

          if (v74 + v79 >= v56)
          {
            if (v56 < v79)
            {
              v53 = v50 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v50 < 2)
        {
          goto LABEL_112;
        }

        v80 = &v8[16 * v50];
        v82 = *v80;
        v81 = *(v80 + 1);
        v64 = __OFSUB__(v81, v82);
        v74 = v81 - v82;
        v75 = v64;
LABEL_72:
        if (v75)
        {
          goto LABEL_108;
        }

        v83 = &v51[16 * v53];
        v85 = *v83;
        v84 = *(v83 + 1);
        v64 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v64)
        {
          goto LABEL_110;
        }

        if (v86 < v74)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v53 - 1 >= v50)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
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
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v91 = &v51[16 * v53 - 16];
        v92 = *v91;
        v93 = &v51[16 * v53];
        v94 = *(v93 + 1);
        sub_100408754((*a3 + 56 * *v91), (*a3 + 56 * *v93), *a3 + 56 * v94, v105);
        if (v5)
        {
          goto LABEL_97;
        }

        if (v94 < v92)
        {
          goto LABEL_99;
        }

        if (v53 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v91 = v92;
        *(v91 + 1) = v94;
        v95 = *(v8 + 2);
        if (v53 >= v95)
        {
          goto LABEL_101;
        }

        v50 = v95 - 1;
        memmove(&v51[16 * v53], v93 + 16, 16 * (v95 - 1 - v53));
        *(v8 + 2) = v95 - 1;
        if (v95 <= 2)
        {
          goto LABEL_3;
        }
      }

      v58 = &v51[16 * v50];
      v59 = *(v58 - 8);
      v60 = *(v58 - 7);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_102;
      }

      v63 = *(v58 - 6);
      v62 = *(v58 - 5);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_103;
      }

      v65 = &v8[16 * v50];
      v67 = *v65;
      v66 = *(v65 + 1);
      v64 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v64)
      {
        goto LABEL_105;
      }

      v64 = __OFADD__(v56, v68);
      v69 = v56 + v68;
      if (v64)
      {
        goto LABEL_107;
      }

      if (v69 >= v61)
      {
        v87 = &v51[16 * v53];
        v89 = *v87;
        v88 = *(v87 + 1);
        v64 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v64)
        {
          goto LABEL_113;
        }

        if (v56 < v90)
        {
          v53 = v50 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v103;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v34 = *a3;
  v35 = *a3 + 56 * v7 - 56;
  v36 = v9 - v7;
LABEL_30:
  v37 = *(v34 + 56 * v7);
  v38 = v36;
  v39 = v35;
  while (1)
  {
    v40 = v39 + 56;
    if (v37 >= *v39)
    {
LABEL_29:
      ++v7;
      v35 += 56;
      --v36;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v34)
    {
      break;
    }

    v41 = *(v39 + 64);
    v42 = *(v39 + 80);
    v43 = *(v39 + 104);
    v44 = *(v39 + 88);
    v45 = *(v39 + 16);
    *v40 = *v39;
    *(v39 + 72) = v45;
    *(v39 + 88) = *(v39 + 32);
    v46 = *(v39 + 48);
    *v39 = v37;
    *(v39 + 8) = v41;
    *(v39 + 24) = v42;
    *(v39 + 32) = v44;
    *(v39 + 48) = v43;
    v39 -= 56;
    *(v40 + 48) = v46;
    if (__CFADD__(v38++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

uint64_t sub_100408754(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 56;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 56;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[56 * v9] <= a4)
    {
      memmove(a4, __dst, 56 * v9);
    }

    v12 = &v4[56 * v9];
    if (v8 < 56)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 56;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 56;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 56;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v16 = *(v13 + 1);
    v17 = *(v13 + 2);
    *(v7 + 6) = *(v13 + 6);
    *(v7 + 1) = v16;
    *(v7 + 2) = v17;
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[56 * v11] <= a4)
  {
    memmove(a4, __src, 56 * v11);
  }

  v12 = &v4[56 * v11];
  if (v10 >= 56 && v6 > v7)
  {
LABEL_20:
    v18 = v6 - 56;
    v5 -= 56;
    v19 = v12;
    do
    {
      v20 = (v5 + 56);
      v21 = *(v19 - 56);
      v19 -= 56;
      if (v21 < *v18)
      {
        if (v20 != v6)
        {
          v25 = *v18;
          v26 = *(v6 - 40);
          v27 = *(v6 - 24);
          *(v5 + 48) = *(v6 - 1);
          *(v5 + 16) = v26;
          *(v5 + 32) = v27;
          *v5 = v25;
        }

        if (v12 <= v4 || (v6 -= 56, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v20 != v12)
      {
        v22 = *v19;
        v23 = *(v19 + 16);
        v24 = *(v19 + 32);
        *(v5 + 48) = *(v19 + 48);
        *(v5 + 16) = v23;
        *(v5 + 32) = v24;
        *v5 = v22;
      }

      v5 -= 56;
      v12 = v19;
    }

    while (v19 > v4);
    v12 = v19;
  }

LABEL_31:
  v28 = ((v12 - v4) * 0x4924924924924925) >> 64;
  v29 = (v28 >> 4) + (v28 >> 63);
  if (v6 != v4 || v6 >= &v4[56 * v29])
  {
    memmove(v6, v4, 56 * v29);
  }

  return 1;
}

void sub_1004089B8(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC9Reminders33TTRISegmentedNavigationController_segmentedControl];
  if (v2)
  {
    v4 = *&v1[OBJC_IVAR____TtC9Reminders33TTRISegmentedNavigationController_palette];
    if (v4)
    {
      v5 = v2;
      v6 = v4;
    }

    else
    {
      v6 = sub_100407BF0(v1, v2);
    }

    v7 = v4;
    v8 = [a1 navigationItem];
    [v8 _setBottomPalette:v6];
  }
}

unint64_t sub_100408A88()
{
  result = qword_1007825A8;
  if (!qword_1007825A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007825A8);
  }

  return result;
}

void destroy for TTRISegmentedNavigationTab(void *a1)
{

  v2 = a1[4];
}

void *initializeWithCopy for TTRISegmentedNavigationTab(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[4];
  a1[4] = v5;

  v6 = v5;
  return a1;
}

void *assignWithCopy for TTRISegmentedNavigationTab(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];

  v4 = a2[4];
  v5 = a1[4];
  a1[4] = v4;
  v6 = v4;

  return a1;
}

void *assignWithTake for TTRISegmentedNavigationTab(void *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;

  a1[2] = *(a2 + 16);

  v5 = a1[4];
  *(a1 + 3) = *(a2 + 24);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRISegmentedNavigationTab(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRISegmentedNavigationTab(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100408D64(unint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (*(v2 + 32) == 1)
  {
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
    return;
  }

  v4 = *v2;
  v5 = v2[1];
  v6 = *(*v2 + 16);
  if (v5 == v6)
  {
    goto LABEL_9;
  }

  if (v5 >= v6)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v2[1] = v5 + 1;
    sub_10000B0D8(v4 + 40 * v5 + 32, v12);
    a1 = v2[2];
    if (!(a1 >> 62))
    {
      v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_7;
    }
  }

  v11 = a1;
  v7 = _CocoaArrayWrapper.endIndex.getter();
  a1 = v11;
LABEL_7:
  v8 = v2[3];
  if (v8 == v7)
  {
    sub_100004758(v12);
    a2 = v3;
LABEL_9:
    *(v2 + 32) = 1;
    *a2 = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_21;
    }

    if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_22:
      __break(1u);
      return;
    }

    v9 = *(a1 + 8 * v8 + 32);
  }

  v10 = v9;
  if (__OFADD__(v8, 1))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v2[3] = v8 + 1;
  sub_100005FD0(v12, v3);
  *(v3 + 5) = v10;
}

void *sub_100408EA4(unint64_t a1, void *a2, uint64_t (*a3)(void *), void *ObjectType, uint64_t (*a5)(id *, void *), uint64_t a6)
{
  v7 = v6;
  v68 = a5;
  v69 = a6;
  v12 = sub_100058000(&unk_1007818F0, &unk_10063E550);
  v66 = *(v12 - 8);
  v67 = v12;
  __chkstk_darwin(v12);
  v77 = &v54 - v13;
  v14 = type metadata accessor for TTRRemindersListViewModel.Item();
  v70 = *(v14 - 8);
  __chkstk_darwin(v14);
  v64 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v15;
  __chkstk_darwin(v16);
  v78 = (&v54 - v17);
  v18 = sub_100113C88(a1, a2);
  v19 = _swiftEmptyArrayStorage;
  if (v18)
  {
    v20 = v18;
    v81 = a3;
    if (qword_100766F20 != -1)
    {
      goto LABEL_27;
    }

    while (1)
    {
      v21 = type metadata accessor for Logger();
      sub_100003E30(v21, qword_10076C5F0);
      v22 = v20;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.info.getter();

      v25 = os_log_type_enabled(v23, v24);
      v71 = v22;
      if (v25)
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v26 = 138412290;
        v28 = [v71 objectID];
        *(v26 + 4) = v28;
        *v27 = v28;
        _os_log_impl(&_mh_execute_header, v23, v24, "performDrop: accepting drop {targetListID: %@}", v26, 0xCu);
        sub_1000079B4(v27, &unk_10076DF80, &qword_10062F730);
        v22 = v71;
      }

      v20 = ObjectType;
      v29 = v81(v22);
      v30 = v29;
      if (v29 >> 62)
      {
        if (v29 < 0)
        {
          v20 = v29;
        }

        else
        {
          v20 = (v29 & 0xFFFFFFFFFFFFFF8);
        }

        if (!_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_33:

          goto LABEL_34;
        }

        v31 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v31 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v31)
        {
          goto LABEL_33;
        }
      }

      v32 = sub_100113DD0(a1, a2, v31, v7);
      if (!v32)
      {
        goto LABEL_33;
      }

      v33 = v32;
      v83 = v19;
      v63 = v32[2];
      if (!v63)
      {
        break;
      }

      a1 = 0;
      v61 = v32 + 4;
      v60 = v30 & 0xC000000000000001;
      v55 = v30 & 0xFFFFFFFFFFFFFF8;
      v81 = (v70 + 16);
      v57 = v70 + 32;
      v56 = (v70 + 8);
      v62 = v14;
      a2 = v78;
      v59 = v32;
      v58 = v30;
      while (a1 < v33[2])
      {
        v80 = *&v61[2 * a1];
        v7 = v80;
        ObjectType = swift_getObjectType();
        swift_unknownObjectRetain();
        v20 = v7;
        dispatch thunk of TTRRemindersListEditingSession.item.getter();
        if (v60)
        {
          v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (a1 >= *(v55 + 16))
          {
            goto LABEL_26;
          }

          v34 = *(v30 + 8 * a1 + 32);
        }

        v35 = v34;
        v82 = v34;
        v36 = *(v67 + 48);
        v37 = v77;
        *v77 = v34;
        v38 = *v81;
        (*v81)(&v37[v36], a2, v14);
        v74 = v35;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_100547474(0, v19[2] + 1, 1, v19);
        }

        v40 = v19[2];
        v39 = v19[3];
        v75 = a1;
        v79 = v7;
        if (v40 >= v39 >> 1)
        {
          v19 = sub_100547474((v39 > 1), v40 + 1, 1, v19);
        }

        v19[2] = v40 + 1;
        v41 = (*(v66 + 80) + 32) & ~*(v66 + 80);
        v76 = v19;
        sub_100016588(v77, v19 + v41 + *(v66 + 72) * v40, &unk_1007818F0, &unk_10063E550);
        v68(&v82, v22);
        v42 = zalgoIfMain.getter();
        v7 = v64;
        v43 = v62;
        v38(v64, a2, v62);
        v44 = v70;
        v45 = (*(v70 + 80) + 16) & ~*(v70 + 80);
        v73 = v45 + v65;
        v46 = (v45 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
        v47 = swift_allocObject();
        v72 = v38;
        v48 = v47;
        v49 = *(v44 + 32);
        v49(v47 + v45, v7, v43);
        *(v48 + v46) = v80;
        type metadata accessor for TTRRemindersListImportedContent();
        swift_unknownObjectRetain();
        dispatch thunk of Promise.then<A>(on:closure:)();

        v72(v7, v78, v43);
        v14 = v43;
        ObjectType = swift_allocObject();
        v49(ObjectType + v45, v7, v43);
        v50 = zalgo.getter();
        dispatch thunk of Promise.error(on:closure:)();

        Promise.errorAsNil()();

        v20 = &v83;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v14 = v62;
        }

        a1 = v75 + 1;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        swift_unknownObjectRelease();

        a2 = v78;
        (*v56)(v78, v14);
        v19 = v76;
        v22 = v71;
        v33 = v59;
        v30 = v58;
        if (v63 == a1)
        {
          v51 = v83;
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      swift_once();
    }

    v51 = v19;
LABEL_24:

    sub_100058000(&qword_100782800, &qword_10063E570);
    v82 = v51;
    sub_100058000(&qword_100782808, &qword_10063E578);
    sub_10000E188(&qword_100782810, &qword_100782808, &qword_10063E578, &protocol conformance descriptor for [A]);
    static Promise.all<A>(_:)();

    v52 = zalgoIfMain.getter();
    *(swift_allocObject() + 16) = v33;
    dispatch thunk of Promise.then<A>(on:closure:)();

LABEL_34:
  }

  return v19;
}

uint64_t sub_100409748(uint64_t a1, uint64_t (*a2)(uint64_t *, uint64_t, __n128), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for TTRRemindersListViewModel.Item();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v20 = a1;
  a2(&v20, a4, v12);
  (*(v10 + 16))(&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v9);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  (*(v10 + 32))(v14 + v13, &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v15 = zalgo.getter();
  type metadata accessor for TTRRemindersListImportedContent();
  dispatch thunk of Promise.then<A>(on:closure:)();

  v16 = zalgo.getter();
  dispatch thunk of Promise.error(on:closure:)();

  v17 = Promise.errorAsNil()();

  return v17;
}

void sub_100409944(uint64_t a1, uint64_t a2, uint64_t (*a3)(id), uint64_t a4, uint64_t (*a5)(id *, id), uint64_t a6)
{
  v7 = v6;
  v120 = a5;
  v121 = a6;
  v116 = a4;
  v117 = a3;
  v10 = type metadata accessor for TTRRemindersListReminderInsertionPosition();
  v110 = *(v10 - 8);
  v111 = v10;
  __chkstk_darwin(v10);
  v109 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v113 = type metadata accessor for TTRRemindersListBatchReminderCreationParams();
  v108 = *(v113 - 8);
  __chkstk_darwin(v113);
  v107 = (&v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_100058000(&qword_10076C6F0, &unk_100630590);
  __chkstk_darwin(v13 - 8);
  v112 = &v101 - v14;
  v15 = type metadata accessor for TTRRemindersListTargetContainer();
  v115 = *(v15 - 8);
  __chkstk_darwin(v15);
  v123 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TTRRemindersListReminderActionTarget(0);
  __chkstk_darwin(v17 - 8);
  v19 = (&v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v114 = &v101 - v21;
  v22 = sub_100058000(&qword_10076C700, &qword_100634E00);
  __chkstk_darwin(v22 - 8);
  v24 = &v101 - v23;
  v122 = sub_100058000(&unk_100775620, &unk_1006305B0);
  v124 = *(v122 - 8);
  __chkstk_darwin(v122);
  v106 = &v101 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v125 = &v101 - v27;
  v28 = sub_100058000(&qword_10076E910, &qword_100631E18);
  __chkstk_darwin(v28 - 8);
  v30 = &v101 - v29;
  v31 = type metadata accessor for TTRRemindersListMatchedAttributeValue(0);
  v128 = *(v31 - 8);
  __chkstk_darwin(v31);
  v118 = &v101 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = v32;
  __chkstk_darwin(v33);
  v126 = &v101 - v34;
  v35 = sub_10011667C(a1, a2);
  if (!v35)
  {
    return;
  }

  v127 = v35;
  v105 = v15;
  v36 = v6[2];
  v37 = v7[3];
  ObjectType = swift_getObjectType();
  v39 = *(v37 + 512);
  v103 = ObjectType;
  v104 = v36;
  v39(&v136, a1, a2);
  if (!v138)
  {

    sub_1000079B4(&v136, &qword_10076C6C8, &qword_100630560);
    return;
  }

  sub_100005FD0(&v136, v151);
  v40 = v152;
  v41 = v153;
  sub_10000C36C(v151, v152);
  (*(v41 + 32))(v40, v41);
  if ((*(v128 + 48))(v30, 1, v31) == 1)
  {

    v42 = &qword_10076E910;
    v43 = &qword_100631E18;
    v44 = v30;
LABEL_13:
    sub_1000079B4(v44, v42, v43);
LABEL_14:
    sub_100004758(v151);
    return;
  }

  v45 = v30;
  v46 = v126;
  sub_10040FBF8(v45, v126);
  v47 = v152;
  v48 = v153;
  sub_10000C36C(v151, v152);
  (*(v48 + 24))(v47, v48);
  v49 = v124;
  v50 = v122;
  if ((*(v124 + 48))(v24, 1, v122) == 1)
  {
    sub_10040FDB4(v46, type metadata accessor for TTRRemindersListMatchedAttributeValue);

    v42 = &qword_10076C700;
    v43 = &qword_100634E00;
LABEL_12:
    v44 = v24;
    goto LABEL_13;
  }

  (*(v49 + 32))(v125, v24, v50);
  v51 = v117(v127);
  v52 = v51;
  v53 = v51 >> 62;
  if (!(v51 >> 62))
  {
    v54 = v123;
    if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

LABEL_33:

    (*(v124 + 8))(v125, v50);
    sub_10040FDB4(v126, type metadata accessor for TTRRemindersListMatchedAttributeValue);
    goto LABEL_14;
  }

  v79 = _CocoaArrayWrapper.endIndex.getter();
  v54 = v123;
  if (!v79)
  {
    goto LABEL_33;
  }

LABEL_10:
  v101 = v53;
  v102 = v52;
  v55 = v152;
  v56 = v153;
  sub_10000C36C(v151, v152);
  v57 = *(v56 + 16);
  v58 = v56;
  v59 = v114;
  v57(v55, v58);
  sub_100117584(v59, v19, type metadata accessor for TTRRemindersListReminderActionTarget);
  v24 = v112;
  sub_10057DDC0(v19, v112);
  v60 = v115;
  v61 = v105;
  if ((*(v115 + 48))(v24, 1, v105) == 1)
  {

    sub_10040FDB4(v59, type metadata accessor for TTRRemindersListReminderActionTarget);
    (*(v124 + 8))(v125, v122);
    sub_10040FDB4(v126, type metadata accessor for TTRRemindersListMatchedAttributeValue);
    v42 = &qword_10076C6F0;
    v43 = &unk_100630590;
    goto LABEL_12;
  }

  (*(v60 + 32))(v54, v24, v61);
  v62 = v7[4];
  v116 = v7[5];
  v117 = v62;
  v63 = v122;
  if (v101)
  {
    v64 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v64 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_getObjectType();
  v65 = v107;
  v66 = v108;
  *v107 = v64;
  (*(v66 + 104))(v65, enum case for TTRRemindersListBatchReminderCreationParams.count(_:), v113);
  (*(v124 + 16))(v106, v125, v63);
  v67 = v109;
  TTRRemindersListReminderInsertionPosition.init(relativePosition:)();
  (*(v37 + 408))(v103, v37);
  dispatch thunk of TTRRemindersListInteractorType.newReminderChangeItems(params:targetContainer:position:remindersBeingSaved:)();

  (*(v110 + 8))(v67, v111);
  (*(v66 + 8))(v65, v113);
  if (!v138)
  {

    (*(v115 + 8))(v54, v105);
    sub_10040FDB4(v114, type metadata accessor for TTRRemindersListReminderActionTarget);
    (*(v124 + 8))(v125, v63);
    sub_10040FDB4(v126, type metadata accessor for TTRRemindersListMatchedAttributeValue);
    v42 = &qword_10076C710;
    v43 = &unk_100647120;
    v44 = &v136;
    goto LABEL_13;
  }

  sub_100005FD0(&v136, v149);
  sub_10000C36C(v149, v150);
  v68 = dispatch thunk of TTRRemindersListChangeItemGroup.reminderChangeItems.getter();
  v69 = v68;
  if (v68 >> 62)
  {
    v70 = _CocoaArrayWrapper.endIndex.getter();
    if (v70)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v70 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v70)
    {
LABEL_22:
      v140 = _swiftEmptyArrayStorage;
      sub_1004A1EBC(0, v70 & ~(v70 >> 63), 0);
      if (v70 < 0)
      {
        goto LABEL_57;
      }

      v71 = 0;
      v72 = v140;
      v113 = xmmword_10062D420;
      do
      {
        if ((v69 & 0xC000000000000001) != 0)
        {
          v73 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v73 = *(v69 + 8 * v71 + 32);
        }

        v74 = v73;
        sub_100058000(&qword_10076B780, &qword_10062D7C0);
        v75 = swift_allocObject();
        *(v75 + 16) = v113;
        *(v75 + 32) = v74;
        v76 = v74;
        dispatch thunk of TTRRemindersListInteractorType.attributeEditor(for:)();

        v140 = v72;
        v78 = v72[2];
        v77 = v72[3];
        if (v78 >= v77 >> 1)
        {
          sub_1004A1EBC((v77 > 1), v78 + 1, 1);
          v72 = v140;
        }

        ++v71;
        v72[2] = v78 + 1;
        sub_100005FD0(&v136, &v72[5 * v78 + 4]);
      }

      while (v70 != v71);

      v54 = v123;
      goto LABEL_36;
    }
  }

  v72 = _swiftEmptyArrayStorage;
LABEL_36:
  v148 = _swiftEmptyArrayStorage;
  sub_10000C36C(v149, v150);
  v80 = dispatch thunk of TTRRemindersListChangeItemGroup.reminderChangeItems.getter();
  v81 = v102;
  v140 = v102;
  v142 = v72;
  v143 = 0;
  v144 = v80;
  v145 = 0;
  v146 = 0;
  v82 = v126;
  if (v101)
  {
    v83 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v83 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v84 = v125;
  if (!v83)
  {
    v86 = _swiftEmptyArrayStorage;
LABEL_54:
    v147 = 1;

    sub_100058000(&qword_100782800, &qword_10063E570);
    v136 = v86;
    sub_100058000(&qword_100782808, &qword_10063E578);
    sub_10000E188(&qword_100782810, &qword_100782808, &qword_10063E578, &protocol conformance descriptor for [A]);
    static Promise.all<A>(_:)();

    v99 = zalgoIfMain.getter();
    sub_10000B0D8(v149, &v136);
    v100 = swift_allocObject();
    sub_100005FD0(&v136, v100 + 16);
    dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v115 + 8))(v54, v105);
    sub_10040FDB4(v114, type metadata accessor for TTRRemindersListReminderActionTarget);
    (*(v124 + 8))(v84, v122);
    sub_10040FDB4(v82, type metadata accessor for TTRRemindersListMatchedAttributeValue);
    sub_100004758(v149);
    sub_100004758(v151);
    return;
  }

  v85 = 0;
  v116 = v81 & 0xFFFFFFFFFFFFFF8;
  v117 = (v81 & 0xC000000000000001);
  v86 = _swiftEmptyArrayStorage;
  *&v113 = v83;
  while (v117)
  {
    v88 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v89 = v85 + 1;
    if (__OFADD__(v85, 1))
    {
      goto LABEL_55;
    }

LABEL_44:
    v141 = v89;
    sub_100408D64(v87, &v133);
    if (!*(&v134 + 1))
    {

      sub_1000079B4(&v133, &qword_1007827F8, &qword_10063E568);
      v54 = v123;
      goto LABEL_54;
    }

    v139 = v135;
    v137 = v133;
    v138 = v134;
    v90 = *(&v135 + 1);
    v132 = v88;
    sub_100005FD0(&v137, &v133);
    *(&v135 + 1) = v90;
    sub_10000794C(&v133, v129, &qword_100782818, &unk_10063E580);
    v91 = v130;
    sub_100005FD0(v129, v131);
    v120(&v132, v127);
    v92 = zalgoIfMain.getter();
    sub_10000B0D8(v131, v129);
    v93 = v82;
    v94 = v118;
    sub_100117584(v93, v118, type metadata accessor for TTRRemindersListMatchedAttributeValue);
    v95 = (*(v128 + 80) + 56) & ~*(v128 + 80);
    v96 = swift_allocObject();
    sub_100005FD0(v129, v96 + 16);
    sub_10040FBF8(v94, v96 + v95);
    type metadata accessor for TTRRemindersListImportedContent();
    dispatch thunk of Promise.then<A>(on:closure:)();

    *(swift_allocObject() + 16) = v91;
    v97 = v91;
    v98 = zalgo.getter();
    dispatch thunk of Promise.error(on:closure:)();

    Promise.errorAsNil()();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v148 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v148 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    sub_100004758(v131);
    sub_1000079B4(&v133, &qword_100782818, &unk_10063E580);

    v86 = v148;
    ++v85;
    v54 = v123;
    v84 = v125;
    v82 = v126;
    v81 = v102;
    if (v89 == v113)
    {
      goto LABEL_54;
    }
  }

  if (v85 >= *(v116 + 16))
  {
    goto LABEL_56;
  }

  v88 = *(v81 + 8 * v85 + 32);
  v89 = v85 + 1;
  if (!__OFADD__(v85, 1))
  {
    goto LABEL_44;
  }

LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
}

uint64_t sub_10040A9D0()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_1007825B0);
  v1 = sub_100003E30(v0, qword_1007825B0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_10040AABC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = (a1 + 32);
    do
    {
      v5 = *v4;
      v4 += 2;
      v6 = v5;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v2;
    }

    while (v2);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_10040AB64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = *(v3 + 32);
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for TTRRemindersListViewModel.Item();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v8, a1, v11);
  (*(v12 + 56))(v8, 0, 1, v11);
  (*(v9 + 496))(&v21, v8, a2, ObjectType, v9);
  sub_1000079B4(v8, &qword_100772140, &qword_10062D9F0);
  if (v22)
  {
    sub_100005FD0(&v21, v24);
    v13 = v25;
    v14 = v26;
    sub_10000C36C(v24, v25);
    v15 = sub_10040AABC(*(v3 + 16));
    v16 = sub_1003E03D0(v15);

    (*(v14 + 32))(&v21, v16, v13, v14);

    v17 = v22;
    v18 = v23;
    sub_10000C36C(&v21, v22);
    v19 = (*(v18 + 16))(v17, v18) ^ 1;
    sub_100004758(&v21);
    sub_100004758(v24);
  }

  else
  {
    sub_1000079B4(&v21, &qword_100775A10, &qword_100636020);
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t sub_10040ADA0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 32);
  ObjectType = swift_getObjectType();
  (*(v4 + 504))(&v14, a1, ObjectType, v4);
  if (v15)
  {
    sub_100005FD0(&v14, v17);
    v6 = v18;
    v7 = v19;
    sub_10000C36C(v17, v18);
    v8 = sub_10040AABC(*(v2 + 16));
    v9 = sub_1003E03D0(v8);

    (*(v7 + 32))(&v14, v9, v6, v7);

    v10 = v15;
    v11 = v16;
    sub_10000C36C(&v14, v15);
    v12 = (*(v11 + 16))(v10, v11) ^ 1;
    sub_100004758(&v14);
    sub_100004758(v17);
  }

  else
  {
    sub_1000079B4(&v14, &qword_100775A10, &qword_100636020);
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_10040AEE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v16[-v7];
  v9 = *(v3 + 32);
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for TTRRemindersListViewModel.Item();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v8, a1, v11);
  (*(v12 + 56))(v8, 0, 1, v11);
  (*(v9 + 512))(&v17, v8, a2, ObjectType, v9);
  sub_1000079B4(v8, &qword_100772140, &qword_10062D9F0);
  if (v18)
  {
    sub_100005FD0(&v17, v19);
    v13 = sub_10040AABC(*(v3 + 16));
    __chkstk_darwin(v13);
    *&v16[-16] = v19;
    v14 = sub_10000C108(sub_10040FE68, &v16[-32], v13);

    sub_100004758(v19);
  }

  else
  {
    sub_1000079B4(&v17, &qword_10076C6C8, &qword_100630560);
    v14 = 0;
  }

  return v14 & 1;
}

void *sub_10040B0F4(unint64_t a1, void *a2)
{
  v133 = a2;
  v132 = a1;
  v121 = sub_100058000(&unk_1007818F0, &unk_10063E550);
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v119 = (&v101 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v130 = &v101 - v5;
  v112 = type metadata accessor for TTRRemindersListReminderInsertionPosition();
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v110 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&qword_10076C6F0, &unk_100630590);
  __chkstk_darwin(v7 - 8);
  v113 = &v101 - v8;
  v116 = type metadata accessor for TTRRemindersListTargetContainer();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v122 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRRemindersListReminderActionTarget(0);
  __chkstk_darwin(v10 - 8);
  v117 = (&v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v14 = &v101 - v13;
  v15 = sub_100058000(&qword_10076C700, &qword_100634E00);
  __chkstk_darwin(v15 - 8);
  v128 = &v101 - v16;
  v17 = sub_100058000(&unk_100775620, &unk_1006305B0);
  v131 = *(v17 - 8);
  __chkstk_darwin(v17);
  v109 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v127 = &v101 - v20;
  v21 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v21 - 8);
  v23 = &v101 - v22;
  v25 = v2[3];
  v24 = v2[4];
  v129 = v2;
  ObjectType = swift_getObjectType();
  v27 = type metadata accessor for TTRRemindersListViewModel.Item();
  v28 = *(v27 - 8);
  v29 = *(v28 + 16);
  v125 = v28 + 16;
  v124 = v29;
  v29(v23, v132, v27);
  v118 = v28;
  v30 = *(v28 + 56);
  v126 = v27;
  v105 = v28 + 56;
  v104 = v30;
  v30(v23, 0, 1, v27);
  v31 = *(v24 + 496);
  v107 = v25;
  v106 = ObjectType;
  v108 = v24;
  v31(&v139, v23, v133, ObjectType, v24);
  v103 = v23;
  sub_1000079B4(v23, &qword_100772140, &qword_10062D9F0);
  if (!v140)
  {
    sub_1000079B4(&v139, &qword_100775A10, &qword_100636020);
    return _swiftEmptyArrayStorage;
  }

  v123 = v17;
  v102 = v14;
  sub_100005FD0(&v139, &v142);
  v32 = v143;
  v33 = v144;
  sub_10000C36C(&v142, v143);
  v34 = v129[2];
  v35 = sub_10040AABC(v34);
  v36 = sub_1003E03D0(v35);

  (*(v33 + 32))(&v139, v36, v32, v33);

  v114 = v34;
  v37 = sub_10040AABC(v34);
  __chkstk_darwin(v37);
  *(&v101 - 2) = &v139;
  v38 = 0;
  v39 = sub_10007D6E8(sub_10040FD98, (&v101 - 4), v37);

  v40 = v39;
  v41 = v39 & 0xFFFFFFFFFFFFFF8;
  v42 = v39 >> 62;
  if (v42)
  {
    goto LABEL_76;
  }

  for (i = *(v41 + 16); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v44 = v128;
    if (!i)
    {

      goto LABEL_30;
    }

    v128 = v40;
    v45 = v140;
    v46 = v141;
    sub_10000C36C(&v139, v140);
    (*(v46 + 24))(v45, v46);
    v47 = v131;
    v48 = v123;
    if ((*(v131 + 48))(v44, 1, v123) == 1)
    {

      sub_1000079B4(v44, &qword_10076C700, &qword_100634E00);
      goto LABEL_30;
    }

    (*(v47 + 32))(v127, v44, v48);
    v40 = v128;
    if (v42)
    {
      v49 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v49 = *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v49)
    {
      v137 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      if (v49 < 0)
      {
        __break(1u);
        goto LABEL_78;
      }

      v50 = 0;
      do
      {
        if ((v40 & 0xC000000000000001) != 0)
        {
          v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v51 = *(v40 + 8 * v50 + 32);
        }

        v52 = v51;
        ++v50;
        v53 = *&v51[OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder_reminder];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v49 != v50);
    }

    v54 = v143;
    v55 = v144;
    sub_10000C36C(&v142, v143);
    v56 = v102;
    (*(v55 + 8))(v54, v55);
    v57 = v117;
    sub_100117584(v56, v117, type metadata accessor for TTRRemindersListReminderActionTarget);
    v58 = v113;
    sub_10057DDC0(v57, v113);
    v59 = v115;
    v60 = v116;
    if ((*(v115 + 48))(v58, 1, v116) == 1)
    {

      sub_1000079B4(v58, &qword_10076C6F0, &unk_100630590);
LABEL_29:
      sub_10040FDB4(v56, type metadata accessor for TTRRemindersListReminderActionTarget);
      (*(v131 + 8))(v127, v123);
      goto LABEL_30;
    }

    v117 = v38;
    v61 = v122;
    (*(v59 + 32))(v122, v58, v60);
    swift_getObjectType();
    v40 = v109;
    (*(v131 + 16))(v109, v127, v123);
    v62 = v110;
    TTRRemindersListReminderInsertionPosition.init(relativePosition:)();
    dispatch thunk of TTRRemindersListInteractorType.reminderChangeItems(forMoving:to:insertingAt:)();

    (*(v111 + 8))(v62, v112);
    if (!v136)
    {
      (*(v59 + 8))(v61, v60);

      sub_1000079B4(&v135, &qword_10076C710, &unk_100647120);
      v56 = v102;
      goto LABEL_29;
    }

    sub_100005FD0(&v135, &v137);
    sub_10000C36C(&v137, v138);
    v63 = dispatch thunk of TTRRemindersListChangeItemGroup.reminderChangeItems.getter();
    v23 = v63;
    v113 = v63 >> 62;
    if (!(v63 >> 62))
    {
      v42 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_24;
    }

LABEL_78:
    v42 = _CocoaArrayWrapper.endIndex.getter();
LABEL_24:
    v64 = v102;
    v65 = v123;
    v66 = v131;
    v67 = _swiftEmptyArrayStorage;
    if (!v42)
    {
      break;
    }

    *&v135 = _swiftEmptyArrayStorage;
    v64 = v42 & ~(v42 >> 63);

    sub_1004A1E7C(0, v64, 0);
    if (v42 < 0)
    {
      __break(1u);
LABEL_80:
      swift_once();
LABEL_64:
      v94 = type metadata accessor for Logger();
      sub_100003E30(v94, qword_1007825B0);

      v95 = v129;

      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        *v98 = 134218240;
        v99 = v95[2];

        *(v98 + 4) = v99;

        *(v98 + 12) = 2048;
        if (v113)
        {
          v100 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v100 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v98 + 14) = v100;

        _os_log_impl(&_mh_execute_header, v96, v97, "items count not matching reminderChangeItems count {items: %ld, reminderChangeItems: %ld}", v98, 0x16u);

        v65 = v123;
        v66 = v131;
      }

      else
      {

        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
      }

      (*(v115 + 8))(v122, v116);
      sub_10040FDB4(v64, type metadata accessor for TTRRemindersListReminderActionTarget);
      (*(v66 + 8))(v127, v65);
      sub_100004758(&v137);
LABEL_30:
      sub_100004758(&v139);
      sub_100004758(&v142);
      return _swiftEmptyArrayStorage;
    }

    v67 = v135;
    if (v113)
    {
      v68 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v68 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v71 = 0;
    v38 = v68 & ~(v68 >> 63);
    while (v38 != v71)
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v72 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v72 = *(v23 + 8 * v71 + 32);
      }

      v73 = v133 + v71;
      if (__OFADD__(v133, v71))
      {
        goto LABEL_75;
      }

      *&v135 = v67;
      v40 = v67[2];
      v74 = v67[3];
      if (v40 >= v74 >> 1)
      {
        v129 = v72;
        sub_1004A1E7C((v74 > 1), v40 + 1, 1);
        v72 = v129;
        v67 = v135;
      }

      ++v71;
      v67[2] = v40 + 1;
      v75 = &v67[2 * v40];
      v75[4] = v72;
      v75[5] = v73;
      if (v42 == v71)
      {

        v64 = v102;
        v65 = v123;
        v66 = v131;
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    ;
  }

LABEL_44:
  v76 = v103;
  v77 = v126;
  v124(v103, v132, v126);
  v104(v76, 0, 1, v77);
  v78 = sub_1003E0588(v67);

  v79 = (*(v108 + 392))(v76, v78, v106);

  sub_1000079B4(v76, &qword_100772140, &qword_10062D9F0);
  v129 = v79;
  v80 = *(v79 + 16);
  if (v113)
  {
    v81 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v81 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v80 != v81 || v80 != v49)
  {

    if (qword_1007672A8 != -1)
    {
      goto LABEL_80;
    }

    goto LABEL_64;
  }

  sub_10000C36C(&v137, v138);
  dispatch thunk of TTRRemindersListChangeItemGroup.save()();
  result = v129;
  v133 = v129[2];
  if (!v133)
  {

    v69 = _swiftEmptyArrayStorage;
    v82 = v122;
    goto LABEL_70;
  }

  v132 = v128 & 0xC000000000000001;
  v82 = v122;
  if ((v128 & 0xC000000000000001) != 0 || v133 <= *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v83 = 0;
    v69 = _swiftEmptyArrayStorage;
    v84 = v114;
    do
    {
      if (v132)
      {

        v85 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v86 = *(v128 + 8 * v83 + 32);

        v85 = v86;
        v82 = v122;
      }

      v87 = v85;
      v134 = v84;
      __chkstk_darwin(v85);
      *(&v101 - 2) = v88;
      sub_100058000(&qword_1007827E8, &qword_10063E560);
      sub_100003540(0, &qword_10076BAC0, UIDragItem_ptr);
      sub_10000E188(&qword_1007827F0, &qword_1007827E8, &qword_10063E560, &protocol conformance descriptor for [A]);
      v84 = v114;
      v89 = v117;
      Sequence.firstMap<A>(_:)();
      v117 = v89;

      if (v135)
      {
        v90 = *(v121 + 48);
        v91 = v119;
        *v119 = v135;
        v124(v91 + v90, v129 + ((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v83, v126);
        sub_100016588(v91, v130, &unk_1007818F0, &unk_10063E550);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v69 = sub_100547474(0, v69[2] + 1, 1, v69);
        }

        v93 = v69[2];
        v92 = v69[3];
        if (v93 >= v92 >> 1)
        {
          v69 = sub_100547474((v92 > 1), v93 + 1, 1, v69);
        }

        v69[2] = v93 + 1;
        sub_100016588(v130, v69 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v93, &unk_1007818F0, &unk_10063E550);
      }

      v83 = (v83 + 1);
    }

    while (v133 != v83);

    v64 = v102;
LABEL_70:

    (*(v115 + 8))(v82, v116);
    sub_10040FDB4(v64, type metadata accessor for TTRRemindersListReminderActionTarget);
    (*(v131 + 8))(v127, v123);
    sub_100004758(&v137);
    sub_100004758(&v139);
    sub_100004758(&v142);
    return v69;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10040C410(unint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a2[3];
  v7 = a2[4];
  sub_10000C36C(a2, v6);
  v8 = *(v7 + 8);
  v9 = v4;
  v10 = v8(v6, v7);
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v5 >= *(v10 + 16))
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_10000794C(v10 + 48 * v5 + 32, v12, &qword_100773348, &unk_100634F10);

  v11 = v13;
  sub_100004758(v12);
  if (v11 != 1)
  {

    v9 = 0;
  }

  *a3 = v9;
}

uint64_t sub_10040C504(uint64_t a1, void *a2)
{
  v101 = a2;
  v93 = type metadata accessor for REMHashtagLabelSpecifier();
  v91 = *(v93 - 8);
  __chkstk_darwin(v93);
  v95 = v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v92 = v86 - v5;
  v6 = type metadata accessor for DateComponents();
  v89 = *(v6 - 8);
  v90 = v6;
  __chkstk_darwin(v6);
  v86[1] = v7;
  v87 = v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v88 = v86 - v9;
  v10 = sub_100058000(&qword_10076E910, &qword_100631E18);
  __chkstk_darwin(v10 - 8);
  v97 = v86 - v11;
  v99 = type metadata accessor for TTRRemindersListMatchedAttributeValue(0);
  v96 = *(v99 - 8);
  __chkstk_darwin(v99);
  v94 = (v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v98 = v86 - v14;
  v15 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v15 - 8);
  v17 = v86 - v16;
  if (qword_1007672A8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100003E30(v18, qword_1007825B0);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 32) = 48;
  *(inited + 40) = 0xE100000000000000;
  v20 = type metadata accessor for TTRRemindersListViewModel.Item();
  sub_10040FBA0();
  *(inited + 48) = TTRTreeStorageItem.treeItemDescription.getter();
  *(inited + 56) = v21;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 49;
  *(inited + 120) = &type metadata for Int;
  v22 = v101;
  *(inited + 88) = 0xE100000000000000;
  *(inited + 96) = v22;
  v23 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70, &qword_10062FD60);
  swift_arrayDestroy();
  sub_10000FD44("Reminders List perform drop to match attributes {toMatch: (%@, %d)}", 67, 2, v23);

  v24 = v100;
  v25 = *(v100 + 32);
  ObjectType = swift_getObjectType();
  v27 = *(v20 - 8);
  (*(v27 + 16))(v17, a1, v20);
  (*(v27 + 56))(v17, 0, 1, v20);
  (*(v25 + 512))(&v102, v17, v22, ObjectType, v25);
  sub_1000079B4(v17, &qword_100772140, &qword_10062D9F0);
  if (!v104)
  {
    sub_1000079B4(&v102, &qword_10076C6C8, &qword_100630560);
    goto LABEL_7;
  }

  v28 = v24;
  sub_100005FD0(&v102, v109);
  v29 = v110;
  v30 = v111;
  sub_10000C36C(v109, v110);
  v31 = v97;
  (*(v30 + 32))(v29, v30);
  if ((*(v96 + 48))(v31, 1, v99) == 1)
  {
    sub_1000079B4(v31, &qword_10076E910, &qword_100631E18);
    sub_100004758(v109);
LABEL_7:
    v32 = 0;
    v33 = 0;
    v34 = 0;
LABEL_37:
    sub_1000301AC(v33, v34);
    return v32;
  }

  sub_10040FBF8(v31, v98);
  v35 = sub_10040AABC(*(v28 + 16));
  __chkstk_darwin(v35);
  v86[-2] = v109;
  v37 = sub_1004B6818(sub_1004105C8, &v86[-4], v36);
  v38 = v37;
  if (v37 >> 62)
  {
    v39 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v39 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v39)
  {
    *&v102 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v39 < 0)
    {
      __break(1u);
      goto LABEL_40;
    }

    v40 = 0;
    do
    {
      if ((v38 & 0xC000000000000001) != 0)
      {
        v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v41 = *(v38 + 8 * v40 + 32);
      }

      v42 = v41;
      ++v40;
      v43 = *&v41[OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder_reminder];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v39 != v40);
  }

  swift_getObjectType();
  dispatch thunk of TTRRemindersListInteractorType.attributeEditor(for:)();
  v44 = v94;
  sub_100117584(v98, v94, type metadata accessor for TTRRemindersListMatchedAttributeValue);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v46 = v95;
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {

      v62 = v88;
      v63 = v89;
      v64 = *(v89 + 32);
      v65 = v90;
      v64(v88, v44, v90);
      v101 = objc_opt_self();
      static TTRLocalizableStrings.UndoAction.dueDateChange.getter();
      v66 = String._bridgeToObjectiveC()();

      sub_10000B0D8(v108, v107);
      v67 = v87;
      (*(v63 + 16))(v87, v62, v65);
      v68 = (*(v63 + 80) + 56) & ~*(v63 + 80);
      v44 = swift_allocObject();
      sub_100005FD0(v107, (v44 + 2));
      v64(v44 + v68, v67, v65);
      v69 = swift_allocObject();
      *(v69 + 16) = sub_10040FD34;
      *(v69 + 24) = v44;
      v105 = sub_100068444;
      v106 = v69;
      *&v102 = _NSConcreteStackBlock;
      *(&v102 + 1) = 1107296256;
      v103 = sub_100026440;
      v104 = &unk_100726D10;
      v70 = _Block_copy(&v102);

      [v101 withActionName:v66 block:v70];
      _Block_release(v70);

      (*(v63 + 8))(v62, v65);
      sub_100004758(v108);
      sub_10040FDB4(v98, type metadata accessor for TTRRemindersListMatchedAttributeValue);
      LOBYTE(v66) = swift_isEscapingClosureAtFileLocation();

      if ((v66 & 1) == 0)
      {
        goto LABEL_30;
      }

      __break(1u);
LABEL_26:

      v71 = *v44;
      v72 = objc_opt_self();
      static TTRLocalizableStrings.UndoAction.customSmartListFilterChange.getter();
      v73 = String._bridgeToObjectiveC()();

      sub_10000B0D8(v108, v107);
      v74 = swift_allocObject();
      sub_100005FD0(v107, v74 + 16);
      *(v74 + 56) = v71;
      v75 = swift_allocObject();
      *(v75 + 16) = sub_10040FC74;
      *(v75 + 24) = v74;
      v105 = sub_100068444;
      v106 = v75;
      *&v102 = _NSConcreteStackBlock;
      *(&v102 + 1) = 1107296256;
      v103 = sub_100026440;
      v104 = &unk_100726C20;
      v76 = _Block_copy(&v102);
      v77 = v71;

      [v72 withActionName:v73 block:v76];

      _Block_release(v76);
      sub_100004758(v108);
      sub_10040FDB4(v98, type metadata accessor for TTRRemindersListMatchedAttributeValue);
      LOBYTE(v72) = swift_isEscapingClosureAtFileLocation();

      if (v72)
      {
        __break(1u);
        goto LABEL_28;
      }

LABEL_30:
      sub_100004758(v109);

      v33 = 0;
      v34 = 0;
      v32 = 1;
      goto LABEL_37;
    }

    v78 = *v44;
    v79 = objc_opt_self();
    static TTRLocalizableStrings.UndoAction.flaggedChange.getter();
    v80 = String._bridgeToObjectiveC()();

    sub_10000B0D8(v108, v107);
    v81 = swift_allocObject();
    sub_100005FD0(v107, v81 + 16);
    *(v81 + 56) = v78;
    v82 = swift_allocObject();
    *(v82 + 16) = sub_10040FCE8;
    *(v82 + 24) = v81;
    v105 = sub_100068444;
    v106 = v82;
    *&v102 = _NSConcreteStackBlock;
    *(&v102 + 1) = 1107296256;
    v103 = sub_100026440;
    v104 = &unk_100726C98;
    v83 = _Block_copy(&v102);

    [v79 withActionName:v80 block:v83];

    _Block_release(v83);
    sub_100004758(v108);
    sub_10040FDB4(v98, type metadata accessor for TTRRemindersListMatchedAttributeValue);
    LOBYTE(v79) = swift_isEscapingClosureAtFileLocation();

    if ((v79 & 1) == 0)
    {
      goto LABEL_30;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (EnumCaseMultiPayload == 2)
  {
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload != 3)
  {
LABEL_28:

LABEL_35:
    sub_100004758(v108);
    sub_10040FDB4(v98, type metadata accessor for TTRRemindersListMatchedAttributeValue);
    v61 = 0;
    v58 = 0;
    goto LABEL_36;
  }

  v47 = v91;
  v48 = v92;
  v49 = v44;
  v50 = v93;
  (*(v91 + 32))(v92, v49, v93);
  (*(v47 + 16))(v46, v48, v50);
  v51 = (*(v47 + 88))(v46, v50);
  if (v51 == enum case for REMHashtagLabelSpecifier.labels(_:))
  {

    (*(v47 + 96))(v46, v50);
    v52 = *v46;

    v53 = *(sub_100058000(&qword_10076B830, &qword_100630550) + 64);
    v54 = objc_opt_self();
    static TTRLocalizableStrings.UndoAction.hashtagChange.getter();
    v55 = String._bridgeToObjectiveC()();

    sub_10000B0D8(v108, v107);
    v56 = swift_allocObject();
    sub_100005FD0(v107, v56 + 16);
    *(v56 + 56) = v52;
    v57 = swift_allocObject();
    *(v57 + 16) = sub_10040FC5C;
    *(v57 + 24) = v56;
    v58 = v56;
    v105 = sub_100026410;
    v106 = v57;
    *&v102 = _NSConcreteStackBlock;
    *(&v102 + 1) = 1107296256;
    v103 = sub_100026440;
    v104 = &unk_100726BA8;
    v59 = _Block_copy(&v102);

    [v54 withActionName:v55 block:v59];
    _Block_release(v59);

    (*(v47 + 8))(v48, v93);
    sub_100004758(v108);
    sub_10040FDB4(v98, type metadata accessor for TTRRemindersListMatchedAttributeValue);
    LOBYTE(v55) = swift_isEscapingClosureAtFileLocation();

    if ((v55 & 1) == 0)
    {
      v60 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
      (*(*(v60 - 8) + 8))(&v95[v53], v60);
      v61 = sub_10040FC5C;
LABEL_36:
      sub_100004758(v109);
      v32 = 1;
      v34 = v58;
      v33 = v61;
      goto LABEL_37;
    }

    goto LABEL_41;
  }

  if (v51 == enum case for REMHashtagLabelSpecifier.allLabels(_:))
  {

    (*(v47 + 8))(v92, v50);
    goto LABEL_35;
  }

  v84 = v92;
  if (v51 == enum case for REMHashtagLabelSpecifier.noLabels(_:))
  {

    (*(v47 + 8))(v84, v50);
    goto LABEL_35;
  }

LABEL_42:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10040D518(void **a1, void *a2)
{
  v2 = *a1;
  v3 = a2[3];
  v4 = a2[4];
  sub_10000C36C(a2, v3);
  v9[3] = type metadata accessor for TTRIRemindersListDragReminder();
  v9[4] = &off_10072B5C0;
  v9[0] = v2;
  v5 = *(v4 + 8);
  v6 = v2;
  v7 = v5(v9, v3, v4);
  sub_100004758(v9);
  return v7 & 1;
}

uint64_t sub_10040D5C0(void *a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for TTRDateChangeType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C36C(a1, a1[3]);
  v9 = type metadata accessor for DateComponents();
  (*(*(v9 - 8) + 16))(v8, a2, v9);
  (*(v6 + 104))(v8, enum case for TTRDateChangeType.changeDateOnly(_:), v5);
  dispatch thunk of TTRRemindersListAttributeEditing.setDueDate(_:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10040D71C()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

BOOL sub_10040D880(uint64_t (*a1)(char *, uint64_t))
{
  v3 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v29 - v4;
  v6 = sub_100058000(&qword_10076C6F8, &qword_10063E530);
  __chkstk_darwin(v6 - 8);
  v8 = &v29 - v7;
  v9 = sub_100058000(&unk_100781910, &unk_1006305A0);
  __chkstk_darwin(v9);
  v11 = &v29 - v10;
  v12 = type metadata accessor for TTRRemindersListViewModel.Item();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10040F7A8(v8);
  v16 = sub_100058000(&qword_10076C708, &unk_1006305C0);
  if ((*(*(v16 - 8) + 48))(v8, 1, v16) == 1)
  {
    sub_1000079B4(v8, &qword_10076C6F8, &qword_10063E530);
    return 0;
  }

  else
  {
    v18 = *(v16 + 48);
    v30 = a1;
    v31 = v15;
    v29 = *&v8[v18];
    v19 = *(v9 + 48);
    v32 = v1;
    v20 = *(v13 + 32);
    v20(v11, v8, v12);
    *&v11[v19] = v29;
    v21 = v31;
    v22 = *&v11[*(v9 + 48)];
    v20(v31, v11, v12);
    v23 = v32;
    (*(v13 + 16))(v5, v21, v12);
    (*(v13 + 56))(v5, 0, 1, v12);
    v24 = v30(v5, v22);
    sub_1000079B4(v5, &qword_100772140, &qword_10062D9F0);
    if (v24)
    {
      v26 = sub_10040FF1C(*(v23 + 16), v24, v25);
      if (v26 >> 62)
      {
        v27 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v17 = v27 != 0;
    }

    else
    {
      v17 = 0;
    }

    (*(v13 + 8))(v21, v12);
  }

  return v17;
}

void *sub_10040DC4C()
{
  v1 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v24 - v2;
  v4 = sub_100058000(&qword_10076C6F8, &qword_10063E530);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_100058000(&unk_100781910, &unk_1006305A0);
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  v10 = type metadata accessor for TTRRemindersListViewModel.Item();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10040F7A8(v6);
  v14 = sub_100058000(&qword_10076C708, &unk_1006305C0);
  if ((*(*(v14 - 8) + 48))(v6, 1, v14) == 1)
  {
    sub_1000079B4(v6, &qword_10076C6F8, &qword_10063E530);
    return _swiftEmptyArrayStorage;
  }

  else
  {
    v24 = *&v6[*(v14 + 48)];
    v25 = v0;
    v16 = *(v7 + 48);
    v17 = v11;
    v18 = v13;
    v19 = *(v11 + 32);
    v19(v9, v6, v10);
    *&v9[v16] = v24;
    v20 = *&v9[*(v7 + 48)];
    v21 = v18;
    v19(v18, v9, v10);
    v22 = v25;
    (*(v17 + 16))(v3, v21, v10);
    (*(v17 + 56))(v3, 0, 1, v10);
    v23 = sub_100408EA4(v3, v20, sub_1004102A0, v22, sub_10041060C, 0);
    sub_1000079B4(v3, &qword_100772140, &qword_10062D9F0);
    (*(v17 + 8))(v21, v10);
    return v23;
  }
}

void *sub_10040DFA0()
{
  v0 = sub_100058000(&qword_10076C6F8, &qword_10063E530);
  __chkstk_darwin(v0 - 8);
  v2 = &v16 - v1;
  v3 = sub_100058000(&unk_100781910, &unk_1006305A0);
  __chkstk_darwin(v3);
  v5 = &v16 - v4;
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10040F7A8(v2);
  v10 = sub_100058000(&qword_10076C708, &unk_1006305C0);
  if ((*(*(v10 - 8) + 48))(v2, 1, v10) == 1)
  {
    sub_1000079B4(v2, &qword_10076C6F8, &qword_10063E530);
    return _swiftEmptyArrayStorage;
  }

  else
  {
    v17 = *&v2[*(v10 + 48)];
    v12 = *(v3 + 48);
    v13 = *(v7 + 32);
    v13(v5, v2, v6);
    *&v5[v12] = v17;
    v14 = *&v5[*(v3 + 48)];
    v13(v9, v5, v6);
    v15 = sub_10040B0F4(v9, v14);
    (*(v7 + 8))(v9, v6);
    return v15;
  }
}

uint64_t sub_10040E26C(uint64_t (*a1)(char *, uint64_t))
{
  v2 = sub_100058000(&qword_10076C6F8, &qword_10063E530);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_100058000(&unk_100781910, &unk_1006305A0);
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.Item();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10040F7A8(v4);
  v12 = sub_100058000(&qword_10076C708, &unk_1006305C0);
  if ((*(*(v12 - 8) + 48))(v4, 1, v12) == 1)
  {
    sub_1000079B4(v4, &qword_10076C6F8, &qword_10063E530);
    v13 = 0;
  }

  else
  {
    v18 = *&v4[*(v12 + 48)];
    v19 = a1;
    v14 = *(v5 + 48);
    v15 = *(v9 + 32);
    v15(v7, v4, v8);
    *&v7[v14] = v18;
    v16 = *&v7[*(v5 + 48)];
    v15(v11, v7, v8);
    v13 = v19(v11, v16);
    (*(v9 + 8))(v11, v8);
  }

  return v13 & 1;
}

BOOL sub_10040E4DC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100058000(&qword_100782820, &unk_10063E590);
  __chkstk_darwin(v4 - 8);
  v6 = &v19[-v5];
  v7 = sub_100058000(&qword_100782828, &qword_100647140);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19[-v9];
  v11 = *(v2 + 32);
  ObjectType = swift_getObjectType();
  (*(v11 + 304))(a1, ObjectType, v11);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000079B4(v6, &qword_100782820, &unk_10063E590);
    return 0;
  }

  else
  {
    v14 = (*(v8 + 32))(v10, v6, v7);
    v15 = *(v2 + 16);
    __chkstk_darwin(v14);
    *&v19[-16] = v10;

    v16 = sub_1004B6818(sub_1004105E4, &v19[-32], v15);
    if (v16 >> 62)
    {
      v17 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = v17 != 0;
    (*(v8 + 8))(v10, v7);
  }

  return v13;
}

BOOL sub_10040E740(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, uint64_t))
{
  v5 = v3;
  v8 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for TTRRemindersListViewModel.Item();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  v13 = a3(v10, a2);
  sub_1000079B4(v10, &qword_100772140, &qword_10062D9F0);
  if (!v13)
  {
    return 0;
  }

  v15 = sub_10040FF1C(*(v5 + 16), v13, v14);
  if (v15 >> 62)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v16 != 0;
}

void *sub_10040E8DC(uint64_t a1)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.Item();
  v4 = *(v3 - 8);
  v37 = v3;
  v38 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v36 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_100782820, &unk_10063E590);
  __chkstk_darwin(v6 - 8);
  v8 = &v32 - v7;
  v9 = sub_100058000(&qword_100782828, &qword_100647140);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v32 - v11;
  v13 = *(v1 + 56);
  v14 = *(v13 + 24);
  ObjectType = swift_getObjectType();
  v16 = *(v14 + 304);
  v39 = a1;
  v16(a1, ObjectType, v14);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    v17 = (*(v10 + 32))(v12, v8, v9);
    v18 = *(v1 + 16);
    __chkstk_darwin(v17);
    *(&v32 - 2) = v12;

    v19 = sub_1004B6818(sub_1004103E8, &v32 - 4, v18);
    if (v19 >> 62)
    {
      v30 = v19;
      v31 = _CocoaArrayWrapper.endIndex.getter();
      v19 = v30;
      if (v31)
      {
        goto LABEL_5;
      }
    }

    else if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:
      v35 = v19;
      __chkstk_darwin(v19);
      *(&v32 - 4) = sub_10040ED88;
      *(&v32 - 3) = 0;
      v20 = v39;
      *(&v32 - 2) = v12;
      *(&v32 - 1) = v20;
      sub_100398D20(sub_100410408, (&v32 - 6), v35);
      v22 = v21;
      sub_100058000(&qword_100782800, &qword_10063E570);
      v40 = v22;
      sub_100058000(&qword_100782808, &qword_10063E578);
      sub_10000E188(&qword_100782810, &qword_100782808, &qword_10063E578, &protocol conformance descriptor for [A]);
      v34 = static Promise.all<A>(_:)();

      v33 = zalgoIfMain.getter();
      v23 = v38;
      v24 = v36;
      v25 = v37;
      (*(v38 + 16))(v36, v39, v37);
      v26 = (*(v23 + 80) + 24) & ~*(v23 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = v13;
      (*(v23 + 32))(v27 + v26, v24, v25);

      v28 = v33;
      dispatch thunk of Promise.then<A>(on:closure:)();

      (*(v10 + 8))(v12, v9);
      return v35;
    }

    (*(v10 + 8))(v12, v9);
    return _swiftEmptyArrayStorage;
  }

  sub_1000079B4(v8, &qword_100782820, &unk_10063E590);
  return _swiftEmptyArrayStorage;
}

uint64_t sub_10040ED88(void **a1)
{
  v1 = *a1;
  type metadata accessor for TTRRemindersListImportedContent();
  v2 = [v1 itemProvider];
  sub_100058000(&qword_100782828, &qword_100647140);
  Either.left.getter();
  v3 = [v11 attachmentContext];

  if (v3 || (Either.right.getter(), v3 = [v11 attachmentContext], v11, v3))
  {

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  Either.left.getter();
  if (v11 && (v5 = REMReminder.canAddURL.getter(), v11, (v5 & 1) != 0))
  {
    if (!v4)
    {
LABEL_14:
      v8 = 2;
      goto LABEL_18;
    }
  }

  else
  {
    Either.right.getter();
    if (!v11)
    {
      v8 = v4;
      goto LABEL_18;
    }

    v7 = REMReminderChangeItem.canAddURL.getter();

    if ((v4 & 1) == 0)
    {
      if ((v7 & 1) == 0)
      {
        v8 = 0;
        goto LABEL_18;
      }

      goto LABEL_14;
    }

    if ((v7 & 1) == 0)
    {
      v8 = 1;
      goto LABEL_18;
    }
  }

  v8 = 3;
LABEL_18:
  v9 = sub_1005D8B40(v2, v8, v6);

  return v9;
}

uint64_t sub_10040EF20(uint64_t a1, uint64_t a2)
{
  v5 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v17[-v6];
  if (qword_1007672A8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003E30(v8, qword_1007825B0);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 32) = 48;
  *(inited + 40) = 0xE100000000000000;
  v10 = type metadata accessor for TTRRemindersListViewModel.Item();
  sub_10040FBA0();
  *(inited + 48) = TTRTreeStorageItem.treeItemDescription.getter();
  *(inited + 56) = v11;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 49;
  *(inited + 120) = &type metadata for Int;
  *(inited + 88) = 0xE100000000000000;
  *(inited + 96) = a2;
  v12 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70, &qword_10062FD60);
  swift_arrayDestroy();
  sub_10000FD44("Reminders List perform drop to match attributes {toMatch: (%@, %d)}", 67, 2, v12);

  v13 = *(v10 - 8);
  (*(v13 + 16))(v7, a1, v10);
  (*(v13 + 56))(v7, 0, 1, v10);
  sub_100409944(v7, a2, sub_100410610, v2, sub_10041060C, 0);
  v15 = v14;
  sub_1000079B4(v7, &qword_100772140, &qword_10062D9F0);
  return v15 & 1;
}

uint64_t sub_10040F1AC(void **a1, void *a2)
{
  v3 = *a1;
  type metadata accessor for TTRRemindersListImportedContent();
  v4 = [v3 itemProvider];
  v5 = [a2 account];
  v6 = [v5 capabilities];

  LODWORD(v5) = [v6 supportsAttachments];
  if (v5)
  {
    v8 = 15;
  }

  else
  {
    v8 = 14;
  }

  v9 = sub_1005D8B40(v4, v8, v7);

  return v9;
}

uint64_t sub_10040F270(id *a1)
{
  v1 = [*a1 itemProvider];
  sub_100058000(&qword_100782828, &qword_100647140);
  Either.left.getter();
  v2 = [v10 attachmentContext];

  if (v2 || (Either.right.getter(), v2 = [v10 attachmentContext], v10, v2))
  {

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  Either.left.getter();
  if (v10 && (v4 = REMReminder.canAddURL.getter(), v10, (v4 & 1) != 0))
  {
    if (!v3)
    {
LABEL_14:
      v7 = 2;
      goto LABEL_18;
    }
  }

  else
  {
    Either.right.getter();
    if (!v10)
    {
      v7 = v3;
      goto LABEL_18;
    }

    v6 = REMReminderChangeItem.canAddURL.getter();

    if ((v3 & 1) == 0)
    {
      if ((v6 & 1) == 0)
      {
        v7 = 0;
        goto LABEL_18;
      }

      goto LABEL_14;
    }

    if ((v6 & 1) == 0)
    {
      v7 = 1;
      goto LABEL_18;
    }
  }

  v7 = 3;
LABEL_18:
  v8 = sub_1005DB830(v1, v7, v5);

  return v8 & 1;
}

uint64_t sub_10040F3F4()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void *sub_10040F590(uint64_t a1, void *a2)
{
  v5 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = *v2;
  v9 = type metadata accessor for TTRRemindersListViewModel.Item();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v7, a1, v9);
  (*(v10 + 56))(v7, 0, 1, v9);
  v11 = sub_100408EA4(v7, a2, sub_100410610, v8, sub_10041060C, 0);
  sub_1000079B4(v7, &qword_100772140, &qword_10062D9F0);
  return v11;
}

uint64_t sub_10040F7A8@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.Item();
  v34 = *(v3 - 8);
  __chkstk_darwin(v3);
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&qword_1007827D0, &qword_10063E538);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - v6;
  v8 = sub_100058000(&qword_1007827D8, &qword_10063E540);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v11 - 8);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  v17 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  (*(v17 + 336))(ObjectType, v17);
  v19 = sub_100058000(&qword_1007827E0, &qword_10063E548);
  if ((*(*(v19 - 8) + 48))(v7, 1, v19) == 1)
  {
    sub_1000079B4(v7, &qword_1007827D0, &qword_10063E538);
LABEL_5:
    v24 = sub_100058000(&qword_10076C708, &unk_1006305C0);
    return (*(*(v24 - 8) + 56))(a1, 1, 1, v24);
  }

  v32 = a1;
  v20 = *&v7[*(v19 + 48)];
  v21 = *(v8 + 48);
  sub_100016588(v7, v10, &qword_100772140, &qword_10062D9F0);
  *&v10[v21] = v20;
  v22 = *&v10[*(v8 + 48)];
  sub_100016588(v10, v16, &qword_100772140, &qword_10062D9F0);
  sub_100016588(v16, v13, &qword_100772140, &qword_10062D9F0);
  v23 = v34;
  if ((*(v34 + 48))(v13, 1, v3) == 1)
  {
    sub_1000079B4(v13, &qword_100772140, &qword_10062D9F0);
    a1 = v32;
    goto LABEL_5;
  }

  v26 = *(v23 + 32);
  v27 = v33;
  v26(v33, v13, v3);
  v28 = sub_100058000(&qword_10076C708, &unk_1006305C0);
  v29 = *(v28 + 48);
  v30 = v32;
  v26(v32, v27, v3);
  *&v30[v29] = v22;
  return (*(*(v28 - 8) + 56))(v30, 0, 1, v28);
}

unint64_t sub_10040FBA0()
{
  result = qword_100775630;
  if (!qword_100775630)
  {
    type metadata accessor for TTRRemindersListViewModel.Item();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100775630);
  }

  return result;
}

uint64_t sub_10040FBF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListMatchedAttributeValue(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10040FC8C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v4 = v1[6];
  v3 = v1[7];
  v5 = v1[5];
  sub_10000C36C(v1 + 2, v5);
  return a1(v3, v5, v4);
}

uint64_t sub_10040FD34()
{
  v1 = *(type metadata accessor for DateComponents() - 8);
  v3 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));

  return sub_10040D5C0((v0 + 16), v3, v2);
}

uint64_t sub_10040FDB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_10040FE14@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result == *(v2 + 16))
  {
    v4 = result[1];
    result = v4;
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

void *sub_10040FF1C(unint64_t a1, void *a2, __n128 a3)
{
  v22 = a2;
  v21 = type metadata accessor for UTType();
  v4 = *(v21 - 8);
  __chkstk_darwin(v21);
  v20 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
LABEL_23:
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v7 = 0;
      v19 = (v4 + 1);
      v8 = &selRef_layoutIfNeeded;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v10 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_20:
            __break(1u);
            return v24;
          }
        }

        else
        {
          if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_23;
          }

          v9 = *(a1 + 8 * v7 + 32);
          v10 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_20;
          }
        }

        v11 = v8[343];
        v23 = v9;
        v12 = [v9 v11];
        v13 = [v22 account];
        v14 = [v13 capabilities];

        LODWORD(v13) = [v14 supportsAttachments];
        if (v13 && ((sub_100003540(0, &qword_10076FCB0, UIImage_ptr), ([v12 canLoadObjectOfClass:swift_getObjCClassFromMetadata()] & 1) != 0) || (v15 = v20, static UTType.image.getter(), UTType.identifier.getter(), (*v19)(v15, v21), v8 = &selRef_layoutIfNeeded, v16 = String._bridgeToObjectiveC()(), , v17 = objc_msgSend(v12, "hasItemConformingToTypeIdentifier:", v16), v16, (v17 & 1) != 0)) || (sub_100003540(0, &unk_1007755E0, NSURL_ptr), (objc_msgSend(v12, "canLoadObjectOfClass:", swift_getObjCClassFromMetadata()) & 1) != 0) || (sub_100003540(0, &qword_1007865E0, NSUserActivity_ptr), (objc_msgSend(v12, "canLoadObjectOfClass:", swift_getObjCClassFromMetadata()) & 1) != 0))
        {
        }

        else
        {
          sub_100003540(0, &qword_1007755F0, NSString_ptr);
          v4 = [v12 canLoadObjectOfClass:swift_getObjCClassFromMetadata()];

          if ((v4 & 1) == 0)
          {

            goto LABEL_14;
          }
        }

        v4 = &v24;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
LABEL_14:
        ++v7;
        if (v10 == v6)
        {
          return v24;
        }
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1004102C0(void **a1)
{
  v3 = *(type metadata accessor for TTRRemindersListViewModel.Item() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1001154CC(a1, v1 + v4, *v5, v5[1]);
}

void sub_10041035C(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRemindersListViewModel.Item() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1001159C0(a1, v4);
}

uint64_t sub_100410408@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100409748(*a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1004104C8()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.Item();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100410614()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100782830);
  v1 = sub_100003E30(v0, qword_100782830);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double sub_100410724(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100410784();
  }

  return result;
}

void sub_100410784()
{
  v1 = v0;
  v2 = sub_100058000(&qword_100782900, &qword_10063E658);
  v32 = *(v2 - 8);
  v33 = v2;
  __chkstk_darwin(v2);
  v34 = (&v28 - v3);
  v35 = type metadata accessor for TTRRemindersListReminderPostSaveMovement();
  v4 = *(v35 - 8);
  __chkstk_darwin(v35);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = TTRRemindersListEditingSessionProviderCapability.EditingSessionStatesConclusion.toBeDeleted.getter();
  v8 = v7;
  if (v7 >> 62)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  if (v9 < 1)
  {
    goto LABEL_44;
  }

  for (i = 0; i != v9; ++i)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v11 = *(v8 + 8 * i + 32);
    }

    sub_1004138C4(v11);
  }

LABEL_10:

  v12 = swift_allocObject();
  *(v12 + 16) = _swiftEmptyArrayStorage;
  v31 = (v12 + 16);
  v13 = TTRRemindersListEditingSessionProviderCapability.EditingSessionStatesConclusion.toBeSaved.getter();
  v14 = v13;
  if (v13 >> 62)
  {
    goto LABEL_40;
  }

  v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v29 = v0;
  v30 = v12;
  if (v15)
  {
    goto LABEL_12;
  }

  while (2)
  {

    v1 = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage >> 62)
    {
      goto LABEL_42;
    }

LABEL_23:
    v6 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_24:
    v18 = _swiftEmptyArrayStorage;
    if (!v6)
    {
LABEL_36:
      v23 = objc_opt_self();
      static TTRLocalizableStrings.UndoAction.addReminder.getter();
      v24 = String._bridgeToObjectiveC()();

      v25 = swift_allocObject();
      v25[2] = v29;
      v25[3] = v18;
      v25[4] = v30;
      v26 = swift_allocObject();
      *(v26 + 16) = sub_100415FCC;
      *(v26 + 24) = v25;
      aBlock[4] = sub_100026410;
      aBlock[5] = v26;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100026440;
      aBlock[3] = &unk_100726EF0;
      v27 = _Block_copy(aBlock);

      [v23 withActionName:v24 block:v27];

      _Block_release(v27);
      LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

      if ((v27 & 1) == 0)
      {
        return;
      }

      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    aBlock[0] = _swiftEmptyArrayStorage;
    v12 = v6 & ~(v6 >> 63);

    sub_1004A2570(0, v12, 0);
    if (v6 < 0)
    {
      goto LABEL_46;
    }

    v19 = 0;
    v18 = aBlock[0];
    v35 = v1 & 0xFFFFFFFFFFFFFF8;
    v14 = &qword_10063E658;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_32;
      }

      if ((v19 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v19 >= *(v35 + 16))
      {
        goto LABEL_39;
      }

LABEL_32:
      v20 = TTRRemindersListEditingSessionState.reminderChangeItem.getter();
      v4 = v34;
      TTRRemindersListEditingSessionState.reminderSaveOptions.getter();

      *v4 = v20;
      aBlock[0] = v18;
      v22 = v18[2];
      v21 = v18[3];
      v12 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        sub_1004A2570((v21 > 1), v22 + 1, 1);
        v4 = v34;
        v18 = aBlock[0];
      }

      ++v19;
      v18[2] = v12;
      sub_100016588(v4, v18 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v22, &qword_100782900, &qword_10063E658);
      if (v6 == v19)
      {

        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    v15 = _CocoaArrayWrapper.endIndex.getter();
    v29 = v1;
    v30 = v12;
    if (!v15)
    {
      continue;
    }

    break;
  }

LABEL_12:
  if (v15 >= 1)
  {
    v16 = 0;
    ++v4;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      sub_100413F3C(v6);
      (*v4)(v6, v35);
      if ((TTRRemindersListEditingSessionState.doNotSave.getter() & 1) == 0)
      {

        v17 = v31;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      ++v16;
    }

    while (v15 != v16);

    v1 = *v31;
    if (!(*v31 >> 62))
    {
      goto LABEL_23;
    }

LABEL_42:
    v6 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_24;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
}

uint64_t sub_100410DCC@<X0>(uint64_t a1@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 24);
      ObjectType = swift_getObjectType();
      v6 = sub_100415FE8(&qword_100769610, type metadata accessor for TTRReminderListEditingPresenter, &unk_100644258);
      (*(v4 + 48))(v3, v6, ObjectType, v4);
      swift_unknownObjectRelease();

      return swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v8 = type metadata accessor for TTRRemindersListUndoContext();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, 1, 1, v8);
}

uint64_t sub_100410F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v191 = a3;
  v186 = a2;
  v194 = a4;
  v170 = type metadata accessor for TTRRemindersListEditingSessionDisplayTargets();
  v169 = *(v170 - 8);
  __chkstk_darwin(v170);
  v168 = &v161 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = type metadata accessor for TTRRemindersListReminderInsertionPosition();
  v173 = *(v174 - 8);
  __chkstk_darwin(v174);
  v172 = &v161 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRRemindersListTargetContainer();
  v175 = *(v8 - 8);
  v176 = v8;
  __chkstk_darwin(v8);
  v171 = &v161 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&qword_1007761F8, &unk_100636770);
  __chkstk_darwin(v10 - 8);
  v180 = &v161 - v11;
  v12 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
  v178 = *(v12 - 8);
  v179 = v12;
  __chkstk_darwin(v12);
  v177 = &v161 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v187 = *(v14 - 8);
  v188 = v14;
  __chkstk_darwin(v14);
  v181 = &v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v182 = &v161 - v17;
  v18 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v184 = *(v18 - 8);
  v185 = v18;
  __chkstk_darwin(v18);
  v183 = &v161 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for TTRRemindersListViewModel.Item();
  v21 = *(v20 - 8);
  v192 = v20;
  v193 = v21;
  __chkstk_darwin(v20);
  v23 = &v161 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v161 - v25;
  __chkstk_darwin(v27);
  v29 = &v161 - v28;
  __chkstk_darwin(v30);
  v32 = &v161 - v31;
  __chkstk_darwin(v33);
  v189 = &v161 - v34;
  v36 = *(v4 + 48);
  v35 = *(v4 + 56);
  ObjectType = swift_getObjectType();
  if ((*(v35 + 440))(a1, ObjectType, v35))
  {
    if (qword_1007672B0 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_100003E30(v38, qword_100782830);
    v39 = v192;
    v40 = v193;
    v41 = v189;
    (*(v193 + 16))(v189, a1, v192);
    v42 = v191;

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v195 = swift_slowAlloc();
      *v45 = 136315394;
      *(v45 + 4) = sub_100004060(v186, v42, &v195);
      *(v45 + 12) = 2080;
      sub_100415FE8(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
      v46 = TTRTreeStorageItem.treeItemDescription.getter();
      v48 = v47;
      (*(v40 + 8))(v41, v39);
      v49 = sub_100004060(v46, v48, &v195);

      *(v45 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v43, v44, "Reminder Editing Session: Reusing existing session {acquirer: %s, item: %s}", v45, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v40 + 8))(v41, v39);
    }

    goto LABEL_12;
  }

  v163 = v32;
  v164 = v26;
  v167 = ObjectType;
  v189 = v36;
  v166 = v35;
  v165 = v4;
  v50 = v183;
  v51 = a1;
  TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
  v53 = v184;
  v52 = v185;
  v54 = (*(v184 + 88))(v50, v185);
  v55 = v52;
  if (v54 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:))
  {
    (*(v53 + 96))(v50, v52);
    v56 = v182;
    (*(v187 + 32))(v182, v50, v188);
    if (qword_1007672B0 != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    v58 = sub_100003E30(v57, qword_100782830);
    v59 = v192;
    v60 = v193;
    v61 = v29;
    v62 = v51;
    v184 = *(v193 + 16);
    v185 = v193 + 16;
    (v184)(v29, v51, v192);
    v63 = v191;

    v183 = v58;
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v181 = swift_slowAlloc();
      v195 = v181;
      *v66 = 136315394;
      *(v66 + 4) = sub_100004060(v186, v63, &v195);
      *(v66 + 12) = 2080;
      sub_100415FE8(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
      v67 = TTRTreeStorageItem.treeItemDescription.getter();
      v68 = v62;
      v70 = v69;
      (*(v60 + 8))(v61, v59);
      v71 = sub_100004060(v67, v70, &v195);

      *(v66 + 14) = v71;
      _os_log_impl(&_mh_execute_header, v64, v65, "Reminder Editing Session: Creating a session for existing reminder {acquirer: %s, item: %s}", v66, 0x16u);
      swift_arrayDestroy();

      v56 = v182;
    }

    else
    {
      v68 = v51;

      (*(v60 + 8))(v61, v59);
    }

    v82 = v59;
    v83 = v56;
    v84 = TTRRemindersListViewModel.ReminderID.objectID.getter();
    v85 = v166;
    v86 = (*(v166 + 256))(v84, v167, v166);

    if (v86)
    {
      swift_getObjectType();
      v87 = dispatch thunk of TTRRemindersListInteractorType.reminderChangeItem(forEditing:)();
      (v184)(v164, v68, v82);
      type metadata accessor for TTRRemindersListEditingSessionState();
      swift_allocObject();
      v88 = v87;
      TTRRemindersListEditingSessionState.init(item:reminderChangeItem:)();
      (*(v85 + 432))();

      (*(v187 + 8))(v83, v188);

LABEL_12:

      v72 = v194;
      TTRRemindersListEditingSessionProviderCapability.EditingSessionStateResult.init(sessionState:isExisting:)();

      v73 = type metadata accessor for TTRRemindersListEditingSessionProviderCapability.EditingSessionStateResult();
      return (*(*(v73 - 8) + 56))(v72, 0, 1, v73);
    }

    v105 = Logger.logObject.getter();
    v106 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      *v107 = 0;
      _os_log_impl(&_mh_execute_header, v105, v106, "Reminder Editing Session: Failed to create session; no REMReminder", v107, 2u);
    }

    (*(v187 + 8))(v182, v188);
    goto LABEL_45;
  }

  v75 = v188;
  if (v54 != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:))
  {
    if (v54 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:))
    {
      (*(v53 + 96))(v50, v55);
      (*(v187 + 32))(v181, v50, v75);
      v89 = v192;
      if (qword_1007672B0 != -1)
      {
        swift_once();
      }

      v90 = type metadata accessor for Logger();
      v91 = sub_100003E30(v90, qword_100782830);
      v92 = v193;
      v93 = v23;
      v94 = v23;
      v95 = a1;
      v183 = *(v193 + 16);
      v184 = v193 + 16;
      (v183)(v94, a1, v89);
      v96 = v191;

      v185 = v91;
      v97 = Logger.logObject.getter();
      v98 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        v195 = swift_slowAlloc();
        *v99 = 136315394;
        *(v99 + 4) = sub_100004060(v186, v96, &v195);
        *(v99 + 12) = 2080;
        sub_100415FE8(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
        v100 = TTRTreeStorageItem.treeItemDescription.getter();
        v101 = v95;
        v103 = v102;
        v191 = *(v193 + 8);
        v191(v93, v89);
        v104 = sub_100004060(v100, v103, &v195);
        v95 = v101;

        *(v99 + 14) = v104;
        _os_log_impl(&_mh_execute_header, v97, v98, "Reminder Editing Session: Creating a session for placeholderReminder {acquirer: %s, item: %s}", v99, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v191 = *(v92 + 8);
        v191(v93, v89);
      }

      v121 = v165;
      v122 = v177;
      v123 = v175;
      v124 = v166;
      v125 = *(v166 + 320);
      v162 = v95;
      v125(v95, v167, v166);
      v127 = v179;
      v126 = v180;
      v128 = v178;
      v129 = (*(v178 + 48))(v180, 1, v179);
      v130 = v176;
      if (v129 == 1)
      {
        sub_1000079B4(v126, &qword_1007761F8, &unk_100636770);
        v131 = Logger.logObject.getter();
        v132 = static os_log_type_t.fault.getter();
        v133 = os_log_type_enabled(v131, v132);
        v134 = v187;
        if (v133)
        {
          v135 = swift_slowAlloc();
          *v135 = 0;
          _os_log_impl(&_mh_execute_header, v131, v132, "Reminder Editing Session: Cannot create a session for placeholderReminder, no target list.", v135, 2u);
        }

        (*(v134 + 8))(v181, v188);
      }

      else
      {
        (*(v128 + 32))(v122, v126, v127);
        v186 = *(v121 + 40);
        v182 = swift_getObjectType();
        v136 = TTRRemindersListViewModel.ReminderID.objectID.getter();
        v137 = v122;
        v138 = v136;
        v139 = *(v128 + 16);
        v140 = v171;
        v139(v171, v137, v127);
        (*(v123 + 104))(v140, enum case for TTRRemindersListTargetContainer.targetList(_:), v130);
        v141 = v173;
        v142 = v172;
        v143 = v174;
        (*(v173 + 104))(v172, enum case for TTRRemindersListReminderInsertionPosition.afterAll(_:), v174);
        (*(v124 + 408))(v167, v124);
        v144 = TTRRemindersListInteractorType.newReminderChangeItem(objectID:title:targetContainer:position:remindersBeingSaved:)();

        (*(v141 + 8))(v142, v143);
        (*(v123 + 8))(v140, v176);
        if (v144)
        {
          v145 = v162;
          (v183)(v164, v162, v192);
          type metadata accessor for TTRRemindersListEditingSessionState();
          swift_allocObject();
          v146 = v144;
          TTRRemindersListEditingSessionState.init(item:reminderChangeItem:)();
          v147 = v166;
          v148 = v167;
          (*(v166 + 432))();
          type metadata accessor for TTRReminderEditor();
          sub_100415FE8(&unk_1007756A0, &type metadata accessor for TTRReminderEditor, &protocol conformance descriptor for TTRReminderEditor);
          v149 = v146;

          TTRUndoableEditing.init(changeItem:undoManager:)();
          (*(v147 + 424))(v145, v195, v148, v147);

          (*(v178 + 8))(v177, v179);
          (*(v187 + 8))(v181, v188);
          if (swift_unknownObjectWeakLoadStrong())
          {
            sub_100058000(&qword_10076C6E0, &unk_100630570);
            v150 = v169;
            v151 = swift_allocObject();
            *(v151 + 16) = xmmword_10062D3F0;
            static TTRRemindersListEditingSessionDisplayTargets.cell.getter();
            static TTRRemindersListEditingSessionDisplayTargets.reminderEditingComponents.getter();
            v195 = v151;
            sub_100415FE8(&unk_1007756B0, &type metadata accessor for TTRRemindersListEditingSessionDisplayTargets, &protocol conformance descriptor for TTRRemindersListEditingSessionDisplayTargets);
            sub_100058000(&qword_10076C6E8, &unk_100635D60);
            sub_10000E188(&unk_1007756C0, &qword_10076C6E8, &unk_100635D60, &protocol conformance descriptor for [A]);
            v152 = v192;
            v153 = v168;
            v154 = v170;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            sub_100058000(&qword_100772150, &unk_100635D00);
            v155 = (*(v193 + 80) + 32) & ~*(v193 + 80);
            v156 = swift_allocObject();
            *(v156 + 16) = xmmword_10062D400;
            (v183)(v156 + v155, v162, v152);
            sub_1004F1000(v153, v156);
            swift_unknownObjectRelease();
            swift_setDeallocating();
            v191((v156 + v155), v152);
            swift_deallocClassInstance();
            (*(v150 + 8))(v153, v154);
          }

          goto LABEL_12;
        }

        v158 = Logger.logObject.getter();
        v159 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v158, v159))
        {
          v160 = swift_slowAlloc();
          *v160 = 0;
          _os_log_impl(&_mh_execute_header, v158, v159, "Reminder Editing Session: failed to create REMReminderChangeItem for placeholderReminder", v160, 2u);
        }

        (*(v178 + 8))(v177, v179);
        (*(v187 + 8))(v181, v188);
      }
    }

    else
    {
      v108 = v192;
      if (v54 != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }

      v109 = v191;
      v110 = v163;
      if (qword_1007672B0 != -1)
      {
        swift_once();
      }

      v111 = type metadata accessor for Logger();
      sub_100003E30(v111, qword_100782830);
      v112 = v193;
      (*(v193 + 16))(v110, a1, v108);

      v113 = Logger.logObject.getter();
      v114 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v113, v114))
      {
        v115 = swift_slowAlloc();
        v195 = swift_slowAlloc();
        *v115 = 136315394;
        *(v115 + 4) = sub_100004060(v186, v109, &v195);
        *(v115 + 12) = 2080;
        sub_100415FE8(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
        v116 = TTRTreeStorageItem.treeItemDescription.getter();
        v117 = v108;
        v119 = v118;
        (*(v112 + 8))(v110, v117);
        v120 = sub_100004060(v116, v119, &v195);

        *(v115 + 14) = v120;
        _os_log_impl(&_mh_execute_header, v113, v114, "Reminder Editing Session: Attempting to create a session for invalid item {acquirer: %s, item: %s}", v115, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        (*(v112 + 8))(v110, v108);
      }
    }

LABEL_45:
    v157 = type metadata accessor for TTRRemindersListEditingSessionProviderCapability.EditingSessionStateResult();
    return (*(*(v157 - 8) + 56))(v194, 1, 1, v157);
  }

  v76 = v55;
  if (qword_1007672B0 != -1)
  {
    swift_once();
  }

  v77 = type metadata accessor for Logger();
  sub_100003E30(v77, qword_100782830);
  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    *v80 = 0;
    _os_log_impl(&_mh_execute_header, v78, v79, "Reminder Editing Session: A session should always be available for uncommittedReminder", v80, 2u);
  }

  v81 = type metadata accessor for TTRRemindersListEditingSessionProviderCapability.EditingSessionStateResult();
  (*(*(v81 - 8) + 56))(v194, 1, 1, v81);
  return (*(v53 + 8))(v50, v76);
}

uint64_t sub_100412768()
{
  sub_10003B788(v0 + 16);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1004127DC()
{
  if (TTRRemindersListEditingSessionProviderCapability.scheduleConclusionForFinishedEditingSession(_:options:)())
  {
    TTRRemindersListConcreteEditingSession.editingSessionState.getter();
    if (TTRRemindersListEditingSessionState.isForNewReminder.getter())
    {
      type metadata accessor for RDIDispatchQueue();
      static RDIDispatchQueue.utilityQueue.getter();
      type metadata accessor for TTRRemindersInteraction();
      swift_allocObject();
      TTRRemindersInteraction.init(queue:)();
      v0 = TTRRemindersListEditingSessionState.reminderChangeItem.getter();
      v13 = sub_100003540(0, &qword_1007756E0, REMReminderChangeItem_ptr);
      v14 = &protocol witness table for REMReminderChangeItem;
      v12[0] = v0;
      TTRRemindersInteraction.donateReminderCreation(_:)();

      sub_100004758(v12);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v2 = Strong;
        v3 = TTRRemindersListEditingSessionState.reminderChangeItem.getter();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v4 = *(v2 + 24);
          ObjectType = swift_getObjectType();
          v6 = sub_100415FE8(&qword_100769610, type metadata accessor for TTRReminderListEditingPresenter, &unk_100644258);
          (*(v4 + 56))(v2, v6, v3, ObjectType, v4);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }
    }

    else
    {
      if (qword_1007672B0 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_100003E30(v7, qword_100782830);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "Reminder Editing Session: about to donate reminder update", v10, 2u);
      }

      type metadata accessor for RDIDispatchQueue();
      static RDIDispatchQueue.utilityQueue.getter();
      type metadata accessor for TTRRemindersInteraction();
      swift_allocObject();
      TTRRemindersInteraction.init(queue:)();
      v11 = TTRRemindersListEditingSessionState.reminderChangeItem.getter();
      v13 = sub_100003540(0, &qword_1007756E0, REMReminderChangeItem_ptr);
      v14 = &protocol witness table for REMReminderChangeItem;
      v12[0] = v11;
      TTRRemindersInteraction.donateReminderUpdate(_:)();

      sub_100004758(v12);
    }
  }
}

uint64_t sub_100412AC4(uint64_t a1, uint64_t a2)
{
  v26 = type metadata accessor for TTRRemindersListViewModel.Item();
  v4 = *(v26 - 8);
  __chkstk_darwin(v26);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1007672B0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003E30(v7, qword_100782830);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v25 = a2;
    v11 = v10;
    v27 = swift_slowAlloc();
    *v11 = 136315394;
    v12 = TTRRemindersListConcreteEditingSession.acquirerName.getter();
    v14 = sub_100004060(v12, v13, &v27);
    v24 = v2;
    v15 = v14;

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    TTRRemindersListConcreteEditingSession.item.getter();
    sub_100415FE8(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
    v16 = v26;
    v17 = TTRTreeStorageItem.treeItemDescription.getter();
    v19 = v18;
    (*(v4 + 8))(v6, v16);
    v20 = sub_100004060(v17, v19, &v27);

    *(v11 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "Reminder Editing Session: update item {acquirer: %s, item: %s}", v11, 0x16u);
    swift_arrayDestroy();

    a2 = v25;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100058000(&qword_100772150, &unk_100635D00);
    v22 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_10062D400;
    TTRRemindersListConcreteEditingSession.item.getter();
    sub_1004F1000(a2, v23);
    swift_unknownObjectRelease();
    swift_setDeallocating();
    (*(v4 + 8))(v23 + v22, v26);
    return swift_deallocClassInstance();
  }

  return result;
}

uint64_t sub_100412E0C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100058000(&qword_100782918, &qword_10063E660);
  __chkstk_darwin(v3);
  v5 = &v26[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = (&v26[-1] - v7);
  __chkstk_darwin(v9);
  v11 = (&v26[-1] - v10);
  if (TTRRemindersListEditingSessionProviderCapability.prepareToForceSave(_:isAsynchronous:)())
  {
    v12 = TTRRemindersListConcreteEditingSession.editingSessionState.getter();
    sub_100413124(v11 + *(v3 + 48), v12);
    *v11 = v13;
    if (TTRRemindersListEditingSessionState.isForNewReminder.getter())
    {
      sub_10000794C(v11, v8, &qword_100782918, &qword_10063E660);
      v14 = *v8;
      v15 = *(v3 + 48);
      if (*v8)
      {
        v16 = type metadata accessor for TTRRemindersListReminderPostSaveMovement();
        (*(*(v16 - 8) + 8))(v8 + v15, v16);
        type metadata accessor for RDIDispatchQueue();
        static RDIDispatchQueue.utilityQueue.getter();
        type metadata accessor for TTRRemindersInteraction();
        swift_allocObject();
        TTRRemindersInteraction.init(queue:)();
        v26[3] = sub_100003540(0, &qword_10076BB00, REMReminder_ptr);
        v26[4] = &protocol witness table for REMReminder;
        v26[0] = v14;
        v17 = v14;
        TTRRemindersInteraction.donateReminderCreation(_:)();

        sub_100004758(v26);
      }

      else
      {

        v21 = type metadata accessor for TTRRemindersListReminderPostSaveMovement();
        (*(*(v21 - 8) + 8))(v8 + v15, v21);
      }
    }

    else
    {
    }

    sub_100016588(v11, v5, &qword_100782918, &qword_10063E660);
    v20 = *v5;
    v22 = *(v3 + 48);
    v23 = type metadata accessor for TTRRemindersListReminderPostSaveMovement();
    (*(*(v23 - 8) + 32))(a1, &v5[v22], v23);
  }

  else
  {
    v18 = enum case for TTRRemindersListReminderPostSaveMovement.stayInList(_:);
    v19 = type metadata accessor for TTRRemindersListReminderPostSaveMovement();
    (*(*(v19 - 8) + 104))(a1, v18, v19);
    return 0;
  }

  return v20;
}

void sub_100413124(uint64_t a1, uint64_t a2)
{
  sub_100413F3C(a1);
  v10 = 0;
  v4 = objc_opt_self();
  static TTRLocalizableStrings.UndoAction.addReminder.getter();
  v5 = String._bridgeToObjectiveC()();

  v6 = swift_allocObject();
  v6[2] = &v10;
  v6[3] = v2;
  v6[4] = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1004161BC;
  *(v7 + 24) = v6;
  aBlock[4] = sub_100068444;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026440;
  aBlock[3] = &unk_100727120;
  v8 = _Block_copy(aBlock);

  [v4 withActionName:v5 block:v8];

  _Block_release(v8);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    sub_100415190(a2);
  }
}

uint64_t sub_1004132E4(uint64_t a1, uint64_t a2)
{
  v3 = sub_100058000(&qword_100782908, &unk_100644310);
  __chkstk_darwin(v3);
  v5 = &v24[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v24[-1] - v7;
  __chkstk_darwin(v9);
  v11 = &v24[-1] - v10;
  if (TTRRemindersListEditingSessionProviderCapability.prepareToForceSave(_:isAsynchronous:)())
  {
    v12 = TTRRemindersListConcreteEditingSession.editingSessionState.getter();
    v13 = &v11[*(v3 + 48)];
    *v13 = sub_100413620(v11, v12);
    v13[1] = v14;
    if (TTRRemindersListEditingSessionState.isForNewReminder.getter())
    {
      sub_10000794C(v11, v8, &qword_100782908, &unk_100644310);
      v15 = *&v8[*(v3 + 48)];

      v16 = type metadata accessor for TTRRemindersListReminderPostSaveMovement();
      (*(*(v16 - 8) + 8))(v8, v16);
      if (v15)
      {
        type metadata accessor for RDIDispatchQueue();
        static RDIDispatchQueue.utilityQueue.getter();
        type metadata accessor for TTRRemindersInteraction();
        swift_allocObject();
        TTRRemindersInteraction.init(queue:)();
        v24[3] = sub_100003540(0, &qword_1007756E0, REMReminderChangeItem_ptr);
        v24[4] = &protocol witness table for REMReminderChangeItem;
        v24[0] = v15;
        v17 = v15;
        TTRRemindersInteraction.donateReminderCreation(_:)();

        sub_100004758(v24);
      }
    }

    else
    {
    }

    sub_100016588(v11, v5, &qword_100782908, &unk_100644310);
    v20 = *&v5[*(v3 + 48)];
    v21 = type metadata accessor for TTRRemindersListReminderPostSaveMovement();
    (*(*(v21 - 8) + 32))(a1, v5, v21);
  }

  else
  {
    v18 = enum case for TTRRemindersListReminderPostSaveMovement.stayInList(_:);
    v19 = type metadata accessor for TTRRemindersListReminderPostSaveMovement();
    (*(*(v19 - 8) + 104))(a1, v18, v19);
    return 0;
  }

  return v20;
}

id sub_100413620(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for TTRRemindersListReminderSaveOptions();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  v21 = &v20 - v11;
  sub_100413F3C(a1);
  v13 = TTRRemindersListEditingSessionState.reminderChangeItem.getter();
  TTRRemindersListEditingSessionState.reminderSaveOptions.getter();
  v14 = *(v7 + 16);
  v22 = *(v3 + 32);
  v14(v9, v12, v6);
  v15 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v16 = (v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  *(v17 + 24) = v22;
  (*(v7 + 32))(v17 + v15, v9, v6);
  *(v17 + v16) = v3;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = a2;
  sub_100058000(&qword_100775980, &qword_100635FA0);
  swift_allocObject();
  v18 = v13;
  swift_unknownObjectRetain();

  v23 = Future.init(_:)();
  sub_10000E188(&qword_100775990, &qword_100775980, &qword_100635FA0, &protocol conformance descriptor for Future<A, B>);
  Publisher<>.sinkNextOutput(_:)();
  (*(v7 + 8))(v21, v6);
  return v18;
}

void sub_1004138C4(void *a1)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v41 = *(v3 - 8);
  v42 = v3;
  __chkstk_darwin(v3);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  isEscapingClosureAtFileLocation = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRRemindersListViewModel.Item();
  v11 = *(v10 - 1);
  __chkstk_darwin(v10);
  v39 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v39 - v14;
  v16 = v1;
  TTRRemindersListEditingSessionProviderCapability.prepareToDelete(_:)();
  v40 = a1;
  TTRRemindersListEditingSessionState.item.getter();
  TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
  v17 = *(v11 + 8);
  v17(v15, v10);
  v18 = (*(isEscapingClosureAtFileLocation + 88))(v9, v6);
  if (v18 != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:))
  {
LABEL_5:
    if (v18 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:) || v18 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:))
    {
      (*(isEscapingClosureAtFileLocation + 8))(v9, v6);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v29 = v39;
        TTRRemindersListEditingSessionState.item.getter();
        v30 = TTRRemindersListEditingSessionState.registeredUndoForAddingReminder.getter();
        sub_1004EFB24(v29, v30 & 1);
        swift_unknownObjectRelease();
        v17(v29, v10);
      }
    }

    else if (v18 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
    {
      if (qword_1007672B0 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_100003E30(v31, qword_100782830);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "Reminder Editing Session: handleDeletion: invalid item type", v34, 2u);
      }
    }

    else
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }

    return;
  }

  (*(isEscapingClosureAtFileLocation + 96))(v9, v6);
  v20 = v41;
  v19 = v42;
  (*(v41 + 32))(v5, v9, v42);
  v21 = *(v1 + 56);
  ObjectType = swift_getObjectType();
  v23 = TTRRemindersListViewModel.ReminderID.objectID.getter();
  v10 = (*(v21 + 256))(v23, ObjectType, v21);

  if (v10)
  {
    v40 = objc_opt_self();
    static TTRLocalizableStrings.UndoAction.deleteReminder.getter();
    v17 = String._bridgeToObjectiveC()();

    v24 = swift_allocObject();
    *(v24 + 16) = v16;
    *(v24 + 24) = v10;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_100415FE0;
    *(v6 + 24) = v24;
    aBlock[4] = sub_100068444;
    aBlock[5] = v6;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100026440;
    aBlock[3] = &unk_100726FB8;
    v9 = v19;
    v25 = v5;
    v26 = _Block_copy(aBlock);

    v27 = v10;

    [v40 withActionName:v17 block:v26];
    _Block_release(v26);

    (*(v20 + 8))(v25, v9);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
    goto LABEL_5;
  }

  if (qword_1007672B0 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_100003E30(v35, qword_100782830);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "Reminder Editing Session: handleDeletion: missing REMReminder", v38, 2u);
  }

  (*(v20 + 8))(v5, v19);
}

void sub_100413F3C(uint64_t a2@<X8>)
{
  v3 = v2;
  v65 = a2;
  v4 = type metadata accessor for TTRRemindersListEditingSessionState.SaveState();
  v67 = *(v4 - 8);
  __chkstk_darwin(v4);
  v66 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for TTRRemindersListViewModel.Item();
  v6 = *(v69 - 8);
  __chkstk_darwin(v69);
  v68 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListEditingSessionProviderCapability.prepareToCommit(_:)();
  v8 = TTRRemindersListEditingSessionState.pendingMoveTargetList.getter();
  v64 = v4;
  if (v8)
  {
    v9 = v8;
    v63 = v3;
    if (qword_1007672B0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100003E30(v10, qword_100782830);

    v11 = v9;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v70[0] = v62;
      *v14 = 136315394;
      v15 = v68;
      TTRRemindersListEditingSessionState.item.getter();
      sub_100415FE8(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
      v16 = v6;
      v17 = v69;
      v18 = TTRTreeStorageItem.treeItemDescription.getter();
      v20 = v19;
      v21 = v17;
      v6 = v16;
      (*(v16 + 8))(v15, v21);
      v22 = sub_100004060(v18, v20, v70);

      *(v14 + 4) = v22;
      *(v14 + 12) = 2112;
      v23 = [v11 objectID];
      *(v14 + 14) = v23;
      v24 = v61;
      *v61 = v23;
      _os_log_impl(&_mh_execute_header, v12, v13, "Reminder Editing Session: moving to target list {item: %s, targetList: %@}", v14, 0x16u);
      sub_1000079B4(v24, &unk_10076DF80, &qword_10062F730);

      sub_100004758(v62);
    }

    v3 = v63;
    v4 = v64;
    v70[0] = _typeName(_:qualified:)();
    v70[1] = v25;
    v26._countAndFlagsBits = 0x73694C65766F6D2DLL;
    v26._object = 0xE900000000000074;
    String.append(_:)(v26);
    type metadata accessor for TTRRemindersListConcreteEditingSession();
    swift_allocObject();

    TTRRemindersListConcreteEditingSession.init(acquirerName:editingSessionState:isFormallyAcquired:)();
    TTRRemindersListConcreteEditingSession.attributeEditor.getter();
    sub_10000C36C(v70, v71);
    dispatch thunk of TTRRemindersListAttributeEditing.setList(_:)();

    sub_100004758(v70);
  }

  v27 = 0xD000000000000019;
  v28 = TTRRemindersListEditingSessionState.reminderChangeItem.getter();
  v29 = [v28 listID];

  if (v29)
  {

    v30 = *(v3 + 56);
    ObjectType = swift_getObjectType();
    v32 = TTRRemindersListEditingSessionState.reminderChangeItem.getter();
    v71 = sub_100003540(0, &qword_1007756E0, REMReminderChangeItem_ptr);
    v72 = &protocol witness table for REMReminderChangeItem;
    v70[0] = v32;
    v33 = v68;
    TTRRemindersListEditingSessionState.item.getter();
    LOBYTE(v32) = (*(v30 + 360))(v70, v33, ObjectType, v30);
    (*(v6 + 8))(v33, v69);
    sub_100004758(v70);
    if (v32)
    {
      v34 = enum case for TTRRemindersListReminderPostSaveMovement.stayInList(_:);
      v35 = type metadata accessor for TTRRemindersListReminderPostSaveMovement();
      (*(*(v35 - 8) + 104))(v65, v34, v35);
      goto LABEL_21;
    }

    v36 = "reminder has been deleted";
    v27 = 0xD000000000000026;
  }

  else
  {
    v36 = "ovider";
  }

  v37 = enum case for TTRRemindersListReminderPostSaveMovement.removedFromList(_:);
  v38 = type metadata accessor for TTRRemindersListReminderPostSaveMovement();
  (*(*(v38 - 8) + 104))(v65, v37, v38);
  if (TTRRemindersListEditingSessionState.isForNewReminder.getter())
  {
    if (qword_1007672B0 != -1)
    {
      swift_once();
    }

    v65 = v6;
    v39 = type metadata accessor for Logger();
    sub_100003E30(v39, qword_100782830);

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v63 = v3;
      v43 = v42;
      v62 = swift_slowAlloc();
      v70[0] = v62;
      *v43 = 136315394;
      v44 = v68;
      TTRRemindersListEditingSessionState.item.getter();
      sub_100415FE8(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
      v45 = v69;
      v46 = TTRTreeStorageItem.treeItemDescription.getter();
      v48 = v47;
      (*(v65 + 8))(v44, v45);
      v49 = sub_100004060(v46, v48, v70);

      *(v43 + 4) = v49;
      *(v43 + 12) = 2080;
      v50 = sub_100004060(v27, v36 | 0x8000000000000000, v70);

      *(v43 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v40, v41, "Discarding uncommitted reminder {item: %s, reason: %s}", v43, 0x16u);
      swift_arrayDestroy();

      v3 = v63;
    }

    else
    {
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    v4 = v64;
    if (Strong)
    {
      v52 = Strong;
      v53 = v68;
      TTRRemindersListEditingSessionState.item.getter();
      v54 = *(v52 + 40);
      v55 = swift_getObjectType();
      (*(v54 + 440))(v53, v55, v54);
      v56 = *(v52 + 40);
      v57 = swift_getObjectType();
      (*(v56 + 400))(v53, v57, v56);

      (*(v65 + 8))(v53, v69);
      swift_unknownObjectRelease();
    }
  }

  else
  {
  }

LABEL_21:
  (*(v67 + 104))(v66, enum case for TTRRemindersListEditingSessionState.SaveState.saving(_:), v4);
  TTRRemindersListEditingSessionState.saveState.setter();
  if (TTRRemindersListEditingSessionState.isForNewReminder.getter())
  {
    v58 = *(v3 + 56);
    v59 = swift_getObjectType();
    (*(v58 + 416))(v59, v58);
    swift_getObjectType();
    v60 = TTRRemindersListEditingSessionState.reminderChangeItem.getter();
    dispatch thunk of TTRRemindersListInteractorType.optimisticallyUpdateUpdateReminderIDOrdering(in:forReminderBeingSaved:)();
  }
}

double sub_10041488C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a3;

  dispatch thunk of TTRRemindersListInteractorType.save(_:completion:)();

  return result;
}

void sub_100414974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for TTRRemindersListViewModel.Item();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRRemindersListEditingSessionState.SaveState();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_19;
  }

  swift_beginAccess();
  v59 = *(a3 + 16);
  if (!(v59 >> 62))
  {
    v13 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_4;
    }

LABEL_30:

    v31 = *(a1 + 16);
    if (v31)
    {
LABEL_20:
      v66 = _swiftEmptyArrayStorage;
      sub_1004A1CD0(0, v31, 0);
      v32 = v66;
      v33 = a1 + 32;
      do
      {
        swift_getErrorValue();
        swift_errorRetain();
        v34 = Error.localizedDescription.getter();
        v36 = v35;

        v66 = v32;
        v38 = v32[2];
        v37 = v32[3];
        if (v38 >= v37 >> 1)
        {
          sub_1004A1CD0((v37 > 1), v38 + 1, 1);
          v32 = v66;
        }

        v32[2] = v38 + 1;
        v39 = &v32[2 * v38];
        v39[4] = v34;
        v39[5] = v36;
        v33 += 8;
        --v31;
      }

      while (v31);
      v66 = v32;
      sub_100058000(&unk_100781F20, &unk_10062D7E0);
      sub_10000E188(&qword_100771E20, &unk_100781F20, &unk_10062D7E0, &protocol conformance descriptor for [A]);
      v40 = BidirectionalCollection<>.joined(separator:)();
      v42 = v41;

      if (qword_1007672B0 != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      sub_100003E30(v43, qword_100782830);

      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v66 = v47;
        *v46 = 136315138;
        v48 = sub_100004060(v40, v42, &v66);

        *(v46 + 4) = v48;
        _os_log_impl(&_mh_execute_header, v44, v45, "Reminder Editing Session: failed to save reminder(s) {errors: %s}", v46, 0xCu);
        sub_100004758(v47);

LABEL_34:

        goto LABEL_35;
      }

      goto LABEL_35;
    }

LABEL_31:
    if (qword_1007672B0 == -1)
    {
      goto LABEL_32;
    }

    goto LABEL_37;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  if (!v13)
  {
    goto LABEL_30;
  }

LABEL_4:
  if (v13 >= 1)
  {
    v53 = a1;
    v64 = v59 & 0xC000000000000001;
    v63 = enum case for TTRRemindersListEditingSessionState.SaveState.saved(_:);
    v62 = (v10 + 104);
    v56 = (v6 + 8);

    v14 = 0;
    v15 = &selRef_layoutIfNeeded;
    *&v16 = 136315138;
    v54 = v16;
    v65 = v13;
    v57 = v12;
    v58 = v9;
    do
    {
      if (v64)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      (*v62)(v12, v63, v9);
      TTRRemindersListEditingSessionState.saveState.setter();
      v17 = TTRRemindersListEditingSessionState.reminderChangeItem.getter();
      v18 = [v17 v15[422]];

      if ([v18 isSaved])
      {
      }

      else
      {
        v61 = v18;
        if (qword_1007672B0 != -1)
        {
          swift_once();
        }

        v19 = type metadata accessor for Logger();
        sub_100003E30(v19, qword_100782830);

        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v66 = v55;
          *v22 = v54;
          TTRRemindersListEditingSessionState.item.getter();
          sub_100415FE8(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
          v23 = TTRTreeStorageItem.treeItemDescription.getter();
          v24 = v5;
          v26 = v25;
          v27 = v56;
          (*v56)(v8, v24);
          v28 = sub_100004060(v23, v26, &v66);

          *(v22 + 4) = v28;
          _os_log_impl(&_mh_execute_header, v20, v21, "Reminder Editing Session: remove editing session state due to no-op'ed save {item: %s}", v22, 0xCu);
          sub_100004758(v55);
        }

        else
        {

          v24 = v5;
          v27 = v56;
        }

        v29 = *(Strong + 56);
        ObjectType = swift_getObjectType();
        TTRRemindersListEditingSessionState.item.getter();
        (*(v29 + 448))(v8, ObjectType, v29);

        (*v27)(v8, v24);

        v5 = v24;
        v12 = v57;
        v9 = v58;
        v15 = &selRef_layoutIfNeeded;
      }

      ++v14;
    }

    while (v65 != v14);

    a1 = v53;
LABEL_19:
    v31 = *(a1 + 16);
    if (v31)
    {
      goto LABEL_20;
    }

    goto LABEL_31;
  }

  __break(1u);
LABEL_37:
  swift_once();
LABEL_32:
  v49 = type metadata accessor for Logger();
  sub_100003E30(v49, qword_100782830);
  v44 = Logger.logObject.getter();
  v50 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v44, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&_mh_execute_header, v44, v50, "Reminder Editing Session: reminder(s) saved", v51, 2u);
    goto LABEL_34;
  }

LABEL_35:
}

void sub_100415190(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for TTRRemindersListViewModel.Item();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListEditingSessionState.SaveState();
  v8 = __chkstk_darwin(v7);
  (*(v10 + 104))(&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for TTRRemindersListEditingSessionState.SaveState.saved(_:), v8);
  TTRRemindersListEditingSessionState.saveState.setter();
  v11 = TTRRemindersListEditingSessionState.reminderChangeItem.getter();
  v12 = [v11 saveRequest];

  if ([v12 isSaved])
  {
  }

  else
  {
    if (qword_1007672B0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100003E30(v13, qword_100782830);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v28 = v4;
      v17 = v16;
      v18 = swift_slowAlloc();
      v27 = v2;
      v19 = v18;
      v29 = v18;
      *v17 = 136315138;
      TTRRemindersListEditingSessionState.item.getter();
      sub_100415FE8(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
      v20 = TTRTreeStorageItem.treeItemDescription.getter();
      v22 = v21;
      (*(v28 + 8))(v6, v3);
      v23 = sub_100004060(v20, v22, &v29);

      *(v17 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v14, v15, "Reminder Editing Session: remove editing session state due to no-op'ed save {item: %s}", v17, 0xCu);
      sub_100004758(v19);
      v2 = v27;

      v4 = v28;
    }

    v24 = *(v2 + 56);
    ObjectType = swift_getObjectType();
    TTRRemindersListEditingSessionState.item.getter();
    (*(v24 + 448))(v6, ObjectType, v24);

    (*(v4 + 8))(v6, v3);
  }
}

double sub_100415530(uint64_t a1, void *a2)
{
  swift_getObjectType();
  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10062D420;
  *(v3 + 32) = a2;
  v4 = a2;
  dispatch thunk of TTRDeleteRemindersInteractorCapability.delete(_:)();

  return result;
}

void sub_1004155D0(void **a1, uint64_t a2)
{
  v3 = type metadata accessor for TTRRemindersListReminderSaveOptions();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v7 = TTRRemindersListEditingSessionState.reminderChangeItem.getter();
  TTRRemindersListEditingSessionState.reminderSaveOptions.getter();
  v8 = dispatch thunk of TTRRemindersListInteractorType.saveAndFetchSynchronously(_:options:)();

  (*(v4 + 8))(v6, v3);
  v9 = *a1;
  *a1 = v8;
}

void sub_1004156F8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a8;
  v31 = a5;
  v32 = a7;
  v36 = a4;
  v37 = a3;
  v12 = type metadata accessor for TTRRemindersListReminderSaveOptions();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;

  v30 = [a3 objectID];
  v35 = objc_opt_self();
  static TTRLocalizableStrings.UndoAction.addReminder.getter();
  v33 = String._bridgeToObjectiveC()();

  (*(v13 + 16))(v15, a6, v12);
  v17 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v18 = (v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v22 = v31;
  *(v21 + 2) = v36;
  *(v21 + 3) = v22;
  *(v21 + 4) = v37;
  (*(v13 + 32))(&v21[v17], v15, v12);
  *&v21[v18] = v32;
  *&v21[v19] = v34;
  v23 = v30;
  *&v21[v20] = v30;
  v24 = &v21[(v20 + 15) & 0xFFFFFFFFFFFFFFF8];
  *v24 = sub_10012EC9C;
  v24[1] = v16;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1004160F0;
  *(v25 + 24) = v21;
  aBlock[4] = sub_100068444;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026440;
  aBlock[3] = &unk_100727080;
  v26 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v27 = v37;

  v28 = v23;

  v29 = v33;
  [v35 withActionName:v33 block:v26];

  _Block_release(v26);
  LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

  if (v26)
  {
    __break(1u);
  }
}

double sub_100415A34(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  swift_getObjectType();
  sub_100058000(&qword_100782910, &unk_100641CB0);
  v13 = (sub_100058000(&qword_100782900, &qword_10063E658) - 8);
  v14 = (*(*v13 + 80) + 32) & ~*(*v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10062D400;
  v16 = (v15 + v14);
  v17 = v13[14];
  *v16 = a3;
  v18 = type metadata accessor for TTRRemindersListReminderSaveOptions();
  (*(*(v18 - 8) + 16))(&v16[v17], a4, v18);
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = a6;
  v20[4] = a7;
  v20[5] = a8;
  v20[6] = a9;
  v21 = a3;

  v22 = a7;

  dispatch thunk of TTRRemindersListInteractorType.save(_:completion:)();

  return result;
}

uint64_t sub_100415C3C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void, void))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100415190(a3);
  }

  if (*(a1 + 16))
  {
    v9 = *(a1 + 32);
    swift_errorRetain();
    if (qword_1007672B0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100003E30(v10, qword_100782830);
    swift_errorRetain();
    v11 = a4;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = a5;
      v17 = swift_slowAlloc();
      v30 = v17;
      *v14 = 136315394;
      swift_getErrorValue();
      v18 = Error.rem_errorDescription.getter();
      v20 = sub_100004060(v18, v19, &v30);

      *(v14 + 4) = v20;
      *(v14 + 12) = 2112;
      *(v14 + 14) = v11;
      *v15 = v11;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v12, v13, "Reminder Editing Session: error saving reminder async {error: %s, objectID: %@}", v14, 0x16u);
      sub_1000079B4(v15, &unk_10076DF80, &qword_10062F730);

      sub_100004758(v17);
      a5 = v16;
    }

    swift_errorRetain();
    a5(v9, 1);
  }

  else
  {
    if (qword_1007672B0 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100003E30(v23, qword_100782830);
    v24 = a4;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      *(v27 + 4) = v24;
      *v28 = v24;
      v29 = v24;
      _os_log_impl(&_mh_execute_header, v25, v26, "Reminder Editing Session: reminder saved async {objectID: %@}", v27, 0xCu);
      sub_1000079B4(v28, &unk_10076DF80, &qword_10062F730);
    }

    return (a5)(v24, 0);
  }
}

uint64_t sub_100415FE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100416030(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for TTRRemindersListReminderSaveOptions() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[4];
  v11 = *(v2 + v7);
  v12 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1004156F8(a1, a2, v8, v9, v10, v2 + v6, v11, v12);
}

double sub_1004160F0()
{
  v1 = *(type metadata accessor for TTRRemindersListReminderSaveOptions() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_100415A34(*(v0 + 16), *(v0 + 24), *(v0 + 32), v0 + v2, *(v0 + v3), *(v0 + v4), *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1004161E0()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100782920);
  v1 = sub_100003E30(v0, qword_100782920);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004162A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v4[8] = swift_getObjectType();
  sub_100058000(&qword_10076BE10, &qword_10062FF90);
  v4[9] = swift_task_alloc();
  v5 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v4[12] = *(v6 + 64);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = type metadata accessor for MainActor();
  v4[16] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[17] = v8;
  v4[18] = v7;

  return _swift_task_switch(sub_1004163FC, v8, v7);
}

uint64_t sub_1004163FC()
{
  v49 = v0;
  if (qword_1007672B8 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[4];
  v5 = type metadata accessor for Logger();
  sub_100003E30(v5, qword_100782920);
  v46 = *(v3 + 16);
  v46(v1, v4, v2);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[14];
  v10 = v0[10];
  v11 = v0[11];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v12 = 136315650;
    v13 = _typeName(_:qualified:)();
    v15 = sub_100004060(v13, v14, &v48);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_100004060(0xD00000000000002CLL, 0x80000001006862F0, &v48);
    *(v12 + 22) = 2080;
    sub_10041B7A8(&qword_10076FDF0, &type metadata accessor for TTRRemindersListViewModel.ItemID, &protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v11 + 8))(v9, v10);
    v19 = sub_100004060(v16, v18, &v48);

    *(v12 + 24) = v19;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s: %s {itemID: %s}", v12, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v11 + 8))(v9, v10);
  }

  v20 = v0[7];
  v21 = OBJC_IVAR____TtC9Reminders37TTRIRemindersBoardScrollingController_pendingStartEditingTask;
  if (*(v20 + OBJC_IVAR____TtC9Reminders37TTRIRemindersBoardScrollingController_pendingStartEditingTask))
  {

    sub_100058000(&qword_10076B280, &qword_10062F770);
    Task.cancel()();
  }

  v41 = v0[7];
  v22 = v0[13];
  v24 = v0[10];
  v23 = v0[11];
  v39 = v24;
  v40 = v22;
  v25 = v0[9];
  v42 = v0[12];
  v43 = v25;
  v38 = v0[6];
  v44 = v0[5];
  v45 = v0[8];
  v26 = v0[4];
  *(v20 + v21) = 0;

  v27 = type metadata accessor for TaskPriority();
  (*(*(v27 - 8) + 56))(v25, 1, 1, v27);
  v46(v22, v26, v24);
  v47 = v41;

  v28 = static MainActor.shared.getter();
  v29 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v30 = (v42 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  *(v32 + 16) = v28;
  *(v32 + 24) = &protocol witness table for MainActor;
  (*(v23 + 32))(v32 + v29, v40, v39);
  *(v32 + v30) = v47;
  v33 = (v32 + v31);
  *v33 = v44;
  v33[1] = v38;
  *(v32 + ((v31 + 23) & 0xFFFFFFFFFFFFFFF8)) = v45;
  v34 = sub_10009EC28(0, 0, v43, &unk_10063E6F8, v32);
  v0[19] = v34;
  *(v20 + v21) = v34;

  v35 = swift_task_alloc();
  v0[20] = v35;
  v36 = sub_100058000(&qword_10076B280, &qword_10062F770);
  *v35 = v0;
  v35[1] = sub_1004168DC;

  return Task<>.value.getter(v0 + 2, v34, v36);
}

uint64_t sub_1004168DC()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return _swift_task_switch(sub_1004169FC, v3, v2);
}

uint64_t sub_1004169FC()
{

  v1 = v0[2];
  v2 = v0[3];

  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_100416AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a1;
  v8[5] = a4;
  v9 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v8[10] = v9;
  v8[11] = *(v9 - 8);
  v8[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[13] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[14] = v11;
  v8[15] = v10;

  return _swift_task_switch(sub_100416BA0, v11, v10);
}

uint64_t sub_100416BA0()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  (*(v2 + 16))(v1, v0[5], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for TTRRemindersListViewModel.ItemID.sectionID(_:))
  {
    v5 = swift_task_alloc();
    v0[16] = v5;
    *v5 = v0;
    v5[1] = sub_100416D88;
    v6 = v0[5];

    return sub_1004175C4(v6, 0, 1);
  }

  else if (v4 == enum case for TTRRemindersListViewModel.ItemID.reminderID(_:) || v4 == enum case for TTRRemindersListViewModel.ItemID.objectID(_:) || v4 == enum case for TTRRemindersListViewModel.ItemID.named(_:))
  {
    (*(v0[11] + 8))(v0[12], v0[10]);
    v10 = swift_task_alloc();
    v0[18] = v10;
    *v10 = v0;
    v10[1] = sub_1004171C4;
    v11 = v0[5];

    return sub_100418040(v11, 0, 1);
  }

  else
  {

    return _diagnoseUnexpectedEnumCase<A>(type:)();
  }
}

uint64_t sub_100416D88(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 136) = a1;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);

  return _swift_task_switch(sub_100416EB0, v4, v3);
}

uint64_t sub_100416EB0()
{
  v26 = v0;
  v1 = *(v0 + 136);

  if (v1)
  {
    v2 = *(v0 + 136);
    v3 = *(v0 + 88);
    v4 = *(v0 + 96);
    v5 = *(v0 + 80);
    v6 = sub_10041B7A8(&qword_1007829B0, type metadata accessor for TTRIBoardEditableColumnHeader, &unk_10064A40C);
    v7 = *(v3 + 8);
    v8 = v2;
    v7(v4, v5);
    v9 = *(v0 + 136);
    if ((static Task<>.isCancelled.getter() & 1) == 0)
    {
      v22 = *(v0 + 32);
      (*(v0 + 56))(v8, v6);

      *v22 = v2;
      v22[1] = v6;
      goto LABEL_12;
    }
  }

  else
  {
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
    v9 = 0;
    v6 = 0;
  }

  if (qword_1007672B8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100003E30(v10, qword_100782920);
  v11 = v9;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v14 = 136315906;
    v15 = _typeName(_:qualified:)();
    v17 = sub_100004060(v15, v16, &v25);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_100004060(0xD00000000000002CLL, 0x80000001006862F0, &v25);
    *(v14 + 22) = 2080;
    *(v0 + 16) = v9;
    *(v0 + 24) = v6;
    sub_100058000(&qword_10076B280, &qword_10062F770);
    v18 = Optional.descriptionOrNil.getter();
    v20 = sub_100004060(v18, v19, &v25);

    *(v14 + 24) = v20;
    *(v14 + 32) = 1024;
    *(v14 + 34) = static Task<>.isCancelled.getter() & 1;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s: %s - Unable to scroll to item {cell: %s, taskIsCancelled: %{BOOL}d", v14, 0x26u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v21 = *(v0 + 32);
  *v21 = 0;
  v21[1] = 0;
LABEL_12:

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1004171C4(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 152) = a1;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);

  return _swift_task_switch(sub_1004172EC, v4, v3);
}

uint64_t sub_1004172EC()
{
  v21 = v0;
  v1 = *(v0 + 152);

  if (v1)
  {
    v2 = *(v0 + 152);
    v3 = sub_10041B7A8(&qword_100778EC0, type metadata accessor for TTRIBoardReminderCell, &unk_100638800);
    v4 = v2;
    if ((static Task<>.isCancelled.getter() & 1) == 0)
    {
      v17 = *(v0 + 32);
      (*(v0 + 56))(v4, v3);

      *v17 = v2;
      v17[1] = v3;
      goto LABEL_12;
    }
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  if (qword_1007672B8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003E30(v5, qword_100782920);
  v6 = v2;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v9 = 136315906;
    v10 = _typeName(_:qualified:)();
    v12 = sub_100004060(v10, v11, &v20);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_100004060(0xD00000000000002CLL, 0x80000001006862F0, &v20);
    *(v9 + 22) = 2080;
    *(v0 + 16) = v2;
    *(v0 + 24) = v3;
    sub_100058000(&qword_10076B280, &qword_10062F770);
    v13 = Optional.descriptionOrNil.getter();
    v15 = sub_100004060(v13, v14, &v20);

    *(v9 + 24) = v15;
    *(v9 + 32) = 1024;
    *(v9 + 34) = static Task<>.isCancelled.getter() & 1;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s: %s - Unable to scroll to item {cell: %s, taskIsCancelled: %{BOOL}d", v9, 0x26u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v16 = *(v0 + 32);
  *v16 = 0;
  v16[1] = 0;
LABEL_12:

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1004175C4(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 160) = a3;
  *(v4 + 16) = a1;
  *(v4 + 40) = swift_getObjectType();
  v5 = type metadata accessor for IndexPath();
  *(v4 + 48) = v5;
  *(v4 + 56) = *(v5 - 8);
  *(v4 + 64) = swift_task_alloc();
  sub_100058000(&unk_100771B10, qword_10062E540);
  *(v4 + 72) = swift_task_alloc();
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  *(v4 + 80) = v6;
  *(v4 + 88) = *(v6 - 8);
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v4 + 112) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 120) = v8;
  *(v4 + 128) = v7;

  return _swift_task_switch(sub_10041776C, v8, v7);
}

uint64_t sub_10041776C()
{
  v40 = v0;
  if (qword_1007672B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 136) = sub_100003E30(v1, qword_100782920);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v4 = 136315394;
    v5 = _typeName(_:qualified:)();
    v7 = sub_100004060(v5, v6, &v39);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_100004060(0xD000000000000037, 0x8000000100686320, &v39);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s: %s", v4, 0x16u);
    swift_arrayDestroy();
  }

  v8 = *(v0 + 104);
  v9 = *(v0 + 80);
  v10 = *(v0 + 88);
  v11 = *(v10 + 16);
  v11(v8, *(v0 + 16), v9);
  if ((*(v10 + 88))(v8, v9) != enum case for TTRRemindersListViewModel.ItemID.sectionID(_:))
  {
    v17 = *(v0 + 104);
    v18 = *(v0 + 80);
    v19 = *(v0 + 88);

    v15 = *(v19 + 8);
    v15(v17, v18);
    goto LABEL_9;
  }

  v12 = *(v0 + 72);
  v13 = *(v0 + 48);
  v14 = *(v0 + 56);
  v15 = *(*(v0 + 88) + 8);
  v15(*(v0 + 104), *(v0 + 80));
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v16 = *(v0 + 72);

    sub_1000079B4(v16, &unk_100771B10, qword_10062E540);
LABEL_9:
    v11(*(v0 + 96), *(v0 + 16), *(v0 + 80));
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 96);
    v24 = *(v0 + 80);
    if (v22)
    {
      v25 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v25 = 136315394;
      v26 = _typeName(_:qualified:)();
      v28 = sub_100004060(v26, v27, &v39);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2080;
      sub_10041B7A8(&qword_10076FDF0, &type metadata accessor for TTRRemindersListViewModel.ItemID, &protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      v15(v23, v24);
      v32 = sub_100004060(v29, v31, &v39);

      *(v25 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v20, v21, "%s: columnID/indexPath not found {itemID: %s}", v25, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v15(v23, v24);
    }

    v33 = *(v0 + 8);

    return v33(0);
  }

  sub_1000079B4(*(v0 + 72), &unk_100771B10, qword_10062E540);
  v35 = swift_task_alloc();
  *(v0 + 144) = v35;
  *v35 = v0;
  v35[1] = sub_100417CAC;
  v36 = *(v0 + 24);
  v37 = *(v0 + 160);
  v38 = *(v0 + 16);

  return sub_100419210(v38, v36, v37);
}

uint64_t sub_100417CAC(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 152) = a1;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);

  return _swift_task_switch(sub_100417DD4, v4, v3);
}

uint64_t sub_100417DD4()
{
  v22 = v0;
  v1 = *(v0 + 152);

  if (v1)
  {
    v2 = *(v0 + 152);
    result = IndexPath.init(item:section:)();
    v4 = *&v2[OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_collectionView];
    if (!v4)
    {
      __break(1u);
      return result;
    }

    v6 = *(v0 + 56);
    v5 = *(v0 + 64);
    v7 = *(v0 + 48);
    v8 = UICollectionElementKindSectionHeader;
    v9 = v4;
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v11 = [v9 supplementaryViewForElementKind:v8 atIndexPath:isa];

    (*(v6 + 8))(v5, v7);
    if (v11)
    {
      type metadata accessor for TTRIBoardEditableColumnHeader(0);
      v12 = swift_dynamicCastClass();

      if (!v12)
      {
      }

      goto LABEL_11;
    }
  }

  else
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136315138;
      v17 = _typeName(_:qualified:)();
      v19 = sub_100004060(v17, v18, &v21);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "%s: unable to find column cell", v15, 0xCu);
      sub_100004758(v16);
    }
  }

  v12 = 0;
LABEL_11:

  v20 = *(v0 + 8);

  return v20(v12);
}

uint64_t sub_100418040(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 56) = a2;
  *(v4 + 64) = v3;
  *(v4 + 248) = a3;
  *(v4 + 48) = a1;
  *(v4 + 72) = swift_getObjectType();
  sub_100058000(&unk_100771B10, qword_10062E540);
  *(v4 + 80) = swift_task_alloc();
  v5 = type metadata accessor for IndexPath();
  *(v4 + 88) = v5;
  *(v4 + 96) = *(v5 - 8);
  *(v4 + 104) = swift_task_alloc();
  sub_100058000(&unk_10076BB50, &unk_10062DEA0);
  *(v4 + 112) = swift_task_alloc();
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  *(v4 + 120) = v6;
  *(v4 + 128) = *(v6 - 8);
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = type metadata accessor for MainActor();
  *(v4 + 160) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 168) = v8;
  *(v4 + 176) = v7;

  return _swift_task_switch(sub_100418224, v8, v7);
}

uint64_t sub_100418224()
{
  v43 = v0;
  if (qword_1007672B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 184) = sub_100003E30(v1, qword_100782920);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v4 = 136315394;
    v5 = _typeName(_:qualified:)();
    v7 = sub_100004060(v5, v6, &v42);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_100004060(0xD000000000000032, 0x80000001006862B0, &v42);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s: %s", v4, 0x16u);
    swift_arrayDestroy();
  }

  v8 = *(v0 + 120);
  v9 = *(v0 + 128);
  v10 = *(v0 + 112);
  TTRRemindersBoardMainDiffableDataSource.columnID(containingItemID:)();
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    v11 = *(v0 + 112);

    v12 = &unk_10076BB50;
    v13 = &unk_10062DEA0;
    v14 = v11;
LABEL_9:
    sub_1000079B4(v14, v12, v13);
    (*(*(v0 + 128) + 16))(*(v0 + 136), *(v0 + 48), *(v0 + 120));
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    v21 = os_log_type_enabled(v19, v20);
    v23 = *(v0 + 128);
    v22 = *(v0 + 136);
    v24 = *(v0 + 120);
    if (v21)
    {
      v25 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v25 = 136315394;
      v26 = _typeName(_:qualified:)();
      v28 = sub_100004060(v26, v27, &v42);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2080;
      sub_10041B7A8(&qword_10076FDF0, &type metadata accessor for TTRRemindersListViewModel.ItemID, &protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      (*(v23 + 8))(v22, v24);
      v32 = sub_100004060(v29, v31, &v42);

      *(v25 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v19, v20, "%s: columnID/indexPath not found {itemID: %s}", v25, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v23 + 8))(v22, v24);
    }

    v33 = *(v0 + 8);

    return v33(0);
  }

  v15 = *(v0 + 88);
  v16 = *(v0 + 96);
  v17 = *(v0 + 80);
  (*(*(v0 + 128) + 32))(*(v0 + 144), *(v0 + 112), *(v0 + 120));
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
  if ((*(v16 + 48))(v17, 1, v15) == 1)
  {
    v18 = *(v0 + 80);
    (*(*(v0 + 128) + 8))(*(v0 + 144), *(v0 + 120));

    v12 = &unk_100771B10;
    v13 = qword_10062E540;
    v14 = v18;
    goto LABEL_9;
  }

  v35 = *(v0 + 104);
  v36 = *(v0 + 64);
  (*(*(v0 + 96) + 32))(v35, *(v0 + 80), *(v0 + 88));
  v37 = [*(v36 + OBJC_IVAR____TtC9Reminders37TTRIRemindersBoardScrollingController_mainCollectionView) indexPathsForVisibleItems];
  v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *(v0 + 249) = sub_10010D158(v35, v38);

  v39 = swift_task_alloc();
  *(v0 + 192) = v39;
  *v39 = v0;
  v39[1] = sub_1004187D4;
  v40 = *(v0 + 144);
  v41 = *(v0 + 248);

  return sub_100419210(v40, 0, v41);
}

uint64_t sub_1004187D4(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 200) = a1;

  v3 = *(v2 + 176);
  v4 = *(v2 + 168);

  return _swift_task_switch(sub_1004188FC, v4, v3);
}

void sub_1004188FC()
{
  v31 = v0;
  v1 = *(v0 + 200);
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_scrollingController);
    *(v0 + 208) = v2;
    if (v2)
    {
      v3 = *(v0 + 249);
      v4 = *(v0 + 248);
      v2;
      *(v0 + 216) = static MainActor.shared.getter();
      if (v3 != 1 || v4 == 0)
      {
        v6 = swift_task_alloc();
        *(v0 + 232) = v6;
        *v6 = v0;
        v6[1] = sub_100418DF4;
        v8 = *(v0 + 48);
        v7 = *(v0 + 56);

        sub_1005E04D8(v8, v7);
      }

      else
      {
        v23 = swift_task_alloc();
        *(v0 + 224) = v23;
        *v23 = v0;
        v23[1] = sub_100418C44;
        v25 = *(v0 + 48);
        v24 = *(v0 + 56);

        sub_1005DF518(v25, v24);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 144);
    v14 = *(v0 + 120);
    v13 = *(v0 + 128);
    v15 = *(v0 + 96);
    v16 = *(v0 + 104);
    v17 = *(v0 + 88);
    if (v11)
    {
      v28 = *(v0 + 104);
      v29 = *(v0 + 120);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v30 = v19;
      *v18 = 136315138;
      v20 = _typeName(_:qualified:)();
      v27 = v12;
      v22 = sub_100004060(v20, v21, &v30);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v9, v10, "%s: unable to find column cell", v18, 0xCu);
      sub_100004758(v19);

      (*(v15 + 8))(v28, v17);
      (*(v13 + 8))(v27, v29);
    }

    else
    {

      (*(v15 + 8))(v16, v17);
      (*(v13 + 8))(v12, v14);
    }

    v26 = *(v0 + 8);

    v26(0);
  }
}