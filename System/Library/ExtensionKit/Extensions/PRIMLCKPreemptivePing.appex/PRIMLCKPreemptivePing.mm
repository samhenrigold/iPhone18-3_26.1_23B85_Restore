uint64_t sub_1000011E8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD00000000000001ELL;
  }

  else
  {
    v3 = 0xD000000000000019;
  }

  if (v2)
  {
    v4 = &qword_1000067C0;
  }

  else
  {
    v4 = "failedToQueryPFLContainer";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD00000000000001ELL;
  }

  else
  {
    v6 = 0xD000000000000019;
  }

  if (*a2)
  {
    v7 = "failedToQueryPFLContainer";
  }

  else
  {
    v7 = &qword_1000067C0;
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000060A8();
  }

  return v9 & 1;
}

Swift::Int sub_100001294()
{
  sub_100006108();
  sub_100005FB8();

  return sub_100006118();
}

uint64_t sub_100001314(uint64_t a1)
{
  sub_100005FB8();
}

Swift::Int sub_100001380(uint64_t a1)
{
  sub_100006108();
  sub_100005FB8();

  return sub_100006118();
}

uint64_t sub_1000013FC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000085B8;
  v8._object = v3;
  v5 = sub_100006088(v4, v8);

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

void sub_10000145C(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD00000000000001ELL;
  }

  else
  {
    v2 = 0xD000000000000019;
  }

  if (*v1)
  {
    v3 = "failedToQueryPFLContainer";
  }

  else
  {
    v3 = &qword_1000067C0;
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t sub_1000014AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_10000156C;

  return CKDatabase.records(matching:inZoneWith:desiredKeys:resultsLimit:)(a3, a4, &_swiftEmptyArrayStorage, 1);
}

uint64_t sub_10000156C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 32) = a2;
    *(v6 + 40) = a1;

    return _swift_task_switch(sub_1000016C8, 0, 0);
  }
}

uint64_t sub_1000016C8()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  *v2 = *(v0 + 40);
  v2[1] = v1;
  return (*(v0 + 8))();
}

uint64_t sub_1000016EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_1000017AC;

  return CKDatabase.records(matching:inZoneWith:desiredKeys:resultsLimit:)(a3, a4, &_swiftEmptyArrayStorage, 1);
}

uint64_t sub_1000017AC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 32) = a2;
    *(v6 + 40) = a1;

    return _swift_task_switch(sub_100003620, 0, 0);
  }
}

uint64_t sub_100001908()
{
  v1 = sub_100005F98();
  v0[4] = v1;
  v0[5] = *(v1 - 8);
  v0[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000019C4, 0, 0);
}

uint64_t sub_1000019C4()
{
  sub_100005F68();
  v1 = objc_allocWithZone(CKContainerID);
  v2 = sub_100005FA8();

  v3 = [v1 initWithContainerIdentifier:v2 environment:1];
  v0[7] = v3;

  v4 = [objc_allocWithZone(CKContainerOptions) init];
  v0[8] = v4;
  v5 = sub_100005FA8();
  [v4 setApplicationBundleIdentifierOverrideForPushTopicGeneration:v5];

  v6 = [objc_allocWithZone(CKContainer) initWithContainerID:v3 options:v4];
  v0[9] = v6;
  v51 = [v6 publicCloudDatabase];
  v0[10] = v51;
  v7 = [objc_opt_self() defaultRecordZone];
  v50 = [v7 zoneID];
  v0[11] = v50;

  v8 = [objc_allocWithZone(CKOperationConfiguration) init];
  v0[12] = v8;
  v9 = v8;
  v49 = v8;
  [v8 setPreferAnonymousRequests:1];
  [v9 setQualityOfService:9];
  [v9 setContainer:v6];
  [v9 setAllowsCellularAccess:1];
  [v9 setAllowsExpensiveNetworkAccess:0];
  sub_1000027F8(0, &qword_10000C088, NSPredicate_ptr);
  sub_1000026B0(&qword_10000C090, &qword_100006568);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100006530;
  *(v10 + 56) = &type metadata for String;
  v11 = sub_1000026F8();
  *(v10 + 32) = 0xD000000000000025;
  *(v10 + 40) = 0x8000000100006840;
  *(v10 + 96) = &type metadata for String;
  *(v10 + 104) = v11;
  *(v10 + 64) = v11;
  *(v10 + 72) = 0x695F6E6967756C70;
  *(v10 + 80) = 0xE900000000000064;
  v48 = sub_100006018();
  v0[13] = v48;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100006530;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = v11;
  *(v12 + 32) = 0xD000000000000025;
  *(v12 + 40) = 0x8000000100006840;
  *(v12 + 96) = &type metadata for String;
  *(v12 + 104) = v11;
  *(v12 + 72) = 0xD000000000000015;
  *(v12 + 80) = 0x8000000100006870;
  v47 = sub_100006018();
  v0[14] = v47;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100006530;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = v11;
  *(v13 + 32) = 0x657669746361;
  *(v13 + 40) = 0xE600000000000000;
  *(v13 + 96) = &type metadata for String;
  *(v13 + 104) = v11;
  *(v13 + 72) = 0x737574617473;
  *(v13 + 80) = 0xE600000000000000;
  v46 = sub_100006018();
  v0[15] = v46;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100006530;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = v11;
  *(v14 + 32) = 0x73656369766564;
  *(v14 + 40) = 0xE700000000000000;
  v15 = sub_1000026B0(&qword_10000C0A0, &qword_100006570);
  *(v14 + 96) = v15;
  v16 = sub_10000274C();
  *(v14 + 104) = v16;
  *(v14 + 72) = &off_100008608;
  v45 = sub_100006018();
  v0[16] = v45;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100006530;
  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = v11;
  *(v17 + 32) = 0x73656C61636F6CLL;
  *(v17 + 40) = 0xE700000000000000;
  *(v17 + 96) = v15;
  *(v17 + 104) = v16;
  *(v17 + 72) = &off_100008638;
  v44 = sub_100006018();
  v0[17] = v44;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100006530;
  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = v11;
  *(v18 + 32) = 0x65676175676E616CLL;
  *(v18 + 40) = 0xE900000000000073;
  *(v18 + 96) = v15;
  *(v18 + 104) = v16;
  *(v18 + 72) = &off_100008668;
  v19 = sub_100006018();
  v0[18] = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100006530;
  *(v20 + 56) = &type metadata for String;
  *(v20 + 64) = v11;
  *(v20 + 32) = 0x736E6F69676572;
  *(v20 + 40) = 0xE700000000000000;
  *(v20 + 96) = v15;
  *(v20 + 104) = v16;
  *(v20 + 72) = &off_100008698;
  v21 = sub_100006018();
  v0[19] = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100006530;
  *(v22 + 56) = &type metadata for String;
  *(v22 + 64) = v11;
  *(v22 + 32) = 0xD000000000000013;
  *(v22 + 40) = 0x8000000100006890;
  *(v22 + 96) = v15;
  *(v22 + 104) = v16;
  *(v22 + 72) = &off_1000086C8;
  v23 = sub_100006018();
  v0[20] = v23;
  sub_1000026B0(&qword_10000C0B0, &qword_100006578);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100006540;
  *(v24 + 32) = v48;
  *(v24 + 40) = v47;
  *(v24 + 48) = v46;
  *(v24 + 56) = v45;
  *(v24 + 64) = v44;
  *(v24 + 72) = v19;
  *(v24 + 80) = v21;
  *(v24 + 88) = v23;
  v25 = v48;
  v26 = v47;
  v27 = v46;
  v28 = v45;
  v29 = v44;
  v30 = v19;
  v31 = v21;
  v32 = v23;
  isa = sub_100005FE8().super.isa;

  v34 = [objc_opt_self() andPredicateWithSubpredicates:isa];
  v0[21] = v34;

  sub_1000027F8(0, &qword_10000C0B8, CKQuery_ptr);
  v35 = v34;
  v53._countAndFlagsBits = 0x7963696C6F50;
  v53._object = 0xE600000000000000;
  v36 = sub_100006048(v53, v35).super.isa;
  v0[22] = v36;
  sub_100002840();
  v0[23] = swift_allocError();
  *v37 = 0;
  v51;
  v38 = v49;
  v39 = v50;
  v40 = swift_task_alloc();
  v0[24] = v40;
  *(v40 + 16) = v36;
  *(v40 + 24) = v39;
  v41 = swift_task_alloc();
  v0[25] = v41;
  v42 = sub_1000026B0(&qword_10000C0C8, &qword_100006590);
  *v41 = v0;
  v41[1] = sub_1000021A0;

  return CKDatabase.configuredWith<A>(configuration:group:body:)(v0 + 2, v49, 0, &unk_100006588, v40, v42);
}

uint64_t sub_1000021A0()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_1000023FC;
  }

  else
  {

    v2 = sub_1000022BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000022BC()
{
  v15 = *(v0 + 160);
  v16 = *(v0 + 168);
  v13 = *(v0 + 144);
  v14 = *(v0 + 152);
  v11 = *(v0 + 128);
  v12 = *(v0 + 136);
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v6 = *(v0 + 80);
  v5 = *(v0 + 88);
  v7 = *(v0 + 64);
  v17 = *(v0 + 72);
  v18 = *(v0 + 176);
  v8 = *(v0 + 56);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1000023FC()
{

  sub_100005F38();
  swift_errorRetain();
  swift_errorRetain();
  v1 = sub_100005F88();
  v2 = sub_100006038();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412546;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    *(v3 + 12) = 2112;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v6;
    v4[1] = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "Override error: %@ -> with %@", v3, 0x16u);
    sub_1000026B0(&qword_10000C0D0, &qword_100006598);
    swift_arrayDestroy();
  }

  v27 = v0[21];
  v28 = v0[22];
  v23 = v0[18];
  v24 = v0[19];
  v21 = v0[16];
  v22 = v0[17];
  v19 = v0[14];
  v20 = v0[15];
  v7 = v0[12];
  v8 = v1;
  v9 = v0[10];
  v10 = v0[11];
  v25 = v0[9];
  v26 = v0[20];
  v11 = v0[7];
  v17 = v0[8];
  v18 = v0[13];
  v12 = v0[5];
  v13 = v0[6];
  v14 = v0[4];

  (*(v12 + 8))(v13, v14);
  swift_willThrow();

  swift_errorRetain();

  v15 = v0[1];

  return v15();
}

uint64_t sub_1000026B0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000026F8()
{
  result = qword_10000C098;
  if (!qword_10000C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C098);
  }

  return result;
}

unint64_t sub_10000274C()
{
  result = qword_10000C0A8;
  if (!qword_10000C0A8)
  {
    sub_1000027B0(&qword_10000C0A0, &qword_100006570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A8);
  }

  return result;
}

uint64_t sub_1000027B0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000027F8(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_100002840()
{
  result = qword_10000C0C0;
  if (!qword_10000C0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C0);
  }

  return result;
}

uint64_t sub_100002894(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100002948;

  return sub_1000014AC(a1, a2, v7, v6);
}

uint64_t sub_100002948()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100002A3C()
{
  v1 = sub_100005F98();
  v0[4] = v1;
  v0[5] = *(v1 - 8);
  v0[6] = swift_task_alloc();

  return _swift_task_switch(sub_100002AF8, 0, 0);
}

uint64_t sub_100002AF8()
{
  sub_100005F68();
  v1 = objc_allocWithZone(CKContainerID);
  v2 = sub_100005FA8();

  v3 = [v1 initWithContainerIdentifier:v2 environment:1];
  v0[7] = v3;

  v4 = [objc_allocWithZone(CKContainerOptions) init];
  v0[8] = v4;
  v5 = sub_100005FA8();
  [v4 setApplicationBundleIdentifierOverrideForContainerAccess:v5];

  v6 = sub_100005FA8();
  [v4 setApplicationBundleIdentifierOverrideForPushTopicGeneration:v6];

  v7 = [objc_allocWithZone(CKContainer) initWithContainerID:v3 options:v4];
  v0[9] = v7;
  v8 = [v7 publicCloudDatabase];
  v0[10] = v8;
  v9 = [objc_opt_self() defaultRecordZone];
  v10 = [v9 zoneID];
  v0[11] = v10;

  v11 = [objc_allocWithZone(CKOperationConfiguration) init];
  v0[12] = v11;
  [v11 setPreferAnonymousRequests:1];
  [v11 setQualityOfService:9];
  [v11 setContainer:v7];
  [v11 setAllowsCellularAccess:1];
  [v11 setAllowsExpensiveNetworkAccess:0];
  sub_1000027F8(0, &qword_10000C088, NSPredicate_ptr);
  sub_1000026B0(&qword_10000C090, &qword_100006568);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100006530;
  *(v12 + 56) = &type metadata for String;
  v13 = sub_1000026F8();
  *(v12 + 32) = 0xD000000000000010;
  *(v12 + 40) = 0x8000000100006950;
  *(v12 + 96) = &type metadata for String;
  *(v12 + 104) = v13;
  *(v12 + 64) = v13;
  strcpy((v12 + 72), "experiment_id");
  *(v12 + 86) = -4864;
  v14 = sub_100006018();
  v0[13] = v14;
  sub_1000027F8(0, &qword_10000C0B8, CKQuery_ptr);
  v15 = v14;
  v25._countAndFlagsBits = 0x656D697265707845;
  v25._object = 0xEA0000000000746ELL;
  isa = sub_100006048(v25, v15).super.isa;
  v0[14] = isa;
  sub_100002840();
  v0[15] = swift_allocError();
  *v17 = 1;
  v8;
  v18 = v11;
  v19 = v10;
  v20 = swift_task_alloc();
  v0[16] = v20;
  *(v20 + 16) = isa;
  *(v20 + 24) = v19;
  v21 = swift_task_alloc();
  v0[17] = v21;
  v22 = sub_1000026B0(&qword_10000C0C8, &qword_100006590);
  *v21 = v0;
  v21[1] = sub_100002F4C;

  return CKDatabase.configuredWith<A>(configuration:group:body:)(v0 + 2, v11, 0, &unk_1000065B0, v20, v22);
}

uint64_t sub_100002F4C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_10000314C;
  }

  else
  {

    v2 = sub_100003068;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100003068()
{
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 64);
  v10 = *(v0 + 72);
  v7 = *(v0 + 56);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10000314C()
{

  sub_100005F38();
  swift_errorRetain();
  swift_errorRetain();
  v1 = sub_100005F88();
  v2 = sub_100006038();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412546;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    *(v3 + 12) = 2112;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v6;
    v4[1] = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "Override error: %@ -> with %@", v3, 0x16u);
    sub_1000026B0(&qword_10000C0D0, &qword_100006598);
    swift_arrayDestroy();
  }

  v7 = v0[12];
  v19 = v0[13];
  v20 = v0[14];
  v9 = v0[10];
  v8 = v0[11];
  v17 = v0[8];
  v18 = v0[9];
  v10 = v1;
  v12 = v0[6];
  v11 = v0[7];
  v13 = v0[4];
  v14 = v0[5];

  (*(v14 + 8))(v12, v13);
  swift_willThrow();

  swift_errorRetain();

  v15 = v0[1];

  return v15();
}

uint64_t sub_10000339C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100003624;

  return sub_1000016EC(a1, a2, v7, v6);
}

uint64_t getEnumTagSinglePayload for CKPreemptivePingerError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CKPreemptivePingerError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000035CC()
{
  result = qword_10000C0D8;
  if (!qword_10000C0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0D8);
  }

  return result;
}

uint64_t sub_100003628()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100005E20;

  return sub_100004B6C(0);
}

uint64_t sub_1000036CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003770;

  return sub_100004B6C(1);
}

uint64_t sub_100003770()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100003868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005E24;

  return MLHostExtension.shouldRun(context:)(a1, a2, a3);
}

uint64_t sub_100003918()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000039B8;

  return sub_1000044F8();
}

uint64_t sub_1000039B8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_100003AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_100002948;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_100003B98(uint64_t a1)
{
  v2 = sub_100003CFC();

  return MLHostExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100003C40();
  sub_100005EC8();
  return 0;
}

unint64_t sub_100003C40()
{
  result = qword_10000C0E0;
  if (!qword_10000C0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0E0);
  }

  return result;
}

unint64_t sub_100003CFC()
{
  result = qword_10000C0E8;
  if (!qword_10000C0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0E8);
  }

  return result;
}

unint64_t sub_100003D50(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100003E1C(v11, 0, 0, 1, a1, a2);
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
    sub_100005D58(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100005D0C(v11);
  return v7;
}

unint64_t sub_100003E1C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100003F28(a5, a6);
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
    result = sub_100006078();
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

char *sub_100003F28(uint64_t a1, unint64_t a2)
{
  v3 = sub_100003F74(a1, a2);
  sub_1000040A4(&off_1000086F8);
  return v3;
}

char *sub_100003F74(uint64_t a1, unint64_t a2)
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

  v6 = sub_100004190(v5, 0);
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

  result = sub_100006078();
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
        v10 = sub_100005FD8();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100004190(v10, 0);
        result = sub_100006068();
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

uint64_t sub_1000040A4(uint64_t result)
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

  result = sub_100004204(result, v11, 1, v3);
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

void *sub_100004190(uint64_t a1, uint64_t a2)
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

  sub_1000026B0(&qword_10000C0F0, &qword_1000067C0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100004204(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000026B0(&qword_10000C0F0, &qword_1000067C0);
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

uint64_t sub_1000042F8(char a1)
{
  *&v17[0] = 0xD000000000000015;
  *(&v17[0] + 1) = 0x80000001000069C0;
  v1 = (a1 & 1) == 0;
  if (a1)
  {
    v2._countAndFlagsBits = 0x7374617473646566;
  }

  else
  {
    v2._countAndFlagsBits = 7104112;
  }

  if (v1)
  {
    v3 = 0xE300000000000000;
  }

  else
  {
    v3 = 0xE800000000000000;
  }

  v2._object = v3;
  sub_100005FC8(v2);

  v4 = sub_100005F78();
  v6 = v5;
  v7 = [objc_opt_self() standardUserDefaults];
  v8 = sub_100005FA8();

  v9 = [v7 valueForKey:v8];

  if (v9)
  {
    sub_100006058();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17[0] = v15;
  v17[1] = v16;
  if (!*(&v16 + 1))
  {

    sub_100005DB8(v17);
LABEL_17:
    v10 = 1;
    return v10 & 1;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_17;
  }

  if (v13 == v4 && v14 == v6)
  {

    v10 = 0;
  }

  else
  {
    v12 = sub_1000060A8();

    v10 = v12 ^ 1;
  }

  return v10 & 1;
}

uint64_t sub_100004514()
{
  swift_asyncLet_begin();
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 16);
}

uint64_t sub_100004604()
{
  objc_allocWithZone(sub_100005EE8());
  *(v0 + 1336) = sub_100005ED8();

  return _swift_asyncLet_finish(v0 + 656);
}

uint64_t sub_1000046F0(uint64_t a1)
{
  v32 = a1;
  v1 = sub_100005E88();
  v33 = *(v1 - 8);
  v2 = __chkstk_darwin(v1);
  v4 = &v28[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v6 = &v28[-v5];
  v7 = sub_1000026B0(&unk_10000C100, &unk_1000067D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v28[-v8];
  v34 = sub_100005EB8();
  v10 = *(v34 - 8);
  __chkstk_darwin(v34);
  v12 = &v28[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_100005E48();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v28[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_100005E98();
  v30 = *(v17 - 8);
  v31 = v17;
  __chkstk_darwin(v17);
  v19 = &v28[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v14 + 104))(v16, enum case for Calendar.Identifier.gregorian(_:), v13);
  sub_100005E58();
  v20 = v16;
  v21 = v34;
  (*(v14 + 8))(v20, v13);
  sub_100005EA8();
  result = (*(v10 + 48))(v9, 1, v21);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v10 + 32))(v12, v9, v21);
    sub_100005E78();
    v23 = enum case for Calendar.Component.day(_:);
    v24 = v33;
    v25 = *(v33 + 104);
    v25(v6, enum case for Calendar.Component.day(_:), v1);
    v25(v4, enum case for Calendar.Component.year(_:), v1);
    v34 = sub_100005E68();
    v29 = v26;
    v27 = *(v24 + 8);
    v27(v4, v1);
    v27(v6, v1);
    v25(v6, enum case for Calendar.Component.hour(_:), v1);
    v25(v4, v23, v1);
    sub_100005E68();
    v27(v4, v1);
    v27(v6, v1);
    (*(v30 + 8))(v19, v31);
    if (v29)
    {
      return 0;
    }

    else
    {
      return v34;
    }
  }

  return result;
}

uint64_t sub_100004B6C(char a1)
{
  *(v1 + 224) = a1;
  v2 = sub_100005F98();
  *(v1 + 64) = v2;
  *(v1 + 72) = *(v2 - 8);
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 96) = swift_task_alloc();
  *(v1 + 104) = swift_task_alloc();
  v3 = sub_100005E38();
  *(v1 + 112) = v3;
  *(v1 + 120) = *(v3 - 8);
  *(v1 + 128) = swift_task_alloc();

  return _swift_task_switch(sub_100004CAC, 0, 0);
}

uint64_t sub_100004CAC()
{
  v42 = v0;
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);
  v4 = *(v0 + 224);
  sub_100005E28();
  v5 = sub_1000046F0(v1);
  v7 = v6;
  (*(v2 + 8))(v1, v3);
  *(v0 + 40) = v5;
  v40 = sub_100006098();
  v41 = v8;
  v44._countAndFlagsBits = 58;
  v44._object = 0xE100000000000000;
  sub_100005FC8(v44);
  *(v0 + 48) = v7;
  v45._countAndFlagsBits = sub_100006098();
  sub_100005FC8(v45);

  v9 = v41;
  *(v0 + 136) = v40;
  *(v0 + 144) = v9;
  if (sub_1000042F8(v4 & 1))
  {
    sub_100005F28();
    v10 = sub_100005F88();
    v11 = sub_100006028();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 104);
    v14 = *(v0 + 64);
    v15 = *(v0 + 72);
    if (v12)
    {
      v16 = *(v0 + 224);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v40 = v18;
      *v17 = 136315138;
      if (v16)
      {
        v19 = 0x7374617473646566;
      }

      else
      {
        v19 = 7104112;
      }

      if (v16)
      {
        v20 = 0xE800000000000000;
      }

      else
      {
        v20 = 0xE300000000000000;
      }

      v21 = sub_100003D50(v19, v20, &v40);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v10, v11, "Start pinging %s", v17, 0xCu);
      sub_100005D0C(v18);
    }

    v22 = *(v15 + 8);
    v22(v13, v14);
    *(v0 + 152) = v22;
    if (*(v0 + 224))
    {
      v39 = sub_100002A3C;
      v23 = swift_task_alloc();
      *(v0 + 168) = v23;
      *v23 = v0;
      v24 = sub_100005258;
    }

    else
    {
      v39 = sub_100001908;
      v23 = swift_task_alloc();
      *(v0 + 160) = v23;
      *v23 = v0;
      v24 = sub_100005128;
    }

    v23[1] = v24;

    return v39();
  }

  else
  {

    sub_100005F28();
    v25 = sub_100005F88();
    v26 = sub_100006028();
    v27 = os_log_type_enabled(v25, v26);
    v29 = *(v0 + 72);
    v28 = *(v0 + 80);
    v30 = *(v0 + 64);
    if (v27)
    {
      v31 = *(v0 + 224);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v40 = v33;
      *v32 = 136315138;
      if (v31)
      {
        v34 = 0x7374617473646566;
      }

      else
      {
        v34 = 7104112;
      }

      if (v31)
      {
        v35 = 0xE800000000000000;
      }

      else
      {
        v35 = 0xE300000000000000;
      }

      v36 = sub_100003D50(v34, v35, &v40);

      *(v32 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v25, v26, "Ping not required %s", v32, 0xCu);
      sub_100005D0C(v33);
    }

    (*(v29 + 8))(v28, v30);

    v37 = *(v0 + 8);

    return v37();
  }
}

uint64_t sub_100005128()
{
  v2 = *v1;

  if (v0)
  {
    v2[25] = v0;
    v3 = sub_100005868;
  }

  else
  {
    v2[22] = 0xE300000000000000;
    v2[23] = 7104112;
    v3 = sub_100005390;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100005258()
{
  v2 = *v1;

  if (v0)
  {
    v2[25] = v0;
    v3 = sub_100005868;
  }

  else
  {
    v2[22] = 0xE800000000000000;
    v2[23] = 0x7374617473646566;
    v3 = sub_100005390;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100005390()
{
  v11._countAndFlagsBits = *(v0 + 184);
  v11._object = *(v0 + 176);
  sub_100005FC8(v11);

  sub_100005F78();
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = sub_100005FA8();

  v3 = sub_100005FA8();

  [v1 setValue:v2 forKey:v3];

  v4 = swift_task_alloc();
  *(v0 + 192) = v4;
  *v4 = v0;
  v4[1] = sub_100005564;
  v6 = *(v0 + 176);
  v5 = *(v0 + 184);
  v7 = *(v0 + 136);
  v8 = *(v0 + 144);

  return static PFLTelemetry.sendPFLPluginReachTelemetryLazy(location:plugin:taskId:useCase:errorCode:errorDomain:forwardToMLHost:)(0xD000000000000010, 0x80000001000069A0, 0xD000000000000025, 0x8000000100006840, v7, v8, v5, v6);
}

uint64_t sub_100005564()
{

  return _swift_task_switch(sub_100005698, 0, 0);
}

uint64_t sub_100005698(uint64_t a1)
{
  v18 = v1;
  sub_100005F28();
  v2 = sub_100005F88();
  v3 = sub_100006028();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = v1[22];
    v4 = v1[23];
    v16 = v1[19];
    v6 = v1[11];
    v7 = v1[8];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v10 = sub_100003D50(v4, v5, &v17);

    *(v8 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Success pinged %s", v8, 0xCu);
    sub_100005D0C(v9);

    v16(v6, v7);
  }

  else
  {
    v11 = v1[19];
    v12 = v1[11];
    v13 = v1[8];

    v11(v12, v13);
  }

  v14 = v1[1];

  return v14();
}

uint64_t sub_100005868(uint64_t a1)
{
  v26 = v1;
  sub_100005F28();
  swift_errorRetain();
  v2 = sub_100005F88();
  v3 = sub_100006038();

  if (os_log_type_enabled(v2, v3))
  {
    v23 = *(v1 + 96);
    v24 = *(v1 + 152);
    v22 = *(v1 + 64);
    v4 = *(v1 + 224);
    v5 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v5 = 136315394;
    v6 = (v4 & 1) == 0;
    if (v4)
    {
      v7 = 0x7374617473646566;
    }

    else
    {
      v7 = 7104112;
    }

    if (v6)
    {
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = 0xE800000000000000;
    }

    v9 = sub_100003D50(v7, v8, &v25);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    swift_getErrorValue();
    v10 = sub_1000060B8();
    v12 = sub_100003D50(v10, v11, &v25);

    *(v5 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to ping container %s: %s", v5, 0x16u);
    swift_arrayDestroy();

    v24(v23, v22);
  }

  else
  {
    v13 = *(v1 + 152);
    v14 = *(v1 + 96);
    v15 = *(v1 + 64);
    v16 = *(v1 + 224);

    v13(v14, v15);
    if (v16)
    {
      v7 = 0x7374617473646566;
    }

    else
    {
      v7 = 7104112;
    }

    if (v16)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = 0xE300000000000000;
    }
  }

  *(v1 + 208) = v8;
  v17 = swift_task_alloc();
  *(v1 + 216) = v17;
  *v17 = v1;
  v17[1] = sub_100005B40;
  v18 = *(v1 + 200);
  v19 = *(v1 + 136);
  v20 = *(v1 + 144);
  v29 = 0;
  v28 = v18;

  return static PFLTelemetry.sendPFLPluginLocation(location:plugin:taskId:useCase:error:forwardToMLHost:)(0xD000000000000010, 0x80000001000069A0, 0xD000000000000025, 0x8000000100006840, v19, v20, v7, v8);
}

uint64_t sub_100005B40()
{

  return _swift_task_switch(sub_100005C74, 0, 0);
}

uint64_t sub_100005C74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100005D0C(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return _swift_release(*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100005D58(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100005DB8(uint64_t a1)
{
  v2 = sub_1000026B0(&qword_10000C0F8, &qword_1000067C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}