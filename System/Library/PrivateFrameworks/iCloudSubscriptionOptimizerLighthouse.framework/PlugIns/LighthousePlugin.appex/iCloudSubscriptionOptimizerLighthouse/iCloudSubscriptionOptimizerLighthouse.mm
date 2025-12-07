uint64_t sub_100001528()
{
  v0 = sub_1000035F4();
  sub_100003070(v0, qword_10000C4B8);
  sub_100003038(v0, qword_10000C4B8);
  type metadata accessor for Plugin();
  sub_100001788(&qword_10000C430, &qword_100003C68);
  return sub_100003604();
}

id Plugin.perform(_:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_100001788(&qword_10000C3A0, &qword_100003C20);
  __chkstk_darwin();
  v6 = v17 - v5;
  sub_100003684();
  v7 = sub_1000035C4();
  swift_allocObject();
  v8 = sub_1000035B4();
  v17[4] = v7;
  v17[5] = &protocol witness table for CoreAnalyticsEventSink;
  v17[1] = v8;
  swift_allocObject();
  sub_100003674();
  sub_100003664();

  v9 = dispatch_semaphore_create(0);
  v10 = sub_100003724();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v2;
  v11[5] = a1;
  v11[6] = v9;
  v11[7] = ObjectType;
  v12 = v2;
  v13 = a1;
  v14 = v9;
  sub_100001D3C(0, 0, v6, &unk_100003C30, v11);

  sub_100003734();
  v15 = [objc_allocWithZone(MLRTrialTaskResult) init];

  return v15;
}

uint64_t sub_100001788(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000017D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a6;
  v8 = swift_task_alloc();
  *(v6 + 48) = v8;
  *v8 = v6;
  v8[1] = sub_10000187C;

  return sub_1000024E4(a5);
}

uint64_t sub_10000187C(void *a1)
{
  *(*v2 + 56) = v1;

  if (v1)
  {
    v4 = sub_1000019F8;
  }

  else
  {

    v4 = sub_100001998;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100001998()
{
  sub_100003744();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000019F8()
{
  if (qword_10000C4B0 != -1)
  {
    swift_once();
  }

  object = v0[3]._object;
  v2 = sub_1000035F4();
  sub_100003038(v2, qword_10000C4B8);
  sub_100003764(49);
  v0[1]._countAndFlagsBits = 0;
  v0[1]._object = 0xE000000000000000;
  v6._object = 0x8000000100004200;
  v6._countAndFlagsBits = 0xD00000000000002ELL;
  sub_1000036F4(v6);
  v0[2]._countAndFlagsBits = object;
  sub_100001788(&unk_10000C440, &qword_100003C88);
  sub_100003774();
  v7._countAndFlagsBits = 46;
  v7._object = 0xE100000000000000;
  sub_1000036F4(v7);
  sub_1000035E4(v0[1]);

  sub_100003744();
  v3 = v0->_object;

  return v3();
}

uint64_t sub_100001B60()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100001BB0()
{
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100001C48;

  return sub_1000017D0(v4, v5, v6, v7, v2, v3);
}

uint64_t sub_100001C48()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100001D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100001788(&qword_10000C3A0, &qword_100003C20);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_10000331C(a3, v24 - v9);
  v11 = sub_100003724();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10000338C(v10);
  }

  else
  {
    sub_100003714();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_100003704();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1000036E4() + 32;
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

      sub_10000338C(a3);

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

  sub_10000338C(a3);
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

uint64_t Plugin.performAsync(_:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000210C;

  return sub_1000024E4(a1);
}

uint64_t sub_10000210C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

id Plugin.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Plugin.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Plugin();
  return objc_msgSendSuper2(&v2, "init");
}

id Plugin.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for Plugin();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1000022F4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000023EC;

  return v6(a1);
}

uint64_t sub_1000023EC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000024E4(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_100003644();
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100002584, 0, 0);
}

id sub_100002584()
{
  v49 = v0;
  v1 = [*(v0 + 16) triClient];
  if (qword_10000C4B0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 16);
  v3 = sub_1000035F4();
  sub_100003038(v3, qword_10000C4B8);
  sub_100003764(41);

  v46._countAndFlagsBits = 0xD000000000000027;
  v46._object = 0x8000000100003FB0;
  v4 = [v2 triClient];
  v5 = [v4 description];
  v6 = sub_1000036D4();
  v8 = v7;

  v51._countAndFlagsBits = v6;
  v51._object = v8;
  sub_1000036F4(v51);

  v52._countAndFlagsBits = 0xD000000000000027;
  v52._object = 0x8000000100003FB0;
  sub_1000035D4(v52);

  [v1 refresh];
  v9 = sub_1000036C4();
  v10 = [v1 experimentIdentifiersWithNamespaceName:v9];

  if (v10)
  {
    sub_100003764(23);

    v11 = [v10 experimentId];
    v12 = sub_1000036D4();
    v45 = v1;
    v14 = v13;

    v53._countAndFlagsBits = v12;
    v53._object = v14;
    sub_1000036F4(v53);

    v54._countAndFlagsBits = 0xD000000000000015;
    v54._object = 0x8000000100004060;
    sub_1000035D4(v54);

    sub_100003764(22);

    v15 = [v10 treatmentId];
    v16 = sub_1000036D4();
    v18 = v17;

    v55._countAndFlagsBits = v16;
    v55._object = v18;
    sub_1000036F4(v55);

    v56._countAndFlagsBits = 0xD000000000000014;
    v56._object = 0x8000000100004080;
    sub_1000035D4(v56);

    sub_100003764(23);

    v46._countAndFlagsBits = 0xD000000000000015;
    v46._object = 0x80000001000040A0;
    *(v0 + 48) = [v10 deploymentId];
    v57._countAndFlagsBits = sub_100003784();
    sub_1000036F4(v57);

    sub_1000035D4(v46);

    *(swift_task_alloc() + 16) = v10;
    sub_1000031C4();
    sub_1000035A4();

    v19 = sub_1000036C4();
    v20 = sub_1000036C4();
    v21 = [v45 levelForFactor:v19 withNamespaceName:v20];

    if (v21)
    {
      result = [v21 fileValue];
      if (!result)
      {
        __break(1u);
        goto LABEL_22;
      }

      v23 = result;
      v24 = [result path];

      if (v24)
      {
        v44 = v21;
        v25 = sub_1000036D4();
        v27 = v26;

        strcpy(&v46, "Recipe path: ");
        HIWORD(v46._object) = -4864;
        v58._countAndFlagsBits = v25;
        v58._object = v27;
        sub_1000036F4(v58);
        sub_1000035D4(v46);

        v28 = sub_1000036C4();
        v29 = sub_1000036C4();
        v30 = [v45 levelForFactor:v28 withNamespaceName:v29];

        if (v30)
        {
          result = [v30 directoryValue];
          if (result)
          {
            v31 = result;
            v32 = [result path];

            v33 = *(v0 + 40);
            if (v32)
            {
              v34 = *(v0 + 32);
              v35 = sub_1000036D4();
              v37 = v36;

              strcpy(&v46, "Models path: ");
              HIWORD(v46._object) = -4864;
              v59._countAndFlagsBits = v35;
              v59._object = v37;
              sub_1000036F4(v59);
              sub_1000035D4(v46);

              sub_100003278(v33, v34);
              v47 = sub_100003694();
              v48 = &protocol witness table for RealBiomeManager;
              v46._countAndFlagsBits = swift_allocObject();
              v38 = [objc_opt_self() defaultManager];
              sub_1000036B4();
              swift_allocObject();
              v39 = sub_1000036A4();
              v33 = *(v0 + 40);
              v41 = (*(*v39 + 216))();
              sub_1000032DC(v41, v42);
              v43 = [objc_allocWithZone(MLRTrialTaskResult) init];
            }

            else
            {

              v64._countAndFlagsBits = 0xD000000000000041;
              v64._object = 0x80000001000041B0;
              sub_1000035E4(v64);
              v43 = [objc_allocWithZone(MLRTrialTaskResult) init];
            }

            goto LABEL_16;
          }

LABEL_22:
          __break(1u);
          return result;
        }

        v33 = *(v0 + 40);

        v63._countAndFlagsBits = 0xD000000000000047;
        v63._object = 0x8000000100004160;
        sub_1000035E4(v63);
        v43 = [objc_allocWithZone(MLRTrialTaskResult) init];
      }

      else
      {
        v33 = *(v0 + 40);
        v62._countAndFlagsBits = 0xD000000000000042;
        v62._object = 0x8000000100004110;
        sub_1000035E4(v62);
        v43 = [objc_allocWithZone(MLRTrialTaskResult) init];
      }
    }

    else
    {
      v33 = *(v0 + 40);
      v61._countAndFlagsBits = 0xD000000000000043;
      v61._object = 0x80000001000040C0;
      sub_1000035E4(v61);
      v43 = [objc_allocWithZone(MLRTrialTaskResult) init];
    }

LABEL_16:

    sub_10000321C(v33);
    goto LABEL_17;
  }

  v60._countAndFlagsBits = 0xD000000000000046;
  v60._object = 0x8000000100004010;
  sub_1000035E4(v60);
  v43 = [objc_allocWithZone(MLRTrialTaskResult) init];

LABEL_17:

  v40 = *(v0 + 8);

  return v40(v43);
}

void _s16LighthousePlugin0B0C4stopyyF_0()
{
  sub_100003654();
  v0 = [objc_opt_self() mainRunLoop];
  sub_100003754();

  if (qword_10000C4B0 != -1)
  {
    swift_once();
  }

  v1 = sub_1000035F4();
  sub_100003038(v1, qword_10000C4B8);
  sub_100003764(62);
  v2._object = 0x8000000100003F70;
  v2._countAndFlagsBits = 0xD000000000000035;
  sub_1000036F4(v2);
  sub_100003774();
  v3._countAndFlagsBits = 0x2E5D7363657320;
  v3._object = 0xE700000000000000;
  sub_1000036F4(v3);
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  sub_1000035E4(v4);

  exit(1);
}

uint64_t sub_100003038(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100003070(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1000030D4()
{
  v1 = *(v0 + 16);
  v2 = [v1 experimentId];
  sub_1000036D4();

  sub_100003634();
  v3 = [v1 treatmentId];
  sub_1000036D4();

  sub_100003614();
  [v1 deploymentId];
  sub_100003784();
  return sub_100003624();
}

unint64_t sub_1000031C4()
{
  result = qword_10000C438;
  if (!qword_10000C438)
  {
    sub_100003644();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C438);
  }

  return result;
}

uint64_t sub_10000321C(uint64_t a1)
{
  v2 = sub_100003644();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100003278(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003644();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000032DC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000331C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001788(&qword_10000C3A0, &qword_100003C20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000338C(uint64_t a1)
{
  v2 = sub_100001788(&qword_10000C3A0, &qword_100003C20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000033F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000035A0;

  return sub_1000022F4(a1, v4);
}

uint64_t sub_1000034AC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000034E4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100001C48;

  return sub_1000022F4(a1, v4);
}