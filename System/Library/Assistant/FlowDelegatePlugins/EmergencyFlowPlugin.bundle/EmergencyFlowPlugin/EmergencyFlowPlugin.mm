uint64_t sub_1D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_50B04();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_50AE4();
  swift_beginAccess();
  (*(v9 + 16))(v11, v12, v8);
  swift_errorRetain();
  v13 = sub_50AF4();
  v14 = sub_50BF4();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v28 = a4;
    v16 = v15;
    v17 = swift_slowAlloc();
    __dst[0] = v17;
    *v16 = 136315138;
    v29 = a1;
    swift_errorRetain();
    sub_2208(&qword_6B980, qword_52B10);
    v18 = sub_50B64();
    v20 = sub_4DE68(v18, v19, __dst);
    v27 = v8;
    v21 = a3;
    v22 = a2;
    v23 = v20;

    *(v16 + 4) = v23;
    a2 = v22;
    a3 = v21;
    _os_log_impl(&dword_0, v13, v14, "Execution Error: %s", v16, 0xCu);
    sub_253C(v17);

    (*(v9 + 8))(v11, v27);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v24 = sub_1FE8(a3, a3[3]);
  memcpy(__dst, v24, 0x70uLL);
  sub_202C(a2, __dst);
  sub_50184();
}

void *sub_1FE8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_202C(uint64_t a1, const void *a2)
{
  v4 = sub_50884();
  __chkstk_darwin(v4);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = sub_2208(&qword_6B988, &qword_530B0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v8);
  v12 = &v16[-v11 - 8];
  v17[3] = &type metadata for EmergencyCATProvider;
  v17[4] = &off_66C88;
  v17[0] = swift_allocObject();
  memcpy((v17[0] + 16), a2, 0x70uLL);
  sub_1FE8(v17, &type metadata for EmergencyCATProvider);
  sub_22F0(a2, v16);

  sub_24C7C();

  sub_234C(v12, v10);
  sub_23BC(a1, v16);
  sub_50874();
  sub_2420();
  v13 = sub_4FF04();
  sub_2478(v6);
  sub_24D4(v12);
  sub_253C(v17);
  return v13;
}

uint64_t sub_2208(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2250()
{

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_234C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2208(&qword_6B988, &qword_530B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2420()
{
  result = qword_6B990;
  if (!qword_6B990)
  {
    sub_50884();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6B990);
  }

  return result;
}

uint64_t sub_2478(uint64_t a1)
{
  v2 = sub_50884();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24D4(uint64_t a1)
{
  v2 = sub_2208(&qword_6B988, &qword_530B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_253C(void *a1)
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

uint64_t sub_2588(void *a1)
{
  v2 = v1;
  v4 = sub_2208(&qword_6B998, qword_51850);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v33 - v9;
  __chkstk_darwin(v8);
  v12 = &v33 - v11;
  if (sub_509A4())
  {
    v13 = a1[3];
    v14 = a1[4];
    sub_1FE8(a1, v13);

    sub_2970();
    sub_507F4();
    v15 = sub_50804();
    sub_28E0(v12, 0, 1, v15);
    sub_50744();
    swift_allocObject();
    sub_50734();
    sub_2970();
    sub_50724();

    v16 = sub_50714();

    sub_29D4();
    v17 = sub_500B4();
    v18 = 0;
    if ((v17 & 1) == 0)
    {
      sub_29D4();
      v18 = sub_50044() ^ 1;
    }

    (*(v14 + 24))(v12, v16, v18 & 1, v13, v14);
  }

  else if (sub_509C4())
  {
    v19 = a1[3];
    v20 = a1[4];
    sub_1FE8(a1, v19);

    sub_2970();
    sub_507F4();
    v21 = sub_50804();
    sub_28E0(v10, 0, 1, v21);
    sub_29A8();
    v22 = sub_500B4();
    v23 = 0;
    if ((v22 & 1) == 0)
    {
      sub_29A8();
      v23 = sub_50044() ^ 1;
    }

    (*(v20 + 16))(v10, v23 & 1, v19, v20);
    v12 = v10;
  }

  else
  {
    v24 = *(v1 + 96);
    v25 = *(v2 + 104);
    v26 = HIBYTE(v25) & 0xF;
    if ((v25 & 0x2000000000000000) == 0)
    {
      v26 = v24 & 0xFFFFFFFFFFFFLL;
    }

    if (v26)
    {

      sub_2970();
      sub_507F4();
      v27 = sub_50804();
      v28 = 0;
    }

    else
    {
      v27 = sub_50804();
      v28 = 1;
    }

    sub_28E0(v7, v28, 1, v27);
    v29 = a1[3];
    v30 = a1[4];
    sub_1FE8(a1, v29);
    sub_297C();
    if (sub_500B4())
    {
      v31 = 0;
    }

    else
    {
      sub_297C();
      v31 = sub_50044() ^ 1;
    }

    (*(v30 + 8))(v7, v31 & 1, v29, v30);
    v12 = v7;
  }

  return sub_2908(v12);
}

uint64_t sub_2908(uint64_t a1)
{
  v2 = sub_2208(&qword_6B998, qword_51850);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_297C()
{
  v1 = v0[3];
  sub_1FE8(v0, v1);
  return v1;
}

uint64_t sub_29A8()
{
  v1 = v0[3];
  sub_1FE8(v0, v1);
  return v1;
}

uint64_t sub_29D4()
{
  v1 = v0[3];
  sub_1FE8(v0, v1);
  return v1;
}

uint64_t type metadata accessor for CommonCATs(uint64_t a1)
{
  result = qword_6B9A8;
  if (!qword_6B9A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2A4C(uint64_t a1)
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

uint64_t sub_2B3C(uint64_t a1, void *a2)
{
  v5 = sub_50864();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2208(&unk_6D680, &qword_515B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  *(v2 + qword_6B9A0) = a2;
  v12 = *(v6 + 16);
  v12(v2 + qword_6DDE0, a1, v5);
  v13 = sub_4FD64();
  sub_28E0(v11, 1, 1, v13);
  v12(v8, a1, v5);
  v14 = a2;
  v15 = sub_50784();
  (*(v6 + 8))(a1, v5);
  return v15;
}

uint64_t sub_2CE4()
{
  sub_3260();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_50B24();
  v3 = *(v0 + qword_6B9A0);
  if (v3)
  {
    v4 = *(v0 + qword_6B9A0);
  }

  else
  {
    sub_50774();
    v4 = sub_50764();
  }

  sub_507E4();
  sub_3238();
  v5 = v3;
  sub_3248();
  sub_507D4();

  return sub_31D0(&v7);
}

uint64_t sub_2E0C()
{
  sub_3260();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_50B24();
  v3 = *(v0 + qword_6B9A0);
  if (v3)
  {
    v4 = *(v0 + qword_6B9A0);
  }

  else
  {
    sub_50774();
    v4 = sub_50764();
  }

  sub_507E4();
  sub_3238();
  v5 = v3;
  sub_507D4();

  return sub_31D0(&v7);
}

uint64_t sub_2F44()
{
  sub_3260();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_50B24();
  v3 = *(v0 + qword_6B9A0);
  if (v3)
  {
    v4 = *(v0 + qword_6B9A0);
  }

  else
  {
    sub_50774();
    v4 = sub_50764();
  }

  sub_507E4();
  sub_3238();
  v5 = v3;
  sub_3248();
  sub_507D4();

  return sub_31D0(&v7);
}

uint64_t sub_309C()
{
  v1 = qword_6DDE0;
  sub_50864();
  sub_327C();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

uint64_t sub_3108()
{
  v0 = sub_507C4();

  v1 = qword_6DDE0;
  sub_50864();
  sub_327C();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_3174()
{
  v0 = sub_3108();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_31D0(uint64_t a1)
{
  v2 = sub_2208(&qword_6B9F8, qword_515B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3260()
{

  return type metadata accessor for CATWrapper(0);
}

uint64_t sub_3290(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2208(&qword_6BB20, &unk_51FB0);
  __chkstk_darwin(v4 - 8);
  v6 = &v37 - v5;
  v7 = sub_50B04();
  sub_5620();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_5658();
  v13 = (v11 - v12);
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  v17 = sub_50AE4();
  sub_56AC(v17, v42);
  v39 = *(v9 + 16);
  v40 = v17;
  v39(v16, v17, v7);
  v18 = sub_50AF4();
  v19 = sub_50BD4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = sub_5718();
    v38 = v2;
    v21 = v9;
    v22 = v6;
    v23 = v7;
    v24 = a1;
    v25 = v13;
    v26 = v20;
    *v20 = 0;
    _os_log_impl(&dword_0, v18, v19, "EmergencyConfirmationFlow onInput", v20, 2u);
    v27 = v26;
    v13 = v25;
    a1 = v24;
    v7 = v23;
    v6 = v22;
    v9 = v21;
    v2 = v38;
    sub_5674(v27);
  }

  v28 = *(v9 + 8);
  v28(v16, v7);
  if (*(v2 + 16) != 1)
  {
    return 1;
  }

  sub_EFE0(a1, v2 + 152);
  v29 = sub_50284();
  v30 = 1;
  v31 = sub_513C(v6, 1, v29);
  sub_51C0(v6, &qword_6BB20, &unk_51FB0);
  if (v31 == 1)
  {
    v32 = v40;
    sub_56AC(v40, v41);
    v39(v13, v32, v7);
    v33 = sub_50AF4();
    v34 = sub_50BD4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = sub_5718();
      *v35 = 0;
      _os_log_impl(&dword_0, v33, v34, "No confirmation response found in input, ignoring.", v35, 2u);
      sub_5674(v35);
    }

    v28(v13, v7);
    return 0;
  }

  return v30;
}

uint64_t sub_35A8(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v3 = sub_50B04();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_3680, 0, 0);
}

uint64_t sub_3680(uint64_t a1)
{
  v47 = v1;
  v2 = *(v1 + 128);
  v3 = sub_50AE4();
  sub_56AC(v3, v1 + 16);
  v4 = *(v2 + 16);
  v5 = sub_568C();
  v4(v5);

  v6 = sub_50AF4();
  v7 = sub_50BD4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v1 + 128);
    v43 = *(v1 + 120);
    v44 = *(v1 + 152);
    v9 = v4;
    v10 = *(v1 + 112);
    v11 = swift_slowAlloc();
    v45 = v3;
    v46 = swift_slowAlloc();
    v12 = v46;
    *v11 = 136315138;
    *(v1 + 160) = *(v10 + 16);
    v13 = sub_50B64();
    v15 = sub_4DE68(v13, v14, &v46);
    v4 = v9;

    *(v11 + 4) = v15;
    _os_log_impl(&dword_0, v6, v7, "EmergencyConfirmationFlow execute with state: %s", v11, 0xCu);
    sub_253C(v12);
    v16 = v12;
    v3 = v45;
    sub_5674(v16);
    sub_5674(v11);

    v17 = *(v8 + 8);
    v17(v44, v43);
  }

  else
  {
    v18 = *(v1 + 128);

    v17 = *(v18 + 8);
    v19 = sub_5668();
    (v17)(v19);
  }

  v20 = *(v1 + 112);
  switch(*(v20 + 16))
  {
    case 1:
      sub_56AC(v3, v1 + 64);
      v31 = sub_568C();
      v4(v31);
      v32 = sub_50AF4();
      v33 = sub_50BD4();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = sub_5718();
        *v34 = 0;
        sub_56D8(&dword_0, v35, v36, "EmergencyConfirmationFlow Didn't receive a valid response. Reprompting user.");
        sub_5674(v34);
      }

      v37 = *(v1 + 144);
      v38 = *(v1 + 120);

      v17(v37, v38);
      *(v1 + 88) = sub_3BC4();

      sub_2208(&qword_6BB40, &unk_51770);
      sub_5640();
      sub_5528(v39, &qword_6BB40, &unk_51770, v40);
      sub_50154();

      goto LABEL_13;
    case 2:
      *(v20 + 16) = 3;
      sub_1FE8((v20 + 152), *(v20 + 176));
      type metadata accessor for ConfirmationFlowConfigModel(0);

      sub_50184();
      goto LABEL_13;
    case 3:
      sub_56AC(v3, v1 + 40);
      v23 = sub_568C();
      v4(v23);
      v24 = sub_50AF4();
      v25 = sub_50BD4();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = sub_5718();
        *v26 = 0;
        sub_56D8(&dword_0, v27, v28, "EmergencyConfirmationFlow completed");
        sub_5674(v26);
      }

      v29 = *(v1 + 136);
      v30 = *(v1 + 120);

      v17(v29, v30);
      sub_50194();
      goto LABEL_14;
    default:
      *(v20 + 16) = 1;
      *(v1 + 96) = sub_3BC4();

      sub_2208(&qword_6BB40, &unk_51770);
      sub_5640();
      sub_5528(v21, &qword_6BB40, &unk_51770, v22);
      sub_50164();

LABEL_13:

LABEL_14:

      v41 = *(v1 + 8);

      return v41();
  }
}

uint64_t sub_3B38(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EmergencyConfirmationFlow();
  sub_54E0(&qword_6BB48, v2, type metadata accessor for EmergencyConfirmationFlow, &unk_516F8);
  return sub_4FF14();
}

uint64_t sub_3BC4()
{
  sub_2208(&qword_6BB40, &unk_51770);
  memcpy(v42, v0 + 3, sizeof(v42));
  memcpy(v41, v0 + 3, sizeof(v41));
  sub_23BC((v0 + 19), v40);
  sub_23BC((v0 + 24), v39);
  sub_23BC((v0 + 29), v38);
  sub_5260((v0 + 34), v36);
  sub_52BC(v40, v40[3]);
  sub_5620();
  __chkstk_darwin(v1);
  sub_5630();
  v4 = v3 - v2;
  (*(v5 + 16))(v3 - v2);
  sub_52BC(v38, v38[3]);
  sub_5620();
  __chkstk_darwin(v6);
  sub_5630();
  v9 = (v8 - v7);
  (*(v10 + 16))(v8 - v7);
  memcpy(v43, v9, sizeof(v43));
  v11 = type metadata accessor for ConfirmationFlowConfigModel(0);
  v34 = v11;
  v35 = &off_66AB0;
  v12 = sub_530C(v33);
  sub_536C(v4, v12, type metadata accessor for ConfirmationFlowConfigModel);
  v32[3] = &type metadata for EmergencyCATProvider;
  v32[4] = &off_66C88;
  v32[0] = swift_allocObject();
  memcpy((v32[0] + 16), v43, 0x70uLL);
  type metadata accessor for EmergencyPromptForConfirmationFlowStrategy();
  v13 = swift_allocObject();
  sub_52BC(v33, v34);
  sub_5620();
  __chkstk_darwin(v14);
  sub_5630();
  v17 = v16 - v15;
  (*(v18 + 16))(v16 - v15);
  sub_52BC(v32, &type metadata for EmergencyCATProvider);
  sub_5620();
  __chkstk_darwin(v19);
  sub_5630();
  v22 = (v21 - v20);
  (*(v23 + 16))(v21 - v20);
  memcpy(__dst, v22, sizeof(__dst));
  *(v13 + 40) = v11;
  *(v13 + 48) = &off_66AB0;
  v24 = sub_530C((v13 + 16));
  sub_536C(v17, v24, type metadata accessor for ConfirmationFlowConfigModel);
  *(v13 + 120) = &type metadata for EmergencyCATProvider;
  *(v13 + 128) = &off_66C88;
  v25 = swift_allocObject();
  *(v13 + 96) = v25;
  memcpy((v25 + 16), __dst, 0x70uLL);
  sub_546C(v39, v13 + 56);
  v26 = v36[1];
  *(v13 + 136) = v36[0];
  *(v13 + 152) = v26;
  v27 = v37;
  *(v13 + 176) = 0;
  *(v13 + 184) = 0;
  *(v13 + 168) = v27;
  sub_5484(v42, v31);
  sub_253C(v32);
  sub_253C(v33);
  sub_253C(v38);
  sub_253C(v40);
  v28 = v0[27];
  v29 = v0[28];
  sub_1FE8(v0 + 24, v28);
  (*(v29 + 40))(v31, v28, v29);
  return sub_4FE44();
}

uint64_t sub_4038(uint64_t a1)
{
  v2 = sub_50284();
  sub_5620();
  v93 = v3;
  __chkstk_darwin(v4);
  sub_5630();
  v85 = v6 - v5;
  v91 = sub_2208(&qword_6BB18, &unk_51750);
  sub_569C();
  __chkstk_darwin(v7);
  v94 = &v81 - v8;
  v9 = sub_2208(&qword_6BB20, &unk_51FB0);
  __chkstk_darwin(v9 - 8);
  sub_5658();
  v90 = v10 - v11;
  __chkstk_darwin(v12);
  v92 = &v81 - v13;
  v14 = type metadata accessor for EmergencyConfirmationResponseProvider(0);
  __chkstk_darwin(v14 - 8);
  sub_5630();
  v95 = v16 - v15;
  v17 = sub_2208(&qword_6BB28, &unk_51760);
  sub_5620();
  v19 = v18;
  __chkstk_darwin(v20);
  sub_5658();
  v98 = (v21 - v22);
  __chkstk_darwin(v23);
  v25 = &v81 - v24;
  v26 = sub_50B04();
  sub_5620();
  v28 = v27;
  __chkstk_darwin(v29);
  sub_5658();
  v89 = v30 - v31;
  __chkstk_darwin(v32);
  v34 = &v81 - v33;
  v35 = sub_50AE4();
  sub_56AC(v35, v105);
  v101 = v28;
  v36 = *(v28 + 16);
  v88 = v35;
  v97 = v26;
  v87 = v28 + 16;
  v86 = v36;
  v36(v34, v35, v26);
  v37 = *(v19 + 16);
  v99 = a1;
  v96 = v37;
  v37(v25, a1, v17);
  v38 = sub_50AF4();
  v39 = sub_50BD4();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v84 = v2;
    v41 = v40;
    v82 = swift_slowAlloc();
    v104[0] = v82;
    *v41 = 136315138;
    sub_5528(&qword_6BB38, &qword_6BB28, &unk_51760, &protocol conformance descriptor for PromptResult<A>);
    v42 = sub_50CD4();
    v43 = v19;
    v83 = v19;
    v19 = v44;
    v45 = *(v43 + 8);
    v45(v25, v17);
    v46 = sub_4DE68(v42, v19, v104);

    *(v41 + 4) = v46;
    _os_log_impl(&dword_0, v38, v39, "EmergencyConfirmationFlow finished promptFlow with result: %s", v41, 0xCu);
    v47 = v82;
    sub_253C(v82);
    sub_5674(v47);
    v48 = v41;
    v2 = v84;
    sub_5674(v48);
  }

  else
  {

    v45 = *(v19 + 8);
    v45(v25, v17);
  }

  v49 = sub_56C4();
  (v19)(v49);
  v50 = v98;
  v96(v98, v99, v17);
  v51 = sub_5668();
  v53 = v52(v51);
  if (v53 != enum case for PromptResult.answered<A>(_:))
  {
    if (v53 != enum case for PromptResult.error<A>(_:))
    {
      *(v100 + 16) = 3;
      v76 = sub_5668();
      return (v45)(v76);
    }

    v62 = sub_5668();
    v63(v62);
    v64 = *v50;
    v65 = v88;
    sub_56AC(v88, v104);
    v66 = v89;
    v86(v89, v65, v34);
    swift_errorRetain();
    v67 = sub_50AF4();
    v68 = sub_50BE4();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v102 = v64;
      v103 = v70;
      *v69 = 136315138;
      swift_errorRetain();
      sub_2208(&qword_6B980, qword_52B10);
      v71 = sub_50B64();
      v73 = sub_4DE68(v71, v72, &v103);

      *(v69 + 4) = v73;
      _os_log_impl(&dword_0, v67, v68, "EmergencyConfirmationFlow Error: %s", v69, 0xCu);
      sub_253C(v70);
      sub_5674(v70);
      sub_5674(v69);
    }

    else
    {
    }

    result = (v19)(v66, v34);
    goto LABEL_20;
  }

  v54 = sub_5668();
  v55(v54);
  v56 = v95;
  sub_536C(v50, v95, type metadata accessor for EmergencyConfirmationResponseProvider);
  v58 = v92;
  v57 = v93;
  (*(v93 + 104))(v92, enum case for ConfirmationResponse.confirmed(_:), v2);
  sub_28E0(v58, 0, 1, v2);
  v59 = *(v91 + 48);
  v60 = v94;
  sub_50CC(v56, v94);
  sub_50CC(v58, v60 + v59);
  sub_56F8(v60);
  if (v75)
  {
    sub_51C0(v58, &qword_6BB20, &unk_51FB0);
    sub_5164(v56);
    sub_56F8(v60 + v59);
    if (v75)
    {
      result = sub_51C0(v60, &qword_6BB20, &unk_51FB0);
LABEL_22:
      v77 = 2;
      goto LABEL_23;
    }

    goto LABEL_16;
  }

  v74 = v90;
  sub_50CC(v60, v90);
  sub_56F8(v60 + v59);
  if (v75)
  {
    sub_51C0(v58, &qword_6BB20, &unk_51FB0);
    sub_5164(v95);
    (*(v57 + 8))(v74, v2);
LABEL_16:
    result = sub_51C0(v60, &qword_6BB18, &unk_51750);
    goto LABEL_20;
  }

  (*(v57 + 32))(v85, v60 + v59, v2);
  sub_54E0(&qword_6BB30, 255, &type metadata accessor for ConfirmationResponse, &protocol conformance descriptor for ConfirmationResponse);
  v78 = sub_50B34();
  v79 = *(v57 + 8);
  v80 = sub_5668();
  v79(v80);
  sub_51C0(v58, &qword_6BB20, &unk_51FB0);
  sub_5164(v95);
  (v79)(v74, v2);
  result = sub_51C0(v60, &qword_6BB20, &unk_51FB0);
  if (v78)
  {
    goto LABEL_22;
  }

LABEL_20:
  v77 = 3;
LABEL_23:
  *(v100 + 16) = v77;
  return result;
}

Swift::Int sub_49A0(unsigned __int8 a1)
{
  sub_50D34();
  sub_50D44(a1);
  return sub_50D54();
}

Swift::Int sub_4A04(uint64_t a1)
{
  v2 = *v1;
  sub_50D34();
  sub_50D44(v2);
  return sub_50D54();
}

void *sub_4A48()
{
  memcpy(v2, v0 + 3, sizeof(v2));
  sub_5574(v2);
  sub_253C(v0 + 19);
  sub_253C(v0 + 24);
  sub_253C(v0 + 29);
  sub_55C8((v0 + 34));

  return v0;
}

uint64_t sub_4AA8()
{
  sub_4A48();

  return _swift_deallocClassInstance(v0, 328, 7);
}

uint64_t getEnumTagSinglePayload for EmergencyConfirmationFlow.EmergencyOfferActionFlowState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for EmergencyConfirmationFlow.EmergencyOfferActionFlowState(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x4C64);
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

unint64_t sub_4CB4()
{
  result = qword_6BB10;
  if (!qword_6BB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6BB10);
  }

  return result;
}

uint64_t sub_4D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_4DE0;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_4DE0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_4F00(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_4F9C;

  return sub_35A8(a1);
}

uint64_t sub_4F9C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_5090(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EmergencyConfirmationFlow();

  return sub_4FF64();
}

uint64_t sub_50CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2208(&qword_6BB20, &unk_51FB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5164(uint64_t a1)
{
  v2 = type metadata accessor for EmergencyConfirmationResponseProvider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_51C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_2208(a2, a3);
  sub_569C();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_5218(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_52BC(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t *sub_530C(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_536C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3(0);
  sub_569C();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_53CC()
{

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_546C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_54E0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_5528(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_5218(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_5674(uint64_t a1)
{
}

uint64_t sub_56AC(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

void sub_56D8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t sub_5718()
{

  return swift_slowAlloc();
}

void sub_5730(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a1;
  v8 = a1;
  sub_50244();
  sub_50A54();
  sub_50204();
  sub_2208(&qword_6BB58, &qword_517B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_51780;
  *(v9 + 32) = sub_50A54();
  *(v9 + 40) = v10;
  sub_50234();
  v11 = [objc_allocWithZone(SAAceConfirmationContext) init];
  v12 = sub_4E980(v7);
  sub_67D0(v12, v13, v11);
  sub_2208(&unk_6D0C0, &qword_53500);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_51790;
  *(v14 + 32) = v11;
  v15 = v11;
  sub_50214();
  sub_501F4();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_517A0;
  *(v16 + 32) = sub_50964();
  *(v16 + 40) = v17;
  *(v16 + 48) = sub_50964();
  *(v16 + 56) = v18;
  if (v8 <= 2)
  {
    sub_6908();
    sub_6934("com.apple.siri.nl.EmergencyVerb.Value.");
    sub_50C84();
    v20 = *(v16 + 16);
    v19 = *(v16 + 24);
    if (v20 >= v19 >> 1)
    {
      v16 = sub_66C8((v19 > 1), v20 + 1, 1, v16);
    }

    *(v16 + 16) = v20 + 1;
    v21 = v16 + 16 * v20;
    *(v21 + 32) = v23;
    *(v21 + 40) = v24;
    a4 = a3;
    a3 = a2;
    LOBYTE(a2) = v22;
  }

  sub_50224();
  sub_5984(v7, a2 & 1, a3, a4);
  sub_501E4();
}

char *sub_5984(unsigned __int8 a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v5 = sub_50B04();
  v37 = *(v5 - 8);
  v38 = v5;
  __chkstk_darwin(v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_503D4();
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_50434();
  v11 = *(v36 - 8);
  __chkstk_darwin(v36);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_50384();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2208(&qword_6BB60, &qword_517B8);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v34 - v22;
  if (a1 - 1 >= 2)
  {
    if (a1)
    {
      sub_5F38(&v34 - v22);
    }

    else
    {
      sub_5E24(v34, v35, &v34 - v22);
    }
  }

  else
  {
    sub_505E4();
    swift_allocObject();
    v24 = sub_505D4();
    sub_6380(v24, v23);
  }

  sub_6838(v23, v21);
  if (sub_513C(v21, 1, v14) == 1)
  {
    sub_68A8(v21, &qword_6BB60, &qword_517B8);
    v25 = sub_50AE4();
    swift_beginAccess();
    v27 = v37;
    v26 = v38;
    (*(v37 + 16))(v7, v25, v38);
    v28 = sub_50AF4();
    v29 = sub_50BE4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_0, v28, v29, "Nil serialized UsoGraph for confirmation SDA", v30, 2u);
    }

    (*(v27 + 8))(v7, v26);
    v31 = &_swiftEmptyArrayStorage;
  }

  else
  {
    (*(v15 + 32))(v17, v21, v14);
    sub_50424();
    sub_60C4(v17, v10);
    sub_50414();
    sub_2208(&qword_6BB68, &qword_517C0);
    v32 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v31 = swift_allocObject();
    *(v31 + 1) = xmmword_51780;
    (*(v11 + 32))(&v31[v32], v13, v36);
    (*(v15 + 8))(v17, v14);
  }

  sub_68A8(v23, &qword_6BB60, &qword_517B8);
  return v31;
}

uint64_t sub_5E24@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_50554();
  swift_allocObject();
  sub_50544();
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    sub_50534();
  }

  sub_505C4();
  swift_allocObject();
  sub_505B4();

  sub_505A4();

  sub_50604();
  swift_allocObject();
  v7 = sub_505F4();
  sub_50564();
  sub_6380(v7, a3);
}

uint64_t sub_5F38@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_504D4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_50624();
  swift_allocObject();
  v6 = sub_50614();
  sub_50584();
  swift_allocObject();
  sub_50574();
  sub_504C4();
  sub_504B4();
  (*(v3 + 8))(v5, v2);
  sub_50634();
  sub_6380(v6, a1);
}

uint64_t sub_60C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a1;
  v23 = a2;
  v24 = sub_50404();
  v2 = *(v24 - 8);
  v3 = __chkstk_darwin(v24);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v21 - v6;
  v8 = sub_50384();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_50464();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v21 - v17;
  sub_50454();
  (*(v9 + 16))(v11, v22, v8);
  sub_50444();
  sub_503F4();
  (*(v13 + 16))(v16, v18, v12);
  sub_503E4();
  sub_503C4();
  v19 = v24;
  (*(v2 + 16))(v5, v7, v24);
  sub_503B4();
  (*(v2 + 8))(v7, v19);
  return (*(v13 + 8))(v18, v12);
}

uint64_t sub_6380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = sub_50B04();
  v16 = *(v3 - 8);
  __chkstk_darwin(v3);
  v4 = sub_50384();
  v15 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2208(&qword_6BB70, &qword_517C8);
  __chkstk_darwin(v7 - 8);
  v9 = &v14 - v8;
  sub_2208(&unk_6D0C0, &qword_53500);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_51790;
  *(v10 + 32) = a1;
  v11 = sub_50514();
  sub_28E0(v9, 1, 1, v11);

  sub_50504();

  sub_68A8(v9, &qword_6BB70, &qword_517C8);
  sub_50474();

  v12 = v17;
  (*(v15 + 32))(v17, v6, v4);
  return sub_28E0(v12, 0, 1, v4);
}

char *sub_66C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2208(&qword_6BB58, &qword_517B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_67D0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_50B44();

  [a3 setReason:v4];
}

uint64_t sub_6838(uint64_t a1, uint64_t a2)
{
  v4 = sub_2208(&qword_6BB60, &qword_517B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_68A8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2208(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_6908()
{

  sub_50C64(40);
}

void sub_6934(uint64_t a1@<X8>)
{
  v2._countAndFlagsBits = 0xD000000000000026;

  v2._object = ((a1 - 32) | 0x8000000000000000);
  sub_50BA4(v2);
}

uint64_t type metadata accessor for EmergencySuicidePreventionBasicIntentCATs(uint64_t a1)
{
  result = qword_6BB78;
  if (!qword_6BB78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_69E4(uint64_t a1, char a2)
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

uint64_t sub_6B94(uint64_t a1, char a2)
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

uint64_t sub_6D20(uint64_t a1, uint64_t a2, char a3)
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

uint64_t sub_6F78(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_70FC()
{
  v0 = sub_507C4();

  return _swift_deallocClassInstance(v0, 16, 7);
}

uint64_t sub_71A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_2208(a3, a4);
  sub_7298();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_7204(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_2208(a2, a3);
  sub_7298();
  (*(v4 + 8))(a1);
  return a1;
}

__n128 *sub_7260(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x656D614E67726FLL;
  result[2].n128_u64[1] = 0xE700000000000000;
  return result;
}

uint64_t sub_72BC()
{

  return sub_71A0(v1, v0, v2, v3);
}

uint64_t type metadata accessor for SexualAssaultCATs(uint64_t a1)
{
  result = qword_6BBD0;
  if (!qword_6BBD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_7368(uint64_t a1, char a2)
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

uint64_t sub_7514(uint64_t a1)
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

uint64_t sub_7658(uint64_t a1)
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

uint64_t sub_77B0(uint64_t a1)
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

uint64_t sub_796C(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_7BAC(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  strcpy(&a1[2], "websearchQuery");
  a1[2].n128_u8[15] = -18;

  return sub_71A0(v3, v2, v4, v5);
}

uint64_t sub_7C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CsamSituation.Builder();
  swift_initStackObject();
  v3 = sub_14434();
  if (sub_50A44() == 0xD000000000000013 && 0x8000000000054DB0 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_50CE4();
  }

  v3[16] = v6 & 1;
  v7 = sub_50954();

  v3[17] = v7 & 1;
  if (sub_50A44() == 0x7078655F6D617363 && v8 == 0xED0000746963696CLL)
  {

    v10 = 1;
  }

  else
  {
    v10 = sub_50CE4();
  }

  v3[18] = v10 & 1;
  if (sub_50A44() == 0xD000000000000010 && 0x8000000000054DD0 == v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_50CE4();
  }

  v3[19] = v13 & 1;
  type metadata accessor for CsamSituation();
  swift_allocObject();
  return sub_1447C(v3);
}

__n128 sub_7E14(uint64_t a1, uint64_t a2)
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

uint64_t sub_7E30(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_7E70(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_7ECC()
{
  v1 = sub_50B04();
  sub_8558();
  v3 = v2;
  v5 = __chkstk_darwin(v4);
  v6 = sub_8534(v5);
  swift_beginAccess();
  (*(v3 + 16))(v0, v6, v1);
  v7 = sub_50AF4();
  v8 = sub_50BD4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "WebsearchFlow onInput", v9, 2u);
  }

  (*(v3 + 8))(v0, v1);
  return 1;
}

uint64_t sub_8018(uint64_t a1, uint64_t a2)
{
  v5 = sub_50B04();
  sub_8558();
  v7 = v6;
  v9 = __chkstk_darwin(v8);
  v10 = sub_8534(v9);
  swift_beginAccess();
  (*(v7 + 16))(v2, v10, v5);
  v11 = sub_50AF4();
  v12 = sub_50BD4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "WebsearchFlow execute", v13, 2u);
  }

  (*(v7 + 8))(v2, v5);
  sub_1FE8(v2 + 2, v2[5]);
  v14 = *v2;
  v15 = v2[1];
  v16 = [objc_allocWithZone(SAWebSearch) init];
  sub_83F4(v14, v15, v16);
  v17 = sub_50B54();
  sub_844C(v17, v18, v16);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  sub_84F0();

  sub_50274();
}

uint64_t sub_8240(uint64_t a1, void (*a2)(char *))
{
  v3 = sub_501C4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_50194();
  a2(v6);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_833C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_4F9C;

  return Flow.execute()(a1, a2, a3);
}

void sub_83F4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_50B44();
  [a3 setQuery:v4];
}

void sub_844C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_50B44();

  [a3 setProvider:v4];
}

uint64_t sub_84B0()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_84F0()
{
  result = qword_6BC20;
  if (!qword_6BC20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_6BC20);
  }

  return result;
}

uint64_t sub_8534(uint64_t a1)
{

  return sub_50AE4();
}

void sub_856C()
{
  sub_8A48();
  sub_8A18();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_89E4();
  if (!v7 & v6)
  {
    v11 = sub_50AE4();
    sub_8ACC(v11);
    v12 = sub_8A30();
    v13(v12);
    v14 = sub_50AF4();
    v15 = sub_50BE4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23[0] = v17;
      *v16 = 136315138;
      v18 = sub_50B64();
      v20 = sub_4DE68(v18, v19, v23);

      *(v16 + 4) = v20;
      sub_8AAC(&dword_0, v21, v22, "Unsupported situation for Basic CATs: %s");
      sub_253C(v17);
      sub_5674(v17);
      sub_5674(v16);
    }

    (*(v4 + 8))(v0, v1);
    sub_8A80();
    sub_8A94();
  }

  else
  {
    switch(v2)
    {
      case 1:
        sub_8A00();
        v8 = type metadata accessor for EmergencySexualAssaultBasicIntentCATs(0);
        v9 = &off_66378;
        break;
      case 2:
        sub_8A00();
        v8 = type metadata accessor for EmergencyPoisonControlBasicIntentCATs(0);
        v9 = &off_66398;
        break;
      case 3:
        sub_8A00();
        v8 = type metadata accessor for EmergencyDomesticViolenceBasicIntentCATs(0);
        v9 = &off_663B8;
        break;
      default:
        sub_8A00();
        v8 = type metadata accessor for EmergencySuicidePreventionBasicIntentCATs(0);
        v9 = &off_66358;
        break;
    }

    sub_8A6C(v8, v9);
    sub_8A94();
  }
}

void sub_87A8()
{
  sub_8A48();
  sub_8A18();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_89E4();
  if (!v7 & v6)
  {
    v11 = sub_50AE4();
    sub_8ACC(v11);
    v12 = sub_8A30();
    v13(v12);
    v14 = sub_50AF4();
    v15 = sub_50BE4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23[0] = v17;
      *v16 = 136315138;
      v18 = sub_50B64();
      v20 = sub_4DE68(v18, v19, v23);

      *(v16 + 4) = v20;
      sub_8AAC(&dword_0, v21, v22, "Unsupported situation for Sub-Area CATs: %s");
      sub_253C(v17);
      sub_5674(v17);
      sub_5674(v16);
    }

    (*(v4 + 8))(v0, v1);
    sub_8A80();
    sub_8A94();
  }

  else
  {
    switch(v2)
    {
      case 1:
        sub_8A00();
        v8 = type metadata accessor for SexualAssaultCATs(0);
        v9 = &off_664F0;
        break;
      case 2:
        sub_8A00();
        v8 = type metadata accessor for PoisonControlCATs(0);
        v9 = &off_66528;
        break;
      case 3:
        sub_8A00();
        v8 = type metadata accessor for DomesticViolenceCATs(0);
        v9 = &off_66560;
        break;
      default:
        sub_8A00();
        v8 = type metadata accessor for SuicidePreventionCATs(0);
        v9 = &off_664B8;
        break;
    }

    sub_8A6C(v8, v9);
    sub_8A94();
  }
}

void *sub_8A00()
{
  v2 = v0[3];

  return sub_1FE8(v0, v2);
}

uint64_t sub_8A48()
{

  return sub_50B04();
}

uint64_t sub_8A6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[3] = a1;
  v2[4] = a2;
  *v2 = v3;
  return v3;
}

double sub_8A80()
{
  *(v0 + 32) = 0;
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  return result;
}

void sub_8AAC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_8ACC(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t type metadata accessor for EmergencySexualAssaultBasicIntentModernCATs(uint64_t a1)
{
  result = qword_6BC28;
  if (!qword_6BC28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_8BCC(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_8D28(uint64_t a1, uint64_t a2)
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

uint64_t sub_8E28()
{
  v0 = sub_50834();

  return _swift_deallocClassInstance(v0, 16, 7);
}

uint64_t sub_8E60(uint64_t a1, uint64_t a2)
{
  v4 = sub_2208(&unk_6D680, &qword_515B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_8ED0(uint64_t a1)
{
  v2 = sub_2208(&unk_6D680, &qword_515B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_8F50()
{
  if (qword_6B5E8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_8FAC()
{
  sub_2208(&qword_6BD80, qword_51B18);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_519F0;
  if (qword_6B5F0 != -1)
  {
    swift_once();
  }

  v1 = qword_6BC88;
  *(v0 + 56) = sub_2208(&qword_6BCB8, &qword_51A08);
  *(v0 + 64) = sub_9860(&qword_6BD88, &qword_6BCB8, &qword_51A08);
  *(v0 + 32) = v1;
  v2 = qword_6B5F8;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_6BC90;
  *(v0 + 96) = sub_2208(&qword_6BCC0, &qword_51A10);
  *(v0 + 104) = sub_9860(&qword_6BD90, &qword_6BCC0, &qword_51A10);
  *(v0 + 72) = v3;
  v4 = qword_6B600;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_6BC98;
  *(v0 + 136) = sub_2208(&qword_6BCB0, &qword_51A00);
  *(v0 + 144) = sub_9860(&qword_6BD98, &qword_6BCB0, &qword_51A00);
  *(v0 + 112) = v5;
  v6 = qword_6B608;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_6BCA0;
  *(v0 + 176) = sub_2208(&qword_6BCC8, &qword_51A18);
  *(v0 + 184) = sub_9860(&qword_6BDA0, &qword_6BCC8, &qword_51A18);
  *(v0 + 152) = v7;
  v8 = qword_6B610;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_6BCA8;
  *(v0 + 216) = sub_2208(&qword_6BCD0, qword_51A20);
  *(v0 + 224) = sub_9860(&qword_6BDA8, &qword_6BCD0, qword_51A20);
  *(v0 + 192) = v9;
  qword_6BC78 = v0;
}

uint64_t sub_9280()
{
  if (qword_6B5E0 != -1)
  {
    swift_once();
  }

  sub_50494();
  swift_allocObject();

  result = sub_50484();
  qword_6BC80 = result;
  return result;
}

uint64_t sub_9320()
{
  v0 = sub_2208(&qword_6BCB8, &qword_51A08);
  sub_98FC(v0);
  result = sub_504A4();
  qword_6BC88 = result;
  return result;
}

uint64_t sub_9388()
{
  v0 = sub_2208(&qword_6BCC0, &qword_51A10);
  sub_98FC(v0);
  result = sub_98D8();
  qword_6BC90 = result;
  return result;
}

uint64_t sub_93D4()
{
  v0 = sub_2208(&qword_6BCB0, &qword_51A00);
  sub_98FC(v0);
  result = sub_98B4();
  qword_6BC98 = result;
  return result;
}

uint64_t sub_9420()
{
  v0 = sub_2208(&qword_6BCC8, &qword_51A18);
  sub_98FC(v0);
  result = sub_98B4();
  qword_6BCA0 = result;
  return result;
}

uint64_t sub_946C()
{
  v0 = sub_2208(&qword_6BCD0, qword_51A20);
  sub_98FC(v0);
  result = sub_98D8();
  qword_6BCA8 = result;
  return result;
}

uint64_t sub_94B8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_50654();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_9538(uint64_t a1)
{
  v2 = sub_981C(&qword_6BD78, &unk_51A8C);

  return NLIntentWrapper.traversableIntentNode.getter(a1, v2);
}

uint64_t sub_95A0(uint64_t a1)
{
  v2 = sub_981C(&qword_6BD78, &unk_51A8C);

  return NLIntentWrapper.traversableOntologyNode.getter(a1, v2);
}

uint64_t sub_9610(uint64_t a1, uint64_t a2)
{
  v4 = sub_50654();

  return sub_513C(a1, a2, v4);
}

uint64_t sub_966C(uint64_t a1, uint64_t a2)
{
  v4 = sub_50654();

  return sub_28E0(a1, a2, a2, v4);
}

uint64_t type metadata accessor for EmergencyNLIntent(uint64_t a1)
{
  result = qword_6BD30;
  if (!qword_6BD30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_9704(uint64_t a1)
{
  result = sub_50654();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_97D8(uint64_t a1)
{
  result = sub_981C(&qword_6BD78, &unk_51A8C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_981C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EmergencyNLIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_9860(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_5218(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_98B4()
{

  return sub_504A4();
}

uint64_t sub_98D8()
{

  return sub_504A4();
}

uint64_t sub_98FC(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t type metadata accessor for SuicidePreventionCATs(uint64_t a1)
{
  result = qword_6BDB0;
  if (!qword_6BDB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_99A0(char a1)
{
  v2 = sub_2208(&qword_6BBC8, &unk_518B0);
  v3 = sub_A184(v2);
  *(v3 + 16) = xmmword_51780;
  *(v3 + 32) = 0xD000000000000012;
  *(v3 + 40) = 0x8000000000054BF0;
  *(v3 + 72) = &type metadata for Bool;
  *(v3 + 48) = a1;
  sub_50794();
}

uint64_t sub_9A5C(uint64_t a1)
{
  v3 = sub_2208(&qword_6B998, qword_51850);
  sub_72B0(v3);
  sub_72A4();
  __chkstk_darwin(v4);
  sub_7C2C();
  v5 = sub_2208(&qword_6BBC8, &unk_518B0);
  v6 = sub_A184(v5);
  sub_A12C(v6, xmmword_51780);
  v7 = sub_50804();
  sub_7BF4(v7);
  if (v8)
  {
    sub_68A8(v1, &qword_6B998, qword_51850);
    *(v6 + 48) = 0u;
    *(v6 + 64) = 0u;
  }

  else
  {
    *(v6 + 72) = a1;
    sub_530C((v6 + 48));
    sub_A174();
    (*(v9 + 32))();
  }

  sub_7C1C();
  sub_50794();
}

uint64_t sub_9B94(uint64_t a1)
{
  v3 = sub_2208(&qword_6B998, qword_51850);
  sub_72B0(v3);
  sub_72A4();
  __chkstk_darwin(v4);
  sub_7C2C();
  v5 = sub_2208(&qword_6BBC8, &unk_518B0);
  v6 = sub_A184(v5);
  *(v6 + 16) = xmmword_51780;
  *(v6 + 32) = 0x656D614E67726FLL;
  *(v6 + 40) = 0xE700000000000000;
  sub_A0C4(a1, v1, &qword_6B998, qword_51850);
  v7 = sub_50804();
  sub_7BF4(v7);
  if (v8)
  {
    sub_68A8(v1, &qword_6B998, qword_51850);
    *(v6 + 48) = 0u;
    *(v6 + 64) = 0u;
  }

  else
  {
    *(v6 + 72) = a1;
    sub_530C((v6 + 48));
    sub_A174();
    (*(v9 + 32))();
  }

  sub_7C1C();
  sub_50794();
}

uint64_t sub_9CF8(uint64_t a1)
{
  v3 = sub_2208(&qword_6B998, qword_51850);
  sub_72B0(v3);
  sub_72A4();
  __chkstk_darwin(v4);
  sub_7C2C();
  v5 = sub_2208(&qword_6BBC8, &unk_518B0);
  v6 = sub_A184(v5);
  sub_A12C(v6, xmmword_51780);
  v7 = sub_50804();
  sub_7BF4(v7);
  if (v8)
  {
    sub_68A8(v1, &qword_6B998, qword_51850);
    *(v6 + 48) = 0u;
    *(v6 + 64) = 0u;
  }

  else
  {
    *(v6 + 72) = a1;
    sub_530C((v6 + 48));
    sub_A174();
    (*(v9 + 32))();
  }

  sub_7C1C();
  sub_50794();
}

uint64_t sub_9EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_50864();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2208(&unk_6D680, &qword_515B0);
  sub_72B0(v9);
  sub_72A4();
  __chkstk_darwin(v10);
  sub_A0C4(a1, &v14 - v11, &unk_6D680, &qword_515B0);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_50784();
  (*(v6 + 8))(a2, v5);
  sub_68A8(a1, &unk_6D680, &qword_515B0);
  return v12;
}

uint64_t sub_A0C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2208(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_A12C(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  strcpy(&a1[2], "websearchQuery");
  a1[2].n128_u8[15] = -18;

  return sub_A0C4(v3, v2, v4, v5);
}

uint64_t sub_A184(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_A250(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_A3D8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
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
    v10 = sub_2208(&qword_6B998, qword_51850);
    v11 = &a1[*(a3 + 20)];

    return sub_513C(v11, a2, v10);
  }
}

_BYTE *sub_A480(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_2208(&qword_6B998, qword_51850);
    v8 = &v5[*(a4 + 20)];

    return sub_28E0(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_A528(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_A560(uint64_t a1)
{
  sub_A5DC(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_A5DC(uint64_t a1)
{
  if (!qword_6BEB8)
  {
    sub_50804();
    v1 = sub_50C24();
    if (!v2)
    {
      atomic_store(v1, &qword_6BEB8);
    }
  }
}

uint64_t type metadata accessor for EmergencyErrorsCATs(uint64_t a1)
{
  result = qword_6BEE8;
  if (!qword_6BEE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_A6C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2208(&qword_6B998, qword_51850);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v19 - v10;
  sub_2208(&qword_6BBC8, &unk_518B0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_517D0;
  *(v12 + 32) = 0x656D614E67726FLL;
  *(v12 + 40) = 0xE700000000000000;
  sub_71A0(a1, v11, &qword_6B998, qword_51850);
  v13 = sub_50804();
  if (sub_513C(v11, 1, v13) == 1)
  {
    sub_7204(v11, &qword_6B998, qword_51850);
    *(v12 + 48) = 0u;
    *(v12 + 64) = 0u;
  }

  else
  {
    *(v12 + 72) = v13;
    sub_530C((v12 + 48));
    sub_7298();
    (*(v14 + 32))();
  }

  *(v12 + 80) = 0x6D754E656E6F6870;
  *(v12 + 88) = 0xEB00000000726562;
  if (a2)
  {
    v15 = sub_50754();
    v16 = a2;
  }

  else
  {
    v16 = 0;
    v15 = 0;
    *(v12 + 104) = 0;
    *(v12 + 112) = 0;
  }

  *(v12 + 96) = v16;
  *(v12 + 120) = v15;
  *(v12 + 128) = 0x65746973626577;
  *(v12 + 136) = 0xE700000000000000;
  sub_71A0(a3, v9, &qword_6B998, qword_51850);
  if (sub_513C(v9, 1, v13) == 1)
  {

    sub_7204(v9, &qword_6B998, qword_51850);
    *(v12 + 144) = 0u;
    *(v12 + 160) = 0u;
  }

  else
  {
    *(v12 + 168) = v13;
    sub_530C((v12 + 144));
    sub_7298();
    (*(v17 + 32))();
  }

  sub_50794();
}

uint64_t sub_A9E4(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_AB78(uint64_t a1)
{
  v2 = v1;
  v168 = sub_50324();
  sub_8558();
  v170 = v4;
  __chkstk_darwin(v5);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v6);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v7);
  v9 = sub_EE14(v153 - v8);
  v10 = type metadata accessor for EmergencyNLIntent(v9);
  v11 = sub_72B0(v10);
  __chkstk_darwin(v11);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v12);
  sub_EE14(v153 - v13);
  v173 = sub_50654();
  sub_8558();
  v165 = v14;
  __chkstk_darwin(v15);
  sub_5630();
  sub_EE14(v17 - v16);
  v18 = sub_503A4();
  v19 = sub_72B0(v18);
  __chkstk_darwin(v19);
  sub_5630();
  sub_EE14(v21 - v20);
  v22 = sub_50A24();
  v23 = sub_72B0(v22);
  __chkstk_darwin(v23);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v24);
  sub_EE14(v153 - v25);
  v160 = sub_50354();
  sub_8558();
  v154 = v26;
  __chkstk_darwin(v27);
  sub_5630();
  sub_EE14(v29 - v28);
  sub_50334();
  sub_8558();
  v176 = v31;
  v177 = v30;
  __chkstk_darwin(v30);
  sub_5630();
  sub_EE14(v33 - v32);
  v34 = sub_502E4();
  sub_8558();
  v36 = v35;
  __chkstk_darwin(v37);
  sub_5630();
  v40 = v39 - v38;
  v41 = sub_50B04();
  sub_8558();
  v43 = v42;
  __chkstk_darwin(v44);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v45);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v46);
  sub_EEF4();
  v178 = v47;
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
  v53 = v153 - v52;
  v54 = sub_50AE4();
  sub_56AC(v54, v189);
  v55 = *(v43 + 16);
  v174 = v54;
  v179 = v55;
  v180 = (v43 + 16);
  v55(v53, v54, v41);
  v56 = *(v36 + 16);
  v172 = a1;
  v56(v40, a1, v34);
  v57 = sub_50AF4();
  v58 = sub_50BD4();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = sub_EFB0();
    v157 = v41;
    v60 = v59;
    v153[0] = sub_EFC8();
    v181 = v153[0];
    *v60 = 136315138;
    sub_ECD4(&qword_6C078, 255, &type metadata accessor for Input, &protocol conformance descriptor for Input);
    v61 = sub_50CD4();
    v62 = v34;
    v63 = v2;
    v64 = v43;
    v66 = v65;
    (*(v36 + 8))(v40, v62);
    v67 = sub_4DE68(v61, v66, &v181);
    v43 = v64;
    v2 = v63;

    *(v60 + 4) = v67;
    _os_log_impl(&dword_0, v57, v58, "#GeneralEmergencyFlow onInput: %s", v60, 0xCu);
    v68 = sub_EF84(v182);
    sub_253C(v68);
    sub_5674(v67);
    v69 = v60;
    v41 = v157;
    sub_5674(v69);
  }

  else
  {

    (*(v36 + 8))(v40, v34);
  }

  v70 = *(v43 + 8);
  v70(v53, v41);
  v71 = v175;
  sub_502D4();
  v72 = (*(v176 + 88))(v71, v177);
  v73 = v178;
  if (v72 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v74 = sub_EF1C();
    v75(v74);
    v76 = v165;
    v77 = v164;
    v78 = (*(v165 + 32))(v164, v71, v173);
    sub_EE74(v78, &v181);
    sub_EF84(&v191);
    sub_EE24();
    v79();
    v80 = sub_50AF4();
    v81 = sub_50BD4();
    if (sub_EF00(v81))
    {
      v82 = sub_5718();
      sub_EEC8(v82);
      sub_EED4(&dword_0, v83, v84, "GeneralEmergencyFlow onInput .NLv3IntentOnly");
      sub_EE58();
    }

    v70(v171, v41);
    v85 = v167;
    v86 = v173;
    (*(v76 + 16))(v167, v77, v173);
    v87 = v166;
    sub_EBBC(v85, v166, type metadata accessor for EmergencyNLIntent);
    v88 = sub_DBCC(v87);
    sub_EC1C(v85, type metadata accessor for EmergencyNLIntent);
    v89 = (*(v76 + 8))(v77, v86);
    goto LABEL_8;
  }

  if (v72 != enum case for Parse.directInvocation(_:))
  {
    if (v72 != enum case for Parse.uso(_:))
    {
      sub_EE74(v72, &v181);
      v143 = v153[2];
      sub_EE24();
      v144();
      v145 = sub_50AF4();
      v146 = sub_50BE4();
      if (os_log_type_enabled(v145, v146))
      {
        v147 = sub_EFB0();
        v148 = sub_EFC8();
        v188 = v148;
        *v147 = 136315138;
        LOBYTE(v185) = 0;
        v149 = sub_50B64();
        v151 = sub_4DE68(v149, v150, &v188);

        *(v147 + 4) = v151;
        _os_log_impl(&dword_0, v145, v146, "%s", v147, 0xCu);
        sub_253C(v148);
        sub_5674(v148);
        sub_5674(v147);

        v71 = v175;
      }

      else
      {
      }

      v70(v143, v41);
      (*(v176 + 8))(v71, v177);
      return 0;
    }

    v115 = sub_EF1C();
    v116(v115);
    v117 = v154;
    v118 = (*(v154 + 32))(v159, v71, v160);
    sub_EE74(v118, &v185);
    sub_EF84(&v187);
    sub_EE24();
    v119();
    v120 = sub_50AF4();
    v121 = sub_50BD4();
    if (sub_EF00(v121))
    {
      v122 = sub_5718();
      sub_EEC8(v122);
      sub_EED4(&dword_0, v123, v124, "#GeneralEmergencyFlow onInput .uso");
      sub_EE58();
    }

    v70(v158, v41);
    v125 = v159;
    sub_50344();
    v183 = &type metadata for EmergencyFeatureFlagsKey;
    v184 = sub_EB68();
    LOBYTE(v181) = 2;
    sub_50374();
    sub_253C(&v181);
    v126 = v156;
    sub_50A14();
    v127 = v155;
    sub_EBBC(v126, v155, &type metadata accessor for EmergencyDialogAct);
    v88 = sub_D93C(v127);
    sub_EC1C(v126, &type metadata accessor for EmergencyDialogAct);
    v89 = (*(v117 + 8))(v125, v160);
    goto LABEL_8;
  }

  v99 = sub_EF1C();
  v100(v99);
  v101 = (*(v170 + 32))(v169, v71, v168);
  sub_EE74(v101, &v181);
  sub_EF84(&v190);
  sub_EE24();
  v102();
  v103 = sub_50AF4();
  v104 = sub_50BD4();
  if (sub_EF00(v104))
  {
    v105 = sub_5718();
    sub_EEC8(v105);
    sub_EED4(&dword_0, v106, v107, "GeneralEmergencyFlow onInput .directInvocation");
    sub_EE58();
  }

  v177 = v43 + 8;
  v70(v163, v41);
  v108 = v169;
  if (sub_50304() == 0xD000000000000035 && 0x8000000000055140 == v109)
  {

    v113 = v161;
  }

  else
  {
    v111 = sub_50CE4();

    v113 = v161;
    if ((v111 & 1) == 0)
    {
LABEL_28:
      sub_EE74(v112, &v188);
      sub_EE24();
      v128();
      v129 = v170;
      v130 = *(v170 + 16);
      v131 = v73;
      v132 = v168;
      v130(v113, v108, v168);
      v133 = sub_50AF4();
      v134 = sub_50BE4();
      if (sub_EF00(v134))
      {
        v135 = sub_EFB0();
        v180 = v70;
        v136 = v135;
        v137 = sub_EFC8();
        v185 = v137;
        *v136 = 136315138;
        v130(v153[1], v113, v132);
        v138 = sub_50B64();
        v140 = v139;
        v157 = v41;
        v141 = *(v170 + 8);
        v141(v113, v132);
        v142 = sub_4DE68(v138, v140, &v185);

        *(v136 + 4) = v142;
        _os_log_impl(&dword_0, v133, v131, "Failed to get emergencySituation from DirectInvocation: %s", v136, 0xCu);
        sub_253C(v137);
        sub_5674(v137);
        sub_5674(v136);

        v180(v178, v157);
        v141(v169, v132);
      }

      else
      {

        v152 = *(v129 + 8);
        v152(v113, v132);
        v70(v178, v41);
        v152(v108, v132);
      }

      return 0;
    }
  }

  v112 = sub_2B6B0(v108);
  if (v112 == 35)
  {
    goto LABEL_28;
  }

  v88 = sub_50924();
  v89 = (*(v170 + 8))(v108, v168);
LABEL_8:
  if (v88 != 35)
  {
    *(v2 + 216) = v88;
    return 1;
  }

  sub_EE74(v89, &v188);
  v90 = v162;
  sub_EE24();
  v91();
  v92 = sub_50AF4();
  v93 = sub_50BE4();
  if (os_log_type_enabled(v92, v93))
  {
    v94 = sub_EFB0();
    v95 = sub_EFC8();
    v187 = v95;
    *v94 = 136315138;
    v186 = 0;
    v96 = sub_50B64();
    v98 = sub_4DE68(v96, v97, &v187);

    *(v94 + 4) = v98;
    _os_log_impl(&dword_0, v92, v93, "%s", v94, 0xCu);
    sub_253C(v95);
    sub_5674(v95);
    sub_5674(v94);
  }

  v70(v90, v41);
  return 0;
}

uint64_t sub_BA98()
{
  sub_EF64();
  v1[136] = v0;
  v1[135] = v2;
  v3 = sub_2208(&qword_6B988, &qword_530B0);
  sub_72B0(v3);
  v1[137] = swift_task_alloc();
  v1[138] = swift_task_alloc();
  v4 = sub_50884();
  v1[139] = v4;
  sub_72B0(v4);
  v1[140] = swift_task_alloc();
  v5 = sub_50704();
  v1[141] = v5;
  v1[142] = *(v5 - 8);
  v1[143] = swift_task_alloc();
  v1[144] = swift_task_alloc();
  v6 = sub_50B04();
  v1[145] = v6;
  v1[146] = *(v6 - 8);
  v1[147] = swift_task_alloc();
  v1[148] = swift_task_alloc();
  v1[149] = swift_task_alloc();
  v1[150] = swift_task_alloc();
  v1[151] = swift_task_alloc();

  return _swift_task_switch(sub_BC5C, 0, 0);
}

uint64_t sub_BC5C(uint64_t a1)
{
  v2 = v1[146];
  v3 = sub_50AE4();
  v1[152] = v3;
  sub_56AC(v3, (v1 + 120));
  v4 = *(v2 + 16);
  v1[153] = v4;
  v1[154] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5 = sub_EF3C();
  v4(v5);
  v6 = sub_50AF4();
  v7 = sub_50BD4();
  if (sub_EF4C(v7))
  {
    v8 = sub_5718();
    *v8 = 0;
    sub_EF90(&dword_0, v9, v10, "#GeneralEmergencyFlow execute");
    sub_5674(v8);
  }

  v11 = v1[146];
  v12 = v1[136];

  v13 = *(v11 + 8);
  v1[155] = v13;
  v14 = sub_5668();
  v13(v14);
  v15 = *(v12 + 216);
  if (v15 == 36)
  {
    sub_50194();
    goto LABEL_16;
  }

  if (v15 == 35)
  {
    v16 = v1[136];
    v17 = v1[135];
    sub_E9D0();
    v18 = swift_allocError();
    *v19 = 2;
    sub_1D68(v18, v16 + 16, (v16 + 56), v17);

LABEL_16:
    sub_EE90();

    v48 = v1[1];

    return v48();
  }

  v20 = v1[144];
  v21 = v1[143];
  v22 = v1[142];
  v53 = v1[141];
  v52 = v13;
  sub_1FE8((v1[136] + 16), *(v1[136] + 40));
  v23 = sub_EE48();
  v24(v23);
  sub_1FE8(v1 + 110, v1[113]);
  sub_EE48();
  sub_50064();
  sub_506F4();
  sub_ECD4(&qword_6C048, 255, &type metadata accessor for DeviceRestrictions, &protocol conformance descriptor for DeviceRestrictions);
  v25 = sub_50C34();
  v26 = *(v22 + 8);
  v26(v21, v53);
  v26(v20, v53);
  if (v25)
  {
    sub_56AC(v3, (v1 + 132));
    v27 = sub_EF3C();
    v4(v27);
    v28 = sub_50AF4();
    v29 = sub_50BD4();
    if (sub_EF4C(v29))
    {
      v30 = sub_5718();
      sub_EEC8(v30);
      sub_56D8(&dword_0, v31, v32, "#GeneralEmergencyFlow phoneFeaturesUnavailable, routing to CannedHelp instead");
      sub_EE58();
    }

    v33 = v1[150];
    v34 = v1[145];
    v35 = v1[136];

    (v52)(v33, v34);
    v36 = sub_1FE8((v35 + 56), *(v35 + 80));
    memcpy(v1 + 96, v36, 0x70uLL);
    sub_451D4();
    sub_50184();

LABEL_15:
    sub_253C(v1 + 110);
    goto LABEL_16;
  }

  if (sub_50934())
  {
    v37 = v1[145];
    sub_56AC(v3, (v1 + 129));
    v38 = sub_EF3C();
    v4(v38);
    v39 = sub_50AF4();
    v40 = sub_50BD4();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = sub_5718();
      sub_EEC8(v41);
      _os_log_impl(&dword_0, v39, v40, "#GeneralEmergencyFlow Providing Low Risk response", v37, 2u);
      sub_EE58();
    }

    v42 = v1[149];
    v43 = v1[145];
    v44 = v1[140];

    (v52)(v42, v43);
    sub_C744();
    sub_EDEC();
    sub_ECD4(v45, 255, v46, &protocol conformance descriptor for OutputFlow);
    sub_50174();
    sub_EDD4();
    sub_EC1C(v44, v47);
    goto LABEL_15;
  }

  v50 = v1[136];
  v51 = swift_task_alloc();
  v1[156] = v51;
  *v51 = v1;
  v51[1] = sub_C1C0;

  return sub_15100((v1 + 50), v50 + 136, v15, 4);
}

uint64_t sub_C1C0()
{
  sub_EF64();
  v1 = *v0;
  sub_EF2C();
  *v2 = v1;

  return _swift_task_switch(sub_C2B0, 0, 0);
}

uint64_t sub_C2B0()
{
  memcpy((v0 + 272), (v0 + 400), 0x80uLL);
  v1 = sub_E51C(v0 + 272);
  v2 = *(v0 + 1224);
  v3 = *(v0 + 1216);
  v4 = *(v0 + 1160);
  if (v1 == 1)
  {
    v5 = *(v0 + 1176);
    sub_56AC(*(v0 + 1216), v0 + 984);
    v2(v5, v3, v4);
    v6 = sub_50AF4();
    v7 = sub_50BD4();
    if (sub_EF4C(v7))
    {
      v8 = sub_5718();
      sub_EEC8(v8);
      sub_56D8(&dword_0, v9, v10, "#GeneralEmergencyFlow No orgInfo found for language/locale. Presenting generic offerEmergencyCall button.");
      sub_EE58();
    }

    v11 = *(v0 + 1240);
    v12 = *(v0 + 1176);
    v13 = *(v0 + 1160);
    v14 = *(v0 + 1120);
    v15 = *(v0 + 1088);

    v11(v12, v13);
    sub_E534((v0 + 528));
    memcpy((v0 + 16), (v0 + 528), 0x80uLL);
    v16 = sub_1FE8((v15 + 56), *(v15 + 80));
    memcpy((v0 + 656), v16, 0x70uLL);
    sub_E54C((v0 + 16), (v0 + 880), (v0 + 656));
    sub_1FE8((v15 + 56), *(v15 + 80));

    sub_25070();

    sub_23BC(v15 + 16, v0 + 920);
    sub_50874();
    sub_EDEC();
    sub_ECD4(v17, 255, v18, &protocol conformance descriptor for OutputFlow);
    sub_50174();
    sub_EDD4();
    sub_EC1C(v14, v19);
  }

  else
  {
    v20 = *(v0 + 1184);
    memcpy((v0 + 144), (v0 + 272), 0x80uLL);
    sub_56AC(v3, v0 + 1008);
    v2(v20, v3, v4);
    v21 = sub_50AF4();
    v22 = sub_50BD4();
    if (sub_EF4C(v22))
    {
      v23 = sub_5718();
      sub_EEC8(v23);
      sub_56D8(&dword_0, v24, v25, "#GeneralEmergencyFlow Providing High Risk response");
      sub_EE58();
    }

    v26 = *(v0 + 1240);
    v27 = *(v0 + 1184);
    v28 = *(v0 + 1160);
    v29 = *(v0 + 1088);

    v26(v27, v28);
    sub_1FE8((v29 + 56), *(v29 + 80));
    sub_1FE8((v0 + 880), *(v0 + 904));

    sub_5668();
    if (sub_500B4())
    {
      v30 = 0;
    }

    else
    {
      sub_1FE8((v0 + 880), *(v0 + 904));
      sub_5668();
      v30 = sub_50044() ^ 1;
    }

    v31 = *(v0 + 1104);
    v32 = *(v0 + 1088);
    sub_27918(v30 & 1);

    sub_1FE8((v32 + 176), *(v32 + 200));
    sub_CE74((v0 + 144), v31);
    sub_51C0(v0 + 400, &qword_6C050, &qword_51E00);
    sub_50184();

    sub_51C0(v31, &qword_6B988, &qword_530B0);
  }

  sub_253C((v0 + 880));
  sub_EE90();

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_C6B8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for GeneralEmergencyFlow();
  sub_ECD4(&qword_6C040, v2, type metadata accessor for GeneralEmergencyFlow, &unk_51DA0);
  return sub_4FF14();
}

uint64_t sub_C744()
{
  v1 = sub_2208(&qword_6B988, &qword_530B0);
  v2 = sub_72B0(v1);
  __chkstk_darwin(v2);
  v3 = sub_1FE8(v0 + 7, v0[10]);
  memcpy(__dst, v3, sizeof(__dst));
  sub_DFD8(v0 + 2, __dst);
  sub_1FE8(v0 + 7, v0[10]);

  sub_279DC();

  sub_23BC((v0 + 2), v5);
  return sub_50874();
}

void *sub_C840()
{
  sub_253C(v0 + 2);
  sub_253C(v0 + 7);
  sub_55C8((v0 + 12));
  sub_253C(v0 + 17);
  sub_253C(v0 + 22);
  return v0;
}

uint64_t sub_C880()
{
  sub_C840();

  return _swift_deallocClassInstance(v0, 217, 7);
}

uint64_t getEnumTagSinglePayload for GeneralEmergencyFlow.GeneralEmergencyFlowState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xDC)
  {
    v2 = a2 + 36;
    if (a2 + 36 >= 0xFFFF00)
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

    switch(v4)
    {
      case 1:
        v5 = a1[1];
        if (!a1[1])
        {
          break;
        }

        return (*a1 | (v5 << 8)) - 36;
      case 2:
        v5 = *(a1 + 1);
        if (*(a1 + 1))
        {
          return (*a1 | (v5 << 8)) - 36;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0xC988);
      case 4:
        v5 = *(a1 + 1);
        if (!v5)
        {
          break;
        }

        return (*a1 | (v5 << 8)) - 36;
      default:
        break;
    }
  }

  v7 = *a1;
  if (v7 >= 0x23)
  {
    v8 = v7 - 34;
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

_BYTE *storeEnumTagSinglePayload for GeneralEmergencyFlow.GeneralEmergencyFlowState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 36;
  if (a3 + 36 >= 0xFFFF00)
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

  if (a3 >= 0xDC)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xDB)
  {
    v7 = ((a2 - 220) >> 8) + 1;
    *result = a2 + 36;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        JUMPOUT(0xCA70);
      case 4:
        *(result + 1) = v7;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
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
          *result = a2 + 36;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_CA98(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 0x23)
  {
    return v1 - 34;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_CAAC(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 34;
  }

  return result;
}

uint64_t sub_CAF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_CBA4;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_CBA4()
{
  sub_EF64();
  v2 = v1;
  v3 = *v0;
  sub_EF2C();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_CCB8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_CD54;

  return sub_BA98();
}

uint64_t sub_CD54()
{
  sub_EF64();
  v1 = *v0;
  sub_EF2C();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_CE3C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for GeneralEmergencyFlow();

  return sub_4FF64();
}

uint64_t sub_CE74(void *__src, uint64_t a2)
{
  v3 = v2;
  memcpy(__dst, __src, sizeof(__dst));
  v6 = sub_2208(&qword_6B988, &qword_530B0);
  v7 = sub_72B0(v6);
  __chkstk_darwin(v7);
  v9 = &v73 - v8;
  v10 = sub_50884();
  sub_569C();
  __chkstk_darwin(v11);
  sub_5630();
  v14 = v13 - v12;
  sub_50B04();
  sub_8558();
  v78 = v15;
  v79 = v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v73 - v20;
  v80 = v3;
  v81 = __src;
  sub_D6E4(v94, __src, a2);
  if (*(&v94[1] + 1))
  {
    sub_546C(v94, v93);
    v22 = sub_50AE4();
    sub_56AC(v22, &v91);
    v24 = v78;
    v23 = v79;
    (v79[2])(v21, v22, v78);
    v25 = sub_50AF4();
    v26 = sub_50BD4();
    if (sub_EF4C(v26))
    {
      v27 = sub_5718();
      *v27 = 0;
      _os_log_impl(&dword_0, v25, v26, "#GeneralEmergencyFlow preparing for confirmation", v27, 2u);
      sub_5674(v27);
    }

    (v23[1])(v21, v24);
    sub_23BC(v93, v90);
    v28 = v80;
    sub_23BC(v80, v89);
    sub_23BC((v28 + 5), v88);
    sub_5260((v28 + 10), v86);
    sub_52BC(v90, v90[3]);
    v80 = &v73;
    sub_5620();
    __chkstk_darwin(v29);
    sub_5630();
    v31 = sub_EF70(v30);
    v32(v31);
    sub_52BC(v88, v88[3]);
    v79 = &v73;
    sub_5620();
    __chkstk_darwin(v33);
    sub_5630();
    v36 = (v35 - v34);
    (*(v37 + 16))(v35 - v34);
    memcpy(v95, v36, sizeof(v95));
    v38 = type metadata accessor for ConfirmationFlowConfigModel(0);
    v84 = v38;
    v85 = &off_66AB0;
    v39 = sub_530C(v83);
    sub_EC74(v21, v39, type metadata accessor for ConfirmationFlowConfigModel);
    v82[3] = &type metadata for EmergencyCATProvider;
    v82[4] = &off_66C88;
    v82[0] = swift_allocObject();
    memcpy((v82[0] + 16), v95, 0x70uLL);
    type metadata accessor for EmergencyConfirmationFlow();
    v40 = swift_allocObject();
    sub_52BC(v83, v84);
    sub_5620();
    __chkstk_darwin(v41);
    sub_5630();
    v43 = sub_EF70(v42);
    v44(v43);
    sub_52BC(v82, &type metadata for EmergencyCATProvider);
    sub_5620();
    __chkstk_darwin(v45);
    sub_5630();
    v48 = (v47 - v46);
    (*(v49 + 16))(v47 - v46);
    memcpy(v92, v48, 0x70uLL);
    *(&v94[1] + 1) = v38;
    *&v94[2] = &off_66AB0;
    v50 = sub_530C(v94);
    sub_EC74(v21, v50, type metadata accessor for ConfirmationFlowConfigModel);
    *(v40 + 256) = &type metadata for EmergencyCATProvider;
    *(v40 + 264) = &off_66C88;
    v51 = swift_allocObject();
    *(v40 + 232) = v51;
    memcpy((v51 + 16), v92, 0x70uLL);
    v52 = v81;
    memcpy((v40 + 24), v81, 0x80uLL);
    sub_546C(v94, v40 + 152);
    sub_546C(v89, v40 + 192);
    v53 = v86[1];
    *(v40 + 272) = v86[0];
    *(v40 + 288) = v53;
    v54 = v87;
    *(v40 + 16) = 0;
    *(v40 + 312) = 0;
    *(v40 + 320) = 0;
    *(v40 + 304) = v54;
    sub_5484(v52, v94);
    sub_253C(v82);
    sub_253C(v83);
    sub_253C(v88);
    sub_253C(v90);
    *&v94[0] = v40;
    sub_ECD4(&qword_6BB48, 255, type metadata accessor for EmergencyConfirmationFlow, &unk_516F8);
    v55 = sub_4FF04();

    sub_253C(v93);
  }

  else
  {
    v74 = v14;
    v75 = v9;
    v76 = a2;
    v77 = v10;
    sub_51C0(v94, &qword_6C060, &qword_51E08);
    v56 = sub_50AE4();
    sub_56AC(v56, v90);
    v58 = v78;
    v57 = v79;
    (v79[2])(v19, v56, v78);
    v59 = sub_50AF4();
    v60 = sub_50BD4();
    if (sub_EF4C(v60))
    {
      v61 = sub_5718();
      *v61 = 0;
      sub_EF90(&dword_0, v62, v63, "#GeneralEmergencyFlow preparing promptless output");
      sub_5674(v61);
    }

    (v57[1])(v19, v58);
    memcpy(v92, __dst, sizeof(v92));
    nullsub_1();
    memcpy(v94, v92, sizeof(v94));
    v64 = v80;
    sub_1FE8(v80, v80[3]);
    v65 = sub_5668();
    v66(v65);
    v67 = sub_1FE8(v64 + 5, v64[8]);
    memcpy(v95, v67, sizeof(v95));
    sub_E54C(v94, v93, v95);
    sub_253C(v93);
    sub_234C(v76, v75);
    sub_23BC(v64, v93);
    sub_50994();
    v68 = v74;
    sub_50874();
    sub_EDEC();
    sub_ECD4(v69, 255, v70, &protocol conformance descriptor for OutputFlow);
    v55 = sub_4FF04();
    sub_EDD4();
    sub_EC1C(v68, v71);
  }

  return v55;
}

uint64_t *sub_D6E4@<X0>(uint64_t *__return_ptr a1@<X8>, void *__src@<X0>, uint64_t a3@<X1>)
{
  memcpy(__dst, __src, sizeof(__dst));
  v7 = sub_2208(&qword_6B988, &qword_530B0);
  v8 = sub_72B0(v7);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  sub_1FE8(v3, v3[3]);
  v11 = sub_EE48();
  v12(v11);
  sub_1FE8(v23, v24);
  if (sub_500F4() & 1) == 0 || (sub_1FE8(v23, v24), sub_EE48(), (sub_500B4()) || (sub_1FE8(v23, v24), sub_EE48(), (sub_50044()))
  {
    a1[4] = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
  }

  else
  {
    sub_23BC(v3, v19);
    sub_23BC((v3 + 5), &v20);
    memcpy(v22, __dst, 0x80uLL);
    sub_EA24(v22);
    memcpy(v21, v22, sizeof(v21));
    sub_5484(__src, &v18);
    sub_EA30();
    v14 = sub_4FF04();
    sub_EA84(v19);
    sub_1FE8(v3 + 5, v3[8]);

    sub_250F0();

    v15 = type metadata accessor for ConfirmationFlowConfigModel(0);
    a1[3] = v15;
    a1[4] = &off_66AB0;
    v16 = sub_530C(a1);
    sub_234C(a3, v16);
    sub_EAD8(v10, v16 + v15[5]);
    *(v16 + v15[6]) = v14;
    *(v16 + v15[7]) = 2;
    *(v16 + v15[8]) = 0;
    *(v16 + v15[9]) = 1;
  }

  return sub_253C(v23);
}

uint64_t sub_D93C(uint64_t a1)
{
  v2 = sub_50B04();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_50A24();
  v24[3] = v6;
  v24[4] = &protocol witness table for EmergencyDialogAct;
  v7 = sub_530C(v24);
  sub_EC74(a1, v7, &type metadata accessor for EmergencyDialogAct);
  v8 = sub_50AE4();
  swift_beginAccess();
  (*(v3 + 16))(v5, v8, v2);
  sub_23BC(v24, v23);
  v9 = sub_50AF4();
  v10 = sub_50BD4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v20[1] = v6;
    v12 = v11;
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315138;
    sub_23BC(v23, v21);
    sub_2208(&qword_6C080, &qword_51E10);
    v14 = sub_50B64();
    v16 = v15;
    sub_253C(v23);
    v17 = sub_4DE68(v14, v16, &v22);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_0, v9, v10, "Converting EmergencyDialogAct to GeneralEmergencyIntent: %s", v12, 0xCu);
    sub_253C(v13);
  }

  else
  {

    sub_253C(v23);
  }

  (*(v3 + 8))(v5, v2);
  v18 = sub_50924();
  sub_253C(v24);
  return v18;
}

uint64_t sub_DBCC(uint64_t a1)
{
  v2 = sub_50B04();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EmergencyNLIntent(0);
  v28 = v6;
  v29 = sub_ECD4(&qword_6C088, 255, type metadata accessor for EmergencyNLIntent, &unk_51AFC);
  v7 = sub_530C(v27);
  sub_EC74(a1, v7, type metadata accessor for EmergencyNLIntent);
  v8 = sub_50AE4();
  swift_beginAccess();
  (*(v3 + 16))(v5, v8, v2);
  sub_23BC(v27, v26);
  v9 = sub_50AF4();
  v10 = sub_50BD4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v24[1] = v6;
    v12 = v11;
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 136315138;
    v14 = sub_1FE8(v26, v26[3]);
    v24[0] = v24;
    __chkstk_darwin(v14);
    v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v16);
    v18 = sub_3DBF4();
    v20 = v19;
    sub_EC1C(v16, type metadata accessor for EmergencyNLIntent);
    sub_253C(v26);
    v21 = sub_4DE68(v18, v20, &v25);

    *(v12 + 4) = v21;
    _os_log_impl(&dword_0, v9, v10, "Converting EmergencyNLIntent: %s", v12, 0xCu);
    sub_253C(v13);

    (*(v3 + 8))(v5, v2);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
    sub_253C(v26);
  }

  sub_1FE8(v27, v28);
  if (qword_6B5F8 != -1)
  {
    swift_once();
  }

  sub_ECD4(&qword_6BD68, 255, type metadata accessor for EmergencyNLIntent, &unk_51ACC);
  sub_50524();
  v22 = sub_50924();
  sub_253C(v27);
  return v22;
}

_OWORD *sub_DFD8(void *a1, const void *a2)
{
  v34 = sub_50B04();
  v33 = *(v34 - 8);
  __chkstk_darwin(v34);
  v32 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2208(&unk_6D680, &qword_515B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v32 - v6;
  v8 = sub_2208(&qword_6B988, &qword_530B0);
  v9 = __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v32 - v12;
  v37 = &type metadata for EmergencyCATProvider;
  v38 = &off_66C88;
  v36[0] = swift_allocObject();
  memcpy((v36[0] + 16), a2, 0x70uLL);
  v15 = a1[3];
  v14 = a1[4];
  sub_1FE8(a1, v15);
  v16 = *(v14 + 8);
  sub_22F0(a2, v35);
  v16(v35, v15, v14);
  sub_1FE8(v35, v35[3]);
  if ((sub_50094() & 1) == 0)
  {
LABEL_9:
    v23 = &_swiftEmptyArrayStorage;
    goto LABEL_10;
  }

  sub_1FE8(v36, &type metadata for EmergencyCATProvider);

  sub_24C9C();

  v17 = sub_50D64();
  v19 = v18;
  sub_51C0(v13, &qword_6B988, &qword_530B0);
  if (!v19)
  {
LABEL_6:
    v24 = sub_50AE4();
    swift_beginAccess();
    v25 = v33;
    v26 = v32;
    v27 = v34;
    (*(v33 + 16))(v32, v24, v34);
    v28 = sub_50AF4();
    v29 = sub_50BD4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_0, v28, v29, "#GeneralEmergencyFlow Failed to execute goToWebsiteButtonLabel CATs", v30, 2u);
    }

    (*(v25 + 8))(v26, v27);
    goto LABEL_9;
  }

  sub_1FE8(v36, v37);

  sub_279FC();

  sub_50D64();
  v21 = v20;
  sub_51C0(v11, &qword_6B988, &qword_530B0);
  if (!v21)
  {

    goto LABEL_6;
  }

  sub_E4D8();
  sub_4FD54();

  v22 = sub_2B3D0(v17, v19, v7);
  sub_2208(&unk_6D0C0, &qword_53500);
  v23 = swift_allocObject();
  v23[1] = xmmword_51790;
  *(v23 + 4) = v22;
LABEL_10:
  sub_253C(v35);
  sub_253C(v36);
  return v23;
}

uint64_t sub_E438()
{

  return _swift_deallocObject(v0, 128, 7);
}

unint64_t sub_E4D8()
{
  result = qword_6D690;
  if (!qword_6D690)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_6D690);
  }

  return result;
}

uint64_t sub_E51C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_E534(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void *sub_E54C(const void *a1, void *a2, const void *a3)
{
  v39 = a1;
  v5 = sub_50B04();
  v37 = *(v5 - 8);
  v38 = v5;
  __chkstk_darwin(v5);
  v40 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2208(&qword_6B988, &qword_530B0);
  v8 = __chkstk_darwin(v7);
  v36 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v35 - v11;
  __chkstk_darwin(v10);
  v14 = &v35 - v13;
  v42[3] = &type metadata for EmergencyCATProvider;
  v42[4] = &off_66C88;
  v42[0] = swift_allocObject();
  memcpy((v42[0] + 16), a3, 0x70uLL);
  sub_1FE8(a2, a2[3]);
  sub_22F0(a3, __dst);
  v15 = sub_500A4();
  sub_1FE8(v42, &type metadata for EmergencyCATProvider);

  if (v15)
  {
    sub_24C1C();
  }

  else
  {
    sub_278F8();
  }

  v16 = sub_50D64();
  v18 = v40;
  if (v17)
  {
    v19 = v16;
    v20 = v17;
    memcpy(v43, v39, sizeof(v43));
    if (sub_E51C(v43) == 1)
    {
      sub_EB48(v41);
    }

    else
    {
      memcpy(__dst, v43, 0x80uLL);
      sub_EA24(__dst);
      memcpy(v41, __dst, 0x81uLL);
    }

    memcpy(__dst, v41, 0x81uLL);
    v33 = sub_37370(__dst, a2, v19, v20);
  }

  else
  {
    v21 = sub_50AE4();
    swift_beginAccess();
    v22 = v37;
    v23 = v38;
    (*(v37 + 16))(v18, v21, v38);
    sub_234C(v14, v12);
    v24 = sub_50AF4();
    v25 = sub_50BD4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v41[0] = v27;
      *v26 = 136315138;
      sub_234C(v12, v36);
      v28 = v18;
      v29 = sub_50B64();
      v31 = v30;
      sub_51C0(v12, &qword_6B988, &qword_530B0);
      v32 = sub_4DE68(v29, v31, v41);

      *(v26 + 4) = v32;
      _os_log_impl(&dword_0, v24, v25, "#GeneralEmergencyFlow Failed to execute CAT: %s", v26, 0xCu);
      sub_253C(v27);

      (*(v37 + 8))(v28, v38);
    }

    else
    {

      sub_51C0(v12, &qword_6B988, &qword_530B0);
      (*(v22 + 8))(v18, v23);
    }

    v33 = &_swiftEmptyArrayStorage;
  }

  sub_51C0(v14, &qword_6B988, &qword_530B0);
  sub_253C(v42);
  return v33;
}

unint64_t sub_E9D0()
{
  result = qword_6C058;
  if (!qword_6C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C058);
  }

  return result;
}

unint64_t sub_EA30()
{
  result = qword_6C068;
  if (!qword_6C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C068);
  }

  return result;
}

uint64_t sub_EAD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2208(&qword_6B988, &qword_530B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_EB48(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 2;
  return result;
}

unint64_t sub_EB68()
{
  result = qword_6C070;
  if (!qword_6C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C070);
  }

  return result;
}

uint64_t sub_EBBC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_569C();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_EC1C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_569C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_EC74(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_569C();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_ECD4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_ED24(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_ED64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_EE58()
{
}

uint64_t sub_EE74(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_EE90()
{
}

void sub_EED4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

BOOL sub_EF00(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

BOOL sub_EF4C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_EF90(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_EFB0()
{

  return swift_slowAlloc();
}

uint64_t sub_EFC8()
{

  return swift_slowAlloc();
}

void sub_EFE0(uint64_t a1, uint64_t a2)
{
  sub_13C8C();
  v286 = v3;
  v5 = v4;
  v312 = v6;
  v304 = sub_50324();
  sub_8558();
  v303 = v7;
  __chkstk_darwin(v8);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v9);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v10);
  sub_13C5C();
  v12 = sub_EE14(v11);
  v301 = type metadata accessor for EmergencyNLIntent(v12);
  __chkstk_darwin(v301);
  sub_5630();
  sub_EE14(v14 - v13);
  v320 = sub_50654();
  sub_8558();
  v311 = v15;
  __chkstk_darwin(v16);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v17);
  sub_13C5C();
  v319 = v18;
  sub_13B48();
  v19 = sub_503A4();
  v20 = sub_72B0(v19);
  __chkstk_darwin(v20);
  sub_5630();
  sub_EE14(v22 - v21);
  v289 = sub_50A24();
  __chkstk_darwin(v289);
  sub_5630();
  sub_EE14(v24 - v23);
  v297 = sub_50354();
  sub_8558();
  v296 = v25;
  __chkstk_darwin(v26);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v27);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v28);
  sub_13C5C();
  sub_EE14(v29);
  v315 = sub_50334();
  sub_8558();
  v314 = v30;
  v32 = __chkstk_darwin(v31);
  v34 = v283 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  sub_13C5C();
  sub_EE14(v35);
  v36 = sub_502E4();
  sub_8558();
  v38 = v37;
  __chkstk_darwin(v39);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v40);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v41);
  v42 = sub_13D70();
  sub_8558();
  v44 = v43;
  __chkstk_darwin(v45);
  sub_EE34();
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
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v52);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v53);
  v55 = v283 - v54;
  v56 = sub_50AE4();
  sub_56AC(v56, &v328);
  v321 = v44;
  v57 = *(v44 + 16);
  v317 = v44 + 16;
  v318 = v56;
  v316 = v57;
  v57(v55, v56, v42);
  v58 = sub_13CB0();
  v292 = v59;
  v291 = v60;
  v60(v58);
  v61 = sub_50AF4();
  v62 = sub_50BD4();
  v63 = os_log_type_enabled(v61, v62);
  v306 = v5;
  v295 = v36;
  v294 = v38;
  if (v63)
  {
    v64 = sub_EFB0();
    v65 = sub_EFC8();
    v283[0] = v34;
    v66 = v65;
    *&v323 = v65;
    *v64 = 136315138;
    sub_13AA8();
    sub_12AF0(v67, v68, &protocol conformance descriptor for Input);
    v69 = sub_50CD4();
    v70 = v38;
    v71 = v42;
    v73 = v72;
    v293 = *(v70 + 8);
    v293(v2, v36);
    v74 = sub_4DE68(v69, v73, &v323);
    v42 = v71;

    *(v64 + 4) = v74;
    _os_log_impl(&dword_0, v61, v62, "getConfirmationFromInput input: %s", v64, 0xCu);
    sub_253C(v66);
    sub_5674(v66);
    sub_5674(v64);
  }

  else
  {

    v293 = *(v38 + 8);
    v293(v2, v36);
  }

  v75 = *(v321 + 8);
  v75(v55, v42);
  v76 = v313;
  sub_502D4();
  v77 = v314;
  v78 = v315;
  v79 = (*(v314 + 11))(v76, v315);
  v80 = v320;
  v81 = v310;
  if (v79 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v82 = sub_13B24();
    v83(v82);
    v84 = v311;
    v85 = (*(v311 + 32))(v319, v76, v80);
    sub_13AE8(v85, v327);
    v86 = v308;
    sub_13B78();
    v87();
    v88 = v300;
    sub_13BE0();
    v314 = v89;
    v89();
    v90 = sub_50AF4();
    v91 = sub_50BD4();
    if (sub_13C1C(v91))
    {
      v92 = sub_EFB0();
      v93 = sub_EFC8();
      *&v323 = v93;
      *v92 = 136315138;
      sub_12AF0(&qword_6C1B0, &type metadata accessor for NLIntent, &protocol conformance descriptor for NLIntent);
      v94 = sub_50CD4();
      v95 = v88;
      v96 = v42;
      v98 = v97;
      v315 = *(v84 + 8);
      v315(v95, v320);
      v99 = sub_4DE68(v94, v98, &v323);
      v42 = v96;
      v80 = v320;
      v100 = v309;

      *(v92 + 4) = v99;
      _os_log_impl(&dword_0, v90, v91, "getConfirmationFromInput NLv3IntentOnly nlIntent: %s", v92, 0xCu);
      sub_253C(v93);
      sub_5674(v93);
      sub_5674(v92);

      v101 = v100;
      v100(v308, v42);
    }

    else
    {

      v123 = sub_13D04();
      v315 = v124;
      v124(v123);
      sub_13B6C();
      v125 = v86;
      v101 = v309;
      v309(v125, v42);
    }

    v126 = v307;
    (v314)(v305, v319, v80);
    if (qword_6B600 != -1)
    {
      swift_once();
    }

    sub_12AF0(&qword_6BD68, type metadata accessor for EmergencyNLIntent, &unk_51ACC);
    sub_13BD4();
    sub_50524();
    if (v323 == 2)
    {
      if (qword_6B5F0 != -1)
      {
        swift_once();
      }

      sub_50524();
      v127 = v323;
      v128 = 0xE400000000000000;
      v129 = 1684957542;
      switch(v323)
      {
        case 1:
          goto LABEL_77;
        case 2:
          v128 = 0xE600000000000000;
          v129 = sub_13C0C();
          goto LABEL_77;
        case 3:
          v128 = 0xE600000000000000;
          v129 = sub_13BEC();
          goto LABEL_77;
        case 4:
          v128 = 0xE600000000000000;
          v129 = sub_13BFC();
          goto LABEL_77;
        case 5:
          v128 = 0xE700000000000000;
          v129 = sub_13BC0();
          goto LABEL_77;
        case 6:
          v129 = sub_13BAC();
          v128 = 0xE900000000000065;
          goto LABEL_77;
        case 7:
          sub_13B88();
          sub_13CBC();
LABEL_77:
          v233 = sub_13D90(v129, v128);

          if (v233)
          {
            goto LABEL_80;
          }

          sub_13C0C();
          switch(v127)
          {
            case 2:
              break;
            case 3:
              sub_13BEC();
              break;
            case 4:
              sub_13BFC();
              break;
            case 5:
              sub_13BC0();
              break;
            case 6:
              sub_13BAC();
              break;
            case 7:
              sub_13B88();
              sub_13CBC();
              break;
            default:
              goto LABEL_79;
          }

          v248 = sub_50CE4();

          sub_13A80();
          sub_13B14();
          v249 = sub_13B9C();
          v163 = v250(v249);
          if ((v248 & 1) == 0)
          {
            goto LABEL_97;
          }

          goto LABEL_82;
        case 8:
          sub_13A80();
          sub_13B14();
          v243 = sub_13B9C();
          v163 = v244(v243);
          goto LABEL_97;
        default:
LABEL_79:

LABEL_80:
          sub_13A80();
          sub_13B14();
          goto LABEL_81;
      }
    }

    if (v323)
    {
      v151 = sub_13C34();

      sub_13A80();
      v152 = sub_13B9C();
      v153(v152);
      goto LABEL_23;
    }

    sub_13A80();
LABEL_81:
    v234 = sub_13B9C();
    v235(v234);
    goto LABEL_82;
  }

  if (v79 == enum case for Parse.directInvocation(_:))
  {
    v102 = sub_13B24();
    v103(v102);
    v104 = v303;
    v105 = v304;
    v106 = (*(v303 + 32))(v302, v76, v304);
    sub_13AE8(v106, v327);
    v107 = v298;
    sub_13B78();
    v108();
    v109 = *(v104 + 16);
    sub_13BE0();
    v109();
    v110 = sub_50AF4();
    v111 = sub_50BD4();
    if (sub_13C1C(v111))
    {
      v112 = sub_EFB0();
      v320 = v42;
      v113 = v112;
      v114 = sub_EFC8();
      *&v323 = v114;
      *v113 = 136315138;
      (v109)(v288, v81, v105);
      v115 = sub_50B64();
      v117 = v116;
      v118 = *(v104 + 8);
      v119 = sub_13C68();
      v118(v119);
      v120 = sub_4DE68(v115, v117, &v323);

      *(v113 + 4) = v120;
      _os_log_impl(&dword_0, v110, v111, "getConfirmationFromInput directInvocation: %s", v113, 0xCu);
      sub_253C(v114);
      sub_5674(v114);
      sub_5674(v113);

      v121 = v298;
      v122 = v320;
    }

    else
    {

      v118 = *(v104 + 8);
      v155 = sub_13C68();
      v118(v155);
      sub_13B6C();
      v121 = v107;
      v122 = v42;
    }

    v101 = v309;
    (v309)(v121);
    v156 = v302;
    if (sub_50304() == 0xD000000000000035 && 0x80000000000551D0 == v157)
    {
    }

    else
    {
      v159 = sub_50CE4();

      if ((v159 & 1) == 0)
      {
        if (sub_50304() != 0xD000000000000034 || 0x8000000000055210 != v160)
        {
          v162 = sub_50CE4();

          sub_13B3C();
          v163 = (v118)(v156, v304);
          v42 = v122;
          v126 = v307;
          if ((v162 & 1) == 0)
          {
            goto LABEL_97;
          }

          goto LABEL_82;
        }

        sub_13B3C();
        v226 = v156;
        v227 = v304;
LABEL_88:
        (v118)(v226, v227);
        goto LABEL_82;
      }
    }

    v181 = sub_50314();
    if (v181)
    {
      v182 = v181;
      v183 = sub_50A84();
      sub_2B7EC(v182, &v323, v183, v184);

      if (*(&v324 + 1))
      {
        if (swift_dynamicCast())
        {
          if (v326[0] == 0x656D7269666E6F63 && v326[1] == 0xE900000000000064)
          {

            v226 = sub_13BD4();
            goto LABEL_88;
          }

          v186 = sub_50CE4();

          v187 = sub_13BD4();
          v118(v187);
          if (v186)
          {
            goto LABEL_82;
          }

LABEL_54:
          v154 = &enum case for ConfirmationResponse.rejected(_:);
LABEL_83:
          v236 = *v154;
          v237 = sub_50284();
          sub_569C();
          (*(v238 + 104))(v312, v236, v237);
          sub_13D50();
          v242 = v237;
LABEL_84:
          sub_28E0(v239, v240, v241, v242);
          goto LABEL_85;
        }

LABEL_53:
        v188 = sub_13BD4();
        v118(v188);
        goto LABEL_54;
      }
    }

    else
    {
      v323 = 0u;
      v324 = 0u;
    }

    sub_51C0(&v323, &qword_6C1A8, &qword_51FE0);
    goto LABEL_53;
  }

  if (v79 == enum case for Parse.uso(_:))
  {
    v130 = sub_13B24();
    v131(v130);
    v132 = v296;
    v133 = v297;
    v134 = (*(v296 + 32))(v299, v76, v297);
    sub_13AE8(v134, v327);
    sub_13B78();
    v135();
    v136 = *(v132 + 16);
    v137 = v287;
    sub_13BE0();
    v136();
    v138 = sub_50AF4();
    v139 = sub_50BD4();
    if (os_log_type_enabled(v138, v139))
    {
      v140 = sub_EFB0();
      v320 = v42;
      v141 = v140;
      v142 = sub_EFC8();
      *&v323 = v142;
      *v141 = 136315138;
      (v136)(v285, v137, v133);
      sub_13D04();
      v143 = sub_50B64();
      v145 = v144;
      v146 = *(v132 + 8);
      v147 = sub_13C68();
      v146(v147);
      v148 = sub_4DE68(v143, v145, &v323);
      v149 = v146;

      *(v141 + 4) = v148;
      _os_log_impl(&dword_0, v138, v139, "getConfirmationFromInput usoParse: %s", v141, 0xCu);
      sub_253C(v142);
      sub_5674(v142);
      sub_5674(v141);

      v150 = v320;
    }

    else
    {

      v149 = *(v132 + 8);
      v189 = sub_13C68();
      v149(v189);
      sub_13B6C();
      v150 = v42;
    }

    sub_13D44();
    v190();
    v191 = v289;
    sub_50344();
    *(&v324 + 1) = &type metadata for EmergencyFeatureFlagsKey;
    v325 = sub_EB68();
    LOBYTE(v323) = 2;
    sub_50374();
    sub_253C(&v323);
    v192 = v290;
    v193 = sub_50A14();
    v194 = *(v192 + *(v191 + 36));
    if (v194 == 2)
    {
      v195 = sub_1FE8(v286, v286[3]);
      v196 = type metadata accessor for ConfirmationFlowConfigModel(0);
      if (*(v195 + *(v196 + 32)) == 1 && (v197 = sub_42F90(), (v197 & 1) != 0))
      {
        sub_13AE8(v197, &v323);
        v198 = v284;
        v316(v284, v196, v150);
        v199 = sub_50AF4();
        v200 = sub_50BD4();
        v201 = sub_13C1C(v200);
        v202 = v309;
        if (v201)
        {
          v203 = sub_5718();
          *v203 = 0;
          sub_13CA4();
          _os_log_impl(v204, v205, v206, v207, v208, 2u);
          sub_5674(v203);
        }

        sub_13B6C();
        v202(v198, v150);
      }

      else
      {
        v224 = sub_1FE8(v286, v286[3]);
        v101 = v309;
        if (*(v224 + *(v196 + 32)))
        {
LABEL_67:
          sub_13AC0();
          sub_13B3C();
          v225 = sub_13CF8();
          v163 = (v149)(v225, v297);
          v42 = v150;
          v126 = v307;
LABEL_97:
          sub_13AE8(v163, &v323);
          sub_13B78();
          v251();
          sub_13D10();
          v252();
          v253 = v126;
          v254 = sub_50AF4();
          v255 = sub_50BE4();
          if (sub_13C1C(v255))
          {
            v256 = sub_EFB0();
            v257 = sub_EFC8();
            v326[0] = v257;
            *v256 = 136315138;
            sub_13AA8();
            sub_12AF0(v258, v259, &protocol conformance descriptor for Input);
            v260 = sub_50CD4();
            v262 = v261;
            sub_13B3C();
            v263 = sub_13D04();
            (v293)(v263);
            v264 = sub_4DE68(v260, v262, v326);

            *(v256 + 4) = v264;
            sub_13CA4();
            _os_log_impl(v265, v266, v267, v268, v269, 0xCu);
            sub_253C(v257);
            sub_5674(v257);
            sub_5674(v256);

            sub_13B6C();
            v270 = v307;
          }

          else
          {

            sub_13B3C();
            v271 = sub_13D04();
            (v293)(v271);
            sub_13B6C();
            v270 = v253;
          }

          v101(v270, v42);
          sub_50284();
          v239 = sub_13CE4();
          goto LABEL_84;
        }

        v245 = 1684957542;
        v246 = 0xE400000000000000;
        switch(*(v192 + *(v191 + 20)))
        {
          case 1:
            goto LABEL_107;
          case 2:
            v246 = 0xE600000000000000;
            v245 = sub_13C0C();
            goto LABEL_107;
          case 3:
            v246 = 0xE600000000000000;
            v245 = sub_13BEC();
            goto LABEL_107;
          case 4:
            v246 = 0xE600000000000000;
            v245 = sub_13BFC();
            goto LABEL_107;
          case 5:
            v246 = 0xE700000000000000;
            v245 = sub_13BC0();
            goto LABEL_107;
          case 6:
            v245 = sub_13BAC();
            v246 = 0xE900000000000065;
            goto LABEL_107;
          case 7:
            v245 = sub_13B88();
            v246 = 0xEE0065636E657473;
LABEL_107:
            v272 = sub_13D90(v245, v246);

            if (v272)
            {
              goto LABEL_108;
            }

            goto LABEL_67;
          case 8:
            goto LABEL_67;
          default:

LABEL_108:
            sub_13AE8(v247, &v323);
            v273 = v283[1];
            v274 = sub_13CB0();
            (v316)(v274);
            v275 = sub_50AF4();
            v276 = sub_50BD4();
            if (sub_13C1C(v276))
            {
              v277 = sub_5718();
              *v277 = 0;
              sub_13CA4();
              _os_log_impl(v278, v279, v280, v281, v282, 2u);
              sub_5674(v277);
            }

            sub_13B6C();
            v101(v273, v150);
            break;
        }
      }

      sub_13AC0();
      sub_13B3C();
      v231 = sub_13CF8();
      v232 = v297;
    }

    else
    {
      sub_13AE8(v193, &v323);
      v215 = sub_13CB0();
      (v316)(v215);
      v216 = sub_50AF4();
      v217 = sub_50BD4();
      if (sub_13C1C(v217))
      {
        v218 = sub_EFB0();
        v219 = sub_EFC8();
        v326[0] = v219;
        *v218 = 136315138;
        v322 = v194 & 1;
        v220 = sub_50B64();
        v222 = v149;
        v223 = sub_4DE68(v220, v221, v326);

        *(v218 + 4) = v223;
        v149 = v222;
        _os_log_impl(&dword_0, v216, v217, "Found confirmation: %s", v218, 0xCu);
        sub_253C(v219);
        sub_5674(v219);
        sub_5674(v218);
      }

      sub_13B6C();
      sub_13D44();
      v228();
      v229 = v297;
      if (v194)
      {
        v151 = sub_13C34();

        sub_13AC0();
        v230 = sub_13CF8();
        (v149)(v230, v229);
LABEL_23:
        v154 = &enum case for ConfirmationResponse.rejected(_:);
        if (v151)
        {
          v154 = &enum case for ConfirmationResponse.confirmed(_:);
        }

        goto LABEL_83;
      }

      sub_13AC0();
      v231 = sub_13CF8();
      v232 = v229;
    }

    (v149)(v231, v232);
LABEL_82:
    v154 = &enum case for ConfirmationResponse.confirmed(_:);
    goto LABEL_83;
  }

  sub_56AC(v318, &v323);
  v164 = sub_13BD4();
  (v316)(v164);
  sub_13D10();
  v165();
  v166 = sub_50AF4();
  v167 = v42;
  v168 = sub_50BE4();
  if (sub_13C1C(v168))
  {
    v169 = sub_EFB0();
    v170 = sub_EFC8();
    v327[0] = v170;
    *v169 = 136315138;
    v320 = v167;
    sub_502D4();
    v171 = sub_50B64();
    v173 = v172;
    sub_13B3C();
    v174 = sub_13CD0();
    v175(v174);
    v176 = sub_4DE68(v171, v173, v327);
    v78 = v315;

    *(v169 + 4) = v176;
    _os_log_impl(&dword_0, v166, v168, "Failed to get confirmation, not a supported parse: %s", v169, 0xCu);
    sub_253C(v170);
    v177 = v170;
    v76 = v313;
    sub_5674(v177);
    v178 = v169;
    v77 = v314;
    sub_5674(v178);

    v179 = v320;
    v180 = v309;
  }

  else
  {

    sub_13B3C();
    v209 = sub_13CD0();
    v210(v209);
    sub_13B6C();
    v180 = v309;
    v179 = v167;
  }

  v75(v180, v179);
  sub_50284();
  v211 = sub_13CE4();
  sub_28E0(v211, v212, v213, v214);
  (*(v77 + 1))(v76, v78);
LABEL_85:
  sub_8A94();
}

void sub_10B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_13C8C();
  v5 = v3;
  v7 = v6;
  v39 = v8;
  v9 = sub_2208(&qword_6BB20, &unk_51FB0);
  sub_72B0(v9);
  sub_72A4();
  __chkstk_darwin(v10);
  sub_13D24();
  v11 = sub_50B04();
  sub_8558();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_EE34();
  v38 = v15;
  sub_13B08();
  __chkstk_darwin(v16);
  v18 = &v36 - v17;
  v19 = sub_50AE4();
  sub_56AC(v19, &v41);
  v37 = *(v13 + 16);
  v37(v18, v19, v11);
  v20 = sub_50AF4();
  v21 = sub_50BD4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = sub_5718();
    v36 = v13;
    v23 = v11;
    v24 = v5;
    v25 = v7;
    v26 = v22;
    *v22 = 0;
    _os_log_impl(&dword_0, v20, v21, "EmergencyPromptForConfirmationFlowStrategy actionForInput", v22, 2u);
    v27 = v26;
    v7 = v25;
    v5 = v24;
    v11 = v23;
    v13 = v36;
    sub_5674(v27);
  }

  v28 = *(v13 + 8);
  v29 = sub_13BD4();
  v28(v29);
  sub_EFE0(v7, v5 + 16);
  v30 = sub_50284();
  v31 = sub_513C(v4, 1, v30);
  sub_51C0(v4, &qword_6BB20, &unk_51FB0);
  if (v31 == 1)
  {
    sub_56AC(v19, &v40);
    v32 = v38;
    v37(v38, v19, v11);
    v33 = sub_50AF4();
    v34 = sub_50BD4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = sub_5718();
      *v35 = 0;
      _os_log_impl(&dword_0, v33, v34, "No confirmation response found in input, ignoring.", v35, 2u);
      sub_5674(v35);
    }

    (v28)(v32, v11);
    sub_50124();
  }

  else
  {
    sub_50114();
  }

  sub_8A94();
}

void sub_10DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_13C8C();
  v4 = v3;
  v91 = v6;
  v92 = v5;
  v89 = v7;
  v86 = sub_2208(&qword_6B988, &qword_530B0);
  sub_569C();
  sub_72A4();
  __chkstk_darwin(v8);
  sub_13D38();
  v95 = v9;
  sub_13B48();
  v94 = sub_50254();
  sub_8558();
  v96 = v10;
  __chkstk_darwin(v11);
  sub_EE34();
  v85 = v12;
  sub_13B08();
  __chkstk_darwin(v13);
  v15 = v84 - v14;
  v16 = sub_2208(&qword_6C180, &qword_51FC0);
  sub_72B0(v16);
  sub_72A4();
  __chkstk_darwin(v17);
  v19 = v84 - v18;
  v87 = sub_50104();
  sub_8558();
  v21 = v20;
  __chkstk_darwin(v22);
  sub_5630();
  v88 = v24 - v23;
  sub_13B48();
  v25 = sub_50B04();
  sub_8558();
  v27 = v26;
  __chkstk_darwin(v28);
  sub_EE34();
  v90 = v29;
  sub_13B08();
  __chkstk_darwin(v30);
  sub_EEF4();
  v93 = v31;
  sub_13B08();
  __chkstk_darwin(v32);
  v34 = v84 - v33;
  v35 = sub_50AE4();
  sub_56AC(v35, &v109);
  v36 = v27;
  v37 = *(v27 + 16);
  v101 = v27 + 16;
  v102 = v35;
  v100 = v37;
  (v37)(v34, v35, v25);
  v38 = sub_50AF4();
  v39 = sub_50BD4();
  v40 = os_log_type_enabled(v38, v39);
  v97 = v25;
  if (v40)
  {
    v41 = sub_5718();
    *v41 = 0;
    _os_log_impl(&dword_0, v38, v39, "EmergencyPromptForConfirmationFlowStrategy makePromptForConfirmation", v41, 2u);
    v42 = v41;
    v25 = v97;
    sub_5674(v42);
  }

  v103 = *(v36 + 8);
  v99 = v36 + 8;
  v103(v34, v25);
  v43 = v4[23];
  v98 = v15;
  if (v43)
  {
    v84[1] = v4[22];

    sub_4FFE4();
    v84[2] = v110[4];
    v84[0] = sub_1FE8(v110, v110[3]);
    sub_50034();
    (*(v21 + 104))(v88, enum case for ActivityType.confirmation(_:), v87);
    v44 = enum case for SiriKitReliabilityCodes.normal(_:);
    v45 = sub_50014();
    sub_569C();
    v15 = v98;
    (*(v46 + 104))(v19, v44, v45);
    sub_13D50();
    sub_28E0(v47, v48, v49, v45);
    sub_13B54();
    sub_50024();
    v25 = v97;
    sub_4FFF4();

    sub_253C(v110);
  }

  v50 = sub_13DB0();
  v51 = type metadata accessor for ConfirmationFlowConfigModel(0);
  v52 = *(v50 + v51[8]);
  v53 = sub_1FE8(v4 + 2, v4[5]);
  sub_5730(v52, *(v53 + v51[9]), *(v89 + 48), *(v89 + 56));
  sub_50994();
  sub_501D4();
  sub_56AC(v102, &v108);
  v54 = v93;
  sub_13BE0();
  v100();
  v55 = sub_50AF4();
  v56 = sub_50BD4();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = sub_EFB0();
    v58 = sub_EFC8();
    v110[0] = v58;
    *v57 = 136315138;
    sub_56AC(v15, &v104);
    (*(v96 + 16))(v85, v15, v94);
    v59 = sub_50B64();
    v61 = sub_4DE68(v59, v60, v110);
    v25 = v97;

    *(v57 + 4) = v61;
    _os_log_impl(&dword_0, v55, v56, "EmergencyPromptForConfirmationFlowStrategy preparing contextUpdate: %s", v57, 0xCu);
    sub_253C(v58);
    sub_5674(v58);
    sub_5674(v57);

    v103(v93, v25);
  }

  else
  {

    v103(v54, v25);
  }

  v62 = v95;
  v63 = v4[10];
  v64 = v4[11];
  sub_1FE8(v4 + 7, v63);
  (*(v64 + 8))(v107, v63, v64);
  v65 = *(sub_13DB0() + v51[7]);
  v66 = sub_1FE8(v4 + 12, v4[15]);
  memcpy(v110, v66, 0x70uLL);
  sub_1381C(v65);
  v67 = sub_134B0(v107, v110, v65);
  sub_1382C(v65);
  sub_56AC(v102, &v106);
  v68 = v90;
  sub_13BE0();
  v100();

  v69 = sub_50AF4();
  v70 = sub_50BD4();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = sub_EFB0();
    v72 = sub_EFC8();
    v105[0] = v72;
    *v71 = 136315138;
    v73 = sub_13DB0();
    sub_12A88(v73, v62, &qword_6B988, &qword_530B0);
    v74 = sub_50B64();
    v76 = sub_4DE68(v74, v75, v105);
    v102 = v67;
    v77 = v25;
    v78 = v76;
    v62 = v95;

    *(v71 + 4) = v78;
    _os_log_impl(&dword_0, v69, v70, "EmergencyPromptForConfirmationFlowStrategy prompting with promptForConfirmationTemplatingResult: %s", v71, 0xCu);
    sub_253C(v72);
    sub_5674(v72);
    sub_5674(v71);

    v79 = v68;
    v80 = v77;
    v67 = v102;
  }

  else
  {

    v79 = sub_13C68();
  }

  v103(v79, v80);
  v81 = sub_13DB0();
  v82 = sub_12A88(v81, v62, &qword_6B988, &qword_530B0);
  __chkstk_darwin(v82);
  v84[-4] = v107;
  v84[-3] = v67;
  v84[-2] = v4;
  v83 = v98;
  v84[-1] = v98;
  sub_11834(sub_1383C, v105);

  sub_51C0(v62, &qword_6B988, &qword_530B0);
  v92(v105);
  sub_51C0(v105, &qword_6C188, &qword_51FC8);
  sub_253C(v107);
  (*(v96 + 8))(v83, v94);
  sub_8A94();
}

uint64_t sub_11650@<X0>(void *a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v10 = sub_2208(&qword_6C1B8, &qword_51FE8);
  __chkstk_darwin(v10 - 8);
  v12 = v16 - v11;
  sub_1FE8(a2, a2[3]);
  sub_50074();
  sub_1FE8((a4 + 16), *(a4 + 40));
  type metadata accessor for ConfirmationFlowConfigModel(0);
  swift_beginAccess();
  v13 = sub_50254();
  (*(*(v13 - 8) + 16))(v12, a5, v13);
  sub_28E0(v12, 0, 1, v13);
  v14 = sub_50364();
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  a6[3] = v14;
  a6[4] = &protocol witness table for AceOutput;
  sub_530C(a6);
  sub_50144();
  sub_51C0(v16, &qword_6C190, &qword_51FD0);
  return sub_51C0(v12, &qword_6C1B8, &qword_51FE8);
}

uint64_t sub_11834@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X8>)
{
  v14 = a1;
  v4 = sub_50264();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2208(&qword_6B988, &qword_530B0);
  __chkstk_darwin(v8);
  v10 = (&v13 - v9);
  sub_12A88(v2, &v13 - v9, &qword_6B988, &qword_530B0);
  result = swift_getEnumCaseMultiPayload();
  v12 = result;
  if (result == 1)
  {
    *a2 = *v10;
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    v14(v7);
    result = (*(v5 + 8))(v7, v4);
  }

  *(a2 + 40) = v12 == 1;
  return result;
}

void sub_119EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_13C8C();
  v5 = v3;
  v132 = v7;
  v133 = v6;
  v9 = v8;
  v130 = sub_2208(&qword_6C198, &qword_51FD8);
  sub_569C();
  sub_72A4();
  __chkstk_darwin(v10);
  sub_13D38();
  v131 = v11;
  v12 = sub_2208(&qword_6BB20, &unk_51FB0);
  sub_72B0(v12);
  sub_72A4();
  __chkstk_darwin(v13);
  sub_13D38();
  v124 = v14;
  sub_13B48();
  v126 = sub_50284();
  sub_8558();
  v128 = v15;
  __chkstk_darwin(v16);
  sub_EE34();
  v127 = v17;
  sub_13B08();
  __chkstk_darwin(v18);
  sub_13C5C();
  v129 = v19;
  sub_13B48();
  v20 = sub_502E4();
  sub_8558();
  v22 = v21;
  __chkstk_darwin(v23);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v24);
  v25 = sub_13D70();
  sub_8558();
  v27 = v26;
  __chkstk_darwin(v28);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v29);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v30);
  v32 = &v112 - v31;
  v33 = sub_50AE4();
  sub_56AC(v33, &v137);
  v34 = *(v27 + 16);
  v122 = v27 + 16;
  v123 = v33;
  v121 = v34;
  (v34)(v32, v33, v25);
  v35 = *(v22 + 16);
  v125 = v9;
  v115 = v22 + 16;
  v114 = v35;
  v35(v4, v9, v20);
  v36 = sub_50AF4();
  v37 = sub_50BD4();
  v38 = os_log_type_enabled(v36, v37);
  v117 = v22;
  if (v38)
  {
    v39 = sub_EFB0();
    v113 = v5;
    v40 = v39;
    v41 = sub_EFC8();
    v118 = v25;
    v112 = v41;
    v136[0] = v41;
    *v40 = 136315138;
    sub_13AA8();
    sub_12AF0(v42, v43, &protocol conformance descriptor for Input);
    v44 = sub_50CD4();
    v45 = v27;
    v47 = v46;
    v48 = sub_13C74();
    v49(v48);
    v50 = sub_4DE68(v44, v47, v136);
    v27 = v45;
    v51 = v126;

    *(v40 + 4) = v50;
    _os_log_impl(&dword_0, v36, v37, "EmergencyPromptForConfirmationFlowStrategy parseConfirmationResponse. Input: %s", v40, 0xCu);
    v52 = v112;
    sub_253C(v112);
    v25 = v118;
    sub_5674(v52);
    v53 = v40;
    v5 = v113;
    sub_5674(v53);

    v54 = sub_13D5C();
    v37(v54);
  }

  else
  {

    v55 = sub_13C74();
    v56(v55);
    v57 = sub_13D5C();
    v37(v57);
    v51 = v126;
  }

  v58 = v124;
  v59 = v125;
  sub_EFE0(v125, v5 + 16);
  v60 = sub_513C(v58, 1, v51);
  v61 = v127;
  v62 = v128;
  if (v60 == 1)
  {
    v126 = v37;
    sub_51C0(v58, &qword_6BB20, &unk_51FB0);
    sub_56AC(v123, v136);
    v63 = v120;
    v64 = sub_13BD4();
    v121(v64);
    v114(v116, v59, v20);
    v65 = sub_50AF4();
    v66 = sub_50BE4();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v135 = v68;
      *v67 = 136315394;
      v134 = 1;
      v69 = sub_50B64();
      v71 = sub_4DE68(v69, v70, &v135);

      *(v67 + 4) = v71;
      *(v67 + 12) = 2080;
      sub_13AA8();
      sub_12AF0(v72, v73, &protocol conformance descriptor for Input);
      v74 = sub_50CD4();
      v76 = v75;
      sub_13B14();
      sub_13D44();
      v77();
      v78 = sub_4DE68(v74, v76, &v135);

      *(v67 + 14) = v78;
      _os_log_impl(&dword_0, v65, v66, "%s: No confirmation response found in input: %s", v67, 0x16u);
      swift_arrayDestroy();
      sub_5674(v68);
      sub_5674(v67);

      v79 = v120;
    }

    else
    {

      sub_13B14();
      sub_13D44();
      v103();
      v79 = v63;
    }

    v126(v79, v25);
    sub_E9D0();
    v104 = swift_allocError();
    *v105 = 1;
    v106 = v131;
    *v131 = v104;
    swift_storeEnumTagMultiPayload();
    v133(v106);
    sub_51C0(v106, &qword_6C198, &qword_51FD8);
  }

  else
  {
    v125 = v27;
    sub_13BE0();
    v80();
    v81 = v123;
    sub_56AC(v123, v136);
    v82 = v119;
    (v121)(v119, v81, v25);
    v83 = *(v62 + 16);
    v84 = sub_13CB0();
    v83(v84);
    v85 = sub_50AF4();
    v86 = sub_50BD4();
    if (sub_13C1C(v86))
    {
      v87 = sub_EFB0();
      v126 = v37;
      v88 = v87;
      v89 = sub_EFC8();
      v118 = v25;
      v90 = v62;
      v124 = v89;
      v135 = v89;
      *v88 = 136315138;
      sub_12AF0(&qword_6C1A0, &type metadata accessor for ConfirmationResponse, &protocol conformance descriptor for ConfirmationResponse);
      v91 = sub_50CD4();
      v92 = v83;
      v94 = v93;
      LODWORD(v123) = v86;
      v95 = *(v90 + 8);
      v95(v61, v51);
      v96 = sub_4DE68(v91, v94, &v135);
      v83 = v92;

      *(v88 + 4) = v96;
      sub_13CA4();
      _os_log_impl(v97, v98, v99, v100, v101, 0xCu);
      v102 = v124;
      sub_253C(v124);
      sub_5674(v102);
      sub_5674(v88);

      v126(v119, v118);
    }

    else
    {

      v95 = *(v62 + 8);
      v95(v61, v51);
      (v37)(v82, v25);
    }

    v107 = v131;
    v108 = v129;
    (v83)(v131, v129, v51);
    sub_13D50();
    sub_28E0(v109, v110, v111, v51);
    swift_storeEnumTagMultiPayload();
    v133(v107);
    sub_51C0(v107, &qword_6C198, &qword_51FD8);
    v95(v108, v51);
  }

  sub_8A94();
}

void sub_1234C(uint64_t a1, uint64_t a2)
{
  sub_13C8C();
  v4 = v2;
  v45 = v6;
  v46 = v5;
  v7 = sub_2208(&qword_6B988, &qword_530B0);
  sub_72B0(v7);
  sub_72A4();
  __chkstk_darwin(v8);
  sub_13D38();
  v44 = v9;
  v10 = sub_2208(&qword_6C180, &qword_51FC0);
  sub_72B0(v10);
  sub_72A4();
  __chkstk_darwin(v11);
  sub_13D24();
  v43 = sub_50104();
  sub_8558();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_5630();
  v17 = v16 - v15;
  v18 = sub_50B04();
  sub_8558();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_5630();
  v24 = v23 - v22;
  v25 = sub_50AE4();
  sub_56AC(v25, &v49);
  (*(v20 + 16))(v24, v25, v18);
  v26 = sub_50AF4();
  v27 = sub_50BD4();
  if (sub_13C1C(v27))
  {
    v28 = sub_5718();
    *v28 = 0;
    _os_log_impl(&dword_0, v26, v27, "EmergencyPromptForConfirmationFlowStrategy makeConfirmationRejectedResponse", v28, 2u);
    sub_5674(v28);
  }

  (*(v20 + 8))(v24, v18);
  if (v4[23])
  {
    v42 = v4[22];

    sub_4FFE4();
    sub_1FE8(v47, v47[3]);
    sub_50034();
    (*(v13 + 104))(v17, enum case for ActivityType.confirmationRejected(_:), v43);
    v29 = enum case for SiriKitReliabilityCodes.rejectParameter(_:);
    v30 = sub_50014();
    sub_569C();
    (*(v31 + 104))(v3, v29, v30);
    sub_13D50();
    sub_28E0(v32, v33, v34, v30);
    sub_13B54();
    sub_50024();
    sub_4FFF4();

    sub_253C(v47);
  }

  v35 = v4[10];
  v36 = v4[11];
  sub_1FE8(v4 + 7, v35);
  (*(v36 + 8))(v48, v35, v36);
  v37 = sub_1FE8(v4 + 2, v4[5]);
  v38 = type metadata accessor for ConfirmationFlowConfigModel(0);
  v39 = sub_12A88(v37 + *(v38 + 20), v44, &qword_6B988, &qword_530B0);
  __chkstk_darwin(v39);
  *(&v42 - 2) = v48;
  sub_11834(sub_12AE8, v47);
  v40 = sub_13BD4();
  sub_51C0(v40, v41, &qword_530B0);
  v46(v47);
  sub_51C0(v47, &qword_6C188, &qword_51FC8);
  sub_253C(v48);
  sub_8A94();
}

uint64_t sub_12764@<X0>(void *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1FE8(a2, a2[3]);
  sub_50074();
  memset(v5, 0, sizeof(v5));
  v6 = 0;
  a3[3] = sub_50364();
  a3[4] = &protocol witness table for AceOutput;
  sub_530C(a3);
  sub_50134();
  return sub_51C0(v5, &qword_6C190, &qword_51FD0);
}

void *sub_12830()
{
  sub_253C(v0 + 2);
  sub_253C(v0 + 7);
  sub_253C(v0 + 12);
  sub_55C8((v0 + 17));

  return v0;
}

uint64_t sub_12870()
{
  sub_12830();

  return _swift_deallocClassInstance(v0, 192, 7);
}

uint64_t type metadata accessor for EmergencyConfirmationResponseProvider(uint64_t a1)
{
  result = qword_6C220;
  if (!qword_6C220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_129B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for EmergencyPromptForConfirmationFlowStrategy();

  return PromptForConfirmationFlowStrategy.makeRepromptOnEmptyParse(itemToConfirm:_:)(a1, a2, a3, v9, a5);
}

uint64_t sub_12A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for EmergencyPromptForConfirmationFlowStrategy();

  return PromptForConfirmationFlowStrategy.makeRepromptOnLowConfidence(itemToConfirm:_:)(a1, a2, a3, v9, a5);
}

uint64_t sub_12A88(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_2208(a3, a4);
  sub_569C();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_12AF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_12B38(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_569C();
  (*(v3 + 8))(a1);
  return a1;
}

void *sub_12B90(uint64_t a1, const void *a2)
{
  v34 = a1;
  v35 = sub_50B04();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2208(&qword_6B988, &qword_530B0);
  v7 = __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v32 - v10;
  v38 = &type metadata for EmergencyCATProvider;
  v39 = &off_66C88;
  v37[0] = swift_allocObject();
  memcpy((v37[0] + 16), a2, 0x70uLL);
  sub_1FE8(v37, &type metadata for EmergencyCATProvider);

  sub_22F0(a2, v36);
  sub_2CE4();

  v12 = sub_50D64();
  v14 = v13;
  sub_51C0(v11, &qword_6B988, &qword_530B0);
  if (v14)
  {
    v33 = v12;
    sub_1FE8(v37, v38);

    sub_2E0C();

    v15 = sub_50D64();
    v17 = v16;
    sub_51C0(v9, &qword_6B988, &qword_530B0);
    if (v17)
    {
      sub_2208(&qword_6C1C0, &unk_51FF0);
      inited = swift_initStackObject();
      v35 = v15;
      v19 = inited;
      v32 = xmmword_51780;
      *(inited + 16) = xmmword_51780;

      v19[4] = sub_50A84();
      v19[5] = v20;
      v19[9] = &type metadata for String;
      v19[6] = 0x656D7269666E6F63;
      v19[7] = 0xE900000000000064;
      v21 = sub_50B24();
      v40 = v33;
      v41 = v14;
      v42 = 0xD000000000000035;
      v43 = 0x80000000000551D0;
      v44 = v21;
      v22 = swift_initStackObject();
      *(v22 + 16) = v32;

      *(v22 + 32) = sub_50A84();
      *(v22 + 40) = v23;
      *(v22 + 72) = &type metadata for String;
      *(v22 + 48) = 0x64657463656A6572;
      *(v22 + 56) = 0xE800000000000000;
      v24 = sub_50B24();
      v36[0] = v35;
      v36[1] = v17;
      v36[2] = 0xD000000000000035;
      v36[3] = 0x80000000000551D0;
      v36[4] = v24;
      v25 = sub_50904();

      swift_bridgeObjectRelease_n();

      swift_bridgeObjectRelease_n();
      goto LABEL_8;
    }
  }

  v26 = sub_50AE4();
  swift_beginAccess();
  v27 = v35;
  (*(v3 + 16))(v5, v26, v35);
  v28 = sub_50AF4();
  v29 = sub_50BE4();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_0, v28, v29, "Failed to execute label CATs for makeYesNoButtons", v30, 2u);
  }

  (*(v3 + 8))(v5, v27);
  v25 = &_swiftEmptyArrayStorage;
LABEL_8:
  sub_253C(v37);
  return v25;
}

void *sub_13020(uint64_t a1, const void *a2)
{
  v34 = a1;
  v35 = sub_50B04();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2208(&qword_6B988, &qword_530B0);
  v7 = __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v32 - v10;
  v38 = &type metadata for EmergencyCATProvider;
  v39 = &off_66C88;
  v37[0] = swift_allocObject();
  memcpy((v37[0] + 16), a2, 0x70uLL);
  sub_1FE8(v37, &type metadata for EmergencyCATProvider);

  sub_22F0(a2, v36);
  sub_24940();

  v12 = sub_50D64();
  v14 = v13;
  sub_51C0(v11, &qword_6B988, &qword_530B0);
  if (v14)
  {
    v33 = v12;
    sub_1FE8(v37, v38);

    sub_2F44();

    v15 = sub_50D64();
    v17 = v16;
    sub_51C0(v9, &qword_6B988, &qword_530B0);
    if (v17)
    {
      sub_2208(&qword_6C1C0, &unk_51FF0);
      inited = swift_initStackObject();
      v35 = v15;
      v19 = inited;
      v32 = xmmword_51780;
      *(inited + 16) = xmmword_51780;

      v19[4] = sub_50A84();
      v19[5] = v20;
      v19[9] = &type metadata for String;
      v19[6] = 0x656D7269666E6F63;
      v19[7] = 0xE900000000000064;
      v21 = sub_50B24();
      v40 = v33;
      v41 = v14;
      v42 = 0xD000000000000035;
      v43 = 0x80000000000551D0;
      v44 = v21;
      v22 = swift_initStackObject();
      *(v22 + 16) = v32;

      *(v22 + 32) = sub_50A84();
      *(v22 + 40) = v23;
      *(v22 + 72) = &type metadata for String;
      *(v22 + 48) = 0x64657463656A6572;
      *(v22 + 56) = 0xE800000000000000;
      v24 = sub_50B24();
      v36[0] = v35;
      v36[1] = v17;
      v36[2] = 0xD000000000000035;
      v36[3] = 0x80000000000551D0;
      v36[4] = v24;
      v25 = sub_50904();

      swift_bridgeObjectRelease_n();

      swift_bridgeObjectRelease_n();
      goto LABEL_8;
    }
  }

  v26 = sub_50AE4();
  swift_beginAccess();
  v27 = v35;
  (*(v3 + 16))(v5, v26, v35);
  v28 = sub_50AF4();
  v29 = sub_50BE4();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_0, v28, v29, "Failed to execute label CATs for makeStartCancelButtons", v30, 2u);
  }

  (*(v3 + 8))(v5, v27);
  v25 = &_swiftEmptyArrayStorage;
LABEL_8:
  sub_253C(v37);
  return v25;
}

void *sub_134B0(char *a1, const void *a2, void *a3)
{
  v6 = sub_50B04();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = &type metadata for EmergencyCATProvider;
  v25 = &off_66C88;
  v23[0] = swift_allocObject();
  memcpy((v23[0] + 16), a2, 0x70uLL);
  sub_1FE8(a1, *(a1 + 3));
  sub_22F0(a2, __dst);
  if (sub_500D4() & 1) != 0 || (sub_1FE8(a1, *(a1 + 3)), (sub_500B4()))
  {
    v10 = sub_50AE4();
    swift_beginAccess();
    (*(v7 + 16))(v9, v10, v6);
    v11 = sub_50AF4();
    v12 = sub_50BD4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "Device is HomePod or AppleTV. Not creating aceViews from ConfirmationSnippets.", v13, 2u);
    }

    (*(v7 + 8))(v9, v6);
    v14 = &_swiftEmptyArrayStorage;
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
    switch(a3)
    {
      case 0uLL:
        break;
      case 1uLL:
        v16 = sub_1FE8(v23, v24);
        memcpy(__dst, v16, sizeof(__dst));
        v17 = sub_12B90(a1, __dst);
        goto LABEL_13;
      case 2uLL:
        v19 = sub_1FE8(v23, v24);
        memcpy(__dst, v19, sizeof(__dst));
        v17 = sub_26AB4(a1, __dst);
        goto LABEL_13;
      case 3uLL:
        v20 = sub_1FE8(v23, v24);
        memcpy(__dst, v20, sizeof(__dst));
        v17 = sub_26AD4(a1, __dst);
        goto LABEL_13;
      case 4uLL:
        v18 = sub_1FE8(v23, v24);
        memcpy(__dst, v18, sizeof(__dst));
        v17 = sub_26F4C(a1, __dst);
        goto LABEL_13;
      case 5uLL:
        v21 = sub_1FE8(v23, v24);
        memcpy(__dst, v21, sizeof(__dst));
        v17 = sub_13020(a1, __dst);
LABEL_13:
        v14 = v17;
        break;
      default:

        v14 = a3;
        break;
    }
  }

  sub_253C(v23);
  return v14;
}

unint64_t sub_1381C(unint64_t result)
{
  if (result >= 6)
  {
  }

  return result;
}

unint64_t sub_1382C(unint64_t result)
{
  if (result >= 6)
  {
  }

  return result;
}

uint64_t sub_13848()
{

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_138FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2208(&qword_6BB20, &unk_51FB0);

  return sub_513C(a1, a2, v4);
}

uint64_t sub_13964(uint64_t a1, uint64_t a2)
{
  v4 = sub_2208(&qword_6BB20, &unk_51FB0);

  return sub_28E0(a1, a2, a2, v4);
}

void sub_139BC(uint64_t a1)
{
  sub_13A28(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_13A28(uint64_t a1)
{
  if (!qword_6C230)
  {
    sub_50284();
    v1 = sub_50C24();
    if (!v2)
    {
      atomic_store(v1, &qword_6C230);
    }
  }
}

uint64_t sub_13A80()
{

  return sub_12B38(v0, type metadata accessor for EmergencyNLIntent);
}

uint64_t sub_13AC0()
{

  return sub_12B38(v0, &type metadata accessor for EmergencyDialogAct);
}

uint64_t sub_13AE8(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

BOOL sub_13C1C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_13C34()
{

  return sub_50CE4();
}

uint64_t sub_13C74()
{
  result = v0;
  *(v2 - 304) = *(v1 + 8);
  return result;
}

uint64_t sub_13D70()
{

  return sub_50B04();
}

uint64_t sub_13D90(uint64_t a1, uint64_t a2)
{

  return sub_50CE4();
}

void *sub_13DB0()
{
  v2 = *(v0 + 40);

  return sub_1FE8((v0 + 16), v2);
}

uint64_t type metadata accessor for EmergencyDomesticViolenceBasicIntentModernCATs(uint64_t a1)
{
  result = qword_6C318;
  if (!qword_6C318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_13F3C(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_14098(uint64_t a1, uint64_t a2)
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

uint64_t sub_141A0(char a1, char a2)
{
  v3 = 0xD000000000000012;
  v4 = "tCATs";
  v5 = "tCATs";
  switch(a1)
  {
    case 1:
      v5 = "isBadActorGuidance";
      v3 = 0xD000000000000012;
      break;
    case 2:
      v5 = "isContentReporting";
      goto LABEL_5;
    case 3:
      v5 = "isExplicitSearch";
LABEL_5:
      v3 = 0xD000000000000010;
      break;
    default:
      break;
  }

  v6 = 0xD000000000000012;
  switch(a2)
  {
    case 1:
      v4 = "isBadActorGuidance";
      v6 = 0xD000000000000012;
      break;
    case 2:
      v4 = "isContentReporting";
      goto LABEL_10;
    case 3:
      v4 = "isExplicitSearch";
LABEL_10:
      v6 = 0xD000000000000010;
      break;
    default:
      break;
  }

  if (v3 == v6 && (v5 | 0x8000000000000000) == (v4 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_50CE4();
  }

  return v8 & 1;
}

Swift::Int sub_142EC(uint64_t a1)
{
  v1 = a1;
  sub_50D34();
  sub_14334(v3, v1);
  return sub_50D54();
}

uint64_t sub_14334(uint64_t a1, char a2)
{
  sub_50B94();
}

Swift::Int sub_143F0(uint64_t a1, char a2)
{
  sub_50D34();
  sub_14334(v4, a2);
  return sub_50D54();
}

uint64_t sub_14434()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t sub_1447C(_BYTE *a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = a1[16];
  *(v1 + 25) = a1[17];
  *(v1 + 26) = a1[18];
  v2 = a1[19];

  *(v1 + 27) = v2;
  return v1;
}

double sub_144C4@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_150F4();
  v8 = v5 == 0xD000000000000012 && v6 == a1;
  if (v8 || (v9 = v5, (sub_150A0(0xD000000000000012, v6) & 1) != 0))
  {
    v10 = v2[24];
LABEL_7:
    *(a2 + 24) = &type metadata for Bool;
    *a2 = v10;
    return result;
  }

  sub_150F4();
  v12 = v9 == 0xD000000000000012 && v11 == a1;
  if (v12 || (sub_150A0(0xD000000000000012, v11) & 1) != 0)
  {
    v10 = v2[25];
    goto LABEL_7;
  }

  sub_150F4();
  v14 = v9 == 0xD000000000000010 && v13 == a1;
  if (v14 || (sub_150A0(0xD000000000000010, v13) & 1) != 0)
  {
    v10 = v2[26];
    goto LABEL_7;
  }

  sub_150F4();
  v16 = v9 == 0xD000000000000010 && v15 == a1;
  if (v16 || (sub_150A0(0xD000000000000010, v15) & 1) != 0)
  {
    v10 = v2[27];
    goto LABEL_7;
  }

  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

unint64_t sub_145D8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_65888;
  v6._object = a2;
  v4 = sub_50CA4(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_14638(char a1)
{
  result = 0xD000000000000012;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
    case 3:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_146E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_145D8(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_14718@<X0>(unint64_t *a1@<X8>)
{
  result = sub_14638(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1474C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_145D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_14780(uint64_t a1)
{
  v2 = sub_14E38();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_147BC(uint64_t a1)
{
  v2 = sub_14E38();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_147F8()
{

  return _swift_deallocClassInstance(v0, 28, 7);
}

uint64_t sub_14854(void *a1)
{
  v3 = v1;
  v5 = sub_2208(&qword_6C5D0, &qword_52240);
  sub_8558();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v16 - v9;
  sub_1FE8(a1, a1[3]);
  sub_14E38();
  sub_50D94();
  v11 = v3[24];
  v20 = 0;
  sub_150D8(v11, &v20);
  if (!v2)
  {
    v12 = v3[25];
    v19 = 1;
    sub_150D8(v12, &v19);
    v13 = v3[26];
    v18 = 2;
    sub_150D8(v13, &v18);
    v14 = v3[27];
    v17 = 3;
    sub_150D8(v14, &v17);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_149CC(void *a1)
{
  v2 = swift_allocObject();
  sub_14A40(a1);
  return v2;
}

uint64_t sub_14A40(void *a1)
{
  v3 = v1;
  v5 = sub_2208(&qword_6C5C0, &qword_52238);
  sub_8558();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  *(v1 + 16) = 0;
  sub_1FE8(a1, a1[3]);
  sub_14E38();
  sub_50D84();
  if (v2)
  {

    type metadata accessor for CsamSituation();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v17 = 0;
    *(v1 + 24) = sub_150BC(&v17) & 1;
    v16 = 1;
    *(v1 + 25) = sub_150BC(&v16) & 1;
    v15 = 2;
    *(v1 + 26) = sub_150BC(&v15) & 1;
    v14 = 3;
    v12 = sub_150BC(&v14);
    (*(v7 + 8))(v10, v5);
    *(v3 + 27) = v12 & 1;
  }

  sub_253C(a1);
  return v3;
}

void *sub_14C30()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = v2;
  return v2;
}

void sub_14C78(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = a1;
}

uint64_t sub_14D40@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_149CC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_14DF8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CsamSituation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_14E38()
{
  result = qword_6C5C8;
  if (!qword_6C5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C5C8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CsamSituation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x14F58);
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

unint64_t sub_14F94()
{
  result = qword_6C5D8;
  if (!qword_6C5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C5D8);
  }

  return result;
}

unint64_t sub_14FEC()
{
  result = qword_6C5E0;
  if (!qword_6C5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C5E0);
  }

  return result;
}

unint64_t sub_15044()
{
  result = qword_6C5E8;
  if (!qword_6C5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C5E8);
  }

  return result;
}

uint64_t sub_150A0(uint64_t a1, uint64_t a2)
{

  return sub_50CE4();
}

uint64_t sub_150BC(uint64_t a1)
{

  return KeyedDecodingContainer.decode(_:forKey:)(a1, v1);
}

uint64_t sub_150D8(uint64_t a1, uint64_t a2)
{

  return KeyedEncodingContainer.encode(_:forKey:)(a1, a2, v2);
}

uint64_t sub_15100(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v4 + 146) = a4;
  *(v4 + 145) = a3;
  *(v4 + 1280) = a2;
  *(v4 + 1272) = a1;
  v5 = sub_50B04();
  *(v4 + 1288) = v5;
  *(v4 + 1296) = *(v5 - 8);
  *(v4 + 1304) = swift_task_alloc();
  *(v4 + 1312) = swift_task_alloc();

  return _swift_task_switch(sub_151D8, 0, 0);
}

uint64_t sub_151D8()
{
  v1 = *(v0 + 1280);
  v2 = v1[3];
  v3 = v1[4];
  sub_1FE8(v1, v2);
  v8 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 1320) = v4;
  *v4 = v0;
  v4[1] = sub_1530C;
  v5 = *(v0 + 146);
  v6 = *(v0 + 145);

  return v8(v0 + 288, v6, v5, v2, v3);
}

uint64_t sub_1530C()
{
  v1 = *v0;

  memcpy((v1 + 16), (v1 + 288), 0x81uLL);

  return _swift_task_switch(sub_15418, 0, 0);
}

uint64_t sub_15418()
{
  v35 = v0;
  memcpy((v0 + 152), (v0 + 288), 0x81uLL);
  if (sub_157FC(v0 + 152) == 1)
  {
    nullsub_1();
    v2 = *v1;
    sub_50AE4();
    swift_beginAccess();
    v3 = sub_158DC();
    v4(v3);
    memcpy((v0 + 560), (v0 + 16), 0x81uLL);
    nullsub_1();
    swift_errorRetain();
    v5 = sub_50AF4();
    v6 = sub_50BE4();
    sub_15874(v0 + 288);
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 1312);
    v9 = *(v0 + 1296);
    v10 = *(v0 + 1288);
    if (v7)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v34[0] = v12;
      *v11 = 136315138;
      *(v0 + 1264) = v2;
      memcpy((v0 + 696), (v0 + 16), 0x81uLL);
      nullsub_1();
      swift_errorRetain();
      sub_2208(&qword_6B980, qword_52B10);
      v13 = sub_50B64();
      v15 = sub_4DE68(v13, v14, v34);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_0, v5, v6, "Error while fetching orgInfo: %s", v11, 0xCu);
      sub_253C(v12);
      sub_5674(v12);
      sub_5674(v11);

      sub_15874(v0 + 288);
    }

    else
    {
      sub_15874(v0 + 288);
    }

    (*(v9 + 8))(v8, v10);
    sub_E534((v0 + 832));
  }

  else
  {
    nullsub_1();
    memcpy(v34, v16, 0x80uLL);
    sub_50AE4();
    swift_beginAccess();
    v17 = sub_158DC();
    v18(v17);
    memcpy((v0 + 424), (v0 + 16), 0x81uLL);
    nullsub_1();
    sub_15804(v19, v0 + 960);
    v20 = sub_50AF4();
    v21 = sub_50BD4();
    sub_15874(v0 + 288);
    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 1304);
    v24 = *(v0 + 1296);
    v25 = *(v0 + 1288);
    if (v22)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v34[16] = v27;
      *v26 = 136315138;
      memcpy((v0 + 1088), v34, 0x80uLL);
      sub_2208(&qword_6C050, &qword_51E00);
      v28 = sub_50C14();
      v30 = sub_4DE68(v28, v29, &v34[16]);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_0, v20, v21, "Successfully retrieved organization info: %s", v26, 0xCu);
      sub_253C(v27);
      sub_5674(v27);
      sub_5674(v26);
    }

    (*(v24 + 8))(v23, v25);
    memcpy((v0 + 832), v34, 0x80uLL);
  }

  v31 = *(v0 + 1272);

  memcpy(v31, (v0 + 832), 0x80uLL);
  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_15804(uint64_t a1, uint64_t a2)
{
  v4 = sub_2208(&qword_6C050, &qword_51E00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_15874(uint64_t a1)
{
  v2 = sub_2208(&qword_6C5F0, qword_523A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_158F4()
{
  result = qword_6C5F8;
  if (!qword_6C5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C5F8);
  }

  return result;
}

unint64_t sub_1594C()
{
  result = qword_6C600;
  if (!qword_6C600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C600);
  }

  return result;
}

unint64_t sub_159D0()
{
  result = qword_6C608;
  if (!qword_6C608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C608);
  }

  return result;
}

unint64_t sub_15A28()
{
  result = qword_6C610;
  if (!qword_6C610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C610);
  }

  return result;
}

unint64_t sub_15AAC()
{
  result = qword_6C618;
  if (!qword_6C618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C618);
  }

  return result;
}

unint64_t sub_15B04()
{
  result = qword_6C620;
  if (!qword_6C620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C620);
  }

  return result;
}

unint64_t sub_15B88()
{
  result = qword_6C628;
  if (!qword_6C628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C628);
  }

  return result;
}

unint64_t sub_15BE0()
{
  result = qword_6C630;
  if (!qword_6C630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C630);
  }

  return result;
}

unint64_t sub_15C64()
{
  result = qword_6C638;
  if (!qword_6C638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C638);
  }

  return result;
}

unint64_t sub_15CBC()
{
  result = qword_6C640;
  if (!qword_6C640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C640);
  }

  return result;
}

uint64_t sub_15D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  v8 = a4(a1, a2, a3);
  v9 = a5();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v8, v9);
}

unint64_t sub_15DB0()
{
  result = qword_6C648;
  if (!qword_6C648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C648);
  }

  return result;
}

unint64_t sub_15E04()
{
  result = qword_6C650;
  if (!qword_6C650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C650);
  }

  return result;
}

unint64_t sub_15E58()
{
  result = qword_6C658;
  if (!qword_6C658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C658);
  }

  return result;
}

unint64_t sub_15EAC()
{
  result = qword_6C660;
  if (!qword_6C660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C660);
  }

  return result;
}

unint64_t sub_15F00()
{
  result = qword_6C668;
  if (!qword_6C668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C668);
  }

  return result;
}

unint64_t sub_15F54()
{
  result = qword_6C670;
  if (!qword_6C670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C670);
  }

  return result;
}

unint64_t sub_15FA8()
{
  result = qword_6C678;
  if (!qword_6C678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C678);
  }

  return result;
}

unint64_t sub_15FFC()
{
  result = qword_6C680;
  if (!qword_6C680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C680);
  }

  return result;
}

unint64_t sub_16050()
{
  result = qword_6C688;
  if (!qword_6C688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C688);
  }

  return result;
}

unint64_t sub_160A4()
{
  result = qword_6C690;
  if (!qword_6C690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C690);
  }

  return result;
}

void sub_160F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_13C8C();
  v196 = v20;
  v22 = v21;
  v23 = sub_50324();
  sub_8558();
  v202 = v24;
  __chkstk_darwin(v25);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v26);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v27);
  sub_13C5C();
  v29 = sub_EE14(v28);
  v30 = type metadata accessor for EmergencyNLIntent(v29);
  v31 = sub_72B0(v30);
  __chkstk_darwin(v31);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v32);
  sub_13C5C();
  sub_EE14(v33);
  v207 = sub_50654();
  sub_8558();
  v206 = v34;
  __chkstk_darwin(v35);
  sub_1A3A0();
  sub_EE14(v36);
  v37 = sub_503A4();
  v38 = sub_72B0(v37);
  __chkstk_darwin(v38);
  sub_1A3A0();
  sub_EE14(v39);
  v40 = sub_50A24();
  v41 = sub_72B0(v40);
  __chkstk_darwin(v41);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v42);
  sub_13C5C();
  sub_EE14(v43);
  v195 = sub_50354();
  sub_8558();
  v194 = v44;
  __chkstk_darwin(v45);
  sub_1A3A0();
  sub_EE14(v46);
  v204 = sub_50334();
  sub_8558();
  v210 = v47;
  __chkstk_darwin(v48);
  sub_1A3A0();
  v209 = v49;
  sub_13B48();
  v50 = sub_502E4();
  sub_8558();
  v52 = v51;
  __chkstk_darwin(v53);
  sub_5630();
  v56 = v55 - v54;
  v57 = sub_50B04();
  sub_8558();
  v59 = v58;
  __chkstk_darwin(v60);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v61);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v62);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v63);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v64);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v65);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v66);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v67);
  v69 = &v184 - v68;
  v70 = sub_50AE4();
  sub_2970();
  swift_beginAccess();
  v214 = v59;
  v71 = *(v59 + 16);
  v208 = v70;
  v211 = v71;
  v212 = v59 + 16;
  (v71)(v69, v70, v57);
  v72 = *(v52 + 16);
  v73 = v56;
  v74 = v56;
  v203 = v22;
  v75 = v50;
  v72(v74, v22, v50);
  v76 = sub_50AF4();
  v77 = sub_50BD4();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = sub_EFB0();
    v185 = v23;
    v79 = v78;
    v213 = sub_EFC8();
    v215[0] = v213;
    *v79 = 136315138;
    sub_1A318(&qword_6C078, 255, &type metadata accessor for Input, &protocol conformance descriptor for Input);
    v80 = v73;
    v81 = sub_50CD4();
    v82 = v57;
    v84 = v83;
    (*(v52 + 8))(v80, v75);
    v85 = sub_4DE68(v81, v84, v215);
    v57 = v82;
    v86 = v214;
    v87 = v202;

    *(v79 + 4) = v85;
    _os_log_impl(&dword_0, v76, v77, "#EmergencyOfferCallFlow onInput: %s", v79, 0xCu);
    v88 = v213;
    sub_253C(v213);
    sub_5674(v88);
    v89 = v79;
    v23 = v185;
    sub_5674(v89);

    v213 = *(v86 + 8);
    (v213)(v69, v82);
  }

  else
  {

    (*(v52 + 8))(v73, v75);
    v213 = *(v214 + 8);
    (v213)(v69, v57);
    v87 = v202;
  }

  v90 = v209;
  sub_502D4();
  v91 = v204;
  v92 = (*(v210 + 88))(v90, v204);
  if (v92 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v93 = sub_1A47C();
    v94(v93);
    (*(v206 + 32))(v205, v90, v207);
    sub_2970();
    swift_beginAccess();
    v95 = v199;
    sub_1A458();
    v96 = v211;
    v211();
    v97 = sub_50AF4();
    v98 = sub_50BD4();
    if (sub_EF00(v98))
    {
      v99 = sub_5718();
      sub_EEC8(v99);
      sub_EED4(&dword_0, v100, v101, "EmergencyOfferCallFlow onInput .NLv3IntentOnly");
      sub_EE58();
    }

    (v213)(v95, v57);
    v102 = v206;
    v103 = v200;
    v104 = v205;
    v105 = v207;
    (*(v206 + 16))(v200, v205, v207);
    sub_1A4D8();
    sub_1A264(v106, v107, v108);
    sub_23FCC();
    v110 = v109;
    sub_1A2C0(v103, type metadata accessor for EmergencyNLIntent);
    (*(v102 + 8))(v104, v105);
LABEL_8:
    v111 = v110 >> 8;
    if (v110 == 4 && BYTE1(v110) == 35)
    {
      sub_2970();
      swift_beginAccess();
      v112 = v197;
      sub_1A458();
      v96();
      v113 = sub_50AF4();
      v114 = sub_50BD4();
      if (sub_EF00(v114))
      {
        v115 = sub_5718();
        sub_EEC8(v115);
        sub_EED4(&dword_0, v116, v117, "#EmergencyOfferCallFlow Produced an empty intent. Ignoring input.");
        sub_EE58();
      }

      sub_1A464();
      v143 = v112;
      v144 = v57;
LABEL_30:
      (v213)(v143, v144);
      goto LABEL_42;
    }

    if ((v110 & 0x10000) != 0)
    {
      sub_2970();
      swift_beginAccess();
      v134 = v190;
      sub_1A458();
      v96();
      v135 = sub_50AF4();
      v136 = v57;
      v137 = sub_50BE4();
      if (sub_EF4C(v137))
      {
        v138 = sub_EFB0();
        v139 = sub_EFC8();
        v218 = v139;
        *v138 = 136315138;
        v216 = v110;
        v217 = 1;
        v140 = sub_50B64();
        v142 = sub_4DE68(v140, v141, &v218);

        *(v138 + 4) = v142;
        _os_log_impl(&dword_0, v135, v137, "#EmergencyOfferCallFlow Expected a non-DirectCall intent. Aborting flow. Intent: [%s]", v138, 0xCu);
        sub_253C(v139);
        sub_5674(v139);
        sub_5674(v138);
      }

      sub_1A464();
      v143 = v134;
      v144 = v136;
      goto LABEL_30;
    }

LABEL_38:
    v182 = v196;
    *(v196 + 218) = 0;
    *(v182 + 216) = v110 | (v111 << 8);
    goto LABEL_42;
  }

  if (v92 == enum case for Parse.directInvocation(_:))
  {
    v118 = sub_1A47C();
    v119(v118);
    v120 = v87;
    v121 = v23;
    (*(v87 + 32))(v201, v90, v23);
    sub_2970();
    swift_beginAccess();
    v122 = v193;
    sub_1A458();
    v211();
    v123 = sub_50AF4();
    v124 = sub_50BD4();
    if (sub_EF00(v124))
    {
      v125 = sub_5718();
      sub_EEC8(v125);
      sub_EED4(&dword_0, v126, v127, "EmergencyOfferCallFlow onInput .directInvocation");
      sub_EE58();
    }

    v128 = v214 + 8;
    (v213)(v122, v57);
    v129 = v201;
    v131 = sub_50304() == 0xD000000000000035 && 0x8000000000055140 == v130;
    v132 = v198;
    if (v131)
    {
    }

    else
    {
      v133 = sub_50CE4();

      if ((v133 & 1) == 0)
      {
LABEL_33:
        sub_2970();
        swift_beginAccess();
        sub_1A458();
        v211();
        v214 = v57;
        v159 = *(v120 + 16);
        v160 = v191;
        v159(v191, v129, v121);
        v161 = v132;
        v162 = sub_50AF4();
        v163 = sub_50BE4();
        if (sub_EF00(v163))
        {
          v164 = sub_EFB0();
          v165 = sub_EFC8();
          v218 = v165;
          *v164 = 136315138;
          v212 = v128;
          v159(v186, v160, v121);
          v166 = sub_50B64();
          v168 = v167;
          v169 = *(v120 + 8);
          v169(v160, v121);
          v170 = sub_4DE68(v166, v168, &v218);

          *(v164 + 4) = v170;
          _os_log_impl(&dword_0, v162, v161, "Failed to get emergencySituation from DirectInvocation: %s", v164, 0xCu);
          sub_253C(v165);
          sub_5674(v165);
          sub_5674(v164);

          (v213)(v198, v214);
          v169(v201, v121);
        }

        else
        {

          v183 = *(v120 + 8);
          v183(v160, v121);
          (v213)(v132, v214);
          v183(v129, v121);
        }

        goto LABEL_42;
      }
    }

    v158 = sub_2B6B0(v129);
    if (v158 != 35)
    {
      LOWORD(v111) = v158;
      (*(v120 + 8))(v129, v121);
      LOBYTE(v110) = 4;
      goto LABEL_38;
    }

    goto LABEL_33;
  }

  if (v92 == enum case for Parse.uso(_:))
  {
    v145 = sub_1A47C();
    v146(v145);
    v147 = v188;
    (*(v194 + 32))(v188, v90, v195);
    sub_2970();
    swift_beginAccess();
    sub_1A458();
    v96 = v211;
    v211();
    v148 = sub_50AF4();
    v149 = sub_50BD4();
    if (sub_EF00(v149))
    {
      v150 = sub_5718();
      sub_EEC8(v150);
      sub_EED4(&dword_0, v151, v152, "#EmergencyOfferCallFlow onInput .uso");
      sub_EE58();
    }

    sub_1A464();
    (v213)(v192, v57);
    sub_50344();
    v215[3] = &type metadata for EmergencyFeatureFlagsKey;
    v215[4] = sub_EB68();
    LOBYTE(v215[0]) = 2;
    sub_50374();
    sub_253C(v215);
    v153 = v189;
    sub_50A14();
    sub_1A4D8();
    sub_1A264(v154, v155, v156);
    sub_23CC8();
    v110 = v157;
    sub_1A2C0(v153, &type metadata accessor for EmergencyDialogAct);
    (*(v194 + 8))(v147, v195);
    goto LABEL_8;
  }

  sub_2970();
  swift_beginAccess();
  v171 = v187;
  sub_1A458();
  v211();
  v172 = sub_50AF4();
  v173 = sub_50BE4();
  if (os_log_type_enabled(v172, v173))
  {
    v174 = sub_EFB0();
    v175 = v57;
    v176 = sub_EFC8();
    v219 = v176;
    *v174 = 136315138;
    LOBYTE(v218) = 0;
    v177 = sub_50B64();
    v179 = sub_4DE68(v177, v178, &v219);

    *(v174 + 4) = v179;
    _os_log_impl(&dword_0, v172, v173, "%s", v174, 0xCu);
    sub_253C(v176);
    sub_5674(v176);
    sub_5674(v174);

    sub_1A464();
    v180 = v171;
    v181 = v175;
    v90 = v209;
  }

  else
  {

    sub_1A464();
    v180 = v171;
    v181 = v57;
  }

  (v213)(v180, v181);
  (*(v210 + 8))(v90, v91);
LABEL_42:
  sub_8A94();
}

uint64_t sub_17110()
{
  sub_EF64();
  v1[148] = v0;
  v1[147] = v2;
  v3 = sub_50B04();
  v1[149] = v3;
  v1[150] = *(v3 - 8);
  v1[151] = swift_task_alloc();
  v1[152] = swift_task_alloc();
  v1[153] = swift_task_alloc();
  v1[154] = swift_task_alloc();

  return _swift_task_switch(sub_171F4, 0, 0);
}

uint64_t sub_171F4(uint64_t a1)
{
  v2 = *(v1 + 1200);
  *(v1 + 1240) = sub_50AE4();
  sub_2970();
  swift_beginAccess();
  v3 = *(v2 + 16);
  *(v1 + 1248) = v3;
  *(v1 + 1256) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v4 = sub_1A4E4();
  v3(v4);
  v5 = sub_50AF4();
  v6 = sub_50BD4();
  if (sub_EF4C(v6))
  {
    v7 = sub_5718();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "#EmergencyOfferCallFlow execute", v7, 2u);
    sub_5674(v7);
  }

  v8 = *(v1 + 1232);
  v9 = *(v1 + 1200);
  v10 = *(v1 + 1192);
  v11 = *(v1 + 1184);

  v12 = *(v9 + 8);
  *(v1 + 1264) = v12;
  v12(v8, v10);
  v13 = *(v11 + 218);
  if (v13 == 2)
  {
    v14 = *(v1 + 1184);
    v15 = *(v1 + 1176);
    sub_E9D0();
    v16 = swift_allocError();
    *v17 = 2;
    sub_1D68(v16, v14 + 16, (v14 + 56), v15);

    goto LABEL_20;
  }

  if (v13 == 3)
  {
    sub_50194();
LABEL_20:
    sub_1A4F0();

    v35 = *(v1 + 8);

    return v35();
  }

  v18 = *(v11 + 216);
  if (HIBYTE(v18) == 35 && v18 == 4)
  {
LABEL_17:
    sub_2970();
    swift_beginAccess();
    v25 = sub_1A4E4();
    v3(v25);
    v26 = sub_50AF4();
    v27 = sub_50BE4();
    if (sub_EF4C(v27))
    {
      v28 = sub_5718();
      sub_EEC8(v28);
      sub_56D8(&dword_0, v29, v30, "#EmergencyOfferCallFlow Intent missing a situation or valid organization");
      sub_EE58();
    }

    v31 = *(v1 + 1208);
    v32 = *(v1 + 1192);
    v33 = *(v1 + 1184);

    v12(v31, v32);
    v34 = sub_1FE8((v33 + 56), *(v33 + 80));
    memcpy((v1 + 656), v34, 0x70uLL);
    sub_202C(v33 + 16, (v1 + 656));
    sub_50184();

    goto LABEL_20;
  }

  sub_87A8();
  if (!*(v1 + 944))
  {
    v22 = &qword_6C7A0;
    v23 = &unk_53C80;
    v24 = v1 + 920;
LABEL_16:
    sub_51C0(v24, v22, v23);
    goto LABEL_17;
  }

  sub_546C((v1 + 920), v1 + 880);
  sub_856C();
  if (!*(v1 + 1024))
  {
    sub_253C((v1 + 880));
    v22 = &unk_6C7A8;
    v23 = &unk_526E0;
    v24 = v1 + 1000;
    goto LABEL_16;
  }

  v19 = *(v1 + 1184);
  sub_546C((v1 + 1000), v1 + 960);
  v20 = swift_task_alloc();
  *(v1 + 1272) = v20;
  *v20 = v1;
  v20[1] = sub_175D0;

  return sub_15100(v1 + 400, v19 + 136, SHIBYTE(v18), v18);
}

uint64_t sub_175D0()
{
  sub_EF64();
  v1 = *v0;
  sub_EF2C();
  *v2 = v1;

  return _swift_task_switch(sub_176C0, 0, 0);
}

uint64_t sub_176C0()
{
  v40 = v0;
  memcpy(v0 + 34, v0 + 50, 0x80uLL);
  if (sub_E51C((v0 + 34)) == 1)
  {
    sub_1A3F4((v0[148] + 176), *(v0[148] + 200));
    sub_19284();
LABEL_7:
    sub_50184();

    goto LABEL_19;
  }

  v1 = v0[148];
  memcpy(v0 + 18, v0 + 34, 0x80uLL);
  memcpy(__dst, v0 + 34, sizeof(__dst));
  sub_1FE8((v1 + 16), *(v1 + 40));
  v2 = sub_1A3B4();
  v3(v2);
  sub_1FE8(v0 + 130, v0[133]);
  sub_1A3B4();
  v4 = sub_50044();
  sub_253C(v0 + 130);
  if (v4)
  {
    v5 = v0[156];
    sub_2970();
    swift_beginAccess();
    v6 = sub_1A48C();
    v5(v6);
    v7 = sub_50AF4();
    v8 = sub_50BE4();
    if (sub_EF4C(v8))
    {
      v9 = sub_5718();
      sub_EEC8(v9);
      sub_56D8(&dword_0, v10, v11, "#EmergencyOfferCallFlow Calling disabled on this device. Not offering a call");
      sub_EE58();
    }

    v12 = v0[158];
    v13 = v0[153];
    v14 = v0[149];
    v15 = v0[148];

    v12(v13, v14);
    sub_1A3F4((v15 + 176), *(v15 + 200));
    sub_19D70();
    sub_51C0((v0 + 50), &qword_6C050, &qword_51E00);
    goto LABEL_7;
  }

  if (sub_509A4())
  {
    sub_1A3F4((v0[148] + 176), *(v0[148] + 200));
    sub_17E7C();
  }

  else if (sub_509C4())
  {
    sub_1A3F4((v0[148] + 176), *(v0[148] + 200));
    sub_18988((v0 + 18), (v0 + 110), v16, v17, v18, v19, v20, v21, v38, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10]);
  }

  else
  {
    v22 = v0[31];
    if ((v22 & 0x2000000000000000) != 0)
    {
      v23 = HIBYTE(v22) & 0xF;
    }

    else
    {
      v23 = v0[30] & 0xFFFFFFFFFFFFLL;
    }

    if (!v23)
    {
      v26 = v0[156];
      sub_51C0((v0 + 50), &qword_6C050, &qword_51E00);
      sub_2970();
      swift_beginAccess();
      v27 = sub_1A48C();
      v26(v27);
      v28 = sub_50AF4();
      v29 = sub_50BE4();
      if (sub_EF4C(v29))
      {
        v30 = sub_5718();
        sub_EEC8(v30);
        sub_56D8(&dword_0, v31, v32, "#EmergencyOfferCallFlow OrgInfo had no usable info");
        sub_EE58();
      }

      v33 = v0[158];
      v34 = v0[152];
      v35 = v0[149];
      v36 = v0[148];

      v33(v34, v35);
      v37 = sub_1FE8((v36 + 56), *(v36 + 80));
      memcpy(v0 + 96, v37, 0x70uLL);
      sub_202C(v1 + 16, v0 + 96);
      goto LABEL_18;
    }

    sub_1A3F4((v0[148] + 176), *(v0[148] + 200));
    memcpy(v0 + 66, __dst, 0x80uLL);
    nullsub_1();
    memcpy(v0 + 2, v0 + 66, 0x80uLL);
    sub_19284();
  }

  sub_51C0((v0 + 50), &qword_6C050, &qword_51E00);
LABEL_18:

  sub_50184();

LABEL_19:
  sub_253C(v0 + 120);
  sub_253C(v0 + 110);
  sub_1A4F0();

  v24 = v0[1];

  return v24();
}

uint64_t sub_17AE0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EmergencyOfferCallFlow();
  sub_1A318(&qword_6C798, v2, type metadata accessor for EmergencyOfferCallFlow, &unk_52680);
  return sub_4FF14();
}

uint64_t sub_17B6C()
{
  sub_C840();

  return _swift_deallocClassInstance(v0, 219, 7);
}

uint64_t initializeBufferWithCopyOfBuffer for EmergencyOfferCallFlow.EmergencyOfferCallFlowState(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for EmergencyOfferCallFlow.EmergencyOfferCallFlowState(unsigned __int16 *a1, unsigned int a2)
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

  v6 = *(a1 + 2);
  if (v6 >= 2u && (v7 = (v6 & 0xFE) + 2147483646, (v7 & 0x7FFFFFFE) != 0))
  {
    return (v7 & 0x7FFFFFFE | v6 & 1u) - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for EmergencyOfferCallFlow.EmergencyOfferCallFlowState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 16776963) >> 24 == 255)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if ((a3 + 16776963) >> 24)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    *result = a2 - 253;
    *(result + 2) = (a2 - 253) >> 16;
    if (v4)
    {
      v5 = ((a2 - 253) >> 24) + 1;
      if (v4 == 2)
      {
        *(result + 3) = v5;
      }

      else
      {
        *(result + 3) = v5;
      }
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_13;
    }

    if (v4 == 2)
    {
      *(result + 3) = 0;
LABEL_13:
      if (!a2)
      {
        return result;
      }

LABEL_19:
      *(result + 2) = a2 + 3;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_19;
    }
  }

  return result;
}

uint64_t sub_17D08(uint64_t a1)
{
  v1 = *(a1 + 2);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_17D24(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    v2 = (a2 - 255) >> 16;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    LOBYTE(v2) = a2 + 1;
  }

  *(result + 2) = v2;
  return result;
}

uint64_t sub_17DA8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_CD54;

  return sub_17110();
}

uint64_t sub_17E44(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EmergencyOfferCallFlow();

  return sub_4FF64();
}

void sub_17E7C()
{
  sub_13C8C();
  v1 = v0;
  v3 = v2;
  memcpy(v125, v2, sizeof(v125));
  v96 = type metadata accessor for ConfirmationFlowConfigModel(0);
  sub_569C();
  __chkstk_darwin(v4);
  sub_1A3A0();
  v97 = v5;
  sub_13B48();
  v100 = sub_50884();
  sub_569C();
  __chkstk_darwin(v6);
  sub_1A3A0();
  v101 = v7;
  v8 = sub_2208(&qword_6B998, qword_51850);
  v9 = sub_72B0(v8);
  __chkstk_darwin(v9);
  sub_EE34();
  v95 = v10;
  sub_13B08();
  __chkstk_darwin(v11);
  v13 = &v93 - v12;
  v14 = sub_2208(&qword_6B988, &qword_530B0);
  v15 = sub_72B0(v14);
  __chkstk_darwin(v15);
  sub_EE34();
  v98 = v16;
  sub_13B08();
  __chkstk_darwin(v17);
  sub_13C5C();
  v99 = v18;
  sub_13B48();
  v19 = sub_50B04();
  sub_8558();
  v21 = v20;
  __chkstk_darwin(v22);
  sub_EE34();
  v94 = v23;
  sub_13B08();
  __chkstk_darwin(v24);
  v26 = &v93 - v25;
  sub_50804();
  sub_8558();
  v102 = v28;
  v103 = v27;
  __chkstk_darwin(v27);
  sub_5630();
  v31 = v30 - v29;

  v106 = v31;
  sub_2970();
  sub_507F4();
  sub_50744();
  swift_allocObject();
  sub_50734();
  v104 = v3;
  sub_2970();
  sub_50724();

  v105 = sub_50714();

  v32 = v0[3];
  v33 = v0[4];
  sub_1FE8(v1, v1[3]);
  (*(v33 + 8))(v123, v32, v33);
  sub_1A3F4(v123, v124);
  if (sub_500B4() & 1) != 0 || (sub_1A3F4(v123, v124), (sub_50044()))
  {
    v34 = sub_50AE4();
    sub_2970();
    swift_beginAccess();
    sub_1A470();
    v35(v26, v34, v19);
    v36 = sub_50AF4();
    v37 = sub_50BD4();
    if (sub_EF4C(v37))
    {
      v38 = sub_5718();
      *v38 = 0;
      sub_1A4BC(&dword_0, v39, v37, "#EmergencyOfferCallFlow Request made on device that doesn't support calling. Give supportive dialog.");
      sub_5674(v38);
    }

    (*(v21 + 8))(v26, v19);
    sub_1FE8(v1 + 5, v1[8]);
    v41 = v102;
    v40 = v103;
    sub_1A470();
    v42(v13, v106, v40);
    sub_13D50();
    sub_28E0(v43, v44, v45, v40);
    sub_1A3F4(v123, v124);

    v46 = sub_500B4();
    v47 = 0;
    if ((v46 & 1) == 0)
    {
      sub_1A3F4(v123, v124);
      v47 = sub_50044() ^ 1;
    }

    v48 = v99;
    sub_24CDC(v13, v105, v47 & 1);

    sub_51C0(v13, &qword_6B998, qword_51850);
    sub_1A160(v48, v98, &qword_6B988, &qword_530B0);
    sub_23BC(v1, &v116);
    sub_50994();
    v49 = v101;
    sub_50874();
    sub_1A388();
    sub_1A318(v50, 255, v51, &protocol conformance descriptor for OutputFlow);
    sub_4FF04();

    sub_1A370();
    sub_1A2C0(v49, v52);
    sub_51C0(v48, &qword_6B988, &qword_530B0);
    (*(v41 + 8))(v106, v40);
  }

  else
  {
    v53 = sub_50AE4();
    sub_2970();
    swift_beginAccess();
    sub_1A470();
    v54 = v94;
    v55(v94, v53, v19);
    v56 = sub_50AF4();
    v57 = sub_50BD4();
    if (sub_EF4C(v57))
    {
      v58 = sub_5718();
      *v58 = 0;
      sub_1A4BC(&dword_0, v59, v57, "#EmergencyOfferCallFlow Resource is available. Confirm before calling.");
      sub_5674(v58);
    }

    (*(v21 + 8))(v54, v19);
    sub_23BC(v1, &v116);
    sub_23BC((v1 + 5), &v119);
    memcpy(v121, v125, 0x80uLL);
    sub_1A058(v121);
    memcpy(v120, v121, sizeof(v120));
    sub_5484(v104, v115);
    sub_EA30();
    v60 = sub_4FF04();
    sub_EA84(&v116);
    sub_1FE8(v1 + 5, v1[8]);
    v61 = v103;
    v62 = v95;
    (*(v102 + 16))(v95, v106, v103);
    sub_13D50();
    sub_28E0(v63, v64, v65, v61);

    v66 = v97;
    sub_24EEC(v62);

    sub_51C0(v62, &qword_6B998, qword_51850);
    sub_1FE8(v1 + 5, v1[8]);
    v67 = v96;

    sub_250F0();

    *(v66 + v67[6]) = v60;
    *(v66 + v67[7]) = 2;
    *(v66 + v67[8]) = 0;
    *(v66 + v67[9]) = 1;
    sub_23BC(v1, v114);
    sub_23BC((v1 + 5), v113);
    sub_5260((v1 + 10), v111);
    sub_52BC(v113, v113[3]);
    v101 = &v93;
    sub_5620();
    __chkstk_darwin(v68);
    sub_5630();
    v70 = sub_1A4A4(v69);
    v71(v70);
    memcpy(v122, v60, sizeof(v122));
    v109 = v67;
    v110 = &off_66AB0;
    sub_530C(v108);
    sub_1A40C();
    sub_1A264(v66, v72, v73);
    v107[3] = &type metadata for EmergencyCATProvider;
    v107[4] = &off_66C88;
    sub_1A498();
    v107[0] = swift_allocObject();
    memcpy((v107[0] + 16), v122, 0x70uLL);
    type metadata accessor for EmergencyConfirmationFlow();
    v74 = swift_allocObject();
    sub_52BC(v108, v109);
    sub_5620();
    __chkstk_darwin(v75);
    sub_5630();
    v78 = v77 - v76;
    (*(v79 + 16))(v77 - v76);
    sub_52BC(v107, &type metadata for EmergencyCATProvider);
    sub_5620();
    __chkstk_darwin(v80);
    sub_5630();
    v83 = (v82 - v81);
    (*(v84 + 16))(v82 - v81);
    memcpy(v115, v83, 0x70uLL);
    v117 = v67;
    v118 = &off_66AB0;
    v85 = sub_530C(&v116);
    sub_1A0FC(v78, v85);
    *(v74 + 256) = &type metadata for EmergencyCATProvider;
    *(v74 + 264) = &off_66C88;
    sub_1A498();
    v86 = swift_allocObject();
    *(v74 + 232) = v86;
    memcpy((v86 + 16), v115, 0x70uLL);
    v87 = v104;
    memcpy((v74 + 24), v104, 0x80uLL);
    sub_546C(&v116, v74 + 152);
    sub_546C(v114, v74 + 192);
    v88 = v111[1];
    *(v74 + 272) = v111[0];
    *(v74 + 288) = v88;
    v89 = v112;
    *(v74 + 16) = 0;
    *(v74 + 312) = 0;
    *(v74 + 320) = 0;
    *(v74 + 304) = v89;
    sub_5484(v87, &v116);
    sub_253C(v107);
    sub_253C(v108);
    sub_253C(v113);
    *&v116 = v74;
    sub_1A440();
    sub_1A318(v90, 255, v91, &unk_516F8);
    sub_4FF04();

    sub_1A428();
    sub_1A2C0(v66, v92);
    (*(v102 + 8))(v106, v103);
  }

  sub_253C(v123);
  sub_8A94();
}

void sub_18988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_13C8C();
  v22 = v21;
  v24 = v23;
  v114 = sub_508C4();
  sub_569C();
  __chkstk_darwin(v25);
  sub_1A3A0();
  v113 = v26;
  v27 = sub_2208(&unk_6D680, &qword_515B0);
  sub_72B0(v27);
  sub_72A4();
  __chkstk_darwin(v28);
  sub_EE14(&v108 - v29);
  v116 = sub_4FD64();
  sub_8558();
  v112 = v30;
  __chkstk_darwin(v31);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v32);
  sub_13C5C();
  sub_EE14(v33);
  v117 = sub_50884();
  sub_569C();
  __chkstk_darwin(v34);
  sub_1A3A0();
  sub_EE14(v35);
  sub_50B04();
  sub_8558();
  v119 = v37;
  v120 = v36;
  __chkstk_darwin(v36);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v38);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v39);
  v41 = &v108 - v40;
  v42 = sub_2208(&qword_6B998, qword_51850);
  sub_72B0(v42);
  sub_72A4();
  __chkstk_darwin(v43);
  v45 = &v108 - v44;
  v46 = sub_2208(&qword_6B988, &qword_530B0);
  v47 = sub_72B0(v46);
  __chkstk_darwin(v47);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v48);
  sub_13C5C();
  v122 = v49;
  sub_13B48();
  v50 = sub_50804();
  sub_8558();
  v52 = v51;
  __chkstk_darwin(v53);
  sub_5630();
  v56 = v55 - v54;
  v124 = v20;
  v57 = sub_1A4E4();
  sub_1FE8(v57, v58);
  v59 = sub_1A3B4();
  v60(v59);
  v121 = v24;

  sub_1A48C();
  sub_2970();
  sub_507F4();
  v62 = v22[3];
  v61 = v22[4];
  sub_1FE8(v22, v62);
  v125 = v52;
  v63 = *(v52 + 16);
  v123 = v56;
  v63(v45, v56, v50);
  sub_13D50();
  v126 = v50;
  sub_28E0(v64, v65, v66, v50);
  sub_1A3F4(v128, v129);
  v67 = sub_500B4();
  v68 = 0;
  if ((v67 & 1) == 0)
  {
    sub_1A3F4(v128, v129);
    v68 = sub_50044() ^ 1;
  }

  v69 = v122;
  (*(v61 + 16))(v45, v68 & 1, v62, v61);
  sub_51C0(v45, &qword_6B998, qword_51850);
  v70 = v130;
  sub_1FE8(v128, v129);
  sub_1A3B4();
  if (sub_500D4() & 1) != 0 || (v70 = v130, sub_1FE8(v128, v129), sub_1A3B4(), (sub_500C4()) || (v70 = v130, sub_1FE8(v128, v129), sub_1A3B4(), (sub_500B4()) || (v70 = v130, sub_1FE8(v128, v129), sub_1A3B4(), (sub_500A4()))
  {
    v71 = sub_50AE4();
    sub_2970();
    swift_beginAccess();
    v73 = v119;
    v72 = v120;
    sub_1A470();
    v74(v41, v71, v72);
    v75 = sub_50AF4();
    v76 = sub_50BD4();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = sub_5718();
      sub_EEC8(v77);
      _os_log_impl(&dword_0, v75, v76, "#EmergencyOfferCallFlow Only website resource available on HomePod, ATV, Car, or Watch, offering call.", v70, 2u);
      sub_EE58();
    }

LABEL_9:

    (*(v73 + 8))(v41, v72);
    sub_1A4D8();
    sub_1A160(v78, v79, v80, v81);
    sub_23BC(v124, &v127);
    sub_50994();
    v82 = v118;
    sub_50874();
    sub_1A388();
    sub_1A318(v83, 255, v84, &protocol conformance descriptor for OutputFlow);
    sub_4FF04();
    sub_1A370();
    sub_1A2C0(v82, v85);
    goto LABEL_10;
  }

  v86 = v115;
  sub_50984();
  v87 = v116;
  v88 = sub_513C(v86, 1, v116);
  v73 = v119;
  v72 = v120;
  if (v88 == 1)
  {
    sub_51C0(v86, &unk_6D680, &qword_515B0);
    v89 = sub_50AE4();
    sub_2970();
    swift_beginAccess();
    sub_1A470();
    v41 = v109;
    v90(v109, v89, v72);
    v75 = sub_50AF4();
    v91 = sub_50BD4();
    if (sub_EF00(v91))
    {
      v92 = sub_5718();
      sub_EEC8(v92);
      sub_EED4(&dword_0, v93, v94, "#EmergencyOfferCallFlow Missing website resource. Offer supportive dialog.");
      sub_EE58();
    }

    goto LABEL_9;
  }

  v95 = v112;
  v96 = v111;
  (*(v112 + 32))(v111, v86, v87);
  v97 = sub_50AE4();
  sub_2970();
  swift_beginAccess();
  sub_1A470();
  v98 = v108;
  v99(v108, v97, v72);
  v100 = sub_50AF4();
  v101 = sub_50BD4();
  if (sub_EF00(v101))
  {
    v102 = sub_5718();
    sub_EEC8(v102);
    sub_EED4(&dword_0, v103, v104, "#EmergencyOfferCallFlow Only website resource available, launching website.");
    sub_EE58();
  }

  (*(v73 + 8))(v98, v72);
  sub_1FE8(v124, v124[3]);
  v105 = sub_1A3B4();
  v106(v105);
  (*(v95 + 16))(v110, v96, v87);
  v107 = v113;
  sub_2970();
  sub_508B4();
  sub_1A318(&qword_6C7B0, 255, &type metadata accessor for AppPunchOutFlow, &protocol conformance descriptor for AppPunchOutFlow);
  sub_4FF04();
  sub_1A2C0(v107, &type metadata accessor for AppPunchOutFlow);
  (*(v95 + 8))(v96, v87);
LABEL_10:
  sub_51C0(v69, &qword_6B988, &qword_530B0);
  (*(v125 + 8))(v123, v126);
  sub_253C(v128);
  sub_8A94();
}

void sub_19284()
{
  sub_13C8C();
  v1 = v0;
  v110 = v2;
  v4 = v3;
  v103 = type metadata accessor for ConfirmationFlowConfigModel(0);
  sub_569C();
  __chkstk_darwin(v5);
  sub_1A3A0();
  v104 = v6;
  sub_13B48();
  v109 = sub_50884();
  sub_569C();
  __chkstk_darwin(v7);
  sub_1A3A0();
  v108 = v8;
  sub_13B48();
  sub_50B04();
  sub_8558();
  v106 = v9;
  v107 = v10;
  __chkstk_darwin(v9);
  sub_EE34();
  v102 = v11;
  sub_13B08();
  __chkstk_darwin(v12);
  sub_13C5C();
  v105 = v13;
  v14 = sub_2208(&qword_6B998, qword_51850);
  sub_72B0(v14);
  sub_72A4();
  __chkstk_darwin(v15);
  v17 = &v100 - v16;
  v18 = sub_2208(&qword_6B988, &qword_530B0);
  v19 = sub_72B0(v18);
  v20 = __chkstk_darwin(v19);
  v22 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v25 = &v100 - v24;
  __chkstk_darwin(v23);
  v27 = &v100 - v26;
  v29 = v0[3];
  v28 = v0[4];
  sub_1FE8(v0, v29);
  (*(v28 + 8))(v124, v29, v28);
  memcpy(v125, v4, sizeof(v125));
  if (sub_E51C(v125) == 1)
  {
    v30 = v110[3];
    v31 = v110[4];
    sub_1A3F4(v110, v30);
    v32 = sub_50804();
    sub_28E0(v17, 1, 1, v32);
    (*(v31 + 24))(v17, v30, v31);
    sub_51C0(v17, &qword_6B998, qword_51850);
    sub_1A160(v25, v22, &qword_6B988, &qword_530B0);
    sub_23BC(v0, v126);
    v33 = v108;
    sub_50874();
    sub_1A388();
    sub_1A318(v34, 255, v35, &protocol conformance descriptor for OutputFlow);
    sub_4FF04();
    sub_1A370();
    sub_1A2C0(v33, v36);
    v37 = v25;
  }

  else
  {
    v101 = v25;
    memcpy(v126, v125, 0x80uLL);
    v38 = v110[3];
    v39 = v110[4];
    sub_1A3F4(v110, v38);
    v40 = v126[13];
    v41 = v4;
    v42 = v4;
    v43 = v126[12];
    sub_1A160(v42, v123, &qword_6C050, &qword_51E00);

    sub_2970();
    sub_507F4();
    sub_50804();
    sub_13D50();
    sub_28E0(v44, v45, v46, v47);
    (*(v39 + 24))(v17, v38, v39);
    sub_51C0(v17, &qword_6B998, qword_51850);
    sub_1A3C4();
    v48 = v27;
    if (sub_500D4())
    {
      goto LABEL_13;
    }

    sub_1A3C4();
    if (sub_500C4())
    {
      goto LABEL_13;
    }

    sub_1A3C4();
    if (sub_500B4())
    {
      goto LABEL_13;
    }

    sub_1A3C4();
    if (sub_500A4())
    {
      goto LABEL_13;
    }

    v49 = HIBYTE(v40) & 0xF;
    if ((v40 & 0x2000000000000000) == 0)
    {
      v49 = v43 & 0xFFFFFFFFFFFFLL;
    }

    if (!v49)
    {
LABEL_13:
      v89 = sub_50AE4();
      sub_2970();
      swift_beginAccess();
      v90 = v106;
      v91 = v107;
      v92 = v105;
      (*(v107 + 16))(v105, v89, v106);
      v93 = sub_50AF4();
      v94 = sub_50BD4();
      if (sub_EF4C(v94))
      {
        v95 = sub_5718();
        *v95 = 0;
        _os_log_impl(&dword_0, v93, v94, "#EmergencyOfferCallFlow No resource available on HomePod, ATV, Car, or Watch, offering call or websearch.", v95, 2u);
        sub_5674(v95);
      }

      (*(v91 + 8))(v92, v90);
      sub_1A160(v48, v101, &qword_6B988, &qword_530B0);
      sub_23BC(v1, v123);
      sub_50994();
      sub_51C0(v41, &qword_6C050, &qword_51E00);
      v96 = v108;
      sub_50874();
      sub_1A388();
      sub_1A318(v97, 255, v98, &protocol conformance descriptor for OutputFlow);
      sub_4FF04();
      sub_1A370();
      sub_1A2C0(v96, v99);
      v37 = v48;
    }

    else
    {
      v110 = v43;
      v50 = sub_50AE4();
      sub_2970();
      swift_beginAccess();
      v51 = v106;
      v52 = v102;
      (*(v107 + 16))(v102, v50, v106);
      v53 = sub_50AF4();
      v54 = sub_50BD4();
      v55 = v1;
      if (sub_EF4C(v54))
      {
        v56 = sub_5718();
        *v56 = 0;
        sub_1A4BC(&dword_0, v57, v54, "#EmergencyOfferCallFlow No resource available, offering punchout web search");
        sub_5674(v56);
      }

      (*(v107 + 8))(v52, v51);
      v58 = v55[3];
      v59 = v55[4];
      sub_1A3F4(v55, v58);
      v60 = *(v59 + 16);

      v60(&v123[2], v58, v59);
      v123[0] = v110;
      v123[1] = v40;
      sub_1A1BC();
      v61 = sub_4FF04();
      sub_1A210(v123);
      v62 = v27;
      v63 = v104;
      sub_1A160(v62, v104, &qword_6B988, &qword_530B0);
      sub_1FE8(v55 + 5, v55[8]);
      v64 = v103;

      sub_25110();

      *(v63 + v64[6]) = v61;
      *(v63 + v64[7]) = 4;
      *(v63 + v64[8]) = 1;
      *(v63 + v64[9]) = 1;
      sub_23BC(v55, v121);
      sub_23BC((v55 + 5), v120);
      sub_5260((v55 + 10), v118);
      sub_52BC(v120, v120[3]);
      v110 = &v100;
      sub_5620();
      __chkstk_darwin(v65);
      sub_5630();
      v67 = sub_1A4A4(v66);
      v68(v67);
      memcpy(v122, v61, sizeof(v122));
      v116 = v64;
      v117 = &off_66AB0;
      sub_530C(v115);
      sub_1A40C();
      sub_1A264(v63, v69, v70);
      v109 = v48;
      v114[3] = &type metadata for EmergencyCATProvider;
      v114[4] = &off_66C88;
      sub_1A498();
      v114[0] = swift_allocObject();
      memcpy((v114[0] + 16), v122, 0x70uLL);
      type metadata accessor for EmergencyConfirmationFlow();
      v71 = swift_allocObject();
      sub_52BC(v115, v116);
      sub_5620();
      __chkstk_darwin(v72);
      sub_5630();
      v75 = v74 - v73;
      (*(v76 + 16))(v74 - v73);
      sub_52BC(v114, &type metadata for EmergencyCATProvider);
      sub_5620();
      __chkstk_darwin(v77);
      sub_5630();
      v80 = (v79 - v78);
      (*(v81 + 16))(v79 - v78);
      memcpy(v123, v80, 0x70uLL);
      v112 = v64;
      v113 = &off_66AB0;
      v82 = sub_530C(&v111);
      sub_1A0FC(v75, v82);
      *(v71 + 256) = &type metadata for EmergencyCATProvider;
      *(v71 + 264) = &off_66C88;
      sub_1A498();
      v83 = swift_allocObject();
      *(v71 + 232) = v83;
      memcpy((v83 + 16), v123, 0x70uLL);
      memcpy((v71 + 24), v126, 0x80uLL);
      sub_546C(&v111, v71 + 152);
      sub_546C(v121, v71 + 192);
      v84 = v118[1];
      *(v71 + 272) = v118[0];
      *(v71 + 288) = v84;
      v85 = v119;
      *(v71 + 16) = 0;
      *(v71 + 312) = 0;
      *(v71 + 320) = 0;
      *(v71 + 304) = v85;
      sub_253C(v114);
      sub_253C(v115);
      sub_253C(v120);
      *&v121[0] = v71;
      sub_1A440();
      sub_1A318(v86, 255, v87, &unk_516F8);
      sub_4FF04();

      sub_1A428();
      sub_1A2C0(v63, v88);
      v37 = v109;
    }
  }

  sub_51C0(v37, &qword_6B988, &qword_530B0);
  sub_253C(v124);
  sub_8A94();
}

void sub_19D70()
{
  sub_13C8C();
  v2 = v1;
  v4 = v3;
  v32[2] = sub_50884();
  sub_569C();
  __chkstk_darwin(v5);
  sub_5630();
  v8 = v7 - v6;
  v9 = sub_2208(&qword_6B998, qword_51850);
  sub_72B0(v9);
  sub_72A4();
  __chkstk_darwin(v10);
  v12 = v32 - v11;
  v13 = sub_2208(&qword_6B988, &qword_530B0);
  v14 = sub_72B0(v13);
  v15 = __chkstk_darwin(v14);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v32 - v18;
  v20 = v2[3];
  v21 = v2[4];
  v32[0] = sub_1FE8(v2, v20);
  v32[1] = v4;

  sub_1A4E4();
  sub_2970();
  sub_507F4();
  sub_50804();
  sub_13D50();
  sub_28E0(v22, v23, v24, v25);
  v26 = v0[3];
  v27 = v0[4];
  sub_1FE8(v0, v26);
  (*(v27 + 8))(v33, v26, v27);
  sub_1A3F4(v33, v34);
  v28 = 0;
  if ((sub_500B4() & 1) == 0)
  {
    sub_1A3F4(v33, v34);
    v28 = sub_50044() ^ 1;
  }

  sub_253C(v33);
  (*(v21 + 8))(v12, v28 & 1, v20, v21);
  sub_51C0(v12, &qword_6B998, qword_51850);
  sub_1A160(v19, v17, &qword_6B988, &qword_530B0);
  sub_23BC(v0, v33);
  sub_50994();
  sub_50874();
  sub_1A388();
  sub_1A318(v29, 255, v30, &protocol conformance descriptor for OutputFlow);
  sub_4FF04();
  sub_1A370();
  sub_1A2C0(v8, v31);
  sub_51C0(v19, &qword_6B988, &qword_530B0);
  sub_8A94();
}

uint64_t sub_1A060()
{

  sub_1A498();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1A0FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmationFlowConfigModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A160(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_2208(a3, a4);
  sub_569C();
  v5 = sub_1A48C();
  v6(v5);
  return a2;
}

unint64_t sub_1A1BC()
{
  result = qword_6C7B8;
  if (!qword_6C7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C7B8);
  }

  return result;
}

uint64_t sub_1A264(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_569C();
  v4 = sub_1A48C();
  v5(v4);
  return a2;
}

uint64_t sub_1A2C0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_569C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1A318(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1A3C4()
{
  v1 = *(v0 + 616);
  sub_1FE8((v0 + 592), v1);
  return v1;
}

void sub_1A4BC(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t sub_1A4F0()
{
}

uint64_t sub_1A510(uint64_t a1)
{
  v2 = sub_50324();
  sub_8558();
  v149 = v3;
  __chkstk_darwin(v4);
  sub_5658();
  sub_EE04();
  __chkstk_darwin(v5);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v6);
  v154 = &v130 - v7;
  v148 = type metadata accessor for EmergencyNLIntent(0);
  sub_569C();
  __chkstk_darwin(v8);
  sub_1A3A0();
  sub_EE14(v9);
  v147 = sub_50654();
  sub_8558();
  v145 = v10;
  __chkstk_darwin(v11);
  sub_1A3A0();
  v159 = v12;
  v13 = sub_503A4();
  __chkstk_darwin(v13 - 8);
  sub_1A3A0();
  sub_EE14(v14);
  v141 = sub_50A24();
  sub_569C();
  __chkstk_darwin(v15);
  sub_1A3A0();
  sub_EE14(v16);
  v139 = sub_50354();
  sub_8558();
  v138 = v17;
  __chkstk_darwin(v18);
  sub_1A3A0();
  sub_EE14(v19);
  sub_50334();
  sub_8558();
  v155 = v21;
  v156 = v20;
  __chkstk_darwin(v20);
  sub_1A3A0();
  v153 = v22;
  v23 = sub_502E4();
  sub_8558();
  v25 = v24;
  __chkstk_darwin(v26);
  v28 = &v130 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_50B04();
  sub_8558();
  v31 = v30;
  __chkstk_darwin(v32);
  sub_5658();
  sub_EE04();
  __chkstk_darwin(v33);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v34);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v35);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v36);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v37);
  v39 = &v130 - v38;
  v40 = sub_50AE4();
  sub_56AC(v40, v163);
  v41 = *(v31 + 2);
  v152 = v40;
  v157 = v41;
  v158 = v31 + 16;
  v41(v39, v40, v29);
  v42 = *(v25 + 16);
  v151 = a1;
  v43 = v23;
  v42(v28, a1, v23);
  v44 = sub_50AF4();
  v45 = sub_50BD4();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v133 = v31;
    v47 = v46;
    v48 = swift_slowAlloc();
    v134 = v29;
    v132 = v48;
    v160[0] = v48;
    *v47 = 136315138;
    sub_1C1C4(&qword_6C078, 255, &type metadata accessor for Input, &protocol conformance descriptor for Input);
    v49 = sub_50CD4();
    v50 = v2;
    v52 = v51;
    (*(v25 + 8))(v28, v43);
    v53 = sub_4DE68(v49, v52, v160);
    v2 = v50;

    *(v47 + 4) = v53;
    _os_log_impl(&dword_0, v44, v45, "#OfflineFlow onInput: %s", v47, 0xCu);
    v54 = v132;
    sub_253C(v132);
    v29 = v134;
    sub_5674(v54);
    sub_5674(v47);

    v55 = v133;
    v56 = v133;
  }

  else
  {

    (*(v25 + 8))(v28, v43);
    v56 = v31;
    v55 = v31;
  }

  v57 = *(v56 + 1);
  v57(v39, v29);
  v58 = v153;
  sub_502D4();
  v59 = (*(v155 + 88))(v58, v156);
  v60 = v154;
  if (v59 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v61 = sub_1C22C();
    v62(v61);
    v63 = v145;
    v64 = v58;
    v65 = v147;
    v66 = (*(v145 + 32))(v159, v64, v147);
    sub_1C20C(v66, v160);
    v67 = v143;
    sub_1C23C();
    v68();
    v69 = sub_50AF4();
    v70 = sub_50BD4();
    if (sub_EF00(v70))
    {
      v71 = sub_5718();
      sub_EEC8(v71);
      sub_EED4(&dword_0, v72, v73, "#OfflineFlow onInput .NLv3IntentOnly");
      sub_5674(v44);
    }

    v57(v67, v29);
    v74 = v146;
    (*(v63 + 16))(v146, v159, v65);
    if (qword_6B5F8 != -1)
    {
      swift_once();
    }

    sub_1C1C4(&qword_6BD68, 255, type metadata accessor for EmergencyNLIntent, &unk_51ACC);
    sub_50524();
    v75 = v162;
    if (qword_6B608 != -1)
    {
      swift_once();
    }

    sub_50524();
    sub_EC1C(v74, type metadata accessor for EmergencyNLIntent);
    (*(v63 + 8))(v159, v65);
    v76 = v75 | (v162 << 8);
    goto LABEL_12;
  }

  if (v59 == enum case for Parse.directInvocation(_:))
  {
    v78 = sub_1C22C();
    v79(v78);
    (*(v149 + 32))(v60, v58, v2);
    v80 = v152;
    sub_56AC(v152, v160);
    v157(v144, v80, v29);
    v81 = sub_50AF4();
    v82 = sub_50BD4();
    if (sub_EF00(v82))
    {
      v83 = sub_5718();
      sub_EEC8(v83);
      sub_EED4(&dword_0, v84, v85, "#OfflineFlow onInput .directInvocation");
      sub_5674(v44);
    }

    v159 = v55 + 8;
    v57(v144, v29);
    if (sub_50304() == 0xD000000000000035 && 0x8000000000055140 == v86)
    {

      sub_1C260();
    }

    else
    {
      v88 = sub_50CE4();

      sub_1C260();
      if ((v88 & 1) == 0)
      {
LABEL_28:
        sub_56AC(v80, &v162);
        v157(v55, v80, v29);
        v106 = v149;
        v107 = *(v149 + 16);
        v107(0xD000000000000035, v60, v2);
        v108 = sub_50AF4();
        LODWORD(v158) = sub_50BE4();
        if (os_log_type_enabled(v108, v158))
        {
          v109 = swift_slowAlloc();
          v110 = swift_slowAlloc();
          v161 = v110;
          *v109 = 136315138;
          v107(v135, 0xD000000000000035, v2);
          v111 = sub_50B64();
          v113 = v112;
          v114 = v2;
          v131 = v2;
          v115 = *(v149 + 8);
          v115(0xD000000000000035, v114);
          v116 = sub_4DE68(v111, v113, &v161);

          *(v109 + 4) = v116;
          _os_log_impl(&dword_0, v108, v158, "Failed to get emergencySituation from DirectInvocation: %s", v109, 0xCu);
          sub_253C(v110);
          sub_5674(v110);
          sub_5674(v109);

          v117 = sub_1C24C();
          (v57)(v117);
          v115(v154, v131);
        }

        else
        {

          v128 = *(v106 + 8);
          v128(0xD000000000000035, v2);
          v129 = sub_1C24C();
          (v57)(v129);
          v128(v60, v2);
        }

        return 0;
      }
    }

    v105 = sub_2B6B0(v60);
    if (v105 != 35)
    {
      v127 = v105;
      (*(v149 + 8))(v60, v2);
      v76 = v127 | 0x400;
LABEL_12:
      *(v150 + 176) = v76;
      return 1;
    }

    goto LABEL_28;
  }

  if (v59 == enum case for Parse.uso(_:))
  {
    v89 = sub_1C22C();
    v90(v89);
    v91 = v138;
    v92 = v137;
    v93 = v58;
    v94 = v139;
    v95 = (*(v138 + 32))(v137, v93, v139);
    sub_1C20C(v95, &v162);
    sub_1C23C();
    v96();
    v97 = sub_50AF4();
    v98 = sub_50BD4();
    if (sub_EF00(v98))
    {
      v99 = sub_5718();
      sub_EEC8(v99);
      sub_EED4(&dword_0, v100, v101, "#OfflineFlow onInput .uso");
      sub_5674(v44);
    }

    v57(v142, v29);
    sub_50344();
    v160[3] = &type metadata for EmergencyFeatureFlagsKey;
    v160[4] = sub_EB68();
    LOBYTE(v160[0]) = 2;
    sub_50374();
    sub_253C(v160);
    v102 = v140;
    sub_50A14();
    (*(v91 + 8))(v92, v94);
    v103 = *(v102 + *(v141 + 24));
    v104 = *(v102 + *(v141 + 28));
    sub_EC1C(v102, &type metadata accessor for EmergencyDialogAct);
    v76 = v103 | (v104 << 8);
    goto LABEL_12;
  }

  sub_1C20C(v59, v160);
  v118 = v136;
  sub_1C23C();
  v119();
  v120 = sub_50AF4();
  v121 = sub_50BE4();
  if (os_log_type_enabled(v120, v121))
  {
    v122 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    v162 = v123;
    *v122 = 136315138;
    LOBYTE(v161) = 0;
    v124 = sub_50B64();
    v126 = sub_4DE68(v124, v125, &v162);
    v58 = v153;

    *(v122 + 4) = v126;
    _os_log_impl(&dword_0, v120, v121, "%s", v122, 0xCu);
    sub_253C(v123);
    sub_5674(v123);
    sub_5674(v122);
  }

  v57(v118, v29);
  (*(v155 + 8))(v58, v156);
  return 0;
}