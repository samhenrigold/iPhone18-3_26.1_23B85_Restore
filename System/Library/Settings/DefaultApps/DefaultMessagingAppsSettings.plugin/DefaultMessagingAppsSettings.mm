id sub_1E78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextingAppChangeConfirmationSheet.Coordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_1EC0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  objc_allocWithZone(type metadata accessor for TextingAppChangeConfirmationViewController());
  sub_2868(v1, v2, v3, v4);

  v9 = sub_6C08(v1, v2, v3, v4, v5, v6, v8, v7);
  sub_2820(&qword_20E78, &qword_155F0);
  sub_1456C();
  *&v9[OBJC_IVAR____TtC28DefaultMessagingAppsSettings42TextingAppChangeConfirmationViewController_confirmationDelegate + 8] = &off_1CEF8;
  swift_unknownObjectWeakAssign();

  return v9;
}

void sub_1FC8(uint64_t a1)
{
  sub_2820(&qword_20E78, &qword_155F0);
  sub_1456C();
  *(a1 + OBJC_IVAR____TtC28DefaultMessagingAppsSettings42TextingAppChangeConfirmationViewController_confirmationDelegate + 8) = &off_1CEF8;
  swift_unknownObjectWeakAssign();
}

void *sub_2044@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 64);
  v3 = *(v1 + 72);
  v5 = type metadata accessor for TextingAppChangeConfirmationSheet.Coordinator();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV28DefaultMessagingAppsSettings33TextingAppChangeConfirmationSheet11Coordinator_completion];
  *v7 = v4;
  *(v7 + 1) = v3;
  v9.receiver = v6;
  v9.super_class = v5;

  result = objc_msgSendSuper2(&v9, "init");
  *a1 = result;
  return result;
}

uint64_t sub_20F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2A14();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_2158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2A14();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_21D8(uint64_t a1)
{
  sub_2A14();
  sub_1454C();
  __break(1u);
}

uint64_t sub_2200(uint64_t *a1)
{
  if (sub_13D94(2, 26, 0, 0))
  {
    sub_144DC();

    return sub_143DC();
  }

  else
  {
    sub_1440C();
    swift_getWitnessTable();
    sub_144CC();
    sub_143DC();
    sub_149EC();
    swift_getWitnessTable();
    sub_1440C();
    swift_getWitnessTable();
    sub_144CC();
    return sub_143DC();
  }
}

uint64_t sub_2364(uint64_t *a1)
{
  if (sub_13D94(2, 26, 0, 0))
  {
    sub_144DC();
    sub_143DC();
  }

  else
  {
    sub_1440C();
    swift_getWitnessTable();
    sub_144CC();
    sub_143DC();
    sub_149EC();
    swift_getWitnessTable();
    sub_1440C();
    swift_getWitnessTable();
    sub_144CC();
    sub_143DC();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t variable initialization expression of DefaultMessagingAppsSettingsProvider.localizedTitle()
{
  v0 = sub_142FC();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1483C();
  __chkstk_darwin(v1 - 8);
  sub_147BC();
  type metadata accessor for DefaultMessagingAppsSettingsProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_142EC();
  return sub_1489C();
}

uint64_t variable initialization expression of DefaultMessagingAppsSettingsProvider.localizedNavigationTitle()
{
  v0 = sub_142FC();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1483C();
  __chkstk_darwin(v1 - 8);
  sub_147BC();
  type metadata accessor for DefaultMessagingAppsSettingsProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_142EC();
  return sub_1489C();
}

id variable initialization expression of DefaultMessagingAppsSettingsProvider._viewModel()
{
  v0 = objc_allocWithZone(type metadata accessor for DefaultMessagingAppsModel(0));

  return [v0 init];
}

uint64_t sub_2820(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_2868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_28D0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_28E8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_2904(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_294C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_29B4()
{
  result = qword_20E68;
  if (!qword_20E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20E68);
  }

  return result;
}

unint64_t sub_2A14()
{
  result = qword_20E70;
  if (!qword_20E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20E70);
  }

  return result;
}

__n128 sub_2A68(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2A7C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2AC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2B40@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v28 = sub_2820(&qword_20E98, &qword_156D0);
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v3 = &v25 - v2;
  v4 = sub_2820(&qword_20EA0, &qword_156D8);
  v5 = *(v4 - 8);
  v30 = v4;
  v31 = v5;
  __chkstk_darwin(v4);
  v27 = &v25 - v6;
  v33 = v1;
  sub_2820(&qword_20EA8, &qword_156E0);
  sub_5740(&qword_20EB0, &qword_20EA8, &qword_156E0, &protocol conformance descriptor for TupleView<A>);
  sub_1459C();
  v7 = *(v1 + 40);
  v34 = *(v1 + 24);
  v35 = v7;
  v36 = *(v1 + 56);
  sub_2820(&qword_20EB8, &qword_156E8);
  sub_146EC();
  v8 = v37;
  v9 = v38;
  v10 = v39;
  v11 = swift_allocObject();
  v12 = *(v1 + 16);
  v11[1] = *v1;
  v11[2] = v12;
  v13 = *(v1 + 48);
  v11[3] = *(v1 + 32);
  v11[4] = v13;
  sub_5708(v1, &v34);
  v26 = sub_2820(&qword_20EC0, &qword_156F0);
  v14 = sub_5740(&qword_20EC8, &qword_20E98, &qword_156D0, &protocol conformance descriptor for List<A, B>);
  v25 = sub_5788();
  v15 = v28;
  sub_1463C();

  sub_5860(v8, *(&v8 + 1), v9, v10);
  (*(v29 + 8))(v3, v15);
  v37 = *(v1 + 8);
  sub_2820(&qword_20ED8, &qword_156F8);
  sub_1470C();
  v16 = swift_allocObject();
  v17 = *(v1 + 16);
  v16[1] = *v1;
  v16[2] = v17;
  v18 = *(v1 + 48);
  v16[3] = *(v1 + 32);
  v16[4] = v18;
  v19 = swift_allocObject();
  v20 = *(v1 + 16);
  v19[1] = *v1;
  v19[2] = v20;
  v21 = *(v1 + 48);
  v19[3] = *(v1 + 32);
  v19[4] = v21;
  sub_5708(v1, &v34);
  sub_5708(v1, &v34);
  sub_2820(&qword_20EE0, &qword_15700);
  *&v34 = v15;
  *(&v34 + 1) = v26;
  *&v35 = v14;
  *(&v35 + 1) = v25;
  swift_getOpaqueTypeConformance2();
  sub_5910();
  v22 = v30;
  v23 = v27;
  sub_1462C();

  return (*(v31 + 8))(v23, v22);
}

uint64_t sub_2FEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v127 = a2;
  v3 = sub_2820(&qword_20F18, &unk_15750);
  v4 = __chkstk_darwin(v3 - 8);
  v128 = &v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v126 = &v111 - v6;
  v147 = sub_142BC();
  v137 = *(v147 - 8);
  __chkstk_darwin(v147);
  v141 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_147AC();
  v149 = *(v140 - 8);
  __chkstk_darwin(v140);
  v136 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1481C();
  __chkstk_darwin(v9 - 8);
  v11 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_142FC();
  __chkstk_darwin(v12 - 8);
  v146 = &v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_142AC();
  v15 = *(v14 - 8);
  v151 = v14;
  v152 = v15;
  __chkstk_darwin(v14);
  v133 = (&v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_1483C();
  __chkstk_darwin(v17 - 8);
  v19 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2820(&qword_20F20, &unk_15F70);
  __chkstk_darwin(v20 - 8);
  v22 = &v111 - v21;
  v131 = type metadata accessor for DefaultMessagingAppsSection(0);
  __chkstk_darwin(v131);
  v123 = &v111 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_2820(&qword_20F28, &qword_15760);
  v124 = *(v142 - 8);
  v24 = __chkstk_darwin(v142);
  v26 = &v111 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v24);
  v122 = &v111 - v28;
  __chkstk_darwin(v27);
  v145 = &v111 - v29;
  v30 = sub_1497C();
  v125 = sub_1496C();
  v139 = v30;
  sub_1492C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v31 = *a1;
  swift_getKeyPath();
  v32 = v31 + OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel___observationRegistrar;
  v153 = v31;
  v135 = sub_5AD0();
  v148 = v32;
  sub_1431C();

  v138 = v31;
  v134 = OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__changingTextingAppAvailability;
  v33 = *(v31 + OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__changingTextingAppAvailability);
  v143 = v26;
  v132 = v19;
  v144 = a1;
  v121 = v22;
  if (v33)
  {
    sub_147BC();
    v34 = type metadata accessor for DefaultMessagingAppsSettingsProvider();
    v35 = v133;
    *v133 = v34;
    v36 = v22;
    v37 = v152;
    v38 = *(v152 + 104);
    v150 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
    v38(v35);
    sub_142EC();
    sub_142CC();
    v39 = v137;
    (*(v137 + 56))(v36, 0, 1, v147);
  }

  else
  {
    v39 = v137;
    (*(v137 + 56))(v22, 1, 1, v147);
    v150 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
    v37 = v152;
    v35 = v133;
  }

  sub_1480C();
  v157._countAndFlagsBits = 0;
  v157._object = 0xE000000000000000;
  sub_147FC(v157);
  v40 = v149;
  v41 = *(v149 + 104);
  v42 = v136;
  v116 = enum case for String.LocalizationValue.Placeholder.object(_:);
  v43 = v140;
  v117 = v149 + 104;
  v115 = v41;
  v41(v136);
  sub_147CC();
  v44 = *(v40 + 8);
  v149 = v40 + 8;
  v114 = v44;
  v44(v42, v43);
  v158._countAndFlagsBits = 0xD000000000000027;
  v158._object = 0x80000000000163C0;
  sub_147FC(v158);
  v45 = v141;
  sub_4194(0, v141);
  v46 = v147;
  sub_147EC();
  v47 = *(v39 + 8);
  v113 = v39 + 8;
  v112 = v47;
  v47(v45, v46);
  v159._countAndFlagsBits = 0;
  v159._object = 0xE000000000000000;
  sub_147FC(v159);
  v118 = v11;
  sub_1482C();
  v48 = type metadata accessor for DefaultMessagingAppsSettingsProvider();
  *v35 = v48;
  v49 = *(v37 + 104);
  v50 = v150;
  v51 = v151;
  v49(v35, v150, v151);
  sub_142EC();
  v52 = v131;
  v53 = v123;
  sub_142CC();
  sub_147BC();
  v129 = v48;
  *v35 = v48;
  v152 = v37 + 104;
  v130 = v49;
  v49(v35, v50, v51);
  sub_142EC();
  sub_142CC();
  swift_getKeyPath();
  v54 = v138;
  v153 = v138;
  sub_1431C();

  v55 = v144;
  v56 = v52;
  v57 = *(v54 + OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__availableComposingApps);

  sub_5708(v55, &v153);
  v58 = sub_1496C();
  v59 = swift_allocObject();
  *(v59 + 16) = v58;
  *(v59 + 24) = &protocol witness table for MainActor;
  v60 = v55[1];
  *(v59 + 32) = *v55;
  *(v59 + 48) = v60;
  v61 = v55[3];
  *(v59 + 64) = v55[2];
  *(v59 + 80) = v61;
  sub_5708(v55, &v153);
  v62 = sub_1496C();
  v63 = swift_allocObject();
  *(v63 + 16) = v62;
  *(v63 + 24) = &protocol witness table for MainActor;
  v64 = v55[1];
  *(v63 + 32) = *v55;
  *(v63 + 48) = v64;
  v65 = v55[3];
  *(v63 + 64) = v55[2];
  *(v63 + 80) = v65;
  v111 = sub_2820(&qword_20EC0, &qword_156F0);
  sub_1474C();
  v66 = v153;
  v67 = v154;
  v120 = v155;
  v119 = v156;
  sub_66E0(v121, v53, &qword_20F20, &unk_15F70);
  *(v53 + *(v56 + 28)) = v57;
  v68 = v53 + *(v56 + 32);
  *v68 = v66;
  *(v68 + 8) = v67;
  v69 = v119;
  *(v68 + 16) = v120;
  *(v68 + 32) = v69;
  swift_getKeyPath();
  v153 = v54;
  sub_1431C();

  v70 = *(v54 + OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__changingComposingAppAvailability) != 2;
  KeyPath = swift_getKeyPath();
  v72 = swift_allocObject();
  *(v72 + 16) = v70;
  v73 = v122;
  sub_667C(v53, v122);
  v74 = v142;
  v75 = (v73 + *(v142 + 36));
  *v75 = KeyPath;
  v75[1] = sub_6664;
  v75[2] = v72;
  sub_66E0(v73, v145, &qword_20F28, &qword_15760);
  swift_getKeyPath();
  v153 = v54;
  sub_1431C();

  if (*(v54 + v134))
  {
    sub_147BC();
    v76 = v133;
    *v133 = v129;
    v130(v76, v150, v151);
    sub_142EC();
    v77 = v143;
    sub_142CC();
    v78 = v147;
    (*(v137 + 56))(v77, 0, 1, v147);
    sub_1480C();
    v160._countAndFlagsBits = 0;
    v160._object = 0xE000000000000000;
    sub_147FC(v160);
    v79 = v136;
    v80 = v140;
    v115(v136, v116, v140);
    sub_147CC();
    v114(v79, v80);
    v161._countAndFlagsBits = 0xD000000000000043;
    v161._object = 0x80000000000164F0;
    sub_147FC(v161);
    v81 = v141;
    sub_4194(1, v141);
    sub_147EC();
    v112(v81, v78);
    v162._countAndFlagsBits = 0;
    v162._object = 0xE000000000000000;
    sub_147FC(v162);
    sub_1482C();
    v82 = v129;
    *v76 = v129;
    v83 = v151;
    v84 = v130;
    v130(v76, v150, v151);
    sub_142EC();
    v85 = v131;
    sub_142CC();
    sub_147BC();
    *v76 = v82;
    v84(v76, v150, v83);
    sub_142EC();
    v86 = v143;
    sub_142CC();
    swift_getKeyPath();
    v87 = v138;
    v153 = v138;
    sub_1431C();

    v88 = *(v87 + OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__availableTextingApps);
    sub_5708(v55, &v153);

    v89 = sub_1496C();
    v90 = swift_allocObject();
    *(v90 + 16) = v89;
    *(v90 + 24) = &protocol witness table for MainActor;
    v91 = v55[1];
    *(v90 + 32) = *v55;
    *(v90 + 48) = v91;
    v92 = v55[3];
    *(v90 + 64) = v55[2];
    *(v90 + 80) = v92;
    sub_5708(v55, &v153);
    v93 = sub_1496C();
    v94 = swift_allocObject();
    *(v94 + 16) = v93;
    *(v94 + 24) = &protocol witness table for MainActor;
    v74 = v142;
    v95 = v55[1];
    *(v94 + 32) = *v55;
    *(v94 + 48) = v95;
    v96 = v55[3];
    *(v94 + 64) = v55[2];
    *(v94 + 80) = v96;
    sub_1474C();
    v97 = v153;
    v98 = v154;
    *(v86 + *(v85 + 28)) = v88;
    v99 = v86 + *(v85 + 32);
    *v99 = v97;
    *(v99 + 8) = v98;
    v100 = v156;
    *(v99 + 16) = v155;
    *(v99 + 32) = v100;
    swift_getKeyPath();
    v153 = v87;
    sub_1431C();

    LOBYTE(v93) = *(v87 + v134) != 2;
    v101 = swift_getKeyPath();
    v102 = swift_allocObject();
    *(v102 + 16) = v93;
    v103 = (v86 + *(v74 + 36));
    *v103 = v101;
    v103[1] = sub_6C04;
    v103[2] = v102;
    v104 = v126;
    sub_66E0(v86, v126, &qword_20F28, &qword_15760);
    v105 = 0;
  }

  else
  {
    v105 = 1;
    v104 = v126;
    v86 = v143;
  }

  (*(v124 + 56))(v104, v105, 1, v74);
  v106 = v145;
  sub_6860(v145, v86, &qword_20F28, &qword_15760);
  v107 = v128;
  sub_6860(v104, v128, &qword_20F18, &unk_15750);
  v108 = v127;
  sub_6860(v86, v127, &qword_20F28, &qword_15760);
  v109 = sub_2820(&qword_20F30, &qword_15838);
  sub_6860(v107, v108 + *(v109 + 48), &qword_20F18, &unk_15750);
  sub_68C8(v104, &qword_20F18, &unk_15750);
  sub_68C8(v106, &qword_20F28, &qword_15760);
  sub_68C8(v107, &qword_20F18, &unk_15750);
  sub_68C8(v86, &qword_20F28, &qword_15760);
}

uint64_t sub_4194@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_142FC();
  __chkstk_darwin(v4 - 8);
  v5 = sub_142AC();
  v21 = *(v5 - 8);
  v22 = v5;
  __chkstk_darwin(v5);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1483C();
  __chkstk_darwin(v8 - 8);
  v9 = sub_142BC();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v20 - v14;
  v16 = *v2;
  if (a1)
  {
    swift_getKeyPath();
    v24 = v16;
    sub_5AD0();
    sub_1431C();

    if (*(v16 + OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__changingTextingAppAvailability) == 1)
    {
      if (qword_20E10 != -1)
      {
        swift_once();
      }

      v17 = sub_5CAC(v9, qword_20E80);
      (*(v10 + 16))(v13, v17, v9);
    }

    else
    {
      sub_147BC();
      *v7 = type metadata accessor for DefaultMessagingAppsSettingsProvider();
      (*(v21 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v22);
      sub_142EC();
      sub_142CC();
    }

    v15 = v13;
  }

  else
  {
    swift_getKeyPath();
    v24 = v16;
    sub_5AD0();
    sub_1431C();

    if (*(v16 + OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__changingComposingAppAvailability) == 1)
    {
      if (qword_20E10 != -1)
      {
        swift_once();
      }

      v18 = sub_5CAC(v9, qword_20E80);
      (*(v10 + 16))(v15, v18, v9);
    }

    else
    {
      sub_147BC();
      *v7 = type metadata accessor for DefaultMessagingAppsSettingsProvider();
      (*(v21 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v22);
      sub_142EC();
      sub_142CC();
    }
  }

  return (*(v10 + 32))(v23, v15, v9);
}

uint64_t sub_4614(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = sub_2820(&qword_20F08, &qword_15C80);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - v6;
  v9 = *a1;
  v8 = a1[1];
  v11 = a1[2];
  v10 = a1[3];
  sub_1497C();
  sub_1496C();
  sub_1492C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v8)
  {
    v12 = sub_1499C();
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v14 = sub_1496C();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = &protocol witness table for MainActor;
    v15[4] = v13;
    v15[5] = v9;
    v15[6] = v8;
    v15[7] = v11;
    v15[8] = v10;

    sub_12438(0, 0, v7, &unk_15840, v15);
  }

  else
  {
  }
}

uint64_t sub_4844@<X0>(uint64_t *a1@<X2>, void *a4@<X5>, uint64_t *a5@<X8>)
{
  sub_1497C();
  sub_1496C();
  sub_1492C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = *a1;
  swift_getKeyPath();
  sub_5AD0();
  sub_1431C();

  v9 = (v8 + *a4);
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];
  v13 = v9[3];
  sub_2868(*v9, v11, v12, v13);

  *a5 = v10;
  a5[1] = v11;
  a5[2] = v12;
  a5[3] = v13;
  return result;
}

uint64_t sub_4960(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  sub_1497C();
  sub_1496C();
  sub_1492C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v5)
  {
    sub_2868(v4, v5, v6, v7);
    sub_2820(&qword_20EB8, &qword_156E8);
    sub_146FC();
  }

  else
  {
  }
}

uint64_t sub_4A94(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a2;
  v4 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  sub_1497C();
  sub_1496C();
  sub_1492C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v4)
  {
    v8 = *a3;
    swift_getKeyPath();
    sub_5AD0();
    sub_1431C();

    v9 = (v8 + OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__defaultTextingApp);
    v11 = *(v8 + OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__defaultTextingApp);
    v10 = v9[1];
    v13 = v9[2];
    v12 = v9[3];
    if (v10)
    {
      v14 = v5 == v11 && v4 == v10;
      if (v14 || (sub_14A5C() & 1) != 0)
      {
        if (v7 == v13 && v6 == v12)
        {
          sub_2868(v5, v4, v7, v6);
          sub_2868(v11, v10, v7, v6);
        }

        else
        {
          sub_14A5C();
          sub_2868(v5, v4, v7, v6);
          sub_2868(v11, v10, v13, v12);
        }

        sub_5860(v5, v4, v7, v6);
        goto LABEL_21;
      }

      sub_2868(v5, v4, v7, v6);
      sub_2868(v11, v10, v13, v12);

      v16 = v5;
      v17 = v4;
      v18 = v7;
      v19 = v6;
    }

    else
    {

      sub_5860(v5, v4, v7, v6);
      v16 = v11;
      v17 = 0;
      v18 = v13;
      v19 = v12;
    }

    sub_5860(v16, v17, v18, v19);
  }

LABEL_21:
  sub_2820(&qword_20ED8, &qword_156F8);
  sub_146FC();
}

uint64_t sub_4D64(uint64_t a1)
{
  sub_1497C();
  sub_1496C();
  sub_1492C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_20E20 != -1)
  {
    swift_once();
  }

  v1 = sub_143BC();
  sub_5CAC(v1, qword_21FD0);
  v2 = sub_1439C();
  v3 = sub_149DC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "User validation sheet dismissed.", v4, 2u);
  }

  sub_2820(&qword_20EB8, &qword_156E8);
  sub_146FC();
}

uint64_t sub_4EF4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1497C();
  sub_1496C();
  sub_1492C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a1 + 5);
  v28[0] = *(a1 + 3);
  v28[1] = v4;
  v29 = a1[7];
  sub_2820(&qword_20EB8, &qword_156E8);
  sub_146EC();
  v5 = v31;
  if (v31)
  {
    v27 = v32;
    v25 = v30;
    v26 = v33;
    v6 = *a1;
    swift_getKeyPath();
    *&v28[0] = v6;
    sub_5AD0();
    sub_1431C();

    v7 = v6 + OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__defaultTextingApp;
    v9 = *(v6 + OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__defaultTextingApp);
    v8 = *(v6 + OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__defaultTextingApp + 8);
    v24 = v9;
    v11 = *(v6 + OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__defaultTextingApp + 16);
    v10 = *(v7 + 24);
    v12 = swift_allocObject();
    v13 = *(a1 + 1);
    *(v12 + 16) = *a1;
    *(v12 + 32) = v13;
    v14 = *(a1 + 3);
    *(v12 + 48) = *(a1 + 2);
    *(v12 + 64) = v14;
    v16 = v25;
    v15 = v26;
    *(v12 + 80) = v25;
    *(v12 + 88) = v5;
    *(v12 + 96) = v27;
    *(v12 + 104) = v26;
    sub_2868(v9, v8, v11, v10);
    sub_5708(a1, v28);

    v17 = sub_143EC();
    v18 = sub_1458C();

    v20 = v11;
    v21 = v24;
    v22 = v27;
    v23 = sub_5B94;
  }

  else
  {

    v21 = 0;
    v8 = 0;
    v20 = 0;
    v10 = 0;
    v16 = 0;
    v22 = 0;
    v15 = 0;
    v23 = 0;
    v12 = 0;
    v17 = 0;
    v18 = 0;
  }

  *a2 = v21;
  *(a2 + 8) = v8;
  *(a2 + 16) = v20;
  *(a2 + 24) = v10;
  *(a2 + 32) = v16;
  *(a2 + 40) = v5;
  *(a2 + 48) = v22;
  *(a2 + 56) = v15;
  *(a2 + 64) = v23;
  *(a2 + 72) = v12;
  *(a2 + 80) = v17;
  *(a2 + 88) = v18;
  return result;
}

uint64_t sub_5138(char a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a3;
  v34 = a5;
  v10 = sub_2820(&qword_20F08, &qword_15C80);
  __chkstk_darwin(v10 - 8);
  v12 = &v31 - v11;
  if (qword_20E20 != -1)
  {
    swift_once();
  }

  v13 = sub_143BC();
  sub_5CAC(v13, qword_21FD0);
  v14 = sub_1439C();
  v15 = sub_149DC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v37[0] = v17;
    *v16 = 136446210;
    if (a1)
    {
      v18 = 0x616D7269666E6F63;
    }

    else
    {
      v18 = 0x74616C65636E6163;
    }

    v32 = v12;
    v19 = a6;
    if (a1)
    {
      v20 = 0xEC0000006E6F6974;
    }

    else
    {
      v20 = 0xEB000000006E6F69;
    }

    v21 = a2;
    v22 = sub_5EF0(v18, v20, v37);
    a6 = v19;
    v12 = v32;

    *(v16 + 4) = v22;
    a2 = v21;
    _os_log_impl(&dword_0, v14, v15, "User validation sheet returned %{public}s via button.", v16, 0xCu);
    sub_5FBC(v17);
  }

  v23 = *(a2 + 5);
  v37[0] = *(a2 + 3);
  v37[1] = v23;
  v38 = a2[7];
  v35 = 0u;
  v36 = 0u;
  sub_2820(&qword_20EB8, &qword_156E8);
  result = sub_146FC();
  if (a1)
  {
    v25 = sub_1499C();
    (*(*(v25 - 8) + 56))(v12, 1, 1, v25);
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1497C();

    v27 = sub_1496C();
    v28 = swift_allocObject();
    v28[2] = v27;
    v28[3] = &protocol witness table for MainActor;
    v30 = v33;
    v29 = v34;
    v28[4] = v26;
    v28[5] = v30;
    v28[6] = a4;
    v28[7] = v29;
    v28[8] = a6;

    sub_12438(0, 0, v12, &unk_15740, v28);
  }

  return result;
}

uint64_t sub_547C()
{
  v0 = sub_142FC();
  __chkstk_darwin(v0 - 8);
  v1 = sub_142AC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1483C();
  __chkstk_darwin(v5 - 8);
  v6 = sub_142BC();
  sub_6A5C(v6, qword_20E80);
  sub_5CAC(v6, qword_20E80);
  sub_147BC();
  *v4 = type metadata accessor for DefaultMessagingAppsSettingsProvider();
  (*(v2 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v1);
  sub_142EC();
  return sub_142CC();
}

uint64_t sub_56B4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_5740(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_56B4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_5788()
{
  result = qword_20ED0;
  if (!qword_20ED0)
  {
    sub_56B4(&qword_20EC0, &qword_156F0);
    sub_580C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20ED0);
  }

  return result;
}

unint64_t sub_580C()
{
  result = qword_212B0;
  if (!qword_212B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_212B0);
  }

  return result;
}

void sub_5860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_58AC()
{

  if (*(v0 + 48))
  {
  }

  return _swift_deallocObject(v0, 80, 7);
}

unint64_t sub_5910()
{
  result = qword_20EE8;
  if (!qword_20EE8)
  {
    sub_56B4(&qword_20EE0, &qword_15700);
    sub_5994();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20EE8);
  }

  return result;
}

unint64_t sub_5994()
{
  result = qword_20EF0;
  if (!qword_20EF0)
  {
    sub_56B4(&qword_20EF8, &qword_15708);
    sub_29B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20EF0);
  }

  return result;
}

uint64_t sub_5A20@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_5AD0();
  sub_1431C();

  *a2 = *(v3 + OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__changingComposingAppAvailability);
  return result;
}

unint64_t sub_5AD0()
{
  result = qword_20F00;
  if (!qword_20F00)
  {
    type metadata accessor for DefaultMessagingAppsModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20F00);
  }

  return result;
}

uint64_t sub_5B28()
{

  if (*(v0 + 48))
  {
  }

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_5BF8@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_5AD0();
  sub_1431C();

  *a4 = *(v6 + *a3);
}

uint64_t sub_5CAC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_5CE4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_5D20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_5DFC;

  return sub_C060(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_5DFC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_5EF0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_6008(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_6114(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_5FBC(v11);
  return v7;
}

uint64_t sub_5FBC(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_6008(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_6170(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_14A2C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_6114(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

char *sub_6170(uint64_t a1, unint64_t a2)
{
  v3 = sub_61BC(a1, a2);
  sub_62EC(&off_1CE80);
  return v3;
}

char *sub_61BC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_63D8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_14A2C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_148EC();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_63D8(v10, 0);
        result = sub_14A1C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_62EC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_644C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_63D8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_2820(&qword_20F10, &qword_15748);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_644C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2820(&qword_20F10, &qword_15748);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_65FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1443C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_667C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultMessagingAppsSection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_66E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2820(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_67F0()
{
  swift_unknownObjectRelease();

  if (*(v0 + 64))
  {
  }

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_6860(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2820(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_68C8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2820(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_6928()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_6978(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_6C00;

  return sub_B724(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t *sub_6A5C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_6AC0()
{
  sub_56B4(&qword_20EA0, &qword_156D8);
  sub_56B4(&qword_20EE0, &qword_15700);
  sub_56B4(&qword_20E98, &qword_156D0);
  sub_56B4(&qword_20EC0, &qword_156F0);
  sub_5740(&qword_20EC8, &qword_20E98, &qword_156D0, &protocol conformance descriptor for List<A, B>);
  sub_5788();
  swift_getOpaqueTypeConformance2();
  sub_5910();
  return swift_getOpaqueTypeConformance2();
}

id sub_6C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v9 = v8;
  v16 = sub_142FC();
  __chkstk_darwin(v16 - 8);
  v17 = sub_1483C();
  __chkstk_darwin(v17 - 8);
  v18 = sub_1481C();
  __chkstk_darwin(v18 - 8);
  *&v8[OBJC_IVAR____TtC28DefaultMessagingAppsSettings42TextingAppChangeConfirmationViewController_confirmationDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v19 = &v8[OBJC_IVAR____TtC28DefaultMessagingAppsSettings42TextingAppChangeConfirmationViewController_previousApp];
  *v19 = a1;
  *(v19 + 1) = a2;
  *(v19 + 2) = a3;
  *(v19 + 3) = a4;
  v20 = &v8[OBJC_IVAR____TtC28DefaultMessagingAppsSettings42TextingAppChangeConfirmationViewController_newApp];
  *v20 = a5;
  *(v20 + 1) = a6;
  *(v20 + 2) = a7;
  *(v20 + 3) = a8;

  sub_1480C();
  v33._object = 0x8000000000016D00;
  v33._countAndFlagsBits = 0x1000000000000020;
  sub_147FC(v33);
  v34._countAndFlagsBits = a7;
  v34._object = a8;
  sub_147DC(v34);

  v35._countAndFlagsBits = 1067286754;
  v35._object = 0xA400000000000000;
  sub_147FC(v35);
  sub_1482C();
  type metadata accessor for DefaultMessagingAppsSettingsProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = objc_opt_self();
  v23 = [v22 bundleForClass:ObjCClassFromMetadata];
  sub_142EC();
  sub_1489C();
  sub_147BC();
  v24 = [v22 bundleForClass:ObjCClassFromMetadata];
  sub_142EC();
  sub_1489C();
  v25 = objc_allocWithZone(OBWelcomeController);
  v26 = sub_1487C();

  v27 = sub_1487C();

  v28 = [v25 initWithTitle:v26 detailText:v27 icon:0];

  *&v9[OBJC_IVAR____TtC28DefaultMessagingAppsSettings42TextingAppChangeConfirmationViewController_onBoardingKitController] = v28;
  v32.receiver = v9;
  v32.super_class = type metadata accessor for TextingAppChangeConfirmationViewController();
  return objc_msgSendSuper2(&v32, "initWithRootViewController:", v28);
}

void sub_7110()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC28DefaultMessagingAppsSettings42TextingAppChangeConfirmationViewController_onBoardingKitController);
  v3 = [v2 headerView];
  v4 = [v3 customIconContainerView];

  if (v4)
  {
    v6 = *(v1 + OBJC_IVAR____TtC28DefaultMessagingAppsSettings42TextingAppChangeConfirmationViewController_newApp);
    v5 = *(v1 + OBJC_IVAR____TtC28DefaultMessagingAppsSettings42TextingAppChangeConfirmationViewController_newApp + 8);
    KeyPath = swift_getKeyPath();
    LOBYTE(v20) = 0;
    v21 = v5;
    objc_allocWithZone(sub_2820(&qword_20F80, &qword_15918));

    v7 = sub_144AC();
    v8 = [v7 view];
    if (v8)
    {
      v9 = v8;
      [v4 setClipsToBounds:0];
      [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v2 addChildViewController:v7];
      [v4 addSubview:v9];
      v10 = objc_opt_self();
      sub_2820(&qword_20F88, &qword_15920);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_15880;
      v12 = [v9 centerXAnchor];
      v13 = [v4 centerXAnchor];
      v14 = [v12 constraintEqualToAnchor:v13];

      *(v11 + 32) = v14;
      v15 = [v9 centerYAnchor];
      v16 = [v4 centerYAnchor];
      v17 = [v15 constraintEqualToAnchor:v16];

      *(v11 + 40) = v17;
      sub_9E54();
      isa = sub_1490C().super.isa;

      [v10 activateConstraints:isa];

      [v7 didMoveToParentViewController:v1];
      v4 = v7;
      v7 = v9;
    }
  }
}

void sub_73C4()
{
  v1 = sub_1481C();
  __chkstk_darwin(v1 - 8);
  v2 = sub_142FC();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1483C();
  __chkstk_darwin(v3 - 8);
  v4 = [v0 view];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_opt_self() systemGreenColor];
    [v5 setTintColor:v6];

    v7 = *&v0[OBJC_IVAR____TtC28DefaultMessagingAppsSettings42TextingAppChangeConfirmationViewController_onBoardingKitController];
    sub_147BC();
    type metadata accessor for DefaultMessagingAppsSettingsProvider();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v34 = objc_opt_self();
    v35 = ObjCClassFromMetadata;
    v9 = [v34 bundleForClass:ObjCClassFromMetadata];
    sub_142EC();
    sub_1489C();
    v10 = sub_1487C();

    v11 = sub_1487C();
    v12 = [objc_opt_self() configurationWithWeight:6];
    v13 = sub_1487C();
    v14 = objc_opt_self();
    v15 = [v14 _systemImageNamed:v13 withConfiguration:v12];

    if (!v15)
    {
      v15 = [objc_allocWithZone(UIImage) init];
    }

    [v7 addBulletedListItemWithTitle:v10 description:v11 image:v15];

    sub_147BC();
    v16 = [v34 bundleForClass:v35];
    sub_142EC();
    sub_1489C();
    v17 = sub_1487C();

    v18 = sub_1487C();
    v19 = sub_1487C();
    v20 = [v14 systemImageNamed:v19];

    if (!v20)
    {
      v20 = [objc_allocWithZone(UIImage) init];
    }

    [v7 addBulletedListItemWithTitle:v17 description:v18 image:v20];

    sub_1480C();
    v36._countAndFlagsBits = 0x9C80E220657355;
    v36._object = 0xA700000000000000;
    sub_147FC(v36);
    sub_147DC(*&v0[OBJC_IVAR____TtC28DefaultMessagingAppsSettings42TextingAppChangeConfirmationViewController_newApp + 16]);
    v37._countAndFlagsBits = 0x1000000000000030;
    v37._object = 0x8000000000016A30;
    sub_147FC(v37);
    sub_1482C();
    v21 = [v34 bundleForClass:v35];
    sub_142EC();
    sub_1489C();
    v22 = sub_1487C();

    v23 = sub_1487C();
    v24 = sub_1487C();
    v25 = [v14 systemImageNamed:v24];

    if (!v25)
    {
      v25 = [objc_allocWithZone(UIImage) init];
    }

    [v7 addBulletedListItemWithTitle:v22 description:v23 image:v25];

    v26 = &v0[OBJC_IVAR____TtC28DefaultMessagingAppsSettings42TextingAppChangeConfirmationViewController_previousApp];
    if (*&v0[OBJC_IVAR____TtC28DefaultMessagingAppsSettings42TextingAppChangeConfirmationViewController_previousApp + 8])
    {
      v28 = *(v26 + 2);
      v27 = *(v26 + 3);

      sub_1480C();
      v38._countAndFlagsBits = 0x1000000000000025;
      v38._object = 0x8000000000016AA0;
      sub_147FC(v38);
      v39._countAndFlagsBits = v28;
      v39._object = v27;
      sub_147DC(v39);

      v40._object = 0x8000000000016AD0;
      v40._countAndFlagsBits = 0x1000000000000017;
      sub_147FC(v40);
      sub_1482C();
      v29 = [v34 bundleForClass:v35];
      sub_142EC();
      sub_1489C();
      v30 = sub_1487C();

      v31 = sub_1487C();
      v32 = sub_1487C();
      v33 = [v14 systemImageNamed:v32];

      if (!v33)
      {
        v33 = [objc_allocWithZone(UIImage) init];
      }

      [v7 addBulletedListItemWithTitle:v30 description:v31 image:v33];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_7AD8()
{
  v1 = sub_142FC();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1483C();
  __chkstk_darwin(v2 - 8);
  v18 = *(v0 + OBJC_IVAR____TtC28DefaultMessagingAppsSettings42TextingAppChangeConfirmationViewController_onBoardingKitController);
  v3 = [v18 navigationItem];
  v4 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:v0 action:"cancelChange"];
  [v3 setRightBarButtonItem:v4];

  v5 = [objc_opt_self() boldButton];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 systemRedColor];
  [v7 setTintColor:v8];

  sub_147BC();
  type metadata accessor for DefaultMessagingAppsSettingsProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = objc_opt_self();
  v11 = [v10 bundleForClass:ObjCClassFromMetadata];
  sub_142EC();
  sub_1489C();
  v12 = sub_1487C();

  [v7 setTitle:v12 forState:0];

  [v7 addTarget:v0 action:"confirmChange" forControlEvents:64];
  v13 = [objc_opt_self() linkButton];
  sub_147BC();
  v14 = [v10 bundleForClass:ObjCClassFromMetadata];
  sub_142EC();
  sub_1489C();
  v15 = sub_1487C();

  [v13 setTitle:v15 forState:0];

  [v13 addTarget:v0 action:"cancelChange" forControlEvents:64];
  v16 = [v18 buttonTray];
  [v16 addButton:v7];

  v17 = [v18 buttonTray];
  [v17 addButton:v13];
}

uint64_t sub_7EF0(const char *a1, int a2, char a3)
{
  if (qword_20E20 != -1)
  {
    swift_once();
  }

  v6 = sub_143BC();
  sub_5CAC(v6, qword_21FD0);
  v7 = sub_1439C();
  v8 = sub_149DC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, a1, v9, 2u);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = sub_1439C();
    v13 = sub_149DC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 67109120;
      *(v14 + 4) = a2;
      _os_log_impl(&dword_0, v12, v13, "Will change texting app: %{BOOL}d", v14, 8u);
    }

    (*(v11 + OBJC_IVAR____TtCV28DefaultMessagingAppsSettings33TextingAppChangeConfirmationSheet11Coordinator_completion))(a3 & 1);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_80DC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_1497C();
  sub_1496C();
  sub_1492C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

uint64_t sub_8254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1497C();
  sub_1496C();
  sub_1492C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

id sub_82E8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TextingAppChangeConfirmationViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

__n128 sub_83C4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[0] = a1;
  v19 = a2;
  v2 = sub_1469C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1434C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1497C();
  v18[1] = sub_1496C();
  sub_1492C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v7 + 16))(v9, v18[0], v6);
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == enum case for AsyncIconImagePhase.success(_:))
  {
    (*(v7 + 96))(v9, v6);
    (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
    v11 = sub_146BC();
    (*(v3 + 8))(v5, v2);
    sub_1479C();
    sub_143CC();
    v29 = BYTE8(v41);
    v27 = BYTE8(v42);
    v23 = 0;
    *v39 = v11;
    *&v39[8] = v41;
    v39[16] = BYTE8(v41);
    *&v39[17] = v28[0];
    *&v39[20] = *(v28 + 3);
    *&v39[24] = v42;
    v39[32] = BYTE8(v42);
    *&v39[33] = *v26;
    *&v39[36] = *&v26[3];
    *&v39[40] = v43;
    *&v39[72] = v25;
    *&v39[56] = v24;
    LOBYTE(v40) = 0;
    swift_retain_n();
    sub_2820(&qword_20FC0, &qword_15A08);
    sub_2820(&qword_20FD0, &qword_15A10);
    sub_A0AC();
    sub_A130();
    sub_144BC();
    v33 = v21[1];
    v34 = v21[2];
    v35 = v21[3];
    v36 = v22;
    v31 = v20;
    v32 = v21[0];
    *&v39[32] = v21[1];
    *&v39[48] = v21[2];
    *&v39[64] = v21[3];
    v40 = v22;
    *v39 = v20;
    *&v39[16] = v21[0];
    v30 = 0;
    sub_6860(&v31, v37, &qword_20FB0, &qword_15A00);
    sub_2820(&qword_20FB0, &qword_15A00);
    sub_2820(&qword_21010, &qword_15A30);
    sub_A020();
    sub_A300();
    sub_144BC();

    sub_68C8(&v31, &qword_20FB0, &qword_15A00);
  }

  else
  {
    if (v10 == enum case for AsyncIconImagePhase.failure(_:))
    {
      (*(v7 + 8))(v9, v6);
      sub_146AC();
      (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
      v12 = sub_146BC();

      (*(v3 + 8))(v5, v2);
      v13 = sub_1466C();
      sub_1479C();
      sub_143CC();
      LOBYTE(v37[0]) = 1;
      *&v39[6] = v41;
      *&v39[22] = v42;
      *&v39[38] = v43;
      *&v20 = v12;
      *(&v20 + 1) = v13;
      *&v21[0] = 0;
      WORD4(v21[0]) = 1;
      *(v21 + 10) = *v39;
      *(&v21[1] + 10) = *&v39[16];
      *(&v21[2] + 10) = *&v39[32];
      *(&v21[3] + 1) = *(&v43 + 1);
      *v39 = v20;
      *&v39[16] = v21[0];
      *&v39[32] = v21[1];
      *&v39[48] = v21[2];
      *&v39[64] = v21[3];
      LOBYTE(v28[0]) = 1;
      LOBYTE(v40) = 1;
      sub_6860(&v20, v37, &qword_20FD0, &qword_15A10);
      sub_2820(&qword_20FC0, &qword_15A08);
      sub_2820(&qword_20FD0, &qword_15A10);
      sub_A0AC();
      sub_A130();
      sub_144BC();
      *&v39[32] = v33;
      *&v39[48] = v34;
      *&v39[64] = v35;
      v40 = v36;
      *v39 = v31;
      *&v39[16] = v32;
      LOBYTE(v24) = 0;
      sub_2820(&qword_20FB0, &qword_15A00);
      sub_2820(&qword_21010, &qword_15A30);
      sub_A020();
      sub_A300();
      sub_144BC();
      sub_68C8(&v20, &qword_20FD0, &qword_15A10);
    }

    else if (v10 == enum case for AsyncIconImagePhase.unfetched(_:))
    {
      v39[0] = 0;
      sub_144BC();
      LOBYTE(v20) = 1;
      v39[0] = v31;
      HIBYTE(v40) = 1;
      sub_2820(&qword_20FB0, &qword_15A00);
      sub_2820(&qword_21010, &qword_15A30);
      sub_A020();
      sub_A300();
      sub_144BC();
    }

    else
    {
      v39[0] = 1;
      sub_144BC();
      LOBYTE(v20) = 1;
      v39[0] = v31;
      HIBYTE(v40) = 1;
      sub_2820(&qword_20FB0, &qword_15A00);
      sub_2820(&qword_21010, &qword_15A30);
      sub_A020();
      sub_A300();
      sub_144BC();
      (*(v7 + 8))(v9, v6);
    }
  }

  *&v39[64] = v37[4];
  v40 = v38;
  *v39 = v37[0];
  *&v39[16] = v37[1];
  v14 = v37[3];
  v15 = v19;
  *(v19 + 32) = v37[2];
  *(v15 + 48) = v14;
  *(v15 + 64) = *&v39[64];
  *(v15 + 80) = v40;
  result = *v39;
  v17 = *&v39[16];
  *v15 = *v39;
  *(v15 + 16) = v17;
  return result;
}

uint64_t sub_8C20@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v25[0] = a3;
  v5 = sub_1446C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2820(&qword_21030, &qword_15A50);
  __chkstk_darwin(v9);
  v11 = v25 - v10;
  sub_1497C();
  sub_1496C();
  sub_1492C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = objc_allocWithZone(ISIcon);
  v13 = sub_1487C();
  [v12 initWithType:{v13, v25[0]}];

  if (a2)
  {
    v14 = *&a1;
  }

  else
  {

    sub_149CC();
    v15 = sub_1457C();
    sub_1437C();

    sub_1445C();
    swift_getAtKeyPath();
    sub_A37C(a1, 0);
    (*(v6 + 8))(v8, v5);
    v14 = *&v25[1];
  }

  [objc_allocWithZone(ISImageDescriptor) initWithSize:30.0 scale:{30.0, v14}];
  sub_2820(&qword_21038, &qword_15A58);
  sub_A388();
  sub_1435C();
  v16 = sub_2820(&qword_210A0, &qword_15A88);
  __asm { FMOV            V0.2D, #4.0 }

  *&v11[*(v16 + 36)] = _Q0;
  sub_1465C();
  v22 = sub_1468C();

  v23 = &v11[*(v9 + 36)];
  *v23 = v22;
  *(v23 + 8) = xmmword_15890;
  *(v23 + 3) = 0x3FF0000000000000;
  sub_A6F4();
  sub_145CC();
  sub_68C8(v11, &qword_21030, &qword_15A50);
}

uint64_t sub_8F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a1;
  v64 = a2;
  v56 = sub_2820(&qword_21060, &qword_15A68);
  __chkstk_darwin(v56);
  v54 = &v53 - v2;
  v59 = sub_2820(&qword_210C8, &qword_15A98);
  __chkstk_darwin(v59);
  v63 = &v53 - v3;
  v55 = sub_2820(&qword_210D0, &qword_15AA0);
  __chkstk_darwin(v55);
  v5 = &v53 - v4;
  v62 = sub_2820(&qword_21050, &qword_15A60);
  __chkstk_darwin(v62);
  v57 = &v53 - v6;
  v7 = sub_1469C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1434C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2820(&qword_21038, &qword_15A58);
  __chkstk_darwin(v15 - 8);
  v61 = &v53 - v16;
  sub_1497C();
  v60 = sub_1496C();
  sub_1492C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v12 + 16))(v14, v58, v11);
  v17 = (*(v12 + 88))(v14, v11);
  if (v17 == enum case for AsyncIconImagePhase.success(_:))
  {
    (*(v12 + 96))(v14, v11);
    (*(v8 + 104))(v10, enum case for Image.ResizingMode.stretch(_:), v7);
    v18 = sub_146BC();
    (*(v8 + 8))(v10, v7);
    sub_1479C();
    sub_143CC();
    v19 = v73;
    v20 = BYTE8(v73);
    v21 = v74;
    v22 = BYTE8(v74);
    *v5 = v18;
    *(v5 + 1) = v19;
    v5[16] = v20;
    *(v5 + 3) = v21;
    v5[32] = v22;
    *(v5 + 40) = v75;
    swift_storeEnumTagMultiPayload();
    swift_retain_n();
    sub_2820(&qword_20FC0, &qword_15A08);
    sub_A0AC();
    sub_A4A0();
    v23 = v57;
    sub_144BC();
    sub_6860(v23, v63, &qword_21050, &qword_15A60);
    swift_storeEnumTagMultiPayload();
    sub_2820(&qword_21010, &qword_15A30);
    sub_A414();
    sub_A300();
    v24 = v61;
    sub_144BC();

    sub_68C8(v23, &qword_21050, &qword_15A60);
  }

  else if (v17 == enum case for AsyncIconImagePhase.failure(_:))
  {
    (*(v12 + 8))(v14, v11);
    v25 = *(sub_143FC() + 20);
    v26 = enum case for RoundedCornerStyle.continuous(_:);
    v27 = sub_1449C();
    v28 = v54;
    (*(*(v27 - 8) + 104))(&v54[v25], v26, v27);
    __asm { FMOV            V0.2D, #8.0 }

    *v28 = _Q0;
    v34 = sub_1464C();
    *(v28 + *(sub_2820(&qword_21080, &qword_15A78) + 36)) = v34;
    sub_1479C();
    sub_143CC();
    v35 = (v28 + *(sub_2820(&qword_21070, &qword_15A70) + 36));
    v36 = v81;
    *v35 = v80;
    v35[1] = v36;
    v35[2] = v82;
    v37 = sub_1479C();
    v39 = v38;
    sub_98F8(&v66);
    v41 = v69;
    v40 = v70;
    v43 = v69;
    v42 = v70;
    v71[3] = v69;
    v71[4] = v70;
    v45 = v67;
    v44 = v68;
    v47 = v67;
    v46 = v68;
    v71[1] = v67;
    v71[2] = v68;
    v48 = v66;
    v71[0] = v66;
    *&v72 = v37;
    *(&v72 + 1) = v39;
    v49 = (v28 + *(v56 + 36));
    *v49 = v66;
    v49[1] = v45;
    v50 = v72;
    v49[4] = v40;
    v49[5] = v50;
    v49[2] = v44;
    v49[3] = v41;
    v76 = v43;
    v77 = v42;
    v74 = v47;
    v75 = v46;
    v73 = v48;
    v78 = v37;
    v79 = v39;
    sub_6860(v71, &v65, &qword_21098, &qword_15A80);
    sub_68C8(&v73, &qword_21098, &qword_15A80);
    sub_6860(v28, v5, &qword_21060, &qword_15A68);
    swift_storeEnumTagMultiPayload();
    sub_2820(&qword_20FC0, &qword_15A08);
    sub_A0AC();
    sub_A4A0();
    v51 = v57;
    sub_144BC();
    sub_6860(v51, v63, &qword_21050, &qword_15A60);
    swift_storeEnumTagMultiPayload();
    sub_2820(&qword_21010, &qword_15A30);
    sub_A414();
    sub_A300();
    v24 = v61;
    sub_144BC();
    sub_68C8(v51, &qword_21050, &qword_15A60);
    sub_68C8(v28, &qword_21060, &qword_15A68);
  }

  else if (v17 == enum case for AsyncIconImagePhase.unfetched(_:))
  {
    LOBYTE(v71[0]) = 0;
    sub_144BC();
    *v63 = v73;
    swift_storeEnumTagMultiPayload();
    sub_2820(&qword_21010, &qword_15A30);
    sub_A414();
    sub_A300();
    v24 = v61;
    sub_144BC();
  }

  else
  {
    LOBYTE(v71[0]) = 1;
    sub_144BC();
    *v63 = v73;
    swift_storeEnumTagMultiPayload();
    sub_2820(&qword_21010, &qword_15A30);
    sub_A414();
    sub_A300();
    v24 = v61;
    sub_144BC();
    (*(v12 + 8))(v14, v11);
  }

  sub_A838(v24, v64);
}

double sub_98F8@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1469C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1497C();
  sub_1496C();
  sub_1492C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_146AC();
  (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
  v6 = sub_146BC();

  (*(v3 + 8))(v5, v2);
  v7 = sub_1467C();
  sub_1479C();
  sub_143CC();

  *&v10[40] = v13;
  *&v10[24] = v12;
  *&v10[8] = v11;
  v8 = *&v10[18];
  *(a1 + 26) = *&v10[2];
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 42) = v8;
  result = *&v10[34];
  *(a1 + 58) = *&v10[34];
  *(a1 + 72) = *&v10[48];
  return result;
}

uint64_t sub_9B08@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = objc_allocWithZone(ISIcon);
  v6 = sub_1487C();
  [v5 initWithBundleIdentifier:v6];

  [objc_allocWithZone(ISImageDescriptor) initWithSize:80.0 scale:{80.0, sub_9CB8(v3, v4)}];
  sub_2820(&qword_20F98, &qword_159F8);
  sub_9F94();
  sub_1435C();
  v7 = sub_1478C();
  v9 = v8;
  v10 = a1 + *(sub_2820(&qword_21018, &qword_15A38) + 36);
  sub_8C20(v3, v4, v10);
  v11 = (v10 + *(sub_2820(&qword_21020, &qword_15A40) + 36));
  *v11 = v7;
  v11[1] = v9;
  v12 = sub_143EC();
  v13 = sub_1458C();
  result = sub_2820(&qword_21028, &qword_15A48);
  v15 = a1 + *(result + 36);
  *v15 = v12;
  *(v15 + 8) = v13;
  return result;
}

double sub_9CB8(uint64_t a1, char a2)
{
  v4 = sub_1446C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    return *&a1;
  }

  sub_149CC();
  v9 = sub_1457C();
  sub_1437C();

  sub_1445C();
  swift_getAtKeyPath();
  sub_A37C(a1, 0);
  (*(v5 + 8))(v7, v4);
  return *&v10[1];
}

unint64_t sub_9E54()
{
  result = qword_20F90;
  if (!qword_20F90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_20F90);
  }

  return result;
}

__n128 sub_9ED4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_9EE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_9F28(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_9F94()
{
  result = qword_20FA0;
  if (!qword_20FA0)
  {
    sub_56B4(&qword_20F98, &qword_159F8);
    sub_A020();
    sub_A300();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20FA0);
  }

  return result;
}

unint64_t sub_A020()
{
  result = qword_20FA8;
  if (!qword_20FA8)
  {
    sub_56B4(&qword_20FB0, &qword_15A00);
    sub_A0AC();
    sub_A130();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20FA8);
  }

  return result;
}

unint64_t sub_A0AC()
{
  result = qword_20FB8;
  if (!qword_20FB8)
  {
    sub_56B4(&qword_20FC0, &qword_15A08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20FB8);
  }

  return result;
}

unint64_t sub_A130()
{
  result = qword_20FC8;
  if (!qword_20FC8)
  {
    sub_56B4(&qword_20FD0, &qword_15A10);
    sub_A1BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20FC8);
  }

  return result;
}

unint64_t sub_A1BC()
{
  result = qword_20FD8;
  if (!qword_20FD8)
  {
    sub_56B4(&qword_20FE0, &qword_15A18);
    sub_A248();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20FD8);
  }

  return result;
}

unint64_t sub_A248()
{
  result = qword_20FE8;
  if (!qword_20FE8)
  {
    sub_56B4(&qword_20FF0, &qword_15A20);
    sub_5740(&qword_20FF8, &qword_21000, &qword_15A28, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20FE8);
  }

  return result;
}

unint64_t sub_A300()
{
  result = qword_21008;
  if (!qword_21008)
  {
    sub_56B4(&qword_21010, &qword_15A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_21008);
  }

  return result;
}

uint64_t sub_A37C(uint64_t result, uint64_t a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

unint64_t sub_A388()
{
  result = qword_21040;
  if (!qword_21040)
  {
    sub_56B4(&qword_21038, &qword_15A58);
    sub_A414();
    sub_A300();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_21040);
  }

  return result;
}

unint64_t sub_A414()
{
  result = qword_21048;
  if (!qword_21048)
  {
    sub_56B4(&qword_21050, &qword_15A60);
    sub_A0AC();
    sub_A4A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_21048);
  }

  return result;
}

unint64_t sub_A4A0()
{
  result = qword_21058;
  if (!qword_21058)
  {
    sub_56B4(&qword_21060, &qword_15A68);
    sub_A558();
    sub_5740(&qword_21090, &qword_21098, &qword_15A80, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_21058);
  }

  return result;
}

unint64_t sub_A558()
{
  result = qword_21068;
  if (!qword_21068)
  {
    sub_56B4(&qword_21070, &qword_15A70);
    sub_A5E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_21068);
  }

  return result;
}

unint64_t sub_A5E4()
{
  result = qword_21078;
  if (!qword_21078)
  {
    sub_56B4(&qword_21080, &qword_15A78);
    sub_A69C();
    sub_5740(&qword_20FF8, &qword_21000, &qword_15A28, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_21078);
  }

  return result;
}

unint64_t sub_A69C()
{
  result = qword_21088;
  if (!qword_21088)
  {
    sub_143FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_21088);
  }

  return result;
}

unint64_t sub_A6F4()
{
  result = qword_210A8;
  if (!qword_210A8)
  {
    sub_56B4(&qword_21030, &qword_15A50);
    sub_A780();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_210A8);
  }

  return result;
}

unint64_t sub_A780()
{
  result = qword_210B0;
  if (!qword_210B0)
  {
    sub_56B4(&qword_210A0, &qword_15A88);
    sub_5740(&qword_210B8, &qword_210C0, &qword_15A90, &protocol conformance descriptor for AsyncIconImage<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_210B0);
  }

  return result;
}

uint64_t sub_A838(uint64_t a1, uint64_t a2)
{
  v4 = sub_2820(&qword_21038, &qword_15A58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_A8AC()
{
  result = qword_210D8;
  if (!qword_210D8)
  {
    sub_56B4(&qword_21028, &qword_15A48);
    sub_A938();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_210D8);
  }

  return result;
}

unint64_t sub_A938()
{
  result = qword_210E0;
  if (!qword_210E0)
  {
    sub_56B4(&qword_21018, &qword_15A38);
    sub_5740(&qword_210E8, &qword_210F0, &qword_15AA8, &protocol conformance descriptor for AsyncIconImage<A>);
    sub_5740(&qword_210F8, &qword_21020, &qword_15A40, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_210E0);
  }

  return result;
}

uint64_t sub_AA4C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_143BC();
  sub_6A5C(v3, a2);
  sub_5CAC(v3, a2);
  sub_1438C();
  return sub_143AC();
}

uint64_t sub_AB04(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_5AD0();
  sub_1431C();

  return *(v2 + *a2);
}

uint64_t sub_AB9C(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_5AD0();
    sub_1430C();
  }

  return result;
}

uint64_t sub_ACB8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_5AD0();
  sub_1431C();

  v4 = (v2 + *a2);
  v5 = *v4;
  sub_2868(*v4, v4[1], v4[2], v4[3]);
  return v5;
}

void sub_AD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v12 = (v7 + *a5);
  v13 = *v12;
  v14 = v12[1];
  v16 = v12[2];
  v15 = v12[3];
  sub_2868(*v12, v14, v16, v15);
  v22 = a4;
  LOBYTE(a4) = sub_E028(v13, v14, v16, v15, a1, a2, a3, a4);
  sub_5860(v13, v14, v16, v15);
  if (a4)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_5AD0();
    sub_1430C();
    sub_5860(a1, a2, a3, v22);
  }

  else
  {
    v18 = *v12;
    v19 = v12[1];
    v20 = v12[2];
    v21 = v12[3];
    *v12 = a1;
    v12[1] = a2;
    v12[2] = a3;
    v12[3] = v22;

    sub_5860(v18, v19, v20, v21);
  }
}

void sub_AF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6 = (a1 + *a6);
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  *v6 = a2;
  v6[1] = a3;
  v6[2] = a4;
  v6[3] = a5;
  sub_2868(a2, a3, a4, a5);
  sub_5860(v7, v8, v9, v10);
}

uint64_t sub_AFE0(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_5AD0();
  sub_1431C();
}

uint64_t sub_B07C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  if (sub_DEC4(*(v4 + *a2), a1))
  {
    *(v4 + v6) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_5AD0();
    sub_1430C();
  }
}

id sub_B194()
{
  v1 = sub_2820(&qword_20F08, &qword_15C80);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - v2;
  v0[OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__changingComposingAppAvailability] = 0;
  v0[OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__changingTextingAppAvailability] = 0;
  v4 = &v0[OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__defaultComposingApp];
  *v4 = 0u;
  v4[1] = 0u;
  v5 = &v0[OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__defaultTextingApp];
  *v5 = 0u;
  v5[1] = 0u;
  *&v0[OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__availableComposingApps] = &_swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__availableTextingApps] = &_swiftEmptyArrayStorage;
  v6 = OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel_launchServices;
  _s19LaunchServicesActorCMa();
  v7 = swift_allocObject();
  swift_defaultActor_initialize();
  *&v0[v6] = v7;
  sub_1432C();
  v8 = type metadata accessor for DefaultMessagingAppsModel(0);
  v16.receiver = v0;
  v16.super_class = v8;
  v9 = objc_msgSendSuper2(&v16, "init");
  v10 = sub_1499C();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v9;
  v12 = v9;
  sub_12438(0, 0, v3, &unk_15F50, v11);

  v13 = [objc_opt_self() defaultWorkspace];
  if (v13)
  {
    v14 = v13;
    [v13 addObserver:v12];
  }

  return v12;
}

id sub_B430()
{
  v1 = [objc_opt_self() defaultWorkspace];
  if (v1)
  {
    v2 = v1;
    [v1 removeObserver:v0];
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for DefaultMessagingAppsModel(0);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for DefaultMessagingAppsModel(uint64_t a1)
{
  result = qword_21168;
  if (!qword_21168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_B65C(uint64_t a1)
{
  result = sub_1433C();
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

uint64_t sub_B724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[8] = a4;
  sub_2820(&qword_20F08, &qword_15C80);
  v8[13] = swift_task_alloc();
  v8[14] = sub_1497C();
  v8[15] = sub_1496C();
  v10 = sub_1492C();
  v8[16] = v10;
  v8[17] = v9;

  return _swift_task_switch(sub_B800, v10, v9);
}

uint64_t sub_B800()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v0[18] = *(Strong + OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel_launchServices);
    v2 = Strong;

    v3 = swift_task_alloc();
    v0[19] = v3;
    *v3 = v0;
    v3[1] = sub_BA28;
    v4 = v0[11];
    v5 = v0[12];
    v7 = v0[9];
    v6 = v0[10];

    return sub_F370(v7, v6, v4, v5, 0);
  }

  else
  {

    v9 = v0[13];
    v10 = sub_1499C();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = swift_allocObject();
    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v13 = sub_1496C();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = &protocol witness table for MainActor;
    v14[4] = v11;

    sub_12438(0, 0, v9, &unk_15CA8, v14);

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_BA28()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return _swift_task_switch(sub_BB6C, v3, v2);
}

uint64_t sub_BB6C(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 104);
  v4 = sub_1499C();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v7 = sub_1496C();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v5;

  sub_12438(0, 0, v3, &unk_15CA8, v8);

  v9 = *(v2 + 8);

  return v9();
}

uint64_t sub_BCD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_1497C();
  v4[6] = sub_1496C();
  v6 = sub_1492C();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_BD70, v6, v5);
}

uint64_t sub_BD70()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v0[10] = *(Strong + OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel_launchServices);

    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_BE7C;

    return sub_E69C(0);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_BE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *v4;
  v6[12] = a1;
  v6[13] = a2;
  v6[14] = a3;
  v6[15] = a4;

  v7 = v5[8];
  v8 = v5[7];

  return _swift_task_switch(sub_BFCC, v8, v7);
}

uint64_t sub_BFCC(uint64_t a1, uint64_t a2)
{
  v3 = v2[14];
  v4 = v2[15];
  v6 = v2[12];
  v5 = v2[13];
  v7 = v2[9];

  sub_AC7C(v6, v5, v3, v4);

  v8 = v2[1];

  return v8();
}

uint64_t sub_C060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[8] = a4;
  sub_2820(&qword_20F08, &qword_15C80);
  v8[13] = swift_task_alloc();
  v8[14] = sub_1497C();
  v8[15] = sub_1496C();
  v10 = sub_1492C();
  v8[16] = v10;
  v8[17] = v9;

  return _swift_task_switch(sub_C13C, v10, v9);
}

uint64_t sub_C13C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v0[18] = *(Strong + OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel_launchServices);
    v2 = Strong;

    v3 = swift_task_alloc();
    v0[19] = v3;
    *v3 = v0;
    v3[1] = sub_C364;
    v4 = v0[11];
    v5 = v0[12];
    v7 = v0[9];
    v6 = v0[10];

    return sub_F370(v7, v6, v4, v5, 1);
  }

  else
  {

    v9 = v0[13];
    v10 = sub_1499C();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = swift_allocObject();
    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v13 = sub_1496C();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = &protocol witness table for MainActor;
    v14[4] = v11;

    sub_12438(0, 0, v9, &unk_15C90, v14);

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_C364()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return _swift_task_switch(sub_C4A8, v3, v2);
}

uint64_t sub_C4A8(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 104);
  v4 = sub_1499C();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v7 = sub_1496C();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v5;

  sub_12438(0, 0, v3, &unk_15C90, v8);

  v9 = *(v2 + 8);

  return v9();
}

uint64_t sub_C614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_1497C();
  v4[6] = sub_1496C();
  v6 = sub_1492C();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_C6AC, v6, v5);
}

uint64_t sub_C6AC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v0[10] = *(Strong + OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel_launchServices);

    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_C7B8;

    return sub_E69C(1);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_C7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *v4;
  v6[12] = a1;
  v6[13] = a2;
  v6[14] = a3;
  v6[15] = a4;

  v7 = v5[8];
  v8 = v5[7];

  return _swift_task_switch(sub_C908, v8, v7);
}

uint64_t sub_C908(uint64_t a1, uint64_t a2)
{
  v3 = v2[14];
  v4 = v2[15];
  v6 = v2[12];
  v5 = v2[13];
  v7 = v2[9];

  sub_AD54(v6, v5, v3, v4);

  v8 = v2[1];

  return v8();
}

uint64_t sub_C99C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_5DFC;

  return sub_CA2C();
}

uint64_t sub_CA2C()
{
  v1[18] = v0;
  v1[19] = sub_1497C();
  v1[20] = sub_1496C();
  v3 = sub_1492C();
  v1[21] = v3;
  v1[22] = v2;

  return _swift_task_switch(sub_CAC8, v3, v2);
}

uint64_t sub_CAC8()
{
  v1 = *(*(v0 + 144) + OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel_launchServices);
  *(v0 + 184) = v1;
  return _swift_task_switch(sub_CAF4, v1, 0);
}

uint64_t sub_CAF4()
{
  v1 = objc_opt_self();
  *(v0 + 192) = v1;
  v2 = [v1 defaultWorkspace];
  if (v2 && (v3 = v2, v4 = [v2 canChangeDefaultAppForCategory:3], v3, v4))
  {
    v5 = [objc_opt_self() sharedConnection];
    if (!v5)
    {
      __break(1u);
      return _swift_task_switch(v5, v6, v7);
    }

    v8 = v5;
    v9 = [v5 isDefaultMessagingAppModificationAllowed];

    if (v9)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  *(v0 + 240) = v10;
  v6 = *(v0 + 184);
  v5 = sub_CBF4;
  v7 = 0;

  return _swift_task_switch(v5, v6, v7);
}

id sub_CBF4()
{
  v1 = [*(v0 + 192) defaultWorkspace];
  if (v1 && (v2 = v1, v3 = [v1 canChangeDefaultAppForCategory:10], v2, v3))
  {
    result = [objc_opt_self() sharedConnection];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v5 = result;
    v6 = [result isDefaultMessagingAppModificationAllowed];

    if (v6)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  *(v0 + 241) = v7;
  v8 = swift_task_alloc();
  *(v0 + 200) = v8;
  *v8 = v0;
  v8[1] = sub_CD1C;

  return sub_E69C(0);
}

uint64_t sub_CD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v5[2] = v4;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = a3;
  v5[6] = a4;
  v6 = *v4;

  v7 = swift_task_alloc();
  v5[26] = v7;
  *v7 = v6;
  v7[1] = sub_CE6C;

  return sub_E69C(1);
}

uint64_t sub_CE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v5[7] = v4;
  v5[8] = a1;
  v5[9] = a2;
  v5[10] = a3;
  v5[11] = a4;
  v6 = *v4;

  v7 = swift_task_alloc();
  v5[27] = v7;
  *v7 = v6;
  v7[1] = sub_CFBC;

  return sub_ECA4(0);
}

uint64_t sub_CFBC(uint64_t a1)
{
  v2 = *v1;
  v2[12] = v1;
  v2[13] = a1;
  v3 = *v1;

  v4 = swift_task_alloc();
  v2[28] = v4;
  *v4 = v3;
  v4[1] = sub_D104;

  return sub_ECA4(1);
}

uint64_t sub_D104(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 112) = v1;
  *(v2 + 120) = a1;

  return _swift_task_switch(sub_D204, 0, 0);
}

uint64_t sub_D204(uint64_t a1)
{
  *(v1 + 232) = sub_1496C();
  v3 = sub_1492C();

  return _swift_task_switch(sub_D290, v3, v2);
}

uint64_t sub_D290(uint64_t a1, uint64_t a2)
{

  sub_1496C();
  sub_1492C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(v2 + 240);
  v4 = *(v2 + 144);
  if (*(v4 + OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__changingComposingAppAvailability) != v3)
  {
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    *(v2 + 128) = v4;
    sub_5AD0();
    sub_1430C();

    v4 = *(v2 + 144);
  }

  v6 = *(v2 + 241);
  if (*(v4 + OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__changingTextingAppAvailability) != v6)
  {
    swift_getKeyPath();
    v7 = swift_task_alloc();
    *(v7 + 16) = v4;
    *(v7 + 24) = v6;
    *(v2 + 136) = v4;
    sub_5AD0();
    sub_1430C();
  }

  v8 = *(v2 + 120);
  v9 = *(v2 + 104);
  v10 = *(v2 + 64);
  v11 = *(v2 + 72);
  v12 = *(v2 + 80);
  v13 = *(v2 + 88);
  sub_AC7C(*(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48));
  sub_AD54(v10, v11, v12, v13);
  sub_AFA4(v9);
  sub_B054(v8);

  v14 = *(v2 + 168);
  v15 = *(v2 + 176);

  return _swift_task_switch(sub_D4E4, v14, v15);
}

uint64_t sub_D4E4(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 8);

  return v3();
}

uint64_t getEnumTagSinglePayload for DefaultMessagingAppsModel.MessagingMethod(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DefaultMessagingAppsModel.MessagingMethod(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for DefaultMessagingAppsModel.MessagingMethod.Availability(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DefaultMessagingAppsModel.MessagingMethod.Availability(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_D818()
{
  result = qword_21178;
  if (!qword_21178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_21178);
  }

  return result;
}

Swift::Int sub_D880()
{
  v1 = *v0;
  sub_14A6C();
  sub_14A7C(v1);
  return sub_14A8C();
}

Swift::Int sub_D8F4(uint64_t a1)
{
  v2 = *v1;
  sub_14A6C();
  sub_14A7C(v2);
  return sub_14A8C();
}

uint64_t sub_D938(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x676E6974786574;
  }

  else
  {
    v3 = 0x6E69736F706D6F63;
  }

  if (v2)
  {
    v4 = 0xE900000000000067;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x676E6974786574;
  }

  else
  {
    v5 = 0x6E69736F706D6F63;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE900000000000067;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_14A5C();
  }

  return v8 & 1;
}

Swift::Int sub_D9E4()
{
  sub_14A6C();
  sub_148DC();

  return sub_14A8C();
}

uint64_t sub_DA6C(uint64_t a1)
{
  sub_148DC();
}

Swift::Int sub_DAE0(uint64_t a1)
{
  sub_14A6C();
  sub_148DC();

  return sub_14A8C();
}

uint64_t sub_DB64@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1CEA8;
  v8._object = v3;
  v5 = sub_14A4C(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_DBC4(uint64_t *a1@<X8>)
{
  v2 = 0x6E69736F706D6F63;
  if (*v1)
  {
    v2 = 0x676E6974786574;
  }

  v3 = 0xE900000000000067;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_DC08()
{
  if (*v0)
  {
    return 0x676E6974786574;
  }

  else
  {
    return 0x6E69736F706D6F63;
  }
}

unint64_t sub_DC4C()
{
  result = qword_21180;
  if (!qword_21180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_21180);
  }

  return result;
}

uint64_t sub_DCA0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_DCDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_6C00;

  return sub_C614(a1, v4, v5, v6);
}

uint64_t sub_DD90()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_DDD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_6C00;

  return sub_BCD8(a1, v4, v5, v6);
}

uint64_t sub_DEC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (sub_14A5C() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v7 && v6 == v8;
      if (!v10 && (sub_14A5C() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_DFE4(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
}

uint64_t sub_E028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    if (!a6)
    {
      v16 = 0;
      return v16 & 1;
    }

    goto LABEL_12;
  }

  if (!a6)
  {
    sub_2868(a1, a2, a3, a4);
LABEL_12:
    sub_2868(a5, a6, a7, a8);
    sub_5860(a1, a2, a3, a4);
    v17 = a5;
    v18 = a6;
    v19 = a7;
    v20 = a8;
LABEL_13:
    sub_5860(v17, v18, v19, v20);
    v16 = 1;
    return v16 & 1;
  }

  if ((a1 != a5 || a2 != a6) && (sub_14A5C() & 1) == 0)
  {
    sub_2868(a1, a2, a3, a4);
    sub_2868(a1, a2, a3, a4);
    sub_2868(a5, a6, a7, a8);

    v17 = a1;
    v18 = a2;
    v19 = a3;
    v20 = a4;
    goto LABEL_13;
  }

  if (a3 == a7 && a4 == a8)
  {
    sub_2868(a1, a2, a3, a8);
    sub_2868(a1, a2, a3, a8);
    sub_2868(a5, a6, a3, a8);

    sub_5860(a1, a2, a3, a8);
    v16 = 0;
  }

  else
  {
    v21 = sub_14A5C();
    sub_2868(a1, a2, a3, a4);
    sub_2868(a1, a2, a3, a4);
    sub_2868(a5, a6, a7, a8);

    sub_5860(a1, a2, a3, a4);
    v16 = v21 ^ 1;
  }

  return v16 & 1;
}

uint64_t sub_E320()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_E394@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

Swift::Int sub_E3A0()
{
  sub_14A6C();
  sub_148DC();
  sub_148DC();
  return sub_14A8C();
}

uint64_t sub_E408(uint64_t a1)
{
  sub_148DC();

  return sub_148DC();
}

Swift::Int sub_E458(uint64_t a1)
{
  sub_14A6C();
  sub_148DC();
  sub_148DC();
  return sub_14A8C();
}

uint64_t sub_E4BC(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_14A5C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_14A5C();
    }
  }

  return result;
}

uint64_t sub_E5A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2820(&qword_20F08, &qword_15C80);
  __chkstk_darwin(v7 - 8);
  v9 = &v14 - v8;
  v10 = sub_1499C();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;
  v12 = a1;
  sub_12438(0, 0, v9, a5, v11);
}

uint64_t sub_E69C(char a1)
{
  *(v2 + 24) = a1;

  return _swift_task_switch(sub_E72C, v1, 0);
}

uint64_t sub_E72C()
{
  v51 = v0;
  if (qword_20E18 != -1)
  {
    swift_once();
  }

  v1 = sub_143BC();
  sub_5CAC(v1, qword_21FB8);
  v2 = sub_1439C();
  v3 = sub_149DC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 24);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v50 = v6;
    *v5 = 136446210;
    if (v4)
    {
      v7 = 0x676E6974786574;
    }

    else
    {
      v7 = 0x6E69736F706D6F63;
    }

    if (v4)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = 0xE900000000000067;
    }

    v9 = sub_5EF0(v7, v8, &v50);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v2, v3, "Fetching default app for %{public}s", v5, 0xCu);
    sub_5FBC(v6);
  }

  v10 = [objc_opt_self() defaultWorkspace];
  if (!v10)
  {
LABEL_27:
    v31 = sub_1439C();
    v41 = sub_149BC();
    if (os_log_type_enabled(v31, v41))
    {
      v42 = *(v0 + 24);
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v50 = v44;
      *v43 = 136446210;
      if (v42)
      {
        v45 = 0x676E6974786574;
      }

      else
      {
        v45 = 0x6E69736F706D6F63;
      }

      if (v42)
      {
        v46 = 0xE700000000000000;
      }

      else
      {
        v46 = 0xE900000000000067;
      }

      v47 = sub_5EF0(v45, v46, &v50);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_0, v31, v41, "Couldn’t fetch default %{public}s app: missing workspace or bundle ID", v43, 0xCu);
      sub_5FBC(v44);
    }

    goto LABEL_35;
  }

  if (*(v0 + 24))
  {
    v11 = 10;
  }

  else
  {
    v11 = 3;
  }

  *(v0 + 16) = 0;
  v12 = v10;
  v13 = [v10 defaultApplicationForCategory:v11 error:v0 + 16];

  v14 = *(v0 + 16);
  if (v13)
  {
    v15 = v14;
    v16 = v13;
    v17 = [v16 bundleIdentifier];
    if (v17)
    {
      v18 = v17;
      v19 = sub_1488C();
      v21 = v20;

      v22 = [v16 localizedName];
      v23 = sub_1488C();
      v25 = v24;

      v26 = v25;
      v27 = v23;
      v28 = v21;
      v29 = v19;
      goto LABEL_37;
    }

    goto LABEL_27;
  }

  v30 = v14;
  sub_1429C();

  swift_willThrow();
  swift_errorRetain();
  v31 = sub_1439C();
  v32 = sub_149BC();

  if (!os_log_type_enabled(v31, v32))
  {

    goto LABEL_36;
  }

  v33 = *(v0 + 24);
  v34 = swift_slowAlloc();
  v35 = swift_slowAlloc();
  v36 = swift_slowAlloc();
  v50 = v36;
  *v34 = 136446466;
  if (v33)
  {
    v37 = 0x676E6974786574;
  }

  else
  {
    v37 = 0x6E69736F706D6F63;
  }

  if (v33)
  {
    v38 = 0xE700000000000000;
  }

  else
  {
    v38 = 0xE900000000000067;
  }

  v39 = sub_5EF0(v37, v38, &v50);

  *(v34 + 4) = v39;
  *(v34 + 12) = 2112;
  swift_errorRetain();
  v40 = _swift_stdlib_bridgeErrorToNSError();
  *(v34 + 14) = v40;
  *v35 = v40;
  _os_log_impl(&dword_0, v31, v32, "Couldn’t fetch default %{public}s app: %@", v34, 0x16u);
  sub_68C8(v35, &unk_21310, &unk_15F40);

  sub_5FBC(v36);

LABEL_35:

LABEL_36:
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v26 = 0;
LABEL_37:
  v48 = *(v0 + 8);

  return v48(v29, v28, v27, v26);
}

uint64_t sub_ECA4(char a1)
{
  *(v2 + 88) = a1;
  v3 = sub_2820(&qword_212C8, &qword_15EF8);
  *(v2 + 64) = v3;
  *(v2 + 72) = *(v3 - 8);
  *(v2 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_ED70, v1, 0);
}

uint64_t sub_ED70()
{
  v53 = v0;
  if (qword_20E18 != -1)
  {
    swift_once();
  }

  v1 = sub_143BC();
  sub_5CAC(v1, qword_21FB8);
  v2 = sub_1439C();
  v3 = sub_149DC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 88);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v52 = v6;
    *v5 = 136446210;
    if (v4)
    {
      v7 = 0x676E6974786574;
    }

    else
    {
      v7 = 0x6E69736F706D6F63;
    }

    if (v4)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = 0xE900000000000067;
    }

    v9 = sub_5EF0(v7, v8, &v52);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v2, v3, "Fetching available apps for %{public}s", v5, 0xCu);
    sub_5FBC(v6);
  }

  if (*(v0 + 88))
  {
    v10 = 10;
  }

  else
  {
    v10 = 3;
  }

  v11 = [objc_opt_self() enumeratorForViableDefaultAppsForCategory:v10 options:0];
  v12 = sub_10068();

  v13 = v12;
  v14 = v12[2];
  if (v14)
  {
    v15 = (v13 + 4);
    if (*(v0 + 88))
    {
      v16 = 0x676E6974786574;
    }

    else
    {
      v16 = 0x6E69736F706D6F63;
    }

    v49 = v16;
    v17 = 0xE700000000000000;
    v18 = &_swiftEmptyArrayStorage;
    if ((*(v0 + 88) & 1) == 0)
    {
      v17 = 0xE900000000000067;
    }

    v48 = v17;
    do
    {
      sub_6114(v15, v0 + 16);
      sub_102C0();
      if (swift_dynamicCast())
      {
        v19 = *(v0 + 48);
        v20 = [v19 bundleIdentifier];
        if (v20)
        {
          v21 = v20;
          v50 = sub_1488C();
          v23 = v22;

          v24 = [v19 localizedName];
          v25 = sub_1488C();
          v27 = v26;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_FE9C(0, *(v18 + 2) + 1, 1, v18);
          }

          v29 = *(v18 + 2);
          v28 = *(v18 + 3);
          v30 = v18;
          if (v29 >= v28 >> 1)
          {
            v30 = sub_FE9C((v28 > 1), v29 + 1, 1, v18);
          }

          *(v30 + 2) = v29 + 1;
          v18 = v30;
          v31 = &v30[32 * v29];
          *(v31 + 4) = v50;
          *(v31 + 5) = v23;
          *(v31 + 6) = v25;
          *(v31 + 7) = v27;
        }

        else
        {

          v32 = sub_1439C();
          v33 = sub_149BC();

          if (os_log_type_enabled(v32, v33))
          {
            v51 = v33;
            v34 = swift_slowAlloc();
            v52 = swift_slowAlloc();
            *v34 = 136446466;
            v35 = sub_5EF0(v49, v48, &v52);

            *(v34 + 4) = v35;
            *(v34 + 12) = 2080;
            v36 = [v19 bundleIdentifier];
            if (v36)
            {
              v37 = v36;
              v38 = sub_1488C();
              v40 = v39;
            }

            else
            {
              v40 = 0xE300000000000000;
              v38 = 7104878;
            }

            v41 = sub_5EF0(v38, v40, &v52);

            *(v34 + 14) = v41;
            _os_log_impl(&dword_0, v32, v51, "Couldn’t initialize %{public}s app: %s", v34, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }
        }
      }

      v15 += 32;
      --v14;
    }

    while (v14);
  }

  else
  {

    v18 = &_swiftEmptyArrayStorage;
  }

  v42 = *(v0 + 72);
  v43 = *(v0 + 80);
  v44 = *(v0 + 64);
  *(v0 + 56) = v18;
  swift_getKeyPath();
  sub_1428C();
  sub_2820(&qword_212D8, &qword_15F20);
  sub_5740(&qword_212E0, &qword_212D8, &qword_15F20, &protocol conformance descriptor for [A]);
  sub_5740(&qword_212E8, &qword_212C8, &qword_15EF8, &protocol conformance descriptor for KeyPathComparator<A>);
  v45 = sub_148FC();
  (*(v42 + 8))(v43, v44);

  v46 = *(v0 + 8);

  return v46(v45);
}

uint64_t sub_F370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 233) = a5;
  *(v6 + 160) = a4;
  *(v6 + 168) = v5;
  *(v6 + 144) = a1;
  *(v6 + 152) = a2;
  v7 = sub_2820(&qword_212B8, &qword_15EE8);
  *(v6 + 176) = v7;
  *(v6 + 184) = *(v7 - 8);
  *(v6 + 192) = swift_task_alloc();

  return _swift_task_switch(sub_F444, v5, 0);
}

uint64_t sub_F444()
{
  v26 = v0;
  if (qword_20E18 != -1)
  {
    swift_once();
  }

  v1 = sub_143BC();
  *(v0 + 200) = sub_5CAC(v1, qword_21FB8);
  v2 = sub_1439C();
  v3 = sub_149DC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 233);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v25 = v6;
    *v5 = 136446210;
    if (v4)
    {
      v7 = 0x676E6974786574;
    }

    else
    {
      v7 = 0x6E69736F706D6F63;
    }

    if (v4)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = 0xE900000000000067;
    }

    v9 = sub_5EF0(v7, v8, &v25);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v2, v3, "Setting default app for %{public}s", v5, 0xCu);
    sub_5FBC(v6);
  }

  v10 = *(v0 + 144);
  v11 = *(v0 + 152);
  objc_allocWithZone(LSApplicationRecord);

  v12 = sub_1367C(v10, v11, 1);
  *(v0 + 208) = v12;
  v15 = v12;
  v16 = [objc_opt_self() defaultWorkspace];
  *(v0 + 216) = v16;
  if (v16)
  {
    v17 = v16;
    v18 = *(v0 + 184);
    v19 = *(v0 + 192);
    v20 = *(v0 + 176);
    v21 = 3;
    if (*(v0 + 233))
    {
      v21 = 10;
    }

    v24 = v21;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 232;
    *(v0 + 24) = sub_F96C;
    swift_continuation_init();
    *(v0 + 136) = v20;
    v22 = sub_FFA8((v0 + 112));
    v23 = v15;
    sub_2820(&qword_212C0, &qword_15EF0);
    sub_1493C();
    (*(v18 + 32))(v22, v19, v20);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_FCF0;
    *(v0 + 104) = &unk_1D4E0;
    [v17 setDefaultApplicationForCategory:v24 toApplicationRecord:v23 completionHandler:?];
    (*(v18 + 8))(v22, v20);

    return _swift_continuation_await(v0 + 16);
  }

  else
  {

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_F96C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  v3 = *(v1 + 168);
  if (v2)
  {
    v4 = sub_FAFC;
  }

  else
  {
    v4 = sub_FA8C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_FA8C()
{
  v1 = v0[26];
  v2 = v0[27];

  v3 = v0[1];

  return v3();
}

uint64_t sub_FAFC()
{
  v15 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 208);
  swift_willThrow();

  v3 = sub_1439C();
  v4 = sub_149BC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 233);
    v7 = *(v0 + 144);
    v6 = *(v0 + 152);
    v8 = swift_slowAlloc();
    v14[0] = swift_slowAlloc();
    *v8 = 136446466;
    if (v5)
    {
      v9 = 0x676E6974786574;
    }

    else
    {
      v9 = 0x6E69736F706D6F63;
    }

    if (v5)
    {
      v10 = 0xE700000000000000;
    }

    else
    {
      v10 = 0xE900000000000067;
    }

    v11 = sub_5EF0(v9, v10, v14);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_5EF0(v7, v6, v14);
    _os_log_impl(&dword_0, v3, v4, "Couldn’t change default %{public}s app: %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v12 = *(v0 + 8);

  return v12();
}

void sub_FCF0(uint64_t a1, char a2, void *a3)
{
  sub_10024((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    sub_2820(&qword_212B8, &qword_15EE8);
    sub_1494C();
  }

  else
  {
    sub_2820(&qword_212B8, &qword_15EE8);
    sub_1495C();
  }
}

uint64_t sub_FD94()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_FDE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_FE30(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

char *sub_FE9C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2820(&qword_212F0, &qword_15F28);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t *sub_FFA8(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void *sub_10024(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void *sub_10068()
{
  v0 = sub_142DC();
  v22 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_149AC();
  sub_1030C();
  sub_149FC();
  v3 = &_swiftEmptyArrayStorage;
  v4 = 0;
  if (v24)
  {
    v5 = (&_swiftEmptyArrayStorage + 32);
    while (1)
    {
      result = sub_10364(v23, v25);
      if (!v4)
      {
        v7 = v3[3];
        if (((v7 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_23;
        }

        v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
        if (v8 <= 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = v8;
        }

        sub_2820(&qword_21308, &qword_15F38);
        v10 = swift_allocObject();
        v11 = j__malloc_size(v10);
        v12 = v11 - 32;
        if (v11 < 32)
        {
          v12 = v11 - 1;
        }

        v13 = v12 >> 5;
        v10[2] = v9;
        v10[3] = 2 * (v12 >> 5);
        v14 = (v10 + 4);
        v15 = v3[3] >> 1;
        if (v3[2])
        {
          v16 = v3 + 4;
          if (v10 != v3 || v14 >= v16 + 32 * v15)
          {
            memmove(v10 + 4, v16, 32 * v15);
          }

          v3[2] = 0;
        }

        v5 = (v14 + 32 * v15);
        v4 = (v13 & 0x7FFFFFFFFFFFFFFFLL) - v15;

        v3 = v10;
      }

      v17 = __OFSUB__(v4--, 1);
      if (v17)
      {
        break;
      }

      sub_10364(v25, v5);
      v5 += 2;
      sub_149FC();
      if (!v24)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_18:
  (*(v22 + 8))(v2, v0);
  result = sub_68C8(v23, &qword_21300, &qword_15F30);
  v18 = v3[3];
  if (v18 < 2)
  {
    return v3;
  }

  v19 = v18 >> 1;
  v17 = __OFSUB__(v19, v4);
  v20 = v19 - v4;
  if (!v17)
  {
    v3[2] = v20;
    return v3;
  }

LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_102C0()
{
  result = qword_212D0;
  if (!qword_212D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_212D0);
  }

  return result;
}

unint64_t sub_1030C()
{
  result = qword_212F8;
  if (!qword_212F8)
  {
    sub_142DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_212F8);
  }

  return result;
}

_OWORD *sub_10364(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10378()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_6C00;

  return sub_C99C();
}

uint64_t sub_1042C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1046C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_5DFC;

  return sub_C99C();
}

uint64_t sub_10538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2820(&qword_20F20, &unk_15F70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_142BC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10664(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2820(&qword_20F20, &unk_15F70);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_142BC();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for DefaultMessagingAppsSection(uint64_t a1)
{
  result = qword_213D8;
  if (!qword_213D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_107C4(uint64_t a1)
{
  sub_10878(319);
  if (v1 <= 0x3F)
  {
    sub_142BC();
    if (v2 <= 0x3F)
    {
      sub_108D0();
      if (v3 <= 0x3F)
      {
        sub_10920(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10878(uint64_t a1)
{
  if (!qword_213E8)
  {
    sub_142BC();
    v1 = sub_149EC();
    if (!v2)
    {
      atomic_store(v1, &qword_213E8);
    }
  }
}

void sub_108D0()
{
  if (!qword_213F0)
  {
    v0 = sub_1491C();
    if (!v1)
    {
      atomic_store(v0, &qword_213F0);
    }
  }
}

void sub_10920(uint64_t a1)
{
  if (!qword_213F8)
  {
    sub_56B4(&qword_20EC0, &qword_156F0);
    v1 = sub_1475C();
    if (!v2)
    {
      atomic_store(v1, &qword_213F8);
    }
  }
}

uint64_t sub_109A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = sub_1448C();
  v25 = *(v3 - 8);
  v26 = v3;
  __chkstk_darwin(v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2820(&qword_21458, &qword_16010);
  v21 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v9 = sub_2820(&qword_21450, &qword_16008);
  v22 = *(v9 - 8);
  v23 = v9;
  __chkstk_darwin(v9);
  v11 = &v20 - v10;
  sub_1497C();
  v20 = sub_1496C();
  sub_1492C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v35 = 0;
  v36 = 0xE000000000000000;
  v12 = a1 + *(type metadata accessor for DefaultMessagingAppsSection(0) + 32);
  v13 = *(v12 + 8);
  v31 = *v12;
  v32 = v13;
  v14 = *(v12 + 32);
  v33 = *(v12 + 16);
  v34 = v14;
  sub_2820(&qword_21468, &qword_16018);
  v15 = sub_1473C();
  v31 = v27;
  v32 = v28;
  v33 = v29;
  v34 = v30;
  __chkstk_darwin(v15);
  sub_2820(&qword_20EC0, &qword_156F0);
  sub_2820(&qword_21488, &qword_16028);
  sub_11E00();
  sub_11ED8();
  sub_11CCC();
  sub_1471C();
  v16 = sub_5740(&qword_21460, &qword_21458, &qword_16010, &protocol conformance descriptor for Picker<A, B, C>);
  sub_1460C();
  (*(v21 + 8))(v8, v6);
  sub_1447C();
  v31 = v6;
  v32 = v16;
  swift_getOpaqueTypeConformance2();
  v17 = v23;
  v18 = v26;
  sub_145FC();
  (*(v25 + 8))(v5, v18);
  (*(v22 + 8))(v11, v17);
}

uint64_t sub_10DC8(uint64_t a1)
{
  sub_1497C();
  sub_1496C();
  sub_1492C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for DefaultMessagingAppsSection(0);

  sub_2820(&qword_212D8, &qword_15F20);
  sub_2820(&qword_214B0, &qword_16040);
  sub_5740(&qword_214B8, &qword_212D8, &qword_15F20, &protocol conformance descriptor for [A]);
  sub_56B4(&qword_20E28, &unk_16030);
  sub_56B4(&qword_20EC0, &qword_156F0);
  sub_5740(&qword_214A8, &qword_20E28, &unk_16030, &protocol conformance descriptor for Label<A, B>);
  sub_11E00();
  swift_getOpaqueTypeConformance2();
  sub_11FF8();
  sub_1476C();
}

uint64_t sub_10FC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = sub_2820(&qword_20E28, &unk_16030);
  v17 = *(v3 - 8);
  v18 = v3;
  __chkstk_darwin(v3);
  v5 = v16 - v4;
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  sub_1497C();
  v16[2] = sub_1496C();
  sub_1492C();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v16[1] = v16;
  v11 = __chkstk_darwin(isCurrentExecutor);
  v16[-4] = v6;
  v16[-3] = v7;
  v16[-2] = v8;
  v16[-1] = v9;
  __chkstk_darwin(v11);
  v16[-4] = v6;
  v16[-3] = v7;
  v16[-2] = v8;
  v16[-1] = v9;
  sub_2820(&qword_214C8, &unk_16048);
  v12 = v8;
  sub_5740(&qword_214D0, &qword_214C8, &unk_16048, &protocol conformance descriptor for AsyncIconImage<A>);
  sub_146CC();
  v13 = v19;
  (*(v17 + 32))(v19, v5, v18);
  v14 = v13 + *(sub_2820(&qword_20E30, &qword_15450) + 36);
  *v14 = v6;
  *(v14 + 8) = v7;
  *(v14 + 16) = v12;
  *(v14 + 24) = v9;
  *(v14 + 32) = 1;
}

uint64_t sub_11254@<X0>(uint64_t a3@<X8>)
{
  sub_1497C();
  sub_1496C();
  sub_1492C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_11CCC();

  v4 = sub_145BC();
  v6 = v5;
  v8 = v7;
  v10 = v9;

  *a3 = v4;
  *(a3 + 8) = v6;
  *(a3 + 16) = v8 & 1;
  *(a3 + 24) = v10;
  return result;
}

uint64_t sub_1133C(uint64_t a1, uint64_t a2)
{
  sub_1497C();
  sub_1496C();
  sub_1492C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = objc_allocWithZone(ISIcon);
  v3 = sub_1487C();
  [v2 initWithBundleIdentifier:v3];

  v4 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
  sub_1436C();
}

uint64_t sub_1145C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2820(&qword_20F20, &unk_15F70);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  v7 = sub_142BC();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v23 - v12;
  sub_1497C();
  sub_1496C();
  sub_1492C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_11D20(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_11D90(v6);

    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    (*(v8 + 16))(v11, v13, v7);
    v15 = sub_145AC();
    v16 = v19;
    v21 = v20;
    v18 = v22;
    (*(v8 + 8))(v13, v7);

    v17 = v21 & 1;
  }

  *a2 = v15;
  a2[1] = v16;
  a2[2] = v17;
  a2[3] = v18;
  return result;
}

uint64_t sub_116BC()
{
  v1 = v0;
  v2 = sub_142BC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1486C();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for DefaultMessagingAppsSection(0);
  v14 = v13;
  if (*(*(v0 + *(v13 + 28)) + 16) && (v15 = v0 + *(v13 + 32), v16 = *(v15 + 8), v35 = *v15, v36 = v16, v17 = *(v15 + 32), v37 = *(v15 + 16), v38 = v17, sub_2820(&qword_21468, &qword_16018), sub_1472C(), (v18 = v32) != 0))
  {
    v28 = v2;
    v29 = v7;
    v19 = v31;
    v30 = v6;
    v21 = v33;
    v20 = v34;

    sub_5860(v19, v18, v21, v20);
    sub_1485C();
    sub_2820(&qword_21470, &qword_16020);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_15F60;
    *(v22 + 56) = &type metadata for String;
    *(v22 + 64) = sub_11C78();
    *(v22 + 32) = v21;
    *(v22 + 40) = v20;
    sub_1484C();
    (*(v3 + 16))(v5, v1 + *(v14 + 20), v28);
    v23 = v29;
    v24 = v30;
    (*(v29 + 16))(v10, v12, v30);
    v35 = sub_148AC();
    v36 = v25;
    sub_11CCC();
    v26 = sub_145BC();
    (*(v23 + 8))(v12, v24);
    return v26;
  }

  else
  {
    (*(v3 + 16))(v5, v1 + *(v14 + 24), v2);
    return sub_145AC();
  }
}

uint64_t sub_119CC()
{
  sub_1145C(v0, v2);
  sub_1497C();
  sub_1496C();
  sub_1492C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_116BC();

  sub_2820(&qword_21438, &qword_15FF8);
  sub_2820(&qword_21440, &qword_16000);
  sub_11BFC();
  sub_56B4(&qword_21450, &qword_16008);
  sub_1448C();
  sub_56B4(&qword_21458, &qword_16010);
  sub_5740(&qword_21460, &qword_21458, &qword_16010, &protocol conformance descriptor for Picker<A, B, C>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_1477C();
}

unint64_t sub_11BFC()
{
  result = qword_21448;
  if (!qword_21448)
  {
    sub_56B4(&qword_21438, &qword_15FF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_21448);
  }

  return result;
}

unint64_t sub_11C78()
{
  result = qword_21478;
  if (!qword_21478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_21478);
  }

  return result;
}

unint64_t sub_11CCC()
{
  result = qword_21480;
  if (!qword_21480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_21480);
  }

  return result;
}

uint64_t sub_11D20(uint64_t a1, uint64_t a2)
{
  v4 = sub_2820(&qword_20F20, &unk_15F70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_11D90(uint64_t a1)
{
  v2 = sub_2820(&qword_20F20, &unk_15F70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_11E00()
{
  result = qword_21490;
  if (!qword_21490)
  {
    sub_56B4(&qword_20EC0, &qword_156F0);
    sub_11E84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_21490);
  }

  return result;
}

unint64_t sub_11E84()
{
  result = qword_21498;
  if (!qword_21498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_21498);
  }

  return result;
}

unint64_t sub_11ED8()
{
  result = qword_214A0;
  if (!qword_214A0)
  {
    sub_56B4(&qword_21488, &qword_16028);
    sub_56B4(&qword_20E28, &unk_16030);
    sub_56B4(&qword_20EC0, &qword_156F0);
    sub_5740(&qword_214A8, &qword_20E28, &unk_16030, &protocol conformance descriptor for Label<A, B>);
    sub_11E00();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_214A0);
  }

  return result;
}

unint64_t sub_11FF8()
{
  result = qword_214C0;
  if (!qword_214C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_214C0);
  }

  return result;
}

unint64_t sub_12068()
{
  result = qword_214D8;
  if (!qword_214D8)
  {
    sub_56B4(&qword_214E0, &unk_16058);
    sub_11BFC();
    sub_56B4(&qword_21450, &qword_16008);
    sub_1448C();
    sub_56B4(&qword_21458, &qword_16010);
    sub_5740(&qword_21460, &qword_21458, &qword_16010, &protocol conformance descriptor for Picker<A, B, C>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_214D8);
  }

  return result;
}

uint64_t sub_121D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_137A8(&qword_20F00, 255, type metadata accessor for DefaultMessagingAppsModel, &unk_15C58);
  sub_1431C();

  *a2 = *(v3 + OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__changingTextingAppAvailability);
  return result;
}

void sub_122F0(uint64_t *a1@<X0>, void *a3@<X4>, uint64_t *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_137A8(&qword_20F00, 255, type metadata accessor for DefaultMessagingAppsModel, &unk_15C58);
  sub_1431C();

  v7 = (v6 + *a3);
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  v11 = v7[3];
  *a4 = *v7;
  a4[1] = v9;
  a4[2] = v10;
  a4[3] = v11;
  sub_2868(v8, v9, v10, v11);
}

uint64_t sub_123D0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  sub_2868(*a1, v6, v8, v9);
  return a5(v7, v6, v8, v9);
}

uint64_t sub_12438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2820(&qword_20F08, &qword_15C80);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_13914(a3, v25 - v10);
  v12 = sub_1499C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_13984(v11);
  }

  else
  {
    sub_1498C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1492C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_148BC() + 32;
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

      sub_13984(a3);

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

  sub_13984(a3);
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

uint64_t DefaultMessagingAppsSettingsProvider.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DefaultMessagingAppsSettingsProvider.localizedTitle.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t DefaultMessagingAppsSettingsProvider.localizedNavigationTitle.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t DefaultMessagingAppsSettingsProvider.localizedDetail.getter()
{
  v1 = v0;
  v2 = sub_2820(&qword_20F08, &qword_15C80);
  __chkstk_darwin(v2 - 8);
  v4 = &v39 - v3;
  if (*(v0 + 88) == 1)
  {
    v5 = *(v0 + 80);
    v43 = *(v0 + 72);
    v44 = v5;
    sub_2820(&qword_214E8, &qword_16068);
    sub_146EC();
    v6 = v42;
    v7 = sub_1499C();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v6;
    sub_12438(0, 0, v4, &unk_15F50, v8);
  }

  v9 = *(v1 + 80);
  v43 = *(v1 + 72);
  v44 = v9;
  sub_2820(&qword_214E8, &qword_16068);
  sub_146EC();
  v10 = v42;
  swift_getKeyPath();
  v43 = v10;
  sub_137A8(&qword_20F00, 255, type metadata accessor for DefaultMessagingAppsModel, &unk_15C58);
  sub_1431C();

  v11 = v10[OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__changingTextingAppAvailability];

  v12 = &qword_21000;
  if (!v11)
  {
    goto LABEL_17;
  }

  v13 = *(v1 + 80);
  v43 = *(v1 + 72);
  v44 = v13;
  sub_146EC();
  v14 = v42;
  swift_getKeyPath();
  v43 = v14;
  sub_1431C();

  v15 = *&v14[OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__defaultComposingApp];
  v16 = *&v14[OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__defaultComposingApp + 8];
  v17 = *&v14[OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__defaultComposingApp + 16];
  v40 = *&v14[OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__defaultComposingApp + 24];
  v41 = v15;
  v39 = v17;
  sub_2868(v15, v16, v17, v40);

  v18 = *(v1 + 80);
  v43 = *(v1 + 72);
  v44 = v18;
  sub_146EC();
  v19 = v42;
  swift_getKeyPath();
  v43 = v19;
  sub_1431C();

  v21 = *&v19[OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__defaultTextingApp];
  v20 = *&v19[OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__defaultTextingApp + 8];
  v23 = *&v19[OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__defaultTextingApp + 16];
  v22 = *&v19[OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__defaultTextingApp + 24];
  sub_2868(v21, v20, v23, v22);

  if (!v16)
  {
    if (!v20)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  if (!v20)
  {
LABEL_13:
    sub_5860(v41, v16, v39, v40);
    v27 = v21;
    v28 = v20;
    v29 = v23;
    v30 = v22;
LABEL_14:
    sub_5860(v27, v28, v29, v30);
    goto LABEL_15;
  }

  v24 = v41;
  if ((v41 != v21 || v16 != v20) && (sub_14A5C() & 1) == 0)
  {

    v27 = v24;
    v28 = v16;
    v29 = v39;
    v30 = v40;
    goto LABEL_14;
  }

  v25 = v39;
  v26 = v40;
  if (v39 == v23 && v40 == v22)
  {

    sub_5860(v41, v16, v25, v26);
    v12 = &qword_21000;
    goto LABEL_17;
  }

  v32 = v39;
  v33 = sub_14A5C();

  sub_5860(v41, v16, v32, v26);
  v12 = &qword_21000;
  if ((v33 & 1) == 0)
  {
LABEL_15:
    v43 = 2;
    sub_13624();
    return sub_14A0C();
  }

LABEL_17:
  v34 = *(v1 + 80);
  v43 = *(v1 + 72);
  v44 = v34;
  sub_146EC();
  v35 = v42;
  swift_getKeyPath();
  v43 = v35;
  sub_1431C();

  v36 = &v35[v12[34]];
  v37 = v36[1];
  v38 = v36[2];
  sub_2868(*v36, v37, v38, v36[3]);

  if (!v37)
  {
    return 0;
  }

  return v38;
}

uint64_t property wrapper backing initializer of DefaultMessagingAppsSettingsProvider.viewModel(uint64_t a1)
{
  type metadata accessor for DefaultMessagingAppsModel(0);
  sub_146DC();
  return v2;
}

uint64_t DefaultMessagingAppsSettingsProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  DefaultMessagingAppsSettingsProvider.init(for:)(0, 0);
  return v0;
}

uint64_t DefaultMessagingAppsSettingsProvider.__allocating_init(for:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  DefaultMessagingAppsSettingsProvider.init(for:)(a1, a2);
  return v4;
}

uint64_t *DefaultMessagingAppsSettingsProvider.init(for:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_142FC();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1483C();
  __chkstk_darwin(v7 - 8);
  *(v3 + 16) = _s28DefaultMessagingAppsSettings0abcD8ProviderC2idSSvpfi_0();
  *(v3 + 24) = v8;
  sub_147BC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = objc_opt_self();
  v11 = [v10 bundleForClass:ObjCClassFromMetadata];
  sub_142EC();
  *(v3 + 32) = sub_1489C();
  *(v3 + 40) = v12;
  sub_147BC();
  v13 = [v10 bundleForClass:ObjCClassFromMetadata];
  sub_142EC();
  *(v3 + 48) = sub_1489C();
  *(v3 + 56) = v14;
  [objc_allocWithZone(type metadata accessor for DefaultMessagingAppsModel(0)) init];
  sub_146DC();
  *(v3 + 72) = v20;
  *(v3 + 80) = v21;
  *(v3 + 88) = 0;
  v15 = 1;
  if (a2)
  {
    *(v3 + 88) = 1;
    v16 = objc_allocWithZone(LSApplicationRecord);
    v17 = sub_1367C(a1, a2, 1);
    v18 = [v17 supportedDefaultAppCategories];

    v15 = (v18 & 0x408) != 0;
  }

  *(v3 + 64) = v15;
  return v3;
}

uint64_t DefaultMessagingAppsSettingsProvider.content.getter@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v1 + 72);
  sub_2820(&qword_214E8, &qword_16068);
  sub_146EC();
  sub_146DC();
  sub_2820(&qword_20EC0, &qword_156F0);
  sub_146DC();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(&v5 + 1);
  *(a1 + 24) = v5;
  *(a1 + 40) = v6;
  *(a1 + 56) = v7;
  *(a1 + 64) = sub_13758;
  *(a1 + 72) = v1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
}

uint64_t sub_13100(uint64_t a1)
{
  v2 = sub_2820(&qword_20F08, &qword_15C80);
  __chkstk_darwin(v2 - 8);
  v4 = v10 - v3;
  sub_1497C();
  sub_1496C();
  sub_1492C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a1 + 88) == 1)
  {
    v5 = *(a1 + 80);
    v10[2] = *(a1 + 72);
    v10[3] = v5;
    sub_2820(&qword_214E8, &qword_16068);
    sub_146EC();
    v6 = v10[1];
    v7 = sub_1499C();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v6;
    sub_12438(0, 0, v4, &unk_16200, v8);
  }

  else
  {
  }
}

uint64_t DefaultMessagingAppsSettingsProvider.deinit()
{

  return v0;
}

uint64_t DefaultMessagingAppsSettingsProvider.__deallocating_deinit()
{

  return _swift_deallocClassInstance(v0, 89, 7);
}

uint64_t sub_13384()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_133B8()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 64);
}

uint64_t sub_133F8()
{
  v1 = *(*v0 + 32);

  return v1;
}

uint64_t sub_13450()
{
  v1 = *(*v0 + 48);

  return v1;
}

uint64_t *sub_134A8@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  result = DefaultMessagingAppsSettingsProvider.init(for:)(0, 0);
  *a1 = v2;
  return result;
}

uint64_t *sub_134EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  result = DefaultMessagingAppsSettingsProvider.init(for:)(a1, a2);
  *a3 = v6;
  return result;
}

uint64_t sub_13540@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

unint64_t sub_13624()
{
  result = qword_214F0;
  if (!qword_214F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_214F0);
  }

  return result;
}

id sub_1367C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_1487C();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_1429C();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_137A8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_13834()
{
  result = qword_215C8;
  if (!qword_215C8)
  {
    sub_56B4(&qword_215D0, "^#");
    sub_138C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_215C8);
  }

  return result;
}

unint64_t sub_138C0()
{
  result = qword_215D8;
  if (!qword_215D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_215D8);
  }

  return result;
}

uint64_t sub_13914(uint64_t a1, uint64_t a2)
{
  v4 = sub_2820(&qword_20F08, &qword_15C80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_13984(uint64_t a1)
{
  v2 = sub_2820(&qword_20F08, &qword_15C80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_139EC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_13AE4;

  return v6(a1);
}

uint64_t sub_13AE4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_13BDC(uint64_t a1, uint64_t a2)
{

  return _swift_deallocObject(v2, 32, 7);
}

uint64_t sub_13C14(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_6C00;

  return sub_139EC(a1, v4);
}

uint64_t sub_13CCC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_5DFC;

  return sub_139EC(a1, v4);
}

uint64_t sub_13D94(int a1, int a2, int a3, int a4)
{
  if (qword_21FA8 == -1)
  {
    if (qword_21FB0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_1425C();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_21FB0)
    {
      return _availability_version_check();
    }
  }

  if (qword_21FA0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_14274();
    a3 = v10;
    a4 = v9;
    v8 = dword_21F90 < v11;
    if (dword_21F90 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_21F94 > a3)
      {
        return 1;
      }

      if (dword_21F94 >= a3)
      {
        return dword_21F98 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_21F90 < a2;
  if (dword_21F90 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_13F28(uint64_t result)
{
  v1 = qword_21FB0;
  if (qword_21FB0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_21FB0 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_21F90, &dword_21F94, &dword_21F98);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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
    }
  }

  return result;
}