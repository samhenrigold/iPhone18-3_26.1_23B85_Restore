__n128 sub_277D8@<Q0>(uint64_t a1@<X8>)
{
  sub_2765C(v5);
  v2 = v5[5];
  *(a1 + 64) = v5[4];
  *(a1 + 80) = v2;
  *(a1 + 96) = v6;
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_27838()
{
  result = sub_54638();
  qword_7BBD8 = result;
  return result;
}

uint64_t sub_27870()
{
  v0 = [objc_allocWithZone(CLLocationAccessRecorder) init];
  [v0 getLocationAccessRecordingIntervalState];

  sub_54078();
  if (qword_76FD8 != -1)
  {
    swift_once();
  }

  v1 = qword_7BBF8;
  return sub_541D8();
}

uint64_t sub_27994(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_44BC(&qword_785D8, &unk_58100);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_27A64(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_44BC(&qword_785D8, &unk_58100);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AppleIntelligenceReportView(uint64_t a1)
{
  result = qword_78638;
  if (!qword_78638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27B60(uint64_t a1)
{
  sub_27C44(319, &qword_78648, type metadata accessor for AppleIntelligenceReportViewModel, &type metadata accessor for State);
  if (v1 <= 0x3F)
  {
    sub_27C44(319, &unk_78650, &type metadata accessor for WithCurrentHostingControllerAction, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_27C44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_27CC4()
{
  sub_44BC(&qword_786E8, &qword_581C0);
  sub_54358();

  v0 = [objc_opt_self() sharedConnection];
  if (v0)
  {
    v1 = v0;
    v2 = sub_54638();
    v3 = [v1 effectiveBoolValueForSetting:v2];

    if (v3 == 2)
    {
      sub_54078();
      if (qword_76FD8 == -1)
      {
        goto LABEL_6;
      }

      goto LABEL_7;
    }
  }

  sub_54078();
  if (qword_76FD8 != -1)
  {
LABEL_7:
    swift_once();
  }

LABEL_6:
  v4 = qword_7BBF8;
  return sub_541D8();
}

uint64_t sub_27ECC@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v47 = sub_53FE8();
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v45 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_44BC(&qword_78680, &qword_58180);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v42 - v5;
  v7 = sub_44BC(&qword_78688, &qword_58188);
  v43 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v42 - v8;
  v48 = sub_44BC(&qword_78690, &qword_58190);
  v44 = *(v48 - 8);
  __chkstk_darwin(v48);
  v11 = &v42 - v10;
  v12 = sub_44BC(&qword_78698, &qword_58198);
  v49 = *(v12 - 8);
  v50 = v12;
  __chkstk_darwin(v12);
  v53 = &v42 - v13;
  v51 = v1;
  v54 = v1;
  sub_44BC(&qword_786A0, &qword_581A0);
  sub_29F5C();
  sub_54198();
  v14 = sub_489C(&qword_786E0, &qword_78680, &qword_58180, &protocol conformance descriptor for List<A, B>);
  sub_54218();
  (*(v4 + 8))(v6, v3);
  sub_54078();
  if (qword_76FD8 != -1)
  {
    swift_once();
  }

  v15 = qword_7BBF8;
  v16 = qword_7BBF8;
  v42 = v15;
  v17 = v16;
  v18 = sub_541D8();
  v20 = v19;
  v22 = v21;
  v59 = v3;
  v60 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_542A8();
  sub_84F8(v18, v20, v22 & 1);

  (*(v43 + 8))(v9, v7);
  v24 = v46;
  v25 = v45;
  v26 = v47;
  (*(v46 + 104))(v45, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v47);
  v59 = v7;
  v60 = OpaqueTypeConformance2;
  v43 = swift_getOpaqueTypeConformance2();
  v27 = v48;
  sub_542E8();
  (*(v24 + 8))(v25, v26);
  (*(v44 + 8))(v11, v27);
  sub_54078();
  v47 = sub_541D8();
  v46 = v28;
  LODWORD(v44) = v29;
  v45 = v30;
  v31 = v51[1];
  v57 = *v51;
  v58 = v31;
  sub_44BC(&qword_786E8, &qword_581C0);
  sub_54378();
  v32 = v59;
  v33 = v60;
  v34 = v61;
  swift_getKeyPath();
  v59 = v32;
  v60 = v33;
  v61 = v34;
  sub_44BC(&qword_786F0, &qword_581F0);
  sub_543D8();

  v42 = &v42;
  v36 = __chkstk_darwin(v35);
  __chkstk_darwin(v36);
  sub_44BC(&qword_786F8, &qword_581F8);
  v55 = v27;
  v56 = v43;
  swift_getOpaqueTypeConformance2();
  sub_489C(&qword_78700, &qword_786F8, &qword_581F8, &protocol conformance descriptor for HStack<A>);
  v37 = v50;
  LOBYTE(v25) = v44;
  v38 = v47;
  v39 = v46;
  v40 = v53;
  sub_54308();

  sub_84F8(v38, v39, v25 & 1);

  return (*(v49 + 8))(v40, v37);
}

uint64_t sub_2871C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v3 = type metadata accessor for AppleIntelligenceReportView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = sub_44BC(&qword_786C8, &unk_581B0);
  __chkstk_darwin(v6);
  v8 = v20 - v7;
  v20[4] = a1;
  v9 = sub_27CC4();
  v11 = v10;
  v13 = v12;
  v20[0] = v14;
  KeyPath = swift_getKeyPath();
  sub_2A114(a1, v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  sub_2A17C(v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  v18 = &v8[*(v6 + 36)];
  sub_44BC(&qword_786D8, &qword_5A280);
  sub_53E38();
  *v18 = KeyPath;
  *v8 = v9;
  *(v8 + 1) = v11;
  v8[16] = v13 & 1;
  *(v8 + 3) = v20[0];
  sub_44BC(&qword_786B8, &qword_581A8);
  sub_489C(&qword_786B0, &qword_786B8, &qword_581A8, &protocol conformance descriptor for TupleView<A>);
  sub_2A020();
  return sub_54428();
}

uint64_t sub_2896C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = sub_44BC(&qword_78738, &qword_58280);
  __chkstk_darwin(v3 - 8);
  v54 = &v48 - v4;
  v56 = sub_44BC(&qword_78740, &qword_58288);
  v5 = __chkstk_darwin(v56);
  v59 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v58 = &v48 - v7;
  v53 = sub_44BC(&qword_78748, &qword_58290);
  v52 = *(v53 - 8);
  __chkstk_darwin(v53);
  v50 = &v48 - v8;
  v51 = sub_44BC(&qword_78750, &qword_58298);
  v9 = __chkstk_darwin(v51);
  v57 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v49 = &v48 - v12;
  __chkstk_darwin(v11);
  v55 = &v48 - v13;
  v14 = sub_54628();
  __chkstk_darwin(v14 - 8);
  sub_54618();
  if (qword_76FD8 != -1)
  {
    swift_once();
  }

  v15 = qword_7BBF8;
  v16 = sub_539F8();
  __chkstk_darwin(v16 - 8);
  v17 = v15;
  sub_539E8();
  v69 = sub_54678();
  v70 = v18;
  v19 = a1[1];
  *&v61 = *a1;
  v20 = v61;
  *(&v61 + 1) = v19;
  sub_44BC(&qword_786E8, &qword_581C0);
  sub_54378();
  v21 = v64;
  v22 = v65;
  swift_getKeyPath();
  v67 = v21;
  v68 = v22;
  sub_44BC(&qword_786F0, &qword_581F0);
  sub_543D8();

  v48 = v64;
  v23 = v65;
  v24 = v66;

  v61 = v48;
  v62 = v23;
  v63 = v24;
  __chkstk_darwin(v25);
  v26 = v20;
  sub_44BC(&qword_78758, &qword_582A0);
  sub_2A4D4();
  sub_2A528();
  sub_A700();
  v27 = v50;
  sub_543C8();
  *&v64 = v20;
  *(&v64 + 1) = v19;
  sub_54358();

  v28 = [objc_opt_self() sharedConnection];
  if (v28)
  {
    v29 = v28;
    v30 = sub_54638();
    v31 = [v29 effectiveBoolValueForSetting:v30];

    v32 = v31 == 2;
  }

  else
  {
    v32 = 0;
  }

  KeyPath = swift_getKeyPath();
  v34 = swift_allocObject();
  *(v34 + 16) = v32;
  v35 = v49;
  (*(v52 + 32))(v49, v27, v53);
  v36 = (v35 + *(v51 + 36));
  *v36 = KeyPath;
  v36[1] = sub_2A678;
  v36[2] = v34;
  v37 = v55;
  sub_2A690(v35, v55);
  *&v64 = v26;
  *(&v64 + 1) = v19;
  sub_54358();
  sub_54078();
  sub_53E08();
  type metadata accessor for AppleIntelligenceReportViewModel(0);
  sub_2A700(&qword_78770, &unk_58424);
  v38 = v58;
  sub_54448();
  *&v64 = v26;
  *(&v64 + 1) = v19;
  sub_54358();
  sub_2A970();
  LOBYTE(KeyPath) = v39;

  v40 = swift_getKeyPath();
  v41 = swift_allocObject();
  *(v41 + 16) = KeyPath & 1;
  v42 = v57;
  v43 = (v38 + *(v56 + 36));
  *v43 = v40;
  v43[1] = sub_2A96C;
  v43[2] = v41;
  sub_4790(v37, v42, &qword_78750, &qword_58298);
  v44 = v59;
  sub_4790(v38, v59, &qword_78740, &qword_58288);
  v45 = v60;
  sub_4790(v42, v60, &qword_78750, &qword_58298);
  v46 = sub_44BC(&qword_78778, &qword_582D8);
  sub_4790(v44, v45 + *(v46 + 48), &qword_78740, &qword_58288);
  sub_47F8(v38, &qword_78740, &qword_58288);
  sub_47F8(v37, &qword_78750, &qword_58298);
  sub_47F8(v44, &qword_78740, &qword_58288);
  return sub_47F8(v42, &qword_78750, &qword_58298);
}

uint64_t sub_291BC(void *a1)
{
  sub_44BC(&qword_786E8, &qword_581C0);
  sub_54358();
  sub_2ABA8();

  sub_44BC(&qword_78780, &unk_582E0);
  sub_489C(&qword_78788, &qword_78780, &unk_582E0, &protocol conformance descriptor for [A]);
  sub_2A744();
  return sub_543F8();
}

uint64_t sub_292C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2AD9C(*a1, *(a1 + 8));
  sub_A700();
  result = sub_54208();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

void sub_29358()
{
  v0 = sub_54158();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_54638();
  v5 = [objc_opt_self() presenterForPrivacySplashWithIdentifier:v4];

  if (v5)
  {
    type metadata accessor for AppleIntelligenceReportView(0);
    v6 = sub_3E088(v3);
    __chkstk_darwin(v6);
    *(&v7 - 2) = v5;
    sub_54148();
    (*(v1 + 8))(v3, v0);
    sub_53E18();
  }

  else
  {

    static OpenURLAction.Result.discarded.getter();
  }
}

uint64_t sub_29514@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2A700(&qword_78730, &unk_58368);
  sub_53A28();

  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_295D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_53FF8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_44BC(&qword_78708, &qword_58200);
  return sub_29628(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_29628@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v34 = a2;
  v3 = type metadata accessor for AppleIntelligenceReportView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = sub_44BC(&qword_78710, &qword_58208);
  __chkstk_darwin(v6 - 8);
  v8 = &v31 - v7;
  v9 = sub_44BC(&qword_78718, &unk_58210);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v33 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v32 = &v31 - v14;
  v15 = __chkstk_darwin(v13);
  v31 = &v31 - v16;
  __chkstk_darwin(v15);
  v18 = &v31 - v17;
  sub_53DB8();
  v19 = sub_53DC8();
  (*(*(v19 - 8) + 56))(v8, 0, 1, v19);
  sub_2A114(a1, &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v21 = swift_allocObject();
  sub_2A17C(&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  sub_54398();
  sub_2A114(a1, &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = swift_allocObject();
  sub_2A17C(&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v20);
  v23 = v31;
  sub_543A8();
  v24 = *(v10 + 16);
  v25 = v32;
  v24(v32, v18, v9);
  v26 = v33;
  v24(v33, v23, v9);
  v27 = v34;
  v24(v34, v25, v9);
  v28 = sub_44BC(&qword_78728, &qword_58220);
  v24(&v27[*(v28 + 48)], v26, v9);
  v29 = *(v10 + 8);
  v29(v23, v9);
  v29(v18, v9);
  v29(v26, v9);
  return (v29)(v25, v9);
}

uint64_t sub_29A4C(void *a1)
{
  sub_44BC(&qword_786E8, &qword_581C0);
  sub_54358();
  if (*(v3 + 24) == 1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_2A700(&qword_78730, &unk_58368);
    sub_53A18();
  }

  else
  {
    *(v3 + 24) = 0;
  }
}

uint64_t sub_29BA0(void *a1)
{
  sub_44BC(&qword_786E8, &qword_581C0);
  sub_54358();
  swift_getKeyPath();
  sub_2A700(&qword_78730, &unk_58368);
  sub_53A18();
}

uint64_t sub_29CA4@<X0>(uint64_t a5@<X8>)
{
  sub_54078();
  if (qword_76FD8 != -1)
  {
    swift_once();
  }

  v6 = qword_7BBF8;
  result = sub_541D8();
  *a5 = result;
  *(a5 + 8) = v8;
  *(a5 + 16) = v9 & 1;
  *(a5 + 24) = v10;
  return result;
}

uint64_t sub_29D7C@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_54068();
  __chkstk_darwin(v3 - 8);
  sub_54058();
  v12._object = 0x800000000005DE10;
  v12._countAndFlagsBits = 0xD00000000000005ELL;
  sub_54048(v12);
  sub_44BC(&qword_786E8, &qword_581C0);
  sub_54358();
  v4 = sub_2A970();
  v6 = v5;

  v13._countAndFlagsBits = sub_2AD9C(v4, v6 & 1);
  sub_54038(v13);

  v14._countAndFlagsBits = 0xD00000000000008FLL;
  v14._object = 0x800000000005DE70;
  sub_54048(v14);
  sub_54088();
  if (qword_76FD8 != -1)
  {
    swift_once();
  }

  v7 = qword_7BBF8;
  result = sub_541D8();
  *a2 = result;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v11;
  return result;
}

unint64_t sub_29F5C()
{
  result = qword_786A8;
  if (!qword_786A8)
  {
    sub_4590(&qword_786A0, &qword_581A0);
    sub_489C(&qword_786B0, &qword_786B8, &qword_581A8, &protocol conformance descriptor for TupleView<A>);
    sub_2A020();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_786A8);
  }

  return result;
}

unint64_t sub_2A020()
{
  result = qword_786C0;
  if (!qword_786C0)
  {
    sub_4590(&qword_786C8, &unk_581B0);
    sub_489C(&qword_786D0, &qword_786D8, &qword_5A280, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_786C0);
  }

  return result;
}

uint64_t sub_2A114(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleIntelligenceReportView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2A17C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleIntelligenceReportView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2A210(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AppleIntelligenceReportView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_2A2D8()
{
  v1 = (type metadata accessor for AppleIntelligenceReportView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  sub_44BC(&qword_78720, &unk_593A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_54158();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_2A3FC()
{
  type metadata accessor for AppleIntelligenceReportView(0);

  sub_29358();
}

id sub_2A47C(uint64_t a1)
{
  v2 = *(v1 + 16);
  [v2 setPresentingViewController:a1];

  return [v2 present];
}

unint64_t sub_2A4D4()
{
  result = qword_78760;
  if (!qword_78760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78760);
  }

  return result;
}

unint64_t sub_2A528()
{
  result = qword_78768;
  if (!qword_78768)
  {
    sub_4590(&qword_78758, &qword_582A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78768);
  }

  return result;
}

uint64_t sub_2A5A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_53FA8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2A5D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_53FA8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2A690(uint64_t a1, uint64_t a2)
{
  v4 = sub_44BC(&qword_78750, &qword_58298);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2A700(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AppleIntelligenceReportViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2A744()
{
  result = qword_78790;
  if (!qword_78790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78790);
  }

  return result;
}

uint64_t sub_2A798()
{
  sub_4590(&qword_78698, &qword_58198);
  sub_4590(&qword_786F8, &qword_581F8);
  sub_4590(&qword_78690, &qword_58190);
  sub_4590(&qword_78688, &qword_58188);
  sub_4590(&qword_78680, &qword_58180);
  sub_489C(&qword_786E0, &qword_78680, &qword_58180, &protocol conformance descriptor for List<A, B>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_489C(&qword_78700, &qword_786F8, &qword_581F8, &protocol conformance descriptor for HStack<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2A970()
{
  swift_getKeyPath();
  sub_2A700(&qword_78730, &unk_58368);
  sub_53A28();

  v0 = [objc_opt_self() sharedConnection];
  if (v0)
  {
    v1 = v0;
    v2 = sub_54638();
    v3 = [v1 effectiveBoolValueForSetting:v2];

    if (v3 == 2)
    {
      return 0;
    }
  }

  sub_2B3E8();
  sub_53C78();
  v6 = v5;

  if (v6 > 0.0)
  {
    return *&v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2AAB4@<X0>(uint64_t a1@<X8>)
{
  result = sub_2A970();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_2AAE8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_2A700(&qword_78730, &unk_58368);
  sub_53A18();
}

char *sub_2ABA8()
{
  sub_53CA8();
  v0 = sub_53C48();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v0;
    sub_4DD2C(0, v1, 0);
    v3 = v2;
    v4 = _swiftEmptyArrayStorage;
    v5 = _swiftEmptyArrayStorage[2];
    v6 = 2 * v5;
    v7 = 32;
    do
    {
      v8 = *(v3 + v7);
      if (v8 > 0.0)
      {
        v9 = *(v3 + v7);
      }

      else
      {
        v9 = 0;
      }

      v10 = _swiftEmptyArrayStorage[3];
      v11 = v5 + 1;
      if (v5 >= v10 >> 1)
      {
        sub_4DD2C((v10 > 1), v5 + 1, 1);
        v3 = v2;
      }

      _swiftEmptyArrayStorage[2] = v11;
      v12 = &_swiftEmptyArrayStorage[v6];
      v12[4] = v9;
      *(v12 + 40) = v8 <= 0.0;
      v6 += 2;
      v7 += 8;
      v5 = v11;
      --v1;
    }

    while (v1);
  }

  else
  {

    v4 = _swiftEmptyArrayStorage;
  }

  v13 = COERCE_DOUBLE(sub_2A970());
  v15 = _swiftEmptyArrayStorage[2];
  if (v15)
  {
    v16 = &_swiftEmptyArrayStorage[5];
    do
    {
      if (*v16)
      {
        if (v14)
        {
          goto LABEL_18;
        }
      }

      else if ((v14 & 1) == 0 && *(v16 - 1) == v13)
      {
LABEL_18:

        return v4;
      }

      v16 += 2;
      --v15;
    }

    while (v15);
  }

  v17 = sub_2A970();
  v19 = v18;
  v20 = _swiftEmptyArrayStorage[2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v20 >= _swiftEmptyArrayStorage[3] >> 1)
  {
    v4 = sub_23B20(isUniquelyReferenced_nonNull_native, v20 + 1, 1, _swiftEmptyArrayStorage);
  }

  sub_4E000(0, 0, 1, v17, v19 & 1);
  return v4;
}

uint64_t sub_2AD9C(uint64_t a1, char a2)
{
  if (a2)
  {
    if (qword_76FD8 != -1)
    {
      swift_once();
    }

    return sub_538D8();
  }

  else
  {
    v3 = sub_54D38();
    v28 = v4;
    v29 = v3;
    v5 = sub_54D08();
    v30 = v22;
    v6 = *(v5 - 8);
    v26 = v5;
    v27 = v6;
    __chkstk_darwin(v5);
    v25 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_44BC(&qword_788B8, &qword_584C0);
    sub_54CD8();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_582F0;
    sub_54CC8();
    sub_54CB8();
    sub_54CA8();
    sub_2C9C4(v8);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v23 = sub_54CF8();
    v24 = v22;
    v9 = *(v23 - 8);
    __chkstk_darwin(v23);
    v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_54CE8();
    v12 = sub_54C78();
    v22[1] = v22;
    v13 = *(v12 - 8);
    __chkstk_darwin(v12);
    v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_54C68();
    v16 = sub_54C98();
    v22[0] = v22;
    v17 = *(v16 - 8);
    __chkstk_darwin(v16);
    v19 = v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_54C88();
    v20 = v25;
    sub_537E8();

    (*(v17 + 8))(v19, v16);
    (*(v13 + 8))(v15, v12);
    (*(v9 + 8))(v11, v23);
    sub_2CCBC(&qword_788C0, &type metadata accessor for Duration.UnitsFormatStyle, &protocol conformance descriptor for Duration.UnitsFormatStyle);
    v21 = v26;
    sub_54D18();
    (*(v27 + 8))(v20, v21);
    return v31;
  }
}

uint64_t sub_2B260()
{
  swift_getKeyPath();
  sub_2A700(&qword_78730, &unk_58368);
  sub_53A28();

  return *(v0 + 24);
}

uint64_t sub_2B2EC(uint64_t result)
{
  if (*(v1 + 24) == (result & 1))
  {
    *(v1 + 24) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_2A700(&qword_78730, &unk_58368);
    sub_53A18();
  }

  return result;
}

uint64_t sub_2B3E8()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v2 = v0;
    sub_53CA8();
    swift_allocObject();
    v1 = sub_53C98();
    *(v2 + 16) = v1;
  }

  return v1;
}

void sub_2B464(uint64_t a1, uint64_t a2, char a3)
{
  v6 = [objc_opt_self() sharedConnection];
  if (!v6 || (v7 = v6, v8 = sub_54638(), v9 = [v7 effectiveBoolValueForSetting:v8], v8, v7, v7, v9 != 2))
  {
    v10 = COERCE_DOUBLE(sub_2A970());
    if (a3)
    {
      if ((v11 & 1) == 0)
      {
        if (*(a1 + 24) == 1)
        {
          *(a1 + 24) = 1;
        }

        else
        {
          KeyPath = swift_getKeyPath();
          __chkstk_darwin(KeyPath);
          sub_2A700(&qword_78730, &unk_58368);
          sub_53A18();
        }
      }
    }

    else if (v11)
    {
      sub_2B3E8();
      sub_54D38();
      sub_54D28();
      sub_53C88();

      v12 = [objc_opt_self() defaultCenter];
      if (qword_76FC0 != -1)
      {
        swift_once();
      }

      [v12 postNotificationName:qword_7BBD0 object:0];
    }

    else if (*&a2 != v10)
    {
      sub_2B3E8();
      sub_54D38();
      sub_54D28();
      sub_53C88();
    }
  }
}

void sub_2B6E4()
{
  sub_2B3E8();
  sub_53C88();

  v0 = [objc_opt_self() defaultCenter];
  if (qword_76FC0 != -1)
  {
    swift_once();
  }

  [v0 postNotificationName:qword_7BBD0 object:0];
}

uint64_t sub_2B798()
{

  v1 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings32AppleIntelligenceReportViewModel___observationRegistrar;
  v2 = sub_53A48();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppleIntelligenceReportViewModel(uint64_t a1)
{
  result = qword_787C8;
  if (!qword_787C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2B890(uint64_t a1)
{
  result = sub_53A48();
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

uint64_t sub_2B938@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v2 = sub_53BB8();
  __chkstk_darwin(v2 - 8);
  v3 = sub_44BC(&qword_78868, &qword_58460);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - v5;
  v7 = sub_44BC(&qword_78870, &qword_58468);
  v30 = *(v7 - 8);
  v31 = v7;
  __chkstk_darwin(v7);
  v27 = &v27 - v8;
  sub_53BA8();
  v9 = sub_2A700(&qword_78770, &unk_58424);
  v28 = v1;
  v29 = v9;
  sub_53AC8();
  sub_489C(&qword_78878, &qword_78868, &qword_58460, &protocol conformance descriptor for FileRepresentation<A>);
  sub_53AF8();
  (*(v4 + 8))(v6, v3);
  v10 = sub_44BC(&qword_78880, &qword_58478);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - v12;
  v14 = sub_44BC(&qword_78888, &qword_58480);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v27 - v16;
  sub_539A8();
  sub_2CCBC(&qword_78890, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  sub_53AD8();
  sub_489C(&qword_78898, &qword_78888, &qword_58480, &protocol conformance descriptor for ProxyRepresentation<A, B>);
  sub_53AF8();
  (*(v15 + 8))(v17, v14);
  v18 = sub_44BC(&qword_788A0, &unk_58490);
  v19 = __chkstk_darwin(v18);
  v21 = &v27 - v20;
  v22 = *(v19 + 48);
  v24 = v30;
  v23 = v31;
  v25 = v27;
  (*(v30 + 16))(&v27 - v20, v27, v31);
  (*(v11 + 16))(&v21[v22], v13, v10);
  sub_53B08();
  (*(v11 + 8))(v13, v10);
  return (*(v24 + 8))(v25, v23);
}

uint64_t sub_2BE44(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_2BE68, 0, 0);
}

uint64_t sub_2BE68()
{
  v1 = sub_539A8();
  v0[4] = v1;
  v2 = *(v1 - 8);
  v0[5] = v2;
  v0[6] = *(v2 + 64);
  v0[7] = swift_task_alloc();
  v3 = NSTemporaryDirectory();
  sub_54668();

  sub_53938();

  v4 = swift_task_alloc();
  v0[8] = v4;
  sub_53968();
  v0[9] = sub_2B3E8();
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_2BFFC;

  return TransparencyReport.export(to:)(v4);
}

uint64_t sub_2BFFC()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_2C228;
  }

  else
  {
    v2 = sub_2C12C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_2C12C()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[4];
  swift_task_alloc();
  (*(v3 + 16))();
  sub_53AE8();
  v5 = *(v3 + 8);
  v5(v2, v4);
  v5(v1, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_2C228()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = *(v0[5] + 8);
  v3(v0[8], v2);
  v3(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2C2D8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_2C2FC, 0, 0);
}

uint64_t sub_2C2FC()
{
  v1 = sub_539A8();
  v0[4] = v1;
  v0[5] = *(v1 - 8);
  v0[6] = swift_task_alloc();
  v2 = NSTemporaryDirectory();
  sub_54668();

  sub_53938();

  sub_53968();
  v0[7] = sub_2B3E8();
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_2C480;
  v4 = v0[2];

  return TransparencyReport.export(to:)(v4);
}

uint64_t sub_2C480()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_2C630;
  }

  else
  {
    v2 = sub_2C5B0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_2C5B0()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2C630()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = *(v0[5] + 8);
  v3(v0[2], v2);
  v3(v1, v2);

  v4 = v0[1];

  return v4();
}

Swift::Int sub_2C6D4(Swift::UInt64 a1, char a2)
{
  sub_54C28();
  if (a2)
  {
    sub_54C38(0);
  }

  else
  {
    sub_54C38(1uLL);
    if ((a1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = 0;
    }

    sub_54C48(v4);
  }

  return sub_54C58();
}

void sub_2C750()
{
  if (*(v0 + 8))
  {
    sub_54C38(0);
  }

  else
  {
    v1 = *v0;
    sub_54C38(1uLL);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }

    sub_54C48(v2);
  }
}

Swift::Int sub_2C7A0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_54C28();
  if (v3)
  {
    sub_54C38(0);
  }

  else
  {
    sub_54C38(1uLL);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }

    sub_54C48(v4);
  }

  return sub_54C58();
}

BOOL sub_2C80C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

void sub_2C848(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

unint64_t sub_2C860()
{
  result = qword_78860;
  if (!qword_78860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78860);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for AppleIntelligenceReportViewModel.SupportedDuration(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AppleIntelligenceReportViewModel.SupportedDuration(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for AppleIntelligenceReportViewModel.SupportedDuration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

uint64_t sub_2C934(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2C950(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

void *sub_2C9C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_44BC(&qword_788C8, &qword_584C8);
    v3 = sub_54A88();
    v36 = v3 + 56;
    result = sub_54CD8();
    v5 = result;
    v6 = 0;
    v7 = *(result - 1);
    v8 = *(v7 + 16);
    v34 = v7 + 16;
    v35 = v8;
    v29 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v9 = (v7 + 8);
    v27 = v1;
    v28 = (v7 + 32);
    v10 = *(v7 + 64);
    v37 = *(v7 + 72);
    v33 = v10;
    while (1)
    {
      __chkstk_darwin(result);
      v32 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
      v12 = &v26 - v32;
      v35(&v26 - v32);
      sub_2CCBC(&qword_788D0, &type metadata accessor for Duration.UnitsFormatStyle.Unit, &protocol conformance descriptor for Duration.UnitsFormatStyle.Unit);
      v13 = sub_545E8();
      v14 = ~(-1 << *(v3 + 32));
      v15 = v13 & v14;
      v16 = (v13 & v14) >> 6;
      v17 = *(v36 + 8 * v16);
      v18 = 1 << (v13 & v14);
      if ((v18 & v17) != 0)
      {
        v30 = &v26;
        v31 = v6;
        v19 = v3;
        do
        {
          __chkstk_darwin(v13);
          v20 = &v26 - v32;
          (v35)(&v26 - v32, *(v19 + 48) + v15 * v37, v5);
          sub_2CCBC(&qword_788D8, &type metadata accessor for Duration.UnitsFormatStyle.Unit, &protocol conformance descriptor for Duration.UnitsFormatStyle.Unit);
          v21 = sub_54608();
          v22 = *v9;
          v13 = (*v9)(v20, v5);
          if (v21)
          {
            result = v22(v12, v5);
            v1 = v27;
            v3 = v19;
            v6 = v31;
            goto LABEL_4;
          }

          v15 = (v15 + 1) & v14;
          v16 = v15 >> 6;
          v17 = *(v36 + 8 * (v15 >> 6));
          v18 = 1 << v15;
        }

        while (((1 << v15) & v17) != 0);
        v1 = v27;
        v3 = v19;
        v6 = v31;
      }

      *(v36 + 8 * v16) = v18 | v17;
      result = (*v28)(*(v3 + 48) + v15 * v37, v12, v5);
      v23 = *(v3 + 16);
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      *(v3 + 16) = v25;
LABEL_4:
      if (++v6 == v1)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_2CCBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2CD04@<X0>(uint64_t a1@<X8>)
{
  result = sub_2A970();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

__n128 sub_2CD8C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2CDA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2CDF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2CE6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  v3 = *(a1 + 24);
  v6 = *(a1 + 32);
  v2 = v6;
  *a2 = v7;
  *(a2 + 16) = v3;
  *(a2 + 24) = v2;
  sub_2D084(&v7, v5);
  return sub_2D0E0(&v6, v5);
}

uint64_t sub_2CEC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = v3;
  v7 = v4;
  v8 = *(a1 + 56);
  if (v5 == 255)
  {
    v6 = sub_5AD0(*a1);
    v7 = v9;
    v8 = v10;
  }

  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;

  return sub_2D070(v3, v4, v5);
}

unint64_t sub_2D014()
{
  result = qword_788E0;
  if (!qword_788E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_788E0);
  }

  return result;
}

uint64_t sub_2D070(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_7C6C(result, a2, a3);
  }

  return result;
}

uint64_t sub_2D0E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_44BC(&qword_788E8, &qword_58F00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2D154()
{
  result = qword_788F0;
  if (!qword_788F0)
  {
    sub_4590(&qword_788F8, &unk_586F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_788F0);
  }

  return result;
}

uint64_t sub_2D1C8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return sub_2D224(v5, v7) & 1;
}

uint64_t sub_2D224(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (sub_541B8())
  {
    v4 = a1[56];
    v5 = a2[56];
    if (v4 == 255)
    {
      if (v5 == 255)
      {
        return 1;
      }
    }

    else if (v5 != 255)
    {
      v7 = *(a1 + 5);
      v6 = *(a1 + 6);
      v9 = *(a2 + 5);
      v8 = *(a2 + 6);
      sub_7C6C(v9, v8, v5);
      LOBYTE(v6) = sub_3FB8(v7, v6, v4, v9, v8, v5);
      sub_7CAC(v9, v8, v5);
      if (v6)
      {
        return 1;
      }
    }
  }

  return 0;
}

__n128 sub_2D318(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2D33C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2D384(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2D408@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_540A8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_44BC(&qword_78910, &qword_58AB8);
  sub_44BC(&qword_78918, &unk_58AC0);
  sub_489C(&qword_78920, &qword_78918, &unk_58AC0, &protocol conformance descriptor for TupleView<A>);
  return sub_53DD8();
}

uint64_t sub_2D4E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  v6 = *(a1 + 24);
  sub_54178();
  v7 = sub_541C8();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v18[0] = v3;
  v18[1] = v4;
  v19 = v6;
  v17 = v5;
  v16 = v6;
  v21 = v6 & 1;
  v11 &= 1u;
  v20 = v11;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v5;
  *(a2 + 32) = v7;
  *(a2 + 40) = v9;
  *(a2 + 48) = v11;
  *(a2 + 56) = v13;
  sub_2D084(v18, v15);
  sub_2D0E0(&v17, v15);
  sub_4088(v3, v4, v6 & 1);

  sub_4088(v7, v9, v11);

  sub_84F8(v7, v9, v11);

  sub_84F8(v3, v4, v16);
}

uint64_t sub_2D624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  v6 = v3;
  v7 = v4;
  v8 = *(a1 + 88);
  if (v5 == 255)
  {
    v6 = sub_5AD0(*a1);
    v7 = v9;
    v8 = v10;
  }

  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;

  return sub_2D070(v3, v4, v5);
}

uint64_t sub_2D6C4()
{
  sub_44BC(&qword_78900, &qword_58A80);
  sub_489C(&qword_78908, &qword_78900, &qword_58A80, &protocol conformance descriptor for VStack<A>);
  sub_2D014();
  return sub_54338();
}

uint64_t sub_2D8D0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v7[3] = v2;
  v8[0] = a1[4];
  *(v8 + 9) = *(a1 + 73);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v9[3] = v4;
  v10[0] = a2[4];
  *(v10 + 9) = *(a2 + 73);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return sub_2D93C(v7, v9) & 1;
}

uint64_t sub_2D93C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (sub_541B8() & 1) != 0 && (sub_541B8())
  {
    v4 = a1[88];
    v5 = a2[88];
    if (v4 == 255)
    {
      if (v5 == 255)
      {
        return 1;
      }
    }

    else if (v5 != 255)
    {
      v7 = *(a1 + 9);
      v6 = *(a1 + 10);
      v9 = *(a2 + 9);
      v8 = *(a2 + 10);
      sub_7C6C(v9, v8, v5);
      LOBYTE(v6) = sub_3FB8(v7, v6, v4, v9, v8, v5);
      sub_7CAC(v9, v8, v5);
      if (v6)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_2DA50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 90))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2DA98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 90) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 90) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2DB1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *(a1 + 40);
  v8 = *(a1 + 56);
  v3 = *(a1 + 56);
  v6 = *(a1 + 64);
  v2 = v6;
  *a2 = v7;
  *(a2 + 16) = v3;
  *(a2 + 24) = v2;
  sub_2D084(&v7, v5);
  return sub_2D0E0(&v6, v5);
}

uint64_t sub_2DBF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  v6 = v3;
  v7 = v4;
  v8 = *(a1 + 88);
  if (v5 == 255)
  {
    v6 = sub_5AD0(*a1);
    v7 = v9;
    v8 = v10;
  }

  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;

  return sub_2D070(v3, v4, v5);
}

uint64_t sub_2DC98()
{
  sub_44BC(&qword_788F8, &unk_586F0);
  sub_2D154();
  return sub_53E68();
}

unint64_t sub_2DD7C()
{
  result = qword_78938;
  if (!qword_78938)
  {
    sub_4590(&qword_78940, &qword_58F08);
    sub_2D154();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78938);
  }

  return result;
}

uint64_t sub_2DE18(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v7[3] = v2;
  v8[0] = a1[4];
  *(v8 + 10) = *(a1 + 74);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v9[3] = v4;
  v10[0] = a2[4];
  *(v10 + 10) = *(a2 + 74);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return sub_2DE84(v7, v9) & 1;
}

uint64_t sub_2DE84(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if ((sub_541B8() & 1) == 0 || (sub_541B8() & 1) == 0)
  {
    return 0;
  }

  v4 = a1[88];
  v5 = a2[88];
  if (v4 != 255)
  {
    if (v5 == 255)
    {
      return 0;
    }

    v6 = *(a1 + 9);
    v7 = *(a1 + 10);
    v8 = *(a2 + 9);
    v9 = *(a2 + 10);
    sub_7C6C(v8, v9, a2[88]);
    v10 = sub_3FB8(v6, v7, v4, v8, v9, v5);
    sub_7CAC(v8, v9, v5);
    if ((v10 & 1) == 0)
    {
      return 0;
    }

LABEL_10:
    v12 = a1[89];
    v13 = a2[89];
    if (v12 == 2)
    {
      if (v13 != 2)
      {
        return 0;
      }
    }

    else if (v13 == 2 || ((v13 ^ v12) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  if (v5 == 255)
  {
    goto LABEL_10;
  }

  return 0;
}

uint64_t sub_2DFD0(char a1)
{
  if (!a1)
  {
    if (qword_76FD8 == -1)
    {
      return sub_538D8();
    }

    goto LABEL_9;
  }

  if (a1 == 1)
  {
    if (qword_76FD8 == -1)
    {
      return sub_538D8();
    }

    goto LABEL_9;
  }

  if (qword_76FD8 != -1)
  {
LABEL_9:
    swift_once();
  }

  return sub_538D8();
}

uint64_t sub_2E134()
{
  swift_getKeyPath();
  sub_30744(&qword_78A68, &unk_59170);
  sub_53A28();

  return *(v0 + 16);
}

uint64_t sub_2E1C0(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_30744(&qword_78A68, &unk_59170);
    sub_53A18();
  }

  return result;
}

uint64_t sub_2E2C4()
{
  swift_getKeyPath();
  sub_30744(&qword_78A68, &unk_59170);
  sub_53A28();

  return *(v0 + 17);
}

uint64_t sub_2E350(uint64_t result)
{
  if (*(v1 + 17) == (result & 1))
  {
    *(v1 + 17) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_30744(&qword_78A68, &unk_59170);
    sub_53A18();
  }

  return result;
}

uint64_t sub_2E454()
{
  swift_getKeyPath();
  sub_30744(&qword_78A68, &unk_59170);
  sub_53A28();

  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_2E4F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_30744(&qword_78A68, &unk_59170);
  sub_53A28();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_2E588(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32) == a1 && *(v2 + 40) == a2;
  if (v5 || (sub_54BD8() & 1) != 0)
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_30744(&qword_78A68, &unk_59170);
    sub_53A18();
  }
}

uint64_t sub_2E6D4()
{
  swift_getKeyPath();
  sub_30744(&qword_78A68, &unk_59170);
  sub_53A28();

  v1 = [*(v0 + 24) getLocationAccessRecordingIntervalState];
  if (v1 == (&dword_4 + 3))
  {
    return 1;
  }

  else
  {
    return 2 * (v1 != &stru_68.reserved3);
  }
}

void sub_2E780(char a1, uint64_t a2)
{
  if (a1 == 1)
  {
    swift_getKeyPath();
    sub_30744(&qword_78A68, &unk_59170);
    sub_53A28();

    if ([*(a2 + 24) getLocationAccessRecordingIntervalState] == &stru_68.reserved3)
    {
      if (*(a2 + 17) == 1)
      {
        *(a2 + 17) = 1;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        sub_53A18();
      }

      return;
    }

    v3 = 7;
  }

  else
  {
    if (a1 == 2)
    {
      if (*(a2 + 16) == 1)
      {
        *(a2 + 16) = 1;
      }

      else
      {
        v4 = swift_getKeyPath();
        __chkstk_darwin(v4);
        aBlock[0] = a2;
        sub_30744(&qword_78A68, &unk_59170);
        sub_53A18();
      }

      return;
    }

    v3 = 180;
  }

  v5 = *(a2 + 24);
  aBlock[4] = sub_2EAD4;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2EAF4;
  aBlock[3] = &unk_6FDD0;
  v6 = _Block_copy(aBlock);
  v7 = v5;
  [v7 setLocationAccessRecordAsActiveForDays:v3 completionHandler:v6];
  _Block_release(v6);

  v8 = [objc_opt_self() defaultCenter];
  if (qword_76FC8 != -1)
  {
    swift_once();
  }

  [v8 postNotificationName:qword_7BBD8 object:0];
}

uint64_t sub_2EAF4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_2EBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 24);
  v9[4] = a2;
  v9[5] = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_2EAF4;
  v9[3] = a3;
  v6 = _Block_copy(v9);
  v7 = v5;
  [v7 setLocationAccessRecordAsActiveForDays:a4 completionHandler:v6];
  _Block_release(v6);

  v8 = [objc_opt_self() defaultCenter];
  if (qword_76FC8 != -1)
  {
    swift_once();
  }

  [v8 postNotificationName:qword_7BBD8 object:0];
}

void sub_2ED1C(char a1, uint64_t (*a2)(void), const char *a3, ...)
{
  if (qword_76FF8 != -1)
  {
    swift_once();
  }

  v6 = sub_53C38();
  sub_7700(v6, qword_7BC48);
  oslog = sub_53C18();
  v7 = a2();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = a1 & 1;
    _os_log_impl(&dword_0, oslog, v7, a3, v8, 8u);
  }
}

uint64_t sub_2EE28()
{

  v1 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings25LocationAccessReportModel___observationRegistrar;
  v2 = sub_53A48();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LocationAccessReportModel(uint64_t a1)
{
  result = qword_78978;
  if (!qword_78978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2EF28(uint64_t a1)
{
  result = sub_53A48();
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

uint64_t sub_2EFF8@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v2 = sub_53BB8();
  __chkstk_darwin(v2 - 8);
  v3 = sub_44BC(&qword_78A20, &qword_591C8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - v5;
  v7 = sub_44BC(&qword_78A28, &qword_591D0);
  v30 = *(v7 - 8);
  v31 = v7;
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  sub_53BA8();
  v10 = sub_30744(&qword_78A30, &unk_5918C);
  v28 = v1;
  v29 = v10;
  sub_53AC8();
  sub_489C(&qword_78A38, &qword_78A20, &qword_591C8, &protocol conformance descriptor for FileRepresentation<A>);
  sub_53AF8();
  (*(v4 + 8))(v6, v3);
  v11 = sub_44BC(&qword_78A40, &qword_591E0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27 - v13;
  v15 = sub_44BC(&qword_78A48, &qword_591E8);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v27 - v17;
  sub_539A8();
  sub_305E0();
  sub_53AD8();
  sub_489C(&qword_78A50, &qword_78A48, &qword_591E8, &protocol conformance descriptor for ProxyRepresentation<A, B>);
  sub_53AF8();
  (*(v16 + 8))(v18, v15);
  v19 = sub_44BC(&qword_78A58, &qword_591F8);
  v20 = __chkstk_darwin(v19);
  v22 = &v27 - v21;
  v23 = *(v20 + 48);
  v25 = v30;
  v24 = v31;
  (*(v30 + 16))(&v27 - v21, v9, v31);
  (*(v12 + 16))(&v22[v23], v14, v11);
  sub_53B08();
  (*(v12 + 8))(v14, v11);
  return (*(v25 + 8))(v9, v24);
}

uint64_t sub_2F4E8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 176) = a1;
  *(v2 + 184) = v3;
  return _swift_task_switch(sub_2F50C, 0, 0);
}

uint64_t sub_2F50C()
{
  v1 = *(v0[23] + 24);
  v0[24] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2F630;
  v2 = swift_continuation_init();
  v0[17] = sub_44BC(&qword_78A60, &qword_59200);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_2FD00;
  v0[13] = &unk_6FCF0;
  v0[14] = v2;
  [v1 exportLocationAccessActivity:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_2F630()
{

  return _swift_task_switch(sub_2F710, 0, 0);
}

uint64_t sub_2F710()
{
  v40 = v0;
  v1 = v0[23];
  v2 = v0[24];

  v3 = sub_539A8();
  v34 = *(v3 - 8);
  v35 = v3;
  v4 = swift_task_alloc();
  v5 = NSTemporaryDirectory();
  sub_54668();

  sub_53938();

  v36 = v4;
  v37 = swift_task_alloc();
  sub_53968();
  v38 = [objc_opt_self() defaultManager];
  v6 = swift_task_alloc();
  swift_getKeyPath();
  v0[20] = v1;
  sub_30744(&qword_78A68, &unk_59170);
  v7 = v6;
  sub_53A28();

  sub_53948();

  swift_getKeyPath();
  v0[21] = v1;
  sub_53A28();
  v8 = v38;

  v9 = sub_54638();

  v10 = [v38 fileExistsAtPath:v9];

  if (v10)
  {
    sub_53988();
    v11 = sub_54638();

    v12 = [v38 contentsAtPath:v11];

    if (v12)
    {
      v33 = sub_539C8();
      v14 = v13;
    }

    else
    {
      v33 = 0;
      v14 = 0xF000000000000000;
    }

    sub_53988();
    v15 = sub_54638();

    if (v14 >> 60 == 15)
    {
      v16 = 0;
    }

    else
    {
      sub_306AC(v33, v14);
      v16 = sub_539B8();
      sub_30644(v33, v14);
    }

    v17 = [v38 createFileAtPath:v15 contents:v16 attributes:0];

    if (v17)
    {
      v31 = v0;
      v32 = v6;
      if (qword_76FF8 != -1)
      {
        swift_once();
      }

      v18 = sub_53C38();
      sub_7700(v18, qword_7BC48);
      v19 = swift_task_alloc();
      (*(v34 + 16))(v19, v37, v35);
      v20 = sub_53C18();
      v21 = sub_54828();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v39 = v30;
        *v22 = 136315138;
        v23 = sub_53988();
        v25 = v24;
        (*(v34 + 8))(v19, v35);
        v26 = sub_18710(v23, v25, &v39);

        *(v22 + 4) = v26;
        _os_log_impl(&dword_0, v20, v21, "File created at: %s", v22, 0xCu);
        sub_777C(v30);

        sub_30644(v33, v14);
      }

      else
      {
        sub_30644(v33, v14);

        (*(v34 + 8))(v19, v35);
      }

      v0 = v31;
      v7 = v32;
    }

    else
    {
      sub_30644(v33, v14);
    }

    v8 = v38;
  }

  swift_task_alloc();
  (*(v34 + 16))();
  sub_53AE8();

  v27 = *(v34 + 8);
  v27(v7, v35);
  v27(v37, v35);
  v27(v36, v35);

  v28 = v0[1];

  return v28();
}

uint64_t sub_2FD00(uint64_t a1, uint64_t a2)
{
  v2 = *sub_7738((a1 + 32), *(a1 + 56));
  v3 = sub_54668();
  v4 = *(*(v2 + 64) + 40);
  *v4 = v3;
  v4[1] = v5;

  return _swift_continuation_resume(v2);
}

uint64_t sub_2FD68(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 160) = a1;
  *(v2 + 168) = v3;
  return _swift_task_switch(sub_2FD8C, 0, 0);
}

uint64_t sub_2FD8C()
{
  v1 = *(v0[21] + 24);
  v0[22] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2FEB0;
  v2 = swift_continuation_init();
  v0[17] = sub_44BC(&qword_78A60, &qword_59200);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_2FD00;
  v0[13] = &unk_6FCC8;
  v0[14] = v2;
  [v1 exportLocationAccessActivity:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_2FEB0()
{

  return _swift_task_switch(sub_2FF90, 0, 0);
}

uint64_t sub_2FF90()
{
  v48 = v0;
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[19];

  v4 = sub_539A8();
  v5 = *(v4 - 8);
  v6 = swift_task_alloc();
  v7 = NSTemporaryDirectory();
  sub_54668();

  sub_53938();

  sub_53968();
  v8 = [objc_opt_self() defaultManager];
  v9 = sub_54638();
  LODWORD(v7) = [v8 fileExistsAtPath:v9];

  if (v7)
  {
    v45 = v5;
    v10 = sub_54638();
    v11 = [v8 isReadableFileAtPath:v10];

    if ((v11 & 1) == 0)
    {
      if (qword_76FF8 != -1)
      {
        swift_once();
      }

      v12 = sub_53C38();
      sub_7700(v12, qword_7BC48);

      v13 = sub_53C18();
      v14 = sub_54828();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = v6;
        v17 = swift_slowAlloc();
        v47 = v17;
        *v15 = 136315138;
        *(v15 + 4) = sub_18710(v2, v3, &v47);
        _os_log_impl(&dword_0, v13, v14, "#CLLA File is not accessibile: %s", v15, 0xCu);
        sub_777C(v17);
        v6 = v16;
      }
    }

    v18 = sub_54638();

    v19 = [v8 contentsAtPath:v18];

    if (v19)
    {
      v20 = sub_539C8();
      v22 = v21;
    }

    else
    {
      v20 = 0;
      v22 = 0xF000000000000000;
    }

    v24 = v4;
    v23 = v46;
    sub_53988();
    v25 = sub_54638();

    if (v22 >> 60 == 15)
    {
      v26 = 0;
    }

    else
    {
      sub_306AC(v20, v22);
      v26 = sub_539B8();
      sub_30644(v20, v22);
    }

    v27 = [v8 createFileAtPath:v25 contents:v26 attributes:0];

    if (v27)
    {
      if (qword_76FF8 != -1)
      {
        swift_once();
      }

      v28 = *(v46 + 160);
      v29 = sub_53C38();
      sub_7700(v29, qword_7BC48);
      v30 = swift_task_alloc();
      (*(v45 + 16))(v30, v28, v24);
      v31 = sub_53C18();
      v32 = sub_54828();
      if (os_log_type_enabled(v31, v32))
      {
        log = v31;
        v33 = v30;
        v34 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v47 = v43;
        *v34 = 136315138;
        v42 = sub_53988();
        v36 = v35;
        v37 = *(v45 + 8);
        v37(v33, v24);
        v38 = sub_18710(v42, v36, &v47);

        *(v34 + 4) = v38;
        _os_log_impl(&dword_0, log, v32, "File created at: %s", v34, 0xCu);
        sub_777C(v43);

        sub_30644(v20, v22);
        v37(v6, v24);
      }

      else
      {

        sub_30644(v20, v22);
        v39 = *(v45 + 8);
        v39(v30, v24);
        v39(v6, v24);
      }
    }

    else
    {
      (*(v45 + 8))(v6, v4);
      sub_30644(v20, v22);
    }
  }

  else
  {
    (*(v5 + 8))(v6, v4);

    v23 = v46;
  }

  v40 = *(v23 + 8);

  return v40();
}

unint64_t sub_305E0()
{
  result = qword_78890;
  if (!qword_78890)
  {
    sub_539A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78890);
  }

  return result;
}

uint64_t sub_30644(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_30658(a1, a2);
  }

  return a1;
}

uint64_t sub_30658(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_306AC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_30704(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_2E588(v1, v2);
}

uint64_t sub_30744(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LocationAccessReportModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_30788()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 32) = v0[3];
  *(v1 + 40) = v2;
}

uint64_t getEnumTagSinglePayload for LocationAccessReportModel.SupportedStates(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LocationAccessReportModel.SupportedStates(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_309A4()
{
  result = qword_78A90;
  if (!qword_78A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78A90);
  }

  return result;
}

uint64_t sub_309F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_30A90@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_30744(&qword_78A68, &unk_59170);
  sub_53A28();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_30B4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_30744(&qword_78A68, &unk_59170);
  sub_53A28();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_30C08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2E6D4();
  *a1 = result;
  return result;
}

uint64_t sub_30C34(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_30744(&qword_78A68, &unk_59170);
  sub_53A18();
}

uint64_t sub_30CF0@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v64 = sub_53FE8();
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v62 = &v54[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_44BC(&qword_78B40, &qword_59420);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v54[-v5];
  v7 = sub_44BC(&qword_78B48, &qword_59428);
  v60 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v54[-v8];
  v65 = sub_44BC(&qword_78B50, &qword_59430);
  v61 = *(v65 - 8);
  __chkstk_darwin(v65);
  v11 = &v54[-v10];
  v67 = sub_44BC(&qword_78B58, &qword_59438);
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v71 = &v54[-v12];
  v69 = sub_44BC(&qword_78B60, &qword_59440);
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v72 = &v54[-v13];
  v73 = v1;
  v74 = v1;
  sub_44BC(&qword_78B68, &qword_59448);
  sub_33ACC();
  sub_54198();
  v14 = sub_489C(&qword_78B98, &qword_78B40, &qword_59420, &protocol conformance descriptor for List<A, B>);
  v59 = v9;
  sub_54218();
  (*(v4 + 8))(v6, v3);
  sub_54078();
  if (qword_76FD8 != -1)
  {
    swift_once();
  }

  v15 = qword_7BBF8;
  v16 = qword_7BBF8;
  v58 = v15;
  v17 = sub_541D8();
  v19 = v18;
  v21 = v20;
  v75 = v3;
  v76 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = v59;
  sub_542A8();
  sub_84F8(v17, v19, v21 & 1);

  (*(v60 + 8))(v23, v7);
  v24 = v63;
  v25 = v62;
  v26 = v64;
  (*(v63 + 104))(v62, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v64);
  v75 = v7;
  v76 = OpaqueTypeConformance2;
  v27 = swift_getOpaqueTypeConformance2();
  v28 = v65;
  sub_542E8();
  (*(v24 + 8))(v25, v26);
  (*(v61 + 8))(v11, v28);
  sub_54078();
  v59 = sub_541D8();
  v57 = v29;
  v55 = v30;
  v56 = v31;
  v32 = v73[1];
  v64 = *v73;
  v63 = v32;
  v83 = v64;
  v84 = v32;
  v62 = sub_44BC(&qword_78BA0, &qword_59460);
  sub_54378();
  v33 = v75;
  v34 = v76;
  v35 = v77;
  swift_getKeyPath();
  v75 = v33;
  v76 = v34;
  v77 = v35;
  v61 = sub_44BC(&qword_78BA8, &qword_59490);
  sub_543D8();

  __chkstk_darwin(v36);
  v60 = sub_44BC(&qword_78BB0, &qword_59498);
  v81 = v28;
  v82 = v27;
  v65 = swift_getOpaqueTypeConformance2();
  v37 = sub_489C(&qword_78BB8, &qword_78BB0, &qword_59498, &protocol conformance descriptor for VStack<A>);
  v38 = v67;
  LOBYTE(v27) = v55;
  v39 = v59;
  v40 = v57;
  v41 = v71;
  sub_54308();

  sub_84F8(v39, v40, v27 & 1);

  (*(v66 + 8))(v41, v38);
  sub_54078();
  v71 = sub_541D8();
  v66 = v42;
  LOBYTE(v27) = v43;
  v59 = v44;
  v83 = v64;
  v84 = v63;
  sub_54378();
  v46 = v75;
  v45 = v76;
  v47 = v77;
  swift_getKeyPath();
  v83 = v46;
  v84 = v45;
  v85 = v47;
  sub_543D8();

  __chkstk_darwin(v48);
  v75 = v38;
  v76 = v60;
  v77 = &type metadata for Text;
  v78 = v65;
  v79 = v37;
  v80 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  v49 = v69;
  v50 = v71;
  v51 = v66;
  v52 = v72;
  sub_54308();

  sub_84F8(v50, v51, v27 & 1);

  return (*(v68 + 8))(v52, v49);
}

uint64_t sub_31840(void *a1)
{
  sub_3225C(a1, v2);
  sub_44BC(&qword_78B80, &qword_59450);
  sub_44BC(&qword_78B90, &qword_59458);
  sub_489C(&qword_78B78, &qword_78B80, &qword_59450, &protocol conformance descriptor for TupleView<A>);
  sub_33B90();
  return sub_54428();
}

uint64_t sub_31920@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v59 = a2;
  v3 = sub_44BC(&qword_78738, &qword_58280);
  __chkstk_darwin(v3 - 8);
  v48[1] = v48 - v4;
  v57 = sub_44BC(&qword_78BE0, &qword_59510);
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v53 = v48 - v5;
  v51 = sub_44BC(&qword_78BE8, &qword_59518);
  v6 = __chkstk_darwin(v51);
  v58 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v50 = v48 - v9;
  __chkstk_darwin(v8);
  v54 = v48 - v10;
  v56 = sub_44BC(&qword_78BF0, &qword_59520);
  v49 = *(v56 - 8);
  v11 = __chkstk_darwin(v56);
  v52 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v48 - v13;
  v15 = sub_54628();
  __chkstk_darwin(v15 - 8);
  v48[0] = "Wired Accessories";
  sub_54618();
  if (qword_76FD8 != -1)
  {
    swift_once();
  }

  v16 = qword_7BBF8;
  v17 = sub_539F8();
  __chkstk_darwin(v17 - 8);
  v18 = v16;
  sub_539E8();
  v69 = sub_54678();
  v70 = v19;
  v20 = a1[1];
  v63 = *a1;
  v21 = v63;
  v64 = v20;
  sub_44BC(&qword_78BA0, &qword_59460);
  sub_54378();
  v22 = v66;
  v23 = v67;
  v24 = v68;
  swift_getKeyPath();
  v66 = v22;
  v67 = v23;
  v68 = v24;
  sub_44BC(&qword_78BA8, &qword_59490);
  sub_543D8();

  v25 = v63;
  v26 = v64;
  v27 = v65;

  v60 = v25;
  v61 = v26;
  v62 = v27;
  sub_44BC(&qword_78BF8, &qword_59528);
  sub_340D8();
  sub_3412C();
  sub_A700();
  sub_543C8();
  v66 = v21;
  v67 = v20;
  sub_54358();
  sub_54078();
  sub_53E08();
  type metadata accessor for LocationAccessReportModel(0);
  sub_30744(&qword_78A30, &unk_5918C);
  v28 = v53;
  sub_54448();
  v66 = v21;
  v67 = v20;
  sub_54358();
  v29 = v63;
  swift_getKeyPath();
  v66 = v29;
  sub_30744(&qword_78A68, &unk_59170);
  sub_53A28();

  v30 = *(v29 + 24);
  v31 = [v30 getLocationAccessRecordingIntervalState];

  v33 = v31 != (&dword_4 + 3) && v31 != &stru_68.reserved3;
  KeyPath = swift_getKeyPath();
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  v36 = v50;
  (*(v55 + 32))(v50, v28, v57);
  v37 = (v36 + *(v51 + 36));
  *v37 = KeyPath;
  v37[1] = sub_34208;
  v37[2] = v35;
  v38 = v54;
  sub_34210(v36, v54);
  v39 = v49;
  v40 = *(v49 + 16);
  v41 = v52;
  v42 = v56;
  v40(v52, v14, v56);
  v43 = v58;
  sub_34280(v38, v58);
  v44 = v59;
  v40(v59, v41, v42);
  v45 = sub_44BC(&qword_78C10, &unk_59560);
  sub_34280(v43, &v44[*(v45 + 48)]);
  sub_342F0(v38);
  v46 = *(v39 + 8);
  v46(v14, v42);
  sub_342F0(v43);
  return (v46)(v41, v42);
}

uint64_t sub_320B4()
{
  swift_getKeyPath();
  sub_44BC(&qword_78A88, qword_59248);
  sub_44BC(&qword_78C18, &unk_59590);
  sub_489C(&qword_78C20, &qword_78A88, qword_59248, &protocol conformance descriptor for [A]);
  sub_340D8();
  swift_getOpaqueTypeConformance2();
  return sub_543E8();
}

uint64_t sub_321F0@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_2DFD0(*a1);
  sub_A700();
  result = sub_54208();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;
  *(a2 + 33) = 1;
  return result;
}

double sub_3225C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(&v8 + 1) = a1[1];
  sub_44BC(&qword_78BA0, &qword_59460);
  sub_54358();
  swift_getKeyPath();
  *&v8 = v7;
  sub_30744(&qword_78A68, &unk_59170);
  sub_53A28();

  v3 = *(*&v7 + 24);
  v4 = [v3 getLocationAccessRecordingIntervalState];

  if (v4 == (&dword_4 + 3) || v4 == &stru_68.reserved3)
  {
    sub_54078();
    if (qword_76FD8 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  sub_54078();
  if (qword_76FD8 != -1)
  {
LABEL_7:
    swift_once();
  }

LABEL_6:
  v5 = qword_7BBF8;
  sub_541D8();
  sub_540D8();
  result = v7;
  *a2 = v8;
  *(a2 + 16) = v9;
  *(a2 + 32) = v10;
  return result;
}

uint64_t sub_324EC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v50 = a2;
  v3 = sub_53EF8();
  v45 = *(v3 - 8);
  v46 = v3;
  __chkstk_darwin(v3);
  v43 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_44BC(&qword_78BC8, &qword_594D0);
  v48 = *(v5 - 8);
  v49 = v5;
  v6 = __chkstk_darwin(v5);
  v47 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v51 = &v41 - v8;
  v9 = type metadata accessor for LocationAccessReportView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = sub_44BC(&qword_78710, &qword_58208);
  __chkstk_darwin(v12 - 8);
  v14 = &v41 - v13;
  v44 = sub_44BC(&qword_78718, &unk_58210);
  v52 = *(v44 - 8);
  v15 = __chkstk_darwin(v44);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v41 - v18;
  sub_53DB8();
  v20 = sub_53DC8();
  (*(*(v20 - 8) + 56))(v14, 0, 1, v20);
  sub_33CC4(a1, &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v22 = swift_allocObject();
  sub_33D2C(&v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  v42 = v19;
  sub_54398();
  sub_33CC4(a1, &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = swift_allocObject();
  sub_33D2C(&v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v21);
  v24 = v17;
  sub_543A8();
  v25 = v43;
  sub_53EE8();
  sub_489C(&qword_78BD0, &qword_78718, &unk_58210, &protocol conformance descriptor for Button<A>);
  v26 = v51;
  v27 = v44;
  sub_542B8();
  (*(v45 + 8))(v25, v46);
  v28 = v52;
  v46 = *(v52 + 8);
  v46(v24, v27);
  v29 = *(v28 + 16);
  v52 = v28 + 16;
  v41 = v24;
  v30 = v19;
  v31 = v27;
  v29(v24, v30, v27);
  v33 = v47;
  v32 = v48;
  v34 = *(v48 + 16);
  v35 = v49;
  v34(v47, v26, v49);
  v36 = v50;
  v29(v50, v24, v31);
  v37 = sub_44BC(&qword_78BD8, &qword_594D8);
  v34(&v36[*(v37 + 48)], v33, v35);
  v38 = *(v32 + 8);
  v38(v51, v35);
  v39 = v46;
  v46(v42, v31);
  v38(v33, v35);
  return v39(v41, v31);
}

uint64_t sub_32A9C(void *a1)
{
  sub_44BC(&qword_78BA0, &qword_59460);
  sub_54358();
  if (*(v3 + 16) == 1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_30744(&qword_78A68, &unk_59170);
    sub_53A18();
  }

  else
  {
    *(v3 + 16) = 0;
  }
}

uint64_t sub_32BD0@<X0>(uint64_t a1@<X8>)
{
  sub_54078();
  if (qword_76FD8 != -1)
  {
    swift_once();
  }

  v2 = qword_7BBF8;
  result = sub_541D8();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_32CB8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_54098();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  sub_44BC(&qword_78BC0, &qword_594C8);
  return a2(a1);
}

uint64_t sub_32D20@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v50 = a2;
  v3 = sub_53EF8();
  v45 = *(v3 - 8);
  v46 = v3;
  __chkstk_darwin(v3);
  v43 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_44BC(&qword_78BC8, &qword_594D0);
  v48 = *(v5 - 8);
  v49 = v5;
  v6 = __chkstk_darwin(v5);
  v47 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v51 = &v41 - v8;
  v9 = type metadata accessor for LocationAccessReportView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = sub_44BC(&qword_78710, &qword_58208);
  __chkstk_darwin(v12 - 8);
  v14 = &v41 - v13;
  v44 = sub_44BC(&qword_78718, &unk_58210);
  v52 = *(v44 - 8);
  v15 = __chkstk_darwin(v44);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v41 - v18;
  sub_53DB8();
  v20 = sub_53DC8();
  (*(*(v20 - 8) + 56))(v14, 0, 1, v20);
  sub_33CC4(a1, &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v22 = swift_allocObject();
  sub_33D2C(&v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  v42 = v19;
  sub_54398();
  sub_33CC4(a1, &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = swift_allocObject();
  sub_33D2C(&v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v21);
  v24 = v17;
  sub_543A8();
  v25 = v43;
  sub_53EE8();
  sub_489C(&qword_78BD0, &qword_78718, &unk_58210, &protocol conformance descriptor for Button<A>);
  v26 = v51;
  v27 = v44;
  sub_542B8();
  (*(v45 + 8))(v25, v46);
  v28 = v52;
  v46 = *(v52 + 8);
  v46(v24, v27);
  v29 = *(v28 + 16);
  v52 = v28 + 16;
  v41 = v24;
  v30 = v19;
  v31 = v27;
  v29(v24, v30, v27);
  v33 = v47;
  v32 = v48;
  v34 = *(v48 + 16);
  v35 = v49;
  v34(v47, v26, v49);
  v36 = v50;
  v29(v50, v24, v31);
  v37 = sub_44BC(&qword_78BD8, &qword_594D8);
  v34(&v36[*(v37 + 48)], v33, v35);
  v38 = *(v32 + 8);
  v38(v51, v35);
  v39 = v46;
  v46(v42, v31);
  v38(v33, v35);
  return v39(v41, v31);
}

uint64_t sub_332D0(void *a1)
{
  sub_44BC(&qword_78BA0, &qword_59460);
  sub_54358();
  if (*(v3 + 17) == 1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_30744(&qword_78A68, &unk_59170);
    sub_53A18();
  }

  else
  {
    *(v3 + 17) = 0;
  }
}

uint64_t sub_33404(void *a1, uint64_t a2)
{
  sub_44BC(&qword_78BA0, &qword_59460);
  sub_54358();
  swift_getKeyPath();
  sub_30744(&qword_78A68, &unk_59170);
  sub_53A18();
}

uint64_t sub_33510@<X0>(uint64_t a1@<X8>)
{
  sub_54078();
  if (qword_76FD8 != -1)
  {
    swift_once();
  }

  v2 = qword_7BBF8;
  result = sub_541D8();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

void *sub_335F8@<X0>(void *a1@<X8>)
{
  type metadata accessor for LocationAccessReportModel(0);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = [objc_allocWithZone(CLLocationAccessRecorder) init];
  *(v2 + 32) = 0;
  *(v2 + 40) = 0xE000000000000000;
  sub_53A38();
  sub_54348();
  *a1 = v7;
  a1[1] = v8;
  v3 = type metadata accessor for LocationAccessReportView(0);
  v4 = *(v3 + 20);
  *(a1 + v4) = swift_getKeyPath();
  sub_44BC(&qword_78720, &unk_593A0);
  swift_storeEnumTagMultiPayload();
  v5 = a1 + *(v3 + 24);
  result = sub_54348();
  *v5 = v7;
  *(v5 + 1) = v8;
  return result;
}

uint64_t type metadata accessor for LocationAccessReportView(uint64_t a1)
{
  result = qword_78AF0;
  if (!qword_78AF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_33778(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_44BC(&qword_785D8, &unk_58100);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_33848(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_44BC(&qword_785D8, &unk_58100);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_338F8(uint64_t a1)
{
  sub_339F4(319, &qword_78B00, type metadata accessor for LocationAccessReportModel, &type metadata accessor for State);
  if (v1 <= 0x3F)
  {
    sub_339F4(319, &unk_78650, &type metadata accessor for WithCurrentHostingControllerAction, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_33A58();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_339F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_33A58()
{
  if (!qword_78B08)
  {
    v0 = sub_54388();
    if (!v1)
    {
      atomic_store(v0, &qword_78B08);
    }
  }
}

unint64_t sub_33ACC()
{
  result = qword_78B70;
  if (!qword_78B70)
  {
    sub_4590(&qword_78B68, &qword_59448);
    sub_489C(&qword_78B78, &qword_78B80, &qword_59450, &protocol conformance descriptor for TupleView<A>);
    sub_33B90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78B70);
  }

  return result;
}

unint64_t sub_33B90()
{
  result = qword_78B88;
  if (!qword_78B88)
  {
    sub_4590(&qword_78B90, &qword_59458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78B88);
  }

  return result;
}

uint64_t sub_33CC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationAccessReportView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_33D2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationAccessReportView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_33DC0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2E6D4();
  *a1 = result;
  return result;
}

uint64_t sub_33E64(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for LocationAccessReportView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_33ED8()
{
  v1 = type metadata accessor for LocationAccessReportView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = *(v1 + 20);
  sub_44BC(&qword_78720, &unk_593A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_54158();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_340D8()
{
  result = qword_78C00;
  if (!qword_78C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78C00);
  }

  return result;
}

unint64_t sub_3412C()
{
  result = qword_78C08;
  if (!qword_78C08)
  {
    sub_4590(&qword_78BF8, &qword_59528);
    sub_340D8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78C08);
  }

  return result;
}

uint64_t sub_34210(uint64_t a1, uint64_t a2)
{
  v4 = sub_44BC(&qword_78BE8, &qword_59518);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_34280(uint64_t a1, uint64_t a2)
{
  v4 = sub_44BC(&qword_78BE8, &qword_59518);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_342F0(uint64_t a1)
{
  v2 = sub_44BC(&qword_78BE8, &qword_59518);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_34358()
{
  sub_4590(&qword_78B60, &qword_59440);
  sub_4590(&qword_78BB0, &qword_59498);
  sub_4590(&qword_78B58, &qword_59438);
  sub_4590(&qword_78B50, &qword_59430);
  sub_4590(&qword_78B48, &qword_59428);
  sub_4590(&qword_78B40, &qword_59420);
  sub_489C(&qword_78B98, &qword_78B40, &qword_59420, &protocol conformance descriptor for List<A, B>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_489C(&qword_78BB8, &qword_78BB0, &qword_59498, &protocol conformance descriptor for VStack<A>);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

void *sub_3456C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  type metadata accessor for PrivacyAndSecuritySettingsListViewModel(0);
  sub_365C8(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel, &unk_5A688);
  *a7 = sub_53DF8();
  *(a7 + 8) = v14 & 1;
  v16 = type metadata accessor for AppProtectionNavigationLink(0, a5, a6, v15);
  v17 = v16[9];
  *(a7 + v17) = swift_getKeyPath();
  sub_44BC(&qword_78C30, &qword_595D0);
  swift_storeEnumTagMultiPayload();
  v18 = a7 + v16[10];
  result = sub_54348();
  *v18 = v21;
  *(v18 + 8) = v22;
  *(a7 + v16[11]) = a1;
  *(a7 + v16[12]) = a2;
  v20 = (a7 + v16[13]);
  *v20 = a3;
  v20[1] = a4;
  return result;
}

uint64_t sub_346D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v4 = sub_547D8();
  v76 = *(v4 - 8);
  v77 = v4;
  __chkstk_darwin(v4);
  v75 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_44BC(&qword_78CE0, &unk_59660);
  v79 = v6;
  v71 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v68 = &v52 - v8;
  v9 = *(a1 - 8);
  __chkstk_darwin(v7);
  v58 = v10;
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 24);
  v63 = *(a1 + 16);
  v62 = v12;
  v13 = sub_543B8();
  v60 = v13;
  v67 = *(v13 - 8);
  __chkstk_darwin(v13);
  v64 = &v52 - v14;
  WitnessTable = swift_getWitnessTable();
  v61 = WitnessTable;
  v80 = sub_489C(&qword_78CE8, &qword_78CE0, &unk_59660, &protocol conformance descriptor for NavigationLinkButtonStyle<A>);
  v87 = v13;
  v88 = v6;
  v89 = WitnessTable;
  v90 = v80;
  v69 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v72 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v81 = &v52 - v16;
  sub_4590(&qword_78CF0, &unk_59780);
  v73 = sub_53EB8();
  v74 = *(v73 - 8);
  v17 = __chkstk_darwin(v73);
  v65 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v70 = &v52 - v19;
  v20 = *(v9 + 16);
  v57 = v9 + 16;
  v59 = v20;
  v21 = v11;
  v54 = v11;
  v52 = v2;
  v53 = a1;
  v20(v11, v2, a1);
  v22 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v23 = swift_allocObject();
  v24 = v63;
  v25 = v62;
  *(v23 + 16) = v63;
  *(v23 + 24) = v25;
  v26 = *(v9 + 32);
  v55 = v9 + 32;
  v56 = v26;
  v27 = v22;
  v26(v23 + v22, v21, a1);
  v82 = v24;
  v83 = v25;
  v28 = v24;
  v29 = v25;
  v84 = v2;
  v30 = v64;
  sub_543A8();
  v31 = v68;
  sub_540F8();
  v32 = v60;
  v33 = v79;
  v34 = v61;
  sub_54268();
  (*(v71 + 8))(v31, v33);
  (*(v67 + 8))(v30, v32);
  v35 = v53;
  v36 = v52;
  v37 = (v52 + *(v53 + 40));
  v38 = *v37;
  v39 = *(v37 + 1);
  LOBYTE(v87) = v38;
  v88 = v39;
  sub_44BC(&qword_78CF8, &qword_59670);
  sub_54358();
  v40 = v54;
  v59(v54, v36, v35);
  v41 = swift_allocObject();
  *(v41 + 16) = v28;
  *(v41 + 24) = v29;
  v56(v41 + v27, v40, v35);
  v87 = v32;
  v88 = v79;
  v89 = v34;
  v90 = v80;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = v75;
  v44 = OpaqueTypeMetadata2;
  sub_36894(OpaqueTypeMetadata2);
  v45 = v65;
  v46 = v81;
  sub_542F8();

  (*(v76 + 8))(v43, v77);
  (*(v72 + 8))(v46, v44);
  v47 = sub_489C(&qword_78D00, &qword_78CF0, &unk_59780, &protocol conformance descriptor for _TaskValueModifier<A>);
  v85 = OpaqueTypeConformance2;
  v86 = v47;
  v48 = v73;
  swift_getWitnessTable();
  v49 = v70;
  sub_3AE9C();
  v50 = *(v74 + 8);
  v50(v45, v48);
  sub_3AE9C();
  return (v50)(v49, v48);
}

void *sub_34F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppProtectionNavigationLink(0, a2, a3, a4);
  sub_44BC(&qword_78CF8, &qword_59670);
  result = sub_54358();
  if ((v5 & 1) == 0)
  {
    return sub_54368();
  }

  return result;
}

uint64_t sub_34FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = __chkstk_darwin(a1);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v17 - v9;
  v14 = type metadata accessor for AppProtectionNavigationLink(0, v11, v12, v13);
  (*(a1 + *(v14 + 52)))();
  sub_3AE9C();
  v15 = *(v5 + 8);
  v15(v8, a2);
  sub_3AE9C();
  return (v15)(v10, a2);
}

uint64_t sub_350EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[28] = a2;
  v4[29] = a3;
  v4[27] = a1;
  v5 = type metadata accessor for AppProtectionNavigationLink(0, a2, a3, a4);
  v4[30] = v5;
  v4[31] = *(v5 - 8);
  v4[32] = swift_task_alloc();
  v6 = sub_54528();
  v4[33] = v6;
  v4[34] = *(v6 - 8);
  v4[35] = swift_task_alloc();
  v7 = sub_53FD8();
  v4[36] = v7;
  v4[37] = *(v7 - 8);
  v4[38] = swift_task_alloc();
  sub_547A8();
  v4[39] = sub_54798();
  v9 = sub_54788();
  v4[40] = v9;
  v4[41] = v8;

  return _swift_task_switch(sub_3529C, v9, v8);
}

uint64_t sub_3529C()
{
  v1 = (*(v0 + 216) + *(*(v0 + 240) + 40));
  v2 = *v1;
  v3 = *(v1 + 1);
  *(v0 + 184) = v2;
  *(v0 + 192) = v3;
  sub_44BC(&qword_78CF8, &qword_59670);
  sub_54358();
  if (*(v0 + 352) == 1)
  {
    v4 = *(v0 + 240);
    v5 = *(v0 + 216);
    v6 = [objc_opt_self() sharedGuard];
    *(v0 + 336) = v6;
    v7 = *(v5 + *(v4 + 48));
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 353;
    *(v0 + 24) = sub_354A0;
    v8 = swift_continuation_init();
    *(v0 + 136) = sub_44BC(&qword_78D08, &unk_597A0);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_367C8;
    *(v0 + 104) = &unk_6FF90;
    *(v0 + 112) = v8;
    [v6 authenticateForSubject:v7 completion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_354A0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 344) = v2;
  v3 = *(v1 + 328);
  v4 = *(v1 + 320);
  if (v2)
  {
    v5 = sub_35888;
  }

  else
  {
    v5 = sub_355D0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_355D0()
{
  v1 = v0[42];
  v2 = v0[28];
  v3 = v0[29];
  v4 = v0[27];

  sub_35BA8(v4, v2, v3, v0 + 18);
  v5 = *v4;
  LOBYTE(v3) = *(v4 + 8);

  if ((v3 & 1) == 0)
  {
    v7 = v0[37];
    v6 = v0[38];
    v8 = v0[36];
    sub_54818();
    v9 = sub_54168();
    sub_53C08();

    sub_53FC8();
    swift_getAtKeyPath();

    (*(v7 + 8))(v6, v8);
    v5 = v0[25];
  }

  v10 = *(v0[27] + *(v0[30] + 44));
  v11 = *(v5 + 16);
  if (v11 != 45 && v11 == v10)
  {
    *(v5 + 16) = v10;
  }

  else
  {
    swift_getKeyPath();
    v13 = swift_task_alloc();
    *(v13 + 16) = v5;
    *(v13 + 24) = v10;
    v0[26] = v5;
    sub_365C8(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel, &unk_5A688);
    sub_53A18();
  }

  v15 = v0[34];
  v14 = v0[35];
  v16 = v0[33];
  sub_7738(v0 + 18, v0[21]);
  sub_3E0B0(v14);
  sub_54518();
  (*(v15 + 8))(v14, v16);
  sub_777C(v0 + 18);
  sub_35B38(v0[27], v0[28], v0[29], v17);

  v18 = v0[1];

  return v18();
}

uint64_t sub_35888()
{
  v25 = v0;
  v1 = v0[42];

  swift_willThrow();

  if (qword_76FE8 != -1)
  {
    swift_once();
  }

  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[30];
  v5 = v0[27];
  v6 = sub_53C38();
  sub_7700(v6, qword_7BC18);
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v7 = sub_53C18();
  v8 = sub_54808();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[31];
  v11 = v0[32];
  v12 = v0[30];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v15;
    *v13 = 136315394;
    v16 = *(v11 + *(v12 + 44));
    (*(v10 + 8))(v11, v12);
    v17 = sub_6E88(v16);
    v19 = sub_18710(v17, v18, &v24);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2112;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v20;
    *v14 = v20;
    _os_log_impl(&dword_0, v7, v8, "An error occurred while authenticating for item '%s' via AppProtection: %@", v13, 0x16u);
    sub_364A0(v14);

    sub_777C(v15);
  }

  else
  {
    (*(v10 + 8))(v0[32], v0[30]);
  }

  sub_35B38(v0[27], v0[28], v0[29], v21);

  v22 = v0[1];

  return v22();
}

uint64_t sub_35B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppProtectionNavigationLink(0, a2, a3, a4);
  sub_44BC(&qword_78CF8, &qword_59670);
  return sub_54368();
}

unint64_t sub_35BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for PrivacyAndSecuritySettingsDestinationOption(0);
  __chkstk_darwin(v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AppProtectionNavigationLink(0, a2, a3, v11);
  sub_D4BC(*(a1 + *(v12 + 44)), v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v14 = sub_53B58();
    a4[3] = v14;
    v15 = &unk_78D28;
    v16 = &type metadata accessor for PreferencesControllerRecipe;
    v17 = &protocol conformance descriptor for PreferencesControllerRecipe;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v14 = sub_54508();
    a4[3] = v14;
    v15 = &unk_78D18;
    v16 = &type metadata accessor for SettingsPaneRecipe;
    v17 = &protocol conformance descriptor for SettingsPaneRecipe;
LABEL_5:
    a4[4] = sub_365C8(v15, v16, v17);
    v18 = sub_36510(a4);
    return (*(*(v14 - 8) + 32))(v18, v10, v14);
  }

  v20 = *v10;
  a4[3] = &type metadata for PrivacyAndSecuritySettingsDestinationOption.PrivacySettingsDrillIn;
  result = sub_36574();
  a4[4] = result;
  *a4 = v20;
  return result;
}

void sub_35DA0(uint64_t a1)
{
  sub_36068(319, &qword_78CC0, type metadata accessor for PrivacyAndSecuritySettingsListViewModel);
  if (v1 <= 0x3F)
  {
    sub_36068(319, &qword_78CC8, &type metadata accessor for SettingsNavigationProxy);
    if (v2 <= 0x3F)
    {
      sub_360BC();
      if (v3 <= 0x3F)
      {
        sub_54958();
        if (v4 <= 0x3F)
        {
          sub_3610C();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_35EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_44BC(qword_78C38, &qword_595D8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 48));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_35FA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_44BC(qword_78C38, &qword_595D8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 36);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 48)) = (a2 - 1);
  }

  return result;
}

void sub_36068(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_53DE8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_360BC()
{
  if (!qword_78CD0)
  {
    v0 = sub_54388();
    if (!v1)
    {
      atomic_store(v0, &qword_78CD0);
    }
  }
}

unint64_t sub_3610C()
{
  result = qword_78CD8;
  if (!qword_78CD8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_78CD8);
  }

  return result;
}

void *sub_361A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = *(type metadata accessor for AppProtectionNavigationLink(0, v5, v6, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_34F08(v9, v5, v6, v7);
}

uint64_t sub_36234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for AppProtectionNavigationLink(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(*(v5 - 8) + 64);
  v9 = v4 + v7;

  v10 = *(v5 + 36);
  sub_44BC(&qword_78C30, &qword_595D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_54528();
    (*(*(v11 - 8) + 8))(v9 + v10, v11);
  }

  else
  {
  }

  return _swift_deallocObject(v4, v7 + v8, v6 | 7);
}

uint64_t sub_3638C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for AppProtectionNavigationLink(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_13F74;

  return sub_350EC(v4 + v9, v6, v7, v10);
}

uint64_t sub_364A0(uint64_t a1)
{
  v2 = sub_44BC(&qword_78D10, &qword_59690);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_36510(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_36574()
{
  result = qword_78D20;
  if (!qword_78D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78D20);
  }

  return result;
}

uint64_t sub_365C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_36640()
{
  sub_543B8();
  sub_4590(&qword_78CE0, &unk_59660);
  swift_getWitnessTable();
  sub_489C(&qword_78CE8, &qword_78CE0, &unk_59660, &protocol conformance descriptor for NavigationLinkButtonStyle<A>);
  swift_getOpaqueTypeMetadata2();
  sub_4590(&qword_78CF0, &unk_59780);
  sub_53EB8();
  swift_getOpaqueTypeConformance2();
  sub_489C(&qword_78D00, &qword_78CF0, &unk_59780, &protocol conformance descriptor for _TaskValueModifier<A>);
  return swift_getWitnessTable();
}

uint64_t sub_367C8(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_7738((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_44BC(&qword_778C0, &unk_57900);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

void *sub_36898@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  type metadata accessor for PrivacyAndSecuritySettingsListViewModel(0);
  sub_365C8(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel, &unk_5A688);
  *a6 = sub_53DF8();
  *(a6 + 8) = v12 & 1;
  v14 = type metadata accessor for LocalAuthenticationNavigationLink(0, a4, a5, v13);
  v15 = v14[9];
  *(a6 + v15) = swift_getKeyPath();
  sub_44BC(&qword_78C30, &qword_595D0);
  swift_storeEnumTagMultiPayload();
  v16 = a6 + v14[10];
  result = sub_54348();
  *v16 = v19;
  *(v16 + 8) = v20;
  *(a6 + v14[11]) = a1;
  v18 = (a6 + v14[12]);
  *v18 = a2;
  v18[1] = a3;
  return result;
}

uint64_t sub_369F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v3 = sub_547D8();
  v74 = *(v3 - 8);
  v75 = v3;
  __chkstk_darwin(v3);
  v73 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_44BC(&qword_78CE0, &unk_59660);
  v59 = v5;
  v69 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v66 = &v54 - v7;
  v8 = *(a1 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  v57 = v9;
  v10 = *(a1 + 24);
  v61 = *(a1 + 16);
  v77 = v10;
  v11 = a1;
  v12 = sub_543B8();
  v64 = *(v12 - 8);
  __chkstk_darwin(v12);
  v62 = &v54 - v13;
  v15 = v14;
  v60 = v14;
  WitnessTable = swift_getWitnessTable();
  v79 = WitnessTable;
  v81 = sub_489C(&qword_78CE8, &qword_78CE0, &unk_59660, &protocol conformance descriptor for NavigationLinkButtonStyle<A>);
  v87 = v15;
  v88 = v5;
  v89 = WitnessTable;
  v90 = v81;
  v67 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v70 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v78 = &v54 - v17;
  sub_4590(&qword_78CF0, &unk_59780);
  v71 = sub_53EB8();
  v72 = *(v71 - 8);
  v18 = __chkstk_darwin(v71);
  v63 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v68 = &v54 - v20;
  v21 = *(v8 + 16);
  v56 = v8 + 16;
  v58 = v21;
  v54 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v80;
  v21(v54, v80, v11);
  v23 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v24 = swift_allocObject();
  v25 = v61;
  v26 = v77;
  *(v24 + 16) = v61;
  *(v24 + 24) = v26;
  v55 = *(v8 + 32);
  v27 = v24 + v23;
  v28 = v23;
  v29 = v11;
  v55(v27, &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v82 = v25;
  v83 = v26;
  v84 = v22;
  v30 = v62;
  v31 = v25;
  sub_543A8();
  v32 = v66;
  sub_540F8();
  v33 = v60;
  v34 = v59;
  sub_54268();
  v35 = v32;
  v36 = v34;
  (*(v69 + 8))(v35, v34);
  (*(v64 + 8))(v30, v33);
  v37 = v80;
  v38 = (v80 + *(v29 + 40));
  v39 = *v38;
  v40 = *(v38 + 1);
  LOBYTE(v87) = v39;
  v88 = v40;
  sub_44BC(&qword_78CF8, &qword_59670);
  sub_54358();
  v41 = v54;
  v58(v54, v37, v29);
  v42 = swift_allocObject();
  v43 = v77;
  *(v42 + 16) = v31;
  *(v42 + 24) = v43;
  v55(v42 + v28, v41, v29);
  v87 = v33;
  v88 = v36;
  v89 = v79;
  v90 = v81;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = v73;
  sub_547B8();
  v46 = v63;
  v47 = OpaqueTypeMetadata2;
  v48 = v78;
  sub_542F8();

  (*(v74 + 8))(v45, v75);
  (*(v70 + 8))(v48, v47);
  v49 = sub_489C(&qword_78D00, &qword_78CF0, &unk_59780, &protocol conformance descriptor for _TaskValueModifier<A>);
  v85 = OpaqueTypeConformance2;
  v86 = v49;
  v50 = v71;
  swift_getWitnessTable();
  v51 = v68;
  sub_3AE9C();
  v52 = *(v72 + 8);
  v52(v46, v50);
  sub_3AE9C();
  return (v52)(v51, v50);
}

void *sub_371F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LocalAuthenticationNavigationLink(0, a2, a3, a4);
  sub_44BC(&qword_78CF8, &qword_59670);
  result = sub_54358();
  if ((v5 & 1) == 0)
  {
    return sub_54368();
  }

  return result;
}

uint64_t sub_37290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = __chkstk_darwin(a1);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v17 - v9;
  v14 = type metadata accessor for LocalAuthenticationNavigationLink(0, v11, v12, v13);
  (*(a1 + *(v14 + 48)))();
  sub_3AE9C();
  v15 = *(v5 + 8);
  v15(v8, a2);
  sub_3AE9C();
  return (v15)(v10, a2);
}

uint64_t sub_373D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[28] = a2;
  v4[29] = a3;
  v4[27] = a1;
  v5 = type metadata accessor for LocalAuthenticationNavigationLink(0, a2, a3, a4);
  v4[30] = v5;
  v4[31] = *(v5 - 8);
  v4[32] = swift_task_alloc();
  v6 = sub_54528();
  v4[33] = v6;
  v4[34] = *(v6 - 8);
  v4[35] = swift_task_alloc();
  v7 = sub_53FD8();
  v4[36] = v7;
  v4[37] = *(v7 - 8);
  v4[38] = swift_task_alloc();
  sub_547A8();
  v4[39] = sub_54798();
  v9 = sub_54788();
  v4[40] = v9;
  v4[41] = v8;

  return _swift_task_switch(sub_37588, v9, v8);
}

uint64_t sub_37588()
{
  v1 = (*(v0 + 216) + *(*(v0 + 240) + 40));
  v2 = *v1;
  v3 = *(v1 + 1);
  *(v0 + 184) = v2;
  *(v0 + 192) = v3;
  sub_44BC(&qword_78CF8, &qword_59670);
  sub_54358();
  if (*(v0 + 360) == 1)
  {
    v4 = [objc_allocWithZone(LAContext) init];
    *(v0 + 336) = v4;
    sub_386C0();
    v5 = sub_548D8();
    if (!v5)
    {
      v5 = [objc_opt_self() mainBundle];
    }

    v6 = v5;
    sub_538D8();

    v7 = sub_54638();
    *(v0 + 344) = v7;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 361;
    *(v0 + 24) = sub_37840;
    v8 = swift_continuation_init();
    *(v0 + 136) = sub_44BC(&qword_78D08, &unk_597A0);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_367C8;
    *(v0 + 104) = &unk_70060;
    *(v0 + 112) = v8;
    [v4 evaluatePolicy:2 localizedReason:v7 reply:{v0 + 80, 0x800000000005E740}];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_37840()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 352) = v2;
  v3 = *(v1 + 328);
  v4 = *(v1 + 320);
  if (v2)
  {
    v5 = sub_37C30;
  }

  else
  {
    v5 = sub_37970;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_37970()
{
  v1 = v0[43];
  v2 = v0[28];
  v3 = v0[29];
  v4 = v0[27];

  sub_37F58(v4, v2, v3, v0 + 18);
  v5 = *v4;
  LOBYTE(v3) = *(v4 + 8);

  if ((v3 & 1) == 0)
  {
    v7 = v0[37];
    v6 = v0[38];
    v8 = v0[36];
    sub_54818();
    v9 = sub_54168();
    sub_53C08();

    sub_53FC8();
    swift_getAtKeyPath();

    (*(v7 + 8))(v6, v8);
    v5 = v0[25];
  }

  v10 = *(v0[27] + *(v0[30] + 44));
  v11 = *(v5 + 16);
  if (v11 != 45 && v11 == v10)
  {
    *(v5 + 16) = v10;
  }

  else
  {
    swift_getKeyPath();
    v13 = swift_task_alloc();
    *(v13 + 16) = v5;
    *(v13 + 24) = v10;
    v0[26] = v5;
    sub_365C8(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel, &unk_5A688);
    sub_53A18();
  }

  v14 = v0[42];
  v16 = v0[34];
  v15 = v0[35];
  v17 = v0[33];
  sub_7738(v0 + 18, v0[21]);
  sub_3E0B0(v15);
  sub_54518();

  (*(v16 + 8))(v15, v17);
  sub_777C(v0 + 18);
  sub_37EE8(v0[27], v0[28], v0[29], v18);

  v19 = v0[1];

  return v19();
}

uint64_t sub_37C30()
{
  v26 = v0;
  v1 = v0[43];
  v2 = v0[42];

  swift_willThrow();

  if (qword_76FE8 != -1)
  {
    swift_once();
  }

  v4 = v0[31];
  v3 = v0[32];
  v5 = v0[30];
  v6 = v0[27];
  v7 = sub_53C38();
  sub_7700(v7, qword_7BC18);
  (*(v4 + 16))(v3, v6, v5);
  swift_errorRetain();
  v8 = sub_53C18();
  v9 = sub_54808();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[31];
  v12 = v0[32];
  v13 = v0[30];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = v16;
    *v14 = 136315394;
    v17 = *(v12 + *(v13 + 44));
    (*(v11 + 8))(v12, v13);
    v18 = sub_6E88(v17);
    v20 = sub_18710(v18, v19, &v25);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2112;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v21;
    *v15 = v21;
    _os_log_impl(&dword_0, v8, v9, "An error occurred while authenticating for item '%s' via LocalAuthentication: %@", v14, 0x16u);
    sub_364A0(v15);

    sub_777C(v16);
  }

  else
  {
    (*(v11 + 8))(v0[32], v0[30]);
  }

  sub_37EE8(v0[27], v0[28], v0[29], v22);

  v23 = v0[1];

  return v23();
}

uint64_t sub_37EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LocalAuthenticationNavigationLink(0, a2, a3, a4);
  sub_44BC(&qword_78CF8, &qword_59670);
  return sub_54368();
}

unint64_t sub_37F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for PrivacyAndSecuritySettingsDestinationOption(0);
  __chkstk_darwin(v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LocalAuthenticationNavigationLink(0, a2, a3, v11);
  sub_D4BC(*(a1 + *(v12 + 44)), v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v14 = sub_53B58();
    a4[3] = v14;
    v15 = &unk_78D28;
    v16 = &type metadata accessor for PreferencesControllerRecipe;
    v17 = &protocol conformance descriptor for PreferencesControllerRecipe;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v14 = sub_54508();
    a4[3] = v14;
    v15 = &unk_78D18;
    v16 = &type metadata accessor for SettingsPaneRecipe;
    v17 = &protocol conformance descriptor for SettingsPaneRecipe;
LABEL_5:
    a4[4] = sub_365C8(v15, v16, v17);
    v18 = sub_36510(a4);
    return (*(*(v14 - 8) + 32))(v18, v10, v14);
  }

  v20 = *v10;
  a4[3] = &type metadata for PrivacyAndSecuritySettingsDestinationOption.PrivacySettingsDrillIn;
  result = sub_36574();
  a4[4] = result;
  *a4 = v20;
  return result;
}

void sub_38104(uint64_t a1)
{
  sub_36068(319, &qword_78CC0, type metadata accessor for PrivacyAndSecuritySettingsListViewModel);
  if (v1 <= 0x3F)
  {
    sub_36068(319, &qword_78CC8, &type metadata accessor for SettingsNavigationProxy);
    if (v2 <= 0x3F)
    {
      sub_360BC();
      if (v3 <= 0x3F)
      {
        sub_3610C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_3820C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_44BC(qword_78C38, &qword_595D8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 48));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_382EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_44BC(qword_78C38, &qword_595D8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 36);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 48)) = (a2 - 1);
  }

  return result;
}

void *sub_383FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = *(type metadata accessor for LocalAuthenticationNavigationLink(0, v5, v6, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_371F4(v9, v5, v6, v7);
}

uint64_t sub_3848C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for LocalAuthenticationNavigationLink(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(*(v5 - 8) + 64);

  v9 = *(v5 + 36);
  sub_44BC(&qword_78C30, &qword_595D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_54528();
    (*(*(v10 - 8) + 8))(v4 + v7 + v9, v10);
  }

  else
  {
  }

  return _swift_deallocObject(v4, v7 + v8, v6 | 7);
}

uint64_t sub_385D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for LocalAuthenticationNavigationLink(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_13F74;

  return sub_373D8(v4 + v9, v6, v7, v10);
}

unint64_t sub_386C0()
{
  result = qword_78DB0;
  if (!qword_78DB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_78DB0);
  }

  return result;
}

__n128 sub_38744(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_38758(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_387A0(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_38814@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  sub_4088(v2, v3, v4);
}

uint64_t sub_3887C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    return sub_541B8();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_388E8@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v32 = sub_54138();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v29[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_44BC(&qword_78DB8, &qword_59F08);
  v6 = *(v5 - 8);
  v33 = v5;
  v34 = v6;
  __chkstk_darwin(v5);
  v8 = &v29[-v7];
  v9 = sub_44BC(&qword_78DC0, &qword_59F10);
  __chkstk_darwin(v9 - 8);
  v11 = &v29[-v10];
  v12 = sub_54098();
  v31 = *(v1 + 64);
  v30 = *(v1 + 96);
  v13 = *v1;
  v14 = swift_allocObject();
  v15 = *(v1 + 80);
  *(v14 + 80) = *(v1 + 64);
  *(v14 + 96) = v15;
  *(v14 + 112) = *(v1 + 96);
  v16 = *(v1 + 16);
  *(v14 + 16) = *v1;
  *(v14 + 32) = v16;
  v17 = *(v1 + 48);
  *(v14 + 48) = *(v1 + 32);
  *(v14 + 64) = v17;
  type metadata accessor for PrivacyAndSecuritySettingsListViewModel(0);
  sub_393D4(v1, &v36);
  sub_398E4(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel, &unk_5A688);
  v18 = sub_53DF8();
  v45 = 1;
  v44 = v19 & 1;
  v36 = v12;
  v37 = 0;
  v38 = 1;
  v39 = v18;
  v40 = v19 & 1;
  v41 = v13;
  v42 = sub_393B0;
  v43 = v14;
  sub_54128();
  v20 = sub_44BC(&qword_78DC8, &qword_59F18);
  v21 = sub_489C(&qword_78DD0, &qword_78DC8, &qword_59F18, &protocol conformance descriptor for VStack<A>);
  sub_542C8();
  (*(v2 + 8))(v4, v32);

  sub_6104(v13);
  v36 = v20;
  v37 = v21;
  swift_getOpaqueTypeConformance2();
  v22 = v33;
  sub_54288();

  (*(v34 + 8))(v8, v22);
  if (v31 >> 62 == 1)
  {
    if (v30 >> 8 == 2)
    {
      v23 = 1;
    }

    else
    {
      v23 = BYTE1(v30) ^ 1;
    }
  }

  else
  {
    v23 = 0;
  }

  KeyPath = swift_getKeyPath();
  v25 = swift_allocObject();
  *(v25 + 16) = v23 & 1;
  v26 = v35;
  sub_39424(v11, v35);
  result = sub_44BC(&qword_78DD8, &qword_59F50);
  v28 = (v26 + *(result + 36));
  *v28 = KeyPath;
  v28[1] = sub_34208;
  v28[2] = v25;
  return result;
}

double sub_38D10@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v2 + 33) | ((*(v2 + 37) | (*(v2 + 39) << 16)) << 32);
  v10 = *(v2 + 40);
  v9 = *(v2 + 48);
  v11 = *(v2 + 56);
  v12 = *(v2 + 64);
  v14 = *(v2 + 72);
  v13 = *(v2 + 80);
  v15 = *(v2 + 88);
  v16 = *(v2 + 96);
  v17 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v17 != 2)
    {
      v37 = v7 & 1;
      v36 = 1;
      LOBYTE(v31) = v4;
      *(&v31 + 1) = v5;
      *&v32 = v6;
      BYTE8(v32) = v7 & 1;
      *&v33 = v10;
      v35[25] = 1;
      sub_393D4(v2, &v26);
      sub_4088(v5, v6, v7 & 1);
      sub_39494();
      sub_394E8();

      sub_540D8();
      v28 = v23;
      v29 = v24;
      *v30 = *v25;
      *&v30[10] = *&v25[10];
      v26 = v21;
      v27 = v22;
      v38 = 1;
      v30[27] = 1;
      sub_44BC(&qword_78DF0, &qword_59F58);
      sub_44BC(&qword_78DF8, &qword_59F60);
      sub_3953C();
      sub_39670();
      sub_540D8();
      sub_84F8(v5, v6, v7 & 1);

      goto LABEL_9;
    }

    v37 = 0;
    *&v31 = v4;
    *(&v31 + 1) = v5;
    *&v32 = v6;
    BYTE8(v32) = v7;
    HIBYTE(v32) = BYTE6(v8);
    *(&v32 + 13) = WORD2(v8);
    *(&v32 + 9) = v8;
    *&v33 = v10;
    *(&v33 + 1) = v9;
    *&v34 = v11;
    *(&v34 + 1) = v12 & 0x3FFFFFFFFFFFFFFFLL;
    *v35 = v14;
    *&v35[8] = v13;
    *&v35[16] = v15;
    *&v35[24] = v16;
    sub_393D4(v2, &v26);
    sub_39494();
    sub_394E8();
    sub_540D8();
    v33 = v23;
    v34 = v24;
    *v35 = *v25;
    *&v35[10] = *&v25[10];
    v31 = v21;
    v32 = v22;
    v38 = 1;
    v35[27] = 1;
  }

  else
  {
    if (!v17)
    {
      v37 = 0;
      *&v31 = v4;
      *(&v31 + 1) = v5;
      *&v32 = v6;
      BYTE8(v32) = v7;
      HIBYTE(v32) = BYTE6(v8);
      *(&v32 + 13) = WORD2(v8);
      *(&v32 + 9) = v8;
      *&v33 = v10;
      *(&v33 + 1) = v9;
      *&v34 = v11;
      BYTE8(v34) = v12;
      v35[26] = 0;
      sub_393D4(v2, &v26);
      sub_4088(v5, v6, v7 & 1);

      sub_2D070(v9, v11, v12);
      sub_395C8();
      sub_3961C();
      sub_540D8();
      v28 = v23;
      v29 = v24;
      *v30 = *v25;
      *&v30[11] = *&v25[11];
      v26 = v21;
      v27 = v22;
      v38 = 0;
      v30[27] = 0;
      sub_44BC(&qword_78DF0, &qword_59F58);
      sub_44BC(&qword_78DF8, &qword_59F60);
      sub_3953C();
      sub_39670();
      sub_540D8();
      sub_84F8(v5, v6, v7 & 1);

      sub_7CAC(v9, v11, v12);
LABEL_9:
      v28 = v33;
      v29 = v34;
      *v30 = *v35;
      *&v30[12] = *&v35[12];
      v26 = v31;
      v27 = v32;
      goto LABEL_10;
    }

    v37 = 1;
    *&v31 = v4;
    *(&v31 + 1) = v5;
    *&v32 = v6;
    BYTE8(v32) = v7;
    HIBYTE(v32) = BYTE6(v8);
    *(&v32 + 13) = WORD2(v8);
    *(&v32 + 9) = v8;
    *&v33 = v10;
    *(&v33 + 1) = v9;
    *&v34 = v11;
    *(&v34 + 1) = v12 & 0x3FFFFFFFFFFFFFFFLL;
    *v35 = v14;
    *&v35[8] = v13;
    *&v35[16] = v15;
    *&v35[24] = v16;
    v35[26] = 1;
    sub_393D4(v2, &v26);
    sub_395C8();
    sub_3961C();
    sub_540D8();
    v33 = v23;
    v34 = v24;
    *v35 = *v25;
    *&v35[11] = *&v25[11];
    v31 = v21;
    v32 = v22;
    v38 = 0;
    v35[27] = 0;
  }

  sub_44BC(&qword_78DF0, &qword_59F58);
  sub_44BC(&qword_78DF8, &qword_59F60);
  sub_3953C();
  sub_39670();
  sub_540D8();
LABEL_10:
  v18 = v29;
  a1[2] = v28;
  a1[3] = v18;
  a1[4] = *v30;
  *(a1 + 76) = *&v30[12];
  result = *&v26;
  v20 = v27;
  *a1 = v26;
  a1[1] = v20;
  return result;
}

uint64_t sub_39238()
{
  sub_3929C(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));

  return _swift_deallocObject(v0, 114, 7);
}

uint64_t sub_3929C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  v12 = a8;
  v15 = a8 >> 62;
  if ((a8 >> 62) <= 1)
  {
    if (!v15)
    {
      sub_84F8(a2, a3, a4 & 1);

      v16 = a6;
      v17 = a7;
      v18 = v12;
LABEL_6:

      return sub_7CAC(v16, v17, v18);
    }

LABEL_5:
    sub_84F8(a2, a3, a4 & 1);

    sub_84F8(a6, a7, v12 & 1);

    v16 = a10;
    v17 = a11;
    v18 = a12;
    goto LABEL_6;
  }

  if (v15 == 2)
  {
    goto LABEL_5;
  }

  sub_84F8(a2, a3, a4 & 1);
}

uint64_t sub_39424(uint64_t a1, uint64_t a2)
{
  v4 = sub_44BC(&qword_78DC0, &qword_59F10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_39494()
{
  result = qword_78DE0;
  if (!qword_78DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78DE0);
  }

  return result;
}

unint64_t sub_394E8()
{
  result = qword_78DE8;
  if (!qword_78DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78DE8);
  }

  return result;
}

unint64_t sub_3953C()
{
  result = qword_78E00;
  if (!qword_78E00)
  {
    sub_4590(&qword_78DF0, &qword_59F58);
    sub_395C8();
    sub_3961C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78E00);
  }

  return result;
}

unint64_t sub_395C8()
{
  result = qword_78E08;
  if (!qword_78E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78E08);
  }

  return result;
}

unint64_t sub_3961C()
{
  result = qword_78E10;
  if (!qword_78E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78E10);
  }

  return result;
}

unint64_t sub_39670()
{
  result = qword_78E18;
  if (!qword_78E18)
  {
    sub_4590(&qword_78DF8, &qword_59F60);
    sub_39494();
    sub_394E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78E18);
  }

  return result;
}

unint64_t sub_39700()
{
  result = qword_78E20;
  if (!qword_78E20)
  {
    sub_4590(&qword_78DD8, &qword_59F50);
    sub_397B8();
    sub_489C(&qword_78E38, qword_78E40, &qword_59F68, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78E20);
  }

  return result;
}

unint64_t sub_397B8()
{
  result = qword_78E28;
  if (!qword_78E28)
  {
    sub_4590(&qword_78DC0, &qword_59F10);
    sub_4590(&qword_78DC8, &qword_59F18);
    sub_489C(&qword_78DD0, &qword_78DC8, &qword_59F18, &protocol conformance descriptor for VStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_398E4(&qword_78E30, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78E28);
  }

  return result;
}

uint64_t sub_398E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_3992C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_39980(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_3998C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_399D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_39AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_540C8();
  __chkstk_darwin(v7);
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_540D8();
}

uint64_t sub_39BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_540C8();
  __chkstk_darwin(v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_540D8();
}

uint64_t sub_39C9C@<X0>(void (*a1)(char *, uint64_t)@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v114 = a4;
  v115 = a3;
  v116 = a1;
  v113 = a7;
  v8 = BYTE1(a2);
  v105 = a5;
  v106 = a6;
  v9 = sub_54008();
  WitnessTable = swift_getWitnessTable();
  v12 = type metadata accessor for LocalAuthenticationNavigationLink(0, v9, WitnessTable, v11);
  v99 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v97 = &v96 - v16;
  v18 = type metadata accessor for AppProtectionNavigationLink(0, v9, WitnessTable, v17);
  v98 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v21 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v101 = &v96 - v22;
  v119[0] = v9;
  v119[1] = &type metadata for Never;
  v119[2] = WitnessTable;
  v120 = &protocol witness table for Never;
  v23 = sub_53E88();
  v111 = v18;
  v24 = sub_540E8();
  v103 = *(v24 - 8);
  v25 = __chkstk_darwin(v24);
  v102 = &v96 - v26;
  v104 = v23;
  v96 = *(v23 - 8);
  v27 = __chkstk_darwin(v25);
  v29 = &v96 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v100 = &v96 - v30;
  v110 = v31;
  v112 = v12;
  v109 = sub_540E8();
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v107 = &v96 - v32;
  v33 = sub_68B0(v8);
  if (v33)
  {
    v34 = v33;
    if (v33 == &dword_0 + 1)
    {
      v35 = swift_allocObject();
      v36 = v106;
      *(v35 + 16) = v105;
      *(v35 + 24) = v36;
      *(v35 + 32) = v116;
      *(v35 + 40) = a2 & 1;
      *(v35 + 41) = BYTE1(a2);
      v37 = v114;
      *(v35 + 48) = v115;
      *(v35 + 56) = v37;

      sub_36898(v8, sub_3AEA4, v35, v9, WitnessTable, v15);
      v38 = v112;
      v116 = swift_getWitnessTable();
      v39 = v99;
      v40 = *(v99 + 16);
      v41 = v97;
      v40(v97, v15, v38);
      v42 = *(v39 + 8);
      v42(v15, v38);
      v40(v15, v41, v38);
      v43 = swift_getWitnessTable();
      v44 = swift_getWitnessTable();
      v128 = v43;
      v129 = v44;
      v45 = v110;
      v46 = swift_getWitnessTable();
      v47 = v107;
      sub_39BA4(v15, v45, v38, v46, v116);
      v48 = v15;
      v49 = v47;
      v42(v48, v38);
      v42(v41, v38);
    }

    else
    {
      v73 = swift_allocObject();
      v74 = v106;
      *(v73 + 16) = v105;
      *(v73 + 24) = v74;
      *(v73 + 32) = v116;
      *(v73 + 40) = a2 & 1;
      *(v73 + 41) = BYTE1(a2);
      v75 = v114;
      *(v73 + 48) = v115;
      *(v73 + 56) = v75;
      sub_3ACBC(v34);

      sub_3456C(v8, v34, sub_3AEA4, v73, v9, WitnessTable, v21);
      v76 = v111;
      v77 = swift_getWitnessTable();
      v78 = v98;
      v79 = v98[2];
      v80 = v101;
      v79(v101, v21, v76);
      v116 = v78[1];
      v116(v21, v76);
      v79(v21, v80, v76);
      v81 = v104;
      v82 = swift_getWitnessTable();
      v83 = v102;
      sub_39BA4(v21, v81, v76, v82, v77);
      v122 = v82;
      v123 = v77;
      v84 = v110;
      v85 = swift_getWitnessTable();
      v86 = v112;
      v87 = swift_getWitnessTable();
      v49 = v107;
      sub_39AAC(v83, v84, v86, v85, v87);
      sub_3ACCC(v34);
      (*(v103 + 8))(v83, v84);
      v88 = v116;
      v116(v21, v76);
      v88(v101, v76);
    }
  }

  else
  {
    LODWORD(v99) = a2 >> 8;
    v50 = v105;
    v51 = v106;
    sub_3A8C4(a2 & 0xFF01, v119);
    v52 = v120;
    v101 = v121;
    v53 = sub_7738(v119, v120);
    v54 = sub_54998();
    v98 = &v96;
    __chkstk_darwin(v54 - 8);
    v56 = &v96 - v55;
    v57 = *(v52 - 1);
    (*(v57 + 16))(&v96 - v55, v53, v52);
    v58 = (*(v57 + 56))(v56, 0, 1, v52);
    __chkstk_darwin(v58);
    *(&v96 - 6) = v50;
    *(&v96 - 5) = v51;
    *(&v96 - 4) = v116;
    *(&v96 - 24) = a2 & 1;
    *(&v96 - 23) = v99;
    v59 = v114;
    *(&v96 - 2) = v115;
    *(&v96 - 1) = v59;
    sub_53E78();
    v60 = v104;
    v61 = swift_getWitnessTable();
    v62 = v96;
    v63 = *(v96 + 16);
    v64 = v100;
    v63(v100, v29, v60);
    v65 = *(v62 + 8);
    v65(v29, v60);
    v63(v29, v64, v60);
    v66 = v111;
    v67 = swift_getWitnessTable();
    v68 = v102;
    sub_39AAC(v29, v60, v66, v61, v67);
    v117 = v61;
    v118 = v67;
    v69 = v110;
    v70 = swift_getWitnessTable();
    v71 = v112;
    v72 = swift_getWitnessTable();
    v49 = v107;
    sub_39AAC(v68, v69, v71, v70, v72);
    (*(v103 + 8))(v68, v69);
    v65(v29, v60);
    v65(v100, v60);
    sub_777C(v119);
  }

  v89 = swift_getWitnessTable();
  v90 = swift_getWitnessTable();
  v126 = v89;
  v127 = v90;
  v91 = swift_getWitnessTable();
  v92 = swift_getWitnessTable();
  v124 = v91;
  v125 = v92;
  v93 = v109;
  swift_getWitnessTable();
  v94 = v108;
  (*(v108 + 16))(v113, v49, v93);
  return (*(v94 + 8))(v49, v93);
}

unint64_t sub_3A8C4@<X0>(__int16 a1@<W1>, uint64_t *a2@<X8>)
{
  v3 = HIBYTE(a1);
  v4 = type metadata accessor for PrivacyAndSecuritySettingsDestinationOption(0);
  __chkstk_darwin(v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_D4BC(v3, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v8 = sub_53B58();
    a2[3] = v8;
    v9 = &unk_78D28;
    v10 = &type metadata accessor for PreferencesControllerRecipe;
    v11 = &protocol conformance descriptor for PreferencesControllerRecipe;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v8 = sub_54508();
    a2[3] = v8;
    v9 = &unk_78D18;
    v10 = &type metadata accessor for SettingsPaneRecipe;
    v11 = &protocol conformance descriptor for SettingsPaneRecipe;
LABEL_5:
    a2[4] = sub_3ACE0(v9, v10, v11);
    v12 = sub_36510(a2);
    return (*(*(v8 - 8) + 32))(v12, v6, v8);
  }

  v14 = *v6;
  a2[3] = &type metadata for PrivacyAndSecuritySettingsDestinationOption.PrivacySettingsDrillIn;
  result = sub_36574();
  a2[4] = result;
  *a2 = v14;
  return result;
}

uint64_t sub_3AA44@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X2>, char *a5@<X8>)
{
  __chkstk_darwin(a1);
  v7 = sub_54008();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v18 - v13;
  a2(v12);
  sub_54018();
  swift_getWitnessTable();
  v15 = *(v8 + 16);
  v15(v14, v11, v7);
  v16 = *(v8 + 8);
  v16(v11, v7);
  v15(a5, v14, v7);
  return (v16)(v14, v7);
}

uint64_t sub_3AC44()
{

  return _swift_deallocObject(v0, 64, 7);
}

id sub_3ACBC(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

void sub_3ACCC(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_3ACE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_3AD28(void *a1)
{
  v4 = sub_54008();
  WitnessTable = swift_getWitnessTable();
  sub_53E88();
  type metadata accessor for AppProtectionNavigationLink(255, v4, WitnessTable, v1);
  sub_540E8();
  type metadata accessor for LocalAuthenticationNavigationLink(255, v4, WitnessTable, v2);
  sub_540E8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_3AED4(uint64_t a1)
{

  sub_44BC(&qword_78EF8, &qword_5A288);
  sub_489C(&qword_78F00, &qword_78EF8, &qword_5A288, &protocol conformance descriptor for [A]);
  sub_3B3D0();
  sub_3B42C();
  return sub_543F8();
}

uint64_t sub_3AFAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 80);
  v13 = *(a1 + 64);
  v2 = v13;
  v14 = v3;
  v15 = *(a1 + 96);
  v4 = v15;
  v5 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v5;
  v6 = *(a1 + 48);
  v11 = *(a1 + 32);
  v7 = v11;
  v12 = v6;
  *a2 = v10[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  *(a2 + 48) = v6;
  *(a2 + 64) = v2;
  *(a2 + 80) = v3;
  *(a2 + 96) = v4;
  return sub_A650(v10, v9);
}

id sub_3B008()
{
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v1 = result;
    v2 = sub_53958();
    sub_5162C(_swiftEmptyArrayStorage);
    v3 = sub_545B8();

    [v1 openSensitiveURL:v2 withOptions:v3];

    return sub_53E18();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_3B0E4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v4 = v1[3];
  v17 = v1[2];
  v18 = v4;
  v19 = v1[4];
  v15 = *v1;
  v16 = v3;
  v5 = *(v1 + 24);
  v21[0] = *(v1 + 8);
  v21[1] = v5;
  v13 = v21[0];
  v14 = v5;
  v6 = *(v1 + 56);
  v20[0] = *(v1 + 40);
  v20[1] = v6;
  v11 = v20[0];
  v12 = v6;
  sub_3B260(v21, v10);
  sub_3B260(v20, v10);
  sub_44BC(&qword_78EC8, &qword_5A238);
  sub_44BC(&qword_78ED0, &qword_5A240);
  sub_3B2D0();
  sub_3B34C();
  sub_54408();
  KeyPath = swift_getKeyPath();
  v8 = (a1 + *(sub_44BC(&qword_78EF0, &qword_5A278) + 36));
  sub_44BC(&qword_786D8, &qword_5A280);
  result = sub_53E38();
  *v8 = KeyPath;
  return result;
}

uint64_t sub_3B260(uint64_t a1, uint64_t a2)
{
  v4 = sub_44BC(&qword_78EC8, &qword_5A238);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_3B2D0()
{
  result = qword_78ED8;
  if (!qword_78ED8)
  {
    sub_4590(&qword_78EC8, &qword_5A238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78ED8);
  }

  return result;
}

unint64_t sub_3B34C()
{
  result = qword_78EE0;
  if (!qword_78EE0)
  {
    sub_4590(&qword_78ED0, &qword_5A240);
    sub_3B3D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78EE0);
  }

  return result;
}

unint64_t sub_3B3D0()
{
  result = qword_78EE8;
  if (!qword_78EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78EE8);
  }

  return result;
}

unint64_t sub_3B42C()
{
  result = qword_78F08;
  if (!qword_78F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78F08);
  }

  return result;
}

unint64_t sub_3B484()
{
  result = qword_78F10;
  if (!qword_78F10)
  {
    sub_4590(&qword_78EF0, &qword_5A278);
    sub_3B53C();
    sub_489C(&qword_786D0, &qword_786D8, &qword_5A280, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78F10);
  }

  return result;
}

unint64_t sub_3B53C()
{
  result = qword_78F18;
  if (!qword_78F18)
  {
    sub_4590(&qword_78F20, &unk_5A290);
    sub_3B2D0();
    sub_3B34C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78F18);
  }

  return result;
}

uint64_t sub_3B5E0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_44BC(&qword_78F28, &qword_5A2A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_44BC(&qword_78F30, &qword_5A2A8);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_44BC(&qword_78F38, &unk_5A2B0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_3B76C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_44BC(&qword_78F28, &qword_5A2A0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_44BC(&qword_78F30, &qword_5A2A8);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = sub_44BC(&qword_78F38, &unk_5A2B0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[7];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for PrivacyAndSecuritySettingsList(uint64_t a1)
{
  result = qword_78F98;
  if (!qword_78F98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_3B92C(uint64_t a1)
{
  sub_3BB18(319, &qword_78FA8, &type metadata accessor for AppendSettingsNavigationPathAction, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_3BB18(319, &qword_78FB0, &type metadata accessor for ClearSettingsNavigationPathAction, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_3BB7C(319, &qword_78FB8, &type metadata for Bool, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_3BB18(319, &qword_78FC0, &type metadata accessor for OpenURLAction, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          sub_3BB18(319, &qword_78FC8, type metadata accessor for PrivacyAndSecuritySettingsListViewModel, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            sub_3BB7C(319, &unk_78FD0, &type metadata for Double, &type metadata accessor for State);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_3BB18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_3BB7C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_3BC0C(uint64_t a1)
{
  v2 = sub_53E48();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_53F78();
}

void *sub_3BCD4@<X0>(uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_44BC(&qword_79010, &qword_5A360);
  swift_storeEnumTagMultiPayload();
  v3 = type metadata accessor for PrivacyAndSecuritySettingsList(0);
  v4 = v3[5];
  *(a2 + v4) = swift_getKeyPath();
  sub_44BC(&qword_79018, &qword_5A398);
  swift_storeEnumTagMultiPayload();
  v5 = a2 + v3[6];
  *v5 = swift_getKeyPath();
  v5[8] = 0;
  v6 = v3[7];
  *(a2 + v6) = swift_getKeyPath();
  sub_44BC(&qword_79020, &qword_5A400);
  swift_storeEnumTagMultiPayload();
  v7 = (a2 + v3[9]);
  sub_54348();
  *v7 = v10;
  v7[1] = v11;
  type metadata accessor for PrivacyAndSecuritySettingsListViewModel(0);
  result = sub_54348();
  v9 = (a2 + v3[8]);
  *v9 = v10;
  v9[1] = v11;
  return result;
}

uint64_t sub_3BE30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v103 = a1;
  v90 = a3;
  v91 = sub_53FE8();
  v89 = *(v91 - 8);
  __chkstk_darwin(v91);
  v88 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_544D8();
  v108 = *(v5 - 8);
  v109 = v5;
  __chkstk_darwin(v5);
  v105 = (&v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for PrivacyAndSecuritySettingsList(0);
  v8 = v7 - 8;
  v102 = *(v7 - 8);
  v101 = *(v102 + 64);
  __chkstk_darwin(v7);
  v99 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_53ED8();
  v10 = *(v97 - 8);
  v96 = *(v10 + 64);
  __chkstk_darwin(v97);
  v95 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_44BC(&qword_79060, &qword_5A458);
  __chkstk_darwin(v98);
  v13 = &v80 - v12;
  v104 = sub_44BC(&qword_79068, &qword_5A460);
  __chkstk_darwin(v104);
  v100 = &v80 - v14;
  v82 = sub_44BC(&qword_79070, &qword_5A468);
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v107 = &v80 - v15;
  v85 = sub_44BC(&qword_79078, &qword_5A470);
  v83 = *(v85 - 8);
  __chkstk_darwin(v85);
  v106 = &v80 - v16;
  v87 = sub_44BC(&qword_79080, &qword_5A478);
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v84 = &v80 - v17;
  v18 = (a2 + *(v8 + 40));
  v19 = *v18;
  v94 = v18[1];
  v114 = v19;
  v115 = v94;
  v92 = v19;
  v93 = sub_44BC(&qword_79088, &qword_5A480);
  sub_54378();
  v21 = v117;
  v20 = v118;
  v22 = v119;
  swift_getKeyPath();
  v117 = v21;
  v118 = v20;
  v119 = v22;
  sub_44BC(&qword_79090, &qword_5A4B0);
  sub_543D8();

  v23 = v114;
  v24 = v115;
  v25 = v116;

  v111 = v23;
  v112 = v24;
  v113 = v25;
  v26 = a2;
  v110 = a2;
  sub_44BC(&qword_79098, &qword_5A4B8);
  sub_76AC();
  sub_489C(&qword_790A0, &qword_79098, &qword_5A4B8, &protocol conformance descriptor for TupleView<A>);
  sub_54188();
  v27 = v94;
  v117 = v19;
  v118 = v94;
  sub_54358();
  v28 = *(v114 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel_scrollToItemSubject);

  v29 = v95;
  v30 = v97;
  (*(v10 + 16))(v95, v103, v97);
  v31 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v32 = swift_allocObject();
  (*(v10 + 32))(v32 + v31, v29, v30);
  v33 = sub_44BC(&qword_790A8, &qword_5A4C0);
  *&v13[*(v33 + 52)] = v28;
  v34 = &v13[*(v33 + 56)];
  *v34 = sub_3E724;
  v34[1] = v32;
  v35 = v26;
  v36 = v99;
  sub_3E5A0(v26, v99, type metadata accessor for PrivacyAndSecuritySettingsList);
  v37 = (*(v102 + 80) + 16) & ~*(v102 + 80);
  v38 = swift_allocObject();
  sub_3E388(v36, v38 + v37);
  v39 = &v13[*(v98 + 36)];
  *v39 = sub_3E9CC;
  v39[1] = v38;
  v39[2] = 0;
  v39[3] = 0;
  v40 = v92;
  v117 = v92;
  v118 = v27;
  sub_54358();
  type metadata accessor for PrivacyAndSecuritySettingsListViewModel(0);
  sub_3EA2C();
  sub_3EE08(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel, &unk_5A688);
  v41 = v100;
  sub_54278();

  v42 = v13;
  v43 = v104;
  sub_47F8(v42, &qword_79060, &qword_5A458);
  v44 = sub_54438();
  v117 = v40;
  v118 = v27;
  sub_54358();
  v45 = sub_3F1A4();
  v47 = v46;
  v49 = v48;

  v50 = (v41 + *(v43 + 36));
  *v50 = v44;
  v50[1] = v45;
  v50[2] = v47;
  v50[3] = v49;
  v51 = sub_3EAE4();
  sub_54218();
  sub_3EC28(v41);
  v52 = v105;
  *v105 = 0xD00000000000001ELL;
  v52[1] = 0x800000000005B790;
  v53 = v52;
  (*(v108 + 104))();
  v101 = sub_53918();
  v54 = *(v101 - 8);
  v55 = *(v54 + 64);
  __chkstk_darwin(v101);
  v102 = (v55 + 15) & 0xFFFFFFFFFFFFFFF0;
  v103 = v35;
  v56 = &v80 - v102;
  sub_3D938();
  v57 = sub_44BC(&qword_783B8, &unk_5A4D0);
  __chkstk_darwin(v57 - 8);
  v59 = &v80 - v58;
  sub_53998();
  v60 = sub_539A8();
  v61 = *(v60 - 8);
  result = (*(v61 + 48))(v59, 1, v60);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v117 = v43;
    v118 = v51;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v64 = v107;
    v65 = v82;
    sub_54238();
    (*(v54 + 8))(v56, v101);
    (*(v108 + 8))(v53, v109);
    (*(v81 + 8))(v64, v65);
    v66 = (*(v61 + 8))(v59, v60);
    __chkstk_darwin(v66);
    sub_3D938();
    v67 = sub_541F8();
    v69 = v68;
    v71 = v70;
    v117 = v65;
    v118 = OpaqueTypeConformance2;
    v72 = swift_getOpaqueTypeConformance2();
    v73 = v84;
    v74 = v85;
    v75 = v106;
    sub_54228();
    sub_84F8(v67, v69, v71 & 1);

    (*(v83 + 8))(v75, v74);
    v76 = v89;
    v77 = v88;
    v78 = v91;
    (*(v89 + 104))(v88, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v91);
    v117 = v74;
    v118 = v72;
    swift_getOpaqueTypeConformance2();
    v79 = v87;
    sub_542E8();
    (*(v76 + 8))(v77, v78);
    return (*(v86 + 8))(v73, v79);
  }

  return result;
}

uint64_t sub_3CAE0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_3EE08(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel, &unk_5A688);
  sub_53A28();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_3CBB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v44 = sub_44BC(&qword_790E8, &qword_5A4E8);
  v3 = *(v44 - 8);
  v4 = __chkstk_darwin(v44);
  v43 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v47 = &v40 - v6;
  v7 = sub_44BC(&qword_790F0, &qword_5A4F0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v41 = &v40 - v9;
  v10 = sub_53FD8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_44BC(&qword_790F8, &qword_5A4F8);
  v15 = __chkstk_darwin(v14 - 8);
  v46 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v40 - v17;
  v19 = type metadata accessor for PrivacyAndSecuritySettingsList(0);
  v42 = v19;
  v20 = a1;
  v21 = a1 + *(v19 + 24);
  v22 = *v21;
  LODWORD(v21) = *(v21 + 8);
  v48 = v18;
  if (v21 != 1)
  {

    sub_54818();
    v25 = sub_54168();
    sub_53C08();

    sub_53FC8();
    swift_getAtKeyPath();
    sub_3E37C(v22, 0);
    v19 = (*(v11 + 8))(v13, v10);
    if (v49 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    __chkstk_darwin(v19);
    sub_54558();
    sub_3EE08(&qword_79128, &type metadata accessor for SettingsFeatureDescriptionView, &protocol conformance descriptor for SettingsFeatureDescriptionView);
    v26 = v41;
    sub_54418();
    v24 = v48;
    (*(v8 + 32))(v48, v26, v7);
    v23 = 0;
    goto LABEL_6;
  }

  if (v22)
  {
    goto LABEL_5;
  }

LABEL_3:
  v23 = 1;
  v24 = v48;
LABEL_6:
  (*(v8 + 56))(v24, v23, 1, v7);
  v27 = (v20 + *(v42 + 32));
  v29 = *v27;
  v28 = v27[1];
  v49 = v29;
  v50 = v28;
  sub_44BC(&qword_79088, &qword_5A480);
  sub_54358();
  v30 = sub_3F1A4();

  v49 = v30;
  sub_44BC(&qword_79100, &qword_5A500);
  sub_489C(&qword_79108, &qword_79100, &qword_5A500, &protocol conformance descriptor for [A]);
  sub_3ED58();
  sub_3EDAC();
  v31 = v47;
  sub_543F8();
  v32 = v46;
  sub_4790(v24, v46, &qword_790F8, &qword_5A4F8);
  v33 = *(v3 + 16);
  v35 = v43;
  v34 = v44;
  v33(v43, v31, v44);
  v36 = v45;
  sub_4790(v32, v45, &qword_790F8, &qword_5A4F8);
  v37 = sub_44BC(&qword_79120, &qword_5A508);
  v33((v36 + *(v37 + 48)), v35, v34);
  v38 = *(v3 + 8);
  v38(v31, v34);
  sub_47F8(v48, &qword_790F8, &qword_5A4F8);
  v38(v35, v34);
  return sub_47F8(v32, &qword_790F8, &qword_5A4F8);
}

uint64_t sub_3D1BC()
{
  v0 = sub_53918();
  __chkstk_darwin(v0 - 8);
  sub_3D938();
  sub_541F8();
  sub_54078();
  sub_386C0();
  if (!sub_548D8())
  {
    v1 = [objc_opt_self() mainBundle];
  }

  sub_541D8();
  return sub_54548();
}

uint64_t sub_3D360@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1[3];
  v9 = a1[2];
  v10 = v2;
  v11 = a1[4];
  v3 = v11;
  v4 = a1[1];
  v8[0] = *a1;
  v5 = v8[0];
  v8[1] = v4;
  a2[2] = v9;
  a2[3] = v2;
  a2[4] = v3;
  *a2 = v5;
  a2[1] = v4;
  return sub_C990(v8, &v7);
}

uint64_t sub_3D3AC(char *a1, uint64_t a2)
{
  sub_54438();
  sub_53E58();
}

uint64_t sub_3D420(uint64_t a1)
{
  v2 = sub_44BC(&qword_790D8, &unk_5A8E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v24[-v3];
  v5 = sub_44BC(&qword_790E0, &qword_5A4E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v24[-v6];
  if (qword_76FE8 != -1)
  {
    swift_once();
  }

  v8 = sub_53C38();
  sub_7700(v8, qword_7BC18);
  v9 = sub_53C18();
  v10 = sub_54828();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_18710(0xD00000000000001ELL, 0x800000000005A2A0, &v25);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_18710(2036625250, 0xE400000000000000, &v25);
    _os_log_impl(&dword_0, v9, v10, "%s.%s", v11, 0x16u);
    swift_arrayDestroy();
  }

  v12 = (a1 + *(type metadata accessor for PrivacyAndSecuritySettingsList(0) + 32));
  v14 = v12[1];
  v25 = *v12;
  v13 = v25;
  v26 = v14;
  sub_44BC(&qword_79088, &qword_5A480);
  sub_54358();
  v15 = v27;
  sub_3E0D8(&qword_79010, &qword_5A360, &type metadata accessor for AppendSettingsNavigationPathAction, v7);
  v16 = sub_53B88();
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel_appendSettingsNavigationPath;
  swift_beginAccess();
  sub_3EC90(v7, v15 + v17, &qword_790E0, &qword_5A4E0);
  swift_endAccess();

  v25 = v13;
  v26 = v14;
  sub_54358();
  v18 = v27;
  sub_3E0D8(&qword_79018, &qword_5A398, &type metadata accessor for ClearSettingsNavigationPathAction, v4);
  v19 = sub_53B68();
  (*(*(v19 - 8) + 56))(v4, 0, 1, v19);
  v20 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel_clearSettingsNavigationPath;
  swift_beginAccess();
  sub_3EC90(v4, v18 + v20, &qword_790D8, &unk_5A8E0);
  swift_endAccess();

  v25 = v13;
  v26 = v14;
  sub_54358();
  v21 = v27;
  if (*(v27 + 16) != 45)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *&v24[-16] = v21;
    v24[-8] = 45;
    v25 = v21;
    sub_3EE08(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel, &unk_5A688);
    sub_53A18();
  }

  v25 = v13;
  v26 = v14;
  sub_54358();
  sub_3F57C();
}

uint64_t sub_3D938()
{
  v0 = sub_54628();
  __chkstk_darwin(v0 - 8);
  sub_54618();
  v1 = sub_53908();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_76FD8 != -1)
  {
    swift_once();
  }

  v5 = [qword_7BBF8 bundleURL];
  sub_53978();

  (*(v2 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v1);
  v6 = sub_539F8();
  __chkstk_darwin(v6 - 8);
  sub_539E8();
  return sub_53928();
}

uint64_t sub_3DB4C(_BYTE *a1)
{
  v2 = type metadata accessor for LocationAccessReportView(0);
  __chkstk_darwin(v2);
  v4 = (v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_44BC(&qword_79058, &qword_5A418);
  __chkstk_darwin(v5);
  v7 = v17 - v6;
  v8 = type metadata accessor for AppleIntelligenceReportView(0);
  __chkstk_darwin(v8);
  v10 = (v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*a1)
  {
    sub_335F8(v4);
    sub_3E5A0(v4, v7, type metadata accessor for LocationAccessReportView);
    swift_storeEnumTagMultiPayload();
    sub_3EE08(&qword_79048, type metadata accessor for AppleIntelligenceReportView, &unk_5812C);
    sub_3EE08(&qword_79050, type metadata accessor for LocationAccessReportView, &unk_593CC);
    sub_540D8();
    v11 = type metadata accessor for LocationAccessReportView;
    v12 = v4;
  }

  else
  {
    type metadata accessor for AppleIntelligenceReportViewModel(0);
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    sub_53A38();
    v17[1] = v13;
    sub_54348();
    v14 = v17[3];
    *v10 = v17[2];
    v10[1] = v14;
    v15 = *(v8 + 20);
    *(v10 + v15) = swift_getKeyPath();
    sub_44BC(&qword_78720, &unk_593A0);
    swift_storeEnumTagMultiPayload();
    sub_3E5A0(v10, v7, type metadata accessor for AppleIntelligenceReportView);
    swift_storeEnumTagMultiPayload();
    sub_3EE08(&qword_79048, type metadata accessor for AppleIntelligenceReportView, &unk_5812C);
    sub_3EE08(&qword_79050, type metadata accessor for LocationAccessReportView, &unk_593CC);
    sub_540D8();
    v11 = type metadata accessor for AppleIntelligenceReportView;
    v12 = v10;
  }

  return sub_3E608(v12, v11);
}

uint64_t sub_3DEBC(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1 - 8);
  sub_3E5A0(v1, v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PrivacyAndSecuritySettingsList);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_3E388(v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  v7[0] = sub_3E3EC;
  v7[1] = v5;
  sub_44BC(&qword_79028, &qword_5A408);
  sub_44BC(&qword_79030, &qword_5A410);
  sub_489C(&qword_79038, &qword_79028, &qword_5A408, &protocol conformance descriptor for ScrollViewReader<A>);
  sub_36574();
  sub_3E46C();
  sub_542D8();
}

uint64_t sub_3E0D8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  v8 = v4;
  v10 = sub_53FD8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_44BC(a1, a2);
  __chkstk_darwin(v14);
  v16 = &v20 - v15;
  sub_4790(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    sub_54818();
    v19 = sub_54168();
    sub_53C08();

    sub_53FC8();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_3E320@<X0>(_BYTE *a1@<X8>)
{
  result = sub_53F98();
  *a1 = result & 1;
  return result;
}

uint64_t sub_3E37C(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_3E388(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivacyAndSecuritySettingsList(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_3E3EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PrivacyAndSecuritySettingsList(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_3BE30(a1, v6, a2);
}

unint64_t sub_3E46C()
{
  result = qword_79040;
  if (!qword_79040)
  {
    sub_4590(&qword_79030, &qword_5A410);
    sub_3EE08(&qword_79048, type metadata accessor for AppleIntelligenceReportView, &unk_5812C);
    sub_3EE08(&qword_79050, type metadata accessor for LocationAccessReportView, &unk_593CC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_79040);
  }

  return result;
}

uint64_t sub_3E5A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_3E608(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_3E69C()
{
  v1 = sub_53ED8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_3E724(char *a1)
{
  v3 = *(sub_53ED8() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_3D3AC(a1, v4);
}

uint64_t sub_3E794()
{
  v1 = type metadata accessor for PrivacyAndSecuritySettingsList(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_44BC(&qword_79010, &qword_5A360);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_53B88();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[5];
  sub_44BC(&qword_79018, &qword_5A398);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_53B68();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  sub_3E37C(*(v5 + v1[6]), *(v5 + v1[6] + 8));
  v9 = v1[7];
  sub_44BC(&qword_79020, &qword_5A400);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_53E48();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_3E9CC()
{
  v1 = *(type metadata accessor for PrivacyAndSecuritySettingsList(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_3D420(v2);
}

unint64_t sub_3EA2C()
{
  result = qword_790B0;
  if (!qword_790B0)
  {
    sub_4590(&qword_79060, &qword_5A458);
    sub_489C(&qword_790B8, &qword_790A8, &qword_5A4C0, &protocol conformance descriptor for SubscriptionView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_790B0);
  }

  return result;
}

unint64_t sub_3EAE4()
{
  result = qword_790C0;
  if (!qword_790C0)
  {
    sub_4590(&qword_79068, &qword_5A460);
    sub_4590(&qword_79060, &qword_5A458);
    type metadata accessor for PrivacyAndSecuritySettingsListViewModel(255);
    sub_3EA2C();
    sub_3EE08(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel, &unk_5A688);
    swift_getOpaqueTypeConformance2();
    sub_489C(&qword_790C8, &qword_790D0, &qword_5A4C8, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_790C0);
  }

  return result;
}

uint64_t sub_3EC28(uint64_t a1)
{
  v2 = sub_44BC(&qword_79068, &qword_5A460);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3EC90(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_44BC(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_3ED58()
{
  result = qword_79110;
  if (!qword_79110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_79110);
  }

  return result;
}

unint64_t sub_3EDAC()
{
  result = qword_79118;
  if (!qword_79118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_79118);
  }

  return result;
}

uint64_t sub_3EE08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_3EE50()
{
  sub_4590(&qword_79028, &qword_5A408);
  sub_4590(&qword_79030, &qword_5A410);
  sub_489C(&qword_79038, &qword_79028, &qword_5A408, &protocol conformance descriptor for ScrollViewReader<A>);
  sub_36574();
  sub_3E46C();
  return swift_getOpaqueTypeConformance2();
}

void sub_3EF24(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_3EF90(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_3EFE4(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2 == 45)
  {
    if (result != 45)
    {
LABEL_3:
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel, &unk_5A688);
      sub_53A18();
    }
  }

  else if (v2 != result)
  {
    goto LABEL_3;
  }

  *(v1 + 16) = result;
  return result;
}

uint64_t sub_3F104()
{
  swift_getKeyPath();
  sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel, &unk_5A688);
  sub_53A28();

  return *(v0 + 16);
}

uint64_t sub_3F1A4()
{
  v1 = v0;
  swift_getKeyPath();
  *&v34[0] = v0;
  sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel, &unk_5A688);
  sub_53A28();

  v2 = *(v0 + 24);
  if (v2)
  {
    goto LABEL_21;
  }

  if (qword_76FF0 != -1)
  {
    swift_once();
  }

  v3 = sub_53C38();
  sub_7700(v3, qword_7BC30);
  v4 = sub_53C18();
  v5 = sub_54828();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, v4, v5, "No cached data model found, requesting new snapshot.", v6, 2u);
  }

  v7 = sub_40714();
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = _swiftEmptyArrayStorage;
    v21 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel__communicationSafetySetupHasCompleted;
    v10 = v7 + 32;
    do
    {
      sub_89B8(v10, v31);
      sub_89B8(v31, &v26);
      sub_44BC(&qword_79310, &qword_5A798);
      type metadata accessor for SensitiveContentWarningListSectionModelProvider();
      if (swift_dynamicCast() && (, swift_getKeyPath(), *&v26 = v1, sub_53A28(), , (*(v1 + v21) & 1) == 0))
      {
        sub_777C(v31);
      }

      else
      {
        v12 = v32;
        v11 = v33;
        sub_7738(v31, v32);
        (*(v11 + 16))(v34, v12, v11);
        v28 = v34[2];
        v29 = v34[3];
        v30 = v35;
        v26 = v34[0];
        v27 = v34[1];
        sub_777C(v31);
        if (*(&v35 + 1))
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_23C20(0, *(v9 + 2) + 1, 1, v9);
          }

          v14 = *(v9 + 2);
          v13 = *(v9 + 3);
          if (v14 >= v13 >> 1)
          {
            v9 = sub_23C20((v13 > 1), v14 + 1, 1, v9);
          }

          v24 = v29;
          v25 = v30;
          v22 = v27;
          v23 = v28;
          v15 = v26;
          *(v9 + 2) = v14 + 1;
          v16 = &v9[80 * v14];
          *(v16 + 2) = v15;
          *(v16 + 5) = v24;
          *(v16 + 6) = v25;
          *(v16 + 3) = v22;
          *(v16 + 4) = v23;
        }
      }

      v10 += 40;
      --v8;
    }

    while (v8);
  }

  else
  {

    v9 = _swiftEmptyArrayStorage;
  }

  v17 = sub_C50C(v9);
  sub_3FACC(v17, v18, v19);
  swift_getKeyPath();
  *&v26 = v1;
  sub_53A28();

  v2 = *(v1 + 24);
  if (v2)
  {
LABEL_21:

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_3F57C()
{
  v1 = v0;
  swift_getKeyPath();
  v15 = v0;
  sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel, &unk_5A688);
  sub_53A28();

  if (*(v0 + 56))
  {
    if (qword_76FE8 != -1)
    {
      swift_once();
    }

    v3 = sub_53C38();
    sub_7700(v3, qword_7BC18);

    v4 = sub_53C18();
    v5 = sub_54828();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v6 = 136315394;
      v7 = sub_54D48();
      v9 = sub_18710(v7, v8, &v15);

      *(v6 + 4) = v9;
      *(v6 + 12) = 2080;
      *(v6 + 14) = sub_18710(0xD000000000000012, 0x800000000005EB80, &v15);
      _os_log_impl(&dword_0, v4, v5, "%s.%s: resuming url load", v6, 0x16u);
      swift_arrayDestroy();
    }

    swift_getKeyPath();
    v15 = v1;
    sub_53A28();

    v10 = v1[7];
    swift_getKeyPath();
    v15 = v1;

    sub_53A28();

    v11 = v1[8];
    v12 = v1[9];
    sub_515D4(v11, v12);
    sub_45F0C(v10, v11, v12);
    sub_515E4(v11, v12);

    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v15 = v1;
    sub_53A18();

    v14 = swift_getKeyPath();
    __chkstk_darwin(v14);
    v15 = v1;
    sub_53A18();
  }

  return result;
}

uint64_t sub_3F958()
{
  swift_getKeyPath();
  v3 = v0;
  sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel, &unk_5A688);
  sub_53A28();

  v1 = *(v0 + 24);
  sub_4B83C(v1, *(v3 + 32), *(v3 + 40));
  return v1;
}

uint64_t sub_3FA18@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel, &unk_5A688);
  sub_53A28();

  v4 = v3[3];
  v5 = v3[4];
  v6 = v3[5];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  return sub_4B83C(v4, v5, v6);
}

uint64_t sub_3FACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[3];
  v7 = v3[4];
  v9 = v3[5];
  if (!v8)
  {
    if (!a1)
    {
      v14 = 0;
      goto LABEL_9;
    }

LABEL_15:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel, &unk_5A688);
    sub_53A18();
    sub_4B7F0(a1, a2, a3);
  }

  v10 = v3[3];
  v11 = v3[4];
  v12 = v3[5];
  if (!a1)
  {
    sub_4B83C(v10, v11, v12);

    goto LABEL_14;
  }

  sub_4B83C(v10, v11, v12);

  if ((sub_4C0FC(v8, a1) & 1) == 0 || (sub_4CBA8(v7, a2) & 1) == 0)
  {
    sub_4B7F0(v8, v7, v9);

LABEL_14:

    goto LABEL_15;
  }

  v13 = sub_4D714(v9, a3);
  sub_4B7F0(v8, v7, v9);

  if ((v13 & 1) == 0)
  {
    goto LABEL_15;
  }

  v14 = v3[3];
  v7 = v3[4];
  v9 = v3[5];
LABEL_9:
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = a3;

  return sub_4B7F0(v14, v7, v9);
}

uint64_t sub_3FD08()
{
  swift_getKeyPath();
  sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel, &unk_5A688);
  sub_53A28();
}

uint64_t sub_3FDAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel, &unk_5A688);
  sub_53A28();

  *a2 = *(v3 + 48);
}

uint64_t sub_3FE58(uint64_t a1)
{
  if (*(v1 + 48) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel, &unk_5A688);
    sub_53A18();
  }
}

uint64_t sub_3FF8C()
{
  swift_getKeyPath();
  sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel, &unk_5A688);
  sub_53A28();
}

uint64_t sub_40030@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel, &unk_5A688);
  sub_53A28();

  *a2 = *(v3 + 56);
}

uint64_t sub_400DC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel, &unk_5A688);
  sub_53A18();
}

uint64_t sub_401A8()
{
  swift_getKeyPath();
  v3 = v0;
  sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel, &unk_5A688);
  sub_53A28();

  v1 = *(v0 + 64);
  sub_515D4(v1, *(v3 + 72));
  return v1;
}

uint64_t sub_4025C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel, &unk_5A688);
  sub_53A28();

  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_51924;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_515D4(v4, v5);
}

uint64_t sub_40348(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_518FC;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_515D4(v2, v3);
  sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel, &unk_5A688);
  sub_53A18();
  sub_515E4(v5, v4);
}

uint64_t sub_404A4()
{
  swift_getKeyPath();
  sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel, &unk_5A688);
  sub_53A28();

  return *(v0 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel__communicationSafetySetupHasCompleted);
}

uint64_t sub_4054C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel, &unk_5A688);
  sub_53A28();

  *a2 = *(v3 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel__communicationSafetySetupHasCompleted);
  return result;
}

uint64_t sub_405FC(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel__communicationSafetySetupHasCompleted) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel__communicationSafetySetupHasCompleted) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel, &unk_5A688);
    sub_53A18();
  }

  return result;
}

uint64_t sub_40714()
{
  v1 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel____lazy_storage___sectionModelProviders;
  if (*(v0 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel____lazy_storage___sectionModelProviders))
  {
    v2 = *(v0 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel____lazy_storage___sectionModelProviders);
  }

  else
  {
    v2 = sub_4077C(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_4077C(objc_class **a1)
{
  v2 = *a1;
  sub_44BC(&qword_79318, &unk_5A7A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_5A520;
  v4 = sub_40C40(a1);
  v5 = type metadata accessor for StaticPrivacyAndSecuritySettingsListSectionProvider();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 72) = 0u;
  *(v6 + 88) = v4;
  *(v3 + 56) = v5;
  *(v3 + 64) = &off_6EAA0;
  *(v3 + 32) = v6;
  v7 = sub_410F0(a1);
  v8 = swift_allocObject();
  *(v8 + 16) = 257;
  *(v8 + 24) = 0u;
  *(v8 + 40) = 0u;
  *(v8 + 56) = 0u;
  *(v8 + 72) = 0u;
  *(v8 + 88) = v7;
  *(v3 + 96) = v5;
  *(v3 + 104) = &off_6EAA0;
  *(v3 + 72) = v8;
  v9 = sub_41F90(a1);
  v10 = swift_allocObject();
  *(v10 + 16) = 258;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = v9;
  *(v3 + 136) = v5;
  *(v3 + 144) = &off_6EAA0;
  *(v3 + 112) = v10;
  v11 = sub_4339C();
  v12 = swift_allocObject();
  *(v12 + 16) = 3;
  *(v12 + 24) = 0u;
  *(v12 + 40) = 0u;
  *(v12 + 56) = 0u;
  *(v12 + 72) = 0u;
  *(v12 + 88) = v11;
  *(v3 + 176) = v5;
  *(v3 + 184) = &off_6EAA0;
  *(v3 + 152) = v12;
  v13 = type metadata accessor for BlockingAndSafetyCheckListSectionModelProvider();
  v14 = swift_allocObject();
  *(v14 + 16) = 4;
  *(v3 + 216) = v13;
  *(v3 + 224) = &off_6F598;
  *(v3 + 192) = v14;
  v46[3] = v2;
  v46[4] = &off_70408;
  v46[0] = a1;
  v15 = type metadata accessor for SensitiveContentWarningListSectionModelProvider();
  v16 = swift_allocObject();
  v17 = sub_50D68(v46, v2);
  __chkstk_darwin(v17);
  v19 = (&v46[-1] - v18);
  (*(v20 + 16))(&v46[-1] - v18);
  v21 = *v19;

  v22 = sub_4FAC4(v21, v16);
  sub_777C(v46);
  *(v3 + 256) = v15;
  *(v3 + 264) = &off_6F758;
  *(v3 + 232) = v22;
  v23 = sub_4358C();
  v24 = swift_allocObject();
  *(v24 + 16) = 6;
  *(v24 + 24) = 0u;
  *(v24 + 40) = 0u;
  *(v24 + 56) = 0u;
  *(v24 + 72) = 0u;
  *(v24 + 88) = v23;
  *(v3 + 296) = v5;
  *(v3 + 304) = &off_6EAA0;
  *(v3 + 272) = v24;
  sub_54078();
  if (qword_76FD8 != -1)
  {
    swift_once();
  }

  v25 = qword_7BBF8;
  v26 = sub_541D8();
  v28 = v27;
  v30 = v29;
  v32 = v31 & 1;
  v33 = sub_436BC(a1);
  v34 = swift_allocObject();
  *(v34 + 16) = 7;
  *(v34 + 24) = v26;
  *(v34 + 32) = v28;
  *(v34 + 40) = v32;
  *(v34 + 48) = v30;
  *(v34 + 56) = 0u;
  *(v34 + 72) = 0u;
  *(v34 + 88) = v33;
  *(v3 + 336) = v5;
  *(v3 + 344) = &off_6EAA0;
  *(v3 + 312) = v34;
  sub_54078();
  v35 = sub_541D8();
  v37 = v36;
  v39 = v38;
  v41 = v40 & 1;
  v42 = sub_43BE0(a1);
  v43 = swift_allocObject();
  *(v43 + 16) = 9;
  *(v43 + 24) = v35;
  *(v43 + 32) = v37;
  *(v43 + 40) = v41;
  *(v43 + 48) = v39;
  *(v43 + 56) = 0u;
  *(v43 + 72) = 0u;
  *(v43 + 88) = v42;
  *(v3 + 376) = v5;
  *(v3 + 384) = &off_6EAA0;
  *(v3 + 352) = v43;
  return v3;
}

void *sub_40C40(objc_class **a1)
{
  v2 = *a1;
  v29 = v2;
  v30 = &off_70408;
  *&v28 = a1;
  v3 = type metadata accessor for LocationServicesStateListItemProvider();
  v4 = objc_allocWithZone(v3);
  v5 = sub_50D68(&v28, v2);
  v6 = *(v2 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v23 = *(v6 + 16);
  v24 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v23(&v22 - v24);
  v8 = *(&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));

  v9 = sub_4E854(v8, v4);
  sub_777C(&v28);
  v29 = v3;
  v30 = &off_6F1B0;
  *&v28 = v9;
  sub_44BC(&qword_77F90, &qword_57CD0);
  inited = swift_initStackObject();
  v22 = xmmword_57A70;
  *(inited + 16) = xmmword_57A70;
  sub_50DB8(&v28, inited + 32);
  swift_getKeyPath();
  *&v25 = a1;
  sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel, &unk_5A688);
  sub_53A28();

  v11 = a1[6];
  v26 = v2;
  v27 = &off_70408;
  *&v25 = a1;
  v12 = type metadata accessor for TCCAuthorizationListValueItemProvider();
  v13 = swift_allocObject();
  v14 = sub_50D68(&v25, v2);
  __chkstk_darwin(v14);
  v15 = (&v22 - v24);
  v23(&v22 - v24);
  v16 = *v15;

  v17 = sub_4F010(1u, v11, v16, v13);
  sub_777C(&v25);
  v26 = v12;
  v27 = &off_6F468;
  *&v25 = v17;
  v18 = swift_initStackObject();
  *(v18 + 16) = v22;
  sub_50DB8(&v25, v18 + 32);
  sub_44BC(&qword_79328, &qword_5A7B0);
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_5A530;
  *(v19 + 32) = inited;
  *(v19 + 40) = v18;
  v20 = sub_40F9C(v19);
  swift_setDeallocating();
  sub_44BC(&qword_79330, &qword_5A7B8);
  swift_arrayDestroy();
  return v20;
}

void *sub_40F9C(void *result)
{
  v1 = result[2];
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = _swiftEmptyArrayStorage;
  for (i = result + 4; ; ++i)
  {
    v4 = *i;
    v5 = *(*i + 16);
    v6 = v2[2];
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v7 <= v2[3] >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v8 = v6 + v5;
      }

      else
      {
        v8 = v6;
      }

      result = sub_23E4C(result, v8, 1, v2);
      v2 = result;
      if (*(v4 + 16))
      {
LABEL_14:
        if ((v2[3] >> 1) - v2[2] < v5)
        {
          goto LABEL_22;
        }

        sub_44BC(&qword_77F98, &qword_5A7C0);
        swift_arrayInitWithCopy();

        if (v5)
        {
          v9 = v2[2];
          v10 = __OFADD__(v9, v5);
          v11 = v9 + v5;
          if (v10)
          {
            goto LABEL_23;
          }

          v2[2] = v11;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_21;
    }

LABEL_4:
    if (!--v1)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

void *sub_410F0(objc_class **a1)
{
  v2 = *a1;
  swift_getKeyPath();
  v123 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel___observationRegistrar;
  *&v155 = a1;
  v122 = sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel, &unk_5A688);
  sub_53A28();

  v3 = a1[6];
  v156 = v2;
  v157 = &off_70408;
  *&v155 = a1;
  v4 = type metadata accessor for TCCAuthorizationSubtitleListItemProvider();
  v5 = swift_allocObject();
  v6 = sub_50D68(&v155, v2);
  v7 = *(v2 - 8);
  v121 = *(v7 + 64);
  __chkstk_darwin(v6);
  v119 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = (&v106 - v119);
  v10 = *(v7 + 16);
  v10(&v106 - v119);
  v120 = v10;
  v118 = v7 + 16;
  v11 = *v9;

  v12 = sub_4F604(2, v3, v11, v5);
  sub_777C(&v155);
  v156 = v4;
  v157 = &off_6F578;
  *&v155 = v12;
  v13 = sub_44BC(&qword_77F90, &qword_57CD0);
  inited = swift_initStackObject();
  v124 = xmmword_57A70;
  *(inited + 16) = xmmword_57A70;
  v115 = inited;
  sub_50DB8(&v155, inited + 32);
  swift_getKeyPath();
  *&v152 = a1;
  sub_53A28();

  v15 = a1[6];
  v153 = v2;
  v154 = &off_70408;
  *&v152 = a1;
  v116 = v4;
  v16 = swift_allocObject();
  v17 = sub_50D68(&v152, v2);
  __chkstk_darwin(v17);
  v18 = (&v106 - v119);
  v10(&v106 - v119);
  v19 = *v18;

  v20 = sub_4F604(3, v15, v19, v16);
  sub_777C(&v152);
  v153 = v4;
  v154 = &off_6F578;
  *&v152 = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = v124;
  v114 = v21;
  sub_50DB8(&v152, v21 + 32);
  v151 = &off_70408;
  v150 = v2;
  *&v149 = a1;
  v22 = type metadata accessor for FilesAndFoldersSubtitleListItemProvider();
  v23 = objc_allocWithZone(v22);
  v24 = sub_50D68(&v149, v150);
  __chkstk_darwin(v24);
  v26 = (&v106 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  v28 = *v26;

  v29 = sub_4E29C(v28, v23);
  sub_777C(&v149);
  v151 = &off_6EDB8;
  v150 = v22;
  *&v149 = v29;
  v30 = swift_allocObject();
  *(v30 + 16) = v124;
  v113 = v30;
  sub_50DB8(&v149, v30 + 32);
  swift_getKeyPath();
  *&v146 = a1;
  sub_53A28();

  v31 = a1[6];
  v147 = v2;
  v148 = &off_70408;
  *&v146 = a1;
  v32 = v116;
  v33 = swift_allocObject();
  v34 = sub_50D68(&v146, v2);
  __chkstk_darwin(v34);
  v35 = (&v106 - v119);
  v120(&v106 - v119);
  v36 = *v35;

  v37 = sub_4F604(15, v31, v36, v33);
  sub_777C(&v146);
  v147 = v32;
  v148 = &off_6F578;
  *&v146 = v37;
  v117 = v13;
  v38 = swift_allocObject();
  *(v38 + 16) = v124;
  v112 = v38;
  sub_50DB8(&v146, v38 + 32);
  v144 = v2;
  v145 = &off_70408;
  *&v143 = a1;
  v39 = type metadata accessor for HealthDataListItemProvider();
  v40 = objc_allocWithZone(v39);
  v41 = sub_50D68(&v143, v144);
  __chkstk_darwin(v41);
  v43 = (&v106 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v44 + 16))(v43);
  v45 = *v43;

  v46 = sub_4E4F0(v45, v40);
  sub_777C(&v143);
  v144 = v39;
  v145 = &off_6F008;
  *&v143 = v46;
  v47 = swift_allocObject();
  *(v47 + 16) = v124;
  v111 = v47;
  sub_50DB8(&v143, v47 + 32);
  swift_getKeyPath();
  *&v140 = a1;
  sub_53A28();

  v48 = a1[6];
  v141 = v2;
  v142 = &off_70408;
  *&v140 = a1;
  v49 = v116;
  v50 = swift_allocObject();
  v51 = sub_50D68(&v140, v2);
  __chkstk_darwin(v51);
  v52 = v119;
  v120(&v106 - v119);
  v53 = *(&v106 - v52);

  v54 = sub_4F604(16, v48, v53, v50);
  sub_777C(&v140);
  v141 = v49;
  v142 = &off_6F578;
  *&v140 = v54;
  v55 = swift_allocObject();
  *(v55 + 16) = v124;
  v110 = v55;
  sub_50DB8(&v140, v55 + 32);
  swift_getKeyPath();
  *&v137 = a1;
  sub_53A28();

  v56 = a1[6];
  v138 = v2;
  v139 = &off_70408;
  *&v137 = a1;
  v57 = swift_allocObject();
  v58 = sub_50D68(&v137, v2);
  __chkstk_darwin(v58);
  v59 = v120;
  v120(&v106 - v52);
  v60 = *(&v106 - v52);

  v61 = sub_4F604(6, v56, v60, v57);
  sub_777C(&v137);
  v138 = v49;
  v139 = &off_6F578;
  *&v137 = v61;
  v62 = swift_allocObject();
  *(v62 + 16) = v124;
  v109 = v62;
  sub_50DB8(&v137, v62 + 32);
  swift_getKeyPath();
  *&v134 = a1;
  sub_53A28();

  v63 = a1[6];
  v135 = v2;
  v136 = &off_70408;
  *&v134 = a1;
  v64 = swift_allocObject();
  v65 = sub_50D68(&v134, v2);
  __chkstk_darwin(v65);
  v66 = v119;
  v59(&v106 - v119);
  v67 = *(&v106 - v66);

  v68 = sub_4F604(22, v63, v67, v64);
  sub_777C(&v134);
  v69 = v116;
  v135 = v116;
  v136 = &off_6F578;
  *&v134 = v68;
  v70 = swift_allocObject();
  *(v70 + 16) = v124;
  v108 = v70;
  sub_50DB8(&v134, v70 + 32);
  swift_getKeyPath();
  *&v131 = a1;
  sub_53A28();

  v71 = a1[6];
  v132 = v2;
  v133 = &off_70408;
  *&v131 = a1;
  v72 = swift_allocObject();
  v73 = sub_50D68(&v131, v2);
  __chkstk_darwin(v73);
  v120(&v106 - v66);
  v74 = *(&v106 - v66);

  v75 = sub_4F604(8, v71, v74, v72);
  sub_777C(&v131);
  v132 = v69;
  v133 = &off_6F578;
  *&v131 = v75;
  v76 = swift_allocObject();
  *(v76 + 16) = v124;
  v107 = v76;
  sub_50DB8(&v131, v76 + 32);
  swift_getKeyPath();
  *&v128 = a1;
  sub_53A28();

  v77 = a1[6];
  v129 = v2;
  v130 = &off_70408;
  *&v128 = a1;
  v78 = swift_allocObject();
  v79 = sub_50D68(&v128, v2);
  __chkstk_darwin(v79);
  v80 = (&v106 - v119);
  v120(&v106 - v119);
  v81 = *v80;

  v82 = sub_4F604(9, v77, v81, v78);
  sub_777C(&v128);
  v129 = v69;
  v130 = &off_6F578;
  *&v128 = v82;
  v83 = swift_allocObject();
  *(v83 + 16) = v124;
  sub_50DB8(&v128, v83 + 32);
  v84 = [objc_opt_self() currentDevice];
  LODWORD(v81) = [v84 sf_isiPhone];

  if (v81)
  {
    swift_getKeyPath();
    *&v125 = a1;
    sub_53A28();

    v85 = a1[6];
    v126 = v2;
    v127 = &off_70408;
    *&v125 = a1;
    v86 = swift_allocObject();
    v87 = sub_50D68(&v125, v2);
    __chkstk_darwin(v87);
    v88 = (&v106 - v119);
    v120(&v106 - v119);
    v89 = *v88;

    v90 = sub_4F604(26, v85, v89, v86);
    sub_777C(&v125);
    v126 = v69;
    v127 = &off_6F578;
    *&v125 = v90;
    v91 = swift_allocObject();
    *(v91 + 16) = v124;
    sub_50DB8(&v125, v91 + 32);
    sub_44BC(&qword_79328, &qword_5A7B0);
    v92 = swift_allocObject();
    *(v92 + 16) = v124;
    *(v92 + 32) = v91;
    v93 = v92 + 32;
    v94 = sub_40F9C(v92);
    swift_setDeallocating();
    sub_47F8(v93, &qword_79330, &qword_5A7B8);
    swift_deallocClassInstance();
  }

  else
  {
    v94 = _swiftEmptyArrayStorage;
  }

  sub_44BC(&qword_79328, &qword_5A7B0);
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_5A540;
  v96 = v114;
  *(v95 + 32) = v115;
  v98 = v112;
  v97 = v113;
  *(v95 + 40) = v96;
  *(v95 + 48) = v97;
  v100 = v110;
  v99 = v111;
  *(v95 + 56) = v98;
  *(v95 + 64) = v99;
  v102 = v108;
  v101 = v109;
  *(v95 + 72) = v100;
  *(v95 + 80) = v101;
  v103 = v107;
  *(v95 + 88) = v102;
  *(v95 + 96) = v103;
  *(v95 + 104) = v83;
  *(v95 + 112) = v94;
  v104 = sub_40F9C(v95);
  swift_setDeallocating();
  sub_44BC(&qword_79330, &qword_5A7B8);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v104;
}

void *sub_41F90(ValueMetadata **a1)
{
  v2 = *a1;
  v185 = &type metadata for AccessoriesFeatureFlags;
  v186 = sub_50F58();
  v3 = sub_53A58();
  sub_777C(&v184);
  if (v3)
  {
    v185 = v2;
    v186 = &off_70408;
    *&v184 = a1;
    v4 = type metadata accessor for AccessoriesListItemProvider();
    v5 = objc_allocWithZone(v4);
    v6 = sub_50D68(&v184, v185);
    __chkstk_darwin(v6);
    v8 = (&v142 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8);
    v10 = *v8;

    v11 = sub_4E0D4(v10, v5);
    sub_777C(&v184);
    v185 = v4;
    v186 = &off_6EBD0;
    *&v184 = v11;
    sub_44BC(&qword_77F90, &qword_57CD0);
    v12 = swift_allocObject();
    v162 = xmmword_57A70;
    *(v12 + 16) = xmmword_57A70;
    sub_50DB8(&v184, v12 + 32);
    sub_44BC(&qword_79328, &qword_5A7B0);
    v13 = swift_allocObject();
    *(v13 + 16) = v162;
    *(v13 + 32) = v12;
    v14 = v13 + 32;
    v153 = sub_40F9C(v13);
    swift_setDeallocating();
    sub_47F8(v14, &qword_79330, &qword_5A7B8);
    swift_deallocClassInstance();
  }

  else
  {
    v153 = _swiftEmptyArrayStorage;
  }

  swift_getKeyPath();
  v160 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel___observationRegistrar;
  *&v184 = a1;
  v159 = sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel, &unk_5A688);
  sub_53A28();

  v15 = a1[6];
  v185 = v2;
  v186 = &off_70408;
  *&v184 = a1;
  v16 = type metadata accessor for TCCAuthorizationListValueItemProvider();
  v17 = swift_allocObject();
  v18 = sub_50D68(&v184, v2);
  v155 = *(v2[-1].Description + 8);
  __chkstk_darwin(v18);
  v154 = ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = (&v142 - v154);
  v22 = *(v21 + 16);
  v158 = v21 + 16;
  v22(&v142 - v154);
  v23 = *v20;

  v24 = v23;
  v25 = v22;
  v26 = sub_4F010(0xBu, v15, v24, v17);
  sub_777C(&v184);
  v185 = v16;
  v186 = &off_6F468;
  v156 = v16;
  *&v184 = v26;
  v161 = sub_44BC(&qword_77F90, &qword_57CD0);
  v27 = swift_allocObject();
  v162 = xmmword_57A70;
  *(v27 + 16) = xmmword_57A70;
  v152 = v27;
  sub_50DB8(&v184, v27 + 32);
  swift_getKeyPath();
  *&v181 = a1;
  sub_53A28();

  v28 = a1[6];
  v182 = v2;
  v183 = &off_70408;
  *&v181 = a1;
  v29 = swift_allocObject();
  v30 = sub_50D68(&v181, v2);
  __chkstk_darwin(v30);
  v31 = a1;
  v32 = v154;
  v157 = v25;
  v25(&v142 - v154);
  v33 = *(&v142 - v32);

  v34 = sub_4F010(0xCu, v28, v33, v29);
  sub_777C(&v181);
  v182 = v156;
  v183 = &off_6F468;
  *&v181 = v34;
  v35 = swift_allocObject();
  *(v35 + 16) = v162;
  v151 = v35;
  sub_50DB8(&v181, v35 + 32);
  v179 = v2;
  v180 = &off_70408;
  *&v178 = v31;
  v36 = type metadata accessor for CriticalMessagesListItemProvider();
  v37 = swift_allocObject();
  v38 = sub_50D68(&v178, v2);
  __chkstk_darwin(v38);
  v39 = (&v142 - v32);
  v40 = v31;
  v25(v39);
  v41 = *v39;
  v176 = v2;
  v177 = &off_70408;
  *&v175 = v41;
  *(v37 + 16) = 13;
  *(v37 + 24) = 0;
  *(v37 + 32) = &_swiftEmptySetSingleton;
  sub_89B8(&v175, v37 + 40);

  sub_11430();
  sub_777C(&v175);
  sub_777C(&v178);
  v179 = v36;
  v180 = &off_6ED70;
  *&v178 = v37;
  v42 = swift_allocObject();
  *(v42 + 16) = v162;
  v150 = v42;
  sub_50DB8(&v178, v42 + 32);
  v176 = v2;
  v177 = &off_70408;
  *&v175 = v31;
  v43 = type metadata accessor for PairedDevicesListValueItemProvider();
  v44 = swift_allocObject();
  v45 = sub_50D68(&v175, v2);
  __chkstk_darwin(v45);
  v46 = (&v142 - v154);
  v47 = v157;
  v157(&v142 - v154);
  v48 = *v46;

  v49 = sub_4EAEC(v48, v44);
  sub_777C(&v175);
  v176 = v43;
  v177 = &off_6F2C0;
  *&v175 = v49;
  v50 = swift_allocObject();
  *(v50 + 16) = v162;
  v149 = v50;
  sub_50DB8(&v175, v50 + 32);
  v51 = objc_opt_self();
  if ([v51 isContactlessTCCServiceEligible])
  {
    v52 = v47;
    swift_getKeyPath();
    v148 = v51;
    *&v172 = v40;
    sub_53A28();

    v53 = v40[6];
    v173 = v2;
    v174 = &off_70408;
    *&v172 = v40;
    v54 = v156;
    v55 = swift_allocObject();
    v56 = sub_50D68(&v172, v2);
    __chkstk_darwin(v56);
    v57 = (&v142 - v154);
    v52(&v142 - v154);
    v58 = *v57;

    v59 = sub_4F010(0xEu, v53, v58, v55);
    sub_777C(&v172);
    v173 = v54;
    v174 = &off_6F468;
    *&v172 = v59;
    v60 = swift_allocObject();
    *(v60 + 16) = v162;
    sub_50DB8(&v172, v60 + 32);
    sub_44BC(&qword_79328, &qword_5A7B0);
    v61 = swift_allocObject();
    *(v61 + 16) = v162;
    *(v61 + 32) = v60;
    v62 = v61 + 32;
    v154 = sub_40F9C(v61);
    swift_setDeallocating();
    sub_47F8(v62, &qword_79330, &qword_5A7B8);
    v51 = v148;
    swift_deallocClassInstance();
  }

  else
  {
    v154 = _swiftEmptyArrayStorage;
  }

  if ([v51 isSecureElementTCCServiceEligible])
  {
    swift_getKeyPath();
    *&v172 = v40;
    sub_53A28();

    v63 = v40[6];
    v173 = v2;
    v174 = &off_70408;
    *&v172 = v40;
    v64 = v156;
    v65 = swift_allocObject();
    v66 = sub_50D68(&v172, v2);
    v67 = v155;
    __chkstk_darwin(v66);
    v157(&v142 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
    v68 = *(&v142 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));

    v69 = sub_4F010(0x18u, v63, v68, v65);
    sub_777C(&v172);
    v173 = v64;
    v174 = &off_6F468;
    *&v172 = v69;
    v70 = swift_allocObject();
    *(v70 + 16) = v162;
    sub_50DB8(&v172, v70 + 32);
    sub_44BC(&qword_79328, &qword_5A7B0);
    v71 = swift_allocObject();
    *(v71 + 16) = v162;
    *(v71 + 32) = v70;
    v72 = v71 + 32;
    v148 = sub_40F9C(v71);
    swift_setDeallocating();
    v73 = v67;
    sub_47F8(v72, &qword_79330, &qword_5A7B8);
    swift_deallocClassInstance();
    v74 = v2;
  }

  else
  {
    v148 = _swiftEmptyArrayStorage;
    v74 = v2;
    v73 = v155;
  }

  v173 = v74;
  v174 = &off_70408;
  *&v172 = v40;
  v75 = type metadata accessor for LocalNetworkListValueItemProvider();
  v76 = swift_allocObject();
  v77 = sub_50D68(&v172, v74);
  __chkstk_darwin(v77);
  v146 = (v73 + 15) & 0xFFFFFFFFFFFFFFF0;
  v78 = (&v142 - v146);
  v157(&v142 - v146);
  v79 = *v78;
  v170 = v74;
  v171 = &off_70408;
  *&v169 = v79;
  *(v76 + 24) = 0;
  *(v76 + 32) = &_swiftEmptySetSingleton;
  v80 = objc_opt_self();

  *(v76 + 40) = [v80 sharedManagerForAllUsers];
  *(v76 + 16) = 18;
  sub_89B8(&v169, v76 + 48);
  sub_17558();
  sub_777C(&v169);
  sub_777C(&v172);
  v173 = v75;
  v174 = &off_6F0A0;
  *&v172 = v76;
  v81 = swift_allocObject();
  *(v81 + 16) = v162;
  v147 = v81;
  sub_50DB8(&v172, v81 + 32);
  swift_getKeyPath();
  *&v169 = v40;
  sub_53A28();

  v82 = v40[6];
  v170 = v74;
  v171 = &off_70408;
  *&v169 = v40;
  v83 = v156;
  v84 = swift_allocObject();
  v85 = sub_50D68(&v169, v74);
  __chkstk_darwin(v85);
  v86 = (&v142 - v146);
  v144 = v74;
  v157(&v142 - v146);
  v87 = *v86;

  v88 = sub_4F010(0x13u, v82, v87, v84);
  sub_777C(&v169);
  v170 = v83;
  v171 = &off_6F468;
  *&v169 = v88;
  v89 = swift_allocObject();
  *(v89 + 16) = v162;
  v146 = v89;
  sub_50DB8(&v169, v89 + 32);
  if (PSIsInEDUMode() & 1) != 0 || (v90 = [objc_opt_self() currentDevice], v91 = objc_msgSend(v90, "sf_inRetailKioskMode"), v90, (v91))
  {
    v145 = _swiftEmptyArrayStorage;
    v92 = v144;
  }

  else
  {
    swift_getKeyPath();
    *&v166 = v40;
    sub_53A28();

    v93 = v40[6];
    v92 = v144;
    p_Kind = v144;
    v168 = &off_70408;
    *&v166 = v40;
    v94 = swift_allocObject();
    v95 = sub_50D68(&v166, v92);
    __chkstk_darwin(v95);
    v97 = (&v142 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0));
    v157(v97);
    v98 = *v97;

    v99 = sub_4F010(0x14u, v93, v98, v94);
    sub_777C(&v166);
    p_Kind = &v83->Kind;
    v168 = &off_6F468;
    *&v166 = v99;
    v100 = swift_allocObject();
    *(v100 + 16) = v162;
    sub_50DB8(&v166, v100 + 32);
    sub_44BC(&qword_79328, &qword_5A7B0);
    v101 = swift_allocObject();
    *(v101 + 16) = v162;
    *(v101 + 32) = v100;
    v102 = v101 + 32;
    v145 = sub_40F9C(v101);
    swift_setDeallocating();
    sub_47F8(v102, &qword_79330, &qword_5A7B8);
    swift_deallocClassInstance();
  }

  v103 = [objc_opt_self() currentDevice];
  v104 = [v103 userInterfaceIdiom];

  if (v104)
  {
    v144 = _swiftEmptyArrayStorage;
    v105 = v155;
    v106 = v156;
  }

  else
  {
    swift_getKeyPath();
    *&v166 = v40;
    sub_53A28();

    v107 = v40[6];
    p_Kind = v92;
    v168 = &off_70408;
    *&v166 = v40;
    v108 = v156;
    v109 = swift_allocObject();
    v110 = sub_50D68(&v166, v92);
    v144 = &v142;
    v105 = v155;
    __chkstk_darwin(v110);
    v143 = (v105 + 15) & 0xFFFFFFFFFFFFFFF0;
    v111 = (&v142 - v143);
    v112 = v157;
    v157(&v142 - v143);
    v113 = *v111;

    v114 = sub_4F010(0x15u, v107, v113, v109);
    sub_777C(&v166);
    p_Kind = &v108->Kind;
    v168 = &off_6F468;
    *&v166 = v114;
    v115 = swift_allocObject();
    v144 = v115;
    *(v115 + 16) = v162;
    sub_50DB8(&v166, v115 + 32);
    v164 = v92;
    v165 = &off_70408;
    *&v163 = v40;
    v116 = type metadata accessor for ResearchSensorUsageDataListValueItemProvider();
    v117 = swift_allocObject();
    v118 = sub_50D68(&v163, v92);
    v142 = &v142;
    __chkstk_darwin(v118);
    v119 = (&v142 - v143);
    v112(&v142 - v143);
    v120 = *v119;

    v121 = sub_4EC58(v120, v117);
    sub_777C(&v163);
    v164 = v116;
    v165 = &off_6F308;
    *&v163 = v121;
    v122 = swift_allocObject();
    *(v122 + 16) = v162;
    sub_50DB8(&v163, v122 + 32);
    sub_44BC(&qword_79328, &qword_5A7B0);
    v123 = swift_allocObject();
    *(v123 + 16) = xmmword_5A530;
    *(v123 + 32) = v144;
    *(v123 + 40) = v122;
    v144 = sub_40F9C(v123);
    swift_setDeallocating();
    sub_44BC(&qword_79330, &qword_5A7B8);
    v106 = v156;
    swift_arrayDestroy();
    swift_deallocClassInstance();
  }

  swift_getKeyPath();
  *&v166 = v40;
  sub_53A28();

  v124 = v40[6];
  p_Kind = v92;
  v168 = &off_70408;
  *&v166 = v40;
  v125 = swift_allocObject();
  v126 = sub_50D68(&v166, v92);
  __chkstk_darwin(v126);
  v157(&v142 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0));
  v127 = *(&v142 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0));

  v128 = sub_4F010(0x19u, v124, v127, v125);
  sub_777C(&v166);
  p_Kind = &v106->Kind;
  v168 = &off_6F468;
  *&v166 = v128;
  v129 = swift_allocObject();
  *(v129 + 16) = v162;
  sub_50DB8(&v166, v129 + 32);
  sub_44BC(&qword_79328, &qword_5A7B0);
  v130 = swift_allocObject();
  v131 = v152;
  *(v130 + 32) = v153;
  *(v130 + 16) = xmmword_5A550;
  v133 = v150;
  v132 = v151;
  *(v130 + 40) = v131;
  *(v130 + 48) = v132;
  v134 = v149;
  *(v130 + 56) = v133;
  *(v130 + 64) = v134;
  v136 = v147;
  v135 = v148;
  *(v130 + 72) = v154;
  *(v130 + 80) = v135;
  v138 = v145;
  v137 = v146;
  *(v130 + 88) = v136;
  *(v130 + 96) = v137;
  v139 = v144;
  *(v130 + 104) = v138;
  *(v130 + 112) = v139;
  *(v130 + 120) = v129;
  v140 = sub_40F9C(v130);
  swift_setDeallocating();
  sub_44BC(&qword_79330, &qword_5A7B8);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v140;
}

void *sub_4339C()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = [v1 userInterfaceIdiom];

  v3 = [v0 currentDevice];
  v4 = [v3 userInterfaceIdiom];

  v16 = &type metadata for MomentsFeatureFlags;
  v17 = sub_50F04();
  v5 = sub_53A58();
  sub_777C(v15);
  if (v2)
  {
    v6 = ((v4 == &dword_0 + 1) & v5) == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v10 = _swiftEmptyArrayStorage;
  }

  else
  {
    v16 = &type metadata for PrivacyAndSecuritySettingsListItemIdentifier;
    v17 = &off_6E828;
    LOBYTE(v15[0]) = 17;
    sub_44BC(&qword_77F90, &qword_57CD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_57A70;
    sub_50DB8(v15, inited + 32);
    sub_44BC(&qword_79328, &qword_5A7B0);
    v8 = swift_initStackObject();
    *(v8 + 16) = xmmword_57A70;
    *(v8 + 32) = inited;
    v9 = v8 + 32;
    v10 = sub_40F9C(v8);
    swift_setDeallocating();
    sub_47F8(v9, &qword_79330, &qword_5A7B8);
  }

  sub_44BC(&qword_79328, &qword_5A7B0);
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_57A70;
  *(v11 + 32) = v10;
  v12 = v11 + 32;
  v13 = sub_40F9C(v11);
  swift_setDeallocating();
  sub_47F8(v12, &qword_79330, &qword_5A7B8);
  return v13;
}

void *sub_4358C()
{
  v9 = &type metadata for PrivacyAndSecuritySettingsListItemIdentifier;
  v10 = &off_6E828;
  v8[0] = 34;
  sub_44BC(&qword_77F90, &qword_57CD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_57A70;
  sub_50DB8(v8, inited + 32);
  v6 = &type metadata for PrivacyAndSecuritySettingsListItemIdentifier;
  v7 = &off_6E828;
  v5[0] = 35;
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_57A70;
  sub_50DB8(v5, v1 + 32);
  sub_44BC(&qword_79328, &qword_5A7B0);
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_5A530;
  *(v2 + 32) = inited;
  *(v2 + 40) = v1;
  v3 = sub_40F9C(v2);
  swift_setDeallocating();
  sub_44BC(&qword_79330, &qword_5A7B8);
  swift_arrayDestroy();
  return v3;
}

void *sub_436BC(ValueMetadata **a1)
{
  v2 = *a1;
  v50 = v2;
  v51 = &off_70408;
  *&v49 = a1;
  v3 = type metadata accessor for AppPrivacyReportListItemProvider();
  v4 = swift_allocObject();
  v5 = sub_50D68(&v49, v2);
  v6 = *(v2 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v40 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v39 - v40);
  v9 = *(v6 + 16);
  (v9)(v39 - v40);
  v10 = *v8;

  v11 = sub_50408(v10, v4);
  sub_777C(&v49);
  v50 = v3;
  v51 = &off_6F7E0;
  *&v49 = v11;
  sub_44BC(&qword_77F90, &qword_57CD0);
  inited = swift_initStackObject();
  v42 = xmmword_57A70;
  *(inited + 16) = xmmword_57A70;
  v41 = inited;
  sub_50DB8(&v49, inited + 32);
  v47 = v2;
  v48 = &off_70408;
  *&v46 = a1;
  v13 = type metadata accessor for AppleIntelligenceReportListItemProvider();
  v14 = swift_allocObject();
  v15 = sub_50D68(&v46, v2);
  v39[1] = v7;
  __chkstk_darwin(v15);
  v16 = (v39 - v40);
  v17 = (v39 - v40);
  v40 = v9;
  (v9)(v17);
  v18 = *v16;

  v19 = sub_4FECC(v18, v14);
  sub_777C(&v46);
  v47 = v13;
  v48 = &off_6F770;
  *&v46 = v19;
  v20 = swift_initStackObject();
  *(v20 + 16) = v42;
  sub_50DB8(&v46, v20 + 32);
  if (a1[10] == (&loc_4848 + 3) && a1[11] == 0xE200000000000000 || (sub_54BD8() & 1) != 0)
  {
    v44 = v2;
    v45 = &off_70408;
    *&v43 = a1;
    v21 = type metadata accessor for LocationAccessReportListItemProvider();
    v22 = swift_allocObject();
    v23 = sub_50D68(&v43, v2);
    __chkstk_darwin(v23);
    v25 = (v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
    (v40)(v25);
    v26 = *v25;

    v27 = sub_507D8(v26, v22);
    sub_777C(&v43);
    v44 = v21;
    v45 = &off_6F800;
    *&v43 = v27;
    v28 = swift_initStackObject();
    *(v28 + 16) = v42;
    sub_50DB8(&v43, v28 + 32);
    sub_44BC(&qword_79328, &qword_5A7B0);
    v29 = swift_initStackObject();
    *(v29 + 16) = v42;
    *(v29 + 32) = v28;
    v30 = v29 + 32;
    v31 = sub_40F9C(v29);
    swift_setDeallocating();
    sub_47F8(v30, &qword_79330, &qword_5A7B8);
  }

  else
  {
    v31 = _swiftEmptyArrayStorage;
  }

  if ([objc_opt_self() shouldShowDataAndSensors])
  {
    v44 = &type metadata for PrivacyAndSecuritySettingsListItemIdentifier;
    v45 = &off_6E828;
    LOBYTE(v43) = 39;
    v32 = swift_initStackObject();
    *(v32 + 16) = v42;
    sub_50DB8(&v43, v32 + 32);
    sub_44BC(&qword_79328, &qword_5A7B0);
    v33 = swift_initStackObject();
    *(v33 + 16) = v42;
    *(v33 + 32) = v32;
    v34 = v33 + 32;
    v35 = sub_40F9C(v33);
    swift_setDeallocating();
    sub_47F8(v34, &qword_79330, &qword_5A7B8);
  }

  else
  {
    v35 = _swiftEmptyArrayStorage;
  }

  sub_44BC(&qword_79328, &qword_5A7B0);
  v36 = swift_initStackObject();
  *(v36 + 16) = xmmword_5A560;
  *(v36 + 32) = v41;
  *(v36 + 40) = v20;
  *(v36 + 48) = v31;
  *(v36 + 56) = v35;
  v37 = sub_40F9C(v36);
  swift_setDeallocating();
  sub_44BC(&qword_79330, &qword_5A7B8);
  swift_arrayDestroy();
  return v37;
}

void *sub_43BE0(ValueMetadata **a1)
{
  v2 = *a1;
  v52 = v2;
  v53 = &off_70408;
  *&v51 = a1;
  v3 = type metadata accessor for DeveloperModeListItemProvider();
  v4 = swift_allocObject();
  v5 = sub_50D68(&v51, v2);
  __chkstk_darwin(v5);
  v7 = (&v35 - v6);
  v9 = *(v8 + 16);
  v38 = v6;
  v39 = v8 + 16;
  v37 = v9;
  v9(&v35 - v6);
  v10 = *v7;

  v11 = sub_4FA00(v10, v4);
  sub_777C(&v51);
  v52 = v3;
  v53 = &off_6F660;
  *&v51 = v11;
  sub_44BC(&qword_77F90, &qword_57CD0);
  inited = swift_initStackObject();
  v41 = xmmword_57A70;
  *(inited + 16) = xmmword_57A70;
  v40 = inited;
  sub_50DB8(&v51, inited + 32);

  v14 = sub_50BE0(v13);
  v49 = type metadata accessor for InputAccessoriesListItemProvider();
  v50 = &off_6F6A8;
  *&v48 = v14;
  v15 = swift_initStackObject();
  *(v15 + 16) = v41;
  sub_50DB8(&v48, v15 + 32);
  v46 = &type metadata for SoftwareUpdateFeatureFlags;
  v47 = sub_50DD0();
  v16 = sub_53A58();
  sub_777C(&v45);
  if (v16)
  {
    v17 = type metadata accessor for BackgroundSecurityImprovementsListItemProvider();
    v18 = swift_allocObject();
    *(v18 + 16) = 42;
    v46 = v17;
    v47 = &off_6F640;
    *&v45 = v18;
    v19 = swift_initStackObject();
    *(v19 + 16) = v41;
    sub_50DB8(&v45, v19 + 32);
    sub_44BC(&qword_79328, &qword_5A7B0);
    v20 = swift_initStackObject();
    *(v20 + 16) = v41;
    *(v20 + 32) = v19;
    v21 = v20 + 32;
    v36 = sub_40F9C(v20);
    swift_setDeallocating();
    sub_47F8(v21, &qword_79330, &qword_5A7B8);
  }

  else
  {
    v36 = _swiftEmptyArrayStorage;
  }

  v46 = v2;
  v47 = &off_70408;
  *&v45 = a1;
  v22 = type metadata accessor for StolenDeviceProtectionListItemProvider();
  v23 = swift_allocObject();
  v24 = sub_50D68(&v45, v2);
  __chkstk_darwin(v24);
  v25 = (&v35 - v38);
  v37(&v35 - v38);
  v26 = *v25;
  *(v23 + 48) = v2;
  *(v23 + 56) = &off_70408;
  *(v23 + 24) = v26;
  *(v23 + 16) = 43;

  sub_777C(&v45);
  v46 = v22;
  v47 = &off_6F738;
  *&v45 = v23;
  v27 = swift_initStackObject();
  *(v27 + 16) = v41;
  sub_50DB8(&v45, v27 + 32);
  v28 = type metadata accessor for LockdownModeListItemProvider();
  v29 = swift_allocObject();
  *(v29 + 16) = 44;
  v43 = v28;
  v44 = &off_6F718;
  *&v42 = v29;
  v30 = swift_initStackObject();
  *(v30 + 16) = v41;
  sub_50DB8(&v42, v30 + 32);
  sub_44BC(&qword_79328, &qword_5A7B0);
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_5A570;
  *(v31 + 32) = v40;
  v32 = v36;
  *(v31 + 40) = v15;
  *(v31 + 48) = v32;
  *(v31 + 56) = v27;
  *(v31 + 64) = v30;
  v33 = sub_40F9C(v31);
  swift_setDeallocating();
  sub_44BC(&qword_79330, &qword_5A7B8);
  swift_arrayDestroy();
  return v33;
}

char *sub_44070()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_54458();
  v90 = *(v3 - 8);
  v91 = v3;
  __chkstk_darwin(v3);
  v88 = v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_54498();
  v87 = *(v89 - 8);
  __chkstk_darwin(v89);
  v86 = v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_54468();
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v83 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_44BC(&qword_79288, &qword_5A6C8);
  __chkstk_darwin(v7 - 8);
  v72 = v60 - v8;
  v73 = sub_44BC(&qword_79290, &qword_5A6D0);
  v71 = *(v73 - 8);
  __chkstk_darwin(v73);
  v10 = v60 - v9;
  v76 = sub_44BC(&qword_79298, &qword_5A6D8);
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = v60 - v11;
  v80 = sub_44BC(&qword_792A0, &qword_5A6E0);
  v78 = *(v80 - 8);
  __chkstk_darwin(v80);
  v77 = v60 - v12;
  v82 = sub_44BC(&qword_792A8, &qword_5A6E8);
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v79 = v60 - v13;
  *(v0 + 16) = 45;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 56) = 0;
  v14 = sub_54638();
  v15 = MGGetStringAnswer();

  if (v15)
  {
    v16 = sub_54668();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0xE000000000000000;
  }

  *(v1 + 10) = v16;
  *(v1 + 11) = v18;
  v19 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel_appendSettingsNavigationPath;
  v20 = sub_53B88();
  (*(*(v20 - 8) + 56))(&v1[v19], 1, 1, v20);
  v21 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel_clearSettingsNavigationPath;
  v22 = sub_53B68();
  (*(*(v22 - 8) + 56))(&v1[v21], 1, 1, v22);
  v23 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel_invalidationSubject;
  v70 = sub_44BC(&qword_792B0, &qword_5A6F0);
  swift_allocObject();
  *&v1[v23] = sub_53D08();
  *&v1[OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel_cancellables] = &_swiftEmptySetSingleton;
  v1[OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel__communicationSafetySetupHasCompleted] = 0;
  v24 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel_scrollToItemSubject;
  sub_44BC(&qword_792B8, &qword_5A6F8);
  swift_allocObject();
  *&v1[v24] = sub_53D08();
  *&v1[OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel____lazy_storage___sectionModelProviders] = 0;
  sub_53A38();
  type metadata accessor for TCCAuthorizationProvider(0);
  swift_allocObject();
  *(v1 + 6) = sub_20418();
  swift_getKeyPath();
  aBlock[0] = v1;
  sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel, &unk_5A688);
  sub_53A28();

  v25 = *(v1 + 6);
  v93 = v2;
  v94 = &off_70408;
  aBlock[0] = v1;
  sub_89B8(aBlock, &v96);
  swift_beginAccess();
  swift_retain_n();

  sub_4B2A8(&v96, v25 + 48);
  swift_endAccess();
  sub_20810();

  sub_777C(aBlock);
  aBlock[0] = *&v1[OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel_invalidationSubject];
  v61 = sub_54988();
  v62 = v60;
  v26 = *(v61 - 8);
  __chkstk_darwin(v61);
  v28 = v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_54978();
  v69 = objc_opt_self();
  v29 = [v69 mainRunLoop];
  v96 = v29;
  v30 = sub_44BC(&qword_792C0, &qword_5A730);
  v60[1] = v60;
  v68 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v67 = v31;
  v32 = v60 - v31;
  v33 = sub_54968();
  v34 = *(v33 - 8);
  v35 = *(v34 + 56);
  v66 = v33;
  v65 = v35;
  v64 = v34 + 56;
  (v35)(v32, 1, 1);
  v36 = sub_E444(0, &qword_792C8, NSRunLoop_ptr);
  sub_489C(&qword_792D0, &qword_792B0, &qword_5A6F0, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v37 = sub_4B318();
  v70 = v36;
  v63 = v37;
  sub_53D88();
  sub_47F8(v32, &qword_792C0, &qword_5A730);

  (*(v26 + 8))(v28, v61);

  if (qword_76FD0 != -1)
  {
    swift_once();
  }

  v38 = qword_79130;
  aBlock[0] = qword_79130;
  v39 = sub_54858();
  v40 = v72;
  (*(*(v39 - 8) + 56))(v72, 1, 1, v39);
  v62 = sub_E444(0, &qword_775E0, OS_dispatch_queue_ptr);
  sub_489C(&qword_792E0, &qword_79290, &qword_5A6D0, &protocol conformance descriptor for Publishers.Debounce<A, B>);
  sub_4B5E8();
  v41 = v38;
  v42 = v74;
  v43 = v73;
  sub_53D78();
  sub_47F8(v40, &qword_79288, &qword_5A6C8);

  (*(v71 + 8))(v10, v43);
  swift_allocObject();
  swift_weakInit();
  sub_44BC(&qword_792F0, &qword_5A738);
  sub_489C(&qword_792F8, &qword_79298, &qword_5A6D8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v44 = v77;
  v45 = v76;
  sub_53D68();

  (*(v75 + 8))(v42, v45);
  v46 = [v69 mainRunLoop];
  aBlock[0] = v46;
  __chkstk_darwin(v46);
  v47 = v60 - v67;
  v65(v60 - v67, 1, 1, v66);
  sub_489C(&qword_79300, &qword_792A0, &qword_5A6E0, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  v48 = v79;
  v49 = v80;
  sub_53D78();
  sub_47F8(v47, &qword_792C0, &qword_5A730);

  (*(v78 + 8))(v44, v49);
  swift_getKeyPath();
  aBlock[0] = v1;
  sub_489C(&qword_79308, &qword_792A8, &qword_5A6E8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v50 = v82;
  sub_53DA8();

  (*(v81 + 8))(v48, v50);
  swift_beginAccess();
  sub_53CB8();
  swift_endAccess();

  v51 = v84;
  v52 = v83;
  v53 = v85;
  (*(v84 + 104))(v83, enum case for DispatchQoS.QoSClass.userInitiated(_:), v85);
  v54 = sub_548A8();
  (*(v51 + 8))(v52, v53);
  v94 = sub_4B6E4;
  v95 = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_51A90;
  v93 = &unk_70450;
  v55 = _Block_copy(aBlock);

  v56 = v86;
  sub_54478();
  v96 = _swiftEmptyArrayStorage;
  sub_4B704(&qword_775E8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_44BC(&qword_775F0, &qword_574F8);
  sub_489C(&qword_775F8, &qword_775F0, &qword_574F8, &protocol conformance descriptor for [A]);
  v57 = v88;
  v58 = v91;
  sub_549E8();
  sub_54888();
  _Block_release(v55);

  (*(v90 + 8))(v57, v58);
  (*(v87 + 8))(v56, v89);

  return v1;
}

uint64_t sub_45018@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  if (qword_76FF0 != -1)
  {
    swift_once();
  }

  v6 = sub_53C38();
  sub_7700(v6, qword_7BC30);

  v7 = sub_53C18();
  v8 = sub_54828();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v45[0] = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_18710(v5, v4, v45);
    sub_777C(v10);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = sub_53C18();
    v14 = sub_54828();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_0, v13, v14, "Requesting new snapshot for data model due to invalidation.", v15, 2u);
    }

    v16 = sub_40714();
    v17 = *(v16 + 16);
    if (v17)
    {
      v32 = a3;
      v18 = _swiftEmptyArrayStorage;
      v19 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel__communicationSafetySetupHasCompleted;
      v20 = v16 + 32;
      do
      {
        sub_89B8(v20, v42);
        sub_89B8(v42, &v37);
        sub_44BC(&qword_79310, &qword_5A798);
        type metadata accessor for SensitiveContentWarningListSectionModelProvider();
        if (swift_dynamicCast() && (, swift_getKeyPath(), *&v37 = v12, sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel, &unk_5A688), sub_53A28(), , (*(v12 + v19) & 1) == 0))
        {
          sub_777C(v42);
        }

        else
        {
          v21 = v43;
          v22 = v44;
          sub_7738(v42, v43);
          (*(v22 + 16))(v45, v21, v22);
          v39 = v45[2];
          v40 = v45[3];
          v41 = v46;
          v37 = v45[0];
          v38 = v45[1];
          sub_777C(v42);
          if (*(&v46 + 1))
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v18 = sub_23C20(0, *(v18 + 2) + 1, 1, v18);
            }

            v24 = *(v18 + 2);
            v23 = *(v18 + 3);
            if (v24 >= v23 >> 1)
            {
              v18 = sub_23C20((v23 > 1), v24 + 1, 1, v18);
            }

            v35 = v40;
            v36 = v41;
            v33 = v38;
            v34 = v39;
            v25 = v37;
            *(v18 + 2) = v24 + 1;
            v26 = &v18[80 * v24];
            *(v26 + 2) = v25;
            *(v26 + 5) = v35;
            *(v26 + 6) = v36;
            *(v26 + 3) = v33;
            *(v26 + 4) = v34;
          }
        }

        v20 += 40;
        --v17;
      }

      while (v17);

      a3 = v32;
    }

    else
    {

      v18 = _swiftEmptyArrayStorage;
    }

    v27 = sub_C50C(v18);
    v29 = v28;
    v31 = v30;

    *a3 = v27;
    a3[1] = v29;
    a3[2] = v31;
  }

  else
  {
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 1;
  }

  return result;
}

uint64_t sub_45470(uint64_t a1)
{
  v1 = sub_54458();
  v12 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_54498();
  v4 = *(v11 - 8);
  __chkstk_darwin(v11);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [objc_opt_self() initializeNudityDetection];
  sub_E444(0, &qword_775E0, OS_dispatch_queue_ptr);
  v7 = sub_54878();
  v8 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_4B74C;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_51A90;
  aBlock[3] = &unk_70478;
  v9 = _Block_copy(aBlock);

  sub_54478();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_4B704(&qword_775E8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_44BC(&qword_775F0, &qword_574F8);
  sub_489C(&qword_775F8, &qword_775F0, &qword_574F8, &protocol conformance descriptor for [A]);
  sub_549E8();
  sub_54888();
  _Block_release(v9);

  (*(v12 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v11);
}

uint64_t sub_45780(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_3FACC(0, 0, 0);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel__communicationSafetySetupHasCompleted) == 1)
    {
      *(result + OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel__communicationSafetySetupHasCompleted) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel, &unk_5A688);
      sub_53A18();
    }
  }

  return result;
}

uint64_t sub_4590C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

char *sub_45950()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel_cancellables;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if ((v3 & 0xC000000000000001) != 0)
  {

    sub_54A08();
    sub_53CD8();
    sub_4B704(&qword_777C0, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
    result = sub_547E8();
    v3 = v21;
    v5 = v22;
    v6 = v23;
    v7 = v24;
    v8 = v25;
  }

  else
  {
    v9 = -1 << *(v3 + 32);
    v5 = v3 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v3 + 56);

    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  if (v3 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v13 = v7;
    v14 = v8;
    v15 = v7;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v3 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    if (!v17)
    {
LABEL_18:
      sub_11288(v3);
      *(v1 + v2) = &_swiftEmptySetSingleton;

      sub_4B7F0(v1[3], v1[4], v1[5]);

      sub_515E4(v1[8], v1[9]);

      sub_47F8(v1 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel_appendSettingsNavigationPath, &qword_790E0, &qword_5A4E0);
      sub_47F8(v1 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel_clearSettingsNavigationPath, &qword_790D8, &unk_5A8E0);

      v18 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel___observationRegistrar;
      v19 = sub_53A48();
      (*(*(v19 - 8) + 8))(v1 + v18, v19);
      return v1;
    }

    while (1)
    {
      sub_53CC8();

      v7 = v15;
      v8 = v16;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_54A28())
      {
        sub_53CD8();
        swift_dynamicCast();
        v15 = v7;
        v16 = v8;
        if (v20)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_18;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}