id sub_1000306F0(char a1)
{
  v2 = type metadata accessor for Locale();
  v3 = sub_10000ED84(v2);
  __chkstk_darwin(v3);
  sub_10000C30C();
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = sub_10000ED84(v4);
  __chkstk_darwin(v5);
  sub_10000C30C();
  switch(a1)
  {
    case 1:
    case 2:
    case 6:
    case 10:
    case 11:
    case 14:
    case 16:
      sub_100033474();
      sub_10001ECEC();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      goto LABEL_13;
    case 3:

      return sub_100021394();
    case 4:

      return sub_1000214D0();
    case 9:
    case 17:
      sub_10001ECEC();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      goto LABEL_13;
    case 12:
      sub_10001ECEC();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      goto LABEL_13;
    case 15:
      sub_100033474();
      sub_10001ECEC();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
LABEL_13:
      sub_100017B50();
      break;
    default:
      sub_100033474();
      sub_10001ECEC();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      sub_100017B50();
      break;
  }

  return String.init(localized:table:bundle:locale:comment:)();
}

void sub_100030B64()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v31 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 0;
  v7 = *(v0 + *(type metadata accessor for HandoffBundle(0) + 44));
  v8 = *(v7 + 16);
  v26[0] = "SETTINGS_DISABLED";
  v26[1] = " data handoff summary view.";
  v9 = v7 + 48;
  v10 = _swiftEmptyArrayStorage;
  v11 = -v8;
  v30 = v7 + 48;
LABEL_2:
  v12 = v9 + 32 * v6++;
  while (v11 + v6 != 1)
  {
    if ((v6 - 1) >= *(v7 + 16))
    {
      __break(1u);
      return;
    }

    v14 = *(v12 - 16);
    v13 = *(v12 - 8);
    swift_bridgeObjectRetain_n();
    v15 = sub_10009A9A8(v14, v13);
    if (v15 != 18)
    {
      v16 = sub_1000306F0(v15);
      v28 = v17;
      v29 = v16;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v27 = String.init(localized:table:bundle:locale:comment:)();
      v19 = v18;
      v20 = v3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000D0110();
        v10 = v24;
      }

      v21 = v10[2];
      if (v21 >= v10[3] >> 1)
      {
        sub_1000D0110();
        v10 = v25;
      }

      v10[2] = (v21 + 1);
      v22 = &v10[6 * v21];
      v22[4] = v14;
      v22[5] = v13;
      v23 = v28;
      v22[6] = v29;
      v22[7] = v23;
      v22[8] = v27;
      v22[9] = v19;
      v3 = v20;
      v9 = v30;
      goto LABEL_2;
    }

    ++v6;
    v12 += 32;
  }
}

uint64_t sub_100030E8C()
{
  v1 = type metadata accessor for Locale();
  v2 = sub_10000ED84(v1);
  __chkstk_darwin(v2);
  sub_10000C30C();
  v65[2] = v4 - v3;
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = sub_10000ED84(v5);
  __chkstk_darwin(v6);
  sub_10000C30C();
  v65[1] = v8 - v7;
  v9 = type metadata accessor for WelcomeListItem();
  sub_100008780();
  v11 = v10;
  v13 = __chkstk_darwin(v12);
  v15 = v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v66 = v65 - v17;
  v18 = __chkstk_darwin(v16);
  v65[0] = v65 - v19;
  __chkstk_darwin(v18);
  v21 = v65 - v20;
  v73 = v0;
  sub_100003768(&qword_10018A6E0, &qword_100124900);
  v22 = sub_1000317E4();
  sub_100033484();
  sub_10000AAEC(v23, &qword_10018A6E0, &qword_100124900, v24);
  v72 = v22;
  WelcomeListItem.init<A, B>(collapsedView:expandedView:)();
  sub_1000D0208();
  v26 = v25;
  v27 = *(v25 + 16);
  if (v27 >= *(v25 + 24) >> 1)
  {
    sub_1000334B4();
    v26 = v61;
  }

  *(v26 + 16) = v27 + 1;
  v29 = *(v11 + 32);
  v28 = v11 + 32;
  v70 = (*(v28 + 48) + 32) & ~*(v28 + 48);
  v71 = v29;
  v69 = *(v28 + 40);
  v29(v26 + v70 + v69 * v27, v21, v9);
  sub_100030B64();
  v31 = *(v30 + 16);

  v67 = v15;
  v68 = v9;
  if (v31)
  {
    v33 = __chkstk_darwin(v32);
    v65[-2] = v0;
    __chkstk_darwin(v33);
    v34 = v0;
    v65[-2] = v0;
    sub_100003768(&qword_10018A6F8, &qword_100124908);
    sub_100033484();
    sub_10000AAEC(v35, &qword_10018A6F8, &qword_100124908, v36);
    v37 = v65[0];
    WelcomeListItem.init<A, B>(collapsedView:expandedView:)();
    v38 = *(v26 + 16);
    if (v38 >= *(v26 + 24) >> 1)
    {
      sub_1000334B4();
      v26 = v63;
    }

    v9 = v68;
    v39 = v69;
    *(v26 + 16) = v38 + 1;
    v71(v26 + v70 + v38 * v39, v37, v9);
    v0 = v34;
  }

  v40 = v0 + *(type metadata accessor for HandoffBundle(0) + 20);
  v41 = *(v40 + 8);
  if (v41)
  {
    v65[0] = v0;
    v43 = *(v40 + 16);
    v42 = *(v40 + 24);
    v74[0] = *v40;
    v74[1] = v41;
    v74[2] = v43;
    v74[3] = v42;
    v44 = *(v40 + 48);
    v75 = *(v40 + 32);
    v76 = v44;
    v77 = *(v40 + 64);
    sub_1000334E4();
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v45 = String.init(localized:table:bundle:locale:comment:)();
    v46 = __chkstk_darwin(v45);
    v65[-2] = v46;
    v65[-1] = v47;
    __chkstk_darwin(v46);
    v65[-2] = v74;
    sub_100003768(&qword_10018A708, &qword_100124910);
    sub_100033484();
    sub_10000AAEC(v48, &qword_10018A708, &qword_100124910, v49);
    v50 = v66;
    WelcomeListItem.init<A, B>(collapsedView:expandedView:)();

    v51 = *(v26 + 16);
    if (v51 >= *(v26 + 24) >> 1)
    {
      sub_1000334B4();
      v26 = v64;
    }

    v9 = v68;
    v52 = v69;
    *(v26 + 16) = v51 + 1;
    v71(v26 + v70 + v51 * v52, v50, v9);
  }

  sub_1000334D8();
  if (v53 || (sub_1000334D8(), v54) || (sub_1000334D8(), v55) || (sub_1000334D8(), v56) || (sub_1000334D8(), v57))
  {
    v58 = v67;
    WelcomeListItem.init<A>(customTitleView:)();
    v59 = *(v26 + 16);
    if (v59 >= *(v26 + 24) >> 1)
    {
      sub_1000D0208();
      v26 = v62;
    }

    *(v26 + 16) = v59 + 1;
    v71(v26 + v70 + v59 * v69, v58, v9);
  }

  return v26;
}

uint64_t sub_10003156C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v4 = String.init(localized:table:bundle:locale:comment:)();
  v6 = v5;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = result;
  *(a1 + 24) = v8;
  strcpy((a1 + 32), "iphone.sizes");
  *(a1 + 45) = 0;
  *(a1 + 46) = -5120;
  return result;
}

void *sub_100031700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static HorizontalAlignment.center.getter();
  v10 = 0;
  sub_100031838(a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v12, __src, sizeof(v12));
  sub_10000EC9C(__dst, &v7, &qword_10018A758, &qword_100124968);
  sub_10000ABCC(v12, &qword_10018A758, &qword_100124968);
  memcpy(&v9[7], __dst, 0x60uLL);
  v5 = v10;
  *a2 = v4;
  *(a2 + 8) = 0x4028000000000000;
  *(a2 + 16) = v5;
  return memcpy((a2 + 17), v9, 0x67uLL);
}

unint64_t sub_1000317E4()
{
  result = qword_10018A6E8;
  if (!qword_10018A6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A6E8);
  }

  return result;
}

uint64_t sub_100031838@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HandoffBundle(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18[0] = String.init(localized:table:bundle:locale:comment:)();
  v10 = v9;
  sub_100032CD4(a1, v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_100032D3C(v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v13 = String.init(localized:table:bundle:locale:comment:)();
  v15 = v14;
  sub_100032CD4(a1, v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = swift_allocObject();
  sub_100032D3C(v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v11);
  *a2 = v18[0];
  a2[1] = v10;
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = sub_100032DA0;
  a2[5] = v12;
  a2[6] = v13;
  a2[7] = v15;
  a2[8] = 0;
  a2[9] = 0;
  a2[10] = sub_100032F20;
  a2[11] = v16;

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_100031AF0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100003768(qword_10018A760, &qword_100124970);
  __chkstk_darwin(v2 - 8);
  v4 = v23 - v3;
  v5 = sub_100025AAC(7);
  v7 = v6;
  sub_100025AAC(3);

  sub_100025AAC(5);

  sub_100025AAC(0);

  v23[2] = v5;
  v23[3] = v7;
  sub_10000AC24();
  v8 = Text.init<A>(_:)();
  v10 = v9;
  v12 = v11;
  v13 = enum case for Font.Design.monospaced(_:);
  v14 = type metadata accessor for Font.Design();
  (*(*(v14 - 8) + 104))(v4, v13, v14);
  sub_100003CE8(v4, 0, 1, v14);
  v15 = Text.fontDesign(_:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_10000AC78(v8, v10, v12 & 1);

  result = sub_10000ABCC(v4, qword_10018A760, &qword_100124970);
  *a1 = v15;
  *(a1 + 8) = v17;
  *(a1 + 16) = v19 & 1;
  *(a1 + 24) = v21;
  return result;
}

uint64_t sub_100031CB8@<X0>(uint64_t a1@<X8>)
{
  sub_100025AAC(7);

  sub_100025AAC(3);
  sub_100025AAC(5);

  sub_100025AAC(0);

  sub_10000AC24();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

void sub_100031D54(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v4 = String.init(localized:table:bundle:locale:comment:)();
  v6 = v5;
  sub_100030530();
  *a1 = v4;
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = 0x322E686374697773;
  a1[5] = 0xE800000000000000;
}

uint64_t sub_100031E8C@<X0>(uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0x4028000000000000;
  *(a2 + 16) = 0;
  sub_100003768(&qword_10018A720, &qword_100124928);
  sub_100030B64();
  swift_getKeyPath();
  sub_100003768(&qword_10018A728, &qword_100124950);
  sub_100003768(&qword_10018A730, &qword_100124958);
  sub_10000AAEC(&qword_10018A738, &qword_10018A728, &qword_100124950, &protocol conformance descriptor for [A]);
  sub_10000AAEC(&qword_10018A740, &qword_10018A730, &qword_100124958, &unk_100124A34);
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_100031FEC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v8 = a1[4];
  v7 = a1[5];
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = v3;
  v9[4] = v6;
  v9[5] = v5;
  v9[6] = v8;
  v9[7] = v7;
  *a2 = v6;
  a2[1] = v5;
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = sub_100032CA0;
  a2[5] = v9;
  swift_bridgeObjectRetain_n();
}

uint64_t sub_100032094@<X0>(uint64_t a2@<X8>)
{
  sub_10000AC24();

  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_100032100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  *a3 = String.init(localized:table:bundle:locale:comment:)();
  *(a3 + 8) = v8;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  strcpy((a3 + 32), "apple.account");
  *(a3 + 46) = -4864;
}

void *sub_10003224C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static HorizontalAlignment.center.getter();
  v10 = 0;
  sub_100032328(a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v12, __src, sizeof(v12));
  sub_10000EC9C(__dst, &v7, &qword_10018A718, &qword_100124918);
  sub_10000ABCC(v12, &qword_10018A718, &qword_100124918);
  memcpy(&v9[7], __dst, 0xC0uLL);
  v5 = v10;
  *a2 = v4;
  *(a2 + 8) = 0x4028000000000000;
  *(a2 + 16) = v5;
  return memcpy((a2 + 17), v9, 0xC7uLL);
}

uint64_t sub_100032328@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v5 = String.init(localized:table:bundle:locale:comment:)();
  v27 = v6;
  v28 = v5;
  v26 = swift_allocObject();
  memcpy((v26 + 16), a1, 0x50uLL);
  v41 = a1[1];
  v7 = *(&v41 + 1);
  if (*(&v41 + 1))
  {
    v8 = v41;
    sub_100032AB4(a1, v40);
    sub_10000EC9C(&v41, v40, &qword_10018A518, &qword_100124920);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v25 = String.init(localized:table:bundle:locale:comment:)();
    v10 = v9;
    v11 = swift_allocObject();
    *(v11 + 16) = v8;
    *(v11 + 24) = v7;
    v12 = v10;

    v23 = v11;

    v24 = sub_100032C00;
  }

  else
  {
    sub_100032AB4(a1, v40);
    v24 = 0;
    v25 = 0;
    v12 = 0;
    v23 = 0;
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v13 = String.init(localized:table:bundle:locale:comment:)();
  v21 = v14;
  v22 = v13;
  v20 = swift_allocObject();
  memcpy((v20 + 16), a1, 0x50uLL);
  sub_100032AB4(a1, v40);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v15 = String.init(localized:table:bundle:locale:comment:)();
  v17 = v16;
  v18 = swift_allocObject();
  memcpy((v18 + 16), a1, 0x50uLL);
  v38[0] = v28;
  v38[1] = v27;
  v38[2] = 0;
  v38[3] = 0;
  v38[4] = sub_100032AAC;
  v38[5] = v26;
  v32 = v25;
  v33 = v12;
  v34 = 0;
  v35 = 0;
  v36 = v24;
  v37 = v23;
  v39[0] = v38;
  v39[1] = &v32;
  v31[0] = v22;
  v31[1] = v21;
  v31[2] = 0;
  v31[3] = 0;
  v31[4] = sub_100032B10;
  v31[5] = v20;
  v39[2] = v31;
  v30[0] = v15;
  v30[1] = v17;
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = sub_100032B70;
  v30[5] = v18;
  v39[3] = v30;
  sub_10002F314(v39, a2);
  sub_100032AB4(a1, v40);
  sub_100032B78(v25, v12, 0, 0, v24, v23);

  sub_100032B78(v32, v33, v34, v35, v36, v37);
}

uint64_t sub_1000327C0@<X0>(uint64_t a2@<X8>)
{
  sub_10000AC24();

  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_10003282C@<X0>(uint64_t a3@<X8>)
{
  sub_10000AC24();

  result = Text.init<A>(_:)();
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_100032898@<X0>(uint64_t a2@<X8>)
{
  sub_10000AC24();

  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_100032904@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v4 = String.init(localized:table:bundle:locale:comment:)();
  v6 = v5;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  *a1 = v4;
  a1[1] = v6;
  a1[2] = result;
  a1[3] = v8;
  a1[4] = 0xD000000000000017;
  a1[5] = 0x8000000100135270;
  return result;
}

uint64_t sub_100032B18()
{

  return _swift_deallocObject(v0, 96, 7);
}

void sub_100032B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

uint64_t sub_100032BC8()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100032C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

uint64_t sub_100032C58()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100032CD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HandoffBundle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100032D3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HandoffBundle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100032DB8()
{
  v1 = type metadata accessor for HandoffBundle(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  type metadata accessor for ContactType();
  sub_10000AF7C();
  (*(v5 + 8))(v0 + v3);
  if (*(v0 + v3 + *(v1 + 20) + 8))
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100032F38(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for HandoffBundle(0);
  sub_10000ED84(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a1(v4);
}

uint64_t sub_100032FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100033014(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100033054(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100033128(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100017564(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10003316C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10000AC78(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_1000331C4()
{
  result = qword_10018A838;
  if (!qword_10018A838)
  {
    sub_100004D48(&qword_10018A820, &qword_100124BA0);
    sub_10000AAEC(&qword_10018A840, &qword_10018A848, &qword_100124BE8, &protocol conformance descriptor for VStack<A>);
    sub_10000AAEC(&qword_100189DB8, &qword_100189DC0, &qword_100124BB0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A838);
  }

  return result;
}

unint64_t sub_1000332AC()
{
  result = qword_10018A850;
  if (!qword_10018A850)
  {
    sub_100004D48(&qword_10018A7F0, &qword_100124AE0);
    sub_10000AAEC(&qword_10018A858, &qword_10018A860, &unk_100124BF0, &protocol conformance descriptor for HStack<A>);
    sub_10000AAEC(&qword_10018A868, &qword_10018A7F8, &qword_100124AE8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A850);
  }

  return result;
}

uint64_t sub_100033390()
{
  sub_100004D48(&qword_10018A820, &qword_100124BA0);
  sub_100004D48(&qword_10018A828, &qword_100124BA8);
  sub_100006AA0();
  type metadata accessor for ModifiedContent();
  sub_100004D48(&qword_100189DC0, &qword_100124BB0);
  sub_100006AA0();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  sub_100006A70();
  swift_getWitnessTable();
  sub_100006AA0();
  type metadata accessor for HStack();
  sub_10003349C();

  return swift_getWitnessTable();
}

void sub_1000334B4()
{

  sub_1000D0208();
}

uint64_t sub_1000334F8(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100033510(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100033524(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100033564(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1000335D8()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 8);
  v5 = *v0;
  v10 = *v0;
  v6 = v11;

  if ((v6 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10001F65C(&v10);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_100033724()
{
  v7 = *v0;
  v8 = *(v0 + 8);
  v1 = v0[3];
  v2 = v0[4];
  v3 = swift_allocObject();
  v4 = *(v0 + 1);
  *(v3 + 16) = *v0;
  *(v3 + 32) = v4;
  *(v3 + 48) = v0[4];
  sub_100033974(&v7, v6);

  sub_100006568(v1, v2);
  return Button.init(action:label:)();
}

uint64_t sub_100033858@<X0>(uint64_t a2@<X8>)
{
  sub_10000AC24();

  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_100033914()
{

  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100033974(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_100189B30, &unk_100123800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000339E8()
{
  result = qword_10018A870;
  if (!qword_10018A870)
  {
    sub_100004D48(&qword_10018A878, &qword_100124D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A870);
  }

  return result;
}

uint64_t sub_100033A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, NSObject *a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a1;
  v48 = a3;
  v46 = a4;
  v5 = sub_100003768(&qword_10018A880, &qword_100124D20);
  sub_100008780();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = (&v44 - v9);
  sub_100003768(&qword_10018A888, &qword_100124D28);
  sub_100008780();
  v12 = v11;
  v14 = *(v13 + 64);
  v16 = __chkstk_darwin(v15);
  v17 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v44 - v19;
  v45 = v18;
  *v10 = 1;
  (*(v7 + 104))(v10, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v5);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v7 + 8))(v10, v5);
  out_token = 0;
  sub_100034078(v20, v17);
  v21 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v22 = swift_allocObject();
  v23 = v22 + v21;
  v24 = v47;
  sub_10003420C(v17, v23);
  v55 = sub_10003427C;
  v56 = v22;
  aBlock = _NSConcreteStackBlock;
  v52 = 1107296256;
  v53 = sub_1000342F8;
  v54 = &unk_1001795E8;
  v25 = _Block_copy(&aBlock);

  v26 = String.utf8CString.getter();
  v27 = notify_register_dispatch((v26 + 32), &out_token, v48, v25);

  _Block_release(v25);
  if (v27)
  {
    aBlock = 0;
    v52 = 0xE000000000000000;
    _StringGuts.grow(_:)(43);

    aBlock = 0xD00000000000001ELL;
    v52 = 0x8000000100135C10;
    v49 = v24;
    v50 = a2;

    v28._countAndFlagsBits = String.init<A>(reflecting:)();
    String.append(_:)(v28);

    v29._countAndFlagsBits = 0x746C75736572202CLL;
    v29._object = 0xE900000000000020;
    String.append(_:)(v29);
    LODWORD(v49) = v27;
    v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v30);

    v31 = aBlock;
    v32 = v52;
    sub_100034364();
    swift_allocError();
    *v33 = v31;
    v33[1] = v32;
    swift_willThrow();
    return sub_1000343B8(v20);
  }

  else
  {
    sub_100034078(v20, v17);
    v35 = v45;
    v36 = *(v45 + 48);
    v37 = out_token;
    v38 = swift_allocObject();
    *(v38 + 16) = v37;
    *(v38 + 24) = v24;
    *(v38 + 32) = a2;

    v39 = sub_100003768(&qword_10018A898, &qword_10012D140);
    AsyncStream.Continuation.onTermination.setter();
    v40 = *(*(v39 - 8) + 8);
    v40(&v17[v36], v39);
    v41 = sub_100003768(&qword_10018A890, &unk_100124D30);
    v42 = *(v41 - 8);
    (*(v42 + 8))(v17, v41);
    sub_10003420C(v20, v17);
    v43 = *(v35 + 48);
    (*(v42 + 32))(v46, v17, v41);
    return (v40)(&v17[v43], v39);
  }
}

uint64_t sub_100033F70()
{
  v0 = sub_100003768(&qword_10018A8A8, &qword_100124D40);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  sub_100003768(&qword_10018A888, &qword_100124D28);
  sub_100003768(&qword_10018A898, &qword_10012D140);
  AsyncStream.Continuation.yield(_:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100034078(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_10018A888, &qword_100124D28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000340E8()
{
  v1 = (sub_100003768(&qword_10018A888, &qword_100124D28) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_100003768(&qword_10018A890, &unk_100124D30);
  sub_10000C31C();
  (*(v5 + 8))(v0 + v3);
  v6 = v1[14];
  sub_100003768(&qword_10018A898, &qword_10012D140);
  sub_10000C31C();
  (*(v7 + 8))(v0 + v3 + v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10003420C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_10018A888, &qword_100124D28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003427C()
{
  sub_100003768(&qword_10018A888, &qword_100124D28);

  return sub_100033F70();
}

uint64_t sub_1000342F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_10003434C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100034364()
{
  result = qword_10018A8A0;
  if (!qword_10018A8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A8A0);
  }

  return result;
}

uint64_t sub_1000343B8(uint64_t a1)
{
  v2 = sub_100003768(&qword_10018A888, &qword_100124D28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100034420(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = notify_cancel(a2);
  if (result)
  {
    v12 = result;
    static Logger.supportFlowApp.getter();

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v20[2] = a4;
      v21 = v16;
      *v15 = 136446466;
      v20[1] = a3;

      v17 = String.init<A>(reflecting:)();
      v19 = sub_10009CACC(v17, v18, &v21);

      *(v15 + 4) = v19;
      *(v15 + 12) = 1026;
      *(v15 + 14) = v12;
      _os_log_impl(&_mh_execute_header, v13, v14, "Failed to cancel stream for %{public}s, result %{public}u", v15, 0x12u);
      sub_1000086BC(v16);
    }

    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_10003460C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003469C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = qword_100188390;

  if (v6 != -1)
  {
    swift_once();
  }

  v8 = qword_1001A59A0;
  v7 = *algn_1001A59A8;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 48) = 0;
  *(a3 + 56) = v8;
  *(a3 + 64) = v7;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
}

uint64_t sub_10003476C@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 72) = &type metadata for MessagesStepProvider;
  *(a1 + 80) = sub_10001362C();
  *(a1 + 48) = 9;
  type metadata accessor for FlowViewDataProvider(0);
  sub_10000B550();
  result = Environment.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  *(a1 + 32) = 0xD000000000000016;
  *(a1 + 40) = 0x8000000100135C30;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  return result;
}

unint64_t sub_100034800()
{
  result = qword_10018A8B0;
  if (!qword_10018A8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A8B0);
  }

  return result;
}

uint64_t sub_100034880@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  type metadata accessor for PlainButtonStyle();
  sub_100008780();
  v25 = v1;
  v26 = v2;
  __chkstk_darwin(v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ListSectionSpacing();
  sub_100008780();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003768(&qword_10018A8B8, &qword_100124F50);
  sub_10000AF7C();
  __chkstk_darwin(v11);
  v12 = sub_100003768(&qword_10018A8C0, &unk_100124F58);
  sub_10000AF7C();
  __chkstk_darwin(v13);
  v15 = &v24 - v14;
  sub_100034DF0();
  sub_100003768(&qword_10018A558, &unk_100124490);
  sub_1000350A8();
  sub_10002C170();
  Section<>.init(header:content:)();
  static ListSectionSpacing.custom(_:)();
  v16 = *(sub_100003768(&qword_10018A8D8, &qword_100124F68) + 36);
  (*(v7 + 16))(&v15[v16], v10, v5);
  sub_100003CE8(&v15[v16], 0, 1, v5);
  KeyPath = swift_getKeyPath();
  v18 = &v15[*(v12 + 36)];
  v19 = *(sub_100003768(&qword_100188FE8, &qword_100124FA0) + 28);
  (*(v7 + 32))(v18 + v19, v10, v5);
  sub_100003CE8(v18 + v19, 0, 1, v5);
  *v18 = KeyPath;
  PlainButtonStyle.init()();
  sub_10003519C();
  sub_100035550();
  sub_1000353A4(v20, v21, &protocol conformance descriptor for PlainButtonStyle);
  v22 = v25;
  View.buttonStyle<A>(_:)();
  (*(v26 + 8))(v4, v22);
  return sub_1000353EC(v15);
}

uint64_t sub_100034BCC()
{
  v0 = type metadata accessor for PlacardInfoItemType(0);
  v1 = __chkstk_darwin(v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = v11 - v4;
  if (qword_100188100 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for URL();
  v7 = sub_10000C2D4(v6, qword_1001A5698);
  (*(*(v6 - 8) + 16))(v5, v7, v6);
  swift_storeEnumTagMultiPayload();
  if (qword_1001881D8 != -1)
  {
    swift_once();
  }

  v8 = qword_1001A5758;
  type metadata accessor for PlacardInfoItem(0);
  sub_10001029C(v5, v3);

  v9 = sub_1000EFDB8(v3, 0, 0);

  sub_100035454(v5, type metadata accessor for PlacardInfoItemType);
  v11[1] = v9;
  v12 = 0;
  v13 = v8;
  v14 = v8;
  v16 = 0;
  v17 = 0;
  v15 = 0;
  static String.stepSectionFallbackContactSupport.getter();
  sub_10002C22C();
  View.accessibilityIdentifier(_:)();
}

uint64_t sub_100034DF0()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for FlowStepSectionHeaderView(0);
  __chkstk_darwin(v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100188438 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for ImageResource();
  v6 = sub_10000C2D4(v5, qword_1001A5B00);
  (*(*(v5 - 8) + 16))(v4, v6, v5);
  v7 = type metadata accessor for FlowAsset(0);
  __asm { FMOV            V0.2D, #20.0 }

  *&v4[*(v7 + 20)] = _Q0;
  *&v4[*(v7 + 24)] = 0x4018000000000000;
  v13 = type metadata accessor for FlowImage(0);
  swift_storeEnumTagMultiPayload();
  sub_100003CE8(v4, 0, 1, v13);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v14 = String.init(localized:table:bundle:locale:comment:)();
  v15 = &v4[*(v2 + 20)];
  *v15 = v14;
  v15[1] = v16;
  static String.stepSectionFallbackContactSupportHeader.getter();
  sub_1000353A4(&qword_10018A8D0, type metadata accessor for FlowStepSectionHeaderView, &unk_10012421C);
  View.accessibilityIdentifier(_:)();

  return sub_100035454(v4, type metadata accessor for FlowStepSectionHeaderView);
}

unint64_t sub_1000350A8()
{
  result = qword_10018A8C8;
  if (!qword_10018A8C8)
  {
    sub_100004D48(&qword_10018A8B8, &qword_100124F50);
    sub_1000353A4(&qword_10018A8D0, type metadata accessor for FlowStepSectionHeaderView, &unk_10012421C);
    sub_1000353A4(&qword_1001887F8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A8C8);
  }

  return result;
}

unint64_t sub_10003519C()
{
  result = qword_10018A8E0;
  if (!qword_10018A8E0)
  {
    sub_100004D48(&qword_10018A8C0, &unk_100124F58);
    sub_100035254();
    sub_10000AAEC(&qword_100189010, &qword_100188FE8, &qword_100124FA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A8E0);
  }

  return result;
}

unint64_t sub_100035254()
{
  result = qword_10018A8E8;
  if (!qword_10018A8E8)
  {
    sub_100004D48(&qword_10018A8D8, &qword_100124F68);
    sub_10003530C();
    sub_10000AAEC(&qword_100189000, &qword_100189008, &qword_100122380, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A8E8);
  }

  return result;
}

unint64_t sub_10003530C()
{
  result = qword_10018A8F0;
  if (!qword_10018A8F0)
  {
    sub_100004D48(&qword_10018A8F8, &qword_100124FA8);
    sub_1000350A8();
    sub_10002C170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A8F0);
  }

  return result;
}

uint64_t sub_1000353A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000353EC(uint64_t a1)
{
  v2 = sub_100003768(&qword_10018A8C0, &unk_100124F58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100035454(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_10000AF7C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1000354AC()
{
  sub_100004D48(&qword_10018A8C0, &unk_100124F58);
  type metadata accessor for PlainButtonStyle();
  sub_10003519C();
  sub_100035550();
  sub_1000353A4(v0, v1, &protocol conformance descriptor for PlainButtonStyle);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100035568()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1001A5710 = result;
  *algn_1001A5718 = v3;
  return result;
}

uint64_t sub_100035688()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1001A5720 = result;
  *algn_1001A5728 = v3;
  return result;
}

unint64_t sub_1000357A8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100175978, v2);

  if (v3 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000357F4(char a1)
{
  result = 21825;
  switch(a1)
  {
    case 1:
      result = 1094939238;
      break;
    case 2:
      result = 16707;
      break;
    case 3:
      result = 18499;
      break;
    case 4:
      result = 20035;
      break;
    case 5:
      result = 17732;
      break;
    case 6:
      result = 21317;
      break;
    case 7:
      result = 16967;
      break;
    case 8:
      result = 17737;
      break;
    case 9:
      result = 20041;
      break;
    case 10:
      result = 21577;
      break;
    case 11:
      result = 22605;
      break;
    case 12:
      result = 23118;
      break;
    case 13:
      result = 18259;
      break;
    case 14:
      result = 21333;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000358FC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000357A8(*a1);
  *a2 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for MessagesServiceProvider(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000359F8);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100035A30@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000357F4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100035A60()
{
  result = qword_10018A908;
  if (!qword_10018A908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A908);
  }

  return result;
}

uint64_t sub_100035B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>, uint64_t a9, uint64_t a10)
{
  sub_10003CF80();
  sub_100035EC0(a1, a2, a3, a4, a5, v21, a7, a8, x8_0, a9, a10);
  return sub_10000ABCC(a6, &qword_100189310, &qword_1001221A0);
}

uint64_t sub_100035BD0()
{
  v1 = type metadata accessor for EnvironmentValues();
  sub_100008780();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  v8 = *(v0 + 8);

  if ((v8 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_100035D04()
{
  sub_100003768(&qword_10018A530, &qword_100124440);
  sub_10000AF7C();
  sub_10000ED78();
  __chkstk_darwin(v2);
  sub_10003CF80();
  State.init(wrappedValue:)();
  sub_10003DCCC();
  return sub_10000ABCC(v3, v4, v5);
}

uint64_t sub_100035DBC(uint64_t a1, uint64_t a2)
{
  sub_100003768(&qword_10018A518, &qword_100124920);
  State.init(wrappedValue:)();
  return v3;
}

uint64_t sub_100035E44()
{
  sub_100035BD0();
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_1000FE640(v0[4], v0[5]);
  v5 = sub_100052134(v1, v2, v3, v4);

  return v5;
}

__n128 sub_100035EC0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v36 = a7;
  v37 = a8;
  v35 = a5;
  v17 = sub_100003768(&qword_10018A530, &qword_100124440);
  __chkstk_darwin(v17 - 8);
  v19 = &v34 - v18;
  type metadata accessor for FlowViewDataProvider(0);
  sub_10003CCEC(&qword_1001886D0, type metadata accessor for FlowViewDataProvider, &unk_100129E68);
  *a9 = Environment.init<A>(_:)();
  *(a9 + 8) = v20 & 1;
  v22 = type metadata accessor for FlowStepStackView(0, a10, a11, v21);
  v23 = type metadata accessor for HandoffBundle(0);
  sub_100003CE8(v19, 1, 1, v23);
  sub_100035D04();
  v24 = (a9 + *(v22 + 60));
  *v24 = sub_100035DBC(0, 0);
  v24[1] = v25;
  v24[2] = v26;
  v27 = (a9 + *(v22 + 64));
  v28 = sub_100035E08(0.0);
  *v27 = v29;
  v27[1] = v28;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  if (!a4)
  {
    a4 = sub_1000FF880(_swiftEmptyArrayStorage);
    a3 = 0;
  }

  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = v35;
  result = *a6;
  v31 = *(a6 + 16);
  *(a9 + 56) = *a6;
  *(a9 + 72) = v31;
  v33 = v36;
  v32 = v37;
  *(a9 + 88) = *(a6 + 32);
  *(a9 + 96) = v33;
  *(a9 + 104) = v32;
  return result;
}

uint64_t sub_100036088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v147 = a2;
  v3 = sub_100003768(&qword_10018A9C0, &qword_100125168);
  sub_10000ED84(v3);
  sub_10000ED78();
  __chkstk_darwin(v4);
  sub_10003DC84();
  v146 = v5;
  v154 = a1;
  sub_10003DBE4();
  v158 = v6;
  v156 = *(v7 + 64);
  __chkstk_darwin(v8);
  v145 = v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = sub_100004D48(&qword_10018A9C8, &qword_100125170);
  v178 = sub_100004D48(&qword_10018A9D0, &qword_100125178);
  v155 = *(a1 + 16);
  v179 = type metadata accessor for Optional();
  v180 = sub_100004D48(&qword_10018A9D8, &qword_100125180);
  v181 = sub_100004D48(&qword_10018A9E0, &qword_100125188);
  v182 = sub_100004D48(&qword_10018A9E8, &qword_100125190);
  sub_10003DCF0(v182, v10, &v177);
  v11 = type metadata accessor for TupleView();
  v149 = v11;
  sub_100006A70();
  WitnessTable = swift_getWitnessTable();
  v177 = &type metadata for String;
  v178 = v11;
  v179 = &protocol witness table for String;
  v180 = WitnessTable;
  v12 = type metadata accessor for List();
  sub_100008780();
  v141 = v13;
  sub_10000ED78();
  __chkstk_darwin(v14);
  sub_10003DC84();
  v132 = v15;
  v115 = v12;
  v16 = type metadata accessor for ModifiedContent();
  sub_100008780();
  v150 = v17;
  sub_10000ED78();
  __chkstk_darwin(v18);
  sub_10003DC84();
  v130 = v19;
  sub_100004D48(&qword_10018A9F0, &qword_100125198);
  v124 = v16;
  v20 = type metadata accessor for ModifiedContent();
  sub_100008780();
  v151 = v21;
  sub_10000ED78();
  __chkstk_darwin(v22);
  sub_10003DC84();
  v137 = v23;
  sub_100004D48(&qword_10018A9F8, &qword_1001251A0);
  v129 = v20;
  v24 = type metadata accessor for ModifiedContent();
  sub_100008780();
  v144 = v25;
  sub_10000ED78();
  __chkstk_darwin(v26);
  sub_10003DC84();
  v152 = v27;
  sub_10003DC3C();
  v28 = swift_getWitnessTable();
  v114 = v28;
  v29 = sub_10000F4E8();
  v175 = v28;
  v176 = v29;
  v30 = swift_getWitnessTable();
  v119 = v30;
  sub_10003DC24();
  v33 = sub_10000AAEC(v31, &qword_10018A9F0, &qword_100125198, v32);
  v173 = v30;
  v174 = v33;
  v34 = swift_getWitnessTable();
  v121 = v34;
  sub_10003DC0C();
  v37 = sub_10000AAEC(v35, &qword_10018A9F8, &qword_1001251A0, v36);
  v171 = v34;
  v172 = v37;
  v38 = swift_getWitnessTable();
  v177 = v24;
  v178 = v38;
  v126 = v24;
  v127 = v38;
  v39 = v38;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  sub_10003DBE4();
  v143 = v41;
  sub_10000ED78();
  __chkstk_darwin(v42);
  sub_10003DC84();
  v153 = v43;
  v44 = type metadata accessor for HandoffBundle(255);
  v45 = type metadata accessor for SupportHandoffUserConsentView(255);
  v177 = v24;
  v178 = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_10003DC6C();
  v49 = sub_10003CCEC(v47, v48, &unk_100125090);
  sub_10003DC54();
  v52 = sub_10003CCEC(v50, v51, &unk_1001258D0);
  v177 = OpaqueTypeMetadata2;
  v178 = v44;
  v53 = OpaqueTypeMetadata2;
  v122 = OpaqueTypeMetadata2;
  v123 = v44;
  v54 = v44;
  v179 = v45;
  v180 = OpaqueTypeConformance2;
  v116 = v45;
  v117 = v52;
  v120 = OpaqueTypeConformance2;
  v181 = v49;
  v182 = v52;
  v118 = v49;
  v55 = swift_getOpaqueTypeMetadata2();
  v136 = v55;
  sub_10003DBE4();
  v142 = v56;
  sub_10000ED78();
  __chkstk_darwin(v57);
  sub_10003DC84();
  v125 = v58;
  v59 = sub_100004D48(&qword_10018A518, &qword_100124920);
  v135 = v59;
  v177 = v53;
  v178 = v54;
  v179 = v45;
  v180 = OpaqueTypeConformance2;
  v181 = v49;
  v182 = v52;
  v60 = swift_getOpaqueTypeConformance2();
  v134 = v60;
  v133 = sub_10003BF10();
  v177 = v55;
  v178 = v59;
  v179 = v60;
  v180 = v133;
  v138 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  swift_getOpaqueTypeMetadata2();
  sub_100008780();
  v139 = v61;
  v140 = v62;
  v63 = __chkstk_darwin(v61);
  v128 = v110 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v63);
  v131 = v110 - v65;
  v66 = v154;
  v67 = v157;
  v68 = (v157 + *(v154 + 60));
  v69 = *v68;
  v112 = v68[1];
  v113 = v69;
  v111 = v68[2];
  v168 = v69;
  v169 = v112;
  v170 = v111;
  v110[1] = sub_100003768(&qword_10018AA28, &qword_1001251A8);
  State.projectedValue.getter();
  v70 = *(v66 + 24);
  v71 = v155;
  v165 = v155;
  v166 = v70;
  v72 = v70;
  v167 = v67;
  v73 = v67;
  List.init(selection:content:)();
  v74 = v130;
  View.flowListStyle()(v115, v114);
  v75 = sub_10003DCE4();
  v76(v75);
  v162 = v71;
  v163 = v72;
  v164 = v73;
  sub_100003768(&qword_10018AA30, &qword_1001251B0);
  sub_10003C934(&qword_10018AA38, &qword_10018AA30, &qword_1001251B0, sub_10003BFA4);
  static Alignment.center.getter();
  v77 = v124;
  View.overlay<A>(alignment:content:)();
  (*(v150 + 8))(v74, v77);
  v159 = v71;
  v160 = v72;
  v78 = v71;
  v110[0] = v72;
  v161 = v73;
  sub_100003768(&qword_10018AA60, &qword_1001251C8);
  sub_10003C068();
  static HorizontalAlignment.center.getter();
  View.safeAreaInset<A>(edge:alignment:spacing:content:)();
  v79 = sub_10003DCE4();
  v80(v79);
  v81 = v158;
  v82 = *(v158 + 16);
  v150 = v158 + 16;
  v151 = v82;
  v83 = v145;
  v84 = v154;
  v82(v145, v73, v154);
  v149 = *(v81 + 80);
  v85 = (v149 + 32) & ~v149;
  v86 = swift_allocObject();
  v87 = v78;
  *(v86 + 16) = v78;
  *(v86 + 24) = v72;
  v88 = *(v81 + 32);
  v158 = v81 + 32;
  WitnessTable = v88;
  v89 = v84;
  v88(v86 + v85, v83, v84);
  v90 = v152;
  v91 = v126;
  View.onLoad(perform:)();

  (*(v144 + 8))(v90, v91);
  sub_100003768(qword_10018A910, &unk_1001250D0);
  v92 = v157;
  v93 = v146;
  State.projectedValue.getter();
  v151(v83, v92, v89);
  v94 = swift_allocObject();
  *(v94 + 16) = v87;
  v95 = v110[0];
  *(v94 + 24) = v110[0];
  v96 = v89;
  WitnessTable(v94 + v85, v83, v89);
  swift_checkMetadataState();
  v97 = v125;
  v98 = v122;
  v99 = v153;
  View.sheet<A, B>(item:onDismiss:content:)();

  sub_10000ABCC(v93, &qword_10018A9C0, &qword_100125168);
  (*(v143 + 8))(v99, v98);
  v177 = v113;
  v178 = v112;
  v179 = v111;
  State.wrappedValue.getter();
  v177 = v168;
  v178 = v169;
  v151(v83, v157, v96);
  v100 = swift_allocObject();
  *(v100 + 16) = v155;
  *(v100 + 24) = v95;
  WitnessTable(v100 + v85, v83, v96);
  v101 = v128;
  v103 = v135;
  v102 = v136;
  v105 = v133;
  v104 = v134;
  View.onChange<A>(of:initial:_:)();

  (*(v142 + 8))(v97, v102);
  v177 = v102;
  v178 = v103;
  v179 = v104;
  v180 = v105;
  swift_getOpaqueTypeConformance2();
  v106 = v139;
  sub_1000C6A00();
  v107 = *(v140 + 8);
  v107(v101, v106);
  sub_10003DCE4();
  sub_1000C6A00();
  v108 = sub_10003DCE4();
  return (v107)(v108);
}

uint64_t sub_100036D7C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v124 = a4;
  v123 = sub_100003768(&qword_10018A9E0, &qword_100125188);
  v7 = __chkstk_darwin(v123);
  v125 = v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v142 = v107 - v9;
  v116 = type metadata accessor for ListSectionSpacing();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for FlowStepContentOption(0);
  __chkstk_darwin(v111);
  v112 = v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_100003768(&qword_10018AB40, &qword_100125280);
  __chkstk_darwin(v120);
  v113 = v107 - v12;
  v122 = sub_100003768(&qword_10018A9D8, &qword_100125180);
  v13 = __chkstk_darwin(v122);
  v138 = v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = v107 - v16;
  v110 = *(a2 - 8);
  v18 = __chkstk_darwin(v15);
  v109 = v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v108 = v107 - v20;
  v136 = type metadata accessor for Optional();
  v131 = *(v136 - 8);
  v21 = __chkstk_darwin(v136);
  v134 = v107 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v141 = v107 - v23;
  v24 = type metadata accessor for FlowStepMainContentView(0);
  __chkstk_darwin(v24 - 8);
  v118 = v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100003768(&qword_10018AB48, &qword_100125288);
  __chkstk_darwin(v26);
  v117 = v107 - v27;
  v28 = sub_100003768(&qword_10018AB50, &qword_100125290);
  __chkstk_darwin(v28 - 8);
  v30 = v107 - v29;
  v121 = sub_100003768(&qword_10018A9D0, &qword_100125178);
  v31 = __chkstk_darwin(v121);
  v133 = v107 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v140 = v107 - v33;
  v137 = a3;
  v126 = type metadata accessor for FlowStepStackView(0, a2, a3, v34);
  sub_100035BD0();
  v35 = a1[2];
  v36 = a1[3];
  v139 = a1;
  v37 = sub_10008D804(v35, v36);

  v135 = v17;
  if (v37)
  {
    v38 = v26;
    v39 = qword_1001881D8;

    if (v39 != -1)
    {
      swift_once();
    }

    v40 = qword_1001A5758;
    v41 = objc_opt_self();

    v42 = [v41 systemBackgroundColor];
    v43 = Color.init(_:)();

    v44 = static Color.clear.getter();

    v130 = v40;

    v128 = v44;

    v129 = v43;

    v127 = 1;
    v26 = v38;
  }

  else
  {
    v127 = 0;
    v130 = 0;
    v128 = 0;
    v129 = 0;
  }

  v132 = v37;

  v45 = v139;
  sub_100035BD0();
  v46 = sub_10008D788(v35, v36);

  v119 = v46;
  if (v46)
  {
    v47 = v46;
    v48 = v46;
  }

  else
  {
    v49 = v45[5];
    sub_1000FE780();
    v50 = type metadata accessor for ImageResource();
    v51 = 1;
    v52 = sub_10000E5F0(v30, 1, v50);
    sub_10000ABCC(v30, &qword_10018AB50, &qword_100125290);
    if (v52 == 1)
    {
      v53 = v140;
      v45 = v139;
      goto LABEL_12;
    }

    v48 = [objc_allocWithZone(TPSContent) init];
    v47 = 0;
    v45 = v139;
  }

  v54 = v47;
  sub_100035BD0();
  v49 = v45[5];
  sub_1000868AC();
  v56 = v55;
  v58 = v57;

  v59 = v118;
  sub_10005A5EC(v48, v56, v58, v118);
  LOBYTE(v56) = static Edge.Set.all.getter();
  v60 = v59;
  v61 = v117;
  sub_10003CF1C(v60, v117);
  v62 = &v61[*(v26 + 36)];
  *v62 = v56;
  *(v62 + 8) = 0u;
  *(v62 + 24) = 0u;
  v62[40] = 1;
  v53 = v140;
  sub_10003D260();
  v51 = 0;
LABEL_12:
  v107[2] = v49;
  v63 = 1;
  sub_100003CE8(v53, v51, 1, v26);
  v64 = v45[12];
  v65 = v134;
  v107[1] = v64;
  if (v64)
  {
    v66 = v45[13];

    v68 = v109;
    v64(v67);
    sub_1000068F8(v64, v66);
    v69 = v108;
    sub_1000C6A00();
    v70 = v110;
    v71 = *(v110 + 8);
    v71(v68, a2);
    sub_1000C6A00();
    v71(v69, a2);
    (*(v70 + 32))(v65, v68, a2);
    v63 = 0;
  }

  v72 = 1;
  sub_100003CE8(v65, v63, 1, a2);
  sub_10000625C(v65, v141);
  v73 = *(v131 + 8);
  v118 = v131 + 8;
  v117 = v73;
  (v73)(v65, v136);
  v74 = v126;
  v75 = sub_100035E44();
  if (v75)
  {
    v76 = v75;
    v77 = v112;
    swift_storeEnumTagMultiPayload();
    sub_1000FF9FC();
    v79 = v78;
    sub_10003D310(v77, type metadata accessor for FlowStepContentOption);
    v80 = v120;
    if (v79)
    {
      v81 = *(v76 + 16);
    }

    else
    {
      v81 = 3;
    }

    v83 = v135;
    v84 = v114;
    static ListSectionSpacing.custom(_:)();
    v85 = *(sub_100003768(&qword_10018AB90, &qword_100125298) + 36);
    v86 = v115;
    v87 = v113;
    v88 = v116;
    (*(v115 + 16))(&v113[v85], v84, v116);
    sub_100003CE8(v87 + v85, 0, 1, v88);
    *v87 = v76;
    v87[1] = v81;
    KeyPath = swift_getKeyPath();
    v90 = (v87 + *(v80 + 36));
    v91 = *(sub_100003768(&qword_100188FE8, &qword_100124FA0) + 28);
    (*(v86 + 32))(v90 + v91, v84, v88);
    sub_100003CE8(v90 + v91, 0, 1, v88);
    *v90 = KeyPath;
    sub_10003D260();
    v72 = 0;
    v74 = v126;
    v82 = v83;
  }

  else
  {
    v82 = v135;
    v80 = v120;
  }

  sub_100003CE8(v82, v72, 1, v80);
  sub_100037E88(v74, v142);
  if (qword_100188360 != -1)
  {
    swift_once();
  }

  v92 = qword_1001A5950;
  if (!qword_1001A5950)
  {
    goto LABEL_26;
  }

  v93 = swift_getKeyPath();

  v94 = sub_1000FBFA4(v93);

  if ((v94 & 1) == 0)
  {

    v92 = 0;
LABEL_26:
    v97 = 0;
    v98 = 0;
    v100 = 0;
    v99 = 0;
    goto LABEL_27;
  }

  sub_10003851C(&v156);

  v92 = v156;
  v95 = v159;
  v96 = v160;
  v97 = v157;
  v98 = v158;
  sub_100017564(v156, v157, v158);
  v99 = v96;

  v100 = v95;

LABEL_27:
  v139 = v92;
  v156 = v132;
  v157 = v127;
  v158 = v130;
  v159 = v128;
  v161 = 0;
  v162 = 0;
  v160 = v129;
  v163[0] = &v156;
  v101 = v133;
  sub_10003CF80();
  v163[1] = v101;
  v102 = v136;
  (*(v131 + 16))(v65, v141, v136);
  v163[2] = v65;
  v103 = v138;
  sub_10003CF80();
  v163[3] = v103;
  v104 = v125;
  sub_10003CF80();
  v151 = v92;
  v152 = v97;
  v153 = v98;
  v154 = v100;
  v155 = v99;
  v163[4] = v104;
  v163[5] = &v151;
  v150[0] = sub_100003768(&qword_10018A9C8, &qword_100125170);
  v150[1] = v121;
  v150[2] = v102;
  v150[3] = v122;
  v150[4] = v123;
  v150[5] = sub_100003768(&qword_10018A9E8, &qword_100125190);
  v144 = sub_10003C934(&qword_10018AB58, &qword_10018A9C8, &qword_100125170, sub_10002C22C);
  v145 = sub_10003C934(&qword_10018AB60, &qword_10018A9D0, &qword_100125178, sub_10003C9B0);
  v143 = v137;
  WitnessTable = swift_getWitnessTable();
  v147 = sub_10003C934(&qword_10018AB78, &qword_10018A9D8, &qword_100125180, sub_10003CA6C);
  v148 = sub_10003C934(&qword_10018ABA0, &qword_10018A9E0, &qword_100125188, sub_10003CC30);
  v149 = sub_10003C934(&qword_10018ABC8, &qword_10018A9E8, &qword_100125190, sub_10003CD88);
  sub_1000C2BF0(v163, 6, v150);
  sub_10003CE40(v132, v127, v130, v128, v129, 0, 0);
  sub_10003CEBC(v139, v97, v98, v100, v99);

  sub_10000ABCC(v142, &qword_10018A9E0, &qword_100125188);
  sub_10000ABCC(v135, &qword_10018A9D8, &qword_100125180);
  v105 = v117;
  (v117)(v141, v102);
  sub_10000ABCC(v140, &qword_10018A9D0, &qword_100125178);
  sub_10003CEBC(v151, v152, v153, v154, v155);
  sub_10000ABCC(v104, &qword_10018A9E0, &qword_100125188);
  sub_10000ABCC(v138, &qword_10018A9D8, &qword_100125180);
  (v105)(v134, v102);
  sub_10000ABCC(v133, &qword_10018A9D0, &qword_100125178);
  return sub_10003CE40(v156, v157, v158, v159, v160, v161, v162);
}

uint64_t sub_100037E88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v56 = a2;
  v46 = type metadata accessor for FlowStepContentOption(0);
  __chkstk_darwin(v46);
  v48 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_100003768(&qword_10018ABF0, &qword_100125310);
  v6 = __chkstk_darwin(v54);
  v55 = &v43 - v7;
  v51 = a1;
  v49 = *(a1 - 8);
  __chkstk_darwin(v6);
  v45 = v8;
  v47 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for ContactOptionsView(0);
  __chkstk_darwin(v53);
  v52 = (&v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_100003768(&qword_10018ABF8, &qword_100125318);
  __chkstk_darwin(v10 - 8);
  v12 = &v43 - v11;
  v13 = sub_100003768(&qword_10018AC00, &qword_100125320);
  v14 = __chkstk_darwin(v13);
  v44 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v43 - v17;
  __chkstk_darwin(v16);
  v50 = &v43 - v19;
  sub_100035BD0();
  sub_1000FE640(*(v3 + 32), *(v3 + 40));
  sub_100087500();

  if (sub_10000E5F0(v12, 1, v13) == 1)
  {
    v20 = v56;
    sub_10000ABCC(v12, &qword_10018ABF8, &qword_100125318);
    v21 = v48;
    swift_storeEnumTagMultiPayload();
    sub_1000FF9FC();
    v23 = v22;
    sub_10003D310(v21, type metadata accessor for FlowStepContentOption);
    if (v23)
    {
      swift_storeEnumTagMultiPayload();
      sub_10003CCEC(&qword_10018ABB8, type metadata accessor for ContactOptionsView, &unk_10012C964);
      sub_10003CD34();
      _ConditionalContent<>.init(storage:)();
      v24 = 0;
    }

    else
    {
      v24 = 1;
    }
  }

  else
  {
    v25 = v50;
    sub_10003D260();
    sub_10003CF80();
    sub_10003CFD8(*&v18[*(v13 + 48)], *&v18[*(v13 + 48) + 8]);
    v26 = v44;
    sub_10003CF80();
    v27 = (v26 + *(v13 + 48));
    v28 = v27[1];
    v48 = *v27;
    v29 = v49;
    v30 = v47;
    v31 = v51;
    (*(v49 + 16))(v47, v3, v51);
    v32 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = *(v31 + 16);
    (*(v29 + 32))(v33 + v32, v30, v31);
    type metadata accessor for FlowViewDataProvider(0);
    sub_10003CCEC(&qword_1001886D0, type metadata accessor for FlowViewDataProvider, &unk_100129E68);
    v34 = Environment.init<A>(_:)();
    v36 = v52;
    v35 = v53;
    *v52 = v34;
    *(v36 + 8) = v37 & 1;
    sub_10003D260();
    v38 = (v36 + *(v35 + 24));
    *v38 = v48;
    v38[1] = v28;
    v39 = (v36 + *(v35 + 28));
    *v39 = sub_10003D1F0;
    v39[1] = v33;
    sub_10000ABCC(v26, &qword_100189108, &unk_1001226E0);
    sub_10003D2B8();
    swift_storeEnumTagMultiPayload();
    sub_10003CCEC(&qword_10018ABB8, type metadata accessor for ContactOptionsView, &unk_10012C964);
    sub_10003CD34();
    v40 = v56;
    _ConditionalContent<>.init(storage:)();
    sub_10003D310(v36, type metadata accessor for ContactOptionsView);
    sub_10000ABCC(v25, &qword_10018AC00, &qword_100125320);
    v24 = 0;
    v20 = v40;
  }

  v41 = sub_100003768(&qword_10018ABB0, &qword_1001252A0);
  return sub_100003CE8(v20, v24, 1, v41);
}

uint64_t sub_10003851C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for FlowViewDataProvider(0);
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = sub_1000FE640(v5, v6);
  v9 = sub_1000877E8(v3, v4, v7, v8);
  v11 = v10;

  if (v3 == v9 && v4 == v11)
  {

    goto LABEL_8;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
LABEL_8:
    v22._countAndFlagsBits = v3;
    v22._object = v4;
    String.append(_:)(v22);
    goto LABEL_9;
  }

  _StringGuts.grow(_:)(48);

  v14._countAndFlagsBits = v3;
  v14._object = v4;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0xD000000000000017;
  v15._object = 0x8000000100135D80;
  String.append(_:)(v15);
  v16 = sub_1000FE640(v5, v6);
  v18 = sub_1000877E8(v3, v4, v16, v17);
  v20 = v19;

  v21._countAndFlagsBits = v18;
  v21._object = v20;
  String.append(_:)(v21);

LABEL_9:
  static HierarchicalShapeStyle.secondary.getter();
  v23 = Text.foregroundStyle<A>(_:)();
  v25 = v24;
  v27 = v26;

  static Font.footnote.getter();
  v28 = Text.font(_:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;

  sub_10000AC78(v23, v25, v27 & 1);

  static Color.clear.getter();
  result = AnyView.init<A>(_:)();
  *a1 = v28;
  *(a1 + 8) = v30;
  *(a1 + 16) = v32 & 1;
  *(a1 + 24) = v34;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1000387D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100003768(&qword_10018AA48, &qword_1001251B8);
  __chkstk_darwin(v5);
  v7 = &v16[-v6 - 8];
  if (*(v2 + 48) || (sub_10003CF80(), v8 = v17, sub_10000ABCC(v16, &qword_100189310, &qword_1001221A0), v8))
  {
    *v7 = static HorizontalAlignment.center.getter();
    *(v7 + 1) = 0;
    v7[16] = 1;
    v9 = sub_100003768(&qword_10018AA90, &qword_1001251F8);
    sub_100039E3C(v2, *(a1 + 16), *(a1 + 24), &v7[*(v9 + 44)]);
    v10 = static Edge.Set.bottom.getter();
    v11 = static SafeAreaRegions.all.getter();
    v12 = &v7[*(v5 + 36)];
    *v12 = v11;
    v12[8] = v10;
    sub_10003C37C();
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  return sub_100003CE8(a2, v13, 1, v5);
}

double sub_100038928@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = static Color.clear.getter();
  v10 = (a1 + *(type metadata accessor for FlowStepStackView(0, a2, a3, v9) + 64));
  v12 = *v10;
  v13 = v10[1];
  sub_100003768(&qword_100189560, &qword_1001251F0);
  State.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a4 = v8;
  *(a4 + 8) = v12;
  *(a4 + 16) = v13;
  *(a4 + 24) = v14;
  *(a4 + 32) = v15;
  result = *&v16;
  *(a4 + 40) = v16;
  return result;
}

uint64_t sub_100038A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for MainActor();
  v3[5] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100038AA8, v5, v4);
}

uint64_t sub_100038AA8()
{
  sub_10003DCD8();
  v1 = *(v0 + 32);
  v2 = *(v0 + 24);

  type metadata accessor for FlowStepStackView(0, v2, v1, v3);
  sub_100038B20();
  sub_10000875C();

  return v4();
}

void sub_100038B20()
{
  v1 = v0;
  v53 = type metadata accessor for DeviceExpertTroubleshooting.ActionType();
  v49 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  __chkstk_darwin(v3 - 8);
  v51 = &v42 - v4;
  v5 = type metadata accessor for HMTSolution.Article();
  v55 = *(v5 - 8);
  __chkstk_darwin(v5);
  v54 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FlowStepContentOption(0);
  __chkstk_darwin(v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100035BD0();
  v10 = v0[3];
  v50 = v0[2];
  v11 = sub_1000FE640(v0[4], v0[5]);
  v13 = sub_100052134(v50, v10, v11, v12);

  if (v13)
  {
    v14 = v55;
    swift_storeEnumTagMultiPayload();
    sub_1000FF9FC();
    v16 = v15;
    sub_10003D310(v9, type metadata accessor for FlowStepContentOption);
    v17 = v5;
    if (v16)
    {
      v18 = *(v13 + 16);
    }

    else
    {
      v18 = 3;
    }

    sub_100039DAC(v18, v13);
    v43 = v22;
    v23 = (v21 >> 1) - v20;
    if (v21 >> 1 != v20)
    {
      if ((v21 >> 1) <= v20)
      {
        __break(1u);
        return;
      }

      v25 = *(v14 + 16);
      v24 = v14 + 16;
      v50 = v25;
      v26 = *(v24 + 56);
      v55 = v24;
      v48 = (v24 - 8);
      HIDWORD(v47) = enum case for DeviceExpertTroubleshooting.ActionType.suggested(_:);
      v45 = (v49 + 8);
      v46 = (v49 + 104);
      v49 = v26;
      v27 = v19 + v20 * v26;
      v44 = v17;
      v28 = v51;
      do
      {
        v29 = v54;
        v30 = v44;
        v50(v54, v27, v44);
        sub_100035BD0();
        v31 = v1;
        v32 = HMTSolution.Article.id.getter();
        v34 = v33;
        HMTSolution.Article.url.getter();
        (*v48)(v29, v30);
        v36 = v52;
        v35 = v53;
        (*v46)(v52, HIDWORD(v47), v53);
        v37 = v32;
        v1 = v31;
        sub_100085DC0(v37, v34, v28, v36, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);

        (*v45)(v36, v35);
        sub_10000ABCC(v28, &qword_100188EE0, &unk_100122AE0);
        v27 += v49;
        --v23;
      }

      while (v23);
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_100038F20@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18 = a5;
  v8 = type metadata accessor for FlowStepStackView(0, a3, a4, a4);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - v10;
  v12 = type metadata accessor for HandoffBundle(0);
  __chkstk_darwin(v12 - 8);
  v13 = sub_100035BD0();
  sub_10003D2B8();
  (*(v9 + 16))(v11, a2, v8);
  v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  (*(v9 + 32))(v15 + v14, v11, v8);
  return sub_100040724(v13, sub_10003C364, v15, v18);
}

uint64_t sub_1000390F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100003768(&qword_10018A530, &qword_100124440);
  v6 = __chkstk_darwin(v5 - 8);
  __chkstk_darwin(v6);
  v8 = &v12 - v7;
  v9 = type metadata accessor for HandoffBundle(0);
  sub_100003CE8(v8, 1, 1, v9);
  type metadata accessor for FlowStepStackView(0, a2, a3, v10);
  sub_10003CF80();
  sub_100003768(qword_10018A910, &unk_1001250D0);
  State.wrappedValue.setter();
  return sub_10000ABCC(v8, &qword_10018A530, &qword_100124440);
}

uint64_t sub_100039224(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = type metadata accessor for FlowStepStackView(0, a4, a5, a4);
  return sub_100039270(v5, v6, v7);
}

uint64_t sub_100039270(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3)
{
  v4 = v3;
  v59 = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v56 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v55 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = *(a3 - 8);
  __chkstk_darwin(v12);
  v50 = v14;
  v51 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for DispatchTime();
  v54 = *(v57 - 8);
  v15 = __chkstk_darwin(v57);
  v49 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v53 = &v43 - v17;
  v18 = type metadata accessor for HMTSolution.Article();
  v19 = *(v18 - 8);
  result = __chkstk_darwin(v18);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a2;
  if (a2)
  {
    v58 = a3;
    result = sub_100035E44();
    if (result)
    {
      v23 = result;
      v44 = v4;
      v45 = v11;
      v46 = v9;
      v47 = v10;
      v48 = v7;
      v24 = 0;
      v25 = *(result + 16);
      v26 = (v19 + 8);
      while (1)
      {
        if (v25 == v24)
        {
        }

        if (v24 >= *(v23 + 16))
        {
          break;
        }

        (*(v19 + 16))(v22, v23 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v24, v18);
        if (HMTSolution.Article.id.getter() == v59 && v27 == v60)
        {

          (*v26)(v22, v18);
          v30 = v58;
LABEL_14:

          sub_10003C2F0();
          v31 = v30;
          v32 = static OS_dispatch_queue.main.getter();
          v33 = v49;
          static DispatchTime.now()();
          v34 = v53;
          + infix(_:_:)();
          v60 = *(v54 + 8);
          v60(v33, v57);
          v36 = v51;
          v35 = v52;
          (*(v52 + 16))(v51, v44, v31);
          v37 = (*(v35 + 80) + 32) & ~*(v35 + 80);
          v38 = swift_allocObject();
          *(v38 + 16) = *(v31 + 16);
          (*(v35 + 32))(v38 + v37, v36, v31);
          aBlock[4] = sub_10003C334;
          aBlock[5] = v38;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100039D68;
          aBlock[3] = &unk_100179928;
          v39 = _Block_copy(aBlock);
          v40 = v55;
          static DispatchQoS.unspecified.getter();
          v61 = _swiftEmptyArrayStorage;
          sub_10003CCEC(&qword_10018AA78, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_100003768(&qword_10018AA80, &unk_1001251E0);
          sub_10000AAEC(&qword_10018AA88, &qword_10018AA80, &unk_1001251E0, &protocol conformance descriptor for [A]);
          v41 = v46;
          v42 = v48;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
          _Block_release(v39);

          (*(v56 + 8))(v41, v42);
          (*(v45 + 8))(v40, v47);
          v60(v34, v57);
        }

        ++v24;
        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

        result = (*v26)(v22, v18);
        v30 = v58;
        if (v29)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1000398E0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_100003768(&qword_10018A530, &qword_100124440);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[7] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[8] = v5;
  v3[9] = v4;

  return _swift_task_switch(sub_1000399C0, v5, v4);
}

uint64_t sub_1000399C0()
{
  sub_100025A94();
  *(v0 + 80) = sub_100035BD0();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_100039A64;

  return sub_100086A60();
}

uint64_t sub_100039A64()
{
  sub_100025A94();
  v2 = *v1;
  sub_10000870C();
  *v3 = v2;
  v2[12] = v0;

  if (v0)
  {
    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_100039C74;
  }

  else
  {

    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_100039B74;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100039B74()
{
  v1 = *(v0 + 48);

  v2 = type metadata accessor for HandoffBundle(0);
  sub_100003CE8(v1, 0, 1, v2);
  sub_10003CF80();
  sub_100003768(qword_10018A910, &unk_1001250D0);
  State.wrappedValue.setter();
  sub_10000ABCC(v1, &qword_10018A530, &qword_100124440);

  sub_10000875C();

  return v3();
}

uint64_t sub_100039C74()
{
  sub_10003DCD8();

  sub_10000875C();

  return v0();
}

uint64_t sub_100039CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FlowStepStackView(0, a2, a3, a4);
  sub_100003768(&qword_10018AA28, &qword_1001251A8);
  return State.wrappedValue.setter();
}

uint64_t sub_100039D68(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_100039DAC(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    v4 = sub_10001797C(0, result, *(a2 + 16), a2);
    if (v5)
    {
      v6 = v3;
    }

    else
    {
      v6 = v4;
    }

    if ((v6 & 0x8000000000000000) == 0)
    {
      sub_1000178D8(0, v6, a2);

      sub_10003DCCC();
      return;
    }
  }

  __break(1u);
}

uint64_t sub_100039E3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v25 = a1;
  v26 = a3;
  v28 = a4;
  v27 = type metadata accessor for BarMagicPocketStyle();
  v5 = *(v27 - 8);
  __chkstk_darwin(v27);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003768(&qword_10018AA98, &qword_100125200);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - v10;
  v12 = sub_100003768(&qword_10018AAA0, &qword_100125208);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v25 - v17;
  v29 = a2;
  v30 = v26;
  v31 = v25;
  sub_100003768(&qword_10018AAA8, &qword_100125210);
  sub_10003C3E8();
  GlassEffectContainer.init(spacing:content:)();
  static BarMagicPocketStyle.automatic.getter();
  sub_10000AAEC(&qword_10018AAD8, &qword_10018AA98, &qword_100125200, &protocol conformance descriptor for GlassEffectContainer<A>);
  View.scrollPocketTag_v1(style:)();
  (*(v5 + 8))(v7, v27);
  (*(v9 + 8))(v11, v8);
  v19 = *(v13 + 16);
  v19(v16, v18, v12);
  v20 = v28;
  *v28 = 0;
  *(v20 + 8) = 1;
  v21 = v20;
  v22 = sub_100003768(&qword_10018AAE0, &qword_100125230);
  v19(&v21[*(v22 + 48)], v16, v12);
  v23 = *(v13 + 8);
  v23(v18, v12);
  return (v23)(v16, v12);
}

uint64_t sub_10003A18C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v34 = a4;
  v8 = type metadata accessor for FlowStepStackView(0, a2, a3, a5);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v34 - v10;
  v12 = sub_100003768(&qword_10018AAC0, &qword_100125218);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v34 - v14;
  *v15 = static HorizontalAlignment.center.getter();
  *(v15 + 1) = 0x4024000000000000;
  v15[16] = 0;
  v16 = sub_100003768(&qword_10018AAE8, &qword_100125238);
  sub_10003A494(a1, a2, a3, &v15[*(v16 + 44)]);
  (*(v9 + 16))(v11, a1, v8);
  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  (*(v9 + 32))(v18 + v17, v11, v8);
  v19 = &v15[*(v13 + 44)];
  *v19 = sub_10003B0F8;
  *(v19 + 1) = 0;
  *(v19 + 2) = sub_10003C558;
  *(v19 + 3) = v18;
  sub_100003768(&qword_10018AAF0, &qword_100125240);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100122C90;
  LOBYTE(v18) = static Edge.Set.horizontal.getter();
  *(inited + 32) = v18;
  v21 = static Edge.Set.bottom.getter();
  *(inited + 33) = v21;
  v22 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v18)
  {
    v22 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v21)
  {
    v22 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = v34;
  sub_10003D260();
  result = sub_100003768(&qword_10018AAA8, &qword_100125210);
  v33 = v31 + *(result + 36);
  *v33 = v22;
  *(v33 + 8) = v24;
  *(v33 + 16) = v26;
  *(v33 + 24) = v28;
  *(v33 + 32) = v30;
  *(v33 + 40) = 0;
  return result;
}

uint64_t sub_10003A494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v63 = sub_100003768(&qword_10018AAF8, &qword_100125248);
  __chkstk_darwin(v63);
  v61 = v55 - v8;
  v69 = sub_100003768(&qword_10018AB00, &qword_100125250);
  __chkstk_darwin(v69);
  v62 = v55 - v9;
  v10 = sub_100003768(&qword_10018AB08, &qword_100125258);
  v11 = __chkstk_darwin(v10 - 8);
  v71 = v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v70 = v55 - v13;
  v59 = a2;
  v60 = a3;
  v15 = type metadata accessor for FlowStepStackView(0, a2, a3, v14);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = v55 - v18;
  v20 = type metadata accessor for GlassProminentButtonStyle();
  v56 = *(v20 - 8);
  v57 = v20;
  __chkstk_darwin(v20);
  v22 = v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100003768(&qword_10018AB10, &qword_100125260);
  __chkstk_darwin(v23);
  v25 = v55 - v24;
  v64 = sub_100003768(&qword_10018AB18, &qword_100125268);
  __chkstk_darwin(v64);
  v58 = v55 - v26;
  v27 = sub_100003768(&qword_10018AB20, &qword_100125270);
  v28 = __chkstk_darwin(v27 - 8);
  v67 = v55 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v65 = v15;
  v66 = v55 - v30;
  v31 = *(a1 + 48);
  v68 = a1;
  if (v31)
  {
    v55[1] = a4;
    swift_retain_n();
    GlassProminentButtonStyle.init()();
    (*(v16 + 16))(v19, a1, v15);
    v32 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v33 = (v17 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    v35 = v60;
    *(v34 + 16) = v59;
    *(v34 + 24) = v35;
    (*(v16 + 32))(v34 + v32, v19, v15);
    *(v34 + v33) = v31;
    type metadata accessor for FlowViewDataProvider(0);
    sub_10003CCEC(&qword_1001886D0, type metadata accessor for FlowViewDataProvider, &unk_100129E68);

    *v25 = Environment.init<A>(_:)();
    v25[8] = v36 & 1;
    *(v25 + 2) = v31;
    v38 = v56;
    v37 = v57;
    (*(v56 + 16))(&v25[v23[10]], v22, v57);
    *&v25[v23[11]] = 0;
    if (qword_1001881D8 != -1)
    {
      swift_once();
    }

    v39 = qword_1001A5758;
    v40 = *(v38 + 8);

    v40(v22, v37);
    *&v25[v23[12]] = v39;
    v41 = &v25[v23[13]];
    *v41 = sub_10003C7E0;
    v41[1] = v34;
    static String.stepPrimaryActionButton.getter();
    sub_10000AAEC(&qword_10018AB38, &qword_10018AB10, &qword_100125260, &unk_10012C230);
    View.accessibilityIdentifier(_:)();

    sub_10000ABCC(v25, &qword_10018AB10, &qword_100125260);
    v42 = v66;
    sub_10003D260();
    v43 = 0;
  }

  else
  {
    v43 = 1;
    v42 = v66;
  }

  v44 = 1;
  sub_100003CE8(v42, v43, 1, v64);
  sub_10003CF80();
  v45 = v73;
  sub_10000ABCC(v72, &qword_100189310, &qword_1001221A0);
  if (v45)
  {
    v46 = sub_10003AE3C(v65);
    v47 = v63;
    v48 = v61;
    GlassButtonStyle.init()();
    type metadata accessor for FlowViewDataProvider(0);
    sub_10003CCEC(&qword_1001886D0, type metadata accessor for FlowViewDataProvider, &unk_100129E68);
    *v48 = Environment.init<A>(_:)();
    *(v48 + 8) = v49 & 1;
    *(v48 + 16) = v46;
    *(v48 + v47[11]) = 0;
    *(v48 + v47[12]) = 0;
    v50 = (v48 + v47[13]);
    *v50 = 0;
    v50[1] = 0;
    static String.stepNextButton.getter();
    sub_10000AAEC(&qword_10018AB30, &qword_10018AAF8, &qword_100125248, &unk_10012C230);
    View.accessibilityIdentifier(_:)();

    sub_10000ABCC(v48, &qword_10018AAF8, &qword_100125248);
    v51 = v70;
    sub_10003D260();
    v44 = 0;
  }

  else
  {
    v51 = v70;
  }

  sub_100003CE8(v51, v44, 1, v69);
  v52 = v67;
  sub_10003CF80();
  v53 = v71;
  sub_10003CF80();
  sub_10003CF80();
  sub_100003768(&qword_10018AB28, &qword_100125278);
  sub_10003CF80();
  sub_10000ABCC(v51, &qword_10018AB08, &qword_100125258);
  sub_10000ABCC(v42, &qword_10018AB20, &qword_100125270);
  sub_10000ABCC(v53, &qword_10018AB08, &qword_100125258);
  return sub_10000ABCC(v52, &qword_10018AB20, &qword_100125270);
}

uint64_t sub_10003AD18(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for DeviceExpertTroubleshooting.ActionType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100035BD0();
  (*(v3 + 104))(v5, enum case for DeviceExpertTroubleshooting.ActionType.executed(_:), v2);
  sub_10008577C();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10003AE3C(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(a1);
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for ActionInfoDestination(0);
  __chkstk_darwin(v7);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v11 = sub_1000FE8D0(*(v1 + 32), *(v1 + 40));
  if (!v10)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v11 = String.init(localized:table:bundle:locale:comment:)();
  }

  v12 = v10;
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  (*(v3 + 16))(v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1);
  v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = *(a1 + 16);
  (*(v3 + 32))(v14 + v13, v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  type metadata accessor for ActionInfo(0);
  swift_allocObject();
  return sub_1000EDD44(v9, v11, v12, 1, v16, sub_10003C880, v14);
}

uint64_t sub_10003B0F8@<X0>(void *a1@<X8>)
{
  result = GeometryProxy.size.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10003B124(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FlowStepStackView(0, a3, a4, a4);
  sub_100003768(&qword_100189560, &qword_1001251F0);
  return State.wrappedValue.setter();
}

uint64_t sub_10003B1A4(uint64_t a1)
{
  sub_10003CF80();
  if (!v6)
  {
    return sub_10000ABCC(&v5, &qword_100189310, &qword_1001221A0);
  }

  sub_10003C91C(&v5, v7);
  v1 = v8;
  v2 = v9;
  v3 = sub_100025734(v7, v8);
  sub_100035BD0();
  sub_10008D638(v3, v1, *(*(v2 + 8) + 8));

  return sub_1000086BC(v7);
}

uint64_t sub_10003B260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v28 = a1;
  v7 = type metadata accessor for ContactType();
  v27 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FlowStepStackView(0, a3, a4, v11);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v27 - v15;
  v17 = sub_100003768(&qword_1001888B0, &qword_1001228F0);
  __chkstk_darwin(v17 - 8);
  v19 = &v27 - v18;
  v20 = type metadata accessor for TaskPriority();
  sub_100003CE8(v19, 1, 1, v20);
  (*(v13 + 16))(v16, a2, v12);
  (*(v8 + 16))(v10, v28, v7);
  type metadata accessor for MainActor();
  v21 = static MainActor.shared.getter();
  v22 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v23 = (v14 + *(v8 + 80) + v22) & ~*(v8 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = v21;
  *(v24 + 3) = &protocol witness table for MainActor;
  v25 = v30;
  *(v24 + 4) = v29;
  *(v24 + 5) = v25;
  (*(v13 + 32))(&v24[v22], v16, v12);
  (*(v8 + 32))(&v24[v23], v10, v27);
  sub_100085200();
}

uint64_t sub_10003B520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = type metadata accessor for Logger();
  v7[2] = v11;
  v7[3] = *(v11 - 8);
  v7[4] = swift_task_alloc();
  v7[5] = type metadata accessor for MainActor();
  v7[6] = static MainActor.shared.getter();
  v12 = swift_task_alloc();
  v7[7] = v12;
  v14 = type metadata accessor for FlowStepStackView(0, a6, a7, v13);
  *v12 = v7;
  v12[1] = sub_10003B660;

  return sub_1000398E0(a5, v14);
}

uint64_t sub_10003B660()
{
  sub_10003DCD8();
  v2 = *v1;
  sub_10000870C();
  *v3 = v2;
  *(v4 + 64) = v0;

  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v7 = sub_10003B810;
  }

  else
  {
    v7 = sub_10003B7B0;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10003B7B0()
{
  sub_100025A94();

  sub_10000875C();

  return v0();
}

uint64_t sub_10003B810()
{

  static Logger.supportFlowApp.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Presenting privacy sheet for hand-off failed: %@", v3, 0xCu);
    sub_10000ABCC(v4, &qword_100189390, &qword_1001241D0);
  }

  else
  {
  }

  (*(v0[3] + 8))(v0[4], v0[2]);

  sub_10000875C();

  return v6();
}

uint64_t sub_10003B9A0()
{
  sub_100025AAC(7);
  sub_100025AAC(3);

  sub_100025AAC(5);

  sub_100025AAC(0);

  return sub_10000AFAC();
}

uint64_t sub_10003BA00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10003B9A0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_10003BA48(uint64_t a1)
{
  sub_10003BDB4(319, &qword_100189460, type metadata accessor for FlowViewDataProvider, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_10003BDB4(319, &qword_10018A998, type metadata accessor for ActionInfo, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_10003BE18(319, &qword_100189710, &unk_100189718, &unk_100129EC0, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_10003BE18(319, &qword_10018A9A0, &qword_10018A9A8, qword_100125100, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_10003BE18(319, &qword_10018A9B0, &qword_10018A530, &qword_100124440, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            sub_10003BE18(319, &qword_10018A9B8, &qword_10018A518, &qword_100124920, &type metadata accessor for State);
            if (v6 <= 0x3F)
            {
              sub_10003BE7C();
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10003BC80(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100003768(qword_10018A910, &unk_1001250D0);
    v9 = a1 + *(a3 + 56);

    return sub_10000E5F0(v9, a2, v8);
  }
}

uint64_t sub_10003BD28(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100003768(qword_10018A910, &unk_1001250D0);
    v8 = v5 + *(a4 + 56);

    return sub_100003CE8(v8, a2, a2, v7);
  }

  return result;
}

void sub_10003BDB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_10003BE18(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100004D48(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_10003BE7C()
{
  if (!qword_100189478)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_100189478);
    }
  }
}

unint64_t sub_10003BF10()
{
  result = qword_10018AA20;
  if (!qword_10018AA20)
  {
    sub_100004D48(&qword_10018A518, &qword_100124920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018AA20);
  }

  return result;
}

unint64_t sub_10003BFA4()
{
  result = qword_10018AA40;
  if (!qword_10018AA40)
  {
    sub_100004D48(&qword_10018AA48, &qword_1001251B8);
    sub_10000AAEC(&qword_10018AA50, &qword_10018AA58, &qword_1001251C0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018AA40);
  }

  return result;
}

unint64_t sub_10003C068()
{
  result = qword_10018AA68;
  if (!qword_10018AA68)
  {
    sub_100004D48(&qword_10018AA60, &qword_1001251C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018AA68);
  }

  return result;
}

uint64_t sub_10003C0F0()
{
  sub_10003DCD8();
  v8 = sub_10003DC90(v4, v5, v6, v7);
  sub_10000ED84(v8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_10003DBE0;

  return sub_100038A0C(v1 + v10, v0, v2);
}

uint64_t sub_10003C1C0@<X0>(uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = type metadata accessor for FlowStepStackView(0, v5, v6, a2);
  sub_10000ED84(v7);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_100038F20(v9, v5, v6, a3);
}

uint64_t sub_10003C258(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = type metadata accessor for FlowStepStackView(0, v7, v8, a4);
  sub_10000ED84(v9);
  v11 = v4 + ((*(v10 + 80) + 32) & ~*(v10 + 80));

  return sub_100039224(a1, a2, v11, v7, v8);
}

unint64_t sub_10003C2F0()
{
  result = qword_10018AA70;
  if (!qword_10018AA70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10018AA70);
  }

  return result;
}

uint64_t sub_10003C34C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003C37C()
{
  sub_100012478();
  sub_100003768(&qword_10018AA48, &qword_1001251B8);
  sub_10000AF7C();
  v1 = sub_10000AFAC();
  v2(v1);
  return v0;
}

unint64_t sub_10003C3E8()
{
  result = qword_10018AAB0;
  if (!qword_10018AAB0)
  {
    sub_100004D48(&qword_10018AAA8, &qword_100125210);
    sub_10003C474();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018AAB0);
  }

  return result;
}

unint64_t sub_10003C474()
{
  result = qword_10018AAB8;
  if (!qword_10018AAB8)
  {
    sub_100004D48(&qword_10018AAC0, &qword_100125218);
    sub_10000AAEC(&qword_10018AAC8, &qword_10018AAD0, &unk_100125220, &protocol conformance descriptor for VStack<A>);
    sub_10000AAEC(&qword_100189548, &qword_100189550, &unk_100122B50, &protocol conformance descriptor for _GeometryActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018AAB8);
  }

  return result;
}

uint64_t sub_10003C558()
{
  sub_10003DCCC();
  v4 = type metadata accessor for FlowStepStackView(v0, v1, v2, v3);
  sub_10000ED84(v4);
  v5 = sub_10003DCB0();

  return sub_10003B124(v5, v6, v7, v8);
}

uint64_t sub_10003C5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FlowStepStackView(0, *(v5 + 16), *(v5 + 24), a4);
  sub_10003DBF4();
  v8 = *(v7 + 80);
  v9 = (v8 + 32) & ~v8;
  v11 = *(v10 + 64);
  v12 = v5 + v9;

  if (*(v5 + v9 + 80))
  {
    sub_1000086BC((v12 + 56));
  }

  if (*(v12 + 96))
  {
  }

  v13 = v12 + *(v4 + 56);
  v14 = type metadata accessor for HandoffBundle(0);
  if (!sub_10003DD10(v14))
  {
    type metadata accessor for ContactType();
    sub_10000AF7C();
    (*(v15 + 8))(v13);
    if (*(v13 + *(v6 + 20) + 8))
    {
    }
  }

  sub_100003768(qword_10018A910, &unk_1001250D0);

  return _swift_deallocObject(v5, ((v11 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v8 | 7);
}

uint64_t sub_10003C7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(sub_10003DC90(a1, a2, a3, a4) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v4 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10003AD18(v4 + v6, v7);
}

uint64_t sub_10003C898(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10003DC90(a1, a2, a3, a4);
  sub_10000ED84(v7);
  v9 = v5 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return a1(v9, v4, v6);
}

uint64_t sub_10003C91C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10003C934(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100004D48(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10003C9B0()
{
  result = qword_10018AB68;
  if (!qword_10018AB68)
  {
    sub_100004D48(&qword_10018AB48, &qword_100125288);
    sub_10003CCEC(&qword_10018AB70, type metadata accessor for FlowStepMainContentView, &unk_100127348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018AB68);
  }

  return result;
}

unint64_t sub_10003CA6C()
{
  result = qword_10018AB80;
  if (!qword_10018AB80)
  {
    sub_100004D48(&qword_10018AB40, &qword_100125280);
    sub_10003CB24();
    sub_10000AAEC(&qword_100189010, &qword_100188FE8, &qword_100124FA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018AB80);
  }

  return result;
}

unint64_t sub_10003CB24()
{
  result = qword_10018AB88;
  if (!qword_10018AB88)
  {
    sub_100004D48(&qword_10018AB90, &qword_100125298);
    sub_10003CBDC();
    sub_10000AAEC(&qword_100189000, &qword_100189008, &qword_100122380, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018AB88);
  }

  return result;
}

unint64_t sub_10003CBDC()
{
  result = qword_10018AB98;
  if (!qword_10018AB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018AB98);
  }

  return result;
}

unint64_t sub_10003CC30()
{
  result = qword_10018ABA8;
  if (!qword_10018ABA8)
  {
    sub_100004D48(&qword_10018ABB0, &qword_1001252A0);
    sub_10003CCEC(&qword_10018ABB8, type metadata accessor for ContactOptionsView, &unk_10012C964);
    sub_10003CD34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018ABA8);
  }

  return result;
}

uint64_t sub_10003CCEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10003CD34()
{
  result = qword_10018ABC0;
  if (!qword_10018ABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018ABC0);
  }

  return result;
}

unint64_t sub_10003CD88()
{
  result = qword_10018ABD0;
  if (!qword_10018ABD0)
  {
    sub_100004D48(&qword_10018ABD8, &qword_1001252A8);
    sub_10000AAEC(&qword_10018ABE0, &qword_10018ABE8, &qword_1001252B0, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018ABD0);
  }

  return result;
}

uint64_t sub_10003CE40(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result)
  {

    return sub_1000068F8(a6, a7);
  }

  return result;
}

uint64_t sub_10003CEBC(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_10000AC78(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10003CF1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowStepMainContentView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003CF80()
{
  sub_100012478();
  sub_100003768(v1, v2);
  sub_10000AF7C();
  v3 = sub_10000AFAC();
  v4(v3);
  return v0;
}

uint64_t sub_10003CFD8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_10003CFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FlowStepStackView(0, *(v5 + 16), *(v5 + 24), a4);
  sub_10003DBF4();
  v8 = *(v7 + 80);
  v9 = (v8 + 32) & ~v8;
  v11 = *(v10 + 64);
  v12 = v5 + v9;

  if (*(v5 + v9 + 80))
  {
    sub_1000086BC((v12 + 56));
  }

  if (*(v12 + 96))
  {
  }

  v13 = v12 + *(v4 + 56);
  v14 = type metadata accessor for HandoffBundle(0);
  if (!sub_10003DD10(v14))
  {
    type metadata accessor for ContactType();
    sub_10000AF7C();
    (*(v15 + 8))(v13);
    if (*(v13 + *(v6 + 20) + 8))
    {
    }
  }

  sub_100003768(qword_10018A910, &unk_1001250D0);

  return _swift_deallocObject(v5, v9 + v11, v8 | 7);
}

uint64_t sub_10003D1F0()
{
  sub_10003DCCC();
  v4 = type metadata accessor for FlowStepStackView(v0, v1, v2, v3);
  sub_10000ED84(v4);
  v5 = sub_10003DCB0();

  return sub_10003B260(v5, v6, v7, v8);
}

uint64_t sub_10003D260()
{
  sub_100012478();
  sub_100003768(v1, v2);
  sub_10000AF7C();
  v3 = sub_10000AFAC();
  v4(v3);
  return v0;
}

uint64_t sub_10003D2B8()
{
  sub_100012478();
  v1(0);
  sub_10000AF7C();
  v2 = sub_10000AFAC();
  v3(v2);
  return v0;
}

uint64_t sub_10003D310(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_10000AF7C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10003D368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FlowStepStackView(0, *(v5 + 32), *(v5 + 40), a4);
  sub_10003DBF4();
  v7 = *(v6 + 80);
  v8 = (v7 + 48) & ~v7;
  v19 = *(v9 + 64);
  v21 = type metadata accessor for ContactType();
  sub_100008780();
  v11 = v10;
  v12 = *(v10 + 80);
  v20 = *(v13 + 64);
  swift_unknownObjectRelease();
  v14 = v5 + v8;

  if (*(v5 + v8 + 80))
  {
    sub_1000086BC((v14 + 56));
  }

  if (*(v14 + 96))
  {
  }

  v15 = v14 + *(v4 + 56);
  v16 = type metadata accessor for HandoffBundle(0);
  if (!sub_10000E5F0(v15, 1, v16))
  {
    (*(v11 + 8))(v15, v21);
    if (*(v15 + *(v16 + 20) + 8))
    {
    }
  }

  v17 = (v8 + v19 + v12) & ~v12;
  sub_100003768(qword_10018A910, &unk_1001250D0);

  (*(v11 + 8))(v5 + v17, v21);

  return _swift_deallocObject(v5, v17 + v20, v7 | v12 | 7);
}

uint64_t sub_10003D5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v9 = v4[4];
  v8 = v4[5];
  v10 = *(type metadata accessor for FlowStepStackView(0, v9, v8, a4) - 8);
  v11 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = type metadata accessor for ContactType();
  sub_10000ED84(v13);
  v15 = (v11 + v12 + *(v14 + 80)) & ~*(v14 + 80);
  v16 = v4[2];
  v17 = v4[3];
  v18 = swift_task_alloc();
  *(v6 + 16) = v18;
  *v18 = v6;
  v18[1] = sub_10003D760;

  return sub_10003B520(a1, v16, v17, v4 + v11, v4 + v15, v9, v8);
}

uint64_t sub_10003D760()
{
  sub_100025A94();
  v1 = *v0;
  sub_10000870C();
  *v2 = v1;

  sub_10000875C();

  return v3();
}

uint64_t sub_10003D844(uint64_t *a1)
{
  v25 = sub_100004D48(&qword_10018A9C8, &qword_100125170);
  v26 = sub_100004D48(&qword_10018A9D0, &qword_100125178);
  v27 = type metadata accessor for Optional();
  v28 = sub_100004D48(&qword_10018A9D8, &qword_100125180);
  v29 = sub_100004D48(&qword_10018A9E0, &qword_100125188);
  v30 = sub_100004D48(&qword_10018A9E8, &qword_100125190);
  sub_10003DCF0(v30, v1, &v25);
  v2 = type metadata accessor for TupleView();
  sub_100006A70();
  WitnessTable = swift_getWitnessTable();
  v25 = &type metadata for String;
  v26 = v2;
  v27 = &protocol witness table for String;
  v28 = WitnessTable;
  type metadata accessor for List();
  type metadata accessor for ModifiedContent();
  sub_100004D48(&qword_10018A9F0, &qword_100125198);
  type metadata accessor for ModifiedContent();
  sub_100004D48(&qword_10018A9F8, &qword_1001251A0);
  v4 = type metadata accessor for ModifiedContent();
  sub_10003DC3C();
  swift_getWitnessTable();
  sub_10000F4E8();
  swift_getWitnessTable();
  sub_10003DC24();
  sub_10000AAEC(v5, &qword_10018A9F0, &qword_100125198, v6);
  swift_getWitnessTable();
  sub_10003DC0C();
  sub_10000AAEC(v7, &qword_10018A9F8, &qword_1001251A0, v8);
  v9 = swift_getWitnessTable();
  v25 = v4;
  v26 = v9;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v11 = type metadata accessor for HandoffBundle(255);
  v12 = type metadata accessor for SupportHandoffUserConsentView(255);
  v25 = v4;
  v26 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_10003DC6C();
  v16 = sub_10003CCEC(v14, v15, &unk_100125090);
  sub_10003DC54();
  v19 = sub_10003CCEC(v17, v18, &unk_1001258D0);
  v25 = OpaqueTypeMetadata2;
  v26 = v11;
  v27 = v12;
  v28 = OpaqueTypeConformance2;
  v29 = v16;
  v30 = v19;
  v20 = swift_getOpaqueTypeMetadata2();
  v21 = sub_100004D48(&qword_10018A518, &qword_100124920);
  v25 = OpaqueTypeMetadata2;
  v26 = v11;
  v27 = v12;
  v28 = OpaqueTypeConformance2;
  v29 = v16;
  v30 = v19;
  v22 = swift_getOpaqueTypeConformance2();
  v23 = sub_10003BF10();
  v25 = v20;
  v26 = v21;
  v27 = v22;
  v28 = v23;
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10003DC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);

  return type metadata accessor for FlowStepStackView(0, v6, v7, a4);
}

uint64_t sub_10003DCF0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_getTupleTypeMetadata();
}

uint64_t sub_10003DD10(uint64_t a1)
{

  return sub_10000E5F0(v1, 1, a1);
}

uint64_t sub_10003DD44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowSymbol(0);

  return sub_10000E5F0(a1, a2, v4);
}

uint64_t sub_10003DDA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowSymbol(0);

  return sub_100003CE8(a1, a2, a2, v4);
}

uint64_t type metadata accessor for FlowSymbolView(uint64_t a1)
{
  result = qword_10018AC60;
  if (!qword_10018AC60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003DE38(uint64_t a1)
{
  result = type metadata accessor for FlowSymbol(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_10003DEC0@<D0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003768(&qword_10018AC98, &qword_1001253A8);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v31 - v8;
  v31 = sub_100003768(&qword_10018ACA0, &qword_1001253B0);
  sub_10000AF7C();
  __chkstk_darwin(v10);
  v12 = &v31 - v11;

  Image.init(_internalSystemName:)();
  (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
  v13 = Image.resizable(capInsets:resizingMode:)();

  (*(v3 + 8))(v5, v2);
  v14 = &v9[*(sub_100003768(&qword_10018ACA8, &qword_1001253B8) + 36)];
  v15 = *(sub_100003768(&qword_10018A7F8, &qword_100124AE8) + 28);
  v16 = type metadata accessor for FlowSymbol(0);
  v17 = v16[5];
  v18 = type metadata accessor for SymbolRenderingMode();
  sub_10000AF7C();
  (*(v19 + 16))(v14 + v15, v1 + v17, v18);
  sub_100003CE8(v14 + v15, 0, 1, v18);
  *v14 = swift_getKeyPath();
  *v9 = v13;
  *(v9 + 1) = 0;
  *(v9 + 8) = 1;
  v20 = v16[6];
  KeyPath = swift_getKeyPath();
  v22 = &v9[*(v7 + 44)];
  v23 = *(sub_100003768(&qword_10018ACB0, &qword_100125420) + 28);
  type metadata accessor for Image.Scale();
  sub_10000AF7C();
  (*(v24 + 16))(v22 + v23, v1 + v20);
  *v22 = KeyPath;
  v25 = v16[7];
  if (*(v1 + v25))
  {
    v26 = *(v1 + v25);
  }

  else
  {
    v26 = static Color.secondary.getter();
  }

  sub_10003E294(v9, v12, &qword_10018AC98, &qword_1001253A8);
  *&v12[*(v31 + 36)] = v26;

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v27 = v32;
  sub_10003E294(v12, v32, &qword_10018ACA0, &qword_1001253B0);
  v28 = (v27 + *(sub_100003768(&qword_10018ACB8, &qword_100125428) + 36));
  v29 = v34;
  *v28 = v33;
  v28[1] = v29;
  result = *&v35;
  v28[2] = v35;
  return result;
}

uint64_t sub_10003E294(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100003768(a3, a4);
  sub_10000AF7C();
  (*(v6 + 32))(a2, a1);
  return a2;
}

unint64_t sub_10003E2F8()
{
  result = qword_10018ACC0;
  if (!qword_10018ACC0)
  {
    sub_100004D48(&qword_10018ACB8, &qword_100125428);
    sub_10003E384();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018ACC0);
  }

  return result;
}

unint64_t sub_10003E384()
{
  result = qword_10018ACC8;
  if (!qword_10018ACC8)
  {
    sub_100004D48(&qword_10018ACA0, &qword_1001253B0);
    sub_10003E43C();
    sub_10000AAEC(&qword_10018ACE8, &qword_10018ACF0, &unk_100125430, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018ACC8);
  }

  return result;
}

unint64_t sub_10003E43C()
{
  result = qword_10018ACD0;
  if (!qword_10018ACD0)
  {
    sub_100004D48(&qword_10018AC98, &qword_1001253A8);
    sub_10003E4F4();
    sub_10000AAEC(&qword_10018ACE0, &qword_10018ACB0, &qword_100125420, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018ACD0);
  }

  return result;
}

unint64_t sub_10003E4F4()
{
  result = qword_10018ACD8;
  if (!qword_10018ACD8)
  {
    sub_100004D48(&qword_10018ACA8, &qword_1001253B8);
    sub_100010DA8();
    sub_10000AAEC(&qword_10018A868, &qword_10018A7F8, &qword_100124AE8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018ACD8);
  }

  return result;
}

uint64_t sub_10003E5D8@<X0>(__int16 a2@<W1>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
  }

  v10 = sub_10010BDF0();
  v12 = v11;

  if (qword_100188380 != -1)
  {
    swift_once();
  }

  v14 = qword_1001A5980;
  v13 = *algn_1001A5988;
  *(a3 + 40) = &type metadata for AirPodsStepProvider;
  v15 = sub_100004C8C();
  *(a3 + 16) = HIBYTE(a2);
  *a3 = v10;
  *(a3 + 8) = v12;
  *(a3 + 48) = v15;
  *(a3 + 56) = v14;
  *(a3 + 64) = v13;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
}

unint64_t sub_10003E7BC()
{
  type metadata accessor for SupportActionInfoType(0);
  sub_10000AF7C();
  __chkstk_darwin(v1);
  sub_10000C30C();
  v4 = v3 - v2;
  sub_10003EBB8(v0, v3 - v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v5 = 0x736E6F6974706FLL;
  }

  sub_10003EE8C(v4);
  return v5;
}

unint64_t sub_10003E880@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10003E7BC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10003E8A8(uint64_t a1)
{
  type metadata accessor for ActionInfoDestination(0);
  sub_10000AF7C();
  __chkstk_darwin(v2);
  sub_10000C30C();
  v5 = v4 - v3;
  v6 = type metadata accessor for SupportActionInfoType(0);
  sub_10000AF7C();
  __chkstk_darwin(v7);
  sub_10000C30C();
  v10 = v9 - v8;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  sub_10000C30C();
  v15 = v14 - v13;
  sub_10003EBB8(a1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  (*(v12 + 32))(v15, v10, v11);
  if (EnumCaseMultiPayload == 1)
  {
    if (qword_100188170 != -1)
    {
      swift_once();
    }

    v17 = &qword_10018AD08;
  }

  else
  {
    if (qword_100188168 != -1)
    {
      swift_once();
    }

    v17 = &qword_10018ACF8;
  }

  v18 = *v17;
  v19 = v17[1];

  (*(v12 + 16))(v5, v15, v11);
  swift_storeEnumTagMultiPayload();
  v23[3] = v6;
  v23[4] = sub_10003EF94(&qword_10018AD18, &unk_100125570);
  v20 = sub_10003EE2C(v23);
  sub_10003EBB8(a1, v20);
  type metadata accessor for ActionInfo(0);
  swift_allocObject();
  v21 = sub_1000EDD44(v5, v18, v19, 1, v23, 0, 0);
  sub_10003EE8C(a1);
  (*(v12 + 8))(v15, v11);
  return v21;
}

uint64_t type metadata accessor for SupportActionInfoType(uint64_t a1)
{
  result = qword_10018AD90;
  if (!qword_10018AD90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003EBB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SupportActionInfoType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003EC1C()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_10018ACF8 = result;
  unk_10018AD00 = v3;
  return result;
}

uint64_t sub_10003ED24()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_10018AD08 = result;
  unk_10018AD10 = v3;
  return result;
}

uint64_t *sub_10003EE2C(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_10003EE8C(uint64_t a1)
{
  v2 = type metadata accessor for SupportActionInfoType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003EEF0(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10003EF50(uint64_t a1)
{
  result = sub_10003EF94(&qword_10018ADC8, &unk_100125538);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10003EF94(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SupportActionInfoType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10003F004(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    return v10[1];
  }

  return a1;
}

double sub_10003F144@<D0>(uint64_t a1@<X0>, char a2@<W1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ActionInfoType(0);
  sub_10000AF7C();
  v10 = __chkstk_darwin(v9);
  v33 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v34 = &v32 - v12;
  v13 = sub_100003768(&qword_10018ADD0, &unk_1001256A0);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v32 - v18;
  __chkstk_darwin(v17);
  v21 = &v32 - v20;
  v22 = *(sub_10003F004(a1, a2 & 1) + qword_1001A58A8);
  sub_10003F548(v22);

  if (v22 == 10 || (sub_1000136E0(a3), v23 = sub_100058B18(v22, a3), sub_10003F67C(a3), sub_10003F68C(v22), (v23 & 1) == 0))
  {
    if (qword_100188378 != -1)
    {
      swift_once();
    }

    v24 = *algn_1001A5978;
    v35 = qword_1001A5970;
  }

  else
  {
    v35 = 0;
    v24 = 0;
  }

  *v21 = 0;
  swift_storeEnumTagMultiPayload();
  sub_100003CE8(v21, 0, 1, v8);
  sub_10003F004(a1, a2 & 1);
  v25 = sub_1000DEC54(a3, 1);

  v38[3] = &type metadata for MessagesStepProvider;
  v38[4] = sub_10001362C();
  v38[0] = v25;
  sub_10000EC9C(v21, v19, &qword_10018ADD0, &unk_1001256A0);
  sub_10000EC9C(v38, v36, &qword_100189310, &qword_1001221A0);
  sub_10000EC9C(v19, v16, &qword_10018ADD0, &unk_1001256A0);
  if (sub_10000E5F0(v16, 1, v8) == 1)
  {
    sub_10000ABCC(v19, &qword_10018ADD0, &unk_1001256A0);
    sub_10000ABCC(v21, &qword_10018ADD0, &unk_1001256A0);
    sub_10000ABCC(v38, &qword_100189310, &qword_1001221A0);
    v26 = 0;
  }

  else
  {
    v27 = v34;
    sub_10003F558(v16, v34);
    type metadata accessor for ActionInfo(0);
    v28 = v33;
    sub_10003F5BC(v27, v33);
    v26 = sub_1000ED69C(v28, 1, 0, 0);
    sub_10003F620(v27);
    sub_10000ABCC(v19, &qword_10018ADD0, &unk_1001256A0);
    sub_10000ABCC(v21, &qword_10018ADD0, &unk_1001256A0);
    sub_10000ABCC(v38, &qword_100189310, &qword_1001221A0);
  }

  *a4 = 0xD000000000000015;
  *(a4 + 8) = 0x8000000100135E70;
  *(a4 + 64) = v24;
  *(a4 + 72) = v26;
  result = *v36;
  v30 = v36[1];
  *(a4 + 16) = v36[0];
  *(a4 + 32) = v30;
  v31 = v35;
  *(a4 + 48) = v37;
  *(a4 + 56) = v31;
  *(a4 + 80) = 0;
  *(a4 + 88) = 0;
  return result;
}

unint64_t sub_10003F548(unint64_t result)
{
  if (result != 10)
  {
    return sub_1000136E0(result);
  }

  return result;
}

uint64_t sub_10003F558(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionInfoType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003F5BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionInfoType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003F620(uint64_t a1)
{
  v2 = type metadata accessor for ActionInfoType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10003F67C(unint64_t result)
{
  if (result >= 0xA)
  {
  }

  return result;
}

unint64_t sub_10003F68C(unint64_t result)
{
  if (result != 10)
  {
    return sub_10003F67C(result);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CompromisedAccountStepProvider(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10003F768);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

double sub_10003F7BC@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 1:
      sub_1000B6FB4(&v77);
      v81 = *v78;
      v80 = *&v78[8];
      v66 = v77;
      v70 = *v78;
      v71 = *&v78[16];
      LOBYTE(v72) = v79;
      BYTE1(v72) = 1;

      sub_10004009C(&v81, v74);
      sub_10004010C(&v80, v74);
      sub_10003FF68();
      v37 = sub_10003FFBC();
      sub_100005960(v37, &_s13ResetPasswordVN_0, &_s10ReviewInfoVN, v38, v37, v39, v40, v41, v66);
      _ConditionalContent<>.init(storage:)();
      sub_1000402E0();
      sub_1000402C8(v42, v43, v44, v45, v46, v47, v48, v49, v67, v70, *(&v70 + 1), v71, v72, v73, v74[0]);
      sub_100003768(&qword_10018AE08, &qword_100125840);
      sub_100003768(&qword_10018AE10, &qword_100125848);
      sub_10003FEDC();
      v50 = sub_100040010();
      sub_100005960(v50, v51, v52, v53, v50, v54, v55, v56, v68);
      _ConditionalContent<>.init(storage:)();

      sub_100040168(&v81);
      sub_1000401D0(&v80);
      goto LABEL_8;
    case 2:
      sub_1000402B4();
      v64 = v18;
      sub_10003FE34();
      v19 = sub_10003FE88();
      sub_100005960(v19, &_s13VerifyDevicesVN, &_s14ContactSupportVN, v20, v19, v21, v22, v23, v64);
      _ConditionalContent<>.init(storage:)();
      goto LABEL_5;
    case 3:
      sub_1000402B4();
      v65 = v24 - 4;
      sub_10003FE34();
      v25 = sub_10003FE88();
      sub_100005960(v25, &_s13VerifyDevicesVN, &_s14ContactSupportVN, v26, v25, v27, v28, v29, v65);
      _ConditionalContent<>.init(storage:)();
LABEL_5:
      v63 = *&v74[0];
      goto LABEL_6;
    default:
      sub_1000402B4();
      v61 = v4;
      v69 = v3;
      LOWORD(v72) = 0;
      sub_10003FF68();
      v5 = sub_10003FFBC();
      sub_100005960(v5, &_s13ResetPasswordVN_0, &_s10ReviewInfoVN, v6, v5, v7, v8, v9, v61);
      _ConditionalContent<>.init(storage:)();
      sub_1000402E0();
      sub_1000402C8(v10, v11, v12, v13, v14, v15, v16, v17, v62, v69, 1, 0, v72, v73, v74[0]);
LABEL_6:
      sub_100003768(&qword_10018AE08, &qword_100125840);
      sub_100003768(&qword_10018AE10, &qword_100125848);
      sub_10003FEDC();
      v30 = sub_100040010();
      sub_100005960(v30, v31, v32, v33, v30, v34, v35, v36, v63);
      _ConditionalContent<>.init(storage:)();
LABEL_8:
      result = *v74;
      v58 = v74[1];
      v59 = v75;
      v60 = v76;
      *a2 = v74[0];
      *(a2 + 16) = v58;
      *(a2 + 32) = v59;
      *(a2 + 34) = v60;
      return result;
  }
}

unint64_t sub_10003FAC4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100175F70, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10003FB10(char a1)
{
  result = 0xD000000000000022;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000026;
      break;
    case 3:
      result = 0xD00000000000001ELL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10003FBBC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10003FAC4(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10003FBEC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10003FB10(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_10003FC18(uint64_t *a1@<X8>)
{
  sub_1000E799C(*v1);
  *a1 = v3;
  a1[1] = v4;
}

unint64_t sub_10003FC78()
{
  result = qword_10018ADD8;
  if (!qword_10018ADD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018ADD8);
  }

  return result;
}

uint64_t sub_10003FCF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10003FD34()
{
  result = qword_10018ADE0;
  if (!qword_10018ADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018ADE0);
  }

  return result;
}

unint64_t sub_10003FD88()
{
  result = qword_10018ADE8;
  if (!qword_10018ADE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018ADE8);
  }

  return result;
}

unint64_t sub_10003FDE0()
{
  result = qword_10018ADF0;
  if (!qword_10018ADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018ADF0);
  }

  return result;
}

unint64_t sub_10003FE34()
{
  result = qword_10018ADF8;
  if (!qword_10018ADF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018ADF8);
  }

  return result;
}

unint64_t sub_10003FE88()
{
  result = qword_10018AE00;
  if (!qword_10018AE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018AE00);
  }

  return result;
}

unint64_t sub_10003FEDC()
{
  result = qword_10018AE18;
  if (!qword_10018AE18)
  {
    sub_100004D48(&qword_10018AE08, &qword_100125840);
    sub_10003FF68();
    sub_10003FFBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018AE18);
  }

  return result;
}

unint64_t sub_10003FF68()
{
  result = qword_10018AE20;
  if (!qword_10018AE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018AE20);
  }

  return result;
}

unint64_t sub_10003FFBC()
{
  result = qword_10018AE28;
  if (!qword_10018AE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018AE28);
  }

  return result;
}

unint64_t sub_100040010()
{
  result = qword_10018AE30;
  if (!qword_10018AE30)
  {
    sub_100004D48(&qword_10018AE10, &qword_100125848);
    sub_10003FE34();
    sub_10003FE88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018AE30);
  }

  return result;
}

uint64_t sub_10004009C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_10018AE38, &qword_100125850);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100040168(uint64_t a1)
{
  v2 = sub_100003768(&qword_10018AE38, &qword_100125850);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100040228()
{
  result = qword_10018AE40;
  if (!qword_10018AE40)
  {
    sub_100004D48(&qword_10018AE48, &qword_100125858);
    sub_10003FEDC();
    sub_100040010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018AE40);
  }

  return result;
}

uint64_t sub_1000402F4(uint64_t a1)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  sub_10000C30C();
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  sub_10000C30C();
  v4 = type metadata accessor for SupportFlowIdentifier();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  sub_10000C30C();
  v8 = v7 - v6;
  ObservationRegistrar.init()();
  (*(v5 + 104))(v8, enum case for SupportFlowIdentifier.compromisedAccount(_:), v4);

  sub_1001056F4(v8, &type metadata for CompromisedAccountStepOverrideProvider, a1, 0, 0, v9);
  v11 = v10;
  swift_retain_n();
  sub_100107F8C(0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  sub_100105F38();
  if (qword_100188238 != -1)
  {
    swift_once();
  }

  sub_100104744();

  return v11;
}

uint64_t sub_100040544()
{
  v1 = qword_10018AE50;
  type metadata accessor for ObservationRegistrar();
  sub_10000C31C();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

uint64_t sub_1000405A0()
{
  v0 = sub_10011484C();
  v1 = qword_10018AE50;
  type metadata accessor for ObservationRegistrar();
  sub_10000C31C();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for CompromisedAccountFlowViewModel(uint64_t a1)
{
  result = qword_10018AE80;
  if (!qword_10018AE80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100040684(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_100040724@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a3;
  v8 = type metadata accessor for HandoffBundle(0);
  v9 = sub_10000ED84(v8);
  __chkstk_darwin(v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003768(&qword_10018B188, &qword_1001258A0);
  sub_10000AF7C();
  v13 = __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v24 - v16;
  LOBYTE(v25) = 0;
  sub_100046238();
  v18 = v27;
  *(a5 + 16) = v26;
  *(a5 + 24) = v18;
  LOBYTE(v25) = 0;
  sub_100046238();
  v19 = v27;
  *(a5 + 32) = v26;
  *(a5 + 40) = v19;
  type metadata accessor for SupportHandoffUserConsentView(0);
  v20 = type metadata accessor for HandoffErrorAlert(0);
  sub_100003CE8(v17, 1, 1, v20);
  sub_1000409DC(v17, v15);
  State.init(wrappedValue:)();
  sub_100044F98(v17, &qword_10018B188, &qword_1001258A0);
  sub_1000450F4();
  v21 = swift_allocObject();
  *(v21 + 16) = v24;
  *(v21 + 24) = a4;
  type metadata accessor for SupportHandoffUserConsentViewModel(0);
  swift_allocObject();

  v25 = sub_100081488(a1, v11, sub_100040A84, v21);
  sub_100046238();

  result = sub_1000454F4();
  v23 = v27;
  *a5 = v26;
  *(a5 + 8) = v23;
  return result;
}

uint64_t type metadata accessor for SupportHandoffUserConsentView(uint64_t a1)
{
  result = qword_10018B1F0;
  if (!qword_10018B1F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000409DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_10018B188, &qword_1001258A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100040A4C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100040AAC()
{
  v1 = sub_100003768(&qword_10018B248, &qword_100125920);
  v2 = sub_10000ED84(v1);
  __chkstk_darwin(v2);
  sub_100003768(&qword_10018B250, &qword_100125928);
  State.projectedValue.getter();
  swift_getKeyPath();
  sub_100003768(&qword_10018B258, &qword_100125958);
  Binding.subscript.getter();

  sub_100003768(&qword_10018B260, &qword_100125960);
  sub_100004D48(&qword_10018B268, &qword_100125968);
  sub_100004D48(&qword_10018B270, &qword_100125970);
  sub_100004D48(&qword_10018B278, &qword_100125978);
  type metadata accessor for HandoffErrorAlert(255);
  sub_100004D48(&qword_10018B280, &qword_100125980);
  type metadata accessor for AppleAccountSignInView(255);
  sub_100004D48(&qword_10018B288, &qword_100125988);
  sub_100004D48(&qword_10018B290, &qword_100125990);
  sub_100004D48(&qword_10018B298, &qword_100125998);
  sub_100004D48(&qword_10018B2A0, &qword_1001259A0);
  sub_100044D7C();
  sub_100004D48(&qword_10018B2B8, &qword_1001259A8);
  sub_10000AAEC(&qword_10018B2C0, &qword_10018B2B8, &qword_1001259A8, &protocol conformance descriptor for ToolbarItem<A, B>);
  sub_1000461AC();
  sub_1000461AC();
  sub_10002EA50();
  type metadata accessor for SupportHandoffUserConsentViewModel(255);
  sub_10002EAA4();
  sub_100044EE4(&qword_10018A6C0, type metadata accessor for SupportHandoffUserConsentViewModel, &unk_100129670);
  sub_1000461AC();
  sub_1000461AC();
  sub_100044EE4(&qword_10018B2C8, type metadata accessor for AppleAccountSignInView, &unk_10012FC48);
  sub_1000461AC();
  sub_10000AAEC(&qword_10018B2D0, &qword_10018B270, &qword_100125970, &protocol conformance descriptor for TupleView<A>);
  sub_100044E68();
  sub_1000461AC();
  return NavigationStack.init<>(path:root:)();
}

uint64_t sub_100040EE8()
{
  sub_10004620C();
  type metadata accessor for NavigationPath();
  sub_100008780();
  __chkstk_darwin(v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v3, v0);
  return sub_10007E5EC(v3);
}

uint64_t sub_100040FA0@<X0>(ValueMetadata **a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = sub_100003768(&qword_10018B188, &qword_1001258A0);
  __chkstk_darwin(v3 - 8);
  v67 = &v52 - v4;
  v5 = type metadata accessor for SupportHandoffUserConsentView(0);
  v6 = *(v5 - 8);
  v65 = v5 - 8;
  v70 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v75 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for WelcomeView();
  v57 = *(v56 - 8);
  __chkstk_darwin(v56);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_100003768(&qword_10018B298, &qword_100125998);
  __chkstk_darwin(v59);
  v55 = &v52 - v10;
  v60 = sub_100003768(&qword_10018B288, &qword_100125988);
  v61 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = &v52 - v11;
  v62 = sub_100003768(&qword_10018B280, &qword_100125980);
  v63 = *(v62 - 8);
  __chkstk_darwin(v62);
  v73 = &v52 - v12;
  v64 = sub_100003768(&qword_10018B268, &qword_100125968);
  v66 = *(v64 - 8);
  __chkstk_darwin(v64);
  v74 = &v52 - v13;
  v14 = a1[1];
  v78 = *a1;
  v15 = v78;
  v79 = v14;
  sub_100003768(&qword_10018B250, &qword_100125928);
  State.wrappedValue.getter();
  v16 = type metadata accessor for ShareDataWelcomeContent(0);
  v81 = v16;
  v82 = sub_100044EE4(&qword_10018B2E0, type metadata accessor for ShareDataWelcomeContent, &unk_10012C880);
  v17 = sub_10003EE2C(&v78);
  sub_1000450F4();

  v84 = v15;
  v85 = v14;
  v18 = State.wrappedValue.getter();
  v19 = sub_10007E7F4(v18);

  *(v17 + *(v16 + 20)) = v19;
  v72 = type metadata accessor for SupportHandoffUserConsentView;
  sub_1000450F4();
  v69 = *(v6 + 80);
  v20 = (v69 + 16) & ~v69;
  swift_allocObject();
  v71 = type metadata accessor for SupportHandoffUserConsentView;
  sub_100045338();
  WelcomeView.init(content:actionHandler:)();
  static String.stepPrivacySheet.getter();
  sub_100044EE4(&qword_10018B2B0, &type metadata accessor for WelcomeView, &protocol conformance descriptor for WelcomeView);
  v21 = v55;
  v22 = v56;
  View.accessibilityIdentifier(_:)();

  (*(v57 + 8))(v9, v22);
  v77 = a1;
  v53 = a1;
  v23 = sub_100003768(&qword_10018B2A0, &qword_1001259A0);
  v24 = sub_100044D7C();
  v25 = sub_100004D48(&qword_10018B2B8, &qword_1001259A8);
  v26 = sub_10000AAEC(&qword_10018B2C0, &qword_10018B2B8, &qword_1001259A8, &protocol conformance descriptor for ToolbarItem<A, B>);
  v78 = v25;
  v79 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = v58;
  v29 = v59;
  View.toolbar<A>(content:)();
  sub_100044F98(v21, &qword_10018B298, &qword_100125998);
  sub_1000450F4();
  v54 = v20;
  swift_allocObject();
  sub_100045338();
  v30 = sub_100003768(&qword_10018B290, &qword_100125990);
  v78 = v29;
  v79 = v23;
  v80 = v24;
  v81 = OpaqueTypeConformance2;
  v31 = swift_getOpaqueTypeConformance2();
  v57 = sub_10002EA50();
  v32 = type metadata accessor for SupportHandoffUserConsentViewModel(255);
  v33 = sub_10002EAA4();
  v34 = sub_100044EE4(&qword_10018A6C0, type metadata accessor for SupportHandoffUserConsentViewModel, &unk_100129670);
  v78 = &type metadata for SupportHandoffStepProvider;
  v79 = v32;
  v80 = v33;
  v81 = v34;
  v35 = swift_getOpaqueTypeConformance2();
  v36 = v60;
  View.navigationDestination<A, B>(for:destination:)();

  (*(v61 + 8))(v28, v36);
  v37 = v53;
  v38 = v53[3];
  LOBYTE(v84) = *(v53 + 16);
  v85 = v38;
  v61 = sub_100003768(&qword_100189B68, &qword_1001239F0);
  State.projectedValue.getter();
  LODWORD(v58) = v80;
  sub_1000450F4();
  swift_allocObject();
  sub_100045338();
  v59 = type metadata accessor for AppleAccountSignInView(0);
  v78 = v36;
  v79 = &type metadata for SupportHandoffStepProvider;
  v80 = v30;
  v81 = v31;
  v82 = v57;
  v83 = v35;
  v69 = swift_getOpaqueTypeConformance2();
  v39 = sub_100044EE4(&qword_10018B2C8, type metadata accessor for AppleAccountSignInView, &unk_10012FC48);
  v40 = v73;
  v41 = v62;
  View.sheet<A>(isPresented:onDismiss:content:)();

  (*(v63 + 8))(v40, v41);
  v75 = sub_1000435EC();
  v73 = v42;
  LODWORD(v71) = v43;
  v72 = v44;
  v45 = v37[5];
  LOBYTE(v84) = *(v37 + 32);
  v85 = v45;
  State.projectedValue.getter();
  LODWORD(v70) = v80;
  sub_100003768(&qword_10018B190, &qword_1001258A8);
  v46 = v67;
  State.wrappedValue.getter();
  v76 = v37;
  sub_100003768(&qword_10018B270, &qword_100125970);
  sub_100003768(&qword_10018B278, &qword_100125978);
  type metadata accessor for HandoffErrorAlert(0);
  v78 = v41;
  v79 = v59;
  v80 = v69;
  v81 = v39;
  swift_getOpaqueTypeConformance2();
  sub_10000AAEC(&qword_10018B2D0, &qword_10018B270, &qword_100125970, &protocol conformance descriptor for TupleView<A>);
  sub_100044E68();
  v47 = v64;
  LOBYTE(v30) = v71;
  v48 = v74;
  v49 = v75;
  v50 = v73;
  View.alert<A, B, C>(_:isPresented:presenting:actions:message:)();

  sub_10000AC78(v49, v50, v30 & 1);

  sub_100044F98(v46, &qword_10018B188, &qword_1001258A0);
  return (*(v66 + 8))(v48, v47);
}

uint64_t sub_100041C08(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for WelcomeAction();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SupportHandoffUserConsentView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = sub_100003768(&qword_1001888B0, &qword_1001228F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v18 - v11;
  v13 = type metadata accessor for TaskPriority();
  sub_100003CE8(v12, 1, 1, v13);
  sub_1000450F4();
  (*(v4 + 16))(v6, a1, v3);
  type metadata accessor for MainActor();
  v14 = static MainActor.shared.getter();
  v15 = (v9 + *(v4 + 80) + ((*(v8 + 80) + 32) & ~*(v8 + 80))) & ~*(v4 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = &protocol witness table for MainActor;
  sub_100045338();
  (*(v4 + 32))(v16 + v15, v6, v3);
  sub_100085200();
}

uint64_t sub_100041EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v6 = type metadata accessor for WelcomeAction.WelcomeActionType();
  v5[19] = v6;
  v5[20] = *(v6 - 8);
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[23] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[24] = v8;
  v5[25] = v7;

  return _swift_task_switch(sub_100041FA0, v8, v7);
}

uint64_t sub_100041FA0()
{
  v1 = *(v0 + 136);
  v28 = v1[1];
  v29 = *v1;
  *(v0 + 48) = *v1;
  *(v0 + 56) = v28;
  sub_100003768(&qword_10018B250, &qword_100125928);
  v2 = State.wrappedValue.getter();
  v3 = sub_10007E7F4(v2);

  if (v3)
  {
    v4 = enum case for WelcomeAction.WelcomeActionType.primary(_:);
  }

  else
  {
    v6 = *(v0 + 168);
    v5 = *(v0 + 176);
    v7 = *(v0 + 152);
    v8 = *(v0 + 160);
    WelcomeAction.type.getter();
    v4 = enum case for WelcomeAction.WelcomeActionType.primary(_:);
    (*(v8 + 104))(v6, enum case for WelcomeAction.WelcomeActionType.primary(_:), v7);
    v9 = static WelcomeAction.WelcomeActionType.== infix(_:_:)();
    v10 = *(v8 + 8);
    v10(v6, v7);
    v10(v5, v7);
    if (v9)
    {
      v11 = *(v0 + 136);

      v12 = *(v11 + 24);
      *(v0 + 96) = *(v11 + 16);
      *(v0 + 104) = v12;
      *(v0 + 268) = 1;
      sub_100003768(&qword_100189B68, &qword_1001239F0);
      State.wrappedValue.setter();

      sub_10000875C();
      sub_100046280();

      __asm { BRAA            X1, X16 }
    }
  }

  *(v0 + 264) = v4;
  v16 = *(v0 + 168);
  v15 = *(v0 + 176);
  v17 = *(v0 + 152);
  v18 = *(v0 + 160);
  WelcomeAction.type.getter();
  v19 = *(v18 + 104);
  *(v0 + 208) = v19;
  *(v0 + 216) = (v18 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v19(v16, v4, v17);
  static WelcomeAction.WelcomeActionType.== infix(_:_:)();
  v20 = *(v18 + 8);
  *(v0 + 224) = v20;
  *(v0 + 232) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v16, v17);
  v20(v15, v17);
  *(v0 + 64) = v29;
  *(v0 + 72) = v28;
  State.wrappedValue.getter();

  v21 = sub_10008A620(v0 + 16);
  v23 = v22;
  v24 = type metadata accessor for SupportFlowSession();
  if (!sub_10000E5F0(v23, 1, v24))
  {
    SupportFlowSession.warmHandoff.setter();
  }

  (v21)(v0 + 16, 0);

  *(v0 + 80) = v29;
  *(v0 + 88) = v28;
  State.wrappedValue.getter();
  *(v0 + 240) = *(v0 + 128);
  v25 = swift_task_alloc();
  *(v0 + 248) = v25;
  *v25 = v0;
  v25[1] = sub_1000422F0;
  sub_100046280();

  return sub_10007E834();
}

uint64_t sub_1000422F0()
{
  sub_100025A94();
  sub_10004622C();
  v3 = v2;
  sub_1000461C8();
  *v4 = v3;
  v5 = *v1;
  sub_10000870C();
  *v6 = v5;
  v3[32] = v0;

  if (v0)
  {
    v7 = v3[24];
    v8 = v3[25];
    v9 = sub_100042460;
  }

  else
  {

    v7 = v3[24];
    v8 = v3[25];
    v9 = sub_1000423F8;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_1000423F8()
{
  sub_100025A94();

  sub_10000875C();

  return v0();
}

void sub_100042460()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  v3 = *(v0 + 264);
  v4 = *(v0 + 176);
  v5 = *(v0 + 168);
  v6 = *(v0 + 152);
  v10 = *(v0 + 256);

  WelcomeAction.type.getter();
  v2(v5, v3, v6);
  v7 = static WelcomeAction.WelcomeActionType.== infix(_:_:)();
  v1(v5, v6);
  v1(v4, v6);
  sub_100042570(v10, (v7 & 1) == 0);

  sub_10000875C();
  sub_100046280();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_100042570(uint64_t a1, int a2)
{
  v25 = a2;
  v26 = a1;
  v3 = type metadata accessor for SupportHandoffUserConsentView(0);
  v24 = *(v3 - 8);
  __chkstk_darwin(v3);
  v4 = type metadata accessor for HandoffBundle(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003768(&qword_10018B188, &qword_1001258A0);
  v8 = __chkstk_darwin(v7 - 8);
  v23 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = (&v22 - v10);
  v13 = v2[1];
  v28 = *v2;
  v12 = v28;
  v29 = v13;
  sub_100003768(&qword_10018B250, &qword_100125928);
  State.wrappedValue.getter();
  sub_10008094C();

  v14 = v2[5];
  LOBYTE(v28) = *(v2 + 32);
  v29 = v14;
  LOBYTE(v27) = 1;
  sub_100003768(&qword_100189B68, &qword_1001239F0);
  State.wrappedValue.setter();
  v28 = v12;
  v29 = v13;
  State.wrappedValue.getter();
  sub_1000450F4();

  v15 = type metadata accessor for HandoffErrorAlert(0);
  v16 = v15[5];
  v17 = type metadata accessor for ContactType();
  (*(*(v17 - 8) + 16))(v11 + v16, v6, v17);
  sub_1000454F4();
  sub_1000450F4();
  v18 = swift_allocObject();
  v19 = v25 & 1;
  *(v18 + 16) = v25 & 1;
  sub_100045338();
  *v11 = v26;
  *(v11 + v15[6]) = v19;
  v20 = (v11 + v15[7]);
  *v20 = sub_100045858;
  v20[1] = v18;
  sub_100003CE8(v11, 0, 1, v15);
  sub_1000409DC(v11, v23);
  swift_errorRetain();
  sub_100003768(&qword_10018B190, &qword_1001258A8);
  State.wrappedValue.setter();
  return sub_100044F98(v11, &qword_10018B188, &qword_1001258A0);
}

uint64_t sub_100042920(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v2 - 8);
  v3 = sub_100003768(&qword_10018B2B8, &qword_1001259A8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  static ToolbarItemPlacement.topBarTrailing.getter();
  v9 = a1;
  sub_100003768(&qword_10018B318, &unk_10012ED70);
  sub_10000AAEC(&qword_10018B320, &qword_10018B318, &unk_10012ED70, &protocol conformance descriptor for Button<A>);
  ToolbarItem<>.init(placement:content:)();
  sub_10000AAEC(&qword_10018B2C0, &qword_10018B2B8, &qword_1001259A8, &protocol conformance descriptor for ToolbarItem<A, B>);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100042B0C(uint64_t a1)
{
  v1 = type metadata accessor for SupportHandoffUserConsentView(0);
  __chkstk_darwin(v1 - 8);
  sub_1000450F4();
  swift_allocObject();
  sub_100045338();
  sub_100003768(&qword_10018B328, &unk_100125A30);
  sub_100045D24();
  return Button.init(action:label:)();
}

uint64_t sub_100042C74(void *a1)
{
  sub_100003768(&qword_10018B250, &qword_100125928);
  State.wrappedValue.getter();
  v1 = sub_10008094C();
  (*(v3 + OBJC_IVAR____TtC11SupportFlow34SupportHandoffUserConsentViewModel_dismissAction))(v1);
}

uint64_t sub_100042CEC@<X0>(uint64_t *a1@<X8>)
{
  v2 = Image.init(systemName:)();
  v3 = a1 + *(sub_100003768(&qword_10018B328, &unk_100125A30) + 36);
  v4 = *(sub_100003768(&qword_10018ACB0, &qword_100125420) + 28);
  v5 = enum case for Image.Scale.large(_:);
  v6 = type metadata accessor for Image.Scale();
  (*(*(v6 - 8) + 104))(&v3[v4], v5, v6);
  result = swift_getKeyPath();
  *v3 = result;
  *a1 = v2;
  return result;
}

uint64_t sub_100042DC4(char *a1, void *a2)
{
  sub_100003768(&qword_10018B250, &qword_100125928);
  State.wrappedValue.getter();
  type metadata accessor for SupportHandoffUserConsentViewModel(0);
  sub_10002EAA4();
  sub_100044EE4(&qword_10018A6C0, type metadata accessor for SupportHandoffUserConsentViewModel, &unk_100129670);
  View.environment<A>(_:)();
}

uint64_t sub_100042EA4@<X0>(uint64_t *a2@<X8>)
{
  v3 = type metadata accessor for SupportHandoffUserConsentView(0);
  __chkstk_darwin(v3 - 8);
  sub_1000450F4();
  v4 = swift_allocObject();
  sub_100045338();
  *a2 = swift_getKeyPath();
  sub_100003768(&qword_10018B310, &qword_10012A550);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for AppleAccountSignInView(0);
  v6 = (a2 + *(result + 20));
  *v6 = sub_100045544;
  v6[1] = v4;
  return result;
}

id sub_100043008(uint64_t *a1)
{
  v2 = type metadata accessor for SupportHandoffUserConsentView(0);
  __chkstk_darwin(v2 - 8);
  v3 = sub_100003768(&qword_1001888B0, &qword_1001228F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v14[-v4];
  v6 = a1[3];
  LOBYTE(v15) = *(a1 + 16);
  v16 = v6;
  v14[8] = 0;
  sub_100003768(&qword_100189B68, &qword_1001239F0);
  State.wrappedValue.setter();
  v7 = a1[1];
  v15 = *a1;
  v16 = v7;
  sub_100003768(&qword_10018B250, &qword_100125928);
  State.wrappedValue.getter();

  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v9 = result;
    v10 = [result aa_primaryAppleAccount];

    sub_100089A64(v10);

    v11 = type metadata accessor for TaskPriority();
    sub_100003CE8(v5, 1, 1, v11);
    sub_1000450F4();
    type metadata accessor for MainActor();
    v12 = static MainActor.shared.getter();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = &protocol witness table for MainActor;
    sub_100045338();
    sub_100085200();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000432A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_100043340, v6, v5);
}

uint64_t sub_100043340()
{
  sub_100025A94();
  v1 = v0[5];
  v3 = *v1;
  v2 = v1[1];
  v0[2] = v3;
  v0[3] = v2;
  sub_100003768(&qword_10018B250, &qword_100125928);
  State.wrappedValue.getter();
  v0[9] = v0[4];
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_100043404;

  return sub_10007E834();
}

uint64_t sub_100043404()
{
  sub_100025A94();
  sub_10004622C();
  v3 = v2;
  sub_1000461C8();
  *v4 = v3;
  v5 = *v1;
  sub_10000870C();
  *v6 = v5;
  v3[11] = v0;

  if (v0)
  {
    v7 = v3[7];
    v8 = v3[8];
    v9 = sub_100043564;
  }

  else
  {

    v7 = v3[7];
    v8 = v3[8];
    v9 = sub_10004350C;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_10004350C()
{
  sub_100025A94();

  sub_10000875C();

  return v0();
}

uint64_t sub_100043564()
{
  v1 = *(v0 + 88);

  sub_100042570(v1, 0);

  sub_10000875C();

  return v2();
}

uint64_t sub_1000435EC()
{
  v0 = type metadata accessor for HandoffErrorAlert(0);
  __chkstk_darwin(v0);
  v1 = sub_100003768(&qword_10018B188, &qword_1001258A0);
  __chkstk_darwin(v1 - 8);
  v3 = &v5 - v2;
  type metadata accessor for SupportHandoffUserConsentView(0);
  sub_100003768(&qword_10018B190, &qword_1001258A8);
  State.wrappedValue.getter();
  if (sub_10000E5F0(v3, 1, v0))
  {
    sub_100044F98(v3, &qword_10018B188, &qword_1001258A0);
  }

  else
  {
    sub_1000450F4();
    sub_100044F98(v3, &qword_10018B188, &qword_1001258A0);
    sub_1000454F4();
  }

  LocalizedStringKey.init(stringLiteral:)();
  return Text.init(_:tableName:bundle:comment:)();
}

uint64_t sub_100043808@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v42 = a2;
  v3 = sub_100003768(&qword_10018B2E8, &unk_1001259B0);
  __chkstk_darwin(v3 - 8);
  v38 = &v32 - v4;
  v5 = sub_100003768(&qword_10018A878, &qword_100124D10);
  v40 = *(v5 - 8);
  v41 = v5;
  v6 = __chkstk_darwin(v5);
  v39 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v44 = &v32 - v8;
  v9 = type metadata accessor for HandoffErrorAlert(0);
  v34 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for SupportHandoffUserConsentView(0) - 8;
  __chkstk_darwin(v10);
  v37 = sub_100003768(&qword_10018B2F0, &qword_1001259C0);
  v43 = *(v37 - 8);
  v11 = __chkstk_darwin(v37);
  v36 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v32 - v13;
  v35 = type metadata accessor for SupportHandoffUserConsentView;
  sub_1000450F4();
  sub_1000450F4();
  swift_allocObject();
  sub_100045338();
  sub_100045338();
  v45 = a1;
  sub_100003768(&qword_10018B2F8, &qword_1001259C8);
  sub_100045460();
  v15 = v14;
  v33 = v14;
  Button.init(action:label:)();
  v16 = v38;
  static ButtonRole.cancel.getter();
  v17 = type metadata accessor for ButtonRole();
  sub_100003CE8(v16, 0, 1, v17);
  sub_1000450F4();
  swift_allocObject();
  sub_100045338();
  v18 = v44;
  Button.init(role:action:label:)();
  v19 = *(v43 + 16);
  v20 = v36;
  v21 = v15;
  v22 = v37;
  v19(v36, v21, v37);
  v23 = v39;
  v24 = v40;
  v25 = *(v40 + 16);
  v26 = v41;
  v25(v39, v18, v41);
  v27 = v42;
  v19(v42, v20, v22);
  v28 = sub_100003768(&qword_10018B308, &qword_1001259D0);
  v25(&v27[*(v28 + 48)], v23, v26);
  v29 = *(v24 + 8);
  v29(v44, v26);
  v30 = *(v43 + 8);
  v30(v33, v22);
  v29(v23, v26);
  return (v30)(v20, v22);
}

uint64_t sub_100043DB0@<X0>(void *a2@<X8>)
{
  result = static Bool.isInternal.getter();
  if (result)
  {
    _StringGuts.grow(_:)(18);
    v4._object = 0x8000000100135F40;
    v4._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v4);
    sub_100003768(&qword_100189398, &unk_100122910);
    result = _print_unlocked<A, B>(_:_:)();
    v5 = 0xE000000000000000;
    v6 = _swiftEmptyArrayStorage;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  *a2 = 0;
  a2[1] = v5;
  a2[2] = 0;
  a2[3] = v6;
  return result;
}

uint64_t sub_100043E88(char a1, uint64_t a2)
{
  v3 = type metadata accessor for SupportHandoffUserConsentView(0);
  __chkstk_darwin(v3 - 8);
  v4 = sub_100003768(&qword_1001888B0, &qword_1001228F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  sub_100003CE8(v6, 1, 1, v7);
  sub_1000450F4();
  type metadata accessor for MainActor();
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = &protocol witness table for MainActor;
  *(v9 + 32) = a1 & 1;
  sub_100045338();
  sub_100085200();
}

uint64_t sub_100044050(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 64) = a5;
  *(v5 + 144) = a4;
  type metadata accessor for MainActor();
  *(v5 + 72) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 80) = v7;
  *(v5 + 88) = v6;

  return _swift_task_switch(sub_1000440EC, v7, v6);
}

uint64_t sub_1000440EC()
{
  sub_100025A94();
  v1 = *(v0 + 64);
  v3 = *v1;
  v2 = v1[1];
  if (*(v0 + 144))
  {
    *(v0 + 16) = v3;
    *(v0 + 24) = v2;
    sub_100003768(&qword_10018B250, &qword_100125928);
    State.wrappedValue.getter();
    *(v0 + 120) = *(v0 + 48);
    v4 = swift_task_alloc();
    *(v0 + 128) = v4;
    *v4 = v0;
    v4[1] = sub_1000443A8;

    return sub_10007E834();
  }

  else
  {
    *(v0 + 32) = v3;
    *(v0 + 40) = v2;
    sub_100003768(&qword_10018B250, &qword_100125928);
    State.wrappedValue.getter();
    *(v0 + 96) = *(v0 + 56);
    v6 = swift_task_alloc();
    *(v0 + 104) = v6;
    *v6 = v0;
    v6[1] = sub_100044248;

    return sub_100080B18();
  }
}

uint64_t sub_100044248()
{
  sub_100025A94();
  sub_10004622C();
  v3 = v2;
  sub_1000461C8();
  *v4 = v3;
  v5 = *v1;
  sub_10000870C();
  *v6 = v5;
  v3[14] = v0;

  if (v0)
  {
    v7 = v3[10];
    v8 = v3[11];
    v9 = sub_1000444B0;
  }

  else
  {

    v7 = v3[10];
    v8 = v3[11];
    v9 = sub_100044350;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_100044350()
{
  sub_100025A94();

  sub_10000875C();

  return v0();
}

uint64_t sub_1000443A8()
{
  sub_100025A94();
  sub_10004622C();
  v3 = v2;
  sub_1000461C8();
  *v4 = v3;
  v5 = *v1;
  sub_10000870C();
  *v6 = v5;
  v3[17] = v0;

  if (v0)
  {
    v7 = v3[10];
    v8 = v3[11];
    v9 = sub_100044538;
  }

  else
  {

    v7 = v3[10];
    v8 = v3[11];
    v9 = sub_100046164;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_1000444B0()
{
  v1 = *(v0 + 112);

  sub_100042570(v1, 1);

  sub_10000875C();

  return v2();
}

uint64_t sub_100044538()
{
  v1 = *(v0 + 136);

  sub_100042570(v1, 1);

  sub_10000875C();

  return v2();
}

uint64_t sub_1000445C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_10018B188, &qword_1001258A0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  v10 = *(a1 + 40);
  v14[16] = *(a1 + 32);
  v15 = v10;
  v14[15] = 0;
  sub_100003768(&qword_100189B68, &qword_1001239F0);
  State.wrappedValue.setter();
  v11 = type metadata accessor for HandoffErrorAlert(0);
  sub_100003CE8(v9, 1, 1, v11);
  type metadata accessor for SupportHandoffUserConsentView(0);
  sub_1000409DC(v9, v7);
  sub_100003768(&qword_10018B190, &qword_1001258A8);
  State.wrappedValue.setter();
  v12 = sub_100044F98(v9, &qword_10018B188, &qword_1001258A0);
  return (*(a2 + *(v11 + 28)))(v12);
}

double sub_100044738@<D0>(uint64_t a2@<X8>)
{
  type metadata accessor for HandoffErrorAlert(0);
  LocalizedStringKey.init(stringLiteral:)();
  Text.init(_:tableName:bundle:comment:)();
  _ConditionalContent<>.init(storage:)();
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_100044870(uint64_t a1)
{
  v2 = sub_100003768(&qword_10018B188, &qword_1001258A0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  v8 = *(a1 + 40);
  v11[16] = *(a1 + 32);
  v12 = v8;
  v11[15] = 0;
  sub_100003768(&qword_100189B68, &qword_1001239F0);
  State.wrappedValue.setter();
  v9 = type metadata accessor for HandoffErrorAlert(0);
  sub_100003CE8(v7, 1, 1, v9);
  type metadata accessor for SupportHandoffUserConsentView(0);
  sub_1000409DC(v7, v5);
  sub_100003768(&qword_10018B190, &qword_1001258A8);
  State.wrappedValue.setter();
  return sub_100044F98(v7, &qword_10018B188, &qword_1001258A0);
}

uint64_t sub_1000449C0@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100044A54(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100003768(&qword_10018B190, &qword_1001258A8);
    v9 = a1 + *(a3 + 28);

    return sub_10000E5F0(v9, a2, v8);
  }
}

void *sub_100044AFC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100003768(&qword_10018B190, &qword_1001258A8);
    v8 = v5 + *(a4 + 28);

    return sub_100003CE8(v8, a2, a2, v7);
  }

  return result;
}

void sub_100044B88(uint64_t a1)
{
  sub_100044C24(319);
  if (v1 <= 0x3F)
  {
    sub_100044C7C();
    if (v2 <= 0x3F)
    {
      sub_100044CCC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100044C24(uint64_t a1)
{
  if (!qword_10018B200)
  {
    type metadata accessor for SupportHandoffUserConsentViewModel(255);
    v1 = type metadata accessor for State();
    if (!v2)
    {
      atomic_store(v1, &qword_10018B200);
    }
  }
}

void sub_100044C7C()
{
  if (!qword_10018B208)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_10018B208);
    }
  }
}

void sub_100044CCC(uint64_t a1)
{
  if (!qword_10018B210)
  {
    sub_100004D48(&qword_10018B188, &qword_1001258A0);
    v1 = type metadata accessor for State();
    if (!v2)
    {
      atomic_store(v1, &qword_10018B210);
    }
  }
}

unint64_t sub_100044D7C()
{
  result = qword_10018B2A8;
  if (!qword_10018B2A8)
  {
    sub_100004D48(&qword_10018B298, &qword_100125998);
    sub_100044EE4(&qword_10018B2B0, &type metadata accessor for WelcomeView, &protocol conformance descriptor for WelcomeView);
    sub_100044EE4(&qword_1001887F8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B2A8);
  }

  return result;
}

unint64_t sub_100044E68()
{
  result = qword_10018B2D8;
  if (!qword_10018B2D8)
  {
    sub_100004D48(&qword_10018B278, &qword_100125978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B2D8);
  }

  return result;
}

uint64_t sub_100044EE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100044F2C()
{
  v2 = sub_100046268();
  v3 = type metadata accessor for SupportHandoffUserConsentView(v2);
  sub_10000ED84(v3);
  sub_100046274();

  return sub_100041C08(v0, v1 + v4);
}

uint64_t sub_100044F98(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_100003768(a2, a3);
  sub_10000C31C();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_100044FF0(char *a1)
{
  v3 = type metadata accessor for SupportHandoffUserConsentView(0);
  sub_10000ED84(v3);
  sub_100046274();

  return sub_100042DC4(a1, (v1 + v4));
}

uint64_t sub_100045068@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for SupportHandoffUserConsentView(0);
  sub_10000ED84(v2);
  sub_100046274();

  return sub_100042EA4(a1);
}

uint64_t sub_1000450F4()
{
  v2 = sub_10004620C();
  v3(v2);
  sub_10000AF7C();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_10004514C()
{
  type metadata accessor for SupportHandoffUserConsentView(0);
  sub_100046254();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = type metadata accessor for HandoffErrorAlert(0);
  sub_100008780();
  v9 = *(v8 + 80);
  v11 = *(v10 + 64);

  v12 = v0 + v4 + *(v1 + 36);
  if (!sub_10000E5F0(v12, 1, v7))
  {

    v13 = *(v7 + 20);
    type metadata accessor for ContactType();
    sub_10000C31C();
    (*(v14 + 8))(v12 + v13);
  }

  v15 = (v4 + v6 + v9) & ~v9;
  sub_100003768(&qword_10018B190, &qword_1001258A8);

  v16 = *(v7 + 20);
  type metadata accessor for ContactType();
  sub_10000C31C();
  (*(v17 + 8))(v0 + v15 + v16);

  return _swift_deallocObject(v0, v15 + v11, v3 | v9 | 7);
}

uint64_t sub_100045338()
{
  v2 = sub_10004620C();
  v3(v2);
  sub_10000AF7C();
  (*(v4 + 32))(v0, v1);
  return v0;
}

uint64_t sub_100045390()
{
  v1 = *(type metadata accessor for SupportHandoffUserConsentView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for HandoffErrorAlert(0);
  sub_10000ED84(v4);
  v6 = v0 + ((v2 + v3 + *(v5 + 80)) & ~*(v5 + 80));

  return sub_1000445C4(v0 + v2, v6);
}

unint64_t sub_100045460()
{
  result = qword_10018B300;
  if (!qword_10018B300)
  {
    sub_100004D48(&qword_10018B2F8, &qword_1001259C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B300);
  }

  return result;
}

uint64_t sub_1000454F4()
{
  v1 = sub_100046268();
  v2(v1);
  sub_10000C31C();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_100045560()
{
  type metadata accessor for SupportHandoffUserConsentView(0);
  sub_100046168();
  swift_unknownObjectRelease();
  sub_1000462B4();

  v2 = sub_1000461D4();
  if (!sub_10004617C(v2))
  {

    sub_10004629C();
    sub_10000C31C();
    (*(v3 + 8))(v0 + v1);
    sub_1000461F0();
  }

  v4 = sub_100003768(&qword_10018B190, &qword_1001258A8);
  sub_1000462CC(v4);
  v5 = sub_10004619C();

  return _swift_deallocObject(v5, v6, v7);
}

uint64_t sub_100045670()
{
  v1 = sub_100046268();
  v2 = type metadata accessor for SupportHandoffUserConsentView(v1);
  sub_10000ED84(v2);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_100046160;
  sub_10004621C();

  return sub_1000432A8(v4, v5, v6, v7);
}

uint64_t sub_100045750()
{
  type metadata accessor for SupportHandoffUserConsentView(0);
  sub_100046168();
  sub_1000462B4();

  v2 = sub_1000461D4();
  if (!sub_10004617C(v2))
  {

    sub_10004629C();
    sub_10000C31C();
    (*(v3 + 8))(v0 + v1);
    sub_1000461F0();
  }

  v4 = sub_100003768(&qword_10018B190, &qword_1001258A8);
  sub_1000462CC(v4);
  v5 = sub_10004619C();

  return _swift_deallocObject(v5, v6, v7);
}

uint64_t sub_100045858()
{
  v1 = type metadata accessor for SupportHandoffUserConsentView(0);
  sub_10000ED84(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 17) & ~*(v2 + 80));

  return sub_100043E88(v3, v4);
}

uint64_t sub_1000458B8()
{
  type metadata accessor for SupportHandoffUserConsentView(0);
  sub_100046168();
  swift_unknownObjectRelease();
  sub_1000462B4();

  v2 = sub_1000461D4();
  if (!sub_10004617C(v2))
  {

    sub_10004629C();
    sub_10000C31C();
    (*(v3 + 8))(v0 + v1);
    sub_1000461F0();
  }

  v4 = sub_100003768(&qword_10018B190, &qword_1001258A8);
  sub_1000462CC(v4);
  v5 = sub_10004619C();

  return _swift_deallocObject(v5, v6, v7);
}

uint64_t sub_1000459C8()
{
  v2 = sub_100046268();
  v3 = type metadata accessor for SupportHandoffUserConsentView(v2);
  sub_10000ED84(v3);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100045AB0;
  sub_10004621C();

  return sub_100044050(v6, v7, v8, v4, v9);
}

uint64_t sub_100045AB0()
{
  sub_100025A94();
  sub_10004622C();
  v1 = *v0;
  sub_10000870C();
  *v2 = v1;

  sub_10000875C();

  return v3();
}

uint64_t sub_100045B98()
{
  type metadata accessor for SupportHandoffUserConsentView(0);
  sub_100046168();
  sub_1000462B4();

  v2 = sub_1000461D4();
  if (!sub_10004617C(v2))
  {

    sub_10004629C();
    sub_10000C31C();
    (*(v3 + 8))(v0 + v1);
    sub_1000461F0();
  }

  v4 = sub_100003768(&qword_10018B190, &qword_1001258A8);
  sub_1000462CC(v4);
  v5 = sub_10004619C();

  return _swift_deallocObject(v5, v6, v7);
}

uint64_t sub_100045CB8(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for SupportHandoffUserConsentView(0);
  sub_10000ED84(v2);
  sub_100046274();

  return a1(v1 + v3);
}

unint64_t sub_100045D24()
{
  result = qword_10018B330;
  if (!qword_10018B330)
  {
    sub_100004D48(&qword_10018B328, &unk_100125A30);
    sub_10000AAEC(&qword_10018ACE0, &qword_10018ACB0, &qword_100125420, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B330);
  }

  return result;
}

uint64_t sub_100045DE4()
{
  type metadata accessor for SupportHandoffUserConsentView(0);
  sub_100046254();
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v6 = *(v5 + 64);
  v7 = type metadata accessor for WelcomeAction();
  sub_100008780();
  v9 = v8;
  v10 = *(v8 + 80);
  v18 = *(v11 + 64);
  swift_unknownObjectRelease();

  v12 = v0 + v4 + *(v1 + 36);
  v13 = type metadata accessor for HandoffErrorAlert(0);
  if (!sub_10000E5F0(v12, 1, v13))
  {

    v14 = *(v13 + 20);
    type metadata accessor for ContactType();
    sub_10000C31C();
    (*(v15 + 8))(v12 + v14);
  }

  v16 = (v4 + v6 + v10) & ~v10;
  sub_100003768(&qword_10018B190, &qword_1001258A8);

  (*(v9 + 8))(v0 + v16, v7);

  return _swift_deallocObject(v0, v16 + v18, v3 | v10 | 7);
}

uint64_t sub_100045FC4(uint64_t a1)
{
  type metadata accessor for SupportHandoffUserConsentView(0);
  v2 = type metadata accessor for WelcomeAction();
  sub_10000ED84(v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100046160;
  sub_10004621C();

  return sub_100041EA0(v4, v5, v6, v7, v8);
}

uint64_t sub_10004617C(uint64_t a1)
{

  return sub_10000E5F0(v1, 1, a1);
}

uint64_t sub_1000461AC()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000461D4()
{

  return type metadata accessor for HandoffErrorAlert(0);
}

uint64_t sub_1000461F0()
{
}

void *sub_100046238()
{

  return State.init(wrappedValue:)();
}

uint64_t sub_10004629C()
{

  return type metadata accessor for ContactType();
}

uint64_t sub_1000462B4()
{
}

uint64_t sub_1000462CC(uint64_t a1)
{
}

uint64_t sub_100046310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = qword_100188388;

  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_1001A5990;
  v9 = *algn_1001A5998;
  *(a4 + 40) = &type metadata for DisabledAccountStepProvider;
  v11 = sub_1000219CC();
  *(a4 + 16) = a3;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 48) = v11;
  *(a4 + 56) = v10;
  *(a4 + 64) = v9;
  *(a4 + 72) = 0;
  *(a4 + 80) = 0;
  *(a4 + 88) = 0;
}

uint64_t sub_100046400@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = static VerticalAlignment.center.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = sub_100003768(&qword_10018B348, &qword_100125C00);
  return sub_100046468(a1, a2 & 1, a3 + *(v6 + 44));
}

uint64_t sub_100046468@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v43 = a3;
  v5 = sub_100003768(&qword_10018B350, &qword_100125C08);
  v6 = __chkstk_darwin(v5 - 8);
  v42 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v41 = (&v40 - v8);
  v9 = type metadata accessor for EnvironmentValues();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100003768(&qword_10018B358, &qword_100125C10);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v40 - v17;
  sub_100046A7C(&v40 - v17);
  if (a2)
  {
    v49[12] = a1;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v10 + 8))(v12, v9);
  }

  sub_1000619E8(v50);

  if (v52 && (v20 = v51, sub_10001D724(v50, &qword_10018B388, &qword_100125C38), (v20 & 1) != 0))
  {
    v21 = static HorizontalAlignment.leading.getter();
    LOBYTE(v49[0]) = 1;
    sub_100046D2C(a1, a2 & 1, v46);
    *&v44[7] = v46[0];
    *&v44[23] = v46[1];
    *&v44[39] = v46[2];
    *&v44[55] = v46[3];
    v45[0] = 0;
    v47[0] = v21;
    v47[1] = 0;
    LOBYTE(v47[2]) = v49[0];
    memcpy(&v47[2] + 1, v44, 0x47uLL);
    LOBYTE(v47[11]) = 0;
  }

  else
  {
    if (a2)
    {
      *&v46[0] = a1;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v22 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v10 + 8))(v12, v9);
    }

    v23 = sub_100061AD4();
    v25 = v24;

    v49[0] = v23;
    v49[1] = v25;
    sub_10000AC24();
    v26 = Text.init<A>(_:)();
    v45[0] = v27 & 1;
    v48 = 1;
    v47[0] = v26;
    v47[1] = v28;
    LOBYTE(v47[2]) = v27 & 1;
    v47[3] = v29;
    LOBYTE(v47[11]) = 1;
  }

  sub_100003768(&qword_10018B360, &qword_100125C18);
  sub_10000AAEC(&qword_10018B368, &qword_10018B360, &qword_100125C18, &protocol conformance descriptor for VStack<A>);
  _ConditionalContent<>.init(storage:)();
  v30 = static VerticalAlignment.bottom.getter();
  v31 = v41;
  *v41 = v30;
  *(v31 + 8) = 0;
  *(v31 + 16) = 1;
  v32 = sub_100003768(&qword_10018B370, &qword_100125C20);
  sub_100047130(a1, a2 & 1, v31 + *(v32 + 44));
  v33 = v18;
  sub_100006578(v18, v16, &qword_10018B358, &qword_100125C10);
  memcpy(v45, v49, sizeof(v45));
  v34 = v42;
  sub_100006578(v31, v42, &qword_10018B350, &qword_100125C08);
  v35 = v43;
  sub_100006578(v16, v43, &qword_10018B358, &qword_100125C10);
  v36 = sub_100003768(&qword_10018B378, &qword_100125C28);
  v37 = v36[12];
  memcpy(v46, v45, 0x59uLL);
  memcpy((v35 + v37), v45, 0x59uLL);
  v38 = v35 + v36[16];
  *v38 = 0;
  *(v38 + 8) = 1;
  sub_100006578(v34, v35 + v36[20], &qword_10018B350, &qword_100125C08);
  sub_100006578(v46, v47, &qword_10018B380, &qword_100125C30);
  sub_10001D724(v31, &qword_10018B350, &qword_100125C08);
  sub_10001D724(v33, &qword_10018B358, &qword_100125C10);
  sub_10001D724(v34, &qword_10018B350, &qword_100125C08);
  memcpy(v47, v45, 0x59uLL);
  sub_10001D724(v47, &qword_10018B380, &qword_100125C30);
  return sub_10001D724(v16, &qword_10018B358, &qword_100125C10);
}

uint64_t sub_100046A7C@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v18 = type metadata accessor for AccessibilityTraits();
  v16 = *(v18 - 8);
  __chkstk_darwin(v18);
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100003768(&qword_10018B358, &qword_100125C10);
  v3 = __chkstk_darwin(v15);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v14 - v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000484E4(v8, v9);

  v10 = Image.init(uiImage:)();
  v11 = static Color.accentColor.getter();
  KeyPath = swift_getKeyPath();
  v19 = v10;
  v20 = KeyPath;
  v21 = v11;
  static String.networkAssociationStateImage.getter();
  sub_100003768(&qword_10018B3E0, &qword_100125CA8);
  sub_100048828();
  View.accessibilityIdentifier(_:)();

  LocalizedStringKey.init(stringLiteral:)();
  ModifiedContent<>.accessibilityLabel(_:)();

  sub_10001D724(v5, &qword_10018B358, &qword_100125C10);
  static AccessibilityTraits.isImage.getter();
  ModifiedContent<>.accessibilityRemoveTraits(_:)();
  (*(v16 + 8))(v2, v18);
  return sub_10001D724(v7, &qword_10018B358, &qword_100125C10);
}

uint64_t sub_100046D2C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v43 = a1;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
  }

  v11 = sub_100061AD4();
  v13 = v12;

  v40 = v11;
  v41 = v13;
  sub_10000AC24();
  v14 = Text.init<A>(_:)();
  v36 = v15;
  v37 = v14;
  HIDWORD(v35) = v16;
  v38 = v17;
  v40 = sub_100046FE4();
  v41 = v18;
  v19 = Text.init<A>(_:)();
  v21 = v20;
  v23 = v22;
  static Font.caption.getter();
  v24 = Text.font(_:)();
  v26 = v25;
  LOBYTE(v11) = v27;
  v29 = v28;

  sub_10000AC78(v19, v21, v23 & 1);

  v30 = BYTE4(v35) & 1;
  v39 = BYTE4(v35) & 1;
  LOBYTE(v40) = BYTE4(v35) & 1;
  LOBYTE(v19) = v11 & 1;
  v42 = v11 & 1;
  v32 = v36;
  v31 = v37;
  *a3 = v37;
  *(a3 + 8) = v32;
  *(a3 + 16) = v30;
  *(a3 + 24) = v38;
  *(a3 + 32) = v24;
  *(a3 + 40) = v26;
  *(a3 + 48) = v19;
  *(a3 + 56) = v29;
  v33 = v31;
  sub_100017564(v31, v32, v30);

  sub_100017564(v24, v26, v19);

  sub_10000AC78(v24, v26, v19);

  sub_10000AC78(v33, v32, v39);
}

uint64_t sub_100046FE4()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  sub_100048590();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

uint64_t sub_100047130@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v71 = a3;
  v70 = sub_100003768(&qword_10018B398, &qword_100125C40);
  __chkstk_darwin(v70);
  v67 = &v64 - v5;
  v73 = sub_100003768(&qword_10018B3A0, &qword_100125C48);
  __chkstk_darwin(v73);
  v7 = &v64 - v6;
  v8 = sub_100003768(&qword_10018B3A8, &qword_100125C50);
  __chkstk_darwin(v8);
  v66 = &v64 - v9;
  v10 = sub_100003768(&qword_10018B3B0, &qword_100125C58);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v74 = &v64 - v14;
  v15 = sub_100003768(&qword_10018B3B8, &qword_100125C60);
  __chkstk_darwin(v15);
  v17 = &v64 - v16;
  v69 = type metadata accessor for EnvironmentValues();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100003768(&qword_10018B3C0, &qword_100125C68);
  v21 = __chkstk_darwin(v20 - 8);
  v72 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v64 - v23;

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    v65 = v19;
    v26 = v17;
    v27 = a1;
    v28 = a2;
    v29 = v8;
    v30 = v7;
    v31 = v24;
    v32 = v25;
    os_log(_:dso:log:_:_:)();

    v24 = v31;
    v7 = v30;
    v8 = v29;
    a2 = v28;
    a1 = v27;
    v17 = v26;
    v19 = v65;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v68 + 8))(v19, v69);
  }

  sub_1000619E8(v75);

  if (v77 && (v33 = v76, sub_10001D724(v75, &qword_10018B388, &qword_100125C38), (v33 & 1) != 0))
  {
    v34 = 1;
  }

  else
  {
    sub_1000478D8(v17);
    v35 = static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    v36 = &v17[*(v15 + 36)];
    *v36 = v35;
    *(v36 + 1) = v37;
    *(v36 + 2) = v38;
    *(v36 + 3) = v39;
    *(v36 + 4) = v40;
    v36[40] = 0;
    sub_1000485D4(v17, v24);
    v34 = 0;
  }

  v41 = v74;
  sub_100003CE8(v24, v34, 1, v15);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v42 = v24;
    v43 = a1;
    v44 = a2;
    v45 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    a2 = v44;
    a1 = v43;
    v24 = v42;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v68 + 8))(v19, v69);
  }

  sub_1000619E8(v78);

  if (v80 && (v46 = v79, sub_10001D724(v78, &qword_10018B388, &qword_100125C38), (v46 & 1) != 0))
  {
    v47 = v24;
    v48 = v66;
    sub_100047CC4(v66);
    v49 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v50 = v48 + *(v8 + 36);
    *v50 = v49;
    *(v50 + 8) = v51;
    *(v50 + 16) = v52;
    *(v50 + 24) = v53;
    *(v50 + 32) = v54;
    *(v50 + 40) = 0;
    v55 = &qword_10018B3A8;
    v56 = &qword_100125C50;
    sub_100006578(v48, v7, &qword_10018B3A8, &qword_100125C50);
    swift_storeEnumTagMultiPayload();
    sub_100048644();
    sub_1000486D0();
    _ConditionalContent<>.init(storage:)();
    v57 = v48;
    v24 = v47;
  }

  else
  {
    v58 = v67;
    sub_100047F1C(a1, a2 & 1, v67);
    v55 = &qword_10018B398;
    v56 = &qword_100125C40;
    sub_100006578(v58, v7, &qword_10018B398, &qword_100125C40);
    swift_storeEnumTagMultiPayload();
    sub_100048644();
    sub_1000486D0();
    _ConditionalContent<>.init(storage:)();
    v57 = v58;
  }

  sub_10001D724(v57, v55, v56);
  v59 = v72;
  sub_100006578(v24, v72, &qword_10018B3C0, &qword_100125C68);
  sub_100006578(v41, v13, &qword_10018B3B0, &qword_100125C58);
  v60 = v24;
  v61 = v71;
  sub_100006578(v59, v71, &qword_10018B3C0, &qword_100125C68);
  v62 = sub_100003768(&qword_10018B3D8, &qword_100125C70);
  sub_100006578(v13, v61 + *(v62 + 48), &qword_10018B3B0, &qword_100125C58);
  sub_10001D724(v41, &qword_10018B3B0, &qword_100125C58);
  sub_10001D724(v60, &qword_10018B3C0, &qword_100125C68);
  sub_10001D724(v13, &qword_10018B3B0, &qword_100125C58);
  return sub_10001D724(v59, &qword_10018B3C0, &qword_100125C68);
}

uint64_t sub_1000478D8@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v1 = type metadata accessor for AccessibilityTraits();
  v19 = *(v1 - 8);
  v20 = v1;
  __chkstk_darwin(v1);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100003768(&qword_10018B398, &qword_100125C40);
  v8 = __chkstk_darwin(v18);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v17 - v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000484E4(v13, v14);

  Image.init(uiImage:)();
  (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
  v15 = Image.resizable(capInsets:resizingMode:)();

  (*(v5 + 8))(v7, v4);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v23[38] = v27;
  *&v23[22] = v26;
  *&v23[6] = v25;
  *(&v22[2] + 2) = *v23;
  v24 = 1;
  v22[0] = v15;
  v22[1] = 0;
  LOWORD(v22[2]) = 1;
  *(&v22[4] + 2) = *&v23[16];
  *(&v22[6] + 2) = *&v23[32];
  v22[8] = *(&v27 + 1);
  static String.secureNetworkImage.getter();
  sub_100003768(&qword_1001890C0, &qword_1001225F0);
  sub_100010D1C();
  View.accessibilityIdentifier(_:)();

  memcpy(__dst, v22, 0x48uLL);
  sub_10001D724(__dst, &qword_1001890C0, &qword_1001225F0);
  LocalizedStringKey.init(stringLiteral:)();
  ModifiedContent<>.accessibilityLabel(_:)();

  sub_10001D724(v10, &qword_10018B398, &qword_100125C40);
  static AccessibilityTraits.isImage.getter();
  ModifiedContent<>.accessibilityRemoveTraits(_:)();
  (*(v19 + 8))(v3, v20);
  return sub_10001D724(v12, &qword_10018B398, &qword_100125C40);
}

uint64_t sub_100047CC4@<X0>(uint64_t a1@<X8>)
{
  v14[0] = a1;
  v1 = type metadata accessor for AccessibilityTraits();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003768(&qword_100189D70, &qword_100123EB8);
  v6 = __chkstk_darwin(v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v14 - v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000484E4(v11, v12);

  v14[1] = Image.init(uiImage:)();
  static String.personalHotspotImage.getter();
  View.accessibilityIdentifier(_:)();

  LocalizedStringKey.init(stringLiteral:)();
  ModifiedContent<>.accessibilityLabel(_:)();

  sub_10001D724(v8, &qword_100189D70, &qword_100123EB8);
  static AccessibilityTraits.isImage.getter();
  ModifiedContent<>.accessibilityRemoveTraits(_:)();
  (*(v2 + 8))(v4, v1);
  return sub_10001D724(v10, &qword_100189D70, &qword_100123EB8);
}

uint64_t sub_100047F1C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v5 = type metadata accessor for AccessibilityTraits();
  v21 = *(v5 - 8);
  v22 = v5;
  __chkstk_darwin(v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Image.ResizingMode();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100003768(&qword_10018B398, &qword_100125C40);
  v12 = __chkstk_darwin(v20);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v19 - v15;
  sub_1000482E8(a1, a2 & 1);
  Image.init(uiImage:)();
  (*(v9 + 104))(v11, enum case for Image.ResizingMode.stretch(_:), v8);
  v17 = Image.resizable(capInsets:resizingMode:)();

  (*(v9 + 8))(v11, v8);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v25[38] = v29;
  *&v25[22] = v28;
  *&v25[6] = v27;
  *(&v24[2] + 2) = *v25;
  v26 = 1;
  v24[0] = v17;
  v24[1] = 0;
  LOWORD(v24[2]) = 1;
  *(&v24[4] + 2) = *&v25[16];
  *(&v24[6] + 2) = *&v25[32];
  v24[8] = *(&v29 + 1);
  static String.wifiSignalBarsImage.getter();
  sub_100003768(&qword_1001890C0, &qword_1001225F0);
  sub_100010D1C();
  View.accessibilityIdentifier(_:)();

  memcpy(__dst, v24, 0x48uLL);
  sub_10001D724(__dst, &qword_1001890C0, &qword_1001225F0);
  LocalizedStringKey.init(stringLiteral:)();
  ModifiedContent<>.accessibilityLabel(_:)();

  sub_10001D724(v14, &qword_10018B398, &qword_100125C40);
  static AccessibilityTraits.isImage.getter();
  ModifiedContent<>.accessibilityRemoveTraits(_:)();
  (*(v21 + 8))(v7, v22);
  return sub_10001D724(v16, &qword_10018B398, &qword_100125C40);
}

void sub_1000482E8(uint64_t a1, char a2)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
  }

  sub_100061A74();

  WFScaleRSSI();
  v8 = WFSignalBarsFromScaledRSSI();
  v9 = [objc_opt_self() sharedImageCache];
  if (v9)
  {
    v10 = v9;
    if (v8 / 3.0 <= 3.0)
    {
      v11 = v8 / 3.0;
    }

    else
    {
      v11 = 1.0;
    }

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = sub_1000487AC(v11, v12, v13, v10);

    if (v14)
    {
      [v14 imageWithRenderingMode:2];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000484E4(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedImageCache];
  if (v4)
  {
    v5 = v4;
    v6 = sub_10004875C(a1, a2, v4);

    if (v6)
    {
      [v6 imageWithRenderingMode:2];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_100048590()
{
  result = qword_10018B390;
  if (!qword_10018B390)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10018B390);
  }

  return result;
}

uint64_t sub_1000485D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_10018B3B8, &qword_100125C60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100048644()
{
  result = qword_10018B3C8;
  if (!qword_10018B3C8)
  {
    sub_100004D48(&qword_10018B3A8, &qword_100125C50);
    sub_1000235EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B3C8);
  }

  return result;
}

unint64_t sub_1000486D0()
{
  result = qword_10018B3D0;
  if (!qword_10018B3D0)
  {
    sub_100004D48(&qword_10018B398, &qword_100125C40);
    sub_100010D1C();
    sub_1000233C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B3D0);
  }

  return result;
}

id sub_10004875C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [a3 imageNamed:v4];

  return v5;
}

id sub_1000487AC(double a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = String._bridgeToObjectiveC()();

  v7 = [a4 imageNamed:v6 variableValue:a1];

  return v7;
}

unint64_t sub_100048828()
{
  result = qword_10018B3E8;
  if (!qword_10018B3E8)
  {
    sub_100004D48(&qword_10018B3E0, &qword_100125CA8);
    sub_10000AAEC(&qword_1001895D0, &qword_1001895D8, &qword_10012F6F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B3E8);
  }

  return result;
}

uint64_t sub_100048938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 64);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100003768(&qword_10018B400, &unk_100125CC0);
    v9 = a1 + *(a3 + 40);

    return sub_10000E5F0(v9, a2, v8);
  }
}

uint64_t sub_1000489E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 64) = (a2 - 1);
  }

  else
  {
    v7 = sub_100003768(&qword_10018B400, &unk_100125CC0);
    v8 = v5 + *(a4 + 40);

    return sub_100003CE8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for FlowStepTextView(uint64_t a1)
{
  result = qword_10018B460;
  if (!qword_10018B460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100048AB8(uint64_t a1)
{
  sub_100048D58(319, &qword_100189460, type metadata accessor for FlowViewDataProvider, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_100048D58(319, &qword_10018B470, type metadata accessor for CGSize, &type metadata accessor for State);
    if (v2 <= 0x3F)
    {
      sub_100048D0C(319, &qword_100188F68, &type metadata for String);
      if (v3 <= 0x3F)
      {
        sub_100048C64(319);
        if (v4 <= 0x3F)
        {
          sub_100048CC8();
          if (v5 <= 0x3F)
          {
            sub_100048D0C(319, &qword_10018B490, &type metadata for Color);
            if (v6 <= 0x3F)
            {
              sub_100048D58(319, &unk_10018B498, &type metadata accessor for ConstellationContentParagraphStyle, &type metadata accessor for Optional);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_100048C64(uint64_t a1)
{
  if (!qword_10018B478)
  {
    sub_100004D48(&qword_10018B480, &qword_100125CE8);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10018B478);
    }
  }
}

unint64_t sub_100048CC8()
{
  result = qword_10018B488;
  if (!qword_10018B488)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10018B488);
  }

  return result;
}

void sub_100048D0C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100048D58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_100048DD8()
{
  v1 = type metadata accessor for EnvironmentValues();
  sub_100008780();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_10000C30C();
  v7 = v6 - v5;
  v8 = *v0;
  v9 = *(v0 + 8);

  if ((v9 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v7, v1);
    return v12;
  }

  return v8;
}

uint64_t sub_100048F04@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FlowStepTextView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  sub_10004903C(*(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), a1);
  sub_100049A64(v1, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_100049BF8(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  result = sub_100003768(&qword_10018B4E0, &qword_100125D40);
  v9 = (a1 + *(result + 36));
  *v9 = sub_100015898;
  v9[1] = 0;
  v9[2] = sub_100049C5C;
  v9[3] = v7;
  return result;
}

uint64_t sub_10004903C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v120 = a5;
  v128 = a6;
  v10 = sub_100003768(&qword_10018B4F0, &qword_100125D50);
  sub_10000ED84(v10);
  sub_10000ED78();
  __chkstk_darwin(v11);
  sub_10003DC84();
  v112 = v12;
  v13 = sub_100003768(&qword_10018B400, &unk_100125CC0);
  sub_10000ED84(v13);
  sub_10000ED78();
  __chkstk_darwin(v14);
  v16 = v111 - v15;
  v17 = type metadata accessor for ConstellationContentParagraphStyle();
  sub_100008780();
  v19 = v18;
  __chkstk_darwin(v20);
  sub_10000C30C();
  v23 = v22 - v21;
  v24 = sub_100003768(&qword_10018B4F8, &unk_100125D58);
  sub_10000ED84(v24);
  sub_10000ED78();
  __chkstk_darwin(v25);
  sub_10003DC84();
  v114 = v26;
  v27 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  sub_10000ED84(v27);
  sub_10000ED78();
  __chkstk_darwin(v28);
  sub_10003DC84();
  v118 = v29;
  type metadata accessor for ConstellationContentView();
  sub_100008780();
  v115 = v31;
  v116 = v30;
  __chkstk_darwin(v30);
  sub_10000C30C();
  v113 = v33 - v32;
  v124 = sub_100003768(&qword_10018B500, &qword_100125D68);
  sub_10000AF7C();
  v35 = __chkstk_darwin(v34);
  v37 = v111 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v117 = v111 - v38;
  v126 = sub_100003768(&qword_10018B508, &qword_100125D70);
  sub_10000AF7C();
  sub_10000ED78();
  __chkstk_darwin(v39);
  sub_10003DC84();
  v127 = v40;
  v121 = sub_100003768(&qword_10018B510, &qword_100125D78);
  sub_10000AF7C();
  sub_10000ED78();
  __chkstk_darwin(v41);
  sub_10003DC84();
  v122 = v42;
  v125 = sub_100003768(&qword_10018B518, &qword_100125D80);
  sub_10000AF7C();
  sub_10000ED78();
  __chkstk_darwin(v43);
  sub_10003DC84();
  v123 = v44;
  if (!a2)
  {
    goto LABEL_19;
  }

  v45 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v45 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v45)
  {
LABEL_19:
    if (a3)
    {
      v85 = sub_100109984(a3);
      if (v85)
      {
        if (v85[2])
        {
          v86 = v119;
          sub_100048DD8();
          v87 = sub_10008AB00();
          v111[1] = v88;
          v111[2] = v87;

          v89 = type metadata accessor for URL();
          sub_100003CE8(v118, 1, 1, v89);
          v90 = type metadata accessor for FlowStepTextView(0);
          sub_10000EC9C(v86 + *(v90 + 40), v16, &qword_10018B400, &unk_100125CC0);
          if (sub_10000E5F0(v16, 1, v17) == 1)
          {
            (*(v19 + 104))(v23, enum case for ConstellationContentParagraphStyle.newline(_:), v17);
            if (sub_10000E5F0(v16, 1, v17) != 1)
            {
              sub_10000ABCC(v16, &qword_10018B400, &unk_100125CC0);
            }
          }

          else
          {
            (*(v19 + 32))(v23, v16, v17);
          }

          v92 = type metadata accessor for Locale.Language();
          memset(v129, 0, sizeof(v129));
          v130 = 0;
          sub_100003CE8(v112, 1, 1, v92);
          defaultParagraphSpacing.getter();

          v93 = a4;
          v94 = v114;
          ConstellationContentAttributes.init(font:foregroundColor:accentColor:titleGradientStyle:textAlignment:paragraphSpacing:paragraphStyle:numberOfLines:lineBreakMode:symbolScale:useForegroundColorForSymbol:displayLinkStyle:typeSettingLanguage:supportsLinks:)();
          v95 = type metadata accessor for ConstellationContentAttributes();
          sub_100003CE8(v94, 0, 1, v95);
          v96 = *(v119 + 32);
          v131[0] = *(v119 + 16);
          *&v131[1] = v96;
          sub_100003768(&qword_10018B4E8, &qword_100125D48);
          State.wrappedValue.getter();
          v97 = v113;
          ConstellationContentView.init(rawContent:language:assetsBaseURL:assetFileInfoManager:attributes:size:maxWidth:textIsSelectable:delegate:)();
          v98 = static Alignment.leading.getter();
          LOBYTE(v109) = 1;
          sub_10004A138(v98, v99, v100, v101, v102, v103, v104, v105, v108, v109, 0, 1, v98, v99);
          (*(v115 + 32))(v37, v97, v116);
          memcpy(&v37[*(v124 + 36)], v131, 0x70uLL);
          v106 = v117;
          sub_100049F48(v37, v117);
          sub_10000EC9C(v106, v122, &qword_10018B500, &qword_100125D68);
          swift_storeEnumTagMultiPayload();
          sub_100003768(&qword_10018B530, &qword_100125D88);
          sub_100049D54();
          sub_100049E64();
          v107 = v123;
          _ConditionalContent<>.init(storage:)();
          sub_10004A16C();
          swift_storeEnumTagMultiPayload();
          sub_100049CC8();
          _ConditionalContent<>.init(storage:)();
          sub_10000ABCC(v107, &qword_10018B518, &qword_100125D80);
          v82 = v106;
          v83 = &qword_10018B500;
          v84 = &qword_100125D68;
          return sub_10000ABCC(v82, v83, v84);
        }
      }
    }

    swift_storeEnumTagMultiPayload();
    sub_100049CC8();
    return _ConditionalContent<>.init(storage:)();
  }

  *&v131[0] = a1;
  *(&v131[0] + 1) = a2;
  sub_10000AC24();

  v46 = Text.init<A>(_:)();
  v48 = v47;
  v50 = v49;
  v51 = a4;
  Font.init(_:)();
  v52 = Text.font(_:)();
  v54 = v53;
  v56 = v55;

  sub_10000AC78(v46, v48, v50 & 1);

  v57 = Text.foregroundColor(_:)();
  v59 = v58;
  v61 = v60;
  v63 = v62;
  sub_10000AC78(v52, v54, v56 & 1);

  v64 = static Alignment.leading.getter();
  LOBYTE(v110) = 1;
  LOBYTE(v109) = 1;
  sub_10004A138(v64, v65, v66, v67, v68, v69, v70, v71, v108, v109, 0, v110, v64, v65);
  v61 &= 1u;
  v132 = v61;
  v72 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v133 = 0;
  *&v131[0] = v57;
  *(&v131[0] + 1) = v59;
  LOBYTE(v131[1]) = v61;
  *(&v131[1] + 1) = v63;
  memcpy(&v131[2], __src, 0x70uLL);
  LOBYTE(v131[9]) = v72;
  *(&v131[9] + 1) = *v134;
  DWORD1(v131[9]) = *&v134[3];
  *(&v131[9] + 1) = v74;
  *&v131[10] = v76;
  *(&v131[10] + 1) = v78;
  *&v131[11] = v80;
  BYTE8(v131[11]) = 0;
  memcpy(v122, v131, 0xB9uLL);
  swift_storeEnumTagMultiPayload();
  sub_10000EC9C(v131, v129, &qword_10018B530, &qword_100125D88);
  sub_100003768(&qword_10018B530, &qword_100125D88);
  sub_100049D54();
  sub_100049E64();
  v81 = v123;
  _ConditionalContent<>.init(storage:)();
  sub_10004A16C();
  swift_storeEnumTagMultiPayload();
  sub_100049CC8();
  _ConditionalContent<>.init(storage:)();
  sub_10000ABCC(v131, &qword_10018B530, &qword_100125D88);
  v82 = v81;
  v83 = &qword_10018B518;
  v84 = &qword_100125D80;
  return sub_10000ABCC(v82, v83, v84);
}

uint64_t sub_100049A64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowStepTextView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100049AC8()
{
  v1 = (type metadata accessor for FlowStepTextView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[12];
  v6 = type metadata accessor for ConstellationContentParagraphStyle();
  if (!sub_10000E5F0(v0 + v3 + v5, 1, v6))
  {
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100049BF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowStepTextView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100049C5C(uint64_t *a1)
{
  v3 = type metadata accessor for FlowStepTextView(0);
  sub_10000ED84(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_1000499FC(a1, v5);
}

unint64_t sub_100049CC8()
{
  result = qword_10018B520;
  if (!qword_10018B520)
  {
    sub_100004D48(&qword_10018B518, &qword_100125D80);
    sub_100049D54();
    sub_100049E64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B520);
  }

  return result;
}

unint64_t sub_100049D54()
{
  result = qword_10018B528;
  if (!qword_10018B528)
  {
    sub_100004D48(&qword_10018B530, &qword_100125D88);
    sub_100049DE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B528);
  }

  return result;
}

unint64_t sub_100049DE0()
{
  result = qword_10018B538;
  if (!qword_10018B538)
  {
    sub_100004D48(&qword_10018B540, &qword_100125D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B538);
  }

  return result;
}

unint64_t sub_100049E64()
{
  result = qword_10018B548;
  if (!qword_10018B548)
  {
    sub_100004D48(&qword_10018B500, &qword_100125D68);
    sub_100049EF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B548);
  }

  return result;
}

unint64_t sub_100049EF0()
{
  result = qword_10018B550;
  if (!qword_10018B550)
  {
    type metadata accessor for ConstellationContentView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B550);
  }

  return result;
}

uint64_t sub_100049F48(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_10018B500, &qword_100125D68);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100049FBC()
{
  result = qword_10018B558;
  if (!qword_10018B558)
  {
    sub_100004D48(&qword_10018B4E0, &qword_100125D40);
    sub_10004A048();
    sub_10004A0D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B558);
  }

  return result;
}

unint64_t sub_10004A048()
{
  result = qword_10018B560;
  if (!qword_10018B560)
  {
    sub_100004D48(&qword_10018B568, &qword_100125D98);
    sub_100049CC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B560);
  }

  return result;
}

unint64_t sub_10004A0D4()
{
  result = qword_100189548;
  if (!qword_100189548)
  {
    sub_100004D48(&qword_100189550, &unk_100122B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189548);
  }

  return result;
}

void *sub_10004A138(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void x5_0, void x6_0, void a8, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{

  return _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
}

uint64_t sub_10004A16C()
{
  v5 = *(v0 + 144);

  return sub_10000EC9C(v3, v5, v1, v2);
}

uint64_t sub_10004A190(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 56))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10004A1E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_10004A270@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PlacardInfoItemType(0);
  __chkstk_darwin(v4);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  type metadata accessor for PlacardInfoItem(0);
  swift_storeEnumTagMultiPayload();
  v7 = *(v1 + 40);
  v8 = *(v2 + 48);
  sub_100006568(*(v2 + 40), v8);
  v9 = sub_1000EFDB8(v6, v7, v8);
  sub_10000B4E0(v2, v15);
  sub_100003768(&qword_10018B570, &qword_100125E78);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100125DA0;
  *(v10 + 32) = v9;
  sub_10000B4E0(v15, a1 + 40);
  type metadata accessor for FlowViewDataProvider(0);
  sub_10000B550();
  v11 = Environment.init<A>(_:)();
  LOBYTE(v6) = v12;
  result = sub_10001035C(v15);
  *a1 = v11;
  *(a1 + 8) = v6 & 1;
  strcpy((a1 + 16), "VPN_DETECTED");
  *(a1 + 29) = 0;
  *(a1 + 30) = -5120;
  *(a1 + 32) = v10;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  return result;
}

unint64_t sub_10004A3F0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100175FF0, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10004A444(char a1)
{
  result = 0x4379726574746162;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x6574737572547369;
      break;
    case 4:
      result = 0x7373615068747561;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10004A574@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004A3F0(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10004A5A4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10004A444(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10004A5EC@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10004A43C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004A614(uint64_t a1)
{
  v2 = sub_10004B298();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004A650(uint64_t a1)
{
  v2 = sub_10004B298();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10004A68C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100003768(&qword_10018B588, &qword_100125F38);
  sub_100008780();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v30 - v9;
  sub_100025734(a1, a1[3]);
  sub_10004B298();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_1000086BC(a1);
  }

  LOBYTE(v35) = 0;
  sub_10004B2EC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v11 = v38;
  v12 = v39;
  v50 = v40;
  sub_10004BC30(1);
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v48 = v12;
  v14 = sub_10004A990(v13);
  if (v14 == 13)
  {
    v15 = 0;
  }

  else
  {
    v15 = v14;
  }

  sub_10004BC30(2);
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v34 = v15;
  LOBYTE(v17) = BatteryDiagnosticsReport.PerformanceMitigation.init(rawValue:)(v16);
  if (v17 == 5)
  {
    v18 = 1;
  }

  else
  {
    v18 = v17;
  }

  sub_10004BC30(6);
  v33 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_10004BC30(3);
  v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  sub_10004BC30(4);
  v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v49 = 5;
  v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v31 &= 1u;
  v32 &= 1u;
  v20 = v19;
  v21 = v10;
  v23 = v22;
  (*(v7 + 8))(v21, v5);
  *&v35 = v11;
  v24 = v18;
  HIDWORD(v30) = v18;
  BYTE8(v35) = v48;
  v25 = v50;
  BYTE9(v35) = v50;
  v26 = v34;
  BYTE10(v35) = v34;
  BYTE11(v35) = v24;
  v27 = v33;
  *&v36 = v33;
  BYTE8(v36) = v32;
  BYTE9(v36) = v31;
  *&v37 = v20;
  *(&v37 + 1) = v23;
  sub_10004B340(&v35, &v38);
  sub_1000086BC(a1);
  v38 = v11;
  v39 = v48;
  v40 = v25;
  v41 = v26;
  v42 = BYTE4(v30);
  v43 = v27;
  v44 = v32;
  v45 = v31;
  v46 = v20;
  v47 = v23;
  result = sub_10004B378(&v38);
  v29 = v36;
  *a2 = v35;
  a2[1] = v29;
  a2[2] = v37;
  return result;
}

uint64_t sub_10004A990(uint64_t a1)
{
  if ((a1 + 1) < 0xD)
  {
    return a1 + 1;
  }

  else
  {
    return 13;
  }
}

SupportFlow::BatteryDiagnosticsReport::PerformanceMitigation_optional __swiftcall BatteryDiagnosticsReport.PerformanceMitigation.init(rawValue:)(Swift::Int rawValue)
{
  if ((rawValue + 1) < 5)
  {
    return (rawValue + 1);
  }

  else
  {
    return 5;
  }
}

BOOL sub_10004A9B8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1001760B8, v2);

  return v3 != 0;
}

double sub_10004AA1C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10004A68C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

BOOL sub_10004AA6C@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004A9B8(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10004AAA0@<X0>(void *a1@<X8>)
{
  result = sub_10004AA00();
  *a1 = 0xD000000000000016;
  a1[1] = v3;
  return result;
}

BOOL sub_10004AAF0@<W0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10004A9B8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004AB28(uint64_t a1)
{
  v2 = sub_10004B9F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004AB64(uint64_t a1)
{
  v2 = sub_10004B9F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10004ABA0(void *a1)
{
  v3 = sub_100003768(&qword_10018B5E8, &qword_1001262C8);
  sub_100008780();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - v7;
  v9 = sub_100025734(a1, a1[3]);
  sub_10004B9F4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v5 + 8))(v8, v3);
  }

  sub_1000086BC(a1);
  return v9;
}

void *sub_10004AD14@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10004ABA0(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_10004AD6C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004A990(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004AD98@<X0>(uint64_t *a1@<X8>)
{
  result = BatteryDiagnosticsReport.PerformanceMitigation.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

SupportFlow::BatteryDiagnosticsReport::PerformanceMitigation_optional sub_10004ADD4@<W0>(Swift::Int *a1@<X0>, SupportFlow::BatteryDiagnosticsReport::PerformanceMitigation_optional *a2@<X8>)
{
  result.value = BatteryDiagnosticsReport.PerformanceMitigation.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

id sub_10004AE10()
{
  sub_100003768(&qword_10018B578, &unk_100125EA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100121620;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v1;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = 0xD00000000000001CLL;
  *(inited + 56) = 0x8000000100136220;
  v2 = Dictionary.init(dictionaryLiteral:)();
  v3 = objc_allocWithZone(NSError);
  v4 = sub_10004BC48();
  return sub_10004B11C(v4, v5, -1001, v2);
}

id sub_10004AEF0(uint64_t a1)
{
  sub_100003768(&qword_10018B578, &unk_100125EA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100121620;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v2;
  _StringGuts.grow(_:)(42);

  sub_100003768(&qword_10018B580, &unk_100128EB0);
  v3._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v3);

  *(inited + 72) = &type metadata for String;
  *(inited + 48) = 0xD000000000000028;
  *(inited + 56) = 0x80000001001361F0;
  v4 = Dictionary.init(dictionaryLiteral:)();
  v5 = objc_allocWithZone(NSError);
  return sub_10004B11C(0xD000000000000017, 0x8000000100136190, -1002, v4);
}

id sub_10004B038()
{
  sub_100003768(&qword_10018B578, &unk_100125EA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100121620;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v1;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = 0xD00000000000003FLL;
  *(inited + 56) = 0x80000001001361B0;
  v2 = Dictionary.init(dictionaryLiteral:)();
  v3 = objc_allocWithZone(NSError);
  v4 = sub_10004BC48();
  return sub_10004B11C(v4, v5, 500, v2);
}

id sub_10004B11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8.super.isa];

  return v9;
}

uint64_t sub_10004B1D8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10004B22C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

unint64_t sub_10004B298()
{
  result = qword_10018B590;
  if (!qword_10018B590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B590);
  }

  return result;
}

unint64_t sub_10004B2EC()
{
  result = qword_10018B598;
  if (!qword_10018B598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B598);
  }

  return result;
}

_BYTE *sub_10004B3A8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10004B474);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_10004B4A8(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10004B574);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10004B5A8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_10004B630(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10004B6FCLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BatteryDiagnosticsReport.ServiceLevel(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10004B750(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

unint64_t sub_10004B7BC()
{
  result = qword_10018B5B0;
  if (!qword_10018B5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B5B0);
  }

  return result;
}

uint64_t sub_10004B840(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100004D48(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10004B898()
{
  result = qword_10018B5C8;
  if (!qword_10018B5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B5C8);
  }

  return result;
}

unint64_t sub_10004B8F0()
{
  result = qword_10018B5D0;
  if (!qword_10018B5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B5D0);
  }

  return result;
}

unint64_t sub_10004B948()
{
  result = qword_10018B5D8;
  if (!qword_10018B5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B5D8);
  }

  return result;
}

unint64_t sub_10004B9A0()
{
  result = qword_10018B5E0;
  if (!qword_10018B5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B5E0);
  }

  return result;
}

unint64_t sub_10004B9F4()
{
  result = qword_10018B5F0;
  if (!qword_10018B5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B5F0);
  }

  return result;
}

_BYTE *sub_10004BA48(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x10004BAE4);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10004BB1C()
{
  result = qword_10018B5F8;
  if (!qword_10018B5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B5F8);
  }

  return result;
}

unint64_t sub_10004BB74()
{
  result = qword_10018B600;
  if (!qword_10018B600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B600);
  }

  return result;
}

unint64_t sub_10004BBCC()
{
  result = qword_10018B608;
  if (!qword_10018B608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B608);
  }

  return result;
}

uint64_t sub_10004BC70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();

  return sub_10000E5F0(a1, a2, v4);
}

uint64_t sub_10004BCCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();

  return sub_100003CE8(a1, a2, a2, v4);
}

uint64_t type metadata accessor for SafariView(uint64_t a1)
{
  result = qword_10018B668;
  if (!qword_10018B668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004BD64(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_10004BE04()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004C15C();
  (*(v2 + 16))(v4, v0, v1);
  return sub_10004BEE0(v4);
}

id sub_10004BEE0(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  v6 = [v2 initWithURL:v4];

  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v6;
}

uint64_t sub_10004BFD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004C118(&qword_10018B6A8, &unk_10012641C);

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10004C054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004C118(&qword_10018B6A8, &unk_10012641C);

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10004C0D4(uint64_t a1)
{
  sub_10004C118(&qword_10018B6A8, &unk_10012641C);
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_10004C118(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SafariView(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10004C15C()
{
  result = qword_10018B6B0;
  if (!qword_10018B6B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10018B6B0);
  }

  return result;
}

uint64_t sub_10004C210(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VPNConfiguration(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v28 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (!v11 || a1 == a2)
  {
    return 1;
  }

  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v15 = *(v8 + 72);
  while (1)
  {
    result = sub_10004F378(v13, v10);
    if (!v11)
    {
      break;
    }

    sub_10004F378(v14, v7);
    if ((static UUID.== infix(_:_:)() & 1) == 0 || ((sub_10004F4BC(v4[5]), v19) ? (v19 = v17 == v18) : (v19 = 0), !v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((sub_10004F4BC(v4[6]), v19) ? (v22 = v20 == v21) : (v22 = 0), !v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)))
    {
LABEL_27:
      sub_10004F3DC(v7);
      sub_10004F3DC(v10);
      return 0;
    }

    v23 = v4[7];
    v24 = v10[v23];
    v25 = v7[v23];
    v26 = v25 == 4;
    if (v24 != 4)
    {
      if (v25 == 4)
      {
        goto LABEL_27;
      }

      v26 = v24 == v25;
    }

    sub_10004F3DC(v7);
    sub_10004F3DC(v10);
    v27 = !v26 || v11-- == 1;
    v14 += v15;
    v13 += v15;
    if (v27)
    {
      return v26;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10004C3FC(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_39;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 != result)
  {
    return 0;
  }

  if (!v5)
  {
    return 1;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a1 & 0x8000000000000000) != 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a2 & 0x8000000000000000) != 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
    return 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v11 = a2 & 0xC000000000000001;
    for (i = 4; ; ++i)
    {
      v13 = i - 4;
      v14 = i - 3;
      if (__OFADD__(i - 4, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        v5 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        if (v11)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v4 = *(a1 + 8 * i);

        if (v11)
        {
LABEL_21:
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_26;
        }
      }

      if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v15 = *(a2 + 8 * i);

LABEL_26:
      if (*(v4 + 16) == *(v15 + 16) && *(v4 + 24) == *(v15 + 24))
      {
      }

      else
      {
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v17 & 1) == 0)
        {
          return 0;
        }
      }

      if (v14 == v5)
      {
        return 1;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10004C5CC(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    if (a2 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v21 = 0;
      return v21 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    v23 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v22 = a2 & 0xFFFFFFFFFFFFFF8;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_31:
      v21 = 1;
      return v21 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = sub_100025778(0, &qword_10018B770, TPSCollectionSection_ptr);
    v24 = v3;
    v11 = v3 & 0xC000000000000001;
    v12 = a2 & 0xC000000000000001;
    v13 = 4;
    v3 = i;
    v14 = a2;
    while (1)
    {
      v15 = v13 - 4;
      v16 = v13 - 3;
      if (__OFADD__(v13 - 4, 1))
      {
        break;
      }

      if (v11)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v15 >= *(v23 + 16))
        {
          goto LABEL_34;
        }

        v17 = *(v24 + 8 * v13);
      }

      v18 = v17;
      if (v12)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v15 >= *(v22 + 16))
        {
          goto LABEL_35;
        }

        v19 = *(a2 + 8 * v13);
      }

      v20 = v19;
      v21 = static NSObject.== infix(_:_:)();

      if (v21)
      {
        ++v13;
        a2 = v14;
        if (v16 != v3)
        {
          continue;
        }
      }

      return v21 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}