uint64_t sub_100025030(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100025050, 0, 0);
}

uint64_t sub_100025050()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(v2 + OBJC_IVAR____TtC20privatecloudcomputed35NodeDistributionAnalyzerStoreHelper_queue);
  v4 = swift_allocObject();
  v0[4] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;

  v5 = swift_task_alloc();
  v0[5] = v5;
  v5[2] = v3;
  v5[3] = sub_1000268AC;
  v5[4] = v4;
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_100013E08;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, 0, 0, 0xD000000000000024, 0x80000001001E3340, sub_10001582C, v5, &type metadata for () + 8);
}

uint64_t sub_1000251BC()
{
  v1 = v0[4];
  v2 = *(v1 + OBJC_IVAR____TtC20privatecloudcomputed35NodeDistributionAnalyzerStoreHelper_queue);

  v3 = swift_task_alloc();
  v0[5] = v3;
  v3[2] = v2;
  v3[3] = sub_100026850;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_100014658;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000024, 0x80000001001E3340, sub_100015628, v3, &type metadata for Data);
}

uint64_t sub_1000252DC(char *a1)
{
  v2 = v1;
  v44 = a1;
  v3 = sub_1001CFA40();
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v38 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001CFB10();
  v42 = *(v5 - 8);
  v43 = v5;
  __chkstk_darwin(v5);
  v41 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1001D1E30();
  v7 = *(v37 - 8);
  __chkstk_darwin(v37);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001D1EB0();
  __chkstk_darwin(v10);
  v11 = sub_1001D1410();
  __chkstk_darwin(v11 - 8);
  v12 = sub_1001D02F0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v15, enum case for TC2LogCategory.metricReporter(_:), v12);
  sub_1001D08B0();
  (*(v13 + 8))(v15, v12);
  v36 = OBJC_IVAR____TtC20privatecloudcomputed35NodeDistributionAnalyzerStoreHelper_queue;
  v35 = sub_100015A10(0, &qword_100227DC0, OS_dispatch_queue_serial_ptr);
  if (qword_100227960 != -1)
  {
    swift_once();
  }

  v16 = blockingIOQueue;
  sub_1001D1400();
  v45[0] = _swiftEmptyArrayStorage;
  sub_100026B54(&qword_100227DC8, 255, &type metadata accessor for OS_dispatch_queue_serial.Attributes, &protocol conformance descriptor for OS_dispatch_queue_serial.Attributes);
  sub_100011AC0(&qword_100227DD0, &unk_1001D3AE0);
  sub_100026B9C();
  sub_1001D1FA0();
  (*(v7 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v37);
  *(v1 + v36) = sub_1001D1EC0();
  v45[0] = 0xD000000000000011;
  v45[1] = 0x80000001001E3510;
  v18 = v38;
  v17 = v39;
  v19 = v40;
  (*(v39 + 104))(v38, enum case for URL.DirectoryHint.inferFromPath(_:), v40);
  sub_100011EAC();
  v20 = v41;
  v21 = v44;
  sub_1001CFB00();
  (*(v17 + 8))(v18, v19);
  v22 = v42;
  v23 = v43;
  (*(v42 + 32))(v1 + OBJC_IVAR____TtC20privatecloudcomputed35NodeDistributionAnalyzerStoreHelper_storeURL, v20, v43);
  v24 = v1 + OBJC_IVAR____TtC20privatecloudcomputed35NodeDistributionAnalyzerStoreHelper_fileHandle;
  *v24 = 0;
  *(v24 + 8) = 0;

  v25 = sub_1001D0E50();
  v26 = sub_1001D1DD0();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v45[0] = v28;
    *v27 = 136315138;
    (*(v22 + 16))(v20, v1 + OBJC_IVAR____TtC20privatecloudcomputed35NodeDistributionAnalyzerStoreHelper_storeURL, v23);
    sub_100026B54(&qword_1002302F0, 255, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v29 = sub_1001D23A0();
    v31 = v30;
    v32 = *(v22 + 8);
    v32(v20, v23);
    v33 = sub_1000954E0(v29, v31, v45);

    *(v27 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v25, v26, "initialized nodedistributionanalyzerstore, file=%s", v27, 0xCu);
    sub_100011CF0(v28);

    v32(v44, v23);
  }

  else
  {

    (*(v22 + 8))(v21, v23);
  }

  return v2;
}

uint64_t sub_1000259A4()
{
  v1 = v0 + OBJC_IVAR____TtC20privatecloudcomputed35NodeDistributionAnalyzerStoreHelper_fileHandle;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC20privatecloudcomputed35NodeDistributionAnalyzerStoreHelper_fileHandle));
  sub_100013944((v1 + 8));
  os_unfair_lock_unlock(v1);
  v2 = OBJC_IVAR____TtC20privatecloudcomputed35NodeDistributionAnalyzerStoreHelper_storeURL;
  v3 = sub_1001CFB10();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  sub_1000159A8(v1 + 8);
  v4 = OBJC_IVAR____TtC20privatecloudcomputed35NodeDistributionAnalyzerStoreHelper_logger;
  v5 = sub_1001D0E60();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  return swift_deallocClassInstance();
}

uint64_t sub_100025AF8(uint64_t a1)
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

void sub_100025BD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1001CFB10();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1 + OBJC_IVAR____TtC20privatecloudcomputed35NodeDistributionAnalyzerStoreHelper_fileHandle;
  os_unfair_lock_lock((a1 + OBJC_IVAR____TtC20privatecloudcomputed35NodeDistributionAnalyzerStoreHelper_fileHandle));
  v11 = *(v10 + 8);
  if (!v11)
  {
    v27 = a2;
    v19 = [objc_opt_self() defaultManager];
    *&v28 = OBJC_IVAR____TtC20privatecloudcomputed35NodeDistributionAnalyzerStoreHelper_storeURL;
    sub_1001CFAC0(1);
    v20 = v10;
    v21 = sub_1001D17A0();

    [v19 createFileAtPath:v21 contents:0 attributes:0];

    v10 = v20;
    sub_100015A10(0, &qword_100227DA0, NSFileHandle_ptr);
    (*(v7 + 16))(v9, a1 + v28, v6);
    v22 = sub_1000143C0(v9);
    if (v2)
    {
      goto LABEL_10;
    }

    v11 = v22;
    sub_1001D1DA0();
    v3 = 0;

    *(v20 + 8) = v11;
    a2 = v27;
  }

  _s27FileHandle_UTF8OutputStreamCMa();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v29 = v12;
  v13 = *(a2 + 16);
  if (v13)
  {
    v26 = v10;
    v27 = v3;
    v25 = v11;
    v14 = (a2 + 40);
    v28 = xmmword_1001D39F0;
    do
    {
      v15 = *(v14 - 1);
      v16 = *v14;
      sub_100011AC0(&qword_100227DA8, &unk_1001D3AD0);
      v17 = swift_allocObject();
      *(v17 + 16) = v28;
      *(v17 + 56) = &type metadata for String;
      *(v17 + 32) = v15;
      *(v17 + 40) = v16;
      sub_100026B54(&qword_100227DB0, v18, _s27FileHandle_UTF8OutputStreamCMa, &unk_1001D4BEC);

      sub_1001D2560();

      v14 += 2;
      --v13;
    }

    while (v13);

    v10 = v26;
  }

  else
  {
    v23 = v11;
  }

LABEL_10:
  os_unfair_lock_unlock(v10);
}

void sub_100025EF4(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1 + OBJC_IVAR____TtC20privatecloudcomputed35NodeDistributionAnalyzerStoreHelper_fileHandle;
  os_unfair_lock_lock((a1 + OBJC_IVAR____TtC20privatecloudcomputed35NodeDistributionAnalyzerStoreHelper_fileHandle));
  sub_100025F74((v3 + 8), &v4, a2);
  os_unfair_lock_unlock(v3);
}

void sub_100025F74(void **a1@<X0>, uint64_t *a2@<X2>, _OWORD *a3@<X8>)
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

uint64_t sub_1000263C4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1000263E4, 0, 0);
}

uint64_t sub_1000263E4()
{
  v1 = *(v0 + 16);
  v2 = sub_1001CFC40();
  *v1 = v2.value;
  v1[1] = v2.is_nil;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100026454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_100026478, 0, 0);
}

uint64_t sub_100026478()
{
  v1 = *(v0 + 24);
  *(v0 + 48) = sub_1001CFC40();
  if (v1)
  {
    swift_getObjectType();
    v2 = sub_1001D1A70();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  return _swift_task_switch(sub_100026510, v2, v4);
}

uint64_t sub_100026510()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  *v2 = v1;
  v2[1] = HIBYTE(v1) & 1;
  return (*(v0 + 8))();
}

uint64_t sub_10002653C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1001CFC50();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001CFC60();
  return (*(v3 + 32))(a1, v5, v2);
}

uint64_t sub_10002663C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000266A0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1001D1810();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001D1800();
  v6 = sub_1001D17E0();
  v8 = v7;
  result = (*(v3 + 8))(v5, v2);
  if (v8 >> 60 != 15)
  {
    v10[2] = v6;
    v10[3] = v8;
    sub_1000267E8();
    sub_1001D1D90();
    return sub_10002683C(v6, v8);
  }

  return result;
}

unint64_t sub_1000267E8()
{
  result = qword_1002285D0;
  if (!qword_1002285D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002285D0);
  }

  return result;
}

uint64_t sub_10002683C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100011E48(result, a2);
  }

  return result;
}

uint64_t sub_10002686C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000268C8(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v2 = sub_1001CFA40();
  v22 = v2;
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001CFB10();
  v24 = *(v6 - 8);
  v25 = v6;
  v7 = __chkstk_darwin(v6);
  v23 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v21 - v9;
  v27 = 0xD000000000000011;
  v28 = 0x80000001001E3510;
  v11 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v12 = *(v3 + 104);
  v12(v5, enum case for URL.DirectoryHint.inferFromPath(_:), v2);
  sub_100011EAC();
  sub_1001CFB00();
  v13 = *(v3 + 8);
  v14 = v22;
  v13(v5, v22);
  v27 = 0xD000000000000011;
  v28 = 0x80000001001E3510;
  v12(v5, v11, v14);
  v15 = v23;
  sub_1001CFB00();
  v13(v5, v14);
  v16 = v15;
  sub_10014D240(v10, v15);
  v17 = *(v24 + 8);
  v18 = v16;
  v19 = v25;
  v17(v18, v25);
  return (v17)(v10, v19);
}

uint64_t sub_100026B54(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_100026B9C()
{
  result = qword_100227DD8;
  if (!qword_100227DD8)
  {
    sub_100011DF4(&qword_100227DD0, &unk_1001D3AE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227DD8);
  }

  return result;
}

uint64_t sub_100026C00(uint64_t a1)
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

uint64_t sub_100026C1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100026C70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_100026D38(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100026D90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001CFC50();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100026E10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001CFC50();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100026E80(uint64_t a1)
{
  result = sub_1001CFC50();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100026EEC(uint64_t a1)
{
  sub_1001D0E60();
  if (v1 <= 0x3F)
  {
    sub_100012FF8(319);
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_100026FC4()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for ThimbledEvent(0);
  v1[4] = swift_task_alloc();
  v2 = sub_100011AC0(&qword_100227C90, qword_1001D39D0);
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000270C0, 0, 0);
}

uint64_t sub_1000270C0(uint64_t a1)
{
  v2 = sub_1001D0E50();
  v3 = sub_1001D1E00();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Running nodeDistributionReport activity", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v1 + 64) = v5;
  *v5 = v1;
  v5[1] = sub_1000271E0;

  return sub_100023090();
}

uint64_t sub_1000271E0(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return _swift_task_switch(sub_1000272E0, 0, 0);
}

uint64_t sub_1000272E0()
{
  v1 = v0[9];
  v2 = *(v1 + 16);
  if (v2)
  {
    v16 = v0[4];
    v15 = (v0[6] + 8);
    v14 = sub_1000276F8();
    v3 = (v1 + 64);
    do
    {
      v4 = v0[4];
      v17 = v0[7];
      v18 = v0[5];
      v5 = *(v3 - 4);
      v6 = *(v3 - 3);
      v7 = *(v3 - 2);
      v8 = *(v3 - 1);
      v9 = *v3;
      v3 += 5;
      *(v16 + 24) = &type metadata for AttestationDistributionMetric;
      *(v16 + 32) = v14;
      v10 = swift_allocObject();
      *v4 = v10;
      v10[2] = v5;
      v10[3] = v6;
      v10[4] = v7;
      v10[5] = v8;
      v10[6] = v9;
      swift_storeEnumTagMultiPayload();

      sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
      sub_1001D1BC0();
      (*v15)(v17, v18);
      --v2;
    }

    while (v2);
  }

  v11 = v0[2];

  sub_100027490(v11);

  v12 = v0[1];

  return v12();
}

void sub_100027490(uint64_t a1)
{
  oslog = sub_1001D0E50();
  v1 = sub_1001D1E00();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Finished nodeDistributionReport activity", v2, 2u);
  }
}

uint64_t sub_10002753C()
{
  v1 = qword_100242D60;
  v2 = sub_1001D0E60();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = qword_100242D68;
  v4 = sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t sub_1000275F8()
{
  sub_10002753C();

  return swift_deallocClassInstance();
}

uint64_t sub_100027668()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000130E0;

  return sub_100026FC4();
}

unint64_t sub_1000276F8()
{
  result = qword_1002286F0;
  if (!qword_1002286F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002286F0);
  }

  return result;
}

uint64_t sub_10002774C()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100027794()
{
  v0 = sub_1001D02F0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1001D0E60();
  sub_10003B610(v4, qword_1002286F8);
  sub_10003A37C(v4, qword_1002286F8);
  (*(v1 + 104))(v3, enum case for TC2LogCategory.attestationStore(_:), v0);
  sub_1001D08B0();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1000278B4(uint64_t a1, uint64_t a2, int a3, void *a4, char *a5)
{
  v123 = a4;
  LODWORD(v121) = a3;
  v115 = a2;
  v119 = *v5;
  v8 = sub_1001CFD60();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v113 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v122 = &v93 - v13;
  __chkstk_darwin(v12);
  v15 = &v93 - v14;
  v16 = type metadata accessor for ValidatedAttestation(0);
  v17 = __chkstk_darwin(v16);
  v19 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = (&v93 - v20);
  if (qword_1002276A0 != -1)
  {
    swift_once();
  }

  v22 = sub_1001D0E60();
  v23 = sub_10003A37C(v22, qword_1002286F8);
  sub_10003C450(a1, v21);
  v116 = *(v9 + 16);
  v117 = v9 + 16;
  v116(v15, a5, v8);
  sub_10003C450(a1, v19);
  v24 = sub_1001D0E50();
  LODWORD(v120) = sub_1001D1E00();
  v25 = os_log_type_enabled(v24, v120);
  v112 = a5;
  v114 = v9;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v118 = v23;
    v110 = v27;
    v124 = v27;
    *v26 = 136316162;
    v111 = v16;
    v28 = *v21;
    v29 = v21[1];

    sub_10003C4B4(v21);
    v30 = sub_1000954E0(v28, v29, &v124);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2048;
    *(v26 + 14) = v123;
    *(v26 + 22) = 1024;
    *(v26 + 24) = v121 & 1;
    *(v26 + 28) = 2080;
    sub_10003E3A8(&qword_100227A40, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v31 = sub_1001D23A0();
    v33 = v32;
    v34 = v15;
    v35 = v8;
    (*(v9 + 8))(v34, v8);
    v36 = sub_1000954E0(v31, v33, &v124);

    *(v26 + 30) = v36;
    *(v26 + 38) = 2080;
    v16 = v111;
    v37 = *(v19 + 4);
    v38 = *(v19 + 5);

    sub_10003C4B4(v19);
    v39 = sub_1000954E0(v37, v38, &v124);

    *(v26 + 40) = v39;
    _os_log_impl(&_mh_execute_header, v24, v120, "saveValidatedAttestation: %s batch: %lu prefetched: %{BOOL}d fetchTime: %s cloudOSVersion: %s", v26, 0x30u);
    swift_arrayDestroy();
    v23 = v118;
  }

  else
  {

    sub_10003C4B4(v19);
    v40 = v15;
    v35 = v8;
    (*(v9 + 8))(v40, v8);
    sub_10003C4B4(v21);
  }

  v41 = (a1 + v16[8]);
  v42 = v41[1];
  if (!v42)
  {
    v46 = sub_1001D0E50();
    v47 = sub_1001D1DE0();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      v49 = "missing validatedAttestation.udid";
      goto LABEL_15;
    }

LABEL_16:

    return 0;
  }

  v43 = (a1 + v16[9]);
  v44 = v43[1];
  if (!v44)
  {
    v46 = sub_1001D0E50();
    v47 = sub_1001D1DE0();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      v49 = "missing validatedAttestation.validatedCellID";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v45 = *(a1 + 24);
  if (v45 >> 60 == 15)
  {
    v46 = sub_1001D0E50();
    v47 = sub_1001D1DE0();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      v49 = "missing validatedAttestation.attestation.attestationBundle";
LABEL_15:
      _os_log_impl(&_mh_execute_header, v46, v47, v49, v48, 2u);

      goto LABEL_16;
    }

    goto LABEL_16;
  }

  v118 = v23;
  v51 = *v41;
  v104 = *v43;
  v93 = *(a1 + 96);
  v52 = *a1;
  v53 = *(a1 + 16);
  v94 = *(a1 + 8);
  v54 = (a1 + v16[7]);
  v109 = v35;
  v95 = v44;
  v116(v122, v54, v35);
  v55 = *(a1 + 112);
  v97 = *(a1 + 104);
  v96 = v55;
  v56 = *(a1 + 40);
  v99 = *(a1 + 32);
  v98 = v56;
  v57 = *(a1 + 56);
  v102 = *(a1 + 48);
  v101 = v57;
  v58 = *(a1 + 88);
  v107 = *(a1 + 80);
  v106 = v58;
  v59 = _s8SchemaV2O4NodeCMa(0);
  v60 = swift_allocObject();
  *(v60 + 48) = sub_100011AC0(&qword_100228A80, &qword_1001D5208);
  v103 = _s8SchemaV2O4NodeCMa;
  v61 = sub_10003E3A8(&qword_1002289D8, 255, _s8SchemaV2O4NodeCMa, &unk_1001D5D28);
  v124 = v59;
  v125 = v59;
  v126 = v61;
  v127 = v61;
  *(v60 + 56) = swift_getOpaqueTypeConformance2();
  sub_10003B47C((v60 + 24));
  v111 = v53;
  sub_100012038(v53, v45);
  sub_100012038(v53, v45);
  v105 = v61;
  sub_1001D1570();
  *(v60 + 16) = 257;
  v100 = OBJC_IVAR____TtCOC20privatecloudcomputed16AttestationStore8SchemaV24Node___observationRegistrar;
  sub_1001CFEA0();
  v120 = v45;
  sub_100024DC8((v60 + 24), *(v60 + 48));
  swift_getKeyPath();
  v108 = v51;
  v124 = v51;
  v125 = v42;
  v110 = v42;
  sub_1001D1480();

  sub_100024DC8((v60 + 24), *(v60 + 48));
  swift_getKeyPath();
  v124 = v93;
  LOBYTE(v125) = 0;
  sub_100011AC0(&qword_100228A88, &qword_1001E1CA0);
  sub_10003C518();
  sub_1001D1480();

  *(v60 + 16) = 0;
  sub_100024DC8((v60 + 24), *(v60 + 48));
  swift_getKeyPath();
  v124 = v52;
  v125 = v94;
  sub_1001D1480();

  sub_100024DC8((v60 + 24), *(v60 + 48));
  swift_getKeyPath();
  v62 = v111;
  v63 = v120;
  v124 = v111;
  v125 = v120;
  sub_100012038(v111, v120);
  sub_10003C5C0();
  sub_1001D1480();

  sub_10002683C(v62, v63);
  v64 = v113;
  v65 = v109;
  v116(v113, v122, v109);
  sub_100024DC8((v60 + 24), *(v60 + 48));
  swift_getKeyPath();
  sub_10003E3A8(&qword_100228918, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1001D1480();

  v66 = *(v114 + 8);
  v66(v64, v65);
  sub_100024DC8((v60 + 24), *(v60 + 48));
  swift_getKeyPath();
  v124 = v97;
  v125 = v96;
  sub_1001D1480();

  sub_100024DC8((v60 + 24), *(v60 + 48));
  swift_getKeyPath();
  v124 = v99;
  v125 = v98;
  sub_1001D1480();

  sub_100024DC8((v60 + 24), *(v60 + 48));
  swift_getKeyPath();
  v124 = v102;
  v125 = v101;
  sub_1001D1480();

  sub_100024DC8((v60 + 24), *(v60 + 48));
  swift_getKeyPath();
  v124 = v104;
  v125 = v95;
  sub_1001D1480();

  v124 = v60;
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  v68 = v107;
  *(&v93 - 4) = v60;
  *(&v93 - 3) = v68;
  *(&v93 - 2) = v106;
  sub_10003E3A8(&qword_100228A68, 255, v103, &unk_1001D5D0C);
  sub_1001CFE80();

  sub_10002683C(v111, v120);
  v66(v122, v109);
  v70 = sub_10003E3A8(&qword_1002287C0, v69, type metadata accessor for AttestationStore, &unk_1001D4E94);
  sub_1001D1490();
  sub_1001D1500();

  v71 = v115;
  v72 = v123;
  v73 = sub_100028A90(v115, v123);
  if (v73)
  {
    v74 = v73;
    v122 = v70;
    v75 = OBJC_IVAR____TtCOC20privatecloudcomputed16AttestationStore8SchemaV28Workload___observationRegistrar;
    v124 = v73;
    swift_getKeyPath();
    v76 = sub_10003E3A8(&qword_1002287E8, 255, _s8SchemaV2O8WorkloadCMa, &unk_1001D5D98);
    v123 = v75;
    v121 = v76;
    sub_1001CFE90();

    swift_getKeyPath();
    sub_10003E3A8(&qword_1002287E0, 255, _s8SchemaV2O8WorkloadCMa, &unk_1001D5DB4);
    sub_10003AC1C();
    sub_1001D15B0();

    v78 = v124;
    v79 = v110;
    v124 = v108;
    v125 = v110;
    __chkstk_darwin(v77);
    *(&v93 - 2) = &v124;
    v80 = sub_10003AAB4(sub_10003E440, (&v93 - 4), v78);

    if (v80)
    {
    }

    else
    {
      v124 = v74;
      swift_getKeyPath();

      sub_1001CFE90();

      swift_getKeyPath();
      sub_1001D15B0();

      v88 = v124;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v88 = sub_100008F3C(0, *(v88 + 2) + 1, 1, v88);
      }

      v90 = *(v88 + 2);
      v89 = *(v88 + 3);
      if (v90 >= v89 >> 1)
      {
        v88 = sub_100008F3C((v89 > 1), v90 + 1, 1, v88);
      }

      *(v88 + 2) = v90 + 1;
      v91 = &v88[16 * v90];
      *(v91 + 4) = v108;
      *(v91 + 5) = v79;
      v124 = v74;
      v92 = swift_getKeyPath();
      __chkstk_darwin(v92);
      *(&v93 - 2) = v74;
      *(&v93 - 1) = v88;
      sub_1001CFE80();
    }
  }

  else
  {
    v81 = v108;
    v82 = v110;

    v83 = sub_1001D0E50();
    v84 = sub_1001D1E00();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v122 = v70;
      v87 = v86;
      v124 = v86;
      *v85 = 136315138;
      *(v85 + 4) = sub_1000954E0(v81, v110, &v124);
      _os_log_impl(&_mh_execute_header, v83, v84, "Linking %s to ...", v85, 0xCu);
      sub_100011CF0(v87);

      v82 = v110;
    }

    sub_100029120(v71, v81, v82, v121 & 1, v72, v112);
  }

  sub_1001D1490();
  sub_1001D14D0();
  sub_10002683C(v111, v120);

  return 1;
}

uint64_t sub_100028A90(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v38 = v2;
  v36 = a2;
  v37 = v3;
  v4 = sub_100011AC0(&qword_1002287C8, &qword_1001D4F38);
  __chkstk_darwin(v4 - 8);
  v6 = &v33 - v5;
  v7 = sub_100011AC0(&qword_1002287D0, &qword_1001D4F40);
  v39 = *(v7 - 8);
  v40 = v7;
  __chkstk_darwin(v7);
  v9 = &v33 - v8;
  v10 = sub_100011AC0(&qword_1002287D8, &qword_1001D4F48);
  v42 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v41 = &v33 - v12;
  v13 = sub_1000969BC(v11);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  if (qword_1002276A0 != -1)
  {
    swift_once();
  }

  v20 = sub_1001D0E60();
  v21 = sub_10003A37C(v20, qword_1002286F8);

  v35 = v21;
  v22 = sub_1001D0E50();
  v23 = sub_1001D1E00();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v34 = v10;
    v25 = v24;
    v43 = swift_slowAlloc();
    *v25 = 136315394;
    *(v25 + 4) = sub_1000954E0(v13, v15, &v43);
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_1000954E0(v17, v19, &v43);
    _os_log_impl(&_mh_execute_header, v22, v23, "fetchParamsEntry workloadType=%s inferenceId=%s", v25, 0x16u);
    swift_arrayDestroy();

    v10 = v34;
  }

  __chkstk_darwin(v26);
  *(&v33 - 6) = v13;
  *(&v33 - 5) = v15;
  *(&v33 - 4) = v17;
  *(&v33 - 3) = v19;
  *(&v33 - 2) = v36;
  v43 = _s8SchemaV2O8WorkloadCMa(0);
  v27 = v41;
  sub_1001CFE70();

  sub_10003E3A8(&qword_1002287C0, v28, type metadata accessor for AttestationStore, &unk_1001D4E94);
  sub_1001D1490();
  v29 = v42;
  (*(v42 + 16))(v6, v27, v10);
  (*(v29 + 56))(v6, 0, 1, v10);
  sub_10003E3A8(&qword_1002287E0, 255, _s8SchemaV2O8WorkloadCMa, &unk_1001D5DB4);
  sub_1001D1560();
  v30 = sub_1001D14E0();
  (*(v39 + 8))(v9, v40);

  if (v30 >> 62)
  {
    result = sub_1001D2190();
    if (result)
    {
      goto LABEL_7;
    }

LABEL_12:
    (*(v29 + 8))(v27, v10);

    return 0;
  }

  result = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v30 & 0xC000000000000001) != 0)
  {
    v32 = sub_1001D2040();
    goto LABEL_10;
  }

  if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v32 = *(v30 + 32);

LABEL_10:

    (*(v29 + 8))(v27, v10);
    return v32;
  }

  __break(1u);
  return result;
}

uint64_t sub_100029120(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5, char *a6)
{
  v48 = a3;
  v49 = a5;
  v45 = a4;
  v47 = a2;
  v51 = v6;
  v50 = *v6;
  v8 = sub_1001CFD60();
  v53 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v46 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v38 - v12;
  v15 = sub_1000969BC(v11);
  v17 = v16;
  v19 = v18;
  if (qword_1002276A0 != -1)
  {
    v37 = v14;
    swift_once();
    v14 = v37;
  }

  v20 = v14;
  v21 = sub_1001D0E60();
  sub_10003A37C(v21, qword_1002286F8);

  v22 = sub_1001D0E50();
  v23 = sub_1001D1E00();

  v24 = os_log_type_enabled(v22, v23);
  v39 = v15;
  v40 = v20;
  v38 = v19;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v54 = a6;
    v26 = v25;
    v55 = swift_slowAlloc();
    *v26 = 136315394;
    *(v26 + 4) = sub_1000954E0(v15, v17, &v55);
    *(v26 + 12) = 2080;
    *(v26 + 14) = sub_1000954E0(v20, v19, &v55);
    _os_log_impl(&_mh_execute_header, v22, v23, "createNewParamsEntry workloadType=%s inferenceId=%s", v26, 0x16u);
    swift_arrayDestroy();

    a6 = v54;
  }

  v43 = *(v53 + 16);
  v43(v13, a6, v8);
  v27 = _s8SchemaV2O8WorkloadCMa(0);
  v28 = swift_allocObject();
  *(v28 + 48) = sub_100011AC0(&qword_100228958, &qword_1001D5098);
  v29 = sub_10003E3A8(&qword_1002287E0, 255, _s8SchemaV2O8WorkloadCMa, &unk_1001D5DB4);
  v55 = v27;
  v56 = v27;
  v57 = v29;
  v58 = v29;
  v52 = v8;
  *(v28 + 56) = swift_getOpaqueTypeConformance2();
  sub_10003B47C((v28 + 24));
  v44 = v29;
  sub_1001D1570();
  v54 = v13;
  sub_100024DC8((v28 + 24), *(v28 + 48));
  swift_getKeyPath();
  v55 = _swiftEmptyArrayStorage;
  v42 = sub_100011AC0(&unk_100230200, &qword_1001D4F80);
  v41 = sub_10003B674();
  sub_1001D1480();

  *(v28 + 16) = 1;
  sub_1001CFEA0();
  sub_100024DC8((v28 + 24), *(v28 + 48));
  swift_getKeyPath();
  v55 = v39;
  v56 = v17;
  sub_1001D1480();

  sub_100024DC8((v28 + 24), *(v28 + 48));
  swift_getKeyPath();
  v55 = v40;
  v56 = v38;
  sub_1001D1480();

  sub_100024DC8((v28 + 24), *(v28 + 48));
  swift_getKeyPath();
  v55 = 0;
  v56 = 0xE000000000000000;
  sub_1001D1480();

  sub_100024DC8((v28 + 24), *(v28 + 48));
  swift_getKeyPath();
  v55 = 0;
  v56 = 0xE000000000000000;
  sub_1001D1480();

  sub_100024DC8((v28 + 24), *(v28 + 48));
  swift_getKeyPath();
  LOBYTE(v55) = v45 & 1;
  sub_1001D1480();

  v30 = v46;
  v31 = v52;
  v43(v46, v54, v52);
  sub_100024DC8((v28 + 24), *(v28 + 48));
  swift_getKeyPath();
  sub_10003E3A8(&qword_100228918, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1001D1480();

  v32 = *(v53 + 8);
  v32(v30, v31);
  sub_100011AC0(&unk_100230270, &unk_1001D3610);
  v33 = swift_allocObject();
  *(v33 + 1) = xmmword_1001D39F0;
  v34 = v48;
  v33[4] = v47;
  v33[5] = v34;
  sub_100024DC8((v28 + 24), *(v28 + 48));
  swift_getKeyPath();
  v55 = v33;

  sub_1001D1480();

  sub_100024DC8((v28 + 24), *(v28 + 48));
  swift_getKeyPath();
  v55 = v49;
  sub_1001D1480();

  v32(v54, v52);
  sub_10003E3A8(&qword_1002287C0, v35, type metadata accessor for AttestationStore, &unk_1001D4E94);
  sub_1001D1490();
  sub_1001D1500();
}

unint64_t sub_1000298F8()
{
  v1 = *v0;
  v102 = type metadata accessor for ValidatedAttestation(0);
  v100 = *(v102 - 8);
  __chkstk_darwin(v102);
  v98 = &v74 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100011AC0(&qword_100227E00, &unk_1001D3B20);
  v4 = __chkstk_darwin(v3 - 8);
  v97 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v101 = &v74 - v6;
  v7 = sub_100011AC0(&qword_1002289C0, &qword_1001D5168);
  __chkstk_darwin(v7 - 8);
  v77 = &v74 - v8;
  v90 = sub_100011AC0(&qword_1002289C8, &qword_1001D5170);
  v99 = *(v90 - 8);
  __chkstk_darwin(v90);
  v80 = &v74 - v9;
  v92 = sub_100011AC0(&qword_1002289D0, &qword_1001D5178);
  v96 = *(v92 - 8);
  __chkstk_darwin(v92);
  v91 = &v74 - v10;
  v11 = sub_100011AC0(&qword_1002287C8, &qword_1001D4F38);
  __chkstk_darwin(v11 - 8);
  v13 = &v74 - v12;
  v14 = sub_100011AC0(&qword_1002287D0, &qword_1001D4F40);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v74 - v16;
  v106 = sub_1000D62D4(_swiftEmptyArrayStorage);
  v19 = sub_10003E3A8(&qword_1002287C0, v18, type metadata accessor for AttestationStore, &unk_1001D4E94);
  v78 = v1;
  v79 = v0;
  sub_1001D1490();
  v20 = sub_100011AC0(&qword_1002287D8, &qword_1001D4F48);
  (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
  _s8SchemaV2O8WorkloadCMa(0);
  v21 = sub_10003E3A8(&qword_1002287E0, 255, _s8SchemaV2O8WorkloadCMa, &unk_1001D5DB4);
  sub_1001D1560();
  v22 = sub_1001D14E0();
  v30 = v100;
  v88 = v21;
  v89 = v19;
  v95 = 0;
  v31 = v22;
  (*(v15 + 8))(v17, v14);

  v81 = v31;
  if (v31 >> 62)
  {
    v33 = sub_1001D2190();
  }

  else
  {
    v33 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v34 = v77;
  v35 = v80;
  v36 = v91;
  v37 = v92;
  if (v33)
  {
    v38 = 0;
    v87 = v81 & 0xC000000000000001;
    v76 = v81 & 0xFFFFFFFFFFFFFF8;
    v75 = v81 + 32;
    v86 = (v96 + 16);
    v85 = (v96 + 56);
    v84 = (v99 + 8);
    v100 = v30 + 6;
    v82 = (v96 + 8);
    *&v32 = 138412290;
    v74 = v32;
    v83 = v33;
    if ((v81 & 0xC000000000000001) == 0)
    {
      goto LABEL_12;
    }

LABEL_9:
    v39 = v38;
    v96 = sub_1001D2040();
    v40 = __OFADD__(v39, 1);
    v41 = v39 + 1;
    if (!v40)
    {
      while (1)
      {
        v94 = v41;
        v103 = v96;
        swift_getKeyPath();
        v43 = v36;
        sub_10003E3A8(&qword_1002287E8, 255, _s8SchemaV2O8WorkloadCMa, &unk_1001D5D98);
        sub_1001CFE90();

        swift_getKeyPath();
        sub_10003AC1C();
        sub_1001D15B0();

        v93 = &v74;
        v45 = v103;
        __chkstk_darwin(v44);
        *(&v74 - 2) = v45;
        v105 = _s8SchemaV2O4NodeCMa(0);
        sub_1001CFE70();

        sub_1001D1490();
        (*v86)(v34, v43, v37);
        (*v85)(v34, 0, 1, v37);
        v46 = sub_10003E3A8(&qword_1002289D8, 255, _s8SchemaV2O4NodeCMa, &unk_1001D5D28);
        sub_1001D1560();
        v47 = v95;
        v48 = sub_1001D14E0();
        v49 = v35;
        if (!v47)
        {
          break;
        }

        (*v84)(v35, v90);

        if (qword_1002276A0 != -1)
        {
          swift_once();
        }

        v50 = sub_1001D0E60();
        sub_10003A37C(v50, qword_1002286F8);
        swift_errorRetain();
        v51 = sub_1001D0E50();
        v52 = sub_1001D1DE0();

        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          *v53 = v74;
          swift_errorRetain();
          v55 = _swift_stdlib_bridgeErrorToNSError();
          *(v53 + 4) = v55;
          *v54 = v55;
          _os_log_impl(&_mh_execute_header, v51, v52, "failed to query attestations error: %@", v53, 0xCu);
          sub_100011F00(v54, &unk_1002301D0, &qword_1001D4F50);
        }

        else
        {
        }

        v95 = 0;
LABEL_36:
        v36 = v91;
        v37 = v92;
        (*v82)(v91, v92);
        v38 = v94;
        if (v94 == v83)
        {
          goto LABEL_39;
        }

        if (v87)
        {
          goto LABEL_9;
        }

LABEL_12:
        if (v38 >= *(v76 + 16))
        {
          goto LABEL_42;
        }

        v96 = *(v75 + 8 * v38);
        v42 = v38;

        v40 = __OFADD__(v42, 1);
        v41 = v42 + 1;
        if (v40)
        {
          goto LABEL_41;
        }
      }

      v56 = v48;
      v95 = 0;
      (*v84)(v49, v90);

      if (v56 >> 62)
      {
        v57 = sub_1001D2190();
        if (v57)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v57)
        {
LABEL_22:
          if (v57 < 1)
          {
            goto LABEL_43;
          }

          v58 = 0;
          v59 = v56 & 0xC000000000000001;
          v99 = v56 & 0xC000000000000001;
          do
          {
            if (v59)
            {
              v65 = sub_1001D2040();
            }

            else
            {
              v65 = *(v56 + 8 * v58 + 32);
            }

            v103 = v65;
            swift_getKeyPath();
            sub_10003E3A8(&qword_100228A68, 255, _s8SchemaV2O4NodeCMa, &unk_1001D5D0C);
            sub_1001CFE90();

            swift_getKeyPath();
            sub_1001D15B0();

            v66 = v103;
            v67 = v104;

            v69 = v101;
            sub_100090D98(v68, v101);
            if ((*v100)(v69, 1, v102) == 1)
            {
              sub_100011F00(v69, &qword_100227E00, &unk_1001D3B20);
              v60 = v46;
              v61 = v57;
              v62 = v56;
              v63 = v97;
              sub_1000E48C4(v66, v67, v97);

              v64 = v63;
              v56 = v62;
              v57 = v61;
              v46 = v60;
              v59 = v99;
              sub_100011F00(v64, &qword_100227E00, &unk_1001D3B20);
            }

            else
            {
              v70 = v98;
              sub_10003C904(v69, v98);
              v71 = v106;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v103 = v71;
              sub_10001A8DC(v70, v66, v67, isUniquelyReferenced_nonNull_native);

              v106 = v103;
            }

            ++v58;
          }

          while (v57 != v58);

          v34 = v77;
          goto LABEL_35;
        }
      }

LABEL_35:
      v35 = v80;
      goto LABEL_36;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    swift_once();
    v23 = sub_1001D0E60();
    sub_10003A37C(v23, qword_1002286F8);
    swift_errorRetain();
    v24 = sub_1001D0E50();
    v25 = sub_1001D1DE0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      swift_errorRetain();
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v28;
      *v27 = v28;
      _os_log_impl(&_mh_execute_header, v24, v25, "failed to query attestations error: %@", v26, 0xCu);
      sub_100011F00(v27, &unk_1002301D0, &qword_1001D4F50);
    }

    v29 = sub_1000D62D4(_swiftEmptyArrayStorage);
  }

  else
  {
LABEL_39:

    return v106;
  }

  return v29;
}

uint64_t sub_10002A71C@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = sub_100011AC0(&qword_1002289F0, &qword_1001D5190);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  v9 = sub_100011AC0(&qword_1002289F8, &qword_1001D5198);
  v10 = *(v9 - 8);
  v20 = v9;
  v21 = v10;
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  v13 = sub_100011AC0(&qword_100228AC0, &qword_1001D5358);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v19 - v15;
  v22 = a2;
  sub_100011AC0(&unk_100230200, &qword_1001D4F80);
  sub_1001CF9F0();
  sub_100024B78(&qword_100228A08, &qword_1002289F0, &qword_1001D5190, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  sub_1001CFA00();
  swift_getKeyPath();
  sub_1001CF980();

  (*(v6 + 8))(v8, v5);
  a3[3] = sub_100011AC0(&qword_100228AC8, &unk_1001D5360);
  a3[4] = sub_10003C968();
  sub_10003B47C(a3);
  sub_100024B78(&qword_100228AE0, &qword_100228AC0, &qword_1001D5358, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  sub_100024B78(&qword_100228A10, &qword_1002289F8, &qword_1001D5198, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  sub_100024B78(&qword_100228AE8, &unk_100230200, &qword_1001D4F80, &protocol conformance descriptor for [A]);
  v17 = v20;
  sub_1001CF990();
  (*(v21 + 8))(v12, v17);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_10002AACC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10003E3A8(&qword_100228A68, 255, _s8SchemaV2O4NodeCMa, &unk_1001D5D0C);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_10003E3A8(&qword_1002289D8, 255, _s8SchemaV2O4NodeCMa, &unk_1001D5D28);
  sub_1001D15B0();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10002ABE0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10003E3A8(&qword_100228A68, 255, _s8SchemaV2O4NodeCMa, &unk_1001D5D0C);
  sub_1001CFE80();
}

unint64_t sub_10002ACBC(uint64_t a1, NSObject *a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v147 = a4;
  v151 = a2;
  v149 = a1;
  v127 = *v4;
  v7 = sub_100011AC0(&qword_1002288B0, &qword_1001D5FC0);
  __chkstk_darwin(v7 - 8);
  v115 = &v100 - v8;
  v9 = sub_100011AC0(&qword_100227E00, &unk_1001D3B20);
  __chkstk_darwin(v9 - 8);
  v150 = &v100 - v10;
  v11 = sub_100011AC0(&qword_1002289C0, &qword_1001D5168);
  __chkstk_darwin(v11 - 8);
  v140 = &v100 - v12;
  v141 = sub_100011AC0(&qword_1002289C8, &qword_1001D5170);
  v145 = *(v141 - 8);
  __chkstk_darwin(v141);
  v139 = (&v100 - v13);
  v146 = sub_100011AC0(&qword_1002289D0, &qword_1001D5178);
  v143 = *(v146 - 8);
  __chkstk_darwin(v146);
  v142 = &v100 - v14;
  v15 = sub_100011AC0(&qword_1002287C8, &qword_1001D4F38);
  __chkstk_darwin(v15 - 8);
  v17 = &v100 - v16;
  v105 = sub_100011AC0(&qword_1002287D0, &qword_1001D4F40);
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v19 = &v100 - v18;
  v20 = sub_100011AC0(&qword_100228B50, &qword_1001D5388);
  isa = v20[-1].isa;
  __chkstk_darwin(v20);
  v23 = &v100 - v22;
  v124 = sub_100011AC0(&qword_1002287D8, &qword_1001D4F48);
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v122 = &v100 - v24;
  v107 = sub_1001CFD60();
  v106 = *(v107 - 8);
  __chkstk_darwin(v107);
  v129 = &v100 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1001CFDA0();
  v27 = *(v26 - 8);
  v28 = __chkstk_darwin(v26);
  v113 = &v100 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v100 - v30;
  if (qword_1002276A0 != -1)
  {
LABEL_59:
    swift_once();
  }

  v118 = v23;
  v119 = v19;
  v120 = isa;
  v121 = v20;
  v32 = sub_1001D0E60();
  v33 = sub_10003A37C(v32, qword_1002286F8);
  v34 = *(v27 + 16);
  v112 = v27 + 16;
  v111 = v34;
  v34(v31, a3, v26);
  v144 = v33;
  v35 = v27;
  v36 = sub_1001D0E50();
  v37 = sub_1001D1E00();
  v38 = os_log_type_enabled(v36, v37);
  v128 = v5;
  v116 = a3;
  v114 = v26;
  v131 = v35;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v154 = swift_slowAlloc();
    *v39 = 136315394;
    sub_10003E3A8(&qword_100228AF8, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v40 = sub_1001D23A0();
    v42 = v41;
    v110 = *(v35 + 8);
    v110(v31, v26);
    v43 = sub_1000954E0(v40, v42, &v154);

    *(v39 + 4) = v43;
    *(v39 + 12) = 2080;
    if (v149)
    {
      v44 = 0x79786F7270;
    }

    else
    {
      v44 = 0x746365726964;
    }

    if (v149)
    {
      v45 = 0xE500000000000000;
    }

    else
    {
      v45 = 0xE600000000000000;
    }

    v46 = sub_1000954E0(v44, v45, &v154);

    *(v39 + 14) = v46;
    _os_log_impl(&_mh_execute_header, v36, v37, "getAttestationsForRequest id=%s nodeKind=%s", v39, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v110 = *(v35 + 8);
    v110(v31, v26);
  }

  v47 = sub_1001CFD50();
  v48 = sub_1000969BC(v47);
  v103 = &v100;
  *(&v100 - 4) = __chkstk_darwin(v48);
  *(&v100 - 3) = v49;
  *(&v100 - 2) = v50;
  *(&v100 - 1) = v51;
  v156 = _s8SchemaV2O8WorkloadCMa(0);
  v52 = v122;
  sub_1001CFE70();

  v53 = sub_1000D62D4(_swiftEmptyArrayStorage);
  v155 = v53;
  swift_getKeyPath();
  sub_10003E3A8(&qword_100230230, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v54 = v118;
  sub_1001CF8D0();
  v55 = v123;
  v56 = v124;
  (*(v123 + 16))(v17, v52, v124);
  (*(v55 + 56))(v17, 0, 1, v56);
  sub_100011AC0(&qword_100228B58, &qword_1001D5390);
  v19 = v120;
  v57 = (*(v120 + 80) + 32) & ~*(v120 + 80);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_1001D39F0;
  (*(v19 + 2))(v58 + v57, v54, v121);
  v59 = sub_10003E3A8(&qword_1002287E0, 255, _s8SchemaV2O8WorkloadCMa, &unk_1001D5DB4);
  v31 = v119;
  sub_1001D1560();
  v61 = sub_10003E3A8(&qword_1002287C0, v60, type metadata accessor for AttestationStore, &unk_1001D4E94);
  v20 = sub_1001D1490();
  v62 = v59;
  v63 = sub_1001D14E0();
  v148 = 0;
  isa = v128;
  v137 = v61;
  v125 = v53;

  if (v63 >> 62)
  {
    v64 = sub_1001D2190();
  }

  else
  {
    v64 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = v142;
  v27 = v137;
  v17 = isa;
  v126 = v63;
  if (v64)
  {
    v130 = v64;
    v138 = v62;
    v134 = v149 & 1;
    v136 = v63 & 0xC000000000000001;
    swift_beginAccess();
    a3 = 0;
    v109 = v63 & 0xFFFFFFFFFFFFFF8;
    v108 = v63 + 32;
    v133 = (v143 + 16);
    v132 = (v143 + 56);
    v135 = (v145 + 8);
    v102 = (v131 + 7);
    v101 = v131 + 1;
    v131 = (v143 + 8);
    v66 = v147;
    if (v147 <= 1)
    {
      v66 = 1;
    }

    v149 = v66;
    *&v65 = 136315650;
    v100 = v65;
    *&v65 = 138412290;
    v117 = v65;
    v23 = v127;
    v26 = v129;
    while (1)
    {
      if (v136)
      {
        isa = sub_1001D2040();
        v67 = __OFADD__(a3++, 1);
        if (v67)
        {
          goto LABEL_57;
        }
      }

      else
      {
        if (a3 >= *(v109 + 16))
        {
          goto LABEL_58;
        }

        isa = *(v108 + 8 * a3);

        v67 = __OFADD__(a3++, 1);
        if (v67)
        {
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }
      }

      v145 = a3;
      v68 = OBJC_IVAR____TtCOC20privatecloudcomputed16AttestationStore8SchemaV28Workload___observationRegistrar;
      v153[0] = isa;
      swift_getKeyPath();
      v69 = sub_10003E3A8(&qword_1002287E8, 255, _s8SchemaV2O8WorkloadCMa, &unk_1001D5D98);
      v151 = v68;
      v143 = v69;
      sub_1001CFE90();

      swift_getKeyPath();
      sub_10003AC1C();
      v147 = isa;
      sub_1001D15B0();

      v71 = v153[0];
      __chkstk_darwin(v70);
      *(&v100 - 4) = v134;
      *(&v100 - 3) = v71;
      *(&v100 - 2) = v26;
      v31 = _s8SchemaV2O4NodeCMa(0);
      v153[0] = v31;
      sub_1001CFE70();

      sub_1001D1490();
      a3 = v140;
      v72 = v5;
      v73 = v146;
      (*v133)(v140, v72, v146);
      (*v132)(a3, 0, 1, v73);
      _s8SchemaV2O4NodeCMa(0);
      v27 = sub_10003E3A8(&qword_1002289D8, 255, _s8SchemaV2O4NodeCMa, &unk_1001D5D28);
      isa = v139;
      sub_1001D1560();
      v74 = v148;
      v75 = sub_1001D14E0();
      if (!v74)
      {
        break;
      }

      (*v135)(isa, v141);
      v31 = v74;
      v148 = 0;
      v5 = v142;
      v27 = v137;
LABEL_47:

      swift_errorRetain();
      v20 = sub_1001D0E50();
      v19 = sub_1001D1DE0();

      if (os_log_type_enabled(v20, v19))
      {
        v96 = swift_slowAlloc();
        isa = swift_slowAlloc();
        *v96 = v117;
        swift_errorRetain();
        v97 = _swift_stdlib_bridgeErrorToNSError();
        *(v96 + 4) = v97;
        *isa = v97;
        _os_log_impl(&_mh_execute_header, v20, v19, "failed to query nodes, error: %@", v96, 0xCu);
        sub_100011F00(isa, &unk_1002301D0, &qword_1001D4F50);
      }

      else
      {
      }

      (*v131)(v5, v146);
LABEL_19:
      a3 = v145;
      if (v145 == v130)
      {
        goto LABEL_51;
      }
    }

    v148 = 0;
    v19 = v75;
    (*v135)(isa, v141);

    v153[0] = sub_10003BD80(v19);
    sub_10003BA2C();
    v17 = v153[0];
    if (v153[0] < 0 || (v153[0] & 0x4000000000000000) != 0)
    {
      v5 = sub_1001D2190();
    }

    else
    {
      v5 = *(v153[0] + 16);
    }

    v20 = v151;
    v26 = 0;
    v23 = (v17 & 0xC000000000000001);
    do
    {
      if (v5 == v26)
      {
        break;
      }

      if (v23)
      {
        v19 = sub_1001D2040();
      }

      else
      {
        if (v26 >= *(v17 + 16))
        {
          __break(1u);
          goto LABEL_57;
        }

        v19 = *(v17 + 8 * v26 + 32);
      }

      ++v26;
      v153[0] = v19;
      swift_getKeyPath();
      sub_10003E3A8(&qword_100228A68, 255, _s8SchemaV2O4NodeCMa, &unk_1001D5D0C);
      sub_1001CFE90();

      swift_getKeyPath();
      sub_1001D15B0();

      isa = v153[0];
      a3 = v153[1];

      v31 = v150;
      sub_100090D98(v76, v150);
      swift_beginAccess();
      sub_100017584(v31, isa, a3);
      swift_endAccess();

      v20 = v151;
    }

    while (v149 != v26);

    v125 = v155;
    if (!*(v155 + 16))
    {
      v5 = v142;
      (*v131)(v142, v146);

      v17 = v128;
      v23 = v127;
      v26 = v129;
      v27 = v137;
      goto LABEL_19;
    }

    v77 = v115;
    v78 = v116;
    v79 = v114;
    v80 = v111;
    v111(v115, v116, v114);
    (*v102)(v77, 0, 1, v79);
    v81 = v147;
    v153[0] = v147;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v100 - 2) = v81;
    *(&v100 - 1) = v77;
    v83 = v148;
    sub_1001CFE80();

    isa = v81;
    sub_100011F00(v77, &qword_1002288B0, &qword_1001D5FC0);
    v84 = v113;
    v80(v113, v78, v79);
    swift_retain_n();
    v85 = sub_1001D0E50();
    v86 = sub_1001D1E00();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v153[0] = v88;
      *v87 = v100;
      sub_10003E3A8(&qword_100228AF8, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v89 = sub_1001D23A0();
      v90 = v84;
      v91 = v89;
      v93 = v92;
      v110(v90, v79);
      v94 = sub_1000954E0(v91, v93, v153);

      *(v87 + 4) = v94;
      *(v87 + 12) = 2048;
      v152 = isa;
      isa = &unk_1001D5120;
      swift_getKeyPath();
      sub_1001CFE90();

      swift_getKeyPath();
      sub_1001D15B0();

      *(v87 + 14) = v152;

      *(v87 + 22) = 2048;
      *(v87 + 24) = *(v125 + 16);
      _os_log_impl(&_mh_execute_header, v85, v86, "getAttestationsForRequest %s returned batch: %lu nodes count: %ld", v87, 0x20u);
      sub_100011CF0(v88);
    }

    else
    {

      v110(v84, v79);
    }

    v23 = v127;
    v26 = v129;
    v27 = v137;
    v17 = v128;
    sub_1001D1490();
    v95 = sub_1001D14C0();

    if (v95)
    {
      sub_1001D1490();
      sub_1001D14D0();
      if (v83)
      {
        v31 = v83;
        v148 = 0;
        v5 = v142;
        goto LABEL_47;
      }
    }

    else
    {
    }

    (*v131)(v142, v146);
  }

  else
  {
    v26 = v129;
LABEL_51:
  }

  (*(v104 + 8))(v119, v105);
  v120[1](v118, v121);
  (*(v123 + 8))(v122, v124);
  v98 = v125;
  (*(v106 + 8))(v26, v107);
  return v98;
}

uint64_t sub_10002C584@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v62 = a4;
  v63 = a5;
  v60 = a3;
  v59 = a2;
  v74 = a6;
  v7 = sub_100011AC0(&qword_1002287F8, &qword_1001D4F88);
  v8 = *(v7 - 8);
  v70 = v7;
  v71 = v8;
  __chkstk_darwin(v7);
  v67 = v53 - v9;
  v10 = sub_100011AC0(&qword_100228800, &qword_1001D4F90);
  v11 = *(v10 - 8);
  v68 = v10;
  v69 = v11;
  __chkstk_darwin(v10);
  v65 = v53 - v12;
  v13 = sub_100011AC0(&qword_100228808, &qword_1001D4F98);
  v14 = *(v13 - 8);
  v72 = v13;
  v73 = v14;
  __chkstk_darwin(v13);
  v66 = v53 - v15;
  v16 = sub_100011AC0(&qword_100228828, &qword_1001D4FB8);
  v80 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = v53 - v17;
  v19 = sub_100011AC0(&qword_100228830, &qword_1001D4FC0);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = v53 - v21;
  v23 = sub_100011AC0(&qword_100228838, &qword_1001D4FC8);
  v79 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = v53 - v24;
  v57 = sub_100011AC0(&qword_100228840, &qword_1001D4FD0);
  v58 = *(v57 - 8);
  v26 = __chkstk_darwin(v57);
  v55 = v53 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v54 = v53 - v28;
  v61 = sub_100011AC0(&qword_100228848, &qword_1001D4FD8);
  v64 = *(v61 - 8);
  __chkstk_darwin(v61);
  v56 = v53 - v29;
  v78 = *a1;
  v75 = sub_100024B78(&qword_100228858, &qword_100228830, &qword_1001D4FC0, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  sub_1001CFA00();
  swift_getKeyPath();
  sub_1001CF980();

  v30 = *(v20 + 8);
  v76 = v20 + 8;
  v77 = v30;
  v30(v22, v19);
  v81 = v59;
  v82 = v60;
  v31 = v18;
  sub_1001CF9F0();
  v60 = &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>;
  v59 = sub_100024B78(&qword_100228860, &qword_100228838, &qword_1001D4FC8, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  v53[1] = sub_100024B78(&qword_100228868, &qword_100228828, &qword_1001D4FB8, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v32 = v23;
  sub_1001CF970();
  v33 = *(v80 + 8);
  v80 += 8;
  v33(v18, v16);
  v34 = *(v79 + 8);
  v79 += 8;
  v35 = v32;
  v34(v25, v32);
  sub_1001CFA00();
  swift_getKeyPath();
  sub_1001CF980();

  v77(v22, v19);
  v81 = v62;
  v82 = v63;
  sub_1001CF9F0();
  v36 = v55;
  sub_1001CF970();
  v33(v31, v16);
  v34(v25, v35);
  sub_100024B78(&qword_100228870, &qword_100228840, &qword_1001D4FD0, &protocol conformance descriptor for PredicateExpressions.Equal<A, B>);
  v37 = v56;
  v38 = v54;
  v39 = v57;
  sub_1001CF9C0();
  v40 = *(v58 + 8);
  v40(v36, v39);
  v40(v38, v39);
  sub_1001CFA00();
  swift_getKeyPath();
  v41 = v65;
  sub_1001CF980();

  v77(v22, v19);
  sub_1001CFDA0();
  v42 = v67;
  sub_1001CF9B0();
  sub_100024B78(&qword_100228898, &qword_100228800, &qword_1001D4F90, v60);
  sub_100024B78(&qword_1002288A0, &qword_1002287F8, &qword_1001D4F88, &protocol conformance descriptor for PredicateExpressions.NilLiteral<A>);
  sub_10003ACD4();
  v43 = v66;
  v44 = v41;
  v45 = v42;
  v46 = v68;
  v47 = v70;
  sub_1001CF970();
  (*(v71 + 8))(v45, v47);
  (*(v69 + 8))(v44, v46);
  v48 = sub_100011AC0(&qword_100228C60, &qword_1001D53F8);
  v49 = v74;
  *(v74 + 24) = v48;
  v49[4] = sub_10003E26C();
  sub_10003B47C(v49);
  sub_100024B78(&qword_100228888, &qword_100228848, &qword_1001D4FD8, &protocol conformance descriptor for PredicateExpressions.Conjunction<A, B>);
  sub_100024B78(&qword_100228940, &qword_100228808, &qword_1001D4F98, &protocol conformance descriptor for PredicateExpressions.Equal<A, B>);
  v50 = v61;
  v51 = v72;
  sub_1001CF9C0();
  (*(v73 + 8))(v43, v51);
  return (*(v64 + 8))(v37, v50);
}

uint64_t sub_10002CF9C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10003E3A8(&qword_1002287E8, 255, _s8SchemaV2O8WorkloadCMa, &unk_1001D5D98);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_10003E3A8(&qword_1002287E0, 255, _s8SchemaV2O8WorkloadCMa, &unk_1001D5DB4);
  sub_1001D15B0();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10002D0B0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10003E3A8(&qword_1002287E8, 255, _s8SchemaV2O8WorkloadCMa, &unk_1001D5D98);
  sub_1001CFE80();
}

uint64_t sub_10002D18C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10003E3A8(&qword_1002287E8, 255, _s8SchemaV2O8WorkloadCMa, &unk_1001D5D98);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_10003E3A8(&qword_1002287E0, 255, _s8SchemaV2O8WorkloadCMa, &unk_1001D5DB4);
  sub_1001D15B0();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10002D2A0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10003E3A8(&qword_1002287E8, 255, _s8SchemaV2O8WorkloadCMa, &unk_1001D5D98);
  sub_1001CFE80();
}

uint64_t sub_10002D37C()
{
  swift_getKeyPath();
  sub_10003E3A8(&qword_1002287E8, 255, _s8SchemaV2O8WorkloadCMa, &unk_1001D5D98);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_10003E3A8(&qword_1002287E0, 255, _s8SchemaV2O8WorkloadCMa, &unk_1001D5DB4);
  sub_10003B4FC();
  sub_1001D15B0();
}

uint64_t sub_10002D48C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100011AC0(&qword_1002288B0, &qword_1001D5FC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-v5];
  sub_10001208C(a1, &v9[-v5], &qword_1002288B0, &qword_1001D5FC0);
  v7 = *a2;
  v12 = v7;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  sub_10003E3A8(&qword_1002287E8, 255, _s8SchemaV2O8WorkloadCMa, &unk_1001D5D98);
  sub_1001CFE80();

  return sub_100011F00(v6, &qword_1002288B0, &qword_1001D5FC0);
}

uint64_t sub_10002D5E0()
{
  swift_getKeyPath();
  sub_10003E3A8(&qword_1002287E8, 255, _s8SchemaV2O8WorkloadCMa, &unk_1001D5D98);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_10003E3A8(&qword_1002287E0, 255, _s8SchemaV2O8WorkloadCMa, &unk_1001D5DB4);
  sub_10003E3A8(&qword_100228910, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1001D15B0();
}

uint64_t sub_10002D724(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1001CFD60();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v7, a1, v4);
  v8 = *a2;
  v13 = v8;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  sub_10003E3A8(&qword_1002287E8, 255, _s8SchemaV2O8WorkloadCMa, &unk_1001D5D98);
  sub_1001CFE80();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10002D8B0@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v103 = a4;
  v95 = a3;
  v112 = a2;
  v109 = a5;
  v6 = sub_1001CF9E0();
  v101 = *(v6 - 8);
  v102 = v6;
  __chkstk_darwin(v6);
  v99 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100011AC0(&qword_100228810, &qword_1001D4FA0);
  v9 = *(v8 - 8);
  v105 = v8;
  v106 = v9;
  __chkstk_darwin(v8);
  v98 = &v69 - v10;
  v100 = sub_100011AC0(&qword_1002289E0, &qword_1001D5180);
  v104 = *(v100 - 8);
  __chkstk_darwin(v100);
  v96 = &v69 - v11;
  v12 = sub_100011AC0(&qword_1002289E8, &qword_1001D5188);
  v13 = *(v12 - 8);
  v107 = v12;
  v108 = v13;
  __chkstk_darwin(v12);
  v97 = &v69 - v14;
  v93 = sub_100011AC0(&qword_1002289F8, &qword_1001D5198);
  v94 = *(v93 - 8);
  __chkstk_darwin(v93);
  v86 = &v69 - v15;
  v87 = sub_100011AC0(&qword_100228AC0, &qword_1001D5358);
  v90 = *(v87 - 8);
  __chkstk_darwin(v87);
  v84 = &v69 - v16;
  v91 = sub_100011AC0(&qword_100228AC8, &unk_1001D5360);
  v92 = *(v91 - 8);
  __chkstk_darwin(v91);
  v85 = &v69 - v17;
  v78 = sub_100011AC0(&qword_100228B60, &qword_1001D5398);
  v79 = *(v78 - 8);
  __chkstk_darwin(v78);
  v77 = &v69 - v18;
  v80 = sub_100011AC0(&qword_100228B68, &qword_1001D53A0);
  v81 = *(v80 - 8);
  __chkstk_darwin(v80);
  v76 = &v69 - v19;
  v72 = sub_100011AC0(&qword_100228B70, &qword_1001D53A8);
  v73 = *(v72 - 8);
  __chkstk_darwin(v72);
  v21 = &v69 - v20;
  v22 = sub_100011AC0(&qword_1002289F0, &qword_1001D5190);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v69 - v24;
  v26 = sub_100011AC0(&qword_100228B78, &qword_1001D53B0);
  v116 = *(v26 - 8);
  __chkstk_darwin(v26);
  v28 = &v69 - v27;
  v74 = sub_100011AC0(&qword_100228B80, &qword_1001D53B8);
  v75 = *(v74 - 8);
  __chkstk_darwin(v74);
  v70 = &v69 - v29;
  v82 = sub_100011AC0(&qword_100228B88, &qword_1001D53C0);
  v83 = *(v82 - 8);
  __chkstk_darwin(v82);
  v114 = &v69 - v30;
  v88 = sub_100011AC0(&qword_100228B90, &qword_1001D53C8);
  v89 = *(v88 - 8);
  __chkstk_darwin(v88);
  v115 = &v69 - v31;
  v117 = *a1;
  v32 = v22;
  v33 = sub_100024B78(&qword_100228A08, &qword_1002289F0, &qword_1001D5190, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  sub_1001CFA00();
  swift_getKeyPath();
  sub_1001CF980();

  v110 = *(v23 + 8);
  v110(v25, v32);
  v111 = v23 + 8;
  sub_1001CF9B0();
  v113 = &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>;
  v69 = sub_100024B78(&qword_100228B98, &qword_100228B78, &qword_1001D53B0, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  sub_100024B78(&qword_100228BA0, &qword_100228B70, &qword_1001D53A8, &protocol conformance descriptor for PredicateExpressions.NilLiteral<A>);
  sub_10003DCB4();
  v34 = v72;
  sub_1001CF970();
  (*(v73 + 8))(v21, v34);
  v35 = *(v116 + 8);
  v116 += 8;
  v36 = v26;
  v35(v28, v26);
  v71 = v33;
  sub_1001CFA00();
  swift_getKeyPath();
  sub_1001CF980();

  v37 = v32;
  v38 = v32;
  v39 = v110;
  v110(v25, v37);
  v118 = v112;
  v119 = 0;
  sub_100011AC0(&qword_100228A88, &qword_1001E1CA0);
  v40 = v77;
  sub_1001CF9F0();
  v112 = &protocol conformance descriptor for PredicateExpressions.Value<A>;
  sub_100024B78(&qword_100228BB0, &qword_100228B60, &qword_1001D5398, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v41 = v76;
  v42 = v78;
  sub_1001CF970();
  (*(v79 + 8))(v40, v42);
  v35(v28, v36);
  sub_100024B78(&qword_100228BB8, &qword_100228B80, &qword_1001D53B8, &protocol conformance descriptor for PredicateExpressions.Equal<A, B>);
  sub_100024B78(&qword_100228BC0, &qword_100228B68, &qword_1001D53A0, &protocol conformance descriptor for PredicateExpressions.Equal<A, B>);
  v43 = v70;
  v44 = v74;
  v45 = v80;
  sub_1001CF9D0();
  (*(v81 + 8))(v41, v45);
  (*(v75 + 8))(v43, v44);
  v118 = v95;
  sub_100011AC0(&unk_100230200, &qword_1001D4F80);
  v46 = v84;
  sub_1001CF9F0();
  sub_1001CFA00();
  swift_getKeyPath();
  v47 = v86;
  sub_1001CF980();

  v39(v25, v38);
  sub_100024B78(&qword_100228AE0, &qword_100228AC0, &qword_1001D5358, v112);
  sub_100024B78(&qword_100228A10, &qword_1002289F8, &qword_1001D5198, v113);
  sub_100024B78(&qword_100228AE8, &unk_100230200, &qword_1001D4F80, &protocol conformance descriptor for [A]);
  v48 = v85;
  v49 = v87;
  v50 = v93;
  sub_1001CF990();
  (*(v94 + 8))(v47, v50);
  (*(v90 + 8))(v46, v49);
  sub_100024B78(&qword_100228BC8, &qword_100228B88, &qword_1001D53C0, &protocol conformance descriptor for PredicateExpressions.Disjunction<A, B>);
  sub_100024B78(&qword_100228B10, &qword_100228AC8, &unk_1001D5360, &protocol conformance descriptor for PredicateExpressions.SequenceContains<A, B>);
  v51 = v114;
  v52 = v82;
  v53 = v91;
  sub_1001CF9C0();
  (*(v92 + 8))(v48, v53);
  (*(v83 + 8))(v51, v52);
  sub_1001CFA00();
  swift_getKeyPath();
  v54 = v96;
  sub_1001CF980();

  v110(v25, v38);
  sub_1001CFD60();
  v55 = v98;
  sub_1001CF9F0();
  v57 = v101;
  v56 = v102;
  v58 = v99;
  (*(v101 + 104))(v99, enum case for PredicateExpressions.ComparisonOperator.greaterThanOrEqual(_:), v102);
  sub_100024B78(&qword_100228A18, &qword_1002289E0, &qword_1001D5180, v113);
  sub_100024B78(&qword_100228880, &qword_100228810, &qword_1001D4FA0, v112);
  sub_10003E3A8(&qword_100230230, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v59 = v97;
  v60 = v55;
  v61 = v100;
  v62 = v105;
  sub_1001CF9A0();
  (*(v57 + 8))(v58, v56);
  (*(v106 + 8))(v60, v62);
  (*(v104 + 8))(v54, v61);
  v63 = sub_100011AC0(&qword_100228BD0, &qword_1001D53D0);
  v64 = v109;
  *(v109 + 24) = v63;
  v64[4] = sub_10003DD30();
  sub_10003B47C(v64);
  sub_100024B78(&qword_100228C18, &qword_100228B90, &qword_1001D53C8, &protocol conformance descriptor for PredicateExpressions.Conjunction<A, B>);
  sub_100024B78(&qword_100228A60, &qword_1002289E8, &qword_1001D5188, &protocol conformance descriptor for PredicateExpressions.Comparison<A, B>);
  v65 = v115;
  v66 = v88;
  v67 = v107;
  sub_1001CF9C0();
  (*(v108 + 8))(v59, v67);
  return (*(v89 + 8))(v65, v66);
}

uint64_t sub_10002EA00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10003E3A8(&qword_100228A68, 255, _s8SchemaV2O4NodeCMa, &unk_1001D5D0C);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_10003E3A8(&qword_1002289D8, 255, _s8SchemaV2O4NodeCMa, &unk_1001D5D28);
  sub_10003C880();
  sub_1001D15B0();

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_10002EB20(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10003E3A8(&qword_100228A68, 255, _s8SchemaV2O4NodeCMa, &unk_1001D5D0C);
  sub_1001CFE80();
}

uint64_t sub_10002EC00()
{
  swift_getKeyPath();
  sub_10003E3A8(&qword_100228A68, 255, _s8SchemaV2O4NodeCMa, &unk_1001D5D0C);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_10003E3A8(&qword_1002289D8, 255, _s8SchemaV2O4NodeCMa, &unk_1001D5D28);
  sub_10003E3A8(&qword_100228910, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1001D15B0();
}

uint64_t sub_10002ED44(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1001CFD60();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v7, a1, v4);
  v8 = *a2;
  v13 = v8;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  sub_10003E3A8(&qword_100228A68, 255, _s8SchemaV2O4NodeCMa, &unk_1001D5D0C);
  sub_1001CFE80();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10002EED0@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v81 = a4;
  v71 = a3;
  v87 = a5;
  v88 = a2;
  v91 = a1;
  v5 = sub_1001CF9E0();
  v79 = *(v5 - 8);
  v80 = v5;
  __chkstk_darwin(v5);
  v77 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100011AC0(&qword_100228810, &qword_1001D4FA0);
  v8 = *(v7 - 8);
  v83 = v7;
  v84 = v8;
  __chkstk_darwin(v7);
  v76 = &v54 - v9;
  v78 = sub_100011AC0(&qword_1002289E0, &qword_1001D5180);
  v82 = *(v78 - 8);
  __chkstk_darwin(v78);
  v74 = &v54 - v10;
  v11 = sub_100011AC0(&qword_1002289E8, &qword_1001D5188);
  v12 = *(v11 - 8);
  v85 = v11;
  v86 = v12;
  __chkstk_darwin(v11);
  v75 = &v54 - v13;
  v69 = sub_100011AC0(&qword_1002289F8, &qword_1001D5198);
  v70 = *(v69 - 8);
  __chkstk_darwin(v69);
  v64 = &v54 - v14;
  v65 = sub_100011AC0(&qword_100228AC0, &qword_1001D5358);
  v66 = *(v65 - 8);
  __chkstk_darwin(v65);
  v60 = &v54 - v15;
  v67 = sub_100011AC0(&qword_100228AC8, &unk_1001D5360);
  v68 = *(v67 - 8);
  __chkstk_darwin(v67);
  v63 = &v54 - v16;
  v58 = sub_100011AC0(&qword_100228B60, &qword_1001D5398);
  v59 = *(v58 - 8);
  __chkstk_darwin(v58);
  v18 = &v54 - v17;
  v19 = sub_100011AC0(&qword_1002289F0, &qword_1001D5190);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v54 - v21;
  v56 = sub_100011AC0(&qword_100228B78, &qword_1001D53B0);
  v57 = *(v56 - 8);
  __chkstk_darwin(v56);
  v24 = &v54 - v23;
  v61 = sub_100011AC0(&qword_100228B68, &qword_1001D53A0);
  v62 = *(v61 - 8);
  __chkstk_darwin(v61);
  v54 = &v54 - v25;
  v72 = sub_100011AC0(&qword_100228C38, &qword_1001D53E8);
  v73 = *(v72 - 8);
  __chkstk_darwin(v72);
  v92 = &v54 - v26;
  v90 = *v91;
  sub_100024B78(&qword_100228A08, &qword_1002289F0, &qword_1001D5190, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  sub_1001CFA00();
  swift_getKeyPath();
  sub_1001CF980();

  v89 = *(v20 + 8);
  v91 = (v20 + 8);
  v89(v22, v19);
  v93 = v88;
  v94 = 0;
  sub_100011AC0(&qword_100228A88, &qword_1001E1CA0);
  sub_1001CF9F0();
  v88 = &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>;
  sub_100024B78(&qword_100228B98, &qword_100228B78, &qword_1001D53B0, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  v55 = &protocol conformance descriptor for PredicateExpressions.Value<A>;
  sub_100024B78(&qword_100228BB0, &qword_100228B60, &qword_1001D5398, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  sub_10003DCB4();
  v27 = v18;
  v28 = v56;
  v29 = v58;
  sub_1001CF970();
  (*(v59 + 8))(v27, v29);
  (*(v57 + 8))(v24, v28);
  v93 = v71;
  sub_100011AC0(&unk_100230200, &qword_1001D4F80);
  v30 = v60;
  sub_1001CF9F0();
  sub_1001CFA00();
  swift_getKeyPath();
  v31 = v64;
  sub_1001CF980();

  v89(v22, v19);
  sub_100024B78(&qword_100228AE0, &qword_100228AC0, &qword_1001D5358, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  sub_100024B78(&qword_100228A10, &qword_1002289F8, &qword_1001D5198, v88);
  sub_100024B78(&qword_100228AE8, &unk_100230200, &qword_1001D4F80, &protocol conformance descriptor for [A]);
  v32 = v63;
  v33 = v31;
  v34 = v65;
  v35 = v69;
  sub_1001CF990();
  (*(v70 + 8))(v33, v35);
  (*(v66 + 8))(v30, v34);
  sub_100024B78(&qword_100228BC0, &qword_100228B68, &qword_1001D53A0, &protocol conformance descriptor for PredicateExpressions.Equal<A, B>);
  sub_100024B78(&qword_100228B10, &qword_100228AC8, &unk_1001D5360, &protocol conformance descriptor for PredicateExpressions.SequenceContains<A, B>);
  v36 = v54;
  v37 = v61;
  v38 = v67;
  sub_1001CF9C0();
  (*(v68 + 8))(v32, v38);
  (*(v62 + 8))(v36, v37);
  sub_1001CFA00();
  swift_getKeyPath();
  v39 = v74;
  sub_1001CF980();

  v89(v22, v19);
  sub_1001CFD60();
  v40 = v76;
  sub_1001CF9F0();
  v42 = v79;
  v41 = v80;
  v43 = v77;
  (*(v79 + 104))(v77, enum case for PredicateExpressions.ComparisonOperator.greaterThanOrEqual(_:), v80);
  sub_100024B78(&qword_100228A18, &qword_1002289E0, &qword_1001D5180, v88);
  sub_100024B78(&qword_100228880, &qword_100228810, &qword_1001D4FA0, v55);
  sub_10003E3A8(&qword_100230230, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v44 = v75;
  v45 = v40;
  v46 = v78;
  v47 = v83;
  sub_1001CF9A0();
  (*(v42 + 8))(v43, v41);
  (*(v84 + 8))(v45, v47);
  (*(v82 + 8))(v39, v46);
  v48 = sub_100011AC0(&qword_100228C40, &qword_1001D53F0);
  v49 = v87;
  *(v87 + 24) = v48;
  v49[4] = sub_10003E154();
  sub_10003B47C(v49);
  sub_100024B78(&qword_100228C58, &qword_100228C38, &qword_1001D53E8, &protocol conformance descriptor for PredicateExpressions.Conjunction<A, B>);
  sub_100024B78(&qword_100228A60, &qword_1002289E8, &qword_1001D5188, &protocol conformance descriptor for PredicateExpressions.Comparison<A, B>);
  v50 = v92;
  v51 = v72;
  v52 = v85;
  sub_1001CF9C0();
  (*(v86 + 8))(v44, v52);
  return (*(v73 + 8))(v50, v51);
}

uint64_t sub_10002FC88()
{
  v19[2] = *v0;
  v1 = sub_100011AC0(&qword_1002289C0, &qword_1001D5168);
  __chkstk_darwin(v1 - 8);
  v3 = v19 - v2;
  v4 = sub_100011AC0(&qword_1002289D0, &qword_1001D5178);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - v6;
  v8 = sub_1001CFD60();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002276A0 != -1)
  {
    swift_once();
  }

  v12 = sub_1001D0E60();
  v19[1] = sub_10003A37C(v12, qword_1002286F8);
  v13 = sub_1001D0E50();
  v14 = sub_1001D1E00();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v20 = v3;
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "deleteEntriesWithExpiredAttestationBundles", v15, 2u);
    v3 = v20;
  }

  v16 = sub_1001CFD50();
  v20 = v19;
  __chkstk_darwin(v16);
  v19[-2] = v11;
  v21 = _s8SchemaV2O4NodeCMa(0);
  sub_1001CFE70();
  sub_10003E3A8(&qword_1002287C0, v17, type metadata accessor for AttestationStore, &unk_1001D4E94);
  sub_1001D1490();
  (*(v5 + 16))(v3, v7, v4);
  (*(v5 + 56))(v3, 0, 1, v4);
  sub_10003E3A8(&qword_1002289D8, 255, _s8SchemaV2O4NodeCMa, &unk_1001D5D28);
  sub_1001D14F0();

  sub_100011F00(v3, &qword_1002289C0, &qword_1001D5168);
  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100030208@<X0>(uint64_t a3@<X8>)
{
  v26 = a3;
  v3 = sub_1001CF9E0();
  v23 = *(v3 - 8);
  v24 = v3;
  __chkstk_darwin(v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100011AC0(&qword_1002289F0, &qword_1001D5190);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - v8;
  v25 = sub_100011AC0(&qword_1002289E0, &qword_1001D5180);
  v27 = *(v25 - 8);
  __chkstk_darwin(v25);
  v11 = &v22 - v10;
  v12 = sub_100011AC0(&qword_100228810, &qword_1001D4FA0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - v14;
  sub_1001CFD60();
  sub_1001CF9F0();
  sub_100024B78(&qword_100228A08, &qword_1002289F0, &qword_1001D5190, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  sub_1001CFA00();
  swift_getKeyPath();
  sub_1001CF980();

  (*(v7 + 8))(v9, v6);
  v17 = v23;
  v16 = v24;
  (*(v23 + 104))(v5, enum case for PredicateExpressions.ComparisonOperator.greaterThan(_:), v24);
  v18 = sub_100011AC0(&qword_100228A70, &qword_1001D5200);
  v19 = v26;
  *(v26 + 24) = v18;
  v19[4] = sub_10003C3C4();
  sub_10003B47C(v19);
  sub_100024B78(&qword_100228880, &qword_100228810, &qword_1001D4FA0, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  sub_100024B78(&qword_100228A18, &qword_1002289E0, &qword_1001D5180, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  sub_10003E3A8(&qword_100230230, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v20 = v25;
  sub_1001CF9A0();
  (*(v17 + 8))(v5, v16);
  (*(v27 + 8))(v11, v20);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_100030670(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v31 = v2;
  v33 = v4;
  v5 = sub_100011AC0(&qword_1002287C8, &qword_1001D4F38);
  __chkstk_darwin(v5 - 8);
  v7 = &v29 - v6;
  v8 = sub_100011AC0(&qword_1002287D8, &qword_1001D4F48);
  v30 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v34 = &v29 - v10;
  v11 = sub_1000969BC(v9);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  if (qword_1002276A0 != -1)
  {
    swift_once();
  }

  v18 = sub_1001D0E60();
  v19 = sub_10003A37C(v18, qword_1002286F8);

  v29 = v19;
  v20 = sub_1001D0E50();
  v21 = sub_1001D1E00();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v32 = v8;
    v35 = v23;
    *v22 = 136315650;
    *(v22 + 4) = sub_1000954E0(v11, v13, &v35);
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_1000954E0(v15, v17, &v35);
    *(v22 + 22) = 2048;
    *(v22 + 24) = a2;
    _os_log_impl(&_mh_execute_header, v20, v21, "deleteEntries workloadType=%s inferenceId=%s batchId=%lu", v22, 0x20u);
    swift_arrayDestroy();
    v8 = v32;
  }

  v32 = &v29;
  __chkstk_darwin(v24);
  *(&v29 - 6) = v11;
  *(&v29 - 5) = v13;
  *(&v29 - 4) = v15;
  *(&v29 - 3) = v17;
  *(&v29 - 2) = a2;
  v35 = _s8SchemaV2O8WorkloadCMa(0);
  v25 = v34;
  sub_1001CFE70();

  sub_10003E3A8(&qword_1002287C0, v26, type metadata accessor for AttestationStore, &unk_1001D4E94);
  sub_1001D1490();
  v27 = v30;
  (*(v30 + 16))(v7, v25, v8);
  (*(v27 + 56))(v7, 0, 1, v8);
  sub_10003E3A8(&qword_1002287E0, 255, _s8SchemaV2O8WorkloadCMa, &unk_1001D5DB4);
  sub_1001D14F0();

  sub_100011F00(v7, &qword_1002287C8, &qword_1001D4F38);
  return (*(v27 + 8))(v34, v8);
}

uint64_t sub_100030BF0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10003E3A8(&qword_1002287E8, 255, _s8SchemaV2O8WorkloadCMa, &unk_1001D5D98);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_10003E3A8(&qword_1002287E0, 255, _s8SchemaV2O8WorkloadCMa, &unk_1001D5DB4);
  sub_1001D15B0();

  *a2 = v4;
  return result;
}

uint64_t sub_100030D24()
{
  v0 = sub_100011AC0(&qword_1002287C8, &qword_1001D4F38);
  __chkstk_darwin(v0 - 8);
  v2 = &v14[-v1];
  v3 = sub_100011AC0(&qword_1002289C0, &qword_1001D5168);
  __chkstk_darwin(v3 - 8);
  v5 = &v14[-v4];
  if (qword_1002276A0 != -1)
  {
    swift_once();
  }

  v6 = sub_1001D0E60();
  sub_10003A37C(v6, qword_1002286F8);
  v7 = sub_1001D0E50();
  v8 = sub_1001D1E00();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "deleteAllAttestationStoreEntries", v9, 2u);
  }

  sub_10003E3A8(&qword_1002287C0, v10, type metadata accessor for AttestationStore, &unk_1001D4E94);
  sub_1001D1490();
  _s8SchemaV2O4NodeCMa(0);
  v11 = sub_100011AC0(&qword_1002289D0, &qword_1001D5178);
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  sub_10003E3A8(&qword_1002289D8, 255, _s8SchemaV2O4NodeCMa, &unk_1001D5D28);
  sub_1001D14F0();
  sub_100011F00(v5, &qword_1002289C0, &qword_1001D5168);

  sub_1001D1490();
  _s8SchemaV2O8WorkloadCMa(0);
  v12 = sub_100011AC0(&qword_1002287D8, &qword_1001D4F48);
  (*(*(v12 - 8) + 56))(v2, 1, 1, v12);
  sub_10003E3A8(&qword_1002287E0, 255, _s8SchemaV2O8WorkloadCMa, &unk_1001D5DB4);
  sub_1001D14F0();
  sub_100011F00(v2, &qword_1002287C8, &qword_1001D4F38);
}

uint64_t sub_1000311C8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v26[2] = *v2;
  v6 = sub_100011AC0(&qword_1002289C0, &qword_1001D5168);
  __chkstk_darwin(v6 - 8);
  v8 = v26 - v7;
  v9 = sub_100011AC0(&qword_1002289D0, &qword_1001D5178);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v26 - v11;
  if (qword_1002276A0 != -1)
  {
    swift_once();
  }

  v13 = sub_1001D0E60();
  v14 = sub_10003A37C(v13, qword_1002286F8);

  v26[1] = v14;
  v15 = sub_1001D0E50();
  v16 = sub_1001D1E00();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v26[0] = v3;
    v19 = v10;
    v20 = v12;
    v21 = v9;
    v22 = v18;
    v27 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_1000954E0(a1, a2, &v27);
    _os_log_impl(&_mh_execute_header, v15, v16, "deleteEntryForNode: %s", v17, 0xCu);
    sub_100011CF0(v22);
    v9 = v21;
    v12 = v20;
    v10 = v19;
  }

  __chkstk_darwin(v23);
  v26[-2] = a1;
  v26[-1] = a2;
  v27 = _s8SchemaV2O4NodeCMa(0);
  sub_1001CFE70();
  sub_10003E3A8(&qword_1002287C0, v24, type metadata accessor for AttestationStore, &unk_1001D4E94);
  sub_1001D1490();
  (*(v10 + 16))(v8, v12, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  sub_10003E3A8(&qword_1002289D8, 255, _s8SchemaV2O4NodeCMa, &unk_1001D5D28);
  sub_1001D14F0();

  sub_100011F00(v8, &qword_1002289C0, &qword_1001D5168);
  (*(v10 + 8))(v12, v9);
  return 1;
}

uint64_t sub_100031758@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v19 = a2;
  v20 = a3;
  v5 = sub_100011AC0(&qword_100228828, &qword_1001D4FB8);
  v6 = *(v5 - 8);
  v21 = v5;
  v22 = v6;
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  v9 = sub_100011AC0(&qword_1002289F0, &qword_1001D5190);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  v13 = sub_100011AC0(&qword_1002289F8, &qword_1001D5198);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v19 - v15;
  sub_100024B78(&qword_100228A08, &qword_1002289F0, &qword_1001D5190, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  sub_1001CFA00();
  swift_getKeyPath();
  sub_1001CF980();

  (*(v10 + 8))(v12, v9);
  v23 = v19;
  v24 = v20;
  sub_1001CF9F0();
  a4[3] = sub_100011AC0(&qword_100228A00, &qword_1001D51A0);
  a4[4] = sub_10003C104();
  sub_10003B47C(a4);
  sub_100024B78(&qword_100228A10, &qword_1002289F8, &qword_1001D5198, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  sub_100024B78(&qword_100228868, &qword_100228828, &qword_1001D4FB8, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v17 = v21;
  sub_1001CF970();
  (*(v22 + 8))(v8, v17);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_100031AC4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10003E3A8(&qword_100228A68, 255, _s8SchemaV2O4NodeCMa, &unk_1001D5D0C);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_10003E3A8(&qword_1002289D8, 255, _s8SchemaV2O4NodeCMa, &unk_1001D5D28);
  sub_1001D15B0();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100031BD8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10003E3A8(&qword_100228A68, 255, _s8SchemaV2O4NodeCMa, &unk_1001D5D0C);
  sub_1001CFE80();
}

BOOL sub_100031CB4(uint64_t a1, unint64_t a2)
{
  v36 = *v2;
  v37 = v2;
  v5 = sub_100011AC0(&qword_1002289C0, &qword_1001D5168);
  __chkstk_darwin(v5 - 8);
  v7 = v33 - v6;
  v8 = sub_100011AC0(&qword_1002289C8, &qword_1001D5170);
  v38 = *(v8 - 8);
  v39 = v8;
  __chkstk_darwin(v8);
  v10 = v33 - v9;
  v11 = sub_100011AC0(&qword_1002289D0, &qword_1001D5178);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v40 = v33 - v13;
  v14 = sub_1001CFD60();
  v34 = *(v14 - 8);
  __chkstk_darwin(v14);
  v41 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002276A0 != -1)
  {
    swift_once();
  }

  v16 = sub_1001D0E60();
  v17 = sub_10003A37C(v16, qword_1002286F8);

  v33[1] = v17;
  v18 = sub_1001D0E50();
  v19 = sub_1001D1E00();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v35 = v12;
    v21 = v14;
    v22 = v11;
    v23 = v20;
    v24 = swift_slowAlloc();
    v42 = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_1000954E0(a1, a2, &v42);
    _os_log_impl(&_mh_execute_header, v18, v19, "nodeExists: checking if %s node exists", v23, 0xCu);
    sub_100011CF0(v24);

    v11 = v22;
    v14 = v21;
    v12 = v35;
  }

  v25 = v41;
  v26 = sub_1001CFD50();
  v35 = v33;
  __chkstk_darwin(v26);
  v33[-4] = a1;
  v33[-3] = a2;
  v33[-2] = v25;
  v42 = _s8SchemaV2O4NodeCMa(0);
  v27 = v40;
  sub_1001CFE70();
  sub_10003E3A8(&qword_1002287C0, v28, type metadata accessor for AttestationStore, &unk_1001D4E94);
  sub_1001D1490();
  (v12[2])(v7, v27, v11);
  (v12[7])(v7, 0, 1, v11);
  sub_10003E3A8(&qword_1002289D8, 255, _s8SchemaV2O4NodeCMa, &unk_1001D5D28);
  sub_1001D1560();
  v29 = sub_1001D14B0();
  v30 = (v38 + 8);
  v31 = v29;

  (*v30)(v10, v39);
  (v12[1])(v27, v11);
  (*(v34 + 8))(v41, v14);
  return v31 > 0;
}

uint64_t sub_10003233C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v59 = a4;
  v49 = a2;
  v50 = a3;
  v65 = a5;
  v6 = sub_1001CF9E0();
  v57 = *(v6 - 8);
  v58 = v6;
  __chkstk_darwin(v6);
  v55 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100011AC0(&qword_100228810, &qword_1001D4FA0);
  v9 = *(v8 - 8);
  v61 = v8;
  v62 = v9;
  __chkstk_darwin(v8);
  v54 = v42 - v10;
  v56 = sub_100011AC0(&qword_1002289E0, &qword_1001D5180);
  v60 = *(v56 - 8);
  __chkstk_darwin(v56);
  v48 = v42 - v11;
  v12 = sub_100011AC0(&qword_1002289E8, &qword_1001D5188);
  v13 = *(v12 - 8);
  v63 = v12;
  v64 = v13;
  __chkstk_darwin(v12);
  v52 = v42 - v14;
  v45 = sub_100011AC0(&qword_100228828, &qword_1001D4FB8);
  v46 = *(v45 - 8);
  __chkstk_darwin(v45);
  v16 = v42 - v15;
  v17 = sub_100011AC0(&qword_1002289F0, &qword_1001D5190);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v42 - v19;
  v43 = sub_100011AC0(&qword_1002289F8, &qword_1001D5198);
  v44 = *(v43 - 8);
  __chkstk_darwin(v43);
  v22 = v42 - v21;
  v51 = sub_100011AC0(&qword_100228A00, &qword_1001D51A0);
  v53 = *(v51 - 8);
  __chkstk_darwin(v51);
  v47 = v42 - v23;
  v42[1] = *a1;
  sub_100024B78(&qword_100228A08, &qword_1002289F0, &qword_1001D5190, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  sub_1001CFA00();
  swift_getKeyPath();
  sub_1001CF980();

  v24 = v18 + 8;
  v25 = *(v18 + 8);
  v42[0] = v24;
  v25(v20, v17);
  v66 = v49;
  v67 = v50;
  sub_1001CF9F0();
  v50 = &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>;
  sub_100024B78(&qword_100228A10, &qword_1002289F8, &qword_1001D5198, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  sub_100024B78(&qword_100228868, &qword_100228828, &qword_1001D4FB8, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v26 = v43;
  v27 = v45;
  sub_1001CF970();
  (*(v46 + 8))(v16, v27);
  (*(v44 + 8))(v22, v26);
  sub_1001CFA00();
  swift_getKeyPath();
  v28 = v48;
  sub_1001CF980();

  v25(v20, v17);
  sub_1001CFD60();
  v29 = v54;
  sub_1001CF9F0();
  v31 = v57;
  v30 = v58;
  v32 = v55;
  (*(v57 + 104))(v55, enum case for PredicateExpressions.ComparisonOperator.greaterThanOrEqual(_:), v58);
  sub_100024B78(&qword_100228A18, &qword_1002289E0, &qword_1001D5180, v50);
  sub_100024B78(&qword_100228880, &qword_100228810, &qword_1001D4FA0, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  sub_10003E3A8(&qword_100230230, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v33 = v52;
  v34 = v56;
  v35 = v61;
  sub_1001CF9A0();
  (*(v31 + 8))(v32, v30);
  (*(v62 + 8))(v29, v35);
  (*(v60 + 8))(v28, v34);
  v36 = sub_100011AC0(&qword_100228A20, &qword_1001D51F8);
  v37 = v65;
  *(v65 + 24) = v36;
  v37[4] = sub_10003C078();
  sub_10003B47C(v37);
  sub_100024B78(&qword_100228A58, &qword_100228A00, &qword_1001D51A0, &protocol conformance descriptor for PredicateExpressions.Equal<A, B>);
  sub_100024B78(&qword_100228A60, &qword_1002289E8, &qword_1001D5188, &protocol conformance descriptor for PredicateExpressions.Comparison<A, B>);
  v38 = v47;
  v39 = v51;
  v40 = v63;
  sub_1001CF9C0();
  (*(v64 + 8))(v33, v40);
  return (*(v53 + 8))(v38, v39);
}

uint64_t sub_100032BFC(uint64_t a1, uint64_t a2, unint64_t a3, char a4, void *a5, char *a6)
{
  if (qword_1002276A0 != -1)
  {
    swift_once();
  }

  v10 = sub_1001D0E60();
  sub_10003A37C(v10, qword_1002286F8);

  v11 = sub_1001D0E50();
  v12 = sub_1001D1E00();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v31[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1000954E0(a2, a3, v31);
    _os_log_impl(&_mh_execute_header, v11, v12, "trackNodeForParameters: checking if %s node tracks params", v13, 0xCu);
    sub_100011CF0(v14);
  }

  v15 = sub_100033208(a1, a2, a3, a5);
  if ((v15 & 1) == 0)
  {
    v16 = sub_100028A90(a1, a5);
    if (v16)
    {
      v17 = v16;
      v31[0] = v16;
      swift_getKeyPath();
      sub_10003E3A8(&qword_1002287E8, 255, _s8SchemaV2O8WorkloadCMa, &unk_1001D5D98);

      sub_1001CFE90();

      swift_getKeyPath();
      sub_10003E3A8(&qword_1002287E0, 255, _s8SchemaV2O8WorkloadCMa, &unk_1001D5DB4);
      sub_10003AC1C();
      sub_1001D15B0();

      v18 = v31[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_100008F3C(0, *(v18 + 2) + 1, 1, v18);
      }

      v20 = *(v18 + 2);
      v19 = *(v18 + 3);
      if (v20 >= v19 >> 1)
      {
        v18 = sub_100008F3C((v19 > 1), v20 + 1, 1, v18);
      }

      *(v18 + 2) = v20 + 1;
      v21 = &v18[16 * v20];
      *(v21 + 4) = a2;
      *(v21 + 5) = a3;
      v31[0] = v17;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_1001CFE80();
    }

    else
    {

      v24 = sub_1001D0E50();
      v25 = sub_1001D1E00();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v31[0] = v27;
        *v26 = 136315138;
        *(v26 + 4) = sub_1000954E0(a2, a3, v31);
        _os_log_impl(&_mh_execute_header, v24, v25, "Linking %s to ...", v26, 0xCu);
        sub_100011CF0(v27);
      }

      sub_100029120(a1, a2, a3, a4 & 1, a5, a6);
    }

    sub_10003E3A8(&qword_1002287C0, v23, type metadata accessor for AttestationStore, &unk_1001D4E94);
    sub_1001D1490();
    sub_1001D14D0();
  }

  return v15 & 1;
}

uint64_t sub_100033208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a2;
  v45 = a3;
  v48 = v4;
  v47 = *v4;
  v6 = sub_100011AC0(&qword_1002287C8, &qword_1001D4F38);
  __chkstk_darwin(v6 - 8);
  v8 = &v41 - v7;
  v9 = sub_100011AC0(&qword_1002287D0, &qword_1001D4F40);
  v49 = *(v9 - 8);
  v50 = v9;
  __chkstk_darwin(v9);
  v11 = &v41 - v10;
  v51 = sub_100011AC0(&qword_1002287D8, &qword_1001D4F48);
  v12 = *(v51 - 8);
  v13 = __chkstk_darwin(v51);
  v52 = &v41 - v14;
  v15 = sub_1000969BC(v13);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  if (qword_1002276A0 != -1)
  {
    swift_once();
  }

  v22 = sub_1001D0E60();
  v23 = sub_10003A37C(v22, qword_1002286F8);

  v46 = v23;
  v24 = sub_1001D0E50();
  v25 = sub_1001D1E00();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v43 = v12;
    v27 = v26;
    v28 = swift_slowAlloc();
    v42 = a4;
    v53[0] = v28;
    *v27 = 136315394;
    *(v27 + 4) = sub_1000954E0(v15, v17, v53);
    *(v27 + 12) = 2080;
    *(v27 + 14) = sub_1000954E0(v19, v21, v53);
    _os_log_impl(&_mh_execute_header, v24, v25, "nodeExistsInBatch workloadType=%s inferenceId=%s", v27, 0x16u);
    swift_arrayDestroy();
    a4 = v42;

    v12 = v43;
  }

  __chkstk_darwin(v29);
  *(&v41 - 6) = v15;
  *(&v41 - 5) = v17;
  *(&v41 - 4) = v19;
  *(&v41 - 3) = v21;
  *(&v41 - 2) = a4;
  v53[3] = _s8SchemaV2O8WorkloadCMa(0);
  v30 = v52;
  sub_1001CFE70();

  sub_10003E3A8(&qword_1002287C0, v31, type metadata accessor for AttestationStore, &unk_1001D4E94);
  sub_1001D1490();
  v32 = v30;
  v33 = v51;
  (*(v12 + 16))(v8, v32, v51);
  (*(v12 + 56))(v8, 0, 1, v33);
  sub_10003E3A8(&qword_1002287E0, 255, _s8SchemaV2O8WorkloadCMa, &unk_1001D5DB4);
  sub_1001D1560();
  v34 = sub_1001D14E0();
  (*(v49 + 8))(v11, v50);

  if (!(v34 >> 62))
  {
    result = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_7;
    }

LABEL_13:
    (*(v12 + 8))(v52, v51);

    v40 = 0;
    return v40 & 1;
  }

  result = sub_1001D2190();
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_7:
  if ((v34 & 0xC000000000000001) != 0)
  {
    v36 = v12;
    v37 = sub_1001D2040();
    goto LABEL_10;
  }

  if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v36 = v12;
    v37 = *(v34 + 32);

LABEL_10:

    v53[0] = v37;
    swift_getKeyPath();
    sub_10003E3A8(&qword_1002287E8, 255, _s8SchemaV2O8WorkloadCMa, &unk_1001D5D98);
    sub_1001CFE90();

    swift_getKeyPath();
    sub_10003AC1C();
    sub_1001D15B0();

    v39 = v53[0];
    v53[0] = v44;
    v53[1] = v45;
    __chkstk_darwin(v38);
    *(&v41 - 2) = v53;
    v40 = sub_10003AAB4(sub_10003C040, (&v41 - 4), v39);

    (*(v36 + 8))(v52, v51);
    return v40 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000339A8@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v65 = a6;
  v59 = a4;
  v60 = a5;
  v56 = a3;
  v55 = a2;
  v71 = a7;
  v8 = sub_100011AC0(&qword_100228968, &qword_1001D5148);
  v9 = *(v8 - 8);
  v67 = v8;
  v68 = v9;
  __chkstk_darwin(v8);
  v63 = v49 - v10;
  v64 = sub_100011AC0(&qword_100228970, &qword_1001D5150);
  v66 = *(v64 - 8);
  __chkstk_darwin(v64);
  v61 = v49 - v11;
  v12 = sub_100011AC0(&qword_100228978, &qword_1001D5158);
  v13 = *(v12 - 8);
  v69 = v12;
  v70 = v13;
  __chkstk_darwin(v12);
  v62 = v49 - v14;
  v15 = sub_100011AC0(&qword_100228828, &qword_1001D4FB8);
  v77 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = v49 - v16;
  v18 = sub_100011AC0(&qword_100228830, &qword_1001D4FC0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v49 - v20;
  v22 = sub_100011AC0(&qword_100228838, &qword_1001D4FC8);
  v76 = *(v22 - 8);
  __chkstk_darwin(v22);
  v24 = v49 - v23;
  v53 = sub_100011AC0(&qword_100228840, &qword_1001D4FD0);
  v54 = *(v53 - 8);
  v25 = __chkstk_darwin(v53);
  v51 = v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v50 = v49 - v27;
  v57 = sub_100011AC0(&qword_100228848, &qword_1001D4FD8);
  v58 = *(v57 - 8);
  __chkstk_darwin(v57);
  v52 = v49 - v28;
  v75 = *a1;
  v72 = sub_100024B78(&qword_100228858, &qword_100228830, &qword_1001D4FC0, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  sub_1001CFA00();
  swift_getKeyPath();
  sub_1001CF980();

  v29 = *(v19 + 8);
  v73 = v19 + 8;
  v74 = v29;
  v29(v21, v18);
  v78 = v55;
  v79 = v56;
  sub_1001CF9F0();
  v56 = &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>;
  v49[2] = sub_100024B78(&qword_100228860, &qword_100228838, &qword_1001D4FC8, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  v55 = &protocol conformance descriptor for PredicateExpressions.Value<A>;
  v49[1] = sub_100024B78(&qword_100228868, &qword_100228828, &qword_1001D4FB8, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v30 = v22;
  sub_1001CF970();
  v31 = *(v77 + 8);
  v77 += 8;
  v31(v17, v15);
  v32 = *(v76 + 8);
  v76 += 8;
  v32(v24, v30);
  sub_1001CFA00();
  swift_getKeyPath();
  sub_1001CF980();

  v74(v21, v18);
  v78 = v59;
  v79 = v60;
  sub_1001CF9F0();
  v33 = v51;
  sub_1001CF970();
  v31(v17, v15);
  v32(v24, v30);
  sub_100024B78(&qword_100228870, &qword_100228840, &qword_1001D4FD0, &protocol conformance descriptor for PredicateExpressions.Equal<A, B>);
  v34 = v52;
  v35 = v50;
  v36 = v53;
  sub_1001CF9C0();
  v37 = *(v54 + 8);
  v37(v33, v36);
  v37(v35, v36);
  sub_1001CFA00();
  swift_getKeyPath();
  v38 = v61;
  sub_1001CF980();

  v74(v21, v18);
  v78 = v65;
  v39 = v63;
  sub_1001CF9F0();
  sub_100024B78(&qword_100228980, &qword_100228970, &qword_1001D5150, v56);
  sub_100024B78(&qword_100228988, &qword_100228968, &qword_1001D5148, v55);
  v40 = v62;
  v41 = v39;
  v42 = v64;
  v43 = v67;
  sub_1001CF970();
  (*(v68 + 8))(v41, v43);
  (*(v66 + 8))(v38, v42);
  v44 = sub_100011AC0(&qword_100228990, &qword_1001D5160);
  v45 = v71;
  *(v71 + 24) = v44;
  v45[4] = sub_10003B7BC();
  sub_10003B47C(v45);
  sub_100024B78(&qword_100228888, &qword_100228848, &qword_1001D4FD8, &protocol conformance descriptor for PredicateExpressions.Conjunction<A, B>);
  sub_100024B78(&qword_1002289B8, &qword_100228978, &qword_1001D5158, &protocol conformance descriptor for PredicateExpressions.Equal<A, B>);
  v46 = v57;
  v47 = v69;
  sub_1001CF9C0();
  (*(v70 + 8))(v40, v47);
  return (*(v58 + 8))(v34, v46);
}

BOOL sub_1000343D0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v68 = a3;
  v59 = a2;
  v4 = *v3;
  v62 = v3;
  v61 = v4;
  v5 = sub_100011AC0(&qword_1002287C8, &qword_1001D4F38);
  __chkstk_darwin(v5 - 8);
  v66 = &v53 - v6;
  v60 = sub_100011AC0(&qword_1002287D0, &qword_1001D4F40);
  v67 = *(v60 - 8);
  __chkstk_darwin(v60);
  v63 = (&v53 - v7);
  v8 = sub_100011AC0(&qword_1002287D8, &qword_1001D4F48);
  v65 = *(v8 - 8);
  __chkstk_darwin(v8);
  v64 = &v53 - v9;
  v10 = sub_1001CFD60();
  v11 = *(v10 - 1);
  v12 = __chkstk_darwin(v10);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000969BC(v12);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  if (qword_1002276A0 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v22 = sub_1001D0E60();
    v23 = sub_10003A37C(v22, qword_1002286F8);
    (*(v11 + 16))(v14, v68, v10);

    v57 = v23;
    v24 = sub_1001D0E50();
    v25 = sub_1001D1E00();

    v56 = v25;
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v58 = v8;
      v27 = v26;
      v55 = swift_slowAlloc();
      v70[0] = v55;
      *v27 = 136315906;
      *(v27 + 4) = sub_1000954E0(v15, v17, v70);
      v54 = v24;
      *(v27 + 12) = 2080;
      v28 = v19;
      *(v27 + 14) = sub_1000954E0(v19, v21, v70);
      *(v27 + 22) = 2048;
      *(v27 + 24) = v59;
      *(v27 + 32) = 2080;
      sub_10003E3A8(&qword_100227A40, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v29 = sub_1001D23A0();
      v53 = v15;
      v19 = v30;
      (*(v11 + 8))(v14, v10);
      v31 = sub_1000954E0(v29, v19, v70);

      *(v27 + 34) = v31;
      v32 = v54;
      _os_log_impl(&_mh_execute_header, v54, v56, "attestationsExist workloadType=%s inferenceId=%s clientCacheSize=%ld fetchTime=%s", v27, 0x2Au);
      swift_arrayDestroy();

      v8 = v58;
    }

    else
    {

      v33 = (*(v11 + 8))(v14, v10);
      v28 = v19;
    }

    __chkstk_darwin(v33);
    *(&v53 - 6) = v34;
    *(&v53 - 5) = v17;
    *(&v53 - 4) = v28;
    *(&v53 - 3) = v21;
    *(&v53 - 2) = v68;
    v70[0] = _s8SchemaV2O8WorkloadCMa(0);
    v35 = v64;
    sub_1001CFE70();

    sub_10003E3A8(&qword_1002287C0, v36, type metadata accessor for AttestationStore, &unk_1001D4E94);
    sub_1001D1490();
    v37 = v65;
    v38 = v66;
    (*(v65 + 16))(v66, v35, v8);
    (*(v37 + 56))(v38, 0, 1, v8);
    v39 = sub_10003E3A8(&qword_1002287E0, 255, _s8SchemaV2O8WorkloadCMa, &unk_1001D5DB4);
    v40 = v63;
    v17 = v39;
    sub_1001D1560();
    v11 = 0;
    v21 = sub_1001D14E0();
    (*(v67 + 8))(v40, v60);

    v41 = v21 >> 62 ? sub_1001D2190() : *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v63 = &v53;
    v58 = v8;
    if (!v41)
    {
      break;
    }

    v15 = 0;
    v66 = (v21 & 0xFFFFFFFFFFFFFF8);
    v67 = v21 & 0xC000000000000001;
    v10 = _swiftEmptyArrayStorage;
    while (v67)
    {
      v42 = sub_1001D2040();
      v43 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
LABEL_29:
        __break(1u);

        (*(v65 + 8))(v64, v8);
        return 0;
      }

LABEL_14:
      v68 = v43;
      v69 = v42;
      v8 = v41;
      v11 = v17;
      swift_getKeyPath();
      sub_10003E3A8(&qword_1002287E8, 255, _s8SchemaV2O8WorkloadCMa, &unk_1001D5D98);

      sub_1001CFE90();

      swift_getKeyPath();
      sub_10003AC1C();
      sub_1001D15B0();

      v14 = v69;
      v44 = *(v69 + 2);
      v19 = *(v10 + 2);
      v45 = v19 + v44;
      if (__OFADD__(v19, v44))
      {
        goto LABEL_35;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v45 <= *(v10 + 3) >> 1)
      {
        if (!*(v14 + 2))
        {
          goto LABEL_9;
        }
      }

      else
      {
        if (v19 <= v45)
        {
          v47 = v19 + v44;
        }

        else
        {
          v47 = v19;
        }

        v10 = sub_100008F3C(isUniquelyReferenced_nonNull_native, v47, 1, v10);
        if (!*(v14 + 2))
        {
LABEL_9:

          if (v44)
          {
            goto LABEL_36;
          }

          goto LABEL_10;
        }
      }

      if ((*(v10 + 3) >> 1) - *(v10 + 2) < v44)
      {
        goto LABEL_37;
      }

      swift_arrayInitWithCopy();

      if (v44)
      {
        v48 = *(v10 + 2);
        v49 = __OFADD__(v48, v44);
        v50 = v48 + v44;
        if (v49)
        {
          goto LABEL_38;
        }

        *(v10 + 2) = v50;
      }

LABEL_10:
      ++v15;
      v41 = v8;
      if (v68 == v8)
      {
        goto LABEL_31;
      }
    }

    if (v15 < *(v66 + 2))
    {
      v42 = *(v21 + 8 * v15 + 32);

      v43 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_29;
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    swift_once();
  }

  v10 = _swiftEmptyArrayStorage;
LABEL_31:

  (*(v65 + 8))(v64, v58);
  v51 = *(v10 + 2);

  return v51 >= v59;
}

uint64_t sub_100034DDC@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v108 = a6;
  v97 = a5;
  v96 = a4;
  v85 = a3;
  v123 = a2;
  v118 = a7;
  v8 = sub_100011AC0(&qword_1002287F8, &qword_1001D4F88);
  v9 = *(v8 - 8);
  v114 = v8;
  v115 = v9;
  __chkstk_darwin(v8);
  v111 = &v80 - v10;
  v11 = sub_100011AC0(&qword_100228800, &qword_1001D4F90);
  v12 = *(v11 - 8);
  v112 = v11;
  v113 = v12;
  __chkstk_darwin(v11);
  v109 = &v80 - v13;
  v14 = sub_100011AC0(&qword_100228808, &qword_1001D4F98);
  v15 = *(v14 - 8);
  v116 = v14;
  v117 = v15;
  __chkstk_darwin(v14);
  v110 = &v80 - v16;
  v91 = sub_1001CF9E0();
  v100 = *(v91 - 8);
  __chkstk_darwin(v91);
  v98 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_100011AC0(&qword_100228810, &qword_1001D4FA0);
  v107 = *(v103 - 8);
  __chkstk_darwin(v103);
  v95 = &v80 - v18;
  v99 = sub_100011AC0(&qword_100228818, &qword_1001D4FA8);
  v101 = *(v99 - 8);
  __chkstk_darwin(v99);
  v90 = &v80 - v19;
  v105 = sub_100011AC0(&qword_100228820, &qword_1001D4FB0);
  v106 = *(v105 - 8);
  __chkstk_darwin(v105);
  v94 = &v80 - v20;
  v86 = sub_100011AC0(&qword_100228828, &qword_1001D4FB8);
  v128 = *(v86 - 8);
  __chkstk_darwin(v86);
  v22 = &v80 - v21;
  v23 = sub_100011AC0(&qword_100228830, &qword_1001D4FC0);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v80 - v25;
  v27 = sub_100011AC0(&qword_100228838, &qword_1001D4FC8);
  v127 = *(v27 - 8);
  __chkstk_darwin(v27);
  v29 = &v80 - v28;
  v87 = sub_100011AC0(&qword_100228840, &qword_1001D4FD0);
  v88 = *(v87 - 8);
  v30 = __chkstk_darwin(v87);
  v84 = &v80 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v83 = &v80 - v32;
  v92 = sub_100011AC0(&qword_100228848, &qword_1001D4FD8);
  v93 = *(v92 - 8);
  __chkstk_darwin(v92);
  v124 = &v80 - v33;
  v102 = sub_100011AC0(&qword_100228850, &qword_1001D4FE0);
  v104 = *(v102 - 8);
  __chkstk_darwin(v102);
  v89 = &v80 - v34;
  v35 = *a1;
  v36 = sub_100024B78(&qword_100228858, &qword_100228830, &qword_1001D4FC0, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  v122 = v35;
  v126 = v36;
  sub_1001CFA00();
  swift_getKeyPath();
  v125 = v23;
  sub_1001CF980();

  v120 = *(v24 + 8);
  v121 = v24 + 8;
  v37 = v26;
  v120(v26, v23);
  v129 = v123;
  v130 = v85;
  v38 = v22;
  v81 = v22;
  sub_1001CF9F0();
  v123 = &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>;
  v82 = sub_100024B78(&qword_100228860, &qword_100228838, &qword_1001D4FC8, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  v85 = &protocol conformance descriptor for PredicateExpressions.Value<A>;
  sub_100024B78(&qword_100228868, &qword_100228828, &qword_1001D4FB8, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v39 = v27;
  v40 = v86;
  sub_1001CF970();
  v41 = v128[1];
  ++v128;
  v41(v38, v40);
  v42 = *(v127 + 8);
  v127 += 8;
  v42(v29, v39);
  v43 = v125;
  sub_1001CFA00();
  swift_getKeyPath();
  v119 = v37;
  sub_1001CF980();

  v44 = v43;
  v45 = v120;
  v120(v37, v44);
  v129 = v96;
  v130 = v97;
  v46 = v81;
  sub_1001CF9F0();
  v47 = v84;
  sub_1001CF970();
  v41(v46, v40);
  v42(v29, v39);
  v128 = &protocol conformance descriptor for PredicateExpressions.Equal<A, B>;
  sub_100024B78(&qword_100228870, &qword_100228840, &qword_1001D4FD0, &protocol conformance descriptor for PredicateExpressions.Equal<A, B>);
  v48 = v83;
  v49 = v87;
  sub_1001CF9C0();
  v50 = *(v88 + 8);
  v50(v47, v49);
  v50(v48, v49);
  v51 = v119;
  v52 = v125;
  sub_1001CFA00();
  swift_getKeyPath();
  v53 = v90;
  sub_1001CF980();

  v45(v51, v52);
  sub_1001CFD60();
  v54 = v95;
  sub_1001CF9F0();
  v55 = v100;
  v56 = v98;
  v57 = v91;
  (*(v100 + 104))(v98, enum case for PredicateExpressions.ComparisonOperator.greaterThanOrEqual(_:), v91);
  sub_100024B78(&qword_100228878, &qword_100228818, &qword_1001D4FA8, v123);
  sub_100024B78(&qword_100228880, &qword_100228810, &qword_1001D4FA0, v85);
  sub_10003E3A8(&qword_100230230, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v58 = v94;
  v59 = v53;
  v60 = v54;
  v61 = v99;
  v62 = v103;
  sub_1001CF9A0();
  (*(v55 + 8))(v56, v57);
  (*(v107 + 8))(v60, v62);
  (*(v101 + 8))(v59, v61);
  sub_100024B78(&qword_100228888, &qword_100228848, &qword_1001D4FD8, &protocol conformance descriptor for PredicateExpressions.Conjunction<A, B>);
  sub_100024B78(&qword_100228890, &qword_100228820, &qword_1001D4FB0, &protocol conformance descriptor for PredicateExpressions.Comparison<A, B>);
  v63 = v89;
  v64 = v124;
  v65 = v92;
  v66 = v105;
  sub_1001CF9C0();
  (*(v106 + 8))(v58, v66);
  (*(v93 + 8))(v64, v65);
  v67 = v119;
  v68 = v125;
  sub_1001CFA00();
  swift_getKeyPath();
  v69 = v109;
  sub_1001CF980();

  v120(v67, v68);
  sub_1001CFDA0();
  v70 = v111;
  sub_1001CF9B0();
  sub_100024B78(&qword_100228898, &qword_100228800, &qword_1001D4F90, v123);
  sub_100024B78(&qword_1002288A0, &qword_1002287F8, &qword_1001D4F88, &protocol conformance descriptor for PredicateExpressions.NilLiteral<A>);
  sub_10003ACD4();
  v71 = v110;
  v72 = v70;
  v73 = v112;
  v74 = v114;
  sub_1001CF970();
  (*(v115 + 8))(v72, v74);
  (*(v113 + 8))(v69, v73);
  v75 = sub_100011AC0(&qword_1002288B8, &qword_1001D5090);
  v76 = v118;
  *(v118 + 24) = v75;
  v76[4] = sub_10003AD8C();
  sub_10003B47C(v76);
  sub_100024B78(&qword_100228938, &qword_100228850, &qword_1001D4FE0, &protocol conformance descriptor for PredicateExpressions.Conjunction<A, B>);
  sub_100024B78(&qword_100228940, &qword_100228808, &qword_1001D4F98, v128);
  v77 = v102;
  v78 = v116;
  sub_1001CF9C0();
  (*(v117 + 8))(v71, v78);
  return (*(v104 + 8))(v63, v77);
}

uint64_t sub_100035DCC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10003E3A8(&qword_1002287E8, 255, _s8SchemaV2O8WorkloadCMa, &unk_1001D5D98);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_10003E3A8(&qword_1002287E0, 255, _s8SchemaV2O8WorkloadCMa, &unk_1001D5DB4);
  sub_10003AC1C();
  sub_1001D15B0();

  *a2 = v4;
  return result;
}

uint64_t sub_100035F04(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_10003E3A8(&qword_1002287E8, 255, _s8SchemaV2O8WorkloadCMa, &unk_1001D5D98);
  sub_1001CFE80();
}

uint64_t sub_100035FCC(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_100011AC0(&qword_1002287C8, &qword_1001D4F38);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v88 = v72 - v9;
  v10 = sub_100011AC0(&qword_1002287D0, &qword_1001D4F40);
  v89 = *(v10 - 8);
  v90 = v10;
  __chkstk_darwin(v10);
  v87 = v72 - v11;
  v12 = sub_100011AC0(&qword_1002287D8, &qword_1001D4F48);
  v92 = *(v12 - 8);
  v93 = v12;
  __chkstk_darwin(v12);
  v94 = v72 - v13;
  v14 = sub_1001CFDA0();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v79 = v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = v72 - v18;
  if (qword_1002276A0 != -1)
  {
    swift_once();
  }

  v20 = sub_1001D0E60();
  v21 = sub_10003A37C(v20, qword_1002286F8);
  v22 = *(v15 + 16);
  v77 = v15 + 16;
  v76 = v22;
  v22(v19, a1, v14);
  v91 = v21;
  v23 = sub_1001D0E50();
  v24 = sub_1001D1E00();
  v25 = os_log_type_enabled(v23, v24);
  v83 = v8;
  v85 = v2;
  v80 = v15;
  v81 = v14;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v96 = v27;
    *v26 = 136315138;
    sub_10003E3A8(&qword_100228AF8, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v28 = sub_1001D23A0();
    v29 = v14;
    v30 = a1;
    v31 = v4;
    v33 = v32;
    v78 = *(v15 + 8);
    v78(v19, v29);
    v34 = sub_1000954E0(v28, v33, &v96);
    v4 = v31;
    a1 = v30;

    *(v26 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v23, v24, "deleteAttestationsUsedForTrustedRequest: %s", v26, 0xCu);
    sub_100011CF0(v27);
  }

  else
  {

    v78 = *(v15 + 8);
    v35 = (v78)(v19, v14);
  }

  v84 = a1;
  v82 = v4;
  v86 = v72;
  __chkstk_darwin(v35);
  v72[-2] = a1;
  v36 = _s8SchemaV2O8WorkloadCMa(0);
  v96 = v36;
  v37 = v94;
  sub_1001CFE70();
  v75 = sub_10003E3A8(&qword_1002287C0, v38, type metadata accessor for AttestationStore, &unk_1001D4E94);
  sub_1001D1490();
  v40 = v92;
  v39 = v93;
  v42 = (v92 + 16);
  v41 = *(v92 + 16);
  v43 = v88;
  (v41)(v88, v37, v93);
  v46 = *(v40 + 56);
  v44 = v40 + 56;
  v45 = v46;
  (v46)(v43, 0, 1, v39);
  v47 = sub_10003E3A8(&qword_1002287E0, 255, _s8SchemaV2O8WorkloadCMa, &unk_1001D5DB4);
  v48 = v87;
  sub_1001D1560();
  v49 = sub_1001D14E0();
  v89[1](v48, v90);

  v89 = v41;
  v90 = v47;
  v87 = v42;
  v88 = v45;
  v51 = v84;
  if (v49 >> 62)
  {
    result = sub_1001D2190();
  }

  else
  {
    result = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v52 = v94;
  v53 = v36;
  if (!result)
  {
    (*(v92 + 8))(v94, v93);

    return 0;
  }

  v74 = v44;
  if ((v49 & 0xC000000000000001) != 0)
  {
    v54 = sub_1001D2040();
    goto LABEL_14;
  }

  if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v54 = *(v49 + 32);

LABEL_14:

    v95 = v54;
    swift_getKeyPath();
    sub_10003E3A8(&qword_1002287E8, 255, _s8SchemaV2O8WorkloadCMa, &unk_1001D5D98);
    sub_1001CFE90();

    swift_getKeyPath();
    v72[1] = v54;
    sub_1001D15B0();

    v55 = v95;
    v56 = v79;
    v57 = v81;
    v76(v79, v51, v81);
    v58 = sub_1001D0E50();
    v59 = sub_1001D1E00();
    v60 = os_log_type_enabled(v58, v59);
    v73 = v55;
    if (v60)
    {
      v61 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v84 = v53;
      v62 = v95;
      *v61 = 134218242;
      *(v61 + 4) = v55;
      *(v61 + 12) = 2080;
      sub_10003E3A8(&qword_100228AF8, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v63 = sub_1001D23A0();
      v64 = v56;
      v65 = v63;
      v67 = v66;
      v78(v64, v57);
      v68 = sub_1000954E0(v65, v67, &v95);

      *(v61 + 14) = v68;
      _os_log_impl(&_mh_execute_header, v58, v59, "deleting batch: %lu used by request: %s", v61, 0x16u);
      sub_100011CF0(v62);

      v52 = v94;
    }

    else
    {

      v78(v56, v57);
    }

    v70 = v93;
    v71 = v83;
    sub_1001D1490();
    (v89)(v71, v52, v70);
    (v88)(v71, 0, 1, v70);
    sub_1001D14F0();

    sub_100011F00(v71, &qword_1002287C8, &qword_1001D4F38);
    (*(v92 + 8))(v52, v70);
    return v73;
  }

  __break(1u);
  return result;
}

char *sub_100036B18(uint64_t a1)
{
  v94 = *v1;
  v95 = a1;
  v2 = sub_100011AC0(&qword_1002289C0, &qword_1001D5168);
  __chkstk_darwin(v2 - 8);
  v4 = &v74 - v3;
  v5 = sub_100011AC0(&qword_1002289C8, &qword_1001D5170);
  isUniquelyReferenced_nonNull_native = *(v5 - 8);
  __chkstk_darwin(v5);
  v76 = &v74 - v7;
  v8 = sub_100011AC0(&qword_1002289D0, &qword_1001D5178);
  v80 = *(v8 - 8);
  v81 = v8;
  __chkstk_darwin(v8);
  v79 = &v74 - v9;
  v10 = sub_100011AC0(&qword_1002287C8, &qword_1001D4F38);
  __chkstk_darwin(v10 - 8);
  v12 = &v74 - v11;
  v89 = sub_100011AC0(&qword_1002287D0, &qword_1001D4F40);
  v87 = *(v89 - 8);
  __chkstk_darwin(v89);
  v86 = &v74 - v13;
  v14 = sub_1001CFD60();
  v84 = *(v14 - 8);
  v85 = v14;
  __chkstk_darwin(v14);
  v88 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100011AC0(&qword_1002287D8, &qword_1001D4F48);
  v92 = *(v16 - 8);
  v93 = v16;
  __chkstk_darwin(v16);
  v91 = &v74 - v17;
  v18 = sub_1001CFDA0();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002276A0 != -1)
  {
LABEL_39:
    swift_once();
  }

  v22 = sub_1001D0E60();
  v23 = sub_10003A37C(v22, qword_1002286F8);
  (*(v19 + 16))(v21, v95, v18);
  v82 = v23;
  v24 = sub_1001D0E50();
  v25 = sub_1001D1E00();
  v26 = os_log_type_enabled(v24, v25);
  v78 = v5;
  v77 = isUniquelyReferenced_nonNull_native;
  v75 = v4;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v96 = v28;
    *v27 = 136315138;
    sub_10003E3A8(&qword_100228AF8, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v29 = sub_1001D23A0();
    v31 = v30;
    (*(v19 + 8))(v21, v18);
    v32 = sub_1000954E0(v29, v31, &v96);

    *(v27 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v24, v25, "getAttestationBundlesUsedByTrustedRequest: %s", v27, 0xCu);
    sub_100011CF0(v28);
  }

  else
  {

    v33 = (*(v19 + 8))(v21, v18);
  }

  v83 = &v74;
  __chkstk_darwin(v33);
  *(&v74 - 2) = v95;
  v99 = _s8SchemaV2O8WorkloadCMa(0);
  v34 = v91;
  sub_1001CFE70();
  isUniquelyReferenced_nonNull_native = _swiftEmptyArrayStorage;
  v4 = sub_1000D64BC(_swiftEmptyArrayStorage);
  v19 = v88;
  sub_1001CFD50();
  sub_10003E3A8(&qword_1002287C0, v35, type metadata accessor for AttestationStore, &unk_1001D4E94);
  sub_1001D1490();
  v37 = v92;
  v36 = v93;
  (*(v92 + 16))(v12, v34, v93);
  (*(v37 + 56))(v12, 0, 1, v36);
  v21 = sub_10003E3A8(&qword_1002287E0, 255, _s8SchemaV2O8WorkloadCMa, &unk_1001D5DB4);
  v38 = v86;
  sub_1001D1560();
  v5 = 0;
  v39 = sub_1001D14E0();
  (*(v87 + 8))(v38, v89);

  if (v39 >> 62)
  {
    goto LABEL_42;
  }

  v40 = v94;
  if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_43:
    (*(v92 + 8))(v91, v93);

    goto LABEL_49;
  }

LABEL_7:
  if ((v39 & 0xC000000000000001) != 0)
  {
    v41 = sub_1001D2040();
  }

  else
  {
    if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_46;
    }

    v41 = *(v39 + 32);
  }

  v96 = v41;
  swift_getKeyPath();
  sub_10003E3A8(&qword_1002287E8, 255, _s8SchemaV2O8WorkloadCMa, &unk_1001D5D98);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_10003AC1C();
  v89 = v41;
  sub_1001D15B0();

  v74 = &v74;
  v43 = v96;
  __chkstk_darwin(v42);
  *(&v74 - 2) = v43;
  *(&v74 - 1) = v19;
  v98 = _s8SchemaV2O4NodeCMa(0);
  v21 = v79;
  sub_1001CFE70();

  sub_1001D1490();
  v45 = v80;
  v44 = v81;
  v12 = v75;
  (*(v80 + 16))(v75, v21, v81);
  (*(v45 + 56))(v12, 0, 1, v44);
  v40 = sub_10003E3A8(&qword_1002289D8, 255, _s8SchemaV2O4NodeCMa, &unk_1001D5D28);
  v46 = v76;
  sub_1001D1560();
  v47 = sub_1001D14E0();
  if (!v5)
  {
    isUniquelyReferenced_nonNull_native = v47;
    (*(v77 + 8))(v46, v78);

    if (!(isUniquelyReferenced_nonNull_native >> 62))
    {
      v53 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v53)
      {
        goto LABEL_47;
      }

LABEL_16:
      v39 = 0;
      v90 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
      v78 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
      v86 = isUniquelyReferenced_nonNull_native;
      v87 = v40;
      v82 = v53;
      while (1)
      {
        if (v90)
        {
          v18 = sub_1001D2040();
          v57 = v39 + 1;
          if (__OFADD__(v39, 1))
          {
            goto LABEL_37;
          }
        }

        else
        {
          if (v39 >= *(v78 + 16))
          {
            goto LABEL_41;
          }

          v18 = *(isUniquelyReferenced_nonNull_native + 8 * v39 + 32);

          v57 = v39 + 1;
          if (__OFADD__(v39, 1))
          {
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }
        }

        v94 = v57;
        v95 = v39;
        v96 = v18;
        swift_getKeyPath();
        sub_10003E3A8(&qword_100228A68, 255, _s8SchemaV2O4NodeCMa, &unk_1001D5D0C);
        sub_1001CFE90();

        swift_getKeyPath();
        sub_1001D15B0();

        v12 = v96;
        v21 = v97;
        v96 = v18;
        v19 = v4;
        v4 = &unk_1001D5268;
        swift_getKeyPath();
        sub_1001CFE90();

        swift_getKeyPath();
        sub_10003C7CC();
        sub_1001D15B0();

        v58 = v96;
        v59 = v97;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v96 = v19;
        v39 = v19;
        v5 = sub_100006028(v12, v21);
        v61 = *(v19 + 16);
        v62 = (v60 & 1) == 0;
        v63 = v61 + v62;
        if (__OFADD__(v61, v62))
        {
          goto LABEL_38;
        }

        v64 = v60;
        if (*(v19 + 24) >= v63)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v60)
            {
              goto LABEL_17;
            }
          }

          else
          {
            v39 = &v96;
            sub_10000FB94();
            if (v64)
            {
              goto LABEL_17;
            }
          }
        }

        else
        {
          sub_10000C37C(v63, isUniquelyReferenced_nonNull_native);
          v39 = v96;
          v65 = sub_100006028(v12, v21);
          if ((v64 & 1) != (v66 & 1))
          {
            result = sub_1001D24F0();
            __break(1u);
            return result;
          }

          v5 = v65;
          if (v64)
          {
LABEL_17:

            v4 = v96;
            v54 = (*(v96 + 7) + 16 * v5);
            v55 = *v54;
            v56 = v54[1];
            *v54 = v58;
            v54[1] = v59;
            sub_100011E48(v55, v56);

            goto LABEL_18;
          }
        }

        v4 = v96;
        *&v96[8 * (v5 >> 6) + 64] |= 1 << v5;
        v67 = (*(v4 + 6) + 16 * v5);
        *v67 = v12;
        v67[1] = v21;
        v68 = (*(v4 + 7) + 16 * v5);
        *v68 = v58;
        v68[1] = v59;

        v69 = *(v4 + 2);
        v70 = __OFADD__(v69, 1);
        v71 = v69 + 1;
        if (v70)
        {
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          v72 = sub_1001D2190();
          v40 = v94;
          if (!v72)
          {
            goto LABEL_43;
          }

          goto LABEL_7;
        }

        *(v4 + 2) = v71;
LABEL_18:
        v39 = v95 + 1;
        isUniquelyReferenced_nonNull_native = v86;
        if (v94 == v82)
        {

          v19 = v88;
          goto LABEL_48;
        }
      }
    }

LABEL_46:
    v53 = sub_1001D2190();
    if (!v53)
    {
LABEL_47:

      goto LABEL_48;
    }

    goto LABEL_16;
  }

  (*(v77 + 8))(v46, v78);

  swift_errorRetain();
  v48 = sub_1001D0E50();
  v49 = sub_1001D1DE0();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v50 = 138412290;
    swift_errorRetain();
    v52 = _swift_stdlib_bridgeErrorToNSError();
    *(v50 + 4) = v52;
    *v51 = v52;
    _os_log_impl(&_mh_execute_header, v48, v49, "failed to query attestations error: %@", v50, 0xCu);
    sub_100011F00(v51, &unk_1002301D0, &qword_1001D4F50);
  }

LABEL_48:
  (*(v80 + 8))(v79, v81);
  (*(v92 + 8))(v91, v93);
LABEL_49:
  (*(v84 + 8))(v19, v85);
  return v4;
}

uint64_t sub_100037B48@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a2;
  v26 = a3;
  v25 = sub_100011AC0(&qword_1002288B0, &qword_1001D5FC0);
  __chkstk_darwin(v25);
  v4 = &v23 - v3;
  v5 = sub_100011AC0(&qword_100228B18, &qword_1001D5378);
  v6 = *(v5 - 8);
  v27 = v5;
  v28 = v6;
  __chkstk_darwin(v5);
  v8 = &v23 - v7;
  v9 = sub_100011AC0(&qword_100228830, &qword_1001D4FC0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - v11;
  v13 = sub_100011AC0(&qword_100228800, &qword_1001D4F90);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v23 - v15;
  sub_100024B78(&qword_100228858, &qword_100228830, &qword_1001D4FC0, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  sub_1001CFA00();
  swift_getKeyPath();
  sub_1001CF980();

  (*(v10 + 8))(v12, v9);
  v17 = sub_1001CFDA0();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v4, v24, v17);
  (*(v18 + 56))(v4, 0, 1, v17);
  sub_1001CF9F0();
  sub_100011F00(v4, &qword_1002288B0, &qword_1001D5FC0);
  v19 = sub_100011AC0(&qword_100228B20, &qword_1001D5380);
  v20 = v26;
  *(v26 + 24) = v19;
  v20[4] = sub_10003DAC0();
  sub_10003B47C(v20);
  sub_100024B78(&qword_100228898, &qword_100228800, &qword_1001D4F90, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  sub_100024B78(&qword_100228B48, &qword_100228B18, &qword_1001D5378, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  sub_10003ACD4();
  v21 = v27;
  sub_1001CF970();
  (*(v28 + 8))(v8, v21);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_100037F90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v62 = a3;
  v68 = a4;
  v6 = sub_1001CF9E0();
  v60 = *(v6 - 8);
  v61 = v6;
  __chkstk_darwin(v6);
  v58 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100011AC0(&qword_100228810, &qword_1001D4FA0);
  v9 = *(v8 - 8);
  v64 = v8;
  v65 = v9;
  __chkstk_darwin(v8);
  v57 = v45 - v10;
  v59 = sub_100011AC0(&qword_1002289E0, &qword_1001D5180);
  v63 = *(v59 - 8);
  __chkstk_darwin(v59);
  v53 = v45 - v11;
  v12 = sub_100011AC0(&qword_1002289E8, &qword_1001D5188);
  v13 = *(v12 - 8);
  v66 = v12;
  v67 = v13;
  __chkstk_darwin(v12);
  v55 = v45 - v14;
  v15 = sub_100011AC0(&qword_1002289F0, &qword_1001D5190);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v45 - v17;
  v19 = sub_100011AC0(&qword_1002289F8, &qword_1001D5198);
  v20 = *(v19 - 8);
  v50 = v19;
  v51 = v20;
  __chkstk_darwin(v19);
  v22 = v45 - v21;
  v48 = sub_100011AC0(&qword_100228AC0, &qword_1001D5358);
  v49 = *(v48 - 8);
  __chkstk_darwin(v48);
  v24 = v45 - v23;
  v54 = sub_100011AC0(&qword_100228AC8, &unk_1001D5360);
  v56 = *(v54 - 8);
  __chkstk_darwin(v54);
  v52 = v45 - v25;
  v45[2] = *a1;
  v69 = a2;
  sub_100011AC0(&unk_100230200, &qword_1001D4F80);
  sub_1001CF9F0();
  sub_100024B78(&qword_100228A08, &qword_1002289F0, &qword_1001D5190, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  sub_1001CFA00();
  swift_getKeyPath();
  sub_1001CF980();

  v26 = v16 + 8;
  v27 = *(v16 + 8);
  v45[1] = v26;
  v27(v18, v15);
  v47 = &protocol conformance descriptor for PredicateExpressions.Value<A>;
  sub_100024B78(&qword_100228AE0, &qword_100228AC0, &qword_1001D5358, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v46 = &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>;
  sub_100024B78(&qword_100228A10, &qword_1002289F8, &qword_1001D5198, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  sub_100024B78(&qword_100228AE8, &unk_100230200, &qword_1001D4F80, &protocol conformance descriptor for [A]);
  v28 = v48;
  v29 = v50;
  sub_1001CF990();
  (*(v51 + 8))(v22, v29);
  (*(v49 + 8))(v24, v28);
  sub_1001CFA00();
  swift_getKeyPath();
  v30 = v53;
  sub_1001CF980();

  v27(v18, v15);
  sub_1001CFD60();
  v31 = v57;
  sub_1001CF9F0();
  v33 = v60;
  v32 = v61;
  v34 = v58;
  (*(v60 + 104))(v58, enum case for PredicateExpressions.ComparisonOperator.greaterThanOrEqual(_:), v61);
  sub_100024B78(&qword_100228A18, &qword_1002289E0, &qword_1001D5180, v46);
  sub_100024B78(&qword_100228880, &qword_100228810, &qword_1001D4FA0, v47);
  sub_10003E3A8(&qword_100230230, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v35 = v55;
  v36 = v31;
  v37 = v59;
  v38 = v64;
  sub_1001CF9A0();
  (*(v33 + 8))(v34, v32);
  (*(v65 + 8))(v36, v38);
  (*(v63 + 8))(v30, v37);
  v39 = sub_100011AC0(&qword_100228B00, &qword_1001D5370);
  v40 = v68;
  *(v68 + 24) = v39;
  v40[4] = sub_10003DA34();
  sub_10003B47C(v40);
  sub_100024B78(&qword_100228B10, &qword_100228AC8, &unk_1001D5360, &protocol conformance descriptor for PredicateExpressions.SequenceContains<A, B>);
  sub_100024B78(&qword_100228A60, &qword_1002289E8, &qword_1001D5188, &protocol conformance descriptor for PredicateExpressions.Comparison<A, B>);
  v41 = v52;
  v42 = v54;
  v43 = v66;
  sub_1001CF9C0();
  (*(v67 + 8))(v35, v43);
  return (*(v56 + 8))(v41, v42);
}

uint64_t sub_10003888C()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_100038938(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = sub_10003E3A8(&qword_1002287C0, a2, type metadata accessor for AttestationStore, &unk_1001D4E94);

  return ModelActor.unownedExecutor.getter(v3, v4);
}

uint64_t sub_1000389C8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 56) = a3;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 48) = *v6;
  sub_10003E3A8(&qword_1002287B8, a2, type metadata accessor for AttestationStore, &unk_1001D4F10);
  v9 = sub_1001D1A70();

  return _swift_task_switch(sub_100038A88, v9, v8);
}

uint64_t sub_100038A88()
{
  v1 = sub_1000278B4(*(v0 + 16), *(v0 + 24), *(v0 + 56), *(v0 + 32), *(v0 + 40));
  v2 = *(v0 + 8);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t sub_100038AF8(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = *v2;
  sub_10003E3A8(&qword_1002287B8, a2, type metadata accessor for AttestationStore, &unk_1001D4F10);
  v5 = sub_1001D1A70();

  return _swift_task_switch(sub_100038BAC, v5, v4);
}

uint64_t sub_100038BAC()
{
  sub_10002FC88();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100038C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = *v3;
  sub_10003E3A8(&qword_1002287B8, a2, type metadata accessor for AttestationStore, &unk_1001D4F10);
  v6 = sub_1001D1A70();

  return _swift_task_switch(sub_100038CC4, v6, v5);
}

uint64_t sub_100038CC4()
{
  sub_100030670(v0[2], v0[3]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_100038D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = *v3;
  sub_10003E3A8(&qword_1002287B8, a2, type metadata accessor for AttestationStore, &unk_1001D4F10);
  v6 = sub_1001D1A70();

  return _swift_task_switch(sub_100038DE0, v6, v5);
}

uint64_t sub_100038DE0()
{
  v1 = sub_100031CB4(v0[2], v0[3]);
  v2 = v0[1];
  v3 = v1;

  return v2(v3);
}

uint64_t sub_100038E48(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 64) = a4;
  *(v8 + 32) = a3;
  *(v8 + 40) = a5;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *v7;
  *(v8 + 48) = a6;
  *(v8 + 56) = v9;
  sub_10003E3A8(&qword_1002287B8, a2, type metadata accessor for AttestationStore, &unk_1001D4F10);
  v11 = sub_1001D1A70();

  return _swift_task_switch(sub_100038F08, v11, v10);
}

uint64_t sub_100038F08()
{
  v1 = sub_100032BFC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 64), *(v0 + 40), *(v0 + 48));
  v2 = *(v0 + 8);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t sub_100038F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = a1;
  v5[3] = a2;
  v6 = *v4;
  v5[4] = a3;
  v5[5] = v6;
  sub_10003E3A8(&qword_1002287B8, a2, type metadata accessor for AttestationStore, &unk_1001D4F10);
  v8 = sub_1001D1A70();

  return _swift_task_switch(sub_100039030, v8, v7);
}

uint64_t sub_100039030()
{
  v1 = sub_1000343D0(v0[2], v0[3], v0[4]);
  v2 = v0[1];
  v3 = v1;

  return v2(v3);
}

uint64_t sub_1000390C8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10003E3A8(&qword_1002287E8, 255, _s8SchemaV2O8WorkloadCMa, &unk_1001D5D98);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_10003E3A8(&qword_1002287E0, 255, _s8SchemaV2O8WorkloadCMa, &unk_1001D5DB4);
  sub_1001D15B0();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1000391DC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10003E3A8(&qword_1002287E8, 255, _s8SchemaV2O8WorkloadCMa, &unk_1001D5D98);
  sub_1001CFE80();
}

uint64_t sub_1000392B8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10003E3A8(&qword_1002287E8, 255, _s8SchemaV2O8WorkloadCMa, &unk_1001D5D98);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_10003E3A8(&qword_1002287E0, 255, _s8SchemaV2O8WorkloadCMa, &unk_1001D5DB4);
  sub_1001D15B0();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1000393CC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10003E3A8(&qword_1002287E8, 255, _s8SchemaV2O8WorkloadCMa, &unk_1001D5D98);
  sub_1001CFE80();
}

uint64_t sub_1000394A8@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_10003E3A8(&qword_1002287E8, 255, _s8SchemaV2O8WorkloadCMa, &unk_1001D5D98);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_10003E3A8(&qword_1002287E0, 255, _s8SchemaV2O8WorkloadCMa, &unk_1001D5DB4);
  sub_1001D15B0();

  *a2 = v4;
  return result;
}

uint64_t sub_1000395BC(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10003E3A8(&qword_1002287E8, 255, _s8SchemaV2O8WorkloadCMa, &unk_1001D5D98);
  sub_1001CFE80();
}

uint64_t sub_10003969C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10003E3A8(&qword_100228A68, 255, _s8SchemaV2O4NodeCMa, &unk_1001D5D0C);
  sub_1001CFE80();
}

double sub_100039784@<D0>(void *a1@<X0>, _OWORD *a3@<X8>)
{
  *&v5 = *a1;
  swift_getKeyPath();
  sub_10003E3A8(&qword_100228A68, 255, _s8SchemaV2O4NodeCMa, &unk_1001D5D0C);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_10003E3A8(&qword_1002289D8, 255, _s8SchemaV2O4NodeCMa, &unk_1001D5D28);
  sub_10003C7CC();
  sub_1001D15B0();

  result = *&v5;
  *a3 = v5;
  return result;
}

uint64_t sub_100039898(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10003E3A8(&qword_100228A68, 255, _s8SchemaV2O4NodeCMa, &unk_1001D5D0C);
  sub_1001CFE80();
}

uint64_t sub_100039974@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10003E3A8(&qword_100228A68, 255, _s8SchemaV2O4NodeCMa, &unk_1001D5D0C);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_10003E3A8(&qword_1002289D8, 255, _s8SchemaV2O4NodeCMa, &unk_1001D5D28);
  sub_1001D15B0();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100039A88(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10003E3A8(&qword_100228A68, 255, _s8SchemaV2O4NodeCMa, &unk_1001D5D0C);
  sub_1001CFE80();
}

uint64_t sub_100039B64@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10003E3A8(&qword_100228A68, 255, _s8SchemaV2O4NodeCMa, &unk_1001D5D0C);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_10003E3A8(&qword_1002289D8, 255, _s8SchemaV2O4NodeCMa, &unk_1001D5D28);
  sub_1001D15B0();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100039C78(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10003E3A8(&qword_100228A68, 255, _s8SchemaV2O4NodeCMa, &unk_1001D5D0C);
  sub_1001CFE80();
}

uint64_t sub_100039D54@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10003E3A8(&qword_100228A68, 255, _s8SchemaV2O4NodeCMa, &unk_1001D5D0C);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_10003E3A8(&qword_1002289D8, 255, _s8SchemaV2O4NodeCMa, &unk_1001D5D28);
  sub_1001D15B0();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100039E68(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10003E3A8(&qword_100228A68, 255, _s8SchemaV2O4NodeCMa, &unk_1001D5D0C);
  sub_1001CFE80();
}

double sub_100039F44@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_10003E3A8(&qword_100228A68, 255, _s8SchemaV2O4NodeCMa, &unk_1001D5D0C);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_10003E3A8(&qword_1002289D8, 255, _s8SchemaV2O4NodeCMa, &unk_1001D5D28);
  sub_10003C6D0();
  sub_1001D15B0();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10003A05C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10003E3A8(&qword_100228A68, 255, _s8SchemaV2O4NodeCMa, &unk_1001D5D0C);
  sub_1001CFE80();
}

uint64_t sub_10003A138@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v4 = v2[1];
  if (v4 != v2[2])
  {
    goto LABEL_4;
  }

  if (sub_1000FA2C0(a2))
  {
    v4 = v2[1];
LABEL_4:
    v2[1] = v4 + 1;
    v5 = sub_1001D0720();
    v12 = *(v5 - 8);
    (*(v12 + 16))(a1, *v2 + ((*(v12 + 80) + 40) & ~*(v12 + 80)) + *(v12 + 72) * v4, v5);
    v6 = *(v12 + 56);
    v7 = a1;
    v8 = 0;
    v9 = v5;
    goto LABEL_6;
  }

  v10 = sub_1001D0720();
  v6 = *(*(v10 - 8) + 56);
  v9 = v10;
  v7 = a1;
  v8 = 1;
LABEL_6:

  return v6(v7, v8, 1, v9);
}

char *sub_10003A288(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100008F3C(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10003A37C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10003A448(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_10003A58C(uint64_t a1)
{
  v3 = sub_1001D0720();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100011AC0(&qword_100228AF0, &qword_1001E1630);
  v8 = __chkstk_darwin(v7 - 8);
  v58 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v54 = &v48 - v11;
  v12 = __chkstk_darwin(v10);
  v57 = &v48 - v13;
  v14 = *(a1 + 24);
  v15 = *v1;
  v16 = *(*v1 + 16);
  v17 = v16 + v14;
  if (__OFADD__(v16, v14))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v55 = v3;
  v59 = v6;
  if (!isUniquelyReferenced_nonNull_native || (v19 = v15[3] >> 1, v19 < v17))
  {
    if (v16 <= v17)
    {
      v20 = v16 + v14;
    }

    else
    {
      v20 = v16;
    }

    v15 = sub_10000998C(isUniquelyReferenced_nonNull_native, v20, 1, v15);
    v19 = v15[3] >> 1;
  }

  v21 = v15[2];
  v22 = *(v4 + 80);
  v53 = (v22 + 32) & ~v22;
  v56 = *(v4 + 72);
  v23 = v19 - v21;
  v24 = sub_10003BBF8((a1 + 16), a1 + ((v22 + 40) & ~v22), v15 + v53 + v56 * v21, v19 - v21, a1);
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v60 = v24;
  v61 = v26;
  v62 = v28;
  if (v30 < v14)
  {
    goto LABEL_16;
  }

  if (v30 >= 1)
  {
    v31 = v15[2];
    v32 = __OFADD__(v31, v30);
    v33 = v31 + v30;
    if (v32)
    {
      __break(1u);
      goto LABEL_21;
    }

    v15[2] = v33;
  }

  if (v30 == v23)
  {
LABEL_17:
    v49 = v1;
    v26 = v15[2];
    v35 = v57;
    sub_10003A138(v57, v12);
    v23 = v54;
    sub_10001208C(v35, v54, &qword_100228AF0, &qword_1001E1630);
    v50 = *(v4 + 48);
    v51 = v4 + 48;
    if (v50(v23, 1, v55) == 1)
    {
      v1 = v49;
LABEL_19:
      sub_100011F00(v57, &qword_100228AF0, &qword_1001E1630);

      result = sub_100011F00(v23, &qword_100228AF0, &qword_1001E1630);
      goto LABEL_14;
    }

LABEL_21:
    v36 = (v4 + 32);
    v48 = (v4 + 8);
    v1 = v49;
    v37 = v58;
    do
    {
      sub_100011F00(v23, &qword_100228AF0, &qword_1001E1630);
      v39 = v15[3];
      v40 = v39 >> 1;
      if ((v39 >> 1) < v26 + 1)
      {
        v15 = sub_10000998C((v39 > 1), v26 + 1, 1, v15);
        v40 = v15[3] >> 1;
      }

      sub_10001208C(v57, v37, &qword_100228AF0, &qword_1001E1630);
      if (v50(v37, 1, v55) == 1)
      {
LABEL_22:
        sub_100011F00(v37, &qword_100228AF0, &qword_1001E1630);
        v38 = v26;
      }

      else
      {
        v52 = *v36;
        if (v26 <= v40)
        {
          v38 = v40;
        }

        else
        {
          v38 = v26;
        }

        v41 = v55;
        v42 = v15 + v53 + v56 * v26;
        while (1)
        {
          v52(v59, v37, v41);
          if (v38 == v26)
          {
            break;
          }

          v43 = v36;
          v44 = v57;
          sub_100011F00(v57, &qword_100228AF0, &qword_1001E1630);
          v45 = (v52)(v42, v59, v41);
          ++v26;
          sub_10003A138(v44, v45);
          v1 = v49;
          v46 = v44;
          v36 = v43;
          v37 = v58;
          sub_10001208C(v46, v58, &qword_100228AF0, &qword_1001E1630);
          v47 = v50(v37, 1, v41);
          v42 += v56;
          if (v47 == 1)
          {
            goto LABEL_22;
          }
        }

        (*v48)(v59, v41);
        v26 = v38;
      }

      v15[2] = v38;
      v23 = v54;
      sub_10001208C(v57, v54, &qword_100228AF0, &qword_1001E1630);
    }

    while (v50(v23, 1, v55) != 1);
    goto LABEL_19;
  }

LABEL_14:
  *v1 = v15;
  return result;
}

uint64_t sub_10003AAB4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void *sub_10003AB60(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100011AC0(&qword_100228C30, &qword_1001D53E0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

unint64_t sub_10003AC1C()
{
  result = qword_1002287F0;
  if (!qword_1002287F0)
  {
    sub_100011DF4(&unk_100230200, &qword_1001D4F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002287F0);
  }

  return result;
}

unint64_t sub_10003ACD4()
{
  result = qword_1002288A8;
  if (!qword_1002288A8)
  {
    sub_100011DF4(&qword_1002288B0, &qword_1001D5FC0);
    sub_10003E3A8(&qword_100227AE0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002288A8);
  }

  return result;
}

unint64_t sub_10003AD8C()
{
  result = qword_1002288C0;
  if (!qword_1002288C0)
  {
    sub_100011DF4(&qword_1002288B8, &qword_1001D5090);
    sub_10003AE18();
    sub_10003B314();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002288C0);
  }

  return result;
}

unint64_t sub_10003AE18()
{
  result = qword_1002288C8;
  if (!qword_1002288C8)
  {
    sub_100011DF4(&qword_100228850, &qword_1001D4FE0);
    sub_10003AEA4();
    sub_10003B0E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002288C8);
  }

  return result;
}

unint64_t sub_10003AEA4()
{
  result = qword_1002288D0;
  if (!qword_1002288D0)
  {
    sub_100011DF4(&qword_100228848, &qword_1001D4FD8);
    sub_10003AF28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002288D0);
  }

  return result;
}

unint64_t sub_10003AF28()
{
  result = qword_1002288D8;
  if (!qword_1002288D8)
  {
    sub_100011DF4(&qword_100228840, &qword_1001D4FD0);
    sub_10003AFB4();
    sub_10003B064();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002288D8);
  }

  return result;
}

unint64_t sub_10003AFB4()
{
  result = qword_1002288E0;
  if (!qword_1002288E0)
  {
    sub_100011DF4(&qword_100228838, &qword_1001D4FC8);
    sub_100024B78(&qword_1002288E8, &qword_100228830, &qword_1001D4FC0, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002288E0);
  }

  return result;
}

unint64_t sub_10003B064()
{
  result = qword_1002288F0;
  if (!qword_1002288F0)
  {
    sub_100011DF4(&qword_100228828, &qword_1001D4FB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002288F0);
  }

  return result;
}

unint64_t sub_10003B0E8()
{
  result = qword_1002288F8;
  if (!qword_1002288F8)
  {
    sub_100011DF4(&qword_100228820, &qword_1001D4FB0);
    sub_10003B174();
    sub_10003B224();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002288F8);
  }

  return result;
}

unint64_t sub_10003B174()
{
  result = qword_100228900;
  if (!qword_100228900)
  {
    sub_100011DF4(&qword_100228818, &qword_1001D4FA8);
    sub_100024B78(&qword_1002288E8, &qword_100228830, &qword_1001D4FC0, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228900);
  }

  return result;
}

unint64_t sub_10003B224()
{
  result = qword_100228908;
  if (!qword_100228908)
  {
    sub_100011DF4(&qword_100228810, &qword_1001D4FA0);
    sub_10003E3A8(&qword_100228910, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_10003E3A8(&qword_100228918, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228908);
  }

  return result;
}

unint64_t sub_10003B314()
{
  result = qword_100228920;
  if (!qword_100228920)
  {
    sub_100011DF4(&qword_100228808, &qword_1001D4F98);
    sub_10003B3CC();
    sub_100024B78(&qword_100228930, &qword_1002287F8, &qword_1001D4F88, &protocol conformance descriptor for PredicateExpressions.NilLiteral<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228920);
  }

  return result;
}

unint64_t sub_10003B3CC()
{
  result = qword_100228928;
  if (!qword_100228928)
  {
    sub_100011DF4(&qword_100228800, &qword_1001D4F90);
    sub_100024B78(&qword_1002288E8, &qword_100228830, &qword_1001D4FC0, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228928);
  }

  return result;
}

uint64_t *sub_10003B47C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_10003B4FC()
{
  result = qword_100228948;
  if (!qword_100228948)
  {
    sub_100011DF4(&qword_1002288B0, &qword_1001D5FC0);
    sub_10003E3A8(&qword_100228950, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228948);
  }

  return result;
}

uint64_t *sub_10003B610(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_10003B674()
{
  result = qword_100228960;
  if (!qword_100228960)
  {
    sub_100011DF4(&unk_100230200, &qword_1001D4F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228960);
  }

  return result;
}

unint64_t sub_10003B7BC()
{
  result = qword_100228998;
  if (!qword_100228998)
  {
    sub_100011DF4(&qword_100228990, &qword_1001D5160);
    sub_10003AEA4();
    sub_10003B848();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228998);
  }

  return result;
}

unint64_t sub_10003B848()
{
  result = qword_1002289A0;
  if (!qword_1002289A0)
  {
    sub_100011DF4(&qword_100228978, &qword_1001D5158);
    sub_10003B8D4();
    sub_10003B984();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002289A0);
  }

  return result;
}

unint64_t sub_10003B8D4()
{
  result = qword_1002289A8;
  if (!qword_1002289A8)
  {
    sub_100011DF4(&qword_100228970, &qword_1001D5150);
    sub_100024B78(&qword_1002288E8, &qword_100228830, &qword_1001D4FC0, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002289A8);
  }

  return result;
}

unint64_t sub_10003B984()
{
  result = qword_1002289B0;
  if (!qword_1002289B0)
  {
    sub_100011DF4(&qword_100228968, &qword_1001D5148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002289B0);
  }

  return result;
}

void sub_10003BA2C()
{
  v1 = *(*v0 + 16);
  v2 = v1 - 2;
  if (v1 >= 2)
  {
    v3 = 0;
    while (1)
    {
      swift_stdlib_random();
      v5 = (0 * v1) >> 64;
      if (v1)
      {
        if (-v1 % v1)
        {
          while (1)
          {
            swift_stdlib_random();
          }
        }
      }

      v7 = v3 + v5;
      if (__OFADD__(v3, v5))
      {
        break;
      }

      if (v3 != v7)
      {
        v8 = *v0;
        v9 = *(*v0 + 16);
        if (v3 >= v9)
        {
          goto LABEL_20;
        }

        if (v7 >= v9)
        {
          goto LABEL_21;
        }

        v10 = *(v8 + 32 + 8 * v3);
        v11 = *(v8 + 32 + 8 * v7);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v0 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v8 = sub_10003BBE4(v8);
          *v0 = v8;
        }

        if (v3 >= *(v8 + 16))
        {
          goto LABEL_22;
        }

        *(v8 + 8 * v3 + 32) = v11;

        sub_1001D2080();
        v13 = *v0;
        v14 = swift_isUniquelyReferenced_nonNull_native();
        *v0 = v13;
        if ((v14 & 1) == 0)
        {
          v13 = sub_10003BBE4(v13);
          *v0 = v13;
        }

        if (v7 >= *(v13 + 16))
        {
          goto LABEL_23;
        }

        *(v13 + 8 * v7 + 32) = v10;

        sub_1001D2080();
      }

      --v1;
      if (v3++ == v2)
      {
        return;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }
}

void *sub_10003BBF8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1000F884C(a1, a2, &v15);
  v9 = v16;
  if (v16 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = v16;
  }

  if (v10 < 0)
  {
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v15)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    sub_1001D0720();
    result = swift_arrayInitWithCopy();
  }

  if (v9 >= a4 || (v19 & 1) != 0)
  {
    sub_10003D9A0((a5 + 16), v10, a5);
  }

  if (a4 - v10 >= v18)
  {
    v12 = v18;
  }

  else
  {
    v12 = a4 - v10;
  }

  v13 = v10 + v12;
  if (__OFADD__(v10, v12))
  {
    goto LABEL_28;
  }

  if (v13 < v10)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((v12 & 0x8000000000000000) == 0)
  {
    v14 = v17;
    if (a3)
    {
      sub_1001D0720();
      if (!v14)
      {
        goto LABEL_25;
      }
    }

    else if (!v17)
    {
LABEL_25:
      sub_10003D9A0((a5 + 16), v13, a5);
    }

    if (v12)
    {
      sub_1001D0720();
      swift_arrayInitWithCopy();
    }

    goto LABEL_25;
  }

LABEL_30:
  __break(1u);
  __break(1u);
  return result;
}

void *sub_10003BD80(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_1001D2190();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_10003AB60(v3, 0);
  sub_10003BE14((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_10003BE14(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1001D2190();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1001D2190();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100024B78(&qword_100228C28, &qword_100228C20, &qword_1001D53D8, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_100011AC0(&qword_100228C20, &qword_1001D53D8);
            v9 = sub_10003BFB8(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        _s8SchemaV2O4NodeCMa(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_10003BFB8(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1001D2040();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_10003C038;
  }

  __break(1u);
  return result;
}

unint64_t sub_10003C078()
{
  result = qword_100228A28;
  if (!qword_100228A28)
  {
    sub_100011DF4(&qword_100228A20, &qword_1001D51F8);
    sub_10003C104();
    sub_10003C240();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228A28);
  }

  return result;
}

unint64_t sub_10003C104()
{
  result = qword_100228A30;
  if (!qword_100228A30)
  {
    sub_100011DF4(&qword_100228A00, &qword_1001D51A0);
    sub_10003C190();
    sub_10003B064();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228A30);
  }

  return result;
}

unint64_t sub_10003C190()
{
  result = qword_100228A38;
  if (!qword_100228A38)
  {
    sub_100011DF4(&qword_1002289F8, &qword_1001D5198);
    sub_100024B78(&qword_100228A40, &qword_1002289F0, &qword_1001D5190, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228A38);
  }

  return result;
}

unint64_t sub_10003C240()
{
  result = qword_100228A48;
  if (!qword_100228A48)
  {
    sub_100011DF4(&qword_1002289E8, &qword_1001D5188);
    sub_10003C2CC();
    sub_10003B224();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228A48);
  }

  return result;
}

unint64_t sub_10003C2CC()
{
  result = qword_100228A50;
  if (!qword_100228A50)
  {
    sub_100011DF4(&qword_1002289E0, &qword_1001D5180);
    sub_100024B78(&qword_100228A40, &qword_1002289F0, &qword_1001D5190, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228A50);
  }

  return result;
}

unint64_t sub_10003C3C4()
{
  result = qword_100228A78;
  if (!qword_100228A78)
  {
    sub_100011DF4(&qword_100228A70, &qword_1001D5200);
    sub_10003B224();
    sub_10003C2CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228A78);
  }

  return result;
}

uint64_t sub_10003C450(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ValidatedAttestation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003C4B4(uint64_t a1)
{
  v2 = type metadata accessor for ValidatedAttestation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10003C518()
{
  result = qword_100228A90;
  if (!qword_100228A90)
  {
    sub_100011DF4(&qword_100228A88, &qword_1001E1CA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228A90);
  }

  return result;
}

unint64_t sub_10003C5C0()
{
  result = qword_100228A98;
  if (!qword_100228A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228A98);
  }

  return result;
}

uint64_t sub_10003C678(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1001D2470() & 1;
  }
}

unint64_t sub_10003C6D0()
{
  result = qword_100228AA0;
  if (!qword_100228AA0)
  {
    sub_100011DF4(&qword_100228AA8, &qword_1001D5BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228AA0);
  }

  return result;
}

unint64_t sub_10003C7CC()
{
  result = qword_100228AB0;
  if (!qword_100228AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228AB0);
  }

  return result;
}

unint64_t sub_10003C880()
{
  result = qword_100228AB8;
  if (!qword_100228AB8)
  {
    sub_100011DF4(&qword_100228A88, &qword_1001E1CA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228AB8);
  }

  return result;
}

uint64_t sub_10003C904(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ValidatedAttestation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10003C968()
{
  result = qword_100228AD0;
  if (!qword_100228AD0)
  {
    sub_100011DF4(&qword_100228AC8, &unk_1001D5360);
    sub_10003C9F4();
    sub_10003C190();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228AD0);
  }

  return result;
}

unint64_t sub_10003C9F4()
{
  result = qword_100228AD8;
  if (!qword_100228AD8)
  {
    sub_100011DF4(&qword_100228AC0, &qword_1001D5358);
    sub_10003AC1C();
    sub_10003B674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228AD8);
  }

  return result;
}

void sub_10003CA80()
{
  v32 = sub_1001CFB10();
  v0 = *(v32 - 8);
  __chkstk_darwin(v32);
  v2 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = [objc_opt_self() defaultManager];
  sub_1001CFA30();
  v3 = sub_1001D17A0();

  v4 = [v31 fileExistsAtPath:v3];

  if (v4)
  {
    sub_1001CFA80(v5);
    v7 = v6;
    v33 = 0;
    v8 = [v31 contentsOfDirectoryAtURL:v6 includingPropertiesForKeys:0 options:0 error:&v33];

    v9 = v33;
    if (v8)
    {
      v10 = sub_1001D19D0();
      v11 = v9;

      v12 = *(v10 + 16);
      if (v12)
      {
        v15 = *(v0 + 16);
        v13 = v0 + 16;
        v14 = v15;
        v16 = *(v13 + 64);
        v30 = v10;
        v17 = v10 + ((v16 + 32) & ~v16);
        v18 = *(v13 + 56);
        v19 = (v13 - 8);
        v15(v2, v17, v32);
        while (1)
        {
          sub_1001CFA70();
          v35._object = 0x80000001001E3610;
          v35._countAndFlagsBits = 0xD00000000000001DLL;
          v21 = sub_1001D18E0(v35);

          if (v21)
          {
            sub_10014D874(v2);
          }

          v20 = v32;
          (*v19)(v2, v32);
          v17 += v18;
          if (!--v12)
          {
            break;
          }

          v14(v2, v17, v20);
        }
      }
    }

    else
    {
      v23 = v33;
      sub_1001CFA20();

      swift_willThrow();
      if (qword_1002276A0 != -1)
      {
        swift_once();
      }

      v24 = sub_1001D0E60();
      sub_10003A37C(v24, qword_1002286F8);
      swift_errorRetain();
      v25 = sub_1001D0E50();
      v26 = sub_1001D1DE0();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v27 = 138412290;
        swift_errorRetain();
        v29 = _swift_stdlib_bridgeErrorToNSError();
        *(v27 + 4) = v29;
        *v28 = v29;
        _os_log_impl(&_mh_execute_header, v25, v26, "error obtaining contents of stores directory error=%@", v27, 0xCu);
        sub_100011F00(v28, &unk_1002301D0, &qword_1001D4F50);
      }

      else
      {
      }
    }
  }

  else
  {
    v22 = v31;
  }
}

void *sub_10003CEB0(uint64_t a1, char *a2)
{
  v4 = sub_1001D15E0();
  __chkstk_darwin(v4 - 8);
  v50 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001D15F0();
  v55 = *(v6 - 8);
  __chkstk_darwin(v6);
  v57 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001CFB10();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v49 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v45 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v45 - v16;
  __chkstk_darwin(v15);
  v19 = &v45 - v18;
  v58[0] = 0x5F7365726F7453;
  v58[1] = 0xE700000000000000;
  v56 = a1;
  v59._countAndFlagsBits = sub_1001D02B0();
  sub_1001D18B0(v59);

  v54 = a2;
  sub_1001CFA90();

  sub_10003CA80();
  v53 = v19;
  sub_1001CFA90();
  if (qword_1002276A0 != -1)
  {
    swift_once();
  }

  v20 = sub_1001D0E60();
  v21 = sub_10003A37C(v20, qword_1002286F8);
  v22 = *(v9 + 16);
  v22(v14, v17, v8);
  v48 = v21;
  v23 = sub_1001D0E50();
  v24 = v14;
  v25 = sub_1001D1E00();
  v26 = os_log_type_enabled(v23, v25);
  v52 = v9;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v47 = v17;
    v28 = v27;
    v45 = swift_slowAlloc();
    v58[0] = v45;
    *v28 = 136315138;
    sub_10003E3A8(&qword_1002302F0, 255, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v29 = sub_1001D23A0();
    v46 = v22;
    v30 = v6;
    v32 = v31;
    v51 = *(v9 + 8);
    v51(v24, v8);
    v33 = sub_1000954E0(v29, v32, v58);
    v6 = v30;
    v22 = v46;

    *(v28 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v23, v25, "attestation store path: %s", v28, 0xCu);
    sub_100011CF0(v45);

    v17 = v47;
  }

  else
  {

    v51 = *(v9 + 8);
    v51(v24, v8);
  }

  v22(v49, v17, v8);
  sub_1001D15D0();
  v34 = v57;
  sub_1001D1600();
  sub_10003E300();
  sub_1001D16D0();
  sub_1001D1630();
  sub_1001D1550();
  sub_10003E354();
  sub_100011AC0(&qword_100228C80, &unk_1001D5400);
  v35 = v55;
  v36 = (*(v55 + 80) + 32) & ~*(v55 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1001D39F0;
  (*(v35 + 16))(v37 + v36, v34, v6);

  v38 = sub_1001D1540();
  type metadata accessor for AttestationStore();
  v39 = swift_allocObject();
  sub_1001D1510();
  swift_allocObject();

  sub_1001D1520();
  sub_1001D1620();
  swift_allocObject();
  v40 = sub_1001D1610();

  v41 = v51;
  v51(v54, v8);
  v42 = sub_1001D02E0();
  (*(*(v42 - 8) + 8))(v56, v42);
  (*(v35 + 8))(v34, v6);
  v41(v17, v8);
  v41(v53, v8);
  v43 = sub_10003E3A8(&qword_100228C88, 255, &type metadata accessor for DefaultSerialModelExecutor, &protocol conformance descriptor for DefaultSerialModelExecutor);
  result = v39;
  v39[2] = v40;
  v39[3] = v43;
  v39[4] = v38;
  return result;
}

uint64_t sub_10003D6F0(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v18 = a1;
  v2 = sub_1001D02E0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001CFB10();
  v19 = *(v6 - 8);
  v20 = v6;
  v7 = __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v18 - v10;
  v12 = enum case for TC2Environment.production(_:);
  v13 = *(v3 + 104);
  v13(v5, enum case for TC2Environment.production(_:), v2);
  v22 = 0x5F7365726F7453;
  v23 = 0xE700000000000000;
  v24._countAndFlagsBits = sub_1001D02B0();
  sub_1001D18B0(v24);

  sub_1001CFA90();

  v14 = *(v3 + 8);
  v14(v5, v2);
  v13(v5, v12, v2);
  v22 = 0x5F7365726F7453;
  v23 = 0xE700000000000000;
  v25._countAndFlagsBits = sub_1001D02B0();
  sub_1001D18B0(v25);

  sub_1001CFA90();

  v14(v5, v2);
  sub_10014D240(v11, v9);
  v15 = v20;
  v16 = *(v19 + 8);
  v16(v9, v20);
  return (v16)(v11, v15);
}

uint64_t *sub_10003D9A0(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = result[1];
  v3 = result[2];
  v5 = *result;
  if (v4 == a2)
  {
    return a3;
  }

  v6 = v3 + v4;
  if (__OFADD__(v3, v4))
  {
    __break(1u);
  }

  else
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      v7 = __OFSUB__(v6, v5);
      if (v6 < v5)
      {
        return a3;
      }

      v6 -= v5;
      if (!v7)
      {
        return a3;
      }

      __break(1u);
    }

    if ((v6 & 0x8000000000000000) == 0 || !__OFADD__(v6, v5))
    {
      return a3;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10003DA34()
{
  result = qword_100228B08;
  if (!qword_100228B08)
  {
    sub_100011DF4(&qword_100228B00, &qword_1001D5370);
    sub_10003C968();
    sub_10003C240();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228B08);
  }

  return result;
}

unint64_t sub_10003DAC0()
{
  result = qword_100228B28;
  if (!qword_100228B28)
  {
    sub_100011DF4(&qword_100228B20, &qword_1001D5380);
    sub_10003B3CC();
    sub_10003DB4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228B28);
  }

  return result;
}

unint64_t sub_10003DB4C()
{
  result = qword_100228B30;
  if (!qword_100228B30)
  {
    sub_100011DF4(&qword_100228B18, &qword_1001D5378);
    sub_10003B4FC();
    sub_10003DBD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228B30);
  }

  return result;
}

unint64_t sub_10003DBD8()
{
  result = qword_100228B38;
  if (!qword_100228B38)
  {
    sub_100011DF4(&qword_1002288B0, &qword_1001D5FC0);
    sub_10003E3A8(&qword_100228B40, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228B38);
  }

  return result;
}

unint64_t sub_10003DCB4()
{
  result = qword_100228BA8;
  if (!qword_100228BA8)
  {
    sub_100011DF4(&qword_100228A88, &qword_1001E1CA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228BA8);
  }

  return result;
}

unint64_t sub_10003DD30()
{
  result = qword_100228BD8;
  if (!qword_100228BD8)
  {
    sub_100011DF4(&qword_100228BD0, &qword_1001D53D0);
    sub_10003DDBC();
    sub_10003C240();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228BD8);
  }

  return result;
}

unint64_t sub_10003DDBC()
{
  result = qword_100228BE0;
  if (!qword_100228BE0)
  {
    sub_100011DF4(&qword_100228B90, &qword_1001D53C8);
    sub_10003DE48();
    sub_10003C968();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228BE0);
  }

  return result;
}

unint64_t sub_10003DE48()
{
  result = qword_100228BE8;
  if (!qword_100228BE8)
  {
    sub_100011DF4(&qword_100228B88, &qword_1001D53C0);
    sub_10003DED4();
    sub_10003E03C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228BE8);
  }

  return result;
}

unint64_t sub_10003DED4()
{
  result = qword_100228BF0;
  if (!qword_100228BF0)
  {
    sub_100011DF4(&qword_100228B80, &qword_1001D53B8);
    sub_10003DF8C();
    sub_100024B78(&qword_100228C00, &qword_100228B70, &qword_1001D53A8, &protocol conformance descriptor for PredicateExpressions.NilLiteral<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228BF0);
  }

  return result;
}

unint64_t sub_10003DF8C()
{
  result = qword_100228BF8;
  if (!qword_100228BF8)
  {
    sub_100011DF4(&qword_100228B78, &qword_1001D53B0);
    sub_100024B78(&qword_100228A40, &qword_1002289F0, &qword_1001D5190, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228BF8);
  }

  return result;
}

unint64_t sub_10003E03C()
{
  result = qword_100228C08;
  if (!qword_100228C08)
  {
    sub_100011DF4(&qword_100228B68, &qword_1001D53A0);
    sub_10003DF8C();
    sub_10003E0C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228C08);
  }

  return result;
}

unint64_t sub_10003E0C8()
{
  result = qword_100228C10;
  if (!qword_100228C10)
  {
    sub_100011DF4(&qword_100228B60, &qword_1001D5398);
    sub_10003C880();
    sub_10003C518();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228C10);
  }

  return result;
}

unint64_t sub_10003E154()
{
  result = qword_100228C48;
  if (!qword_100228C48)
  {
    sub_100011DF4(&qword_100228C40, &qword_1001D53F0);
    sub_10003E1E0();
    sub_10003C240();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228C48);
  }

  return result;
}

unint64_t sub_10003E1E0()
{
  result = qword_100228C50;
  if (!qword_100228C50)
  {
    sub_100011DF4(&qword_100228C38, &qword_1001D53E8);
    sub_10003E03C();
    sub_10003C968();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228C50);
  }

  return result;
}

unint64_t sub_10003E26C()
{
  result = qword_100228C68;
  if (!qword_100228C68)
  {
    sub_100011DF4(&qword_100228C60, &qword_1001D53F8);
    sub_10003AEA4();
    sub_10003B314();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228C68);
  }

  return result;
}

unint64_t sub_10003E300()
{
  result = qword_100228C70;
  if (!qword_100228C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228C70);
  }

  return result;
}

unint64_t sub_10003E354()
{
  result = qword_100228C78;
  if (!qword_100228C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228C78);
  }

  return result;
}

uint64_t sub_10003E3A8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_10003E46C()
{
  sub_100011AC0(&qword_100228CA0, &unk_1001D5470);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1001D5410;
  v1 = sub_10003E5EC();
  *(v0 + 32) = &_s8SchemaV1ON;
  *(v0 + 40) = v1;
  v2 = sub_10003E300();
  *(v0 + 48) = &_s8SchemaV2ON;
  *(v0 + 56) = v2;
  return v0;
}

uint64_t sub_10003E4DC()
{
  sub_100011AC0(&qword_100228C90, &qword_1001D5468);
  v0 = sub_1001D1530();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001D39F0;
  v4 = (v3 + v2);
  v5 = sub_10003E5EC();
  v6 = sub_10003E300();
  *v4 = &_s8SchemaV1ON;
  v4[1] = v5;
  v4[2] = &_s8SchemaV2ON;
  v4[3] = v6;
  (*(v1 + 104))(v4, enum case for MigrationStage.lightweight(_:), v0);
  return v3;
}

unint64_t sub_10003E5EC()
{
  result = qword_100228C98;
  if (!qword_100228C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228C98);
  }

  return result;
}

uint64_t sub_10003E640()
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EE8, _s8SchemaV1O8WorkloadCMa, &unk_1001D56A8);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228F00, _s8SchemaV1O8WorkloadCMa, &unk_1001D56C4);
  sub_1001D15B0();

  return v0;
}

uint64_t sub_10003E744@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100042B94(&qword_100228EE8, _s8SchemaV1O8WorkloadCMa, &unk_1001D56A8);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228F00, _s8SchemaV1O8WorkloadCMa, &unk_1001D56C4);
  sub_1001D15B0();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10003E850(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EE8, _s8SchemaV1O8WorkloadCMa, &unk_1001D56A8);
  sub_1001CFE80();
}

uint64_t sub_10003E928()
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EE8, _s8SchemaV1O8WorkloadCMa, &unk_1001D56A8);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228F00, _s8SchemaV1O8WorkloadCMa, &unk_1001D56C4);
  sub_1001D15B0();

  return v0;
}

uint64_t sub_10003EA2C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100042B94(&qword_100228EE8, _s8SchemaV1O8WorkloadCMa, &unk_1001D56A8);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228F00, _s8SchemaV1O8WorkloadCMa, &unk_1001D56C4);
  sub_1001D15B0();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10003EB38(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EE8, _s8SchemaV1O8WorkloadCMa, &unk_1001D56A8);
  sub_1001CFE80();
}

uint64_t sub_10003EC10()
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EE8, _s8SchemaV1O8WorkloadCMa, &unk_1001D56A8);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228F00, _s8SchemaV1O8WorkloadCMa, &unk_1001D56C4);
  sub_1001D15B0();

  return v0;
}

uint64_t sub_10003ED14@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100042B94(&qword_100228EE8, _s8SchemaV1O8WorkloadCMa, &unk_1001D56A8);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228F00, _s8SchemaV1O8WorkloadCMa, &unk_1001D56C4);
  sub_1001D15B0();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10003EE20(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EE8, _s8SchemaV1O8WorkloadCMa, &unk_1001D56A8);
  sub_1001CFE80();
}

uint64_t sub_10003EEF8()
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EE8, _s8SchemaV1O8WorkloadCMa, &unk_1001D56A8);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228F00, _s8SchemaV1O8WorkloadCMa, &unk_1001D56C4);
  sub_1001D15B0();

  return v0;
}

uint64_t sub_10003EFFC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100042B94(&qword_100228EE8, _s8SchemaV1O8WorkloadCMa, &unk_1001D56A8);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228F00, _s8SchemaV1O8WorkloadCMa, &unk_1001D56C4);
  sub_1001D15B0();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10003F108(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EE8, _s8SchemaV1O8WorkloadCMa, &unk_1001D56A8);
  sub_1001CFE80();
}

uint64_t sub_10003F1E0()
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EE8, _s8SchemaV1O8WorkloadCMa, &unk_1001D56A8);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228F00, _s8SchemaV1O8WorkloadCMa, &unk_1001D56C4);
  sub_1001D15B0();

  return v1;
}

uint64_t sub_10003F2E4@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EE8, _s8SchemaV1O8WorkloadCMa, &unk_1001D56A8);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228F00, _s8SchemaV1O8WorkloadCMa, &unk_1001D56C4);
  sub_1001D15B0();

  *a2 = v4;
  return result;
}

uint64_t sub_10003F3F0(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EE8, _s8SchemaV1O8WorkloadCMa, &unk_1001D56A8);
  sub_1001CFE80();
}

uint64_t sub_10003F4C0(uint64_t a1, char a2)
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228F00, _s8SchemaV1O8WorkloadCMa, &unk_1001D56C4);
  sub_1001D15C0();
}

uint64_t sub_10003F568()
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EE8, _s8SchemaV1O8WorkloadCMa, &unk_1001D56A8);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228F00, _s8SchemaV1O8WorkloadCMa, &unk_1001D56C4);
  sub_100042B94(&qword_100228910, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1001D15B0();
}

uint64_t sub_10003F6A0()
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EE8, _s8SchemaV1O8WorkloadCMa, &unk_1001D56A8);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228F00, _s8SchemaV1O8WorkloadCMa, &unk_1001D56C4);
  sub_100042B94(&qword_100228910, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1001D15B0();
}

uint64_t sub_10003F7D8(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1001CFD60();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v7, a1, v4);
  v8 = *a2;
  v13 = v8;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  sub_100042B94(&qword_100228EE8, _s8SchemaV1O8WorkloadCMa, &unk_1001D56A8);
  sub_1001CFE80();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10003F960()
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EE8, _s8SchemaV1O8WorkloadCMa, &unk_1001D56A8);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228F00, _s8SchemaV1O8WorkloadCMa, &unk_1001D56C4);
  sub_1000439E8(&qword_1002287F0, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  sub_1001D15B0();

  return v0;
}

uint64_t sub_10003FA8C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100042B94(&qword_100228EE8, _s8SchemaV1O8WorkloadCMa, &unk_1001D56A8);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228F00, _s8SchemaV1O8WorkloadCMa, &unk_1001D56C4);
  sub_1000439E8(&qword_1002287F0, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  sub_1001D15B0();

  *a2 = v4;
  return result;
}

uint64_t sub_10003FBC0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228F00, _s8SchemaV1O8WorkloadCMa, &unk_1001D56C4);
  sub_1000439E8(&qword_100228960, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  sub_1001D15C0();
}

uint64_t sub_10003FC90()
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EE8, _s8SchemaV1O8WorkloadCMa, &unk_1001D56A8);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228F00, _s8SchemaV1O8WorkloadCMa, &unk_1001D56C4);
  sub_1001D15B0();

  return v0;
}

uint64_t sub_10003FD94@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100042B94(&qword_100228EE8, _s8SchemaV1O8WorkloadCMa, &unk_1001D56A8);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228F00, _s8SchemaV1O8WorkloadCMa, &unk_1001D56C4);
  sub_1001D15B0();

  *a2 = v4;
  return result;
}

uint64_t sub_10003FEA0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EE8, _s8SchemaV1O8WorkloadCMa, &unk_1001D56A8);
  sub_1001CFE80();
}

uint64_t sub_10003FF64(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228F00, _s8SchemaV1O8WorkloadCMa, &unk_1001D56C4);
  sub_1001D15C0();
}

uint64_t sub_10004000C()
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EE8, _s8SchemaV1O8WorkloadCMa, &unk_1001D56A8);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228F00, _s8SchemaV1O8WorkloadCMa, &unk_1001D56C4);
  sub_100043914(&qword_100228948, &qword_100228950, &protocol conformance descriptor for UUID, &protocol conformance descriptor for <A> A?);
  sub_1001D15B0();
}

uint64_t sub_10004014C()
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EE8, _s8SchemaV1O8WorkloadCMa, &unk_1001D56A8);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228F00, _s8SchemaV1O8WorkloadCMa, &unk_1001D56C4);
  sub_100043914(&qword_100228948, &qword_100228950, &protocol conformance descriptor for UUID, &protocol conformance descriptor for <A> A?);
  sub_1001D15B0();
}

uint64_t sub_10004028C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100011AC0(&qword_1002288B0, &qword_1001D5FC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-v5];
  sub_100043820(a1, &v9[-v5]);
  v7 = *a2;
  v12 = v7;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  sub_100042B94(&qword_100228EE8, _s8SchemaV1O8WorkloadCMa, &unk_1001D56A8);
  sub_1001CFE80();

  return sub_1000438AC(v6);
}

uint64_t sub_1000403BC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228F00, _s8SchemaV1O8WorkloadCMa, &unk_1001D56C4);
  sub_100043914(&qword_100228B38, &qword_100228B40, &protocol conformance descriptor for UUID, &protocol conformance descriptor for <A> A?);
  sub_1001D15C0();
}

void *sub_1000404C0(__int128 *a1)
{
  *(v1 + 48) = sub_100011AC0(&qword_100228F40, &qword_1001D5A38);
  sub_100042B94(&qword_100228F00, _s8SchemaV1O8WorkloadCMa, &unk_1001D56C4);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  sub_10003B47C((v1 + 24));
  sub_1001D1570();
  sub_100024DC8((v1 + 24), *(v1 + 48));
  swift_getKeyPath();
  sub_100011AC0(&unk_100230200, &qword_1001D4F80);
  sub_1000439E8(&qword_100228960, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  sub_1001D1480();

  *(v1 + 16) = 1;
  sub_1001CFEA0();
  *(v1 + 16) = 0;
  swift_beginAccess();
  sub_100011CF0((v1 + 24));
  sub_1000446FC(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_1000407C8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_100042B94(&qword_100228F00, _s8SchemaV1O8WorkloadCMa, &unk_1001D56C4);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

uint64_t sub_100040848()
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EC8, _s8SchemaV1O4NodeCMa, &unk_1001D561C);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228EE0, _s8SchemaV1O4NodeCMa, &unk_1001D5638);
  sub_1001D15B0();

  return v0;
}

uint64_t sub_10004094C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100042B94(&qword_100228EC8, _s8SchemaV1O4NodeCMa, &unk_1001D561C);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228EE0, _s8SchemaV1O4NodeCMa, &unk_1001D5638);
  sub_1001D15B0();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100040A58(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EC8, _s8SchemaV1O4NodeCMa, &unk_1001D561C);
  sub_1001CFE80();
}

uint64_t sub_100040B30()
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EC8, _s8SchemaV1O4NodeCMa, &unk_1001D561C);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228EE0, _s8SchemaV1O4NodeCMa, &unk_1001D5638);
  sub_1001D15B0();

  return v0;
}

uint64_t sub_100040C34@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100042B94(&qword_100228EC8, _s8SchemaV1O4NodeCMa, &unk_1001D561C);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228EE0, _s8SchemaV1O4NodeCMa, &unk_1001D5638);
  sub_1001D15B0();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100040D40(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EC8, _s8SchemaV1O4NodeCMa, &unk_1001D561C);
  sub_1001CFE80();
}

uint64_t sub_100040E24(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EC8, _s8SchemaV1O4NodeCMa, &unk_1001D561C);
  sub_1001CFE80();
}

uint64_t sub_100040EFC()
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EC8, _s8SchemaV1O4NodeCMa, &unk_1001D561C);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228EE0, _s8SchemaV1O4NodeCMa, &unk_1001D5638);
  sub_100042B94(&qword_100228910, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1001D15B0();
}

uint64_t sub_100041034()
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EC8, _s8SchemaV1O4NodeCMa, &unk_1001D561C);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228EE0, _s8SchemaV1O4NodeCMa, &unk_1001D5638);
  sub_100042B94(&qword_100228910, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1001D15B0();
}

uint64_t sub_10004116C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1001CFD60();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v7, a1, v4);
  v8 = *a2;
  v13 = v8;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  sub_100042B94(&qword_100228EC8, _s8SchemaV1O4NodeCMa, &unk_1001D561C);
  sub_1001CFE80();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1000412F4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  swift_getKeyPath();
  sub_100042B94(a4, a5, a6);
  sub_100042B94(&qword_100228918, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1001D15C0();
}

uint64_t sub_1000413C4(uint64_t a1)
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EC8, _s8SchemaV1O4NodeCMa, &unk_1001D561C);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228EE0, _s8SchemaV1O4NodeCMa, &unk_1001D5638);
  sub_10003C7CC();
  sub_1001D15B0();

  return v1;
}

double sub_1000414C4@<D0>(void *a1@<X0>, _OWORD *a3@<X8>)
{
  *&v5 = *a1;
  swift_getKeyPath();
  sub_100042B94(&qword_100228EC8, _s8SchemaV1O4NodeCMa, &unk_1001D561C);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228EE0, _s8SchemaV1O4NodeCMa, &unk_1001D5638);
  sub_10003C7CC();
  sub_1001D15B0();

  result = *&v5;
  *a3 = v5;
  return result;
}

uint64_t sub_1000415D0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EC8, _s8SchemaV1O4NodeCMa, &unk_1001D561C);
  sub_1001CFE80();
}

uint64_t sub_1000416A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EE0, _s8SchemaV1O4NodeCMa, &unk_1001D5638);
  sub_10003C5C0();
  sub_1001D15C0();
}

uint64_t sub_10004175C()
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EC8, _s8SchemaV1O4NodeCMa, &unk_1001D561C);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228EE0, _s8SchemaV1O4NodeCMa, &unk_1001D5638);
  sub_1001D15B0();

  return v0;
}

uint64_t sub_100041860@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100042B94(&qword_100228EC8, _s8SchemaV1O4NodeCMa, &unk_1001D561C);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228EE0, _s8SchemaV1O4NodeCMa, &unk_1001D5638);
  sub_1001D15B0();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10004196C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EC8, _s8SchemaV1O4NodeCMa, &unk_1001D561C);
  sub_1001CFE80();
}

uint64_t sub_100041A44()
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EC8, _s8SchemaV1O4NodeCMa, &unk_1001D561C);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228EE0, _s8SchemaV1O4NodeCMa, &unk_1001D5638);
  sub_1001D15B0();

  return v0;
}

uint64_t sub_100041B48@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100042B94(&qword_100228EC8, _s8SchemaV1O4NodeCMa, &unk_1001D561C);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228EE0, _s8SchemaV1O4NodeCMa, &unk_1001D5638);
  sub_1001D15B0();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100041C54(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EC8, _s8SchemaV1O4NodeCMa, &unk_1001D561C);
  sub_1001CFE80();
}

uint64_t sub_100041D2C()
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EC8, _s8SchemaV1O4NodeCMa, &unk_1001D561C);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228EE0, _s8SchemaV1O4NodeCMa, &unk_1001D5638);
  sub_1001D15B0();

  return v0;
}

uint64_t sub_100041E30@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100042B94(&qword_100228EC8, _s8SchemaV1O4NodeCMa, &unk_1001D561C);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228EE0, _s8SchemaV1O4NodeCMa, &unk_1001D5638);
  sub_1001D15B0();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100041F3C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EC8, _s8SchemaV1O4NodeCMa, &unk_1001D561C);
  sub_1001CFE80();
}

uint64_t sub_100042014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  swift_getKeyPath();
  sub_100042B94(a5, a6, a7);
  sub_1001D15C0();
}

uint64_t sub_1000420B4()
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EC8, _s8SchemaV1O4NodeCMa, &unk_1001D561C);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228EE0, _s8SchemaV1O4NodeCMa, &unk_1001D5638);
  sub_1000443D0(&qword_100228AA0, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
  sub_1001D15B0();

  return v0;
}

double sub_1000421E0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100042B94(&qword_100228EC8, _s8SchemaV1O4NodeCMa, &unk_1001D561C);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228EE0, _s8SchemaV1O4NodeCMa, &unk_1001D5638);
  sub_1000443D0(&qword_100228AA0, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
  sub_1001D15B0();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100042314(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EC8, _s8SchemaV1O4NodeCMa, &unk_1001D561C);
  sub_1001CFE80();
}

uint64_t sub_1000423EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EE0, _s8SchemaV1O4NodeCMa, &unk_1001D5638);
  sub_1000443D0(&qword_100228F70, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
  sub_1001D15C0();
}

void *sub_1000424C8(__int128 *a1)
{
  *(v1 + 48) = sub_100011AC0(&qword_100228F78, &qword_1001D5BC8);
  sub_100042B94(&qword_100228EE0, _s8SchemaV1O4NodeCMa, &unk_1001D5638);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  sub_10003B47C((v1 + 24));
  sub_1001D1570();
  *(v1 + 16) = 1;
  sub_1001CFEA0();
  *(v1 + 16) = 0;
  swift_beginAccess();
  sub_100011CF0((v1 + 24));
  sub_1000446FC(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_100042624(uint64_t *a1)
{
  sub_100011CF0((v1 + 24));
  v3 = *a1;
  v4 = sub_1001CFEB0();
  (*(*(v4 - 8) + 8))(v1 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1000426F4(uint64_t a1)
{
  result = sub_1001CFEB0();
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

Swift::Int sub_1000427EC(uint64_t a1, uint64_t a2)
{
  sub_1001D2580();
  sub_1001D1740();
  return sub_1001D25C0();
}

Swift::Int sub_1000428C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1001D2580();
  sub_1001D1740();
  return sub_1001D25C0();
}

uint64_t sub_10004299C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_100042B94(&qword_100228EE0, _s8SchemaV1O4NodeCMa, &unk_1001D5638);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

uint64_t sub_100042A1C()
{
  sub_100011AC0(&qword_100228F80, &unk_1001D5BD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1001D5410;
  v1 = _s8SchemaV1O8WorkloadCMa(0);
  v2 = sub_100042B94(&qword_100228F00, _s8SchemaV1O8WorkloadCMa, &unk_1001D56C4);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = _s8SchemaV1O4NodeCMa(0);
  v4 = sub_100042B94(&qword_100228EE0, _s8SchemaV1O4NodeCMa, &unk_1001D5638);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  return v0;
}

uint64_t sub_100042B94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void (*sub_100042C9C(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_100044698(v1 + 24, v4);
  return sub_100042D2C;
}

uint64_t sub_100042D60(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = swift_allocObject();
  a4(a1);
  return v6;
}

uint64_t sub_100042DF8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  sub_100011CF0((v4 + 24));
  a4(a1, v4 + 24);
  return swift_endAccess();
}

void (*sub_100042E60(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_100044698(v1 + 24, v4);
  return sub_100042D2C;
}

void sub_100042EF0(uint64_t *a1, char a2, void (*a3)(void *, uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 128);
  if (a2)
  {
    sub_100044698(*a1, (v4 + 5));
    swift_beginAccess();
    sub_100011CF0((v5 + 24));
    a3(v4 + 5, v5 + 24);
    swift_endAccess();
    sub_100011CF0(v4);
  }

  else
  {
    swift_beginAccess();
    sub_100011CF0((v5 + 24));
    a3(v4, v5 + 24);
    swift_endAccess();
  }

  free(v4);
}

uint64_t sub_1000431B8()
{
  v19 = sub_1001D1660();
  v0 = *(v19 - 8);
  v1 = v0;
  __chkstk_darwin(v19);
  v17 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100011AC0(&qword_100227A90, &qword_1001D3630);
  v3 = *(v0 + 72);
  v4 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1001D5480;
  v18 = v4;
  swift_getKeyPath();
  v23 = 0u;
  v24 = 0u;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  sub_1001D1650();
  swift_getKeyPath();
  v23 = 0u;
  v24 = 0u;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  sub_1001D1650();
  swift_getKeyPath();
  v23 = 0u;
  v24 = 0u;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  sub_1001D1650();
  swift_getKeyPath();
  v23 = 0u;
  v24 = 0u;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  sub_1001D1650();
  swift_getKeyPath();
  v23 = 0u;
  v24 = 0u;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  sub_1001D1650();
  swift_getKeyPath();
  v23 = 0u;
  v24 = 0u;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  sub_1001D1650();
  swift_getKeyPath();
  *(&v24 + 1) = sub_100011AC0(&qword_100228F20, &qword_1001D5998);
  *&v23 = _swiftEmptyArrayStorage;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  sub_1001D1650();
  swift_getKeyPath();
  v23 = 0u;
  v24 = 0u;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  sub_1001D1650();
  swift_getKeyPath();
  v23 = 0u;
  v24 = 0u;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  sub_1001D1650();
  swift_getKeyPath();
  v23 = 0u;
  v24 = 0u;
  sub_100011AC0(&qword_100228F28, &unk_1001D5A20);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1001D39F0;
  sub_100011AC0(&qword_100228C30, &qword_1001D53E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1001D5490;
  *(v7 + 32) = swift_getKeyPath();
  *(v7 + 40) = swift_getKeyPath();
  *(v7 + 48) = swift_getKeyPath();
  *(v6 + 32) = v7;
  v8 = sub_100011AC0(&qword_100228F30, &qword_1001D5A30);
  swift_allocObject();
  v9 = sub_1001D1670();
  *(&v21 + 1) = v8;
  v10 = v17;
  v22 = sub_10004435C(&qword_100228F38, &qword_100228F30, &qword_1001D5A30);
  *&v20 = v9;
  sub_1001D1650();
  v11 = sub_10000926C(0, 1, 1, _swiftEmptyArrayStorage);
  v13 = *(v11 + 2);
  v12 = *(v11 + 3);
  if (v13 >= v12 >> 1)
  {
    v11 = sub_10000926C((v12 > 1), v13 + 1, 1, v11);
  }

  *(v11 + 2) = v13 + 1;
  v14 = v11;
  (*(v1 + 32))(&v11[v18 + v13 * v3], v10, v19);
  *&v20 = v5;
  sub_10003A3C4(v14);
  return v20;
}

uint64_t sub_100043820(uint64_t a1, uint64_t a2)
{
  v4 = sub_100011AC0(&qword_1002288B0, &qword_1001D5FC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000438AC(uint64_t a1)
{
  v2 = sub_100011AC0(&qword_1002288B0, &qword_1001D5FC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100043914(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100011DF4(&qword_1002288B0, &qword_1001D5FC0);
    sub_100042B94(a2, &type metadata accessor for UUID, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000439E8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100011DF4(&unk_100230200, &qword_1001D4F80);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100043C28()
{
  v22 = sub_1001D1660();
  v0 = *(v22 - 8);
  v1 = v0;
  __chkstk_darwin(v22);
  v20 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100011AC0(&qword_100227A90, &qword_1001D3630);
  v3 = *(v0 + 72);
  v4 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1001D5480;
  v21 = v4;
  swift_getKeyPath();
  v26 = 0u;
  v27 = 0u;
  sub_100011AC0(&qword_100228F48, &qword_1001D62D0);
  sub_1001D16A0();
  *(swift_allocObject() + 16) = xmmword_1001D39F0;
  sub_1001D1690();
  v6 = sub_1001D16B0();
  swift_allocObject();
  v7 = sub_1001D16C0();
  *(&v24 + 1) = v6;
  v25 = sub_100042B94(&qword_100228F50, &type metadata accessor for Schema.Attribute, &protocol conformance descriptor for Schema.Attribute);
  *&v23 = v7;
  sub_1001D1650();
  swift_getKeyPath();
  v26 = 0u;
  v27 = 0u;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  sub_1001D1650();
  swift_getKeyPath();
  v26 = 0u;
  v27 = 0u;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  sub_1001D1650();
  swift_getKeyPath();
  v26 = 0u;
  v27 = 0u;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  sub_1001D1650();
  swift_getKeyPath();
  v26 = 0u;
  v27 = 0u;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  sub_1001D1650();
  swift_getKeyPath();
  v26 = 0u;
  v27 = 0u;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  sub_1001D1650();
  swift_getKeyPath();
  v26 = 0u;
  v27 = 0u;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  sub_1001D1650();
  swift_getKeyPath();
  v26 = 0u;
  v27 = 0u;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  sub_1001D1650();
  swift_getKeyPath();
  v26 = 0u;
  v27 = 0u;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  sub_1001D1650();
  swift_getKeyPath();
  v26 = 0u;
  v27 = 0u;
  sub_100011AC0(&qword_100228F58, &qword_1001D5BB0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1001D5410;
  sub_100011AC0(&qword_100228C30, &qword_1001D53E0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1001D54A0;
  *(v9 + 32) = swift_getKeyPath();
  *(v8 + 32) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1001D54B0;
  *(v10 + 32) = swift_getKeyPath();
  *(v10 + 40) = swift_getKeyPath();
  *(v8 + 40) = v10;
  v11 = sub_100011AC0(&qword_100228F60, &qword_1001D5BB8);
  swift_allocObject();
  v12 = v20;
  v13 = sub_1001D1670();
  *(&v24 + 1) = v11;
  v25 = sub_10004435C(&qword_100228F68, &qword_100228F60, &qword_1001D5BB8);
  *&v23 = v13;
  sub_1001D1650();
  v14 = sub_10000926C(0, 1, 1, _swiftEmptyArrayStorage);
  v16 = *(v14 + 2);
  v15 = *(v14 + 3);
  if (v16 >= v15 >> 1)
  {
    v14 = sub_10000926C((v15 > 1), v16 + 1, 1, v14);
  }

  *(v14 + 2) = v16 + 1;
  v17 = v14;
  (*(v1 + 32))(&v14[v21 + v16 * v3], v12, v22);
  *&v23 = v5;
  sub_10003A3C4(v17);
  return v23;
}

uint64_t sub_10004435C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1000443D0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100011DF4(&qword_100228AA8, &qword_1001D5BC0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100044698(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000446FC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10004472C()
{
  swift_getKeyPath();
  sub_100046EEC(&qword_1002287E8, _s8SchemaV2O8WorkloadCMa, &unk_1001D5D98);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100046EEC(&qword_1002287E0, _s8SchemaV2O8WorkloadCMa, &unk_1001D5DB4);
  sub_10003AC1C();
  sub_1001D15B0();

  return v0;
}

uint64_t sub_100044834()
{
  swift_getKeyPath();
  sub_100046EEC(&qword_100228A68, _s8SchemaV2O4NodeCMa, &unk_1001D5D0C);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100046EEC(&qword_1002289D8, _s8SchemaV2O4NodeCMa, &unk_1001D5D28);
  sub_1001D15B0();

  return v0;
}

uint64_t sub_100044938()
{
  swift_getKeyPath();
  sub_100046EEC(&qword_100228A68, _s8SchemaV2O4NodeCMa, &unk_1001D5D0C);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100046EEC(&qword_1002289D8, _s8SchemaV2O4NodeCMa, &unk_1001D5D28);
  sub_1001D15B0();

  return v0;
}

uint64_t sub_100044A3C()
{
  swift_getKeyPath();
  sub_100046EEC(&qword_1002287E8, _s8SchemaV2O8WorkloadCMa, &unk_1001D5D98);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100046EEC(&qword_1002287E0, _s8SchemaV2O8WorkloadCMa, &unk_1001D5DB4);
  sub_1001D15B0();

  return v0;
}

uint64_t sub_100044B40()
{
  swift_getKeyPath();
  sub_100046EEC(&qword_1002287E8, _s8SchemaV2O8WorkloadCMa, &unk_1001D5D98);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100046EEC(&qword_1002287E0, _s8SchemaV2O8WorkloadCMa, &unk_1001D5DB4);
  sub_1001D15B0();

  return v0;
}

uint64_t sub_100044C44()
{
  swift_getKeyPath();
  sub_100046EEC(&qword_1002287E8, _s8SchemaV2O8WorkloadCMa, &unk_1001D5D98);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100046EEC(&qword_1002287E0, _s8SchemaV2O8WorkloadCMa, &unk_1001D5DB4);
  sub_1000474D8(&qword_100228948, &qword_100228950, &protocol conformance descriptor for UUID, &protocol conformance descriptor for <A> A?);
  sub_1001D15B0();
}

uint64_t sub_100044D84()
{
  swift_getKeyPath();
  sub_100046EEC(&qword_1002287E8, _s8SchemaV2O8WorkloadCMa, &unk_1001D5D98);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100046EEC(&qword_1002287E0, _s8SchemaV2O8WorkloadCMa, &unk_1001D5DB4);
  sub_100046EEC(&qword_100228910, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1001D15B0();
}

uint64_t sub_100044EBC()
{
  swift_getKeyPath();
  sub_100046EEC(&qword_100228A68, _s8SchemaV2O4NodeCMa, &unk_1001D5D0C);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100046EEC(&qword_1002289D8, _s8SchemaV2O4NodeCMa, &unk_1001D5D28);
  sub_10003C880();
  sub_1001D15B0();

  return v0;
}

uint64_t sub_100044FC8()
{
  swift_getKeyPath();
  sub_100046EEC(&qword_100228A68, _s8SchemaV2O4NodeCMa, &unk_1001D5D0C);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100046EEC(&qword_1002289D8, _s8SchemaV2O4NodeCMa, &unk_1001D5D28);
  sub_100046EEC(&qword_100228910, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1001D15B0();
}

uint64_t sub_100045100()
{
  swift_getKeyPath();
  sub_100046EEC(&qword_1002287E8, _s8SchemaV2O8WorkloadCMa, &unk_1001D5D98);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100046EEC(&qword_1002287E0, _s8SchemaV2O8WorkloadCMa, &unk_1001D5DB4);
  sub_1001D15B0();

  return v0;
}

uint64_t sub_1000452B0()
{
  swift_getKeyPath();
  sub_100046EEC(&qword_1002287E8, _s8SchemaV2O8WorkloadCMa, &unk_1001D5D98);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100046EEC(&qword_1002287E0, _s8SchemaV2O8WorkloadCMa, &unk_1001D5DB4);
  sub_1001D15B0();

  return v0;
}

uint64_t sub_100045404()
{
  swift_getKeyPath();
  sub_100046EEC(&qword_1002287E8, _s8SchemaV2O8WorkloadCMa, &unk_1001D5D98);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100046EEC(&qword_1002287E0, _s8SchemaV2O8WorkloadCMa, &unk_1001D5DB4);
  sub_1001D15B0();

  return v0;
}

uint64_t sub_100045558()
{
  swift_getKeyPath();
  sub_100046EEC(&qword_1002287E8, _s8SchemaV2O8WorkloadCMa, &unk_1001D5D98);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100046EEC(&qword_1002287E0, _s8SchemaV2O8WorkloadCMa, &unk_1001D5DB4);
  sub_1001D15B0();

  return v1;
}

uint64_t sub_10004565C(uint64_t a1, char a2)
{
  swift_getKeyPath();
  sub_100046EEC(&qword_1002287E0, _s8SchemaV2O8WorkloadCMa, &unk_1001D5DB4);
  sub_1001D15C0();
}

uint64_t sub_100045754(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_100046EEC(&qword_1002287E0, _s8SchemaV2O8WorkloadCMa, &unk_1001D5DB4);
  sub_10003B674();
  sub_1001D15C0();
}

uint64_t sub_100045800(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_100046EEC(&qword_1002287E0, _s8SchemaV2O8WorkloadCMa, &unk_1001D5DB4);
  sub_1001D15C0();
}

uint64_t sub_1000458A8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_100046EEC(&qword_1002287E0, _s8SchemaV2O8WorkloadCMa, &unk_1001D5DB4);
  sub_1000474D8(&qword_100228B38, &qword_100228B40, &protocol conformance descriptor for UUID, &protocol conformance descriptor for <A> A?);
  sub_1001D15C0();
}

void *sub_100045988(__int128 *a1)
{
  *(v1 + 48) = sub_100011AC0(&qword_100228958, &qword_1001D5098);
  sub_100046EEC(&qword_1002287E0, _s8SchemaV2O8WorkloadCMa, &unk_1001D5DB4);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  sub_10003B47C((v1 + 24));
  sub_1001D1570();
  sub_100024DC8((v1 + 24), *(v1 + 48));
  swift_getKeyPath();
  sub_100011AC0(&unk_100230200, &qword_1001D4F80);
  sub_10003B674();
  sub_1001D1480();

  *(v1 + 16) = 1;
  sub_1001CFEA0();
  *(v1 + 16) = 0;
  swift_beginAccess();
  sub_100011CF0((v1 + 24));
  sub_1000446FC(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_100045B84(uint64_t a1)
{
  result = sub_1001CFEB0();
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

uint64_t sub_100045D30(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_100046EEC(&qword_1002287E0, _s8SchemaV2O8WorkloadCMa, &unk_1001D5DB4);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

uint64_t sub_100045E00(uint64_t a1, uint64_t a2, char a3)
{
  swift_getKeyPath();
  sub_100046EEC(&qword_1002289D8, _s8SchemaV2O4NodeCMa, &unk_1001D5D28);
  sub_10003C518();
  sub_1001D15C0();
}

uint64_t sub_100045EC0()
{
  swift_getKeyPath();
  sub_100046EEC(&qword_100228A68, _s8SchemaV2O4NodeCMa, &unk_1001D5D0C);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100046EEC(&qword_1002289D8, _s8SchemaV2O4NodeCMa, &unk_1001D5D28);
  sub_10003C880();
  sub_1001D15B0();

  return (v0 == 1) & ~v2;
}

uint64_t sub_100046098(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  swift_getKeyPath();
  sub_100046EEC(a4, a5, a6);
  sub_100046EEC(&qword_100228918, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1001D15C0();
}

uint64_t sub_100046168(uint64_t a1)
{
  swift_getKeyPath();
  sub_100046EEC(&qword_100228A68, _s8SchemaV2O4NodeCMa, &unk_1001D5D0C);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100046EEC(&qword_1002289D8, _s8SchemaV2O4NodeCMa, &unk_1001D5D28);
  sub_10003C7CC();
  sub_1001D15B0();

  return v1;
}

uint64_t sub_100046288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  sub_100046EEC(&qword_1002289D8, _s8SchemaV2O4NodeCMa, &unk_1001D5D28);
  sub_10003C5C0();
  sub_1001D15C0();
}

uint64_t sub_10004633C()
{
  swift_getKeyPath();
  sub_100046EEC(&qword_100228A68, _s8SchemaV2O4NodeCMa, &unk_1001D5D0C);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100046EEC(&qword_1002289D8, _s8SchemaV2O4NodeCMa, &unk_1001D5D28);
  sub_1001D15B0();

  return v0;
}

uint64_t sub_100046490()
{
  swift_getKeyPath();
  sub_100046EEC(&qword_100228A68, _s8SchemaV2O4NodeCMa, &unk_1001D5D0C);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100046EEC(&qword_1002289D8, _s8SchemaV2O4NodeCMa, &unk_1001D5D28);
  sub_1001D15B0();

  return v0;
}

uint64_t sub_1000465E4()
{
  swift_getKeyPath();
  sub_100046EEC(&qword_100228A68, _s8SchemaV2O4NodeCMa, &unk_1001D5D0C);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100046EEC(&qword_1002289D8, _s8SchemaV2O4NodeCMa, &unk_1001D5D28);
  sub_1001D15B0();

  return v0;
}

uint64_t sub_100046738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  swift_getKeyPath();
  sub_100046EEC(a5, a6, a7);
  sub_1001D15C0();
}

uint64_t sub_1000467D8()
{
  swift_getKeyPath();
  sub_100046EEC(&qword_100228A68, _s8SchemaV2O4NodeCMa, &unk_1001D5D0C);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100046EEC(&qword_1002289D8, _s8SchemaV2O4NodeCMa, &unk_1001D5D28);
  sub_10003C6D0();
  sub_1001D15B0();

  return v0;
}

uint64_t sub_1000468E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_100046EEC(&qword_1002289D8, _s8SchemaV2O4NodeCMa, &unk_1001D5D28);
  sub_1000475C4();
  sub_1001D15C0();
}

void *sub_100046998(__int128 *a1)
{
  *(v1 + 48) = sub_100011AC0(&qword_100228A80, &qword_1001D5208);
  sub_100046EEC(&qword_1002289D8, _s8SchemaV2O4NodeCMa, &unk_1001D5D28);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  sub_10003B47C((v1 + 24));
  sub_1001D1570();
  *(v1 + 16) = 257;
  sub_1001CFEA0();
  *(v1 + 16) = 0;
  swift_beginAccess();
  sub_100011CF0((v1 + 24));
  sub_1000446FC(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_100046B14(uint64_t a1)
{
  result = sub_1001CFEB0();
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

uint64_t sub_100046CF4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_100046EEC(&qword_1002289D8, _s8SchemaV2O4NodeCMa, &unk_1001D5D28);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

uint64_t sub_100046D74()
{
  sub_100011AC0(&qword_100228F80, &unk_1001D5BD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1001D5410;
  v1 = _s8SchemaV2O8WorkloadCMa(0);
  v2 = sub_100046EEC(&qword_1002287E0, _s8SchemaV2O8WorkloadCMa, &unk_1001D5DB4);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = _s8SchemaV2O4NodeCMa(0);
  v4 = sub_100046EEC(&qword_1002289D8, _s8SchemaV2O4NodeCMa, &unk_1001D5D28);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  return v0;
}

uint64_t sub_100046EEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void (*sub_100046FF4(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_100044698(v1 + 24, v4);
  return sub_100047084;
}

uint64_t sub_1000470B8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = swift_allocObject();
  a4(a1);
  return v6;
}

uint64_t sub_100047108(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  sub_100011CF0((v4 + 24));
  a4(a1, v4 + 24);
  return swift_endAccess();
}

void (*sub_100047170(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_100044698(v1 + 24, v4);
  return sub_100047084;
}

void sub_100047200(uint64_t *a1, char a2, void (*a3)(void *, uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 128);
  if (a2)
  {
    sub_100044698(*a1, (v4 + 5));
    swift_beginAccess();
    sub_100011CF0((v5 + 24));
    a3(v4 + 5, v5 + 24);
    swift_endAccess();
    sub_100011CF0(v4);
  }

  else
  {
    swift_beginAccess();
    sub_100011CF0((v5 + 24));
    a3(v4, v5 + 24);
    swift_endAccess();
  }

  free(v4);
}

uint64_t sub_1000474D8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100011DF4(&qword_1002288B0, &qword_1001D5FC0);
    sub_100046EEC(a2, &type metadata accessor for UUID, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000475C4()
{
  result = qword_100228F70;
  if (!qword_100228F70)
  {
    sub_100011DF4(&qword_100228AA8, &qword_1001D5BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228F70);
  }

  return result;
}

uint64_t sub_100047678()
{
  v19 = sub_1001D1660();
  v0 = *(v19 - 8);
  v1 = v0;
  __chkstk_darwin(v19);
  v17 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100011AC0(&qword_100227A90, &qword_1001D3630);
  v3 = *(v0 + 72);
  v4 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1001D5480;
  v18 = v4;
  swift_getKeyPath();
  v23 = 0u;
  v24 = 0u;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  sub_1001D1650();
  swift_getKeyPath();
  v23 = 0u;
  v24 = 0u;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  sub_1001D1650();
  swift_getKeyPath();
  v23 = 0u;
  v24 = 0u;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  sub_1001D1650();
  swift_getKeyPath();
  v23 = 0u;
  v24 = 0u;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  sub_1001D1650();
  swift_getKeyPath();
  v23 = 0u;
  v24 = 0u;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  sub_1001D1650();
  swift_getKeyPath();
  v23 = 0u;
  v24 = 0u;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  sub_1001D1650();
  swift_getKeyPath();
  *(&v24 + 1) = sub_100011AC0(&qword_100228F20, &qword_1001D5998);
  *&v23 = _swiftEmptyArrayStorage;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  sub_1001D1650();
  swift_getKeyPath();
  v23 = 0u;
  v24 = 0u;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  sub_1001D1650();
  swift_getKeyPath();
  v23 = 0u;
  v24 = 0u;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  sub_1001D1650();
  swift_getKeyPath();
  v23 = 0u;
  v24 = 0u;
  sub_100011AC0(&qword_1002291E0, &unk_1001D62B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1001D39F0;
  sub_100011AC0(&qword_100228C30, &qword_1001D53E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1001D5490;
  *(v7 + 32) = swift_getKeyPath();
  *(v7 + 40) = swift_getKeyPath();
  *(v7 + 48) = swift_getKeyPath();
  *(v6 + 32) = v7;
  v8 = sub_100011AC0(&qword_1002291E8, &unk_1001D62C0);
  swift_allocObject();
  v9 = sub_1001D1670();
  *(&v21 + 1) = v8;
  v10 = v17;
  v22 = sub_10004435C(&qword_1002291F0, &qword_1002291E8, &unk_1001D62C0);
  *&v20 = v9;
  sub_1001D1650();
  v11 = sub_10000926C(0, 1, 1, _swiftEmptyArrayStorage);
  v13 = *(v11 + 2);
  v12 = *(v11 + 3);
  if (v13 >= v12 >> 1)
  {
    v11 = sub_10000926C((v12 > 1), v13 + 1, 1, v11);
  }

  *(v11 + 2) = v13 + 1;
  v14 = v11;
  (*(v1 + 32))(&v11[v18 + v13 * v3], v10, v19);
  *&v20 = v5;
  sub_10003A3C4(v14);
  return v20;
}

uint64_t sub_100047C18()
{
  v22 = sub_1001D1660();
  v0 = *(v22 - 8);
  v1 = v0;
  __chkstk_darwin(v22);
  v19 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100011AC0(&qword_100227A90, &qword_1001D3630);
  v3 = *(v0 + 72);
  v4 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1001D3C60;
  v20 = v5;
  v21 = v4;
  swift_getKeyPath();
  v26 = 0u;
  v27 = 0u;
  sub_100011AC0(&qword_100228F48, &qword_1001D62D0);
  sub_1001D16A0();
  *(swift_allocObject() + 16) = xmmword_1001D39F0;
  sub_1001D1690();
  v6 = sub_1001D16B0();
  swift_allocObject();
  v7 = sub_1001D16C0();
  *(&v24 + 1) = v6;
  v25 = sub_100046EEC(&qword_100228F50, &type metadata accessor for Schema.Attribute, &protocol conformance descriptor for Schema.Attribute);
  *&v23 = v7;
  sub_1001D1650();
  swift_getKeyPath();
  v26 = 0u;
  v27 = 0u;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  sub_1001D1650();
  swift_getKeyPath();
  v26 = 0u;
  v27 = 0u;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  sub_1001D1650();
  swift_getKeyPath();
  v26 = 0u;
  v27 = 0u;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  sub_1001D1650();
  swift_getKeyPath();
  v26 = 0u;
  v27 = 0u;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  sub_1001D1650();
  swift_getKeyPath();
  v26 = 0u;
  v27 = 0u;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  sub_1001D1650();
  swift_getKeyPath();
  v26 = 0u;
  v27 = 0u;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  sub_1001D1650();
  swift_getKeyPath();
  v26 = 0u;
  v27 = 0u;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  sub_1001D1650();
  swift_getKeyPath();
  v26 = 0u;
  v27 = 0u;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  sub_1001D1650();
  swift_getKeyPath();
  v26 = 0u;
  v27 = 0u;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  sub_1001D1650();
  swift_getKeyPath();
  v26 = 0u;
  v27 = 0u;
  sub_100011AC0(&qword_1002291F8, &qword_1001D62D8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1001D5410;
  sub_100011AC0(&qword_100228C30, &qword_1001D53E0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1001D54A0;
  *(v9 + 32) = swift_getKeyPath();
  *(v8 + 32) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1001D5490;
  *(v10 + 32) = swift_getKeyPath();
  *(v10 + 40) = swift_getKeyPath();
  *(v10 + 48) = swift_getKeyPath();
  *(v8 + 40) = v10;
  v11 = sub_100011AC0(&qword_100229200, &qword_1001D62E0);
  swift_allocObject();
  v12 = sub_1001D1670();
  *(&v24 + 1) = v11;
  v13 = v19;
  v25 = sub_10004435C(&qword_100229208, &qword_100229200, &qword_1001D62E0);
  *&v23 = v12;
  sub_1001D1650();
  v14 = sub_10000926C(0, 1, 1, _swiftEmptyArrayStorage);
  v16 = *(v14 + 2);
  v15 = *(v14 + 3);
  if (v16 >= v15 >> 1)
  {
    v14 = sub_10000926C((v15 > 1), v16 + 1, 1, v14);
  }

  *(v14 + 2) = v16 + 1;
  v17 = v14;
  (*(v1 + 32))(&v14[v21 + v16 * v3], v13, v22);
  *&v23 = v20;
  sub_10003A3C4(v17);
  return v23;
}

void sub_100048328(void *a1)
{
  sub_1001D0E60();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          swift_checkMetadataState();
          if (v5 <= 0x3F)
          {
            swift_checkMetadataState();
            if (v6 <= 0x3F)
            {
              swift_checkMetadataState();
              if (v7 <= 0x3F)
              {
                swift_checkMetadataState();
                if (v8 <= 0x3F)
                {
                  sub_1001D08A0();
                  if (v9 <= 0x3F)
                  {
                    sub_100012FF8(319);
                    if (v10 <= 0x3F)
                    {
                      sub_1001CFDA0();
                      if (v11 <= 0x3F)
                      {
                        swift_initClassMetadata2();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

BOOL sub_100048660(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_10004869C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 240) = v17;
  *(v9 + 248) = v8;
  *(v9 + 224) = v16;
  *(v9 + 208) = a7;
  *(v9 + 216) = a8;
  *(v9 + 192) = a5;
  *(v9 + 200) = a6;
  *(v9 + 176) = a3;
  *(v9 + 184) = a4;
  *(v9 + 168) = a1;
  *(v9 + 256) = *v8;
  v10 = sub_1001CFDA0();
  *(v9 + 264) = v10;
  *(v9 + 272) = *(v10 - 8);
  *(v9 + 280) = swift_task_alloc();
  v11 = sub_1001D0F40();
  *(v9 + 288) = v11;
  *(v9 + 296) = *(v11 - 8);
  *(v9 + 304) = swift_task_alloc();
  v12 = sub_100011AC0(&qword_1002292F8, &unk_1001E1C80);
  *(v9 + 312) = v12;
  *(v9 + 320) = *(v12 - 8);
  *(v9 + 328) = swift_task_alloc();
  v13 = sub_1001D02E0();
  *(v9 + 336) = v13;
  *(v9 + 344) = *(v13 - 8);
  *(v9 + 352) = swift_task_alloc();

  return _swift_task_switch(sub_1000488C4, 0, 0);
}

void sub_1000488C4()
{
  *(v0 + 136) = 0;
  v62 = v0 + 136;
  v53 = (v0 + 64);
  *(v0 + 152) = 0;
  *(v0 + 144) = 0;
  *(v0 + 160) = _swiftEmptyArrayStorage;
  sub_10005AF40(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v54 = sub_1001D23A0();
  v55 = v1;
  v63._countAndFlagsBits = 58;
  v63._object = 0xE100000000000000;
  sub_1001D18B0(v63);
  v2 = v54;
  v3 = v55;
  *(v0 + 360) = v54;
  *(v0 + 368) = v3;

  v4 = sub_1001D0E50();
  v5 = sub_1001D1E00();

  v47 = v3;
  v48 = v2;
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v54 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1000954E0(v2, v3, &v54);
    _os_log_impl(&_mh_execute_header, v4, v5, "%s executing prefetch request", v6, 0xCu);
    sub_100011CF0(v7);
  }

  v51 = *(v0 + 352);
  v8 = *(v0 + 320);
  v9 = *(v0 + 328);
  v52 = *(v0 + 312);
  v11 = *(v0 + 248);
  v10 = *(v0 + 256);
  v12 = (v11 + *(*v11 + 240));
  v13 = v12[3];
  v49 = v12[4];
  sub_100024DC8(v12, v13);
  v14 = *(*v11 + 256);
  v15 = *(v10 + 120);
  *(v0 + 88) = v15;
  *(v0 + 96) = *(v10 + 176);
  v16 = sub_10003B47C(v53);
  (*(*(v15 - 8) + 16))(v16, v11 + v14, v15);
  Configuration.environment(systemInfo:)(v53, v13, v49, v51);
  sub_100011CF0(v53);
  sub_100024DC8(v12, v12[3]);
  sub_1001D0400();
  v17 = v62;
  sub_1001D0210();
  (*(v8 + 8))(v9, v52);
  v18 = *(v17 + 288);
  LOBYTE(v10) = sub_1001D0280();
  v19 = *(v11 + *(*v11 + 296) + 8);
  sub_1001D1210();
  *(v0 + 376) = sub_1001D1200();
  sub_1001D1240();
  swift_allocObject();
  v20 = sub_1001D1230();
  sub_1001D1270();
  v21 = sub_1001D1260();
  if (v10)
  {
    sub_1001D11F0();
    nw_parameters_set_privacy_proxy_fail_closed();
    swift_unknownObjectRelease();
  }

  if (v19)
  {

    sub_1001D11E0();
  }

  if (v18)
  {
    v22 = sub_1001D1220();
    *(v0 + 48) = sub_100096568;
    *(v0 + 56) = 0;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_100059234;
    *(v0 + 40) = &unk_10021E5E0;
    v23 = _Block_copy((v17 - 120));
    sub_10005A1A4();
    v24 = sub_1001D1E40();
    sec_protocol_options_set_verify_block(v22, v23, v24);

    _Block_release(v23);
    swift_unknownObjectRelease();
  }

  sub_1001D11D0();
  sub_100011AC0(&qword_100228C30, &qword_1001D53E0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1001D54B0;
  *(v25 + 32) = v21;
  *(v25 + 40) = v20;

  sub_1001D11C0();

  sub_1001D12D0();
  v26 = sub_1001D12C0();
  sub_1001D11D0();

  v27 = sub_1001D11B0();
  if (*v28 >> 62)
  {
    if (sub_1001D2190() < 0)
    {
      __break(1u);
    }

    v29 = v17 - 32;
    v50 = *(v0 + 248);
  }

  else
  {
    v29 = v17 - 32;
    v50 = *(v0 + 248);
  }

  v30 = *(v0 + 352);
  v31 = *(v0 + 296);
  v32 = *(v0 + 304);
  v33 = *(v0 + 288);
  v45 = *(v0 + 200);
  v46 = *(v0 + 256);
  v43 = *(v0 + 192);
  v44 = *(v0 + 240);
  v40 = *(v0 + 224);
  v41 = *(v0 + 208);
  v42 = *(v0 + 176);
  sub_10005A0B8(0, 0, v26);

  v27(v29, 0);

  sub_1001D02C0();
  (*(v31 + 104))(v32, enum case for NWEndpoint.url(_:), v33);
  sub_1001D0F30();
  *(v0 + 384) = sub_1001D0F10();
  sub_10005A1A4();
  *(v0 + 392) = sub_1001D1E40();
  v34 = swift_task_alloc();
  *(v0 + 400) = v34;
  *(v34 + 16) = v50;
  *(v34 + 24) = v48;
  *(v34 + 32) = v47;
  *(v34 + 40) = v40;
  *(v34 + 56) = v44;
  *(v34 + 64) = v30;
  *(v34 + 72) = v41;
  v35 = v62;
  *(v34 + 88) = v43;
  *(v34 + 96) = v35;
  *(v34 + 104) = v0 + 152;
  *(v34 + 112) = v42;
  *(v34 + 128) = v45;
  v36 = *(v46 + 136);
  v37 = *(v46 + 80);
  v62 = *(v36 + 64) + **(v36 + 64);
  v38 = swift_task_alloc();
  *(v0 + 408) = v38;
  *v38 = v0;
  v38[1] = sub_1000490B4;
  v60 = v37;
  v61 = v36;
  v58 = v34;
  v59 = &type metadata for () + 8;
  v57 = &unk_1001D6470;
  v39 = v62;

  __asm { BRAA            X0, X16 }
}

uint64_t sub_1000490B4()
{
  v2 = *(*v1 + 392);
  v3 = *(*v1 + 304);
  v4 = *(*v1 + 296);
  v5 = *(*v1 + 288);
  *(*v1 + 416) = v0;

  (*(v4 + 8))(v3, v5);

  if (v0)
  {
    v6 = sub_100049410;
  }

  else
  {
    v6 = sub_1000492A0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000492A0()
{
  v1 = *(v0 + 368);
  v3 = *(v0 + 344);
  v2 = *(v0 + 352);
  v4 = *(v0 + 336);
  v9 = *(v0 + 360);
  v5 = *(v0 + 248);
  (*(*(v0 + 272) + 16))(*(v0 + 280), *(v0 + 176), *(v0 + 264));
  os_unfair_lock_lock((v0 + 152));

  os_unfair_lock_unlock((v0 + 152));
  sub_1001D07E0();
  os_unfair_lock_lock((v0 + 136));
  v6 = *(v0 + 144);
  os_unfair_lock_unlock((v0 + 136));
  (*(v3 + 8))(v2, v4);
  sub_100058BE8(v5, v9, v1, "%s finished prefetch request", v9);

  sub_100011F00(v0 + 160, &qword_100229308, &qword_1001D6478);

  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_100049410()
{
  v1 = v0[45];
  v2 = v0[46];
  v3 = v0[31];
  (*(v0[43] + 8))(v0[44], v0[42]);
  sub_100058BE8(v3, v1, v2, "%s finished prefetch request", v6);

  sub_100011F00((v0 + 20), &qword_100229308, &qword_1001D6478);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100049508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 280) = v36;
  *(v8 + 264) = v35;
  *(v8 + 248) = v34;
  *(v8 + 232) = v33;
  *(v8 + 216) = v32;
  *(v8 + 200) = v31;
  *(v8 + 184) = a7;
  *(v8 + 192) = a8;
  *(v8 + 168) = a5;
  *(v8 + 176) = a6;
  *(v8 + 152) = a2;
  *(v8 + 160) = a3;
  v9 = *a5;
  *(v8 + 288) = *a5;
  *(v8 + 296) = type metadata accessor for ThimbledEvent(0);
  *(v8 + 304) = swift_task_alloc();
  v10 = sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
  *(v8 + 312) = v10;
  *(v8 + 320) = *(v10 - 8);
  *(v8 + 328) = swift_task_alloc();
  v11 = sub_100011AC0(&qword_100227C90, qword_1001D39D0);
  *(v8 + 336) = v11;
  *(v8 + 344) = *(v11 - 8);
  *(v8 + 352) = swift_task_alloc();
  v12 = sub_1001D08A0();
  *(v8 + 360) = v12;
  v13 = *(v12 - 8);
  *(v8 + 368) = v13;
  *(v8 + 376) = *(v13 + 64);
  *(v8 + 384) = swift_task_alloc();
  *(v8 + 392) = *(v9 + 136);
  *(v8 + 400) = *(v9 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v8 + 408) = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v8 + 416) = AssociatedConformanceWitness;
  v17 = type metadata accessor for OnResponseHeadSequence(0, AssociatedTypeWitness, AssociatedConformanceWitness, v16);
  *(v8 + 424) = v17;
  *(v8 + 432) = *(v17 - 8);
  *(v8 + 440) = swift_task_alloc();
  v18 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse(255);
  *(v8 + 448) = v18;
  WitnessTable = swift_getWitnessTable();
  *(v8 + 456) = WitnessTable;
  v20 = sub_10005A38C();
  *(v8 + 464) = v20;
  v21 = sub_10005A3E0();
  *(v8 + 472) = v21;
  v22 = sub_10005AF40(&qword_100229320, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse, &protocol conformance descriptor for Proto_Ropes_HttpService_PrefetchResponse);
  *(v8 + 480) = v22;
  *(v8 + 16) = v17;
  *(v8 + 24) = &type metadata for UInt32;
  *(v8 + 32) = v18;
  *(v8 + 40) = WitnessTable;
  *(v8 + 48) = v20;
  *(v8 + 56) = v21;
  *(v8 + 64) = v22;
  v23 = type metadata accessor for LengthPrefixDeframer(0, v8 + 16);
  *(v8 + 488) = v23;
  *(v8 + 496) = *(v23 - 8);
  *(v8 + 504) = swift_task_alloc();
  v24 = sub_1001D1380();
  *(v8 + 512) = v24;
  *(v8 + 520) = *(v24 - 8);
  *(v8 + 528) = swift_task_alloc();
  *(v8 + 536) = swift_task_alloc();
  v25 = sub_1001D13D0();
  *(v8 + 544) = v25;
  *(v8 + 552) = *(v25 - 8);
  *(v8 + 560) = swift_task_alloc();
  v26 = sub_1001D0ED0();
  *(v8 + 568) = v26;
  *(v8 + 576) = *(v26 - 8);
  *(v8 + 584) = swift_task_alloc();
  *(v8 + 592) = swift_task_alloc();
  v27 = sub_100011AC0(&qword_100229328, &qword_1001D6480);
  *(v8 + 600) = v27;
  *(v8 + 608) = *(v27 - 8);
  *(v8 + 616) = swift_task_alloc();
  sub_1001D0F60();
  *(v8 + 624) = swift_task_alloc();
  v28 = sub_1001D0F80();
  *(v8 + 632) = v28;
  *(v8 + 640) = *(v28 - 8);
  *(v8 + 648) = swift_task_alloc();
  *(v8 + 656) = swift_task_alloc();
  *(v8 + 664) = swift_task_alloc();
  *(v8 + 672) = type metadata accessor for Proto_Ropes_HttpService_PrefetchRequest(0);
  *(v8 + 680) = swift_task_alloc();

  return _swift_task_switch(sub_100049B90, 0, 0);
}

uint64_t sub_100049B90()
{
  v107 = v0;
  v0[86] = qword_100229210;

  v1 = sub_1001D0E50();
  v2 = sub_1001D1E00();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[24];
    v3 = v0[25];
    v6 = v0[22];
    v5 = v0[23];
    v7 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_1000954E0(v6, v5, &v105);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_1000954E0(v4, v3, &v105);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s sending request with parameters: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v8 = v0[26];
  *(swift_task_alloc() + 16) = v8;
  sub_10005AF40(&qword_100229330, type metadata accessor for Proto_Ropes_HttpService_PrefetchRequest, &protocol conformance descriptor for Proto_Ropes_HttpService_PrefetchRequest);
  sub_1001D0B50();

  v9 = sub_1001D0B00();
  v0[87] = v9;
  v0[88] = v10;
  v80 = v9;
  v81 = v10;
  v89 = v0[80];
  v90 = v0[83];
  v96 = v0[79];
  v97 = v0[82];
  v11 = v0[77];
  v12 = v0[76];
  bufa = v0[75];
  v13 = v0[74];
  v14 = v0[72];
  v99 = v0[71];
  v87 = v0[28];
  v15 = v0[21];
  sub_1001D0F50();
  sub_1001D0290();
  sub_100024DC8((v15 + *(*v15 + 240)), *(v15 + *(*v15 + 240) + 24));
  sub_1001D03B0();
  sub_1001D0210();
  (*(v12 + 8))(v11, bufa);
  v16 = v99;
  v100 = *(v14 + 16);
  v100(v13, v87, v16);
  sub_1001D0F70();
  v17 = *(v89 + 16);
  v17(v97, v90, v96);

  v18 = sub_1001D0E50();
  v19 = sub_1001D1E00();

  v20 = os_log_type_enabled(v18, v19);
  v21 = v0[82];
  v88 = v17;
  if (v20)
  {
    v22 = v0[81];
    v23 = v0[80];
    v24 = v0[79];
    v91 = v0[24];
    v93 = v0[25];
    v25 = v17;
    loga = v0[23];
    v26 = v0[22];
    v27 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    *v27 = 136315650;
    *(v27 + 4) = sub_1000954E0(v26, loga, &v105);
    *(v27 + 12) = 2080;
    v25(v22, v21, v24);
    v28 = sub_1001D1830();
    v30 = v29;
    v31 = *(v23 + 8);
    v31(v21, v24);
    v32 = sub_1000954E0(v28, v30, &v105);

    *(v27 + 14) = v32;
    *(v27 + 22) = 2080;
    *(v27 + 24) = sub_1000954E0(v91, v93, &v105);
    _os_log_impl(&_mh_execute_header, v18, v19, "%s sending request: %s with parameters: %s", v27, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v33 = v0[80];
    v34 = v0[79];

    v31 = *(v33 + 8);
    v31(v21, v34);
  }

  v0[89] = v31;
  v100(v0[73], v0[28], v0[71]);

  v35 = sub_1001D0E50();
  v36 = sub_1001D1E00();

  v37 = os_log_type_enabled(v35, v36);
  v38 = v0[73];
  if (!v37)
  {
    v63 = v0[72];
    v64 = v0[71];

    (*(v63 + 8))(v38, v64);
LABEL_20:
    v72 = v0[83];
    v73 = v0[81];
    v74 = v0[79];
    sub_1001D1090();
    v88(v73, v72, v74);
    sub_100012038(v80, v81);
    v75 = sub_1001D1080();
    v0[90] = v75;
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v77 = *(AssociatedConformanceWitness + 8);
    v78 = swift_checkMetadataState();
    v102 = (v77 + *v77);
    v79 = swift_task_alloc();
    v0[91] = v79;
    *v79 = v0;
    v79[1] = sub_10004A98C;

    return v102(v80, v81, v75, 1, v78, AssociatedConformanceWitness);
  }

  v84 = v36;
  log = v35;
  v40 = v0[22];
  v39 = v0[23];
  v41 = swift_slowAlloc();
  v103 = swift_slowAlloc();
  *v41 = 136315394;
  *(v41 + 4) = sub_1000954E0(v40, v39, &v103);
  buf = v41;
  *(v41 + 12) = 2080;
  sub_10005AF40(&qword_100229338, &type metadata accessor for HTTPFields, &protocol conformance descriptor for HTTPFields);
  v42 = sub_1001D1D00();
  v43 = _swiftEmptyArrayStorage;
  if (!v42)
  {
LABEL_19:
    v105 = v43;

    sub_100152064(&v105);
    v65 = v0[73];
    v66 = v0[72];
    v67 = v0[71];

    v0[18] = v105;
    sub_100011AC0(&unk_100230200, &qword_1001D4F80);
    sub_100024B78(&qword_1002281F0, &unk_100230200, &qword_1001D4F80, &protocol conformance descriptor for [A]);
    v68 = sub_1001D1750();
    v70 = v69;

    (*(v66 + 8))(v65, v67);
    v71 = sub_1000954E0(v68, v70, &v103);

    *(buf + 14) = v71;
    _os_log_impl(&_mh_execute_header, log, v84, "%s sending headers\n%s", buf, 0x16u);
    swift_arrayDestroy();

    goto LABEL_20;
  }

  v44 = v42;
  v104 = _swiftEmptyArrayStorage;
  sub_1001514F8(0, v42 & ~(v42 >> 63), 0);
  v43 = v104;
  result = sub_1001D1CF0();
  if ((v44 & 0x8000000000000000) == 0)
  {
    v46 = 0;
    v47 = v0[69];
    v95 = (v47 + 16);
    v92 = (v47 + 8);
    v94 = (v0[65] + 8);
    v98 = v44;
    while (!__OFADD__(v46, 1))
    {
      v101 = v46 + 1;
      v48 = v0[70];
      v49 = v0[67];
      v50 = v0[66];
      v51 = v0[64];
      v52 = sub_1001D1D40();
      (*v95)(v48);
      (v52)(v0 + 9, 0);
      sub_1001D13B0();
      sub_1001D1340();
      LOBYTE(v52) = sub_1001D1350();
      v53 = *v94;
      (*v94)(v50, v51);
      v53(v49, v51);
      v54 = v0[67];
      v55 = v0[64];
      sub_1001D13B0();
      sub_10005AF40(&qword_100229340, &type metadata accessor for HTTPField.Name, &protocol conformance descriptor for HTTPField.Name);
      v105 = sub_1001D23A0();
      v106 = v56;
      v53(v54, v55);
      if (v52)
      {
        v57._countAndFlagsBits = 0x544341444552203ALL;
        v57._object = 0xEB000000000A4445;
      }

      else
      {
        v109._countAndFlagsBits = 8250;
        v109._object = 0xE200000000000000;
        sub_1001D18B0(v109);
        v110._countAndFlagsBits = sub_1001D13C0();
        sub_1001D18B0(v110);

        v57._countAndFlagsBits = 10;
        v57._object = 0xE100000000000000;
      }

      sub_1001D18B0(v57);
      v58 = v105;
      v59 = v106;
      (*v92)(v0[70], v0[68]);
      v104 = v43;
      v61 = *(v43 + 2);
      v60 = *(v43 + 3);
      if (v61 >= v60 >> 1)
      {
        sub_1001514F8((v60 > 1), v61 + 1, 1);
        v43 = v104;
      }

      *(v43 + 2) = v61 + 1;
      v62 = &v43[16 * v61];
      *(v62 + 4) = v58;
      *(v62 + 5) = v59;
      result = sub_1001D1D20();
      ++v46;
      if (v101 == v98)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}