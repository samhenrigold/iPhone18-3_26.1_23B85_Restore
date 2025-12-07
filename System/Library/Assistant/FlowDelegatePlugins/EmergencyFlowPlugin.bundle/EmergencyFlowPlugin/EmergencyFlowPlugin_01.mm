uint64_t sub_1B39C()
{
  sub_EF64();
  v1[24] = v2;
  v1[25] = v0;
  v3 = sub_50B04();
  v1[26] = v3;
  v1[27] = *(v3 - 8);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();

  return _swift_task_switch(sub_1B464, 0, 0);
}

uint64_t sub_1B464(uint64_t a1)
{
  v44 = v2;
  v3 = *(v2 + 232);
  v4 = *(v2 + 208);
  v5 = *(v2 + 216);
  v6 = sub_50AE4();
  sub_56AC(v6, v2 + 144);
  v7 = *(v5 + 16);
  v7(v3, v6, v4);
  v8 = sub_50AF4();
  v9 = sub_50BD4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = sub_5718();
    sub_EEC8(v10);
    _os_log_impl(&dword_0, v8, v9, "#OfflineFlow execute", v1, 2u);
    sub_5674(v1);
  }

  v11 = *(v2 + 232);
  v12 = *(v2 + 208);
  v13 = *(v2 + 216);
  v14 = *(v2 + 200);

  v15 = *(v13 + 8);
  v15(v11, v12);
  v16 = *(v14 + 176);
  if (v16 >> 8 == 5)
  {
    v17 = *(v2 + 192);
    v18 = *(v2 + 200);
    sub_E9D0();
    v19 = swift_allocError();
    *v20 = 2;
    sub_1D68(v19, v18 + 16, (v18 + 56), v17);

    goto LABEL_7;
  }

  if (v16 >> 8 == 6)
  {
    sub_50194();
LABEL_7:

    v21 = *(v2 + 8);

    return v21();
  }

  v23 = *(v2 + 224);
  v24 = *(v2 + 208);
  sub_56AC(v6, v2 + 168);
  v7(v23, v6, v24);
  v25 = sub_50AF4();
  v26 = sub_50BD4();
  v27 = os_log_type_enabled(v25, v26);
  v28 = *(v2 + 224);
  v29 = *(v2 + 208);
  if (v27)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v43 = v31;
    *v30 = 136315394;
    *(v2 + 248) = v16;
    sub_2208(&qword_6C8C0, &qword_540E0);
    v32 = sub_50C14();
    v42 = v29;
    v34 = sub_4DE68(v32, v33, &v43);

    *(v30 + 4) = v34;
    *(v30 + 12) = 2080;
    *(v2 + 249) = BYTE1(v16);
    sub_2208(&qword_6C8C8, qword_52840);
    v35 = sub_50C14();
    v37 = sub_4DE68(v35, v36, &v43);

    *(v30 + 14) = v37;
    _os_log_impl(&dword_0, v25, v26, "#OfflineFlow needsExecution situation: %s, organization: %s", v30, 0x16u);
    swift_arrayDestroy();
    sub_5674(v31);
    sub_5674(v30);

    v38 = v28;
    v39 = v42;
  }

  else
  {

    v38 = v28;
    v39 = v29;
  }

  v15(v38, v39);
  v40 = *(v2 + 200);
  v41 = swift_task_alloc();
  *(v2 + 240) = v41;
  *v41 = v2;
  v41[1] = sub_1B81C;

  return sub_15100(v2 + 16, v40 + 136, v16, SBYTE1(v16));
}

uint64_t sub_1B81C()
{
  sub_EF64();
  v1 = *v0;
  sub_EF2C();
  *v2 = v1;

  return _swift_task_switch(sub_1B90C, 0, 0);
}

uint64_t sub_1B90C()
{
  sub_EF64();
  sub_1BA38((v0 + 16));
  sub_51C0(v0 + 16, &qword_6C050, &qword_51E00);
  sub_50184();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B9AC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for OfflineFlow();
  sub_1C1C4(&qword_6C8B8, v2, type metadata accessor for OfflineFlow, &unk_527E8);
  return sub_4FF14();
}

uint64_t sub_1BA38(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = a1[8];
  v31[1] = a1[9];
  v31[2] = v4;
  sub_50884();
  sub_569C();
  __chkstk_darwin(v5);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2208(&qword_6B998, qword_51850);
  __chkstk_darwin(v8 - 8);
  sub_5658();
  v11 = v9 - v10;
  __chkstk_darwin(v12);
  v14 = v31 - v13;
  v15 = sub_2208(&qword_6B988, &qword_530B0);
  __chkstk_darwin(v15 - 8);
  sub_5658();
  v18 = v16 - v17;
  __chkstk_darwin(v19);
  v21 = v31 - v20;
  v22 = sub_1FE8((v2 + 56), *(v2 + 80))[13];
  memcpy(v34, v3, 0x80uLL);
  v23 = sub_E51C(v34);
  v31[3] = v22;
  if (v23 == 1)
  {
    v24 = sub_50804();
    sub_28E0(v14, 1, 1, v24);

    v25 = 0;
  }

  else
  {
    v31[0] = v3;

    v3 = v31[0];
    sub_50B74();
    v26 = sub_50804();
    sub_28E0(v14, 0, 1, v26);
    v25 = sub_50B84();
  }

  memcpy(v33, v3, sizeof(v33));
  if (sub_E51C(v33) == 1)
  {
    v27 = 1;
  }

  else
  {
    sub_50B74();
    v27 = 0;
  }

  v28 = sub_50804();
  sub_28E0(v11, v27, 1, v28);
  sub_A6C0(v14, v25, v11);

  sub_51C0(v11, &qword_6B998, qword_51850);
  sub_51C0(v14, &qword_6B998, qword_51850);
  sub_234C(v21, v18);
  sub_23BC(v2 + 16, &v32);
  sub_50874();
  sub_1C1C4(&qword_6B990, 255, &type metadata accessor for OutputFlow, &protocol conformance descriptor for OutputFlow);
  v29 = sub_4FF04();
  sub_EC1C(v7, &type metadata accessor for OutputFlow);
  sub_51C0(v21, &qword_6B988, &qword_530B0);
  return v29;
}

void *sub_1BDE4()
{
  sub_253C(v0 + 2);
  sub_253C(v0 + 7);
  sub_55C8((v0 + 12));
  sub_253C(v0 + 17);
  return v0;
}

uint64_t sub_1BE1C()
{
  sub_1BDE4();

  return _swift_deallocClassInstance(v0, 178, 7);
}

uint64_t getEnumTagSinglePayload for OfflineFlow.OfflineFlowState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA)
  {
    v2 = a2 + 65286;
    if (a2 + 65286 <= 0xFFFEFFFF)
    {
      v3 = 2;
    }

    else
    {
      v3 = 4;
    }

    if (v2 < 0xFF0000)
    {
      v3 = 1;
    }

    if (v2 >= 0x10000)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = *(a1 + 2);
        if (!*(a1 + 2))
        {
          break;
        }

        return (*a1 | (v5 << 16)) - 65286;
      case 2:
        v5 = a1[1];
        if (a1[1])
        {
          return (*a1 | (v5 << 16)) - 65286;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x1BF40);
      case 4:
        v5 = *(a1 + 1);
        if (!v5)
        {
          break;
        }

        return (*a1 | (v5 << 16)) - 65286;
      default:
        break;
    }
  }

  v7 = *(a1 + 1);
  if (v7 <= 4)
  {
    v8 = 4;
  }

  else
  {
    v8 = *(a1 + 1);
  }

  v9 = v8 - 4;
  if (v7 >= 4)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10 >= 3)
  {
    return v10 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for OfflineFlow.OfflineFlowState(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 65286;
  if (a3 + 65286 <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFA)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xF9)
  {
    v7 = ((a2 - 250) >> 16) + 1;
    *result = a2 - 250;
    switch(v6)
    {
      case 1:
        *(result + 2) = v7;
        break;
      case 2:
        *(result + 2) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        JUMPOUT(0x1C028);
      case 4:
        *(result + 2) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 2) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *(result + 1) = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C050(uint64_t a1)
{
  v1 = *(a1 + 1);
  if (v1 <= 4)
  {
    v2 = 4;
  }

  else
  {
    v2 = *(a1 + 1);
  }

  v3 = v2 - 4;
  if (v1 >= 4)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C070(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFB)
  {
    *result = a2 - 252;
  }

  else if (a2)
  {
    *(result + 1) = a2 + 4;
  }

  return result;
}

uint64_t sub_1C0F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_CD54;

  return sub_1B39C();
}

uint64_t sub_1C18C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for OfflineFlow();

  return sub_4FF64();
}

uint64_t sub_1C1C4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1C20C(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t type metadata accessor for CommonModernCATs(uint64_t a1)
{
  result = qword_6C8D8;
  if (!qword_6C8D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C2C0(uint64_t a1)
{
  result = sub_50864();
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

uint64_t sub_1C3B0(uint64_t a1, void *a2)
{
  v5 = sub_50864();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2208(&unk_6D680, &qword_515B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  *(v2 + qword_6C8D0) = a2;
  v12 = *(v6 + 16);
  v12(v2 + qword_6DE68, a1, v5);
  v13 = sub_4FD64();
  sub_28E0(v11, 1, 1, v13);
  v12(v8, a1, v5);
  v14 = a2;
  v15 = sub_50814();
  (*(v6 + 8))(a1, v5);
  return v15;
}

uint64_t sub_1C5B8()
{
  v1 = qword_6DE68;
  sub_50864();
  sub_327C();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

uint64_t sub_1C624()
{
  v0 = sub_50834();

  v1 = qword_6DE68;
  sub_50864();
  sub_327C();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_1C690()
{
  v0 = sub_1C624();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for SexualAssaultModernCATs(uint64_t a1)
{
  result = qword_6C928;
  if (!qword_6C928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C7CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_50864();
  sub_8F38();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2208(&unk_6D680, &qword_515B0);
  __chkstk_darwin(v11 - 8);
  sub_8E60(a1, &v15 - v12);
  (*(v7 + 16))(v10, a2, v3);
  v13 = sub_50814();
  (*(v7 + 8))(a2, v3);
  sub_8ED0(a1);
  return v13;
}

uint64_t sub_1C928(uint64_t a1, uint64_t a2)
{
  sub_50864();
  sub_8F38();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_50824();
  (*(v5 + 8))(a2, v2);
  return v9;
}

uint64_t type metadata accessor for DomesticViolenceCATs(uint64_t a1)
{
  result = qword_6C978;
  if (!qword_6C978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CABC(uint64_t a1, char a2)
{
  v4 = sub_2208(&qword_6B998, qword_51850);
  sub_72B0(v4);
  sub_72A4();
  __chkstk_darwin(v5);
  v7 = &v12 - v6;
  sub_2208(&qword_6BBC8, &unk_518B0);
  v8 = swift_allocObject();
  sub_7260(v8, xmmword_517A0);
  sub_71A0(a1, v7, &qword_6B998, qword_51850);
  v9 = sub_50804();
  if (sub_513C(v7, 1, v9) == 1)
  {
    sub_7204(v7, &qword_6B998, qword_51850);
    *(v8 + 48) = 0u;
    *(v8 + 64) = 0u;
  }

  else
  {
    *(v8 + 72) = v9;
    sub_530C((v8 + 48));
    sub_7298();
    (*(v10 + 32))();
  }

  *(v8 + 80) = 0xD000000000000012;
  *(v8 + 88) = 0x8000000000054BF0;
  *(v8 + 120) = &type metadata for Bool;
  *(v8 + 96) = a2 & 1;
  sub_50794();
}

uint64_t sub_1CC68(uint64_t a1)
{
  v3 = sub_2208(&qword_6B998, qword_51850);
  sub_72B0(v3);
  sub_72A4();
  __chkstk_darwin(v4);
  sub_7C2C();
  sub_2208(&qword_6BBC8, &unk_518B0);
  v5 = swift_allocObject();
  sub_7BAC(v5, xmmword_51780);
  v6 = sub_50804();
  sub_7BF4(v6);
  if (v7)
  {
    sub_7204(v1, &qword_6B998, qword_51850);
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
  }

  else
  {
    *(v5 + 72) = a1;
    sub_530C((v5 + 48));
    sub_7298();
    (*(v8 + 32))();
  }

  sub_7C1C();
  sub_50794();
}

uint64_t sub_1CDAC(uint64_t a1)
{
  v3 = sub_2208(&qword_6B998, qword_51850);
  sub_72B0(v3);
  sub_72A4();
  __chkstk_darwin(v4);
  sub_7C2C();
  sub_2208(&qword_6BBC8, &unk_518B0);
  v5 = swift_allocObject();
  sub_7260(v5, xmmword_51780);
  sub_71A0(a1, v1, &qword_6B998, qword_51850);
  v6 = sub_50804();
  sub_7BF4(v6);
  if (v7)
  {
    sub_7204(v1, &qword_6B998, qword_51850);
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
  }

  else
  {
    *(v5 + 72) = a1;
    sub_530C((v5 + 48));
    sub_7298();
    (*(v8 + 32))();
  }

  sub_7C1C();
  sub_50794();
}

uint64_t sub_1CF04(uint64_t a1)
{
  v3 = sub_2208(&qword_6B998, qword_51850);
  sub_72B0(v3);
  sub_72A4();
  __chkstk_darwin(v4);
  sub_7C2C();
  sub_2208(&qword_6BBC8, &unk_518B0);
  v5 = swift_allocObject();
  sub_7BAC(v5, xmmword_51780);
  v6 = sub_50804();
  sub_7BF4(v6);
  if (v7)
  {
    sub_7204(v1, &qword_6B998, qword_51850);
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
  }

  else
  {
    *(v5 + 72) = a1;
    sub_530C((v5 + 48));
    sub_7298();
    (*(v8 + 32))();
  }

  sub_7C1C();
  sub_50794();
}

uint64_t sub_1D0C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_50864();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2208(&unk_6D680, &qword_515B0);
  sub_72B0(v9);
  sub_72A4();
  __chkstk_darwin(v10);
  sub_71A0(a1, &v14 - v11, &unk_6D680, &qword_515B0);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_50784();
  (*(v6 + 8))(a2, v5);
  sub_7204(a1, &unk_6D680, &qword_515B0);
  return v12;
}

uint64_t sub_1D300()
{
  v1 = v0;
  v2 = type metadata accessor for RedirectToCompanionFlow.State(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_50B04();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_50AE4();
  swift_beginAccess();
  (*(v6 + 16))(v8, v9, v5);

  v10 = sub_50AF4();
  v11 = sub_50BD4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136315138;
    v14 = OBJC_IVAR____TtC19EmergencyFlowPlugin23RedirectToCompanionFlow_state;
    swift_beginAccess();
    sub_1F764(v1 + v14, v4);
    v15 = sub_1EE64();
    v17 = v16;
    sub_1F7C8(v4);
    v18 = sub_4DE68(v15, v17, &v21);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_0, v10, v11, "#RedirectToCompanionFlow state: %s", v12, 0xCu);
    sub_253C(v13);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1D568(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19EmergencyFlowPlugin23RedirectToCompanionFlow_state;
  swift_beginAccess();
  sub_1F968(a1, v1 + v3);
  swift_endAccess();
  sub_1D300();
  return sub_1F7C8(a1);
}

BOOL sub_1D5D4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for RedirectToCompanionFlow.State(0);
  v5 = sub_72B0(v4);
  v6 = __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v29 - v9;
  v11 = sub_50B04();
  sub_8558();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_5630();
  v17 = v16 - v15;
  v18 = sub_50AE4();
  sub_56AC(v18, v32);
  (*(v13 + 16))(v17, v18, v11);
  v19 = sub_50AF4();
  v20 = sub_50BD4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v30 = a1;
    v22 = v21;
    v23 = swift_slowAlloc();
    v31[0] = v23;
    *v22 = 136315394;
    *(v22 + 4) = sub_4DE68(0xD00000000000007DLL, 0x8000000000055680, v31);
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_4DE68(0x7475706E69286E6FLL, 0xEA0000000000293ALL, v31);
    _os_log_impl(&dword_0, v19, v20, "%s:%s", v22, 0x16u);
    swift_arrayDestroy();
    sub_5674(v23);
    v24 = v22;
    a1 = v30;
    sub_5674(v24);
  }

  (*(v13 + 8))(v17, v11);
  v25 = OBJC_IVAR____TtC19EmergencyFlowPlugin23RedirectToCompanionFlow_state;
  sub_56AC(v2 + OBJC_IVAR____TtC19EmergencyFlowPlugin23RedirectToCompanionFlow_state, v31);
  sub_1F764(v2 + v25, v10);
  v26 = sub_502E4();
  v27 = sub_513C(v10, 4, v26);
  if (v27 == 1)
  {
    (*(*(v26 - 8) + 16))(v8, a1, v26);
    sub_28E0(v8, 0, 4, v26);
    sub_1D568(v8);
  }

  else
  {
    sub_1F7C8(v10);
  }

  return v27 == 1;
}

uint64_t sub_1D8D4()
{
  sub_EF64();
  v1[20] = v2;
  v1[21] = v0;
  v3 = sub_502C4();
  v1[22] = v3;
  sub_1F9CC(v3);
  v1[23] = v4;
  v1[24] = sub_1F9DC();
  v5 = sub_2208(&qword_6CBF0, &qword_52AE8);
  sub_72B0(v5);
  v1[25] = sub_1F9DC();
  v6 = sub_4FE34();
  v1[26] = v6;
  sub_1F9CC(v6);
  v1[27] = v7;
  v1[28] = sub_1F9DC();
  v8 = sub_4FE14();
  v1[29] = v8;
  sub_1F9CC(v8);
  v1[30] = v9;
  v1[31] = sub_1F9DC();
  v10 = sub_502B4();
  v1[32] = v10;
  sub_1F9CC(v10);
  v1[33] = v11;
  v1[34] = sub_1F9DC();
  v12 = sub_4FF84();
  v1[35] = v12;
  sub_1F9CC(v12);
  v1[36] = v13;
  v1[37] = sub_1F9DC();
  v14 = type metadata accessor for RedirectToCompanionFlow.State(0);
  sub_72B0(v14);
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v15 = sub_502E4();
  v1[40] = v15;
  sub_1F9CC(v15);
  v1[41] = v16;
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v17 = sub_50B04();
  v1[44] = v17;
  sub_1F9CC(v17);
  v1[45] = v18;
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();

  return _swift_task_switch(sub_1DBE8, 0, 0);
}

uint64_t sub_1DBE8(uint64_t a1)
{
  v83 = v1;
  v2 = v1[49];
  v4 = v1[44];
  v3 = v1[45];
  v5 = sub_50AE4();
  sub_56AC(v5, (v1 + 2));
  v80 = *(v3 + 16);
  v80(v2, v5, v4);
  v6 = sub_50AF4();
  v7 = sub_50BD4();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[49];
  v10 = v1[44];
  v11 = v1[45];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v82[0] = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_4DE68(0xD00000000000007DLL, 0x8000000000055680, v82);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_4DE68(0x2865747563657865, 0xE900000000000029, v82);
    _os_log_impl(&dword_0, v6, v7, "%s:%s", v12, 0x16u);
    swift_arrayDestroy();
    sub_5674(v13);
    sub_5674(v12);
  }

  v79 = *(v11 + 8);
  v79(v9, v10);
  v15 = v1[39];
  v14 = v1[40];
  v16 = v1[21];
  v17 = OBJC_IVAR____TtC19EmergencyFlowPlugin23RedirectToCompanionFlow_state;
  sub_56AC(v16 + OBJC_IVAR____TtC19EmergencyFlowPlugin23RedirectToCompanionFlow_state, (v1 + 5));
  sub_1F764(v16 + v17, v15);
  v18 = sub_513C(v15, 4, v14);
  if (v18)
  {
    if (v18 == 4)
    {
      v20 = v1[36];
      v19 = v1[37];
      v21 = v1[35];
      (*(v20 + 104))(v19, enum case for FlowUnhandledReason.needsServerExecution(_:), v21);
      sub_501B4();
      (*(v20 + 8))(v19, v21);
    }

    else
    {
      v63 = v1[39];
      sub_50194();
      sub_1F7C8(v63);
    }
  }

  else
  {
    v22 = v1[48];
    v23 = v1[43];
    v77 = v1[44];
    v24 = v1[41];
    v25 = v1[42];
    v26 = v1[40];
    v27 = v1[38];
    (*(v24 + 32))(v25, v1[39], v26);
    v71 = *(v24 + 16);
    v71(v23, v25, v26);
    sub_28E0(v27, 2, 4, v26);
    sub_1D568(v27);
    v74 = *(v24 + 8);
    v74(v25, v26);
    sub_56AC(v5, (v1 + 8));
    v75 = v5;
    v80(v22, v5, v77);
    v28 = sub_50AF4();
    v29 = sub_50BD4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_0, v28, v29, "get the supported companions", v30, 2u);
      sub_5674(v30);
    }

    v31 = v1[48];
    v32 = v1[44];
    v34 = v1[33];
    v33 = v1[34];
    v35 = v1[32];
    v36 = v1[30];
    v66 = v1[31];
    v67 = v1[29];
    v68 = v1[47];
    v37 = v1[25];

    v79(v31, v32);
    sub_4FEA4();
    (*(v34 + 104))(v33, enum case for CompanionDeviceInfoRequirement.supportsPeerToPeerHandoff(_:), v35);
    sub_4FE94();
    (*(v34 + 8))(v33, v35);
    v38 = type metadata accessor for SimpleHandoffStrategy();
    v39 = swift_allocObject();
    v82[3] = v38;
    v82[4] = sub_1F6E8(&qword_6CBF8, v40, type metadata accessor for SimpleHandoffStrategy, &unk_529F0);
    v82[0] = v39;

    sub_4FE04();
    (*(v36 + 16))(v37, v66, v67);
    sub_28E0(v37, 0, 1, v67);
    sub_4FDF4();
    sub_4FE24();
    sub_56AC(v75, (v1 + 11));
    v80(v68, v75, v32);
    v41 = sub_50AF4();
    v42 = sub_50BD4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_0, v41, v42, "going into executeOnRemoteFlow", v43, 2u);
      sub_5674(v43);
    }

    v44 = v1[47];
    v45 = v1[44];
    v46 = v1[42];
    v47 = v1[43];
    v48 = v1[40];
    v69 = v1[46];
    v49 = v41;
    v51 = v1[23];
    v50 = v1[24];
    v52 = v1[22];

    v79(v44, v45);
    v71(v46, v47, v48);
    (*(v51 + 104))(v50, enum case for ExecuteOnRemoteDeviceSpecification.userCompanion(_:), v52);
    sub_502A4();
    sub_4FDD4();
    swift_allocObject();
    v1[17] = sub_4FDC4();
    sub_2208(&qword_6CC00, &qword_52AF0);
    v53 = sub_4FEF4();
    sub_1F9CC(v53);
    *(swift_allocObject() + 16) = xmmword_517A0;
    sub_4FED4();
    sub_4FEE4();
    v54 = sub_4FDB4();

    v1[18] = v54;
    sub_4FEC4();
    v73 = sub_4FF44();

    sub_56AC(v75, (v1 + 14));
    v80(v69, v75, v45);
    v55 = sub_50AF4();
    v56 = sub_50BD4();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_0, v55, v56, "finished creating the executeOnRemoteFlow", v57, 2u);
      sub_5674(v57);
    }

    v58 = v1[46];
    v59 = v1[44];
    v81 = v1[43];
    v60 = v1[30];
    v76 = v1[31];
    v78 = v1[40];
    v70 = v1[28];
    v72 = v1[29];
    v62 = v1[26];
    v61 = v1[27];

    v79(v58, v59);
    v1[19] = v73;

    sub_2208(&qword_6CC08, &qword_52AF8);
    sub_1F82C();
    sub_50164();

    (*(v61 + 8))(v70, v62);
    (*(v60 + 8))(v76, v72);
    v74(v81, v78);
  }

  v64 = v1[1];

  return v64();
}

uint64_t sub_1E578(uint64_t a1, uint64_t a2)
{
  v77 = a2;
  v3 = sub_50B04();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v74 = &v68 - v9;
  __chkstk_darwin(v8);
  v73 = &v68 - v10;
  v78 = sub_4FDE4();
  v11 = *(v78 - 8);
  v12 = __chkstk_darwin(v78);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v68 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = (&v68 - v19);
  __chkstk_darwin(v18);
  v22 = &v68 - v21;
  v23 = sub_2208(&qword_6CC18, &qword_52B00);
  __chkstk_darwin(v23 - 8);
  v25 = &v68 - v24;
  v26 = type metadata accessor for RedirectToCompanionFlow.State(0);
  v27 = __chkstk_darwin(v26 - 8);
  v76 = &v68 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v75 = &v68 - v29;
  sub_1F890(a1, v25);
  v30 = sub_2208(&qword_6CC20, &qword_52B08);
  if (sub_513C(v25, 1, v30) == 1)
  {
    v31 = sub_50AE4();
    swift_beginAccess();
    (*(v4 + 16))(v7, v31, v3);
    v32 = sub_50AF4();
    v33 = sub_50BE4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_0, v32, v33, "ExecuteOnRemote guard flows failed, assuming a server redirect or handoff should have happened, doing nothing.", v34, 2u);
    }

    (*(v4 + 8))(v7, v3);
    v35 = sub_502E4();
    v36 = v75;
    sub_28E0(v75, 3, 4, v35);
    sub_1F900(v25);
  }

  else
  {
    v37 = v78;
    (*(v11 + 32))(v22, v25, v78);
    v38 = *(v11 + 16);
    v38(v20, v22, v37);
    if ((*(v11 + 88))(v20, v37) == enum case for ExecuteOnRemoteFlowResult.remoteFlowFailure(_:))
    {
      v72 = v22;
      (*(v11 + 96))(v20, v78);
      v39 = *v20;
      v40 = sub_50AE4();
      swift_beginAccess();
      v41 = v73;
      v42 = v3;
      (*(v4 + 16))(v73, v40, v3);
      swift_errorRetain();
      v43 = sub_50AF4();
      v44 = sub_50BE4();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v79 = v39;
        v80 = v46;
        *v45 = 136315138;
        swift_errorRetain();
        sub_2208(&qword_6B980, qword_52B10);
        v47 = sub_50B64();
        v71 = v42;
        v49 = sub_4DE68(v47, v48, &v80);

        *(v45 + 4) = v49;
        _os_log_impl(&dword_0, v43, v44, "ExecuteOnRemote failed with an error=%s: Possible server redirect. Will redirect this input to server as a fallback.", v45, 0xCu);
        sub_253C(v46);

        (*(v4 + 8))(v41, v71);
      }

      else
      {

        (*(v4 + 8))(v41, v3);
      }

      (*(v11 + 8))(v72, v78);
      v64 = sub_502E4();
      v36 = v75;
      sub_28E0(v75, 4, 4, v64);
    }

    else
    {
      v73 = v14;
      v50 = sub_50AE4();
      swift_beginAccess();
      v51 = *(v4 + 16);
      v71 = v3;
      v51(v74, v50, v3);
      v38(v17, v22, v78);
      v52 = sub_50AF4();
      v53 = sub_50BE4();
      v54 = v22;
      if (os_log_type_enabled(v52, v53))
      {
        v55 = swift_slowAlloc();
        v68 = v55;
        v70 = swift_slowAlloc();
        v80 = v70;
        *v55 = 136315138;
        v69 = v53;
        v56 = v78;
        v38(v73, v17, v78);
        v57 = sub_50B64();
        v72 = v54;
        v59 = v58;
        v60 = *(v11 + 8);
        v60(v17, v56);
        v61 = sub_4DE68(v57, v59, &v80);

        v62 = v68;
        *(v68 + 1) = v61;
        _os_log_impl(&dword_0, v52, v69, "ExecuteOnRemote flow completed with: %s", v62, 0xCu);
        sub_253C(v70);

        (*(v4 + 8))(v74, v71);
        v63 = v72;
      }

      else
      {

        v60 = *(v11 + 8);
        v56 = v78;
        v60(v17, v78);
        (*(v4 + 8))(v74, v71);
        v63 = v54;
      }

      v60(v63, v56);
      v65 = sub_502E4();
      v36 = v75;
      sub_28E0(v75, 3, 4, v65);
      v60(v20, v78);
    }
  }

  v66 = v76;
  sub_1F764(v36, v76);
  sub_1D568(v66);
  return sub_1F7C8(v36);
}

uint64_t sub_1EDD0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RedirectToCompanionFlow(0);
  sub_1F6E8(&qword_6CBE0, 255, type metadata accessor for RedirectToCompanionFlow, &unk_52A28);
  return sub_4FF14();
}

unint64_t sub_1EE64()
{
  v1 = sub_502E4();
  sub_8558();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_5630();
  v7 = v6 - v5;
  v8 = type metadata accessor for RedirectToCompanionFlow.State(0);
  v9 = sub_72B0(v8);
  __chkstk_darwin(v9);
  sub_5630();
  v12 = v11 - v10;
  sub_1F764(v0, v11 - v10);
  v13 = 0x6E696765622ELL;
  switch(sub_513C(v12, 4, v1))
  {
    case 1u:
      return v13;
    case 2u:
      v13 = 0x676E696E6E75722ELL;
      break;
    case 3u:
      v13 = 0x74656C706D6F632ELL;
      break;
    case 4u:
      v13 = 0xD000000000000011;
      break;
    default:
      (*(v3 + 32))(v7, v12, v1);
      sub_50C64(18);

      sub_1F6E8(&qword_6C078, 255, &type metadata accessor for Input, &protocol conformance descriptor for Input);
      v15._countAndFlagsBits = sub_50CD4();
      sub_50BA4(v15);

      v16._countAndFlagsBits = 41;
      v16._object = 0xE100000000000000;
      sub_50BA4(v16);
      v13 = 0x65527475706E692ELL;
      (*(v3 + 8))(v7, v1);
      break;
  }

  return v13;
}

uint64_t sub_1F0D8()
{
  sub_1F7C8(v0 + OBJC_IVAR____TtC19EmergencyFlowPlugin23RedirectToCompanionFlow_state);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1F164(uint64_t a1)
{
  result = type metadata accessor for RedirectToCompanionFlow.State(319);
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

uint64_t (*sub_1F25C(uint64_t *a1))()
{
  v2 = sub_1F730(0x28uLL);
  *a1 = v2;
  v2[4] = sub_50694();
  return sub_1F2D4;
}

void sub_1F2D4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1F368()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_CD54;

  return sub_1D8D4();
}

uint64_t sub_1F404(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RedirectToCompanionFlow(0);

  return sub_4FF64();
}

uint64_t sub_1F488(uint64_t a1, uint64_t a2)
{
  v4 = sub_502E4();
  v5 = sub_513C(a1, a2, v4);
  if (v5 >= 5)
  {
    return v5 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1F4E4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 4);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_502E4();

  return sub_28E0(a1, v5, a3, v6);
}

uint64_t sub_1F544(uint64_t a1)
{
  v1 = sub_502E4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_1F59C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_CD54;

  return HandoffSessionToCompanionFlowStrategyAsync.makeHandoffResponse()(a1, a2, a3);
}

uint64_t sub_1F6E8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void *sub_1F730(size_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_1F764(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RedirectToCompanionFlow.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1F7C8(uint64_t a1)
{
  v2 = type metadata accessor for RedirectToCompanionFlow.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1F82C()
{
  result = qword_6CC10;
  if (!qword_6CC10)
  {
    sub_5218(&qword_6CC08, &qword_52AF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6CC10);
  }

  return result;
}

uint64_t sub_1F890(uint64_t a1, uint64_t a2)
{
  v4 = sub_2208(&qword_6CC18, &qword_52B00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1F900(uint64_t a1)
{
  v2 = sub_2208(&qword_6CC18, &qword_52B00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1F968(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RedirectToCompanionFlow.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1F9DC()
{

  return swift_task_alloc();
}

uint64_t type metadata accessor for EmergencyPoisonControlBasicIntentModernCATs(uint64_t a1)
{
  result = qword_6CC28;
  if (!qword_6CC28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1FAD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_50864();
  sub_8F38();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2208(&unk_6D680, &qword_515B0);
  __chkstk_darwin(v11 - 8);
  sub_8E60(a1, &v15 - v12);
  (*(v7 + 16))(v10, a2, v3);
  v13 = sub_50814();
  (*(v7 + 8))(a2, v3);
  sub_8ED0(a1);
  return v13;
}

uint64_t sub_1FC30(uint64_t a1, uint64_t a2)
{
  sub_50864();
  sub_8F38();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_50824();
  (*(v5 + 8))(a2, v2);
  return v9;
}

void sub_1FD38()
{
  sub_13C8C();
  v167 = v0;
  sub_24780();
  v173 = sub_50324();
  sub_8558();
  v172 = v1;
  __chkstk_darwin(v2);
  sub_1A3A0();
  v4 = sub_EE14(v3);
  v5 = type metadata accessor for EmergencyNLIntent(v4);
  v6 = sub_72B0(v5);
  __chkstk_darwin(v6);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v7);
  sub_13C5C();
  sub_EE14(v8);
  v178 = sub_50654();
  sub_8558();
  v177 = v9;
  __chkstk_darwin(v10);
  sub_1A3A0();
  sub_EE14(v11);
  v12 = sub_503A4();
  v13 = sub_72B0(v12);
  __chkstk_darwin(v13);
  sub_1A3A0();
  sub_EE14(v14);
  v15 = sub_50A24();
  v16 = sub_72B0(v15);
  __chkstk_darwin(v16);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v17);
  sub_13C5C();
  sub_EE14(v18);
  v165 = sub_50354();
  sub_8558();
  v164 = v19;
  __chkstk_darwin(v20);
  sub_1A3A0();
  sub_EE14(v21);
  sub_50334();
  sub_8558();
  v181 = v23;
  v182 = v22;
  __chkstk_darwin(v22);
  sub_1A3A0();
  sub_EE14(v24);
  v25 = sub_502E4();
  sub_8558();
  v27 = v26;
  __chkstk_darwin(v28);
  sub_5630();
  v31 = v30 - v29;
  v32 = sub_50B04();
  sub_8558();
  v34 = v33;
  __chkstk_darwin(v35);
  sub_5658();
  v38 = v36 - v37;
  __chkstk_darwin(v39);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v40);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v41);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v42);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v43);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v44);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v45);
  v47 = v161 - v46;
  v48 = sub_50AE4();
  sub_2970();
  swift_beginAccess();
  v184 = v34;
  v49 = v34[2];
  v179 = v34 + 2;
  v180 = v48;
  v183 = v49;
  (v49)(v47, v48, v32);
  v50 = *(v27 + 16);
  v174 = v0;
  v50(v31, v0, v25);
  v51 = sub_50AF4();
  v52 = sub_50BD4();
  v53 = os_log_type_enabled(v51, v52);
  v168 = v38;
  if (v53)
  {
    v54 = sub_EFB0();
    v162 = v32;
    v55 = v54;
    v56 = sub_EFC8();
    *&v185 = v56;
    *v55 = 136315138;
    sub_24548(&qword_6C078, 255, &type metadata accessor for Input, &protocol conformance descriptor for Input);
    v57 = sub_50CD4();
    v38 = v58;
    (*(v27 + 8))(v31, v25);
    v59 = sub_4DE68(v57, v38, &v185);

    *(v55 + 4) = v59;
    _os_log_impl(&dword_0, v51, v52, "#EmergencyDirectCallFlow onInput: %s", v55, 0xCu);
    sub_253C(v56);
    sub_5674(v56);
    v60 = v55;
    v32 = v162;
    sub_5674(v60);
  }

  else
  {

    (*(v27 + 8))(v31, v25);
  }

  v61 = *(v184 + 1);
  v61(v47, v32);
  v62 = v175;
  sub_502D4();
  v63 = (*(v181 + 88))(v62, v182);
  v64 = v180;
  v65 = v183;
  if (v63 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v66 = sub_246EC();
    v67(v66);
    (*(v177 + 32))(v176, v62, v178);
    sub_2970();
    swift_beginAccess();
    v68 = sub_245EC(&v192);
    v65(v68);
    v69 = sub_50AF4();
    v70 = sub_50BD4();
    if (sub_EF00(v70))
    {
      v71 = sub_5718();
      sub_EEC8(v71);
      sub_EED4(&dword_0, v72, v73, "EmergencyDirectCallFlow onInput .NLv3IntentOnly");
      sub_EE58();
    }

    v74 = sub_24768();
    v75 = v61;
    (v61)(v74);
    v76 = v177;
    sub_246FC();
    v77 = v170;
    v78 = v176;
    v79 = v178;
    v80(v170, v176, v178);
    sub_24490(v77, v169);
    sub_23FCC();
    v82 = v81;
    sub_24600();
    sub_1A2C0(v77, v83);
    (*(v76 + 8))(v78, v79);
    goto LABEL_8;
  }

  if (v63 == enum case for Parse.directInvocation(_:))
  {
    v91 = sub_246EC();
    v92(v91);
    (*(v172 + 32))(v171, v62, v173);
    sub_2970();
    swift_beginAccess();
    v93 = sub_245EC(&v190);
    v65(v93);
    v94 = sub_50AF4();
    v95 = sub_50BD4();
    if (sub_EF00(v95))
    {
      v96 = sub_5718();
      sub_EEC8(v96);
      sub_EED4(&dword_0, v97, v98, "EmergencyDirectCallFlow onInput .directInvocation");
      sub_EE58();
    }

    v99 = sub_24768();
    v184 = v61;
    (v61)(v99);
    v100 = v171;
    v101 = v171;
    if (sub_50304() == 0xD00000000000003FLL && 0x8000000000055790 == v102)
    {

      v104 = v166;
    }

    else
    {
      sub_50CE4();
      sub_247D8();
      v104 = v166;
      if ((v101 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    v128 = sub_50314();
    if (v128)
    {
      v129 = v128;
      v130 = sub_50A84();
      sub_2B7EC(v129, &v185, v130, v131);

      if (*(&v186 + 1))
      {
        if (swift_dynamicCast())
        {
          v132 = sub_50974();
          if (v132 != 4)
          {
            LOBYTE(v82) = v132;
            LOWORD(v84) = 35;
            goto LABEL_52;
          }
        }

LABEL_41:
        if (sub_50304() == 0xD000000000000035 && 0x8000000000055140 == v145)
        {
        }

        else
        {
          sub_50CE4();
          sub_247D8();
          if ((v100 & 1) == 0)
          {
            goto LABEL_49;
          }
        }

        v147 = sub_2B6B0(v100);
        if (v147 == 35)
        {
LABEL_49:
          sub_2970();
          swift_beginAccess();
          (v183)(v104, v64, v32);
          v148 = sub_50AF4();
          sub_50BE4();
          sub_246B4();
          if (os_log_type_enabled(v148, v149))
          {
            v150 = sub_EFB0();
            v151 = v32;
            v152 = sub_EFC8();
            v188 = v152;
            *v150 = 136315138;
            BYTE5(v190) = 0;
            v153 = sub_50B64();
            v155 = sub_4DE68(v153, v154, &v188);

            *(v150 + 4) = v155;
            _os_log_impl(&dword_0, v148, 0x35u, "%s", v150, 0xCu);
            sub_253C(v152);
            sub_24630();
            sub_5674(v150);

            v184(v104, v151);
          }

          else
          {

            v184(v104, v32);
          }

          sub_246DC();
          v157 = v100;
          v160 = v173;
LABEL_58:
          v156(v157, v160);
          goto LABEL_59;
        }

        LOWORD(v84) = v147;
        LOBYTE(v82) = 4;
LABEL_52:
        sub_246DC();
        v158(v100, v173);
        goto LABEL_53;
      }
    }

    else
    {
      v185 = 0u;
      v186 = 0u;
    }

    sub_51C0(&v185, &qword_6C1A8, &qword_51FE0);
    goto LABEL_41;
  }

  if (v63 != enum case for Parse.uso(_:))
  {
    sub_2970();
    swift_beginAccess();
    v133 = v161[2];
    v134 = sub_2478C();
    v65(v134);
    v135 = sub_50AF4();
    sub_50BE4();
    sub_246B4();
    if (os_log_type_enabled(v135, v136))
    {
      v137 = sub_EFB0();
      v138 = sub_EFC8();
      v162 = v32;
      v139 = v138;
      v191 = v138;
      *v137 = 136315138;
      LOBYTE(v188) = 0;
      v140 = sub_50B64();
      v142 = sub_4DE68(v140, v141, &v191);

      *(v137 + 4) = v142;
      _os_log_impl(&dword_0, v135, v38, "%s", v137, 0xCu);
      sub_253C(v139);
      sub_24630();
      sub_5674(v137);

      v143 = v133;
      v144 = v162;
    }

    else
    {

      v143 = v133;
      v144 = v32;
    }

    v61(v143, v144);
    v160 = v182;
    v156 = *(v181 + 8);
    v157 = v62;
    goto LABEL_58;
  }

  v116 = sub_246EC();
  v117(v116);
  (*(v164 + 32))(v163, v62, v165);
  sub_2970();
  swift_beginAccess();
  v118 = sub_245EC(&v185 + 8);
  v65(v118);
  v119 = sub_50AF4();
  v120 = sub_50BD4();
  if (sub_EF00(v120))
  {
    v121 = sub_5718();
    sub_EEC8(v121);
    sub_EED4(&dword_0, v122, v123, "#EmergencyDirectCallFlow onInput .uso");
    sub_EE58();
  }

  v124 = sub_24768();
  v75 = v61;
  (v61)(v124);
  v125 = v163;
  sub_50344();
  *(&v186 + 1) = &type metadata for EmergencyFeatureFlagsKey;
  v187 = sub_EB68();
  LOBYTE(v185) = 2;
  sub_50374();
  sub_253C(&v185);
  v126 = v161[4];
  sub_50A14();
  sub_24490(v126, v161[3]);
  sub_23CC8();
  v82 = v127;
  sub_1A2C0(v126, &type metadata accessor for EmergencyDialogAct);
  (*(v164 + 8))(v125, v165);
LABEL_8:
  v84 = v82 >> 8;
  if (v82 != 4 || BYTE1(v82) != 35)
  {
    if ((v82 & 0x10000) == 0)
    {
      sub_2970();
      swift_beginAccess();
      v105 = sub_245EC(&v189);
      v65(v105);
      v106 = sub_50AF4();
      v107 = sub_50BE4();
      if (sub_EF4C(v107))
      {
        v108 = v32;
        v109 = sub_EFB0();
        v110 = sub_EFC8();
        v188 = v110;
        *v109 = 136315138;
        BYTE5(v190) = v82;
        HIWORD(v190) = BYTE1(v82);
        v111 = sub_50B64();
        v113 = sub_4DE68(v111, v112, &v188);

        *(v109 + 4) = v113;
        _os_log_impl(&dword_0, v106, v107, "#EmergencyDirectCallFlow Not a DirectCall intent. Aborting flow. Intent: [%s]", v109, 0xCu);
        sub_253C(v110);
        sub_5674(v110);
        sub_24630();

        v114 = v75;
        v115 = v108;
      }

      else
      {

        v114 = sub_24768();
      }

      v75(v114, v115);
      goto LABEL_59;
    }

LABEL_53:
    v159 = v167;
    *(v167 + 218) = 1;
    *(v159 + 216) = v82 | (v84 << 8);
    goto LABEL_59;
  }

  sub_2970();
  swift_beginAccess();
  v85 = v168;
  (v65)(v168, v64, v32);
  v86 = sub_50AF4();
  v87 = sub_50BD4();
  if (sub_EF00(v87))
  {
    v88 = sub_5718();
    sub_EEC8(v88);
    sub_EED4(&dword_0, v89, v90, "#EmergencyDirectCallFlow Produced an empty intent. Ignoring input.");
    sub_EE58();
  }

  v75(v85, v32);
LABEL_59:
  sub_8A94();
}

uint64_t sub_20D28()
{
  sub_EF64();
  v1[130] = v0;
  v1[129] = v2;
  v3 = sub_50B04();
  v1[131] = v3;
  v1[132] = *(v3 - 8);
  v1[133] = swift_task_alloc();
  v1[134] = swift_task_alloc();
  v1[135] = swift_task_alloc();

  return _swift_task_switch(sub_20E00, 0, 0);
}

uint64_t sub_20E00(uint64_t a1)
{
  v2 = *(v1 + 1080);
  v3 = *(v1 + 1056);
  v4 = *(v1 + 1048);
  v5 = sub_50AE4();
  *(v1 + 1088) = v5;
  sub_2970();
  swift_beginAccess();
  v6 = *(v3 + 16);
  *(v1 + 1096) = v6;
  *(v1 + 1104) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = sub_50AF4();
  sub_50BD4();
  sub_246B4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = sub_5718();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v4, "#EmergencyDirectCallFlow execute", v9, 2u);
    sub_5674(v9);
  }

  v10 = *(v1 + 1080);
  v11 = *(v1 + 1056);
  v12 = *(v1 + 1048);
  v13 = *(v1 + 1040);

  v14 = *(v11 + 8);
  *(v1 + 1112) = v14;
  v14(v10, v12);
  v15 = *(v13 + 218);
  if (v15 == 2)
  {
    v16 = *(v1 + 1040);
    v17 = *(v1 + 1032);
    sub_E9D0();
    v18 = swift_allocError();
    *v19 = 2;
    sub_1D68(v18, v16 + 16, (v16 + 56), v17);

    goto LABEL_17;
  }

  if (v15 == 3)
  {
    sub_50194();
LABEL_17:

    v35 = *(v1 + 8);

    return v35();
  }

  v20 = *(v13 + 216);
  if (HIBYTE(v20) == 35 && v20 == 4)
  {
LABEL_14:
    v24 = *(v1 + 1064);
    v25 = *(v1 + 1048);
    sub_2970();
    swift_beginAccess();
    v6(v24, v5, v25);
    v26 = sub_50AF4();
    v27 = sub_50BE4();
    if (sub_EF4C(v27))
    {
      v28 = sub_5718();
      sub_EEC8(v28);
      sub_56D8(&dword_0, v29, v30, "#EmergencyDirectCallFlow Intent missing a situation or valid organization");
      sub_EE58();
    }

    v31 = *(v1 + 1064);
    v32 = *(v1 + 1048);
    v33 = *(v1 + 1040);

    v14(v31, v32);
    v34 = sub_1FE8((v33 + 56), *(v33 + 80));
    memcpy((v1 + 656), v34, 0x70uLL);
    sub_202C(v33 + 16, (v1 + 656));
    sub_50184();

    goto LABEL_17;
  }

  sub_87A8();
  if (!*(v1 + 944))
  {
    sub_51C0(v1 + 920, &qword_6C7A0, &unk_53C80);
    goto LABEL_14;
  }

  v21 = *(v1 + 1040);
  sub_546C((v1 + 920), v1 + 880);
  v22 = swift_task_alloc();
  *(v1 + 1120) = v22;
  *v22 = v1;
  v22[1] = sub_211A4;

  return sub_15100(v1 + 400, v21 + 136, SHIBYTE(v20), v20);
}

uint64_t sub_211A4()
{
  sub_EF64();
  v1 = *v0;
  sub_EF2C();
  *v2 = v1;

  return _swift_task_switch(sub_21294, 0, 0);
}

uint64_t sub_21294()
{
  v20 = v0;
  memcpy(v0 + 34, v0 + 50, 0x80uLL);
  if (sub_E51C((v0 + 34)) == 1)
  {
    sub_1A3F4((v0[130] + 176), *(v0[130] + 200));
    sub_230D0();
    sub_50184();

    goto LABEL_14;
  }

  memcpy(v0 + 18, v0 + 34, 0x80uLL);
  memcpy(v19, v0 + 34, sizeof(v19));
  if (sub_509A4())
  {
    sub_1A3F4((v0[130] + 176), *(v0[130] + 200));
    sub_21758();
  }

  else if (sub_509C4())
  {
    sub_1A3F4((v0[130] + 176), *(v0[130] + 200));
    sub_223D8();
  }

  else
  {
    v1 = v0[31];
    if ((v1 & 0x2000000000000000) != 0)
    {
      v2 = HIBYTE(v1) & 0xF;
    }

    else
    {
      v2 = v0[30] & 0xFFFFFFFFFFFFLL;
    }

    if (!v2)
    {
      v5 = v0[137];
      v6 = v0[136];
      v7 = v0[134];
      v8 = v0[131];
      sub_51C0((v0 + 50), &qword_6C050, &qword_51E00);
      sub_2970();
      swift_beginAccess();
      v5(v7, v6, v8);
      v9 = sub_50AF4();
      v10 = sub_50BE4();
      if (sub_EF4C(v10))
      {
        v11 = sub_5718();
        sub_EEC8(v11);
        sub_56D8(&dword_0, v12, v13, "#EmergencyDirectCallFlow OrgInfo had no usable info");
        sub_EE58();
      }

      v14 = v0[139];
      v15 = v0[134];
      v16 = v0[131];
      v17 = v0[130];

      v14(v15, v16);
      v18 = sub_1FE8((v17 + 56), *(v17 + 80));
      memcpy(v0 + 96, v18, 0x70uLL);
      sub_202C(v17 + 16, v0 + 96);
      goto LABEL_13;
    }

    sub_1A3F4((v0[130] + 176), *(v0[130] + 200));
    memcpy(v0 + 66, v19, 0x80uLL);
    nullsub_1();
    memcpy(v0 + 2, v0 + 66, 0x80uLL);
    sub_230D0();
  }

  sub_51C0((v0 + 50), &qword_6C050, &qword_51E00);
LABEL_13:

  sub_50184();

LABEL_14:
  sub_253C(v0 + 110);

  v3 = v0[1];

  return v3();
}

uint64_t sub_21578(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EmergencyDirectCallFlow();
  sub_24548(&qword_6CD70, v2, type metadata accessor for EmergencyDirectCallFlow, &unk_52C60);
  return sub_4FF14();
}

uint64_t sub_21684()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_CD54;

  return sub_20D28();
}

uint64_t sub_21720(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EmergencyDirectCallFlow();

  return sub_4FF64();
}

void sub_21758()
{
  sub_13C8C();
  v2 = v0;
  v4 = v3;
  memcpy(v142, v3, sizeof(v142));
  v115 = sub_50884();
  sub_569C();
  __chkstk_darwin(v5);
  sub_1A3A0();
  v116 = v6;
  v7 = sub_2208(&qword_6B988, &qword_530B0);
  v8 = sub_72B0(v7);
  __chkstk_darwin(v8);
  sub_EE34();
  v113 = v9;
  sub_13B08();
  __chkstk_darwin(v10);
  sub_13C5C();
  v114 = v11;
  v12 = sub_2208(&qword_6B998, qword_51850);
  v13 = sub_72B0(v12);
  __chkstk_darwin(v13);
  sub_EE34();
  v120 = v14;
  sub_13B08();
  __chkstk_darwin(v15);
  sub_13C5C();
  v117 = v16;
  v17 = sub_13B48();
  v118 = type metadata accessor for ConfirmationFlowConfigModel(v17);
  sub_569C();
  __chkstk_darwin(v18);
  sub_1A3A0();
  v119 = v19;
  sub_13B48();
  v20 = sub_50B04();
  sub_8558();
  v22 = v21;
  __chkstk_darwin(v23);
  sub_EE34();
  v112 = v24;
  sub_13B08();
  v26 = __chkstk_darwin(v25);
  v28 = &v111 - v27;
  __chkstk_darwin(v26);
  v30 = &v111 - v29;
  sub_50804();
  sub_8558();
  v124 = v32;
  v125 = v31;
  __chkstk_darwin(v31);
  sub_5630();
  sub_24798();

  v123 = v1;
  sub_2478C();
  sub_2970();
  sub_507F4();
  sub_50744();
  swift_allocObject();
  sub_50734();
  v122 = v4;
  sub_2970();
  sub_50724();

  v121 = sub_50714();

  v34 = v0[3];
  v33 = v0[4];
  sub_1FE8(v2, v2[3]);
  (*(v33 + 8))(&v136, v34, v33);
  v35 = v137;
  sub_1A3F4(&v136, v137);
  v36 = sub_500D4();
  sub_253C(&v136);
  if (v36)
  {
    v37 = sub_50AE4();
    sub_2970();
    swift_beginAccess();
    sub_246FC();
    v38(v30, v37, v20);
    v39 = sub_50AF4();
    v40 = sub_50BD4();
    if (sub_EF4C(v40))
    {
      v41 = sub_5718();
      sub_24774(v41);
      _os_log_impl(&dword_0, v39, v40, "#EmergencyDirectCallFlow Request made on HomePod. Confirm before calling.", v35, 2u);
      sub_24630();
    }

    (*(v22 + 8))(v30, v20);
    sub_23BC(v2, &v136);
    sub_23BC((v2 + 5), v139);
    memcpy(v141, v142, 0x80uLL);
    sub_1A058(v141);
    memcpy(v140, v141, sizeof(v140));
    sub_5484(v122, v135);
    sub_EA30();
    v42 = sub_4FF04();
    sub_EA84(&v136);
    sub_1FE8(v2 + 5, v2[8]);
    v43 = v117;
    v44 = v125;
    (*(v124 + 16))(v117, v123, v125);
    sub_13D50();
    sub_28E0(v45, v46, v47, v44);

    v48 = v119;
    sub_24EEC(v43);

    sub_51C0(v43, &qword_6B998, qword_51850);
    sub_1FE8(v2 + 5, v2[8]);
    v49 = v118;

    sub_250F0();

    *(v48 + v49[6]) = v42;
    *(v48 + v49[7]) = 2;
    *(v48 + v49[8]) = 0;
    *(v48 + v49[9]) = 1;
    sub_23BC(v2, v133);
    sub_23BC((v2 + 5), v132);
    sub_5260((v2 + 10), v130);
    sub_52BC(v132, v132[3]);
    sub_24738();
    v120 = v50;
    sub_5620();
    __chkstk_darwin(v51);
    sub_5630();
    v53 = sub_1A4A4(v52);
    v54(v53);
    memcpy(v134, v42, 0x70uLL);
    v128 = v49;
    v129 = &off_66AB0;
    sub_530C(v127);
    sub_1A40C();
    sub_24490(v48, v55);
    v126[3] = &type metadata for EmergencyCATProvider;
    v126[4] = &off_66C88;
    sub_1A498();
    v126[0] = swift_allocObject();
    memcpy((v126[0] + 16), v134, 0x70uLL);
    type metadata accessor for EmergencyConfirmationFlow();
    v56 = swift_allocObject();
    v57 = v128;
    sub_52BC(v127, v128);
    sub_5620();
    __chkstk_darwin(v58);
    sub_5630();
    v60 = sub_2464C(v59);
    v61(v60);
    sub_52BC(v126, &type metadata for EmergencyCATProvider);
    sub_5620();
    __chkstk_darwin(v62);
    sub_5630();
    v64 = sub_247A4(v63);
    v65(v64);
    memcpy(v135, v57, 0x70uLL);
    v137 = v49;
    v138 = &off_66AB0;
    sub_530C(&v136);
    sub_245A0();
    sub_244EC(v2, v66);
    *(v56 + 256) = &type metadata for EmergencyCATProvider;
    *(v56 + 264) = &off_66C88;
    sub_1A498();
    v67 = swift_allocObject();
    *(v56 + 232) = v67;
    memcpy((v67 + 16), v135, 0x70uLL);
    v68 = v122;
    memcpy((v56 + 24), v122, 0x80uLL);
    sub_546C(&v136, v56 + 152);
    sub_546C(v133, v56 + 192);
    v69 = v130[1];
    *(v56 + 272) = v130[0];
    *(v56 + 288) = v69;
    v70 = v131;
    *(v56 + 16) = 0;
    *(v56 + 312) = 0;
    *(v56 + 320) = 0;
    *(v56 + 304) = v70;
    sub_5484(v68, &v136);
    sub_253C(v126);
    sub_253C(v127);
    sub_253C(v132);
    *&v136 = v56;
    sub_245D4();
    sub_24548(v71, 255, v72, &unk_516F8);
    sub_4FF04();

    sub_1A428();
    sub_1A2C0(v48, v73);
    (*(v124 + 8))(v123, v125);
  }

  else
  {
    sub_1FE8(v2, v2[3]);
    v74 = sub_24660();
    v75(v74);
    sub_1FE8(v134, v134[3]);
    sub_24660();
    if (sub_500B4() & 1) != 0 || (sub_1FE8(v134, v134[3]), sub_24660(), (sub_50044()))
    {
      v76 = sub_50AE4();
      sub_2970();
      swift_beginAccess();
      sub_246FC();
      v77 = v20;
      v78(v28, v76, v20);
      v79 = sub_50AF4();
      sub_50BD4();
      sub_246B4();
      v81 = os_log_type_enabled(v79, v80);
      v82 = v123;
      v83 = v121;
      if (v81)
      {
        v84 = sub_5718();
        sub_24774(v84);
        sub_24694(&dword_0, v85, v86, "#EmergencyDirectCallFlow Request made on device that doesn't support calling. Give supportive dialog.");
        sub_24630();
      }

      (*(v22 + 8))(v28, v77);
      sub_1FE8(v2 + 5, v2[8]);
      v88 = v124;
      v87 = v125;
      sub_246FC();
      v89(v120, v82, v87);
      sub_13D50();
      sub_28E0(v90, v91, v92, v87);
      sub_1A3F4(v134, v134[3]);

      v93 = sub_500B4();
      v94 = 0;
      if ((v93 & 1) == 0)
      {
        sub_1A3F4(v134, v134[3]);
        v94 = sub_50044() ^ 1;
      }

      v95 = v114;
      v96 = v120;
      sub_24CDC(v120, v83, v94 & 1);

      sub_51C0(v96, &qword_6B998, qword_51850);
      sub_234C(v95, v113);
      sub_23BC(v2, &v136);
      v97 = v116;
      sub_50874();
      sub_245BC();
      sub_24548(v98, 255, v99, &protocol conformance descriptor for OutputFlow);
      sub_4FF04();

      sub_1A370();
      sub_1A2C0(v97, v100);
      sub_51C0(v95, &qword_6B988, &qword_530B0);
      (*(v88 + 8))(v82, v87);
    }

    else
    {
      v101 = sub_50AE4();
      sub_2970();
      swift_beginAccess();
      sub_246FC();
      v102 = v112;
      v103(v112, v101, v20);
      v104 = sub_50AF4();
      sub_50BD4();
      sub_246B4();
      v106 = os_log_type_enabled(v104, v105);
      v107 = v123;
      if (v106)
      {
        v108 = sub_5718();
        sub_24774(v108);
        sub_24694(&dword_0, v109, v110, "#EmergencyDirectCallFlow Resource is available. Making the call.");
        sub_24630();
      }

      (*(v22 + 8))(v102, v20);
      sub_23BC(v2, &v136);
      sub_23BC((v2 + 5), v139);
      memcpy(v141, v142, 0x80uLL);
      sub_1A058(v141);
      memcpy(v140, v141, sizeof(v140));
      sub_5484(v122, v135);
      sub_EA30();
      sub_4FF04();

      sub_EA84(&v136);
      (*(v124 + 8))(v107, v125);
    }

    sub_253C(v134);
  }

  sub_8A94();
}

void sub_223D8()
{
  sub_13C8C();
  v124 = v0;
  v3 = v2;
  v5 = v4;
  memcpy(v141, v4, sizeof(v141));
  v118 = sub_50884();
  sub_569C();
  __chkstk_darwin(v6);
  sub_1A3A0();
  v117 = v7;
  v8 = sub_13B48();
  v112 = type metadata accessor for ConfirmationFlowConfigModel(v8);
  sub_569C();
  __chkstk_darwin(v9);
  sub_1A3A0();
  v113 = v10;
  sub_13B48();
  v111 = sub_508C4();
  sub_569C();
  __chkstk_darwin(v11);
  sub_1A3A0();
  v110 = v12;
  sub_13B48();
  v13 = sub_50B04();
  sub_8558();
  v123 = v14;
  __chkstk_darwin(v15);
  sub_EE34();
  v122 = v16;
  sub_13B08();
  __chkstk_darwin(v17);
  sub_13C5C();
  v109 = v18;
  v19 = sub_2208(&unk_6D680, &qword_515B0);
  v20 = sub_72B0(v19);
  __chkstk_darwin(v20);
  v114 = &v108 - v21;
  sub_13B48();
  v115 = sub_4FD64();
  sub_8558();
  v120 = v22;
  __chkstk_darwin(v23);
  sub_EE34();
  v108 = v24;
  sub_13B08();
  __chkstk_darwin(v25);
  sub_13C5C();
  v119 = v26;
  v27 = sub_2208(&qword_6B998, qword_51850);
  v28 = sub_72B0(v27);
  __chkstk_darwin(v28);
  sub_24798();
  v29 = sub_2208(&qword_6B988, &qword_530B0);
  v30 = sub_72B0(v29);
  __chkstk_darwin(v30);
  sub_EE34();
  v116 = v31;
  sub_13B08();
  __chkstk_darwin(v32);
  v34 = &v108 - v33;
  v35 = sub_50804();
  sub_8558();
  v37 = v36;
  __chkstk_darwin(v38);
  sub_5630();
  v41 = v40 - v39;
  v121 = v5;

  sub_2970();
  sub_507F4();
  v42 = *(v3 + 24);
  v43 = *(v3 + 32);
  v44 = sub_2478C();
  sub_1A3F4(v44, v45);
  v125 = v37;
  v46 = v37;
  v47 = v34;
  v48 = v13;
  (*(v46 + 16))(v1, v41, v35);
  sub_13D50();
  v126 = v35;
  v49 = v35;
  v50 = v123;
  sub_28E0(v51, v52, v53, v49);
  v54 = *(v43 + 32);
  v55 = v42;
  v56 = v124;
  v57 = v43;
  v58 = v122;
  v54(v1, v55, v57);
  sub_51C0(v1, &qword_6B998, qword_51850);
  memcpy(v142, v141, sizeof(v142));
  nullsub_1();
  memcpy(v140, v142, sizeof(v140));
  if ((sub_22F54(v140) & 1) == 0)
  {
    goto LABEL_4;
  }

  v59 = v50;
  v60 = v114;
  sub_50984();
  v61 = v115;
  if (sub_513C(v60, 1, v115) == 1)
  {
    sub_51C0(v60, &unk_6D680, &qword_515B0);
    v50 = v59;
LABEL_4:
    v62 = sub_50AE4();
    sub_2970();
    swift_beginAccess();
    (*(v50 + 16))(v58, v62, v48);
    v63 = sub_50AF4();
    v64 = sub_50BD4();
    v65 = v50;
    if (sub_EF4C(v64))
    {
      v66 = sub_5718();
      *v66 = 0;
      _os_log_impl(&dword_0, v63, v64, "#EmergencyDirectCallFlow Only website available. Returning orgRequestOnlyWebsite.", v66, 2u);
      sub_5674(v66);
    }

    (*(v65 + 8))(v58, v48);
    sub_234C(v47, v116);
    sub_23BC(v56, &v127);
    v67 = v117;
    sub_50874();
    sub_245BC();
    sub_24548(v68, 255, v69, &protocol conformance descriptor for OutputFlow);
    sub_4FF04();
    sub_1A370();
    sub_1A2C0(v67, v70);
    sub_51C0(v47, &qword_6B988, &qword_530B0);
    (*(v125 + 8))(v41, v126);
    goto LABEL_10;
  }

  v122 = v41;
  (*(v120 + 32))(v119, v60, v61);
  v71 = sub_50AE4();
  sub_2970();
  swift_beginAccess();
  v72 = v109;
  (*(v59 + 16))(v109, v71, v48);
  v73 = sub_50AF4();
  sub_50BD4();
  sub_246B4();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = sub_5718();
    sub_24774(v75);
    sub_24694(&dword_0, v76, v77, "#EmergencyDirectCallFlow Only website available for VOX request. Offer to open the org's website.");
    sub_24630();
  }

  (*(v59 + 8))(v72, v48);
  sub_1FE8(v56, v56[3]);
  v78 = sub_24660();
  v79(v78);
  (*(v120 + 16))(v108, v119, v61);
  v80 = v110;
  sub_2970();
  sub_508B4();
  sub_24548(&qword_6C7B0, 255, &type metadata accessor for AppPunchOutFlow, &protocol conformance descriptor for AppPunchOutFlow);
  v81 = sub_4FF04();
  sub_1A2C0(v80, &type metadata accessor for AppPunchOutFlow);
  v82 = v113;
  sub_234C(v47, v113);
  sub_1FE8(v56 + 5, v56[8]);
  v83 = v112;

  sub_25110();

  *(v82 + v83[6]) = v81;
  *(v82 + v83[7]) = 3;
  *(v82 + v83[8]) = 2;
  *(v82 + v83[9]) = 1;
  sub_23BC(v56, v137);
  sub_23BC((v56 + 5), v136);
  sub_5260((v56 + 10), v134);
  sub_52BC(v136, v136[3]);
  sub_24738();
  v124 = v84;
  sub_5620();
  __chkstk_darwin(v85);
  sub_5630();
  v87 = sub_1A4A4(v86);
  v88(v87);
  memcpy(v138, v81, sizeof(v138));
  v132 = v83;
  v133 = &off_66AB0;
  sub_530C(v131);
  sub_1A40C();
  sub_24490(v82, v89);
  v130[3] = &type metadata for EmergencyCATProvider;
  v130[4] = &off_66C88;
  sub_1A498();
  v130[0] = swift_allocObject();
  memcpy((v130[0] + 16), v138, 0x70uLL);
  type metadata accessor for EmergencyConfirmationFlow();
  v90 = swift_allocObject();
  v91 = v132;
  sub_52BC(v131, v132);
  v123 = v47;
  sub_5620();
  __chkstk_darwin(v92);
  sub_5630();
  v94 = sub_247A4(v93);
  v95(v94);
  sub_52BC(v130, &type metadata for EmergencyCATProvider);
  sub_5620();
  __chkstk_darwin(v96);
  sub_5630();
  v98 = sub_2464C(v97);
  v99(v98);
  memcpy(v139, v91, sizeof(v139));
  v128 = v83;
  v129 = &off_66AB0;
  sub_530C(&v127);
  sub_245A0();
  sub_244EC(v56, v100);
  *(v90 + 256) = &type metadata for EmergencyCATProvider;
  *(v90 + 264) = &off_66C88;
  sub_1A498();
  v101 = swift_allocObject();
  *(v90 + 232) = v101;
  memcpy((v101 + 16), v139, 0x70uLL);
  v102 = v121;
  memcpy((v90 + 24), v121, 0x80uLL);
  sub_546C(&v127, v90 + 152);
  sub_546C(v137, v90 + 192);
  v103 = v134[1];
  *(v90 + 272) = v134[0];
  *(v90 + 288) = v103;
  v104 = v135;
  *(v90 + 16) = 0;
  *(v90 + 312) = 0;
  *(v90 + 320) = 0;
  *(v90 + 304) = v104;
  sub_5484(v102, &v127);
  sub_253C(v130);
  sub_253C(v131);
  sub_253C(v136);
  *&v127 = v90;
  sub_245D4();
  sub_24548(v105, 255, v106, &unk_516F8);
  sub_4FF04();

  sub_1A428();
  sub_1A2C0(v82, v107);
  (*(v120 + 8))(v119, v115);
  sub_51C0(v123, &qword_6B988, &qword_530B0);
  (*(v125 + 8))(v122, v126);
LABEL_10:
  sub_8A94();
}

uint64_t sub_22F54(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (sub_E51C(__dst) != 1)
  {
    memcpy(v9, __dst, sizeof(v9));
    if (sub_509C4())
    {
      v2 = v1[3];
      v3 = v1[4];
      sub_1FE8(v1, v2);
      (*(v3 + 8))(v6, v2, v3);
      sub_1FE8(v6, v7);
      if ((sub_500D4() & 1) == 0)
      {
        sub_1FE8(v6, v7);
        if ((sub_500C4() & 1) == 0)
        {
          sub_1FE8(v6, v7);
          if ((sub_500A4() & 1) == 0)
          {
            sub_1FE8(v6, v7);
            if ((sub_500B4() & 1) == 0)
            {
              sub_1FE8(v6, v7);
              v4 = sub_500F4();
              sub_253C(v6);
              return v4 & 1;
            }
          }
        }
      }

      sub_253C(v6);
    }
  }

  v4 = 0;
  return v4 & 1;
}

void sub_230D0()
{
  sub_13C8C();
  v97 = v1;
  v3 = v2;
  sub_247F0(v119);
  v96 = sub_50884();
  sub_569C();
  __chkstk_darwin(v4);
  sub_1A3A0();
  v95 = v5;
  v6 = sub_13B48();
  v91 = type metadata accessor for ConfirmationFlowConfigModel(v6);
  sub_569C();
  __chkstk_darwin(v7);
  sub_1A3A0();
  v92 = v8;
  v9 = sub_2208(&qword_6B998, qword_51850);
  v10 = sub_72B0(v9);
  __chkstk_darwin(v10);
  sub_5658();
  v13 = v11 - v12;
  __chkstk_darwin(v14);
  v16 = &v90 - v15;
  v17 = sub_2208(&qword_6B988, &qword_530B0);
  v18 = sub_72B0(v17);
  __chkstk_darwin(v18);
  sub_EE34();
  v94 = v19;
  sub_13B08();
  v21 = __chkstk_darwin(v20);
  v23 = &v90 - v22;
  __chkstk_darwin(v21);
  sub_13C5C();
  v93 = v24;
  sub_13B48();
  v25 = sub_50B04();
  sub_8558();
  v27 = v26;
  __chkstk_darwin(v28);
  sub_5658();
  v31 = v29 - v30;
  __chkstk_darwin(v32);
  v34 = &v90 - v33;
  v98 = v0;
  if ((sub_23AE8(v3) & 1) != 0 && (sub_247F0(v113), sub_E51C(v113) != 1))
  {
    memcpy(v118, v113, sizeof(v118));
    v48 = v114;
    v49 = v115;
    v117 = v116;
    memcpy(v112, v119, sizeof(v112));
    sub_5484(v112, v111);
    v50 = sub_50AE4();
    sub_2970();
    swift_beginAccess();
    (*(v27 + 16))(v34, v50, v25);
    v51 = sub_50AF4();
    v52 = sub_50BD4();
    if (sub_EF4C(v52))
    {
      v53 = sub_5718();
      *v53 = 0;
      _os_log_impl(&dword_0, v51, v52, "#EmergencyDirectCallFlow No resource available for VOX request. Offer to search the web.", v53, 2u);
      sub_5674(v53);
    }

    (*(v27 + 8))(v34, v25);
    v54 = v97[3];
    v55 = v97[4];
    sub_1A3F4(v97, v54);

    sub_2970();
    sub_507F4();
    sub_50804();
    v96 = v48;
    sub_13D50();
    sub_28E0(v56, v57, v58, v59);
    v60 = v93;
    (*(v55 + 24))(v16, v54, v55);
    sub_51C0(v16, &qword_6B998, qword_51850);
    v61 = v98;
    v62 = v98[3];
    v63 = v98[4];
    sub_1A3F4(v98, v62);
    v64 = *(v63 + 16);

    v64(&v111[2], v62, v63);
    v111[0] = v48;
    v111[1] = v49;
    sub_1A1BC();
    v65 = sub_4FF04();
    sub_1A210(v111);
    v66 = v92;
    sub_234C(v60, v92);
    sub_1FE8(v61 + 5, v61[8]);
    v67 = v91;

    sub_25110();

    *(v66 + v67[6]) = v65;
    *(v66 + v67[7]) = 4;
    *(v66 + v67[8]) = 1;
    *(v66 + v67[9]) = 1;
    sub_23BC(v61, v109);
    sub_23BC((v61 + 5), v108);
    sub_5260((v61 + 10), v106);
    sub_52BC(v108, v108[3]);
    sub_24738();
    v98 = v68;
    sub_5620();
    __chkstk_darwin(v69);
    sub_5630();
    sub_24798();
    (*(v70 + 16))(v65);
    memcpy(v110, v65, 0x70uLL);
    v104 = v67;
    v105 = &off_66AB0;
    sub_530C(v103);
    sub_1A40C();
    sub_24490(v66, v71);
    v102[3] = &type metadata for EmergencyCATProvider;
    v102[4] = &off_66C88;
    sub_1A498();
    v102[0] = swift_allocObject();
    memcpy((v102[0] + 16), v110, 0x70uLL);
    type metadata accessor for EmergencyConfirmationFlow();
    v72 = swift_allocObject();
    v73 = v104;
    sub_52BC(v103, v104);
    sub_24738();
    v97 = v74;
    sub_5620();
    __chkstk_darwin(v75);
    sub_5630();
    v77 = sub_2464C(v76);
    v78(v77);
    sub_52BC(v102, &type metadata for EmergencyCATProvider);
    sub_5620();
    __chkstk_darwin(v79);
    sub_5630();
    v81 = sub_24708(v80);
    v82(v81);
    memcpy(v111, v73, 0x70uLL);
    v100 = v67;
    v101 = &off_66AB0;
    sub_530C(&v99);
    sub_245A0();
    sub_244EC(v64, v83);
    *(v72 + 256) = &type metadata for EmergencyCATProvider;
    *(v72 + 264) = &off_66C88;
    sub_1A498();
    v84 = swift_allocObject();
    *(v72 + 232) = v84;
    memcpy((v84 + 16), v111, 0x70uLL);
    memcpy((v72 + 24), v118, 0x60uLL);
    *(v72 + 120) = v96;
    *(v72 + 128) = v49;
    *(v72 + 136) = v117;
    sub_546C(&v99, v72 + 152);
    sub_546C(v109, v72 + 192);
    v85 = v106[1];
    *(v72 + 272) = v106[0];
    *(v72 + 288) = v85;
    v86 = v107;
    *(v72 + 16) = 0;
    *(v72 + 312) = 0;
    *(v72 + 320) = 0;
    *(v72 + 304) = v86;
    sub_253C(v102);
    sub_253C(v103);
    sub_253C(v108);
    *&v109[0] = v72;
    sub_245D4();
    sub_24548(v87, 255, v88, &unk_516F8);
    sub_4FF04();

    sub_1A428();
    sub_1A2C0(v66, v89);
    v47 = v93;
  }

  else
  {
    v35 = sub_50AE4();
    sub_2970();
    swift_beginAccess();
    (*(v27 + 16))(v31, v35, v25);
    v36 = sub_50AF4();
    v37 = sub_50BD4();
    if (sub_EF4C(v37))
    {
      v38 = sub_5718();
      *v38 = 0;
      _os_log_impl(&dword_0, v36, v37, "#EmergencyDirectCallFlow No resource available. Returning orgRequestNoResource.", v38, 2u);
      sub_5674(v38);
    }

    (*(v27 + 8))(v31, v25);
    v39 = v97[3];
    v40 = v97[4];
    sub_1A3F4(v97, v39);
    sub_247F0(v112);
    if (sub_E51C(v112) == 1)
    {
      v41 = 1;
    }

    else
    {
      sub_50B74();
      v41 = 0;
    }

    v42 = sub_50804();
    sub_28E0(v13, v41, 1, v42);
    (*(v40 + 24))(v13, v39, v40);
    sub_51C0(v13, &qword_6B998, qword_51850);
    sub_234C(v23, v94);
    sub_23BC(v98, v118);
    sub_247F0(v110);
    if (sub_E51C(v110) != 1)
    {
      memcpy(v111, v110, sizeof(v111));
      sub_50994();
    }

    v43 = v95;
    sub_50874();
    sub_245BC();
    sub_24548(v44, 255, v45, &protocol conformance descriptor for OutputFlow);
    sub_4FF04();
    sub_1A370();
    sub_1A2C0(v43, v46);
    v47 = v23;
  }

  sub_51C0(v47, &qword_6B988, &qword_530B0);
  sub_8A94();
}

uint64_t sub_23AE8(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (sub_E51C(__dst) != 1)
  {
    if ((__dst[13] & 0x2000000000000000) != 0 ? HIBYTE(__dst[13]) & 0xFLL : __dst[12] & 0xFFFFFFFFFFFFLL)
    {
      v3 = v1[3];
      v4 = v1[4];
      sub_1FE8(v1, v3);
      (*(v4 + 8))(v6, v3, v4);
      sub_1FE8(v6, v7);
      if ((sub_500D4() & 1) == 0)
      {
        sub_1FE8(v6, v7);
        if ((sub_500C4() & 1) == 0)
        {
          sub_1FE8(v6, v7);
          if ((sub_500A4() & 1) == 0)
          {
            sub_1FE8(v6, v7);
            if ((sub_500B4() & 1) == 0)
            {
              sub_253C(v6);
              return 1;
            }
          }
        }
      }

      sub_253C(v6);
    }
  }

  return 0;
}

uint64_t sub_23C2C()
{

  sub_1A498();

  return _swift_deallocObject(v0, v1, v2);
}

void sub_23CC8()
{
  sub_13C8C();
  v1 = v0;
  v2 = sub_50B04();
  sub_8558();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_5630();
  v8 = v7 - v6;
  v9 = sub_50A24();
  v30[3] = v9;
  v30[4] = &protocol witness table for EmergencyDialogAct;
  v10 = sub_530C(v30);
  sub_244EC(v1, v10);
  v11 = sub_50AE4();
  sub_2970();
  swift_beginAccess();
  (*(v4 + 16))(v8, v11, v2);
  sub_23BC(v30, v29);
  v12 = sub_50AF4();
  v13 = sub_50BD4();
  if (os_log_type_enabled(v12, v13))
  {
    v26 = v2;
    v14 = sub_EFB0();
    v15 = sub_EFC8();
    v28 = v15;
    *v14 = 136315138;
    sub_23BC(v29, &v27);
    sub_2208(&qword_6C080, &qword_51E10);
    v16 = sub_50B64();
    v18 = v17;
    sub_253C(v29);
    v19 = sub_4DE68(v16, v18, &v28);

    *(v14 + 4) = v19;
    sub_247B8(&dword_0, v20, v21, "Converting EmergencyDialogAct to EmergencyCallIntent: %s");
    sub_253C(v15);
    sub_5674(v15);
    sub_5674(v14);

    (*(v4 + 8))(v8, v26);
  }

  else
  {

    sub_253C(v29);
    v22 = sub_2478C();
    v24(v22, v23);
  }

  v25 = 1684957542;
  switch(*(v10 + *(v9 + 20)))
  {
    case 1:
      goto LABEL_13;
    case 2:
      v25 = 0x6E6F69746361;
      goto LABEL_13;
    case 3:
      v25 = 0x627265566F6ELL;
      goto LABEL_13;
    case 4:
      v25 = 0x656C62616E65;
      goto LABEL_13;
    case 5:
      v25 = sub_24720();
      goto LABEL_13;
    case 6:
      v25 = sub_246C0();
      goto LABEL_13;
    case 7:
      v25 = sub_24670();
LABEL_13:
      sub_24744(v25);
      sub_247D8();
      break;
    case 8:
      break;
    default:

      break;
  }

  sub_253C(v30);
  sub_8A94();
}

void sub_23FCC()
{
  sub_13C8C();
  sub_24780();
  v3 = sub_50B04();
  sub_8558();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_5630();
  sub_24798();
  v32 = type metadata accessor for EmergencyNLIntent(0);
  sub_24618();
  v33 = sub_24548(v7, 255, v8, &unk_51AFC);
  v9 = sub_530C(v31);
  sub_244EC(v0, v9);
  v10 = sub_50AE4();
  sub_2970();
  swift_beginAccess();
  (*(v5 + 16))(v1, v10, v3);
  sub_23BC(v31, v30);
  v11 = sub_50AF4();
  v12 = sub_50BD4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = sub_EFB0();
    v14 = sub_EFC8();
    v29 = v14;
    *v13 = 136315138;
    sub_1FE8(v30, v30[3]);
    sub_24738();
    sub_5620();
    __chkstk_darwin(v15);
    sub_5630();
    v17 = sub_24708(v16);
    v18(v17);
    v19 = sub_3DBF4();
    v21 = v20;
    sub_24600();
    sub_1A2C0(v2, v22);
    sub_253C(v30);
    v23 = sub_4DE68(v19, v21, &v29);

    *(v13 + 4) = v23;
    sub_247B8(&dword_0, v24, v25, "Converting EmergencyNLIntent: %s");
    sub_253C(v14);
    sub_5674(v14);
    sub_5674(v13);

    (*(v5 + 8))(v1, v3);
  }

  else
  {

    (*(v5 + 8))(v1, v3);
    sub_253C(v30);
  }

  sub_1A3F4(v31, v32);
  if (qword_6B608 != -1)
  {
    swift_once();
  }

  sub_24618();
  sub_24548(v26, 255, v27, &unk_51ACC);
  sub_50524();
  sub_1A3F4(v31, v32);
  if (qword_6B5F8 != -1)
  {
    swift_once();
  }

  sub_50524();
  sub_1A3F4(v31, v32);
  if (qword_6B5F0 != -1)
  {
    swift_once();
  }

  sub_50524();
  v28 = 1684957542;
  switch(LOBYTE(v30[0]))
  {
    case 1:
      goto LABEL_19;
    case 2:
      v28 = 0x6E6F69746361;
      goto LABEL_19;
    case 3:
      v28 = 0x627265566F6ELL;
      goto LABEL_19;
    case 4:
      v28 = 0x656C62616E65;
      goto LABEL_19;
    case 5:
      v28 = sub_24720();
      goto LABEL_19;
    case 6:
      v28 = sub_246C0();
      goto LABEL_19;
    case 7:
      v28 = sub_24670();
LABEL_19:
      sub_24744(v28);
      sub_247D8();
      break;
    case 8:
      break;
    default:

      break;
  }

  sub_253C(v31);
  sub_8A94();
}

uint64_t sub_24490(uint64_t a1, uint64_t a2)
{
  v4 = sub_24780();
  v5(v4);
  sub_569C();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_244EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24780();
  v5(v4);
  sub_569C();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_24548(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_24630()
{
}

void sub_24694(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_24744(uint64_t a1)
{

  return sub_50CE4();
}

void sub_247B8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t sub_247D8()
{
}

void *sub_247F0(void *a1)
{

  return memcpy(a1, v1, 0x80uLL);
}

uint64_t type metadata accessor for SirenCATs(uint64_t a1)
{
  result = qword_6CD78;
  if (!qword_6CD78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_50864();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2208(&unk_6D680, &qword_515B0);
  __chkstk_darwin(v9 - 8);
  sub_8E60(a1, &v13 - v10);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_50784();
  (*(v6 + 8))(a2, v5);
  sub_8ED0(a1);
  return v11;
}

uint64_t type metadata accessor for EmergencyCATs(uint64_t a1)
{
  result = qword_6CDC8;
  if (!qword_6CDC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24CDC(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_2208(&qword_6B998, qword_51850);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  sub_2208(&qword_6BBC8, &unk_518B0);
  v9 = swift_allocObject();
  sub_7260(v9, xmmword_517D0);
  sub_71A0(a1, v8, &qword_6B998, qword_51850);
  v10 = sub_50804();
  if (sub_513C(v8, 1, v10) == 1)
  {
    sub_7204(v8, &qword_6B998, qword_51850);
    *(v9 + 48) = 0u;
    *(v9 + 64) = 0u;
  }

  else
  {
    *(v9 + 72) = v10;
    sub_530C((v9 + 48));
    sub_7298();
    (*(v11 + 32))();
  }

  *(v9 + 80) = 0x65626D754E67726FLL;
  *(v9 + 88) = 0xE900000000000072;
  if (a2)
  {
    v12 = sub_50754();
    v13 = a2;
  }

  else
  {
    v13 = 0;
    v12 = 0;
    *(v9 + 104) = 0;
    *(v9 + 112) = 0;
  }

  *(v9 + 96) = v13;
  *(v9 + 120) = v12;
  *(v9 + 128) = 0xD000000000000012;
  *(v9 + 136) = 0x8000000000054BF0;
  *(v9 + 168) = &type metadata for Bool;
  *(v9 + 144) = a3 & 1;

  sub_50794();
}

uint64_t sub_24EEC(uint64_t a1)
{
  v2 = sub_2208(&qword_6B998, qword_51850);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  sub_2208(&qword_6BBC8, &unk_518B0);
  v5 = swift_allocObject();
  sub_7260(v5, xmmword_51780);
  sub_71A0(a1, v4, &qword_6B998, qword_51850);
  v6 = sub_50804();
  if (sub_513C(v4, 1, v6) == 1)
  {
    sub_7204(v4, &qword_6B998, qword_51850);
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
  }

  else
  {
    *(v5 + 72) = v6;
    sub_530C((v5 + 48));
    sub_7298();
    (*(v7 + 32))();
  }

  sub_50794();
}

uint64_t sub_25184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_50864();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2208(&unk_6D680, &qword_515B0);
  __chkstk_darwin(v9 - 8);
  sub_71A0(a1, &v13 - v10, &unk_6D680, &qword_515B0);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_50784();
  (*(v6 + 8))(a2, v5);
  sub_7204(a1, &unk_6D680, &qword_515B0);
  return v11;
}

uint64_t type metadata accessor for EmergencySuicidePreventionBasicIntentModernCATs(uint64_t a1)
{
  result = qword_6CE18;
  if (!qword_6CE18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_253F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_50864();
  sub_8F38();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2208(&unk_6D680, &qword_515B0);
  __chkstk_darwin(v11 - 8);
  sub_8E60(a1, &v15 - v12);
  (*(v7 + 16))(v10, a2, v3);
  v13 = sub_50814();
  (*(v7 + 8))(a2, v3);
  sub_8ED0(a1);
  return v13;
}

uint64_t sub_25554(uint64_t a1, uint64_t a2)
{
  sub_50864();
  sub_8F38();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_50824();
  (*(v5 + 8))(a2, v2);
  return v9;
}

uint64_t type metadata accessor for DomesticViolenceModernCATs(uint64_t a1)
{
  result = qword_6CE68;
  if (!qword_6CE68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2573C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_50864();
  sub_8F38();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2208(&unk_6D680, &qword_515B0);
  __chkstk_darwin(v11 - 8);
  sub_8E60(a1, &v15 - v12);
  (*(v7 + 16))(v10, a2, v3);
  v13 = sub_50814();
  (*(v7 + 8))(a2, v3);
  sub_8ED0(a1);
  return v13;
}

uint64_t sub_25898(uint64_t a1, uint64_t a2)
{
  sub_50864();
  sub_8F38();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_50824();
  (*(v5 + 8))(a2, v2);
  return v9;
}

uint64_t sub_259A0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v91 = a2;
  v92 = a3;
  memcpy(__dst, a2, sizeof(__dst));
  v88 = sub_50884();
  sub_569C();
  __chkstk_darwin(v5);
  sub_5630();
  v87 = v7 - v6;
  sub_50B04();
  sub_5620();
  v89 = v8;
  v90 = v9;
  __chkstk_darwin(v8);
  sub_5658();
  v12 = v10 - v11;
  __chkstk_darwin(v13);
  v82 = &v81 - v14;
  v15 = sub_2208(&qword_6CEB8, &qword_530A8);
  v16 = sub_72B0(v15);
  __chkstk_darwin(v16);
  v84 = &v81 - v17;
  v83 = type metadata accessor for ConfirmationFlowConfigModel(0);
  sub_569C();
  __chkstk_darwin(v18);
  sub_5630();
  v85 = v20 - v19;
  v21 = sub_2208(&qword_6B988, &qword_530B0);
  v22 = sub_72B0(v21);
  __chkstk_darwin(v22);
  sub_5658();
  sub_27838();
  __chkstk_darwin(v23);
  v25 = &v81 - v24;
  v26 = v3[14];
  sub_1FE8(v3 + 10, v3[13]);
  v27 = v3[3];
  v28 = v3[4];
  sub_1FE8(v3, v27);
  v29 = v27;
  v30 = v25;
  v31 = v89;
  (*(v28 + 8))(v107, v29, v28);
  v32 = *(v26 + 56);
  v33 = v90;
  v34 = v91;
  v35 = v12;
  v32();
  sub_253C(v107);
  memcpy(v106, v34, sizeof(v106));
  if (sub_E51C(v106) == 1)
  {
    goto LABEL_4;
  }

  v36 = v12;
  v37 = v31;
  memcpy(v107, v106, sizeof(v107));
  memcpy(v105, __dst, sizeof(v105));
  sub_5484(v105, v104);
  v38 = v84;
  sub_2636C(v107, v30, v84);
  v39 = v83;
  if (sub_513C(v38, 1, v83) == 1)
  {
    sub_51C0(v34, &qword_6C050, &qword_51E00);
    sub_51C0(v38, &qword_6CEB8, &qword_530A8);
    v31 = v37;
    v35 = v36;
LABEL_4:
    v40 = sub_50AE4();
    sub_2970();
    swift_beginAccess();
    (*(v33 + 16))(v35, v40, v31);
    v41 = sub_50AF4();
    v42 = sub_50BD4();
    if (sub_27800(v42))
    {
      *swift_slowAlloc() = 0;
      sub_24694(&dword_0, v43, v44, "Emergency followup flow preparing promptless output");
      sub_24630();
    }

    (*(v33 + 8))(v35, v31);
    sub_27568(v30, v86, &qword_6B988, &qword_530B0);
    v45 = v4[3];
    v46 = v4[4];
    sub_1FE8(v4, v45);
    (*(v46 + 8))(v105, v45, v46);
    v47 = sub_1FE8(v4 + 5, v4[8]);
    memcpy(v108, v47, sizeof(v108));
    sub_26F6C(v34, v105, v108);
    sub_253C(v105);
    sub_23BC(v4, v103);
    memcpy(v104, v34, sizeof(v104));
    if (sub_E51C(v104) != 1)
    {
      memcpy(v105, v104, sizeof(v105));
      sub_50994();
    }

    v48 = v87;
    sub_50874();
    sub_27618(&qword_6B990, &type metadata accessor for OutputFlow, &protocol conformance descriptor for OutputFlow);
    v49 = sub_4FF04();
    sub_27660(v48, &type metadata accessor for OutputFlow);
    v50 = v30;
    goto LABEL_12;
  }

  v92 = v30;
  sub_1A0FC(v38, v85);
  v51 = sub_50AE4();
  sub_2970();
  swift_beginAccess();
  v52 = v82;
  (*(v33 + 16))(v82, v51, v37);
  v53 = sub_50AF4();
  v54 = sub_50BD4();
  if (sub_27800(v54))
  {
    *swift_slowAlloc() = 0;
    sub_24694(&dword_0, v55, v56, "Emergency followup flow preparing for confirmation");
    sub_24630();
  }

  (*(v33 + 8))(v52, v37);
  sub_23BC(v4, v103);
  sub_23BC((v4 + 5), v102);
  sub_5260((v4 + 15), v100);
  sub_52BC(v102, v102[3]);
  v91 = &v81;
  sub_5620();
  __chkstk_darwin(v57);
  sub_5630();
  v60 = (v59 - v58);
  (*(v61 + 16))(v59 - v58);
  memcpy(v108, v60, sizeof(v108));
  v98 = v39;
  v99 = &off_66AB0;
  v62 = sub_530C(v97);
  v63 = v85;
  sub_27468(v85, v62);
  v96[3] = &type metadata for EmergencyCATProvider;
  v96[4] = &off_66C88;
  sub_1A498();
  v96[0] = swift_allocObject();
  memcpy((v96[0] + 16), v108, 0x70uLL);
  type metadata accessor for EmergencyConfirmationFlow();
  v64 = swift_allocObject();
  sub_52BC(v97, v98);
  sub_5620();
  __chkstk_darwin(v65);
  sub_5630();
  v66 = v39;
  v69 = v68 - v67;
  (*(v70 + 16))(v68 - v67);
  sub_52BC(v96, &type metadata for EmergencyCATProvider);
  sub_5620();
  __chkstk_darwin(v71);
  sub_5630();
  v74 = (v73 - v72);
  (*(v75 + 16))(v73 - v72);
  memcpy(v104, v74, 0x70uLL);
  v94 = v66;
  v95 = &off_66AB0;
  v76 = sub_530C(&v93);
  sub_1A0FC(v69, v76);
  *(v64 + 256) = &type metadata for EmergencyCATProvider;
  *(v64 + 264) = &off_66C88;
  sub_1A498();
  v77 = swift_allocObject();
  *(v64 + 232) = v77;
  memcpy((v77 + 16), v104, 0x70uLL);
  memcpy((v64 + 24), v107, 0x80uLL);
  sub_546C(&v93, v64 + 152);
  sub_546C(v103, v64 + 192);
  v78 = v100[1];
  *(v64 + 272) = v100[0];
  *(v64 + 288) = v78;
  v79 = v101;
  *(v64 + 16) = 0;
  *(v64 + 312) = 0;
  *(v64 + 320) = 0;
  *(v64 + 304) = v79;
  sub_253C(v96);
  sub_253C(v97);
  sub_253C(v102);
  *&v103[0] = v64;
  sub_27618(&qword_6BB48, type metadata accessor for EmergencyConfirmationFlow, &unk_516F8);
  v49 = sub_4FF04();

  sub_27660(v63, type metadata accessor for ConfirmationFlowConfigModel);
  v50 = v92;
LABEL_12:
  sub_51C0(v50, &qword_6B988, &qword_530B0);
  return v49;
}

uint64_t sub_2636C@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v71 = a2;
  v74 = a3;
  memcpy(__dst, __src, sizeof(__dst));
  v5 = sub_2208(&qword_6B988, &qword_530B0);
  sub_569C();
  __chkstk_darwin(v6);
  v70 = &v68 - v7;
  v8 = sub_2208(&unk_6D680, &qword_515B0);
  v9 = sub_72B0(v8);
  __chkstk_darwin(v9);
  v11 = &v68 - v10;
  v72 = sub_508C4();
  sub_569C();
  __chkstk_darwin(v12);
  sub_5630();
  v69 = v14 - v13;
  v15 = sub_2208(&qword_6CEC0, &unk_53910);
  v16 = sub_72B0(v15);
  __chkstk_darwin(v16);
  sub_5658();
  sub_27838();
  v18 = __chkstk_darwin(v17);
  v20 = &v68 - v19;
  __chkstk_darwin(v18);
  v22 = &v68 - v21;
  v23 = v3[3];
  v24 = v3[4];
  sub_1FE8(v3, v23);
  (*(v24 + 8))(v82, v23, v24);
  sub_28E0(v22, 1, 1, v5);
  v25 = v3[13];
  v26 = v3[14];
  sub_1FE8(v3 + 10, v25);
  v27 = *(v26 + 8);
  v75 = __src;
  if (v27(__src, v82, v25, v26))
  {
    sub_23BC(v3, v77);
    sub_23BC((v3 + 5), &v79);
    memcpy(v81, __dst, 0x80uLL);
    sub_1A058(v81);
    memcpy(v80, v81, sizeof(v80));
    v28 = v75;
    sub_5484(v75, &v76);
    sub_EA30();
    v72 = sub_4FF04();
    sub_EA84(v77);
    sub_277BC();
    sub_250F0();

    sub_277A0();
    sub_13D50();
    sub_28E0(v29, v30, v31, v5);
    sub_2781C(v20);
    sub_27778();
    v33 = (*(v32 + 32))(v28, v82, &unk_53910, __src);
    v34 = 0;
    v35 = 2;
    goto LABEL_8;
  }

  v68 = v5;
  v36 = v3[13];
  v37 = v3[14];
  sub_1FE8(v3 + 10, v36);
  if (((*(v37 + 16))(v75, v82, v36, v37) & 1) == 0)
  {
    sub_1FE8(v3 + 10, v3[13]);
    v48 = sub_277F0();
    if ((v49(v48) & 1) == 0)
    {
      sub_51C0(v22, &qword_6CEC0, &unk_53910);
      sub_253C(v82);
      goto LABEL_12;
    }

    v50 = v20;
    v51 = v75[13];
    v72 = v75[12];
    v52 = v3[3];
    v53 = v3[4];
    sub_1FE8(v3, v52);
    v54 = *(v53 + 16);

    v54(v78, v52, v53);
    v77[0] = v72;
    v77[1] = v51;
    sub_1A1BC();
    v72 = sub_4FF04();
    sub_1A210(v77);
    sub_277BC();
    sub_25110();

    sub_277A0();
    v34 = 1;
    sub_13D50();
    v5 = v68;
    sub_28E0(v55, v56, v57, v68);
    sub_2781C(v50);
    sub_27778();
    v58 = sub_277F0();
    v33 = v59(v58);
    v35 = 4;
LABEL_8:
    v60 = v73;
    sub_27568(v22, v73, &qword_6CEC0, &unk_53910);
    if (sub_513C(v60, 1, v5) != 1)
    {
      v61 = v70;
      sub_275C8(v60, v70, &qword_6B988, &qword_530B0);
      v62 = type metadata accessor for ConfirmationFlowConfigModel(0);
      v63 = v74;
      sub_275C8(v61, v74 + v62[5], &qword_6B988, &qword_530B0);
      sub_51C0(v22, &qword_6CEC0, &unk_53910);
      sub_253C(v82);
      sub_27568(v71, v63, &qword_6B988, &qword_530B0);
      *(v63 + v62[6]) = v72;
      *(v63 + v62[7]) = v35;
      *(v63 + v62[8]) = v34;
      *(v63 + v62[9]) = v33 & 1;
      sub_13D50();
      v67 = v62;
      return sub_28E0(v64, v65, v66, v67);
    }

    sub_275B8(v35);
    sub_277A0();
    sub_253C(v82);
    sub_51C0(v60, &qword_6CEC0, &unk_53910);
LABEL_12:
    v67 = type metadata accessor for ConfirmationFlowConfigModel(0);
    v64 = v74;
    v65 = 1;
    v66 = 1;
    return sub_28E0(v64, v65, v66, v67);
  }

  v38 = v3[3];
  v39 = v3[4];
  sub_1FE8(v3, v38);
  (*(v39 + 16))(v77, v38, v39);
  sub_50984();
  v40 = sub_4FD64();
  result = sub_513C(v11, 1, v40);
  if (result != 1)
  {
    v42 = v69;
    sub_2970();
    sub_508B4();
    sub_27618(&qword_6C7B0, &type metadata accessor for AppPunchOutFlow, &protocol conformance descriptor for AppPunchOutFlow);
    v72 = sub_4FF04();
    sub_27660(v42, &type metadata accessor for AppPunchOutFlow);
    sub_277BC();
    sub_25110();

    sub_277A0();
    sub_13D50();
    v5 = v68;
    sub_28E0(v43, v44, v45, v68);
    sub_2781C(v20);
    sub_27778();
    v46 = sub_277F0();
    v33 = v47(v46);
    v34 = 2;
    v35 = 3;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void *sub_26AF4(const char *a1, const void *a2, void (*a3)(uint64_t), const char *a4)
{
  v40[0] = a4;
  v40[1] = a1;
  v42 = sub_50B04();
  sub_5620();
  *&v41 = v6;
  __chkstk_darwin(v7);
  sub_5630();
  v10 = v9 - v8;
  v11 = &qword_6B988;
  sub_2208(&qword_6B988, &qword_530B0);
  sub_569C();
  __chkstk_darwin(v12);
  sub_5658();
  v15 = v13 - v14;
  __chkstk_darwin(v16);
  v18 = v40 - v17;
  v45 = &type metadata for EmergencyCATProvider;
  v46 = &off_66C88;
  sub_1A498();
  v44[0] = swift_allocObject();
  memcpy((v44[0] + 16), a2, 0x70uLL);
  sub_1FE8(v44, &type metadata for EmergencyCATProvider);

  v19 = sub_22F0(a2, v43);
  a3(v19);

  v20 = sub_50D64();
  v22 = v21;
  sub_51C0(v18, &qword_6B988, &qword_530B0);
  if (v22)
  {
    sub_1FE8(v44, v45);

    sub_2F44();

    v11 = sub_50D64();
    v24 = v23;
    sub_51C0(v15, &qword_6B988, &qword_530B0);
    if (v24)
    {
      sub_2208(&qword_6C1C0, &unk_51FF0);
      inited = swift_initStackObject();
      v42 = v11;
      v26 = inited;
      v41 = xmmword_51780;
      *(inited + 16) = xmmword_51780;

      v26[4] = sub_50A84();
      v26[5] = v27;
      v26[9] = &type metadata for String;
      v26[6] = 0x656D7269666E6F63;
      v26[7] = 0xE900000000000064;
      v28 = sub_50B24();
      v47 = v20;
      v48 = v22;
      v49 = 0xD000000000000035;
      v50 = 0x80000000000551D0;
      v51 = v28;
      v29 = swift_initStackObject();
      *(v29 + 16) = v41;

      *(v29 + 32) = sub_50A84();
      *(v29 + 40) = v30;
      *(v29 + 72) = &type metadata for String;
      *(v29 + 48) = 0x64657463656A6572;
      *(v29 + 56) = 0xE800000000000000;
      v31 = sub_50B24();
      v43[0] = v42;
      v43[1] = v24;
      v43[2] = 0xD000000000000035;
      v43[3] = 0x80000000000551D0;
      v43[4] = v31;
      v32 = sub_50904();

      swift_bridgeObjectRelease_n();

      swift_bridgeObjectRelease_n();
      goto LABEL_8;
    }
  }

  v33 = sub_50AE4();
  sub_2970();
  swift_beginAccess();
  v34 = v41;
  v35 = v42;
  (*(v41 + 16))(v10, v33, v42);
  v36 = sub_50AF4();
  v37 = sub_50BE4();
  if (sub_27800(v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_0, v36, v11, v40[0], v38, 2u);
    sub_24630();
  }

  (*(v34 + 8))(v10, v35);
  v32 = &_swiftEmptyArrayStorage;
LABEL_8:
  sub_253C(v44);
  return v32;
}

void *sub_26F6C(const void *a1, char *a2, const void *a3)
{
  v6 = sub_50B04();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = v36 - v12;
  __chkstk_darwin(v11);
  v15 = v36 - v14;
  v37 = &type metadata for EmergencyCATProvider;
  v38 = &off_66C88;
  v36[0] = swift_allocObject();
  memcpy((v36[0] + 16), a3, 0x70uLL);
  memcpy(v39, a1, sizeof(v39));
  if (sub_E51C(v39) == 1)
  {
    sub_22F0(a3, v40);
    v16 = sub_50AE4();
    swift_beginAccess();
    (*(v7 + 16))(v15, v16, v6);
    v17 = sub_50AF4();
    v18 = sub_50BD4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "orgInfo is nil. Not making snippets.", v19, 2u);
    }

    (*(v7 + 8))(v15, v6);
  }

  else
  {
    memcpy(v40, v39, sizeof(v40));
    sub_1FE8(a2, *(a2 + 3));
    sub_22F0(a3, __dst);
    if ((sub_500D4() & 1) == 0)
    {
      sub_1FE8(a2, *(a2 + 3));
      if ((sub_500B4() & 1) == 0)
      {
        if (sub_509A4())
        {
          v26 = sub_1FE8(v36, v37);
          memcpy(__dst, v26, 0x70uLL);
          v27 = "Failed to execute label CATs for makeCallCancelButtons";
          v28 = sub_24C1C;
        }

        else if (sub_509C4())
        {
          v29 = sub_1FE8(v36, v37);
          memcpy(__dst, v29, 0x70uLL);
          v27 = "Failed to execute label CATs for makeOpenCancelButtons";
          v28 = sub_250B0;
        }

        else
        {
          if ((v40[13] & 0x2000000000000000) != 0)
          {
            v30 = HIBYTE(v40[13]) & 0xFLL;
          }

          else
          {
            v30 = v40[12] & 0xFFFFFFFFFFFFLL;
          }

          if (!v30)
          {
            v32 = sub_50AE4();
            swift_beginAccess();
            (*(v7 + 16))(v10, v32, v6);
            v33 = sub_50AF4();
            v34 = sub_50BE4();
            if (os_log_type_enabled(v33, v34))
            {
              v35 = swift_slowAlloc();
              *v35 = 0;
              _os_log_impl(&dword_0, v33, v34, "orgInfo is in an unknown state. Not making snippets.", v35, 2u);
            }

            (*(v7 + 8))(v10, v6);
            goto LABEL_10;
          }

          v31 = sub_1FE8(v36, v37);
          memcpy(__dst, v31, 0x70uLL);
          v27 = "Failed to execute label CATs for makeSearchCancelButtons";
          v28 = sub_250D0;
        }

        v24 = sub_26AF4(a2, __dst, v28, v27);
        goto LABEL_11;
      }
    }

    v20 = sub_50AE4();
    swift_beginAccess();
    (*(v7 + 16))(v13, v20, v6);
    v21 = sub_50AF4();
    v22 = sub_50BD4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "Device is HomePod or AppleTV. Not making snippets.", v23, 2u);
    }

    (*(v7 + 8))(v13, v6);
  }

LABEL_10:
  v24 = &_swiftEmptyArrayStorage;
LABEL_11:
  sub_253C(v36);
  return v24;
}

uint64_t sub_27468(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmationFlowConfigModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274CC()
{

  sub_1A498();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_27568(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_2784C(a1, a2, a3, a4);
  sub_569C();
  (*(v6 + 16))(v4, v5);
  return v4;
}

unint64_t sub_275B8(unint64_t result)
{
  if (result != 6)
  {
    return sub_1382C(result);
  }

  return result;
}

uint64_t sub_275C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_2784C(a1, a2, a3, a4);
  sub_569C();
  (*(v6 + 32))(v4, v5);
  return v4;
}

uint64_t sub_27618(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_27660(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_569C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_276C0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_27700(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
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
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_277A0()
{

  return sub_51C0(v2, v0, v1);
}

uint64_t sub_277BC()
{
  sub_1FE8((v0 + 40), *(v0 + 64));
}

BOOL sub_27800(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_2781C(uint64_t a1)
{

  return sub_275C8(a1, v3, v1, v2);
}

uint64_t sub_2784C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_2208(a3, a4);
}

uint64_t type metadata accessor for EmergencyGeneralEmergencyCATs(uint64_t a1)
{
  result = qword_6CEC8;
  if (!qword_6CEC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27918(char a1)
{
  sub_2208(&qword_6BBC8, &unk_518B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_51780;
  *(v2 + 32) = 0xD00000000000001BLL;
  *(v2 + 40) = 0x8000000000055CF0;
  *(v2 + 72) = &type metadata for Bool;
  *(v2 + 48) = a1;
  sub_50794();
}

uint64_t sub_27A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_50864();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2208(&unk_6D680, &qword_515B0);
  __chkstk_darwin(v9 - 8);
  sub_8E60(a1, &v13 - v10);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_50784();
  (*(v6 + 8))(a2, v5);
  sub_8ED0(a1);
  return v11;
}

uint64_t getEnumTagSinglePayload for EmergencyFlowError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for EmergencyFlowError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x27D38);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_27D88()
{
  result = qword_6CF18;
  if (!qword_6CF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6CF18);
  }

  return result;
}

uint64_t sub_27DEC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_503A4();
  v5 = sub_72B0(v4);
  __chkstk_darwin(v5);
  sub_1A3A0();
  sub_EE14(v6);
  v118 = sub_50A24();
  __chkstk_darwin(v118);
  sub_1A3A0();
  sub_EE14(v7);
  v119 = sub_50354();
  sub_8558();
  v121 = v8;
  __chkstk_darwin(v9);
  sub_1A3A0();
  sub_EE14(v10);
  v127 = sub_50334();
  sub_8558();
  v129 = v11;
  __chkstk_darwin(v12);
  sub_1A3A0();
  v128 = v13;
  v14 = sub_502E4();
  sub_8558();
  v16 = v15;
  __chkstk_darwin(v17);
  v19 = &v113 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_50B04();
  sub_8558();
  v22 = v21;
  v24 = __chkstk_darwin(v23);
  v125 = &v113 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v26);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v27);
  sub_EEF4();
  v124 = v28;
  __chkstk_darwin(v29);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v30);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v31);
  v33 = &v113 - v32;
  v34 = sub_50AE4();
  swift_beginAccess();
  v35 = *(v22 + 16);
  v131 = v22 + 16;
  v132 = v34;
  v130 = v35;
  v35(v33, v34, v20);
  v36 = *(v16 + 16);
  v126 = a1;
  v37 = v14;
  v36(v19, a1, v14);
  v38 = sub_50AF4();
  v39 = sub_50BD4();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v116 = v20;
    v41 = v40;
    v115 = swift_slowAlloc();
    v135[0] = v115;
    *v41 = 136315138;
    sub_2AAE4(&qword_6C078, 255, &type metadata accessor for Input, &protocol conformance descriptor for Input);
    v42 = sub_50CD4();
    v114 = v22;
    v43 = v2;
    v45 = v44;
    v47 = *(v16 + 8);
    v46 = v16 + 8;
    v47(v19, v37);
    v48 = sub_4DE68(v42, v45, v135);
    v2 = v43;

    *(v41 + 4) = v48;
    _os_log_impl(&dword_0, v38, v39, "#StopSirenFlow onInput: %s", v41, 0xCu);
    v49 = v115;
    sub_253C(v115);
    sub_5674(v49);
    v50 = v41;
    v20 = v116;
    sub_5674(v50);

    v51 = *(v114 + 8);
  }

  else
  {

    v53 = *(v16 + 8);
    v46 = v16 + 8;
    v53(v19, v37);
    v51 = *(v22 + 8);
  }

  v52 = sub_2AE20();
  v51(v52);
  v54 = *(v2 + 40);
  v55 = *(v2 + 48);
  sub_1FE8((v2 + 16), v54);
  (*(v55 + 8))(v135, v54, v55);
  sub_1FE8(v135, v136);
  LOBYTE(v54) = sub_500A4();
  sub_253C(v135);
  if ((v54 & 1) == 0)
  {
    sub_2AC34();
    v66 = v125;
    sub_2AC58();
    v67();
    v68 = sub_50AF4();
    v69 = sub_50BD4();
    if (sub_EF00(v69))
    {
      v70 = sub_5718();
      *v70 = 0;
      _os_log_impl(&dword_0, v68, v66, "#StopSirenFlow Not on watch. Flagging for remote execution.", v70, 2u);
      sub_5674(v70);
    }

    (v51)(v66, v20);
    v71 = 3;
    goto LABEL_11;
  }

  v56 = v128;
  sub_502D4();
  v57 = v127;
  v58 = (*(v129 + 88))(v56, v127);
  if (v58 == enum case for Parse.NLv3IntentOnly(_:))
  {
    sub_2AC34();
    sub_2AC58();
    v59();
    v60 = sub_50AF4();
    v61 = sub_50BD4();
    if (sub_EF00(v61))
    {
      v62 = sub_5718();
      sub_EEC8(v62);
      v65 = "#StopSirenFlow onInput .NLv3IntentOnly";
LABEL_15:
      sub_EED4(&dword_0, v63, v64, v65);
      sub_EE58();
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  if (v58 == enum case for Parse.directInvocation(_:))
  {
    sub_2AC34();
    sub_2AC58();
    v72();
    v60 = sub_50AF4();
    v73 = sub_50BD4();
    if (sub_EF00(v73))
    {
      v74 = sub_5718();
      sub_EEC8(v74);
      v65 = "#StopSirenFlow onInput directInvocation";
      goto LABEL_15;
    }

LABEL_16:

    v75 = sub_2AE20();
    v51(v75);
    *(v2 + 136) = 2;
    (*(v129 + 8))(v128, v57);
    return 1;
  }

  if (v58 != enum case for Parse.uso(_:))
  {
    sub_2AC34();
    v90 = v117;
    sub_2AC58();
    v91();
    v92 = sub_50AF4();
    v93 = sub_50BE4();
    if (sub_27800(v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v133[0] = v95;
      *v94 = 136315138;
      v134 = 0;
      v96 = sub_50B64();
      v98 = sub_4DE68(v96, v97, v133);

      *(v94 + 4) = v98;
      _os_log_impl(&dword_0, v92, v46, "%s", v94, 0xCu);
      sub_253C(v95);
      v99 = v95;
      v57 = v127;
      sub_5674(v99);
      sub_5674(v94);
    }

    (v51)(v90, v20);
    (*(v129 + 8))(v128, v57);
    return 0;
  }

  v77 = v128;
  (*(v129 + 96))(v128, v57);
  v78 = (*(v121 + 32))(v123, v77, v119);
  sub_2AC68(v78, v133);
  sub_2AC58();
  v79();
  v80 = sub_50AF4();
  v81 = sub_50BD4();
  if (sub_EF00(v81))
  {
    v82 = sub_5718();
    sub_EEC8(v82);
    sub_EED4(&dword_0, v83, v84, "#StopSirenFlow onInput .uso");
    sub_EE58();
  }

  (v51)(v120, v20);
  sub_50344();
  v136 = &type metadata for EmergencyFeatureFlagsKey;
  v137 = sub_EB68();
  LOBYTE(v135[0]) = 2;
  sub_50374();
  sub_253C(v135);
  v85 = v122;
  sub_50A14();
  v86 = v118;
  if (*(v85 + *(v118 + 24)) != 35)
  {
    if (sub_50A44() == 0x6E65726973 && v87 == 0xE500000000000000)
    {
    }

    else
    {
      v89 = sub_50CE4();

      if ((v89 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    switch(*(v122 + *(v86 + 20)))
    {
      case 5:

        break;
      case 8:
        goto LABEL_36;
      default:
        v100 = sub_50CE4();

        if ((v100 & 1) == 0)
        {
          goto LABEL_36;
        }

        break;
    }

    sub_2AC94();
    v101 = sub_2AD48();
    v102(v101);
    v71 = 2;
LABEL_11:
    *(v2 + 136) = v71;
    return 1;
  }

LABEL_36:
  sub_2AC34();
  sub_2AC58();
  v103();
  v104 = sub_50AF4();
  v105 = sub_50BD4();
  if (sub_EF00(v105))
  {
    v106 = sub_5718();
    sub_EEC8(v106);
    sub_EED4(&dword_0, v107, v108, "#StopSirenFlow Received invalid input. Ignoring.");
    sub_EE58();
  }

  v109 = sub_2AE20();
  v51(v109);
  sub_2AC94();
  v110 = sub_2AD48();
  v112(v110, v111);
  return 0;
}

uint64_t sub_289B4()
{
  sub_EF64();
  v1[78] = v0;
  v1[77] = v2;
  v3 = sub_2208(&qword_6B988, &qword_530B0);
  sub_72B0(v3);
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v4 = sub_50884();
  v1[81] = v4;
  sub_72B0(v4);
  v1[82] = sub_1F9DC();
  v5 = sub_4FD64();
  sub_72B0(v5);
  v1[83] = sub_1F9DC();
  v6 = sub_508C4();
  v1[84] = v6;
  sub_72B0(v6);
  v1[85] = sub_1F9DC();
  v7 = sub_2208(&qword_6C180, &qword_51FC0);
  sub_72B0(v7);
  v1[86] = sub_1F9DC();
  v8 = sub_50104();
  v1[87] = v8;
  sub_1F9CC(v8);
  v1[88] = v9;
  v1[89] = sub_1F9DC();
  v10 = sub_50B04();
  v1[90] = v10;
  sub_1F9CC(v10);
  v1[91] = v11;
  v1[92] = swift_task_alloc();
  v1[93] = swift_task_alloc();
  v1[94] = swift_task_alloc();
  v1[95] = swift_task_alloc();
  v1[96] = swift_task_alloc();
  v12 = sub_2AC10();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_28BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_2AD2C();
  a21 = v23;
  a22 = v24;
  sub_2AD74();
  a20 = v22;
  v25 = v22[91];
  sub_50AE4();
  swift_beginAccess();
  v28 = *(v25 + 16);
  v26 = v25 + 16;
  v27 = v28;
  v29 = sub_EF3C();
  v28(v29);
  v30 = sub_50AF4();
  v31 = sub_50BD4();
  if (sub_27800(v31))
  {
    v32 = sub_5718();
    *v32 = 0;
    sub_EF90(&dword_0, v33, v34, "#StopSirenFlow execute");
    sub_5674(v32);
  }

  v35 = v22[91];
  v36 = v22[78];

  v37 = *(v35 + 8);
  v38 = sub_5668();
  v39 = v37(v38);
  switch(*(v36 + 136))
  {
    case 1:
      sub_2ACDC();
      sub_4FFE4();
      sub_2ACF0(v22 + 52);
      v71 = sub_2AD80();
      v72(v71);
      sub_50014();
      sub_2AC20();
      v73 = sub_2AC84();
      v74(v73);
      v22[99] = sub_2AB60();
      v44 = swift_task_alloc();
      v22[100] = v44;
      *v44 = v22;
      v45 = sub_29684;
      goto LABEL_23;
    case 2:
      sub_2AC68(v39, (v22 + 68));
      v46 = sub_EF3C();
      v27(v46);
      v47 = sub_50AF4();
      v48 = sub_50BD4();
      if (sub_27800(v48))
      {
        v49 = sub_5718();
        *v49 = 0;
        sub_EF90(&dword_0, v50, v51, "#StopSirenFlow needsExecution");
        sub_5674(v49);
      }

      v52 = v22[78];

      v53 = sub_5668();
      v37(v53);
      sub_23BC(v52 + 144, (v22 + 12));
      sub_1FE8(v22 + 12, v22[15]);
      v54 = *(v52 + 40);
      v55 = *(v52 + 48);
      sub_1FE8((v52 + 16), v54);
      (*(v55 + 8))(v54, v55);
      v56 = sub_2D45C(v22 + 17);
      sub_253C(v22 + 17);
      v57 = sub_253C(v22 + 12);
      if ((v56 & 1) == 0)
      {
        sub_2AC68(v57, (v22 + 71));
        v75 = sub_EF3C();
        v27(v75);

        v76 = sub_50AF4();
        v77 = sub_50BD4();

        v78 = os_log_type_enabled(v76, v77);
        v79 = v22[93];
        v80 = v22[90];
        if (v78)
        {
          v81 = swift_slowAlloc();
          v105 = v80;
          a11 = swift_slowAlloc();
          v82 = a11;
          *v81 = 136315138;
          v84 = *(v52 + 40);
          v83 = *(v52 + 48);
          sub_1FE8((v52 + 16), v84);
          (*(v83 + 8))(v84, v83);
          sub_2208(&unk_6D040, &qword_53408);
          v85 = sub_50B64();
          v87 = sub_4DE68(v85, v86, &a11);

          *(v81 + 4) = v87;
          _os_log_impl(&dword_0, v76, v77, "#StopSirenFlow Cannot route to Siren from this device: %s", v81, 0xCu);
          sub_253C(v82);
          sub_EE58();
          sub_5674(v81);

          v88 = v105;
          v89 = v79;
        }

        else
        {

          v89 = v79;
          v88 = v80;
        }

        (v37)(v89, v88);
        sub_2ACDC();
        sub_4FFE4();
        sub_2ACF0(v22 + 22);
        v99 = sub_2AD80();
        v100(v99);
        sub_50014();
        sub_2AC20();
        v101 = sub_2AC84();
        v102(v101);
        v22[104] = sub_2AB60();
        v44 = swift_task_alloc();
        v22[105] = v44;
        *v44 = v22;
        v45 = sub_29DE8;
LABEL_23:
        v44[1] = v45;
        sub_2ACC0();

        return dispatch thunk of SiriKitEventSending.sendAsync(_:)(v103);
      }

      sub_1FE8((v52 + 144), *(v22[78] + 168));
      v58 = sub_2D4D0();
      if ((v58 & 1) == 0)
      {
        v90 = v22[94];
        sub_2AC68(v58, (v22 + 74));
        v91 = sub_EF3C();
        v27(v91);
        sub_50AF4();
        v92 = sub_50BD4();
        if (sub_EF00(v92))
        {
          v93 = sub_5718();
          sub_EEC8(v93);
          sub_EED4(&dword_0, v94, v95, "#StopSirenFlow App not installed on this device nor companion.");
          sub_EE58();
        }

        sub_2ADC4();
        v96 = sub_5668();
        v37(v96);
        sub_4FFE4();
        sub_2ACF0(v22 + 37);
        (*(v52 + 104))(v90, enum case for ActivityType.resolveApp(_:), v26);
        sub_50014();
        sub_2AC20();
        v97 = sub_2AC84();
        v98(v97);
        v22[102] = sub_2AB60();
        v44 = swift_task_alloc();
        v22[103] = v44;
        *v44 = v22;
        v45 = sub_29BC0;
        goto LABEL_23;
      }

      v59 = swift_task_alloc();
      v22[101] = v59;
      *v59 = v22;
      v59[1] = sub_29854;
      sub_2ACC0();

      return sub_2A340();
    case 3:
      v62 = v22[92];
      sub_2AC68(v39, (v22 + 65));
      v63 = sub_EF3C();
      v27(v63);
      sub_50AF4();
      v64 = sub_50BD4();
      if (sub_EF00(v64))
      {
        v65 = sub_5718();
        sub_EEC8(v65);
        sub_EED4(&dword_0, v66, v67, "#StopSirenFlow Phone to watch handoff not enabled.");
        sub_EE58();
      }

      sub_2ADC4();
      v68 = sub_5668();
      v37(v68);
      sub_4FFE4();
      sub_2ACF0(v22 + 2);
      (*(v36 + 104))(v62, enum case for ActivityType.checkCompanionCompatibility(_:), v26);
      sub_50014();
      sub_2AC20();
      v69 = sub_2AC84();
      v70(v69);
      v22[106] = sub_2AB60();
      v44 = swift_task_alloc();
      v22[107] = v44;
      *v44 = v22;
      v45 = sub_2A010;
      goto LABEL_23;
    default:
      sub_2ACDC();
      sub_4FFE4();
      sub_2ACF0(v22 + 57);
      v40 = sub_2AD80();
      v41(v40);
      sub_50014();
      sub_2AC20();
      v42 = sub_2AC84();
      v43(v42);
      v22[97] = sub_2AB60();
      v44 = swift_task_alloc();
      v22[98] = v44;
      *v44 = v22;
      v45 = sub_29478;
      goto LABEL_23;
  }
}

uint64_t sub_29478()
{
  sub_EF64();
  sub_2AD20();
  v1 = *v0;
  sub_EF2C();
  *v2 = v1;

  v3 = sub_2AC10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_29578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_2AD2C();
  sub_2AD74();
  v15 = v14[78];
  v16 = v14[77];
  sub_253C(v14 + 57);
  sub_E9D0();
  v17 = swift_allocError();
  *v18 = 2;
  sub_1D68(v17, v15 + 16, (v15 + 56), v16);

  sub_2AB2C();
  v30 = v20;
  v31 = v19;

  sub_2AD68();
  sub_2ACC0();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30, v31, a12, a13, a14);
}

uint64_t sub_29684()
{
  sub_EF64();
  sub_2AD20();
  v1 = *v0;
  sub_EF2C();
  *v2 = v1;

  v3 = sub_2AC10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_29784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_2AD2C();
  sub_2AD74();
  sub_253C((v14 + 416));
  sub_50194();
  sub_2AB2C();
  v26 = v16;
  v27 = v15;

  sub_2AD68();
  sub_2ACC0();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, v26, v27, a12, a13, a14);
}

uint64_t sub_29854()
{
  sub_EF64();
  sub_2AD20();
  *(v1 + 864) = v0;

  v2 = sub_2AC10();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_29944()
{
  v13 = v0;
  if (*(v0 + 864) == 1)
  {
    v1 = *(v0 + 680);
    v2 = *(v0 + 664);
    v3 = *(v0 + 624);
    v4 = v3[5];
    v5 = v3[6];
    sub_1FE8(v3 + 2, v4);
    (*(v5 + 16))(v12, v4, v5);
    sub_2D1AC(v2);
    sub_508B4();
    sub_2AAE4(&qword_6C7B0, 255, &type metadata accessor for AppPunchOutFlow, &protocol conformance descriptor for AppPunchOutFlow);
    sub_4FF04();
    v6 = &type metadata accessor for AppPunchOutFlow;
  }

  else
  {
    v1 = *(v0 + 656);
    v7 = *(v0 + 624);
    sub_2AD90();
    sub_24900();

    sub_23BC(v7 + 16, v0 + 376);
    sub_50874();
    sub_2ABD0();
    sub_2AAE4(v8, 255, v9, &protocol conformance descriptor for OutputFlow);
    sub_4FF04();
    v6 = &type metadata accessor for OutputFlow;
  }

  sub_2AA84(v1, v6);
  sub_50184();

  sub_2AB2C();

  sub_2AD68();

  return v10();
}

uint64_t sub_29BC0()
{
  sub_EF64();
  sub_2AD20();
  v1 = *v0;
  sub_EF2C();
  *v2 = v1;

  v3 = sub_2AC10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_29CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_2AD2C();
  sub_2AD74();
  sub_2ADEC();
  sub_253C((v14 + 296));
  sub_2AD90();
  sub_248E0();

  v16 = sub_23BC(v15 + 16, v14 + 336);
  sub_2AE04(v16, &_swiftEmptyArrayStorage, v14 + 336);
  sub_2ABD0();
  v19 = sub_2AAE4(v17, 255, v18, &protocol conformance descriptor for OutputFlow);
  sub_2AE2C(v19);
  sub_2ABE8();
  sub_2AB2C();
  v31 = v21;
  v32 = v20;

  sub_2AD68();
  sub_2ACC0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, v31, v32, a12, a13, a14);
}

uint64_t sub_29DE8()
{
  sub_EF64();
  sub_2AD20();
  v1 = *v0;
  sub_EF2C();
  *v2 = v1;

  v3 = sub_2AC10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_29EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_2AD2C();
  sub_2AD74();
  sub_2ADEC();
  sub_253C((v14 + 176));
  sub_2AD90();
  sub_249A0();

  v16 = sub_23BC(v15 + 16, v14 + 216);
  sub_2AE04(v16, &_swiftEmptyArrayStorage, v14 + 216);
  sub_2ABD0();
  v19 = sub_2AAE4(v17, 255, v18, &protocol conformance descriptor for OutputFlow);
  sub_2AE2C(v19);
  sub_2ABE8();
  sub_2AB2C();
  v31 = v21;
  v32 = v20;

  sub_2AD68();
  sub_2ACC0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, v31, v32, a12, a13, a14);
}

uint64_t sub_2A010()
{
  sub_EF64();
  sub_2AD20();
  v1 = *v0;
  sub_EF2C();
  *v2 = v1;

  v3 = sub_2AC10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_2A110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_2AD2C();
  sub_2AD74();
  v15 = v14[78];
  sub_253C(v14 + 2);
  sub_1FE8(v15 + 18, v15[21]);
  v16 = sub_2D4D0();
  sub_1FE8(v15 + 7, v15[10]);

  if (v16)
  {
    sub_24920();
  }

  else
  {
    sub_249A0();
  }

  v17 = v14[80];
  v18 = v14[79];
  v19 = v14[78];

  sub_234C(v18, v17);
  v20 = sub_23BC(v19 + 16, (v14 + 7));
  sub_2AE04(v20, &_swiftEmptyArrayStorage, (v14 + 7));
  sub_2ABD0();
  sub_2AAE4(v21, 255, v22, &protocol conformance descriptor for OutputFlow);
  sub_50174();
  sub_2ABE8();
  sub_24D4(v18);
  sub_2AB2C();
  v34 = v24;
  v35 = v23;

  sub_2AD68();
  sub_2ACC0();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, v34, v35, a12, a13, a14);
}

uint64_t sub_2A2B4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for StopSirenFlow();
  sub_2AAE4(&qword_6D038, v2, type metadata accessor for StopSirenFlow, &unk_533B0);
  return sub_4FF14();
}

uint64_t sub_2A340()
{
  sub_EF64();
  v1 = sub_50B04();
  v0[5] = v1;
  sub_1F9CC(v1);
  v0[6] = v2;
  v0[7] = sub_1F9DC();
  v3 = sub_2AC10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_2A3E0(uint64_t a1)
{
  v3 = v1[6];
  v2 = v1[7];
  v4 = v1[5];
  v5 = sub_50AE4();
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_50AF4();
  v7 = sub_50BE4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = sub_5718();
    sub_EEC8(v8);
    _os_log_impl(&dword_0, v6, v7, "#StopSirenFlow Can't tell if Siren is running from this device.", v5, 2u);
    sub_EE58();
  }

  v10 = v1[6];
  v9 = v1[7];
  v11 = v1[5];

  (*(v10 + 8))(v9, v11);

  v12 = v1[1];

  return v12(1);
}

void *sub_2A4FC()
{
  sub_253C(v0 + 2);
  sub_253C(v0 + 7);
  sub_55C8((v0 + 12));
  sub_253C(v0 + 18);
  return v0;
}

uint64_t sub_2A534()
{
  sub_2A4FC();

  return _swift_deallocClassInstance(v0, 184, 7);
}

_BYTE *storeEnumTagSinglePayload for StopSirenFlow.StopSirenFlowState(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2A658);
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

unint64_t sub_2A694()
{
  result = qword_6D030;
  if (!qword_6D030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6D030);
  }

  return result;
}

uint64_t sub_2A710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2A7C0;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_2A7C0()
{
  sub_EF64();
  v2 = v1;
  sub_2AD20();
  v3 = *v0;
  sub_EF2C();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_2A8D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2A96C;

  return sub_289B4();
}

uint64_t sub_2A96C()
{
  sub_EF64();
  sub_2AD20();
  v1 = *v0;
  sub_EF2C();
  *v2 = v1;

  sub_2AD68();

  return v3();
}

uint64_t sub_2AA4C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for StopSirenFlow();

  return sub_4FF64();
}

uint64_t sub_2AA84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2AAE4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_2AB60()
{
  sub_28E0(v0, 0, 1, v1);

  return sub_50024();
}

uint64_t sub_2ABE8()
{

  return sub_2AA84(v0, &type metadata accessor for OutputFlow);
}

uint64_t sub_2AC34()
{

  return swift_beginAccess();
}

uint64_t sub_2AC68(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_2AC94()
{
  v2 = *(v0 - 272);

  return sub_2AA84(v2, &type metadata accessor for EmergencyDialogAct);
}

uint64_t sub_2ACF0(void *a1)
{
  sub_1FE8(a1, v1);

  return sub_50034();
}

uint64_t sub_2AD90()
{
  sub_1FE8((v0 + 56), *(v0 + 80));
}

void sub_2ADC4()
{
}

uint64_t sub_2AE04(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_50874();
}

uint64_t sub_2AE2C(uint64_t a1)
{

  return sub_50174();
}

uint64_t sub_2AE4C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2AE70(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483642);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2AEC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

void *sub_2AF18(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t EmergencyOrganizationInfoProvider.init(flowConfig:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  sub_50B04();
  sub_8558();
  v33 = v4;
  v34 = v3;
  __chkstk_darwin(v3);
  v32 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_4FDA4();
  sub_8558();
  v35 = v6;
  v8 = __chkstk_darwin(v7);
  v36 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v29 - v10;
  v13 = a1[3];
  v12 = a1[4];
  v14 = sub_1FE8(a1, v13);
  v15 = *(v12 + 8);
  v15(v40, v13, v12);
  sub_1FE8(v40, v41);
  sub_50084();
  if (v16)
  {
    sub_253C(v40);
    sub_4FD84();
  }

  else
  {
    v29 = v14;
    v30 = v11;
    v31 = v15;
    sub_253C(v40);
    v17 = sub_50AE4();
    swift_beginAccess();
    v18 = v32;
    v19 = v33;
    v20 = v34;
    (*(v33 + 16))(v32, v17, v34);
    v21 = sub_50AF4();
    v22 = sub_50BE4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "Failed to fetch preferencesLanguageCode. Falling back to siriLocale.", v23, 2u);
      v20 = v34;
    }

    (*(v19 + 8))(v18, v20);
    v31(v40, v13, v12);
    sub_1FE8(v40, v41);
    v11 = v30;
    sub_50054();
    sub_253C(v40);
  }

  v24 = v35;
  v25 = v37;
  (*(v35 + 16))(v36, v11, v37);
  v26 = a1[3];
  v27 = a1[4];
  sub_1FE8(a1, v26);
  (*(v27 + 24))(v39, v26, v27);
  [objc_allocWithZone(CLGeocoder) init];
  v41 = &type metadata for LocationService;
  v42 = &protocol witness table for LocationService;
  v40[0] = swift_allocObject();
  sub_508E4();
  sub_509E4();
  (*(v24 + 8))(v11, v25);
  return sub_253C(a1);
}

uint64_t sub_2B344()
{
  sub_253C((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_2B384(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

id sub_2B3D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2208(&unk_6D680, &qword_515B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  v9 = [objc_allocWithZone(SAUIAppPunchOut) init];
  sub_8E60(a3, v8);
  v10 = sub_4FD64();
  v12 = 0;
  if (sub_513C(v8, 1, v10) != 1)
  {
    sub_4FD44(v11);
    v12 = v13;
    (*(*(v10 - 8) + 8))(v8, v10);
  }

  [v9 setPunchOutUri:v12];

  sub_2208(&unk_6D0C0, &qword_53500);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_51790;
  *(v14 + 32) = v9;
  v15 = sub_2B558(a1, a2, v14);
  sub_8ED0(a3);
  return v15;
}

id sub_2B558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_2B5CC(a1, a2, v6);
  sub_2B630(a3, v6);

  return v6;
}

void sub_2B5CC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_50B44();

  [a3 setText:v4];
}

void sub_2B630(uint64_t a1, void *a2)
{
  sub_2208(&unk_6D0B0, &unk_534D8);
  isa = sub_50BC4().super.isa;

  [a2 setCommands:isa];
}

uint64_t sub_2B6B0(uint64_t a1)
{
  v1 = sub_50314();
  if (!v1)
  {
    v7 = 0u;
    v8 = 0u;
    goto LABEL_7;
  }

  v2 = v1;
  v3 = sub_50A84();
  sub_2B7EC(v2, &v7, v3, v4);

  if (!*(&v8 + 1))
  {
LABEL_7:
    sub_2B784(&v7);
    return 35;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 35;
  }

  v5 = sub_50A34();

  if (v5 == 35)
  {
    return 35;
  }

  return v5;
}

uint64_t sub_2B784(uint64_t a1)
{
  v2 = sub_2208(&qword_6C1A8, &qword_51FE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_2B7EC@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>, uint64_t a3@<X0>, uint64_t a4@<X1>)
{
  if (*(a1 + 16) && (v6 = sub_2C558(a3, a4), (v7 & 1) != 0))
  {
    v8 = *(a1 + 56) + 32 * v6;

    sub_2C5D0(v8, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_2B850(const void *a1)
{
  v2 = sub_50B04();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v49 - v7;
  v9 = sub_2208(&qword_6D0E0, &unk_534F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v49 - v10;
  memcpy(__dst, a1, 0x81uLL);
  v12 = sub_2C6F0(__dst);
  v49 = v6;
  v50 = a1;
  if (v12 > 1)
  {
    v19 = &_swiftEmptyArrayStorage;
  }

  else
  {
    v51 = v3;
    v13 = v2;
    nullsub_1();
    v15 = v14[8];
    v16 = v14[9];
    v18 = v14[6];
    v17 = v14[7];
    sub_2208(&unk_6D0C0, &qword_53500);
    v19 = swift_allocObject();
    v19[1] = xmmword_51790;
    v20 = objc_allocWithZone(INPersonHandle);

    v21 = sub_2C284(v15, v16, 2);
    v22 = sub_4FD34();
    sub_28E0(v11, 1, 1, v22);
    v23 = objc_allocWithZone(INPerson);

    *(v19 + 4) = sub_2C2F0(v21, v11, v18, v17, 0, 0, 0, 0, 0);
    v2 = v13;
    v3 = v51;
  }

  v24 = sub_50AE4();
  swift_beginAccess();
  v25 = *(v3 + 16);
  v25(v8, v24, v2);
  v26 = sub_50AF4();
  v27 = sub_50BD4();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v51 = v3 + 16;
    *v28 = 0;
    _os_log_impl(&dword_0, v26, v27, "Creating INStartCallIntent", v28, 2u);
  }

  v29 = *(v3 + 8);
  v29(v8, v2);
  memcpy(v52, v50, 0x81uLL);
  v30 = sub_2C6F0(v52);
  v51 = v3 + 8;
  if (v30)
  {
    if (v30 == 1)
    {
      nullsub_1();
      v31 = 2;
    }

    else
    {
      v31 = v30;
    }
  }

  else
  {
    nullsub_1();
    v31 = 1;
  }

  v32 = objc_allocWithZone(INStartCallIntent);
  v33 = sub_2C474(0, 0, 0, v31, 1, v19, 0, 1);
  v34 = sub_2C708([v33 backingStore]);
  if (v35 >> 60 == 15)
  {
    swift_beginAccess();
    v36 = v49;
    v25(v49, v24, v2);
    v37 = sub_50AF4();
    v38 = sub_50BF4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_0, v37, v38, "Unable to serialize INStartCallIntent", v39, 2u);
    }

    else
    {
    }

    v29(v36, v2);
    return 0;
  }

  else
  {
    v40 = v34;
    v41 = v35;
    sub_2208(&qword_6C1C0, &unk_51FF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_517D0;
    *(inited + 32) = 0x6449707061;
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = 0xD000000000000015;
    *(inited + 56) = 0x8000000000055DA0;
    *(inited + 72) = &type metadata for String;
    strcpy((inited + 80), "intentTypeName");
    *(inited + 95) = -18;
    v43 = [v33 typeName];
    v44 = sub_50B54();
    v46 = v45;

    *(inited + 96) = v44;
    *(inited + 104) = v46;
    *(inited + 120) = &type metadata for String;
    *(inited + 128) = 0x6144746E65746E69;
    *(inited + 168) = &type metadata for Data;
    *(inited + 136) = 0xEA00000000006174;
    *(inited + 144) = v40;
    *(inited + 152) = v41;
    sub_2C778(v40, v41);
    v47 = sub_50B24();

    sub_2C7D0(v40, v41);
  }

  return v47;
}

id sub_2BE64(const void *a1, void *a2)
{
  sub_2C83C(0, &qword_6D0D0, SKIDirectInvocationPayload_ptr);
  v4 = sub_48F24(0xD000000000000034, 0x8000000000055210);
  v5 = sub_2B850(a1);
  isa = v5;
  if (v5)
  {
    sub_2BFC0(v5);

    isa = sub_50B14().super.isa;
  }

  [v4 setUserData:isa];

  sub_1FE8(a2, a2[3]);
  v7 = sub_500E4();
  v8 = objc_opt_self();
  v9 = [v8 runSiriKitExecutorCommandWithContext:v7 payload:v4];
  v10 = [v8 wrapCommandInStartLocalRequest:v9];

  return v10;
}

uint64_t sub_2BFC0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_2208(&qword_6D0D8, &qword_534E8);
    v2 = sub_50C94();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_2C5D0(*(a1 + 56) + 32 * v11, v35);
    *&v34 = v14;
    *(&v34 + 1) = v13;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_2C6E0(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_2C6E0(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_2C6E0(v31, v32);
    result = sub_50C44(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *&v7[8 * v17];
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *&v7[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
    v23 = v2[6] + 40 * v18;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    result = sub_2C6E0(v32, (v2[7] + 32 * v18));
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

id sub_2C284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_50B44();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithValue:v5 type:a3];

  return v6;
}

id sub_2C2F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v16 = sub_4FD34();
  v17 = 0;
  if (sub_513C(a2, 1, v16) != 1)
  {
    v17 = sub_4FD24();
    (*(*(v16 - 8) + 8))(a2, v16);
  }

  if (a4)
  {
    v18 = sub_50B44();
  }

  else
  {
    v18 = 0;
  }

  if (!a7)
  {
    v19 = 0;
    if (a9)
    {
      goto LABEL_8;
    }

LABEL_10:
    v20 = 0;
    goto LABEL_11;
  }

  v19 = sub_50B44();

  if (!a9)
  {
    goto LABEL_10;
  }

LABEL_8:
  v20 = sub_50B44();

LABEL_11:
  v21 = [v10 initWithPersonHandle:a1 nameComponents:v17 displayName:v18 image:a5 contactIdentifier:v19 customIdentifier:v20];

  return v21;
}

id sub_2C474(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  if (a6)
  {
    sub_2C83C(0, &qword_6D0E8, INPerson_ptr);
    v17.super.isa = sub_50BC4().super.isa;
  }

  else
  {
    v17.super.isa = 0;
  }

  v18 = [v9 initWithCallRecordFilter:a1 callRecordToCallBack:a2 audioRoute:a3 destinationType:a4 preferredCallProvider:a5 contacts:v17.super.isa ttyType:a7 callCapability:a8];

  return v18;
}

unint64_t sub_2C558(uint64_t a1, uint64_t a2)
{
  sub_50D34();
  sub_50B94();
  v4 = sub_50D54();

  return sub_2C62C(a1, a2, v4);
}

uint64_t sub_2C5D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2C62C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_50CE4() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

_OWORD *sub_2C6E0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2C6F0(uint64_t a1)
{
  if (*(a1 + 128) <= 1u)
  {
    return *(a1 + 128);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_2C708(void *a1)
{
  v2 = [a1 data];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_4FD74();

  return v3;
}

uint64_t sub_2C778(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_2C7D0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2C7E4(a1, a2);
  }

  return a1;
}

uint64_t sub_2C7E4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_2C83C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2C87C(uint64_t a1)
{
  if ((*(a1 + 128) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 128) & 3;
  }
}

uint64_t sub_2C8A0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 129))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 128);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2C8E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 129) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 129) = 0;
    }

    if (a2)
    {
      *(result + 128) = -a2;
    }
  }

  return result;
}

uint64_t sub_2C948(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    LOBYTE(a2) = 2;
    *(result + 120) = 0;
  }

  *(result + 128) = a2;
  return result;
}

uint64_t type metadata accessor for EmergencyPoisonControlBasicIntentCATs(uint64_t a1)
{
  result = qword_6D0F0;
  if (!qword_6D0F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2CA8C(uint64_t a1, char a2)
{
  v3 = sub_2208(&qword_6B998, qword_51850);
  sub_72B0(v3);
  sub_72A4();
  __chkstk_darwin(v4);
  v6 = &v11 - v5;
  sub_2208(&qword_6BBC8, &unk_518B0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_517A0;
  strcpy((v7 + 32), "webSearchQuery");
  *(v7 + 47) = -18;
  sub_72BC();
  v8 = sub_50804();
  if (sub_513C(v6, 1, v8) == 1)
  {
    sub_7204(v6, &qword_6B998, qword_51850);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    *(v7 + 72) = v8;
    sub_530C((v7 + 48));
    sub_7298();
    (*(v9 + 32))();
  }

  sub_7280();
  *(v7 + 120) = &type metadata for Bool;
  *(v7 + 96) = a2 & 1;
  sub_50794();
}

uint64_t sub_2CC3C(uint64_t a1, char a2)
{
  v3 = sub_2208(&qword_6B998, qword_51850);
  sub_72B0(v3);
  sub_72A4();
  __chkstk_darwin(v4);
  v6 = &v11 - v5;
  sub_2208(&qword_6BBC8, &unk_518B0);
  v7 = swift_allocObject();
  sub_7260(v7, xmmword_517A0);
  sub_72BC();
  v8 = sub_50804();
  if (sub_513C(v6, 1, v8) == 1)
  {
    sub_7204(v6, &qword_6B998, qword_51850);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    *(v7 + 72) = v8;
    sub_530C((v7 + 48));
    sub_7298();
    (*(v9 + 32))();
  }

  sub_7280();
  *(v7 + 120) = &type metadata for Bool;
  *(v7 + 96) = a2 & 1;
  sub_50794();
}

uint64_t sub_2CDC8(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_2208(&qword_6B998, qword_51850);
  sub_72B0(v6);
  sub_72A4();
  __chkstk_darwin(v7);
  v9 = &v16 - v8;
  sub_2208(&qword_6BBC8, &unk_518B0);
  v10 = swift_allocObject();
  sub_7260(v10, xmmword_517D0);
  sub_71A0(a1, v9, &qword_6B998, qword_51850);
  v11 = sub_50804();
  if (sub_513C(v9, 1, v11) == 1)
  {
    sub_7204(v9, &qword_6B998, qword_51850);
    *(v10 + 48) = 0u;
    *(v10 + 64) = 0u;
  }

  else
  {
    *(v10 + 72) = v11;
    sub_530C((v10 + 48));
    sub_7298();
    (*(v12 + 32))();
  }

  *(v10 + 80) = 0x65626D754E67726FLL;
  *(v10 + 88) = 0xE900000000000072;
  if (a2)
  {
    v13 = sub_50754();
    v14 = a2;
  }

  else
  {
    v14 = 0;
    v13 = 0;
    *(v10 + 104) = 0;
    *(v10 + 112) = 0;
  }

  *(v10 + 96) = v14;
  *(v10 + 120) = v13;
  *(v10 + 128) = 0xD000000000000012;
  *(v10 + 136) = 0x8000000000054BF0;
  *(v10 + 168) = &type metadata for Bool;
  *(v10 + 144) = a3 & 1;

  sub_50794();
}

uint64_t sub_2D020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_50864();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2208(&unk_6D680, &qword_515B0);
  sub_72B0(v9);
  sub_72A4();
  __chkstk_darwin(v10);
  sub_71A0(a1, &v14 - v11, &unk_6D680, &qword_515B0);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_50784();
  (*(v6 + 8))(a2, v5);
  sub_7204(a1, &unk_6D680, &qword_515B0);
  return v12;
}

uint64_t sub_2D1AC@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_2208(&unk_6D680, &qword_515B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_4FCD4();
  sub_8558();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_2D684();
  sub_4FCC4();
  sub_4FCB4();
  sub_4FC94();
  sub_4FCA4();
  sub_2208(&qword_6D1E8, qword_53720);
  sub_4FC64();
  *(swift_allocObject() + 16) = xmmword_517A0;
  sub_4FC54();

  sub_4FC54();
  sub_4FC74();
  sub_4FC84();
  v11 = sub_4FD64();
  result = sub_513C(v6, 1, v11);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 8))(v2, v7);
    return (*(*(v11 - 8) + 32))(a2, v6, v11);
  }

  return result;
}

uint64_t sub_2D45C(void *a1)
{
  sub_1FE8(a1, a1[3]);
  if (sub_500A4())
  {
    return 1;
  }

  sub_1FE8(a1, a1[3]);
  return sub_50094() & 1;
}

id sub_2D4D0()
{
  v1 = sub_50B04();
  sub_8558();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_2D684();
  v5 = sub_50AE4();
  swift_beginAccess();
  (*(v3 + 16))(v0, v5, v1);
  v6 = sub_50AF4();
  v7 = sub_50BD4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "#SirenAppProvider Feature enabled. Checking active device for app.", v8, 2u);
  }

  (*(v3 + 8))(v0, v1);
  return [objc_opt_self() activeDeviceHasMandrake];
}

uint64_t sub_2D658(char a1)
{
  if (a1)
  {
    return 1886352499;
  }

  else
  {
    return 0x7472617473;
  }
}

uint64_t type metadata accessor for EmergencyDomesticViolenceBasicIntentCATs(uint64_t a1)
{
  result = qword_6D1F0;
  if (!qword_6D1F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2D794(uint64_t a1, char a2)
{
  v3 = sub_2208(&qword_6B998, qword_51850);
  sub_72B0(v3);
  sub_72A4();
  __chkstk_darwin(v4);
  v6 = &v11 - v5;
  sub_2208(&qword_6BBC8, &unk_518B0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_517A0;
  strcpy((v7 + 32), "webSearchQuery");
  *(v7 + 47) = -18;
  sub_72BC();
  v8 = sub_50804();
  if (sub_513C(v6, 1, v8) == 1)
  {
    sub_7204(v6, &qword_6B998, qword_51850);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    *(v7 + 72) = v8;
    sub_530C((v7 + 48));
    sub_7298();
    (*(v9 + 32))();
  }

  sub_7280();
  *(v7 + 120) = &type metadata for Bool;
  *(v7 + 96) = a2 & 1;
  sub_50794();
}

uint64_t sub_2D944(uint64_t a1, char a2)
{
  v3 = sub_2208(&qword_6B998, qword_51850);
  sub_72B0(v3);
  sub_72A4();
  __chkstk_darwin(v4);
  v6 = &v11 - v5;
  sub_2208(&qword_6BBC8, &unk_518B0);
  v7 = swift_allocObject();
  sub_7260(v7, xmmword_517A0);
  sub_72BC();
  v8 = sub_50804();
  if (sub_513C(v6, 1, v8) == 1)
  {
    sub_7204(v6, &qword_6B998, qword_51850);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    *(v7 + 72) = v8;
    sub_530C((v7 + 48));
    sub_7298();
    (*(v9 + 32))();
  }

  sub_7280();
  *(v7 + 120) = &type metadata for Bool;
  *(v7 + 96) = a2 & 1;
  sub_50794();
}

uint64_t sub_2DAD0(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_2208(&qword_6B998, qword_51850);
  sub_72B0(v6);
  sub_72A4();
  __chkstk_darwin(v7);
  v9 = &v16 - v8;
  sub_2208(&qword_6BBC8, &unk_518B0);
  v10 = swift_allocObject();
  sub_7260(v10, xmmword_517D0);
  sub_71A0(a1, v9, &qword_6B998, qword_51850);
  v11 = sub_50804();
  if (sub_513C(v9, 1, v11) == 1)
  {
    sub_7204(v9, &qword_6B998, qword_51850);
    *(v10 + 48) = 0u;
    *(v10 + 64) = 0u;
  }

  else
  {
    *(v10 + 72) = v11;
    sub_530C((v10 + 48));
    sub_7298();
    (*(v12 + 32))();
  }

  *(v10 + 80) = 0x65626D754E67726FLL;
  *(v10 + 88) = 0xE900000000000072;
  if (a2)
  {
    v13 = sub_50754();
    v14 = a2;
  }

  else
  {
    v14 = 0;
    v13 = 0;
    *(v10 + 104) = 0;
    *(v10 + 112) = 0;
  }

  *(v10 + 96) = v14;
  *(v10 + 120) = v13;
  *(v10 + 128) = 0xD000000000000012;
  *(v10 + 136) = 0x8000000000054BF0;
  *(v10 + 168) = &type metadata for Bool;
  *(v10 + 144) = a3 & 1;

  sub_50794();
}

uint64_t sub_2DD28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_50864();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2208(&unk_6D680, &qword_515B0);
  sub_72B0(v9);
  sub_72A4();
  __chkstk_darwin(v10);
  sub_71A0(a1, &v14 - v11, &unk_6D680, &qword_515B0);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_50784();
  (*(v6 + 8))(a2, v5);
  sub_7204(a1, &unk_6D680, &qword_515B0);
  return v12;
}

uint64_t type metadata accessor for PoisonControlModernCATs(uint64_t a1)
{
  result = qword_6D240;
  if (!qword_6D240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2DF94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_50864();
  sub_8F38();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2208(&unk_6D680, &qword_515B0);
  __chkstk_darwin(v11 - 8);
  sub_8E60(a1, &v15 - v12);
  (*(v7 + 16))(v10, a2, v3);
  v13 = sub_50814();
  (*(v7 + 8))(a2, v3);
  sub_8ED0(a1);
  return v13;
}

uint64_t sub_2E0F0(uint64_t a1, uint64_t a2)
{
  sub_50864();
  sub_8F38();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_50824();
  (*(v5 + 8))(a2, v2);
  return v9;
}

uint64_t sub_2E1F8(uint64_t a1)
{
  v2 = sub_50324();
  sub_8558();
  v164 = v3;
  __chkstk_darwin(v4);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v5);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v6);
  sub_13C5C();
  v166 = v7;
  v8 = type metadata accessor for EmergencyNLIntent(0);
  v9 = sub_72B0(v8);
  __chkstk_darwin(v9);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v10);
  sub_13C5C();
  sub_EE14(v11);
  v157 = sub_50654();
  sub_8558();
  v155 = v12;
  __chkstk_darwin(v13);
  sub_1A3A0();
  sub_EE14(v14);
  v15 = sub_503A4();
  v16 = sub_72B0(v15);
  __chkstk_darwin(v16);
  sub_1A3A0();
  sub_EE14(v17);
  v18 = sub_50A24();
  v19 = sub_72B0(v18);
  __chkstk_darwin(v19);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v20);
  sub_13C5C();
  sub_EE14(v21);
  v150 = sub_50354();
  sub_8558();
  v147 = v22;
  __chkstk_darwin(v23);
  sub_1A3A0();
  sub_EE14(v24);
  sub_50334();
  sub_8558();
  v167 = v26;
  v168 = v25;
  __chkstk_darwin(v25);
  sub_1A3A0();
  v165 = v27;
  v28 = sub_502E4();
  sub_8558();
  v30 = v29;
  __chkstk_darwin(v31);
  v33 = &v141 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_50B04();
  sub_8558();
  v36 = v35;
  __chkstk_darwin(v37);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v38);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v39);
  sub_EEF4();
  v169 = v40;
  __chkstk_darwin(v41);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v42);
  v44 = &v141 - v43;
  v45 = sub_50AE4();
  sub_2970();
  swift_beginAccess();
  v46 = *(v36 + 16);
  v162 = v45;
  v161 = v36 + 16;
  v160 = v46;
  v46(v44, v45, v34);
  v47 = *(v30 + 16);
  v163 = a1;
  v47(v33, a1, v28);
  v48 = sub_50AF4();
  v49 = sub_50BD4();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = sub_EFB0();
    v142 = v34;
    v51 = v50;
    v52 = sub_EFC8();
    v141 = v36;
    v159 = v52;
    v170[0] = v52;
    *v51 = 136315138;
    sub_3134C(&qword_6C078, &type metadata accessor for Input, &protocol conformance descriptor for Input);
    v53 = sub_50CD4();
    v54 = v2;
    v56 = v55;
    (*(v30 + 8))(v33, v28);
    sub_4DE68(v53, v56, v170);
    sub_31470();
    v2 = v54;

    *(v51 + 4) = v53;
    _os_log_impl(&dword_0, v48, v49, "#EmergencyCSAMFlow onInput: %s", v51, 0xCu);
    v57 = sub_EF84(&v175);
    sub_253C(v57);
    v36 = v141;
    sub_5674(v53);
    v58 = v51;
    v34 = v142;
    sub_5674(v58);
  }

  else
  {

    (*(v30 + 8))(v33, v28);
  }

  v159 = *(v36 + 8);
  v159(v44, v34);
  v59 = v165;
  sub_502D4();
  v61 = v167;
  v60 = v168;
  v62 = (v167[11])(v59, v168);
  v63 = v164;
  v64 = v166;
  v65 = v169;
  if (v62 != enum case for Parse.NLv3IntentOnly(_:))
  {
    if (v62 != enum case for Parse.directInvocation(_:))
    {
      v74 = v158;
      if (v62 != enum case for Parse.uso(_:))
      {
        sub_2970();
        swift_beginAccess();
        v124 = v144;
        sub_31394();
        v125();
        v126 = sub_50AF4();
        v127 = sub_50BE4();
        if (os_log_type_enabled(v126, v127))
        {
          v128 = sub_EFB0();
          v129 = sub_EFC8();
          v173 = v129;
          *v128 = 136315138;
          LOBYTE(v172) = 0;
          v130 = sub_50B64();
          v132 = sub_4DE68(v130, v131, &v173);

          *(v128 + 4) = v132;
          sub_3147C(&dword_0, v133, v134, "%s");
          sub_253C(v129);
          v135 = v129;
          v59 = v165;
          sub_5674(v135);
          sub_5674(v128);
        }

        v159(v124, v34);
        (v167[1])(v59, v168);
        return 0;
      }

      v103 = sub_31424();
      v104(v103);
      v105 = v147;
      v106 = v145;
      v107 = v59;
      v108 = v150;
      (*(v147 + 32))(v145, v107, v150);
      v61 = v148;
      v60 = v106;
      sub_50344();
      v170[3] = &type metadata for EmergencyFeatureFlagsKey;
      v170[4] = sub_EB68();
      LOBYTE(v170[0]) = 2;
      sub_50374();
      sub_253C(v170);
      v109 = v149;
      sub_50A14();
      v73 = v146;
      sub_EBBC(v109, v146, &type metadata accessor for EmergencyDialogAct);
      sub_3064C(v73);
      sub_31444();
      sub_EC1C(v109, &type metadata accessor for EmergencyDialogAct);
      (*(v105 + 8))(v106, v108);
      goto LABEL_7;
    }

    v85 = sub_31424();
    v86(v85);
    v87 = sub_31464();
    v88 = v2;
    v89(v87);
    sub_2970();
    swift_beginAccess();
    sub_EF84(&v174);
    sub_31394();
    v90();
    v91 = sub_50AF4();
    v92 = sub_50BD4();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = sub_5718();
      *v93 = 0;
      _os_log_impl(&dword_0, v91, v92, "EmergencyCSAMFlow onInput .directInvocation", v93, 2u);
      sub_5674(v93);
    }

    sub_31434();
    v94();
    v60 = v64;
    v95 = sub_50304();
    v73 = v96;
    if (v95 == 0xD000000000000035 && 0x8000000000055140 == v96)
    {

      v61 = v151;
    }

    else
    {
      v60 = sub_50CE4();

      v61 = v151;
      if ((v60 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    if (sub_2B6B0(v64) != 35)
    {
      sub_2970();
      sub_50944();
      sub_31444();
      v136 = sub_31464();
      v137(v136);
      goto LABEL_6;
    }

LABEL_25:
    sub_2970();
    swift_beginAccess();
    sub_31394();
    v110();
    v111 = v65;
    v112 = *(v63 + 16);
    v112(v61, v64, v88);
    v113 = sub_50AF4();
    v114 = sub_50BE4();
    if (sub_EF00(v114))
    {
      v115 = sub_EFB0();
      v168 = v36 + 8;
      v116 = v115;
      v167 = sub_EFC8();
      v172 = v167;
      *v116 = 136315138;
      v112(v143, v61, v88);
      sub_31464();
      v117 = sub_50B64();
      v119 = v118;
      v120 = *(v63 + 8);
      v120(v61, v88);
      v121 = sub_4DE68(v117, v119, &v172);

      *(v116 + 4) = v121;
      _os_log_impl(&dword_0, v113, v111, "Failed to get emergencySituation from DirectInvocation: %s", v116, 0xCu);
      v122 = v167;
      sub_253C(v167);
      sub_5674(v122);
      sub_5674(v116);

      sub_31434();
      v123();
      v120(v166, v88);
    }

    else
    {

      v138 = *(v63 + 8);
      (v138)(v61, v88);
      sub_31434();
      v139();
      v140 = sub_31464();
      v138(v140);
    }

    return 0;
  }

  v66 = sub_31424();
  v67(v66);
  v68 = v155;
  v69 = v153;
  v70 = v59;
  v71 = v157;
  (*(v155 + 32))(v153, v70, v157);
  v72 = v156;
  (*(v68 + 16))(v156, v69, v71);
  v73 = v154;
  sub_EBBC(v72, v154, type metadata accessor for EmergencyNLIntent);
  sub_30900(v73);
  sub_31444();
  sub_EC1C(v72, type metadata accessor for EmergencyNLIntent);
  (*(v68 + 8))(v69, v71);
LABEL_6:
  v74 = v158;
LABEL_7:
  if (v61 != (&dword_0 + 1))
  {
    v98 = v152;
    v99 = v152[17];
    v100 = v152[18];
    v101 = v152[19];
    v152[17] = v60;
    v98[18] = v73;
    v98[19] = v61;
    sub_30EA4(v99, v100, v101);
    return 1;
  }

  sub_2970();
  swift_beginAccess();
  sub_31394();
  v75();
  v76 = sub_50AF4();
  v77 = sub_50BE4();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = sub_EFB0();
    v79 = sub_EFC8();
    v172 = v79;
    *v78 = 136315138;
    v171 = 0;
    v80 = sub_50B64();
    v82 = sub_4DE68(v80, v81, &v172);

    *(v78 + 4) = v82;
    sub_3147C(&dword_0, v83, v84, "%s");
    sub_253C(v79);
    sub_5674(v79);
    sub_5674(v78);
  }

  v159(v74, v34);
  return 0;
}

uint64_t sub_2EFF8(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v3 = v2;
  v134 = a2;
  v135 = a1;
  v4 = sub_4FF84();
  sub_8558();
  v122 = v5;
  __chkstk_darwin(v6);
  sub_1A3A0();
  sub_EE14(v7);
  v120 = sub_50884();
  sub_569C();
  __chkstk_darwin(v8);
  sub_1A3A0();
  v121 = v9;
  v10 = sub_2208(&qword_6CEC0, &unk_53910);
  v11 = sub_72B0(v10);
  __chkstk_darwin(v11);
  v125 = &v113 - v12;
  v124 = sub_2208(&qword_6B988, &qword_530B0);
  sub_569C();
  __chkstk_darwin(v13);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v14);
  sub_13C5C();
  sub_EE14(v15);
  v129 = sub_4FDA4();
  sub_8558();
  v128 = v16;
  __chkstk_darwin(v17);
  sub_1A3A0();
  sub_EE14(v18);
  v19 = sub_501C4();
  sub_8558();
  v133 = v20;
  __chkstk_darwin(v21);
  v22 = sub_50B04();
  sub_8558();
  v24 = v23;
  __chkstk_darwin(v25);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v26);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v27);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v28);
  v30 = &v113 - v29;
  v31 = sub_50AE4();
  sub_2970();
  swift_beginAccess();
  v32 = v24[2];
  v132 = v31;
  v131 = v24 + 2;
  v130 = v32;
  v32(v30, v31, v22);
  v33 = sub_50AF4();
  v34 = sub_50BD4();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = sub_5718();
    v126 = v24;
    v36 = v3;
    v37 = v19;
    v38 = v35;
    *v35 = 0;
    _os_log_impl(&dword_0, v33, v34, "#EmergencyCSAMFlow execute", v35, 2u);
    v39 = v38;
    v19 = v37;
    v3 = v36;
    v24 = v126;
    sub_5674(v39);
  }

  v40 = v24[1];
  v40(v30, v22);
  v41 = v3[19];
  if (v41 == 1)
  {
    sub_E9D0();
    v46 = swift_allocError();
    *v47 = 2;
    v48 = sub_1FE8(v3 + 7, v3[10]);
    memcpy(__dst, v48, sizeof(__dst));
    v49 = (v3 + 2);
    v50 = v46;
    v51 = v135;
    goto LABEL_7;
  }

  if (v41 != 2)
  {
    v116 = v40;
    v115 = v19;
    v53 = v3[17];
    v114 = v3[18];
    v54 = v3;
    v55 = v3[5];
    v56 = v3[6];
    v126 = v54;
    sub_1FE8(v54 + 2, v55);
    v57 = v41;
    v58 = *(v56 + 8);
    v117 = v57;

    v58(__dst, v55, v56);
    sub_1FE8(__dst, __dst[3]);
    sub_31470();
    sub_50084();
    if (v59)
    {
      sub_253C(__dst);
      v60 = v127;
      sub_4FD84();
      v61 = sub_30290();
      (*(v128 + 8))(v60, v129);
      if (v61)
      {
        v62 = v125;
        v63 = v53;
        v64 = v114;
        v65 = v117;
        v66 = v126;
        sub_2FBC8(v125);
        v67 = sub_513C(v62, 1, v124);
        v68 = v135;
        if (v67 != 1)
        {
          v108 = v119;
          sub_EAD8(v62, v119);
          sub_2FDC0(v63, v64, v65);
          sub_30EA4(v63, v64, v65);
          sub_234C(v108, v118);
          sub_23BC((v66 + 2), __dst);
          v109 = v121;
          sub_50874();
          sub_3134C(&qword_6B990, &type metadata accessor for OutputFlow, &protocol conformance descriptor for OutputFlow);
          sub_50174();
          v110 = sub_31414();
          v68(v110);
          v111 = sub_313CC();
          v112(v111, v115);
          sub_EC1C(v109, &type metadata accessor for OutputFlow);
          return sub_51C0(v108, &qword_6B988, &qword_530B0);
        }

        sub_30EA4(v63, v64, v65);
        sub_51C0(v62, &qword_6CEC0, &unk_53910);
        sub_E9D0();
        v69 = swift_allocError();
        *v70 = 2;
        v71 = sub_1FE8(v66 + 7, v66[10]);
        memcpy(__dst, v71, sizeof(__dst));
        v49 = (v66 + 2);
        v50 = v69;
        v51 = v68;
LABEL_7:
        sub_30EBC(v50, v49, __dst, v51, v134);
      }
    }

    else
    {
      sub_253C(__dst);
    }

    sub_2970();
    swift_beginAccess();
    sub_EF84(&v138);
    sub_313B0();
    v72();
    v73 = v126;

    v74 = sub_50AF4();
    v75 = sub_50BE4();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = sub_EFB0();
      LODWORD(v128) = v75;
      v77 = v76;
      v78 = sub_EFC8();
      v136[0] = v78;
      *v77 = 136315138;
      v79 = v126[5];
      v129 = v22;
      v80 = v126[6];
      sub_1FE8(v126 + 2, v79);
      (*(v80 + 8))(__dst, v79, v80);
      sub_1FE8(__dst, __dst[3]);
      v73 = v126;
      v81 = sub_50084();
      if (v82)
      {
        v83 = v81;
      }

      else
      {
        v83 = 0x3E6C696E3CLL;
      }

      if (v82)
      {
        v84 = v82;
      }

      else
      {
        v84 = 0xE500000000000000;
      }

      sub_253C(__dst);
      v85 = sub_4DE68(v83, v84, v136);

      *(v77 + 4) = v85;
      _os_log_impl(&dword_0, v74, v128, "#EmergencyCSAMFlow execute unsupported locale: %s", v77, 0xCu);
      sub_253C(v78);
      sub_5674(v78);
      sub_5674(v77);
    }

    else
    {
    }

    sub_31454();
    v86();
    v87 = v135;
    if (v117)
    {
      sub_2970();
      swift_beginAccess();
      sub_313B0();
      v88();
      v89 = sub_50AF4();
      v90 = sub_50BE4();
      if (sub_EF00(v90))
      {
        v91 = sub_5718();
        *v91 = 0;
        sub_EED4(&dword_0, v92, v93, "#EmergencyCSAMFlow Falling back to websearch");
        sub_5674(v91);
      }

      sub_31454();
      v94();
      v95 = v73[6];
      sub_1FE8(v73 + 2, v73[5]);
      v96 = sub_31470();
      v97(v96, v95);
      __dst[0] = v114;
      __dst[1] = v117;
      sub_1A1BC();
      sub_50174();
      sub_1A210(__dst);
    }

    else
    {
      sub_2970();
      swift_beginAccess();
      sub_EF84(&__dst[12]);
      sub_313B0();
      v98();
      v99 = sub_50AF4();
      v100 = sub_50BE4();
      if (sub_EF00(v100))
      {
        v101 = sub_5718();
        *v101 = 0;
        sub_EED4(&dword_0, v102, v103, "#EmergencyCSAMFlow Falling back to server execution");
        sub_5674(v101);
      }

      sub_31454();
      v104();
      v105 = v122;
      v106 = v123;
      (*(v122 + 104))(v123, enum case for FlowUnhandledReason.needsServerExecution(_:), v4);
      sub_501B4();
      (*(v105 + 8))(v106, v4);
    }

    v107 = sub_31414();
    v87(v107);
    v43 = sub_313CC();
    v45 = v115;
    return v44(v43, v45);
  }

  sub_50194();
  v42 = sub_31414();
  v135(v42);
  v43 = sub_313CC();
  v45 = v19;
  return v44(v43, v45);
}

uint64_t sub_2FBC8@<X0>(uint64_t a4@<X8>)
{
  if (sub_50954())
  {
    sub_313E0();
    sub_421C4();
    goto LABEL_21;
  }

  if (sub_50A44() == 0xD000000000000013 && 0x8000000000054DB0 == v5)
  {

    goto LABEL_20;
  }

  v7 = sub_50CE4();

  if (v7)
  {
LABEL_20:
    sub_313E0();
    sub_421A4();
    goto LABEL_21;
  }

  if (sub_50A44() == 0xD000000000000010 && 0x8000000000054DD0 == v8)
  {

    goto LABEL_26;
  }

  v10 = sub_50CE4();

  if (v10)
  {
LABEL_26:
    sub_313E0();
    sub_422B0();
    goto LABEL_21;
  }

  if (sub_50A44() == 0x7078655F6D617363 && v11 == 0xED0000746963696CLL)
  {
  }

  else
  {
    v13 = sub_50CE4();

    if ((v13 & 1) == 0)
    {
      v14 = 1;
      goto LABEL_22;
    }
  }

  sub_313E0();
  sub_50794();
LABEL_21:

  v14 = 0;
LABEL_22:
  v15 = sub_2208(&qword_6B988, &qword_530B0);

  return sub_28E0(a4, v14, 1, v15);
}

void *sub_2FDC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v58 = a2;
  sub_50B04();
  sub_8558();
  v56 = v8;
  v57 = v7;
  __chkstk_darwin(v7);
  sub_1A3A0();
  v55 = v9;
  v10 = sub_2208(&unk_6D680, &qword_515B0);
  v11 = sub_72B0(v10);
  __chkstk_darwin(v11);
  sub_EE34();
  v53 = v12;
  __chkstk_darwin(v13);
  v15 = &v50 - v14;
  v54 = sub_4FD64();
  sub_8558();
  v52 = v16;
  __chkstk_darwin(v17);
  sub_1A3A0();
  v51 = v18;
  sub_2208(&qword_6B988, &qword_530B0);
  sub_569C();
  v20 = __chkstk_darwin(v19);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v50 - v23;
  type metadata accessor for CsamSituation();

  v25 = sub_7C3C(a1, v58, a3);
  sub_1FE8(v4 + 7, v4[10]);

  sub_421E4(v25);

  v26 = sub_50D64();
  v28 = v27;
  sub_51C0(v24, &qword_6B988, &qword_530B0);
  if (v28)
  {
    v58 = v26;
    sub_1FE8(v4 + 7, v4[10]);

    sub_422D0(v25);

    sub_50D64();
    v30 = v29;
    sub_51C0(v22, &qword_6B988, &qword_530B0);
    if (v30)
    {
      sub_4FD54();

      v31 = v54;
      if (sub_513C(v15, 1, v54) != 1)
      {
        v43 = v51;
        v44 = v52;
        (*(v52 + 32))(v51, v15, v31);
        v45 = v53;
        v46 = v43;
        (*(v44 + 16))(v53, v43, v31);
        sub_28E0(v45, 0, 1, v31);
        v47 = v4[6];
        sub_1FE8(v4 + 2, v4[5]);
        v48 = sub_31470();
        v49(v48, v47);
        v41 = sub_375D0(v45, v59, v58, v28);

        sub_253C(v59);
        sub_51C0(v45, &unk_6D680, &qword_515B0);
        (*(v44 + 8))(v46, v31);
        return v41;
      }

      sub_51C0(v15, &unk_6D680, &qword_515B0);
    }

    else
    {
    }
  }

  v32 = sub_50AE4();
  sub_2970();
  swift_beginAccess();
  v34 = v55;
  v33 = v56;
  v35 = v57;
  (*(v56 + 16))(v55, v32, v57);
  v36 = sub_50AF4();
  v37 = sub_50BD4();
  if (sub_EF00(v37))
  {
    v38 = sub_5718();
    *v38 = 0;
    sub_EED4(&dword_0, v39, v40, "#EmergencyCSAMFlow Failed to execute CAT");
    sub_5674(v38);
  }

  (*(v33 + 8))(v34, v35);

  return &_swiftEmptyArrayStorage;
}

BOOL sub_30290()
{
  v4[0] = sub_4FD94();
  v4[1] = v0;
  v3[2] = v4;
  v1 = sub_3059C(sub_30E84, v3, &off_65908);

  return v1;
}

void *sub_3030C()
{
  sub_253C(v0 + 2);
  sub_253C(v0 + 7);
  sub_55C8((v0 + 12));
  sub_30EA4(v0[17], v0[18], v0[19]);
  return v0;
}

uint64_t sub_30348()
{
  sub_3030C();

  return _swift_deallocClassInstance(v0, 160, 7);
}

uint64_t sub_303A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 sub_303C4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_303D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 24))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_30440(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 2;
    }
  }

  return result;
}

void *sub_30494(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[2] = a2;
  }

  return result;
}

uint64_t sub_30520(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EmergencyCSAMFlow();

  return sub_4FF64();
}

uint64_t sub_30558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_50CE4() & 1;
  }
}

BOOL sub_3059C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_3064C(uint64_t a1)
{
  v2 = sub_50B04();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[3] = sub_50A24();
  v24[4] = &protocol witness table for EmergencyDialogAct;
  v6 = sub_530C(v24);
  sub_312EC(a1, v6, &type metadata accessor for EmergencyDialogAct);
  v7 = sub_50AE4();
  swift_beginAccess();
  (*(v3 + 16))(v5, v7, v2);
  sub_23BC(v24, v23);
  v8 = sub_50AF4();
  v9 = sub_50BD4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v20 = v2;
    v11 = v10;
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315138;
    sub_23BC(v23, v21);
    sub_2208(&qword_6C080, &qword_51E10);
    v13 = sub_50B64();
    v15 = v14;
    sub_253C(v23);
    v16 = sub_4DE68(v13, v15, &v22);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_0, v8, v9, "Converting EmergencyDialogAct to EmergencyCSAMIntent: %s", v11, 0xCu);
    sub_253C(v12);

    (*(v3 + 8))(v5, v20);
  }

  else
  {

    sub_253C(v23);
    (*(v3 + 8))(v5, v2);
  }

  v17 = sub_50944();
  sub_253C(v24);
  return v17;
}

uint64_t sub_30900(uint64_t a1)
{
  v2 = sub_50654();
  v31 = *(v2 - 8);
  __chkstk_darwin(v2);
  v30 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_50B04();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for EmergencyNLIntent(0);
  v36 = sub_3134C(&qword_6C088, type metadata accessor for EmergencyNLIntent, &unk_51AFC);
  v29 = sub_530C(v34);
  sub_312EC(a1, v29, type metadata accessor for EmergencyNLIntent);
  v8 = sub_50AE4();
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  sub_23BC(v34, v33);
  v9 = sub_50AF4();
  v10 = sub_50BD4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v28 = v2;
    v12 = v11;
    v13 = swift_slowAlloc();
    v32 = v13;
    *v12 = 136315138;
    v27 = v4;
    v14 = sub_1FE8(v33, v33[3]);
    v26[1] = v26;
    __chkstk_darwin(v14);
    v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v16);
    v18 = sub_3DBF4();
    v20 = v19;
    sub_EC1C(v16, type metadata accessor for EmergencyNLIntent);
    sub_253C(v33);
    v21 = sub_4DE68(v18, v20, &v32);

    *(v12 + 4) = v21;
    _os_log_impl(&dword_0, v9, v10, "Converting EmergencyNLIntent: %s", v12, 0xCu);
    sub_253C(v13);

    v2 = v28;

    (*(v5 + 8))(v7, v27);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    sub_253C(v33);
  }

  sub_1FE8(v34, v35);
  if (qword_6B5F8 != -1)
  {
    swift_once();
  }

  sub_3134C(&qword_6BD68, type metadata accessor for EmergencyNLIntent, &unk_51ACC);
  sub_50524();
  sub_1FE8(v34, v35);
  if (qword_6B5F0 != -1)
  {
    swift_once();
  }

  sub_50524();
  v23 = v30;
  v22 = v31;
  (*(v31 + 16))(v30, v29, v2);
  sub_50644();
  (*(v22 + 8))(v23, v2);
  v24 = sub_50944();
  sub_253C(v34);
  return v24;
}

uint64_t sub_30EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 - 1) >= 2)
  {
  }

  return result;
}

uint64_t sub_30EBC(uint64_t a1, uint64_t a2, const void *a3, void (*a4)(void), uint64_t a5)
{
  v31 = a5;
  v29 = sub_501C4();
  v9 = *(v29 - 8);
  __chkstk_darwin(v29);
  v33 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_50B04();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = &type metadata for EmergencyCATProvider;
  v37 = &off_66C88;
  v35[0] = swift_allocObject();
  memcpy((v35[0] + 16), a3, 0x70uLL);
  sub_22F0(a3, __dst);
  v15 = sub_50AE4();
  swift_beginAccess();
  v30 = v12;
  v16 = *(v12 + 16);
  v32 = v11;
  v16(v14, v15, v11);
  swift_errorRetain();
  v17 = sub_50AF4();
  v18 = sub_50BF4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v28 = a4;
    v21 = v20;
    __dst[0] = v20;
    *v19 = 136315138;
    v34 = a1;
    swift_errorRetain();
    sub_2208(&qword_6B980, qword_52B10);
    v22 = sub_50B64();
    v24 = sub_4DE68(v22, v23, __dst);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_0, v17, v18, "Execution Error: %s", v19, 0xCu);
    sub_253C(v21);
    a4 = v28;
  }

  (*(v30 + 8))(v14, v32);
  v25 = sub_1FE8(v35, v36);
  memcpy(__dst, v25, 0x70uLL);
  sub_202C(a2, __dst);
  v26 = v33;
  sub_50184();

  a4(v26);
  (*(v9 + 8))(v26, v29);
  return sub_253C(v35);
}

uint64_t sub_3124C()
{

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_312EC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_569C();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_3134C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_313E0()
{
  sub_1FE8((v0 + 56), *(v0 + 80));
}

void sub_3147C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t sub_3149C()
{
  v0 = swift_allocObject();
  sub_314D4();
  return v0;
}

void *sub_314D4()
{
  *(&__src[1] + 1) = &type metadata for FlowConfigModel;
  *&__src[2] = &protocol witness table for FlowConfigModel;
  *&__src[0] = swift_allocObject();
  sub_508D4();
  sub_546C(__src, (v0 + 2));
  sub_37084(__src);
  v0[10] = &type metadata for EmergencyCATProvider;
  v0[11] = &off_66C88;
  v1 = swift_allocObject();
  v0[7] = v1;
  memcpy((v1 + 16), __src, 0x70uLL);
  v0[15] = &type metadata for EmergencyFeatureFlags;
  v0[16] = &off_66A90;
  return v0;
}

uint64_t sub_315EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v202 = a1;
  v206 = a2;
  v203 = sub_50324();
  sub_8558();
  v191 = v2;
  __chkstk_darwin(v3);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v4);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v5);
  sub_13C5C();
  v7 = sub_EE14(v6);
  v199 = type metadata accessor for EmergencyNLIntent(v7);
  sub_569C();
  __chkstk_darwin(v8);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v9);
  sub_13C5C();
  sub_EE14(v10);
  v209 = sub_50654();
  sub_8558();
  v204 = v11;
  __chkstk_darwin(v12);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v13);
  sub_13C5C();
  sub_EE14(v14);
  v188 = sub_50A24();
  sub_569C();
  __chkstk_darwin(v15);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v16);
  sub_13C5C();
  sub_EE14(v17);
  v183 = sub_503A4();
  sub_8558();
  v182 = v18;
  __chkstk_darwin(v19);
  sub_5630();
  sub_EE14(v21 - v20);
  v194 = sub_50354();
  sub_8558();
  v192 = v22;
  __chkstk_darwin(v23);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v24);
  sub_13C5C();
  sub_EE14(v25);
  v26 = sub_50334();
  sub_8558();
  v28 = v27;
  __chkstk_darwin(v29);
  sub_5630();
  v32 = v31 - v30;
  v33 = type metadata accessor for FlowRouter(0);
  sub_569C();
  __chkstk_darwin(v34);
  sub_5630();
  sub_EE14(v36 - v35);
  v37 = sub_50B04();
  sub_8558();
  v39 = v38;
  __chkstk_darwin(v40);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v41);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v42);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v43);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v44);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v45);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v46);
  v48 = &v181 - v47;
  v49 = sub_50AE4();
  sub_56AC(v49, v219);
  v50 = v39;
  v51 = *(v39 + 16);
  v214 = v49;
  v210 = v37;
  v213 = (v39 + 16);
  v212 = v51;
  v51(v48, v49, v37);
  v52 = sub_50AF4();
  v53 = sub_50BD4();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_0, v52, v53, "Emergency Plugin activated", v54, 2u);
    sub_5674(v54);
  }

  v56 = v50 + 8;
  v55 = *(v50 + 8);
  v57 = v210;
  v55(v48, v210);
  v58 = v215;
  v215[3] = 0u;
  v58[4] = 0u;
  v58[1] = 0u;
  v58[2] = 0u;
  *v58 = 0u;
  v189 = v33[6];
  v59 = v203;
  sub_28E0(v58 + v189, 1, 1, v203);
  v60 = v207;
  sub_23BC(v207 + 16, v58 + v33[7]);
  sub_23BC(v60 + 56, v58 + v33[8]);
  sub_5260(v60 + 96, v58 + v33[9]);
  (*(v28 + 16))(v32, v202, v26);
  v61 = (*(v28 + 88))(v32, v26);
  v208 = v55;
  if (v61 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v200 = v56;
    v62 = sub_32DE0();
    v63(v62);
    v64 = v204;
    v65 = v211;
    v66 = v209;
    (*(v204 + 32))(v211, v32, v209);
    v67 = sub_32E34(&v223);
    sub_56AC(v67, v68);
    sub_32D50();
    v69();
    v70 = v196;
    v203 = *(v64 + 16);
    v203(v196, v65, v66);
    v71 = sub_50AF4();
    v72 = sub_50BD4();
    if (os_log_type_enabled(v71, v72))
    {
      v57 = v64;
      v73 = sub_EFB0();
      v74 = sub_EFC8();
      __dst[0] = v74;
      *v73 = 136315138;
      sub_32B98(&qword_6C1B0, 255, &type metadata accessor for NLIntent, &protocol conformance descriptor for NLIntent);
      v75 = sub_50CD4();
      v77 = v76;
      v207 = *(v57 + 8);
      v207(v70, v209);
      v78 = sub_4DE68(v75, v77, __dst);
      v66 = v209;

      *(v73 + 4) = v78;
      _os_log_impl(&dword_0, v71, v72, "Parse had NL intent: %s", v73, 0xCu);
      sub_253C(v74);
      v79 = v74;
      v80 = v210;
      sub_5674(v79);
      sub_5674(v73);
    }

    else
    {
      v80 = v57;

      v207 = *(v64 + 8);
      v207(v70, v66);
    }

    v103 = v200;
    v55(v201, v80);
    sub_32E28();
    v104 = v205;
    v105 = (v203)(v205, v211, v66);
    sub_32D94(v105, v217);
    sub_32D50();
    v106();
    sub_32D64();
    v107 = v198;
    sub_EBBC(v104, v198, v108);
    v109 = sub_50AF4();
    v110 = sub_50BD4();
    if (sub_13C1C(v110))
    {
      v103 = sub_EFB0();
      v111 = sub_EFC8();
      __dst[0] = v111;
      *v103 = 136315138;
      sub_3DBF4();
      sub_32D20();
      sub_32AE0(v107, v112);
      v113 = sub_32DF0();

      *(v103 + 4) = v113;
      sub_32E40(&dword_0, v114, v115, "Converting NL Intent → %s");
      sub_253C(v111);
      sub_5674(v111);
      sub_5674(v103);

      v66 = v209;
    }

    else
    {

      sub_32D20();
      sub_32AE0(v107, v137);
    }

    sub_32DB8();
    v116();
    __dst[3] = v199;
    __dst[4] = sub_32B98(&qword_6C088, 255, type metadata accessor for EmergencyNLIntent, &unk_51AFC);
    sub_530C(__dst);
    sub_32D64();
    v138 = sub_32E34(&__dst[10]);
    sub_EBBC(v138, v139, v140);
    sub_32B38(__dst, v57, &qword_6D498, qword_539E0);
    sub_430D8();
    sub_32E0C(v141);

    sub_32D20();
    sub_32AE0(v103, v142);
    v143 = v211;
    v144 = v66;
    v145 = &__dst[12];
LABEL_17:
    (*(v145 - 32))(v143, v144);
    return sub_32AE0(v57, type metadata accessor for FlowRouter);
  }

  if (v61 == enum case for Parse.directInvocation(_:))
  {
    v81 = sub_32DE0();
    v82(v81);
    v83 = v191;
    v84 = v197;
    (*(v191 + 32))(v197, v32, v59);
    sub_56AC(v214, __dst);
    sub_32D50();
    v85();
    v86 = *(v83 + 16);
    v87 = v190;
    v86(v190, v84, v59);
    v88 = v59;
    v89 = sub_50AF4();
    v90 = sub_50BD4();
    if (sub_13C1C(v90))
    {
      v91 = sub_EFB0();
      v214 = v86;
      v92 = v91;
      v213 = sub_EFC8();
      v216 = v213;
      *v92 = 136315138;
      v214(v185, v87, v88);
      v93 = sub_50B64();
      v200 = v56;
      v94 = v93;
      v96 = v95;
      v97 = sub_32DC4();
      v98(v97);
      v99 = sub_4DE68(v94, v96, &v216);

      *(v92 + 4) = v99;
      _os_log_impl(&dword_0, v89, v90, "Parse had directInvocation: %s", v92, 0xCu);
      v100 = v213;
      sub_253C(v213);
      sub_5674(v100);
      v101 = v92;
      v86 = v214;
      sub_5674(v101);
    }

    else
    {

      v146 = sub_32DC4();
      v147(v146);
    }

    sub_32DB8();
    v102();
    sub_32E28();
    v148 = v189;
    sub_32A78(v57 + v189);
    v149 = v197;
    v86(v57 + v148, v197, v88);
    sub_28E0(v57 + v148, 0, 1, v88);
    sub_430D8();
    sub_32E0C(v150);

    v87(v149, v88);
  }

  else
  {
    if (v61 == enum case for Parse.uso(_:))
    {
      v200 = v56;
      v117 = sub_32DE0();
      v118(v117);
      v119 = v192;
      v120 = v195;
      v121 = v194;
      v122 = (*(v192 + 32))(v195, v32, v194);
      sub_32D94(v122, &v216);
      sub_32D50();
      v123();
      v124 = v184;
      (*(v119 + 16))(v184, v120, v121);
      v125 = sub_50AF4();
      v126 = sub_50BD4();
      sub_13C1C(v126);
      sub_32E28();
      if (v127)
      {
        v128 = sub_EFB0();
        v209 = sub_EFC8();
        __dst[0] = v209;
        *v128 = 136315138;
        v129 = v186;
        sub_50344();
        sub_32B98(&qword_6D4A8, 255, &type metadata accessor for Siri_Nlu_External_UserParse, &protocol conformance descriptor for Siri_Nlu_External_UserParse);
        v130 = v124;
        v131 = v183;
        sub_50AA4();
        (*(v182 + 8))(v129, v131);
        v211 = *(v119 + 8);
        v211(v130, v194);
        v132 = sub_32DF0();

        *(v128 + 4) = v132;
        v133 = v129;
        _os_log_impl(&dword_0, v125, v126, "Parse had a uso parse: %s", v128, 0xCu);
        v134 = sub_32E34(&v221);
        sub_253C(v134);
        sub_5674(v126);
        sub_5674(v128);

        sub_32DB8();
        v135();
        v136 = v187;
      }

      else
      {

        v211 = *(v119 + 8);
        v211(v124, v121);
        sub_32DB8();
        v160();
        v136 = v187;
        v133 = v186;
      }

      v161 = v133;
      sub_50344();
      __dst[3] = &type metadata for EmergencyFeatureFlagsKey;
      __dst[4] = sub_EB68();
      LOBYTE(__dst[0]) = 2;
      sub_50374();
      sub_253C(__dst);
      v162 = v193;
      v163 = sub_50A14();
      sub_32D94(v163, v217);
      sub_32D50();
      v164();
      sub_32D7C();
      sub_EBBC(v162, v136, v165);
      v166 = sub_50AF4();
      v167 = sub_50BD4();
      if (sub_13C1C(v167))
      {
        v161 = sub_EFB0();
        v168 = sub_EFC8();
        __dst[0] = v168;
        *v161 = 136315138;
        sub_50A04();
        sub_32D38();
        sub_32AE0(v169, v170);
        v171 = sub_32DF0();

        *(v161 + 4) = v171;
        sub_32E40(&dword_0, v172, v173, "Converting EmergencyDialogAct: %s");
        sub_253C(v168);
        sub_5674(v168);
        sub_5674(v161);
      }

      else
      {

        sub_32D38();
        sub_32AE0(v136, v174);
      }

      sub_32DB8();
      v175();
      __dst[3] = v188;
      __dst[4] = &protocol witness table for EmergencyDialogAct;
      sub_530C(__dst);
      sub_32D7C();
      v176 = sub_32E34(&v218);
      sub_EBBC(v176, v177, v178);
      sub_32B38(__dst, v57 + 40, &qword_6D4A0, &qword_54360);
      sub_430D8();
      sub_32E0C(v179);

      sub_32D38();
      sub_32AE0(v161, v180);
      v143 = v195;
      v144 = v194;
      v145 = &v222;
      goto LABEL_17;
    }

    sub_56AC(v214, v217);
    sub_32D50();
    v151();
    v152 = sub_50AF4();
    v153 = sub_50BE4();
    sub_13C1C(v153);
    sub_32E28();
    if (v154)
    {
      v155 = swift_slowAlloc();
      *v155 = 0;
      _os_log_impl(&dword_0, v152, v153, "Emergency Plugin received unexpected parse", v155, 2u);
      sub_5674(v155);
    }

    sub_32DB8();
    v156();
    v157 = v207;
    sub_23BC(v207 + 16, &v216);
    v158 = sub_1FE8(v157 + 7, v157[10]);
    memcpy(__dst, v158, sizeof(__dst));
    sub_202C(&v216, __dst);
    sub_253C(&v216);
    sub_4FF74();

    (*(v28 + 8))(v32, v26);
  }

  return sub_32AE0(v57, type metadata accessor for FlowRouter);
}

uint64_t sub_32948()
{
  sub_253C((v0 + 16));
  sub_253C((v0 + 56));
  sub_55C8(v0 + 96);
  return v0;
}

uint64_t sub_32978()
{
  sub_32948();

  return _swift_deallocClassInstance(v0, 136, 7);
}

uint64_t sub_329F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_3149C();
  *a1 = result;
  return result;
}

uint64_t sub_32A78(uint64_t a1)
{
  v2 = sub_2208(&qword_6D490, &unk_54350);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_32AE0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_569C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_32B38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_2208(a3, a4);
  sub_569C();
  (*(v6 + 40))(a2, a1);
  return a2;
}

uint64_t sub_32B98(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_32BE0()
{
  if (v0[5])
  {
    sub_253C(v0 + 2);
  }

  if (v0[10])
  {
    sub_253C(v0 + 7);
  }

  if (v0[15])
  {
    sub_253C(v0 + 12);
  }

  if (v0[20])
  {
    sub_253C(v0 + 17);
  }

  if (v0[25])
  {
    sub_253C(v0 + 22);
  }

  if (v0[30])
  {
    sub_253C(v0 + 27);
  }

  if (v0[35])
  {
    sub_253C(v0 + 32);
  }

  return _swift_deallocObject(v0, 296, 7);
}

uint64_t sub_32C80()
{

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_32D94(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

unint64_t sub_32DF0()
{

  return sub_4DE68(v0, v1, (v2 - 200));
}

uint64_t sub_32E0C(uint64_t a1)
{

  return sub_4FF74();
}

void sub_32E40(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

_BYTE *storeEnumTagSinglePayload for EmergencyFeatureFlagsKey(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x32F3CLL);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_32F78()
{
  result = qword_6D4B0;
  if (!qword_6D4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6D4B0);
  }

  return result;
}

const char *sub_32FE0(char a1)
{
  if (!a1)
  {
    return "emergency_rf";
  }

  if (a1 == 1)
  {
    return "emergency_mandrake_handoff";
  }

  return "nlv4_migration";
}

uint64_t sub_33058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2208(&qword_6B988, &qword_530B0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_513C(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_33124(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2208(&qword_6B988, &qword_530B0);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_28E0(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for ConfirmationFlowConfigModel(uint64_t a1)
{
  result = qword_6D510;
  if (!qword_6D510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_33224(uint64_t a1)
{
  sub_332C4(319);
  if (v1 <= 0x3F)
  {
    sub_4FEB4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_332C4(uint64_t a1)
{
  if (!qword_6D520)
  {
    sub_50264();
    sub_5218(&qword_6B980, qword_52B10);
    v1 = sub_50D74();
    if (!v2)
    {
      atomic_store(v1, &qword_6D520);
    }
  }
}

void sub_33340()
{
  sub_13C8C();
  v166 = v0;
  v2 = v1;
  v3 = sub_50324();
  sub_8558();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_5658();
  sub_EE04();
  __chkstk_darwin(v7);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v8);
  sub_13C5C();
  v178 = v9;
  v10 = sub_13B48();
  v11 = type metadata accessor for EmergencyNLIntent(v10);
  v12 = sub_72B0(v11);
  __chkstk_darwin(v12);
  sub_5658();
  sub_EE04();
  __chkstk_darwin(v13);
  sub_13C5C();
  sub_EE14(v14);
  v169 = sub_50654();
  sub_8558();
  v174 = v15;
  __chkstk_darwin(v16);
  sub_5630();
  sub_EE14(v18 - v17);
  v19 = sub_503A4();
  v20 = sub_72B0(v19);
  __chkstk_darwin(v20);
  sub_5630();
  sub_EE14(v22 - v21);
  v23 = sub_50A24();
  v24 = sub_72B0(v23);
  __chkstk_darwin(v24);
  sub_5658();
  sub_EE04();
  __chkstk_darwin(v25);
  sub_13C5C();
  sub_EE14(v26);
  v164 = sub_50354();
  sub_8558();
  v159 = v27;
  __chkstk_darwin(v28);
  sub_5630();
  sub_EE14(v30 - v29);
  v176 = sub_50334();
  sub_8558();
  v179 = v31;
  __chkstk_darwin(v32);
  sub_5630();
  v177 = v34 - v33;
  sub_13B48();
  v35 = sub_502E4();
  sub_8558();
  v37 = v36;
  __chkstk_darwin(v38);
  sub_5630();
  v41 = v40 - v39;
  v42 = sub_50B04();
  sub_8558();
  v44 = v43;
  __chkstk_darwin(v45);
  sub_5658();
  sub_EE04();
  __chkstk_darwin(v46);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v47);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v48);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v49);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v50);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v51);
  v53 = &v154 - v52;
  v54 = sub_50AE4();
  sub_2970();
  swift_beginAccess();
  v182 = v44;
  v55 = *(v44 + 16);
  v175 = v54;
  v171 = v42;
  v180 = v55;
  v181 = v44 + 16;
  (v55)(v53, v54, v42);
  sub_246FC();
  v172 = v2;
  v56(v41, v2, v35);
  v57 = sub_50AF4();
  v58 = sub_50BD4();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = sub_EFB0();
    v156 = v3;
    v155 = v5;
    v60 = v59;
    v61 = sub_EFC8();
    v183[0] = v61;
    *v60 = 136315138;
    sub_36DEC(&qword_6C078, 255, &type metadata accessor for Input, &protocol conformance descriptor for Input);
    v62 = sub_50CD4();
    v64 = v63;
    (*(v37 + 8))(v41, v35);
    v65 = sub_4DE68(v62, v64, v183);

    *(v60 + 4) = v65;
    _os_log_impl(&dword_0, v57, v58, "EmergencyNumberFlow onInput: %s", v60, 0xCu);
    sub_253C(v61);
    sub_5674(v61);
    v66 = v60;
    v5 = v155;
    v3 = v156;
    sub_5674(v66);
  }

  else
  {

    (*(v37 + 8))(v41, v35);
  }

  v67 = v182;
  v68 = *(v182 + 8);
  v69 = v171;
  v68(v53, v171);
  v70 = v177;
  sub_502D4();
  v71 = v176;
  v72 = (*(v179 + 88))(v70, v176);
  v73 = v178;
  if (v72 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v178 = v68;
    v74 = sub_36FD0();
    v75(v74);
    v76 = v169;
    (*(v174 + 32))(v173, v70, v169);
    sub_2970();
    swift_beginAccess();
    sub_36FAC();
    v77 = v180;
    v180();
    v78 = sub_50AF4();
    v79 = sub_50BD4();
    if (sub_27800(v79))
    {
      v80 = sub_5718();
      sub_36F28(v80);
      sub_36F08(&dword_0, v81, v82, "EmergencyNumberFlow onInput .NLv3IntentOnly");
      sub_5674(v3);
    }

    v83 = sub_37030();
    v84(v83);
    v85 = v174;
    sub_246FC();
    v86 = v168;
    v87 = v173;
    v88(v168, v173, v76);
    sub_36D10(v86, v170);
    sub_41554();
    v90 = v89;
    sub_12B38(v86, type metadata accessor for EmergencyNLIntent);
    (*(v85 + 8))(v87, v76);
    goto LABEL_8;
  }

  if (v72 == enum case for Parse.directInvocation(_:))
  {
    v100 = sub_36FD0();
    v101(v100);
    v102 = v5;
    v103 = v70;
    v104 = v3;
    (*(v5 + 32))(v73, v103, v3);
    sub_2970();
    swift_beginAccess();
    sub_36FAC();
    v180();
    v105 = sub_50AF4();
    v106 = sub_50BD4();
    if (sub_EF00(v106))
    {
      v107 = sub_5718();
      sub_EEC8(v107);
      sub_EED4(&dword_0, v108, v109, "EmergencyNumberFlow onInput .directInvocation");
      sub_EE58();
    }

    v110 = v67 + 8;
    v68(v167, v69);
    if (sub_50304() == 0xD000000000000035 && 0x8000000000055140 == v111)
    {

      v114 = v104;
    }

    else
    {
      v113 = sub_50CE4();

      v114 = v104;
      if ((v113 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    v128 = sub_2B6B0(v73);
    if (v128 != 35)
    {
      LOBYTE(v91) = v128;
      (*(v102 + 8))(v73, v114);
      LOBYTE(v90) = 0;
      LOWORD(v92) = 4;
      goto LABEL_34;
    }

LABEL_28:
    v182 = v110;
    sub_2970();
    swift_beginAccess();
    sub_36FAC();
    v180();
    v129 = v102;
    v130 = *(v102 + 16);
    v131 = v162;
    v130(v162, v73, v114);
    v132 = sub_50AF4();
    LODWORD(v181) = sub_50BE4();
    if (os_log_type_enabled(v132, v181))
    {
      v133 = v114;
      v134 = sub_EFB0();
      v180 = sub_EFC8();
      v184 = v180;
      *v134 = 136315138;
      v130(v157, v131, v133);
      v135 = sub_50B64();
      v137 = v136;
      v138 = *(v129 + 8);
      v138(v131, v133);
      v139 = sub_4DE68(v135, v137, &v184);

      *(v134 + 4) = v139;
      _os_log_impl(&dword_0, v132, v181, "Failed to get emergencySituation from DirectInvocation: %s", v134, 0xCu);
      v140 = v180;
      sub_253C(v180);
      sub_5674(v140);
      sub_EE58();

      v141 = sub_37050();
      (v68)(v141);
      v138(v178, v133);
    }

    else
    {

      v152 = *(v102 + 8);
      v152(v131, v114);
      v153 = sub_37050();
      (v68)(v153);
      v152(v73, v114);
    }

    goto LABEL_36;
  }

  if (v72 == enum case for Parse.uso(_:))
  {
    v178 = v68;
    v115 = sub_36FD0();
    v116(v115);
    v117 = v159;
    (*(v159 + 32))(v163, v70, v164);
    sub_2970();
    swift_beginAccess();
    sub_36FAC();
    v77 = v180;
    v180();
    v118 = sub_50AF4();
    v119 = sub_50BD4();
    if (sub_EF00(v119))
    {
      v120 = sub_5718();
      sub_EEC8(v120);
      sub_EED4(&dword_0, v121, v122, "EmergencyNumberFlow onInput .uso");
      sub_EE58();
    }

    v123 = sub_37030();
    v124(v123);
    v125 = v163;
    sub_50344();
    v183[3] = &type metadata for EmergencyFeatureFlagsKey;
    v183[4] = sub_EB68();
    LOBYTE(v183[0]) = 2;
    sub_50374();
    sub_253C(v183);
    v126 = v160;
    sub_50A14();
    sub_36D10(v126, v161);
    sub_411F8();
    v90 = v127;
    sub_12B38(v126, &type metadata accessor for EmergencyDialogAct);
    (*(v117 + 8))(v125, v164);
LABEL_8:
    v91 = HIWORD(v90);
    v92 = v90 >> 8;
    if (BYTE1(v90) == 4 && BYTE2(v90) == 35)
    {
      sub_2970();
      swift_beginAccess();
      v93 = v165;
      sub_36FAC();
      v77();
      v94 = v93;
      v95 = sub_50AF4();
      v96 = sub_50BD4();
      if (sub_EF00(v96))
      {
        v97 = sub_5718();
        sub_EEC8(v97);
        sub_EED4(&dword_0, v98, v99, "#EmergencyNumberFlow Produced an empty intent. Ignoring input.");
        sub_EE58();
      }

      v178(v94, v69);
      goto LABEL_36;
    }

LABEL_34:
    v151 = v166;
    *(v166 + 18) = v91;
    *(v151 + 16) = v90 & 1 | (v92 << 8);
    goto LABEL_36;
  }

  sub_2970();
  swift_beginAccess();
  v142 = v158;
  sub_36FAC();
  v180();
  v143 = sub_50AF4();
  sub_50BE4();
  sub_246B4();
  if (os_log_type_enabled(v143, v144))
  {
    v145 = sub_EFB0();
    v146 = sub_EFC8();
    v185 = v146;
    *v145 = 136315138;
    LOBYTE(v184) = 0;
    v147 = sub_50B64();
    v149 = sub_4DE68(v147, v148, &v185);
    v71 = v176;

    *(v145 + 4) = v149;
    _os_log_impl(&dword_0, v143, v5, "%s", v145, 0xCu);
    sub_253C(v146);
    v150 = v146;
    v70 = v177;
    sub_5674(v150);
    sub_5674(v145);
  }

  v68(v142, v69);
  (*(v179 + 8))(v70, v71);
LABEL_36:
  sub_8A94();
}

uint64_t sub_341E8()
{
  sub_EF64();
  v1[51] = v2;
  v1[52] = v0;
  v3 = sub_50B04();
  v1[53] = v3;
  v1[54] = *(v3 - 8);
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();

  return _swift_task_switch(sub_342BC, 0, 0);
}

uint64_t sub_342BC(uint64_t a1)
{
  v54 = v1;
  v2 = *(v1 + 456);
  v4 = *(v1 + 424);
  v3 = *(v1 + 432);
  v5 = sub_50AE4();
  *(v1 + 464) = v5;
  sub_2970();
  swift_beginAccess();
  v6 = *(v3 + 16);
  *(v1 + 472) = v6;
  *(v1 + 480) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);

  v7 = sub_50AF4();
  v8 = sub_50BD4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v1 + 432);
    v48 = *(v1 + 424);
    v49 = *(v1 + 456);
    v10 = v6;
    v11 = *(v1 + 416);
    v12 = sub_EFB0();
    v51 = v5;
    v13 = sub_EFC8();
    v53 = v13;
    *v12 = 136315138;
    v14 = *(v11 + 18);
    *(v1 + 511) = *(v11 + 16);
    *(v1 + 513) = v14;
    v15 = sub_50B64();
    v17 = sub_4DE68(v15, v16, &v53);
    v6 = v10;

    *(v12 + 4) = v17;
    _os_log_impl(&dword_0, v7, v8, "EmergencyNumberFlow execute with state: %s", v12, 0xCu);
    sub_253C(v13);
    v18 = v13;
    v5 = v51;
    sub_5674(v18);
    sub_5674(v12);

    v19 = *(v9 + 8);
    v19(v49, v48);
  }

  else
  {
    v20 = *(v1 + 456);
    v21 = *(v1 + 424);
    v22 = *(v1 + 432);

    v19 = *(v22 + 8);
    v19(v20, v21);
  }

  *(v1 + 488) = v19;
  v23 = *(v1 + 416);
  v24 = *(v23 + 18);
  v25 = *(v23 + 16);
  v26 = v25 | (v24 << 16);
  *(v1 + 506) = v24;
  *(v1 + 504) = v25;
  if (v25 == 2)
  {
    v27 = *(v1 + 408);
    sub_E9D0();
    v28 = swift_allocError();
    *v29 = 2;
    sub_1D68(v28, v23 + 64, (v23 + 104), v27);

    goto LABEL_8;
  }

  if (v25 == 3)
  {
    sub_50194();
LABEL_8:

    v30 = *(v1 + 8);

    return v30();
  }

  v32 = *(v1 + 448);
  v33 = *(v1 + 424);
  sub_2970();
  swift_beginAccess();
  v6(v32, v5, v33);
  v34 = sub_50AF4();
  v35 = sub_50BD4();
  v36 = os_log_type_enabled(v34, v35);
  v37 = *(v1 + 448);
  v38 = *(v1 + 424);
  if (v36)
  {
    v52 = *(v1 + 424);
    v39 = sub_EFB0();
    v40 = sub_EFC8();
    v53 = v40;
    *v39 = 136315138;
    *(v1 + 508) = v26 & 1;
    *(v1 + 509) = BYTE1(v26);
    *(v1 + 510) = BYTE2(v26);
    v41 = sub_50B64();
    v50 = v37;
    v43 = sub_4DE68(v41, v42, &v53);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_0, v34, v35, "EmergencyNumberFlow needsExecution intent: %s", v39, 0xCu);
    sub_253C(v40);
    sub_5674(v40);
    sub_5674(v39);

    v44 = v50;
    v45 = v52;
  }

  else
  {

    v44 = v37;
    v45 = v38;
  }

  v19(v44, v45);
  v46 = *(v1 + 416);
  v47 = swift_task_alloc();
  *(v1 + 496) = v47;
  *v47 = v1;
  v47[1] = sub_34710;

  return sub_15100(v1 + 16, v46 + 24, SBYTE2(v26), SBYTE1(v26));
}

uint64_t sub_34710()
{
  sub_EF64();
  v1 = *v0;
  sub_EF2C();
  *v2 = v1;

  return _swift_task_switch(sub_34800, 0, 0);
}

uint64_t sub_34800()
{
  v1 = *(v0 + 506);
  if (v1 == 35)
  {
    if (HIBYTE(*(v0 + 504)) == 4)
    {
      v2 = &qword_6C050;
      v3 = &qword_51E00;
      v4 = v0 + 16;
      goto LABEL_8;
    }

    v1 = (*(v0 + 504) | (*(v0 + 506) << 16)) >> 8;
  }

  sub_87A8();
  if (*(v0 + 320))
  {
    v5 = *(v0 + 416);
    sub_EDD0((v0 + 296), v0 + 256);
    sub_1FE8((v5 + 184), *(v5 + 208));
    sub_259A0(v1, (v0 + 16), v0 + 256);
    sub_51C0(v0 + 16, &qword_6C050, &qword_51E00);
    sub_50184();

    sub_253C((v0 + 256));
    goto LABEL_11;
  }

  sub_51C0(v0 + 16, &qword_6C050, &qword_51E00);
  v2 = &qword_6C7A0;
  v3 = &unk_53C80;
  v4 = v0 + 296;
LABEL_8:
  sub_51C0(v4, v2, v3);
  v6 = *(v0 + 472);
  v7 = *(v0 + 424);
  sub_2970();
  swift_beginAccess();
  sub_36F58();
  v6();
  v8 = sub_50AF4();
  v9 = sub_50BE4();
  if (sub_EF4C(v9))
  {
    v10 = sub_5718();
    sub_EEC8(v10);
    _os_log_impl(&dword_0, v8, v9, "EmergencyNumberFlow Failed to pick a catWrapper", v7, 2u);
    sub_EE58();
  }

  v11 = *(v0 + 488);
  v12 = *(v0 + 440);
  v14 = *(v0 + 416);
  v13 = *(v0 + 424);

  v11(v12, v13);
  v15 = sub_1FE8((v14 + 104), *(v14 + 128));
  memcpy((v0 + 144), v15, 0x70uLL);
  sub_202C(v14 + 64, (v0 + 144));
  sub_50184();

LABEL_11:

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_34A68(uint64_t a1)
{
  type metadata accessor for EmergencyNumberFlow();
  sub_36DEC(&qword_6D658, v1, type metadata accessor for EmergencyNumberFlow, &unk_53C20);
  sub_36F40();
  return sub_4FF14();
}

void *sub_34AF0()
{
  sub_253C(v0 + 3);
  sub_253C(v0 + 8);
  sub_253C(v0 + 13);
  sub_55C8((v0 + 18));
  sub_253C(v0 + 23);
  return v0;
}

uint64_t sub_34B30()
{
  sub_34AF0();

  return _swift_deallocClassInstance(v0, 224, 7);
}

uint64_t getEnumTagSinglePayload for EmergencyNumberFlow.EmergencyNumberFlowState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD)
  {
    v2 = (a2 + 16776963) >> 24 == 255 ? 2 : 1;
    v3 = (a2 + 16776963) >> 24 ? v2 : 0;
    if (v3)
    {
      if (v3 == 2)
      {
        v4 = *(a1 + 3);
        if (*(a1 + 3))
        {
          return (*a1 | (*(a1 + 2) << 16) | (v4 << 24)) - 16776963;
        }
      }

      else
      {
        v4 = *(a1 + 3);
        if (*(a1 + 3))
        {
          return (*a1 | (*(a1 + 2) << 16) | (v4 << 24)) - 16776963;
        }
      }
    }
  }

  v6 = *a1;
  if (v6 >= 2)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 >= 3)
  {
    return v7 - 2;
  }

  else
  {
    return 0;
  }
}