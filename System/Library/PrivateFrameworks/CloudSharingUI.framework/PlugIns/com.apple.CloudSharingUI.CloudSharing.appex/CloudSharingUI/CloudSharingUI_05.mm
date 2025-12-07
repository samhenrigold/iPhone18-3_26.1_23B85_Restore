uint64_t sub_10008F10C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000C60A4();
}

uint64_t sub_10008F180(int a1)
{
  v2 = v1;
  v20 = a1;
  v3 = sub_10000FEB8(&qword_1001185B8, &qword_1000D0BE0);
  v18 = *(v3 - 8);
  v19 = v3;
  __chkstk_darwin(v3);
  v17 = v15 - v4;
  v16 = sub_1000C7024();
  v5 = *(v16 - 8);
  __chkstk_darwin(v16);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000C7014();
  __chkstk_darwin(v8);
  v9 = sub_1000C6CA4();
  __chkstk_darwin(v9 - 8);
  sub_1000C6174();
  swift_allocObject();
  *(v1 + 16) = sub_1000C6164();
  v10 = sub_10008FCFC();
  v15[0] = "tor";
  v15[1] = v10;
  sub_1000C6C94();
  v22 = _swiftEmptyArrayStorage;
  sub_10008FEC8(&qword_100118F80, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10000FEB8(&qword_100118F88, &qword_1000D2890);
  sub_10008FF10(&qword_100118F90, &qword_100118F88, &qword_1000D2890);
  sub_1000C7204();
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v16);
  *(v1 + 24) = sub_1000C7054();
  v11 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing14NetworkMonitor__status;
  v21 = 0;
  v12 = v17;
  sub_1000C6054();
  (*(v18 + 32))(v2 + v11, v12, v19);
  v13 = swift_allocObject();
  swift_weakInit();

  sub_1000229B4(sub_10008FD80, v13);
  sub_1000C6144();

  if (v20)
  {
    sub_1000C6154();
  }

  return v2;
}

uint64_t sub_10008F544(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v2 = sub_1000C6C84();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v25 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000C6CA4();
  v24 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000C61B4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10008FCFC();
    v22 = sub_1000C7034();
    v13 = swift_allocObject();
    swift_weakInit();
    (*(v9 + 16))(&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v23, v8);
    v14 = *(v9 + 80);
    v23 = v5;
    v15 = v3;
    v16 = (v14 + 24) & ~v14;
    v17 = swift_allocObject();
    *(v17 + 16) = v13;
    (*(v9 + 32))(v17 + v16, v11, v8);
    aBlock[4] = sub_10008FE4C;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10008EFD4;
    aBlock[3] = &unk_100109F58;
    v18 = _Block_copy(aBlock);

    sub_1000C6C94();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10008FEC8(&qword_100118F98, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000FEB8(&qword_100118FA0, &qword_1000D2898);
    sub_10008FF10(&qword_100118FA8, &qword_100118FA0, &qword_1000D2898);
    v19 = v25;
    sub_1000C7204();
    v20 = v22;
    sub_1000C7044();
    _Block_release(v18);

    (*(v15 + 8))(v19, v2);
    return (*(v24 + 8))(v7, v23);
  }

  return result;
}

uint64_t sub_10008F930(uint64_t a1)
{
  v1 = sub_1000C6194();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000C61A4();
    (*(v2 + 104))(v5, enum case for NWPath.Status.satisfied(_:), v1);
    v9 = sub_1000C6184();
    v10 = *(v2 + 8);
    v10(v5, v1);
    v10(v7, v1);
    swift_getKeyPath();
    swift_getKeyPath();
    v11[7] = (v9 & 1) == 0;
    return sub_1000C60A4();
  }

  return result;
}

uint64_t sub_10008FAE0()
{

  v1 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing14NetworkMonitor__status;
  v2 = sub_10000FEB8(&qword_1001185B8, &qword_1000D0BE0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NetworkMonitor(uint64_t a1)
{
  result = qword_100118EE0;
  if (!qword_100118EE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10008FBEC(uint64_t a1)
{
  sub_10008FC98();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10008FC98()
{
  if (!qword_100118EF0)
  {
    v0 = sub_1000C60B4();
    if (!v1)
    {
      atomic_store(v0, &qword_100118EF0);
    }
  }
}

unint64_t sub_10008FCFC()
{
  result = qword_10011A200;
  if (!qword_10011A200)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10011A200);
  }

  return result;
}

uint64_t sub_10008FD48()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008FD88()
{
  v1 = sub_1000C61B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10008FE4C()
{
  sub_1000C61B4();
  v1 = *(v0 + 16);

  return sub_10008F930(v1);
}

uint64_t sub_10008FEB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10008FEC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10008FF10(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100010624(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10008FF6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a1;
  v23 = a2;
  v3 = sub_1000C63B4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000FEB8(&qword_100118FE0, &qword_1000D2A58);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - v9;
  v11 = sub_10000FEB8(&qword_100118FD0, &qword_1000D2A48);
  v12 = *(v11 - 8);
  v21 = v11;
  v22 = v12;
  __chkstk_darwin(v11);
  v14 = &v20 - v13;
  v25 = a1;
  sub_10000FEB8(&qword_100119010, &qword_1000D2A68);
  sub_10001E490(&qword_100119018, &qword_100119010, &qword_1000D2A68, &protocol conformance descriptor for TupleView<A>);
  sub_1000C6864();
  sub_1000C63A4();
  v15 = sub_10001E490(&qword_100118FE8, &qword_100118FE0, &qword_1000D2A58, &protocol conformance descriptor for List<A, B>);
  sub_1000C69F4();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  v24 = v20;
  sub_10000FEB8(&qword_100118FD8, &qword_1000D2A50);
  v26 = v7;
  v27 = v3;
  v28 = v15;
  v29 = &protocol witness table for GroupedListStyle;
  swift_getOpaqueTypeConformance2();
  v16 = sub_100010624(&qword_100118FF0, &qword_1000D2A60);
  v17 = sub_10001E490(&qword_100118FF8, &qword_100118FF0, &qword_1000D2A60, &protocol conformance descriptor for ToolbarItem<A, B>);
  v26 = v16;
  v27 = v17;
  swift_getOpaqueTypeConformance2();
  v18 = v21;
  sub_1000C69D4();
  return (*(v22 + 8))(v14, v18);
}

uint64_t sub_100090340@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v50 = a2;
  v49 = sub_10000FEB8(&qword_100119070, &qword_1000D2AC8);
  v57 = *(v49 - 8);
  v3 = __chkstk_darwin(v49);
  v48 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v55 = &v42 - v5;
  v56 = sub_10000FEB8(&qword_100119078, &qword_1000D2AD0);
  v52 = *(v56 - 8);
  v6 = __chkstk_darwin(v56);
  v54 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v51 = &v42 - v8;
  v9 = sub_10000FEB8(&qword_100119080, &qword_1000D2AD8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v42 - v11;
  v53 = sub_10000FEB8(&qword_100119088, &qword_1000D2AE0);
  v47 = *(v53 - 8);
  v13 = v47;
  v14 = __chkstk_darwin(v53);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v42 - v17;
  v60 = a1;
  sub_10000FEB8(&qword_100119090, &qword_1000D2AE8);
  sub_1000967B4();
  sub_1000C6C14();
  sub_1000C6A34();
  sub_1000C6284();
  sub_100096950();
  v46 = v18;
  sub_1000C6974();

  (*(v10 + 8))(v12, v9);
  v59 = a1;
  sub_10000FEB8(&qword_1001190E8, &qword_1000D2B10);
  v19 = sub_100010624(&qword_1001190F0, &qword_1000D2B18);
  v20 = sub_100010624(&qword_1001190F8, &qword_1000D2B20);
  v21 = sub_1000969E8();
  v22 = sub_100096B84();
  v23 = sub_100096BD8();
  v61 = v19;
  v62 = &type metadata for TransportPresentationState;
  v63 = v20;
  v64 = v21;
  v65 = v22;
  v66 = v23;
  swift_getOpaqueTypeConformance2();
  v24 = v51;
  sub_1000C6C14();
  v58 = a1;
  sub_10000FEB8(&qword_100119158, &qword_1000D2B48);
  sub_100096DAC();
  v25 = v55;
  sub_1000C6C14();
  v42 = *(v13 + 16);
  v45 = v16;
  v26 = v53;
  v42(v16, v18, v53);
  v44 = *(v52 + 16);
  v27 = v54;
  v28 = v56;
  v44(v54, v24, v56);
  v43 = *(v57 + 16);
  v29 = v48;
  v30 = v25;
  v31 = v49;
  v43(v48, v30, v49);
  v32 = v50;
  v42(v50, v16, v26);
  v33 = sub_10000FEB8(&qword_100119170, &qword_1000D2B50);
  v44(&v32[*(v33 + 48)], v27, v28);
  v34 = v29;
  v43(&v32[*(v33 + 64)], v29, v31);
  v35 = *(v57 + 8);
  v36 = v31;
  v35(v55, v31);
  v37 = *(v52 + 8);
  v38 = v56;
  v37(v51, v56);
  v39 = *(v47 + 8);
  v40 = v53;
  v39(v46, v53);
  v35(v34, v36);
  v37(v54, v38);
  return (v39)(v45, v40);
}

double sub_1000909BC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000C65F4();
  v12 = 0;
  sub_100090B00(a1, __src);
  memcpy(__dst, __src, 0x101uLL);
  memcpy(v14, __src, 0x101uLL);
  sub_100017574(__dst, &v9, &qword_1001191F8, &qword_1000D2C90);
  sub_100010F24(v14, &qword_1001191F8, &qword_1000D2C90);
  memcpy(&v11[7], __dst, 0x101uLL);
  v5 = v12;
  v6 = [objc_opt_self() systemGroupedBackgroundColor];
  __src[0] = sub_1000C6A64();
  v7 = sub_1000C6B74();
  *a2 = v4;
  *(a2 + 8) = 0x4024000000000000;
  *(a2 + 16) = v5;
  memcpy((a2 + 17), v11, 0x108uLL);
  *(a2 + 288) = v7;
  *(a2 + 296) = 0xC034000000000000;
  result = 20.0;
  *(a2 + 304) = xmmword_1000D28F0;
  *(a2 + 320) = 0x4034000000000000;
  *(a2 + 328) = 0;
  return result;
}

uint64_t sub_100090B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v58 = a2;
  v2 = sub_1000C6A94();
  v52 = *(v2 - 8);
  *&v53 = v2;
  __chkstk_darwin(v2);
  v51 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v73 = sub_10009122C();
  *(&v73 + 1) = v4;
  sub_1000383C8();
  v5 = sub_1000C68D4();
  v7 = v6;
  v9 = v8;
  sub_1000C67C4();
  v10 = sub_1000C68B4();
  v12 = v11;
  v14 = v13;

  sub_1000500D8(v5, v7, v9 & 1);

  v57 = sub_1000C68A4();
  v61 = v15;
  LOBYTE(v5) = v16;
  v59 = v17;
  v18 = v48;
  sub_1000500D8(v10, v12, v14 & 1);

  v60 = sub_1000C6784();
  v19 = v5 & 1;
  LOBYTE(v73) = v5 & 1;
  LOBYTE(v90[0]) = 0;
  if (*v18)
  {
    v55 = 0;
    v56 = 0;
    v49 = 0;
    v54 = 0;
  }

  else
  {
    v56 = sub_100091BF0();
    v21 = v20;
    KeyPath = swift_getKeyPath();
    v55 = v21;

    v49 = KeyPath;

    v54 = 1;
  }

  if (*(v18 + 8))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    sub_1000C6A74();
    v24 = v51;
    v23 = v52;
    v25 = v53;
    (*(v52 + 104))(v51, enum case for Image.ResizingMode.stretch(_:), v53);
    v26 = sub_1000C6AB4();
    v48 = v26;

    (*(v23 + 8))(v24, v25);
    sub_1000C6C54();
    sub_1000C62C4();
    v101 = 1;
    *&v100[6] = v104;
    *&v100[22] = v105;
    *&v100[38] = v106;
    type metadata accessor for SharingModel(0);
    sub_1000970A8(&qword_100117158, type metadata accessor for SharingModel, &unk_1000D00B0);
    v27 = sub_1000C6404();
    v52 = v28;
    v29 = sub_1000C6404();
    v51 = v29;
    v31 = v30;
    v47 = v30;
    v46 = sub_1000C6784();
    v32 = v57;
    *&v64 = v57;
    *(&v64 + 1) = v61;
    v50 = v19;
    LOBYTE(v65) = v19;
    *(&v65 + 1) = *v103;
    DWORD1(v65) = *&v103[3];
    *(&v65 + 1) = v59;
    LOBYTE(v66) = v60;
    *(&v66 + 1) = *v102;
    DWORD1(v66) = *&v102[3];
    *(&v66 + 1) = 0;
    *&v67[0] = 0;
    v53 = xmmword_1000D2900;
    *(v67 + 8) = xmmword_1000D2900;
    BYTE8(v67[1]) = 0;
    *(v76 + 9) = *(v67 + 9);
    v75 = v66;
    v76[0] = v67[0];
    v73 = v64;
    v74 = v65;
    v68 = v26;
    *v69 = 1;
    *&v69[48] = *&v100[46];
    *&v70 = v29;
    *&v69[34] = *&v100[32];
    *&v69[18] = *&v100[16];
    *&v69[2] = *v100;
    *(v62 + 7) = v26;
    *(&v62[4] + 7) = *&v69[48];
    *(&v62[3] + 7) = *&v69[32];
    *(&v62[2] + 7) = *&v69[16];
    *(&v62[1] + 7) = *v69;
    *(&v70 + 1) = v31;
    LOBYTE(v71) = v46;
    DWORD1(v71) = *&v63[3];
    *(&v71 + 1) = *v63;
    *(&v71 + 1) = 0xC024000000000000;
    memset(v72, 0, 25);
    sub_100017574(&v64, v90, &qword_100119200, &qword_1000D2D10);
    v33 = v55;
    v34 = v56;
    v35 = v49;
    LOBYTE(v26) = v54;
    sub_10009752C(v56, v55, v49);
    sub_100017574(&v68, v90, &qword_100119208, &qword_1000D2D18);

    sub_100017574(&v70, v90, &qword_100119210, &qword_1000D2D20);
    sub_100097570(v34, v33, v35);
    v36 = v76[0];
    v37 = v58;
    *(v58 + 32) = v75;
    *(v37 + 48) = v36;
    *(v37 + 64) = v76[1];
    v38 = v74;
    *v37 = v73;
    *(v37 + 16) = v38;
    *(v37 + 80) = v34;
    *(v37 + 88) = v33;
    *(v37 + 96) = v35;
    *(v37 + 104) = v26;
    v39 = v62[1];
    *(v37 + 105) = v62[0];
    v40 = v62[2];
    v41 = v62[3];
    *(v37 + 168) = *(&v62[3] + 15);
    *(v37 + 153) = v41;
    *(v37 + 137) = v40;
    *(v37 + 121) = v39;
    v42 = v52;
    *(v37 + 184) = v27;
    *(v37 + 192) = v42;
    v43 = v71;
    *(v37 + 200) = v70;
    *(v37 + 216) = v43;
    *(v37 + 232) = v72[0];
    *(v37 + 241) = *(v72 + 9);
    v77[0] = v51;
    v77[1] = v47;
    v78 = v46;
    *v79 = *v63;
    *&v79[3] = *&v63[3];
    v80 = 0xC024000000000000;
    v81 = 0;
    v83 = 0;
    v82 = 0;
    v84 = 0;
    sub_100010F24(v77, &qword_100119210, &qword_1000D2D20);

    v85[0] = v48;
    v85[1] = 0;
    v86 = 1;
    v87 = *v100;
    v88 = *&v100[16];
    *v89 = *&v100[32];
    *&v89[14] = *&v100[46];
    sub_100010F24(v85, &qword_100119208, &qword_1000D2D18);
    sub_100097570(v34, v33, v35);
    v90[0] = v32;
    v90[1] = v61;
    v91 = v50;
    *v92 = *v103;
    *&v92[3] = *&v103[3];
    v93 = v59;
    v94 = v60;
    *v95 = *v102;
    *&v95[3] = *&v102[3];
    v97 = 0;
    v96 = 0;
    v98 = v53;
    v99 = 0;
    return sub_100010F24(v90, &qword_100119200, &qword_1000D2D10);
  }

  else
  {
    type metadata accessor for SharingModel(0);
    sub_1000970A8(&qword_100117158, type metadata accessor for SharingModel, &unk_1000D00B0);
    result = sub_1000C63F4();
    __break(1u);
  }

  return result;
}

uint64_t sub_10009122C()
{
  if (*v0 == 1)
  {
    v1 = [objc_opt_self() mainBundle];
    v85._countAndFlagsBits = 0x80000001000DC2A0;
    v101._countAndFlagsBits = 0x6E694C20646E6553;
    v101._object = 0xE90000000000006BLL;
    v116.value._countAndFlagsBits = 0;
    v116.value._object = 0;
    v2.super.isa = v1;
    v131._countAndFlagsBits = 0;
    v131._object = 0xE000000000000000;
    v3 = sub_1000C5B74(v101, v116, v2, v131, 0xD000000000000026, v85);

    return v3;
  }

  sub_10000FEB8(&qword_1001170C8, qword_1000CDDC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000CFF90;
  *(inited + 32) = 7;
  v86._object = (inited + 32);
  v6 = objc_opt_self();
  v7 = [v6 mainBundle];
  v86._countAndFlagsBits = 0x80000001000DBFA0;
  v102._countAndFlagsBits = 0x6F4E206572616853;
  v102._object = 0xEA00000000006574;
  v117.value._countAndFlagsBits = 0;
  v117.value._object = 0;
  v8.super.isa = v7;
  v132._countAndFlagsBits = 0;
  v132._object = 0xE000000000000000;
  v9 = sub_1000C5B74(v102, v117, v8, v132, 0xD000000000000026, v86);
  v11 = v10;

  *(inited + 40) = v9;
  *(inited + 48) = v11;
  *(inited + 56) = 8;
  v12 = [v6 mainBundle];
  v87._countAndFlagsBits = 0x80000001000DBFD0;
  v103._countAndFlagsBits = 0x6F46206572616853;
  v103._object = 0xEC0000007265646CLL;
  v118.value._countAndFlagsBits = 0;
  v118.value._object = 0;
  v13.super.isa = v12;
  v133._countAndFlagsBits = 0;
  v133._object = 0xE000000000000000;
  v14 = sub_1000C5B74(v103, v118, v13, v133, 0xD000000000000028, v87);
  v16 = v15;

  *(inited + 64) = v14;
  *(inited + 72) = v16;
  *(inited + 80) = 9;
  v17 = [v6 mainBundle];
  v88._countAndFlagsBits = 0x80000001000DC000;
  v104._countAndFlagsBits = 0x694C206572616853;
  v104._object = 0xEA00000000007473;
  v119.value._countAndFlagsBits = 0;
  v119.value._object = 0;
  v18.super.isa = v17;
  v134._countAndFlagsBits = 0;
  v134._object = 0xE000000000000000;
  v19 = sub_1000C5B74(v104, v119, v18, v134, 0xD00000000000002BLL, v88);
  v21 = v20;

  *(inited + 88) = v19;
  *(inited + 96) = v21;
  *(inited + 104) = 10;
  v22 = [v6 mainBundle];
  v89._countAndFlagsBits = 0x80000001000DC030;
  v105._countAndFlagsBits = 0x6154206572616853;
  v105._object = 0xEF70756F72472062;
  v120.value._countAndFlagsBits = 0;
  v120.value._object = 0;
  v23.super.isa = v22;
  v135._countAndFlagsBits = 0;
  v135._object = 0xE000000000000000;
  v24 = sub_1000C5B74(v105, v120, v23, v135, 0xD00000000000002BLL, v89);
  v26 = v25;

  *(inited + 112) = v24;
  *(inited + 120) = v26;
  *(inited + 128) = 11;
  v27 = [v6 mainBundle];
  v90._countAndFlagsBits = 0x80000001000DC060;
  v106._countAndFlagsBits = 0x6F42206572616853;
  v106._object = 0xEB00000000647261;
  v121.value._countAndFlagsBits = 0;
  v121.value._object = 0;
  v28.super.isa = v27;
  v136._countAndFlagsBits = 0;
  v136._object = 0xE000000000000000;
  v29 = sub_1000C5B74(v106, v121, v28, v136, 0xD000000000000030, v90);
  v31 = v30;

  *(inited + 136) = v29;
  *(inited + 144) = v31;
  *(inited + 152) = 0;
  v32 = [v6 mainBundle];
  v91._countAndFlagsBits = 0x80000001000DBFD0;
  v107._countAndFlagsBits = 0x6F46206572616853;
  v107._object = 0xEC0000007265646CLL;
  v122.value._countAndFlagsBits = 0;
  v122.value._object = 0;
  v33.super.isa = v32;
  v137._countAndFlagsBits = 0;
  v137._object = 0xE000000000000000;
  v34 = sub_1000C5B74(v107, v122, v33, v137, 0xD000000000000028, v91);
  v36 = v35;

  *(inited + 160) = v34;
  *(inited + 168) = v36;
  *(inited + 176) = 1;
  v37 = [v6 mainBundle];
  v92._countAndFlagsBits = 0x80000001000DC0A0;
  v108._countAndFlagsBits = 0x6946206572616853;
  v108._object = 0xEA0000000000656CLL;
  v123.value._countAndFlagsBits = 0;
  v123.value._object = 0;
  v38.super.isa = v37;
  v138._countAndFlagsBits = 0;
  v138._object = 0xE000000000000000;
  v39 = sub_1000C5B74(v108, v123, v38, v138, 0xD000000000000026, v92);
  v41 = v40;

  *(inited + 184) = v39;
  *(inited + 192) = v41;
  *(inited + 200) = 2;
  v42 = [v6 mainBundle];
  v109._countAndFlagsBits = 0xD000000000000011;
  v93._countAndFlagsBits = 0x80000001000DC0F0;
  v109._object = 0x80000001000DC0D0;
  v124.value._countAndFlagsBits = 0;
  v124.value._object = 0;
  v43.super.isa = v42;
  v139._countAndFlagsBits = 0;
  v139._object = 0xE000000000000000;
  v44 = sub_1000C5B74(v109, v124, v43, v139, 0xD00000000000002DLL, v93);
  v46 = v45;

  *(inited + 208) = v44;
  *(inited + 216) = v46;
  *(inited + 224) = 3;
  v47 = [v6 mainBundle];
  v110._countAndFlagsBits = 0xD000000000000012;
  v94._countAndFlagsBits = 0x80000001000DC140;
  v110._object = 0x80000001000DC120;
  v125.value._countAndFlagsBits = 0;
  v125.value._object = 0;
  v48.super.isa = v47;
  v140._countAndFlagsBits = 0;
  v140._object = 0xE000000000000000;
  v49 = sub_1000C5B74(v110, v125, v48, v140, 0xD00000000000002ELL, v94);
  v51 = v50;

  *(inited + 232) = v49;
  *(inited + 240) = v51;
  *(inited + 248) = 4;
  v52 = [v6 mainBundle];
  v95._countAndFlagsBits = 0x80000001000DC170;
  v111._countAndFlagsBits = 0x6D49206572616853;
  v111._object = 0xEB00000000656761;
  v126.value._countAndFlagsBits = 0;
  v126.value._object = 0;
  v53.super.isa = v52;
  v141._countAndFlagsBits = 0;
  v141._object = 0xE000000000000000;
  v54 = sub_1000C5B74(v111, v126, v53, v141, 0xD000000000000027, v95);
  v56 = v55;

  *(inited + 256) = v54;
  *(inited + 264) = v56;
  *(inited + 272) = 5;
  v57 = [v6 mainBundle];
  v96._countAndFlagsBits = 0x80000001000DC1A0;
  v112._countAndFlagsBits = 0x6F4D206572616853;
  v112._object = 0xEB00000000656976;
  v127.value._countAndFlagsBits = 0;
  v127.value._object = 0;
  v58.super.isa = v57;
  v142._countAndFlagsBits = 0;
  v142._object = 0xE000000000000000;
  v59 = sub_1000C5B74(v112, v127, v58, v142, 0xD000000000000027, v96);
  v61 = v60;

  *(inited + 280) = v59;
  *(inited + 288) = v61;
  *(inited + 296) = 6;
  v62 = [v6 mainBundle];
  v97._countAndFlagsBits = 0x80000001000DC1D0;
  v113._countAndFlagsBits = 0x4450206572616853;
  v113._object = 0xE900000000000046;
  v128.value._countAndFlagsBits = 0;
  v128.value._object = 0;
  v63.super.isa = v62;
  v143._countAndFlagsBits = 0;
  v143._object = 0xE000000000000000;
  v64 = sub_1000C5B74(v113, v128, v63, v143, 0xD000000000000025, v97);
  v66 = v65;

  *(inited + 304) = v64;
  *(inited + 312) = v66;
  *(inited + 320) = 13;
  v67 = [v6 mainBundle];
  v114._countAndFlagsBits = 0xD00000000000001ALL;
  v98._countAndFlagsBits = 0x80000001000DC220;
  v114._object = 0x80000001000DC200;
  v129.value._countAndFlagsBits = 0;
  v129.value._object = 0;
  v68.super.isa = v67;
  v144._countAndFlagsBits = 0x706F655020646441;
  v144._object = 0xEA0000000000656CLL;
  v69 = sub_1000C5B74(v114, v129, v68, v144, 0xD00000000000003ALL, v98);
  v71 = v70;

  *(inited + 328) = v69;
  *(inited + 336) = v71;
  v72 = sub_100078E3C(inited);
  swift_setDeallocating();
  sub_10000FEB8(&unk_1001170D0, &qword_1000D1040);
  swift_arrayDestroy();
  if (!*(v0 + 8))
  {
    type metadata accessor for SharingModel(0);
    sub_1000970A8(&qword_100117158, type metadata accessor for SharingModel, &unk_1000D00B0);
    result = sub_1000C63F4();
    __break(1u);
    return result;
  }

  v73 = sub_10003CC40(v72);
  v75 = v74;
  v76 = *(v72 + 16);

  if (v76 && (v77 = sub_100071E64(13), (v78 & 1) != 0))
  {
    v79 = (*(v72 + 56) + 16 * v77);
    v81 = *v79;
    v80 = v79[1];

    if (v73 == v81 && v75 == v80)
    {

      goto LABEL_13;
    }

    v82 = sub_1000C73A4();

    if (v82)
    {
LABEL_13:
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000C6094();

      if (v100 == 3)
      {

        v83 = [v6 mainBundle];
        v99._countAndFlagsBits = 0x80000001000DC260;
        v115._countAndFlagsBits = 0x706F655020646441;
        v115._object = 0xEA0000000000656CLL;
        v130.value._countAndFlagsBits = 0;
        v130.value._object = 0;
        v84.super.isa = v83;
        v145._countAndFlagsBits = 0;
        v145._object = 0xE000000000000000;
        v73 = sub_1000C5B74(v115, v130, v84, v145, 0xD00000000000003BLL, v99);
      }

      return v73;
    }
  }

  else
  {
  }

  return v73;
}

uint64_t sub_100091BF0()
{
  sub_10000FEB8(&qword_1001170C8, qword_1000CDDC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000CE810;
  *(inited + 32) = 7;
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v49._countAndFlagsBits = 0x80000001000DBC60;
  v58._countAndFlagsBits = 0xD000000000000045;
  v58._object = 0x80000001000DBC10;
  v66.value._countAndFlagsBits = 0;
  v66.value._object = 0;
  v3.super.isa = v2;
  v74._countAndFlagsBits = 0;
  v74._object = 0xE000000000000000;
  v4 = sub_1000C5B74(v58, v66, v3, v74, 0xD000000000000029, v49);
  v6 = v5;

  *(inited + 40) = v4;
  *(inited + 48) = v6;
  *(inited + 56) = 9;
  v7 = [v1 mainBundle];
  v59._countAndFlagsBits = 0xD000000000000017;
  v50._countAndFlagsBits = 0x80000001000DBD00;
  v59._object = 0x80000001000DBC90;
  v75._object = 0x80000001000DBCB0;
  v67.value._countAndFlagsBits = 0;
  v67.value._object = 0;
  v8.super.isa = v7;
  v75._countAndFlagsBits = 0xD000000000000040;
  v9 = sub_1000C5B74(v59, v67, v8, v75, 0xD000000000000029, v50);
  v11 = v10;

  *(inited + 64) = v9;
  *(inited + 72) = v11;
  *(inited + 80) = 10;
  v12 = [v1 mainBundle];
  v60._countAndFlagsBits = 0xD00000000000001CLL;
  v51._countAndFlagsBits = 0x80000001000DBD50;
  v60._object = 0x80000001000DBD30;
  v76._object = 0x80000001000DBCB0;
  v68.value._countAndFlagsBits = 0;
  v68.value._object = 0;
  v13.super.isa = v12;
  v76._countAndFlagsBits = 0xD000000000000040;
  v14 = sub_1000C5B74(v60, v68, v13, v76, 0xD00000000000002ELL, v51);
  v16 = v15;

  *(inited + 88) = v14;
  *(inited + 96) = v16;
  *(inited + 104) = 11;
  v17 = [v1 mainBundle];
  v61._countAndFlagsBits = 0xD000000000000018;
  v52._countAndFlagsBits = 0x80000001000DBDA0;
  v61._object = 0x80000001000DBD80;
  v77._object = 0x80000001000DBCB0;
  v69.value._countAndFlagsBits = 0;
  v69.value._object = 0;
  v18.super.isa = v17;
  v77._countAndFlagsBits = 0xD000000000000040;
  v19 = sub_1000C5B74(v61, v69, v18, v77, 0xD00000000000002ALL, v52);
  v21 = v20;

  *(inited + 112) = v19;
  *(inited + 120) = v21;
  *(inited + 128) = 13;
  v22 = [v1 mainBundle];
  v62._countAndFlagsBits = 0xD000000000000021;
  v53._countAndFlagsBits = 0x80000001000DBE00;
  v62._object = 0x80000001000DBDD0;
  v78._object = 0x80000001000DBCB0;
  v70.value._countAndFlagsBits = 0;
  v70.value._object = 0;
  v23.super.isa = v22;
  v78._countAndFlagsBits = 0xD000000000000040;
  v24 = sub_1000C5B74(v62, v70, v23, v78, 0xD000000000000039, v53);
  v26 = v25;

  *(inited + 136) = v24;
  *(inited + 144) = v26;
  v27 = sub_100078E3C(inited);
  swift_setDeallocating();
  sub_10000FEB8(&unk_1001170D0, &qword_1000D1040);
  swift_arrayDestroy();
  v28 = [v1 mainBundle];
  v54._countAndFlagsBits = 0x80000001000DBE90;
  v63._countAndFlagsBits = 0xD000000000000043;
  v63._object = 0x80000001000DBE40;
  v71.value._countAndFlagsBits = 0;
  v71.value._object = 0;
  v29.super.isa = v28;
  v79._countAndFlagsBits = 0;
  v79._object = 0xE000000000000000;
  v30 = sub_1000C5B74(v63, v71, v29, v79, 0xD00000000000002BLL, v54);
  v32 = v31;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100030744(v30, v32, 8, isUniquelyReferenced_nonNull_native);
  v34 = v27;
  v35 = [v1 mainBundle];
  v55._countAndFlagsBits = 0x80000001000DBE90;
  v64._countAndFlagsBits = 0xD000000000000050;
  v64._object = 0x80000001000DBEC0;
  v72.value._countAndFlagsBits = 0;
  v72.value._object = 0;
  v36.super.isa = v35;
  v80._countAndFlagsBits = 0;
  v80._object = 0xE000000000000000;
  v37 = sub_1000C5B74(v64, v72, v36, v80, 0xD00000000000002BLL, v55);
  v39 = v38;

  v40 = swift_isUniquelyReferenced_nonNull_native();
  sub_100030744(v37, v39, 0, v40);
  v41 = [v1 mainBundle];
  v56._countAndFlagsBits = 0x80000001000DBF70;
  v65._countAndFlagsBits = 0xD00000000000004ELL;
  v65._object = 0x80000001000DBF20;
  v73.value._countAndFlagsBits = 0;
  v73.value._object = 0;
  v42.super.isa = v41;
  v81._countAndFlagsBits = 0;
  v81._object = 0xE000000000000000;
  v43 = sub_1000C5B74(v65, v73, v42, v81, 0xD000000000000029, v56);
  v45 = v44;

  v46 = swift_isUniquelyReferenced_nonNull_native();
  sub_100030744(v43, v45, 1, v46);
  if (*(v57 + 8))
  {

    v47 = sub_10003CC40(v34);

    return v47;
  }

  else
  {
    type metadata accessor for SharingModel(0);
    sub_1000970A8(&qword_100117158, type metadata accessor for SharingModel, &unk_1000D00B0);
    result = sub_1000C63F4();
    __break(1u);
  }

  return result;
}

uint64_t sub_10009215C(_OWORD *a1)
{
  v2 = sub_10000FEB8(&qword_1001190F0, &qword_1000D2B18);
  __chkstk_darwin(v2);
  v4 = &v15 - v3;
  *v4 = sub_1000C65F4();
  *(v4 + 1) = 0;
  v4[16] = 0;
  v5 = sub_10000FEB8(&qword_100119178, &qword_1000D2B58);
  sub_1000923FC(a1, &v4[*(v5 + 44)]);
  v6 = &v4[*(sub_10000FEB8(&qword_100119110, &qword_1000D2B28) + 36)];
  *v6 = xmmword_1000D2910;
  *(v6 + 1) = xmmword_1000D2910;
  v6[32] = 0;
  v7 = [objc_opt_self() systemGroupedBackgroundColor];
  *&v15 = sub_1000C6A64();
  *&v4[*(v2 + 36)] = sub_1000C6B74();
  v17 = *(a1 + 40);
  sub_10000FEB8(&qword_100119180, &qword_1000D2B60);
  sub_1000C6B04();
  v17 = v15;
  v18 = v16;
  v8 = swift_allocObject();
  v9 = a1[9];
  v8[9] = a1[8];
  v8[10] = v9;
  v8[11] = a1[10];
  v10 = a1[5];
  v8[5] = a1[4];
  v8[6] = v10;
  v11 = a1[7];
  v8[7] = a1[6];
  v8[8] = v11;
  v12 = a1[1];
  v8[1] = *a1;
  v8[2] = v12;
  v13 = a1[3];
  v8[3] = a1[2];
  v8[4] = v13;
  sub_10008EAE8(a1, &v15);
  sub_10000FEB8(&qword_1001190F8, &qword_1000D2B20);
  sub_1000969E8();
  sub_100096B84();
  sub_100096BD8();
  sub_1000C69C4();

  return sub_100010F24(v4, &qword_1001190F0, &qword_1000D2B18);
}

uint64_t sub_1000923FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000FEB8(&qword_1001191B8, &qword_1000D2C08);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = (v27 - v8);
  v10 = [objc_opt_self() mainBundle];
  v26._countAndFlagsBits = 0x80000001000DBBC0;
  v28._object = 0x80000001000DBB80;
  v28._countAndFlagsBits = 0x1000000000000030;
  v29.value._countAndFlagsBits = 0;
  v29.value._object = 0;
  v11.super.isa = v10;
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  v12 = sub_1000C5B74(v28, v29, v11, v30, 0xD00000000000002CLL, v26);
  v14 = v13;

  v27[0] = v12;
  v27[1] = v14;
  sub_1000383C8();
  v15 = sub_1000C68D4();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  *v9 = sub_1000C6C54();
  v9[1] = v22;
  v23 = sub_10000FEB8(&qword_1001191C0, &qword_1000D2C10);
  sub_100092638(a1, v9 + *(v23 + 44));
  sub_100017574(v9, v7, &qword_1001191B8, &qword_1000D2C08);
  *a2 = v15;
  *(a2 + 8) = v17;
  *(a2 + 16) = v19 & 1;
  *(a2 + 24) = v21;
  v24 = sub_10000FEB8(&qword_1001191C8, &qword_1000D2C18);
  sub_100017574(v7, a2 + *(v24 + 48), &qword_1001191B8, &qword_1000D2C08);
  sub_100050DE0(v15, v17, v19 & 1);

  sub_100010F24(v9, &qword_1001191B8, &qword_1000D2C08);
  sub_100010F24(v7, &qword_1001191B8, &qword_1000D2C08);
  sub_1000500D8(v15, v17, v19 & 1);
}

uint64_t sub_100092638@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v52 = a2;
  v3 = sub_10000FEB8(&qword_1001191D0, &qword_1000D2C20);
  v48 = *(v3 - 8);
  v49 = v3;
  __chkstk_darwin(v3);
  v5 = &v46 - v4;
  v6 = sub_10000FEB8(&qword_1001191D8, &qword_1000D2C28);
  v7 = __chkstk_darwin(v6 - 8);
  v51 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = &v46 - v9;
    v63[0] = *(a1 + 40);
    swift_retain_n();
    sub_10000FEB8(&qword_100119180, &qword_1000D2B60);
    sub_1000C6B04();
    v61 = *(&v64 + 1);
    v62 = v64;
    v60 = v65[0];
    v12 = *(a1 + 72);
    v64 = *(a1 + 56);
    *v65 = v12;
    *&v65[16] = *(a1 + 88);
    *&v65[32] = *(a1 + 104);
    sub_10000FEB8(&qword_1001191A0, &qword_1000D2B80);
    sub_1000C6B04();
    v63[0] = *(a1 + 112);
    *&v63[1] = *(a1 + 128);
    sub_10000FEB8(&qword_100119198, &qword_1000D2B78);
    sub_1000C6B04();
    v58 = *(&v64 + 1);
    v59 = v64;
    v57 = *v65;
    v50 = *&v65[8];
    v63[0] = *(a1 + 136);
    *&v63[1] = *(a1 + 152);
    sub_10000FEB8(&qword_1001191B0, &qword_1000D2BE8);
    sub_1000C6B04();
    v55 = *(&v64 + 1);
    v56 = v64;
    v53 = *&v65[8];
    v54 = *v65;
    *&v93[7] = v88;
    *&v93[23] = v89;
    *&v93[39] = v90;
    *&v93[55] = v91;
    v92 = 0;
    v47 = sub_1000C6774();
    sub_1000C6204();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v46 = v92;
    v94 = 0;
    sub_1000C6C54();
    v21 = 1;
    sub_1000C62C4();
    *(v95 + 7) = *(&v95[3] + 8);
    *(&v95[1] + 7) = *(&v95[4] + 8);
    *(&v95[2] + 7) = *(&v95[5] + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    v22 = v64;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    v23 = v49;
    if (v64 - 1 < 2)
    {
      sub_1000C6264();
      sub_1000C6C74();
      v25 = v24;
      v27 = v26;
      v28 = &v5[*(sub_10000FEB8(&qword_1001191F0, &qword_1000D2C88) + 36)];
      __asm { FMOV            V0.2D, #1.0 }

      *v28 = _Q0;
      *(v28 + 2) = v25;
      *(v28 + 3) = v27;
      sub_1000C6C54();
      sub_1000C62C4();
      v34 = &v5[*(v23 + 36)];
      v35 = *(&v95[7] + 8);
      *v34 = *(&v95[6] + 8);
      *(v34 + 1) = v35;
      *(v34 + 2) = *(&v95[8] + 8);
      sub_100097460(v5, v11);
      v21 = 0;
    }

    v36 = v11;
    (*(v48 + 56))(v11, v21, 1, v23);
    if ((v22 - 1) >= 2)
    {
      v37 = 1.0;
    }

    else
    {
      v37 = 0.0;
    }

    v38 = v11;
    v39 = v51;
    sub_100017574(v38, v51, &qword_1001191D8, &qword_1000D2C28);
    *(&v63[2] + 9) = *&v93[16];
    *(&v63[3] + 9) = *&v93[32];
    *&v63[0] = v10;
    *(&v63[0] + 1) = v62;
    v49 = v10;
    *&v63[1] = v61;
    BYTE8(v63[1]) = v60;
    *(&v63[4] + 9) = *&v93[48];
    *(&v63[1] + 9) = *v93;
    *(&v63[5] + 1) = *&v93[63];
    *&v63[6] = v59;
    *(&v63[6] + 1) = v58;
    *&v63[7] = v57;
    v40 = v50;
    *(&v63[7] + 1) = v50;
    *&v63[8] = v56;
    *(&v63[8] + 1) = v55;
    *&v63[9] = v54;
    *(&v63[16] + 1) = v95[2];
    *(&v63[15] + 1) = v95[1];
    *(&v63[9] + 1) = v53;
    *&v63[10] = sub_10008DA20;
    *(&v63[10] + 1) = 0;
    v42 = v46;
    v41 = v47;
    LOBYTE(v63[11]) = v46;
    BYTE8(v63[11]) = v47;
    *&v63[12] = v14;
    *(&v63[12] + 1) = v16;
    *&v63[13] = v18;
    *(&v63[13] + 1) = v20;
    LOBYTE(v63[14]) = 0;
    *&v63[17] = *(&v95[2] + 15);
    *(&v63[14] + 1) = v95[0];
    *(&v63[17] + 1) = v37;
    v43 = v52;
    memcpy(v52, v63, 0x120uLL);
    v44 = v43 + *(sub_10000FEB8(&qword_1001191E0, &qword_1000D2C78) + 48);
    sub_100017574(v39, v44, &qword_1001191D8, &qword_1000D2C28);
    sub_100017574(v63, &v64, &qword_1001191E8, &qword_1000D2C80);
    sub_100010F24(v36, &qword_1001191D8, &qword_1000D2C28);
    sub_100010F24(v39, &qword_1001191D8, &qword_1000D2C28);
    *&v65[25] = *&v93[16];
    *&v65[41] = *&v93[32];
    *v66 = *&v93[48];
    *&v64 = v49;
    *(&v64 + 1) = v62;
    *v65 = v61;
    v65[8] = v60;
    *&v65[9] = *v93;
    *&v66[15] = *&v93[63];
    v67 = v59;
    v68 = v58;
    v69 = v57;
    v70 = v40;
    v71 = v56;
    v72 = v55;
    v73 = v54;
    v74 = v53;
    v75 = sub_10008DA20;
    v76 = 0;
    v77 = v42;
    v78 = v41;
    v79 = v14;
    v80 = v16;
    v81 = v18;
    v82 = v20;
    v83 = 0;
    *v86 = v95[2];
    *&v86[15] = *(&v95[2] + 15);
    v85 = v95[1];
    v84 = v95[0];
    v87 = v37;
    return sub_100010F24(&v64, &qword_1001191E8, &qword_1000D2C80);
  }

  else
  {
    type metadata accessor for SharingModel(0);
    sub_1000970A8(&qword_100117158, type metadata accessor for SharingModel, &unk_1000D00B0);
    result = sub_1000C63F4();
    __break(1u);
  }

  return result;
}

uint64_t sub_100092D48@<X0>(uint64_t a1@<X8>)
{
  sub_1000C65D4();
  result = sub_1000C68C4();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100092DC8()
{
  sub_10000FEB8(&qword_100116370, &qword_1000CDD30);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000CB170;
  *(v0 + 56) = &type metadata for String;
  *(v0 + 32) = 0xD000000000000010;
  *(v0 + 40) = 0x80000001000DBB60;
  sub_1000C7454();
}

uint64_t sub_100092E64@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10000FEB8(&qword_100119188, &qword_1000D2B68);
  __chkstk_darwin(v6);
  v8 = &v51 - v7;
  v9 = sub_10000FEB8(&qword_100119190, &qword_1000D2B70);
  __chkstk_darwin(v9);
  v11 = &v51 - v10;
  v52 = sub_10000FEB8(&qword_100119140, &qword_1000D2B38);
  __chkstk_darwin(v52);
  v13 = &v51 - v12;
  v14 = type metadata accessor for ComposeMailView(0);
  __chkstk_darwin(v14);
  v16 = (&v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*a1 > 1u)
  {
    if (*a1 == 2)
    {
      v30 = swift_allocObject();
      v31 = *(a2 + 144);
      v30[9] = *(a2 + 128);
      v30[10] = v31;
      v30[11] = *(a2 + 160);
      v32 = *(a2 + 80);
      v30[5] = *(a2 + 64);
      v30[6] = v32;
      v33 = *(a2 + 112);
      v30[7] = *(a2 + 96);
      v30[8] = v33;
      v34 = *(a2 + 16);
      v30[1] = *a2;
      v30[2] = v34;
      v35 = *(a2 + 48);
      v30[3] = *(a2 + 32);
      v30[4] = v35;
      *&v53 = _swiftEmptyArrayStorage;
      *(&v53 + 1) = sub_100096EC0;
      *&v54 = v30;
      BYTE8(v54) = 1;
    }

    else
    {
      v43 = swift_allocObject();
      v44 = *(a2 + 144);
      v43[9] = *(a2 + 128);
      v43[10] = v44;
      v43[11] = *(a2 + 160);
      v45 = *(a2 + 80);
      v43[5] = *(a2 + 64);
      v43[6] = v45;
      v46 = *(a2 + 112);
      v43[7] = *(a2 + 96);
      v43[8] = v46;
      v47 = *(a2 + 16);
      v43[1] = *a2;
      v43[2] = v47;
      v48 = *(a2 + 48);
      v43[3] = *(a2 + 32);
      v43[4] = v48;
      *&v53 = _swiftEmptyArrayStorage;
      *(&v53 + 1) = sub_100096EF8;
      *&v54 = v43;
      BYTE8(v54) = 0;
    }

    sub_10008EAE8(a2, &v57);
    sub_100083C08();

    sub_1000C6624();
    v49 = v58;
    v50 = BYTE8(v58);
    *v8 = v57;
    *(v8 + 2) = v49;
    v8[24] = v50;
    swift_storeEnumTagMultiPayload();
    sub_10000FEB8(&qword_100119150, &qword_1000D2B40);
    sub_100096C64();
    sub_100096D20();
    sub_1000C6624();
  }

  else if (*a1)
  {
    v57 = *(a2 + 112);
    *&v58 = *(a2 + 128);
    sub_10000FEB8(&qword_100119198, &qword_1000D2B78);
    sub_1000C6AE4();
    v51 = a3;
    v36 = v53;
    v37 = swift_allocObject();
    v38 = *(a2 + 144);
    v37[9] = *(a2 + 128);
    v37[10] = v38;
    v37[11] = *(a2 + 160);
    v39 = *(a2 + 80);
    v37[5] = *(a2 + 64);
    v37[6] = v39;
    v40 = *(a2 + 112);
    v37[7] = *(a2 + 96);
    v37[8] = v40;
    v41 = *(a2 + 16);
    v37[1] = *a2;
    v37[2] = v41;
    v42 = *(a2 + 48);
    v37[3] = *(a2 + 32);
    v37[4] = v42;
    *v11 = _swiftEmptyArrayStorage;
    *(v11 + 8) = v36;
    *(v11 + 3) = sub_100096F30;
    *(v11 + 4) = v37;
    swift_storeEnumTagMultiPayload();
    sub_10008EAE8(a2, &v57);
    sub_1000970A8(&qword_100116AE8, type metadata accessor for ComposeMailView, &unk_1000CCCC8);
    sub_10008B7B4();

    sub_1000C6624();
    sub_100017574(v13, v8, &qword_100119140, &qword_1000D2B38);
    swift_storeEnumTagMultiPayload();
    sub_10000FEB8(&qword_100119150, &qword_1000D2B40);
    sub_100096C64();
    sub_100096D20();
    sub_1000C6624();

    return sub_100010F24(v13, &qword_100119140, &qword_1000D2B38);
  }

  else
  {
    v17 = *(a2 + 72);
    v57 = *(a2 + 56);
    v18 = *(a2 + 88);
    v58 = v17;
    v59 = v18;
    v60 = *(a2 + 104);
    sub_10000FEB8(&qword_1001191A0, &qword_1000D2B80);
    sub_1000C6B04();
    v19 = swift_allocObject();
    v20 = *(a2 + 144);
    *(v19 + 9) = *(a2 + 128);
    *(v19 + 10) = v20;
    *(v19 + 11) = *(a2 + 160);
    v21 = *(a2 + 80);
    *(v19 + 5) = *(a2 + 64);
    *(v19 + 6) = v21;
    v22 = *(a2 + 112);
    *(v19 + 7) = *(a2 + 96);
    *(v19 + 8) = v22;
    v23 = *(a2 + 16);
    *(v19 + 1) = *a2;
    *(v19 + 2) = v23;
    v24 = *(a2 + 48);
    *(v19 + 3) = *(a2 + 32);
    *(v19 + 4) = v24;
    *v16 = swift_getKeyPath();
    sub_10000FEB8(&qword_100116AF8, &qword_1000D6470);
    swift_storeEnumTagMultiPayload();
    v25 = (v16 + *(v14 + 20));
    v26 = v54;
    *v25 = v53;
    v25[1] = v26;
    v27 = v56;
    v25[2] = v55;
    v25[3] = v27;
    v28 = (v16 + *(v14 + 24));
    *v28 = sub_100096FD8;
    v28[1] = v19;
    sub_100096FE8(v16, v11);
    swift_storeEnumTagMultiPayload();
    sub_10008EAE8(a2, &v57);
    sub_1000970A8(&qword_100116AE8, type metadata accessor for ComposeMailView, &unk_1000CCCC8);
    sub_10008B7B4();
    sub_1000C6624();
    sub_100017574(v13, v8, &qword_100119140, &qword_1000D2B38);
    swift_storeEnumTagMultiPayload();
    sub_10000FEB8(&qword_100119150, &qword_1000D2B40);
    sub_100096C64();
    sub_100096D20();
    sub_1000C6624();
    sub_100010F24(v13, &qword_100119140, &qword_1000D2B38);
    return sub_10009704C(v16);
  }
}

uint64_t sub_1000935D8(uint64_t a1, char a2, uint64_t a3)
{
  v6 = sub_1000C5F74();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  result = __chkstk_darwin(v10 - 8);
  v13 = v33 - v12;
  if ((a2 & 1) == 0)
  {
    if (a1 != 2)
    {
      return result;
    }

    v21 = *(a3 + 8);
    if (v21)
    {
      v22 = *(a3 + 72);
      v34[0] = *(a3 + 56);
      v34[1] = v22;
      v34[2] = *(a3 + 88);
      v35 = *(a3 + 104);
      swift_retain_n();
      sub_10000FEB8(&qword_1001191A0, &qword_1000D2B80);
      sub_1000C6AE4();

      v23 = v33[2];

      if (v23)
      {
        v24 = v23;
      }

      else
      {
        v24 = _swiftEmptyArrayStorage;
      }

      sub_1000B0F08(v24);

      v25 = *(a3 + 24);
      if (v25)
      {
        v26 = sub_1000970A8(&qword_1001191A8, type metadata accessor for ActivitiesModelData, &unk_1000CC424);
        v27 = sub_1000C6F44();
        (*(*(v27 - 8) + 56))(v13, 1, 1, v27);
        sub_1000C6F14();
        swift_retain_n();

        v28 = sub_1000C6F04();
        v29 = swift_allocObject();
        *(v29 + 16) = v28;
        *(v29 + 24) = &protocol witness table for MainActor;
        *(v29 + 32) = v21;
        *(v29 + 40) = 1;
        *(v29 + 48) = v25;
        *(v29 + 56) = v26;
        sub_1000B8860(0, 0, v13, &unk_1000D2BC8, v29);
      }

      type metadata accessor for ActivitiesModelData(0);
      v30 = &qword_100116750;
      v31 = type metadata accessor for ActivitiesModelData;
      v32 = &unk_1000CC440;
    }

    else
    {
      type metadata accessor for SharingModel(0);
      v30 = &qword_100117158;
      v31 = type metadata accessor for SharingModel;
      v32 = &unk_1000D00B0;
    }

    sub_1000970A8(v30, v31, v32);
    result = sub_1000C63F4();
    __break(1u);
    return result;
  }

  sub_1000C5F54();
  swift_errorRetain();
  v14 = sub_1000C5F64();
  v15 = sub_1000C6FD4();
  sub_10008ADE8(a1, 1);
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v34[0] = v17;
    *v16 = 136315138;
    v33[0] = a1;
    swift_errorRetain();
    sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
    v18 = sub_1000C6D94();
    v20 = sub_100071844(v18, v19, v34);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "Failed to present Mail compose: %s", v16, 0xCu);
    sub_100010544(v17);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100093A60(char a1, void *a2)
{
  v4 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_1000C5F74();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C5F54();
  v11 = sub_1000C5F64();
  v12 = sub_1000C6FF4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v11, v12, "Did message sent: %{BOOL}d", v13, 8u);
  }

  result = (*(v8 + 8))(v10, v7);
  if (a1)
  {
    v15 = a2[1];
    if (v15)
    {
      v16 = a2[3];
      if (v16)
      {
        v17 = sub_1000970A8(&qword_1001191A8, type metadata accessor for ActivitiesModelData, &unk_1000CC424);
        v18 = sub_1000C6F44();
        (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
        sub_1000C6F14();
        swift_retain_n();
        swift_retain_n();
        v19 = sub_1000C6F04();
        v20 = swift_allocObject();
        *(v20 + 16) = v19;
        *(v20 + 24) = &protocol witness table for MainActor;
        *(v20 + 32) = v15;
        *(v20 + 40) = 1;
        *(v20 + 48) = v16;
        *(v20 + 56) = v17;
        sub_1000B8860(0, 0, v6, &unk_1000D2BD0, v20);
      }
    }

    else
    {
      type metadata accessor for SharingModel(0);
      sub_1000970A8(&qword_100117158, type metadata accessor for SharingModel, &unk_1000D00B0);
      sub_1000C63F4();
      __break(1u);
    }

    type metadata accessor for ActivitiesModelData(0);
    sub_1000970A8(&qword_100116750, type metadata accessor for ActivitiesModelData, &unk_1000CC440);

    result = sub_1000C63F4();
    __break(1u);
  }

  return result;
}

uint64_t sub_100093DF0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 56) = a5;
  *(v6 + 64) = a6;
  *(v6 + 128) = a4;
  sub_1000C6F14();
  *(v6 + 72) = sub_1000C6F04();
  v8 = sub_1000C6ED4();
  *(v6 + 80) = v8;
  *(v6 + 88) = v7;

  return _swift_task_switch(sub_100093E8C, v8, v7);
}

uint64_t sub_100093E8C()
{
  v1 = *(v0 + 128);
  v2 = *(*(v0 + 56) + 8);
  *(v0 + 96) = v2;
  if (v1 == 1)
  {
    if (v2)
    {

      v3 = swift_task_alloc();
      *(v0 + 104) = v3;
      *v3 = v0;
      v3[1] = sub_100094060;

      return sub_100056B08();
    }

    goto LABEL_13;
  }

  if (!v2)
  {
LABEL_13:
    type metadata accessor for SharingModel(0);
    sub_1000970A8(&qword_100117158, type metadata accessor for SharingModel, &unk_1000D00B0);

    return sub_1000C63F4();
  }

  if (*(v0 + 64))
  {
    v5 = *(v0 + 64);
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  sub_1000B0F08(v5);

  v6 = swift_task_alloc();
  *(v0 + 120) = v6;
  *v6 = v0;
  v6[1] = sub_1000941DC;

  return sub_10006D96C();
}

uint64_t sub_100094060()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_1000943D4;
  }

  else
  {

    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_10009417C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10009417C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000941DC()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_100094320, v3, v2);
}

uint64_t sub_100094320()
{
  v1 = *(v0 + 56);

  v2 = *(v1 + 136);
  *(v0 + 32) = *(v1 + 152);
  *(v0 + 16) = v2;
  sub_10000FEB8(&qword_1001191B0, &qword_1000D2BE8);
  v3 = sub_1000C6AE4();
  v4 = *(v0 + 40);
  if (v4)
  {
    v5 = *(v0 + 48);
    v4(v3);
    sub_100010800(v4, v5);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000943D4()
{
  v1 = *(v0 + 112);

  sub_100094478(v1, 0xD000000000000018, 0x80000001000D68F0);

  v2 = *(v0 + 8);

  return v2();
}

void sub_100094478(uint64_t a1, NSObject *a2, unint64_t a3)
{
  v45 = a2;
  v46 = sub_1000C5F74();
  v5 = *(v46 - 8);
  v6 = __chkstk_darwin(v46);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v41 - v9;
  v11 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:1 userInfo:0];
  v56 = a1;
  swift_errorRetain();
  sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
  swift_dynamicCast();
  v12 = v50;
  v13 = v51;
  v14 = v53;
  v15 = v54;
  v48 = v55;
  v47 = v52;
  if (v55 == 8)
  {
    if (!v52)
    {
      __break(1u);
      goto LABEL_12;
    }

    v16 = v52;

    v17 = v16;
    sub_1000C5F54();
    v11 = v17;

    v18 = sub_1000C5F64();
    v19 = sub_1000C6FD4();

    LODWORD(v44) = v19;
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v43 = v15;
      v21 = v20;
      v42 = swift_slowAlloc();
      v50 = v42;
      *v21 = 136315394;
      *(v21 + 4) = sub_100071844(v45, a3, &v50);
      *(v21 + 12) = 2080;
      v11 = v11;
      v22 = [v11 description];
      v23 = sub_1000C6D84();
      v45 = v18;
      v24 = v5;
      v25 = v14;
      v26 = v13;
      v27 = v12;
      v28 = v23;
      v30 = v29;

      v31 = v28;
      v12 = v27;
      v13 = v26;
      v14 = v25;
      v32 = sub_100071844(v31, v30, &v50);

      *(v21 + 14) = v32;
      v33 = v45;
      _os_log_impl(&_mh_execute_header, v45, v44, "ComposeParticipantsView %s stopSharing failed with error: %s", v21, 0x16u);
      swift_arrayDestroy();

      v15 = v43;

      (*(v24 + 8))(v10, v46);
    }

    else
    {

      (*(v5 + 8))(v10, v46);
    }
  }

  else
  {
    v44 = v51;
    sub_1000C5F54();

    v34 = sub_1000C5F64();
    v35 = sub_1000C6FD4();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v42 = v12;
      v37 = v36;
      v38 = swift_slowAlloc();
      v43 = v15;
      v39 = v14;
      v40 = v38;
      v50 = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_100071844(v45, a3, &v50);
      _os_log_impl(&_mh_execute_header, v34, v35, "ComposeParticipantsView %s stopSharing failed with unexpected error, returning CKError.internalError as best approximation", v37, 0xCu);
      sub_100010544(v40);
      v14 = v39;
      v15 = v43;

      v12 = v42;
    }

    (*(v5 + 8))(v8, v46);
    v13 = v44;
  }

  if (*(v49 + 8))
  {

    sub_100067838(0, v11);

    sub_1000494BC(v12, v13, v47, v14, v15, v48);

    return;
  }

LABEL_12:
  type metadata accessor for SharingModel(0);
  sub_1000970A8(&qword_100117158, type metadata accessor for SharingModel, &unk_1000D00B0);
  sub_1000C63F4();
  __break(1u);
}

uint64_t sub_100094980(char a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  __chkstk_darwin(v9 - 8);
  v11 = &v21[-v10];
  v12 = sub_1000C6F44();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_1000C6F14();
  sub_10008EAE8(a3, v21);

  v13 = sub_1000C6F04();
  v14 = swift_allocObject();
  v15 = a3[6];
  *(v14 + 152) = a3[7];
  v16 = a3[9];
  *(v14 + 168) = a3[8];
  *(v14 + 184) = v16;
  *(v14 + 200) = a3[10];
  v17 = a3[2];
  *(v14 + 88) = a3[3];
  v18 = a3[5];
  *(v14 + 104) = a3[4];
  *(v14 + 120) = v18;
  *(v14 + 136) = v15;
  v19 = a3[1];
  *(v14 + 40) = *a3;
  *(v14 + 56) = v19;
  *(v14 + 16) = v13;
  *(v14 + 24) = &protocol witness table for MainActor;
  *(v14 + 32) = a1;
  *(v14 + 72) = v17;
  *(v14 + 216) = a2;
  sub_1000B8860(0, 0, v11, a5, v14);
}

uint64_t sub_100094B08(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a5;
  *(v6 + 24) = a6;
  *(v6 + 96) = a4;
  sub_1000C6F14();
  *(v6 + 32) = sub_1000C6F04();
  v8 = sub_1000C6ED4();
  *(v6 + 40) = v8;
  *(v6 + 48) = v7;

  return _swift_task_switch(sub_100094BA4, v8, v7);
}

uint64_t sub_100094BA4()
{
  v1 = *(v0 + 96);
  v2 = *(*(v0 + 16) + 8);
  *(v0 + 56) = v2;
  if (v1 == 1)
  {
    if (v2)
    {

      v3 = swift_task_alloc();
      *(v0 + 64) = v3;
      *v3 = v0;
      v3[1] = sub_100094D7C;

      return sub_100056B08();
    }

    goto LABEL_13;
  }

  if (!v2)
  {
LABEL_13:
    type metadata accessor for SharingModel(0);
    sub_1000970A8(&qword_100117158, type metadata accessor for SharingModel, &unk_1000D00B0);

    return sub_1000C63F4();
  }

  if (*(v0 + 24))
  {
    v5 = *(v0 + 24);
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  swift_retain_n();

  sub_1000B0F08(v5);

  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_100094E98;

  return sub_10006D96C();
}

uint64_t sub_100094D7C()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_1000951D4;
  }

  else
  {

    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_10003E5B0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100094E98()
{
  v1 = *v0;
  v4 = *v0;

  v2 = swift_task_alloc();
  *(v1 + 88) = v2;
  *v2 = v4;
  v2[1] = sub_100094FE0;

  return sub_100069028();
}

uint64_t sub_100094FE0()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_100095124, v3, v2);
}

uint64_t sub_100095124()
{

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    sub_10000816C();
    v2 = sub_1000077D8();
    if (v2)
    {
      [v2 _dismissViewControllerWithError:0];
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000951D4()
{
  v1 = *(v0 + 72);

  sub_100094478(v1, 0xD000000000000016, 0x80000001000D68D0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100095278@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for GlobalPermissionViewModel(0);
    swift_allocObject();

    sub_100043774(v3);

    sub_1000970A8(&qword_100117130, type metadata accessor for GlobalPermissionViewModel, &unk_1000CEDAC);
    v4 = sub_1000C6334();
    v6 = v5;
    v7 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    sub_1000C6A64();
    result = sub_1000C6B74();
    *a2 = v4;
    a2[1] = v6;
    a2[2] = result;
  }

  else
  {
    type metadata accessor for SharingModel(0);
    sub_1000970A8(&qword_100117158, type metadata accessor for SharingModel, &unk_1000D00B0);
    result = sub_1000C63F4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000953D4(uint64_t a1)
{
  v2 = sub_1000C6654();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10000FEB8(&qword_100118FF0, &qword_1000D2A60);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000C6644();
  v9 = a1;
  sub_10000FEB8(&qword_100119020, &qword_1000D2A70);
  sub_10001E490(&qword_100119028, &qword_100119020, &qword_1000D2A70, &protocol conformance descriptor for Button<A>);
  sub_1000C6254();
  sub_10001E490(&qword_100118FF8, &qword_100118FF0, &qword_1000D2A60, &protocol conformance descriptor for ToolbarItem<A, B>);
  sub_1000C6684();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000955C0(_OWORD *a1)
{
  v2 = swift_allocObject();
  v3 = a1[9];
  v2[9] = a1[8];
  v2[10] = v3;
  v2[11] = a1[10];
  v4 = a1[5];
  v2[5] = a1[4];
  v2[6] = v4;
  v5 = a1[7];
  v2[7] = a1[6];
  v2[8] = v5;
  v6 = a1[1];
  v2[1] = *a1;
  v2[2] = v6;
  v7 = a1[3];
  v2[3] = a1[2];
  v2[4] = v7;
  sub_10008EAE8(a1, &v9);
  sub_10000FEB8(&qword_100119030, &qword_1000D2A78);
  sub_100096614();
  return sub_1000C6B34();
}

uint64_t sub_1000956A4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_10000816C();
      v2 = sub_1000077D8();
      if (v2)
      {
        [v2 _dismissViewControllerWithError:0];
        swift_unknownObjectRelease();
      }

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    type metadata accessor for SharingModel(0);
    sub_1000970A8(&qword_100117158, type metadata accessor for SharingModel, &unk_1000D00B0);
    result = sub_1000C63F4();
    __break(1u);
  }

  return result;
}

uint64_t sub_10009577C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1000C6A84();
  v3 = objc_opt_self();
  v4 = [v3 secondaryLabelColor];
  v5 = sub_1000C6A64();
  v6 = [v3 quaternaryLabelColor];
  v7 = sub_1000C6A64();
  v8 = a1 + *(sub_10000FEB8(&qword_100119030, &qword_1000D2A78) + 36);
  v9 = *(sub_10000FEB8(&qword_100119068, &qword_1000D2A90) + 28);
  v10 = enum case for Image.Scale.large(_:);
  v11 = sub_1000C6AA4();
  (*(*(v11 - 8) + 104))(&v8[v9], v10, v11);
  result = swift_getKeyPath();
  *v8 = result;
  *a1 = v2;
  a1[1] = v5;
  a1[2] = v7;
  return result;
}

uint64_t sub_1000958B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v7[2] = sub_1000C6F14();
  v7[3] = sub_1000C6F04();
  v11 = swift_task_alloc();
  v7[4] = v11;
  *v11 = v7;
  v11[1] = sub_100051D40;

  return sub_10005E534(a5, a6, a7);
}

uint64_t sub_100095988@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v25 = sub_1000C66B4();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000FEB8(&qword_100118FC0, &qword_1000D2A38);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - v6;
  v8 = v1[9];
  v33[8] = v1[8];
  v33[9] = v8;
  v33[10] = v1[10];
  v9 = v1[5];
  v33[4] = v1[4];
  v33[5] = v9;
  v10 = v1[7];
  v33[6] = v1[6];
  v33[7] = v10;
  v11 = v1[1];
  v33[0] = *v1;
  v12 = v1[2];
  v33[3] = v1[3];
  v33[1] = v11;
  v33[2] = v12;
  v28 = v33;
  v24 = sub_10000FEB8(&qword_100118FC8, &qword_1000D2A40);
  v13 = sub_100010624(&qword_100118FD0, &qword_1000D2A48);
  v14 = sub_100010624(&qword_100118FD8, &qword_1000D2A50);
  v15 = sub_100010624(&qword_100118FE0, &qword_1000D2A58);
  v16 = sub_1000C63B4();
  v17 = sub_10001E490(&qword_100118FE8, &qword_100118FE0, &qword_1000D2A58, &protocol conformance descriptor for List<A, B>);
  v29 = v15;
  v30 = v16;
  v31 = v17;
  v32 = &protocol witness table for GroupedListStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = sub_100010624(&qword_100118FF0, &qword_1000D2A60);
  v20 = sub_10001E490(&qword_100118FF8, &qword_100118FF0, &qword_1000D2A60, &protocol conformance descriptor for ToolbarItem<A, B>);
  v29 = v19;
  v30 = v20;
  v21 = swift_getOpaqueTypeConformance2();
  v29 = v13;
  v30 = v14;
  v31 = OpaqueTypeConformance2;
  v32 = v21;
  swift_getOpaqueTypeConformance2();
  sub_1000C6394();
  sub_1000C66A4();
  sub_10001E490(&qword_100119000, &qword_100118FC0, &qword_1000D2A38, &protocol conformance descriptor for NavigationStack<A, B>);
  sub_1000970A8(&qword_100119008, &type metadata accessor for StackNavigationViewStyle, &protocol conformance descriptor for StackNavigationViewStyle);
  v22 = v25;
  sub_1000C68E4();
  (*(v26 + 8))(v3, v22);
  return (*(v5 + 8))(v7, v4);
}

double sub_100095DBC@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    *&v6 = a1;
    *(&v6 + 1) = a2;
    sub_1000383C8();

    sub_1000C68D4();
  }

  sub_1000C6624();
  result = *&v6;
  *a3 = v6;
  *(a3 + 16) = v7;
  *(a3 + 32) = v8;
  return result;
}

uint64_t sub_100095E94@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    sub_1000383C8();
    v4 = sub_1000C68D4();
    v6 = v5;
    v8 = v7;
    sub_1000C6834();
    v9 = sub_1000C68B4();
    v11 = v10;
    v13 = v12;

    sub_1000500D8(v4, v6, v8 & 1);

    v14 = sub_1000C68A4();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    sub_1000500D8(v9, v11, v13 & 1);

    *a3 = v14;
    *(a3 + 8) = v16;
    *(a3 + 16) = v18 & 1;
    *(a3 + 24) = v20;
  }

  else
  {
    type metadata accessor for SharingModel(0);
    sub_1000970A8(&qword_100117158, type metadata accessor for SharingModel, &unk_1000D00B0);
    result = sub_1000C63F4();
    __break(1u);
  }

  return result;
}

uint64_t sub_10009605C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000C64F4();
  *a1 = result;
  return result;
}

uint64_t sub_1000960D4(uint64_t a1)
{
  v2 = sub_1000C6AA4();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1000C6424();
}

__n128 sub_10009619C@<Q0>(char a1@<W0>, uint64_t a2@<X8>)
{
  type metadata accessor for SharingModel(0);
  sub_1000970A8(&qword_100117158, type metadata accessor for SharingModel, &unk_1000D00B0);
  v4 = sub_1000C6404();
  v14 = v5;
  v15 = v4;
  type metadata accessor for ActivitiesModelData(0);
  sub_1000970A8(&qword_100116750, type metadata accessor for ActivitiesModelData, &unk_1000CC440);
  v6 = sub_1000C6404();
  v12 = v7;
  v13 = v6;
  sub_10000FEB8(&qword_100118FB0, &unk_1000D2920);
  sub_1000C6AD4();
  sub_1000C6AD4();
  sub_1000C6AD4();
  sub_10000FEB8(&unk_1001174D8, &qword_1000CE898);
  sub_1000C6AD4();
  sub_1000C6AD4();
  v8 = a1 & 1;
  sub_100096470();
  v9 = [swift_getObjCClassFromMetadata() appearance];
  v10 = [objc_opt_self() systemGroupedBackgroundColor];
  [v9 setBackgroundColor:v10];

  *a2 = v8;
  *(a2 + 8) = v15;
  *(a2 + 16) = v14;
  *(a2 + 24) = v13;
  *(a2 + 32) = v12;
  *(a2 + 40) = v16.n128_u8[0];
  *(a2 + 48) = v16.n128_u64[1];
  *(a2 + 56) = v16;
  *(a2 + 72) = v17;
  *(a2 + 88) = v18;
  *(a2 + 104) = v19;
  *(a2 + 112) = v16;
  *(a2 + 128) = v17;
  result = v16;
  *(a2 + 136) = v16;
  *(a2 + 152) = v17;
  *(a2 + 160) = v16;
  return result;
}

unint64_t sub_100096470()
{
  result = qword_100118FB8;
  if (!qword_100118FB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100118FB8);
  }

  return result;
}

uint64_t sub_1000964BC(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1000964D4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_100096508(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100096550(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100096614()
{
  result = qword_100119038;
  if (!qword_100119038)
  {
    sub_100010624(&qword_100119030, &qword_1000D2A78);
    sub_1000966CC();
    sub_10001E490(&qword_100119060, &qword_100119068, &qword_1000D2A90, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119038);
  }

  return result;
}

unint64_t sub_1000966CC()
{
  result = qword_100119040;
  if (!qword_100119040)
  {
    sub_100010624(&qword_100119048, &qword_1000D2A80);
    sub_10001E490(&qword_100119050, &qword_100119058, &qword_1000D2A88, &protocol conformance descriptor for _ForegroundStyleModifier2<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119040);
  }

  return result;
}

unint64_t sub_1000967B4()
{
  result = qword_100119098;
  if (!qword_100119098)
  {
    sub_100010624(&qword_100119090, &qword_1000D2AE8);
    sub_10009686C();
    sub_10001E490(&qword_1001190D0, &qword_1001190D8, &qword_1000D2B08, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119098);
  }

  return result;
}

unint64_t sub_10009686C()
{
  result = qword_1001190A0;
  if (!qword_1001190A0)
  {
    sub_100010624(&qword_1001190A8, &qword_1000D2AF0);
    sub_10001E490(&qword_1001190B0, &qword_1001190B8, &qword_1000D2AF8, &protocol conformance descriptor for VStack<A>);
    sub_10001E490(&qword_1001190C0, &qword_1001190C8, &qword_1000D2B00, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001190A0);
  }

  return result;
}

unint64_t sub_100096950()
{
  result = qword_1001190E0;
  if (!qword_1001190E0)
  {
    sub_100010624(&qword_100119080, &qword_1000D2AD8);
    sub_1000967B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001190E0);
  }

  return result;
}

unint64_t sub_1000969E8()
{
  result = qword_100119100;
  if (!qword_100119100)
  {
    sub_100010624(&qword_1001190F0, &qword_1000D2B18);
    sub_100096AA0();
    sub_10001E490(&qword_1001190C0, &qword_1001190C8, &qword_1000D2B00, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119100);
  }

  return result;
}

unint64_t sub_100096AA0()
{
  result = qword_100119108;
  if (!qword_100119108)
  {
    sub_100010624(&qword_100119110, &qword_1000D2B28);
    sub_10001E490(&qword_100119118, &qword_100119120, &qword_1000D2B30, &protocol conformance descriptor for VStack<A>);
    sub_10001E490(&qword_1001190D0, &qword_1001190D8, &qword_1000D2B08, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119108);
  }

  return result;
}

unint64_t sub_100096B84()
{
  result = qword_100119128;
  if (!qword_100119128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119128);
  }

  return result;
}

unint64_t sub_100096BD8()
{
  result = qword_100119130;
  if (!qword_100119130)
  {
    sub_100010624(&qword_1001190F8, &qword_1000D2B20);
    sub_100096C64();
    sub_100096D20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119130);
  }

  return result;
}

unint64_t sub_100096C64()
{
  result = qword_100119138;
  if (!qword_100119138)
  {
    sub_100010624(&qword_100119140, &qword_1000D2B38);
    sub_1000970A8(&qword_100116AE8, type metadata accessor for ComposeMailView, &unk_1000CCCC8);
    sub_10008B7B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119138);
  }

  return result;
}

unint64_t sub_100096D20()
{
  result = qword_100119148;
  if (!qword_100119148)
  {
    sub_100010624(&qword_100119150, &qword_1000D2B40);
    sub_100083C08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119148);
  }

  return result;
}

unint64_t sub_100096DAC()
{
  result = qword_100119160;
  if (!qword_100119160)
  {
    sub_100010624(&qword_100119158, &qword_1000D2B48);
    sub_100096E64();
    sub_10001E490(&qword_1001190C0, &qword_1001190C8, &qword_1000D2B00, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119160);
  }

  return result;
}

unint64_t sub_100096E64()
{
  result = qword_100119168;
  if (!qword_100119168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119168);
  }

  return result;
}

uint64_t sub_100096F38()
{

  if (*(v0 + 152))
  {
  }

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_100096FE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComposeMailView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009704C(uint64_t a1)
{
  v2 = type metadata accessor for ComposeMailView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000970A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000970F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100017CBC;

  return sub_1000958B4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1000971CC()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100097218(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 216);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100011080;

  return sub_100093DF0(a1, v4, v5, v6, v1 + 40, v7);
}

uint64_t sub_1000972E0()
{
  swift_unknownObjectRelease();

  if (*(v0 + 176))
  {
  }

  return _swift_deallocObject(v0, 224, 7);
}

uint64_t sub_100097390(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 216);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100017CBC;

  return sub_100094B08(a1, v4, v5, v6, v1 + 40, v7);
}

uint64_t sub_100097460(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000FEB8(&qword_1001191D0, &qword_1000D2C20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000974D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000C64F4();
  *a1 = result;
  return result;
}

void sub_10009752C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

void sub_100097570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

uint64_t sub_1000975EC()
{
  sub_100010624(&qword_100118FC0, &qword_1000D2A38);
  sub_1000C66B4();
  sub_10001E490(&qword_100119000, &qword_100118FC0, &qword_1000D2A38, &protocol conformance descriptor for NavigationStack<A, B>);
  sub_1000970A8(&qword_100119008, &type metadata accessor for StackNavigationViewStyle, &protocol conformance descriptor for StackNavigationViewStyle);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1000976D0()
{
  result = qword_100119218;
  if (!qword_100119218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119218);
  }

  return result;
}

unint64_t sub_100097774()
{
  result = qword_100119220;
  if (!qword_100119220)
  {
    sub_100010624(&qword_100119228, &qword_1000D2F48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119220);
  }

  return result;
}

uint64_t sub_100097834(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_10009787C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1000978F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10003CBD4();
  sub_1000C5DF4();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_1000979D0@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a3;
  v6 = sub_10000FEB8(&qword_100119240, &qword_1000D3060);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v29[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 4];
  __chkstk_darwin(v7);
  v11 = &v29[-v10 - 4];
  v12 = *a1;
  v13 = *(*a1 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel_contact);
  sub_1000C6C54();
  sub_1000C62C4();
  LOBYTE(v39[0]) = 1;
  *&v30[3] = *&v30[27];
  *&v30[11] = *&v30[35];
  *&v30[19] = *&v30[43];
  *v11 = sub_1000C6604();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v14 = sub_10000FEB8(&qword_100119248, &qword_1000D3068);
  sub_100097D84(a1, &v11[*(v14 + 44)]);
  v15 = *(v12 + 80);
  v16 = sub_1000C6A64();
  sub_1000C6C54();
  sub_1000C62C4();
  *&v29[6] = *&v30[51];
  *&v29[22] = *&v30[59];
  *&v29[38] = *&v30[67];
  sub_100017574(v11, v9, &qword_100119240, &qword_1000D3060);
  v17 = v13;
  v31[0] = v13;
  v31[1] = 0;
  *v32 = 257;
  *&v32[2] = *v30;
  *&v32[18] = *&v30[8];
  *&v32[34] = *&v30[16];
  *&v32[48] = *&v30[23];
  v18 = *v32;
  v19 = *&v32[16];
  v20 = *&v32[32];
  *(a4 + 64) = *&v30[23];
  *(a4 + 32) = v19;
  *(a4 + 48) = v20;
  *a4 = v13;
  *(a4 + 16) = v18;
  v21 = sub_10000FEB8(&qword_100119250, &unk_1000D3070);
  sub_100017574(v9, a4 + v21[12], &qword_100119240, &qword_1000D3060);
  v22 = *&v29[16];
  *(v33 + 10) = *v29;
  v23 = a4 + v21[16];
  *v23 = 0;
  *(v23 + 8) = 1;
  v24 = (a4 + v21[20]);
  *&v33[0] = v16;
  WORD4(v33[0]) = 256;
  *(&v33[1] + 10) = v22;
  *(&v33[2] + 10) = *&v29[32];
  *(&v33[3] + 1) = *&v29[46];
  sub_100017574(v31, v39, &qword_100117CF0, &unk_1000D6550);
  sub_100017574(v33, v39, &qword_100119258, &qword_1000D3080);

  v25 = v33[1];
  *v24 = v33[0];
  v24[1] = v25;
  v26 = v33[3];
  v24[2] = v33[2];
  v24[3] = v26;
  sub_100010F24(v11, &qword_100119240, &qword_1000D3060);
  v34 = v16;
  v35 = 256;
  v36 = *v29;
  v37 = *&v29[16];
  *v38 = *&v29[32];
  *&v38[14] = *&v29[46];
  sub_100010F24(&v34, &qword_100119258, &qword_1000D3080);
  sub_100010F24(v9, &qword_100119240, &qword_1000D3060);
  v39[0] = v17;
  v39[1] = 0;
  v40 = 257;
  v41 = *v30;
  v42 = *&v30[8];
  *v43 = *&v30[16];
  *&v43[14] = *&v30[23];
  return sub_100010F24(v39, &qword_100117CF0, &unk_1000D6550);
}

uint64_t sub_100097D84@<X0>(uint64_t *a1@<X0>, uint64_t a4@<X8>)
{
  v43 = a4;
  v5 = sub_10000FEB8(&qword_100119260, &qword_1000D3088);
  v6 = __chkstk_darwin(v5 - 8);
  v44 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v43 - v8;
  v10 = *a1;
  v11 = *(*a1 + 32);
  v12 = *(*a1 + 40);
  v45 = v11;
  v46 = v12;
  sub_1000383C8();

  v13 = sub_1000C68D4();
  v15 = v14;
  v45 = v13;
  v46 = v14;
  v17 = v16 & 1;
  v47 = v16 & 1;
  v48 = v18;
  sub_1000C6964();
  sub_1000500D8(v13, v15, v17);

  v19 = *(v10 + 56);
  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = *(v10 + 48) & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    v45 = *(v10 + 48);
    v46 = v19;

    v21 = sub_1000C68D4();
    v23 = v22;
    v25 = v24;
    sub_1000C67D4();
    v26 = sub_1000C68B4();
    v28 = v27;
    v30 = v29;

    sub_1000500D8(v21, v23, v25 & 1);

    sub_1000C6A54();
    v31 = sub_1000C6884();
    v33 = v32;
    v35 = v34;
    v37 = v36;

    sub_1000500D8(v26, v28, v30 & 1);

    v38 = v35 & 1;
    sub_100050DE0(v31, v33, v38);
  }

  else
  {
    v31 = 0;
    v33 = 0;
    v38 = 0;
    v37 = 0;
  }

  v39 = v44;
  sub_100017574(v9, v44, &qword_100119260, &qword_1000D3088);
  v40 = v43;
  sub_100017574(v39, v43, &qword_100119260, &qword_1000D3088);
  v41 = (v40 + *(sub_10000FEB8(&qword_100119268, &qword_1000D3090) + 48));
  sub_100098148(v31, v33, v38, v37);
  sub_10009818C(v31, v33, v38, v37);
  *v41 = v31;
  v41[1] = v33;
  v41[2] = v38;
  v41[3] = v37;
  sub_100010F24(v9, &qword_100119260, &qword_1000D3088);
  sub_10009818C(v31, v33, v38, v37);
  return sub_100010F24(v39, &qword_100119260, &qword_1000D3088);
}

uint64_t sub_1000980C4@<X0>(uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v9 = *(v6 + 16);
  v12[0] = *v6;
  v12[1] = v9;
  v13 = *(v6 + 32);
  *a6 = sub_1000C65C4();
  *(a6 + 8) = 0;
  *(a6 + 16) = 1;
  v10 = sub_10000FEB8(&qword_100119238, &qword_1000D3058);
  return sub_1000979D0(v12, a4, a6 + *(v10 + 44));
}

uint64_t sub_100098148(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100050DE0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10009818C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1000500D8(result, a2, a3 & 1);
  }

  return result;
}

id sub_10009822C()
{
  result = [objc_allocWithZone(CNContact) init];
  qword_100119230 = result;
  return result;
}

uint64_t sub_100098260@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_10000FEB8(&qword_100119290, &qword_1000D3168);
  v7 = __chkstk_darwin(v6);
  v39 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v38 - v9;
  if (qword_100115F88 != -1)
  {
    swift_once();
  }

  v11 = qword_100119230;
  sub_1000C6C54();
  sub_1000C62C4();
  *&v40[3] = *&v40[27];
  LOBYTE(v43) = 1;
  *&v40[11] = *&v40[35];
  *&v40[19] = *&v40[43];
  v12 = objc_opt_self();
  v38 = v11;
  v13 = [v12 mainBundle];
  v37._countAndFlagsBits = 0x80000001000DC2F0;
  v49._object = 0x80000001000DC2D0;
  v49._countAndFlagsBits = 0xD000000000000012;
  v50.value._countAndFlagsBits = 0;
  v50.value._object = 0;
  v14.super.isa = v13;
  v51._countAndFlagsBits = 0;
  v51._object = 0xE000000000000000;
  v15 = sub_1000C5B74(v49, v50, v14, v51, 0xD000000000000035, v37);
  v17 = v16;

  v43 = v15;
  v44 = v17;
  sub_1000383C8();
  v18 = sub_1000C68D4();
  v20 = v19;
  LOBYTE(v13) = v21;
  v23 = v22;
  sub_1000C61C4();
  v24 = sub_1000C61F4();
  (*(*(v24 - 8) + 56))(v10, 0, 1, v24);
  v25 = &v10[v6[9]];
  *v25 = a1;
  *(v25 + 1) = a2;
  v26 = &v10[v6[10]];
  *v26 = sub_1000986C8;
  v26[1] = 0;
  v27 = &v10[v6[11]];
  LOBYTE(v41) = 0;

  sub_1000C6AD4();
  v28 = v44;
  *v27 = v43;
  *(v27 + 1) = v28;
  v29 = v39;
  sub_100017574(v10, v39, &qword_100119290, &qword_1000D3168);
  v30 = v38;
  v41 = v38;
  *v42 = 257;
  *&v42[2] = *v40;
  *&v42[18] = *&v40[8];
  *&v42[34] = *&v40[16];
  v31 = *&v40[23];
  *&v42[48] = *&v40[23];
  v32 = v38;
  v33 = *v42;
  v34 = *&v42[32];
  *(a3 + 32) = *&v42[16];
  *(a3 + 48) = v34;
  *a3 = v32;
  *(a3 + 16) = v33;
  *(a3 + 64) = v31;
  *(a3 + 72) = v18;
  *(a3 + 80) = v20;
  LOBYTE(v13) = v13 & 1;
  *(a3 + 88) = v13;
  *(a3 + 96) = v23;
  *(a3 + 104) = 0;
  *(a3 + 112) = 1;
  v35 = sub_10000FEB8(&qword_100119298, &qword_1000D3170);
  sub_100017574(v29, a3 + *(v35 + 80), &qword_100119290, &qword_1000D3168);
  sub_100017574(&v41, &v43, &qword_100117CF0, &unk_1000D6550);
  sub_100050DE0(v18, v20, v13);

  sub_100010F24(v10, &qword_100119290, &qword_1000D3168);
  sub_100010F24(v29, &qword_100119290, &qword_1000D3168);
  sub_1000500D8(v18, v20, v13);

  v43 = v30;
  v44 = 0;
  v45 = 257;
  v46 = *v40;
  v47 = *&v40[8];
  *v48 = *&v40[16];
  *&v48[14] = *&v40[23];
  return sub_100010F24(&v43, &qword_100117CF0, &unk_1000D6550);
}

uint64_t sub_1000986C8@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  v8._countAndFlagsBits = 0x80000001000DC330;
  v9._countAndFlagsBits = 0x65766F6D6552;
  v9._object = 0xE600000000000000;
  v10.value._countAndFlagsBits = 0;
  v10.value._object = 0;
  v3.super.isa = v2;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  sub_1000C5B74(v9, v10, v3, v11, 0xD000000000000040, v8);

  sub_1000383C8();
  result = sub_1000C68D4();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_100098798(uint64_t result, uint64_t a2)
{
  if (*(a2 + 32) == (result & 1))
  {
    *(a2 + 32) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10003CBD4();
    sub_1000C5DE4();
  }

  return result;
}

uint64_t sub_10009887C@<X0>(uint64_t a6@<X8>)
{
  v8 = *v6;
  v9 = v6[1];
  v10 = v6[2];
  *a6 = sub_1000C65C4();
  *(a6 + 8) = 0;
  *(a6 + 16) = 1;
  v11 = sub_10000FEB8(&qword_100119280, &qword_1000D3130);
  sub_100098260(v9, v10, a6 + *(v11 + 44));
  v12 = swift_allocObject();
  *(v12 + 2) = v8;
  *(v12 + 3) = v9;
  *(v12 + 4) = v10;
  v13 = (a6 + *(sub_10000FEB8(&qword_100119288, &qword_1000D3138) + 36));
  *v13 = sub_10009899C;
  v13[1] = v12;
}

uint64_t sub_10009895C()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_1000989F8()
{
  result = qword_1001192A0;
  if (!qword_1001192A0)
  {
    sub_100010624(&qword_100119288, &qword_1000D3138);
    sub_100098A9C(&qword_1001192A8, &qword_1001192B0, &qword_1000D3178);
    sub_100098AF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001192A0);
  }

  return result;
}

uint64_t sub_100098A9C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100010624(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100098AF0()
{
  result = qword_1001192B8;
  if (!qword_1001192B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001192B8);
  }

  return result;
}

unint64_t sub_100098B4C()
{
  v1 = type metadata accessor for SPIAnalyticsEvent(0);
  __chkstk_darwin(v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100099C28(v0, v3);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v10 = sub_10000FEB8(&qword_1001192C8, &qword_1000D3188);

      v11 = &v3[*(v10 + 112)];
      sub_100099CE8(*v11, *(v11 + 1), *(v11 + 2), *(v11 + 3), *(v11 + 4), v11[40]);
      v12 = sub_1000C5D84();
      (*(*(v12 - 8) + 8))(v3, v12);
      result = 0xD000000000000029;
      break;
    case 2u:
    case 3u:
    case 8u:
    case 0xDu:
      sub_100099C8C(v3);
      result = 0xD00000000000002BLL;
      break;
    case 4u:
    case 6u:
      sub_100099C8C(v3);
      result = 0xD000000000000030;
      break;
    case 5u:
    case 0xAu:
      sub_100099C8C(v3);
      result = 0xD000000000000026;
      break;
    case 7u:
    case 9u:
      sub_100099C8C(v3);
      result = 0xD000000000000022;
      break;
    case 0xBu:
      sub_100099C8C(v3);
      result = 0xD000000000000036;
      break;
    case 0xCu:
      v8 = sub_10000FEB8(&qword_1001192C0, &qword_1000D3180);

      v9 = &v3[*(v8 + 128)];
      sub_100099CE8(*v9, *(v9 + 1), *(v9 + 2), *(v9 + 3), *(v9 + 4), v9[40]);
      sub_100010F24(v3, &qword_100116260, &qword_1000CD940);
      result = 0xD000000000000038;
      break;
    case 0xEu:
      sub_100099C8C(v3);
      goto LABEL_4;
    default:
      v4 = sub_10000FEB8(&qword_1001192D0, &unk_1000D3190);

      v5 = &v3[*(v4 + 80)];
      sub_100099CE8(*v5, *(v5 + 1), *(v5 + 2), *(v5 + 3), *(v5 + 4), v5[40]);
      v6 = sub_1000C5D84();
      (*(*(v6 - 8) + 8))(v3, v6);
LABEL_4:
      result = 0xD000000000000028;
      break;
  }

  return result;
}

void *sub_100098F58()
{
  v1 = v0;
  v2 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  __chkstk_darwin(v2 - 8);
  v4 = &v116 - v3;
  v5 = sub_1000C5D84();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SPIAnalyticsEvent(0);
  __chkstk_darwin(v9);
  v11 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100099C28(v1, v11);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v96 = sub_10000FEB8(&qword_1001192C8, &qword_1000D3188);
      v97 = v96[12];
      v98 = v96[16];
      v99 = *&v11[v96[20]];
      v100 = &v11[v96[24]];
      v101 = v100[1];
      v116 = *v100;
      v102 = &v11[v96[28]];
      v103 = *(v102 + 1);
      v118 = *v102;
      v119[0] = v103;
      *(v119 + 9) = *(v102 + 25);
      v104 = v102[40];
      v105 = v11[v97];
      v106 = v11[v98];
      (*(v6 + 32))(v8, v11, v5);
      (*(v6 + 16))(v4, v8, v5);
      (*(v6 + 56))(v4, 0, 1, v5);
      sub_1000193C0(v105, v104 != 255);
      sub_10001954C(v106, v104 != 255);
      sub_1000196BC(v105, v99);
      v107 = sub_100018CDC(v4, 0, v116, v101, &v118, 0, 0xE000000000000000);

      isa = sub_1000C6F94().super.super.isa;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v117 = v107;
      sub_100030594(isa, 0x737365636361, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
      v110 = v117;
      v111 = sub_1000C6F94().super.super.isa;
      v112 = swift_isUniquelyReferenced_nonNull_native();
      v117 = v110;
      sub_100030594(v111, 0x697373696D726570, 0xEB00000000736E6FLL, v112);
      v113 = v117;
      v114 = sub_1000C6F94().super.super.isa;
      v115 = swift_isUniquelyReferenced_nonNull_native();
      v117 = v113;
      sub_100030594(v114, 0x766E49776F6C6C61, 0xED0000676E697469, v115);
      sub_100010F24(&v118, &qword_1001167F0, &qword_1000CC600);
      v17 = v117;
      sub_100010F24(v4, &qword_100116260, &qword_1000CD940);
      goto LABEL_15;
    case 2u:
      v54 = *(v11 + 1);
      v116 = *v11;
      v56 = *(v11 + 3);
      v55 = *(v11 + 4);
      v57 = *(v11 + 5);
      v58 = *(v11 + 4);
      v118 = *(v11 + 3);
      v119[0] = v58;
      *(v119 + 9) = *(v11 + 73);
      v59 = v11[88];
      v60 = v11[16];
      v61 = v11[17];
      (*(v6 + 56))(v4, 1, 1, v5);
      sub_1000193C0(v60, v59 != 255);
      sub_10001954C(v61, v59 != 255);
      sub_1000196BC(v60, v56);
      v62 = sub_100018CDC(v4, 0, v55, v57, &v118, v116, v54);

      v63 = sub_1000C6F94().super.super.isa;
      v64 = swift_isUniquelyReferenced_nonNull_native();
      v117 = v62;
      sub_100030594(v63, 0x737365636361, 0xE600000000000000, v64);
      v65 = v117;
      v66 = sub_1000C6F94().super.super.isa;
      v67 = swift_isUniquelyReferenced_nonNull_native();
      v117 = v65;
      sub_100030594(v66, 0x697373696D726570, 0xEB00000000736E6FLL, v67);
      v68 = v117;
      goto LABEL_9;
    case 3u:
      v69 = *(v11 + 1);
      v70 = *(v11 + 2);
      v71 = *(v11 + 3);
      v72 = *(v11 + 3);
      v118 = *(v11 + 2);
      v119[0] = v72;
      *(v119 + 9) = *(v11 + 57);
      v73 = v11[72];
      v74 = *v11;
      v75 = v11[1];
      (*(v6 + 56))(v4, 1, 1, v5);
      sub_1000193C0(v74, v73 != 255);
      sub_10001954C(v75, v73 != 255);
      sub_1000196BC(v74, v69);
      v76 = sub_100018CDC(v4, 0, v70, v71, &v118, 0, 0xE000000000000000);

      v77 = sub_1000C6F94().super.super.isa;
      v78 = swift_isUniquelyReferenced_nonNull_native();
      v117 = v76;
      sub_100030594(v77, 0x737365636361, 0xE600000000000000, v78);
      v79 = v117;
      v80 = sub_1000C6F94().super.super.isa;
      v81 = swift_isUniquelyReferenced_nonNull_native();
      v117 = v79;
      sub_100030594(v80, 0x697373696D726570, 0xEB00000000736E6FLL, v81);
      v68 = v117;
LABEL_9:
      v82 = sub_1000C6F94().super.super.isa;
      v83 = swift_isUniquelyReferenced_nonNull_native();
      v117 = v68;
      sub_100030594(v82, 0x766E49776F6C6C61, 0xED0000676E697469, v83);
      sub_100010F24(&v118, &qword_1001167F0, &qword_1000CC600);
      goto LABEL_10;
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
      v12 = *v11;
      v13 = *(v11 + 1);
      v14 = *(v11 + 2);
      v15 = *(v11 + 3);
      v16 = *(v11 + 3);
      v118 = *(v11 + 2);
      v119[0] = v16;
      *(v119 + 9) = *(v11 + 57);
      (*(v6 + 56))(v4, 1, 1, v5);
      v17 = sub_100018CDC(v4, 0, v14, v15, &v118, v12, v13);
      sub_100010F24(&v118, &qword_1001167F0, &qword_1000CC600);

      goto LABEL_11;
    case 9u:
    case 0xBu:
      v20 = *v11;
      v21 = *(v11 + 1);
      v22 = *(v11 + 2);
      v23 = *(v11 + 40);
      v118 = *(v11 + 24);
      v119[0] = v23;
      *(v119 + 9) = *(v11 + 49);
      (*(v6 + 56))(v4, 1, 1, v5);
      v17 = sub_100018CDC(v4, v20, v21, v22, &v118, 0, 0xE000000000000000);
      sub_100010F24(&v118, &qword_1001167F0, &qword_1000CC600);

      goto LABEL_11;
    case 0xAu:
      v25 = *v11;
      v24 = *(v11 + 1);
      v26 = *(v11 + 2);
      v27 = *(v11 + 3);
      v28 = *(v11 + 3);
      v118 = *(v11 + 2);
      v119[0] = v28;
      *(v119 + 9) = *(v11 + 57);
      sub_100019774(v24, v11[72] != 255);
      (*(v6 + 56))(v4, 1, 1, v5);
      v29 = sub_100018CDC(v4, v25, v26, v27, &v118, 0, 0xE000000000000000);

      sub_100010F24(v4, &qword_100116260, &qword_1000CD940);
      v30 = sub_1000C6F94().super.super.isa;
      v31 = swift_isUniquelyReferenced_nonNull_native();
      v117 = v29;
      sub_100030594(v30, 0x737574617473, 0xE600000000000000, v31);
      sub_100010F24(&v118, &qword_1001167F0, &qword_1000CC600);

      return v117;
    case 0xCu:
      v32 = sub_10000FEB8(&qword_1001192C0, &qword_1000D3180);
      v33 = *&v11[v32[12]];
      v34 = v32[16];
      v35 = *&v11[v32[24]];
      v36 = v32[20];
      v37 = &v11[v32[28]];
      v38 = *v37;
      v39 = v37[1];
      v40 = &v11[v32[32]];
      v41 = *(v40 + 1);
      v118 = *v40;
      v119[0] = v41;
      *(v119 + 9) = *(v40 + 25);
      v42 = v11[v34];
      v43 = v11[v36];
      v44 = v40[40];
      sub_10000FF00(v11, v4);
      sub_1000193C0(v42, v44 != 255);
      sub_10001954C(v43, v44 != 255);
      sub_1000196BC(v42, v35);
      v45 = sub_100018CDC(v4, v33, v38, v39, &v118, 0, 0xE000000000000000);

      v46 = sub_1000C6F94().super.super.isa;
      v47 = swift_isUniquelyReferenced_nonNull_native();
      v117 = v45;
      sub_100030594(v46, 0x737365636361, 0xE600000000000000, v47);
      v48 = v117;
      v49 = sub_1000C6F94().super.super.isa;
      v50 = swift_isUniquelyReferenced_nonNull_native();
      v117 = v48;
      sub_100030594(v49, 0x697373696D726570, 0xEB00000000736E6FLL, v50);
      v51 = v117;
      v52 = sub_1000C6F94().super.super.isa;
      v53 = swift_isUniquelyReferenced_nonNull_native();
      v117 = v51;
      sub_100030594(v52, 0x766E49776F6C6C61, 0xED0000676E697469, v53);
      sub_100010F24(&v118, &qword_1001167F0, &qword_1000CC600);

LABEL_10:
      v17 = v117;
      goto LABEL_11;
    case 0xDu:
    case 0xEu:
      v18 = *v11;
      v19 = *(v11 + 24);
      v118 = *(v11 + 8);
      v119[0] = v19;
      *(v119 + 9) = *(v11 + 33);
      (*(v6 + 56))(v4, 1, 1, v5);
      v17 = sub_100018CDC(v4, v18, 0, 0, &v118, 0, 0xE000000000000000);
      sub_100010F24(&v118, &qword_1001167F0, &qword_1000CC600);

LABEL_11:
      sub_100010F24(v4, &qword_100116260, &qword_1000CD940);
      break;
    default:
      v85 = sub_10000FEB8(&qword_1001192D0, &unk_1000D3190);
      v86 = *&v11[v85[12]];
      v87 = &v11[v85[16]];
      v89 = *v87;
      v88 = v87[1];
      v90 = &v11[v85[20]];
      v91 = *(v90 + 1);
      v118 = *v90;
      v119[0] = v91;
      *(v119 + 9) = *(v90 + 25);
      v92 = v90[40];
      (*(v6 + 32))(v8, v11, v5);
      sub_100017D30(v86, v92 != 255);
      (*(v6 + 16))(v4, v8, v5);
      (*(v6 + 56))(v4, 0, 1, v5);
      v93 = sub_100018CDC(v4, 0, v89, v88, &v118, 0, 0xE000000000000000);

      sub_100010F24(v4, &qword_100116260, &qword_1000CD940);
      v94 = sub_1000C6F94().super.super.isa;
      v95 = swift_isUniquelyReferenced_nonNull_native();
      v117 = v93;
      sub_100030594(v94, 0x737574617473, 0xE600000000000000, v95);
      sub_100010F24(&v118, &qword_1001167F0, &qword_1000CC600);
      v17 = v117;
LABEL_15:
      (*(v6 + 8))(v8, v5);
      break;
  }

  return v17;
}

uint64_t type metadata accessor for SPIAnalyticsEvent(uint64_t a1)
{
  result = qword_100119348;
  if (!qword_100119348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100099C28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SPIAnalyticsEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100099C8C(uint64_t a1)
{
  v2 = type metadata accessor for SPIAnalyticsEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100099CE8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 != 0xFF)
  {
    return sub_1000494BC(a1, a2, a3, a4, a5, a6);
  }

  return a1;
}

void sub_100099D4C(uint64_t a1)
{
  sub_10009A214(319, &qword_100119358, &type metadata accessor for URL, type metadata accessor for CSUIShareItemStatus);
  if (v1 <= 0x3F)
  {
    sub_100099EB8(319);
    if (v2 <= 0x3F)
    {
      sub_100099F74(319);
      if (v3 <= 0x3F)
      {
        sub_10009A030(319);
        if (v4 <= 0x3F)
        {
          sub_10009A0E4(319);
          if (v5 <= 0x3F)
          {
            sub_10009A174(319);
            if (v6 <= 0x3F)
            {
              sub_10009A214(319, &qword_100119388, sub_100020C20, type metadata accessor for CSUICurrentUserCKShareStatus);
              if (v7 <= 0x3F)
              {
                sub_10009A2CC(319);
                if (v8 <= 0x3F)
                {
                  sub_10009A3AC(319);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_100099EB8(uint64_t a1)
{
  if (!qword_100119360)
  {
    sub_1000C5D84();
    sub_100010624(&qword_100116310, &qword_1000CBBC0);
    sub_100010624(&qword_1001167F0, &qword_1000CC600);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_100119360);
    }
  }
}

void sub_100099F74(uint64_t a1)
{
  if (!qword_100119368)
  {
    sub_100010624(&qword_100116310, &qword_1000CBBC0);
    sub_100010624(&qword_1001167F0, &qword_1000CC600);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_100119368);
    }
  }
}

void sub_10009A030(uint64_t a1)
{
  if (!qword_100119370)
  {
    sub_100010624(&qword_100116310, &qword_1000CBBC0);
    sub_100010624(&qword_1001167F0, &qword_1000CC600);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_100119370);
    }
  }
}

void sub_10009A0E4(uint64_t a1)
{
  if (!qword_100119378)
  {
    sub_100010624(&qword_100116310, &qword_1000CBBC0);
    sub_100010624(&qword_1001167F0, &qword_1000CC600);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_100119378);
    }
  }
}

void sub_10009A174(uint64_t a1)
{
  if (!qword_100119380)
  {
    sub_100020C20();
    sub_100010624(&qword_100116310, &qword_1000CBBC0);
    sub_100010624(&qword_1001167F0, &qword_1000CC600);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_100119380);
    }
  }
}

void sub_10009A214(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    sub_100010624(&qword_100116310, &qword_1000CBBC0);
    sub_100010624(&qword_1001167F0, &qword_1000CC600);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata, a2);
    }
  }
}

void sub_10009A2CC(uint64_t a1)
{
  if (!qword_100119390)
  {
    sub_100010624(&qword_100116260, &qword_1000CD940);
    sub_100010624(&qword_100118B40, &qword_1000D31C0);
    sub_100010624(&qword_100116310, &qword_1000CBBC0);
    sub_100010624(&qword_1001167F0, &qword_1000CC600);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_100119390);
    }
  }
}

void sub_10009A3AC(uint64_t a1)
{
  if (!qword_100119398)
  {
    sub_100010624(&qword_100118B40, &qword_1000D31C0);
    sub_100010624(&qword_1001167F0, &qword_1000CC600);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100119398);
    }
  }
}

uint64_t sub_10009A448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C5DC4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10009A51C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000C5DC4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_10009A5F8(uint64_t a1)
{
  sub_1000C5DC4();
  if (v1 <= 0x3F)
  {
    sub_10009AE9C(319, &qword_100119430, &type metadata for String, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_10009AA6C(319, &unk_100119438, type metadata accessor for AlertViewModelButton, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10009A71C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C5DC4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_10000FEB8(qword_100118990, &unk_1000D1890);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10009A864(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000C5DC4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  else
  {
    v11 = sub_10000FEB8(qword_100118990, &unk_1000D1890);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_10009A998(uint64_t a1)
{
  sub_1000C5DC4();
  if (v1 <= 0x3F)
  {
    sub_10009AA6C(319, &qword_100118A18, &type metadata accessor for ButtonRole, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_10009AAD0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10009AA6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10009AAD0(uint64_t a1)
{
  if (!qword_100116AA8)
  {
    sub_100010624(&unk_100116AB0, &qword_1000CCC48);
    v1 = sub_1000C71C4();
    if (!v2)
    {
      atomic_store(v1, &qword_100116AA8);
    }
  }
}

uint64_t sub_10009AB80@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000C5DC4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_10009ABFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000FEB8(&qword_100116C80, &unk_1000CE870);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10009ACDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10000FEB8(&qword_100116C80, &unk_1000CE870);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_10009ADC4(uint64_t a1)
{
  sub_10009AA6C(319, &qword_100119578, type metadata accessor for AlertViewModel, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_10009AE9C(319, &unk_100119580, &type metadata for Bool, &type metadata accessor for Binding);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10009AE9C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_10009AF08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v20 = a2;
  v21 = a1;
  v4 = sub_10000FEB8(&qword_100116C80, &unk_1000CE870);
  __chkstk_darwin(v4 - 8);
  v6 = v17 - v5;
  sub_100017574(v3, v17 - v5, &qword_100116C80, &unk_1000CE870);
  v7 = type metadata accessor for AlertViewModel(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_10009B914(v6);
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  else
  {
    v10 = &v6[*(v7 + 20)];
    v8 = *v10;
    v9 = *(v10 + 1);

    sub_10009BB3C(v6);
  }

  v17[1] = v9;
  v26 = v8;
  v27 = v9;
  v11 = v3 + *(type metadata accessor for AlertViewModelAlert(0) + 20);
  v12 = *v11;
  v13 = *(v11 + 8);
  LOBYTE(v11) = *(v11 + 16);
  v23 = v12;
  v24 = v13;
  v25 = v11;
  sub_10000FEB8(&qword_100117150, &qword_1000D5B60);
  v14 = sub_1000C6BB4();
  v19 = v17;
  v18 = v22;
  v15 = __chkstk_darwin(v14);
  __chkstk_darwin(v15);
  sub_10000FEB8(&qword_1001195B0, &qword_1000D3300);
  sub_10000FEB8(&qword_1001195B8, &qword_1000D3308);
  sub_10000FEB8(&qword_1001195C0, &qword_1000D3310);
  sub_10001E490(&qword_1001195C8, &qword_1001195B0, &qword_1000D3300, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_1000383C8();
  sub_10009B98C();
  sub_10009BAC0();
  sub_1000C69A4();
}

uint64_t sub_10009B1F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = sub_10000FEB8(&qword_1001195E0, &qword_1000D3318);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v18 - v5;
  v7 = sub_10000FEB8(&qword_100116C80, &unk_1000CE870);
  __chkstk_darwin(v7 - 8);
  v9 = v18 - v8;
  v10 = type metadata accessor for AlertViewModel(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100017574(a1, v9, &qword_100116C80, &unk_1000CE870);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10009B914(v9);
    v14 = 1;
    v15 = v19;
  }

  else
  {
    sub_10009BD78(v9, v13, type metadata accessor for AlertViewModel);
    v20 = *&v13[*(v10 + 28)];

    v18[1] = sub_10000FEB8(&qword_100119600, &qword_1000D3328);
    sub_1000C5DC4();
    sub_10000FEB8(&qword_1001195F0, &qword_1000D3320);
    sub_10001E490(&qword_100119608, &qword_100119600, &qword_1000D3328, &protocol conformance descriptor for [A]);
    sub_10001E490(&qword_1001195E8, &qword_1001195F0, &qword_1000D3320, &protocol conformance descriptor for Button<A>);
    sub_10009BB98(qword_100119610, type metadata accessor for AlertViewModelButton, &unk_1000D3220);
    sub_1000C6BF4();
    sub_10009BB3C(v13);
    v16 = v19;
    (*(v4 + 32))(v19, v6, v3);
    v14 = 0;
    v15 = v16;
  }

  return (*(v4 + 56))(v15, v14, 1, v3);
}

uint64_t sub_10009B568(uint64_t a1)
{
  v2 = type metadata accessor for AlertViewModelButton(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v6 = sub_10000FEB8(qword_100118990, &unk_1000D1890);
  __chkstk_darwin(v6 - 8);
  sub_100017574(a1 + *(v3 + 32), &v11[-v7], qword_100118990, &unk_1000D1890);
  sub_100049224(a1, &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  sub_10009BD78(&v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8, type metadata accessor for AlertViewModelButton);
  v12 = a1;
  return sub_1000C6B24();
}

uint64_t sub_10009B734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for AlertViewModelButton(0) + 20);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a2 = *v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  sub_100050DE0(v4, v5, v6);
}

uint64_t sub_10009B798@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_10000FEB8(&qword_100116C80, &unk_1000CE870);
  __chkstk_darwin(v4 - 8);
  v6 = v16 - v5;
  sub_100017574(a1, v16 - v5, &qword_100116C80, &unk_1000CE870);
  v7 = type metadata accessor for AlertViewModel(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_10009B914(v6);
LABEL_5:
    result = 0;
    v12 = 0;
    v15 = 0;
    v13 = 0;
    goto LABEL_6;
  }

  v8 = &v6[*(v7 + 24)];
  v10 = *v8;
  v9 = *(v8 + 1);

  sub_10009BB3C(v6);
  if (!v9)
  {
    goto LABEL_5;
  }

  v16[0] = v10;
  v16[1] = v9;
  sub_1000383C8();
  result = sub_1000C68D4();
  v15 = v14 & 1;
LABEL_6:
  *a2 = result;
  a2[1] = v12;
  a2[2] = v15;
  a2[3] = v13;
  return result;
}

uint64_t sub_10009B914(uint64_t a1)
{
  v2 = sub_10000FEB8(&qword_100116C80, &unk_1000CE870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10009B98C()
{
  result = qword_1001195D0;
  if (!qword_1001195D0)
  {
    sub_100010624(&qword_1001195B8, &qword_1000D3308);
    sub_10009BA10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001195D0);
  }

  return result;
}

unint64_t sub_10009BA10()
{
  result = qword_1001195D8;
  if (!qword_1001195D8)
  {
    sub_100010624(&qword_1001195E0, &qword_1000D3318);
    sub_10001E490(&qword_1001195E8, &qword_1001195F0, &qword_1000D3320, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001195D8);
  }

  return result;
}

unint64_t sub_10009BAC0()
{
  result = qword_1001195F8;
  if (!qword_1001195F8)
  {
    sub_100010624(&qword_1001195C0, &qword_1000D3310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001195F8);
  }

  return result;
}

uint64_t sub_10009BB3C(uint64_t a1)
{
  v2 = type metadata accessor for AlertViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009BB98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10009BBE0()
{
  v1 = type metadata accessor for AlertViewModelButton(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_1000C5DC4();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  sub_1000500D8(*(v5 + v1[5]), *(v5 + v1[5] + 8), *(v5 + v1[5] + 16));

  v7 = v1[6];
  v8 = sub_1000C61F4();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  if (*(v5 + v1[7]))
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10009BD78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10009BDE0()
{
  v1 = type metadata accessor for AlertViewModelButton(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = (v0 + *(result + 36) + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  if (*v4)
  {
    return (*v4)();
  }

  return result;
}

uint64_t sub_10009BE5C()
{
  sub_100010624(&qword_1001195B0, &qword_1000D3300);
  sub_100010624(&qword_1001195B8, &qword_1000D3308);
  sub_100010624(&qword_1001195C0, &qword_1000D3310);
  sub_10001E490(&qword_1001195C8, &qword_1001195B0, &qword_1000D3300, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_1000383C8();
  sub_10009B98C();
  sub_10009BAC0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10009BF64(uint64_t a1)
{
  result = sub_1000C60B4();
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

uint64_t sub_10009C050()
{
  v0 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v1 = __chkstk_darwin(v0);
  v22 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v4 = &v21 - v3;
  v5 = sub_1000C5D84();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__rootFolderURL;
  v25 = v0;
  v9 = sub_1000106C0();
  v26 = v9;
  swift_getKeyPath();
  v23 = v0;
  v24 = v9;
  swift_getKeyPath();

  sub_1000C6094();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10009CB18(v4);

    sub_10000DC84(0, 0);

    __chkstk_darwin(v10);
    v11 = sub_10000FEB8(&qword_100116310, &qword_1000CBBC0);
    *(&v21 - 2) = v11;
    v12 = sub_1000105A8();
    *(&v21 - 1) = v12;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v21 - 2) = v11;
    *(&v21 - 1) = v12;
    swift_getKeyPath();

    sub_1000C6094();

    v14 = v28;
    if (v28)
    {
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v27[0] = v14 == 0;

    sub_1000C60A4();
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v15 = sub_1000C5D14();
    v17 = v16;

    sub_10000DC84(v15, v17);

    swift_getKeyPath();
    swift_getKeyPath();
    v27[0] = 0;

    sub_1000C60A4();
    (*(v6 + 8))(v8, v5);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    __chkstk_darwin(result);
    *(&v21 - 2) = v0;
    *(&v21 - 1) = v9;
    v19 = swift_getKeyPath();
    __chkstk_darwin(v19);
    *(&v21 - 2) = v0;
    *(&v21 - 1) = v9;
    swift_getKeyPath();

    v20 = v22;
    sub_1000C6094();

    sub_10000CEE8(v20);
    swift_unknownObjectRelease();
    return sub_10009CB18(v20);
  }

  return result;
}

uint64_t sub_10009C52C()
{
  v0 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  __chkstk_darwin(v0 - 8);
  v2 = v11 - v1;
  v3 = sub_10000FEB8(&qword_100116310, &qword_1000CBBC0);
  v11[2] = v3;
  v4 = sub_1000105A8();
  v11[3] = v4;
  swift_getKeyPath();
  v11[0] = v3;
  v11[1] = v4;
  swift_getKeyPath();

  sub_1000C6094();

  if (v13)
  {

    __chkstk_darwin(v5);
    v11[-2] = v3;
    v11[-1] = v4;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v11[-2] = v3;
    v11[-1] = v4;
    swift_getKeyPath();

    sub_1000C6094();

    if (v13)
    {

      v7 = 1;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000C6094();

      v8 = sub_1000C5D84();
      v7 = (*(*(v8 - 8) + 48))(v2, 1, v8) != 1;
      sub_10009CB18(v2);
    }
  }

  else
  {
    v7 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v12[0] = v7;

  sub_1000C60A4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v9 = v12[0];
  swift_getKeyPath();
  swift_getKeyPath();
  v12[0] = !v9;

  return sub_1000C60A4();
}

uint64_t sub_10009C880()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();
}

uint64_t sub_10009C93C()
{
  v1 = *(*v0 + 96);
  v2 = sub_1000C60B4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100011334(*(v0 + *(*v0 + 104)), *(v0 + *(*v0 + 104) + 8));
  return v0;
}

uint64_t sub_10009C9E0()
{
  sub_10009C93C();

  return swift_deallocClassInstance();
}

__n128 sub_10009CA64(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_10009CB18(uint64_t a1)
{
  v2 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009CB80(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_10009CBAC()
{
  result = qword_100119698;
  if (!qword_100119698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119698);
  }

  return result;
}

id sub_10009CC00()
{
  v1 = v0[1];
  v2.super.isa = sub_1000C6E84().super.isa;
  if (v1)
  {
    sub_10009CF84();
    v3.super.isa = sub_1000C6E84().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  v4 = [objc_allocWithZone(UIActivityViewController) initWithActivityItems:v2.super.isa applicationActivities:v3.super.isa];

  isa = v0[2];
  if (isa)
  {
    type metadata accessor for ActivityType(0);
    isa = sub_1000C6E84().super.isa;
  }

  [v4 setExcludedActivityTypes:isa];

  if (v0[3])
  {
    v6 = v0[4];
    v9[4] = v0[3];
    v9[5] = v6;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_10009CD68;
    v9[3] = &unk_10010A690;
    v7 = _Block_copy(v9);
  }

  else
  {
    v7 = 0;
  }

  [v4 setCompletionWithItemsHandler:v7];
  _Block_release(v7);
  return v4;
}

uint64_t sub_10009CD68(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 32);
  if (a4)
  {
    v9 = sub_1000C6E94();
  }

  else
  {
    v9 = 0;
  }

  v10 = a2;
  v11 = a5;
  v8(a2, a3, v9, a5);
}

uint64_t sub_10009CE28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10009CF18();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10009CE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10009CF18();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10009CEF0(uint64_t a1)
{
  sub_10009CF18();
  sub_1000C6724();
  __break(1u);
}

unint64_t sub_10009CF18()
{
  result = qword_1001196A0;
  if (!qword_1001196A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001196A0);
  }

  return result;
}

uint64_t sub_10009CF6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10009CF84()
{
  result = qword_10011A260;
  if (!qword_10011A260)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10011A260);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SharingType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_20;
  }

  v2 = a2 + 9;
  if (a2 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 9;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 9;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 8)
  {
    v8 = v7 - 7;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SharingType(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 9;
  if (a3 + 9 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF7)
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_10009D128(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 8)
  {
    return v1 - 7;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_10009D13C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 7;
  }

  return result;
}

BOOL sub_10009D170(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v3 == 8;
  v5 = v3 == 9;
  v6 = v3 & 0xFE;
  v8 = v3 == 7 || v2 == v3;
  if (v2 == 7)
  {
    v8 = 1;
  }

  if (v6 == 8)
  {
    v8 = 0;
  }

  if (v2 == 9)
  {
    v8 = v5;
  }

  if (v2 == 8)
  {
    return v4;
  }

  else
  {
    return v8;
  }
}

uint64_t sub_10009D1C0()
{
  v1 = *v0;
  v2 = 0x69636570736E752ELL;
  v3 = 0x726568746F2ELL;
  if (v1 != 6)
  {
    v3 = 2037276974;
  }

  v4 = 0x6972616661732ELL;
  if (v1 != 4)
  {
    v4 = 0x726F66656572662ELL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6F467365746F6E2ELL;
  if (v1 != 2)
  {
    v5 = 0x65646E696D65722ELL;
  }

  if (*v0)
  {
    v2 = 0x7365746F6E2ELL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10009D2CC(char a1)
{
  result = 0x7265646C6F66;
  switch(a1)
  {
    case 1:
      result = 0x746E656D75636F64;
      break;
    case 2:
      result = 0x6873646165727073;
      break;
    case 3:
      result = 0x61746E6573657270;
      break;
    case 4:
      result = 0x6567616D69;
      break;
    case 5:
      result = 0x6569766F6DLL;
      break;
    case 6:
      result = 6710384;
      break;
    case 7:
      result = 1702129518;
      break;
    case 8:
      result = 0x6C6F467365746F6ELL;
      break;
    case 9:
      result = 1953720684;
      break;
    case 10:
      result = 0x70756F7247626174;
      break;
    case 11:
      result = 0x6D726F6665657266;
      break;
    case 12:
      result = 0x43636972656E6567;
      break;
    case 13:
      result = 0x726568746FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10009D480(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10009D2CC(*a1);
  v5 = v4;
  if (v3 == sub_10009D2CC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000C73A4();
  }

  return v8 & 1;
}

Swift::Int sub_10009D508()
{
  v1 = *v0;
  sub_1000C7464();
  sub_10009D2CC(v1);
  sub_1000C6DD4();

  return sub_1000C7494();
}

uint64_t sub_10009D56C(uint64_t a1)
{
  sub_10009D2CC(*v1);
  sub_1000C6DD4();
}

Swift::Int sub_10009D5C0()
{
  v1 = *v0;
  sub_1000C7464();
  sub_10009D2CC(v1);
  sub_1000C6DD4();

  return sub_1000C7494();
}

unint64_t sub_10009D620@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10009F578(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_10009D650@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10009D2CC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10009D67C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C5E34();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000C5F74();
  v58 = *(v5 - 8);
  v59 = v5;
  v6 = __chkstk_darwin(v5);
  v55 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v56 = &v53 - v8;
  v9 = sub_10000FEB8(&qword_1001196B0, &qword_1000D3690);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v53 - v14;
  __chkstk_darwin(v13);
  v17 = &v53 - v16;
  v18 = sub_1000C5F24();
  v60 = *(v18 - 8);
  v61 = v18;
  v19 = __chkstk_darwin(v18);
  v54 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v57 = &v53 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v53 - v24;
  __chkstk_darwin(v23);
  v27 = &v53 - v26;
  if (a1 == 0x726464756F6C6369 && a2 == 0xEB00000000657669 || (sub_1000C73A4() & 1) != 0)
  {
    return 0xD00000000000001BLL;
  }

  if (a1 == 0x7365746F6ELL && a2 == 0xE500000000000000 || (sub_1000C73A4() & 1) != 0)
  {
    return 0xD000000000000014;
  }

  if (a1 == 0x7265646E696D6572 && a2 == 0xE900000000000073 || (sub_1000C73A4() & 1) != 0)
  {
    return 0xD000000000000018;
  }

  if (a1 == 0xD000000000000011 && 0x80000001000DC780 == a2 || (sub_1000C73A4() & 1) != 0)
  {
    return 0xD000000000000019;
  }

  if (a1 == 0x6D726F6665657266 && a2 == 0xE800000000000000 || (sub_1000C73A4() & 1) != 0)
  {
    return 0xD000000000000018;
  }

  sub_1000C5F34();
  v29 = v60;
  v53 = *(v60 + 48);
  if (v53(v17, 1, v61) == 1)
  {
    sub_10009F1B0(v17);

    sub_1000C5E24();
    v30 = v61;
    (*(v29 + 56))(v12, 1, 1, v61);
    sub_1000C5E94();
    if (v53(v15, 1, v30) == 1)
    {
      sub_10009F1B0(v15);
    }

    else
    {
      v39 = v30;
      v40 = v57;
      (*(v29 + 32))(v57, v15, v30);
      v41 = v55;
      sub_1000C5F54();
      v42 = v54;
      (*(v29 + 16))(v54, v40, v30);
      v43 = sub_1000C5F64();
      v44 = sub_1000C6FF4();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = v42;
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v62 = v47;
        *v46 = 136315138;
        v56 = sub_1000C5E44();
        v49 = v48;
        v50 = *(v29 + 8);
        v50(v45, v39);
        v51 = sub_100071844(v56, v49, &v62);

        *(v46 + 4) = v51;
        _os_log_impl(&_mh_execute_header, v43, v44, "utiOfItem(fromCKShareType)--type from filename extension: %s", v46, 0xCu);
        sub_100010544(v47);
      }

      else
      {

        v50 = *(v29 + 8);
        v50(v42, v39);
      }

      (*(v58 + 8))(v41, v59);
      v52 = v57;
      a1 = sub_1000C5E44();
      v50(v52, v39);
    }
  }

  else
  {
    v31 = v17;
    v32 = v61;
    (*(v29 + 32))(v27, v31, v61);
    sub_1000C5EB4();
    v33 = sub_1000C5F14();
    v34 = *(v29 + 8);
    v34(v25, v32);
    v35 = v56;
    sub_1000C5F54();
    v36 = sub_1000C5F64();
    v37 = sub_1000C6FF4();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 67109120;
      *(v38 + 4) = v33 & 1;
      _os_log_impl(&_mh_execute_header, v36, v37, "utiOfItem(fromCKShareType)--ckShareType is a UTType. Is file system item: %{BOOL}d", v38, 8u);
    }

    (*(v58 + 8))(v35, v59);
    a1 = sub_1000C5E44();
    v34(v27, v32);
  }

  return a1;
}

unint64_t sub_10009DE88(uint64_t a1, void *a2)
{
  v46 = a2;
  v3 = sub_1000C5D84();
  v47 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v42 = (&v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v7 = &v41 - v6;
  v8 = sub_1000C5F74();
  v44 = *(v8 - 8);
  v45 = v8;
  v9 = __chkstk_darwin(v8);
  v43 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v41 - v11;
  v13 = sub_1000C5BC4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000FEB8(&unk_1001196C0, &unk_1000CFFA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000CB170;
  *(inited + 32) = NSURLTypeIdentifierKey;
  v18 = NSURLTypeIdentifierKey;
  sub_1000782B8(inited);
  swift_setDeallocating();
  sub_1000104E8(inited + 32);
  sub_1000C5CF4();
  v19 = v7;
  v20 = v12;
  v21 = v47;

  v22 = sub_1000C5B94();
  if (v23)
  {
    v24 = v22;
    (*(v14 + 8))(v16, v13);
    return v24;
  }

  v43 = v16;
  sub_1000C5F54();
  v29 = v21;
  v30 = v19;
  (*(v21 + 16))(v19, a1, v3);
  v31 = sub_1000C5F64();
  v32 = sub_1000C6FD4();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v48[0] = v42;
    *v33 = 136315138;
    sub_100038E04();
    v34 = sub_1000C7374();
    v35 = v30;
    v37 = v36;
    (*(v29 + 8))(v35, v3);
    v38 = sub_100071844(v34, v37, v48);
    v39 = v20;
    v40 = v38;

    *(v33 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v31, v32, "resourceValues(forKeys:) returned nil for typeIdentifier (UTI) for URL: %s", v33, 0xCu);
    sub_100010544(v42);

    (*(v44 + 8))(v39, v45);
  }

  else
  {

    (*(v29 + 8))(v30, v3);
    (*(v44 + 8))(v20, v45);
  }

  (*(v14 + 8))(v43, v13);
  if (v46)
  {
    v26 = v46;
    sub_1000C7164();
    v27 = sub_1000C7174();

    if (v27)
    {
      v48[2] = v27;
      sub_10000FEB8(&unk_1001162F0, &unk_1000CBB70);
      if (swift_dynamicCast())
      {
        v28 = sub_10009D67C(v48[0], v48[1]);

        return v28;
      }
    }
  }

  return 0;
}

uint64_t sub_10009E578()
{
  v0 = sub_1000C5F24();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C5EE4();
  v4 = sub_1000C5F04();
  v5 = *(v1 + 8);
  v5(v3, v0);
  if (v4)
  {
    return 0;
  }

  sub_1000C5E64();
  v7 = sub_1000C5F04();
  v5(v3, v0);
  if (v7)
  {
    return 3;
  }

  sub_1000C5E54();
  v8 = sub_1000C5F04();
  v5(v3, v0);
  if (v8)
  {
    return 2;
  }

  sub_1000C5EC4();
  v9 = sub_1000C5F04();
  v5(v3, v0);
  if (v9)
  {
    return 4;
  }

  sub_1000C5ED4();
  v10 = sub_1000C5F04();
  v5(v3, v0);
  if (v10)
  {
    return 5;
  }

  sub_1000C5E84();
  v11 = sub_1000C5F04();
  v5(v3, v0);
  if (v11)
  {
    return 6;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_10009E760(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C5E34();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10000FEB8(&qword_1001196B0, &qword_1000D3690);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  v11 = sub_1000C5F24();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 0x726464756F6C6369 && a2 == 0xEB00000000657669)
  {
    return 1;
  }

  v16 = v13;
  if (sub_1000C73A4())
  {
    return 1;
  }

  if (a1 == 0x737265626D756ELL && a2 == 0xE700000000000000 || (sub_1000C73A4() & 1) != 0)
  {
    return 2;
  }

  if (a1 == 0x7365676170 && a2 == 0xE500000000000000 || (sub_1000C73A4() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 0x65746F6E79656BLL && a2 == 0xE700000000000000 || (sub_1000C73A4() & 1) != 0)
  {
    return 3;
  }

  if (a1 == 0x7365746F6ELL && a2 == 0xE500000000000000 || (sub_1000C73A4() & 1) != 0)
  {
    return 7;
  }

  if (a1 == 0xD000000000000016 && 0x80000001000DC700 == a2 || (sub_1000C73A4() & 1) != 0)
  {
    return 8;
  }

  if (a1 == 0x7265646E696D6572 && a2 == 0xE900000000000073 || (sub_1000C73A4() & 1) != 0 || a1 == 0xD000000000000018 && 0x80000001000DC720 == a2 || (sub_1000C73A4() & 1) != 0)
  {
    return 9;
  }

  if (a1 == 0xD000000000000011 && 0x80000001000DC780 == a2 || (sub_1000C73A4() & 1) != 0)
  {
    return 10;
  }

  if (a1 == 0x6D726F6665657266 && a2 == 0xE800000000000000 || (sub_1000C73A4() & 1) != 0 || a1 == 0xD000000000000018 && 0x80000001000DC760 == a2 || (sub_1000C73A4() & 1) != 0)
  {
    return 11;
  }

  sub_1000C5E24();
  (*(v12 + 56))(v8, 1, 1, v16);
  sub_1000C5E94();
  if ((*(v12 + 48))(v10, 1, v16) == 1)
  {
    sub_10009F1B0(v10);
    return 12;
  }

  else
  {
    (*(v12 + 32))(v15, v10, v16);
    v18 = sub_10009E578();
    (*(v12 + 8))(v15, v16);
    return v18;
  }
}

uint64_t sub_10009EC80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C5E34();
  __chkstk_darwin(v6 - 8);
  v28[1] = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000FEB8(&qword_1001196B0, &qword_1000D3690);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = v28 - v13;
  __chkstk_darwin(v12);
  v16 = v28 - v15;
  v17 = sub_1000C5F24();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = v28 - v22;
  v24 = sub_1000C5D84();
  if ((*(*(v24 - 8) + 48))(a3, 1, v24) == 1)
  {
    if (a1 == 0xD000000000000014 && 0x80000001000DC6E0 == a2 || (sub_1000C73A4() & 1) != 0)
    {
      return 7;
    }

    else if (a1 == 0xD000000000000016 && 0x80000001000DC700 == a2 || (sub_1000C73A4() & 1) != 0)
    {
      return 8;
    }

    else if (a1 == 0xD000000000000018 && 0x80000001000DC720 == a2 || (sub_1000C73A4() & 1) != 0)
    {
      return 9;
    }

    else if (a1 == 0xD000000000000019 && 0x80000001000DC740 == a2 || (sub_1000C73A4() & 1) != 0)
    {
      return 10;
    }

    else if (a1 == 0x6C656D726163 && a2 == 0xE600000000000000 || (sub_1000C73A4() & 1) != 0 || a1 == 0xD000000000000018 && 0x80000001000DC760 == a2 || (sub_1000C73A4() & 1) != 0)
    {
      return 11;
    }

    else
    {
      result = 11;
      if (a1 != 0x6D726F6665657266 || a2 != 0xE800000000000000)
      {
        if (sub_1000C73A4())
        {
          return 11;
        }

        else
        {
          return 12;
        }
      }
    }
  }

  else
  {

    sub_1000C5F34();
    v28[0] = a1;
    v26 = *(v18 + 48);
    if (v26(v16, 1, v17) == 1)
    {
      sub_10009F1B0(v16);

      sub_1000C5E24();
      (*(v18 + 56))(v11, 1, 1, v17);
      sub_1000C5E94();
      if (v26(v14, 1, v17) == 1)
      {
        sub_10009F1B0(v14);
        return 1;
      }

      (*(v18 + 32))(v21, v14, v17);
      v27 = sub_10009E578();
      (*(v18 + 8))(v21, v17);
    }

    else
    {
      (*(v18 + 32))(v23, v16, v17);
      v27 = sub_10009E578();
      (*(v18 + 8))(v23, v17);
    }

    return v27;
  }

  return result;
}

uint64_t sub_10009F1B0(uint64_t a1)
{
  v2 = sub_10000FEB8(&qword_1001196B0, &qword_1000D3690);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for CloudKitAppType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CloudKitAppType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10009F36C()
{
  result = qword_1001196B8;
  if (!qword_1001196B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001196B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UTISupport.SharingItemType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UTISupport.SharingItemType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10009F524()
{
  result = qword_1001196D0;
  if (!qword_1001196D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001196D0);
  }

  return result;
}

unint64_t sub_10009F578(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100107500;
  v6._object = a2;
  v4 = sub_1000C7344(v3, v6);

  if (v4 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10009F5F0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000C65F4();
  sub_10009F7D0(v8);
  *&v7[55] = v9;
  *&v7[39] = v8[2];
  *&v7[23] = v8[1];
  *&v7[7] = v8[0];
  *&v6[17] = *&v7[16];
  *&v6[33] = *&v7[32];
  *&v6[49] = *&v7[48];
  v6[0] = 1;
  *&v6[64] = *(&v9 + 1);
  *&v6[1] = *v7;
  sub_10000FEB8(&qword_100118DB0, &qword_1000D2368);
  sub_10000FEB8(&qword_100118FD8, &qword_1000D2A50);
  sub_10001E490(&qword_100118DA8, &qword_100118DB0, &qword_1000D2368, &protocol conformance descriptor for VStack<A>);
  v3 = sub_100010624(&qword_100118FF0, &qword_1000D2A60);
  v4 = sub_10001E490(&qword_100118FF8, &qword_100118FF0, &qword_1000D2A60, &protocol conformance descriptor for ToolbarItem<A, B>);
  *&v10[0] = v3;
  *(&v10[0] + 1) = v4;
  swift_getOpaqueTypeConformance2();
  sub_1000C69D4();
  v10[2] = *&v6[16];
  v10[3] = *&v6[32];
  v10[4] = *&v6[48];
  v11 = *&v6[64];
  v10[0] = v2;
  v10[1] = *v6;
  return sub_1000A0250(v10);
}

uint64_t sub_10009F7D0@<X0>(uint64_t a1@<X8>)
{
  sub_1000C65D4();
  v2 = sub_1000C68C4();
  v4 = v3;
  v6 = v5;
  sub_1000C67C4();
  v7 = sub_1000C68B4();
  v9 = v8;
  v11 = v10;

  sub_1000500D8(v2, v4, v6 & 1);

  sub_1000C6A54();
  v12 = sub_1000C6884();
  v28 = v13;
  v29 = v12;
  v27 = v14;
  v30 = v15;

  sub_1000500D8(v7, v9, v11 & 1);

  sub_1000C65D4();
  v16 = sub_1000C68C4();
  v18 = v17;
  LOBYTE(v9) = v19;
  sub_1000C6A54();
  v20 = sub_1000C6884();
  v22 = v21;
  LOBYTE(v4) = v23;
  v25 = v24;

  sub_1000500D8(v16, v18, v9 & 1);

  *a1 = v29;
  *(a1 + 8) = v28;
  *(a1 + 16) = v27 & 1;
  *(a1 + 24) = v30;
  *(a1 + 32) = v20;
  *(a1 + 40) = v22;
  *(a1 + 48) = v4 & 1;
  *(a1 + 56) = v25;
  sub_100050DE0(v29, v28, v27 & 1);

  sub_100050DE0(v20, v22, v4 & 1);

  sub_1000500D8(v20, v22, v4 & 1);

  sub_1000500D8(v29, v28, v27 & 1);
}

uint64_t sub_10009FA48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C6654();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10000FEB8(&qword_100118FF0, &qword_1000D2A60);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_1000C6644();
  v11 = a1;
  v12 = a2;
  sub_10000FEB8(&qword_100119020, &qword_1000D2A70);
  sub_10001E490(&qword_100119028, &qword_100119020, &qword_1000D2A70, &protocol conformance descriptor for Button<A>);
  sub_1000C6254();
  sub_10001E490(&qword_100118FF8, &qword_100118FF0, &qword_1000D2A60, &protocol conformance descriptor for ToolbarItem<A, B>);
  sub_1000C6684();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10009FC38(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_10000FEB8(&qword_100119030, &qword_1000D2A78);
  sub_100096614();

  return sub_1000C6B34();
}

uint64_t sub_10009FCF4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_10000816C();
      v3 = sub_1000077D8();
      if (v3)
      {
        [v3 _dismissViewControllerWithError:0];
        swift_unknownObjectRelease();
      }

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    type metadata accessor for SharingModel(0);
    sub_1000A0308(&qword_100117158, type metadata accessor for SharingModel, &unk_1000D00B0);
    result = sub_1000C63F4();
    __break(1u);
  }

  return result;
}

uint64_t sub_10009FDC4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1000C6A84();
  v3 = objc_opt_self();
  v4 = [v3 secondaryLabelColor];
  v5 = sub_1000C6A64();
  v6 = [v3 quaternaryLabelColor];
  v7 = sub_1000C6A64();
  v8 = a1 + *(sub_10000FEB8(&qword_100119030, &qword_1000D2A78) + 36);
  v9 = *(sub_10000FEB8(&qword_100119068, &qword_1000D2A90) + 28);
  v10 = enum case for Image.Scale.large(_:);
  v11 = sub_1000C6AA4();
  (*(*(v11 - 8) + 104))(&v8[v9], v10, v11);
  result = swift_getKeyPath();
  *v8 = result;
  *a1 = v2;
  a1[1] = v5;
  a1[2] = v7;
  return result;
}

uint64_t sub_10009FEFC@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v2 = sub_1000C66B4();
  v3 = *(v2 - 8);
  v19 = v2;
  v20 = v3;
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000FEB8(&qword_1001196E0, &qword_1000D3868);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - v8;
  v22 = *v1;
  v18 = sub_10000FEB8(&qword_1001196E8, &qword_1000D3870);
  v10 = sub_100010624(&qword_100118DB0, &qword_1000D2368);
  v11 = sub_100010624(&qword_100118FD8, &qword_1000D2A50);
  v12 = sub_10001E490(&qword_100118DA8, &qword_100118DB0, &qword_1000D2368, &protocol conformance descriptor for VStack<A>);
  v13 = sub_100010624(&qword_100118FF0, &qword_1000D2A60);
  v14 = sub_10001E490(&qword_100118FF8, &qword_100118FF0, &qword_1000D2A60, &protocol conformance descriptor for ToolbarItem<A, B>);
  v23 = v13;
  v24 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = v10;
  v24 = v11;
  v25 = v12;
  v26 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1000C6394();
  sub_1000C66A4();
  sub_10001E490(&qword_1001196F0, &qword_1001196E0, &qword_1000D3868, &protocol conformance descriptor for NavigationStack<A, B>);
  sub_1000A0308(&qword_100119008, &type metadata accessor for StackNavigationViewStyle, &protocol conformance descriptor for StackNavigationViewStyle);
  v16 = v19;
  sub_1000C68E4();
  (*(v20 + 8))(v5, v16);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1000A0250(uint64_t a1)
{
  v2 = sub_10000FEB8(&qword_100118DB0, &qword_1000D2368);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000A02C0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A0308(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000A0350()
{
  sub_100010624(&qword_1001196E0, &qword_1000D3868);
  sub_1000C66B4();
  sub_10001E490(&qword_1001196F0, &qword_1001196E0, &qword_1000D3868, &protocol conformance descriptor for NavigationStack<A, B>);
  sub_1000A0308(&qword_100119008, &type metadata accessor for StackNavigationViewStyle, &protocol conformance descriptor for StackNavigationViewStyle);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000A0430()
{
  v1[29] = v0;
  sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  v1[30] = swift_task_alloc();
  sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v1[31] = swift_task_alloc();
  v2 = sub_1000C5D84();
  v1[32] = v2;
  v1[33] = *(v2 - 8);
  v1[34] = swift_task_alloc();
  v3 = sub_1000C5F74();
  v1[35] = v3;
  v1[36] = *(v3 - 8);
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = sub_1000C6F14();
  v1[41] = sub_1000C6F04();
  v5 = sub_1000C6ED4();
  v1[42] = v5;
  v1[43] = v4;

  return _swift_task_switch(sub_1000A060C, v5, v4);
}

uint64_t sub_1000A060C(uint64_t a1)
{
  v38 = v1;
  sub_1000C5F54();
  v2 = sub_1000C5F64();
  v3 = sub_1000C6FF4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    buf = v4;
    v37 = v35;
    *v4 = 136315138;
    v5 = sub_1000C6E54();
    v7 = v6;
    if (("ngError thrown: " & 0x2000000000000000) != 0)
    {
      v8 = ("ngError thrown: " >> 40) & 0xF0000;
    }

    else
    {
      v8 = 2424832;
    }

    if (v8)
    {
      v9 = v5;
      while (sub_1000C6E54() != v9 || v10 != v7)
      {
        v11 = sub_1000C73A4();

        if (v11)
        {
          goto LABEL_14;
        }

        if ((sub_1000C6DF4() ^ v8) < 0x4000)
        {
          goto LABEL_11;
        }
      }

LABEL_14:

      sub_1000C6E64();
      v18 = sub_1000C6DC4();
      v13 = v19;

      v12 = v18;
    }

    else
    {
LABEL_11:

      v12 = 0;
      v13 = 0xE000000000000000;
    }

    v20 = *(v1 + 312);
    v22 = *(v1 + 280);
    v21 = *(v1 + 288);
    v23 = sub_100071844(v12, v13, &v37);

    *(buf + 4) = v23;
    _os_log_impl(&_mh_execute_header, v2, v3, "running %s() for UI", buf, 0xCu);
    sub_100010544(v35);

    v17 = *(v21 + 8);
    v17(v20, v22);
  }

  else
  {
    v14 = *(v1 + 312);
    v15 = *(v1 + 280);
    v16 = *(v1 + 288);

    v17 = *(v16 + 8);
    v17(v14, v15);
  }

  *(v1 + 352) = v17;
  v24 = *(v1 + 256);
  v25 = *(v1 + 264);
  v26 = *(v1 + 248);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v1 + 57) = 1;

  sub_1000C60A4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if ((*(v25 + 48))(v26, 1, v24) == 1)
  {
    sub_10009CB18(*(v1 + 248));
    v27 = 0;
  }

  else
  {
    v29 = *(v1 + 264);
    v28 = *(v1 + 272);
    v30 = *(v1 + 256);
    (*(v29 + 32))(v28, *(v1 + 248), v30);
    v31 = shareStatus(url:)();
    (*(v29 + 8))(v28, v30);
    v27 = ((v31 & 0x10000) == 0) & v31;
  }

  v32 = swift_task_alloc();
  *(v1 + 360) = v32;
  *v32 = v1;
  v32[1] = sub_1000A0A0C;
  v33 = *(v1 + 232);

  return sub_10006F960(60, v33, v27);
}

uint64_t sub_1000A0A0C()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  v3 = *(v2 + 344);
  v4 = *(v2 + 336);
  if (v0)
  {
    v5 = sub_1000A0D44;
  }

  else
  {
    v5 = sub_1000A0B48;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000A0B48()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (*(v0 + 108) == 1 && (swift_getKeyPath(), swift_getKeyPath(), sub_1000C6094(), , , (*(v0 + 110) & 0xFE) != 8))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 111) = 2;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 109) = 4;
  }

  sub_1000C60A4();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10000BF98();
    swift_unknownObjectRelease();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000A0D44()
{
  v108 = v0;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10000BF98();
    swift_unknownObjectRelease();
  }

  *(v0 + 224) = *(v0 + 368);
  swift_errorRetain();
  sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
  if (!swift_dynamicCast())
  {

    return sub_1000C72E4();
  }

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  sub_1000C5F54();
  sub_1000199B8(v1, v2, v4, v3, v5, v6);
  v7 = sub_1000C5F64();
  v8 = sub_1000C6FD4();
  sub_1000494BC(v1, v2, v4, v3, v5, v6);
  v97 = v8;
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 352);
  v11 = *(v0 + 304);
  v99 = *(v0 + 280);
  v105 = v5;
  v103 = v2;
  v104 = v3;
  v101 = v4;
  v102 = v1;
  if (v9)
  {
    v95 = *(v0 + 304);
    v12 = swift_slowAlloc();
    v93 = v10;
    v13 = swift_slowAlloc();
    v106 = v13;
    *v12 = 136315138;
    *(v0 + 160) = v1;
    *(v0 + 168) = v2;
    *(v0 + 176) = v4;
    *(v0 + 184) = v3;
    *(v0 + 192) = v5;
    *(v0 + 200) = v6;
    sub_1000199B8(v1, v2, v4, v3, v5, v6);
    v14 = sub_1000C6D94();
    v16 = sub_100071844(v14, v15, &v106);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v7, v97, "Failed to fetch share: %s", v12, 0xCu);
    sub_100010544(v13);

    v93(v95, v99);
  }

  else
  {

    v10(v11, v99);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 58) = 2;

  result = sub_1000C60A4();
  if (v6 != 5)
  {
    v106 = 0;
    v107 = 0xE000000000000000;
    sub_1000C7244(34);
    v25 = v107;
    *(v0 + 208) = v106;
    *(v0 + 216) = v25;
    v110._countAndFlagsBits = 0xD000000000000020;
    v110._object = 0x80000001000DC8A0;
    sub_1000C6E04(v110);
    *(v0 + 64) = v1;
    *(v0 + 72) = v2;
    *(v0 + 80) = v4;
    *(v0 + 88) = v3;
    *(v0 + 96) = v105;
    *(v0 + 104) = v6;
    sub_1000C72D4();
    return sub_1000C72E4();
  }

  if (!v4)
  {
    __break(1u);
    return result;
  }

  v18 = v4;

  sub_1000230E4(3);
  if (v19)
  {

    v20 = v1;
    v21 = v2;
    v22 = v4;
    v23 = v3;
    v24 = v105;
    goto LABEL_12;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (*(v0 + 59) == 3)
  {
    v26 = v18;
    v27 = [v26 domain];
    v28 = sub_1000C6D84();
    v30 = v29;

    if (v28 == sub_1000C6D84() && v30 == v31)
    {
    }

    else
    {
      v32 = sub_1000C73A4();

      if ((v32 & 1) == 0)
      {

        goto LABEL_24;
      }
    }

    v33 = [v26 code];

    if (v33 == 20)
    {

      goto LABEL_33;
    }

LABEL_24:
    v34 = v26;
    v35 = [v34 domain];
    v36 = sub_1000C6D84();
    v38 = v37;

    if (v36 == sub_1000C6D84() && v38 == v39)
    {
    }

    else
    {
      v40 = sub_1000C73A4();

      if ((v40 & 1) == 0)
      {

LABEL_31:
        swift_getKeyPath();
        swift_getKeyPath();
        sub_1000C6094();

        sub_100067838(4 * ((*(v0 + 107) & 0xFE) == 2), v101);
LABEL_32:

        v4 = v101;
        goto LABEL_33;
      }
    }

    v41 = [v34 code];

    if (v41 == 7)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_33:
  v42 = v18;
  v43 = [v42 domain];
  v44 = sub_1000C6D84();
  v46 = v45;

  if (v44 == sub_1000C6D84() && v46 == v47)
  {
  }

  else
  {
    v48 = sub_1000C73A4();

    if ((v48 & 1) == 0)
    {

      goto LABEL_40;
    }
  }

  v49 = [v42 code];

  if (v49 == 20)
  {
    v50 = 0;
    goto LABEL_46;
  }

LABEL_40:
  v51 = v42;
  v52 = [v51 domain];
  v53 = sub_1000C6D84();
  v55 = v54;

  if (v53 == sub_1000C6D84() && v55 == v56)
  {

LABEL_44:
    v58 = [v51 code];

    v50 = v58 != 7;
    goto LABEL_46;
  }

  v57 = sub_1000C73A4();

  if (v57)
  {
    goto LABEL_44;
  }

  v50 = 1;
LABEL_46:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (*(v0 + 60) != 1 || v50)
  {
    sub_1000C5F54();

    v65 = v42;

    v66 = sub_1000C5F64();
    v67 = sub_1000C6FD4();
    sub_1000494BC(v102, v103, v4, v3, v105, 5u);
    if (os_log_type_enabled(v66, v67))
    {
      v98 = v67;
      v100 = v65;
      v68 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      *v68 = 136315394;
      v69 = sub_1000C6E54();
      v71 = v70;
      if (("ngError thrown: " & 0x2000000000000000) != 0)
      {
        v72 = ("ngError thrown: " >> 40) & 0xF0000;
      }

      else
      {
        v72 = 2424832;
      }

      if (v72)
      {
        v73 = v69;
        while (sub_1000C6E54() != v73 || v74 != v71)
        {
          v75 = sub_1000C73A4();

          if (v75)
          {
            goto LABEL_64;
          }

          if ((sub_1000C6DF4() ^ v72) < 0x4000)
          {
            goto LABEL_60;
          }
        }

LABEL_64:

        sub_1000C6E64();
        v85 = sub_1000C6DC4();
        v77 = v86;

        v76 = v85;
      }

      else
      {
LABEL_60:

        v76 = 0;
        v77 = 0xE000000000000000;
      }

      v84 = v102;
      v94 = *(v0 + 296);
      v96 = *(v0 + 352);
      v92 = *(v0 + 280);
      v87 = sub_100071844(v76, v77, &v106);

      *(v68 + 4) = v87;
      *(v68 + 12) = 2080;
      v82 = v103;
      v83 = v104;
      *(v0 + 112) = v102;
      *(v0 + 120) = v103;
      *(v0 + 128) = v101;
      *(v0 + 136) = v104;
      v81 = v105;
      *(v0 + 144) = v105;
      *(v0 + 152) = 5;
      sub_1000199B8(v102, v103, v101, v104, v105, 5u);
      v88 = sub_1000C6D94();
      v90 = sub_100071844(v88, v89, &v106);

      *(v68 + 14) = v90;
      _os_log_impl(&_mh_execute_header, v66, v98, "%s error: %s", v68, 0x16u);
      swift_arrayDestroy();

      v4 = v101;

      v96(v94, v92);
      v65 = v100;
    }

    else
    {
      v78 = *(v0 + 352);
      v79 = *(v0 + 296);
      v80 = *(v0 + 280);

      v78(v79, v80);
      v81 = v105;
      v82 = v103;
      v83 = v3;
      v84 = v102;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    sub_100067838(4 * ((*(v0 + 61) & 0xFE) == 2), v4);

    sub_1000494BC(v84, v82, v4, v83, v81, 5u);

    goto LABEL_67;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v59 = *(v0 + 62);
  swift_getKeyPath();
  swift_getKeyPath();
  if (v59 != 1)
  {
    *(v0 + 63) = 0;

    sub_1000C60A4();

    sub_1000494BC(v102, v2, v4, v3, v105, 5u);

    goto LABEL_67;
  }

  v60 = *(v0 + 232);
  v61 = *(v0 + 240);
  *(v0 + 105) = 2;

  sub_1000C60A4();
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 106) = 0;

  sub_1000C60A4();
  sub_1000C6F24();
  v62 = sub_1000C6F44();
  (*(*(v62 - 8) + 56))(v61, 0, 1, v62);

  v63 = sub_1000C6F04();
  v64 = swift_allocObject();
  v64[2] = v63;
  v64[3] = &protocol witness table for MainActor;
  v64[4] = v60;
  sub_1000B8860(0, 0, v61, &unk_1000D3A70, v64);

  v20 = v102;
  v21 = v103;
  v22 = v4;
  v23 = v3;
  v24 = v105;
LABEL_12:
  sub_1000494BC(v20, v21, v22, v23, v24, 5u);
LABEL_67:

  v91 = *(v0 + 8);

  return v91();
}

uint64_t sub_1000A1BF0()
{
  v0[2] = sub_1000C6F14();
  v0[3] = sub_1000C6F04();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100051D40;

  return sub_100066080(3);
}

uint64_t sub_1000A1CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_1000C5F74();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  sub_1000C6F14();
  v4[15] = sub_1000C6F04();
  v7 = sub_1000C6ED4();
  v4[16] = v7;
  v4[17] = v6;

  return _swift_task_switch(sub_1000A1DAC, v7, v6);
}

uint64_t sub_1000A1DAC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (*(v0 + 57) == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    if (*(v0 + 58) == 1 || (swift_getKeyPath(), swift_getKeyPath(), sub_1000C6094(), , , *(v0 + 59) == 3))
    {
      v1 = swift_task_alloc();
      *(v0 + 152) = v1;
      *v1 = v0;
      v1[1] = sub_1000A2410;

      return sub_10006E2A4();
    }

    else
    {

      sub_1000C5F54();
      v4 = sub_1000C5F64();
      v5 = sub_1000C6FF4();
      v6 = os_log_type_enabled(v4, v5);
      v7 = *(v0 + 112);
      v8 = *(v0 + 80);
      v9 = *(v0 + 88);
      if (v6)
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v4, v5, "shareTypeStabilizedForUI completed", v10, 2u);
      }

      (*(v9 + 8))(v7, v8);

      v11 = *(v0 + 8);

      return v11();
    }
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 144) = v3;
    *v3 = v0;
    v3[1] = sub_1000A20B0;

    return sub_1000A0430();
  }
}

uint64_t sub_1000A20B0()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return _swift_task_switch(sub_1000A21D0, v3, v2);
}

uint64_t sub_1000A21D0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (*(v0 + 58) == 1 || (swift_getKeyPath(), swift_getKeyPath(), sub_1000C6094(), , , *(v0 + 59) == 3))
  {
    v1 = swift_task_alloc();
    *(v0 + 152) = v1;
    *v1 = v0;
    v1[1] = sub_1000A2410;

    return sub_10006E2A4();
  }

  else
  {

    sub_1000C5F54();
    v3 = sub_1000C5F64();
    v4 = sub_1000C6FF4();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 112);
    v7 = *(v0 + 80);
    v8 = *(v0 + 88);
    if (v5)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "shareTypeStabilizedForUI completed", v9, 2u);
    }

    (*(v8 + 8))(v6, v7);

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1000A2410()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_1000A2674;
  }

  else
  {
    v5 = sub_1000A254C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000A254C()
{

  sub_1000C5F54();
  v1 = sub_1000C5F64();
  v2 = sub_1000C6FF4();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[14];
  v5 = v0[10];
  v6 = v0[11];
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "shareTypeStabilizedForUI completed", v7, 2u);
  }

  (*(v6 + 8))(v4, v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000A2674()
{
  v44 = v0;
  *(v0 + 64) = *(v0 + 160);
  swift_errorRetain();
  sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
  result = swift_dynamicCast();
  if (result)
  {
    v42 = *(v0 + 24);
    v2 = *(v0 + 32);
    v3 = *(v0 + 48);
    v40 = *(v0 + 16);
    v41 = *(v0 + 40);
    v39 = *(v0 + 56);
    if (v39 == 6)
    {
      if (!v2)
      {
        __break(1u);
        return result;
      }

      v4 = v2;

      sub_1000C5F54();
      v5 = v4;
      v6 = sub_1000C5F64();
      v7 = sub_1000C6FD4();

      v37 = v7;
      v8 = os_log_type_enabled(v6, v7);
      v9 = *(v0 + 104);
      v10 = *(v0 + 88);
      v38 = *(v0 + 80);
      if (v8)
      {
        buf = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v43 = v36;
        *buf = 136315138;
        v11 = v5;
        v35 = v9;
        v12 = v2;
        v13 = [v11 description];
        log = v6;
        v14 = v5;
        v15 = v3;
        v16 = sub_1000C6D84();
        v18 = v17;

        v2 = v12;
        v19 = v16;
        v3 = v15;
        v5 = v14;
        v20 = sub_100071844(v19, v18, &v43);

        *(buf + 4) = v20;
        _os_log_impl(&_mh_execute_header, log, v37, "shareTypeStabilizedForUI nameAndEmailError: %s", buf, 0xCu);
        sub_100010544(v36);

        (*(v10 + 8))(v35, v38);
      }

      else
      {

        (*(v10 + 8))(v9, v38);
      }

      v23 = v5;
      v22 = v2;
      sub_100067838(0, v2);
    }

    else
    {
      v22 = *(v0 + 32);
    }

    v24 = v3;
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 60) = 5;

    sub_1000C60A4();
    v25 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:1 userInfo:0];
    sub_1000C5F54();
    v26 = sub_1000C5F64();
    v27 = sub_1000C6FD4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "shareTypeStabilizedForUI unexpected nameAndEmailError, returning CKError.internalError as best approximation", v28, 2u);
    }

    v30 = *(v0 + 88);
    v29 = *(v0 + 96);
    v31 = *(v0 + 80);

    (*(v30 + 8))(v29, v31);
    v32 = v25;
    sub_100067838(0, v25);

    sub_1000494BC(v40, v42, v22, v41, v24, v39);

    v21 = *(v0 + 8);
  }

  else
  {

    v21 = *(v0 + 8);
  }

  return v21();
}

uint64_t sub_1000A2B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a4;
  v4[18] = sub_1000C6F14();
  v4[19] = sub_1000C6F04();
  v5 = swift_task_alloc();
  v4[20] = v5;
  *v5 = v4;
  v5[1] = sub_1000A2BD4;

  return sub_100064C74();
}

uint64_t sub_1000A2BD4()
{
  *(*v1 + 168) = v0;

  v3 = sub_1000C6ED4();
  if (v0)
  {
    v4 = sub_1000A2DA8;
  }

  else
  {
    v4 = sub_1000A2D30;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_1000A2D30()
{

  sub_100059520();
  sub_10000C954();
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000A2DA8()
{
  *(v0 + 128) = *(v0 + 168);
  swift_errorRetain();
  sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
  if (!swift_dynamicCast())
  {

    return sub_1000C72E4();
  }

  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  if (v6 != 5)
  {
    sub_1000C7244(34);
    *(v0 + 112) = 0;
    *(v0 + 120) = 0xE000000000000000;
    v13._object = 0x80000001000DC8A0;
    v13._countAndFlagsBits = 0xD000000000000020;
    sub_1000C6E04(v13);
    *(v0 + 64) = v2;
    *(v0 + 72) = v1;
    *(v0 + 80) = v4;
    *(v0 + 88) = v3;
    *(v0 + 96) = v5;
    *(v0 + 104) = v6;
    sub_1000C72D4();
    return sub_1000C72E4();
  }

  if (v4)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    v8 = v4;

    sub_1000C6094();

    v9 = *(v0 + 57) == 2;
    v10 = v8;
    sub_100067838(4 * v9, v4);

    sub_1000494BC(v2, v1, v4, v3, v5, 5u);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A3098()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A30D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100011080;

  return sub_1000A1BF0();
}

BOOL sub_1000A3214(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1000A3244@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1000A3270@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1000A335C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v3 = sub_1000A3608(a2);

  *a1 = v3;
  return result;
}

uint64_t sub_1000A339C()
{
  v1 = 1701736302;
  v2 = 0x796C6E4F64616572;
  if (*v0 != 2)
  {
    v2 = 0x646578696DLL;
  }

  if (*v0)
  {
    v1 = 0x7469725764616572;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1000A3420()
{
  result = qword_1001196F8;
  if (!qword_1001196F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001196F8);
  }

  return result;
}

unint64_t sub_1000A3478()
{
  result = qword_100119700;
  if (!qword_100119700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119700);
  }

  return result;
}

unint64_t sub_1000A34D0()
{
  result = qword_100119708;
  if (!qword_100119708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119708);
  }

  return result;
}

uint64_t sub_1000A3524()
{
  v1 = 0x4D63696C6275702ELL;
  if (*v0 != 1)
  {
    v1 = 0x657461766972702ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656E6F6E2ELL;
  }
}

uint64_t sub_1000A358C()
{
  v1 = 0x656E6F6E2ELL;
  v2 = 0x6C6E4F646165722ELL;
  if (*v0 != 2)
  {
    v2 = 0x646578696D2ELL;
  }

  if (*v0)
  {
    v1 = 0x697257646165722ELL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000A3608(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_1000A3668()
{
  result = qword_100119710;
  if (!qword_100119710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119710);
  }

  return result;
}

uint64_t sub_1000A3704@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = v5;
  v21 = a5;
  v11 = sub_1000C65A4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000FEB8(a1, a2);
  __chkstk_darwin(v15);
  v17 = &v20 - v16;
  sub_100017574(v10, &v20 - v16, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_100020D0C(v17, v21, a3, a4);
  }

  sub_1000C6FE4();
  v19 = sub_1000C6764();
  sub_1000C5F44();

  sub_1000C6594();
  swift_getAtKeyPath();

  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_1000A38E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = 0;
  *(a5 + 24) = a3;
  *(a5 + 32) = a4;
  *(a5 + 40) = 0;
  sub_1000C6AD4();
  *(a5 + 48) = v8;
  *(a5 + 56) = *(&v8 + 1);
  sub_1000C6AD4();
  *(a5 + 64) = v8;
  *(a5 + 72) = *(&v8 + 1);
  sub_1000C6AD4();
  *(a5 + 80) = v8;
  *(a5 + 88) = *(&v8 + 1);
  type metadata accessor for CGRect(0);
  sub_1000C6AD4();
  *(a5 + 96) = v8;
  *(a5 + 112) = v9;
  *(a5 + 128) = v10;
  *(a5 + 136) = xmmword_1000D3E00;
  *(a5 + 152) = xmmword_1000D3E00;
  v6 = *(type metadata accessor for PeopleView(0) + 44);
  *(a5 + v6) = swift_getKeyPath();
  sub_10000FEB8(&qword_100117C90, &unk_1000CFAB0);
  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_1000A3A74()
{
  result = qword_100119728;
  if (!qword_100119728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119728);
  }

  return result;
}

uint64_t type metadata accessor for PeopleView(uint64_t a1)
{
  result = qword_100119798;
  if (!qword_100119798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000A3B58@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v27 = a2;
  v26 = sub_10000FEB8(&qword_100119B68, &qword_1000D4A78);
  __chkstk_darwin(v26);
  v6 = (&v26 - v5);
  type metadata accessor for PeopleViewModel(0);
  sub_1000B00B4(&qword_1001197B0, type metadata accessor for PeopleViewModel, &unk_1000CD1A8);
  v7 = sub_1000C6224();
  swift_beginAccess();
  v8 = *(v7 + 16);

  v9 = sub_1000C6224();
  type metadata accessor for PersonInfoViewModel(0);
  swift_allocObject();

  v10 = sub_10007C100(v8, a1, v9);

  v28 = a1;
  v29 = v3;
  *v6 = swift_getKeyPath();
  sub_10000FEB8(&qword_100117C88, &unk_1000CFE20);
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for PersonInfoView(0);
  v12 = v6 + v11[5];
  *v12 = sub_1000B0960;
  *(v12 + 1) = v10;
  v12[16] = 0;
  v13 = v6 + v11[6];
  v32 = 3;

  sub_10000FEB8(&qword_100117018, &qword_1000CD830);
  sub_1000C6AD4();
  v14 = v31;
  *v13 = v30;
  *(v13 + 1) = v14;
  v15 = v11[7];
  *(v6 + v15) = swift_getKeyPath();
  sub_10000FEB8(&qword_100117C90, &unk_1000CFAB0);
  swift_storeEnumTagMultiPayload();
  v16 = v11[8];
  *(v6 + v16) = swift_getKeyPath();
  sub_10000FEB8(&qword_100116AF8, &qword_1000D6470);
  swift_storeEnumTagMultiPayload();
  v17 = v10[6];
  v18 = (v6 + *(v26 + 52));
  *v18 = v10[5];
  v18[1] = v17;
  sub_1000B0968();
  sub_10001E490(&qword_100119B78, &qword_100119B68, &qword_1000D4A78, &protocol conformance descriptor for IDView<A, B>);

  v19 = v27;
  sub_1000C6324();
  swift_beginAccess();
  v20 = v10[3];

  LOBYTE(v20) = sub_10003C790(v21, v20);

  KeyPath = swift_getKeyPath();
  v23 = swift_allocObject();
  *(v23 + 16) = (v20 & 1) == 0;
  result = sub_10000FEB8(&qword_100119AE0, &qword_1000D49E0);
  v25 = (v19 + *(result + 36));
  *v25 = KeyPath;
  v25[1] = sub_1000B0A24;
  v25[2] = v23;
  return result;
}

uint64_t sub_1000A3F50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a1;
  v46 = a2;
  v3 = sub_1000C6674();
  v43 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000FEB8(&qword_100119850, &qword_1000D4068);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v39 - v8;
  v10 = sub_10000FEB8(&qword_100119848, &qword_1000D4060);
  v42 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v39 - v11;
  v44 = sub_10000FEB8(&qword_100119838, &qword_1000D4050);
  v45 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v39 - v13;
  v48 = sub_10000FEB8(&qword_100119818, &qword_1000D4040);
  __chkstk_darwin(v48);
  v47 = &v39 - v14;
  v50 = a1;
  sub_10000FEB8(&qword_100119878, &qword_1000D4078);
  sub_10001E490(&qword_100119880, &qword_100119878, &qword_1000D4078, &protocol conformance descriptor for TupleView<A>);
  sub_1000C6864();
  sub_1000C6664();
  v15 = sub_10001E490(&qword_100119858, &qword_100119850, &qword_1000D4068, &protocol conformance descriptor for List<A, B>);
  sub_1000C69F4();
  (*(v43 + 8))(v5, v3);
  (*(v7 + 8))(v9, v6);
  sub_1000C6794();
  v60 = v6;
  v61 = v3;
  v62 = v15;
  v63 = &protocol witness table for InsetGroupedListStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = v41;
  sub_1000C6934();
  (*(v42 + 8))(v12, v10);
  v18 = v40;
  v49 = v40;
  sub_10000FEB8(&qword_100119840, &qword_1000D4058);
  v60 = v10;
  v61 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v19 = sub_100010624(&qword_100119860, &qword_1000D4070);
  v20 = sub_10001E490(&qword_100119868, &qword_100119860, &qword_1000D4070, &protocol conformance descriptor for ToolbarItem<A, B>);
  v60 = v19;
  v61 = v20;
  swift_getOpaqueTypeConformance2();
  v21 = v47;
  v22 = v44;
  sub_1000C69D4();
  (*(v45 + 8))(v17, v22);
  v23 = v18;
  v24 = *v18;
  LODWORD(v6) = *(v23 + 16);
  type metadata accessor for PeopleViewModel(0);
  sub_1000B00B4(&qword_1001197B0, type metadata accessor for PeopleViewModel, &unk_1000CD1A8);
  sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();
  v25 = &v21[*(sub_10000FEB8(&qword_100119830, &qword_1000D4048) + 36)];
  sub_1000C6094();

  sub_1000C6234();
  swift_getKeyPath();
  sub_1000C6354();

  v26 = v60;
  v27 = v61;
  LOBYTE(OpaqueTypeConformance2) = v62;
  v45 = type metadata accessor for AlertViewModelAlert(0);
  v28 = &v25[*(v45 + 20)];
  *v28 = v26;
  *(v28 + 1) = v27;
  v28[16] = OpaqueTypeConformance2;
  v44 = v24;
  LODWORD(v43) = v6;
  sub_1000C6224();
  swift_beginAccess();

  swift_getKeyPath();
  swift_getKeyPath();
  v29 = &v21[*(v48 + 36)];
  sub_1000C6094();

  sub_1000C6234();
  swift_getKeyPath();
  sub_1000C6354();

  v30 = v57;
  v31 = v58;
  v32 = v59;
  swift_getKeyPath();
  v54 = v30;
  v55 = v31;
  v56 = v32;
  sub_10000FEB8(&qword_100119888, &qword_1000D4180);
  sub_1000C6BA4();

  v33 = v51;
  v34 = v52;
  LOBYTE(v24) = v53;

  v35 = &v29[*(v45 + 20)];
  *v35 = v33;
  *(v35 + 1) = v34;
  v35[16] = v24;
  sub_1000C6224();
  swift_beginAccess();

  if (!swift_unknownObjectWeakLoadStrong() || (v36 = sub_10000B7A8(), swift_unknownObjectRelease(), !v36))
  {
    [objc_allocWithZone(UIImage) init];
  }

  sub_1000C6A74();
  sub_1000AD890();
  v37 = v47;
  sub_1000C6914();

  return sub_100010F24(v37, &qword_100119818, &qword_1000D4040);
}

uint64_t sub_1000A4878@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v146 = a2;
  v149 = sub_10000FEB8(&qword_1001198C8, &qword_1000D41F8);
  v145 = *(v149 - 8);
  __chkstk_darwin(v149);
  v129 = &v125 - v3;
  v4 = sub_10000FEB8(&qword_1001198D0, &qword_1000D4200);
  v5 = __chkstk_darwin(v4 - 8);
  v147 = &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v161 = &v125 - v7;
  v148 = sub_10000FEB8(&qword_1001198D8, &qword_1000D4208);
  v144 = *(v148 - 8);
  __chkstk_darwin(v148);
  v128 = &v125 - v8;
  v9 = sub_10000FEB8(&qword_1001198E0, &qword_1000D4210);
  v10 = __chkstk_darwin(v9 - 8);
  v159 = &v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v170 = &v125 - v12;
  v143 = sub_10000FEB8(&qword_1001198E8, &qword_1000D4218);
  v142 = *(v143 - 8);
  __chkstk_darwin(v143);
  v127 = &v125 - v13;
  v14 = sub_10000FEB8(&qword_1001198F0, &qword_1000D4220);
  v15 = __chkstk_darwin(v14 - 8);
  v158 = &v125 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v169 = &v125 - v17;
  v140 = sub_10000FEB8(&qword_1001198F8, &qword_1000D4228);
  v139 = *(v140 - 8);
  __chkstk_darwin(v140);
  v126 = &v125 - v18;
  v19 = sub_10000FEB8(&qword_100119900, &qword_1000D4230);
  v20 = __chkstk_darwin(v19 - 8);
  v166 = &v125 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v168 = &v125 - v22;
  v138 = sub_10000FEB8(&qword_100119908, &qword_1000D4238);
  v137 = *(v138 - 8);
  __chkstk_darwin(v138);
  v133 = &v125 - v23;
  v24 = sub_10000FEB8(&qword_100119910, &qword_1000D4240);
  v25 = __chkstk_darwin(v24 - 8);
  v157 = &v125 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v165 = &v125 - v27;
  v132 = type metadata accessor for OneTimeLinkListView(0);
  __chkstk_darwin(v132);
  v131 = (&v125 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v136 = sub_10000FEB8(&qword_100119918, &qword_1000D4248);
  v135 = *(v136 - 8);
  __chkstk_darwin(v136);
  v130 = &v125 - v29;
  v30 = sub_10000FEB8(&qword_100119920, &qword_1000D4250);
  v31 = __chkstk_darwin(v30 - 8);
  v156 = &v125 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v164 = &v125 - v33;
  v155 = sub_10000FEB8(&qword_100119928, &qword_1000D4258);
  v154 = *(v155 - 8);
  v34 = __chkstk_darwin(v155);
  v153 = &v125 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v163 = &v125 - v36;
  v134 = sub_10000FEB8(&qword_100119930, &qword_1000D4260);
  v37 = *(v134 - 1);
  __chkstk_darwin(v134);
  v125 = &v125 - v38;
  v39 = sub_10000FEB8(&qword_100119938, &qword_1000D4268);
  v40 = __chkstk_darwin(v39 - 8);
  v152 = &v125 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v43 = &v125 - v42;
  v45 = *a1;
  v44 = a1[1];
  v150 = a1;
  v46 = *(a1 + 16);
  v47 = type metadata accessor for PeopleViewModel(0);
  v48 = sub_1000B00B4(&qword_1001197B0, type metadata accessor for PeopleViewModel, &unk_1000CD1A8);
  sub_1000C6224();
  swift_beginAccess();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v160 = v43;
  v151 = v44;
  v162 = v46;
  v167 = v47;
  v171 = v48;
  v141 = v45;
  if (v172 == 1)
  {
    sub_1000C6224();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    if (v172 >> 62)
    {
      v49 = sub_1000C72F4();
    }

    else
    {
      v49 = *((v172 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v53 = v150;
    v54 = v134;

    if (v49 < 1)
    {
      v52 = 1;
    }

    else
    {
      v134 = &v125;
      __chkstk_darwin(v50);
      *(&v125 - 2) = v53;
      sub_1000A7288(v53, &v172);
      sub_10000FEB8(&qword_100119960, &qword_1000D42C8);
      sub_10000FEB8(&qword_100119A08, &unk_1000D45B0);
      sub_1000AF1F8();
      sub_10001E490(&qword_100119A10, &qword_100119A08, &unk_1000D45B0, &protocol conformance descriptor for TupleView<A>);
      v51 = v125;
      v43 = v160;
      sub_1000C6C04();
      (*(v37 + 32))(v43, v51, v54);
      v52 = 0;
    }
  }

  else
  {
    v52 = 1;
    v53 = v150;
    v54 = v134;
  }

  v55 = (*(v37 + 56))(v43, v52, 1, v54);
  __chkstk_darwin(v55);
  *(&v125 - 2) = v53;
  sub_1000A8C20(&v172);
  sub_10000FEB8(&qword_100119940, &qword_1000D42B8);
  sub_10000FEB8(&qword_100119948, &qword_1000D42C0);
  sub_1000AF58C(&qword_100119950, &qword_100119940, &qword_1000D42B8, sub_1000AF1F8);
  sub_10001E490(&qword_100119990, &qword_100119948, &qword_1000D42C0, &protocol conformance descriptor for TupleView<A>);
  sub_1000C6C04();
  sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (v172 >> 62)
  {
    v56 = sub_1000C72F4();
  }

  else
  {
    v56 = *((v172 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v57 = v135;

  if (v56)
  {
    v58 = sub_1000C6224();
    KeyPath = swift_getKeyPath();
    v60 = v131;
    *v131 = KeyPath;
    sub_10000FEB8(&qword_100117C88, &unk_1000CFE20);
    swift_storeEnumTagMultiPayload();
    *(v60 + *(v132 + 20)) = v58;
    sub_1000B00B4(&qword_100119998, type metadata accessor for OneTimeLinkListView, &unk_1000CFD64);
    v61 = v130;
    sub_1000C6324();
    v62 = v164;
    v63 = v136;
    (*(v57 + 32))(v164, v61, v136);
    v64 = 0;
  }

  else
  {
    v64 = 1;
    v62 = v164;
    v63 = v136;
  }

  (*(v57 + 56))(v62, v64, 1, v63);
  sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v65 = v172;

  v67 = HIBYTE(*(&v65 + 1)) & 0xFLL;
  if ((*(&v65 + 1) & 0x2000000000000000) == 0)
  {
    v67 = v65 & 0xFFFFFFFFFFFFLL;
  }

  if (v67)
  {
    goto LABEL_19;
  }

  sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v68 = v172;

  v69 = HIBYTE(*(&v68 + 1)) & 0xFLL;
  if ((*(&v68 + 1) & 0x2000000000000000) == 0)
  {
    v69 = v68 & 0xFFFFFFFFFFFFLL;
  }

  if (v69)
  {
LABEL_19:
    __chkstk_darwin(v66);
    *(&v125 - 2) = v53;
    sub_1000A9F48(&v172);
    sub_10000FEB8(&qword_1001195C0, &qword_1000D3310);
    sub_10000FEB8(&qword_1001199A0, &qword_1000D43B0);
    sub_10009BAC0();
    sub_10001E490(&qword_1001199A8, &qword_1001199A0, &qword_1000D43B0, &protocol conformance descriptor for TupleView<A>);
    v70 = v133;
    sub_1000C6C04();
    v71 = v137;
    v72 = v165;
    v73 = v70;
    v74 = v138;
    (*(v137 + 32))(v165, v73, v138);
    v75 = 0;
    v76 = v143;
  }

  else
  {
    v75 = 1;
    v72 = v165;
    v76 = v143;
    v74 = v138;
    v71 = v137;
  }

  v77 = 1;
  (*(v71 + 56))(v72, v75, 1, v74);
  type metadata accessor for GlobalPermissionViewModel(0);
  sub_1000B00B4(&qword_100117130, type metadata accessor for GlobalPermissionViewModel, &unk_1000CEDAC);
  sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v79 = v140;
  if (v172 == 1)
  {
    __chkstk_darwin(v78);
    *(&v125 - 2) = v53;
    sub_100096E64();
    v80 = v126;
    sub_1000C6C14();
    v81 = v80 + *(v79 + 36);
    v82 = *(v53 + 19);
    *v81 = *(v53 + 17);
    *(v81 + 16) = v82;
    *(v81 + 32) = 0;
    sub_100020D0C(v80, v168, &qword_1001198F8, &qword_1000D4228);
    v77 = 0;
  }

  v83 = 1;
  (*(v139 + 56))(v168, v77, 1, v79);
  sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (v172 == 1)
  {
    v84 = sub_1000AA1AC();
    v53 = v150;
    *&v172 = v84;
    *(&v172 + 1) = v85;
    sub_1000383C8();
    *&v172 = sub_1000C68D4();
    *(&v172 + 1) = v86;
    LOBYTE(v173) = v87 & 1;
    v174 = v88;
    __chkstk_darwin(v172);
    *(&v125 - 2) = v53;
    sub_10000FEB8(&qword_1001199C0, &unk_1000D44E8);
    sub_10001E490(&qword_1001199C8, &qword_1001199C0, &unk_1000D44E8, &protocol conformance descriptor for Button<A>);
    v89 = v127;
    sub_1000C6C24();
    v90 = v89 + *(v76 + 36);
    v91 = *(v53 + 19);
    *v90 = *(v53 + 17);
    *(v90 + 16) = v91;
    *(v90 + 32) = 0;
    sub_100020D0C(v89, v169, &qword_1001198E8, &qword_1000D4218);
    v83 = 0;
  }

  v92 = 1;
  (*(v142 + 56))(v169, v83, 1, v76);
  sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (v172 == 1)
  {
    __chkstk_darwin(v93);
    *(&v125 - 2) = v53;
    sub_1000AB430(&v172);
    sub_10000FEB8(&qword_1001199D0, &qword_1000D44F8);
    sub_10000FEB8(&qword_1001195C0, &qword_1000D3310);
    sub_1000AF58C(&qword_1001199D8, &qword_1001199D0, &qword_1000D44F8, sub_1000AF608);
    sub_10009BAC0();
    v94 = v128;
    sub_1000C6C24();
    v95 = v94 + *(sub_10000FEB8(&qword_100119A00, &qword_1000D4518) + 36);
    v96 = *(v53 + 19);
    *v95 = *(v53 + 17);
    *(v95 + 16) = v96;
    *(v95 + 32) = 0;
    v97 = sub_1000C6C64();
    sub_1000C6224();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    v98 = v172;
    v99 = v94 + *(v148 + 36);
    *v99 = v97;
    *(v99 + 8) = v98;
    sub_100020D0C(v94, v170, &qword_1001198D8, &qword_1000D4208);
    v92 = 0;
  }

  v100 = 1;
  (*(v144 + 56))(v170, v92, 1, v148);
  sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (v172 == 1)
  {
    v171 = &v125;
    __chkstk_darwin(v101);
    *(&v125 - 2) = v53;
    sub_10000FEB8(&qword_1001199B8, &qword_1000D44E0);
    v102 = sub_100010624(&qword_1001199C0, &unk_1000D44E8);
    v103 = sub_100010624(&qword_1001195F0, &qword_1000D3320);
    v104 = sub_10001E490(&qword_1001199C8, &qword_1001199C0, &unk_1000D44E8, &protocol conformance descriptor for Button<A>);
    v105 = sub_10001E490(&qword_1001195E8, &qword_1001195F0, &qword_1000D3320, &protocol conformance descriptor for Button<A>);
    *&v172 = v102;
    *(&v172 + 1) = v103;
    v173 = &type metadata for Text;
    v174 = v104;
    v175 = v105;
    v176 = &protocol witness table for Text;
    swift_getOpaqueTypeConformance2();
    v106 = v129;
    sub_1000C6C14();
    v107 = v106 + *(v149 + 36);
    v108 = *(v53 + 19);
    *v107 = *(v53 + 17);
    *(v107 + 16) = v108;
    *(v107 + 32) = 0;
    sub_1000AF514(v106, v161);
    v100 = 0;
  }

  v109 = v161;
  (*(v145 + 56))(v161, v100, 1, v149);
  v110 = v152;
  sub_100017574(v160, v152, &qword_100119938, &qword_1000D4268);
  v111 = *(v154 + 16);
  v112 = v153;
  v113 = v155;
  v111(v153, v163, v155);
  v114 = v156;
  sub_100017574(v164, v156, &qword_100119920, &qword_1000D4250);
  v115 = v157;
  sub_100017574(v165, v157, &qword_100119910, &qword_1000D4240);
  sub_100017574(v168, v166, &qword_100119900, &qword_1000D4230);
  v116 = v158;
  sub_100017574(v169, v158, &qword_1001198F0, &qword_1000D4220);
  sub_100017574(v170, v159, &qword_1001198E0, &qword_1000D4210);
  v117 = v109;
  v118 = v147;
  sub_100017574(v117, v147, &qword_1001198D0, &qword_1000D4200);
  v119 = v146;
  sub_100017574(v110, v146, &qword_100119938, &qword_1000D4268);
  v120 = sub_10000FEB8(&qword_1001199B0, &qword_1000D44D8);
  v111((v119 + v120[12]), v112, v113);
  sub_100017574(v114, v119 + v120[16], &qword_100119920, &qword_1000D4250);
  sub_100017574(v115, v119 + v120[20], &qword_100119910, &qword_1000D4240);
  sub_100017574(v166, v119 + v120[24], &qword_100119900, &qword_1000D4230);
  sub_100017574(v116, v119 + v120[28], &qword_1001198F0, &qword_1000D4220);
  v121 = v159;
  sub_100017574(v159, v119 + v120[32], &qword_1001198E0, &qword_1000D4210);
  sub_100017574(v118, v119 + v120[36], &qword_1001198D0, &qword_1000D4200);
  sub_100010F24(v161, &qword_1001198D0, &qword_1000D4200);
  sub_100010F24(v170, &qword_1001198E0, &qword_1000D4210);
  sub_100010F24(v169, &qword_1001198F0, &qword_1000D4220);
  sub_100010F24(v168, &qword_100119900, &qword_1000D4230);
  sub_100010F24(v165, &qword_100119910, &qword_1000D4240);
  sub_100010F24(v164, &qword_100119920, &qword_1000D4250);
  v122 = *(v154 + 8);
  v123 = v155;
  v122(v163, v155);
  sub_100010F24(v160, &qword_100119938, &qword_1000D4268);
  sub_100010F24(v118, &qword_1001198D0, &qword_1000D4200);
  sub_100010F24(v121, &qword_1001198E0, &qword_1000D4210);
  sub_100010F24(v158, &qword_1001198F0, &qword_1000D4220);
  sub_100010F24(v166, &qword_100119900, &qword_1000D4230);
  sub_100010F24(v157, &qword_100119910, &qword_1000D4240);
  sub_100010F24(v156, &qword_100119920, &qword_1000D4250);
  v122(v153, v123);
  return sub_100010F24(v152, &qword_100119938, &qword_1000D4268);
}

uint64_t sub_1000A665C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v47 = a2;
  v3 = type metadata accessor for PeopleView(0);
  v39 = *(v3 - 8);
  v4 = *(v39 + 64);
  __chkstk_darwin(v3 - 8);
  v46 = sub_10000FEB8(&qword_100119A18, &unk_1000D4650);
  v38 = *(v46 - 8);
  v5 = v38;
  v6 = __chkstk_darwin(v46);
  v45 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v50 = &v37 - v8;
  v9 = sub_10000FEB8(&qword_100118D78, &qword_1000D2050);
  __chkstk_darwin(v9 - 8);
  v11 = &v37 - v10;
  sub_1000C65D4();
  v42 = sub_1000C68C4();
  v41 = v12;
  v14 = v13;
  v44 = v15;
  v43 = sub_1000C6A34();
  v40 = sub_1000C6784();
  sub_1000C6804();
  v16 = enum case for Font.Design.default(_:);
  v17 = sub_1000C67F4();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v11, v16, v17);
  (*(v18 + 56))(v11, 0, 1, v17);
  *(&v49 + 1) = sub_1000C6824();
  sub_100010F24(v11, &qword_100118D78, &qword_1000D2050);
  *&v49 = swift_getKeyPath();
  v48 = v14 & 1;
  LOBYTE(v57[0]) = v14 & 1;
  type metadata accessor for PeopleViewModel(0);
  sub_1000B00B4(&qword_1001197B0, type metadata accessor for PeopleViewModel, &unk_1000CD1A8);
  sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  sub_10008EC80(a1, &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v20 = swift_allocObject();
  sub_1000AF064(&v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  sub_10000FEB8(&qword_100116C40, &qword_1000CD170);
  sub_10000FEB8(&qword_100119A20, &qword_1000D4698);
  sub_10001E490(&qword_100119A28, &qword_100116C40, &qword_1000CD170, &protocol conformance descriptor for [A]);
  sub_10001E490(&qword_100119A30, &qword_100119A20, &qword_1000D4698, &protocol conformance descriptor for NavigationLink<A, B>);
  sub_1000B00B4(&qword_100119A38, type metadata accessor for PersonRowViewModel, &unk_1000CE5C4);
  v21 = v50;
  sub_1000C6BF4();
  v22 = *(v5 + 16);
  v23 = v45;
  v24 = v46;
  v22(v45, v21, v46);
  v25 = v42;
  v26 = v41;
  *&v53 = v42;
  *(&v53 + 1) = v41;
  LOBYTE(v54) = v48;
  *(&v54 + 1) = *v52;
  DWORD1(v54) = *&v52[3];
  v27 = v44;
  v28 = v43;
  *(&v54 + 1) = v44;
  *&v55 = v43;
  LOBYTE(v21) = v40;
  BYTE8(v55) = v40;
  *(&v55 + 9) = *v51;
  HIDWORD(v55) = *&v51[3];
  v56 = v49;
  v29 = v53;
  v30 = v54;
  v31 = v49;
  v32 = v47;
  *(v47 + 2) = v55;
  *(v32 + 3) = v31;
  *v32 = v29;
  *(v32 + 1) = v30;
  v33 = v32;
  v34 = sub_10000FEB8(&qword_100119A40, &qword_1000D46A0);
  v22(&v33[*(v34 + 48)], v23, v24);
  sub_100017574(&v53, v57, &qword_100119A48, &unk_1000D46A8);
  v35 = *(v38 + 8);
  v35(v50, v24);
  v35(v23, v24);
  v57[0] = v25;
  v57[1] = v26;
  v58 = v48;
  *v59 = *v52;
  *&v59[3] = *&v52[3];
  v60 = v27;
  v61 = v28;
  v62 = v21;
  *v63 = *v51;
  *&v63[3] = *&v51[3];
  v64 = v49;
  return sub_100010F24(v57, &qword_100119A48, &unk_1000D46A8);
}

uint64_t sub_1000A6D20(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for PeopleView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = type metadata accessor for RequesterInfoView(0);
  __chkstk_darwin(v7);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *a1;
  v20 = v10;
  v21 = a2;
  sub_10008EC80(a2, &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_1000AF064(&v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v12 + v11);
  *(v12 + ((v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v10;
  *v9 = swift_getKeyPath();
  sub_10000FEB8(&qword_100117C88, &unk_1000CFE20);
  swift_storeEnumTagMultiPayload();
  v13 = v9 + v7[5];
  *v13 = sub_1000AFB7C;
  *(v13 + 1) = v12;
  v13[16] = 0;
  v14 = v9 + v7[6];
  v22 = 3;

  sub_10000FEB8(&qword_100117018, &qword_1000CD830);
  sub_1000C6AD4();
  v15 = v24;
  *v14 = v23;
  *(v14 + 1) = v15;
  v16 = v7[7];
  *(v9 + v16) = swift_getKeyPath();
  sub_10000FEB8(&qword_100117C90, &unk_1000CFAB0);
  swift_storeEnumTagMultiPayload();
  v17 = v7[8];
  *(v9 + v17) = swift_getKeyPath();
  sub_10000FEB8(&qword_100116AF8, &qword_1000D6470);
  swift_storeEnumTagMultiPayload();
  sub_1000AFC2C();
  sub_1000B00B4(&qword_100119A58, type metadata accessor for RequesterInfoView, &unk_1000D63B0);
  return sub_1000C6324();
}

uint64_t sub_1000A6FFC(uint64_t *a1, void *a2)
{
  type metadata accessor for PeopleViewModel(0);
  sub_1000B00B4(&qword_1001197B0, type metadata accessor for PeopleViewModel, &unk_1000CD1A8);
  v3 = sub_1000C6224();
  swift_beginAccess();
  v4 = *(v3 + 16);

  v5 = sub_1000C6224();
  type metadata accessor for RequesterInfoViewModel(0);
  swift_allocObject();

  v6 = sub_1000B3CA8(v4, a2, v5);

  return v6;
}

uint64_t sub_1000A7138@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  type metadata accessor for PeopleViewModel(0);
  sub_1000B00B4(&qword_1001197B0, type metadata accessor for PeopleViewModel, &unk_1000CD1A8);
  sub_1000C6224();
  sub_10000FEB8(&qword_100117018, &qword_1000CD830);
  sub_1000C6AD4();
  v5 = sub_1000C6334();
  *a3 = a1;
  *(a3 + 8) = v8;
  *(a3 + 16) = v9;
  *(a3 + 24) = v5;
  *(a3 + 32) = v6;
}

double sub_1000A7288@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v65 = sub_1000C6694();
  v67 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_10000FEB8(&qword_100117C30, &qword_1000CFA00) - 8;
  __chkstk_darwin(v66);
  v63 = &v62 - v4;
  v5 = sub_10000FEB8(&unk_100117BD0, qword_1000CF980);
  v6 = __chkstk_darwin(v5 - 8);
  v69 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v73 = &v62 - v9;
  __chkstk_darwin(v8);
  v11 = &v62 - v10;
  v64 = a1;
  type metadata accessor for PeopleViewModel(0);
  sub_1000B00B4(&qword_1001197B0, type metadata accessor for PeopleViewModel, &unk_1000CD1A8);
  sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v71 = sub_1000C6A74();
  v12 = v65;
  v13 = v63;
  sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v68 = *(&v93 + 1);
  v70 = v93;
  type metadata accessor for PeopleView(0);
  sub_1000A3704(&qword_100117C90, &unk_1000CFAB0, &unk_100117BD0, qword_1000CF980, v11);
  v14 = v73;
  v15 = v67;
  (*(v67 + 104))(v73, enum case for UserInterfaceSizeClass.regular(_:), v12);
  (*(v15 + 56))(v14, 0, 1, v12);
  v16 = *(v66 + 56);
  sub_100017574(v11, v13, &unk_100117BD0, qword_1000CF980);
  sub_100017574(v14, v13 + v16, &unk_100117BD0, qword_1000CF980);
  v17 = *(v15 + 48);
  if (v17(v13, 1, v12) == 1)
  {
    sub_100010F24(v14, &unk_100117BD0, qword_1000CF980);
    sub_100010F24(v11, &unk_100117BD0, qword_1000CF980);
    if (v17(v13 + v16, 1, v12) == 1)
    {
      sub_100010F24(v13, &unk_100117BD0, qword_1000CF980);
LABEL_9:
      v40 = sub_1000C6794();
      sub_1000C6204();
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v48 = v47;
      LOBYTE(v74) = 0;
      v49 = v71;

      v50 = v68;

      v51 = sub_1000C67A4();
      sub_1000C6204();
      LOBYTE(v82[0]) = 0;
      *&v84 = v49;
      *(&v84 + 1) = v70;
      *&v85 = v50;
      BYTE8(v85) = v40;
      *&v86 = v42;
      *(&v86 + 1) = v44;
      *&v87 = v46;
      *(&v87 + 1) = v48;
      LOBYTE(v88) = 0;
      BYTE8(v88) = v51;
      *&v89 = v52;
      *(&v89 + 1) = v53;
      *&v90 = v54;
      *(&v90 + 1) = v55;
      v91 = 0;
      v78 = v88;
      v79 = v89;
      v80 = v90;
      v81 = 0;
      v74 = v84;
      v75 = v85;
      v76 = v86;
      v77 = v87;
      v92 = 0;
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_100017574(v13, v69, &unk_100117BD0, qword_1000CF980);
  if (v17(v13 + v16, 1, v12) == 1)
  {
    sub_100010F24(v73, &unk_100117BD0, qword_1000CF980);
    sub_100010F24(v11, &unk_100117BD0, qword_1000CF980);
    (*(v15 + 8))(v69, v12);
LABEL_6:
    sub_100010F24(v13, &qword_100117C30, &qword_1000CFA00);
    goto LABEL_7;
  }

  v34 = v15;
  v35 = *(v15 + 32);
  v36 = v62;
  v35(v62, v13 + v16, v12);
  sub_1000B00B4(&qword_100117C58, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  v37 = v69;
  v38 = sub_1000C6D34();
  v39 = *(v34 + 8);
  v39(v36, v12);
  sub_100010F24(v73, &unk_100117BD0, qword_1000CF980);
  sub_100010F24(v11, &unk_100117BD0, qword_1000CF980);
  v39(v37, v12);
  sub_100010F24(v13, &unk_100117BD0, qword_1000CF980);
  if (v38)
  {
    goto LABEL_9;
  }

LABEL_7:
  v18 = sub_1000C6794();
  sub_1000C6204();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  LOBYTE(v74) = 0;
  v27 = v71;

  v28 = v68;

  v29 = sub_1000C67A4();
  sub_1000C6204();
  LOBYTE(v82[0]) = 0;
  *&v84 = v27;
  *(&v84 + 1) = v70;
  *&v85 = v28;
  BYTE8(v85) = v18;
  *&v86 = v20;
  *(&v86 + 1) = v22;
  *&v87 = v24;
  *(&v87 + 1) = v26;
  LOBYTE(v88) = 0;
  BYTE8(v88) = v29;
  *&v89 = v30;
  *(&v89 + 1) = v31;
  *&v90 = v32;
  *(&v90 + 1) = v33;
  v91 = 0;
  v78 = v88;
  v79 = v89;
  v80 = v90;
  v81 = 256;
  v74 = v84;
  v75 = v85;
  v76 = v86;
  v77 = v87;
  v92 = 1;
LABEL_10:
  sub_100017574(&v84, v82, &qword_100119970, &qword_1000D42D0);
  sub_10000FEB8(&qword_100119970, &qword_1000D42D0);
  sub_1000AF2D8(&qword_100119968, &qword_100119970, &qword_1000D42D0, sub_1000AF2A8);
  sub_1000C6624();

  sub_100010F24(&v84, &qword_100119970, &qword_1000D42D0);
  v97 = v82[6];
  v56 = v83;
  v93 = v82[0];
  v94 = v82[1];
  v95 = v82[2];
  v96 = v82[3];
  v57 = v82[5];
  v58 = v72;
  *(v72 + 64) = v82[4];
  *(v58 + 80) = v57;
  *(v58 + 96) = v97;
  *(v58 + 112) = v56;
  v59 = v94;
  *v58 = v93;
  *(v58 + 16) = v59;
  result = *&v95;
  v61 = v96;
  *(v58 + 32) = v95;
  *(v58 + 48) = v61;
  return result;
}

uint64_t sub_1000A7AC4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v101 = a2;
  v85 = sub_1000C6374();
  v84 = *(v85 - 8);
  v3 = __chkstk_darwin(v85);
  v82 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v4;
  __chkstk_darwin(v3);
  v83 = &v78 - v5;
  v87 = sub_10000FEB8(&qword_100119AC0, &qword_1000D4978);
  __chkstk_darwin(v87);
  v93 = &v78 - v6;
  v96 = sub_10000FEB8(&qword_100119AC8, &qword_1000D4980);
  v94 = *(v96 - 8);
  __chkstk_darwin(v96);
  v86 = &v78 - v7;
  v8 = sub_10000FEB8(&qword_100119AD0, &qword_1000D4988);
  v9 = __chkstk_darwin(v8 - 8);
  v100 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v99 = &v78 - v11;
  v12 = type metadata accessor for PeopleView(0);
  v89 = *(v12 - 8);
  __chkstk_darwin(v12 - 8);
  v103 = v13;
  v102 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_10000FEB8(&qword_100119AD8, &qword_1000D4990);
  v97 = *(v98 - 8);
  v14 = __chkstk_darwin(v98);
  v95 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v107 = &v78 - v16;
  v17 = sub_10000FEB8(&qword_100118D78, &qword_1000D2050);
  __chkstk_darwin(v17 - 8);
  v19 = &v78 - v18;
  v20 = *(a1 + 8);
  v21 = *(a1 + 16);
  v22 = type metadata accessor for PeopleViewModel(0);
  v23 = sub_1000B00B4(&qword_1001197B0, type metadata accessor for PeopleViewModel, &unk_1000CD1A8);
  v92 = v20;
  v91 = v21;
  v90 = v22;
  v88 = v23;
  sub_1000C6224();
  swift_beginAccess();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v111 = 0;
  v110 = 0;
  v109 = 0;
  v108 = 0;
  KeyPath = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  if (LOBYTE(v116[0]) == 1)
  {
    sub_1000C65D4();
    v111 = sub_1000C68C4();
    v110 = v28;
    v30 = v29;
    v109 = v31;
    v108 = sub_1000C6A34();
    v32 = sub_1000C6784();
    sub_1000C6804();
    v33 = enum case for Font.Design.default(_:);
    v34 = a1;
    v35 = sub_1000C67F4();
    v36 = *(v35 - 8);
    (*(v36 + 104))(v19, v33, v35);
    (*(v36 + 56))(v19, 0, 1, v35);
    a1 = v34;
    v25 = sub_1000C6824();
    sub_100010F24(v19, &qword_100118D78, &qword_1000D2050);
    KeyPath = swift_getKeyPath();
    LOBYTE(v116[0]) = v30 & 1;
    v27 = v30 & 1;
    v26 = v32;
  }

  v79 = a1;
  v104 = v26;
  v105 = v27;
  *&v106 = KeyPath;
  *(&v106 + 1) = v25;
  sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v37 = v102;
  sub_10008EC80(a1, v102);
  v38 = (*(v89 + 80) + 16) & ~*(v89 + 80);
  v89 = *(v89 + 80);
  v39 = swift_allocObject();
  v80 = v38;
  sub_1000AF064(v37, v39 + v38);
  sub_10000FEB8(&qword_100116C40, &qword_1000CD170);
  sub_10000FEB8(&qword_100119AE0, &qword_1000D49E0);
  sub_10001E490(&qword_100119A28, &qword_100116C40, &qword_1000CD170, &protocol conformance descriptor for [A]);
  sub_1000B01C8();
  sub_1000B00B4(&qword_100119A38, type metadata accessor for PersonRowViewModel, &unk_1000CE5C4);
  sub_1000C6BF4();
  sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (LOBYTE(v116[0]) == 1)
  {
    v40 = v79;
    v41 = v102;
    sub_10008EC80(v79, v102);
    v42 = v80;
    v43 = swift_allocObject();
    sub_1000AF064(v41, v43 + v42);
    sub_1000B0340();
    sub_1000C6B34();
    v44 = v84;
    v45 = v83;
    v46 = v85;
    (*(v84 + 104))(v83, enum case for CoordinateSpace.global(_:), v85);
    sub_10008EC80(v40, v41);
    v47 = swift_allocObject();
    sub_1000AF064(v41, v47 + v42);
    v48 = v82;
    (*(v44 + 16))(v82, v45, v46);
    v49 = (*(v44 + 80) + 16) & ~*(v44 + 80);
    v50 = swift_allocObject();
    (*(v44 + 32))(v50 + v49, v48, v46);
    v51 = sub_1000C6C54();
    v53 = v52;
    (*(v44 + 8))(v45, v46);
    v54 = sub_10000FEB8(&qword_100119B18, &qword_1000D4A50);
    v55 = v93;
    v56 = &v93[*(v54 + 36)];
    *v56 = sub_1000B04AC;
    v56[1] = v50;
    v56[2] = v51;
    v56[3] = v53;
    v57 = swift_allocObject();
    *(v57 + 16) = sub_1000B0394;
    *(v57 + 24) = v47;
    v58 = (v55 + *(v87 + 36));
    *v58 = sub_1000B0564;
    v58[1] = v57;
    v59 = *(v40 + 72);
    LOBYTE(v112) = *(v40 + 64);
    *(&v112 + 1) = v59;
    sub_10000FEB8(&qword_100118A30, &unk_1000D1920);
    sub_1000C6B04();
    sub_10008EC80(v40, v41);
    v60 = swift_allocObject();
    sub_1000AF064(v41, v60 + v42);
    sub_1000B07A8();
    sub_10009CBAC();
    v61 = v86;
    sub_1000C69B4();

    sub_100010F24(v55, &qword_100119AC0, &qword_1000D4978);
    v62 = v94;
    v63 = v99;
    v64 = v96;
    (*(v94 + 32))(v99, v61, v96);
    v65 = 0;
  }

  else
  {
    v65 = 1;
    v63 = v99;
    v64 = v96;
    v62 = v94;
  }

  (*(v62 + 56))(v63, v65, 1, v64);
  v66 = v97;
  v67 = *(v97 + 16);
  v68 = v95;
  v69 = v107;
  v70 = v98;
  v67(v95, v107, v98);
  v71 = v100;
  sub_100017574(v63, v100, &qword_100119AD0, &qword_1000D4988);
  *&v112 = v111;
  *(&v112 + 1) = v110;
  *&v113 = v105;
  *(&v113 + 1) = v109;
  *&v114 = v108;
  *(&v114 + 1) = v104;
  v115 = v106;
  v72 = v113;
  v73 = v101;
  *v101 = v112;
  *(v73 + 1) = v72;
  v74 = v115;
  *(v73 + 2) = v114;
  *(v73 + 3) = v74;
  v75 = sub_10000FEB8(&qword_100119B00, &qword_1000D4A40);
  v67(&v73[*(v75 + 48)], v68, v70);
  sub_100017574(v71, &v73[*(v75 + 64)], &qword_100119AD0, &qword_1000D4988);
  sub_100017574(&v112, v116, &qword_100119B08, &qword_1000D4A48);
  sub_100010F24(v63, &qword_100119AD0, &qword_1000D4988);
  v76 = *(v66 + 8);
  v76(v69, v70);
  sub_100010F24(v71, &qword_100119AD0, &qword_1000D4988);
  v76(v68, v70);
  v116[0] = v111;
  v116[1] = v110;
  v116[2] = v105;
  v116[3] = v109;
  v116[4] = v108;
  v116[5] = v104;
  v117 = v106;
  return sub_100010F24(v116, &qword_100119B08, &qword_1000D4A48);
}

uint64_t sub_1000A898C(uint64_t *a1)
{
  type metadata accessor for PeopleViewModel(0);
  sub_1000B00B4(&qword_1001197B0, type metadata accessor for PeopleViewModel, &unk_1000CD1A8);
  sub_1000C6224();
  sub_10000FEB8(&qword_100119B60, &qword_1000D4A70);
  sub_1000C6AE4();
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {

    goto LABEL_5;
  }

  v1 = sub_10000C7BC(v3, v4, v5, v6);

  result = swift_unknownObjectRelease();
  if ((v1 & 1) == 0)
  {
LABEL_5:
    sub_10000FEB8(&qword_100118A30, &unk_1000D1920);
    return sub_1000C6AF4();
  }

  return result;
}

double sub_1000A8B6C@<D0>(uint64_t a2@<X8>)
{
  type metadata accessor for PeopleViewModel(0);
  sub_1000B00B4(&qword_1001197B0, type metadata accessor for PeopleViewModel, &unk_1000CD1A8);
  sub_1000C6224();
  v3 = sub_10002E018();

  *a2 = v3;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  return result;
}

uint64_t sub_1000A8C20@<X0>(_OWORD *a2@<X8>)
{
  v74 = a2;
  v73 = sub_1000C6694();
  v76 = *(v73 - 8);
  __chkstk_darwin(v73);
  v66 = &v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_10000FEB8(&qword_100117C30, &qword_1000CFA00);
  __chkstk_darwin(v70);
  v72 = &v66 - v3;
  v4 = sub_10000FEB8(&unk_100117BD0, qword_1000CF980);
  v5 = __chkstk_darwin(v4 - 8);
  v67 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v75 = &v66 - v8;
  __chkstk_darwin(v7);
  v71 = &v66 - v9;
  type metadata accessor for PeopleViewModel(0);
  sub_1000B00B4(&qword_1001197B0, type metadata accessor for PeopleViewModel, &unk_1000CD1A8);
  sub_1000C6224();
  swift_beginAccess();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (LOBYTE(v85[0]) != 1 || ((sub_1000C6224(), swift_getKeyPath(), swift_getKeyPath(), sub_1000C6094(), , , , *&v85[0] >> 62) ? (v10 = sub_1000C72F4()) : (v10 = *((*&v85[0] & 0xFFFFFFFFFFFFFF8) + 0x10)), result = , v10 <= 0))
  {
    sub_1000C6224();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    v69 = sub_1000C6A74();
    sub_1000C6224();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    v68 = v85[0];
    type metadata accessor for PeopleView(0);
    v21 = v71;
    sub_1000A3704(&qword_100117C90, &unk_1000CFAB0, &unk_100117BD0, qword_1000CF980, v71);
    v23 = v75;
    v22 = v76;
    v24 = v73;
    (*(v76 + 104))(v75, enum case for UserInterfaceSizeClass.regular(_:), v73);
    (*(v22 + 56))(v23, 0, 1, v24);
    v25 = *(v70 + 48);
    v26 = v72;
    sub_100017574(v21, v72, &unk_100117BD0, qword_1000CF980);
    sub_100017574(v23, v26 + v25, &unk_100117BD0, qword_1000CF980);
    v27 = *(v22 + 48);
    if (v27(v26, 1, v24) == 1)
    {
      sub_100010F24(v23, &unk_100117BD0, qword_1000CF980);
      sub_100010F24(v21, &unk_100117BD0, qword_1000CF980);
      if (v27(v26 + v25, 1, v24) == 1)
      {
        sub_100010F24(v26, &unk_100117BD0, qword_1000CF980);
LABEL_14:
        v49 = sub_1000C6794();
        sub_1000C6204();
        v51 = v50;
        v53 = v52;
        v55 = v54;
        v57 = v56;
        LOBYTE(v77) = 0;
        v58 = v69;

        v59 = *(&v68 + 1);

        v60 = sub_1000C67A4();
        sub_1000C6204();
        LOBYTE(v85[0]) = 0;
        *&v89 = v58;
        *(&v89 + 1) = v68;
        *&v90 = v59;
        BYTE8(v90) = v49;
        *&v91 = v51;
        *(&v91 + 1) = v53;
        *&v92 = v55;
        *(&v92 + 1) = v57;
        LOBYTE(v93) = 0;
        BYTE8(v93) = v60;
        *&v94 = v61;
        *(&v94 + 1) = v62;
        *&v95 = v63;
        *(&v95 + 1) = v64;
        v96 = 0;
        v81 = v93;
        v82 = v94;
        v83 = v95;
        v84 = 0;
        v77 = v89;
        v78 = v90;
        v79 = v91;
        v80 = v92;
        v97 = 0;
        goto LABEL_15;
      }
    }

    else
    {
      v28 = v67;
      sub_100017574(v26, v67, &unk_100117BD0, qword_1000CF980);
      if (v27(v26 + v25, 1, v24) != 1)
      {
        v45 = v76;
        v46 = v66;
        (*(v76 + 32))(v66, v26 + v25, v24);
        sub_1000B00B4(&qword_100117C58, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
        v47 = sub_1000C6D34();
        v48 = *(v45 + 8);
        v48(v46, v24);
        sub_100010F24(v75, &unk_100117BD0, qword_1000CF980);
        sub_100010F24(v21, &unk_100117BD0, qword_1000CF980);
        v48(v28, v24);
        sub_100010F24(v26, &unk_100117BD0, qword_1000CF980);
        if (v47)
        {
          goto LABEL_14;
        }

LABEL_12:
        v29 = sub_1000C6794();
        sub_1000C6204();
        v31 = v30;
        v33 = v32;
        v35 = v34;
        v37 = v36;
        LOBYTE(v77) = 0;
        v38 = v69;

        v39 = *(&v68 + 1);

        v40 = sub_1000C67A4();
        sub_1000C6204();
        LOBYTE(v85[0]) = 0;
        *&v89 = v38;
        *(&v89 + 1) = v68;
        *&v90 = v39;
        BYTE8(v90) = v29;
        *&v91 = v31;
        *(&v91 + 1) = v33;
        *&v92 = v35;
        *(&v92 + 1) = v37;
        LOBYTE(v93) = 0;
        BYTE8(v93) = v40;
        *&v94 = v41;
        *(&v94 + 1) = v42;
        *&v95 = v43;
        *(&v95 + 1) = v44;
        v96 = 0;
        v81 = v93;
        v82 = v94;
        v83 = v95;
        v84 = 256;
        v77 = v89;
        v78 = v90;
        v79 = v91;
        v80 = v92;
        v97 = 1;
LABEL_15:
        sub_100017574(&v89, v85, &qword_100119970, &qword_1000D42D0);
        sub_10000FEB8(&qword_100119970, &qword_1000D42D0);
        sub_1000AF2D8(&qword_100119968, &qword_100119970, &qword_1000D42D0, sub_1000AF2A8);
        sub_1000C6624();

        result = sub_100010F24(&v89, &qword_100119970, &qword_1000D42D0);
        v14 = v85[0];
        v16 = v85[1];
        v17 = v85[2];
        v19 = v85[4];
        v20 = v85[5];
        v18 = v85[3];
        v12 = v86;
        v13 = v87;
        v15 = v88;
        goto LABEL_16;
      }

      sub_100010F24(v75, &unk_100117BD0, qword_1000CF980);
      sub_100010F24(v21, &unk_100117BD0, qword_1000CF980);
      (*(v76 + 8))(v28, v24);
    }

    sub_100010F24(v26, &qword_100117C30, &qword_1000CFA00);
    goto LABEL_12;
  }

  v12 = 0;
  v13 = 0;
  v14 = 0uLL;
  v15 = -256;
  v16 = 0uLL;
  v17 = 0uLL;
  v18 = 0uLL;
  v19 = 0uLL;
  v20 = 0uLL;
LABEL_16:
  v65 = v74;
  *v74 = v14;
  v65[1] = v16;
  v65[2] = v17;
  v65[3] = v18;
  v65[4] = v19;
  v65[5] = v20;
  *(v65 + 12) = v12;
  *(v65 + 13) = v13;
  *(v65 + 56) = v15;
  return result;
}

uint64_t sub_1000A9598@<X0>(uint64_t a1@<X8>)
{
  sub_1000C65D4();
  result = sub_1000C68C4();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1000A9610@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_1000C6634();
  v59 = *(v3 - 8);
  v60 = v3;
  __chkstk_darwin(v3);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000FEB8(&qword_100119A90, &qword_1000D5BD0);
  v57 = *(v6 - 8);
  v58 = v6;
  __chkstk_darwin(v6);
  v8 = &v49 - v7;
  v9 = sub_10000FEB8(&qword_100119A98, &qword_1000D48D0);
  v61 = *(v9 - 8);
  v62 = v9;
  __chkstk_darwin(v9);
  v56 = &v49 - v10;
  v11 = sub_10000FEB8(&qword_100119AA0, &qword_1000D48D8);
  v12 = __chkstk_darwin(v11 - 8);
  v54 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v53 = &v49 - v15;
  v16 = __chkstk_darwin(v14);
  v52 = &v49 - v17;
  __chkstk_darwin(v16);
  v63 = &v49 - v18;
  v19 = *a1;
  type metadata accessor for PeopleViewModel(0);
  sub_1000B00B4(&qword_1001197B0, type metadata accessor for PeopleViewModel, &unk_1000CD1A8);
  v64 = v19;
  sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v21 = v65;
  v20 = v66;

  v22 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v22 = v21 & 0xFFFFFFFFFFFFLL;
  }

  v50 = v5;
  if (v22)
  {
    sub_1000C6224();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    v67 = v65;
    v68 = v66;
    sub_1000C6234();
    swift_getKeyPath();
    sub_1000C6354();

    sub_1000383C8();
    sub_1000C6B64();
    sub_1000C63E4();
    sub_10001E490(&qword_100119AA8, &qword_100119A90, &qword_1000D5BD0, &protocol conformance descriptor for Toggle<A>);
    sub_1000B00B4(&qword_100119AB0, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
    v23 = v56;
    v24 = v58;
    v25 = v60;
    sub_1000C6924();
    (*(v59 + 8))(v5, v25);
    (*(v57 + 8))(v8, v24);
    v27 = v61;
    v26 = v62;
    v28 = v63;
    (*(v61 + 32))(v63, v23, v62);
    v29 = 0;
    v30 = v26;
    v31 = v28;
  }

  else
  {
    v29 = 1;
    v30 = v62;
    v31 = v63;
    v27 = v61;
  }

  v32 = 1;
  v51 = *(v27 + 56);
  v51(v31, v29, 1, v30);
  sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v34 = v65;
  v33 = v66;

  v35 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v35 = v34 & 0xFFFFFFFFFFFFLL;
  }

  if (v35)
  {
    sub_1000C6224();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    v67 = v65;
    v68 = v66;
    sub_1000C6234();
    swift_getKeyPath();
    sub_1000C6354();

    sub_1000383C8();
    sub_1000C6B64();
    v36 = v50;
    sub_1000C63E4();
    sub_10001E490(&qword_100119AA8, &qword_100119A90, &qword_1000D5BD0, &protocol conformance descriptor for Toggle<A>);
    sub_1000B00B4(&qword_100119AB0, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
    v37 = v56;
    v38 = v58;
    v39 = v60;
    sub_1000C6924();
    (*(v59 + 8))(v36, v39);
    (*(v57 + 8))(v8, v38);
    v40 = v62;
    v41 = v52;
    (*(v61 + 32))(v52, v37, v62);
    v32 = 0;
    v42 = v40;
  }

  else
  {
    v42 = v62;
    v41 = v52;
  }

  v51(v41, v32, 1, v42);
  v43 = v63;
  v44 = v53;
  sub_100017574(v63, v53, &qword_100119AA0, &qword_1000D48D8);
  v45 = v54;
  sub_100017574(v41, v54, &qword_100119AA0, &qword_1000D48D8);
  v46 = v55;
  sub_100017574(v44, v55, &qword_100119AA0, &qword_1000D48D8);
  v47 = sub_10000FEB8(&qword_100119AB8, &qword_1000D4930);
  sub_100017574(v45, v46 + *(v47 + 48), &qword_100119AA0, &qword_1000D48D8);
  sub_100010F24(v41, &qword_100119AA0, &qword_1000D48D8);
  sub_100010F24(v43, &qword_100119AA0, &qword_1000D48D8);
  sub_100010F24(v45, &qword_100119AA0, &qword_1000D48D8);
  return sub_100010F24(v44, &qword_100119AA0, &qword_1000D48D8);
}

uint64_t sub_1000A9F48@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PeopleViewModel(0);
  sub_1000B00B4(&qword_1001197B0, type metadata accessor for PeopleViewModel, &unk_1000CD1A8);
  sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v3 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v3 = *v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    sub_1000C6224();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    sub_1000383C8();
    result = sub_1000C68D4();
    v3 = v7 & 1;
  }

  else
  {
    result = 0;
    v5 = 0;
    v6 = 0;
  }

  *a2 = result;
  a2[1] = v5;
  a2[2] = v3;
  a2[3] = v6;
  return result;
}

uint64_t sub_1000AA108@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for GlobalPermissionViewModel(0);
  sub_1000B00B4(&qword_100117130, type metadata accessor for GlobalPermissionViewModel, &unk_1000CEDAC);
  sub_1000C6224();
  result = sub_1000C6334();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1000AA1AC()
{
  sub_10000FEB8(&qword_1001170C8, qword_1000CDDC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000CFF90;
  *(inited + 32) = 7;
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v70._countAndFlagsBits = 0x80000001000DC980;
  v83._object = 0x80000001000DC950;
  v83._countAndFlagsBits = 0xD000000000000020;
  v96.value._countAndFlagsBits = 0;
  v96.value._object = 0;
  v3.super.isa = v2;
  v109._countAndFlagsBits = 0;
  v109._object = 0xE000000000000000;
  v4 = sub_1000C5B74(v83, v96, v3, v109, 0xD000000000000049, v70);
  v6 = v5;

  *(inited + 40) = v4;
  *(inited + 48) = v6;
  *(inited + 56) = 8;
  v7 = [v1 mainBundle];
  v71._countAndFlagsBits = 0x80000001000DCA00;
  v84._countAndFlagsBits = 0xD000000000000022;
  v84._object = 0x80000001000DC9D0;
  v97.value._countAndFlagsBits = 0;
  v97.value._object = 0;
  v8.super.isa = v7;
  v110._countAndFlagsBits = 0;
  v110._object = 0xE000000000000000;
  v9 = sub_1000C5B74(v84, v97, v8, v110, 0xD000000000000051, v71);
  v11 = v10;

  *(inited + 64) = v9;
  *(inited + 72) = v11;
  *(inited + 80) = 9;
  v12 = [v1 mainBundle];
  v72._countAndFlagsBits = 0x80000001000DCA90;
  v85._object = 0x80000001000DCA60;
  v85._countAndFlagsBits = 0xD000000000000020;
  v98.value._countAndFlagsBits = 0;
  v98.value._object = 0;
  v13.super.isa = v12;
  v111._countAndFlagsBits = 0;
  v111._object = 0xE000000000000000;
  v14 = sub_1000C5B74(v85, v98, v13, v111, 0xD000000000000049, v72);
  v16 = v15;

  *(inited + 88) = v14;
  *(inited + 96) = v16;
  *(inited + 104) = 10;
  v17 = [v1 mainBundle];
  v73._countAndFlagsBits = 0x80000001000DCB10;
  v86._countAndFlagsBits = 0xD000000000000025;
  v86._object = 0x80000001000DCAE0;
  v99.value._countAndFlagsBits = 0;
  v99.value._object = 0;
  v18.super.isa = v17;
  v112._countAndFlagsBits = 0;
  v112._object = 0xE000000000000000;
  v19 = sub_1000C5B74(v86, v99, v18, v112, 0xD00000000000004ELL, v73);
  v21 = v20;

  *(inited + 112) = v19;
  *(inited + 120) = v21;
  *(inited + 128) = 11;
  v22 = [v1 mainBundle];
  v74._countAndFlagsBits = 0x80000001000DCB90;
  v87._countAndFlagsBits = 0xD000000000000021;
  v87._object = 0x80000001000DCB60;
  v100.value._countAndFlagsBits = 0;
  v100.value._object = 0;
  v23.super.isa = v22;
  v113._countAndFlagsBits = 0;
  v113._object = 0xE000000000000000;
  v24 = sub_1000C5B74(v87, v100, v23, v113, 0xD000000000000053, v74);
  v26 = v25;

  *(inited + 136) = v24;
  *(inited + 144) = v26;
  *(inited + 152) = 0;
  v27 = [v1 mainBundle];
  v75._countAndFlagsBits = 0x80000001000DCBF0;
  v88._countAndFlagsBits = 0xD000000000000022;
  v88._object = 0x80000001000DC9D0;
  v101.value._countAndFlagsBits = 0;
  v101.value._object = 0;
  v28.super.isa = v27;
  v114._countAndFlagsBits = 0;
  v114._object = 0xE000000000000000;
  v29 = sub_1000C5B74(v88, v101, v28, v114, 0xD00000000000004BLL, v75);
  v31 = v30;

  *(inited + 160) = v29;
  *(inited + 168) = v31;
  *(inited + 176) = 1;
  v32 = [v1 mainBundle];
  v76._countAndFlagsBits = 0x80000001000DCC70;
  v89._countAndFlagsBits = 0xD000000000000024;
  v89._object = 0x80000001000DCC40;
  v102.value._countAndFlagsBits = 0;
  v102.value._object = 0;
  v33.super.isa = v32;
  v115._countAndFlagsBits = 0;
  v115._object = 0xE000000000000000;
  v34 = sub_1000C5B74(v89, v102, v33, v115, 0xD00000000000004DLL, v76);
  v36 = v35;

  *(inited + 184) = v34;
  *(inited + 192) = v36;
  *(inited + 200) = 2;
  v37 = [v1 mainBundle];
  v77._countAndFlagsBits = 0x80000001000DCCF0;
  v90._countAndFlagsBits = 0xD000000000000027;
  v90._object = 0x80000001000DCCC0;
  v103.value._countAndFlagsBits = 0;
  v103.value._object = 0;
  v38.super.isa = v37;
  v116._countAndFlagsBits = 0;
  v116._object = 0xE000000000000000;
  v39 = sub_1000C5B74(v90, v103, v38, v116, 0xD000000000000050, v77);
  v41 = v40;

  *(inited + 208) = v39;
  *(inited + 216) = v41;
  *(inited + 224) = 3;
  v42 = [v1 mainBundle];
  v78._countAndFlagsBits = 0x80000001000DCD80;
  v91._countAndFlagsBits = 0xD000000000000028;
  v91._object = 0x80000001000DCD50;
  v104.value._countAndFlagsBits = 0;
  v104.value._object = 0;
  v43.super.isa = v42;
  v117._countAndFlagsBits = 0;
  v117._object = 0xE000000000000000;
  v44 = sub_1000C5B74(v91, v104, v43, v117, 0xD000000000000051, v78);
  v46 = v45;

  *(inited + 232) = v44;
  *(inited + 240) = v46;
  *(inited + 248) = 4;
  v47 = [v1 mainBundle];
  v79._countAndFlagsBits = 0x80000001000DCE10;
  v92._countAndFlagsBits = 0xD000000000000021;
  v92._object = 0x80000001000DCDE0;
  v105.value._countAndFlagsBits = 0;
  v105.value._object = 0;
  v48.super.isa = v47;
  v118._countAndFlagsBits = 0;
  v118._object = 0xE000000000000000;
  v49 = sub_1000C5B74(v92, v105, v48, v118, 0xD00000000000004ALL, v79);
  v51 = v50;

  *(inited + 256) = v49;
  *(inited + 264) = v51;
  *(inited + 272) = 5;
  v52 = [v1 mainBundle];
  v80._countAndFlagsBits = 0x80000001000DCE90;
  v93._countAndFlagsBits = 0xD000000000000021;
  v93._object = 0x80000001000DCE60;
  v106.value._countAndFlagsBits = 0;
  v106.value._object = 0;
  v53.super.isa = v52;
  v119._countAndFlagsBits = 0;
  v119._object = 0xE000000000000000;
  v54 = sub_1000C5B74(v93, v106, v53, v119, 0xD00000000000004ALL, v80);
  v56 = v55;

  *(inited + 280) = v54;
  *(inited + 288) = v56;
  *(inited + 296) = 6;
  v57 = [v1 mainBundle];
  v94._countAndFlagsBits = 0xD00000000000001FLL;
  v81._countAndFlagsBits = 0x80000001000DCF00;
  v94._object = 0x80000001000DCEE0;
  v107.value._countAndFlagsBits = 0;
  v107.value._object = 0;
  v58.super.isa = v57;
  v120._countAndFlagsBits = 0;
  v120._object = 0xE000000000000000;
  v59 = sub_1000C5B74(v94, v107, v58, v120, 0xD000000000000048, v81);
  v61 = v60;

  *(inited + 304) = v59;
  *(inited + 312) = v61;
  *(inited + 320) = 13;
  v62 = [v1 mainBundle];
  v82._countAndFlagsBits = 0x80000001000DCF80;
  v95._object = 0x80000001000DCF50;
  v95._countAndFlagsBits = 0xD000000000000020;
  v108.value._countAndFlagsBits = 0;
  v108.value._object = 0;
  v63.super.isa = v62;
  v121._countAndFlagsBits = 0;
  v121._object = 0xE000000000000000;
  v64 = sub_1000C5B74(v95, v108, v63, v121, 0xD000000000000049, v82);
  v66 = v65;

  *(inited + 328) = v64;
  *(inited + 336) = v66;
  v67 = sub_100078E3C(inited);
  swift_setDeallocating();
  sub_10000FEB8(&unk_1001170D0, &qword_1000D1040);
  swift_arrayDestroy();
  type metadata accessor for PeopleViewModel(0);
  sub_1000B00B4(&qword_1001197B0, type metadata accessor for PeopleViewModel, &unk_1000CD1A8);
  sub_1000C6224();
  swift_beginAccess();

  v68 = sub_10003CC40(v67);

  return v68;
}

uint64_t sub_1000AA908(uint64_t a1)
{
  v2 = type metadata accessor for PeopleView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_10000FEB8(qword_100118990, &unk_1000D1890);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = sub_1000C61F4();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_10008EC80(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_1000AF064(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  sub_10000FEB8(&qword_100119A60, &qword_1000D4738);
  sub_10001E490(&qword_100119A68, &qword_100119A60, &qword_1000D4738, &protocol conformance descriptor for HStack<A>);
  return sub_1000C6B24();
}

uint64_t sub_1000AAB04(uint64_t *a1)
{
  type metadata accessor for PeopleViewModel(0);
  sub_1000B00B4(&qword_1001197B0, type metadata accessor for PeopleViewModel, &unk_1000CD1A8);
  sub_1000C6224();
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  sub_10000C218();

  return swift_unknownObjectRelease();
}

uint64_t sub_1000AABF4@<X0>(uint64_t a1@<X8>)
{
  sub_1000C65D4();
  v2 = sub_1000C68C4();
  v4 = v3;
  v6 = v5 & 1;
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5 & 1;
  *(a1 + 40) = v7;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  sub_100050DE0(v2, v3, v5 & 1);

  sub_1000500D8(v2, v4, v6);
}

uint64_t sub_1000AACD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = type metadata accessor for PeopleView(0);
  v24 = *(v3 - 8);
  v4 = *(v24 + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_10000FEB8(qword_100118990, &unk_1000D1890);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - v6;
  v25 = sub_10000FEB8(&qword_1001199E8, &qword_1000D4500);
  v8 = *(v25 - 8);
  __chkstk_darwin(v25);
  v10 = &v24 - v9;
  type metadata accessor for PeopleViewModel(0);
  sub_1000B00B4(&qword_1001197B0, type metadata accessor for PeopleViewModel, &unk_1000CD1A8);
  sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (v27 == 1)
  {
    v11 = sub_1000C61F4();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    sub_10008EC80(a1, &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v12 = (*(v24 + 80) + 16) & ~*(v24 + 80);
    v13 = swift_allocObject();
    sub_1000AF064(&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
    sub_10000FEB8(&qword_100119A70, &qword_1000D4788);
    sub_1000AFDB4();
    sub_1000C6B24();
    v14 = [objc_opt_self() labelColor];
    v15 = sub_1000C6A64();
    KeyPath = swift_getKeyPath();
    v17 = v25;
    v18 = &v10[*(v25 + 36)];
    *v18 = KeyPath;
    v18[1] = v15;
    v19 = v26;
    sub_100020D0C(v10, v26, &qword_1001199E8, &qword_1000D4500);
    v20 = 0;
    v21 = v19;
    v22 = v17;
  }

  else
  {
    v20 = 1;
    v22 = v25;
    v21 = v26;
  }

  return (*(v8 + 56))(v21, v20, 1, v22);
}

uint64_t sub_1000AB08C(uint64_t *a1)
{
  v1 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  type metadata accessor for PeopleViewModel(0);
  sub_1000B00B4(&qword_1001197B0, type metadata accessor for PeopleViewModel, &unk_1000CD1A8);
  v4 = sub_1000C6224();
  swift_beginAccess();
  v5 = *(v4 + 16);

  sub_1000C6F24();
  v6 = sub_1000C6F44();
  (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
  sub_1000C6F14();

  v7 = sub_1000C6F04();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v5;
  sub_1000B8860(0, 0, v3, &unk_1000D47D0, v8);
}

uint64_t sub_1000AB258@<X0>(uint64_t a6@<X8>)
{
  v7 = sub_1000C65C4();
  v24 = 1;
  sub_1000AB30C(v17);
  v8 = v17[0];
  v9 = v17[1];
  v10 = v18;
  v11 = v19;
  v12 = v20;
  v13 = v21;
  v14 = v22;
  LOBYTE(v17[0]) = v18;
  v23 = v21;
  v15 = v24;
  result = sub_1000C65E4();
  *a6 = v7;
  *(a6 + 8) = 0;
  *(a6 + 16) = v15;
  *(a6 + 24) = v8;
  *(a6 + 32) = v9;
  *(a6 + 40) = v10;
  *(a6 + 48) = v11;
  *(a6 + 56) = v12;
  *(a6 + 64) = v13;
  *(a6 + 72) = v14;
  *(a6 + 80) = result;
  *(a6 + 88) = sub_1000AB408;
  *(a6 + 96) = 0;
  return result;
}

uint64_t sub_1000AB30C@<X0>(uint64_t a1@<X8>)
{
  sub_1000C65D4();
  v2 = sub_1000C68C4();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1000C6A84();
  *a1 = v2;
  *(a1 + 8) = v4;
  v6 &= 1u;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v9;
  sub_100050DE0(v2, v4, v6);

  sub_1000500D8(v2, v4, v6);
}

uint64_t sub_1000AB430@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for GlobalPermissionViewModel(0);
  sub_1000B00B4(&qword_100117130, type metadata accessor for GlobalPermissionViewModel, &unk_1000CEDAC);
  sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  result = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  if ((v8 & 1) == 0)
  {
    sub_1000C6224();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    sub_1000383C8();
    result = sub_1000C68D4();
    v5 = v7 & 1;
  }

  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return result;
}

uint64_t sub_1000AB5D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for PeopleView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = sub_10000FEB8(qword_100118990, &unk_1000D1890);
  __chkstk_darwin(v6 - 8);
  v8 = v24 - v7;
  v9 = sub_10000FEB8(&qword_1001199C0, &unk_1000D44E8);
  v10 = *(v9 - 8);
  v27 = v9;
  v28 = v10;
  __chkstk_darwin(v9);
  v26 = v24 - v11;
  sub_1000C61C4();
  v12 = sub_1000C61F4();
  (*(*(v12 - 8) + 56))(v8, 0, 1, v12);
  sub_10008EC80(a1, v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_1000AF064(v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  sub_10000FEB8(&qword_100119A60, &qword_1000D4738);
  sub_10001E490(&qword_100119A68, &qword_100119A60, &qword_1000D4738, &protocol conformance descriptor for HStack<A>);
  sub_1000C6B24();
  sub_1000C65D4();
  v15 = sub_1000C68C4();
  v17 = v16;
  LOBYTE(v8) = v18;
  v25 = v19;
  v20 = *(a1 + 56);
  v33 = *(a1 + 48);
  v34 = v20;
  sub_10000FEB8(&qword_100118A30, &unk_1000D1920);
  sub_1000C6B04();
  v24[1] = v32;
  v31 = a1;
  v30 = a1;
  sub_10000FEB8(&qword_1001195F0, &qword_1000D3320);
  sub_10001E490(&qword_1001199C8, &qword_1001199C0, &unk_1000D44E8, &protocol conformance descriptor for Button<A>);
  sub_10001E490(&qword_1001195E8, &qword_1001195F0, &qword_1000D3320, &protocol conformance descriptor for Button<A>);
  v21 = v27;
  v22 = v26;
  sub_1000C6994();

  sub_1000500D8(v15, v17, v8 & 1);

  return (*(v28 + 8))(v22, v21);
}