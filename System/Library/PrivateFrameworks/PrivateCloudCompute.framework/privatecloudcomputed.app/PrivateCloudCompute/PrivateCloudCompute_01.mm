BOOL sub_100011744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_1001D2020();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

unint64_t *sub_10001183C(uint64_t a1, void (*a2)(_OWORD *__return_ptr, uint64_t, uint64_t, uint64_t))
{
  v3 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v3)
  {
    v35 = _swiftEmptyArrayStorage;
    sub_1001514D8(0, v3, 0);
    v32 = _swiftEmptyArrayStorage;
    v5 = a1 + 64;
    result = sub_1001D1FB0();
    v6 = result;
    v7 = 0;
    v8 = *(a1 + 36);
    v29 = v3;
    v30 = v8;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_23;
      }

      if (v8 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v11 = v5;
      v12 = (*(a1 + 48) + 16 * v6);
      v14 = *v12;
      v13 = v12[1];
      v15 = *(*(a1 + 56) + 8 * v6);

      a2(v33, v14, v13, v15);

      v16 = v32;
      v35 = v32;
      v18 = v32[2];
      v17 = v32[3];
      if (v18 >= v17 >> 1)
      {
        result = sub_1001514D8((v17 > 1), v18 + 1, 1);
        v16 = v35;
      }

      v16[2] = v18 + 1;
      v32 = v16;
      v19 = &v16[5 * v18];
      v20 = v33[0];
      v21 = v33[1];
      v19[8] = v34;
      *(v19 + 2) = v20;
      *(v19 + 3) = v21;
      v9 = 1 << *(a1 + 32);
      if (v6 >= v9)
      {
        goto LABEL_25;
      }

      v22 = *(v11 + 8 * v10);
      if ((v22 & (1 << v6)) == 0)
      {
        goto LABEL_26;
      }

      v5 = v11;
      v8 = v30;
      if (v30 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v23 = v22 & (-2 << (v6 & 0x3F));
      if (v23)
      {
        v9 = __clz(__rbit64(v23)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = v10 << 6;
        v25 = v10 + 1;
        v26 = (a1 + 72 + 8 * v10);
        while (v25 < (v9 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_10001202C(v6, v30, 0);
            v9 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_10001202C(v6, v30, 0);
      }

LABEL_4:
      ++v7;
      v6 = v9;
      if (v7 == v29)
      {
        return v32;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t sub_100011AC0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100011B0C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = sub_1001CFE40();
      if (v4 <= 0x3F)
      {
        result = sub_1001D0E60();
        if (v5 <= 0x3F)
        {
          return swift_initClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_100011C94(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100011CB4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_100011CF0(void *a1)
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

unint64_t sub_100011D3C()
{
  result = qword_100227A48;
  if (!qword_100227A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227A48);
  }

  return result;
}

unint64_t sub_100011D90()
{
  result = qword_100227A50;
  if (!qword_100227A50)
  {
    sub_100011DF4(&qword_100227A30, &qword_1001D4990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227A50);
  }

  return result;
}

uint64_t sub_100011DF4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100011E48(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100011E9C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_100011EAC()
{
  result = qword_100227A60;
  if (!qword_100227A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227A60);
  }

  return result;
}

uint64_t sub_100011F00(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100011AC0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100011F60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *sub_100011FA8@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_10001202C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_100012038(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10001208C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100011AC0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000120F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001215C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1000121D8(uint64_t a1, unint64_t *a2, uint64_t a3)
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

__n128 sub_100012314(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100012320(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100012368(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_1000123B4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  sub_1001CFD20();
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v9 < 9.22337204e18)
  {
    sub_1001D23A0();
    v10._countAndFlagsBits = a4;
    v10._object = a5;
    sub_1001D18B0(v10);
    v11._countAndFlagsBits = a2;
    v11._object = a3;
    sub_1001D18B0(v11);
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_10001248C(uint64_t a1)
{
  sub_1001D0E60();
  if (v1 <= 0x3F)
  {
    sub_100012FF8(319);
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

uint64_t sub_1000125A0()
{
  v1[2] = v0;
  v1[3] = *v0;
  v1[4] = type metadata accessor for ThimbledEvent(0);
  v1[5] = swift_task_alloc();
  v2 = sub_100011AC0(&qword_100227C90, qword_1001D39D0);
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_1001D0180();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v4 = sub_1001CFDD0();
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();
  v5 = sub_1001CFD60();
  v1[15] = v5;
  v1[16] = *(v5 - 8);
  v1[17] = swift_task_alloc();

  return _swift_task_switch(sub_1000127D8, 0, 0);
}

uint64_t sub_1000127D8(uint64_t a1)
{
  v1[18] = qword_100227BF0;
  v2 = sub_1001D0E50();
  v3 = sub_1001D1E00();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Running featureUsageAnalyzer activity", v4, 2u);
  }

  type metadata accessor for FeatureUsageAnalyzerStoreHelper(0);
  sub_1001CFD50();
  sub_1001CFDC0();
  v5 = swift_task_alloc();
  v1[19] = v5;
  *v5 = v1;
  v5[1] = sub_100012928;
  v6 = v1[17];
  v7 = v1[14];

  return sub_100002010(v6, v7);
}

uint64_t sub_100012928(uint64_t a1)
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 104);
  v7 = *(*v1 + 96);
  *(*v1 + 160) = a1;

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_100012AE4, 0, 0);
}

uint64_t sub_100012AE4()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[3];
  (*(v2 + 104))(v1, enum case for PrivateCloudComputeFeatureFlags.featureUsageAnalyzer(_:), v3);
  LOBYTE(v4) = (*(*(v4 + 104) + 8))(v1, *(v4 + 88));
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = *(v0[20] + 16);
    if (v5)
    {
      v22 = v0[5];
      v21 = (v0[7] + 8);
      v6 = v0[20];
      v20 = sub_1000131D4();
      v7 = (v6 + 64);
      do
      {
        v8 = v0[5];
        v23 = v0[8];
        v24 = v0[6];
        v9 = *(v7 - 4);
        v10 = *(v7 - 3);
        v11 = *(v7 - 2);
        v12 = *(v7 - 1);
        v13 = *v7;
        v7 += 5;
        *(v22 + 24) = &type metadata for FeatureUsageSummaryMetric;
        *(v22 + 32) = v20;
        v14 = swift_allocObject();
        *v8 = v14;
        v14[2] = v9;
        v14[3] = v10;
        v14[4] = v11;
        v14[5] = v12;
        v14[6] = v13;
        swift_storeEnumTagMultiPayload();

        sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
        sub_1001D1BC0();
        (*v21)(v23, v24);
        --v5;
      }

      while (v5);
    }
  }

  else
  {

    v15 = sub_1001D0E50();
    v16 = sub_1001D1E00();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Not running featureUsageAnalyzer activity because the feature flag is disabled", v17, 2u);
    }
  }

  sub_100012DC0(v0[2]);

  v18 = v0[1];

  return v18();
}

void sub_100012DC0(uint64_t a1)
{
  oslog = sub_1001D0E50();
  v1 = sub_1001D1E00();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Finished featureUsageAnalyzer activity", v2, 2u);
  }
}

uint64_t *sub_100012E6C()
{
  v1 = *v0;
  v2 = qword_100227BF0;
  v3 = sub_1001D0E60();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = qword_100227BF8;
  v5 = sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 136));
  return v0;
}

uint64_t sub_100012F88()
{
  sub_100012E6C();

  return swift_deallocClassInstance();
}

void sub_100012FF8(uint64_t a1)
{
  if (!qword_100227C88)
  {
    type metadata accessor for ThimbledEvent(255);
    v1 = sub_1001D1BE0();
    if (!v2)
    {
      atomic_store(v1, &qword_100227C88);
    }
  }
}

uint64_t sub_100013050()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000130E0;

  return sub_1000125A0();
}

uint64_t sub_1000130E0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1000131D4()
{
  result = qword_100227C98;
  if (!qword_100227C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227C98);
  }

  return result;
}

uint64_t sub_100013228()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100013270(char *a1)
{
  v2 = v1;
  v46 = a1;
  v3 = sub_1001CFA40();
  v41 = *(v3 - 8);
  v42 = v3;
  __chkstk_darwin(v3);
  v40 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001CFB10();
  v44 = *(v5 - 8);
  v45 = v5;
  __chkstk_darwin(v5);
  v43 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001D1E30();
  v38 = *(v7 - 8);
  v39 = v7;
  __chkstk_darwin(v7);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001D1EB0();
  __chkstk_darwin(v10);
  v11 = sub_1001D1410();
  __chkstk_darwin(v11 - 8);
  v12 = sub_1001D02F0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v15, enum case for TC2LogCategory.metricReporter(_:), v12);
  sub_1001D08B0();
  (*(v13 + 8))(v15, v12);
  v37 = OBJC_IVAR____TtC20privatecloudcomputed31FeatureUsageAnalyzerStoreHelper_queue;
  v16 = sub_100015A10(0, &qword_100227DC0, OS_dispatch_queue_serial_ptr);
  v36[0] = "ngIOWork(onQueue:_:)";
  v36[1] = v16;
  if (qword_100227960 != -1)
  {
    swift_once();
  }

  v17 = blockingIOQueue;
  sub_1001D1400();
  v47[0] = _swiftEmptyArrayStorage;
  sub_100015AAC(&qword_100227DC8, &type metadata accessor for OS_dispatch_queue_serial.Attributes, &protocol conformance descriptor for OS_dispatch_queue_serial.Attributes);
  sub_100011AC0(&qword_100227DD0, &unk_1001D3AE0);
  sub_100015A58(&qword_100227DD8, &qword_100227DD0, &unk_1001D3AE0);
  sub_1001D1FA0();
  (*(v38 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v39);
  *(v1 + v37) = sub_1001D1EC0();
  v47[0] = 0xD000000000000013;
  v47[1] = 0x80000001001E33B0;
  v19 = v40;
  v18 = v41;
  v20 = v42;
  (*(v41 + 104))(v40, enum case for URL.DirectoryHint.inferFromPath(_:), v42);
  sub_100011EAC();
  v21 = v43;
  v22 = v46;
  sub_1001CFB00();
  (*(v18 + 8))(v19, v20);
  v23 = v44;
  v24 = v45;
  (*(v44 + 32))(v1 + OBJC_IVAR____TtC20privatecloudcomputed31FeatureUsageAnalyzerStoreHelper_storeURL, v21, v45);
  v25 = v1 + OBJC_IVAR____TtC20privatecloudcomputed31FeatureUsageAnalyzerStoreHelper_fileHandle;
  *v25 = 0;
  *(v25 + 8) = 0;

  v26 = sub_1001D0E50();
  v27 = sub_1001D1DD0();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v47[0] = v29;
    *v28 = 136315138;
    (*(v23 + 16))(v21, v1 + OBJC_IVAR____TtC20privatecloudcomputed31FeatureUsageAnalyzerStoreHelper_storeURL, v24);
    sub_100015AAC(&qword_1002302F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v30 = sub_1001D23A0();
    v32 = v31;
    v33 = *(v23 + 8);
    v33(v21, v24);
    v34 = sub_1000954E0(v30, v32, v47);

    *(v28 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v26, v27, "initialized featureusageanalyzerstore, file=%s", v28, 0xCu);
    sub_100011CF0(v29);

    v33(v46, v24);
  }

  else
  {

    (*(v23 + 8))(v22, v24);
  }

  return v2;
}

void sub_100013944(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v5 = 0;
    v2 = v1;
    if ([v2 closeAndReturnError:&v5])
    {
      v3 = v5;
    }

    else
    {
      v4 = v5;
      sub_1001CFA20();

      swift_willThrow();
    }
  }
}

uint64_t sub_100013A0C()
{
  v1 = v0 + OBJC_IVAR____TtC20privatecloudcomputed31FeatureUsageAnalyzerStoreHelper_fileHandle;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC20privatecloudcomputed31FeatureUsageAnalyzerStoreHelper_fileHandle));
  sub_100013944((v1 + 8));
  os_unfair_lock_unlock(v1);
  v2 = OBJC_IVAR____TtC20privatecloudcomputed31FeatureUsageAnalyzerStoreHelper_storeURL;
  v3 = sub_1001CFB10();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  sub_1000159A8(v1 + 8);
  v4 = OBJC_IVAR____TtC20privatecloudcomputed31FeatureUsageAnalyzerStoreHelper_logger;
  v5 = sub_1001D0E60();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FeatureUsageAnalyzerStoreHelper(uint64_t a1)
{
  result = qword_100227CE8;
  if (!qword_100227CE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100013B8C(uint64_t a1)
{
  result = sub_1001CFB10();
  if (v2 <= 0x3F)
  {
    result = sub_1001D0E60();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

char *sub_100013C6C()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100011AC0(&qword_100227D88, &qword_1001D4BC0);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_100013C9C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100013CBC, 0, 0);
}

uint64_t sub_100013CBC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(v2 + OBJC_IVAR____TtC20privatecloudcomputed31FeatureUsageAnalyzerStoreHelper_queue);
  v4 = swift_allocObject();
  v0[4] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;

  v5 = swift_task_alloc();
  v0[5] = v5;
  v5[2] = v3;
  v5[3] = sub_100015810;
  v5[4] = v4;
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_100013E08;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, 0, 0, 0xD000000000000024, 0x80000001001E3340, sub_10001582C, v5, &type metadata for () + 8);
}

uint64_t sub_100013E08()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_100013F44;
  }

  else
  {

    v2 = sub_100013F2C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100013F44()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100013FB0(uint64_t a1, uint64_t a2)
{
  v4 = a1 + OBJC_IVAR____TtC20privatecloudcomputed31FeatureUsageAnalyzerStoreHelper_fileHandle;
  os_unfair_lock_lock((a1 + OBJC_IVAR____TtC20privatecloudcomputed31FeatureUsageAnalyzerStoreHelper_fileHandle));
  sub_100014038((v4 + 8), a1, a2, &v5);
  os_unfair_lock_unlock(v4);
}

id sub_100014038(void **a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = v4;
  v10 = sub_1001CFB10();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  if (!*a1)
  {
    v35 = a1;
    v36 = v4;
    *&v37 = a3;
    v34 = a2;
    v32 = a4;
    v33 = OBJC_IVAR____TtC20privatecloudcomputed31FeatureUsageAnalyzerStoreHelper_storeURL;
    sub_1001CFAC0(1);
    v22 = objc_opt_self();
    v23 = [v22 defaultManager];
    v24 = sub_1001D17A0();
    v25 = [v23 fileExistsAtPath:v24];

    if (v25)
    {
    }

    else
    {
      v27 = [v22 defaultManager];
      v28 = sub_1001D17A0();

      [v27 createFileAtPath:v28 contents:0 attributes:0];
    }

    v29 = v36;
    sub_100015A10(0, &qword_100227DA0, NSFileHandle_ptr);
    (*(v11 + 16))(v13, v34 + v33, v10);
    result = sub_1000143C0(v13);
    a3 = v37;
    v30 = v35;
    if (v29)
    {
      *v32 = v29;
      return result;
    }

    v14 = result;
    sub_1001D1DA0();
    v6 = 0;
    *v30 = v14;
  }

  _s27FileHandle_UTF8OutputStreamCMa();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v38 = v15;
  v16 = *(a3 + 16);
  if (v16)
  {
    v36 = v6;
    v35 = v14;
    v17 = (a3 + 40);
    v37 = xmmword_1001D39F0;
    do
    {
      v18 = *(v17 - 1);
      v19 = *v17;
      sub_100011AC0(&qword_100227DA8, &unk_1001D3AD0);
      v20 = swift_allocObject();
      *(v20 + 16) = v37;
      *(v20 + 56) = &type metadata for String;
      *(v20 + 32) = v18;
      *(v20 + 40) = v19;
      sub_100015AAC(&qword_100227DB0, _s27FileHandle_UTF8OutputStreamCMa, &unk_1001D4BEC);

      sub_1001D2560();

      v17 += 2;
      --v16;
    }

    while (v16);
  }

  else
  {
    v26 = v14;
  }
}

id sub_1000143C0(uint64_t a1)
{
  sub_1001CFA80(__stack_chk_guard);
  v3 = v2;
  v12 = 0;
  v4 = [swift_getObjCClassFromMetadata() fileHandleForWritingToURL:v2 error:&v12];

  v5 = v12;
  if (v4)
  {
    v6 = sub_1001CFB10();
    v7 = *(*(v6 - 8) + 8);
    v8 = v5;
    v7(a1, v6);
  }

  else
  {
    v9 = v12;
    sub_1001CFA20();

    swift_willThrow();
    v10 = sub_1001CFB10();
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  return v4;
}

uint64_t sub_100014538()
{
  v1 = v0[4];
  v2 = *(v1 + OBJC_IVAR____TtC20privatecloudcomputed31FeatureUsageAnalyzerStoreHelper_queue);

  v3 = swift_task_alloc();
  v0[5] = v3;
  v3[2] = v2;
  v3[3] = sub_100014EA0;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_100014658;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000024, 0x80000001001E3340, sub_100015628, v3, &type metadata for Data);
}

uint64_t sub_100014658()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_100013F44;
  }

  else
  {

    v2 = sub_10001477C;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_100014798(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1 + OBJC_IVAR____TtC20privatecloudcomputed31FeatureUsageAnalyzerStoreHelper_fileHandle;
  os_unfair_lock_lock((a1 + OBJC_IVAR____TtC20privatecloudcomputed31FeatureUsageAnalyzerStoreHelper_fileHandle));
  sub_100014818((v3 + 8), &v4, a2);
  os_unfair_lock_unlock(v3);
}

void sub_100014818(void **a1@<X0>, uint64_t *a2@<X2>, _OWORD *a3@<X8>)
{
  v35 = a2;
  v4 = v3;
  v41 = a3;
  v6 = sub_1001CFA40();
  v39 = *(v6 - 8);
  v40 = v6;
  __chkstk_darwin(v6);
  v37 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100011AC0(&unk_100230170, &unk_1001E0D90);
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - v9;
  v38 = sub_1001CFB10();
  v11 = *(v38 - 8);
  __chkstk_darwin(v38);
  v36 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  if (*a1)
  {
    v42 = 0;
    if ([v13 closeAndReturnError:&v42])
    {
      v14 = v42;
    }

    else
    {
      v15 = v42;
      sub_1001CFA20();

      swift_willThrow();

      v4 = 0;
    }

    *a1 = 0;
  }

  v16 = objc_opt_self();
  v17 = [v16 defaultManager];
  sub_1001CFAC0(1);
  v18 = sub_1001D17A0();

  v19 = [v17 fileExistsAtPath:v18];

  if ((v19 & 1) == 0)
  {
    *v41 = xmmword_1001D3A00;
    return;
  }

  v34 = v16;
  sub_1001CFAC0(1);
  v20 = v38;
  (*(v11 + 56))(v10, 1, 1, v38);
  (*(v39 + 104))(v37, enum case for URL.DirectoryHint.inferFromPath(_:), v40);
  v21 = v36;
  sub_1001CFAF0();
  v22 = sub_1001CFB30();
  if (v4)
  {
    (*(v11 + 8))(v21, v20);
  }

  else
  {
    v24 = v20;
    v25 = v22;
    v40 = v23;
    (*(v11 + 8))(v21, v24);
    v26 = [v34 defaultManager];
    sub_1001CFAC0(1);
    v27 = sub_1001D17A0();

    v42 = 0;
    v28 = [v26 removeItemAtPath:v27 error:&v42];

    v29 = v42;
    if (v28)
    {
      v31 = v40;
      v30 = v41;
      *v41 = v25;
      *(v30 + 1) = v31;
      v32 = v29;
      return;
    }

    v33 = v42;
    v4 = sub_1001CFA20();

    swift_willThrow();
    sub_100011E48(v25, v40);
  }

  *v35 = v4;
}

uint64_t sub_100014C68(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000130E0;

  return sub_100013C9C(a1);
}

uint64_t sub_100014D00()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014D90;

  return sub_100014518();
}

uint64_t sub_100014D90(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_100014EBC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100014F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a3;
  v21 = a4;
  v24 = a2;
  v5 = sub_1001D13E0();
  v23 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1001D1410();
  v8 = *(v22 - 8);
  __chkstk_darwin(v22);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - v13;
  (*(v12 + 16))(&v20 - v13, a1, v11);
  v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v16 = swift_allocObject();
  v17 = v21;
  *(v16 + 16) = v20;
  *(v16 + 24) = v17;
  (*(v12 + 32))(v16 + v15, v14, v11);
  aBlock[4] = sub_10001590C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100014EBC;
  aBlock[3] = &unk_10021D470;
  v18 = _Block_copy(aBlock);

  sub_1001D1400();
  v25 = _swiftEmptyArrayStorage;
  sub_100015AAC(&unk_100230180, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100011AC0(&qword_100227D98, &unk_1001D3AB0);
  sub_100015A58(&unk_100230190, &qword_100227D98, &unk_1001D3AB0);
  sub_1001D1FA0();
  sub_1001D1E50();
  _Block_release(v18);
  (*(v23 + 8))(v7, v5);
  (*(v8 + 8))(v10, v22);
}

uint64_t sub_100015294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a3;
  v21 = a4;
  v24 = a2;
  v5 = sub_1001D13E0();
  v23 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1001D1410();
  v8 = *(v22 - 8);
  __chkstk_darwin(v22);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100011AC0(&qword_100227D90, &qword_1001D3AA8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - v13;
  (*(v12 + 16))(&v20 - v13, a1, v11);
  v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v16 = swift_allocObject();
  v17 = v21;
  *(v16 + 16) = v20;
  *(v16 + 24) = v17;
  (*(v12 + 32))(v16 + v15, v14, v11);
  aBlock[4] = sub_100015790;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100014EBC;
  aBlock[3] = &unk_10021D3F8;
  v18 = _Block_copy(aBlock);

  sub_1001D1400();
  v25 = _swiftEmptyArrayStorage;
  sub_100015AAC(&unk_100230180, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100011AC0(&qword_100227D98, &unk_1001D3AB0);
  sub_100015A58(&unk_100230190, &qword_100227D98, &unk_1001D3AB0);
  sub_1001D1FA0();
  sub_1001D1E50();
  _Block_release(v18);
  (*(v23 + 8))(v7, v5);
  (*(v8 + 8))(v10, v22);
}

uint64_t sub_100015634(void (*a1)(void))
{
  a1();
  sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
  return sub_1001D1AA0();
}

uint64_t sub_1000156C4(void (*a1)(uint64_t *__return_ptr))
{
  a1(&v4);
  v1 = v4;
  v2 = v5;
  sub_100012038(v4, v5);
  sub_100011AC0(&qword_100227D90, &qword_1001D3AA8);
  sub_1001D1AA0();
  return sub_100011E48(v1, v2);
}

uint64_t sub_1000157B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000157D0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001584C(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_100011AC0(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(v4 + 64);

  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_100015934(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_100011AC0(a1, a2) - 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a3(v5, v6, v7);
}

uint64_t sub_1000159A8(uint64_t a1)
{
  v2 = sub_100011AC0(&qword_100227DB8, &qword_1001D4C40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100015A10(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100015A58(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100011DF4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100015AAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100015B14(uint64_t a1)
{
  sub_1001D1880();
}

unint64_t sub_100015C40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001B824(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100015C70(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xE900000000000065;
    v9 = 0xE300000000000000;
    v10 = 7761509;
    if (v2 != 1)
    {
      v10 = 0x696C43656C707061;
      v9 = 0xEF6F666E49746E65;
    }

    v11 = v2 == 0;
    if (*v1)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0x6D6954746E657665;
    }

    if (!v11)
    {
      v8 = v9;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0x80000001001E2350;
    v4 = 0xD000000000000019;
    if (v2 == 5)
    {
      v4 = 0xD000000000000011;
    }

    else
    {
      v3 = 0x80000001001E2370;
    }

    v5 = 0xEB00000000656C61;
    v6 = 0xD000000000000017;
    if (v2 == 3)
    {
      v6 = 0x636F4C656C707061;
    }

    else
    {
      v5 = 0x80000001001E2330;
    }

    if (*v1 <= 4u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 4u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

void sub_100015D68(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v72 = a7;
  v71 = a6;
  v76 = a4;
  v18 = sub_100011AC0(&qword_100227DE0, &qword_1001D3B00);
  __chkstk_darwin(v18 - 8);
  v63 = (&v61 - v19);
  sub_100011AC0(&qword_100227DE8, &qword_1001D3B08);
  v20 = sub_100011AC0(&qword_100227DF0, &unk_1001D3B10);
  v21 = (*(*(v20 - 8) + 80) + 32) & ~*(*(v20 - 8) + 80);
  v75 = *(*(v20 - 8) + 72);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1001D3AF0;
  v23 = v22 + v21;
  v74 = v20;
  v24 = *(v20 + 48);
  *(v22 + v21) = 0;
  sub_1001CFD20();
  if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v25 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v25 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v68 = v22;
  v69 = a1;
  v62 = a8;
  v70 = a9;
  v64 = a12;
  v73 = a11;
  v67 = a10;
  *(v23 + v24) = v25;
  v26 = enum case for EventValue.int(_:);
  v27 = sub_1001CFEE0();
  v61 = *(v27 - 8);
  v28 = a5;
  v29 = *(v61 + 104);
  v65 = v26;
  (v29)(v23 + v24, v26, v27);
  v30 = a3;
  v31 = v74;
  v32 = v75;
  v33 = (v23 + v75 + *(v74 + 48));
  *(v23 + v75) = 1;
  *v33 = a2;
  v33[1] = v30;
  v34 = enum case for EventValue.string(_:);
  v29();
  v66 = v28;
  v35 = (v23 + 2 * v32);
  v36 = &v35[*(v31 + 48)];
  *v35 = 2;
  *v36 = (*(v64 + 96))(v73);
  v36[1] = v37;
  v38 = v36;
  v39 = v34;
  v40 = v29;
  (v29)(v38, v39, v27);
  v41 = v66;
  v42 = (v23 + 3 * v32);
  v43 = &v42[*(v31 + 48)];
  *v42 = 3;
  *v43 = sub_1001CFDB0();
  v43[1] = v44;
  (v29)(v43, v39, v27);
  v45 = (v23 + 4 * v32);
  *v45 = 5;
  if (v71)
  {
    v46 = 0xE700000000000000;
    if (v71 == 1)
    {
      v47 = 0x6D726177657270;
    }

    else
    {
      v47 = 0x74736575716572;
    }
  }

  else
  {
    v46 = 0xE800000000000000;
    v47 = 0x6863746566657270;
  }

  v48 = v74;
  v49 = &v45[*(v74 + 48)];
  *v49 = v47;
  v49[1] = v46;
  v40();
  v50 = (v23 + 5 * v75);
  v51 = *(v48 + 48);
  *v50 = 6;
  sub_10001B870(v72);
  *&v50[v51] = v52;
  (v40)(&v50[v51], v65, v27);
  v53 = sub_1000D4FC0(v68);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v77 = v53;
  v54 = v67;
  if (v67)
  {
    v55 = v63;
    *v63 = v62;
    *(v55 + 8) = v54;
    (v40)(v55, v39, v27);
    (*(v61 + 56))(v55, 0, 1, v27);
    sub_100016378(v55, 4);
    v56 = sub_1001CFDD0();
    (*(*(v56 - 8) + 8))(v41, v56);
    (*(*(v73 - 8) + 8))(v76);
    v57 = sub_1001CFD60();
    (*(*(v57 - 8) + 8))(v69, v57);
    v53 = v77;
  }

  else
  {
    v58 = sub_1001CFDD0();
    (*(*(v58 - 8) + 8))(v41, v58);
    (*(*(v73 - 8) + 8))(v76);
    v59 = sub_1001CFD60();
    (*(*(v59 - 8) + 8))(v69, v59);
  }

  v60 = v70;
  *v70 = 0xD000000000000015;
  v60[1] = 0x80000001001E33D0;
  v60[3] = 0;
  v60[4] = 0;
  v60[2] = v53;
}

uint64_t sub_100016378(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100011AC0(&qword_100227DE0, &qword_1001D3B00);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1001CFEE0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_100011F00(a1, &qword_100227DE0, &qword_1001D3B00);
    v13 = sub_1000060E4(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_10000F618();
        v17 = v21;
      }

      (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      sub_10001831C(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_100011F00(v8, &qword_100227DE0, &qword_1001D3B00);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_10001A74C(v12, a2, v18, sub_1000060E4, sub_10000F618, sub_100009E58, &type metadata for AttestationDistributionMetric.EventName);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_10001660C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100011AC0(&qword_100227DE0, &qword_1001D3B00);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1001CFEE0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_100011F00(a1, &qword_100227DE0, &qword_1001D3B00);
    v13 = sub_100006128(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_10000F62C();
        v17 = v21;
      }

      (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      sub_1000185F8(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_100011F00(v8, &qword_100227DE0, &qword_1001D3B00);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_10001A74C(v12, a2, v18, sub_100006128, sub_10000F62C, sub_10000A2D4, &type metadata for AttestationVerificationErrorMetric.EventName);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_1000168A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100011AC0(&qword_100227DE0, &qword_1001D3B00);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1001CFEE0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_100011F00(a1, &qword_100227DE0, &qword_1001D3B00);
    v13 = sub_100006154(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_10000F640();
        v17 = v21;
      }

      (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      sub_1000189A4(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_100011F00(v8, &qword_100227DE0, &qword_1001D3B00);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_10001A74C(v12, a2, v18, sub_100006154, sub_10000F640, sub_10000A820, &type metadata for AttestationVerificationMetric.EventName);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_100016B34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100011AC0(&qword_100227DE0, &qword_1001D3B00);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1001CFEE0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_100011F00(a1, &qword_100227DE0, &qword_1001D3B00);
    v13 = sub_1000062EC(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_10000F654();
        v17 = v21;
      }

      (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      sub_100018D78(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_100011F00(v8, &qword_100227DE0, &qword_1001D3B00);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_10001A74C(v12, a2, v18, sub_1000062EC, sub_10000F654, sub_10000AD98, &type metadata for InvokeResponseMetric.EventName);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_100016DC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100011AC0(&qword_100227DE0, &qword_1001D3B00);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1001CFEE0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_100011F00(a1, &qword_100227DE0, &qword_1001D3B00);
    v13 = sub_100006358(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_10000F668();
        v17 = v21;
      }

      (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      sub_1000190B0(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_100011F00(v8, &qword_100227DE0, &qword_1001D3B00);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_10001A74C(v12, a2, v18, sub_100006358, sub_10000F668, sub_10000B268, &type metadata for KDataSendMetric.EventName);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_10001705C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100011AC0(&qword_100227DE0, &qword_1001D3B00);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1001CFEE0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_100011F00(a1, &qword_100227DE0, &qword_1001D3B00);
    v13 = sub_100006384(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_10000F67C();
        v17 = v21;
      }

      (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      sub_100019408(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_100011F00(v8, &qword_100227DE0, &qword_1001D3B00);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_10001A74C(v12, a2, v18, sub_100006384, sub_10000F67C, sub_10000B754, &type metadata for TrustedEndpointResponseMetric.EventName);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_1000172F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100011AC0(&qword_100227DE0, &qword_1001D3B00);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1001CFEE0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_100011F00(a1, &qword_100227DE0, &qword_1001D3B00);
    v13 = sub_1000063B0(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_10000F690();
        v17 = v21;
      }

      (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      sub_100019768(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_100011F00(v8, &qword_100227DE0, &qword_1001D3B00);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_10001A74C(v12, a2, v18, sub_1000063B0, sub_10000F690, sub_10000BC54, &type metadata for TrustedRequestMetric.EventName);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_100017584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100011AC0(&qword_100227E00, &unk_1001D3B20);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for ValidatedAttestation(0);
  __chkstk_darwin(v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_100011F00(a1, &qword_100227E00, &unk_1001D3B20);
    sub_1000E48C4(a2, a3, v9);

    return sub_100011F00(v9, &qword_100227E00, &unk_1001D3B20);
  }

  else
  {
    sub_10001215C(a1, v12, type metadata accessor for ValidatedAttestation);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_10001A8DC(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_100017758(uint64_t a1, void *a2)
{
  v5 = sub_100011AC0(&qword_100227DF8, &qword_1001DD020);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for RateLimitTimingDetails(0);
  __chkstk_darwin(v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_100011F00(a1, &qword_100227DF8, &qword_1001DD020);
    sub_1000E4A30(a2, v7);
    sub_10001B958(a2);
    return sub_100011F00(v7, &qword_100227DF8, &qword_1001DD020);
  }

  else
  {
    sub_10001215C(a1, v10, type metadata accessor for RateLimitTimingDetails);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_10001AA48(v10, a2, isUniquelyReferenced_nonNull_native);
    result = sub_10001B958(a2);
    *v2 = v15;
  }

  return result;
}

uint64_t sub_100017918(uint64_t a1, uint64_t *a2)
{
  v5 = sub_100011AC0(&qword_100227E08, &unk_1001D3B30);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_1001D0260();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_100011F00(a1, &qword_100227E08, &unk_1001D3B30);
    sub_1000E4BC8(a2, v7);
    sub_10001BB30(a2);
    return sub_100011F00(v7, &qword_100227E08, &unk_1001D3B30);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_10001AB90(v11, a2, isUniquelyReferenced_nonNull_native);
    result = sub_10001BB30(a2);
    *v2 = v15;
  }

  return result;
}

uint64_t sub_100017AE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100011AC0(&qword_100227A38, &unk_1001D35F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_1001CFD60();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_100011F00(a1, &qword_100227A38, &unk_1001D35F0);
    sub_1000E4D64(a2, a3, v9);

    return sub_100011F00(v9, &qword_100227A38, &unk_1001D35F0);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_10001AD04(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping.nodeIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_100017CEC()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_100017D24(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = sub_1001CFEE0();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_100017DD0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for ValidatedAttestation(0);
  result = sub_10001215C(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for ValidatedAttestation);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_100017E7C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v7 = a4[6] + 56 * a1;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = *(a2 + 48);
  v9 = a4[7];
  v10 = type metadata accessor for RateLimitTimingDetails(0);
  result = sub_10001215C(a3, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for RateLimitTimingDetails);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_100017F40(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v7 = a4[6] + 56 * a1;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = *(a2 + 48);
  v9 = a4[7];
  v10 = sub_1001D0260();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a3, v10);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_100018008(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1001CFDA0();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for SessionLog.Element(0);
  result = sub_10001215C(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for SessionLog.Element);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_1000180F8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_1001CFD60();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_1000181A8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_100018264(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1001CFDA0();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
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

unint64_t sub_10001831C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1001D1FC0() + 1) & ~v5;
    while (1)
    {
      sub_1001D2580();
      sub_1001D1880();

      result = sub_1001D25C0();
      v9 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v9 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v10 = *(a2 + 48);
      v11 = (v10 + v3);
      v12 = (v10 + v6);
      if (v3 != v6 || v11 >= v12 + 1)
      {
        *v11 = *v12;
      }

      v13 = *(a2 + 56);
      v14 = *(*(sub_1001CFEE0() - 8) + 72);
      v15 = v14 * v3;
      result = v13 + v14 * v3;
      v16 = v14 * v6;
      v17 = v13 + v14 * v6 + v14;
      if (v15 < v16 || result >= v17)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v15 == v16)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v9 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v9)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1000185F8(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1001D1FC0() + 1) & ~v5;
    while (1)
    {
      sub_1001D2580();
      sub_1001D1880();

      result = sub_1001D25C0();
      v9 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v9 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v10 = *(a2 + 48);
      v11 = (v10 + v3);
      v12 = (v10 + v6);
      if (v3 != v6 || v11 >= v12 + 1)
      {
        *v11 = *v12;
      }

      v13 = *(a2 + 56);
      v14 = *(*(sub_1001CFEE0() - 8) + 72);
      v15 = v14 * v3;
      result = v13 + v14 * v3;
      v16 = v14 * v6;
      v17 = v13 + v14 * v6 + v14;
      if (v15 < v16 || result >= v17)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v15 == v16)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v9 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v9)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1000189A4(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1001D1FC0() + 1) & ~v5;
    while (1)
    {
      sub_1001D2580();
      sub_1001D1880();

      result = sub_1001D25C0();
      v9 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v9 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v10 = *(a2 + 48);
      v11 = (v10 + v3);
      v12 = (v10 + v6);
      if (v3 != v6 || v11 >= v12 + 1)
      {
        *v11 = *v12;
      }

      v13 = *(a2 + 56);
      v14 = *(*(sub_1001CFEE0() - 8) + 72);
      v15 = v14 * v3;
      result = v13 + v14 * v3;
      v16 = v14 * v6;
      v17 = v13 + v14 * v6 + v14;
      if (v15 < v16 || result >= v17)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v15 == v16)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v9 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v9)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
    JUMPOUT(0x100018D44);
  }

  *(a2 + 16) = v21;
  ++*(a2 + 36);
  return result;
}

unint64_t sub_100018D78(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1001D1FC0() + 1) & ~v5;
    while (1)
    {
      sub_1001D2580();
      sub_1001D1880();

      result = sub_1001D25C0();
      v9 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v9 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v10 = *(a2 + 48);
      v11 = (v10 + v3);
      v12 = (v10 + v6);
      if (v3 != v6 || v11 >= v12 + 1)
      {
        *v11 = *v12;
      }

      v13 = *(a2 + 56);
      v14 = *(*(sub_1001CFEE0() - 8) + 72);
      v15 = v14 * v3;
      result = v13 + v14 * v3;
      v16 = v14 * v6;
      v17 = v13 + v14 * v6 + v14;
      if (v15 < v16 || result >= v17)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v15 == v16)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v9 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v9)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1000190B0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1001D1FC0() + 1) & ~v5;
    while (1)
    {
      sub_1001D2580();
      sub_1001D1880();

      result = sub_1001D25C0();
      v9 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v9 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v10 = *(a2 + 48);
      v11 = (v10 + v3);
      v12 = (v10 + v6);
      if (v3 != v6 || v11 >= v12 + 1)
      {
        *v11 = *v12;
      }

      v13 = *(a2 + 56);
      v14 = *(*(sub_1001CFEE0() - 8) + 72);
      v15 = v14 * v3;
      result = v13 + v14 * v3;
      v16 = v14 * v6;
      v17 = v13 + v14 * v6 + v14;
      if (v15 < v16 || result >= v17)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v15 == v16)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v9 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v9)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100019408(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1001D1FC0() + 1) & ~v5;
    while (1)
    {
      sub_1001D2580();
      sub_1001D1880();

      result = sub_1001D25C0();
      v9 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v9 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v10 = *(a2 + 48);
      v11 = (v10 + v3);
      v12 = (v10 + v6);
      if (v3 != v6 || v11 >= v12 + 1)
      {
        *v11 = *v12;
      }

      v13 = *(a2 + 56);
      v14 = *(*(sub_1001CFEE0() - 8) + 72);
      v15 = v14 * v3;
      result = v13 + v14 * v3;
      v16 = v14 * v6;
      v17 = v13 + v14 * v6 + v14;
      if (v15 < v16 || result >= v17)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v15 == v16)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v9 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v9)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100019768(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1001D1FC0() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + v6);
      sub_1001D2580();
      sub_10001F72C(v9);
      sub_1001D1880();

      result = sub_1001D25C0();
      v10 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + v3);
      v13 = (v11 + v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_1001CFEE0() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100019964(unint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v29 = a2 + 64;
    v28 = (sub_1001D1FC0() + 1) & ~v5;
    do
    {
      v31 = v3;
      v8 = (*(v2 + 48) + 56 * v6);
      v9 = v8[1];
      v10 = v8[3];
      v11 = v8[5];
      v12 = v8[6];
      sub_1001D2580();
      if (v9)
      {
        sub_1001D25A0(1u);

        sub_1001D1880();
        if (v10)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_1001D25A0(0);

        if (v10)
        {
LABEL_8:
          sub_1001D25A0(1u);
          sub_1001D1880();
          goto LABEL_11;
        }
      }

      sub_1001D25A0(0);
LABEL_11:
      if (v11)
      {
        sub_1001D25A0(1u);
        sub_1001D1880();
      }

      else
      {
        sub_1001D25A0(0);
      }

      sub_1001D2590(*(v12 + 16));
      v13 = *(v12 + 16);
      if (v13)
      {
        v14 = v12 + 56;
        do
        {

          sub_1001D1880();

          sub_1001D1880();
          swift_bridgeObjectRelease_n();

          v14 += 32;
          --v13;
        }

        while (v13);
      }

      v15 = sub_1001D25C0();

      v16 = v15 & v7;
      v3 = v31;
      if (v31 >= v28)
      {
        v4 = v29;
        v2 = a2;
        if (v16 < v28)
        {
          goto LABEL_5;
        }

LABEL_21:
        if (v31 < v16)
        {
          goto LABEL_5;
        }

        goto LABEL_22;
      }

      v4 = v29;
      v2 = a2;
      if (v16 < v28)
      {
        goto LABEL_21;
      }

LABEL_22:
      v17 = *(v2 + 48);
      v18 = v17 + 56 * v31;
      v19 = (v17 + 56 * v6);
      if (v31 != v6 || v18 >= v19 + 56)
      {
        v20 = *v19;
        v21 = v19[1];
        v22 = v19[2];
        *(v18 + 48) = *(v19 + 6);
        *(v18 + 16) = v21;
        *(v18 + 32) = v22;
        *v18 = v20;
      }

      v23 = *(v2 + 56);
      v24 = *(*(type metadata accessor for RateLimitTimingDetails(0) - 8) + 72);
      result = v23 + v24 * v31;
      if (v24 * v31 < (v24 * v6) || result >= v23 + v24 * v6 + v24)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v24 * v31 == v24 * v6)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(v2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v27;
    ++*(v2 + 36);
  }

  return result;
}

unint64_t sub_100019CD4(unint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v36 = a2 + 64;
    v34 = (sub_1001D1FC0() + 1) & ~v5;
    v35 = v7;
LABEL_6:
    v38 = v3;
    v39 = v6;
    v8 = *(*(v2 + 48) + 56 * v6 + 48);
    sub_1001D2580();

    sub_1001D1880();
    sub_1001D1880();
    sub_1001D1880();
    v9 = 1 << *(v8 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v8 + 64);
    v12 = (v9 + 63) >> 6;

    v13 = 0;
    v14 = 0;
    if (v11)
    {
      goto LABEL_15;
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

        sub_1001D2590(v13);
        v16 = sub_1001D25C0();

        v17 = v16 & v35;
        v3 = v38;
        if (v38 >= v34)
        {
          v4 = v36;
          v2 = a2;
          v18 = v39;
          if (v17 >= v34)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v4 = v36;
          v2 = a2;
          v18 = v39;
          if (v17 >= v34)
          {
            goto LABEL_22;
          }

LABEL_21:
          if (v38 >= v17)
          {
LABEL_22:
            v19 = *(v2 + 48);
            v20 = v19 + 56 * v38;
            v21 = (v19 + 56 * v18);
            if (v38 != v18 || v20 >= v21 + 56)
            {
              v22 = *v21;
              v23 = v21[1];
              v24 = v21[2];
              *(v20 + 48) = *(v21 + 6);
              *(v20 + 16) = v23;
              *(v20 + 32) = v24;
              *v20 = v22;
            }

            v25 = *(v2 + 56);
            v26 = *(*(sub_1001D0260() - 8) + 72);
            v27 = v26 * v38;
            result = v25 + v26 * v38;
            v28 = v26 * v18;
            v29 = v25 + v26 * v18 + v26;
            if (v27 < v28 || result >= v29)
            {
              result = swift_arrayInitWithTakeFrontToBack();
              goto LABEL_4;
            }

            v3 = v18;
            if (v27 != v28)
            {
              result = swift_arrayInitWithTakeBackToFront();
LABEL_4:
              v3 = v18;
            }
          }
        }

        v6 = (v18 + 1) & v35;
        if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_6;
      }

      v11 = *(v8 + 64 + 8 * v15);
      ++v14;
      if (v11)
      {
        v14 = v15;
        do
        {
LABEL_15:
          v11 &= v11 - 1;

          sub_1001D1880();

          sub_1001D1880();

          result = sub_1001D25C0();
          v13 ^= result;
        }

        while (v11);
        continue;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_31:
    *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
    v31 = *(v2 + 16);
    v32 = __OFSUB__(v31, 1);
    v33 = v31 - 1;
    if (!v32)
    {
      *(v2 + 16) = v33;
      ++*(v2 + 36);
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10001A09C(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_1001D1FC0() + 1) & ~v6;
    while (1)
    {
      sub_1001D2580();

      sub_1001D1880();
      v11 = sub_1001D25C0();

      v12 = v11 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v12 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 16 * v4);
      v15 = (v13 + 16 * v7);
      if (v4 != v7 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(a3(0) - 8) + 72);
      v18 = v17 * v4;
      result = v16 + v17 * v4;
      v19 = v17 * v7;
      v20 = v16 + v17 * v7 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v18 == v19)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10001A290(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1001D1FC0() + 1) & ~v5;
    while (1)
    {
      sub_1001D2580();

      sub_1001D1880();
      v9 = sub_1001D25C0();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_100011AC0(&qword_100227B38, &qword_1001D36D0) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10001A494(int64_t a1, uint64_t a2)
{
  v4 = sub_1001CFDA0();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_1001D1FC0();
    v14 = v12;
    v37 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = *(v15 + 56);
    v35 = (v15 - 8);
    v36 = v16;
    do
    {
      v17 = v9;
      v18 = v38 * v11;
      v19 = v14;
      v20 = v15;
      v36(v8, *(a2 + 48) + v38 * v11, v4);
      sub_10001BA70();
      v21 = sub_1001D1730();
      result = (*v35)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v37)
      {
        if (v22 >= v37 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          result = v25 + v38 * a1;
          v26 = v25 + v18 + v38;
          v27 = v38 * a1 < v18 || result >= v26;
          v15 = v20;
          if (v27)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v14 = v19;
            v9 = v17;
          }

          else
          {
            v28 = v38 * a1 == v18;
            v9 = v17;
            if (!v28)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 8 * a1);
          v31 = (v29 + 8 * v11);
          if (a1 != v11 || v30 >= v31 + 1)
          {
            *v30 = *v31;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v37 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(a2 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v34;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10001A74C(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t), void (*a5)(void), void (*a6)(void), uint64_t a7)
{
  v11 = v7;
  v15 = *v7;
  v17 = a4(a2);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      a5();
      goto LABEL_7;
    }

    a6();
    v31 = a4(a2);
    if ((v21 & 1) == (v32 & 1))
    {
      v17 = v31;
      v23 = *v11;
      if (v21)
      {
        goto LABEL_8;
      }

      return sub_100017D24(v17, a2, a1, v23);
    }

LABEL_15:
    result = sub_1001D24F0();
    __break(1u);
    return result;
  }

LABEL_7:
  v23 = *v11;
  if ((v21 & 1) == 0)
  {
    return sub_100017D24(v17, a2, a1, v23);
  }

LABEL_8:
  v24 = v23[7];
  v25 = sub_1001CFEE0();
  v26 = *(v25 - 8);
  v27 = *(v26 + 40);
  v28 = v25;
  v29 = v24 + *(v26 + 72) * v17;

  return v27(v29, a1, v28);
}

uint64_t sub_10001A8DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_100006028(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for ValidatedAttestation(0);
      return sub_10001BA08(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for ValidatedAttestation);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_10000F934();
    goto LABEL_7;
  }

  sub_10000C004(v15, a4 & 1);
  v22 = sub_100006028(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = sub_1001D24F0();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_100017DD0(v12, a2, a3, a1, v18);
}

uint64_t sub_10001AA48(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100006478(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for RateLimitTimingDetails(0);
      return sub_10001BA08(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for RateLimitTimingDetails);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_10000FD18();
    goto LABEL_7;
  }

  sub_10000C638(v13, a3 & 1);
  v20 = sub_100006478(a2);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_1001D24F0();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_100017E7C(v10, a2, a1, v16);
  return sub_10001B9AC(a2, v22);
}

uint64_t sub_10001AB90(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1000064E4(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_10000FFC0();
      goto LABEL_7;
    }

    sub_10000CB50(v13, a3 & 1);
    v24 = sub_1000064E4(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_100017F40(v10, a2, a1, v16);
      return sub_10001BB84(a2, v26);
    }

LABEL_15:
    result = sub_1001D24F0();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = v16[7];
  v18 = sub_1001D0260();
  v19 = *(v18 - 8);
  v20 = *(v19 + 40);
  v21 = v18;
  v22 = v17 + *(v19 + 72) * v10;

  return v20(v22, a1, v21);
}

uint64_t sub_10001AD04(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_100006028(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_100010764();
      goto LABEL_7;
    }

    sub_10000DAA4(v15, a4 & 1);
    v26 = sub_100006028(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1001D24F0();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_1001CFD60();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_1000180F8(v12, a2, a3, a1, v18);
}

uint64_t sub_10001AE84(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_100006028(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_100010A14();
      goto LABEL_7;
    }

    sub_10000DE50(v15, a4 & 1);
    v26 = sub_100006028(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1001D24F0();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_1000181A8(v12, a2, a3, a1, v18);
}

uint64_t sub_10001B010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v8 = a4;
  v12 = *v5;
  v13 = sub_100006708(a2, a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_10000E708(v18, a5 & 1);
      v13 = sub_100006708(a2, a3, v8 & 1);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_1001D24F0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_100010F70();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    *(v23[7] + 8 * v13) = a1;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v25 = v23[6] + 24 * v13;
  *v25 = a2;
  *(v25 + 8) = a3;
  *(v25 + 16) = v8 & 1;
  *(v23[7] + 8 * v13) = a1;
  v26 = v23[2];
  v17 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v27;
}

uint64_t sub_10001B1A4(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100006028(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10000EDB0(v16, a4 & 1);
      v11 = sub_100006028(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1001D24F0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_10001136C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    return sub_10001BAC8(a1, v21[7] + (v11 << 7), &qword_100230150, &unk_1001D3700);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  v24 = (v21[7] + (v11 << 7));
  v25 = *a1;
  v26 = a1[1];
  v27 = a1[3];
  v24[2] = a1[2];
  v24[3] = v27;
  *v24 = v25;
  v24[1] = v26;
  v28 = a1[4];
  v29 = a1[5];
  v30 = a1[6];
  *(v24 + 105) = *(a1 + 105);
  v24[5] = v29;
  v24[6] = v30;
  v24[4] = v28;
  v31 = v21[2];
  v15 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v32;
}

uint64_t sub_10001B348(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100006028(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10000F15C(v16, a4 & 1);
      v11 = sub_100006028(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1001D24F0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_100011560();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    return sub_10001BAC8(a1, v21[7] + 72 * v11, &qword_100230140, &qword_1001D36F0);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  v24 = v21[7] + 72 * v11;
  *v24 = *a1;
  v25 = *(a1 + 16);
  v26 = *(a1 + 32);
  v27 = *(a1 + 48);
  *(v24 + 64) = *(a1 + 64);
  *(v24 + 32) = v26;
  *(v24 + 48) = v27;
  *(v24 + 16) = v25;
  v28 = v21[2];
  v15 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v29;
}

uint64_t sub_10001B4EC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1001CFDA0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100006598(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1000110EC();
      goto LABEL_7;
    }

    sub_10000E9D4(v17, a3 & 1);
    v22 = sub_100006598(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_100018264(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1001D24F0();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

void sub_10001B6B8(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      sub_1001D2590(v7);
      return;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      do
      {
LABEL_9:
        v5 &= v5 - 1;

        sub_1001D1880();

        sub_1001D1880();

        v7 ^= sub_1001D25C0();
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
}

unint64_t sub_10001B824(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10021B968;
  v6._object = a2;
  v4 = sub_1001D21E0(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

void sub_10001B870(uint64_t a1)
{
  if (a1)
  {
    v2 = a1;
    if (a1 < 0)
    {
      v2 = -a1;
      if (__OFSUB__(0, a1))
      {
        goto LABEL_17;
      }
    }

    v3 = log10(v2);
    if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v3 > -9.22337204e18)
    {
      if (v3 < 9.22337204e18)
      {
        v4 = __exp10(v3);
        v5 = v4 * round(a1 / v4);
        if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v5 > -9.22337204e18)
          {
            if (v5 < 9.22337204e18)
            {
              return;
            }

            goto LABEL_16;
          }

LABEL_15:
          __break(1u);
LABEL_16:
          __break(1u);
LABEL_17:
          __break(1u);
          return;
        }

LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_13;
  }
}

uint64_t sub_10001BA08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_10001BA70()
{
  result = qword_100227AD8;
  if (!qword_100227AD8)
  {
    sub_1001CFDA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227AD8);
  }

  return result;
}

uint64_t sub_10001BAC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100011AC0(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t getEnumTagSinglePayload for AttestationDistributionMetric.EventName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AttestationDistributionMetric.EventName(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_10001BD50(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10001BD64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_10001BDAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10001BE08()
{
  result = qword_100227E10;
  if (!qword_100227E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227E10);
  }

  return result;
}

unint64_t sub_10001BE60()
{
  result = qword_100227E18;
  if (!qword_100227E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227E18);
  }

  return result;
}

unint64_t sub_10001BEB8()
{
  result = qword_100227E20;
  if (!qword_100227E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227E20);
  }

  return result;
}

unint64_t sub_10001BF0C(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD00000000000001DLL;
    v7 = 0x5064657473757274;
    if (a1 == 10)
    {
      v7 = 0xD00000000000001DLL;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD00000000000001CLL;
    if (a1 == 7)
    {
      v8 = 0xD000000000000017;
    }

    if (a1 == 6)
    {
      v8 = 0x6572746E65696C63;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6D6974746E657665;
    v2 = 0x616566656C707061;
    v3 = 0x6E7562656C707061;
    if (a1 != 4)
    {
      v3 = 0x636F6C656C707061;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 7761509;
    if (a1 != 1)
    {
      v4 = 0x696C63656C707061;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_10001C0CC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_10001BF0C(*a1);
  v5 = v4;
  if (v3 == sub_10001BF0C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1001D2470();
  }

  return v8 & 1;
}

Swift::Int sub_10001C154()
{
  v1 = *v0;
  sub_1001D2580();
  sub_10001BF0C(v1);
  sub_1001D1880();

  return sub_1001D25C0();
}

uint64_t sub_10001C1B8(uint64_t a1)
{
  sub_10001BF0C(*v1);
  sub_1001D1880();
}

Swift::Int sub_10001C20C()
{
  v1 = *v0;
  sub_1001D2580();
  sub_10001BF0C(v1);
  sub_1001D1880();

  return sub_1001D25C0();
}

unint64_t sub_10001C26C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001CC58(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_10001C29C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10001BF0C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_10001C2C8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v103 = a8;
  v104 = a7;
  v98 = a5;
  v99 = a6;
  v96 = a3;
  v97 = a4;
  v95 = a9;
  v24 = sub_100011AC0(&qword_100227DE0, &qword_1001D3B00);
  __chkstk_darwin(v24 - 8);
  v92 = (&v81 - v25);
  sub_100011AC0(&qword_100227E70, &qword_1001D3C78);
  v26 = sub_100011AC0(&qword_100227E78, &qword_1001D3C80);
  v27 = *(*(v26 - 8) + 72);
  v28 = (*(*(v26 - 8) + 80) + 32) & ~*(*(v26 - 8) + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1001D3C60;
  v90 = v29;
  v30 = v29 + v28;
  v31 = (v29 + v28 + *(v26 + 48));
  *(v29 + v28) = 6;
  v93 = a2;
  *v31 = sub_1001CFD70();
  v31[1] = v32;
  v33 = enum case for EventValue.string(_:);
  v34 = sub_1001CFEE0();
  v91 = *(v34 - 8);
  v102 = *(v91 + 104);
  (v102)(v31, v33, v34);
  v35 = v30 + v27;
  v36 = *(v26 + 48);
  *(v30 + v27) = 0;
  v94 = a1;
  sub_1001CFD20();
  if ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v37 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v37 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v88 = a22;
  v83 = a21;
  v89 = a15;
  v100 = a13;
  v101 = a20;
  v86 = a12;
  v87 = a14;
  v85 = a11;
  v84 = a10;
  *(v35 + v36) = v37;
  v38 = v35 + v36;
  v82 = enum case for EventValue.int(_:);
  v39 = v102;
  (v102)(v38);
  v40 = (v30 + 2 * v27);
  v41 = *(v26 + 48);
  *v40 = 1;
  v42 = &v40[v41];
  v43 = v99;
  *v42 = v98;
  v42[1] = v43;
  v39();
  v44 = (v30 + 3 * v27);
  v45 = &v44[*(v26 + 48)];
  *v44 = 2;
  v46 = *(v83 + 96);
  v99 = a19;
  *v45 = v46(a19);
  v45[1] = v47;
  (v39)(v45, v33, v34);
  v48 = (v30 + 4 * v27);
  v49 = &v48[*(v26 + 48)];
  *v48 = 5;
  *v49 = sub_1001CFDB0();
  v49[1] = v50;
  (v39)(v49, v33, v34);
  v51 = (v30 + 5 * v27);
  v52 = *(v26 + 48);
  *v51 = 7;
  v51[v52] = v84 & 1;
  v84 = enum case for EventValue.BOOL(_:);
  (v39)(&v51[v52]);
  v53 = (v30 + 6 * v27);
  v54 = *(v26 + 48);
  *v53 = 9;
  v55 = &v53[v54];
  v56 = v86;
  *v55 = v85;
  v55[1] = v56;
  LODWORD(v98) = v33;
  v39();
  v57 = (v30 + 7 * v27);
  v58 = *(v26 + 48);
  *v57 = 8;
  Error.telemetryString.getter(&v57[v58], v101, v88);
  v59 = (v30 + 8 * v27);
  v60 = *(v26 + 48);
  *v59 = 10;
  v61 = sub_1001D2600();
  v62 = 1000 * v61;
  if ((v61 * 1000) >> 64 != (1000 * v61) >> 63)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_1001D2600();
  if (__OFADD__(v62, v63 / 1000000000000000))
  {
LABEL_15:
    __break(1u);
    return;
  }

  *&v59[v60] = v62 + v63 / 1000000000000000;
  v64 = &v59[v60];
  v65 = v102;
  (v102)(v64, v82, v34);
  v66 = 9 * v27;
  v67 = v65;
  v68 = (v30 + v66);
  v69 = *(v26 + 48);
  *v68 = 11;
  v68[v69] = a18 & 1;
  (v65)(&v68[v69], v84, v34);
  v70 = sub_1000D51A8(v90);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v105 = v70;
  v72 = v96;
  v71 = v97;
  v74 = v91;
  v73 = v92;
  v75 = v98;
  if (v97)
  {
    *v92 = v96;
    v73[1] = v71;
    (v67)(v73, v75, v34);
    (*(v74 + 56))(v73, 0, 1, v34);

    sub_10001660C(v73, 4);
  }

  if (a17)
  {
    *v73 = a16;
    v73[1] = a17;
    (v67)(v73, v75, v34);
    (*(v74 + 56))(v73, 0, 1, v34);
    sub_10001660C(v73, 3);
  }

  (*(*(v101 - 8) + 8))(v100);
  v76 = sub_1001CFDD0();
  (*(*(v76 - 8) + 8))(v103, v76);
  (*(*(v99 - 8) + 8))(v104);
  v77 = sub_1001CFDA0();
  (*(*(v77 - 8) + 8))(v93, v77);
  v78 = sub_1001CFD60();
  (*(*(v78 - 8) + 8))(v94, v78);
  v79 = v105;
  v80 = v95;
  *v95 = 0xD000000000000015;
  v80[1] = 0x80000001001E33F0;
  v80[2] = v79;
  v80[3] = v72;
  v80[4] = v71;
}

uint64_t getEnumTagSinglePayload for AttestationVerificationErrorMetric.EventName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AttestationVerificationErrorMetric.EventName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10001CB54()
{
  result = qword_100227E80;
  if (!qword_100227E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227E80);
  }

  return result;
}

unint64_t sub_10001CBAC()
{
  result = qword_100227E88;
  if (!qword_100227E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227E88);
  }

  return result;
}

unint64_t sub_10001CC04()
{
  result = qword_100227E90;
  if (!qword_100227E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227E90);
  }

  return result;
}

unint64_t sub_10001CC58(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10021BA30;
  v6._object = a2;
  v4 = sub_1001D21E0(v3, v6);

  if (v4 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10001CCA4(char a1)
{
  result = 0x6D6974746E657665;
  switch(a1)
  {
    case 1:
      result = 7761509;
      break;
    case 2:
      result = 0x696C63656C707061;
      break;
    case 3:
      result = 0x616566656C707061;
      break;
    case 4:
      result = 0x6E7562656C707061;
      break;
    case 5:
      result = 0x636F6C656C707061;
      break;
    case 6:
      result = 0x6572746E65696C63;
      break;
    case 7:
      result = 0xD000000000000017;
      break;
    case 8:
      result = 0xD00000000000001ELL;
      break;
    case 9:
      result = 0xD00000000000001CLL;
      break;
    case 10:
      result = 0xD00000000000001DLL;
      break;
    case 11:
      result = 0xD00000000000001DLL;
      break;
    case 12:
      result = 0x5064657473757274;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10001CE88(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10001CCA4(*a1);
  v5 = v4;
  if (v3 == sub_10001CCA4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1001D2470();
  }

  return v8 & 1;
}

Swift::Int sub_10001CF10()
{
  v1 = *v0;
  sub_1001D2580();
  sub_10001CCA4(v1);
  sub_1001D1880();

  return sub_1001D25C0();
}

uint64_t sub_10001CF74(uint64_t a1)
{
  sub_10001CCA4(*v1);
  sub_1001D1880();
}

Swift::Int sub_10001CFC8()
{
  v1 = *v0;
  sub_1001D2580();
  sub_10001CCA4(v1);
  sub_1001D1880();

  return sub_1001D25C0();
}

unint64_t sub_10001D028@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001D2EC(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_10001D058@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10001CCA4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for AttestationVerificationMetric.EventName(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AttestationVerificationMetric.EventName(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10001D1E8()
{
  result = qword_100227EE0;
  if (!qword_100227EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227EE0);
  }

  return result;
}

unint64_t sub_10001D240()
{
  result = qword_100227EE8;
  if (!qword_100227EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227EE8);
  }

  return result;
}

unint64_t sub_10001D298()
{
  result = qword_100227EF0;
  if (!qword_100227EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227EF0);
  }

  return result;
}

unint64_t sub_10001D2EC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10021BB70;
  v6._object = a2;
  v4 = sub_1001D21E0(v3, v6);

  if (v4 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10001D350(uint64_t a1)
{
  sub_1001D1880();
}

unint64_t sub_10001D494@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001DC24(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10001D4C4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000747261;
  v4 = 0x7453646F69726570;
  v5 = 0xEC00000044495555;
  v6 = 0x676E696C706D6173;
  if (v2 != 5)
  {
    v6 = 0xD00000000000001ALL;
    v5 = 0x80000001001E24C0;
  }

  v7 = 0xEB00000000656C61;
  v8 = 0x636F4C656C707061;
  if (v2 != 3)
  {
    v8 = 0x616546656C707061;
    v7 = 0xEE00444965727574;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE300000000000000;
  v10 = 7761509;
  if (v2 != 1)
  {
    v10 = 0x696C43656C707061;
    v9 = 0xEF6F666E49746E65;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_10001D5D0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (sub_1001D2470()) && (sub_1000CFF98(v2, v6))
  {
    if (v4)
    {
      if (v7 && (v3 == v5 && v4 == v7 || (sub_1001D2470() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v7)
    {
      return 1;
    }
  }

  return 0;
}

void sub_10001D688(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_100011AC0(&qword_100227F40, &unk_1001D3EE0);
  v15 = sub_100011AC0(&qword_100227F48, &qword_1001DB750);
  v16 = *(*(v15 - 8) + 72);
  v17 = (*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1001D3ED0;
  v50 = v18;
  v19 = v18 + v17;
  v20 = (v18 + v17 + *(v15 + 48));
  *(v18 + v17) = 4;
  *v20 = a1;
  v20[1] = a2;
  v21 = enum case for EventValue.string(_:);
  v22 = sub_1001CFEE0();
  v23 = *(*(v22 - 8) + 104);
  v47 = v21;
  (v23)(v20, v21, v22);
  v24 = v19 + v16;
  v25 = *(v15 + 48);
  *(v19 + v16) = 0;
  v51 = a3;
  sub_1001CFD20();
  if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v26 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v26 < 9.22337204e18)
  {
    v46 = a8;
    *(v24 + v25) = v26;
    v45 = enum case for EventValue.int(_:);
    v23(v24 + v25);
    v27 = (v19 + 2 * v16);
    v28 = *(v15 + 48);
    *v27 = 1;
    v29 = &v27[v28];
    *v29 = a4;
    v29[1] = a5;
    (v23)();
    v30 = (v19 + 3 * v16);
    v31 = &v30[*(v15 + 48)];
    *v30 = 2;
    *v31 = (*(a11 + 96))(a10, a11);
    v31[1] = v32;
    (v23)(v31, v47, v22);
    v33 = (v19 + 4 * v16);
    v34 = &v33[*(v15 + 48)];
    *v33 = 3;
    *v34 = sub_1001CFDB0();
    v34[1] = v35;
    (v23)(v34, v47, v22);
    v36 = (v19 + 5 * v16);
    v37 = *(v15 + 48);
    *v36 = 5;
    v38 = sub_1001CFDA0();
    v39 = *(v38 - 8);
    (*(v39 + 16))(&v36[v37], a7, v38);
    (v23)(&v36[v37], enum case for EventValue.uuid(_:), v22);
    v40 = *(v15 + 48);
    v41 = (v19 + 6 * v16);
    *v41 = 6;
    *&v41[v40] = a9;
    (v23)(&v41[v40], v45, v22);
    v42 = sub_1000D4DD8(v50);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v39 + 8))(a7, v38);
    v43 = sub_1001CFDD0();
    (*(*(v43 - 8) + 8))(a6, v43);
    v44 = sub_1001CFD60();
    (*(*(v44 - 8) + 8))(v51, v44);
    *v46 = 0xD000000000000013;
    v46[1] = 0x80000001001E3410;
    v46[2] = v42;
    v46[3] = 0;
    v46[4] = 0;
    return;
  }

LABEL_7:
  __break(1u);
}

unint64_t sub_10001DB20()
{
  result = qword_100227F50;
  if (!qword_100227F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227F50);
  }

  return result;
}

unint64_t sub_10001DB78()
{
  result = qword_100227F58;
  if (!qword_100227F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227F58);
  }

  return result;
}

unint64_t sub_10001DBD0()
{
  result = qword_100227F60;
  if (!qword_100227F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227F60);
  }

  return result;
}

unint64_t sub_10001DC24(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10021BCC8;
  v6._object = a2;
  v4 = sub_1001D21E0(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

Swift::Int sub_10001DC7C()
{
  sub_1001D2580();
  sub_1001D1880();

  return sub_1001D25C0();
}

uint64_t sub_10001DD7C(uint64_t a1)
{
  sub_1001D1880();
}

Swift::Int sub_10001DE68()
{
  sub_1001D2580();
  sub_1001D1880();

  return sub_1001D25C0();
}

unint64_t sub_10001DF64@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001E2B8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10001DF94(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0x6D6974746E657665;
  v5 = 0xEF64697473657571;
  v6 = 0x6572746E65696C63;
  v7 = 0xEF6F666E69746E65;
  v8 = 0x696C63656C707061;
  if (v2 != 3)
  {
    v8 = 0x636F6C656C707061;
    v7 = 0xEB00000000656C61;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 7761509;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for FirstInvokeRequestSendMetric.EventName(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FirstInvokeRequestSendMetric.EventName(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10001E1B4()
{
  result = qword_100227FB0;
  if (!qword_100227FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227FB0);
  }

  return result;
}

unint64_t sub_10001E20C()
{
  result = qword_100227FB8;
  if (!qword_100227FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227FB8);
  }

  return result;
}

unint64_t sub_10001E264()
{
  result = qword_100227FC0;
  if (!qword_100227FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227FC0);
  }

  return result;
}

unint64_t sub_10001E2B8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10021BD90;
  v6._object = a2;
  v4 = sub_1001D21E0(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10001E31C(uint64_t a1)
{
  sub_1001D1880();
}

unint64_t sub_10001E454@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001E6AC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10001E484(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0x6D6954746E657665;
  v5 = 0xD000000000000017;
  v6 = 0x80000001001E24F0;
  if (v2 != 5)
  {
    v5 = 0xD00000000000001FLL;
    v6 = 0x80000001001E2510;
  }

  v7 = 0xEF6F666E49746E65;
  v8 = 0x696C43656C707061;
  if (v2 != 3)
  {
    v8 = 0x636F4C656C707061;
    v7 = 0xEB00000000656C61;
  }

  if (*v1 <= 4u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE300000000000000;
  v10 = 7761509;
  if (v2 != 1)
  {
    v10 = 0x6552746E65696C63;
    v9 = 0xEF64497473657571;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v5;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v6;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_10001E5A8()
{
  result = qword_100228010;
  if (!qword_100228010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228010);
  }

  return result;
}

unint64_t sub_10001E600()
{
  result = qword_100228018;
  if (!qword_100228018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228018);
  }

  return result;
}

unint64_t sub_10001E658()
{
  result = qword_100228020;
  if (!qword_100228020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228020);
  }

  return result;
}

unint64_t sub_10001E6AC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10021BE28;
  v6._object = a2;
  v4 = sub_1001D21E0(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10001E6F8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6D6954746E657665;
    v6 = 0x696C43656C707061;
    if (a1 != 2)
    {
      v6 = 0x616546656C707061;
    }

    if (a1)
    {
      v5 = 7761509;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6552746E65696C63;
    v2 = 0xD000000000000015;
    if (a1 != 7)
    {
      v2 = 0xD000000000000013;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6E7542656C707061;
    if (a1 != 4)
    {
      v3 = 0x636F4C656C707061;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

Swift::Int sub_10001E860()
{
  v1 = *v0;
  sub_1001D2580();
  sub_100005134(v3, v1);
  return sub_1001D25C0();
}

Swift::Int sub_10001E8B0()
{
  v1 = *v0;
  sub_1001D2580();
  sub_100005134(v3, v1);
  return sub_1001D25C0();
}

unint64_t sub_10001E8F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001EBB8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_10001E924@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001E6F8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for InvokeResponseMetric.EventName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InvokeResponseMetric.EventName(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10001EAB4()
{
  result = qword_100228070;
  if (!qword_100228070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228070);
  }

  return result;
}

unint64_t sub_10001EB0C()
{
  result = qword_100228078;
  if (!qword_100228078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228078);
  }

  return result;
}

unint64_t sub_10001EB64()
{
  result = qword_100228080;
  if (!qword_100228080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228080);
  }

  return result;
}

unint64_t sub_10001EBB8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10021BEF0;
  v6._object = a2;
  v4 = sub_1001D21E0(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10001EC04(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000010;
    if (a1 != 7)
    {
      v5 = 0x6E6553617461646BLL;
    }

    v6 = 0x636F4C656C707061;
    if (a1 != 5)
    {
      v6 = 0x6552746E65696C63;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6D6954746E657665;
    v2 = 0x696C43656C707061;
    v3 = 0x616546656C707061;
    if (a1 != 3)
    {
      v3 = 0x6E7542656C707061;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 7761509;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_10001ED90(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_10001EC04(*a1);
  v5 = v4;
  if (v3 == sub_10001EC04(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1001D2470();
  }

  return v8 & 1;
}

Swift::Int sub_10001EE18()
{
  v1 = *v0;
  sub_1001D2580();
  sub_10001EC04(v1);
  sub_1001D1880();

  return sub_1001D25C0();
}

uint64_t sub_10001EE7C(uint64_t a1)
{
  sub_10001EC04(*v1);
  sub_1001D1880();
}

Swift::Int sub_10001EED0()
{
  v1 = *v0;
  sub_1001D2580();
  sub_10001EC04(v1);
  sub_1001D1880();

  return sub_1001D25C0();
}

unint64_t sub_10001EF30@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001F1F4(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_10001EF60@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10001EC04(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for KDataSendMetric.EventName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for KDataSendMetric.EventName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10001F0F0()
{
  result = qword_1002280D0;
  if (!qword_1002280D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002280D0);
  }

  return result;
}

unint64_t sub_10001F148()
{
  result = qword_1002280D8;
  if (!qword_1002280D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002280D8);
  }

  return result;
}

unint64_t sub_10001F1A0()
{
  result = qword_1002280E0;
  if (!qword_1002280E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002280E0);
  }

  return result;
}

unint64_t sub_10001F1F4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10021BFE8;
  v6._object = a2;
  v4 = sub_1001D21E0(v3, v6);

  if (v4 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10001F240(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD00000000000001ELL;
    v6 = 0xD00000000000001CLL;
    if (a1 != 8)
    {
      v6 = 0xD00000000000001DLL;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x636F4C656C707061;
    if (a1 != 5)
    {
      v7 = 0x6552746E65696C63;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6D6954746E657665;
    v2 = 0x696C43656C707061;
    v3 = 0x616546656C707061;
    if (a1 != 3)
    {
      v3 = 0x6E7542656C707061;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 7761509;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_10001F3BC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_10001F240(*a1);
  v5 = v4;
  if (v3 == sub_10001F240(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1001D2470();
  }

  return v8 & 1;
}

Swift::Int sub_10001F444()
{
  v1 = *v0;
  sub_1001D2580();
  sub_10001F240(v1);
  sub_1001D1880();

  return sub_1001D25C0();
}

uint64_t sub_10001F4A8(uint64_t a1)
{
  sub_10001F240(*v1);
  sub_1001D1880();
}

Swift::Int sub_10001F4FC()
{
  v1 = *v0;
  sub_1001D2580();
  sub_10001F240(v1);
  sub_1001D1880();

  return sub_1001D25C0();
}

unint64_t sub_10001F55C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001F6E0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_10001F58C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10001F240(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10001F5DC()
{
  result = qword_100228130;
  if (!qword_100228130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228130);
  }

  return result;
}

unint64_t sub_10001F634()
{
  result = qword_100228138;
  if (!qword_100228138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228138);
  }

  return result;
}

unint64_t sub_10001F68C()
{
  result = qword_100228140;
  if (!qword_100228140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228140);
  }

  return result;
}

unint64_t sub_10001F6E0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10021C0F8;
  v6._object = a2;
  v4 = sub_1001D21E0(v3, v6);

  if (v4 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10001F72C(char a1)
{
  result = 0x6D6954746E657665;
  switch(a1)
  {
    case 1:
      result = 7761509;
      break;
    case 2:
      result = 0x696C43656C707061;
      break;
    case 3:
      result = 0x616546656C707061;
      break;
    case 4:
      result = 0x6E7542656C707061;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x636F4C656C707061;
      break;
    case 7:
      result = 0x6552746E65696C63;
      break;
    case 8:
    case 12:
    case 30:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0xD000000000000019;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
    case 15:
    case 25:
      result = 0xD000000000000014;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    case 16:
    case 34:
    case 37:
      result = 0xD000000000000012;
      break;
    case 17:
    case 18:
      result = 0xD000000000000023;
      break;
    case 19:
      result = 0xD000000000000021;
      break;
    case 20:
      result = 0xD000000000000010;
      break;
    case 21:
      result = 0xD00000000000002BLL;
      break;
    case 22:
    case 28:
      result = 0xD000000000000017;
      break;
    case 23:
    case 29:
    case 35:
      result = 0xD000000000000018;
      break;
    case 24:
    case 27:
    case 31:
      result = 0xD000000000000016;
      break;
    case 26:
      result = 0xD00000000000001ALL;
      break;
    case 32:
      result = 0x6E6573617461646BLL;
      break;
    case 33:
      result = 0x6E6553617461646BLL;
      break;
    case 36:
      result = 0xD00000000000001BLL;
      break;
    case 38:
      result = 0x5064657473757274;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10001FBB8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10001F72C(*a1);
  v5 = v4;
  if (v3 == sub_10001F72C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1001D2470();
  }

  return v8 & 1;
}

Swift::Int sub_10001FC40()
{
  v1 = *v0;
  sub_1001D2580();
  sub_10001F72C(v1);
  sub_1001D1880();

  return sub_1001D25C0();
}

uint64_t sub_10001FCA4(uint64_t a1)
{
  sub_10001F72C(*v1);
  sub_1001D1880();
}

Swift::Int sub_10001FCF8()
{
  v1 = *v0;
  sub_1001D2580();
  sub_10001F72C(v1);
  sub_1001D1880();

  return sub_1001D25C0();
}

unint64_t sub_10001FD58@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10002001C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_10001FD88@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10001F72C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for TrustedRequestMetric.EventName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDA)
  {
    goto LABEL_17;
  }

  if (a2 + 38 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 38) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 38;
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

      return (*a1 | (v4 << 8)) - 38;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 38;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x27;
  v8 = v6 - 39;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TrustedRequestMetric.EventName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 38 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 38) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDA)
  {
    v4 = 0;
  }

  if (a2 > 0xD9)
  {
    v5 = ((a2 - 218) >> 8) + 1;
    *result = a2 + 38;
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
    *result = a2 + 38;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10001FF18()
{
  result = qword_100228190;
  if (!qword_100228190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228190);
  }

  return result;
}

unint64_t sub_10001FF70()
{
  result = qword_100228198;
  if (!qword_100228198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228198);
  }

  return result;
}

unint64_t sub_10001FFC8()
{
  result = qword_1002281A0;
  if (!qword_1002281A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002281A0);
  }

  return result;
}

unint64_t sub_10002001C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1001D24A0();

  if (v2 >= 0x27)
  {
    return 39;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100020070(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  __chkstk_darwin(a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = __chkstk_darwin(AssociatedTypeWitness);
  v14 = &v27 - v13;
  __chkstk_darwin(v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  __chkstk_darwin(v16);
  v18 = &v27 - v17;
  v19 = sub_1001D1D00();
  if (!v19)
  {
    return sub_1001D1A00();
  }

  v41 = v19;
  v45 = sub_1001D20B0();
  v32 = sub_1001D20C0();
  sub_1001D2090(v41);
  result = sub_1001D1CF0();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_1001D1D40();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_1001D20A0();
      result = sub_1001D1D20();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_100020490(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001CFEE0();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v100 = v77 - v10;
  __chkstk_darwin(v9);
  v81 = v77 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = __chkstk_darwin(AssociatedTypeWitness);
  v99 = v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v79 = v77 - v16;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v92 = sub_1001D1F00();
  v98 = *(v92 - 8);
  v18 = __chkstk_darwin(v92);
  v93 = v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v91 = v77 - v20;
  v101 = sub_1000D60E8(_swiftEmptyArrayStorage);
  v21 = *(a2 + 64);
  v87 = a1;
  v88 = a2;
  v22 = v21(a1, a2);
  v23 = 0;
  v24 = *(v22 + 64);
  v77[0] = v22 + 64;
  v82 = v22;
  v25 = 1 << *(v22 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v24;
  v28 = (v25 + 63) >> 6;
  v94 = TupleTypeMetadata2;
  v90 = TupleTypeMetadata2 - 8;
  v77[2] = v13 + 16;
  v96 = (v13 + 32);
  v97 = (v5 + 16);
  v102 = (v5 + 32);
  v89 = (v98 + 32);
  v85 = v5 + 8;
  v80 = v13;
  v84 = (v13 + 8);
  v95 = v5;
  v77[1] = v5 + 40;
  v83 = v28;
  v86 = AssociatedTypeWitness;
  v78 = v8;
  while (v27)
  {
    v30 = v23;
LABEL_15:
    v35 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v36 = v35 | (v30 << 6);
    v37 = v82;
    v38 = v80;
    v39 = v79;
    (*(v80 + 16))(v79, *(v82 + 48) + *(v80 + 72) * v36, AssociatedTypeWitness);
    v40 = *(v37 + 56);
    v41 = v95;
    v42 = v81;
    (*(v95 + 16))(v81, v40 + *(v95 + 72) * v36, v4);
    v33 = v93;
    v43 = *(v94 + 48);
    v44 = *(v38 + 32);
    v34 = v94;
    v44(v93, v39, AssociatedTypeWitness);
    v45 = *(v41 + 32);
    v46 = v4;
    v45(&v33[v43], v42, v4);
    v47 = 0;
    v32 = v30;
    v8 = v78;
LABEL_16:
    v48 = *(v34 - 8);
    (*(v48 + 56))(v33, v47, 1, v34);
    v49 = v91;
    (*v89)(v91, v33, v92);
    if ((*(v48 + 48))(v49, 1, v34) == 1)
    {

      return v101;
    }

    v98 = v32;
    v50 = *(v34 + 48);
    (*v96)(v99, v49, AssociatedTypeWitness);
    v51 = *v102;
    v52 = &v49[v50];
    v53 = v100;
    v54 = v46;
    (*v102)(v100, v52, v46);
    swift_getAssociatedConformanceWitness();
    sub_1001D1950();
    v55 = v104;
    v56 = v105;
    v57 = v8;
    v58 = v8;
    v59 = v54;
    (*v97)(v58, v53, v54);
    v60 = v101;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v103 = v60;
    v63 = sub_100006028(v55, v56);
    v64 = *(v60 + 16);
    v65 = (v62 & 1) == 0;
    v66 = v64 + v65;
    if (__OFADD__(v64, v65))
    {
      goto LABEL_29;
    }

    v67 = v62;
    if (*(v60 + 24) >= v66)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10000F90C();
      }
    }

    else
    {
      sub_10000BFDC(v66, isUniquelyReferenced_nonNull_native);
      v68 = sub_100006028(v55, v56);
      if ((v67 & 1) != (v69 & 1))
      {
        goto LABEL_31;
      }

      v63 = v68;
    }

    v4 = v59;
    v8 = v57;
    if (v67)
    {

      v101 = v103;
      v29 = v95;
      (*(v95 + 40))(v103[7] + *(v95 + 72) * v63, v57, v4);
      (*(v29 + 8))(v100, v4);
      AssociatedTypeWitness = v86;
      (*v84)(v99, v86);
    }

    else
    {
      v70 = v103;
      v103[(v63 >> 6) + 8] |= 1 << v63;
      v71 = (v70[6] + 16 * v63);
      *v71 = v55;
      v71[1] = v56;
      v72 = v95;
      v51((v70[7] + *(v95 + 72) * v63), v57, v4);
      (*(v72 + 8))(v100, v4);
      AssociatedTypeWitness = v86;
      (*v84)(v99, v86);
      v73 = v70[2];
      v74 = __OFADD__(v73, 1);
      v75 = v73 + 1;
      if (v74)
      {
        goto LABEL_30;
      }

      v101 = v70;
      v70[2] = v75;
    }

    v23 = v98;
    v28 = v83;
  }

  if (v28 <= v23 + 1)
  {
    v31 = v23 + 1;
  }

  else
  {
    v31 = v28;
  }

  v32 = v31 - 1;
  v33 = v93;
  v34 = v94;
  while (1)
  {
    v30 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v30 >= v28)
    {
      v46 = v4;
      v27 = 0;
      v47 = 1;
      goto LABEL_16;
    }

    v27 = *(v77[0] + 8 * v30);
    ++v23;
    if (v27)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_1001D24F0();
  __break(1u);
  return result;
}

uint64_t sub_100020CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *(a2 - 8);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  sub_100011AC0(&qword_1002301F0, &qword_1001E2120);
  v4[10] = swift_task_alloc();
  v5 = sub_1001CFF00();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_100020E04, 0, 0);
}

uint64_t sub_100020E04()
{
  (*(v0[4] + 40))(v0[3]);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v3 = [objc_opt_self() mainBundle];
    v4 = [v3 bundleIdentifier];

    if (v4)
    {
      sub_1001D17D0();
      v2 = v5;
    }

    else
    {
      v2 = 0;
    }
  }

  v0[14] = v2;
  v6 = v0[12];
  v7 = v0[13];
  v8 = v0[10];
  v21 = v0[11];
  v10 = v0[4];
  v9 = v0[5];
  v11 = v0[3];

  sub_1001CFEF0();
  sub_1001CFF20();
  v12 = v9[1];
  v22 = *v9;
  v13 = *(v10 + 32);
  v0[15] = v13;
  v0[16] = (v10 + 32) & 0xFFFFFFFFFFFFLL | 0x9FA7000000000000;
  v14 = v13(v11, v10);
  v16 = v15;
  v0[17] = v15;
  v17 = sub_100020490(v11, v10);
  v0[18] = v17;
  (*(v6 + 16))(v8, v7, v21);
  (*(v6 + 56))(v8, 0, 1, v21);
  v18 = swift_task_alloc();
  v0[19] = v18;
  *v18 = v0;
  v18[1] = sub_100021030;
  v19 = v0[10];

  return static Reporter.report(teamID:eventType:event:transportConfiguration:)(v22, v12, v14, v16, v17, v19);
}

uint64_t sub_100021030()
{
  v2 = *(*v1 + 80);
  *(*v1 + 160) = v0;

  sub_100021DF4(v2);

  if (v0)
  {

    v3 = sub_10002153C;
  }

  else
  {
    v3 = sub_1000211BC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000211BC()
{
  v43 = v0;
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v5 = v0[2];
  v4 = v0[3];
  type metadata accessor for MetricReporter(0);
  v6 = *(v3 + 16);
  v6(v2, v5, v4);
  v6(v1, v5, v4);
  v7 = sub_1001D0E50();
  v8 = sub_1001D1E00();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[15];
    v39 = v0[12];
    v40 = v0[11];
    v41 = v0[13];
    v38 = v8;
    v10 = v0[9];
    v37 = v0[8];
    v11 = v0[6];
    v12 = v0[3];
    v13 = v0[4];
    v14 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v14 = 136315394;
    v15 = v9(v12, v13);
    v17 = v16;
    v18 = *(v11 + 8);
    v18(v10, v12);
    v19 = sub_1000954E0(v15, v17, &v42);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    v20 = (*(v13 + 64))(v12, v13);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v23 = sub_100021770(v20, AssociatedTypeWitness, AssociatedConformanceWitness);
    v25 = v24;

    v18(v37, v12);
    v26 = sub_1000954E0(v23, v25, &v42);

    *(v14 + 14) = v26;

    _os_log_impl(&_mh_execute_header, v7, v38, "Logged metric %s\n%s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v39 + 8))(v41, v40);
  }

  else
  {
    v27 = v0[13];
    v28 = v0[11];
    v29 = v0[12];
    v31 = v0[8];
    v30 = v0[9];
    v32 = v0[6];
    v33 = v0[3];

    v34 = *(v32 + 8);
    v34(v31, v33);
    v34(v30, v33);
    (*(v29 + 8))(v27, v28);
  }

  v35 = v0[1];

  return v35();
}

uint64_t sub_10002153C()
{
  v24 = v0;
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[2];
  v3 = v0[3];
  (*(v0[12] + 8))(v0[13], v0[11]);
  type metadata accessor for MetricReporter(0);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_1001D0E50();
  v6 = sub_1001D1DE0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[15];
    v9 = v0[6];
    v8 = v0[7];
    v11 = v0[3];
    v10 = v0[4];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315138;
    v14 = v7(v11, v10);
    v16 = v15;
    (*(v9 + 8))(v8, v11);
    v17 = sub_1000954E0(v14, v16, &v23);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to report metric %s", v12, 0xCu);
    sub_100011CF0(v13);
  }

  else
  {
    v19 = v0[6];
    v18 = v0[7];
    v20 = v0[3];

    (*(v19 + 8))(v18, v20);
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_100021770(char *a1, uint64_t a2, uint64_t a3)
{
  v12 = a1;
  v10 = a2;
  v11 = a3;
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = sub_100021948;
  v8[5] = &v9;
  sub_1001CFEE0();
  v3 = sub_1001D1720();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_100020070(sub_100021D10, v8, v3, &type metadata for String, &type metadata for Never, WitnessTable, &protocol witness table for Never, v5);

  sub_100152064(&v12);

  sub_100011AC0(&unk_100230200, &qword_1001D4F80);
  sub_100021D90();
  v6 = sub_1001D1750();

  return v6;
}

uint64_t sub_1000218CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1001D2440();
  v4._countAndFlagsBits = 8250;
  v4._object = 0xE200000000000000;
  sub_1001D18B0(v4);
  v5._countAndFlagsBits = sub_100021950();
  sub_1001D18B0(v5);

  v6._countAndFlagsBits = 10;
  v6._object = 0xE100000000000000;
  sub_1001D18B0(v6);
  return 0;
}

uint64_t sub_100021950()
{
  v1 = v0;
  v2 = sub_1001CFDA0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001CFEE0();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v18 - v11;
  v13 = *(v7 + 16);
  v13(v18 - v11, v1, v6);
  v14 = (*(v7 + 88))(v12, v6);
  if (v14 == enum case for EventValue.string(_:))
  {
    (*(v7 + 96))(v12, v6);
    return *v12;
  }

  else if (v14 == enum case for EventValue.int(_:) || v14 == enum case for EventValue.uint(_:))
  {
    (*(v7 + 96))(v12, v6);
    v18[1] = *v12;
    return sub_1001D23A0();
  }

  else if (v14 == enum case for EventValue.double(_:))
  {
    (*(v7 + 96))(v12, v6);
    return sub_1001D1CA0();
  }

  else if (v14 == enum case for EventValue.BOOL(_:))
  {
    (*(v7 + 96))(v12, v6);
    if (*v12)
    {
      return 1702195828;
    }

    else
    {
      return 0x65736C6166;
    }
  }

  else if (v14 == enum case for EventValue.uuid(_:))
  {
    (*(v7 + 96))(v12, v6);
    (*(v3 + 32))(v5, v12, v2);
    v16 = sub_1001CFD70();
    (*(v3 + 8))(v5, v2);
    return v16;
  }

  else
  {
    v13(v10, v1, v6);
    v17 = sub_1001D1820();
    (*(v7 + 8))(v12, v6);
    return v17;
  }
}

uint64_t sub_100021D10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 32);
  sub_1001CFEE0();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = v5(a1, a1 + *(TupleTypeMetadata2 + 48));
  *a2 = result;
  a2[1] = v8;
  return result;
}

unint64_t sub_100021D90()
{
  result = qword_1002281F0;
  if (!qword_1002281F0)
  {
    sub_100011DF4(&unk_100230200, &qword_1001D4F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002281F0);
  }

  return result;
}

uint64_t sub_100021DF4(uint64_t a1)
{
  v2 = sub_100011AC0(&qword_1002301F0, &qword_1001E2120);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for MetricReporter(uint64_t a1)
{
  result = qword_100228250;
  if (!qword_100228250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100021EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1001D0E60();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100021F7C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1001D0E60();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100022020(uint64_t a1)
{
  result = sub_1001D0E60();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t NodeReceivingSource.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6863746566657270;
  }

  if (a1 == 1)
  {
    return 0x6D726177657270;
  }

  return 0x74736575716572;
}

uint64_t sub_100022104(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6D726177657270;
  if (v2 != 1)
  {
    v3 = 0x74736575716572;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6863746566657270;
  }

  if (v2)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  v6 = 0x6D726177657270;
  if (*a2 != 1)
  {
    v6 = 0x74736575716572;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6863746566657270;
  }

  if (*a2)
  {
    v8 = 0xE700000000000000;
  }

  else
  {
    v8 = 0xE800000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1001D2470();
  }

  return v9 & 1;
}

Swift::Int sub_100022208()
{
  sub_1001D2580();
  sub_1001D1880();

  return sub_1001D25C0();
}

uint64_t sub_1000222AC(uint64_t a1)
{
  sub_1001D1880();
}

Swift::Int sub_10002233C()
{
  sub_1001D2580();
  sub_1001D1880();

  return sub_1001D25C0();
}

unint64_t sub_1000223DC@<X0>(Swift::String *a1@<X0>, privatecloudcomputed::NodeReceivingSource_optional *a2@<X8>)
{
  result = _s20privatecloudcomputed19NodeReceivingSourceO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_10002240C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x6D726177657270;
  if (v2 != 1)
  {
    v4 = 0x74736575716572;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6863746566657270;
  }

  if (!v5)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_10002252C(unint64_t result)
{
  if (__OFADD__(*v2, 1))
  {
    __break(1u);
    goto LABEL_12;
  }

  v1 = v2;
  v3 = result;
  ++*v2;
  i = *(result + 16);
  v8 = v2[1];
  v9 = __OFADD__(v8, i);
  v10 = i + v8;
  if (v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v2[1] = v10;
  if (!i)
  {
    return result;
  }

  v5 = *(result + 32);
  v4 = *(result + 40);

  sub_100011E9C(0, 0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = v2[2];
  v39 = v1[2];
  result = sub_100006028(v5, v4);
  v14 = v12[2];
  v15 = (v13 & 1) == 0;
  v9 = __OFADD__(v14, v15);
  v16 = v14 + v15;
  if (v9)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  LOBYTE(v6) = v13;
  if (v12[3] < v16)
  {
    sub_100009BB8(v16, isUniquelyReferenced_nonNull_native);
    v12 = v39;
    result = sub_100006028(v5, v4);
    if ((v6 & 1) == (v17 & 1))
    {
      goto LABEL_9;
    }

LABEL_7:
    result = sub_1001D24F0();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_13:
    v19 = result;
    sub_10000F4B0();
    result = v19;
    v12 = v39;
    v1[2] = v39;
    if (v6)
    {
      goto LABEL_10;
    }

    goto LABEL_14;
  }

LABEL_9:
  v1[2] = v12;
  if (v6)
  {
LABEL_10:
    v18 = result;

    result = v18;
    goto LABEL_16;
  }

LABEL_14:
  v12[(result >> 6) + 8] |= 1 << result;
  v20 = (v12[6] + 16 * result);
  *v20 = v5;
  v20[1] = v4;
  *(v12[7] + 8 * result) = 0;
  v21 = v12[2];
  v9 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v9)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v12[2] = v22;
LABEL_16:
  v23 = v12[7];
  v24 = *(v23 + 8 * result);
  v9 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v9)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  *(v23 + 8 * result) = v25;
  isUniquelyReferenced_nonNull_native = i - 1;
  if (i != 1)
  {
    for (i = (v3 + 56); ; i += 2)
    {
      v4 = *(i - 1);
      v3 = *i;

      sub_100011E9C(sub_100003EC0, 0);
      v6 = swift_isUniquelyReferenced_nonNull_native();
      v12 = v1[2];
      v39 = v12;
      result = sub_100006028(v4, v3);
      v27 = v12[2];
      v28 = (v26 & 1) == 0;
      v9 = __OFADD__(v27, v28);
      v29 = v27 + v28;
      if (v9)
      {
        goto LABEL_32;
      }

      v5 = v26;
      if (v12[3] < v29)
      {
        break;
      }

      if (v6)
      {
        goto LABEL_24;
      }

      v32 = result;
      sub_10000F4B0();
      result = v32;
      v1[2] = v12;
      if ((v5 & 1) == 0)
      {
LABEL_27:
        v12[(result >> 6) + 8] |= 1 << result;
        v33 = (v12[6] + 16 * result);
        *v33 = v4;
        v33[1] = v3;
        *(v12[7] + 8 * result) = 0;
        v34 = v12[2];
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        v12[2] = v35;
        goto LABEL_29;
      }

LABEL_25:
      v31 = result;

      result = v31;
LABEL_29:
      v36 = v12[7];
      v37 = *(v36 + 8 * result);
      v9 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v9)
      {
        goto LABEL_33;
      }

      *(v36 + 8 * result) = v38;
      if (!--isUniquelyReferenced_nonNull_native)
      {
        return result;
      }
    }

    sub_100009BB8(v29, v6);
    result = sub_100006028(v4, v3);
    if ((v5 & 1) != (v30 & 1))
    {
      goto LABEL_7;
    }

LABEL_24:
    v1[2] = v12;
    if ((v5 & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  return result;
}

uint64_t sub_100022828(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F436863746162 && a2 == 0xEA0000000000746ELL;
  if (v4 || (sub_1001D2470() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756F436C61746F74 && a2 == 0xEA0000000000746ELL || (sub_1001D2470() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001001E3450 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1001D2470();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

Swift::Int sub_100022990(unsigned __int8 a1)
{
  sub_1001D2580();
  sub_1001D2590(a1);
  return sub_1001D25C0();
}

uint64_t sub_1000229D8(char a1)
{
  if (!a1)
  {
    return 0x756F436863746162;
  }

  if (a1 == 1)
  {
    return 0x756F436C61746F74;
  }

  return 0xD000000000000014;
}

Swift::Int sub_100022A60()
{
  sub_1001D2580();
  sub_100022968(v2, *v0);
  return sub_1001D25C0();
}

uint64_t sub_100022AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100022828(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100022AE4@<X0>(_BYTE *a2@<X8>)
{
  result = sub_100025018();
  *a2 = result;
  return result;
}

uint64_t sub_100022B10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_100022B64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_100022BB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14[1] = a3;
  v14[0] = a4;
  type metadata accessor for NodeDistributionAnalyzer.NodeDistribution.CodingKeys(255, a5, a6, a4);
  swift_getWitnessTable();
  v7 = sub_1001D2350();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - v9;
  sub_100024DC8(a1, a1[3]);
  sub_1001D25F0();
  v17 = 0;
  v11 = v14[2];
  sub_1001D2320();
  if (!v11)
  {
    v12 = v14[0];
    v16 = 1;
    sub_1001D2320();
    v14[3] = v12;
    v15 = 2;
    sub_100011AC0(&qword_1002283B8, &qword_1001D4A50);
    sub_100024E0C(qword_1002283C8, &protocol witness table for String, &protocol witness table for Int, &protocol conformance descriptor for <> [A : B]);
    sub_1001D2340();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100022DCC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for NodeDistributionAnalyzer.NodeDistribution.CodingKeys(255, a2, a3, a4);
  WitnessTable = swift_getWitnessTable();
  v7 = sub_1001D22A0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12[-v9];
  sub_1000D4CDC(_swiftEmptyArrayStorage);

  sub_100024DC8(a1, a1[3]);
  sub_1001D25E0();
  if (!v4)
  {
    v12[31] = 0;
    WitnessTable = sub_1001D2270();
    v12[30] = 1;
    sub_1001D2270();
    sub_100011AC0(&qword_1002283B8, &qword_1001D4A50);
    v12[29] = 2;
    sub_100024E0C(&qword_1002283C0, &protocol witness table for String, &protocol witness table for Int, &protocol conformance descriptor for <> [A : B]);
    sub_1001D2290();
    (*(v8 + 8))(v10, v7);
  }

  sub_100011CF0(a1);
  return WitnessTable;
}

uint64_t sub_100023030@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  result = sub_100022DCC(a1, *(a2 + 16), *(a2 + 24), a4);
  if (!v4)
  {
    *a3 = result;
    a3[1] = v7;
    a3[2] = v8;
  }

  return result;
}

uint64_t sub_100023090()
{
  v1[20] = v0;
  v1[21] = *v0;
  v1[22] = *v0;
  v2 = sub_1001CF840();
  v1[23] = v2;
  v1[24] = *(v2 - 8);
  v1[25] = swift_task_alloc();
  v3 = sub_100011AC0(&qword_100227A28, &unk_1001D35E0);
  v1[26] = v3;
  v1[27] = *(v3 - 8);
  v1[28] = swift_task_alloc();
  v4 = sub_100011AC0(&qword_100227A30, &qword_1001D4990);
  v1[29] = v4;
  v1[30] = *(v4 - 8);
  v1[31] = swift_task_alloc();

  return _swift_task_switch(sub_100023270, v0, 0);
}

uint64_t sub_100023270()
{
  v1 = swift_task_alloc();
  *(v0 + 256) = v1;
  *v1 = v0;
  v1[1] = sub_100023318;

  return sub_10002519C();
}

uint64_t sub_100023318(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[33] = a1;
  v5[34] = a2;
  v5[35] = v2;

  v6 = v4[20];
  if (v2)
  {
    v7 = sub_100023E24;
  }

  else
  {
    v7 = sub_100023450;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100023450()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 176);
  *(v0 + 288) = swift_getWitnessTable();
  *(v0 + 296) = *(v2 + 80);
  v3 = *(v2 + 88);
  *(v0 + 312) = 0;
  *(v0 + 320) = _swiftEmptyArrayStorage;
  *(v0 + 304) = v3;
  v4 = *(v0 + 264);
  v5 = *(v0 + 272);
  v6 = *(v0 + 224);
  v7 = *(v0 + 208);
  *(v0 + 368) = 0;
  v8 = sub_1000D4CDC(_swiftEmptyArrayStorage);
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 96) = v8;
  *(v0 + 104) = v4;
  *(v0 + 112) = v5;
  sub_100012038(v4, v5);
  sub_100011D3C();
  sub_1001D1C80();
  sub_1001CF8F0();
  (*(v1 + 8))(v6, v7);
  *(v0 + 369) = 0;
  *(v0 + 328) = _swiftEmptyArrayStorage;
  v9 = sub_100024B78(&qword_100227A50, &qword_100227A30, &qword_1001D4990, &protocol conformance descriptor for AsyncLineSequence<A>.AsyncIterator);
  v10 = swift_task_alloc();
  *(v0 + 336) = v10;
  *v10 = v0;
  v10[1] = sub_10002360C;
  v11 = *(v0 + 232);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 120, v11, v9);
}

uint64_t sub_10002360C()
{
  *(*v1 + 344) = v0;

  swift_getObjectType();
  v3 = sub_1001D1A70();
  if (v0)
  {
    v4 = sub_100023D98;
  }

  else
  {
    v4 = sub_100023768;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100023768()
{
  v1 = *(v0 + 160);
  *(v0 + 352) = *(v0 + 120);
  return _swift_task_switch(sub_10002378C, v1, 0);
}

uint64_t sub_10002378C()
{
  v1 = *(v0 + 360);
  if (v1)
  {
    *(v0 + 136) = *(v0 + 352);
    v3 = *(v0 + 192);
    v2 = *(v0 + 200);
    v4 = *(v0 + 184);
    *(v0 + 144) = v1;
    sub_1001CF830();
    sub_100011EAC();
    v5 = sub_1001D1F20();
    v7 = v6;
    (*(v3 + 8))(v2, v4);

    v8 = v5 == 0x6863746566657270 && v7 == 0xE800000000000000;
    if (v8 || (sub_1001D2470() & 1) != 0)
    {

      v10 = 0;
    }

    else
    {
      v29 = v5 == 0x6D726177657270 && v7 == 0xE700000000000000;
      if (v29 || (sub_1001D2470() & 1) != 0)
      {

        v10 = 1;
      }

      else
      {
        v43 = v5 == 0x74736575716572 && v7 == 0xE700000000000000;
        if (!v43 && (sub_1001D2470() & 1) == 0)
        {
          if (*(v0 + 369) == 1)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v39 = *(v0 + 328);
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v39 = sub_100008F3C(0, *(v39 + 2) + 1, 1, v39);
            }

            v46 = *(v39 + 2);
            v45 = *(v39 + 3);
            if (v46 >= v45 >> 1)
            {
              v39 = sub_100008F3C((v45 > 1), v46 + 1, 1, v39);
            }

            *(v39 + 2) = v46 + 1;
            v47 = &v39[16 * v46];
            *(v47 + 4) = v5;
            *(v47 + 5) = v7;
          }

          else
          {

            v39 = *(v0 + 328);
          }

          goto LABEL_51;
        }

        v10 = 2;
      }
    }

    if (*(v0 + 369) == 1 && *(*(v0 + 328) + 16))
    {
      v11 = *(v0 + 328);
      type metadata accessor for NodeDistributionAnalyzer.NodeDistribution(0, *(v0 + 296), *(v0 + 304), v9);
      sub_10002252C(v11);
    }

    if (v10)
    {
      v12 = 0xE700000000000000;
      if (v10 == 1)
      {
        v13 = 0x6D726177657270;
      }

      else
      {
        v13 = 0x74736575716572;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      v13 = 0x6863746566657270;
    }

    v25 = 0x6D726177657270;
    if (*(v0 + 368) != 1)
    {
      v25 = 0x74736575716572;
    }

    if (*(v0 + 368))
    {
      v26 = v25;
    }

    else
    {
      v26 = 0x6863746566657270;
    }

    if (*(v0 + 368))
    {
      v27 = 0xE700000000000000;
    }

    else
    {
      v27 = 0xE800000000000000;
    }

    if (v13 == v26 && v12 == v27)
    {
      v28 = 1;
    }

    else
    {
      v28 = sub_1001D2470();
    }

LABEL_50:
    *(v0 + 369) = v28 & 1;
    v39 = _swiftEmptyArrayStorage;
LABEL_51:
    *(v0 + 328) = v39;
    v40 = sub_100024B78(&qword_100227A50, &qword_100227A30, &qword_1001D4990, &protocol conformance descriptor for AsyncLineSequence<A>.AsyncIterator);
    v41 = swift_task_alloc();
    *(v0 + 336) = v41;
    *v41 = v0;
    v41[1] = sub_10002360C;
    v42 = *(v0 + 232);

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 120, v42, v40);
  }

  v14 = *(v0 + 369);
  (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
  if (v14 == 1 && *(*(v0 + 328) + 16))
  {
    v16 = *(v0 + 328);
    type metadata accessor for NodeDistributionAnalyzer.NodeDistribution(0, *(v0 + 296), *(v0 + 304), v15);
    sub_10002252C(v16);
  }

  sub_100023FA8(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 368), v0 + 16);

  v17 = *(v0 + 24);
  if (v17)
  {
    v18 = *(v0 + 16);
    *(v0 + 56) = *(v0 + 32);
    *(v0 + 72) = *(v0 + 48);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v0 + 320);
    if ((v19 & 1) == 0)
    {
      v20 = sub_10000914C(0, *(v20 + 2) + 1, 1, *(v0 + 320));
    }

    v22 = *(v20 + 2);
    v21 = *(v20 + 3);
    if (v22 >= v21 >> 1)
    {
      v20 = sub_10000914C((v21 > 1), v22 + 1, 1, v20);
    }

    sub_100011E48(*(v0 + 264), *(v0 + 272));
    *(v20 + 2) = v22 + 1;
    v23 = &v20[40 * v22];
    *(v23 + 4) = v18;
    *(v23 + 5) = v17;
    v24 = *(v0 + 56);
    *(v23 + 8) = *(v0 + 72);
    *(v23 + 3) = v24;
  }

  else
  {
    sub_100011E48(*(v0 + 264), *(v0 + 272));
    v20 = *(v0 + 320);
  }

  v30 = *(v0 + 312) + 1;
  if (*(v0 + 312) != 2)
  {
    *(v0 + 312) = v30;
    *(v0 + 320) = v20;
    v33 = *(v0 + 264);
    v34 = *(v0 + 272);
    v36 = *(v0 + 216);
    v35 = *(v0 + 224);
    v37 = *(v0 + 208);
    *(v0 + 368) = *(&off_10021C688 + v30 + 32);
    v38 = sub_1000D4CDC(_swiftEmptyArrayStorage);
    *(v0 + 80) = 0;
    *(v0 + 88) = 0;
    *(v0 + 96) = v38;
    *(v0 + 104) = v33;
    *(v0 + 112) = v34;
    sub_100012038(v33, v34);
    sub_100011D3C();
    sub_1001D1C80();
    sub_1001CF8F0();
    (*(v36 + 8))(v35, v37);
    v28 = 0;
    goto LABEL_50;
  }

  sub_100011E48(*(v0 + 264), *(v0 + 272));

  v31 = *(v0 + 8);

  return v31(v20);
}

uint64_t sub_100023D98()
{
  *(v0 + 152) = *(v0 + 344);
  sub_100011AC0(&qword_100227A58, &qword_1001D3600);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_100023E24()
{
  swift_errorRetain();
  v1 = sub_1001D0E50();
  v2 = sub_1001D1DE0();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to read from temp file: %@", v3, 0xCu);
    sub_100024B10(v4);
  }

  v6 = *(v0 + 8);

  return v6(_swiftEmptyArrayStorage);
}

void sub_100023FA8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1001D1810();
  __chkstk_darwin(v13 - 8);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1001CFDD0();
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v78 = *(v12 + 80);
  v76 = *(v78 - 8);
  __chkstk_darwin(v17);
  v77 = &v68 - v20;
  v21 = sub_1001CFD60();
  __chkstk_darwin(v21 - 8);
  v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v12 + 136);
  if (a2 < 1 || a1 < 1)
  {
    v32 = sub_1001D0E50();
    v33 = sub_1001D1E00();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v79 = v35;
      *v34 = 136315138;
      if (a4)
      {
        if (a4 == 1)
        {
          v36 = 0x6D726177657270;
        }

        else
        {
          v36 = 0x74736575716572;
        }

        v37 = 0xE700000000000000;
      }

      else
      {
        v36 = 0x6863746566657270;
        v37 = 0xE800000000000000;
      }

      v38 = sub_1000954E0(v36, v37, &v79);

      *(v34 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v32, v33, "Skip generating empty node distribution reports for %s", v34, 0xCu);
      sub_100011CF0(v35);
    }

    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0uLL;
LABEL_40:
    *a5 = v64;
    *(a5 + 8) = v67;
    *(a5 + 24) = v65;
    *(a5 + 32) = v66;
  }

  else
  {
    v70 = v23;
    v71 = v19;
    v72 = v15;
    swift_bridgeObjectRetain_n();
    v75 = v24;
    v25 = sub_1001D0E50();
    v26 = sub_1001D1E00();
    v27 = os_log_type_enabled(v25, v26);
    v74 = a4;
    v73 = v12;
    if (v27)
    {
      v69 = a2;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v79 = v29;
      *v28 = 136315650;
      if (a4)
      {
        if (a4 == 1)
        {
          v30 = 0x6D726177657270;
        }

        else
        {
          v30 = 0x74736575716572;
        }

        v31 = 0xE700000000000000;
      }

      else
      {
        v30 = 0x6863746566657270;
        v31 = 0xE800000000000000;
      }

      v39 = sub_1000954E0(v30, v31, &v79);

      *(v28 + 4) = v39;
      *(v28 + 12) = 2048;

      *(v28 + 14) = a1;

      *(v28 + 22) = 2048;

      v40 = v69;
      *(v28 + 24) = v69;

      _os_log_impl(&_mh_execute_header, v25, v26, "Generating node distribution reports for %s with %ld batches and %ld total nodes", v28, 0x20u);
      sub_100011CF0(v29);
      a2 = v40;
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v41 = sub_1001D1A10();
    *(v41 + 16) = 10;
    *(v41 + 32) = 0u;
    v42 = v41 + 32;
    *(v41 + 48) = 0u;
    *(v41 + 64) = 0u;
    *(v41 + 80) = 0u;
    *(v41 + 96) = 0u;
    v43 = 1 << *(a3 + 32);
    v44 = -1;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    v45 = v44 & *(a3 + 64);
    v46 = (v43 + 63) >> 6;

    v47 = 0;
    if (v45)
    {
      while (1)
      {
        v48 = v47;
LABEL_27:
        v49 = *(*(a3 + 56) + ((v48 << 9) | (8 * __clz(__rbit64(v45))))) / a1 / 0.1;
        if (COERCE__INT64(fabs(v49)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          break;
        }

        if (v49 <= -9.22337204e18)
        {
          goto LABEL_43;
        }

        if (v49 >= 9.22337204e18)
        {
          goto LABEL_44;
        }

        if (v49 >= 9)
        {
          v50 = 9;
        }

        else
        {
          v50 = v49;
        }

        if (v49 < 0)
        {
          goto LABEL_45;
        }

        if (v50 >= *(v41 + 16))
        {
          goto LABEL_46;
        }

        v51 = *(v42 + 8 * v50);
        v52 = __OFADD__(v51, 1);
        v53 = v51 + 1;
        if (v52)
        {
          goto LABEL_47;
        }

        v45 &= v45 - 1;
        *(v42 + 8 * v50) = v53;
        v47 = v48;
        if (!v45)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
LABEL_24:
      while (1)
      {
        v48 = v47 + 1;
        if (__OFADD__(v47, 1))
        {
          break;
        }

        if (v48 >= v46)
        {

          v79 = v41;
          sub_100011AC0(&qword_100228320, &qword_1001D4998);
          sub_100024BD8();
          v54 = sub_1001CF800();
          v56 = v55;

          v57 = v70;
          _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
          v58 = *(v6 + 17);
          v75 = *(v6 + 16);
          v59 = v77;
          v60 = v78;
          (*(v76 + 16))(v77, &v6[*(*v6 + 128)], v78);

          v61 = v71;
          sub_1001CFDC0();
          sub_1001D1800();
          v62 = sub_1001D17F0();
          sub_100015D68(v57, v75, v58, v59, v61, v74, a2, v62, &v79, v63, v60, *(v73 + 88));
          v64 = v79;
          v78 = v80;
          v65 = v81;
          v66 = v82;
          sub_100011E48(v54, v56);
          v67 = v78;
          goto LABEL_40;
        }

        v45 = *(a3 + 64 + 8 * v48);
        ++v47;
        if (v45)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
  }
}

char *sub_1000247D4()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 128));
  v2 = *(*v0 + 136);
  v3 = sub_1001D0E60();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000248CC()
{
  sub_1000247D4();

  return _swift_defaultActor_deallocate(v0);
}

unint64_t _s20privatecloudcomputed19NodeReceivingSourceO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10021C5D0;
  v6._object = a2;
  v4 = sub_1001D21E0(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100024948()
{
  result = qword_100228288;
  if (!qword_100228288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228288);
  }

  return result;
}

uint64_t sub_1000249F8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1001D0E60();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_100024B10(uint64_t a1)
{
  v2 = sub_100011AC0(&unk_1002301D0, &qword_1001D4F50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100024B78(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100011DF4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100024BD8()
{
  result = qword_100228328;
  if (!qword_100228328)
  {
    sub_100011DF4(&qword_100228320, &qword_1001D4998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228328);
  }

  return result;
}

unint64_t sub_100024C54()
{
  result = qword_100228330[0];
  if (!qword_100228330[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100228330);
  }

  return result;
}

uint64_t sub_100024CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_100024D14(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100024D28(uint64_t a1, int a2)
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

uint64_t sub_100024D70(uint64_t result, int a2, int a3)
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

void *sub_100024DC8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100024E0C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100011DF4(&qword_1002283B8, &qword_1001D4A50);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ServerQoS(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ServerQoS(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}