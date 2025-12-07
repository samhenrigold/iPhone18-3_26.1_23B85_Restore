uint64_t sub_10037959C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v19 = a1;
  v34 = &opaque type descriptor for <<opaque return type of View.keyboardType(_:)>>;
  v48 = 0;
  v47 = 0;
  v30 = sub_10025C9B0(&qword_1006DA118, &unk_100505AB0);
  v27 = *(v30 - 8);
  v28 = v30 - 8;
  v11 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v30);
  v2 = &v10 - v11;
  v29 = &v10 - v11;
  v32 = sub_10025C9B0(&qword_1006DA100, &qword_100505EA0);
  v12 = (*(*(v32 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v32);
  v31 = &v10 - v12;
  v41 = sub_10025C9B0(&qword_1006DA148, &unk_100505AD0);
  v35 = *(v41 - 8);
  v36 = v41 - 8;
  v13 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v19);
  v39 = &v10 - v13;
  v14 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v40 = &v10 - v14;
  v48 = &v10 - v14;
  v47 = v5;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Fade In Duration", 0x10uLL, 1);
  v26 = LocalizedStringKey.init(stringLiteral:)();
  v20 = v6;
  v21 = v7;
  v22 = v8;
  v15 = *(v19 + 24);

  v25 = &type metadata for Double;
  AppStorage.projectedValue.getter();
  v16 = v46[3];
  v17 = v46[4];
  v18 = v46[5];

  v23 = v46;
  v46[0] = v16;
  v46[1] = v17;
  v46[2] = v18;
  v24 = *(v19 + 88);
  _objc_retain(v24);
  sub_100372D88(v26, v20, v21 & 1, v22, v23, v24, v25, v2);
  sub_1003729E0();
  View.multilineTextAlignment(_:)();
  (*(v27 + 8))(v29, v30);
  v33 = sub_100372938();
  View.keyboardType(_:)();
  sub_100372C54(v31);
  v44 = v32;
  v45 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1002EC85C(v39, v41, v40);
  v43 = *(v35 + 8);
  v42 = v35 + 8;
  v43(v39, v41);
  (*(v35 + 16))(v39, v40, v41);
  sub_1002EC85C(v39, v41, v37);
  v43(v39, v41);
  return (v43)(v40, v41);
}

uint64_t sub_100379A1C@<X0>(uint64_t a1@<X8>)
{
  v23 = 0u;
  v24 = 0u;
  HIBYTE(v7) = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Fade In Duration", 0x10uLL, 1);
  LocalizedStringKey.init(stringLiteral:)();
  v20 = 0;
  v21 = 0;
  v22 = v7 & 0x100;
  v16 = Text.init(_:tableName:bundle:comment:)();
  v17 = v1;
  v18 = v2;
  v19 = v3;
  v13[0] = v16;
  v13[1] = v1;
  v14 = v2 & 1;
  v15 = v3;
  sub_1002EC85C(v13, &type metadata for Text, &v23);
  sub_1002F03C0(v13);
  v5 = v23;
  v6 = v24;
  v8 = *(&v24 + 1);
  sub_1002EF238(v23, *(&v23 + 1), v24 & 1);

  v10 = v5;
  v11 = v6 & 1;
  v12 = v8;
  sub_1002EC85C(&v10, &type metadata for Text, a1);
  sub_1002F03C0(&v10);
  return sub_1002F03C0(&v23);
}

uint64_t sub_100379BB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v19 = a1;
  v34 = &opaque type descriptor for <<opaque return type of View.keyboardType(_:)>>;
  v48 = 0;
  v47 = 0;
  v30 = sub_10025C9B0(&qword_1006DA118, &unk_100505AB0);
  v27 = *(v30 - 8);
  v28 = v30 - 8;
  v11 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v30);
  v2 = &v10 - v11;
  v29 = &v10 - v11;
  v32 = sub_10025C9B0(&qword_1006DA100, &qword_100505EA0);
  v12 = (*(*(v32 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v32);
  v31 = &v10 - v12;
  v41 = sub_10025C9B0(&qword_1006DA148, &unk_100505AD0);
  v35 = *(v41 - 8);
  v36 = v41 - 8;
  v13 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v19);
  v39 = &v10 - v13;
  v14 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v40 = &v10 - v14;
  v48 = &v10 - v14;
  v47 = v5;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Fade Out Delay", 0xEuLL, 1);
  v26 = LocalizedStringKey.init(stringLiteral:)();
  v20 = v6;
  v21 = v7;
  v22 = v8;
  v15 = *(v19 + 32);

  v25 = &type metadata for Double;
  AppStorage.projectedValue.getter();
  v16 = v46[3];
  v17 = v46[4];
  v18 = v46[5];

  v23 = v46;
  v46[0] = v16;
  v46[1] = v17;
  v46[2] = v18;
  v24 = *(v19 + 88);
  _objc_retain(v24);
  sub_100372D88(v26, v20, v21 & 1, v22, v23, v24, v25, v2);
  sub_1003729E0();
  View.multilineTextAlignment(_:)();
  (*(v27 + 8))(v29, v30);
  v33 = sub_100372938();
  View.keyboardType(_:)();
  sub_100372C54(v31);
  v44 = v32;
  v45 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1002EC85C(v39, v41, v40);
  v43 = *(v35 + 8);
  v42 = v35 + 8;
  v43(v39, v41);
  (*(v35 + 16))(v39, v40, v41);
  sub_1002EC85C(v39, v41, v37);
  v43(v39, v41);
  return (v43)(v40, v41);
}

uint64_t sub_10037A034@<X0>(uint64_t a1@<X8>)
{
  v23 = 0u;
  v24 = 0u;
  HIBYTE(v7) = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Fade Out Delay", 0xEuLL, 1);
  LocalizedStringKey.init(stringLiteral:)();
  v20 = 0;
  v21 = 0;
  v22 = v7 & 0x100;
  v16 = Text.init(_:tableName:bundle:comment:)();
  v17 = v1;
  v18 = v2;
  v19 = v3;
  v13[0] = v16;
  v13[1] = v1;
  v14 = v2 & 1;
  v15 = v3;
  sub_1002EC85C(v13, &type metadata for Text, &v23);
  sub_1002F03C0(v13);
  v5 = v23;
  v6 = v24;
  v8 = *(&v24 + 1);
  sub_1002EF238(v23, *(&v23 + 1), v24 & 1);

  v10 = v5;
  v11 = v6 & 1;
  v12 = v8;
  sub_1002EC85C(&v10, &type metadata for Text, a1);
  sub_1002F03C0(&v10);
  return sub_1002F03C0(&v23);
}

uint64_t sub_10037A1CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v19 = a1;
  v34 = &opaque type descriptor for <<opaque return type of View.keyboardType(_:)>>;
  v48 = 0;
  v47 = 0;
  v30 = sub_10025C9B0(&qword_1006DA118, &unk_100505AB0);
  v27 = *(v30 - 8);
  v28 = v30 - 8;
  v11 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v30);
  v2 = &v10 - v11;
  v29 = &v10 - v11;
  v32 = sub_10025C9B0(&qword_1006DA100, &qword_100505EA0);
  v12 = (*(*(v32 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v32);
  v31 = &v10 - v12;
  v41 = sub_10025C9B0(&qword_1006DA148, &unk_100505AD0);
  v35 = *(v41 - 8);
  v36 = v41 - 8;
  v13 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v19);
  v39 = &v10 - v13;
  v14 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v40 = &v10 - v14;
  v48 = &v10 - v14;
  v47 = v5;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Fade Out Duration", 0x11uLL, 1);
  v26 = LocalizedStringKey.init(stringLiteral:)();
  v20 = v6;
  v21 = v7;
  v22 = v8;
  v15 = *(v19 + 40);

  v25 = &type metadata for Double;
  AppStorage.projectedValue.getter();
  v16 = v46[3];
  v17 = v46[4];
  v18 = v46[5];

  v23 = v46;
  v46[0] = v16;
  v46[1] = v17;
  v46[2] = v18;
  v24 = *(v19 + 88);
  _objc_retain(v24);
  sub_100372D88(v26, v20, v21 & 1, v22, v23, v24, v25, v2);
  sub_1003729E0();
  View.multilineTextAlignment(_:)();
  (*(v27 + 8))(v29, v30);
  v33 = sub_100372938();
  View.keyboardType(_:)();
  sub_100372C54(v31);
  v44 = v32;
  v45 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1002EC85C(v39, v41, v40);
  v43 = *(v35 + 8);
  v42 = v35 + 8;
  v43(v39, v41);
  (*(v35 + 16))(v39, v40, v41);
  sub_1002EC85C(v39, v41, v37);
  v43(v39, v41);
  return (v43)(v40, v41);
}

uint64_t sub_10037A64C@<X0>(uint64_t a1@<X8>)
{
  v23 = 0u;
  v24 = 0u;
  HIBYTE(v7) = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Fade Out Duration", 0x11uLL, 1);
  LocalizedStringKey.init(stringLiteral:)();
  v20 = 0;
  v21 = 0;
  v22 = v7 & 0x100;
  v16 = Text.init(_:tableName:bundle:comment:)();
  v17 = v1;
  v18 = v2;
  v19 = v3;
  v13[0] = v16;
  v13[1] = v1;
  v14 = v2 & 1;
  v15 = v3;
  sub_1002EC85C(v13, &type metadata for Text, &v23);
  sub_1002F03C0(v13);
  v5 = v23;
  v6 = v24;
  v8 = *(&v24 + 1);
  sub_1002EF238(v23, *(&v23 + 1), v24 & 1);

  v10 = v5;
  v11 = v6 & 1;
  v12 = v8;
  sub_1002EC85C(&v10, &type metadata for Text, a1);
  sub_1002F03C0(&v10);
  return sub_1002F03C0(&v23);
}

uint64_t sub_10037A7E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v18 = a1;
  v31 = sub_10037CDC4;
  v17 = sub_10037CE80;
  v38 = 0;
  v37 = 0;
  v19 = sub_10025C9B0(&qword_1006DA278, &qword_100505EA8);
  v20 = *(v19 - 8);
  v21 = v19 - 8;
  v22 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v18);
  v23 = v9 - v22;
  v24 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v2);
  v25 = v9 - v24;
  v26 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v4);
  v27 = v9 - v26;
  v38 = v9 - v26;
  v37 = v6;
  v39 = *(v6 + 96);
  sub_1002A730C(&v39, &v36);
  v35 = v39;
  KeyPath = swift_getKeyPath();

  v29 = sub_10025C9B0(&qword_1006DA290, &unk_100505ED8);
  v7 = sub_10037CDF8();
  v32 = sub_10025E9D8(v31, KeyPath, v29, &type metadata for Int, &type metadata for Never, v7, &protocol witness table for Never, v30);
  v9[0] = v32;

  sub_100264880(&v35);
  v12 = &v34;
  v34 = v9[0];
  v9[1] = swift_getKeyPath();
  sub_100375D30(v18, v33);
  v10 = swift_allocObject();
  memcpy((v10 + 16), v18, 0x68uLL);
  v11 = sub_10025C9B0(&qword_1006DA2A0, &qword_100505F00);
  sub_10037CE88();
  ForEach<>.init(_:id:content:)();
  v13 = sub_10037CCA0();
  sub_1002EC85C(v25, v19, v27);
  v15 = *(v20 + 8);
  v14 = v20 + 8;
  v15(v25, v19);
  (*(v20 + 16))(v23, v27, v19);
  sub_1002EC85C(v23, v19, v16);
  v15(v23, v19);
  return (v15)(v27, v19);
}

uint64_t sub_10037AC78(uint64_t *a1, uint64_t a2)
{

  swift_getAtKeyPath();
}

uint64_t sub_10037ACD8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = 0;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v27 = *a1;
  v26 = a2;
  v22 = sub_10037AE50();
  v23 = v3;
  sub_1002686CC();
  v18 = Text.init<A>(_:)();
  v19 = v4;
  v20 = v5;
  v21 = v6;
  v15[0] = v18;
  v15[1] = v4;
  v16 = v5 & 1;
  v17 = v6;
  sub_1002EC85C(v15, &type metadata for Text, &v24);
  sub_1002F03C0(v15);
  v8 = v24;
  v9 = v25;
  v10 = *(&v25 + 1);
  sub_1002EF238(v24, *(&v24 + 1), v25 & 1);

  v12 = v8;
  v13 = v9 & 1;
  v14 = v10;
  sub_1002EC85C(&v12, &type metadata for Text, a3);
  sub_1002F03C0(&v12);
  return sub_1002F03C0(&v24);
}

uint64_t sub_10037AE50()
{
  sub_100261D9C();
  if (v1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  }

  switch(v0)
  {
    case 0:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("easeInOut", 9uLL, 1)._countAndFlagsBits;
    case 1:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("easeIn", 6uLL, 1)._countAndFlagsBits;
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("easeOut", 7uLL, 1)._countAndFlagsBits;
    case 3:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("linear", 6uLL, 1)._countAndFlagsBits;
    default:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unsupported", 0xBuLL, 1)._countAndFlagsBits;
  }
}

uint64_t sub_10037AFD4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v18 = a1;
  v31 = sub_10037CDC4;
  v17 = sub_10037CE80;
  v38 = 0;
  v37 = 0;
  v19 = sub_10025C9B0(&qword_1006DA278, &qword_100505EA8);
  v20 = *(v19 - 8);
  v21 = v19 - 8;
  v22 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v18);
  v23 = v9 - v22;
  v24 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v2);
  v25 = v9 - v24;
  v26 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v4);
  v27 = v9 - v26;
  v38 = v9 - v26;
  v37 = v6;
  v39 = *(v6 + 96);
  sub_1002A730C(&v39, &v36);
  v35 = v39;
  KeyPath = swift_getKeyPath();

  v29 = sub_10025C9B0(&qword_1006DA290, &unk_100505ED8);
  v7 = sub_10037CDF8();
  v32 = sub_10025E9D8(v31, KeyPath, v29, &type metadata for Int, &type metadata for Never, v7, &protocol witness table for Never, v30);
  v9[0] = v32;

  sub_100264880(&v35);
  v12 = &v34;
  v34 = v9[0];
  v9[1] = swift_getKeyPath();
  sub_100375D30(v18, v33);
  v10 = swift_allocObject();
  memcpy((v10 + 16), v18, 0x68uLL);
  v11 = sub_10025C9B0(&qword_1006DA2A0, &qword_100505F00);
  sub_10037CE88();
  ForEach<>.init(_:id:content:)();
  v13 = sub_10037CCA0();
  sub_1002EC85C(v25, v19, v27);
  v15 = *(v20 + 8);
  v14 = v20 + 8;
  v15(v25, v19);
  (*(v20 + 16))(v23, v27, v19);
  sub_1002EC85C(v23, v19, v16);
  v15(v23, v19);
  return (v15)(v27, v19);
}

uint64_t sub_10037B438@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v41 = 0;
  v40 = sub_10037B964;
  v23 = sub_10037B990;
  v55 = 0;
  v54 = 0;
  v1 = sub_10025C9B0(&qword_1006DA140, &qword_100505AC8);
  v24 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v39 = &v13[-v24];
  v46 = sub_10025C9B0(&qword_1006DA128, &qword_100505AC0);
  v44 = *(v46 - 8);
  v45 = v46 - 8;
  v25 = (v44[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v46);
  v26 = &v13[-v25];
  v27 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v13[-v25]);
  v28 = &v13[-v27];
  v29 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v13[-v27]);
  v49 = &v13[-v29];
  v30 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v13[-v29]);
  v42 = &v13[-v30];
  v55 = &v13[-v30];
  v31 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Reset Default Settings", 0x16uLL, 1);
  v35 = LocalizedStringKey.init(stringLiteral:)();
  v36 = v5;
  v37 = v6;
  v38 = v7;
  static ButtonRole.destructive.getter();
  v32 = type metadata accessor for ButtonRole();
  v8 = *(v32 - 8);
  v33 = *(v8 + 56);
  v34 = v8 + 56;
  v33(v39, 0, v31);
  Button<>.init(_:role:action:)();
  v43 = sub_100372B14();
  sub_1002EC85C(v49, v46, v42);
  v47 = v44[1];
  v48 = v44 + 1;
  v47(v49, v46);
  v54 = v49;
  v14 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Kill Mail", 9uLL, 1);
  v15 = LocalizedStringKey.init(stringLiteral:)();
  v16 = v9;
  v17 = v10;
  v18 = v11;
  static ButtonRole.destructive.getter();
  (v33)(v39, 0, v14, v32);
  Button<>.init(_:role:action:)();
  sub_1002EC85C(v28, v46, v49);
  v47(v28, v46);
  v20 = v44[2];
  v19 = v44 + 2;
  v20(v28, v42, v46);
  v21 = v53;
  v53[0] = v28;
  v20(v26, v49, v46);
  v53[1] = v26;
  v52[0] = v46;
  v52[1] = v46;
  v50 = v43;
  v51 = v43;
  sub_1003A33CC(v21, 2uLL, v52, v22);
  v47(v26, v46);
  v47(v28, v46);
  v47(v49, v46);
  return (v47)(v42, v46);
}

void sub_10037B990()
{
  v0 = [objc_opt_self() sharedApplication];
  [v0 terminateWithSuccess];
  _objc_release(v0);
}

uint64_t sub_10037BA34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a2;
  v8 = a1;
  v9 = sub_10037BF54;
  v21 = 0;
  v20 = 0;
  v14 = sub_10025C9B0(&qword_1006DA188, &qword_100505AF8);
  v6 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v8);
  v16 = &v6 - v6;
  v7 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v2);
  v17 = &v6 - v7;
  v21 = &v6 - v7;
  v20 = v4;
  v12 = static HorizontalAlignment.leading.getter();
  v10 = &v18;
  v19 = v8;
  v11 = sub_10025C9B0(&qword_1006DA190, &qword_100505B00);
  sub_10037BF5C();
  VStack.init(alignment:spacing:content:)();
  v15 = sub_10037BFE4();
  sub_1002EC85C(v16, v14, v17);
  sub_10037C06C(v16);
  sub_10037C154(v17, v16);
  sub_1002EC85C(v16, v14, v13);
  sub_10037C06C(v16);
  return sub_10037C06C(v17);
}

uint64_t sub_10037BBCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v13 = a1;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v7 = 0;
  v25 = type metadata accessor for LabeledContentStyleConfiguration.Content();
  v16 = *(v25 - 8);
  v17 = v25 - 8;
  v8 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(0);
  v22 = &v7 - v8;
  v9 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v24 = &v7 - v9;
  v38 = &v7 - v9;
  v29 = type metadata accessor for LabeledContentStyleConfiguration.Label();
  v14 = *(v29 - 8);
  v15 = v29 - 8;
  v11 = *(v14 + 64);
  v10 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v29);
  v23 = &v7 - v10;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v28 = &v7 - v12;
  v37 = &v7 - v12;
  v36 = a1;
  LabeledContentStyleConfiguration.label.getter();
  v18 = sub_10037C688();
  sub_1002EC85C(v23, v29, v28);
  v31 = *(v14 + 8);
  v30 = v14 + 8;
  v31(v23, v29);
  LabeledContentStyleConfiguration.content.getter();
  v19 = sub_10037C708();
  sub_1002EC85C(v22, v25, v24);
  v27 = *(v16 + 8);
  v26 = v16 + 8;
  v27(v22, v25);
  (*(v14 + 16))(v23, v28, v29);
  v21 = v35;
  v35[0] = v23;
  (*(v16 + 16))(v22, v24, v25);
  v35[1] = v22;
  v34[0] = v29;
  v34[1] = v25;
  v32 = v18;
  v33 = v19;
  sub_1003A33CC(v21, 2uLL, v34, v20);
  v27(v22, v25);
  v31(v23, v29);
  v27(v24, v25);
  return (v31)(v28, v29);
}

unint64_t sub_10037BF5C()
{
  v2 = qword_1006DA198;
  if (!qword_1006DA198)
  {
    sub_10025CAA4(&qword_1006DA190, &qword_100505B00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA198);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10037BFE4()
{
  v2 = qword_1006DA1A0;
  if (!qword_1006DA1A0)
  {
    sub_10025CAA4(&qword_1006DA188, &qword_100505AF8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA1A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10037C06C(uint64_t a1)
{
  v4 = *(sub_10025C9B0(&qword_1006DA1A8, &qword_100505B08) + 44);
  v1 = type metadata accessor for LabeledContentStyleConfiguration.Label();
  (*(*(v1 - 8) + 8))();
  v5 = *(sub_10025C9B0(&qword_1006DA1B0, &qword_100505B10) + 48);
  v2 = type metadata accessor for LabeledContentStyleConfiguration.Content();
  (*(*(v2 - 8) + 8))(a1 + v4 + v5);
  return a1;
}

uint64_t sub_10037C154(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v5 = *(sub_10025C9B0(&qword_1006DA1A8, &qword_100505B08) + 44);
  v2 = type metadata accessor for LabeledContentStyleConfiguration.Label();
  (*(*(v2 - 8) + 16))();
  v7 = *(sub_10025C9B0(&qword_1006DA1B0, &qword_100505B10) + 48);
  v3 = type metadata accessor for LabeledContentStyleConfiguration.Content();
  (*(*(v3 - 8) + 16))(a2 + v5 + v7, a1 + v5 + v7);
  return a2;
}

uint64_t sub_10037C2EC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10037C404(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
    *(result + 96) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_10037C688()
{
  v2 = qword_1006DA1E0;
  if (!qword_1006DA1E0)
  {
    type metadata accessor for LabeledContentStyleConfiguration.Label();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA1E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10037C708()
{
  v2 = qword_1006DA1E8;
  if (!qword_1006DA1E8)
  {
    type metadata accessor for LabeledContentStyleConfiguration.Content();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA1E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10037C790()
{
  v2 = qword_1006DA218;
  if (!qword_1006DA218)
  {
    sub_10025CAA4(&qword_1006DA210, &qword_100505E78);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA218);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10037C818()
{
  v2 = qword_1006DA220;
  if (!qword_1006DA220)
  {
    sub_10025CAA4(&qword_1006DA208, &qword_100505E70);
    sub_10037C790();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA220);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10037C8CC()
{
  v2 = qword_1006DA230;
  if (!qword_1006DA230)
  {
    sub_10025CAA4(&qword_1006DA228, &qword_100505E80);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA230);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10037C954()
{
  v2 = qword_1006DA238;
  if (!qword_1006DA238)
  {
    sub_10025CAA4(&qword_1006DA200, &qword_100505E68);
    sub_10037C8CC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA238);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10037CA0C()
{
  v2 = qword_1006DA248;
  if (!qword_1006DA248)
  {
    sub_10025CAA4(&qword_1006DA240, &qword_100505E88);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA248);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10037CA94()
{
  v2 = qword_1006DA250;
  if (!qword_1006DA250)
  {
    sub_10025CAA4(&qword_1006DA1F8, &qword_100505E60);
    sub_10037CA0C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA250);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10037CB44()
{
  v2 = qword_1006DA260;
  if (!qword_1006DA260)
  {
    sub_10025CAA4(&qword_1006DA258, &qword_100505E90);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA260);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10037CBCC()
{
  v2 = qword_1006DA268;
  if (!qword_1006DA268)
  {
    sub_10025CAA4(&qword_1006DA1F0, &qword_100505E58);
    sub_10037CB44();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA268);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10037CCA0()
{
  v2 = qword_1006DA280;
  if (!qword_1006DA280)
  {
    sub_10025CAA4(&qword_1006DA278, &qword_100505EA8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA280);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10037CD34()
{
  v2 = qword_1006DA288;
  if (!qword_1006DA288)
  {
    sub_10025CAA4(&qword_1006DA270, &qword_100505E98);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA288);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10037CDF8()
{
  v2 = qword_1006DA298;
  if (!qword_1006DA298)
  {
    sub_10025CAA4(&qword_1006DA290, &unk_100505ED8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA298);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10037CE88()
{
  v2 = qword_1006DA2A8;
  if (!qword_1006DA2A8)
  {
    sub_10025CAA4(&qword_1006DA2A0, &qword_100505F00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA2A8);
    return WitnessTable;
  }

  return v2;
}

char *sub_10037CF10(char *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;

  *a2 = v5;
  v6 = *(a1 + 1);

  *(a2 + 1) = v6;
  (*(*(a3 - 8) + 16))(&a2[*(a4 + 32)], &a1[*(a4 + 32)]);
  return a2;
}

char *sub_10037CFBC(char *a1, uint64_t a2, uint64_t a3)
{

  (*(*(a2 - 8) + 8))(&a1[*(a3 + 32)]);
  return a1;
}

void *sub_10037D05C(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v91 = &v175;
  v92 = v2;
  v167 = v1;
  v168 = v3;
  v169 = v4;
  v119 = "To recipients of the email";
  v122 = "Carbon copy recipients of the email";
  v124 = "Blind carbon copy recipients of the email";
  v126 = "Subject of the email";
  v128 = "Body of the email";
  v130 = "Sender of the email";
  v133 = "Recipients to reply to";
  v136 = "Date on which the email was sent";
  v139 = "Date on which the email was received";
  v141 = "Is the email read";
  v145 = "Is the email junk";
  v148 = "Attributes of the email";
  v150 = "Account associated with the email";
  v153 = "Mailbox associated with the email";
  v158 = "Attachments of the email";
  v249 = 0;
  v248 = 0;
  v160 = 0;
  memset(v247, 0, sizeof(v247));
  v246 = 0;
  v244 = 0;
  v245 = 0;
  v179 = 0;
  v172 = 0;
  v170 = 0;
  v171 = 0;
  v5 = sub_10025C9B0(&unk_1006DA2B0, &qword_100505F08);
  v93 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v94 = &v34 - v93;
  v6 = sub_10025C9B0(&qword_1006D9B50, &unk_1005044F8);
  v95 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v96 = &v34 - v95;
  v7 = sub_10025C9B0(&qword_1006D8740, &unk_100501CB0);
  v97 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v98 = &v34 - v97;
  v99 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v34 - v97);
  v100 = &v34 - v99;
  v116 = 0;
  v101 = type metadata accessor for Date();
  v102 = *(v101 - 8);
  v103 = v101 - 8;
  v104 = (*(v102 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = __chkstk_darwin(v116);
  v105 = &v34 - v104;
  v249 = &v34 - v104;
  v106 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = __chkstk_darwin(v9);
  v107 = &v34 - v106;
  v108 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v109 = &v34 - v108;
  v248 = &v34 - v108;
  v13 = type metadata accessor for AttributeContainer();
  v110 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v111 = &v34 - v110;
  v112 = (*(*(sub_10025C9B0(&unk_1006D7380, &qword_100500790) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v116);
  v113 = &v34 - v112;
  v114 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v116);
  v165 = &v34 - v114;
  v115 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v116);
  v164 = &v34 - v115;
  v117 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v116);
  v162 = &v34 - v117;
  v118 = (*(*(type metadata accessor for LocalizedStringResource() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = __chkstk_darwin(v167);
  v166 = &v34 - v118;
  v246 = v14;
  v244 = v15;
  v245 = v16;
  v132 = sub_10025C9B0(&unk_1006DA2C0, &qword_100505F10);
  v121 = 2;
  v161 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("To", 2uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v156 = "AppIntents";
  v157 = 10;
  v120 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v161 & 1);
  sub_100015CC0();
  sub_10025D410(v165);
  v240 = v119;
  v241 = 26;
  v159 = 2;
  v242 = 2;
  v243 = v160 & 1;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v135 = sub_1002B9E5C();
  v247[0] = EntityProperty<>.init(title:)();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Cc", v121, v161 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v123 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v156, v157, v161 & 1);
  sub_100015CC0();
  sub_10025D410(v165);
  v236 = v122;
  v237 = 35;
  v238 = v159;
  v239 = v160 & 1 & v161;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v247[1] = EntityProperty<>.init(title:)();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Bcc", 3uLL, v161 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v125 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v156, v157, v161 & 1);
  sub_100015CC0();
  sub_10025D410(v165);
  v232 = v124;
  v233 = 41;
  v234 = v159;
  v235 = v160 & 1 & v161;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v247[2] = EntityProperty<>.init(title:)();
  sub_10025C9B0(&unk_1006DA2D0, &qword_1005007A0);
  v152 = 7;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Subject", 7uLL, v161 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v127 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v156, v157, v161 & 1);
  sub_100015CC0();
  sub_10025D410(v165);
  v228 = v126;
  v229 = 20;
  v230 = v159;
  v231 = v160 & 1 & v161;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v247[3] = EntityProperty<>.init(title:)();
  sub_10025C9B0(&qword_1006D7F40, &qword_1005007A8);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Body", 4uLL, v161 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v129 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v156, v157, v161 & 1);
  sub_100015CC0();
  sub_10025D410(v165);
  v224 = v128;
  v146 = 17;
  v225 = 17;
  v226 = v159;
  v227 = v160 & 1 & v161;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v247[4] = EntityProperty<>.init(title:)();
  sub_10025C9B0(&qword_1006DA2E0, &qword_100506D20);
  v144 = 6;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Sender", 6uLL, v161 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v131 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v156, v157, v161 & 1);
  sub_100015CC0();
  sub_10025D410(v165);
  v220 = v130;
  v221 = 19;
  v222 = v159;
  v223 = v160 & 1 & v161;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v247[5] = EntityProperty<>.init(title:)();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ReplyTo", v152, v161 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v134 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v156, v157, v161 & 1);
  sub_100015CC0();
  sub_10025D410(v165);
  v216 = v133;
  v217 = 22;
  v218 = v159;
  v219 = v160 & 1 & v161;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v247[6] = EntityProperty<>.init(title:)();
  v138 = sub_10025C9B0(&qword_1006DA2E8, &unk_1005063E0);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DateSent", 8uLL, v161 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v137 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v156, v157, v161 & 1);
  sub_100015CC0();
  sub_10025D410(v165);
  v212 = v136;
  v213 = 32;
  v214 = v159;
  v215 = v160 & 1 & v161;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v247[7] = EntityProperty<>.init(title:)();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DateReceived", 0xCuLL, v161 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v140 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v156, v157, v161 & 1);
  sub_100015CC0();
  sub_10025D410(v165);
  v208 = v139;
  v209 = 36;
  v210 = v159;
  v211 = v160 & 1 & v161;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v247[8] = EntityProperty<>.init(title:)();
  v143 = sub_10025C9B0(&qword_1006DA2F0, &qword_100505F18);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("IsRead", v144, v161 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v142 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v156, v157, v161 & 1);
  sub_100015CC0();
  sub_10025D410(v165);
  v204 = v141;
  v205 = v146;
  v206 = v159;
  v207 = v160 & 1 & v161;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v247[9] = EntityProperty<>.init(title:)();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("IsJunk", v144, v161 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v147 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v156, v157, v161 & 1);
  sub_100015CC0();
  sub_10025D410(v165);
  v200 = v145;
  v201 = v146;
  v202 = v159;
  v203 = v160 & 1 & v161;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v247[10] = EntityProperty<>.init(title:)();
  sub_10025C9B0(&qword_1006DA2F8, &qword_100505F20);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Attributes", v157, v161 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v149 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v156, v157, v161 & 1);
  sub_100015CC0();
  sub_10025D410(v165);
  v196 = v148;
  v197 = 23;
  v198 = v159;
  v199 = v160 & 1 & v161;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_10037EC78();
  v247[11] = EntityProperty<>.init(title:)();
  sub_10025C9B0(&qword_1006DA308, &qword_100505F28);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Account", v152, v161 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v151 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v156, v157, v161 & 1);
  sub_100015CC0();
  sub_10025D410(v165);
  v192 = v150;
  v154 = 33;
  v193 = 33;
  v194 = v159;
  v195 = v160 & 1 & v161;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_10034C204();
  v247[12] = EntityProperty<>.init(title:)();
  sub_10025C9B0(&qword_1006DA318, &qword_100505F30);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Mailbox", v152, v161 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v155 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v156, v157, v161 & 1);
  sub_100015CC0();
  sub_10025D410(v165);
  v188 = v153;
  v189 = v154;
  v190 = v159;
  v191 = v160 & 1 & v161;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_100359394();
  v247[13] = EntityProperty<>.init(title:)();
  sub_10025C9B0(&qword_1006DA328, &unk_100505F38);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Attachments", 0xBuLL, v161 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v163 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v156, v157, v161 & 1);
  sub_100015CC0();
  sub_10025D410(v165);
  v184 = v158;
  v185 = 24;
  v186 = v159;
  v187 = v160 & 1 & v161;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v247[14] = EntityProperty<>.init(title:)();

  v180 = v168;
  v181 = v169;
  _objc_retain(v167);
  if (v181)
  {
    v182 = v180;
    v183 = v181;
  }

  else
  {
    v182 = static String.encodeMessageID(using:)();
    v183 = v17;
    if (v181)
    {
      sub_100268744(&v180);
    }
  }

  _objc_release(v167);
  v86 = v247;
  v247[15] = v182;
  v247[16] = v183;
  v89 = [v167 attributeSet];
  v179 = v89;
  v84 = __dst;
  v87 = 136;
  memcpy(__dst, v86, sizeof(__dst));
  v18 = sub_1002B5A7C();
  sub_10037FD38(v18);
  v85 = v263;
  memcpy(v263, v86, v87);
  v19 = sub_1002B5C98();
  sub_10037FE9C(v19);
  v88 = v262;
  memcpy(v262, v86, v87);
  v20 = sub_1002B5D64();
  sub_1002CCA28(v20);
  v90 = [v89 subject];
  if (v90)
  {
    v83 = v90;
    v78 = v90;
    v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v80 = v21;
    _objc_release(v78);
    v81 = v79;
    v82 = v80;
  }

  else
  {
    v81 = 0;
    v82 = 0;
  }

  v76 = v82;
  v75 = v81;
  memcpy(v261, v247, sizeof(v261));
  sub_100380098(v81, v82);
  v77 = [v89 textContent];
  if (v77)
  {
    v74 = v77;
    v69 = v77;
    v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v71 = v22;
    _objc_release(v69);
    v72 = v70;
    v73 = v71;
  }

  else
  {
    v72 = 0;
    v73 = 0;
  }

  v175 = v72;
  v176 = v73;
  _objc_retain(v89);
  if (v176)
  {
    *(v91 + 1) = *v91;
  }

  else
  {
    v68 = [v89 contentSnippet];
    if (v68)
    {
      v67 = v68;
      v62 = v68;
      v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = v23;
      _objc_release(v62);
      v65 = v63;
      v66 = v64;
    }

    else
    {
      v65 = 0;
      v66 = 0;
    }

    v177 = v65;
    v178 = v66;
    if (v176)
    {
      sub_100268744(&v175);
    }
  }

  _objc_release(v89);
  v60 = v177;
  v61 = v178;
  if (v178)
  {
    v58 = v60;
    v59 = v61;
    v57 = v61;
    v56 = v60;
    v170 = v60;
    v171 = v61;
    memcpy(v260, v247, sizeof(v260));
    sub_10037ECF8();
    AttributedString.init(_:attributes:)();
    v24 = type metadata accessor for AttributedString();
    (*(*(v24 - 8) + 56))(v113, 0, 1);
    sub_1003801B8(v113);
  }

  v53 = v247;
  v52 = v259;
  v54 = 136;
  memcpy(v259, v247, sizeof(v259));
  v25 = sub_1002B5E30();
  sub_100380328(v25, v26, v27, v28);
  memcpy(&v258, v53, v54);
  v29 = _allocateUninitializedArray<A>(_:)();
  sub_10038048C(v29);
  v55 = [v89 contentCreationDate];
  if (v55)
  {
    v51 = v55;
    v50 = v55;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v102 + 32))(v100, v107, v101);
    (*(v102 + 56))(v100, 0, 1, v101);
    _objc_release(v50);
  }

  else
  {
    (*(v102 + 56))(v100, 1, 1, v101);
  }

  v48 = *(v102 + 48);
  v49 = v102 + 48;
  if (v48(v100, 1, v101) == 1)
  {
    sub_1002A70C0(v100);
  }

  else
  {
    (*(v102 + 32))(v109, v100, v101);
    memcpy(v257, v247, sizeof(v257));
    (*(v102 + 16))(v107, v109, v101);
    sub_1003805EC(v107);
    (*(v102 + 8))(v109, v101);
  }

  v47 = [v89 mailDateReceived];
  if (v47)
  {
    v46 = v47;
    v45 = v47;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v102 + 32))(v98, v107, v101);
    (*(v102 + 56))(v98, 0, 1, v101);
    _objc_release(v45);
  }

  else
  {
    (*(v102 + 56))(v98, 1, 1, v101);
  }

  if (v48(v98, 1, v101) == 1)
  {
    sub_1002A70C0(v98);
  }

  else
  {
    (*(v102 + 32))(v105, v98, v101);
    memcpy(v256, v247, sizeof(v256));
    (*(v102 + 16))(v107, v105, v101);
    sub_100380800(v107);
    (*(v102 + 8))(v105, v101);
  }

  v44 = [v89 mailRead];
  if (v44)
  {
    v43 = v44;
    v42 = v44;
    v172 = v44;
    memcpy(v255, v247, sizeof(v255));
    sub_100380A20([v44 BOOLValue]);
    _objc_release(v42);
  }

  v39 = v247;
  v41 = 136;
  memcpy(v254, v247, sizeof(v254));
  v35 = [v89 isLikelyJunk];
  v36 = [v35 BOOLValue];
  _objc_release(v35);
  sub_100380B84(v36);
  memcpy(&v253, v39, v41);
  v38 = 0;
  type metadata accessor for MailMessageAttribute();
  v30 = _allocateUninitializedArray<A>(_:)();
  sub_100380D3C(v30);
  memcpy(&v252, v39, v41);
  v31 = *(*(type metadata accessor for MailAccountEntity(v38) - 8) + 56);
  v37 = 1;
  v31(v96, 1);
  sub_100380F5C(v96);
  memcpy(&v251, v39, v41);
  v32 = type metadata accessor for Mailbox(v38);
  (*(*(v32 - 8) + 56))(v94, v37);
  sub_1003811E0(v94);
  memcpy(&v250, v39, v41);
  sub_10038146C(v38);
  _objc_release(v89);
  v40 = v174;
  memcpy(v174, v39, v41);
  sub_1003814E0(v40, v173);

  _objc_release(v167);
  sub_1003816C8(v39);
  return memcpy(v92, v40, v41);
}

unint64_t sub_10037EC78()
{
  v2 = qword_1006DA300;
  if (!qword_1006DA300)
  {
    type metadata accessor for MailMessageAttribute();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA300);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10037ED10()
{
  v1 = type metadata accessor for Logger();
  sub_10002094C(v1, qword_1006F00A8);
  sub_1000208F4(v1, qword_1006F00A8);
  return static Logger.mailUILogger<A>(for:)();
}

uint64_t sub_10037ED6C()
{
  if (qword_1006D5F78 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return sub_1000208F4(v0, qword_1006F00A8);
}

uint64_t sub_10037EDD8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10037ED6C();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_10037EE3C()
{
  v77 = 0;
  v1 = sub_10025C9B0(&unk_1006D7380, &qword_100500790);
  v30 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v44 = &v29 - v30;
  v77 = v0;
  v2 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v62 = &v75;
  v75 = v2;
  v76 = v3;
  v60 = 1;
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("id: ", 4uLL, 1);
  object = v4._object;
  DefaultStringInterpolation.appendLiteral(_:)(v4);

  v78 = *(v55 + 120);
  sub_100268860(&v78, &v74);
  v32 = &v73;
  v73 = v78;
  v50 = &type metadata for String;
  v48 = &protocol witness table for String;
  v49 = &protocol witness table for String;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  sub_100268744(v32);
  v35 = 5;
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("\nto: ", 5uLL, v60 & 1);
  v33 = v5._object;
  DefaultStringInterpolation.appendLiteral(_:)(v5);

  v6 = sub_10037F480();
  v34 = &v72;
  v72 = v6;
  v57 = sub_10025C9B0(&qword_1006DA330, &unk_10050BAC0);
  v58 = sub_1003817A8();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  sub_100264880(v34);
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("\ncc: ", v35, v60 & 1);
  v36 = v7._object;
  DefaultStringInterpolation.appendLiteral(_:)(v7);

  v8 = sub_10037F4DC();
  v37 = &v71;
  v71 = v8;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  sub_100264880(v37);
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("\nbcc: ", 6uLL, v60 & 1);
  v38 = v9._object;
  DefaultStringInterpolation.appendLiteral(_:)(v9);

  v10 = sub_1002CC9CC();
  v39 = &v70;
  v70 = v10;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  sub_100264880(v39);
  v54 = 10;
  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("\nsubject: ", 0xAuLL, v60 & 1);
  v40 = v11._object;
  DefaultStringInterpolation.appendLiteral(_:)(v11);

  v12 = sub_10037F538();
  v41 = v69;
  v69[0] = v12;
  v69[1] = v13;
  v47 = sub_10025C9B0(&unk_1006D7340, &unk_1005039F0);
  v14 = String.init<A>(describing:)();
  v42 = v68;
  v68[0] = v14;
  v68[1] = v15;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  sub_100268744(v42);
  v16 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("\nbody: ", 7uLL, v60 & 1);
  v43 = v16._object;
  DefaultStringInterpolation.appendLiteral(_:)(v16);

  sub_10037F5A0();
  v45 = Optional<A>.toString.getter();
  v46 = v17;
  sub_100285F68(v44);
  v67[2] = v45;
  v67[3] = v46;
  v18 = String.init<A>(describing:)();
  v51 = v67;
  v67[0] = v18;
  v67[1] = v19;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  sub_100268744(v51);
  v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("\nsender: ", 9uLL, v60 & 1);
  v52 = v20._object;
  DefaultStringInterpolation.appendLiteral(_:)(v20);

  v21 = sub_10037F5F4();
  v53 = v66;
  v66[0] = v21;
  v66[1] = v22;
  v66[2] = v23;
  v66[3] = v24;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  sub_1002B7778(v53);
  v25 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("\nreplyTo: ", v54, v60 & 1);
  v56 = v25._object;
  DefaultStringInterpolation.appendLiteral(_:)(v25);

  v26 = sub_10037F674();
  v59 = &v65;
  v65 = v26;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  sub_100264880(v59);
  v27 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v60 & 1);
  v61 = v27._object;
  DefaultStringInterpolation.appendLiteral(_:)(v27);

  v64 = v75;
  v63 = v76;

  sub_100268744(v62);
  return String.init(stringInterpolation:)();
}

uint64_t sub_10037F480()
{

  EntityProperty.wrappedValue.getter();

  return v1;
}

uint64_t sub_10037F4DC()
{

  EntityProperty.wrappedValue.getter();

  return v1;
}

uint64_t sub_10037F538()
{

  EntityProperty.wrappedValue.getter();

  return v1;
}

uint64_t sub_10037F5A0()
{

  EntityProperty.wrappedValue.getter();
}

uint64_t sub_10037F5F4()
{

  EntityProperty.wrappedValue.getter();

  return v1;
}

uint64_t sub_10037F674()
{

  EntityProperty.wrappedValue.getter();

  return v1;
}

uint64_t sub_10037F6D0()
{
  if (qword_1006D5F80 != -1)
  {
    swift_once();
  }

  return v1;
}

uint64_t sub_10037F744@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v9 = "An email message";
  v1 = sub_10025C9B0(&qword_1006D6280, qword_1004FC6A0);
  v3 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v20 = &v3 - v3;
  v6 = 0;
  v4 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v13 = &v3 - v4;
  v5 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v12 = &v3 - v5;
  v7 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v10 = &v3 - v7;
  v17 = type metadata accessor for LocalizedStringResource();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v8 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v17);
  v19 = &v3 - v8;
  v16 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Message", 7uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v16 & 1);
  sub_100015CC0();
  sub_10025D410(v13);
  v21 = v9;
  v22 = 16;
  v23 = 2;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v14 + 56))(v20, v16, v16, v17);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_10037FA38@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v29 = 0;
  v1 = sub_10025C9B0(&unk_1006D9D00, &unk_1005003D0);
  v10 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v28 = &v9 - v10;
  v2 = sub_10025C9B0(&qword_1006D6280, qword_1004FC6A0);
  v11 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v27 = &v9 - v11;
  v23 = 0;
  v22 = type metadata accessor for LocalizedStringResource();
  v20 = *(v22 - 8);
  v21 = v22 - 8;
  v12 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v23);
  v26 = &v9 - v12;
  v13 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v19 = &v9 - v13;
  v18 = type metadata accessor for TypeDisplayRepresentation();
  v15 = *(v18 - 8);
  v16 = v18 - 8;
  v14 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v18);
  v17 = &v9 - v14;
  v29 = v5;
  sub_10037F744(&v9 - v14);
  TypeDisplayRepresentation.name.getter();
  (*(v15 + 8))(v17, v18);
  LocalizedStringResource.localizedStringResource.getter();
  (*(v20 + 8))(v19, v22);
  v6 = *(v20 + 56);
  v24 = 1;
  v6(v27, 1, 1, v22);
  v7 = type metadata accessor for DisplayRepresentation.Image();
  (*(*(v7 - 8) + 56))(v28, v24);
  return DisplayRepresentation.init(title:subtitle:image:)();
}

uint64_t sub_10037FD38(uint64_t a1)
{

  EntityProperty.wrappedValue.setter();
}

void (*sub_10037FDAC(void *a1))(void **a1, char a2)
{
  v3 = sub_100294700(0x30uLL, 11269);
  *a1 = v3;
  v3[4] = *v1;

  v3[5] = EntityProperty.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_10037FE44()
{

  v1 = EntityProperty.projectedValue.getter();

  return v1;
}

uint64_t sub_10037FE9C(uint64_t a1)
{

  EntityProperty.wrappedValue.setter();
}

void (*sub_10037FF10(void *a1))(void **a1, char a2)
{
  v3 = sub_100294700(0x30uLL, 62086);
  *a1 = v3;
  v3[4] = *(v1 + 8);

  v3[5] = EntityProperty.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_10037FFA8()
{

  v1 = EntityProperty.projectedValue.getter();

  return v1;
}

void (*sub_100380000(void *a1))(void **a1, char a2)
{
  v3 = sub_100294700(0x30uLL, 33847);
  *a1 = v3;
  v3[4] = *(v1 + 16);

  v3[5] = EntityProperty.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_100380098(uint64_t a1, uint64_t a2)
{

  EntityProperty.wrappedValue.setter();
}

void (*sub_100380120(void *a1))(void **a1, char a2)
{
  v3 = sub_100294700(0x30uLL, 56228);
  *a1 = v3;
  v3[4] = *(v1 + 24);

  v3[5] = EntityProperty.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_1003801B8(const void *a1)
{
  v6 = a1;
  v8 = 0;
  v7 = 0;
  v3 = (*(*(sub_10025C9B0(&unk_1006D7380, &qword_100500790) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = &v3 - v3;
  v8 = __chkstk_darwin(v6);
  v7 = v1;
  v5 = *(v1 + 32);

  sub_100289B6C(v6, v4);
  EntityProperty.wrappedValue.setter();

  return sub_100285F68(v6);
}

void (*sub_100380290(void *a1))(void **a1, char a2)
{
  v3 = sub_100294700(0x30uLL, 52966);
  *a1 = v3;
  v3[4] = *(v1 + 32);

  v3[5] = EntityProperty.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_100380328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  EntityProperty.wrappedValue.setter();
}

void (*sub_1003803F4(void *a1))(void **a1, char a2)
{
  v3 = sub_100294700(0x30uLL, 12868);
  *a1 = v3;
  v3[4] = *(v1 + 40);

  v3[5] = EntityProperty.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_10038048C(uint64_t a1)
{

  EntityProperty.wrappedValue.setter();
}

void (*sub_100380500(void *a1))(void **a1, char a2)
{
  v3 = sub_100294700(0x30uLL, 47243);
  *a1 = v3;
  v3[4] = *(v1 + 48);

  v3[5] = EntityProperty.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_100380598()
{

  EntityProperty.wrappedValue.getter();
}

uint64_t sub_1003805EC(uint64_t a1)
{
  v9 = a1;
  v12 = 0;
  v11 = 0;
  v10 = type metadata accessor for Date();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v4 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = &v3 - v4;
  v12 = __chkstk_darwin(v9);
  v11 = v1;
  v6 = *(v1 + 56);

  (*(v7 + 16))(v5, v9, v10);
  EntityProperty.wrappedValue.setter();

  return (*(v7 + 8))(v9, v10);
}

void (*sub_100380714(void *a1))(void **a1, char a2)
{
  v3 = sub_100294700(0x30uLL, 7116);
  *a1 = v3;
  v3[4] = *(v1 + 56);

  v3[5] = EntityProperty.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_1003807AC()
{

  EntityProperty.wrappedValue.getter();
}

uint64_t sub_100380800(uint64_t a1)
{
  v9 = a1;
  v12 = 0;
  v11 = 0;
  v10 = type metadata accessor for Date();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v4 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = &v3 - v4;
  v12 = __chkstk_darwin(v9);
  v11 = v1;
  v6 = *(v1 + 64);

  (*(v7 + 16))(v5, v9, v10);
  EntityProperty.wrappedValue.setter();

  return (*(v7 + 8))(v9, v10);
}

void (*sub_100380928(void *a1))(void **a1, char a2)
{
  v3 = sub_100294700(0x30uLL, 24822);
  *a1 = v3;
  v3[4] = *(v1 + 64);

  v3[5] = EntityProperty.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_1003809C0()
{

  EntityProperty.wrappedValue.getter();

  return v1 & 1;
}

uint64_t sub_100380A20(char a1)
{

  EntityProperty.wrappedValue.setter();
}

void (*sub_100380A8C(void *a1))(void **a1, char a2)
{
  v3 = sub_100294700(0x30uLL, 8379);
  *a1 = v3;
  v3[4] = *(v1 + 72);

  v3[5] = EntityProperty.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_100380B24()
{

  EntityProperty.wrappedValue.getter();

  return v1 & 1;
}

uint64_t sub_100380B84(char a1)
{

  EntityProperty.wrappedValue.setter();
}

void (*sub_100380BF0(void *a1))(void **a1, char a2)
{
  v3 = sub_100294700(0x30uLL, 25958);
  *a1 = v3;
  v3[4] = *(v1 + 80);

  v3[5] = EntityProperty.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_100380C88()
{

  v1 = EntityProperty.projectedValue.getter();

  return v1;
}

uint64_t sub_100380CE0()
{

  EntityProperty.wrappedValue.getter();

  return v1;
}

uint64_t sub_100380D3C(uint64_t a1)
{

  EntityProperty.wrappedValue.setter();
}

void (*sub_100380DB0(void *a1))(void **a1, char a2)
{
  v3 = sub_100294700(0x30uLL, 26178);
  *a1 = v3;
  v3[4] = *(v1 + 88);

  v3[5] = EntityProperty.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_100380E48()
{

  v1 = EntityProperty.projectedValue.getter();

  return v1;
}

uint64_t sub_100380EA0()
{
  v2 = *(v0 + 88);

  return v2;
}

uint64_t sub_100380ECC(uint64_t a1)
{

  *(v1 + 88) = a1;
}

uint64_t sub_100380F08()
{

  EntityProperty.wrappedValue.getter();
}

uint64_t sub_100380F5C(char *a1)
{
  v6 = a1;
  v8 = 0;
  v7 = 0;
  v3 = (*(*(sub_10025C9B0(&qword_1006D9B50, &unk_1005044F8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = &v3 - v3;
  v8 = __chkstk_darwin(v6);
  v7 = v1;
  v5 = *(v1 + 96);

  sub_100358DBC(v6, v4);
  EntityProperty.wrappedValue.setter();

  return sub_100358F78(v6);
}

void (*sub_100381034(void *a1))(void **a1, char a2)
{
  v3 = sub_100294700(0x30uLL, 54558);
  *a1 = v3;
  v3[4] = *(v1 + 96);

  v3[5] = EntityProperty.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_1003810CC()
{

  v1 = EntityProperty.projectedValue.getter();

  return v1;
}

uint64_t sub_100381124()
{
  v2 = *(v0 + 96);

  return v2;
}

uint64_t sub_100381150(uint64_t a1)
{

  *(v1 + 96) = a1;
}

uint64_t sub_10038118C()
{

  EntityProperty.wrappedValue.getter();
}

uint64_t sub_1003811E0(char *a1)
{
  v6 = a1;
  v8 = 0;
  v7 = 0;
  v3 = (*(*(sub_10025C9B0(&unk_1006DA2B0, &qword_100505F08) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = &v3 - v3;
  v8 = __chkstk_darwin(v6);
  v7 = v1;
  v5 = *(v1 + 104);

  sub_100381830(v6, v4);
  EntityProperty.wrappedValue.setter();

  return sub_1003819BC(v6);
}

void (*sub_1003812B8(void *a1))(void **a1, char a2)
{
  v3 = sub_100294700(0x30uLL, 17581);
  *a1 = v3;
  v3[4] = *(v1 + 104);

  v3[5] = EntityProperty.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_100381350()
{

  v1 = EntityProperty.projectedValue.getter();

  return v1;
}

uint64_t sub_1003813A8()
{
  v2 = *(v0 + 104);

  return v2;
}

uint64_t sub_1003813D4(uint64_t a1)
{

  *(v1 + 104) = a1;
}

uint64_t sub_100381410()
{

  EntityProperty.wrappedValue.getter();

  return v1;
}

uint64_t sub_10038146C(uint64_t a1)
{

  EntityProperty.wrappedValue.setter();
}

void *sub_1003814E0(void *a1, void *a2)
{
  v3 = *a1;

  *a2 = v3;
  v4 = a1[1];

  a2[1] = v4;
  v5 = a1[2];

  a2[2] = v5;
  v6 = a1[3];

  a2[3] = v6;
  v7 = a1[4];

  a2[4] = v7;
  v8 = a1[5];

  a2[5] = v8;
  v9 = a1[6];

  a2[6] = v9;
  v10 = a1[7];

  a2[7] = v10;
  v11 = a1[8];

  a2[8] = v11;
  v12 = a1[9];

  a2[9] = v12;
  v13 = a1[10];

  a2[10] = v13;
  v14 = a1[11];

  a2[11] = v14;
  v15 = a1[12];

  a2[12] = v15;
  v16 = a1[13];

  a2[13] = v16;
  v18 = a1[14];

  a2[14] = v18;
  a2[15] = a1[15];
  v20 = a1[16];

  result = a2;
  a2[16] = v20;
  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1003816C8(void *a1)
{
}

unint64_t sub_1003817A8()
{
  v2 = qword_1006DA338;
  if (!qword_1006DA338)
  {
    sub_10025CAA4(&qword_1006DA330, &unk_10050BAC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA338);
    return WitnessTable;
  }

  return v2;
}

char *sub_100381830(char *a1, char *a2)
{
  v11 = type metadata accessor for Mailbox(0);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(a1, 1))
  {
    v3 = sub_10025C9B0(&unk_1006DA2B0, &qword_100505F08);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v2 = type metadata accessor for UUID();
    (*(*(v2 - 8) + 16))(a2, a1);
    v5 = *(v11 + 20);
    v6 = *&a1[v5];

    *&a2[v5] = v6;
    v7 = *(v11 + 24);
    v8 = *&a1[v7];

    *&a2[v7] = v8;
    (*(v12 + 56))();
  }

  return a2;
}

uint64_t sub_1003819BC(uint64_t a1)
{
  v4 = type metadata accessor for Mailbox(0);
  if (!(*(*(v4 - 8) + 48))(a1, 1))
  {
    v1 = type metadata accessor for UUID();
    (*(*(v1 - 8) + 8))(a1);
  }

  return a1;
}

uint64_t sub_100381A8C()
{

  v1 = EntityProperty.projectedValue.getter();

  return v1;
}

uint64_t sub_100381AE4()
{
  v2 = *(v0 + 112);

  return v2;
}

uint64_t sub_100381B10(uint64_t a1)
{

  *(v1 + 112) = a1;
}

uint64_t sub_100381B4C()
{
  v2 = *(v0 + 120);

  return v2;
}

uint64_t sub_100381B84(uint64_t a1, uint64_t a2)
{

  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
}

void (*sub_100381C70(void *a1))(uint64_t a1)
{
  v3 = sub_100294700(0xB0uLL, 23199);
  *a1 = v3;
  memcpy(v3, __src, 0x88uLL);
  v3[21] = sub_10037FDAC(v3 + 17);
  return sub_100381D08;
}

void sub_100381D08(uint64_t a1)
{
  v1 = *a1;
  (*(*a1 + 168))();
  free(v1);
}

void (*sub_100381E14(void *a1))(uint64_t a1)
{
  v3 = sub_100294700(0xB0uLL, 3651);
  *a1 = v3;
  memcpy(v3, __src, 0x88uLL);
  v3[21] = sub_10037FF10(v3 + 17);
  return sub_100381D08;
}

void (*sub_100381F34(void *a1))(uint64_t a1)
{
  v3 = sub_100294700(0xB0uLL, 50390);
  *a1 = v3;
  memcpy(v3, __src, 0x88uLL);
  v3[21] = sub_100380000(v3 + 17);
  return sub_100381D08;
}

void (*sub_10038205C(void *a1))(uint64_t a1)
{
  v3 = sub_100294700(0xB0uLL, 49831);
  *a1 = v3;
  memcpy(v3, __src, 0x88uLL);
  v3[21] = sub_100380120(v3 + 17);
  return sub_100381D08;
}

void (*sub_100382184(void *a1))(uint64_t a1)
{
  v3 = sub_100294700(0xB0uLL, 31217);
  *a1 = v3;
  memcpy(v3, __src, 0x88uLL);
  v3[21] = sub_100380290(v3 + 17);
  return sub_100381D08;
}

uint64_t sub_10038221C@<X0>(uint64_t *a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  result = sub_10037F5F4();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_100382274(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  memcpy(__dst, v1, sizeof(__dst));
  return sub_100380328(v3, v4, v5, v6);
}

void (*sub_1003822E4(void *a1))(uint64_t a1)
{
  v3 = sub_100294700(0xB0uLL, 47155);
  *a1 = v3;
  memcpy(v3, __src, 0x88uLL);
  v3[21] = sub_1003803F4(v3 + 17);
  return sub_100381D08;
}

void (*sub_100382404(void *a1))(uint64_t a1)
{
  v3 = sub_100294700(0xB0uLL, 5255);
  *a1 = v3;
  memcpy(v3, __src, 0x88uLL);
  v3[21] = sub_100380500(v3 + 17);
  return sub_100381D08;
}

void (*sub_10038252C(void *a1))(uint64_t a1)
{
  v3 = sub_100294700(0xB0uLL, 4500);
  *a1 = v3;
  memcpy(v3, __src, 0x88uLL);
  v3[21] = sub_100380714(v3 + 17);
  return sub_100381D08;
}

void (*sub_100382654(void *a1))(uint64_t a1)
{
  v3 = sub_100294700(0xB0uLL, 35863);
  *a1 = v3;
  memcpy(v3, __src, 0x88uLL);
  v3[21] = sub_100380928(v3 + 17);
  return sub_100381D08;
}

void (*sub_10038277C(void *a1))(uint64_t a1)
{
  v3 = sub_100294700(0xB0uLL, 1735);
  *a1 = v3;
  memcpy(v3, __src, 0x88uLL);
  v3[21] = sub_100380A8C(v3 + 17);
  return sub_100381D08;
}

void (*sub_1003828A4(void *a1))(uint64_t a1)
{
  v3 = sub_100294700(0xB0uLL, 49867);
  *a1 = v3;
  memcpy(v3, __src, 0x88uLL);
  v3[21] = sub_100380BF0(v3 + 17);
  return sub_100381D08;
}

void (*sub_1003829C4(void *a1))(uint64_t a1)
{
  v3 = sub_100294700(0xB0uLL, 48223);
  *a1 = v3;
  memcpy(v3, __src, 0x88uLL);
  v3[21] = sub_100380DB0(v3 + 17);
  return sub_100381D08;
}

void (*sub_100382AEC(void *a1))(uint64_t a1)
{
  v3 = sub_100294700(0xB0uLL, 28852);
  *a1 = v3;
  memcpy(v3, __src, 0x88uLL);
  v3[21] = sub_100381034(v3 + 17);
  return sub_100381D08;
}

void (*sub_100382C14(void *a1))(uint64_t a1)
{
  v3 = sub_100294700(0xB0uLL, 46522);
  *a1 = v3;
  memcpy(v3, __src, 0x88uLL);
  v3[21] = sub_1003812B8(v3 + 17);
  return sub_100381D08;
}

uint64_t sub_100382CEC@<X0>(uint64_t *a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  result = sub_100381B4C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100382E0C()
{
  v2 = qword_1006DA340;
  if (!qword_1006DA340)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA340);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100382E88()
{
  sub_10025C9B0(&qword_1006DA348, &qword_100505F48);
  sub_1003831B0();
  return Sequence.compactMap<A>(_:)();
}

id sub_100382F30@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v25 = *a1;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v26 = [v25 emailAddressValue];
  swift_unknownObjectRelease();
  result = v26;
  if (v26)
  {
    v20 = [v26 stringValue];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v3;
    _objc_release(v26);
    _objc_release(v20);
    result = v21;
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (v23)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v15 = [v25 stringValue];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v4;
    swift_unknownObjectRelease();

    v9 = String._bridgeToObjectiveC()();
    v14 = [v9 stringValue];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v5;
    _objc_release(v9);
    v16 = sub_10034E760(v10, v11, v12, v13);
    v17 = v6;
    v18 = v7;
    v19 = v8;
    _objc_release(v14);

    _objc_release(v15);
    *a2 = v16;
    a2[1] = v17;
    a2[2] = v18;
    a2[3] = v19;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 0;
  }

  return result;
}

unint64_t sub_1003831B0()
{
  v2 = qword_1006DA350;
  if (!qword_1006DA350)
  {
    sub_10025CAA4(&qword_1006DA348, &qword_100505F48);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA350);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100383250()
{
  v2 = qword_1006DA358;
  if (!qword_1006DA358)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA358);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003832E4()
{
  v2 = qword_1006DA360;
  if (!qword_1006DA360)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA360);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100383378()
{
  v2 = qword_1006DA368;
  if (!qword_1006DA368)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA368);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10038340C()
{
  v2 = qword_1006DA370;
  if (!qword_1006DA370)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA370);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003834E4()
{
  v2 = qword_1006DA390;
  if (!qword_1006DA390)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA390);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100383578()
{
  v2 = qword_1006DA398;
  if (!qword_1006DA398)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA398);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10038360C()
{
  v2 = qword_1006DA3A0;
  if (!qword_1006DA3A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA3A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003836B8()
{
  v2 = qword_1006DA3A8;
  if (!qword_1006DA3A8)
  {
    sub_10025CAA4(&qword_1006DA3B0, &qword_100506268);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA3A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100383758()
{
  v2 = qword_1006DA3B8;
  if (!qword_1006DA3B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA3B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100383804(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

void *sub_10038391C(void *result, int a2, int a3)
{
  v3 = result + 17;
  if (a2 < 0)
  {
    result[15] = 0;
    result[14] = 0;
    result[13] = 0;
    result[12] = 0;
    result[11] = 0;
    result[10] = 0;
    result[9] = 0;
    result[8] = 0;
    result[7] = 0;
    result[6] = 0;
    result[5] = 0;
    result[4] = 0;
    result[3] = 0;
    result[2] = 0;
    result[1] = 0;
    *result = a2 + 0x80000000;
    result[16] = 0;
    if (a3 < 0)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *result = (a2 - 1);
    }
  }

  return result;
}

uint64_t sub_100383B20(void *a1)
{
  v91 = a1;
  v80 = sub_10038491C;
  v81 = sub_10026EE84;
  v82 = sub_10026434C;
  v83 = sub_10026434C;
  v84 = sub_10026EF2C;
  v116 = 0;
  v115 = 0;
  v114 = 0;
  v109 = 0;
  v108 = 0;
  v106 = 0;
  v107 = 0;
  v85 = 0;
  v96 = 0;
  v86 = type metadata accessor for Logger();
  v87 = *(v86 - 8);
  v88 = v86 - 8;
  v89 = (*(v87 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v86);
  v90 = &v26 - v89;
  v92 = (*(*(sub_10025C9B0(&qword_1006D7DF0, &qword_100500800) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v91);
  v97 = &v26 - v92;
  v116 = v2;
  v115 = v1;
  v93 = swift_allocObject();
  v114 = v93 + 16;
  v94 = *v1;
  v95 = v1[1];

  MailMessageEntityID.init(with:)();
  v98 = type metadata accessor for MailMessageEntityID();
  v99 = *(v98 - 8);
  v100 = v98 - 8;
  if ((*(v99 + 48))(v97, 1) == 1)
  {
    sub_1002C1698(v97);
    v25 = v93;
    *(v93 + 16) = 0;
    *(v25 + 24) = 0;
  }

  else
  {
    v77 = MailMessageEntityID.uniqueIdentifier.getter();
    v78 = v3;
    (*(v99 + 8))(v97, v98);
    v4 = v93;
    v5 = v78;
    *(v93 + 16) = v77;
    *(v4 + 24) = v5;
  }

  v75 = *(v93 + 16);
  v76 = *(v93 + 24);

  v113[0] = v75;
  v113[1] = v76;
  v74 = v76 == 0;
  v73 = v74;
  sub_100268744(v113);
  if (v73)
  {
    v71 = *v79;
    v70 = v79[1];

    sub_1003847C8();
    FixedWidthInteger.init(_:)();
    v72 = v110;
    if ((v111 & 1) == 0)
    {
      v69 = v72;
      v63 = v72;
      v109 = v72;
      v65 = [v91 messageRepository];
      sub_10028F43C();
      v6 = [objc_opt_self() allMailboxesScope];
      v64 = sub_100384840(v63, v6);
      v66 = [v65 messageForObjectID:?];
      _objc_release(v64);
      _objc_release(v65);
      v108 = v66;
      v67 = [v66 result];
      v68 = [v67 searchableMessageID];
      _objc_release(v67);
      if (v68)
      {
        v62 = v68;
        v56 = v68;
        v57 = [v68 stringValue];
        v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v59 = v7;
        _objc_release(v56);
        _objc_release(v57);
        v60 = v58;
        v61 = v59;
      }

      else
      {
        v60 = 0;
        v61 = 0;
      }

      v54 = v61;
      v55 = v60;
      if (v61)
      {
        v52 = v55;
        v53 = v54;
        v8 = v90;
        v39 = v54;
        v38 = v55;
        v106 = v55;
        v107 = v54;

        v9 = v39;
        v10 = v93;
        *(v93 + 16) = v38;
        *(v10 + 24) = v9;

        v11 = Logger.appIntentLogger.unsafeMutableAddressor();
        (*(v87 + 16))(v8, v11, v86);

        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.debug.getter();
        v40 = 17;
        v42 = 7;
        v44 = swift_allocObject();
        *(v44 + 16) = 32;
        v45 = swift_allocObject();
        *(v45 + 16) = 8;
        v41 = 32;
        v12 = swift_allocObject();
        v13 = v93;
        v43 = v12;
        *(v12 + 16) = v80;
        *(v12 + 24) = v13;
        v14 = swift_allocObject();
        v15 = v43;
        v47 = v14;
        *(v14 + 16) = v81;
        *(v14 + 24) = v15;
        v49 = sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
        v46 = _allocateUninitializedArray<A>(_:)();
        v48 = v16;

        v17 = v44;
        v18 = v48;
        *v48 = v82;
        v18[1] = v17;

        v19 = v45;
        v20 = v48;
        v48[2] = v83;
        v20[3] = v19;

        v21 = v47;
        v22 = v48;
        v48[4] = v84;
        v22[5] = v21;
        sub_1002612B0();

        if (os_log_type_enabled(v50, v51))
        {
          v23 = v85;
          v31 = static UnsafeMutablePointer.allocate(capacity:)();
          v30 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
          v32 = sub_1002641E8(0, v30, v30);
          v33 = sub_1002641E8(1, &type metadata for Any + 8, &type metadata for Any + 8);
          v34 = &v105;
          v105 = v31;
          v35 = &v104;
          v104 = v32;
          v36 = &v103;
          v103 = v33;
          sub_10026423C(2, &v105);
          sub_10026423C(1, v34);
          v101 = v82;
          v102 = v44;
          sub_100264250(&v101, v34, v35, v36);
          v37 = v23;
          if (v23)
          {

            __break(1u);
          }

          else
          {
            v101 = v83;
            v102 = v45;
            sub_100264250(&v101, &v105, &v104, &v103);
            v29 = 0;
            v101 = v84;
            v102 = v47;
            sub_100264250(&v101, &v105, &v104, &v103);
            _os_log_impl(&_mh_execute_header, v50, v51, "#SiriMail searchableMessageID: %s", v31, 0xCu);
            sub_10026429C(v32, 0);
            sub_10026429C(v33, 1);
            UnsafeMutablePointer.deallocate()();
          }
        }

        else
        {
        }

        _objc_release(v50);
        (*(v87 + 8))(v90, v86);
      }

      _objc_release(v66);
    }
  }

  v26 = &v112;
  swift_beginAccess();
  v27 = *(v93 + 16);
  v28 = *(v93 + 24);

  swift_endAccess();

  return v27;
}

unint64_t sub_1003847C8()
{
  v2 = qword_1006DCA30;
  if (!qword_1006DCA30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCA30);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100384888(uint64_t a1)
{
  swift_beginAccess();

  swift_endAccess();
  sub_10025C9B0(&unk_1006D7340, &unk_1005039F0);
  return String.init<A>(describing:)();
}

uint64_t sub_100384924(void *a1, uint64_t a2)
{
  _objc_retain(a1);
  sub_10025C9B0(&unk_1006D6FF0, &unk_1004FEA30);
  sub_10027D6A0();
  v3 = Sequence.compactMap<A>(_:)();
  _objc_release(a1);
  return v3;
}

uint64_t sub_100384A1C@<X0>(const void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_100383B20(a2);
  *a3 = result;
  a3[1] = v4;
  return result;
}

id sub_100384A90(uint64_t a1, void *a2)
{
  v5 = [v2 initWithGlobalMessageID:a1 mailboxScope:?];
  _objc_release(a2);
  return v5;
}

uint64_t sub_100384B0C@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v40 = "An email message";
  v82 = 0;
  v77 = 0;
  v78 = 0;
  v2 = sub_10025C9B0(&unk_1006D9D00, &unk_1005003D0);
  v41 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v42 = &v21 - v41;
  v3 = sub_10025C9B0(&qword_1006D6280, qword_1004FC6A0);
  v43 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v44 = &v21 - v43;
  v56 = 0;
  v45 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v56);
  v46 = &v21 - v45;
  v47 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v56);
  v48 = &v21 - v47;
  v49 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v56);
  v50 = &v21 - v49;
  v51 = type metadata accessor for IntentPerson();
  v52 = *(v51 - 8);
  v53 = v51 - 8;
  v54 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v56);
  v55 = &v21 - v54;
  v57 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v58 = *(v57 - 8);
  v59 = v57 - 8;
  v60 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v56);
  v61 = &v21 - v60;
  v62 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v4);
  v63 = &v21 - v62;
  v64 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v65 = &v21 - v64;
  v66 = type metadata accessor for LocalizedStringResource();
  v67 = *(v66 - 8);
  v68 = v66 - 8;
  v69 = (*(v67 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v66);
  v70 = &v21 - v69;
  v82 = v1;
  v71 = sub_1002CC92C();
  v72 = v8;
  if (v8)
  {
    v37 = v71;
    v38 = v72;
    v35 = v72;
    v36 = v71;
    v77 = v71;
    v78 = v72;
    v9 = String.isEmpty.getter();
    if ((v9 & 1) == 0)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v34 = 1;
      v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Message from ", 0xDuLL, 1);
      object = v10._object;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v10);

      sub_1003807AC();
      v28._countAndFlagsBits = IntentPerson.displayString.getter();
      v28._object = v11;
      (*(v52 + 8))(v55, v51);
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v28);

      v31 = 10;
      v32 = 0;
      v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" about “", 0xAuLL, 0);
      v29 = v12._object;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v12);

      v13._countAndFlagsBits = v36;
      v13._object = v35;
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v13);
      v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("”", 3uLL, v32 & 1);
      v30 = v14._object;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v14);

      (*(v58 + 16))(v63, v65, v57);
      (*(v58 + 32))(v61, v63, v57);
      (*(v58 + 8))(v65, v57);
      String.LocalizationValue.init(stringInterpolation:)();
      v33 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", v31, v34 & 1);
      sub_100015CC0();
      sub_10025D410(v46);
      v73 = v40;
      v74 = 16;
      v75 = 2;
      v76 = v32 & 1 & v34;
      LocalizedStringResource.init(_:table:locale:bundle:comment:)();
      (*(v67 + 56))(v44, v34, v34, v66);
      v15 = type metadata accessor for DisplayRepresentation.Image();
      (*(*(v15 - 8) + 56))(v42, v34);
      DisplayRepresentation.init(title:subtitle:image:)();
    }
  }

  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v26 = 1;
  v17 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Message from ", 0xDuLL, 1);
  v21 = v17._object;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v17);

  sub_1003807AC();
  v22._countAndFlagsBits = IntentPerson.displayString.getter();
  v22._object = v18;
  (*(v52 + 8))(v55, v51);
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v22);

  v24 = 16;
  v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" with no subject", 0x10uLL, v26 & 1);
  v23 = v19._object;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v19);

  (*(v58 + 16))(v63, v65, v57);
  (*(v58 + 32))(v61, v63, v57);
  (*(v58 + 8))(v65, v57);
  String.LocalizationValue.init(stringInterpolation:)();
  v25 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v26 & 1);
  sub_100015CC0();
  sub_10025D410(v46);
  v79 = v40;
  v80 = v24;
  v81 = 2;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v67 + 56))(v44, v26, v26, v66);
  v20 = type metadata accessor for DisplayRepresentation.Image();
  (*(*(v20 - 8) + 56))(v42, v26);
  return DisplayRepresentation.init(title:subtitle:image:)();
}

void *sub_10038564C(void *a1)
{
  v6 = a1;
  v5 = v1;

  sub_10027EB5C(a1, v4);
  EntityProperty.wrappedValue.setter();

  return sub_10027D728(a1);
}

__n128 sub_1003856C0@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v149 = v206;
  v181 = a3;
  v183 = a2;
  v182 = a1;
  v150 = a4;
  v196 = 0;
  v247 = 0;
  v246 = 0;
  v245 = 0;
  v244 = 0;
  v151 = 0u;
  v243 = 0u;
  v242 = 0u;
  v241 = 0u;
  v240 = 0u;
  v239 = 0u;
  v238 = 0u;
  v237 = 0u;
  v236 = 0u;
  v235 = 0;
  v234 = 0;
  v233 = 0;
  v232 = 0;
  v217 = 0;
  v152 = 0;
  v216 = 0;
  v215 = 0;
  v214 = 0;
  v213 = 0;
  v212 = 0u;
  v211 = 0u;
  v210 = 0u;
  v209 = 0u;
  v208 = 0u;
  v204 = 0;
  v4 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v4 - 8);
  v153 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10025C9B0(&unk_1006D7380, &qword_100500790);
  v154 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6 - 8);
  v155 = v47 - v154;
  v156 = *(*(sub_10025C9B0(&qword_1006D8740, &unk_100501CB0) - 8) + 64);
  v7 = __chkstk_darwin(v196);
  v158 = (v156 + 15) & 0xFFFFFFFFFFFFFFF0;
  v157 = v47 - v158;
  __chkstk_darwin(v7);
  v159 = v47 - v158;
  v160 = type metadata accessor for Date();
  v161 = *(v160 - 8);
  v162 = v161;
  v164 = *(v161 + 64);
  __chkstk_darwin(v160 - 8);
  v166 = (v164 + 15) & 0xFFFFFFFFFFFFFFF0;
  v163 = v47 - v166;
  v247 = v47 - v166;
  __chkstk_darwin(v47 - v166);
  v165 = v47 - v166;
  __chkstk_darwin(v47 - v166);
  v167 = v47 - v166;
  v246 = v47 - v166;
  v168 = (*(*(sub_10025C9B0(&qword_1006DCAE0, &qword_1005063D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v196);
  v169 = v47 - v168;
  v170 = type metadata accessor for IntentPerson();
  v171 = *(v170 - 8);
  v172 = v171;
  v173 = *(v171 + 64);
  v8 = __chkstk_darwin(v196);
  v175 = (v173 + 15) & 0xFFFFFFFFFFFFFFF0;
  v174 = v47 - v175;
  __chkstk_darwin(v8);
  v176 = v47 - v175;
  v245 = v47 - v175;
  v177 = type metadata accessor for MailMessageEntityID();
  v178 = *(v177 - 8);
  v179 = v178;
  __chkstk_darwin(v196);
  v180 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v244 = v180;
  v193 = type metadata accessor for Logger();
  v184 = v193;
  v185 = *(v193 - 8);
  v192 = v185;
  v186 = v185;
  v10 = __chkstk_darwin(v182);
  v191 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = v191;
  v235 = v10;
  v233 = v12;
  v234 = v13;
  v188 = sub_10025C9B0(&qword_1006D7F38, &qword_100500798);
  *&v237 = EntityProperty<>.init()();
  *(&v237 + 1) = EntityProperty<>.init()();
  *&v238 = EntityProperty<>.init()();
  sub_10025C9B0(&unk_1006DA2D0, &qword_1005007A0);
  *(&v238 + 1) = EntityProperty<>.init()();
  sub_10025C9B0(&qword_1006D7F40, &qword_1005007A8);
  *&v239 = EntityProperty<>.init()();
  sub_10025C9B0(&qword_1006D7F48, &unk_1005007B0);
  *(&v239 + 1) = EntityProperty<>.init()();
  sub_10025C9B0(&qword_1006DA3C8, &qword_1005063D8);
  v240.n128_u64[0] = EntityProperty<>.init()();
  v189 = sub_10025C9B0(&qword_1006DA2E8, &unk_1005063E0);
  v240.n128_u64[1] = EntityProperty<>.init()();
  *&v241 = EntityProperty<>.init()();
  v190 = sub_10025C9B0(&qword_1006DA2F0, &qword_100505F18);
  *(&v241 + 1) = EntityProperty<>.init()();
  *&v242 = EntityProperty<>.init()();
  *(&v242 + 1) = EntityProperty<>.init()();
  sub_10025C9B0(&qword_1006D7F50, &qword_1005063F0);
  sub_100264788();
  *&v243 = EntityProperty<>.init()();
  sub_10025C9B0(&qword_1006DA3D0, &qword_1005063F8);
  sub_1002DA854();
  v14 = EntityProperty<>.init()();
  v15 = v191;
  *(&v243 + 1) = v14;
  v16 = Logger.appIntentLogger.unsafeMutableAddressor();
  (*(v192 + 16))(v15, v16, v193);
  v198 = Logger.logObject.getter();
  v194 = v198;
  v197 = static os_log_type_t.info.getter();
  v195 = v197;
  sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
  v199 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v198, v197))
  {
    v17 = v152;
    v140 = static UnsafeMutablePointer.allocate(capacity:)();
    v136 = v140;
    v137 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v138 = 0;
    v141 = sub_1002641E8(0, v137, v137);
    v139 = v141;
    v142 = sub_1002641E8(v138, &type metadata for Any + 8, &type metadata for Any + 8);
    v203 = v140;
    v202 = v141;
    v201 = v142;
    v143 = 0;
    v144 = &v203;
    sub_10026423C(0, &v203);
    sub_10026423C(v143, v144);
    v200 = v199;
    v145 = v47;
    __chkstk_darwin(v47);
    v146 = &v47[-6];
    v147 = sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
    sub_10026E6E0();
    Sequence.forEach(_:)();
    v148 = v17;
    if (v17)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&_mh_execute_header, v194, v195, "#SiriMail MailMessageEntity.init(searchableItem:existingId:)", v136, 2u);
      v134 = 0;
      sub_10026429C(v139, 0);
      sub_10026429C(v142, v134);
      UnsafeMutablePointer.deallocate()();

      v135 = v148;
    }
  }

  else
  {

    v135 = v152;
  }

  v18 = v182;
  v132 = v135;

  (*(v186 + 8))(v187, v184);
  v133 = [v18 attributeSet];
  v232 = v133;
  CSSearchableItem.mailMessageEntityID.getter();

  *&v230 = v183;
  *(&v230 + 1) = v181;
  if (v181)
  {
    v231 = v230;
  }

  else
  {
    *&v231 = MailMessageEntityID.encodedID.getter();
    *(&v231 + 1) = v19;
    if (*(&v230 + 1))
    {
      sub_100268744(&v230);
    }
  }

  v236 = v231;
  v355 = v239;
  v354 = v238;
  v353 = v237;
  v352 = v231;
  v359 = v243;
  v358 = v242;
  v357 = v241;
  v356 = v240;
  v20 = CSSearchableItem.toIntentPersons.getter();
  sub_1002CCA28(v20);
  v347 = v239;
  v346 = v238;
  v345 = v237;
  v344 = v236;
  v351 = v243;
  v350 = v242;
  v349 = v241;
  v348 = v240;
  v21 = CSSearchableItem.ccIntentPersons.getter();
  sub_1002CCB50(v21);
  v339 = v239;
  v338 = v238;
  v337 = v237;
  v336 = v236;
  v343 = v243;
  v342 = v242;
  v341 = v241;
  v340 = v240;
  v22 = CSSearchableItem.bccIntentPersons.getter();
  sub_1002CCC78(v22);
  v131 = [v133 subject];
  if (v131)
  {
    v130 = v131;
    v125 = v131;
    v126 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v127 = v23;

    v128 = v126;
    v129 = v127;
  }

  else
  {
    v128 = 0;
    v129 = 0;
  }

  v331 = v239;
  v330 = v238;
  v329 = v237;
  v328 = v236;
  v335 = v243;
  v334 = v242;
  v333 = v241;
  v332 = v240;
  sub_1002CCD44(v128, v129);
  CSSearchableItem.senderIntentPerson.getter();
  if ((*(v172 + 48))(v169, 1, v170) == 1)
  {
    sub_100387BA8(v169);
  }

  else
  {
    (*(v172 + 32))(v176, v169, v170);
    v323 = v239;
    v322 = v238;
    v321 = v237;
    v320 = v236;
    v327 = v243;
    v326 = v242;
    v325 = v241;
    v324 = v240;
    (*(v172 + 16))(v174, v176, v170);
    sub_100387D28(v174);
    (*(v172 + 8))(v176, v170);
  }

  v124 = [v133 contentCreationDate];
  if (v124)
  {
    v123 = v124;
    v122 = v124;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v162 + 32))(v159, v165, v160);
    (*(v162 + 56))(v159, 0, 1, v160);
  }

  else
  {
    (*(v162 + 56))(v159, 1, 1, v160);
  }

  v120 = *(v162 + 48);
  v121 = (v162 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v120(v159, 1, v160) == 1)
  {
    sub_1002A70C0(v159);
  }

  else
  {
    (*(v162 + 32))(v167, v159, v160);
    v315 = v239;
    v314 = v238;
    v313 = v237;
    v312 = v236;
    v319 = v243;
    v318 = v242;
    v317 = v241;
    v316 = v240;
    (*(v162 + 16))(v165, v167, v160);
    sub_100387EA4(v165);
    (*(v162 + 8))(v167, v160);
  }

  v119 = [v133 mailDateReceived];
  if (v119)
  {
    v118 = v119;
    v117 = v119;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v162 + 32))(v157, v165, v160);
    (*(v162 + 56))(v157, 0, 1, v160);
  }

  else
  {
    (*(v162 + 56))(v157, 1, 1, v160);
  }

  if (v120(v157, 1, v160) == 1)
  {
    sub_1002A70C0(v157);
  }

  else
  {
    (*(v162 + 32))(v163, v157, v160);
    v307 = v239;
    v306 = v238;
    v305 = v237;
    v304 = v236;
    v311 = v243;
    v310 = v242;
    v309 = v241;
    v308 = v240;
    (*(v162 + 16))(v165, v163, v160);
    sub_100388020(v165);
    (*(v162 + 8))(v163, v160);
  }

  v116 = [v133 mailRead];
  if (v116)
  {
    v115 = v116;
    v114 = v116;
    v204 = v116;
    v299 = v239;
    v298 = v238;
    v297 = v237;
    v296 = v236;
    v303 = v243;
    v302 = v242;
    v301 = v241;
    v300 = v240;
    sub_1003881A8([v116 BOOLValue]);
  }

  v291 = v239;
  v290 = v238;
  v289 = v237;
  v288 = v236;
  v295 = v243;
  v294 = v242;
  v293 = v241;
  v292 = v240;
  v110 = [v182 attributeSet];
  v111 = [v110 isLikelyJunk];

  v112 = [v111 BOOLValue];
  sub_100388274(v112);
  v113 = [v133 mailboxIdentifiers];
  if (v113)
  {
    v109 = v113;
    v106 = v113;
    v107 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v108 = v107;
  }

  else
  {
    v108 = 0;
  }

  v105 = v108;
  if (v108)
  {
    v104 = v105;
    v101 = v105;
    v213 = v105;
    v102 = sub_10035E52C(v105);
    v207 = v102;
    v103 = sub_10025C9B0(&qword_1006D7020, &unk_1004FEA40);
    sub_10027D50C();
    Collection.first.getter();
    if (*(&v206[0] + 1))
    {
      v208 = v206[0];
      v24 = v149[1];
      v25 = v149[2];
      v26 = v149[3];
      v212 = v149[4];
      v211 = v26;
      v210 = v25;
      v209 = v24;

      v283 = v239;
      v282 = v238;
      v281 = v237;
      v280 = v236;
      v287 = v243;
      v286 = v242;
      v285 = v241;
      v284 = v240;
      v100 = &v208;
      v99 = v205;
      sub_10027EB5C(&v208, v205);
      sub_10038564C(v99);
      v27 = sub_10035EFF8();
      v275 = v239;
      v274 = v238;
      v273 = v237;
      v272 = v236;
      v279 = v243;
      v278 = v242;
      v277 = v241;
      v276 = v240;
      sub_100388420(v27, v28, v29);
      sub_10027D728(v100);
    }

    else
    {
      sub_10027D594(v206);
    }
  }

  v98 = [v133 attachmentPaths];
  if (v98)
  {
    v97 = v98;
    v94 = v98;
    v95 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v96 = v95;
  }

  else
  {
    v96 = 0;
  }

  v93 = v96;
  if (v96)
  {
    v92 = v93;
    v89 = v93;
    v214 = v93;
    v259 = v239;
    v258 = v238;
    v257 = v237;
    v256 = v236;
    v263 = v243;
    v262 = v242;
    v261 = v241;
    v260 = v240;
    v31 = Array<A>.asIntentFiles.getter();
    sub_1002CD004(v31);
  }

  else
  {
    v267 = v239;
    v266 = v238;
    v265 = v237;
    v264 = v236;
    v271 = v243;
    v270 = v242;
    v269 = v241;
    v268 = v240;
    v90 = 0;
    v91 = type metadata accessor for IntentFile();
    v30 = _allocateUninitializedArray<A>(_:)();
    sub_1002CD004(v30);
  }

  v88 = [v133 textContent];
  if (v88)
  {
    v87 = v88;
    v84 = v88;
    *&v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v85 + 1) = v32;

    v86 = v85;
  }

  else
  {
    v86 = 0uLL;
  }

  v228 = v86;
  v33 = v133;
  if (*(&v228 + 1))
  {
    v229 = v228;
  }

  else
  {
    v83 = [v133 contentSnippet];
    if (v83)
    {
      v82 = v83;
      v79 = v83;
      *&v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v80 + 1) = v34;

      v81 = v80;
    }

    else
    {
      v81 = 0uLL;
    }

    v229 = v81;
    if (*(&v228 + 1))
    {
      sub_100268744(&v228);
    }
  }

  v227 = v229;
  v78 = *(&v229 + 1) != 0;
  v77 = v78;
  sub_100268744(&v227);
  if (v77)
  {
    v75 = [objc_opt_self() sharedApplication];
    v74 = v75;
    objc_opt_self();
    v76 = swift_dynamicCastObjCClass();
    if (v76)
    {
      v73 = v76;
    }

    else
    {

      v73 = 0;
    }

    v72 = v73;
    if (v73)
    {
      v71 = v72;
      v68 = v72;
      v217 = v72;
      v35 = [v72 daemonInterface];
      v69 = v35;
      if (v35)
      {
        v67 = v69;
      }

      else
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      v36 = v132;
      v62 = v67;
      v37 = EMDaemonInterface.getMessageBody(mailMessageEntityID:)();
      v63 = v36;
      v64 = v37;
      v65 = v38;
      v66 = v36;
      if (v36)
      {
        v47[1] = v66;
        v48 = 0;
        v49 = 0;

        v59 = v48;
        v60 = v48;
        v61 = v49;
      }

      else
      {
        v58 = v65;
        v57 = v64;

        v59 = v57;
        v60 = v58;
        v61 = v63;
      }

      v54 = v61;
      v55 = v60;
      v56 = v59;
      if (v60)
      {
        v52 = v56;
        v53 = v55;
        v51 = v55;
        v50 = v56;
        v215 = v56;
        v216 = v55;
        v251 = v239;
        v250 = v238;
        v249 = v237;
        v248 = v236;
        v255 = v243;
        v254 = v242;
        v253 = v241;
        v252 = v240;
        sub_10037ECF8();
        AttributedString.init(_:attributes:)();
        v39 = type metadata accessor for AttributedString();
        (*(*(v39 - 8) + 56))(v155, 0, 1);
        sub_100387C50(v155);
      }

      v70 = v54;
    }

    else
    {
      v70 = v132;
    }
  }

  else
  {
    v70 = v132;
  }

  (*(v179 + 8))(v180, v177, v70);

  v222 = v239;
  v221 = v238;
  v220 = v237;
  v219 = v236;
  v226 = v243;
  v225 = v242;
  v224 = v241;
  v223 = v240;
  sub_1002E0080(&v219, v218);

  sub_10027D9CC(&v236);
  v40 = v150;
  v41 = v219;
  v42 = v220;
  v43 = v221;
  *(v150 + 48) = v222;
  *(v40 + 32) = v43;
  *(v40 + 16) = v42;
  *v40 = v41;
  result = v223;
  v45 = v224;
  v46 = v225;
  *(v40 + 112) = v226;
  *(v40 + 96) = v46;
  *(v40 + 80) = v45;
  *(v40 + 64) = result;
  return result;
}

id sub_100387098()
{
  sub_10025C6A0();
  result = sub_10025C704();
  qword_1006DA3C0 = result;
  return result;
}

uint64_t *sub_1003870CC()
{
  if (qword_1006D5F88 != -1)
  {
    swift_once();
  }

  return &qword_1006DA3C0;
}

void *sub_10038712C()
{
  v1 = *sub_1003870CC();
  _objc_retain(v1);
  return v1;
}

uint64_t sub_100387164@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v19 = sub_10025C9B0(&qword_1006DA3D8, &qword_100506400);
  v17 = *(v19 - 8);
  v18 = v19 - 8;
  v6 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v22 = &v6 - v6;
  v7 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v6 - v6);
  v16 = &v6 - v7;
  v8 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v6 - v7);
  v20 = &v6 - v8;
  v24 = sub_10027EAAC();
  v13 = 0;
  v23 = &unk_10065C028;
  EntityURLRepresentation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12 = "";
  v14 = 1;
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v13, 1);
  object = v3._object;
  EntityURLRepresentation.StringInterpolation.appendLiteral(_:)(v3);

  KeyPath = swift_getKeyPath();
  v10 = sub_10025C9B0(&qword_1006DA3E0, &qword_100506430);
  sub_10038F4CC();
  EntityURLRepresentation.StringInterpolation.appendInterpolation<A, B>(_:)();

  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v12, v13, v14 & 1);
  v15 = v4._object;
  EntityURLRepresentation.StringInterpolation.appendLiteral(_:)(v4);

  (*(v17 + 16))(v16, v20, v19);
  (*(v17 + 32))(v22, v16, v19);
  (*(v17 + 8))(v20, v19);
  return EntityURLRepresentation.init(stringInterpolation:)();
}

uint64_t sub_1003873F0()
{
  v11 = v0;
  v7 = *sub_1003870CC();
  _objc_retain(v7);
  v8 = sub_100383B20(v7);
  v9 = v1;
  _objc_release(v7);
  sub_10025C9B0(&qword_1006DA3F0, &qword_100506438);
  if (v9)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v8;
    *(v2 + 24) = v9;
    return _EntityDeferredPropertyValue.__allocating_init(get:)();
  }

  else
  {
    sub_1002E0080(__src, v10);
    v4 = swift_allocObject();
    memcpy((v4 + 16), __src, 0x80uLL);
    return _EntityDeferredPropertyValue.__allocating_init(get:)();
  }
}

void *sub_100387598@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1002E0080(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_1003873F0();
  result = __dst;
  *a2 = v2;
  sub_10027D9CC(__dst);
  return result;
}

uint64_t sub_100387600(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v4[28] = a4;
  v4[27] = a3;
  v4[26] = a1;
  v4[24] = v4;
  v4[25] = 0;
  v4[18] = 0;
  v4[19] = 0;
  memcpy(v4 + 2, a2, 0x80uLL);
  v4[25] = a2;
  v4[18] = a3;
  v4[19] = a4;

  return _swift_task_switch(sub_1003876D0, 0);
}

uint64_t sub_1003876D0()
{
  v8 = v0[28];
  v7 = v0[27];
  v9 = v0[26];
  v0[24] = v0;
  v0[20] = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v0[21] = v1;
  v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("x-apple-mail://message/", 0x17uLL, 1);
  DefaultStringInterpolation.appendLiteral(_:)(v2);

  v0[22] = v7;
  v0[23] = v8;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  DefaultStringInterpolation.appendLiteral(_:)(v3);

  sub_100268744((v0 + 20));
  *v9 = String.init(stringInterpolation:)();
  v9[1] = v4;
  v5 = *(v0[24] + 8);

  return v5();
}

uint64_t sub_100387860(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[30] = a3;
  v3[29] = a1;
  v3[26] = v3;
  v3[27] = 0;
  v3[28] = 0;
  memcpy(v3 + 2, a2, 0x80uLL);
  v3[27] = a2;
  v3[28] = a3;

  return _swift_task_switch(sub_10038791C, 0);
}

uint64_t sub_10038791C()
{
  v7 = *(v0 + 240);
  v8 = *(v0 + 232);
  *(v0 + 208) = v0;
  *(v0 + 160) = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  *(v0 + 168) = v1;
  v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("x-apple-mail://message/", 0x17uLL, 1);
  DefaultStringInterpolation.appendLiteral(_:)(v2);

  *(v0 + 144) = *v7;
  sub_100268860((v0 + 144), (v0 + 176));
  *(v0 + 192) = *(v0 + 144);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  sub_100268744(v0 + 192);
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  DefaultStringInterpolation.appendLiteral(_:)(v3);

  sub_100268744(v0 + 160);
  *v8 = String.init(stringInterpolation:)();
  v8[1] = v4;
  v5 = *(*(v0 + 208) + 8);

  return v5();
}

uint64_t sub_100387AC0()
{
  if (qword_1006D5F90 != -1)
  {
    swift_once();
  }

  return v1;
}

uint64_t sub_100387B34()
{
  if (qword_1006D5F98 != -1)
  {
    swift_once();
  }

  return v1;
}

uint64_t sub_100387BA8(uint64_t a1)
{
  v3 = type metadata accessor for IntentPerson();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_100387C50(const void *a1)
{
  v6 = a1;
  v8 = 0;
  v7 = 0;
  v3 = (*(*(sub_10025C9B0(&unk_1006D7380, &qword_100500790) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = &v3 - v3;
  v8 = __chkstk_darwin(v6);
  v7 = v1;
  v5 = *(v1 + 48);

  sub_100289B6C(v6, v4);
  EntityProperty.wrappedValue.setter();

  return sub_100285F68(v6);
}

uint64_t sub_100387D28(uint64_t a1)
{
  v9 = a1;
  v12 = 0;
  v11 = 0;
  v10 = type metadata accessor for IntentPerson();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v4 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = &v3 - v4;
  v12 = __chkstk_darwin(v9);
  v11 = v1;
  v6 = *(v1 + 64);

  (*(v7 + 16))(v5, v9, v10);
  EntityProperty.wrappedValue.setter();

  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_100387E50()
{

  EntityProperty.wrappedValue.getter();
}

uint64_t sub_100387EA4(uint64_t a1)
{
  v9 = a1;
  v12 = 0;
  v11 = 0;
  v10 = type metadata accessor for Date();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v4 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = &v3 - v4;
  v12 = __chkstk_darwin(v9);
  v11 = v1;
  v6 = *(v1 + 72);

  (*(v7 + 16))(v5, v9, v10);
  EntityProperty.wrappedValue.setter();

  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_100387FCC()
{

  EntityProperty.wrappedValue.getter();
}

uint64_t sub_100388020(uint64_t a1)
{
  v9 = a1;
  v12 = 0;
  v11 = 0;
  v10 = type metadata accessor for Date();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v4 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = &v3 - v4;
  v12 = __chkstk_darwin(v9);
  v11 = v1;
  v6 = *(v1 + 80);

  (*(v7 + 16))(v5, v9, v10);
  EntityProperty.wrappedValue.setter();

  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_100388148()
{

  EntityProperty.wrappedValue.getter();

  return v1 & 1;
}

uint64_t sub_1003881A8(char a1)
{

  EntityProperty.wrappedValue.setter();
}

uint64_t sub_100388214()
{

  EntityProperty.wrappedValue.getter();

  return v1 & 1;
}

uint64_t sub_100388274(char a1)
{

  EntityProperty.wrappedValue.setter();
}

uint64_t sub_1003882E0()
{

  EntityProperty.wrappedValue.getter();

  return v1 & 1;
}

uint64_t sub_100388340(char a1)
{

  EntityProperty.wrappedValue.setter();
}

uint64_t sub_1003883AC()
{

  EntityProperty.wrappedValue.getter();

  return v1;
}

uint64_t sub_100388420(void *a1, uint64_t a2, uint64_t a3)
{

  _objc_retain(a1);

  EntityProperty.wrappedValue.setter();

  _objc_release(a1);
}

uint64_t sub_1003884EC()
{

  EntityProperty.wrappedValue.getter();
}

uint64_t sub_100388540()
{

  v1 = EntityProperty.projectedValue.getter();

  return v1;
}

uint64_t sub_100388598()
{
  v2 = *(v0 + 120);

  return v2;
}

uint64_t sub_1003885C4(uint64_t a1)
{

  *(v1 + 120) = a1;
}

__n128 sub_100388600@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v155 = v209;
  v174 = a1;
  v156 = a2;
  v193 = 0;
  v220 = 0;
  v157 = 0u;
  v219 = 0u;
  v218 = 0u;
  v217 = 0u;
  v216 = 0u;
  v215 = 0u;
  v214 = 0u;
  v213 = 0u;
  v212 = 0u;
  v211 = 0;
  v158 = 0;
  type metadata accessor for IntentPerson.Handle.Label();
  __chkstk_darwin(0);
  v159 = &v79 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for IntentPerson.Handle();
  __chkstk_darwin(v3 - 8);
  v160 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = (*(*(sub_10025C9B0(&qword_1006DCAE0, &qword_1005063D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v193);
  v162 = &v79 - v161;
  v163 = type metadata accessor for IntentPerson();
  v164 = *(v163 - 8);
  v165 = v164;
  v166 = *(v164 + 64);
  v5 = __chkstk_darwin(v193);
  v168 = (v166 + 15) & 0xFFFFFFFFFFFFFFF0;
  v167 = &v79 - v168;
  __chkstk_darwin(v5);
  v169 = &v79 - v168;
  v220 = &v79 - v168;
  v170 = type metadata accessor for MailMessageEntityID();
  v171 = *(v170 - 8);
  v172 = v171;
  __chkstk_darwin(v193);
  v173 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = type metadata accessor for Logger();
  v175 = v188;
  v176 = *(v188 - 8);
  v187 = v176;
  v177 = v176;
  v179 = *(v176 + 64);
  v7 = __chkstk_darwin(v174);
  v181 = (v179 + 15) & 0xFFFFFFFFFFFFFFF0;
  v178 = &v79 - v181;
  v8 = __chkstk_darwin(v7);
  v180 = &v79 - v181;
  v9 = __chkstk_darwin(v8);
  v186 = &v79 - v181;
  v182 = &v79 - v181;
  v211 = v9;
  v183 = sub_10025C9B0(&qword_1006D7F38, &qword_100500798);
  *&v213 = EntityProperty<>.init()();
  *(&v213 + 1) = EntityProperty<>.init()();
  *&v214 = EntityProperty<>.init()();
  sub_10025C9B0(&unk_1006DA2D0, &qword_1005007A0);
  *(&v214 + 1) = EntityProperty<>.init()();
  sub_10025C9B0(&qword_1006D7F40, &qword_1005007A8);
  *&v215 = EntityProperty<>.init()();
  sub_10025C9B0(&qword_1006D7F48, &unk_1005007B0);
  *(&v215 + 1) = EntityProperty<>.init()();
  sub_10025C9B0(&qword_1006DA3C8, &qword_1005063D8);
  *&v216 = EntityProperty<>.init()();
  v184 = sub_10025C9B0(&qword_1006DA2E8, &unk_1005063E0);
  *(&v216 + 1) = EntityProperty<>.init()();
  *&v217 = EntityProperty<>.init()();
  v185 = sub_10025C9B0(&qword_1006DA2F0, &qword_100505F18);
  *(&v217 + 1) = EntityProperty<>.init()();
  *&v218 = EntityProperty<>.init()();
  *(&v218 + 1) = EntityProperty<>.init()();
  sub_10025C9B0(&qword_1006D7F50, &qword_1005063F0);
  sub_100264788();
  *&v219 = EntityProperty<>.init()();
  sub_10025C9B0(&qword_1006DA3D0, &qword_1005063F8);
  sub_1002DA854();
  v10 = EntityProperty<>.init()();
  v11 = v186;
  *(&v219 + 1) = v10;
  v12 = Logger.appIntentLogger.unsafeMutableAddressor();
  v189 = *(v187 + 16);
  v190 = (v187 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v189(v11, v12, v188);
  v196 = Logger.logObject.getter();
  v191 = v196;
  v195 = static os_log_type_t.info.getter();
  v192 = v195;
  v194 = sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
  v197 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v196, v195))
  {
    v13 = v158;
    v146 = static UnsafeMutablePointer.allocate(capacity:)();
    v142 = v146;
    v143 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v144 = 0;
    v147 = sub_1002641E8(0, v143, v143);
    v145 = v147;
    v148 = sub_1002641E8(v144, &type metadata for Any + 8, &type metadata for Any + 8);
    v201[0] = v146;
    v200 = v147;
    v199 = v148;
    v149 = 0;
    v150 = v201;
    sub_10026423C(0, v201);
    sub_10026423C(v149, v150);
    v198 = v197;
    v151 = &v79;
    __chkstk_darwin(&v79);
    v152 = &v79 - 3;
    *(&v79 - 4) = v14;
    *(&v79 - 3) = &v200;
    *(&v79 - 2) = &v199;
    v153 = sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
    sub_10026E6E0();
    Sequence.forEach(_:)();
    v154 = v13;
    if (v13)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&_mh_execute_header, v191, v192, "#SiriMail MailMessageEntity.init(from emMessage:)", v142, 2u);
      v140 = 0;
      sub_10026429C(v145, 0);
      sub_10026429C(v148, v140);
      UnsafeMutablePointer.deallocate()();

      v141 = v154;
    }
  }

  else
  {

    v141 = v158;
  }

  v136 = v141;

  v137 = *(v177 + 8);
  v138 = (v177 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v137(v182, v175);
  v15 = v174;
  MailMessageEntityID.init(using:)();
  *&v139 = MailMessageEntityID.encodedID.getter();
  *(&v139 + 1) = v16;
  (*(v172 + 8))(v173, v170);
  v17 = v155;
  v18 = v174;
  v212 = v139;
  v19 = v155[9];
  v20 = v155[10];
  v21 = v155[11];
  v155[45] = v155[12];
  v17[44] = v21;
  v17[43] = v20;
  v17[42] = v19;
  v22 = v17[13];
  v23 = v17[14];
  v24 = v17[15];
  v17[49] = v17[16];
  v17[48] = v24;
  v17[47] = v23;
  v17[46] = v22;
  v25 = v18;
  v210 = [v174 subject];
  if (v210)
  {
    v129 = v210;
    v26 = v210;
    sub_10026A58C(&v210);

    v131 = [v129 subjectString];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v130 = v28;
    v132 = v27;

    v133 = v130;
    v134 = v132;
    v135 = v133;
  }

  else
  {
    sub_10026A58C(&v210);

    v134 = 0;
    v135 = 0;
  }

  sub_1002CCD44(v134, v135);
  v29 = v155;
  v30 = v155[9];
  v31 = v155[10];
  v32 = v155[11];
  v155[37] = v155[12];
  v29[36] = v32;
  v29[35] = v31;
  v29[34] = v30;
  v33 = v29[13];
  v34 = v29[14];
  v35 = v29[15];
  v29[41] = v29[16];
  v29[40] = v35;
  v29[39] = v34;
  v29[38] = v33;
  v125 = 0;
  v126 = type metadata accessor for IntentFile();
  v36 = _allocateUninitializedArray<A>(_:)();
  sub_1002CD004(v36);
  v37 = v174;
  v128 = [v174 senderAddress];
  v127 = v128;

  if (v128)
  {
    v124 = v127;
    v123 = v127;
    swift_getObjectType();
    ECEmailAddressConvertible.intentPerson.getter();
    swift_unknownObjectRelease();
    (*(v165 + 56))(v162, 0, 1, v163);
  }

  else
  {
    (*(v165 + 56))(v162, 1, 1, v163);
  }

  if ((*(v165 + 48))(v162, 1, v163) == 1)
  {
    v38 = v180;
    sub_100387BA8(v162);
    v39 = Logger.appIntentLogger.unsafeMutableAddressor();
    v189(v38, v39, v175);
    v121 = Logger.logObject.getter();
    v118 = v121;
    v120 = static os_log_type_t.error.getter();
    v119 = v120;
    v122 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v121, v120))
    {
      v55 = v136;
      v87 = static UnsafeMutablePointer.allocate(capacity:)();
      v83 = v87;
      v84 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v85 = 0;
      v88 = sub_1002641E8(0, v84, v84);
      v86 = v88;
      v89 = sub_1002641E8(v85, &type metadata for Any + 8, &type metadata for Any + 8);
      v207 = v87;
      v206 = v88;
      v205 = v89;
      v90 = 0;
      v91 = &v207;
      sub_10026423C(0, &v207);
      sub_10026423C(v90, v91);
      v204[2] = v122;
      v92 = &v79;
      __chkstk_darwin(&v79);
      v93 = &v79 - 3;
      *(&v79 - 4) = v56;
      *(&v79 - 3) = &v206;
      *(&v79 - 2) = &v205;
      v94 = sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
      sub_10026E6E0();
      Sequence.forEach(_:)();
      v95 = v55;
      if (v55)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v118, v119, "#SiriMail MailMessageEntity.init(from emMessage:) EMMessage senderAddress is nil. This is unexpected, but resolving the sender to a blank person to avoid crash.", v83, 2u);
        v81 = 0;
        sub_10026429C(v86, 0);
        sub_10026429C(v89, v81);
        UnsafeMutablePointer.deallocate()();

        v82 = v95;
      }
    }

    else
    {

      v82 = v136;
    }

    v80 = v82;

    v137(v180, v175);
    v57 = v155;
    v58 = v155[9];
    v59 = v155[10];
    v60 = v155[11];
    v155[29] = v155[12];
    v57[28] = v60;
    v57[27] = v59;
    v57[26] = v58;
    v61 = v57[13];
    v62 = v57[14];
    v63 = v57[15];
    v57[33] = v57[16];
    v57[32] = v63;
    v57[31] = v62;
    v57[30] = v61;
    v79 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
    sub_100389794(v159);
    IntentPerson.Handle.init(emailAddress:label:)();
    IntentPerson.init(handle:)();
    sub_100387D28(v167);
    v97 = v80;
  }

  else
  {
    v40 = v178;
    (*(v165 + 32))(v169, v162, v163);
    v41 = Logger.appIntentLogger.unsafeMutableAddressor();
    v189(v40, v41, v175);
    v116 = Logger.logObject.getter();
    v113 = v116;
    v115 = static os_log_type_t.info.getter();
    v114 = v115;
    v117 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v116, v115))
    {
      v42 = v136;
      v104 = static UnsafeMutablePointer.allocate(capacity:)();
      v100 = v104;
      v101 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v102 = 0;
      v105 = sub_1002641E8(0, v101, v101);
      v103 = v105;
      v106 = sub_1002641E8(v102, &type metadata for Any + 8, &type metadata for Any + 8);
      v204[0] = v104;
      v203 = v105;
      v202 = v106;
      v107 = 0;
      v108 = v204;
      sub_10026423C(0, v204);
      sub_10026423C(v107, v108);
      v201[1] = v117;
      v109 = &v79;
      __chkstk_darwin(&v79);
      v110 = &v79 - 3;
      *(&v79 - 4) = v43;
      *(&v79 - 3) = &v203;
      *(&v79 - 2) = &v202;
      v111 = sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
      sub_10026E6E0();
      Sequence.forEach(_:)();
      v112 = v42;
      if (v42)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v113, v114, "#SiriMail MailMessageEntity.init(from emMessage:) resolved sender to a real person", v100, 2u);
        v98 = 0;
        sub_10026429C(v103, 0);
        sub_10026429C(v106, v98);
        UnsafeMutablePointer.deallocate()();

        v99 = v112;
      }
    }

    else
    {

      v99 = v136;
    }

    v96 = v99;

    v137(v178, v175);
    v44 = v155;
    v45 = v167;
    v46 = v165;
    v47 = v169;
    v48 = v163;
    v49 = v155[9];
    v50 = v155[10];
    v51 = v155[11];
    v155[21] = v155[12];
    v44[20] = v51;
    v44[19] = v50;
    v44[18] = v49;
    v52 = v44[13];
    v53 = v44[14];
    v54 = v44[15];
    v44[25] = v44[16];
    v44[24] = v54;
    v44[23] = v53;
    v44[22] = v52;
    (*(v46 + 16))(v45, v47, v48);
    sub_100387D28(v167);
    (*(v165 + 8))(v169, v163);
    v97 = v96;
  }

  v64 = v155;
  v65 = v155[9];
  v66 = v155[10];
  v67 = v155[11];
  v155[3] = v155[12];
  v64[2] = v67;
  v64[1] = v66;
  *v64 = v65;
  v68 = v64[13];
  v69 = v64[14];
  v70 = v64[15];
  v64[7] = v64[16];
  v64[6] = v70;
  v64[5] = v69;
  v64[4] = v68;
  sub_1002E0080(v209, v208);

  sub_10027D9CC(&v212);
  v71 = v155;
  v72 = v156;
  v73 = *v155;
  v74 = v155[1];
  v75 = v155[2];
  *(v156 + 48) = v155[3];
  *(v72 + 32) = v75;
  *(v72 + 16) = v74;
  *v72 = v73;
  result = v71[4];
  v77 = v71[5];
  v78 = v71[6];
  *(v72 + 112) = v71[7];
  *(v72 + 96) = v78;
  *(v72 + 80) = v77;
  *(v72 + 64) = result;
  return result;
}

uint64_t sub_100389794@<X0>(uint64_t a1@<X8>)
{
  v3 = enum case for IntentPerson.Handle.Label.other(_:);
  v1 = type metadata accessor for IntentPerson.Handle.Label();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t sub_100389838(uint64_t a1)
{
  sub_10038F6E8();
  v1 = URLRepresentableEntity.urlRepresentationParameter.getter();
  v2 = *(v4 + 8);

  return v2(v1);
}

uint64_t sub_1003898C8(uint64_t a1)
{
  v1[30] = a1;
  v1[11] = v1;
  v1[12] = 0;
  v1[13] = 0;
  v1[5] = 0;
  v1[6] = 0;
  v1[9] = 0;
  v1[10] = 0;
  sub_10025C9B0(&qword_1006D7DF0, &qword_100500800);
  v1[31] = swift_task_alloc();
  v2 = type metadata accessor for MailMessageEntityID();
  v1[32] = v2;
  v1[33] = *(v2 - 8);
  v1[34] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[35] = v3;
  v1[36] = *(v3 - 8);
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[12] = a1;
  type metadata accessor for MainActor();
  v1[41] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[42] = v7;
  v1[43] = v4;

  return _swift_task_switch(sub_100389AFC, v7);
}

uint64_t sub_100389AFC()
{
  v108 = v0;
  v1 = v0[40];
  v98 = v0[36];
  v99 = v0[35];
  v0[11] = v0;
  v2 = Logger.appIntentLogger.unsafeMutableAddressor();
  v3 = *(v98 + 16);
  v0[44] = v3;
  v0[45] = (v98 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v3(v1, v2, v99);
  v101 = Logger.logObject.getter();
  v100 = static os_log_type_t.info.getter();
  v0[46] = sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
  v102 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v101, v100))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v92 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v94 = sub_1002641E8(0, v92, v92);
    v95 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
    *(v97 + 208) = buf;
    *(v97 + 216) = v94;
    *(v97 + 224) = v95;
    sub_10026423C(0, (v97 + 208));
    sub_10026423C(0, (v97 + 208));
    *(v97 + 232) = v102;
    v96 = swift_task_alloc();
    v96[2] = v97 + 208;
    v96[3] = v97 + 216;
    v96[4] = v97 + 224;
    sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
    sub_10026E6E0();
    Sequence.forEach(_:)();

    _os_log_impl(&_mh_execute_header, v101, v100, "#SiriMail MailMessageEntityQuery.entities(for identifiers:)", buf, 2u);
    sub_10026429C(v94, 0);
    sub_10026429C(v95, 0);
    UnsafeMutablePointer.deallocate()();

    v91 = 0;
  }

  else
  {
  }

  v86 = *(v97 + 320);
  v87 = *(v97 + 280);
  v88 = *(v97 + 240);
  v85 = *(v97 + 288);
  _objc_release(v101);
  v4 = *(v85 + 8);
  *(v97 + 376) = v4;
  *(v97 + 384) = (v85 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v86, v87);
  *(v97 + 104) = _allocateUninitializedArray<A>(_:)();

  *(v97 + 112) = v88;
  sub_10025C9B0(&unk_1006D69B0, &unk_100503A00);
  sub_1002B76F0();
  Collection<>.makeIterator()();
  v89 = 0;
  for (i = v91; ; i = v69)
  {
    sub_10025C9B0(&qword_1006D7F98, qword_100500890);
    IndexingIterator.next()();
    v83 = *(v97 + 56);
    v84 = *(v97 + 64);
    *(v97 + 392) = v84;
    if (!v84)
    {
      break;
    }

    v82 = *(v97 + 256);
    v81 = *(v97 + 248);
    v80 = *(v97 + 264);
    *(v97 + 72) = v83;
    *(v97 + 80) = v84;

    MailMessageEntityID.init(with:)();
    if ((*(v80 + 48))(v81, 1, v82) == 1)
    {
      v55 = *(v97 + 352);
      v17 = *(v97 + 304);
      v54 = *(v97 + 280);
      sub_1002C1698(*(v97 + 248));
      v18 = Logger.appIntentLogger.unsafeMutableAddressor();
      v55(v17, v18, v54);
      log = Logger.logObject.getter();
      v56 = static os_log_type_t.info.getter();
      v58 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(log, v56))
      {
        v50 = static UnsafeMutablePointer.allocate(capacity:)();
        v49 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
        v51 = sub_1002641E8(0, v49, v49);
        v52 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
        *(v97 + 128) = v50;
        *(v97 + 136) = v51;
        *(v97 + 144) = v52;
        sub_10026423C(0, (v97 + 128));
        sub_10026423C(0, (v97 + 128));
        *(v97 + 152) = v58;
        v53 = swift_task_alloc();
        v53[2] = v97 + 128;
        v53[3] = v97 + 136;
        v53[4] = v97 + 144;
        sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
        sub_10026E6E0();
        Sequence.forEach(_:)();

        _os_log_impl(&_mh_execute_header, log, v56, "#SiriMail MailMessageEntityQuery fetching messages using mailMessageID or conversationID", v50, 2u);
        sub_10026429C(v51, 0);
        sub_10026429C(v52, 0);
        UnsafeMutablePointer.deallocate()();
      }

      v46 = *(v97 + 376);
      v44 = *(v97 + 304);
      v45 = *(v97 + 280);
      _objc_release(log);
      v46(v44, v45);
      type metadata accessor for CSQueryBuilder();
      CSQueryBuilder.__allocating_init()();
      dispatch thunk of CSQueryBuilder.addIDPredicate(_:)();

      dispatch thunk of CSQueryBuilder.addConversationIDPredicate(_:)();

      v48 = dispatch thunk of CSQueryBuilder.buildOr()();
      v47 = v19;
      *(v97 + 464) = v19;

      v20 = swift_task_alloc();
      v9 = v47;
      v10 = v83;
      v11 = v84;
      v21 = v20;
      v13 = v48;
      *(v97 + 472) = v21;
      *v21 = *(v97 + 88);
      v21[1] = sub_10038D714;

      return sub_1002B78F4(v13, v9, v10, v11);
    }

    v76 = *(v97 + 352);
    v5 = *(v97 + 312);
    v75 = *(v97 + 280);
    (*(*(v97 + 264) + 32))(*(v97 + 272), *(v97 + 248), *(v97 + 256));
    v6 = Logger.appIntentLogger.unsafeMutableAddressor();
    v76(v5, v6, v75);
    oslog = Logger.logObject.getter();
    v77 = static os_log_type_t.info.getter();
    v79 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v77))
    {
      v71 = static UnsafeMutablePointer.allocate(capacity:)();
      v70 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v72 = sub_1002641E8(0, v70, v70);
      v73 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v97 + 176) = v71;
      *(v97 + 184) = v72;
      *(v97 + 192) = v73;
      sub_10026423C(0, (v97 + 176));
      sub_10026423C(0, (v97 + 176));
      *(v97 + 200) = v79;
      v74 = swift_task_alloc();
      v74[2] = v97 + 176;
      v74[3] = v97 + 184;
      v74[4] = v97 + 192;
      sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, oslog, v77, "#SiriMail MailMessageEntityQuery fetching messages using MailMessageEntityID", v71, 2u);
      sub_10026429C(v72, 0);
      sub_10026429C(v73, 0);
      UnsafeMutablePointer.deallocate()();

      v68 = 0;
      v69 = 0;
    }

    else
    {

      v68 = v89;
      v69 = i;
    }

    v66 = *(v97 + 376);
    v64 = *(v97 + 312);
    v65 = *(v97 + 280);
    _objc_release(oslog);
    v66(v64, v65);
    MailMessageEntityID.version.getter();
    static MailMessageEntityID.Version.mailEntityVersion.getter();
    v67 = static String.== infix(_:_:)();

    if (v67)
    {
      type metadata accessor for CSQueryBuilder();
      CSQueryBuilder.__allocating_init()();
      MailMessageEntityID.mailMessageID.getter();
      dispatch thunk of CSQueryBuilder.addIDPredicate(_:)();

      v63 = dispatch thunk of CSQueryBuilder.build()();
      v62 = v7;
      *(v97 + 400) = v7;

      v8 = swift_task_alloc();
      v9 = v62;
      v10 = v83;
      v11 = v84;
      v12 = v8;
      v13 = v63;
      *(v97 + 408) = v12;
      *v12 = *(v97 + 88);
      v12[1] = sub_10038B02C;

      return sub_1002B78F4(v13, v9, v10, v11);
    }

    MailMessageEntityID.version.getter();
    static MailMessageEntityID.Version.searchIndexerEntityVersion.getter();
    v61 = static String.== infix(_:_:)();

    if (v61)
    {
      type metadata accessor for CSQueryBuilder();
      CSQueryBuilder.__allocating_init()();
      MailMessageEntityID.encodedID.getter();
      dispatch thunk of CSQueryBuilder.addAppEntityIDPredicate(_:)();

      v60 = dispatch thunk of CSQueryBuilder.build()();
      v59 = v15;
      *(v97 + 432) = v15;

      v16 = swift_task_alloc();
      *(v97 + 440) = v16;
      *v16 = *(v97 + 88);
      v16[1] = sub_10038C3A0;

      return sub_1002B82C0(v60, v59, v83, v84);
    }

    (*(*(v97 + 264) + 8))(*(v97 + 272), *(v97 + 256));

    v89 = v68;
  }

  v34 = *(v97 + 352);
  v22 = *(v97 + 296);
  v33 = *(v97 + 280);
  sub_100264880((v97 + 40));
  v23 = Logger.appIntentLogger.unsafeMutableAddressor();
  v34(v22, v23, v33);
  v35 = *(v97 + 104);

  v36 = swift_allocObject();
  *(v36 + 16) = v35;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.info.getter();
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  v39 = swift_allocObject();
  *(v39 + 16) = 8;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_10038F764;
  *(v37 + 24) = v36;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_10026E818;
  *(v40 + 24) = v37;
  _allocateUninitializedArray<A>(_:)();
  v41 = v24;

  *v41 = sub_10026434C;
  v41[1] = v38;

  v41[2] = sub_10026434C;
  v41[3] = v39;

  v41[4] = sub_10026EBF8;
  v41[5] = v40;
  sub_1002612B0();

  if (os_log_type_enabled(v42, v43))
  {
    v30 = static UnsafeMutablePointer.allocate(capacity:)();
    v29 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v31 = sub_1002641E8(0, v29, v29);
    v32 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
    v103 = v30;
    v104 = v31;
    v105 = v32;
    sub_10026423C(0, &v103);
    sub_10026423C(1, &v103);
    v106 = sub_10026434C;
    v107 = v38;
    sub_100264250(&v106, &v103, &v104, &v105);
    v106 = sub_10026434C;
    v107 = v39;
    sub_100264250(&v106, &v103, &v104, &v105);
    v106 = sub_10026EBF8;
    v107 = v40;
    sub_100264250(&v106, &v103, &v104, &v105);
    _os_log_impl(&_mh_execute_header, v42, v43, "#SiriMail MailMessageEntityQuery.entities(for identifiers:) returning %ld search results", v30, 0xCu);
    sub_10026429C(v31, 0);
    sub_10026429C(v32, 0);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v27 = *(v97 + 376);
  v28 = *(v97 + 296);
  v26 = *(v97 + 280);
  _objc_release(v42);
  v27(v28, v26);
  swift_beginAccess();
  swift_endAccess();
  sub_100264880((v97 + 104));

  v25 = *(*(v97 + 88) + 8);

  return v25(v35);
}

uint64_t sub_10038B02C(uint64_t a1)
{
  v6 = *v2;
  v6[11] = *v2;
  v6[52] = a1;
  v6[53] = v1;

  if (v1)
  {
    v3 = v6[42];
    v4 = sub_10038EA8C;
  }

  else
  {

    v3 = v6[42];
    v4 = sub_10038B1C8;
  }

  return _swift_task_switch(v4, v3);
}

uint64_t sub_10038B1C8()
{
  v90 = v0;
  v1 = v0[52];
  v0[11] = v0;
  v0[21] = v1;
  sub_10025C9B0(&unk_1006D6FF0, &unk_1004FEA30);
  sub_10027D6A0();
  Array.append<A>(contentsOf:)();
  v84 = v0[53];
  while (1)
  {
    (*(*(v83 + 264) + 8))(*(v83 + 272), *(v83 + 256));

    sub_10025C9B0(&qword_1006D7F98, qword_100500890);
    IndexingIterator.next()();
    v78 = *(v83 + 56);
    v79 = *(v83 + 64);
    *(v83 + 392) = v79;
    if (!v79)
    {
      break;
    }

    v82 = *(v83 + 256);
    v81 = *(v83 + 248);
    v80 = *(v83 + 264);
    *(v83 + 72) = v78;
    *(v83 + 80) = v79;

    MailMessageEntityID.init(with:)();
    if ((*(v80 + 48))(v81, 1, v82) == 1)
    {
      v52 = *(v83 + 352);
      v14 = *(v83 + 304);
      v51 = *(v83 + 280);
      sub_1002C1698(*(v83 + 248));
      v15 = Logger.appIntentLogger.unsafeMutableAddressor();
      v52(v14, v15, v51);
      oslog = Logger.logObject.getter();
      v53 = static os_log_type_t.info.getter();
      v55 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(oslog, v53))
      {
        v47 = static UnsafeMutablePointer.allocate(capacity:)();
        v46 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
        v48 = sub_1002641E8(0, v46, v46);
        v49 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
        *(v83 + 128) = v47;
        *(v83 + 136) = v48;
        *(v83 + 144) = v49;
        sub_10026423C(0, (v83 + 128));
        sub_10026423C(0, (v83 + 128));
        *(v83 + 152) = v55;
        v50 = swift_task_alloc();
        v50[2] = v83 + 128;
        v50[3] = v83 + 136;
        v50[4] = v83 + 144;
        sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
        sub_10026E6E0();
        Sequence.forEach(_:)();
        if (v84)
        {
        }

        _os_log_impl(&_mh_execute_header, oslog, v53, "#SiriMail MailMessageEntityQuery fetching messages using mailMessageID or conversationID", v47, 2u);
        sub_10026429C(v48, 0);
        sub_10026429C(v49, 0);
        UnsafeMutablePointer.deallocate()();
      }

      else
      {
      }

      v43 = *(v83 + 376);
      v41 = *(v83 + 304);
      v42 = *(v83 + 280);
      _objc_release(oslog);
      v43(v41, v42);
      type metadata accessor for CSQueryBuilder();
      CSQueryBuilder.__allocating_init()();
      dispatch thunk of CSQueryBuilder.addIDPredicate(_:)();

      dispatch thunk of CSQueryBuilder.addConversationIDPredicate(_:)();

      v45 = dispatch thunk of CSQueryBuilder.buildOr()();
      v44 = v16;
      *(v83 + 464) = v16;

      v17 = swift_task_alloc();
      v7 = v44;
      v8 = v78;
      v9 = v79;
      v18 = v17;
      v11 = v45;
      *(v83 + 472) = v18;
      *v18 = *(v83 + 88);
      v18[1] = sub_10038D714;

      return sub_1002B78F4(v11, v7, v8, v9);
    }

    v74 = *(v83 + 352);
    v2 = *(v83 + 312);
    v73 = *(v83 + 280);
    (*(*(v83 + 264) + 32))(*(v83 + 272), *(v83 + 248), *(v83 + 256));
    v3 = Logger.appIntentLogger.unsafeMutableAddressor();
    v74(v2, v3, v73);
    v76 = Logger.logObject.getter();
    v75 = static os_log_type_t.info.getter();
    v77 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v76, v75))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v68 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v70 = sub_1002641E8(0, v68, v68);
      v71 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v83 + 176) = buf;
      *(v83 + 184) = v70;
      *(v83 + 192) = v71;
      sub_10026423C(0, (v83 + 176));
      sub_10026423C(0, (v83 + 176));
      *(v83 + 200) = v77;
      v72 = swift_task_alloc();
      v72[2] = v83 + 176;
      v72[3] = v83 + 184;
      v72[4] = v83 + 192;
      sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
      sub_10026E6E0();
      Sequence.forEach(_:)();
      if (v84)
      {
      }

      _os_log_impl(&_mh_execute_header, v76, v75, "#SiriMail MailMessageEntityQuery fetching messages using MailMessageEntityID", buf, 2u);
      sub_10026429C(v70, 0);
      sub_10026429C(v71, 0);
      UnsafeMutablePointer.deallocate()();

      v66 = 0;
      v67 = 0;
    }

    else
    {

      v66 = v84;
      v67 = v56;
    }

    v64 = *(v83 + 376);
    v62 = *(v83 + 312);
    v63 = *(v83 + 280);
    _objc_release(v76);
    v64(v62, v63);
    MailMessageEntityID.version.getter();
    static MailMessageEntityID.Version.mailEntityVersion.getter();
    v65 = static String.== infix(_:_:)();

    if (v65)
    {
      type metadata accessor for CSQueryBuilder();
      CSQueryBuilder.__allocating_init()();
      MailMessageEntityID.mailMessageID.getter();
      dispatch thunk of CSQueryBuilder.addIDPredicate(_:)();

      v61 = dispatch thunk of CSQueryBuilder.build()();
      v60 = v5;
      *(v83 + 400) = v5;

      v6 = swift_task_alloc();
      v7 = v60;
      v8 = v78;
      v9 = v79;
      v10 = v6;
      v11 = v61;
      *(v83 + 408) = v10;
      *v10 = *(v83 + 88);
      v10[1] = sub_10038B02C;

      return sub_1002B78F4(v11, v7, v8, v9);
    }

    MailMessageEntityID.version.getter();
    static MailMessageEntityID.Version.searchIndexerEntityVersion.getter();
    v59 = static String.== infix(_:_:)();

    if (v59)
    {
      type metadata accessor for CSQueryBuilder();
      CSQueryBuilder.__allocating_init()();
      MailMessageEntityID.encodedID.getter();
      dispatch thunk of CSQueryBuilder.addAppEntityIDPredicate(_:)();

      v58 = dispatch thunk of CSQueryBuilder.build()();
      v57 = v12;
      *(v83 + 432) = v12;

      v13 = swift_task_alloc();
      *(v83 + 440) = v13;
      *v13 = *(v83 + 88);
      v13[1] = sub_10038C3A0;

      return sub_1002B82C0(v58, v57, v78, v79);
    }

    v84 = v66;
    v56 = v67;
  }

  v31 = *(v83 + 352);
  v19 = *(v83 + 296);
  v30 = *(v83 + 280);
  sub_100264880((v83 + 40));
  v20 = Logger.appIntentLogger.unsafeMutableAddressor();
  v31(v19, v20, v30);
  v32 = *(v83 + 104);

  v33 = swift_allocObject();
  *(v33 + 16) = v32;
  log = Logger.logObject.getter();
  v40 = static os_log_type_t.info.getter();
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = 8;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_10038F764;
  *(v34 + 24) = v33;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_10026E818;
  *(v37 + 24) = v34;
  _allocateUninitializedArray<A>(_:)();
  v38 = v21;

  *v38 = sub_10026434C;
  v38[1] = v35;

  v38[2] = sub_10026434C;
  v38[3] = v36;

  v38[4] = sub_10026EBF8;
  v38[5] = v37;
  sub_1002612B0();

  if (os_log_type_enabled(log, v40))
  {
    v27 = static UnsafeMutablePointer.allocate(capacity:)();
    v26 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v28 = sub_1002641E8(0, v26, v26);
    v29 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
    v85 = v27;
    v86 = v28;
    v87 = v29;
    sub_10026423C(0, &v85);
    sub_10026423C(1, &v85);
    v88 = sub_10026434C;
    v89 = v35;
    sub_100264250(&v88, &v85, &v86, &v87);
    if (v84)
    {
    }

    v88 = sub_10026434C;
    v89 = v36;
    sub_100264250(&v88, &v85, &v86, &v87);
    v88 = sub_10026EBF8;
    v89 = v37;
    sub_100264250(&v88, &v85, &v86, &v87);
    _os_log_impl(&_mh_execute_header, log, v40, "#SiriMail MailMessageEntityQuery.entities(for identifiers:) returning %ld search results", v27, 0xCu);
    sub_10026429C(v28, 0);
    sub_10026429C(v29, 0);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v24 = *(v83 + 376);
  v25 = *(v83 + 296);
  v23 = *(v83 + 280);
  _objc_release(log);
  v24(v25, v23);
  swift_beginAccess();
  swift_endAccess();
  sub_100264880((v83 + 104));

  v22 = *(*(v83 + 88) + 8);

  return v22(v32);
}

uint64_t sub_10038C3A0(uint64_t a1)
{
  v6 = *v2;
  v6[11] = *v2;
  v6[56] = a1;
  v6[57] = v1;

  if (v1)
  {
    v3 = v6[42];
    v4 = sub_10038EC00;
  }

  else
  {

    v3 = v6[42];
    v4 = sub_10038C53C;
  }

  return _swift_task_switch(v4, v3);
}

uint64_t sub_10038C53C()
{
  v90 = v0;
  v1 = v0[56];
  v0[11] = v0;
  v0[20] = v1;
  sub_10025C9B0(&unk_1006D6FF0, &unk_1004FEA30);
  sub_10027D6A0();
  Array.append<A>(contentsOf:)();
  v84 = v0[57];
  while (1)
  {
    (*(*(v83 + 264) + 8))(*(v83 + 272), *(v83 + 256));

    sub_10025C9B0(&qword_1006D7F98, qword_100500890);
    IndexingIterator.next()();
    v78 = *(v83 + 56);
    v79 = *(v83 + 64);
    *(v83 + 392) = v79;
    if (!v79)
    {
      break;
    }

    v82 = *(v83 + 256);
    v81 = *(v83 + 248);
    v80 = *(v83 + 264);
    *(v83 + 72) = v78;
    *(v83 + 80) = v79;

    MailMessageEntityID.init(with:)();
    if ((*(v80 + 48))(v81, 1, v82) == 1)
    {
      v52 = *(v83 + 352);
      v14 = *(v83 + 304);
      v51 = *(v83 + 280);
      sub_1002C1698(*(v83 + 248));
      v15 = Logger.appIntentLogger.unsafeMutableAddressor();
      v52(v14, v15, v51);
      oslog = Logger.logObject.getter();
      v53 = static os_log_type_t.info.getter();
      v55 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(oslog, v53))
      {
        v47 = static UnsafeMutablePointer.allocate(capacity:)();
        v46 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
        v48 = sub_1002641E8(0, v46, v46);
        v49 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
        *(v83 + 128) = v47;
        *(v83 + 136) = v48;
        *(v83 + 144) = v49;
        sub_10026423C(0, (v83 + 128));
        sub_10026423C(0, (v83 + 128));
        *(v83 + 152) = v55;
        v50 = swift_task_alloc();
        v50[2] = v83 + 128;
        v50[3] = v83 + 136;
        v50[4] = v83 + 144;
        sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
        sub_10026E6E0();
        Sequence.forEach(_:)();
        if (v84)
        {
        }

        _os_log_impl(&_mh_execute_header, oslog, v53, "#SiriMail MailMessageEntityQuery fetching messages using mailMessageID or conversationID", v47, 2u);
        sub_10026429C(v48, 0);
        sub_10026429C(v49, 0);
        UnsafeMutablePointer.deallocate()();
      }

      else
      {
      }

      v43 = *(v83 + 376);
      v41 = *(v83 + 304);
      v42 = *(v83 + 280);
      _objc_release(oslog);
      v43(v41, v42);
      type metadata accessor for CSQueryBuilder();
      CSQueryBuilder.__allocating_init()();
      dispatch thunk of CSQueryBuilder.addIDPredicate(_:)();

      dispatch thunk of CSQueryBuilder.addConversationIDPredicate(_:)();

      v45 = dispatch thunk of CSQueryBuilder.buildOr()();
      v44 = v16;
      *(v83 + 464) = v16;

      v17 = swift_task_alloc();
      v7 = v44;
      v8 = v78;
      v9 = v79;
      v18 = v17;
      v11 = v45;
      *(v83 + 472) = v18;
      *v18 = *(v83 + 88);
      v18[1] = sub_10038D714;

      return sub_1002B78F4(v11, v7, v8, v9);
    }

    v74 = *(v83 + 352);
    v2 = *(v83 + 312);
    v73 = *(v83 + 280);
    (*(*(v83 + 264) + 32))(*(v83 + 272), *(v83 + 248), *(v83 + 256));
    v3 = Logger.appIntentLogger.unsafeMutableAddressor();
    v74(v2, v3, v73);
    v76 = Logger.logObject.getter();
    v75 = static os_log_type_t.info.getter();
    v77 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v76, v75))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v68 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v70 = sub_1002641E8(0, v68, v68);
      v71 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v83 + 176) = buf;
      *(v83 + 184) = v70;
      *(v83 + 192) = v71;
      sub_10026423C(0, (v83 + 176));
      sub_10026423C(0, (v83 + 176));
      *(v83 + 200) = v77;
      v72 = swift_task_alloc();
      v72[2] = v83 + 176;
      v72[3] = v83 + 184;
      v72[4] = v83 + 192;
      sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
      sub_10026E6E0();
      Sequence.forEach(_:)();
      if (v84)
      {
      }

      _os_log_impl(&_mh_execute_header, v76, v75, "#SiriMail MailMessageEntityQuery fetching messages using MailMessageEntityID", buf, 2u);
      sub_10026429C(v70, 0);
      sub_10026429C(v71, 0);
      UnsafeMutablePointer.deallocate()();

      v66 = 0;
      v67 = 0;
    }

    else
    {

      v66 = v84;
      v67 = v56;
    }

    v64 = *(v83 + 376);
    v62 = *(v83 + 312);
    v63 = *(v83 + 280);
    _objc_release(v76);
    v64(v62, v63);
    MailMessageEntityID.version.getter();
    static MailMessageEntityID.Version.mailEntityVersion.getter();
    v65 = static String.== infix(_:_:)();

    if (v65)
    {
      type metadata accessor for CSQueryBuilder();
      CSQueryBuilder.__allocating_init()();
      MailMessageEntityID.mailMessageID.getter();
      dispatch thunk of CSQueryBuilder.addIDPredicate(_:)();

      v61 = dispatch thunk of CSQueryBuilder.build()();
      v60 = v5;
      *(v83 + 400) = v5;

      v6 = swift_task_alloc();
      v7 = v60;
      v8 = v78;
      v9 = v79;
      v10 = v6;
      v11 = v61;
      *(v83 + 408) = v10;
      *v10 = *(v83 + 88);
      v10[1] = sub_10038B02C;

      return sub_1002B78F4(v11, v7, v8, v9);
    }

    MailMessageEntityID.version.getter();
    static MailMessageEntityID.Version.searchIndexerEntityVersion.getter();
    v59 = static String.== infix(_:_:)();

    if (v59)
    {
      type metadata accessor for CSQueryBuilder();
      CSQueryBuilder.__allocating_init()();
      MailMessageEntityID.encodedID.getter();
      dispatch thunk of CSQueryBuilder.addAppEntityIDPredicate(_:)();

      v58 = dispatch thunk of CSQueryBuilder.build()();
      v57 = v12;
      *(v83 + 432) = v12;

      v13 = swift_task_alloc();
      *(v83 + 440) = v13;
      *v13 = *(v83 + 88);
      v13[1] = sub_10038C3A0;

      return sub_1002B82C0(v58, v57, v78, v79);
    }

    v84 = v66;
    v56 = v67;
  }

  v31 = *(v83 + 352);
  v19 = *(v83 + 296);
  v30 = *(v83 + 280);
  sub_100264880((v83 + 40));
  v20 = Logger.appIntentLogger.unsafeMutableAddressor();
  v31(v19, v20, v30);
  v32 = *(v83 + 104);

  v33 = swift_allocObject();
  *(v33 + 16) = v32;
  log = Logger.logObject.getter();
  v40 = static os_log_type_t.info.getter();
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = 8;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_10038F764;
  *(v34 + 24) = v33;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_10026E818;
  *(v37 + 24) = v34;
  _allocateUninitializedArray<A>(_:)();
  v38 = v21;

  *v38 = sub_10026434C;
  v38[1] = v35;

  v38[2] = sub_10026434C;
  v38[3] = v36;

  v38[4] = sub_10026EBF8;
  v38[5] = v37;
  sub_1002612B0();

  if (os_log_type_enabled(log, v40))
  {
    v27 = static UnsafeMutablePointer.allocate(capacity:)();
    v26 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v28 = sub_1002641E8(0, v26, v26);
    v29 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
    v85 = v27;
    v86 = v28;
    v87 = v29;
    sub_10026423C(0, &v85);
    sub_10026423C(1, &v85);
    v88 = sub_10026434C;
    v89 = v35;
    sub_100264250(&v88, &v85, &v86, &v87);
    if (v84)
    {
    }

    v88 = sub_10026434C;
    v89 = v36;
    sub_100264250(&v88, &v85, &v86, &v87);
    v88 = sub_10026EBF8;
    v89 = v37;
    sub_100264250(&v88, &v85, &v86, &v87);
    _os_log_impl(&_mh_execute_header, log, v40, "#SiriMail MailMessageEntityQuery.entities(for identifiers:) returning %ld search results", v27, 0xCu);
    sub_10026429C(v28, 0);
    sub_10026429C(v29, 0);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v24 = *(v83 + 376);
  v25 = *(v83 + 296);
  v23 = *(v83 + 280);
  _objc_release(log);
  v24(v25, v23);
  swift_beginAccess();
  swift_endAccess();
  sub_100264880((v83 + 104));

  v22 = *(*(v83 + 88) + 8);

  return v22(v32);
}

uint64_t sub_10038D714(uint64_t a1)
{
  v6 = *v2;
  v6[11] = *v2;
  v6[60] = a1;
  v6[61] = v1;

  if (v1)
  {
    v3 = v6[42];
    v4 = sub_10038ED78;
  }

  else
  {

    v3 = v6[42];
    v4 = sub_10038D8B0;
  }

  return _swift_task_switch(v4, v3);
}

uint64_t sub_10038D8B0()
{
  v90 = v0;
  v1 = v0[60];
  v0[11] = v0;
  v0[15] = v1;
  sub_10025C9B0(&unk_1006D6FF0, &unk_1004FEA30);
  sub_10027D6A0();
  Array.append<A>(contentsOf:)();
  v84 = v0[61];
  while (1)
  {

    sub_10025C9B0(&qword_1006D7F98, qword_100500890);
    IndexingIterator.next()();
    v78 = *(v83 + 56);
    v79 = *(v83 + 64);
    *(v83 + 392) = v79;
    if (!v79)
    {
      break;
    }

    v82 = *(v83 + 256);
    v81 = *(v83 + 248);
    v80 = *(v83 + 264);
    *(v83 + 72) = v78;
    *(v83 + 80) = v79;

    MailMessageEntityID.init(with:)();
    if ((*(v80 + 48))(v81, 1, v82) == 1)
    {
      v52 = *(v83 + 352);
      v14 = *(v83 + 304);
      v51 = *(v83 + 280);
      sub_1002C1698(*(v83 + 248));
      v15 = Logger.appIntentLogger.unsafeMutableAddressor();
      v52(v14, v15, v51);
      oslog = Logger.logObject.getter();
      v53 = static os_log_type_t.info.getter();
      v55 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(oslog, v53))
      {
        v47 = static UnsafeMutablePointer.allocate(capacity:)();
        v46 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
        v48 = sub_1002641E8(0, v46, v46);
        v49 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
        *(v83 + 128) = v47;
        *(v83 + 136) = v48;
        *(v83 + 144) = v49;
        sub_10026423C(0, (v83 + 128));
        sub_10026423C(0, (v83 + 128));
        *(v83 + 152) = v55;
        v50 = swift_task_alloc();
        v50[2] = v83 + 128;
        v50[3] = v83 + 136;
        v50[4] = v83 + 144;
        sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
        sub_10026E6E0();
        Sequence.forEach(_:)();
        if (v84)
        {
        }

        _os_log_impl(&_mh_execute_header, oslog, v53, "#SiriMail MailMessageEntityQuery fetching messages using mailMessageID or conversationID", v47, 2u);
        sub_10026429C(v48, 0);
        sub_10026429C(v49, 0);
        UnsafeMutablePointer.deallocate()();
      }

      else
      {
      }

      v43 = *(v83 + 376);
      v41 = *(v83 + 304);
      v42 = *(v83 + 280);
      _objc_release(oslog);
      v43(v41, v42);
      type metadata accessor for CSQueryBuilder();
      CSQueryBuilder.__allocating_init()();
      dispatch thunk of CSQueryBuilder.addIDPredicate(_:)();

      dispatch thunk of CSQueryBuilder.addConversationIDPredicate(_:)();

      v45 = dispatch thunk of CSQueryBuilder.buildOr()();
      v44 = v16;
      *(v83 + 464) = v16;

      v17 = swift_task_alloc();
      v7 = v44;
      v8 = v78;
      v9 = v79;
      v18 = v17;
      v11 = v45;
      *(v83 + 472) = v18;
      *v18 = *(v83 + 88);
      v18[1] = sub_10038D714;

      return sub_1002B78F4(v11, v7, v8, v9);
    }

    v74 = *(v83 + 352);
    v2 = *(v83 + 312);
    v73 = *(v83 + 280);
    (*(*(v83 + 264) + 32))(*(v83 + 272), *(v83 + 248), *(v83 + 256));
    v3 = Logger.appIntentLogger.unsafeMutableAddressor();
    v74(v2, v3, v73);
    v76 = Logger.logObject.getter();
    v75 = static os_log_type_t.info.getter();
    v77 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v76, v75))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v68 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v70 = sub_1002641E8(0, v68, v68);
      v71 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v83 + 176) = buf;
      *(v83 + 184) = v70;
      *(v83 + 192) = v71;
      sub_10026423C(0, (v83 + 176));
      sub_10026423C(0, (v83 + 176));
      *(v83 + 200) = v77;
      v72 = swift_task_alloc();
      v72[2] = v83 + 176;
      v72[3] = v83 + 184;
      v72[4] = v83 + 192;
      sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
      sub_10026E6E0();
      Sequence.forEach(_:)();
      if (v84)
      {
      }

      _os_log_impl(&_mh_execute_header, v76, v75, "#SiriMail MailMessageEntityQuery fetching messages using MailMessageEntityID", buf, 2u);
      sub_10026429C(v70, 0);
      sub_10026429C(v71, 0);
      UnsafeMutablePointer.deallocate()();

      v66 = 0;
      v67 = 0;
    }

    else
    {

      v66 = v84;
      v67 = v56;
    }

    v64 = *(v83 + 376);
    v62 = *(v83 + 312);
    v63 = *(v83 + 280);
    _objc_release(v76);
    v64(v62, v63);
    MailMessageEntityID.version.getter();
    static MailMessageEntityID.Version.mailEntityVersion.getter();
    v65 = static String.== infix(_:_:)();

    if (v65)
    {
      type metadata accessor for CSQueryBuilder();
      CSQueryBuilder.__allocating_init()();
      MailMessageEntityID.mailMessageID.getter();
      dispatch thunk of CSQueryBuilder.addIDPredicate(_:)();

      v61 = dispatch thunk of CSQueryBuilder.build()();
      v60 = v5;
      *(v83 + 400) = v5;

      v6 = swift_task_alloc();
      v7 = v60;
      v8 = v78;
      v9 = v79;
      v10 = v6;
      v11 = v61;
      *(v83 + 408) = v10;
      *v10 = *(v83 + 88);
      v10[1] = sub_10038B02C;

      return sub_1002B78F4(v11, v7, v8, v9);
    }

    MailMessageEntityID.version.getter();
    static MailMessageEntityID.Version.searchIndexerEntityVersion.getter();
    v59 = static String.== infix(_:_:)();

    if (v59)
    {
      type metadata accessor for CSQueryBuilder();
      CSQueryBuilder.__allocating_init()();
      MailMessageEntityID.encodedID.getter();
      dispatch thunk of CSQueryBuilder.addAppEntityIDPredicate(_:)();

      v58 = dispatch thunk of CSQueryBuilder.build()();
      v57 = v12;
      *(v83 + 432) = v12;

      v13 = swift_task_alloc();
      *(v83 + 440) = v13;
      *v13 = *(v83 + 88);
      v13[1] = sub_10038C3A0;

      return sub_1002B82C0(v58, v57, v78, v79);
    }

    (*(*(v83 + 264) + 8))(*(v83 + 272), *(v83 + 256));
    v84 = v66;
    v56 = v67;
  }

  v31 = *(v83 + 352);
  v19 = *(v83 + 296);
  v30 = *(v83 + 280);
  sub_100264880((v83 + 40));
  v20 = Logger.appIntentLogger.unsafeMutableAddressor();
  v31(v19, v20, v30);
  v32 = *(v83 + 104);

  v33 = swift_allocObject();
  *(v33 + 16) = v32;
  log = Logger.logObject.getter();
  v40 = static os_log_type_t.info.getter();
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = 8;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_10038F764;
  *(v34 + 24) = v33;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_10026E818;
  *(v37 + 24) = v34;
  _allocateUninitializedArray<A>(_:)();
  v38 = v21;

  *v38 = sub_10026434C;
  v38[1] = v35;

  v38[2] = sub_10026434C;
  v38[3] = v36;

  v38[4] = sub_10026EBF8;
  v38[5] = v37;
  sub_1002612B0();

  if (os_log_type_enabled(log, v40))
  {
    v27 = static UnsafeMutablePointer.allocate(capacity:)();
    v26 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v28 = sub_1002641E8(0, v26, v26);
    v29 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
    v85 = v27;
    v86 = v28;
    v87 = v29;
    sub_10026423C(0, &v85);
    sub_10026423C(1, &v85);
    v88 = sub_10026434C;
    v89 = v35;
    sub_100264250(&v88, &v85, &v86, &v87);
    if (v84)
    {
    }

    v88 = sub_10026434C;
    v89 = v36;
    sub_100264250(&v88, &v85, &v86, &v87);
    v88 = sub_10026EBF8;
    v89 = v37;
    sub_100264250(&v88, &v85, &v86, &v87);
    _os_log_impl(&_mh_execute_header, log, v40, "#SiriMail MailMessageEntityQuery.entities(for identifiers:) returning %ld search results", v27, 0xCu);
    sub_10026429C(v28, 0);
    sub_10026429C(v29, 0);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v24 = *(v83 + 376);
  v25 = *(v83 + 296);
  v23 = *(v83 + 280);
  _objc_release(log);
  v24(v25, v23);
  swift_beginAccess();
  swift_endAccess();
  sub_100264880((v83 + 104));

  v22 = *(*(v83 + 88) + 8);

  return v22(v32);
}

uint64_t sub_10038EA8C()
{
  v4 = v0[34];
  v3 = v0[33];
  v5 = v0[32];
  v0[11] = v0;

  (*(v3 + 8))(v4, v5);

  sub_100264880(v0 + 5);
  sub_100264880(v0 + 13);

  v1 = *(v0[11] + 8);

  return v1();
}

uint64_t sub_10038EC00()
{
  v4 = v0[34];
  v3 = v0[33];
  v5 = v0[32];
  v0[11] = v0;

  (*(v3 + 8))(v4, v5);

  sub_100264880(v0 + 5);
  sub_100264880(v0 + 13);

  v1 = *(v0[11] + 8);

  return v1();
}

uint64_t sub_10038ED78()
{
  v0[11] = v0;

  sub_100264880(v0 + 5);
  sub_100264880(v0 + 13);

  v1 = *(v0[11] + 8);

  return v1();
}

uint64_t sub_10038EEB8(uint64_t a1)
{

  v2 = Array.count.getter();

  return v2;
}

uint64_t sub_10038EF10(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_100260618;

  return sub_1003898C8(a1);
}

uint64_t sub_10038EFC4(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  v4 = sub_10038F76C();
  *v3 = *(v6 + 16);
  v3[1] = sub_1002609F0;

  return EntityQuery.results()(a1, a2, v4);
}

uint64_t sub_10038F08C()
{
  v3[1] = 0;
  v13 = type metadata accessor for AssistantSchema.EntitySchema();
  v8 = *(v13 - 8);
  v9 = v13 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = __chkstk_darwin(0);
  v12 = v3 - v4;
  v5 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v10 = v3 - v5;
  v7 = type metadata accessor for AssistantSchema();
  v6 = qword_1006F00C0;
  sub_10002094C(v7, qword_1006F00C0);
  v11 = sub_1000208F4(v7, v6);
  sub_100261018();
  sub_10038F1CC();
  (*(v8 + 8))(v10, v13);
  return AssistantSchema.init<A>(_:)();
}

uint64_t sub_10038F1CC()
{
  if (!sub_10047E218(18, 0, 0))
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Do not reference schema types directly", 0x26uLL, 1);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MailMessageEntity", 0x11uLL, 1);
  return AssistantSchema.EntitySchema.init(_:)();
}

uint64_t sub_10038F2A4()
{
  if (qword_1006D5FA0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for AssistantSchema();
  return sub_1000208F4(v0, qword_1006F00C0);
}

uint64_t sub_10038F310@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10038F2A4();
  v1 = type metadata accessor for AssistantSchema();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_10038F38C@<X0>(uint64_t *a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  result = InstantAnswerView.Model.Flight.travelDate.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10038F4CC()
{
  v2 = qword_1006DA3E8;
  if (!qword_1006DA3E8)
  {
    sub_10025CAA4(&qword_1006DA3F0, &qword_100506438);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA3E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10038F554(uint64_t a1, const void *a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_10025FAC4;

  return sub_100387860(a1, a2, v2 + 16);
}

uint64_t sub_10038F614(uint64_t a1, const void *a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_10025FAC4;

  return sub_100387600(a1, a2, v8, v9);
}

unint64_t sub_10038F6E8()
{
  v2 = qword_1006DB530;
  if (!qword_1006DB530)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB530);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10038F76C()
{
  v2 = qword_1006DA3F8;
  if (!qword_1006DA3F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA3F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10038F7E8()
{
  v2 = qword_1006DA400;
  if (!qword_1006DA400)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA400);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10038F864()
{
  v2 = qword_1006DA408;
  if (!qword_1006DA408)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA408);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10038F8F8()
{
  v2 = qword_1006DA410;
  if (!qword_1006DA410)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA410);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10038F98C()
{
  v2 = qword_1006DA418;
  if (!qword_1006DA418)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA418);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10038FA20()
{
  v2 = qword_1006DA420;
  if (!qword_1006DA420)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA420);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10038FAB4()
{
  v2 = qword_1006DA428;
  if (!qword_1006DA428)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA428);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10038FB44()
{
  v2 = qword_1006DB550;
  if (!qword_1006DB550)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB550);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10038FBD8()
{
  v2 = qword_1006DA430;
  if (!qword_1006DA430)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA430);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10038FC6C()
{
  v2 = qword_1006DA438;
  if (!qword_1006DA438)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA438);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10038FD00()
{
  v2 = qword_1006DA440;
  if (!qword_1006DA440)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA440);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10038FDAC()
{
  v2 = qword_1006DA448;
  if (!qword_1006DA448)
  {
    sub_10025CAA4(&unk_1006D6FF0, &unk_1004FEA30);
    sub_10027D1BC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA448);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10038FE5C()
{
  v2 = qword_1006DA450;
  if (!qword_1006DA450)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA450);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10038FEF0()
{
  v2 = qword_1006DA458;
  if (!qword_1006DA458)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA458);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10038FF84()
{
  v2 = qword_1006DA460;
  if (!qword_1006DA460)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA460);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100390030()
{
  v2 = qword_1006DA468;
  if (!qword_1006DA468)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA468);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003900C4()
{
  v2 = qword_1006DA470;
  if (!qword_1006DA470)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA470);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100390170()
{
  v2 = qword_1006DA478;
  if (!qword_1006DA478)
  {
    sub_10025CAA4(&qword_1006DA480, &qword_100506888);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA478);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100390210()
{
  v2 = qword_1006DA488;
  if (!qword_1006DA488)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA488);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003902BC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 128))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*(a1 + 8) < &_mh_execute_header)
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1003903FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
    *(result + 96) = 0;
    *(result + 104) = 0;
    *(result + 112) = 0;
    *(result + 120) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_100390624()
{
  v1 = type metadata accessor for Logger();
  sub_10002094C(v1, qword_1006F00D8);
  sub_1000208F4(v1, qword_1006F00D8);
  return static Logger.mailUILogger<A>(for:)();
}

uint64_t sub_100390680()
{
  if (qword_1006D5FA8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return sub_1000208F4(v0, qword_1006F00D8);
}

uint64_t sub_1003906EC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100390680();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100390750()
{
  v1 = sub_10025C9B0(&qword_1006DA490, &qword_100506A20);
  sub_10002094C(v1, qword_1006F00F0);
  sub_1000208F4(v1, qword_1006F00F0);
  type metadata accessor for MailMessageQueryComparator();
  sub_1002B9DE4();
  return EntityQueryProperties.init(properties:)();
}

uint64_t sub_1003907F0()
{
  sub_10025C9B0(&qword_1006DA4E0, &qword_100506C20);
  swift_getKeyPath();
  EntityQueryProperty.__allocating_init<>(_:comparators:)();
  sub_1002B9DE4();
  v2 = static EntityQueryPropertiesBuilder.buildExpression(_:)();

  sub_10025C9B0(&qword_1006DA4E8, &qword_100506C50);
  swift_getKeyPath();
  EntityQueryProperty.__allocating_init<>(_:comparators:)();
  v3 = static EntityQueryPropertiesBuilder.buildExpression(_:)();

  sub_10025C9B0(&qword_1006DA4F0, &qword_100506C80);
  swift_getKeyPath();
  EntityQueryProperty.__allocating_init<>(_:comparators:)();
  v4 = static EntityQueryPropertiesBuilder.buildExpression(_:)();

  sub_10025C9B0(&qword_1006DA4F8, &qword_100506CB0);
  swift_getKeyPath();
  EntityQueryProperty.__allocating_init<>(_:comparators:)();
  v5 = static EntityQueryPropertiesBuilder.buildExpression(_:)();

  sub_10025C9B0(&qword_1006DA500, &qword_100506CE0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  v0[3] = v5;
  sub_1002612B0();
  type metadata accessor for MailMessageQueryComparator();
  v6 = static EntityQueryPropertiesBuilder.buildBlock(_:)();

  return v6;
}

void *sub_100390AB4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1003814E0(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_10035FC50();
  result = __dst;
  *a2 = v2;
  sub_1003816C8(__dst);
  return result;
}

uint64_t sub_100390B1C()
{
  v3[1] = 0;
  v3[2] = sub_100390D2C;
  v9 = 0;
  v7 = sub_10025C9B0(&qword_1006DA540, &qword_100506D28);
  v4 = *(v7 - 8);
  v5 = v7 - 8;
  v3[0] = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v6 = v3 - v3[0];
  v9 = v3 - v3[0];
  sub_10025C9B0(&qword_1006DA548, &unk_100506D30);
  v3[3] = EqualToComparator.__allocating_init(mappingTransform:)();
  v3[8] = sub_1002B9DE4();
  v3[5] = &unk_10065BD90;
  static EntityQueryComparatorsBuilder.buildExpression(_:)();

  v3[4] = _allocateUninitializedArray<A>(_:)();
  (*(v4 + 16))(v0, v6, v7);
  sub_1002612B0();
  v3[9] = v1;
  v3[6] = sub_10025C9B0(&qword_1006DA2F0, &qword_100505F18);
  v3[7] = type metadata accessor for MailMessageQueryComparator();
  sub_1003424B8();
  v8 = static EntityQueryComparatorsBuilder.buildBlock(_:)();

  (*(v4 + 8))(v6, v7);
  return v8;
}

uint64_t sub_100390D2C@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = *a1;
  v4 = enum case for MailMessageQueryComparator.isRead(_:);
  Comparator = type metadata accessor for MailMessageQueryComparator();
  return (*(*(Comparator - 8) + 104))(a2, v4);
}

void *sub_100390DB4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1003814E0(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_1002CCDCC();
  result = __dst;
  *a2 = v2;
  sub_1003816C8(__dst);
  return result;
}

uint64_t sub_100390E1C()
{
  v3[1] = 0;
  v3[2] = sub_10039102C;
  v9 = 0;
  v7 = sub_10025C9B0(&qword_1006DA530, &qword_100506D10);
  v4 = *(v7 - 8);
  v5 = v7 - 8;
  v3[0] = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v6 = v3 - v3[0];
  v9 = v3 - v3[0];
  sub_10025C9B0(&qword_1006DA538, &qword_100506D18);
  v3[3] = EqualToComparator.__allocating_init(mappingTransform:)();
  v3[8] = sub_1002B9DE4();
  v3[5] = &unk_10065BD90;
  static EntityQueryComparatorsBuilder.buildExpression(_:)();

  v3[4] = _allocateUninitializedArray<A>(_:)();
  (*(v4 + 16))(v0, v6, v7);
  sub_1002612B0();
  v3[9] = v1;
  v3[6] = sub_10025C9B0(&qword_1006DA2E0, &qword_100506D20);
  v3[7] = type metadata accessor for MailMessageQueryComparator();
  sub_100352270();
  v8 = static EntityQueryComparatorsBuilder.buildBlock(_:)();

  (*(v4 + 8))(v6, v7);
  return v8;
}

uint64_t sub_10039102C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v7 = *(a1 + 1);
  v10 = sub_10034F07C(*a1, v9, a1[2], a1[3]);
  v11 = v2;
  v3 = sub_10034F2C8(v8, v9, v7, *(&v7 + 1));
  *a2 = v10;
  a2[1] = v11;
  a2[2] = v3;
  a2[3] = v4;
  v12 = enum case for MailMessageQueryComparator.senderEquals(_:);
  Comparator = type metadata accessor for MailMessageQueryComparator();
  return (*(*(Comparator - 8) + 104))(a2, v12);
}

void *sub_10039111C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1003814E0(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_1002CCBC4();
  result = __dst;
  *a2 = v2;
  sub_1003816C8(__dst);
  return result;
}

uint64_t sub_100391184()
{
  v5 = 0;
  v6 = sub_1003913A8;
  v20 = 0;
  v18 = sub_10025C9B0(&qword_1006DA520, &qword_100506D00);
  v15 = *(v18 - 8);
  v16 = v18 - 8;
  v4 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v18);
  v17 = &v3 - v4;
  v20 = &v3 - v4;
  sub_10025C9B0(&qword_1006DA528, &qword_100506D08);
  v7 = EqualToComparator.__allocating_init(mappingTransform:)();
  v13 = sub_1002B9DE4();
  v9 = &unk_10065BD90;
  static EntityQueryComparatorsBuilder.buildExpression(_:)();

  v8 = _allocateUninitializedArray<A>(_:)();
  (*(v15 + 16))(v0, v17, v18);
  sub_1002612B0();
  v14 = v1;
  v10 = sub_10025C9B0(&unk_1006DA2D0, &qword_1005007A0);
  v11 = sub_10025C9B0(&unk_1006D7340, &unk_1005039F0);
  Comparator = type metadata accessor for MailMessageQueryComparator();
  sub_10028DF54();
  v19 = static EntityQueryComparatorsBuilder.buildBlock(_:)();

  (*(v15 + 8))(v17, v18);
  return v19;
}

uint64_t sub_1003913A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];

  *a2 = v4;
  a2[1] = v5;
  v6 = enum case for MailMessageQueryComparator.subject(_:);
  Comparator = type metadata accessor for MailMessageQueryComparator();
  return (*(*(Comparator - 8) + 104))(a2, v6);
}

void *sub_10039144C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1003814E0(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_1002CD180();
  result = __dst;
  *a2 = v2;
  sub_1003816C8(__dst);
  return result;
}

uint64_t sub_1003914B4()
{
  v3[1] = 0;
  v3[2] = sub_1003916D4;
  v9 = 0;
  v7 = sub_10025C9B0(&qword_1006DA508, &qword_100506CE8);
  v4 = *(v7 - 8);
  v5 = v7 - 8;
  v3[0] = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v6 = v3 - v3[0];
  v9 = v3 - v3[0];
  sub_10025C9B0(&qword_1006DA510, &qword_100506CF0);
  v3[3] = IsBetweenComparator.__allocating_init(mappingTransform:)();
  v3[10] = sub_1002B9DE4();
  v3[6] = &unk_10065BD90;
  static EntityQueryComparatorsBuilder.buildExpression(_:)();

  v3[4] = _allocateUninitializedArray<A>(_:)();
  (*(v4 + 16))(v0, v6, v7);
  sub_1002612B0();
  v3[11] = v1;
  v3[7] = sub_10025C9B0(&qword_1006DA2E8, &unk_1005063E0);
  v3[5] = 0;
  v3[8] = type metadata accessor for Date();
  v3[9] = type metadata accessor for MailMessageQueryComparator();
  sub_100341FD8();
  v8 = static EntityQueryComparatorsBuilder.buildBlock(_:)();

  (*(v4 + 8))(v6, v7);
  return v8;
}

uint64_t sub_1003916D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(sub_10025C9B0(&qword_1006DA518, &qword_100506CF8) + 48);
  v8 = type metadata accessor for Date();
  v9 = *(*(v8 - 8) + 16);
  v9(a3, a1);
  (v9)(a3 + v6, a2, v8);
  v10 = enum case for MailMessageQueryComparator.withinDateRange(_:);
  Comparator = type metadata accessor for MailMessageQueryComparator();
  return (*(*(Comparator - 8) + 104))(a3, v10);
}

uint64_t sub_1003917E8()
{
  if (qword_1006D5FB0 != -1)
  {
    swift_once();
  }

  v0 = sub_10025C9B0(&qword_1006DA490, &qword_100506A20);
  return sub_1000208F4(v0, qword_1006F00F0);
}

uint64_t sub_100391860@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1003917E8();
  v1 = sub_10025C9B0(&qword_1006DA490, &qword_100506A20);
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1003918D0()
{
  v1 = sub_10025C9B0(&qword_1006DA498, &qword_100506A28);
  sub_10002094C(v1, qword_1006F0108);
  sub_1000208F4(v1, qword_1006F0108);
  sub_1002B9DE4();
  return EntityQuerySortingOptions.init(content:)();
}

uint64_t sub_100391960()
{
  v20 = 0;
  v16 = sub_10025C9B0(&qword_1006DA4D0, &qword_100506BE8);
  v9 = *(v16 - 8);
  v10 = v16 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v16);
  v8 = &v4 - v5;
  v6 = (v0 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v4 - v5);
  v15 = &v4 - v6;
  v20 = &v4 - v6;
  KeyPath = swift_getKeyPath();
  v13 = sub_1002B9DE4();
  sub_1003947B8();
  EntityQuerySortableByProperty.init<A>(_:)();
  v12 = &unk_10065BD90;
  static EntityQuerySortingOptionsBuilder.buildExpression(_:)();
  v18 = *(v9 + 8);
  v17 = v9 + 8;
  v18(v8, v16);
  v11 = _allocateUninitializedArray<A>(_:)();
  (*(v9 + 16))(v1, v15, v16);
  sub_1002612B0();
  v14 = v2;
  v19 = static EntityQuerySortingOptionsBuilder.buildBlock(_:)();

  v18(v15, v16);
  return v19;
}

void *sub_100391B40@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1003814E0(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_1002CD318();
  result = __dst;
  *a2 = v2;
  sub_1003816C8(__dst);
  return result;
}

uint64_t sub_100391BA8()
{
  if (qword_1006D5FB8 != -1)
  {
    swift_once();
  }

  v0 = sub_10025C9B0(&qword_1006DA498, &qword_100506A28);
  return sub_1000208F4(v0, qword_1006F0108);
}

uint64_t sub_100391C20@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100391BA8();
  v1 = sub_10025C9B0(&qword_1006DA498, &qword_100506A28);
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100391C90(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 80) = a1;
  *(v5 + 48) = v5;
  *(v5 + 56) = 0;
  *(v5 + 192) = 0;
  *(v5 + 64) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 72) = 0;
  v6 = type metadata accessor for Logger();
  *(v5 + 88) = v6;
  *(v5 + 96) = *(v6 - 8);
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 56) = a1;
  *(v5 + 192) = a2 & 1;
  *(v5 + 64) = a3;
  *(v5 + 32) = a4;
  *(v5 + 40) = a5 & 1;

  return _swift_task_switch(sub_100391E28, 0);
}

uint64_t sub_100391E28()
{
  v34 = v0;
  v1 = v0[14];
  v17 = v0[12];
  v18 = v0[11];
  v0[6] = v0;
  v19 = Array<A>.mailMessageQuery.getter();
  v20 = v2;
  v0[15] = v2;
  v0[2] = v19;
  v0[3] = v2;
  v3 = sub_100390680();
  v4 = *(v17 + 16);
  v0[16] = v4;
  v0[17] = (v17 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v4(v1, v3, v18);

  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  *(v21 + 24) = v20;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();
  v23 = swift_allocObject();
  *(v23 + 16) = 32;
  v24 = swift_allocObject();
  *(v24 + 16) = 8;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_100392E00;
  *(v22 + 24) = v21;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_10026EE84;
  *(v25 + 24) = v22;
  v0[18] = sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
  _allocateUninitializedArray<A>(_:)();
  v26 = v5;

  *v26 = sub_10026434C;
  v26[1] = v23;

  v26[2] = sub_10026434C;
  v26[3] = v24;

  v26[4] = sub_10026EF2C;
  v26[5] = v25;
  sub_1002612B0();

  if (os_log_type_enabled(v27, v28))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v12 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v14 = sub_1002641E8(0, v12, v12);
    v15 = sub_1002641E8(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v29 = buf;
    v30 = v14;
    v31 = v15;
    sub_10026423C(2, &v29);
    sub_10026423C(1, &v29);
    v32 = sub_10026434C;
    v33 = v23;
    sub_100264250(&v32, &v29, &v30, &v31);
    v32 = sub_10026434C;
    v33 = v24;
    sub_100264250(&v32, &v29, &v30, &v31);
    v32 = sub_10026EF2C;
    v33 = v25;
    sub_100264250(&v32, &v29, &v30, &v31);
    _os_log_impl(&_mh_execute_header, v27, v28, "#SiriMail MailMessageQuery.entities(matching comparators:) executing query: %s", buf, 0xCu);
    sub_10026429C(v14, 0);
    sub_10026429C(v15, 1);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v10 = v16[14];
  v11 = v16[11];
  v9 = v16[12];
  _objc_release(v27);
  v6 = *(v9 + 8);
  v16[19] = v6;
  v16[20] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v10, v11);
  v7 = swift_task_alloc();
  v16[21] = v7;
  *v7 = v16[6];
  v7[1] = sub_100392504;

  return sub_1002B8ACC(v19, v20, 0, 0);
}

uint64_t sub_100392504(uint64_t a1)
{
  v5 = *v2;
  v5[6] = *v2;
  v5[22] = a1;
  v5[23] = v1;

  if (v1)
  {
    v3 = sub_100392D18;
  }

  else
  {
    v3 = sub_100392674;
  }

  return _swift_task_switch(v3, 0);
}

uint64_t sub_100392674()
{
  v32 = v0;
  v18 = v0[22];
  v17 = v0[16];
  v1 = v0[13];
  v16 = v0[11];
  v0[6] = v0;
  v0[9] = v18;
  v2 = sub_100390680();
  v17(v1, v2, v16);

  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  v22 = swift_allocObject();
  *(v22 + 16) = 8;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1003944A0;
  *(v20 + 24) = v19;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_10026E818;
  *(v23 + 24) = v20;
  _allocateUninitializedArray<A>(_:)();
  v24 = v3;

  *v24 = sub_10026434C;
  v24[1] = v21;

  v24[2] = sub_10026434C;
  v24[3] = v22;

  v24[4] = sub_10026EBF8;
  v24[5] = v23;
  sub_1002612B0();

  if (os_log_type_enabled(v25, v26))
  {
    v4 = v15[23];
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v11 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v13 = sub_1002641E8(0, v11, v11);
    v14 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
    v27 = buf;
    v28 = v13;
    v29 = v14;
    sub_10026423C(0, &v27);
    sub_10026423C(1, &v27);
    v30 = sub_10026434C;
    v31 = v21;
    sub_100264250(&v30, &v27, &v28, &v29);
    if (v4)
    {
    }

    v30 = sub_10026434C;
    v31 = v22;
    sub_100264250(&v30, &v27, &v28, &v29);
    v30 = sub_10026EBF8;
    v31 = v23;
    sub_100264250(&v30, &v27, &v28, &v29);
    _os_log_impl(&_mh_execute_header, v25, v26, "#SiriMail MailMessageQuery.entities(matching comparators:) returning %ld results", buf, 0xCu);
    sub_10026429C(v13, 0);
    sub_10026429C(v14, 0);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v9 = v15[19];
  v10 = v15[13];
  v8 = v15[11];
  _objc_release(v25);
  v9(v10, v8);

  v6 = *(v15[6] + 8);
  v7 = v15[22];

  return v6(v7);
}

uint64_t sub_100392D18()
{
  *(v0 + 48) = v0;

  v1 = *(*(v0 + 48) + 8);

  return v1();
}

uint64_t sub_100392E2C(uint64_t a1)
{
  v1[16] = a1;
  v1[11] = v1;
  v1[12] = 0;
  v1[13] = 0;
  v1[5] = 0;
  v1[6] = 0;
  v1[9] = 0;
  v1[10] = 0;
  v2 = type metadata accessor for Logger();
  v1[17] = v2;
  v1[18] = *(v2 - 8);
  v1[19] = swift_task_alloc();
  v1[12] = a1;
  type metadata accessor for MainActor();
  v1[20] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[21] = v6;
  v1[22] = v3;

  return _swift_task_switch(sub_100392F78, v6);
}

uint64_t sub_100392F78()
{
  v37 = v0;
  v29 = v0[16];
  v0[11] = v0;
  v0[13] = _allocateUninitializedArray<A>(_:)();

  v0[14] = v29;
  sub_10025C9B0(&unk_1006D69B0, &unk_100503A00);
  sub_1002B76F0();
  Collection<>.makeIterator()();
  sub_10025C9B0(&qword_1006D7F98, qword_100500890);
  IndexingIterator.next()();
  v30 = v0[7];
  v31 = v0[8];
  v0[23] = v31;
  if (v31)
  {
    v28[9] = v30;
    v28[10] = v31;
    type metadata accessor for CSQueryBuilder();
    CSQueryBuilder.__allocating_init()();
    String.mailMessageID.getter();
    dispatch thunk of CSQueryBuilder.addIDPredicate(_:)();

    v27 = dispatch thunk of CSQueryBuilder.build()();
    v26 = v1;
    v28[24] = v1;

    v2 = swift_task_alloc();
    v28[25] = v2;
    *v2 = v28[11];
    v2[1] = sub_10039375C;

    return sub_1002B8ACC(v27, v26, 0, 0);
  }

  else
  {
    v4 = v28[19];
    v16 = v28[17];
    v15 = v28[18];
    sub_100264880(v28 + 5);
    v5 = sub_100390680();
    (*(v15 + 16))(v4, v5, v16);
    v17 = v28[13];

    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    v21 = swift_allocObject();
    *(v21 + 16) = 8;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_1003944A8;
    *(v19 + 24) = v18;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_10026E818;
    *(v22 + 24) = v19;
    sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
    _allocateUninitializedArray<A>(_:)();
    v23 = v6;

    *v23 = sub_10026434C;
    v23[1] = v20;

    v23[2] = sub_10026434C;
    v23[3] = v21;

    v23[4] = sub_10026EBF8;
    v23[5] = v22;
    sub_1002612B0();

    if (os_log_type_enabled(v24, v25))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v11 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v13 = sub_1002641E8(0, v11, v11);
      v14 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
      v32 = buf;
      v33 = v13;
      v34 = v14;
      sub_10026423C(0, &v32);
      sub_10026423C(1, &v32);
      v35 = sub_10026434C;
      v36 = v20;
      sub_100264250(&v35, &v32, &v33, &v34);
      v35 = sub_10026434C;
      v36 = v21;
      sub_100264250(&v35, &v32, &v33, &v34);
      v35 = sub_10026EBF8;
      v36 = v22;
      sub_100264250(&v35, &v32, &v33, &v34);
      _os_log_impl(&_mh_execute_header, v24, v25, "#SiriMail MailMessageQuery.entities(for identifiers:) returning %ld search results", buf, 0xCu);
      sub_10026429C(v13, 0);
      sub_10026429C(v14, 0);
      UnsafeMutablePointer.deallocate()();
    }

    else
    {
    }

    v10 = v28[19];
    v9 = v28[17];
    v8 = v28[18];
    _objc_release(v24);
    (*(v8 + 8))(v10, v9);
    swift_beginAccess();
    swift_endAccess();
    sub_100264880(v28 + 13);

    v7 = *(v28[11] + 8);

    return v7(v17);
  }
}

uint64_t sub_10039375C(uint64_t a1)
{
  v6 = *v2;
  v6[11] = *v2;
  v6[26] = a1;
  v6[27] = v1;

  if (v1)
  {
    v3 = v6[21];
    v4 = sub_1003940C8;
  }

  else
  {

    v3 = v6[21];
    v4 = sub_1003938E8;
  }

  return _swift_task_switch(v4, v3);
}

uint64_t sub_1003938E8()
{
  v38 = v0;
  v1 = v0[26];
  v0[11] = v0;
  v0[15] = v1;
  sub_10025C9B0(&qword_1006DA4A0, qword_100506A40);
  sub_1003944B0();
  Array.append<A>(contentsOf:)();

  v30 = v0[27];
  sub_10025C9B0(&qword_1006D7F98, qword_100500890);
  IndexingIterator.next()();
  v31 = v0[7];
  v32 = v0[8];
  v0[23] = v32;
  if (v32)
  {
    v29[9] = v31;
    v29[10] = v32;
    type metadata accessor for CSQueryBuilder();
    CSQueryBuilder.__allocating_init()();
    String.mailMessageID.getter();
    dispatch thunk of CSQueryBuilder.addIDPredicate(_:)();

    v28 = dispatch thunk of CSQueryBuilder.build()();
    v27 = v2;
    v29[24] = v2;

    v3 = swift_task_alloc();
    v29[25] = v3;
    *v3 = v29[11];
    v3[1] = sub_10039375C;

    return sub_1002B8ACC(v28, v27, 0, 0);
  }

  else
  {
    v5 = v29[19];
    v17 = v29[17];
    v16 = v29[18];
    sub_100264880(v29 + 5);
    v6 = sub_100390680();
    (*(v16 + 16))(v5, v6, v17);
    v18 = v29[13];

    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    v22 = swift_allocObject();
    *(v22 + 16) = 8;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_1003944A8;
    *(v20 + 24) = v19;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_10026E818;
    *(v23 + 24) = v20;
    sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
    _allocateUninitializedArray<A>(_:)();
    v24 = v7;

    *v24 = sub_10026434C;
    v24[1] = v21;

    v24[2] = sub_10026434C;
    v24[3] = v22;

    v24[4] = sub_10026EBF8;
    v24[5] = v23;
    sub_1002612B0();

    if (os_log_type_enabled(v25, v26))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v12 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v14 = sub_1002641E8(0, v12, v12);
      v15 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
      v33 = buf;
      v34 = v14;
      v35 = v15;
      sub_10026423C(0, &v33);
      sub_10026423C(1, &v33);
      v36 = sub_10026434C;
      v37 = v21;
      sub_100264250(&v36, &v33, &v34, &v35);
      if (v30)
      {
      }

      v36 = sub_10026434C;
      v37 = v22;
      sub_100264250(&v36, &v33, &v34, &v35);
      v36 = sub_10026EBF8;
      v37 = v23;
      sub_100264250(&v36, &v33, &v34, &v35);
      _os_log_impl(&_mh_execute_header, v25, v26, "#SiriMail MailMessageQuery.entities(for identifiers:) returning %ld search results", buf, 0xCu);
      sub_10026429C(v14, 0);
      sub_10026429C(v15, 0);
      UnsafeMutablePointer.deallocate()();
    }

    else
    {
    }

    v11 = v29[19];
    v10 = v29[17];
    v9 = v29[18];
    _objc_release(v25);
    (*(v9 + 8))(v11, v10);
    swift_beginAccess();
    swift_endAccess();
    sub_100264880(v29 + 13);

    v8 = *(v29[11] + 8);

    return v8(v18);
  }
}

uint64_t sub_1003940C8()
{
  v0[11] = v0;

  sub_100264880(v0 + 5);
  sub_100264880(v0 + 13);

  v1 = *(*(v3 + 88) + 8);

  return v1();
}

uint64_t sub_1003941A8(uint64_t a1)
{

  v2 = Array.count.getter();

  return v2;
}

uint64_t sub_100394244(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v9 = v6;
  *(v6 + 24) = a1;
  *(v6 + 16) = v6;
  v7 = swift_task_alloc();
  *(v9 + 32) = v7;
  *v7 = *(v9 + 16);
  v7[1] = sub_1002603BC;

  return sub_100391C90(a2, a3 & 1, a4, a5, a6 & 1);
}

uint64_t sub_100394324(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_100260618;

  return sub_100392E2C(a1);
}

uint64_t sub_1003943D8(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  v4 = sub_10038340C();
  *v3 = *(v6 + 16);
  v3[1] = sub_1002609F0;

  return EntityQuery.results()(a1, a2, v4);
}

unint64_t sub_1003944B0()
{
  v2 = qword_1006DA4A8;
  if (!qword_1006DA4A8)
  {
    sub_10025CAA4(&qword_1006DA4A0, qword_100506A40);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA4A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100394550()
{
  v2 = qword_1006DA4B0;
  if (!qword_1006DA4B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA4B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003945E4()
{
  v2 = qword_1006DA4B8;
  if (!qword_1006DA4B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA4B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100394678()
{
  v2 = qword_1006DA4C0;
  if (!qword_1006DA4C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA4C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10039470C()
{
  v2 = qword_1006DA4C8;
  if (!qword_1006DA4C8)
  {
    sub_10025CAA4(&qword_1006DA4A0, qword_100506A40);
    sub_10038360C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA4C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003947B8()
{
  v2 = qword_1006DA4D8;
  if (!qword_1006DA4D8)
  {
    sub_10025CAA4(&qword_1006DA2E8, &unk_1005063E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA4D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t MailRecategorizationCellHeaderView.title.getter()
{
  v4 = *(v0 + OBJC_IVAR____TtC10MobileMail34MailRecategorizationCellHeaderView_titleLabel);
  _objc_retain(v4);
  v5 = [v4 text];
  if (v5)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    _objc_release(v5);
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  _objc_release(v4);
  return v3;
}

uint64_t MailRecategorizationCellHeaderView.title.setter(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + OBJC_IVAR____TtC10MobileMail34MailRecategorizationCellHeaderView_titleLabel);
  _objc_retain(v6);

  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();

    [v6 setText:v5];
  }

  else
  {
    [v6 setText:0];
  }

  _objc_release(v4);
  _objc_release(v6);
}

void (*MailRecategorizationCellHeaderView.title.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = MailRecategorizationCellHeaderView.title.getter();
  a1[1] = v2;
  return sub_100394C48;
}

void sub_100394C48(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    v3 = a1[1];

    MailRecategorizationCellHeaderView.title.setter(v2, v3);
    sub_100268744(a1);
  }

  else
  {
    MailRecategorizationCellHeaderView.title.setter(*a1, a1[1]);
  }
}

void *sub_100394CC4()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail34MailRecategorizationCellHeaderView_titleLabel);
  _objc_retain(v2);
  return v2;
}

id sub_100394D0C(double a1, double a2, double a3, double a4)
{
  *&v8 = a1;
  *(&v8 + 1) = a2;
  *&v9 = a3;
  *(&v9 + 1) = a4;
  ObjectType = swift_getObjectType();
  v12 = v8;
  v13 = v9;
  v14 = v4;
  v6 = OBJC_IVAR____TtC10MobileMail34MailRecategorizationCellHeaderView_titleLabel;
  sub_100264928();
  *&v4[v6] = sub_10025C704();
  v11.receiver = v14;
  v11.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v11, "initWithFrame:", v8, v9);
  _objc_retain(v10);
  v14 = v10;
  sub_100394E34();
  _objc_release(v14);
  return v10;
}

void sub_100394E34()
{
  v4 = *&v0[OBJC_IVAR____TtC10MobileMail34MailRecategorizationCellHeaderView_titleLabel];
  _objc_retain(v4);
  v3 = [objc_opt_self() secondaryLabelColor];
  [v4 setTextColor:?];
  _objc_release(v3);
  _objc_release(v4);
  v7 = *&v0[OBJC_IVAR____TtC10MobileMail34MailRecategorizationCellHeaderView_titleLabel];
  _objc_retain(v7);
  v5 = objc_opt_self();
  _objc_retain(UIFontTextStyleFootnote);
  v6 = [v5 preferredFontForTextStyle:UIFontTextStyleFootnote];
  _objc_release(UIFontTextStyleFootnote);
  [v7 setFont:v6];
  _objc_release(v6);
  _objc_release(v7);
  v8 = *&v0[OBJC_IVAR____TtC10MobileMail34MailRecategorizationCellHeaderView_titleLabel];
  _objc_retain(v8);
  LODWORD(v1) = 1132068864;
  [v8 setContentHuggingPriority:v1 forAxis:?];
  _objc_release(v8);
  v9 = *&v0[OBJC_IVAR____TtC10MobileMail34MailRecategorizationCellHeaderView_titleLabel];
  _objc_retain(v9);
  [v9 setAdjustsFontForContentSizeCategory:1];
  _objc_release(v9);
  v10 = *&v0[OBJC_IVAR____TtC10MobileMail34MailRecategorizationCellHeaderView_titleLabel];
  _objc_retain(v10);
  [v10 setNumberOfLines:0];
  _objc_release(v10);
  v11 = *&v0[OBJC_IVAR____TtC10MobileMail34MailRecategorizationCellHeaderView_titleLabel];
  _objc_retain(v11);
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  _objc_release(v11);
  v12 = *&v0[OBJC_IVAR____TtC10MobileMail34MailRecategorizationCellHeaderView_titleLabel];
  _objc_retain(v12);
  [v0 addSubview:v12];
  _objc_release(v12);
  _objc_retain(v0);
  [v0 directionalLayoutMargins];
  v13 = v2;
  _objc_release(v0);
  _objc_retain(v0);
  [v0 setDirectionalLayoutMargins:{6.0, 20.0, 6.0, v13}];
  _objc_release(v0);
  v15 = *&v0[OBJC_IVAR____TtC10MobileMail34MailRecategorizationCellHeaderView_titleLabel];
  _objc_retain(v15);
  [v15 mf_pinToView:v14 usingLayoutMargins:1];
  _objc_release(v15);
}

void sub_100395264()
{
  v0 = OBJC_IVAR____TtC10MobileMail34MailRecategorizationCellHeaderView_titleLabel;
  sub_100264928();
  *v0 = sub_10025C704();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("init(coder:) has not been implemented", 0x25uLL, 1);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1003953F0()
{
  v1 = type metadata accessor for Logger();
  sub_10002094C(v1, qword_1006DA580);
  sub_1000208F4(v1, qword_1006DA580);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.email", 0xFuLL, 1);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MailboxActivityObserver", 0x17uLL, 1);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100395494()
{
  if (qword_1006D5FC0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return sub_1000208F4(v0, qword_1006DA580);
}

void *sub_100395500()
{
  v2 = *(v0 + OBJC_IVAR___MailStatusMailboxActivityObserver_queue);
  _objc_retain(v2);
  return v2;
}

uint64_t sub_100395548()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t sub_1003955B0(uint64_t a1)
{
  swift_unknownObjectRetain();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_100395630()
{
  v2 = *(v0 + OBJC_IVAR___MailStatusMailboxActivityObserver_underlying);

  return v2;
}

id sub_100395670(uint64_t a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDelegate:a1];
  swift_unknownObjectRelease();
  return v2;
}

char *sub_1003956C0(uint64_t a1)
{
  v23 = a1;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v20 = 0;
  v6 = (*(*(type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v12 = &v6 - v6;
  v7 = (*(*(type metadata accessor for OS_dispatch_queue_serial.Attributes() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v20);
  v11 = &v6 - v7;
  v8 = (*(*(type metadata accessor for DispatchQoS() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v23);
  v10 = &v6 - v8;
  v28 = v2;
  v29 = v1;
  v14 = &qword_1006DA000;
  v17 = 0;
  swift_unknownObjectWeakInit();
  sub_1003959C4();
  v16 = 33;
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MailStatusMailboxActivityObserver", 0x21uLL, 1);
  static DispatchQoS.utility.getter();
  sub_100395A28();
  sub_100395AC8(v12);
  v22 = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v27 = v22;
  v13 = v29;
  _objc_retain(v22);
  *&v13[OBJC_IVAR___MailStatusMailboxActivityObserver_queue] = v22;
  v15 = v29;
  swift_unknownObjectRetain();
  v18 = &v15[v14[180]];
  v19 = &v26;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  v21 = v29;
  _s16ActivityObserverCMa();
  _objc_retain(v22);
  v3 = sub_100395B5C(v22);
  v4 = v22;
  *&v21[OBJC_IVAR___MailStatusMailboxActivityObserver_underlying] = v3;
  _objc_release(v4);
  v25.receiver = v29;
  v25.super_class = MailStatusMailboxActivityObserver;
  v24 = objc_msgSendSuper2(&v25, "init");
  _objc_retain(v24);
  v29 = v24;
  swift_unknownObjectRelease();
  _objc_release(v29);
  return v24;
}

unint64_t sub_1003959C4()
{
  v2 = qword_1006DA5B0;
  if (!qword_1006DA5B0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DA5B0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_100395A28()
{
  sub_1003A0478(0);
  type metadata accessor for OS_dispatch_queue_serial.Attributes();
  sub_1003A0BC0();
  sub_10025C9B0(&qword_1006DA738, qword_100506F80);
  sub_1003A0C40();
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_100395AC8@<X0>(uint64_t a1@<X8>)
{
  v3 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

void sub_100395BEC()
{
  v6 = sub_10039C5DC;
  v25 = 0;
  v7 = 0;
  v11 = type metadata accessor for DispatchQoS();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v3 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v10 = &v3 - v3;
  v16 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v16 - 8);
  v14 = v16 - 8;
  v4 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v16);
  v15 = &v3 - v4;
  v25 = v0;
  v17 = *(v0 + OBJC_IVAR___MailStatusMailboxActivityObserver_queue);
  _objc_retain(v17);
  static DispatchWorkItemFlags.detached.getter();
  _objc_retain(v5);
  v1 = swift_allocObject();
  v2 = v6;
  *(v1 + 16) = v5;
  v23 = v2;
  v24 = v1;
  aBlock = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = 0;
  v21 = sub_1002AEFF8;
  v22 = &unk_10065C358;
  v12 = _Block_copy(&aBlock);
  sub_100274F94();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  (*(v8 + 8))(v10, v11);
  _Block_release(v12);

  (*(v13 + 8))(v15, v16);
  _objc_release(v17);
}

uint64_t sub_100395E5C(uint64_t a1)
{

  sub_100395EB0();
}

void sub_100395EB0()
{
  v36 = 0;
  v52 = 0;
  v35 = 0;
  v37 = type metadata accessor for Logger();
  v38 = *(v37 - 8);
  v39 = v38;
  __chkstk_darwin(0);
  v40 = v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchPredicate();
  v41 = *(v44 - 8);
  v43 = v41;
  __chkstk_darwin(v44 - 8);
  v45 = (v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = v0;

  v42 = *(v0 + 64);
  v3 = v42;
  v4 = v43;
  *v45 = v42;
  (*(v4 + 104))();
  v46 = _dispatchPreconditionTest(_:)();
  (*(v43 + 8))(v45, v44);
  if (v46)
  {
    v5 = v40;

    v6 = sub_100395494();
    (*(v39 + 16))(v5, v6, v37);
    v32 = Logger.logObject.getter();
    v29 = v32;
    v31 = static os_log_type_t.default.getter();
    v30 = v31;
    sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
    v33 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v32, v31))
    {
      v7 = v35;
      v20 = static UnsafeMutablePointer.allocate(capacity:)();
      v16 = v20;
      v17 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v18 = 0;
      v21 = sub_1002641E8(0, v17, v17);
      v19 = v21;
      v22 = sub_1002641E8(v18, &type metadata for Any + 8, &type metadata for Any + 8);
      v50 = v20;
      v49 = v21;
      v48 = v22;
      v23 = 0;
      v24 = &v50;
      sub_10026423C(0, &v50);
      sub_10026423C(v23, v24);
      v47 = v33;
      v25 = v10;
      __chkstk_darwin(v10);
      v26 = &v10[-6];
      v10[-4] = v8;
      v10[-3] = &v49;
      v10[-2] = &v48;
      v27 = sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
      sub_10026E6E0();
      Sequence.forEach(_:)();
      v28 = v7;
      if (v7)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v29, v30, "ActivityObserver.tearDown()", v16, 2u);
        v14 = 0;
        sub_10026429C(v19, 0);
        sub_10026429C(v22, v14);
        UnsafeMutablePointer.deallocate()();

        v15 = v28;
      }
    }

    else
    {

      v15 = v35;
    }

    (*(v39 + 8))(v40, v37);
    v10[1] = v34 + 48;
    v12 = &v51;
    v11 = 0;
    swift_beginAccess();
    *(v34 + 56) = v11;
    swift_unknownObjectWeakAssign();
    swift_endAccess();
    v13 = *(v34 + 72);
    v9 = v13;
    ActivityStateObserver.tearDown()();
  }

  else
  {
    __break(1u);
  }
}

void sub_100396468(void *a1)
{
  v11 = a1;
  v10 = sub_1003A01A0;
  v31 = 0;
  v30 = 0;
  v12 = 0;
  v16 = type metadata accessor for DispatchQoS();
  v13 = *(v16 - 8);
  v14 = v16 - 8;
  v7 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v15 = &v7 - v7;
  v21 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v21 - 8);
  v19 = v21 - 8;
  v8 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v11);
  v20 = &v7 - v8;
  v31 = v2;
  v30 = v1;
  v22 = *(v1 + OBJC_IVAR___MailStatusMailboxActivityObserver_queue);
  _objc_retain(v22);
  static DispatchWorkItemFlags.detached.getter();
  _objc_retain(v9);
  _objc_retain(v11);
  v3 = swift_allocObject();
  v4 = v10;
  v5 = v3;
  v6 = v11;
  *(v5 + 16) = v9;
  *(v5 + 24) = v6;
  v28 = v4;
  v29 = v5;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = 0;
  v26 = sub_1002AEFF8;
  v27 = &unk_10065C3A8;
  v17 = _Block_copy(&aBlock);
  sub_100274F94();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  (*(v13 + 8))(v15, v16);
  _Block_release(v17);

  (*(v18 + 8))(v20, v21);
  _objc_release(v22);
}

uint64_t sub_100396704(char *a1, uint64_t a2)
{

  _objc_retain(a1);
  sub_100396790(a2, a1, &off_10065CB28);
  swift_unknownObjectRelease();
}

void sub_100396790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a3;
  v47 = a2;
  v46 = a1;
  v40 = 0;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v39 = 0;
  v41 = type metadata accessor for Logger();
  v42 = *(v41 - 8);
  v43 = v42;
  __chkstk_darwin(0);
  v44 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for DispatchPredicate();
  v48 = *(v51 - 8);
  v50 = v48;
  v5 = __chkstk_darwin(v46);
  v52 = (v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v62 = v5;
  v60 = v7;
  v61 = v8;
  v59 = v3;

  v49 = *(v3 + 64);
  v9 = v49;
  v10 = v50;
  *v52 = v49;
  (*(v10 + 104))();
  v53 = _dispatchPreconditionTest(_:)();
  (*(v50 + 8))(v52, v51);
  if (v53)
  {
    v11 = v44;

    v12 = sub_100395494();
    (*(v43 + 16))(v11, v12, v41);
    v36 = Logger.logObject.getter();
    v33 = v36;
    v35 = static os_log_type_t.default.getter();
    v34 = v35;
    sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
    v37 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v36, v35))
    {
      v13 = v39;
      v24 = static UnsafeMutablePointer.allocate(capacity:)();
      v20 = v24;
      v21 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v22 = 0;
      v25 = sub_1002641E8(0, v21, v21);
      v23 = v25;
      v26 = sub_1002641E8(v22, &type metadata for Any + 8, &type metadata for Any + 8);
      v57 = v24;
      v56 = v25;
      v55 = v26;
      v27 = 0;
      v28 = &v57;
      sub_10026423C(0, &v57);
      sub_10026423C(v27, v28);
      v54 = v37;
      v29 = v16;
      __chkstk_darwin(v16);
      v30 = &v16[-6];
      v16[-4] = v14;
      v16[-3] = &v56;
      v16[-2] = &v55;
      v31 = sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
      sub_10026E6E0();
      Sequence.forEach(_:)();
      v32 = v13;
      if (v13)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v33, v34, "ActivityObserver.start()", v20, 2u);
        v18 = 0;
        sub_10026429C(v23, 0);
        sub_10026429C(v26, v18);
        UnsafeMutablePointer.deallocate()();

        v19 = v32;
      }
    }

    else
    {

      v19 = v39;
    }

    (*(v43 + 8))(v44, v41);
    swift_unknownObjectRetain();
    v16[0] = v38 + 48;
    v16[1] = &v58;
    swift_beginAccess();
    *(v38 + 56) = v45;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    swift_endAccess();
    v17 = *(v38 + 72);
    v15 = v17;

    sub_1003A0210();
    ActivityStateObserver.start(registry:delegate:)();
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_100396E10(uint64_t a1, uint64_t a2)
{
  v179 = a1;
  v170 = a2;
  v148 = sub_100278D34;
  v149 = sub_1003A0388;
  v150 = sub_10026EE84;
  v151 = sub_10025E604;
  v152 = sub_100264354;
  v153 = sub_10026434C;
  v154 = sub_10026434C;
  v155 = sub_10026EF2C;
  v156 = sub_10026434C;
  v157 = sub_10026434C;
  v158 = sub_1002644E4;
  v159 = sub_1003A0318;
  v205 = 0;
  v204 = 0;
  v203 = 0;
  v202 = 0;
  v180 = v201;
  v201[0] = 0;
  v201[1] = 0;
  v192 = 0;
  v190 = 0;
  v189 = 0;
  v188 = 0;
  v182 = 0;
  v171 = 0;
  v160 = type metadata accessor for DispatchQoS();
  v161 = *(v160 - 8);
  v162 = v160 - 8;
  v163 = (*(v161 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v164 = &v36 - v163;
  v165 = type metadata accessor for DispatchWorkItemFlags();
  v166 = *(v165 - 8);
  v167 = v165 - 8;
  v168 = (*(v166 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v171);
  v169 = &v36 - v168;
  v172 = type metadata accessor for Logger();
  v173 = *(v172 - 8);
  v174 = v172 - 8;
  v175 = (*(v173 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v171);
  v176 = &v36 - v175;
  v205 = v3;
  v204 = v4;
  v203 = v2;
  v177 = sub_100365480();
  v178 = sub_1003654E4();
  v202 = Set.init()();

  v200 = v179;
  v181 = sub_10025C9B0(&qword_1006D9D90, &qword_100506E30);
  sub_1003A0290();
  Collection<>.makeIterator()();
  for (i = v182; ; i = v41)
  {
    v145 = i;
    sub_10025C9B0(&qword_1006DA5C8, &unk_100506E38);
    IndexingIterator.next()();
    v146 = v208;
    if (!v208)
    {
      break;
    }

    v144 = v146;
    v142 = v146;
    v192 = v146;
    _objc_retain(v146);
    objc_opt_self();
    v143 = swift_dynamicCastObjCClass();
    if (v143)
    {
      v141 = v143;
    }

    else
    {
      _objc_release(v142);
      v141 = 0;
    }

    v140 = v141;
    if (v141)
    {
      v139 = v140;
      v134 = v140;
      v190 = v140;
      v135 = &v189;
      v189 = 0;
      v136 = [v140 mailboxScope];
      v137 = [v136 allMailboxObjectIDsWithMailboxTypeResolver:v170 forExclusion:v135];
      _objc_release(v136);
      v138 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
      v188 = v138;
      _objc_release(v137);
      if (v189)
      {
        v5 = v176;
        v6 = sub_100395494();
        (*(v173 + 16))(v5, v6, v172);

        v114 = 24;
        v120 = 7;
        v113 = swift_allocObject();
        *(v113 + 16) = v138;

        v119 = 32;
        v7 = swift_allocObject();
        v8 = v113;
        v115 = v7;
        *(v7 + 16) = v148;
        *(v7 + 24) = v8;

        _objc_retain(v134);
        v121 = swift_allocObject();
        *(v121 + 16) = v134;
        v132 = Logger.logObject.getter();
        v133 = static os_log_type_t.error.getter();
        v117 = 17;
        v123 = swift_allocObject();
        *(v123 + 16) = 32;
        v124 = swift_allocObject();
        v118 = 8;
        *(v124 + 16) = 8;
        v9 = swift_allocObject();
        v10 = v115;
        v116 = v9;
        *(v9 + 16) = v149;
        *(v9 + 24) = v10;
        v11 = swift_allocObject();
        v12 = v116;
        v125 = v11;
        *(v11 + 16) = v150;
        *(v11 + 24) = v12;
        v126 = swift_allocObject();
        *(v126 + 16) = 64;
        v127 = swift_allocObject();
        *(v127 + 16) = v118;
        v13 = swift_allocObject();
        v14 = v121;
        v122 = v13;
        *(v13 + 16) = v151;
        *(v13 + 24) = v14;
        v15 = swift_allocObject();
        v16 = v122;
        v129 = v15;
        *(v15 + 16) = v152;
        *(v15 + 24) = v16;
        v131 = sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
        v128 = _allocateUninitializedArray<A>(_:)();
        v130 = v17;

        v18 = v123;
        v19 = v130;
        *v130 = v153;
        v19[1] = v18;

        v20 = v124;
        v21 = v130;
        v130[2] = v154;
        v21[3] = v20;

        v22 = v125;
        v23 = v130;
        v130[4] = v155;
        v23[5] = v22;

        v24 = v126;
        v25 = v130;
        v130[6] = v156;
        v25[7] = v24;

        v26 = v127;
        v27 = v130;
        v130[8] = v157;
        v27[9] = v26;

        v28 = v129;
        v29 = v130;
        v130[10] = v158;
        v29[11] = v28;
        sub_1002612B0();

        if (os_log_type_enabled(v132, v133))
        {
          v30 = v145;
          v99 = static UnsafeMutablePointer.allocate(capacity:)();
          v97 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
          v98 = 1;
          v100 = sub_1002641E8(1, v97, v97);
          v101 = sub_1002641E8(v98, &type metadata for Any + 8, &type metadata for Any + 8);
          v103 = &v186;
          v186 = v99;
          v104 = &v207;
          v207 = v100;
          v105 = &v206;
          v206 = v101;
          v102 = 2;
          sub_10026423C(2, &v186);
          sub_10026423C(v102, v103);
          v184 = v153;
          v185 = v123;
          sub_100264250(&v184, v103, v104, v105);
          v106 = v30;
          v107 = v123;
          v108 = v124;
          v109 = v125;
          v110 = v126;
          v111 = v127;
          v112 = v129;
          if (v30)
          {
            v90 = v107;
            v91 = v108;
            v92 = v109;
            v93 = v110;
            v94 = v111;
            v95 = v112;
            v53 = v112;
            v52 = v111;
            v51 = v110;
            v50 = v109;
            v49 = v108;

            __break(1u);
          }

          else
          {
            v184 = v154;
            v185 = v124;
            sub_100264250(&v184, &v186, &v207, &v206);
            v83 = 0;
            v84 = v123;
            v85 = v124;
            v86 = v125;
            v87 = v126;
            v88 = v127;
            v89 = v129;
            v184 = v155;
            v185 = v125;
            sub_100264250(&v184, &v186, &v207, &v206);
            v76 = 0;
            v77 = v123;
            v78 = v124;
            v79 = v125;
            v80 = v126;
            v81 = v127;
            v82 = v129;
            v184 = v156;
            v185 = v126;
            sub_100264250(&v184, &v186, &v207, &v206);
            v69 = 0;
            v70 = v123;
            v71 = v124;
            v72 = v125;
            v73 = v126;
            v74 = v127;
            v75 = v129;
            v184 = v157;
            v185 = v127;
            sub_100264250(&v184, &v186, &v207, &v206);
            v62 = 0;
            v63 = v123;
            v64 = v124;
            v65 = v125;
            v66 = v126;
            v67 = v127;
            v68 = v129;
            v184 = v158;
            v185 = v129;
            sub_100264250(&v184, &v186, &v207, &v206);
            v55 = 0;
            v56 = v123;
            v57 = v124;
            v58 = v125;
            v59 = v126;
            v60 = v127;
            v61 = v129;
            _os_log_impl(&_mh_execute_header, v132, v133, "Unexpectedly received exclusion mailboxes: %s for smart mailbox: %@", v99, 0x16u);
            v54 = 1;
            sub_10026429C(v100, 1);
            sub_10026429C(v101, v54);
            UnsafeMutablePointer.deallocate()();

            v96 = v55;
          }
        }

        else
        {
          v31 = v145;

          v96 = v31;
        }

        v47 = v96;
        _objc_release(v132);
        (*(v173 + 8))(v176, v172);
        v48 = v47;
      }

      else
      {

        v46 = &v187;
        v187 = v138;
        v45 = sub_10025C9B0(&qword_1006D9D70, &unk_100504A30);
        sub_100365564();
        Set.formUnion<A>(_:)();
        v48 = v145;
      }

      v43 = v48;

      _objc_release(v134);
      v44 = v43;
    }

    else
    {
      v32 = [v142 objectID];
      v42 = v191;
      v191[0] = v32;
      sub_10025C9B0(&qword_1006D9D70, &unk_100504A30);
      Set.insert(_:)();
      _objc_release(v191[1]);
      v44 = v145;
    }

    v41 = v44;
    _objc_release(v142);
  }

  sub_100264880(v201);
  v39 = *(v147 + OBJC_IVAR___MailStatusMailboxActivityObserver_queue);
  _objc_retain(v39);
  static DispatchWorkItemFlags.detached.getter();
  v38 = *(v147 + OBJC_IVAR___MailStatusMailboxActivityObserver_underlying);

  v40 = &v202;
  v36 = v202;

  v33 = swift_allocObject();
  v34 = v36;
  v35 = v159;
  *(v33 + 16) = v38;
  *(v33 + 24) = v34;
  v198 = v35;
  v199 = v33;
  aBlock = _NSConcreteStackBlock;
  v194 = 1107296256;
  v195 = 0;
  v196 = sub_1002AEFF8;
  v197 = &unk_10065C3F8;
  v37 = _Block_copy(&aBlock);
  sub_100274F94();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  (*(v161 + 8))(v164, v160);
  _Block_release(v37);

  (*(v166 + 8))(v169, v165);
  _objc_release(v39);
  sub_100264880(v40);
}

uint64_t sub_100398634(uint64_t a1)
{
  v122 = a1;
  v100 = sub_1003A0568;
  v101 = sub_10026E818;
  v102 = sub_1003A0568;
  v103 = sub_10026E818;
  v104 = sub_10026E824;
  v105 = sub_10026E818;
  v106 = sub_10026434C;
  v107 = sub_10026434C;
  v108 = sub_10026EBF8;
  v109 = sub_10026434C;
  v110 = sub_10026434C;
  v111 = sub_10026EBF8;
  v112 = sub_10026434C;
  v113 = sub_10026434C;
  v114 = sub_10026EBF8;
  v146 = 0;
  v145 = 0;
  v143 = 0;
  v141 = 0;
  v139 = 0;
  v136 = 0;
  v115 = 0;
  v116 = 0;
  v117 = type metadata accessor for Logger();
  v118 = *(v117 - 8);
  v119 = v117 - 8;
  v120 = (*(v118 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v121 = &v40 - v120;
  v127 = type metadata accessor for DispatchPredicate();
  v125 = *(v127 - 8);
  v126 = v127 - 8;
  v123 = (*(v125 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v122);
  v128 = (&v40 - v123);
  v146 = v2;
  v145 = v1;

  v124 = *(v1 + 64);
  _objc_retain(v124);
  v3 = v125;
  *v128 = v124;
  (*(v3 + 104))();
  v129 = _dispatchPreconditionTest(_:)();
  (*(v125 + 8))(v128, v127);
  result = v129;
  if (v129)
  {
    v5 = v121;

    v58 = &v144;
    v81 = 32;
    v66 = 0;
    swift_beginAccess();
    v59 = *(v99 + 40);

    swift_endAccess();
    v68 = sub_100365480();
    v69 = sub_1003654E4();
    v71 = Set.subtracting(_:)();
    v143 = v71;

    v60 = &v142;
    swift_beginAccess();
    v61 = *(v99 + 40);

    swift_endAccess();
    v73 = Set.subtracting(_:)();

    v141 = v73;

    v63 = &v140;
    v140 = v73;
    v62 = sub_10025C9B0(&qword_1006D9D70, &unk_100504A30);
    sub_100365564();
    v64 = Set.union<A>(_:)();
    v139 = v64;

    v65 = &v138;
    swift_beginAccess();
    *(v99 + 40) = v122;

    swift_endAccess();
    v67 = &v137;
    swift_beginAccess();
    v70 = *(v99 + 40);

    swift_endAccess();
    v74 = Set.count.getter();
    v136 = v74;

    v6 = sub_100395494();
    (*(v118 + 16))(v5, v6, v117);

    v72 = 24;
    v82 = 7;
    v75 = swift_allocObject();
    *(v75 + 16) = v71;

    v77 = swift_allocObject();
    *(v77 + 16) = v73;
    v83 = swift_allocObject();
    *(v83 + 16) = v74;
    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.default.getter();
    v79 = 17;
    v85 = swift_allocObject();
    *(v85 + 16) = 0;
    v86 = swift_allocObject();
    v80 = 8;
    *(v86 + 16) = 8;
    v7 = swift_allocObject();
    v8 = v75;
    v76 = v7;
    *(v7 + 16) = v100;
    *(v7 + 24) = v8;
    v9 = swift_allocObject();
    v10 = v76;
    v87 = v9;
    *(v9 + 16) = v101;
    *(v9 + 24) = v10;
    v88 = swift_allocObject();
    *(v88 + 16) = 0;
    v89 = swift_allocObject();
    *(v89 + 16) = v80;
    v11 = swift_allocObject();
    v12 = v77;
    v78 = v11;
    *(v11 + 16) = v102;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v78;
    v90 = v13;
    *(v13 + 16) = v103;
    *(v13 + 24) = v14;
    v91 = swift_allocObject();
    *(v91 + 16) = 0;
    v92 = swift_allocObject();
    *(v92 + 16) = v80;
    v15 = swift_allocObject();
    v16 = v83;
    v84 = v15;
    *(v15 + 16) = v104;
    *(v15 + 24) = v16;
    v17 = swift_allocObject();
    v18 = v84;
    v94 = v17;
    *(v17 + 16) = v105;
    *(v17 + 24) = v18;
    v96 = sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
    v93 = _allocateUninitializedArray<A>(_:)();
    v95 = v19;

    v20 = v85;
    v21 = v95;
    *v95 = v106;
    v21[1] = v20;

    v22 = v86;
    v23 = v95;
    v95[2] = v107;
    v23[3] = v22;

    v24 = v87;
    v25 = v95;
    v95[4] = v108;
    v25[5] = v24;

    v26 = v88;
    v27 = v95;
    v95[6] = v109;
    v27[7] = v26;

    v28 = v89;
    v29 = v95;
    v95[8] = v110;
    v29[9] = v28;

    v30 = v90;
    v31 = v95;
    v95[10] = v111;
    v31[11] = v30;

    v32 = v91;
    v33 = v95;
    v95[12] = v112;
    v33[13] = v32;

    v34 = v92;
    v35 = v95;
    v95[14] = v113;
    v35[15] = v34;

    v36 = v94;
    v37 = v95;
    v95[16] = v114;
    v37[17] = v36;
    sub_1002612B0();

    if (os_log_type_enabled(v97, v98))
    {
      v38 = v115;
      v51 = static UnsafeMutablePointer.allocate(capacity:)();
      v49 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v50 = 0;
      v52 = sub_1002641E8(0, v49, v49);
      v53 = sub_1002641E8(v50, &type metadata for Any + 8, &type metadata for Any + 8);
      v54 = &v134;
      v134 = v51;
      v55 = &v133;
      v133 = v52;
      v56 = &v132;
      v132 = v53;
      sub_10026423C(0, &v134);
      sub_10026423C(3, v54);
      v130 = v106;
      v131 = v85;
      sub_100264250(&v130, v54, v55, v56);
      v57 = v38;
      if (v38)
      {

        __break(1u);
      }

      else
      {
        v130 = v107;
        v131 = v86;
        sub_100264250(&v130, &v134, &v133, &v132);
        v48 = 0;
        v130 = v108;
        v131 = v87;
        sub_100264250(&v130, &v134, &v133, &v132);
        v47 = 0;
        v130 = v109;
        v131 = v88;
        sub_100264250(&v130, &v134, &v133, &v132);
        v46 = 0;
        v130 = v110;
        v131 = v89;
        sub_100264250(&v130, &v134, &v133, &v132);
        v45 = 0;
        v130 = v111;
        v131 = v90;
        sub_100264250(&v130, &v134, &v133, &v132);
        v44 = 0;
        v130 = v112;
        v131 = v91;
        sub_100264250(&v130, &v134, &v133, &v132);
        v43 = 0;
        v130 = v113;
        v131 = v92;
        sub_100264250(&v130, &v134, &v133, &v132);
        v42 = 0;
        v130 = v114;
        v131 = v94;
        sub_100264250(&v130, &v134, &v133, &v132);
        _os_log_impl(&_mh_execute_header, v97, v98, "Removing %ld mailbox(es), adding %ld mailbox(es). Now: %ld mailbox(es)", v51, 0x20u);
        v41 = 0;
        sub_10026429C(v52, 0);
        sub_10026429C(v53, v41);
        UnsafeMutablePointer.deallocate()();
      }
    }

    else
    {
    }

    _objc_release(v97);
    (*(v118 + 8))(v121, v117);
    v40 = &v135;
    v135 = v73;
    v39 = sub_1003A0570();
    sub_10039C808(v40, v62, v39);
  }

  else
  {
    __break(1u);
  }

  return result;
}

MFMailboxFilterCriteriaBarButtonItem __swiftcall MFMailboxFilterCriteriaBarButtonItem.init()()
{
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result.chevronImageView = v3;
  result.subtitleLabel = v2;
  result.titleLabel = v1;
  result.super.super.super.isa = v0;
  return result;
}

void sub_100399A58(uint64_t a1)
{
  v149 = a1;
  v127 = sub_10039AEBC;
  v128 = sub_10025E604;
  v129 = sub_100264354;
  v130 = sub_1003A080C;
  v131 = sub_10026434C;
  v132 = sub_10026434C;
  v133 = sub_1002644E4;
  v134 = sub_10026434C;
  v135 = sub_10026434C;
  v136 = sub_1002644E4;
  v170 = 0;
  v169 = 0;
  v168 = 0;
  v167[0] = 0;
  v167[1] = 0;
  v165 = 0;
  v137 = 0;
  v163 = 0;
  v146 = 0;
  v138 = type metadata accessor for Logger();
  v139 = *(v138 - 8);
  v140 = v138 - 8;
  v141 = (*(v139 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v138);
  v142 = v32 - v141;
  v143 = sub_10025C9B0(&qword_1006DA5E0, &qword_100506E48);
  v144 = (*(*(v143 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v143);
  v145 = v32 - v144;
  v170 = v32 - v144;
  v147 = (*(*(sub_10025C9B0(&qword_1006DA5E8, &qword_100506E50) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v146);
  v148 = (v32 - v147);
  v154 = type metadata accessor for DispatchPredicate();
  v152 = *(v154 - 8);
  v153 = v154 - 8;
  v150 = (*(v152 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v149);
  v155 = (v32 - v150);
  v169 = v2;
  v168 = v1;
  _objc_retain(v1);
  v151 = *&v1[OBJC_IVAR___MailStatusMailboxActivityObserver_queue];
  _objc_retain(v151);
  v3 = v152;
  *v155 = v151;
  (*(v3 + 104))();
  v156 = _dispatchPreconditionTest(_:)();
  (*(v152 + 8))(v155, v154);
  if (v156)
  {
    _objc_release(v126);

    v166 = v149;
    v124 = sub_10025C9B0(&qword_1006DA5F0, &qword_100506E58);
    sub_1003A05F8();
    Collection<>.makeIterator()();
    for (i = v137; ; i = v34)
    {
      v122 = i;
      sub_10025C9B0(&qword_1006DA600, &qword_100506E60);
      IndexingIterator.next()();
      v123 = sub_10025C9B0(&qword_1006DA608, &unk_100506E68);
      if ((*(*(v123 - 8) + 48))(v148, 1) == 1)
      {
        sub_100264880(v167);
        return;
      }

      v4 = v122;
      v119 = *v148;
      v5 = v148 + *(v123 + 48);
      v165 = v119;
      sub_1003A0680(v5, v145);
      v6 = sub_1003A07A8();
      sub_100302B20(v127, 0, v143, &type metadata for Never, v6, v120, &v164);
      v121 = v4;
      if (v4)
      {
        break;
      }

      v7 = v142;
      v99 = v164;
      v163 = v164;
      v8 = sub_100395494();
      (*(v139 + 16))(v7, v8, v138);
      _objc_retain(v119);
      v98 = 24;
      v106 = 7;
      v9 = swift_allocObject();
      v10 = v99;
      v100 = v9;
      *(v9 + 16) = v119;
      _objc_retain(v10);
      v107 = swift_allocObject();
      *(v107 + 16) = v99;
      sub_100015E30();

      v117 = Logger.logObject.getter();
      v118 = static os_log_type_t.debug.getter();
      v103 = 17;
      v108 = swift_allocObject();
      v102 = 64;
      *(v108 + 16) = 64;
      v109 = swift_allocObject();
      v104 = 8;
      *(v109 + 16) = 8;
      v105 = 32;
      v11 = swift_allocObject();
      v12 = v100;
      v101 = v11;
      *(v11 + 16) = v128;
      *(v11 + 24) = v12;
      v13 = swift_allocObject();
      v14 = v101;
      v110 = v13;
      *(v13 + 16) = v129;
      *(v13 + 24) = v14;
      v111 = swift_allocObject();
      *(v111 + 16) = v102;
      v112 = swift_allocObject();
      *(v112 + 16) = v104;
      v15 = swift_allocObject();
      v16 = v107;
      v114 = v15;
      *(v15 + 16) = v130;
      *(v15 + 24) = v16;
      v116 = sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
      v113 = _allocateUninitializedArray<A>(_:)();
      v115 = v17;

      v18 = v108;
      v19 = v115;
      *v115 = v131;
      v19[1] = v18;

      v20 = v109;
      v21 = v115;
      v115[2] = v132;
      v21[3] = v20;

      v22 = v110;
      v23 = v115;
      v115[4] = v133;
      v23[5] = v22;

      v24 = v111;
      v25 = v115;
      v115[6] = v134;
      v25[7] = v24;

      v26 = v112;
      v27 = v115;
      v115[8] = v135;
      v27[9] = v26;

      v28 = v114;
      v29 = v115;
      v115[10] = v136;
      v29[11] = v28;
      sub_1002612B0();

      if (os_log_type_enabled(v117, v118))
      {
        v30 = v121;
        v84 = static UnsafeMutablePointer.allocate(capacity:)();
        v83 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
        v85 = sub_1002641E8(2, v83, v83);
        v86 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
        v88 = &v161;
        v161 = v84;
        v89 = &v160;
        v160 = v85;
        v90 = &v159;
        v159 = v86;
        v87 = 2;
        sub_10026423C(2, &v161);
        sub_10026423C(v87, v88);
        v157 = v131;
        v158 = v108;
        sub_100264250(&v157, v88, v89, v90);
        v91 = v30;
        v92 = v108;
        v93 = v109;
        v94 = v110;
        v95 = v111;
        v96 = v112;
        v97 = v114;
        if (v30)
        {
          v76 = v92;
          v77 = v93;
          v78 = v94;
          v79 = v95;
          v80 = v96;
          v81 = v97;
          v40 = v97;
          v39 = v96;
          v38 = v95;
          v37 = v94;
          v36 = v93;

          __break(1u);
        }

        else
        {
          v157 = v132;
          v158 = v109;
          sub_100264250(&v157, &v161, &v160, &v159);
          v69 = 0;
          v70 = v108;
          v71 = v109;
          v72 = v110;
          v73 = v111;
          v74 = v112;
          v75 = v114;
          v157 = v133;
          v158 = v110;
          sub_100264250(&v157, &v161, &v160, &v159);
          v62 = 0;
          v63 = v108;
          v64 = v109;
          v65 = v110;
          v66 = v111;
          v67 = v112;
          v68 = v114;
          v157 = v134;
          v158 = v111;
          sub_100264250(&v157, &v161, &v160, &v159);
          v55 = 0;
          v56 = v108;
          v57 = v109;
          v58 = v110;
          v59 = v111;
          v60 = v112;
          v61 = v114;
          v157 = v135;
          v158 = v112;
          sub_100264250(&v157, &v161, &v160, &v159);
          v48 = 0;
          v49 = v108;
          v50 = v109;
          v51 = v110;
          v52 = v111;
          v53 = v112;
          v54 = v114;
          v157 = v136;
          v158 = v114;
          sub_100264250(&v157, &v161, &v160, &v159);
          v41 = 0;
          v42 = v108;
          v43 = v109;
          v44 = v110;
          v45 = v111;
          v46 = v112;
          v47 = v114;
          _os_log_impl(&_mh_execute_header, v117, v118, "%@: %@", v84, 0x16u);
          sub_10026429C(v85, 2);
          sub_10026429C(v86, 0);
          UnsafeMutablePointer.deallocate()();

          v82 = v41;
        }
      }

      else
      {
        v31 = v121;

        v82 = v31;
      }

      v34 = v82;
      _objc_release(v117);
      (*(v139 + 8))(v142, v138);
      v35 = &v126[OBJC_IVAR___MailStatusMailboxActivityObserver_delegate];
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v32[1] = &Strong;
        v33 = Strong;
        swift_unknownObjectRetain();
        sub_100294754();
        swift_endAccess();
        swift_getObjectType();
        [v33 mailboxStatusUpdatedWithStatusInfo:v99 forMailboxObjectID:v119];
        swift_unknownObjectRelease();
      }

      else
      {
        sub_100294754();
        swift_endAccess();
      }

      _objc_release(v99);
      sub_1003A0814(v145);
      _objc_release(v119);
    }

    __break(1u);
  }

  __break(1u);
}

id sub_10039AEBC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v11 = a2;
  v9 = a1;
  v12 = 0;
  v4 = 0;
  v8 = type metadata accessor for ActivityStateObserver.ActivityState();
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v10 = &v4 - v5;
  v12 = v2;
  sub_1003A07A8();
  (*(v6 + 16))(v10, v9, v8);
  result = sub_10039AFB4(v10);
  *v11 = result;
  return result;
}

id sub_10039AFB4(uint64_t a1)
{
  v126 = a1;
  v2 = v1;
  v3 = v126;
  v118 = v2;
  v143 = 0;
  v141 = 0;
  v4 = sub_10025C9B0(&qword_1006D8740, &unk_100501CB0);
  v116 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v117 = &v22 - v116;
  v119 = type metadata accessor for ActivityStateObserver.ActivityState.Running();
  v120 = *(v119 - 8);
  v121 = v119 - 8;
  v122 = (*(v120 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v118);
  v123 = &v22 - v122;
  v124 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v125 = &v22 - v124;
  v143 = v3;
  v128 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _objc_retain(v128);
  v144 = v128;
  v127 = ActivityStateObserver.ActivityState.progress.getter();
  [v128 setProgress:?];
  _objc_release(v127);
  _objc_release(v128);
  v142 = ActivityStateObserver.ActivityState.error.getter();
  v115 = v142 == 0;
  v114 = v115;
  sub_10026A58C(&v142);
  if (v114)
  {
    v111 = v144;
    _objc_retain(v144);
    v112 = ActivityStateObserver.ActivityState.localizedDescription.getter();
    v113 = v7;
    if (v7)
    {
      v109 = v112;
      v110 = v113;
      v106 = v113;
      v107 = String._bridgeToObjectiveC()();

      v108 = v107;
    }

    else
    {
      v108 = 0;
    }

    v105 = v108;
    [v111 setStatus:?];
    _objc_release(v105);
    _objc_release(v111);
  }

  else
  {
    ActivityStateObserver.ActivityState.running.getter();
    (*(v120 + 104))(v123, enum case for ActivityStateObserver.ActivityState.Running.didComplete(_:), v119);
    v104 = static ActivityStateObserver.ActivityState.Running.== infix(_:_:)();
    v103 = *(v120 + 8);
    v102 = v120 + 8;
    v103(v123, v119);
    v103(v125, v119);
    if (v104)
    {
      v101 = ActivityStateObserver.ActivityState.error.getter();
      if (v101)
      {
        v100 = v101;
        v92 = v101;
        v141 = v101;
        v91 = v144;
        _objc_retain(v144);
        _objc_retain(v91);
        v93 = [v92 userInfo];
        v95 = &type metadata for String;
        v96 = &type metadata for Any + 8;
        v97 = &protocol witness table for String;
        v99 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
        v94 = NSLocalizedDescriptionKey;
        _objc_retain(NSLocalizedDescriptionKey);
        v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v98 = v139;
        v139[0] = v8;
        v139[1] = v9;
        Dictionary.subscript.getter();
        sub_100268744(v98);

        if (v140[3])
        {
          if (swift_dynamicCast())
          {
            v87 = v129;
            v88 = v130;
          }

          else
          {
            v87 = 0;
            v88 = 0;
          }

          v86 = v88;
          v85 = v87;
          _objc_release(v94);
          _objc_release(v93);
          v89 = v85;
          v90 = v86;
        }

        else
        {
          _objc_release(v94);
          _objc_release(v93);
          sub_10000B0D8(v140);
          v89 = 0;
          v90 = 0;
        }

        v83 = v90;
        v84 = v89;
        if (v90)
        {
          v81 = v84;
          v82 = v83;
          v78 = v83;
          v79 = String._bridgeToObjectiveC()();

          v80 = v79;
        }

        else
        {
          v80 = 0;
        }

        v70 = v80;
        [v91 setAccountErrorTitle:?];
        _objc_release(v70);
        _objc_release(v91);
        _objc_retain(v91);
        v71 = [v92 userInfo];
        v73 = &type metadata for String;
        v74 = &type metadata for Any + 8;
        v75 = &protocol witness table for String;
        v77 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
        v72 = NSLocalizedFailureReasonErrorKey;
        _objc_retain(NSLocalizedFailureReasonErrorKey);
        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v76 = v137;
        v137[0] = v10;
        v137[1] = v11;
        Dictionary.subscript.getter();
        sub_100268744(v76);

        if (v138[3])
        {
          if (swift_dynamicCast())
          {
            v66 = v131;
            v67 = v132;
          }

          else
          {
            v66 = 0;
            v67 = 0;
          }

          v65 = v67;
          v64 = v66;
          _objc_release(v72);
          _objc_release(v71);
          v68 = v64;
          v69 = v65;
        }

        else
        {
          _objc_release(v72);
          _objc_release(v71);
          sub_10000B0D8(v138);
          v68 = 0;
          v69 = 0;
        }

        v62 = v69;
        v63 = v68;
        if (v69)
        {
          v60 = v63;
          v61 = v62;
          v57 = v62;
          v58 = String._bridgeToObjectiveC()();

          v59 = v58;
        }

        else
        {
          v59 = 0;
        }

        v49 = v59;
        [v91 setFailureReasonDescription:?];
        _objc_release(v49);
        _objc_release(v91);
        v50 = [v92 userInfo];
        v52 = &type metadata for String;
        v53 = &type metadata for Any + 8;
        v54 = &protocol witness table for String;
        v56 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
        v51 = NSUnderlyingErrorKey;
        _objc_retain(NSUnderlyingErrorKey);
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v55 = v135;
        v135[0] = v12;
        v135[1] = v13;
        Dictionary.subscript.getter();
        sub_100268744(v55);

        if (v136[3])
        {
          if (swift_dynamicCast())
          {
            v45 = v133;
            v46 = v134;
          }

          else
          {
            v45 = 0;
            v46 = 1;
          }

          v44 = v46;
          v43 = v45;
          _objc_release(v51);
          _objc_release(v50);
          v47 = v43;
          v48 = v44;
        }

        else
        {
          _objc_release(v51);
          _objc_release(v50);
          sub_10000B0D8(v136);
          v47 = 0;
          v48 = 1;
        }

        v41 = v48;
        v42 = v47;
        if (v48 == 1)
        {
          v38 = 0;
        }

        else
        {
          v39 = v42;
          v40 = v41;
          v37 = v41;
          v36 = v42;
          sub_100367A00();
          v14 = swift_allocError();
          v15 = v37;
          *v16 = v36;
          v16[1] = v15;
          v38 = v14;
        }

        v35 = v38;
        if (v38)
        {
          v34 = v35;
          v31 = v35;
          v32 = _convertErrorToNSError(_:)();

          v33 = v32;
        }

        else
        {
          v33 = 0;
        }

        v30 = v33;
        [v91 setError:?];
        _objc_release(v30);
        [v91 setHasAccountError:1];
        _objc_release(v91);
        _objc_release(v92);
      }
    }
  }

  v26 = v144;
  _objc_retain(v144);
  ActivityStateObserver.ActivityState.lastSuccessfulUpdate.getter();
  v27 = type metadata accessor for Date();
  v28 = *(v27 - 8);
  v29 = v27 - 8;
  if ((*(v28 + 48))(v117, 1) == 1)
  {
    v25 = 0;
  }

  else
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v28 + 8))(v117, v27);
    v25 = isa;
  }

  v23 = v25;
  [v26 setLastUpdateTime:?];
  _objc_release(v23);
  v17 = ActivityStateObserver.ActivityState.fetchState.getter();
  v19 = sub_1003A00B4(v17, v18 & 1);
  [v26 setState:v19];
  v20 = type metadata accessor for ActivityStateObserver.ActivityState();
  (*(*(v20 - 8) + 8))(v126);
  _objc_release(v144);
  return v26;
}

void *sub_10039C050(void *a1)
{
  _objc_retain(a1);
  if (a1)
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10039C0C8()
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  sub_10025C9B0(&qword_1006DA728, &qword_100506F78);
  _allocateUninitializedArray<A>(_:)();
  sub_100365480();
  type metadata accessor for ActivityStateObserver.ActivityState();
  sub_1003654E4();
  v3 = Dictionary.init(dictionaryLiteral:)();

  v4 = v3;
  _allocateUninitializedArray<A>(_:)();
  v1 = Dictionary.init(dictionaryLiteral:)();

  v5 = v1;
  _allocateUninitializedArray<A>(_:)();
  v2 = Dictionary.init(dictionaryLiteral:)();

  v6 = v2;
  sub_1003A0B7C(&v4);
  return v3;
}

uint64_t sub_10039C1DC()
{
  swift_beginAccess();
  v2 = *(v0 + 16);

  swift_endAccess();
  return v2;
}

uint64_t sub_10039C254(uint64_t a1, uint64_t a2, uint64_t a3)
{

  swift_beginAccess();
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;

  swift_endAccess();
}

uint64_t sub_10039C30C()
{
  swift_beginAccess();
  v2 = *(v0 + 40);

  swift_endAccess();
  return v2;
}

uint64_t sub_10039C35C(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 40) = a1;

  swift_endAccess();
}

uint64_t sub_10039C3BC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t sub_10039C420(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  swift_beginAccess();
  *(v2 + 56) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

void *sub_10039C494()
{
  v2 = *(v0 + 64);
  _objc_retain(v2);
  return v2;
}

void *sub_10039C4C8()
{
  v2 = *(v0 + 72);
  _objc_retain(v2);
  return v2;
}

uint64_t sub_10039C4FC(void *a1)
{
  v1[2] = sub_10039C0C8();
  v1[3] = v2;
  v1[4] = v3;
  sub_100365480();
  sub_1003654E4();
  v1[5] = Set.init()();
  v1[7] = 0;
  swift_unknownObjectWeakInit();
  _objc_retain(a1);
  v1[8] = a1;
  type metadata accessor for ActivityStateObserver();
  _objc_retain(a1);
  *(v6 + 72) = ActivityStateObserver.__allocating_init(queue:)();
  _objc_release(a1);
  return v6;
}

uint64_t sub_10039C5E4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_10039C648()
{
  v14 = 0;
  v10 = type metadata accessor for DispatchPredicate();
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v6 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v11 = (&v3 - v6);
  v14 = v0;

  v7 = *(v0 + 64);
  _objc_retain(v7);
  v1 = v8;
  *v11 = v7;
  (*(v1 + 104))();
  v12 = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v10);
  result = v12;
  if (v12)
  {

    v3 = &v13;
    swift_beginAccess();
    v4 = *(v5 + 40);

    swift_endAccess();
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10039C7C8(uint64_t a1)
{
  sub_100365480();
  sub_1003654E4();
  return Set.count.getter();
}

uint64_t sub_10039C808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a1;
  v18 = a2;
  v19 = a3;
  v21 = sub_1003A08BC;
  v35 = 0;
  v34 = 0;
  v22 = 0;
  v33 = 0;
  v36 = a2;
  v28 = type metadata accessor for DispatchPredicate();
  v26 = *(v28 - 8);
  v27 = v28 - 8;
  v24 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v29 = (v11 - v24);
  v35 = __chkstk_darwin(v23);
  v34 = v3;

  v25 = *(v3 + 64);
  _objc_retain(v25);
  v4 = v26;
  *v29 = v25;
  (*(v4 + 104))();
  v30 = _dispatchPreconditionTest(_:)();
  (*(v26 + 8))(v29, v28);
  result = v30;
  if ((v30 & 1) == 0)
  {
    goto LABEL_8;
  }

  v6 = v22;

  v7 = sub_10025C9B0(&qword_1006DA608, &unk_100506E68);
  v17 = sub_10025E9D8(v21, v20, v18, v7, &type metadata for Never, v19, &protocol witness table for Never, v16);
  if (v6)
  {

    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  v14 = v17;

  v33 = v14;
  v15 = v20 + 48;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v20 + 56);
  v31 = Strong;
  v32 = v9;
  if (Strong)
  {
    v11[1] = &v31;
    v13 = v31;
    v12 = v32;
    swift_unknownObjectRetain();
    sub_100294754();
    swift_endAccess();
    ObjectType = swift_getObjectType();
    (*(v12 + 8))(v14, ObjectType);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100294754();
    swift_endAccess();
  }
}