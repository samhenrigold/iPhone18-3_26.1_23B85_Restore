uint64_t getEnumTagSinglePayload for MultitaskingAnimationState.MultitaskingFullScreenAppsAnimationState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MultitaskingAnimationState.MultitaskingFullScreenAppsAnimationState(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B028()
{
  result = qword_566E8;
  if (!qword_566E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_566E8);
  }

  return result;
}

unint64_t sub_1B0B0()
{
  result = qword_56700;
  if (!qword_56700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56700);
  }

  return result;
}

uint64_t sub_1B134(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_5674(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B18C()
{
  result = qword_56718;
  if (!qword_56718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56718);
  }

  return result;
}

unint64_t sub_1B1E0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_51DF8;
  v6._object = a2;
  v4 = sub_3D784(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1B22C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_51F00;
  v6._object = a2;
  v4 = sub_3D784(v3, v6);

  if (v4 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1B278(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_52070;
  v6._object = a2;
  v4 = sub_3D784(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1B2CC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1B30C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_5440;

  return sub_19954(a1, v4, v5, v6);
}

uint64_t sub_1B3C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1B41C()
{
  result = [objc_opt_self() standardUserDefaults];
  qword_56730 = result;
  return result;
}

void sub_1B458()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_3D4C4();
  v2 = [v0 initWithSuiteName:v1];

  qword_56738 = v2;
}

id sub_1B4C8()
{
  result = [objc_allocWithZone(type metadata accessor for MultitaskingAnalytics()) init];
  qword_572D0 = result;
  return result;
}

void *sub_1B4F8(uint64_t a1)
{
  sub_4FF4(&qword_56780, &qword_406B8);
  result = sub_3D754();
  v3 = result;
  v4 = 0;
  v25 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v24 = result + 8;
  if ((v9 & v5) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v4 << 6);
      v16 = (*(v25 + 48) + 16 * v15);
      v18 = *v16;
      v17 = v16[1];
      sub_1C18C(*(v25 + 56) + 40 * v15, v26);

      isa = sub_3D6A4().isa;
      result = sub_1C1E8(v26);
      *(v24 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v20 = (v3[6] + 16 * v15);
      *v20 = v18;
      v20[1] = v17;
      *(v3[7] + 8 * v15) = isa;
      v21 = v3[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        break;
      }

      v3[2] = v23;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return v3;
      }

      v14 = *(v6 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

Class sub_1B684(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_1C140();
    v4.super.isa = sub_3D474().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

id sub_1B750(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MultitaskingAnalytics();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1B7AC(unsigned __int8 a1)
{
  v1 = a1;
  if (a1 <= 3u)
  {
    v10 = 0xEC000000676E696BLL;
    v11 = 0x73617469746C756DLL;
    v12 = 0x8000000000043740;
    v13 = 0xD000000000000012;
    if (a1 != 2)
    {
      v13 = 0x69746375646F7270;
      v12 = 0xEC00000079746976;
    }

    if (a1)
    {
      v11 = 0xD000000000000014;
      v10 = 0x8000000000043760;
    }

    if (a1 <= 1u)
    {
      v8._countAndFlagsBits = v11;
    }

    else
    {
      v8._countAndFlagsBits = v13;
    }

    if (v1 <= 1)
    {
      v9 = v10;
    }

    else
    {
      v9 = v12;
    }
  }

  else
  {
    v2 = 0x8000000000043700;
    v3 = 0xD000000000000017;
    v4 = 0x80000000000436E0;
    v5 = 0xD000000000000018;
    if (a1 != 7)
    {
      v5 = 0xD000000000000010;
      v4 = 0x8000000000043660;
    }

    if (a1 != 6)
    {
      v3 = v5;
      v2 = v4;
    }

    v6 = 0xEB000000006F646ELL;
    v7 = 0x556F54656B616873;
    if (a1 != 4)
    {
      v7 = 0xD000000000000015;
      v6 = 0x8000000000043720;
    }

    if (a1 <= 5u)
    {
      v8._countAndFlagsBits = v7;
    }

    else
    {
      v8._countAndFlagsBits = v3;
    }

    if (v1 <= 5)
    {
      v9 = v6;
    }

    else
    {
      v9 = v2;
    }
  }

  v8._object = v9;
  sub_3D534(v8);

  if (qword_55990 != -1)
  {
    swift_once();
  }

  v14 = qword_56730;
  v15 = sub_3D4C4();
  v16 = [v14 BOOLForKey:{v15, 0xD00000000000001FLL, 0x80000000000437F0}];

  v17 = sub_3D4C4();

  [v14 setBool:1 forKey:v17];

  return v16 ^ 1;
}

uint64_t sub_1B9E0()
{
  if (qword_55998 != -1)
  {
    swift_once();
  }

  v0 = qword_56738;
  if (!qword_56738)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_14:
    sub_526C(&v8);
    return 0;
  }

  v1 = sub_3D4C4();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_3D674();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
    goto LABEL_14;
  }

  sub_4FF4(&qword_56790, &unk_406D0);
  if (swift_dynamicCast())
  {
    if (*(v6 + 16) && (v3 = sub_20C68(0x646C696863, 0xE500000000000000), (v4 & 1) != 0))
    {
      sub_1C2AC(*(v6 + 56) + 32 * v3, &v8);

      if (swift_dynamicCast())
      {
        return v6;
      }
    }

    else
    {
    }
  }

  return 0;
}

unint64_t sub_1BB7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_4FF4(&qword_56788, &unk_406C0);
    v3 = sub_3D764();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C23C(v4, &v16);
      v5 = v16;
      v6 = v17;
      result = sub_20C68(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
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

void sub_1BCA0(unsigned __int8 a1, char a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1B7AC(a1);
  sub_4FF4(&qword_56768, &qword_406A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_40670;
  strcpy((inited + 32), "child_account");
  *(inited + 46) = -4864;
  sub_1B9E0();
  sub_3D6D4();
  strcpy((inited + 88), "first_update");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  LOBYTE(v12[0]) = v6 & 1;
  sub_3D6D4();
  *(inited + 144) = 0x6C69705F6D6F7266;
  *(inited + 152) = 0xE90000000000006CLL;
  if (a4 && (a3 != 0xD000000000000032 || 0x8000000000043780 != a4))
  {
    sub_3D804();
  }

  sub_3D6D4();
  *(inited + 200) = 0x65727574736567;
  *(inited + 208) = 0xE700000000000000;
  sub_3D6D4();
  *(inited + 256) = 0x5F65727574736567;
  *(inited + 264) = 0xEA00000000006E6FLL;
  sub_3D6D4();
  v8 = sub_1BB7C(inited);
  swift_setDeallocating();
  sub_4FF4(&qword_56770, &qword_406B0);
  swift_arrayDestroy();
  v9 = sub_3D4C4();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  v12[4] = sub_1C120;
  v12[5] = v10;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1B684;
  v12[3] = &unk_52F58;
  v11 = _Block_copy(v12);

  AnalyticsSendEventLazy();
  _Block_release(v11);
}

uint64_t sub_1C0E8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1C128(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1C140()
{
  result = qword_56778;
  if (!qword_56778)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_56778);
  }

  return result;
}

uint64_t sub_1C23C(uint64_t a1, uint64_t a2)
{
  v4 = sub_4FF4(&qword_56770, &qword_406B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1C308(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = [objc_allocWithZone(SBSSettingsWindowingTelemetryPersonalizationMetrics) initWithPreviousMultitaskingMode:a1 + 1 currentMultitaskingMode:a2 + 1];
  if (v2)
  {
    v3 = v2;
    [v2 emit];
  }

  else
  {
    __break(1u);
  }
}

void sub_1C380(unsigned __int8 a1)
{
  if (qword_55998 != -1)
  {
    swift_once();
  }

  v1 = qword_56738;
  if (qword_56738)
  {
    v2 = sub_3D4C4();
    [v1 BOOLForKey:v2];

    v3 = sub_3D4C4();
    [v1 BOOLForKey:v3];
  }

  if (qword_55990 != -1)
  {
    swift_once();
  }

  v4 = qword_56730;
  v5 = sub_3D4C4();
  [v4 BOOLForKey:v5];

  v6 = sub_3D4C4();
  [v4 setBool:1 forKey:v6];

  sub_4FF4(&qword_56768, &qword_406A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_40680;
  *(inited + 32) = 0x65735F7964647562;
  *(inited + 40) = 0xEB00000000707574;
  sub_3D6D4();
  *(inited + 88) = 0xD00000000000001CLL;
  *(inited + 96) = 0x8000000000043840;
  sub_3D6D4();
  strcpy((inited + 144), "child_account");
  *(inited + 158) = -4864;
  sub_1B9E0();
  sub_3D6D4();
  strcpy((inited + 200), "first_update");
  *(inited + 213) = 0;
  *(inited + 214) = -5120;
  sub_3D6D4();
  *(inited + 256) = 0xD000000000000013;
  *(inited + 264) = 0x8000000000043860;
  sub_3D6D4();
  *(inited + 312) = 0x656372756F73;
  *(inited + 320) = 0xE600000000000000;
  sub_3D6D4();
  v8 = sub_1BB7C(inited);
  swift_setDeallocating();
  sub_4FF4(&qword_56770, &qword_406B0);
  swift_arrayDestroy();
  v9 = sub_3D4C4();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  v12[4] = sub_1C85C;
  v12[5] = v10;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1B684;
  v12[3] = &unk_52FA8;
  v11 = _Block_copy(v12);

  AnalyticsSendEventLazy();
  _Block_release(v11);
}

uint64_t sub_1C864(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = sub_3D564();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[13] = v4;
  v3[14] = v6;

  return _swift_task_switch(sub_1C8F8, v4, v6);
}

uint64_t sub_1C8F8()
{
  v0[15] = sub_4FF4(&qword_55B48, &unk_3EB80);
  v1 = sub_3D7C4();
  if (v1 < 1)
  {
    sub_3D7D4();
    v0[19] = sub_3D7B4();
    sub_4FF4(&qword_55B28, &unk_3EB60);
    sub_56BC(&qword_56858, &qword_55B28, &unk_3EB60, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
    v6 = swift_task_alloc();
    v0[20] = v6;
    *v6 = v0;
    v6[1] = sub_1CC24;
    v3 = v0[10];
    v4 = v0[11];
    v5 = v0 + 21;
  }

  else
  {
    v0[16] = v1;
    v0[17] = sub_3D7B4();
    sub_4FF4(&qword_55B28, &unk_3EB60);
    sub_56BC(&qword_56858, &qword_55B28, &unk_3EB60, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
    v2 = swift_task_alloc();
    v0[18] = v2;
    *v2 = v0;
    v2[1] = sub_1CAFC;
    v3 = v0[10];
    v4 = v0[11];
    v5 = (v0 + 169);
  }

  return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v5, v3, v4);
}

uint64_t sub_1CAFC()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_1FF34;
  }

  else
  {
    (*(v2 + 136))();
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_1CD4C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1CC24()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_1FF2C;
  }

  else
  {
    (*(v2 + 152))();
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_1FF38;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1CD4C()
{
  v1 = v0 + 169;
  if (*(v0 + 169) == 2)
  {
    sub_3D7D4();
    v2 = *(v0 + 8);

    return v2(2);
  }

  else
  {
    v4 = *(v0 + 128);
    v5 = v4 <= 1;
    v6 = v4 - 1;
    if (v5)
    {
      v1 = v0 + 168;
      sub_3D7D4();
      *(v0 + 152) = sub_3D7B4();
      sub_4FF4(&qword_55B28, &unk_3EB60);
      sub_56BC(&qword_56858, &qword_55B28, &unk_3EB60, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
      v7 = swift_task_alloc();
      *(v0 + 160) = v7;
      *v7 = v0;
      v8 = sub_1CC24;
    }

    else
    {
      *(v0 + 128) = v6;
      *(v0 + 136) = sub_3D7B4();
      sub_4FF4(&qword_55B28, &unk_3EB60);
      sub_56BC(&qword_56858, &qword_55B28, &unk_3EB60, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
      v7 = swift_task_alloc();
      *(v0 + 144) = v7;
      *v7 = v0;
      v8 = sub_1CAFC;
    }

    v7[1] = v8;
    v9 = *(v0 + 80);
    v10 = *(v0 + 88);

    return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v1, v9, v10);
  }
}

uint64_t sub_1CF94(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = sub_3D564();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[13] = v4;
  v3[14] = v6;

  return _swift_task_switch(sub_1D028, v4, v6);
}

uint64_t sub_1D028()
{
  v0[15] = sub_4FF4(&qword_55B10, &unk_3E4B0);
  v1 = sub_3D7C4();
  if (v1 < 1)
  {
    sub_3D7D4();
    v0[19] = sub_3D7B4();
    sub_4FF4(&qword_55AF0, &qword_3E490);
    sub_56BC(&qword_56860, &qword_55AF0, &qword_3E490, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
    v6 = swift_task_alloc();
    v0[20] = v6;
    *v6 = v0;
    v6[1] = sub_1CC24;
    v3 = v0[10];
    v4 = v0[11];
    v5 = v0 + 21;
  }

  else
  {
    v0[16] = v1;
    v0[17] = sub_3D7B4();
    sub_4FF4(&qword_55AF0, &qword_3E490);
    sub_56BC(&qword_56860, &qword_55AF0, &qword_3E490, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
    v2 = swift_task_alloc();
    v0[18] = v2;
    *v2 = v0;
    v2[1] = sub_1D22C;
    v3 = v0[10];
    v4 = v0[11];
    v5 = (v0 + 169);
  }

  return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v5, v3, v4);
}

uint64_t sub_1D22C()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_1FF34;
  }

  else
  {
    (*(v2 + 136))();
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_1D354;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1D354()
{
  v1 = v0 + 169;
  if (*(v0 + 169) == 3)
  {
    sub_3D7D4();
    v2 = *(v0 + 8);

    return v2(3);
  }

  else
  {
    v4 = *(v0 + 128);
    v5 = v4 <= 1;
    v6 = v4 - 1;
    if (v5)
    {
      v1 = v0 + 168;
      sub_3D7D4();
      *(v0 + 152) = sub_3D7B4();
      sub_4FF4(&qword_55AF0, &qword_3E490);
      sub_56BC(&qword_56860, &qword_55AF0, &qword_3E490, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
      v7 = swift_task_alloc();
      *(v0 + 160) = v7;
      *v7 = v0;
      v8 = sub_1CC24;
    }

    else
    {
      *(v0 + 128) = v6;
      *(v0 + 136) = sub_3D7B4();
      sub_4FF4(&qword_55AF0, &qword_3E490);
      sub_56BC(&qword_56860, &qword_55AF0, &qword_3E490, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
      v7 = swift_task_alloc();
      *(v0 + 144) = v7;
      *v7 = v0;
      v8 = sub_1D22C;
    }

    v7[1] = v8;
    v9 = *(v0 + 80);
    v10 = *(v0 + 88);

    return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v1, v9, v10);
  }
}

uint64_t sub_1D59C(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = sub_3D564();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[13] = v4;
  v3[14] = v6;

  return _swift_task_switch(sub_1D630, v4, v6);
}

uint64_t sub_1D630()
{
  v0[15] = sub_4FF4(&qword_55D78, &qword_3EBA8);
  v1 = sub_3D7C4();
  if (v1 < 1)
  {
    sub_3D7D4();
    v0[19] = sub_3D7B4();
    sub_4FF4(&qword_55D58, &qword_407E0);
    sub_56BC(&qword_56898, &qword_55D58, &qword_407E0, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
    v6 = swift_task_alloc();
    v0[20] = v6;
    *v6 = v0;
    v6[1] = sub_1D95C;
    v3 = v0[10];
    v4 = v0[11];
    v5 = v0 + 21;
  }

  else
  {
    v0[16] = v1;
    v0[17] = sub_3D7B4();
    sub_4FF4(&qword_55D58, &qword_407E0);
    sub_56BC(&qword_56898, &qword_55D58, &qword_407E0, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
    v2 = swift_task_alloc();
    v0[18] = v2;
    *v2 = v0;
    v2[1] = sub_1D834;
    v3 = v0[10];
    v4 = v0[11];
    v5 = (v0 + 169);
  }

  return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v5, v3, v4);
}

uint64_t sub_1D834()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_1DCCC;
  }

  else
  {
    (*(v2 + 136))();
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_1DA84;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1D95C()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_1DD5C;
  }

  else
  {
    (*(v2 + 152))();
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_1DD40;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1DA84()
{
  v1 = v0 + 169;
  if (*(v0 + 169) == 3)
  {
    sub_3D7D4();
    v2 = *(v0 + 8);

    return v2(3);
  }

  else
  {
    v4 = *(v0 + 128);
    v5 = v4 <= 1;
    v6 = v4 - 1;
    if (v5)
    {
      v1 = v0 + 168;
      sub_3D7D4();
      *(v0 + 152) = sub_3D7B4();
      sub_4FF4(&qword_55D58, &qword_407E0);
      sub_56BC(&qword_56898, &qword_55D58, &qword_407E0, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
      v7 = swift_task_alloc();
      *(v0 + 160) = v7;
      *v7 = v0;
      v8 = sub_1D95C;
    }

    else
    {
      *(v0 + 128) = v6;
      *(v0 + 136) = sub_3D7B4();
      sub_4FF4(&qword_55D58, &qword_407E0);
      sub_56BC(&qword_56898, &qword_55D58, &qword_407E0, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
      v7 = swift_task_alloc();
      *(v0 + 144) = v7;
      *v7 = v0;
      v8 = sub_1D834;
    }

    v7[1] = v8;
    v9 = *(v0 + 80);
    v10 = *(v0 + 88);

    return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v1, v9, v10);
  }
}

uint64_t sub_1DCCC()
{
  (*(v0 + 136))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DD5C()
{
  (*(v0 + 152))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DDD0(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = sub_3D564();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[13] = v4;
  v3[14] = v6;

  return _swift_task_switch(sub_1DE64, v4, v6);
}

uint64_t sub_1DE64()
{
  v0[15] = sub_4FF4(&qword_56880, &qword_407C0);
  v1 = sub_3D7C4();
  if (v1 < 1)
  {
    sub_3D7D4();
    v0[19] = sub_3D7B4();
    sub_4FF4(&qword_56888, &qword_407C8);
    sub_56BC(&qword_56890, &qword_56888, &qword_407C8, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
    v6 = swift_task_alloc();
    v0[20] = v6;
    *v6 = v0;
    v6[1] = sub_1CC24;
    v3 = v0[10];
    v4 = v0[11];
    v5 = v0 + 21;
  }

  else
  {
    v0[16] = v1;
    v0[17] = sub_3D7B4();
    sub_4FF4(&qword_56888, &qword_407C8);
    sub_56BC(&qword_56890, &qword_56888, &qword_407C8, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
    v2 = swift_task_alloc();
    v0[18] = v2;
    *v2 = v0;
    v2[1] = sub_1E068;
    v3 = v0[10];
    v4 = v0[11];
    v5 = (v0 + 169);
  }

  return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v5, v3, v4);
}

uint64_t sub_1E068()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_1FF34;
  }

  else
  {
    (*(v2 + 136))();
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_1E190;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1E190()
{
  v1 = v0 + 169;
  if (*(v0 + 169) == 4)
  {
    sub_3D7D4();
    v2 = *(v0 + 8);

    return v2(4);
  }

  else
  {
    v4 = *(v0 + 128);
    v5 = v4 <= 1;
    v6 = v4 - 1;
    if (v5)
    {
      v1 = v0 + 168;
      sub_3D7D4();
      *(v0 + 152) = sub_3D7B4();
      sub_4FF4(&qword_56888, &qword_407C8);
      sub_56BC(&qword_56890, &qword_56888, &qword_407C8, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
      v7 = swift_task_alloc();
      *(v0 + 160) = v7;
      *v7 = v0;
      v8 = sub_1CC24;
    }

    else
    {
      *(v0 + 128) = v6;
      *(v0 + 136) = sub_3D7B4();
      sub_4FF4(&qword_56888, &qword_407C8);
      sub_56BC(&qword_56890, &qword_56888, &qword_407C8, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
      v7 = swift_task_alloc();
      *(v0 + 144) = v7;
      *v7 = v0;
      v8 = sub_1E068;
    }

    v7[1] = v8;
    v9 = *(v0 + 80);
    v10 = *(v0 + 88);

    return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v1, v9, v10);
  }
}

uint64_t sub_1E3D8(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = sub_3D564();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[13] = v4;
  v3[14] = v6;

  return _swift_task_switch(sub_1E46C, v4, v6);
}

uint64_t sub_1E46C()
{
  v0[15] = sub_4FF4(&qword_56868, &qword_41D70);
  v1 = sub_3D7C4();
  if (v1 < 1)
  {
    sub_3D7D4();
    v0[19] = sub_3D7B4();
    sub_4FF4(&qword_56870, &qword_407B0);
    sub_56BC(&qword_56878, &qword_56870, &qword_407B0, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
    v6 = swift_task_alloc();
    v0[20] = v6;
    *v6 = v0;
    v6[1] = sub_1CC24;
    v3 = v0[10];
    v4 = v0[11];
    v5 = v0 + 21;
  }

  else
  {
    v0[16] = v1;
    v0[17] = sub_3D7B4();
    sub_4FF4(&qword_56870, &qword_407B0);
    sub_56BC(&qword_56878, &qword_56870, &qword_407B0, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
    v2 = swift_task_alloc();
    v0[18] = v2;
    *v2 = v0;
    v2[1] = sub_1E670;
    v3 = v0[10];
    v4 = v0[11];
    v5 = (v0 + 169);
  }

  return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v5, v3, v4);
}

uint64_t sub_1E670()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_1FF34;
  }

  else
  {
    (*(v2 + 136))();
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_1E798;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1E798()
{
  v1 = v0 + 169;
  if (*(v0 + 169) == 2)
  {
    sub_3D7D4();
    v2 = *(v0 + 8);

    return v2(2);
  }

  else
  {
    v4 = *(v0 + 128);
    v5 = v4 <= 1;
    v6 = v4 - 1;
    if (v5)
    {
      v1 = v0 + 168;
      sub_3D7D4();
      *(v0 + 152) = sub_3D7B4();
      sub_4FF4(&qword_56870, &qword_407B0);
      sub_56BC(&qword_56878, &qword_56870, &qword_407B0, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
      v7 = swift_task_alloc();
      *(v0 + 160) = v7;
      *v7 = v0;
      v8 = sub_1CC24;
    }

    else
    {
      *(v0 + 128) = v6;
      *(v0 + 136) = sub_3D7B4();
      sub_4FF4(&qword_56870, &qword_407B0);
      sub_56BC(&qword_56878, &qword_56870, &qword_407B0, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
      v7 = swift_task_alloc();
      *(v0 + 144) = v7;
      *v7 = v0;
      v8 = sub_1E670;
    }

    v7[1] = v8;
    v9 = *(v0 + 80);
    v10 = *(v0 + 88);

    return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v1, v9, v10);
  }
}

uint64_t sub_1E9E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_4FF4(&qword_55AC8, &qword_3E440);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1FD0C(a3, v25 - v10);
  v12 = sub_3D5B4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_11A14(v11, &qword_55AC8, &qword_3E440);
  }

  else
  {
    sub_3D5A4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_3D564();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_3D514() + 32;
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

      sub_11A14(a3, &qword_55AC8, &qword_3E440);

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

  sub_11A14(a3, &qword_55AC8, &qword_3E440);
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

uint64_t sub_1ECD0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  return v1;
}

uint64_t sub_1ED44()
{
  v1 = v0;
  v2 = sub_4FF4(&qword_55AC8, &qword_3E440);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_4FF4(&qword_55AD8, &unk_3E450);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-v7];
  v9 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings36SwipeToRevealMenuBarSectionViewModel__swipeToRevealMenuBarGesturesEnabled;
  v15[15] = sub_1FAF8() & 1;
  sub_3C874();
  (*(v6 + 32))(v1 + v9, v8, v5);
  v10 = (v1 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings36SwipeToRevealMenuBarSectionViewModel_referrer);
  v11 = sub_3D5B4();
  *v10 = 0;
  v10[1] = 0;
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  sub_3D594();

  v12 = sub_3D584();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v1;
  sub_1E9E0(0, 0, v4, &unk_40760, v13);

  return v1;
}

uint64_t sub_1EF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_4FF4(&qword_55B28, &unk_3EB60);
  v4[6] = swift_task_alloc();
  v4[7] = sub_4FF4(&qword_55B30, &unk_3E4C0);
  v4[8] = swift_task_alloc();
  v5 = sub_4FF4(&qword_55B38, &unk_3EB70);
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = sub_4FF4(&qword_55B40, &unk_3E4D0);
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v7 = sub_4FF4(&qword_55B48, &unk_3EB80);
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = sub_3D594();
  v4[19] = sub_3D584();
  v9 = sub_3D564();
  v4[20] = v9;
  v4[21] = v8;

  return _swift_task_switch(sub_1F194, v9, v8);
}

uint64_t sub_1F194()
{
  v1 = v0[14];
  v9 = v0[13];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  swift_beginAccess();
  sub_4FF4(&qword_55AD8, &unk_3E450);
  sub_3C884();
  swift_endAccess();
  sub_56BC(&qword_55B50, &qword_55B38, &unk_3EB70, &protocol conformance descriptor for Published<A>.Publisher);
  sub_3C8C4();
  (*(v4 + 8))(v3, v5);
  sub_56BC(&qword_55B58, &qword_55B30, &unk_3E4C0, &protocol conformance descriptor for AsyncPublisher<A>);
  sub_3D7F4();
  sub_3D794();
  sub_3D5E4();
  sub_3D7A4();
  (*(v9 + 8))(v1, v2);
  sub_3D7E4();
  v0[22] = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings36SwipeToRevealMenuBarSectionViewModel_referrer;
  v6 = sub_3D584();
  v0[23] = v6;
  v7 = swift_task_alloc();
  v0[24] = v7;
  *v7 = v0;
  v7[1] = sub_1F3F8;

  return sub_1C864(v6, &protocol witness table for MainActor);
}

uint64_t sub_1F3F8(char a1)
{
  v3 = *v2;
  *(*v2 + 200) = a1;

  if (!v1)
  {

    v5 = *(v3 + 160);
    v6 = *(v3 + 168);

    return _swift_task_switch(sub_1F510, v5, v6);
  }

  return result;
}

uint64_t sub_1F510()
{
  v1 = *(v0 + 200);
  if (v1 == 2)
  {
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    if (qword_559A8 != -1)
    {
      swift_once();
    }

    v4 = qword_572E8;
    v5 = sub_3D4C4();
    [v4 setBool:v1 & 1 forKey:v5];

    if (qword_559A0 != -1)
    {
      swift_once();
    }

    v6 = (*(v0 + 40) + *(v0 + 176));
    v8 = *v6;
    v7 = v6[1];

    sub_1BCA0(1u, v1 & 1, v8, v7);

    v9 = sub_3D584();
    *(v0 + 184) = v9;
    v10 = swift_task_alloc();
    *(v0 + 192) = v10;
    *v10 = v0;
    v10[1] = sub_1F3F8;

    return sub_1C864(v9, &protocol witness table for MainActor);
  }
}

uint64_t sub_1F760()
{
  v1 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings36SwipeToRevealMenuBarSectionViewModel__swipeToRevealMenuBarGesturesEnabled;
  v2 = sub_4FF4(&qword_55AD8, &unk_3E450);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for SwipeToRevealMenuBarSectionViewModel(uint64_t a1)
{
  result = qword_567C8;
  if (!qword_567C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1F870(uint64_t a1)
{
  sub_6A70();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1F908(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1FA00;

  return v6(a1);
}

uint64_t sub_1FA00()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1FAF8()
{
  if (qword_559A8 != -1)
  {
    swift_once();
  }

  v0 = qword_572E8;
  v1 = sub_3D4C4();
  v2 = [v0 valueForKey:v1];

  if (v2)
  {
    sub_3D674();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_11A14(v7, &qword_55AE0, &qword_3E940);
  }

  return 1;
}

uint64_t sub_1FC18()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1FC58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_5440;

  return sub_1EF4C(a1, v4, v5, v6);
}

uint64_t sub_1FD0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_4FF4(&qword_55AC8, &qword_3E440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1FD7C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1FDB4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_587C;

  return sub_1F908(a1, v4);
}

uint64_t sub_1FE6C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_5440;

  return sub_1F908(a1, v4);
}

uint64_t sub_1FF4C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6465776F646E6977;
  v4 = 0xEC00000073707041;
  if (v2 != 1)
  {
    v3 = 0x6E614D6567617473;
    v4 = 0xEC00000072656761;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x657263536C6C7566;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEE00737070416E65;
  }

  v7 = 0x6465776F646E6977;
  v8 = 0xEC00000073707041;
  if (*a2 != 1)
  {
    v7 = 0x6E614D6567617473;
    v8 = 0xEC00000072656761;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x657263536C6C7566;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEE00737070416E65;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_3D804();
  }

  return v11 & 1;
}

Swift::Int sub_20078()
{
  sub_3D844();
  sub_3D524();

  return sub_3D864();
}

uint64_t sub_20138(uint64_t a1)
{
  sub_3D524();
}

Swift::Int sub_201E4(uint64_t a1)
{
  sub_3D844();
  sub_3D524();

  return sub_3D864();
}

unint64_t sub_202A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_203A4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_202D0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00737070416E65;
  v4 = 0xEC00000073707041;
  v5 = 0x6465776F646E6977;
  if (v2 != 1)
  {
    v5 = 0x6E614D6567617473;
    v4 = 0xEC00000072656761;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x657263536C6C7566;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_20350()
{
  result = qword_568A0;
  if (!qword_568A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_568A0);
  }

  return result;
}

unint64_t sub_203A4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_52100;
  v6._object = a2;
  v4 = sub_3D784(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

Swift::Void __swiftcall MultitaskingAndGesturesSettings.viewDidLoad()()
{
  v1 = v0;
  v2 = type metadata accessor for MultitaskingAndGesturesSettingsList(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.receiver = v1;
  v21.super_class = MultitaskingAndGesturesSettings;
  objc_msgSendSuper2(&v21, "viewDidLoad");

  sub_10DB0(v5, v4);
  v6 = objc_allocWithZone(sub_4FF4(&qword_568B0, &qword_408F8));
  v7 = sub_3CCF4();
  if (qword_55980 != -1)
  {
    swift_once();
  }

  v8 = qword_572B8;
  v9 = sub_3D4C4();
  v10 = [v8 localizedStringForKey:v9 value:0 table:0];

  if (!v10)
  {
    sub_3D4F4();
    v10 = sub_3D4C4();
  }

  [v1 setTitle:v10];

  v11 = [v7 view];
  if (!v11)
  {
    v12 = v7;
    goto LABEL_10;
  }

  v12 = v11;
  v13 = [v1 view];
  if (v13)
  {
    v14 = v13;
    [v13 addSubview:v12];

    v15 = [v1 view];
    if (v15)
    {
      v16 = v15;
      [v15 bounds];
      v18 = v17;
      v20 = v19;

      [v12 setFrame:{0.0, 0.0, v18, v20}];
      [v12 setAutoresizingMask:18];
      [v1 addChildViewController:v7];
      [v7 didMoveToParentViewController:v1];

LABEL_10:
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t MultitaskingAndGesturesSettings.handleURL(_:withCompletion:)(uint64_t result, uint64_t (*a2)(uint64_t))
{
  if (!result)
  {
    __break(1u);
    return result;
  }

  v3 = result;
  sub_3D6D4();
  if (!*(v3 + 16) || (v4 = sub_20CE0(v12), (v5 & 1) == 0))
  {
    result = sub_1C1E8(v12);
    goto LABEL_15;
  }

  sub_1C2AC(*(v3 + 56) + 32 * v4, v13);
  sub_1C1E8(v12);
  result = swift_dynamicCast();
  if ((result & 1) == 0 || (result = sub_D13C(1752457584, 0xE400000000000000), result == 10))
  {
LABEL_15:
    if (!a2)
    {
      return result;
    }

    return a2(result);
  }

  sub_C71C(result);
  v13[0] = 0x7265727265666572;
  v13[1] = 0xE800000000000000;
  sub_3D6D4();
  if (*(v3 + 16) && (v6 = sub_20CE0(v12), (v7 & 1) != 0))
  {
    sub_1C2AC(*(v3 + 56) + 32 * v6, v13);
    sub_1C1E8(v12);
    v8 = swift_dynamicCast();
    v9 = v8 == 0;
    if (v8)
    {
      v10 = 1752457584;
    }

    else
    {
      v10 = 0;
    }

    if (v9)
    {
      v11 = 0;
    }

    else
    {
      v11 = 0xE400000000000000;
    }
  }

  else
  {
    sub_1C1E8(v12);
    v10 = 0;
    v11 = 0;
  }

  result = sub_C50C(v10, v11);
  if (a2)
  {
    return a2(result);
  }

  return result;
}

void __swiftcall MultitaskingAndGesturesSettings.init(nibName:bundle:)(MultitaskingAndGesturesSettings *__return_ptr retstr, Swift::String_optional nibName, NSBundle_optional bundle)
{
  isa = bundle.value.super.isa;
  if (nibName.value._object)
  {
    v4 = sub_3D4C4();
  }

  else
  {
    v4 = 0;
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:isa];
}

id MultitaskingAndGesturesSettings.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR___MultitaskingAndGesturesSettings_viewModel;
  type metadata accessor for MultitaskingAndGesturesSettingsListViewModel(0);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 10;
  sub_3C814();
  *&v3[v6] = v7;
  if (a2)
  {
    v8 = sub_3D4C4();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = MultitaskingAndGesturesSettings;
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

id MultitaskingAndGesturesSettings.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR___MultitaskingAndGesturesSettings_viewModel;
  type metadata accessor for MultitaskingAndGesturesSettingsListViewModel(0);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 10;
  sub_3C814();
  *&v1[v3] = v4;
  v7.receiver = v1;
  v7.super_class = MultitaskingAndGesturesSettings;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

unint64_t sub_20C68(uint64_t a1, uint64_t a2)
{
  sub_3D844();
  sub_3D524();
  v4 = sub_3D864();

  return sub_20D24(a1, a2, v4);
}

unint64_t sub_20CE0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_3D6B4(*(v2 + 40));

  return sub_20DDC(a1, v4);
}

unint64_t sub_20D24(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_3D804())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_20DDC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1C18C(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_3D6C4();
      sub_1C1E8(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t type metadata accessor for MultitaskingAndGesturesSettings()
{
  result = qword_568E0;
  if (!qword_568E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_568E0);
  }

  return result;
}

double sub_20EF0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_20F00()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_20F48@<X0>(void *a1@<X8>)
{
  v3 = sub_3CC54();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_4FF4(&qword_569D0, &qword_409C8);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for MultitaskingWindowManagementChoicePackage(0);
  sub_E1E8(v1 + *(v10 + 24), v9, &qword_569D0, &qword_409C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_3C964();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_3D604();
    v13 = sub_3CE74();
    sub_3C844();

    sub_3CC44();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_2119C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_4FF4(&qword_568E8, &qword_40900);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_4FF4(&qword_568F0, &qword_40908);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[9] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_212D4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_4FF4(&qword_568E8, &qword_40900);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
  }

  else
  {
    result = sub_4FF4(&qword_568F0, &qword_40908);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[9] + 8) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t type metadata accessor for MultitaskingWindowManagementChoicePackage(uint64_t a1)
{
  result = qword_56950;
  if (!qword_56950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21440(uint64_t a1)
{
  sub_21630(319, &qword_56960, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_21630(319, &qword_56968, &type metadata accessor for ScenePhase, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_2159C(319);
      if (v3 <= 0x3F)
      {
        sub_21630(319, &unk_56980, type metadata accessor for CGSize, &type metadata accessor for Binding);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2159C(uint64_t a1)
{
  if (!qword_56970)
  {
    type metadata accessor for MultitaskingWindowManagementPackageViewModel(255);
    sub_23DB0(&qword_56978, type metadata accessor for MultitaskingWindowManagementPackageViewModel, &unk_40184);
    v1 = sub_3C9B4();
    if (!v2)
    {
      atomic_store(v1, &qword_56970);
    }
  }
}

void sub_21630(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_216B0@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v56 = sub_3C944();
  v58 = *(v56 - 8);
  __chkstk_darwin(v56);
  v53 = &v47[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = type metadata accessor for MultitaskingWindowManagementChoicePackage(0);
  v4 = *(v3 - 8);
  v60 = *(v4 + 64);
  v5 = v3 - 8;
  __chkstk_darwin(v3 - 8);
  v7 = &v47[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v51 = sub_4FF4(&qword_569C0, &qword_40990);
  __chkstk_darwin(v51);
  v9 = &v47[-v8];
  v10 = sub_4FF4(&qword_569C8, &qword_40998);
  v11 = *(v10 - 8);
  v54 = v10;
  v55 = v11;
  __chkstk_darwin(v10);
  v52 = &v47[-v12];
  v13 = v5;
  v50 = v5;
  type metadata accessor for MultitaskingWindowManagementPackageViewModel(0);
  sub_23DB0(&qword_56978, type metadata accessor for MultitaskingWindowManagementPackageViewModel, &unk_40184);
  v14 = sub_3C9A4();
  swift_getKeyPath();
  sub_3CA84();

  v15 = v62;
  v49 = v63;
  v48 = v64;
  v59 = type metadata accessor for MultitaskingWindowManagementChoicePackage;
  sub_2376C(v1, v7, type metadata accessor for MultitaskingWindowManagementChoicePackage);
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  sub_22FC4(v7, v17 + v16);
  v18 = v1 + *(v13 + 44);
  v19 = v1;
  v20 = *(v18 + 8);
  v62 = *v18;
  v63 = v20;
  v64 = *(v18 + 16);
  sub_4FF4(&qword_569E0, &qword_409D8);
  sub_3D264();
  v21 = v61[0] / 856.0 * 47.0;
  v22 = &v9[*(sub_4FF4(&qword_569E8, &unk_409E0) + 36)];
  v23 = *(sub_3CAF4() + 20);
  v24 = enum case for RoundedCornerStyle.continuous(_:);
  v25 = sub_3CCC4();
  (*(*(v25 - 8) + 104))(v22 + v23, v24, v25);
  *v22 = v21;
  v22[1] = v21;
  *(v22 + *(sub_4FF4(&qword_56538, &qword_3FF90) + 36)) = 256;
  v26 = v49;
  *v9 = v15;
  *(v9 + 1) = v26;
  v9[16] = v48;
  *(v9 + 3) = sub_23028;
  *(v9 + 4) = v17;
  v27 = v59;
  sub_2376C(v19, v7, v59);
  v28 = swift_allocObject();
  sub_22FC4(v7, v28 + v16);
  v29 = sub_3D324();
  v31 = v30;
  v32 = &v9[*(sub_4FF4(&qword_569F0, &qword_409F0) + 36)];
  *v32 = sub_230B0;
  v32[1] = v28;
  v32[2] = v29;
  v32[3] = v31;
  v33 = v19;
  sub_2376C(v19, v7, v27);
  v34 = swift_allocObject();
  sub_22FC4(v7, v34 + v16);
  v35 = &v9[*(sub_4FF4(&qword_569F8, &qword_409F8) + 36)];
  *v35 = sub_23130;
  v35[1] = v34;
  v35[2] = 0;
  v35[3] = 0;
  sub_2376C(v19, v7, v27);
  v36 = swift_allocObject();
  sub_22FC4(v7, v36 + v16);
  v37 = v51;
  v38 = &v9[*(v51 + 36)];
  *v38 = 0;
  v38[1] = 0;
  v38[2] = sub_2318C;
  v38[3] = v36;
  LOBYTE(v62) = *(v33 + 1);
  sub_2376C(v33, v7, v27);
  v39 = swift_allocObject();
  sub_22FC4(v7, v39 + v16);
  v40 = sub_231EC();
  v41 = v52;
  sub_3D084();

  sub_23500(v9);
  v42 = v53;
  sub_23568(v53);
  sub_2376C(v33, v7, v59);
  v43 = swift_allocObject();
  sub_22FC4(v7, v43 + v16);
  v62 = v37;
  v63 = &type metadata for Bool;
  *&v64 = v40;
  *(&v64 + 1) = &protocol witness table for Bool;
  swift_getOpaqueTypeConformance2();
  sub_23DB0(&qword_56A40, &type metadata accessor for ScenePhase, &protocol conformance descriptor for ScenePhase);
  v44 = v56;
  v45 = v54;
  sub_3D084();

  (*(v58 + 8))(v42, v44);
  return (*(v55 + 8))(v41, v45);
}

void sub_21E14(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  *a2 = v3;
}

uint64_t sub_21E94(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_3C8A4();
}

void sub_21F04(uint64_t a1, uint64_t a2, char *a3)
{
  if (qword_55980 != -1)
  {
    v8 = a3;
    swift_once();
    a3 = v8;
  }

  v4 = *a3;
  v5 = qword_572B8;
  sub_23E60(v4, a1);
  v6 = sub_3D4C4();

  v7 = sub_3D4C4();
  v9 = [v5 URLForResource:v6 withExtension:v7];

  if (v9)
  {
    sub_3C7A4();
  }

  else
  {
    sub_3D734();
    __break(1u);
  }
}

uint64_t sub_22058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v95 = a1;
  v100 = a3;
  v94 = sub_3CA34();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v90 = v4;
  v91 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MultitaskingWindowManagementChoicePackage(0);
  v6 = v5 - 8;
  v89 = *(v5 - 8);
  __chkstk_darwin(v5);
  v88 = v7;
  v92 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_4FF4(&qword_56A48, &qword_40A10);
  v98 = *(v8 - 8);
  v99 = v8;
  v9 = __chkstk_darwin(v8);
  v97 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v96 = &v78 - v11;
  v86 = sub_3D364();
  v85 = *(v86 - 1);
  __chkstk_darwin(v86);
  v84 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3C964();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v78 - v18;
  v20 = sub_3CAF4();
  v21 = v20 - 8;
  __chkstk_darwin(v20);
  v23 = (&v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_4FF4(&qword_56A50, &qword_40A18);
  __chkstk_darwin(v24 - 8);
  v26 = &v78 - v25;
  v81 = sub_4FF4(&qword_56A58, &qword_40A20);
  __chkstk_darwin(v81);
  v83 = &v78 - v27;
  v82 = sub_4FF4(&qword_56A60, &unk_40A28);
  v28 = __chkstk_darwin(v82);
  v87 = &v78 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v80 = &v78 - v31;
  __chkstk_darwin(v30);
  v101 = &v78 - v32;
  v33 = a2 + *(v6 + 44);
  v34 = *(v33 + 8);
  *&v110 = *v33;
  *(&v110 + 1) = v34;
  v111 = *(v33 + 16);
  sub_4FF4(&qword_569E0, &qword_409D8);
  sub_3D264();
  v35 = v105 / 856.0 * 47.0;
  v36 = *(v21 + 28);
  v37 = enum case for RoundedCornerStyle.continuous(_:);
  v38 = sub_3CCC4();
  (*(*(v38 - 8) + 104))(v23 + v36, v37, v38);
  *v23 = v35;
  v23[1] = v35;
  v102 = a2;
  sub_20F48(v19);
  v39 = *(v14 + 104);
  v79 = enum case for ColorScheme.light(_:);
  v78 = v39;
  v39(v17);
  LOBYTE(v37) = sub_3C954();
  v40 = *(v14 + 8);
  v40(v17, v13);
  v40(v19, v13);
  if (v37)
  {
    v41 = sub_3D0C4();
  }

  else
  {
    v41 = sub_3D0E4();
  }

  v42 = v41;
  sub_3C9C4();
  sub_2376C(v23, v26, &type metadata accessor for RoundedRectangle);
  v43 = &v26[*(sub_4FF4(&qword_56548, &qword_3FFA0) + 36)];
  v44 = v111;
  *v43 = v110;
  *(v43 + 1) = v44;
  *(v43 + 4) = v112;
  v45 = sub_4FF4(&qword_56550, &qword_3FFA8);
  *&v26[*(v45 + 52)] = v42;
  *&v26[*(v45 + 56)] = 256;
  v46 = sub_3D324();
  v48 = v47;
  sub_174B8(v23);
  v49 = &v26[*(sub_4FF4(&qword_56558, &qword_3FFB0) + 36)];
  *v49 = v46;
  v49[1] = v48;
  v50 = v102;
  sub_20F48(v19);
  v78(v17, v79, v13);
  LOBYTE(v46) = sub_3C954();
  v40(v17, v13);
  v40(v19, v13);
  v51 = v85;
  v52 = &enum case for BlendMode.plusDarker(_:);
  if ((v46 & 1) == 0)
  {
    v52 = &enum case for BlendMode.plusLighter(_:);
  }

  v53 = v84;
  v54 = v86;
  (*(v85 + 104))(v84, *v52, v86);
  v55 = v83;
  (*(v51 + 32))(&v83[*(v81 + 36)], v53, v54);
  sub_17214(v26, v55, &qword_56A50, &qword_40A18);
  v56 = v80;
  sub_17214(v55, v80, &qword_56A58, &qword_40A20);
  *(v56 + *(v82 + 36)) = 0x3FB999999999999ALL;
  sub_17214(v56, v101, &qword_56A60, &unk_40A28);
  v85 = sub_3D0D4();
  v86 = type metadata accessor for MultitaskingWindowManagementChoicePackage;
  v57 = v92;
  sub_2376C(v50, v92, type metadata accessor for MultitaskingWindowManagementChoicePackage);
  v58 = v93;
  v59 = v91;
  v60 = v94;
  (*(v93 + 16))(v91, v95, v94);
  v61 = (*(v89 + 80) + 16) & ~*(v89 + 80);
  v62 = (v61 + v88 + *(v58 + 80)) & ~*(v58 + 80);
  v63 = swift_allocObject();
  sub_22FC4(v57, v63 + v61);
  (*(v58 + 32))(v63 + v62, v59, v60);
  v105 = *&v85;
  v106 = sub_23A24;
  v107 = v63;
  v108 = 0;
  v109 = 0;
  sub_3CA24();
  v103 = v64;
  v104 = v65;
  sub_2376C(v102, v57, v86);
  v66 = swift_allocObject();
  sub_22FC4(v57, v66 + v61);
  sub_4FF4(&qword_56A68, &qword_40A38);
  type metadata accessor for CGSize(0);
  sub_23D2C();
  sub_23DB0(&qword_56A78, type metadata accessor for CGSize, &protocol conformance descriptor for CGSize);
  v67 = v96;
  sub_3D084();

  v68 = v101;
  v69 = v87;
  sub_E1E8(v101, v87, &qword_56A60, &unk_40A28);
  v71 = v97;
  v70 = v98;
  v72 = *(v98 + 16);
  v73 = v99;
  v72(v97, v67, v99);
  v74 = v100;
  sub_E1E8(v69, v100, &qword_56A60, &unk_40A28);
  v75 = sub_4FF4(&qword_56A80, &qword_40A40);
  v72((v74 + *(v75 + 48)), v71, v73);
  v76 = *(v70 + 8);
  v76(v67, v73);
  sub_23DF8(v68);
  v76(v71, v73);
  return sub_23DF8(v69);
}

uint64_t sub_22B9C(uint64_t a1)
{
  sub_3CA24();
  type metadata accessor for MultitaskingWindowManagementChoicePackage(0);
  sub_4FF4(&qword_569E0, &qword_409D8);
  return sub_3D274();
}

uint64_t sub_22C24(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  type metadata accessor for MultitaskingWindowManagementChoicePackage(0);
  sub_4FF4(&qword_569E0, &qword_409D8);
  return sub_3D274();
}

void sub_22CA0()
{
  v1 = sub_3C944();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  if (*(v0 + 1) == 1 && (type metadata accessor for MultitaskingWindowManagementChoicePackage(0), sub_23568(v7), (*(v2 + 104))(v5, enum case for ScenePhase.active(_:), v1), v8 = sub_3C934(), v9 = *(v2 + 8), v9(v5, v1), v9(v7, v1), (v8 & 1) != 0))
  {
    type metadata accessor for MultitaskingWindowManagementPackageViewModel(0);
    sub_23DB0(&qword_56978, type metadata accessor for MultitaskingWindowManagementPackageViewModel, &unk_40184);
    v10 = sub_3C994();
    sub_19794();
  }

  else
  {
    type metadata accessor for MultitaskingWindowManagementChoicePackage(0);
    type metadata accessor for MultitaskingWindowManagementPackageViewModel(0);
    sub_23DB0(&qword_56978, type metadata accessor for MultitaskingWindowManagementPackageViewModel, &unk_40184);
    v10 = sub_3C994();
    sub_1A264();
  }
}

void sub_22EF4(uint64_t a1)
{
  type metadata accessor for MultitaskingWindowManagementChoicePackage(0);
  type metadata accessor for MultitaskingWindowManagementPackageViewModel(0);
  sub_23DB0(&qword_56978, type metadata accessor for MultitaskingWindowManagementPackageViewModel, &unk_40184);
  v1 = sub_3C994();
  sub_1A264();
}

uint64_t sub_22FC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultitaskingWindowManagementChoicePackage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_23028(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for MultitaskingWindowManagementChoicePackage(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  sub_21F04(a1, a2, v6);
}

uint64_t sub_230B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for MultitaskingWindowManagementChoicePackage(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_22058(a1, v6, a2);
}

void sub_2318C()
{
  v1 = *(type metadata accessor for MultitaskingWindowManagementChoicePackage(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_22EF4(v2);
}

unint64_t sub_231EC()
{
  result = qword_56A00;
  if (!qword_56A00)
  {
    sub_5674(&qword_569C0, &qword_40990);
    sub_23278();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56A00);
  }

  return result;
}

unint64_t sub_23278()
{
  result = qword_56A08;
  if (!qword_56A08)
  {
    sub_5674(&qword_569F8, &qword_409F8);
    sub_23304();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56A08);
  }

  return result;
}

unint64_t sub_23304()
{
  result = qword_56A10;
  if (!qword_56A10)
  {
    sub_5674(&qword_569F0, &qword_409F0);
    sub_233BC();
    sub_56BC(&qword_56A30, &qword_56A38, &qword_40A08, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56A10);
  }

  return result;
}

unint64_t sub_233BC()
{
  result = qword_56A18;
  if (!qword_56A18)
  {
    sub_5674(&qword_56A20, &qword_40A00);
    sub_23448();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56A18);
  }

  return result;
}

unint64_t sub_23448()
{
  result = qword_56A28;
  if (!qword_56A28)
  {
    sub_5674(&qword_569E8, &unk_409E0);
    sub_EBCC();
    sub_56BC(&qword_56598, &qword_56538, &qword_3FF90, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56A28);
  }

  return result;
}

uint64_t sub_23500(uint64_t a1)
{
  v2 = sub_4FF4(&qword_569C0, &qword_40990);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23568@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_3CC54();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_4FF4(&qword_569D8, &qword_409D0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_E1E8(v2, &v14 - v9, &qword_569D8, &qword_409D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_3C944();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_3D604();
    v13 = sub_3CE74();
    sub_3C844();

    sub_3CC44();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_2376C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_237D4()
{
  v1 = type metadata accessor for MultitaskingWindowManagementChoicePackage(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = sub_3CA34();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v16 = *(v6 + 64);
  v8 = v0 + v3;
  v9 = v1[6];
  sub_4FF4(&qword_569D0, &qword_409C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_3C964();
    (*(*(v10 - 8) + 8))(v8 + v9, v10);
  }

  else
  {
  }

  v11 = v1[7];
  sub_4FF4(&qword_569D8, &qword_409D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_3C944();
    (*(*(v12 - 8) + 8))(v8 + v11, v12);
  }

  else
  {
  }

  v13 = v2 | v7;
  v14 = (v3 + v4 + v7) & ~v7;
  sub_11A04(*(v8 + v1[8]), *(v8 + v1[8] + 8), *(v8 + v1[8] + 16));

  (*(v6 + 8))(v0 + v14, v5);

  return _swift_deallocObject(v0, v14 + v16, v13 | 7);
}

uint64_t sub_23A24()
{
  v1 = *(type metadata accessor for MultitaskingWindowManagementChoicePackage(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_3CA34();

  return sub_22B9C(v0 + v2);
}

uint64_t sub_23AF0()
{
  v1 = type metadata accessor for MultitaskingWindowManagementChoicePackage(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = v1[6];
  sub_4FF4(&qword_569D0, &qword_409C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_3C964();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v1[7];
  sub_4FF4(&qword_569D8, &qword_409D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_3C944();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  sub_11A04(*(v5 + v1[8]), *(v5 + v1[8] + 8), *(v5 + v1[8] + 16));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_23CAC(uint64_t a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for MultitaskingWindowManagementChoicePackage(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_22C24(a1, a2, v6);
}

unint64_t sub_23D2C()
{
  result = qword_56A70;
  if (!qword_56A70)
  {
    sub_5674(&qword_56A68, &qword_40A38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56A70);
  }

  return result;
}

uint64_t sub_23DB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23DF8(uint64_t a1)
{
  v2 = sub_4FF4(&qword_56A60, &unk_40A28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23E60(char a1, uint64_t a2)
{
  v3 = sub_3C964();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v6, enum case for ColorScheme.light(_:), v3);
  v7 = sub_3C954();
  (*(v4 + 8))(v6, v3);
  if (a1)
  {
    v8 = 0xD000000000000012;
    if (v7)
    {
      v9 = 0xD000000000000013;
    }

    else
    {
      v9 = 0xD000000000000012;
    }

    if (v7)
    {
      v8 = 0xD000000000000013;
    }

    if (a1 == 1)
    {
      return v9;
    }

    else
    {
      return v8;
    }
  }

  else if (v7)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_24000()
{
  sub_5674(&qword_569C8, &qword_40998);
  sub_3C944();
  sub_5674(&qword_569C0, &qword_40990);
  sub_231EC();
  swift_getOpaqueTypeConformance2();
  sub_23DB0(&qword_56A40, &type metadata accessor for ScenePhase, &protocol conformance descriptor for ScenePhase);
  return swift_getOpaqueTypeConformance2();
}

id sub_24114()
{
  v0 = objc_allocWithZone(type metadata accessor for MultiTaskingSectionViewModel(0));

  return [v0 init];
}

void sub_24184(uint64_t a1@<X8>)
{
  v2 = v1;
  v62 = a1;
  v3 = sub_3CC54();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = *(v2 + 8);
  v7 = *v2;
  v72 = *v2;
  if (v73 == 1)
  {
    v66[0] = v7;
  }

  else
  {

    sub_3D604();
    v8 = sub_3CE74();
    sub_3C844();

    sub_3CC44();
    swift_getAtKeyPath();
    sub_11A14(&v72, &qword_55F08, &qword_3F140);
    (*(v4 + 8))(v6, v3);
  }

  sub_4FF4(&qword_56A88, &qword_40BB0);
  v9 = swift_allocBox();
  type metadata accessor for MultitaskingAndGesturesSettingsListViewModel(0);
  sub_27124(&qword_55EE0, type metadata accessor for MultitaskingAndGesturesSettingsListViewModel, &unk_3EF50);
  v10 = sub_3D304();
  v64 = &v52;
  __chkstk_darwin(v10);
  v63 = &v52 - 4;
  sub_3CCB4();
  if (qword_55980 != -1)
  {
    swift_once();
  }

  v11 = qword_572B8;
  v68 = sub_3CF84();
  v69 = v12;
  v70 = v13 & 1;
  v71 = v14;
  v15 = v2[2];
  v16 = v2[3];
  v65 = *(v2 + 32);
  sub_26E5C(v15, v16, v65);
  v18 = v17;
  if (v17)
  {
    v61 = v2;
    v19 = qword_572B8;
    v57 = sub_3CF84();
    v56 = v20;
    v54 = v21;
    v55 = v22;
    v23 = sub_271B8(v15, v16, v65);
    v25 = v24;
    v27 = v26;
    v59 = v15;
    sub_3D0B4();
    v28 = sub_3CF24();
    v60 = v9;
    v30 = v29;
    v58 = v16;
    v32 = v31;

    sub_BAF8(v23, v25, v27 & 1);

    v33 = v57;
    v34 = v56;
    v35 = sub_3CF44();
    v18 = v36;
    v53 = v37;
    v39 = v38;
    LOBYTE(v37) = v32 & 1;
    v16 = v58;
    v40 = v28;
    v2 = v61;
    sub_BAF8(v40, v30, v37);

    sub_BAF8(v33, v34, v54 & 1);

    v41 = v53 & 1;
    v15 = v59;
  }

  else
  {
    v35 = 0;
    v41 = 0;
    v39 = 0;
  }

  v66[0] = v35;
  v66[1] = v18;
  v66[2] = v41;
  v66[3] = v39;
  v67 = 256;
  sub_4FF4(&qword_56A90, &qword_40BB8);
  sub_4FF4(&qword_56A98, &qword_40BC0);
  sub_56BC(&qword_56AA0, &qword_56A90, &qword_40BB8, &protocol conformance descriptor for TupleView<A>);
  sub_2706C();
  v42 = v62;
  sub_3D2C4();
  type metadata accessor for MultiTaskingSectionViewModel(0);
  sub_27124(&qword_56480, type metadata accessor for MultiTaskingSectionViewModel, &unk_41B80);
  v43 = v65;
  v44 = sub_3C994();
  v45 = sub_3C854();
  v46 = (v42 + *(sub_4FF4(&qword_56AC0, &qword_40BD0) + 36));
  *v46 = v45;
  v46[1] = v44;
  v47 = [objc_opt_self() defaultCenter];
  v48 = sub_4FF4(&qword_56AC8, &unk_40BD8);
  sub_3D644();

  v49 = swift_allocObject();
  v50 = *(v2 + 1);
  *(v49 + 16) = *v2;
  *(v49 + 32) = v50;
  *(v49 + 48) = *(v2 + 32);
  sub_E1E8(&v72, v66, &qword_55F08, &qword_3F140);
  sub_11AB8(v15, v16, v43);

  v51 = (v42 + *(v48 + 56));
  *v51 = sub_271B0;
  v51[1] = v49;
}

id sub_24858@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v86 = a3;
  v4 = sub_4FF4(&qword_56AD8, &qword_40C80);
  v84 = *(v4 - 8);
  v85 = v4;
  __chkstk_darwin(v4);
  v75 = &v70 - v5;
  v79 = sub_4FF4(&qword_56AE0, &qword_40C88);
  v6 = __chkstk_darwin(v79);
  v74 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v73 = &v70 - v9;
  v10 = __chkstk_darwin(v8);
  v72 = &v70 - v11;
  __chkstk_darwin(v10);
  v80 = &v70 - v12;
  v13 = sub_4FF4(&qword_56AE8, &qword_40C90);
  v14 = __chkstk_darwin(v13 - 8);
  v83 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v82 = &v70 - v16;
  v17 = sub_4FF4(&qword_56A88, &qword_40BB0);
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v70 - v22;
  v24 = sub_4FF4(&qword_56AF0, &qword_40C98);
  v25 = v24 - 8;
  v26 = __chkstk_darwin(v24);
  v81 = &v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = &v70 - v28;
  *v29 = sub_3CCD4();
  *(v29 + 1) = 0;
  v29[16] = 0;
  v30 = sub_4FF4(&qword_56AF8, &qword_40CA0);
  sub_252A4(a1, &v29[*(v30 + 44)]);
  v31 = swift_projectBox();
  v32 = *(v18 + 16);
  v77 = v31;
  v78 = v18 + 16;
  v76 = v32;
  (v32)(v21);
  sub_3D2F4();
  v33 = *(v18 + 8);
  v33(v21, v17);
  swift_getKeyPath();
  sub_3D314();

  v71 = v33;
  v33(v23, v17);
  v34 = v91;
  v35 = v92;
  v36 = &v29[*(v25 + 44)];
  *v36 = v90;
  *(v36 + 1) = v34;
  *(v36 + 8) = v35;
  v37 = *(a1 + 24);
  v38 = *(a1 + 32);
  v39 = type metadata accessor for MultiTaskingSectionViewModel(0);
  sub_27124(&qword_56480, type metadata accessor for MultiTaskingSectionViewModel, &unk_41B80);
  v89 = v37;
  v88 = v38;
  v87 = v39;
  v40 = sub_3C994();
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v42 = result;
    deviceSupportsEnhancedMultitasking = MobileGestalt_get_deviceSupportsEnhancedMultitasking();

    if (deviceSupportsEnhancedMultitasking)
    {

      goto LABEL_6;
    }

    result = MobileGestalt_get_current_device();
    if (result)
    {
      v44 = result;

      deviceSupportsSingleDisplayEnhancedMultitasking = MobileGestalt_get_deviceSupportsSingleDisplayEnhancedMultitasking();
      if (!deviceSupportsSingleDisplayEnhancedMultitasking)
      {
LABEL_8:
        v48 = 1;
        v49 = v82;
LABEL_11:
        (*(v84 + 56))(v49, v48, 1, v85);
        v66 = v81;
        sub_E1E8(v29, v81, &qword_56AF0, &qword_40C98);
        v67 = v83;
        sub_E1E8(v49, v83, &qword_56AE8, &qword_40C90);
        v68 = v86;
        sub_E1E8(v66, v86, &qword_56AF0, &qword_40C98);
        v69 = sub_4FF4(&qword_56B00, &qword_40CD0);
        sub_E1E8(v67, v68 + *(v69 + 48), &qword_56AE8, &qword_40C90);
        sub_11A14(v49, &qword_56AE8, &qword_40C90);
        sub_11A14(v29, &qword_56AF0, &qword_40C98);
        sub_11A14(v67, &qword_56AE8, &qword_40C90);
        return sub_11A14(v66, &qword_56AF0, &qword_40C98);
      }

LABEL_6:
      v46 = sub_3C994();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_3C894();

      if (v90 > 2u)
      {
      }

      else
      {
        v47 = sub_3D804();

        if ((v47 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      v50 = sub_3C9A4();
      swift_getKeyPath();
      sub_3CA84();

      v70 = v29;
      v51 = v80;
      sub_3D224();
      v76(v21, v77, v17);
      sub_3D2F4();
      v52 = v71;
      v71(v21, v17);
      swift_getKeyPath();
      sub_3D314();

      v52(v23, v17);
      v53 = v91;
      v54 = v92;
      v55 = &v51[*(v79 + 36)];
      v29 = v70;
      *v55 = v90;
      *(v55 + 1) = v53;
      v55[16] = v54;
      v55[17] = 8;
      v56 = sub_3C9A4();
      swift_getKeyPath();
      sub_3CA84();

      v57 = v72;
      sub_3D224();
      v76(v21, v77, v17);
      sub_3D2F4();
      v52(v21, v17);
      swift_getKeyPath();
      sub_3D314();

      v52(v23, v17);
      v58 = v91;
      v59 = v92;
      v60 = v80;
      v61 = v57 + *(v79 + 36);
      *v61 = v90;
      *(v61 + 8) = v58;
      *(v61 + 16) = v59;
      *(v61 + 17) = 9;
      v62 = v73;
      sub_E1E8(v60, v73, &qword_56AE0, &qword_40C88);
      v63 = v74;
      sub_E1E8(v57, v74, &qword_56AE0, &qword_40C88);
      v64 = v75;
      sub_E1E8(v62, v75, &qword_56AE0, &qword_40C88);
      v65 = sub_4FF4(&qword_56B08, &qword_40D28);
      sub_E1E8(v63, v64 + *(v65 + 48), &qword_56AE0, &qword_40C88);
      sub_11A14(v57, &qword_56AE0, &qword_40C88);
      sub_11A14(v60, &qword_56AE0, &qword_40C88);
      sub_11A14(v63, &qword_56AE0, &qword_40C88);
      sub_11A14(v62, &qword_56AE0, &qword_40C88);
      v49 = v82;
      sub_27984(v64, v82);
      v48 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_252A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v118 = a2;
  v3 = sub_3CDE4();
  v116 = *(v3 - 8);
  v117 = v3;
  __chkstk_darwin(v3);
  v114 = v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_4FF4(&qword_56B10, &qword_40D30);
  v112 = *(v5 - 8);
  v113 = v5;
  __chkstk_darwin(v5);
  v111 = v104 - v6;
  v121 = sub_4FF4(&qword_56B18, &qword_40D38);
  v119 = *(v121 - 8);
  __chkstk_darwin(v121);
  v115 = v104 - v7;
  v8 = sub_4FF4(&qword_56B20, &qword_40D40);
  v9 = __chkstk_darwin(v8 - 8);
  v125 = v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v104 - v11;
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v120 = a1;
  v15 = *(a1 + 32);
  v16 = type metadata accessor for MultiTaskingSectionViewModel(0);
  v17 = sub_27124(&qword_56480, type metadata accessor for MultiTaskingSectionViewModel, &unk_41B80);
  v124 = v16;
  v18 = sub_3C994();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  v19 = v127[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();
  v20 = v13;
  v21 = v121;

  v22 = 1;
  v122 = v12;
  if (LOBYTE(v127[0]) == 1)
  {
    v23 = v20;
    v110 = v14;
    v109 = v15;
    v24 = sub_3C994();
    result = MobileGestalt_get_current_device();
    if (!result)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v26 = result;
    deviceSupportsEnhancedMultitasking = MobileGestalt_get_deviceSupportsEnhancedMultitasking();

    if (deviceSupportsEnhancedMultitasking)
    {

LABEL_7:
      v30 = sub_3CCB4();
      v106 = v31;
      v107 = v30;
      v104[3] = v32;
      v105 = v33;
      v34 = v23;
      v108 = v17;
      v35 = sub_3C9A4();
      swift_getKeyPath();
      sub_3CA84();

      v126[0] = v127[0];
      v126[1] = v127[1];
      LOBYTE(v126[2]) = v127[2];
      sub_4FF4(&qword_56B40, &qword_40E18);
      sub_27A0C();
      sub_27A60(&qword_56B50, &qword_56B40, &qword_40E18, &protocol conformance descriptor for <> ForEach<A, B, C>);
      v36 = v111;
      sub_3D214();
      v37 = v114;
      sub_3CDD4();
      sub_56BC(&qword_56B58, &qword_56B10, &qword_40D30, &protocol conformance descriptor for Picker<A, B, C>);
      v38 = v115;
      v39 = v113;
      v40 = v117;
      sub_3D044();
      v41 = v37;
      v20 = v34;
      (*(v116 + 8))(v41, v40);
      (*(v112 + 8))(v36, v39);
      *(v38 + *(sub_4FF4(&qword_56B60, &qword_40E20) + 36)) = 257;
      v42 = sub_3CEF4();
      KeyPath = swift_getKeyPath();
      v44 = (v38 + *(sub_4FF4(&qword_56B68, &unk_40E58) + 36));
      *v44 = KeyPath;
      v44[1] = v42;
      LOBYTE(v42) = sub_3CEB4();
      sub_3C924();
      v45 = v38 + *(v21 + 36);
      *v45 = v42;
      *(v45 + 8) = v46;
      *(v45 + 16) = v47;
      *(v45 + 24) = v48;
      *(v45 + 32) = v49;
      *(v45 + 40) = 0;
      v12 = v122;
      sub_27B18(v38, v122);
      v22 = 0;
      goto LABEL_9;
    }

    result = MobileGestalt_get_current_device();
    if (!result)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v28 = result;

    deviceSupportsSingleDisplayEnhancedMultitasking = MobileGestalt_get_deviceSupportsSingleDisplayEnhancedMultitasking();
    if (deviceSupportsSingleDisplayEnhancedMultitasking)
    {
      goto LABEL_7;
    }

    v22 = 1;
    v12 = v122;
    v20 = v23;
  }

LABEL_9:
  v123 = v20;
  (*(v119 + 56))(v12, v22, 1, v21);
  v121 = sub_3CC84();
  v151 = 1;
  sub_26090(v127);
  memcpy(v154, v127, sizeof(v154));
  memcpy(v155, v127, 0x118uLL);
  sub_E1E8(v154, v126, &qword_56B28, &qword_40DD8);
  sub_11A14(v155, &qword_56B28, &qword_40DD8);
  memcpy(&v147[7], v154, 0x118uLL);
  LODWORD(v120) = v151;
  v50 = sub_3CE84();
  v51 = sub_3C994();
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
    goto LABEL_23;
  }

  v52 = result;
  v53 = MobileGestalt_get_deviceSupportsEnhancedMultitasking();

  LODWORD(v119) = v50;
  if (!v53)
  {
    result = MobileGestalt_get_current_device();
    if (result)
    {
      v54 = result;

      v55 = MobileGestalt_get_deviceSupportsSingleDisplayEnhancedMultitasking();
      if (!v55)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_14:
  v56 = objc_opt_self();
  v57 = [v56 mainScreen];
  [v57 bounds];
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;

  v156.origin.x = v59;
  v156.origin.y = v61;
  v156.size.width = v63;
  v156.size.height = v65;
  CGRectGetHeight(v156);
  v66 = [v56 mainScreen];
  [v66 bounds];
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v74 = v73;

  v157.origin.x = v68;
  v157.origin.y = v70;
  v157.size.width = v72;
  v157.size.height = v74;
  CGRectGetWidth(v157);
LABEL_15:
  sub_3C924();
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v82 = v81;
  memcpy(v146, v147, sizeof(v146));
  v147[288] = 0;
  LODWORD(v117) = sub_3CE94();
  v83 = sub_3C994();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  v84 = v127[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  if (LOBYTE(v127[0]) != 1)
  {
LABEL_21:
    sub_3C924();
    v90 = v89;
    v92 = v91;
    v94 = v93;
    v96 = v95;
    v151 = 0;
    v97 = v122;
    v98 = v125;
    sub_E1E8(v122, v125, &qword_56B20, &qword_40D40);
    v99 = v118;
    sub_E1E8(v98, v118, &qword_56B20, &qword_40D40);
    v100 = *(sub_4FF4(&qword_56B30, &qword_40DE0) + 48);
    v101 = v121;
    v126[0] = v121;
    v126[1] = 0;
    v102 = v120;
    LOBYTE(v126[2]) = v120;
    memcpy(&v126[2] + 1, v146, 0x11FuLL);
    LOWORD(v126[38]) = 256;
    *(&v126[38] + 2) = v149;
    HIWORD(v126[38]) = v150;
    LOBYTE(v98) = v119;
    LOBYTE(v126[39]) = v119;
    *(&v126[39] + 1) = *v148;
    HIDWORD(v126[39]) = *&v148[3];
    v126[40] = v76;
    v126[41] = v78;
    v126[42] = v80;
    v126[43] = v82;
    LOBYTE(v126[44]) = 0;
    *(&v126[44] + 1) = *v153;
    HIDWORD(v126[44]) = *&v153[3];
    v103 = v117;
    LOBYTE(v126[45]) = v117;
    *(&v126[45] + 1) = *v152;
    HIDWORD(v126[45]) = *&v152[3];
    v126[46] = v90;
    v126[47] = v92;
    v126[48] = v94;
    v126[49] = v96;
    LOBYTE(v126[50]) = 0;
    memcpy((v99 + v100), v126, 0x191uLL);
    sub_E1E8(v126, v127, &qword_56B38, &qword_40DE8);
    sub_11A14(v97, &qword_56B20, &qword_40D40);
    v127[0] = v101;
    v127[1] = 0;
    LOBYTE(v127[2]) = v102;
    memcpy(&v127[2] + 1, v146, 0x11FuLL);
    v128 = 256;
    v129 = v149;
    v130 = v150;
    v131 = v98;
    *v132 = *v148;
    *&v132[3] = *&v148[3];
    v133 = v76;
    v134 = v78;
    v135 = v80;
    v136 = v82;
    v137 = 0;
    *v138 = *v153;
    *&v138[3] = *&v153[3];
    v139 = v103;
    *v140 = *v152;
    *&v140[3] = *&v152[3];
    v141 = v90;
    v142 = v92;
    v143 = v94;
    v144 = v96;
    v145 = 0;
    sub_11A14(v127, &qword_56B38, &qword_40DE8);
    return sub_11A14(v125, &qword_56B20, &qword_40D40);
  }

  v85 = sub_3C994();
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    goto LABEL_25;
  }

  v86 = result;
  v87 = MobileGestalt_get_deviceSupportsEnhancedMultitasking();

  if (v87)
  {

    goto LABEL_21;
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v88 = result;

    MobileGestalt_get_deviceSupportsSingleDisplayEnhancedMultitasking();
    goto LABEL_21;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_25F1C()
{
  swift_getKeyPath();
  sub_4FF4(&qword_56B70, &qword_40E80);
  sub_56BC(&qword_56B78, &qword_56B70, &qword_40E80, &protocol conformance descriptor for [A]);
  sub_27A0C();
  return sub_3D2A4();
}

uint64_t sub_26008@<X0>(uint64_t a2@<X8>)
{
  sub_18400();
  result = sub_3CFA4();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

id sub_26090@<X0>(void *a2@<X8>)
{
  type metadata accessor for MultiTaskingSectionViewModel(0);
  sub_27124(&qword_56480, type metadata accessor for MultiTaskingSectionViewModel, &unk_41B80);
  v3 = sub_3C994();
  v4 = sub_32AC4();

  if (v4)
  {
    v108[0] = 1;
    *&v108[8] = sub_3CCB4();
    *&v108[16] = v5;
    v108[24] = v6 & 1;
    *&v108[32] = v7;
    *&v108[40] = 0x694D6E6565726373;
    *&v108[48] = 0xEF676E69726F7272;
    *&v108[56] = sub_3CB44();
    *&v108[64] = v8;
    sub_27C3C(v108);
    v89 = *&v109[32];
    v90 = *&v109[48];
    v91[0] = *&v109[64];
    *(v91 + 11) = *&v109[75];
    v85 = *&v108[64];
    v86 = *&v108[80];
    v87 = *v109;
    v88 = *&v109[16];
    v82 = *v108;
    v83 = *&v108[16];
    *v84 = *&v108[32];
    *&v84[16] = *&v108[48];
    sub_4FF4(&qword_56B80, &qword_40E88);
    sub_27BE8();
    sub_56BC(&qword_56B90, &qword_56B80, &qword_40E88, &protocol conformance descriptor for TupleView<A>);
    sub_3CDB4();
LABEL_18:
    v29 = sub_3C994();
    result = MobileGestalt_get_current_device();
    if (result)
    {
      v30 = result;
      deviceSupportsEnhancedMultitasking = MobileGestalt_get_deviceSupportsEnhancedMultitasking();

      if (deviceSupportsEnhancedMultitasking)
      {

        goto LABEL_23;
      }

      result = MobileGestalt_get_current_device();
      if (result)
      {
        v32 = result;

        deviceSupportsSingleDisplayEnhancedMultitasking = MobileGestalt_get_deviceSupportsSingleDisplayEnhancedMultitasking();
        if (!deviceSupportsSingleDisplayEnhancedMultitasking)
        {
          v53 = 0;
          v54 = 0;
          v51 = 0;
          v52 = 0;
          v46 = 0;
          v43 = 0;
          v55 = 0;
          v47 = 0;
          v49 = 0;
          v45 = 0;
          goto LABEL_25;
        }

LABEL_23:
        v34 = sub_3CCB4();
        v36 = v35;
        v38 = v37;
        v40 = v39;
        v41 = sub_3CB44();
        LOBYTE(v76) = 1;
        LOBYTE(v82) = 3;
        v42 = v38 & 1;
        DWORD1(v82) = *&v57[3];
        *(&v82 + 1) = *v57;
        *(&v82 + 1) = v34;
        *&v83 = v36;
        BYTE8(v83) = v38 & 1;
        *(&v83 + 9) = *v56;
        HIDWORD(v83) = *&v56[3];
        v43 = 0x6E614D6567617473;
        *v84 = v40;
        strcpy(&v84[8], "stageManager");
        v84[21] = 0;
        *&v84[22] = -5120;
        *&v84[24] = v41;
        *&v85 = v44;
        v108[0] = 3;
        v53 = *(&v83 + 1);
        v54 = v82;
        *&v108[1] = *v57;
        *&v108[4] = *&v57[3];
        v45 = 1;
        v51 = v40;
        v52 = v34;
        *&v108[8] = v34;
        *&v108[16] = v36;
        v46 = v36;
        v108[24] = v42;
        *&v108[28] = *&v56[3];
        *&v108[25] = *v56;
        *&v108[32] = v40;
        strcpy(&v108[40], "stageManager");
        v55 = 0xEC00000072656761;
        v108[53] = 0;
        *&v108[54] = -5120;
        *&v108[56] = v41;
        v47 = v44;
        v49 = v41;
        *&v108[64] = v44;
        sub_16B78(&v82, &v59);
        sub_27B88(v108);
LABEL_25:
        v67 = v118;
        v68 = v119;
        v69[0] = v120[0];
        *(v69 + 11) = *(v120 + 11);
        v63 = v114;
        v64 = v115;
        v65 = v116;
        v66 = v117;
        v59 = v110;
        v60 = v111;
        v61 = v112;
        v62 = v113;
        v89 = v118;
        v90 = v119;
        v91[0] = v120[0];
        *(v91 + 11) = *(v120 + 11);
        v85 = v114;
        v86 = v115;
        v87 = v116;
        v88 = v117;
        v82 = v110;
        v83 = v111;
        *v84 = v112;
        *&v84[16] = v113;
        __src[8] = v118;
        __src[9] = v119;
        __src[10] = v120[0];
        *(&__src[10] + 11) = *(v120 + 11);
        __src[4] = v114;
        __src[5] = v115;
        __src[6] = v116;
        __src[7] = v117;
        __src[0] = v110;
        __src[1] = v111;
        __src[2] = v112;
        __src[3] = v113;
        *&v70 = 0;
        *(&v70 + 1) = v45;
        *&v71 = v54;
        *(&v71 + 1) = v52;
        *&v72 = v46;
        *(&v72 + 1) = v53;
        *&v73 = v51;
        *(&v73 + 1) = v43;
        *&v74 = v55;
        *(&v74 + 1) = v49;
        v75 = v47;
        *&__src[17] = v47;
        __src[14] = v72;
        __src[15] = v73;
        __src[16] = v74;
        __src[12] = v70;
        __src[13] = v71;
        memcpy(a2, __src, 0x118uLL);
        *&v76 = 0;
        *(&v76 + 1) = v45;
        *&v77 = v54;
        *(&v77 + 1) = v52;
        *v78 = v46;
        *&v78[8] = v53;
        *&v78[16] = v51;
        *&v78[24] = v43;
        v79 = v55;
        v80 = v49;
        v81 = v47;
        sub_E1E8(&v82, v108, &qword_56B98, &qword_40E90);
        sub_E1E8(&v70, v108, &qword_56BA0, &qword_40E98);
        sub_11A14(&v76, &qword_56BA0, &qword_40E98);
        *&v109[32] = v67;
        *&v109[48] = v68;
        *&v109[64] = v69[0];
        *&v109[75] = *(v69 + 11);
        *&v108[64] = v63;
        *&v108[80] = v64;
        *v109 = v65;
        *&v109[16] = v66;
        *v108 = v59;
        *&v108[16] = v60;
        *&v108[32] = v61;
        *&v108[48] = v62;
        return sub_11A14(v108, &qword_56B98, &qword_40E90);
      }

      goto LABEL_29;
    }

    __break(1u);
    goto LABEL_27;
  }

  v9 = sub_3C994();
  result = MobileGestalt_get_current_device();
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v11 = result;
  v12 = MobileGestalt_get_deviceSupportsEnhancedMultitasking();

  if (v12)
  {

LABEL_8:
    v50 = 0;
    v48 = 1;
    goto LABEL_10;
  }

  result = MobileGestalt_get_current_device();
  if (!result)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v13 = result;

  v14 = MobileGestalt_get_deviceSupportsSingleDisplayEnhancedMultitasking();
  if (v14)
  {
    goto LABEL_8;
  }

  v48 = 0;
  v50 = 1;
LABEL_10:
  LOBYTE(v76) = 0;
  *(&v76 + 1) = sub_3CCB4();
  *&v77 = v15;
  BYTE8(v77) = v16 & 1;
  *v78 = v17;
  strcpy(&v78[8], "oneAppAtATime");
  *&v78[22] = -4864;
  *&v78[24] = sub_3CB44();
  v79 = v18;
  LOBYTE(v59) = 2;
  *(&v59 + 1) = sub_3CCB4();
  *&v60 = v19;
  BYTE8(v60) = v20 & 1;
  *&v61 = v21;
  *(&v61 + 1) = 0xD000000000000012;
  *&v62 = 0x8000000000042560;
  *(&v62 + 1) = sub_3CB44();
  *&v63 = v22;
  v23 = sub_3C994();
  result = MobileGestalt_get_current_device();
  if (!result)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v24 = result;
  v25 = MobileGestalt_get_deviceSupportsEnhancedMultitasking();

  if (v25)
  {

    goto LABEL_15;
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v26 = result;

    v27 = MobileGestalt_get_deviceSupportsSingleDisplayEnhancedMultitasking();
    if (!v27)
    {
      v28 = 1;
      goto LABEL_17;
    }

LABEL_15:
    v28 = 0;
    LOBYTE(v27) = 1;
LABEL_17:
    v98 = v77;
    v99 = *v78;
    v100 = *&v78[16];
    v97 = v76;
    v106[2] = v61;
    v106[3] = v62;
    v106[0] = v59;
    v106[1] = v60;
    *&v95[38] = *v78;
    v102[2] = *v78;
    v102[3] = *&v78[16];
    *&v95[54] = *&v78[16];
    v101 = v79;
    v107 = v63;
    v96 = v48;
    v103 = v79;
    *&v95[22] = v77;
    v102[0] = v76;
    v102[1] = v77;
    *&v95[70] = v79;
    *&v95[6] = v76;
    v94 = 1;
    v105 = v63;
    v104[2] = v61;
    v104[3] = v62;
    v104[0] = v59;
    v104[1] = v60;
    *(v93 + 7) = v59;
    *(&v93[4] + 7) = v63;
    *(&v93[3] + 7) = v62;
    *(&v93[2] + 7) = v61;
    *(&v93[1] + 7) = v60;
    v92 = v27;
    sub_16B78(&v76, &v110);
    sub_16B78(&v59, &v110);
    sub_16B78(v102, &v110);
    sub_16B78(v104, &v110);
    sub_27B88(v106);
    v72 = v99;
    v73 = v100;
    *&v74 = v101;
    v70 = v97;
    v71 = v98;
    sub_27B88(&v70);
    *v108 = 0;
    v108[8] = v50;
    v108[9] = v48;
    *&v108[26] = *&v95[16];
    *&v108[42] = *&v95[32];
    *&v108[58] = *&v95[48];
    *&v108[72] = *&v95[62];
    *&v108[10] = *v95;
    *&v108[88] = 0;
    v109[0] = 1;
    *&v109[1] = v93[0];
    *&v109[64] = *(&v93[3] + 15);
    *&v109[49] = v93[3];
    *&v109[33] = v93[2];
    *&v109[17] = v93[1];
    *&v109[80] = 0;
    v109[88] = v28;
    v109[89] = v27;
    sub_27BDC(v108);
    v118 = *&v109[32];
    v119 = *&v109[48];
    v120[0] = *&v109[64];
    *(v120 + 11) = *&v109[75];
    v114 = *&v108[64];
    v115 = *&v108[80];
    v116 = *v109;
    v117 = *&v109[16];
    v110 = *v108;
    v111 = *&v108[16];
    v112 = *&v108[32];
    v113 = *&v108[48];
    sub_4FF4(&qword_56B80, &qword_40E88);
    sub_27BE8();
    sub_56BC(&qword_56B90, &qword_56B80, &qword_40E88, &protocol conformance descriptor for TupleView<A>);
    sub_3CDB4();
    sub_27B88(&v59);
    sub_27B88(&v76);
    v118 = v89;
    v119 = v90;
    v120[0] = v91[0];
    *(v120 + 11) = *(v91 + 11);
    v114 = v85;
    v115 = v86;
    v116 = v87;
    v117 = v88;
    v110 = v82;
    v111 = v83;
    v112 = *v84;
    v113 = *&v84[16];
    goto LABEL_18;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_26B0C@<X0>(uint64_t a3@<X8>)
{
  sub_3CCB4();
  if (qword_55980 != -1)
  {
    swift_once();
  }

  v4 = qword_572B8;
  result = sub_3CF84();
  *a3 = result;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7 & 1;
  *(a3 + 24) = v8;
  return result;
}

uint64_t sub_26BD4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MultiTaskingSectionViewModel(0);
  sub_27124(&qword_56480, type metadata accessor for MultiTaskingSectionViewModel, &unk_41B80);
  sub_3C994();
  v2 = [objc_opt_self() currentDevice];
  [v2 orientation];

  swift_getKeyPath();
  swift_getKeyPath();
  return sub_3C8A4();
}

void sub_26D14(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  *a2 = v3;
}

uint64_t sub_26D94(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_3C8A4();
}

uint64_t sub_26E04@<X0>(uint64_t *a1@<X8>)
{
  result = sub_3CBE4();
  *a1 = result;
  return result;
}

id sub_26E5C(uint64_t a1, uint64_t a2, char a3)
{
  type metadata accessor for MultiTaskingSectionViewModel(0);
  sub_27124(&qword_56480, type metadata accessor for MultiTaskingSectionViewModel, &unk_41B80);
  v3 = sub_3C994();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  if (v9 > 1u || v9)
  {
    return sub_3CCB4();
  }

  v4 = sub_3C994();
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v6 = result;
    deviceSupportsEnhancedMultitasking = MobileGestalt_get_deviceSupportsEnhancedMultitasking();

    if (deviceSupportsEnhancedMultitasking)
    {

      return sub_3CCB4();
    }

    result = MobileGestalt_get_current_device();
    if (result)
    {
      v8 = result;

      MobileGestalt_get_deviceSupportsSingleDisplayEnhancedMultitasking();
      return sub_3CCB4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_2706C()
{
  result = qword_56AA8;
  if (!qword_56AA8)
  {
    sub_5674(&qword_56A98, &qword_40BC0);
    sub_27A60(&qword_56AB0, &qword_56AB8, &qword_40BC8, &protocol conformance descriptor for <A> A?);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56AA8);
  }

  return result;
}

uint64_t sub_27124(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2716C()
{

  sub_11ABC(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_271B8(uint64_t a1, uint64_t a2, char a3)
{
  v3 = sub_3C6F4();
  v54 = *(v3 - 8);
  v55 = v3;
  __chkstk_darwin(v3);
  v53 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3C704();
  v51 = *(v5 - 8);
  v52 = v5;
  __chkstk_darwin(v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3C724();
  __chkstk_darwin(v8 - 8);
  v9 = sub_4FF4(&qword_56188, &qword_3F650);
  __chkstk_darwin(v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_4FF4(&qword_56AD0, &qword_40BE8);
  __chkstk_darwin(v12 - 8);
  v14 = &v46 - v13;
  v15 = sub_3C744();
  v49 = *(v15 - 8);
  v50 = v15;
  v16 = __chkstk_darwin(v15);
  v47 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v48 = &v46 - v18;
  v19 = sub_3C7E4();
  __chkstk_darwin(v19 - 8);
  v20 = sub_3D4B4();
  __chkstk_darwin(v20 - 8);
  type metadata accessor for MultiTaskingSectionViewModel(0);
  sub_27124(&qword_56480, type metadata accessor for MultiTaskingSectionViewModel, &unk_41B80);
  v21 = sub_3C994();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  v22 = v56;
  sub_3D4A4();
  if (qword_55980 != -1)
  {
    swift_once();
  }

  v23 = 0xD000000000000028;
  v24 = qword_572B8;
  sub_3C7D4();
  v25._countAndFlagsBits = sub_3D504();
  if (v22 == 2)
  {
    v26 = "ndows-ipad1240f36f/ipados";
    goto LABEL_7;
  }

  if (v22 == 3)
  {
    v26 = "Full-Screen-Apps-Light";
    v23 = 0xD000000000000059;
LABEL_7:
    v56 = 23328;
    v57 = 0xE200000000000000;
    sub_3D534(v25);

    v58._countAndFlagsBits = 10333;
    v58._object = 0xE200000000000000;
    sub_3D534(v58);
    v59._object = (v26 | 0x8000000000000000);
    v59._countAndFlagsBits = v23;
    sub_3D534(v59);

    v60._countAndFlagsBits = 41;
    v60._object = 0xE100000000000000;
    sub_3D534(v60);
    v27 = sub_3C7C4();
    (*(*(v27 - 8) + 56))(v11, 1, 1, v27);
    (*(v51 + 104))(v7, enum case for AttributedString.MarkdownParsingOptions.InterpretedSyntax.full(_:), v52);
    (*(v54 + 104))(v53, enum case for AttributedString.MarkdownParsingOptions.FailurePolicy.throwError(_:), v55);
    sub_3C714();
    sub_3C734();
    v28 = v49;
    v29 = v50;
    (*(v49 + 56))(v14, 0, 1, v50);
    v30 = v48;
    (*(v28 + 32))(v48, v14, v29);
    sub_3CCB4();
    v31 = sub_3CF84();
    v33 = v32;
    v35 = v34;
    (*(v28 + 16))(v47, v30, v29);
    v36 = sub_3CF94();
    v38 = v37;
    v40 = v39;
    v41 = sub_3CF44();
    v54 = v42;
    v55 = v41;
    LODWORD(v53) = v43;
    v52 = v44;
    sub_BAF8(v36, v38, v40 & 1);

    sub_BAF8(v31, v33, v35 & 1);

    (*(v28 + 8))(v48, v29);
    return v55;
  }

  sub_3CCB4();
  return sub_3CF84();
}

uint64_t sub_27984(uint64_t a1, uint64_t a2)
{
  v4 = sub_4FF4(&qword_56AD8, &qword_40C80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_27A0C()
{
  result = qword_56B48;
  if (!qword_56B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56B48);
  }

  return result;
}

uint64_t sub_27A60(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_5674(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_27AC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_3CBE4();
  *a1 = result;
  return result;
}

uint64_t sub_27B18(uint64_t a1, uint64_t a2)
{
  v4 = sub_4FF4(&qword_56B18, &qword_40D38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_27BE8()
{
  result = qword_56B88;
  if (!qword_56B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56B88);
  }

  return result;
}

void *sub_27C88(uint64_t a1, uint64_t a2)
{
  v8 = sub_3CDA4();
  __chkstk_darwin(v8);
  (*(*(a2 - 8) + 16))(&v11 - v9, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_3CDB4();
}

void *sub_27D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_3CDA4();
  __chkstk_darwin(v8);
  (*(*(a3 - 8) + 16))(&v11 - v9, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_3CDB4();
}

id sub_27E78()
{
  v0 = objc_allocWithZone(type metadata accessor for MultitaskingWindowManagementViewModel(0));

  return [v0 init];
}

void sub_27EE8(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_3CC54();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v2 + 8);
  v8 = *v2;
  v24 = *v2;
  if (v25 == 1)
  {
    v23[0] = v8;
  }

  else
  {

    sub_3D604();
    v9 = sub_3CE74();
    sub_3C844();

    sub_3CC44();
    swift_getAtKeyPath();
    sub_11A14(&v24, &qword_55F08, &qword_3F140);
    (*(v5 + 8))(v7, v4);
  }

  sub_4FF4(&qword_56A88, &qword_40BB0);
  v10 = swift_allocBox();
  type metadata accessor for MultitaskingAndGesturesSettingsListViewModel(0);
  sub_2CBFC(&qword_55EE0, type metadata accessor for MultitaskingAndGesturesSettingsListViewModel, &unk_3EF50);
  v11 = sub_3D304();
  __chkstk_darwin(v11);
  v23[-2] = v10;
  v23[-1] = v2;
  sub_4FF4(&qword_56BB0, &qword_40FE8);
  sub_56BC(&qword_56BB8, &qword_56BB0, &qword_40FE8, &protocol conformance descriptor for TupleView<A>);
  sub_3D2D4();
  v12 = v2[2];
  v13 = v2[3];
  v14 = *(v2 + 32);
  type metadata accessor for MultitaskingWindowManagementViewModel(0);
  sub_2CBFC(&qword_56BC0, type metadata accessor for MultitaskingWindowManagementViewModel, &unk_3EA88);
  v15 = sub_3C994();
  v16 = sub_3C854();
  v17 = (a1 + *(sub_4FF4(&qword_56BC8, &qword_40FF0) + 36));
  *v17 = v16;
  v17[1] = v15;
  v18 = [objc_opt_self() defaultCenter];
  v19 = sub_4FF4(&qword_56BD0, &qword_40FF8);
  sub_3D644();

  v20 = swift_allocObject();
  v21 = *(v2 + 1);
  *(v20 + 16) = *v2;
  *(v20 + 32) = v21;
  *(v20 + 48) = *(v2 + 32);
  sub_E1E8(&v24, v23, &qword_55F08, &qword_3F140);
  sub_11AB8(v12, v13, v14);

  v22 = (a1 + *(v19 + 56));
  *v22 = sub_2A0D8;
  v22[1] = v20;
}

uint64_t sub_282EC@<X0>(uint64_t a3@<X8>)
{
  v117 = a3;
  HIBYTE(v111[1]) = -18;
  v112 = 0xEC00000073707041;
  strcpy(v111, "windowedenApps");
  v3 = sub_4FF4(&qword_56AE0, &qword_40C88);
  v4 = *(v3 - 8);
  v133 = v3;
  v134 = v4;
  __chkstk_darwin(v3);
  v132 = &v109 - v5;
  v6 = sub_4FF4(&qword_56BD8, &qword_41050);
  v7 = __chkstk_darwin(v6 - 8);
  v116 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v115 = &v109 - v10;
  v11 = __chkstk_darwin(v9);
  v114 = &v109 - v12;
  v13 = __chkstk_darwin(v11);
  v113 = &v109 - v14;
  v15 = __chkstk_darwin(v13);
  v123 = &v109 - v16;
  __chkstk_darwin(v15);
  v122 = &v109 - v17;
  v18 = sub_4FF4(&qword_56A88, &qword_40BB0);
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v109 - v23;
  v25 = sub_4FF4(&qword_56BE0, &qword_41058);
  v26 = v25 - 8;
  v27 = __chkstk_darwin(v25);
  v121 = &v109 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = &v109 - v29;
  v31 = sub_4FF4(&qword_56BE8, &qword_41060);
  v32 = v31[9];
  *&v30[v32] = swift_getKeyPath();
  sub_4FF4(&qword_56BF0, &qword_41098);
  swift_storeEnumTagMultiPayload();
  v33 = &v30[v31[10]];
  v138 = 0;
  sub_3D184();
  v34 = v136;
  *v33 = v135;
  *(v33 + 1) = v34;
  *&v30[v31[11]] = 0x4080B80000000000;
  sub_292F8(v30);
  *&v30[*(sub_4FF4(&qword_56BF8, &qword_410A0) + 36)] = 256;
  LOBYTE(v31) = sub_3CEB4();
  sub_3C924();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = &v30[*(sub_4FF4(&qword_56C00, &qword_410A8) + 36)];
  *v43 = v31;
  *(v43 + 1) = v36;
  *(v43 + 2) = v38;
  *(v43 + 3) = v40;
  *(v43 + 4) = v42;
  v43[40] = 0;
  v44 = swift_projectBox();
  v45 = *(v19 + 16);
  v128 = v19 + 16;
  v129 = v44;
  v127 = v45;
  (v45)(v22);
  sub_3D2F4();
  v46 = *(v19 + 8);
  v125 = v22;
  v46(v22, v18);
  swift_getKeyPath();
  sub_3D314();

  v126 = v24;
  v124 = v18;
  v130 = v46;
  v131 = v19 + 8;
  v46(v24, v18);
  v47 = v136;
  v48 = v137;
  v49 = *(v26 + 44);
  v120 = v30;
  v50 = &v30[v49];
  *v50 = v135;
  *(v50 + 1) = v47;
  *(v50 + 8) = v48;
  v51 = type metadata accessor for MultitaskingWindowManagementViewModel(0);
  v52 = sub_2CBFC(&qword_56BC0, type metadata accessor for MultitaskingWindowManagementViewModel, &unk_3EA88);
  v53 = sub_3C994();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  v119 = v52;
  v118 = v51;
  if (v135 && v135 == 1)
  {
  }

  else
  {
    v54 = sub_3D804();

    if ((v54 & 1) == 0)
    {
      v66 = 1;
      v65 = v122;
      v63 = v133;
      goto LABEL_7;
    }
  }

  v55 = sub_3C9A4();
  swift_getKeyPath();
  sub_3CA84();

  v56 = v132;
  sub_3D224();
  v58 = v124;
  v57 = v125;
  v127(v125, v129, v124);
  v59 = v126;
  sub_3D2F4();
  v60 = v130;
  v130(v57, v58);
  swift_getKeyPath();
  sub_3D314();

  v60(v59, v58);
  v61 = v136;
  v62 = v137;
  v63 = v133;
  v64 = v56 + *(v133 + 36);
  *v64 = v135;
  *(v64 + 8) = v61;
  *(v64 + 16) = v62;
  *(v64 + 17) = 7;
  v65 = v122;
  sub_17214(v56, v122, &qword_56AE0, &qword_40C88);
  v66 = 0;
LABEL_7:
  v67 = *(v134 + 56);
  v134 += 56;
  v67(v65, v66, 1, v63);
  v68 = sub_3C994();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  if (!v135 || v135 == 1)
  {
    v69 = sub_3D804();

    if ((v69 & 1) == 0)
    {
      v82 = 1;
      v81 = v123;
      v79 = v133;
      goto LABEL_13;
    }
  }

  else
  {
  }

  v70 = sub_3C9A4();
  swift_getKeyPath();
  sub_3CA84();

  v71 = v132;
  sub_3D224();
  v73 = v124;
  v72 = v125;
  v127(v125, v129, v124);
  v110 = v67;
  v74 = v126;
  sub_3D2F4();
  v75 = v130;
  v130(v72, v73);
  swift_getKeyPath();
  sub_3D314();

  v76 = v74;
  v67 = v110;
  v75(v76, v73);
  v77 = v136;
  v78 = v137;
  v79 = v133;
  v80 = v71 + *(v133 + 36);
  *v80 = v135;
  *(v80 + 8) = v77;
  *(v80 + 16) = v78;
  *(v80 + 17) = 8;
  v81 = v123;
  sub_17214(v71, v123, &qword_56AE0, &qword_40C88);
  v82 = 0;
LABEL_13:
  v67(v81, v82, 1, v79);
  v83 = sub_3C994();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  if (v135 && v135 == 1)
  {
    goto LABEL_18;
  }

  v84 = sub_3D804();

  if ((v84 & 1) == 0)
  {
    v85 = sub_3C994();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_3C894();

    if (v135)
    {
      v111[1] = 0xEC00000073707041;
      v112 = 0xEC00000072656761;
      if (v135 != 1)
      {
LABEL_18:

        goto LABEL_19;
      }
    }

    else
    {
      v111[0] = 0x657263536C6C7566;
    }

    v108 = sub_3D804();

    if ((v108 & 1) == 0)
    {
      v98 = 1;
      v97 = v113;
      v94 = v133;
      goto LABEL_20;
    }
  }

LABEL_19:
  v86 = sub_3C9A4();
  swift_getKeyPath();
  sub_3CA84();

  v87 = v132;
  sub_3D224();
  v89 = v124;
  v88 = v125;
  v127(v125, v129, v124);
  v90 = v126;
  sub_3D2F4();
  v91 = v130;
  v130(v88, v89);
  swift_getKeyPath();
  sub_3D314();

  v91(v90, v89);
  v92 = v136;
  v93 = v137;
  v94 = v133;
  v95 = &v87[*(v133 + 36)];
  *v95 = v135;
  *(v95 + 1) = v92;
  v95[16] = v93;
  v95[17] = 9;
  v96 = v87;
  v97 = v113;
  sub_17214(v96, v113, &qword_56AE0, &qword_40C88);
  v98 = 0;
LABEL_20:
  v67(v97, v98, 1, v94);
  v99 = v121;
  sub_E1E8(v120, v121, &qword_56BE0, &qword_41058);
  v100 = v122;
  v101 = v114;
  sub_E1E8(v122, v114, &qword_56BD8, &qword_41050);
  v102 = v123;
  v103 = v115;
  sub_E1E8(v123, v115, &qword_56BD8, &qword_41050);
  v104 = v116;
  sub_E1E8(v97, v116, &qword_56BD8, &qword_41050);
  v105 = v117;
  sub_E1E8(v99, v117, &qword_56BE0, &qword_41058);
  v106 = sub_4FF4(&qword_56C08, &qword_41120);
  sub_E1E8(v101, v105 + v106[12], &qword_56BD8, &qword_41050);
  sub_E1E8(v103, v105 + v106[16], &qword_56BD8, &qword_41050);
  sub_E1E8(v104, v105 + v106[20], &qword_56BD8, &qword_41050);
  sub_11A14(v97, &qword_56BD8, &qword_41050);
  sub_11A14(v102, &qword_56BD8, &qword_41050);
  sub_11A14(v100, &qword_56BD8, &qword_41050);
  sub_11A14(v120, &qword_56BE0, &qword_41058);
  sub_11A14(v104, &qword_56BD8, &qword_41050);
  sub_11A14(v103, &qword_56BD8, &qword_41050);
  sub_11A14(v101, &qword_56BD8, &qword_41050);
  return sub_11A14(v121, &qword_56BE0, &qword_41058);
}

uint64_t sub_292F8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_3CCB4();
  v64 = v3;
  v65 = v2;
  v5 = v4;
  v66 = v6;
  type metadata accessor for MultitaskingWindowManagementViewModel(0);
  sub_2CBFC(&qword_56BC0, type metadata accessor for MultitaskingWindowManagementViewModel, &unk_3EA88);
  v7 = sub_3CB44();
  v62 = v8;
  v63 = v7;
  KeyPath = swift_getKeyPath();
  type metadata accessor for CGSize(0);
  v141 = 0;
  v140 = 0;
  sub_3D184();
  v9 = v148;
  v60 = v149;
  v59 = v5 & 1;
  v156 = 0;
  sub_3D324();
  sub_3CB14();
  *&v138[55] = v144;
  *&v138[71] = v145;
  *&v138[87] = v146;
  *&v138[103] = v147;
  *&v138[7] = 0u;
  *&v138[23] = v142;
  v139 = 1;
  *&v138[39] = v143;
  v10 = sub_3CCB4();
  v49 = v11;
  v50 = v10;
  v13 = v12;
  v58 = v14;
  v15 = sub_3CB44();
  v56 = v16;
  v57 = v15;
  v48 = swift_getKeyPath();
  v119 = 0;
  v118 = 0;
  sub_3D184();
  v17 = v148;
  v55 = v149;
  v135 = 0;
  sub_3D324();
  sub_3CB14();
  *&v132[55] = v151;
  *&v132[71] = v152;
  *&v132[87] = v153;
  *&v132[103] = v154;
  *&v132[7] = v148;
  *&v132[23] = v149;
  v133 = 1;
  *&v132[39] = v150;
  v18 = sub_3CCB4();
  v47 = v19;
  v21 = v20;
  v54 = v22;
  v23 = sub_3CB44();
  v52 = v24;
  v53 = v23;
  v51 = swift_getKeyPath();
  v105 = 0;
  v104 = 0;
  sub_3D184();
  v25 = v120;
  LOBYTE(v71) = 0;
  *(&v71 + 1) = v158[0];
  DWORD1(v71) = *(v158 + 3);
  *(&v71 + 1) = v65;
  *&v72 = v64;
  BYTE8(v72) = v59;
  HIDWORD(v72) = *&v157[3];
  *(&v72 + 9) = *v157;
  *v73 = v66;
  strcpy(&v73[8], "fullScreenApps");
  v73[23] = -18;
  *&v73[24] = v63;
  *&v74 = v62;
  *(&v74 + 1) = KeyPath;
  v75[0] = 0;
  *&v75[4] = *&v155[3];
  *&v75[1] = *v155;
  *&v75[8] = v148;
  *&v75[24] = v149;
  *&v67[39] = *v73;
  *&v67[23] = v72;
  *&v67[7] = v71;
  *&v67[103] = *&v75[16];
  *&v67[87] = *v75;
  *&v67[71] = v74;
  *&v67[55] = *&v73[16];
  LOBYTE(v76) = 1;
  DWORD1(v76) = *&v137[3];
  *(&v76 + 1) = *v137;
  *(&v76 + 1) = v50;
  *&v77 = v49;
  BYTE8(v77) = v13 & 1;
  HIDWORD(v77) = *&v136[3];
  *(&v77 + 9) = *v136;
  *v78 = v58;
  strcpy(&v78[8], "windowedApps");
  v78[21] = 0;
  *&v78[22] = -5120;
  *&v78[24] = v57;
  *&v79 = v56;
  *(&v79 + 1) = v48;
  v80[0] = 0;
  *&v80[4] = *&v134[3];
  *&v80[1] = *v134;
  *&v80[8] = v148;
  *&v80[24] = v149;
  LOBYTE(v81) = 2;
  DWORD1(v81) = *&v70[3];
  *(&v81 + 1) = *v70;
  *(&v81 + 1) = v18;
  *&v82 = v47;
  BYTE8(v82) = v21 & 1;
  HIDWORD(v82) = *&v69[3];
  *(&v82 + 9) = *v69;
  DWORD1(v86) = *&v68[3];
  *(&v86 + 1) = *v68;
  *(a1 + 8) = 1;
  *(a1 + 120) = *&v67[111];
  *(a1 + 248) = *&v138[111];
  v26 = v77;
  v27 = *v78;
  *(a1 + 264) = v76;
  *(a1 + 280) = v26;
  v28 = *&v78[16];
  v29 = v79;
  v30 = *&v80[16];
  *(a1 + 344) = *v80;
  *(a1 + 360) = v30;
  *(a1 + 312) = v28;
  *(a1 + 328) = v29;
  *(a1 + 296) = v27;
  *(a1 + 496) = *&v132[111];
  v31 = *v132;
  v32 = *&v132[16];
  v33 = *&v132[48];
  *(a1 + 417) = *&v132[32];
  *(a1 + 433) = v33;
  *(a1 + 385) = v31;
  *(a1 + 401) = v32;
  v34 = *&v132[64];
  v35 = *&v132[96];
  *(a1 + 465) = *&v132[80];
  *(a1 + 481) = v35;
  *(a1 + 449) = v34;
  *&v83 = v54;
  *(&v83 + 1) = 0x6E614D6567617473;
  *(a1 + 256) = 0xBFF0000000000000;
  *(a1 + 504) = 0xBFF0000000000000;
  *&v84 = 0xEC00000072656761;
  *(&v84 + 1) = v53;
  *&v85 = v52;
  *(&v85 + 1) = v51;
  LOBYTE(v86) = 0;
  *(&v86 + 1) = 0;
  *&v87 = 0;
  *(&v87 + 1) = v25;
  *a1 = 0;
  *(a1 + 57) = *&v67[48];
  *(a1 + 41) = *&v67[32];
  *(a1 + 25) = *&v67[16];
  *(a1 + 9) = *v67;
  *(a1 + 105) = *&v67[96];
  *(a1 + 89) = *&v67[80];
  *(a1 + 73) = *&v67[64];
  *(a1 + 128) = 0;
  *(a1 + 136) = 1;
  v36 = *v138;
  v37 = *&v138[16];
  v38 = *&v138[32];
  *(a1 + 185) = *&v138[48];
  *(a1 + 169) = v38;
  *(a1 + 153) = v37;
  *(a1 + 137) = v36;
  v39 = *&v138[64];
  v40 = *&v138[80];
  *(a1 + 233) = *&v138[96];
  *(a1 + 217) = v40;
  *(a1 + 201) = v39;
  *(a1 + 376) = 0;
  *(a1 + 384) = 1;
  v41 = v82;
  *(a1 + 512) = v81;
  *(a1 + 528) = v41;
  v42 = v83;
  v43 = v84;
  v44 = v87;
  *(a1 + 592) = v86;
  *(a1 + 608) = v44;
  v45 = v85;
  *(a1 + 560) = v43;
  *(a1 + 576) = v45;
  *(a1 + 544) = v42;
  *(a1 + 624) = 0;
  *(a1 + 632) = 1;
  v88 = 2;
  *&v89[3] = *&v70[3];
  *v89 = *v70;
  v90 = v18;
  v91 = v47;
  v92 = v21 & 1;
  *&v93[3] = *&v69[3];
  *v93 = *v69;
  v94 = v54;
  strcpy(v95, "stageManager");
  HIBYTE(v95[6]) = 0;
  v95[7] = -5120;
  v96 = v53;
  v97 = v52;
  v98 = v51;
  *&v100[3] = *&v68[3];
  *v100 = *v68;
  v103 = v25;
  v99 = 0;
  v101 = 0;
  v102 = 0;
  sub_2C1C0(&v71, &v118);
  sub_2C1C0(&v76, &v118);
  sub_2C1C0(&v81, &v118);
  sub_2C21C(&v88);
  LOBYTE(v104) = 1;
  *(&v104 + 1) = *v137;
  HIDWORD(v104) = *&v137[3];
  v105 = v50;
  v106 = v49;
  v107 = v13 & 1;
  *v108 = *v136;
  *&v108[3] = *&v136[3];
  v109 = v58;
  strcpy(v110, "windowedApps");
  HIBYTE(v110[6]) = 0;
  v110[7] = -5120;
  v111 = v57;
  v112 = v56;
  v113 = v48;
  v114 = 0;
  *&v115[3] = *&v134[3];
  *v115 = *v134;
  v116 = v17;
  v117 = v55;
  sub_2C21C(&v104);
  LOBYTE(v118) = 0;
  *(&v118 + 1) = v158[0];
  HIDWORD(v118) = *(v158 + 3);
  v119 = v65;
  v120 = v64;
  v121 = v59;
  *v122 = *v157;
  *&v122[3] = *&v157[3];
  v123 = v66;
  strcpy(v124, "fullScreenApps");
  v124[15] = -18;
  v125 = v63;
  v126 = v62;
  v127 = KeyPath;
  v128 = 0;
  *&v129[3] = *&v155[3];
  *v129 = *v155;
  v130 = v9;
  v131 = v60;
  return sub_2C21C(&v118);
}

uint64_t sub_29B7C@<X0>(uint64_t a1@<X8>)
{
  sub_3CCB4();
  if (qword_55980 != -1)
  {
    swift_once();
  }

  v2 = qword_572B8;
  result = sub_3CF84();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_29C84@<X0>(uint64_t a1@<X8>)
{
  sub_3CCB4();
  if (qword_55980 != -1)
  {
    swift_once();
  }

  v2 = qword_572B8;
  result = sub_3CF84();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

void sub_29D78(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  *a4 = v5;
}

uint64_t sub_29E08(char *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;
  return sub_3C8A4();
}

uint64_t sub_29E74@<X0>(uint64_t a1@<X8>)
{
  sub_3CCB4();
  if (qword_55980 != -1)
  {
    swift_once();
  }

  v2 = qword_572B8;
  result = sub_3CF84();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_29F54(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MultitaskingWindowManagementViewModel(0);
  sub_2CBFC(&qword_56BC0, type metadata accessor for MultitaskingWindowManagementViewModel, &unk_3EA88);
  sub_3C994();
  v2 = [objc_opt_self() currentDevice];
  [v2 orientation];

  swift_getKeyPath();
  swift_getKeyPath();
  return sub_3C8A4();
}

uint64_t sub_2A094()
{

  sub_11ABC(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 49, 7);
}

Swift::Int sub_2A0F8()
{
  v1 = *v0;
  sub_3D844();
  sub_3D854(v1);
  return sub_3D864();
}

Swift::Int sub_2A16C(uint64_t a1)
{
  v2 = *v1;
  sub_3D844();
  sub_3D854(v2);
  return sub_3D864();
}

uint64_t sub_2A1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2CAF8();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_2A21C()
{
  sub_2C270();
  sub_3CC64();
  return v1;
}

uint64_t sub_2A258@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_3CC54();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_4FF4(&qword_56BF0, &qword_41098);
  __chkstk_darwin(v9);
  v11 = &v14 - v10;
  sub_E1E8(v2 + *(a1 + 36), &v14 - v10, &qword_56BF0, &qword_41098);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_17214(v11, a2, &qword_56C10, &qword_41200);
  }

  sub_3D604();
  v13 = sub_3CE74();
  sub_3C844();

  sub_3CC44();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2A43C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v93 = a2;
  v94 = a1;
  v4 = a1 - 8;
  v86 = *(a1 - 8);
  __chkstk_darwin(a1);
  v81 = v5;
  v83 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v4 + 24);
  v7 = *(v4 + 32);
  v8 = sub_3D244();
  sub_5674(&qword_56CC0, &qword_41388);
  v73 = v8;
  v9 = sub_3CAA4();
  v80 = v6;
  v79 = v7;
  v75 = sub_3D1F4();
  v10 = sub_3CAA4();
  v74 = v9;
  v76 = v10;
  v77 = sub_3CDC4();
  v11 = sub_3D134();
  v82 = *(v11 - 8);
  __chkstk_darwin(v11);
  v78 = &v70 - v12;
  sub_5674(&qword_56CC8, &qword_41390);
  v84 = v11;
  v13 = sub_3CAA4();
  v89 = *(v13 - 8);
  __chkstk_darwin(v13);
  v85 = &v70 - v14;
  sub_5674(&qword_56CD0, &qword_41398);
  v90 = v13;
  v15 = sub_3CAA4();
  v91 = *(v15 - 8);
  v92 = v15;
  v16 = __chkstk_darwin(v15);
  v87 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v88 = &v70 - v18;
  v19 = sub_3CE24();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v72 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_4FF4(&qword_56CD8, &qword_413A0);
  __chkstk_darwin(v22);
  v24 = &v70 - v23;
  v25 = sub_4FF4(&qword_56C10, &qword_41200);
  v26 = __chkstk_darwin(v25 - 8);
  v28 = &v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v26);
  v31 = &v70 - v30;
  __chkstk_darwin(v29);
  v33 = (&v70 - v32);
  v34 = (v3 + *(v4 + 48));
  v35 = *v34;
  v36 = v34[1];
  v107 = v35;
  v108 = v36;
  sub_4FF4(&qword_56CE0, &qword_413A8);
  v37 = sub_3D194();
  if (v106 >= *(v3 + *(v4 + 52)))
  {
    v71 = v3;
    sub_2A258(v94, v33);
    (*(v20 + 104))(v31, enum case for UserInterfaceSizeClass.compact(_:), v19);
    (*(v20 + 56))(v31, 0, 1, v19);
    v39 = *(v22 + 48);
    sub_E1E8(v33, v24, &qword_56C10, &qword_41200);
    sub_E1E8(v31, &v24[v39], &qword_56C10, &qword_41200);
    v40 = *(v20 + 48);
    if (v40(v24, 1, v19) == 1)
    {
      sub_11A14(v31, &qword_56C10, &qword_41200);
      sub_11A14(v33, &qword_56C10, &qword_41200);
      if (v40(&v24[v39], 1, v19) == 1)
      {
        v37 = sub_11A14(v24, &qword_56C10, &qword_41200);
        v38 = 1;
LABEL_10:
        v3 = v71;
        goto LABEL_11;
      }
    }

    else
    {
      sub_E1E8(v24, v28, &qword_56C10, &qword_41200);
      if (v40(&v24[v39], 1, v19) != 1)
      {
        v41 = v72;
        (*(v20 + 32))(v72, &v24[v39], v19);
        sub_2CBFC(&qword_56D10, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
        v38 = sub_3D494();
        v42 = *(v20 + 8);
        v42(v41, v19);
        sub_11A14(v31, &qword_56C10, &qword_41200);
        sub_11A14(v33, &qword_56C10, &qword_41200);
        v42(v28, v19);
        v37 = sub_11A14(v24, &qword_56C10, &qword_41200);
        goto LABEL_10;
      }

      sub_11A14(v31, &qword_56C10, &qword_41200);
      sub_11A14(v33, &qword_56C10, &qword_41200);
      (*(v20 + 8))(v28, v19);
    }

    v37 = sub_11A14(v24, &qword_56CD8, &qword_413A0);
    v38 = 0;
    goto LABEL_10;
  }

  v38 = 1;
LABEL_11:
  __chkstk_darwin(v37);
  v43 = v80;
  v44 = v79;
  *(&v70 - 4) = v80;
  *(&v70 - 3) = v44;
  LODWORD(v72) = v38 & 1;
  *(&v70 - 16) = v38 & 1;
  *(&v70 - 1) = v3;
  WitnessTable = swift_getWitnessTable();
  v46 = sub_56BC(&qword_56CE8, &qword_56CC0, &qword_41388, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v104 = WitnessTable;
  v105 = v46;
  v73 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v47 = swift_getWitnessTable();
  v102 = swift_getWitnessTable();
  v103 = v46;
  v48 = swift_getWitnessTable();
  v100 = v47;
  v101 = v48;
  v49 = swift_getWitnessTable();
  v50 = v78;
  sub_3D124();
  v51 = v86;
  v52 = v83;
  v53 = v94;
  (*(v86 + 16))(v83, v3, v94);
  v54 = (*(v51 + 80) + 32) & ~*(v51 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = v43;
  *(v55 + 24) = v44;
  (*(v51 + 32))(v55 + v54, v52, v53);
  v107 = sub_2CB60;
  v108 = v55;
  sub_3D324();
  sub_4FF4(&qword_56CF0, &unk_413B0);
  v99 = v49;
  v56 = v84;
  v57 = swift_getWitnessTable();
  sub_56BC(&qword_56CF8, &qword_56CF0, &unk_413B0, &protocol conformance descriptor for GeometryReader<A>);
  v58 = v85;
  sub_3CFF4();

  (*(v82 + 8))(v50, v56);
  sub_3D354();
  LOBYTE(v107) = v72;
  v59 = sub_56BC(&qword_56D00, &qword_56CC8, &qword_41390, &protocol conformance descriptor for _BackgroundModifier<A>);
  v97 = v57;
  v98 = v59;
  v60 = v90;
  v61 = swift_getWitnessTable();
  v62 = v87;
  sub_3D094();

  (*(v89 + 8))(v58, v60);
  v63 = sub_56BC(&qword_56D08, &qword_56CD0, &qword_41398, &protocol conformance descriptor for _AnimationModifier<A>);
  v95 = v61;
  v96 = v63;
  v64 = v92;
  swift_getWitnessTable();
  v65 = v91;
  v66 = *(v91 + 16);
  v67 = v88;
  v66(v88, v62, v64);
  v68 = *(v65 + 8);
  v68(v62, v64);
  v66(v93, v67, v64);
  return (v68)(v67, v64);
}

uint64_t sub_2B070@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v57 = a2;
  v56 = a1;
  v61 = a5;
  v7 = sub_3D1F4();
  v53 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v51 - v8;
  sub_5674(&qword_56CC0, &qword_41388);
  v62 = v7;
  v10 = sub_3CAA4();
  v55 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v54 = &v51 - v14;
  v15 = sub_3D244();
  v52 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v51 - v16;
  v63 = v18;
  v19 = sub_3CAA4();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v51 - v24;
  v58 = v10;
  v26 = sub_3CDC4();
  v59 = *(v26 - 8);
  v60 = v26;
  __chkstk_darwin(v26);
  v64 = &v51 - v27;
  if (v56)
  {
    v28 = sub_3CCE4();
    __chkstk_darwin(v28);
    *(&v51 - 4) = a3;
    *(&v51 - 3) = a4;
    *(&v51 - 2) = v57;
    sub_3D234();
    swift_getKeyPath();
    v79 = 1;
    v29 = v63;
    WitnessTable = swift_getWitnessTable();
    sub_3D034();

    (*(v52 + 8))(v17, v29);
    v31 = sub_56BC(&qword_56CE8, &qword_56CC0, &qword_41388, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    v67 = WitnessTable;
    v68 = v31;
    v57 = swift_getWitnessTable();
    v32 = *(v20 + 16);
    v32(v25, v23, v19);
    v33 = *(v20 + 8);
    v33(v23, v19);
    v32(v23, v25, v19);
    v65 = swift_getWitnessTable();
    v66 = v31;
    swift_getWitnessTable();
    sub_27C88(v23, v19);
    v33(v23, v19);
    v33(v25, v19);
  }

  else
  {
    v34 = sub_3CC84();
    __chkstk_darwin(v34);
    *(&v51 - 4) = a3;
    *(&v51 - 3) = a4;
    *(&v51 - 2) = v57;
    sub_3D1E4();
    swift_getKeyPath();
    v79 = 0;
    v35 = v62;
    v36 = swift_getWitnessTable();
    sub_3D034();

    (*(v53 + 8))(v9, v35);
    v37 = sub_56BC(&qword_56CE8, &qword_56CC0, &qword_41388, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    v77 = v36;
    v78 = v37;
    v38 = v58;
    v57 = swift_getWitnessTable();
    v39 = v55;
    v40 = *(v55 + 16);
    v41 = v54;
    v40(v54, v13, v38);
    v42 = *(v39 + 8);
    v42(v13, v38);
    v40(v13, v41, v38);
    v75 = swift_getWitnessTable();
    v76 = v37;
    swift_getWitnessTable();
    sub_27D80(v13, v19, v38);
    v42(v13, v38);
    v42(v41, v38);
  }

  v43 = swift_getWitnessTable();
  v44 = sub_56BC(&qword_56CE8, &qword_56CC0, &qword_41388, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v73 = v43;
  v74 = v44;
  v45 = swift_getWitnessTable();
  v71 = swift_getWitnessTable();
  v72 = v44;
  v46 = swift_getWitnessTable();
  v69 = v45;
  v70 = v46;
  v47 = v60;
  swift_getWitnessTable();
  v48 = v59;
  v49 = v64;
  (*(v59 + 16))(v61, v64, v47);
  return (*(v48 + 8))(v49, v47);
}

uint64_t sub_2B92C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  __chkstk_darwin(a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 16);
  v8(v7);
  (v8)(a3, v7, a2);
  return (*(v5 + 8))(v7, a2);
}

double sub_2BA20@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a4;
  v33 = a1;
  v34 = a3;
  v30 = a2;
  v31 = a5;
  v8 = sub_3CA34();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v28[0] = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ButtonLayoutContainer(0, a3, a4, v11);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v28 - v15;
  v35 = sub_3D0D4();
  v29 = *(v13 + 16);
  v29(v16, a2, v12);
  v17 = v8;
  (*(v9 + 16))(v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v33, v8);
  v18 = *(v13 + 80);
  v19 = (v18 + 32) & ~v18;
  v28[1] = v18 | 7;
  v28[2] = v19 + v14;
  v20 = (v19 + v14 + *(v9 + 80)) & ~*(v9 + 80);
  v21 = swift_allocObject();
  v22 = v32;
  *(v21 + 16) = v34;
  *(v21 + 24) = v22;
  v23 = *(v13 + 32);
  v23(v21 + v19, v16, v12);
  (*(v9 + 32))(v21 + v20, v28[0], v17);
  v37 = v35;
  v38 = sub_2CE9C;
  v39 = v21;
  v40 = 0;
  v41 = 0;
  sub_3CA24();
  v36 = v24;
  v29(v16, v30, v12);
  v25 = swift_allocObject();
  v26 = v32;
  *(v25 + 16) = v34;
  *(v25 + 24) = v26;
  v23(v25 + v19, v16, v12);
  sub_4FF4(&qword_56A68, &qword_40A38);
  sub_23D2C();
  sub_2D1E0();
  sub_3D084();

  return result;
}

uint64_t sub_2BD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_3CA24();
  type metadata accessor for ButtonLayoutContainer(0, a3, a4, v6);
  sub_4FF4(&qword_56CE0, &qword_413A8);
  return sub_3D1A4();
}

uint64_t sub_2BDD8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for ButtonLayoutContainer(0, a4, a5, a4);
  sub_4FF4(&qword_56CE0, &qword_413A8);
  return sub_3D1A4();
}

void sub_2BE5C(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  *a2 = v3;
}

uint64_t sub_2BEE0(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_3C8A4();
}

uint64_t sub_2BF78(uint64_t a1)
{
  v2 = sub_4FF4(&qword_56C10, &qword_41200);
  __chkstk_darwin(v2 - 8);
  sub_E1E8(a1, &v5 - v3, &qword_56C10, &qword_41200);
  return sub_3CBB4();
}

void *sub_2C124@<X0>(_BYTE *a1@<X8>)
{
  sub_2C270();
  result = sub_3CC64();
  *a1 = v3;
  return result;
}

unint64_t sub_2C270()
{
  result = qword_56C18[0];
  if (!qword_56C18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_56C18);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MultiTaskingSectionViewModel.DisplaySection(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MultiTaskingSectionViewModel.DisplaySection(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_2C438(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_2C9B8(319);
    if (v2 <= 0x3F)
    {
      sub_2CA1C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2C4E0(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(sub_3CE24() - 8);
  if (v7 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = v7;
  }

  if (*(v8 + 84))
  {
    v10 = *(v8 + 64);
  }

  else
  {
    v10 = *(v8 + 64) + 1;
  }

  v11 = 8;
  if (v10 > 8)
  {
    v11 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(v8 + 80) & 0xF8 | 7;
  v13 = *(v6 + 64) + v12;
  v14 = v11 + 8;
  if (v9 < a2)
  {
    v15 = ((((v14 + (v13 & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
    v16 = v15 & 0xFFFFFFF8;
    if ((v15 & 0xFFFFFFF8) != 0)
    {
      v17 = 2;
    }

    else
    {
      v17 = a2 - v9 + 1;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    if (v19 > 1)
    {
      if (v19 == 2)
      {
        v20 = *(a1 + v15);
        if (!v20)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v20 = *(a1 + v15);
        if (!v20)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
      if (!v19)
      {
        goto LABEL_32;
      }

      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_32;
      }
    }

    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    v26 = v9 + (v23 | v22);
    return (v26 + 1);
  }

LABEL_32:
  if (v7 < 0x7FFFFFFE)
  {
    v25 = *(((v14 + ((a1 + v13) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v25 >= 0xFFFFFFFF)
    {
      LODWORD(v25) = -1;
    }

    v26 = v25 - 1;
    if (v26 < 0)
    {
      v26 = -1;
    }

    return (v26 + 1);
  }

  v24 = *(v6 + 48);

  return v24(a1, v7, v5);
}

void sub_2C71C(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v29 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_3CE24() - 8);
  v11 = *(v10 + 64);
  if (v9 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  else
  {
    v12 = v9;
  }

  v13 = *(v10 + 84) == 0;
  v14 = *(v8 + 64);
  v15 = *(v10 + 80) & 0xF8 | 7;
  v16 = v14 + v15;
  v17 = (v14 + v15) & ~v15;
  if (v13)
  {
    v18 = v11 + 1;
  }

  else
  {
    v18 = v11;
  }

  if (v18 <= 8)
  {
    v18 = 8;
  }

  v19 = v18 + 8;
  v20 = ((((v19 + v17) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v12 >= a3)
  {
    v23 = 0;
    v24 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (((((v19 + v17) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v21 = a3 - v12 + 1;
    }

    else
    {
      v21 = 2;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v24 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_22:
      if (v23 > 1)
      {
        if (v23 != 2)
        {
          *(a1 + v20) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_38;
        }

        *(a1 + v20) = 0;
      }

      else if (v23)
      {
        *(a1 + v20) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_38;
      }

      if (!a2)
      {
        return;
      }

LABEL_38:
      if (v9 < 0x7FFFFFFE)
      {
        v28 = ((v19 + ((a1 + v16) & ~v15)) & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v28 = (a2 - 0x7FFFFFFF);
          v28[1] = 0;
        }

        else
        {
          v28[1] = a2;
        }
      }

      else
      {
        v27 = *(v29 + 56);

        v27(a1, a2, v9, v7);
      }

      return;
    }
  }

  if (v20)
  {
    v25 = 1;
  }

  else
  {
    v25 = v24;
  }

  if (v20)
  {
    v26 = ~v12 + a2;
    bzero(a1, v20);
    *a1 = v26;
  }

  if (v23 > 1)
  {
    if (v23 == 2)
    {
      *(a1 + v20) = v25;
    }

    else
    {
      *(a1 + v20) = v25;
    }
  }

  else if (v23)
  {
    *(a1 + v20) = v25;
  }
}

void sub_2C9B8(uint64_t a1)
{
  if (!qword_56CA0)
  {
    sub_5674(&qword_56C10, &qword_41200);
    v1 = sub_3C974();
    if (!v2)
    {
      atomic_store(v1, &qword_56CA0);
    }
  }
}

void sub_2CA1C()
{
  if (!qword_56CA8)
  {
    v0 = sub_3D1C4();
    if (!v1)
    {
      atomic_store(v0, &qword_56CA8);
    }
  }
}

unint64_t sub_2CAF8()
{
  result = qword_56CB8;
  if (!qword_56CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56CB8);
  }

  return result;
}

double sub_2CB60@<D0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for ButtonLayoutContainer(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_2BA20(a1, v9, v6, v7, a3);
}

uint64_t sub_2CBFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2CC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for ButtonLayoutContainer(0, v5, *(v4 + 24), a4);
  v7 = *(*(v6 - 8) + 80);
  v8 = (v7 + 32) & ~v7;
  v20 = *(*(v6 - 8) + 64);
  v9 = sub_3CA34();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v19 = *(v10 + 64);
  v12 = v4 + v8;
  (*(*(v5 - 8) + 8))(v4 + v8, v5);
  v13 = *(v6 + 36);
  sub_4FF4(&qword_56BF0, &qword_41098);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_3CE24();
    v18 = *(v14 - 8);
    if (!(*(v18 + 48))(v12 + v13, 1, v14))
    {
      (*(v18 + 8))(v12 + v13, v14);
    }
  }

  else
  {
  }

  v15 = v7 | v11;
  v16 = (v8 + v20 + v11) & ~v11;

  (*(v10 + 8))(v4 + v16, v9);

  return _swift_deallocObject(v4, v16 + v19, v15 | 7);
}

uint64_t sub_2CE9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for ButtonLayoutContainer(0, v5, v6, a4) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_3CA34() - 8);
  v11 = v4 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_2BD40(v4 + v8, v11, v5, v6);
}

uint64_t sub_2CF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for ButtonLayoutContainer(0, v5, *(v4 + 24), a4);
  v7 = *(*(v6 - 8) + 80);
  v8 = *(*(v6 - 8) + 64);
  v9 = (v7 + 32) & ~v7;
  v10 = v4 + v9;
  (*(*(v5 - 8) + 8))(v4 + v9, v5);
  v11 = *(v6 + 36);
  sub_4FF4(&qword_56BF0, &qword_41098);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_3CE24();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v10 + v11, 1, v12))
    {
      (*(v13 + 8))(v10 + v11, v12);
    }
  }

  else
  {
  }

  return _swift_deallocObject(v4, v9 + v8, v7 | 7);
}

uint64_t sub_2D144(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for ButtonLayoutContainer(0, v7, v8, a4) - 8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_2BDD8(a1, a2, v10, v7, v8);
}

unint64_t sub_2D1E0()
{
  result = qword_56D18;
  if (!qword_56D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56D18);
  }

  return result;
}

uint64_t sub_2D284(void *a1)
{
  sub_3D244();
  sub_5674(&qword_56CC0, &qword_41388);
  sub_3CAA4();
  sub_3D1F4();
  sub_3CAA4();
  sub_3CDC4();
  sub_3D134();
  sub_5674(&qword_56CC8, &qword_41390);
  sub_3CAA4();
  sub_5674(&qword_56CD0, &qword_41398);
  sub_3CAA4();
  swift_getWitnessTable();
  sub_56BC(&qword_56CE8, &qword_56CC0, &qword_41388, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_56BC(&qword_56D00, &qword_56CC8, &qword_41390, &protocol conformance descriptor for _BackgroundModifier<A>);
  swift_getWitnessTable();
  sub_56BC(&qword_56D08, &qword_56CD0, &qword_41398, &protocol conformance descriptor for _AnimationModifier<A>);
  return swift_getWitnessTable();
}

uint64_t sub_2D538()
{
  type metadata accessor for ShakeToUndoSectionViewModel(0);
  swift_allocObject();
  return sub_30838();
}

uint64_t sub_2D570(uint64_t a1)
{
  v1 = sub_4FF4(&qword_55DD8, &qword_3EE10);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v6 - v3;
  type metadata accessor for ShakeToUndoSectionViewModel(0);
  sub_2DE8C(&qword_56D30, type metadata accessor for ShakeToUndoSectionViewModel, &unk_41998);
  sub_3C9A4();
  swift_getKeyPath();
  sub_3CA84();

  sub_3D224();
  sub_2DDD4();
  sub_3D074();
  return (*(v2 + 8))(v4, v1);
}

void sub_2D754(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  *a2 = v3;
}

uint64_t sub_2D7D4(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_3C8A4();
}

uint64_t sub_2D848@<X0>(uint64_t a1@<X8>)
{
  sub_3CCB4();
  if (qword_55980 != -1)
  {
    swift_once();
  }

  v2 = qword_572B8;
  result = sub_3CF84();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_2D930(uint64_t a1)
{
  v2 = sub_3CC54();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ShakeToUndoSectionViewModel(0);
  sub_2DE8C(&qword_56D30, type metadata accessor for ShakeToUndoSectionViewModel, &unk_41998);
  v6 = sub_3C994();
  v7 = *a1;
  v15 = *a1;
  v16 = *(a1 + 8);
  LOBYTE(a1) = v16;

  if ((a1 & 1) == 0)
  {
    sub_3D604();
    v8 = sub_3CE74();
    sub_3C844();

    sub_3CC44();
    swift_getAtKeyPath();
    sub_E250(&v15);
    (*(v3 + 8))(v5, v2);
    v7 = v14;
  }

  swift_getKeyPath();
  v14 = v7;
  sub_2DE8C(&qword_55EE0, type metadata accessor for MultitaskingAndGesturesSettingsListViewModel, &unk_3EF50);
  sub_3C804();

  v10 = *(v7 + 16);
  v9 = *(v7 + 24);

  v11 = (v6 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings27ShakeToUndoSectionViewModel_referrer);
  *v11 = v10;
  v11[1] = v9;
}

uint64_t sub_2DB90@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v14 = *v1;
  v15 = v3;
  v16 = *(v1 + 32);
  sub_3CCB4();
  if (qword_55980 != -1)
  {
    swift_once();
  }

  v4 = qword_572B8;
  sub_3CF84();
  v13 = v5;
  sub_4FF4(&qword_55DA8, &qword_3EE00);
  sub_BC9C();
  sub_3D2E4();
  v17 = v14;
  v18 = BYTE8(v14);
  v11 = v15;
  v12 = v16;
  v6 = swift_allocObject();
  v7 = v15;
  *(v6 + 16) = v14;
  *(v6 + 32) = v7;
  *(v6 + 48) = v16;
  v8 = (a1 + *(sub_4FF4(&qword_56D20, &unk_414F8) + 36));
  *v8 = sub_2DE7C;
  v8[1] = v6;
  v8[2] = 0;
  v8[3] = 0;
  sub_E1E8(&v17, v10, &qword_55F08, &qword_3F140);
  return sub_E1E8(&v11, v10, &qword_56D28, &qword_41508);
}

unint64_t sub_2DDD4()
{
  result = qword_55DD0;
  if (!qword_55DD0)
  {
    sub_5674(&qword_55DD8, &qword_3EE10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55DD0);
  }

  return result;
}

uint64_t sub_2DE38()
{

  sub_E1D8(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_2DE8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2DEE0()
{
  result = qword_56D38;
  if (!qword_56D38)
  {
    sub_5674(&qword_56D20, &unk_414F8);
    sub_2DF6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56D38);
  }

  return result;
}

unint64_t sub_2DF6C()
{
  result = qword_56D40;
  if (!qword_56D40)
  {
    sub_5674(&qword_56D48, &unk_41580);
    sub_BC9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56D40);
  }

  return result;
}

id sub_2E004()
{
  type metadata accessor for CornerGesturesSectionViewModel(0);
  swift_allocObject();
  return sub_1AF8();
}

uint64_t sub_2E074@<X0>(uint64_t a1@<X8>)
{
  sub_3CCB4();
  if (qword_55980 != -1)
  {
    swift_once();
  }

  v3 = qword_572B8;
  *&v14 = sub_3CF84();
  *(&v14 + 1) = v4;
  v15 = v5 & 1;
  v16 = v6;
  sub_4FF4(&qword_56D50, &qword_416D8);
  sub_56BC(&qword_56D58, &qword_56D50, &qword_416D8, &protocol conformance descriptor for VStack<A>);
  sub_3D2E4();
  v7 = *v1;
  v20 = *(v1 + 8);
  v14 = *(v1 + 1);
  v15 = *(v1 + 32);
  v8 = v1[6];
  v18 = v1[5];
  v19 = v7;
  v17 = v8;
  v9 = swift_allocObject();
  v10 = *(v1 + 1);
  *(v9 + 16) = *v1;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(v1 + 2);
  *(v9 + 64) = v1[6];
  v11 = (a1 + *(sub_4FF4(&qword_56D60, &unk_416E0) + 36));
  *v11 = sub_2F97C;
  v11[1] = v9;
  v11[2] = 0;
  v11[3] = 0;
  sub_E1E8(&v19, v13, &qword_55F08, &qword_3F140);
  sub_E1E8(&v14, v13, &qword_56D68, &unk_416F0);
  sub_E1E8(&v18, v13, &qword_55F18, &qword_3F150);
  return sub_E1E8(&v17, v13, &qword_55F18, &qword_3F150);
}

uint64_t sub_2E2E0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_3CCD4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_4FF4(&qword_56D78, &qword_41728);
  return sub_2E338(a1, a2 + *(v4 + 44));
}

uint64_t sub_2E338@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_4FF4(&qword_56D80, &qword_41730);
  v71 = *(v4 - 8);
  v72 = v4;
  __chkstk_darwin(v4);
  v64 = v56 - v5;
  v6 = sub_4FF4(&qword_56D88, &qword_41738);
  v60 = *(v6 - 8);
  v61 = v6;
  __chkstk_darwin(v6);
  v59 = v56 - v7;
  v8 = sub_4FF4(&qword_56D90, &qword_41740);
  v9 = __chkstk_darwin(v8 - 8);
  v63 = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v62 = v56 - v12;
  v13 = __chkstk_darwin(v11);
  v58 = v56 - v14;
  __chkstk_darwin(v13);
  v66 = v56 - v15;
  v16 = sub_4FF4(&qword_56D98, &qword_41748);
  v17 = __chkstk_darwin(v16 - 8);
  v70 = v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v69 = v56 - v19;
  v20 = sub_4FF4(&qword_55DD8, &qword_3EE10);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = v56 - v22;
  v24 = sub_4FF4(&qword_55DA8, &qword_3EE00);
  __chkstk_darwin(v24 - 8);
  v26 = v56 - v25;
  v27 = sub_4FF4(&qword_56DA0, &qword_41750);
  v28 = __chkstk_darwin(v27);
  v68 = v56 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v32 = v56 - v31;
  __chkstk_darwin(v30);
  v73 = v56 - v33;
  sub_3C8E4();
  v65 = a1;
  if ((v77 & 1) != 0 || (sub_3C8E4(), v77 == 1))
  {
    LOBYTE(v74) = 0;
    sub_3D294();
    v34 = 1;
  }

  else
  {
    v57 = *(a1 + 16);
    type metadata accessor for CornerGesturesSectionViewModel(0);
    sub_2FC74(&qword_56D70, type metadata accessor for CornerGesturesSectionViewModel, &unk_3E404);
    v67 = a2;
    sub_3C9A4();
    swift_getKeyPath();
    a2 = v67;
    sub_3CA84();

    v34 = 0;
  }

  sub_3D224();
  sub_56BC(&qword_55DD0, &qword_55DD8, &qword_3EE10, &protocol conformance descriptor for Toggle<A>);
  sub_3D074();
  (*(v21 + 8))(v23, v20);
  KeyPath = swift_getKeyPath();
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  sub_17214(v26, v32, &qword_55DA8, &qword_3EE00);
  v37 = &v32[*(v27 + 36)];
  *v37 = KeyPath;
  v37[1] = sub_2F9FC;
  v37[2] = v36;
  v38 = v73;
  sub_17214(v32, v73, &qword_56DA0, &qword_41750);
  if (v34)
  {
    v39 = 1;
LABEL_10:
    v51 = v69;
    goto LABEL_11;
  }

  v67 = a2;
  type metadata accessor for CornerGesturesSectionViewModel(0);
  sub_2FC74(&qword_56D70, type metadata accessor for CornerGesturesSectionViewModel, &unk_3E404);
  sub_3C994();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  if (v77 != 1)
  {
    v39 = 1;
    a2 = v67;
    goto LABEL_10;
  }

  sub_3C9A4();
  swift_getKeyPath();
  sub_3CA84();

  v74 = v77;
  v75 = v78;
  v76 = v79;
  v56[1] = sub_4FF4(&qword_56DB0, &qword_41800);
  v65 = sub_5D34();
  v57 = sub_2FA64();
  v40 = v59;
  sub_3D204();
  v56[0] = sub_56BC(&qword_56DD0, &qword_56D88, &qword_41738, &protocol conformance descriptor for Picker<A, B, C>);
  v41 = v61;
  sub_3D074();
  v42 = *(v60 + 8);
  v42(v40, v41);
  sub_3C9A4();
  swift_getKeyPath();
  sub_3CA84();

  v74 = v77;
  v75 = v78;
  v76 = v79;
  sub_3D204();
  v43 = v58;
  sub_3D074();
  v44 = v41;
  v38 = v73;
  v42(v40, v44);
  v45 = v66;
  v46 = v62;
  sub_E1E8(v66, v62, &qword_56D90, &qword_41740);
  v47 = v43;
  v48 = v63;
  sub_E1E8(v43, v63, &qword_56D90, &qword_41740);
  v49 = v64;
  sub_E1E8(v46, v64, &qword_56D90, &qword_41740);
  v50 = sub_4FF4(&qword_56DD8, &qword_41838);
  sub_E1E8(v48, v49 + *(v50 + 48), &qword_56D90, &qword_41740);
  sub_11A14(v47, &qword_56D90, &qword_41740);
  sub_11A14(v45, &qword_56D90, &qword_41740);
  sub_11A14(v48, &qword_56D90, &qword_41740);
  sub_11A14(v46, &qword_56D90, &qword_41740);
  v51 = v69;
  sub_17214(v49, v69, &qword_56D80, &qword_41730);
  v39 = 0;
  a2 = v67;
LABEL_11:
  (*(v71 + 56))(v51, v39, 1, v72);
  v52 = v68;
  sub_E1E8(v38, v68, &qword_56DA0, &qword_41750);
  v53 = v70;
  sub_E1E8(v51, v70, &qword_56D98, &qword_41748);
  sub_E1E8(v52, a2, &qword_56DA0, &qword_41750);
  v54 = sub_4FF4(&qword_56DA8, &qword_417D0);
  sub_E1E8(v53, a2 + *(v54 + 48), &qword_56D98, &qword_41748);
  sub_11A14(v51, &qword_56D98, &qword_41748);
  sub_11A14(v38, &qword_56DA0, &qword_41750);
  sub_11A14(v53, &qword_56D98, &qword_41748);
  return sub_11A14(v52, &qword_56DA0, &qword_41750);
}

void sub_2EEE8(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  *a2 = v3;
}

uint64_t sub_2EF68(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_3C8A4();
}

uint64_t sub_2EFDC@<X0>(uint64_t a1@<X8>)
{
  sub_3CCB4();
  if (qword_55980 != -1)
  {
    swift_once();
  }

  v2 = qword_572B8;
  result = sub_3CF84();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_2F114@<X0>(uint64_t a1@<X8>)
{
  sub_3CCB4();
  if (qword_55980 != -1)
  {
    swift_once();
  }

  v2 = qword_572B8;
  result = sub_3CF84();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_2F21C(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_3C8A4();
}

id sub_2F2A4(uint64_t a1)
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v2 = result;
    MobileGestalt_get_quickNoteCapability();

    sub_4FF4(&qword_55B98, &qword_41840);
    sub_4FF4(&qword_56DC8, &qword_41808);
    sub_56BC(&qword_56DE0, &qword_55B98, &qword_41840, &protocol conformance descriptor for [A]);
    sub_56BC(&qword_56DC0, &qword_56DC8, &qword_41808, &protocol conformance descriptor for PickerOption<A, B>);
    sub_2FB64();
    return sub_3D2B4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2F40C(char *a1, uint64_t a2)
{
  sub_4FF4(&qword_56DF0, &qword_41848);
  sub_5D34();
  sub_2FBB8();
  return sub_3C9D4();
}

uint64_t sub_2F498(char a1)
{
  v1 = sub_59F0(a1);
  v3 = v2;
  v5 = v4 & 1;
  sub_3D074();

  sub_BAF8(v1, v3, v5);
}

uint64_t sub_2F58C@<X0>(uint64_t a1@<X8>)
{
  sub_3CCB4();
  if (qword_55980 != -1)
  {
    swift_once();
  }

  v2 = qword_572B8;
  result = sub_3CF84();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_2F66C(uint64_t a1)
{
  v2 = sub_3CC54();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CornerGesturesSectionViewModel(0);
  sub_2FC74(&qword_56D70, type metadata accessor for CornerGesturesSectionViewModel, &unk_3E404);
  v6 = sub_3C994();
  v7 = *a1;
  v15 = *a1;
  v16 = *(a1 + 8);
  LOBYTE(a1) = v16;

  if ((a1 & 1) == 0)
  {
    sub_3D604();
    v8 = sub_3CE74();
    sub_3C844();

    sub_3CC44();
    swift_getAtKeyPath();
    sub_11A14(&v15, &qword_55F08, &qword_3F140);
    (*(v3 + 8))(v5, v2);
    v7 = v14;
  }

  swift_getKeyPath();
  v14 = v7;
  sub_2FC74(&qword_55EE0, type metadata accessor for MultitaskingAndGesturesSettingsListViewModel, &unk_3EF50);
  sub_3C804();

  v10 = *(v7 + 16);
  v9 = *(v7 + 24);

  v11 = (v6 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings30CornerGesturesSectionViewModel_referrer);
  *v11 = v10;
  v11[1] = v9;
}

uint64_t sub_2F928()
{

  sub_E1D8(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_2F994@<X0>(_BYTE *a1@<X8>)
{
  result = sub_3CC24();
  *a1 = result & 1;
  return result;
}

unint64_t sub_2FA64()
{
  result = qword_56DB8;
  if (!qword_56DB8)
  {
    sub_5674(&qword_56DB0, &qword_41800);
    sub_56BC(&qword_56DC0, &qword_56DC8, &qword_41808, &protocol conformance descriptor for PickerOption<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56DB8);
  }

  return result;
}

unint64_t sub_2FB64()
{
  result = qword_56DE8;
  if (!qword_56DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56DE8);
  }

  return result;
}

unint64_t sub_2FBB8()
{
  result = qword_56DF8;
  if (!qword_56DF8)
  {
    sub_5674(&qword_56DF0, &qword_41848);
    sub_2FC74(&qword_55DE0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56DF8);
  }

  return result;
}

uint64_t sub_2FC74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2FCDC()
{
  result = qword_56E00;
  if (!qword_56E00)
  {
    sub_5674(&qword_56D60, &unk_416E0);
    sub_2FD68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56E00);
  }

  return result;
}

unint64_t sub_2FD68()
{
  result = qword_56E08;
  if (!qword_56E08)
  {
    sub_5674(&qword_56E10, &unk_41890);
    sub_56BC(&qword_56D58, &qword_56D50, &qword_416D8, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56E08);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MultiTaskingWindowType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MultiTaskingWindowType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2FF80(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED0000656D695441;
  v3 = 0x7441707041656E6FLL;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000012;
    }

    else
    {
      v5 = 0x6E614D6567617473;
    }

    if (v4 == 2)
    {
      v6 = 0x8000000000042560;
    }

    else
    {
      v6 = 0xEC00000072656761;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x694D6E6565726373;
    }

    else
    {
      v5 = 0x7441707041656E6FLL;
    }

    if (v4)
    {
      v6 = 0xEF676E69726F7272;
    }

    else
    {
      v6 = 0xED0000656D695441;
    }
  }

  v7 = 0xD000000000000012;
  v8 = 0x8000000000042560;
  if (a2 != 2)
  {
    v7 = 0x6E614D6567617473;
    v8 = 0xEC00000072656761;
  }

  if (a2)
  {
    v3 = 0x694D6E6565726373;
    v2 = 0xEF676E69726F7272;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_3D804();
  }

  return v11 & 1;
}

uint64_t sub_300F4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0x666153206E65704FLL;
    v10 = 0xEB00000000697261;
    if (a1 != 6)
    {
      v9 = 0x6E7275746572;
      v10 = 0xE600000000000000;
    }

    v11 = 0x8000000000042430;
    v12 = 0xD000000000000018;
    if (a1 != 4)
    {
      v12 = 0xD000000000000019;
      v11 = 0x8000000000042450;
    }

    if (a1 <= 5u)
    {
      v7 = v12;
    }

    else
    {
      v7 = v9;
    }

    if (v2 <= 5)
    {
      v8 = v11;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = 0x73654D206E65704FLL;
    v5 = 0xED00007365676173;
    if (a1 != 2)
    {
      v4 = 0xD000000000000019;
      v5 = 0x8000000000042410;
    }

    v6 = 0xD000000000000016;
    if (a1)
    {
      v3 = 0x80000000000423E0;
    }

    else
    {
      v6 = 0x7472617473;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v5;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v13 = 0x80000000000423E0;
        if (v7 != 0xD000000000000016)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v13 = 0xE500000000000000;
        if (v7 != 0x7472617473)
        {
          goto LABEL_47;
        }
      }

      goto LABEL_45;
    }

    if (a2 == 2)
    {
      v13 = 0xED00007365676173;
      if (v7 != 0x73654D206E65704FLL)
      {
        goto LABEL_47;
      }

      goto LABEL_45;
    }

    v14 = "Fixing Anchor Position 01";
LABEL_42:
    v13 = (v14 - 32) | 0x8000000000000000;
    if (v7 != 0xD000000000000019)
    {
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v13 = 0x8000000000042430;
      if (v7 != 0xD000000000000018)
      {
        goto LABEL_47;
      }

      goto LABEL_45;
    }

    v14 = "Fixing Anchor Position 02";
    goto LABEL_42;
  }

  if (a2 == 6)
  {
    v13 = 0xEB00000000697261;
    if (v7 != 0x666153206E65704FLL)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v13 = 0xE600000000000000;
    if (v7 != 0x6E7275746572)
    {
LABEL_47:
      v15 = sub_3D804();
      goto LABEL_48;
    }
  }

LABEL_45:
  if (v8 != v13)
  {
    goto LABEL_47;
  }

  v15 = 1;
LABEL_48:

  return v15 & 1;
}

Swift::Int sub_303AC()
{
  sub_3D844();
  sub_3D524();

  return sub_3D864();
}

uint64_t sub_30494(uint64_t a1)
{
  sub_3D524();
}

Swift::Int sub_30568(uint64_t a1)
{
  sub_3D844();
  sub_3D524();

  return sub_3D864();
}

unint64_t sub_3064C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_30778(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_3067C(unint64_t *a1@<X8>)
{
  v2 = 0xED0000656D695441;
  v3 = 0x7441707041656E6FLL;
  v4 = 0x8000000000042560;
  v5 = 0xD000000000000012;
  if (*v1 != 2)
  {
    v5 = 0x6E614D6567617473;
    v4 = 0xEC00000072656761;
  }

  if (*v1)
  {
    v3 = 0x694D6E6565726373;
    v2 = 0xEF676E69726F7272;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_30724()
{
  result = qword_56E18;
  if (!qword_56E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56E18);
  }

  return result;
}

unint64_t sub_30778(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_52190;
  v6._object = a2;
  v4 = sub_3D784(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_307C4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  return v1;
}

uint64_t sub_30838()
{
  v1 = v0;
  v2 = sub_4FF4(&qword_55AC8, &qword_3E440);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_4FF4(&qword_55AD8, &unk_3E450);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-v7];
  v9 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings27ShakeToUndoSectionViewModel__shakeToUndoEnabled;
  v15[15] = _AXSShakeToUndoDisabled() == 0;
  sub_3C874();
  (*(v6 + 32))(v1 + v9, v8, v5);
  v10 = (v1 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings27ShakeToUndoSectionViewModel_referrer);
  v11 = sub_3D5B4();
  *v10 = 0;
  v10[1] = 0;
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  sub_3D594();

  v12 = sub_3D584();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v1;
  sub_1E9E0(0, 0, v4, &unk_419D8, v13);

  return v1;
}

uint64_t sub_30A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_4FF4(&qword_55B28, &unk_3EB60);
  v4[6] = swift_task_alloc();
  v4[7] = sub_4FF4(&qword_55B30, &unk_3E4C0);
  v4[8] = swift_task_alloc();
  v5 = sub_4FF4(&qword_55B38, &unk_3EB70);
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = sub_4FF4(&qword_55B40, &unk_3E4D0);
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v7 = sub_4FF4(&qword_55B48, &unk_3EB80);
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = sub_3D594();
  v4[19] = sub_3D584();
  v9 = sub_3D564();
  v4[20] = v9;
  v4[21] = v8;

  return _swift_task_switch(sub_30C8C, v9, v8);
}

uint64_t sub_30C8C()
{
  v1 = v0[14];
  v9 = v0[13];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  swift_beginAccess();
  sub_4FF4(&qword_55AD8, &unk_3E450);
  sub_3C884();
  swift_endAccess();
  sub_56BC(&qword_55B50, &qword_55B38, &unk_3EB70, &protocol conformance descriptor for Published<A>.Publisher);
  sub_3C8C4();
  (*(v4 + 8))(v3, v5);
  sub_56BC(&qword_55B58, &qword_55B30, &unk_3E4C0, &protocol conformance descriptor for AsyncPublisher<A>);
  sub_3D7F4();
  sub_3D794();
  sub_3D5E4();
  sub_3D7A4();
  (*(v9 + 8))(v1, v2);
  sub_3D7E4();
  v0[22] = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings27ShakeToUndoSectionViewModel_referrer;
  v6 = sub_3D584();
  v0[23] = v6;
  v7 = swift_task_alloc();
  v0[24] = v7;
  *v7 = v0;
  v7[1] = sub_30EF0;

  return sub_1C864(v6, &protocol witness table for MainActor);
}

uint64_t sub_30EF0(char a1)
{
  v3 = *v2;
  *(*v2 + 200) = a1;

  if (!v1)
  {

    v5 = *(v3 + 160);
    v6 = *(v3 + 168);

    return _swift_task_switch(sub_31008, v5, v6);
  }

  return result;
}

uint64_t sub_31008()
{
  v1 = *(v0 + 200);
  if (v1 == 2)
  {
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    _AXSSetShakeToUndoDisabled();
    if (qword_559A0 != -1)
    {
      swift_once();
    }

    v4 = (*(v0 + 40) + *(v0 + 176));
    v6 = *v4;
    v5 = v4[1];

    sub_1BCA0(4u, v1 & 1, v6, v5);

    v7 = sub_3D584();
    *(v0 + 184) = v7;
    v8 = swift_task_alloc();
    *(v0 + 192) = v8;
    *v8 = v0;
    v8[1] = sub_30EF0;

    return sub_1C864(v7, &protocol witness table for MainActor);
  }
}

uint64_t sub_311F0()
{
  v1 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings27ShakeToUndoSectionViewModel__shakeToUndoEnabled;
  v2 = sub_4FF4(&qword_55AD8, &unk_3E450);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for ShakeToUndoSectionViewModel(uint64_t a1)
{
  result = qword_56E50;
  if (!qword_56E50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_31300(uint64_t a1)
{
  sub_6A70();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_31398()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_313D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_5440;

  return sub_30A44(a1, v4, v5, v6);
}

void sub_31494(double a1, double a2)
{
  if (*&v2[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_originalSize] == 0.0 && *&v2[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_originalSize + 8] == 0.0)
  {
    v5.receiver = v2;
    v5.super_class = swift_getObjectType();
    objc_msgSendSuper2(&v5, "sizeThatFits:", a1, a2);
  }

  else
  {
    sub_32848(140.0);
  }
}

void sub_3154C()
{
  v1 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_packageLayer;
  v2 = *&v0[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_packageLayer];
  if (v2)
  {
    [v2 removeFromSuperlayer];
  }

  v3 = *&v0[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_package];
  if (v3)
  {
    v15 = v3;
    v4 = [v15 rootLayer];
    if (v4)
    {
      v5 = v4;
      [v4 setGeometryFlipped:{objc_msgSend(v15, "isGeometryFlipped")}];
      [v5 setContentsGravity:kCAGravityResizeAspect];
      [v5 setMasksToBounds:1];
      [v5 setFillMode:kCAFillModeBackwards];
      v6 = *&v0[v1];
      *&v0[v1] = v5;
      v7 = v5;

      [v7 frame];
      v9 = v8;
      v11 = v10;

      v12 = &v0[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_originalSize];
      *v12 = v9;
      *(v12 + 1) = v11;
      v13 = [v0 layer];
      [v13 addSublayer:v7];

      [v0 layoutIfNeeded];
      v14 = v7;
    }

    else
    {
      v14 = v15;
    }
  }
}

void sub_31700(unsigned __int8 a1)
{
  v3 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_currentState;
  v4 = *(v1 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_currentState);
  if (!(v4 >> 6))
  {
    if (a1 < 0x40u && (sub_300F4(v4, a1) & 1) != 0)
    {
      return;
    }

    goto LABEL_37;
  }

  if (v4 >> 6 != 1)
  {
    if ((a1 & 0xC0) != 0x80)
    {
      goto LABEL_37;
    }

    if ((v4 & 0x3F) != 0)
    {
      if ((v4 & 0x3F) == 1)
      {
        v8 = 0x73654D2070617753;
        v9 = 0xED00007365676173;
      }

      else
      {
        v9 = 0xE600000000000000;
        v8 = 0x6E7275746572;
      }
    }

    else
    {
      v9 = 0xE500000000000000;
      v8 = 0x7472617473;
    }

    v11 = 0x73654D2070617753;
    v12 = 0xED00007365676173;
    if ((a1 & 0x3F) != 1)
    {
      v11 = 0x6E7275746572;
      v12 = 0xE600000000000000;
    }

    if ((a1 & 0x3F) != 0)
    {
      v5 = v11;
    }

    else
    {
      v5 = 0x7472617473;
    }

    if ((a1 & 0x3F) != 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0xE500000000000000;
    }

    goto LABEL_31;
  }

  if ((a1 & 0xC0) != 0x40)
  {
    goto LABEL_37;
  }

  v5 = 0x7472617473;
  v6 = v4 & 0x3F;
  v7 = a1 & 0x3F;
  if (v6 > 5)
  {
    if ((v4 & 0x3F) > 8)
    {
      if (v6 != 9)
      {
        if (v6 == 10)
        {
          v8 = 0xD000000000000014;
          v9 = 0x80000000000424F0;
          if ((a1 & 0x3Fu) <= 5)
          {
            goto LABEL_66;
          }

          goto LABEL_76;
        }

        v9 = 0xE600000000000000;
        v8 = 0x6E7275746572;
        if ((a1 & 0x3Fu) > 5)
        {
          goto LABEL_76;
        }

        goto LABEL_66;
      }

      v10 = 1702260557;
    }

    else
    {
      if (v6 == 6)
      {
        v9 = 0x80000000000424B0;
        v8 = 0xD000000000000015;
        if ((a1 & 0x3Fu) <= 5)
        {
          goto LABEL_66;
        }

        goto LABEL_76;
      }

      if (v6 != 7)
      {
        v8 = 0x4D20657A69736552;
        v9 = 0xEF73656761737365;
        if ((a1 & 0x3Fu) <= 5)
        {
          goto LABEL_66;
        }

        goto LABEL_76;
      }

      v10 = 1852141647;
    }

    v8 = v10 | 0x73654D2000000000;
    v9 = 0xED00007365676173;
    if ((a1 & 0x3Fu) <= 5)
    {
      goto LABEL_66;
    }

    goto LABEL_76;
  }

  if ((v4 & 0x3F) <= 2)
  {
    if ((v4 & 0x3F) != 0)
    {
      if (v6 == 1)
      {
        v8 = 0x6F48206570697753;
        v9 = 0xEA0000000000656DLL;
        if ((a1 & 0x3Fu) <= 5)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v9 = 0x8000000000042410;
        v8 = 0xD000000000000019;
        if ((a1 & 0x3Fu) <= 5)
        {
          goto LABEL_66;
        }
      }
    }

    else
    {
      v9 = 0xE500000000000000;
      v8 = 0x7472617473;
      if ((a1 & 0x3Fu) <= 5)
      {
        goto LABEL_66;
      }
    }

LABEL_76:
    if ((a1 & 0x3Fu) > 8)
    {
      if (v7 != 9)
      {
        if (v7 == 10)
        {
          v5 = 0xD000000000000014;
          v13 = 0x80000000000424F0;
        }

        else
        {
          v13 = 0xE600000000000000;
          v5 = 0x6E7275746572;
        }

        goto LABEL_31;
      }

      v23 = 1702260557;
    }

    else
    {
      if (v7 == 6)
      {
        v13 = 0x80000000000424B0;
        v5 = 0xD000000000000015;
        goto LABEL_31;
      }

      if (v7 != 7)
      {
        v5 = 0x4D20657A69736552;
        v13 = 0xEF73656761737365;
        goto LABEL_31;
      }

      v23 = 1852141647;
    }

    v5 = v23 | 0x73654D2000000000;
    v13 = 0xED00007365676173;
    goto LABEL_31;
  }

  if (v6 == 3)
  {
    v21 = 1852141647;
  }

  else
  {
    if (v6 == 4)
    {
      v8 = 0x5320657A69736552;
      v9 = 0xED00006972616661;
      if ((a1 & 0x3Fu) <= 5)
      {
        goto LABEL_66;
      }

      goto LABEL_76;
    }

    v21 = 1702260557;
  }

  v8 = v21 | 0x6661532000000000;
  v9 = 0xEB00000000697261;
  if ((a1 & 0x3Fu) > 5)
  {
    goto LABEL_76;
  }

LABEL_66:
  if ((a1 & 0x3Fu) <= 2)
  {
    if ((a1 & 0x3F) != 0)
    {
      if (v7 == 1)
      {
        v5 = 0x6F48206570697753;
        v13 = 0xEA0000000000656DLL;
      }

      else
      {
        v13 = 0x8000000000042410;
        v5 = 0xD000000000000019;
      }
    }

    else
    {
      v13 = 0xE500000000000000;
    }

    goto LABEL_31;
  }

  if (v7 == 3)
  {
    v22 = 1852141647;
  }

  else
  {
    if (v7 == 4)
    {
      v5 = 0x5320657A69736552;
      v13 = 0xED00006972616661;
      goto LABEL_31;
    }

    v22 = 1702260557;
  }

  v5 = v22 | 0x6661532000000000;
  v13 = 0xEB00000000697261;
LABEL_31:
  if (v8 == v5 && v9 == v13)
  {

    return;
  }

  v14 = sub_3D804();

  if (v14)
  {
    return;
  }

LABEL_37:
  v15 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_packageLayer;
  v16 = *(v1 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_packageLayer);
  if (v16)
  {
    sub_191D0(*(v1 + v3));
    v17 = v16;
    v18 = sub_3D4C4();

    v24 = [v17 stateWithName:v18];

    if (v24)
    {
      v20 = *(v1 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_stateController);
      if (v20)
      {
        LODWORD(v19) = 1.0;
        [v20 setState:v24 ofLayer:*(v1 + v15) transitionSpeed:v19];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

id sub_31CD4(char a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = &v3[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_originalSize];
  *v8 = 0;
  v8[1] = 0;
  *&v3[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_stateController] = 0;
  *&v3[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_package] = 0;
  *&v3[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_packageLayer] = 0;
  v3[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_currentState] = a1;
  v9 = &v3[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_packageURLFactory];
  *v9 = a2;
  v9[1] = a3;
  v12.receiver = v3;
  v12.super_class = ObjectType;

  v10 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_31DB4();

  return v10;
}

void sub_31DB4()
{
  v1 = v0;
  v2 = sub_3C7C4();
  v3 = *(v2 - 8);
  v45 = v2;
  v46 = v3;
  v4 = __chkstk_darwin(v2);
  v44 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v40 - v6;
  v8 = sub_3CA94();
  v43 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_3C964();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [v0 traitCollection];
  v16 = [v15 userInterfaceStyle];

  v41 = v12;
  v17 = *(v12 + 104);
  v18 = &enum case for ColorScheme.dark(_:);
  if (v16 != &dword_0 + 2)
  {
    v18 = &enum case for ColorScheme.light(_:);
  }

  v19 = *v18;
  v42 = v11;
  v17(v14, v19, v11);
  v20 = v43;
  v21 = v1;
  v22 = [v1 traitCollection];
  v23 = [v22 layoutDirection];

  v24 = &enum case for LayoutDirection.leftToRight(_:);
  v25 = v23 == 0;
  v26 = v45;
  v27 = v46;
  if (!v25)
  {
    v24 = &enum case for LayoutDirection.rightToLeft(_:);
  }

  (*(v20 + 104))(v10, *v24, v8);
  (*&v1[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_packageURLFactory])(v14, v10);
  sub_327FC();
  v28 = v44;
  (*(v27 + 16))(v44, v7, v26);
  v29 = sub_3D4F4();
  v31 = sub_325A0(v28, v29, v30, 0);
  if (!v31)
  {
    goto LABEL_11;
  }

  v44 = v8;
  v32 = *&v21[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_package];
  *&v21[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_package] = v31;
  v33 = v31;

  sub_3154C();
  v34 = *&v21[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_packageLayer];
  if (!v34)
  {

    goto LABEL_10;
  }

  v35 = objc_allocWithZone(CAStateController);
  v36 = v34;
  v37 = [v35 initWithLayer:v36];
  v38 = *&v21[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_stateController];
  *&v21[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_stateController] = v37;
  v39 = v37;

  if (v39)
  {
    [v39 setInitialStatesOfLayer:v36];

    v27 = v46;
LABEL_10:
    v8 = v44;
LABEL_11:
    (*(v27 + 8))(v7, v26);
    (*(v20 + 8))(v10, v8);
    (*(v41 + 8))(v14, v42);
    return;
  }

  __break(1u);
}

void sub_32328()
{
  v1 = v0;
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_packageLayer];
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = v2;
    v5 = [v3 disableActions];
    [v3 setDisableActions:1];
    [v1 bounds];
    if (v7 / *&v1[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_originalSize + 8] >= v6 / *&v1[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_originalSize])
    {
      v8 = v6 / *&v1[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_originalSize];
    }

    else
    {
      v8 = v7 / *&v1[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_originalSize + 8];
    }

    [v4 setPosition:{v6 * 0.5, v7 * 0.5}];
    CATransform3DMakeScale(&v9, v8, v8, 1.0);
    [v4 setTransform:&v9];
    [v3 setDisableActions:v5];
  }
}

id sub_325A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_3C794(__stack_chk_guard);
  v7 = v6;
  v8 = sub_3D4C4();

  if (a4)
  {
    v9.super.isa = sub_3D474().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v18 = 0;
  v10 = [swift_getObjCClassFromMetadata() packageWithContentsOfURL:v7 type:v8 options:v9.super.isa error:&v18];

  v11 = v18;
  if (v10)
  {
    v12 = sub_3C7C4();
    v13 = *(*(v12 - 8) + 8);
    v14 = v11;
    v13(a1, v12);
  }

  else
  {
    v15 = v18;
    sub_3C754();

    swift_willThrow();
    v16 = sub_3C7C4();
    (*(*(v16 - 8) + 8))(a1, v16);
  }

  return v10;
}

unint64_t sub_327FC()
{
  result = qword_56F38;
  if (!qword_56F38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_56F38);
  }

  return result;
}

double sub_32848(double a1)
{
  v2 = objc_opt_self();
  v3 = [v2 mainScreen];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v42.origin.x = v5;
  v42.origin.y = v7;
  v42.size.width = v9;
  v42.size.height = v11;
  Height = CGRectGetHeight(v42);
  v13 = [v2 mainScreen];
  [v13 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v43.origin.x = v15;
  v43.origin.y = v17;
  v43.size.width = v19;
  v43.size.height = v21;
  if (Height >= CGRectGetWidth(v43))
  {
    v22 = [v2 mainScreen];
    [v22 bounds];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    v44.origin.x = v24;
    v44.origin.y = v26;
    v44.size.width = v28;
    v44.size.height = v30;
    Width = CGRectGetWidth(v44);
    v32 = [v2 mainScreen];
    [v32 bounds];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;

    v45.origin.x = v34;
    v45.origin.y = v36;
    v45.size.width = v38;
    v45.size.height = v40;
    return Width / CGRectGetHeight(v45) * a1;
  }

  return a1;
}

void sub_329D8()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_3D4C4();
  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    qword_572E8 = v2;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_32A50()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  return v1;
}

uint64_t sub_32AC4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  if (v4 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_3C894();

    if (v3)
    {
      v0 = 0x8000000000042300;
    }

    else
    {
      v0 = 0xE400000000000000;
    }

    if (v3 == 1 && 0x8000000000042300 == v0)
    {
      v1 = 1;
    }

    else
    {
      v1 = sub_3D804();
    }
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_32C4C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  return v1;
}

uint64_t sub_32D60(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 1684099177;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0x8000000000042300;
  }

  if (*a2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 1684099177;
  }

  if (*a2)
  {
    v6 = 0x8000000000042300;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_3D804();
  }

  return v8 & 1;
}

Swift::Int sub_32E04()
{
  sub_3D844();
  sub_3D524();

  return sub_3D864();
}

uint64_t sub_32E84(uint64_t a1)
{
  sub_3D524();
}

Swift::Int sub_32EF0(uint64_t a1)
{
  sub_3D844();
  sub_3D524();

  return sub_3D864();
}

uint64_t sub_32F6C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_52210;
  v8._object = v3;
  v5 = sub_3D784(v4, v8);

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

void sub_32FCC(unint64_t *a1@<X8>)
{
  v2 = 0x8000000000042300;
  v3 = 1684099177;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xE400000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

void sub_33018(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  *a2 = v3;
}

uint64_t sub_33098(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_3C8A4();
}

uint64_t sub_33108()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  return v1;
}

uint64_t sub_3317C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  return v1;
}

id sub_331F0()
{
  ObjectType = swift_getObjectType();
  v1 = sub_4FF4(&qword_55AC8, &qword_3E440);
  __chkstk_darwin(v1 - 8);
  v69 = &v59 - v2;
  v3 = sub_4FF4(&qword_56FE8, &unk_41CE0);
  v67 = *(v3 - 8);
  v68 = v3;
  __chkstk_darwin(v3);
  v66 = &v59 - v4;
  v5 = sub_4FF4(&qword_55D40, &qword_3EB10);
  v64 = *(v5 - 8);
  v65 = v5;
  __chkstk_darwin(v5);
  v63 = &v59 - v6;
  v7 = sub_4FF4(&qword_55D48, &unk_41CF0);
  v61 = *(v7 - 8);
  v62 = v7;
  __chkstk_darwin(v7);
  v60 = &v59 - v8;
  v59 = sub_4FF4(&qword_55AD8, &unk_3E450);
  v9 = *(v59 - 8);
  __chkstk_darwin(v59);
  v11 = &v59 - v10;
  v12 = sub_4FF4(&qword_56FF0, &qword_41D00);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v59 - v14;
  v16 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings28MultiTaskingSectionViewModel__hideRecentAppsOnEmbeddedDisplay;
  if (qword_559A8 != -1)
  {
    swift_once();
  }

  v70 = qword_572E8;
  *&v0[v16] = sub_3C8D4();
  v17 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings28MultiTaskingSectionViewModel__hideRecentAppsOnExternalDisplay;
  *&v0[v17] = sub_3C8D4();
  v18 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings28MultiTaskingSectionViewModel__hideDockOnEmbeddedDisplay;
  *&v0[v18] = sub_3C8D4();
  v19 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings28MultiTaskingSectionViewModel__hideDockOnExternalDisplay;
  v20 = sub_3C8D4();
  *&v0[v19] = v20;
  v21 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings28MultiTaskingSectionViewModel__multitaskingWindowType;
  LOBYTE(v73) = sub_371D4(v20);
  sub_3C874();
  (*(v13 + 32))(&v0[v21], v15, v12);
  v22 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings28MultiTaskingSectionViewModel__shouldShowRecentAppsInStageManager;
  LOBYTE(v73) = sub_A6E8() & 1;
  sub_3C874();
  v23 = *(v9 + 32);
  v24 = v59;
  v23(&v0[v22], v11, v59);
  v25 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings28MultiTaskingSectionViewModel__shouldShowDockInStageManager;
  LOBYTE(v73) = sub_A800() & 1;
  sub_3C874();
  v23(&v0[v25], v11, v24);
  v26 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings28MultiTaskingSectionViewModel__orientation;
  v27 = [objc_opt_self() currentDevice];
  v28 = [v27 orientation];

  v73 = v28;
  type metadata accessor for UIDeviceOrientation(0);
  v29 = v60;
  sub_3C874();
  (*(v61 + 32))(&v0[v26], v29, v62);
  v30 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings28MultiTaskingSectionViewModel__displayManager;
  if (qword_55988 != -1)
  {
    swift_once();
  }

  v31 = qword_572C0;
  v73 = qword_572C0;
  type metadata accessor for MultiTaskingDisplayManager(0);
  v32 = v31;
  v33 = v63;
  sub_3C874();
  (*(v64 + 32))(&v0[v30], v33, v65);
  v34 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings28MultiTaskingSectionViewModel__selectedDisplaySection;
  LOBYTE(v73) = 0;
  v35 = v66;
  sub_3C874();
  (*(v67 + 32))(&v0[v34], v35, v68);
  v36 = ObjectType;
  v72.receiver = v0;
  v72.super_class = ObjectType;
  v37 = objc_msgSendSuper2(&v72, "init");
  v38 = sub_3D5B4();
  v39 = *(*(v38 - 8) + 56);
  v40 = v69;
  v39(v69, 1, 1, v38);
  sub_3D594();
  v41 = v37;
  v42 = sub_3D584();
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = &protocol witness table for MainActor;
  v43[4] = v41;
  sub_1E9E0(0, 0, v40, &unk_41D10, v43);

  v39(v40, 1, 1, v38);
  v44 = v41;
  v45 = sub_3D584();
  v46 = swift_allocObject();
  v46[2] = v45;
  v46[3] = &protocol witness table for MainActor;
  v46[4] = v44;
  v46[5] = v36;
  sub_1E9E0(0, 0, v40, &unk_41D20, v46);

  v39(v40, 1, 1, v38);
  v47 = v44;
  v48 = sub_3D584();
  v49 = swift_allocObject();
  v49[2] = v48;
  v49[3] = &protocol witness table for MainActor;
  v49[4] = v47;
  v49[5] = v36;
  sub_1E9E0(0, 0, v40, &unk_41D30, v49);

  v39(v40, 1, 1, v38);
  v50 = v47;
  v51 = sub_3D584();
  v52 = swift_allocObject();
  v52[2] = v51;
  v52[3] = &protocol witness table for MainActor;
  v52[4] = v50;
  sub_1E9E0(0, 0, v40, &unk_41D40, v52);

  v39(v40, 1, 1, v38);
  v53 = sub_3D584();
  v54 = swift_allocObject();
  v54[2] = v53;
  v54[3] = &protocol witness table for MainActor;
  v54[4] = v50;
  sub_1E9E0(0, 0, v40, &unk_41D50, v54);

  v55 = sub_3D4C4();
  v56 = v70;
  [v70 addObserver:v50 forKeyPath:v55 options:3 context:0];

  v57 = sub_3D4C4();
  [v56 addObserver:v50 forKeyPath:v57 options:3 context:0];

  return v50;
}

uint64_t sub_33B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  sub_4FF4(&qword_56888, &qword_407C8);
  v4[7] = swift_task_alloc();
  v4[8] = sub_4FF4(&qword_57020, &qword_41E10);
  v4[9] = swift_task_alloc();
  v5 = sub_4FF4(&qword_57028, &qword_41E18);
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = sub_4FF4(&qword_57030, &unk_41E20);
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v7 = sub_4FF4(&qword_56880, &qword_407C0);
  v4[16] = v7;
  v4[17] = *(v7 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = sub_3D594();
  v4[20] = sub_3D584();
  v9 = sub_3D564();
  v4[21] = v9;
  v4[22] = v8;

  return _swift_task_switch(sub_33D9C, v9, v8);
}

uint64_t sub_33D9C()
{
  v1 = v0[15];
  v9 = v0[14];
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  swift_beginAccess();
  sub_4FF4(&qword_56FF0, &qword_41D00);
  sub_3C884();
  swift_endAccess();
  sub_56BC(&qword_57038, &qword_57028, &qword_41E18, &protocol conformance descriptor for Published<A>.Publisher);
  sub_3C8C4();
  (*(v4 + 8))(v3, v5);
  sub_56BC(&qword_57040, &qword_57020, &qword_41E10, &protocol conformance descriptor for AsyncPublisher<A>);
  sub_3D7F4();
  sub_3D794();
  sub_3D5E4();
  sub_3D7A4();
  (*(v9 + 8))(v1, v2);
  sub_3D7E4();
  v6 = sub_3D584();
  v0[23] = v6;
  v7 = swift_task_alloc();
  v0[24] = v7;
  *v7 = v0;
  v7[1] = sub_33FF4;

  return sub_1DDD0(v6, &protocol witness table for MainActor);
}

uint64_t sub_33FF4(char a1)
{
  v3 = *v2;
  *(*v2 + 200) = a1;

  if (!v1)
  {

    v5 = *(v3 + 168);
    v6 = *(v3 + 176);

    return _swift_task_switch(sub_3410C, v5, v6);
  }

  return result;
}

uint64_t sub_3410C()
{
  if (*(v0 + 200) == 4)
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));

    v1 = *(v0 + 8);

    return v1();
  }

  if (sub_32AC4())
  {
    v3 = *(v0 + 200);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_3C894();

    v4 = *(v0 + 40);
    if (v3 <= 1 && v3)
    {
      v5 = 1;
    }

    else
    {
      v5 = sub_3D804();
    }

    sub_120A0(v5 & 1);
    goto LABEL_23;
  }

  if (qword_559A8 != -1)
  {
    swift_once();
  }

  v12 = qword_572E8;
  if (*(v0 + 200) > 1u && *(v0 + 200) != 2)
  {

    v4 = sub_3D4C4();
    [v12 setBool:1 forKey:v4];

LABEL_23:

    goto LABEL_24;
  }

  v6 = sub_3D804();

  v7 = sub_3D4C4();
  [v12 setBool:v6 & 1 forKey:v7];

  v8 = sub_3D804();

  if ((v8 & 1) == 0)
  {
    if (*(v0 + 200) && *(v0 + 200) != 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = sub_3D804();
    }

    v4 = sub_3D4C4();
    [v12 setBool:v9 & 1 forKey:v4];
    goto LABEL_23;
  }

LABEL_24:
  v10 = sub_3D584();
  *(v0 + 184) = v10;
  v11 = swift_task_alloc();
  *(v0 + 192) = v11;
  *v11 = v0;
  v11[1] = sub_33FF4;

  return sub_1DDD0(v10, &protocol witness table for MainActor);
}

uint64_t sub_34634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  sub_4FF4(&qword_55B28, &unk_3EB60);
  v4[7] = swift_task_alloc();
  v4[8] = sub_4FF4(&qword_55B30, &unk_3E4C0);
  v4[9] = swift_task_alloc();
  v5 = sub_4FF4(&qword_55B38, &unk_3EB70);
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = sub_4FF4(&qword_55B40, &unk_3E4D0);
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v7 = sub_4FF4(&qword_55B48, &unk_3EB80);
  v4[16] = v7;
  v4[17] = *(v7 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = sub_3D594();
  v4[20] = sub_3D584();
  v9 = sub_3D564();
  v4[21] = v9;
  v4[22] = v8;

  return _swift_task_switch(sub_3487C, v9, v8);
}

uint64_t sub_3487C()
{
  v1 = v0[15];
  v11 = v0[14];
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  v6 = v0[5];
  swift_beginAccess();
  sub_4FF4(&qword_55AD8, &unk_3E450);
  sub_3C884();
  swift_endAccess();

  sub_56BC(&qword_55B50, &qword_55B38, &unk_3EB70, &protocol conformance descriptor for Published<A>.Publisher);
  sub_3C8C4();
  (*(v4 + 8))(v3, v5);
  sub_56BC(&qword_55B58, &qword_55B30, &unk_3E4C0, &protocol conformance descriptor for AsyncPublisher<A>);
  sub_3D7F4();
  sub_3D794();
  sub_3D5E4();
  sub_3D7A4();
  (*(v11 + 8))(v1, v2);
  sub_3D7E4();
  v7 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings28MultiTaskingSectionViewModel__hideRecentAppsOnEmbeddedDisplay;
  v0[23] = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings28MultiTaskingSectionViewModel__hideDockOnEmbeddedDisplay;
  v0[24] = v7;
  v8 = sub_3D584();
  v0[25] = v8;
  v9 = swift_task_alloc();
  v0[26] = v9;
  *v9 = v0;
  v9[1] = sub_34B38;

  return sub_1C864(v8, &protocol witness table for MainActor);
}

uint64_t sub_34B38(char a1)
{
  v4 = *v2;

  if (!v1)
  {

    *(v4 + 222) = a1;
    v6 = *(v4 + 168);
    v7 = *(v4 + 176);

    return _swift_task_switch(sub_34C64, v6, v7);
  }

  return result;
}

uint64_t sub_34C64()
{
  if (*(v0 + 222) == 2)
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(v0 + 48);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 216) = 0;
    v4 = v3;
    v5 = sub_3C8A4();
    v6 = sub_371D4(v5);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 217) = v6;
    v7 = v4;
    sub_3C8A4();

    sub_3C8E4();

    v8 = *(v0 + 218);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 219) = (v8 & 1) == 0;
    v9 = v7;
    sub_3C8A4();

    sub_3C8E4();

    LOBYTE(v4) = *(v0 + 220);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 221) = (v4 & 1) == 0;
    v10 = v9;
    sub_3C8A4();
    v11 = sub_3D584();
    *(v0 + 200) = v11;
    v12 = swift_task_alloc();
    *(v0 + 208) = v12;
    *v12 = v0;
    v12[1] = sub_34B38;

    return sub_1C864(v11, &protocol witness table for MainActor);
  }
}

uint64_t sub_34F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_4FF4(&qword_56870, &qword_407B0);
  v4[6] = swift_task_alloc();
  v4[7] = sub_4FF4(&qword_56FF8, &qword_41D58);
  v4[8] = swift_task_alloc();
  v5 = sub_4FF4(&qword_57000, &qword_41D60);
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = sub_4FF4(&qword_57008, &qword_41D68);
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v7 = sub_4FF4(&qword_56868, &qword_41D70);
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = sub_3D594();
  v4[19] = sub_3D584();
  v9 = sub_3D564();
  v4[20] = v9;
  v4[21] = v8;

  return _swift_task_switch(sub_351A8, v9, v8);
}

uint64_t sub_351A8()
{
  v1 = v0[14];
  v11 = v0[13];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  swift_beginAccess();
  sub_4FF4(&qword_56FE8, &unk_41CE0);
  sub_3C884();
  swift_endAccess();
  sub_56BC(&qword_57010, &qword_57000, &qword_41D60, &protocol conformance descriptor for Published<A>.Publisher);
  sub_3C8C4();
  (*(v4 + 8))(v3, v5);
  sub_56BC(&qword_57018, &qword_56FF8, &qword_41D58, &protocol conformance descriptor for AsyncPublisher<A>);
  sub_3D7F4();
  sub_3D794();
  sub_3D5E4();
  sub_3D7A4();
  (*(v11 + 8))(v1, v2);
  sub_3D7E4();
  v6 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings28MultiTaskingSectionViewModel__hideRecentAppsOnEmbeddedDisplay;
  v0[22] = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings28MultiTaskingSectionViewModel__hideDockOnEmbeddedDisplay;
  v0[23] = v6;
  v7 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings28MultiTaskingSectionViewModel__hideRecentAppsOnExternalDisplay;
  v0[24] = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings28MultiTaskingSectionViewModel__hideDockOnExternalDisplay;
  v0[25] = v7;
  v8 = sub_3D584();
  v0[26] = v8;
  v9 = swift_task_alloc();
  v0[27] = v9;
  *v9 = v0;
  v9[1] = sub_35428;

  return sub_1E3D8(v8, &protocol witness table for MainActor);
}

uint64_t sub_35428(char a1)
{
  v3 = *v2;
  *(*v2 + 234) = a1;

  if (!v1)
  {

    v5 = *(v3 + 160);
    v6 = *(v3 + 168);

    return _swift_task_switch(sub_35540, v5, v6);
  }

  return result;
}

id sub_35540()
{
  v1 = *(v0 + 234);
  if (v1 == 2)
  {
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    v2 = *(v0 + 8);

    return v2();
  }

  if (v1)
  {
    v4 = 0x8000000000042300;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (0x8000000000042300 == v4 && (v1 & 1) != 0)
  {
  }

  else
  {
    v5 = sub_3D804();

    if ((v5 & 1) == 0)
    {
      v13 = (v0 + 225);
      v14 = (v0 + 226);
      v15 = (v0 + 227);
      v16 = (v0 + 228);
      v19 = *(v0 + 40);
      v20 = sub_371D4(v6);
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 224) = v20;
      v18 = v19;
      goto LABEL_24;
    }
  }

  if (qword_55988 != -1)
  {
    swift_once();
  }

  v7 = *(qword_572C0 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings26MultiTaskingDisplayManager_externalDisplayInfo);
  if (v7 && ([v7 isMirrored] & 1) != 0)
  {
    goto LABEL_21;
  }

  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
    goto LABEL_28;
  }

  v8 = result;
  deviceSupportsEnhancedMultitasking = MobileGestalt_get_deviceSupportsEnhancedMultitasking();

  if ((deviceSupportsEnhancedMultitasking & 1) == 0)
  {
    result = MobileGestalt_get_current_device();
    if (result)
    {
      v10 = result;
      deviceSupportsSingleDisplayEnhancedMultitasking = MobileGestalt_get_deviceSupportsSingleDisplayEnhancedMultitasking();

      if (deviceSupportsSingleDisplayEnhancedMultitasking)
      {
        goto LABEL_20;
      }

LABEL_21:
      v12 = 1;
      goto LABEL_22;
    }

LABEL_28:
    __break(1u);
    return result;
  }

LABEL_20:
  v12 = 3;
LABEL_22:
  v13 = (v0 + 230);
  v14 = (v0 + 231);
  v15 = (v0 + 232);
  v16 = (v0 + 233);
  v17 = *(v0 + 40);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 229) = v12;
  v18 = v17;
LABEL_24:
  sub_3C8A4();

  sub_3C8E4();

  v21 = *v13;
  swift_getKeyPath();
  swift_getKeyPath();
  *v14 = (v21 & 1) == 0;
  v22 = v18;
  sub_3C8A4();

  sub_3C8E4();

  v23 = *v15;
  swift_getKeyPath();
  swift_getKeyPath();
  *v16 = (v23 & 1) == 0;
  v24 = v22;
  sub_3C8A4();
  v25 = sub_3D584();
  *(v0 + 208) = v25;
  v26 = swift_task_alloc();
  *(v0 + 216) = v26;
  *v26 = v0;
  v26[1] = sub_35428;

  return sub_1E3D8(v25, &protocol witness table for MainActor);
}

uint64_t sub_3598C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_4FF4(&qword_55B28, &unk_3EB60);
  v4[6] = swift_task_alloc();
  v4[7] = sub_4FF4(&qword_55B30, &unk_3E4C0);
  v4[8] = swift_task_alloc();
  v5 = sub_4FF4(&qword_55B38, &unk_3EB70);
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = sub_4FF4(&qword_55B40, &unk_3E4D0);
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v7 = sub_4FF4(&qword_55B48, &unk_3EB80);
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = sub_3D594();
  v4[19] = sub_3D584();
  v9 = sub_3D564();
  v4[20] = v9;
  v4[21] = v8;

  return _swift_task_switch(sub_35BD4, v9, v8);
}

uint64_t sub_35BD4()
{
  v1 = v0[14];
  v10 = v0[13];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  swift_beginAccess();
  sub_4FF4(&qword_55AD8, &unk_3E450);
  sub_3C884();
  swift_endAccess();
  sub_56BC(&qword_55B50, &qword_55B38, &unk_3EB70, &protocol conformance descriptor for Published<A>.Publisher);
  sub_3C8C4();
  (*(v4 + 8))(v3, v5);
  sub_56BC(&qword_55B58, &qword_55B30, &unk_3E4C0, &protocol conformance descriptor for AsyncPublisher<A>);
  sub_3D7F4();
  sub_3D794();
  sub_3D5E4();
  sub_3D7A4();
  (*(v10 + 8))(v1, v2);
  sub_3D7E4();
  v6 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings28MultiTaskingSectionViewModel__hideDockOnExternalDisplay;
  v0[22] = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings28MultiTaskingSectionViewModel__hideDockOnEmbeddedDisplay;
  v0[23] = v6;
  v7 = sub_3D584();
  v0[24] = v7;
  v8 = swift_task_alloc();
  v0[25] = v8;
  *v8 = v0;
  v8[1] = sub_35E40;

  return sub_1C864(v7, &protocol witness table for MainActor);
}

uint64_t sub_35E40(char a1)
{
  v3 = *v2;
  *(*v2 + 210) = a1;

  if (!v1)
  {

    v5 = *(v3 + 160);
    v6 = *(v3 + 168);

    return _swift_task_switch(sub_35F58, v5, v6);
  }

  return result;
}

uint64_t sub_35F58()
{
  v1 = *(v0 + 210);
  if (v1 == 2)
  {
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = sub_32AC4();
    v5 = (v1 & 1) == 0;
    if (v4)
    {
      v6 = 209;
    }

    else
    {
      v6 = 208;
    }

    *(v0 + v6) = v5;

    sub_3C8F4();

    v7 = sub_3D584();
    *(v0 + 192) = v7;
    v8 = swift_task_alloc();
    *(v0 + 200) = v8;
    *v8 = v0;
    v8[1] = sub_35E40;

    return sub_1C864(v7, &protocol witness table for MainActor);
  }
}

uint64_t sub_3612C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_4FF4(&qword_55B28, &unk_3EB60);
  v4[6] = swift_task_alloc();
  v4[7] = sub_4FF4(&qword_55B30, &unk_3E4C0);
  v4[8] = swift_task_alloc();
  v5 = sub_4FF4(&qword_55B38, &unk_3EB70);
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = sub_4FF4(&qword_55B40, &unk_3E4D0);
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v7 = sub_4FF4(&qword_55B48, &unk_3EB80);
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = sub_3D594();
  v4[19] = sub_3D584();
  v9 = sub_3D564();
  v4[20] = v9;
  v4[21] = v8;

  return _swift_task_switch(sub_36374, v9, v8);
}

uint64_t sub_36374()
{
  v1 = v0[14];
  v10 = v0[13];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  swift_beginAccess();
  sub_4FF4(&qword_55AD8, &unk_3E450);
  sub_3C884();
  swift_endAccess();
  sub_56BC(&qword_55B50, &qword_55B38, &unk_3EB70, &protocol conformance descriptor for Published<A>.Publisher);
  sub_3C8C4();
  (*(v4 + 8))(v3, v5);
  sub_56BC(&qword_55B58, &qword_55B30, &unk_3E4C0, &protocol conformance descriptor for AsyncPublisher<A>);
  sub_3D7F4();
  sub_3D794();
  sub_3D5E4();
  sub_3D7A4();
  (*(v10 + 8))(v1, v2);
  sub_3D7E4();
  v6 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings28MultiTaskingSectionViewModel__hideRecentAppsOnExternalDisplay;
  v0[22] = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings28MultiTaskingSectionViewModel__hideRecentAppsOnEmbeddedDisplay;
  v0[23] = v6;
  v7 = sub_3D584();
  v0[24] = v7;
  v8 = swift_task_alloc();
  v0[25] = v8;
  *v8 = v0;
  v8[1] = sub_365E0;

  return sub_1C864(v7, &protocol witness table for MainActor);
}

uint64_t sub_365E0(char a1)
{
  v3 = *v2;
  *(*v2 + 210) = a1;

  if (!v1)
  {

    v5 = *(v3 + 160);
    v6 = *(v3 + 168);

    return _swift_task_switch(sub_366F8, v5, v6);
  }

  return result;
}

uint64_t sub_366F8()
{
  v1 = *(v0 + 210);
  if (v1 == 2)
  {
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = sub_32AC4();
    v5 = (v1 & 1) == 0;
    if (v4)
    {
      v6 = 209;
    }

    else
    {
      v6 = 208;
    }

    *(v0 + v6) = v5;

    sub_3C8F4();

    v7 = sub_3D584();
    *(v0 + 192) = v7;
    v8 = swift_task_alloc();
    *(v0 + 200) = v8;
    *v8 = v0;
    v8[1] = sub_365E0;

    return sub_1C864(v7, &protocol witness table for MainActor);
  }
}