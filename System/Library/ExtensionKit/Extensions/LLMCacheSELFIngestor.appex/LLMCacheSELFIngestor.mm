uint64_t sub_10000147C(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = sub_100006984();
  v2[16] = v3;
  v4 = *(v3 - 8);
  v2[17] = v4;
  v2[18] = *(v4 + 64);
  v2[19] = swift_task_alloc();
  sub_100002E74(&qword_10000C350, &qword_100007108);
  v2[20] = swift_task_alloc();
  v5 = sub_100006944();
  v2[21] = v5;
  v2[22] = *(v5 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return _swift_task_switch(sub_1000015F0, 0, 0);
}

uint64_t sub_1000015F0()
{
  if (qword_10000C258 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v35 = v0[25];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[20];
  v5 = sub_1000069D4();
  v7 = v6;
  type metadata accessor for BiomeBookmarkProvider();
  inited = swift_initStackObject();
  v9 = objc_allocWithZone(NSUserDefaults);
  v10 = sub_100006BE4();
  v11 = [v9 initWithSuiteName:v10];

  *(inited + 16) = v11;
  *(inited + 24) = v5;
  *(inited + 32) = v7;

  v38._object = 0x8000000100007210;
  v38._countAndFlagsBits = 0xD000000000000018;
  sub_100006BF4(v38);
  *(inited + 40) = v5;
  *(inited + 48) = v7;
  sub_10000580C(v35);
  sub_100006934();
  v33 = *(v3 + 16);
  v33(v4, v1, v2);
  (*(v3 + 56))(v4, 0, 1, v2);
  v12.super.isa = sub_100006914().super.isa;
  isa = 0;
  if ((*(v3 + 48))(v4, 1, v2) != 1)
  {
    v14 = v0[21];
    v15 = v0[22];
    v16 = v0[20];
    isa = sub_100006914().super.isa;
    (*(v15 + 8))(v16, v14);
  }

  v17 = [objc_allocWithZone(BMPublisherOptions) initWithStartDate:v12.super.isa endDate:isa maxEvents:0 lastN:0 reversed:0];

  sub_1000069E4();
  sub_1000030C4(&qword_10000C358, 255, &type metadata accessor for Library.Streams.LLMCache.CacheManagerTelemetry, &protocol conformance descriptor for Library.Streams.LLMCache.CacheManagerTelemetry);
  v18 = v17;
  sub_1000069F4();
  v34 = v0[25];
  v36 = v0[24];
  v19 = v0[22];
  v20 = v0[21];
  v31 = v0[23];
  v32 = v18;
  v21 = v0[16];
  v22 = v0[17];
  v23 = v0[14];
  v30 = v0[15];
  v29 = v0[19];

  sub_100002EBC(v0 + 9, v0[12]);
  (*(v22 + 16))(v29, v23, v21);
  v24 = (*(v22 + 80) + 24) & ~*(v22 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v30;
  (*(v22 + 32))(v25 + v24, v29, v21);

  sub_100006BC4();

  v33(v31, v36, v20);
  sub_100005CF8(v31);
  swift_setDeallocating();

  v26 = *(v19 + 8);
  v26(v36, v20);
  v26(v34, v20);
  sub_10000310C(v0 + 9);

  v27 = v0[1];

  return v27();
}

void sub_100001B34(uint64_t *a1)
{
  if (!*a1)
  {
    if (qword_10000C260 != -1)
    {
      swift_once();
    }

    v6 = sub_100006BA4();
    sub_10000308C(v6, qword_10000C5B0);
    oslog = sub_100006B94();
    v7 = sub_100006C24();
    if (!os_log_type_enabled(oslog, v7))
    {
      goto LABEL_11;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v7, "Polling biome stream has finished", v8, 2u);
LABEL_10:

LABEL_11:

    return;
  }

  if (qword_10000C260 != -1)
  {
    swift_once();
  }

  v1 = sub_100006BA4();
  sub_10000308C(v1, qword_10000C5B0);
  swift_errorRetain();
  oslog = sub_100006B94();
  v2 = sub_100006C44();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v2, "Polling biome stream has failed: %@", v3, 0xCu);
    sub_100003868(v4, &qword_10000C390, &unk_100007138);

    goto LABEL_10;
  }
}

uint64_t sub_100001D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v102 = a3;
  v4 = sub_100006B44();
  v109 = *(v4 - 8);
  v110 = v4;
  __chkstk_darwin(v4);
  v108 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100006AE4();
  v97 = *(v6 - 8);
  v98 = v6;
  __chkstk_darwin(v6);
  v96 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100006A54();
  v100 = *(v8 - 8);
  v101 = v8;
  __chkstk_darwin(v8);
  v99 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100006B64();
  v104 = *(v10 - 8);
  v105 = v10;
  __chkstk_darwin(v10);
  v103 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_100002E74(&qword_10000C360, &qword_100007110);
  v12 = __chkstk_darwin(v107);
  v106 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v95 - v15;
  __chkstk_darwin(v14);
  v112 = &v95 - v17;
  v18 = sub_100002E74(&qword_10000C368, &qword_100007118);
  __chkstk_darwin(v18 - 8);
  v20 = &v95 - v19;
  v21 = sub_100002E74(&qword_10000C370, &qword_100007120);
  __chkstk_darwin(v21 - 8);
  v113 = &v95 - v22;
  v23 = sub_100002E74(&qword_10000C378, &qword_100007128);
  __chkstk_darwin(v23 - 8);
  v25 = &v95 - v24;
  v26 = sub_100002E74(&qword_10000C380, &qword_100007130);
  __chkstk_darwin(v26 - 8);
  v28 = &v95 - v27;
  v29 = sub_100006964();
  v30 = *(v29 - 8);
  v31 = __chkstk_darwin(v29);
  v111 = &v95 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v114 = &v95 - v33;
  v34 = a1;
  sub_100006B14();
  v35 = sub_100006B84();
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v25, 1, v35) == 1)
  {
    sub_100003868(v25, &qword_10000C378, &qword_100007128);
    (*(v30 + 56))(v28, 1, 1, v29);
    return sub_100003868(v28, &qword_10000C380, &qword_100007130);
  }

  sub_100006B74();
  (*(v36 + 8))(v25, v35);
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    return sub_100003868(v28, &qword_10000C380, &qword_100007130);
  }

  v38 = v29;
  (*(v30 + 32))(v114, v28, v29);
  v39 = sub_100006954();
  v41 = v40;
  v42 = objc_allocWithZone(SISchemaUUID);
  isa = sub_1000068E4().super.isa;
  v95 = [v42 initWithBytesAsData:isa];

  sub_100003038(v39, v41);
  v44 = v34;
  sub_100006B24();
  v45 = v113;
  sub_100003B64(v20, v113);
  sub_100003868(v20, &qword_10000C368, &qword_100007118);
  v46 = v112;
  sub_100006B34();
  v47 = sub_100006AF4();
  v48 = *(v47 - 8);
  v49 = (*(v48 + 48))(v46, 1, v47);
  v50 = v30;
  v51 = v110;
  if (v49 == 1)
  {
    goto LABEL_6;
  }

  sub_100003158(v46, v16);
  v65 = (*(v48 + 88))(v16, v47);
  if (v65 == enum case for CacheManagerTarget.invocation(_:))
  {
    (*(v48 + 96))(v16, v47);
    v67 = v103;
    v66 = v104;
    v68 = v105;
    (*(v104 + 32))(v103, v16, v105);
    sub_1000031C8(v95);
    (*(v66 + 8))(v67, v68);
    v69 = 0xEA00000000006E6FLL;
    v70 = 0x697461636F766E69;
  }

  else
  {
    if (v65 == enum case for CacheManagerTarget.insertContext(_:))
    {
      (*(v48 + 96))(v16, v47);
      v74 = v99;
      v73 = v100;
      v75 = v101;
      (*(v100 + 32))(v99, v16, v101);
      v76 = sub_100003F50(v74, v95);
      sub_100003684(v76, v102, v45);

      (*(v73 + 8))(v74, v75);
      v77 = 0x747265736E69;
    }

    else
    {
      if (v65 != enum case for CacheManagerTarget.searchContext(_:))
      {
        (*(v48 + 8))(v16, v47);
LABEL_6:
        if (qword_10000C268 != -1)
        {
          swift_once();
        }

        v52 = sub_100006BA4();
        sub_10000308C(v52, qword_10000C5C8);
        v54 = v108;
        v53 = v109;
        (*(v109 + 16))(v108, v44, v51);
        v55 = sub_100006B94();
        v56 = sub_100006C34();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v104 = v38;
          v105 = v50;
          v59 = v58;
          v115[0] = v58;
          *v57 = 136315138;
          v60 = v106;
          sub_100006B34();
          v61 = sub_100006C64();
          v63 = v62;
          sub_100003868(v60, &qword_10000C360, &qword_100007110);
          (*(v53 + 8))(v54, v51);
          v64 = sub_10000620C(v61, v63, v115);
          v46 = v112;

          *(v57 + 4) = v64;
          _os_log_impl(&_mh_execute_header, v55, v56, "Unknown target type %s, skipping", v57, 0xCu);
          sub_10000310C(v59);
          v38 = v104;
          v50 = v105;
        }

        else
        {

          (*(v53 + 8))(v54, v51);
        }

        v69 = 0xE700000000000000;
        v71 = v114;
        v72 = v111;
        v70 = 0x6E776F6E6B6E75;
        goto LABEL_20;
      }

      (*(v48 + 96))(v16, v47);
      v79 = v96;
      v78 = v97;
      v80 = v98;
      (*(v97 + 32))(v96, v16, v98);
      v81 = sub_100004990(v79, v95);
      sub_100003684(v81, v102, v45);

      (*(v78 + 8))(v79, v80);
      v77 = 0x686372616573;
    }

    v70 = v77 & 0xFFFFFFFFFFFFLL | 0x6F43000000000000;
    v69 = 0xED0000747865746ELL;
  }

  v71 = v114;
  v72 = v111;
LABEL_20:
  sub_100003868(v46, &qword_10000C360, &qword_100007110);
  if (qword_10000C260 != -1)
  {
    swift_once();
  }

  v82 = sub_100006BA4();
  sub_10000308C(v82, qword_10000C5B0);
  (*(v50 + 16))(v72, v71, v38);

  v83 = sub_100006B94();
  v84 = v38;
  v85 = sub_100006C24();

  if (os_log_type_enabled(v83, v85))
  {
    v86 = v72;
    v87 = swift_slowAlloc();
    v115[0] = swift_slowAlloc();
    *v87 = 136315394;
    v88 = sub_10000620C(v70, v69, v115);

    *(v87 + 4) = v88;
    *(v87 + 12) = 2080;
    sub_1000030C4(&qword_10000C388, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v89 = sub_100006CA4();
    v91 = v90;
    v92 = *(v50 + 8);
    v92(v86, v84);
    v93 = sub_10000620C(v89, v91, v115);

    *(v87 + 14) = v93;
    _os_log_impl(&_mh_execute_header, v83, v85, "Processed biome event of type %s, CM Id %s successfully", v87, 0x16u);
    swift_arrayDestroy();

    sub_100003868(v113, &qword_10000C370, &qword_100007120);
    return (v92)(v114, v84);
  }

  else
  {

    v94 = *(v50 + 8);
    v94(v72, v84);
    sub_100003868(v113, &qword_10000C370, &qword_100007120);
    return (v94)(v71, v84);
  }
}

uint64_t sub_100002AB8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002B50;

  return sub_10000147C(a1);
}

uint64_t sub_100002B50()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100002C44()
{
  v0 = type metadata accessor for LLMCacheSELFIngestor();
  v2 = sub_1000030C4(&qword_10000C348, v1, type metadata accessor for LLMCacheSELFIngestor, &unk_100007098);

  return IngestionExtension.configuration.getter(v0, v2);
}

uint64_t sub_100002CC4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LLMCacheSELFIngestor();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for LLMCacheSELFIngestor();
  sub_1000030C4(&qword_10000C290, v3, type metadata accessor for LLMCacheSELFIngestor, &unk_1000070C8);
  sub_1000069C4();
  return 0;
}

uint64_t sub_100002E74(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *sub_100002EBC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100002F00()
{
  v1 = sub_100006984();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100002FC4(uint64_t a1)
{
  v3 = *(sub_100006984() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100001D5C(a1, v4, v5);
}

uint64_t sub_100003038(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10000308C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000030C4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_10000310C(void *a1)
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

uint64_t sub_100003158(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002E74(&qword_10000C360, &qword_100007110);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1000031C8(uint64_t a1)
{
  v2 = sub_100002E74(&qword_10000C380, &qword_100007130);
  __chkstk_darwin(v2 - 8);
  v4 = &v31 - v3;
  v5 = sub_100006964();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(SISchemaRequestLink) init];
  if (v9)
  {
    v10 = v9;
    v11 = [objc_allocWithZone(SISchemaRequestLinkInfo) init];
    if (v11)
    {
      v12 = v11;
      v13 = [objc_allocWithZone(SISchemaRequestLinkInfo) init];
      if (v13)
      {
        v14 = v13;
        sub_100006B54();
        if ((*(v6 + 48))(v4, 1, v5) == 1)
        {
          sub_100003868(v4, &qword_10000C380, &qword_100007130);
          if (qword_10000C268 != -1)
          {
            swift_once();
          }

          v15 = sub_100006BA4();
          sub_10000308C(v15, qword_10000C5C8);
          v16 = sub_100006B94();
          v17 = sub_100006C44();
          if (os_log_type_enabled(v16, v17))
          {
            v18 = swift_slowAlloc();
            *v18 = 0;
            _os_log_impl(&_mh_execute_header, v16, v17, "Failed to emit RequestLink, clientTraceId is nil", v18, 2u);
          }
        }

        else
        {
          (*(v6 + 32))(v8, v4, v5);
          [v12 setComponent:46];
          v23 = sub_100006954();
          v25 = v24;
          v26 = objc_allocWithZone(SISchemaUUID);
          v32 = v14;
          v27 = v26;
          isa = sub_1000068E4().super.isa;
          v29 = [v27 initWithBytesAsData:isa];

          sub_100003038(v23, v25);
          [v12 setUuid:v29];

          [v10 setSource:v12];
          v30 = v32;
          [v32 setComponent:47];
          [v30 setUuid:a1];
          [v10 setTarget:v30];
          [objc_msgSend(objc_opt_self() "sharedStream")];

          swift_unknownObjectRelease();
          (*(v6 + 8))(v8, v5);
        }

        return;
      }
    }

    else
    {
      v12 = v10;
    }
  }

  if (qword_10000C268 != -1)
  {
    swift_once();
  }

  v19 = sub_100006BA4();
  sub_10000308C(v19, qword_10000C5C8);
  v32 = sub_100006B94();
  v20 = sub_100006C44();
  if (os_log_type_enabled(v32, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v32, v20, "Failed to emit RequestLink, either RequestLink or RequestLinkInfo is nil", v21, 2u);
  }

  v22 = v32;
}

void sub_100003684(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = a1;
    sub_100006974();
  }
}

uint64_t sub_100003868(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002E74(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t *sub_1000038F4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1000039B0(uint64_t a1, uint64_t *a2, void *a3, id *a4, uint64_t a5)
{
  v8 = sub_100006BA4();
  sub_1000038F4(v8, a2);
  sub_10000308C(v8, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = *a4;
  return sub_100006BB4();
}

unint64_t sub_100003A64()
{
  result = qword_10000C398;
  if (!qword_10000C398)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10000C398);
  }

  return result;
}

uint64_t sub_100003AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_100003A64();
  result = sub_100006C54();
  *a4 = result;
  return result;
}

uint64_t sub_100003B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100002E74(&qword_10000C368, &qword_100007118);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_100006B04();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v21 - v12;
  sub_10000579C(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100003868(v6, &qword_10000C368, &qword_100007118);
    if (qword_10000C270 != -1)
    {
      swift_once();
    }

    v14 = sub_100006BA4();
    sub_10000308C(v14, qword_10000C5E0);
    v15 = sub_100006B94();
    v16 = sub_100006C44();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "MonotonicTimestamp is nil", v17, 2u);
    }

    v18 = 1;
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    (*(v8 + 16))(v11, v13, v7);
    sub_1000069A4();
    (*(v8 + 8))(v13, v7);
    v18 = 0;
  }

  v19 = sub_1000069B4();
  return (*(*(v19 - 8) + 56))(a2, v18, 1, v19);
}

id sub_100003E38(uint64_t a1)
{
  v2 = [objc_allocWithZone(CMSchemaCMClientEventMetadata) init];
  if (v2)
  {
    v3 = v2;
    [v2 setCmId:a1];
    return v3;
  }

  else
  {
    if (qword_10000C270 != -1)
    {
      swift_once();
    }

    v5 = sub_100006BA4();
    sub_10000308C(v5, qword_10000C5E0);
    v6 = sub_100006B94();
    v7 = sub_100006C44();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Failed to build CMClientEventMetadata", v8, 2u);
    }

    return 0;
  }
}

id sub_100003F50(uint64_t a1, uint64_t a2)
{
  v61 = a2;
  v3 = sub_100002E74(&qword_10000C3A0, &qword_100007148);
  __chkstk_darwin(v3 - 8);
  v5 = &v55 - v4;
  v6 = sub_100002E74(&qword_10000C3A8, &qword_100007150);
  __chkstk_darwin(v6 - 8);
  v8 = &v55 - v7;
  v9 = sub_100006A04();
  v57 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v55 - v13;
  v15 = sub_100006A44();
  v58 = *(v15 - 8);
  v59 = v15;
  __chkstk_darwin(v15);
  v60 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100006A54();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = [objc_allocWithZone(CMSchemaCMInsertContext) init];
  if (!v62)
  {
    goto LABEL_7;
  }

  v56 = [objc_allocWithZone(CMSchemaCMClientEvent) init];
  if (!v56)
  {

LABEL_7:
    if (qword_10000C270 != -1)
    {
      swift_once();
    }

    v25 = sub_100006BA4();
    sub_10000308C(v25, qword_10000C5E0);
    v26 = sub_100006B94();
    v27 = sub_100006C44();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Failed to build CMClientEvent for insert event, either CMInsertContext or CMClientEvent is nil", v28, 2u);
    }

    return 0;
  }

  (*(v18 + 16))(v20, a1, v17);
  v21 = (*(v18 + 88))(v20, v17);
  if (v21 == enum case for CacheManagerInsert.started(_:))
  {
    v22 = [objc_allocWithZone(CMSchemaCMInsertStarted) init];
    if (v22)
    {
      v23 = v22;
      [v22 setExists:1];
      v24 = "setStartedOrChanged:";
LABEL_15:
      v30 = v62;
      [v62 v24];

      (*(v18 + 8))(v20, v17);
      v31 = v56;
LABEL_16:
      [v31 setInsertContext:v30];
      v32 = sub_100003E38(v61);
      [v31 setEventMetadata:v32];

      return v31;
    }

    v38 = v62;
    if (qword_10000C270 != -1)
    {
      swift_once();
    }

    v39 = sub_100006BA4();
    sub_10000308C(v39, qword_10000C5E0);
    v40 = sub_100006B94();
    v41 = sub_100006C44();
    if (!os_log_type_enabled(v40, v41))
    {
      goto LABEL_34;
    }

    v42 = swift_slowAlloc();
    *v42 = 0;
    v43 = "Failed to build CMClientEvent for insert event, CMInsertStarted is nil";
    goto LABEL_33;
  }

  if (v21 == enum case for CacheManagerInsert.ended(_:))
  {
    v29 = [objc_allocWithZone(CMSchemaCMInsertEnded) init];
    if (v29)
    {
      v23 = v29;
      [v29 setExists:1];
      v24 = "setEnded:";
      goto LABEL_15;
    }

    v38 = v62;
    if (qword_10000C270 != -1)
    {
      swift_once();
    }

    v45 = sub_100006BA4();
    sub_10000308C(v45, qword_10000C5E0);
    v40 = sub_100006B94();
    v41 = sub_100006C44();
    if (!os_log_type_enabled(v40, v41))
    {
      goto LABEL_34;
    }

    v42 = swift_slowAlloc();
    *v42 = 0;
    v43 = "Failed to build CMClientEvent for insert event, CMInsertEnded is nil";
    goto LABEL_33;
  }

  if (v21 != enum case for CacheManagerInsert.failed(_:))
  {
    v38 = v62;
    if (qword_10000C270 != -1)
    {
      swift_once();
    }

    v44 = sub_100006BA4();
    sub_10000308C(v44, qword_10000C5E0);
    v40 = sub_100006B94();
    v41 = sub_100006C44();
    if (!os_log_type_enabled(v40, v41))
    {
      goto LABEL_34;
    }

    v42 = swift_slowAlloc();
    *v42 = 0;
    v43 = "Failed to build CMClientEvent for insert event, encountered unknown context type";
LABEL_33:
    _os_log_impl(&_mh_execute_header, v40, v41, v43, v42, 2u);

LABEL_34:

    (*(v18 + 8))(v20, v17);
    return 0;
  }

  (*(v18 + 96))(v20, v17);
  (*(v58 + 32))(v60, v20, v59);
  v34 = [objc_allocWithZone(CMSchemaCMInsertFailed) init];
  if (v34)
  {
    v35 = v34;
    sub_100006A34();
    v36 = sub_100006A24();
    v37 = *(v36 - 8);
    if ((*(v37 + 48))(v5, 1, v36) == 1)
    {

      sub_100003868(v5, &qword_10000C3A0, &qword_100007148);
      (*(v57 + 56))(v8, 1, 1, v9);
    }

    else
    {
      sub_100006A14();
      (*(v37 + 8))(v5, v36);
      v46 = v57;
      if ((*(v57 + 48))(v8, 1, v9) != 1)
      {
        (*(v46 + 32))(v14, v8, v9);
        (*(v46 + 16))(v12, v14, v9);
        v53 = (*(v46 + 88))(v12, v9);
        v31 = v56;
        if (v53 == enum case for CacheManagerError.ErrorType.invalidId(_:))
        {
          v54 = 1;
          v30 = v62;
        }

        else
        {
          v30 = v62;
          if (v53 == enum case for CacheManagerError.ErrorType.internalFailure(_:))
          {
            v54 = 2;
          }

          else
          {
            (*(v46 + 8))(v12, v9);
            v54 = 0;
          }
        }

        [v35 setReason:v54];
        [v30 setFailed:v35];

        (*(v46 + 8))(v14, v9);
        (*(v58 + 8))(v60, v59);
        goto LABEL_16;
      }
    }

    sub_100003868(v8, &qword_10000C3A8, &qword_100007150);
  }

  if (qword_10000C270 != -1)
  {
    swift_once();
  }

  v47 = sub_100006BA4();
  sub_10000308C(v47, qword_10000C5E0);
  v48 = sub_100006B94();
  v49 = sub_100006C44();
  v50 = os_log_type_enabled(v48, v49);
  v51 = v62;
  if (v50)
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&_mh_execute_header, v48, v49, "Failed to build CMClientEvent for insert event, either CMInsertFailed or ErrorType is nil", v52, 2u);
  }

  else
  {
  }

  (*(v58 + 8))(v60, v59);
  return 0;
}

id sub_100004990(uint64_t a1, uint64_t a2)
{
  v101 = a2;
  v102 = a1;
  v2 = sub_100002E74(&qword_10000C3A0, &qword_100007148);
  __chkstk_darwin(v2 - 8);
  v92 = &v88 - v3;
  v4 = sub_100002E74(&qword_10000C3A8, &qword_100007150);
  __chkstk_darwin(v4 - 8);
  v93 = &v88 - v5;
  v6 = sub_100006A04();
  v94 = *(v6 - 8);
  v95 = v6;
  v7 = __chkstk_darwin(v6);
  v89 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v90 = &v88 - v9;
  v10 = sub_100006AD4();
  v97 = *(v10 - 8);
  v98 = v10;
  __chkstk_darwin(v10);
  v96 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100002E74(&qword_10000C3B0, &qword_100007158);
  __chkstk_darwin(v12 - 8);
  v14 = &v88 - v13;
  v15 = sub_100006A64();
  v99 = *(v15 - 8);
  v100 = v15;
  v16 = __chkstk_darwin(v15);
  v18 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v88 - v19;
  v21 = sub_100006AB4();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100006AE4();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v88 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = [objc_allocWithZone(CMSchemaCMSearchContext) init];
  if (!v103)
  {
    goto LABEL_7;
  }

  v91 = [objc_allocWithZone(CMSchemaCMClientEvent) init];
  if (!v91)
  {

LABEL_7:
    if (qword_10000C270 != -1)
    {
      swift_once();
    }

    v33 = sub_100006BA4();
    sub_10000308C(v33, qword_10000C5E0);
    v34 = sub_100006B94();
    v35 = sub_100006C44();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Failed to build CMClientEvent for search event, either CMInsertContext or CMClientEvent is nil", v36, 2u);
    }

    return 0;
  }

  (*(v26 + 16))(v28, v102, v25);
  v29 = (*(v26 + 88))(v28, v25);
  if (v29 != enum case for CacheManagerSearch.started(_:))
  {
    if (v29 == enum case for CacheManagerSearch.ended(_:))
    {
      (*(v26 + 96))(v28, v25);
      v38 = v22;
      v39 = v24;
      v40 = v28;
      v41 = v21;
      (*(v22 + 32))(v24, v40, v21);
      v42 = [objc_allocWithZone(CMSchemaCMSearchEnded) init];
      v32 = v103;
      if (v42)
      {
        v43 = v42;
        v44 = sub_100006A74();
        if ((v44 & 0x100000000) == 0)
        {
          [v43 setResultCount:v44];
        }

        sub_100006A84();
        v46 = v99;
        v45 = v100;
        if ((*(v99 + 48))(v14, 1, v100) == 1)
        {
          sub_100003868(v14, &qword_10000C3B0, &qword_100007158);
        }

        else
        {
          (*(v46 + 32))(v20, v14, v45);
          (*(v46 + 16))(v18, v20, v45);
          v68 = (*(v46 + 88))(v18, v45);
          if (v68 == enum case for CacheManagerSearch.CacheManagerSearchStrategy.exactMatch(_:))
          {
            v69 = 1;
          }

          else if (v68 == enum case for CacheManagerSearch.CacheManagerSearchStrategy.approximateMatch(_:))
          {
            v69 = 2;
          }

          else
          {
            (*(v46 + 8))(v18, v45);
            v69 = 0;
          }

          [v43 setSearchStrategy:v69];
          (*(v46 + 8))(v20, v45);
        }

        v83 = sub_100006AA4();
        if ((v84 & 1) == 0)
        {
          [v43 setHighestMatchScore:*&v83];
        }

        v85 = sub_100006A94();
        if ((v86 & 1) == 0)
        {
          [v43 setLowestMatchScore:*&v85];
        }

        [v32 setEnded:v43];

        (*(v38 + 8))(v39, v41);
        goto LABEL_61;
      }

      if (qword_10000C270 != -1)
      {
        swift_once();
      }

      v64 = sub_100006BA4();
      sub_10000308C(v64, qword_10000C5E0);
      v65 = sub_100006B94();
      v66 = sub_100006C44();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&_mh_execute_header, v65, v66, "Failed to build CMClientEvent for search event, CMSearchEnded is nil", v67, 2u);
      }

      else
      {
      }

      (*(v38 + 8))(v24, v41);
    }

    else
    {
      if (v29 != enum case for CacheManagerSearch.failed(_:))
      {
        if (qword_10000C270 != -1)
        {
          swift_once();
        }

        v62 = sub_100006BA4();
        sub_10000308C(v62, qword_10000C5E0);
        v58 = sub_100006B94();
        v59 = sub_100006C44();
        v63 = os_log_type_enabled(v58, v59);
        v56 = v103;
        if (!v63)
        {
          goto LABEL_32;
        }

        v60 = swift_slowAlloc();
        *v60 = 0;
        v61 = "Failed to build CMClientEvent for search event, encountered unknown context type";
        goto LABEL_31;
      }

      (*(v26 + 96))(v28, v25);
      v48 = v96;
      v47 = v97;
      v49 = v98;
      (*(v97 + 32))(v96, v28, v98);
      v50 = [objc_allocWithZone(CMSchemaCMSearchFailed) init];
      if (v50)
      {
        v51 = v50;
        v52 = v92;
        sub_100006AC4();
        v53 = sub_100006A24();
        v54 = *(v53 - 8);
        if ((*(v54 + 48))(v52, 1, v53) == 1)
        {

          sub_100003868(v52, &qword_10000C3A0, &qword_100007148);
          v55 = v93;
          (*(v94 + 56))(v93, 1, 1, v95);
        }

        else
        {
          v55 = v93;
          sub_100006A14();
          (*(v54 + 8))(v52, v53);
          v71 = v94;
          v70 = v95;
          if ((*(v94 + 48))(v55, 1, v95) != 1)
          {
            v78 = v90;
            (*(v71 + 32))(v90, v55, v70);
            v79 = v89;
            (*(v71 + 16))(v89, v78, v70);
            v80 = (*(v71 + 88))(v79, v70);
            v81 = v91;
            if (v80 == enum case for CacheManagerError.ErrorType.invalidId(_:))
            {
              v82 = 1;
              v32 = v103;
            }

            else
            {
              v32 = v103;
              if (v80 == enum case for CacheManagerError.ErrorType.internalFailure(_:))
              {
                v82 = 2;
              }

              else
              {
                (*(v71 + 8))(v79, v70);
                v82 = 0;
              }
            }

            [v51 setReason:v82];
            [v32 setFailed:v51];

            (*(v71 + 8))(v78, v70);
            (*(v47 + 8))(v48, v49);
            goto LABEL_62;
          }
        }

        sub_100003868(v55, &qword_10000C3A8, &qword_100007150);
      }

      if (qword_10000C270 != -1)
      {
        swift_once();
      }

      v72 = sub_100006BA4();
      sub_10000308C(v72, qword_10000C5E0);
      v73 = sub_100006B94();
      v74 = sub_100006C44();
      v75 = os_log_type_enabled(v73, v74);
      v76 = v103;
      if (v75)
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&_mh_execute_header, v73, v74, "Failed to build CMClientEvent for search event, either CMSearchFailed or ErrorType is nil", v77, 2u);
      }

      else
      {
      }

      (*(v47 + 8))(v48, v49);
    }

    return 0;
  }

  v30 = [objc_allocWithZone(CMSchemaCMSearchStarted) init];
  if (!v30)
  {
    v56 = v103;
    if (qword_10000C270 != -1)
    {
      swift_once();
    }

    v57 = sub_100006BA4();
    sub_10000308C(v57, qword_10000C5E0);
    v58 = sub_100006B94();
    v59 = sub_100006C44();
    if (!os_log_type_enabled(v58, v59))
    {
      goto LABEL_32;
    }

    v60 = swift_slowAlloc();
    *v60 = 0;
    v61 = "Failed to build CMClientEvent for search event, CMSearchStarted is nil";
LABEL_31:
    _os_log_impl(&_mh_execute_header, v58, v59, v61, v60, 2u);

LABEL_32:

    (*(v26 + 8))(v28, v25);
    return 0;
  }

  v31 = v30;
  [v30 setExists:1];
  v32 = v103;
  [v103 setStartedOrChanged:v31];

  (*(v26 + 8))(v28, v25);
LABEL_61:
  v81 = v91;
LABEL_62:
  [v81 setSearchContext:v32];
  v87 = sub_100003E38(v101);
  [v81 setEventMetadata:v87];

  return v81;
}

uint64_t sub_10000579C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002E74(&qword_10000C368, &qword_100007118);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000580C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100006944();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v38 - v9;
  sub_100006924();
  v11 = *(v1 + 16);
  if (v11)
  {

    v12 = sub_100006BE4();

    v13 = [v11 valueForKey:v12];

    if (v13)
    {
      sub_100006C74();
      swift_unknownObjectRelease();
    }

    else
    {
      v40 = 0u;
      v41 = 0u;
    }

    v42 = v40;
    v43 = v41;
    if (*(&v41 + 1))
    {
      sub_100006824(&v42);

      v14 = sub_100006BE4();

      [v11 doubleForKey:v14];
      v16 = v15;

      if (qword_10000C260 != -1)
      {
        swift_once();
      }

      v17 = sub_100006BA4();
      sub_10000308C(v17, qword_10000C5B0);

      v18 = sub_100006B94();
      v19 = sub_100006C34();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *&v42 = v21;
        *v20 = 136315394;
        v39 = v4;
        v22 = a1;
        v24 = *(v2 + 40);
        v23 = *(v2 + 48);

        v25 = sub_10000620C(v24, v23, &v42);

        *(v20 + 4) = v25;
        a1 = v22;
        v4 = v39;
        *(v20 + 12) = 2048;
        *(v20 + 14) = v16;
        _os_log_impl(&_mh_execute_header, v18, v19, "The userdefault has key %s with the value %f", v20, 0x16u);
        sub_10000310C(v21);
      }

      sub_1000068F4();
      sub_10000688C();
      v26 = sub_100006BD4();
      v27 = *(v5 + 8);
      v28 = (v5 + 32);
      if (v26)
      {
        v27(v10, v4);
        return (*v28)(a1, v8, v4);
      }

      else
      {
        v27(v8, v4);
        return (*v28)(a1, v10, v4);
      }
    }
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
  }

  sub_100006824(&v42);
  if (qword_10000C260 != -1)
  {
    swift_once();
  }

  v30 = sub_100006BA4();
  sub_10000308C(v30, qword_10000C5B0);

  v31 = sub_100006B94();
  v32 = sub_100006C34();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&v42 = v34;
    *v33 = 136315138;
    v36 = *(v2 + 40);
    v35 = *(v2 + 48);

    v37 = sub_10000620C(v36, v35, &v42);

    *(v33 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v31, v32, "The userdefault contained no value for %s", v33, 0xCu);
    sub_10000310C(v34);
  }

  return (*(v5 + 32))(a1, v10, v4);
}

uint64_t sub_100005CF8(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[3] & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v3) & 0xF;
  }

  if (!v4)
  {
    if (qword_10000C260 != -1)
    {
      swift_once();
    }

    v20 = sub_100006BA4();
    sub_10000308C(v20, qword_10000C5B0);
    v21 = sub_100006B94();
    v22 = sub_100006C34();
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_17;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Skip userDefault set due to empty identifier", v23, 2u);
    goto LABEL_16;
  }

  v5 = v1;
  sub_100006904();
  v7 = v6;
  if (qword_10000C260 != -1)
  {
    swift_once();
  }

  v8 = sub_100006BA4();
  sub_10000308C(v8, qword_10000C5B0);

  v9 = sub_100006B94();
  v10 = sub_100006C34();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v33 = v12;
    *v11 = 136315394;
    v13 = v1[5];
    v14 = v1[6];

    v15 = sub_10000620C(v13, v14, &v33);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2048;
    *(v11 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v9, v10, "Set key %s to %f", v11, 0x16u);
    sub_10000310C(v12);
  }

  v16 = v1[2];
  if (v16)
  {
    v17 = v16;
    isa = sub_100006C14().super.super.isa;

    v19 = sub_100006BE4();

    [v17 setValue:isa forKey:v19];

    goto LABEL_18;
  }

  v21 = sub_100006B94();
  v24 = sub_100006C34();

  if (os_log_type_enabled(v21, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v33 = v26;
    *v25 = 136315138;
    v28 = v5[5];
    v27 = v5[6];

    v29 = sub_10000620C(v28, v27, &v33);

    *(v25 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v21, v24, "Fail to set key %s due to empty userdefaults", v25, 0xCu);
    sub_10000310C(v26);

LABEL_16:
  }

LABEL_17:

LABEL_18:
  v30 = sub_100006944();
  v31 = *(*(v30 - 8) + 8);

  return v31(a1, v30);
}

uint64_t sub_1000060D0()
{

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_10000613C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1000061B0(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_10000620C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_10000620C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000062D8(v11, 0, 0, 1, a1, a2);
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
    sub_1000067C4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000310C(v11);
  return v7;
}

unint64_t sub_1000062D8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000063E4(a5, a6);
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
    result = sub_100006C94();
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

char *sub_1000063E4(uint64_t a1, unint64_t a2)
{
  v3 = sub_100006430(a1, a2);
  sub_100006560(&off_1000085F0);
  return v3;
}

char *sub_100006430(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000664C(v5, 0);
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

  result = sub_100006C94();
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
        v10 = sub_100006C04();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000664C(v10, 0);
        result = sub_100006C84();
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

uint64_t sub_100006560(uint64_t result)
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

  result = sub_1000066C0(result, v11, 1, v3);
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

void *sub_10000664C(uint64_t a1, uint64_t a2)
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

  sub_100002E74(&qword_10000C498, &qword_1000071B8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000066C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002E74(&qword_10000C498, &qword_1000071B8);
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

_BYTE **sub_1000067B4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1000067C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100006824(uint64_t a1)
{
  v2 = sub_100002E74(&qword_10000C4A0, &qword_1000071C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000688C()
{
  result = qword_10000C4A8;
  if (!qword_10000C4A8)
  {
    sub_100006944();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C4A8);
  }

  return result;
}