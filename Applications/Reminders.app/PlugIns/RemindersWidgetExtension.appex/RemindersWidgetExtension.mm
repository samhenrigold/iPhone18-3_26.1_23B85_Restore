uint64_t sub_100001D68@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v40 = type metadata accessor for TTRTodayComplicationWidgetProvider(0);
  __chkstk_darwin(v40);
  v2 = v39 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000C0FD8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004D04(&qword_1000ECB38, &qword_1000C3668);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v39 - v9;
  v11 = sub_100004D04(&qword_1000ECB40, &qword_1000C3670);
  v12 = *(v11 - 8);
  v42 = v11;
  v43 = v12;
  __chkstk_darwin(v11);
  v14 = v39 - v13;
  v15 = sub_100004D04(&qword_1000ECB48, &qword_1000C3678);
  v16 = *(v15 - 8);
  v44 = v15;
  v45 = v16;
  v17 = __chkstk_darwin(v15);
  v41 = v39 - v18;
  (*(v4 + 104))(v6, enum case for REMWidgetRefresh.WidgetKind.widgetForTodayList(_:), v3, v17);
  sub_1000C0FC8();
  (*(v4 + 8))(v6, v3);
  sub_10000538C(v39[1], v2, type metadata accessor for TTRTodayComplicationWidgetProvider);
  type metadata accessor for TTRTodayComplicationWidget.WidgetPlaceholderWrapper(0);
  sub_1000052EC(&qword_1000ECB50, type metadata accessor for TTRTodayComplicationWidget.WidgetPlaceholderWrapper, &unk_1000C36AC);
  sub_1000052EC(&qword_1000ECB58, type metadata accessor for TTRTodayComplicationWidgetProvider, &unk_1000C5648);
  sub_1000C23F8();
  sub_1000C19E8();
  v19 = sub_1000C1DB8();
  v21 = v20;
  v23 = v22;
  v24 = sub_100008478(&qword_1000ECB60, &qword_1000ECB38, &qword_1000C3668, &protocol conformance descriptor for StaticConfiguration<A>);
  sub_1000C1AC8();
  sub_10000537C(v19, v21, v23 & 1);

  (*(v8 + 8))(v10, v7);
  sub_1000C19E8();
  v25 = sub_1000C1DB8();
  v27 = v26;
  LOBYTE(v10) = v28;
  v47 = v7;
  v48 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v41;
  v30 = v42;
  sub_1000C1A88();
  sub_10000537C(v25, v27, v10 & 1);

  v32 = v30;
  (*(v43 + 8))(v14, v30);
  sub_100004D04(&qword_1000ECB68, &unk_1000C3680);
  v33 = sub_1000C2378();
  v34 = *(v33 - 8);
  v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1000C3590;
  (*(v34 + 104))(v36 + v35, enum case for WidgetFamily.accessoryInline(_:), v33);
  v47 = v32;
  v48 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v37 = v44;
  sub_1000C1AA8();

  return (*(v45 + 8))(v31, v37);
}

uint64_t sub_100002454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v3 = sub_100004D04(&qword_1000ECC00, &qword_1000C3700);
  __chkstk_darwin(v3);
  v5 = v20 - v4;
  v6 = sub_1000C1778();
  v20[0] = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s10WidgetViewVMa(0);
  __chkstk_darwin(v9);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100004D04(&qword_1000ECC08, &qword_1000C3708);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v20 - v14;
  v16 = *(a1 + *(type metadata accessor for TTRTodayComplicationWidgetViewModel(0) + 20));
  if (v16 == 2 || (v16 & 1) == 0)
  {
    sub_10000538C(a1, v11, type metadata accessor for TTRTodayComplicationWidgetViewModel);
    sub_10000538C(v11, v5, _s10WidgetViewVMa);
    swift_storeEnumTagMultiPayload();
    v19 = sub_1000052EC(&qword_1000ECC10, _s10WidgetViewVMa, &unk_1000C559C);
    v21 = v9;
    v22 = v19;
    swift_getOpaqueTypeConformance2();
    sub_1000C1AE8();
    return sub_100006718(v11, _s10WidgetViewVMa);
  }

  else
  {
    sub_10000538C(a1, v11, type metadata accessor for TTRTodayComplicationWidgetViewModel);
    sub_1000C1768();
    v17 = sub_1000052EC(&qword_1000ECC10, _s10WidgetViewVMa, &unk_1000C559C);
    sub_1000C1F48();
    (*(v20[0] + 8))(v8, v6);
    sub_100006718(v11, _s10WidgetViewVMa);
    (*(v13 + 16))(v5, v15, v12);
    swift_storeEnumTagMultiPayload();
    v21 = v9;
    v22 = v17;
    swift_getOpaqueTypeConformance2();
    sub_1000C1AE8();
    return (*(v13 + 8))(v15, v12);
  }
}

uint64_t sub_10000289C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v51 = type metadata accessor for TTRTodayComplicationWidget.InlineNoDueRemindersView(0);
  __chkstk_darwin(v51);
  v46 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_100004D04(&qword_1000ECD30, &qword_1000C37B8);
  __chkstk_darwin(v47);
  v50 = &v44 - v4;
  v49 = type metadata accessor for TTRTodayComplicationWidget.InlineOverdueRemindersCountView(0);
  __chkstk_darwin(v49);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004D04(&qword_1000ECD38, &unk_1000C37C0);
  __chkstk_darwin(v7);
  v9 = &v44 - v8;
  v10 = type metadata accessor for TTRTodayComplicationWidget.InlineReminderView(0);
  __chkstk_darwin(v10);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_100004D04(&qword_1000ECD18, &qword_1000C37B0);
  __chkstk_darwin(v53);
  v48 = &v44 - v13;
  v14 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
  __chkstk_darwin(v14 - 8);
  v16 = &v44 - v15;
  v17 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A4F58(v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    v44 = v7;
    v45 = v9;
    sub_1000084C0(v16, &qword_1000ECD40, &unk_1000C5880);
    v21 = sub_1000A568C();
    if (v21 <= 0)
    {
      v37 = sub_1000C0938();
      v38 = v46;
      (*(*(v37 - 8) + 16))(v46, a1, v37);
      v39 = type metadata accessor for TTRTodayComplicationWidget.TodayInlineView(0);
      v40 = *(a1 + *(v39 + 20));
      v41 = *(a1 + *(v39 + 24));
      v43 = v50;
      v42 = v51;
      *(v38 + *(v51 + 20)) = v40;
      *(v38 + *(v42 + 24)) = v41;
      sub_10000538C(v38, v43, type metadata accessor for TTRTodayComplicationWidget.InlineNoDueRemindersView);
      swift_storeEnumTagMultiPayload();
      sub_1000052EC(&qword_1000ECD20, type metadata accessor for TTRTodayComplicationWidget.InlineOverdueRemindersCountView, &unk_1000C3884);
      sub_1000052EC(&qword_1000ECD28, type metadata accessor for TTRTodayComplicationWidget.InlineNoDueRemindersView, &unk_1000C3834);

      v29 = v48;
      sub_1000C1AE8();
      v30 = type metadata accessor for TTRTodayComplicationWidget.InlineNoDueRemindersView;
      v31 = v38;
    }

    else
    {
      v22 = v21;
      v23 = v49;
      v24 = *(v49 + 20);
      v25 = sub_1000C0938();
      (*(*(v25 - 8) + 16))(&v6[v24], a1, v25);
      v26 = type metadata accessor for TTRTodayComplicationWidget.TodayInlineView(0);
      v27 = *(a1 + *(v26 + 20));
      v28 = *(a1 + *(v26 + 24));
      *v6 = v22;
      *&v6[*(v23 + 24)] = v27;
      *&v6[*(v23 + 28)] = v28;
      sub_10000538C(v6, v50, type metadata accessor for TTRTodayComplicationWidget.InlineOverdueRemindersCountView);
      swift_storeEnumTagMultiPayload();
      sub_1000052EC(&qword_1000ECD20, type metadata accessor for TTRTodayComplicationWidget.InlineOverdueRemindersCountView, &unk_1000C3884);
      sub_1000052EC(&qword_1000ECD28, type metadata accessor for TTRTodayComplicationWidget.InlineNoDueRemindersView, &unk_1000C3834);

      v29 = v48;
      sub_1000C1AE8();
      v30 = type metadata accessor for TTRTodayComplicationWidget.InlineOverdueRemindersCountView;
      v31 = v6;
    }

    sub_100006718(v31, v30);
    sub_1000082B4(v29, v45, &qword_1000ECD18, &qword_1000C37B0);
    swift_storeEnumTagMultiPayload();
    sub_1000052EC(&qword_1000ECD08, type metadata accessor for TTRTodayComplicationWidget.InlineReminderView, &unk_1000C38D4);
    sub_1000065B4();
    sub_1000C1AE8();
    return sub_1000084C0(v29, &qword_1000ECD18, &qword_1000C37B0);
  }

  else
  {
    sub_100006778(v16, v20, type metadata accessor for TTRNewWidgetViewModel.Reminder);
    sub_10000538C(v20, v12, type metadata accessor for TTRNewWidgetViewModel.Reminder);
    v32 = type metadata accessor for TTRTodayComplicationWidget.TodayInlineView(0);
    v33 = *(a1 + v32[5]);
    v34 = *(a1 + v32[6]);
    v35 = *(a1 + v32[7]);
    *&v12[v10[5]] = v33;
    *&v12[v10[6]] = v34;
    *&v12[v10[7]] = v35;
    sub_10000538C(v12, v9, type metadata accessor for TTRTodayComplicationWidget.InlineReminderView);
    swift_storeEnumTagMultiPayload();
    sub_1000052EC(&qword_1000ECD08, type metadata accessor for TTRTodayComplicationWidget.InlineReminderView, &unk_1000C38D4);
    sub_1000065B4();

    sub_1000C1AE8();
    sub_100006718(v12, type metadata accessor for TTRTodayComplicationWidget.InlineReminderView);
    return sub_100006718(v20, type metadata accessor for TTRNewWidgetViewModel.Reminder);
  }
}

uint64_t sub_10000309C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = sub_100004D04(&qword_1000ECC38, &qword_1000C3720);
  __chkstk_darwin(v4 - 8);
  v6 = v25 - v5;
  v7 = sub_1000C1CD8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006778(a1, a2, type metadata accessor for TTRTodayComplicationWidgetViewModel);
  v11 = type metadata accessor for TTRTodayComplicationWidget.TodayInlineView(0);
  v12 = *(v11 + 20);
  v26 = v11;
  v27 = v12;
  v29 = enum case for Font.TextStyle.body(_:);
  v13 = *(v8 + 104);
  v25[1] = v8 + 104;
  v35 = v13;
  v13(v10);
  v14 = enum case for Font.Design.default(_:);
  v34 = enum case for Font.Design.default(_:);
  v15 = sub_1000C1C38();
  v16 = *(v15 - 8);
  v33 = *(v16 + 104);
  v33(v6, v14, v15);
  v32 = *(v16 + 56);
  v32(v6, 0, 1, v15);
  v17 = sub_1000C1C78();
  sub_1000084C0(v6, &qword_1000ECC38, &qword_1000C3720);
  v18 = *(v8 + 8);
  v30 = v8 + 8;
  v31 = v18;
  v18(v10, v7);
  v19 = v28;
  *(v28 + v27) = v17;
  v20 = v26;
  v27 = *(v26 + 24);
  v35(v10, v29, v7);
  v33(v6, v34, v15);
  v32(v6, 0, 1, v15);
  v21 = sub_1000C1C78();
  sub_1000084C0(v6, &qword_1000ECC38, &qword_1000C3720);
  v31(v10, v7);
  *(v19 + v27) = v21;
  v22 = *(v20 + 28);
  v35(v10, v29, v7);
  v33(v6, v34, v15);
  v32(v6, 0, 1, v15);
  sub_1000C1C78();
  sub_1000084C0(v6, &qword_1000ECC38, &qword_1000C3720);
  v31(v10, v7);
  sub_1000C1C48();
  v23 = sub_1000C1C88();

  *(v19 + v22) = v23;
  return result;
}

uint64_t sub_100003468()
{
  v1 = sub_100004D04(&qword_1000ECCE0, &qword_1000C4EF0);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  v4 = sub_100004D04(&qword_1000ECCE8, &qword_1000C37A0);
  __chkstk_darwin(v4);
  v6 = &v10 - v5;
  sub_10000289C(v0, &v10 - v5);
  v7 = sub_1000C0938();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v3, v0, v7);
  (*(v8 + 56))(v3, 0, 1, v7);
  sub_10000645C(&qword_1000ECCF0, &qword_1000ECCE8, &qword_1000C37A0, sub_1000064D8);
  sub_1000C1E38();
  sub_1000084C0(v3, &qword_1000ECCE0, &qword_1000C4EF0);
  return sub_1000084C0(v6, &qword_1000ECCE8, &qword_1000C37A0);
}

uint64_t sub_100003640()
{
  v1 = sub_100004D04(&qword_1000ECCE0, &qword_1000C4EF0);
  __chkstk_darwin(v1 - 8);
  v3 = &v10[-v2 - 16];
  v4 = sub_1000C1998();
  v12 = 1;
  sub_100003868(v0, v13);
  v11[3] = *(v14 + 9);
  *(&v11[2] + 7) = v14[0];
  *(&v11[1] + 7) = v13[1];
  *(v11 + 7) = v13[0];
  *&v10[1] = v11[0];
  v9 = v4;
  v10[0] = v12;
  *&v10[17] = v11[1];
  *&v10[33] = v11[2];
  *&v10[49] = v11[3];
  v5 = *(type metadata accessor for TTRNewWidgetViewModel.Reminder(0) + 28);
  v6 = sub_1000C0938();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v3, v0 + v5, v6);
  (*(v7 + 56))(v3, 0, 1, v6);
  sub_100004D04(&qword_1000ECF18, &qword_1000C3928);
  sub_100008478(&qword_1000ECF20, &qword_1000ECF18, &qword_1000C3928, &protocol conformance descriptor for HStack<A>);
  sub_1000C1E38();
  sub_1000084C0(v3, &qword_1000ECCE0, &qword_1000C4EF0);
  v15[2] = *&v10[16];
  v15[3] = *&v10[32];
  v15[4] = *&v10[48];
  v16 = v10[64];
  v15[0] = v9;
  v15[1] = *v10;
  return sub_1000084C0(v15, &qword_1000ECF18, &qword_1000C3928);
}

id sub_100003868@<X0>(void **a1@<X0>, __int128 *a2@<X8>)
{
  v74 = a2;
  v3 = sub_1000C07C8();
  __chkstk_darwin(v3);
  v4 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
  __chkstk_darwin(v4 - 8);
  v6 = &v66 - v5;
  v7 = sub_1000C0818();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  sub_1000082B4(a1 + *(v11 + 24), v6, &qword_1000ECE78, &unk_1000C3810);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000084C0(v6, &qword_1000ECE78, &unk_1000C3810);
    if (qword_1000EC848 != -1)
    {
      swift_once();
    }

    v12 = qword_1000EC850;
    v13 = type metadata accessor for TTRTodayComplicationWidget.InlineReminderView(0);
    v14 = *(a1 + *(v13 + 24));
    KeyPath = swift_getKeyPath();
    v15 = *a1;
    v70 = v13;
    v16 = *(a1 + *(v13 + 28));
    v72 = v12;

    result = [v15 string];
    if (!result)
    {
      goto LABEL_15;
    }

    v18 = result;
    v75 = xmmword_1000C35A0;
    LOBYTE(v76) = 0;
    *(&v76 + 1) = _swiftEmptyArrayStorage;
    v19 = [objc_opt_self() attributeName];
    v73 = [v15 length];
    v20 = swift_allocObject();
    v20[2] = &v75;
    v20[3] = v18;
    v20[4] = v16;
    v20[5] = 0;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_1000083E4;
    *(v21 + 24) = v20;
    *v83 = sub_100008400;
    *&v83[8] = v21;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v82 = sub_100045698;
    *(&v82 + 1) = &unk_1000E7BA8;
    v22 = _Block_copy(&aBlock);
    v23 = v18;

    [v15 enumerateAttribute:v19 inRange:0 options:v73 usingBlock:{0, v22}];

    _Block_release(v22);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v25 = v75;
      v26 = v76;

      v27 = sub_1000C1DA8();
      v29 = v28;
      v31 = v30;
      v33 = v32;
      sub_10000537C(v25, *(&v25 + 1), v26);

      v34 = v72;

      v35 = KeyPath;

      sub_100008420(v27, v29, v31 & 1);

      sub_100008420(v27, v29, v31 & 1);

      sub_10000537C(v27, v29, v31 & 1);

      v80 = v31 & 1;
      v78 = 1;
      *&aBlock = v34;
      *(&aBlock + 1) = v35;
      *&v82 = v14;
      *(&v82 + 1) = v27;
      *v83 = v29;
      v83[8] = v31 & 1;
      *&v83[9] = *v79;
      *&v83[12] = *&v79[3];
      *&v83[16] = v33;
      v83[24] = 1;
      sub_100004D04(&qword_1000ECF28, &qword_1000C3960);
      sub_100008478(&qword_1000ECF30, &qword_1000ECF28, &qword_1000C3960, &protocol conformance descriptor for TupleView<A>);
      sub_1000C1AE8();
      sub_10000537C(v27, v29, v31 & 1);

LABEL_12:
      aBlock = v75;
      v82 = v76;
      *v83 = v77[0];
      *&v83[9] = *(v77 + 9);
      v64 = v76;
      v65 = v74;
      *v74 = v75;
      v65[1] = v64;
      v65[2] = *v83;
      *(v65 + 41) = *&v83[9];
      return result;
    }

    __break(1u);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    if (qword_1000EC838 != -1)
    {
      swift_once();
    }

    KeyPath = v8;
    v72 = v7;
    v36 = qword_1000EC840;
    v37 = type metadata accessor for TTRTodayComplicationWidget.InlineReminderView(0);
    v38 = *(a1 + *(v37 + 24));
    v67 = swift_getKeyPath();
    v39 = *a1;
    v73 = v37;
    v40 = *(v37 + 28);
    v66 = a1;
    v41 = *(a1 + v40);
    v69 = v36;

    v68 = v38;

    v70 = v10;
    sub_1000C07B8();
    sub_1000052EC(&qword_1000ECF38, &type metadata accessor for AttributedString.CharacterView, &protocol conformance descriptor for AttributedString.CharacterView);
    v42 = sub_1000C2718();
    v44 = v43;
    result = [v39 string];
    if (!result)
    {
      goto LABEL_16;
    }

    v45 = result;
    *&aBlock = v42;
    *(&aBlock + 1) = v44;

    v84._countAndFlagsBits = 32;
    v84._object = 0xE100000000000000;
    sub_1000C26D8(v84);
    v75 = aBlock;
    LOBYTE(v76) = 0;
    *(&v76 + 1) = _swiftEmptyArrayStorage;
    v46 = [objc_opt_self() attributeName];
    v47 = [v39 length];
    v48 = swift_allocObject();
    v48[2] = &v75;
    v48[3] = v45;
    v48[4] = v41;
    v48[5] = 0;
    v49 = swift_allocObject();
    *(v49 + 16) = sub_100008748;
    *(v49 + 24) = v48;
    *v83 = sub_100008724;
    *&v83[8] = v49;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v82 = sub_100045698;
    *(&v82 + 1) = &unk_1000E7C20;
    v50 = _Block_copy(&aBlock);
    v51 = v45;

    [v39 enumerateAttribute:v46 inRange:0 options:v47 usingBlock:{0, v50}];

    _Block_release(v50);
    LOBYTE(v47) = swift_isEscapingClosureAtFileLocation();

    if ((v47 & 1) == 0)
    {
      v52 = v75;
      v53 = v76;

      v54 = sub_1000C1DA8();
      v56 = v55;
      v58 = v57;
      v73 = v59;
      sub_10000537C(v52, *(&v52 + 1), v53);

      v60 = v69;

      v61 = v68;

      v62 = v67;

      sub_100008420(v54, v56, v58 & 1);
      v63 = v73;

      sub_100008420(v54, v56, v58 & 1);

      sub_10000537C(v54, v56, v58 & 1);

      v80 = v58 & 1;
      v78 = 0;
      *&aBlock = v60;
      *(&aBlock + 1) = v62;
      *&v82 = v61;
      *(&v82 + 1) = v54;
      *v83 = v56;
      v83[8] = v58 & 1;
      *&v83[9] = *v79;
      *&v83[12] = *&v79[3];
      *&v83[16] = v63;
      v83[24] = 0;
      sub_100004D04(&qword_1000ECF28, &qword_1000C3960);
      sub_100008478(&qword_1000ECF30, &qword_1000ECF28, &qword_1000C3960, &protocol conformance descriptor for TupleView<A>);
      sub_1000C1AE8();
      sub_10000537C(v54, v56, v58 & 1);

      result = (*(KeyPath + 8))(v70, v72);
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1000043A8()
{
  v1 = sub_100004D04(&qword_1000ECCE0, &qword_1000C4EF0);
  __chkstk_darwin(v1 - 8);
  v3 = &v10[-v2 - 16];
  v4 = sub_1000C1998();
  v13 = 1;
  sub_1000045AC(v0, &v14);
  v12 = BYTE8(v16);
  v9 = v4;
  v10[0] = v13;
  *&v10[8] = v14;
  *&v10[24] = v15;
  *&v10[40] = v16;
  LOBYTE(v11) = BYTE8(v16);
  *(&v11 + 1) = v17;
  v5 = *(type metadata accessor for TTRTodayComplicationWidget.InlineOverdueRemindersCountView(0) + 20);
  v6 = sub_1000C0938();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v3, v0 + v5, v6);
  (*(v7 + 56))(v3, 0, 1, v6);
  sub_100004D04(&qword_1000ECF40, &qword_1000C3968);
  sub_100008478(&qword_1000ECF48, &qword_1000ECF40, &qword_1000C3968, &protocol conformance descriptor for HStack<A>);
  sub_1000C1E38();
  sub_1000084C0(v3, &qword_1000ECCE0, &qword_1000C4EF0);
  v16 = *&v10[16];
  v17 = *&v10[32];
  v18 = v11;
  v14 = v9;
  v15 = *v10;
  return sub_1000084C0(&v14, &qword_1000ECF40, &qword_1000C3968);
}

uint64_t sub_1000045AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1000EC848 != -1)
  {
    swift_once();
  }

  v4 = qword_1000EC850;
  v5 = *(a1 + *(type metadata accessor for TTRTodayComplicationWidget.InlineOverdueRemindersCountView(0) + 28));
  KeyPath = swift_getKeyPath();
  v7 = *a1;

  sub_10001E1F0(v7);
  v8 = sub_1000C1DA8();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  *a2 = v4;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = v5;
  *(a2 + 24) = v8;
  *(a2 + 32) = v10;
  *(a2 + 40) = v12 & 1;
  *(a2 + 48) = v14;

  sub_100008420(v8, v10, v12 & 1);

  sub_10000537C(v8, v10, v12 & 1);
}

uint64_t sub_100004738()
{
  v1 = sub_100004D04(&qword_1000ECCE0, &qword_1000C4EF0);
  __chkstk_darwin(v1 - 8);
  v3 = &v9[-v2 - 16];
  v4 = sub_1000C1998();
  v12 = 1;
  sub_100004930(v0, &v13);
  v11 = BYTE8(v15);
  v8 = v4;
  v9[0] = v12;
  *&v9[8] = v13;
  *&v9[24] = v14;
  *&v9[40] = v15;
  LOBYTE(v10) = BYTE8(v15);
  *(&v10 + 1) = v16;
  v5 = sub_1000C0938();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v3, v0, v5);
  (*(v6 + 56))(v3, 0, 1, v5);
  sub_100004D04(&qword_1000ECF40, &qword_1000C3968);
  sub_100008478(&qword_1000ECF48, &qword_1000ECF40, &qword_1000C3968, &protocol conformance descriptor for HStack<A>);
  sub_1000C1E38();
  sub_1000084C0(v3, &qword_1000ECCE0, &qword_1000C4EF0);
  v15 = *&v9[16];
  v16 = *&v9[32];
  v17 = v10;
  v13 = v8;
  v14 = *v9;
  return sub_1000084C0(&v13, &qword_1000ECF40, &qword_1000C3968);
}

uint64_t sub_100004930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1000EC848 != -1)
  {
    swift_once();
  }

  v4 = qword_1000EC850;
  v5 = *(a1 + *(type metadata accessor for TTRTodayComplicationWidget.InlineNoDueRemindersView(0) + 24));
  KeyPath = swift_getKeyPath();

  v16._object = 0x80000001000CBA20;
  v17._countAndFlagsBits = 0xD000000000000063;
  v17._object = 0x80000001000CBA40;
  v16._countAndFlagsBits = 0xD000000000000012;
  sub_1000C0D78(v16, v17);
  v7 = sub_1000C1DA8();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  *a2 = v4;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = v5;
  *(a2 + 24) = v7;
  *(a2 + 32) = v9;
  *(a2 + 40) = v11 & 1;
  *(a2 + 48) = v13;

  sub_100008420(v7, v9, v11 & 1);

  sub_10000537C(v7, v9, v11 & 1);
}

uint64_t sub_100004AF0()
{
  result = sub_1000C2018();
  qword_1000EC840 = result;
  return result;
}

uint64_t sub_100004B20()
{
  result = sub_1000C2018();
  qword_1000EC850 = result;
  return result;
}

uint64_t sub_100004B5C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100004D04(&qword_1000ECA80, &qword_1000C35C8);
  __chkstk_darwin(v4);
  sub_1000082B4(a1, &v6, &qword_1000ECA90, &qword_1000C35D0);
  if (v7)
  {
    sub_100004E0C(&v6, v8);
    sub_100004E0C(v8, &v6);
    sub_100004D04(&qword_1000ECA98, &qword_1000C35D8);
    swift_dynamicCast();
    result = v9;
  }

  else
  {
    sub_1000084C0(&v6, &qword_1000ECA90, &qword_1000C35D0);
    sub_1000C1A58();
    swift_getOpaqueTypeConformance2();
    result = sub_1000C1B28();
  }

  *a2 = result;
  return result;
}

void *sub_100004CA8()
{
  if (sub_1000BFCB0(2, 16, 1, 0))
  {
    return &type metadata for LimitedAvailabilityWidget;
  }

  return sub_100004D04(&qword_1000ECA80, &qword_1000C35C8);
}

uint64_t sub_100004D04(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100004D4C()
{
  if (sub_1000BFCB0(2, 16, 1, 0))
  {

    return sub_100004DB8();
  }

  else
  {

    return swift_getOpaqueTypeConformance2();
  }
}

unint64_t sub_100004DB8()
{
  result = qword_1000ECA88;
  if (!qword_1000ECA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ECA88);
  }

  return result;
}

uint64_t sub_100004E0C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

char *sub_100004E24(char *a1, char *a2)
{
  v4 = type metadata accessor for TTRTodayComplicationWidgetProvider(0);
  v5 = *(*(v4 - 8) + 80);
  v6 = *a2;
  *a1 = *a2;
  if ((v5 & 0x20000) != 0)
  {
    a1 = (v6 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = *(v4 + 20);
    v8 = sub_1000C1118();
    v9 = *(*(v8 - 8) + 16);

    v9(&a1[v7], &a2[v7], v8);
  }

  return a1;
}

uint64_t sub_100004F08(char *a1)
{

  v2 = *(type metadata accessor for TTRTodayComplicationWidgetProvider(0) + 20);
  v3 = sub_1000C1118();
  v4 = *(*(v3 - 8) + 8);

  return v4(&a1[v2], v3);
}

char *sub_100004F80(char *a1, char *a2)
{
  *a1 = *a2;
  v4 = *(type metadata accessor for TTRTodayComplicationWidgetProvider(0) + 20);
  v5 = sub_1000C1118();
  v6 = *(*(v5 - 8) + 16);

  v6(&a1[v4], &a2[v4], v5);
  return a1;
}

char *sub_10000501C(char *a1, char *a2)
{
  *a1 = *a2;

  v4 = *(type metadata accessor for TTRTodayComplicationWidgetProvider(0) + 20);
  v5 = sub_1000C1118();
  (*(*(v5 - 8) + 24))(&a1[v4], &a2[v4], v5);
  return a1;
}

char *sub_1000050AC(char *a1, char *a2)
{
  *a1 = *a2;
  v4 = *(type metadata accessor for TTRTodayComplicationWidgetProvider(0) + 20);
  v5 = sub_1000C1118();
  (*(*(v5 - 8) + 32))(&a1[v4], &a2[v4], v5);
  return a1;
}

char *sub_10000512C(char *a1, char *a2)
{
  *a1 = *a2;

  v4 = *(type metadata accessor for TTRTodayComplicationWidgetProvider(0) + 20);
  v5 = sub_1000C1118();
  (*(*(v5 - 8) + 40))(&a1[v4], &a2[v4], v5);
  return a1;
}

__n128 initializeWithTake for TTRNewWidgetViewModel.ShareeIcon(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t _s24RemindersWidgetExtension16TTRAnyListWidgetV14ReminderVStackV9CacheDataVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s24RemindersWidgetExtension16TTRAnyListWidgetV14ReminderVStackV9CacheDataVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1000052EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100005334(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000537C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10000538C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_1000053F4(void *a1, void *a2)
{
  v4 = type metadata accessor for TTRTodayComplicationWidgetViewModel(0);
  v5 = *(*(v4 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v5 + 16) & ~v5));
  }

  else
  {
    v6 = v4;
    v7 = sub_1000C0938();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    *(a1 + *(v6 + 20)) = *(a2 + *(v6 + 20));
    *(a1 + *(v6 + 24)) = *(a2 + *(v6 + 24));
  }

  return a1;
}

uint64_t sub_1000054D4(uint64_t a1)
{
  v2 = sub_1000C0938();
  (*(*(v2 - 8) + 8))(a1, v2);
  type metadata accessor for TTRTodayComplicationWidgetViewModel(0);
}

uint64_t sub_10000554C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C0938();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  v5 = type metadata accessor for TTRTodayComplicationWidgetViewModel(0);
  *(a1 + *(v5 + 20)) = *(a2 + *(v5 + 20));
  *(a1 + *(v5 + 24)) = *(a2 + *(v5 + 24));

  return a1;
}

uint64_t sub_1000055D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C0938();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  v5 = type metadata accessor for TTRTodayComplicationWidgetViewModel(0);
  *(a1 + *(v5 + 20)) = *(a2 + *(v5 + 20));
  *(a1 + *(v5 + 24)) = *(a2 + *(v5 + 24));

  return a1;
}

uint64_t sub_100005668(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C0938();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  v5 = type metadata accessor for TTRTodayComplicationWidgetViewModel(0);
  *(a1 + *(v5 + 20)) = *(a2 + *(v5 + 20));
  *(a1 + *(v5 + 24)) = *(a2 + *(v5 + 24));
  return a1;
}

uint64_t sub_1000056EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C0938();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  v5 = type metadata accessor for TTRTodayComplicationWidgetViewModel(0);
  *(a1 + *(v5 + 20)) = *(a2 + *(v5 + 20));
  *(a1 + *(v5 + 24)) = *(a2 + *(v5 + 24));

  return a1;
}

uint64_t sub_1000057A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t sub_100005840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = (a5)(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_1000058CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_10000595C()
{
  sub_100005334(&qword_1000ECB48, &qword_1000C3678);
  sub_100005334(&qword_1000ECB40, &qword_1000C3670);
  sub_100005334(&qword_1000ECB38, &qword_1000C3668);
  sub_100008478(&qword_1000ECB60, &qword_1000ECB38, &qword_1000C3668, &protocol conformance descriptor for StaticConfiguration<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100005AD4()
{
  result = qword_1000ECC28;
  if (!qword_1000ECC28)
  {
    sub_100005334(&qword_1000ECC30, &qword_1000C3718);
    _s10WidgetViewVMa(255);
    sub_1000052EC(&qword_1000ECC10, _s10WidgetViewVMa, &unk_1000C559C);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ECC28);
  }

  return result;
}

uint64_t sub_100005BCC(uint64_t a1, id *a2)
{
  result = sub_1000C2658();
  *a2 = 0;
  return result;
}

uint64_t sub_100005C44(uint64_t a1, id *a2)
{
  v3 = sub_1000C2668();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100005CC4@<X0>(uint64_t *a1@<X8>)
{
  sub_1000C2678();
  v2 = sub_1000C2638();

  *a1 = v2;
  return result;
}

uint64_t sub_100005D08()
{
  sub_1000C2678();
  v0 = sub_1000C26F8();

  return v0;
}

uint64_t sub_100005D44(uint64_t a1)
{
  sub_1000C2678();
  sub_1000C26C8();
}

Swift::Int sub_100005D98(uint64_t a1)
{
  sub_1000C2678();
  sub_1000C2D68();
  sub_1000C26C8();
  v1 = sub_1000C2D88();

  return v1;
}

uint64_t sub_100005E0C(void *a1, uint64_t *a2)
{
  v2 = sub_1000C2678();
  v4 = v3;
  if (v2 == sub_1000C2678() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1000C2CD8();
  }

  return v7 & 1;
}

void *sub_100005EC8(void *a1, void *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    v4 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_1000C0938();
    (*(*(v7 - 8) + 16))(v4, a2, v7);
    v8 = type metadata accessor for TTRTodayComplicationWidgetViewModel(0);
    *(v4 + *(v8 + 20)) = *(a2 + *(v8 + 20));
    *(v4 + *(v8 + 24)) = *(a2 + *(v8 + 24));
    v9 = a3[6];
    *(v4 + a3[5]) = *(a2 + a3[5]);
    *(v4 + v9) = *(a2 + v9);
    *(v4 + a3[7]) = *(a2 + a3[7]);
  }

  return v4;
}

uint64_t sub_100005FE4(uint64_t a1, int *a2)
{
  v3 = sub_1000C0938();
  (*(*(v3 - 8) + 8))(a1, v3);
  type metadata accessor for TTRTodayComplicationWidgetViewModel(0);
}

uint64_t sub_100006084(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000C0938();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = type metadata accessor for TTRTodayComplicationWidgetViewModel(0);
  *(a1 + *(v7 + 20)) = *(a2 + *(v7 + 20));
  *(a1 + *(v7 + 24)) = *(a2 + *(v7 + 24));
  v8 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v8) = *(a2 + v8);
  *(a1 + a3[7]) = *(a2 + a3[7]);

  return a1;
}

uint64_t sub_100006158(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000C0938();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = type metadata accessor for TTRTodayComplicationWidgetViewModel(0);
  *(a1 + *(v7 + 20)) = *(a2 + *(v7 + 20));
  *(a1 + *(v7 + 24)) = *(a2 + *(v7 + 24));

  *(a1 + a3[5]) = *(a2 + a3[5]);

  *(a1 + a3[6]) = *(a2 + a3[6]);

  *(a1 + a3[7]) = *(a2 + a3[7]);

  return a1;
}

uint64_t sub_10000624C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000C0938();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = type metadata accessor for TTRTodayComplicationWidgetViewModel(0);
  *(a1 + *(v7 + 20)) = *(a2 + *(v7 + 20));
  *(a1 + *(v7 + 24)) = *(a2 + *(v7 + 24));
  v8 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v8) = *(a2 + v8);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

uint64_t sub_1000062FC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000C0938();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = type metadata accessor for TTRTodayComplicationWidgetViewModel(0);
  *(a1 + *(v7 + 20)) = *(a2 + *(v7 + 20));
  *(a1 + *(v7 + 24)) = *(a2 + *(v7 + 24));

  *(a1 + a3[5]) = *(a2 + a3[5]);

  *(a1 + a3[6]) = *(a2 + a3[6]);

  *(a1 + a3[7]) = *(a2 + a3[7]);

  return a1;
}

uint64_t sub_10000645C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100005334(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000064D8()
{
  result = qword_1000ECCF8;
  if (!qword_1000ECCF8)
  {
    sub_100005334(&qword_1000ECD00, &qword_1000C37A8);
    sub_1000052EC(&qword_1000ECD08, type metadata accessor for TTRTodayComplicationWidget.InlineReminderView, &unk_1000C38D4);
    sub_1000065B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ECCF8);
  }

  return result;
}

unint64_t sub_1000065B4()
{
  result = qword_1000ECD10;
  if (!qword_1000ECD10)
  {
    sub_100005334(&qword_1000ECD18, &qword_1000C37B0);
    sub_1000052EC(&qword_1000ECD20, type metadata accessor for TTRTodayComplicationWidget.InlineOverdueRemindersCountView, &unk_1000C3884);
    sub_1000052EC(&qword_1000ECD28, type metadata accessor for TTRTodayComplicationWidget.InlineNoDueRemindersView, &unk_1000C3834);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ECD10);
  }

  return result;
}

uint64_t sub_1000066E0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100006718(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100006778(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t *sub_1000067E0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    v4 = (v9 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_1000C0938();
    (*(*(v7 - 8) + 16))(v4, a2, v7);
    v8 = *(a3 + 24);
    *(v4 + *(a3 + 20)) = *(a2 + *(a3 + 20));
    *(v4 + v8) = *(a2 + v8);
  }

  return v4;
}

uint64_t sub_1000068B8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000C0938();
  (*(*(v3 - 8) + 8))(a1, v3);
}

uint64_t sub_100006938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0938();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v7) = *(a2 + v7);

  return a1;
}

uint64_t sub_1000069C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0938();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));

  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));

  return a1;
}

uint64_t sub_100006A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0938();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v7) = *(a2 + v7);
  return a1;
}

uint64_t sub_100006AF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0938();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));

  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));

  return a1;
}

uint64_t sub_100006BE4(uint64_t a1)
{
  result = sub_1000C0938();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *sub_100006C80(char *a1, char *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    v3 = (v10 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v5 = a3[5];
    v8 = sub_1000C0938();
    (*(*(v8 - 8) + 16))(&v3[v5], &a2[v5], v8);
    v9 = a3[7];
    *&v3[a3[6]] = *&a2[a3[6]];
    *&v3[v9] = *&a2[v9];
  }

  return v3;
}

uint64_t sub_100006D64(uint64_t a1, int *a2)
{
  v3 = a2[5];
  v4 = sub_1000C0938();
  (*(*(v4 - 8) + 8))(a1 + v3, v4);
}

char *sub_100006DF0(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = sub_1000C0938();
  (*(*(v7 - 8) + 16))(&a1[v6], &a2[v6], v7);
  v8 = a3[7];
  *&a1[a3[6]] = *&a2[a3[6]];
  *&a1[v8] = *&a2[v8];

  return a1;
}

char *sub_100006E8C(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = sub_1000C0938();
  (*(*(v7 - 8) + 24))(&a1[v6], &a2[v6], v7);
  *&a1[a3[6]] = *&a2[a3[6]];

  *&a1[a3[7]] = *&a2[a3[7]];

  return a1;
}

char *sub_100006F40(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = sub_1000C0938();
  (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
  v8 = a3[7];
  *&a1[a3[6]] = *&a2[a3[6]];
  *&a1[v8] = *&a2[v8];
  return a1;
}

char *sub_100006FD0(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = sub_1000C0938();
  (*(*(v7 - 8) + 40))(&a1[v6], &a2[v6], v7);
  *&a1[a3[6]] = *&a2[a3[6]];

  *&a1[a3[7]] = *&a2[a3[7]];

  return a1;
}

uint64_t sub_100007088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0938();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_10000715C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000C0938();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100007218(uint64_t a1)
{
  result = sub_1000C0938();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *sub_1000072C4(char *a1, char **a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v6 = a1;
    v7 = a2[1];
    *(a1 + 1) = v7;
    v8 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
    v9 = v8[6];
    v10 = sub_1000C0818();
    v11 = *(v10 - 8);
    v12 = *(v11 + 48);
    v13 = v4;
    v14 = v7;
    if (v12(a2 + v9, 1, v10))
    {
      v15 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
      memcpy(&v6[v9], a2 + v9, *(*(v15 - 8) + 64));
    }

    else
    {
      (*(v11 + 16))(&v6[v9], a2 + v9, v10);
      (*(v11 + 56))(&v6[v9], 0, 1, v10);
    }

    v16 = v8[7];
    v17 = sub_1000C0938();
    (*(*(v17 - 8) + 16))(&v6[v16], a2 + v16, v17);
    v18 = v8[8];
    v19 = *(a2 + v18);
    *&v6[v18] = v19;
    *&v6[v8[9]] = *(a2 + v8[9]);
    v6[v8[10]] = *(a2 + v8[10]);
    v6[v8[11]] = *(a2 + v8[11]);
    v20 = a3[6];
    *&v6[a3[5]] = *(a2 + a3[5]);
    *&v6[v20] = *(a2 + v20);
    *&v6[a3[7]] = *(a2 + a3[7]);
    v21 = v19;
  }

  return v6;
}

uint64_t sub_100007500(id *a1, int *a2)
{
  v3 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v4 = v3[6];
  v5 = sub_1000C0818();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(a1 + v4, 1, v5))
  {
    (*(v6 + 8))(a1 + v4, v5);
  }

  v7 = v3[7];
  v8 = sub_1000C0938();
  (*(*(v8 - 8) + 8))(a1 + v7, v8);
}

char *sub_10000763C(char *a1, uint64_t a2, int *a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v8 = v7[6];
  v9 = sub_1000C0818();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v5;
  v13 = v6;
  if (v11(a2 + v8, 1, v9))
  {
    v14 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&a1[v8], (a2 + v8), *(*(v14 - 8) + 64));
  }

  else
  {
    (*(v10 + 16))(&a1[v8], a2 + v8, v9);
    (*(v10 + 56))(&a1[v8], 0, 1, v9);
  }

  v15 = v7[7];
  v16 = sub_1000C0938();
  (*(*(v16 - 8) + 16))(&a1[v15], a2 + v15, v16);
  v17 = v7[8];
  v18 = *(a2 + v17);
  *&a1[v17] = v18;
  *&a1[v7[9]] = *(a2 + v7[9]);
  a1[v7[10]] = *(a2 + v7[10]);
  a1[v7[11]] = *(a2 + v7[11]);
  v19 = a3[6];
  *&a1[a3[5]] = *(a2 + a3[5]);
  *&a1[v19] = *(a2 + v19);
  *&a1[a3[7]] = *(a2 + a3[7]);
  v20 = v18;

  return a1;
}

uint64_t sub_100007830(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  v9 = *(a1 + 8);
  v10 = *(a2 + 8);
  *(a1 + 8) = v10;
  v11 = v10;

  v12 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v13 = v12[6];
  v14 = sub_1000C0818();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  v17 = v16(a1 + v13, 1, v14);
  v18 = v16(a2 + v13, 1, v14);
  if (!v17)
  {
    if (!v18)
    {
      (*(v15 + 24))(a1 + v13, a2 + v13, v14);
      goto LABEL_7;
    }

    (*(v15 + 8))(a1 + v13, v14);
    goto LABEL_6;
  }

  if (v18)
  {
LABEL_6:
    v19 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy((a1 + v13), (a2 + v13), *(*(v19 - 8) + 64));
    goto LABEL_7;
  }

  (*(v15 + 16))(a1 + v13, a2 + v13, v14);
  (*(v15 + 56))(a1 + v13, 0, 1, v14);
LABEL_7:
  v20 = v12[7];
  v21 = sub_1000C0938();
  (*(*(v21 - 8) + 24))(a1 + v20, a2 + v20, v21);
  v22 = v12[8];
  v23 = *(a1 + v22);
  v24 = *(a2 + v22);
  *(a1 + v22) = v24;
  v25 = v24;

  *(a1 + v12[9]) = *(a2 + v12[9]);
  *(a1 + v12[10]) = *(a2 + v12[10]);
  *(a1 + v12[11]) = *(a2 + v12[11]);
  *(a1 + a3[5]) = *(a2 + a3[5]);

  *(a1 + a3[6]) = *(a2 + a3[6]);

  *(a1 + a3[7]) = *(a2 + a3[7]);

  return a1;
}

char *sub_100007AB0(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v8 = v7[6];
  v9 = sub_1000C0818();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(&a2[v8], 1, v9))
  {
    v11 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&a1[v8], &a2[v8], *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v10 + 32))(&a1[v8], &a2[v8], v9);
    (*(v10 + 56))(&a1[v8], 0, 1, v9);
  }

  v12 = v7[7];
  v13 = sub_1000C0938();
  (*(*(v13 - 8) + 32))(&a1[v12], &a2[v12], v13);
  *&a1[v7[8]] = *&a2[v7[8]];
  *&a1[v7[9]] = *&a2[v7[9]];
  a1[v7[10]] = a2[v7[10]];
  a1[v7[11]] = a2[v7[11]];
  v14 = a3[6];
  *&a1[a3[5]] = *&a2[a3[5]];
  *&a1[v14] = *&a2[v14];
  *&a1[a3[7]] = *&a2[a3[7]];
  return a1;
}

uint64_t sub_100007C6C(uint64_t a1, char *a2, int *a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 1);

  v8 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v9 = v8[6];
  v10 = sub_1000C0818();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  v13 = v12(a1 + v9, 1, v10);
  v14 = v12(&a2[v9], 1, v10);
  if (!v13)
  {
    if (!v14)
    {
      (*(v11 + 40))(a1 + v9, &a2[v9], v10);
      goto LABEL_7;
    }

    (*(v11 + 8))(a1 + v9, v10);
    goto LABEL_6;
  }

  if (v14)
  {
LABEL_6:
    v15 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy((a1 + v9), &a2[v9], *(*(v15 - 8) + 64));
    goto LABEL_7;
  }

  (*(v11 + 32))(a1 + v9, &a2[v9], v10);
  (*(v11 + 56))(a1 + v9, 0, 1, v10);
LABEL_7:
  v16 = v8[7];
  v17 = sub_1000C0938();
  (*(*(v17 - 8) + 40))(a1 + v16, &a2[v16], v17);
  v18 = v8[8];
  v19 = *(a1 + v18);
  *(a1 + v18) = *&a2[v18];

  *(a1 + v8[9]) = *&a2[v8[9]];
  *(a1 + v8[10]) = a2[v8[10]];
  *(a1 + v8[11]) = a2[v8[11]];
  *(a1 + a3[5]) = *&a2[a3[5]];

  *(a1 + a3[6]) = *&a2[a3[6]];

  *(a1 + a3[7]) = *&a2[a3[7]];

  return a1;
}

uint64_t sub_100007EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_100007FE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000080B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_100008154()
{
  sub_100005334(&qword_1000ECCE8, &qword_1000C37A0);
  sub_10000645C(&qword_1000ECCF0, &qword_1000ECCE8, &qword_1000C37A0, sub_1000064D8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100008240@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1000C2638();

  *a2 = v3;
  return result;
}

uint64_t sub_100008288@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000C2678();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000082B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004D04(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000831C(uint64_t a1)
{
  v2 = sub_1000052EC(&qword_1000ECF70, type metadata accessor for Key, &unk_1000C3AB0);
  v3 = sub_1000052EC(&qword_1000ECF78, type metadata accessor for Key, &unk_1000C3A04);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100008408(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100008420(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100008430()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100008478(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100005334(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000084C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100004D04(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_100008534(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_10000859C(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  sub_100005334(a2, a3);
  sub_100008478(a4, a2, a3, &protocol conformance descriptor for HStack<A>);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100008750()
{
  result = qword_1000ECFA0;
  if (!qword_1000ECFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ECFA0);
  }

  return result;
}

uint64_t sub_1000087E8()
{
  v0 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000C0888();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000C0B68();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000C2628();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000C0898();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_1000C0728();
  sub_10000D9B0(v10, qword_1000FAA00);
  sub_10000D978(v10, qword_1000FAA00);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000C08A8();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1000C0718();
}

uint64_t sub_100008AC4@<X0>(uint64_t a1@<X8>)
{
  v22[3] = a1;
  v1 = sub_100004D04(&qword_1000ED0F0, &qword_1000C43C8);
  __chkstk_darwin(v1 - 8);
  v23 = v22 - v2;
  v3 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  __chkstk_darwin(v3 - 8);
  v22[0] = v22 - v4;
  v5 = sub_1000C0888();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000C0B68();
  __chkstk_darwin(v9 - 8);
  v10 = sub_1000C2628();
  __chkstk_darwin(v10 - 8);
  v11 = sub_1000C0898();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v22[2] = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v22[1] = v22 - v15;
  sub_1000C2618();
  sub_1000C0B58();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v6 + 104);
  v17(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  sub_1000C08A8();
  sub_1000C2618();
  sub_1000C0B58();
  v17(v8, v16, v5);
  v18 = v22[0];
  sub_1000C08A8();
  (*(v12 + 56))(v18, 0, 1, v11);
  v19 = v23;
  sub_1000C05F8();
  v20 = sub_1000C0608();
  (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
  sub_100004D04(&qword_1000ED0F8, &qword_1000C43D0);
  *(swift_allocObject() + 16) = xmmword_1000C3590;
  sub_1000C2618();
  sub_1000C0B58();
  v17(v8, v16, v5);
  sub_1000C08A8();
  sub_1000C2618();
  sub_1000C0B58();
  v17(v8, v16, v5);
  sub_1000C08A8();
  return sub_1000C0618();
}

uint64_t sub_100008FF8()
{
  v0 = sub_1000C0898();
  sub_10000D9B0(v0, qword_1000FAA18);
  sub_10000D978(v0, qword_1000FAA18);
  return sub_1000C0878();
}

uint64_t sub_10000905C()
{
  v0 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  __chkstk_darwin(v0 - 8);
  v2 = v14 - v1;
  v14[0] = sub_1000C0888();
  v3 = *(v14[0] - 8);
  __chkstk_darwin(v14[0]);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000C0B68();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000C2628();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000C0898();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_100004D04(&qword_1000ED140, &unk_1000C8AB0);
  sub_10000D9B0(v10, qword_1000FAA30);
  v11 = sub_10000D978(v10, qword_1000FAA30);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v14[0]);
  sub_1000C08A8();
  (*(v9 + 56))(v2, 1, 1, v8);
  sub_1000C0588();
  v12 = sub_1000C0578();
  return (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
}

uint64_t sub_10000938C()
{
  result = swift_getKeyPath();
  qword_1000FAA48 = result;
  return result;
}

uint64_t sub_1000093EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  sub_100004D04(&qword_1000ED110, &unk_1000C8A60);
  v3[10] = swift_task_alloc();
  sub_100004D04(&qword_1000ED118, &qword_1000C4400);
  v3[11] = swift_task_alloc();
  sub_100004D04(&qword_1000ED120, &qword_1000C4408);
  v3[12] = swift_task_alloc();
  v4 = sub_1000C0318();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v5 = sub_100004D04(&qword_1000ED128, &qword_1000C4410);
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_1000095CC, 0, 0);
}

uint64_t sub_1000095CC()
{
  sub_1000C0368();
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  v2 = sub_10000AAC0();
  *v1 = v0;
  v1[1] = sub_10000969C;
  v3 = *(v0 + 152);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v3, v0 + 16, sub_10000DCA0, 0, &type metadata for ShowSuggestionsEntity, v2);
}

uint64_t sub_10000969C()
{

  return _swift_task_switch(sub_100009798, 0, 0);
}

uint64_t sub_100009798()
{
  sub_1000C0368();
  v1 = *(v0 + 24);
  *(v0 + 32) = v1;
  *(v0 + 168) = v1;
  sub_1000C0368();
  *(v0 + 201) = *(v0 + 200);
  if (qword_1000EC870 != -1)
  {
    swift_once();
  }

  v2 = qword_1000FAA48;
  *(v0 + 176) = qword_1000FAA48;

  v3 = swift_task_alloc();
  *(v0 + 184) = v3;
  v4 = sub_100008478(&qword_1000ED100, &qword_1000ED108, &qword_1000C43E8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v3 = v0;
  v3[1] = sub_1000098F8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 201, v2, &type metadata for Bool, v4);
}

uint64_t sub_1000098F8()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_100009CB4;
  }

  else
  {
    v2 = sub_100009A4C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100009A4C()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v10 = v0[18];
  v11 = v0[15];
  v12 = v0[14];
  v13 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  sub_1000C0368();
  v0[6] = v0[5];
  v6 = sub_1000C06F8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = sub_1000C0738();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_100008750();
  sub_10000AE98();
  sub_1000C02E8();
  (*(v2 + 16))(v10, v1, v3);
  sub_1000C0308();
  sub_1000C0328();
  (*(v12 + 8))(v11, v13);

  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100009CB4()
{
  (*(v0[17] + 8))(v0[19], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100009D7C()
{
  v0 = sub_100004D04(&qword_1000ED130, &qword_1000C4418);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_1000EC870 != -1)
  {
    swift_once();
  }

  sub_1000C05D8();

  sub_10000AE98();
  sub_100008478(&qword_1000ED138, &qword_1000ED130, &qword_1000C4418, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1000C05C8();
  return (*(v1 + 8))(v3, v0);
}

void *sub_100009EF0@<X0>(void *a1@<X8>)
{
  result = sub_1000C0368();
  *a1 = v3;
  return result;
}

uint64_t sub_100009F2C(uint64_t *a1)
{

  sub_1000C0378();
}

uint64_t (*sub_100009F74(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000C0358();
  return sub_100009FE8;
}

void *sub_100009FEC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000C0368();
  *a1 = v3;
  return result;
}

uint64_t (*sub_10000A060(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000C0358();
  return sub_10000DCA8;
}

uint64_t sub_10000A0D4()
{
  if (qword_1000EC870 != -1)
  {
    swift_once();
  }
}

unint64_t sub_10000A158()
{
  result = qword_1000ECFB8;
  if (!qword_1000ECFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ECFB8);
  }

  return result;
}

unint64_t sub_10000A1B0()
{
  result = qword_1000ECFC0;
  if (!qword_1000ECFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ECFC0);
  }

  return result;
}

uint64_t sub_10000A29C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000EC868 != -1)
  {
    swift_once();
  }

  v2 = sub_100004D04(&qword_1000ED140, &unk_1000C8AB0);
  v3 = sub_10000D978(v2, qword_1000FAA30);

  return sub_10000DA20(v3, a1);
}

uint64_t sub_10000A320(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000DC8C;

  return sub_1000093EC(a1, v5, v4);
}

uint64_t sub_10000A3CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000CFBC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10000A414()
{
  result = qword_1000ECFC8;
  if (!qword_1000ECFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ECFC8);
  }

  return result;
}

unint64_t sub_10000A46C()
{
  result = qword_1000ECFD0;
  if (!qword_1000ECFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ECFD0);
  }

  return result;
}

uint64_t sub_10000A4E0()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() daemonUserDefaults];
  v3 = [v2 enableAutoCompleteReminders];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10000A5A8()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() daemonUserDefaults];
  [v2 setEnableAutoCompleteReminders:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10000A640(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1000C0898();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10000A6D0, 0, 0);
}

uint64_t sub_10000A6D0()
{
  v1 = *(v0 + 16);
  sub_100004D04(&qword_1000ECFB0, qword_1000C3B00);
  sub_1000C0878();
  sub_100008478(&qword_1000ED100, &qword_1000ED108, &qword_1000C43E8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v1 = sub_1000C0768();

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_10000A7F4()
{
  result = qword_1000ECFD8;
  if (!qword_1000ECFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ECFD8);
  }

  return result;
}

uint64_t sub_10000A848(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10000B1DC();
  *v4 = v2;
  v4[1] = sub_10000A8F8;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

uint64_t sub_10000A8F8(uint64_t a1)
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

unint64_t sub_10000AA10()
{
  result = qword_1000ECFE0;
  if (!qword_1000ECFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ECFE0);
  }

  return result;
}

unint64_t sub_10000AA68()
{
  result = qword_1000ECFE8;
  if (!qword_1000ECFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ECFE8);
  }

  return result;
}

unint64_t sub_10000AAC0()
{
  result = qword_1000ECFF0;
  if (!qword_1000ECFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ECFF0);
  }

  return result;
}

uint64_t sub_10000AB18(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10000B1DC();
  *v5 = v2;
  v5[1] = sub_10000DCD8;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10000ABCC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10000B1DC();
  *v4 = v2;
  v4[1] = sub_10000DCA4;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

uint64_t sub_10000AC7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10000AD3C;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_10000AD3C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_10000AE40()
{
  result = qword_1000ECFF8;
  if (!qword_1000ECFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ECFF8);
  }

  return result;
}

unint64_t sub_10000AE98()
{
  result = qword_1000ED000;
  if (!qword_1000ED000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED000);
  }

  return result;
}

unint64_t sub_10000AEF0()
{
  result = qword_1000ED008;
  if (!qword_1000ED008)
  {
    sub_100005334(&qword_1000ED010, qword_1000C3DA0);
    sub_10000AE98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED008);
  }

  return result;
}

uint64_t sub_10000AF74(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10000A7F4();
  *v5 = v2;
  v5[1] = sub_10000B028;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_10000B028()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000B11C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000B028;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_10000B1DC()
{
  result = qword_1000ED018;
  if (!qword_1000ED018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED018);
  }

  return result;
}

uint64_t sub_10000B230()
{
  v0 = qword_1000ECF80;

  return v0;
}

unint64_t sub_10000B26C()
{
  result = qword_1000ED020;
  if (!qword_1000ED020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED020);
  }

  return result;
}

unint64_t sub_10000B2C4()
{
  result = qword_1000ED028;
  if (!qword_1000ED028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED028);
  }

  return result;
}

unint64_t sub_10000B31C()
{
  result = qword_1000ED030;
  if (!qword_1000ED030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED030);
  }

  return result;
}

unint64_t sub_10000B380()
{
  result = qword_1000ED038;
  if (!qword_1000ED038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED038);
  }

  return result;
}

unint64_t sub_10000B3D8()
{
  result = qword_1000ED040;
  if (!qword_1000ED040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED040);
  }

  return result;
}

unint64_t sub_10000B430()
{
  result = qword_1000ED048;
  if (!qword_1000ED048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED048);
  }

  return result;
}

uint64_t sub_10000B490@<X0>(uint64_t *a2@<X8>)
{
  sub_10000A46C();
  result = sub_1000C0348();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10000B54C(uint64_t a1)
{
  v2 = sub_10000AAC0();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10000B59C()
{
  result = qword_1000ED060;
  if (!qword_1000ED060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED060);
  }

  return result;
}

uint64_t sub_10000B5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10000DC8C;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_10000B6B8(uint64_t a1)
{
  v2 = sub_10000B430();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10000B708()
{
  result = qword_1000ED068;
  if (!qword_1000ED068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED068);
  }

  return result;
}

uint64_t sub_10000B75C(uint64_t a1)
{
  if (qword_1000EC8E0 != -1)
  {
    swift_once();
  }

  sub_1000C26D8(xmmword_1000FAAD8);
  v2 = sub_10000AAC0();

  return _EntityURLRepresentation.init(_:)(0xD000000000000041, 0x80000001000CBC20, a1, v2);
}

uint64_t sub_10000B81C(uint64_t a1)
{
  sub_10000D924();
  v2 = sub_1000C0668();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_10000B88C()
{
  result = qword_1000ED070;
  if (!qword_1000ED070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED070);
  }

  return result;
}

uint64_t sub_10000B8E0()
{
  v0 = sub_1000C0898();
  sub_10000D9B0(v0, qword_1000FAA50);
  sub_10000D978(v0, qword_1000FAA50);
  return sub_1000C0878();
}

uint64_t sub_10000B944@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_1000C0888();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1000C0B68();
  __chkstk_darwin(v9 - 8);
  v10 = sub_1000C2628();
  __chkstk_darwin(v10 - 8);
  v11 = sub_1000C0898();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v6 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  sub_1000C08A8();
  (*(v12 + 56))(v4, 1, 1, v11);
  sub_1000C0588();
  v13 = sub_1000C0578();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t (*sub_10000BC40(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000C0358();
  return sub_10000DCA8;
}

void sub_10000BCB4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_10000BD00()
{
  result = qword_1000ED078;
  if (!qword_1000ED078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED078);
  }

  return result;
}

unint64_t sub_10000BD54()
{
  result = qword_1000ED080;
  if (!qword_1000ED080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED080);
  }

  return result;
}

uint64_t sub_10000BDA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000D87C();
  v5 = sub_10000D924();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_10000BE14()
{
  v0 = qword_1000ECF90;

  return v0;
}

unint64_t sub_10000BE50()
{
  result = qword_1000ED088;
  if (!qword_1000ED088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED088);
  }

  return result;
}

unint64_t sub_10000BEA8()
{
  result = qword_1000ED090;
  if (!qword_1000ED090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED090);
  }

  return result;
}

uint64_t sub_10000BFA4@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = sub_10000D978(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_10000C060(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10000D87C();
  v7 = sub_10000D8D0();
  v8 = sub_10000D924();
  *v5 = v2;
  v5[1] = sub_10000C134;

  return _URLRepresentableIntent<>.perform()(a1, a2, v6, v7, v8);
}

uint64_t sub_10000C134()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_10000C23C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000D420();
  *a1 = result;
  return result;
}

uint64_t sub_10000C264(uint64_t a1)
{
  v2 = sub_10000BD00();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t destroy for ShowSuggestionsEntity.UpdateIntent_value(void *a1)
{
}

uint64_t *sub_10000C310(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t *assignWithCopy for ShowSuggestionsEntity.UpdateIntent_value(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

void *assignWithTake for ShowSuggestionsEntity.UpdateIntent_value(void *a1, _OWORD *a2)
{

  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRNewWidgetViewModel.ShareeIcon(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for TTRNewWidgetViewModel.ShareeIcon(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000C504@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = sub_100004D04(&qword_1000ED148, &qword_1000C44B0);
  v25 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v23 - v2;
  v4 = sub_100004D04(&qword_1000ED150, &qword_1000C44B8);
  v5 = *(v4 - 8);
  v26 = v4;
  v27 = v5;
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = sub_100004D04(&qword_1000ED158, &qword_1000C44C0);
  v9 = *(v8 - 8);
  v28 = v8;
  v29 = v9;
  __chkstk_darwin(v8);
  v23 = &v23 - v10;
  v11 = sub_100004D04(&qword_1000ED160, &qword_1000C44C8);
  v12 = *(v11 - 8);
  v30 = v11;
  v31 = v12;
  __chkstk_darwin(v11);
  v24 = &v23 - v13;
  swift_getKeyPath();
  sub_100004D04(&qword_1000ED168, &qword_1000C44D0);
  sub_100004D04(&qword_1000ED170, qword_1000C44D8);
  sub_10000A46C();
  sub_100008478(&qword_1000ED178, &qword_1000ED168, &qword_1000C44D0, &protocol conformance descriptor for Label<A, B>);
  sub_10000DABC();
  sub_1000C2398();
  sub_1000C19E8();
  v14 = sub_100008478(&qword_1000ED188, &qword_1000ED148, &qword_1000C44B0, &protocol conformance descriptor for ControlToggle<A>);
  sub_1000C1AB8();

  (*(v25 + 8))(v3, v1);
  sub_1000C19E8();
  v33 = v1;
  v34 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = v23;
  v17 = v26;
  sub_1000C1A78();

  (*(v27 + 8))(v7, v17);
  v33 = v17;
  v34 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeConformance2();
  v19 = v24;
  v20 = v28;
  sub_1000C1AD8();
  (*(v29 + 8))(v16, v20);
  v33 = v20;
  v34 = v18;
  swift_getOpaqueTypeConformance2();
  v21 = v30;
  sub_1000C1A98();
  return (*(v31 + 8))(v19, v21);
}

uint64_t sub_10000CA68()
{
  v0 = sub_1000C19E8();

  return Label<>.init(_:systemImage:)(v0);
}

uint64_t sub_10000CAD8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000C0888();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000C0B68();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000C2628();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000C0898();
  __chkstk_darwin(v8 - 8);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_1000C08A8();
  result = sub_1000C1DD8();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

double sub_10000CCEC@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1000C0888();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000C0B68();
  __chkstk_darwin(v8 - 8);
  v9 = sub_1000C2628();
  __chkstk_darwin(v9 - 8);
  v10 = sub_1000C0898();
  __chkstk_darwin(v10 - 8);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v5 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v4);
  sub_1000C08A8();
  v17[1] = sub_1000C1DD8();
  v17[2] = v11;
  v17[3] = v12 & 1;
  v17[4] = v13;
  v18 = (a1 & 1) == 0;
  sub_1000C1AE8();
  result = *&v19;
  v15 = v20;
  v16 = v21;
  *a2 = v19;
  *(a2 + 16) = v15;
  *(a2 + 32) = v16;
  return result;
}

uint64_t sub_10000CFBC()
{
  v0 = sub_100004D04(&qword_1000ED0C8, &unk_1000CAFB0);
  __chkstk_darwin(v0 - 8);
  v30 = &v22 - v1;
  v31 = sub_1000C0658();
  v2 = *(v31 - 8);
  __chkstk_darwin(v31);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100004D04(&qword_1000ED0B0, &unk_1000C43A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  v11 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = sub_1000C0898();
  v29 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v23 = sub_100004D04(&qword_1000ED0C0, &unk_1000C43B0);
  sub_1000C0878();
  v16 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v16;
  v16(v13, 1, 1, v14);
  v33 = 0;
  v17 = sub_1000C0318();
  v18 = *(*(v17 - 8) + 56);
  v18(v10, 1, 1, v17);
  v18(v7, 1, 1, v17);
  v26 = enum case for InputConnectionBehavior.default(_:);
  v19 = *(v2 + 104);
  v24 = v2 + 104;
  v25 = v19;
  v19(v4);
  sub_10000AAC0();
  v23 = sub_1000C0388();
  sub_100004D04(&qword_1000ED0D0, &qword_1000C43C0);
  sub_1000C0878();
  v28(v13, 1, 1, v29);
  v32 = 2;
  v20 = sub_1000C2808();
  (*(*(v20 - 8) + 56))(v30, 1, 1, v20);
  v18(v10, 1, 1, v17);
  v25(v4, v26, v31);
  sub_1000C0398();
  return v23;
}

uint64_t sub_10000D420()
{
  v0 = sub_1000C0658();
  v24 = *(v0 - 8);
  v25 = v0;
  __chkstk_darwin(v0);
  v23 = v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100004D04(&qword_1000ED0B0, &unk_1000C43A0);
  __chkstk_darwin(v2 - 8);
  v22 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v21 - v5;
  v7 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  __chkstk_darwin(v7 - 8);
  v9 = v21 - v8;
  v10 = sub_1000C0888();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000C0B68();
  __chkstk_darwin(v14 - 8);
  v15 = sub_1000C2628();
  __chkstk_darwin(v15 - 8);
  v16 = sub_1000C0898();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v21[1] = sub_100004D04(&qword_1000ED0C0, &unk_1000C43B0);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v11 + 104))(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  sub_1000C08A8();
  (*(v17 + 56))(v9, 1, 1, v16);
  v26 = 0;
  v18 = sub_1000C0318();
  v19 = *(*(v18 - 8) + 56);
  v19(v6, 1, 1, v18);
  v19(v22, 1, 1, v18);
  (*(v24 + 104))(v23, enum case for InputConnectionBehavior.default(_:), v25);
  sub_10000AAC0();
  return sub_1000C0388();
}

unint64_t sub_10000D87C()
{
  result = qword_1000ED0D8;
  if (!qword_1000ED0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED0D8);
  }

  return result;
}

unint64_t sub_10000D8D0()
{
  result = qword_1000ED0E0;
  if (!qword_1000ED0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED0E0);
  }

  return result;
}

unint64_t sub_10000D924()
{
  result = qword_1000ED0E8;
  if (!qword_1000ED0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED0E8);
  }

  return result;
}

uint64_t sub_10000D978(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_10000D9B0(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10000DA20(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004D04(&qword_1000ED140, &unk_1000C8AB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000DABC()
{
  result = qword_1000ED180;
  if (!qword_1000ED180)
  {
    sub_100005334(&qword_1000ED170, qword_1000C44D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED180);
  }

  return result;
}

uint64_t sub_10000DB38()
{
  sub_100005334(&qword_1000ED160, &qword_1000C44C8);
  sub_100005334(&qword_1000ED158, &qword_1000C44C0);
  sub_100005334(&qword_1000ED150, &qword_1000C44B8);
  sub_100005334(&qword_1000ED148, &qword_1000C44B0);
  sub_100008478(&qword_1000ED188, &qword_1000ED148, &qword_1000C44B0, &protocol conformance descriptor for ControlToggle<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10000DCDC(unsigned __int8 a1)
{
  v1 = sub_1000C0888();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000C0B68();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000C2628();
  __chkstk_darwin(v6 - 8);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v2 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v1);
  return sub_1000C08A8();
}

unint64_t sub_10000DF48()
{
  result = qword_1000ED1B0;
  if (!qword_1000ED1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED1B0);
  }

  return result;
}

uint64_t sub_10000DF9C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x5F544C5541464544;
    }

    else
    {
      v3 = 0x746F6F7223;
    }

    if (v2)
    {
      v4 = 0xEC0000005453494CLL;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x80000001000CB8A0;
    v3 = 0xD000000000000012;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x474E414C5F444441;
    }

    else
    {
      v3 = 0xD000000000000011;
    }

    if (v2 == 3)
    {
      v4 = 0xEC00000045474155;
    }

    else
    {
      v4 = 0x80000001000CB8C0;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x5F544C5541464544;
    }

    else
    {
      v9 = 0x746F6F7223;
    }

    if (a2)
    {
      v8 = 0xEC0000005453494CLL;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v5 = 0x474E414C5F444441;
    v6 = 0x80000001000CB8C0;
    if (a2 == 3)
    {
      v6 = 0xEC00000045474155;
    }

    else
    {
      v5 = 0xD000000000000011;
    }

    if (a2 == 2)
    {
      v7 = 0xD000000000000012;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0x80000001000CB8A0;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v8)
  {
LABEL_37:
    v10 = sub_1000C2CD8();
    goto LABEL_38;
  }

  v10 = 1;
LABEL_38:

  return v10 & 1;
}

Swift::Int sub_10000E150()
{
  sub_1000C2D68();
  sub_1000C26C8();

  return sub_1000C2D88();
}

uint64_t sub_10000E248(uint64_t a1)
{
  sub_1000C26C8();
}

Swift::Int sub_10000E32C(uint64_t a1)
{
  sub_1000C2D68();
  sub_1000C26C8();

  return sub_1000C2D88();
}

unint64_t sub_10000E420@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100011498(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10000E450(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x746F6F7223;
  v5 = 0x80000001000CB8A0;
  v6 = 0xEC00000045474155;
  v7 = 0x474E414C5F444441;
  if (v2 != 3)
  {
    v7 = 0xD000000000000011;
    v6 = 0x80000001000CB8C0;
  }

  if (v2 == 2)
  {
    v8 = 0xD000000000000012;
  }

  else
  {
    v8 = v7;
  }

  if (v2 != 2)
  {
    v5 = v6;
  }

  if (*v1)
  {
    v4 = 0x5F544C5541464544;
    v3 = 0xEC0000005453494CLL;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v8;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_10000E558()
{
  v1 = *v0;
  v2 = 0x746F6F7223;
  v3 = 0x474E414C5F444441;
  if (v1 != 3)
  {
    v3 = 0xD000000000000011;
  }

  if (v1 == 2)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = v3;
  }

  if (*v0)
  {
    v2 = 0x5F544C5541464544;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10000E608@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{

  result = sub_100011498(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_10000E654()
{
  result = qword_1000ED1C8;
  if (!qword_1000ED1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED1C8);
  }

  return result;
}

unint64_t sub_10000E6AC()
{
  result = qword_1000ED1D0;
  if (!qword_1000ED1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED1D0);
  }

  return result;
}

unint64_t sub_10000E704()
{
  result = qword_1000ED1D8;
  if (!qword_1000ED1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED1D8);
  }

  return result;
}

uint64_t sub_10000E758()
{
  v0 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000C0888();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000C0B68();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000C2628();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000C0898();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_1000C0728();
  sub_10000D9B0(v10, qword_1000FAA68);
  sub_10000D978(v10, qword_1000FAA68);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000C08A8();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1000C0718();
}

uint64_t sub_10000EA34@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_100004D04(&qword_1000ED0F0, &qword_1000C43C8);
  __chkstk_darwin(v4 - 8);
  v6 = &v44[-v5];
  v7 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  __chkstk_darwin(v7 - 8);
  v51 = &v44[-v8];
  v9 = sub_1000C0888();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v44[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1000C0B68();
  __chkstk_darwin(v13 - 8);
  v14 = sub_1000C2628();
  __chkstk_darwin(v14 - 8);
  v49 = sub_1000C0898();
  v15 = *(v49 - 8);
  __chkstk_darwin(v49);
  v50 = &v44[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v47 = &v44[-v18];
  v48 = a2;
  v52 = v6;
  if (a1 <= 1u)
  {
    sub_1000C2618();
    sub_1000C0B58();
    if (a1)
    {
      v36 = *(v10 + 104);
      v37 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v45 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v36(v12);
      v46 = v36;
      sub_1000C08A8();
      sub_1000C2618();
      sub_1000C0B58();
      (v36)(v12, v37, v9);
      v38 = v51;
      sub_1000C08A8();
      (*(v15 + 56))(v38, 0, 1, v49);
      v39 = v52;
      sub_1000C05F8();
      v40 = sub_1000C0608();
      (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
      sub_100004D04(&qword_1000ED0F8, &qword_1000C43D0);
      *(swift_allocObject() + 16) = xmmword_1000C44F0;
      sub_1000C2618();
      sub_1000C0B58();
      v41 = v45;
      v42 = v46;
      v46(v12, v45, v9);
      sub_1000C08A8();
      sub_1000C2618();
      sub_1000C0B58();
      v42(v12, v41, v9);
      sub_1000C08A8();
      sub_1000C2618();
      sub_1000C0B58();
      v42(v12, v41, v9);
    }

    else
    {
      v26 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v27 = *(v10 + 104);
      LODWORD(v46) = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v27(v12, enum case for LocalizedStringResource.BundleDescription.main(_:), v9);
      sub_1000C08A8();
      sub_1000C2618();
      sub_1000C0B58();
      v27(v12, v26, v9);
      v28 = v51;
      sub_1000C08A8();
      (*(v15 + 56))(v28, 0, 1, v49);
      sub_1000C05F8();
      v29 = sub_1000C0608();
      (*(*(v29 - 8) + 56))(v6, 0, 1, v29);
      sub_100004D04(&qword_1000ED0F8, &qword_1000C43D0);
      v49 = 2 * *(v15 + 72);
      *(swift_allocObject() + 16) = xmmword_1000C4500;
      sub_1000C2618();
      sub_1000C0B58();
      v30 = v46;
      v27(v12, v46, v9);
      sub_1000C08A8();
      sub_1000C2618();
      sub_1000C0B58();
      v27(v12, v30, v9);
      sub_1000C08A8();
      sub_1000C2618();
      sub_1000C0B58();
      v27(v12, v30, v9);
      sub_1000C08A8();
      sub_1000C2618();
      sub_1000C0B58();
      v27(v12, v30, v9);
    }
  }

  else
  {
    sub_1000C2618();
    sub_1000C0B58();
    if (a1 == 2)
    {
      v31 = *(v10 + 104);
      v32 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      LODWORD(v46) = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v31(v12);
      sub_1000C08A8();
      sub_1000C2618();
      sub_1000C0B58();
      (v31)(v12, v32, v9);
      v33 = v51;
      sub_1000C08A8();
      (*(v15 + 56))(v33, 0, 1, v49);
      sub_1000C05F8();
      v34 = sub_1000C0608();
      (*(*(v34 - 8) + 56))(v6, 0, 1, v34);
      sub_100004D04(&qword_1000ED0F8, &qword_1000C43D0);
      *(swift_allocObject() + 16) = xmmword_1000C3590;
      sub_1000C2618();
      sub_1000C0B58();
      v35 = v46;
      (v31)(v12, v46, v9);
      sub_1000C08A8();
      sub_1000C2618();
      sub_1000C0B58();
      (v31)(v12, v35, v9);
    }

    else
    {
      v19 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v20 = *(v10 + 104);
      v21 = v9;
      v20(v12, enum case for LocalizedStringResource.BundleDescription.main(_:), v9);
      v22 = v20;
      sub_1000C08A8();
      sub_1000C2618();
      sub_1000C0B58();
      v20(v12, v19, v21);
      v23 = v51;
      sub_1000C08A8();
      (*(v15 + 56))(v23, 0, 1, v49);
      v24 = v52;
      sub_1000C05F8();
      v25 = sub_1000C0608();
      (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
      sub_100004D04(&qword_1000ED0F8, &qword_1000C43D0);
      *(swift_allocObject() + 16) = xmmword_1000C3590;
      sub_1000C2618();
      sub_1000C0B58();
      v22(v12, v19, v21);
      sub_1000C08A8();
      sub_1000C2618();
      sub_1000C0B58();
      v22(v12, v19, v21);
    }
  }

  sub_1000C08A8();
  return sub_1000C0618();
}

uint64_t sub_10000FBA8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000DCD8;

  return sub_10001182C(a1);
}

uint64_t sub_10000FC50(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10000DCA4;

  return sub_1000114E4();
}

unint64_t sub_10000FCF4()
{
  result = qword_1000ED1E0;
  if (!qword_1000ED1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED1E0);
  }

  return result;
}

uint64_t sub_10000FD48(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10000DCA4;

  return sub_100011E04();
}

uint64_t sub_10000FDF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_10000A8F8;

  return sub_100012000(a2, a3);
}

unint64_t sub_10000FEAC()
{
  result = qword_1000ED1E8;
  if (!qword_1000ED1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED1E8);
  }

  return result;
}

unint64_t sub_10000FF04()
{
  result = qword_1000ED1F0;
  if (!qword_1000ED1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED1F0);
  }

  return result;
}

unint64_t sub_10000FF5C()
{
  result = qword_1000ED1F8;
  if (!qword_1000ED1F8)
  {
    sub_100005334(&qword_1000ED200, qword_1000C4710);
    sub_10000FF04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED1F8);
  }

  return result;
}

uint64_t sub_10000FFE0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10000FCF4();
  *v5 = v2;
  v5[1] = sub_10000B028;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_100010094(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100010138;

  return sub_100011B74();
}

uint64_t sub_100010138(char a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

unint64_t sub_10001024C()
{
  result = qword_1000ED208;
  if (!qword_1000ED208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED208);
  }

  return result;
}

uint64_t sub_1000102A0(uint64_t a1)
{
  v1 = sub_100004D04(&qword_1000ED2A8, &qword_1000C4CF8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_100004D04(&qword_1000ED2B0, &qword_1000C4D00);
  __chkstk_darwin(v5);
  sub_10000E704();
  sub_1000C06C8();
  v8._object = 0x80000001000CCDF0;
  v8._countAndFlagsBits = 0xD000000000000042;
  sub_1000C06B8(v8);
  (*(v2 + 104))(v4, enum case for _EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v1);
  sub_1000C06A8();
  (*(v2 + 8))(v4, v1);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_1000C06B8(v9);
  return sub_1000C06D8();
}

uint64_t sub_100010464()
{
  v0 = qword_1000ED190;

  return v0;
}

unint64_t sub_10001049C()
{
  result = qword_1000ED210;
  if (!qword_1000ED210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED210);
  }

  return result;
}

unint64_t sub_1000104F4()
{
  result = qword_1000ED218;
  if (!qword_1000ED218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED218);
  }

  return result;
}

unint64_t sub_10001054C()
{
  result = qword_1000ED220;
  if (!qword_1000ED220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED220);
  }

  return result;
}

unint64_t sub_1000105A4()
{
  result = qword_1000ED228;
  if (!qword_1000ED228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED228);
  }

  return result;
}

uint64_t sub_1000105F8(uint64_t a1)
{
  sub_1000127C0();
  v2 = sub_1000C0668();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_100010668()
{
  result = qword_1000ED230;
  if (!qword_1000ED230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED230);
  }

  return result;
}

unint64_t sub_1000106C0()
{
  result = qword_1000ED238;
  if (!qword_1000ED238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED238);
  }

  return result;
}

unint64_t sub_100010718()
{
  result = qword_1000ED240;
  if (!qword_1000ED240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED240);
  }

  return result;
}

unint64_t sub_100010770()
{
  result = qword_1000ED248;
  if (!qword_1000ED248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED248);
  }

  return result;
}

uint64_t sub_10001084C(uint64_t a1)
{
  v2 = sub_10000E704();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10001089C()
{
  result = qword_1000ED260;
  if (!qword_1000ED260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED260);
  }

  return result;
}

uint64_t sub_1000108F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10000B028;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_1000109BC(uint64_t a1)
{
  v2 = sub_100010718();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100010A0C()
{
  result = qword_1000ED268;
  if (!qword_1000ED268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED268);
  }

  return result;
}

uint64_t sub_100010A64()
{
  v0 = sub_1000C0898();
  sub_10000D9B0(v0, qword_1000FAA80);
  sub_10000D978(v0, qword_1000FAA80);
  return sub_1000C0878();
}

uint64_t sub_100010AC8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_1000C0888();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1000C0B68();
  __chkstk_darwin(v9 - 8);
  v10 = sub_1000C2628();
  __chkstk_darwin(v10 - 8);
  v11 = sub_1000C0898();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v6 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  sub_1000C08A8();
  (*(v12 + 56))(v4, 1, 1, v11);
  sub_1000C0588();
  v13 = sub_1000C0578();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

void *sub_100010DF8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000C0368();
  *a1 = v3;
  return result;
}

void (*sub_100010E6C(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1000C0358();
  return sub_10000BCB4;
}

unint64_t sub_100010EE0()
{
  result = qword_1000ED270;
  if (!qword_1000ED270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED270);
  }

  return result;
}

uint64_t sub_100010F34(uint64_t a1, uint64_t a2)
{
  v4 = sub_100012718();
  v5 = sub_1000127C0();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_100010FA0()
{
  v0 = qword_1000ED1A0;

  return v0;
}

unint64_t sub_100010FDC()
{
  result = qword_1000ED278;
  if (!qword_1000ED278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED278);
  }

  return result;
}

unint64_t sub_100011034()
{
  result = qword_1000ED280;
  if (!qword_1000ED280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED280);
  }

  return result;
}

uint64_t sub_100011110@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = sub_10000D978(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_1000111BC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100012718();
  v7 = sub_10001276C();
  v8 = sub_1000127C0();
  *v5 = v2;
  v5[1] = sub_10000C134;

  return _URLRepresentableIntent<>.perform()(a1, a2, v6, v7, v8);
}

uint64_t sub_100011290@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000122B8();
  *a1 = result;
  return result;
}

uint64_t sub_1000112B8(uint64_t a1)
{
  v2 = sub_100010EE0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100011338(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1000113C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100011498(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000E77B0;
  v6._object = a2;
  v4 = sub_1000C2C88(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000114E4()
{
  v1 = sub_1000C0B68();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000115AC, 0, 0);
}

uint64_t sub_1000115AC(uint64_t isUniquelyReferenced_nonNull_native)
{
  v2 = 0;
  v3 = (v1[3] + 8);
  do
  {
    v4 = *(&off_1000E7870 + v2 + 32);
    if (v4 < 3 || ((sub_1000C0B58(), sub_1000C1088(), sub_1000C0B08(), v7 = sub_1000C1078(), v4 == 3) ? (v8 = v1[5]) : (v8 = v1[4]), (*v3)(v8, v1[2]), , (v7 & 1) != 0))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000BA320(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v6 = _swiftEmptyArrayStorage[2];
      v5 = _swiftEmptyArrayStorage[3];
      if (v6 >= v5 >> 1)
      {
        sub_1000BA320((v5 > 1), v6 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      *(&_swiftEmptyArrayStorage[4] + v6) = v4;
    }

    ++v2;
  }

  while (v2 != 5);
  v9 = _swiftEmptyArrayStorage[2];
  if (v9)
  {
    sub_1000BA300(0, v9, 0);
    v10 = _swiftEmptyArrayStorage[2];
    v11 = 32;
    do
    {
      v12 = *(_swiftEmptyArrayStorage + v11);
      v13 = _swiftEmptyArrayStorage[3];
      if (v10 >= v13 >> 1)
      {
        sub_1000BA300((v13 > 1), v10 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v10 + 1;
      *(&_swiftEmptyArrayStorage[4] + v10) = v12;
      ++v11;
      ++v10;
      --v9;
    }

    while (v9);
  }

  v14 = v1[1];

  return v14(_swiftEmptyArrayStorage);
}

uint64_t sub_10001182C(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1000C0B68();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000118F8, 0, 0);
}

uint64_t sub_1000118F8(uint64_t isUniquelyReferenced_nonNull_native)
{
  v2 = v1[2];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 32);
    v5 = (v1[4] + 8);
    do
    {
      v7 = *v4++;
      v6 = v7;
      v8 = v7 == 3;
      if (v7 < 3 || (v8 ? (sub_1000C0B58(), sub_1000C1088(), sub_1000C0B08(), v11 = sub_1000C1078(), v12 = v1[6]) : (sub_1000C0B58(), sub_1000C1088(), sub_1000C0B08(), v11 = sub_1000C1078(), v12 = v1[5]), (*v5)(v12, v1[3]), , (v11 & 1) != 0))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1000BA320(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v10 = _swiftEmptyArrayStorage[2];
        v9 = _swiftEmptyArrayStorage[3];
        if (v10 >= v9 >> 1)
        {
          sub_1000BA320((v9 > 1), v10 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v10 + 1;
        *(&_swiftEmptyArrayStorage[4] + v10) = v6;
      }

      --v3;
    }

    while (v3);
  }

  v13 = _swiftEmptyArrayStorage[2];
  if (v13)
  {
    sub_1000BA300(0, v13, 0);
    v14 = _swiftEmptyArrayStorage[2];
    v15 = 32;
    do
    {
      v16 = *(_swiftEmptyArrayStorage + v15);
      v17 = _swiftEmptyArrayStorage[3];
      if (v14 >= v17 >> 1)
      {
        sub_1000BA300((v17 > 1), v14 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v14 + 1;
      *(&_swiftEmptyArrayStorage[4] + v14) = v16;
      ++v15;
      ++v14;
      --v13;
    }

    while (v13);
  }

  v18 = v1[1];

  return v18(_swiftEmptyArrayStorage);
}

uint64_t sub_100011B74()
{
  v1 = sub_1000C0B68();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();

  return _swift_task_switch(sub_100011C3C, 0, 0);
}

uint64_t sub_100011C3C(uint64_t a1)
{
  v2 = 0;
  v3 = (v1[3] + 8);
  do
  {
    v4 = *(&off_1000E7898 + v2 + 32);
    if (v4 == 3)
    {
      sub_1000C0B58();
      sub_1000C1088();
      sub_1000C0B08();
      v6 = sub_1000C1078();
      (*v3)(v1[5], v1[2]);

      if (v6)
      {
        v4 = 3;
        goto LABEL_10;
      }
    }

    else
    {
      if (v4 != 4)
      {
        goto LABEL_10;
      }

      sub_1000C0B58();
      sub_1000C1088();
      sub_1000C0B08();
      v5 = sub_1000C1078();
      (*v3)(v1[4], v1[2]);

      if (v5)
      {
        v4 = 4;
        goto LABEL_10;
      }
    }

    ++v2;
  }

  while (v2 != 5);
  v4 = 5;
LABEL_10:

  v7 = v1[1];

  return v7(v4);
}

uint64_t sub_100011E20()
{
  sub_1000BA300(0, 5, 0);
  v2 = _swiftEmptyArrayStorage[2];
  v1 = _swiftEmptyArrayStorage[3];
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1000BA300((v1 > 1), v2 + 1, 1);
    v1 = _swiftEmptyArrayStorage[3];
    v3 = v1 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v4;
  *(&_swiftEmptyArrayStorage[4] + v2) = 0;
  v5 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    sub_1000BA300((v1 > 1), v2 + 2, 1);
    v1 = _swiftEmptyArrayStorage[3];
    v3 = v1 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v5;
  *(&_swiftEmptyArrayStorage[4] + v4) = 1;
  v6 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    sub_1000BA300((v1 > 1), v2 + 3, 1);
  }

  _swiftEmptyArrayStorage[2] = v6;
  *(&_swiftEmptyArrayStorage[4] + v5) = 2;
  v7 = _swiftEmptyArrayStorage[3];
  v8 = v7 >> 1;
  v9 = v2 + 4;
  if ((v7 >> 1) < (v2 + 4))
  {
    sub_1000BA300((v7 > 1), v2 + 4, 1);
    v7 = _swiftEmptyArrayStorage[3];
    v8 = v7 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v9;
  *(&_swiftEmptyArrayStorage[4] + v6) = 3;
  if (v8 < (v2 + 5))
  {
    sub_1000BA300((v7 > 1), v2 + 5, 1);
  }

  _swiftEmptyArrayStorage[2] = v2 + 5;
  *(&_swiftEmptyArrayStorage[4] + v9) = 4;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100012000(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  sub_1000C0898();
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_100012090, 0, 0);
}

uint64_t sub_100012090()
{
  for (i = 0; i != 5; ++i)
  {
    v4 = v0[7];
    v5 = v0[6];
    v6 = *(&off_1000E78C0 + i + 32);
    sub_10000DCDC(v6);
    v0[2] = sub_1000C2698();
    v0[3] = v7;
    v0[4] = v5;
    v0[5] = v4;
    sub_100012814();
    v8 = sub_1000C2A68();

    if (v8)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000BA320(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v3 = _swiftEmptyArrayStorage[2];
      v2 = _swiftEmptyArrayStorage[3];
      if (v3 >= v2 >> 1)
      {
        sub_1000BA320((v2 > 1), v3 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v3 + 1;
      *(&_swiftEmptyArrayStorage[4] + v3) = v6;
    }
  }

  v9 = _swiftEmptyArrayStorage[2];
  if (v9)
  {
    sub_1000BA300(0, v9, 0);
    v10 = _swiftEmptyArrayStorage;
    v11 = _swiftEmptyArrayStorage[2];
    v12 = 32;
    do
    {
      v13 = *(_swiftEmptyArrayStorage + v12);
      v14 = _swiftEmptyArrayStorage[3];
      if (v11 >= v14 >> 1)
      {
        sub_1000BA300((v14 > 1), v11 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v11 + 1;
      *(&_swiftEmptyArrayStorage[4] + v11) = v13;
      ++v12;
      ++v11;
      --v9;
    }

    while (v9);
  }

  else
  {

    v10 = &off_1000E78E8;
  }

  v15 = v0[1];

  return v15(v10);
}

uint64_t sub_1000122B8()
{
  v0 = sub_1000C0658();
  v24 = *(v0 - 8);
  v25 = v0;
  __chkstk_darwin(v0);
  v23 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100004D04(&qword_1000ED0B0, &unk_1000C43A0);
  __chkstk_darwin(v2 - 8);
  v22 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v21 - v5;
  v7 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  v10 = sub_1000C0888();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000C0B68();
  __chkstk_darwin(v14 - 8);
  v15 = sub_1000C2628();
  __chkstk_darwin(v15 - 8);
  v16 = sub_1000C0898();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v21 = sub_100004D04(&qword_1000ED288, &qword_1000C4CF0);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v11 + 104))(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  sub_1000C08A8();
  (*(v17 + 56))(v9, 1, 1, v16);
  v26[0] = 5;
  v18 = sub_1000C0318();
  v19 = *(*(v18 - 8) + 56);
  v19(v6, 1, 1, v18);
  v19(v22, 1, 1, v18);
  (*(v24 + 104))(v23, enum case for InputConnectionBehavior.default(_:), v25);
  sub_10000E704();
  return sub_1000C0388();
}

unint64_t sub_100012718()
{
  result = qword_1000ED290;
  if (!qword_1000ED290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED290);
  }

  return result;
}

unint64_t sub_10001276C()
{
  result = qword_1000ED298;
  if (!qword_1000ED298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED298);
  }

  return result;
}

unint64_t sub_1000127C0()
{
  result = qword_1000ED2A0;
  if (!qword_1000ED2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED2A0);
  }

  return result;
}

unint64_t sub_100012814()
{
  result = qword_1000ED2B8;
  if (!qword_1000ED2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED2B8);
  }

  return result;
}

uint64_t sub_100012888(uint64_t a1)
{
  v2 = [objc_opt_self() mainBundle];
  v7._countAndFlagsBits = 0x80000001000CCEE0;
  v10._countAndFlagsBits = 0x7462755320646C25;
  v10._object = 0xEC000000736B7361;
  v8._countAndFlagsBits = 0xD000000000000029;
  v8._object = 0x80000001000CCE90;
  v9.value._object = 0x80000001000CCEC0;
  v9.value._countAndFlagsBits = 0xD000000000000011;
  v3.super.isa = v2;
  sub_1000C0838(v8, v9, v3, v10, 0xD000000000000030, v7);

  sub_100004D04(&qword_1000ED2C0, &unk_1000C5A20);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000C3590;
  *(v4 + 56) = &type metadata for Int;
  *(v4 + 64) = &protocol witness table for Int;
  *(v4 + 32) = a1;
  v5 = sub_1000C2648();

  return v5;
}

uint64_t sub_1000129D8(uint64_t a1)
{
  v2 = [objc_opt_self() mainBundle];
  v7._countAndFlagsBits = 0x80000001000CCF50;
  v10._countAndFlagsBits = 0x696D657220646C25;
  v10._object = 0xED0000737265646ELL;
  v8._countAndFlagsBits = 0xD000000000000023;
  v8._object = 0x80000001000CCF20;
  v9.value._object = 0x80000001000CCEC0;
  v9.value._countAndFlagsBits = 0xD000000000000011;
  v3.super.isa = v2;
  sub_1000C0838(v8, v9, v3, v10, 0xD00000000000003ALL, v7);

  sub_100004D04(&qword_1000ED2C0, &unk_1000C5A20);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000C3590;
  *(v4 + 56) = &type metadata for Int;
  *(v4 + 64) = &protocol witness table for Int;
  *(v4 + 32) = a1;
  v5 = sub_1000C2648();

  return v5;
}

Swift::Int sub_100012B40()
{
  v1 = *v0;
  sub_1000C2D68();
  sub_1000C2D78(v1);
  return sub_1000C2D88();
}

Swift::Int sub_100012BB4(uint64_t a1)
{
  v2 = *v1;
  sub_1000C2D68();
  sub_1000C2D78(v2);
  return sub_1000C2D88();
}

void *sub_100012C08()
{
  v0 = sub_1000C2378();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _swiftEmptyArrayStorage;
  sub_1000BA340(0, 3, 0);
  v4 = v15;
  v5 = enum case for WidgetFamily.systemLarge(_:);
  v6 = *(v1 + 104);
  HIDWORD(v14) = enum case for WidgetFamily.systemMedium(_:);
  v6(v3, enum case for WidgetFamily.systemSmall(_:), v0);
  v15 = v4;
  v8 = v4[2];
  v7 = v4[3];
  if (v8 >= v7 >> 1)
  {
    sub_1000BA340((v7 > 1), v8 + 1, 1);
    v4 = v15;
  }

  v4[2] = v8 + 1;
  (*(v1 + 32))(v4 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v8, v3, v0);
  (*(v1 + 104))(v3, HIDWORD(v14), v0);
  v15 = v4;
  v10 = v4[2];
  v9 = v4[3];
  if (v10 >= v9 >> 1)
  {
    sub_1000BA340((v9 > 1), v10 + 1, 1);
    v4 = v15;
  }

  v4[2] = v10 + 1;
  (*(v1 + 32))(v4 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v10, v3, v0);
  (*(v1 + 104))(v3, v5, v0);
  v15 = v4;
  v12 = v4[2];
  v11 = v4[3];
  if (v12 >= v11 >> 1)
  {
    sub_1000BA340((v11 > 1), v12 + 1, 1);
    v4 = v15;
  }

  v4[2] = v12 + 1;
  (*(v1 + 32))(v4 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v12, v3, v0);
  return v4;
}

uint64_t getEnumTagSinglePayload for TTRSupportedSystemWidgetFamily(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRSupportedSystemWidgetFamily(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100013048()
{
  result = qword_1000ED2C8;
  if (!qword_1000ED2C8)
  {
    sub_100005334(&qword_1000ED2D0, qword_1000C4D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED2C8);
  }

  return result;
}

unint64_t sub_1000130B0()
{
  result = qword_1000ED2D8;
  if (!qword_1000ED2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED2D8);
  }

  return result;
}

char *sub_100013104(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v22 = *a2;
    *v4 = *a2;
    v4 = (v22 + ((v5 + 16) & ~v5));
  }

  else
  {
    v6 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v6;
    *(a1 + 16) = *(a2 + 1);
    *(a1 + 32) = a2[4];
    v7 = type metadata accessor for TTRNewWidgetViewModel(0);
    v8 = v7[7];
    v9 = sub_1000C0E58();
    v10 = *(*(v9 - 8) + 16);

    v10(&v4[v8], a2 + v8, v9);
    v11 = v7[8];
    v12 = &v4[v11];
    v13 = (a2 + v11);
    v14 = v13[1];
    *v12 = *v13;
    *(v12 + 1) = v14;
    v15 = v7[9];
    v16 = &v4[v15];
    v17 = (a2 + v15);
    v18 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
    v19 = *(v18 - 1);
    v20 = *(v19 + 48);

    if (v20(v17, 1, v18))
    {
      v21 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
      memcpy(v16, v17, *(*(v21 - 8) + 64));
    }

    else
    {
      v64 = v19;
      v23 = *v17;
      v24 = v17[1];
      *v16 = *v17;
      v16[1] = v24;
      v62 = v18[6];
      v25 = sub_1000C0818();
      v59 = *(v25 - 8);
      v60 = *(v59 + 48);
      v26 = v23;
      v27 = v24;
      if (v60(v17 + v62, 1, v25))
      {
        v28 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
        memcpy(v16 + v62, v17 + v62, *(*(v28 - 8) + 64));
      }

      else
      {
        (*(v59 + 16))(v16 + v62, v17 + v62, v25);
        (*(v59 + 56))(v16 + v62, 0, 1, v25);
      }

      v29 = v18[7];
      v30 = sub_1000C0938();
      (*(*(v30 - 8) + 16))(v16 + v29, v17 + v29, v30);
      v31 = v18[8];
      v32 = *(v17 + v31);
      *(v16 + v31) = v32;
      *(v16 + v18[9]) = *(v17 + v18[9]);
      *(v16 + v18[10]) = *(v17 + v18[10]);
      *(v16 + v18[11]) = *(v17 + v18[11]);
      v33 = *(v64 + 56);
      v34 = v32;
      v33(v16, 0, 1, v18);
    }

    v35 = v7[10];
    v65 = *(a2 + v35);
    *&v4[v35] = v65;
    v36 = v7[11];
    v37 = &v4[v36];
    v38 = (a2 + v36);
    v39 = v38[1];
    *v37 = *v38;
    *(v37 + 1) = v39;
    v40 = v7[12];
    v63 = *(a2 + v40);
    *&v4[v40] = v63;
    v41 = v7[13];
    v42 = &v4[v41];
    v43 = (a2 + v41);
    v44 = v43[1];
    *v42 = *v43;
    *(v42 + 1) = v44;
    v45 = v7[14];
    v46 = &v4[v45];
    v47 = (a2 + v45);
    v48 = v47[1];
    *v46 = *v47;
    *(v46 + 1) = v48;
    v4[v7[15]] = *(a2 + v7[15]);
    v49 = v7[16];
    v50 = &v4[v49];
    v51 = (a2 + v49);
    v52 = v51[1];
    *v50 = *v51;
    *(v50 + 1) = v52;
    *&v4[v7[17]] = *(a2 + v7[17]);
    v53 = v7[18];
    v54 = sub_1000C0938();
    v61 = *(*(v54 - 8) + 16);
    v55 = v65;

    v56 = v63;

    v61(&v4[v53], a2 + v53, v54);
    *&v4[v7[19]] = *(a2 + v7[19]);
    v4[v7[20]] = *(a2 + v7[20]);
    v57 = *(a3 + 24);
    *&v4[*(a3 + 20)] = *(a2 + *(a3 + 20));
    *&v4[v57] = *(a2 + v57);
  }

  return v4;
}

uint64_t sub_10001359C(uint64_t a1)
{

  v2 = type metadata accessor for TTRNewWidgetViewModel(0);
  v3 = v2[7];
  v4 = sub_1000C0E58();
  (*(*(v4 - 8) + 8))(a1 + v3, v4);

  v5 = (a1 + v2[9]);
  v6 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  if (!(*(*(v6 - 1) + 48))(v5, 1, v6))
  {

    v7 = v6[6];
    v8 = sub_1000C0818();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }

    v10 = v6[7];
    v11 = sub_1000C0938();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  v12 = v2[18];
  v13 = sub_1000C0938();
  (*(*(v13 - 8) + 8))(a1 + v12, v13);
}

uint64_t sub_10001380C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v6 = type metadata accessor for TTRNewWidgetViewModel(0);
  v7 = v6[7];
  v8 = sub_1000C0E58();
  v9 = *(*(v8 - 8) + 16);

  v9(a1 + v7, a2 + v7, v8);
  v10 = v6[8];
  v11 = (a1 + v10);
  v12 = (a2 + v10);
  v13 = v12[1];
  *v11 = *v12;
  v11[1] = v13;
  v14 = v6[9];
  v15 = (a1 + v14);
  v16 = (a2 + v14);
  v17 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v18 = *(v17 - 1);
  v19 = *(v18 + 48);

  if (v19(v16, 1, v17))
  {
    v20 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v15, v16, *(*(v20 - 8) + 64));
  }

  else
  {
    v62 = v18;
    v21 = *v16;
    v22 = v16[1];
    *v15 = *v16;
    v15[1] = v22;
    v60 = v17[6];
    v23 = sub_1000C0818();
    v57 = *(v23 - 8);
    v58 = *(v57 + 48);
    v24 = v21;
    v25 = v22;
    if (v58(v16 + v60, 1, v23))
    {
      v26 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
      memcpy(v15 + v60, v16 + v60, *(*(v26 - 8) + 64));
    }

    else
    {
      (*(v57 + 16))(v15 + v60, v16 + v60, v23);
      (*(v57 + 56))(v15 + v60, 0, 1, v23);
    }

    v27 = v17[7];
    v28 = sub_1000C0938();
    (*(*(v28 - 8) + 16))(v15 + v27, v16 + v27, v28);
    v29 = v17[8];
    v30 = *(v16 + v29);
    *(v15 + v29) = v30;
    *(v15 + v17[9]) = *(v16 + v17[9]);
    *(v15 + v17[10]) = *(v16 + v17[10]);
    *(v15 + v17[11]) = *(v16 + v17[11]);
    v31 = *(v62 + 56);
    v32 = v30;
    v31(v15, 0, 1, v17);
  }

  v33 = v6[10];
  v63 = *(a2 + v33);
  *(a1 + v33) = v63;
  v34 = v6[11];
  v35 = (a1 + v34);
  v36 = (a2 + v34);
  v37 = v36[1];
  *v35 = *v36;
  v35[1] = v37;
  v38 = v6[12];
  v61 = *(a2 + v38);
  *(a1 + v38) = v61;
  v39 = v6[13];
  v40 = (a1 + v39);
  v41 = (a2 + v39);
  v42 = v41[1];
  *v40 = *v41;
  v40[1] = v42;
  v43 = v6[14];
  v44 = (a1 + v43);
  v45 = (a2 + v43);
  v46 = v45[1];
  *v44 = *v45;
  v44[1] = v46;
  *(a1 + v6[15]) = *(a2 + v6[15]);
  v47 = v6[16];
  v48 = (a1 + v47);
  v49 = (a2 + v47);
  v50 = v49[1];
  *v48 = *v49;
  v48[1] = v50;
  *(a1 + v6[17]) = *(a2 + v6[17]);
  v51 = v6[18];
  v52 = sub_1000C0938();
  v59 = *(*(v52 - 8) + 16);
  v53 = v63;

  v54 = v61;

  v59(a1 + v51, a2 + v51, v52);
  *(a1 + v6[19]) = *(a2 + v6[19]);
  *(a1 + v6[20]) = *(a2 + v6[20]);
  v55 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v55) = *(a2 + v55);

  return a1;
}

char *sub_100013C58(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);

  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 4) = *(a2 + 4);

  v5 = type metadata accessor for TTRNewWidgetViewModel(0);
  v6 = v5[7];
  v7 = sub_1000C0E58();
  (*(*(v7 - 8) + 24))(&a1[v6], &a2[v6], v7);
  v8 = v5[8];
  v9 = &a1[v8];
  v10 = &a2[v8];
  *v9 = *v10;
  *(v9 + 1) = *(v10 + 1);

  v11 = v5[9];
  v12 = &a1[v11];
  v13 = &a2[v11];
  v14 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v15 = *(v14 - 1);
  v16 = *(v15 + 48);
  v17 = v16(v12, 1, v14);
  v18 = v16(v13, 1, v14);
  if (!v17)
  {
    if (v18)
    {
      sub_10001A504(v12, type metadata accessor for TTRNewWidgetViewModel.Reminder);
      goto LABEL_7;
    }

    v25 = *v13;
    v26 = *v12;
    *v12 = *v13;
    v27 = v25;

    v28 = *(v12 + 1);
    v29 = *(v13 + 1);
    *(v12 + 1) = v29;
    v30 = v29;

    v31 = v14[6];
    v32 = sub_1000C0818();
    v75 = *(v32 - 8);
    v33 = *(v75 + 48);
    v77 = v33(&v12[v31], 1, v32);
    v34 = v33(&v13[v31], 1, v32);
    if (v77)
    {
      if (!v34)
      {
        (*(v75 + 16))(&v12[v31], &v13[v31], v32);
        (*(v75 + 56))(&v12[v31], 0, 1, v32);
        goto LABEL_18;
      }

      v35 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v36 = &v12[v31];
      v37 = &v13[v31];
    }

    else
    {
      if (!v34)
      {
        (*(v75 + 24))(&v12[v31], &v13[v31], v32);
        goto LABEL_18;
      }

      (*(v75 + 8))(&v12[v31], v32);
      v35 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v36 = &v12[v31];
      v37 = &v13[v31];
    }

    memcpy(v36, v37, v35);
LABEL_18:
    v44 = v14[7];
    v45 = sub_1000C0938();
    (*(*(v45 - 8) + 24))(&v12[v44], &v13[v44], v45);
    v46 = v14[8];
    v47 = *&v12[v46];
    v48 = *&v13[v46];
    *&v12[v46] = v48;
    v49 = v48;

    *&v12[v14[9]] = *&v13[v14[9]];
    v12[v14[10]] = v13[v14[10]];
    v12[v14[11]] = v13[v14[11]];
    goto LABEL_19;
  }

  if (v18)
  {
LABEL_7:
    v24 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v12, v13, *(*(v24 - 8) + 64));
    goto LABEL_19;
  }

  v19 = *v13;
  *v12 = *v13;
  v76 = *(v13 + 1);
  *(v12 + 1) = v76;
  v78 = v14[6];
  v20 = sub_1000C0818();
  v73 = *(v20 - 8);
  v74 = *(v73 + 48);
  v21 = v19;
  v22 = v76;
  if (v74(&v13[v78], 1, v20))
  {
    v23 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&v12[v78], &v13[v78], *(*(v23 - 8) + 64));
  }

  else
  {
    (*(v73 + 16))(&v12[v78], &v13[v78], v20);
    (*(v73 + 56))(&v12[v78], 0, 1, v20);
  }

  v38 = v14[7];
  v39 = sub_1000C0938();
  (*(*(v39 - 8) + 16))(&v12[v38], &v13[v38], v39);
  v40 = v14[8];
  v41 = *&v13[v40];
  *&v12[v40] = v41;
  *&v12[v14[9]] = *&v13[v14[9]];
  v12[v14[10]] = v13[v14[10]];
  v12[v14[11]] = v13[v14[11]];
  v42 = *(v15 + 56);
  v43 = v41;
  v42(v12, 0, 1, v14);
LABEL_19:
  v50 = v5[10];
  v51 = *&a2[v50];
  v52 = *&a1[v50];
  *&a1[v50] = v51;
  v53 = v51;

  v54 = v5[11];
  v55 = &a1[v54];
  v56 = &a2[v54];
  *v55 = *v56;
  *(v55 + 1) = *(v56 + 1);

  v57 = v5[12];
  v58 = *&a1[v57];
  v59 = *&a2[v57];
  *&a1[v57] = v59;
  v60 = v59;

  v61 = v5[13];
  v62 = &a1[v61];
  v63 = &a2[v61];
  *v62 = *v63;
  *(v62 + 1) = *(v63 + 1);

  v64 = v5[14];
  v65 = &a1[v64];
  v66 = &a2[v64];
  *v65 = *v66;
  *(v65 + 1) = *(v66 + 1);

  a1[v5[15]] = a2[v5[15]];
  v67 = v5[16];
  v68 = &a1[v67];
  v69 = &a2[v67];
  *v68 = *v69;
  *(v68 + 1) = *(v69 + 1);

  *&a1[v5[17]] = *&a2[v5[17]];

  v70 = v5[18];
  v71 = sub_1000C0938();
  (*(*(v71 - 8) + 24))(&a1[v70], &a2[v70], v71);
  *&a1[v5[19]] = *&a2[v5[19]];

  a1[v5[20]] = a2[v5[20]];
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];
  return a1;
}

uint64_t sub_10001439C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v6 = type metadata accessor for TTRNewWidgetViewModel(0);
  v7 = v6[7];
  v8 = sub_1000C0E58();
  (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
  *(a1 + v6[8]) = *(a2 + v6[8]);
  v9 = v6[9];
  v10 = (a1 + v9);
  v11 = (a2 + v9);
  v12 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v13 = *(v12 - 1);
  if ((*(v13 + 48))(v11, 1, v12))
  {
    v14 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v10, v11, *(*(v14 - 8) + 64));
  }

  else
  {
    v26 = a3;
    v15 = v11[1];
    *v10 = *v11;
    v10[1] = v15;
    v16 = v12[6];
    v17 = sub_1000C0818();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v11 + v16, 1, v17))
    {
      v19 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
      memcpy(v10 + v16, v11 + v16, *(*(v19 - 8) + 64));
    }

    else
    {
      (*(v18 + 32))(v10 + v16, v11 + v16, v17);
      (*(v18 + 56))(v10 + v16, 0, 1, v17);
    }

    v20 = v12[7];
    v21 = sub_1000C0938();
    (*(*(v21 - 8) + 32))(v10 + v20, v11 + v20, v21);
    *(v10 + v12[8]) = *(v11 + v12[8]);
    *(v10 + v12[9]) = *(v11 + v12[9]);
    *(v10 + v12[10]) = *(v11 + v12[10]);
    *(v10 + v12[11]) = *(v11 + v12[11]);
    (*(v13 + 56))(v10, 0, 1, v12);
    a3 = v26;
  }

  *(a1 + v6[10]) = *(a2 + v6[10]);
  *(a1 + v6[11]) = *(a2 + v6[11]);
  *(a1 + v6[12]) = *(a2 + v6[12]);
  *(a1 + v6[13]) = *(a2 + v6[13]);
  *(a1 + v6[14]) = *(a2 + v6[14]);
  *(a1 + v6[15]) = *(a2 + v6[15]);
  *(a1 + v6[16]) = *(a2 + v6[16]);
  *(a1 + v6[17]) = *(a2 + v6[17]);
  v22 = v6[18];
  v23 = sub_1000C0938();
  (*(*(v23 - 8) + 32))(a1 + v22, a2 + v22, v23);
  *(a1 + v6[19]) = *(a2 + v6[19]);
  *(a1 + v6[20]) = *(a2 + v6[20]);
  v24 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v24) = *(a2 + v24);
  return a1;
}

uint64_t sub_10001473C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);

  v6 = type metadata accessor for TTRNewWidgetViewModel(0);
  v7 = v6[7];
  v8 = sub_1000C0E58();
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  v9 = v6[8];
  v10 = (a1 + v9);
  v11 = (a2 + v9);
  v13 = *v11;
  v12 = v11[1];
  *v10 = v13;
  v10[1] = v12;

  v14 = v6[9];
  v15 = (a1 + v14);
  v16 = (a2 + v14);
  v17 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v18 = *(v17 - 1);
  v19 = *(v18 + 48);
  v20 = v19(v15, 1, v17);
  v21 = v19(v16, 1, v17);
  if (!v20)
  {
    if (v21)
    {
      sub_10001A504(v15, type metadata accessor for TTRNewWidgetViewModel.Reminder);
      goto LABEL_7;
    }

    v28 = *v15;
    *v15 = *v16;

    v29 = *(v15 + 1);
    *(v15 + 1) = *(v16 + 1);

    v30 = v17[6];
    v31 = sub_1000C0818();
    v71 = *(v31 - 8);
    v32 = *(v71 + 48);
    v72 = v32(&v15[v30], 1, v31);
    v33 = v32(&v16[v30], 1, v31);
    if (v72)
    {
      if (!v33)
      {
        (*(v71 + 32))(&v15[v30], &v16[v30], v31);
        (*(v71 + 56))(&v15[v30], 0, 1, v31);
        goto LABEL_18;
      }

      v34 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v35 = &v15[v30];
      v36 = &v16[v30];
    }

    else
    {
      if (!v33)
      {
        (*(v71 + 40))(&v15[v30], &v16[v30], v31);
        goto LABEL_18;
      }

      (*(v71 + 8))(&v15[v30], v31);
      v34 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v35 = &v15[v30];
      v36 = &v16[v30];
    }

    memcpy(v35, v36, v34);
LABEL_18:
    v39 = v17[7];
    v40 = sub_1000C0938();
    (*(*(v40 - 8) + 40))(&v15[v39], &v16[v39], v40);
    v41 = v17[8];
    v42 = *&v15[v41];
    *&v15[v41] = *&v16[v41];

    *&v15[v17[9]] = *&v16[v17[9]];
    v15[v17[10]] = v16[v17[10]];
    v15[v17[11]] = v16[v17[11]];
    goto LABEL_19;
  }

  if (v21)
  {
LABEL_7:
    v27 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v15, v16, *(*(v27 - 8) + 64));
    goto LABEL_19;
  }

  v22 = *(v16 + 1);
  *v15 = *v16;
  *(v15 + 1) = v22;
  v23 = v17[6];
  v24 = sub_1000C0818();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(&v16[v23], 1, v24))
  {
    v26 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&v15[v23], &v16[v23], *(*(v26 - 8) + 64));
  }

  else
  {
    (*(v25 + 32))(&v15[v23], &v16[v23], v24);
    (*(v25 + 56))(&v15[v23], 0, 1, v24);
  }

  v37 = v17[7];
  v38 = sub_1000C0938();
  (*(*(v38 - 8) + 32))(&v15[v37], &v16[v37], v38);
  *&v15[v17[8]] = *&v16[v17[8]];
  *&v15[v17[9]] = *&v16[v17[9]];
  v15[v17[10]] = v16[v17[10]];
  v15[v17[11]] = v16[v17[11]];
  (*(v18 + 56))(v15, 0, 1, v17);
LABEL_19:
  v43 = v6[10];
  v44 = *(a1 + v43);
  *(a1 + v43) = *(a2 + v43);

  v45 = v6[11];
  v46 = (a1 + v45);
  v47 = (a2 + v45);
  v49 = *v47;
  v48 = v47[1];
  *v46 = v49;
  v46[1] = v48;

  v50 = v6[12];
  v51 = *(a1 + v50);
  *(a1 + v50) = *(a2 + v50);

  v52 = v6[13];
  v53 = (a1 + v52);
  v54 = (a2 + v52);
  v56 = *v54;
  v55 = v54[1];
  *v53 = v56;
  v53[1] = v55;

  v57 = v6[14];
  v58 = (a1 + v57);
  v59 = (a2 + v57);
  v61 = *v59;
  v60 = v59[1];
  *v58 = v61;
  v58[1] = v60;

  *(a1 + v6[15]) = *(a2 + v6[15]);
  v62 = v6[16];
  v63 = (a1 + v62);
  v64 = (a2 + v62);
  v66 = *v64;
  v65 = v64[1];
  *v63 = v66;
  v63[1] = v65;

  *(a1 + v6[17]) = *(a2 + v6[17]);

  v67 = v6[18];
  v68 = sub_1000C0938();
  (*(*(v68 - 8) + 40))(a1 + v67, a2 + v67, v68);
  *(a1 + v6[19]) = *(a2 + v6[19]);

  *(a1 + v6[20]) = *(a2 + v6[20]);
  v69 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v69) = *(a2 + v69);
  return a1;
}

void sub_100014E50(char *a1@<X0>, char *a2@<X8>)
{
  v119 = type metadata accessor for TTRIAnyListComplicationWidgetView.NoReminderView(0);
  __chkstk_darwin(v119);
  v5 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_100004D04(&qword_1000ED450, &qword_1000C4F08);
  __chkstk_darwin(v115);
  v118 = &v96 - v6;
  v109 = sub_100004D04(&qword_1000ED458, &qword_1000C4F10);
  __chkstk_darwin(v109);
  v111 = &v96 - v7;
  v117 = sub_100004D04(&qword_1000ED460, &qword_1000C4F18);
  __chkstk_darwin(v117);
  v112 = &v96 - v8;
  v110 = sub_100004D04(&qword_1000ED468, &qword_1000C4F20);
  __chkstk_darwin(v110);
  v108 = &v96 - v9;
  v10 = type metadata accessor for TTRIAnyListComplicationWidgetView.InteractiveReminderView(0);
  __chkstk_darwin(v10);
  v101 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v104 = &v96 - v13;
  __chkstk_darwin(v14);
  v16 = &v96 - v15;
  v17 = sub_100004D04(&qword_1000ED470, &qword_1000C4F28);
  __chkstk_darwin(v17);
  v100 = &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v102 = &v96 - v20;
  __chkstk_darwin(v21);
  v106 = &v96 - v22;
  __chkstk_darwin(v23);
  v105 = &v96 - v24;
  __chkstk_darwin(v25);
  v103 = &v96 - v26;
  __chkstk_darwin(v27);
  v107 = &v96 - v28;
  __chkstk_darwin(v29);
  v31 = &v96 - v30;
  __chkstk_darwin(v32);
  v34 = &v96 - v33;
  v35 = sub_100004D04(&qword_1000ED478, &qword_1000C4F30);
  __chkstk_darwin(v35 - 8);
  v116 = &v96 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v114 = &v96 - v38;
  v39 = type metadata accessor for TTRNewWidgetViewModel(0);
  v40 = a1;
  v120 = 0;
  v41 = 0;
  v121 = 0;
  v122 = 0;
  v42 = *&v40[*(v39 + 76)];
  if (*(v42 + 16) <= 1uLL)
  {
    v43 = v39;
    v98 = v5;
    v99 = v17;
    v44 = *(v40 + 1);
    v122 = *v40;
    v97 = v40;
    KeyPath = swift_getKeyPath();

    v46 = sub_1000C1FC8();
    v47 = *(v42 + 16);
    v121 = v44;
    v41 = KeyPath;
    v48 = v46;

    v120 = v48;
    if (v47 < 2)
    {
      v113 = v41;
      if (v47)
      {
        v79 = *(type metadata accessor for TTRNewWidgetViewModel.Reminder(0) - 8);
        v80 = v101;
        sub_10001A0E0(v42 + ((*(v79 + 80) + 32) & ~*(v79 + 80)), v101, type metadata accessor for TTRNewWidgetViewModel.Reminder);
        *(v80 + v10[5]) = 1;
        v81 = v80 + v10[6];
        *v81 = swift_getKeyPath();
        *(v81 + 8) = 0;
        v82 = v80 + v10[7];
        *v82 = swift_getKeyPath();
        *(v82 + 8) = 0;
        sub_1000C2108();
        sub_1000C1788();
        v83 = v100;
        sub_10001A1F0(v80, v100);
        v84 = (v83 + *(v99 + 36));
        v85 = v135;
        v84[4] = v134;
        v84[5] = v85;
        v84[6] = v136;
        v86 = v131;
        *v84 = v130;
        v84[1] = v86;
        v87 = v133;
        v84[2] = v132;
        v84[3] = v87;
        v88 = v102;
        sub_10001DA60(v83, v102, &qword_1000ED470, &qword_1000C4F28);
        sub_1000082B4(v88, v111, &qword_1000ED470, &qword_1000C4F28);
        swift_storeEnumTagMultiPayload();
        sub_100008478(&qword_1000ED480, &qword_1000ED468, &qword_1000C4F20, &protocol conformance descriptor for TupleView<A>);
        sub_10001A254();
        v89 = v112;
        sub_1000C1AE8();
        sub_1000082B4(v89, v118, &qword_1000ED460, &qword_1000C4F18);
        swift_storeEnumTagMultiPayload();
        sub_10001A358();
        sub_10001A310(&qword_1000ED4A0, type metadata accessor for TTRIAnyListComplicationWidgetView.NoReminderView, &unk_1000C5240);
        v72 = v114;
        sub_1000C1AE8();
        sub_1000084C0(v89, &qword_1000ED460, &qword_1000C4F18);
        sub_1000084C0(v88, &qword_1000ED470, &qword_1000C4F28);
      }

      else
      {
        v90 = *(v43 + 28);
        v91 = sub_1000C0E58();
        v92 = v98;
        (*(*(v91 - 8) + 16))(v98, &v97[v90], v91);
        v93 = v119;
        v94 = v92 + *(v119 + 20);
        *v94 = swift_getKeyPath();
        *(v94 + 8) = 0;
        v95 = *(v93 + 24);
        *(v92 + v95) = sub_1000C1FC8();
        sub_10001A0E0(v92, v118, type metadata accessor for TTRIAnyListComplicationWidgetView.NoReminderView);
        swift_storeEnumTagMultiPayload();
        sub_10001A358();
        sub_10001A310(&qword_1000ED4A0, type metadata accessor for TTRIAnyListComplicationWidgetView.NoReminderView, &unk_1000C5240);
        v72 = v114;
        sub_1000C1AE8();
        sub_10001A504(v92, type metadata accessor for TTRIAnyListComplicationWidgetView.NoReminderView);
      }

      goto LABEL_6;
    }

    v17 = v99;
  }

  v102 = a2;
  v49 = *(type metadata accessor for TTRNewWidgetViewModel.Reminder(0) - 8);
  v50 = v42 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
  sub_10001A0E0(v50, v16, type metadata accessor for TTRNewWidgetViewModel.Reminder);
  v16[v10[5]] = 0;
  v51 = &v16[v10[6]];
  *v51 = swift_getKeyPath();
  v51[8] = 0;
  v52 = &v16[v10[7]];
  *v52 = swift_getKeyPath();
  v52[8] = 0;
  sub_1000C2108();
  sub_1000C1788();
  sub_10001A1F0(v16, v31);
  v53 = &v31[*(v17 + 36)];
  v54 = v128;
  *(v53 + 4) = v127;
  *(v53 + 5) = v54;
  *(v53 + 6) = v129;
  v55 = v124;
  *v53 = v123;
  *(v53 + 1) = v55;
  v56 = v126;
  *(v53 + 2) = v125;
  *(v53 + 3) = v56;
  sub_10001DA60(v31, v34, &qword_1000ED470, &qword_1000C4F28);
  if (*(v42 + 16) >= 2uLL)
  {
    v113 = v41;
    v57 = v104;
    sub_10001A0E0(v50 + *(v49 + 72), v104, type metadata accessor for TTRNewWidgetViewModel.Reminder);
    *(v57 + v10[5]) = 0;
    v58 = v57 + v10[6];
    *v58 = swift_getKeyPath();
    *(v58 + 8) = 0;
    v59 = v57 + v10[7];
    *v59 = swift_getKeyPath();
    *(v59 + 8) = 0;
    sub_1000C2108();
    sub_1000C1788();
    v60 = v57;
    v61 = v103;
    sub_10001A1F0(v60, v103);
    v62 = (v61 + *(v17 + 36));
    v63 = v135;
    v62[4] = v134;
    v62[5] = v63;
    v62[6] = v136;
    v64 = v131;
    *v62 = v130;
    v62[1] = v64;
    v65 = v133;
    v62[2] = v132;
    v62[3] = v65;
    v66 = v107;
    sub_10001DA60(v61, v107, &qword_1000ED470, &qword_1000C4F28);
    v67 = v105;
    sub_1000082B4(v34, v105, &qword_1000ED470, &qword_1000C4F28);
    v68 = v106;
    sub_1000082B4(v66, v106, &qword_1000ED470, &qword_1000C4F28);
    v69 = v108;
    sub_1000082B4(v67, v108, &qword_1000ED470, &qword_1000C4F28);
    v70 = sub_100004D04(&qword_1000ED4B0, &qword_1000C4FB8);
    sub_1000082B4(v68, v69 + *(v70 + 48), &qword_1000ED470, &qword_1000C4F28);
    sub_1000084C0(v68, &qword_1000ED470, &qword_1000C4F28);
    sub_1000084C0(v67, &qword_1000ED470, &qword_1000C4F28);
    sub_1000082B4(v69, v111, &qword_1000ED468, &qword_1000C4F20);
    swift_storeEnumTagMultiPayload();
    sub_100008478(&qword_1000ED480, &qword_1000ED468, &qword_1000C4F20, &protocol conformance descriptor for TupleView<A>);
    v109 = v34;
    sub_10001A254();
    v71 = v112;
    sub_1000C1AE8();
    sub_1000082B4(v71, v118, &qword_1000ED460, &qword_1000C4F18);
    swift_storeEnumTagMultiPayload();
    sub_10001A358();
    sub_10001A310(&qword_1000ED4A0, type metadata accessor for TTRIAnyListComplicationWidgetView.NoReminderView, &unk_1000C5240);
    v72 = v114;
    sub_1000C1AE8();
    sub_1000084C0(v71, &qword_1000ED460, &qword_1000C4F18);
    sub_1000084C0(v69, &qword_1000ED468, &qword_1000C4F20);
    sub_1000084C0(v66, &qword_1000ED470, &qword_1000C4F28);
    sub_1000084C0(v109, &qword_1000ED470, &qword_1000C4F28);
    a2 = v102;
LABEL_6:
    v73 = v116;
    sub_1000082B4(v72, v116, &qword_1000ED478, &qword_1000C4F30);
    v74 = v122;
    v75 = v121;
    *a2 = v122;
    *(a2 + 1) = v75;
    v76 = v113;
    *(a2 + 2) = v113;
    *(a2 + 3) = 0;
    v77 = v120;
    *(a2 + 4) = v120;
    v78 = sub_100004D04(&qword_1000ED4A8, &qword_1000C4F88);
    sub_1000082B4(v73, &a2[*(v78 + 48)], &qword_1000ED478, &qword_1000C4F30);
    sub_10001A410(v74, v75, v76, 0, v77);
    sub_10001A460(v74, v75, v76, 0, v77);
    sub_1000084C0(v72, &qword_1000ED478, &qword_1000C4F30);
    sub_1000084C0(v73, &qword_1000ED478, &qword_1000C4F30);
    sub_10001A460(v74, v75, v76, 0, v77);
    return;
  }

  __break(1u);
}

uint64_t sub_100015DA0()
{
  v1 = sub_100004D04(&qword_1000ECCE0, &qword_1000C4EF0);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - v2;
  v4 = sub_100004D04(&qword_1000ED438, &qword_1000C4EF8);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  *v6 = sub_1000C1A48();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v7 = sub_100004D04(&qword_1000ED440, &qword_1000C4F00);
  sub_100014E50(v0, &v6[*(v7 + 44)]);
  v8 = *(type metadata accessor for TTRNewWidgetViewModel(0) + 72);
  v9 = sub_1000C0938();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v3, &v0[v8], v9);
  (*(v10 + 56))(v3, 0, 1, v9);
  sub_100008478(&qword_1000ED448, &qword_1000ED438, &qword_1000C4EF8, &protocol conformance descriptor for VStack<A>);
  sub_1000C1E38();
  sub_1000084C0(v3, &qword_1000ECCE0, &qword_1000C4EF0);
  return sub_1000084C0(v6, &qword_1000ED438, &qword_1000C4EF8);
}

uint64_t sub_100015FA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000C1938();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1[2];
  v26 = *(a1 + 24);
  v8 = v26;

  sub_1000082B4(&v25, &v24, &qword_1000ED668, &qword_1000C76F0);
  if (v8 != 1)
  {
    sub_1000C2958();
    v9 = sub_1000C1BC8();
    sub_1000C1548();

    sub_1000C1928();
    swift_getAtKeyPath();
    sub_1000084C0(&v25, &qword_1000ED668, &qword_1000C76F0);
    (*(v5 + 8))(v7, v4);
  }

  v10 = sub_1000C1DA8();
  v12 = v11;
  v14 = v13;

  v15 = sub_1000C1D78();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_10000537C(v10, v12, v14 & 1);

  *a2 = v15;
  *(a2 + 8) = v17;
  *(a2 + 16) = v19 & 1;
  *(a2 + 24) = v21;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  sub_100008420(v15, v17, v19 & 1);

  sub_10000537C(v15, v17, v19 & 1);
}

__n128 sub_100016228@<Q0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v16[0] = *v2;
  v16[1] = v4;
  v17 = *(v2 + 32);
  v5 = sub_1000C1998();
  sub_100015FA8(v16, &v11);
  v6 = v12;
  v7 = v13;
  v8 = v14;
  v9 = v15;
  result = v11;
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = result;
  *(a2 + 40) = v6;
  *(a2 + 48) = v7;
  *(a2 + 56) = v8;
  *(a2 + 64) = v9;
  return result;
}

id sub_1000162A8@<X0>(uint64_t a1@<X8>)
{
  v79 = a1;
  v2 = sub_1000C1938();
  v71 = *(v2 - 1);
  v72 = v2;
  __chkstk_darwin(v2);
  v70 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_100004D04(&qword_1000ED608, &unk_1000C52E0);
  __chkstk_darwin(v74);
  v78 = (&v69 - v4);
  v76 = type metadata accessor for TTRIAnyListComplicationWidgetView.ReminderToggleStyle(0);
  __chkstk_darwin(v76);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_100004D04(&qword_1000ED610, &qword_1000C6390);
  v73 = *(v75 - 8);
  __chkstk_darwin(v75);
  v8 = &v69 - v7;
  v77 = sub_100004D04(&qword_1000ED618, &qword_1000C52F0);
  v9 = *(v77 - 8);
  __chkstk_darwin(v77);
  v11 = (&v69 - v10);
  v12 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
  __chkstk_darwin(v12 - 8);
  v14 = &v69 - v13;
  v15 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  sub_1000082B4(v1 + v15[6], v14, &qword_1000ECE78, &unk_1000C3810);
  v16 = sub_1000C0818();
  v17 = (*(*(v16 - 8) + 48))(v14, 1, v16);
  sub_1000084C0(v14, &qword_1000ECE78, &unk_1000C3810);
  if (v17 == 1)
  {
    if (*(v1 + v15[9]) >= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }
  }

  else
  {
    v18 = 1;
  }

  v19 = *(v1 + v15[8]);
  if (v19)
  {
    v20 = *(v1 + v15[10]);
    v21 = *v1;
    v22 = v19;
    v71 = v11;
    v72 = v22;
    v23 = v22;
    v24 = [v21 string];
    v25 = sub_1000C2678();
    v27 = v26;

    aBlock = sub_1000BB438(v23, v25, v27, v20 ^ 1u);
    v81 = v28;
    v82 = v29;
    sub_10001C6DC();
    sub_1000C20C8();
    LOBYTE(v20) = *(v1 + *(type metadata accessor for TTRIAnyListComplicationWidgetView.InteractiveReminderView(0) + 20));
    sub_10001A0E0(v1, v6, type metadata accessor for TTRNewWidgetViewModel.Reminder);
    v30 = v76;
    v6[*(v76 + 20)] = v20;
    *&v6[v30[6]] = v18;
    v31 = &v6[v30[7]];
    *v31 = swift_getKeyPath();
    v31[8] = 0;
    v32 = &v6[v30[8]];
    *v32 = swift_getKeyPath();
    v32[8] = 0;
    v33 = &v6[v30[9]];
    *v33 = swift_getKeyPath();
    v33[8] = 0;
    v34 = sub_100008478(&qword_1000ED628, &qword_1000ED610, &qword_1000C6390, &protocol conformance descriptor for Toggle<A>);
    v35 = sub_10001A310(&qword_1000ED630, type metadata accessor for TTRIAnyListComplicationWidgetView.ReminderToggleStyle, &unk_1000C53F0);
    v36 = v71;
    v37 = v75;
    sub_1000C1E98();
    sub_10001A504(v6, type metadata accessor for TTRIAnyListComplicationWidgetView.ReminderToggleStyle);
    (*(v73 + 8))(v8, v37);
    v38 = v77;
    (*(v9 + 16))(v78, v36, v77);
    swift_storeEnumTagMultiPayload();
    sub_100004D04(&qword_1000ED620, &qword_1000C63C0);
    aBlock = v37;
    v81 = v30;
    v82 = v34;
    v83 = v35;
    swift_getOpaqueTypeConformance2();
    sub_10001C624();
    sub_1000C1AE8();

    return (*(v9 + 8))(v36, v38);
  }

  v73 = v18;
  v40 = *v1;
  v69 = type metadata accessor for TTRIAnyListComplicationWidgetView.InteractiveReminderView(0);
  v41 = v1 + *(v69 + 28);
  v42 = *v41;
  v43 = v41[8];

  if ((v43 & 1) == 0)
  {
    sub_1000C2958();
    v44 = sub_1000C1BC8();
    sub_1000C1548();

    v45 = v70;
    sub_1000C1928();
    swift_getAtKeyPath();

    v71[1](v45, v72);
    v42 = aBlock;
  }

  result = [v40 string];
  if (!result)
  {
    goto LABEL_17;
  }

  v46 = result;
  v86 = xmmword_1000C35A0;
  v87 = 0;
  v88 = _swiftEmptyArrayStorage;
  v47 = [objc_opt_self() attributeName];
  v48 = [v40 length];
  v49 = swift_allocObject();
  v49[2] = &v86;
  v49[3] = v46;
  v49[4] = v42;
  v49[5] = 0;
  v50 = swift_allocObject();
  *(v50 + 16) = sub_1000083E4;
  *(v50 + 24) = v49;
  v84 = sub_100008400;
  v85 = v50;
  aBlock = _NSConcreteStackBlock;
  v81 = 1107296256;
  v82 = sub_100045698;
  v83 = &unk_1000E80C0;
  v51 = _Block_copy(&aBlock);

  v52 = v46;

  [v40 enumerateAttribute:v47 inRange:0 options:v48 usingBlock:{0, v51}];

  _Block_release(v51);
  LOBYTE(v47) = swift_isEscapingClosureAtFileLocation();

  if (v47)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  v53 = v86;
  v54 = v87;

  v55 = *(v1 + *(v69 + 24) + 8);

  if ((v55 & 1) == 0)
  {
    sub_1000C2958();
    v56 = sub_1000C1BC8();
    sub_1000C1548();

    v57 = v70;
    sub_1000C1928();
    swift_getAtKeyPath();

    v71[1](v57, v72);
  }

  v58 = sub_1000C1DA8();
  v60 = v59;
  v62 = v61;
  v64 = v63;

  sub_10000537C(v53, *(&v53 + 1), v54);

  KeyPath = swift_getKeyPath();
  v66 = v78;
  *v78 = v58;
  v66[1] = v60;
  *(v66 + 16) = v62 & 1;
  v66[3] = v64;
  v66[4] = KeyPath;
  v66[5] = v73;
  *(v66 + 48) = 0;
  swift_storeEnumTagMultiPayload();
  sub_100004D04(&qword_1000ED620, &qword_1000C63C0);
  v67 = sub_100008478(&qword_1000ED628, &qword_1000ED610, &qword_1000C6390, &protocol conformance descriptor for Toggle<A>);
  v68 = sub_10001A310(&qword_1000ED630, type metadata accessor for TTRIAnyListComplicationWidgetView.ReminderToggleStyle, &unk_1000C53F0);
  aBlock = v75;
  v81 = v76;
  v82 = v67;
  v83 = v68;
  swift_getOpaqueTypeConformance2();
  sub_10001C624();
  return sub_1000C1AE8();
}

uint64_t sub_100016D9C@<X0>(void **a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_100004D04(&qword_1000ED738, &qword_1000C5430);
  v51 = *(v4 - 8);
  v52 = v4;
  __chkstk_darwin(v4);
  v47 = (&v40 - v5);
  v6 = sub_1000C1938();
  v43 = *(v6 - 8);
  v44 = v6;
  __chkstk_darwin(v6);
  v42 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_100004D04(&qword_1000ED740, &qword_1000C5438);
  __chkstk_darwin(v45);
  v46 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v40 - v10;
  v12 = sub_100004D04(&qword_1000ED748, &qword_1000C5440);
  __chkstk_darwin(v12 - 8);
  v48 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v40 - v15;
  v49 = sub_1000C1B18();
  v53 = sub_1000C1A48();
  v59 = 0;
  sub_10001748C(a1, &v56);
  v62 = v57[1];
  v63 = v57[2];
  v64 = v57[3];
  v65 = *&v57[4];
  v60 = v56;
  v61 = v57[0];
  v67 = *&v57[4];
  v66[2] = v57[1];
  v66[3] = v57[2];
  v66[4] = v57[3];
  v66[0] = v56;
  v66[1] = v57[0];
  sub_1000082B4(&v60, v54, &qword_1000ED750, &qword_1000C5448);
  sub_1000084C0(v66, &qword_1000ED750, &qword_1000C5448);
  *(&v58[2] + 7) = v62;
  *(&v58[3] + 7) = v63;
  *(&v58[4] + 7) = v64;
  *(&v58[5] + 7) = v65;
  *(v58 + 7) = v60;
  *(&v58[1] + 7) = v61;
  v50 = v59;
  if ((sub_1000C1B18() & 1) != 0 && *(a1 + *(type metadata accessor for TTRNewWidgetViewModel.Reminder(0) + 44)) == 1)
  {
    v41 = sub_1000C2018();
    v17 = a1 + *(type metadata accessor for TTRIAnyListComplicationWidgetView.ReminderToggleStyle(0) + 28);
    v18 = *v17;
    v19 = v17[8];

    if ((v19 & 1) == 0)
    {
      sub_1000C2958();
      v20 = sub_1000C1BC8();
      sub_1000C1548();

      v21 = v42;
      sub_1000C1928();
      swift_getAtKeyPath();

      (*(v43 + 8))(v21, v44);
      v18 = v56;
    }

    KeyPath = swift_getKeyPath();
    LODWORD(v44) = sub_1000C1B08();
    v23 = &v11[*(v45 + 36)];
    v24 = *(sub_100004D04(&qword_1000ED768, &qword_1000C5490) + 28);
    v25 = enum case for Image.Scale.small(_:);
    v26 = sub_1000C2048();
    (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
    *v23 = swift_getKeyPath();
    *v11 = v41;
    *(v11 + 1) = KeyPath;
    *(v11 + 2) = v18;
    *(v11 + 6) = v44;
    v27 = v46;
    sub_1000082B4(v11, v46, &qword_1000ED740, &qword_1000C5438);
    v28 = v47;
    *v47 = 0;
    *(v28 + 8) = 1;
    v29 = sub_100004D04(&qword_1000ED770, &qword_1000C54C8);
    sub_1000082B4(v27, v28 + *(v29 + 48), &qword_1000ED740, &qword_1000C5438);
    sub_1000084C0(v11, &qword_1000ED740, &qword_1000C5438);
    sub_1000084C0(v27, &qword_1000ED740, &qword_1000C5438);
    sub_10001DA60(v28, v16, &qword_1000ED738, &qword_1000C5430);
    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  (*(v51 + 56))(v16, v30, 1, v52);
  v31 = v49 & 1;
  v32 = v48;
  sub_1000082B4(v16, v48, &qword_1000ED748, &qword_1000C5440);
  v33 = v53;
  v54[0] = v53;
  v54[1] = 0;
  v34 = v50;
  LOBYTE(v55[0]) = v50;
  *(&v55[1] + 1) = v58[1];
  *(v55 + 1) = v58[0];
  *(&v55[4] + 1) = v58[4];
  *(&v55[3] + 1) = v58[3];
  *(&v55[2] + 1) = v58[2];
  v55[5] = *(&v58[4] + 15);
  v35 = v55[0];
  *(a2 + 8) = v53;
  v36 = v55[1];
  *(a2 + 56) = v55[2];
  v37 = v55[4];
  *(a2 + 72) = v55[3];
  *(a2 + 88) = v37;
  *(a2 + 104) = v55[5];
  *(a2 + 24) = v35;
  *a2 = v31;
  *(a2 + 40) = v36;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  v38 = sub_100004D04(&qword_1000ED758, &qword_1000C5450);
  sub_1000082B4(v32, a2 + *(v38 + 80), &qword_1000ED748, &qword_1000C5440);
  sub_1000082B4(v54, &v56, &qword_1000ED760, &qword_1000C5458);
  sub_1000084C0(v16, &qword_1000ED748, &qword_1000C5440);
  sub_1000084C0(v32, &qword_1000ED748, &qword_1000C5440);
  *(&v57[2] + 1) = v58[2];
  *(&v57[3] + 1) = v58[3];
  *(&v57[4] + 1) = v58[4];
  v57[5] = *(&v58[4] + 15);
  *(v57 + 1) = v58[0];
  v56 = v33;
  LOBYTE(v57[0]) = v34;
  *(&v57[1] + 1) = v58[1];
  return sub_1000084C0(&v56, &qword_1000ED760, &qword_1000C5458);
}

id sub_10001748C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
  __chkstk_darwin(v4 - 8);
  v70 = &v69 - v5;
  v76 = sub_1000C0818();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v69 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v71 = &v69 - v8;
  v9 = sub_1000C1938();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v84 = type metadata accessor for TTRIAnyListComplicationWidgetView.ReminderToggleStyle(0);
  v85 = a1;
  v14 = a1 + v84[9];
  v15 = *v14;
  LOBYTE(a1) = v14[8];

  if ((a1 & 1) == 0)
  {
    sub_1000C2958();
    v16 = sub_1000C1BC8();
    sub_1000C1548();

    sub_1000C1928();
    swift_getAtKeyPath();

    (*(v10 + 8))(v12, v9);
    v15 = aBlock[0];
  }

  v72 = v12;
  v73 = v10;
  v74 = v9;
  result = [v13 string];
  if (result)
  {
    v18 = result;
    v89 = xmmword_1000C35A0;
    v90 = 0;
    v91 = _swiftEmptyArrayStorage;
    v19 = [objc_opt_self() attributeName];
    v20 = [v13 length];
    v21 = swift_allocObject();
    v21[2] = &v89;
    v21[3] = v18;
    v21[4] = v15;
    v21[5] = 0;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_100008748;
    *(v22 + 24) = v21;
    aBlock[4] = sub_100008724;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100045698;
    aBlock[3] = &unk_1000E8158;
    v23 = _Block_copy(aBlock);

    v24 = v18;

    [v13 enumerateAttribute:v19 inRange:0 options:v20 usingBlock:{0, v23}];

    _Block_release(v23);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      v26 = v89;
      v27 = v90;

      v28 = v85 + v84[7];
      v29 = v28[8];
      if (v29 == 1)
      {
        aBlock[0] = *v28;
      }

      else
      {

        sub_1000C2958();
        v30 = sub_1000C1BC8();
        sub_1000C1548();

        v31 = v72;
        sub_1000C1928();
        swift_getAtKeyPath();

        (*(v73 + 8))(v31, v74);
      }

      v32 = sub_1000C1DA8();
      v81 = v33;
      v82 = v32;
      v35 = v34;
      v83 = v36;

      sub_10000537C(v26, *(&v26 + 1), v27);

      v38 = v84;
      v37 = v85;
      v78 = *(v85 + v84[6]);
      KeyPath = swift_getKeyPath();
      v77 = sub_1000C1B08();
      v87 = v35 & 1;
      v86 = 0;
      v39 = *(v37 + v38[5]) == 1;
      v79 = a2;
      if (!v39)
      {
        goto LABEL_12;
      }

      v40 = v70;
      sub_100017DAC(v70);
      v41 = v75;
      v42 = v76;
      if ((*(v75 + 48))(v40, 1, v76) == 1)
      {
        sub_1000084C0(v40, &qword_1000ECE78, &unk_1000C3810);
LABEL_12:
        v43 = 0;
        v44 = 0;
        v45 = 0;
        v46 = 0;
LABEL_17:
        v62 = v86;
        v63 = v87;
        v64 = v81;
        v65 = v82;
        sub_100008420(v82, v81, v87 & 1);
        v66 = v83;

        v67 = KeyPath;

        sub_10001DAC8(v43, v44, v45, v46);
        sub_10001DB0C(v43, v44, v45, v46);
        v68 = v79;
        *v79 = v65;
        v68[1] = v64;
        *(v68 + 16) = v63;
        v68[3] = v66;
        v68[4] = v67;
        v68[5] = v78;
        *(v68 + 48) = v62;
        *(v68 + 13) = v77;
        v68[7] = v43;
        v68[8] = v44;
        v68[9] = v45;
        v68[10] = v46;
        sub_10001DB0C(v43, v44, v45, v46);
        sub_10000537C(v65, v64, v63 & 1);
      }

      v47 = v71;
      (*(v41 + 32))(v71, v40, v42);
      (*(v41 + 16))(v69, v47, v42);
      v48 = sub_1000C1DC8();
      v50 = v49;
      v52 = v51;

      if ((v29 & 1) == 0)
      {
        sub_1000C2958();
        v53 = sub_1000C1BC8();
        sub_1000C1548();

        v54 = v72;
        sub_1000C1928();
        swift_getAtKeyPath();

        (*(v73 + 8))(v54, v74);
      }

      v22 = sub_1000C1DA8();
      v23 = v55;
      LOBYTE(v20) = v56;

      sub_10000537C(v48, v50, v52 & 1);

      if (qword_1000EC978 == -1)
      {
LABEL_16:

        v43 = sub_1000C1D78();
        v44 = v57;
        v58 = v22;
        v60 = v59;
        v46 = v61;

        sub_10000537C(v58, v23, v20 & 1);

        (*(v75 + 8))(v71, v76);
        v45 = v60 & 1;
        sub_100008420(v43, v44, v45);

        goto LABEL_17;
      }
    }

    swift_once();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_100017DAC@<X0>(char *a1@<X8>)
{
  v3 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  v6 = sub_1000C0818();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  sub_1000082B4(v1 + *(v10 + 24), v5, &qword_1000ECE78, &unk_1000C3810);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1000084C0(v5, &qword_1000ECE78, &unk_1000C3810);
    v11 = *(v1 + *(v10 + 36));
    if (v11 < 1)
    {
      v13 = 1;
      return (*(v7 + 56))(a1, v13, 1, v6);
    }

    sub_100012888(v11);
    sub_1000C07D8();
  }

  else
  {
    v12 = *(v7 + 32);
    v12(v9, v5, v6);
    v12(a1, v9, v6);
  }

  v13 = 0;
  return (*(v7 + 56))(a1, v13, 1, v6);
}

uint64_t sub_100017FC0@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_1000C1998();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_100004D04(&qword_1000ED730, &qword_1000C5428);
  return sub_100016D9C(v2, a2 + *(v4 + 44));
}

uint64_t sub_100018024@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1000C2018();
  v4 = sub_1000C1C28();
  KeyPath = swift_getKeyPath();
  v6 = sub_1000C1FD8();
  result = swift_getKeyPath();
  *a2 = v3;
  a2[1] = KeyPath;
  a2[2] = v4;
  a2[3] = result;
  a2[4] = v6;
  return result;
}

uint64_t sub_1000180D0()
{
  v1 = sub_1000C1938();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000C0E38();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, enum case for TTRRemindersListViewModel.EmptyListMessagingType.TextFormat.short(_:), v5, v7);
  sub_1000C0E48();
  v11 = v10;
  (*(v6 + 8))(v9, v5);
  if (!v11)
  {
    sub_1000C0E08();
  }

  v12 = *(v0 + *(type metadata accessor for TTRIAnyListComplicationWidgetView.NoReminderView(0) + 20) + 8);

  if ((v12 & 1) == 0)
  {
    sub_1000C2958();
    v13 = sub_1000C1BC8();
    v29 = v1;
    v14 = v13;
    sub_1000C1548();

    sub_1000C1928();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v29);
  }

  v15 = sub_1000C1DA8();
  v17 = v16;
  v19 = v18;

  v20 = sub_1000C1D78();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_10000537C(v15, v17, v19 & 1);

  v30 = v20;
  v31 = v22;
  v32 = v24 & 1;
  v33 = v26;
  sub_1000C1F58();
  sub_10000537C(v20, v22, v24 & 1);
}

uint64_t sub_100018404(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  sub_1000C1948();
  return v3;
}

uint64_t sub_10001844C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  a5();

  return sub_1000C1958();
}

uint64_t sub_1000184E8(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for TTRNewWidgetViewModel(0);
  v5 = *(*(v4 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v22 = *a2;
    *a1 = *a2;
    a1 = v22 + ((v5 + 16) & ~v5);
  }

  else
  {
    v6 = v4;
    v7 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v7;
    *(a1 + 16) = *(a2 + 1);
    *(a1 + 32) = a2[4];
    v8 = *(v4 + 28);
    v9 = sub_1000C0E58();
    v10 = *(*(v9 - 8) + 16);

    v10(a1 + v8, a2 + v8, v9);
    v11 = v6[8];
    v12 = (a1 + v11);
    v13 = (a2 + v11);
    v14 = v13[1];
    *v12 = *v13;
    v12[1] = v14;
    v15 = v6[9];
    v16 = (a1 + v15);
    v17 = (a2 + v15);
    v18 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
    v19 = *(v18 - 1);
    v20 = *(v19 + 48);

    if (v20(v17, 1, v18))
    {
      v21 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
      memcpy(v16, v17, *(*(v21 - 8) + 64));
    }

    else
    {
      v63 = v19;
      v23 = *v17;
      v24 = v17[1];
      *v16 = *v17;
      v16[1] = v24;
      v61 = v18[6];
      v25 = sub_1000C0818();
      v58 = *(v25 - 8);
      v59 = *(v58 + 48);
      v26 = v23;
      v27 = v24;
      if (v59(v17 + v61, 1, v25))
      {
        v28 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
        memcpy(v16 + v61, v17 + v61, *(*(v28 - 8) + 64));
      }

      else
      {
        (*(v58 + 16))(v16 + v61, v17 + v61, v25);
        (*(v58 + 56))(v16 + v61, 0, 1, v25);
      }

      v29 = v18[7];
      v30 = sub_1000C0938();
      (*(*(v30 - 8) + 16))(v16 + v29, v17 + v29, v30);
      v31 = v18[8];
      v32 = *(v17 + v31);
      *(v16 + v31) = v32;
      *(v16 + v18[9]) = *(v17 + v18[9]);
      *(v16 + v18[10]) = *(v17 + v18[10]);
      *(v16 + v18[11]) = *(v17 + v18[11]);
      v33 = *(v63 + 56);
      v34 = v32;
      v33(v16, 0, 1, v18);
    }

    v35 = v6[10];
    v64 = *(a2 + v35);
    *(a1 + v35) = v64;
    v36 = v6[11];
    v37 = (a1 + v36);
    v38 = (a2 + v36);
    v39 = v38[1];
    *v37 = *v38;
    v37[1] = v39;
    v40 = v6[12];
    v62 = *(a2 + v40);
    *(a1 + v40) = v62;
    v41 = v6[13];
    v42 = (a1 + v41);
    v43 = (a2 + v41);
    v44 = v43[1];
    *v42 = *v43;
    v42[1] = v44;
    v45 = v6[14];
    v46 = (a1 + v45);
    v47 = (a2 + v45);
    v48 = v47[1];
    *v46 = *v47;
    v46[1] = v48;
    *(a1 + v6[15]) = *(a2 + v6[15]);
    v49 = v6[16];
    v50 = (a1 + v49);
    v51 = (a2 + v49);
    v52 = v51[1];
    *v50 = *v51;
    v50[1] = v52;
    *(a1 + v6[17]) = *(a2 + v6[17]);
    v53 = v6[18];
    v54 = sub_1000C0938();
    v60 = *(*(v54 - 8) + 16);
    v55 = v64;

    v56 = v62;

    v60(a1 + v53, a2 + v53, v54);
    *(a1 + v6[19]) = *(a2 + v6[19]);
    *(a1 + v6[20]) = *(a2 + v6[20]);
  }

  return a1;
}

uint64_t sub_100018964(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v5 = type metadata accessor for TTRNewWidgetViewModel(0);
  v6 = v5[7];
  v7 = sub_1000C0E58();
  v8 = *(*(v7 - 8) + 16);

  v8(a1 + v6, a2 + v6, v7);
  v9 = v5[8];
  v10 = (a1 + v9);
  v11 = (a2 + v9);
  v12 = v11[1];
  *v10 = *v11;
  v10[1] = v12;
  v13 = v5[9];
  v14 = (a1 + v13);
  v15 = (a2 + v13);
  v16 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v17 = *(v16 - 1);
  v18 = *(v17 + 48);

  if (v18(v15, 1, v16))
  {
    v19 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v14, v15, *(*(v19 - 8) + 64));
  }

  else
  {
    v60 = v17;
    v20 = *v15;
    v21 = v15[1];
    *v14 = *v15;
    v14[1] = v21;
    v58 = v16[6];
    v22 = sub_1000C0818();
    v55 = *(v22 - 8);
    v56 = *(v55 + 48);
    v23 = v20;
    v24 = v21;
    if (v56(v15 + v58, 1, v22))
    {
      v25 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
      memcpy(v14 + v58, v15 + v58, *(*(v25 - 8) + 64));
    }

    else
    {
      (*(v55 + 16))(v14 + v58, v15 + v58, v22);
      (*(v55 + 56))(v14 + v58, 0, 1, v22);
    }

    v26 = v16[7];
    v27 = sub_1000C0938();
    (*(*(v27 - 8) + 16))(v14 + v26, v15 + v26, v27);
    v28 = v16[8];
    v29 = *(v15 + v28);
    *(v14 + v28) = v29;
    *(v14 + v16[9]) = *(v15 + v16[9]);
    *(v14 + v16[10]) = *(v15 + v16[10]);
    *(v14 + v16[11]) = *(v15 + v16[11]);
    v30 = *(v60 + 56);
    v31 = v29;
    v30(v14, 0, 1, v16);
  }

  v32 = v5[10];
  v61 = *(a2 + v32);
  *(a1 + v32) = v61;
  v33 = v5[11];
  v34 = (a1 + v33);
  v35 = (a2 + v33);
  v36 = v35[1];
  *v34 = *v35;
  v34[1] = v36;
  v37 = v5[12];
  v59 = *(a2 + v37);
  *(a1 + v37) = v59;
  v38 = v5[13];
  v39 = (a1 + v38);
  v40 = (a2 + v38);
  v41 = v40[1];
  *v39 = *v40;
  v39[1] = v41;
  v42 = v5[14];
  v43 = (a1 + v42);
  v44 = (a2 + v42);
  v45 = v44[1];
  *v43 = *v44;
  v43[1] = v45;
  *(a1 + v5[15]) = *(a2 + v5[15]);
  v46 = v5[16];
  v47 = (a1 + v46);
  v48 = (a2 + v46);
  v49 = v48[1];
  *v47 = *v48;
  v47[1] = v49;
  *(a1 + v5[17]) = *(a2 + v5[17]);
  v50 = v5[18];
  v51 = sub_1000C0938();
  v57 = *(*(v51 - 8) + 16);
  v52 = v61;

  v53 = v59;

  v57(a1 + v50, a2 + v50, v51);
  *(a1 + v5[19]) = *(a2 + v5[19]);
  *(a1 + v5[20]) = *(a2 + v5[20]);

  return a1;
}

char *sub_100018D94(char *a1, char *a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);

  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 4) = *(a2 + 4);

  v4 = type metadata accessor for TTRNewWidgetViewModel(0);
  v5 = v4[7];
  v6 = sub_1000C0E58();
  (*(*(v6 - 8) + 24))(&a1[v5], &a2[v5], v6);
  v7 = v4[8];
  v8 = &a1[v7];
  v9 = &a2[v7];
  *v8 = *v9;
  *(v8 + 1) = *(v9 + 1);

  v10 = v4[9];
  v11 = &a1[v10];
  v12 = &a2[v10];
  v13 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v14 = *(v13 - 1);
  v15 = *(v14 + 48);
  v16 = v15(v11, 1, v13);
  v17 = v15(v12, 1, v13);
  if (!v16)
  {
    if (v17)
    {
      sub_10001A504(v11, type metadata accessor for TTRNewWidgetViewModel.Reminder);
      goto LABEL_7;
    }

    v24 = *v12;
    v25 = *v11;
    *v11 = *v12;
    v26 = v24;

    v27 = *(v11 + 1);
    v28 = *(v12 + 1);
    *(v11 + 1) = v28;
    v29 = v28;

    v30 = v13[6];
    v31 = sub_1000C0818();
    v73 = *(v31 - 8);
    v32 = *(v73 + 48);
    v76 = v32(&v11[v30], 1, v31);
    v33 = v32(&v12[v30], 1, v31);
    if (v76)
    {
      if (!v33)
      {
        (*(v73 + 16))(&v11[v30], &v12[v30], v31);
        (*(v73 + 56))(&v11[v30], 0, 1, v31);
        goto LABEL_18;
      }

      v34 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v35 = &v11[v30];
      v36 = &v12[v30];
    }

    else
    {
      if (!v33)
      {
        (*(v73 + 24))(&v11[v30], &v12[v30], v31);
        goto LABEL_18;
      }

      (*(v73 + 8))(&v11[v30], v31);
      v34 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v35 = &v11[v30];
      v36 = &v12[v30];
    }

    memcpy(v35, v36, v34);
LABEL_18:
    v43 = v13[7];
    v44 = sub_1000C0938();
    (*(*(v44 - 8) + 24))(&v11[v43], &v12[v43], v44);
    v45 = v13[8];
    v46 = *&v11[v45];
    v47 = *&v12[v45];
    *&v11[v45] = v47;
    v48 = v47;

    *&v11[v13[9]] = *&v12[v13[9]];
    v11[v13[10]] = v12[v13[10]];
    v11[v13[11]] = v12[v13[11]];
    goto LABEL_19;
  }

  if (v17)
  {
LABEL_7:
    v23 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v11, v12, *(*(v23 - 8) + 64));
    goto LABEL_19;
  }

  v18 = *v12;
  *v11 = *v12;
  v75 = *(v12 + 1);
  *(v11 + 1) = v75;
  v77 = v13[6];
  v19 = sub_1000C0818();
  v72 = *(v19 - 8);
  v74 = *(v72 + 48);
  v20 = v18;
  v21 = v75;
  if (v74(&v12[v77], 1, v19))
  {
    v22 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&v11[v77], &v12[v77], *(*(v22 - 8) + 64));
  }

  else
  {
    (*(v72 + 16))(&v11[v77], &v12[v77], v19);
    (*(v72 + 56))(&v11[v77], 0, 1, v19);
  }

  v37 = v13[7];
  v38 = sub_1000C0938();
  (*(*(v38 - 8) + 16))(&v11[v37], &v12[v37], v38);
  v39 = v13[8];
  v40 = *&v12[v39];
  *&v11[v39] = v40;
  *&v11[v13[9]] = *&v12[v13[9]];
  v11[v13[10]] = v12[v13[10]];
  v11[v13[11]] = v12[v13[11]];
  v41 = *(v14 + 56);
  v42 = v40;
  v41(v11, 0, 1, v13);
LABEL_19:
  v49 = v4[10];
  v50 = *&a2[v49];
  v51 = *&a1[v49];
  *&a1[v49] = v50;
  v52 = v50;

  v53 = v4[11];
  v54 = &a1[v53];
  v55 = &a2[v53];
  *v54 = *v55;
  *(v54 + 1) = *(v55 + 1);

  v56 = v4[12];
  v57 = *&a1[v56];
  v58 = *&a2[v56];
  *&a1[v56] = v58;
  v59 = v58;

  v60 = v4[13];
  v61 = &a1[v60];
  v62 = &a2[v60];
  *v61 = *v62;
  *(v61 + 1) = *(v62 + 1);

  v63 = v4[14];
  v64 = &a1[v63];
  v65 = &a2[v63];
  *v64 = *v65;
  *(v64 + 1) = *(v65 + 1);

  a1[v4[15]] = a2[v4[15]];
  v66 = v4[16];
  v67 = &a1[v66];
  v68 = &a2[v66];
  *v67 = *v68;
  *(v67 + 1) = *(v68 + 1);

  *&a1[v4[17]] = *&a2[v4[17]];

  v69 = v4[18];
  v70 = sub_1000C0938();
  (*(*(v70 - 8) + 24))(&a1[v69], &a2[v69], v70);
  *&a1[v4[19]] = *&a2[v4[19]];

  a1[v4[20]] = a2[v4[20]];
  return a1;
}

uint64_t sub_1000194B4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v4 = type metadata accessor for TTRNewWidgetViewModel(0);
  v5 = v4[7];
  v6 = sub_1000C0E58();
  (*(*(v6 - 8) + 32))(a1 + v5, a2 + v5, v6);
  *(a1 + v4[8]) = *(a2 + v4[8]);
  v7 = v4[9];
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v11 = *(v10 - 1);
  if ((*(v11 + 48))(v9, 1, v10))
  {
    v12 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v8, v9, *(*(v12 - 8) + 64));
  }

  else
  {
    v13 = v9[1];
    *v8 = *v9;
    v8[1] = v13;
    v14 = v10[6];
    v15 = sub_1000C0818();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v9 + v14, 1, v15))
    {
      v17 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
      memcpy(v8 + v14, v9 + v14, *(*(v17 - 8) + 64));
    }

    else
    {
      (*(v16 + 32))(v8 + v14, v9 + v14, v15);
      (*(v16 + 56))(v8 + v14, 0, 1, v15);
    }

    v18 = v10[7];
    v19 = sub_1000C0938();
    (*(*(v19 - 8) + 32))(v8 + v18, v9 + v18, v19);
    *(v8 + v10[8]) = *(v9 + v10[8]);
    *(v8 + v10[9]) = *(v9 + v10[9]);
    *(v8 + v10[10]) = *(v9 + v10[10]);
    *(v8 + v10[11]) = *(v9 + v10[11]);
    (*(v11 + 56))(v8, 0, 1, v10);
  }

  *(a1 + v4[10]) = *(a2 + v4[10]);
  *(a1 + v4[11]) = *(a2 + v4[11]);
  *(a1 + v4[12]) = *(a2 + v4[12]);
  *(a1 + v4[13]) = *(a2 + v4[13]);
  *(a1 + v4[14]) = *(a2 + v4[14]);
  *(a1 + v4[15]) = *(a2 + v4[15]);
  *(a1 + v4[16]) = *(a2 + v4[16]);
  *(a1 + v4[17]) = *(a2 + v4[17]);
  v20 = v4[18];
  v21 = sub_1000C0938();
  (*(*(v21 - 8) + 32))(a1 + v20, a2 + v20, v21);
  *(a1 + v4[19]) = *(a2 + v4[19]);
  *(a1 + v4[20]) = *(a2 + v4[20]);
  return a1;
}

uint64_t sub_10001982C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);

  v5 = type metadata accessor for TTRNewWidgetViewModel(0);
  v6 = v5[7];
  v7 = sub_1000C0E58();
  (*(*(v7 - 8) + 40))(a1 + v6, a2 + v6, v7);
  v8 = v5[8];
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  v12 = *v10;
  v11 = v10[1];
  *v9 = v12;
  v9[1] = v11;

  v13 = v5[9];
  v14 = (a1 + v13);
  v15 = (a2 + v13);
  v16 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v17 = *(v16 - 1);
  v18 = *(v17 + 48);
  v19 = v18(v14, 1, v16);
  v20 = v18(v15, 1, v16);
  if (!v19)
  {
    if (v20)
    {
      sub_10001A504(v14, type metadata accessor for TTRNewWidgetViewModel.Reminder);
      goto LABEL_7;
    }

    v27 = *v14;
    *v14 = *v15;

    v28 = *(v14 + 1);
    *(v14 + 1) = *(v15 + 1);

    v29 = v16[6];
    v30 = sub_1000C0818();
    v69 = *(v30 - 8);
    v31 = *(v69 + 48);
    v70 = v31(&v14[v29], 1, v30);
    v32 = v31(&v15[v29], 1, v30);
    if (v70)
    {
      if (!v32)
      {
        (*(v69 + 32))(&v14[v29], &v15[v29], v30);
        (*(v69 + 56))(&v14[v29], 0, 1, v30);
        goto LABEL_18;
      }

      v33 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v34 = &v14[v29];
      v35 = &v15[v29];
    }

    else
    {
      if (!v32)
      {
        (*(v69 + 40))(&v14[v29], &v15[v29], v30);
        goto LABEL_18;
      }

      (*(v69 + 8))(&v14[v29], v30);
      v33 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v34 = &v14[v29];
      v35 = &v15[v29];
    }

    memcpy(v34, v35, v33);
LABEL_18:
    v38 = v16[7];
    v39 = sub_1000C0938();
    (*(*(v39 - 8) + 40))(&v14[v38], &v15[v38], v39);
    v40 = v16[8];
    v41 = *&v14[v40];
    *&v14[v40] = *&v15[v40];

    *&v14[v16[9]] = *&v15[v16[9]];
    v14[v16[10]] = v15[v16[10]];
    v14[v16[11]] = v15[v16[11]];
    goto LABEL_19;
  }

  if (v20)
  {
LABEL_7:
    v26 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v14, v15, *(*(v26 - 8) + 64));
    goto LABEL_19;
  }

  v21 = *(v15 + 1);
  *v14 = *v15;
  *(v14 + 1) = v21;
  v22 = v16[6];
  v23 = sub_1000C0818();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(&v15[v22], 1, v23))
  {
    v25 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&v14[v22], &v15[v22], *(*(v25 - 8) + 64));
  }

  else
  {
    (*(v24 + 32))(&v14[v22], &v15[v22], v23);
    (*(v24 + 56))(&v14[v22], 0, 1, v23);
  }

  v36 = v16[7];
  v37 = sub_1000C0938();
  (*(*(v37 - 8) + 32))(&v14[v36], &v15[v36], v37);
  *&v14[v16[8]] = *&v15[v16[8]];
  *&v14[v16[9]] = *&v15[v16[9]];
  v14[v16[10]] = v15[v16[10]];
  v14[v16[11]] = v15[v16[11]];
  (*(v17 + 56))(v14, 0, 1, v16);
LABEL_19:
  v42 = v5[10];
  v43 = *(a1 + v42);
  *(a1 + v42) = *(a2 + v42);

  v44 = v5[11];
  v45 = (a1 + v44);
  v46 = (a2 + v44);
  v48 = *v46;
  v47 = v46[1];
  *v45 = v48;
  v45[1] = v47;

  v49 = v5[12];
  v50 = *(a1 + v49);
  *(a1 + v49) = *(a2 + v49);

  v51 = v5[13];
  v52 = (a1 + v51);
  v53 = (a2 + v51);
  v55 = *v53;
  v54 = v53[1];
  *v52 = v55;
  v52[1] = v54;

  v56 = v5[14];
  v57 = (a1 + v56);
  v58 = (a2 + v56);
  v60 = *v58;
  v59 = v58[1];
  *v57 = v60;
  v57[1] = v59;

  *(a1 + v5[15]) = *(a2 + v5[15]);
  v61 = v5[16];
  v62 = (a1 + v61);
  v63 = (a2 + v61);
  v65 = *v63;
  v64 = v63[1];
  *v62 = v65;
  v62[1] = v64;

  *(a1 + v5[17]) = *(a2 + v5[17]);

  v66 = v5[18];
  v67 = sub_1000C0938();
  (*(*(v67 - 8) + 40))(a1 + v66, a2 + v66, v67);
  *(a1 + v5[19]) = *(a2 + v5[19]);

  *(a1 + v5[20]) = *(a2 + v5[20]);
  return a1;
}

uint64_t sub_100019EA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRNewWidgetViewModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100019F20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRNewWidgetViewModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100019FB0(uint64_t a1)
{
  result = type metadata accessor for TTRNewWidgetViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_10001A0E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001A1F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIAnyListComplicationWidgetView.InteractiveReminderView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001A254()
{
  result = qword_1000ED488;
  if (!qword_1000ED488)
  {
    sub_100005334(&qword_1000ED470, &qword_1000C4F28);
    sub_10001A310(&qword_1000ED490, type metadata accessor for TTRIAnyListComplicationWidgetView.InteractiveReminderView, &unk_1000C5290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED488);
  }

  return result;
}

uint64_t sub_10001A310(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10001A358()
{
  result = qword_1000ED498;
  if (!qword_1000ED498)
  {
    sub_100005334(&qword_1000ED460, &qword_1000C4F18);
    sub_100008478(&qword_1000ED480, &qword_1000ED468, &qword_1000C4F20, &protocol conformance descriptor for TupleView<A>);
    sub_10001A254();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED498);
  }

  return result;
}

void sub_10001A410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }
}

void sub_10001A460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }
}

uint64_t sub_10001A504(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10001A5B8()
{
  result = qword_1000ED4B8;
  if (!qword_1000ED4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED4B8);
  }

  return result;
}

unint64_t sub_10001A60C()
{
  result = qword_1000ED4C0;
  if (!qword_1000ED4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED4C0);
  }

  return result;
}

unint64_t sub_10001A660()
{
  result = qword_1000ED4C8;
  if (!qword_1000ED4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED4C8);
  }

  return result;
}

unint64_t sub_10001A6B4()
{
  result = qword_1000ED4D0;
  if (!qword_1000ED4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED4D0);
  }

  return result;
}

uint64_t *sub_10001A748(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v13 = *a2;
    *a1 = *a2;
    v4 = (v13 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_1000C0E58();
    (*(*(v7 - 8) + 16))(v4, a2, v7);
    v8 = *(a3 + 20);
    v9 = *(a3 + 24);
    v10 = v4 + v8;
    v11 = a2 + v8;
    v12 = *v11;
    LOBYTE(v11) = v11[8];
    *v10 = v12;
    v10[8] = v11;
    *(v4 + v9) = *(a2 + v9);
  }

  return v4;
}

uint64_t sub_10001A830(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000C0E58();
  (*(*(v3 - 8) + 8))(a1, v3);
}

uint64_t sub_10001A8B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0E58();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a3 + 24);
  v9 = a1 + v7;
  v10 = (a2 + v7);
  v11 = *v10;
  LOBYTE(v10) = *(v10 + 8);
  *v9 = v11;
  *(v9 + 8) = v10;
  *(a1 + v8) = *(a2 + v8);

  return a1;
}

uint64_t sub_10001A950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0E58();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = (a2 + v7);
  v10 = *v9;
  LOBYTE(v9) = *(v9 + 8);
  *v8 = v10;
  *(v8 + 8) = v9;

  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));

  return a1;
}

uint64_t sub_10001AA08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0E58();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a3 + 24);
  v9 = a1 + v7;
  v10 = a2 + v7;
  *v9 = *v10;
  *(v9 + 8) = *(v10 + 8);
  *(a1 + v8) = *(a2 + v8);
  return a1;
}

uint64_t sub_10001AA9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0E58();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = (a2 + v7);
  v10 = *v9;
  LOBYTE(v9) = *(v9 + 8);
  *v8 = v10;
  *(v8 + 8) = v9;

  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));

  return a1;
}

uint64_t sub_10001AB58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0E58();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10001AC28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000C0E58();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10001AD0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *sub_10001ADB0(char *a1, char **a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v6 = a1;
    v7 = a2[1];
    *(a1 + 1) = v7;
    v8 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
    v9 = v8[6];
    v10 = sub_1000C0818();
    v11 = *(v10 - 8);
    v12 = *(v11 + 48);
    v13 = v4;
    v14 = v7;
    if (v12(a2 + v9, 1, v10))
    {
      v15 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
      memcpy(&v6[v9], a2 + v9, *(*(v15 - 8) + 64));
    }

    else
    {
      (*(v11 + 16))(&v6[v9], a2 + v9, v10);
      (*(v11 + 56))(&v6[v9], 0, 1, v10);
    }

    v16 = v8[7];
    v17 = sub_1000C0938();
    (*(*(v17 - 8) + 16))(&v6[v16], a2 + v16, v17);
    v18 = v8[8];
    v19 = *(a2 + v18);
    *&v6[v18] = v19;
    *&v6[v8[9]] = *(a2 + v8[9]);
    v6[v8[10]] = *(a2 + v8[10]);
    v6[v8[11]] = *(a2 + v8[11]);
    v20 = a3[6];
    v6[a3[5]] = *(a2 + a3[5]);
    v21 = &v6[v20];
    v22 = a2 + v20;
    v23 = *v22;
    LOBYTE(v22) = v22[8];
    *v21 = v23;
    v21[8] = v22;
    v24 = a3[7];
    v25 = &v6[v24];
    v26 = a2 + v24;
    v27 = *v26;
    LOBYTE(v26) = v26[8];
    *v25 = v27;
    v25[8] = v26;
    v28 = v19;
  }

  return v6;
}

uint64_t sub_10001B004(id *a1, uint64_t a2)
{
  v3 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v4 = v3[6];
  v5 = sub_1000C0818();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(a1 + v4, 1, v5))
  {
    (*(v6 + 8))(a1 + v4, v5);
  }

  v7 = v3[7];
  v8 = sub_1000C0938();
  (*(*(v8 - 8) + 8))(a1 + v7, v8);
}

char *sub_10001B134(char *a1, uint64_t a2, int *a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v8 = v7[6];
  v9 = sub_1000C0818();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v5;
  v13 = v6;
  if (v11(a2 + v8, 1, v9))
  {
    v14 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&a1[v8], (a2 + v8), *(*(v14 - 8) + 64));
  }

  else
  {
    (*(v10 + 16))(&a1[v8], a2 + v8, v9);
    (*(v10 + 56))(&a1[v8], 0, 1, v9);
  }

  v15 = v7[7];
  v16 = sub_1000C0938();
  (*(*(v16 - 8) + 16))(&a1[v15], a2 + v15, v16);
  v17 = v7[8];
  v18 = *(a2 + v17);
  *&a1[v17] = v18;
  *&a1[v7[9]] = *(a2 + v7[9]);
  a1[v7[10]] = *(a2 + v7[10]);
  a1[v7[11]] = *(a2 + v7[11]);
  v19 = a3[6];
  a1[a3[5]] = *(a2 + a3[5]);
  v20 = &a1[v19];
  v21 = (a2 + v19);
  v22 = *v21;
  LOBYTE(v21) = *(v21 + 8);
  *v20 = v22;
  v20[8] = v21;
  v23 = a3[7];
  v24 = &a1[v23];
  v25 = (a2 + v23);
  v26 = *v25;
  LOBYTE(v25) = *(v25 + 8);
  *v24 = v26;
  v24[8] = v25;
  v27 = v18;

  return a1;
}

uint64_t sub_10001B340(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  v9 = *(a1 + 8);
  v10 = *(a2 + 8);
  *(a1 + 8) = v10;
  v11 = v10;

  v12 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v13 = v12[6];
  v14 = sub_1000C0818();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  v17 = v16(a1 + v13, 1, v14);
  v18 = v16(a2 + v13, 1, v14);
  if (!v17)
  {
    if (!v18)
    {
      (*(v15 + 24))(a1 + v13, a2 + v13, v14);
      goto LABEL_7;
    }

    (*(v15 + 8))(a1 + v13, v14);
    goto LABEL_6;
  }

  if (v18)
  {
LABEL_6:
    v19 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy((a1 + v13), (a2 + v13), *(*(v19 - 8) + 64));
    goto LABEL_7;
  }

  (*(v15 + 16))(a1 + v13, a2 + v13, v14);
  (*(v15 + 56))(a1 + v13, 0, 1, v14);
LABEL_7:
  v20 = v12[7];
  v21 = sub_1000C0938();
  (*(*(v21 - 8) + 24))(a1 + v20, a2 + v20, v21);
  v22 = v12[8];
  v23 = *(a1 + v22);
  v24 = *(a2 + v22);
  *(a1 + v22) = v24;
  v25 = v24;

  *(a1 + v12[9]) = *(a2 + v12[9]);
  *(a1 + v12[10]) = *(a2 + v12[10]);
  *(a1 + v12[11]) = *(a2 + v12[11]);
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v26 = a3[6];
  v27 = a1 + v26;
  v28 = (a2 + v26);
  v29 = *v28;
  LOBYTE(v28) = *(v28 + 8);
  *v27 = v29;
  *(v27 + 8) = v28;

  v30 = a3[7];
  v31 = a1 + v30;
  v32 = (a2 + v30);
  v33 = *v32;
  LOBYTE(v32) = *(v32 + 8);
  *v31 = v33;
  *(v31 + 8) = v32;

  return a1;
}

char *sub_10001B5D0(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v8 = v7[6];
  v9 = sub_1000C0818();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(&a2[v8], 1, v9))
  {
    v11 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&a1[v8], &a2[v8], *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v10 + 32))(&a1[v8], &a2[v8], v9);
    (*(v10 + 56))(&a1[v8], 0, 1, v9);
  }

  v12 = v7[7];
  v13 = sub_1000C0938();
  (*(*(v13 - 8) + 32))(&a1[v12], &a2[v12], v13);
  *&a1[v7[8]] = *&a2[v7[8]];
  *&a1[v7[9]] = *&a2[v7[9]];
  a1[v7[10]] = a2[v7[10]];
  a1[v7[11]] = a2[v7[11]];
  v14 = a3[6];
  a1[a3[5]] = a2[a3[5]];
  v15 = &a1[v14];
  v16 = &a2[v14];
  *v15 = *v16;
  v15[8] = v16[8];
  v17 = a3[7];
  v18 = &a1[v17];
  v19 = &a2[v17];
  v18[8] = v19[8];
  *v18 = *v19;
  return a1;
}

uint64_t sub_10001B7AC(uint64_t a1, char *a2, int *a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 1);

  v8 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v9 = v8[6];
  v10 = sub_1000C0818();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  v13 = v12(a1 + v9, 1, v10);
  v14 = v12(&a2[v9], 1, v10);
  if (!v13)
  {
    if (!v14)
    {
      (*(v11 + 40))(a1 + v9, &a2[v9], v10);
      goto LABEL_7;
    }

    (*(v11 + 8))(a1 + v9, v10);
    goto LABEL_6;
  }

  if (v14)
  {
LABEL_6:
    v15 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy((a1 + v9), &a2[v9], *(*(v15 - 8) + 64));
    goto LABEL_7;
  }

  (*(v11 + 32))(a1 + v9, &a2[v9], v10);
  (*(v11 + 56))(a1 + v9, 0, 1, v10);
LABEL_7:
  v16 = v8[7];
  v17 = sub_1000C0938();
  (*(*(v17 - 8) + 40))(a1 + v16, &a2[v16], v17);
  v18 = v8[8];
  v19 = *(a1 + v18);
  *(a1 + v18) = *&a2[v18];

  *(a1 + v8[9]) = *&a2[v8[9]];
  *(a1 + v8[10]) = a2[v8[10]];
  *(a1 + v8[11]) = a2[v8[11]];
  v20 = a3[6];
  *(a1 + a3[5]) = a2[a3[5]];
  v21 = a1 + v20;
  v22 = &a2[v20];
  v23 = *v22;
  LOBYTE(v22) = v22[8];
  *v21 = v23;
  *(v21 + 8) = v22;

  v24 = a3[7];
  v25 = a1 + v24;
  v26 = &a2[v24];
  v27 = *v26;
  LOBYTE(v26) = v26[8];
  *v25 = v27;
  *(v25 + 8) = v26;

  return a1;
}

uint64_t sub_10001BA4C(uint64_t a1)
{
  result = type metadata accessor for TTRNewWidgetViewModel.Reminder(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for TTRNewWidgetPresenter.ShareeInfoStyle(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t destroy for TTRIAnyListComplicationWidgetView.ListInfoView(void *a1)
{
}

uint64_t initializeWithCopy for TTRIAnyListComplicationWidgetView.ListInfoView(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithCopy for TTRIAnyListComplicationWidgetView.ListInfoView(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;

  *(a1 + 32) = *(a2 + 32);

  return a1;
}

__n128 initializeWithTake for TTRIAnyListComplicationWidgetView.ListInfoView(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for TTRIAnyListComplicationWidgetView.ListInfoView(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;

  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIAnyListComplicationWidgetView.ListInfoView(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for TTRIAnyListComplicationWidgetView.ListInfoView(uint64_t result, int a2, int a3)
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

uint64_t sub_10001BD5C()
{
  sub_100005334(&qword_1000ED438, &qword_1000C4EF8);
  sub_100008478(&qword_1000ED448, &qword_1000ED438, &qword_1000C4EF8, &protocol conformance descriptor for VStack<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10001BE10()
{
  v0 = sub_100004D04(&qword_1000ECC38, &qword_1000C3720);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_1000C1CD8();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, enum case for Font.TextStyle.headline(_:), v3, v5);
  v8 = sub_1000C1C38();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  v9 = sub_1000C1C78();
  sub_1000084C0(v2, &qword_1000ECC38, &qword_1000C3720);
  result = (*(v4 + 8))(v7, v3);
  qword_1000ED2E0 = v9;
  return result;
}

uint64_t sub_10001BFE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10001C834();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_10001C0CC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100004D04(&qword_1000ECC38, &qword_1000C3720);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = sub_1000C1CD8();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v10, enum case for Font.TextStyle.body(_:), v6, v8);
  v11 = enum case for Font.Design.default(_:);
  v12 = sub_1000C1C38();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v5, v11, v12);
  (*(v13 + 56))(v5, 0, 1, v12);
  v14 = sub_1000C1C78();
  sub_1000084C0(v5, &qword_1000ECC38, &qword_1000C3720);
  result = (*(v7 + 8))(v10, v6);
  *a2 = v14;
  return result;
}

uint64_t sub_10001C30C(uint64_t a1, double (*a2)(uint64_t), uint64_t *a3)
{
  v5 = sub_100004D04(&qword_1000ECC38, &qword_1000C3720);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  v8 = sub_1000C1CD8();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v12, enum case for Font.TextStyle.body(_:), v8, v10);
  v13 = enum case for Font.Design.default(_:);
  v14 = sub_1000C1C38();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v7, v13, v14);
  v16 = (*(v15 + 56))(v7, 0, 1, v14);
  a2(v16);
  v17 = sub_1000C1C78();
  sub_1000084C0(v7, &qword_1000ECC38, &qword_1000C3720);
  result = (*(v9 + 8))(v12, v8);
  *a3 = v17;
  return result;
}

uint64_t sub_10001C538@<X0>(void *a1@<X2>, void *a2@<X3>, void *a4@<X8>)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a4;
    swift_once();
    a4 = v7;
    a2 = v6;
  }

  *a4 = *a2;
}

uint64_t sub_10001C604(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10001C624()
{
  result = qword_1000ED638;
  if (!qword_1000ED638)
  {
    sub_100005334(&qword_1000ED620, &qword_1000C63C0);
    sub_100008478(&qword_1000ED640, &qword_1000ED648, &qword_1000C5330, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED638);
  }

  return result;
}

unint64_t sub_10001C6DC()
{
  result = qword_1000ED650;
  if (!qword_1000ED650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED650);
  }

  return result;
}

void *sub_10001C750@<X0>(uint64_t (*a1)(void)@<X3>, void *a3@<X8>)
{
  a1();
  result = sub_1000C1948();
  *a3 = v5;
  return result;
}

unint64_t sub_10001C7E0()
{
  result = qword_1000ED658;
  if (!qword_1000ED658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED658);
  }

  return result;
}

unint64_t sub_10001C834()
{
  result = qword_1000ED660;
  if (!qword_1000ED660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED660);
  }

  return result;
}

char *sub_10001C898(char *a1, char **a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v6 = a1;
    v7 = a2[1];
    *(a1 + 1) = v7;
    v8 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
    v9 = v8[6];
    v10 = sub_1000C0818();
    v11 = *(v10 - 8);
    v12 = *(v11 + 48);
    v13 = v4;
    v14 = v7;
    if (v12(a2 + v9, 1, v10))
    {
      v15 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
      memcpy(&v6[v9], a2 + v9, *(*(v15 - 8) + 64));
    }

    else
    {
      (*(v11 + 16))(&v6[v9], a2 + v9, v10);
      (*(v11 + 56))(&v6[v9], 0, 1, v10);
    }

    v16 = v8[7];
    v17 = sub_1000C0938();
    (*(*(v17 - 8) + 16))(&v6[v16], a2 + v16, v17);
    v18 = v8[8];
    v19 = *(a2 + v18);
    *&v6[v18] = v19;
    *&v6[v8[9]] = *(a2 + v8[9]);
    v6[v8[10]] = *(a2 + v8[10]);
    v6[v8[11]] = *(a2 + v8[11]);
    v20 = a3[6];
    v6[a3[5]] = *(a2 + a3[5]);
    *&v6[v20] = *(a2 + v20);
    v21 = a3[7];
    v22 = a3[8];
    v23 = &v6[v21];
    v24 = a2 + v21;
    v25 = *v24;
    LOBYTE(v24) = v24[8];
    *v23 = v25;
    v23[8] = v24;
    v26 = &v6[v22];
    v27 = a2 + v22;
    v28 = *v27;
    LOBYTE(v27) = v27[8];
    *v26 = v28;
    v26[8] = v27;
    v29 = a3[9];
    v30 = &v6[v29];
    v31 = a2 + v29;
    v32 = *v31;
    LOBYTE(v31) = v31[8];
    *v30 = v32;
    v30[8] = v31;
    v33 = v19;
  }

  return v6;
}

uint64_t sub_10001CB18(id *a1, int *a2)
{
  v3 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v4 = v3[6];
  v5 = sub_1000C0818();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(a1 + v4, 1, v5))
  {
    (*(v6 + 8))(a1 + v4, v5);
  }

  v7 = v3[7];
  v8 = sub_1000C0938();
  (*(*(v8 - 8) + 8))(a1 + v7, v8);
}

char *sub_10001CC54(char *a1, uint64_t a2, int *a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v8 = v7[6];
  v9 = sub_1000C0818();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v5;
  v13 = v6;
  if (v11(a2 + v8, 1, v9))
  {
    v14 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&a1[v8], (a2 + v8), *(*(v14 - 8) + 64));
  }

  else
  {
    (*(v10 + 16))(&a1[v8], a2 + v8, v9);
    (*(v10 + 56))(&a1[v8], 0, 1, v9);
  }

  v15 = v7[7];
  v16 = sub_1000C0938();
  (*(*(v16 - 8) + 16))(&a1[v15], a2 + v15, v16);
  v17 = v7[8];
  v18 = *(a2 + v17);
  *&a1[v17] = v18;
  *&a1[v7[9]] = *(a2 + v7[9]);
  a1[v7[10]] = *(a2 + v7[10]);
  a1[v7[11]] = *(a2 + v7[11]);
  v19 = a3[6];
  a1[a3[5]] = *(a2 + a3[5]);
  *&a1[v19] = *(a2 + v19);
  v20 = a3[7];
  v21 = a3[8];
  v22 = &a1[v20];
  v23 = (a2 + v20);
  v24 = *v23;
  LOBYTE(v23) = *(v23 + 8);
  *v22 = v24;
  v22[8] = v23;
  v25 = &a1[v21];
  v26 = (a2 + v21);
  v27 = *v26;
  LOBYTE(v26) = *(v26 + 8);
  *v25 = v27;
  v25[8] = v26;
  v28 = a3[9];
  v29 = &a1[v28];
  v30 = (a2 + v28);
  v31 = *v30;
  LOBYTE(v30) = *(v30 + 8);
  *v29 = v31;
  v29[8] = v30;
  v32 = v18;

  return a1;
}

uint64_t sub_10001CE8C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  v9 = *(a1 + 8);
  v10 = *(a2 + 8);
  *(a1 + 8) = v10;
  v11 = v10;

  v12 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v13 = v12[6];
  v14 = sub_1000C0818();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  v17 = v16(a1 + v13, 1, v14);
  v18 = v16(a2 + v13, 1, v14);
  if (!v17)
  {
    if (!v18)
    {
      (*(v15 + 24))(a1 + v13, a2 + v13, v14);
      goto LABEL_7;
    }

    (*(v15 + 8))(a1 + v13, v14);
    goto LABEL_6;
  }

  if (v18)
  {
LABEL_6:
    v19 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy((a1 + v13), (a2 + v13), *(*(v19 - 8) + 64));
    goto LABEL_7;
  }

  (*(v15 + 16))(a1 + v13, a2 + v13, v14);
  (*(v15 + 56))(a1 + v13, 0, 1, v14);
LABEL_7:
  v20 = v12[7];
  v21 = sub_1000C0938();
  (*(*(v21 - 8) + 24))(a1 + v20, a2 + v20, v21);
  v22 = v12[8];
  v23 = *(a1 + v22);
  v24 = *(a2 + v22);
  *(a1 + v22) = v24;
  v25 = v24;

  *(a1 + v12[9]) = *(a2 + v12[9]);
  *(a1 + v12[10]) = *(a2 + v12[10]);
  *(a1 + v12[11]) = *(a2 + v12[11]);
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + a3[6]) = *(a2 + a3[6]);
  v26 = a3[7];
  v27 = a1 + v26;
  v28 = (a2 + v26);
  v29 = *v28;
  LOBYTE(v28) = *(v28 + 8);
  *v27 = v29;
  *(v27 + 8) = v28;

  v30 = a3[8];
  v31 = a1 + v30;
  v32 = (a2 + v30);
  v33 = *v32;
  LOBYTE(v32) = *(v32 + 8);
  *v31 = v33;
  *(v31 + 8) = v32;

  v34 = a3[9];
  v35 = a1 + v34;
  v36 = (a2 + v34);
  v37 = *v36;
  LOBYTE(v36) = *(v36 + 8);
  *v35 = v37;
  *(v35 + 8) = v36;

  return a1;
}

char *sub_10001D154(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v8 = v7[6];
  v9 = sub_1000C0818();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(&a2[v8], 1, v9))
  {
    v11 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&a1[v8], &a2[v8], *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v10 + 32))(&a1[v8], &a2[v8], v9);
    (*(v10 + 56))(&a1[v8], 0, 1, v9);
  }

  v12 = v7[7];
  v13 = sub_1000C0938();
  (*(*(v13 - 8) + 32))(&a1[v12], &a2[v12], v13);
  *&a1[v7[8]] = *&a2[v7[8]];
  *&a1[v7[9]] = *&a2[v7[9]];
  a1[v7[10]] = a2[v7[10]];
  a1[v7[11]] = a2[v7[11]];
  v14 = a3[6];
  a1[a3[5]] = a2[a3[5]];
  *&a1[v14] = *&a2[v14];
  v15 = a3[7];
  v16 = a3[8];
  v17 = &a1[v15];
  v18 = &a2[v15];
  *v17 = *v18;
  v17[8] = v18[8];
  v19 = &a1[v16];
  v20 = &a2[v16];
  *v19 = *v20;
  v19[8] = v20[8];
  v21 = a3[9];
  v22 = &a1[v21];
  v23 = &a2[v21];
  *v22 = *v23;
  v22[8] = v23[8];
  return a1;
}

uint64_t sub_10001D354(uint64_t a1, char *a2, int *a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 1);

  v8 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v9 = v8[6];
  v10 = sub_1000C0818();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  v13 = v12(a1 + v9, 1, v10);
  v14 = v12(&a2[v9], 1, v10);
  if (!v13)
  {
    if (!v14)
    {
      (*(v11 + 40))(a1 + v9, &a2[v9], v10);
      goto LABEL_7;
    }

    (*(v11 + 8))(a1 + v9, v10);
    goto LABEL_6;
  }

  if (v14)
  {
LABEL_6:
    v15 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy((a1 + v9), &a2[v9], *(*(v15 - 8) + 64));
    goto LABEL_7;
  }

  (*(v11 + 32))(a1 + v9, &a2[v9], v10);
  (*(v11 + 56))(a1 + v9, 0, 1, v10);
LABEL_7:
  v16 = v8[7];
  v17 = sub_1000C0938();
  (*(*(v17 - 8) + 40))(a1 + v16, &a2[v16], v17);
  v18 = v8[8];
  v19 = *(a1 + v18);
  *(a1 + v18) = *&a2[v18];

  *(a1 + v8[9]) = *&a2[v8[9]];
  *(a1 + v8[10]) = a2[v8[10]];
  *(a1 + v8[11]) = a2[v8[11]];
  v20 = a3[6];
  *(a1 + a3[5]) = a2[a3[5]];
  *(a1 + v20) = *&a2[v20];
  v21 = a3[7];
  v22 = a1 + v21;
  v23 = &a2[v21];
  v24 = *v23;
  LOBYTE(v23) = v23[8];
  *v22 = v24;
  *(v22 + 8) = v23;

  v25 = a3[8];
  v26 = a1 + v25;
  v27 = &a2[v25];
  v28 = *v27;
  LOBYTE(v27) = v27[8];
  *v26 = v28;
  *(v26 + 8) = v27;

  v29 = a3[9];
  v30 = a1 + v29;
  v31 = &a2[v29];
  v32 = *v31;
  LOBYTE(v31) = v31[8];
  *v30 = v32;
  *(v30 + 8) = v31;

  return a1;
}

uint64_t sub_10001D608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10001D6E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_10001D7A0(uint64_t a1)
{
  result = type metadata accessor for TTRNewWidgetViewModel.Reminder(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t sub_10001D854()
{
  result = qword_1000ED710;
  if (!qword_1000ED710)
  {
    sub_100005334(&qword_1000ED718, &qword_1000C53A8);
    sub_100005334(&qword_1000ED610, &qword_1000C6390);
    type metadata accessor for TTRIAnyListComplicationWidgetView.ReminderToggleStyle(255);
    sub_100008478(&qword_1000ED628, &qword_1000ED610, &qword_1000C6390, &protocol conformance descriptor for Toggle<A>);
    sub_10001A310(&qword_1000ED630, type metadata accessor for TTRIAnyListComplicationWidgetView.ReminderToggleStyle, &unk_1000C53F0);
    swift_getOpaqueTypeConformance2();
    sub_10001C624();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED710);
  }

  return result;
}

uint64_t sub_10001DA60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004D04(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10001DAC8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100008420(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10001DB0C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10000537C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRIAnyListComplicationWidgetView.CompletedView(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRNewWidgetPresenter.DisplayDateStyle.TimeOfDayStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10001DD1C()
{
  result = qword_1000ED788;
  if (!qword_1000ED788)
  {
    sub_100005334(&qword_1000ED790, &unk_1000C6F50);
    sub_10001DDD4();
    sub_100008478(&qword_1000ED7B8, &qword_1000ED7C0, &unk_1000C5580, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED788);
  }

  return result;
}

unint64_t sub_10001DDD4()
{
  result = qword_1000ED798;
  if (!qword_1000ED798)
  {
    sub_100005334(&qword_1000ED7A0, &unk_1000C5570);
    sub_100008478(&qword_1000ED7A8, &qword_1000ED7B0, &qword_1000C62E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED798);
  }

  return result;
}

uint64_t sub_10001DEC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRTodayComplicationWidgetViewModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10001DF44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRTodayComplicationWidgetViewModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t _s10WidgetViewVMa(uint64_t a1)
{
  result = qword_1000ED820;
  if (!qword_1000ED820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001E000(uint64_t a1)
{
  result = type metadata accessor for TTRTodayComplicationWidgetViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_10001E0A8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TTRTodayComplicationWidgetViewModel(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001E130(v1, v5);
  return sub_10000309C(v5, a1);
}

uint64_t sub_10001E130(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRTodayComplicationWidgetViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001E198()
{
  result = qword_1000ED858;
  if (!qword_1000ED858)
  {
    type metadata accessor for TTRTodayComplicationWidget.TodayInlineView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED858);
  }

  return result;
}

uint64_t sub_10001E1F0(uint64_t a1)
{
  sub_10001E324();
  v2 = sub_1000C2A28();
  v7._countAndFlagsBits = 0x80000001000CD060;
  v10._countAndFlagsBits = 0x647265764F206425;
  v8._countAndFlagsBits = 0xD00000000000001ELL;
  v8._object = 0x80000001000CD040;
  v9.value._object = 0x80000001000CCEC0;
  v9.value._countAndFlagsBits = 0xD000000000000011;
  v3.super.isa = v2;
  v10._object = 0xEA00000000006575;
  sub_1000C0838(v8, v9, v3, v10, 0xD00000000000007ELL, v7);

  sub_100004D04(&qword_1000ED2C0, &unk_1000C5A20);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000C3590;
  *(v4 + 56) = &type metadata for Int;
  *(v4 + 64) = &protocol witness table for Int;
  *(v4 + 32) = a1;
  v5 = sub_1000C2648();

  return v5;
}

unint64_t sub_10001E324()
{
  result = qword_1000ED860;
  if (!qword_1000ED860)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000ED860);
  }

  return result;
}

char *sub_10001E370(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = (v4 + ((v3 + 16) & ~v3));
  }

  else
  {
    v6 = a1;
    v7 = *(a3 + 20);
    v8 = sub_1000C1118();
    v9 = *(*(v8 - 8) + 16);

    v9(v6 + v7, a2 + v7, v8);
  }

  return v6;
}

uint64_t sub_10001E44C(char *a1, uint64_t a2)
{

  v4 = *(a2 + 20);
  v5 = sub_1000C1118();
  v6 = *(*(v5 - 8) + 8);

  return v6(&a1[v4], v5);
}

char *sub_10001E4C0(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = sub_1000C1118();
  v7 = *(*(v6 - 8) + 16);

  v7(&a1[v5], &a2[v5], v6);
  return a1;
}

char *sub_10001E554(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(a3 + 20);
  v7 = sub_1000C1118();
  (*(*(v7 - 8) + 24))(&a1[v6], &a2[v6], v7);
  return a1;
}

char *sub_10001E5E0(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = sub_1000C1118();
  (*(*(v6 - 8) + 32))(&a1[v5], &a2[v5], v6);
  return a1;
}

char *sub_10001E658(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(a3 + 20);
  v7 = sub_1000C1118();
  (*(*(v7 - 8) + 40))(&a1[v6], &a2[v6], v7);
  return a1;
}

uint64_t sub_10001E6F0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000C1118();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10001E7B0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1000C1118();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for TTRTodayComplicationWidgetProvider(uint64_t a1)
{
  result = qword_1000ED8D8;
  if (!qword_1000ED8D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001E8A0(uint64_t a1)
{
  result = sub_1000C1118();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t sub_10001E940()
{
  result = qword_1000ED910;
  if (!qword_1000ED910)
  {
    type metadata accessor for TTRTodayComplicationWidgetTimelineEntry(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED910);
  }

  return result;
}

uint64_t sub_10001E998()
{
  v0 = sub_1000C1568();
  sub_10000D9B0(v0, qword_1000ED868);
  v1 = sub_10000D978(v0, qword_1000ED868);
  if (qword_1000EC8E8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D978(v0, qword_1000FAAE8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10001EA60(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TTRTodayComplicationWidgetTimelineEntry(0);
  __chkstk_darwin(v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v30 - v6;
  v8 = sub_1000C2488();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C24A8();
  swift_getKeyPath();
  v12 = sub_1000C2498();

  (*(v9 + 8))(v11, v8);
  if (v12)
  {
  }

  v13 = type metadata accessor for TTRTodayComplicationWidgetProvider(0);
  v14 = a1 + *(v2 + 20);
  sub_1000C1108();
  v15 = type metadata accessor for TTRTodayComplicationWidgetViewModel(0);
  *(v14 + *(v15 + 24)) = _swiftEmptyArrayStorage;
  *(v14 + *(v15 + 20)) = 1;
  sub_1000C0AE8();
  v16 = *(v2 + 24);
  v17 = sub_1000C2478();
  (*(*(v17 - 8) + 56))(a1 + v16, 1, 1, v17);
  if (qword_1000EC8B8 != -1)
  {
    swift_once();
  }

  v18 = sub_1000C1568();
  sub_10000D978(v18, qword_1000ED868);
  sub_100022B94(a1, v7, type metadata accessor for TTRTodayComplicationWidgetTimelineEntry);
  v19 = sub_1000C1558();
  v20 = sub_1000C2968();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v30 = v13;
    v31 = v22;
    *v21 = 136446467;
    sub_100004D04(&qword_1000ED928, &qword_1000C56B8);
    v23 = sub_1000C26A8();
    v25 = sub_1000B7B58(v23, v24, &v31);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2081;
    sub_100022B94(v7, v4, type metadata accessor for TTRTodayComplicationWidgetTimelineEntry);
    v26 = sub_1000C26A8();
    v28 = v27;
    sub_100022BFC(v7, type metadata accessor for TTRTodayComplicationWidgetTimelineEntry);
    v29 = sub_1000B7B58(v26, v28, &v31);

    *(v21 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v19, v20, "%{public}s: Created placeholder {entry: %{private}s}", v21, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100022BFC(v7, type metadata accessor for TTRTodayComplicationWidgetTimelineEntry);
  }
}

uint64_t sub_10001EEBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73 = a2;
  v74 = a3;
  v5 = sub_1000C0AF8();
  v76 = *(v5 - 8);
  v77 = v5;
  __chkstk_darwin(v5);
  v75 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRTodayComplicationWidgetProvider(0);
  v68 = *(v7 - 8);
  __chkstk_darwin(v7);
  v69 = v8;
  v71 = v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000C24B8();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v62 = v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v60 - v13;
  v15 = sub_1000C2488();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000C1118();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v65 = v21;
  v66 = v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v22);
  v61 = v7;
  v67 = v20;
  v25 = *(v20 + 16);
  v24 = v20 + 16;
  v72 = v3;
  v78 = v60 - v26;
  v70 = v27;
  v64 = v25;
  v25(v23);
  sub_1000C24A8();
  swift_getKeyPath();
  v63 = sub_1000C2498();

  (*(v16 + 8))(v18, v15);
  if (qword_1000EC8B8 != -1)
  {
    swift_once();
  }

  v28 = sub_1000C1568();
  sub_10000D978(v28, qword_1000ED868);
  v29 = *(v10 + 16);
  v29(v14, a1, v9);
  v30 = sub_1000C1558();
  v31 = sub_1000C2968();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v60[1] = v24;
    v33 = v10;
    v34 = v14;
    v35 = v32;
    v36 = swift_slowAlloc();
    v60[2] = v36;
    *v35 = 136446466;
    v79 = v61;
    v80[0] = v36;
    sub_100004D04(&qword_1000ED928, &qword_1000C56B8);
    v37 = sub_1000C26A8();
    v39 = sub_1000B7B58(v37, v38, v80);

    *(v35 + 4) = v39;
    *(v35 + 12) = 2082;
    v29(v62, v34, v9);
    v40 = sub_1000C26A8();
    v42 = v41;
    (*(v33 + 8))(v34, v9);
    v43 = sub_1000B7B58(v40, v42, v80);

    *(v35 + 14) = v43;
    _os_log_impl(&_mh_execute_header, v30, v31, "%{public}s: Requesting snapshot {context: %{public}s", v35, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v10 + 8))(v14, v9);
  }

  if (v63)
  {
    v44 = v63;
  }

  else
  {
    v44 = &off_1000E7960;
  }

  v45 = v72;
  v63 = *v72;
  v46 = v66;
  v47 = v70;
  (v64)(v66, v78, v70);
  v48 = v71;
  sub_100022B94(v45, v71, type metadata accessor for TTRTodayComplicationWidgetProvider);
  v49 = v67;
  v50 = (*(v67 + 80) + 16) & ~*(v67 + 80);
  v51 = (v65 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = (*(v68 + 80) + v51 + 16) & ~*(v68 + 80);
  v53 = (v69 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  (*(v49 + 32))(v54 + v50, v46, v47);
  v55 = (v54 + v51);
  v56 = v74;
  *v55 = v73;
  v55[1] = v56;
  sub_100022B2C(v48, v54 + v52, type metadata accessor for TTRTodayComplicationWidgetProvider);
  *(v54 + v53) = v44;

  v57 = v75;
  sub_1000C0AE8();
  v58 = v78;
  sub_10008D488(v78, 0x7FFFFFFFFFFFFFFFLL, v44, v57, sub_100022DD8, v54);

  (*(v76 + 8))(v57, v77);
  return (*(v49 + 8))(v58, v47);
}

uint64_t sub_10001F5DC(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5)
{
  v68 = a2;
  v69 = a5;
  v73 = a4;
  v74 = a3;
  v72 = sub_1000C0938();
  v6 = *(v72 - 8);
  __chkstk_darwin(v72);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000C1118();
  v67 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRNewWidgetTimelineEntry(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TTRTodayComplicationWidgetTimelineEntry(0);
  __chkstk_darwin(v16);
  v71 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v70 = &v65 - v19;
  __chkstk_darwin(v20);
  v22 = &v65 - v21;
  if (*(a1 + 16))
  {
    sub_100022B94(a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v15, type metadata accessor for TTRNewWidgetTimelineEntry);
    v23 = sub_1000C0AF8();
    (*(*(v23 - 8) + 16))(v22, v15, v23);
    v24 = &v15[*(v12 + 20)];
    v25 = type metadata accessor for TTRNewWidgetViewModel(0);
    v26 = &v22[*(v16 + 20)];
    (*(v6 + 16))(v26, &v24[v25[18]], v72);
    v27 = v25[20];
    v28 = *&v24[v25[19]];
    LOBYTE(v24) = v24[v27];
    v29 = type metadata accessor for TTRTodayComplicationWidgetViewModel(0);
    *&v26[*(v29 + 24)] = v28;
    v26[*(v29 + 20)] = v24;
    sub_100022ABC(&v15[*(v12 + 24)], &v22[*(v16 + 24)]);

    sub_100022BFC(v15, type metadata accessor for TTRNewWidgetTimelineEntry);
    if (qword_1000EC8B8 != -1)
    {
      swift_once();
    }

    v30 = sub_1000C1568();
    sub_10000D978(v30, qword_1000ED868);
    v31 = v70;
    sub_100022B94(v22, v70, type metadata accessor for TTRTodayComplicationWidgetTimelineEntry);
    v32 = sub_1000C1558();
    v33 = sub_1000C2968();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *v34 = 136446467;
      v75 = type metadata accessor for TTRTodayComplicationWidgetProvider(0);
      sub_100004D04(&qword_1000ED928, &qword_1000C56B8);
      v35 = sub_1000C26A8();
      v37 = sub_1000B7B58(v35, v36, &v76);

      *(v34 + 4) = v37;
      *(v34 + 12) = 2085;
      sub_100022B94(v31, v71, type metadata accessor for TTRTodayComplicationWidgetTimelineEntry);
      v38 = sub_1000C26A8();
      v40 = v39;
      sub_100022BFC(v31, type metadata accessor for TTRTodayComplicationWidgetTimelineEntry);
      v41 = sub_1000B7B58(v38, v40, &v76);

      *(v34 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v32, v33, "%{public}s: Completed snapshot {entry: %{sensitive}s}", v34, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100022BFC(v31, type metadata accessor for TTRTodayComplicationWidgetTimelineEntry);
    }
  }

  else
  {
    v42 = v67;
    v43 = v68;
    v65 = v8;
    v66 = v6;
    v70 = v16;
    if (qword_1000EC8B8 != -1)
    {
      swift_once();
    }

    v44 = sub_1000C1568();
    sub_10000D978(v44, qword_1000ED868);
    v45 = v9;
    (*(v42 + 16))(v11, v43, v9);
    v46 = sub_1000C1558();
    v47 = sub_1000C2968();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = v11;
      v49 = v42;
      v50 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *v50 = 136446467;
      v75 = type metadata accessor for TTRTodayComplicationWidgetProvider(0);
      sub_100004D04(&qword_1000ED928, &qword_1000C56B8);
      v51 = sub_1000C26A8();
      v53 = sub_1000B7B58(v51, v52, &v76);

      *(v50 + 4) = v53;
      *(v50 + 12) = 2081;
      v54 = v65;
      sub_1000C1108();
      v55 = sub_1000C08E8();
      v57 = v56;
      (*(v66 + 8))(v54, v72);
      (*(v49 + 8))(v48, v45);
      v58 = sub_1000B7B58(v55, v57, &v76);

      *(v50 + 14) = v58;
      _os_log_impl(&_mh_execute_header, v46, v47, "%{public}s: No timeline entries created placeholder snapshot {url: %{private}s}", v50, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v42 + 8))(v11, v9);
    }

    v59 = v70;
    type metadata accessor for TTRTodayComplicationWidgetProvider(0);
    v22 = v71;
    v60 = &v71[*(v59 + 20)];
    sub_1000C1108();
    v61 = type metadata accessor for TTRTodayComplicationWidgetViewModel(0);
    *&v60[*(v61 + 24)] = _swiftEmptyArrayStorage;
    v60[*(v61 + 20)] = 1;
    sub_1000C0AE8();
    v62 = *(v59 + 24);
    v63 = sub_1000C2478();
    (*(*(v63 - 8) + 56))(&v22[v62], 1, 1, v63);
  }

  v74(v22);
  return sub_100022BFC(v22, type metadata accessor for TTRTodayComplicationWidgetTimelineEntry);
}