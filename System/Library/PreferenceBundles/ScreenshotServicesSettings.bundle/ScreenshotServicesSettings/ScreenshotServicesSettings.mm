id sub_1580(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_15B8()
{
  type metadata accessor for FindClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_10D10 = result;
  return result;
}

uint64_t *sub_160C()
{
  if (qword_10860 != -1)
  {
    swift_once();
  }

  return &qword_10D10;
}

uint64_t sub_1680(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1690(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_16D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_98EC();
  sub_98DC();
  sub_98CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_971C();
  sub_98DC();
  sub_98CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  if (*(a1 + 32))
  {
    v9 = sub_97EC();
  }

  else
  {
    v9 = 0;
  }

  v14[0] = v5;
  v14[1] = v6;
  v15 = v7;
  v13 = v8;
  sub_21D0(v14, v12);
  sub_222C(&v13, v12);
  v10 = v7 & 1;
  sub_1680(v5, v6, v10);

  sub_21C0(v5, v6, v10);

  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v10;
  *(a2 + 48) = v8;
  *(a2 + 56) = 0;
  *(a2 + 64) = 1;
  *(a2 + 72) = v9;
  *(a2 + 80) = 0;
  return result;
}

unint64_t sub_18C4()
{
  result = qword_10398;
  if (!qword_10398)
  {
    sub_19A8(&qword_10390, &qword_9EE8);
    sub_19F0(&qword_103A0, &qword_103A8, &qword_9EF0, &protocol conformance descriptor for HStack<A>);
    sub_19F0(&qword_103B0, &qword_103B8, &qword_9EF8, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10398);
  }

  return result;
}

uint64_t sub_19A8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_19F0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_19A8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A38()
{
  result = qword_103C8;
  if (!qword_103C8)
  {
    sub_96CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_103C8);
  }

  return result;
}

uint64_t sub_1A90@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3 & 1;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t sub_1AD0@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v2 = sub_96CC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1690(&qword_10388, &qword_9EE0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v12 - v8;
  v10 = *(v1 + 32);
  v13[1] = *(v1 + 16);
  v13[2] = v10;
  v13[0] = *v1;
  v14 = *(v1 + 48);
  v12[4] = v13;

  sub_1690(&qword_10390, &qword_9EE8);
  sub_18C4();
  sub_97FC();
  sub_96BC();
  sub_19F0(&qword_103C0, &qword_10388, &qword_9EE0, &protocol conformance descriptor for Button<A>);
  sub_1A38();
  sub_97BC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1D18@<X0>(uint64_t *a1@<X8>)
{
  sub_98EC();
  sub_98DC();
  sub_98CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_972C();
  v2 = sub_975C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  a1[3] = &type metadata for CheckmarkListItem;
  a1[4] = sub_2120(v2, v3, v5);
  v9 = swift_allocObject();
  *a1 = v9;

  *(v9 + 16) = v2;
  *(v9 + 24) = v4;
  *(v9 + 32) = v6 & 1;
  *(v9 + 40) = v8;
  *(v9 + 48) = 1;
  *(v9 + 56) = sub_1E64;
  *(v9 + 64) = 0;
  return result;
}

uint64_t sub_1E64()
{
  sub_1690(&qword_103D8, &qword_A0D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_9ED0;
  *(v0 + 56) = &type metadata for String;
  *(v0 + 32) = 0x6E6F69746361;
  *(v0 + 40) = 0xE600000000000000;
  sub_995C();
}

__n128 sub_1FA0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1FBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2004(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_2070()
{
  sub_19A8(&qword_10388, &qword_9EE0);
  sub_96CC();
  sub_19F0(&qword_103C0, &qword_10388, &qword_9EE0, &protocol conformance descriptor for Button<A>);
  sub_1A38();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_2120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_103D0;
  if (!qword_103D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_103D0);
  }

  return result;
}

uint64_t sub_2174()
{
  sub_21C0(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_21C0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_222C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1690(&qword_103E0, qword_A0D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C0@<X0>(char *a1@<X8>)
{
  sub_98EC();
  sub_98DC();
  sub_98CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_49C8(a1);
}

unint64_t sub_235C()
{
  result = qword_103F0;
  if (!qword_103F0)
  {
    type metadata accessor for ScreenshotServicesSettingsList(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_103F0);
  }

  return result;
}

uint64_t sub_23B4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_967C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  sub_98EC();
  v2[7] = sub_98DC();
  v5 = sub_98CC();

  return _swift_task_switch(sub_24A8, v5, v4);
}

uint64_t sub_24A8()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];

  sub_985C();
  sub_986C();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

unint64_t sub_2554()
{
  result = qword_103F8;
  if (!qword_103F8)
  {
    sub_19A8(&qword_103E8, &qword_A0F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_103F8);
  }

  return result;
}

unint64_t sub_25BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10400;
  if (!qword_10400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10400);
  }

  return result;
}

uint64_t sub_262C()
{
  v0 = sub_1690(&qword_103E8, &qword_A0F0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  type metadata accessor for ScreenshotServicesSettingsList(0);
  sub_235C();
  sub_987C();
  sub_2554();
  sub_984C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_2798()
{
  sub_19A8(&qword_103E8, &qword_A0F0);
  sub_2554();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2820(uint64_t a1)
{
  v2 = sub_96AC();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_96EC();
}

uint64_t sub_2914@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v2 = sub_950C();
  v41 = *(v2 - 8);
  v42 = v2;
  __chkstk_darwin(v2);
  v40 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_983C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1690(&qword_104A8, &qword_A208);
  v9 = *(v8 - 8);
  v34 = v8;
  v35 = v9;
  __chkstk_darwin(v8);
  v11 = &v32 - v10;
  v12 = sub_1690(&qword_104B0, &qword_A210);
  v13 = *(v12 - 8);
  v36 = v12;
  v37 = v13;
  __chkstk_darwin(v12);
  v15 = &v32 - v14;
  v16 = sub_1690(&qword_104B8, &qword_A218);
  v17 = *(v16 - 8);
  v38 = v16;
  v39 = v17;
  __chkstk_darwin(v16);
  v33 = &v32 - v18;
  v44 = v1;
  sub_1690(&qword_104C0, &qword_A220);
  sub_19F0(&qword_104C8, &qword_104C0, &qword_A220, &protocol conformance descriptor for TupleView<A>);
  sub_974C();
  *v7 = 0xD000000000000022;
  v7[1] = 0x800000000000A810;
  (*(v5 + 104))(v7, enum case for SettingsEventImage.graphicIcon(_:), v4);
  v19 = *(type metadata accessor for ScreenshotServicesSettingsList(0) + 24);
  v20 = sub_19F0(&qword_104D0, &qword_104A8, &qword_A208, &protocol conformance descriptor for List<A, B>);
  v21 = v34;
  sub_978C();
  (*(v5 + 8))(v7, v4);
  (*(v35 + 8))(v11, v21);
  v45 = v21;
  v46 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = v33;
  v24 = v36;
  sub_977C();
  v25 = v24;
  (*(v37 + 8))(v15, v24);
  (*(v41 + 16))(v40, v1 + v19, v42);
  v26 = sub_976C();
  v28 = v27;
  LOBYTE(v21) = v29;
  v45 = v25;
  v46 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v30 = v38;
  sub_97DC();
  sub_21C0(v26, v28, v21 & 1);

  return (*(v39 + 8))(v23, v30);
}

uint64_t sub_2E44@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v107 = a2;
  v109 = sub_1690(&qword_105A0, &qword_A3A0);
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v100 = &v97 - v3;
  v4 = sub_1690(&qword_105A8, &qword_A3A8);
  v5 = __chkstk_darwin(v4 - 8);
  v106 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v110 = &v97 - v7;
  v8 = sub_1690(&qword_105B0, &qword_A3B0);
  v9 = __chkstk_darwin(v8 - 8);
  v105 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v118 = &v97 - v12;
  v13 = __chkstk_darwin(v11);
  v121 = &v97 - v14;
  __chkstk_darwin(v13);
  v16 = &v97 - v15;
  v17 = sub_1690(&qword_105B8, &qword_A3B8);
  v120 = *(v17 - 8);
  v18 = __chkstk_darwin(v17);
  v116 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v99 = &v97 - v21;
  v22 = __chkstk_darwin(v20);
  v98 = &v97 - v23;
  __chkstk_darwin(v22);
  v25 = &v97 - v24;
  sub_98EC();
  v104 = sub_98DC();
  sub_98CC();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  __chkstk_darwin(isCurrentExecutor);
  sub_3E90(&v126);
  v27 = sub_1690(&qword_105C0, &qword_A3C0);
  v28 = sub_19F0(&qword_105C8, &qword_105C0, &qword_A3C0, &protocol conformance descriptor for Toggle<A>);
  v115 = v25;
  v102 = v27;
  v101 = v28;
  sub_982C();
  v29 = (a1 + *(type metadata accessor for ScreenshotServicesSettingsList(0) + 20));
  v31 = *v29;
  v30 = v29[1];
  v32 = *(v29 + 16);
  v33 = type metadata accessor for ScreenshotServicesSettingsViewModel(0);
  v34 = sub_5974(&qword_10558, type metadata accessor for ScreenshotServicesSettingsViewModel, &unk_A668);
  v114 = v30;
  v113 = v32;
  v111 = v34;
  v112 = v33;
  v35 = *sub_964C();
  LOBYTE(v33) = (*(v35 + 328))();

  v117 = v17;
  v119 = v16;
  v103 = a1;
  if (v33)
  {
    v37 = v31;
    __chkstk_darwin(v36);
    sub_98DC();
    sub_98CC();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_972C();
    v38 = *sub_160C();
    v39 = sub_975C();
    v41 = v40;
    v43 = v42;
    v45 = v44;

    v126 = v39;
    v127 = v41;
    v128 = v43 & 1;
    v129 = v45;
    v46 = v98;
    sub_982C();
    v16 = v119;
    v47 = v120;
    v17 = v117;
    (*(v120 + 32))(v119, v46, v117);
    v48 = 0;
    v31 = v37;
  }

  else
  {
    v48 = 1;
    v47 = v120;
  }

  v49 = *(v47 + 56);
  v50 = 1;
  v49(v16, v48, 1, v17);
  v51 = *sub_964C();
  v52 = (*(v51 + 376))();

  if (v52)
  {
    v98 = v31;
    v97 = &v97;
    __chkstk_darwin(v53);
    sub_98DC();
    sub_98CC();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_972C();
    v54 = *sub_160C();
    v55 = sub_975C();
    v57 = v56;
    v59 = v58;
    v61 = v60;

    v126 = v55;
    v127 = v57;
    v128 = v59 & 1;
    v129 = v61;
    v62 = v99;
    sub_982C();
    v17 = v117;
    (*(v120 + 32))(v121, v62, v117);
    v50 = 0;
  }

  v63 = 1;
  v49(v121, v50, 1, v17);
  v64 = *sub_964C();
  v65 = (*(v64 + 424))();

  if (v65)
  {
    v114 = &v97;
    __chkstk_darwin(v66);
    sub_98DC();
    sub_98CC();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_972C();
    v67 = sub_160C();
    v68 = *v67;
    v69 = sub_975C();
    v71 = v70;
    v73 = v72;
    v75 = v74;

    v126 = v69;
    v127 = v71;
    v128 = v73 & 1;
    v129 = v75;
    sub_98DC();
    sub_98CC();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_972C();
    v76 = *v67;
    v77 = sub_975C();
    v79 = v78;
    v81 = v80;
    v83 = v82;

    v122 = v77;
    v123 = v79;
    v124 = v81 & 1;
    v125 = v83;
    sub_1690(&qword_105D8, &qword_A3D0);
    sub_19F0(&qword_105E0, &qword_105D8, &qword_A3D0, &protocol conformance descriptor for TupleView<A>);
    v84 = v100;
    sub_981C();
    (*(v108 + 32))(v110, v84, v109);
    v63 = 0;
  }

  v85 = v110;
  (*(v108 + 56))(v110, v63, 1, v109);
  v86 = v120;
  v87 = *(v120 + 16);
  v88 = v116;
  v89 = v117;
  v87(v116, v115, v117);
  sub_6224(v119, v118, &qword_105B0, &qword_A3B0);
  v90 = v105;
  sub_6224(v121, v105, &qword_105B0, &qword_A3B0);
  v91 = v106;
  sub_6224(v85, v106, &qword_105A8, &qword_A3A8);
  v92 = v107;
  v87(v107, v88, v89);
  v93 = sub_1690(&qword_105D0, &qword_A3C8);
  v94 = v118;
  sub_6224(v118, &v92[v93[12]], &qword_105B0, &qword_A3B0);
  sub_6224(v90, &v92[v93[16]], &qword_105B0, &qword_A3B0);
  sub_6224(v91, &v92[v93[20]], &qword_105A8, &qword_A3A8);
  sub_5A44(v85, &qword_105A8, &qword_A3A8);
  sub_5A44(v121, &qword_105B0, &qword_A3B0);
  sub_5A44(v119, &qword_105B0, &qword_A3B0);
  v95 = *(v86 + 8);
  v95(v115, v89);
  sub_5A44(v91, &qword_105A8, &qword_A3A8);
  sub_5A44(v90, &qword_105B0, &qword_A3B0);
  sub_5A44(v94, &qword_105B0, &qword_A3B0);
  v95(v116, v89);
}

uint64_t type metadata accessor for ScreenshotServicesSettingsList(uint64_t a1)
{
  result = qword_10B80;
  if (!qword_10B80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3CD0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_3D68@<X0>(uint64_t a1@<X8>)
{
  sub_98EC();
  sub_98DC();
  sub_98CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_972C();
  v2 = *sub_160C();
  v3 = sub_975C();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t sub_3E90@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_96AC();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v19[-v7];
  sub_98EC();
  sub_98DC();
  sub_98CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_6024(v8);
  (*(v3 + 104))(v6, enum case for LayoutDirection.rightToLeft(_:), v2);
  sub_969C();
  v9 = *(v3 + 8);
  v9(v6, v2);
  v9(v8, v2);
  sub_972C();
  v10 = *sub_160C();
  v11 = sub_975C();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  *a1 = v11;
  *(a1 + 8) = v13;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v17;
  return result;
}

uint64_t sub_40F4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 280))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_419C@<X0>(uint64_t a1@<X8>)
{
  sub_98EC();
  sub_98DC();
  sub_98CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_972C();
  v2 = *sub_160C();
  v3 = sub_975C();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t sub_42CC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 232))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_4364@<X0>(uint64_t a1@<X8>)
{
  sub_98EC();
  sub_98DC();
  sub_98CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_972C();
  v2 = *sub_160C();
  v3 = sub_975C();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t sub_448C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ScreenshotServicesSettingsList(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v56 = v6;
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_98EC();
  v55 = sub_98DC();
  sub_98CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_972C();
  v54 = sub_160C();
  v8 = *v54;
  v49 = sub_975C();
  v48 = v9;
  v11 = v10;
  v47 = v12;
  v13 = (a1 + *(v4 + 20));
  v14 = v13[1];
  v53 = *v13;
  v52 = v14;
  v51 = *(v13 + 16);
  v50 = type metadata accessor for ScreenshotServicesSettingsViewModel(0);
  sub_5974(&qword_10558, type metadata accessor for ScreenshotServicesSettingsViewModel, &unk_A668);
  v15 = sub_964C();
  v16 = (*(*v15 + 184))(v15);

  sub_5C78(a1, v7);
  v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v18 = swift_allocObject();
  sub_5CE8(v7, v18 + v17);
  sub_1A90(v49, v48, v11 & 1, v47, v16 & 1, sub_5D4C, v18, v59);
  sub_972C();
  v49 = a1;
  v19 = *v54;
  v20 = sub_975C();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = sub_964C();
  v28 = (*(*v27 + 184))(v27);

  sub_5C78(v49, v7);
  v29 = swift_allocObject();
  sub_5CE8(v7, v29 + v17);
  sub_1A90(v20, v22, v24 & 1, v26, (v28 & 1) == 0, sub_5F08, v29, v65);
  v30 = v59[0];
  v31 = v59[1];
  v32 = v61;
  v33 = v63;
  v34 = v64;
  v35 = v65[0];
  v36 = v65[1];
  v37 = v67;
  v38 = v69;
  v39 = v70;
  v40 = v66;
  v41 = v60 & 1;
  v58 = v60 & 1;
  v42 = v62 & 1;
  LOBYTE(v26) = v66 & 1;
  v57 = v66 & 1;
  v43 = v68 & 1;
  *a2 = v59[0];
  *(a2 + 8) = v31;
  *(a2 + 16) = v41;
  *(a2 + 24) = v32;
  *(a2 + 32) = v42;
  *(a2 + 40) = v33;
  *(a2 + 48) = v34;
  *(a2 + 56) = v35;
  *(a2 + 64) = v36;
  *(a2 + 72) = v40 & 1;
  *(a2 + 80) = v37;
  *(a2 + 88) = v43;
  *(a2 + 96) = v38;
  *(a2 + 104) = v39;
  v44 = v30;
  sub_1680(v30, v31, v41);

  sub_1680(v35, v36, v26);

  sub_21C0(v35, v36, v26);

  sub_21C0(v44, v31, v41);
}

uint64_t sub_49C8@<X0>(char *a1@<X8>)
{
  v2 = sub_1690(&qword_104D8, &qword_A228);
  __chkstk_darwin(v2 - 8);
  v57 = v49 - v3;
  v69 = sub_94FC();
  v71 = *(v69 - 8);
  __chkstk_darwin(v69);
  v5 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_956C();
  v6 = *(v56 - 8);
  v7 = __chkstk_darwin(v56);
  v9 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v49 - v10;
  v12 = sub_989C();
  v55 = v12;
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v49 - v17;
  *a1 = swift_getKeyPath();
  sub_1690(&qword_104A0, &qword_A200);
  v70 = a1;
  swift_storeEnumTagMultiPayload();
  v19 = type metadata accessor for ScreenshotServicesSettingsList(0);
  v20 = &a1[*(v19 + 20)];
  *v20 = sub_28E8;
  *(v20 + 1) = 0;
  v20[16] = 0;
  v50 = v19;
  v68 = *(v19 + 24);
  v51 = "c-icon.screenshots";
  sub_988C();
  v63 = sub_160C();
  v21 = *v63;
  sub_955C();
  v65 = *(v13 + 16);
  v66 = v13 + 16;
  v65(v16, v18, v12);
  v22 = *(v6 + 16);
  v23 = v56;
  v64 = v6 + 16;
  v62 = v22;
  v22(v9, v11, v56);
  v24 = [v21 bundleURL];
  sub_952C();

  v25 = *(v71 + 104);
  v61 = enum case for LocalizedStringResource.BundleDescription.atURL(_:);
  v71 += 104;
  v60 = v25;
  v25(v5);
  v52 = v16;
  v53 = v9;
  v26 = v57;
  v54 = v5;
  sub_951C();

  v27 = *(v6 + 8);
  v28 = v11;
  v29 = v11;
  v30 = v23;
  v68 = v6 + 8;
  v59 = v27;
  v27(v29, v23);
  v31 = *(v13 + 8);
  v32 = v18;
  v33 = v55;
  v67 = v13 + 8;
  v58 = v31;
  (v31)(v18);
  sub_953C();
  v34 = sub_954C();
  v35 = *(v34 - 8);
  result = (*(v35 + 48))(v26, 1, v34);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v37 = v50;
    (*(v35 + 32))(&v70[*(v50 + 28)], v26, v34);
    v57 = *(v37 + 32);
    sub_1690(&qword_104E0, &qword_A230);
    v49[1] = *(*(sub_950C() - 8) + 72);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_A1C0;
    v38 = v32;
    sub_988C();
    v39 = *v63;
    v40 = v28;
    sub_955C();
    v41 = v52;
    v42 = v32;
    v43 = v33;
    v65(v52, v42, v33);
    v44 = v53;
    v62(v53, v28, v30);
    v45 = [v39 bundleURL];
    v46 = v54;
    sub_952C();

    v60(v46, v61, v69);
    sub_951C();

    v59(v40, v30);
    v58(v38, v43);
    sub_988C();
    v47 = *v63;
    sub_955C();
    v65(v41, v38, v43);
    v62(v44, v40, v30);
    v48 = [v47 bundleURL];
    sub_952C();

    v60(v46, v61, v69);
    sub_951C();

    v59(v40, v30);
    result = (v58)(v38, v43);
    *&v57[v70] = v50;
  }

  return result;
}

uint64_t sub_51CC@<X0>(uint64_t *a1@<X8>)
{
  sub_98EC();
  sub_98DC();
  sub_98CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a1[3] = type metadata accessor for ScreenshotServicesSettingsList(0);
  a1[4] = sub_5974(&qword_103F0, type metadata accessor for ScreenshotServicesSettingsList, &unk_A238);
  v2 = sub_59BC(a1);
  sub_49C8(v2);
}

uint64_t sub_5358(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1690(&qword_104E8, &unk_A2D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_950C();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_954C();
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

uint64_t sub_54CC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1690(&qword_104E8, &unk_A2D0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_950C();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      result = sub_954C();
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

void sub_5628(uint64_t a1)
{
  sub_57E8(319, &qword_10548, &type metadata accessor for LayoutDirection, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_5754(319);
    if (v2 <= 0x3F)
    {
      sub_950C();
      if (v3 <= 0x3F)
      {
        sub_954C();
        if (v4 <= 0x3F)
        {
          sub_57E8(319, &unk_10560, &type metadata accessor for LocalizedStringResource, &type metadata accessor for Array);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_5754(uint64_t a1)
{
  if (!qword_10550)
  {
    type metadata accessor for ScreenshotServicesSettingsViewModel(255);
    sub_5974(&qword_10558, type metadata accessor for ScreenshotServicesSettingsViewModel, &unk_A668);
    v1 = sub_966C();
    if (!v2)
    {
      atomic_store(v1, &qword_10550);
    }
  }
}

void sub_57E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_585C()
{
  sub_19A8(&qword_104B8, &qword_A218);
  sub_19A8(&qword_104B0, &qword_A210);
  sub_19A8(&qword_104A8, &qword_A208);
  sub_19F0(&qword_104D0, &qword_104A8, &qword_A208, &protocol conformance descriptor for List<A, B>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_5974(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *sub_59BC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_5A44(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1690(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_5AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_98EC();
  sub_98DC();
  sub_98CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for ScreenshotServicesSettingsList(0);
  type metadata accessor for ScreenshotServicesSettingsViewModel(0);
  sub_5974(&qword_10558, type metadata accessor for ScreenshotServicesSettingsViewModel, &unk_A668);
  sub_965C();
  swift_getKeyPath();
  sub_968C();

  sub_980C();
}

uint64_t sub_5C78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScreenshotServicesSettingsList(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5CE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScreenshotServicesSettingsList(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_5D54()
{
  v1 = type metadata accessor for ScreenshotServicesSettingsList(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_1690(&qword_104A0, &qword_A200);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_96AC();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  sub_5CE0(*(v5 + v1[5]), *(v5 + v1[5] + 8));
  v7 = v1[6];
  v8 = sub_950C();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  v9 = v1[7];
  v10 = sub_954C();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_5F10(uint64_t a1)
{
  type metadata accessor for ScreenshotServicesSettingsList(0);
  type metadata accessor for ScreenshotServicesSettingsViewModel(0);
  sub_5974(&qword_10558, type metadata accessor for ScreenshotServicesSettingsViewModel, &unk_A668);
  v2 = sub_964C();
  (*(*v2 + 192))(a1);
}

uint64_t sub_6024@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_970C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1690(&qword_104A0, &qword_A200);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_6224(v2, &v14 - v9, &qword_104A0, &qword_A200);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_96AC();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_991C();
    v13 = sub_973C();
    sub_959C();

    sub_96FC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_6224(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1690(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_6290()
{
  v0 = sub_95CC();
  sub_8FF8(v0, qword_10BB8);
  sub_8FC0(v0, qword_10BB8);
  return sub_95BC();
}

void sub_631C(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_961C();

  swift_getKeyPath();
  swift_getKeyPath();

  v2 = sub_962C();
  v3 = *(*v1 + 136);
  if (v4 != ((v3)(v2) & 1))
  {
    v3();
    _SSEnablePIPExperience();
    sub_85EC();
  }
}

void (*sub_6428(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_961C();

  *(a1 + 8) = *(a1 + 9);
  return sub_64BC;
}

uint64_t (*sub_64FC(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_1690(&qword_105F0, &qword_A4B0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC26ScreenshotServicesSettings35ScreenshotServicesSettingsViewModel__fullScreenPreviewEnabled[0];
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_1690(&qword_105E8, &qword_A4A8);
  sub_95FC();
  swift_endAccess();
  return sub_94F8;
}

uint64_t sub_6680@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result & 1;
  return result;
}

void sub_6718(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_961C();

  swift_getKeyPath();
  swift_getKeyPath();

  v2 = sub_962C();
  v3 = *(*v1 + 184);
  if (v4 != ((v3)(v2) & 1))
  {
    v3();
    _SSEnableHDRCapture();
    sub_85EC();
  }
}

void (*sub_6820(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_961C();

  *(a1 + 8) = *(a1 + 9);
  return sub_68B4;
}

uint64_t (*sub_68F4(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_1690(&qword_105F0, &qword_A4B0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC26ScreenshotServicesSettings35ScreenshotServicesSettingsViewModel__hdrEnabled[0];
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_1690(&qword_105E8, &qword_A4A8);
  sub_95FC();
  swift_endAccess();
  return sub_6A64;
}

void sub_6A7C(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_961C();

  swift_getKeyPath();
  swift_getKeyPath();

  v2 = sub_962C();
  v3 = *(*v1 + 232);
  if (v4 != ((v3)(v2) & 1))
  {
    v3();
    _SSEnableCarPlayScreenshots();
    sub_85EC();
  }
}

void (*sub_6B84(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_961C();

  *(a1 + 8) = *(a1 + 9);
  return sub_6C18;
}

uint64_t (*sub_6C58(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_1690(&qword_105F0, &qword_A4B0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC26ScreenshotServicesSettings35ScreenshotServicesSettingsViewModel__carPlayScreenshotsEnabled[0];
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_1690(&qword_105E8, &qword_A4A8);
  sub_95FC();
  swift_endAccess();
  return sub_94F8;
}

void sub_6DDC(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_961C();

  swift_getKeyPath();
  swift_getKeyPath();

  v2 = sub_962C();
  v3 = *(*v1 + 280);
  if (v4 != ((v3)(v2) & 1))
  {
    v3();
    _SSEnableVisualLookUpInScreenshots();
    sub_85EC();
  }
}

void (*sub_6EF8(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_961C();

  *(a1 + 8) = *(a1 + 9);
  return sub_6F8C;
}

uint64_t (*sub_6FCC(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_1690(&qword_105F0, &qword_A4B0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC26ScreenshotServicesSettings35ScreenshotServicesSettingsViewModel__visualLookUpEnabled;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_1690(&qword_105E8, &qword_A4A8);
  sub_95FC();
  swift_endAccess();
  return sub_94F8;
}

void sub_713C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_960C();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_960C();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t sub_72B8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 328))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_7364@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 376))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_7410(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_961C();

  return v3;
}

uint64_t sub_747C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 424))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_74E8(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_962C();
}

uint64_t sub_756C(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_962C();
}

uint64_t sub_75E4(void *a1)
{
  swift_beginAccess();
  sub_1690(&qword_105E8, &qword_A4A8);
  sub_95FC();
  return swift_endAccess();
}

uint64_t sub_7660(uint64_t a1, void *a2)
{
  v3 = sub_1690(&qword_105F0, &qword_A4B0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  (*(v4 + 16))(&v7 - v5, a1, v3);
  swift_beginAccess();
  sub_1690(&qword_105E8, &qword_A4A8);
  sub_960C();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

uint64_t sub_7798()
{
  v0 = swift_allocObject();
  sub_77D0();
  return v0;
}

char *sub_77D0()
{
  v1 = sub_1690(&qword_105E8, &qword_A4A8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18[-v3];
  v5 = OBJC_IVAR____TtC26ScreenshotServicesSettings35ScreenshotServicesSettingsViewModel__fullScreenPreviewEnabled;
  v18[15] = 0;
  sub_95EC();
  v6 = *(v2 + 32);
  v6(&v0[v5], v4, v1);
  v7 = OBJC_IVAR____TtC26ScreenshotServicesSettings35ScreenshotServicesSettingsViewModel__hdrEnabled;
  v18[14] = 0;
  sub_95EC();
  v6(&v0[v7], v4, v1);
  v8 = OBJC_IVAR____TtC26ScreenshotServicesSettings35ScreenshotServicesSettingsViewModel__carPlayScreenshotsEnabled;
  v18[13] = 0;
  sub_95EC();
  v6(&v0[v8], v4, v1);
  v9 = OBJC_IVAR____TtC26ScreenshotServicesSettings35ScreenshotServicesSettingsViewModel__visualLookUpEnabled;
  v18[12] = 0;
  sub_95EC();
  v6(&v0[v9], v4, v1);
  v10 = OBJC_IVAR____TtC26ScreenshotServicesSettings35ScreenshotServicesSettingsViewModel__viSupported;
  v18[11] = 0;
  sub_95EC();
  v6(&v0[v10], v4, v1);
  v11 = OBJC_IVAR____TtC26ScreenshotServicesSettings35ScreenshotServicesSettingsViewModel__carPlaySupported;
  v18[10] = 0;
  sub_95EC();
  v6(&v0[v11], v4, v1);
  v12 = OBJC_IVAR____TtC26ScreenshotServicesSettings35ScreenshotServicesSettingsViewModel__hdrCaptureSupported;
  v18[9] = 0;
  sub_95EC();
  v6(&v0[v12], v4, v1);
  sub_85EC();
  v13 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v13, v0, sub_7E9C, _SSPreferencesDidChangeRemoteNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v14 = objc_opt_self();
  v15 = [v14 defaultCenter];
  [v15 addObserver:v0 selector:"handleScreensChanged:" name:UIScreenDidConnectNotification object:0];

  v16 = [v14 defaultCenter];
  [v16 addObserver:v0 selector:"handleScreensChanged:" name:UIScreenDidDisconnectNotification object:0];

  return v0;
}

uint64_t sub_7AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_98EC();
  *(v4 + 24) = sub_98DC();
  v6 = sub_98CC();

  return _swift_task_switch(sub_7B78, v6, v5);
}

uint64_t sub_7B78()
{

  sub_85CC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_7BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1690(&unk_10850, &qword_A6C8);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_9270(a3, v25 - v10);
  v12 = sub_990C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_92E0(v11);
  }

  else
  {
    sub_98FC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_98CC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_98AC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_92E0(a3);

      return v23;
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

  sub_92E0(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

char *sub_7EA4()
{
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v1, v0);

  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver:v0];

  v3 = OBJC_IVAR____TtC26ScreenshotServicesSettings35ScreenshotServicesSettingsViewModel__fullScreenPreviewEnabled[0];
  v4 = sub_1690(&qword_105E8, &qword_A4A8);
  v5 = *(*(v4 - 8) + 8);
  v5(&v0[v3], v4);
  v5(&v0[OBJC_IVAR____TtC26ScreenshotServicesSettings35ScreenshotServicesSettingsViewModel__hdrEnabled[0]], v4);
  v5(&v0[OBJC_IVAR____TtC26ScreenshotServicesSettings35ScreenshotServicesSettingsViewModel__carPlayScreenshotsEnabled[0]], v4);
  v5(&v0[OBJC_IVAR____TtC26ScreenshotServicesSettings35ScreenshotServicesSettingsViewModel__visualLookUpEnabled], v4);
  v5(&v0[OBJC_IVAR____TtC26ScreenshotServicesSettings35ScreenshotServicesSettingsViewModel__viSupported[0]], v4);
  v5(&v0[OBJC_IVAR____TtC26ScreenshotServicesSettings35ScreenshotServicesSettingsViewModel__carPlaySupported[0]], v4);
  v5(&v0[OBJC_IVAR____TtC26ScreenshotServicesSettings35ScreenshotServicesSettingsViewModel__hdrCaptureSupported], v4);
  return v0;
}

uint64_t sub_8020()
{
  sub_7EA4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void sub_8190()
{
  _SSHDRCaptureSupported();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_962C();
  v1 = _SSHDRCaptureEnabled();
  (*(*v0 + 192))(v1);
  v2 = &FindClass;
  if (qword_10BB0 != -1)
  {
    swift_once();
  }

  v25 = sub_95CC();
  sub_8FC0(v25, qword_10BB8);

  v3 = sub_95AC();
  v4 = sub_992C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109376;
    *(v5 + 4) = (*(*v0 + 424))() & 1;
    *(v5 + 8) = 1024;
    *(v5 + 10) = (*(*v0 + 184))() & 1;

    _os_log_impl(&dword_0, v3, v4, "Update hdr enabled. Supported: %{BOOL}d, enabled: %{BOOL}d", v5, 0xEu);
  }

  else
  {
  }

  v6 = objc_opt_self();
  v7 = [v6 mainScreen];
  v8 = [v6 screens];
  sub_905C();
  v9 = sub_98BC();

  if (!(v9 >> 62))
  {
    v10 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
    if (v10)
    {
      goto LABEL_8;
    }

LABEL_20:

    return;
  }

  v10 = sub_994C();
  if (!v10)
  {
    goto LABEL_20;
  }

LABEL_8:
  if (v10 >= 1)
  {
    v11 = 0;
    v24 = v9 & 0xC000000000000001;
    do
    {
      if (v24)
      {
        v13 = sub_993C();
      }

      else
      {
        v13 = *(v9 + 8 * v11 + 32);
      }

      v14 = v13;
      if (v2[41].base_prots != -1)
      {
        swift_once();
      }

      sub_8FC0(v25, qword_10BB8);
      v15 = v14;
      v16 = v7;
      v12 = sub_95AC();
      v17 = sub_992C();
      if (os_log_type_enabled(v12, v17))
      {
        v18 = v10;
        v19 = v9;
        v20 = v7;
        v21 = v2;
        v22 = swift_slowAlloc();
        *v22 = 134218496;
        *(v22 + 4) = v11;
        *(v22 + 12) = 1024;
        *(v22 + 14) = v15 == v16;

        *(v22 + 18) = 2048;
        [v15 potentialEDRHeadroom];
        *(v22 + 20) = v23;
        _os_log_impl(&dword_0, v12, v17, "Screen %ld (is main: %{BOOL}d) potential headroom: %f", v22, 0x1Cu);
        v2 = v21;
        v7 = v20;
        v9 = v19;
        v10 = v18;
      }

      else
      {

        v12 = v15;
      }

      ++v11;
    }

    while (v10 != v11);
    goto LABEL_20;
  }

  __break(1u);
}

void sub_85EC()
{
  sub_8190();
  v1 = _SSPIPExperienceEnabled();
  (*(*v0 + 144))(v1 ^ 1u);
  v2 = _SSCarPlayScreenshotsEnabled();
  (*(*v0 + 240))(v2);
  v3 = _SSVisualLookUpInScreenshotsEnabled();
  (*(*v0 + 288))(v3);
  _SSVisualIntelligenceV2EnabledIgnoringOrientation();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_962C();
  _SSCarPlayEnabled();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_962C();
  if (qword_10BB0 != -1)
  {
    swift_once();
  }

  v4 = sub_95CC();
  sub_8FC0(v4, qword_10BB8);

  v5 = sub_95AC();
  v6 = sub_992C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109888;
    *(v7 + 4) = (*(*v0 + 136))() & 1;
    *(v7 + 8) = 1024;
    *(v7 + 10) = (*(*v0 + 184))() & 1;
    *(v7 + 14) = 1024;
    *(v7 + 16) = (*(*v0 + 280))() & 1;
    *(v7 + 20) = 1024;
    *(v7 + 22) = (*(*v0 + 328))() & 1;

    _os_log_impl(&dword_0, v5, v6, "update settings, fullScreenPreviewEnabled: %{BOOL}d, hdrEnabled: %{BOOL}d, visualLookUpEnabled: %{BOOL}d, viSupported: %{BOOL}d", v7, 0x1Au);
  }

  else
  {
  }
}

uint64_t sub_8910@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ScreenshotServicesSettingsViewModel(0);
  result = sub_95DC();
  *a2 = result;
  return result;
}

uint64_t sub_8950(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_8A48;

  return v6(a1);
}

uint64_t sub_8A48()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_8B40(uint64_t a1)
{
  v2 = sub_1690(&unk_10850, &qword_A6C8);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  sub_98EC();
  sub_98DC();
  sub_98CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    type metadata accessor for ScreenshotServicesSettingsViewModel(0);
    swift_unknownObjectRetain();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;
      v7 = sub_990C();
      (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
      swift_unknownObjectRetain();
      v8 = sub_98DC();
      v9 = swift_allocObject();
      v9[2] = v8;
      v9[3] = &protocol witness table for MainActor;
      v9[4] = v6;
      sub_7BDC(0, 0, v4, &unk_A6D8, v9);

      return swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  else
  {
  }
}

uint64_t sub_8D6C(const char *a1, uint64_t (*a2)(void))
{
  if (qword_10BB0 != -1)
  {
    swift_once();
  }

  v3 = sub_95CC();
  sub_8FC0(v3, qword_10BB8);
  v4 = sub_95AC();
  v5 = sub_992C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, v4, v5, a1, v6, 2u);
  }

  return a2();
}

uint64_t type metadata accessor for ScreenshotServicesSettingsViewModel(uint64_t a1)
{
  result = qword_10D00;
  if (!qword_10D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_8ED4(uint64_t a1)
{
  sub_8F70();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_8F70()
{
  if (!qword_10620)
  {
    v0 = sub_963C();
    if (!v1)
    {
      atomic_store(v0, &qword_10620);
    }
  }
}

uint64_t sub_8FC0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_8FF8(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_905C()
{
  result = qword_10848;
  if (!qword_10848)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10848);
  }

  return result;
}

uint64_t sub_90A8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_90E8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_917C;

  return sub_7AE0(v3, v4, v5, v2);
}

uint64_t sub_917C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_9270(uint64_t a1, uint64_t a2)
{
  v4 = sub_1690(&unk_10850, &qword_A6C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_92E0(uint64_t a1)
{
  v2 = sub_1690(&unk_10850, &qword_A6C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_9348()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_9380(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_94F4;

  return sub_8950(a1, v4);
}

uint64_t sub_9438(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_917C;

  return sub_8950(a1, v4);
}