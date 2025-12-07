unint64_t sub_50E54()
{
  result = qword_A6FA8;
  if (!qword_A6FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A6FA8);
  }

  return result;
}

unint64_t sub_50EA8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_984C0;
  v6._object = a2;
  v4 = sub_73CE0(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_50EF4(char a1)
{
  result = 0x726F6F646E69;
  switch(a1)
  {
    case 1:
      result = 0x726F6F6474756FLL;
      break;
    case 2:
      result = 1819242352;
      break;
    case 3:
      result = 0x657461776E65706FLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_50FA4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_50EA8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_50FD4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_50EF4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_51000(uint64_t a1, uint64_t a2)
{
  v4 = sub_51118();
  v5 = sub_5116C();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5);
}

unint64_t sub_5106C()
{
  result = qword_A6FB0;
  if (!qword_A6FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A6FB0);
  }

  return result;
}

unint64_t sub_510C4()
{
  result = qword_A6FB8;
  if (!qword_A6FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A6FB8);
  }

  return result;
}

unint64_t sub_51118()
{
  result = qword_A6FC0;
  if (!qword_A6FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A6FC0);
  }

  return result;
}

unint64_t sub_5116C()
{
  result = qword_A6FC8;
  if (!qword_A6FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A6FC8);
  }

  return result;
}

uint64_t sub_511C0(unsigned __int8 a1)
{
  if (a1 > 8u)
  {
    return 0;
  }

  else
  {
    return qword_797A0[a1];
  }
}

uint64_t getEnumTagSinglePayload for HealthMagnitudeUnit(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEB)
  {
    if (a2 + 21 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 21) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 22;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v5 = v6 - 22;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HealthMagnitudeUnit(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEA)
  {
    v6 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
        JUMPOUT(0x5133CLL);
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
          *result = a2 + 21;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_51378()
{
  result = qword_A6FD0;
  if (!qword_A6FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A6FD0);
  }

  return result;
}

unint64_t sub_513CC(uint64_t a1, uint64_t a2)
{
  v2 = sub_73DC0();

  if (v2 >= 0x16)
  {
    return 22;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_51420(char a1)
{
  result = 1751346793;
  switch(a1)
  {
    case 1:
      v3 = 1701603693;
      goto LABEL_16;
    case 2:
      result = 0x6574656D6F6C696BLL;
      break;
    case 3:
      result = 0x73726574656DLL;
      break;
    case 4:
      result = 1952802150;
      break;
    case 5:
      v3 = 1685217657;
LABEL_16:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x7300000000;
      break;
    case 6:
      result = 0x6E6F68746172616DLL;
      break;
    case 7:
      result = 0x736569726F6C6163;
      break;
    case 8:
      result = 0x656C756F6ALL;
      break;
    case 9:
      result = 0x6C756F6A6F6C696BLL;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x7265702074656566;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0x65702073656C696DLL;
      break;
    case 14:
      result = 0xD000000000000014;
      break;
    case 15:
      result = 0x70206574756E696DLL;
      break;
    case 16:
      result = 0x6D6172676F6C696BLL;
      break;
    case 17:
      result = 1835102823;
      break;
    case 18:
      result = 0x646E756F70;
      break;
    case 19:
      result = 7172194;
      break;
    case 20:
      result = 1885697139;
      break;
    case 21:
      result = 0x726568746FLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_516C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_513CC(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_516F0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_51420(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_5171C(uint64_t a1, uint64_t a2)
{
  v4 = sub_51834();
  v5 = sub_51888();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5);
}

unint64_t sub_51788()
{
  result = qword_A6FD8;
  if (!qword_A6FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A6FD8);
  }

  return result;
}

unint64_t sub_517E0()
{
  result = qword_A6FE0;
  if (!qword_A6FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A6FE0);
  }

  return result;
}

unint64_t sub_51834()
{
  result = qword_A6FE8;
  if (!qword_A6FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A6FE8);
  }

  return result;
}

unint64_t sub_51888()
{
  result = qword_A6FF0;
  if (!qword_A6FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A6FF0);
  }

  return result;
}

uint64_t sub_518DC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_73720();
  sub_5394();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_C2A4();
  v8 = v7 - v6;
  a1[3] = &type metadata for FlowConfigModel;
  a1[4] = &protocol witness table for FlowConfigModel;
  *a1 = swift_allocObject();
  sub_73490();
  type metadata accessor for FlowRouterX(0);
  v9 = sub_736F0();
  swift_beginAccess();
  (*(v4 + 16))(v8, v9, v2);
  return sub_73660();
}

uint64_t sub_51A5C(uint64_t a1)
{
  v2 = v1;
  v61 = a1;
  v59 = sub_73200();
  __chkstk_darwin(v59);
  sub_C2A4();
  v58 = v4 - v3;
  v5 = type metadata accessor for FlowRouterX(0);
  __chkstk_darwin(v5);
  sub_C2A4();
  v60 = (v7 - v6);
  v8 = sub_73720();
  sub_5394();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_C2A4();
  v62 = v13 - v12;
  v14 = sub_73650();
  sub_5394();
  v16 = v15;
  v18 = __chkstk_darwin(v17);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v51 - v21;
  sub_73670();
  sub_73630();
  v23 = sub_73670();
  v24 = sub_739C0();
  if (sub_73A60())
  {
    v25 = v22;
    v26 = v16;
    v27 = v2;
    v28 = v10;
    v29 = v8;
    v30 = v14;
    v31 = swift_slowAlloc();
    *v31 = 0;
    v32 = sub_73640();
    _os_signpost_emit_with_name_impl(&dword_0, v23, v24, v32, "makeFlow", "", v31, 2u);
    v14 = v30;
    v8 = v29;
    v10 = v28;
    v2 = v27;
    v16 = v26;
    v22 = v25;
  }

  (*(v16 + 16))(v20, v22, v14);
  sub_736C0();
  swift_allocObject();
  v33 = sub_736B0();
  if (sub_521C4())
  {
    v34 = sub_736F0();
    swift_beginAccess();
    v35 = v62;
    (*(v10 + 16))(v62, v34, v8);
    v36 = v60;
    sub_522CC(v2, v60);
    v37 = sub_73710();
    v57 = sub_73970();
    if (os_log_type_enabled(v37, v57))
    {
      v38 = swift_slowAlloc();
      v53 = v38;
      v54 = swift_slowAlloc();
      v64 = v54;
      *v38 = 136315138;
      v55 = v8;
      v56 = v14;
      v40 = v36[3];
      v39 = v36[4];
      sub_7C78(v36, v40);
      v41 = *(v39 + 8);
      v52 = v37;
      v41(v63, v40, v39);
      sub_7C78(v63, v63[3]);
      v14 = v56;
      sub_71EA0();
      v42 = sub_737A0();
      v44 = v43;
      sub_AE38(v63);
      sub_52330(v36);
      v45 = sub_19144(v42, v44, &v64);

      v47 = v52;
      v46 = v53;
      *(v53 + 1) = v45;
      _os_log_impl(&dword_0, v47, v57, "Input origin is: %s", v46, 0xCu);
      sub_AE38(v54);

      (*(v10 + 8))(v62, v55);
    }

    else
    {

      (*(v10 + 8))(v35, v8);
      sub_52330(v36);
    }

    v48 = sub_2233C(v61);
  }

  else
  {
    v48 = sub_2AF64();
  }

  v49 = v48;
  sub_51F6C(v2, v33);

  (*(v16 + 8))(v22, v14);
  return v49;
}

uint64_t sub_51F6C(uint64_t a1, uint64_t a2)
{
  v2 = sub_73690();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_73650();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FlowRouterX(0);
  v10 = sub_73670();
  sub_736A0();
  v11 = sub_739B0();
  if (sub_73A60())
  {

    sub_736D0();

    if ((*(v3 + 88))(v5, v2) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_73640();
    _os_signpost_emit_with_name_impl(&dword_0, v10, v11, v14, "makeFlow", v12, v13, 2u);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_521C4()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_7C78(v0, v1);
  (*(v2 + 8))(v5, v1, v2);
  sub_7C78(v5, v6);
  if (sub_71F00())
  {
    v3 = 0;
  }

  else
  {
    sub_7C78(v5, v6);
    v3 = sub_71EB0() ^ 1;
  }

  sub_AE38(v5);
  return v3 & 1;
}

uint64_t type metadata accessor for FlowRouterX(uint64_t a1)
{
  result = qword_A7050;
  if (!qword_A7050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_522CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowRouterX(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_52330(uint64_t a1)
{
  v2 = type metadata accessor for FlowRouterX(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_5238C()
{
  if (v0[5])
  {
    sub_AE38(v0 + 2);
  }

  if (v0[10])
  {
    sub_AE38(v0 + 7);
  }

  if (v0[15])
  {
    sub_AE38(v0 + 12);
  }

  if (v0[20])
  {
    sub_AE38(v0 + 17);
  }

  if (v0[25])
  {
    sub_AE38(v0 + 22);
  }

  if (v0[30])
  {
    sub_AE38(v0 + 27);
  }

  if (v0[35])
  {
    sub_AE38(v0 + 32);
  }

  return _swift_deallocObject(v0, 296, 7);
}

uint64_t sub_52440(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_73680();
    v9 = a1 + *(a3 + 20);

    return sub_5124(v9, a2, v8);
  }
}

uint64_t sub_524DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_73680();
    v8 = v5 + *(a4 + 20);

    return sub_7CC4(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_5255C(uint64_t a1)
{
  result = sub_525E0();
  if (v2 <= 0x3F)
  {
    result = sub_73680();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_525E0()
{
  result = qword_A40F0;
  if (!qword_A40F0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_A40F0);
  }

  return result;
}

uint64_t sub_5263C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v10 = sub_506C(&qword_A4A08, &qword_75D10);
  __chkstk_darwin(v10 - 8);
  v12 = &v17 - v11;
  sub_738F0();
  v13 = sub_73910();
  sub_7CC4(v12, 0, 1, v13);
  sub_539C0(v5, v18);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  v15 = v18[1];
  *(v14 + 32) = v18[0];
  *(v14 + 48) = v15;
  *(v14 + 64) = v19;
  *(v14 + 72) = a1;
  *(v14 + 80) = a2;
  *(v14 + 88) = a4;
  *(v14 + 96) = a3;

  sub_54390(0, 0, v12, &unk_79820, v14);
}

uint64_t sub_52778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  *(v8 + 696) = a7;
  *(v8 + 448) = a6;
  *(v8 + 456) = a8;
  *(v8 + 432) = a4;
  *(v8 + 440) = a5;
  v9 = sub_71550();
  *(v8 + 464) = v9;
  *(v8 + 472) = *(v9 - 8);
  *(v8 + 480) = swift_task_alloc();
  *(v8 + 488) = swift_task_alloc();
  v10 = sub_728B0();
  *(v8 + 496) = v10;
  *(v8 + 504) = *(v10 - 8);
  *(v8 + 512) = swift_task_alloc();
  v11 = sub_72980();
  *(v8 + 520) = v11;
  *(v8 + 528) = *(v11 - 8);
  *(v8 + 536) = swift_task_alloc();
  v12 = sub_73720();
  *(v8 + 544) = v12;
  *(v8 + 552) = *(v12 - 8);
  *(v8 + 560) = swift_task_alloc();
  *(v8 + 568) = swift_task_alloc();
  *(v8 + 576) = swift_task_alloc();
  *(v8 + 584) = swift_task_alloc();
  *(v8 + 592) = swift_task_alloc();
  *(v8 + 600) = swift_task_alloc();
  *(v8 + 608) = swift_task_alloc();
  *(v8 + 616) = swift_task_alloc();
  *(v8 + 624) = swift_task_alloc();
  *(v8 + 632) = swift_task_alloc();

  return _swift_task_switch(sub_529CC);
}

uint64_t sub_529CC()
{
  v1 = v0[69];
  v2 = v0[54];
  v3 = v2[3];
  v4 = v2[4];
  sub_7C78(v2, v3);
  LOBYTE(v4) = (*(v4 + 8))(0xD00000000000001ALL, 0x800000000007ECD0, v3, v4);
  v5 = sub_736E0();
  v6 = v5;
  v0[80] = v5;
  v7 = v1 + 16;
  if (v4)
  {
    sub_53CCC(v5, (v0 + 49));
    v8 = sub_53C88();
    v9(v8);
    v10 = sub_73710();
    v11 = sub_73970();
    if (sub_53D08(v11))
    {
      v12 = sub_22324();
      sub_53D40(v12);
      sub_53CE8(&dword_0, v13, v14, "[AppSelection] not enabled");
      sub_4C70C();
    }

    v15 = sub_221CC();
    v16(v15);
LABEL_24:
    sub_53C98();

    sub_22210();

    __asm { BRAA            X1, X16 }
  }

  sub_53CCC(v5, (v0 + 22));
  v17 = *v7;
  v0[81] = *v7;
  v0[82] = v7 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v18 = sub_53C88();
  v17(v18);
  v19 = sub_73710();
  v20 = sub_73970();
  if (sub_22238(v20))
  {
    v21 = sub_22324();
    *v21 = 0;
    sub_53D24();
    _os_log_impl(v22, v23, v24, v25, v26, 2u);
    sub_7EBC(v21);
  }

  v27 = v0[79];
  v28 = v0[69];
  v29 = v0[68];

  v30 = *(v28 + 8);
  v0[83] = v30;
  v30(v27, v29);
  v31 = objc_opt_self();
  v32 = [v31 sharedConnection];
  if (!v32)
  {
    __break(1u);
    goto LABEL_28;
  }

  v33 = v32;
  v34 = [v32 isDiagnosticSubmissionAllowed];

  v36 = v0[68];
  if (!v34)
  {
    sub_53CCC(v35, (v0 + 25));
    v57 = sub_53C88();
    v17(v57);
    v58 = sub_73710();
    v59 = sub_73970();
    if (sub_53D08(v59))
    {
      v60 = sub_22324();
      sub_53D40(v60);
      v63 = "[AppSelection] Diagnostics & Usage is not enabled";
LABEL_22:
      sub_53CE8(&dword_0, v61, v62, v63);
      sub_4C70C();
    }

LABEL_23:

    v67 = sub_221CC();
    (v30)(v67);
    goto LABEL_24;
  }

  v37 = v0[78];
  sub_53CCC(v35, (v0 + 28));
  (v17)(v37, v6, v36);
  v38 = sub_73710();
  v39 = sub_73970();
  if (sub_53D08(v39))
  {
    v40 = sub_22324();
    sub_53D40(v40);
    sub_53CE8(&dword_0, v41, v42, "[AppSelection] Diagnostics & Usage is enabled");
    sub_4C70C();
  }

  v43 = v0[78];
  v44 = v0[68];

  v30(v43, v44);
  v32 = [v31 sharedConnection];
  if (!v32)
  {
LABEL_28:
    __break(1u);
    return static AppFinder.listApps(intentID:siriAuthorizationRestriction:)(v32);
  }

  v45 = v32;
  v46 = [v32 isHealthDataSubmissionAllowed];

  if (!v46)
  {
    sub_53CCC(v47, (v0 + 31));
    v64 = sub_53C88();
    v17(v64);
    v58 = sub_73710();
    v65 = sub_73970();
    if (sub_53D08(v65))
    {
      v66 = sub_22324();
      sub_53D40(v66);
      v63 = "[AppSelection] Improve Health & Activity is not enabled";
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  sub_53CCC(v47, (v0 + 34));
  v48 = sub_53C88();
  v17(v48);
  v49 = sub_73710();
  v50 = sub_73970();
  if (sub_22238(v50))
  {
    v51 = sub_22324();
    *v51 = 0;
    sub_222A4(&dword_0, v52, v53, "[AppSelection] Improve Health & Activity is enabled");
    sub_7EBC(v51);
  }

  v54 = sub_221CC();
  (v30)(v54);
  v0[84] = sub_4C4BC(&off_97DB8);
  v55 = swift_task_alloc();
  v0[85] = v55;
  *v55 = v0;
  v55[1] = sub_52F38;
  sub_22210();

  return static AppFinder.listApps(intentID:siriAuthorizationRestriction:)(v32);
}

uint64_t sub_52F38(uint64_t a1)
{
  *(*v1 + 688) = a1;

  return _swift_task_switch(sub_53058);
}

void sub_53058()
{
  v107 = v0;
  v1 = *(v0 + 688);
  v2 = sub_114FC(v1);
  v3 = 0;
  v4 = v1 & 0xC000000000000001;
  v5 = v1 & 0xFFFFFFFFFFFFFF8;
  v104 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v2 == v3)
    {
      v15 = *(v0 + 648);

      sub_B168(v16, v0 + 296);
      v17 = sub_53D34();
      v15(v17);

      v18 = sub_73710();
      v19 = sub_73990();

      v20 = os_log_type_enabled(v18, v19);
      v21 = *(v0 + 664);
      v22 = *(v0 + 608);
      v23 = *(v0 + 544);
      if (v20)
      {
        v25 = *(v0 + 440);
        v24 = *(v0 + 448);
        v101 = *(v0 + 664);
        v26 = swift_slowAlloc();
        v99 = v22;
        v27 = swift_slowAlloc();
        v106 = v27;
        *v26 = 136315394;
        *(v26 + 4) = sub_19144(v25, v24, &v106);
        *(v26 + 12) = 2080;
        v28 = sub_73880();
        v30 = sub_19144(v28, v29, &v106);

        *(v26 + 14) = v30;
        _os_log_impl(&dword_0, v18, v19, "[StartWorkout HandleIntentStrategy] Candidate %s apps: %s", v26, 0x16u);
        swift_arrayDestroy();
        sub_7EBC(v27);
        sub_7EBC(v26);

        v101(v99, v23);
      }

      else
      {

        v21(v22, v23);
      }

      v31 = *(v0 + 536);
      v32 = *(v0 + 528);
      v33 = *(v0 + 520);
      v35 = *(v0 + 504);
      v34 = *(v0 + 512);
      v36 = *(v0 + 496);
      v102 = *(v0 + 456);
      v100 = *(v0 + 696);
      sub_72970();
      swift_allocObject();
      sub_72960();
      sub_72940();

      sub_72950();

      *(v0 + 120) = v33;
      *(v0 + 128) = &protocol witness table for SignalDefinitionParametersProvider;
      v37 = sub_5BAC((v0 + 96));
      (*(v32 + 16))(v37, v31, v33);
      sub_728E0();
      swift_allocObject();
      sub_728D0();
      sub_728C0();

      sub_7C78((v0 + 56), *(v0 + 80));
      (*(v35 + 104))(v34, enum case for DomainUseCase.startWorkout(_:), v36);
      sub_728F0();
      (*(v35 + 8))(v34, v36);
      sub_7C78((v0 + 136), *(v0 + 160));
      sub_72900();
      sub_AE38((v0 + 136));
      sub_AE38((v0 + 56));
      sub_7C78((v0 + 16), *(v0 + 40));
      type metadata accessor for WorkoutsSignalValuesProcessor();
      v38 = swift_allocObject();
      *(v38 + 16) = v100;
      *(v38 + 24) = v102;
      *(v0 + 424) = v38;
      sub_30DCC();

      sub_72930();

      v40 = *(v0 + 416);
      v41 = *(v0 + 648);
      if (v40)
      {
        sub_B168(v39, v0 + 344);
        v42 = sub_53D34();
        v41(v42);
        v43 = v40;
        v44 = sub_73710();
        v45 = sub_73970();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          *v46 = 138412290;
          *(v46 + 4) = v43;
          *v47 = v40;
          v48 = v43;
          sub_53D24();
          _os_log_impl(v49, v50, v51, v52, v53, 0xCu);
          sub_7DF8(v47);
          sub_4C70C();
          sub_7EBC(v46);
        }

        v54 = *(v0 + 664);
        v55 = *(v0 + 592);
        v56 = *(v0 + 544);

        v54(v55, v56);
        v57 = [objc_allocWithZone(INFERENCESchemaINFERENCEClientEvent) init];
        if (v57)
        {
          v58 = v57;
          v59 = [objc_allocWithZone(INFERENCESchemaINFERENCEClientEventMetadata) init];
          if (v59)
          {
            v60 = v59;
            v61 = *(v0 + 528);
            v103 = *(v0 + 520);
            v105 = *(v0 + 536);
            v62 = *(v0 + 480);
            v63 = *(v0 + 488);
            v65 = *(v0 + 464);
            v64 = *(v0 + 472);
            sub_71540();
            sub_53C34();
            (*(v64 + 16))(v62, v63, v65);
            v66 = sub_53B24(v62);
            [v60 setInferenceId:v66];

            [v58 setEventMetadata:v60];
            [v58 setWorkoutsAppSelectionGroundTruthGenerated:v43];
            v67 = [objc_opt_self() sharedAnalytics];
            v68 = [v67 defaultMessageStream];

            isa = sub_71530().super.isa;
            [v68 emitMessage:v58 isolatedStreamUUID:isa];

            (*(v64 + 8))(v63, v65);
            (*(v61 + 8))(v105, v103);
            goto LABEL_31;
          }
        }

        v81 = *(v0 + 648);
        sub_B168(v57, v0 + 368);
        v82 = sub_53D34();
        v81(v82);
        v83 = sub_73710();
        v84 = sub_73980();
        if (sub_22238(v84))
        {
          v85 = sub_22324();
          *v85 = 0;
          sub_53D24();
          _os_log_impl(v86, v87, v88, v89, v90, 2u);
          sub_7EBC(v85);
        }

        v91 = *(v0 + 664);
        v92 = *(v0 + 584);
        v93 = *(v0 + 544);
        v94 = *(v0 + 536);
        v95 = *(v0 + 528);
        v96 = *(v0 + 520);

        v91(v92, v93);
        (*(v95 + 8))(v94, v96);
      }

      else
      {
        sub_B168(v39, v0 + 320);
        v70 = sub_53D34();
        v41(v70);
        v71 = sub_73710();
        v72 = sub_73990();
        if (sub_22238(v72))
        {
          v73 = sub_22324();
          *v73 = 0;
          sub_222A4(&dword_0, v74, v75, "No SELF message generated");
          sub_7EBC(v73);
        }

        v76 = *(v0 + 664);
        v77 = *(v0 + 536);
        v78 = *(v0 + 528);
        v79 = *(v0 + 520);

        v80 = sub_221CC();
        v76(v80);
        (*(v78 + 8))(v77, v79);
      }

LABEL_31:
      sub_AE38((v0 + 16));
      sub_53C98();

      sub_22210();

      __asm { BRAA            X1, X16 }
    }

    if (v4)
    {
      sub_73B70();
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_35;
      }
    }

    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    v7 = sub_733B0();
    v9 = v8;

    ++v3;
    if (v9)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v10 = v104;
      }

      else
      {
        sub_10098();
        v10 = v13;
      }

      v11 = v10[2];
      if (v11 >= v10[3] >> 1)
      {
        sub_10098();
        v10 = v14;
      }

      v10[2] = v11 + 1;
      v104 = v10;
      v12 = &v10[2 * v11];
      v12[4] = v7;
      v12[5] = v9;
      v3 = v6;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_539F8()
{
  swift_unknownObjectRelease();
  sub_AE38((v0 + 32));

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_53A48(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  v9 = *(v1 + 96);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_14A58;

  return sub_52778(a1, v4, v5, v1 + 32, v6, v7, v8, v9);
}

id sub_53B24(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = sub_71530().super.isa;
  v4 = [v2 initWithNSUUID:isa];

  v5 = sub_71550();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

void sub_53BC0(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

unint64_t sub_53C34()
{
  result = qword_A7088;
  if (!qword_A7088)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_A7088);
  }

  return result;
}

uint64_t sub_53CCC(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

void sub_53CE8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

BOOL sub_53D08(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_53D4C(uint64_t a1)
{
  if (sub_72800() == 0xD000000000000034 && 0x800000000007ECF0 == v2)
  {

LABEL_8:
    v7 = sub_72810();
    if (v7)
    {
      sub_6CDBC(0xD000000000000014, 0x800000000007ED30, v7, &v15);

      if (*(&v16 + 1))
      {
        if (swift_dynamicCast())
        {
          v6 = sub_5412C(v13, v14);
          sub_72820();
          sub_2E638();
          (*(v8 + 8))(a1);
          return v6;
        }

        sub_72820();
        sub_2E638();
        (*(v11 + 8))(a1);
        return 2;
      }

      sub_72820();
      sub_2E638();
      (*(v10 + 8))(a1);
    }

    else
    {
      sub_72820();
      sub_2E638();
      (*(v9 + 8))(a1);
      v15 = 0u;
      v16 = 0u;
    }

    sub_2E308(&v15);
    return 2;
  }

  v4 = sub_73DB0();

  if (v4)
  {
    goto LABEL_8;
  }

  sub_72820();
  sub_2E638();
  (*(v5 + 8))(a1);
  return 3;
}

id sub_53F48(void *a1, unsigned __int8 a2)
{
  v4 = a2;
  sub_2E534();
  v5 = sub_31BB8(0xD000000000000034, 0x800000000007ECF0);
  sub_506C(&qword_A5768, &unk_77268);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_74B40;
  sub_73B30();
  *(inited + 96) = sub_506C(&qword_A6D00, &unk_75D30);
  v7 = 0x656D7269666E6F63;
  if (a2)
  {
    v7 = 0x64657463656A6572;
  }

  v8 = 0xE900000000000064;
  if (a2)
  {
    v8 = 0xE800000000000000;
  }

  if (v4 == 2)
  {
    v7 = 0;
    v8 = 0;
  }

  *(inited + 72) = v7;
  *(inited + 80) = v8;
  v9 = sub_73750();
  sub_31C68(v9, v5);
  v10 = objc_opt_self();
  sub_7C78(a1, a1[3]);
  v11 = sub_71F20();
  v12 = [v10 runSiriKitExecutorCommandWithContext:v11 payload:v5];

  v13 = [v10 wrapCommandInStartLocalRequest:v12];
  return v13;
}

uint64_t sub_5412C(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_98438;
  v7._object = a2;
  v4 = sub_73CE0(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_54180(char a1)
{
  if (a1)
  {
    return 0x64657463656A6572;
  }

  else
  {
    return 0x656D7269666E6F63;
  }
}

unint64_t sub_541BC(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000034;
  }
}

uint64_t sub_541F4@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v17 = a1;
  v4 = sub_72270();
  sub_5394();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_C2A4();
  v10 = v9 - v8;
  sub_506C(&unk_A6CD0, &unk_75B80);
  sub_1168C();
  __chkstk_darwin(v11);
  v13 = (&v16 - v12);
  sub_4F008(v2, &v16 - v12, &unk_A6CD0, &unk_75B80);
  result = swift_getEnumCaseMultiPayload();
  v15 = result;
  if (result == 1)
  {
    *a2 = *v13;
  }

  else
  {
    (*(v6 + 32))(v10, v13, v4);
    v17(v10);
    result = (*(v6 + 8))(v10, v4);
  }

  *(a2 + 40) = v15 == 1;
  return result;
}

uint64_t sub_54390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_506C(&qword_A4A08, &qword_75D10);
  __chkstk_darwin(v9 - 8);
  v11 = v24 - v10;
  sub_4F008(a3, v24 - v10, &qword_A4A08, &qword_75D10);
  v12 = sub_73910();
  v13 = sub_5124(v11, 1, v12);

  if (v13 == 1)
  {
    sub_10364(v11, &qword_A4A08, &qword_75D10);
  }

  else
  {
    sub_73900();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_738E0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_737D0() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_10364(a3, &qword_A4A08, &qword_75D10);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10364(a3, &qword_A4A08, &qword_75D10);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_54674(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v33 = a5;
  v34 = a4;
  v31 = a3;
  v32 = a1;
  sub_72270();
  sub_5394();
  v29 = v6;
  v30 = v5;
  __chkstk_darwin(v5);
  sub_C2A4();
  v28 = v8 - v7;
  v9 = sub_73390();
  __chkstk_darwin(v9);
  sub_C2A4();
  v12 = v11 - v10;
  sub_506C(&unk_A6CD0, &unk_75B80);
  sub_1168C();
  v14 = __chkstk_darwin(v13);
  v16 = (&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v18 = &v27 - v17;
  sub_73280();
  v19 = sub_73270();
  sub_506C(&qword_A4818, &unk_75B90);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_74B40;
  sub_73380();
  v35[0] = v20;
  sub_55824(&unk_A6CE0, 255, &type metadata accessor for CATOption, &protocol conformance descriptor for CATOption);
  sub_506C(&qword_A4820, qword_77FF0);
  sub_14D40();
  sub_73B10();
  type metadata accessor for HealthCATWrapper(0);
  swift_allocObject();
  sub_4F648(v19, v12);
  v21 = [v31 code];
  sub_50498(v32, v21, 0);

  sub_4F008(v18, v16, &unk_A6CD0, &unk_75B80);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v35[0] = *v16;
  }

  else
  {
    v24 = v28;
    v23 = v29;
    v25 = v30;
    (*(v29 + 32))(v28, v16, v30);
    sub_54A18(v35);
    (*(v23 + 8))(v24, v25);
  }

  v36 = EnumCaseMultiPayload == 1;
  v34(v35);
  sub_10364(v35, &qword_A4810, &unk_760A0);
  return sub_10364(v18, &unk_A6CD0, &unk_75B80);
}

uint64_t sub_54A18@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_506C(&qword_A4050, &unk_75290);
  __chkstk_darwin(v3 - 8);
  v5 = v9 - v4;
  sub_72840();
  sub_72840();
  sub_7C78(v11, v11[3]);
  sub_71ED0();
  v6 = sub_721F0();
  sub_7CC4(v5, 1, 1, v6);
  v7 = sub_72890();
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  a2[3] = v7;
  a2[4] = &protocol witness table for AceOutput;
  sub_5BAC(a2);
  sub_720E0();
  sub_10364(v9, &unk_A6D20, &qword_76D80);
  sub_10364(v5, &qword_A4050, &unk_75290);
  sub_AE38(v12);
  return sub_AE38(v11);
}

uint64_t sub_54B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_506C(&qword_A4A08, &qword_75D10);
  __chkstk_darwin(v8 - 8);
  v10 = &v14 - v9;
  v11 = sub_73910();
  sub_7CC4(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v5;
  v12[5] = a4;
  v12[6] = a5;

  sub_54390(0, 0, v10, &unk_799C0, v12);
}

uint64_t sub_54C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v6[17] = a4;
  return _swift_task_switch(sub_54CBC);
}

uint64_t sub_54CBC()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v3 = sub_72240();
  swift_allocObject();
  v4 = sub_72230();
  v0[8] = v3;
  v0[9] = &protocol witness table for ResponseFactory;
  v0[5] = v4;
  v5 = sub_73750();
  v0[2] = 0xD00000000000001ALL;
  v0[3] = 0x800000000007EDA0;
  v0[4] = v2;
  v0[10] = v5;
  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = sub_54E3C;

  return sub_2CCDC((v0 + 11), (v0 + 2), _swiftEmptyArrayStorage);
}

uint64_t sub_54E3C()
{
  sub_7F1C();
  sub_B0BC();
  v1 = *v0;
  sub_B044();
  *v2 = v1;

  return _swift_task_switch(sub_54F28);
}

uint64_t sub_54F28()
{
  sub_7F1C();
  (*(v0 + 144))(v0 + 88);
  sub_10364(v0 + 88, &qword_A4810, &unk_760A0);
  sub_160DC(v0 + 16);
  sub_7EA4();

  return v1();
}

uint64_t sub_54FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for ResumeWorkoutHandleIntentStrategy();

  return HandleIntentFlowStrategy.makePromptForDeviceUnlock(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_55048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for ResumeWorkoutHandleIntentStrategy();

  return HandleIntentFlowStrategy.makeHandoffForAuthenticationResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_550C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for ResumeWorkoutHandleIntentStrategy();

  return HandleIntentFlowStrategy.makePreHandleIntentOutput(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_55158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for ResumeWorkoutHandleIntentStrategy();

  return HandleIntentFlowStrategy.makeContinueInAppResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_551D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for ResumeWorkoutHandleIntentStrategy();

  return HandleIntentFlowStrategy.makeInProgressResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_55274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ResumeWorkoutHandleIntentStrategy();

  return IntentExtensionCommunicating.shouldIntentBeExecutedOnRemoteCompanion(intent:)(a1, v5, a3);
}

uint64_t sub_552C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for ResumeWorkoutHandleIntentStrategy();

  return IntentExtensionCommunicating.makeSiriKitIntentHandler(app:intent:)(a1, a2, v7, a4);
}

uint64_t sub_55324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for ResumeWorkoutHandleIntentStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:completion:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_553D8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_55420(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  v9 = sub_55890(v8);
  *v9 = v10;
  v9[1] = sub_ACC4;

  return sub_54C98(a1, v3, v4, v5, v6, v7);
}

uint64_t sub_554E0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_555D8;

  return v6(a1);
}

uint64_t sub_555D8()
{
  sub_7F1C();
  sub_B0BC();
  v1 = *v0;
  sub_B044();
  *v2 = v1;

  sub_7EA4();

  return v3();
}

uint64_t sub_556BC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_556F4()
{
  v0 = swift_task_alloc();
  v1 = sub_55890(v0);
  *v1 = v2;
  v3 = sub_55870(v1);

  return v4(v3);
}

uint64_t sub_5578C()
{
  v0 = swift_task_alloc();
  v1 = sub_55890(v0);
  *v1 = v2;
  v3 = sub_55870(v1);

  return v4(v3);
}

uint64_t sub_55824(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_558A0(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  v4 = sub_55B6C(a1);
  if (v4)
  {
    v5 = v4;
    v6 = *sub_734D0();
    v7 = sub_73970();
    sub_506C(&qword_A3BA8, &unk_76BA0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_74B40;
    v9 = v5;
    v10 = [v9 description];
    v11 = sub_73790();
    v13 = v12;

    *(v8 + 56) = &type metadata for String;
    *(v8 + 64) = sub_5258();
    *(v8 + 32) = v11;
    *(v8 + 40) = v13;
    sub_73610("Created INPauseWorkoutIntent: %@", 32, 2, &dword_0, v6, v7, v8);

    v24 = v9;
    a3(v5, 0);
  }

  else
  {
    type metadata accessor for HealthFlowError();
    swift_allocObject();
    v14 = sub_B5BC(0);
    v15 = sub_73980();
    v16 = *sub_734D0();
    sub_506C(&qword_A3BA8, &unk_76BA0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_74B40;
    v18 = v16;
    v19 = sub_B4FC();
    v21 = v20;
    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = sub_5258();
    *(v17 + 32) = v19;
    *(v17 + 40) = v21;
    sub_73620(v15, &dword_0, v18, "Pause- RCHFlow Strategy: %@", 27, 2, v17);

    sub_5653C(&qword_A3BB8, 255, type metadata accessor for HealthFlowError, &unk_7567C);
    v22 = swift_allocError();
    *v23 = v14;

    a3(v22, 1);
  }
}

id sub_55B6C(uint64_t a1)
{
  v41 = a1;
  v1 = sub_506C(&qword_A3B90, &qword_76E00);
  v2 = __chkstk_darwin(v1 - 8);
  v40 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v39 = &v38 - v4;
  v5 = type metadata accessor for HealthNLIntent(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_731D0();
  sub_5394();
  v10 = v9;
  __chkstk_darwin(v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_72830();
  sub_5394();
  v16 = v15;
  v18 = __chkstk_darwin(v17);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v38 - v21;
  v23 = *(v16 + 16);
  v23(&v38 - v21, v41, v14);
  v24 = sub_5388();
  v26 = v25(v24);
  if (v26 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v27 = sub_5388();
    v28(v27);
    (*(v10 + 32))(v13, v22, v8);
    (*(v10 + 16))(v7, v13, v8);
    sub_564F8();
    v29 = sub_5CDA4(v7);
    sub_51F8(v7, type metadata accessor for HealthNLIntent);
    (*(v10 + 8))(v13, v8);
  }

  else if (v26 == enum case for Parse.directInvocation(_:))
  {
    v23(v20, v41, v14);
    v30 = v39;
    sub_6AFB0(v20, v39);
    v31 = v40;
    sub_50B4(v30, v40);
    v32 = type metadata accessor for DirectInvocationData(0);
    if (sub_5124(v31, 1, v32) == 1)
    {
      sub_514C(v30);
      sub_514C(v31);
      v29 = 0;
    }

    else
    {
      sub_6B824(v43);
      sub_514C(v30);
      sub_51F8(v31, type metadata accessor for DirectInvocationData);
      sub_506C(&qword_A3B98, &unk_74E00);
      sub_564F8();
      if (swift_dynamicCast())
      {
        v29 = v42;
      }

      else
      {
        v29 = 0;
      }
    }

    v35 = sub_5388();
    v36(v35);
  }

  else
  {
    v33 = sub_5388();
    v34(v33);
    return 0;
  }

  return v29;
}

uint64_t sub_55FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for PauseWorkoutStrategy();

  return RCHFlowStrategy.makeAnnotatedIntentFromParse(parse:currentIntent:completion:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_56034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for PauseWorkoutStrategy();

  return RCHFlowStrategy.makeParameterMetadata(intent:)(a1, v5, a3);
}

uint64_t sub_56080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for PauseWorkoutStrategy();

  return ResolveConfirmFlowStrategy.makeAppDoesNotSupportIntentResponse(app:intent:_:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_560EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for PauseWorkoutStrategy();

  return ResolveConfirmFlowStrategy.makeAppNotFoundOnDeviceResponse(app:intent:_:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_56158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for PauseWorkoutStrategy();

  return ResolveConfirmFlowStrategy.makeDeviceIncompatibleResponse(app:intent:_:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_561C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for PauseWorkoutStrategy();

  return RouteConfirmIntentResponseFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_56240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for PauseWorkoutStrategy();

  return IntentExtensionCommunicating.shouldIntentBeExecutedOnRemoteCompanion(intent:)(a1, v5, a3);
}

uint64_t sub_5628C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for PauseWorkoutStrategy();

  return IntentExtensionCommunicating.makeSiriKitIntentHandler(app:intent:)(a1, a2, v7, a4);
}

uint64_t sub_562F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for PauseWorkoutStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:completion:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_5635C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for PauseWorkoutStrategy();

  return IntentErrorHandling.makeErrorResponse(app:intent:error:_:)(a1, a2, a3, a4, a5, v13, a7);
}

unint64_t sub_564F8()
{
  result = qword_A4498;
  if (!qword_A4498)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_A4498);
  }

  return result;
}

uint64_t sub_5653C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_56584(char a1)
{
  result = 0x6F2368746C616568;
  switch(a1)
  {
    case 1:
      sub_569B0();
      result = v6 - 6;
      break;
    case 2:
    case 20:
      sub_569B0();
      result = v7 - 3;
      break;
    case 3:
    case 18:
      sub_569B0();
      result = v9 - 10;
      break;
    case 4:
    case 12:
    case 28:
    case 31:
      sub_569B0();
      result = v16 - 8;
      break;
    case 5:
      return result;
    case 6:
      sub_569B0();
      result = v8 - 20;
      break;
    case 7:
      sub_569B0();
      result = v5 - 22;
      break;
    case 8:
      sub_569B0();
      result = v10 - 19;
      break;
    case 9:
      sub_569B0();
      result = v4 - 18;
      break;
    case 10:
    case 26:
      sub_569B0();
      result = v17 - 5;
      break;
    case 11:
      result = 0xD000000000000028;
      break;
    case 13:
      result = 0xD000000000000028;
      break;
    case 14:
    case 15:
    case 30:
      sub_569B0();
      result = v11 - 1;
      break;
    case 16:
    case 23:
    case 34:
      sub_569B0();
      result = v15 - 7;
      break;
    case 17:
    case 19:
      sub_569B0();
      result = v14 - 2;
      break;
    case 21:
    case 32:
      sub_569B0();
      result = v12 - 4;
      break;
    case 22:
    case 24:
    case 33:
    case 35:
      sub_569B0();
      result = v13 | 1;
      break;
    case 25:
      result = 0xD000000000000028;
      break;
    case 27:
      result = 0xD000000000000028;
      break;
    case 29:
      result = 0xD000000000000028;
      break;
    case 36:
      result = 0xD000000000000028;
      break;
    default:
      sub_569B0();
      result = v3 - 11;
      break;
  }

  return result;
}

uint64_t sub_569C4(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 sub_569E0(uint64_t a1, uint64_t a2)
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

uint64_t sub_569F4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_56A34(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_56A94(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_73DB0();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_56B10(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x800000000007F0E0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_73DB0();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_56BAC(void *a1)
{
  v2 = v1;
  sub_49B84(v2, v27);
  v20 = v27[1];
  v21 = v27[0];
  v19 = v27[2];
  v18 = v28;
  v17 = v29;
  v4 = sub_506C(&qword_A7280, &qword_79D70);
  sub_5394();
  v6 = v5;
  sub_303DC();
  __chkstk_darwin(v7);
  v9 = &v17 - v8;
  v10 = sub_506C(&qword_A7288, &qword_79D78);
  sub_5394();
  v12 = v11;
  sub_303DC();
  __chkstk_darwin(v13);
  v15 = &v17 - v14;
  sub_7C78(a1, a1[3]);
  sub_57524();
  sub_73EA0();
  sub_5763C();
  sub_73D50();
  v22 = v21;
  v23 = v20;
  v24 = v19;
  v25 = v18;
  v26 = v17;
  sub_576E4();
  sub_73D80();
  (*(v6 + 8))(v9, v4);
  return (*(v12 + 8))(v15, v10);
}

uint64_t sub_56DFC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = sub_506C(&qword_A7250, &qword_79D58);
  sub_5394();
  v32 = v5;
  sub_303DC();
  __chkstk_darwin(v6);
  v8 = &v29 - v7;
  sub_506C(&qword_A7258, &qword_79D60);
  sub_5394();
  v34 = v9;
  sub_303DC();
  __chkstk_darwin(v10);
  sub_7C78(a1, a1[3]);
  sub_57524();
  sub_73E90();
  if (v2)
  {
    return sub_AE38(a1);
  }

  v29 = v8;
  v30 = a1;
  v11 = sub_73D40();
  result = sub_57578(v11, 0);
  if (v14 == v15 >> 1)
  {
LABEL_6:
    v21 = sub_73B90();
    swift_allocError();
    v23 = v22;
    sub_506C(&qword_A7268, &qword_79D68);
    *v23 = &type metadata for HealthUIPluginModel;
    sub_73D00();
    sub_73B80();
    (*(*(v21 - 8) + 104))(v23, enum case for DecodingError.typeMismatch(_:), v21);
    swift_willThrow();
    swift_unknownObjectRelease();
    v24 = sub_57A48();
    v25(v24);
    a1 = v30;
    return sub_AE38(a1);
  }

  if (v14 < (v15 >> 1))
  {
    sub_575C0(v14 + 1, v15 >> 1, result, v13, v14, v15);
    v17 = v16;
    v19 = v18;
    swift_unknownObjectRelease();
    if (v17 == v19 >> 1)
    {
      sub_5763C();
      v20 = v29;
      sub_73CF0();
      sub_57690();
      sub_73D30();
      v26 = (v32 + 8);
      swift_unknownObjectRelease();
      (*v26)(v20, v4);
      v27 = sub_57A48();
      v28(v27);
      v33[0] = *(&v33[4] + 8);
      v33[1] = *(&v33[5] + 8);
      v33[2] = *(&v33[6] + 8);
      v33[3] = *(&v33[7] + 8);
      sub_AE38(v30);
      return sub_49B84(v33, v31);
    }

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_57204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_56A94(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_5724C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_19A00();
  *a1 = result & 1;
  return result;
}

uint64_t sub_57278(uint64_t a1)
{
  v2 = sub_5763C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_572B4(uint64_t a1)
{
  v2 = sub_5763C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_57310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_56B10(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_5733C(uint64_t a1)
{
  v2 = sub_57524();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_57378(uint64_t a1)
{
  v2 = sub_57524();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_573DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_56DFC(a1, v5);
  if (!v2)
  {
    return sub_49B84(v5, a2);
  }

  return result;
}

unint64_t sub_57478()
{
  result = qword_A7240;
  if (!qword_A7240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A7240);
  }

  return result;
}

unint64_t sub_574D0()
{
  result = qword_A7248;
  if (!qword_A7248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A7248);
  }

  return result;
}

unint64_t sub_57524()
{
  result = qword_A7260;
  if (!qword_A7260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A7260);
  }

  return result;
}

uint64_t sub_57578(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_575C0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_5763C()
{
  result = qword_A7270;
  if (!qword_A7270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A7270);
  }

  return result;
}

unint64_t sub_57690()
{
  result = qword_A7278;
  if (!qword_A7278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A7278);
  }

  return result;
}

unint64_t sub_576E4()
{
  result = qword_A7290;
  if (!qword_A7290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A7290);
  }

  return result;
}

_BYTE *sub_57750(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x577ECLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_57828()
{
  result = qword_A7298;
  if (!qword_A7298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A7298);
  }

  return result;
}

unint64_t sub_57880()
{
  result = qword_A72A0;
  if (!qword_A72A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A72A0);
  }

  return result;
}

unint64_t sub_578D8()
{
  result = qword_A72A8;
  if (!qword_A72A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A72A8);
  }

  return result;
}

unint64_t sub_57930()
{
  result = qword_A72B0;
  if (!qword_A72B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A72B0);
  }

  return result;
}

unint64_t sub_57988()
{
  result = qword_A72B8;
  if (!qword_A72B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A72B8);
  }

  return result;
}

unint64_t sub_579E0()
{
  result = qword_A72C0;
  if (!qword_A72C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A72C0);
  }

  return result;
}

uint64_t sub_57A64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD00000000000001DLL && 0x800000000007F100 == a2;
  if (v4 || (sub_73DB0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x800000000007F120 == a2;
    if (v6 || (sub_73DB0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001FLL && 0x800000000007F140 == a2;
      if (v7 || (sub_73DB0() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000014 && 0x800000000007F160 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_73DB0();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_57BC8(char a1)
{
  result = 0xD00000000000001DLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD00000000000001FLL;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_57C5C(void *a1)
{
  v3 = v1;
  v5 = sub_506C(&qword_A72E0, &qword_7A168);
  sub_5394();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v13[-v9 - 8];
  sub_7C78(a1, a1[3]);
  sub_58248();
  sub_73EA0();
  v17 = *v3;
  v15 = *v3;
  v14 = 0;
  sub_582F0(&v17, v13);
  sub_5834C();
  sub_585D8();
  sub_49A7C(v15, *(&v15 + 1));
  if (!v2)
  {
    sub_58600(*(v3 + 2), *(v3 + 3), 1);
    v15 = v3[2];
    v16 = v15;
    v14 = 2;
    sub_582F0(&v16, v13);
    sub_585D8();
    sub_49A7C(v15, *(&v15 + 1));
    sub_58600(*(v3 + 6), *(v3 + 7), 3);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_57E10@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_506C(&qword_A72C8, &qword_7A160);
  sub_5394();
  __chkstk_darwin(v5);
  sub_7C78(a1, a1[3]);
  sub_58248();
  sub_73E90();
  if (v2)
  {
    return sub_AE38(a1);
  }

  sub_5829C();
  sub_585BC();
  sub_73D30();
  v18 = v23[0];
  LOBYTE(v23[0]) = 1;
  v6 = sub_73D20();
  *(&v17 + 1) = v7;
  *&v17 = v6;
  LOBYTE(v19) = 2;
  sub_585BC();
  sub_73D30();
  v16 = v23[0];
  v26 = 3;
  v8 = sub_73D20();
  v10 = v9;
  v11 = sub_585AC();
  v12(v11);
  v19 = v18;
  v20 = v17;
  v21 = v16;
  *&v22 = v8;
  *(&v22 + 1) = v10;
  sub_49BE0(&v19, v23);
  sub_AE38(a1);
  v23[0] = v18;
  v23[1] = v17;
  v23[2] = v16;
  v24 = v8;
  v25 = v10;
  result = sub_49C3C(v23);
  v14 = v20;
  *a2 = v19;
  a2[1] = v14;
  v15 = v22;
  a2[2] = v21;
  a2[3] = v15;
  return result;
}

uint64_t sub_58104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_57A64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_5814C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_57BC0();
  *a1 = result;
  return result;
}

uint64_t sub_58174(uint64_t a1)
{
  v2 = sub_58248();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_581B0(uint64_t a1)
{
  v2 = sub_58248();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_581EC@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_57E10(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

unint64_t sub_58248()
{
  result = qword_A72D0;
  if (!qword_A72D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A72D0);
  }

  return result;
}

unint64_t sub_5829C()
{
  result = qword_A72D8;
  if (!qword_A72D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A72D8);
  }

  return result;
}

unint64_t sub_5834C()
{
  result = qword_A72E8;
  if (!qword_A72E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A72E8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BinaryConfirmationSnippetModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x5846CLL);
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

unint64_t sub_584A8()
{
  result = qword_A72F0;
  if (!qword_A72F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A72F0);
  }

  return result;
}

unint64_t sub_58500()
{
  result = qword_A72F8;
  if (!qword_A72F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A72F8);
  }

  return result;
}

unint64_t sub_58558()
{
  result = qword_A7300;
  if (!qword_A7300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A7300);
  }

  return result;
}

uint64_t sub_585D8()
{

  return sub_73D80();
}

uint64_t sub_58600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W8>)
{
  *(v4 - 112) = a3;

  return KeyedEncodingContainer.encode(_:forKey:)(a1, a2, v4 - 112, v3);
}

uint64_t sub_58690(unsigned __int8 a1, char a2)
{
  v2 = 0xEB00000000656D61;
  v3 = 0x4E74756F6B726F77;
  v4 = a1;
  v5 = 0x4E74756F6B726F77;
  v6 = 0xEB00000000656D61;
  switch(v4)
  {
    case 1:
      v5 = 0xD000000000000013;
      v7 = "n";
      goto LABEL_5;
    case 2:
      v5 = 0xD000000000000013;
      v7 = "workoutGoalUnitType";
LABEL_5:
      v6 = v7 | 0x8000000000000000;
      break;
    case 3:
      v5 = 0x756C61566C616F67;
      v6 = 0xE900000000000065;
      break;
    case 4:
      v5 = 0x6E456E65704F7369;
      v6 = 0xEB00000000646564;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0xD000000000000013;
      v8 = "n";
      goto LABEL_11;
    case 2:
      v3 = 0xD000000000000013;
      v8 = "workoutGoalUnitType";
LABEL_11:
      v2 = v8 | 0x8000000000000000;
      break;
    case 3:
      v3 = 0x756C61566C616F67;
      v2 = 0xE900000000000065;
      break;
    case 4:
      v3 = 0x6E456E65704F7369;
      v2 = 0xEB00000000646564;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_73DB0();
  }

  return v10 & 1;
}

uint64_t sub_5884C(unsigned __int8 a1, char a2)
{
  v2 = 1701998435;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1701998435;
  switch(v4)
  {
    case 1:
      v5 = 1936156012;
      break;
    case 2:
      v5 = 1936552545;
      break;
    case 3:
      v7 = 0x626C61746F74;
      goto LABEL_8;
    case 4:
      v6 = 1702326124;
      goto LABEL_7;
    case 5:
      v6 = 1701867637;
LABEL_7:
      v7 = v6 & 0xFFFF0000FFFFFFFFLL | 0x627200000000;
LABEL_8:
      v5 = v7 & 0xFFFFFFFFFFFFLL | 0x646F000000000000;
      v3 = 0xE900000000000079;
      break;
    case 6:
      v3 = 0xE600000000000000;
      v5 = 0x6F6964726163;
      break;
    default:
      break;
  }

  v8 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v2 = 1936156012;
      break;
    case 2:
      v2 = 1936552545;
      break;
    case 3:
      v10 = 0x626C61746F74;
      goto LABEL_17;
    case 4:
      v9 = 1702326124;
      goto LABEL_16;
    case 5:
      v9 = 1701867637;
LABEL_16:
      v10 = v9 & 0xFFFF0000FFFFFFFFLL | 0x627200000000;
LABEL_17:
      v2 = v10 & 0xFFFFFFFFFFFFLL | 0x646F000000000000;
      v8 = 0xE900000000000079;
      break;
    case 6:
      v8 = 0xE600000000000000;
      v2 = 0x6F6964726163;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v8)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_73DB0();
  }

  return v12 & 1;
}

uint64_t sub_58A04()
{
  sub_5C2E0();
  v3 = v2;
  switch(v4)
  {
    case 1:
      v0 = 0xE300000000000000;
      v3 = 6581861;
      break;
    case 2:
      v3 = 0x6573756170;
      break;
    case 3:
      v3 = sub_5C378();
      break;
    case 4:
      v3 = sub_5C38C();
      break;
    default:
      break;
  }

  v5 = 0xE500000000000000;
  switch(v1)
  {
    case 1:
      v5 = 0xE300000000000000;
      v2 = 6581861;
      break;
    case 2:
      v2 = 0x6573756170;
      break;
    case 3:
      sub_5C350();
      break;
    case 4:
      sub_5C364();
      break;
    default:
      break;
  }

  if (v3 == v2 && v0 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_5C220(v3);
  }

  return v7 & 1;
}

uint64_t sub_58B28(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x616D6D6F43656361;
  }

  else
  {
    v3 = 7368801;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xEA0000000000646ELL;
  }

  if (a2)
  {
    v5 = 0x616D6D6F43656361;
  }

  else
  {
    v5 = 7368801;
  }

  if (a2)
  {
    v6 = 0xEA0000000000646ELL;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_5C220(v3);
  }

  return v8 & 1;
}

uint64_t sub_58C0C()
{
  sub_5C2E0();
  v3 = v2;
  switch(v4)
  {
    case 1:
      v3 = 0x6573756170;
      break;
    case 2:
      v0 = 0xE400000000000000;
      v3 = 1886352499;
      break;
    case 3:
      v3 = sub_5C38C();
      break;
    case 4:
      v3 = sub_5C378();
      break;
    case 5:
      v0 = 0xE400000000000000;
      v3 = 2003789939;
      break;
    case 6:
      v3 = 0x74736575516B7361;
      v0 = 0xEB000000006E6F69;
      break;
    case 7:
      v3 = 0x7075746573;
      break;
    case 8:
      v0 = 0xE600000000000000;
      v3 = 0x796669646F6DLL;
      break;
    default:
      break;
  }

  v5 = 0xE500000000000000;
  switch(v1)
  {
    case 1:
      v2 = 0x6573756170;
      break;
    case 2:
      v5 = 0xE400000000000000;
      v2 = 1886352499;
      break;
    case 3:
      sub_5C364();
      break;
    case 4:
      sub_5C350();
      break;
    case 5:
      v5 = 0xE400000000000000;
      v2 = 2003789939;
      break;
    case 6:
      v2 = 0x74736575516B7361;
      v5 = 0xEB000000006E6F69;
      break;
    case 7:
      v2 = 0x7075746573;
      break;
    case 8:
      v5 = 0xE600000000000000;
      v2 = 0x796669646F6DLL;
      break;
    default:
      break;
  }

  if (v3 == v2 && v0 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_5C220(v3);
  }

  return v7 & 1;
}

uint64_t sub_58DF8(unsigned __int8 a1, char a2)
{
  v2 = 0x726F6F646E69;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x726F6F646E69;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x726F6F6474756FLL;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1819242352;
      break;
    case 3:
      v5 = 0x657461776E65706FLL;
      v3 = 0xE900000000000072;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      v2 = 0x726F6F6474756FLL;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1819242352;
      break;
    case 3:
      v2 = 0x657461776E65706FLL;
      v6 = 0xE900000000000072;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_5C220(v5);
  }

  return v8 & 1;
}

uint64_t sub_58F64(unsigned __int8 a1, char a2)
{
  v2 = 7562617;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 28526;
    }

    else
    {
      v4 = 0x6C65636E6163;
    }

    if (v3 == 1)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7562617;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 28526;
    }

    else
    {
      v2 = 0x6C65636E6163;
    }

    if (a2 == 1)
    {
      v6 = 0xE200000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_5C220(v4);
  }

  return v8 & 1;
}

uint64_t sub_59048(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = a3(a1);
  v7 = v6;
  if (v5 == a3(a2) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_5C220(v5);
  }

  return v10 & 1;
}

uint64_t sub_590CC()
{
  if (qword_A3908 != -1)
  {
    swift_once();
  }

  type metadata accessor for HealthNLIntent(0);
  sub_5C1A0();
  sub_5B648(v0, v1, &unk_7A328);
  sub_72E30();
  if (v27)
  {
    return v26;
  }

  if (qword_A3900 != -1)
  {
    sub_5C2B0(&qword_A3900);
  }

  sub_5C31C(qword_A7320, v2, v3, v4, v5, v6, v7, v8, v24);
  if (v26 == 20)
  {
    goto LABEL_19;
  }

  if (sub_2DA9C(v26) == 0x6573696372657865 && v18 == 0xE800000000000000)
  {
  }

  else
  {
    v20 = sub_73DB0();

    if ((v20 & 1) == 0)
    {
LABEL_19:
      if (qword_A3960 != -1)
      {
        swift_once();
      }

      sub_5C31C(qword_A7380, v11, v12, v13, v14, v15, v16, v17, v25);
      return v26;
    }
  }

  if (qword_A3958 != -1)
  {
    sub_5C290(&qword_A3958);
  }

  sub_5C31C(qword_A7378, v11, v12, v13, v14, v15, v16, v17, v25);
  if (v26 == 7)
  {
    goto LABEL_19;
  }

  v9 = 0x6961727465726F63;
  if (sub_59680(v26) == 1701998435 && v21 == 0xE400000000000000)
  {

    return v9;
  }

  v23 = sub_73DB0();

  if ((v23 & 1) == 0)
  {
    goto LABEL_19;
  }

  return v9;
}

BOOL sub_593C4()
{
  sub_506C(&qword_A7518, &qword_7A438);
  sub_303DC();
  __chkstk_darwin(v0);
  v2 = &v16 - v1;
  v17 = sub_5A5B4();
  if (qword_A3918 != -1)
  {
    sub_5C270(&qword_A3918);
  }

  type metadata accessor for HealthNLIntent(0);
  sub_5C1A0();
  sub_5B648(v3, v4, &unk_7A328);
  sub_72E30();
  v5 = sub_72D40();
  v6 = sub_5124(v2, 1, v5);
  sub_10364(v2, &qword_A7518, &qword_7A438);
  v7 = sub_5A7D4();
  v8 = _swiftEmptyArrayStorage;
  if (v17)
  {
    v16 = _swiftEmptyArrayStorage;
    sub_402A0();
    v8 = v16;
    v9 = v16[2];
    if (v9 >= v16[3] >> 1)
    {
      sub_402A0();
      v8 = v16;
    }

    v8[2] = v9 + 1;
    *(v8 + v9 + 32) = 1;
  }

  if (v6 != 1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_5C2F8();
      v8 = v16;
    }

    v11 = v8[2];
    if (v11 >= v8[3] >> 1)
    {
      sub_402A0();
      v8 = v16;
    }

    v8[2] = v11 + 1;
    *(v8 + v11 + 32) = 1;
  }

  if (v7)
  {
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v16 = v8;
    if ((v12 & 1) == 0)
    {
      sub_5C2F8();
      v8 = v16;
    }

    v13 = v8[2];
    v14 = v13 + 1;
    if (v13 >= v8[3] >> 1)
    {
      sub_402A0();
      v8 = v16;
    }

    v8[2] = v14;
    *(v8 + v13 + 32) = v7;
  }

  else
  {
    v14 = v8[2];
  }

  return v14 > 1;
}

unint64_t sub_59634(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_98770;
  v6._object = a2;
  v4 = sub_73CE0(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_59680(char a1)
{
  result = 1701998435;
  switch(a1)
  {
    case 1:
      return 1936156012;
    case 2:
      return 1936552545;
    case 3:
      v4 = 0x626C61746F74;
      goto LABEL_8;
    case 4:
      v3 = 1702326124;
      goto LABEL_7;
    case 5:
      v3 = 1701867637;
LABEL_7:
      v4 = v3 & 0xFFFF0000FFFFFFFFLL | 0x627200000000;
LABEL_8:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x646F000000000000;
      break;
    case 6:
      result = 0x6F6964726163;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_59758@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_59634(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_59788@<X0>(unint64_t *a1@<X8>)
{
  result = sub_59680(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_597B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_5C0F8();
  v5 = sub_5C14C();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5);
}

uint64_t sub_5981C()
{
  if (qword_A38F0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_59878()
{
  sub_506C(&qword_A5C68, qword_776C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_7A2C0;
  if (qword_A38F8 != -1)
  {
    swift_once();
  }

  v1 = qword_A7318;
  *(v0 + 56) = sub_506C(&qword_A7470, &qword_7A3D8);
  *(v0 + 64) = sub_5B690(&qword_A7478, &qword_A7470, &qword_7A3D8);
  *(v0 + 32) = v1;
  v2 = qword_A3900;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_A7320;
  *(v0 + 96) = sub_506C(&qword_A7480, &qword_7A3E0);
  *(v0 + 104) = sub_5B690(&qword_A7488, &qword_A7480, &qword_7A3E0);
  *(v0 + 72) = v3;
  v4 = qword_A3958;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_A7378;
  *(v0 + 136) = sub_506C(&qword_A7490, &qword_7A3E8);
  *(v0 + 144) = sub_5B690(&qword_A7498, &qword_A7490, &qword_7A3E8);
  *(v0 + 112) = v5;
  v6 = qword_A3960;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_A7380;
  v8 = sub_506C(&qword_A74A0, &qword_7A3F0);
  *(v0 + 176) = v8;
  v9 = sub_5B690(&qword_A74A8, &qword_A74A0, &qword_7A3F0);
  *(v0 + 184) = v9;
  *(v0 + 152) = v7;
  v10 = qword_A3908;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_A7328;
  *(v0 + 216) = v8;
  *(v0 + 224) = v9;
  *(v0 + 192) = v11;
  v12 = qword_A3910;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_A7330;
  *(v0 + 256) = sub_506C(&qword_A74B0, &qword_7A3F8);
  *(v0 + 264) = sub_5B690(&qword_A74B8, &qword_A74B0, &qword_7A3F8);
  *(v0 + 232) = v13;
  v14 = qword_A3918;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_A7338;
  *(v0 + 296) = sub_506C(&qword_A74C0, &qword_7A400);
  *(v0 + 304) = sub_5B690(&qword_A74C8, &qword_A74C0, &qword_7A400);
  *(v0 + 272) = v15;
  v16 = qword_A3920;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_A7340;
  *(v0 + 336) = sub_506C(&qword_A74D0, &qword_7A408);
  *(v0 + 344) = sub_5B690(&qword_A74D8, &qword_A74D0, &qword_7A408);
  *(v0 + 312) = v17;
  v18 = qword_A3928;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = qword_A7348;
  *(v0 + 376) = sub_506C(&qword_A74E0, &qword_7A410);
  *(v0 + 384) = sub_5B690(&qword_A74E8, &qword_A74E0, &qword_7A410);
  *(v0 + 352) = v19;
  v20 = qword_A3938;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_A7358;
  *(v0 + 416) = type metadata accessor for HealthNLIntent.HealthAppOntologyNode(0);
  *(v0 + 424) = &protocol witness table for NonTerminalOntologyNode;
  *(v0 + 392) = v21;
  v22 = qword_A3930;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = qword_A7350;
  *(v0 + 456) = sub_506C(&qword_A74F0, &qword_7A418);
  *(v0 + 464) = sub_5B690(&qword_A74F8, &qword_A74F0, &qword_7A418);
  *(v0 + 432) = v23;
  v24 = qword_A3940;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = qword_A7360;
  *(v0 + 496) = sub_506C(&qword_A7500, &unk_7A420);
  *(v0 + 504) = sub_5B690(&qword_A7508, &qword_A7500, &unk_7A420);
  *(v0 + 472) = v25;
  v26 = qword_A3948;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = qword_A7368;
  *(v0 + 536) = v8;
  *(v0 + 544) = v9;
  *(v0 + 512) = v27;
  v28 = qword_A3950;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = qword_A7370;
  *(v0 + 576) = v8;
  *(v0 + 584) = v9;
  *(v0 + 552) = v29;
  qword_A7308 = v0;
}

uint64_t sub_59EF4()
{
  if (qword_A38E8 != -1)
  {
    swift_once();
  }

  sub_72C80();
  swift_allocObject();

  result = sub_72C70();
  qword_A7310 = result;
  return result;
}

uint64_t sub_59F8C()
{
  v0 = sub_506C(&qword_A7470, &qword_7A3D8);
  sub_22274(v0);
  sub_5C1B8();
  result = sub_72C90();
  qword_A7318 = result;
  return result;
}

uint64_t sub_59FE0()
{
  v0 = sub_506C(&qword_A7480, &qword_7A3E0);
  sub_22274(v0);
  sub_5C1B8();
  result = sub_72C90();
  qword_A7320 = result;
  return result;
}

uint64_t sub_5A034()
{
  sub_506C(&qword_A74A0, &qword_7A3F0);
  swift_allocObject();
  result = sub_72C90();
  qword_A7328 = result;
  return result;
}

uint64_t sub_5A0A4()
{
  sub_506C(&qword_A74B0, &qword_7A3F8);
  swift_allocObject();
  result = sub_72C90();
  qword_A7330 = result;
  return result;
}

uint64_t sub_5A10C()
{
  v0 = sub_506C(&qword_A74C0, &qword_7A400);
  sub_22274(v0);
  sub_5C3A0();
  result = sub_5C3AC(21, v1);
  qword_A7338 = result;
  return result;
}

uint64_t sub_5A160()
{
  v0 = sub_506C(&qword_A74D0, &qword_7A408);
  sub_22274(v0);
  sub_5C1B8();
  result = sub_72C90();
  qword_A7340 = result;
  return result;
}

uint64_t sub_5A1BC()
{
  sub_506C(&qword_A74E0, &qword_7A410);
  swift_allocObject();
  result = sub_72C90();
  qword_A7348 = result;
  return result;
}

uint64_t sub_5A224()
{
  v0 = sub_506C(&qword_A74F0, &qword_7A418);
  sub_22274(v0);
  sub_5C3A0();
  result = sub_5C3AC(18, v1);
  qword_A7350 = result;
  return result;
}

uint64_t sub_5A278()
{
  v0 = type metadata accessor for HealthNLIntent.HealthAppOntologyNode(0);
  sub_22274(v0);
  result = sub_5B324();
  qword_A7358 = result;
  return result;
}

uint64_t sub_5A2B0()
{
  v0 = sub_506C(&qword_A7500, &unk_7A420);
  sub_22274(v0);
  sub_5C1B8();
  result = sub_72C90();
  qword_A7360 = result;
  return result;
}

uint64_t sub_5A30C()
{
  v0 = sub_506C(&qword_A74A0, &qword_7A3F0);
  sub_22274(v0);
  sub_5C3A0();
  result = sub_5C3AC(17, v1);
  qword_A7368 = result;
  return result;
}

uint64_t sub_5A360()
{
  v0 = sub_506C(&qword_A74A0, &qword_7A3F0);
  sub_22274(v0);
  sub_5C3A0();
  result = sub_5C3AC(22, v1);
  qword_A7370 = result;
  return result;
}

uint64_t sub_5A3B4()
{
  sub_506C(&qword_A7490, &qword_7A3E8);
  swift_allocObject();
  result = sub_72C90();
  qword_A7378 = result;
  return result;
}

uint64_t sub_5A41C()
{
  sub_506C(&qword_A74A0, &qword_7A3F0);
  swift_allocObject();
  result = sub_72C90();
  qword_A7380 = result;
  return result;
}

uint64_t sub_5A484()
{
  if (qword_A3910 != -1)
  {
    sub_5C250(&qword_A3910);
  }

  type metadata accessor for HealthNLIntent(0);
  sub_5C1A0();
  sub_5B648(v0, v1, &unk_7A328);
  sub_72E30();
  result = v9;
  if (v9 >= 2u)
  {
    v3 = sub_590CC();
    if (!v4)
    {
      v3 = 0;
      v4 = 0xE000000000000000;
    }

    v5 = sub_12460(v3, v4) - 17;
    v6 = sub_590CC();
    if (!v7)
    {
      v6 = 0;
      v7 = 0xE000000000000000;
    }

    v8 = sub_12460(v6, v7);
    if (v8 <= 0xB && ((1 << v8) & 0x821) != 0)
    {
      return v5 < 0xFDu;
    }

    if (v8 == 87)
    {
      if (v5 <= 0xFCu)
      {
        return 2;
      }
    }

    else if (v5 < 0xFDu)
    {
      return 2;
    }

    return 0;
  }

  return result;
}

BOOL sub_5A5B4()
{
  v0 = sub_506C(&qword_A7510, &qword_7A430);
  __chkstk_darwin(v0 - 8);
  v2 = &v8[-v1];
  v3 = sub_506C(&qword_A7558, &qword_7A7E0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  if (qword_A3920 != -1)
  {
    swift_once();
  }

  type metadata accessor for HealthNLIntent(0);
  sub_5B648(&qword_A42E8, type metadata accessor for HealthNLIntent, &unk_7A328);
  sub_72E30();
  if (sub_5124(v2, 1, v3) == 1)
  {
    sub_10364(v2, &qword_A7510, &qword_7A430);
    return 0;
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    sub_73130();
    (*(v4 + 8))(v6, v3);
    return v8[15] < 7u;
  }
}

BOOL sub_5A7D4()
{
  v0 = sub_506C(&qword_A7510, &qword_7A430);
  __chkstk_darwin(v0 - 8);
  v2 = &v8[-v1];
  v3 = sub_506C(&qword_A7558, &qword_7A7E0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  if (qword_A3920 != -1)
  {
    swift_once();
  }

  type metadata accessor for HealthNLIntent(0);
  sub_5B648(&qword_A42E8, type metadata accessor for HealthNLIntent, &unk_7A328);
  sub_72E30();
  if (sub_5124(v2, 1, v3) == 1)
  {
    sub_10364(v2, &qword_A7510, &qword_7A430);
    return 0;
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    sub_73130();
    (*(v4 + 8))(v6, v3);
    return v8[15] - 7 < 2;
  }
}

uint64_t sub_5A9F8()
{
  v18[2] = sub_506C(&qword_A45F8, &qword_758B8);
  sub_1168C();
  sub_303DC();
  __chkstk_darwin(v0);
  v19 = v18 - v1;
  v18[1] = sub_506C(&qword_A7510, &qword_7A430);
  sub_1168C();
  sub_303DC();
  __chkstk_darwin(v2);
  v4 = v18 - v3;
  v18[0] = sub_506C(&qword_A7518, &qword_7A438);
  sub_1168C();
  sub_303DC();
  __chkstk_darwin(v5);
  v7 = v18 - v6;
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_73B60(150);
  v24._object = 0x800000000007F1D0;
  v24._countAndFlagsBits = 0xD000000000000017;
  sub_73820(v24);
  if (qword_A38F8 != -1)
  {
    swift_once();
  }

  type metadata accessor for HealthNLIntent(0);
  sub_5C1A0();
  sub_5B648(v8, v9, &unk_7A328);
  sub_5C1EC();
  sub_506C(&qword_A7520, &qword_7A440);
  v25._countAndFlagsBits = sub_73A80();
  sub_73820(v25);

  v26._countAndFlagsBits = 0x3A6E756F4E2D200ALL;
  v26._object = 0xE900000000000020;
  sub_73820(v26);
  if (qword_A3900 != -1)
  {
    sub_5C2B0(&qword_A3900);
  }

  sub_5C1CC(qword_A7320);
  sub_506C(&qword_A7528, &qword_7A448);
  v27._countAndFlagsBits = sub_73A80();
  sub_73820(v27);

  v28._countAndFlagsBits = 0x4679646F422D200ALL;
  v28._object = 0xEE00203A7375636FLL;
  sub_73820(v28);
  if (qword_A3958 != -1)
  {
    sub_5C290(&qword_A3958);
  }

  sub_5C1CC(qword_A7378);
  sub_506C(&qword_A7530, &unk_7A450);
  v29._countAndFlagsBits = sub_73A80();
  sub_73820(v29);

  v30._countAndFlagsBits = 0x76697463412D200ALL;
  v30._object = 0xED0000203A797469;
  sub_73820(v30);
  v20 = sub_590CC();
  v21 = v10;
  sub_506C(&qword_A6D00, &unk_75D30);
  v11 = sub_73A80();
  v13 = v12;

  v31._countAndFlagsBits = v11;
  v31._object = v13;
  sub_73820(v31);

  v32._countAndFlagsBits = 0x7461636F4C2D200ALL;
  v32._object = 0xED0000203A6E6F69;
  sub_73820(v32);
  if (qword_A3910 != -1)
  {
    sub_5C250(&qword_A3910);
  }

  sub_5C1CC(qword_A7330);
  sub_506C(&qword_A7538, &qword_7A460);
  v33._countAndFlagsBits = sub_73A80();
  sub_5C338(v33);

  v34._countAndFlagsBits = 0x74617275442D200ALL;
  v34._object = 0xED0000203A6E6F69;
  sub_73820(v34);
  if (qword_A3918 != -1)
  {
    sub_5C270(&qword_A3918);
  }

  sub_5C1EC();
  v35._countAndFlagsBits = sub_73A80();
  sub_5C338(v35);

  sub_10364(v7, &qword_A7518, &qword_7A438);
  v36._countAndFlagsBits = 0x696E67614D2D200ALL;
  v36._object = 0xEE00203A65647574;
  sub_73820(v36);
  if (qword_A3920 != -1)
  {
    swift_once();
  }

  sub_5C1EC();
  v37._countAndFlagsBits = sub_73A80();
  sub_5C338(v37);

  sub_10364(v4, &qword_A7510, &qword_7A430);
  v38._countAndFlagsBits = 0x72656665522D200ALL;
  v38._object = 0xEE00203A65636E65;
  sub_73820(v38);
  if (qword_A3940 != -1)
  {
    swift_once();
  }

  sub_5C1CC(qword_A7360);
  sub_506C(&qword_A7540, &qword_7A468);
  v39._countAndFlagsBits = sub_73A80();
  sub_5C338(v39);

  v40._countAndFlagsBits = 0x3A65646F4D2D200ALL;
  v40._object = 0xE900000000000020;
  sub_73820(v40);
  if (qword_A3928 != -1)
  {
    swift_once();
  }

  sub_5C1CC(qword_A7348);
  sub_506C(&qword_A7548, &unk_7A470);
  v41._countAndFlagsBits = sub_73A80();
  sub_5C338(v41);

  v42._countAndFlagsBits = 0x203A7070412D200ALL;
  v42._object = 0xE800000000000000;
  sub_73820(v42);
  if (qword_A3938 != -1)
  {
    swift_once();
  }

  type metadata accessor for HealthNLIntent.HealthNLApp(0);
  sub_5C208();
  sub_5B648(v14, v15, &unk_7A5F4);
  v16 = v19;
  sub_72E20();
  v43._countAndFlagsBits = sub_73A80();
  sub_5C338(v43);

  sub_10364(v16, &qword_A45F8, &qword_758B8);
  return v22;
}

uint64_t sub_5B108(uint64_t a1)
{
  v2 = sub_5B648(&qword_A7550, type metadata accessor for HealthNLIntent, &unk_7A390);

  return NLIntentWrapper.traversableIntentNode.getter(a1, v2);
}

uint64_t sub_5B184(uint64_t a1)
{
  v2 = sub_5B648(&qword_A7550, type metadata accessor for HealthNLIntent, &unk_7A390);

  return NLIntentWrapper.traversableOntologyNode.getter(a1, v2);
}

uint64_t sub_5B1F0()
{
  sub_506C(&qword_A74A0, &qword_7A3F0);
  swift_allocObject();
  result = sub_72C90();
  qword_AE778 = result;
  return result;
}

uint64_t sub_5B260()
{
  v0 = sub_506C(&qword_A74A0, &qword_7A3F0);
  sub_22274(v0);
  result = sub_72C90();
  qword_AE780 = result;
  return result;
}

uint64_t sub_5B2BC()
{
  v0 = sub_506C(&qword_A74A0, &qword_7A3F0);
  sub_22274(v0);
  result = sub_72C90();
  qword_AE788 = result;
  return result;
}

uint64_t sub_5B324()
{
  sub_506C(&qword_A5C68, qword_776C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_77300;
  if (qword_A3968 != -1)
  {
    swift_once();
  }

  v1 = qword_AE778;
  v2 = sub_506C(&qword_A74A0, &qword_7A3F0);
  *(v0 + 56) = v2;
  v3 = sub_5B690(&qword_A74A8, &qword_A74A0, &qword_7A3F0);
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;
  v4 = qword_A3970;

  if (v4 != -1)
  {
    sub_115F8(&qword_A3970);
  }

  v5 = qword_AE780;
  *(v0 + 96) = v2;
  *(v0 + 104) = v3;
  *(v0 + 72) = v5;
  v6 = qword_A3978;

  if (v6 != -1)
  {
    sub_11618(&qword_A3978);
  }

  v7 = qword_AE788;
  *(v0 + 136) = v2;
  *(v0 + 144) = v3;
  *(v0 + 112) = v7;

  return NonTerminalOntologyNode.init(name:multicardinal:childNodes:)(7368801, 0xE300000000000000, 0, v0);
}

uint64_t sub_5B4C0()
{
  v0 = sub_72C40();

  return _swift_deallocClassInstance(v0, 16, 7);
}

uint64_t sub_5B50C()
{
  sub_5C2D0();
  v2 = sub_731D0();

  return sub_5124(v1, v0, v2);
}

uint64_t sub_5B560()
{
  sub_5C2D0();
  sub_731D0();
  v0 = sub_30368();

  return sub_7CC4(v0, v1, v2, v3);
}

uint64_t sub_5B648(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_5B690(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_D850(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_5B704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_72E60();
  sub_1168C();
  (*(v6 + 16))(a3, a1);
  *(a3 + *(type metadata accessor for HealthNLIntent.HealthNLApp(0) + 20)) = a2;
}

uint64_t sub_5B78C()
{
  sub_73B60(29);

  if (qword_A3970 != -1)
  {
    sub_115F8(&qword_A3970);
  }

  type metadata accessor for HealthNLIntent.HealthNLApp(0);
  sub_5C208();
  sub_5B648(v0, v1, &unk_7A5C4);
  sub_11664();
  v2 = v13;
  if (v13)
  {
    v12 = 0x800000000007D2B0;
    sub_10414();
    if (sub_73AE0())
    {
      v12 = 0x800000000007D2B0;
      sub_5C23C();
      sub_73AD0();
      v4 = v3;

      v2 = v4;
    }
  }

  sub_506C(&qword_A6D00, &unk_75D30);
  v5 = sub_73A80();
  v7 = v6;

  v14._countAndFlagsBits = v5;
  v14._object = v7;
  sub_73820(v14);

  v15._countAndFlagsBits = 0xD000000000000011;
  v15._object = 0x800000000007F250;
  sub_73820(v15);
  if (qword_A3978 != -1)
  {
    sub_11618(&qword_A3978);
  }

  sub_11664();
  if (!v2)
  {
    sub_11664();
    if (v12)
    {
      sub_10414();
      if (sub_73AE0())
      {
        sub_5C23C();
        sub_73AD0();
      }
    }
  }

  v8 = sub_73A80();
  v10 = v9;

  v16._countAndFlagsBits = v8;
  v16._object = v10;
  sub_73820(v16);

  v17._countAndFlagsBits = 93;
  v17._object = 0xE100000000000000;
  sub_73820(v17);
  return 0x203A656D616E5BLL;
}

uint64_t sub_5BAD0@<X0>(void (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  a1(0);
  sub_1168C();
  v6 = *(v5 + 16);

  return v6(a2, v2, v4);
}

uint64_t sub_5BB48(uint64_t a1)
{
  v2 = sub_5B648(&qword_A4608, type metadata accessor for HealthNLIntent.HealthNLApp, &unk_7A5F4);

  return NonTerminalIntentNodeWrapper.traversableIntentNode.getter(a1, v2);
}

uint64_t sub_5BBC4(uint64_t a1)
{
  v2 = sub_5B648(&qword_A4608, type metadata accessor for HealthNLIntent.HealthNLApp, &unk_7A5F4);

  return NonTerminalIntentNodeWrapper.traversableOntologyNode.getter(a1, v2);
}

uint64_t sub_5BC44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_72E60();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_5124(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_5BD04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_5C2D0();
  result = sub_72E60();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = sub_30368();

    return sub_7CC4(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 20)) = (v4 - 1);
  }

  return result;
}

uint64_t sub_5BD98(uint64_t a1)
{
  result = sub_72E60();
  if (v2 <= 0x3F)
  {
    result = sub_72C30();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutBodyFocus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WorkoutBodyFocus(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x5BF70);
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

unint64_t sub_5BFAC()
{
  result = qword_A75F0;
  if (!qword_A75F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A75F0);
  }

  return result;
}

unint64_t sub_5C004()
{
  result = qword_A75F8;
  if (!qword_A75F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A75F8);
  }

  return result;
}

unint64_t sub_5C05C()
{
  result = qword_A7600;
  if (!qword_A7600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A7600);
  }

  return result;
}

unint64_t sub_5C0F8()
{
  result = qword_A7608;
  if (!qword_A7608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A7608);
  }

  return result;
}

unint64_t sub_5C14C()
{
  result = qword_A7610;
  if (!qword_A7610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A7610);
  }

  return result;
}

void *sub_5C1CC(uint64_t a1)
{

  return sub_72E30();
}

void *sub_5C1EC()
{

  return sub_72E30();
}

uint64_t sub_5C220(uint64_t a1)
{

  return sub_73DB0();
}

uint64_t sub_5C250(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_5C270(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_5C290(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_5C2B0(uint64_t a1)
{

  return swift_once();
}

void sub_5C2F8()
{

  sub_402A0();
}

void *sub_5C31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{

  return sub_72E30();
}

void sub_5C338(Swift::String a1)
{

  sub_73820(a1);
}

uint64_t sub_5C3AC(uint64_t a1, uint64_t a2)
{

  return sub_72C90();
}

BOOL sub_5C3DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_73E40();
  sub_73810();
  v6 = sub_73E60();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = sub_73DB0();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

void *sub_5C4C8(uint64_t a1)
{
  v1 = sub_506C(&qword_A7758, &unk_7A7C0);
  sub_B1C0(v1);
  sub_303DC();
  __chkstk_darwin(v2);
  v4 = &v84 - v3;
  v90 = sub_72D60();
  sub_5394();
  v87 = v5;
  __chkstk_darwin(v6);
  sub_C2A4();
  v86 = v8 - v7;
  v9 = sub_506C(&qword_A7518, &qword_7A438);
  v10 = sub_B1C0(v9);
  __chkstk_darwin(v10);
  sub_198CC();
  v13 = v11 - v12;
  __chkstk_darwin(v14);
  v16 = &v84 - v15;
  v17 = sub_506C(&qword_A7760, &unk_7A7D0);
  v18 = sub_B1C0(v17);
  __chkstk_darwin(v18);
  sub_198CC();
  v88 = v19 - v20;
  sub_11658();
  __chkstk_darwin(v21);
  v91 = &v84 - v22;
  v23 = sub_506C(&qword_A7510, &qword_7A430);
  v24 = sub_B1C0(v23);
  __chkstk_darwin(v24);
  sub_198CC();
  v27 = v25 - v26;
  __chkstk_darwin(v28);
  v30 = &v84 - v29;
  v93 = sub_590CC();
  v96 = v31;
  v32 = sub_590CC();
  if (!v33)
  {
    v32 = 0;
  }

  v34 = 0xE000000000000000;
  if (!v33)
  {
    v33 = 0xE000000000000000;
  }

  v35 = sub_12460(v32, v33);
  if (v35 == 87)
  {
    v92 = 0;
  }

  else
  {
    v92 = sub_123E0(v35);
    v34 = v36;
  }

  v89 = v13;
  v95 = v34;
  v97 = sub_5CE88();
  if (qword_A3920 != -1)
  {
    swift_once();
  }

  type metadata accessor for HealthNLIntent(0);
  sub_5EF7C(&qword_A42E8, type metadata accessor for HealthNLIntent, &unk_7A328);
  sub_5EFC8();
  v37 = sub_506C(&qword_A7558, &qword_7A7E0);
  sub_5F004(v30);
  if (v38)
  {
    sub_5B50(v30, &qword_A7510, &qword_7A430);
LABEL_14:
    v94 = 0;
    goto LABEL_16;
  }

  sub_73130();
  v39 = v98;
  sub_5C0C();
  v40 = sub_5F0F4();
  v41(v40);
  if (v39 == 22)
  {
    goto LABEL_14;
  }

  v94 = sub_511C0(v39);
LABEL_16:
  sub_5EFC8();
  sub_5F004(v27);
  if (v38)
  {
    sub_5B50(v27, &qword_A7510, &qword_7A430);
    v100 = 0;
    v101 = 1;
  }

  else
  {
    sub_73140();
    sub_5C0C();
    (*(v42 + 8))(v27, v37);
  }

  if (qword_A3918 != -1)
  {
    swift_once();
  }

  sub_5EFC8();
  v43 = sub_72D40();
  sub_5F050();
  if (sub_5124(v44, v45, v46) == 1)
  {
    v47 = &qword_A7518;
    v48 = &qword_7A438;
LABEL_26:
    sub_5B50(v16, v47, v48);
    goto LABEL_27;
  }

  v85 = v4;
  v49 = v91;
  sub_72D30();
  sub_5C0C();
  v51 = *(v50 + 8);
  v52 = v16;
  v16 = v49;
  v51(v52, v43);
  v53 = sub_72D90();
  sub_5F004(v16);
  if (v38)
  {
    v47 = &qword_A7760;
    v48 = &unk_7A7D0;
    goto LABEL_26;
  }

  v84 = sub_72D80();
  v69 = v68;
  sub_5C0C();
  v91 = *(v70 + 8);
  (v91)(v16, v53);
  if ((v69 & 1) == 0)
  {
    v71 = v89;
    sub_5EFC8();
    sub_5F050();
    if (sub_5124(v72, v73, v74) == 1)
    {
      v75 = &qword_A7518;
      v76 = &qword_7A438;
      v77 = v71;
LABEL_48:
      sub_5B50(v77, v75, v76);
      v79 = v85;
      sub_7CC4(v85, 1, 1, v90);
LABEL_49:
      sub_5B50(v79, &qword_A7758, &unk_7A7C0);
      goto LABEL_27;
    }

    sub_72D30();
    v51(v71, v43);
    v78 = v88;
    sub_5F004(v88);
    if (v38)
    {
      v75 = &qword_A7760;
      v76 = &unk_7A7D0;
      v77 = v78;
      goto LABEL_48;
    }

    v79 = v85;
    sub_72D70();
    (v91)(v78, v53);
    v80 = v90;
    v81 = sub_5124(v79, 1, v90);
    if (v81 == 1)
    {
      goto LABEL_49;
    }

    v82 = v86;
    v83 = v87;
    (*(v87 + 32))(v86, v79, v80);
    sub_657F0();
    (*(v83 + 8))(v82, v80);
    v100 = v84;
    v101 = 0;
  }

LABEL_27:
  if (qword_A3948 != -1)
  {
    swift_once();
  }

  sub_5EFC8();
  v54 = v98;
  v55 = v99;
  if (qword_A3950 != -1)
  {
    swift_once();
  }

  sub_5EFC8();
  v56 = v98;
  v57 = v99;
  v58 = objc_allocWithZone(INWorkoutCustomization);
  v59 = sub_5EDE8(v54, v55, v56, v57);
  if (qword_A3940 != -1)
  {
    swift_once();
  }

  sub_5EFC8();
  v60 = v98;
  v61 = v96;
  if (v96)
  {
    v62 = objc_allocWithZone(INSpeakableString);
    v61 = sub_5ED24(v92, v95, v93, v61, 0, 0);
  }

  else
  {
  }

  if (qword_A3900 != -1)
  {
    swift_once();
  }

  if (v60 == 27)
  {
    v63 = 2;
  }

  else
  {
    v63 = v60 == 25;
  }

  sub_5EFC8();
  sub_ADF8(0, &qword_A4518, INStartWorkoutIntent_ptr);
  v64 = v61;
  v65 = sub_739F0();
  [v65 setSequenceLabel:v63];
  v66 = v59;
  [v65 setCustomization:v66];

  return v65;
}

id sub_5CDB0(uint64_t a1, Class *a2)
{
  sub_590CC();
  v3 = sub_590CC();
  if (!v4)
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  v5 = sub_12460(v3, v4);
  if (v5 != 87)
  {
    sub_123E0(v5);
  }

  v6 = objc_allocWithZone(INSpeakableString);
  sub_5F040();
  v13 = sub_5ED24(v7, v8, v9, v10, v11, v12);
  v14 = [objc_allocWithZone(*a2) initWithWorkoutName:v13];

  return v14;
}

uint64_t sub_5CE88()
{
  v0 = sub_590CC();
  if (v1)
  {
    v2 = v0;
  }

  else
  {
    v2 = 0;
  }

  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  v4 = sub_5A484();
  if (v4 == 2)
  {
    if (v2 == 1835628403 && v3 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v6 = sub_73DB0();

      if (v6)
      {
        return 2;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v8 = v4;

    if (v8)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

void sub_5CF4C(char a1)
{
  v2 = [objc_allocWithZone(NSNumber) initWithBool:a1 & 1];
  [v1 setIsBuiltInWorkoutType:v2];
}

uint64_t sub_5CFBC(void *a1)
{
  sub_ADF8(0, &qword_A4518, INStartWorkoutIntent_ptr);
  v2 = a1;
  return sub_739F0();
}

NSObject *sub_5D018(uint64_t a1)
{
  v3 = sub_506C(&qword_A3F90, &unk_74FC0);
  sub_B1C0(v3);
  sub_303DC();
  __chkstk_darwin(v4);
  sub_5F0E8(&v172[-v5]);
  v6 = sub_73720();
  sub_5394();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_198CC();
  v12 = v10 - v11;
  __chkstk_darwin(v13);
  v185 = &v172[-v14];
  sub_11658();
  __chkstk_darwin(v15);
  v183 = &v172[-v16];
  sub_11658();
  __chkstk_darwin(v17);
  sub_5F0E8(&v172[-v18]);
  v19 = sub_72FC0();
  sub_5394();
  v190 = v20;
  __chkstk_darwin(v21);
  sub_C2A4();
  sub_5F0E8(v23 - v22);
  v186 = sub_506C(&qword_A7768, &qword_7A7E8);
  sub_5C0C();
  sub_303DC();
  __chkstk_darwin(v24);
  v26 = &v172[-v25];
  v27 = sub_506C(&qword_A6118, &unk_7A7F0);
  v28 = sub_B1C0(v27);
  __chkstk_darwin(v28);
  sub_198CC();
  v187 = (v29 - v30);
  sub_11658();
  __chkstk_darwin(v31);
  v189 = &v172[-v32];
  sub_11658();
  __chkstk_darwin(v33);
  v188 = &v172[-v34];
  v35 = sub_506C(&qword_A4A38, &qword_75D68);
  sub_B1C0(v35);
  sub_303DC();
  __chkstk_darwin(v36);
  sub_5F0E8(&v172[-v37]);
  v38 = sub_506C(&qword_A4A28, &unk_7A800);
  sub_B1C0(v38);
  sub_303DC();
  __chkstk_darwin(v39);
  v41 = &v172[-v40];
  v42 = sub_506C(&qword_A4A18, &qword_75D58);
  sub_B1C0(v42);
  sub_303DC();
  __chkstk_darwin(v43);
  v45 = &v172[-v44];
  v191 = sub_734A0();
  if (!v191)
  {
LABEL_4:
    v46 = sub_736E0();
    sub_5F0B4(v46);
    (*(v8 + 16))(v12, v46, v6);

    v47 = sub_73710();
    v48 = sub_73980();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = sub_221D8();
      v50 = sub_14F88();
      v193[0] = v50;
      *v49 = 136315138;
      v192 = a1;
      sub_731B0();

      v51 = sub_737A0();
      v53 = v8;
      v54 = sub_19144(v51, v52, v193);

      *(v49 + 4) = v54;
      _os_log_impl(&dword_0, v47, v48, "Failed to convert UsoTask to UsoTask_create_common_Workout: %s", v49, 0xCu);
      sub_AE38(v50);
      sub_7EBC(v50);
      sub_5F024();

      (*(v53 + 8))(v12, v6);
    }

    else
    {

      (*(v8 + 8))(v12, v6);
    }

    sub_345F0();
    swift_allocError();
    *v55 = 1;
    swift_willThrow();
    return v47;
  }

  if (sub_C034(a1, 0))
  {

    goto LABEL_4;
  }

  v175 = v8;
  v176 = v1;
  sub_734A0();
  v57 = sub_73480();
  v59 = v58;

  v179 = v6;
  v177 = v57;
  if (v59)
  {
    swift_bridgeObjectRetain_n();
    sub_73430();
    sub_734C0();
    v60 = objc_allocWithZone(INSpeakableString);
    sub_5F040();
    v178 = sub_5ED24(v61, v62, v63, v64, v65, v66);
  }

  else
  {
    v178 = 0;
  }

  sub_734A0();
  v67 = sub_73450();
  v69 = v68;

  if (!v69)
  {
    goto LABEL_26;
  }

  v70 = v67 == 1819242352 && v69 == 0xE400000000000000;
  if (!v70 && (sub_73DB0() & 1) == 0)
  {
    v72 = v67 == 0x657461776E65706FLL && v69 == 0xE900000000000072;
    if (v72 || (sub_73DB0() & 1) != 0)
    {
      v71 = 1;
      goto LABEL_19;
    }

LABEL_26:
    v73 = sub_2BF5C(v67, v69);
    if ((v74 & 1) == 0)
    {
      v71 = v73;
      if (v73)
      {
        goto LABEL_28;
      }
    }

    if (v59)
    {
      v83 = v177;
      v84 = v177 == 1835628403 && v59 == 0xE400000000000000;
      if (v84 || (sub_5F074(1835628403) & 1) != 0)
      {

        v71 = 2;
        goto LABEL_29;
      }

      v169 = v83 == 1802264951 && v59 == 0xE400000000000000;
      if (v169 || (sub_5F074(1802264951) & 1) != 0 || (v83 == 7239026 ? (v170 = v59 == 0xE300000000000000) : (v170 = 0), v170))
      {
      }

      else
      {
        v171 = sub_5F074(7239026);

        if ((v171 & 1) == 0)
        {
          goto LABEL_102;
        }
      }

      v71 = 1;
      goto LABEL_29;
    }

LABEL_102:
    v71 = 0;
    goto LABEL_29;
  }

  v71 = 2;
LABEL_19:

LABEL_28:

LABEL_29:
  v75 = sub_72EA0();
  v174 = v71;
  if (v75 && (v76 = sub_72FA0(), , v76))
  {

    v77 = sub_72CB0();
    v177 = v76;

    v78 = 0;
  }

  else
  {
    v177 = 0;
    v77 = 0;
    v78 = 1;
  }

  sub_72ED0();
  sub_72F10();

  if (v194)
  {
    v79 = sub_72EC0();
    if (v79)
    {
      if (!sub_114FC(v79))
      {

        goto LABEL_49;
      }

      sub_5F100();
      sub_11500();
      if (v77)
      {
        sub_73B70();
      }

      else
      {
      }

      sub_72DB0();

      if (v194)
      {
        sub_730C0();
        sub_5F0D0();
        sub_72EE0();
        v173 = sub_1644C();
        sub_5B50(v45, &qword_A4A18, &qword_75D58);
        v80 = sub_165C8();
        sub_5F090(v80, v81);

        sub_5F05C();
        v82 = v187;
        goto LABEL_57;
      }
    }
  }

LABEL_49:
  v82 = v187;
  if ((v78 & 1) != 0 || (v85 = v177, , sub_72F90(), sub_5F0D0(), !v85))
  {
    sub_5EFE4();
    sub_5F05C();
  }

  else
  {
    sub_114FC(v85);
    sub_5F05C();
    if (v86)
    {
      sub_5F100();
      sub_11500();
      sub_73B70();

      sub_72DB0();

      if (v194)
      {
        sub_73110();
        sub_5F0D0();
        sub_730A0();
        v173 = sub_1624C();
        v87 = sub_5F068();
        sub_5B50(v87, v88, &unk_7A800);
        sub_730A0();
        v89 = sub_166B0(v177, v41);
        sub_5F090(v89, v90);
        v91 = sub_5F068();
        sub_5B50(v91, v92, &unk_7A800);
        goto LABEL_57;
      }
    }

    else
    {
    }

    sub_5EFE4();
  }

LABEL_57:
  v93 = v191;

  sub_72DC0();
  sub_5F0D0();
  v94 = v188;
  if (v93)
  {
    v95 = v181;
    sub_72FE0();
    v96 = sub_16D30();

    sub_5B50(v95, &qword_A4A38, &qword_75D68);
  }

  else
  {
    v96 = 0;
  }

  v97 = v189;
  (v190)[13](v94, enum case for UsoEntity_common_WorkoutGoal.DefinedValues.common_WorkoutGoal_Open(_:), v19);
  sub_7CC4(v94, 0, 1, v19);
  v98 = sub_72EA0();
  v187 = v96;
  if (v98)
  {
    sub_72FB0();
  }

  else
  {
    sub_7CC4(v97, 1, 1, v19);
  }

  v99 = *(v186 + 48);
  sub_5EE88(v94, v26);
  sub_5EE88(v97, &v26[v99]);
  sub_5F050();
  if (sub_5124(v100, v101, v102) != 1)
  {
    sub_5EE88(v26, v82);
    sub_5F050();
    if (sub_5124(v108, v109, v110) != 1)
    {
      v113 = v82;
      v114 = v190;
      v115 = v180;
      (v190)[4](v180, &v26[v99], v19);
      sub_5EF7C(&qword_A7770, &type metadata accessor for UsoEntity_common_WorkoutGoal.DefinedValues, &protocol conformance descriptor for UsoEntity_common_WorkoutGoal.DefinedValues);
      sub_5F068();
      sub_73770();
      v78 = v114[1];
      (v78)(v115, v19);
      sub_5B50(v189, &qword_A6118, &unk_7A7F0);
      sub_5B50(v188, &qword_A6118, &unk_7A7F0);
      (v78)(v113, v19);
      sub_5F05C();
      sub_5B50(v26, &qword_A6118, &unk_7A7F0);
      goto LABEL_70;
    }

    sub_5B50(v189, &qword_A6118, &unk_7A7F0);
    v111 = sub_5F068();
    sub_5B50(v111, v112, &unk_7A7F0);
    (v190[1])(v82, v19);
    goto LABEL_68;
  }

  sub_5B50(v97, &qword_A6118, &unk_7A7F0);
  v103 = sub_5F068();
  sub_5B50(v103, v104, &unk_7A7F0);
  sub_5F050();
  if (sub_5124(v105, v106, v107) != 1)
  {
LABEL_68:
    sub_5B50(v26, &qword_A7768, &qword_7A7E8);
    goto LABEL_70;
  }

  sub_5B50(v26, &qword_A6118, &unk_7A7F0);
LABEL_70:
  v116 = v187;
  sub_ADF8(0, &qword_A4518, INStartWorkoutIntent_ptr);
  v117 = v178;
  sub_5F0F4();
  v47 = sub_739F0();
  [v47 setSequenceLabel:v116];
  sub_734A0();
  v118 = 1;
  v119 = sub_73480();
  v121 = v120;

  if (v121)
  {
    v122 = sub_4C32C(&off_97D78);
    v123 = sub_5C3DC(v119, v121, v122);

    v118 = !v123;
  }

  sub_5CF4C(v118 & 1);
  v124 = sub_5F114(a1);
  if (v125)
  {
    v126 = v125;
    v186 = v124;
    v190 = v117;
    v181 = v47;
    v127 = sub_736E0();
    sub_5F0B4(v127);
    v128 = v175;
    v129 = v184;
    v130 = sub_5F0F4();
    v188 = v132;
    v189 = v131;
    v132(v130);

    v133 = sub_73710();
    v134 = sub_73970();

    if (os_log_type_enabled(v133, v134))
    {
      v135 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v136 = sub_14F88();
      v193[0] = v136;
      *v135 = 136315394;
      *(v135 + 4) = sub_19144(v186, v126, v193);
      *(v135 + 12) = 2112;
      v137 = v190;
      *(v135 + 14) = v190;
      v138 = v178;
      *v78 = v178;
      v139 = v137;
      _os_log_impl(&dword_0, v133, v134, "Found instructor,  assuming search required: %s with modality: %@", v135, 0x16u);
      sub_5B50(v78, &qword_A4060, &qword_75440);
      sub_5F05C();
      sub_7EBC(v140);
      sub_AE38(v136);
      sub_5F024();
      sub_7EBC(v135);

      v187 = *(v128 + 8);
      (v187)(v184, v78);
      v141 = v182;
    }

    else
    {

      v187 = *(v128 + 8);
      (v187)(v129, v78);
      v141 = v182;
      v138 = v178;
    }

    type metadata accessor for SearchBundleHelper();
    swift_initStackObject();
    sub_17D24();
    v184 = v142;
    sub_17D5C(v141);
    if (v138)
    {
      v143 = [v190 spokenPhrase];
      v144 = sub_73790();
      v146 = v145;
    }

    else
    {
      v144 = 0;
      v146 = 0;
    }

    v147 = search(dataPath:guest:modality:)(v141, v186, v126, v144, v146);

    sub_5B50(v141, &qword_A3F90, &unk_74FC0);
    swift_beginAccess();
    v148 = v183;
    (v188)(v183, v127, v78);

    v149 = sub_73710();
    v150 = sub_73970();
    v151 = os_log_type_enabled(v149, v150);
    v47 = v181;
    if (v151)
    {
      v152 = sub_221D8();
      *v152 = 134217984;
      *(v152 + 4) = v147[2];

      _os_log_impl(&dword_0, v149, v150, "Found %ld workouts, converting and attaching", v152, 0xCu);
      sub_5F024();
    }

    else
    {
    }

    v153 = v185;
    v154 = v187;
    (v187)(v148, v78);
    swift_beginAccess();
    v155 = sub_5F0F4();
    (v188)(v155);

    v156 = sub_73710();
    v157 = sub_73970();

    if (os_log_type_enabled(v156, v157))
    {
      v158 = sub_221D8();
      v187 = v154;
      v159 = v158;
      v160 = sub_14F88();
      v195 = v160;
      *v159 = 136315138;
      v161 = sub_73880();
      v163 = sub_19144(v161, v162, &v195);

      *(v159 + 4) = v163;
      _os_log_impl(&dword_0, v156, v157, "Candidates found:  %s", v159, 0xCu);
      sub_AE38(v160);
      sub_5F024();
      sub_7EBC(v159);

      (v187)(v185, v179);
    }

    else
    {

      (v154)(v153, v78);
    }

    v164 = v147[2];
    if (v164)
    {
      v195 = _swiftEmptyArrayStorage;
      sub_73BE0();
      v165 = v147 + 5;
      do
      {
        v166 = *(v165 - 1);
        v167 = *v165;
        objc_allocWithZone(INWorkoutAssociatedItem);

        sub_6D29C(5, v166, v167, 0, 0);
        sub_73BB0();
        sub_73BF0();
        sub_73C00();
        sub_73BC0();
        v165 += 2;
        --v164;
      }

      while (v164);

      v168 = v195;
    }

    else
    {

      v168 = _swiftEmptyArrayStorage;
    }

    sub_5EEF8(v168, v47);
  }

  else
  {
  }

  return v47;
}

id sub_5E3D4(uint64_t a1)
{
  v2 = objc_allocWithZone(INEndWorkoutIntent);

  return [v2 initWithWorkoutName:a1];
}

id sub_5E490()
{
  v1 = [v0 workoutName];

  return v1;
}

id sub_5E560(uint64_t a1)
{
  v2 = objc_allocWithZone(INPauseWorkoutIntent);

  return [v2 initWithWorkoutName:a1];
}

uint64_t sub_5E5F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void *__return_ptr, uint64_t), Class *a5, const char *a6, ...)
{
  v10 = sub_73720();
  sub_5394();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_C2A4();
  v16 = v15 - v14;
  sub_72EB0();
  if (v41[3])
  {
    a3(0);
    if (swift_dynamicCast())
    {

      a4(v41, v17);

      v18 = sub_73480();
      v20 = v19;

      if (v20)
      {
        v16 = v18;
      }

      else
      {
        v16 = 0;
      }

      sub_73430();
      sub_734C0();
      v21 = objc_allocWithZone(INSpeakableString);
      sub_5F040();
      v28 = sub_5ED24(v22, v23, v24, v25, v26, v27);
      [objc_allocWithZone(*a5) initWithWorkoutName:v28];
      sub_5F0D0();

      return v16;
    }
  }

  else
  {
    sub_5B50(v41, &qword_A42F0, &qword_77260);
  }

  v29 = sub_736E0();
  sub_5F0B4(v29);
  (*(v12 + 16))(v16, v29, v10);

  v30 = sub_73710();
  v31 = sub_73980();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = sub_221D8();
    v33 = sub_14F88();
    v42 = v33;
    *v32 = 136315138;
    sub_731B0();

    v34 = sub_737A0();
    v40 = v10;
    v36 = a6;
    v37 = sub_19144(v34, v35, &v42);

    *(v32 + 4) = v37;
    _os_log_impl(&dword_0, v30, v31, v36, v32, 0xCu);
    sub_AE38(v33);
    sub_7EBC(v33);
    sub_7EBC(v32);

    (*(v12 + 8))(v16, v40);
  }

  else
  {

    (*(v12 + 8))(v16, v10);
  }

  sub_345F0();
  swift_allocError();
  *v38 = 1;
  swift_willThrow();
  return v16;
}

id sub_5E9F8(uint64_t a1)
{
  v2 = objc_allocWithZone(INResumeWorkoutIntent);

  return [v2 initWithWorkoutName:a1];
}

id sub_5EB48(uint64_t a1)
{
  v2 = objc_allocWithZone(INCancelWorkoutIntent);

  return [v2 initWithWorkoutName:a1];
}

uint64_t sub_5EC00@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_73390();
  v7 = sub_B1C0(v6);
  __chkstk_darwin(v7);
  sub_C2A4();
  v8 = a1(0);
  sub_73380();
  result = sub_732B0();
  a3[3] = v8;
  a3[4] = a2;
  *a3 = result;
  return result;
}

id sub_5ED24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_73780();

  v9 = sub_73780();

  if (a6)
  {
    v10 = sub_73780();
  }

  else
  {
    v10 = 0;
  }

  v11 = [v6 initWithVocabularyIdentifier:v8 spokenPhrase:v9 pronunciationHint:v10];

  return v11;
}

id sub_5EDE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v6 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = sub_73780();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = sub_73780();

LABEL_6:
  v8 = [v4 initWithFocus:v6 environment:v7];

  return v8;
}

uint64_t sub_5EE88(uint64_t a1, uint64_t a2)
{
  v4 = sub_506C(&qword_A6118, &unk_7A7F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_5EEF8(uint64_t a1, void *a2)
{
  sub_ADF8(0, &qword_A7778, INWorkoutAssociatedItem_ptr);
  isa = sub_73860().super.isa;

  [a2 setAssociatedItems:isa];
}

uint64_t sub_5EF7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_5EFC8()
{

  return sub_72E30();
}

void sub_5EFE4()
{
  *(v0 - 368) = 0;
  *(v0 - 376) = 0;
  *(v0 - 380) = 1;
}

uint64_t sub_5F024()
{
}

uint64_t sub_5F074(uint64_t a1)
{

  return sub_73DB0();
}

uint64_t sub_5F090(uint64_t a1, int a2)
{
  *(v2 - 376) = a1;
  *(v2 - 380) = a2;
}

uint64_t sub_5F0B4(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_5F0D0()
{
}

uint64_t sub_5F114(uint64_t a1)
{
  if (!sub_734A0())
  {
    return 0;
  }

  v1 = sub_72E90();
  if (!v1)
  {

    return v1;
  }

  v2 = sub_73000();

  if (!v2)
  {

    return 0;
  }

  v1 = sub_730E0();

  return v1;
}

uint64_t sub_5F1B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_72AB0();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return sub_7CC4(a2, v7, 1, v6);
}

uint64_t sub_5F258(uint64_t a1)
{
  v2 = sub_610D0(a1);
  v4 = v3;
  v6 = v5;
  v7 = sub_61130(a1);
  v9 = v8;
  v11 = v10;
  v12 = sub_612FC(v2, v4, v6 & 1, v7, v8, v10 & 1);
  sub_61330(v7, v9, v11 & 1);
  if (v12)
  {
    sub_61330(v2, v4, v6 & 1);
    return 0;
  }

  else
  {
    sub_61184(v2, v4, v6 & 1, a1);
    v13 = v14;
    sub_61330(v2, v4, v6 & 1);
  }

  return v13;
}

uint64_t sub_5F32C(uint64_t a1)
{
  sub_71E80();
  v3 = OBJC_IVAR____TtC24HealthFlowDelegatePlugin26SearchForRemoteDevicesFlow_input;
  v4 = sub_727F0();
  sub_7CC4(v1 + v3, 1, 1, v4);
  sub_2BB8C(a1, v1 + OBJC_IVAR____TtC24HealthFlowDelegatePlugin26SearchForRemoteDevicesFlow_healthIntent);
  return v1;
}

uint64_t sub_5F398(uint64_t a1)
{
  v3 = sub_506C(&qword_A78A8, &qword_7A938);
  sub_B1C0(v3);
  sub_303DC();
  __chkstk_darwin(v4);
  v6 = &v10 - v5;
  v7 = sub_727F0();
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  sub_7CC4(v6, 0, 1, v7);
  v8 = OBJC_IVAR____TtC24HealthFlowDelegatePlugin26SearchForRemoteDevicesFlow_input;
  swift_beginAccess();
  sub_6133C(v6, v1 + v8);
  swift_endAccess();
  return 1;
}

void sub_5F494()
{
  sub_11784();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_73390();
  v7 = sub_B1C0(v6);
  __chkstk_darwin(v7);
  sub_C2A4();
  v8 = sub_72140();
  sub_5394();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_C2A4();
  v14 = v13 - v12;
  v15 = sub_73970();
  v16 = *sub_734D0();
  sub_73620(v15, &dword_0, v16, "Running SearchForRemoteDevicesFlow", 34, 2, _swiftEmptyArrayStorage);

  if (qword_A38F8 != -1)
  {
    sub_61490(&qword_A38F8);
  }

  type metadata accessor for HealthNLIntent(0);
  sub_C1B8();
  sub_72E30();
  if (v22 == 9 || !sub_5F7B8(v22, &off_98838))
  {
    type metadata accessor for DialogCATWrapper(0);
    sub_73380();
    sub_732B0();
    sub_72840();
    sub_71E80();
    sub_73440();
    sub_2BC60();
    sub_72120();
    sub_2BCB4(&v22);
    v5(v14);
    (*(v10 + 8))(v14, v8);
  }

  else
  {
    sub_73600();
    v17 = sub_735F0();
    sub_735E0();
    v18 = sub_735C0();
    sub_506C(&unk_A63F0, &unk_760C0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_752C0;
    *(v19 + 32) = v17;
    v20 = swift_allocObject();
    v20[2] = v5;
    v20[3] = v3;
    v20[4] = v1;
    v21 = v17;

    sub_735D0();
  }

  sub_11754();
}

BOOL sub_5F7B8(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = 0xE500000000000000;
    v8 = 0x7472617473;
    switch(*v4)
    {
      case 1:
        v8 = 0x6573756170;
        break;
      case 2:
        v7 = 0xE400000000000000;
        v8 = 1886352499;
        break;
      case 3:
        v7 = 0xE600000000000000;
        v8 = 0x656D75736572;
        break;
      case 4:
        v7 = 0xE600000000000000;
        v8 = 0x6C65636E6163;
        break;
      case 5:
        v7 = 0xE400000000000000;
        v8 = 2003789939;
        break;
      case 6:
        v8 = 0x74736575516B7361;
        v7 = 0xEB000000006E6F69;
        break;
      case 7:
        v8 = 0x7075746573;
        break;
      case 8:
        v7 = 0xE600000000000000;
        v8 = 0x796669646F6DLL;
        break;
      default:
        break;
    }

    v9 = 0xE500000000000000;
    v10 = 0x7472617473;
    switch(a1)
    {
      case 1:
        v10 = 0x6573756170;
        break;
      case 2:
        v9 = 0xE400000000000000;
        v10 = 1886352499;
        break;
      case 3:
        v9 = 0xE600000000000000;
        v10 = 0x656D75736572;
        break;
      case 4:
        v9 = 0xE600000000000000;
        v10 = 0x6C65636E6163;
        break;
      case 5:
        v9 = 0xE400000000000000;
        v10 = 2003789939;
        break;
      case 6:
        v10 = 0x74736575516B7361;
        v9 = 0xEB000000006E6F69;
        break;
      case 7:
        v10 = 0x7075746573;
        break;
      case 8:
        v9 = 0xE600000000000000;
        v10 = 0x796669646F6DLL;
        break;
      default:
        break;
    }

    if (v8 == v10 && v7 == v9)
    {

      return v5 != 0;
    }

    v12 = sub_73DB0();

    ++v4;
  }

  while ((v12 & 1) == 0);
  return v5 != 0;
}

uint64_t sub_5FA34(uint64_t a1, void (*a2)(char *))
{
  v4 = sub_73390();
  __chkstk_darwin(v4 - 8);
  v5 = sub_72140();
  v25 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_5F258(a1);
  if (v8)
  {
    v9 = v8;
    v10 = sub_73970();
    v11 = *sub_734D0();
    sub_506C(&qword_A3BA8, &unk_76BA0);
    v12 = swift_allocObject();
    v23 = a2;
    v13 = v12;
    *(v12 + 16) = xmmword_74B40;
    v14 = v11;
    v24 = v5;
    v15 = v14;
    v26[0] = sub_735A0();
    v26[1] = v16;
    sub_506C(&qword_A6D00, &unk_75D30);
    v17 = sub_73A80();
    v19 = v18;

    v13[7] = &type metadata for String;
    v13[8] = sub_5258();
    v13[4] = v17;
    v13[5] = v19;
    sub_73620(v10, &dword_0, v15, "Using device: %@", 16, 2, v13);

    sub_5FE3C(v9);
    sub_72130();

    v5 = v24;
    v23(v7);
  }

  else
  {
    sub_506C(&qword_A3FA0, qword_74FD0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_74B40;
    *(v20 + 32) = 1651664246;
    *(v20 + 40) = 0xE400000000000000;
    if (qword_A38F8 != -1)
    {
      swift_once();
    }

    type metadata accessor for HealthNLIntent(0);
    sub_C1B8();
    sub_72E30();
    if (LOBYTE(v26[0]) != 9)
    {
      sub_5C64(v26[0]);
    }

    *(v20 + 72) = sub_73350();
    sub_5BAC((v20 + 48));
    sub_73330();
    type metadata accessor for DialogCATWrapper(0);
    sub_73380();
    sub_732B0();
    sub_72840();
    sub_71E80();
    sub_73440();
    sub_2BC60();
    sub_72120();
    sub_2BCB4(v26);
    a2(v7);
  }

  return (*(v25 + 8))(v7, v5);
}

uint64_t sub_5FE3C(uint64_t a1)
{
  v1 = sub_73390();
  v2 = sub_B1C0(v1);
  __chkstk_darwin(v2);
  sub_C2A4();
  if (qword_A38F8 != -1)
  {
    sub_61490(&qword_A38F8);
  }

  type metadata accessor for HealthNLIntent(0);
  sub_C1B8();
  sub_72E30();
  switch(v6[0])
  {
    case 1:
      sub_5FFEC();
      break;
    case 3:
      sub_606DC();
      break;
    case 2:
      sub_60364();
      break;
    default:
      sub_615FC();
      sub_73380();
      sub_732B0();
      sub_72840();
      sub_71E80();
      sub_73440();
      sub_2BC60();
      v4 = sub_71CF0();
      sub_2BCB4(v6);
      return v4;
  }

  return v3;
}

void sub_5FFEC()
{
  sub_11784();
  v3 = sub_614C4(v2);
  v4 = sub_B1C0(v3);
  __chkstk_darwin(v4);
  sub_C2A4();
  v41 = sub_506C(&qword_A44B0, &qword_75830);
  sub_5394();
  v40 = v5;
  __chkstk_darwin(v6);
  sub_198CC();
  sub_61574();
  __chkstk_darwin(v7);
  sub_61554();
  v8 = sub_506C(&qword_A78A8, &qword_7A938);
  sub_B1C0(v8);
  sub_303DC();
  __chkstk_darwin(v9);
  sub_614E4();
  sub_5394();
  __chkstk_darwin(v10);
  sub_198CC();
  sub_61544();
  __chkstk_darwin(v11);
  sub_61564();
  v12 = OBJC_IVAR____TtC24HealthFlowDelegatePlugin26SearchForRemoteDevicesFlow_input;
  sub_61504();
  sub_60F58(v0 + v12, v1);
  sub_61584();
  if (v13)
  {
    sub_60FC8(v1);
    sub_73970();
    v14 = *sub_734D0();
    sub_6146C(v14, &dword_0, v15, "SearchForRemoteDevicesFlow expected to receive Input, didn't find one.");

    sub_615FC();
    sub_73380();
    sub_615C4();
    sub_72840();
    sub_71E80();
    sub_613D8();
    sub_2BC60();
    sub_71CF0();
    sub_2BCB4(v52);
  }

  else
  {
    v16 = sub_61454();
    v17(v16);
    type metadata accessor for HealthProducers();
    sub_615A8();
    sub_CBE0(v12, v18, v19, v20, v21, v22, v23, v24, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52[0], v52[1], v52[2], v52[3], v52[4], v52[5], v52[6], v52[7], v52[8]);
    v25 = sub_506C(&qword_A56B0, &unk_76E50);
    sub_61524(v25);
    type metadata accessor for PauseWorkoutStrategy();
    v26 = swift_allocObject();
    v27 = sub_613AC(v26);
    v28(v27);
    sub_506C(&qword_A5128, &qword_766C0);
    swift_allocObject();
    sub_71C50();
    v29 = sub_6140C();
    v30(v29);
    sub_ADF8(0, &qword_A4498, INPauseWorkoutIntent_ptr);
    v31 = sub_5CDA4(v0 + OBJC_IVAR____TtC24HealthFlowDelegatePlugin26SearchForRemoteDevicesFlow_healthIntent);
    v52[0] = sub_61428(v31);
    v32 = sub_61030(&qword_A56B8, &qword_A56B0, &unk_76E50);
    sub_615E0(v32);

    v33 = sub_614B0();
    v34(v33);
    v35 = sub_61534();
    v36(v35);
  }

  sub_11754();
}

void sub_60364()
{
  sub_11784();
  v3 = sub_614C4(v2);
  v4 = sub_B1C0(v3);
  __chkstk_darwin(v4);
  sub_C2A4();
  sub_506C(&qword_A4430, &qword_76E30);
  sub_5394();
  __chkstk_darwin(v5);
  sub_198CC();
  sub_61574();
  __chkstk_darwin(v6);
  sub_61554();
  v7 = sub_506C(&qword_A78A8, &qword_7A938);
  sub_B1C0(v7);
  sub_303DC();
  __chkstk_darwin(v8);
  sub_614E4();
  sub_5394();
  __chkstk_darwin(v9);
  sub_198CC();
  sub_61544();
  __chkstk_darwin(v10);
  sub_61564();
  v11 = OBJC_IVAR____TtC24HealthFlowDelegatePlugin26SearchForRemoteDevicesFlow_input;
  sub_61504();
  sub_60F58(v11 + v0, v1);
  sub_61584();
  if (v12)
  {
    sub_60FC8(v1);
    sub_73970();
    v13 = *sub_734D0();
    sub_6146C(v13, &dword_0, v14, "SearchForRemoteDevicesFlow expected to receive Input, didn't find one.");

    sub_615FC();
    sub_73380();
    sub_615C4();
    sub_72840();
    sub_71E80();
    sub_613D8();
    sub_2BC60();
    sub_71CF0();
    sub_2BCB4(&v29);
  }

  else
  {
    v15 = sub_61454();
    v16(v15);
    type metadata accessor for HealthProducers();
    sub_615A8();
    sub_C680(v11);
    v17 = sub_506C(&qword_A56A0, &qword_76E38);
    sub_61524(v17);
    type metadata accessor for EndWorkoutStrategy();
    v18 = swift_allocObject();
    v19 = sub_613AC(v18);
    v20(v19);
    sub_506C(&qword_A5090, &unk_76E40);
    swift_allocObject();
    sub_71C50();
    v21 = sub_6140C();
    v22(v21);
    sub_ADF8(0, &qword_A4418, INEndWorkoutIntent_ptr);
    v23 = sub_5CD98(v0 + OBJC_IVAR____TtC24HealthFlowDelegatePlugin26SearchForRemoteDevicesFlow_healthIntent);
    v29 = sub_61428(v23);
    v24 = sub_61030(&qword_A56A8, &qword_A56A0, &qword_76E38);
    sub_615E0(v24);

    v25 = sub_614B0();
    v26(v25);
    v27 = sub_61534();
    v28(v27);
  }

  sub_11754();
}

void sub_606DC()
{
  sub_11784();
  v3 = sub_614C4(v2);
  v4 = sub_B1C0(v3);
  __chkstk_darwin(v4);
  sub_C2A4();
  v41 = sub_506C(&qword_A43A8, &unk_76E60);
  sub_5394();
  v40 = v5;
  __chkstk_darwin(v6);
  sub_198CC();
  sub_61574();
  __chkstk_darwin(v7);
  sub_61554();
  v8 = sub_506C(&qword_A78A8, &qword_7A938);
  sub_B1C0(v8);
  sub_303DC();
  __chkstk_darwin(v9);
  sub_614E4();
  sub_5394();
  __chkstk_darwin(v10);
  sub_198CC();
  sub_61544();
  __chkstk_darwin(v11);
  sub_61564();
  v12 = OBJC_IVAR____TtC24HealthFlowDelegatePlugin26SearchForRemoteDevicesFlow_input;
  sub_61504();
  sub_60F58(v0 + v12, v1);
  sub_61584();
  if (v13)
  {
    sub_60FC8(v1);
    sub_73970();
    v14 = *sub_734D0();
    sub_6146C(v14, &dword_0, v15, "SearchForRemoteDevicesFlow expected to receive Input, didn't find one.");

    sub_615FC();
    sub_73380();
    sub_615C4();
    sub_72840();
    sub_71E80();
    sub_613D8();
    sub_2BC60();
    sub_71CF0();
    sub_2BCB4(v52);
  }

  else
  {
    v16 = sub_61454();
    v17(v16);
    type metadata accessor for HealthProducers();
    sub_615A8();
    sub_CFD4(v12, v18, v19, v20, v21, v22, v23, v24, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52[0], v52[1], v52[2], v52[3], v52[4], v52[5], v52[6], v52[7], v52[8]);
    v25 = sub_506C(&qword_A56C0, qword_7A940);
    sub_61524(v25);
    type metadata accessor for ResumeWorkoutStrategy();
    v26 = swift_allocObject();
    v27 = sub_613AC(v26);
    v28(v27);
    sub_506C(&qword_A5258, &unk_76E70);
    swift_allocObject();
    sub_71C50();
    v29 = sub_6140C();
    v30(v29);
    sub_ADF8(0, &qword_A3BA0, INResumeWorkoutIntent_ptr);
    v31 = sub_5C3D0(v0 + OBJC_IVAR____TtC24HealthFlowDelegatePlugin26SearchForRemoteDevicesFlow_healthIntent);
    v52[0] = sub_61428(v31);
    v32 = sub_61030(&qword_A56C8, &qword_A56C0, qword_7A940);
    sub_615E0(v32);

    v33 = sub_614B0();
    v34(v33);
    v35 = sub_61534();
    v36(v35);
  }

  sub_11754();
}

uint64_t sub_60A54()
{
  sub_AE38((v0 + 16));
  sub_BFD8(v0 + OBJC_IVAR____TtC24HealthFlowDelegatePlugin26SearchForRemoteDevicesFlow_healthIntent);
  sub_60FC8(v0 + OBJC_IVAR____TtC24HealthFlowDelegatePlugin26SearchForRemoteDevicesFlow_input);
  return v0;
}

uint64_t sub_60A94()
{
  sub_60A54();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for SearchForRemoteDevicesFlow(uint64_t a1)
{
  result = qword_A77A8;
  if (!qword_A77A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_60B40(uint64_t a1)
{
  sub_731D0();
  if (v1 <= 0x3F)
  {
    sub_60C18(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_60C18(uint64_t a1)
{
  if (!qword_A77B8)
  {
    sub_727F0();
    v1 = sub_73A90();
    if (!v2)
    {
      atomic_store(v1, &qword_A77B8);
    }
  }
}

uint64_t sub_60C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_60D48;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_60D48(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_60E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_14A58;

  return Flow.execute()(a1, a2, a3);
}

uint64_t sub_60F1C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SearchForRemoteDevicesFlow(0);

  return sub_71D50();
}

uint64_t sub_60F58(uint64_t a1, uint64_t a2)
{
  v4 = sub_506C(&qword_A78A8, &qword_7A938);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_60FC8(uint64_t a1)
{
  v2 = sub_506C(&qword_A78A8, &qword_7A938);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_61030(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_D850(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_61084()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_610D0(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_73C60();
  }

  else
  {
    return sub_73B20();
  }
}

uint64_t sub_61130(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_73CB0();
  }

  else
  {
    return 1 << *(a1 + 32);
  }
}

void sub_61184(unint64_t a1, void *a2, char a3, uint64_t a4)
{
  v5 = a2;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_73C70();
      sub_735B0();
      swift_dynamicCast();
      return;
    }

    goto LABEL_19;
  }

  if ((a3 & 1) == 0)
  {
LABEL_8:
    if ((a1 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > a1)
    {
      if ((*(a4 + 8 * (a1 >> 6) + 64) >> a1))
      {
        if (*(a4 + 36) == v5)
        {
          goto LABEL_12;
        }

LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        return;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (sub_73C90() != *(a4 + 36))
  {
    __break(1u);
    goto LABEL_16;
  }

  sub_73CA0();
  sub_735B0();
  swift_dynamicCast();
  v5 = v11;
  a1 = sub_6D3A8(v11);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_12:
  v9 = *(*(a4 + 48) + 8 * a1);

  v10 = v9;
}

uint64_t sub_612FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a3 & 1) == 0)
  {
    if ((a6 & 1) == 0)
    {
      if (a2 == a5)
      {
        return a1 == a4;
      }

      __break(1u);
    }

    goto LABEL_8;
  }

  if ((a6 & 1) == 0)
  {
LABEL_8:
    __break(1u);
    return static __CocoaDictionary.Index.== infix(_:_:)(a1, a2, a3, a4);
  }

  a3 = a4;
  a4 = a5;
  return static __CocoaDictionary.Index.== infix(_:_:)(a1, a2, a3, a4);
}

uint64_t sub_61330(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_6133C(uint64_t a1, uint64_t a2)
{
  v4 = sub_506C(&qword_A78A8, &qword_7A938);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_613AC(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(v3 - 232) = a1;
  return v2;
}

void *sub_613D8()
{

  return sub_73440();
}

uint64_t sub_61428(uint64_t a1)
{

  return RCHFlow.__allocating_init(strategy:childFlowFactory:input:intent:)(v3 - 232, v1, v2, a1);
}

uint64_t sub_6146C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{

  return sub_73620(v4, a2, v5, a4, 70, 2, v6);
}

uint64_t sub_61490(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_614C4(uint64_t a1)
{
  *(v1 - 336) = a1;

  return sub_73390();
}

uint64_t sub_614E4()
{

  return sub_727F0();
}

uint64_t sub_61504()
{

  return swift_beginAccess();
}

id sub_615A8()
{
  v2 = *(v0 - 336);

  return v2;
}

uint64_t sub_615C4()
{

  return sub_732B0();
}

uint64_t sub_615E0(uint64_t a1)
{

  return sub_71CF0();
}

uint64_t sub_615FC()
{

  return type metadata accessor for DialogCATWrapper(0);
}

void *sub_61674()
{
  sub_506C(&qword_A3FA0, qword_74FD0);
  v1 = swift_allocObject();
  v2 = v1;
  *(v1 + 16) = xmmword_772F0;
  *(v1 + 32) = 0x6E69577473726966;
  *(v1 + 40) = 0xEF657A6953776F64;
  if (*(v0 + 8))
  {
    v3 = 0;
    v4 = 0;
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  else
  {
    v3 = *v0;
    v4 = &type metadata for Double;
  }

  *(v1 + 48) = v3;
  *(v1 + 72) = v4;
  strcpy((v1 + 80), "isConclusion");
  *(v1 + 93) = 0;
  *(v1 + 94) = -5120;
  *(v1 + 96) = *(v0 + 9);
  *(v1 + 120) = &type metadata for Bool;
  strcpy((v1 + 128), "isFirstWindow");
  *(v1 + 142) = -4864;
  *(v1 + 144) = *(v0 + 10);
  *(v1 + 168) = &type metadata for Bool;
  strcpy((v1 + 176), "isLastWindow");
  *(v1 + 189) = 0;
  *(v1 + 190) = -5120;
  *(v1 + 192) = *(v0 + 11);
  *(v1 + 216) = &type metadata for Bool;
  *(v1 + 224) = 0xD000000000000016;
  *(v1 + 232) = 0x800000000007DDB0;
  *(v1 + 240) = *(v0 + 12);
  *(v1 + 264) = &type metadata for Bool;
  *(v1 + 272) = 0x736D657469;
  *(v1 + 280) = 0xE500000000000000;
  v5 = *(v0 + 16);
  v6 = sub_506C(&qword_A5998, &qword_77460);
  v2[36] = v5;
  v2[39] = v6;
  v2[40] = 0xD000000000000013;
  v2[41] = 0x800000000007DDD0;
  if (*(v0 + 32))
  {
    v7 = 0;
    v8 = 0;
    v2[43] = 0;
    v2[44] = 0;
  }

  else
  {
    v7 = *(v0 + 24);
    v8 = &type metadata for Double;
  }

  v2[42] = v7;
  v2[45] = v8;
  v2[46] = 0x6574496C61746F74;
  v2[47] = 0xEA0000000000736DLL;
  if (*(v0 + 48))
  {
    v9 = 0;
    v10 = 0;
    v2[49] = 0;
    v2[50] = 0;
  }

  else
  {
    v9 = *(v0 + 40);
    v10 = &type metadata for Double;
  }

  v2[48] = v9;
  v2[51] = v10;
  v2[52] = 0x6953776F646E6977;
  v2[53] = 0xEA0000000000657ALL;
  if (*(v0 + 64))
  {
    v11 = 0;
    v12 = 0;
    v2[55] = 0;
    v2[56] = 0;
  }

  else
  {
    v11 = *(v0 + 56);
    v12 = &type metadata for Double;
  }

  v2[54] = v11;
  v2[57] = v12;
  sub_62EC4(v0, v14);
  return v2;
}

uint64_t sub_618EC()
{
  v1 = sub_506C(&qword_A3F98, qword_75450);
  sub_B1C0(v1);
  sub_303DC();
  __chkstk_darwin(v2);
  v4 = &v19 - v3;
  sub_506C(&qword_A3FA0, qword_74FD0);
  v5 = swift_allocObject();
  sub_302B0(v5, xmmword_77300);
  sub_3039C();
  sub_5AEC(v6, v7, v8, qword_75450);
  v9 = sub_73350();
  if (sub_5124(v4, 1, v9) == 1)
  {
    sub_5B50(v4, &qword_A3F98, qword_75450);
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
  }

  else
  {
    *(v5 + 72) = v9;
    sub_5BAC((v5 + 48));
    sub_5C0C();
    sub_3039C();
    v10();
  }

  *(v5 + 80) = 0x656369766564;
  *(v5 + 88) = 0xE600000000000000;
  v11 = type metadata accessor for WorkoutEndErrorWithCodeParameters(0);
  v12 = *(v0 + *(v11 + 20));
  if (v12)
  {
    v13 = sub_73360();
    v14 = v12;
  }

  else
  {
    v14 = 0;
    v13 = 0;
    *(v5 + 104) = 0;
    *(v5 + 112) = 0;
  }

  *(v5 + 96) = v14;
  *(v5 + 120) = v13;
  *(v5 + 128) = 0x646F43726F727265;
  *(v5 + 136) = 0xE900000000000065;
  v15 = (v0 + *(v11 + 24));
  if (v15[1])
  {
    v16 = 0;
    *(v5 + 152) = 0;
    *(v5 + 160) = 0;
    v17 = 0;
  }

  else
  {
    v17 = *v15;
    v16 = &type metadata for Double;
  }

  *(v5 + 144) = v17;
  *(v5 + 168) = v16;

  return v5;
}

uint64_t sub_61AD0()
{
  v1 = v0;
  v2 = sub_506C(&qword_A3F98, qword_75450);
  sub_B1C0(v2);
  sub_303DC();
  __chkstk_darwin(v3);
  v5 = &v10 - v4;
  sub_506C(&qword_A3FA0, qword_74FD0);
  v6 = swift_allocObject();
  sub_302B0(v6, xmmword_74B40);
  sub_5AEC(v1, v5, &qword_A3F98, qword_75450);
  v7 = sub_73350();
  if (sub_5124(v5, 1, v7) == 1)
  {
    sub_5B50(v5, &qword_A3F98, qword_75450);
    *(v6 + 48) = 0u;
    *(v6 + 64) = 0u;
  }

  else
  {
    *(v6 + 72) = v7;
    sub_5BAC((v6 + 48));
    sub_5C0C();
    (*(v8 + 32))();
  }

  return v6;
}

uint64_t sub_61C18()
{
  v1 = sub_506C(&qword_A3F98, qword_75450);
  sub_B1C0(v1);
  sub_303DC();
  __chkstk_darwin(v2);
  v4 = &v14 - v3;
  sub_506C(&qword_A3FA0, qword_74FD0);
  v5 = swift_allocObject();
  sub_302B0(v5, xmmword_77300);
  sub_3039C();
  sub_5AEC(v6, v7, v8, qword_75450);
  v9 = sub_73350();
  if (sub_5124(v4, 1, v9) == 1)
  {
    sub_5B50(v4, &qword_A3F98, qword_75450);
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
  }

  else
  {
    *(v5 + 72) = v9;
    sub_5BAC((v5 + 48));
    sub_5C0C();
    sub_3039C();
    v10();
  }

  *(v5 + 80) = 0x5074737269467369;
  *(v5 + 88) = 0xEF70704179747261;
  v11 = type metadata accessor for WorkoutEndIntentHandledResponseParameters(0);
  *(v5 + 96) = *(v0 + *(v11 + 20));
  *(v5 + 120) = &type metadata for Bool;
  strcpy((v5 + 128), "isPunchingOut");
  *(v5 + 142) = -4864;
  v12 = *(v0 + *(v11 + 24));
  *(v5 + 168) = &type metadata for Bool;
  *(v5 + 144) = v12;
  return v5;
}

uint64_t sub_61DCC()
{
  sub_7F1C();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for WorkoutEndErrorWithCodeParameters(0);
  v1[5] = v4;
  sub_B1C0(v4);
  v1[6] = swift_task_alloc();
  sub_7F10();

  return _swift_task_switch(v5);
}

uint64_t sub_61E58()
{
  sub_303D0();
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[2];
  v4 = sub_73350();
  sub_303A8(v4, v5, v6, v4);
  *(v1 + *(v2 + 20)) = 0;
  v7 = v1 + *(v2 + 24);
  *v7 = 0;
  *(v7 + 8) = 1;
  v3(v1);
  v0[7] = sub_618EC();
  sub_3037C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v11 = v8;
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  sub_30354(v9);

  return v11(0xD000000000000018);
}

uint64_t sub_61F60()
{
  sub_303D0();
  sub_3038C();
  v4 = v3;
  sub_7F04();
  *v5 = v4;
  v6 = *v2;
  sub_7F04();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_7F10();

  return _swift_task_switch(v8);
}

uint64_t sub_62094()
{
  sub_7F1C();
  sub_62F38();

  v0 = sub_303E8();

  return v1(v0);
}

uint64_t sub_620F0()
{
  sub_7F1C();
  sub_62F38();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_62154()
{
  sub_7F1C();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for WorkoutEndUnsupportedSlotValueParameters(0);
  sub_B1C0(v4);
  v1[5] = swift_task_alloc();
  sub_7F10();

  return _swift_task_switch(v5);
}

uint64_t sub_621DC()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = sub_73350();
  sub_303A8(v3, v4, v5, v3);
  v2(v1);
  v0[6] = sub_61AD0();
  sub_3037C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v9 = v6;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  sub_30354(v7);

  return v9(0xD00000000000001FLL);
}

uint64_t sub_622C4()
{
  sub_303D0();
  sub_3038C();
  v4 = v3;
  sub_7F04();
  *v5 = v4;
  v6 = *v2;
  sub_7F04();
  *v7 = v6;
  *(v4 + 64) = v0;

  if (!v0)
  {
    *(v4 + 72) = v1;
  }

  sub_7F10();

  return _swift_task_switch(v8);
}

uint64_t sub_623F8()
{
  sub_7F1C();
  sub_62F0C();

  v1 = *(v0 + 8);
  v2 = *(v0 + 72);

  return v1(v2);
}

uint64_t sub_62460()
{
  sub_7F1C();
  sub_62F0C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_624C4()
{
  sub_7F1C();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 16) = v3;
  *(v1 + 89) = v4;
  *(v1 + 88) = v5;
  v6 = type metadata accessor for WorkoutEndIntentHandledResponseParameters(0);
  *(v1 + 40) = v6;
  sub_B1C0(v6);
  *(v1 + 48) = swift_task_alloc();
  sub_7F10();

  return _swift_task_switch(v7);
}

uint64_t sub_62558()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  v4 = *(v0 + 89);
  v5 = *(v0 + 88);
  v6 = sub_73350();
  sub_303A8(v6, v7, v8, v6);
  *(v1 + *(v2 + 20)) = v5;
  *(v1 + *(v2 + 24)) = v4;
  v3(v1);
  *(v0 + 56) = sub_61C18();
  sub_3037C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v12 = v9;
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  sub_30354(v10);

  return v12(0xD000000000000020);
}

uint64_t sub_62664()
{
  sub_303D0();
  sub_3038C();
  v4 = v3;
  sub_7F04();
  *v5 = v4;
  v6 = *v2;
  sub_7F04();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_7F10();

  return _swift_task_switch(v8);
}

uint64_t sub_62798()
{
  sub_7F1C();
  sub_62F64();

  v0 = sub_303E8();

  return v1(v0);
}

uint64_t sub_627F4()
{
  sub_7F1C();
  sub_62F64();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_628AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_73390();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = sub_506C(&qword_A3F90, &unk_74FC0);
  sub_B1C0(v7);
  sub_303DC();
  __chkstk_darwin(v8);
  sub_5AEC(a1, &v13 - v9, &qword_A3F90, &unk_74FC0);
  sub_3039C();
  v10();
  v11 = sub_73290();
  (*(v6 + 8))(a2, v5);
  sub_5B50(a1, &qword_A3F90, &unk_74FC0);
  return v11;
}

uint64_t sub_62A74(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_5C0C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_62B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_506C(&qword_A3F98, qword_75450);
  sub_117C4();
  if (*(v7 + 84) == a2)
  {

    return sub_5124(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    v10 = v9 - 1;
    if (v10 < 0)
    {
      v10 = -1;
    }

    return (v10 + 1);
  }
}

void sub_62BD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_303C4();
  sub_506C(&qword_A3F98, qword_75450);
  sub_117C4();
  if (*(v8 + 84) == a3)
  {
    v9 = sub_30368();

    sub_7CC4(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 20)) = v4;
  }
}

uint64_t sub_62C8C()
{
  sub_303C4();
  v2 = sub_506C(&qword_A3F98, qword_75450);

  return sub_5124(v1, v0, v2);
}

uint64_t sub_62CF0()
{
  sub_303C4();
  sub_506C(&qword_A3F98, qword_75450);
  v0 = sub_30368();

  return sub_7CC4(v0, v1, v2, v3);
}

uint64_t sub_62D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_506C(&qword_A3F98, qword_75450);
  sub_117C4();
  if (*(v7 + 84) == a2)
  {

    return sub_5124(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20));
    if (v9 >= 2)
    {
      return ((v9 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_62E24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_303C4();
  sub_506C(&qword_A3F98, qword_75450);
  sub_117C4();
  if (*(v8 + 84) == a3)
  {
    v9 = sub_30368();

    sub_7CC4(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 20)) = v4 + 1;
  }
}

uint64_t sub_62F0C()
{
  v2 = *(v0 + 40);

  return sub_62A74(v2, type metadata accessor for WorkoutEndUnsupportedSlotValueParameters);
}

uint64_t sub_62F38()
{
  v2 = *(v0 + 48);

  return sub_62A74(v2, type metadata accessor for WorkoutEndErrorWithCodeParameters);
}

uint64_t sub_62F64()
{
  v2 = *(v0 + 48);

  return sub_62A74(v2, type metadata accessor for WorkoutEndIntentHandledResponseParameters);
}

void sub_62F90(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  v4 = sub_63254(a1);
  if (v4)
  {
    v5 = v4;
    v6 = sub_73970();
    v7 = *sub_734D0();
    sub_506C(&qword_A3BA8, &unk_76BA0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_74B40;
    v9 = v7;
    v10 = [v5 description];
    v11 = sub_73790();
    v13 = v12;

    *(v8 + 56) = &type metadata for String;
    *(v8 + 64) = sub_5258();
    *(v8 + 32) = v11;
    *(v8 + 40) = v13;
    sub_73620(v6, &dword_0, v9, "Created INStartWorkoutIntent: %@", 32, 2, v8);

    v24 = v5;
    a3(v5, 0);
  }

  else
  {
    type metadata accessor for HealthFlowError();
    swift_allocObject();
    v14 = sub_B5BC(0);
    v15 = sub_73980();
    v16 = *sub_734D0();
    sub_506C(&qword_A3BA8, &unk_76BA0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_74B40;
    v18 = v16;
    v19 = sub_B4FC();
    v21 = v20;
    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = sub_5258();
    *(v17 + 32) = v19;
    *(v17 + 40) = v21;
    sub_73620(v15, &dword_0, v18, "StartWorkout- RCHFlow Strategy: %@", 34, 2, v17);

    sub_63BE0(&qword_A3BB8, 255, type metadata accessor for HealthFlowError, &unk_7567C);
    v22 = swift_allocError();
    *v23 = v14;

    a3(v22, 1);
  }
}

void *sub_63254(uint64_t a1)
{
  v41 = a1;
  v1 = sub_506C(&qword_A3B90, &qword_76E00);
  v2 = __chkstk_darwin(v1 - 8);
  v40 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v39 = &v38 - v4;
  v5 = type metadata accessor for HealthNLIntent(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_731D0();
  sub_5394();
  v10 = v9;
  __chkstk_darwin(v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_72830();
  sub_5394();
  v16 = v15;
  v18 = __chkstk_darwin(v17);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v38 - v21;
  v23 = *(v16 + 16);
  v23(&v38 - v21, v41, v14);
  v24 = sub_5388();
  v26 = v25(v24);
  if (v26 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v27 = sub_5388();
    v28(v27);
    (*(v10 + 32))(v13, v22, v8);
    (*(v10 + 16))(v7, v13, v8);
    sub_29A54();
    v29 = sub_5C4C8(v7);
    sub_51F8(v7, type metadata accessor for HealthNLIntent);
    (*(v10 + 8))(v13, v8);
  }

  else if (v26 == enum case for Parse.directInvocation(_:))
  {
    v23(v20, v41, v14);
    v30 = v39;
    sub_6AFB0(v20, v39);
    v31 = v40;
    sub_50B4(v30, v40);
    v32 = type metadata accessor for DirectInvocationData(0);
    if (sub_5124(v31, 1, v32) == 1)
    {
      sub_514C(v30);
      sub_514C(v31);
      v29 = 0;
    }

    else
    {
      sub_6B824(v43);
      sub_514C(v30);
      sub_51F8(v31, type metadata accessor for DirectInvocationData);
      sub_506C(&qword_A3B98, &unk_74E00);
      sub_29A54();
      if (swift_dynamicCast())
      {
        v29 = v42;
      }

      else
      {
        v29 = 0;
      }
    }

    v35 = sub_5388();
    v36(v35);
  }

  else
  {
    v33 = sub_5388();
    v34(v33);
    return 0;
  }

  return v29;
}

uint64_t sub_6368C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  started = type metadata accessor for StartWorkoutStrategy();

  return RCHFlowStrategy.makeAnnotatedIntentFromParse(parse:currentIntent:completion:)(a1, a2, a3, a4, started, a6);
}

uint64_t sub_6371C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  started = type metadata accessor for StartWorkoutStrategy();

  return RCHFlowStrategy.makeParameterMetadata(intent:)(a1, started, a3);
}

uint64_t sub_63768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  started = type metadata accessor for StartWorkoutStrategy();

  return ResolveConfirmFlowStrategy.makeAppDoesNotSupportIntentResponse(app:intent:_:)(a1, a2, a3, a4, started, a6);
}

uint64_t sub_637D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  started = type metadata accessor for StartWorkoutStrategy();

  return ResolveConfirmFlowStrategy.makeAppNotFoundOnDeviceResponse(app:intent:_:)(a1, a2, a3, a4, started, a6);
}

uint64_t sub_63840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  started = type metadata accessor for StartWorkoutStrategy();

  return ResolveConfirmFlowStrategy.makeDeviceIncompatibleResponse(app:intent:_:)(a1, a2, a3, a4, started, a6);
}

uint64_t sub_638AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  started = type metadata accessor for StartWorkoutStrategy();

  return RouteConfirmIntentResponseFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, started, a7);
}

uint64_t sub_63928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  started = type metadata accessor for StartWorkoutStrategy();

  return IntentExtensionCommunicating.shouldIntentBeExecutedOnRemoteCompanion(intent:)(a1, started, a3);
}

uint64_t sub_63974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  started = type metadata accessor for StartWorkoutStrategy();

  return IntentExtensionCommunicating.makeSiriKitIntentHandler(app:intent:)(a1, a2, started, a4);
}

uint64_t sub_639D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  started = type metadata accessor for StartWorkoutStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:completion:)(a1, a2, a3, a4, started, a6);
}

uint64_t sub_63A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  started = type metadata accessor for StartWorkoutStrategy();

  return IntentErrorHandling.makeErrorResponse(app:intent:error:_:)(a1, a2, a3, a4, a5, started, a7);
}

uint64_t sub_63BE0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void *sub_63C88()
{
  sub_506C(&qword_A3FA0, qword_74FD0);
  v1 = swift_allocObject();
  v2 = v1;
  *(v1 + 16) = xmmword_772F0;
  *(v1 + 32) = 0x6E69577473726966;
  *(v1 + 40) = 0xEF657A6953776F64;
  if (*(v0 + 8))
  {
    v3 = 0;
    v4 = 0;
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  else
  {
    v3 = *v0;
    v4 = &type metadata for Double;
  }

  *(v1 + 48) = v3;
  *(v1 + 72) = v4;
  strcpy((v1 + 80), "isConclusion");
  *(v1 + 93) = 0;
  *(v1 + 94) = -5120;
  *(v1 + 96) = *(v0 + 9);
  *(v1 + 120) = &type metadata for Bool;
  strcpy((v1 + 128), "isFirstWindow");
  *(v1 + 142) = -4864;
  *(v1 + 144) = *(v0 + 10);
  *(v1 + 168) = &type metadata for Bool;
  strcpy((v1 + 176), "isLastWindow");
  *(v1 + 189) = 0;
  *(v1 + 190) = -5120;
  *(v1 + 192) = *(v0 + 11);
  *(v1 + 216) = &type metadata for Bool;
  *(v1 + 224) = 0xD000000000000016;
  *(v1 + 232) = 0x800000000007DDB0;
  *(v1 + 240) = *(v0 + 12);
  *(v1 + 264) = &type metadata for Bool;
  *(v1 + 272) = 0x736D657469;
  *(v1 + 280) = 0xE500000000000000;
  v5 = *(v0 + 16);
  v6 = sub_506C(&qword_A5998, &qword_77460);
  v2[36] = v5;
  v2[39] = v6;
  v2[40] = 0xD000000000000013;
  v2[41] = 0x800000000007DDD0;
  if (*(v0 + 32))
  {
    v7 = 0;
    v8 = 0;
    v2[43] = 0;
    v2[44] = 0;
  }

  else
  {
    v7 = *(v0 + 24);
    v8 = &type metadata for Double;
  }

  v2[42] = v7;
  v2[45] = v8;
  v2[46] = 0x6574496C61746F74;
  v2[47] = 0xEA0000000000736DLL;
  if (*(v0 + 48))
  {
    v9 = 0;
    v10 = 0;
    v2[49] = 0;
    v2[50] = 0;
  }

  else
  {
    v9 = *(v0 + 40);
    v10 = &type metadata for Double;
  }

  v2[48] = v9;
  v2[51] = v10;
  v2[52] = 0x6953776F646E6977;
  v2[53] = 0xEA0000000000657ALL;
  if (*(v0 + 64))
  {
    v11 = 0;
    v12 = 0;
    v2[55] = 0;
    v2[56] = 0;
  }

  else
  {
    v11 = *(v0 + 56);
    v12 = &type metadata for Double;
  }

  v2[54] = v11;
  v2[57] = v12;
  sub_65694(v0, v14);
  return v2;
}

uint64_t sub_63F00()
{
  v1 = sub_506C(&qword_A3F98, qword_75450);
  v2 = sub_B1C0(v1);
  __chkstk_darwin(v2);
  v4 = &v20 - v3;
  sub_506C(&qword_A3FA0, qword_74FD0);
  v5 = swift_allocObject();
  sub_656E4(v5, xmmword_77300);
  sub_3039C();
  sub_4F008(v6, v7, v8, qword_75450);
  v9 = sub_73350();
  sub_6579C(v4);
  if (v10)
  {
    sub_10364(v4, &qword_A3F98, qword_75450);
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
  }

  else
  {
    *(v5 + 72) = v9;
    sub_5BAC((v5 + 48));
    sub_6578C();
    sub_3039C();
    v11();
  }

  *(v5 + 80) = 0x656369766564;
  *(v5 + 88) = 0xE600000000000000;
  started = type metadata accessor for WorkoutStartErrorWithCodeParameters(0);
  v13 = *(v0 + *(started + 20));
  if (v13)
  {
    v14 = sub_73360();
    v15 = v13;
  }

  else
  {
    v15 = 0;
    v14 = 0;
    *(v5 + 104) = 0;
    *(v5 + 112) = 0;
  }

  *(v5 + 96) = v15;
  *(v5 + 120) = v14;
  *(v5 + 128) = 0x646F43726F727265;
  *(v5 + 136) = 0xE900000000000065;
  v16 = (v0 + *(started + 24));
  if (v16[1])
  {
    v17 = 0;
    *(v5 + 152) = 0;
    *(v5 + 160) = 0;
    v18 = 0;
  }

  else
  {
    v18 = *v16;
    v17 = &type metadata for Double;
  }

  *(v5 + 144) = v18;
  *(v5 + 168) = v17;

  return v5;
}

uint64_t sub_640D4()
{
  v1 = sub_506C(&qword_A3F98, qword_75450);
  v2 = sub_B1C0(v1);
  v3 = __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v16 - v6;
  sub_506C(&qword_A3FA0, qword_74FD0);
  v8 = swift_allocObject();
  v9 = sub_656E4(v8, xmmword_77300);
  sub_4F008(v9, v7, &qword_A3F98, qword_75450);
  v10 = sub_73350();
  sub_6579C(v7);
  if (v11)
  {
    sub_10364(v7, &qword_A3F98, qword_75450);
    *(v8 + 48) = 0u;
    *(v8 + 64) = 0u;
  }

  else
  {
    *(v8 + 72) = v10;
    sub_5BAC((v8 + 48));
    sub_6578C();
    (*(v12 + 32))();
  }

  *(v8 + 80) = 0x6E456E65704F7369;
  *(v8 + 88) = 0xEB00000000646564;
  started = type metadata accessor for WorkoutStartUnsupportedSlotValueParameters(0);
  *(v8 + 96) = *(v0 + *(started + 20));
  *(v8 + 120) = &type metadata for Bool;
  *(v8 + 128) = 1953459315;
  *(v8 + 136) = 0xE400000000000000;
  sub_4F008(v0 + *(started + 24), v5, &qword_A3F98, qword_75450);
  sub_6579C(v5);
  if (v11)
  {
    sub_10364(v5, &qword_A3F98, qword_75450);
    *(v8 + 144) = 0u;
    *(v8 + 160) = 0u;
  }

  else
  {
    *(v8 + 168) = v10;
    sub_5BAC((v8 + 144));
    sub_6578C();
    (*(v14 + 32))();
  }

  return v8;
}

uint64_t sub_64300()
{
  v1 = sub_506C(&qword_A3F98, qword_75450);
  v2 = sub_B1C0(v1);
  __chkstk_darwin(v2);
  v4 = &v15 - v3;
  sub_506C(&qword_A3FA0, qword_74FD0);
  v5 = swift_allocObject();
  sub_656E4(v5, xmmword_7AC70);
  sub_3039C();
  sub_4F008(v6, v7, v8, qword_75450);
  v9 = sub_73350();
  sub_6579C(v4);
  if (v10)
  {
    sub_10364(v4, &qword_A3F98, qword_75450);
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
  }

  else
  {
    *(v5 + 72) = v9;
    sub_5BAC((v5 + 48));
    sub_6578C();
    sub_3039C();
    v11();
  }

  *(v5 + 80) = 0x5074737269467369;
  *(v5 + 88) = 0xEF70704179747261;
  started = type metadata accessor for WorkoutStartIntentHandledResponseParameters(0);
  *(v5 + 96) = *(v0 + started[5]);
  *(v5 + 120) = &type metadata for Bool;
  strcpy((v5 + 128), "isPunchingOut");
  *(v5 + 142) = -4864;
  *(v5 + 144) = *(v0 + started[6]);
  *(v5 + 168) = &type metadata for Bool;
  strcpy((v5 + 176), "isWatchHandoff");
  *(v5 + 191) = -18;
  v13 = *(v0 + started[7]);
  *(v5 + 216) = &type metadata for Bool;
  *(v5 + 192) = v13;
  return v5;
}

uint64_t sub_644D8()
{
  sub_7F1C();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  started = type metadata accessor for WorkoutStartErrorWithCodeParameters(0);
  v1[5] = started;
  sub_B1C0(started);
  v1[6] = swift_task_alloc();
  sub_7F10();

  return _swift_task_switch(v5);
}

uint64_t sub_64564()
{
  sub_303D0();
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[2];
  sub_73350();
  v4 = sub_657CC();
  sub_7CC4(v4, v5, v6, v7);
  *(v1 + *(v2 + 20)) = 0;
  v8 = v1 + *(v2 + 24);
  *v8 = 0;
  *(v8 + 8) = 1;
  v3(v1);
  v0[7] = sub_63F00();
  sub_3037C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v12 = v9;
  v10 = swift_task_alloc();
  v0[8] = v10;
  *v10 = v0;
  sub_30354(v10);

  return v12(0xD00000000000001ALL);
}

uint64_t sub_64670()
{
  sub_303D0();
  sub_3038C();
  v4 = v3;
  sub_7F04();
  *v5 = v4;
  v6 = *v2;
  sub_7F04();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_7F10();

  return _swift_task_switch(v8);
}

uint64_t sub_647A4()
{
  sub_7F1C();
  sub_65734();

  v0 = sub_303E8();

  return v1(v0);
}

uint64_t sub_64800()
{
  sub_7F1C();
  sub_65734();

  sub_657BC();

  return v0();
}

uint64_t sub_6485C()
{
  sub_7F1C();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 16) = v3;
  *(v1 + 88) = v4;
  started = type metadata accessor for WorkoutStartUnsupportedSlotValueParameters(0);
  *(v1 + 40) = started;
  sub_B1C0(started);
  *(v1 + 48) = swift_task_alloc();
  sub_7F10();

  return _swift_task_switch(v6);
}

uint64_t sub_648EC()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  v4 = *(v0 + 88);
  v5 = sub_73350();
  v6 = sub_657CC();
  sub_7CC4(v6, v7, v8, v5);
  sub_7CC4(v1 + *(v2 + 24), 1, 1, v5);
  *(v1 + *(v2 + 20)) = v4;
  v3(v1);
  *(v0 + 56) = sub_640D4();
  sub_3037C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v12 = v9;
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  sub_30354(v10);

  return v12(0xD000000000000021);
}

uint64_t sub_64A0C()
{
  sub_303D0();
  sub_3038C();
  v4 = v3;
  sub_7F04();
  *v5 = v4;
  v6 = *v2;
  sub_7F04();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_7F10();

  return _swift_task_switch(v8);
}

uint64_t sub_64B40()
{
  sub_7F1C();
  sub_65760();

  v0 = sub_303E8();

  return v1(v0);
}

uint64_t sub_64B9C()
{
  sub_7F1C();
  sub_65760();

  sub_657BC();

  return v0();
}

uint64_t sub_64BF8()
{
  sub_7F1C();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 16) = v3;
  *(v1 + 90) = v4;
  *(v1 + 89) = v5;
  *(v1 + 88) = v6;
  started = type metadata accessor for WorkoutStartIntentHandledResponseParameters(0);
  *(v1 + 40) = started;
  sub_B1C0(started);
  *(v1 + 48) = swift_task_alloc();
  sub_7F10();

  return _swift_task_switch(v8);
}

uint64_t sub_64C90()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  v4 = *(v0 + 90);
  v5 = *(v0 + 89);
  v6 = *(v0 + 88);
  sub_73350();
  v7 = sub_657CC();
  sub_7CC4(v7, v8, v9, v10);
  *(v1 + v2[5]) = v6;
  *(v1 + v2[6]) = v5;
  *(v1 + v2[7]) = v4;
  v3(v1);
  *(v0 + 56) = sub_64300();
  sub_3037C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v14 = v11;
  v12 = swift_task_alloc();
  *(v0 + 64) = v12;
  *v12 = v0;
  sub_30354(v12);

  return v14(0xD000000000000022);
}

uint64_t sub_64DB0()
{
  sub_303D0();
  sub_3038C();
  v4 = v3;
  sub_7F04();
  *v5 = v4;
  v6 = *v2;
  sub_7F04();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_7F10();

  return _swift_task_switch(v8);
}

uint64_t sub_64EE4()
{
  sub_7F1C();
  sub_65708();

  v0 = sub_303E8();

  return v1(v0);
}

uint64_t sub_64F40()
{
  sub_7F1C();
  sub_65708();

  sub_657BC();

  return v0();
}

uint64_t sub_64FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_73390();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = sub_506C(&qword_A3F90, &unk_74FC0);
  v8 = sub_B1C0(v7);
  __chkstk_darwin(v8);
  sub_4F008(a1, &v13 - v9, &qword_A3F90, &unk_74FC0);
  sub_3039C();
  v10();
  v11 = sub_73290();
  (*(v6 + 8))(a2, v5);
  sub_10364(a1, &qword_A3F90, &unk_74FC0);
  return v11;
}

uint64_t sub_651BC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1168C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_65248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_506C(&qword_A3F98, qword_75450);
  sub_117C4();
  if (*(v7 + 84) == a2)
  {

    return sub_5124(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    v10 = v9 - 1;
    if (v10 < 0)
    {
      v10 = -1;
    }

    return (v10 + 1);
  }
}

void sub_6531C()
{
  sub_657DC();
  sub_506C(&qword_A3F98, qword_75450);
  sub_117C4();
  if (*(v4 + 84) == v3)
  {
    v5 = sub_30368();

    sub_7CC4(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0;
  }
}

void sub_653E4(uint64_t a1)
{
  sub_2FDBC(319, &qword_A5828, &type metadata accessor for SpeakableString);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_65490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_506C(&qword_A3F98, qword_75450);
  sub_117C4();
  if (*(v7 + 84) == a2)
  {

    return sub_5124(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20));
    if (v9 >= 2)
    {
      return ((v9 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_65568()
{
  sub_657DC();
  sub_506C(&qword_A3F98, qword_75450);
  sub_117C4();
  if (*(v4 + 84) == v3)
  {
    v5 = sub_30368();

    sub_7CC4(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0 + 1;
  }
}

void sub_65600(uint64_t a1)
{
  sub_2FDBC(319, &qword_A5828, &type metadata accessor for SpeakableString);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_656E4(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 0x656D614E707061;
  a1[2].n128_u64[1] = 0xE700000000000000;
  return v2;
}

uint64_t sub_65708()
{
  v2 = *(v0 + 48);

  return sub_651BC(v2, type metadata accessor for WorkoutStartIntentHandledResponseParameters);
}

uint64_t sub_65734()
{
  v2 = *(v0 + 48);

  return sub_651BC(v2, type metadata accessor for WorkoutStartErrorWithCodeParameters);
}

uint64_t sub_65760()
{
  v2 = *(v0 + 48);

  return sub_651BC(v2, type metadata accessor for WorkoutStartUnsupportedSlotValueParameters);
}

uint64_t sub_657F0()
{
  v1 = v0;
  v2 = sub_72D60();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for TerminalElement.Period.second(_:))
  {
    return 6;
  }

  if (v6 == enum case for TerminalElement.Period.minute(_:))
  {
    return 7;
  }

  if (v6 == enum case for TerminalElement.Period.hour(_:))
  {
    return 8;
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

uint64_t type metadata accessor for HealthUnsupportedCATs(uint64_t a1)
{
  result = qword_A7DB0;
  if (!qword_A7DB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_65A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_73390();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_506C(&qword_A3F90, &unk_74FC0);
  __chkstk_darwin(v9 - 8);
  sub_1828C(a1, &v13 - v10);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_73290();
  (*(v6 + 8))(a2, v5);
  sub_2D9E0(a1);
  return v11;
}

void *sub_65BF4()
{
  sub_506C(&qword_A3FA0, qword_74FD0);
  v1 = swift_allocObject();
  v2 = v1;
  *(v1 + 16) = xmmword_772F0;
  *(v1 + 32) = 0x6E69577473726966;
  *(v1 + 40) = 0xEF657A6953776F64;
  if (*(v0 + 8))
  {
    v3 = 0;
    v4 = 0;
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  else
  {
    v3 = *v0;
    v4 = &type metadata for Double;
  }

  *(v1 + 48) = v3;
  *(v1 + 72) = v4;
  strcpy((v1 + 80), "isConclusion");
  *(v1 + 93) = 0;
  *(v1 + 94) = -5120;
  *(v1 + 96) = *(v0 + 9);
  *(v1 + 120) = &type metadata for Bool;
  strcpy((v1 + 128), "isFirstWindow");
  *(v1 + 142) = -4864;
  *(v1 + 144) = *(v0 + 10);
  *(v1 + 168) = &type metadata for Bool;
  strcpy((v1 + 176), "isLastWindow");
  *(v1 + 189) = 0;
  *(v1 + 190) = -5120;
  *(v1 + 192) = *(v0 + 11);
  *(v1 + 216) = &type metadata for Bool;
  *(v1 + 224) = 0xD000000000000016;
  *(v1 + 232) = 0x800000000007DDB0;
  *(v1 + 240) = *(v0 + 12);
  *(v1 + 264) = &type metadata for Bool;
  *(v1 + 272) = 0x736D657469;
  *(v1 + 280) = 0xE500000000000000;
  v5 = *(v0 + 16);
  v6 = sub_506C(&qword_A5998, &qword_77460);
  v2[36] = v5;
  v2[39] = v6;
  v2[40] = 0xD000000000000013;
  v2[41] = 0x800000000007DDD0;
  if (*(v0 + 32))
  {
    v7 = 0;
    v8 = 0;
    v2[43] = 0;
    v2[44] = 0;
  }

  else
  {
    v7 = *(v0 + 24);
    v8 = &type metadata for Double;
  }

  v2[42] = v7;
  v2[45] = v8;
  v2[46] = 0x6574496C61746F74;
  v2[47] = 0xEA0000000000736DLL;
  if (*(v0 + 48))
  {
    v9 = 0;
    v10 = 0;
    v2[49] = 0;
    v2[50] = 0;
  }

  else
  {
    v9 = *(v0 + 40);
    v10 = &type metadata for Double;
  }

  v2[48] = v9;
  v2[51] = v10;
  v2[52] = 0x6953776F646E6977;
  v2[53] = 0xEA0000000000657ALL;
  if (*(v0 + 64))
  {
    v11 = 0;
    v12 = 0;
    v2[55] = 0;
    v2[56] = 0;
  }

  else
  {
    v11 = *(v0 + 56);
    v12 = &type metadata for Double;
  }

  v2[54] = v11;
  v2[57] = v12;
  sub_67444(v0, v14);
  return v2;
}

uint64_t sub_65E6C()
{
  v1 = sub_506C(&qword_A3F98, qword_75450);
  sub_B1C0(v1);
  sub_303DC();
  __chkstk_darwin(v2);
  v4 = &v19 - v3;
  sub_506C(&qword_A3FA0, qword_74FD0);
  v5 = swift_allocObject();
  sub_302B0(v5, xmmword_77300);
  sub_3039C();
  sub_5AEC(v6, v7, v8, qword_75450);
  v9 = sub_73350();
  if (sub_5124(v4, 1, v9) == 1)
  {
    sub_5B50(v4, &qword_A3F98, qword_75450);
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
  }

  else
  {
    *(v5 + 72) = v9;
    sub_5BAC((v5 + 48));
    sub_5C0C();
    sub_3039C();
    v10();
  }

  *(v5 + 80) = 0x656369766564;
  *(v5 + 88) = 0xE600000000000000;
  v11 = type metadata accessor for WorkoutResumeErrorWithCodeParameters(0);
  v12 = *(v0 + *(v11 + 20));
  if (v12)
  {
    v13 = sub_73360();
    v14 = v12;
  }

  else
  {
    v14 = 0;
    v13 = 0;
    *(v5 + 104) = 0;
    *(v5 + 112) = 0;
  }

  *(v5 + 96) = v14;
  *(v5 + 120) = v13;
  *(v5 + 128) = 0x646F43726F727265;
  *(v5 + 136) = 0xE900000000000065;
  v15 = (v0 + *(v11 + 24));
  if (v15[1])
  {
    v16 = 0;
    *(v5 + 152) = 0;
    *(v5 + 160) = 0;
    v17 = 0;
  }

  else
  {
    v17 = *v15;
    v16 = &type metadata for Double;
  }

  *(v5 + 144) = v17;
  *(v5 + 168) = v16;

  return v5;
}

uint64_t sub_66050()
{
  v1 = v0;
  v2 = sub_506C(&qword_A3F98, qword_75450);
  sub_B1C0(v2);
  sub_303DC();
  __chkstk_darwin(v3);
  v5 = &v10 - v4;
  sub_506C(&qword_A3FA0, qword_74FD0);
  v6 = swift_allocObject();
  sub_302B0(v6, xmmword_74B40);
  sub_5AEC(v1, v5, &qword_A3F98, qword_75450);
  v7 = sub_73350();
  if (sub_5124(v5, 1, v7) == 1)
  {
    sub_5B50(v5, &qword_A3F98, qword_75450);
    *(v6 + 48) = 0u;
    *(v6 + 64) = 0u;
  }

  else
  {
    *(v6 + 72) = v7;
    sub_5BAC((v6 + 48));
    sub_5C0C();
    (*(v8 + 32))();
  }

  return v6;
}

uint64_t sub_66198()
{
  v1 = sub_506C(&qword_A3F98, qword_75450);
  sub_B1C0(v1);
  sub_303DC();
  __chkstk_darwin(v2);
  v4 = &v14 - v3;
  sub_506C(&qword_A3FA0, qword_74FD0);
  v5 = swift_allocObject();
  sub_302B0(v5, xmmword_77300);
  sub_3039C();
  sub_5AEC(v6, v7, v8, qword_75450);
  v9 = sub_73350();
  if (sub_5124(v4, 1, v9) == 1)
  {
    sub_5B50(v4, &qword_A3F98, qword_75450);
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
  }

  else
  {
    *(v5 + 72) = v9;
    sub_5BAC((v5 + 48));
    sub_5C0C();
    sub_3039C();
    v10();
  }

  *(v5 + 80) = 0x5074737269467369;
  *(v5 + 88) = 0xEF70704179747261;
  v11 = type metadata accessor for WorkoutResumeIntentHandledResponseParameters(0);
  *(v5 + 96) = *(v0 + *(v11 + 20));
  *(v5 + 120) = &type metadata for Bool;
  strcpy((v5 + 128), "isPunchingOut");
  *(v5 + 142) = -4864;
  v12 = *(v0 + *(v11 + 24));
  *(v5 + 168) = &type metadata for Bool;
  *(v5 + 144) = v12;
  return v5;
}

uint64_t sub_6634C()
{
  sub_7F1C();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for WorkoutResumeErrorWithCodeParameters(0);
  v1[5] = v4;
  sub_B1C0(v4);
  v1[6] = swift_task_alloc();
  sub_7F10();

  return _swift_task_switch(v5);
}

uint64_t sub_663D8()
{
  sub_303D0();
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[2];
  v4 = sub_73350();
  sub_303A8(v4, v5, v6, v4);
  *(v1 + *(v2 + 20)) = 0;
  v7 = v1 + *(v2 + 24);
  *v7 = 0;
  *(v7 + 8) = 1;
  v3(v1);
  v0[7] = sub_65E6C();
  sub_3037C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v11 = v8;
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  sub_30354(v9);

  return v11(0xD00000000000001BLL);
}

uint64_t sub_664E0()
{
  sub_303D0();
  sub_3038C();
  v4 = v3;
  sub_7F04();
  *v5 = v4;
  v6 = *v2;
  sub_7F04();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_7F10();

  return _swift_task_switch(v8);
}

uint64_t sub_66614()
{
  sub_7F1C();
  sub_674B8();

  v0 = sub_303E8();

  return v1(v0);
}

uint64_t sub_66670()
{
  sub_7F1C();
  sub_674B8();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_666D4()
{
  sub_7F1C();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for WorkoutResumeUnsupportedSlotValueParameters(0);
  sub_B1C0(v4);
  v1[5] = swift_task_alloc();
  sub_7F10();

  return _swift_task_switch(v5);
}

uint64_t sub_6675C()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = sub_73350();
  sub_303A8(v3, v4, v5, v3);
  v2(v1);
  v0[6] = sub_66050();
  sub_3037C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v9 = v6;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  sub_30354(v7);

  return v9(0xD000000000000022);
}

uint64_t sub_66844()
{
  sub_303D0();
  sub_3038C();
  v4 = v3;
  sub_7F04();
  *v5 = v4;
  v6 = *v2;
  sub_7F04();
  *v7 = v6;
  *(v4 + 64) = v0;

  if (!v0)
  {
    *(v4 + 72) = v1;
  }

  sub_7F10();

  return _swift_task_switch(v8);
}

uint64_t sub_66978()
{
  sub_7F1C();
  sub_6748C();

  v1 = *(v0 + 8);
  v2 = *(v0 + 72);

  return v1(v2);
}

uint64_t sub_669E0()
{
  sub_7F1C();
  sub_6748C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_66A44()
{
  sub_7F1C();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 16) = v3;
  *(v1 + 89) = v4;
  *(v1 + 88) = v5;
  v6 = type metadata accessor for WorkoutResumeIntentHandledResponseParameters(0);
  *(v1 + 40) = v6;
  sub_B1C0(v6);
  *(v1 + 48) = swift_task_alloc();
  sub_7F10();

  return _swift_task_switch(v7);
}

uint64_t sub_66AD8()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  v4 = *(v0 + 89);
  v5 = *(v0 + 88);
  v6 = sub_73350();
  sub_303A8(v6, v7, v8, v6);
  *(v1 + *(v2 + 20)) = v5;
  *(v1 + *(v2 + 24)) = v4;
  v3(v1);
  *(v0 + 56) = sub_66198();
  sub_3037C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v12 = v9;
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  sub_30354(v10);

  return v12(0xD000000000000023);
}

uint64_t sub_66BE4()
{
  sub_303D0();
  sub_3038C();
  v4 = v3;
  sub_7F04();
  *v5 = v4;
  v6 = *v2;
  sub_7F04();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_7F10();

  return _swift_task_switch(v8);
}

uint64_t sub_66D18()
{
  sub_7F1C();
  sub_674E4();

  v0 = sub_303E8();

  return v1(v0);
}

uint64_t sub_66D74()
{
  sub_7F1C();
  sub_674E4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_66E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_73390();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = sub_506C(&qword_A3F90, &unk_74FC0);
  sub_B1C0(v7);
  sub_303DC();
  __chkstk_darwin(v8);
  sub_5AEC(a1, &v13 - v9, &qword_A3F90, &unk_74FC0);
  sub_3039C();
  v10();
  v11 = sub_73290();
  (*(v6 + 8))(a2, v5);
  sub_5B50(a1, &qword_A3F90, &unk_74FC0);
  return v11;
}

uint64_t sub_66FF4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_5C0C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_67084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_506C(&qword_A3F98, qword_75450);
  sub_117C4();
  if (*(v7 + 84) == a2)
  {

    return sub_5124(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    v10 = v9 - 1;
    if (v10 < 0)
    {
      v10 = -1;
    }

    return (v10 + 1);
  }
}

void sub_67158(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_303C4();
  sub_506C(&qword_A3F98, qword_75450);
  sub_117C4();
  if (*(v8 + 84) == a3)
  {
    v9 = sub_30368();

    sub_7CC4(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 20)) = v4;
  }
}

uint64_t sub_6720C()
{
  sub_303C4();
  v2 = sub_506C(&qword_A3F98, qword_75450);

  return sub_5124(v1, v0, v2);
}

uint64_t sub_67270()
{
  sub_303C4();
  sub_506C(&qword_A3F98, qword_75450);
  v0 = sub_30368();

  return sub_7CC4(v0, v1, v2, v3);
}

uint64_t sub_672CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_506C(&qword_A3F98, qword_75450);
  sub_117C4();
  if (*(v7 + 84) == a2)
  {

    return sub_5124(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20));
    if (v9 >= 2)
    {
      return ((v9 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_673A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_303C4();
  sub_506C(&qword_A3F98, qword_75450);
  sub_117C4();
  if (*(v8 + 84) == a3)
  {
    v9 = sub_30368();

    sub_7CC4(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 20)) = v4 + 1;
  }
}

uint64_t sub_6748C()
{
  v2 = *(v0 + 40);

  return sub_66FF4(v2, type metadata accessor for WorkoutResumeUnsupportedSlotValueParameters);
}

uint64_t sub_674B8()
{
  v2 = *(v0 + 48);

  return sub_66FF4(v2, type metadata accessor for WorkoutResumeErrorWithCodeParameters);
}

uint64_t sub_674E4()
{
  v2 = *(v0 + 48);

  return sub_66FF4(v2, type metadata accessor for WorkoutResumeIntentHandledResponseParameters);
}

uint64_t sub_67510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_67564(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v162 = a8;
  v147 = a2;
  v160 = a9;
  v10 = sub_506C(&qword_A54E8, &qword_76BB0);
  __chkstk_darwin(v10 - 8);
  v148 = &v141 - v11;
  v156 = a10;
  v152 = *(a10 + 16);
  sub_72520();
  sub_D850(&qword_A4828, qword_75BA0);
  v161 = sub_73E80();
  sub_5394();
  v158 = v12;
  __chkstk_darwin(v13);
  v159 = &v141 - v14;
  v15 = sub_73720();
  sub_5394();
  v163 = v16;
  __chkstk_darwin(v17);
  sub_198CC();
  v155 = v18 - v19;
  sub_11658();
  __chkstk_darwin(v20);
  v153 = &v141 - v21;
  sub_11658();
  __chkstk_darwin(v22);
  v150 = &v141 - v23;
  sub_11658();
  __chkstk_darwin(v24);
  v154 = &v141 - v25;
  type metadata accessor for HealthNLIntent(0);
  sub_1168C();
  __chkstk_darwin(v26);
  sub_C2A4();
  v29 = v28 - v27;
  v30 = sub_72830();
  sub_5394();
  v32 = v31;
  __chkstk_darwin(v33);
  sub_C2A4();
  v36 = v35 - v34;
  v37 = sub_731D0();
  sub_5394();
  v39 = v38;
  __chkstk_darwin(v40);
  sub_198CC();
  v149 = v41 - v42;
  sub_11658();
  __chkstk_darwin(v43);
  v151 = &v141 - v44;
  sub_11658();
  __chkstk_darwin(v45);
  v47 = &v141 - v46;
  sub_727E0();
  if ((*(v32 + 88))(v36, v30) == enum case for Parse.NLv3IntentOnly(_:))
  {
    v157 = v15;
    (*(v32 + 96))(v36, v30);
    (*(v39 + 32))(v47, v36, v37);
    v48 = *(v39 + 16);
    v48(v29, v47, v37);
    v49 = v39;
    if (qword_A3930 != -1)
    {
      swift_once();
    }

    sub_68D38(&qword_A42E8, type metadata accessor for HealthNLIntent, &unk_7A328);
    sub_72E30();
    v50 = v157;
    v51 = v154;
    if (LOBYTE(v165[0]) == 3)
    {
      v154 = v47;
      v152 = v37;
      v52 = type metadata accessor for HealthFlowError();
      swift_allocObject();
      v53 = sub_B5BC(3);
      v54 = sub_736E0();
      sub_5F0B4(v54);
      v55 = v163;
      v56 = v153;
      (*(v163 + 16))(v153, v54, v50);

      v57 = sub_73710();
      v58 = sub_73980();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v155 = v49;
        v61 = v60;
        v62 = sub_14F88();
        v146 = v29;
        v63 = v62;
        v164[0] = v62;
        *v59 = 136315394;
        v64 = sub_73ED0();
        v66 = sub_19144(v64, v65, v164);

        *(v59 + 4) = v66;
        *(v59 + 12) = 2112;
        sub_68EAC();
        v69 = sub_68D38(v67, v68, &unk_7567C);
        sub_14F2C(v52, v69);
        *v70 = v53;

        v71 = _swift_stdlib_bridgeErrorToNSError();
        *(v59 + 14) = v71;
        *v61 = v71;
        _os_log_impl(&dword_0, v57, v58, "%s Error: %@", v59, 0x16u);
        sub_10364(v61, &qword_A4060, &qword_75440);
        v49 = v155;
        sub_7EBC(v61);
        sub_AE38(v63);
        v72 = v63;
        v29 = v146;
        sub_7EBC(v72);
        sub_7EBC(v59);

        (*(v55 + 8))(v153, v157);
      }

      else
      {

        (*(v55 + 8))(v56, v50);
      }

      sub_68EAC();
      v122 = sub_68D38(v120, v121, &unk_7567C);
      v123 = sub_14F2C(v52, v122);
      sub_68EDC(v123, v124);

      sub_68F1C();
      v125();

      v126 = sub_68F08();
      v127(v126);
      sub_BFD8(v29);
      return (*(v49 + 8))(v154, v152);
    }

    else
    {
      v142 = LOBYTE(v165[0]);
      v155 = v49;
      v146 = v29;
      v93 = sub_736E0();
      sub_5F0B4(v93);
      v94 = *(v163 + 16);
      v144 = v163 + 16;
      v143 = v94;
      v94(v51, v93, v50);
      v95 = v151;
      v145 = v48;
      v48(v151, v47, v37);
      v96 = sub_73710();
      v97 = sub_73970();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = sub_14F88();
        v141 = v93;
        v100 = v99;
        v164[0] = v99;
        *v98 = 136315138;
        sub_68EC4();
        sub_68D38(v101, v102, &protocol conformance descriptor for NLIntent);
        v103 = sub_73DA0();
        v104 = v95;
        v105 = v47;
        v106 = v37;
        v108 = v107;
        v153 = *(v155 + 8);
        (v153)(v104, v106);
        v109 = sub_19144(v103, v108, v164);
        v37 = v106;
        v47 = v105;

        *(v98 + 4) = v109;
        _os_log_impl(&dword_0, v96, v97, "Confirmation NL: %s", v98, 0xCu);
        sub_AE38(v100);
        sub_7EBC(v100);
        v110 = v98;
        v50 = v157;
        sub_7EBC(v110);
      }

      else
      {

        v153 = *(v155 + 8);
        (v153)(v95, v37);
      }

      v151 = *(v163 + 8);
      (v151)(v51, v50);
      v128 = v146;
      v129 = sub_33D50(v152, v152, *(v156 + 32));
      v130 = v47;
      v131 = v37;
      sub_72340();
      sub_1168C();
      v132 = (v158 + 8);
      if (v142)
      {
        v133 = sub_68F28();
        v134(v133);
        sub_68F50();
        v135 = v147;
      }

      else
      {
        v137 = sub_68F28();
        v138(v137);
        sub_68F50();
        v129 = v129;
      }

      v136 = v159;
      sub_72510();
      v139 = v161;
      swift_storeEnumTagMultiPayload();
      sub_68F1C();
      v140();

      (*v132)(v136, v139);
      sub_BFD8(v128);
      return (v153)(v130, v131);
    }
  }

  else
  {
    (*(v32 + 8))(v36, v30);
    v73 = type metadata accessor for HealthFlowError();
    swift_allocObject();
    v74 = sub_B5BC(0);
    v75 = sub_736E0();
    sub_5F0B4(v75);
    v76 = v163;
    v77 = v155;
    (*(v163 + 16))(v155, v75, v15);

    v78 = sub_73710();
    v79 = sub_73980();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v154 = v73;
      v81 = v80;
      v82 = swift_slowAlloc();
      v83 = sub_14F88();
      v164[0] = v83;
      *v81 = 136315394;
      v84 = sub_73ED0();
      v157 = v15;
      v86 = sub_19144(v84, v85, v164);

      *(v81 + 4) = v86;
      *(v81 + 12) = 2112;
      sub_68EAC();
      v89 = sub_68D38(v87, v88, &unk_7567C);
      sub_14F2C(v154, v89);
      *v90 = v74;

      v91 = _swift_stdlib_bridgeErrorToNSError();
      *(v81 + 14) = v91;
      *v82 = v91;
      _os_log_impl(&dword_0, v78, v79, "%s Error: %@", v81, 0x16u);
      sub_10364(v82, &qword_A4060, &qword_75440);
      sub_7EBC(v82);
      sub_AE38(v83);
      sub_7EBC(v83);
      v92 = v81;
      v73 = v154;
      sub_7EBC(v92);

      (*(v76 + 8))(v77, v157);
    }

    else
    {

      (*(v76 + 8))(v77, v15);
    }

    sub_68EAC();
    v113 = sub_68D38(v111, v112, &unk_7567C);
    v114 = sub_14F2C(v73, v113);
    sub_68EDC(v114, v115);

    sub_68F1C();
    v116();

    v117 = sub_68F08();
    return v118(v117);
  }
}