uint64_t sub_100001848(char a1, double a2)
{
  sub_1000054A8(68);
  v6._countAndFlagsBits = 0xD00000000000002ALL;
  v6._object = 0x8000000100005D70;
  sub_100005428(v6);
  if (a1)
  {
    v3._countAndFlagsBits = 1702195828;
  }

  else
  {
    v3._countAndFlagsBits = 0x65736C6166;
  }

  if (a1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  v3._object = v4;
  sub_100005428(v3);

  v7._object = 0x8000000100005DA0;
  v7._countAndFlagsBits = 0xD000000000000015;
  sub_100005428(v7);
  sub_100005458();
  v8._countAndFlagsBits = 41;
  v8._object = 0xE100000000000000;
  sub_100005428(v8);
  return 0;
}

Swift::Int sub_100001960()
{
  v1 = *v0;
  sub_100005578();
  sub_100005588(v1);
  return sub_100005598();
}

Swift::Int sub_1000019D4(uint64_t a1)
{
  v2 = *v1;
  sub_100005578();
  sub_100005588(v2);
  return sub_100005598();
}

uint64_t sub_100001A18()
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

uint64_t sub_100001A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726150776F6C6C61 && a2 == 0xEC0000006C616974;
  if (v6 || (sub_100005528() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100005DC0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100005528();

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

uint64_t sub_100001B60(uint64_t a1)
{
  v2 = sub_100004CB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100001B9C(uint64_t a1)
{
  v2 = sub_100004CB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100001BD8(void *a1, uint64_t a2, double a3)
{
  v5 = sub_10000400C(&qword_10000C1A0, &qword_100005B78);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_100004C74(a1, a1[3]);
  sub_100004CB8();
  sub_1000055B8();
  v12 = 0;
  sub_1000054F8();
  if (!v3)
  {
    v11 = 1;
    sub_100005508();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_100001D60(uint64_t a1@<X8>, void *a2@<X0>)
{
  v5 = sub_100004AC8(a2);
  if (!v2)
  {
    *a1 = v4 & 1;
    *(a1 + 8) = v5;
  }
}

BOOL AssetMetricsExtensionError.init(rawValue:)(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100008618;
  v6._object = a2;
  v4 = sub_1000054C8(v3, v6);

  return v4 != 0;
}

Swift::Int sub_100001E2C()
{
  sub_100005578();
  sub_100005418();
  return sub_100005598();
}

Swift::Int sub_100001EA0(uint64_t a1)
{
  sub_100005578();
  sub_100005418();
  return sub_100005598();
}

uint64_t sub_100001EF4@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100008650;
  v7._object = v3;
  v5 = sub_1000054C8(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_100001F78(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100001F98, 0, 0);
}

uint64_t sub_100001F98()
{
  sub_1000053C8();
  v9._countAndFlagsBits = 0x796C72756F682ELL;
  v9._object = 0xE700000000000000;
  v1 = sub_100005448(v9);

  if (AFIsHorseman() && v1)
  {
    type metadata accessor for AssetMetricsExtension(0);
    v2 = sub_1000053D8();
    v3 = sub_100005468();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Hourly task running on HomePod. Not continuing for resource reasons.", v4, 2u);
    }

    objc_allocWithZone(sub_100005368());
  }

  else
  {
    sub_1000020FC();
    objc_allocWithZone(sub_100005368());
  }

  v5 = sub_100005358();
  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_1000020FC()
{
  v0 = sub_1000052C8();
  v1 = objc_opt_self();
  v2 = [v1 sharedPreferences];
  v3 = [v2 assistantIsEnabled];

  if (v3)
  {
    v4 = 1;
    if (v0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = [v1 sharedPreferences];
    v4 = [v5 dictationIsEnabled];

    if (v0)
    {
      goto LABEL_8;
    }
  }

  type metadata accessor for AssetMetricsExtension(0);
  v6 = sub_1000053D8();
  v7 = sub_100005478();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Siri on device metrics disabled. Not continuing.", v8, 2u);
  }

LABEL_8:
  if ((v4 & 1) == 0)
  {
    type metadata accessor for AssetMetricsExtension(0);
    v9 = sub_1000053D8();
    v10 = sub_100005478();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Siri Assistant or Dictation disabled. Not continuing.", v11, 2u);
    }
  }

  return v0 & v4 & 1;
}

uint64_t sub_1000022B4(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_1000053F8();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  sub_10000400C(&qword_10000C1A8, &qword_100005B88);
  v2[14] = swift_task_alloc();
  v4 = sub_10000400C(&qword_10000C0D0, &qword_100005A20);
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_100002420, 0, 0);
}

uint64_t sub_100002420()
{
  v1 = *(v0 + 72);
  v2 = type metadata accessor for AssetMetricsExtension(0);
  *(v0 + 152) = v2;
  *(v0 + 224) = *(v2 + 20);
  v3 = v1;
  v4 = sub_1000053D8();
  v5 = sub_100005468();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 72);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Context: %@", v7, 0xCu);
    sub_100004F1C(v8, &qword_10000C1B8, &qword_100005B90);
  }

  v10 = swift_task_alloc();
  *(v0 + 160) = v10;
  v11 = sub_1000044DC(&qword_10000C188, &unk_100005AA0);
  v12 = sub_1000042E0();
  v13 = sub_100004334();
  *v10 = v0;
  v10[1] = sub_1000025FC;
  v14 = *(v0 + 112);
  v15 = *(v0 + 72);

  return MLHostExtension.loadConfig<A>(context:)(v14, v15, v2, &type metadata for AssetMetricsExtensionConfig, v11, v12, v13);
}

uint64_t sub_1000025FC()
{

  return _swift_task_switch(sub_1000026F8, 0, 0);
}

uint64_t sub_1000026F8()
{
  v49 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 112);
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    v5 = *(v2 + 16);
    v5(*(v0 + 144), *(v0 + 80) + *(*(v0 + 152) + 24), v1);
    if (v4(v3, 1, v1) != 1)
    {
      sub_100004F1C(*(v0 + 112), &qword_10000C1A8, &qword_100005B88);
    }
  }

  else
  {
    (*(v2 + 32))(*(v0 + 144), v3, v1);
    v5 = *(v2 + 16);
  }

  v5(*(v0 + 136), *(v0 + 144), *(v0 + 120));
  v6 = sub_1000053D8();
  v7 = sub_100005468();
  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 128);
  v9 = *(v0 + 136);
  v11 = *(v0 + 120);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v48 = v47;
    *v12 = 136315138;
    sub_100004DC4();
    v13 = sub_100005518();
    v15 = v14;
    v16 = *(v10 + 8);
    v16(v9, v11);
    v17 = sub_100004520(v13, v15, &v48);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Configuration: %s", v12, 0xCu);
    sub_100004E70(v47);
  }

  else
  {

    v16 = *(v10 + 8);
    v16(v9, v11);
  }

  *(v0 + 168) = v16;
  v18 = sub_1000053D8();
  v19 = sub_100005468();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Running AssetMetricsExtension..", v20, 2u);
  }

  v21 = sub_1000020FC();
  v22 = sub_1000053D8();
  v23 = sub_100005468();
  v24 = os_log_type_enabled(v22, v23);
  if (v21)
  {
    if (v24)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "SiriMetrics AND Assistant/dictation are enabled. Continuing.", v25, 2u);
    }

    v26 = *(v0 + 224);
    v28 = *(v0 + 96);
    v27 = *(v0 + 104);
    v30 = *(v0 + 80);
    v29 = *(v0 + 88);

    (*(v28 + 16))(v27, v30 + v26, v29);
    *(v0 + 40) = sub_1000052F8();
    *(v0 + 48) = &off_100008850;
    sub_100004D0C((v0 + 16));
    sub_1000052E8();
    v31 = sub_100005328();
    *(v0 + 176) = v31;
    *(v0 + 184) = *(v31 - 8);
    v32 = swift_task_alloc();
    *(v0 + 192) = v32;
    sub_100004C74((v0 + 16), *(v0 + 40));
    sub_100005318();
    swift_allocObject();
    v33 = sub_100005308();
    *(v0 + 200) = v33;
    sub_1000053A8();
    v34 = *(v0 + 64);
    v35 = swift_task_alloc();
    *(v0 + 208) = v35;
    *v35 = v0;
    v35[1] = sub_100002D4C;
    v36 = *(v0 + 72);
    v37.n128_u64[0] = v34;

    return AssetMetricsWorker.doWork(executor:context:durationThreshold:)(v32, v33, v36, v37);
  }

  else
  {
    if (v24)
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "SiriMetrics OR Assistant/dictation are disabled. Not allowed to process.", v38, 2u);
    }

    v39 = *(v0 + 144);
    v40 = *(v0 + 120);

    v41 = sub_100005328();
    v42 = *(v41 - 8);
    v43 = swift_task_alloc();
    (*(v42 + 104))(v43, enum case for LighthouseRuntimeProcessorResult.notAllowedToProcess(_:), v41);
    v44 = sub_100003168(v43);
    (*(v42 + 8))(v43, v41);
    v16(v39, v40);

    v45 = *(v0 + 8);

    return v45(v44);
  }
}

uint64_t sub_100002D4C()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_100002F74;
  }

  else
  {
    v2 = sub_100002E7C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100002E7C()
{
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[18];
  v6 = v0[15];
  v7 = sub_100003168(v1);
  (*(v2 + 8))(v1, v3);
  v4(v5, v6);

  sub_100004E70(v0 + 2);

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_100002F74()
{

  sub_100004E70(v0 + 2);
  swift_errorRetain();
  v1 = sub_1000053D8();
  v2 = sub_100005488();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "unexpected error throws: %@", v3, 0xCu);
    sub_100004F1C(v4, &qword_10000C1B8, &qword_100005B90);
  }

  v6 = v0[21];
  v7 = v0[18];
  v8 = v0[15];

  sub_100004D70();
  v9 = objc_allocWithZone(sub_100005368());
  v10 = sub_100005348();

  v6(v7, v8);

  v11 = v0[1];

  return v11(v10);
}

uint64_t sub_100003168(char *a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for AssetMetricsExtension(0) + 20);
  v5 = sub_100005328();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = &v34 - v8;
  v10 = *(v6 + 16);
  v39 = a1;
  v40 = v10;
  v10(&v34 - v8, a1, v5);
  v11 = sub_1000053D8();
  v12 = sub_100005468();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v38 = v2;
    v14 = v13;
    v35 = v13;
    v15 = swift_slowAlloc();
    v36 = v15;
    v37 = v4;
    v34 = &v34;
    v45[0] = v15;
    *v14 = 136315138;
    __chkstk_darwin(v15);
    v16 = v6;
    v40(&v34 - v8, &v34 - v8, v5);
    v17 = sub_100005408();
    v19 = v18;
    v20 = *(v16 + 8);
    v20(v9, v5);
    v21 = v17;
    v6 = v16;
    v22 = sub_100004520(v21, v19, v45);

    v23 = v35;
    *(v35 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v11, v12, "Handling result %s", v23, 0xCu);
    sub_100004E70(v36);
  }

  else
  {

    v20 = *(v6 + 8);
    v24 = (v20)(v9, v5);
  }

  __chkstk_darwin(v24);
  v25 = (&v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40(v25, v39, v5);
  v26 = (*(v6 + 88))(v25, v5);
  if (&enum case for LighthouseRuntimeProcessorResult.error(_:) && v26 == enum case for LighthouseRuntimeProcessorResult.error(_:))
  {
    (*(v6 + 96))(&v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
    if (*v25 && (v41 = *v25, swift_errorRetain(), sub_10000400C(&qword_10000C1D8, &qword_100005BA8), sub_10000400C(&qword_10000C1E0, &qword_100005BB0), (swift_dynamicCast() & 1) != 0))
    {
      if (*(&v43 + 1))
      {
        sub_100004F7C(&v42, v45);
        sub_100004F94(v45, &v42);
        v27 = objc_allocWithZone(sub_100005368());
        v28 = sub_100005348();

        sub_100004E70(v45);
        return v28;
      }
    }

    else
    {
      v44 = 0;
      v42 = 0u;
      v43 = 0u;
    }

    sub_100004F1C(&v42, &qword_10000C1D0, &qword_100005BA0);
    v30 = sub_1000053D8();
    v31 = sub_100005488();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "task failed with unset error", v32, 2u);
    }
  }

  else if ((!&enum case for LighthouseRuntimeProcessorResult.success(_:) || v26 != enum case for LighthouseRuntimeProcessorResult.success(_:)) && (!&enum case for LighthouseRuntimeProcessorResult.cancelled(_:) || v26 != enum case for LighthouseRuntimeProcessorResult.cancelled(_:)) && (!&enum case for LighthouseRuntimeProcessorResult.notAllowedToProcess(_:) || v26 != enum case for LighthouseRuntimeProcessorResult.notAllowedToProcess(_:)))
  {
    v20(&v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  }

  v33 = objc_allocWithZone(sub_100005368());
  return sub_100005358();
}

uint64_t sub_100003650(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100005270;

  return sub_100001F78(a1);
}

uint64_t sub_1000036E4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100003778;

  return sub_1000022B4(a1);
}

uint64_t sub_100003778(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_100003874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_100003958;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_100003958()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100003A4C(uint64_t a1)
{
  v2 = sub_1000044DC(&qword_10000C188, &unk_100005AA0);

  return MLHostExtension.configuration.getter(a1, v2);
}

uint64_t sub_100003AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000052A8();
  sub_1000053E8();
  sub_1000042E0();
  sub_100004334();
  sub_100005398();
  v4 = *(a1 + 28);
  type metadata accessor for AssetMetricsWorkerFactory();
  result = swift_allocObject();
  *(a2 + v4) = result;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for AssetMetricsExtension(0);
  sub_1000044DC(&qword_10000C0A8, &unk_100005B30);
  sub_100005338();
  return 0;
}

uint64_t type metadata accessor for AssetMetricsExtension(uint64_t a1)
{
  result = qword_10000C130;
  if (!qword_10000C130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100003C4C()
{
  result = qword_10000C0B0;
  if (!qword_10000C0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B0);
  }

  return result;
}

unint64_t sub_100003CA4()
{
  result = qword_10000C0B8;
  if (!qword_10000C0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B8);
  }

  return result;
}

unint64_t sub_100003CFC()
{
  result = qword_10000C0C0;
  if (!qword_10000C0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C0);
  }

  return result;
}

unint64_t sub_100003D54()
{
  result = qword_10000C0C8;
  if (!qword_10000C0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetMetricsExtensionError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AssetMetricsExtensionError(_WORD *result, int a2, int a3)
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

uint64_t sub_100003EAC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000052B8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000053F8();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_10000400C(&qword_10000C0D0, &qword_100005A20);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_10000400C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100004068(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1000052B8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_1000053F8();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = sub_10000400C(&qword_10000C0D0, &qword_100005A20);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_1000041C4(uint64_t a1)
{
  sub_1000052B8();
  if (v1 <= 0x3F)
  {
    sub_1000053F8();
    if (v2 <= 0x3F)
    {
      sub_100004278(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for AssetMetricsWorkerFactory();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100004278(uint64_t a1)
{
  if (!qword_10000C140)
  {
    sub_1000042E0();
    sub_100004334();
    v1 = sub_1000053B8();
    if (!v2)
    {
      atomic_store(v1, &qword_10000C140);
    }
  }
}

unint64_t sub_1000042E0()
{
  result = qword_10000C148;
  if (!qword_10000C148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C148);
  }

  return result;
}

unint64_t sub_100004334()
{
  result = qword_10000C150;
  if (!qword_10000C150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C150);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for AssetMetricsExtensionConfig(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for AssetMetricsExtensionConfig(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AssetMetricsExtensionConfig(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1000044DC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AssetMetricsExtension(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100004520(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000045EC(v11, 0, 0, 1, a1, a2);
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
    sub_100004EBC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100004E70(v11);
  return v7;
}

unint64_t sub_1000045EC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000046F8(a5, a6);
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
    result = sub_1000054B8();
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

char *sub_1000046F8(uint64_t a1, unint64_t a2)
{
  v3 = sub_100004744(a1, a2);
  sub_100004874(&off_100008688);
  return v3;
}

char *sub_100004744(uint64_t a1, unint64_t a2)
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

  v6 = sub_100004960(v5, 0);
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

  result = sub_1000054B8();
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
        v10 = sub_100005438();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100004960(v10, 0);
        result = sub_100005498();
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

uint64_t sub_100004874(uint64_t result)
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

  result = sub_1000049D4(result, v11, 1, v3);
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

void *sub_100004960(uint64_t a1, uint64_t a2)
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

  sub_10000400C(&qword_10000C1C8, &qword_100005B98);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000049D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000400C(&qword_10000C1C8, &qword_100005B98);
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

double sub_100004AC8(void *a1)
{
  v2 = sub_10000400C(&qword_10000C190, &qword_100005B70);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - v4;
  sub_100004C74(a1, a1[3]);
  sub_100004CB8();
  sub_1000055A8();
  v11 = 0;
  sub_1000054D8();
  v10 = 1;
  sub_1000054E8();
  v7 = v6;
  (*(v3 + 8))(v5, v2);
  sub_100004E70(a1);
  return v7;
}

void *sub_100004C74(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100004CB8()
{
  result = qword_10000C198;
  if (!qword_10000C198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C198);
  }

  return result;
}

uint64_t *sub_100004D0C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_100004D70()
{
  result = qword_10000C1B0;
  if (!qword_10000C1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1B0);
  }

  return result;
}

unint64_t sub_100004DC4()
{
  result = qword_10000C1C0;
  if (!qword_10000C1C0)
  {
    sub_100004E28(&qword_10000C0D0, &qword_100005A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1C0);
  }

  return result;
}

uint64_t sub_100004E28(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100004E70(void *a1)
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

uint64_t sub_100004EBC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100004F1C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000400C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100004F7C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100004F94(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t getEnumTagSinglePayload for AssetMetricsExtensionConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AssetMetricsExtensionConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10000516C()
{
  result = qword_10000C1E8;
  if (!qword_10000C1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1E8);
  }

  return result;
}

unint64_t sub_1000051C4()
{
  result = qword_10000C1F0;
  if (!qword_10000C1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1F0);
  }

  return result;
}

unint64_t sub_10000521C()
{
  result = qword_10000C1F8;
  if (!qword_10000C1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1F8);
  }

  return result;
}