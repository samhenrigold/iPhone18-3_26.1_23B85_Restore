unint64_t sub_10002551C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10006D560;
  v6._object = a2;
  v4 = sub_10004C834(v3, v6);

  if (v4 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100025568(uint64_t a1)
{
  v2 = sub_10004C554();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004C5A4();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10004C754();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10004C564();
  __chkstk_darwin(v8 - 8);
  sub_1000057AC(&qword_100070E28, qword_100050D70);
  sub_10004C744();
  sub_10004C594();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_10004C574();
  sub_100005D70(&qword_100070EA0, &unk_100070EA8, &qword_100051200, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  sub_100022720();
  v9 = sub_10004C504();
  sub_1000057AC(&qword_100070E98, &qword_1000511E8);
  sub_10004C0F4();
  memset(v11, 0, sizeof(v11));
  v12 = 0;

  sub_10004C0E4();
  sub_10004C0A4();
  *&v11[0] = a1;

  swift_unknownObjectRetain();
  sub_10004C094();

  swift_unknownObjectRelease();
  return v9;
}

uint64_t sub_1000258AC()
{
  v0 = sub_10004C494();
  v1 = *(v0 - 8);
  v52 = v0;
  v53 = v1;
  __chkstk_darwin(v0);
  v51 = v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000057AC(&unk_100070570, &unk_10004D430);
  v4 = __chkstk_darwin(v3 - 8);
  v50 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v48 = v34 - v6;
  v7 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v7 - 8);
  v49 = v34 - v8;
  v9 = sub_10004C554();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10004C5A4();
  __chkstk_darwin(v13 - 8);
  v14 = sub_10004C754();
  __chkstk_darwin(v14 - 8);
  v15 = sub_10004C564();
  v46 = v15;
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v34[1] = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1000057AC(&qword_100070E88, &qword_1000511D8);
  sub_10004C744();
  sub_10004C594();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v10 + 104);
  v35 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v36 = v9;
  v19(v12, enum case for LocalizedStringResource.BundleDescription.main(_:), v9);
  v37 = v19;
  v38 = v10 + 104;
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v19(v12, v18, v9);
  v20 = v49;
  sub_10004C574();
  v21 = *(v16 + 56);
  v45 = v16 + 56;
  v47 = v21;
  v21(v20, 0, 1, v15);
  v22 = sub_10004C1C4();
  v54 = 0;
  v55 = 0;
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  v40 = v24;
  v41 = v23 + 56;
  v25 = v48;
  v24(v48, 1, 1, v22);
  v24(v50, 1, 1, v22);
  v42 = enum case for InputConnectionBehavior.default(_:);
  v26 = *(v53 + 104);
  v53 += 104;
  v43 = v26;
  v26(v51);
  sub_1000229E0();
  v27 = v25;
  v44 = sub_10004C224();
  v39 = sub_1000057AC(&qword_100070E90, &qword_1000511E0);
  sub_10004C744();
  sub_10004C594();
  v28 = v35;
  v29 = v36;
  v30 = v37;
  v37(v12, v35, v36);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v30(v12, v28, v29);
  v31 = v49;
  sub_10004C574();
  v47(v31, 0, 1, v46);
  LOBYTE(v54) = 11;
  v32 = v40;
  v40(v27, 1, 1, v22);
  v32(v50, 1, 1, v22);
  v43(v51, v42, v52);
  sub_100022720();
  sub_10004C214();
  return v44;
}

unint64_t sub_100026048()
{
  result = qword_100070ED8;
  if (!qword_100070ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070ED8);
  }

  return result;
}

uint64_t sub_10002609C()
{
  sub_100002C4C(&qword_100070ED0, &qword_1000507C0);
  sub_100005D70(&qword_100070EE0, &qword_100070ED0, &qword_1000507C0, &protocol conformance descriptor for ControlPicker<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10002615C(uint64_t a1)
{
  v26 = a1;
  v1 = sub_1000057AC(&qword_100071048, &qword_100051670);
  v2 = *(v1 - 8);
  v37 = v1;
  v38 = v2;
  __chkstk_darwin(v1);
  v34 = &v23 - v3;
  v4 = sub_10004C254();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000057AC(&qword_100071050, &qword_100051678);
  __chkstk_darwin(v8);
  v32 = sub_10002DC68();
  sub_10004C314();
  v39._countAndFlagsBits = 0xD00000000000001ELL;
  v39._object = 0x800000010005D490;
  sub_10004C304(v39);
  swift_getKeyPath();
  v25 = sub_10002E054();
  sub_10004C244();

  sub_10004C2F4();

  v40._countAndFlagsBits = 544106784;
  v40._object = 0xE400000000000000;
  sub_10004C304(v40);
  v9 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v10 = *(v5 + 104);
  v30 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v33 = v4;
  v10(v7, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v4);
  v28 = v5 + 104;
  v29 = v10;
  sub_10004C2E4();
  v11 = *(v5 + 8);
  v36 = v5 + 8;
  v11(v7, v4);
  v12 = v11;
  v27 = v11;
  v41._countAndFlagsBits = 0;
  v41._object = 0xE000000000000000;
  sub_10004C304(v41);
  v13 = v34;
  sub_10004C324();
  v31 = sub_10004C274();
  v14 = *(v38 + 8);
  v38 += 8;
  v35 = v14;
  v14(v13, v37);
  sub_10004C314();
  v42._countAndFlagsBits = 2125385;
  v42._object = 0xE300000000000000;
  sub_10004C304(v42);
  v15 = v33;
  v10(v7, v9, v33);
  sub_10004C2E4();
  v12(v7, v15);
  v43._countAndFlagsBits = 0x20776F6853202CLL;
  v43._object = 0xE700000000000000;
  sub_10004C304(v43);
  swift_getKeyPath();
  sub_10004C244();

  sub_10004C2F4();

  v44._object = 0x800000010005D4B0;
  v44._countAndFlagsBits = 0xD000000000000013;
  sub_10004C304(v44);
  v16 = v34;
  sub_10004C324();
  v24 = sub_10004C274();
  v35(v16, v37);
  sub_10004C314();
  v45._countAndFlagsBits = 0x7420656C62616E45;
  v45._object = 0xEB00000000206568;
  sub_10004C304(v45);
  swift_getKeyPath();
  sub_10004C244();

  sub_10004C2F4();

  v46._countAndFlagsBits = 0xD000000000000018;
  v46._object = 0x800000010005D4D0;
  sub_10004C304(v46);
  v17 = v33;
  v29(v7, v30, v33);
  sub_10004C2E4();
  v27(v7, v17);
  v47._countAndFlagsBits = 0;
  v47._object = 0xE000000000000000;
  sub_10004C304(v47);
  sub_10004C324();
  v18 = sub_10004C274();
  v35(v16, v37);
  sub_1000057AC(&qword_100071058, &unk_100051680);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100050820;
  v20 = v24;
  *(v19 + 32) = v31;
  *(v19 + 40) = v20;
  *(v19 + 48) = v18;
  v21 = sub_10004C264();

  return v21;
}

uint64_t sub_1000267A8()
{
  v18 = sub_10004C294();
  v17 = sub_10004C294();
  v16 = sub_10004C294();
  v15 = sub_10004C294();
  v14 = sub_10004C294();
  v13 = sub_10004C294();
  v12 = sub_10004C294();
  v0 = sub_10004C294();
  v1 = sub_10004C294();
  v2 = sub_10004C294();
  v3 = sub_10004C294();
  v4 = sub_10004C294();
  v5 = sub_10004C294();
  v6 = sub_10004C294();
  v7 = sub_10004C294();
  v8 = sub_10004C294();
  sub_1000057AC(&qword_100070F28, &qword_1000513A8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000512C0;
  *(v9 + 32) = v18;
  *(v9 + 40) = v17;
  *(v9 + 48) = v16;
  *(v9 + 56) = v15;
  *(v9 + 64) = v14;
  *(v9 + 72) = v13;
  *(v9 + 80) = v12;
  *(v9 + 88) = v0;
  *(v9 + 96) = v1;
  *(v9 + 104) = v2;
  *(v9 + 112) = v3;
  *(v9 + 120) = v4;
  *(v9 + 128) = v5;
  *(v9 + 136) = v6;
  *(v9 + 144) = v7;
  *(v9 + 152) = v8;
  v10 = sub_10004C284();

  return v10;
}

uint64_t sub_100026A00()
{
  v21 = sub_1000057AC(&qword_100071048, &qword_100051670);
  v19 = *(v21 - 8);
  __chkstk_darwin(v21);
  v1 = &v14 - v0;
  v2 = sub_10004C254();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000057AC(&qword_100071050, &qword_100051678);
  __chkstk_darwin(v6);
  sub_10002DC68();
  sub_10004C314();
  v22._countAndFlagsBits = 0xD000000000000022;
  v22._object = 0x800000010005D420;
  sub_10004C304(v22);
  v18 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v17 = *(v3 + 104);
  v15 = v2;
  v17(v5);
  sub_10004C2E4();
  v16 = *(v3 + 8);
  v16(v5, v2);
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  sub_10004C304(v23);
  sub_10004C324();
  v7 = sub_10004C274();
  v19 = *(v19 + 8);
  v20 = v7;
  v8 = v21;
  (v19)(v1, v21);
  sub_10004C314();
  v24._object = 0x800000010005D450;
  v24._countAndFlagsBits = 0xD00000000000001FLL;
  sub_10004C304(v24);
  v9 = v15;
  (v17)(v5, v18, v15);
  sub_10004C2E4();
  v16(v5, v9);
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  sub_10004C304(v25);
  sub_10004C324();
  v10 = sub_10004C274();
  (v19)(v1, v8);
  sub_1000057AC(&qword_100071058, &unk_100051680);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10004EA40;
  *(v11 + 32) = v20;
  *(v11 + 40) = v10;
  v12 = sub_10004C264();

  return v12;
}

uint64_t sub_100026E14()
{
  v21 = sub_1000057AC(&qword_100071028, &qword_100051630);
  v19 = *(v21 - 8);
  __chkstk_darwin(v21);
  v1 = &v14 - v0;
  v2 = sub_10004C254();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000057AC(&qword_100071030, &qword_100051638);
  __chkstk_darwin(v6);
  sub_10000E5F4();
  sub_10004C314();
  v22._object = 0x800000010005D3E0;
  v22._countAndFlagsBits = 0xD000000000000015;
  sub_10004C304(v22);
  v18 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v17 = *(v3 + 104);
  v15 = v2;
  v17(v5);
  sub_10004C2E4();
  v16 = *(v3 + 8);
  v16(v5, v2);
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  sub_10004C304(v23);
  sub_10004C324();
  v7 = sub_10004C274();
  v19 = *(v19 + 8);
  v20 = v7;
  v8 = v21;
  (v19)(v1, v21);
  sub_10004C314();
  v24._countAndFlagsBits = 0xD000000000000017;
  v24._object = 0x800000010005D400;
  sub_10004C304(v24);
  v9 = v15;
  (v17)(v5, v18, v15);
  sub_10004C2E4();
  v16(v5, v9);
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  sub_10004C304(v25);
  sub_10004C324();
  v10 = sub_10004C274();
  (v19)(v1, v8);
  sub_1000057AC(&qword_100071038, &qword_100051640);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10004EA40;
  *(v11 + 32) = v20;
  *(v11 + 40) = v10;
  v12 = sub_10004C264();

  return v12;
}

uint64_t sub_100027228()
{
  v21 = sub_1000057AC(&qword_100071028, &qword_100051630);
  v19 = *(v21 - 8);
  __chkstk_darwin(v21);
  v1 = &v14 - v0;
  v2 = sub_10004C254();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000057AC(&qword_100071030, &qword_100051638);
  __chkstk_darwin(v6);
  sub_10000E5F4();
  sub_10004C314();
  v22._object = 0x800000010005D3A0;
  v22._countAndFlagsBits = 0xD000000000000015;
  sub_10004C304(v22);
  v18 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v17 = *(v3 + 104);
  v15 = v2;
  v17(v5);
  sub_10004C2E4();
  v16 = *(v3 + 8);
  v16(v5, v2);
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  sub_10004C304(v23);
  sub_10004C324();
  v7 = sub_10004C274();
  v19 = *(v19 + 8);
  v20 = v7;
  v8 = v21;
  (v19)(v1, v21);
  sub_10004C314();
  v24._countAndFlagsBits = 0xD000000000000018;
  v24._object = 0x800000010005D3C0;
  sub_10004C304(v24);
  v9 = v15;
  (v17)(v5, v18, v15);
  sub_10004C2E4();
  v16(v5, v9);
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  sub_10004C304(v25);
  sub_10004C324();
  v10 = sub_10004C274();
  (v19)(v1, v8);
  sub_1000057AC(&qword_100071038, &qword_100051640);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10004EA40;
  *(v11 + 32) = v20;
  *(v11 + 40) = v10;
  v12 = sub_10004C264();

  return v12;
}

uint64_t sub_100027640()
{
  v0 = sub_1000057AC(&qword_100071010, &qword_1000515F0);
  v1 = *(v0 - 8);
  v26 = v0;
  v27 = v1;
  __chkstk_darwin(v0);
  v3 = &v18 - v2;
  v4 = sub_10004C254();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000057AC(&qword_100071018, &qword_1000515F8);
  __chkstk_darwin(v8);
  sub_100016850();
  sub_10004C314();
  v28._countAndFlagsBits = 544499027;
  v28._object = 0xE400000000000000;
  sub_10004C304(v28);
  v23 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v25 = *(v5 + 104);
  v25(v7);
  sub_10004C2E4();
  v9 = *(v5 + 8);
  v20 = v5 + 8;
  v24 = v9;
  v9(v7, v4);
  v29._object = 0x800000010005D320;
  v29._countAndFlagsBits = 0xD00000000000001CLL;
  sub_10004C304(v29);
  sub_10004C324();
  v22 = sub_10004C274();
  v10 = v26;
  v19 = *(v27 + 8);
  v27 += 8;
  v19(v3, v26);
  sub_10004C314();
  v30._countAndFlagsBits = 0xD000000000000023;
  v30._object = 0x800000010005D340;
  sub_10004C304(v30);
  (v25)(v7, v23, v4);
  sub_10004C2E4();
  v24(v7, v4);
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  sub_10004C304(v31);
  sub_10004C324();
  v21 = sub_10004C274();
  v11 = v10;
  v12 = v19;
  v19(v3, v11);
  sub_10004C314();
  v32._countAndFlagsBits = 0xD000000000000024;
  v32._object = 0x800000010005D370;
  sub_10004C304(v32);
  (v25)(v7, v23, v4);
  sub_10004C2E4();
  v24(v7, v4);
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  sub_10004C304(v33);
  sub_10004C324();
  v13 = sub_10004C274();
  v12(v3, v26);
  sub_1000057AC(&qword_100071020, &qword_100051600);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100050820;
  v15 = v21;
  *(v14 + 32) = v22;
  *(v14 + 40) = v15;
  *(v14 + 48) = v13;
  v16 = sub_10004C264();

  return v16;
}

uint64_t sub_100027B0C()
{
  v0 = sub_1000057AC(&qword_100071010, &qword_1000515F0);
  v1 = *(v0 - 8);
  v26 = v0;
  v27 = v1;
  __chkstk_darwin(v0);
  v3 = &v18 - v2;
  v4 = sub_10004C254();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000057AC(&qword_100071018, &qword_1000515F8);
  __chkstk_darwin(v8);
  sub_100016850();
  sub_10004C314();
  v28._countAndFlagsBits = 544499027;
  v28._object = 0xE400000000000000;
  sub_10004C304(v28);
  v23 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v25 = *(v5 + 104);
  v25(v7);
  sub_10004C2E4();
  v9 = *(v5 + 8);
  v20 = v5 + 8;
  v24 = v9;
  v9(v7, v4);
  v29._object = 0x800000010005D290;
  v29._countAndFlagsBits = 0xD000000000000020;
  sub_10004C304(v29);
  sub_10004C324();
  v22 = sub_10004C274();
  v10 = v26;
  v19 = *(v27 + 8);
  v27 += 8;
  v19(v3, v26);
  sub_10004C314();
  v30._countAndFlagsBits = 0xD000000000000027;
  v30._object = 0x800000010005D2C0;
  sub_10004C304(v30);
  (v25)(v7, v23, v4);
  sub_10004C2E4();
  v24(v7, v4);
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  sub_10004C304(v31);
  sub_10004C324();
  v21 = sub_10004C274();
  v11 = v10;
  v12 = v19;
  v19(v3, v11);
  sub_10004C314();
  v32._countAndFlagsBits = 0xD000000000000025;
  v32._object = 0x800000010005D2F0;
  sub_10004C304(v32);
  (v25)(v7, v23, v4);
  sub_10004C2E4();
  v24(v7, v4);
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  sub_10004C304(v33);
  sub_10004C324();
  v13 = sub_10004C274();
  v12(v3, v26);
  sub_1000057AC(&qword_100071020, &qword_100051600);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100050820;
  v15 = v21;
  *(v14 + 32) = v22;
  *(v14 + 40) = v15;
  *(v14 + 48) = v13;
  v16 = sub_10004C264();

  return v16;
}

uint64_t sub_100027FE8()
{
  v0 = sub_1000057AC(&qword_100070FF8, &qword_1000515B0);
  v1 = *(v0 - 8);
  v26 = v0;
  v27 = v1;
  __chkstk_darwin(v0);
  v3 = &v18 - v2;
  v4 = sub_10004C254();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000057AC(&qword_100071000, &qword_1000515B8);
  __chkstk_darwin(v8);
  sub_10002DCBC();
  sub_10004C314();
  v28._object = 0x800000010005D220;
  v28._countAndFlagsBits = 0xD000000000000019;
  sub_10004C304(v28);
  v23 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v20 = *(v5 + 104);
  v20(v7);
  sub_10004C2E4();
  v24 = *(v5 + 8);
  v25 = v5 + 8;
  v24(v7, v4);
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  sub_10004C304(v29);
  sub_10004C324();
  v22 = sub_10004C274();
  v9 = v26;
  v19 = *(v27 + 8);
  v27 += 8;
  v19(v3, v26);
  sub_10004C314();
  v30._countAndFlagsBits = 0xD00000000000001BLL;
  v30._object = 0x800000010005D240;
  sub_10004C304(v30);
  v10 = v20;
  (v20)(v7, v23, v4);
  sub_10004C2E4();
  v24(v7, v4);
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  sub_10004C304(v31);
  sub_10004C324();
  v21 = sub_10004C274();
  v11 = v9;
  v12 = v19;
  v19(v3, v11);
  sub_10004C314();
  v32._countAndFlagsBits = 0xD000000000000023;
  v32._object = 0x800000010005D260;
  sub_10004C304(v32);
  (v10)(v7, v23, v4);
  sub_10004C2E4();
  v24(v7, v4);
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  sub_10004C304(v33);
  sub_10004C324();
  v13 = sub_10004C274();
  v12(v3, v26);
  sub_1000057AC(&qword_100071008, &qword_1000515C0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100050820;
  v15 = v21;
  *(v14 + 32) = v22;
  *(v14 + 40) = v15;
  *(v14 + 48) = v13;
  v16 = sub_10004C264();

  return v16;
}

uint64_t sub_1000284B0()
{
  v0 = sub_1000057AC(&qword_100070FF8, &qword_1000515B0);
  v1 = *(v0 - 8);
  v26 = v0;
  v27 = v1;
  __chkstk_darwin(v0);
  v3 = &v18 - v2;
  v4 = sub_10004C254();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000057AC(&qword_100071000, &qword_1000515B8);
  __chkstk_darwin(v8);
  sub_10002DCBC();
  sub_10004C314();
  v28._object = 0x800000010005D1B0;
  v28._countAndFlagsBits = 0xD000000000000019;
  sub_10004C304(v28);
  v23 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v20 = *(v5 + 104);
  v20(v7);
  sub_10004C2E4();
  v24 = *(v5 + 8);
  v25 = v5 + 8;
  v24(v7, v4);
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  sub_10004C304(v29);
  sub_10004C324();
  v22 = sub_10004C274();
  v9 = v26;
  v19 = *(v27 + 8);
  v27 += 8;
  v19(v3, v26);
  sub_10004C314();
  v30._countAndFlagsBits = 0xD00000000000001CLL;
  v30._object = 0x800000010005D1D0;
  sub_10004C304(v30);
  v10 = v20;
  (v20)(v7, v23, v4);
  sub_10004C2E4();
  v24(v7, v4);
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  sub_10004C304(v31);
  sub_10004C324();
  v21 = sub_10004C274();
  v11 = v9;
  v12 = v19;
  v19(v3, v11);
  sub_10004C314();
  v32._countAndFlagsBits = 0xD000000000000029;
  v32._object = 0x800000010005D1F0;
  sub_10004C304(v32);
  (v10)(v7, v23, v4);
  sub_10004C2E4();
  v24(v7, v4);
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  sub_10004C304(v33);
  sub_10004C324();
  v13 = sub_10004C274();
  v12(v3, v26);
  sub_1000057AC(&qword_100071008, &qword_1000515C0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100050820;
  v15 = v21;
  *(v14 + 32) = v22;
  *(v14 + 40) = v15;
  *(v14 + 48) = v13;
  v16 = sub_10004C264();

  return v16;
}

uint64_t sub_100028978(uint64_t a1)
{
  v22 = a1;
  v1 = sub_1000057AC(&qword_100070FE0, &qword_100051570);
  v2 = *(v1 - 8);
  v24 = v1;
  v25 = v2;
  __chkstk_darwin(v1);
  v23 = v17 - v3;
  v4 = sub_10004C254();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000057AC(&qword_100070FE8, &qword_100051578);
  __chkstk_darwin(v8);
  sub_1000137FC();
  sub_10004C314();
  v26._countAndFlagsBits = 0x20636E7953;
  v26._object = 0xE500000000000000;
  sub_10004C304(v26);
  swift_getKeyPath();
  v21 = sub_100012728();
  sub_10004C244();

  sub_10004C2F4();

  v27._countAndFlagsBits = 544106784;
  v27._object = 0xE400000000000000;
  sub_10004C304(v27);
  v19 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v18 = *(v5 + 104);
  v18(v7);
  sub_10004C2E4();
  v9 = *(v5 + 8);
  v17[1] = v5 + 8;
  v9(v7, v4);
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  sub_10004C304(v28);
  v10 = v23;
  sub_10004C324();
  v20 = sub_10004C274();
  v11 = *(v25 + 8);
  v25 += 8;
  v11(v10, v24);
  sub_10004C314();
  v29._countAndFlagsBits = 544499027;
  v29._object = 0xE400000000000000;
  sub_10004C304(v29);
  (v18)(v7, v19, v4);
  sub_10004C2E4();
  v9(v7, v4);
  v30._countAndFlagsBits = 0x636E7973206F7420;
  v30._object = 0xE900000000000020;
  sub_10004C304(v30);
  swift_getKeyPath();
  sub_10004C244();

  sub_10004C2F4();

  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  sub_10004C304(v31);
  v12 = v23;
  sub_10004C324();
  v13 = sub_10004C274();
  v11(v12, v24);
  sub_1000057AC(&qword_100070FF0, &qword_100051580);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10004EA40;
  *(v14 + 32) = v20;
  *(v14 + 40) = v13;
  v15 = sub_10004C264();

  return v15;
}

uint64_t sub_100028E2C()
{
  v0 = sub_10004C294();
  v1 = sub_10004C294();
  v2 = sub_10004C294();
  v3 = sub_10004C294();
  v4 = sub_10004C294();
  sub_1000057AC(&qword_100070F28, &qword_1000513A8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10004EA30;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = sub_10004C284();

  return v6;
}

uint64_t sub_100028F30(uint64_t a1)
{
  v20 = a1;
  v1 = sub_1000057AC(&qword_100070FC8, &qword_100051530);
  v2 = *(v1 - 8);
  v23 = v1;
  v24 = v2;
  __chkstk_darwin(v1);
  v4 = v16 - v3;
  v21 = sub_10004C254();
  v5 = *(v21 - 8);
  __chkstk_darwin(v21);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000057AC(&qword_100070FD0, &qword_100051538);
  __chkstk_darwin(v8);
  sub_10002DD10();
  sub_10004C314();
  v25._countAndFlagsBits = 0xD000000000000027;
  v25._object = 0x800000010005D160;
  sub_10004C304(v25);
  swift_getKeyPath();
  sub_10002DF8C();
  sub_10004C244();

  sub_10004C2F4();

  v26._countAndFlagsBits = 544106784;
  v26._object = 0xE400000000000000;
  sub_10004C304(v26);
  v19 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v18 = *(v5 + 104);
  v9 = v21;
  v18(v7);
  sub_10004C2E4();
  v10 = *(v5 + 8);
  v16[1] = v5 + 8;
  v17 = v10;
  v10(v7, v9);
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  sub_10004C304(v27);
  sub_10004C324();
  v22 = sub_10004C274();
  v11 = *(v24 + 8);
  v24 += 8;
  v16[0] = v11;
  v11(v4, v23);
  sub_10004C314();
  v28._countAndFlagsBits = 0x6D20796669746F4ELL;
  v28._object = 0xEA00000000002065;
  sub_10004C304(v28);
  swift_getKeyPath();
  sub_10004C244();

  sub_10004C2F4();

  v29._object = 0x800000010005D190;
  v29._countAndFlagsBits = 0xD000000000000012;
  sub_10004C304(v29);
  (v18)(v7, v19, v9);
  sub_10004C2E4();
  v17(v7, v9);
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  sub_10004C304(v30);
  sub_10004C324();
  v12 = sub_10004C274();
  (v16[0])(v4, v23);
  sub_1000057AC(&qword_100070FD8, &qword_100051540);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10004EA40;
  *(v13 + 32) = v22;
  *(v13 + 40) = v12;
  v14 = sub_10004C264();

  return v14;
}

uint64_t sub_100029400()
{
  v0 = sub_10004C294();
  v1 = sub_10004C294();
  v2 = sub_10004C294();
  v3 = sub_10004C294();
  sub_1000057AC(&qword_100070F28, &qword_1000513A8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10004FD40;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = sub_10004C284();

  return v5;
}

uint64_t sub_100029500()
{
  v21 = sub_1000057AC(&qword_100070FC8, &qword_100051530);
  v19 = *(v21 - 8);
  __chkstk_darwin(v21);
  v1 = &v14 - v0;
  v2 = sub_10004C254();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000057AC(&qword_100070FD0, &qword_100051538);
  __chkstk_darwin(v6);
  sub_10002DD10();
  sub_10004C314();
  v22._countAndFlagsBits = 0xD00000000000002BLL;
  v22._object = 0x800000010005D100;
  sub_10004C304(v22);
  v18 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v17 = *(v3 + 104);
  v15 = v2;
  v17(v5);
  sub_10004C2E4();
  v16 = *(v3 + 8);
  v16(v5, v2);
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  sub_10004C304(v23);
  sub_10004C324();
  v7 = sub_10004C274();
  v19 = *(v19 + 8);
  v20 = v7;
  v8 = v21;
  (v19)(v1, v21);
  sub_10004C314();
  v24._object = 0x800000010005D130;
  v24._countAndFlagsBits = 0xD000000000000021;
  sub_10004C304(v24);
  v9 = v15;
  (v17)(v5, v18, v15);
  sub_10004C2E4();
  v16(v5, v9);
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  sub_10004C304(v25);
  sub_10004C324();
  v10 = sub_10004C274();
  (v19)(v1, v8);
  sub_1000057AC(&qword_100070FD8, &qword_100051540);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10004EA40;
  *(v11 + 32) = v20;
  *(v11 + 40) = v10;
  v12 = sub_10004C264();

  return v12;
}

uint64_t sub_100029908(uint64_t a1)
{
  v20 = a1;
  v1 = sub_1000057AC(&qword_100070FB0, &qword_1000514F0);
  v2 = *(v1 - 8);
  v23 = v1;
  v24 = v2;
  __chkstk_darwin(v1);
  v4 = v16 - v3;
  v21 = sub_10004C254();
  v5 = *(v21 - 8);
  __chkstk_darwin(v21);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000057AC(&qword_100070FB8, &qword_1000514F8);
  __chkstk_darwin(v8);
  sub_100023A04();
  sub_10004C314();
  v25._object = 0x800000010005D0D0;
  v25._countAndFlagsBits = 0xD000000000000024;
  sub_10004C304(v25);
  swift_getKeyPath();
  sub_100022610();
  sub_10004C244();

  sub_10004C2F4();

  v26._countAndFlagsBits = 544106784;
  v26._object = 0xE400000000000000;
  sub_10004C304(v26);
  v19 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v18 = *(v5 + 104);
  v9 = v21;
  v18(v7);
  sub_10004C2E4();
  v10 = *(v5 + 8);
  v16[1] = v5 + 8;
  v17 = v10;
  v10(v7, v9);
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  sub_10004C304(v27);
  sub_10004C324();
  v22 = sub_10004C274();
  v11 = *(v24 + 8);
  v24 += 8;
  v16[0] = v11;
  v11(v4, v23);
  sub_10004C314();
  v28._countAndFlagsBits = 0x6D20796669746F4ELL;
  v28._object = 0xEA00000000002065;
  sub_10004C304(v28);
  swift_getKeyPath();
  sub_10004C244();

  sub_10004C2F4();

  v29._countAndFlagsBits = 0x65766520726F6620;
  v29._object = 0xEF206E692073746ELL;
  sub_10004C304(v29);
  (v18)(v7, v19, v9);
  sub_10004C2E4();
  v17(v7, v9);
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  sub_10004C304(v30);
  sub_10004C324();
  v12 = sub_10004C274();
  (v16[0])(v4, v23);
  sub_1000057AC(&qword_100070FC0, &qword_100051500);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10004EA40;
  *(v13 + 32) = v22;
  *(v13 + 40) = v12;
  v14 = sub_10004C264();

  return v14;
}

uint64_t sub_100029DDC()
{
  v23 = sub_10004C294();
  v22 = sub_10004C294();
  v21 = sub_10004C294();
  v20 = sub_10004C294();
  v19 = sub_10004C294();
  v18 = sub_10004C294();
  v17 = sub_10004C294();
  v16 = sub_10004C294();
  v15 = sub_10004C294();
  v14 = sub_10004C294();
  v13 = sub_10004C294();
  v12 = sub_10004C294();
  v0 = sub_10004C294();
  v1 = sub_10004C294();
  v2 = sub_10004C294();
  v3 = sub_10004C294();
  v4 = sub_10004C294();
  v5 = sub_10004C294();
  v6 = sub_10004C294();
  v7 = sub_10004C294();
  v8 = sub_10004C294();
  sub_1000057AC(&qword_100070F28, &qword_1000513A8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000512D0;
  *(v9 + 32) = v23;
  *(v9 + 40) = v22;
  *(v9 + 48) = v21;
  *(v9 + 56) = v20;
  *(v9 + 64) = v19;
  *(v9 + 72) = v18;
  *(v9 + 80) = v17;
  *(v9 + 88) = v16;
  *(v9 + 96) = v15;
  *(v9 + 104) = v14;
  *(v9 + 112) = v13;
  *(v9 + 120) = v12;
  *(v9 + 128) = v0;
  *(v9 + 136) = v1;
  *(v9 + 144) = v2;
  *(v9 + 152) = v3;
  *(v9 + 160) = v4;
  *(v9 + 168) = v5;
  *(v9 + 176) = v6;
  *(v9 + 184) = v7;
  *(v9 + 192) = v8;
  v10 = sub_10004C284();

  return v10;
}

uint64_t sub_10002A140()
{
  v21 = sub_1000057AC(&qword_100070FB0, &qword_1000514F0);
  v19 = *(v21 - 8);
  __chkstk_darwin(v21);
  v1 = &v14 - v0;
  v2 = sub_10004C254();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000057AC(&qword_100070FB8, &qword_1000514F8);
  __chkstk_darwin(v6);
  sub_100023A04();
  sub_10004C314();
  v22._countAndFlagsBits = 0xD000000000000028;
  v22._object = 0x800000010005CF80;
  sub_10004C304(v22);
  v18 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v17 = *(v3 + 104);
  v15 = v2;
  v17(v5);
  sub_10004C2E4();
  v16 = *(v3 + 8);
  v16(v5, v2);
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  sub_10004C304(v23);
  sub_10004C324();
  v7 = sub_10004C274();
  v19 = *(v19 + 8);
  v20 = v7;
  v8 = v21;
  (v19)(v1, v21);
  sub_10004C314();
  v24._object = 0x800000010005CFB0;
  v24._countAndFlagsBits = 0xD00000000000001ELL;
  sub_10004C304(v24);
  v9 = v15;
  (v17)(v5, v18, v15);
  sub_10004C2E4();
  v16(v5, v9);
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  sub_10004C304(v25);
  sub_10004C324();
  v10 = sub_10004C274();
  (v19)(v1, v8);
  sub_1000057AC(&qword_100070FC0, &qword_100051500);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10004EA40;
  *(v11 + 32) = v20;
  *(v11 + 40) = v10;
  v12 = sub_10004C264();

  return v12;
}

uint64_t sub_10002A554(uint64_t a1)
{
  v20 = a1;
  v22 = sub_1000057AC(&qword_100070F98, &qword_1000514B0);
  v24 = *(v22 - 8);
  __chkstk_darwin(v22);
  v2 = v16 - v1;
  v23 = sub_10004C254();
  v3 = *(v23 - 8);
  __chkstk_darwin(v23);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000057AC(&qword_100070FA0, &qword_1000514B8);
  __chkstk_darwin(v6);
  sub_10002DD64();
  sub_10004C314();
  v25._countAndFlagsBits = 0xD00000000000002CLL;
  v25._object = 0x800000010005CF30;
  sub_10004C304(v25);
  swift_getKeyPath();
  sub_10002DEC4();
  sub_10004C244();

  sub_10004C2F4();

  v26._countAndFlagsBits = 544106784;
  v26._object = 0xE400000000000000;
  sub_10004C304(v26);
  v19 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v18 = *(v3 + 104);
  v7 = v23;
  v18(v5);
  sub_10004C2E4();
  v8 = *(v3 + 8);
  v16[1] = v3 + 8;
  v17 = v8;
  v8(v5, v7);
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  sub_10004C304(v27);
  sub_10004C324();
  v21 = sub_10004C274();
  v9 = *(v24 + 8);
  v24 += 8;
  v16[0] = v9;
  v10 = v22;
  v9(v2, v22);
  sub_10004C314();
  v28._countAndFlagsBits = 0x6D20796669746F4ELL;
  v28._object = 0xEA00000000002065;
  sub_10004C304(v28);
  swift_getKeyPath();
  sub_10004C244();

  sub_10004C2F4();

  v29._object = 0x800000010005CF60;
  v29._countAndFlagsBits = 0xD000000000000017;
  sub_10004C304(v29);
  v11 = v23;
  (v18)(v5, v19, v23);
  sub_10004C2E4();
  v17(v5, v11);
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  sub_10004C304(v30);
  sub_10004C324();
  v12 = sub_10004C274();
  (v16[0])(v2, v10);
  sub_1000057AC(&qword_100070FA8, &qword_1000514C0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10004EA40;
  *(v13 + 32) = v21;
  *(v13 + 40) = v12;
  v14 = sub_10004C264();

  return v14;
}

uint64_t sub_10002AA38()
{
  v0 = sub_10004C294();
  v1 = sub_10004C294();
  v2 = sub_10004C294();
  v3 = sub_10004C294();
  v4 = sub_10004C294();
  v5 = sub_10004C294();
  v6 = sub_10004C294();
  v7 = sub_10004C294();
  v8 = sub_10004C294();
  sub_1000057AC(&qword_100070F28, &qword_1000513A8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10004FD10;
  *(v9 + 32) = v0;
  *(v9 + 40) = v1;
  *(v9 + 48) = v2;
  *(v9 + 56) = v3;
  *(v9 + 64) = v4;
  *(v9 + 72) = v5;
  *(v9 + 80) = v6;
  *(v9 + 88) = v7;
  *(v9 + 96) = v8;
  v10 = sub_10004C284();

  return v10;
}

uint64_t sub_10002ABE8()
{
  v21 = sub_1000057AC(&qword_100070F98, &qword_1000514B0);
  v19 = *(v21 - 8);
  __chkstk_darwin(v21);
  v1 = &v14 - v0;
  v2 = sub_10004C254();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000057AC(&qword_100070FA0, &qword_1000514B8);
  __chkstk_darwin(v6);
  sub_10002DD64();
  sub_10004C314();
  v22._countAndFlagsBits = 0xD000000000000030;
  v22._object = 0x800000010005CEC0;
  sub_10004C304(v22);
  v18 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v17 = *(v3 + 104);
  v15 = v2;
  v17(v5);
  sub_10004C2E4();
  v16 = *(v3 + 8);
  v16(v5, v2);
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  sub_10004C304(v23);
  sub_10004C324();
  v7 = sub_10004C274();
  v19 = *(v19 + 8);
  v20 = v7;
  v8 = v21;
  (v19)(v1, v21);
  sub_10004C314();
  v24._object = 0x800000010005CF00;
  v24._countAndFlagsBits = 0xD000000000000026;
  sub_10004C304(v24);
  v9 = v15;
  (v17)(v5, v18, v15);
  sub_10004C2E4();
  v16(v5, v9);
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  sub_10004C304(v25);
  sub_10004C324();
  v10 = sub_10004C274();
  (v19)(v1, v8);
  sub_1000057AC(&qword_100070FA8, &qword_1000514C0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10004EA40;
  *(v11 + 32) = v20;
  *(v11 + 40) = v10;
  v12 = sub_10004C264();

  return v12;
}

uint64_t sub_10002AFEC()
{
  v21 = sub_1000057AC(&qword_100070F80, &qword_100051470);
  v19 = *(v21 - 8);
  __chkstk_darwin(v21);
  v1 = &v14 - v0;
  v2 = sub_10004C254();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000057AC(&qword_100070F88, &qword_100051478);
  __chkstk_darwin(v6);
  sub_100002F44();
  sub_10004C314();
  v22._object = 0x800000010005CE60;
  v22._countAndFlagsBits = 0xD00000000000001FLL;
  sub_10004C304(v22);
  v18 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v17 = *(v3 + 104);
  v15 = v2;
  v17(v5);
  sub_10004C2E4();
  v16 = *(v3 + 8);
  v16(v5, v2);
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  sub_10004C304(v23);
  sub_10004C324();
  v7 = sub_10004C274();
  v19 = *(v19 + 8);
  v20 = v7;
  v8 = v21;
  (v19)(v1, v21);
  sub_10004C314();
  v24._countAndFlagsBits = 0xD000000000000037;
  v24._object = 0x800000010005CE80;
  sub_10004C304(v24);
  v9 = v15;
  (v17)(v5, v18, v15);
  sub_10004C2E4();
  v16(v5, v9);
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  sub_10004C304(v25);
  sub_10004C324();
  v10 = sub_10004C274();
  (v19)(v1, v8);
  sub_1000057AC(&qword_100070F90, &qword_100051480);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10004EA40;
  *(v11 + 32) = v20;
  *(v11 + 40) = v10;
  v12 = sub_10004C264();

  return v12;
}

uint64_t sub_10002B3F0()
{
  v0 = sub_1000057AC(&qword_100070F80, &qword_100051470);
  v1 = *(v0 - 8);
  v26 = v0;
  v27 = v1;
  __chkstk_darwin(v0);
  v3 = &v18 - v2;
  v4 = sub_10004C254();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000057AC(&qword_100070F88, &qword_100051478);
  __chkstk_darwin(v8);
  sub_100002F44();
  sub_10004C314();
  v28._object = 0x800000010005CDD0;
  v28._countAndFlagsBits = 0xD00000000000001DLL;
  sub_10004C304(v28);
  v23 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v20 = *(v5 + 104);
  v20(v7);
  sub_10004C2E4();
  v24 = *(v5 + 8);
  v25 = v5 + 8;
  v24(v7, v4);
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  sub_10004C304(v29);
  sub_10004C324();
  v22 = sub_10004C274();
  v9 = v26;
  v19 = *(v27 + 8);
  v27 += 8;
  v19(v3, v26);
  sub_10004C314();
  v30._countAndFlagsBits = 0xD000000000000027;
  v30._object = 0x800000010005CDF0;
  sub_10004C304(v30);
  v10 = v20;
  (v20)(v7, v23, v4);
  sub_10004C2E4();
  v24(v7, v4);
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  sub_10004C304(v31);
  sub_10004C324();
  v21 = sub_10004C274();
  v11 = v9;
  v12 = v19;
  v19(v3, v11);
  sub_10004C314();
  v32._countAndFlagsBits = 0xD00000000000003DLL;
  v32._object = 0x800000010005CE20;
  sub_10004C304(v32);
  (v10)(v7, v23, v4);
  sub_10004C2E4();
  v24(v7, v4);
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  sub_10004C304(v33);
  sub_10004C324();
  v13 = sub_10004C274();
  v12(v3, v26);
  sub_1000057AC(&qword_100070F90, &qword_100051480);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100050820;
  v15 = v21;
  *(v14 + 32) = v22;
  *(v14 + 40) = v15;
  *(v14 + 48) = v13;
  v16 = sub_10004C264();

  return v16;
}

uint64_t sub_10002B8B8(uint64_t a1)
{
  v20 = a1;
  v1 = sub_1000057AC(&qword_100070F68, &qword_100051430);
  v2 = *(v1 - 8);
  v23 = v1;
  v24 = v2;
  __chkstk_darwin(v1);
  v4 = v16 - v3;
  v21 = sub_10004C254();
  v5 = *(v21 - 8);
  __chkstk_darwin(v21);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000057AC(&qword_100070F70, &qword_100051438);
  __chkstk_darwin(v8);
  sub_10001D06C();
  sub_10004C314();
  v25._countAndFlagsBits = 0xD000000000000027;
  v25._object = 0x800000010005CD80;
  sub_10004C304(v25);
  swift_getKeyPath();
  sub_10001BEB4();
  sub_10004C244();

  sub_10004C2F4();

  v26._countAndFlagsBits = 544106784;
  v26._object = 0xE400000000000000;
  sub_10004C304(v26);
  v19 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v18 = *(v5 + 104);
  v9 = v21;
  v18(v7);
  sub_10004C2E4();
  v10 = *(v5 + 8);
  v16[1] = v5 + 8;
  v17 = v10;
  v10(v7, v9);
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  sub_10004C304(v27);
  sub_10004C324();
  v22 = sub_10004C274();
  v11 = *(v24 + 8);
  v24 += 8;
  v16[0] = v11;
  v11(v4, v23);
  sub_10004C314();
  v28._object = 0x800000010005CDB0;
  v28._countAndFlagsBits = 0xD00000000000001BLL;
  sub_10004C304(v28);
  swift_getKeyPath();
  sub_10004C244();

  sub_10004C2F4();

  v29._countAndFlagsBits = 544106784;
  v29._object = 0xE400000000000000;
  sub_10004C304(v29);
  (v18)(v7, v19, v9);
  sub_10004C2E4();
  v17(v7, v9);
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  sub_10004C304(v30);
  sub_10004C324();
  v12 = sub_10004C274();
  (v16[0])(v4, v23);
  sub_1000057AC(&qword_100070F78, &qword_100051440);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10004EA40;
  *(v13 + 32) = v22;
  *(v13 + 40) = v12;
  v14 = sub_10004C264();

  return v14;
}

uint64_t sub_10002BD7C()
{
  v25 = sub_10004C294();
  v24 = sub_10004C294();
  v23 = sub_10004C294();
  v22 = sub_10004C294();
  v21 = sub_10004C294();
  v20 = sub_10004C294();
  v19 = sub_10004C294();
  v18 = sub_10004C294();
  v17 = sub_10004C294();
  v16 = sub_10004C294();
  v15 = sub_10004C294();
  v14 = sub_10004C294();
  v13 = sub_10004C294();
  v12 = sub_10004C294();
  v0 = sub_10004C294();
  v1 = sub_10004C294();
  v2 = sub_10004C294();
  v3 = sub_10004C294();
  v4 = sub_10004C294();
  v5 = sub_10004C294();
  v6 = sub_10004C294();
  v7 = sub_10004C294();
  v8 = sub_10004C294();
  sub_1000057AC(&qword_100070F28, &qword_1000513A8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000512E0;
  *(v9 + 32) = v25;
  *(v9 + 40) = v24;
  *(v9 + 48) = v23;
  *(v9 + 56) = v22;
  *(v9 + 64) = v21;
  *(v9 + 72) = v20;
  *(v9 + 80) = v19;
  *(v9 + 88) = v18;
  *(v9 + 96) = v17;
  *(v9 + 104) = v16;
  *(v9 + 112) = v15;
  *(v9 + 120) = v14;
  *(v9 + 128) = v13;
  *(v9 + 136) = v12;
  *(v9 + 144) = v0;
  *(v9 + 152) = v1;
  *(v9 + 160) = v2;
  *(v9 + 168) = v3;
  *(v9 + 176) = v4;
  *(v9 + 184) = v5;
  *(v9 + 192) = v6;
  *(v9 + 200) = v7;
  *(v9 + 208) = v8;
  v10 = sub_10004C284();

  return v10;
}

uint64_t sub_10002C104(uint64_t a1)
{
  v20 = a1;
  v1 = sub_1000057AC(&qword_100070F50, &qword_1000513F0);
  v2 = *(v1 - 8);
  v23 = v1;
  v24 = v2;
  __chkstk_darwin(v1);
  v4 = v16 - v3;
  v21 = sub_10004C254();
  v5 = *(v21 - 8);
  __chkstk_darwin(v21);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000057AC(&qword_100070F58, &qword_1000513F8);
  __chkstk_darwin(v8);
  sub_10002DDB8();
  sub_10004C314();
  v25._countAndFlagsBits = 0xD000000000000021;
  v25._object = 0x800000010005CC90;
  sub_10004C304(v25);
  swift_getKeyPath();
  sub_10002DE68();
  sub_10004C244();

  sub_10004C2F4();

  v26._countAndFlagsBits = 544106784;
  v26._object = 0xE400000000000000;
  sub_10004C304(v26);
  v19 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v18 = *(v5 + 104);
  v9 = v21;
  v18(v7);
  sub_10004C2E4();
  v10 = *(v5 + 8);
  v16[1] = v5 + 8;
  v17 = v10;
  v10(v7, v9);
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  sub_10004C304(v27);
  sub_10004C324();
  v22 = sub_10004C274();
  v11 = *(v24 + 8);
  v24 += 8;
  v16[0] = v11;
  v11(v4, v23);
  sub_10004C314();
  v28._object = 0x800000010005CCC0;
  v28._countAndFlagsBits = 0xD000000000000012;
  sub_10004C304(v28);
  swift_getKeyPath();
  sub_10004C244();

  sub_10004C2F4();

  v29._countAndFlagsBits = 544106784;
  v29._object = 0xE400000000000000;
  sub_10004C304(v29);
  (v18)(v7, v19, v9);
  sub_10004C2E4();
  v17(v7, v9);
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  sub_10004C304(v30);
  sub_10004C324();
  v12 = sub_10004C274();
  (v16[0])(v4, v23);
  sub_1000057AC(&qword_100070F60, &qword_100051400);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10004EA40;
  *(v13 + 32) = v22;
  *(v13 + 40) = v12;
  v14 = sub_10004C264();

  return v14;
}

uint64_t sub_10002C5C8()
{
  v0 = sub_10004C294();
  v1 = sub_10004C294();
  v2 = sub_10004C294();
  v3 = sub_10004C294();
  v4 = sub_10004C294();
  v5 = sub_10004C294();
  v6 = sub_10004C294();
  sub_1000057AC(&qword_100070F28, &qword_1000513A8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000512F0;
  *(v7 + 32) = v0;
  *(v7 + 40) = v1;
  *(v7 + 48) = v2;
  *(v7 + 56) = v3;
  *(v7 + 64) = v4;
  *(v7 + 72) = v5;
  *(v7 + 80) = v6;
  v8 = sub_10004C284();

  return v8;
}

uint64_t sub_10002C710()
{
  v21 = sub_1000057AC(&qword_100070F30, &qword_1000513B0);
  v19 = *(v21 - 8);
  __chkstk_darwin(v21);
  v1 = &v14 - v0;
  v2 = sub_10004C254();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000057AC(&qword_100070F38, &qword_1000513B8);
  __chkstk_darwin(v6);
  sub_10000B40C();
  sub_10004C314();
  v22._object = 0x800000010005CC20;
  v22._countAndFlagsBits = 0xD00000000000001FLL;
  sub_10004C304(v22);
  v18 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v17 = *(v3 + 104);
  v15 = v2;
  v17(v5);
  sub_10004C2E4();
  v16 = *(v3 + 8);
  v16(v5, v2);
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  sub_10004C304(v23);
  sub_10004C324();
  v7 = sub_10004C274();
  v19 = *(v19 + 8);
  v20 = v7;
  v8 = v21;
  (v19)(v1, v21);
  sub_10004C314();
  v24._countAndFlagsBits = 0xD000000000000020;
  v24._object = 0x800000010005CC40;
  sub_10004C304(v24);
  v9 = v15;
  (v17)(v5, v18, v15);
  sub_10004C2E4();
  v16(v5, v9);
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  sub_10004C304(v25);
  sub_10004C324();
  v10 = sub_10004C274();
  (v19)(v1, v8);
  sub_1000057AC(&qword_100070F40, &qword_1000513C0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10004EA40;
  *(v11 + 32) = v20;
  *(v11 + 40) = v10;
  v12 = sub_10004C264();

  return v12;
}

uint64_t sub_10002CB14()
{
  v21 = sub_1000057AC(&qword_100070F30, &qword_1000513B0);
  v19 = *(v21 - 8);
  __chkstk_darwin(v21);
  v1 = &v14 - v0;
  v2 = sub_10004C254();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000057AC(&qword_100070F38, &qword_1000513B8);
  __chkstk_darwin(v6);
  sub_10000B40C();
  sub_10004C314();
  v22._object = 0x800000010005CBC0;
  v22._countAndFlagsBits = 0xD000000000000020;
  sub_10004C304(v22);
  v18 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v17 = *(v3 + 104);
  v15 = v2;
  v17(v5);
  sub_10004C2E4();
  v16 = *(v3 + 8);
  v16(v5, v2);
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  sub_10004C304(v23);
  sub_10004C324();
  v7 = sub_10004C274();
  v19 = *(v19 + 8);
  v20 = v7;
  v8 = v21;
  (v19)(v1, v21);
  sub_10004C314();
  v24._countAndFlagsBits = 0xD000000000000021;
  v24._object = 0x800000010005CBF0;
  sub_10004C304(v24);
  v9 = v15;
  (v17)(v5, v18, v15);
  sub_10004C2E4();
  v16(v5, v9);
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  sub_10004C304(v25);
  sub_10004C324();
  v10 = sub_10004C274();
  (v19)(v1, v8);
  sub_1000057AC(&qword_100070F40, &qword_1000513C0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10004EA40;
  *(v11 + 32) = v20;
  *(v11 + 40) = v10;
  v12 = sub_10004C264();

  return v12;
}

uint64_t sub_10002CF18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v7 = sub_10004C2D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  a3();
  sub_10004C244();

  a4(v11);
  sub_10004C2C4();
  v12 = sub_10004C2B4();
  (*(v8 + 8))(v10, v7);
  sub_1000057AC(&qword_100070F20, &qword_1000513A0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10004FD20;
  *(v13 + 32) = v12;
  v14 = sub_10004C2A4();

  return v14;
}

uint64_t sub_10002D098(uint64_t a1, uint64_t a2)
{
  v2 = sub_10004C294();
  sub_1000057AC(&qword_100070F28, &qword_1000513A8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10004FD20;
  *(v3 + 32) = v2;
  v4 = sub_10004C284();

  return v4;
}

uint64_t sub_10002D120()
{
  if (qword_1000703C8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10002D18C()
{
  v0 = sub_10004C354();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_100042794();
  v61 = v4;
  sub_10002DC68();
  sub_10004C364();
  v59 = sub_10004C344();
  v5 = *(v1 + 8);
  v5(v3, v0);
  v60 = sub_100042794();
  v61 = v6;
  sub_10004C364();
  v58 = sub_10004C344();
  v5(v3, v0);
  v60 = sub_10000FE38();
  v61 = v7;
  sub_10000E5F4();
  sub_10004C364();
  v57 = sub_10004C344();
  v5(v3, v0);
  v60 = sub_10000FE38();
  v61 = v8;
  sub_10004C364();
  v56 = sub_10004C344();
  v5(v3, v0);
  v60 = sub_10001808C();
  v61 = v9;
  sub_100016850();
  sub_10004C364();
  v55 = sub_10004C344();
  v5(v3, v0);
  v60 = sub_10001808C();
  v61 = v10;
  sub_10004C364();
  v54 = sub_10004C344();
  v5(v3, v0);
  v60 = sub_1000305E4();
  v61 = v11;
  sub_10002DCBC();
  sub_10004C364();
  v53 = sub_10004C344();
  v5(v3, v0);
  v60 = sub_1000305E4();
  v61 = v12;
  sub_10004C364();
  v52 = sub_10004C344();
  v5(v3, v0);
  v60 = sub_100014ECC();
  v61 = v13;
  sub_1000137FC();
  sub_10004C364();
  v51 = sub_10004C344();
  v5(v3, v0);
  v60 = sub_100035D28();
  v61 = v14;
  v62 = v15;
  sub_10002DD10();
  sub_10004C364();
  v50 = sub_10004C344();
  v5(v3, v0);
  v60 = sub_100035D28();
  v61 = v16;
  v62 = v17;
  sub_10004C364();
  v49 = sub_10004C344();
  v5(v3, v0);
  v60 = sub_1000258AC();
  v61 = v18;
  sub_100023A04();
  sub_10004C364();
  v48 = sub_10004C344();
  v5(v3, v0);
  v60 = sub_1000258AC();
  v61 = v19;
  sub_10004C364();
  v47 = sub_10004C344();
  v5(v3, v0);
  v60 = sub_10004B3A4();
  v61 = v20;
  sub_10002DD64();
  sub_10004C364();
  v46 = sub_10004C344();
  v5(v3, v0);
  v60 = sub_10004B3A4();
  v61 = v21;
  sub_10004C364();
  v45 = sub_10004C344();
  v5(v3, v0);
  v60 = sub_100004FF0();
  v61 = v22;
  sub_100002F44();
  sub_10004C364();
  v44 = sub_10004C344();
  v5(v3, v0);
  v60 = sub_100004FF0();
  v61 = v23;
  sub_10004C364();
  v24 = sub_10004C344();
  v5(v3, v0);
  v60 = sub_10001E794();
  v61 = v25;
  sub_10001D06C();
  sub_10004C364();
  v26 = sub_10004C344();
  v5(v3, v0);
  v60 = sub_10003AD10();
  v61 = v27;
  sub_10002DDB8();
  sub_10004C364();
  v28 = sub_10004C344();
  v5(v3, v0);
  v60 = sub_10000CC8C();
  v61 = v29;
  sub_10000B40C();
  sub_10004C364();
  v30 = sub_10004C344();
  v5(v3, v0);
  v60 = sub_10000CC8C();
  v61 = v31;
  sub_10004C364();
  v32 = sub_10004C344();
  v5(v3, v0);
  sub_1000057AC(&qword_100070F10, &qword_100051370);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1000512D0;
  v34 = v58;
  *(v33 + 32) = v59;
  *(v33 + 40) = v34;
  v35 = v56;
  *(v33 + 48) = v57;
  *(v33 + 56) = v35;
  v36 = v54;
  *(v33 + 64) = v55;
  *(v33 + 72) = v36;
  v37 = v52;
  *(v33 + 80) = v53;
  *(v33 + 88) = v37;
  v38 = v50;
  *(v33 + 96) = v51;
  *(v33 + 104) = v38;
  v39 = v48;
  *(v33 + 112) = v49;
  *(v33 + 120) = v39;
  v40 = v46;
  *(v33 + 128) = v47;
  *(v33 + 136) = v40;
  v41 = v44;
  *(v33 + 144) = v45;
  *(v33 + 152) = v41;
  *(v33 + 160) = v24;
  *(v33 + 168) = v26;
  *(v33 + 176) = v28;
  *(v33 + 184) = v30;
  *(v33 + 192) = v32;
  v42 = sub_10004C334();

  return v42;
}

unint64_t sub_10002DC68()
{
  result = qword_100070EE8;
  if (!qword_100070EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070EE8);
  }

  return result;
}

unint64_t sub_10002DCBC()
{
  result = qword_100070EF0;
  if (!qword_100070EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070EF0);
  }

  return result;
}

unint64_t sub_10002DD10()
{
  result = qword_100070EF8;
  if (!qword_100070EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070EF8);
  }

  return result;
}

unint64_t sub_10002DD64()
{
  result = qword_100070F00;
  if (!qword_100070F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070F00);
  }

  return result;
}

unint64_t sub_10002DDB8()
{
  result = qword_100070F08;
  if (!qword_100070F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070F08);
  }

  return result;
}

unint64_t sub_10002DE14()
{
  result = qword_100070F18;
  if (!qword_100070F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070F18);
  }

  return result;
}

unint64_t sub_10002DE68()
{
  result = qword_100070F48;
  if (!qword_100070F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070F48);
  }

  return result;
}

unint64_t sub_10002DEC4()
{
  result = qword_1000716A0;
  if (!qword_1000716A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000716A0);
  }

  return result;
}

void *sub_10002DF18@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10004C1F4();
  *a1 = v3;
  return result;
}

unint64_t sub_10002DF8C()
{
  result = qword_100071190;
  if (!qword_100071190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071190);
  }

  return result;
}

void *sub_10002DFE0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10004C1F4();
  *a1 = v3;
  return result;
}

unint64_t sub_10002E054()
{
  result = qword_100071040;
  if (!qword_100071040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071040);
  }

  return result;
}

unint64_t sub_10002E0FC()
{
  result = qword_100071070;
  if (!qword_100071070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071070);
  }

  return result;
}

unint64_t sub_10002E154()
{
  result = qword_100071078;
  if (!qword_100071078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071078);
  }

  return result;
}

uint64_t sub_10002E1CC()
{
  v1 = *(v0 + 16);
  *v1 = CalAlertInviteeDeclines() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10002E260()
{
  CalSetAlertInviteeDeclines();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002E2C4()
{
  v0 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v0 - 8);
  v2 = &v12[-v1];
  v3 = sub_10004C554();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_10004C5A4();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10004C754();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10004C564();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  sub_10004C744();
  sub_10004C594();
  (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  sub_10004C574();
  (*(v10 + 56))(v2, 1, 1, v9);
  return sub_10004C4C4();
}

uint64_t sub_10002E598@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v1 = sub_1000057AC(&qword_1000705B0, &unk_10004E990);
  __chkstk_darwin(v1 - 8);
  v21 = &v20 - v2;
  v3 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  v6 = sub_10004C554();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004C5A4();
  __chkstk_darwin(v10 - 8);
  v11 = sub_10004C754();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10004C564();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  __chkstk_darwin(v14);
  sub_10004C744();
  sub_10004C594();
  (*(v7 + 104))(v9, enum case for LocalizedStringResource.BundleDescription.main(_:), v6);
  sub_10004C584();
  (*(v13 + 56))(v5, 1, 1, v12);
  if (qword_100070428 != -1)
  {
    swift_once();
  }

  v15 = sub_10004C3C4();
  v16 = sub_100005C58(v15, qword_100071B70);
  v17 = *(v15 - 8);
  v18 = v21;
  (*(v17 + 16))(v21, v16, v15);
  (*(v17 + 56))(v18, 0, 1, v15);
  sub_10004C544();
  return sub_10004C3E4();
}

uint64_t sub_10002E9A4()
{
  v0 = qword_100071060;

  return v0;
}

unint64_t sub_10002E9E0()
{
  result = qword_100071080;
  if (!qword_100071080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071080);
  }

  return result;
}

unint64_t sub_10002EA38()
{
  result = qword_100071088;
  if (!qword_100071088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071088);
  }

  return result;
}

unint64_t sub_10002EA90()
{
  result = qword_100071090;
  if (!qword_100071090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071090);
  }

  return result;
}

unint64_t sub_10002EAE8()
{
  result = qword_100071098;
  if (!qword_100071098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071098);
  }

  return result;
}

unint64_t sub_10002EB40()
{
  result = qword_1000710A0;
  if (!qword_1000710A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000710A0);
  }

  return result;
}

unint64_t sub_10002EB98()
{
  result = qword_1000710A8;
  if (!qword_1000710A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000710A8);
  }

  return result;
}

unint64_t sub_10002EBF0()
{
  result = qword_1000710B0;
  if (!qword_1000710B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000710B0);
  }

  return result;
}

unint64_t sub_10002EC48()
{
  result = qword_1000710B8;
  if (!qword_1000710B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000710B8);
  }

  return result;
}

uint64_t sub_10002ED04(uint64_t a1)
{
  v2 = sub_10002E0FC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10002ED54()
{
  result = qword_1000710D0;
  if (!qword_1000710D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000710D0);
  }

  return result;
}

uint64_t sub_10002EDAC(uint64_t a1)
{
  v2 = sub_10002EC48();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10002EE40()
{
  v0 = sub_10004C554();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10004C5A4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10004C754();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10004C564();
  sub_100005C90(v6, qword_100071AC8);
  sub_100005C58(v6, qword_100071AC8);
  sub_10004C744();
  sub_10004C594();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_10004C574();
}

uint64_t sub_10002F040()
{
  result = swift_getKeyPath();
  qword_100071AE0 = result;
  return result;
}

uint64_t sub_10002F068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  sub_10004C7C4();
  v3[7] = sub_10004C7B4();
  v5 = sub_10004C7A4();
  v3[8] = v5;
  v3[9] = v4;

  return _swift_task_switch(sub_10002F104, v5, v4);
}

uint64_t sub_10002F104()
{
  sub_10004C1F4();
  v1 = *(v0 + 16);
  *(v0 + 24) = v1;
  *(v0 + 80) = v1;
  sub_10004C1F4();
  *(v0 + 113) = *(v0 + 112);
  if (qword_1000703D8 != -1)
  {
    swift_once();
  }

  v2 = qword_100071AE0;
  *(v0 + 88) = qword_100071AE0;

  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  v4 = sub_100005D70(&qword_100071130, &qword_100071138, &unk_100051D18, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v3 = v0;
  v3[1] = sub_100003440;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 113, v2, &type metadata for Bool, v4);
}

uint64_t (*sub_10002F264(uint64_t *a1))()
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
  *(v2 + 32) = sub_10004C1E4();
  return sub_100003760;
}

uint64_t (*sub_10002F2D8(uint64_t *a1))()
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
  *(v2 + 32) = sub_10004C1E4();
  return sub_100005F04;
}

uint64_t sub_10002F34C()
{
  if (qword_1000703D8 != -1)
  {
    swift_once();
  }
}

unint64_t sub_10002F3AC()
{
  result = qword_1000710E8;
  if (!qword_1000710E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000710E8);
  }

  return result;
}

unint64_t sub_10002F404()
{
  result = qword_1000710F0;
  if (!qword_1000710F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000710F0);
  }

  return result;
}

uint64_t sub_10002F4C4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000703D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10004C564();
  v3 = sub_100005C58(v2, qword_100071AC8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10002F56C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002E00;

  return sub_10002F068(a1, v5, v4);
}

char *sub_10002F618@<X0>(char **a2@<X8>)
{
  result = sub_1000305E4();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10002F640(uint64_t a1)
{
  v2 = sub_10002DCBC();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10002F680()
{
  result = qword_1000710F8;
  if (!qword_1000710F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000710F8);
  }

  return result;
}

unint64_t sub_10002F6D8()
{
  result = qword_100071100;
  if (!qword_100071100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071100);
  }

  return result;
}

uint64_t sub_10002F72C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005F00;

  return sub_100030DA0();
}

uint64_t sub_10002F7D0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10002E154();
  *v4 = v2;
  v4[1] = sub_100003DE4;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10002F884()
{
  result = qword_100071108;
  if (!qword_100071108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071108);
  }

  return result;
}

unint64_t sub_10002F8DC()
{
  result = qword_100071110;
  if (!qword_100071110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071110);
  }

  return result;
}

uint64_t sub_10002F930(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10002E154();
  *v5 = v2;
  v5[1] = sub_100005F1C;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10002F9E4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10002E154();
  *v4 = v2;
  v4[1] = sub_100005F00;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10002FA98()
{
  result = qword_100071118;
  if (!qword_100071118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071118);
  }

  return result;
}

unint64_t sub_10002FAF0()
{
  result = qword_100071120;
  if (!qword_100071120)
  {
    sub_100002C4C(&qword_100071128, qword_100051B60);
    sub_10002EBF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071120);
  }

  return result;
}

uint64_t sub_10002FB74(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10002EAE8();
  *v5 = v2;
  v5[1] = sub_100005EFC;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_10002FC58@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v1 = sub_1000057AC(&qword_1000705C0, &unk_10004D5D0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - v3;
  v5 = sub_1000057AC(&qword_1000705C8, qword_10004EA10);
  v6 = *(v5 - 8);
  v19 = v5;
  v20 = v6;
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  swift_getKeyPath();
  sub_1000057AC(&qword_1000705D0, &unk_10004D5E0);
  v17._object = &protocol witness table for Text;
  sub_10002F6D8();
  sub_100005D70(&qword_1000705D8, &qword_1000705D0, &unk_10004D5E0, &protocol conformance descriptor for Label<A, B>);
  sub_10004C724();
  sub_10004C6A4();
  v9 = sub_100005D70(&qword_1000705E0, &qword_1000705C0, &unk_10004D5D0, &protocol conformance descriptor for ControlToggle<A>);
  sub_10004C6C4();

  (*(v2 + 8))(v4, v1);
  v10 = [objc_opt_self() mainBundle];
  v17._countAndFlagsBits = 0x800000010005D7F0;
  v26._object = 0x8000000100055D20;
  v26._countAndFlagsBits = 0xD000000000000015;
  v27.value._countAndFlagsBits = 0;
  v27.value._object = 0;
  v11.super.isa = v10;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  v12 = sub_10004C534(v26, v27, v11, v28, 0xD000000000000051, v17);
  v14 = v13;

  v24 = v12;
  v25 = v14;
  v22 = v1;
  v23 = v9;
  swift_getOpaqueTypeConformance2();
  sub_100005DB8();
  v15 = v19;
  sub_10004C6B4();

  return (*(v20 + 8))(v8, v15);
}

uint64_t sub_10003002C()
{
  v0 = [objc_opt_self() mainBundle];
  v3._countAndFlagsBits = 0x8000000100057AC0;
  v4._object = 0x8000000100055D20;
  v4._countAndFlagsBits = 0xD000000000000015;
  v5.value._countAndFlagsBits = 0;
  v5.value._object = 0;
  v1.super.isa = v0;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_10004C534(v4, v5, v1, v6, 0xD000000000000032, v3);

  sub_100005DB8();
  return sub_10004C6E4();
}

uint64_t sub_100030110@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10004C554();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004C5A4();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10004C754();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10004C564();
  __chkstk_darwin(v8 - 8);
  sub_10004C744();
  sub_10004C594();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_10004C574();
  result = sub_10004C6D4();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_100030344@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_10004C554();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004C5A4();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10004C754();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10004C564();
  __chkstk_darwin(v9 - 8);
  sub_10004C744();
  sub_10004C594();
  (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  sub_10004C574();
  result = sub_10004C6D4();
  *a2 = result;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v13;
  return result;
}

char *sub_1000305E4()
{
  v0 = sub_1000057AC(&qword_100070568, &unk_10004E1F0);
  __chkstk_darwin(v0 - 8);
  v50 = &v35 - v1;
  v2 = sub_10004C494();
  v3 = *(v2 - 8);
  v53 = v2;
  v54 = v3;
  __chkstk_darwin(v2);
  v49 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000057AC(&unk_100070570, &unk_10004D430);
  v6 = __chkstk_darwin(v5 - 8);
  v48 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v52 = &v35 - v8;
  v9 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v9 - 8);
  v51 = &v35 - v10;
  v11 = sub_10004C554();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10004C5A4();
  __chkstk_darwin(v15 - 8);
  v16 = sub_10004C754();
  __chkstk_darwin(v16 - 8);
  v17 = sub_10004C564();
  v45 = v17;
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v35 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1000057AC(&unk_100071140, &unk_100051D28);
  sub_10004C744();
  sub_10004C594();
  v20 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v21 = *(v12 + 104);
  v36 = v11;
  v21(v14, enum case for LocalizedStringResource.BundleDescription.main(_:), v11);
  v37 = v21;
  v38 = v12 + 104;
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v21(v14, v20, v11);
  v22 = v51;
  sub_10004C574();
  v23 = *(v18 + 56);
  v44 = v18 + 56;
  v46 = v23;
  v23(v22, 0, 1, v17);
  v56[0] = 0;
  v24 = sub_10004C1C4();
  v39 = v24;
  v25 = *(v24 - 8);
  v26 = *(v25 + 56);
  v43 = v26;
  v47 = v25 + 56;
  v26(v52, 1, 1, v24);
  v26(v48, 1, 1, v24);
  v40 = enum case for InputConnectionBehavior.default(_:);
  v27 = *(v54 + 104);
  v54 += 104;
  v41 = v27;
  v28 = v49;
  v27(v49);
  sub_10002E0FC();
  v29 = v28;
  v48 = sub_10004C224();
  v42 = sub_1000057AC(&qword_100070588, &qword_10004E210);
  sub_10004C744();
  sub_10004C594();
  v30 = v36;
  v31 = v37;
  v37(v14, v20, v36);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v31(v14, v20, v30);
  v32 = v51;
  sub_10004C574();
  v46(v32, 0, 1, v45);
  v55[0] = 2;
  v33 = sub_10004C794();
  (*(*(v33 - 8) + 56))(v50, 1, 1, v33);
  v43(v52, 1, 1, v39);
  v41(v29, v40, v53);
  sub_10004C234();
  return v48;
}

uint64_t sub_100030DA0()
{
  v1 = sub_10004C554();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_10004C5A4();
  v0[5] = swift_task_alloc();
  sub_10004C754();
  v0[6] = swift_task_alloc();
  sub_10004C564();
  v0[7] = swift_task_alloc();

  return _swift_task_switch(sub_100030EE0, 0, 0);
}

uint64_t sub_100030EE0()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v0[3];
  sub_1000057AC(&qword_1000710E0, qword_100051900);
  sub_10004C744();
  sub_10004C594();
  (*(v3 + 104))(v1, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_10004C574();
  sub_100005D70(&qword_100071130, &qword_100071138, &unk_100051D18, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v4 = sub_10004C514();

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1000310EC()
{
  v0 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_10004C554();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004C5A4();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10004C754();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10004C564();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_10004C4D4();
  sub_100005C90(v10, qword_100071AE8);
  sub_100005C58(v10, qword_100071AE8);
  sub_10004C744();
  sub_10004C594();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_10004C584();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_10004C4C4();
}

uint64_t sub_1000313C8()
{
  v0 = sub_1000057AC(&qword_1000705B0, &unk_10004E990);
  __chkstk_darwin(v0 - 8);
  v84 = &v52 - v1;
  v2 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v2 - 8);
  v83 = &v52 - v3;
  v4 = sub_10004C554();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004C5A4();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10004C754();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10004C564();
  v67 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000057AC(&qword_1000712C8, &unk_1000527E0);
  v13 = sub_1000057AC(&qword_1000712D0, &qword_1000547D0);
  v14 = (*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80);
  v76 = *(*(v13 - 8) + 72);
  v15 = swift_allocObject();
  v56 = xmmword_10004EA30;
  *(v15 + 16) = xmmword_10004EA30;
  v58 = v15;
  v81 = v13;
  v61 = *(v13 + 48);
  v80 = v15 + v14;
  *(v15 + v14) = 0;
  sub_10004C744();
  sub_10004C594();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v59 = *(v5 + 104);
  v63 = v4;
  v77 = v5 + 104;
  v59(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v4);
  v82 = v12;
  v17 = v67;
  sub_10004C574();
  v18 = *(v17 + 56);
  v78 = v10;
  v74 = v18;
  v75 = v17 + 56;
  v18(v83, 1, 1, v10);
  if (qword_100070428 != -1)
  {
    swift_once();
  }

  v19 = sub_10004C3C4();
  v72 = sub_100005C58(v19, qword_100071B70);
  v65 = v19;
  v20 = *(v19 - 8);
  v21 = *(v20 + 16);
  v71 = v20 + 16;
  v73 = v21;
  v22 = v84;
  v21(v84, v72, v19);
  v23 = *(v20 + 56);
  v69 = v20 + 56;
  v70 = v23;
  v23(v22, 0, 1, v19);
  v24 = sub_1000057AC(&qword_100070AA0, &unk_10004F410);
  v79 = *(v17 + 72);
  v67 = *(v17 + 80);
  v68 = v24;
  v66 = 2 * v79;
  v64 = (v67 + 32) & ~v67;
  v25 = swift_allocObject();
  v60 = xmmword_10004EA40;
  v57 = v25;
  *(v25 + 16) = xmmword_10004EA40;
  sub_10004C744();
  sub_10004C594();
  v26 = v63;
  v27 = v59;
  v59(v7, v16, v63);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v62 = v16;
  v27(v7, v16, v26);
  sub_10004C574();
  v28 = v80;
  v29 = v83;
  sub_10004C3F4();
  v57 = v28 + v76;
  v61 = *(v81 + 48);
  *v57 = 1;
  sub_10004C744();
  sub_10004C594();
  v30 = v26;
  v27(v7, v16, v26);
  sub_10004C574();
  v74(v29, 1, 1, v78);
  v31 = v84;
  v32 = v65;
  v73(v84, v72, v65);
  v70(v31, 0, 1, v32);
  v55 = swift_allocObject();
  *(v55 + 16) = v60;
  sub_10004C744();
  sub_10004C594();
  v33 = v62;
  v34 = v59;
  v59(v7, v62, v30);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v34(v7, v33, v30);
  sub_10004C574();
  v35 = v83;
  sub_10004C3F4();
  v55 = 2 * v76;
  v53 = (v80 + 2 * v76);
  v54 = *(v81 + 48);
  *v53 = 2;
  sub_10004C744();
  sub_10004C594();
  v36 = v33;
  v37 = v30;
  v34(v7, v36, v30);
  sub_10004C574();
  v74(v35, 1, 1, v78);
  v38 = v65;
  v73(v31, v72, v65);
  v70(v31, 0, 1, v38);
  v61 = 4 * v79;
  v57 = 5 * v79;
  v39 = v79;
  v52 = swift_allocObject();
  *(v52 + 16) = v56;
  sub_10004C744();
  sub_10004C594();
  v40 = v62;
  v34(v7, v62, v37);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v34(v7, v40, v37);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v34(v7, v40, v37);
  v41 = v66;
  sub_10004C574();
  *&v56 = v41 + v39;
  sub_10004C744();
  sub_10004C594();
  v34(v7, v40, v37);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v34(v7, v40, v37);
  sub_10004C574();
  v42 = v83;
  v43 = v84;
  sub_10004C3F4();
  v54 = v80 + v55 + v76;
  v55 = *(v81 + 48);
  *v54 = 3;
  sub_10004C744();
  sub_10004C594();
  v34(v7, v40, v37);
  sub_10004C574();
  v74(v42, 1, 1, v78);
  v44 = v65;
  v73(v43, v72, v65);
  v70(v43, 0, 1, v44);
  *(swift_allocObject() + 16) = v60;
  sub_10004C744();
  sub_10004C594();
  v34(v7, v40, v37);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v34(v7, v40, v37);
  sub_10004C574();
  v45 = v83;
  v46 = v84;
  sub_10004C3F4();
  *&v60 = v80 + 4 * v76;
  v76 = *(v81 + 48);
  *v60 = 4;
  sub_10004C744();
  sub_10004C594();
  v47 = v62;
  v34(v7, v62, v63);
  sub_10004C574();
  v74(v45, 1, 1, v78);
  v48 = v65;
  v73(v46, v72, v65);
  v70(v46, 0, 1, v48);
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_10004FD30;
  sub_10004C744();
  sub_10004C594();
  v49 = v63;
  v34(v7, v47, v63);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v34(v7, v47, v49);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v34(v7, v47, v49);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v34(v7, v47, v49);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v34(v7, v47, v49);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v34(v7, v47, v49);
  sub_10004C574();
  sub_10004C3F4();
  v50 = sub_10004ABDC(v58);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100071B00 = v50;
  return result;
}

uint64_t sub_100032A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000057AC(&qword_100070AB0, &unk_10004F490);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  if (qword_1000703E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = qword_100071B00;
  if (*(qword_100071B00 + 16) && (v11 = sub_100048830(a1), (v12 & 1) != 0))
  {
    v13 = v11;
    v14 = *(v10 + 56);
    v15 = sub_10004C414();
    v16 = *(v15 - 8);
    (*(v16 + 16))(v6, v14 + *(v16 + 72) * v13, v15);
    (*(v16 + 56))(v6, 0, 1, v15);
  }

  else
  {
    v15 = sub_10004C414();
    (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  }

  sub_10004C414();
  if ((*(*(v15 - 8) + 48))(v6, 1, v15))
  {
    sub_1000159C4(v6, &qword_100070AB0, &unk_10004F490);
    swift_endAccess();
    v17 = sub_10004C564();
    v18 = *(v17 - 8);
    (*(v18 + 56))(v9, 1, 1, v17);
    sub_10004C544();
    result = (*(v18 + 48))(v9, 1, v17);
    if (result != 1)
    {
      return sub_1000159C4(v9, &qword_100070E80, &qword_10004E200);
    }
  }

  else
  {
    sub_10004C3D4();
    sub_1000159C4(v6, &qword_100070AB0, &unk_10004F490);
    swift_endAccess();
    v20 = sub_10004C564();
    v21 = *(v20 - 8);
    (*(v21 + 56))(v9, 0, 1, v20);
    return (*(v21 + 32))(a2, v9, v20);
  }

  return result;
}

unint64_t sub_100032DEC()
{
  result = qword_100071160;
  if (!qword_100071160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071160);
  }

  return result;
}

Swift::Int sub_100032E40()
{
  sub_10004C8A4();
  sub_10004C784();

  return sub_10004C8C4();
}

uint64_t sub_100032F48(uint64_t a1)
{
  sub_10004C784();
}

Swift::Int sub_10003303C(uint64_t a1)
{
  sub_10004C8A4();
  sub_10004C784();

  return sub_10004C8C4();
}

unint64_t sub_100033140@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100036598(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100033170(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x7472656C416F6ELL;
  v5 = 0xEC00000065726F66;
  v6 = 0x6542796144656E6FLL;
  v7 = 0x42737961446F7774;
  if (v2 != 3)
  {
    v7 = 0x426B656557656E6FLL;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xED000065726F6665;
  }

  if (*v1)
  {
    v4 = 0x657645664F796164;
    v3 = 0xEA0000000000746ELL;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

unint64_t sub_100033238()
{
  result = qword_100071168;
  if (!qword_100071168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071168);
  }

  return result;
}

unint64_t sub_100033290()
{
  result = qword_100071170;
  if (!qword_100071170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071170);
  }

  return result;
}

unint64_t sub_1000332E8()
{
  result = qword_100071178;
  if (!qword_100071178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071178);
  }

  return result;
}

unint64_t sub_100033340()
{
  result = qword_100071180;
  if (!qword_100071180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071180);
  }

  return result;
}

unint64_t sub_100033398()
{
  result = qword_100071188;
  if (!qword_100071188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071188);
  }

  return result;
}

unint64_t sub_1000333F4()
{
  result = qword_100071198;
  if (!qword_100071198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071198);
  }

  return result;
}

unint64_t sub_1000334AC()
{
  result = qword_1000711A0;
  if (!qword_1000711A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000711A0);
  }

  return result;
}

uint64_t sub_100033500(uint64_t a1)
{
  v2 = sub_1000334AC();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100033550()
{
  result = qword_1000711A8;
  if (!qword_1000711A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000711A8);
  }

  return result;
}

unint64_t sub_1000335A8()
{
  result = qword_1000711B0;
  if (!qword_1000711B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000711B0);
  }

  return result;
}

unint64_t sub_100033600()
{
  result = qword_1000711B8;
  if (!qword_1000711B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000711B8);
  }

  return result;
}

uint64_t sub_100033654()
{
  if (qword_1000703E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_1000336CC(uint64_t a1)
{
  v2 = sub_1000333F4();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10003376C()
{
  result = qword_1000711D0;
  if (!qword_1000711D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000711D0);
  }

  return result;
}

unint64_t sub_1000337C4()
{
  result = qword_1000711D8;
  if (!qword_1000711D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000711D8);
  }

  return result;
}

uint64_t sub_10003381C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return _swift_task_switch(sub_100033840, 0, 0);
}

uint64_t sub_100033840()
{
  sub_10004C084();
  v1 = [*(v0 + 16) eventStore];
  swift_unknownObjectRelease();
  if (v1)
  {
    v2 = [objc_opt_self() defaultBirthdayAlarmOffsetWithEventStore:v1];
    v3 = [v2 integerValue];
    if (v3 == sub_10004C524())
    {
      v4 = 0;
    }

    else
    {
      v5 = [v2 doubleValue];
      v4 = sub_1000364F8(v5, v6);
    }
  }

  else
  {
    v4 = 0;
  }

  **(v0 + 24) = v4;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100033958(uint64_t a1, _BYTE *a2)
{
  *(v2 + 24) = *(a1 + 8);
  *(v2 + 32) = *a2;
  return _swift_task_switch(sub_100033984, 0, 0);
}

uint64_t sub_100033984()
{
  sub_10004C084();
  v1 = [*(v0 + 16) eventStore];
  swift_unknownObjectRelease();
  if (v1)
  {
    if (*(v0 + 32) > 1u || *(v0 + 32))
    {
      v2 = sub_10004C844();

      if ((v2 & 1) == 0)
      {
        v3 = objc_opt_self();
        v4.super.super.isa = sub_10004C7D4().super.super.isa;
        goto LABEL_8;
      }
    }

    else
    {
    }

    v3 = objc_opt_self();
    sub_10004C524();
    v4.super.super.isa = sub_10004C7E4().super.super.isa;
LABEL_8:
    isa = v4.super.super.isa;
    [v3 setDefaultAlarmOffset:v4.super.super.isa forAlarmType:2 eventStore:v1];
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100033B6C()
{
  v0 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v0 - 8);
  v2 = &v12[-v1];
  v3 = sub_10004C554();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_10004C5A4();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10004C754();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10004C564();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  sub_10004C744();
  sub_10004C594();
  (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  sub_10004C574();
  (*(v10 + 56))(v2, 1, 1, v9);
  return sub_10004C4C4();
}

uint64_t sub_100033E40@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v1 = sub_1000057AC(&qword_1000705B0, &unk_10004E990);
  __chkstk_darwin(v1 - 8);
  v21 = &v20 - v2;
  v3 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  v6 = sub_10004C554();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004C5A4();
  __chkstk_darwin(v10 - 8);
  v11 = sub_10004C754();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10004C564();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  __chkstk_darwin(v14);
  sub_10004C744();
  sub_10004C594();
  (*(v7 + 104))(v9, enum case for LocalizedStringResource.BundleDescription.main(_:), v6);
  sub_10004C574();
  (*(v13 + 56))(v5, 1, 1, v12);
  if (qword_100070428 != -1)
  {
    swift_once();
  }

  v15 = sub_10004C3C4();
  v16 = sub_100005C58(v15, qword_100071B70);
  v17 = *(v15 - 8);
  v18 = v21;
  (*(v17 + 16))(v21, v16, v15);
  (*(v17 + 56))(v18, 0, 1, v15);
  sub_10004C544();
  return sub_10004C3E4();
}

uint64_t sub_100034270()
{
  sub_1000057AC(&qword_100070E98, &qword_1000511E8);
  sub_10004C0F4();
  sub_10004C0E4();
  result = sub_10004C0A4();
  qword_100071B08 = result;
  return result;
}

uint64_t sub_1000342E0()
{
  v0 = qword_100071150;

  return v0;
}

unint64_t sub_10003431C()
{
  result = qword_1000711E0;
  if (!qword_1000711E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000711E0);
  }

  return result;
}

unint64_t sub_100034374()
{
  result = qword_1000711E8;
  if (!qword_1000711E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000711E8);
  }

  return result;
}

unint64_t sub_1000343CC()
{
  result = qword_1000711F0;
  if (!qword_1000711F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000711F0);
  }

  return result;
}

unint64_t sub_100034424()
{
  result = qword_1000711F8;
  if (!qword_1000711F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000711F8);
  }

  return result;
}

uint64_t sub_100034478@<X0>(void *a1@<X8>)
{
  if (qword_1000703F0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_100071B08;
}

unint64_t sub_1000344EC()
{
  result = qword_100071200;
  if (!qword_100071200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071200);
  }

  return result;
}

unint64_t sub_100034544()
{
  result = qword_100071208;
  if (!qword_100071208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071208);
  }

  return result;
}

unint64_t sub_10003459C()
{
  result = qword_100071210;
  if (!qword_100071210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071210);
  }

  return result;
}

unint64_t sub_1000345F4()
{
  result = qword_100071218;
  if (!qword_100071218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071218);
  }

  return result;
}

uint64_t sub_1000346B0(uint64_t a1)
{
  v2 = sub_10003376C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100034700()
{
  result = qword_100071230;
  if (!qword_100071230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071230);
  }

  return result;
}

uint64_t sub_100034758(uint64_t a1)
{
  v2 = sub_1000345F4();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_1000347EC()
{
  v0 = sub_10004C554();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10004C5A4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10004C754();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10004C564();
  sub_100005C90(v6, qword_100071B10);
  sub_100005C58(v6, qword_100071B10);
  sub_10004C744();
  sub_10004C594();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_10004C574();
}

uint64_t sub_1000349EC()
{
  result = swift_getKeyPath();
  qword_100071B28 = result;
  return result;
}

uint64_t sub_100034A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  sub_10004C7C4();
  v3[9] = sub_10004C7B4();
  v5 = sub_10004C7A4();
  v3[10] = v5;
  v3[11] = v4;

  return _swift_task_switch(sub_100034AB0, v5, v4);
}

uint64_t sub_100034AB0()
{
  sub_10004C1F4();
  v1 = v0[2];
  v0[4] = v1;
  v2 = v0[3];
  v0[12] = v1;
  v0[13] = v2;
  v0[5] = v2;
  sub_10004C1F4();
  if (qword_100070400 != -1)
  {
    swift_once();
  }

  v3 = qword_100071B28;
  v0[14] = qword_100071B28;

  v4 = swift_task_alloc();
  v0[15] = v4;
  v5 = sub_100005D70(&qword_1000712A0, &qword_1000712A8, &qword_100052790, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_100023EBC;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 17, v3, &type metadata for SettingsBirthdaysDefaultAlertTimeType, v5);
}

uint64_t (*sub_100034C0C(uint64_t *a1))()
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
  *(v2 + 32) = sub_10004C1E4();
  return sub_100003760;
}

uint64_t (*sub_100034C80(uint64_t *a1))()
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
  *(v2 + 32) = sub_10004C1E4();
  return sub_100005F04;
}

uint64_t sub_100034CF4()
{
  if (qword_100070400 != -1)
  {
    swift_once();
  }
}

unint64_t sub_100034D54()
{
  result = qword_100071250;
  if (!qword_100071250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071250);
  }

  return result;
}

unint64_t sub_100034DAC()
{
  result = qword_100071258;
  if (!qword_100071258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071258);
  }

  return result;
}

uint64_t sub_100034EC8(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002E00;

  return sub_100034A14(a1, v5, v4);
}

uint64_t sub_100034F74@<X0>(uint64_t *a2@<X8>)
{
  result = sub_100035D28();
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

uint64_t sub_100034FA0(uint64_t a1)
{
  v2 = sub_10002DD10();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100034FE0()
{
  result = qword_100071260;
  if (!qword_100071260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071260);
  }

  return result;
}

unint64_t sub_100035038()
{
  result = qword_100071268;
  if (!qword_100071268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071268);
  }

  return result;
}

uint64_t sub_10003508C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return _swift_task_switch(sub_1000350B0, 0, 0);
}

uint64_t sub_1000350B0()
{
  v1 = v0[3];
  sub_10004C084();
  *v1 = sub_1000365E4(v0[2]);
  v1[1] = v2;
  v3 = v0[1];

  return v3();
}

uint64_t sub_100035124(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000337C4();
  *v4 = v2;
  v4[1] = sub_100003DE4;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1000351D8()
{
  result = qword_100071270;
  if (!qword_100071270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071270);
  }

  return result;
}

unint64_t sub_100035230()
{
  result = qword_100071278;
  if (!qword_100071278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071278);
  }

  return result;
}

uint64_t sub_100035284(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000337C4();
  *v5 = v2;
  v5[1] = sub_100005F1C;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100035338(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000337C4();
  *v4 = v2;
  v4[1] = sub_100005F00;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1000353EC()
{
  result = qword_100071280;
  if (!qword_100071280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071280);
  }

  return result;
}

unint64_t sub_100035444()
{
  result = qword_100071288;
  if (!qword_100071288)
  {
    sub_100002C4C(&unk_100071290, qword_100052580);
    sub_10003459C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071288);
  }

  return result;
}

uint64_t sub_1000354C8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100034424();
  *v5 = v2;
  v5[1] = sub_100005EFC;

  return EntityQuery.results()(a1, a2, v6);
}

__n128 sub_10003557C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100035590(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1000355D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10003569C@<X0>(uint64_t a1@<X8>)
{
  v10[1] = a1;
  v1 = sub_10004C704();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1000057AC(&qword_100070ED0, &qword_1000507C0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v10 - v4;
  v10[0] = "t setting for birthday events";
  v6 = [objc_opt_self() mainBundle];
  v9._countAndFlagsBits = 0x800000010005E940;
  v11._countAndFlagsBits = 0xD000000000000023;
  v11._object = 0x800000010005E910;
  v12.value._countAndFlagsBits = 0;
  v12.value._object = 0;
  v7.super.isa = v6;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  sub_10004C534(v11, v12, v7, v13, 0xD000000000000038, v9);

  swift_getKeyPath();
  sub_10004C6F4();
  sub_1000334AC();
  sub_100036960();
  sub_100035038();
  sub_10004C714();
  sub_10004C6A4();
  sub_100005D70(&qword_100070EE0, &qword_100070ED0, &qword_1000507C0, &protocol conformance descriptor for ControlPicker<A>);
  sub_10004C6C4();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100035994@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10004C554();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004C5A4();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10004C754();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10004C564();
  __chkstk_darwin(v8 - 8);
  sub_10004C744();
  sub_10004C594();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_10004C574();
  result = sub_10004C6D4();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_100035BC8@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10004C564();
  __chkstk_darwin(v4 - 8);
  sub_100032A08(*a1, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_10004C6D4();
  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v9;
  return result;
}

uint64_t sub_100035C60(unsigned __int8 *a1)
{
  v2 = sub_10004C564();
  __chkstk_darwin(v2 - 8);
  sub_100032A08(*a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10004C6D4();
  return sub_10004C734();
}

uint64_t sub_100035D28()
{
  v0 = sub_10004C494();
  v1 = *(v0 - 8);
  v52 = v0;
  v53 = v1;
  __chkstk_darwin(v0);
  v51 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000057AC(&unk_100070570, &unk_10004D430);
  v4 = __chkstk_darwin(v3 - 8);
  v50 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v48 = &v34 - v6;
  v7 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v7 - 8);
  v49 = &v34 - v8;
  v9 = sub_10004C554();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10004C5A4();
  __chkstk_darwin(v13 - 8);
  v14 = sub_10004C754();
  __chkstk_darwin(v14 - 8);
  v15 = sub_10004C564();
  v45 = v15;
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v34 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1000057AC(&qword_1000712B0, &qword_100052798);
  sub_10004C744();
  sub_10004C594();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v10 + 104);
  v35 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v36 = v9;
  v19(v12, enum case for LocalizedStringResource.BundleDescription.main(_:), v9);
  v37 = v19;
  v38 = v10 + 104;
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v19(v12, v18, v9);
  v20 = v49;
  sub_10004C574();
  v21 = *(v16 + 56);
  v44 = v16 + 56;
  v46 = v21;
  v21(v20, 0, 1, v15);
  v22 = sub_10004C1C4();
  v54 = 0uLL;
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  v40 = v24;
  v41 = v23 + 56;
  v25 = v48;
  v24(v48, 1, 1, v22);
  v24(v50, 1, 1, v22);
  v42 = enum case for InputConnectionBehavior.default(_:);
  v26 = *(v53 + 104);
  v53 += 104;
  v43 = v26;
  v26(v51);
  sub_10003376C();
  v27 = v25;
  v47 = sub_10004C224();
  v39 = sub_1000057AC(&unk_1000712B8, &qword_1000527A0);
  sub_10004C744();
  sub_10004C594();
  v28 = v35;
  v29 = v36;
  v30 = v37;
  v37(v12, v35, v36);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v30(v12, v28, v29);
  v31 = v49;
  sub_10004C574();
  v46(v31, 0, 1, v45);
  LOBYTE(v54) = 5;
  v32 = v40;
  v40(v27, 1, 1, v22);
  v32(v50, 1, 1, v22);
  v43(v51, v42, v52);
  sub_1000334AC();
  sub_10004C214();
  sub_1000057AC(&qword_100070E98, &qword_1000511E8);
  sub_10004C0F4();
  v54 = 0u;
  v55 = 0u;
  v56 = 0;
  sub_10004C0E4();
  sub_10004C0A4();
  return v47;
}

uint64_t sub_1000364F8(uint64_t a1, double a2)
{
  if (sub_10004C524() == a2)
  {
    return 0;
  }

  if (a2 == 32400.0)
  {
    return 1;
  }

  if (a2 == -54000.0)
  {
    return 2;
  }

  if (a2 == -140400.0)
  {
    return 3;
  }

  return 4 * (a2 == -572400.0);
}

unint64_t sub_100036598(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10006D760;
  v6._object = a2;
  v4 = sub_10004C834(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000365E4(uint64_t a1)
{
  v2 = sub_10004C554();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004C5A4();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10004C754();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10004C564();
  __chkstk_darwin(v8 - 8);
  sub_1000057AC(&qword_100071248, qword_100052320);
  sub_10004C744();
  sub_10004C594();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_10004C574();
  sub_100005D70(&qword_1000712A0, &qword_1000712A8, &qword_100052790, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  sub_1000334AC();
  v9 = sub_10004C504();
  sub_1000057AC(&qword_100070E98, &qword_1000511E8);
  sub_10004C0F4();
  memset(v11, 0, sizeof(v11));
  v12 = 0;

  sub_10004C0E4();
  sub_10004C0A4();
  *&v11[0] = a1;

  swift_unknownObjectRetain();
  sub_10004C094();

  swift_unknownObjectRelease();
  return v9;
}

unint64_t sub_100036960()
{
  result = qword_1000712D8;
  if (!qword_1000712D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000712D8);
  }

  return result;
}

uint64_t sub_1000369D0()
{
  v0 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_10004C554();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004C5A4();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10004C754();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10004C564();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_10004C4D4();
  sub_100005C90(v10, qword_100071B30);
  sub_100005C58(v10, qword_100071B30);
  sub_10004C744();
  sub_10004C594();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_10004C584();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_10004C4C4();
}

uint64_t sub_100036CB4()
{
  v0 = sub_1000057AC(&qword_1000705B0, &unk_10004E990);
  __chkstk_darwin(v0 - 8);
  v78 = &v70 - v1;
  v2 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v2 - 8);
  v96 = &v70 - v3;
  v95 = sub_10004C554();
  v4 = *(v95 - 8);
  __chkstk_darwin(v95);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004C5A4();
  __chkstk_darwin(v7 - 8);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004C754();
  __chkstk_darwin(v10 - 8);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10004C564();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v93 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v70 - v17;
  sub_1000057AC(&qword_100071440, &qword_100053238);
  v19 = sub_1000057AC(&qword_100071448, &unk_100053240);
  v20 = (*(*(v19 - 8) + 80) + 32) & ~*(*(v19 - 8) + 80);
  v89 = *(*(v19 - 8) + 72);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100052890;
  v73 = v21;
  v92 = v19;
  v72 = *(v19 + 48);
  v90 = v21 + v20;
  *(v21 + v20) = 0;
  sub_10004C744();
  sub_10004C594();
  v86 = *(v4 + 104);
  v22 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v94 = v4 + 104;
  v86(v6);
  v23 = v6;
  v76 = v18;
  v24 = v12;
  v25 = v9;
  v26 = v23;
  sub_10004C574();
  v27 = *(v14 + 56);
  v91 = v13;
  v87 = v27;
  v88 = v14 + 56;
  v27(v96, 1, 1, v13);
  if (qword_100070428 != -1)
  {
    swift_once();
  }

  v28 = sub_10004C3C4();
  v77 = sub_100005C58(v28, qword_100071B70);
  v84 = v28;
  v29 = *(v28 - 8);
  v30 = *(v29 + 16);
  v75 = v29 + 16;
  v80 = v30;
  v31 = v78;
  v30(v78, v77, v28);
  v81 = *(v29 + 56);
  v85 = v29 + 56;
  v81(v31, 0, 1, v28);
  sub_1000057AC(&qword_100070AA0, &unk_10004F410);
  v71 = *(v14 + 72);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_10004EA40;
  sub_10004C744();
  sub_10004C594();
  v32 = v22;
  v33 = v22;
  v34 = v95;
  v35 = v86;
  (v86)(v26, v33, v95);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v36 = v34;
  v35(v26, v32, v34);
  sub_10004C574();
  v82 = v32;
  sub_10004C544();
  v37 = v90;
  v38 = v25;
  v39 = v35;
  v40 = v78;
  sub_10004C3E4();
  v71 = v37 + v89;
  v72 = *(v92 + 48);
  *v71 = 1;
  sub_10004C744();
  v79 = v38;
  sub_10004C594();
  v83 = v26;
  v39(v26, v32, v36);
  sub_10004C574();
  v87(v96, 1, 1, v91);
  v41 = v77;
  v42 = v84;
  v43 = v80;
  v80(v40, v77, v84);
  v44 = v42;
  v45 = v81;
  v81(v40, 0, 1, v44);
  sub_10004C544();
  sub_10004C3E4();
  v46 = v89;
  v72 = 2 * v89;
  v70 = v90 + 2 * v89;
  v71 = *(v92 + 48);
  *v70 = 2;
  v74 = v24;
  sub_10004C744();
  sub_10004C594();
  (v86)(v83, v82, v95);
  sub_10004C574();
  v87(v96, 1, 1, v91);
  v47 = v78;
  v48 = v41;
  v49 = v84;
  v43(v78, v48, v84);
  v45(v47, 0, 1, v49);
  sub_10004C544();
  sub_10004C3E4();
  v50 = v72 + v46;
  v51 = v90;
  v71 = v90 + v50;
  v52 = v92;
  v72 = *(v92 + 48);
  *v71 = 3;
  sub_10004C744();
  sub_10004C594();
  v53 = v82;
  v54 = v86;
  (v86)(v83, v82, v95);
  sub_10004C574();
  v55 = v91;
  v87(v96, 1, 1, v91);
  v81(v47, 1, 1, v84);
  sub_10004C544();
  sub_10004C3E4();
  v72 = 4 * v89;
  v70 = v51 + 4 * v89;
  v71 = *(v52 + 48);
  *(v51 + v72) = 4;
  sub_10004C744();
  sub_10004C594();
  v56 = v95;
  v54(v83, v53, v95);
  sub_10004C574();
  v57 = v55;
  v58 = v87;
  v87(v96, 1, 1, v57);
  v59 = v78;
  v60 = v77;
  v61 = v84;
  v80(v78, v77, v84);
  v81(v59, 0, 1, v61);
  sub_10004C544();
  sub_10004C3E4();
  v71 = v90 + v72 + v89;
  v72 = *(v92 + 48);
  *v71 = 5;
  sub_10004C744();
  sub_10004C594();
  (v86)(v83, v82, v56);
  sub_10004C574();
  v62 = v96;
  v58(v96, 1, 1, v91);
  v63 = v59;
  v64 = v84;
  v80(v59, v60, v84);
  v65 = v81;
  v81(v59, 0, 1, v64);
  sub_10004C544();
  sub_10004C3E4();
  v66 = v90;
  v71 = v90 + 6 * v89;
  v72 = *(v92 + 48);
  *v71 = 6;
  sub_10004C744();
  sub_10004C594();
  (v86)(v83, v82, v95);
  sub_10004C574();
  v87(v62, 1, 1, v91);
  v67 = v84;
  v80(v63, v77, v84);
  v65(v63, 0, 1, v67);
  sub_10004C544();
  sub_10004C3E4();
  *(v66 - v89 + 8 * v89) = 7;
  sub_10004C744();
  sub_10004C594();
  (v86)(v83, v82, v95);
  sub_10004C574();
  v87(v62, 1, 1, v91);
  v80(v63, v77, v67);
  v81(v63, 0, 1, v67);
  sub_10004C544();
  sub_10004C3E4();
  v68 = sub_10004ADC4(v73);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100071B48 = v68;
  return result;
}

uint64_t sub_100037EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000057AC(&qword_100070AB0, &unk_10004F490);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  if (qword_100070410 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = qword_100071B48;
  if (*(qword_100071B48 + 16) && (v11 = sub_100048834(a1), (v12 & 1) != 0))
  {
    v13 = v11;
    v14 = *(v10 + 56);
    v15 = sub_10004C414();
    v16 = *(v15 - 8);
    (*(v16 + 16))(v6, v14 + *(v16 + 72) * v13, v15);
    (*(v16 + 56))(v6, 0, 1, v15);
  }

  else
  {
    v15 = sub_10004C414();
    (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  }

  sub_10004C414();
  if ((*(*(v15 - 8) + 48))(v6, 1, v15))
  {
    sub_1000159C4(v6, &qword_100070AB0, &unk_10004F490);
    swift_endAccess();
    v17 = sub_10004C564();
    v18 = *(v17 - 8);
    (*(v18 + 56))(v9, 1, 1, v17);
    sub_10004C544();
    result = (*(v18 + 48))(v9, 1, v17);
    if (result != 1)
    {
      return sub_1000159C4(v9, &qword_100070E80, &qword_10004E200);
    }
  }

  else
  {
    sub_10004C3D4();
    sub_1000159C4(v6, &qword_100070AB0, &unk_10004F490);
    swift_endAccess();
    v20 = sub_10004C564();
    v21 = *(v20 - 8);
    (*(v21 + 56))(v9, 0, 1, v20);
    return (*(v21 + 32))(a2, v9, v20);
  }

  return result;
}

unint64_t sub_1000382D4()
{
  result = qword_1000712F0;
  if (!qword_1000712F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000712F0);
  }

  return result;
}

unint64_t sub_100038344@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10003B678(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_10003837C()
{
  result = qword_1000712F8;
  if (!qword_1000712F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000712F8);
  }

  return result;
}

unint64_t sub_1000383D4()
{
  result = qword_100071300;
  if (!qword_100071300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071300);
  }

  return result;
}

unint64_t sub_10003842C()
{
  result = qword_100071308;
  if (!qword_100071308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071308);
  }

  return result;
}

void sub_100038480(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000676E697474;
  v4 = 0x65536D6574737973;
  v5 = 0xE600000000000000;
  v6 = 0x796164697266;
  if (v2 != 6)
  {
    v6 = 0x7961647275746173;
    v5 = 0xE800000000000000;
  }

  v7 = 0xE900000000000079;
  v8 = 0x616473656E646577;
  if (v2 != 4)
  {
    v8 = 0x7961647372756874;
    v7 = 0xE800000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x79616473657574;
  if (v2 == 2)
  {
    v10 = 0x7961646E6F6DLL;
  }

  else
  {
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = 0x7961646E7573;
    v3 = 0xE600000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_100038580()
{
  result = qword_100071310;
  if (!qword_100071310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071310);
  }

  return result;
}

unint64_t sub_1000385D8()
{
  result = qword_100071318;
  if (!qword_100071318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071318);
  }

  return result;
}

unint64_t sub_100038634()
{
  result = qword_100071320;
  if (!qword_100071320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071320);
  }

  return result;
}

unint64_t sub_1000386EC()
{
  result = qword_100071328;
  if (!qword_100071328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071328);
  }

  return result;
}

uint64_t sub_100038740(uint64_t a1)
{
  v2 = sub_1000386EC();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100038790()
{
  result = qword_100071330;
  if (!qword_100071330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071330);
  }

  return result;
}

unint64_t sub_1000387E8()
{
  result = qword_100071338;
  if (!qword_100071338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071338);
  }

  return result;
}

unint64_t sub_100038840()
{
  result = qword_100071340;
  if (!qword_100071340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071340);
  }

  return result;
}

uint64_t sub_100038894()
{
  if (qword_100070410 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_10003890C(uint64_t a1)
{
  v2 = sub_100038634();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000389AC()
{
  result = qword_100071358;
  if (!qword_100071358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071358);
  }

  return result;
}

unint64_t sub_100038A04()
{
  result = qword_100071360;
  if (!qword_100071360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071360);
  }

  return result;
}

id sub_100038A7C()
{
  result = [objc_opt_self() sharedPreferences];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 16);
    v4 = [result weekStart];

    *v3 = sub_10003B46C(v4);
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100038B5C()
{
  v1 = sub_100038290(*(v0 + 16));
  result = [objc_opt_self() sharedPreferences];
  if (result)
  {
    v3 = result;
    [result setWeekStart:v1];

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100038C08()
{
  v0 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v0 - 8);
  v2 = &v12[-v1];
  v3 = sub_10004C554();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_10004C5A4();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10004C754();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10004C564();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  sub_10004C744();
  sub_10004C594();
  (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  sub_10004C574();
  (*(v10 + 56))(v2, 1, 1, v9);
  return sub_10004C4C4();
}

uint64_t sub_100038EE4@<X0>(uint64_t a1@<X8>)
{
  v19[0] = a1;
  v1 = sub_1000057AC(&qword_1000705B0, &unk_10004E990);
  __chkstk_darwin(v1 - 8);
  v3 = v19 - v2;
  v4 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v4 - 8);
  v6 = v19 - v5;
  v7 = sub_10004C554();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10004C5A4();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10004C754();
  __chkstk_darwin(v12 - 8);
  v13 = sub_10004C564();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  sub_10004C744();
  sub_10004C594();
  (*(v8 + 104))(v10, enum case for LocalizedStringResource.BundleDescription.main(_:), v7);
  sub_10004C574();
  (*(v14 + 56))(v6, 1, 1, v13);
  if (qword_100070428 != -1)
  {
    swift_once();
  }

  v15 = sub_10004C3C4();
  v16 = sub_100005C58(v15, qword_100071B70);
  v17 = *(v15 - 8);
  (*(v17 + 16))(v3, v16, v15);
  (*(v17 + 56))(v3, 0, 1, v15);
  return sub_10004C404();
}

uint64_t sub_1000392C0()
{
  v0 = qword_1000712E0;

  return v0;
}

unint64_t sub_1000392FC()
{
  result = qword_100071368;
  if (!qword_100071368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071368);
  }

  return result;
}

unint64_t sub_100039354()
{
  result = qword_100071370;
  if (!qword_100071370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071370);
  }

  return result;
}

unint64_t sub_1000393AC()
{
  result = qword_100071378;
  if (!qword_100071378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071378);
  }

  return result;
}

unint64_t sub_100039404()
{
  result = qword_100071380;
  if (!qword_100071380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071380);
  }

  return result;
}

unint64_t sub_10003945C()
{
  result = qword_100071388;
  if (!qword_100071388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071388);
  }

  return result;
}

unint64_t sub_1000394B4()
{
  result = qword_100071390;
  if (!qword_100071390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071390);
  }

  return result;
}

unint64_t sub_10003950C()
{
  result = qword_100071398;
  if (!qword_100071398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071398);
  }

  return result;
}

unint64_t sub_100039564()
{
  result = qword_1000713A0;
  if (!qword_1000713A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000713A0);
  }

  return result;
}

uint64_t sub_100039620(uint64_t a1)
{
  v2 = sub_1000389AC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100039670()
{
  result = qword_1000713B8;
  if (!qword_1000713B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000713B8);
  }

  return result;
}

uint64_t sub_1000396C8(uint64_t a1)
{
  v2 = sub_100039564();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10003975C()
{
  v0 = sub_10004C554();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10004C5A4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10004C754();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10004C564();
  sub_100005C90(v6, qword_100071B50);
  sub_100005C58(v6, qword_100071B50);
  sub_10004C744();
  sub_10004C594();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_10004C574();
}

uint64_t sub_10003995C()
{
  result = swift_getKeyPath();
  qword_100071B68 = result;
  return result;
}

uint64_t sub_100039984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  sub_10004C7C4();
  v3[7] = sub_10004C7B4();
  v5 = sub_10004C7A4();
  v3[8] = v5;
  v3[9] = v4;

  return _swift_task_switch(sub_100039A20, v5, v4);
}

uint64_t sub_100039A20()
{
  sub_10004C1F4();
  v1 = v0[2];
  v0[3] = v1;
  v0[10] = v1;
  sub_10004C1F4();
  if (qword_100070420 != -1)
  {
    swift_once();
  }

  v2 = qword_100071B68;
  v0[11] = qword_100071B68;

  v3 = swift_task_alloc();
  v0[12] = v3;
  v4 = sub_100005D70(&qword_100071418, &qword_100071420, &qword_1000531E8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v3 = v0;
  v3[1] = sub_100003440;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 14, v2, &type metadata for SettingsStartWeekOnType, v4);
}

uint64_t (*sub_100039B74(uint64_t *a1))()
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
  *(v2 + 32) = sub_10004C1E4();
  return sub_100003760;
}

uint64_t (*sub_100039BE8(uint64_t *a1))()
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
  *(v2 + 32) = sub_10004C1E4();
  return sub_100005F04;
}

uint64_t sub_100039C5C()
{
  if (qword_100070420 != -1)
  {
    swift_once();
  }
}

unint64_t sub_100039CBC()
{
  result = qword_1000713D0;
  if (!qword_1000713D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000713D0);
  }

  return result;
}

unint64_t sub_100039D14()
{
  result = qword_1000713D8;
  if (!qword_1000713D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000713D8);
  }

  return result;
}

uint64_t sub_100039E30(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002E00;

  return sub_100039984(a1, v5, v4);
}

uint64_t sub_100039EDC@<X0>(uint64_t *a2@<X8>)
{
  result = sub_10003AD10();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100039F04(uint64_t a1)
{
  v2 = sub_10002DDB8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100039F44()
{
  result = qword_1000713E0;
  if (!qword_1000713E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000713E0);
  }

  return result;
}

unint64_t sub_100039F9C()
{
  result = qword_1000713E8;
  if (!qword_1000713E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000713E8);
  }

  return result;
}

uint64_t sub_100039FF0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005F00;

  return sub_10003B6C4();
}

uint64_t sub_10003A094(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100038A04();
  *v4 = v2;
  v4[1] = sub_100003DE4;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10003A148()
{
  result = qword_1000713F0;
  if (!qword_1000713F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000713F0);
  }

  return result;
}

unint64_t sub_10003A1A0()
{
  result = qword_1000713F8;
  if (!qword_1000713F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000713F8);
  }

  return result;
}

uint64_t sub_10003A1F4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100038A04();
  *v5 = v2;
  v5[1] = sub_100005F1C;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10003A2A8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100038A04();
  *v4 = v2;
  v4[1] = sub_100005F00;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10003A35C()
{
  result = qword_100071400;
  if (!qword_100071400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071400);
  }

  return result;
}

unint64_t sub_10003A3B4()
{
  result = qword_100071408;
  if (!qword_100071408)
  {
    sub_100002C4C(&qword_100071410, qword_100053040);
    sub_10003950C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071408);
  }

  return result;
}

uint64_t sub_10003A438(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100039404();
  *v5 = v2;
  v5[1] = sub_100005EFC;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t getEnumTagSinglePayload for SettingsStartWeekOnType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SettingsStartWeekOnType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10003A66C@<X0>(uint64_t a1@<X8>)
{
  v10[1] = a1;
  v1 = sub_10004C704();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1000057AC(&qword_100070ED0, &qword_1000507C0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v10 - v4;
  v6 = [objc_opt_self() mainBundle];
  v9._countAndFlagsBits = 0x800000010005E9F0;
  v11._countAndFlagsBits = 0x6557207472617453;
  v11._object = 0xED00006E4F206B65;
  v12.value._countAndFlagsBits = 0;
  v12.value._object = 0;
  v7.super.isa = v6;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  sub_10004C534(v11, v12, v7, v13, 0xD00000000000002ALL, v9);

  swift_getKeyPath();
  sub_10004C6F4();
  sub_1000386EC();
  sub_10003BA60();
  sub_100039F9C();
  sub_10004C714();
  sub_10004C6A4();
  sub_100005D70(&qword_100070EE0, &qword_100070ED0, &qword_1000507C0, &protocol conformance descriptor for ControlPicker<A>);
  sub_10004C6C4();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10003A974@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10004C554();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004C5A4();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10004C754();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10004C564();
  __chkstk_darwin(v8 - 8);
  sub_10004C744();
  sub_10004C594();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_10004C574();
  result = sub_10004C6D4();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_10003ABB0@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10004C564();
  __chkstk_darwin(v4 - 8);
  sub_100037EBC(*a1, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_10004C6D4();
  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v9;
  return result;
}

uint64_t sub_10003AC48(unsigned __int8 *a1)
{
  v2 = sub_10004C564();
  __chkstk_darwin(v2 - 8);
  sub_100037EBC(*a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10004C6D4();
  return sub_10004C734();
}

uint64_t sub_10003AD10()
{
  v0 = sub_10004C494();
  v1 = *(v0 - 8);
  v52 = v0;
  v53 = v1;
  __chkstk_darwin(v0);
  v51 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000057AC(&unk_100070570, &unk_10004D430);
  v4 = __chkstk_darwin(v3 - 8);
  v50 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v48 = &v34 - v6;
  v7 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v7 - 8);
  v49 = &v34 - v8;
  v9 = sub_10004C554();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10004C5A4();
  __chkstk_darwin(v13 - 8);
  v14 = sub_10004C754();
  __chkstk_darwin(v14 - 8);
  v15 = sub_10004C564();
  v46 = v15;
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v34 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1000057AC(&qword_100071430, &qword_1000531F0);
  sub_10004C744();
  sub_10004C594();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v10 + 104);
  v35 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v36 = v9;
  v19(v12, enum case for LocalizedStringResource.BundleDescription.main(_:), v9);
  v37 = v19;
  v38 = v10 + 104;
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v19(v12, v18, v9);
  v20 = v49;
  sub_10004C574();
  v21 = *(v16 + 56);
  v45 = v16 + 56;
  v47 = v21;
  v21(v20, 0, 1, v15);
  v55[0] = 0;
  v22 = sub_10004C1C4();
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  v40 = v24;
  v41 = v23 + 56;
  v25 = v48;
  v24(v48, 1, 1, v22);
  v24(v50, 1, 1, v22);
  v42 = enum case for InputConnectionBehavior.default(_:);
  v26 = *(v53 + 104);
  v53 += 104;
  v43 = v26;
  v26(v51);
  sub_1000389AC();
  v27 = v25;
  v44 = sub_10004C224();
  v39 = sub_1000057AC(&qword_100071438, &qword_1000531F8);
  sub_10004C744();
  sub_10004C594();
  v28 = v35;
  v29 = v36;
  v30 = v37;
  v37(v12, v35, v36);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v30(v12, v28, v29);
  v31 = v49;
  sub_10004C574();
  v47(v31, 0, 1, v46);
  v54[0] = 8;
  v32 = v40;
  v40(v27, 1, 1, v22);
  v32(v50, 1, 1, v22);
  v43(v51, v42, v52);
  sub_1000386EC();
  sub_10004C214();
  return v44;
}

uint64_t sub_10003B46C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_10003B9DC();
    v2 = v1;
    isa = sub_10004C804(0).super.super.isa;
    v4 = sub_10004C814();

    if (v4)
    {

      return 0;
    }

    else
    {
      v5 = v2;
      v6 = sub_10004C804(1).super.super.isa;
      v7 = sub_10004C814();

      if (v7)
      {

        return 1;
      }

      else
      {
        v8 = v5;
        v9 = sub_10004C804(2).super.super.isa;
        v10 = sub_10004C814();

        if (v10)
        {

          return 2;
        }

        else
        {
          v11 = v8;
          v12 = sub_10004C804(3).super.super.isa;
          v13 = sub_10004C814();

          if (v13)
          {

            return 3;
          }

          else
          {
            v14 = v11;
            v15 = sub_10004C804(4).super.super.isa;
            v16 = sub_10004C814();

            if (v16)
            {

              return 4;
            }

            else
            {
              v17 = v14;
              v18 = sub_10004C804(5).super.super.isa;
              v19 = sub_10004C814();

              if (v19)
              {

                return 5;
              }

              else
              {
                v20 = v17;
                v21 = sub_10004C804(6).super.super.isa;
                v22 = sub_10004C814();

                if (v22)
                {

                  return 6;
                }

                else
                {
                  v23 = sub_10004C804(7).super.super.isa;
                  v24 = sub_10004C814();

                  if (v24)
                  {
                    return 7;
                  }

                  else
                  {
                    return 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_10003B678(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10006D820;
  v6._object = a2;
  v4 = sub_10004C834(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10003B6C4()
{
  v1 = sub_10004C554();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_10004C5A4();
  v0[5] = swift_task_alloc();
  sub_10004C754();
  v0[6] = swift_task_alloc();
  sub_10004C564();
  v0[7] = swift_task_alloc();

  return _swift_task_switch(sub_10003B804, 0, 0);
}

uint64_t sub_10003B804()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v0[3];
  sub_1000057AC(&qword_1000713C8, qword_100052DE0);
  sub_10004C744();
  sub_10004C594();
  (*(v3 + 104))(v1, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_10004C574();
  sub_100005D70(&qword_100071418, &qword_100071420, &qword_1000531E8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  sub_1000386EC();
  v4 = sub_10004C504();

  v5 = v0[1];

  return v5(v4);
}

unint64_t sub_10003B9DC()
{
  result = qword_100071428;
  if (!qword_100071428)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100071428);
  }

  return result;
}

unint64_t sub_10003BA60()
{
  result = qword_100071450;
  if (!qword_100071450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071450);
  }

  return result;
}

uint64_t sub_10003BAD0()
{
  v0 = sub_10004C3C4();
  sub_100005C90(v0, qword_100071B70);
  sub_100005C58(v0, qword_100071B70);
  return sub_10004C3B4();
}

id sub_10003BB34()
{
  result = [objc_allocWithZone(EKEventStore) initWithEKOptions:0x2000];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10003BB6C()
{
  v0 = sub_10004C674();
  sub_100005C90(v0, qword_100071B88);
  sub_100005C58(v0, qword_100071B88);
  return sub_10004C664();
}

uint64_t sub_10003BBF0@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v62 = sub_10004C5C4();
  v65 = *(v62 - 8);
  v1 = __chkstk_darwin(v62);
  v61 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v58 = &v46 - v3;
  v60 = sub_10004C604();
  v64 = *(v60 - 8);
  v4 = __chkstk_darwin(v60);
  v59 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v46 - v6;
  v55 = sub_10004C624();
  v63 = *(v55 - 8);
  v8 = __chkstk_darwin(v55);
  v57 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v46 - v10;
  v12 = sub_10004C5E4();
  v47 = v12;
  v49 = *(v12 - 8);
  v13 = v49;
  v14 = __chkstk_darwin(v12);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v46 - v17;
  v19 = sub_10004C644();
  v50 = v19;
  v52 = *(v19 - 8);
  v20 = v52;
  v21 = __chkstk_darwin(v19);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v46 - v24;
  v51 = &v46 - v24;
  sub_10004C634();
  v48 = v18;
  sub_10004C5D4();
  sub_10004C614();
  sub_10004C5F4();
  sub_10004C5B4();
  v26 = *(v20 + 16);
  v54 = v23;
  v26(v23, v25, v19);
  v66[0] = v23;
  v27 = *(v13 + 16);
  v53 = v16;
  v27(v16, v18, v12);
  v66[1] = v16;
  v28 = v63;
  v29 = v57;
  v30 = v55;
  (*(v63 + 16))(v57, v11, v55);
  v66[2] = v29;
  v31 = v64;
  v32 = v59;
  v33 = v60;
  (*(v64 + 16))(v59, v7, v60);
  v66[3] = v32;
  v34 = v65;
  v35 = v61;
  v36 = v58;
  v37 = v62;
  (*(v65 + 16))(v61, v58, v62);
  v66[4] = v35;
  sub_10003C1F8(v66);
  v38 = *(v34 + 8);
  v65 = v34 + 8;
  v38(v36, v37);
  v39 = *(v31 + 8);
  v64 = v31 + 8;
  v39(v7, v33);
  v40 = *(v28 + 8);
  v63 = v28 + 8;
  v40(v11, v30);
  v41 = *(v49 + 8);
  v42 = v47;
  v41(v48, v47);
  v43 = *(v52 + 8);
  v44 = v50;
  v43(v51, v50);
  v38(v61, v62);
  v39(v59, v60);
  v40(v57, v30);
  v41(v53, v42);
  return (v43)(v54, v44);
}

uint64_t sub_10003C1F8(uint64_t *a1)
{
  v2 = sub_1000057AC(&qword_100071468, &unk_100053328);
  __chkstk_darwin(v2);
  v4 = &v20 - v3;
  v5 = *a1;
  v6 = sub_10004C644();
  (*(*(v6 - 8) + 16))(v4, v5, v6);
  v7 = v2[12];
  v8 = a1[1];
  v9 = sub_10004C5E4();
  (*(*(v9 - 8) + 16))(&v4[v7], v8, v9);
  v10 = v2[16];
  v11 = a1[2];
  v12 = sub_10004C624();
  (*(*(v12 - 8) + 16))(&v4[v10], v11, v12);
  v13 = v2[20];
  v14 = a1[3];
  v15 = sub_10004C604();
  (*(*(v15 - 8) + 16))(&v4[v13], v14, v15);
  v16 = v2[24];
  v17 = a1[4];
  v18 = sub_10004C5C4();
  (*(*(v18 - 8) + 16))(&v4[v16], v17, v18);
  return sub_10004C684();
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10003C424();
  sub_10004C694();
  return 0;
}

unint64_t sub_10003C424()
{
  result = qword_100071460;
  if (!qword_100071460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071460);
  }

  return result;
}

id sub_10003C4A4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

uint64_t sub_10003C4F4()
{
  if (qword_100070430 != -1)
  {
    swift_once();
  }

  v0 = sub_10004C674();
  sub_100005C58(v0, qword_100071B88);
  v1 = sub_10004C654();
  v2 = sub_10004C7F4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Initializing", v3, 2u);
  }

  v4 = objc_allocWithZone(EKEphemeralCacheEventStoreProvider);
  v11 = sub_10003BB34;
  v12 = 0;
  *&v9 = _NSConcreteStackBlock;
  *(&v9 + 1) = 1107296256;
  *&v10 = sub_10003C4A4;
  *(&v10 + 1) = &unk_10006EA00;
  v5 = _Block_copy(&v9);
  v6 = [v4 initWithCreationBlock:v5];
  _Block_release(v5);

  sub_10004C0F4();
  sub_10004C0E4();
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  *(swift_allocObject() + 16) = v6;
  v7 = v6;
  sub_1000057AC(&qword_1000714D0, &qword_100053338);
  sub_10004C0D4();

  return sub_10003C764(&v9);
}

uint64_t sub_10003C708(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003C720()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003C764(uint64_t a1)
{
  v2 = sub_1000057AC(&qword_1000714D8, &qword_100053340);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10003C7D0()
{
  result = qword_1000714E0;
  if (!qword_1000714E0)
  {
    sub_100002C4C(&qword_1000714E8, &qword_100053348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000714E0);
  }

  return result;
}

uint64_t sub_10003C838(char a1)
{
  result = 6710895;
  switch(a1)
  {
    case 1:
      result = 0x6573656E696863;
      break;
    case 2:
      result = 0x776572626568;
      break;
    case 3:
      result = 0x69726A6968;
      break;
    case 4:
      result = 0x6D6D5569726A6968;
      break;
    case 5:
      result = 0x616C676E6162;
      break;
    case 6:
      result = 0x69746172616A7567;
      break;
    case 7:
      result = 0x6164616E6E616BLL;
      break;
    case 8:
      result = 0x616C6179616C616DLL;
      break;
    case 9:
      result = 0x6968746172616DLL;
      break;
    case 10:
      result = 1634296943;
      break;
    case 11:
      result = 0x6C696D6174;
      break;
    case 12:
      result = 0x7567756C6574;
      break;
    case 13:
      result = 0x6D61726B6976;
      break;
    case 14:
      result = 0x6E6165726F6BLL;
      break;
    case 15:
      result = 0x656D616E74656976;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10003CA04()
{
  v0 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_10004C554();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004C5A4();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10004C754();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10004C564();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_10004C4D4();
  sub_100005C90(v10, qword_100071BA0);
  sub_100005C58(v10, qword_100071BA0);
  sub_10004C744();
  sub_10004C594();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_10004C584();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_10004C4C4();
}

uint64_t sub_10003CCE0()
{
  v0 = sub_1000057AC(&qword_1000705B0, &unk_10004E990);
  __chkstk_darwin(v0 - 8);
  v124 = &v117 - v1;
  v2 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v2 - 8);
  v125 = &v117 - v3;
  v4 = sub_10004C554();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004C5A4();
  __chkstk_darwin(v8 - 8);
  v10 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10004C754();
  __chkstk_darwin(v11 - 8);
  v13 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10004C564();
  v119 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v144 = &v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v117 - v17;
  sub_1000057AC(&qword_100071648, &unk_100053D10);
  v19 = sub_1000057AC(&qword_100071650, &qword_1000547B0);
  v20 = (*(*(v19 - 8) + 80) + 32) & ~*(*(v19 - 8) + 80);
  v132 = *(*(v19 - 8) + 72);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1000512C0;
  v120 = v21;
  v140 = v19;
  v121 = *(v19 + 48);
  v133 = v21 + v20;
  *(v21 + v20) = 0;
  sub_10004C744();
  sub_10004C594();
  v22 = *(v5 + 104);
  v139 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v141 = v5 + 104;
  v142 = v4;
  v137 = v22;
  (v22)(v7);
  v122 = v18;
  v23 = v119;
  sub_10004C574();
  v24 = *(v23 + 56);
  v134 = v14;
  v138 = v23 + 56;
  v127 = v24;
  v24(v125, 1, 1, v14);
  if (qword_100070428 != -1)
  {
    swift_once();
  }

  v25 = sub_10004C3C4();
  v26 = sub_100005C58(v25, qword_100071B70);
  v143 = v25;
  v27 = *(v25 - 8);
  v129 = *(v27 + 16);
  v135 = v26;
  v136 = v27 + 16;
  v28 = v124;
  v129(v124, v26, v25);
  v130 = *(v27 + 56);
  v131 = v27 + 56;
  v130(v28, 0, 1, v25);
  sub_1000057AC(&qword_100070AA0, &unk_10004F410);
  v118 = *(v23 + 72);
  v119 = swift_allocObject();
  *(v119 + 16) = xmmword_10004EA40;
  sub_10004C744();
  sub_10004C594();
  v29 = v139;
  v30 = v142;
  v31 = v137;
  v137(v7, v139, v142);
  v32 = v7;
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v33 = v7;
  v34 = v31;
  v31(v33, v29, v30);
  sub_10004C574();
  sub_10004C544();
  v35 = v133;
  v36 = v124;
  sub_10004C3E4();
  v119 = v35 + v132;
  v121 = *(v140 + 48);
  *v119 = 1;
  v123 = v13;
  sub_10004C744();
  v128 = v10;
  sub_10004C594();
  v126 = v32;
  v34(v32, v29, v30);
  sub_10004C574();
  v127(v125, 1, 1, v134);
  v37 = v135;
  v38 = v143;
  v39 = v129;
  v129(v36, v135, v143);
  v40 = v36;
  v41 = v130;
  v130(v40, 0, 1, v38);
  sub_10004C544();
  sub_10004C3E4();
  v42 = v132;
  v121 = 2 * v132;
  v118 = (v35 + 2 * v132);
  v119 = *(v140 + 48);
  *v118 = 2;
  sub_10004C744();
  sub_10004C594();
  v43 = v126;
  v137(v126, v139, v142);
  sub_10004C574();
  v44 = v125;
  v127(v125, 1, 1, v134);
  v45 = v124;
  v46 = v143;
  v39(v124, v37, v143);
  v41(v45, 0, 1, v46);
  sub_10004C544();
  sub_10004C3E4();
  v47 = v133;
  v119 = v133 + v121 + v42;
  v48 = v140;
  v121 = *(v140 + 48);
  *v119 = 3;
  sub_10004C744();
  sub_10004C594();
  v137(v43, v139, v142);
  sub_10004C574();
  v127(v44, 1, 1, v134);
  v49 = v143;
  v50 = v129;
  v129(v45, v135, v143);
  v41(v45, 0, 1, v49);
  sub_10004C544();
  sub_10004C3E4();
  v121 = 4 * v132;
  v118 = (v47 + 4 * v132);
  v119 = *(v48 + 48);
  *(v47 + v121) = 4;
  sub_10004C744();
  sub_10004C594();
  v51 = v142;
  v137(v126, v139, v142);
  sub_10004C574();
  v52 = v134;
  v53 = v127;
  v127(v125, 1, 1, v134);
  v54 = v143;
  v50(v45, v135, v143);
  v130(v45, 0, 1, v54);
  sub_10004C544();
  sub_10004C3E4();
  v55 = v133;
  v119 = v133 + v121 + v132;
  v121 = *(v140 + 48);
  *v119 = 5;
  sub_10004C744();
  sub_10004C594();
  v56 = v139;
  v57 = v51;
  v58 = v137;
  v137(v126, v139, v57);
  sub_10004C574();
  v59 = v125;
  v53(v125, 1, 1, v52);
  v60 = v124;
  v61 = v143;
  v129(v124, v135, v143);
  v130(v60, 0, 1, v61);
  sub_10004C544();
  sub_10004C3E4();
  v119 = v55 + 6 * v132;
  v121 = *(v140 + 48);
  *v119 = 6;
  sub_10004C744();
  sub_10004C594();
  v62 = v126;
  v58(v126, v56, v142);
  sub_10004C574();
  v63 = v127;
  v127(v59, 1, 1, v134);
  v64 = v124;
  v65 = v143;
  v129(v124, v135, v143);
  v66 = v64;
  v130(v64, 0, 1, v65);
  sub_10004C544();
  sub_10004C3E4();
  v121 = 8 * v132;
  v67 = v133;
  v118 = (v133 + 7 * v132);
  v119 = *(v140 + 48);
  *v118 = 7;
  sub_10004C744();
  sub_10004C594();
  v68 = v139;
  v69 = v137;
  v137(v62, v139, v142);
  sub_10004C574();
  v70 = v125;
  v63(v125, 1, 1, v134);
  v71 = v143;
  v129(v66, v135, v143);
  v130(v66, 0, 1, v71);
  sub_10004C544();
  sub_10004C3E4();
  v118 = (v67 + v121);
  v119 = *(v140 + 48);
  *v118 = 8;
  sub_10004C744();
  sub_10004C594();
  v69(v126, v68, v142);
  sub_10004C574();
  v72 = v70;
  v73 = v134;
  v74 = v127;
  v127(v70, 1, 1, v134);
  v75 = v143;
  v129(v66, v135, v143);
  v130(v66, 0, 1, v75);
  sub_10004C544();
  sub_10004C3E4();
  v119 = v133 + v121 + v132;
  v76 = v140;
  v121 = *(v140 + 48);
  *v119 = 9;
  sub_10004C744();
  sub_10004C594();
  v77 = v137;
  v137(v126, v139, v142);
  sub_10004C574();
  v74(v70, 1, 1, v73);
  v78 = v124;
  v79 = v143;
  v80 = v129;
  v129(v124, v135, v143);
  v81 = v130;
  v130(v78, 0, 1, v79);
  sub_10004C544();
  sub_10004C3E4();
  v119 = v133 + 10 * v132;
  v121 = *(v76 + 48);
  *v119 = 10;
  sub_10004C744();
  sub_10004C594();
  v82 = v126;
  v77(v126, v139, v142);
  v83 = v82;
  sub_10004C574();
  v84 = v72;
  v85 = v127;
  v127(v72, 1, 1, v134);
  v86 = v124;
  v87 = v135;
  v88 = v143;
  v80(v124, v135, v143);
  v81(v86, 0, 1, v88);
  sub_10004C544();
  v89 = v84;
  sub_10004C3E4();
  v90 = v132;
  v119 = v133 + 11 * v132;
  v121 = *(v140 + 48);
  *v119 = 11;
  sub_10004C744();
  sub_10004C594();
  v137(v83, v139, v142);
  sub_10004C574();
  v91 = v134;
  v85(v89, 1, 1, v134);
  v92 = v124;
  v93 = v87;
  v94 = v87;
  v95 = v143;
  v129(v124, v93, v143);
  v130(v92, 0, 1, v95);
  sub_10004C544();
  sub_10004C3E4();
  v119 = v133 + 12 * v90;
  v96 = v140;
  v121 = *(v140 + 48);
  *v119 = 12;
  sub_10004C744();
  sub_10004C594();
  v97 = v83;
  v98 = v142;
  v137(v97, v139, v142);
  sub_10004C574();
  v99 = v125;
  v100 = v127;
  v127(v125, 1, 1, v91);
  v101 = v92;
  v102 = v143;
  v129(v92, v94, v143);
  v130(v92, 0, 1, v102);
  sub_10004C544();
  v103 = v99;
  sub_10004C3E4();
  v105 = v132;
  v104 = v133;
  v119 = v133 + 13 * v132;
  v121 = *(v96 + 48);
  *v119 = 13;
  sub_10004C744();
  sub_10004C594();
  v137(v126, v139, v98);
  sub_10004C574();
  v106 = v134;
  v100(v103, 1, 1, v134);
  v107 = v143;
  v108 = v129;
  v129(v101, v135, v143);
  v109 = v130;
  v130(v101, 0, 1, v107);
  sub_10004C544();
  sub_10004C3E4();
  v119 = v104 + 14 * v105;
  v121 = *(v140 + 48);
  *v119 = 14;
  sub_10004C744();
  sub_10004C594();
  v137(v126, v139, v142);
  sub_10004C574();
  v110 = v125;
  v127(v125, 1, 1, v106);
  v111 = v143;
  v108(v101, v135, v143);
  v109(v101, 0, 1, v111);
  sub_10004C544();
  v112 = v110;
  sub_10004C3E4();
  v113 = (v133 - v132 + 16 * v132);
  v132 = *(v140 + 48);
  *v113 = 15;
  sub_10004C744();
  sub_10004C594();
  v137(v126, v139, v142);
  sub_10004C574();
  v127(v112, 1, 1, v134);
  v114 = v143;
  v129(v101, v135, v143);
  v130(v101, 0, 1, v114);
  sub_10004C544();
  sub_10004C3E4();
  v115 = sub_10004AFAC(v120);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100071BB8 = v115;
  return result;
}

uint64_t sub_10003EB68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000057AC(&qword_100070AB0, &unk_10004F490);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  if (qword_100070440 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = qword_100071BB8;
  if (*(qword_100071BB8 + 16) && (v11 = sub_100048878(a1), (v12 & 1) != 0))
  {
    v13 = v11;
    v14 = *(v10 + 56);
    v15 = sub_10004C414();
    v16 = *(v15 - 8);
    (*(v16 + 16))(v6, v14 + *(v16 + 72) * v13, v15);
    (*(v16 + 56))(v6, 0, 1, v15);
  }

  else
  {
    v15 = sub_10004C414();
    (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  }

  sub_10004C414();
  if ((*(*(v15 - 8) + 48))(v6, 1, v15))
  {
    sub_1000159C4(v6, &qword_100070AB0, &unk_10004F490);
    swift_endAccess();
    v17 = sub_10004C564();
    v18 = *(v17 - 8);
    (*(v18 + 56))(v9, 1, 1, v17);
    sub_10004C544();
    result = (*(v18 + 48))(v9, 1, v17);
    if (result != 1)
    {
      return sub_1000159C4(v9, &qword_100070E80, &qword_10004E200);
    }
  }

  else
  {
    sub_10004C3D4();
    sub_1000159C4(v6, &qword_100070AB0, &unk_10004F490);
    swift_endAccess();
    v20 = sub_10004C564();
    v21 = *(v20 - 8);
    (*(v21 + 56))(v9, 0, 1, v20);
    return (*(v21 + 32))(a2, v9, v20);
  }

  return result;
}

uint64_t sub_10003EF3C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10003C838(*a1);
  v5 = v4;
  if (v3 == sub_10003C838(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10004C844();
  }

  return v8 & 1;
}

unint64_t sub_10003EFC8()
{
  result = qword_100071500;
  if (!qword_100071500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071500);
  }

  return result;
}

Swift::Int sub_10003F01C()
{
  v1 = *v0;
  sub_10004C8A4();
  sub_10003C838(v1);
  sub_10004C784();

  return sub_10004C8C4();
}

uint64_t sub_10003F080(uint64_t a1)
{
  sub_10003C838(*v1);
  sub_10004C784();
}

Swift::Int sub_10003F0D4(uint64_t a1)
{
  v2 = *v1;
  sub_10004C8A4();
  sub_10003C838(v2);
  sub_10004C784();

  return sub_10004C8C4();
}

unint64_t sub_10003F134@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100042EF0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_10003F164@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10003C838(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10003F194()
{
  result = qword_100071508;
  if (!qword_100071508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071508);
  }

  return result;
}

unint64_t sub_10003F1EC()
{
  result = qword_100071510;
  if (!qword_100071510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071510);
  }

  return result;
}

unint64_t sub_10003F244()
{
  result = qword_100071518;
  if (!qword_100071518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071518);
  }

  return result;
}

unint64_t sub_10003F29C()
{
  result = qword_100071520;
  if (!qword_100071520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071520);
  }

  return result;
}

unint64_t sub_10003F2F4()
{
  result = qword_100071528;
  if (!qword_100071528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071528);
  }

  return result;
}

unint64_t sub_10003F350()
{
  result = qword_100071530;
  if (!qword_100071530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071530);
  }

  return result;
}

unint64_t sub_10003F408()
{
  result = qword_100071538;
  if (!qword_100071538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071538);
  }

  return result;
}

uint64_t sub_10003F45C(uint64_t a1)
{
  v2 = sub_10003F408();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10003F4AC()
{
  result = qword_100071540;
  if (!qword_100071540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071540);
  }

  return result;
}

unint64_t sub_10003F504()
{
  result = qword_100071548;
  if (!qword_100071548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071548);
  }

  return result;
}

unint64_t sub_10003F55C()
{
  result = qword_100071550;
  if (!qword_100071550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071550);
  }

  return result;
}

uint64_t sub_10003F5B0()
{
  if (qword_100070440 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_10003F628(uint64_t a1)
{
  v2 = sub_10003F350();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10003F6C8()
{
  result = qword_100071568;
  if (!qword_100071568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071568);
  }

  return result;
}

unint64_t sub_10003F720()
{
  result = qword_100071570;
  if (!qword_100071570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071570);
  }

  return result;
}

uint64_t sub_10003F798()
{
  v3 = [objc_opt_self() sharedPreferences];
  if (!v3)
  {
    __break(1u);
    goto LABEL_63;
  }

  v4 = v3;
  v5 = [v3 overlayCalendarID];

  if (!v5)
  {
    sub_10004C774();
    goto LABEL_10;
  }

  v0 = sub_10004C774();
  v1 = v6;

  if (v0)
  {
    v7 = 0;
  }

  else
  {
    v7 = v1 == 0xE000000000000000;
  }

  if (v7 || (sub_10004C844() & 1) != 0)
  {
    goto LABEL_11;
  }

  v11 = sub_10004C774();
  if (!v1)
  {
LABEL_10:

    sub_10004C774();

    sub_10004C774();

    sub_10004C774();

    sub_10004C774();

    sub_10004C774();

    sub_10004C774();

    sub_10004C774();

    sub_10004C774();

    sub_10004C774();

    sub_10004C774();

    sub_10004C774();

    sub_10004C774();

    sub_10004C774();

    sub_10004C774();
LABEL_11:

LABEL_12:
    v8 = 0;
    goto LABEL_13;
  }

  if (v11 == v0 && v1 == v12)
  {

    goto LABEL_26;
  }

  v14 = sub_10004C844();

  if (v14)
  {
LABEL_26:

    v8 = 1;
    goto LABEL_13;
  }

  if (sub_10004C774() == v0 && v1 == v15)
  {

LABEL_28:

    v8 = 2;
    goto LABEL_13;
  }

  v16 = sub_10004C844();

  if (v16)
  {
    goto LABEL_28;
  }

  if (sub_10004C774() == v0 && v1 == v17)
  {

LABEL_33:

    v8 = 3;
    goto LABEL_13;
  }

  v18 = sub_10004C844();

  if (v18)
  {
    goto LABEL_33;
  }

  if (sub_10004C774() == v0 && v1 == v19)
  {

LABEL_38:

    v8 = 4;
    goto LABEL_13;
  }

  v20 = sub_10004C844();

  if (v20)
  {
    goto LABEL_38;
  }

  if (sub_10004C774() == v0 && v1 == v21)
  {

LABEL_43:

    v8 = 5;
    goto LABEL_13;
  }

  v22 = sub_10004C844();

  if (v22)
  {
    goto LABEL_43;
  }

  if (sub_10004C774() == v0 && v1 == v23)
  {

LABEL_48:

    v8 = 6;
    goto LABEL_13;
  }

  v24 = sub_10004C844();

  if (v24)
  {
    goto LABEL_48;
  }

  if (sub_10004C774() == v0 && v1 == v25)
  {

LABEL_53:

    v8 = 7;
    goto LABEL_13;
  }

  v26 = sub_10004C844();

  if (v26)
  {
    goto LABEL_53;
  }

  if (sub_10004C774() == v0 && v1 == v27)
  {

LABEL_58:

    v8 = 8;
    goto LABEL_13;
  }

  v28 = sub_10004C844();

  if (v28)
  {
    goto LABEL_58;
  }

  if (sub_10004C774() == v0 && v1 == v29)
  {

LABEL_64:

    v8 = 9;
    goto LABEL_13;
  }

LABEL_63:
  v30 = sub_10004C844();

  if (v30)
  {
    goto LABEL_64;
  }

  if (sub_10004C774() == v0 && v1 == v31)
  {

LABEL_69:

    v8 = 10;
    goto LABEL_13;
  }

  v32 = sub_10004C844();

  if (v32)
  {
    goto LABEL_69;
  }

  if (sub_10004C774() == v0 && v1 == v33)
  {

LABEL_74:

    v8 = 11;
    goto LABEL_13;
  }

  v34 = sub_10004C844();

  if (v34)
  {
    goto LABEL_74;
  }

  if (sub_10004C774() == v0 && v1 == v35)
  {

LABEL_79:

    v8 = 12;
    goto LABEL_13;
  }

  v36 = sub_10004C844();

  if (v36)
  {
    goto LABEL_79;
  }

  if (sub_10004C774() == v0 && v1 == v37)
  {

LABEL_84:

    v8 = 13;
    goto LABEL_13;
  }

  v38 = sub_10004C844();

  if (v38)
  {
    goto LABEL_84;
  }

  if (sub_10004C774() == v0 && v1 == v39)
  {

LABEL_89:

    v8 = 14;
    goto LABEL_13;
  }

  v40 = sub_10004C844();

  if (v40)
  {
    goto LABEL_89;
  }

  if (sub_10004C774() == v0 && v1 == v41)
  {
  }

  else
  {
    v42 = sub_10004C844();

    if ((v42 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v8 = 15;
LABEL_13:
  **(v2 + 16) = v8;
  v9 = *(v2 + 8);

  return v9();
}

uint64_t sub_10003FFF0()
{
  switch(*(v0 + 16))
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
      sub_10004C774();
      break;
    default:
      break;
  }

  v1 = [objc_opt_self() sharedPreferences];
  if (!v1)
  {
    __break(1u);
    JUMPOUT(0x10004019CLL);
  }

  v2 = v1;
  v3 = sub_10004C764();

  [v2 setOverlayCalendarID:v3];

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000401DC()
{
  v0 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v0 - 8);
  v2 = &v12[-v1];
  v3 = sub_10004C554();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_10004C5A4();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10004C754();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10004C564();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  sub_10004C744();
  sub_10004C594();
  (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  sub_10004C574();
  (*(v10 + 56))(v2, 1, 1, v9);
  return sub_10004C4C4();
}

uint64_t sub_1000404B0@<X0>(uint64_t a1@<X8>)
{
  v19[0] = a1;
  v1 = sub_1000057AC(&qword_1000705B0, &unk_10004E990);
  __chkstk_darwin(v1 - 8);
  v3 = v19 - v2;
  v4 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v4 - 8);
  v6 = v19 - v5;
  v7 = sub_10004C554();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10004C5A4();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10004C754();
  __chkstk_darwin(v12 - 8);
  v13 = sub_10004C564();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  sub_10004C744();
  sub_10004C594();
  (*(v8 + 104))(v10, enum case for LocalizedStringResource.BundleDescription.main(_:), v7);
  sub_10004C574();
  (*(v14 + 56))(v6, 1, 1, v13);
  if (qword_100070428 != -1)
  {
    swift_once();
  }

  v15 = sub_10004C3C4();
  v16 = sub_100005C58(v15, qword_100071B70);
  v17 = *(v15 - 8);
  (*(v17 + 16))(v3, v16, v15);
  (*(v17 + 56))(v3, 0, 1, v15);
  return sub_10004C404();
}

uint64_t sub_100040884()
{
  v0 = qword_1000714F0;

  return v0;
}

unint64_t sub_1000408C0()
{
  result = qword_100071578;
  if (!qword_100071578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071578);
  }

  return result;
}

unint64_t sub_100040918()
{
  result = qword_100071580;
  if (!qword_100071580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071580);
  }

  return result;
}

unint64_t sub_100040970()
{
  result = qword_100071588;
  if (!qword_100071588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071588);
  }

  return result;
}

unint64_t sub_1000409C4()
{
  result = qword_100071590;
  if (!qword_100071590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071590);
  }

  return result;
}

unint64_t sub_100040A1C()
{
  result = qword_100071598;
  if (!qword_100071598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071598);
  }

  return result;
}

unint64_t sub_100040A74()
{
  result = qword_1000715A0;
  if (!qword_1000715A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000715A0);
  }

  return result;
}

unint64_t sub_100040ACC()
{
  result = qword_1000715A8;
  if (!qword_1000715A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000715A8);
  }

  return result;
}

unint64_t sub_100040B24()
{
  result = qword_1000715B0;
  if (!qword_1000715B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000715B0);
  }

  return result;
}

uint64_t sub_100040BE0(uint64_t a1)
{
  v2 = sub_10003F6C8();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100040C30()
{
  result = qword_1000715C8;
  if (!qword_1000715C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000715C8);
  }

  return result;
}

uint64_t sub_100040C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100005EFC;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100040D4C(uint64_t a1)
{
  v2 = sub_100040B24();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100040DE0()
{
  v0 = sub_10004C554();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10004C5A4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10004C754();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10004C564();
  sub_100005C90(v6, qword_100071BC0);
  sub_100005C58(v6, qword_100071BC0);
  sub_10004C744();
  sub_10004C594();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_10004C574();
}

uint64_t sub_100040FE0()
{
  result = swift_getKeyPath();
  qword_100071BD8 = result;
  return result;
}

uint64_t sub_100041008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  sub_10004C7C4();
  v3[7] = sub_10004C7B4();
  v5 = sub_10004C7A4();
  v3[8] = v5;
  v3[9] = v4;

  return _swift_task_switch(sub_1000410A4, v5, v4);
}

uint64_t sub_1000410A4()
{
  sub_10004C1F4();
  v1 = v0[2];
  v0[3] = v1;
  v0[10] = v1;
  sub_10004C1F4();
  if (qword_100070450 != -1)
  {
    swift_once();
  }

  v2 = qword_100071BD8;
  v0[11] = qword_100071BD8;

  v3 = swift_task_alloc();
  v0[12] = v3;
  v4 = sub_100005D70(&qword_100071628, &qword_100071630, &qword_100053CC0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v3 = v0;
  v3[1] = sub_1000411F8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 14, v2, &type metadata for SettingsAlternateCalendarType, v4);
}

uint64_t sub_1000411F8()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_100003604;
  }

  else
  {
    v5 = sub_10004134C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10004134C()
{
  sub_10004C1F4();
  switch(*(v0 + 113))
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
      sub_10004C774();
      break;
    default:
      break;
  }

  v1 = [objc_opt_self() sharedPreferences];
  if (!v1)
  {
    __break(1u);
    JUMPOUT(0x100041518);
  }

  v2 = v1;

  v3 = sub_10004C764();

  [v2 setOverlayCalendarID:v3];

  sub_10004C1D4();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t (*sub_100041558(uint64_t *a1))()
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
  *(v2 + 32) = sub_10004C1E4();
  return sub_100003760;
}

uint64_t (*sub_1000415CC(uint64_t *a1))()
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
  *(v2 + 32) = sub_10004C1E4();
  return sub_100005F04;
}

uint64_t sub_100041640()
{
  if (qword_100070450 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1000416A0()
{
  result = qword_1000715E0;
  if (!qword_1000715E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000715E0);
  }

  return result;
}

unint64_t sub_1000416F8()
{
  result = qword_1000715E8;
  if (!qword_1000715E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000715E8);
  }

  return result;
}

uint64_t sub_100041814(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005EFC;

  return sub_100041008(a1, v5, v4);
}

uint64_t sub_1000418C0@<X0>(uint64_t *a2@<X8>)
{
  result = sub_100042794();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1000418E8(uint64_t a1)
{
  v2 = sub_10002DC68();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100041928()
{
  result = qword_1000715F0;
  if (!qword_1000715F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000715F0);
  }

  return result;
}

unint64_t sub_100041980()
{
  result = qword_1000715F8;
  if (!qword_1000715F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000715F8);
  }

  return result;
}

uint64_t sub_1000419D4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005F00;

  return sub_100042F3C();
}

uint64_t sub_100041A7C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10003F720();
  *v4 = v2;
  v4[1] = sub_100003DE4;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_100041B30()
{
  result = qword_100071600;
  if (!qword_100071600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071600);
  }

  return result;
}

unint64_t sub_100041B88()
{
  result = qword_100071608;
  if (!qword_100071608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071608);
  }

  return result;
}

uint64_t sub_100041BDC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10003F720();
  *v5 = v2;
  v5[1] = sub_100005F1C;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100041C90(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10003F720();
  *v4 = v2;
  v4[1] = sub_100005F00;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_100041D44()
{
  result = qword_100071610;
  if (!qword_100071610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071610);
  }

  return result;
}

unint64_t sub_100041D9C()
{
  result = qword_100071618;
  if (!qword_100071618)
  {
    sub_100002C4C(&qword_100071620, qword_100053AF0);
    sub_100040ACC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071618);
  }

  return result;
}

uint64_t sub_100041E20(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000409C4();
  *v5 = v2;
  v5[1] = sub_100002E00;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_100041ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100002E00;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

uint64_t getEnumTagSinglePayload for SettingsAlternateCalendarType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SettingsAlternateCalendarType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100042108@<X0>(uint64_t a1@<X8>)
{
  v10[1] = a1;
  v1 = sub_10004C704();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1000057AC(&qword_100070ED0, &qword_1000507C0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v10 - v4;
  v10[0] = "erlay to show in Calendar.";
  v6 = [objc_opt_self() mainBundle];
  v9._countAndFlagsBits = 0x800000010005F9C0;
  v11._countAndFlagsBits = 0xD000000000000023;
  v11._object = 0x800000010005F990;
  v12.value._countAndFlagsBits = 0;
  v12.value._object = 0;
  v7.super.isa = v6;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  sub_10004C534(v11, v12, v7, v13, 0xD00000000000002ALL, v9);

  swift_getKeyPath();
  sub_10004C6F4();
  sub_10003F408();
  sub_100043284();
  sub_100041980();
  sub_10004C714();
  sub_10004C6A4();
  sub_100005D70(&qword_100070EE0, &qword_100070ED0, &qword_1000507C0, &protocol conformance descriptor for ControlPicker<A>);
  sub_10004C6C4();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100042400@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10004C554();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004C5A4();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10004C754();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10004C564();
  __chkstk_darwin(v8 - 8);
  sub_10004C744();
  sub_10004C594();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_10004C574();
  result = sub_10004C6D4();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_100042634@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10004C564();
  __chkstk_darwin(v4 - 8);
  sub_10003EB68(*a1, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_10004C6D4();
  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v9;
  return result;
}

uint64_t sub_1000426CC(unsigned __int8 *a1)
{
  v2 = sub_10004C564();
  __chkstk_darwin(v2 - 8);
  sub_10003EB68(*a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10004C6D4();
  return sub_10004C734();
}

uint64_t sub_100042794()
{
  v0 = sub_10004C494();
  v1 = *(v0 - 8);
  v52 = v0;
  v53 = v1;
  __chkstk_darwin(v0);
  v51 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000057AC(&unk_100070570, &unk_10004D430);
  v4 = __chkstk_darwin(v3 - 8);
  v50 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v48 = &v34 - v6;
  v7 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v7 - 8);
  v49 = &v34 - v8;
  v9 = sub_10004C554();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10004C5A4();
  __chkstk_darwin(v13 - 8);
  v14 = sub_10004C754();
  __chkstk_darwin(v14 - 8);
  v15 = sub_10004C564();
  v46 = v15;
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v34 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1000057AC(&qword_100071638, &qword_100053CC8);
  sub_10004C744();
  sub_10004C594();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v10 + 104);
  v35 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v36 = v9;
  v19(v12, enum case for LocalizedStringResource.BundleDescription.main(_:), v9);
  v37 = v19;
  v38 = v10 + 104;
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v19(v12, v18, v9);
  v20 = v49;
  sub_10004C574();
  v21 = *(v16 + 56);
  v45 = v16 + 56;
  v47 = v21;
  v21(v20, 0, 1, v15);
  v55[0] = 0;
  v22 = sub_10004C1C4();
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  v40 = v24;
  v41 = v23 + 56;
  v25 = v48;
  v24(v48, 1, 1, v22);
  v24(v50, 1, 1, v22);
  v42 = enum case for InputConnectionBehavior.default(_:);
  v26 = *(v53 + 104);
  v53 += 104;
  v43 = v26;
  v26(v51);
  sub_10003F6C8();
  v27 = v25;
  v44 = sub_10004C224();
  v39 = sub_1000057AC(&qword_100071640, &qword_100053CD0);
  sub_10004C744();
  sub_10004C594();
  v28 = v35;
  v29 = v36;
  v30 = v37;
  v37(v12, v35, v36);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v30(v12, v28, v29);
  v31 = v49;
  sub_10004C574();
  v47(v31, 0, 1, v46);
  v54[0] = 16;
  v32 = v40;
  v40(v27, 1, 1, v22);
  v32(v50, 1, 1, v22);
  v43(v51, v42, v52);
  sub_10003F408();
  sub_10004C214();
  return v44;
}

unint64_t sub_100042EF0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10006D900;
  v6._object = a2;
  v4 = sub_10004C834(v3, v6);

  if (v4 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100042F3C()
{
  v1 = sub_10004C554();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_10004C5A4();
  v0[5] = swift_task_alloc();
  sub_10004C754();
  v0[6] = swift_task_alloc();
  sub_10004C564();
  v0[7] = swift_task_alloc();

  return _swift_task_switch(sub_10004307C, 0, 0);
}

uint64_t sub_10004307C()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v0[3];
  sub_1000057AC(&qword_1000715D8, qword_100053890);
  sub_10004C744();
  sub_10004C594();
  (*(v3 + 104))(v1, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_10004C574();
  sub_100005D70(&qword_100071628, &qword_100071630, &qword_100053CC0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  sub_10003F408();
  v4 = sub_10004C504();

  v5 = v0[1];

  return v5(v4);
}

unint64_t sub_100043284()
{
  result = qword_100071658;
  if (!qword_100071658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071658);
  }

  return result;
}

uint64_t sub_1000432FC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7472656C416F6ELL;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x657645664F796164;
    }

    else
    {
      v4 = 0x7472656C416F6ELL;
    }

    if (v3)
    {
      v5 = 0xEA0000000000746ELL;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x6542796144656E6FLL;
    v5 = 0xEC00000065726F66;
  }

  else
  {
    if (a1 == 3)
    {
      v4 = 0x42737961446F7774;
    }

    else
    {
      v4 = 0x426B656557656E6FLL;
    }

    v5 = 0xED000065726F6665;
  }

  if (a2 <= 1u)
  {
    v6 = 0xE700000000000000;
    v7 = 0x657645664F796164;
    v8 = 0xEA0000000000746ELL;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 0x6542796144656E6FLL;
    v6 = 0xEC00000065726F66;
    v7 = 0x42737961446F7774;
    v8 = 0xED000065726F6665;
    if (a2 != 3)
    {
      v7 = 0x426B656557656E6FLL;
      v8 = 0xED000065726F6665;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v8;
  }

  if (v4 == v10 && v5 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_10004C844();
  }

  return v12 & 1;
}

uint64_t sub_1000434B0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00736574756E69;
  v3 = 0x4D6E656574666966;
  v4 = a1;
  if (a1 <= 3u)
  {
    v13 = 0x694D797472696874;
    v14 = 0xED0000736574756ELL;
    if (a1 != 2)
    {
      v13 = 0xD000000000000010;
      v14 = 0x8000000100054B50;
    }

    v15 = 0x8000000100054B30;
    v16 = 0xD000000000000011;
    if (!a1)
    {
      v16 = 0x4D6E656574666966;
      v15 = 0xEE00736574756E69;
    }

    if (a1 <= 1u)
    {
      v11 = v16;
    }

    else
    {
      v11 = v13;
    }

    if (v4 <= 1)
    {
      v12 = v15;
    }

    else
    {
      v12 = v14;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v6 = 0x72756F48656E6FLL;
    v7 = 0x8000000100054B90;
    v8 = 0xD000000000000014;
    if (a1 != 7)
    {
      v8 = 0x7372756F486F7774;
      v7 = 0xE800000000000000;
    }

    if (a1 != 6)
    {
      v6 = v8;
      v5 = v7;
    }

    v9 = 0x6E694D7974666966;
    v10 = 0xEC00000073657475;
    if (a1 != 4)
    {
      v9 = 0xD000000000000010;
      v10 = 0x8000000100054B70;
    }

    if (a1 <= 5u)
    {
      v11 = v9;
    }

    else
    {
      v11 = v6;
    }

    if (v4 <= 5)
    {
      v12 = v10;
    }

    else
    {
      v12 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xE700000000000000;
        v3 = 0x72756F48656E6FLL;
      }

      else if (a2 == 7)
      {
        v2 = 0x8000000100054B90;
        v3 = 0xD000000000000014;
      }

      else
      {
        v2 = 0xE800000000000000;
        v3 = 0x7372756F486F7774;
      }

      goto LABEL_41;
    }

    if (a2 == 4)
    {
      v3 = 0x6E694D7974666966;
      v2 = 0xEC00000073657475;
      goto LABEL_41;
    }

    v3 = 0xD000000000000010;
    v17 = "fiftyFiveMinutes";
LABEL_40:
    v2 = (v17 - 32) | 0x8000000000000000;
    goto LABEL_41;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v3 = 0x694D797472696874;
      v2 = 0xED0000736574756ELL;
      goto LABEL_41;
    }

    v3 = 0xD000000000000010;
    v17 = "fortyFiveMinutes";
    goto LABEL_40;
  }

  if (a2)
  {
    v2 = 0x8000000100054B30;
    v3 = 0xD000000000000011;
  }

LABEL_41:
  if (v11 == v3 && v12 == v2)
  {
    v18 = 1;
  }

  else
  {
    v18 = sub_10004C844();
  }

  return v18 & 1;
}

uint64_t sub_10004377C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000010;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v4 = 0x746E6576456C6C61;
    }

    if (v3)
    {
      v5 = 0x8000000100054AA0;
    }

    else
    {
      v5 = 0xE900000000000073;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x8000000100054AC0;
    v4 = 0xD000000000000010;
  }

  else
  {
    v4 = 0xD000000000000011;
    if (v3 == 3)
    {
      v5 = 0x8000000100054AE0;
    }

    else
    {
      v5 = 0x8000000100054B00;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x8000000100054AA0;
    }

    else
    {
      v2 = 0x746E6576456C6C61;
      v6 = 0xE900000000000073;
    }

    if (v4 != v2)
    {
      goto LABEL_28;
    }
  }

  else if (a2 == 2)
  {
    v6 = 0x8000000100054AC0;
    if (v4 != 0xD000000000000010)
    {
LABEL_28:
      v7 = sub_10004C844();
      goto LABEL_29;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v6 = 0x8000000100054AE0;
    }

    else
    {
      v6 = 0x8000000100054B00;
    }

    if (v4 != 0xD000000000000011)
    {
      goto LABEL_28;
    }
  }

  if (v5 != v6)
  {
    goto LABEL_28;
  }

  v7 = 1;
LABEL_29:

  return v7 & 1;
}

uint64_t sub_100043908(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED0000676E697474;
  v3 = 0x65536D6574737973;
  v4 = a1;
  v5 = 0xE600000000000000;
  v6 = 0x796164697266;
  if (a1 != 6)
  {
    v6 = 0x7961647275746173;
    v5 = 0xE800000000000000;
  }

  v7 = 0x616473656E646577;
  v8 = 0xE900000000000079;
  if (a1 != 4)
  {
    v7 = 0x7961647372756874;
    v8 = 0xE800000000000000;
  }

  if (a1 > 5u)
  {
    v9 = v5;
  }

  else
  {
    v6 = v7;
    v9 = v8;
  }

  v10 = 0xE600000000000000;
  v11 = 0x79616473657574;
  if (a1 == 2)
  {
    v11 = 0x7961646E6F6DLL;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  v12 = 0x7961646E7573;
  v13 = 0xE600000000000000;
  if (!a1)
  {
    v12 = 0x65536D6574737973;
    v13 = 0xED0000676E697474;
  }

  if (a1 <= 1u)
  {
    v10 = v13;
  }

  else
  {
    v12 = v11;
  }

  if (a1 <= 3u)
  {
    v14 = v12;
  }

  else
  {
    v14 = v6;
  }

  if (v4 <= 3)
  {
    v15 = v10;
  }

  else
  {
    v15 = v9;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xE600000000000000;
        v16 = 1684632166;
LABEL_35:
        if (v14 != (v16 & 0xFFFF0000FFFFFFFFLL | 0x796100000000))
        {
          goto LABEL_44;
        }

        goto LABEL_40;
      }

      v2 = 0xE800000000000000;
      v17 = 0x647275746173;
    }

    else
    {
      if (a2 == 4)
      {
        v2 = 0xE900000000000079;
        if (v14 != 0x616473656E646577)
        {
          goto LABEL_44;
        }

        goto LABEL_40;
      }

      v2 = 0xE800000000000000;
      v17 = 0x647372756874;
    }

    if (v14 != (v17 & 0xFFFFFFFFFFFFLL | 0x7961000000000000))
    {
      goto LABEL_44;
    }

    goto LABEL_40;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v2 = 0xE600000000000000;
      if (v14 != 0x7961646E7573)
      {
        goto LABEL_44;
      }

      goto LABEL_40;
    }

    goto LABEL_39;
  }

  if (a2 == 2)
  {
    v2 = 0xE600000000000000;
    v16 = 1684959085;
    goto LABEL_35;
  }

  v2 = 0xE700000000000000;
  v3 = 0x79616473657574;
LABEL_39:
  if (v14 != v3)
  {
LABEL_44:
    v18 = sub_10004C844();
    goto LABEL_45;
  }

LABEL_40:
  if (v15 != v2)
  {
    goto LABEL_44;
  }

  v18 = 1;
LABEL_45:

  return v18 & 1;
}

uint64_t sub_100043B40(uint64_t a1, unsigned __int8 a2)
{
  sub_10004C784();
}

uint64_t sub_100043CC0(uint64_t a1, unsigned __int8 a2)
{
  sub_10004C784();
}

Swift::Int sub_100043DEC(uint64_t a1, unsigned __int8 a2)
{
  sub_10004C8A4();
  sub_10004C784();

  return sub_10004C8C4();
}

uint64_t sub_100043F2C()
{
  v0 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_10004C554();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004C5A4();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10004C754();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10004C564();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_10004C4D4();
  sub_100005C90(v10, qword_100071BE0);
  sub_100005C58(v10, qword_100071BE0);
  sub_10004C744();
  sub_10004C594();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_10004C584();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_10004C4C4();
}

uint64_t sub_100044208()
{
  v0 = sub_1000057AC(&qword_1000705B0, &unk_10004E990);
  __chkstk_darwin(v0 - 8);
  v90 = &v59 - v1;
  v2 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v2 - 8);
  v91 = &v59 - v3;
  v4 = sub_10004C554();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004C5A4();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10004C754();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10004C564();
  v76 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000057AC(&qword_1000717D8, &qword_100054790);
  v13 = sub_1000057AC(&unk_1000717E0, &unk_100054798);
  v14 = (*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80);
  v84 = *(*(v13 - 8) + 72);
  v15 = swift_allocObject();
  v63 = xmmword_10004EA30;
  *(v15 + 16) = xmmword_10004EA30;
  v65 = v15;
  v88 = v13;
  v67 = *(v13 + 48);
  v87 = v15 + v14;
  *(v15 + v14) = 0;
  sub_10004C744();
  sub_10004C594();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v66 = *(v5 + 104);
  v69 = v4;
  v70 = v5 + 104;
  v66(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v4);
  v17 = v76;
  v89 = v12;
  sub_10004C574();
  v18 = *(v17 + 56);
  v85 = v10;
  v82 = v18;
  v83 = v17 + 56;
  v18(v91, 1, 1, v10);
  if (qword_100070428 != -1)
  {
    swift_once();
  }

  v19 = sub_10004C3C4();
  v74 = sub_100005C58(v19, qword_100071B70);
  v73 = v19;
  v20 = *(v19 - 8);
  v21 = *(v20 + 16);
  v80 = v20 + 16;
  v81 = v21;
  v22 = v90;
  v21(v90, v74, v19);
  v23 = *(v20 + 56);
  v78 = v20 + 56;
  v79 = v23;
  v23(v22, 0, 1, v19);
  v24 = sub_1000057AC(&qword_100070AA0, &unk_10004F410);
  v25 = *(v17 + 72);
  v76 = *(v17 + 80);
  v77 = v24;
  v72 = (v76 + 32) & ~v76;
  v86 = v25;
  v75 = 2 * v25;
  v26 = swift_allocObject();
  v68 = xmmword_10004EA40;
  v64 = v26;
  *(v26 + 16) = xmmword_10004EA40;
  sub_10004C744();
  sub_10004C594();
  v27 = v16;
  v28 = v69;
  v29 = v16;
  v30 = v66;
  v66(v7, v27, v69);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v71 = v29;
  v30(v7, v29, v28);
  sub_10004C574();
  v31 = v87;
  v32 = v90;
  v33 = v91;
  sub_10004C3F4();
  v64 = v31 + v84;
  v67 = *(v88 + 48);
  *v64 = 1;
  sub_10004C744();
  sub_10004C594();
  v30(v7, v29, v28);
  sub_10004C574();
  v82(v33, 1, 1, v85);
  v34 = v32;
  v35 = v32;
  v36 = v73;
  v81(v35, v74, v73);
  v79(v34, 0, 1, v36);
  v62 = swift_allocObject();
  *(v62 + 16) = v68;
  sub_10004C744();
  sub_10004C594();
  v37 = v71;
  v30(v7, v71, v28);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v30(v7, v37, v28);
  sub_10004C574();
  v38 = v91;
  sub_10004C3F4();
  v62 = 2 * v84;
  v60 = (v87 + 2 * v84);
  v61 = *(v88 + 48);
  *v60 = 2;
  sub_10004C744();
  sub_10004C594();
  v30(v7, v37, v28);
  sub_10004C574();
  v82(v38, 1, 1, v85);
  v39 = v73;
  v81(v34, v74, v73);
  v79(v34, 0, 1, v39);
  v67 = 4 * v86;
  v64 = 5 * v86;
  v40 = v86;
  v59 = swift_allocObject();
  *(v59 + 16) = v63;
  sub_10004C744();
  sub_10004C594();
  v41 = v71;
  v42 = v69;
  v30(v7, v71, v69);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v43 = v42;
  v30(v7, v41, v42);
  v44 = v30;
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v30(v7, v41, v43);
  v45 = v75;
  sub_10004C574();
  *&v63 = v45 + v40;
  sub_10004C744();
  sub_10004C594();
  v30(v7, v41, v43);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v46 = v41;
  v44(v7, v41, v43);
  sub_10004C574();
  v47 = v90;
  v48 = v91;
  sub_10004C3F4();
  v61 = v87 + v62 + v84;
  v62 = *(v88 + 48);
  *v61 = 3;
  sub_10004C744();
  sub_10004C594();
  v44(v7, v46, v43);
  sub_10004C574();
  v82(v48, 1, 1, v85);
  v49 = v73;
  v81(v47, v74, v73);
  v79(v47, 0, 1, v49);
  *(swift_allocObject() + 16) = v68;
  sub_10004C744();
  sub_10004C594();
  v50 = v43;
  v51 = v43;
  v52 = v66;
  v66(v7, v46, v51);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v52(v7, v46, v50);
  sub_10004C574();
  v53 = v90;
  v54 = v91;
  sub_10004C3F4();
  *&v68 = v87 + 4 * v84;
  v84 = *(v88 + 48);
  *v68 = 4;
  sub_10004C744();
  sub_10004C594();
  v52(v7, v71, v50);
  sub_10004C574();
  v82(v54, 1, 1, v85);
  v55 = v73;
  v81(v53, v74, v73);
  v79(v53, 0, 1, v55);
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_10004FD30;
  sub_10004C744();
  sub_10004C594();
  v56 = v71;
  v52(v7, v71, v50);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v52(v7, v56, v50);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v52(v7, v56, v50);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v52(v7, v56, v50);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v52(v7, v56, v50);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v52(v7, v56, v50);
  sub_10004C574();
  sub_10004C3F4();
  v57 = sub_10004B1BC(v65);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100071BF8 = v57;
  return result;
}

uint64_t sub_100045840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000057AC(&qword_100070AB0, &unk_10004F490);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  if (qword_100070460 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = qword_100071BF8;
  if (*(qword_100071BF8 + 16) && (v11 = sub_100048940(a1), (v12 & 1) != 0))
  {
    v13 = v11;
    v14 = *(v10 + 56);
    v15 = sub_10004C414();
    v16 = *(v15 - 8);
    (*(v16 + 16))(v6, v14 + *(v16 + 72) * v13, v15);
    (*(v16 + 56))(v6, 0, 1, v15);
  }

  else
  {
    v15 = sub_10004C414();
    (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  }

  sub_10004C414();
  if ((*(*(v15 - 8) + 48))(v6, 1, v15))
  {
    sub_1000159C4(v6, &qword_100070AB0, &unk_10004F490);
    swift_endAccess();
    v17 = sub_10004C564();
    v18 = *(v17 - 8);
    (*(v18 + 56))(v9, 1, 1, v17);
    sub_10004C544();
    result = (*(v18 + 48))(v9, 1, v17);
    if (result != 1)
    {
      return sub_1000159C4(v9, &qword_100070E80, &qword_10004E200);
    }
  }

  else
  {
    sub_10004C3D4();
    sub_1000159C4(v6, &qword_100070AB0, &unk_10004F490);
    swift_endAccess();
    v20 = sub_10004C564();
    v21 = *(v20 - 8);
    (*(v21 + 56))(v9, 0, 1, v20);
    return (*(v21 + 32))(a2, v9, v20);
  }

  return result;
}

unint64_t sub_100045C3C()
{
  result = qword_100071670;
  if (!qword_100071670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071670);
  }

  return result;
}

unint64_t sub_100045C90@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004BB08(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_100045CC4()
{
  result = qword_100071678;
  if (!qword_100071678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071678);
  }

  return result;
}

unint64_t sub_100045D1C()
{
  result = qword_100071680;
  if (!qword_100071680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071680);
  }

  return result;
}

unint64_t sub_100045D74()
{
  result = qword_100071688;
  if (!qword_100071688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071688);
  }

  return result;
}

unint64_t sub_100045DCC()
{
  result = qword_100071690;
  if (!qword_100071690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071690);
  }

  return result;
}

unint64_t sub_100045E24()
{
  result = qword_100071698;
  if (!qword_100071698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071698);
  }

  return result;
}

unint64_t sub_100045E80()
{
  result = qword_1000716A8;
  if (!qword_1000716A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000716A8);
  }

  return result;
}

unint64_t sub_100045F38()
{
  result = qword_1000716B0;
  if (!qword_1000716B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000716B0);
  }

  return result;
}

uint64_t sub_100045F8C(uint64_t a1)
{
  v2 = sub_100045F38();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100045FDC()
{
  result = qword_1000716B8;
  if (!qword_1000716B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000716B8);
  }

  return result;
}

unint64_t sub_100046034()
{
  result = qword_1000716C0;
  if (!qword_1000716C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000716C0);
  }

  return result;
}

unint64_t sub_10004608C()
{
  result = qword_1000716C8;
  if (!qword_1000716C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000716C8);
  }

  return result;
}

uint64_t sub_1000460E0()
{
  if (qword_100070460 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_100046158(uint64_t a1)
{
  v2 = sub_100045E80();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000461F8()
{
  result = qword_1000716E0;
  if (!qword_1000716E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000716E0);
  }

  return result;
}

unint64_t sub_100046250()
{
  result = qword_1000716E8;
  if (!qword_1000716E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000716E8);
  }

  return result;
}

uint64_t sub_1000462C8()
{
  v1 = [objc_opt_self() defaultAllDayAlarmOffset];
  v2 = [v1 integerValue];
  if (v2 == sub_10004C524())
  {
    v3 = 0;
  }

  else
  {
    v4 = [v1 doubleValue];
    v3 = sub_1000364F8(v4, v5);
  }

  v6 = *(v0 + 16);

  *v6 = v3;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100046398(uint64_t a1, _BYTE *a2)
{
  *(v2 + 24) = *(a1 + 8);
  *(v2 + 32) = *a2;
  return _swift_task_switch(sub_1000463C4, 0, 0);
}

uint64_t sub_1000463C4()
{
  sub_10004C084();
  v1 = [*(v0 + 16) eventStore];
  swift_unknownObjectRelease();
  if (v1)
  {
    if (*(v0 + 32) > 1u || *(v0 + 32))
    {
      v2 = sub_10004C844();

      if ((v2 & 1) == 0)
      {
        v3 = objc_opt_self();
        v4.super.super.isa = sub_10004C7D4().super.super.isa;
        goto LABEL_8;
      }
    }

    else
    {
    }

    v3 = objc_opt_self();
    sub_10004C524();
    v4.super.super.isa = sub_10004C7E4().super.super.isa;
LABEL_8:
    isa = v4.super.super.isa;
    [v3 setDefaultAlarmOffset:v4.super.super.isa forAlarmType:1 eventStore:v1];
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000465AC()
{
  v0 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v0 - 8);
  v2 = &v12[-v1];
  v3 = sub_10004C554();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_10004C5A4();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10004C754();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10004C564();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  sub_10004C744();
  sub_10004C594();
  (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  sub_10004C574();
  (*(v10 + 56))(v2, 1, 1, v9);
  return sub_10004C4C4();
}

uint64_t sub_100046880@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v1 = sub_1000057AC(&qword_1000705B0, &unk_10004E990);
  __chkstk_darwin(v1 - 8);
  v21 = &v20 - v2;
  v3 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  v6 = sub_10004C554();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004C5A4();
  __chkstk_darwin(v10 - 8);
  v11 = sub_10004C754();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10004C564();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  __chkstk_darwin(v14);
  sub_10004C744();
  sub_10004C594();
  (*(v7 + 104))(v9, enum case for LocalizedStringResource.BundleDescription.main(_:), v6);
  sub_10004C574();
  (*(v13 + 56))(v5, 1, 1, v12);
  if (qword_100070428 != -1)
  {
    swift_once();
  }

  v15 = sub_10004C3C4();
  v16 = sub_100005C58(v15, qword_100071B70);
  v17 = *(v15 - 8);
  v18 = v21;
  (*(v17 + 16))(v21, v16, v15);
  (*(v17 + 56))(v18, 0, 1, v15);
  sub_10004C544();
  return sub_10004C3E4();
}

uint64_t sub_100046CB0()
{
  sub_1000057AC(&qword_100070E98, &qword_1000511E8);
  sub_10004C0F4();
  sub_10004C0E4();
  result = sub_10004C0A4();
  qword_100071C00 = result;
  return result;
}

uint64_t sub_100046D20()
{
  v0 = qword_100071660;

  return v0;
}

unint64_t sub_100046D5C()
{
  result = qword_1000716F0;
  if (!qword_1000716F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000716F0);
  }

  return result;
}

unint64_t sub_100046DB4()
{
  result = qword_1000716F8;
  if (!qword_1000716F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000716F8);
  }

  return result;
}

unint64_t sub_100046E0C()
{
  result = qword_100071700;
  if (!qword_100071700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071700);
  }

  return result;
}

unint64_t sub_100046E64()
{
  result = qword_100071708;
  if (!qword_100071708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071708);
  }

  return result;
}

uint64_t sub_100046EB8@<X0>(void *a1@<X8>)
{
  if (qword_100070468 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_100071C00;
}

unint64_t sub_100046F2C()
{
  result = qword_100071710;
  if (!qword_100071710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071710);
  }

  return result;
}

unint64_t sub_100046F84()
{
  result = qword_100071718;
  if (!qword_100071718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071718);
  }

  return result;
}

unint64_t sub_100046FDC()
{
  result = qword_100071720;
  if (!qword_100071720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071720);
  }

  return result;
}

unint64_t sub_100047034()
{
  result = qword_100071728;
  if (!qword_100071728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071728);
  }

  return result;
}

uint64_t sub_1000470F0(uint64_t a1)
{
  v2 = sub_1000461F8();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100047140()
{
  result = qword_100071740;
  if (!qword_100071740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071740);
  }

  return result;
}

uint64_t sub_100047198(uint64_t a1)
{
  v2 = sub_100047034();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10004722C()
{
  v0 = sub_10004C554();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10004C5A4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10004C754();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10004C564();
  sub_100005C90(v6, qword_100071C08);
  sub_100005C58(v6, qword_100071C08);
  sub_10004C744();
  sub_10004C594();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_10004C574();
}

uint64_t sub_10004742C()
{
  result = swift_getKeyPath();
  qword_100071C20 = result;
  return result;
}

uint64_t sub_100047454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  sub_10004C7C4();
  v3[9] = sub_10004C7B4();
  v5 = sub_10004C7A4();
  v3[10] = v5;
  v3[11] = v4;

  return _swift_task_switch(sub_1000474F0, v5, v4);
}

uint64_t sub_1000474F0()
{
  sub_10004C1F4();
  v1 = v0[2];
  v0[4] = v1;
  v2 = v0[3];
  v0[12] = v1;
  v0[13] = v2;
  v0[5] = v2;
  sub_10004C1F4();
  if (qword_100070478 != -1)
  {
    swift_once();
  }

  v3 = qword_100071C20;
  v0[14] = qword_100071C20;

  v4 = swift_task_alloc();
  v0[15] = v4;
  v5 = sub_100005D70(&qword_1000717B0, &qword_1000717B8, &qword_100054740, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_100023EBC;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 17, v3, &type metadata for SettingsAllDayDefaultAlertTimeType, v5);
}

uint64_t (*sub_10004764C(uint64_t *a1))()
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
  *(v2 + 32) = sub_10004C1E4();
  return sub_100003760;
}

uint64_t (*sub_1000476C0(uint64_t *a1))()
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
  *(v2 + 32) = sub_10004C1E4();
  return sub_100005F04;
}

uint64_t sub_100047734()
{
  if (qword_100070478 != -1)
  {
    swift_once();
  }
}

unint64_t sub_100047794()
{
  result = qword_100071760;
  if (!qword_100071760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071760);
  }

  return result;
}

unint64_t sub_1000477EC()
{
  result = qword_100071768;
  if (!qword_100071768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071768);
  }

  return result;
}

uint64_t sub_100047908(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005EFC;

  return sub_100047454(a1, v5, v4);
}

uint64_t sub_1000479B4@<X0>(uint64_t *a2@<X8>)
{
  result = sub_10004B3A4();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1000479DC(uint64_t a1)
{
  v2 = sub_10002DD64();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100047A1C()
{
  result = qword_100071770;
  if (!qword_100071770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071770);
  }

  return result;
}

unint64_t sub_100047A74()
{
  result = qword_100071778;
  if (!qword_100071778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071778);
  }

  return result;
}

uint64_t sub_100047AC8(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return _swift_task_switch(sub_100047AEC, 0, 0);
}

uint64_t sub_100047AEC()
{
  v1 = v0[3];
  sub_10004C084();
  *v1 = sub_10004BB54(v0[2]);
  v1[1] = v2;
  v3 = v0[1];

  return v3();
}

uint64_t sub_100047B60(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100046250();
  *v4 = v2;
  v4[1] = sub_100003DE4;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_100047C14()
{
  result = qword_100071780;
  if (!qword_100071780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071780);
  }

  return result;
}

unint64_t sub_100047C6C()
{
  result = qword_100071788;
  if (!qword_100071788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071788);
  }

  return result;
}

uint64_t sub_100047CC0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100046250();
  *v5 = v2;
  v5[1] = sub_100005F1C;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100047D74(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100046250();
  *v4 = v2;
  v4[1] = sub_100005F00;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_100047E28()
{
  result = qword_100071790;
  if (!qword_100071790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071790);
  }

  return result;
}

unint64_t sub_100047E80()
{
  result = qword_100071798;
  if (!qword_100071798)
  {
    sub_100002C4C(&unk_1000717A0, qword_100054530);
    sub_100046FDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071798);
  }

  return result;
}

uint64_t sub_100047F04(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100046E64();
  *v5 = v2;
  v5[1] = sub_100002E00;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_100047FF8@<X0>(uint64_t a1@<X8>)
{
  v10[1] = a1;
  v1 = sub_10004C704();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1000057AC(&qword_100070ED0, &qword_1000507C0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v10 - v4;
  v10[0] = "rt setting for all day events";
  v6 = [objc_opt_self() mainBundle];
  v9._countAndFlagsBits = 0x8000000100060F40;
  v11._countAndFlagsBits = 0xD000000000000023;
  v11._object = 0x8000000100060F10;
  v12.value._countAndFlagsBits = 0;
  v12.value._object = 0;
  v7.super.isa = v6;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  sub_10004C534(v11, v12, v7, v13, 0xD000000000000036, v9);

  swift_getKeyPath();
  sub_10004C6F4();
  sub_100045F38();
  sub_10004BF38();
  sub_100047A74();
  sub_10004C714();
  sub_10004C6A4();
  sub_100005D70(&qword_100070EE0, &qword_100070ED0, &qword_1000507C0, &protocol conformance descriptor for ControlPicker<A>);
  sub_10004C6C4();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1000482F0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10004C554();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004C5A4();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10004C754();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10004C564();
  __chkstk_darwin(v8 - 8);
  sub_10004C744();
  sub_10004C594();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_10004C574();
  result = sub_10004C6D4();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_100048524@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10004C564();
  __chkstk_darwin(v4 - 8);
  sub_100045840(*a1, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_10004C6D4();
  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v9;
  return result;
}

uint64_t sub_1000485BC(unsigned __int8 *a1)
{
  v2 = sub_10004C564();
  __chkstk_darwin(v2 - 8);
  sub_100045840(*a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10004C6D4();
  return sub_10004C734();
}

unint64_t sub_100048684(uint64_t a1)
{
  v1 = a1;
  sub_10004C8A4();
  sub_10004C784();

  v2 = sub_10004C8C4();

  return sub_100048FCC(v1, v2);
}

unint64_t sub_100048798(uint64_t a1)
{
  v1 = a1;
  sub_10004C8A4();
  sub_100043B40(v4, v1);
  v2 = sub_10004C8C4();

  return sub_1000491B8(v1, v2);
}

unint64_t sub_100048834(uint64_t a1)
{
  v2 = a1;
  v3 = sub_100043DEC(*(v1 + 40), a1);

  return sub_100049858(v2, v3);
}

uint64_t sub_1000488A4(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  sub_10004C8A4();
  a2(a1);
  sub_10004C784();

  v5 = sub_10004C8C4();

  return a3(a1, v5);
}

unint64_t sub_100048940(uint64_t a1)
{
  v1 = a1;
  sub_10004C8A4();
  sub_10004C784();

  v2 = sub_10004C8C4();
  return sub_100049FCC(v1, v2);
}

unint64_t sub_100048A6C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE400000000000000;
      v8 = 1953460082;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000010;
          v7 = 0x8000000100054900;
          break;
        case 2:
          v8 = 0xD000000000000012;
          v7 = 0x8000000100054920;
          break;
        case 3:
          v8 = 0x626D754E6B656577;
          v7 = 0xEB00000000737265;
          break;
        case 4:
          v8 = 0xD000000000000015;
          v7 = 0x8000000100054940;
          break;
        case 5:
          v8 = 0xD000000000000013;
          v7 = 0x8000000100054960;
          break;
        case 6:
          v8 = 0x61727544636E7973;
          v7 = 0xEC0000006E6F6974;
          break;
        case 7:
          v8 = 0xD000000000000011;
          v7 = 0x8000000100054990;
          break;
        case 8:
          v8 = 0xD00000000000001ALL;
          v7 = 0x80000001000549B0;
          break;
        case 9:
          v8 = 0xD00000000000001CLL;
          v7 = 0x80000001000549D0;
          break;
        case 0xA:
          v8 = 0xD00000000000001DLL;
          v7 = 0x80000001000549F0;
          break;
        case 0xB:
          v8 = 0x654C6F54656D6974;
          v7 = 0xEB00000000657661;
          break;
        case 0xC:
          v8 = 0xD000000000000014;
          v7 = 0x8000000100054A20;
          break;
        case 0xD:
          v8 = 0x6565577472617473;
          v7 = 0xEB000000006E4F6BLL;
          break;
        case 0xE:
          v8 = 0x43746C7561666564;
          v7 = 0xEF7261646E656C61;
          break;
        case 0xF:
          v8 = 0xD000000000000011;
          v7 = 0x8000000100054A60;
          break;
        case 0x10:
          v8 = 0xD000000000000013;
          v7 = 0x8000000100054A80;
          break;
        default:
          break;
      }

      v9 = 0xE400000000000000;
      v10 = 1953460082;
      switch(a1)
      {
        case 1:
          v9 = 0x8000000100054900;
          if (v8 == 0xD000000000000010)
          {
            goto LABEL_50;
          }

          goto LABEL_51;
        case 2:
          v9 = 0x8000000100054920;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        case 3:
          v11 = 0x626D754E6B656577;
          v12 = 7565925;
          goto LABEL_44;
        case 4:
          v9 = 0x8000000100054940;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        case 5:
          v9 = 0x8000000100054960;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        case 6:
          v9 = 0xEC0000006E6F6974;
          if (v8 != 0x61727544636E7973)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        case 7:
          v9 = 0x8000000100054990;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        case 8:
          v9 = 0x80000001000549B0;
          if (v8 != 0xD00000000000001ALL)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        case 9:
          v9 = 0x80000001000549D0;
          if (v8 != 0xD00000000000001CLL)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        case 10:
          v10 = 0xD00000000000001DLL;
          v9 = 0x80000001000549F0;
          goto LABEL_49;
        case 11:
          v11 = 0x654C6F54656D6974;
          v12 = 6649441;
          goto LABEL_44;
        case 12:
          v9 = 0x8000000100054A20;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        case 13:
          v11 = 0x6565577472617473;
          v12 = 7229291;
LABEL_44:
          v9 = v12 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          if (v8 != v11)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        case 14:
          v9 = 0xEF7261646E656C61;
          if (v8 != 0x43746C7561666564)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        case 15:
          v9 = 0x8000000100054A60;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        case 16:
          v9 = 0x8000000100054A80;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        default:
LABEL_49:
          if (v8 != v10)
          {
            goto LABEL_51;
          }

LABEL_50:
          if (v7 == v9)
          {

            return v4;
          }

LABEL_51:
          v13 = sub_10004C844();

          if (v13)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_100048FCC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v5 = 0xE900000000000073;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v19 + 48) + v4);
      if (v7 <= 1)
      {
        if (*(*(v19 + 48) + v4))
        {
          v8 = 0xD000000000000010;
        }

        else
        {
          v8 = 0x746E6576456C6C61;
        }

        if (*(*(v19 + 48) + v4))
        {
          v9 = 0x8000000100054AA0;
        }

        else
        {
          v9 = 0xE900000000000073;
        }
      }

      else if (v7 == 2)
      {
        v8 = 0xD000000000000010;
        v9 = 0x8000000100054AC0;
      }

      else
      {
        v8 = 0xD000000000000011;
        if (v7 == 3)
        {
          v9 = 0x8000000100054AE0;
        }

        else
        {
          v9 = 0x8000000100054B00;
        }
      }

      v10 = 0xD000000000000011;
      if (v6 == 3)
      {
        v10 = 0xD000000000000011;
        v11 = 0x8000000100054AE0;
      }

      else
      {
        v11 = 0x8000000100054B00;
      }

      if (v6 == 2)
      {
        v10 = 0xD000000000000010;
        v11 = 0x8000000100054AC0;
      }

      if (v6)
      {
        v12 = 0xD000000000000010;
      }

      else
      {
        v12 = 0x746E6576456C6C61;
      }

      if (v6)
      {
        v5 = 0x8000000100054AA0;
      }

      v13 = v6 <= 1 ? v12 : v10;
      v14 = v6 <= 1 ? v5 : v11;
      if (v8 == v13 && v9 == v14)
      {
        break;
      }

      v15 = sub_10004C844();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
        v5 = 0xE900000000000073;
        if ((*(v18 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1000491B8(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v25 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v27 + 48) + v4);
      v28 = v4;
      if (v6 <= 3)
      {
        if (v6 == 2)
        {
          v9 = 0x694D797472696874;
        }

        else
        {
          v9 = 0xD000000000000010;
        }

        if (v6 == 2)
        {
          v10 = 0xED0000736574756ELL;
        }

        else
        {
          v10 = 0x8000000100054B50;
        }

        if (*(*(v27 + 48) + v4))
        {
          v11 = 0xD000000000000011;
        }

        else
        {
          v11 = 0x4D6E656574666966;
        }

        if (v6)
        {
          v12 = 0x8000000100054B30;
        }

        else
        {
          v12 = 0xEE00736574756E69;
        }

        if (v6 <= 1)
        {
          v7 = v11;
        }

        else
        {
          v7 = v9;
        }

        if (v6 <= 1)
        {
          v8 = v12;
        }

        else
        {
          v8 = v10;
        }
      }

      else if (*(*(v27 + 48) + v4) <= 5u)
      {
        if (v6 == 4)
        {
          v7 = 0x6E694D7974666966;
        }

        else
        {
          v7 = 0xD000000000000010;
        }

        if (v6 == 4)
        {
          v8 = 0xEC00000073657475;
        }

        else
        {
          v8 = 0x8000000100054B70;
        }
      }

      else if (v6 == 6)
      {
        v8 = 0xE700000000000000;
        v7 = 0x72756F48656E6FLL;
      }

      else if (v6 == 7)
      {
        v7 = 0xD000000000000014;
        v8 = 0x8000000100054B90;
      }

      else
      {
        v8 = 0xE800000000000000;
        v7 = 0x7372756F486F7774;
      }

      v13 = 0xD000000000000014;
      if (v5 != 7)
      {
        v13 = 0x7372756F486F7774;
      }

      v14 = 0x8000000100054B90;
      if (v5 != 7)
      {
        v14 = 0xE800000000000000;
      }

      if (v5 == 6)
      {
        v13 = 0x72756F48656E6FLL;
        v14 = 0xE700000000000000;
      }

      v15 = 0x6E694D7974666966;
      if (v5 != 4)
      {
        v15 = 0xD000000000000010;
      }

      v16 = 0xEC00000073657475;
      if (v5 != 4)
      {
        v16 = 0x8000000100054B70;
      }

      if (v5 <= 5)
      {
        v13 = v15;
        v14 = v16;
      }

      if (v5 == 2)
      {
        v17 = 0x694D797472696874;
      }

      else
      {
        v17 = 0xD000000000000010;
      }

      if (v5 == 2)
      {
        v18 = 0xED0000736574756ELL;
      }

      else
      {
        v18 = 0x8000000100054B50;
      }

      if (v5)
      {
        v19 = 0xD000000000000011;
      }

      else
      {
        v19 = 0x4D6E656574666966;
      }

      if (v5)
      {
        v20 = 0x8000000100054B30;
      }

      else
      {
        v20 = 0xEE00736574756E69;
      }

      if (v5 <= 1)
      {
        v17 = v19;
        v18 = v20;
      }

      v21 = v5 <= 3 ? v17 : v13;
      v22 = v5 <= 3 ? v18 : v14;
      if (v7 == v21 && v8 == v22)
      {
        break;
      }

      v23 = sub_10004C844();

      if (v23)
      {
        return v28;
      }

      v4 = (v28 + 1) & v25;
      if (((*(v26 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return v4;
      }
    }

    return v28;
  }

  return v4;
}

unint64_t sub_1000494BC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v26 = ~v3;
    v5 = 0x4D6E656574666966;
    v27 = a1;
    while (1)
    {
      v6 = *(*(v28 + 48) + v4);
      v29 = v4;
      if (v6 <= 4)
      {
        if (v6 == 3)
        {
          v9 = 0x74756E694D6E6574;
        }

        else
        {
          v9 = v5;
        }

        if (v6 == 3)
        {
          v10 = 0xEA00000000007365;
        }

        else
        {
          v10 = 0xEE00736574756E69;
        }

        if (v6 == 2)
        {
          v9 = 0x756E694D65766966;
          v10 = 0xEB00000000736574;
        }

        v11 = *(*(v28 + 48) + v4) ? 0x7645664F656D6974 : 0x7472656C416F6ELL;
        v12 = v6 ? 0xEB00000000746E65 : 0xE700000000000000;
        v8 = v6 <= 1 ? v11 : v9;
        v7 = v6 <= 1 ? v12 : v10;
      }

      else if (*(*(v28 + 48) + v4) > 7u)
      {
        if (v6 == 8)
        {
          v7 = 0xE600000000000000;
          v8 = 0x796144656E6FLL;
        }

        else
        {
          v7 = 0xE700000000000000;
          v8 = v6 == 9 ? 0x737961446F7774 : 0x6B656557656E6FLL;
        }
      }

      else if (v6 == 5)
      {
        v8 = 0x694D797472696874;
        v7 = 0xED0000736574756ELL;
      }

      else if (v6 == 6)
      {
        v7 = 0xE700000000000000;
        v8 = 0x72756F48656E6FLL;
      }

      else
      {
        v7 = 0xE800000000000000;
        v8 = 0x7372756F486F7774;
      }

      v13 = 0x737961446F7774;
      if (v27 != 9)
      {
        v13 = 0x6B656557656E6FLL;
      }

      v14 = 0xE700000000000000;
      if (v27 == 8)
      {
        v13 = 0x796144656E6FLL;
        v14 = 0xE600000000000000;
      }

      v15 = 0x7372756F486F7774;
      if (v27 == 6)
      {
        v15 = 0x72756F48656E6FLL;
      }

      v16 = 0xE800000000000000;
      if (v27 == 6)
      {
        v16 = 0xE700000000000000;
      }

      if (v27 == 5)
      {
        v15 = 0x694D797472696874;
        v16 = 0xED0000736574756ELL;
      }

      if (v27 <= 7)
      {
        v13 = v15;
        v14 = v16;
      }

      if (v27 == 3)
      {
        v17 = 0x74756E694D6E6574;
      }

      else
      {
        v17 = v5;
      }

      if (v27 == 3)
      {
        v18 = 0xEA00000000007365;
      }

      else
      {
        v18 = 0xEE00736574756E69;
      }

      if (v27 == 2)
      {
        v17 = 0x756E694D65766966;
        v18 = 0xEB00000000736574;
      }

      if (v27)
      {
        v19 = 0x7645664F656D6974;
      }

      else
      {
        v19 = 0x7472656C416F6ELL;
      }

      if (v27)
      {
        v20 = 0xEB00000000746E65;
      }

      else
      {
        v20 = 0xE700000000000000;
      }

      if (v27 <= 1)
      {
        v17 = v19;
        v18 = v20;
      }

      v21 = v27 <= 4 ? v17 : v13;
      v22 = v27 <= 4 ? v18 : v14;
      if (v8 == v21 && v7 == v22)
      {
        break;
      }

      v23 = v5;
      v24 = sub_10004C844();

      if (v24)
      {
        return v29;
      }

      v4 = (v29 + 1) & v26;
      v5 = v23;
      if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return v4;
      }
    }

    return v29;
  }

  return v4;
}

unint64_t sub_100049858(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v25 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v27 + 48) + v4);
      if (v6 > 3)
      {
        if (*(*(v27 + 48) + v4) > 5u)
        {
          if (v6 == 6)
          {
            v12 = 0xE600000000000000;
            v11 = 0x796164697266;
          }

          else
          {
            v12 = 0xE800000000000000;
            v11 = 0x7961647275746173;
          }
        }

        else
        {
          if (v6 == 4)
          {
            v11 = 0x616473656E646577;
          }

          else
          {
            v11 = 0x7961647372756874;
          }

          if (v6 == 4)
          {
            v12 = 0xE900000000000079;
          }

          else
          {
            v12 = 0xE800000000000000;
          }
        }
      }

      else
      {
        if (v6 == 2)
        {
          v7 = 0x7961646E6F6DLL;
        }

        else
        {
          v7 = 0x79616473657574;
        }

        if (v6 == 2)
        {
          v8 = 0xE600000000000000;
        }

        else
        {
          v8 = 0xE700000000000000;
        }

        v9 = 0x7961646E7573;
        if (*(*(v27 + 48) + v4))
        {
          v10 = 0xE600000000000000;
        }

        else
        {
          v9 = 0x65536D6574737973;
          v10 = 0xED0000676E697474;
        }

        if (*(*(v27 + 48) + v4) <= 1u)
        {
          v11 = v9;
        }

        else
        {
          v11 = v7;
        }

        if (*(*(v27 + 48) + v4) <= 1u)
        {
          v12 = v10;
        }

        else
        {
          v12 = v8;
        }
      }

      v13 = 0x7961647275746173;
      if (v5 == 6)
      {
        v13 = 0x796164697266;
        v14 = 0xE600000000000000;
      }

      else
      {
        v14 = 0xE800000000000000;
      }

      v15 = 0x7961647372756874;
      if (v5 == 4)
      {
        v15 = 0x616473656E646577;
      }

      v16 = 0xE900000000000079;
      if (v5 != 4)
      {
        v16 = 0xE800000000000000;
      }

      if (v5 <= 5)
      {
        v13 = v15;
        v14 = v16;
      }

      if (v5 == 2)
      {
        v17 = 0x7961646E6F6DLL;
      }

      else
      {
        v17 = 0x79616473657574;
      }

      if (v5 == 2)
      {
        v18 = 0xE600000000000000;
      }

      else
      {
        v18 = 0xE700000000000000;
      }

      v19 = 0x7961646E7573;
      if (v5)
      {
        v20 = 0xE600000000000000;
      }

      else
      {
        v19 = 0x65536D6574737973;
        v20 = 0xED0000676E697474;
      }

      if (v5 <= 1)
      {
        v17 = v19;
        v18 = v20;
      }

      v21 = v5 <= 3 ? v17 : v13;
      v22 = v5 <= 3 ? v18 : v14;
      if (v11 == v21 && v12 == v22)
      {
        break;
      }

      v23 = sub_10004C844();

      if ((v23 & 1) == 0)
      {
        v4 = (v4 + 1) & v25;
        if ((*(v26 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100049AF0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE300000000000000;
      v8 = 6710895;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE700000000000000;
          v8 = 0x6573656E696863;
          break;
        case 2:
          v7 = 0xE600000000000000;
          v8 = 0x776572626568;
          break;
        case 3:
          v7 = 0xE500000000000000;
          v8 = 0x69726A6968;
          break;
        case 4:
          v8 = 0x6D6D5569726A6968;
          v7 = 0xEE00617275516C41;
          break;
        case 5:
          v7 = 0xE600000000000000;
          v8 = 0x616C676E6162;
          break;
        case 6:
          v7 = 0xE800000000000000;
          v8 = 0x69746172616A7567;
          break;
        case 7:
          v7 = 0xE700000000000000;
          v8 = 0x6164616E6E616BLL;
          break;
        case 8:
          v8 = 0x616C6179616C616DLL;
          v7 = 0xE90000000000006DLL;
          break;
        case 9:
          v7 = 0xE700000000000000;
          v8 = 0x6968746172616DLL;
          break;
        case 0xA:
          v7 = 0xE400000000000000;
          v8 = 1634296943;
          break;
        case 0xB:
          v7 = 0xE500000000000000;
          v8 = 0x6C696D6174;
          break;
        case 0xC:
          v7 = 0xE600000000000000;
          v8 = 0x7567756C6574;
          break;
        case 0xD:
          v7 = 0xE600000000000000;
          v8 = 0x6D61726B6976;
          break;
        case 0xE:
          v7 = 0xE600000000000000;
          v8 = 0x6E6165726F6BLL;
          break;
        case 0xF:
          v8 = 0x656D616E74656976;
          v7 = 0xEA00000000006573;
          break;
        default:
          break;
      }

      v9 = 0xE300000000000000;
      v10 = 6710895;
      switch(a1)
      {
        case 1:
          v9 = 0xE700000000000000;
          if (v8 == 0x6573656E696863)
          {
            goto LABEL_48;
          }

          goto LABEL_49;
        case 2:
          v9 = 0xE600000000000000;
          if (v8 != 0x776572626568)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 3:
          v9 = 0xE500000000000000;
          if (v8 != 0x69726A6968)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 4:
          v9 = 0xEE00617275516C41;
          if (v8 != 0x6D6D5569726A6968)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 5:
          v9 = 0xE600000000000000;
          if (v8 != 0x616C676E6162)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 6:
          v9 = 0xE800000000000000;
          if (v8 != 0x69746172616A7567)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 7:
          v9 = 0xE700000000000000;
          if (v8 != 0x6164616E6E616BLL)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 8:
          v9 = 0xE90000000000006DLL;
          if (v8 != 0x616C6179616C616DLL)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 9:
          v9 = 0xE700000000000000;
          if (v8 != 0x6968746172616DLL)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 10:
          v9 = 0xE400000000000000;
          v10 = 1634296943;
          goto LABEL_47;
        case 11:
          v9 = 0xE500000000000000;
          if (v8 != 0x6C696D6174)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 12:
          v9 = 0xE600000000000000;
          if (v8 != 0x7567756C6574)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 13:
          v9 = 0xE600000000000000;
          if (v8 != 0x6D61726B6976)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 14:
          v9 = 0xE600000000000000;
          if (v8 != 0x6E6165726F6BLL)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 15:
          v9 = 0xEA00000000006573;
          if (v8 != 0x656D616E74656976)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        default:
LABEL_47:
          if (v8 != v10)
          {
            goto LABEL_49;
          }

LABEL_48:
          if (v7 == v9)
          {

            return v4;
          }

LABEL_49:
          v11 = sub_10004C844();

          if (v11)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_100049FCC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v5 = 0xEA0000000000746ELL;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v19 + 48) + v4);
      if (v7 <= 1)
      {
        if (*(*(v19 + 48) + v4))
        {
          v8 = 0x657645664F796164;
        }

        else
        {
          v8 = 0x7472656C416F6ELL;
        }

        if (*(*(v19 + 48) + v4))
        {
          v9 = 0xEA0000000000746ELL;
        }

        else
        {
          v9 = 0xE700000000000000;
        }
      }

      else if (v7 == 2)
      {
        v8 = 0x6542796144656E6FLL;
        v9 = 0xEC00000065726F66;
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 0x42737961446F7774;
        }

        else
        {
          v8 = 0x426B656557656E6FLL;
        }

        v9 = 0xED000065726F6665;
      }

      if (v6 == 3)
      {
        v10 = 0x42737961446F7774;
      }

      else
      {
        v10 = 0x426B656557656E6FLL;
      }

      if (v6 == 2)
      {
        v10 = 0x6542796144656E6FLL;
      }

      v11 = 0xEC00000065726F66;
      if (v6 != 2)
      {
        v11 = 0xED000065726F6665;
      }

      if (v6)
      {
        v12 = 0x657645664F796164;
      }

      else
      {
        v12 = 0x7472656C416F6ELL;
      }

      if (!v6)
      {
        v5 = 0xE700000000000000;
      }

      v13 = v6 <= 1 ? v12 : v10;
      v14 = v6 <= 1 ? v5 : v11;
      if (v8 == v13 && v9 == v14)
      {
        break;
      }

      v15 = sub_10004C844();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
        v5 = 0xEA0000000000746ELL;
        if ((*(v18 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10004A1D0(uint64_t a1)
{
  v2 = sub_1000057AC(&qword_100070728, &qword_100054810);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000057AC(&unk_100071860, &unk_100054818);
    v7 = sub_10004C824();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10004BEA4(v9, v5, &qword_100070728, &qword_100054810);
      v11 = *v5;
      result = sub_1000488A4(*v5, sub_100008B1C, sub_100048A6C);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_10004C414();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_10004A3E0(uint64_t a1)
{
  v2 = sub_1000057AC(&qword_100070740, &unk_10004DB70);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000057AC(&qword_100071870, &qword_100054828);
    v7 = sub_10004C824();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10004BEA4(v9, v5, &qword_100070740, &unk_10004DB70);
      v11 = *v5;
      result = sub_1000488A4(*v5, sub_100008B1C, sub_100048A6C);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1000057AC(&unk_100071878, &unk_100054830);
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_10004A5FC(uint64_t a1)
{
  v2 = sub_1000057AC(&qword_100070A98, &qword_100054800);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000057AC(&unk_100071850, &qword_100054808);
    v7 = sub_10004C824();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10004BEA4(v9, v5, &qword_100070A98, &qword_100054800);
      v11 = *v5;
      result = sub_100048684(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_10004C414();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_10004A7E4(uint64_t a1)
{
  v2 = sub_1000057AC(&qword_100070D20, &unk_100050740);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000057AC(&unk_100071840, &qword_1000547F8);
    v7 = sub_10004C824();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10004BEA4(v9, v5, &qword_100070D20, &unk_100050740);
      v11 = *v5;
      result = sub_100048798(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_10004C414();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_10004A9CC(uint64_t a1)
{
  v2 = sub_1000057AC(&unk_100070EC0, &qword_1000547E0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000057AC(&unk_100071830, &unk_1000547E8);
    v7 = sub_10004C824();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10004BEA4(v9, v5, &unk_100070EC0, &qword_1000547E0);
      v11 = *v5;
      result = sub_1000488A4(*v5, sub_10002613C, sub_1000494BC);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_10004C414();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_10004ABDC(uint64_t a1)
{
  v2 = sub_1000057AC(&qword_1000712D0, &qword_1000547D0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000057AC(&unk_100071820, &qword_1000547D8);
    v7 = sub_10004C824();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10004BEA4(v9, v5, &qword_1000712D0, &qword_1000547D0);
      v11 = *v5;
      result = sub_100048940(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_10004C414();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_10004ADC4(uint64_t a1)
{
  v2 = sub_1000057AC(&qword_100071448, &unk_100053240);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000057AC(&unk_100071810, &qword_1000547C8);
    v7 = sub_10004C824();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10004BEA4(v9, v5, &qword_100071448, &unk_100053240);
      v11 = *v5;
      result = sub_100048834(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_10004C414();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_10004AFAC(uint64_t a1)
{
  v2 = sub_1000057AC(&qword_100071650, &qword_1000547B0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000057AC(&unk_100071800, &unk_1000547B8);
    v7 = sub_10004C824();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10004BEA4(v9, v5, &qword_100071650, &qword_1000547B0);
      v11 = *v5;
      result = sub_1000488A4(*v5, sub_1000432DC, sub_100049AF0);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_10004C414();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_10004B1BC(uint64_t a1)
{
  v2 = sub_1000057AC(&unk_1000717E0, &unk_100054798);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000057AC(&unk_1000717F0, &qword_1000547A8);
    v7 = sub_10004C824();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10004BEA4(v9, v5, &unk_1000717E0, &unk_100054798);
      v11 = *v5;
      result = sub_100048940(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_10004C414();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_10004B3A4()
{
  v0 = sub_10004C494();
  v1 = *(v0 - 8);
  v52 = v0;
  v53 = v1;
  __chkstk_darwin(v0);
  v51 = v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000057AC(&unk_100070570, &unk_10004D430);
  v4 = __chkstk_darwin(v3 - 8);
  v50 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v48 = v34 - v6;
  v7 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  __chkstk_darwin(v7 - 8);
  v49 = v34 - v8;
  v9 = sub_10004C554();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10004C5A4();
  __chkstk_darwin(v13 - 8);
  v14 = sub_10004C754();
  __chkstk_darwin(v14 - 8);
  v15 = sub_10004C564();
  v46 = v15;
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v34[1] = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1000057AC(&qword_1000717C0, &qword_100054748);
  sub_10004C744();
  sub_10004C594();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v10 + 104);
  v35 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v36 = v9;
  v19(v12, enum case for LocalizedStringResource.BundleDescription.main(_:), v9);
  v37 = v19;
  v38 = v10 + 104;
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v19(v12, v18, v9);
  v20 = v49;
  sub_10004C574();
  v21 = *(v16 + 56);
  v45 = v16 + 56;
  v47 = v21;
  v21(v20, 0, 1, v15);
  v22 = sub_10004C1C4();
  v54 = 0;
  v55 = 0;
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  v40 = v24;
  v41 = v23 + 56;
  v25 = v48;
  v24(v48, 1, 1, v22);
  v24(v50, 1, 1, v22);
  v42 = enum case for InputConnectionBehavior.default(_:);
  v26 = *(v53 + 104);
  v53 += 104;
  v43 = v26;
  v26(v51);
  sub_1000461F8();
  v27 = v25;
  v44 = sub_10004C224();
  v39 = sub_1000057AC(&unk_1000717C8, &qword_100054750);
  sub_10004C744();
  sub_10004C594();
  v28 = v35;
  v29 = v36;
  v30 = v37;
  v37(v12, v35, v36);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v30(v12, v28, v29);
  v31 = v49;
  sub_10004C574();
  v47(v31, 0, 1, v46);
  LOBYTE(v54) = 5;
  v32 = v40;
  v40(v27, 1, 1, v22);
  v32(v50, 1, 1, v22);
  v43(v51, v42, v52);
  sub_100045F38();
  sub_10004C214();
  return v44;
}

unint64_t sub_10004BB08(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10006DAA0;
  v6._object = a2;
  v4 = sub_10004C834(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10004BB54(uint64_t a1)
{
  v2 = sub_10004C554();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004C5A4();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10004C754();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10004C564();
  __chkstk_darwin(v8 - 8);
  sub_1000057AC(&qword_100071758, qword_1000542D0);
  sub_10004C744();
  sub_10004C594();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_10004C574();
  sub_100005D70(&qword_1000717B0, &qword_1000717B8, &qword_100054740, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  sub_100045F38();
  v9 = sub_10004C504();
  sub_1000057AC(&qword_100070E98, &qword_1000511E8);
  sub_10004C0F4();
  memset(v11, 0, sizeof(v11));
  v12 = 0;

  sub_10004C0E4();
  sub_10004C0A4();
  *&v11[0] = a1;

  swift_unknownObjectRetain();
  sub_10004C094();

  swift_unknownObjectRelease();
  return v9;
}

uint64_t sub_10004BEA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000057AC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_10004BF38()
{
  result = qword_100071888;
  if (!qword_100071888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071888);
  }

  return result;
}

uint64_t sub_10004BF8C()
{
  sub_100002C4C(&qword_100070ED0, &qword_1000507C0);
  sub_100005D70(&qword_100070EE0, &qword_100070ED0, &qword_1000507C0, &protocol conformance descriptor for ControlPicker<A>);
  return swift_getOpaqueTypeConformance2();
}