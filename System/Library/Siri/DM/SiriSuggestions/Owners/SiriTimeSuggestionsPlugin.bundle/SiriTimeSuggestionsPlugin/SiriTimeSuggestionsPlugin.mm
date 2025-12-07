uint64_t sub_1778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20AC(&qword_18608, &qword_10230);
  __chkstk_darwin(v4 - 8);
  v6 = &v27 - v5;
  if (*(a1 + 16) && (v7 = sub_4458(0x6E6F697461727564, 0xE800000000000000), (v8 & 1) != 0) && (sub_2140(*(a1 + 56) + 48 * v7, v29), sub_20AC(&qword_18610, &unk_FB60), (swift_dynamicCast() & 1) != 0) && *(a1 + 16) && (v9 = v28, v10 = sub_4458(0x756F4372656D6974, 0xEA0000000000746ELL), (v11 & 1) != 0) && (sub_2140(*(a1 + 56) + 48 * v10, v29), (swift_dynamicCast() & 1) != 0) && *(a1 + 16) && (v12 = v28, v13 = sub_4458(0xD000000000000018, 0x8000000000010B00), (v14 & 1) != 0) && (sub_2140(*(a1 + 56) + 48 * v13, v29), (swift_dynamicCast() & 1) != 0) && *(a1 + 16) && (v15 = v28, v16 = sub_4458(0xD00000000000001ALL, 0x8000000000010B20), (v17 & 1) != 0) && (sub_2140(*(a1 + 56) + 48 * v16, v29), (swift_dynamicCast() & 1) != 0))
  {
    v18 = v28;
    if (*(a1 + 16) && (v19 = sub_4458(0x65736E6F70736572, 0xEC00000065646F4DLL), (v20 & 1) != 0))
    {
      sub_2140(*(a1 + 56) + 48 * v19, v29);

      v21 = sub_F1CC();
      v22 = swift_dynamicCast();
      (*(*(v21 - 8) + 56))(v6, v22 ^ 1u, 1, v21);
    }

    else
    {

      v25 = sub_F1CC();
      (*(*(v25 - 8) + 56))(v6, 1, 1, v25);
    }

    *a2 = v9;
    *(a2 + 8) = v12;
    *(a2 + 16) = v15;
    v26 = type metadata accessor for TimeSuggestionExecutionParameters(0);
    sub_21A4(v6, a2 + *(v26 + 28));
    *(a2 + *(v26 + 32)) = v18;
    return (*(*(v26 - 8) + 56))(a2, 0, 1, v26);
  }

  else
  {

    v23 = type metadata accessor for TimeSuggestionExecutionParameters(0);
    return (*(*(v23 - 8) + 56))(a2, 1, 1, v23);
  }
}

uint64_t sub_1B34()
{
  sub_F29C();
  swift_allocObject();
  result = sub_F2AC();
  qword_18E80 = result;
  return result;
}

uint64_t sub_1B88()
{
  sub_20AC(&qword_18600, &unk_FB50);
  sub_F0DC();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_FB40;
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  result = sub_F0CC();
  qword_18E88 = v0;
  return result;
}

uint64_t sub_20AC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t type metadata accessor for TimeSuggestionExecutionParameters(uint64_t a1)
{
  result = qword_18670;
  if (!qword_18670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2140(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20AC(&qword_18608, &qword_10230);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_20AC(&qword_18608, &qword_10230);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 28);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_22F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = a2 + 1;
  }

  else
  {
    v7 = sub_20AC(&qword_18608, &qword_10230);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23A4(uint64_t a1)
{
  sub_2438(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2438(uint64_t a1)
{
  if (!qword_18680)
  {
    sub_F1CC();
    v1 = sub_F74C();
    if (!v2)
    {
      atomic_store(v1, &qword_18680);
    }
  }
}

uint64_t sub_2490(void *a1, int a2)
{
  LODWORD(v151) = a2;
  v3 = sub_20AC(&qword_18808, &qword_FCE0);
  __chkstk_darwin(v3 - 8);
  v141 = v129 - v4;
  v150 = sub_F40C();
  v143 = *(v150 - 8);
  __chkstk_darwin(v150);
  v142 = (v129 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v149 = sub_F08C();
  *&v148 = *(v149 - 8);
  __chkstk_darwin(v149);
  v147 = v129 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[5];
  v146 = *(a1 + 3);
  sub_53CC(a1, v146);
  if (qword_185B0 != -1)
  {
    swift_once();
  }

  v153 = v146;
  v154 = v7;
  sub_5554(v152);
  sub_F45C();
  v145 = v154;
  v144 = v153;
  *&v146 = sub_53CC(v152, v153);
  sub_20AC(&qword_18810, &qword_FCE8);
  v8 = sub_F28C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_FBC0;
  v13 = v12 + v11;
  v14 = *(v9 + 104);
  v14(v13, enum case for DeviceType.iPhone(_:), v8);
  v14(v13 + v10, enum case for DeviceType.iPad(_:), v8);
  v14(v13 + 2 * v10, enum case for DeviceType.visionPro(_:), v8);
  v14(v13 + 3 * v10, enum case for DeviceType.mac(_:), v8);
  v166 = v144;
  v167 = v145;
  sub_5554(v165);
  sub_F44C();

  v15 = v167;
  v146 = v166;
  sub_53CC(v165, v166);
  v16 = v147;
  LOBYTE(v13) = v151;
  sub_C220(v151);
  sub_F07C();
  (*(v148 + 8))(v16, v149);
  v163 = v146;
  v164 = v15;
  sub_5554(v162);
  sub_F42C();

  v17 = v164;
  v148 = v163;
  sub_53CC(v162, v163);
  v18 = sub_4054(v13, &off_14A10);
  sub_20AC(&qword_18818, &qword_FCF0);
  sub_F38C();
  v19 = swift_allocObject();
  v149 = xmmword_FBD0;
  *(v19 + 16) = xmmword_FBD0;
  if (v18)
  {
    sub_F3AC();
  }

  else
  {
    sub_F39C();
  }

  v160 = v148;
  v161 = v17;
  sub_5554(v159);
  sub_F47C();

  v20 = v161;
  v148 = v160;
  sub_53CC(v159, v160);
  v157 = v148;
  v158 = v20;
  sub_5554(v156);
  sub_F49C();

  v21 = v157;
  v22 = sub_53CC(v156, v157);
  v23 = *(v21 - 8);
  __chkstk_darwin(v22);
  v25 = v129 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for TimeSuggestionsAssetProvider();
  v27 = swift_allocObject();
  v155[3] = v26;
  v155[4] = sub_550C(&qword_18820, v28, type metadata accessor for TimeSuggestionsAssetProvider, &unk_FC70);
  v155[0] = v27;
  sub_F43C();
  (*(v23 + 8))(v25, v21);
  v29 = v151;
  sub_5410(v155);
  sub_5410(v156);
  sub_5410(v159);
  sub_5410(v162);
  sub_5410(v165);
  sub_5410(v152);
  v30 = sub_C470(v29);
  if (v31)
  {
    v32 = v30;
    v33 = v31;
    v34 = a1[3];
    v35 = sub_53CC(a1, v34);
    *&v148 = v129;
    v36 = *(v34 - 8);
    __chkstk_darwin(v35);
    v38 = v129 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    v39 = sub_F26C();
    *&v153 = v39;
    *(&v153 + 1) = &protocol witness table for SiriSuggestions.IntentType;
    v40 = sub_5554(v152);
    *v40 = v32;
    v40[1] = v33;
    (*(*(v39 - 8) + 104))();
    sub_F41C();
    (*(v36 + 8))(v38, v34);
    v29 = v151;
    sub_5410(v152);
  }

  if (sub_C61C(v29))
  {
    v41 = a1[3];
    v42 = sub_53CC(a1, v41);
    v43 = *(v41 - 8);
    __chkstk_darwin(v42);
    v45 = v129 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_F46C();

    (*(v43 + 8))(v45, v41);
  }

  if (sub_DA90(v29) == 0x547373696D736964 && v46 == 0xEC00000072656D69)
  {

LABEL_14:
    v48 = a1[3];
    v147 = a1[5];
    v49 = sub_53CC(a1, v48);
    *&v148 = v129;
    v50 = *(v48 - 8);
    __chkstk_darwin(v49);
    v52 = v129 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_20AC(&qword_18830, &qword_FD00);
    v53 = sub_F2EC();
    v54 = *(v53 - 8);
    v55 = (*(v54 + 80) + 32) & ~*(v54 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = v149;
    (*(v54 + 104))(v56 + v55, enum case for DeliveryVehicle.assistantSuggestions(_:), v53);
    sub_F48C();

    (*(v50 + 8))(v52, v48);
    v29 = v151;
    goto LABEL_15;
  }

  v47 = sub_F7BC();

  if (v47)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (sub_DA90(v29) == 0x656D695441746573 && v57 == 0xE900000000000072)
  {

LABEL_19:
    v59 = a1[3];
    v145 = a1[4];
    *&v144 = sub_53CC(a1, v59);
    v147 = v129;
    v140 = v59;
    *&v146 = *(v59 - 8);
    __chkstk_darwin(v144);
    v141 = v129 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v148 = sub_20AC(&qword_18840, &qword_FD08);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_FC00;
    if (qword_185C8 != -1)
    {
      swift_once();
    }

    v129[1] = qword_18E98;
    *(v61 + 32) = qword_18E98;
    v139 = sub_20AC(&qword_18830, &qword_FD00);
    v62 = sub_F2EC();
    v136 = v62;
    v63 = *(v62 - 8);
    v65 = *(v63 + 80);
    v66 = (v65 + 32) & ~v65;
    v130 = *(v63 + 72);
    v64 = v130;
    v137 = v66;
    v138 = v65;
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_FBE0;
    v68 = v67 + v66;
    v69 = *(v63 + 104);
    v135 = v69;
    v69(v68, enum case for DeliveryVehicle.assistantSuggestions(_:), v62);
    v134 = enum case for DeliveryVehicle.siriHelp(_:);
    (v69)(v68 + v64);
    v70 = v142;
    *v142 = v67;
    v133[0] = enum case for SignalContextProperties.deliveryVehicle(_:);
    v71 = v143;
    v72 = v143[13];
    v131 = v143 + 13;
    v132 = v72;
    v73 = v150;
    v72(v70);

    v75 = v140;
    v74 = v141;
    sub_F23C();

    v145 = v71[1];
    (v145)(v70, v73);
    (*(v146 + 8))(v74, v75);
    v76 = a1[3];
    *&v146 = a1[4];
    v77 = sub_53CC(a1, v76);
    v147 = v129;
    v78 = *(v76 - 8);
    v143 = v77;
    *&v144 = v78;
    __chkstk_darwin(v77);
    v80 = v129 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_FC10;
    sub_F5AC();
    *(v81 + 32) = sub_F55C();
    *(v81 + 40) = sub_F57C();
    *(v81 + 48) = sub_F58C();
    v82 = v137;
    v83 = swift_allocObject();
    *(v83 + 16) = v149;
    v135(v83 + v82, v134, v136);
    *v70 = v83;
    v84 = v150;
    v132(v70, v133[0], v150);
    sub_F23C();

    (v145)(v70, v84);
    (*(v144 + 8))(v80, v76);
    goto LABEL_22;
  }

  v58 = sub_F7BC();

  if (v58)
  {
    goto LABEL_19;
  }

  if (sub_DA90(v29) == 0x616C416E41746573 && v94 == 0xEA00000000006D72)
  {

LABEL_30:
    v96 = a1[3];
    *&v146 = a1[4];
    v145 = sub_53CC(a1, v96);
    *&v148 = v129;
    v147 = *(v96 - 8);
    __chkstk_darwin(v145);
    *&v144 = v129 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_20AC(&qword_18828, &qword_FCF8);
    sub_F31C();
    *(swift_allocObject() + 16) = v149;
    if (qword_185C0 != -1)
    {
      swift_once();
    }

    sub_F59C();
    v140 = sub_20AC(&qword_18830, &qword_FD00);
    v98 = sub_F2EC();
    v137 = v98;
    v99 = *(v98 - 8);
    v100 = *(v99 + 80);
    v131 = *(v99 + 72);
    v101 = v131;
    v102 = (v100 + 32) & ~v100;
    v138 = v102;
    v139 = v100;
    v103 = swift_allocObject();
    *(v103 + 16) = xmmword_FBE0;
    v104 = v103 + v102;
    v105 = *(v99 + 104);
    v136 = v105;
    v105(v104, enum case for DeliveryVehicle.assistantSuggestions(_:), v98);
    LODWORD(v135) = enum case for DeliveryVehicle.siriHelp(_:);
    (v105)(v101 + v104);
    v106 = v141;
    *v141 = v103;
    v134 = enum case for SignalContextProperties.deliveryVehicle(_:);
    v107 = v143;
    v108 = v143[13];
    v132 = (v143 + 13);
    *v133 = v108;
    v109 = v150;
    v108(v106);
    (v107[7])(v106, 0, 1, v109);
    *&v153 = type metadata accessor for SetAlarmAssistantConfigurator(0);
    *(&v153 + 1) = sub_550C(&qword_18838, 255, type metadata accessor for SetAlarmAssistantConfigurator, &unk_102D8);
    v110 = sub_5554(v152);
    *v110 = 0x616C416E41746573;
    v110[1] = 0xEA00000000006D72;
    v111 = enum case for ActionIdentifier.suggestionId(_:);
    v112 = sub_F32C();
    (*(*(v112 - 8) + 104))(v110, v111, v112);
    v113 = v144;
    sub_F22C();

    sub_55B8(v106);
    (*(v147 + 1))(v113, v96);
    sub_5410(v152);
    v114 = a1[3];
    v147 = a1[4];
    *&v146 = sub_53CC(a1, v114);
    *&v148 = v129;
    v115 = *(v114 - 8);
    __chkstk_darwin(v146);
    v117 = v129 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_20AC(&qword_18840, &qword_FD08);
    v118 = swift_allocObject();
    *(v118 + 16) = xmmword_FBF0;
    sub_F5AC();
    *(v118 + 32) = sub_F55C();
    *(v118 + 40) = sub_F57C();
    v119 = v138;
    v120 = swift_allocObject();
    *(v120 + 16) = v149;
    v136(v120 + v119, v135, v137);
    v121 = v142;
    *v142 = v120;
    v122 = v150;
    (*v133)(v121, v134, v150);
    sub_F23C();

    (v107[1])(v121, v122);
    (*(v115 + 8))(v117, v114);
    goto LABEL_22;
  }

  v95 = sub_F7BC();

  if (v95)
  {
    goto LABEL_30;
  }

  sub_2140(a1, v152);
  v123 = v153;
  v124 = sub_53CC(v152, v153);
  v125 = *(v123 - 8);
  __chkstk_darwin(v124);
  v127 = v129 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_185F0 != -1)
  {
    swift_once();
  }

  if (*(qword_18EC0 + 16))
  {
    sub_44D0(v151);
    if (v128)
    {
    }
  }

  sub_F24C();

  (*(v125 + 8))(v127, v123);
  sub_5410(v152);
LABEL_22:
  v85 = sub_CC58(v151);
  v86 = v85[2];
  if (v86)
  {
    v151 = v85;
    v87 = (v85 + 4);
    do
    {
      sub_545C(v87, v152);
      v88 = a1[3];
      v89 = sub_53CC(a1, v88);
      v90 = *(v88 - 8);
      __chkstk_darwin(v89);
      v92 = v129 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_F4AC();
      (*(v90 + 8))(v92, v88);
      sub_54B8(v152);
      v87 += 64;
      --v86;
    }

    while (v86);
  }
}

uint64_t sub_3C50(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_3D04;

  return sub_4A60(a1, a2);
}

uint64_t sub_3D04(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_3E34()
{
  v0 = sub_F20C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20AC(&qword_18848, &unk_FD10);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = (&v18 - v8);
  (*(v1 + 104))(v3, enum case for SiriTimeAppBundleId.clockApp(_:), v0);
  v10 = sub_F1FC();
  v12 = v11;
  (*(v1 + 8))(v3, v0);
  *v9 = v10;
  v9[1] = v12;
  v13 = enum case for Image.appIcon(_:);
  v14 = sub_F53C();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v9, v13, v14);
  v16 = *(v15 + 56);
  v16(v9, 0, 1, v14);
  v16(v7, 1, 1, v14);
  return sub_F54C();
}

BOOL sub_4054(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  while (2)
  {
    v6 = v3;
    if (v3-- == 0)
    {
      return v6 != 0;
    }

    v8 = 0xE900000000000072;
    v9 = 0x656D695441746573;
    switch(*v4)
    {
      case 1:
        v9 = 0x616C416E41746573;
        v8 = 0xEA00000000006D72;
        break;
      case 2:
        v9 = 0xD000000000000010;
        v8 = 0x8000000000010A60;
        break;
      case 3:
        v11 = 1633972341;
        goto LABEL_13;
      case 4:
        v9 = 0xD000000000000010;
        v8 = 0x8000000000010A80;
        break;
      case 5:
        v9 = 0x656D695474616877;
        v8 = 0xEC00000074497349;
        break;
      case 6:
        v9 = 0x72656D6954746573;
        v8 = 0xEC000000746E6948;
        break;
      case 7:
        v9 = 0x547373696D736964;
        v8 = 0xEC00000072656D69;
        break;
      case 8:
        v12 = 0x686372616573;
        goto LABEL_20;
      case 9:
        v12 = 0x6574656C6564;
LABEL_20:
        v9 = v12 & 0xFFFFFFFFFFFFLL | 0x6954000000000000;
        v13 = 7497069;
        goto LABEL_21;
      case 0xA:
        v8 = 0xEA00000000007265;
        v9 = 0x6D69547465736572;
        break;
      case 0xB:
        v10 = 0x686372616573;
        goto LABEL_14;
      case 0xC:
        v11 = 1701602660;
LABEL_13:
        v10 = v11 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
LABEL_14:
        v9 = v10 & 0xFFFFFFFFFFFFLL | 0x6C41000000000000;
        v13 = 7172705;
LABEL_21:
        v8 = v13 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        break;
      default:
        break;
    }

    v14 = 0x656D695441746573;
    v15 = 0xE900000000000072;
    switch(a1)
    {
      case 1:
        v15 = 0xEA00000000006D72;
        if (v9 == 0x616C416E41746573)
        {
          goto LABEL_46;
        }

        goto LABEL_2;
      case 2:
        v15 = 0x8000000000010A60;
        if (v9 != 0xD000000000000010)
        {
          goto LABEL_2;
        }

        goto LABEL_46;
      case 3:
        v17 = 1633972341;
        goto LABEL_33;
      case 4:
        v15 = 0x8000000000010A80;
        if (v9 != 0xD000000000000010)
        {
          goto LABEL_2;
        }

        goto LABEL_46;
      case 5:
        v21 = 0x656D695474616877;
        v22 = 1950970697;
        goto LABEL_38;
      case 6:
        v21 = 0x72656D6954746573;
        v22 = 1953392968;
        goto LABEL_38;
      case 7:
        v21 = 0x547373696D736964;
        v22 = 1919249769;
LABEL_38:
        v15 = v22 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v9 != v21)
        {
          goto LABEL_2;
        }

        goto LABEL_46;
      case 8:
        v18 = 0x686372616573;
        goto LABEL_44;
      case 9:
        v18 = 0x6574656C6564;
LABEL_44:
        v19 = v18 & 0xFFFFFFFFFFFFLL | 0x6954000000000000;
        v20 = 7497069;
        goto LABEL_45;
      case 10:
        v15 = 0xEA00000000007265;
        v14 = 0x6D69547465736572;
        goto LABEL_41;
      case 11:
        v16 = 0x686372616573;
        goto LABEL_34;
      case 12:
        v17 = 1701602660;
LABEL_33:
        v16 = v17 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
LABEL_34:
        v19 = v16 & 0xFFFFFFFFFFFFLL | 0x6C41000000000000;
        v20 = 7172705;
LABEL_45:
        v15 = v20 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        if (v9 == v19)
        {
          goto LABEL_46;
        }

        goto LABEL_2;
      default:
LABEL_41:
        if (v9 != v14)
        {
          goto LABEL_2;
        }

LABEL_46:
        if (v8 != v15)
        {
LABEL_2:
          v5 = sub_F7BC();

          ++v4;
          if (v5)
          {
            return v6 != 0;
          }

          continue;
        }

        return v6 != 0;
    }
  }
}

unint64_t sub_4458(uint64_t a1, uint64_t a2)
{
  sub_F7CC();
  sub_F6DC();
  v4 = sub_F7DC();

  return sub_4558(a1, a2, v4);
}

unint64_t sub_44D0(uint64_t a1)
{
  v1 = a1;
  sub_F7CC();
  sub_DA90(v1);
  sub_F6DC();

  v2 = sub_F7DC();

  return sub_4610(v1, v2);
}

unint64_t sub_4558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_F7BC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_4610(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE900000000000072;
      v8 = 0x656D695441746573;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x616C416E41746573;
          v7 = 0xEA00000000006D72;
          break;
        case 2:
          v8 = 0xD000000000000010;
          v7 = 0x8000000000010A60;
          break;
        case 3:
          v10 = 1633972341;
          goto LABEL_11;
        case 4:
          v8 = 0xD000000000000010;
          v7 = 0x8000000000010A80;
          break;
        case 5:
          v8 = 0x656D695474616877;
          v7 = 0xEC00000074497349;
          break;
        case 6:
          v8 = 0x72656D6954746573;
          v7 = 0xEC000000746E6948;
          break;
        case 7:
          v8 = 0x547373696D736964;
          v7 = 0xEC00000072656D69;
          break;
        case 8:
          v11 = 0x686372616573;
          goto LABEL_18;
        case 9:
          v11 = 0x6574656C6564;
LABEL_18:
          v8 = v11 & 0xFFFFFFFFFFFFLL | 0x6954000000000000;
          v12 = 7497069;
          goto LABEL_19;
        case 0xA:
          v7 = 0xEA00000000007265;
          v8 = 0x6D69547465736572;
          break;
        case 0xB:
          v9 = 0x686372616573;
          goto LABEL_12;
        case 0xC:
          v10 = 1701602660;
LABEL_11:
          v9 = v10 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
LABEL_12:
          v8 = v9 & 0xFFFFFFFFFFFFLL | 0x6C41000000000000;
          v12 = 7172705;
LABEL_19:
          v7 = v12 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        default:
          break;
      }

      v13 = 0x656D695441746573;
      v14 = 0xE900000000000072;
      switch(a1)
      {
        case 1:
          v14 = 0xEA00000000006D72;
          if (v8 == 0x616C416E41746573)
          {
            goto LABEL_44;
          }

          goto LABEL_45;
        case 2:
          v14 = 0x8000000000010A60;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_45;
          }

          goto LABEL_44;
        case 3:
          v16 = 1633972341;
          goto LABEL_31;
        case 4:
          v14 = 0x8000000000010A80;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_45;
          }

          goto LABEL_44;
        case 5:
          v20 = 0x656D695474616877;
          v21 = 1950970697;
          goto LABEL_36;
        case 6:
          v20 = 0x72656D6954746573;
          v21 = 1953392968;
          goto LABEL_36;
        case 7:
          v20 = 0x547373696D736964;
          v21 = 1919249769;
LABEL_36:
          v14 = v21 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          if (v8 != v20)
          {
            goto LABEL_45;
          }

          goto LABEL_44;
        case 8:
          v17 = 0x686372616573;
          goto LABEL_42;
        case 9:
          v17 = 0x6574656C6564;
LABEL_42:
          v18 = v17 & 0xFFFFFFFFFFFFLL | 0x6954000000000000;
          v19 = 7497069;
          goto LABEL_43;
        case 10:
          v14 = 0xEA00000000007265;
          v13 = 0x6D69547465736572;
          goto LABEL_39;
        case 11:
          v15 = 0x686372616573;
          goto LABEL_32;
        case 12:
          v16 = 1701602660;
LABEL_31:
          v15 = v16 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
LABEL_32:
          v18 = v15 & 0xFFFFFFFFFFFFLL | 0x6C41000000000000;
          v19 = 7172705;
LABEL_43:
          v14 = v19 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          if (v8 == v18)
          {
            goto LABEL_44;
          }

          goto LABEL_45;
        default:
LABEL_39:
          if (v8 != v13)
          {
            goto LABEL_45;
          }

LABEL_44:
          if (v7 == v14)
          {

            return v4;
          }

LABEL_45:
          v22 = sub_F7BC();

          if (v22)
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

uint64_t sub_4A60(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v3 = sub_F68C();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_4B20, 0, 0);
}

uint64_t sub_4B20()
{
  sub_F21C();
  v1 = sub_F67C();
  v2 = sub_F71C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&def_5140, v1, v2, "TimeSuggestionsOwnerDefinitionFactory createOwnerDefinitions", v3, 2u);
  }

  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[14];

  (*(v5 + 8))(v4, v6);
  if (qword_185A8 != -1)
  {
    swift_once();
  }

  v7 = v0[12];
  v8 = qword_18E80;
  v0[5] = sub_F29C();
  v0[6] = sub_550C(&qword_187F0, 255, &type metadata accessor for DomainOwner, &protocol conformance descriptor for DomainOwner);
  v0[2] = v8;

  v11 = (v7 + *v7);
  v9 = swift_task_alloc();
  v0[17] = v9;
  *v9 = v0;
  v9[1] = sub_4D44;

  return v11(v0 + 2);
}

uint64_t sub_4D44(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 144) = a1;

  sub_5410((v2 + 16));

  return _swift_task_switch(sub_4E4C, 0, 0);
}

uint64_t sub_4E4C()
{
  v0 = 0;
  while (2)
  {
    v5 = *(&off_149E0 + v0++ + 32);
    sub_F76C(18);

    v2._countAndFlagsBits = 0x656D695441746573;
    v4 = 0xE900000000000072;
    switch(v5)
    {
      case 0:
        goto LABEL_5;
      case 1:
        v2._countAndFlagsBits = 0x616C416E41746573;
        v4 = 0xEA00000000006D72;
        goto LABEL_5;
      case 2:
        v2._countAndFlagsBits = 0xD000000000000010;
        v4 = 0x8000000000010A60;
        goto LABEL_5;
      case 3:
        v6 = 1633972341;
        goto LABEL_13;
      case 4:
        v2._countAndFlagsBits = 0xD000000000000010;
        v4 = 0x8000000000010A80;
        goto LABEL_5;
      case 5:
        v2._countAndFlagsBits = 0x656D695474616877;
        v4 = 0xEC00000074497349;
        goto LABEL_5;
      case 6:
        v2._countAndFlagsBits = 0x72656D6954746573;
        v4 = 0xEC000000746E6948;
        goto LABEL_5;
      case 7:
        v2._countAndFlagsBits = 0x547373696D736964;
        v4 = 0xEC00000072656D69;
        goto LABEL_5;
      case 8:
        v7 = 0x686372616573;
        goto LABEL_19;
      case 9:
        v7 = 0x6574656C6564;
LABEL_19:
        v2._countAndFlagsBits = v7 & 0xFFFFFFFFFFFFLL | 0x6954000000000000;
        v3 = 7497069;
        goto LABEL_4;
      case 10:
        v4 = 0xEA00000000007265;
        v2._countAndFlagsBits = 0x6D69547465736572;
        goto LABEL_5;
      case 11:
        v1 = 0x686372616573;
        goto LABEL_3;
      case 12:
        v6 = 1701602660;
LABEL_13:
        v1 = v6 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
LABEL_3:
        v2._countAndFlagsBits = v1 & 0xFFFFFFFFFFFFLL | 0x6C41000000000000;
        v3 = 7172705;
LABEL_4:
        v4 = (v3 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000);
LABEL_5:
        v2._object = v4;
        sub_F6EC(v2);

        *(swift_task_alloc() + 16) = v5;
        sub_F51C();

        if (v0 != 13)
        {
          continue;
        }

        v11[10] = &type metadata for TimeSourceGenerator;
        v11[11] = sub_5378();
        sub_F50C();

        sub_5410(v11 + 7);
        sub_20AC(&qword_18800, &qword_FCD8);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_FBD0;
        sub_F52C();

        v9 = v11[1];

        return v9(v8);
      default:
        JUMPOUT(0);
    }
  }
}

unint64_t sub_5378()
{
  result = qword_187F8;
  if (!qword_187F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_187F8);
  }

  return result;
}

void *sub_53CC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_5410(void *a1)
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

uint64_t sub_550C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t *sub_5554(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_55B8(uint64_t a1)
{
  v2 = sub_20AC(&qword_18808, &qword_FCE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_5624()
{
  v0 = sub_F68C();
  sub_8544(v0, qword_18850);
  sub_850C(v0, qword_18850);
  return sub_F21C();
}

void sub_5670(void *a1@<X8>)
{
  a1[3] = &type metadata for String;
  *a1 = 0;
  a1[1] = 0xE000000000000000;
}

uint64_t sub_5688(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      goto LABEL_17;
    }

    if (a3 != 4 || !a2)
    {
      goto LABEL_29;
    }

    if (a1 == 0xD00000000000005ELL && 0x80000000000105B0 == a2 || (sub_F7BC() & 1) != 0)
    {
LABEL_17:
      sub_F64C();
      goto LABEL_18;
    }

    if (a1 == 0xD00000000000005ELL && 0x80000000000106E0 == a2 || (sub_F7BC() & 1) != 0)
    {
      sub_F65C();
      goto LABEL_18;
    }
  }

  else
  {
    if (!a3)
    {
      goto LABEL_24;
    }

    if (a3 == 1 && a2)
    {
      if (a1 == 0xD000000000000063 && 0x8000000000010740 == a2 || (sub_F7BC() & 1) != 0)
      {
        sub_F61C();
LABEL_18:

        return sub_F3EC();
      }

      if (a1 == 0xD000000000000063 && 0x80000000000107B0 == a2 || (sub_F7BC() & 1) != 0)
      {
LABEL_24:
        sub_F62C();
        goto LABEL_18;
      }
    }
  }

LABEL_29:

  return sub_F3DC();
}

uint64_t sub_58E4(uint64_t *a1, void *a2)
{
  sub_5D30(a2, &selRef_proposedTime, a1);
  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_5970(uint64_t *a1, void *a2)
{
  sub_5D30(a2, &selRef_time, a1);
  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_59FC(uint64_t *a1, void *a2)
{
  sub_5B80(a2, a1);
  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_5A7C(uint64_t *a1, id a2)
{
  v4 = [a2 label];
  if (v4)
  {
    v5 = v4;
    v6 = sub_F6BC();
    v8 = v7;

    a1[3] = &type metadata for String;
    *a1 = v6;
    a1[1] = v8;
    v9 = enum case for IntentParameter.directAssignment(_:);
  }

  else
  {
    v9 = enum case for IntentParameter.ignore(_:);
  }

  v10 = sub_F30C();
  (*(*(v10 - 8) + 104))(a1, v9, v10);
  v11 = *(v2 + 8);

  return v11();
}

uint64_t sub_5B80@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_F1EC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 type];
  v8 = sub_F66C();
  if (v8 == sub_F66C())
  {
    v9 = [a1 label];
    if (!v9)
    {
      v15 = enum case for IntentParameter.ignore(_:);
      goto LABEL_6;
    }

    v10 = v9;
    sub_F73C();

    v11 = sub_F1DC();
    v13 = v12;
    (*(v5 + 8))(v7, v4);
    a2[3] = &type metadata for String;
    *a2 = v11;
    a2[1] = v13;
    v14 = &enum case for IntentParameter.directAssignment(_:);
  }

  else
  {
    v14 = &enum case for IntentParameter.ignore(_:);
  }

  v15 = *v14;
LABEL_6:
  v16 = sub_F30C();
  return (*(*(v16 - 8) + 104))(a2, v15, v16);
}

uint64_t sub_5D30@<X0>(void *a1@<X0>, SEL *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_F04C();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  v13 = [a1 *a2];
  if (v13)
  {
    v14 = v13;
    sub_F02C();

    v15 = *(v7 + 32);
    v15(v12, v10, v6);
    a3[3] = v6;
    v16 = sub_5554(a3);
    v15(v16, v12, v6);
    v17 = enum case for IntentParameter.context(_:);
  }

  else
  {
    v17 = enum case for IntentParameter.ignore(_:);
  }

  v18 = sub_F30C();
  return (*(*(v18 - 8) + 104))(a3, v17, v18);
}

uint64_t sub_5EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_B8FC;

  return sub_83D4();
}

uint64_t sub_5FA0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_F5BC();
  v6 = v13;
  v7 = v14;
  v8 = sub_53CC(v12, v13);
  v11[3] = v6;
  v11[4] = *(v7 + 8);
  v9 = sub_5554(v11);
  (*(*(v6 - 8) + 16))(v9, v8, v6);
  sub_7DAC(a1, a2);
  sub_F5DC();

  sub_5410(v11);
  return sub_5410(v12);
}

uint64_t sub_60BC()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_6118()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_614C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_3D04;

  return sub_8780(a2);
}

uint64_t sub_6224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_B8FC;

  return sub_9CDC(a2, a3);
}

uint64_t sub_62F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_B8FC;

  return sub_A954(a2, a3);
}

uint64_t sub_63C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_B8FC;

  return sub_AD6C();
}

uint64_t sub_6494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_B8FC;

  return sub_AEA4(a2);
}

uint64_t sub_68A4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_F18C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_F04C();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_F10C();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v6 = sub_F11C();
  v2[13] = v6;
  v2[14] = *(v6 - 8);
  v2[15] = swift_task_alloc();
  v7 = sub_F0EC();
  v2[16] = v7;
  v2[17] = *(v7 - 8);
  v2[18] = swift_task_alloc();
  sub_20AC(&qword_18C98, &qword_101C0);
  v2[19] = swift_task_alloc();
  v8 = sub_F0BC();
  v2[20] = v8;
  v2[21] = *(v8 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v9 = sub_F15C();
  v2[24] = v9;
  v2[25] = *(v9 - 8);
  v2[26] = swift_task_alloc();
  v10 = sub_F2EC();
  v2[27] = v10;
  v2[28] = *(v10 - 8);
  v2[29] = swift_task_alloc();
  v2[30] = sub_20AC(&qword_18C88, &qword_101B0);
  v2[31] = swift_task_alloc();
  sub_20AC(&qword_18C90, &qword_101B8);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();

  return _swift_task_switch(sub_6CB8, 0, 0);
}

uint64_t sub_6CB8()
{
  v2 = v0[33];
  v1 = v0[34];
  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[27];
  v6 = v0[28];
  sub_F3BC();
  (*(v6 + 104))(v2, enum case for DeliveryVehicle.assistantSuggestions(_:), v5);
  (*(v6 + 56))(v2, 0, 1, v5);
  v7 = *(v4 + 48);
  sub_9C0C(v1, v3);
  sub_9C0C(v2, v3 + v7);
  v8 = *(v6 + 48);
  if (v8(v3, 1, v5) == 1)
  {
    v9 = v0[34];
    v10 = v0[27];
    sub_AD0C(v0[33], &qword_18C90, &qword_101B8);
    sub_AD0C(v9, &qword_18C90, &qword_101B8);
    if (v8(v3 + v7, 1, v10) == 1)
    {
      sub_AD0C(v0[31], &qword_18C90, &qword_101B8);
LABEL_11:
      v25 = v0[2];
      v0[35] = *v25;
      v0[36] = v25[1];
      v0[37] = swift_getObjectType();
      v27 = sub_F70C();
      v0[38] = v27;
      v0[39] = v26;

      return _swift_task_switch(sub_70E0, v27, v26);
    }

    goto LABEL_6;
  }

  v11 = v0[27];
  sub_9C0C(v0[31], v0[32]);
  v12 = v8(v3 + v7, 1, v11);
  v14 = v0[33];
  v13 = v0[34];
  v15 = v0[32];
  if (v12 == 1)
  {
    v16 = v0[27];
    v17 = v0[28];
    sub_AD0C(v0[33], &qword_18C90, &qword_101B8);
    sub_AD0C(v13, &qword_18C90, &qword_101B8);
    (*(v17 + 8))(v15, v16);
LABEL_6:
    sub_AD0C(v0[31], &qword_18C88, &qword_101B0);
    goto LABEL_7;
  }

  v28 = v0[31];
  v21 = v0[28];
  v20 = v0[29];
  v22 = v0[27];
  (*(v21 + 32))(v20, v3 + v7, v22);
  sub_B834(&qword_18CB0, &type metadata accessor for DeliveryVehicle, &protocol conformance descriptor for DeliveryVehicle);
  v23 = sub_F6AC();
  v24 = *(v21 + 8);
  v24(v20, v22);
  sub_AD0C(v14, &qword_18C90, &qword_101B8);
  sub_AD0C(v13, &qword_18C90, &qword_101B8);
  v24(v15, v22);
  sub_AD0C(v28, &qword_18C90, &qword_101B8);
  if (v23)
  {
    goto LABEL_11;
  }

LABEL_7:

  v18 = v0[1];

  return v18();
}

uint64_t sub_70E0()
{
  sub_B87C(*(v0 + 296), *(v0 + 288));

  return _swift_task_switch(sub_714C, 0, 0);
}

uint64_t sub_714C()
{
  v1 = v0[22];
  v21 = v0[21];
  v22 = v0[20];
  v23 = v0[19];
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[13];
  v7 = v0[14];
  v8 = v0[11];
  v9 = v0[12];
  v20 = v0[10];
  sub_F13C();
  sub_F0AC();
  (*(v3 + 104))(v2, enum case for Calendar.MatchingPolicy.nextTime(_:), v4);
  (*(v7 + 104))(v5, enum case for Calendar.RepeatedTimePolicy.first(_:), v6);
  (*(v8 + 104))(v9, enum case for Calendar.SearchDirection.forward(_:), v20);
  sub_F12C();
  (*(v8 + 8))(v9, v20);
  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  v10 = *(v21 + 8);
  v0[40] = v10;
  v0[41] = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v1, v22);
  v11 = (*(v21 + 48))(v23, 1, v22);
  v12 = v0[19];
  if (v11 == 1)
  {
    (*(v0[25] + 8))(v0[26], v0[24]);
    sub_AD0C(v12, &qword_18C98, &qword_101C0);

    v13 = v0[1];

    return v13();
  }

  else
  {
    v16 = v0[5];
    v15 = v0[6];
    v17 = v0[4];
    (*(v0[21] + 32))(v0[23], v0[19], v0[20]);
    sub_F14C();
    sub_F0FC();
    (*(v16 + 8))(v15, v17);
    v18 = v0[38];
    v19 = v0[39];

    return _swift_task_switch(sub_74BC, v18, v19);
  }
}

uint64_t sub_74BC()
{
  sub_768C(v0[9], v0[37], v0[36]);

  return _swift_task_switch(sub_752C, 0, 0);
}

uint64_t sub_752C()
{
  v1 = v0[40];
  v3 = v0[25];
  v2 = v0[26];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[20];
  (*(v0[8] + 8))(v0[9], v0[7]);
  v1(v5, v6);
  (*(v3 + 8))(v2, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_768C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_F04C();
  v9[3] = v6;
  v7 = sub_5554(v9);
  (*(*(v6 - 8) + 16))(v7, a1, v6);
  sub_7C38(0x6D69546D72616C61, 0xE900000000000065, v9, a2, a3);
  return sub_5410(v9);
}

uint64_t sub_7744(uint64_t a1, uint64_t a2)
{
  v4 = sub_B834(&qword_18D98, type metadata accessor for SetAlarmAssistantConfigurator, &unk_10288);

  return CandidateSuggestionConfigurator.create(actionIdentifier:)(a1, a2, v4);
}

uint64_t sub_77CC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_F32C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_7834(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_78D0;

  return sub_68A4(a1, a2);
}

uint64_t sub_78D0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_79C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_3D04;

  return CandidateSuggestionConfigurator.isValid(signal:)(a1, a2, a3);
}

uint64_t sub_7A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_7B24;

  return CandidateSuggestionConfigurator.isValidWithDebug(signal:)(a1, a2, a3);
}

uint64_t sub_7B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;

  v7 = *(v9 + 8);

  return v7(a1, a2, a3);
}

uint64_t sub_7C38(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_F5BC();
  v8 = v19;
  v9 = v20;
  v10 = sub_53CC(v18, v19);
  v17[3] = v8;
  v17[4] = *(v9 + 8);
  v11 = sub_5554(v17);
  (*(*(v8 - 8) + 16))(v11, v10, v8);
  sub_7DAC(a1, a2);
  v12 = a3[3];
  v13 = sub_53CC(a3, v12);
  v16[3] = v12;
  v14 = sub_5554(v16);
  (*(*(v12 - 8) + 16))(v14, v13, v12);
  sub_F5EC();

  sub_5410(v16);
  sub_5410(v17);
  return sub_5410(v18);
}

unint64_t sub_7DAC(uint64_t a1, void *a2)
{
  sub_F76C(28);

  v5._countAndFlagsBits = a1;
  v5._object = a2;
  sub_F6EC(v5);
  return 0xD00000000000001ALL;
}

unint64_t sub_7E2C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_7EF8(v11, 0, 0, 1, a1, a2);
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
    sub_9C7C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_5410(v11);
  return v7;
}

unint64_t sub_7EF8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_8004(a5, a6);
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
    result = sub_F77C();
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

char *sub_8004(uint64_t a1, unint64_t a2)
{
  v3 = sub_8050(a1, a2);
  sub_8180(&off_14A68);
  return v3;
}

char *sub_8050(uint64_t a1, unint64_t a2)
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

  v6 = sub_826C(v5, 0);
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

  result = sub_F77C();
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
        v10 = sub_F6FC();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_826C(v10, 0);
        result = sub_F75C();
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

uint64_t sub_8180(uint64_t result)
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

  result = sub_82E0(result, v11, 1, v3);
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

void *sub_826C(uint64_t a1, uint64_t a2)
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

  sub_20AC(&qword_18CE8, &qword_101F8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_82E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_20AC(&qword_18CE8, &qword_101F8);
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

uint64_t sub_83F0()
{
  if (qword_185B8 != -1)
  {
    swift_once();
  }

  v1 = sub_F68C();
  sub_850C(v1, qword_18850);
  v2 = sub_F67C();
  v3 = sub_F72C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&def_5140, v2, v3, "[AlarmLabelResolver] No alarm label value directly assigned in context. Running the AlarmLabelResolver", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5(&_swiftEmptyArrayStorage);
}

uint64_t sub_850C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_8544(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_85A8(void *a1)
{
  [a1 timeIntervalSince1970];
  v2 = v1;
  if (qword_185B8 != -1)
  {
    swift_once();
  }

  v3 = sub_F68C();
  sub_850C(v3, qword_18850);
  v4 = sub_F67C();
  v5 = sub_F72C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&def_5140, v4, v5, "AlarmTimeResolver resolveParameter() called", v6, 2u);
  }

  sub_20AC(&qword_18CB8, &qword_101D8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_FBD0;
  sub_20AC(&qword_18CF0, &qword_10200);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_FBD0;
  *(inited + 32) = 1935893875;
  v9 = inited + 32;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = (floor(v2 / 3600.0) + 2.0) * 3600.0;
  v10 = sub_C11C(inited);
  swift_setDeallocating();
  sub_AD0C(v9, &qword_18CF8, &qword_10208);
  *(v7 + 56) = sub_20AC(&qword_18D00, &qword_10210);
  *(v7 + 32) = v10;
  return v7;
}

uint64_t sub_8780(uint64_t a1)
{
  v2[42] = a1;
  v2[43] = v1;
  v3 = sub_F2EC();
  v2[44] = v3;
  v2[45] = *(v3 - 8);
  v2[46] = swift_task_alloc();
  v2[47] = sub_20AC(&qword_18C88, &qword_101B0);
  v2[48] = swift_task_alloc();
  sub_20AC(&qword_18C90, &qword_101B8);
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v4 = sub_F18C();
  v2[52] = v4;
  v2[53] = *(v4 - 8);
  v2[54] = swift_task_alloc();
  sub_20AC(&qword_18C98, &qword_101C0);
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v5 = sub_F0BC();
  v2[57] = v5;
  v2[58] = *(v5 - 8);
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  sub_20AC(&qword_18CA0, &qword_101C8);
  v2[62] = swift_task_alloc();
  v2[63] = swift_task_alloc();
  v6 = sub_F04C();
  v2[64] = v6;
  v2[65] = *(v6 - 8);
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();
  v2[68] = swift_task_alloc();

  return _swift_task_switch(sub_8A98, 0, 0);
}

uint64_t sub_8A98()
{
  v1 = v0[42];
  v2 = v1[3];
  v0[69] = v2;
  v0[70] = v1[4];
  v0[71] = sub_53CC(v1, v2);
  v0[72] = sub_F35C();
  v0[73] = v3;
  v0[74] = swift_getObjectType();
  v5 = sub_F70C();

  return _swift_task_switch(sub_8B5C, v5, v4);
}

uint64_t sub_8B5C()
{
  sub_F5CC();
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_8BE4, 0, 0);
}

uint64_t sub_8BE4()
{
  v53 = v0;
  v1 = v0[65];
  v2 = v0[63];
  v3 = v0[64];
  if (!v0[37])
  {
    sub_AD0C((v0 + 34), &qword_18CA8, &qword_101D0);
    v5 = *(v1 + 56);
    v5(v2, 1, 1, v3);
    goto LABEL_6;
  }

  v4 = swift_dynamicCast();
  v5 = *(v1 + 56);
  v5(v2, v4 ^ 1u, 1, v3);
  if ((*(v1 + 48))(v2, 1, v3) == 1)
  {
LABEL_6:
    v12 = v0[63];
    v10 = &qword_18CA0;
    v11 = &qword_101C8;
    goto LABEL_7;
  }

  v6 = v0[57];
  v7 = v0[58];
  v8 = v0[56];
  (*(v0[65] + 32))(v0[68], v0[63], v0[64]);
  sub_F03C();
  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    v9 = v0[56];
    (*(v0[65] + 8))(v0[68], v0[64]);
    v10 = &qword_18C98;
    v11 = &qword_101C0;
    v12 = v9;
LABEL_7:
    sub_AD0C(v12, v10, v11);
    v0[75] = v5;
    v13 = v0[43];
    v0[76] = sub_F35C();
    v0[77] = v14;
    v0[78] = swift_getObjectType();
    v0[79] = *(v13 + 16);
    v0[80] = *(v13 + 24);
    v16 = sub_F70C();

    return _swift_task_switch(sub_9290, v16, v15);
  }

  (*(v0[58] + 32))(v0[61], v0[56], v0[57]);
  if (qword_185B8 != -1)
  {
    swift_once();
  }

  v17 = v0[68];
  v18 = v0[67];
  v19 = v0[65];
  v20 = v0[64];
  v21 = sub_F68C();
  sub_850C(v21, qword_18850);
  (*(v19 + 16))(v18, v17, v20);
  v22 = sub_F67C();
  v23 = sub_F72C();
  v24 = os_log_type_enabled(v22, v23);
  v25 = v0[67];
  v26 = v0[65];
  v27 = v0[64];
  if (v24)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v52 = v29;
    *v28 = 136315138;
    sub_B834(&qword_18CE0, &type metadata accessor for DateComponents, &protocol conformance descriptor for DateComponents);
    v30 = sub_F7AC();
    v32 = v31;
    v51 = *(v26 + 8);
    v51(v25, v27);
    v33 = sub_7E2C(v30, v32, &v52);

    *(v28 + 4) = v33;
    _os_log_impl(&def_5140, v22, v23, "AlarmTimeResolver found time value %s from IntentTransformer", v28, 0xCu);
    sub_5410(v29);
  }

  else
  {

    v51 = *(v26 + 8);
    v51(v25, v27);
  }

  v49 = v0[64];
  v50 = v0[68];
  v34 = v0[61];
  v35 = v0[58];
  v48 = v0[57];
  v36 = v0[53];
  v37 = v0[54];
  v47 = v0[52];
  sub_20AC(&qword_18CB8, &qword_101D8);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_FBD0;
  sub_20AC(&qword_18CC0, &qword_101E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_FBE0;
  *(inited + 32) = 1935893875;
  *(inited + 40) = 0xE400000000000000;
  sub_F09C();
  *(inited + 48) = v40;
  *(inited + 72) = &type metadata for Double;
  strcpy((inited + 80), "dateFormatter");
  *(inited + 94) = -4864;
  sub_F17C();
  v41 = sub_F16C();
  v43 = v42;
  (*(v36 + 8))(v37, v47);
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v41;
  *(inited + 104) = v43;
  v44 = sub_BF9C(inited);
  swift_setDeallocating();
  sub_20AC(&qword_18CC8, &qword_101E8);
  swift_arrayDestroy();
  *(v38 + 56) = sub_20AC(&qword_18CD0, &qword_101F0);
  *(v38 + 32) = v44;
  (*(v35 + 8))(v34, v48);
  v51(v50, v49);

  v45 = v0[1];

  return v45(v38);
}

uint64_t sub_9290()
{
  sub_5FA0(*(v0 + 632), *(v0 + 640), *(v0 + 624), *(v0 + 616));
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_9314, 0, 0);
}

uint64_t sub_9314()
{
  v74 = v0;
  v1 = *(v0 + 600);
  v2 = *(v0 + 520);
  v3 = *(v0 + 512);
  v4 = *(v0 + 496);
  if (!*(v0 + 328))
  {
    sub_AD0C(v0 + 304, &qword_18CA8, &qword_101D0);
    v1(v4, 1, 1, v3);
    goto LABEL_6;
  }

  v5 = swift_dynamicCast();
  v1(v4, v5 ^ 1u, 1, v3);
  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {
LABEL_6:
    v12 = *(v0 + 496);
    v10 = &qword_18CA0;
    v11 = &qword_101C8;
LABEL_7:
    sub_AD0C(v12, v10, v11);
    v14 = *(v0 + 400);
    v13 = *(v0 + 408);
    v16 = *(v0 + 376);
    v15 = *(v0 + 384);
    v17 = *(v0 + 352);
    v18 = *(v0 + 360);
    sub_53CC(*(v0 + 336), *(*(v0 + 336) + 24));
    sub_F34C();
    (*(v18 + 104))(v14, enum case for DeliveryVehicle.siriAutoComplete(_:), v17);
    (*(v18 + 56))(v14, 0, 1, v17);
    v19 = *(v16 + 48);
    sub_9C0C(v13, v15);
    sub_9C0C(v14, v15 + v19);
    v20 = *(v18 + 48);
    if (v20(v15, 1, v17) == 1)
    {
      v21 = *(v0 + 408);
      v22 = *(v0 + 352);
      sub_AD0C(*(v0 + 400), &qword_18C90, &qword_101B8);
      sub_AD0C(v21, &qword_18C90, &qword_101B8);
      if (v20(v15 + v19, 1, v22) == 1)
      {
        sub_AD0C(*(v0 + 384), &qword_18C90, &qword_101B8);
LABEL_15:
        v70 = &_swiftEmptyArrayStorage;
        goto LABEL_22;
      }
    }

    else
    {
      v23 = *(v0 + 352);
      sub_9C0C(*(v0 + 384), *(v0 + 392));
      v24 = v20(v15 + v19, 1, v23);
      v26 = *(v0 + 400);
      v25 = *(v0 + 408);
      v27 = *(v0 + 392);
      if (v24 != 1)
      {
        v71 = *(v0 + 384);
        v31 = *(v0 + 360);
        v32 = *(v0 + 368);
        v33 = *(v0 + 352);
        (*(v31 + 32))(v32, v15 + v19, v33);
        sub_B834(&qword_18CB0, &type metadata accessor for DeliveryVehicle, &protocol conformance descriptor for DeliveryVehicle);
        v34 = sub_F6AC();
        v35 = *(v31 + 8);
        v35(v32, v33);
        sub_AD0C(v26, &qword_18C90, &qword_101B8);
        sub_AD0C(v25, &qword_18C90, &qword_101B8);
        v35(v27, v33);
        sub_AD0C(v71, &qword_18C90, &qword_101B8);
        if (v34)
        {
          goto LABEL_15;
        }

LABEL_13:
        v30 = [objc_allocWithZone(NSDate) init];
        v70 = sub_85A8(v30);

        goto LABEL_22;
      }

      v28 = *(v0 + 352);
      v29 = *(v0 + 360);
      sub_AD0C(*(v0 + 400), &qword_18C90, &qword_101B8);
      sub_AD0C(v25, &qword_18C90, &qword_101B8);
      (*(v29 + 8))(v27, v28);
    }

    sub_AD0C(*(v0 + 384), &qword_18C88, &qword_101B0);
    goto LABEL_13;
  }

  v6 = *(v0 + 456);
  v7 = *(v0 + 464);
  v8 = *(v0 + 440);
  (*(*(v0 + 520) + 32))(*(v0 + 528), *(v0 + 496), *(v0 + 512));
  sub_F03C();
  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    v9 = *(v0 + 440);
    (*(*(v0 + 520) + 8))(*(v0 + 528), *(v0 + 512));
    v10 = &qword_18C98;
    v11 = &qword_101C0;
    v12 = v9;
    goto LABEL_7;
  }

  (*(*(v0 + 464) + 32))(*(v0 + 480), *(v0 + 440), *(v0 + 456));
  if (qword_185B8 != -1)
  {
    swift_once();
  }

  v36 = *(v0 + 472);
  v37 = *(v0 + 480);
  v38 = *(v0 + 456);
  v39 = *(v0 + 464);
  v40 = sub_F68C();
  sub_850C(v40, qword_18850);
  (*(v39 + 16))(v36, v37, v38);
  v41 = sub_F67C();
  v42 = sub_F72C();
  v43 = os_log_type_enabled(v41, v42);
  v45 = *(v0 + 464);
  v44 = *(v0 + 472);
  v46 = *(v0 + 456);
  if (v43)
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v73 = v48;
    *v47 = 136315138;
    sub_B834(&qword_18CD8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v49 = sub_F7AC();
    v51 = v50;
    v69 = *(v45 + 8);
    v69(v44, v46);
    v52 = sub_7E2C(v49, v51, &v73);

    *(v47 + 4) = v52;
    _os_log_impl(&def_5140, v41, v42, "AlarmTimeResolver found override time value %s from context", v47, 0xCu);
    sub_5410(v48);
  }

  else
  {

    v69 = *(v45 + 8);
    v69(v44, v46);
  }

  v53 = *(v0 + 520);
  v67 = *(v0 + 512);
  v68 = *(v0 + 528);
  v54 = *(v0 + 480);
  v66 = *(v0 + 456);
  v55 = *(v0 + 424);
  v56 = *(v0 + 432);
  v72 = *(v0 + 416);
  sub_20AC(&qword_18CB8, &qword_101D8);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_FBD0;
  sub_20AC(&qword_18CC0, &qword_101E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_FBE0;
  *(inited + 32) = 1935893875;
  *(inited + 40) = 0xE400000000000000;
  sub_F09C();
  *(inited + 48) = v59;
  *(inited + 72) = &type metadata for Double;
  strcpy((inited + 80), "dateFormatter");
  *(inited + 94) = -4864;
  sub_F17C();
  v60 = sub_F16C();
  v62 = v61;
  (*(v55 + 8))(v56, v72);
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v60;
  *(inited + 104) = v62;
  v63 = sub_BF9C(inited);
  swift_setDeallocating();
  sub_20AC(&qword_18CC8, &qword_101E8);
  swift_arrayDestroy();
  *(v57 + 56) = sub_20AC(&qword_18CD0, &qword_101F0);
  v70 = v57;
  *(v57 + 32) = v63;
  v69(v54, v66);
  (*(v53 + 8))(v68, v67);
LABEL_22:

  v64 = *(v0 + 8);

  return v64(v70);
}

uint64_t sub_9C0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20AC(&qword_18C90, &qword_101B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_9C7C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_9CDC(uint64_t a1, uint64_t a2)
{
  v2[33] = a1;
  v2[34] = a2;
  v3 = sub_F2EC();
  v2[35] = v3;
  v2[36] = *(v3 - 8);
  v2[37] = swift_task_alloc();
  v2[38] = sub_20AC(&qword_18C88, &qword_101B0);
  v2[39] = swift_task_alloc();
  sub_20AC(&qword_18C90, &qword_101B8);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();

  return _swift_task_switch(sub_9E28, 0, 0);
}

uint64_t sub_9E28()
{
  sub_53CC(*(v0 + 264), *(*(v0 + 264) + 24));
  *(v0 + 344) = sub_F35C();
  *(v0 + 352) = v1;
  *(v0 + 360) = swift_getObjectType();
  v3 = sub_F70C();

  return _swift_task_switch(sub_9ED8, v3, v2);
}

uint64_t sub_9ED8()
{
  sub_F5CC();
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_9F64, 0, 0);
}

uint64_t sub_9F64()
{
  v60 = v0;
  if (*(v0 + 240))
  {
    if (swift_dynamicCast())
    {
      v1 = *(v0 + 256);
      if (qword_185B8 != -1)
      {
        swift_once();
      }

      v2 = sub_F68C();
      sub_850C(v2, qword_18850);
      v3 = sub_F67C();
      v4 = sub_F72C();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 134217984;
        *(v5 + 4) = v1;
        _os_log_impl(&def_5140, v3, v4, "[TimerDurationResolver] got duration value %f from IntentTransformer. Returning", v5, 0xCu);
      }

      sub_20AC(&qword_18CB8, &qword_101D8);
      v6 = swift_allocObject();
      v57 = xmmword_FBD0;
      v6[1] = xmmword_FBD0;
      sub_20AC(&qword_18CF0, &qword_10200);
LABEL_8:
      inited = swift_initStackObject();
      *(inited + 16) = v57;
      *(inited + 32) = 1935893875;
      v8 = inited + 32;
      *(inited + 40) = 0xE400000000000000;
      *(inited + 48) = v1;
      v9 = sub_C11C(inited);
      swift_setDeallocating();
      sub_AD0C(v8, &qword_18CF8, &qword_10208);
      *(v6 + 7) = sub_20AC(&qword_18D00, &qword_10210);
      *(v6 + 4) = v9;
      goto LABEL_38;
    }
  }

  else
  {
    sub_AD0C(v0 + 216, &qword_18CA8, &qword_101D0);
  }

  v11 = *(v0 + 328);
  v10 = *(v0 + 336);
  v13 = *(v0 + 304);
  v12 = *(v0 + 312);
  v14 = *(v0 + 280);
  v15 = *(v0 + 288);
  sub_53CC(*(v0 + 264), *(*(v0 + 264) + 24));
  sub_F34C();
  (*(v15 + 104))(v11, enum case for DeliveryVehicle.siriAutoComplete(_:), v14);
  (*(v15 + 56))(v11, 0, 1, v14);
  v16 = *(v13 + 48);
  sub_9C0C(v10, v12);
  sub_9C0C(v11, v12 + v16);
  v17 = *(v15 + 48);
  if (v17(v12, 1, v14) == 1)
  {
    v18 = *(v0 + 336);
    v19 = *(v0 + 280);
    sub_AD0C(*(v0 + 328), &qword_18C90, &qword_101B8);
    sub_AD0C(v18, &qword_18C90, &qword_101B8);
    if (v17(v12 + v16, 1, v19) == 1)
    {
      sub_AD0C(*(v0 + 312), &qword_18C90, &qword_101B8);
LABEL_37:
      v6 = &_swiftEmptyArrayStorage;
      goto LABEL_38;
    }

    goto LABEL_15;
  }

  v20 = *(v0 + 280);
  sub_9C0C(*(v0 + 312), *(v0 + 320));
  v21 = v17(v12 + v16, 1, v20);
  v23 = *(v0 + 328);
  v22 = *(v0 + 336);
  v24 = *(v0 + 320);
  if (v21 == 1)
  {
    v25 = *(v0 + 280);
    v26 = *(v0 + 288);
    sub_AD0C(*(v0 + 328), &qword_18C90, &qword_101B8);
    sub_AD0C(v22, &qword_18C90, &qword_101B8);
    (*(v26 + 8))(v24, v25);
LABEL_15:
    sub_AD0C(*(v0 + 312), &qword_18C88, &qword_101B0);
    goto LABEL_16;
  }

  v58 = *(v0 + 312);
  v50 = *(v0 + 288);
  v51 = *(v0 + 296);
  v52 = *(v0 + 280);
  (*(v50 + 32))(v51, v12 + v16, v52);
  sub_B834(&qword_18CB0, &type metadata accessor for DeliveryVehicle, &protocol conformance descriptor for DeliveryVehicle);
  v53 = sub_F6AC();
  v54 = *(v50 + 8);
  v54(v51, v52);
  sub_AD0C(v23, &qword_18C90, &qword_101B8);
  sub_AD0C(v22, &qword_18C90, &qword_101B8);
  v54(v24, v52);
  sub_AD0C(v58, &qword_18C90, &qword_101B8);
  if (v53)
  {
    goto LABEL_37;
  }

LABEL_16:
  sub_53CC(*(v0 + 272), *(*(v0 + 272) + 24));
  v27 = sub_F2CC();
  if (*(v27 + 16) && (v28 = sub_4458(0x6E6F697461727564, 0xE800000000000000), (v29 & 1) != 0))
  {
    sub_2140(*(v27 + 56) + 48 * v28, v0 + 128);

    sub_20AC(&qword_18610, &unk_FB60);
    if (swift_dynamicCast())
    {
      v30 = *(v0 + 248);
      if (qword_185B8 != -1)
      {
        swift_once();
      }

      v31 = sub_F68C();
      sub_850C(v31, qword_18850);
      v32 = sub_F67C();
      v33 = sub_F72C();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 134217984;
        *(v34 + 4) = v30;
        _os_log_impl(&def_5140, v32, v33, "TimerDurationResolver.resolveParameter called with duration of %f", v34, 0xCu);
      }

      v35 = ceil(v30 / 300.0) * 300.0;
      if (v30 == v35)
      {
        v1 = v35 + 300.0;
      }

      else
      {
        v1 = v35;
      }

      sub_20AC(&qword_18CB8, &qword_101D8);
      v6 = swift_allocObject();
      v57 = xmmword_FBD0;
      v6[1] = xmmword_FBD0;
      sub_20AC(&qword_18CF0, &qword_10200);
      goto LABEL_8;
    }
  }

  else
  {
  }

  if (qword_185B8 != -1)
  {
    swift_once();
  }

  v36 = sub_F68C();
  sub_850C(v36, qword_18850);
  v37 = sub_F67C();
  v38 = sub_F72C();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&def_5140, v37, v38, "Could not get duration from interaction.executionParameters", v39, 2u);
  }

  v40 = *(v0 + 272);

  sub_A8F0(v40, v0 + 176);
  v41 = sub_F67C();
  v42 = sub_F72C();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v59 = v44;
    *v43 = 136315138;
    sub_53CC((v0 + 176), *(v0 + 200));
    sub_F2CC();
    sub_20AC(&qword_18610, &unk_FB60);
    v45 = sub_F69C();
    v47 = v46;

    sub_5410((v0 + 176));
    v48 = sub_7E2C(v45, v47, &v59);

    *(v43 + 4) = v48;
    _os_log_impl(&def_5140, v41, v42, "interaction.executionParameters: %s", v43, 0xCu);
    sub_5410(v44);
  }

  else
  {

    sub_5410((v0 + 176));
  }

  sub_20AC(&qword_18CB8, &qword_101D8);
  v6 = swift_allocObject();
  v6[1] = xmmword_FBD0;
  v49 = sub_C11C(&off_14A90);
  sub_AD0C(&unk_14AB0, &qword_18CF8, &qword_10208);
  *(v6 + 7) = sub_20AC(&qword_18D00, &qword_10210);
  *(v6 + 4) = v49;
LABEL_38:

  v55 = *(v0 + 8);

  return v55(v6);
}

uint64_t sub_A8F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_A954(uint64_t a1, uint64_t a2)
{
  v2[8] = a2;
  sub_20AC(&qword_18608, &qword_10230);
  v2[9] = swift_task_alloc();
  v3 = sub_F1CC();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_AA58, 0, 0);
}

uint64_t sub_AA58()
{
  sub_53CC(*(v0 + 64), *(*(v0 + 64) + 24));
  v1 = sub_F2CC();
  if (*(v1 + 16) && (v2 = sub_4458(0x65736E6F70736572, 0xEC00000065646F4DLL), (v3 & 1) != 0))
  {
    v4 = *(v0 + 80);
    v5 = *(v0 + 88);
    v6 = *(v0 + 72);
    sub_2140(*(v1 + 56) + 48 * v2, v0 + 16);

    sub_20AC(&qword_18610, &unk_FB60);
    v7 = swift_dynamicCast();
    (*(v5 + 56))(v6, v7 ^ 1u, 1, v4);
    if ((*(v5 + 48))(v6, 1, v4) != 1)
    {
      v9 = *(v0 + 96);
      v8 = *(v0 + 104);
      v10 = *(v0 + 80);
      v11 = *(v0 + 88);
      (*(v11 + 32))(v8, *(v0 + 72), v10);
      sub_20AC(&qword_18CB8, &qword_101D8);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_FBD0;
      sub_F1AC();
      v13 = sub_F1BC();
      v14 = *(v11 + 8);
      v14(v9, v10);
      *(v12 + 56) = &type metadata for Bool;
      *(v12 + 32) = v13 & 1;
      v14(v8, v10);
      goto LABEL_7;
    }
  }

  else
  {
    v15 = *(v0 + 80);
    v16 = *(v0 + 88);
    v17 = *(v0 + 72);

    (*(v16 + 56))(v17, 1, 1, v15);
  }

  sub_AD0C(*(v0 + 72), &qword_18608, &qword_10230);
  sub_20AC(&qword_18CB8, &qword_101D8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_FBD0;
  *(v12 + 56) = &type metadata for Bool;
  *(v12 + 32) = 0;
LABEL_7:

  v18 = *(v0 + 8);

  return v18(v12);
}

uint64_t sub_AD0C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_20AC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_AD88()
{
  if (qword_185B8 != -1)
  {
    swift_once();
  }

  v1 = sub_F68C();
  sub_850C(v1, qword_18850);
  v2 = sub_F67C();
  v3 = sub_F72C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&def_5140, v2, v3, "[TimerLabelResolver] No timer label value directly assigned in context. Running the TimerLabelResolver", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5(&_swiftEmptyArrayStorage);
}

uint64_t sub_AEA4(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  sub_20AC(&qword_18CA0, &qword_101C8);
  v2[24] = swift_task_alloc();

  return _swift_task_switch(sub_AF40, 0, 0);
}

uint64_t sub_AF40()
{
  v1 = v0[22];
  v2 = v1[3];
  v0[25] = v2;
  v0[26] = v1[4];
  v0[27] = sub_53CC(v1, v2);
  v0[28] = sub_F35C();
  v0[29] = v3;
  v0[30] = swift_getObjectType();
  v5 = sub_F70C();

  return _swift_task_switch(sub_B000, v5, v4);
}

uint64_t sub_B000()
{
  sub_F5CC();
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_B084, 0, 0);
}

uint64_t sub_B084()
{
  v1 = v0[24];
  if (v0[5])
  {
    v2 = sub_F04C();
    v3 = swift_dynamicCast();
    v4 = *(v2 - 8);
    (*(v4 + 56))(v1, v3 ^ 1u, 1, v2);
    if ((*(v4 + 48))(v1, 1, v2) != 1)
    {
      sub_AD0C(v0[24], &qword_18CA0, &qword_101C8);

      v5 = v0[1];

      return v5(&_swiftEmptyArrayStorage);
    }
  }

  else
  {
    sub_AD0C((v0 + 2), &qword_18CA8, &qword_101D0);
    v7 = sub_F04C();
    (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  }

  v8 = v0[23];
  sub_AD0C(v0[24], &qword_18CA0, &qword_101C8);
  v0[31] = sub_F35C();
  v0[32] = v9;
  v0[33] = swift_getObjectType();
  v0[34] = *(v8 + 16);
  v0[35] = *(v8 + 24);
  v11 = sub_F70C();

  return _swift_task_switch(sub_B2AC, v11, v10);
}

uint64_t sub_B2AC()
{
  sub_5FA0(*(v0 + 272), *(v0 + 280), *(v0 + 264), *(v0 + 256));
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_B328, 0, 0);
}

uint64_t sub_B328()
{
  v18 = v0;
  if (*(v0 + 104))
  {
    sub_B620((v0 + 80), (v0 + 48));
    if (qword_185B8 != -1)
    {
      swift_once();
    }

    v1 = sub_F68C();
    sub_850C(v1, qword_18850);
    sub_9C7C(v0 + 48, v0 + 112);
    v2 = sub_F67C();
    v3 = sub_F72C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v17 = v5;
      *v4 = 136315138;
      sub_9C7C(v0 + 112, v0 + 144);
      v6 = sub_F6CC();
      v8 = v7;
      sub_5410((v0 + 112));
      v9 = sub_7E2C(v6, v8, &v17);

      *(v4 + 4) = v9;
      _os_log_impl(&def_5140, v2, v3, "AlarmRepeatScheduleResolver found override value %s from context", v4, 0xCu);
      sub_5410(v5);
    }

    else
    {

      sub_5410((v0 + 112));
    }

    sub_20AC(&qword_18CB8, &qword_101D8);
    v14 = swift_allocObject();
    v14[1] = xmmword_FBD0;
    sub_B620((v0 + 48), v14 + 2);
  }

  else
  {
    sub_AD0C(v0 + 80, &qword_18CA8, &qword_101D0);
    if (qword_185B8 != -1)
    {
      swift_once();
    }

    v10 = sub_F68C();
    sub_850C(v10, qword_18850);
    v11 = sub_F67C();
    v12 = sub_F72C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&def_5140, v11, v12, "[AlarmRepeatScheduleResolver] No alarmRepeatSchedule value directly assigned in context. Running the AlarmRepeatScheduleResolver", v13, 2u);
    }

    v14 = &_swiftEmptyArrayStorage;
  }

  v15 = *(v0 + 8);

  return v15(v14);
}

_OWORD *sub_B620(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_B644(uint64_t a1, uint64_t a2)
{
  v4 = sub_F32C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_B6C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_F32C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for SetAlarmAssistantConfigurator(uint64_t a1)
{
  result = qword_18D60;
  if (!qword_18D60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_B780(uint64_t a1)
{
  result = sub_F32C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_B834(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_B87C(uint64_t a1, uint64_t a2)
{
  v3[3] = &type metadata for String;
  strcpy(v3, "everyMorning");
  BYTE5(v3[1]) = 0;
  HIWORD(v3[1]) = -5120;
  sub_7C38(0xD000000000000013, 0x8000000000010E80, v3, a1, a2);
  return sub_5410(v3);
}

unint64_t sub_B91C()
{
  result = qword_18DA0;
  if (!qword_18DA0)
  {
    sub_F2DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18DA0);
  }

  return result;
}

uint64_t sub_B980(uint64_t a1, uint64_t *a2)
{
  sub_F5AC();
  v3 = sub_F2DC();
  v6[3] = v3;
  v6[4] = sub_B91C();
  v4 = sub_5554(v6);
  (*(*(v3 - 8) + 104))(v4, enum case for CoreSignalTypes.app(_:), v3);
  result = sub_F56C();
  *a2 = result;
  return result;
}

uint64_t sub_BA40()
{
  sub_F5AC();
  result = sub_F58C();
  qword_18EA8 = result;
  return result;
}

uint64_t sub_BA74()
{
  sub_F5AC();
  result = sub_F55C();
  qword_18EB0 = result;
  return result;
}

uint64_t sub_BAA8()
{
  sub_F5AC();
  result = sub_F57C();
  qword_18EB8 = result;
  return result;
}

uint64_t sub_BADC()
{
  sub_20AC(&qword_18DA8, &qword_10330);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10310;
  *(inited + 32) = 0;
  sub_20AC(&qword_18840, &qword_FD08);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10320;
  if (qword_185C8 != -1)
  {
    swift_once();
  }

  *(v1 + 32) = qword_18E98;
  v2 = qword_185D8;

  if (v2 != -1)
  {
    swift_once();
  }

  *(v1 + 40) = qword_18EA8;
  v3 = qword_185E0;

  if (v3 != -1)
  {
    swift_once();
  }

  *(v1 + 48) = qword_18EB0;
  v4 = qword_185E8;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_18EB8;
  *(v1 + 56) = qword_18EB8;
  *(inited + 40) = v1;
  *(inited + 48) = 1;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_FC10;
  v7 = qword_185C0;

  if (v7 != -1)
  {
    swift_once();
    v5 = qword_18EB8;
  }

  v8 = qword_18E90;
  *(v6 + 32) = qword_18E90;
  *(v6 + 40) = v5;
  v9 = qword_18EB0;
  *(v6 + 48) = qword_18EB0;
  *(inited + 56) = v6;
  *(inited + 64) = 2;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_FC10;
  *(v10 + 32) = v8;
  *(v10 + 40) = v5;
  *(v10 + 48) = v9;
  *(inited + 72) = v10;
  *(inited + 80) = 3;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_FC00;
  *(v11 + 32) = v8;
  *(inited + 88) = v11;
  *(inited + 96) = 4;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_FC10;
  v13 = qword_185D0;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  if (v13 != -1)
  {
    swift_once();
    v9 = qword_18EB0;
  }

  v14 = qword_18EA0;
  *(v12 + 32) = qword_18EA0;
  *(v12 + 40) = v9;
  v15 = qword_18EA8;
  *(v12 + 48) = qword_18EA8;
  *(inited + 104) = v12;
  *(inited + 112) = 5;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_FC10;
  *(v16 + 32) = v14;
  *(v16 + 40) = v9;
  *(v16 + 48) = v15;
  *(inited + 120) = v16;
  *(inited + 128) = 6;
  *(inited + 136) = &_swiftEmptyArrayStorage;
  *(inited + 144) = 7;
  *(inited + 152) = &_swiftEmptyArrayStorage;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v17 = sub_BEA8(inited);
  swift_setDeallocating();
  sub_20AC(&qword_18DB0, &qword_10338);
  result = swift_arrayDestroy();
  qword_18EC0 = v17;
  return result;
}

unint64_t sub_BEA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_20AC(&qword_18DB8, &qword_10340);
    v3 = sub_F78C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_44D0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_BF9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_20AC(&qword_18DC0, &qword_10348);
    v3 = sub_F78C();
    v4 = a1 + 32;

    while (1)
    {
      sub_C0AC(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_4458(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_B620(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
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

uint64_t sub_C0AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20AC(&qword_18CC8, &qword_101E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_C11C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_20AC(&qword_18DC8, &unk_10350);
    v3 = sub_F78C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_4458(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
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

uint64_t sub_C220(unsigned __int8 a1)
{
  v2 = sub_F08C();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v17 - v7;
  v9 = AFSystemRootDirectory();
  sub_F6BC();

  sub_F05C();

  sub_F06C();
  v10 = *(v3 + 8);
  v10(v6, v2);
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  sub_F76C(19);
  v11 = 0x6F6C466D72616C41;
  if (((1 << a1) & 0x180E) == 0)
  {
    v11 = 0x6F6C466B636F6C43;
  }

  if (((1 << a1) & 0x7C1) != 0)
  {
    v12 = 0xD000000000000017;
  }

  else
  {
    v12 = v11;
  }

  if (((1 << a1) & 0x7C1) != 0)
  {
    v13 = 0x8000000000010EF0;
  }

  else
  {
    v13 = 0xEF6E6967756C5077;
  }

  if (a1 <= 0xCu)
  {
    v14._countAndFlagsBits = v12;
  }

  else
  {
    v14._countAndFlagsBits = 0x6F6C466B636F6C43;
  }

  if (a1 <= 0xCu)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0xEF6E6967756C5077;
  }

  v14._object = v15;
  sub_F6EC(v14);

  v18._object = 0x8000000000010ED0;
  v18._countAndFlagsBits = 0xD000000000000011;
  sub_F6EC(v18);
  sub_F06C();

  return (v10)(v8, v2);
}

unint64_t sub_C470(unsigned __int8 a1)
{
  if (a1 <= 6u)
  {
    v4 = 0xD000000000000069;
    if (a1 == 6)
    {
      v5 = 0xD000000000000064;
    }

    else
    {
      v5 = 0;
    }

    if (a1 == 3)
    {
      v5 = 0xD000000000000063;
    }

    if (a1 != 2)
    {
      v4 = v5;
    }

    v6 = 0xD00000000000005ELL;
    v7 = 0xD000000000000063;
    if (a1 != 1)
    {
      v7 = 0;
    }

    if (a1)
    {
      v6 = v7;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else if (a1 > 9u)
  {
    v8 = 0xD000000000000063;
    v9 = 0xD000000000000063;
    if (a1 != 12)
    {
      v9 = 0;
    }

    if (a1 != 11)
    {
      v8 = v9;
    }

    if (a1 == 10)
    {
      return 0xD00000000000005DLL;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v1 = 0xD00000000000005ELL;
    if (a1 == 9)
    {
      v2 = 0xD00000000000005ELL;
    }

    else
    {
      v2 = 0;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    if (a1 == 7)
    {
      return 0xD00000000000005FLL;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_C61C(unsigned __int8 a1)
{
  v1 = 0;
  if (a1 <= 5u)
  {
    if (a1 - 2 < 2)
    {
      sub_20AC(&qword_18830, &qword_FD00);
      v11 = sub_F2EC();
      v12 = *(v11 - 8);
      v13 = *(v12 + 72);
      v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_FBE0;
      v15 = v1 + v14;
      v16 = *(v12 + 104);
      v16(v15, enum case for DeliveryVehicle.siriHelp(_:), v11);
      v16(v15 + v13, enum case for DeliveryVehicle.siriAutoComplete(_:), v11);
      return v1;
    }

    if (a1)
    {
      if (a1 == 1)
      {
        sub_20AC(&qword_18830, &qword_FD00);
        v2 = sub_F2EC();
        v3 = *(v2 - 8);
        v4 = *(v3 + 72);
        v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
        v1 = swift_allocObject();
        *(v1 + 16) = xmmword_10360;
        v6 = v1 + v5;
        v7 = *(v3 + 104);
        v7(v6, enum case for DeliveryVehicle.siriHelp(_:), v2);
        v7(v6 + v4, enum case for DeliveryVehicle.siriAutoComplete(_:), v2);
        v7(v6 + 2 * v4, enum case for DeliveryVehicle.assistantSuggestions(_:), v2);
      }

      return v1;
    }

    sub_20AC(&qword_18830, &qword_FD00);
    v25 = sub_F2EC();
    v26 = *(v25 - 8);
    v27 = *(v26 + 72);
    v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_FBC0;
    v29 = v1 + v28;
    v30 = *(v26 + 104);
    v30(v29, enum case for DeliveryVehicle.siriHelp(_:), v25);
    v30(v29 + v27, enum case for DeliveryVehicle.assistantSuggestions(_:), v25);
    v30(v29 + 2 * v27, enum case for DeliveryVehicle.siriAutoComplete(_:), v25);
    v31 = 3 * v27;
LABEL_14:
    sub_F2FC();
    v30(v29 + v31, enum case for DeliveryVehicle.inApp(_:), v25);
    return v1;
  }

  if (a1 - 9 < 4)
  {
    sub_20AC(&qword_18830, &qword_FD00);
    v8 = sub_F2EC();
    v9 = *(v8 - 8);
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_FBD0;
    (*(v9 + 104))(v1 + v10, enum case for DeliveryVehicle.siriAutoComplete(_:), v8);
    return v1;
  }

  if (a1 == 8)
  {
    sub_20AC(&qword_18830, &qword_FD00);
    v25 = sub_F2EC();
    v32 = *(v25 - 8);
    v31 = *(v32 + 72);
    v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_FBE0;
    v29 = v1 + v33;
    v30 = *(v32 + 104);
    v30(v29, enum case for DeliveryVehicle.siriAutoComplete(_:), v25);
    goto LABEL_14;
  }

  if (a1 == 6)
  {
    sub_20AC(&qword_18830, &qword_FD00);
    v17 = sub_F2EC();
    v18 = *(v17 - 8);
    v19 = *(v18 + 72);
    v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_FBE0;
    v21 = v1 + v20;
    v22 = enum case for SiriHintsMode.display(_:);
    v23 = sub_F25C();
    (*(*(v23 - 8) + 104))(v21, v22, v23);
    v24 = *(v18 + 104);
    v24(v21, enum case for DeliveryVehicle.siriHints(_:), v17);
    v24(v21 + v19, enum case for DeliveryVehicle.siriAutoComplete(_:), v17);
  }

  return v1;
}

void *sub_CC58(unsigned __int8 a1)
{
  v2 = sub_20AC(&qword_18DE8, &qword_10370);
  __chkstk_darwin(v2 - 8);
  result = &_swiftEmptyArrayStorage;
  if (a1 <= 5u)
  {
    if (a1 > 2u)
    {
      if (a1 - 4 < 2)
      {
        return result;
      }

      sub_20AC(&qword_18DF0, &unk_10378);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_FBE0;

      sub_20AC(&qword_18CA8, &qword_101D0);
      sub_F19C();
      sub_F62C();
      sub_F3EC();
      sub_F37C();
      swift_allocObject();
      v17 = sub_F36C();
      v18 = type metadata accessor for AlarmLabelResolver();
      v19 = swift_allocObject();
      *(v19 + 16) = 0x62614C6D72616C61;
      *(v19 + 24) = 0xEA00000000006C65;
      v32 = v18;
      v33 = sub_DA48(&qword_18DF8, type metadata accessor for AlarmLabelResolver, &unk_10158);
      *&v31 = v19;
      sub_F014(&v31, v8 + 48);
      *(v8 + 32) = 0x62614C6D72616C61;
      *(v8 + 40) = 0xEA00000000006C65;
      *(v8 + 88) = v17;
      sub_F3FC();
      sub_5688(0xD000000000000063, 0x80000000000107B0, 1u);

      swift_allocObject();
      v12 = sub_F36C();
      v20 = type metadata accessor for AlarmTimeResolver();
      v21 = swift_allocObject();
      *(v21 + 16) = 0x6D69546D72616C61;
      *(v21 + 24) = 0xE900000000000065;
      v32 = v20;
      v33 = sub_DA48(&qword_18E00, type metadata accessor for AlarmTimeResolver, &unk_100C8);
      *&v31 = v21;
      sub_F014(&v31, v8 + 112);
      result = v8;
      v15 = 1701669236;
      v16 = 0xE400000000000000;
    }

    else
    {
      if (!a1)
      {
        sub_20AC(&qword_18DF0, &unk_10378);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_FBE0;

        sub_F3FC();
        sub_F64C();
        sub_F3EC();
        sub_F37C();
        swift_allocObject();
        v24 = sub_F36C();
        v25 = type metadata accessor for TimerDurationResolver();
        v26 = swift_allocObject();
        strcpy((v26 + 16), "timerDuration");
        *(v26 + 30) = -4864;
        v32 = v25;
        v33 = sub_DA48(&qword_18E20, type metadata accessor for TimerDurationResolver, &unk_10028);
        *&v31 = v26;
        sub_F014(&v31, v8 + 48);
        *(v8 + 32) = 0x6E6F697461727564;
        *(v8 + 40) = 0xE800000000000000;
        *(v8 + 88) = v24;
        sub_20AC(&qword_18CA8, &qword_101D0);
        sub_F19C();
        sub_5688(0xD00000000000005ELL, 0x80000000000105B0, 4u);

        swift_allocObject();
        v12 = sub_F36C();
        v27 = type metadata accessor for TimerLabelResolver();
        v28 = swift_allocObject();
        *(v28 + 16) = 0x62614C72656D6974;
        *(v28 + 24) = 0xEA00000000006C65;
        v32 = v27;
        v33 = sub_DA48(&qword_18E08, type metadata accessor for TimerLabelResolver, &unk_FF08);
        *&v31 = v28;
        sub_F014(&v31, v8 + 112);
        result = v8;
        *(v8 + 96) = 0x62614C72656D6974;
        *(v8 + 104) = 0xEA00000000006C65;
        goto LABEL_15;
      }

      if (a1 != 1)
      {
        return result;
      }

      sub_20AC(&qword_18DF0, &unk_10378);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_FBE0;
      sub_F3FC();
      sub_5688(0xD000000000000063, 0x8000000000010740, 1u);

      sub_F37C();
      swift_allocObject();
      v9 = sub_F36C();
      v10 = type metadata accessor for AlarmTimeResolver();
      v11 = swift_allocObject();
      *(v11 + 16) = 0x6D69546D72616C61;
      *(v11 + 24) = 0xE900000000000065;
      v32 = v10;
      v33 = sub_DA48(&qword_18E00, type metadata accessor for AlarmTimeResolver, &unk_100C8);
      *&v31 = v11;
      sub_F014(&v31, v8 + 48);
      *(v8 + 32) = 1701669236;
      *(v8 + 40) = 0xE400000000000000;
      *(v8 + 88) = v9;

      sub_F3FC();
      sub_F3DC();
      swift_allocObject();
      v12 = sub_F36C();
      v13 = type metadata accessor for AlarmRepeatScheduleResolver();
      v14 = swift_allocObject();
      *(v14 + 16) = 0xD000000000000013;
      *(v14 + 24) = 0x8000000000010E80;
      v32 = v13;
      v33 = sub_DA48(&qword_18E18, type metadata accessor for AlarmRepeatScheduleResolver, &unk_FE78);
      *&v31 = v14;
      sub_F014(&v31, v8 + 112);
      result = v8;
      v15 = 0x6353746165706572;
      v16 = 0xEE00656C75646568;
    }

    *(v8 + 96) = v15;
    *(v8 + 104) = v16;
LABEL_15:
    *(v8 + 152) = v12;
    return result;
  }

  if (a1 <= 8u)
  {
    if (a1 == 6)
    {
      sub_20AC(&qword_18DF0, &unk_10378);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_FBD0;

      sub_F3FC();
      sub_F64C();
      sub_F3EC();
      sub_F37C();
      swift_allocObject();
      v5 = sub_F36C();
      v22 = type metadata accessor for TimerDurationResolver();
      v23 = swift_allocObject();
      strcpy((v23 + 16), "timerDuration");
      *(v23 + 30) = -4864;
      v32 = v22;
      v33 = sub_DA48(&qword_18E20, type metadata accessor for TimerDurationResolver, &unk_10028);
      *&v31 = v23;
      sub_F014(&v31, v4 + 48);
      result = v4;
      *(v4 + 32) = 0x6E6F697461727564;
      *(v4 + 40) = 0xE800000000000000;
    }

    else
    {
      sub_20AC(&qword_18DF0, &unk_10378);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_FBD0;
      if (a1 == 7)
      {

        sub_F3FC();
        sub_F3DC();
        sub_F37C();
        swift_allocObject();
        v5 = sub_F36C();
        v6 = type metadata accessor for DisplayOnlyResolver();
        v7 = swift_allocObject();
        strcpy((v7 + 16), "isDisplayOnly");
        *(v7 + 30) = -4864;
        v32 = v6;
        v33 = sub_DA48(&qword_18E10, type metadata accessor for DisplayOnlyResolver, &unk_FF98);
        *&v31 = v7;
        sub_F014(&v31, v4 + 48);
        result = v4;
        strcpy((v4 + 32), "isDisplayOnly");
        *(v4 + 46) = -4864;
      }

      else
      {
        sub_20AC(&qword_18CA8, &qword_101D0);
        sub_F19C();
        sub_5688(0xD00000000000005ELL, 0x80000000000106E0, 4u);

        sub_F37C();
        swift_allocObject();
        v5 = sub_F36C();
        v29 = type metadata accessor for TimerLabelResolver();
        v30 = swift_allocObject();
        *(v30 + 16) = 0x62614C72656D6974;
        *(v30 + 24) = 0xEA00000000006C65;
        v32 = v29;
        v33 = sub_DA48(&qword_18E08, type metadata accessor for TimerLabelResolver, &unk_FF08);
        *&v31 = v30;
        sub_F014(&v31, v4 + 48);
        result = v4;
        *(v4 + 32) = 0x62614C72656D6974;
        *(v4 + 40) = 0xEA00000000006C65;
      }
    }

    *(v4 + 88) = v5;
  }

  return result;
}

uint64_t sub_D828(uint64_t *a1, id a2)
{
  v4 = [a2 alarm];
  if (v4 && (v5 = v4, v6 = [v4 label], v5, v6))
  {
    v7 = sub_F6BC();
    v9 = v8;

    a1[3] = &type metadata for String;
    *a1 = v7;
    a1[1] = v9;
    v10 = &enum case for IntentParameter.directAssignment(_:);
  }

  else
  {
    v10 = &enum case for IntentParameter.ignore(_:);
  }

  v11 = *v10;
  v12 = sub_F30C();
  (*(*(v12 - 8) + 104))(a1, v11, v12);
  v13 = *(v2 + 8);

  return v13();
}

uint64_t sub_D94C(void *a1, id a2)
{
  [a2 type];
  v4 = sub_F66C();
  if (v4 == sub_F66C())
  {
    sub_F63C();
    a1[3] = &type metadata for Double;
    *a1 = v5;
    v6 = &enum case for IntentParameter.context(_:);
  }

  else
  {
    v6 = &enum case for IntentParameter.ignore(_:);
  }

  v7 = *v6;
  v8 = sub_F30C();
  (*(*(v8 - 8) + 104))(a1, v7, v8);
  v9 = *(v2 + 8);

  return v9();
}

uint64_t sub_DA48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_DA90(char a1)
{
  result = 0x656D695441746573;
  switch(a1)
  {
    case 1:
      return 0x616C416E41746573;
    case 2:
      return 0xD000000000000010;
    case 3:
      v4 = 1633972341;
      goto LABEL_10;
    case 4:
      return 0xD000000000000010;
    case 5:
      return 0x656D695474616877;
    case 6:
      return 0x72656D6954746573;
    case 7:
      return 0x547373696D736964;
    case 8:
      v5 = 0x686372616573;
      return v5 & 0xFFFFFFFFFFFFLL | 0x6954000000000000;
    case 9:
      v5 = 0x6574656C6564;
      return v5 & 0xFFFFFFFFFFFFLL | 0x6954000000000000;
    case 10:
      return 0x6D69547465736572;
    case 11:
      v3 = 0x686372616573;
      goto LABEL_11;
    case 12:
      v4 = 1701602660;
LABEL_10:
      v3 = v4 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
LABEL_11:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6C41000000000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_DC3C()
{
  v0 = sub_F68C();
  sub_8544(v0, qword_18DD0);
  sub_850C(v0, qword_18DD0);
  return sub_F21C();
}

uint64_t sub_DC88(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_DA90(*a1);
  v5 = v4;
  if (v3 == sub_DA90(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_F7BC();
  }

  return v8 & 1;
}

unint64_t sub_DD10@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_E4AC(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_DD40@<X0>(unint64_t *a1@<X8>)
{
  result = sub_DA90(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int sub_DD7C()
{
  v1 = *v0;
  sub_F7CC();
  sub_DA90(v1);
  sub_F6DC();

  return sub_F7DC();
}

uint64_t sub_DDE0(uint64_t a1)
{
  sub_DA90(*v1);
  sub_F6DC();
}

Swift::Int sub_DE34(uint64_t a1)
{
  v2 = *v1;
  sub_F7CC();
  sub_DA90(v2);
  sub_F6DC();

  return sub_F7DC();
}

uint64_t sub_DE94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_3D04;

  return sub_E4F8(a1, a2, a3);
}

uint64_t getEnumTagSinglePayload for TimeSuggestion(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TimeSuggestion(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_E0C8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_E0E0(uint64_t a1, uint64_t a2)
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

uint64_t sub_E0F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_E13C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_E1B0()
{
  result = qword_18E28;
  if (!qword_18E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18E28);
  }

  return result;
}

unint64_t sub_E208()
{
  result = qword_18E30;
  if (!qword_18E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18E30);
  }

  return result;
}

unint64_t sub_E260()
{
  result = qword_18E38;
  if (!qword_18E38)
  {
    sub_E2C4(&qword_18E40, qword_104C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18E38);
  }

  return result;
}

uint64_t sub_E2C4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_E310()
{
  result = qword_18E48;
  if (!qword_18E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18E48);
  }

  return result;
}

void *sub_E364(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_20AC(&qword_18E70, &qword_105B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_20AC(&qword_18E78, &unk_105C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_E4AC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_14AC8;
  v6._object = a2;
  v4 = sub_F79C(v3, v6);

  if (v4 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_E4F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[22] = a1;
  v3[23] = a3;
  v4 = sub_F5FC();
  v3[24] = v4;
  v3[25] = *(v4 - 8);
  v3[26] = swift_task_alloc();
  sub_20AC(&qword_18E50, &qword_10598);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v5 = type metadata accessor for TimeSuggestionExecutionParameters(0);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  sub_20AC(&qword_18E58, &qword_105A0);
  v3[33] = swift_task_alloc();
  v6 = sub_F27C();
  v3[34] = v6;
  v3[35] = *(v6 - 8);
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();

  return _swift_task_switch(sub_E704, 0, 0);
}

uint64_t sub_E704()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 176);
  sub_53CC(v2, v2[3]);
  sub_F2BC();
  v3 = sub_F33C();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = *(v0 + 264);
  if (v5 != 1)
  {
    if ((*(v4 + 88))(v6, v3) != enum case for InteractionIntents.siriInteractionIntents(_:))
    {
      (*(v4 + 8))(*(v0 + 264), v3);
      goto LABEL_43;
    }

    v8 = *(v0 + 288);
    v7 = *(v0 + 296);
    v9 = *(v0 + 272);
    v10 = *(v0 + 280);
    v11 = *(v0 + 264);
    (*(v4 + 96))(v11, v3);
    sub_20AC(&qword_18E60, &qword_105A8);

    (*(v10 + 32))(v7, v11, v9);
    (*(v10 + 16))(v8, v7, v9);
    if ((*(v10 + 88))(v8, v9) != enum case for SiriSuggestions.Intent.inIntent(_:))
    {
      v36 = *(v0 + 288);
      v37 = *(v0 + 272);
      v38 = *(*(v0 + 280) + 8);
      v38(*(v0 + 296), v37);
      v38(v36, v37);
      goto LABEL_43;
    }

    v12 = *(v0 + 288);
    (*(*(v0 + 280) + 96))(v12, *(v0 + 272));
    v13 = *v12;
    sub_F64C();
    if (!swift_dynamicCastClass())
    {
      v42 = *(v0 + 296);
      v43 = *(v0 + 272);
      v44 = *(v0 + 280);

      (*(v44 + 8))(v42, v43);
      goto LABEL_43;
    }

    v56 = v13;
    v14 = 0;
    v15 = 0;
    v51 = *(v0 + 232);
    v16 = (*(v0 + 240) + 48);
    v17 = *(v0 + 200);
    v54 = (v17 + 8);
    v55 = (v17 + 104);
    v18 = &_swiftEmptyArrayStorage;
    v58 = *(v0 + 256);
    v57 = *(v0 + 248);
    v53 = *(v0 + 184);
    v52 = enum case for Objective.discoverability(_:);
    while (1)
    {
      v19 = v14;
      v20 = *(&off_14A10 + v15 + 32);
      sub_53CC(*(v0 + 176), v2[3]);
      v21 = sub_F2CC();
      switch(v20)
      {
        case 6:
          v23 = *(v0 + 224);
          v22 = *(v0 + 232);
          sub_1778(v21, v23);
          if ((*v16)(v23, 1, v22) == 1)
          {
            v24 = *(v0 + 224);
            goto LABEL_14;
          }

          sub_EEE4(*(v0 + 224), *(v0 + 256));
          v27 = *(v0 + 256);
          if (*(v58 + 8))
          {
            goto LABEL_37;
          }

          v28 = *v27;
          sub_EF48(v27);
          if (v28 >= 120.0 && v28 < 1800.0)
          {
            goto LABEL_21;
          }

          goto LABEL_8;
        case 7:
          v25 = *(v0 + 232);
          v26 = *(v0 + 216);
          sub_1778(v21, v26);
          if ((*v16)(v26, 1, v25) == 1)
          {
            v24 = *(v0 + 216);
LABEL_14:
            sub_AD0C(v24, &qword_18E50, &qword_10598);
          }

          else
          {
            sub_EEE4(*(v0 + 216), *(v0 + 248));
            if (*(v57 + 16))
            {
              v27 = *(v0 + 248);
              if (!*(v57 + 8) && (*(v27 + *(v51 + 32)) & 1) != 0)
              {
                v34 = *v27;
                sub_EF48(v27);
                if (v34 >= 120.0 && v34 < 1800.0)
                {
LABEL_21:
                  v30 = *(v0 + 208);
                  v31 = *(v0 + 192);
                  sub_53CC(*(v0 + 184), *(v53 + 24));
                  (*v55)(v30, v52, v31);
                  sub_F4BC();

                  (*v54)(v30, v31);
                  sub_EFA4(v0 + 16, v0 + 96);
                  if (*(v0 + 120))
                  {
                    sub_F014((v0 + 96), v0 + 56);
                    sub_A8F0(v0 + 56, v0 + 136);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v18 = sub_E364(0, v18[2] + 1, 1, v18);
                    }

                    v33 = v18[2];
                    v32 = v18[3];
                    if (v33 >= v32 >> 1)
                    {
                      v18 = sub_E364((v32 > 1), v33 + 1, 1, v18);
                    }

                    sub_5410((v0 + 56));
                    sub_AD0C(v0 + 16, &qword_18E68, &qword_105B0);
                    v18[2] = v33 + 1;
                    sub_F014((v0 + 136), &v18[5 * v33 + 4]);
                  }

                  else
                  {
                    sub_AD0C(v0 + 16, &qword_18E68, &qword_105B0);
                    sub_AD0C(v0 + 96, &qword_18E68, &qword_105B0);
                  }
                }

                goto LABEL_8;
              }
            }

            else
            {
              v27 = *(v0 + 248);
            }

LABEL_37:
            sub_EF48(v27);
          }

LABEL_8:
          v14 = 1;
          v15 = 1;
          if (v19)
          {
            v39 = *(v0 + 296);
            v40 = *(v0 + 272);
            v41 = *(v0 + 280);

            (*(v41 + 8))(v39, v40);
            goto LABEL_48;
          }

          break;
        default:

          goto LABEL_8;
      }
    }
  }

  sub_AD0C(v6, &qword_18E58, &qword_105A0);
LABEL_43:
  if (qword_185F8 != -1)
  {
    swift_once();
  }

  v45 = sub_F68C();
  sub_850C(v45, qword_18DD0);
  v46 = sub_F67C();
  v47 = sub_F71C();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&def_5140, v46, v47, "Current executing intent is not CreateTimerIntent. Not generating any suggestions", v48, 2u);
  }

  v18 = &_swiftEmptyArrayStorage;
LABEL_48:

  v49 = *(v0 + 8);

  return v49(v18);
}

uint64_t sub_EEE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeSuggestionExecutionParameters(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_EF48(uint64_t a1)
{
  v2 = type metadata accessor for TimeSuggestionExecutionParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_EFA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20AC(&qword_18E68, &qword_105B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_F014(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}