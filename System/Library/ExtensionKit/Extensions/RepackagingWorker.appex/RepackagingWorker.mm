uint64_t sub_1000016B8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 32) = v3;
  *v3 = v1;
  v3[1] = sub_100001754;

  return sub_100001C38(v1 + 16, a1);
}

uint64_t sub_100001754()
{

  return _swift_task_switch(sub_100001850, 0, 0);
}

uint64_t sub_100001850()
{
  v1 = v0[2];
  v0[3] = v1;
  v0[5] = v1;
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_100001904;

  return sub_100003EF8(v0 + 3);
}

uint64_t sub_100001904(char a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_100001B88;
  }

  else
  {
    v6 = *(v4 + 40);
    *(v4 + 64) = a1 & 1;
    sub_100003BFC(v6);
    v5 = sub_100001A38;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100001A38()
{
  if (*(v0 + 64) == 1)
  {
    objc_allocWithZone(sub_100013A00());
    v1 = sub_1000139F0();
  }

  else
  {
    if (qword_10001C1D8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for InternalLogger(0);
    sub_100003EA0(v2, qword_10001C4F8);
    v3._countAndFlagsBits = 0xD000000000000023;
    v3._object = 0x8000000100015590;
    v4._countAndFlagsBits = 0xD000000000000074;
    v4._object = 0x8000000100015460;
    v5._object = 0x80000001000155C0;
    v5._countAndFlagsBits = 0xD000000000000013;
    InternalLogger.info(_:fromFile:fromFunction:)(v3, v4, v5);
    sub_10000486C();
    objc_allocWithZone(sub_100013A00());
    v1 = sub_1000139E0();
  }

  v6 = *(v0 + 8);

  return v6(v1);
}

uint64_t sub_100001B88()
{
  sub_100003BFC(*(v0 + 40));
  sub_10000486C();
  v1 = objc_allocWithZone(sub_100013A00());
  v2 = sub_1000139E0();

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_100001C38(uint64_t a1, uint64_t a2)
{
  v3[7] = a1;
  v3[8] = v2;
  v5 = *v2;
  sub_100003C0C(&qword_10001C300, &qword_1000147A8);
  v6 = swift_task_alloc();
  v3[9] = v6;
  v3[4] = v2;
  v7 = swift_task_alloc();
  v3[10] = v7;
  v8 = sub_100003C0C(&qword_10001C308, &qword_1000147B0);
  v10 = sub_1000037BC(&qword_10001C2A8, v9, type metadata accessor for RepackagingWorker, &unk_1000145F8);
  v11 = sub_100003D6C(&qword_10001C310, sub_100003D18, &protocol conformance descriptor for <A> A?);
  v12 = sub_100003D6C(&qword_10001C320, sub_100003DE4, &protocol conformance descriptor for <A> A?);
  *v7 = v3;
  v7[1] = sub_100001E34;

  return MLHostExtension.loadConfig<A>(context:)(v6, a2, v5, v8, v10, v11, v12);
}

uint64_t sub_100001E34()
{

  return _swift_task_switch(sub_100001F30, 0, 0);
}

uint64_t sub_100001F30()
{
  v16 = v0;
  v1 = *(v0 + 72);
  v2 = sub_100003C0C(&qword_10001C330, &qword_1000147B8);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_100003E38(v1);
    v4 = 2;
  }

  else
  {
    sub_100013A30();
    v4 = *(v0 + 40);
    (*(v3 + 8))(v1, v2);
    if (v4 != 2)
    {
      sub_100003EE8(v4);
      if (qword_10001C1D8 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for InternalLogger(0);
      sub_100003EA0(v5, qword_10001C4F8);
      v15[0] = 0;
      v15[1] = 0xE000000000000000;
      sub_100013C60(18);
      *(v0 + 16) = 0;
      *(v0 + 24) = 0xE000000000000000;
      v18._object = 0x8000000100015440;
      v18._countAndFlagsBits = 0xD000000000000010;
      sub_100013B50(v18);
      *(v0 + 48) = v4;
      sub_100013CA0();
      sub_100003ED8(v4);
      v6._countAndFlagsBits = 0x6963655264616F6CLL;
      v6._object = 0xEE00293A5F286570;
      v7._countAndFlagsBits = 0xD000000000000074;
      v7._object = 0x8000000100015460;
      InternalLogger.debug(_:fromFile:fromFunction:)(*(v0 + 16), v7, v6);
    }
  }

  sub_1000027D8(v15);
  v8 = v15[0];
  if (v15[0] == 2)
  {
    if (v4 == 2)
    {
      if (qword_10001C1D8 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for InternalLogger(0);
      sub_100003EA0(v9, qword_10001C4F8);
      v10._countAndFlagsBits = 0x52746C7561666564;
      v10._object = 0xED00006570696365;
      v11._countAndFlagsBits = 0xD000000000000011;
      v11._object = 0x80000001000153A0;
      v12._countAndFlagsBits = 0xD000000000000072;
      v12._object = 0x80000001000153C0;
      InternalLogger.info(_:fromFile:fromFunction:)(v11, v12, v10);
      v4 = 1;
    }
  }

  else
  {
    sub_100003ED8(v4);
    v4 = v8;
  }

  **(v0 + 56) = v4;

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10000223C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 176) = v3;
  *v3 = v1;
  v3[1] = sub_1000022D8;

  return sub_100001C38(v1 + 152, a1);
}

uint64_t sub_1000022D8()
{

  return _swift_task_switch(sub_1000023D4, 0, 0);
}

uint64_t sub_1000023D4()
{
  v1 = v0[19];
  v0[23] = v1;
  v2 = [objc_opt_self() sharedLoggerWithPersistenceConfiguration:1];
  v0[24] = v2;
  v3 = [objc_allocWithZone(SiriAnalyticsInternalTelemetry) init];
  v0[25] = v3;
  v0[17] = v2;
  v0[18] = v3;
  v0[20] = v1;
  v4 = swift_task_alloc();
  v0[26] = v4;
  *v4 = v0;
  v4[1] = sub_1000024D4;

  return SessionBuilderExtension.package(with:)(v0 + 20);
}

uint64_t sub_1000024D4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    v5 = sub_10000266C;
  }

  else
  {
    v6 = *(v4 + 184);
    *(v4 + 224) = a1;
    sub_100003BFC(v6);
    v5 = sub_100002604;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100002604()
{
  v1 = *(v0 + 200);

  v2 = *(v0 + 224);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_10000266C()
{
  v1 = *(v0 + 216);
  sub_100003BFC(*(v0 + 184));
  *(v0 + 168) = v1;
  swift_errorRetain();
  sub_100003C0C(&qword_10001C2F0, &qword_100014798);
  sub_100003C0C(&qword_10001C2F8, &qword_1000147A0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 192);
    v2 = *(v0 + 200);

    sub_100003C54((v0 + 16), v0 + 56);
    sub_100003C6C(v0 + 56, v0 + 96);
    v4 = objc_allocWithZone(sub_100013A00());
    v5 = sub_1000139E0();

    sub_10000499C((v0 + 56));
  }

  else
  {
    v7 = *(v0 + 192);
    v6 = *(v0 + 200);

    v8 = objc_allocWithZone(sub_100013A00());
    v5 = sub_1000139F0();
  }

  v9 = *(v0 + 8);

  return v9(v5);
}

void sub_1000027D8(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  if (v3 && (v4 = v3, v5 = sub_100013AE0(), v6 = [v4 BOOLForKey:v5], v4, v5, v6))
  {
    v7 = qword_10001C1D8;
    v8 = 0xD000000000000023;
    v9 = "using nil recipe";
    v10 = 1;
  }

  else
  {
    sub_100013B10();
    has_internal_content = os_variant_has_internal_content();

    v7 = qword_10001C1D8;
    if (has_internal_content)
    {
      v9 = "Using default plugin recipe";
    }

    else
    {
      v9 = "epackagingPlugin";
    }

    if (has_internal_content)
    {
      v8 = 0xD000000000000020;
    }

    else
    {
      v8 = 0xD00000000000001BLL;
    }

    if (has_internal_content)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }
  }

  if (v7 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for InternalLogger(0);
  sub_100003EA0(v12, qword_10001C4F8);
  v13._countAndFlagsBits = 0x6552737361707962;
  v13._object = 0xEE00292865706963;
  v14._object = (v9 | 0x8000000000000000);
  v15._countAndFlagsBits = 0xD000000000000074;
  v15._object = 0x8000000100015460;
  v14._countAndFlagsBits = v8;
  InternalLogger.debug(_:fromFile:fromFunction:)(v14, v15, v13);
  *a1 = v10;
}

uint64_t sub_100002970(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_1000049E8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100003C0C(&qword_10001C2F0, &qword_100014798);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    v9 = 0;
    if (a2)
    {
      sub_100004A2C();
      v9 = sub_100013BA0();
    }

    **(*(v5 + 64) + 40) = v9;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_100002A54()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_100002A8C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100004D44;

  return sub_1000016B8(a1);
}

uint64_t sub_100002B24(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002BBC;

  return sub_10000223C(a1);
}

uint64_t sub_100002BBC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_100002CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_100002D9C;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_100002D9C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100002E90(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000037BC(&qword_10001C2A8, a2, type metadata accessor for RepackagingWorker, &unk_1000145F8);

  return MLHostExtension.configuration.getter(a1, v3);
}

id sub_100002F0C@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  result = sub_100012834();
  *(v2 + 16) = result;
  *a1 = v2;
  return result;
}

Swift::Int sub_100002F58()
{
  sub_100013DF0();
  sub_100013B20();

  return sub_100013E10();
}

uint64_t sub_100003020(uint64_t a1)
{
  sub_100013B20();
}

Swift::Int sub_1000030D4(uint64_t a1)
{
  sub_100013DF0();
  sub_100013B20();

  return sub_100013E10();
}

unint64_t sub_100003198@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100004CF8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1000031C8(unint64_t *a1@<X8>)
{
  v2 = 0xEA00000000006465;
  v3 = 0x6C706D6153746F6ELL;
  if (*v1 != 2)
  {
    v3 = 0x64657070696B73;
    v2 = 0xE700000000000000;
  }

  v4 = 0xD000000000000011;
  v5 = 0x8000000100015290;
  if (*v1)
  {
    v4 = 0xD000000000000012;
    v5 = 0x80000001000152B0;
  }

  if (*v1 <= 1u)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for RepackagingWorker();
  sub_1000037BC(&qword_10001C1E8, v3, type metadata accessor for RepackagingWorker, &unk_100014638);
  sub_100013930();
  return 0;
}

uint64_t sub_100003554(void *a1, uint64_t a2)
{
  sub_1000037BC(&qword_10001C2E8, 255, type metadata accessor for FLError, &unk_100014678);
  v3 = a1;
  return sub_1000137B0();
}

Swift::Int sub_100003674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100013DF0();
  sub_100013AB0();
  return sub_100013E10();
}

void *sub_1000036D4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1000037BC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_100003A60(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_100003AFC()
{
  result = qword_10001C2D8;
  if (!qword_10001C2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C2D8);
  }

  return result;
}

uint64_t sub_100003BFC(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_100003C0C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003C54(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100003C6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100003CD0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100003D18()
{
  result = qword_10001C318;
  if (!qword_10001C318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C318);
  }

  return result;
}

uint64_t sub_100003D6C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003CD0(&qword_10001C308, &qword_1000147B0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100003DE4()
{
  result = qword_10001C328;
  if (!qword_10001C328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C328);
  }

  return result;
}

uint64_t sub_100003E38(uint64_t a1)
{
  v2 = sub_100003C0C(&qword_10001C300, &qword_1000147A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100003EA0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100003ED8(uint64_t result)
{
  if (result != 2)
  {
    return sub_100003BFC(result);
  }

  return result;
}

uint64_t sub_100003EE8(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_100003F1C()
{
  if (v0[19] == 1)
  {
    v1 = v0[1];
    v2 = 1;
LABEL_10:

    return v1(v2);
  }

  v3 = [objc_opt_self() defaultContext];
  v4 = [objc_allocWithZone(AFSettingsConnection) initWithInstanceContext:v3];
  v0[20] = v4;

  if (!v4)
  {
    if (qword_10001C1D8 != -1)
    {
      swift_once();
    }

    v6 = v0[20];
    v7 = type metadata accessor for InternalLogger(0);
    sub_100003EA0(v7, qword_10001C4F8);
    v8._object = 0x80000001000155E0;
    v9._countAndFlagsBits = 0xD000000000000074;
    v9._object = 0x8000000100015460;
    v10._countAndFlagsBits = 0xD000000000000021;
    v10._object = 0x8000000100015600;
    v8._countAndFlagsBits = 0xD000000000000019;
    InternalLogger.error(_:fromFile:fromFunction:)(v8, v9, v10);
    sub_1000048C0();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();

    v1 = v0[1];
    v2 = 0;
    goto LABEL_10;
  }

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1000041AC;
  v5 = swift_continuation_init();
  v0[17] = sub_100003C0C(&qword_10001C348, &unk_1000147D0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100002970;
  v0[13] = &unk_100018CC0;
  v0[14] = v5;
  [v4 fetchAccountsWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000041AC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_100004728;
  }

  else
  {
    v2 = sub_1000042BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000042BC()
{
  v1 = *(v0 + 144);

  if (v1)
  {
    v2 = v1 & 0xFFFFFFFFFFFFFF8;
    if (v1 >> 62)
    {
      goto LABEL_39;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100013CB0())
    {
      v4 = 0;
      v5 = v30[19];
      v34 = v1 + 32;
      v35 = v1 & 0xC000000000000001;
      v40 = v5 + 32;
      v32 = v2;
      v33 = v1;
      v31 = i;
      v38 = v5;
      while (1)
      {
        if (v35)
        {
          v6 = sub_100013C70();
        }

        else
        {
          if (v4 >= *(v2 + 16))
          {
            goto LABEL_38;
          }

          v6 = *(v34 + 8 * v4);
        }

        v7 = v6;
        if (__OFADD__(v4++, 1))
        {
          break;
        }

        v9 = [v6 assistantIdentifier];
        if (v9)
        {
          v37 = v7;
          v10 = v9;
          sub_100013AF0();

          if (!v5)
          {

            v27 = 1;
            goto LABEL_41;
          }

          v36 = v4;
          v39 = *(v5 + 16);
          if (!v39)
          {
LABEL_34:

            v27 = 1;
            goto LABEL_41;
          }

          v11 = 0;
          while (v11 < *(v5 + 16))
          {
            v12 = *(v40 + 24 * v11);
            if (v12 < 0)
            {

LABEL_29:

              v2 = v32;
              v1 = v33;
              i = v31;
              v4 = v36;
              goto LABEL_6;
            }

            if (v12 >= sub_100013B30())
            {

              goto LABEL_29;
            }

            ++v11;
            sub_100013B40();
            sub_100013B80();

            while (1)
            {
              sub_100013B60();
              if (!v14)
              {

                v2 = v32;
                v1 = v33;
                i = v31;
                v4 = v36;
                v5 = v38;
                goto LABEL_6;
              }

              v15 = sub_100013AC0();
              v1 = v16;
              v17 = sub_100013AC0();
              v2 = v18;
              if (v15 == v17 && v1 == v18)
              {
                break;
              }

              v13 = sub_100013D70();

              if (v13)
              {
                goto LABEL_24;
              }
            }

LABEL_24:

            v5 = v38;
            if (v11 == v39)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
          break;
        }

LABEL_6:
        if (v4 == i)
        {
          goto LABEL_40;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      ;
    }

LABEL_40:
    v27 = 0;
LABEL_41:
    v28 = v30[20];

    v25 = v30[1];
    v26 = v27;
  }

  else
  {
    if (qword_10001C1D8 != -1)
    {
      swift_once();
    }

    v19 = v30[20];
    v20 = type metadata accessor for InternalLogger(0);
    sub_100003EA0(v20, qword_10001C4F8);
    v21._object = 0x80000001000155E0;
    v22._countAndFlagsBits = 0xD000000000000074;
    v22._object = 0x8000000100015460;
    v23._countAndFlagsBits = 0xD000000000000021;
    v23._object = 0x8000000100015600;
    v21._countAndFlagsBits = 0xD000000000000019;
    InternalLogger.error(_:fromFile:fromFunction:)(v21, v22, v23);
    sub_1000048C0();
    swift_allocError();
    *v24 = 0;
    swift_willThrow();

    v25 = v30[1];
    v26 = 0;
  }

  return v25(v26);
}

uint64_t sub_100004728()
{
  v1 = *(v0 + 160);
  swift_willThrow();

  if (qword_10001C1D8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 160);
  v3 = type metadata accessor for InternalLogger(0);
  sub_100003EA0(v3, qword_10001C4F8);
  v4._object = 0x80000001000155E0;
  v5._countAndFlagsBits = 0xD000000000000074;
  v5._object = 0x8000000100015460;
  v6._countAndFlagsBits = 0xD000000000000021;
  v6._object = 0x8000000100015600;
  v4._countAndFlagsBits = 0xD000000000000019;
  InternalLogger.error(_:fromFile:fromFunction:)(v4, v5, v6);
  sub_1000048C0();
  swift_allocError();
  *v7 = 0;
  swift_willThrow();

  v8 = *(v0 + 8);

  return v8(0);
}

unint64_t sub_10000486C()
{
  result = qword_10001C338;
  if (!qword_10001C338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C338);
  }

  return result;
}

unint64_t sub_1000048C0()
{
  result = qword_10001C340;
  if (!qword_10001C340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C340);
  }

  return result;
}

uint64_t sub_100004924(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000499C(void *a1)
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

void *sub_1000049E8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100004A2C()
{
  result = qword_10001C350;
  if (!qword_10001C350)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10001C350);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RepackagingError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RepackagingError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100004BF0()
{
  result = qword_10001C360;
  if (!qword_10001C360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C360);
  }

  return result;
}

unint64_t sub_100004C4C()
{
  result = qword_10001C368;
  if (!qword_10001C368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C368);
  }

  return result;
}

unint64_t sub_100004CA4()
{
  result = qword_10001C370;
  if (!qword_10001C370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C370);
  }

  return result;
}

unint64_t sub_100004CF8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100018B80;
  v6._object = a2;
  v4 = sub_100013CF0(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100004D4C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
LABEL_8:
    sub_100013CB0();
LABEL_9:
    result = sub_100013C80();
    v3 = result;
    goto LABEL_10;
  }

  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_10:
  *v1 = v3;
  return result;
}

id sub_100004DE8(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, void *a5)
{
  result = [objc_allocWithZone(PFARepackagingExecution) init];
  if (!result)
  {
    goto LABEL_32;
  }

  v10 = result;
  v11 = objc_allocWithZone(SISchemaUUID);
  v12 = sub_1000138A0();
  v13 = [v11 initWithNSUUID:v12];

  [v10 setClockIdentifier:v13];
  v14 = [objc_allocWithZone(PFARepackagingExecutionResult) init];
  [v10 setResult:v14];

  if (a4)
  {
    v15 = [v10 result];
    if (!v15)
    {
      goto LABEL_9;
    }

    v16 = v15;
    [v15 setSamplingResult:2];
  }

  else
  {
    v17 = [v10 result];
    if (v17)
    {
      v18 = v17;
      [v17 setSamplingResult:1];
    }

    v19 = [objc_allocWithZone(PFAClockEnvelopeStatistics) init];
    [v10 setEnvelopeStatistics:v19];

    v20 = [v10 envelopeStatistics];
    [v20 setMessageCount:a2];

    v16 = [v10 envelopeStatistics];
    [v16 setTotalBytes:a3];
  }

LABEL_9:
  v21 = [v10 result];
  v22 = v21;
  if ((a4 & 0x100) != 0)
  {
    if (v21)
    {
      [v21 setSuccess:1];
    }
  }

  else
  {
    if (v21)
    {
      v23 = [objc_allocWithZone(PFARepackagingExecutionFailure) init];
      [v22 setFailure:v23];
    }

    if (a5)
    {
      v24 = a5;
      v25 = [v10 result];
      if (v25)
      {
        v26 = v25;
        v27 = [v25 failure];

        if (v27)
        {
          v28 = [objc_allocWithZone(PFARepackagingExecutionFBFFailure) init];
          [v27 setFbfFailure:v28];
        }
      }

      v29 = [v10 result];
      if (v29)
      {
        v30 = v29;
        v31 = [v29 failure];

        if (v31)
        {
          v32 = [v31 fbfFailure];

          if (v32)
          {
            v44 = v24;
            type metadata accessor for FLError(0);
            sub_100005368();
            sub_1000137E0();
            [v32 setFlErrorCode:v43];
          }
        }
      }
    }
  }

  result = [objc_allocWithZone(PFAPFAClientEvent) init];
  if (!result)
  {
    goto LABEL_33;
  }

  v33 = result;
  result = [objc_allocWithZone(PFAPFAEventMetadata) init];
  if (result)
  {
    v34 = result;
    sub_10000531C();
    v35 = sub_100013BE0();
    [v34 setDeviceDimensions:v35];

    v36 = sub_100013890();
    v37 = *(v36 - 8);
    __chkstk_darwin(v36);
    v39 = &v43 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_100013880();
    sub_100013870();
    v41 = v40;
    result = (*(v37 + 8))(v39, v36);
    v42 = v41 * 1000.0;
    if (COERCE__INT64(fabs(v41 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v42 > -9.22337204e18)
    {
      if (v42 < 9.22337204e18)
      {
        [v34 setEventTimestampInMsSince1970:v42];
        [v33 setEventMetadata:v34];
        [v33 setRepackagingExecution:v10];

        return v33;
      }

      goto LABEL_31;
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_10000531C()
{
  result = qword_10001C378;
  if (!qword_10001C378)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10001C378);
  }

  return result;
}

unint64_t sub_100005368()
{
  result = qword_10001C2E8;
  if (!qword_10001C2E8)
  {
    type metadata accessor for FLError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C2E8);
  }

  return result;
}

unint64_t sub_1000053C0(uint64_t a1)
{
  v59 = &_swiftEmptyArrayStorage;
  v2 = *(a1 + 16);

  sub_100004D4C(v2);
  v50 = a1;
  v3 = *(a1 + 64);
  v49 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & v3;
  v7 = sub_100003C0C(&qword_10001C380, &qword_100014920);
  v47 = &v47;
  v53 = *(*(v7 - 8) + 64);
  v8 = __chkstk_darwin(v7 - 8);
  v51 = &v47 - v9;
  v52 = v9;
  v10 = 0;
  v48 = (v4 + 63) >> 6;
  while (1)
  {
    result = __chkstk_darwin(v8);
    v12 = &v47 - v52;
    if (!v6)
    {
      break;
    }

    v54 = &v47 - v52;
    v55 = &v47;
    v13 = v10;
LABEL_14:
    v16 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v17 = v16 | (v13 << 6);
    v18 = sub_1000138B0();
    v58 = &v47;
    v19 = *(v18 - 8);
    __chkstk_darwin(v18);
    v21 = v50;
    (*(v19 + 16))(&v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), *(v50 + 48) + *(v22 + 72) * v17, v18);
    v23 = *(v21 + 56) + 32 * v17;
    v24 = *v23;
    v57 = *(v23 + 8);
    v25 = *(v23 + 16);
    v56 = *(v23 + 17);
    v26 = *(v23 + 24);
    v27 = sub_100003C0C(&qword_10001C388, &qword_100014928);
    v28 = &v54[*(v27 + 48)];
    v12 = v54;
    (*(v19 + 32))();
    v29 = v57;
    *v28 = v24;
    *(v28 + 1) = v29;
    v28[16] = v25;
    v28[17] = v56;
    *(v28 + 3) = v26;
    (*(*(v27 - 8) + 56))(v12, 0, 1, v27);
    v30 = v26;
LABEL_15:
    v31 = v51;
    sub_1000058F8(v12, v51);
    v32 = sub_100003C0C(&qword_10001C388, &qword_100014928);
    if ((*(*(v32 - 8) + 48))(v31, 1, v32) == 1)
    {

      return v59;
    }

    v33 = sub_1000138B0();
    v58 = &v47;
    v34 = *(v33 - 8);
    __chkstk_darwin(v33);
    v36 = &v47 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
    v38 = v37 + *(v32 + 48);
    v39 = *v38;
    v40 = *(v38 + 8);
    v41 = *(v38 + 16);
    v42 = *(v38 + 17);
    v43 = *(v38 + 24);
    (*(v34 + 32))(v36);
    if (v42)
    {
      v44 = 256;
    }

    else
    {
      v44 = 0;
    }

    v45 = sub_100004DE8(v36, v39, v40, v44 | v41, v43);
    sub_100013B90();
    if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100013BB0();
    }

    sub_100013BC0();

    v8 = (*(v34 + 8))(v36, v33);
  }

  if (v48 <= v10 + 1)
  {
    v14 = v10 + 1;
  }

  else
  {
    v14 = v48;
  }

  v15 = v14 - 1;
  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v13 >= v48)
    {
      v46 = sub_100003C0C(&qword_10001C388, &qword_100014928);
      (*(*(v46 - 8) + 56))(v12, 1, 1, v46);
      v6 = 0;
      v10 = v15;
      goto LABEL_15;
    }

    v6 = *(v49 + 8 * v13);
    ++v10;
    if (v6)
    {
      v54 = &v47 - v52;
      v55 = &v47;
      v10 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000058F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003C0C(&qword_10001C380, &qword_100014920);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_100005968(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100005974(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1000059BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100005A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  return _swift_task_switch(sub_100005A2C, 0, 0);
}

uint64_t sub_100005A2C()
{
  v1 = v0[20];
  v2 = v0[18];
  sub_1000138C0();
  v3 = sub_100013AE0();
  v0[22] = v3;

  v0[2] = v0;
  v0[3] = sub_100005B70;
  v4 = swift_continuation_init();
  v0[17] = sub_100003C0C(&qword_10001C390, &qword_100014F50);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10000C9BC;
  v0[13] = &unk_100018E18;
  v0[14] = v4;
  [v1 reportSiriInstrumentationEvent:v2 forBundleID:v3 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100005B70()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_100005CE4;
  }

  else
  {
    v2 = sub_100005C80;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100005C80()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100005CE4()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v4 = v0[18];
  swift_willThrow();

  sub_1000061D4(v1, v4, v3);
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

void sub_100005D8C(uint64_t a1, uint64_t a2, void *a3, void *a4, void (*a5)(id), uint64_t a6)
{
  if (a1)
  {
    swift_errorRetain();
    v12 = sub_1000061D4(a1, a4, a3);

    v11 = v12;
    if (!a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v11 = 0;
  if (a5)
  {
LABEL_3:
    v13 = v11;

    a5(v13);
    sub_100006410(a5, a6);
    v11 = v13;
  }

LABEL_4:
}

uint64_t sub_100005E48(void *a1)
{
  type metadata accessor for FLError(0);
  sub_100005368();
  sub_1000137E0();

  result = 1;
  switch(v3)
  {
    case -10:
      result = 40;
      break;
    case -9:
      result = 39;
      break;
    case -8:
      result = 38;
      break;
    case -7:
      result = 7;
      break;
    case -6:
      result = 6;
      break;
    case -5:
      result = 5;
      break;
    case -4:
      result = 4;
      break;
    case -3:
      result = 3;
      break;
    case -2:
      result = 2;
      break;
    case -1:
      return result;
    case 1:
      result = 8;
      break;
    case 2:
      result = 9;
      break;
    case 3:
      result = 10;
      break;
    case 4:
      result = 11;
      break;
    case 5:
      result = 12;
      break;
    case 6:
      result = 13;
      break;
    case 7:
      result = 14;
      break;
    case 8:
      result = 15;
      break;
    case 9:
      result = 16;
      break;
    case 10:
      result = 17;
      break;
    case 11:
      result = 18;
      break;
    case 12:
      result = 19;
      break;
    case 13:
      result = 20;
      break;
    case 14:
      result = 21;
      break;
    case 15:
      result = 22;
      break;
    case 16:
      result = 23;
      break;
    case 17:
      result = 24;
      break;
    case 18:
      result = 25;
      break;
    case 19:
      result = 26;
      break;
    case 20:
      result = 27;
      break;
    case 21:
      result = 28;
      break;
    case 22:
      result = 29;
      break;
    case 23:
      result = 30;
      break;
    case 24:
      result = 31;
      break;
    case 25:
      result = 32;
      break;
    case 26:
      result = 33;
      break;
    case 27:
      result = 34;
      break;
    case 28:
      result = 35;
      break;
    case 100:
      result = 36;
      break;
    case 101:
      result = 37;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t sub_1000061D4(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_100013810();
  v6 = sub_100013810();
  v7 = sub_100005E48(v6);
  v8 = [a2 data];
  if (v8)
  {
    v9 = v8;
    v10 = sub_100013860();
    v12 = v11;

    v13 = sub_100013850();
    sub_1000063BC(v10, v12);
  }

  else
  {
    v13 = 0;
  }

  [a3 trackFBFError:v7 forEventData:v13];

  if (qword_10001C1D8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for InternalLogger(0);
  sub_100003EA0(v14, qword_10001C4F8);
  sub_100013C60(33);
  v19._countAndFlagsBits = 0xD00000000000001FLL;
  v19._object = 0x8000000100015650;
  sub_100013B50(v19);
  sub_100003C0C(&qword_10001C2F0, &qword_100014798);
  sub_100013CA0();
  v15._countAndFlagsBits = 0;
  v16._countAndFlagsBits = 0xD00000000000007ALL;
  v16._object = 0x8000000100015670;
  v17._object = 0x80000001000156F0;
  v15._object = 0xE000000000000000;
  v17._countAndFlagsBits = 0xD00000000000001BLL;
  InternalLogger.error(_:fromFile:fromFunction:)(v15, v16, v17);

  return v5;
}

uint64_t sub_1000063BC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100006410(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

Swift::Bool __swiftcall ExtensionSampling.isSampleIncluded(assistantId:)(Swift::String_optional assistantId)
{
  if (assistantId.value._object)
  {
    v2 = *v1;
    if (*v1 && (v14 = *(v2 + 16)) != 0)
    {
      v3 = 0;
      v15 = v2 + 32;
      v13 = *v1;
      while (2)
      {
        if (v3 >= *(v2 + 16))
        {
          __break(1u);
          return assistantId.value._countAndFlagsBits;
        }

        v4 = *(v15 + 24 * v3);
        v5 = v4 >= 0;
        if ((v4 & 0x8000000000000000) == 0)
        {

          if (v4 >= sub_100013B30())
          {
LABEL_19:

            v5 = 0;
          }

          else
          {
            ++v3;
            sub_100013B40();
            sub_100013B80();

            while (1)
            {
              sub_100013B60();
              if (!v7)
              {

                goto LABEL_19;
              }

              v8 = sub_100013AC0();
              v10 = v9;
              if (v8 == sub_100013AC0() && v10 == v11)
              {
                break;
              }

              v6 = sub_100013D70();

              if (v6)
              {
                goto LABEL_14;
              }
            }

LABEL_14:

            v2 = v13;
            if (v3 != v14)
            {
              continue;
            }
          }
        }

        break;
      }
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  LOBYTE(assistantId.value._countAndFlagsBits) = v5;
  return assistantId.value._countAndFlagsBits;
}

uint64_t ExtensionRecipe.sampling.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return sub_100003EE8(v2);
}

uint64_t sub_1000066A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x676E696C706D6173 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_100013D70();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100006748(uint64_t a1)
{
  v2 = sub_1000077F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100006784(uint64_t a1)
{
  v2 = sub_1000077F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ExtensionRecipe.encode(to:)(void *a1)
{
  v3 = sub_100003C0C(&qword_10001C398, &qword_1000149D0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = *v1;
  sub_1000049E8(a1, a1[3]);
  sub_100003EE8(v7);
  sub_1000077F0();
  sub_100013E30();
  v10 = v7;
  sub_100007844();
  sub_100013D30();
  sub_100003BFC(v10);
  return (*(v4 + 8))(v6, v3);
}

uint64_t ExtensionRecipe.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_100003C0C(&qword_10001C3B0, &qword_1000149D8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v10 - v7;
  sub_1000049E8(a1, a1[3]);
  sub_1000077F0();
  sub_100013E20();
  if (!v2)
  {
    sub_100007898();
    sub_100013D00();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return sub_10000499C(a1);
}

RepackagingWorker::ExtensionSampling __swiftcall ExtensionSampling.init(assistantIdentifier:andIdentifiers:)(RepackagingWorker::SampleByAssistantIdentifier_optional assistantIdentifier, Swift::OpaquePointer_optional andIdentifiers)
{
  v3 = v2;
  v4 = *(assistantIdentifier.value.position + 16);
  if (assistantIdentifier.value.characters._countAndFlagsBits)
  {
    countAndFlagsBits = assistantIdentifier.value.characters._countAndFlagsBits;
  }

  else if (v4)
  {
    v6 = *assistantIdentifier.value.position;
    v7 = *(assistantIdentifier.value.position + 8);
    sub_100003C0C(&qword_10001C3C0, &qword_1000149E0);
    assistantIdentifier.value.position = swift_allocObject();
    countAndFlagsBits = assistantIdentifier.value.position;
    *(assistantIdentifier.value.position + 16) = xmmword_1000149C0;
    *(assistantIdentifier.value.position + 32) = v6;
    *(assistantIdentifier.value.position + 40) = v7;
    *(assistantIdentifier.value.position + 48) = v4;
  }

  else
  {
    countAndFlagsBits = 0;
  }

  *v3 = countAndFlagsBits;
  return *&assistantIdentifier.value.position;
}

Swift::Int sub_100006B60()
{
  sub_100013DF0();
  sub_100013E00(0);
  return sub_100013E10();
}

Swift::Int sub_100006BA4(uint64_t a1)
{
  sub_100013DF0();
  sub_100013E00(0);
  return sub_100013E10();
}

uint64_t sub_100006C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEB00000000737265)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_100013D70();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100006C90(uint64_t a1)
{
  v2 = sub_1000078EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100006CCC(uint64_t a1)
{
  v2 = sub_1000078EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ExtensionSampling.encode(to:)(void *a1)
{
  v3 = sub_100003C0C(&qword_10001C3C8, &qword_1000149E8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = *v1;
  sub_1000049E8(a1, a1[3]);
  sub_1000078EC();

  sub_100013E30();
  v9[1] = v7;
  sub_100003C0C(&qword_10001C3D8, &qword_1000149F0);
  sub_100007994(&qword_10001C3E0, sub_100007940, &protocol conformance descriptor for <A> [A]);
  sub_100013D30();

  return (*(v4 + 8))(v6, v3);
}

uint64_t ExtensionSampling.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_100003C0C(&qword_10001C3F0, &qword_1000149F8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v10 - v7;
  sub_1000049E8(a1, a1[3]);
  sub_1000078EC();
  sub_100013E20();
  if (!v2)
  {
    sub_100003C0C(&qword_10001C3D8, &qword_1000149F0);
    sub_100007994(&qword_10001C3F8, sub_100007A0C, &protocol conformance descriptor for <A> [A]);
    sub_100013D00();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return sub_10000499C(a1);
}

RepackagingWorker::SampleByAssistantIdentifier __swiftcall SampleByAssistantIdentifier.init(position:characters:)(Swift::Int position, Swift::String characters)
{
  *v2 = position;
  *(v2 + 8) = characters;
  result.characters = characters;
  result.position = position;
  return result;
}

BOOL sub_100007098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 < 0 || sub_100013B30() <= a3)
  {
    return 0;
  }

  sub_100013B40();
  sub_100013B80();

  do
  {
    sub_100013B60();
    v7 = v6 != 0;
    if (!v6)
    {
      break;
    }

    v8 = sub_100013AC0();
    v10 = v9;
    if (v8 == sub_100013AC0() && v10 == v11)
    {

      break;
    }

    v5 = sub_100013D70();
  }

  while ((v5 & 1) == 0);

  return v7;
}

Swift::Int sub_100007228()
{
  v1 = *v0;
  sub_100013DF0();
  sub_100013E00(v1);
  return sub_100013E10();
}

Swift::Int sub_10000729C(uint64_t a1)
{
  v2 = *v1;
  sub_100013DF0();
  sub_100013E00(v2);
  return sub_100013E10();
}

uint64_t sub_1000072E0()
{
  if (*v0)
  {
    return 0x6574636172616863;
  }

  else
  {
    return 0x6E6F697469736F70;
  }
}

uint64_t sub_100007320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000;
  if (v6 || (sub_100013D70() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574636172616863 && a2 == 0xEA00000000007372)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100013D70();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100007410(uint64_t a1)
{
  v2 = sub_100007A60();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000744C(uint64_t a1)
{
  v2 = sub_100007A60();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SampleByAssistantIdentifier.encode(to:)(void *a1)
{
  v4 = sub_100003C0C(&qword_10001C408, &qword_100014A00);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - v6;
  v8 = *(v1 + 8);
  v10[0] = *(v1 + 16);
  v10[1] = v8;
  sub_1000049E8(a1, a1[3]);
  sub_100007A60();
  sub_100013E30();
  v12 = 0;
  sub_100013D50();
  if (!v2)
  {
    v11 = 1;
    sub_100013D40();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t SampleByAssistantIdentifier.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100003C0C(&qword_10001C418, &qword_100014A08);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  sub_1000049E8(a1, a1[3]);
  sub_100007A60();
  sub_100013E20();
  if (!v2)
  {
    v16 = 0;
    v9 = sub_100013D20();
    v15 = 1;
    v11 = sub_100013D10();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
    a2[2] = v13;
  }

  return sub_10000499C(a1);
}

unint64_t sub_1000077F0()
{
  result = qword_10001C3A0;
  if (!qword_10001C3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C3A0);
  }

  return result;
}

unint64_t sub_100007844()
{
  result = qword_10001C3A8;
  if (!qword_10001C3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C3A8);
  }

  return result;
}

unint64_t sub_100007898()
{
  result = qword_10001C3B8;
  if (!qword_10001C3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C3B8);
  }

  return result;
}

unint64_t sub_1000078EC()
{
  result = qword_10001C3D0;
  if (!qword_10001C3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C3D0);
  }

  return result;
}

unint64_t sub_100007940()
{
  result = qword_10001C3E8;
  if (!qword_10001C3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C3E8);
  }

  return result;
}

uint64_t sub_100007994(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003CD0(&qword_10001C3D8, &qword_1000149F0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100007A0C()
{
  result = qword_10001C400;
  if (!qword_10001C400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C400);
  }

  return result;
}

unint64_t sub_100007A60()
{
  result = qword_10001C410;
  if (!qword_10001C410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C410);
  }

  return result;
}

uint64_t sub_100007AB4(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_100007AE4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_100007B4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100007BA8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100007C04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 sub_100007C64(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100007C78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100007CC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SampleByAssistantIdentifier.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SampleByAssistantIdentifier.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for Logging(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for Logging(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_100007F70()
{
  result = qword_10001C420;
  if (!qword_10001C420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C420);
  }

  return result;
}

unint64_t sub_100007FC8()
{
  result = qword_10001C428;
  if (!qword_10001C428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C428);
  }

  return result;
}

unint64_t sub_100008020()
{
  result = qword_10001C430;
  if (!qword_10001C430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C430);
  }

  return result;
}

unint64_t sub_100008078()
{
  result = qword_10001C438;
  if (!qword_10001C438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C438);
  }

  return result;
}

unint64_t sub_1000080D0()
{
  result = qword_10001C440;
  if (!qword_10001C440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C440);
  }

  return result;
}

unint64_t sub_100008128()
{
  result = qword_10001C448;
  if (!qword_10001C448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C448);
  }

  return result;
}

unint64_t sub_100008180()
{
  result = qword_10001C450;
  if (!qword_10001C450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C450);
  }

  return result;
}

unint64_t sub_1000081D8()
{
  result = qword_10001C458;
  if (!qword_10001C458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C458);
  }

  return result;
}

unint64_t sub_100008230()
{
  result = qword_10001C460;
  if (!qword_10001C460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C460);
  }

  return result;
}

id SessionBuilderExtension.init()@<X0>(void *a1@<X8>)
{
  v2 = [objc_opt_self() sharedLoggerWithPersistenceConfiguration:1];
  result = [objc_allocWithZone(SiriAnalyticsInternalTelemetry) init];
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t SessionBuilderExtension.package(with:)(void *a1)
{
  v4 = sub_1000138D0();
  *(v2 + 664) = v4;
  *(v2 + 672) = *(v4 - 8);
  *(v2 + 680) = swift_task_alloc();
  *(v2 + 688) = swift_task_alloc();
  v5 = sub_1000139C0();
  *(v2 + 696) = v5;
  *(v2 + 704) = *(v5 - 8);
  *(v2 + 712) = swift_task_alloc();
  *(v2 + 720) = *a1;
  *(v2 + 728) = *v1;

  return _swift_task_switch(sub_100008444, 0, 0);
}

uint64_t sub_100008444()
{
  sub_100013920();
  swift_allocObject();
  v0[93] = sub_100013910();
  v0[94] = swift_allocObject();
  v3 = (&async function pointer to dispatch thunk of PluginStateService.fetch() + async function pointer to dispatch thunk of PluginStateService.fetch());
  v1 = swift_task_alloc();
  v0[95] = v1;
  *v1 = v0;
  v1[1] = sub_100008520;

  return v3();
}

uint64_t sub_100008520(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 768) = a1;
  *(v3 + 776) = a2;

  return _swift_task_switch(sub_100008624, 0, 0);
}

uint64_t sub_100008624()
{
  *(*(v0 + 752) + 16) = *(v0 + 768);
  v1 = swift_allocObject();
  *(v0 + 784) = v1;
  v2 = sub_100010D98(&_swiftEmptyArrayStorage);
  v3 = sub_100010FA4(&_swiftEmptyArrayStorage);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  if (qword_10001C1D8 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 720);
  v5 = type metadata accessor for InternalLogger(0);
  *(v0 + 792) = sub_100003EA0(v5, qword_10001C4F8);
  *(v0 + 552) = v4;
  sub_100003EE8(v4);
  v12._countAndFlagsBits = sub_100013B00();
  sub_100013B50(v12);

  v6._countAndFlagsBits = 0x203A657069636552;
  v7._countAndFlagsBits = 0x286567616B636170;
  v7._object = 0xEE00293A68746977;
  v8._object = 0x8000000100015730;
  v6._object = 0xE800000000000000;
  v8._countAndFlagsBits = 0xD00000000000007ALL;
  InternalLogger.info(_:fromFile:fromFunction:)(v6, v8, v7);

  sub_100013900();
  v9 = swift_task_alloc();
  *(v0 + 800) = v9;
  *v9 = v0;
  v9[1] = sub_1000087FC;

  return static MessageStoreReader.vend()();
}

uint64_t sub_1000087FC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 808) = a1;
  *(v3 + 816) = v1;

  if (v1)
  {
    v4 = sub_10000BB30;
  }

  else
  {
    v4 = sub_100008914;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100008914()
{
  if (!*(v0 + 808))
  {
    v9 = *(v0 + 784);
    sub_100011190();
    swift_allocError();
    *v10 = 2;
    swift_willThrow();
    swift_beginAccess();
    v11 = *(v9 + 24);

    sub_1000111E4(v11);

    v12 = *(v0 + 8);

    return v12();
  }

  v1 = *(v0 + 720);
  v114 = swift_allocBox();
  v116 = v2;
  *(v0 + 824) = v114;
  if (v1 == 1)
  {
    v3 = *(v0 + 712);
    v4 = *(v0 + 704);
    v5 = *(v0 + 696);

    sub_100013980();
    (*(v4 + 32))(v116, v3, v5);
    v6._countAndFlagsBits = 0xD000000000000017;
    v6._object = 0x80000001000157E0;
    v7._object = 0x8000000100015730;
    v7._countAndFlagsBits = 0xD00000000000007ALL;
    v8._countAndFlagsBits = 0x286567616B636170;
    v8._object = 0xEE00293A68746977;
    InternalLogger.info(_:fromFile:fromFunction:)(v6, v7, v8);
  }

  else
  {
    v14 = *(v0 + 720);
    v15 = *(v0 + 712);
    v16 = *(v0 + 704);
    v17 = *(v0 + 696);
    *(swift_allocObject() + 16) = v14;
    sub_100003EE8(v14);
    sub_100003EE8(v14);

    sub_100013980();
    (*(v16 + 32))(v116, v15, v17);
    sub_100013C60(22);

    *(v0 + 656) = v14;
    v120._countAndFlagsBits = sub_100013B00();
    sub_100013B50(v120);

    v18._countAndFlagsBits = 0xD000000000000014;
    v19._object = 0x8000000100015730;
    v18._object = 0x8000000100015930;
    v19._countAndFlagsBits = 0xD00000000000007ALL;
    v20._countAndFlagsBits = 0x286567616B636170;
    v20._object = 0xEE00293A68746977;
    InternalLogger.info(_:fromFile:fromFunction:)(v18, v19, v20);
  }

  v21 = *(v0 + 784);
  v22 = *(v0 + 752);
  v23 = *(v0 + 712);
  v24 = *(v0 + 704);
  v112 = *(v0 + 696);
  v111 = objc_autoreleasePoolPush();
  swift_beginAccess();
  v25 = *(v22 + 16);
  v26 = *(v22 + 24);
  v27 = swift_allocObject();
  *(v27 + 16) = v21;
  *(v27 + 24) = v114;
  v28 = swift_allocObject();
  *(v28 + 16) = v22;
  *(v28 + 24) = v114;
  swift_retain_n();
  sub_100011684(v25, v26);

  sub_1000138F0();

  sub_1000116EC(v25, v26);
  objc_autoreleasePoolPop(v111);
  swift_beginAccess();
  v29 = *(v24 + 16);
  v29(v23, v116, v112);
  v30 = sub_1000139B0();
  v31 = *(v24 + 8);
  v31(v23, v112);
  v32 = *(v0 + 784);
  if (!v30)
  {
    v49._countAndFlagsBits = 0xD000000000000011;
    v49._object = 0x8000000100015910;
    v50._object = 0x8000000100015730;
    v50._countAndFlagsBits = 0xD00000000000007ALL;
    v51._countAndFlagsBits = 0x286567616B636170;
    v51._object = 0xEE00293A68746977;
    InternalLogger.info(_:fromFile:fromFunction:)(v49, v50, v51);
    sub_100011FC4();
    v52 = objc_allocWithZone(sub_100013A00());
    v53 = sub_1000139E0();

    swift_beginAccess();
    v54 = *(v32 + 24);

    sub_1000111E4(v54);

LABEL_25:

    v91 = *(v0 + 8);

    return v91(v53);
  }

  v33 = objc_autoreleasePoolPush();
  swift_beginAccess();
  v34 = sub_100013990();
  *(v0 + 832) = v34;
  swift_endAccess();
  objc_autoreleasePoolPop(v33);
  v35 = sub_10000D110(v34);
  v36 = sub_10000D808(v35);

  swift_beginAccess();
  *(v32 + 24) = v36;

  *(v0 + 624) = 0;
  v37 = sub_10000DBC8(v34, v0 + 624);
  *(v0 + 840) = v37;
  if (!*(v37 + 16))
  {
    v55 = *(v0 + 712);
    v56 = *(v0 + 696);
    v110 = *(v0 + 784);

    sub_100013C60(79);
    v123._countAndFlagsBits = 0xD00000000000001DLL;
    v123._object = 0x80000001000158C0;
    sub_100013B50(v123);
    v29(v55, v116, v56);
    v57 = sub_1000139B0();
    v31(v55, v56);
    *(v0 + 632) = v57;
    v124._countAndFlagsBits = sub_100013D60();
    sub_100013B50(v124);

    v125._countAndFlagsBits = 0xD00000000000002ELL;
    v125._object = 0x80000001000158E0;
    sub_100013B50(v125);
    v29(v55, v116, v56);
    v58 = sub_100013970();
    v31(v55, v56);
    *(v0 + 640) = v58;
    v126._countAndFlagsBits = sub_100013D60();
    sub_100013B50(v126);

    v59._countAndFlagsBits = 0;
    v60._object = 0x8000000100015730;
    v59._object = 0xE000000000000000;
    v60._countAndFlagsBits = 0xD00000000000007ALL;
    v61._countAndFlagsBits = 0x286567616B636170;
    v61._object = 0xEE00293A68746977;
    InternalLogger.info(_:fromFile:fromFunction:)(v59, v60, v61);

    sub_100011FC4();
    v62 = objc_allocWithZone(sub_100013A00());
    v53 = sub_1000139E0();

    v63 = *(v110 + 24);

    sub_1000111E4(v63);

    goto LABEL_25;
  }

  v113 = (v0 + 624);
  v38 = *(*(v0 + 784) + 32);

  sub_100011700(v37, v38);

  sub_100013C60(29);

  *(v0 + 616) = *(v37 + 16);
  v121._countAndFlagsBits = sub_100013D60();
  sub_100013B50(v121);

  v122._countAndFlagsBits = 0xD000000000000010;
  v122._object = 0x8000000100015800;
  sub_100013B50(v122);
  v39._countAndFlagsBits = 0x6974736973726550;
  v40._object = 0x8000000100015730;
  v39._object = 0xEB0000000020676ELL;
  v40._countAndFlagsBits = 0xD00000000000007ALL;
  v41._countAndFlagsBits = 0x286567616B636170;
  v41._object = 0xEE00293A68746977;
  InternalLogger.info(_:fromFile:fromFunction:)(v39, v40, v41);

  v42 = *(v37 + 32);
  *(v0 + 1048) = v42;
  v43 = 1 << v42;
  v44 = -1;
  if (1 << v42 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & *(v37 + 64);
  *(v0 + 848) = *(*(sub_100003C0C(&qword_10001C470, &qword_100014F40) - 8) + 64);
  *(v0 + 856) = swift_task_alloc();
  *(v0 + 1040) = enum case for OffDeviceTopic.orderedJoined(_:);
  *(v0 + 1044) = enum case for OffDeviceTopic.telemetry(_:);
  *(v0 + 864) = 0;
  v46 = swift_task_alloc();
  if (v45)
  {
    v47 = 0;
    v48 = *(v0 + 840);
LABEL_19:
    v115 = (v45 - 1) & v45;
    v66 = __clz(__rbit64(v45)) | (v47 << 6);
    v67 = sub_1000138B0();
    v68 = *(v67 - 8);
    v69 = v68;
    v70 = swift_task_alloc();
    (*(v68 + 16))(v70, *(v48 + 48) + *(v68 + 72) * v66, v67);
    v71 = *(*(v48 + 56) + 8 * v66);
    v72 = sub_100003C0C(&qword_10001C478, &qword_100014F48);
    v73 = *(v72 + 48);
    (*(v69 + 32))(v46, v70, v67);
    *(v46 + v73) = v71;
    (*(*(v72 - 8) + 56))(v46, 0, 1, v72);

    v74 = v71;
    v75 = v115;
    v65 = v47;
  }

  else
  {
    v64 = 0;
    v65 = ((v43 + 63) >> 6) - 1;
    while (v65 != v64)
    {
      v47 = v64 + 1;
      v48 = *(v0 + 840);
      v45 = *(v48 + 8 * v64++ + 72);
      if (v45)
      {
        goto LABEL_19;
      }
    }

    v109 = sub_100003C0C(&qword_10001C478, &qword_100014F48);
    (*(*(v109 - 8) + 56))(v46, 1, 1, v109);
    v75 = 0;
  }

  *(v0 + 880) = v65;
  *(v0 + 872) = v75;
  v76 = *(v0 + 856);
  sub_100012434(v46, v76, &qword_10001C470, &qword_100014F40);

  v77 = sub_100003C0C(&qword_10001C478, &qword_100014F48);
  if ((*(*(v77 - 8) + 48))(v76, 1, v77) == 1)
  {
    v78 = *(v0 + 864);
    v79 = *(v0 + 752);

    sub_100013C60(24);

    *(v0 + 608) = v78;
    v127._countAndFlagsBits = sub_100013D60();
    sub_100013B50(v127);

    v80._countAndFlagsBits = 0xD000000000000016;
    v81._object = 0x8000000100015730;
    v80._object = 0x8000000100015820;
    v81._countAndFlagsBits = 0xD00000000000007ALL;
    v82._countAndFlagsBits = 0x286567616B636170;
    v82._object = 0xEE00293A68746977;
    InternalLogger.info(_:fromFile:fromFunction:)(v80, v81, v82);

    v83 = *(v79 + 24);
    *(v0 + 1016) = v83;
    if (v83 >> 60 == 15)
    {
      v84 = *v113;
      if (*v113 >= 1)
      {
        sub_100013C60(49);

        *(v0 + 600) = v84;
        v128._countAndFlagsBits = sub_100013D60();
        sub_100013B50(v128);

        v85._countAndFlagsBits = 0xD00000000000002FLL;
        v86._object = 0x8000000100015730;
        v85._object = 0x8000000100015840;
        v86._countAndFlagsBits = 0xD00000000000007ALL;
        v87._countAndFlagsBits = 0x286567616B636170;
        v87._object = 0xEE00293A68746977;
        InternalLogger.fault(_:fromFile:fromFunction:)(v85, v86, v87);
      }

      v88 = *(v0 + 784);
      v89 = objc_allocWithZone(sub_100013A00());
      v53 = sub_1000139F0();

      v90 = *(v88 + 24);

      sub_1000111E4(v90);

      goto LABEL_25;
    }

    v104 = *(*(v0 + 752) + 16);
    *(v0 + 1024) = v104;
    sub_100011698(v104, v83);
    v105._object = 0x8000000100015870;
    v106._object = 0x8000000100015730;
    v105._countAndFlagsBits = 0xD000000000000016;
    v106._countAndFlagsBits = 0xD00000000000007ALL;
    v107._countAndFlagsBits = 0x286567616B636170;
    v107._object = 0xEE00293A68746977;
    InternalLogger.info(_:fromFile:fromFunction:)(v105, v106, v107);
    v118 = (&async function pointer to dispatch thunk of PluginStateService.save(_:) + async function pointer to dispatch thunk of PluginStateService.save(_:));
    v108 = swift_task_alloc();
    *(v0 + 1032) = v108;
    *v108 = v0;
    v108[1] = sub_10000B814;

    return v118(v104, v83);
  }

  else
  {
    v92 = *(v0 + 1040);
    v93 = *(v0 + 856);
    v117 = *(v0 + 728);
    v94 = *(v0 + 688);
    v95 = *(v0 + 672);
    v96 = *(v0 + 664);
    v97 = sub_1000138B0();
    *(v0 + 888) = v97;
    v98 = *(v97 - 8);
    v99 = v98;
    *(v0 + 896) = v98;
    *(v0 + 904) = *(v98 + 64);
    *(v0 + 912) = swift_task_alloc();
    v100 = *(v93 + *(v77 + 48));
    *(v0 + 920) = v100;
    (*(v99 + 32))();
    v101 = *(v95 + 104);
    *(v0 + 928) = v101;
    *(v0 + 936) = (v95 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v101(v94, v92, v96);
    sub_1000138C0();
    v102 = sub_100013AE0();
    *(v0 + 944) = v102;

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_100009B9C;
    v103 = swift_continuation_init();
    *(v0 + 136) = sub_100003C0C(&qword_10001C390, &qword_100014F50);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_10000C9BC;
    *(v0 + 104) = &unk_100019210;
    *(v0 + 112) = v103;
    [v117 reportSiriInstrumentationEvent:v100 forBundleID:v102 completion:?];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_100009B9C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 952) = v1;
  if (v1)
  {
    v2 = sub_10000A8A8;
  }

  else
  {
    v2 = sub_100009CAC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100009CAC()
{
  v1 = *(v0 + 944);
  v2 = *(v0 + 864);
  v3 = *(v0 + 688);
  v4 = *(v0 + 672);
  v5 = *(v0 + 664);
  v6 = *(v4 + 8);
  *(v0 + 960) = v6;
  *(v0 + 968) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);

  *(v0 + 976) = v2 + 1;
  if (__OFADD__(v2, 1))
  {
LABEL_41:
    __break(1u);
    return _swift_continuation_await(v7);
  }

  v8 = *(v0 + 912);
  v9 = *(v0 + 896);
  v10 = *(v0 + 888);
  v11 = swift_task_alloc();
  (*(v9 + 16))(v11, v8, v10);
  swift_beginAccess();
  v13 = sub_10000E18C((v0 + 144));
  if (*(v12 + 24) != 1)
  {
    *(v12 + 17) = 1;
  }

  (v13)(v0 + 144, 0);
  v14 = *(v0 + 896);
  v15 = *(v0 + 888);
  v16 = *(v0 + 784);
  swift_endAccess();
  v17 = *(v14 + 8);
  *(v0 + 984) = v17;
  *(v0 + 992) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v11, v15);

  *(v0 + 504) = 0;
  *(v0 + 512) = 0xE000000000000000;
  sub_100013C60(38);

  *(v0 + 520) = 0xD000000000000024;
  *(v0 + 528) = 0x8000000100015890;
  sub_1000122B8(&qword_10001C480, &protocol conformance descriptor for UUID);
  v100._countAndFlagsBits = sub_100013D60();
  sub_100013B50(v100);

  v18._object = 0x8000000100015730;
  v18._countAndFlagsBits = 0xD00000000000007ALL;
  v19._countAndFlagsBits = 0x286567616B636170;
  v19._object = 0xEE00293A68746977;
  InternalLogger.debug(_:fromFile:fromFunction:)(*(v0 + 520), v18, v19);

  swift_beginAccess();
  v20 = *(v16 + 24);
  if (*(v20 + 16) && (v21 = sub_10000FB60(*(v0 + 912)), (v22 & 1) != 0))
  {
    v23 = *(v0 + 912);
    v24 = *(v20 + 56) + 32 * v21;
    v25 = *v24;
    v26 = *(v24 + 8);
    v27 = *(v24 + 16);
    v28 = *(v24 + 17);
    v29 = *(v24 + 24);
    swift_endAccess();
    v30 = v29;
    if (v28)
    {
      v31 = 256;
    }

    else
    {
      v31 = 0;
    }

    v32 = sub_100004DE8(v23, v25, v26, v31 | v27, v29);

    v33 = [v32 wrapAsAnyEvent];
    *(v0 + 1000) = v33;

    if (v33)
    {
      (*(v0 + 928))(*(v0 + 680), *(v0 + 1044), *(v0 + 664));
      v34 = swift_task_alloc();
      *(v0 + 1008) = v34;
      *v34 = v0;
      v34[1] = sub_10000B680;
      v35 = *(v0 + 736);
      v36 = *(v0 + 728);
      v37 = *(v0 + 680);

      return sub_100005A08(v33, v37, v36, v35);
    }

    v95 = *(v0 + 920);
    v17(*(v0 + 912), *(v0 + 888));
  }

  else
  {
    v39 = *(v0 + 920);
    v40 = *(v0 + 912);
    v41 = *(v0 + 888);
    swift_endAccess();

    v17(v40, v41);
  }

  v42 = *(v0 + 880);
  v43 = *(v0 + 872);
  *(v0 + 864) = *(v0 + 976);
  v7 = swift_task_alloc();
  v44 = v7;
  if (!v43)
  {
    v46 = ((1 << *(v0 + 1048)) + 63) >> 6;
    if (v46 <= (v42 + 1))
    {
      v47 = v42 + 1;
    }

    else
    {
      v47 = ((1 << *(v0 + 1048)) + 63) >> 6;
    }

    v48 = v47 - 1;
    while (1)
    {
      v49 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v49 >= v46)
      {
        v94 = sub_100003C0C(&qword_10001C478, &qword_100014F48);
        (*(*(v94 - 8) + 56))(v44, 1, 1, v94);
        v59 = 0;
        goto LABEL_25;
      }

      v45 = *(v0 + 840);
      v43 = *(v45 + 8 * v49 + 64);
      ++v42;
      if (v43)
      {
        v42 = v49;
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_41;
  }

  v45 = *(v0 + 840);
LABEL_24:
  v96 = (v43 - 1) & v43;
  v50 = __clz(__rbit64(v43)) | (v42 << 6);
  v51 = sub_1000138B0();
  v52 = *(v51 - 8);
  v53 = v52;
  v54 = swift_task_alloc();
  (*(v52 + 16))(v54, *(v45 + 48) + *(v52 + 72) * v50, v51);
  v55 = *(*(v45 + 56) + 8 * v50);
  v56 = sub_100003C0C(&qword_10001C478, &qword_100014F48);
  v57 = *(v56 + 48);
  (*(v53 + 32))(v44, v54, v51);
  *(v44 + v57) = v55;
  (*(*(v56 - 8) + 56))(v44, 0, 1, v56);

  v58 = v55;
  v59 = v96;
  v48 = v42;
LABEL_25:
  *(v0 + 880) = v48;
  *(v0 + 872) = v59;
  v60 = *(v0 + 856);
  sub_100012434(v44, v60, &qword_10001C470, &qword_100014F40);

  v61 = sub_100003C0C(&qword_10001C478, &qword_100014F48);
  if ((*(*(v61 - 8) + 48))(v60, 1, v61) != 1)
  {
    v77 = *(v0 + 1040);
    v78 = *(v0 + 856);
    v79 = *(v0 + 688);
    v80 = *(v0 + 672);
    v97 = *(v0 + 728);
    v81 = *(v0 + 664);
    v82 = sub_1000138B0();
    *(v0 + 888) = v82;
    v83 = *(v82 - 8);
    v84 = v83;
    *(v0 + 896) = v83;
    *(v0 + 904) = *(v83 + 64);
    *(v0 + 912) = swift_task_alloc();
    v85 = *(v78 + *(v61 + 48));
    *(v0 + 920) = v85;
    (*(v84 + 32))();
    v86 = *(v80 + 104);
    *(v0 + 928) = v86;
    *(v0 + 936) = (v80 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v86(v79, v77, v81);
    sub_1000138C0();
    v87 = sub_100013AE0();
    *(v0 + 944) = v87;

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_100009B9C;
    v88 = swift_continuation_init();
    *(v0 + 136) = sub_100003C0C(&qword_10001C390, &qword_100014F50);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_10000C9BC;
    *(v0 + 104) = &unk_100019210;
    *(v0 + 112) = v88;
    [v97 reportSiriInstrumentationEvent:v85 forBundleID:v87 completion:?];
    v7 = v0 + 16;

    return _swift_continuation_await(v7);
  }

  v62 = *(v0 + 864);
  v63 = *(v0 + 752);

  sub_100013C60(24);

  *(v0 + 608) = v62;
  v101._countAndFlagsBits = sub_100013D60();
  sub_100013B50(v101);

  v64._countAndFlagsBits = 0xD000000000000016;
  v65._object = 0x8000000100015730;
  v64._object = 0x8000000100015820;
  v65._countAndFlagsBits = 0xD00000000000007ALL;
  v66._countAndFlagsBits = 0x286567616B636170;
  v66._object = 0xEE00293A68746977;
  InternalLogger.info(_:fromFile:fromFunction:)(v64, v65, v66);

  v67 = *(v63 + 24);
  *(v0 + 1016) = v67;
  if (v67 >> 60 == 15)
  {
    v68 = *(v0 + 624);
    if (v68 >= 1)
    {
      sub_100013C60(49);

      *(v0 + 600) = v68;
      v102._countAndFlagsBits = sub_100013D60();
      sub_100013B50(v102);

      v69._countAndFlagsBits = 0xD00000000000002FLL;
      v70._object = 0x8000000100015730;
      v69._object = 0x8000000100015840;
      v70._countAndFlagsBits = 0xD00000000000007ALL;
      v71._countAndFlagsBits = 0x286567616B636170;
      v71._object = 0xEE00293A68746977;
      InternalLogger.fault(_:fromFile:fromFunction:)(v69, v70, v71);
    }

    v72 = *(v0 + 784);
    v73 = objc_allocWithZone(sub_100013A00());
    v74 = sub_1000139F0();

    v75 = *(v72 + 24);

    sub_1000111E4(v75);

    v76 = *(v0 + 8);

    return v76(v74);
  }

  else
  {
    v89 = *(*(v0 + 752) + 16);
    *(v0 + 1024) = v89;
    sub_100011698(v89, v67);
    v90._object = 0x8000000100015870;
    v91._object = 0x8000000100015730;
    v90._countAndFlagsBits = 0xD000000000000016;
    v91._countAndFlagsBits = 0xD00000000000007ALL;
    v92._countAndFlagsBits = 0x286567616B636170;
    v92._object = 0xEE00293A68746977;
    InternalLogger.info(_:fromFile:fromFunction:)(v90, v91, v92);
    v98 = (&async function pointer to dispatch thunk of PluginStateService.save(_:) + async function pointer to dispatch thunk of PluginStateService.save(_:));
    v93 = swift_task_alloc();
    *(v0 + 1032) = v93;
    *v93 = v0;
    v93[1] = sub_10000B814;

    return v98(v89, v67);
  }
}

uint64_t sub_10000A8A8()
{
  v1 = *(v0 + 952);
  v2 = *(v0 + 944);
  v3 = *(v0 + 920);
  v4 = *(v0 + 736);
  v5 = *(v0 + 688);
  v6 = *(v0 + 672);
  v7 = *(v0 + 664);
  swift_willThrow();

  v8 = sub_1000061D4(v1, v3, v4);
  swift_willThrow();

  (*(v6 + 8))(v5, v7);
  *(v0 + 592) = v8;
  v9 = v8;
  sub_100003C0C(&qword_10001C2F0, &qword_100014798);
  type metadata accessor for FLError(0);
  if (swift_dynamicCast())
  {
    v10 = *(v0 + 912);
    v11 = *(v0 + 896);
    v12 = *(v0 + 888);

    v92 = *(v0 + 584);
    v13 = swift_task_alloc();
    (*(v11 + 16))(v13, v10, v12);
    swift_beginAccess();
    v15 = sub_10000E18C((v0 + 176));
    v16 = *(v14 + 24);
    if (v16 != 1)
    {
      *(v14 + 24) = v92;
      v17 = v92;
    }

    (v15)(v0 + 176, 0);
    v18 = *(v0 + 896);
    v19 = *(v0 + 888);
    swift_endAccess();
    v91 = *(v18 + 8);
    v91(v13, v19);

    *(v0 + 472) = 0;
    *(v0 + 480) = 0xE000000000000000;
    sub_100013C60(48);
    v20 = *(v0 + 480);
    *(v0 + 536) = *(v0 + 472);
    *(v0 + 544) = v20;
    v97._countAndFlagsBits = 0xD00000000000001FLL;
    v97._object = 0x8000000100015650;
    sub_100013B50(v97);
    *(v0 + 560) = v92;
    sub_100013CA0();
    v98._countAndFlagsBits = 0x6F6973736573202CLL;
    v98._object = 0xED00003D64695F6ELL;
    sub_100013B50(v98);
    sub_1000122B8(&qword_10001C480, &protocol conformance descriptor for UUID);
    v99._countAndFlagsBits = sub_100013D60();
    sub_100013B50(v99);

    v21._object = 0x8000000100015730;
    v21._countAndFlagsBits = 0xD00000000000007ALL;
    v22._countAndFlagsBits = 0x286567616B636170;
    v22._object = 0xEE00293A68746977;
    InternalLogger.error(_:fromFile:fromFunction:)(*(v0 + 536), v21, v22);

    *(v0 + 568) = v92;
    sub_100005368();
    sub_1000137E0();
    v23 = *(v0 + 920);
    v24 = *(v0 + 912);
    v25 = *(v0 + 888);
    if (*(v0 + 576) == -5)
    {
      v91(*(v0 + 912), *(v0 + 888));

      v26 = *(v0 + 880);
      v27 = *(v0 + 872);
      v28 = swift_task_alloc();
      v29 = v28;
      if (v27)
      {
        v30 = *(v0 + 840);
LABEL_20:
        v93 = (v27 - 1) & v27;
        v46 = __clz(__rbit64(v27)) | (v26 << 6);
        v47 = sub_1000138B0();
        v48 = *(v47 - 8);
        v49 = v48;
        v50 = swift_task_alloc();
        (*(v48 + 16))(v50, *(v30 + 48) + *(v48 + 72) * v46, v47);
        v51 = *(*(v30 + 56) + 8 * v46);
        v52 = sub_100003C0C(&qword_10001C478, &qword_100014F48);
        v53 = *(v52 + 48);
        (*(v49 + 32))(v29, v50, v47);
        *(v29 + v53) = v51;
        (*(*(v52 - 8) + 56))(v29, 0, 1, v52);

        v54 = v51;
        v55 = v93;
        v44 = v26;
LABEL_21:
        *(v0 + 880) = v44;
        *(v0 + 872) = v55;
        v56 = *(v0 + 856);
        sub_100012434(v29, v56, &qword_10001C470, &qword_100014F40);

        v57 = sub_100003C0C(&qword_10001C478, &qword_100014F48);
        if ((*(*(v57 - 8) + 48))(v56, 1, v57) == 1)
        {
          v58 = *(v0 + 864);
          v59 = *(v0 + 752);

          sub_100013C60(24);

          *(v0 + 608) = v58;
          v100._countAndFlagsBits = sub_100013D60();
          sub_100013B50(v100);

          v60._countAndFlagsBits = 0xD000000000000016;
          v61._object = 0x8000000100015730;
          v60._object = 0x8000000100015820;
          v61._countAndFlagsBits = 0xD00000000000007ALL;
          v62._countAndFlagsBits = 0x286567616B636170;
          v62._object = 0xEE00293A68746977;
          InternalLogger.info(_:fromFile:fromFunction:)(v60, v61, v62);

          v63 = *(v59 + 24);
          *(v0 + 1016) = v63;
          if (v63 >> 60 == 15)
          {
            v64 = *(v0 + 624);
            if (v64 >= 1)
            {
              sub_100013C60(49);

              *(v0 + 600) = v64;
              v101._countAndFlagsBits = sub_100013D60();
              sub_100013B50(v101);

              v65._countAndFlagsBits = 0xD00000000000002FLL;
              v66._object = 0x8000000100015730;
              v65._object = 0x8000000100015840;
              v66._countAndFlagsBits = 0xD00000000000007ALL;
              v67._countAndFlagsBits = 0x286567616B636170;
              v67._object = 0xEE00293A68746977;
              InternalLogger.fault(_:fromFile:fromFunction:)(v65, v66, v67);
            }

            v68 = *(v0 + 784);
            v69 = objc_allocWithZone(sub_100013A00());
            v70 = sub_1000139F0();

            v71 = *(v68 + 24);

            sub_1000111E4(v71);

            v72 = *(v0 + 8);

            return v72(v70);
          }

          else
          {
            v85 = *(*(v0 + 752) + 16);
            *(v0 + 1024) = v85;
            sub_100011698(v85, v63);
            v86._object = 0x8000000100015870;
            v87._object = 0x8000000100015730;
            v86._countAndFlagsBits = 0xD000000000000016;
            v87._countAndFlagsBits = 0xD00000000000007ALL;
            v88._countAndFlagsBits = 0x286567616B636170;
            v88._object = 0xEE00293A68746977;
            InternalLogger.info(_:fromFile:fromFunction:)(v86, v87, v88);
            v95 = (&async function pointer to dispatch thunk of PluginStateService.save(_:) + async function pointer to dispatch thunk of PluginStateService.save(_:));
            v89 = swift_task_alloc();
            *(v0 + 1032) = v89;
            *v89 = v0;
            v89[1] = sub_10000B814;

            return v95(v85, v63);
          }
        }

        v73 = *(v0 + 1040);
        v74 = *(v0 + 856);
        v94 = *(v0 + 728);
        v75 = *(v0 + 688);
        v76 = *(v0 + 672);
        v77 = *(v0 + 664);
        v78 = sub_1000138B0();
        *(v0 + 888) = v78;
        v79 = *(v78 - 8);
        v80 = v79;
        *(v0 + 896) = v79;
        *(v0 + 904) = *(v79 + 64);
        *(v0 + 912) = swift_task_alloc();
        v81 = *(v74 + *(v57 + 48));
        *(v0 + 920) = v81;
        (*(v80 + 32))();
        v82 = *(v76 + 104);
        *(v0 + 928) = v82;
        *(v0 + 936) = (v76 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
        v82(v75, v73, v77);
        sub_1000138C0();
        v83 = sub_100013AE0();
        *(v0 + 944) = v83;

        *(v0 + 16) = v0;
        *(v0 + 24) = sub_100009B9C;
        v84 = swift_continuation_init();
        *(v0 + 136) = sub_100003C0C(&qword_10001C390, &qword_100014F50);
        *(v0 + 80) = _NSConcreteStackBlock;
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_10000C9BC;
        *(v0 + 104) = &unk_100019210;
        *(v0 + 112) = v84;
        [v94 reportSiriInstrumentationEvent:v81 forBundleID:v83 completion:?];
        v28 = v0 + 16;
      }

      else
      {
        v42 = ((1 << *(v0 + 1048)) + 63) >> 6;
        if (v42 <= (v26 + 1))
        {
          v43 = v26 + 1;
        }

        else
        {
          v43 = ((1 << *(v0 + 1048)) + 63) >> 6;
        }

        v44 = v43 - 1;
        while (1)
        {
          v45 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            break;
          }

          if (v45 >= v42)
          {
            v90 = sub_100003C0C(&qword_10001C478, &qword_100014F48);
            (*(*(v90 - 8) + 56))(v29, 1, 1, v90);
            v55 = 0;
            goto LABEL_21;
          }

          v30 = *(v0 + 840);
          v27 = *(v30 + 8 * v45 + 64);
          ++v26;
          if (v27)
          {
            v26 = v45;
            goto LABEL_20;
          }
        }

        __break(1u);
      }

      return _swift_continuation_await(v28);
    }

    v37 = *(v0 + 784);
    sub_100011190();
    swift_allocError();
    *v38 = 1;
    swift_willThrow();

    v91(v24, v25);

    v39 = *(v37 + 24);

    sub_1000111E4(v39);
  }

  else
  {
    v31 = *(v0 + 920);
    v32 = *(v0 + 912);
    v33 = *(v0 + 896);
    v34 = *(v0 + 888);
    v35 = *(v0 + 784);

    (*(v33 + 8))(v32, v34);

    v36 = *(v35 + 24);

    sub_1000111E4(v36);
  }

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_10000B680()
{
  v2 = *v1;

  v3 = v2[120];
  v4 = v2[85];
  v5 = v2[83];
  if (v0)
  {

    v3(v4, v5);
    v6 = sub_10000BD4C;
  }

  else
  {
    v3(v4, v5);
    v6 = sub_100012820;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10000B814()
{

  return _swift_task_switch(sub_10000B910, 0, 0);
}

uint64_t sub_10000B910()
{
  sub_1000116EC(v0[128], v0[127]);
  v1 = v0[78];
  if (v1 >= 1)
  {
    sub_100013C60(49);

    v0[75] = v1;
    v12._countAndFlagsBits = sub_100013D60();
    sub_100013B50(v12);

    v2._countAndFlagsBits = 0xD00000000000002FLL;
    v3._countAndFlagsBits = 0x286567616B636170;
    v3._object = 0xEE00293A68746977;
    v4._countAndFlagsBits = 0xD00000000000007ALL;
    v4._object = 0x8000000100015730;
    v2._object = 0x8000000100015840;
    InternalLogger.fault(_:fromFile:fromFunction:)(v2, v4, v3);
  }

  v5 = v0[98];
  v6 = objc_allocWithZone(sub_100013A00());
  v7 = sub_1000139F0();

  v8 = *(v5 + 24);

  sub_1000111E4(v8);

  v9 = v0[1];

  return v9(v7);
}

uint64_t sub_10000BB30()
{
  v1 = *(v0 + 816);
  v2 = *(v0 + 784);
  sub_100013C60(39);
  *(v0 + 488) = 0;
  *(v0 + 496) = 0xE000000000000000;
  v10._object = 0x80000001000157B0;
  v10._countAndFlagsBits = 0xD000000000000025;
  sub_100013B50(v10);
  *(v0 + 648) = v1;
  sub_100003C0C(&qword_10001C2F0, &qword_100014798);
  sub_100013CA0();
  v3._countAndFlagsBits = 0x286567616B636170;
  v3._object = 0xEE00293A68746977;
  v4._countAndFlagsBits = 0xD00000000000007ALL;
  v4._object = 0x8000000100015730;
  InternalLogger.error(_:fromFile:fromFunction:)(*(v0 + 488), v4, v3);

  sub_100011190();
  swift_allocError();
  *v5 = 0;
  swift_willThrow();

  swift_beginAccess();
  v6 = *(v2 + 24);

  sub_1000111E4(v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10000BD4C()
{
  v1 = *(v0 + 1000);
  v2 = *(v0 + 984);
  v3 = *(v0 + 920);
  v4 = *(v0 + 912);
  v5 = *(v0 + 888);
  swift_beginAccess();
  v6 = sub_10000E31C(v4);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  swift_endAccess();
  sub_100011FB4(v6, v8, v10, v12);

  v2(v4, v5);

  v13 = *(v0 + 880);
  v14 = *(v0 + 872);
  *(v0 + 864) = *(v0 + 976);
  v15 = swift_task_alloc();
  v16 = v15;
  if (!v14)
  {
    v18 = ((1 << *(v0 + 1048)) + 63) >> 6;
    if (v18 <= (v13 + 1))
    {
      v19 = v13 + 1;
    }

    else
    {
      v19 = ((1 << *(v0 + 1048)) + 63) >> 6;
    }

    v20 = v19 - 1;
    while (1)
    {
      v21 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v21 >= v18)
      {
        v67 = sub_100003C0C(&qword_10001C478, &qword_100014F48);
        (*(*(v67 - 8) + 56))(v16, 1, 1, v67);
        v31 = 0;
        goto LABEL_12;
      }

      v17 = *(v0 + 840);
      v14 = *(v17 + 8 * v21 + 64);
      ++v13;
      if (v14)
      {
        v13 = v21;
        goto LABEL_11;
      }
    }

    __break(1u);
    return _swift_continuation_await(v15);
  }

  v17 = *(v0 + 840);
LABEL_11:
  v68 = (v14 - 1) & v14;
  v22 = __clz(__rbit64(v14)) | (v13 << 6);
  v23 = sub_1000138B0();
  v24 = *(v23 - 8);
  v25 = v24;
  v26 = swift_task_alloc();
  (*(v24 + 16))(v26, *(v17 + 48) + *(v24 + 72) * v22, v23);
  v27 = *(*(v17 + 56) + 8 * v22);
  v28 = sub_100003C0C(&qword_10001C478, &qword_100014F48);
  v29 = *(v28 + 48);
  (*(v25 + 32))(v16, v26, v23);
  *(v16 + v29) = v27;
  (*(*(v28 - 8) + 56))(v16, 0, 1, v28);

  v30 = v27;
  v31 = v68;
  v20 = v13;
LABEL_12:
  *(v0 + 880) = v20;
  *(v0 + 872) = v31;
  v32 = *(v0 + 856);
  sub_100012434(v16, v32, &qword_10001C470, &qword_100014F40);

  v33 = sub_100003C0C(&qword_10001C478, &qword_100014F48);
  if ((*(*(v33 - 8) + 48))(v32, 1, v33) != 1)
  {
    v50 = *(v0 + 1040);
    v51 = *(v0 + 856);
    v52 = *(v0 + 688);
    v53 = *(v0 + 672);
    v69 = *(v0 + 728);
    v54 = *(v0 + 664);
    v55 = sub_1000138B0();
    *(v0 + 888) = v55;
    v56 = *(v55 - 8);
    v57 = v56;
    *(v0 + 896) = v56;
    *(v0 + 904) = *(v56 + 64);
    *(v0 + 912) = swift_task_alloc();
    v58 = *(v51 + *(v33 + 48));
    *(v0 + 920) = v58;
    (*(v57 + 32))();
    v59 = *(v53 + 104);
    *(v0 + 928) = v59;
    *(v0 + 936) = (v53 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v59(v52, v50, v54);
    sub_1000138C0();
    v60 = sub_100013AE0();
    *(v0 + 944) = v60;

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_100009B9C;
    v61 = swift_continuation_init();
    *(v0 + 136) = sub_100003C0C(&qword_10001C390, &qword_100014F50);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_10000C9BC;
    *(v0 + 104) = &unk_100019210;
    *(v0 + 112) = v61;
    [v69 reportSiriInstrumentationEvent:v58 forBundleID:v60 completion:?];
    v15 = v0 + 16;

    return _swift_continuation_await(v15);
  }

  v34 = *(v0 + 864);
  v35 = *(v0 + 752);

  sub_100013C60(24);

  *(v0 + 608) = v34;
  v72._countAndFlagsBits = sub_100013D60();
  sub_100013B50(v72);

  v36._countAndFlagsBits = 0xD000000000000016;
  v37._object = 0x8000000100015730;
  v36._object = 0x8000000100015820;
  v37._countAndFlagsBits = 0xD00000000000007ALL;
  v38._countAndFlagsBits = 0x286567616B636170;
  v38._object = 0xEE00293A68746977;
  InternalLogger.info(_:fromFile:fromFunction:)(v36, v37, v38);

  v39 = *(v35 + 24);
  *(v0 + 1016) = v39;
  if (v39 >> 60 == 15)
  {
    v40 = *(v0 + 624);
    if (v40 >= 1)
    {
      sub_100013C60(49);

      *(v0 + 600) = v40;
      v73._countAndFlagsBits = sub_100013D60();
      sub_100013B50(v73);

      v41._countAndFlagsBits = 0xD00000000000002FLL;
      v42._object = 0x8000000100015730;
      v41._object = 0x8000000100015840;
      v42._countAndFlagsBits = 0xD00000000000007ALL;
      v43._countAndFlagsBits = 0x286567616B636170;
      v43._object = 0xEE00293A68746977;
      InternalLogger.fault(_:fromFile:fromFunction:)(v41, v42, v43);
    }

    v44 = *(v0 + 784);
    v45 = objc_allocWithZone(sub_100013A00());
    v46 = sub_1000139F0();

    v47 = *(v44 + 24);

    sub_1000111E4(v47);

    v48 = *(v0 + 8);

    return v48(v46);
  }

  else
  {
    v62 = *(*(v0 + 752) + 16);
    *(v0 + 1024) = v62;
    sub_100011698(v62, v39);
    v63._object = 0x8000000100015870;
    v64._object = 0x8000000100015730;
    v63._countAndFlagsBits = 0xD000000000000016;
    v64._countAndFlagsBits = 0xD00000000000007ALL;
    v65._countAndFlagsBits = 0x286567616B636170;
    v65._object = 0xEE00293A68746977;
    InternalLogger.info(_:fromFile:fromFunction:)(v63, v64, v65);
    v70 = (&async function pointer to dispatch thunk of PluginStateService.save(_:) + async function pointer to dispatch thunk of PluginStateService.save(_:));
    v66 = swift_task_alloc();
    *(v0 + 1032) = v66;
    *v66 = v0;
    v66[1] = sub_10000B814;

    return v70(v62, v39);
  }
}

uint64_t sub_10000C62C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x726F727245666266;
    }

    else
    {
      v3 = 0xD00000000000001ELL;
    }

    if (v2)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0x80000001000152E0;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xD000000000000015;
    v4 = 0x8000000100015310;
  }

  else if (a1 == 3)
  {
    v3 = 0x67617373654D6F6ELL;
    v4 = 0xEA00000000007365;
  }

  else
  {
    v3 = 0x6F69737365536F6ELL;
    v4 = 0xEF646E756F46736ELL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x726F727245666266;
    }

    else
    {
      v6 = 0xD00000000000001ELL;
    }

    if (a2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0x80000001000152E0;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0x8000000100015310;
    if (v3 != 0xD000000000000015)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xEA00000000007365;
    if (v3 != 0x67617373654D6F6ELL)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xEF646E756F46736ELL;
    if (v3 != 0x6F69737365536F6ELL)
    {
LABEL_31:
      v7 = sub_100013D70();
      goto LABEL_32;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_10000C800(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006465;
  v3 = 0x6C706D6153746F6ELL;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6C706D6153746F6ELL;
    }

    else
    {
      v5 = 0x64657070696B73;
    }

    if (v4 == 2)
    {
      v6 = 0xEA00000000006465;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0xD000000000000012;
    }

    else
    {
      v5 = 0xD000000000000011;
    }

    if (v4)
    {
      v6 = 0x80000001000152B0;
    }

    else
    {
      v6 = 0x8000000100015290;
    }
  }

  if (a2 != 2)
  {
    v3 = 0x64657070696B73;
    v2 = 0xE700000000000000;
  }

  v7 = 0xD000000000000011;
  v8 = 0x80000001000152B0;
  if (a2)
  {
    v7 = 0xD000000000000012;
  }

  else
  {
    v8 = 0x8000000100015290;
  }

  if (a2 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v3;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v2;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100013D70();
  }

  return v11 & 1;
}

uint64_t sub_10000C934()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_1000063BC(*(v0 + 16), v1);
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000C97C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000C9BC(uint64_t a1, void *a2)
{
  v3 = sub_1000049E8((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_100003C0C(&qword_10001C2F0, &qword_100014798);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

void sub_10000CA68(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

BOOL sub_10000CAD4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v3 = sub_10000FB60(a1), (v4 & 1) != 0))
  {
    v5 = (*(a2 + 56) + 16 * v3);
    v6 = *v5;
    v7 = v5[1];

    v8 = v6;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v9 = v7;
  v10 = ExtensionSampling.isSampleIncluded(assistantId:)(*&v8);

  return v10;
}

uint64_t sub_10000CB5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000139C0();
  swift_projectBox();
  swift_beginAccess();
  sub_10000CBFC();
  swift_endAccess();
  swift_beginAccess();
  sub_1000139A0();
  swift_endAccess();
  return 1;
}

void sub_10000CBFC()
{
  if (*v0 == -1)
  {
    __break(1u);
    goto LABEL_16;
  }

  v2 = v0;
  v1 = 0xD000000000000020;
  ++*v0;
  if (!SDRDiagnosticReporter || (sub_100013B10(), has_internal_content = os_variant_has_internal_content(), , !has_internal_content))
  {
    if (qword_10001C1D8 == -1)
    {
LABEL_9:
      v15 = type metadata accessor for InternalLogger(0);
      sub_100003EA0(v15, qword_10001C4F8);
      v16._countAndFlagsBits = 0x65737365636F7270;
      v16._object = 0xEF293A7476652864;
      v17._countAndFlagsBits = v1 + 13;
      v17._object = 0x8000000100015950;
      v18._countAndFlagsBits = v1 + 90;
      v18._object = 0x8000000100015730;
      InternalLogger.debug(_:fromFile:fromFunction:)(v17, v18, v16);
      return;
    }

LABEL_16:
    swift_once();
    goto LABEL_9;
  }

  v4 = sub_1000138B0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100013950();
  if (!v8)
  {
    __break(1u);
    goto LABEL_18;
  }

  v9 = v8;
  sub_1000139D0();

  v10 = sub_100013940();
  if (!v10)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v11 = v10;
  v12 = [v10 getAnyEventType];

  if (v12 == 17)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v2 + 2);
    v14 = 1;
  }

  else
  {
    if (*(*(v2 + 2) + 16))
    {
      sub_10000FB60(v7);
      if (v19)
      {
        (*(v5 + 8))(v7, v4);
        return;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v2 + 2);
    v14 = 0;
  }

  sub_100010BF8(v14, v7, isUniquelyReferenced_nonNull_native);
  (*(v5 + 8))(v7, v4);
  *(v2 + 2) = v21;
}

uint64_t sub_10000CEA4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000139C0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_projectBox();
  swift_beginAccess();
  v13 = *(a4 + 16);
  v14 = *(a4 + 24);
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  sub_100011684(a1, a2);
  sub_1000116EC(v13, v14);
  if (qword_10001C1D8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for InternalLogger(0);
  sub_100003EA0(v15, qword_10001C4F8);
  v20[2] = 0;
  v20[3] = 0xE000000000000000;
  sub_100013C60(17);

  v21._countAndFlagsBits = 0x736567617373654DLL;
  v21._object = 0xEF203A6461657220;
  swift_beginAccess();
  (*(v9 + 16))(v11, v12, v8);
  v16 = sub_1000139B0();
  (*(v9 + 8))(v11, v8);
  v20[1] = v16;
  v22._countAndFlagsBits = sub_100013D60();
  sub_100013B50(v22);

  v17._countAndFlagsBits = 0x286567616B636170;
  v17._object = 0xEE00293A68746977;
  v18._object = 0x8000000100015730;
  v18._countAndFlagsBits = 0xD00000000000007ALL;
  InternalLogger.info(_:fromFile:fromFunction:)(v21, v18, v17);
}

uint64_t sub_10000D110(uint64_t a1)
{
  v2 = sub_100013960();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v79 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = &_swiftEmptyDictionarySingleton;
  v89 = &_swiftEmptyDictionarySingleton;
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = sub_100003C0C(&qword_10001C4C0, &qword_100015140);
  v66 = &v64;
  v85 = v10;
  v86 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v75 = &v64 - v11;
  v12 = (v7 + 63) >> 6;
  v73 = v3 + 88;
  v74 = v3 + 16;
  v84 = enum case for EnvelopeResult.included(_:);
  v69 = (v3 + 96);
  v68 = enum case for EnvelopeResult.notIncluded(_:);
  v77 = v3;
  v78 = a1;
  v71 = (v3 + 8);

  v14 = 0;
  v70 = v2;
  v76 = v6;
  v72 = v12;
  while (v9)
  {
    v88 = v5;
LABEL_15:
    v27 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v28 = v27 | (v14 << 6);
    v29 = v78;
    v30 = *(v78 + 48);
    v31 = sub_1000138B0();
    v82 = *(v31 - 8);
    v81 = *(v82 + 72);
    v32 = *(v82 + 16);
    v33 = v75;
    v83 = v31;
    v32(v75, v30 + v81 * v28);
    v34 = *(v29 + 56);
    v35 = v77;
    v36 = v85;
    v37 = *(v77 + 16);
    v38 = v37(v33 + *(v85 + 48), v34 + *(v77 + 72) * v28, v2);
    v87 = &v64;
    __chkstk_darwin(v38);
    v40 = &v64 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_100012434(v33, v40, &qword_10001C4C0, &qword_100015140);
    v41 = &v40[*(v36 + 48)];
    v42 = v79;
    v37(v79, v41, v2);
    result = (*(v35 + 88))(v42, v2);
    v43 = result;
    if (result == v84)
    {
      result = (*v69)(v42, v2);
      v44 = *v42;
      v80 = *(v42 + 2);
      v5 = v88;
      if (v44)
      {
        v67 = v43;
        v46 = [v44 payload];
        v6 = v76;
        v45 = v83;
        if (v46)
        {
          v47 = v46;
          v65 = sub_100013860();
          v49 = v48;

          v50 = v49;
          v51 = v49 >> 62;
          if ((v49 >> 62) <= 1)
          {
            v43 = v67;
            if (v51)
            {
              v59 = v65;
              v60 = HIDWORD(v65);
              result = sub_1000063BC(v65, v50);
              if (__OFSUB__(v60, v59))
              {
                goto LABEL_49;
              }

              v44 = v60 - v59;
            }

            else
            {
              result = sub_1000063BC(v65, v49);
              v44 = BYTE6(v49);
            }

            goto LABEL_43;
          }

          if (v51 == 2)
          {
            v57 = *(v65 + 16);
            v56 = *(v65 + 24);
            result = sub_1000063BC(v65, v49);
            v58 = __OFSUB__(v56, v57);
            v44 = v56 - v57;
            if (v58)
            {
              goto LABEL_48;
            }

            goto LABEL_42;
          }

          result = sub_1000063BC(v65, v49);
        }

        else
        {
        }

        v44 = 0;
LABEL_42:
        v43 = v67;
        goto LABEL_43;
      }

      v6 = v76;
      v45 = v83;
    }

    else
    {
      v6 = v76;
      v5 = v88;
      if (result != v68)
      {
        (*v71)(v79, v2);
        result = sub_1000123D4(v40, &qword_10001C4C0, &qword_100015140);
        goto LABEL_8;
      }

      v80 = 0;
      v44 = 0;
      v45 = v83;
    }

LABEL_43:
    v88 = &v64;
    __chkstk_darwin(result);
    v62 = &v64 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_100012434(v40, v62, &qword_10001C4C0, &qword_100015140);
    v63 = v5[2];
    if (v5[3] <= v63)
    {
      sub_10000F22C(v63 + 1, 1);
    }

    v5 = v89;
    sub_1000122B8(&qword_10001C4A0, &protocol conformance descriptor for UUID);
    result = sub_100013AA0();
    v15 = (v5 + 8);
    v16 = -1 << *(v5 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~v5[(v17 >> 6) + 8]) == 0)
    {
      v52 = 0;
      v53 = (63 - v16) >> 6;
      while (++v18 != v53 || (v52 & 1) == 0)
      {
        v54 = v18 == v53;
        if (v18 == v53)
        {
          v18 = 0;
        }

        v52 |= v54;
        v55 = *&v15[8 * v18];
        if (v55 != -1)
        {
          v19 = v45;
          v20 = v44;
          v21 = __clz(__rbit64(~v55)) + (v18 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_47;
    }

    v19 = v45;
    v20 = v44;
    v21 = __clz(__rbit64((-1 << v17) & ~v5[(v17 >> 6) + 8])) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    v22 = v43 != v84;
    v23 = *(v85 + 48);
    *&v15[(v21 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v21;
    (*(v82 + 32))(v5[6] + v21 * v81, v62, v19);
    v24 = v5[7] + 24 * v21;
    *v24 = v80;
    *(v24 + 8) = v20;
    *(v24 + 16) = v22;
    ++v5[2];
    v25 = &v62[v23];
    v2 = v70;
    result = (*v71)(v25, v70);
LABEL_8:
    v12 = v72;
  }

  while (1)
  {
    v26 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v26 >= v12)
    {

      return v5;
    }

    v9 = *(v6 + 8 * v26);
    ++v14;
    if (v9)
    {
      v88 = v5;
      v14 = v26;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_10000D808(uint64_t a1)
{
  v2 = &_swiftEmptyDictionarySingleton;
  v48 = &_swiftEmptyDictionarySingleton;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v37 = &v37;
  v41 = sub_100003C0C(&qword_10001C4D0, &qword_100015150);
  v40 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41);
  v39 = &v37 - v7;
  v8 = (v4 + 63) >> 6;
  v42 = a1;

  v10 = 0;
  v38 = v3;
  while (v6)
  {
LABEL_13:
    v19 = __clz(__rbit64(v6)) | (v10 << 6);
    v20 = v42;
    v21 = *(v42 + 48);
    v22 = sub_1000138B0();
    v47 = *(v22 - 8);
    v45 = *(v47 + 72);
    v23 = v39;
    v24 = (*(v47 + 16))(v39, v21 + v45 * v19, v22);
    v46 = &v37;
    v25 = *(v20 + 56) + 24 * v19;
    v27 = *v25;
    v26 = *(v25 + 8);
    v28 = *(v25 + 16);
    v29 = v23 + *(v41 + 48);
    *v29 = v27;
    *(v29 + 8) = v26;
    v44 = v26;
    v43 = v28;
    *(v29 + 16) = v28;
    __chkstk_darwin(v24);
    v31 = &v37 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_100012434(v23, v31, &qword_10001C4D0, &qword_100015150);
    v32 = v2[2];
    if (v2[3] <= v32)
    {
      sub_10000EA84(v32 + 1, 1);
    }

    v2 = v48;
    sub_1000122B8(&qword_10001C4A0, &protocol conformance descriptor for UUID);
    result = sub_100013AA0();
    v11 = (v2 + 8);
    v12 = -1 << *(v2 + 32);
    v13 = result & ~v12;
    v14 = v13 >> 6;
    if (((-1 << v13) & ~v2[(v13 >> 6) + 8]) == 0)
    {
      v33 = 0;
      v34 = (63 - v12) >> 6;
      while (++v14 != v34 || (v33 & 1) == 0)
      {
        v35 = v14 == v34;
        if (v14 == v34)
        {
          v14 = 0;
        }

        v33 |= v35;
        v36 = *&v11[8 * v14];
        if (v36 != -1)
        {
          v15 = __clz(__rbit64(~v36)) + (v14 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_25;
    }

    v15 = __clz(__rbit64((-1 << v13) & ~v2[(v13 >> 6) + 8])) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    v6 &= v6 - 1;
    *&v11[(v15 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v15;
    result = (*(v47 + 32))(v2[6] + v15 * v45, v31, v22);
    v16 = v2[7] + 32 * v15;
    v17 = v44;
    *v16 = v27;
    *(v16 + 8) = v17;
    *(v16 + 16) = v43;
    *(v16 + 24) = 0;
    ++v2[2];
    v3 = v38;
  }

  while (1)
  {
    v18 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v18 >= v8)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v18);
    ++v10;
    if (v6)
    {
      v10 = v18;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_10000DBC8(uint64_t a1, uint64_t a2)
{
  v52[0] = a2;
  v3 = sub_100013960();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v61 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = &_swiftEmptyDictionarySingleton;
  v71 = &_swiftEmptyDictionarySingleton;
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = sub_100003C0C(&qword_10001C4C0, &qword_100015140);
  v52[1] = v52;
  v68 = v10;
  v69 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v60 = v52 - v11;
  v12 = (v7 + 63) >> 6;
  v58 = v4 + 88;
  v59 = v4 + 16;
  v57 = enum case for EnvelopeResult.included(_:);
  v62 = v4;
  v53 = (v4 + 96);
  v54 = (v4 + 8);
  v67 = a1;

  v14 = 0;
  v55 = v12;
  v56 = a1 + 64;
  while (v9)
  {
LABEL_10:
    v16 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v17 = v16 | (v14 << 6);
    v18 = v67;
    v19 = *(v67 + 48);
    v20 = sub_1000138B0();
    v64 = *(v20 - 8);
    v63 = *(v64 + 72);
    v21 = *(v64 + 16);
    v22 = v60;
    v65 = v20;
    v21(v60, v19 + v63 * v17);
    v23 = *(v18 + 56);
    v24 = v62;
    v25 = v68;
    v26 = *(v62 + 16);
    v27 = v26(v22 + *(v68 + 48), v23 + *(v62 + 72) * v17, v3);
    v70 = v52;
    __chkstk_darwin(v27);
    v29 = v52 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_100012434(v22, v29, &qword_10001C4C0, &qword_100015140);
    v30 = &v29[*(v25 + 48)];
    v31 = v61;
    v26(v61, v30, v3);
    v32 = (*(v24 + 88))(v31, v3);
    if (v32 != v57)
    {
      (*v54)(v31, v3);
      v6 = v56;
      goto LABEL_19;
    }

    result = (*v53)(v31, v3);
    v33 = *v31;
    if (*v31)
    {
      __chkstk_darwin(result);
      v35 = v52 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_100012434(v29, v35, &qword_10001C4C0, &qword_100015140);
      v36 = v66[2];
      if (v66[3] <= v36)
      {
        sub_10000EE84(v36 + 1, 1);
      }

      v37 = v71;
      sub_1000122B8(&qword_10001C4A0, &protocol conformance descriptor for UUID);
      v38 = v65;
      result = sub_100013AA0();
      v39 = (v37 + 8);
      v66 = v37;
      v40 = -1 << *(v37 + 32);
      v41 = result & ~v40;
      v42 = v41 >> 6;
      if (((-1 << v41) & ~v37[(v41 >> 6) + 8]) == 0)
      {
        v46 = 0;
        v47 = (63 - v40) >> 6;
        while (++v42 != v47 || (v46 & 1) == 0)
        {
          v48 = v42 == v47;
          if (v42 == v47)
          {
            v42 = 0;
          }

          v46 |= v48;
          v49 = *&v39[8 * v42];
          if (v49 != -1)
          {
            v43 = v38;
            v44 = v33;
            v45 = __clz(__rbit64(~v49)) + (v42 << 6);
            goto LABEL_28;
          }
        }

        goto LABEL_31;
      }

      v43 = v38;
      v44 = v33;
      v45 = __clz(__rbit64((-1 << v41) & ~v37[(v41 >> 6) + 8])) | v41 & 0x7FFFFFFFFFFFFFC0;
LABEL_28:
      v50 = *(v68 + 48);
      *&v39[(v45 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v45;
      v51 = v66;
      (*(v64 + 32))(v66[6] + v45 * v63, v35, v43);
      *(v51[7] + 8 * v45) = v44;
      ++v51[2];
      result = (*v54)(&v35[v50], v3);
      v12 = v55;
      v6 = v56;
    }

    else
    {
      v6 = v56;
      if (__OFADD__(*v52[0], 1))
      {
        goto LABEL_32;
      }

      ++*v52[0];
LABEL_19:
      result = sub_1000123D4(v29, &qword_10001C4C0, &qword_100015140);
      v12 = v55;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      return v66;
    }

    v9 = *(v6 + 8 * v15);
    ++v14;
    if (v9)
    {
      v14 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t (*sub_10000E18C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = sub_1000138B0();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v3[6] = v7;
  (*(v6 + 16))();
  v3[7] = sub_10000F990(v3);
  return sub_10000E2A4;
}

void sub_10000E2A4(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

uint64_t sub_10000E31C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10000FB60(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1000100F8();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = sub_1000138B0();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 32 * v5);
  sub_10000FC1C(v5, v7);
  *v2 = v7;
  return v10;
}

Swift::Int sub_10000E434()
{
  sub_100013DF0();
  sub_100013B20();

  return sub_100013E10();
}

uint64_t sub_10000E52C(uint64_t a1)
{
  sub_100013B20();
}

Swift::Int sub_10000E610(uint64_t a1)
{
  sub_100013DF0();
  sub_100013B20();

  return sub_100013E10();
}

unint64_t sub_10000E704@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001226C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10000E734(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x726F727245666266;
  v5 = 0x8000000100015310;
  v6 = 0xEA00000000007365;
  v7 = 0x67617373654D6F6ELL;
  if (v2 != 3)
  {
    v7 = 0x6F69737365536F6ELL;
    v6 = 0xEF646E756F46736ELL;
  }

  if (v2 == 2)
  {
    v7 = 0xD000000000000015;
  }

  else
  {
    v5 = v6;
  }

  if (!*v1)
  {
    v4 = 0xD00000000000001ELL;
    v3 = 0x80000001000152E0;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

void sub_10000E7E8(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_11;
  }

  sub_100013AF0();
  sub_100013C40();
  if (!*(a1 + 16) || (v2 = sub_10000FBD8(v12), (v3 & 1) == 0))
  {
    sub_100012324(v12);
LABEL_11:
    v13 = 0u;
    v14 = 0u;
    goto LABEL_12;
  }

  sub_100004924(*(a1 + 56) + 32 * v2, &v13);
  sub_100012324(v12);
  if (!*(&v14 + 1))
  {
LABEL_12:
    sub_1000123D4(&v13, &qword_10001C4B8, &qword_100015138);
    goto LABEL_13;
  }

  if (swift_dynamicCast() & 1) != 0 && (v12[0])
  {
    if (qword_10001C1D8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for InternalLogger(0);
    sub_100003EA0(v4, qword_10001C4F8);
    v5._countAndFlagsBits = 0xD000000000000013;
    v5._object = 0x8000000100015A50;
    v6._countAndFlagsBits = 0xD00000000000007ALL;
    v6._object = 0x8000000100015730;
    v7._object = 0x8000000100015980;
    v7._countAndFlagsBits = 0xD000000000000020;
    InternalLogger.info(_:fromFile:fromFunction:)(v5, v6, v7);
    return;
  }

LABEL_13:
  if (qword_10001C1D8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for InternalLogger(0);
  sub_100003EA0(v8, qword_10001C4F8);
  v9._countAndFlagsBits = 0xD00000000000001ELL;
  v9._object = 0x8000000100015A30;
  v10._countAndFlagsBits = 0xD00000000000007ALL;
  v10._object = 0x8000000100015730;
  v11._object = 0x8000000100015980;
  v11._countAndFlagsBits = 0xD000000000000020;
  InternalLogger.error(_:fromFile:fromFunction:)(v9, v10, v11);
}

uint64_t sub_10000E9F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_100013A90();
  }

  else
  {
    v3 = 0;
  }

  v2(v3);
}

uint64_t sub_10000EA84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003C0C(&qword_10001C4A8, &qword_100015130);
  v52 = v4;
  result = sub_100013CD0();
  v7 = result;
  if (*(v5 + 16))
  {
    v50 = v2;
    v51 = v5;
    v8 = 0;
    v11 = *(v5 + 64);
    v10 = (v5 + 64);
    v9 = v11;
    v12 = 1 << *(v10 - 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & v9;
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v20 = __clz(__rbit64(v14));
      v59 = (v14 - 1) & v14;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = sub_1000138B0();
      v58 = &v49;
      v25 = *(v24 - 8);
      __chkstk_darwin(v24);
      v27 = &v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
      v28 = v51;
      v29 = *(v51 + 48);
      v57 = *(v30 + 72);
      v31 = v29 + v57 * v23;
      if (v52)
      {
        (*(v25 + 32))(&v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v31, v24);
        v32 = *(v28 + 56) + 32 * v23;
        v33 = *(v32 + 8);
        v53 = *v32;
        v56 = v33;
        v34 = *(v32 + 16);
        v54 = *(v32 + 17);
        v55 = v34;
        v35 = *(v32 + 24);
      }

      else
      {
        (*(v25 + 16))(&v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v31, v24);
        v36 = *(v28 + 56) + 32 * v23;
        v37 = *(v36 + 8);
        v53 = *v36;
        v56 = v37;
        v38 = *(v36 + 16);
        v54 = *(v36 + 17);
        v55 = v38;
        v35 = *(v36 + 24);
        v39 = v35;
      }

      sub_1000122B8(&qword_10001C4A0, &protocol conformance descriptor for UUID);
      result = sub_100013AA0();
      v40 = -1 << *(v7 + 32);
      v41 = result & ~v40;
      v42 = v41 >> 6;
      if (((-1 << v41) & ~*(v16 + 8 * (v41 >> 6))) == 0)
      {
        v43 = 0;
        v44 = (63 - v40) >> 6;
        while (++v42 != v44 || (v43 & 1) == 0)
        {
          v45 = v42 == v44;
          if (v42 == v44)
          {
            v42 = 0;
          }

          v43 |= v45;
          v46 = *(v16 + 8 * v42);
          if (v46 != -1)
          {
            v17 = __clz(__rbit64(~v46)) + (v42 << 6);
            goto LABEL_7;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v41) & ~*(v16 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      result = (*(v25 + 32))(*(v7 + 48) + v57 * v17, v27, v24);
      v18 = *(v7 + 56) + 32 * v17;
      v19 = v56;
      *v18 = v53;
      *(v18 + 8) = v19;
      LOBYTE(v19) = v54;
      *(v18 + 16) = v55;
      *(v18 + 17) = v19;
      *(v18 + 24) = v35;
      ++*(v7 + 16);
      v14 = v59;
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v8 >= v15)
      {
        break;
      }

      v22 = v10[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v59 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v50;
      goto LABEL_35;
    }

    v3 = v50;
    v47 = v51;
    v48 = 1 << *(v51 + 32);
    if (v48 >= 64)
    {
      bzero(v10, ((v48 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v48;
    }

    *(v47 + 16) = 0;
  }

LABEL_35:
  *v3 = v7;
  return result;
}

uint64_t sub_10000EE84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003C0C(&qword_10001C4C8, &qword_100015148);
  v38 = v4;
  result = sub_100013CD0();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v41 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = sub_1000138B0();
      v40 = &v36;
      v21 = *(v20 - 8);
      __chkstk_darwin(v20);
      v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      v24 = *(v5 + 48);
      v39 = *(v25 + 72);
      v26 = v24 + v39 * v19;
      if (v38)
      {
        (*(v21 + 32))(&v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v26, v20);
        v27 = *(*(v5 + 56) + 8 * v19);
      }

      else
      {
        (*(v21 + 16))(&v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v26, v20);
        v27 = *(*(v5 + 56) + 8 * v19);
      }

      sub_1000122B8(&qword_10001C4A0, &protocol conformance descriptor for UUID);
      result = sub_100013AA0();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = (*(v21 + 32))(*(v7 + 48) + v39 * v15, v23, v20);
      *(*(v7 + 56) + 8 * v15) = v27;
      ++*(v7 + 16);
      v12 = v41;
      v5 = v37;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v41 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_10000F22C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003C0C(&qword_10001C4D8, &qword_100015158);
  v41 = v4;
  result = sub_100013CD0();
  v7 = result;
  if (*(v5 + 16))
  {
    v40 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    v47 = v5;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v46 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = sub_1000138B0();
      v45 = &v40;
      v23 = *(v22 - 8);
      __chkstk_darwin(v22);
      v25 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      v26 = *(v5 + 48);
      v28 = *(v27 + 72);
      v29 = v26 + v28 * v21;
      if (v41)
      {
        (*(v23 + 32))(&v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v29, v22);
      }

      else
      {
        (*(v23 + 16))(&v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v29, v22);
      }

      v30 = *(v47 + 56) + 24 * v21;
      v44 = *(v30 + 16);
      v31 = *(v30 + 8);
      v42 = *v30;
      v43 = v31;
      sub_1000122B8(&qword_10001C4A0, &protocol conformance descriptor for UUID);
      result = sub_100013AA0();
      v32 = -1 << *(v7 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v14 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v14 + 8 * v34);
          if (v38 != -1)
          {
            v15 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v33) & ~*(v14 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = (*(v23 + 32))(*(v7 + 48) + v28 * v15, v25, v22);
      v16 = *(v7 + 56) + 24 * v15;
      v17 = v43;
      *v16 = v42;
      *(v16 + 8) = v17;
      *(v16 + 16) = v44;
      ++*(v7 + 16);
      v12 = v46;
      v5 = v47;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v46 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v9, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_10000F5F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003C0C(&qword_10001C4E0, &qword_100015160);
  v38 = v4;
  result = sub_100013CD0();
  v7 = result;
  if (*(v5 + 16))
  {
    v37 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    v42 = v5;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v41 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = sub_1000138B0();
      v40 = &v36;
      v21 = *(v20 - 8);
      __chkstk_darwin(v20);
      v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      v24 = *(v5 + 48);
      v26 = *(v25 + 72);
      v27 = v24 + v26 * v19;
      if (v38)
      {
        (*(v21 + 32))(&v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v20);
      }

      else
      {
        (*(v21 + 16))(&v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v20);
      }

      v39 = *(*(v42 + 56) + v19);
      sub_1000122B8(&qword_10001C4A0, &protocol conformance descriptor for UUID);
      result = sub_100013AA0();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = (*(v21 + 32))(*(v7 + 48) + v26 * v15, v23, v20);
      *(*(v7 + 56) + v15) = v39;
      ++*(v7 + 16);
      v12 = v41;
      v5 = v42;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v41 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v37;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

void (*sub_10000F990(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x68uLL);
  }

  v3 = v2;
  *a1 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = sub_1000138B0();
  v3[8] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v3[9] = v6;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v3[10] = v8;
  (*(v7 + 16))();
  v3[11] = sub_100010A28(v3);
  v3[12] = sub_100010610(v3 + 4, v9, isUniquelyReferenced_nonNull_native);
  return sub_10000FAC8;
}

void sub_10000FAC8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

unint64_t sub_10000FB60(uint64_t a1)
{
  sub_1000138B0();
  sub_1000122B8(&qword_10001C4A0, &protocol conformance descriptor for UUID);
  v2 = sub_100013AA0();

  return sub_10000FEBC(a1, v2);
}

unint64_t sub_10000FBD8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100013C20(*(v2 + 40));

  return sub_100010030(a1, v4);
}

unint64_t sub_10000FC1C(unint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_100013C10() + 1) & ~v5;
    result = sub_1000138B0();
    v38 = result;
    v9 = *(result - 8);
    v10 = v9[2];
    v35 = v9 + 2;
    v36 = v10;
    v11 = v9[8];
    v12 = v9[9];
    v33 = v12;
    v34 = v11;
    v32 = (v9 + 1);
    v37 = v4;
    do
    {
      __chkstk_darwin(result);
      v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = v12 * v6;
      v16 = *(v2 + 48) + v12 * v6;
      v17 = v38;
      v36(v14, v16, v38);
      v18 = v2;
      sub_1000122B8(&qword_10001C4A0, &protocol conformance descriptor for UUID);
      v19 = sub_100013AA0();
      result = (*v32)(v14, v17);
      v20 = v19 & v7;
      if (v3 >= v8)
      {
        if (v20 >= v8 && v3 >= v20)
        {
LABEL_15:
          v2 = v18;
          v23 = *(v18 + 48);
          v12 = v33;
          result = v23 + v33 * v3;
          v4 = v37;
          if (v33 * v3 < v15 || result >= v23 + v15 + v33)
          {
            result = swift_arrayInitWithTakeFrontToBack();
          }

          else if (v33 * v3 != v15)
          {
            result = swift_arrayInitWithTakeBackToFront();
          }

          v24 = *(v18 + 56);
          v25 = (v24 + 32 * v3);
          v26 = (v24 + 32 * v6);
          if (v3 != v6 || v25 >= v26 + 2)
          {
            v27 = v26[1];
            *v25 = *v26;
            v25[1] = v27;
            v3 = v6;
          }

          goto LABEL_4;
        }
      }

      else if (v20 >= v8 || v3 >= v20)
      {
        goto LABEL_15;
      }

      v4 = v37;
      v2 = v18;
      v12 = v33;
LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v28 = *(v2 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v30;
    ++*(v2 + 36);
  }

  return result;
}

unint64_t sub_10000FEBC(uint64_t a1, uint64_t a2)
{
  v16 = a1;
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  v15 = v2 + 64;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v14 = ~v3;
    v5 = sub_1000138B0();
    v6 = v5;
    v7 = *(v5 - 8);
    v8 = v7[2];
    v9 = v7[8];
    v10 = v7[9];
    v11 = (v7 + 1);
    do
    {
      __chkstk_darwin(v5);
      v8(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), *(v17 + 48) + v10 * v4, v6);
      sub_1000122B8(&qword_10001C4B0, &protocol conformance descriptor for UUID);
      v12 = sub_100013AD0();
      v5 = (*v11)(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
      if (v12)
      {
        break;
      }

      v4 = (v4 + 1) & v14;
    }

    while (((*(v15 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100010030(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100012378(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100013C30();
      sub_100012324(v8);
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

id sub_1000100F8()
{
  v1 = v0;
  sub_100003C0C(&qword_10001C4A8, &qword_100015130);
  v2 = *v0;
  v3 = sub_100013CC0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = (v2 + 64);
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, v32, 8 * v6);
    }

    v8 = 0;
    v9 = *(v2 + 16);
    v33 = v2;
    v34 = v4;
    *(v4 + 16) = v9;
    v10 = 1 << *(v2 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v2 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v4;
    if (v12)
    {
      do
      {
        v15 = __clz(__rbit64(v12));
        v39 = (v12 - 1) & v12;
LABEL_17:
        v18 = v15 | (v8 << 6);
        v19 = sub_1000138B0();
        v38 = &v31;
        v20 = *(v19 - 8);
        __chkstk_darwin(v19);
        v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
        v24 = *(v23 + 72) * v18;
        (*(v20 + 16))(v22, *(v2 + 48) + v24, v19);
        v18 *= 32;
        v25 = *(v2 + 56) + v18;
        v26 = *v25;
        v37 = *(v25 + 8);
        v27 = *(v25 + 16);
        v35 = *(v25 + 17);
        v36 = v27;
        v28 = *(v25 + 24);
        (*(v20 + 32))(*(v14 + 48) + v24, v22, v19);
        v29 = *(v14 + 56) + v18;
        v30 = v37;
        *v29 = v26;
        *(v29 + 8) = v30;
        LOBYTE(v30) = v35;
        *(v29 + 16) = v36;
        *(v29 + 17) = v30;
        *(v29 + 24) = v28;
        result = v28;
        v2 = v33;
        v12 = v39;
      }

      while (v39);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v31;
        v4 = v34;
        goto LABEL_21;
      }

      v17 = *(v32 + v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v39 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1000103A4()
{
  v1 = v0;
  sub_100003C0C(&qword_10001C4E0, &qword_100015160);
  v2 = *v0;
  v3 = sub_100013CC0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = (v2 + 64);
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, v28, 8 * v6);
    }

    v8 = 0;
    v9 = *(v2 + 16);
    v29 = v4;
    *(v4 + 16) = v9;
    v10 = 1 << *(v2 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v2 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v4;
    if (v12)
    {
      do
      {
        v15 = __clz(__rbit64(v12));
        v31 = (v12 - 1) & v12;
LABEL_17:
        v18 = v15 | (v8 << 6);
        v19 = sub_1000138B0();
        v30 = &v26;
        v20 = *(v19 - 8);
        __chkstk_darwin(v19);
        v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
        v24 = *(v23 + 72) * v18;
        (*(v20 + 16))(v22, *(v2 + 48) + v24, v19);
        v25 = *(*(v2 + 56) + v18);
        result = (*(v20 + 32))(*(v14 + 48) + v24, v22, v19);
        *(*(v14 + 56) + v18) = v25;
        v12 = v31;
      }

      while (v31);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        v4 = v29;
        goto LABEL_21;
      }

      v17 = *(v28 + v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v31 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void (*sub_100010610(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1, char a2)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x40uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 32) = a2;
  *(v8 + 40) = v3;
  v10 = *v3;
  v11 = sub_10000FB60(a2);
  *(v9 + 56) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_19;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 >= v16 && (a3 & 1) != 0)
  {
    goto LABEL_11;
  }

  if (v18 < v16 || (a3 & 1) != 0)
  {
    sub_10000EA84(v16, a3 & 1);
    v11 = sub_10000FB60(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_19:
    sub_1000138B0();
    result = sub_100013D80();
    __break(1u);
    return result;
  }

  v19 = v11;
  sub_1000100F8();
  v11 = v19;
LABEL_11:
  *(v9 + 48) = v11;
  if (v17)
  {
    v21 = *(*v4 + 56) + 32 * v11;
    v22 = *v21;
    v23 = *(v21 + 16);
    v24 = *(v21 + 17);
    v25 = *(v21 + 24);
    v26 = v24 == 0;
    v27 = 256;
    if (v26)
    {
      v27 = 0;
    }

    v28 = v27 | v23;
  }

  else
  {
    v28 = 0;
    v22 = 0uLL;
    v25 = 1;
  }

  *v9 = v22;
  *(v9 + 16) = v28;
  *(v9 + 24) = v25;
  return sub_100010784;
}

void sub_100010784(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {
    if (v6 != 1)
    {
      v7 = v2[6];
      v8 = *v2[5];
      if (((*a1)[7] & 1) == 0)
      {
        v9 = v2[4];
        v10 = sub_1000138B0();
        __chkstk_darwin(v10);
        v12 = &v29[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
        (*(v13 + 16))(v12, v9);
        v14 = v5 & 1;
        v29[0] = v5 & 1;
LABEL_11:
        sub_100010A5C(v7, v12, v3, v4, v5 & 0x100 | v14, v6, v8);
        goto LABEL_12;
      }

LABEL_9:
      v20 = v8[7] + 32 * v7;
      *v20 = v3;
      *(v20 + 8) = v4;
      *(v20 + 16) = v5 & 1;
      *(v20 + 17) = BYTE1(v5) & 1;
      *(v20 + 24) = v6;
      goto LABEL_12;
    }
  }

  else if (v6 != 1)
  {
    v7 = v2[6];
    v8 = *v2[5];
    if (((*a1)[7] & 1) == 0)
    {
      v21 = v2[4];
      v22 = sub_1000138B0();
      __chkstk_darwin(v22);
      v12 = &v29[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v24 + 16))(v12, v21);
      v14 = v5 & 1;
      v29[8] = v5 & 1;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if ((*a1)[7])
  {
    v15 = v2[5];
    v16 = v2[6];
    v17 = *v15;
    v18 = *(*v15 + 48);
    v19 = sub_1000138B0();
    (*(*(v19 - 8) + 8))(v18 + *(*(v19 - 8) + 72) * v16, v19);
    sub_10000FC1C(v16, v17);
  }

LABEL_12:
  v25 = *v2;
  v26 = v2[1];
  v27 = v2[2];
  v28 = v2[3];
  sub_1000122FC(v3, v4, v5, v6);
  sub_100011FB4(v25, v26, v27, v28);
  free(v2);
}

uint64_t (*sub_100010A28(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_100010A50;
}

uint64_t sub_100010A5C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, uint64_t a6, void *a7)
{
  a7[(a1 >> 6) + 8] |= 1 << a1;
  v14 = a7[6];
  v15 = sub_1000138B0();
  result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * a1, a2, v15);
  v17 = a7[7] + 32 * a1;
  *v17 = a3;
  *(v17 + 8) = a4;
  *(v17 + 16) = a5 & 1;
  *(v17 + 17) = HIBYTE(a5) & 1;
  *(v17 + 24) = a6;
  v18 = a7[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v20;
  }

  return result;
}

uint64_t sub_100010B40(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1000138B0();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_100010BF8(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_10000FB60(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  result = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      *(v16[7] + v10) = a1 & 1;
      return result;
    }

    goto LABEL_11;
  }

  if (v15 >= result && (a3 & 1) == 0)
  {
    result = sub_1000103A4();
    goto LABEL_7;
  }

  sub_10000F5F0(result, a3 & 1);
  result = sub_10000FB60(a2);
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_14:
    sub_1000138B0();
    result = sub_100013D80();
    __break(1u);
    return result;
  }

  v10 = result;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:
  v18 = sub_1000138B0();
  __chkstk_darwin(v18);
  v20 = &v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, a2);
  return sub_100010B40(v10, v20, a1 & 1, v16);
}

unint64_t sub_100010D98(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100003C0C(&qword_10001C4A8, &qword_100015130);
    v3 = sub_100013CE0();
  }

  else
  {
    v3 = &_swiftEmptyDictionarySingleton;
  }

  v4 = sub_100003C0C(&qword_10001C4F0, &qword_100015170);
  v5 = __chkstk_darwin(v4);
  v8 = &v24 - v7;
  if (!v2)
  {
    return v3;
  }

  v9 = &v8[*(v5 + 48)];
  v10 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v11 = *(v6 + 72);

  while (1)
  {
    sub_100012504(v10, v8, &qword_10001C4F0, &qword_100015170);
    result = sub_10000FB60(v8);
    if (v13)
    {
      break;
    }

    v14 = result;
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v15 = v3[6];
    v16 = sub_1000138B0();
    result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v8, v16);
    v17 = v3[7] + 32 * v14;
    v18 = v9[16];
    v19 = v9[17];
    v20 = *(v9 + 3);
    *v17 = *v9;
    *(v17 + 16) = v18;
    *(v17 + 17) = v19;
    *(v17 + 24) = v20;
    v21 = v3[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_12;
    }

    v3[2] = v23;
    v10 += v11;
    if (!--v2)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_100010FA4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100003C0C(&qword_10001C4E0, &qword_100015160);
    v3 = sub_100013CE0();
  }

  else
  {
    v3 = &_swiftEmptyDictionarySingleton;
  }

  v4 = sub_100003C0C(&qword_10001C4E8, &qword_100015168);
  v5 = __chkstk_darwin(v4);
  v8 = &v20 - v7;
  if (!v2)
  {
    return v3;
  }

  v9 = *(v5 + 48);
  v10 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v11 = *(v6 + 72);

  while (1)
  {
    sub_100012504(v10, v8, &qword_10001C4E8, &qword_100015168);
    result = sub_10000FB60(v8);
    if (v13)
    {
      break;
    }

    v14 = result;
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v15 = v3[6];
    v16 = sub_1000138B0();
    result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v8, v16);
    *(v3[7] + v14) = v8[v9];
    v17 = v3[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      goto LABEL_12;
    }

    v3[2] = v19;
    v10 += v11;
    if (!--v2)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_100011190()
{
  result = qword_10001C468;
  if (!qword_10001C468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C468);
  }

  return result;
}

unint64_t sub_1000111E4(uint64_t a1)
{
  v45 = sub_1000138D0();
  v3 = *(v45 - 8);
  __chkstk_darwin(v45);
  v40 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  v41 = v1[1];
  v42 = v5;
  result = sub_1000053C0(a1);
  v7 = result;
  if (!(result >> 62))
  {
    v8 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_16:
  }

  result = sub_100013CB0();
  v8 = result;
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (v8 >= 1)
  {
    v9 = 0;
    v43 = v7 & 0xC000000000000001;
    v39 = enum case for OffDeviceTopic.telemetry(_:);
    v37 = v47;
    v38 = (v3 + 104);
    v35 = 0x8000000100015A70;
    v36 = (v3 + 8);
    v33 = "vent as any event: ";
    v34 = "v16@?0@NSError8";
    do
    {
      if (v43)
      {
        v23 = sub_100013C70();
      }

      else
      {
        v23 = *(v7 + 8 * v9 + 32);
      }

      v24 = v23;
      v25 = [v23 wrapAsAnyEvent];
      if (v25)
      {
        v10 = v25;
        v11 = v40;
        (*v38)(v40, v39, v45);
        sub_1000138C0();
        v12 = sub_100013AE0();
        v44 = v24;
        v13 = v12;

        v14 = swift_allocObject();
        v15 = v42;
        v16 = v8;
        v17 = v7;
        v18 = v41;
        v14[2] = v42;
        v14[3] = v18;
        v14[5] = 0;
        v14[6] = 0;
        v14[4] = v10;
        v47[2] = sub_1000124F4;
        v47[3] = v14;
        aBlock._countAndFlagsBits = _NSConcreteStackBlock;
        aBlock._object = 1107296256;
        v47[0] = sub_10000CA68;
        v47[1] = &unk_1000193C0;
        v19 = _Block_copy(&aBlock);
        v20 = v15;
        v21 = v18;
        v7 = v17;
        v8 = v16;
        v22 = v10;

        [v20 reportSiriInstrumentationEvent:v22 forBundleID:v13 completion:v19];
        _Block_release(v19);

        (*v36)(v11, v45);
      }

      else
      {
        if (qword_10001C1D8 != -1)
        {
          swift_once();
        }

        v26 = type metadata accessor for InternalLogger(0);
        sub_100003EA0(v26, qword_10001C4F8);
        aBlock._countAndFlagsBits = 0;
        aBlock._object = 0xE000000000000000;
        sub_100013C60(37);

        aBlock._countAndFlagsBits = 0xD000000000000023;
        aBlock._object = v35;
        v27 = [v24 description];
        v28 = sub_100013AF0();
        v30 = v29;

        v49._countAndFlagsBits = v28;
        v49._object = v30;
        sub_100013B50(v49);

        v31._countAndFlagsBits = 0xD00000000000007ALL;
        v31._object = (v34 | 0x8000000000000000);
        v32._object = (v33 | 0x8000000000000000);
        v32._countAndFlagsBits = 0xD00000000000001ELL;
        InternalLogger.error(_:fromFile:fromFunction:)(aBlock, v31, v32);
      }

      ++v9;
    }

    while (v8 != v9);
  }

  __break(1u);
  return result;
}

uint64_t sub_10001163C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100011684(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100011698(result, a2);
  }

  return result;
}

uint64_t sub_100011698(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1000116EC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000063BC(result, a2);
  }

  return result;
}

void sub_100011700(uint64_t a1, uint64_t a2)
{
  v74 = a2;
  v2 = 0xD000000000000020;
  if (SDRDiagnosticReporter && (sub_100013B10(), has_internal_content = os_variant_has_internal_content(), , has_internal_content))
  {
    v2 = a1 + 64;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v64 = &v52;
    v73 = sub_1000138B0();
    __chkstk_darwin(v73);
    v71 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v72 = v8;
    v9 = (v5 + 63) >> 6;
    v68 = v10 + 32;
    v69 = v10 + 16;
    v70 = v10;
    v66 = (v10 + 8);
    v62 = "osticReporter or not internal";
    v63 = "ckIds(sessions:)";
    v61 = "v16@?0@NSError8";

    LODWORD(v65) = 0;
    v11 = 0;
    *&v12 = 136315650;
    v60 = v12;
    v13 = v74;
    v67 = a1;
LABEL_6:
    v14 = v11;
    if (!v7)
    {
      goto LABEL_8;
    }

    do
    {
      v11 = v14;
LABEL_11:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = v70;
      v17 = v71;
      v18 = v73;
      v19 = (*(v70 + 16))(v71, *(a1 + 48) + *(v70 + 72) * (v15 | (v11 << 6)), v73);
      __chkstk_darwin(v19);
      v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v16 + 32))(v21, v17, v18);
      if (!*(v13 + 16) || (v22 = sub_10000FB60(v21), v13 = v74, (v23 & 1) == 0) || *(*(v74 + 56) + v22) != 1)
      {
        if (qword_10001C1D8 != -1)
        {
          swift_once();
        }

        v24 = type metadata accessor for InternalLogger(0);
        sub_100003EA0(v24, qword_10001C4F8);
        aBlock = 0;
        v76 = 0xE000000000000000;
        sub_100013C60(26);
        sub_1000122B8(&qword_10001C480, &protocol conformance descriptor for UUID);
        v25 = sub_100013D60();
        v27 = v26;

        aBlock = v25;
        v76 = v27;
        v81._countAndFlagsBits = 0xD000000000000018;
        v81._object = (v63 | 0x8000000000000000);
        sub_100013B50(v81);
        v29 = aBlock;
        v28 = v76;

        v30 = sub_100013A40();
        v31 = sub_100013BD0();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v59 = v29;
          v33 = v32;
          v65 = swift_slowAlloc();
          aBlock = v65;
          *v33 = v60;
          v56 = sub_100013840();
          v57 = &v52;
          v34 = *(v56 - 8);
          v55 = v30;
          v54 = v34;
          __chkstk_darwin(v56);
          v58 = v31;
          v36 = &v52 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_100013820();
          v53 = sub_100013830();
          v38 = v37;
          (*(v54 + 8))(v36, v56);
          v39 = sub_100012F04(v53, v38, &aBlock);

          *(v33 + 4) = v39;
          *(v33 + 12) = 2080;
          *(v33 + 14) = sub_100012F04(0xD000000000000020, v62 | 0x8000000000000000, &aBlock);
          *(v33 + 22) = 2080;
          *(v33 + 24) = sub_100012F04(v59, v28, &aBlock);
          v30 = v55;
          _os_log_impl(&_mh_execute_header, v55, v58, "[%s: %s] %s", v33, 0x20u);
          swift_arrayDestroy();
        }

        (*v66)(v21, v73);
        LODWORD(v65) = 1;
        a1 = v67;
        v13 = v74;
        goto LABEL_6;
      }

      (*v66)(v21, v73);
      v14 = v11;
      a1 = v67;
    }

    while (v7);
    while (1)
    {
LABEL_8:
      v11 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v11 >= v9)
      {
        break;
      }

      v7 = *(v2 + 8 * v11);
      ++v14;
      if (v7)
      {
        goto LABEL_11;
      }
    }

    if ((v65 & 1) == 0)
    {
      return;
    }

    v44 = [objc_allocWithZone(SDRDiagnosticReporter) init];
    v45 = sub_100013AE0();
    v46 = sub_100013AE0();
    v47 = sub_100013AE0();
    v48 = sub_100013AE0();
    v49 = [v44 signatureWithDomain:v45 type:v46 subType:v47 detectedProcess:v48 triggerThresholdValues:0];

    if (v49)
    {
      aBlock = 0;
      sub_100013A80();
      if (aBlock)
      {

        v50 = sub_100013A70();

        v79 = sub_10000E7E8;
        v80 = 0;
        aBlock = _NSConcreteStackBlock;
        v76 = 1107296256;
        v77 = sub_10000E9F4;
        v78 = &unk_100019370;
        v51 = _Block_copy(&aBlock);
        [v44 snapshotWithSignature:v50 delay:0 events:0 payload:0 actions:v51 reply:0.0];
        _Block_release(v51);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    if (qword_10001C1D8 != -1)
    {
LABEL_29:
      swift_once();
    }

    v40 = type metadata accessor for InternalLogger(0);
    sub_100003EA0(v40, qword_10001C4F8);
    v41._countAndFlagsBits = v2 + 13;
    v41._object = 0x8000000100015950;
    v42._countAndFlagsBits = v2 + 90;
    v42._object = 0x8000000100015730;
    v43._object = 0x8000000100015980;
    v43._countAndFlagsBits = 0xD000000000000020;
    InternalLogger.debug(_:fromFile:fromFunction:)(v41, v42, v43);
  }
}

uint64_t sub_100011FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    return _objc_release_x3(a1, a2, a3);
  }

  return a1;
}

unint64_t sub_100011FC4()
{
  result = qword_10001C488;
  if (!qword_10001C488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C488);
  }

  return result;
}

uint64_t sub_100012018()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t getEnumTagSinglePayload for SessionBuilderError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SessionBuilderError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000121BC()
{
  result = qword_10001C490;
  if (!qword_10001C490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C490);
  }

  return result;
}

unint64_t sub_100012218()
{
  result = qword_10001C498;
  if (!qword_10001C498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C498);
  }

  return result;
}

unint64_t sub_10001226C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100018C00;
  v6._object = a2;
  v4 = sub_100013CF0(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000122B8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000138B0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000122FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    return _objc_retain_x3(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_10001230C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000123D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003C0C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100012434(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003C0C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10001249C()
{
  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100012504(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003C0C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

__n128 initializeBufferWithCopyOfBuffer for ExecutionStatistics.ActionResults.MappingResult(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ExecutionStatistics.ActionResults.MappingResult(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ExecutionStatistics.ActionResults.MappingResult(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 17) = v3;
  return result;
}

uint64_t sub_1000125D0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000125EC(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t sub_10001261C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100012664(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1000126B4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000126C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10001271C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_100012780(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1000127C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_100012834()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_100013AE0();
  v2 = [v0 initWithSuiteName:v1];

  if (!v2)
  {
    if (qword_10001C1D8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for InternalLogger(0);
    sub_100003EA0(v3, qword_10001C4F8);
    v4._countAndFlagsBits = 0x292874696E69;
    v5._object = 0x8000000100015B00;
    v6._countAndFlagsBits = 0xD000000000000077;
    v6._object = 0x8000000100015B30;
    v5._countAndFlagsBits = 0xD000000000000023;
    v4._object = 0xE600000000000000;
    InternalLogger.error(_:fromFile:fromFunction:)(v5, v6, v4);
    return 0;
  }

  return v2;
}

void sub_1000129A0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void))
{

  v26 = sub_100013A40();
  v12 = a7();

  if (os_log_type_enabled(v26, v12))
  {
    v13 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v27 = v25;
    *v13 = 136315650;
    v23 = a5;
    v24 = a1;
    v14 = sub_100013840();
    v15 = *(v14 - 8);
    __chkstk_darwin(v14);
    v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_100013820();
    v18 = sub_100013830();
    v20 = v19;
    (*(v15 + 8))(v17, v14);
    v21 = sub_100012F04(v18, v20, &v27);

    *(v13 + 4) = v21;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_100012F04(v23, a6, &v27);
    *(v13 + 22) = 2080;
    *(v13 + 24) = sub_100012F04(v24, a2, &v27);
    _os_log_impl(&_mh_execute_header, v26, v12, "[%s: %s] %s", v13, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_100012C2C()
{
  v0 = sub_100013A50();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for InternalLogger(0);
  sub_1000136EC(v4, qword_10001C4F8);
  v5 = sub_100003EA0(v4, qword_10001C4F8);
  if (qword_10001C1E0 != -1)
  {
    swift_once();
  }

  v6 = qword_10001DAB0;
  sub_100013A60();
  return (*(v1 + 32))(v5, v3, v0);
}

uint64_t static Logging.plugin.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10001C1D8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for InternalLogger(0);
  v3 = sub_100003EA0(v2, qword_10001C4F8);

  return sub_100013508(v3, a1);
}

uint64_t sub_100012DD8()
{
  sub_100013750();
  result = sub_100013C00();
  qword_10001DAB0 = result;
  return result;
}

uint64_t sub_100012E34(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_100012EA8(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_100012F04(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_100012F04(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100012FD0(v11, 0, 0, 1, a1, a2);
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
    sub_100004924(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000499C(v11);
  return v7;
}

unint64_t sub_100012FD0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000130DC(a5, a6);
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
    result = sub_100013C90();
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

char *sub_1000130DC(uint64_t a1, unint64_t a2)
{
  v3 = sub_100013128(a1, a2);
  sub_100013258(&off_100018B58);
  return v3;
}

char *sub_100013128(uint64_t a1, unint64_t a2)
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

  v6 = sub_100013344(v5, 0);
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

  result = sub_100013C90();
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
        v10 = sub_100013B70();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100013344(v10, 0);
        result = sub_100013C50();
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

uint64_t sub_100013258(uint64_t result)
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

  result = sub_1000133B8(result, v11, 1, v3);
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

void *sub_100013344(uint64_t a1, uint64_t a2)
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

  sub_100003C0C(&qword_10001C5A8, &unk_1000152A0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000133B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003C0C(&qword_10001C5A8, &unk_1000152A0);
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

_BYTE **sub_1000134AC(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t type metadata accessor for InternalLogger(uint64_t a1)
{
  result = qword_10001C568;
  if (!qword_10001C568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100013508(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InternalLogger(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100013590(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013A50();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100013610(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013A50();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100013680(uint64_t a1)
{
  result = sub_100013A50();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t *sub_1000136EC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_100013750()
{
  result = qword_10001C5A0;
  if (!qword_10001C5A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10001C5A0);
  }

  return result;
}