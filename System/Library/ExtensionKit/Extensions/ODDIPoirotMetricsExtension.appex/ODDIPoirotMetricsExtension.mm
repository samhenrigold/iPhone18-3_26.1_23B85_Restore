uint64_t sub_100001728()
{
  v0 = sub_100003C18();
  sub_1000038B8(v0, qword_10000C1C0);
  sub_100003768(v0, qword_10000C1C0);
  return sub_100003C08();
}

uint64_t sub_1000017AC(uint64_t a1, uint64_t a2)
{
  v2[17] = a1;
  v2[18] = a2;
  v3 = sub_100003C58();
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();
  v4 = sub_100003B18();
  v2[22] = v4;
  v2[23] = *(v4 - 8);
  v2[24] = swift_task_alloc();
  sub_1000033F8(&qword_10000C0C0, &qword_100004040);
  v2[25] = swift_task_alloc();
  v5 = sub_1000033F8(&qword_10000C0C8, &qword_100004048);
  v2[26] = v5;
  v2[27] = *(v5 - 8);
  v2[28] = swift_task_alloc();
  sub_1000033F8(&qword_10000C0D0, &qword_100004050);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return _swift_task_switch(sub_1000019AC, 0, 0);
}

uint64_t sub_1000019AC()
{
  if (qword_10000C090 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = sub_100003C18();
  v0[31] = sub_100003768(v2, qword_10000C1C0);
  v3 = v1;
  v4 = sub_100003BF8();
  v5 = sub_100003C68();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[17];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Context: %@", v7, 0xCu);
    sub_100003858(v8, &qword_10000C110, &qword_100004078);
  }

  v10 = v0[18];

  v0[12] = v10;
  v11 = swift_task_alloc();
  v0[32] = v11;
  v12 = sub_100003AF8();
  v0[33] = v12;
  v13 = sub_100003714();
  v14 = sub_100003810(&qword_10000C0D8, &type metadata accessor for PoirotDefaultTaskParameters, &protocol conformance descriptor for PoirotDefaultTaskParameters);
  v15 = sub_100003810(&qword_10000C0E0, &type metadata accessor for PoirotDefaultTaskParameters, &protocol conformance descriptor for PoirotDefaultTaskParameters);
  *v11 = v0;
  v11[1] = sub_100001C0C;
  v16 = v0[30];
  v17 = v0[17];

  return MLHostExtension.loadConfig<A>(context:)(v16, v17, &type metadata for ODDIPoirotMetricsExtension, v12, v13, v14, v15);
}

uint64_t sub_100001C0C()
{

  return _swift_task_switch(sub_100001D08, 0, 0);
}

uint64_t sub_100001D08()
{
  v1 = v0[29];
  v2 = v0[30];
  sub_100003B38();
  sub_100003B58();
  v3 = sub_100003B68();
  v0[34] = v3;
  v4 = *(v3 - 8);
  v0[35] = v4;
  v0[36] = *(v4 + 64);
  v0[37] = swift_task_alloc();
  v5 = swift_task_alloc();
  v0[38] = v5;
  sub_1000037A0(v2, v1);
  v6 = sub_1000033F8(&qword_10000C0E8, &qword_100004058);
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v1, 1, v6);
  v9 = v0[29];
  if (v8 == 1)
  {
    sub_100003858(v0[29], &qword_10000C0D0, &qword_100004050);
    v10 = 1;
  }

  else
  {
    sub_100003BD8();
    (*(v7 + 8))(v9, v6);
    v10 = 0;
  }

  v11 = v0[24];
  v12 = v0[22];
  v13 = v0[23];
  (*(*(v0[33] - 8) + 56))(v0[25], v10, 1);
  v14 = sub_100003B28();
  swift_allocObject();
  v15 = sub_100003B08();
  v0[13] = v15;
  v0[39] = v15;
  (*(v13 + 104))(v11, enum case for ODDIPoirotMetricsTaskExecutor.Subtask.oddiMetrics(_:), v12);
  v16 = swift_task_alloc();
  v0[40] = v16;
  v17 = sub_100003810(&qword_10000C0F0, &type metadata accessor for ODDIPoirotMetricsTaskExecutor, &protocol conformance descriptor for ODDIPoirotMetricsTaskExecutor);
  *v16 = v0;
  v16[1] = sub_100001FF0;
  v18 = v0[26];
  v19 = v0[24];
  v20 = v0[17];

  return ODDIMetricsWorker.doWork<A>(executor:context:subtask:)(v5, v0 + 13, v20, v19, v18, v14, v17);
}

uint64_t sub_100001FF0()
{
  v2 = *(*v1 + 192);
  v3 = *(*v1 + 184);
  v4 = *(*v1 + 176);
  *(*v1 + 328) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1000025B0;
  }

  else
  {
    v5 = sub_100002184;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100002184()
{
  (*(*(v0 + 280) + 32))(*(v0 + 296), *(v0 + 304), *(v0 + 272));

  v1 = *(v0 + 296);
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v1, v2);
  v5 = (*(v3 + 88))(v4, v2);
  if (&enum case for LighthouseRuntimeProcessorResult.error(_:) && v5 == enum case for LighthouseRuntimeProcessorResult.error(_:))
  {
    (*(*(v0 + 280) + 96))(v4, *(v0 + 272));
    v6 = *v4;
    if (*v4)
    {
      *(v0 + 120) = v6;
      swift_errorRetain();
      sub_1000033F8(&qword_10000C0F8, &qword_100004060);
      sub_1000033F8(&qword_10000C100, &qword_100004068);
      if (swift_dynamicCast())
      {
        v7 = *(v0 + 40);
        sub_100003858(v0 + 16, &qword_10000C108, &qword_100004070);
        if (v7)
        {
          v8 = *(v0 + 296);
          v9 = *(v0 + 272);
          v10 = *(v0 + 280);
          v11 = *(v0 + 216);
          v28 = *(v0 + 224);
          v29 = *(v0 + 240);
          v12 = *(v0 + 208);
          *(v0 + 128) = v6;
          swift_errorRetain();
          swift_dynamicCast();
          v13 = objc_allocWithZone(sub_100003BA8());
          v14 = sub_100003B88();

          (*(v10 + 8))(v8, v9);
          (*(v11 + 8))(v28, v12);
          sub_100003858(v29, &qword_10000C0D0, &qword_100004050);

          goto LABEL_20;
        }
      }

      else
      {
        *(v0 + 48) = 0;
        *(v0 + 16) = 0u;
        *(v0 + 32) = 0u;
        sub_100003858(v0 + 16, &qword_10000C108, &qword_100004070);
      }
    }

    v15 = sub_100003BF8();
    v16 = sub_100003C78();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "task failed with unset error", v17, 2u);
    }
  }

  else if ((!&enum case for LighthouseRuntimeProcessorResult.success(_:) || v5 != enum case for LighthouseRuntimeProcessorResult.success(_:)) && (!&enum case for LighthouseRuntimeProcessorResult.cancelled(_:) || v5 != enum case for LighthouseRuntimeProcessorResult.cancelled(_:)) && (!&enum case for LighthouseRuntimeProcessorResult.notAllowedToProcess(_:) || v5 != enum case for LighthouseRuntimeProcessorResult.notAllowedToProcess(_:)))
  {
    (*(*(v0 + 280) + 8))(v4, *(v0 + 272));
  }

  v18 = *(v0 + 296);
  v19 = *(v0 + 272);
  v20 = *(v0 + 280);
  v21 = *(v0 + 240);
  v23 = *(v0 + 216);
  v22 = *(v0 + 224);
  v24 = *(v0 + 208);

  v25 = objc_allocWithZone(sub_100003BA8());
  v14 = sub_100003B98();
  (*(v20 + 8))(v18, v19);
  (*(v23 + 8))(v22, v24);
  sub_100003858(v21, &qword_10000C0D0, &qword_100004050);
LABEL_20:

  v26 = *(v0 + 8);

  return v26(v14);
}

uint64_t sub_1000025B0()
{
  v1 = *(v0 + 328);

  *(v0 + 112) = v1;
  swift_errorRetain();
  sub_1000033F8(&qword_10000C0F8, &qword_100004060);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 328);
  if (v2)
  {
    v4 = *(v0 + 240);
    v6 = *(v0 + 216);
    v5 = *(v0 + 224);
    v7 = *(v0 + 208);
    v9 = *(v0 + 160);
    v8 = *(v0 + 168);
    v10 = *(v0 + 152);

    v11 = objc_allocWithZone(sub_100003BA8());
    v12 = sub_100003B98();
    (*(v6 + 8))(v5, v7);
    sub_100003858(v4, &qword_10000C0D0, &qword_100004050);
    (*(v9 + 8))(v8, v10);

    goto LABEL_25;
  }

  v13 = *(v0 + 296);
  v14 = *(v0 + 272);
  v15 = *(v0 + 280);

  *v13 = v3;
  v16 = enum case for LighthouseRuntimeProcessorResult.error(_:);
  (*(v15 + 104))(v13, enum case for LighthouseRuntimeProcessorResult.error(_:), v14);
  swift_errorRetain();
  swift_errorRetain();
  v17 = sub_100003BF8();
  v18 = sub_100003C78();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 4) = v21;
    *v20 = v21;
    _os_log_impl(&_mh_execute_header, v17, v18, "Unexpected error throws: %@", v19, 0xCu);
    sub_100003858(v20, &qword_10000C110, &qword_100004078);
  }

  else
  {
  }

  v22 = *(v0 + 296);
  v23 = *(v0 + 272);
  v24 = *(v0 + 280);
  v25 = swift_task_alloc();
  (*(v24 + 16))(v25, v22, v23);
  v26 = (*(v24 + 88))(v25, v23);
  if (&enum case for LighthouseRuntimeProcessorResult.error(_:) && v26 == v16)
  {
    (*(*(v0 + 280) + 96))(v25, *(v0 + 272));
    v27 = *v25;
    if (*v25)
    {
      *(v0 + 120) = v27;
      swift_errorRetain();
      sub_1000033F8(&qword_10000C0F8, &qword_100004060);
      sub_1000033F8(&qword_10000C100, &qword_100004068);
      if (swift_dynamicCast())
      {
        v28 = *(v0 + 40);
        sub_100003858(v0 + 16, &qword_10000C108, &qword_100004070);
        if (v28)
        {
          v30 = *(v0 + 272);
          v29 = *(v0 + 280);
          v31 = *(v0 + 216);
          v48 = *(v0 + 224);
          v49 = *(v0 + 240);
          v46 = *(v0 + 296);
          v47 = *(v0 + 208);
          *(v0 + 128) = v27;
          swift_errorRetain();
          swift_dynamicCast();
          v32 = objc_allocWithZone(sub_100003BA8());
          v12 = sub_100003B88();

          (*(v29 + 8))(v46, v30);
          (*(v31 + 8))(v48, v47);
          sub_100003858(v49, &qword_10000C0D0, &qword_100004050);

          goto LABEL_25;
        }
      }

      else
      {
        *(v0 + 48) = 0;
        *(v0 + 16) = 0u;
        *(v0 + 32) = 0u;
        sub_100003858(v0 + 16, &qword_10000C108, &qword_100004070);
      }
    }

    v33 = sub_100003BF8();
    v34 = sub_100003C78();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "task failed with unset error", v35, 2u);
    }
  }

  else if ((!&enum case for LighthouseRuntimeProcessorResult.success(_:) || v26 != enum case for LighthouseRuntimeProcessorResult.success(_:)) && (!&enum case for LighthouseRuntimeProcessorResult.cancelled(_:) || v26 != enum case for LighthouseRuntimeProcessorResult.cancelled(_:)) && (!&enum case for LighthouseRuntimeProcessorResult.notAllowedToProcess(_:) || v26 != enum case for LighthouseRuntimeProcessorResult.notAllowedToProcess(_:)))
  {
    (*(*(v0 + 280) + 8))(v25, *(v0 + 272));
  }

  v36 = *(v0 + 296);
  v37 = *(v0 + 272);
  v38 = *(v0 + 280);
  v39 = *(v0 + 240);
  v41 = *(v0 + 216);
  v40 = *(v0 + 224);
  v42 = *(v0 + 208);

  v43 = objc_allocWithZone(sub_100003BA8());
  v12 = sub_100003B98();
  (*(v38 + 8))(v36, v37);
  (*(v41 + 8))(v40, v42);
  sub_100003858(v39, &qword_10000C0D0, &qword_100004050);
LABEL_25:

  v44 = *(v0 + 8);

  return v44(v12);
}

uint64_t sub_100002BD4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100003AC0;

  return sub_10000391C(a1);
}

uint64_t sub_100002C7C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100002D18;

  return sub_1000017AC(a1, v4);
}

uint64_t sub_100002D18(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_100002E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_100002EF8;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_100002EF8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100002FEC(uint64_t a1)
{
  v2 = sub_100003714();

  return MLHostExtension.configuration.getter(a1, v2);
}

uint64_t sub_100003038@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ODDIPoirotMetricsWorkerFactory();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t PoirotDefaultTaskParameters.description.getter()
{
  v1 = sub_100003CD8();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003AF8();
  *(&v24 + 1) = v5;
  v6 = sub_100003394(&v23);
  (*(*(v5 - 8) + 16))(v6, v0, v5);
  sub_100003CB8();
  v7 = sub_100003CC8();
  (*(v2 + 8))(v4, v1);
  v19[1] = v7;
  sub_100003C88();
  sub_100003CA8();
  if (*(&v25 + 1))
  {
    v8 = &_swiftEmptyArrayStorage;
    do
    {
      v22[0] = v23;
      v22[1] = v24;
      v22[2] = v25;
      v9._object = *(&v23 + 1);
      if (*(&v23 + 1))
      {
        v9._countAndFlagsBits = *&v22[0];
        v20 = 0;
        v21 = 0xE000000000000000;
        sub_100003C38(v9);
        v26._countAndFlagsBits = 8250;
        v26._object = 0xE200000000000000;
        sub_100003C38(v26);
        sub_100003C98();
        v10 = v20;
        v11 = v21;
        sub_100003858(v22, &qword_10000C0A8, &qword_100003F28);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10000354C(0, *(v8 + 2) + 1, 1, v8);
        }

        v13 = *(v8 + 2);
        v12 = *(v8 + 3);
        if (v13 >= v12 >> 1)
        {
          v8 = sub_10000354C((v12 > 1), v13 + 1, 1, v8);
        }

        *(v8 + 2) = v13 + 1;
        v14 = &v8[16 * v13];
        *(v14 + 4) = v10;
        *(v14 + 5) = v11;
      }

      else
      {
        sub_100003858(v22, &qword_10000C0A8, &qword_100003F28);
      }

      sub_100003CA8();
    }

    while (*(&v25 + 1));
  }

  else
  {
    v8 = &_swiftEmptyArrayStorage;
  }

  *&v23 = 0xD00000000000001CLL;
  *(&v23 + 1) = 0x80000001000040C0;
  *&v22[0] = v8;
  sub_1000033F8(&qword_10000C098, &qword_100003F20);
  sub_100003440();
  v15 = sub_100003C28();
  v17 = v16;

  v27._countAndFlagsBits = v15;
  v27._object = v17;
  sub_100003C38(v27);

  v28._countAndFlagsBits = 41;
  v28._object = 0xE100000000000000;
  sub_100003C38(v28);
  return v23;
}

uint64_t *sub_100003394(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1000033F8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100003440()
{
  result = qword_10000C0A0;
  if (!qword_10000C0A0)
  {
    sub_1000034A4(&qword_10000C098, &qword_100003F20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A0);
  }

  return result;
}

uint64_t sub_1000034A4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100003658();
  sub_100003B78();
  return 0;
}

char *sub_10000354C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000033F8(&qword_10000C118, qword_100004088);
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

unint64_t sub_100003658()
{
  result = qword_10000C0B0;
  if (!qword_10000C0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B0);
  }

  return result;
}

unint64_t sub_100003714()
{
  result = qword_10000C0B8;
  if (!qword_10000C0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B8);
  }

  return result;
}

uint64_t sub_100003768(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000037A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033F8(&qword_10000C0D0, &qword_100004050);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003810(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100003858(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000033F8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t *sub_1000038B8(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10000393C()
{
  sub_100003BE8();
  v10._countAndFlagsBits = 0x796C72756F682ELL;
  v10._object = 0xE700000000000000;
  v1 = sub_100003C48(v10);

  if (AFIsHorseman() && v1)
  {
    if (qword_10000C090 != -1)
    {
      swift_once();
    }

    v2 = sub_100003C18();
    sub_100003768(v2, qword_10000C1C0);
    v3 = sub_100003BF8();
    v4 = sub_100003C68();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Hourly task running on HomePod. Not continuing for resource reasons.", v5, 2u);
    }
  }

  objc_allocWithZone(sub_100003BA8());
  v6 = sub_100003B98();
  v7 = *(v0 + 8);

  return v7(v6);
}