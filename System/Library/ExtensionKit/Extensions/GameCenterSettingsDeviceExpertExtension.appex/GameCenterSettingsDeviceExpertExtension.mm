uint64_t sub_1000010DC(uint64_t a1)
{
  v2 = sub_10000122C();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100001184();
  sub_100004A34();
  return 0;
}

unint64_t sub_100001184()
{
  result = qword_10000C010;
  if (!qword_10000C010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C010);
  }

  return result;
}

unint64_t sub_10000122C()
{
  result = qword_10000C018;
  if (!qword_10000C018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C018);
  }

  return result;
}

uint64_t sub_100001290()
{
  v0 = sub_100004914();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[1] = sub_1000018B8();
  sub_10000181C();
  sub_100004924();
  v4 = sub_100004904();
  (*(v1 + 8))(v3, v0);
  sub_100001870(&qword_10000C028, &qword_100005F90);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100005EE0;
  *(v5 + 32) = v4;
  v6 = sub_1000048F4();

  return v6;
}

uint64_t sub_1000013F4()
{
  v0 = sub_100001870(&qword_10000C030, &qword_100005F98);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - v2;
  sub_10000181C();
  sub_1000048E4();
  v19 = sub_1000048C4();
  v4 = *(v1 + 8);
  v4(v3, v0);
  sub_1000048E4();
  v18 = sub_1000048C4();
  v4(v3, v0);
  sub_1000048E4();
  v17 = sub_1000048C4();
  v4(v3, v0);
  sub_1000048E4();
  v16 = sub_1000048C4();
  v4(v3, v0);
  sub_1000048E4();
  v15 = sub_1000048C4();
  v4(v3, v0);
  sub_1000048E4();
  v5 = sub_1000048C4();
  v4(v3, v0);
  sub_1000048E4();
  v6 = sub_1000048C4();
  v4(v3, v0);
  sub_1000048E4();
  v7 = sub_1000048C4();
  v4(v3, v0);
  sub_1000048E4();
  v8 = sub_1000048C4();
  v4(v3, v0);
  sub_100001870(&qword_10000C038, &unk_100005FA0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100005EF0;
  v10 = v18;
  *(v9 + 32) = v19;
  *(v9 + 40) = v10;
  v11 = v16;
  *(v9 + 48) = v17;
  *(v9 + 56) = v11;
  *(v9 + 64) = v15;
  *(v9 + 72) = v5;
  *(v9 + 80) = v6;
  *(v9 + 88) = v7;
  *(v9 + 96) = v8;
  v12 = sub_1000048B4();

  return v12;
}

unint64_t sub_10000181C()
{
  result = qword_10000C020;
  if (!qword_10000C020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C020);
  }

  return result;
}

uint64_t sub_100001870(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000018B8()
{
  v0 = sub_1000049A4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_100001870(&qword_10000C0E8, &qword_100006560);
  v5 = sub_10000478C(v4);
  v6 = __chkstk_darwin(v5);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v17[-v9];
  v11 = sub_100001870(&qword_10000C0F0, &qword_100006568);
  v12 = sub_10000478C(v11);
  __chkstk_darwin(v12);
  v14 = &v17[-v13];
  v15 = sub_100004A24();
  __chkstk_darwin(v15);
  sub_100001870(&qword_10000C0F8, &qword_100006570);
  sub_1000046A4();
  sub_100004A14();
  sub_100004764(v14);
  v17[15] = 9;
  sub_100004864();
  sub_100004764(v10);
  sub_100004764(v8);
  (*(v1 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v0);
  sub_1000034F0();
  return sub_1000048A4();
}

uint64_t sub_100001B28()
{
  sub_100001870(&qword_10000C138, &qword_100006598);
  v0 = *(sub_100001870(&qword_10000C140, &qword_1000065A0) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100005EF0;
  v4 = v3 + v2;
  *(v3 + v2) = 0;
  v5 = sub_1000034F0();
  sub_1000046FC(0xD000000000000033, 0x80000001000058A0);
  *(v4 + v1) = 1;
  sub_1000046E0();
  sub_1000046FC(0xD00000000000003BLL, v6 | 0x8000000000000000);
  *(v4 + 2 * v1) = 2;
  sub_1000046E0();
  sub_1000046C4(0xD00000000000003CLL);
  *(v4 + 3 * v1) = 3;
  sub_1000046E0();
  sub_1000046FC(0xD00000000000003BLL, v7 | 0x8000000000000000);
  *(v4 + 4 * v1) = 4;
  sub_1000046E0();
  sub_1000046C4(0xD000000000000040);
  *(v4 + 5 * v1) = 5;
  sub_1000046E0();
  sub_1000046C4(0xD000000000000044);
  *(v4 + 6 * v1) = 6;
  sub_1000046FC(0xD00000000000003FLL, 0x8000000100005A40);
  *(v4 + 7 * v1) = 7;
  sub_1000046E0();
  sub_1000046C4(0xD000000000000043);
  *(v4 + 8 * v1) = 8;
  sub_1000046E0();
  sub_1000046C4(0xD000000000000042);
  sub_100001870(&qword_10000C148, &qword_1000065A8);
  sub_1000039E4();
  v8 = sub_100004A44();

  return _EnumURLRepresentation.init(_:)(v8, &type metadata for GameCenterSettingsDeepLinks, v5);
}

uint64_t sub_100001DDC()
{
  v0 = sub_100001870(&qword_10000C0F0, &qword_100006568);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_100004A24();
  __chkstk_darwin(v3);
  v4 = sub_100004A04();
  sub_1000045D0(v4, qword_10000CD50);
  sub_100004598(v4, qword_10000CD50);
  sub_100004A14();
  sub_100004474(v2, 1, 1, v3);
  return sub_1000049F4();
}

uint64_t sub_100001F14()
{
  v0 = sub_100001870(&qword_10000C118, &qword_100006578);
  v1 = sub_10000478C(v0);
  __chkstk_darwin(v1);
  v3 = &v96 - v2;
  v4 = sub_100001870(&qword_10000C0F0, &qword_100006568);
  v5 = sub_10000478C(v4);
  __chkstk_darwin(v5);
  v7 = &v96 - v6;
  v8 = sub_100004A24();
  v108 = v8;
  v117 = *(v8 - 8);
  v9 = v117;
  v10 = __chkstk_darwin(v8);
  v119 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v96 - v12;
  sub_100001870(&qword_10000C120, &qword_100006580);
  v14 = sub_100001870(&qword_10000C128, &qword_100006588);
  v15 = *(v14 - 8);
  v116 = *(v15 + 72);
  v16 = v14 - 8;
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v18 = swift_allocObject();
  v99 = v18;
  *(v18 + 16) = xmmword_100005EF0;
  v110 = v18 + v17;
  v106 = *(v16 + 56);
  v19 = v16;
  v114 = v16;
  *(v18 + v17) = 0;
  sub_1000046EC();
  v98 = v20 - 11;
  v21 = v13;
  sub_100004A14();
  sub_100004474(v7, 1, 1, v8);
  v113 = "K_EXT_GAME_CENTER";
  v109 = 0xD00000000000001CLL;
  sub_100004934();
  v115 = sub_100004944();
  sub_10000467C();
  sub_100004474(v22, v23, v24, v25);
  v107 = sub_100001870(&qword_10000C130, &qword_100006590);
  v105 = *(v9 + 72);
  v117 = *(v117 + 80);
  v26 = (v117 + 32) & ~v117;
  *(swift_allocObject() + 16) = xmmword_100005EE0;
  v103 = 0xD00000000000002BLL;
  sub_100004A14();
  sub_100004A14();
  v27 = v110;
  v118 = v21;
  sub_100004954();
  v97 = *(v19 + 56);
  *(v27 + v116) = 1;
  sub_100004A14();
  v102 = 0xD000000000000022;
  v111 = v7;
  sub_100004A14();
  sub_10000467C();
  v28 = v108;
  sub_100004474(v29, v30, v31, v108);
  sub_100004798();
  sub_100004934();
  v100 = v3;
  sub_10000467C();
  v32 = v115;
  sub_100004474(v33, v34, v35, v115);
  v112 = v26;
  v106 = v26 + 2 * v105;
  v36 = swift_allocObject();
  v104 = xmmword_100005FB0;
  *(v36 + 16) = xmmword_100005FB0;
  sub_1000046EC();
  v101 = v37 - 5;
  sub_100004A14();
  sub_100004A14();
  sub_100004A14();
  sub_100004954();
  v38 = v116;
  v39 = v110;
  v96 = (v110 + 2 * v116);
  v97 = *(v114 + 56);
  *v96 = 2;
  sub_100004A14();
  sub_100004A14();
  sub_10000467C();
  sub_100004474(v40, v41, v42, v28);
  sub_100004798();
  sub_100004934();
  sub_10000467C();
  sub_100004474(v43, v44, v45, v32);
  *(swift_allocObject() + 16) = v104;
  sub_100004A14();
  v46 = v105;
  sub_100004A14();
  sub_100004748(0xD00000000000002FLL);
  sub_100004714();
  sub_100004954();
  v96 = (v39 + 3 * v38);
  v47 = v114;
  v97 = *(v114 + 56);
  *v96 = 3;
  sub_1000046A4();
  sub_100004A14();
  sub_1000046A4();
  sub_100004A14();
  sub_10000467C();
  v48 = v108;
  sub_100004474(v49, v50, v51, v108);
  sub_100004798();
  sub_100004934();
  sub_10000467C();
  v52 = v115;
  sub_100004474(v53, v54, v55, v115);
  v106 = 3 * v46;
  sub_100004780();
  v56 = swift_allocObject();
  v104 = xmmword_100005FC0;
  *(v56 + 16) = xmmword_100005FC0;
  sub_1000046A4();
  sub_100004A14();
  sub_100004688();
  sub_100004688();
  sub_1000046EC();
  sub_10000472C(v57 + 7);
  sub_100004714();
  sub_100004954();
  v58 = v116;
  v97 = *(v47 + 56);
  *(v110 + 4 * v116) = 4;
  sub_1000046A4();
  sub_100004A14();
  sub_1000046A4();
  sub_100004A14();
  sub_10000467C();
  sub_100004474(v59, v60, v61, v48);
  sub_100004934();
  sub_10000467C();
  sub_100004474(v62, v63, v64, v52);
  sub_100004780();
  *(swift_allocObject() + 16) = xmmword_100005FD0;
  sub_1000046A4();
  sub_100004A14();
  sub_100004688();
  sub_100004688();
  sub_100004688();
  sub_100004688();
  sub_100004688();
  sub_100004688();
  sub_100004748(0xD000000000000033);
  sub_100004954();
  v97 = v110 + 5 * v58;
  v65 = *(v114 + 56);
  *v97 = 5;
  v101 = v65;
  v102 = 0xD000000000000026;
  sub_100004A14();
  sub_1000046A4();
  sub_100004A14();
  sub_10000467C();
  sub_100004474(v66, v67, v68, v108);
  sub_100004934();
  sub_10000467C();
  sub_100004474(v69, v70, v71, v115);
  sub_100004780();
  *(swift_allocObject() + 16) = xmmword_100005FE0;
  sub_100004A14();
  sub_100004A14();
  sub_100004A14();
  sub_100004A14();
  sub_10000472C(0xD000000000000037);
  sub_100004954();
  v72 = v110;
  v97 = v110 + 6 * v116;
  v101 = *(v114 + 56);
  *v97 = 6;
  sub_1000046A4();
  sub_100004A14();
  sub_1000046A4();
  sub_100004A14();
  sub_10000467C();
  v73 = v108;
  sub_100004474(v74, v75, v76, v108);
  sub_100004934();
  sub_10000467C();
  sub_100004474(v77, v78, v79, v115);
  v80 = swift_allocObject();
  sub_1000046B0(v80);
  sub_1000046A4();
  sub_100004A14();
  sub_100004A14();
  sub_100004A14();
  sub_100004748(0xD000000000000032);
  sub_100004954();
  v103 = *(v114 + 56);
  *(v72 + 7 * v116) = 7;
  sub_100004A14();
  sub_100004A14();
  sub_10000467C();
  sub_100004474(v81, v82, v83, v73);
  sub_100004934();
  sub_10000467C();
  sub_100004474(v84, v85, v86, v115);
  v87 = swift_allocObject();
  sub_1000046B0(v87);
  sub_100004A14();
  sub_100004A14();
  sub_100004A14();
  sub_10000472C(0xD000000000000036);
  sub_1000047A4(v118);
  *(v110 + 8 * v116) = 8;
  sub_100004A14();
  sub_100004A14();
  sub_10000467C();
  sub_100004474(v88, v89, v90, v108);
  sub_100004798();
  sub_100004934();
  sub_10000467C();
  sub_100004474(v91, v92, v93, v115);
  sub_100004780();
  v94 = swift_allocObject();
  sub_1000046B0(v94);
  sub_100004A14();
  sub_100004A14();
  sub_100004A14();
  sub_100004A14();
  sub_1000047A4(v118);
  sub_100004964();
  sub_1000039E4();
  return sub_100004A44();
}

unint64_t sub_100002D94(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000086A0;
  v6._object = a2;
  v4 = sub_100004A64(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100002DEC(char a1)
{
  result = 1953460082;
  switch(a1)
  {
    case 1:
      result = 0x6E496E676973;
      break;
    case 2:
      result = 0x74754F6E676973;
      break;
    case 3:
      v3 = 2003134838;
      goto LABEL_6;
    case 4:
      v3 = 1953064037;
LABEL_6:
      result = v3 | 0x666F725000000000;
      break;
    case 5:
      result = 0x7974697669746361;
      break;
    case 6:
      result = 0x6E656972466C6C61;
      break;
    case 7:
      result = 0x6552646E65697266;
      break;
    case 8:
      result = 0x7246657469766E69;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100002F34()
{
  result = qword_10000C050;
  if (!qword_10000C050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C050);
  }

  return result;
}

uint64_t sub_100002F88(unsigned __int8 a1, char a2)
{
  v2 = 1953460082;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1953460082;
  switch(v4)
  {
    case 1:
      v3 = 0xE600000000000000;
      v5 = 0x6E496E676973;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v5 = 0x74754F6E676973;
      break;
    case 3:
      v6 = 2003134838;
      goto LABEL_6;
    case 4:
      v6 = 1953064037;
LABEL_6:
      v5 = v6 | 0x666F725000000000;
      v3 = 0xEB00000000656C69;
      break;
    case 5:
      v5 = 0x7974697669746361;
      v3 = 0xEF676E6972616853;
      break;
    case 6:
      v5 = 0x6E656972466C6C61;
      v3 = 0xEA00000000007364;
      break;
    case 7:
      v5 = 0x6552646E65697266;
      v3 = 0xEE00737473657571;
      break;
    case 8:
      v5 = 0x7246657469766E69;
      v3 = 0xED000073646E6569;
      break;
    default:
      break;
  }

  v7 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v7 = 0xE600000000000000;
      v2 = 0x6E496E676973;
      break;
    case 2:
      v7 = 0xE700000000000000;
      v2 = 0x74754F6E676973;
      break;
    case 3:
      v8 = 2003134838;
      goto LABEL_16;
    case 4:
      v8 = 1953064037;
LABEL_16:
      v2 = v8 | 0x666F725000000000;
      v7 = 0xEB00000000656C69;
      break;
    case 5:
      v2 = 0x7974697669746361;
      v7 = 0xEF676E6972616853;
      break;
    case 6:
      v2 = 0x6E656972466C6C61;
      v7 = 0xEA00000000007364;
      break;
    case 7:
      v2 = 0x6552646E65697266;
      v7 = 0xEE00737473657571;
      break;
    case 8:
      v2 = 0x7246657469766E69;
      v7 = 0xED000073646E6569;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_100004A74();
  }

  return v10 & 1;
}

Swift::Int sub_100003250(char a1)
{
  sub_100004A84();
  sub_100002DEC(a1);
  sub_100004A54();

  return sub_100004A94();
}

uint64_t sub_1000032BC(uint64_t a1, char a2)
{
  sub_100004A54();
}

Swift::Int sub_100003430(uint64_t a1, char a2)
{
  sub_100004A84();
  sub_100002DEC(a2);
  sub_100004A54();

  return sub_100004A94();
}

unint64_t sub_100003490@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100002D94(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1000034C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100002DEC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000034F0()
{
  result = qword_10000C058;
  if (!qword_10000C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C058);
  }

  return result;
}

unint64_t sub_100003548()
{
  result = qword_10000C060;
  if (!qword_10000C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C060);
  }

  return result;
}

unint64_t sub_1000035A0()
{
  result = qword_10000C068;
  if (!qword_10000C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C068);
  }

  return result;
}

unint64_t sub_1000035F8()
{
  result = qword_10000C070;
  if (!qword_10000C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C070);
  }

  return result;
}

unint64_t sub_100003650()
{
  result = qword_10000C078;
  if (!qword_10000C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C078);
  }

  return result;
}

uint64_t sub_1000036B0(uint64_t a1)
{
  sub_100004544();
  v2 = sub_100004974();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_100003720()
{
  result = qword_10000C080;
  if (!qword_10000C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C080);
  }

  return result;
}

unint64_t sub_100003778()
{
  result = qword_10000C088;
  if (!qword_10000C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C088);
  }

  return result;
}

unint64_t sub_1000037D0()
{
  result = qword_10000C090;
  if (!qword_10000C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C090);
  }

  return result;
}

unint64_t sub_100003828()
{
  result = qword_10000C098;
  if (!qword_10000C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C098);
  }

  return result;
}

uint64_t sub_1000038E4(uint64_t a1)
{
  v2 = sub_1000034F0();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100003934()
{
  result = qword_10000C0A0;
  if (!qword_10000C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A0);
  }

  return result;
}

unint64_t sub_10000398C()
{
  result = qword_10000C0A8;
  if (!qword_10000C0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A8);
  }

  return result;
}

unint64_t sub_1000039E4()
{
  result = qword_10000C0B0;
  if (!qword_10000C0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B0);
  }

  return result;
}

uint64_t sub_100003A3C(uint64_t a1)
{
  v2 = sub_100003828();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100003A8C()
{
  result = qword_10000C0B8;
  if (!qword_10000C0B8)
  {
    sub_100003AF0(&qword_10000C0C0, &qword_1000062B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B8);
  }

  return result;
}

uint64_t sub_100003AF0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100003B4C()
{
  result = qword_10000C0C8;
  if (!qword_10000C0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C8);
  }

  return result;
}

uint64_t sub_100003BA4()
{
  v0 = sub_100004A24();
  sub_1000045D0(v0, qword_10000CD68);
  sub_100004598(v0, qword_10000CD68);
  return sub_100004A14();
}

uint64_t sub_100003C70@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100003C08();
  *a1 = result;
  return result;
}

uint64_t (*sub_100003CA8(uint64_t *a1))()
{
  v2 = sub_100004634(0x28uLL);
  *a1 = v2;
  v2[4] = sub_100004874();
  return sub_100003D08;
}

void sub_100003D08(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100003D54()
{
  result = qword_10000C0D0;
  if (!qword_10000C0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0D0);
  }

  return result;
}

uint64_t sub_100003DA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000449C();
  v5 = sub_100004544();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_100003E18()
{
  v0 = qword_10000C040;

  return v0;
}

unint64_t sub_100003E58()
{
  result = qword_10000C0D8;
  if (!qword_10000C0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0D8);
  }

  return result;
}

unint64_t sub_100003EB0()
{
  result = qword_10000C0E0;
  if (!qword_10000C0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0E0);
  }

  return result;
}

uint64_t sub_100003FB4@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v8 = a2(0);
  v9 = sub_100004598(v8, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_100004078(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10000449C();
  v7 = sub_1000044F0();
  v8 = sub_100004544();
  *v5 = v2;
  v5[1] = sub_10000414C;

  return _URLRepresentableIntent<>.perform()(a1, a2, v6, v7, v8);
}

uint64_t sub_10000414C()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_100004254@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000018B8();
  *a1 = result;
  return result;
}

uint64_t sub_10000427C(uint64_t a1)
{
  v2 = sub_10000181C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t getEnumTagSinglePayload for GameCenterSettingsDeepLinks(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for GameCenterSettingsDeepLinks(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
        JUMPOUT(0x10000442CLL);
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10000449C()
{
  result = qword_10000C100;
  if (!qword_10000C100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C100);
  }

  return result;
}

unint64_t sub_1000044F0()
{
  result = qword_10000C108;
  if (!qword_10000C108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C108);
  }

  return result;
}

unint64_t sub_100004544()
{
  result = qword_10000C110;
  if (!qword_10000C110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C110);
  }

  return result;
}

uint64_t sub_100004598(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_1000045D0(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void *sub_100004634(size_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_100004688()
{

  return sub_100004A14();
}

__n128 sub_1000046B0(__n128 *a1)
{
  result = *(v1 - 224);
  a1[1] = result;
  return result;
}

uint64_t sub_1000046C4(uint64_t a1)
{

  return _EnumURLRepresentation.EnumSingleURLRepresentation.init(stringLiteral:)(a1, v1 | 0x8000000000000000, v3, v2);
}

uint64_t sub_1000046FC(uint64_t a1, uint64_t a2)
{

  return _EnumURLRepresentation.EnumSingleURLRepresentation.init(stringLiteral:)(a1, a2, v3, v2);
}

uint64_t sub_10000472C(uint64_t a1)
{

  return sub_100004A14();
}

uint64_t sub_100004748(uint64_t a1)
{

  return sub_100004A14();
}

uint64_t sub_100004764(uint64_t a1)
{

  return sub_100004474(a1, 1, 1, v1);
}

uint64_t sub_1000047A4(uint64_t a1)
{

  return sub_100004954();
}