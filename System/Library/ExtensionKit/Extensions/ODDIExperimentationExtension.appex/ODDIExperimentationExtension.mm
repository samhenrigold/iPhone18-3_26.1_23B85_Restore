uint64_t sub_100001850()
{
  v0 = sub_100004998();
  sub_100004570(v0, qword_10000C270);
  sub_100004384(v0, qword_10000C270);
  return sub_100004988();
}

uint64_t sub_1000018F0()
{
  sub_100004968();
  v10._countAndFlagsBits = 0x796C72756F682ELL;
  v10._object = 0xE700000000000000;
  v1 = sub_1000049D8(v10);

  if (AFIsHorseman() && v1)
  {
    if (qword_10000C090 != -1)
    {
      swift_once();
    }

    v2 = sub_100004998();
    sub_100004384(v2, qword_10000C270);
    v3 = sub_100004978();
    v4 = sub_1000049F8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Hourly task running on HomePod. Not continuing for resource reasons.", v5, 2u);
    }
  }

  objc_allocWithZone(sub_100004908());
  v6 = sub_1000048F8();
  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_100001A70(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = sub_1000049E8();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v4 = sub_1000048D8();
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();
  sub_1000035F0(&qword_10000C190, &qword_100004FE8);
  v2[20] = swift_task_alloc();
  v5 = sub_1000035F0(&qword_10000C0A0, &unk_100004E30);
  v2[21] = v5;
  v2[22] = *(v5 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return _swift_task_switch(sub_100001C38, 0, 0);
}

uint64_t sub_100001C38()
{
  if (qword_10000C090 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = sub_100004998();
  v0[25] = sub_100004384(v2, qword_10000C270);
  v3 = v1;
  v4 = sub_100004978();
  v5 = sub_1000049F8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[12];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Context: %@", v7, 0xCu);
    sub_100004420(v8, &qword_10000C1A0, &qword_100004FF8);
  }

  v10 = swift_task_alloc();
  v0[26] = v10;
  v11 = type metadata accessor for ODDIExperimentationExtension(0);
  v12 = sub_1000039FC(&qword_10000C150, &unk_100004EC0);
  v13 = sub_1000037FC();
  v14 = sub_100003850();
  *v10 = v0;
  v10[1] = sub_100001E50;
  v15 = v0[20];
  v16 = v0[12];

  return MLHostExtension.loadConfig<A>(context:)(v15, v16, v11, &type metadata for ODDIExperimentationExtensionConfig, v12, v13, v14);
}

uint64_t sub_100001E50()
{

  return _swift_task_switch(sub_100001F4C, 0, 0);
}

uint64_t sub_100001F4C()
{
  v29 = v0;
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v4 = *(v2 + 48);
  v5 = v4(v3, 1, v1);
  v6 = v0[24];
  if (v5 == 1)
  {
    v7 = *(v2 + 16);
    v7(v6, v0[13], v1);
    if (v4(v3, 1, v1) != 1)
    {
      sub_100004420(v0[20], &qword_10000C190, &qword_100004FE8);
    }
  }

  else
  {
    (*(v2 + 32))(v6, v3, v1);
    v7 = *(v2 + 16);
  }

  v7(v0[23], v0[24], v0[21]);
  v8 = sub_100004978();
  v9 = sub_1000049F8();
  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[22];
  v11 = v0[23];
  v13 = v0[21];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v14 = 136315138;
    sub_100004480(&qword_10000C1A8, &qword_10000C0A0, &unk_100004E30, &protocol conformance descriptor for MLHostParameters<A>);
    v15 = sub_100004AA8();
    v17 = v16;
    v18 = *(v12 + 8);
    v18(v11, v13);
    v19 = sub_100003B98(v15, v17, &v28);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "Configuration: %s", v14, 0xCu);
    sub_1000044C8(v27);
  }

  else
  {

    v18 = *(v12 + 8);
    v18(v11, v13);
  }

  v0[27] = v18;
  v0[5] = sub_1000048A8();
  v0[6] = &off_100008688;
  sub_1000043BC(v0 + 2);
  sub_100004898();
  sub_1000042EC(v0 + 2, v0[5]);
  sub_1000048C8();
  swift_allocObject();
  v20 = sub_1000048B8();
  v0[28] = v20;
  sub_100004948();
  v21 = v0[8];
  v22 = swift_task_alloc();
  v0[29] = v22;
  *v22 = v0;
  v22[1] = sub_1000022A4;
  v23 = v0[19];
  v24 = v0[12];
  v25.n128_u64[0] = v21;

  return ODDIExperimentationWorker.doWork(executor:context:durationThreshold:)(v23, v20, v24, v25);
}

uint64_t sub_1000022A4()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_1000024F0;
  }

  else
  {
    (*(v2[18] + 8))(v2[19], v2[17]);
    v3 = sub_1000023F4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000023F4()
{
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[21];
  sub_100004948();
  v4 = objc_allocWithZone(sub_100004908());
  v5 = sub_1000048F8();
  v1(v2, v3);
  sub_1000044C8(v0 + 2);

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_1000024F0()
{
  v0[11] = v0[30];
  swift_errorRetain();
  sub_1000035F0(&qword_10000C198, &qword_100004FF0);
  if (swift_dynamicCast())
  {
    v1 = v0[27];
    v2 = v0[24];
    v3 = v0[21];
    v5 = v0[15];
    v4 = v0[16];
    v6 = v0[14];

    v7 = objc_allocWithZone(sub_100004908());
    v8 = sub_1000048F8();
    v1(v2, v3);
    (*(v5 + 8))(v4, v6);
  }

  else
  {

    swift_errorRetain();
    v9 = sub_100004978();
    v10 = sub_100004A08();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&_mh_execute_header, v9, v10, "Unexpected error throws: %@", v11, 0xCu);
      sub_100004420(v12, &qword_10000C1A0, &qword_100004FF8);
    }

    else
    {
    }

    v14 = v0[27];
    v15 = v0[24];
    v16 = v0[21];
    sub_100004948();
    v17 = objc_allocWithZone(sub_100004908());
    v8 = sub_1000048F8();
    v14(v15, v16);
  }

  sub_1000044C8(v0 + 2);

  v18 = v0[1];

  return v18(v8);
}

uint64_t sub_1000027C0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100004850;

  return sub_1000018D0(a1);
}

uint64_t sub_100002854(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000028E8;

  return sub_100001A70(a1);
}

uint64_t sub_1000028E8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1000029E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_100002AC8;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_100002AC8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100002BBC(uint64_t a1)
{
  v2 = sub_1000039FC(&qword_10000C150, &unk_100004EC0);

  return MLHostExtension.configuration.getter(a1, v2);
}

uint64_t sub_100002C24@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  sub_1000037FC();
  sub_100003850();
  sub_100004938();
  v5 = *(a1 + 20);
  type metadata accessor for ODDIExperimentationWorkerFactory();
  result = swift_allocObject();
  *(a3 + v5) = result;
  return result;
}

Swift::Int sub_100002CC0()
{
  v1 = *v0;
  sub_100004AC8();
  sub_100004AD8(v1);
  return sub_100004AE8();
}

Swift::Int sub_100002D34(uint64_t a1)
{
  v2 = *v1;
  sub_100004AC8();
  sub_100004AD8(v2);
  return sub_100004AE8();
}

uint64_t sub_100002D78()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x726150776F6C6C61;
  }
}

uint64_t sub_100002DC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726150776F6C6C61 && a2 == 0xEC0000006C616974;
  if (v6 || (sub_100004AB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001000054E0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100004AB8();

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

uint64_t sub_100002EC0(uint64_t a1)
{
  v2 = sub_100004330();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100002EFC(uint64_t a1)
{
  v2 = sub_100004330();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100002F38(void *a1, uint64_t a2, double a3)
{
  v5 = sub_1000035F0(&qword_10000C188, &qword_100004FD8);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v10 - v7;
  sub_1000042EC(a1, a1[3]);
  sub_100004330();
  sub_100004B38();
  v12 = 0;
  sub_100004A88();
  if (!v3)
  {
    v11 = 1;
    sub_100004A98();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_1000030C0(uint64_t a1@<X8>, void *a2@<X0>)
{
  v5 = sub_100004140(a2);
  if (!v2)
  {
    *a1 = v4 & 1;
    *(a1 + 8) = v5;
  }
}

uint64_t sub_100003114(char a1, double a2)
{
  v4 = sub_100004B18();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v25 + 1) = &type metadata for ODDIExperimentationExtensionConfig;
  LOBYTE(v24) = a1;
  *(&v24 + 1) = a2;
  sub_100004AF8();
  v8 = sub_100004B08();
  (*(v5 + 8))(v7, v4);
  v20[1] = v8;
  sub_100004A38();
  sub_100004A58();
  if (*(&v26 + 1))
  {
    v9 = &_swiftEmptyArrayStorage;
    do
    {
      v23[0] = v24;
      v23[1] = v25;
      v23[2] = v26;
      v10._object = *(&v24 + 1);
      if (*(&v24 + 1))
      {
        v10._countAndFlagsBits = *&v23[0];
        v21 = 0;
        v22 = 0xE000000000000000;
        sub_1000049B8(v10);
        v27._countAndFlagsBits = 8250;
        v27._object = 0xE200000000000000;
        sub_1000049B8(v27);
        sub_100004A48();
        v11 = v21;
        v12 = v22;
        sub_100004420(v23, &qword_10000C168, &qword_100004FC0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_100003A88(0, *(v9 + 2) + 1, 1, v9);
        }

        v14 = *(v9 + 2);
        v13 = *(v9 + 3);
        if (v14 >= v13 >> 1)
        {
          v9 = sub_100003A88((v13 > 1), v14 + 1, 1, v9);
        }

        *(v9 + 2) = v14 + 1;
        v15 = &v9[16 * v14];
        *(v15 + 4) = v11;
        *(v15 + 5) = v12;
      }

      else
      {
        sub_100004420(v23, &qword_10000C168, &qword_100004FC0);
      }

      sub_100004A58();
    }

    while (*(&v26 + 1));
  }

  else
  {
    v9 = &_swiftEmptyArrayStorage;
  }

  *&v24 = 0xD000000000000023;
  *(&v24 + 1) = 0x8000000100005490;
  *&v23[0] = v9;
  sub_1000035F0(&qword_10000C158, &qword_100004FB8);
  sub_100004480(&qword_10000C160, &qword_10000C158, &qword_100004FB8, &protocol conformance descriptor for [A]);
  v16 = sub_1000049A8();
  v18 = v17;

  v28._countAndFlagsBits = v16;
  v28._object = v18;
  sub_1000049B8(v28);

  v29._countAndFlagsBits = 41;
  v29._object = 0xE100000000000000;
  sub_1000049B8(v29);
  return v24;
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for ODDIExperimentationExtension(0);
  sub_1000039FC(&qword_10000C098, &unk_100004F78);
  sub_1000048E8();
  return 0;
}

uint64_t type metadata accessor for ODDIExperimentationExtension(uint64_t a1)
{
  result = qword_10000C100;
  if (!qword_10000C100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100003528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000035F0(&qword_10000C0A0, &unk_100004E30);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000035F0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000364C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000035F0(&qword_10000C0A0, &unk_100004E30);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_100003710(uint64_t a1, uint64_t a2)
{
  sub_100003794(319, a2);
  if (v2 <= 0x3F)
  {
    type metadata accessor for ODDIExperimentationWorkerFactory();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100003794(uint64_t a1, uint64_t a2)
{
  if (!qword_10000C110)
  {
    sub_1000037FC();
    sub_100003850();
    v2 = sub_100004958();
    if (!v3)
    {
      atomic_store(v2, &qword_10000C110);
    }
  }
}

unint64_t sub_1000037FC()
{
  result = qword_10000C118;
  if (!qword_10000C118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C118);
  }

  return result;
}

unint64_t sub_100003850()
{
  result = qword_10000C120;
  if (!qword_10000C120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C120);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for ODDIExperimentationExtensionConfig(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ODDIExperimentationExtensionConfig(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ODDIExperimentationExtensionConfig(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1000039FC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ODDIExperimentationExtension(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100003A40(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

char *sub_100003A88(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000035F0(&qword_10000C170, &qword_100004FC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_100003B98(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100003C64(v11, 0, 0, 1, a1, a2);
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
    sub_100004514(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000044C8(v11);
  return v7;
}

unint64_t sub_100003C64(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100003D70(a5, a6);
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
    result = sub_100004A28();
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

char *sub_100003D70(uint64_t a1, unint64_t a2)
{
  v3 = sub_100003DBC(a1, a2);
  sub_100003EEC(&off_100008550);
  return v3;
}

char *sub_100003DBC(uint64_t a1, unint64_t a2)
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

  v6 = sub_100003FD8(v5, 0);
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

  result = sub_100004A28();
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
        v10 = sub_1000049C8();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100003FD8(v10, 0);
        result = sub_100004A18();
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

uint64_t sub_100003EEC(uint64_t result)
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

  result = sub_10000404C(result, v11, 1, v3);
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

void *sub_100003FD8(uint64_t a1, uint64_t a2)
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

  sub_1000035F0(&qword_10000C1B0, &qword_100005000);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000404C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000035F0(&qword_10000C1B0, &qword_100005000);
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

double sub_100004140(void *a1)
{
  v2 = sub_1000035F0(&qword_10000C178, &qword_100004FD0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v9 - v4;
  sub_1000042EC(a1, a1[3]);
  sub_100004330();
  sub_100004B28();
  v11 = 0;
  sub_100004A68();
  v10 = 1;
  sub_100004A78();
  v7 = v6;
  (*(v3 + 8))(v5, v2);
  sub_1000044C8(a1);
  return v7;
}

void *sub_1000042EC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100004330()
{
  result = qword_10000C180;
  if (!qword_10000C180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C180);
  }

  return result;
}

uint64_t sub_100004384(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_1000043BC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100004420(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000035F0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100004480(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100003A40(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000044C8(void *a1)
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

uint64_t sub_100004514(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_100004570(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t getEnumTagSinglePayload for ODDIExperimentationExtensionConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ODDIExperimentationExtensionConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10000474C()
{
  result = qword_10000C1B8;
  if (!qword_10000C1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1B8);
  }

  return result;
}

unint64_t sub_1000047A4()
{
  result = qword_10000C1C0;
  if (!qword_10000C1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1C0);
  }

  return result;
}

unint64_t sub_1000047FC()
{
  result = qword_10000C1C8;
  if (!qword_10000C1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1C8);
  }

  return result;
}