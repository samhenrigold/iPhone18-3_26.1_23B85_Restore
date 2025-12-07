uint64_t sub_1C1B17C6C()
{
  v1 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v48 - v5;
  v7 = sub_1C1B94588();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v14 = v48 - v13;
  v15 = OBJC_IVAR___APPCMediaMetricsHelper_adHasImpressed;
  if ((v0[OBJC_IVAR___APPCMediaMetricsHelper_adHasImpressed] & 1) == 0)
  {
    v16 = &v0[OBJC_IVAR___APPCMediaMetricsHelper_adType];
    if ((v0[OBJC_IVAR___APPCMediaMetricsHelper_adType + 8] & 1) == 0 && *v16 == 3)
    {
      v17 = OBJC_IVAR___APPCMediaMetricsHelper_mediaStartedTimestamp;
      v18 = result;
      swift_beginAccess();
      sub_1C1AA7E30(&v0[v17], v6, &qword_1EBF07F50, &qword_1C1B9A590);
      v19 = *(v8 + 48);
      v49 = v18;
      if (v19(v6, 1, v18) == 1)
      {
        sub_1C1AA7C8C(v6, &qword_1EBF07F50, &qword_1C1B9A590);
        sub_1C1B94578();
        (*(v8 + 56))(v4, 0, 1, v49);
        swift_beginAccess();
        sub_1C1B19384(v4, &v0[v17], &qword_1EBF07F50, &qword_1C1B9A590);
        return swift_endAccess();
      }

      (*(v8 + 32))(v14, v6, v49);
      v20 = v0;
      v21 = &v0[OBJC_IVAR___APPCMediaMetricsHelper_impressionThreshold];
      if (v0[OBJC_IVAR___APPCMediaMetricsHelper_impressionThreshold + 8])
      {
        v22 = sub_1C1B95128();
        sub_1C1AC53E4();
        v23 = sub_1C1B95298();
        sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_1C1B98E60;
        v25 = v20;
        v26 = [v25 description];
        v27 = sub_1C1B94D88();
        v29 = v28;

        *(v24 + 56) = MEMORY[0x1E69E6158];
        *(v24 + 64) = sub_1C1AA5E7C();
        *(v24 + 32) = v27;
        *(v24 + 40) = v29;
        sub_1C1B94BA8(v22, &dword_1C1AA2000, v23, "[%{private}@]: Error - No impresion threshold set.", 50, 2, v24);

        return (*(v8 + 8))(v14, v49);
      }

      else
      {
        v30 = *v21;
        sub_1C1B94578();
        sub_1C1B94528();
        v32 = v31;
        v33 = v11;
        v34 = *(v8 + 8);
        v34(v33, v49);
        if (v30 <= v32)
        {
          v48[0] = v34;
          v48[1] = v8 + 8;
          v35 = sub_1C1B94638();
          if ([v0 respondsToSelector_])
          {
            [v0 performSelector_];
            v36 = v49;
            (v48[0])(v14, v49);
            v37 = v0;
            v0[v15] = 1;
            *v21 = 0.0;
            *(v21 + 8) = 1;
            v38 = &v0[OBJC_IVAR___APPCMediaMetricsHelper_containerType];
            swift_beginAccess();
            *v38 = 0;
            v38[8] = 1;
            *v16 = 0;
            v16[8] = 1;
            (*(v8 + 56))(v4, 1, 1, v36);
            swift_beginAccess();
            v39 = v0;
            sub_1C1B19384(v4, &v0[v17], &qword_1EBF07F50, &qword_1C1B9A590);
            return swift_endAccess();
          }

          v40 = sub_1C1B95128();
          sub_1C1AC53E4();
          v41 = sub_1C1B95298();
          sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
          v42 = swift_allocObject();
          *(v42 + 16) = xmmword_1C1B98E60;
          v43 = v20;
          v44 = [v43 description];
          v45 = sub_1C1B94D88();
          v47 = v46;

          *(v42 + 56) = MEMORY[0x1E69E6158];
          *(v42 + 64) = sub_1C1AA5E7C();
          *(v42 + 32) = v45;
          *(v42 + 40) = v47;
          sub_1C1B94BA8(v40, &dword_1C1AA2000, v41, "[%{private}@]: Error - Cannot get impress Selector.", 51, 2, v42);

          return (v48[0])(v14, v49);
        }

        else
        {
          return (v34)(v14, v49);
        }
      }
    }
  }

  return result;
}

id MediaMetricsHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MediaMetricsHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaMetricsHelper(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C1B18484(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v8 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v28 - v9;
  v29 = sub_1C1B95138();
  sub_1C1AC53E4();
  v11 = sub_1C1B95298();
  sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C1B9D2F0;
  v13 = (v3 + OBJC_IVAR___APPCMediaMetricsHelper_promotedContentIdentifier);
  swift_beginAccess();
  v15 = *v13;
  v14 = v13[1];
  v16 = MEMORY[0x1E69E6158];
  *(v12 + 56) = MEMORY[0x1E69E6158];
  v17 = sub_1C1AA5E7C();
  *(v12 + 64) = v17;
  *(v12 + 32) = v15;
  *(v12 + 40) = v14;

  v18 = sub_1C1B94468();
  *(v12 + 96) = v16;
  *(v12 + 104) = v17;
  *(v12 + 72) = v18;
  *(v12 + 80) = v19;
  if (a2 > 80001)
  {
    if (a2 == 80002)
    {
      v20 = 0xE300000000000000;
      v21 = 7827308;
      goto LABEL_11;
    }

    if (a2 == 80003)
    {
      v20 = 0xE400000000000000;
      v21 = 1919905648;
      goto LABEL_11;
    }

LABEL_8:
    v20 = 0xE700000000000000;
    v21 = 0x6E776F6E6B6E75;
    goto LABEL_11;
  }

  if (a2 == 80000)
  {
    v20 = 0xE400000000000000;
    v21 = 1751607656;
    goto LABEL_11;
  }

  if (a2 != 80001)
  {
    goto LABEL_8;
  }

  v20 = 0xE300000000000000;
  v21 = 6580589;
LABEL_11:
  *(v12 + 136) = v16;
  *(v12 + 144) = v17;
  v22 = MEMORY[0x1E69E63B0];
  *(v12 + 112) = v21;
  *(v12 + 120) = v20;
  v23 = MEMORY[0x1E69E6438];
  *(v12 + 176) = v22;
  *(v12 + 184) = v23;
  *(v12 + 152) = a3;
  sub_1C1B94BA8(v29, &dword_1C1AA2000, v11, "PC %{public}@: Video selected with url %{public}@, quality %{public}@ and duration %{public}f.", 94, 2, v12);

  v24 = sub_1C1B944A8();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v10, a1, v24);
  (*(v25 + 56))(v10, 0, 1, v24);
  v26 = OBJC_IVAR___APPCMediaMetricsHelper_videoURL;
  swift_beginAccess();
  sub_1C1B19384(v10, v4 + v26, &qword_1EBF07AC8, &qword_1C1B9CED0);
  result = swift_endAccess();
  *(v4 + OBJC_IVAR___APPCMediaMetricsHelper_videoQuality) = a2;
  *(v4 + OBJC_IVAR___APPCMediaMetricsHelper_videoDuration) = a3;
  return result;
}

Swift::Void __swiftcall MediaMetricsHelper.mediaComplete()()
{
  if (*(v0 + OBJC_IVAR___APPCMediaMetricsHelper_mediaHasStarted) == 1)
  {
    [*(v0 + OBJC_IVAR___APPCMediaMetricsHelper_primitiveCreator) recordMetric:77003 forPurpose:-1 properties:0 internalProperties:0 order:0 options:0];
  }
}

id sub_1C1B18874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = objc_allocWithZone(type metadata accessor for MediaMetricsHelper(0));

  return sub_1C1B18914(a1, a2, a3, a4, a5, a6, a7, a8, v20);
}

id sub_1C1B18914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  *&a9[OBJC_IVAR___APPCMediaMetricsHelper_videoDuration] = 0;
  v16 = OBJC_IVAR___APPCMediaMetricsHelper_videoURL;
  v17 = sub_1C1B944A8();
  (*(*(v17 - 8) + 56))(&a9[v16], 1, 1, v17);
  *&a9[OBJC_IVAR___APPCMediaMetricsHelper_videoQuality] = 0;
  a9[OBJC_IVAR___APPCMediaMetricsHelper_mediaHasStarted] = 0;
  v18 = &a9[OBJC_IVAR___APPCMediaMetricsHelper_impressionThreshold];
  *v18 = 0;
  v18[8] = 1;
  v19 = &a9[OBJC_IVAR___APPCMediaMetricsHelper_containerType];
  *v19 = 0;
  v19[8] = 1;
  v20 = &a9[OBJC_IVAR___APPCMediaMetricsHelper_adType];
  *v20 = 0;
  v20[8] = 1;
  v21 = OBJC_IVAR___APPCMediaMetricsHelper_mediaStartedTimestamp;
  v22 = sub_1C1B94588();
  (*(*(v22 - 8) + 56))(&a9[v21], 1, 1, v22);
  a9[OBJC_IVAR___APPCMediaMetricsHelper_adHasImpressed] = 0;
  swift_unknownObjectWeakInit();
  a9[OBJC_IVAR___APPCMediaMetricsHelper____lazy_storage___initialVolumeSender] = 2;
  v23 = &a9[OBJC_IVAR___APPCMediaMetricsHelper_visiblePercentageChanged];
  *v23 = 0;
  v23[1] = 0;
  *&a9[OBJC_IVAR___APPCMediaMetricsHelper__visiblePercentage] = 0;
  v24 = &a9[OBJC_IVAR___APPCMediaMetricsHelper_contextIdentifier];
  *v24 = a1;
  v24[1] = a2;
  *&a9[OBJC_IVAR___APPCMediaMetricsHelper_orderVendor] = a5;
  *&a9[OBJC_IVAR___APPCMediaMetricsHelper_eventCountTracker] = a7;
  v25 = &a9[OBJC_IVAR___APPCMediaMetricsHelper_promotedContentIdentifier];
  *v25 = a3;
  v25[1] = a4;
  *&a9[OBJC_IVAR___APPCMediaMetricsHelper_primitiveCreator] = a6;
  *&a9[OBJC_IVAR___APPCMediaMetricsHelper_notificationOwner] = a8;
  v28.receiver = a9;
  v28.super_class = type metadata accessor for MediaMetricsHelper(0);
  return objc_msgSendSuper2(&v28, sel_init);
}

uint64_t type metadata accessor for MediaMetricsHelper(uint64_t a1)
{
  result = qword_1EDE6C0F8;
  if (!qword_1EDE6C0F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C1B18B88(uint64_t a1)
{
  sub_1C1AB00FC(319, &qword_1EDE6CD38, MEMORY[0x1E6968FB0]);
  if (v1 <= 0x3F)
  {
    sub_1C1AB00FC(319, &qword_1EDE6CDD0, MEMORY[0x1E6969530]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1C1B19318(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  v6 = a1;
  return v3(&v6, &v5);
}

uint64_t sub_1C1B19384(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1C1AC1F08(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C1B193EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1B1945C(uint64_t a1)
{
  if ((a1 + 1) < 0xB)
  {
    return a1 + 1;
  }

  else
  {
    return 11;
  }
}

uint64_t static OS_dispatch_queue.asyncMainIfNecessary(_:)(uint64_t (*a1)(void), uint64_t a2)
{
  v4 = sub_1C1B94C18();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C1B94C38();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isMainThread])
  {
    return a1();
  }

  v13 = sub_1C1B95178();
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C1B196F0;
  aBlock[3] = &unk_1F4151570;
  v14 = _Block_copy(aBlock);

  sub_1C1B94C28();
  v15[1] = MEMORY[0x1E69E7CC0];
  sub_1C1B1973C();
  sub_1C1AC1F08(&unk_1EBF09090, &qword_1C1B9F028);
  sub_1C1B19794();
  sub_1C1B95318();
  MEMORY[0x1C6907180](0, v11, v7, v14);
  _Block_release(v14);

  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
}

uint64_t sub_1C1B196F0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

unint64_t sub_1C1B1973C()
{
  result = qword_1EDE6CA58;
  if (!qword_1EDE6CA58)
  {
    sub_1C1B94C18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6CA58);
  }

  return result;
}

unint64_t sub_1C1B19794()
{
  result = qword_1EDE6CA40;
  if (!qword_1EDE6CA40)
  {
    sub_1C1AC3404(&unk_1EBF09090, &qword_1C1B9F028);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6CA40);
  }

  return result;
}

uint64_t XPCContentPipelineTransformer.__allocating_init(requestManager:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1C1AC0580(a1, v2 + 16);
  return v2;
}

uint64_t XPCContentPipelineTransformer.fetch(using:adType:cachePolicy:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_1C1B945F8();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C1B19920, 0, 0);
}

uint64_t sub_1C1B19920()
{
  v26 = v0;
  if (qword_1EDE6C4E0 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_1C1B94BE8();
  sub_1C1AB4454(v2, qword_1EDE6D058);
  v3 = v1;
  v4 = sub_1C1B94BC8();
  v5 = sub_1C1B95138();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[9];
    v6 = v0[10];
    v8 = v0[8];
    v9 = v0[5];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136315138;
    v12 = OBJC_IVAR___APPCBaseContext_identifier;
    swift_beginAccess();
    (*(v7 + 16))(v6, v9 + v12, v8);
    v13 = sub_1C1B945A8();
    v15 = v14;
    (*(v7 + 8))(v6, v8);
    v16 = sub_1C1AC7650(v13, v15, &v25);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_1C1AA2000, v4, v5, "[ContentPipelineTransformer] Sending request for context %s over xpc", v10, 0xCu);
    sub_1C1AA86F8(v11);
    MEMORY[0x1C6908230](v11, -1, -1);
    MEMORY[0x1C6908230](v10, -1, -1);
  }

  v17 = v0[7];
  v18 = v17[5];
  v19 = v17[6];
  sub_1C1AAABE0(v17 + 2, v18);
  v24 = (*(v19 + 24) + **(v19 + 24));
  v20 = swift_task_alloc();
  v0[11] = v20;
  *v20 = v0;
  v20[1] = sub_1C1B19BF0;
  v22 = v0[5];
  v21 = v0[6];

  return v24(v22, v21, v18, v19);
}

uint64_t sub_1C1B19BF0(uint64_t a1)
{
  v4 = *v2;

  v6 = *(v4 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t XPCContentPipelineTransformer.__deallocating_deinit()
{
  sub_1C1AA86F8((v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1C1B19D7C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C1B013DC;

  return XPCContentPipelineTransformer.fetch(using:adType:cachePolicy:)(a1, a2);
}

unint64_t sub_1C1B19E28()
{
  result = qword_1EBF08E18;
  if (!qword_1EBF08E18)
  {
    sub_1C1B19E80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08E18);
  }

  return result;
}

unint64_t sub_1C1B19E80()
{
  result = qword_1EDE6CA20[0];
  if (!qword_1EDE6CA20[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EDE6CA20);
  }

  return result;
}

uint64_t sub_1C1B19F2C@<X0>(char *a2@<X8>)
{
  v3 = sub_1C1B955F8();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_1C1B19F8C@<X0>(char *a3@<X8>)
{
  v4 = sub_1C1B955F8();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1C1B19FF0(uint64_t a1)
{
  v2 = sub_1C1B1A644();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B1A02C(uint64_t a1)
{
  v2 = sub_1C1B1A644();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1B1A068()
{
  sub_1C1B95958();
  sub_1C1B94DE8();
  return sub_1C1B959A8();
}

uint64_t sub_1C1B1A0D4(uint64_t a1)
{
  sub_1C1B95958();
  sub_1C1B94DE8();
  return sub_1C1B959A8();
}

uint64_t sub_1C1B1A124@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1C1B955F8();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1C1B1A244(void *a1, uint64_t a2)
{
  v5 = sub_1C1AC1F08(&qword_1EBF08E38, &qword_1C1B9F130);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B1A644();
  sub_1C1B95A18();
  v12 = 0;
  sub_1C1B1A6EC();
  sub_1C1B95808();
  if (!v2)
  {
    sub_1C1AF1AC0(&qword_1EDE6BC08, &protocol conformance descriptor for PromotedContent);
    sub_1C1AF1AC0(&qword_1EDE6BC10, &protocol conformance descriptor for PromotedContent);
    swift_getObjectType();
    v11 = a2;
    v10[15] = 1;
    sub_1C1B95808();
  }

  return (*(v6 + 8))(v8, v5);
}

void *sub_1C1B1A40C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1C1B1A454(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void *sub_1C1B1A454(void *a1)
{
  v3 = sub_1C1AC1F08(&qword_1EBF08E20, &qword_1C1B9F128);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B1A644();
  sub_1C1B95A08();
  if (!v1)
  {
    v11 = 0;
    sub_1C1B1A698();
    sub_1C1B956F8();
    type metadata accessor for PromotedContent(0);
    v9[15] = 1;
    sub_1C1AF1AC0(&qword_1EDE6BC08, &protocol conformance descriptor for PromotedContent);
    sub_1C1B956F8();
    (*(v4 + 8))(v6, v3);
    v7 = v10;
  }

  sub_1C1AA86F8(a1);
  return v7;
}

unint64_t sub_1C1B1A644()
{
  result = qword_1EBF08E28;
  if (!qword_1EBF08E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08E28);
  }

  return result;
}

unint64_t sub_1C1B1A698()
{
  result = qword_1EBF08E30;
  if (!qword_1EBF08E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08E30);
  }

  return result;
}

unint64_t sub_1C1B1A6EC()
{
  result = qword_1EBF08E40;
  if (!qword_1EBF08E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08E40);
  }

  return result;
}

unint64_t sub_1C1B1A764()
{
  result = qword_1EBF08E48;
  if (!qword_1EBF08E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08E48);
  }

  return result;
}

unint64_t sub_1C1B1A7BC()
{
  result = qword_1EBF08E50;
  if (!qword_1EBF08E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08E50);
  }

  return result;
}

unint64_t sub_1C1B1A814()
{
  result = qword_1EBF08E58;
  if (!qword_1EBF08E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08E58);
  }

  return result;
}

unint64_t sub_1C1B1A86C()
{
  result = qword_1EBF08E60;
  if (!qword_1EBF08E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08E60);
  }

  return result;
}

unint64_t sub_1C1B1A8C0()
{
  result = qword_1EBF08E68;
  if (!qword_1EBF08E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08E68);
  }

  return result;
}

void sub_1C1B1A914(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1C1AC1F08(&qword_1EBF08EE8, &qword_1C1B9F598);
    v2 = sub_1C1B955C8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);

        v19 = v18;
        v20 = sub_1C1AA7C14(v17, v16);
        if (v21)
        {
          v8 = (v2[6] + 16 * v20);
          *v8 = v17;
          v8[1] = v16;
          v9 = v20;

          v10 = v2[7];
          v11 = *(v10 + 8 * v9);
          *(v10 + 8 * v9) = v19;

          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v20;
          v22 = (v2[6] + 16 * v20);
          *v22 = v17;
          v22[1] = v16;
          *(v2[7] + 8 * v20) = v19;
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

unint64_t sub_1C1B1AB0C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1C1AC1F08(&unk_1EBF080A0, &unk_1C1B9A670);
    v2 = sub_1C1B955C8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v16 = *v14;
        v15 = v14[1];
        v17 = *(*(a1 + 56) + 8 * v13);

        v18 = v17;
        result = sub_1C1AA7C14(v16, v15);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          *(v2[7] + 8 * v10) = v18;
          result = swift_unknownObjectRelease();
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v16;
          v20[1] = v15;
          *(v2[7] + 8 * result) = v18;
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_1C1B1ACEC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  if (*(a1 + 16))
  {
    sub_1C1AC1F08(&unk_1EBF080D0, &unk_1C1B9A6A0);
    v3 = sub_1C1B955C8();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v13 >= v7)
    {

      return v3;
    }

    v6 = *(a1 + 64 + 8 * v13);
    ++v9;
    if (v6)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v15 = (*(a1 + 48) + 16 * (v14 | (v13 << 6)));
        v17 = *v15;
        v16 = v15[1];

        swift_unknownObjectRetain();
        sub_1C1AC1F08(&qword_1EBF08EE0, &unk_1C1B9BE70);
        swift_dynamicCast();
        sub_1C1AA7E98(&v24, v26);
        sub_1C1AA7E98(v26, v27);
        sub_1C1AA7E98(v27, &v25);
        result = a2(v17, v16);
        if (v18)
        {
          v10 = (v3[6] + 16 * result);
          *v10 = v17;
          v10[1] = v16;
          v11 = result;

          v12 = (v3[7] + 32 * v11);
          sub_1C1AA86F8(v12);
          result = sub_1C1AA7E98(&v25, v12);
          v9 = v13;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v3[2] >= v3[3])
          {
            goto LABEL_20;
          }

          *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v19 = (v3[6] + 16 * result);
          *v19 = v17;
          v19[1] = v16;
          result = sub_1C1AA7E98(&v25, (v3[7] + 32 * result));
          v20 = v3[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_21;
          }

          v3[2] = v22;
          v9 = v13;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v9;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1C1B1AF58(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1C1AC1F08(&unk_1EBF08ED0, &qword_1C1B9F590);
    v2 = sub_1C1B955C8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1C1AAA7B8(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1C1AA7E98(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1C1AA7E98(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1C1AA7E98(v31, v32);
    result = sub_1C1B95408();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1C1AA7E98(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1C1B1B268()
{
  v1 = OBJC_IVAR___APPCDiagnosticMetricsHelper_networkType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C1B1B2AC(uint64_t a1)
{
  v3 = OBJC_IVAR___APPCDiagnosticMetricsHelper_networkType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C1B1B368()
{
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1B1B420(uint64_t a1)
{
  sub_1C1B94DE8();
}

uint64_t sub_1C1B1B4C4(uint64_t a1)
{
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

unint64_t sub_1C1B1B578@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C1B1D7E0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1C1B1B5A8(unint64_t *a1@<X8>)
{
  v2 = "tive";
  v3 = 0xD000000000000014;
  if (*v1 == 2)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = "primitiveCreator";
  }

  v4 = 0xD000000000000019;
  if (*v1)
  {
    v5 = "DedupeState";
  }

  else
  {
    v4 = 0xD000000000000011;
    v5 = "promotedContentIdentifier";
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v4 = v3;
    v6 = v2;
  }

  *a1 = v4;
  a1[1] = v6 | 0x8000000000000000;
}

unint64_t sub_1C1B1B620()
{
  v1 = 0xD000000000000014;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000010;
  }

  v2 = 0xD000000000000019;
  if (!*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1C1B1B694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C1B1D7E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C1B1B6BC(uint64_t a1)
{
  v2 = sub_1C1B1D260();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B1B6F8(uint64_t a1)
{
  v2 = sub_1C1B1D260();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *DiagnosticMetricsHelper.init(from:)(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF08E78, &qword_1C1B9F380);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  *(v1 + OBJC_IVAR___APPCDiagnosticMetricsHelper_networkType) = 0;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B1D260();
  sub_1C1B95A08();
  if (v2)
  {
    sub_1C1AA86F8(a1);
    type metadata accessor for DiagnosticMetricsHelper();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v22) = 0;
    v9 = sub_1C1B95698();
    v11 = (v1 + OBJC_IVAR___APPCDiagnosticMetricsHelper_contextIdentifier);
    *v11 = v9;
    v11[1] = v12;
    LOBYTE(v22) = 1;
    v13 = sub_1C1B95698();
    v14 = (v1 + OBJC_IVAR___APPCDiagnosticMetricsHelper_promotedContentIdentifier);
    *v14 = v13;
    v14[1] = v15;
    v21 = 2;
    sub_1C1B1D2B4();
    sub_1C1B956F8();
    v19 = v22;
    sub_1C1B1D35C(&unk_1EDE6C140, type metadata accessor for PrimitiveCreator, &unk_1C1B98CBC);
    sub_1C1B1D35C(&qword_1EDE6C150, type metadata accessor for PrimitiveCreator, &unk_1C1B98C94);
    *(v1 + OBJC_IVAR___APPCDiagnosticMetricsHelper_primitiveCreator) = v19;
    [objc_opt_self() daemonDeliveryClass];
    swift_getObjCClassMetadata();
    v16 = [swift_getObjCClassFromMetadata() daemonDelivery];
    *(v1 + OBJC_IVAR___APPCDiagnosticMetricsHelper_notificationOwner) = v16;
    v21 = 3;
    sub_1C1B1D308();
    sub_1C1B956F8();
    v17 = v22;
    sub_1C1B1D35C(&unk_1EDE6C0B0, type metadata accessor for MetricEventsTracker, &unk_1C1B9CAF8);
    sub_1C1B1D35C(&qword_1EDE6C0C0, type metadata accessor for MetricEventsTracker, &unk_1C1B9CAD0);
    *(v1 + OBJC_IVAR___APPCDiagnosticMetricsHelper_metricEventsTracking) = v17;
    v18 = type metadata accessor for DiagnosticMetricsHelper();
    v20.receiver = v1;
    v20.super_class = v18;
    v3 = objc_msgSendSuper2(&v20, sel_init);
    (*(v6 + 8))(v8, v5);
    sub_1C1AA86F8(a1);
  }

  return v3;
}

uint64_t sub_1C1B1BD94(void *a1)
{
  v3 = sub_1C1AC1F08(&qword_1EBF08EB0, &qword_1C1B9F388);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - v5;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B1D260();
  sub_1C1B95A18();
  LOBYTE(v11) = 0;

  sub_1C1B957A8();
  if (v1)
  {
    (*(v4 + 8))(v6, v3);
  }

  else
  {

    LOBYTE(v11) = 1;

    sub_1C1B957A8();

    type metadata accessor for PrimitiveCreator();
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      swift_unknownObjectRetain();
    }

    v11 = v8;
    HIBYTE(v10) = 2;
    sub_1C1B1D3A4();
    sub_1C1B95788();

    type metadata accessor for MetricEventsTracker(0);
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      swift_unknownObjectRetain();
    }

    v11 = v9;
    HIBYTE(v10) = 3;
    sub_1C1B1D3F8();
    sub_1C1B95788();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1C1B1C048(uint64_t a1, uint64_t a2)
{
  if (qword_1EDE6BC60 != -1)
  {
    swift_once();
  }

  sub_1C1AAD2FC(&qword_1EDE6CE68, v11);
  sub_1C1AAABE0(v11, v11[3]);
  v5 = *(v2 + OBJC_IVAR___APPCDiagnosticMetricsHelper_contextIdentifier);
  v6 = *(v2 + OBJC_IVAR___APPCDiagnosticMetricsHelper_contextIdentifier + 8);
  v8 = *(v2 + OBJC_IVAR___APPCDiagnosticMetricsHelper_promotedContentIdentifier);
  v7 = *(v2 + OBJC_IVAR___APPCDiagnosticMetricsHelper_promotedContentIdentifier + 8);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;

  sub_1C1B4A2D8(v5, v6, v8, v7, sub_1C1B18B2C, v9);

  return sub_1C1AA86F8(v11);
}

uint64_t sub_1C1B1C214()
{
  if (qword_1EDE6BC60 != -1)
  {
    swift_once();
  }

  sub_1C1AAD2FC(&qword_1EDE6CE68, v6);
  sub_1C1AAABE0(v6, v6[3]);
  v1 = *(v0 + OBJC_IVAR___APPCDiagnosticMetricsHelper_contextIdentifier);
  v2 = *(v0 + OBJC_IVAR___APPCDiagnosticMetricsHelper_contextIdentifier + 8);
  v4 = *(v0 + OBJC_IVAR___APPCDiagnosticMetricsHelper_promotedContentIdentifier);
  v3 = *(v0 + OBJC_IVAR___APPCDiagnosticMetricsHelper_promotedContentIdentifier + 8);

  sub_1C1B4A4E4(v1, v2, v4, v3);

  return sub_1C1AA86F8(v6);
}

uint64_t sub_1C1B1C33C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v23 = a2;
  v3 = sub_1C1B94A58();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1AC1F08(&qword_1EBF08DC8, &unk_1C1B9F390);
  inited = swift_initStackObject();
  v22 = xmmword_1C1B98E60;
  *(inited + 16) = xmmword_1C1B98E60;
  v8 = *(v4 + 104);
  v8(v6, *MEMORY[0x1E6989F88], v3);
  v9 = sub_1C1B94A48();
  v11 = v10;
  v21 = *(v4 + 8);
  v21(v6, v3);
  *(inited + 32) = v9;
  *(inited + 40) = v11;
  *(inited + 48) = sub_1C1B94D78();
  v12 = sub_1C1AD408C(inited);
  swift_setDeallocating();
  sub_1C1AA7C8C(inited + 32, &unk_1EBF08DD0, &unk_1C1B9EF00);
  if (v24 == 1)
  {
    sub_1C1AC1F08(&qword_1EBF090B0, &unk_1C1B9F3A0);
    v13 = swift_initStackObject();
    *(v13 + 16) = v22;
    v8(v6, *MEMORY[0x1E6989F08], v3);
    v14 = sub_1C1B94A48();
    v16 = v15;
    v21(v6, v3);
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    sub_1C1AA576C(0, &qword_1EDE6C9F0, 0x1E696AD98);
    *(v13 + 48) = sub_1C1B95248();
    v17 = sub_1C1AD46B4(v13);
    swift_setDeallocating();
    sub_1C1AA7C8C(v13 + 32, &qword_1EBF08840, &qword_1C1B9CB40);
    v18 = sub_1C1B1AB0C(v17);

    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1C1AB448C(2501, 101, v12, v18);
  }

  else
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1C1AB448C(2501, 101, v12, 0);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1C1B1C6CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[4] = a4;
  v22[2] = a2;
  v22[3] = a3;
  v22[1] = a1;
  v4 = sub_1C1B94A58();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v22 - v9;
  sub_1C1AC1F08(&qword_1EBF08DC8, &unk_1C1B9F390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1B9AF30;
  v12 = *(v5 + 104);
  v12(v10, *MEMORY[0x1E6989ED8], v4);
  v13 = sub_1C1B94A48();
  v15 = v14;
  v16 = *(v5 + 8);
  v16(v10, v4);
  *(inited + 32) = v13;
  *(inited + 40) = v15;
  *(inited + 48) = sub_1C1B94D78();
  v12(v8, *MEMORY[0x1E6989F00], v4);
  v17 = sub_1C1B94A48();
  v19 = v18;
  v16(v8, v4);
  *(inited + 56) = v17;
  *(inited + 64) = v19;
  *(inited + 72) = sub_1C1B94D78();
  v20 = sub_1C1AD408C(inited);
  swift_setDeallocating();
  sub_1C1AC1F08(&unk_1EBF08DD0, &unk_1C1B9EF00);
  swift_arrayDestroy();
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1C1AB448C(2502, 101, v20, 0);

  return swift_unknownObjectRelease();
}

uint64_t sub_1C1B1C9B8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C1B94A58();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1AC1F08(&qword_1EBF08DC8, &unk_1C1B9F390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1B98E60;
  (*(v3 + 104))(v5, *MEMORY[0x1E6989F88], v2);
  v7 = sub_1C1B94A48();
  v9 = v8;
  (*(v3 + 8))(v5, v2);
  *(inited + 32) = v7;
  *(inited + 40) = v9;
  *(inited + 48) = sub_1C1B94D78();
  v10 = sub_1C1AD408C(inited);
  swift_setDeallocating();
  sub_1C1AA7C8C(inited + 32, &unk_1EBF08DD0, &unk_1C1B9EF00);
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1C1AB448C(2503, 101, v10, 0);

  swift_unknownObjectRelease();
  return sub_1C1B1CC00();
}

uint64_t sub_1C1B1CC00()
{
  v1 = v0;
  v2 = sub_1C1B94588();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v32[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v32[-v8];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v32[-v10];
  v12 = OBJC_IVAR___APPCDiagnosticMetricsHelper_metricEventsTracking;
  v13 = [*(v1 + OBJC_IVAR___APPCDiagnosticMetricsHelper_metricEventsTracking) prerollAdRequestTimestamp];
  if (v13)
  {
    v14 = v13;
    sub_1C1B94558();

    (*(v3 + 32))(v11, v9, v2);
    sub_1C1B94578();
    sub_1C1B94528();
    v16 = v15;
    v33 = sub_1C1B95108();
    sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
    v17 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1C1B9AF30;
    v20 = *(v1 + OBJC_IVAR___APPCDiagnosticMetricsHelper_promotedContentIdentifier);
    v19 = *(v1 + OBJC_IVAR___APPCDiagnosticMetricsHelper_promotedContentIdentifier + 8);
    *(v18 + 56) = MEMORY[0x1E69E6158];
    *(v18 + 64) = sub_1C1AA5E7C();
    v21 = MEMORY[0x1E69E63B0];
    *(v18 + 32) = v20;
    *(v18 + 40) = v19;
    v22 = MEMORY[0x1E69E6438];
    *(v18 + 96) = v21;
    *(v18 + 104) = v22;
    *(v18 + 72) = v16;

    sub_1C1B94BA8(v33, &dword_1C1AA2000, v17, "PC %{public}@: Pre-roll video interval from preroll request is %{public}f, video load FAILED.", 93, 2, v18);

    v23 = *(v1 + v12);
    v24 = OBJC_IVAR___APPCDiagnosticMetricsHelper_networkType;
    swift_beginAccess();
    [v23 sendAnalyticsEventFor:8 interval:*(v1 + v24) networkType:3 placementType:1 failed:v16];
    v25 = *(v3 + 8);
    v25(v6, v2);
    return (v25)(v11, v2);
  }

  else
  {
    v27 = sub_1C1B95128();
    sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
    v28 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1C1B98E60;
    v31 = *(v1 + OBJC_IVAR___APPCDiagnosticMetricsHelper_promotedContentIdentifier);
    v30 = *(v1 + OBJC_IVAR___APPCDiagnosticMetricsHelper_promotedContentIdentifier + 8);
    *(v29 + 56) = MEMORY[0x1E69E6158];
    *(v29 + 64) = sub_1C1AA5E7C();
    *(v29 + 32) = v31;
    *(v29 + 40) = v30;

    sub_1C1B94BA8(v27, &dword_1C1AA2000, v28, "PC %{public}@: Pre-roll video load failed, cannot report failure because adRequestTimestamp is nil.", 99, 2, v29);
  }
}

id DiagnosticMetricsHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DiagnosticMetricsHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DiagnosticMetricsHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1C1B1D158@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for DiagnosticMetricsHelper());
  result = DiagnosticMetricsHelper.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_1C1B1D1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8)
{
  *&a8[OBJC_IVAR___APPCDiagnosticMetricsHelper_networkType] = 0;
  v8 = &a8[OBJC_IVAR___APPCDiagnosticMetricsHelper_contextIdentifier];
  *v8 = a1;
  *(v8 + 1) = a2;
  v9 = &a8[OBJC_IVAR___APPCDiagnosticMetricsHelper_promotedContentIdentifier];
  *v9 = a3;
  *(v9 + 1) = a4;
  *&a8[OBJC_IVAR___APPCDiagnosticMetricsHelper_primitiveCreator] = a5;
  *&a8[OBJC_IVAR___APPCDiagnosticMetricsHelper_notificationOwner] = a6;
  *&a8[OBJC_IVAR___APPCDiagnosticMetricsHelper_metricEventsTracking] = a7;
  v11.receiver = a8;
  v11.super_class = type metadata accessor for DiagnosticMetricsHelper();
  return objc_msgSendSuper2(&v11, sel_init);
}

unint64_t sub_1C1B1D260()
{
  result = qword_1EBF08E80;
  if (!qword_1EBF08E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08E80);
  }

  return result;
}

unint64_t sub_1C1B1D2B4()
{
  result = qword_1EDE6BE10;
  if (!qword_1EDE6BE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BE10);
  }

  return result;
}

unint64_t sub_1C1B1D308()
{
  result = qword_1EDE6BEA0;
  if (!qword_1EDE6BEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BEA0);
  }

  return result;
}

uint64_t sub_1C1B1D35C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C1B1D3A4()
{
  result = qword_1EDE6BE18;
  if (!qword_1EDE6BE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BE18);
  }

  return result;
}

unint64_t sub_1C1B1D3F8()
{
  result = qword_1EDE6BEB0;
  if (!qword_1EDE6BEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BEB0);
  }

  return result;
}

unint64_t sub_1C1B1D6DC()
{
  result = qword_1EBF08EB8;
  if (!qword_1EBF08EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08EB8);
  }

  return result;
}

unint64_t sub_1C1B1D734()
{
  result = qword_1EBF08EC0;
  if (!qword_1EBF08EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08EC0);
  }

  return result;
}

unint64_t sub_1C1B1D78C()
{
  result = qword_1EBF08EC8;
  if (!qword_1EBF08EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08EC8);
  }

  return result;
}

unint64_t sub_1C1B1D7E0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C1B955F8();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C1B1D83C()
{
  sub_1C1B95958();
  sub_1C1B94DE8();
  return sub_1C1B959A8();
}

uint64_t sub_1C1B1D8B0(uint64_t a1)
{
  sub_1C1B95958();
  sub_1C1B94DE8();
  return sub_1C1B959A8();
}

uint64_t sub_1C1B1D904@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1C1B955F8();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1C1B1D994@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1C1B955F8();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1C1B1D9EC(uint64_t a1)
{
  v2 = sub_1C1B1E22C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B1DA28(uint64_t a1)
{
  v2 = sub_1C1B1E22C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id CalendarTapAction.__allocating_init(info:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC15PromotedContent17CalendarTapAction_eventInfo] = a1;
  *&v3[OBJC_IVAR___APPCTapAction_actionType] = 5;
  *&v3[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = 0x3FF0000000000000;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for TapAction();
  return objc_msgSendSuper2(&v5, sel_init);
}

id CalendarTapAction.init(info:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC15PromotedContent17CalendarTapAction_eventInfo] = a1;
  *&v1[OBJC_IVAR___APPCTapAction_actionType] = 5;
  *&v1[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = 0x3FF0000000000000;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TapAction();
  return objc_msgSendSuper2(&v3, sel_init);
}

void *sub_1C1B1DB98(void *a1)
{
  v3 = v1;
  v24 = *MEMORY[0x1E69E9840];
  v5 = sub_1C1AC1F08(qword_1EBF08F28, &qword_1C1B9F738);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B1E22C();
  sub_1C1B95A08();
  if (!v2)
  {
    sub_1C1AE4898();
    sub_1C1B95678();
    v11 = v22;
    v10 = v23;
    v20 = v22;
    if (v23 >> 60 == 15)
    {
      v12 = sub_1C1AA7D00(MEMORY[0x1E69E7CC0]);
LABEL_13:
      *(v3 + OBJC_IVAR____TtC15PromotedContent17CalendarTapAction_eventInfo) = v12;
      sub_1C1B95628();
      v3 = TapAction.init(from:)(&v22);
      (*(v6 + 8))(v8, v5);
      sub_1C1AE49EC(v20, v10);
      sub_1C1AA86F8(a1);
      return v3;
    }

    v13 = objc_opt_self();
    sub_1C1AF5DAC(v11, v10);
    v14 = sub_1C1B944C8();
    v22 = 0;
    v15 = [v13 JSONObjectWithData:v14 options:0 error:&v22];

    if (v15)
    {
      v16 = v22;
      sub_1C1B952F8();
      swift_unknownObjectRelease();
      sub_1C1AC1F08(&unk_1EBF08348, &unk_1C1B9F740);
      if (swift_dynamicCast())
      {
        v12 = v21;
      }

      else
      {
        v12 = sub_1C1AA7D00(MEMORY[0x1E69E7CC0]);
      }

      sub_1C1AE49EC(v20, v10);
      goto LABEL_13;
    }

    v19 = v22;
    v17 = v20;
    sub_1C1AE49EC(v20, v10);
    sub_1C1B94458();

    swift_willThrow();
    sub_1C1AE49EC(v17, v10);
    (*(v6 + 8))(v8, v5);
  }

  sub_1C1AA86F8(a1);
  type metadata accessor for CalendarTapAction();
  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t sub_1C1B1DF3C(void *a1)
{
  v3 = v1;
  v21[5] = *MEMORY[0x1E69E9840];
  v5 = sub_1C1AC1F08(&qword_1EBF08F00, &unk_1C1B9F5B0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v20 - v7;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B1E22C();
  sub_1C1B95A18();
  v9 = objc_opt_self();
  v20[1] = v3;
  v10 = sub_1C1B94CA8();
  v11 = [v9 isValidJSONObject_];

  if (v11)
  {
    v12 = sub_1C1B94CA8();
    v21[0] = 0;
    v13 = [v9 dataWithJSONObject:v12 options:0 error:v21];

    v14 = v21[0];
    if (v13)
    {
      v15 = sub_1C1B944D8();
      v17 = v16;

      v21[0] = v15;
      v21[1] = v17;
      sub_1C1AE4B54();
      sub_1C1B95808();
      if (v2)
      {
        (*(v6 + 8))(v8, v5);
        return sub_1C1AE4A00(v15, v17);
      }

      sub_1C1AE4A00(v15, v17);
      goto LABEL_9;
    }

    v19 = v14;
    sub_1C1B94458();

    swift_willThrow();
  }

  else
  {
    sub_1C1B95828();
    if (!v2)
    {
LABEL_9:
      sub_1C1B95738();
      sub_1C1B3BBE0(v21);
      sub_1C1AA86F8(v21);
    }
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1C1B1E22C()
{
  result = qword_1EBF08F08;
  if (!qword_1EBF08F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08F08);
  }

  return result;
}

id CalendarTapAction.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CalendarTapAction();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1C1B1E398()
{
  result = qword_1EBF08F10;
  if (!qword_1EBF08F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08F10);
  }

  return result;
}

unint64_t sub_1C1B1E3F0()
{
  result = qword_1EBF08F18;
  if (!qword_1EBF08F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08F18);
  }

  return result;
}

unint64_t sub_1C1B1E448()
{
  result = qword_1EBF08F20;
  if (!qword_1EBF08F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08F20);
  }

  return result;
}

uint64_t CachingContentPipelineTransformer.__allocating_init(storage:readthroughSource:storageKey:)(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  sub_1C1AC0580(a1, v8 + 16);
  sub_1C1AC0580(a2, v8 + 56);
  *(v8 + 96) = a3;
  *(v8 + 104) = a4;
  return v8;
}

uint64_t CachingContentPipelineTransformer.init(storage:readthroughSource:storageKey:)(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  sub_1C1AC0580(a1, v4 + 16);
  sub_1C1AC0580(a2, v4 + 56);
  *(v4 + 96) = a3;
  *(v4 + 104) = a4;
  return v4;
}

uint64_t sub_1C1B1E568(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = v3;
  *(v4 + 96) = a2;
  *(v4 + 104) = v5;
  *(v4 + 88) = a1;
  *(v4 + 112) = *v5;
  v7 = sub_1C1B945F8();
  *(v4 + 120) = v7;
  *(v4 + 128) = *(v7 - 8);
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 169) = *a3;

  return MEMORY[0x1EEE6DFA0](sub_1C1B1E660, 0, 0);
}

uint64_t sub_1C1B1E660()
{
  v30 = v0;
  if ((*(v0 + 169) & 1) == 0)
  {
    sub_1C1AAABE0((*(v0 + 104) + 16), *(*(v0 + 104) + 40));
    v1 = sub_1C1B94828();
    if (v1)
    {
      v2 = v1;
      *(v0 + 80) = v1;
      sub_1C1B94FA8();
      swift_getWitnessTable();
      if (sub_1C1B950A8())
      {
        if (qword_1EDE6C4E0 != -1)
        {
          swift_once();
        }

        v3 = *(v0 + 88);
        v4 = sub_1C1B94BE8();
        sub_1C1AB4454(v4, qword_1EDE6D058);

        v5 = v3;
        v6 = sub_1C1B94BC8();
        v7 = sub_1C1B95138();

        if (os_log_type_enabled(v6, v7))
        {
          v9 = *(v0 + 128);
          v8 = *(v0 + 136);
          v10 = *(v0 + 120);
          v11 = *(v0 + 88);
          v12 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v29 = v27;
          *v12 = 134218242;
          *(v12 + 4) = sub_1C1B94F58();

          *(v12 + 12) = 2080;
          v13 = OBJC_IVAR___APPCBaseContext_identifier;
          swift_beginAccess();
          (*(v9 + 16))(v8, v11 + v13, v10);
          v14 = sub_1C1B945A8();
          v16 = v15;
          (*(v9 + 8))(v8, v10);
          v17 = sub_1C1AC7650(v14, v16, &v29);

          *(v12 + 14) = v17;
          _os_log_impl(&dword_1C1AA2000, v6, v7, "[ContentPipelineTransformer] Returning %ld cached contents for context %s", v12, 0x16u);
          sub_1C1AA86F8(v27);
          MEMORY[0x1C6908230](v27, -1, -1);
          MEMORY[0x1C6908230](v12, -1, -1);
        }

        else
        {
        }

        v26 = *(v0 + 8);

        return v26(v2);
      }
    }
  }

  v18 = *(v0 + 169);
  v19 = *(v0 + 104);
  v20 = v19[10];
  v21 = v19[11];
  sub_1C1AAABE0(v19 + 7, v20);
  *(v0 + 168) = v18;
  v28 = (*(v21 + 24) + **(v21 + 24));
  v22 = swift_task_alloc();
  *(v0 + 144) = v22;
  *v22 = v0;
  v22[1] = sub_1C1B1EA50;
  v24 = *(v0 + 88);
  v23 = *(v0 + 96);

  return v28(v24, v23, v0 + 168, v20, v21);
}

uint64_t sub_1C1B1EA50(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v1;

  if (v1)
  {
    v4 = sub_1C1B1EEC8;
  }

  else
  {
    v4 = sub_1C1B1EB64;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1C1B1EB64()
{
  v24 = v0;
  v1 = v0[14];
  v0[8] = v0[19];
  v2 = swift_task_alloc();
  v2[2] = v1[10];
  v2[3] = v1[11];
  v2[4] = v1[12];
  sub_1C1B94FA8();

  swift_getWitnessTable();
  v3 = sub_1C1B954E8();

  v0[9] = v3;
  swift_getWitnessTable();
  if (sub_1C1B950A8())
  {
    if (qword_1EDE6C4E0 != -1)
    {
      swift_once();
    }

    v4 = v0[11];
    v5 = sub_1C1B94BE8();
    sub_1C1AB4454(v5, qword_1EDE6D058);
    v6 = v4;

    v7 = sub_1C1B94BC8();
    v8 = sub_1C1B95138();

    if (os_log_type_enabled(v7, v8))
    {
      v10 = v0[16];
      v9 = v0[17];
      v21 = v0[15];
      v11 = v0[11];
      v12 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = v22;
      *v12 = 134218242;
      *(v12 + 4) = sub_1C1B94F58();

      *(v12 + 12) = 2080;
      v13 = OBJC_IVAR___APPCBaseContext_identifier;
      swift_beginAccess();
      (*(v10 + 16))(v9, v11 + v13, v21);
      v14 = sub_1C1B945A8();
      v16 = v15;
      (*(v10 + 8))(v9, v21);
      v17 = sub_1C1AC7650(v14, v16, &v23);

      *(v12 + 14) = v17;
      _os_log_impl(&dword_1C1AA2000, v7, v8, "[ContentPipelineTransformer] Setting %ld cached contents for context %s", v12, 0x16u);
      sub_1C1AA86F8(v22);
      MEMORY[0x1C6908230](v22, -1, -1);
      MEMORY[0x1C6908230](v12, -1, -1);
    }

    else
    {
    }

    sub_1C1AAABE0((v0[13] + 16), *(v0[13] + 40));
    sub_1C1B94838();
  }

  v18 = v0[19];

  v19 = v0[1];

  return v19(v18);
}

uint64_t sub_1C1B1EEC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C1B1EF2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1C1AAABE0(v3 + 2, v3[5]);
  v8 = sub_1C1B94828();
  if (v8)
  {
    v17[0] = v8;
    MEMORY[0x1EEE9AC00](v8);
    sub_1C1B94FA8();
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_1C1B950E8();
    if (qword_1EDE6C4E0 != -1)
    {
      swift_once();
    }

    v9 = sub_1C1B94BE8();
    sub_1C1AB4454(v9, qword_1EDE6D058);
    v10 = sub_1C1B94BC8();
    v11 = sub_1C1B95138();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      swift_beginAccess();

      v13 = sub_1C1B94F58();

      *(v12 + 4) = v13;
      _os_log_impl(&dword_1C1AA2000, v10, v11, "[ContentPipelineTransformer] Removing cached content. Remaining contents: %ld", v12, 0xCu);
      MEMORY[0x1C6908230](v12, -1, -1);
    }

    sub_1C1AAABE0(v4 + 2, v4[5]);
    swift_beginAccess();

    sub_1C1B94838();
    swift_bridgeObjectRelease_n();
    a3 = a3;
  }

  v14 = v4[10];
  v15 = v4[11];
  sub_1C1AAABE0(v4 + 7, v14);
  v17[0] = a1;
  v17[1] = a2;
  return (*(v15 + 32))(v17, a3, v14, v15);
}

uint64_t sub_1C1B1F234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1C1B95478();
  if (v11 == a2 && v12 == a3)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1C1B95888();
  }

  return v9 & 1;
}

uint64_t sub_1C1B1F2C0()
{
  sub_1C1AAABE0(v0 + 2, v0[5]);
  sub_1C1B94848();
  v1 = v0[10];
  v2 = v0[11];
  sub_1C1AAABE0(v0 + 7, v1);
  return (*(v2 + 40))(v1, v2);
}

uint64_t CachingContentPipelineTransformer.deinit()
{
  sub_1C1AA86F8((v0 + 16));
  sub_1C1AA86F8((v0 + 56));

  return v0;
}

uint64_t CachingContentPipelineTransformer.__deallocating_deinit()
{
  CachingContentPipelineTransformer.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 112, 7);
}

uint64_t sub_1C1B1F3A0(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C1B013DC;

  return sub_1C1B1E568(a1, a2, a3);
}

uint64_t dispatch thunk of CachingContentPipelineTransformer.fetch(using:adType:cachePolicy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 136) + **(*v3 + 136));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1C1AEE19C;

  return v10(a1, a2, a3);
}

id DenylistReasonCharacteristic.__allocating_init(globalCategories:globalKeywords:campaignCategories:campaignKeywords:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = OBJC_IVAR___APPCDenylistReasonCharacteristic_globalCategories;
  v11 = MEMORY[0x1E69E7CC0];
  *&v9[OBJC_IVAR___APPCDenylistReasonCharacteristic_globalCategories] = MEMORY[0x1E69E7CC0];
  v12 = OBJC_IVAR___APPCDenylistReasonCharacteristic_globalKeywords;
  *&v9[OBJC_IVAR___APPCDenylistReasonCharacteristic_globalKeywords] = v11;
  v13 = OBJC_IVAR___APPCDenylistReasonCharacteristic_campaignCategories;
  *&v9[OBJC_IVAR___APPCDenylistReasonCharacteristic_campaignCategories] = v11;
  v14 = OBJC_IVAR___APPCDenylistReasonCharacteristic_campaignKeywords;
  *&v9[OBJC_IVAR___APPCDenylistReasonCharacteristic_campaignKeywords] = v11;
  swift_beginAccess();
  *&v9[v10] = a1;
  swift_beginAccess();
  *&v9[v12] = a2;
  swift_beginAccess();
  *&v9[v13] = a3;
  swift_beginAccess();
  *&v9[v14] = a4;

  v16.receiver = v9;
  v16.super_class = v4;
  return objc_msgSendSuper2(&v16, sel_init);
}

unint64_t sub_1C1B1F868@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C1B1FEA0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_1C1B1FA58(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();

  v3 = sub_1C1B94EB8();

  return v3;
}

uint64_t sub_1C1B1FAE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = sub_1C1B94EC8();
  v7 = *a4;
  swift_beginAccess();
  *(a1 + v7) = v6;
}

id DenylistReasonCharacteristic.init(globalCategories:globalKeywords:campaignCategories:campaignKeywords:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR___APPCDenylistReasonCharacteristic_globalCategories;
  v10 = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR___APPCDenylistReasonCharacteristic_globalCategories] = MEMORY[0x1E69E7CC0];
  v11 = OBJC_IVAR___APPCDenylistReasonCharacteristic_globalKeywords;
  *&v4[OBJC_IVAR___APPCDenylistReasonCharacteristic_globalKeywords] = v10;
  v12 = OBJC_IVAR___APPCDenylistReasonCharacteristic_campaignCategories;
  *&v4[OBJC_IVAR___APPCDenylistReasonCharacteristic_campaignCategories] = v10;
  v13 = OBJC_IVAR___APPCDenylistReasonCharacteristic_campaignKeywords;
  *&v4[OBJC_IVAR___APPCDenylistReasonCharacteristic_campaignKeywords] = v10;
  swift_beginAccess();
  *&v4[v9] = a1;
  swift_beginAccess();
  *&v4[v11] = a2;
  swift_beginAccess();
  *&v4[v12] = a3;

  swift_beginAccess();
  *&v4[v13] = a4;

  v15.receiver = v4;
  v15.super_class = type metadata accessor for DenylistReasonCharacteristic();
  return objc_msgSendSuper2(&v15, sel_init);
}

id DenylistReasonCharacteristic.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DenylistReasonCharacteristic.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DenylistReasonCharacteristic();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1C1B1FEA0(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1C1B1FED8()
{
  result = qword_1EBF08FD0;
  if (!qword_1EBF08FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08FD0);
  }

  return result;
}

uint64_t static AdPosition.positionFromSlotNumber(value:)(uint64_t a1)
{
  v1 = 7102;
  if ((a1 - 3) >= 8)
  {
    v1 = 0;
  }

  if (a1 == 2)
  {
    v1 = 7101;
  }

  if (a1 == 1)
  {
    return 7100;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1C1B20224@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C1B20258(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1C1B20258(uint64_t result)
{
  if ((result - 7100) >= 3 && result != 0)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1C1B2027C()
{
  result = qword_1EBF08FD8;
  if (!qword_1EBF08FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08FD8);
  }

  return result;
}

uint64_t InMemoryCache.__allocating_init()()
{
  v0 = swift_allocObject();
  InMemoryCache.init()();
  return v0;
}

void *InMemoryCache.init()()
{
  v1 = *(*v0 + 80);
  v2 = MEMORY[0x1E69E6158];
  swift_getTupleTypeMetadata2();
  v3 = sub_1C1B94F18();
  v4 = sub_1C1B20B18(v3, v2, v1, MEMORY[0x1E69E6168]);

  v0[2] = v4;
  v0[3] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  return v0;
}

id sub_1C1B2047C(uint64_t a1, uint64_t a2)
{
  [*(v2 + 24) lock];
  swift_beginAccess();

  sub_1C1B94D08();

  return [*(v2 + 24) unlock];
}

uint64_t sub_1C1B20554(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(*v2 + 10);
  v6 = sub_1C1B952D8();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v14 - v7;
  [v2[3] lock];
  v9 = (*(v4[11] + 24))(v5);
  v11 = v10;
  v12 = *(v5 - 8);
  (*(v12 + 16))(v8, a1, v5);
  (*(v12 + 56))(v8, 0, 1, v5);
  v14[4] = v9;
  v14[5] = v11;
  swift_beginAccess();
  sub_1C1B94CF8();
  sub_1C1B94D18();
  swift_endAccess();
  [v2[3] unlock];
  return 1;
}

uint64_t sub_1C1B20708(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(*v3 + 10);
  v7 = sub_1C1B952D8();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v11 - v8;
  [v3[3] lock];
  (*(*(v6 - 8) + 56))(v9, 1, 1, v6);
  v11[4] = a1;
  v11[5] = a2;
  swift_beginAccess();
  sub_1C1B94CF8();

  sub_1C1B94D18();
  swift_endAccess();
  [v3[3] unlock];
  return 1;
}

uint64_t InMemoryCache.deinit()
{

  return v0;
}

uint64_t InMemoryCache.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

unint64_t sub_1C1B20934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C1B94D28();

  return sub_1C1B20990(a1, v6, a2, a3);
}

unint64_t sub_1C1B20990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x1EEE9AC00](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_1C1B94D68();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_1C1B20B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_1C1B94F58())
  {
    sub_1C1B955D8();
    v13 = sub_1C1B955C8();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1C1B94F58();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1C1B94F38())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1C1B95488();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1C1B20934(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

unint64_t SubscriptionType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

void static SubscriptionEvent.subscribed(identifier:purchase:type:token:source:currency:price:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  sub_1C1AC1F08(&unk_1EBF08FE0, qword_1C1B9EF10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1B9EEE0;
  *(inited + 32) = sub_1C1B94D88();
  *(inited + 40) = v17;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 56) = sub_1C1B94D88();
  *(inited + 64) = v18;
  *(inited + 72) = sub_1C1B94D78();
  *(inited + 80) = sub_1C1B94D88();
  *(inited + 88) = v19;
  *(inited + 96) = sub_1C1B94D78();
  v20 = sub_1C1AB3BEC(inited);
  swift_setDeallocating();
  sub_1C1AC1F08(&qword_1EBF08DE0, &unk_1C1B9FAA0);
  swift_arrayDestroy();
  if (a2)
  {
    v21 = sub_1C1B94D88();
    v23 = v22;
    v24 = sub_1C1B94D78();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = v20;
    sub_1C1AB7E28(v24, v21, v23, isUniquelyReferenced_nonNull_native, &v54);

    v20 = v54;
  }

  if (a4)
  {
    v26 = sub_1C1B94D88();
    v28 = v27;
    v29 = sub_1C1B94D78();
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v54 = v20;
    sub_1C1AB7E28(v29, v26, v28, v30, &v54);

    v20 = v54;
  }

  if (a11)
  {
    if (a13)
    {
      v31 = sub_1C1B94D88();
      v33 = v32;
      v34 = sub_1C1B94D78();
      v35 = swift_isUniquelyReferenced_nonNull_native();
      v54 = v20;
      sub_1C1AB7E28(v34, v31, v33, v35, &v54);

      v36 = v54;
      v37 = sub_1C1B94D88();
      v39 = v38;
      v40 = sub_1C1B94D78();
      v41 = swift_isUniquelyReferenced_nonNull_native();
      v54 = v36;
      sub_1C1AB7E28(v40, v37, v39, v41, &v54);

      goto LABEL_15;
    }

    v42 = "SubscriptionEvent: subscribed() currency provided without price! (ignored)";
  }

  else
  {
    if (!a13)
    {
      goto LABEL_15;
    }

    v42 = "SubscriptionEvent: subscribed() price provided without currency! (ignored)";
  }

  v43 = (v42 - 32) | 0x8000000000000000;
  v44 = sub_1C1B95128();
  sub_1C1AC53E4();
  v45 = sub_1C1B95298();
  if (os_log_type_enabled(v45, v44))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v54 = v47;
    *v46 = 136315138;
    *(v46 + 4) = sub_1C1AC7650(0xD00000000000004ALL, v43, &v54);
    _os_log_impl(&dword_1C1AA2000, v45, v44, "%s", v46, 0xCu);
    sub_1C1AA86F8(v47);
    MEMORY[0x1C6908230](v47, -1, -1);
    MEMORY[0x1C6908230](v46, -1, -1);
  }

LABEL_15:
  v48 = objc_opt_self();
  [v48 metricClass];
  swift_getObjCClassMetadata();
  v49 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1C1AC1F08(&qword_1EBF08E00, &unk_1C1B9F5A0);
  v50 = sub_1C1B94CA8();

  v51 = [v49 initWithPurpose:-1 metric:77002 contentIdentifier:0 contextIdentifier:0 handle:0 secondaryHandle:0 branch:0 properties:0 internalProperties:v50 relayData:0 environment:0 order:0 options:0];

  if (v51)
  {
    [v48 daemonDeliveryClass];
    swift_getObjCClassMetadata();
    [objc_msgSend(swift_getObjCClassFromMetadata() daemonDelivery)];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v52 = sub_1C1B95128();
    sub_1C1AC53E4();
    v53 = sub_1C1B95298();
    sub_1C1B94BA8(v52, &dword_1C1AA2000, v53, "SubscriptionEvent: subscribed() Couldn't create message!", 56, 2, MEMORY[0x1E69E7CC0]);
  }
}

uint64_t static SubscriptionEvent.subscribed(identifier:purchase:type:token:source:currency:price:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void (*a14)(uint64_t, unint64_t, unint64_t), uint64_t a15)
{
  sub_1C1AC1F08(&unk_1EBF08FE0, qword_1C1B9EF10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1B9EEE0;
  *(inited + 32) = sub_1C1B94D88();
  *(inited + 40) = v19;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 56) = sub_1C1B94D88();
  *(inited + 64) = v20;
  *(inited + 72) = sub_1C1B94D78();
  *(inited + 80) = sub_1C1B94D88();
  *(inited + 88) = v21;
  *(inited + 96) = sub_1C1B94D78();
  v22 = sub_1C1AB3BEC(inited);
  swift_setDeallocating();
  sub_1C1AC1F08(&qword_1EBF08DE0, &unk_1C1B9FAA0);
  swift_arrayDestroy();
  if (a2)
  {
    v23 = sub_1C1B94D88();
    v25 = v24;
    v26 = sub_1C1B94D78();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = v22;
    sub_1C1AB7E28(v26, v23, v25, isUniquelyReferenced_nonNull_native, &v58);

    v22 = v58;
  }

  if (a4)
  {
    v28 = sub_1C1B94D88();
    v30 = v29;
    v31 = sub_1C1B94D78();
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v58 = v22;
    sub_1C1AB7E28(v31, v28, v30, v32, &v58);

    v22 = v58;
  }

  if (a11)
  {
    if (a13)
    {
      v33 = sub_1C1B94D88();
      v35 = v34;
      v36 = sub_1C1B94D78();
      v37 = swift_isUniquelyReferenced_nonNull_native();
      v58 = v22;
      sub_1C1AB7E28(v36, v33, v35, v37, &v58);

      v38 = v58;
      v39 = sub_1C1B94D88();
      v41 = v40;
      v42 = sub_1C1B94D78();
      v43 = swift_isUniquelyReferenced_nonNull_native();
      v58 = v38;
      sub_1C1AB7E28(v42, v39, v41, v43, &v58);

      v44 = 0;
LABEL_15:
      v46 = 0xE000000000000000;
      goto LABEL_16;
    }

    v44 = 0xD00000000000004ALL;
    v45 = "SubscriptionEvent: subscribed() currency provided without price! (ignored)";
  }

  else
  {
    if (!a13)
    {
      v44 = 0;
      goto LABEL_15;
    }

    v44 = 0xD00000000000004ALL;
    v45 = "SubscriptionEvent: subscribed() price provided without currency! (ignored)";
  }

  v46 = (v45 - 32) | 0x8000000000000000;
  v47 = sub_1C1B95128();
  sub_1C1AC53E4();
  v48 = sub_1C1B95298();
  if (os_log_type_enabled(v48, v47))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v58 = v50;
    *v49 = 136315138;
    *(v49 + 4) = sub_1C1AC7650(0xD00000000000004ALL, v46, &v58);
    _os_log_impl(&dword_1C1AA2000, v48, v47, "%s", v49, 0xCu);
    sub_1C1AA86F8(v50);
    MEMORY[0x1C6908230](v50, -1, -1);
    MEMORY[0x1C6908230](v49, -1, -1);
  }

LABEL_16:
  v51 = objc_opt_self();
  [v51 metricClass];
  swift_getObjCClassMetadata();
  v52 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1C1AC1F08(&qword_1EBF08E00, &unk_1C1B9F5A0);
  v53 = sub_1C1B94CA8();

  v54 = [v52 initWithPurpose:-1 metric:77002 contentIdentifier:0 contextIdentifier:0 handle:0 secondaryHandle:0 branch:0 properties:0 internalProperties:v53 relayData:0 environment:0 order:0 options:0];

  if (!v54)
  {
    v55 = sub_1C1B95128();
    sub_1C1AC53E4();
    v56 = sub_1C1B95298();
    sub_1C1B94BA8(v55, &dword_1C1AA2000, v56, "SubscriptionEvent: subscribed() Couldn't create message!", 56, 2, MEMORY[0x1E69E7CC0]);

    if (!a14)
    {
    }

    sub_1C1AC0598(a14);

    a14(0, v44, v46);

LABEL_21:
    sub_1C1AC0530(a14, a15);
  }

  [v51 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  [objc_msgSend(swift_getObjCClassFromMetadata() daemonDelivery)];
  swift_unknownObjectRelease();
  if (a14)
  {
    sub_1C1AC0598(a14);

    a14(1, v44, v46);

    swift_unknownObjectRelease();
    goto LABEL_21;
  }

  return swift_unknownObjectRelease();
}

id SubscriptionEvent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SubscriptionEvent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SubscriptionEvent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SubscriptionEvent.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SubscriptionEvent();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_1C1B21BF0()
{
  result = qword_1EBF08FF0;
  if (!qword_1EBF08FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08FF0);
  }

  return result;
}

uint64_t FrequencyCapDataType.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    if (*v0)
    {
      return 0xD000000000000014;
    }

    else
    {
      return 0x6B63696C43;
    }
  }

  else
  {
    MEMORY[0x1C6906DF0](0x64616F6C6E776F44, 0xE90000000000005BLL);
    type metadata accessor for ADDownloadType(0);
    sub_1C1B95558();
    MEMORY[0x1C6906DF0](93, 0xE100000000000000);
    return 0;
  }
}

void sub_1C1B21D50(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 type];
  v5 = [a1 text];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1C1B94D88();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = [a1 accessibleText];
  if (v10)
  {
    v11 = v10;
    v12 = sub_1C1B94D88();
    v14 = v13;
  }

  else
  {

    v12 = 0;
    v14 = 0;
  }

  if ((v4 - 100000) >= 7)
  {
    v15 = 6;
  }

  else
  {
    v15 = 0x5020704030100uLL >> (8 * (v4 + 96));
  }

  *a2 = v15;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9;
  *(a2 + 24) = v12;
  *(a2 + 32) = v14;
}

uint64_t dispatch thunk of AppImpressionable.init(compactJWS:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1C1AB9A98;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of AppImpressionable.beginView()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C1AB9CA0;

  return v7(a1, a2);
}

uint64_t dispatch thunk of AppImpressionable.endView()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C1AB9CA0;

  return v7(a1, a2);
}

uint64_t sub_1C1B221C8(uint64_t a1, unsigned __int8 a2)
{
  sub_1C1B94DE8();
}

uint64_t sub_1C1B22338(uint64_t a1, unsigned __int8 a2)
{
  sub_1C1B94DE8();
}

uint64_t sub_1C1B22478(uint64_t a1, unsigned __int8 a2)
{
  sub_1C1B94DE8();
}

void sub_1C1B225C4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

unint64_t sub_1C1B2262C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x726F746E65766E69;
    v6 = 0x6574736575716572;
    if (a1 != 2)
    {
      v6 = 0x746E6F437377656ELL;
    }

    if (a1)
    {
      v5 = 0x6C6F686563616C70;
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
    v1 = 0x74696D696CLL;
    v2 = 0x676E696863746566;
    if (a1 != 7)
    {
      v2 = 0x676E6974696177;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x65726F7453707061;
    if (a1 != 4)
    {
      v3 = 0xD000000000000011;
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

uint64_t sub_1C1B22774()
{
  v1 = *v0;
  sub_1C1B95958();
  sub_1C1B221C8(v3, v1);
  return sub_1C1B959A8();
}

uint64_t sub_1C1B227C4(uint64_t a1)
{
  v2 = *v1;
  sub_1C1B95958();
  sub_1C1B221C8(v4, v2);
  return sub_1C1B959A8();
}

unint64_t sub_1C1B22808@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C1B2A6A4(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1C1B22838@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C1B2262C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1C1B22880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C1B2A6A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C1B228A8(uint64_t a1)
{
  v2 = sub_1C1B2AF14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B228E4(uint64_t a1)
{
  v2 = sub_1C1B2AF14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1B22920()
{
  [objc_opt_self() daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v0 = [swift_getObjCClassFromMetadata() daemonDelivery];
  swift_getObjectType();
  v1 = type metadata accessor for ContextMetricsNotificationOwner();
  v2 = swift_allocObject();
  v3 = sub_1C1B4A96C(v0, v2);
  result = swift_unknownObjectRelease();
  qword_1EDE6CE80 = v1;
  unk_1EDE6CE88 = &off_1F4152CF0;
  qword_1EDE6CE68 = v3;
  return result;
}

char *sub_1C1B229D0()
{
  v1 = *(v0 + OBJC_IVAR___APPCBaseContext_maxSize);
  v2 = *(v0 + OBJC_IVAR___APPCBaseContext_maxSize + 8);
  v3 = *(v0 + OBJC_IVAR___APPCBaseContext_current);
  v4 = OBJC_IVAR___APPCContext_newsContext;
  swift_beginAccess();
  v5 = *(v0 + v4);
  v6 = (v0 + OBJC_IVAR___APPCBaseContext_requestedAd);
  swift_beginAccess();
  v7 = v6[1];
  v23 = *v6;
  v22 = type metadata accessor for ContextBuilder(0);
  v8 = objc_allocWithZone(v22);

  v21 = v5;
  sub_1C1B945E8();
  v9 = OBJC_IVAR___APPCContextBuilder_current;
  *&v8[OBJC_IVAR___APPCContextBuilder_current] = 0;
  v10 = &v8[OBJC_IVAR___APPCContextBuilder_requestedAd];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = OBJC_IVAR___APPCContextBuilder_newsContext;
  *&v8[OBJC_IVAR___APPCContextBuilder_newsContext] = 0;
  v12 = OBJC_IVAR___APPCContextBuilder_resourceLock;
  *&v8[v12] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  v13 = MEMORY[0x1E69E7CC0];
  *&v8[OBJC_IVAR___APPCContextBuilder_adjacentInternal] = MEMORY[0x1E69E7CC0];
  v14 = &v8[OBJC_IVAR___APPCContextBuilder_maxSize];
  *v14 = v1;
  *(v14 + 1) = v2;
  swift_beginAccess();
  *&v8[v9] = v3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *&v8[OBJC_IVAR___APPCContextBuilder_next] = v13;
  swift_beginAccess();
  v15 = *&v8[v11];
  *&v8[v11] = v5;
  v16 = v21;

  swift_beginAccess();
  *v10 = v23;
  *(v10 + 1) = v7;

  v24.receiver = v8;
  v24.super_class = v22;
  v17 = objc_msgSendSuper2(&v24, sel_init);

  v18 = *(v0 + OBJC_IVAR___APPCBaseContext_next);
  v19 = OBJC_IVAR___APPCContextBuilder_next;
  swift_beginAccess();
  *&v17[v19] = v18;

  return v17;
}

uint64_t sub_1C1B22CA0()
{
  v1 = v0;
  v2 = sub_1C1B945F8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = 0;
  v13[2] = 0xE000000000000000;
  sub_1C1B95468();
  v6 = [v0 description];
  v7 = sub_1C1B94D88();
  v9 = v8;

  v14 = v7;
  v15 = v9;
  MEMORY[0x1C6906DF0](0x6669746E65646920, 0xED0000203A726569);
  v10 = OBJC_IVAR___APPCBaseContext_identifier;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v10, v2);
  sub_1C1AA5A14(&qword_1EDE6B830, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v11 = sub_1C1B95858();
  MEMORY[0x1C6906DF0](v11);

  (*(v3 + 8))(v5, v2);
  return v14;
}

void sub_1C1B22E84(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___APPCContext_newsContext;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t sub_1C1B23038@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___APPCContext_prefetchTimestamp;
  swift_beginAccess();
  return sub_1C1AA7E30(v1 + v3, a1, &qword_1EBF07F50, &qword_1C1B9A590);
}

uint64_t sub_1C1B231E0(uint64_t a1)
{
  v3 = OBJC_IVAR___APPCContext_prefetchTimestamp;
  swift_beginAccess();
  sub_1C1AABE90(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1C1B23240(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1C1AA7E30(a1, &v10 - v5, &qword_1EBF07F50, &qword_1C1B9A590);
  v7 = *a2;
  v8 = OBJC_IVAR___APPCContext_prefetchTimestamp;
  swift_beginAccess();
  sub_1C1AABE90(v6, v7 + v8);
  return swift_endAccess();
}

char *Context.__allocating_init(placement:appStoreSupplementalContext:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v35 = a2;
  v7 = sub_1C1AC1F08(&unk_1EBF098E0, &qword_1C1BA22A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v34 - v8;
  v10 = sub_1C1B945F8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContentDepiction();
  v15 = objc_allocWithZone(v14);
  v16 = &v15[OBJC_IVAR___APPCContentDepiction_identifier];
  *v16 = 0;
  *(v16 + 1) = 0xE000000000000000;
  *&v15[OBJC_IVAR___APPCContentDepiction_adjacentPosition] = 0;
  *&v15[OBJC_IVAR___APPCContentDepiction_placement] = a1;
  v17 = &v15[OBJC_IVAR___APPCContentDepiction_language];
  *v17 = 0;
  *(v17 + 1) = 0xE000000000000000;
  v18 = &v15[OBJC_IVAR___APPCContentDepiction_locale];
  *v18 = 0;
  *(v18 + 1) = 0xE000000000000000;
  v19 = MEMORY[0x1E69E7CC0];
  *&v15[OBJC_IVAR___APPCContentDepiction_searchTerms] = MEMORY[0x1E69E7CC0];
  *&v15[OBJC_IVAR___APPCContentDepiction_keywords] = v19;
  *&v15[OBJC_IVAR___APPCContentDepiction_categories] = v19;
  v37.receiver = v15;
  v37.super_class = v14;
  v20 = objc_msgSendSuper2(&v37, sel_init);
  sub_1C1AA7E30(a3, v9, &unk_1EBF098E0, &qword_1C1BA22A0);
  v21 = *(v11 + 48);
  if (v21(v9, 1, v10) == 1)
  {
    sub_1C1B945E8();
    if (v21(v9, 1, v10) != 1)
    {
      sub_1C1AA7C8C(v9, &unk_1EBF098E0, &qword_1C1BA22A0);
    }
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
  }

  v22 = objc_allocWithZone(type metadata accessor for Context(0));
  v23 = v20;
  v24 = sub_1C1B2A6F0(v13, 0, 0, v20, MEMORY[0x1E69E7CC0], 0.0, 0.0);

  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = v4;
  v27 = objc_allocWithZone(MEMORY[0x1E698A048]);
  aBlock[4] = sub_1C1B2AE0C;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C1B2A390;
  aBlock[3] = &unk_1F4151B68;
  v28 = _Block_copy(aBlock);
  v29 = v24;

  v30 = [v27 initWithDeliveryBlock_];
  _Block_release(v28);

  sub_1C1AA7C8C(a3, &unk_1EBF098E0, &qword_1C1BA22A0);

  v31 = *&v29[OBJC_IVAR___APPCContext_requester];
  *&v29[OBJC_IVAR___APPCContext_requester] = v30;

  v32 = *&v29[OBJC_IVAR___APPCContext_appStoreContext];
  *&v29[OBJC_IVAR___APPCContext_appStoreContext] = v35;

  return v29;
}

uint64_t sub_1C1B23784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C1B94C58();
  v29 = *(v5 - 8);
  v30 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v28 = &v27 - v9;
  v10 = sub_1C1B94C18();
  MEMORY[0x1EEE9AC00](v10);
  v11 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = a1;
  v13[4] = a3;
  aBlock[4] = sub_1C1B2B808;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C1B196F0;
  aBlock[3] = &unk_1F4152030;
  _Block_copy(aBlock);
  v31 = MEMORY[0x1E69E7CC0];
  sub_1C1AA5A14(&qword_1EDE6CA58, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);

  sub_1C1AC1F08(&unk_1EBF09090, &qword_1C1B9F028);
  sub_1C1AA5A5C(&qword_1EDE6CA40, &unk_1EBF09090, &qword_1C1B9F028);
  sub_1C1B95318();
  sub_1C1B94C78();
  swift_allocObject();
  sub_1C1B94C68();

  v14 = COERCE_DOUBLE(sub_1C1B4D104());
  if (v15)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v14;
  }

  if (v16 <= 0.0)
  {
    swift_beginAccess();
    v24 = swift_unknownObjectWeakLoadStrong();
    if (v24)
    {
      v25 = v24;
      v26 = *(v24 + OBJC_IVAR___APPCContext_contextQueue);

      sub_1C1B95198();
    }
  }

  else
  {
    swift_beginAccess();
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      v19 = *(v17 + OBJC_IVAR___APPCContext_contextQueue);

      sub_1C1B94C48();
      v20 = v28;
      sub_1C1B94C98();
      v21 = v30;
      v22 = *(v29 + 8);
      v22(v8, v30);
      sub_1C1B95158();

      return (v22)(v20, v21);
    }
  }
}

void sub_1C1B23B6C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1C1B2BB54(a2);
  }
}

char *Context.init(maxSize:requestedAd:current:next:)(uint64_t a1, char *a2, uint64_t a3, unint64_t a4, double a5, double a6)
{
  v7 = v6;
  v66 = a3;
  v63 = a2;
  v62 = a1;
  v65 = sub_1C1B945F8();
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v67 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1C1B95168();
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v59 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C1B95148();
  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_1C1B94C38();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = OBJC_IVAR___APPCContext_inventoryLock;
  *&v6[v15] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  v16 = MEMORY[0x1E69E7CC0];
  *&v6[OBJC_IVAR___APPCContext_inventory] = MEMORY[0x1E69E7CC0];
  v17 = OBJC_IVAR___APPCContext_placeholdersLock;
  *&v6[v17] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  *&v6[OBJC_IVAR___APPCContext_placeholders] = v16;
  *&v6[OBJC_IVAR___APPCContext_lastError] = 0;
  *&v6[OBJC_IVAR___APPCContext_requester] = 0;
  v18 = &v6[OBJC_IVAR___APPCContext_denylistEvaluator];
  *v18 = 0;
  *(v18 + 1) = 0;
  *&v6[OBJC_IVAR___APPCContext_newsContext] = 0;
  *&v6[OBJC_IVAR___APPCContext_appStoreContext] = 0;
  v58 = OBJC_IVAR___APPCContext_contextQueue;
  v57[2] = sub_1C1AA576C(0, &qword_1EDE6CA10, 0x1E69E9610);
  v57[1] = "v16@?0@NSArray8";
  if (qword_1EDE6CA90 != -1)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v19 = qword_1EDE6CAA0;
    sub_1C1B94C28();
    aBlock[0] = v16;
    sub_1C1AA5A14(&qword_1EDE6CA18, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
    sub_1C1AC1F08(&unk_1EBF09010, &qword_1C1B9FC78);
    sub_1C1AA5A5C(&qword_1EDE6CA38, &unk_1EBF09010, &qword_1C1B9FC78);
    sub_1C1B95318();
    (*(v60 + 104))(v59, *MEMORY[0x1E69E8090], v61);
    *&v7[v58] = sub_1C1B951A8();
    v20 = OBJC_IVAR___APPCContext_prefetchTimestamp;
    v21 = sub_1C1B94588();
    (*(*(v21 - 8) + 56))(&v7[v20], 1, 1, v21);
    v22 = OBJC_IVAR___APPCContext_fetchingLock;
    *&v7[v22] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
    v23 = MEMORY[0x1E69E7CC0];
    *&v7[OBJC_IVAR___APPCContext_fetching] = MEMORY[0x1E69E7CC0];
    v24 = OBJC_IVAR___APPCContext_waitingLock;
    *&v7[v24] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
    *&v7[OBJC_IVAR___APPCContext_waiting] = v23;
    v25 = OBJC_IVAR___APPCContext_prefetchLock;
    *&v7[v25] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
    *&v7[OBJC_IVAR___APPCContext_newContentArrivedHandlers] = v23;
    *&v7[OBJC_IVAR___APPCContext_limit] = [objc_opt_self() contextPrefetchLimit];
    *&v7[OBJC_IVAR___APPCBaseContext_adjacentInternal] = v23;
    v26 = &v7[OBJC_IVAR___APPCBaseContext_requestedAd];
    *v26 = 0;
    v26[1] = 0;
    v27 = v66;
    swift_unknownObjectRetain();
    v28 = v67;
    sub_1C1B945E8();
    v29 = v64;
    v30 = v65;
    (*(v64 + 32))(&v7[OBJC_IVAR___APPCBaseContext_identifier], v28, v65);
    v31 = &v7[OBJC_IVAR___APPCBaseContext_maxSize];
    *v31 = a5;
    v31[1] = a6;
    swift_beginAccess();
    v32 = v63;
    *v26 = v62;
    v26[1] = v32;

    *&v7[OBJC_IVAR___APPCBaseContext_current] = v27;
    *&v7[OBJC_IVAR___APPCBaseContext_next] = a4;
    v16 = v7;
    if (a4 >> 62)
    {
      break;
    }

    v33 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v33)
    {
      goto LABEL_17;
    }

LABEL_4:
    aBlock[0] = v23;
    swift_unknownObjectRetain();

    sub_1C1B95518();
    if (v33 < 0)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v63 = v7;
    v34 = 0;
    v7 = 0;
    while (1)
    {
      v35 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if ((a4 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x1C6907490](v34, a4);
      }

      else
      {
        if (v34 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v36 = *(a4 + 8 * v34 + 32);
        swift_unknownObjectRetain();
      }

      v71 = v36;
      sub_1C1B35958(&v71, &v69);
      swift_unknownObjectRelease();
      sub_1C1B954F8();
      v16 = *(aBlock[0] + 16);
      sub_1C1B95528();
      sub_1C1B95538();
      sub_1C1B95508();
      ++v34;
      if (v35 == v33)
      {

        v37 = aBlock[0];
        v30 = v65;
        v29 = v64;
        v16 = v63;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    swift_once();
  }

  v33 = sub_1C1B953A8();
  if (v33)
  {
    goto LABEL_4;
  }

LABEL_17:
  swift_unknownObjectRetain();
  v37 = MEMORY[0x1E69E7CC0];
LABEL_18:
  aBlock[0] = v37;
  v38 = sub_1C1AA5AB0(MEMORY[0x1E69E7CC0]);
  if (v38)
  {
    sub_1C1AA5BEC(v38);
    v37 = aBlock[0];
  }

  if (v37 >> 62)
  {
    sub_1C1AC1F08(&unk_1EBF09000, &qword_1C1B9CEC8);
    v39 = sub_1C1B95578();
  }

  else
  {
    sub_1C1B95898();
    v39 = v37;
  }

  *&v16[OBJC_IVAR___APPCBaseContext_adjacent] = v39;
  v40 = type metadata accessor for BaseContext(0);
  v70.receiver = v16;
  v70.super_class = v40;
  v41 = objc_msgSendSuper2(&v70, sel_init);
  v42 = sub_1C1B95118();
  sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
  v43 = sub_1C1B95298();
  sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1C1B98E60;
  v45 = OBJC_IVAR___APPCBaseContext_identifier;
  swift_beginAccess();
  v46 = v67;
  (*(v29 + 16))(v67, &v41[v45], v30);
  v47 = sub_1C1B945A8();
  v49 = v48;
  (*(v29 + 8))(v46, v30);
  *(v44 + 56) = MEMORY[0x1E69E6158];
  *(v44 + 64) = sub_1C1AA5E7C();
  *(v44 + 32) = v47;
  *(v44 + 40) = v49;
  sub_1C1B94BA8(v42, &dword_1C1AA2000, v43, "[PC] Context (%{public}@) is being initialized", 46, 2, v44);

  swift_unknownObjectRelease();
  v50 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v51 = objc_allocWithZone(MEMORY[0x1E698A048]);
  aBlock[4] = sub_1C1B2AE1C;
  aBlock[5] = v50;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C1B2A390;
  aBlock[3] = &unk_1F4151B90;
  v52 = _Block_copy(aBlock);
  v53 = v41;

  v54 = [v51 initWithDeliveryBlock_];
  _Block_release(v52);

  swift_unknownObjectRelease();
  v55 = *&v53[OBJC_IVAR___APPCContext_requester];
  *&v53[OBJC_IVAR___APPCContext_requester] = v54;

  return v53;
}

char *sub_1C1B24700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, SEL *a6, double a7, double a8)
{
  v10 = v8;
  v16 = objc_allocWithZone(v10);
  if (a2)
  {
    v17 = sub_1C1B94D78();
  }

  else
  {
    v17 = 0;
  }

  sub_1C1AC1F08(&unk_1EBF09000, &qword_1C1B9CEC8);
  v18 = sub_1C1B94EB8();

  v19 = [v16 *a6];

  if (a5)
  {
    v20 = v19;
    [a5 copy];
    sub_1C1B952F8();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    type metadata accessor for NewsSupplementalContext();
    if (swift_dynamicCast())
    {
      a5 = v25;
    }

    else
    {
      a5 = 0;
    }
  }

  else
  {
    v21 = v19;
    swift_unknownObjectRelease();
  }

  v22 = OBJC_IVAR___APPCContext_newsContext;
  swift_beginAccess();
  v23 = *&v19[v22];
  *&v19[v22] = a5;

  return v19;
}

char *sub_1C1B248A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, SEL *a6, double a7, double a8)
{
  v10 = v8;
  if (a2)
  {
    v15 = sub_1C1B94D78();
  }

  else
  {
    v15 = 0;
  }

  sub_1C1AC1F08(&unk_1EBF09000, &qword_1C1B9CEC8);
  v16 = sub_1C1B94EB8();

  v17 = [v10 *a6];

  if (a5)
  {
    v18 = v17;
    [a5 copy];
    sub_1C1B952F8();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    type metadata accessor for NewsSupplementalContext();
    if (swift_dynamicCast())
    {
      a5 = v23;
    }

    else
    {
      a5 = 0;
    }
  }

  else
  {
    v19 = v17;
    swift_unknownObjectRelease();
  }

  v20 = OBJC_IVAR___APPCContext_newsContext;
  swift_beginAccess();
  v21 = *&v17[v20];
  *&v17[v20] = a5;

  return v17;
}

uint64_t sub_1C1B24A44(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, void *, double, double))
{
  if (a5)
  {
    v14 = sub_1C1B94D88();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  sub_1C1AC1F08(&unk_1EBF09000, &qword_1C1B9CEC8);
  v17 = sub_1C1B94EC8();
  swift_unknownObjectRetain();
  v18 = a8;
  return a9(v14, v16, a6, v17, a8, a1, a2);
}

char *Context.init(apContext:apContentData:)(char *a1, unint64_t a2)
{
  v3 = v2;
  v83 = a2;
  v88 = a1;
  v82 = sub_1C1B945F8();
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v90 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_1C1B95168();
  v87 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v86 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C1B95148();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1C1B94C38();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = OBJC_IVAR___APPCContext_inventoryLock;
  *&v2[v8] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  v9 = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR___APPCContext_inventory] = MEMORY[0x1E69E7CC0];
  v10 = OBJC_IVAR___APPCContext_placeholdersLock;
  *&v2[v10] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  *&v2[OBJC_IVAR___APPCContext_placeholders] = v9;
  *&v2[OBJC_IVAR___APPCContext_lastError] = 0;
  *&v2[OBJC_IVAR___APPCContext_requester] = 0;
  v11 = &v2[OBJC_IVAR___APPCContext_denylistEvaluator];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&v2[OBJC_IVAR___APPCContext_newsContext] = 0;
  *&v2[OBJC_IVAR___APPCContext_appStoreContext] = 0;
  v85 = OBJC_IVAR___APPCContext_contextQueue;
  v84 = sub_1C1AA576C(0, &qword_1EDE6CA10, 0x1E69E9610);
  if (qword_1EDE6CA90 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v12 = qword_1EDE6CAA0;
    sub_1C1B94C28();
    aBlock[0] = v9;
    sub_1C1AA5A14(&qword_1EDE6CA18, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
    sub_1C1AC1F08(&unk_1EBF09010, &qword_1C1B9FC78);
    v13 = MEMORY[0x1E69E7CC0];
    sub_1C1AA5A5C(&qword_1EDE6CA38, &unk_1EBF09010, &qword_1C1B9FC78);
    sub_1C1B95318();
    v87[13](v86, *MEMORY[0x1E69E8090], v89);
    *&v3[v85] = sub_1C1B951A8();
    v14 = OBJC_IVAR___APPCContext_prefetchTimestamp;
    v15 = sub_1C1B94588();
    (*(*(v15 - 8) + 56))(&v3[v14], 1, 1, v15);
    v16 = OBJC_IVAR___APPCContext_fetchingLock;
    *&v3[v16] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
    *&v3[OBJC_IVAR___APPCContext_fetching] = v13;
    v17 = OBJC_IVAR___APPCContext_waitingLock;
    *&v3[v17] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
    *&v3[OBJC_IVAR___APPCContext_waiting] = v13;
    v18 = OBJC_IVAR___APPCContext_prefetchLock;
    *&v3[v18] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
    *&v3[OBJC_IVAR___APPCContext_newContentArrivedHandlers] = v13;
    v19 = v88;
    [v88 maxSize];
    v21 = v20;
    v23 = v22;
    v24 = [v19 adjacent];
    if (!v24)
    {
      break;
    }

    v25 = v24;
    sub_1C1AA576C(0, &qword_1EDE6CA08, 0x1E698A030);
    v26 = sub_1C1B94EC8();

    aBlock[0] = v13;
    v9 = v26 & 0xFFFFFFFFFFFFFF8;
    if (v26 >> 62)
    {
      v27 = sub_1C1B953A8();
    }

    else
    {
      v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v28 = 0;
    while (1)
    {
      if (v27 == v28)
      {

        goto LABEL_18;
      }

      if ((v26 & 0xC000000000000001) == 0)
      {
        break;
      }

      v29 = MEMORY[0x1C6907490](v28, v26);
      v30 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        goto LABEL_36;
      }

LABEL_10:
      v31 = sub_1C1B5B0B8(v29);
      ++v28;
      if (v31)
      {
        MEMORY[0x1C6906EA0](v31);
        if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C1B94F08();
        }

        sub_1C1B94F48();
        v13 = aBlock[0];
        v28 = v30;
      }
    }

    if (v28 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_37;
    }

    v29 = *(v26 + 8 * v28 + 32);
    v30 = v28 + 1;
    if (!__OFADD__(v28, 1))
    {
      goto LABEL_10;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    swift_once();
  }

LABEL_18:
  v32 = [v19 current];
  if (v32)
  {
    v33 = sub_1C1B5B0B8(v32);
  }

  else
  {
    v33 = 0;
  }

  *&v3[OBJC_IVAR___APPCContext_limit] = [objc_opt_self() contextPrefetchLimit];
  v34 = [v19 identifier];
  sub_1C1B945D8();

  v35 = [v19 requestedAdIdentifier];
  v36 = sub_1C1B94D88();
  v38 = v37;

  v39 = v33;

  if (v13 >> 62)
  {
    sub_1C1AC1F08(&unk_1EBF09000, &qword_1C1B9CEC8);
    v40 = sub_1C1B95578();
  }

  else
  {
    sub_1C1B95898();
    v40 = v13;
  }

  v41 = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR___APPCBaseContext_adjacentInternal] = MEMORY[0x1E69E7CC0];
  v42 = &v3[OBJC_IVAR___APPCBaseContext_requestedAd];
  *v42 = 0;
  v42[1] = 0;
  v43 = v81;
  v44 = v90;
  v45 = v82;
  (*(v81 + 16))(&v3[OBJC_IVAR___APPCBaseContext_identifier], v90, v82);
  v46 = &v3[OBJC_IVAR___APPCBaseContext_maxSize];
  *v46 = v21;
  *(v46 + 1) = v23;
  swift_beginAccess();
  *v42 = v36;
  v42[1] = v38;
  *&v3[OBJC_IVAR___APPCBaseContext_current] = v33;
  *&v3[OBJC_IVAR___APPCBaseContext_next] = v41;
  *&v3[OBJC_IVAR___APPCBaseContext_adjacent] = v40;
  v47 = type metadata accessor for BaseContext(0);
  v92.receiver = v3;
  v92.super_class = v47;
  v48 = v33;
  v49 = objc_msgSendSuper2(&v92, sel_init);
  v50 = sub_1C1B95118();
  sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
  v51 = sub_1C1B95298();
  sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1C1B98E60;
  v53 = sub_1C1B945A8();
  v55 = v54;
  *(v52 + 56) = MEMORY[0x1E69E6158];
  *(v52 + 64) = sub_1C1AA5E7C();
  *(v52 + 32) = v53;
  *(v52 + 40) = v55;
  sub_1C1B94BA8(v50, &dword_1C1AA2000, v51, "[PC] Context (%@) is being initialized", 38, 2, v52);

  sub_1C1B343B4();

  (*(v43 + 8))(v44, v45);
  v90 = v49;
  v56 = sub_1C1B2CB14(v83);

  v58 = v56;
  v86 = (v56 >> 62);
  v87 = v48;
  if (v56 >> 62)
  {
    result = sub_1C1B953A8();
    v58 = v56;
    v59 = result;
    if (!result)
    {
      goto LABEL_41;
    }

LABEL_25:
    if (v59 >= 1)
    {
      v60 = 0;
      v89 = v58 & 0xC000000000000001;
      v61 = v58;
      do
      {
        if (v89)
        {
          v62 = MEMORY[0x1C6907490](v60);
        }

        else
        {
          v62 = *(v58 + 8 * v60 + 32);
        }

        v63 = v62;
        v64 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v65 = swift_allocObject();
        *(v65 + 16) = sub_1C1B2AE5C;
        *(v65 + 24) = v64;
        v66 = OBJC_IVAR___APPCPromotedContent_onPromotedContentComplete;
        swift_beginAccess();
        v67 = *&v63[v66];
        swift_retain_n();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v63[v66] = v67;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v67 = sub_1C1ACE190(0, v67[2] + 1, 1, v67);
          *&v63[v66] = v67;
        }

        v70 = v67[2];
        v69 = v67[3];
        if (v70 >= v69 >> 1)
        {
          v67 = sub_1C1ACE190((v69 > 1), v70 + 1, 1, v67);
        }

        ++v60;
        v67[2] = v70 + 1;
        v71 = &v67[2 * v70];
        v71[4] = sub_1C1B2AE64;
        v71[5] = v65;
        *&v63[v66] = v67;
        swift_endAccess();

        v58 = v61;
      }

      while (v59 != v60);
      goto LABEL_41;
    }

    __break(1u);
  }

  else
  {
    v59 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v59)
    {
      goto LABEL_25;
    }

LABEL_41:
    v72 = v58;
    v73 = OBJC_IVAR___APPCContext_inventoryLock;
    [*&v90[OBJC_IVAR___APPCContext_inventoryLock] lock];
    if (v86)
    {

      sub_1C1AC1F08(&unk_1EBF09020, &qword_1C1B98F38);
      v72 = sub_1C1B95578();
    }

    else
    {

      sub_1C1B95898();
    }

    v74 = v87;

    v75 = v90;
    swift_beginAccess();
    sub_1C1AC7548(v72);
    swift_endAccess();
    [*&v75[v73] unlock];
    v76 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v77 = objc_allocWithZone(MEMORY[0x1E698A048]);
    aBlock[4] = sub_1C1B2AE94;
    aBlock[5] = v76;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C1B2A390;
    aBlock[3] = &unk_1F4151BE0;
    v78 = _Block_copy(aBlock);

    v79 = [v77 initWithDeliveryBlock_];
    _Block_release(v78);

    v80 = *&v75[OBJC_IVAR___APPCContext_requester];
    *&v75[OBJC_IVAR___APPCContext_requester] = v79;

    return v75;
  }

  return result;
}

void sub_1C1B25830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1C1AC5508(a1, a2);
  }
}

uint64_t sub_1C1B258A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1C1B94C58();
  v32 = *(v8 - 8);
  v33 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v31 = &v30 - v12;
  v13 = sub_1C1B94C18();
  MEMORY[0x1EEE9AC00](v13);
  v14 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = a1;
  aBlock[4] = a4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C1B196F0;
  aBlock[3] = a5;
  _Block_copy(aBlock);
  v34 = MEMORY[0x1E69E7CC0];
  sub_1C1AA5A14(&qword_1EDE6CA58, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);

  sub_1C1AC1F08(&unk_1EBF09090, &qword_1C1B9F028);
  sub_1C1AA5A5C(&qword_1EDE6CA40, &unk_1EBF09090, &qword_1C1B9F028);
  sub_1C1B95318();
  sub_1C1B94C78();
  swift_allocObject();
  sub_1C1B94C68();

  v17 = COERCE_DOUBLE(sub_1C1B4D104());
  if (v18)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = v17;
  }

  if (v19 <= 0.0)
  {
    swift_beginAccess();
    v27 = swift_unknownObjectWeakLoadStrong();
    if (v27)
    {
      v28 = v27;
      v29 = *(v27 + OBJC_IVAR___APPCContext_contextQueue);

      sub_1C1B95198();
    }
  }

  else
  {
    swift_beginAccess();
    v20 = swift_unknownObjectWeakLoadStrong();
    if (v20)
    {
      v21 = v20;
      v22 = *(v20 + OBJC_IVAR___APPCContext_contextQueue);

      sub_1C1B94C48();
      v23 = v31;
      sub_1C1B94C98();
      v24 = v33;
      v25 = *(v32 + 8);
      v25(v11, v33);
      sub_1C1B95158();

      return (v25)(v23, v24);
    }
  }
}

char *Context.init(maxSize:requestedAd:current:adjacent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v59 = a4;
  v63 = a3;
  v58 = a2;
  v57 = a1;
  v62 = sub_1C1B945F8();
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v60 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1C1B95168();
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v54 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C1B95148();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1C1B94C38();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = OBJC_IVAR___APPCContext_inventoryLock;
  *&v6[v13] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  v14 = MEMORY[0x1E69E7CC0];
  *&v6[OBJC_IVAR___APPCContext_inventory] = MEMORY[0x1E69E7CC0];
  v15 = OBJC_IVAR___APPCContext_placeholdersLock;
  *&v6[v15] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  *&v6[OBJC_IVAR___APPCContext_placeholders] = v14;
  *&v6[OBJC_IVAR___APPCContext_lastError] = 0;
  *&v6[OBJC_IVAR___APPCContext_requester] = 0;
  v16 = &v6[OBJC_IVAR___APPCContext_denylistEvaluator];
  *v16 = 0;
  *(v16 + 1) = 0;
  *&v6[OBJC_IVAR___APPCContext_newsContext] = 0;
  *&v6[OBJC_IVAR___APPCContext_appStoreContext] = 0;
  v53 = OBJC_IVAR___APPCContext_contextQueue;
  v52[1] = sub_1C1AA576C(0, &qword_1EDE6CA10, 0x1E69E9610);
  if (qword_1EDE6CA90 != -1)
  {
    swift_once();
  }

  v17 = qword_1EDE6CAA0;
  sub_1C1B94C28();
  aBlock[0] = v14;
  sub_1C1AA5A14(&qword_1EDE6CA18, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1C1AC1F08(&unk_1EBF09010, &qword_1C1B9FC78);
  sub_1C1AA5A5C(&qword_1EDE6CA38, &unk_1EBF09010, &qword_1C1B9FC78);
  sub_1C1B95318();
  (*(v55 + 104))(v54, *MEMORY[0x1E69E8090], v56);
  *&v6[v53] = sub_1C1B951A8();
  v18 = OBJC_IVAR___APPCContext_prefetchTimestamp;
  v19 = sub_1C1B94588();
  (*(*(v19 - 8) + 56))(&v6[v18], 1, 1, v19);
  v20 = OBJC_IVAR___APPCContext_fetchingLock;
  *&v6[v20] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  v21 = MEMORY[0x1E69E7CC0];
  *&v6[OBJC_IVAR___APPCContext_fetching] = MEMORY[0x1E69E7CC0];
  v22 = OBJC_IVAR___APPCContext_waitingLock;
  *&v6[v22] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  *&v6[OBJC_IVAR___APPCContext_waiting] = v21;
  v23 = OBJC_IVAR___APPCContext_prefetchLock;
  *&v6[v23] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  *&v6[OBJC_IVAR___APPCContext_newContentArrivedHandlers] = v21;
  *&v6[OBJC_IVAR___APPCContext_limit] = [objc_opt_self() contextPrefetchLimit];
  *&v6[OBJC_IVAR___APPCBaseContext_adjacentInternal] = v21;
  v24 = &v6[OBJC_IVAR___APPCBaseContext_requestedAd];
  *v24 = 0;
  v24[1] = 0;
  v25 = v63;
  swift_unknownObjectRetain();
  v26 = v60;
  sub_1C1B945E8();
  v27 = v61;
  v28 = v62;
  (*(v61 + 32))(&v6[OBJC_IVAR___APPCBaseContext_identifier], v26, v62);
  v29 = &v6[OBJC_IVAR___APPCBaseContext_maxSize];
  *v29 = a5;
  v29[1] = a6;
  swift_beginAccess();
  v30 = v58;
  *v24 = v57;
  v24[1] = v30;

  *&v6[OBJC_IVAR___APPCBaseContext_current] = v25;
  *&v6[OBJC_IVAR___APPCBaseContext_next] = v21;
  *&v6[OBJC_IVAR___APPCBaseContext_adjacent] = v59;
  v31 = type metadata accessor for BaseContext(0);
  v65.receiver = v6;
  v65.super_class = v31;
  swift_unknownObjectRetain();
  v32 = objc_msgSendSuper2(&v65, sel_init);
  v33 = sub_1C1B95118();
  sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
  v34 = sub_1C1B95298();
  sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1C1B98E60;
  v36 = OBJC_IVAR___APPCBaseContext_identifier;
  swift_beginAccess();
  (*(v27 + 16))(v26, &v32[v36], v28);
  v37 = sub_1C1B945A8();
  v39 = v38;
  (*(v27 + 8))(v26, v28);
  *(v35 + 56) = MEMORY[0x1E69E6158];
  *(v35 + 64) = sub_1C1AA5E7C();
  *(v35 + 32) = v37;
  *(v35 + 40) = v39;
  sub_1C1B94BA8(v33, &dword_1C1AA2000, v34, "[PC] Context (%{public}@) is being initialized", 46, 2, v35);

  sub_1C1B343B4();

  swift_unknownObjectRelease();
  v40 = OBJC_IVAR___APPCContext_newsContext;
  swift_beginAccess();
  v41 = *&v32[v40];
  if (v41)
  {
    v42 = v32;
    [v41 copy];
    sub_1C1B952F8();
    swift_unknownObjectRelease();
    type metadata accessor for NewsSupplementalContext();
    if (swift_dynamicCast())
    {
      v43 = aBlock[6];
    }

    else
    {
      v43 = 0;
    }

    v44 = *&v32[v40];
  }

  else
  {
    v45 = v32;
    v44 = 0;
    v43 = 0;
  }

  *&v32[v40] = v43;

  v46 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v47 = objc_allocWithZone(MEMORY[0x1E698A048]);
  aBlock[4] = sub_1C1B2AED4;
  aBlock[5] = v46;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C1B2A390;
  aBlock[3] = &unk_1F4151C08;
  v48 = _Block_copy(aBlock);

  v49 = [v47 initWithDeliveryBlock_];
  _Block_release(v48);

  swift_unknownObjectRelease();
  v50 = *&v32[OBJC_IVAR___APPCContext_requester];
  *&v32[OBJC_IVAR___APPCContext_requester] = v49;

  return v32;
}

uint64_t sub_1C1B26644(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, double, double))
{
  if (a5)
  {
    v12 = sub_1C1B94D88();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  sub_1C1AC1F08(&unk_1EBF09000, &qword_1C1B9CEC8);
  v15 = sub_1C1B94EC8();
  swift_unknownObjectRetain();
  return a8(v12, v14, a6, v15, a1, a2);
}

id Context.__allocating_init(identifier:maxSize:requestedAd:current:adjacent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v15 = objc_allocWithZone(v7);
  v16 = sub_1C1B2A6F0(a1, a2, a3, a4, a5, a6, a7);
  swift_unknownObjectRelease();
  return v16;
}

id Context.init(identifier:maxSize:requestedAd:current:adjacent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v7 = sub_1C1B2A6F0(a1, a2, a3, a4, a5, a6, a7);
  swift_unknownObjectRelease();
  return v7;
}

char *Context.init(from:)(void *a1)
{
  v2 = v1;
  v81 = a1;
  v3 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v61 = &v60 - v4;
  v63 = sub_1C1AC1F08(&unk_1EBF09030, &qword_1C1B9FC80);
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v80 = &v60 - v5;
  v76 = sub_1C1B95168();
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v72 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C1B95148();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1C1B94C38();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = OBJC_IVAR___APPCContext_inventoryLock;
  v10 = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  v69 = v9;
  *(v1 + v9) = v10;
  v11 = MEMORY[0x1E69E7CC0];
  v74 = OBJC_IVAR___APPCContext_inventory;
  *(v1 + OBJC_IVAR___APPCContext_inventory) = MEMORY[0x1E69E7CC0];
  v12 = OBJC_IVAR___APPCContext_placeholdersLock;
  v13 = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  v68 = v12;
  *(v1 + v12) = v13;
  v79 = OBJC_IVAR___APPCContext_placeholders;
  *(v1 + OBJC_IVAR___APPCContext_placeholders) = v11;
  v65 = OBJC_IVAR___APPCContext_lastError;
  *(v1 + OBJC_IVAR___APPCContext_lastError) = 0;
  v66 = OBJC_IVAR___APPCContext_requester;
  *(v1 + OBJC_IVAR___APPCContext_requester) = 0;
  v14 = (v1 + OBJC_IVAR___APPCContext_denylistEvaluator);
  *v14 = 0;
  v14[1] = 0;
  v67 = v14;
  v78 = OBJC_IVAR___APPCContext_newsContext;
  *(v1 + OBJC_IVAR___APPCContext_newsContext) = 0;
  v77 = OBJC_IVAR___APPCContext_appStoreContext;
  *(v1 + OBJC_IVAR___APPCContext_appStoreContext) = 0;
  v88 = OBJC_IVAR___APPCContext_contextQueue;
  v71 = sub_1C1AA576C(0, &qword_1EDE6CA10, 0x1E69E9610);
  v70 = "v16@?0@NSArray8";
  if (qword_1EDE6CA90 != -1)
  {
    swift_once();
  }

  v15 = qword_1EDE6CAA0;
  sub_1C1B94C28();
  aBlock[0] = v11;
  sub_1C1AA5A14(&qword_1EDE6CA18, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1C1AC1F08(&unk_1EBF09010, &qword_1C1B9FC78);
  sub_1C1AA5A5C(&qword_1EDE6CA38, &unk_1EBF09010, &qword_1C1B9FC78);
  sub_1C1B95318();
  (*(v75 + 104))(v72, *MEMORY[0x1E69E8090], v76);
  v16 = sub_1C1B951A8();
  v17 = v88;
  *(v1 + v88) = v16;
  v18 = OBJC_IVAR___APPCContext_prefetchTimestamp;
  v19 = sub_1C1B94588();
  (*(*(v19 - 8) + 56))(v1 + v18, 1, 1, v19);
  v20 = OBJC_IVAR___APPCContext_fetchingLock;
  v21 = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  v72 = v20;
  *(v1 + v20) = v21;
  v76 = OBJC_IVAR___APPCContext_fetching;
  v22 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR___APPCContext_fetching) = MEMORY[0x1E69E7CC0];
  v23 = OBJC_IVAR___APPCContext_waitingLock;
  v24 = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  v71 = v23;
  *(v1 + v23) = v24;
  v75 = OBJC_IVAR___APPCContext_waiting;
  *(v1 + OBJC_IVAR___APPCContext_waiting) = v22;
  v25 = OBJC_IVAR___APPCContext_prefetchLock;
  v26 = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  v70 = v25;
  *(v1 + v25) = v26;
  v64 = OBJC_IVAR___APPCContext_newContentArrivedHandlers;
  *(v1 + OBJC_IVAR___APPCContext_newContentArrivedHandlers) = v22;
  v27 = v81;
  sub_1C1AAABE0(v81, v81[3]);
  sub_1C1B2AF14();
  v28 = v80;
  v29 = v73;
  sub_1C1B95A08();
  v30 = v17;
  if (v29)
  {
    v31 = v77;
    sub_1C1AA86F8(v27);

    sub_1C1AC0530(*v67, v67[1]);
    sub_1C1AA7C8C(v1 + v18, &qword_1EBF07F50, &qword_1C1B9A590);

    type metadata accessor for Context(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v32 = v28;
    v33 = MEMORY[0x1E69E7CC0];
    v73 = v18;
    sub_1C1AC1F08(&qword_1EBF09040, &qword_1C1B9FC88);
    LOBYTE(v87) = 0;
    sub_1C1B2B004(&unk_1EDE6A728, &qword_1EBF09040, &qword_1C1B9FC88, sub_1C1B0B684);
    sub_1C1B956F8();
    v34 = aBlock[0];
    v35 = *(aBlock[0] + 16);
    if (v35)
    {
      v87 = v33;
      sub_1C1B95518();
      v36 = 32;
      do
      {
        v37 = *(v34 + v36);
        sub_1C1B954F8();
        sub_1C1B95528();
        sub_1C1B95538();
        sub_1C1B95508();
        v36 += 8;
        --v35;
      }

      while (v35);

      v38 = v87;
      v27 = v81;
      v32 = v80;
    }

    else
    {

      v38 = MEMORY[0x1E69E7CC0];
    }

    v39 = v74;
    swift_beginAccess();
    *(v2 + v39) = v38;

    sub_1C1AC1F08(&unk_1EBF09048, &qword_1C1B9FC90);
    v86[0] = 1;
    sub_1C1B2AF68(&unk_1EDE6A6C0, &unk_1EDE6AFC8, &unk_1C1B9E260, MEMORY[0x1E69E6330]);
    sub_1C1B956F8();
    v41 = aBlock[0];
    v42 = v79;
    swift_beginAccess();
    *(v2 + v42) = v41;

    type metadata accessor for NewsSupplementalContext();
    v85[0] = 3;
    sub_1C1AA5A14(&unk_1EDE6AD30, type metadata accessor for NewsSupplementalContext, &protocol conformance descriptor for NewsSupplementalContext);
    sub_1C1B95678();
    v43 = v77;
    v81 = aBlock[0];
    v44 = v78;
    swift_beginAccess();
    v45 = *(v2 + v44);
    *(v2 + v44) = v81;

    type metadata accessor for AppStoreSupplementalContext(0);
    v84 = 4;
    sub_1C1AA5A14(&unk_1EDE6A828, type metadata accessor for AppStoreSupplementalContext, &protocol conformance descriptor for AppStoreSupplementalContext);
    sub_1C1B95678();
    v46 = *(v2 + v43);
    *(v2 + v43) = aBlock[0];

    LOBYTE(aBlock[0]) = 5;
    sub_1C1AA5A14(&unk_1EDE6C370, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    v47 = v61;
    sub_1C1B95678();
    v48 = v47;
    v49 = v73;
    swift_beginAccess();
    sub_1C1AABE90(v48, v2 + v49);
    swift_endAccess();
    LOBYTE(aBlock[0]) = 6;
    *(v2 + OBJC_IVAR___APPCContext_limit) = sub_1C1B956D8();
    sub_1C1AC1F08(&qword_1EBF09058, &qword_1C1B9FC98);
    v84 = 7;
    sub_1C1B2B004(&qword_1EDE6A6E0, &qword_1EBF09058, &qword_1C1B9FC98, sub_1C1AC1FF8);
    sub_1C1B956F8();
    v81 = aBlock[0];
    v50 = v76;
    swift_beginAccess();
    *(v2 + v50) = v81;

    v83 = 8;
    sub_1C1B956F8();
    v51 = aBlock[0];
    v52 = v75;
    swift_beginAccess();
    *(v2 + v52) = v51;

    sub_1C1B95628();
    v53 = v32;
    v54 = BaseContext.init(from:)(aBlock);
    v55 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v56 = objc_allocWithZone(MEMORY[0x1E698A048]);
    aBlock[4] = sub_1C1B2B080;
    aBlock[5] = v55;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C1B2A390;
    aBlock[3] = &unk_1F4151C30;
    v57 = _Block_copy(aBlock);
    v30 = v54;

    v58 = [v56 initWithDeliveryBlock_];
    _Block_release(v57);
    (*(v62 + 8))(v53, v63);

    v59 = *(v30 + OBJC_IVAR___APPCContext_requester);
    *(v30 + OBJC_IVAR___APPCContext_requester) = v58;

    sub_1C1AA86F8(v27);
  }

  return v30;
}

char *sub_1C1B276D4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C1B94C18();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C1B94C38();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = *&result[OBJC_IVAR___APPCContext_contextQueue];
    v20 = v4;
    v21 = v7;
    v13 = result;
    v19 = v12;

    v14 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *(v16 + 24) = a1;
    aBlock[4] = sub_1C1B2B8D8;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C1B196F0;
    aBlock[3] = &unk_1F4151EF0;
    v17 = _Block_copy(aBlock);

    sub_1C1B94C28();
    v22 = MEMORY[0x1E69E7CC0];
    sub_1C1AA5A14(&qword_1EDE6CA58, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1C1AC1F08(&unk_1EBF09090, &qword_1C1B9F028);
    sub_1C1AA5A5C(&qword_1EDE6CA40, &unk_1EBF09090, &qword_1C1B9F028);
    sub_1C1B95318();
    v18 = v19;
    MEMORY[0x1C6907180](0, v10, v6, v17);
    _Block_release(v17);

    (*(v20 + 8))(v6, v3);
    (*(v8 + 8))(v10, v21);
  }

  return result;
}

void *sub_1C1B27A34(void *a1)
{
  v3 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v28 = v27 - v4;
  v30 = sub_1C1AC1F08(&qword_1EBF09060, &qword_1C1B9FCA0);
  v5 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v7 = v27 - v6;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B2AF14();
  v29 = v7;
  sub_1C1B95A18();
  v8 = OBJC_IVAR___APPCContext_inventory;
  swift_beginAccess();
  v9 = *(v1 + v8);
  v27[0] = v1;
  if (v9 >> 62)
  {
    v10 = sub_1C1B953A8();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = MEMORY[0x1E69E7CC0];
  v31 = v5;
  if (v10)
  {
    v32[0] = MEMORY[0x1E69E7CC0];

    result = sub_1C1AC7E54(0, v10 & ~(v10 >> 63), 0);
    if (v10 < 0)
    {
      __break(1u);
      return result;
    }

    v13 = 0;
    v11 = v32[0];
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C6907490](v13, v9);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      type metadata accessor for PromotedContent(0);
      v14 = swift_dynamicCastClass();
      if (!v14)
      {
        swift_unknownObjectRelease();
      }

      v32[0] = v11;
      v16 = *(v11 + 16);
      v15 = *(v11 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1C1AC7E54((v15 > 1), v16 + 1, 1);
        v11 = v32[0];
      }

      ++v13;
      *(v11 + 16) = v16 + 1;
      *(v11 + 8 * v16 + 32) = v14;
    }

    while (v10 != v13);
  }

  v17 = v30;
  v32[0] = v11;
  v36 = 0;
  sub_1C1AC1F08(&qword_1EBF09068, &qword_1C1B9FCA8);
  sub_1C1B2B088();
  v18 = v29;
  v19 = v27[1];
  sub_1C1B95808();
  v20 = v28;

  if (!v19)
  {
    v21 = OBJC_IVAR___APPCContext_placeholders;
    v22 = v27[0];
    swift_beginAccess();
    v32[0] = *(v22 + v21);
    v35 = 1;
    sub_1C1AC1F08(&unk_1EBF09048, &qword_1C1B9FC90);
    sub_1C1B2AF68(&unk_1EDE6A6D0, &qword_1EDE6AFD8, &unk_1C1B9E238, MEMORY[0x1E69E6300]);
    sub_1C1B95808();
    v23 = OBJC_IVAR___APPCContext_newsContext;
    swift_beginAccess();
    v32[0] = *(v22 + v23);
    v34 = 3;
    type metadata accessor for NewsSupplementalContext();
    sub_1C1AA5A14(&qword_1EDE6AD40, type metadata accessor for NewsSupplementalContext, &protocol conformance descriptor for NewsSupplementalContext);
    sub_1C1B95788();
    v32[0] = *(v22 + OBJC_IVAR___APPCContext_appStoreContext);
    v34 = 4;
    type metadata accessor for AppStoreSupplementalContext(0);
    sub_1C1AA5A14(&unk_1EDE6A838, type metadata accessor for AppStoreSupplementalContext, &protocol conformance descriptor for AppStoreSupplementalContext);
    sub_1C1B95788();
    v24 = OBJC_IVAR___APPCContext_prefetchTimestamp;
    swift_beginAccess();
    sub_1C1AA7E30(v22 + v24, v20, &qword_1EBF07F50, &qword_1C1B9A590);
    LOBYTE(v32[0]) = 5;
    sub_1C1B94588();
    sub_1C1AA5A14(&unk_1EDE6C380, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1C1B95788();
    sub_1C1AA7C8C(v20, &qword_1EBF07F50, &qword_1C1B9A590);
    LOBYTE(v32[0]) = 6;
    sub_1C1B957E8();
    v25 = OBJC_IVAR___APPCContext_fetching;
    swift_beginAccess();
    v32[0] = *(v22 + v25);
    v33 = 7;
    sub_1C1AC1F08(&qword_1EBF09058, &qword_1C1B9FC98);
    sub_1C1B2B190();
    sub_1C1B95808();
    v26 = OBJC_IVAR___APPCContext_waiting;
    swift_beginAccess();
    v32[0] = *(v22 + v26);
    v37 = 8;
    sub_1C1B95808();
    sub_1C1B95738();
    sub_1C1B33E0C(v32);
    sub_1C1AA86F8(v32);
  }

  return (*(v31 + 8))(v18, v17);
}

uint64_t sub_1C1B2815C()
{

  sub_1C1AC0530(*(v0 + OBJC_IVAR___APPCContext_denylistEvaluator), *(v0 + OBJC_IVAR___APPCContext_denylistEvaluator + 8));

  sub_1C1AA7C8C(v0 + OBJC_IVAR___APPCContext_prefetchTimestamp, &qword_1EBF07F50, &qword_1C1B9A590);
}

id Context.__deallocating_deinit()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for PlaceholderRequest(0);
  v3 = *(v2 - 8);
  v35 = v2;
  v36 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C1B945F8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C1B94D78();
  v11 = NSSelectorFromString(v10);

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if ([ObjCClassFromMetadata respondsToSelector_])
  {
    v13 = OBJC_IVAR___APPCBaseContext_identifier;
    swift_beginAccess();
    (*(v7 + 16))(v9, &v1[v13], v6);
    sub_1C1B945A8();
    (*(v7 + 8))(v9, v6);
    v14 = sub_1C1B94D78();

    [ObjCClassFromMetadata performSelector:v11 withObject:v14];

    v15 = ObjCClassFromMetadata;
  }

  v16 = *&v1[OBJC_IVAR___APPCContext_requester];
  if (v16)
  {
    [v16 endRequests];
  }

  v17 = OBJC_IVAR___APPCContext_inventoryLock;
  [*&v1[OBJC_IVAR___APPCContext_inventoryLock] lock];
  v18 = OBJC_IVAR___APPCContext_inventory;
  swift_beginAccess();
  v19 = *&v1[v18];
  v37 = v17;
  v38 = v1;
  if (v19 >> 62)
  {
LABEL_23:
    v20 = sub_1C1B953A8();
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v20)
  {
    v21 = 0;
    do
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x1C6907490](v21, v19);
        v23 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
LABEL_16:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_23;
        }

        v22 = *(v19 + 8 * v21 + 32);
        swift_unknownObjectRetain();
        v23 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_16;
        }
      }

      [objc_msgSend(v22 metricsHelper)];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      ++v21;
    }

    while (v23 != v20);
  }

  v24 = v38;
  [*&v38[v37] unlock];
  v25 = OBJC_IVAR___APPCContext_placeholdersLock;
  [*&v24[OBJC_IVAR___APPCContext_placeholdersLock] lock];
  v26 = OBJC_IVAR___APPCContext_placeholders;
  swift_beginAccess();
  v27 = *&v24[v26];
  v28 = *(v27 + 16);
  if (v28)
  {
    v29 = *(v35 + 28);
    v30 = v27 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
    v31 = *(v36 + 72);

    do
    {
      sub_1C1B0B6D8(v30, v5);
      [objc_msgSend(*&v5[v29] metricsHelper)];
      swift_unknownObjectRelease();
      sub_1C1B0B73C(v5);
      v30 += v31;
      --v28;
    }

    while (v28);

    v24 = v38;
  }

  [*&v24[v25] unlock];
  v32 = type metadata accessor for Context(0);
  v39.receiver = v24;
  v39.super_class = v32;
  return objc_msgSendSuper2(&v39, sel_dealloc);
}

uint64_t sub_1C1B28898(unint64_t a1)
{
  v1 = a1;
  v18 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_35;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C1B953A8())
  {
    v3 = MEMORY[0x1E69E7CC0];
    if (i)
    {
      v4 = 0;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x1C6907490](v4, v1);
        }

        else
        {
          if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          v5 = *(v1 + 8 * v4 + 32);
        }

        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        if (*&v5[OBJC_IVAR___APPCDesiredPlacement_type] == 7)
        {
        }

        else
        {
          sub_1C1B954F8();
          sub_1C1B95528();
          sub_1C1B95538();
          sub_1C1B95508();
        }

        ++v4;
      }

      while (v6 != i);
      v1 = v18;
      v3 = MEMORY[0x1E69E7CC0];
      if ((v18 & 0x8000000000000000) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v1 = MEMORY[0x1E69E7CC0];
      if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) == 0)
      {
LABEL_17:
        if ((v1 & 0x4000000000000000) == 0)
        {
          v7 = *(v1 + 16);
          if (!v7)
          {
            goto LABEL_37;
          }

          goto LABEL_19;
        }
      }
    }

    v7 = sub_1C1B953A8();
    if (!v7)
    {
LABEL_37:

      sub_1C1AABA00(v3);
    }

LABEL_19:
    v18 = v3;
    sub_1C1AC7E74(0, v7 & ~(v7 >> 63), 0);
    if (v7 < 0)
    {
      break;
    }

    v8 = 0;
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1C6907490](v8, v1);
      }

      else
      {
        if (v8 >= *(v1 + 16))
        {
          goto LABEL_34;
        }

        v10 = *(v1 + 8 * v8 + 32);
      }

      v11 = *&v10[OBJC_IVAR___APPCDesiredPlacement_type];
      if (v11 >= 9)
      {
        goto LABEL_41;
      }

      v12 = byte_1C1B9FE52[v11];
      v13 = *&v10[OBJC_IVAR___APPCDesiredPlacement_count];

      v18 = v3;
      v15 = *(v3 + 16);
      v14 = *(v3 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1C1AC7E74((v14 > 1), v15 + 1, 1);
      }

      *(v3 + 16) = v15 + 1;
      v16 = v3 + 16 * v15;
      *(v16 + 32) = v13;
      *(v16 + 40) = v12;
      ++v8;
      if (v9 == v7)
      {
        goto LABEL_37;
      }
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    ;
  }

  __break(1u);
LABEL_41:
  result = sub_1C1B958C8();
  __break(1u);
  return result;
}

uint64_t sub_1C1B28D40(uint64_t a1, double a2, double a3)
{
  v7 = sub_1C1B945F8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 7)
  {
    if (qword_1EDE6C4E0 != -1)
    {
LABEL_33:
      swift_once();
    }

    v11 = sub_1C1B94BE8();
    sub_1C1AB4454(v11, qword_1EDE6D058);
    v12 = v3;
    v13 = sub_1C1B94BC8();
    v14 = sub_1C1B95128();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v33 = v16;
      *v15 = 67109378;
      *(v15 + 4) = 36;
      *(v15 + 8) = 2080;
      v17 = OBJC_IVAR___APPCBaseContext_identifier;
      swift_beginAccess();
      (*(v8 + 16))(v10, v12 + v17, v7);
      sub_1C1AA5A14(&qword_1EDE6B830, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v18 = sub_1C1B95858();
      v20 = v19;
      (*(v8 + 8))(v10, v7);
      v21 = sub_1C1AC7650(v18, v20, &v33);

      *(v15 + 10) = v21;
      _os_log_impl(&dword_1C1AA2000, v13, v14, "Context ID: %-*s Ignoring request for sponsored content without fetch.", v15, 0x12u);
      sub_1C1AA86F8(v16);
      MEMORY[0x1C6908230](v16, -1, -1);
      MEMORY[0x1C6908230](v15, -1, -1);
    }

    return 0;
  }

  v32 = *(v3 + OBJC_IVAR___APPCContext_inventoryLock);
  [v32 lock];
  v23 = OBJC_IVAR___APPCContext_inventory;
  swift_beginAccess();
  v10 = *(v3 + v23);
  v33 = MEMORY[0x1E69E7CC0];
  v8 = v10 & 0xFFFFFFFFFFFFFF8;
  if (v10 >> 62)
  {
    v24 = sub_1C1B953A8();
  }

  else
  {
    v24 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v24)
  {
    v7 = 0;
    v25 = MEMORY[0x1E69E7CC0];
    do
    {
      v26 = v7;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v27 = MEMORY[0x1C6907490](v26, v10);
          v7 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            goto LABEL_31;
          }
        }

        else
        {
          if (v26 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          v27 = *&v10[8 * v26 + 32];
          swift_unknownObjectRetain();
          v7 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }
        }

        ObjectType = swift_getObjectType();
        v3 = v27;
        if (PromotableContent.hasSuitableRepresentation(type:size:placeholderIdentifier:)(a1, 0, 0, ObjectType, a2, a3))
        {
          break;
        }

        swift_unknownObjectRelease();
        ++v26;
        if (v7 == v24)
        {
          goto LABEL_25;
        }
      }

      v29 = swift_unknownObjectRelease();
      v3 = &v33;
      MEMORY[0x1C6906EA0](v29);
      if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C1B94F08();
      }

      sub_1C1B94F48();
      v25 = v33;
    }

    while (v7 != v24);
  }

  else
  {
    v25 = MEMORY[0x1E69E7CC0];
  }

LABEL_25:

  if (!(v25 >> 62))
  {
    if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_27;
    }

LABEL_36:

    v22 = 0;
    goto LABEL_37;
  }

  result = sub_1C1B953A8();
  if (!result)
  {
    goto LABEL_36;
  }

LABEL_27:
  if ((v25 & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x1C6907490](0, v25);
    goto LABEL_30;
  }

  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v22 = *(v25 + 32);
    swift_unknownObjectRetain();
LABEL_30:

LABEL_37:
    [v32 unlock];
    return v22;
  }

  __break(1u);
  return result;
}

id Context.promotedContentInterstitial(size:ready:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a1;
  v10[4] = a2;
  v10[5] = v8;

  v11 = sub_1C1B2CC2C(1, sub_1C1B2B214, v10, a3, a4);

  type metadata accessor for PromotedContentInfo();
  swift_getObjectType();
  v12 = [swift_unknownObjectRetain() placeholder];

  v13 = sub_1C1AB5ED0(v11, v12, a1, a2);
  swift_unknownObjectRelease_n();
  swift_beginAccess();
  v14 = *(v8 + 16);
  *(v8 + 16) = v13;
  v15 = v13;

  return v15;
}

void sub_1C1B29408(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    type metadata accessor for PromotedContentInfo();
    swift_getObjectType();

    v11 = swift_unknownObjectRetain();
    v12 = sub_1C1AB5ED0(v11, 0, a3, a4);
    swift_unknownObjectRelease();
    swift_beginAccess();
    if (*(a5 + 16))
    {
      type metadata accessor for LifecycleMetricsHelper();
      v13 = swift_dynamicCastClass();
      if (v13)
      {
        v14 = *(v13 + OBJC_IVAR___APPCLifecycleMetricsHelper_metricsHelper);
        swift_unknownObjectRetain();
        [objc_msgSend(a1 metricsHelper)];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }
    }

    swift_beginAccess();
    if (*(a5 + 16))
    {
      type metadata accessor for LifecycleMetricsHelper();
      v15 = swift_dynamicCastClass();
      if (v15)
      {
        v16 = v15;
        swift_unknownObjectRetain();
        v17 = [a1 metricsHelper];
        swift_getObjectType();
        sub_1C1B5E2F0(v17, v16);
        swift_unknownObjectRelease();
      }
    }

    v18 = sub_1C1B94D78();
    v19 = NSSelectorFromString(v18);

    if ([v10 respondsToSelector_])
    {
      [v10 performSelector:v19 withObject:v12];
    }
  }
}

void Context.nativePromotedContent(size:contentFetched:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8[4] = a1;
  v8[5] = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1C1B225C4;
  v8[3] = &unk_1F4151CA8;
  v7 = _Block_copy(v8);

  [v4 promotedContentNativeWithSize:v7 contentFetched:{a3, a4}];
  _Block_release(v7);
}

void Context.promotedContentNative(size:contentFetched:)(void (*a1)(id), uint64_t a2, double a3, double a4)
{
  v9 = sub_1C1B94D78();
  v10 = NSSelectorFromString(v9);

  v11 = swift_allocObject();
  v11[2] = v4;
  v11[3] = v10;
  v11[4] = a1;
  v11[5] = a2;
  v12 = v4;

  v13 = sub_1C1B2CC2C(4, sub_1C1B2B220, v11, a3, a4);

  swift_getObjectType();
  if ([v13 placeholder])
  {

    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for PromotedContentInfo();
    v14 = swift_unknownObjectRetain();
    v17 = sub_1C1AB5ED0(v14, 0, 0, 0);
    swift_unknownObjectRelease();
    if ([v12 respondsToSelector_])
    {
      [v12 performSelector:v10 withObject:v13];
      v15 = v12;
      v16 = v12;
    }

    a1(v17);
    swift_unknownObjectRelease();
  }
}

void sub_1C1B29AB4(uint64_t a1, void *a2, uint64_t a3, void (*a4)(id))
{
  type metadata accessor for PromotedContentInfo();
  swift_getObjectType();
  v8 = swift_unknownObjectRetain();
  v11 = sub_1C1AB5ED0(v8, 0, 0, 0);
  swift_unknownObjectRelease();
  if ([a2 respondsToSelector_])
  {
    [a2 performSelector:a3 withObject:a1];
    v9 = a2;
    v10 = a2;
  }

  a4(v11);
}

id Context.convertToAPContext()()
{
  v1 = v0;
  v2 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v39 - v3;
  v5 = sub_1C1B945F8();
  v42 = *(v5 - 8);
  v43 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR___APPCBaseContext_current))
  {
    swift_getObjectType();
    v7 = sub_1C1B59844();
  }

  else
  {
    v7 = 0;
  }

  v39 = v7;
  v8 = *(v0 + OBJC_IVAR___APPCBaseContext_adjacent);
  v44[0] = MEMORY[0x1E69E7CC0];
  v40 = v4;
  if (v8 >> 62)
  {
LABEL_35:
    v9 = sub_1C1B953A8();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = 0;
  while (v9 != v10)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1C6907490](v10, v8);
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      swift_unknownObjectRetain();
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }
    }

    swift_getObjectType();
    v12 = sub_1C1B59844();
    v13 = swift_unknownObjectRelease();
    ++v10;
    if (v12)
    {
      MEMORY[0x1C6906EA0](v13);
      if (*((v44[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C1B94F08();
      }

      sub_1C1B94F48();
      v10 = v11;
    }
  }

  v14 = *(v0 + OBJC_IVAR___APPCBaseContext_maxSize);
  v15 = *(v0 + OBJC_IVAR___APPCBaseContext_maxSize + 8);
  v16 = OBJC_IVAR___APPCBaseContext_identifier;
  swift_beginAccess();
  (*(v42 + 16))(v41, v0 + v16, v43);
  v17 = v0 + OBJC_IVAR___APPCBaseContext_requestedAd;
  swift_beginAccess();
  v18 = *(v17 + 8);
  v19 = OBJC_IVAR___APPCContext_newsContext;
  swift_beginAccess();
  v20 = *(v1 + v19);
  if (v20)
  {

    v21 = v20;
    v22 = sub_1C1AB7364();
    v24 = v39;
    v23 = v40;
LABEL_22:

    v26 = sub_1C1ABAE90(v22);

    goto LABEL_23;
  }

  v25 = *(v1 + OBJC_IVAR___APPCContext_appStoreContext);
  v24 = v39;
  v23 = v40;
  if (v25)
  {

    v21 = v25;
    v22 = sub_1C1AD6D7C();
    goto LABEL_22;
  }

  v26 = 0;
LABEL_23:
  v27 = v41;
  v28 = v24;
  v29 = sub_1C1B945B8();
  if (v18)
  {
    v30 = sub_1C1B94D78();
  }

  else
  {
    v30 = 0;
  }

  sub_1C1AA576C(0, &qword_1EDE6CA08, 0x1E698A030);
  v31 = sub_1C1B94EB8();

  if (v26)
  {
    sub_1C1AC1F08(&qword_1EBF08E00, &unk_1C1B9F5A0);
    v32 = sub_1C1B94CA8();
  }

  else
  {
    v32 = 0;
  }

  v33 = [objc_allocWithZone(MEMORY[0x1E698A038]) initWithIdentifier:v29 maxSize:v30 requestedAdIdentifier:v28 currentContent:v31 adjacentContent:v32 supplementalContext:{v14, v15}];

  (*(v42 + 8))(v27, v43);
  v34 = OBJC_IVAR___APPCContext_prefetchTimestamp;
  swift_beginAccess();
  sub_1C1AA7E30(v1 + v34, v23, &qword_1EBF07F50, &qword_1C1B9A590);
  v35 = sub_1C1B94588();
  v36 = *(v35 - 8);
  v37 = 0;
  if ((*(v36 + 48))(v23, 1, v35) != 1)
  {
    v37 = sub_1C1B94538();
    (*(v36 + 8))(v23, v35);
  }

  [v33 setPrefetchTimestamp_];

  return v33;
}

uint64_t Context.addNewContentArrivedHandler(_:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = OBJC_IVAR___APPCContext_newContentArrivedHandlers;
  swift_beginAccess();
  v7 = *(v2 + v6);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_1C1ACE3A8(0, v7[2] + 1, 1, v7);
    *(v2 + v6) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_1C1ACE3A8((v9 > 1), v10 + 1, 1, v7);
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = sub_1C1B2B22C;
  v11[5] = v5;
  *(v2 + v6) = v7;
  return swift_endAccess();
}

Swift::Void __swiftcall Context.callNewContentArrivedHandlers(apContentDataItems:promotedContentItems:)(Swift::OpaquePointer apContentDataItems, Swift::OpaquePointer promotedContentItems)
{
  v5 = OBJC_IVAR___APPCContext_newContentArrivedHandlers;
  swift_beginAccess();
  v6 = *(v2 + v5);
  v7 = *(v6 + 16);

  if (v7)
  {
    v8 = 0;
    v9 = v6 + 40;
    while (v8 < *(v6 + 16))
    {
      ++v8;
      v10 = *(v9 - 8);
      rawValue = promotedContentItems._rawValue;
      v12 = apContentDataItems._rawValue;

      v10(&v12, &rawValue);

      v9 += 16;
      if (v7 == v8)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

uint64_t sub_1C1B2A390(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_1C1AA576C(0, qword_1EDE6CA20, 0x1E698A028);
  v3 = sub_1C1B94EC8();

  v2(v3);
}

uint64_t (*sub_1C1B2A414(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1C6907490](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_1C1B2A494;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1C1B2A49C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1C6907490](a2, a3);
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
    return sub_1C1B2A51C;
  }

  __break(1u);
  return result;
}

void (*sub_1C1B2A524(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1C6907490](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1C1ADE210;
  }

  __break(1u);
  return result;
}

uint64_t *sub_1C1B2A5A4(uint64_t *result, unint64_t a2, uint64_t a3)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1C6907490](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_1C1B2B8DC;
  }

  __break(1u);
  return result;
}

void (*sub_1C1B2A624(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1C6907490](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1C1B2B8E0;
  }

  __break(1u);
  return result;
}

unint64_t sub_1C1B2A6A4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C1B955F8();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

id sub_1C1B2A6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v52 = a5;
  v53 = a4;
  v50 = a2;
  v51 = a3;
  v56 = a1;
  v57 = sub_1C1B945F8();
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v54 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C1B95168();
  v48 = *(v11 - 8);
  v49 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v47 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C1B95148();
  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_1C1B94C38();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = OBJC_IVAR___APPCContext_inventoryLock;
  *&v7[v15] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  v16 = MEMORY[0x1E69E7CC0];
  *&v7[OBJC_IVAR___APPCContext_inventory] = MEMORY[0x1E69E7CC0];
  v17 = OBJC_IVAR___APPCContext_placeholdersLock;
  *&v7[v17] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  *&v7[OBJC_IVAR___APPCContext_placeholders] = v16;
  *&v7[OBJC_IVAR___APPCContext_lastError] = 0;
  *&v7[OBJC_IVAR___APPCContext_requester] = 0;
  v18 = &v7[OBJC_IVAR___APPCContext_denylistEvaluator];
  *v18 = 0;
  *(v18 + 1) = 0;
  *&v7[OBJC_IVAR___APPCContext_newsContext] = 0;
  *&v7[OBJC_IVAR___APPCContext_appStoreContext] = 0;
  v46 = OBJC_IVAR___APPCContext_contextQueue;
  v45[1] = sub_1C1AA576C(0, &qword_1EDE6CA10, 0x1E69E9610);
  if (qword_1EDE6CA90 != -1)
  {
    swift_once();
  }

  v19 = qword_1EDE6CAA0;
  sub_1C1B94C28();
  v59 = v16;
  sub_1C1AA5A14(&qword_1EDE6CA18, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1C1AC1F08(&unk_1EBF09010, &qword_1C1B9FC78);
  sub_1C1AA5A5C(&qword_1EDE6CA38, &unk_1EBF09010, &qword_1C1B9FC78);
  sub_1C1B95318();
  (*(v48 + 104))(v47, *MEMORY[0x1E69E8090], v49);
  *&v7[v46] = sub_1C1B951A8();
  v20 = OBJC_IVAR___APPCContext_prefetchTimestamp;
  v21 = sub_1C1B94588();
  (*(*(v21 - 8) + 56))(&v7[v20], 1, 1, v21);
  v22 = OBJC_IVAR___APPCContext_fetchingLock;
  *&v7[v22] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  v23 = MEMORY[0x1E69E7CC0];
  *&v7[OBJC_IVAR___APPCContext_fetching] = MEMORY[0x1E69E7CC0];
  v24 = OBJC_IVAR___APPCContext_waitingLock;
  *&v7[v24] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  *&v7[OBJC_IVAR___APPCContext_waiting] = v23;
  v25 = OBJC_IVAR___APPCContext_prefetchLock;
  *&v7[v25] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  *&v7[OBJC_IVAR___APPCContext_newContentArrivedHandlers] = v23;
  *&v7[OBJC_IVAR___APPCContext_limit] = [objc_opt_self() contextPrefetchLimit];
  v27 = v54;
  v26 = v55;
  v28 = *(v55 + 16);
  v30 = v56;
  v29 = v57;
  v28(v54, v56, v57);
  *&v7[OBJC_IVAR___APPCBaseContext_adjacentInternal] = v23;
  v31 = &v7[OBJC_IVAR___APPCBaseContext_requestedAd];
  *v31 = 0;
  v31[1] = 0;
  v28(&v7[OBJC_IVAR___APPCBaseContext_identifier], v27, v29);
  v32 = &v7[OBJC_IVAR___APPCBaseContext_maxSize];
  *v32 = a6;
  v32[1] = a7;
  swift_beginAccess();
  v33 = v51;
  *v31 = v50;
  v31[1] = v33;
  v34 = v52;
  *&v7[OBJC_IVAR___APPCBaseContext_current] = v53;
  *&v7[OBJC_IVAR___APPCBaseContext_next] = v23;
  *&v7[OBJC_IVAR___APPCBaseContext_adjacent] = v34;
  v35 = type metadata accessor for BaseContext(0);
  v58.receiver = v7;
  v58.super_class = v35;
  swift_unknownObjectRetain();
  v36 = objc_msgSendSuper2(&v58, sel_init);
  v37 = sub_1C1B95118();
  sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
  v38 = sub_1C1B95298();
  sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1C1B98E60;
  v40 = sub_1C1B945A8();
  v42 = v41;
  *(v39 + 56) = MEMORY[0x1E69E6158];
  *(v39 + 64) = sub_1C1AA5E7C();
  *(v39 + 32) = v40;
  *(v39 + 40) = v42;
  sub_1C1B94BA8(v37, &dword_1C1AA2000, v38, "[PC] Context (%@) is being initialized", 38, 2, v39);

  sub_1C1B343B4();

  v43 = *(v26 + 8);
  v43(v30, v29);
  v43(v27, v29);
  return v36;
}

unint64_t sub_1C1B2AF14()
{
  result = qword_1EDE6A7E8;
  if (!qword_1EDE6A7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6A7E8);
  }

  return result;
}

uint64_t sub_1C1B2AF68(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1C1AC3404(&unk_1EBF09048, &qword_1C1B9FC90);
    sub_1C1AA5A14(a2, type metadata accessor for PlaceholderRequest, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C1B2B004(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1C1AC3404(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C1B2B088()
{
  result = qword_1EDE6A720;
  if (!qword_1EDE6A720)
  {
    sub_1C1AC3404(&qword_1EBF09068, &qword_1C1B9FCA8);
    sub_1C1B2B10C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6A720);
  }

  return result;
}

unint64_t sub_1C1B2B10C()
{
  result = qword_1EDE6B808;
  if (!qword_1EDE6B808)
  {
    sub_1C1AC3404(&unk_1EBF09070, &qword_1C1B98F78);
    sub_1C1B0B7E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B808);
  }

  return result;
}

unint64_t sub_1C1B2B190()
{
  result = qword_1EDE6A6E8;
  if (!qword_1EDE6A6E8)
  {
    sub_1C1AC3404(&qword_1EBF09058, &qword_1C1B9FC98);
    sub_1C1AC1FA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6A6E8);
  }

  return result;
}

unint64_t sub_1C1B2B484()
{
  result = qword_1EBF09080;
  if (!qword_1EBF09080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF09080);
  }

  return result;
}

unint64_t sub_1C1B2B4DC()
{
  result = qword_1EDE6A7D8;
  if (!qword_1EDE6A7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6A7D8);
  }

  return result;
}

unint64_t sub_1C1B2B534()
{
  result = qword_1EDE6A7E0;
  if (!qword_1EDE6A7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6A7E0);
  }

  return result;
}

void sub_1C1B2B588(void *a1, void (**a2)(void, void), double a3, double a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  _Block_copy(a2);
  v9 = sub_1C1B94D78();
  v10 = NSSelectorFromString(v9);

  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = v10;
  v11[4] = sub_1C1B2B918;
  v11[5] = v8;
  v12 = a1;

  v13 = sub_1C1B2CC2C(4, sub_1C1B2B8D4, v11, a3, a4);

  swift_getObjectType();
  if ([v13 placeholder])
  {

    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for PromotedContentInfo();
    v14 = swift_unknownObjectRetain();
    v17 = sub_1C1AB5ED0(v14, 0, 0, 0);
    swift_unknownObjectRelease();
    if ([v12 respondsToSelector_])
    {
      [v12 performSelector:v10 withObject:v13];
      v15 = v12;
      v16 = v12;
    }

    (a2)[2](a2, v17);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1C1B2B7AC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C1B2B854(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1C1B2B91C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_1C1B91B54(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_1C1B2B9AC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1C1B8FE8C(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for PlaceholderRequest(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_1C1B32A08(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1C1B2BACC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1C1B8FEA0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 8 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 40), 8 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

id sub_1C1B2BB54(void *a1)
{
  v108 = sub_1C1B945F8();
  v2 = *(v108 - 8);
  result = MEMORY[0x1EEE9AC00](v108);
  v107 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return result;
  }

  v101._rawValue = a1;
  v5 = sub_1C1B2CB14(a1);
  v6 = v5;
  v100 = v5 >> 62;
  if (v5 >> 62)
  {
    goto LABEL_161;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C1B953A8())
  {
    v110 = v6;
    v112 = i;
    if (i)
    {
      v8 = 0;
      v9 = v6 & 0xC000000000000001;
      v111 = v6 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v9)
        {
          v10 = MEMORY[0x1C6907490](v8, v6);
        }

        else
        {
          if (v8 >= *(v111 + 16))
          {
            goto LABEL_149;
          }

          v10 = *(v6 + 8 * v8 + 32);
        }

        v11 = v10;
        v12 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
          goto LABEL_151;
        }

        v13 = OBJC_IVAR___APPCPromotedContent_metricsHelper;
        swift_beginAccess();
        [*&v11[v13] delivered];
        v14 = v11;
        sub_1C1B31AD4(v14, v113);

        ++v8;
      }

      while (v12 != i);
      v15 = 0;
      v105 = "eContentDepiction>16@0:8";
      v104 = (v2 + 16);
      v103 = (v2 + 8);
      v102 = xmmword_1C1B9AF30;
      v106 = v6 & 0xC000000000000001;
      while (1)
      {
        if (v9)
        {
          v16 = MEMORY[0x1C6907490](v15, v6);
        }

        else
        {
          if (v15 >= *(v111 + 16))
          {
            goto LABEL_152;
          }

          v16 = *(v6 + 8 * v15 + 32);
        }

        v17 = v16;
        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        v109 = sub_1C1B95118();
        sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
        v19 = sub_1C1B95298();
        sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
        v2 = swift_allocObject();
        *(v2 + 16) = v102;
        v20 = OBJC_IVAR___APPCBaseContext_identifier;
        swift_beginAccess();
        v21 = &v113[v20];
        v22 = v107;
        v23 = v108;
        (*v104)(v107, v21, v108);
        v24 = sub_1C1B945A8();
        v26 = v25;
        (*v103)(v22, v23);
        v27 = MEMORY[0x1E69E6158];
        *(v2 + 56) = MEMORY[0x1E69E6158];
        v28 = sub_1C1AA5E7C();
        *(v2 + 64) = v28;
        *(v2 + 32) = v24;
        *(v2 + 40) = v26;
        v29 = &v17[OBJC_IVAR___APPCPromotedContent_identifier];
        swift_beginAccess();
        v31 = *v29;
        v30 = *(v29 + 1);
        *(v2 + 96) = v27;
        *(v2 + 104) = v28;
        *(v2 + 72) = v31;
        *(v2 + 80) = v30;

        i = v112;
        sub_1C1B94BA8(v109, &dword_1C1AA2000, v19, "[PC] Context (%{public}@) got promoted content with id (%{public}@)", 67, 2, v2);

        v6 = v110;

        ++v15;
        v9 = v106;
        if (v18 == i)
        {
          goto LABEL_20;
        }
      }

LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
      goto LABEL_155;
    }

LABEL_20:
    Context.callNewContentArrivedHandlers(apContentDataItems:promotedContentItems:)(v101, v6);
    v32 = OBJC_IVAR___APPCContext_fetchingLock;
    [*&v113[OBJC_IVAR___APPCContext_fetchingLock] lock];
    if (v100)
    {
      v33 = sub_1C1B953A8();
    }

    else
    {
      v33 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v2 = MEMORY[0x1E69E7CC0];
    if (v33)
    {
      v117[0] = MEMORY[0x1E69E7CC0];
      sub_1C1AC7E24(0, v33 & ~(v33 >> 63), 0);
      if ((v33 & 0x8000000000000000) == 0)
      {
        v35 = 0;
        v2 = v117[0];
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v36 = MEMORY[0x1C6907490](v35, v6);
          }

          else
          {
            v36 = *(v6 + 8 * v35 + 32);
          }

          v37 = v36;
          if (v36[OBJC_IVAR___APPCPromotedContent_overriddenAdType + 8])
          {
            v38 = OBJC_IVAR___APPCPromotedContent_bestRepresentation;
            swift_beginAccess();
            v39 = *&v37[v38];
            if (v39)
            {
              v40 = [v39 adType];
            }

            else
            {
              v43 = OBJC_IVAR___APPCPromotedContent_representations;
              swift_beginAccess();
              v44 = *&v37[v43];
              if (v44 >> 62)
              {
                if (sub_1C1B953A8())
                {
LABEL_40:
                  if ((v44 & 0xC000000000000001) != 0)
                  {

                    v45 = MEMORY[0x1C6907490](0, v44);
                  }

                  else
                  {
                    if (!*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_159;
                    }

                    v45 = *(v44 + 32);
                    swift_unknownObjectRetain();
                  }

                  v40 = [v45 adType];

                  swift_unknownObjectRelease();
                  goto LABEL_34;
                }
              }

              else if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_40;
              }

              v40 = 0;
            }
          }

          else
          {
            v40 = *&v36[OBJC_IVAR___APPCPromotedContent_overriddenAdType];
          }

LABEL_34:
          v117[0] = v2;
          v42 = *(v2 + 16);
          v41 = *(v2 + 24);
          if (v42 >= v41 >> 1)
          {
            sub_1C1AC7E24((v41 > 1), v42 + 1, 1);
            v2 = v117[0];
          }

          ++v35;
          *(v2 + 16) = v42 + 1;
          *(v2 + 8 * v42 + 32) = v40;
          i = v112;
          if (v33 == v35)
          {
            goto LABEL_47;
          }
        }
      }

      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      v116 = v34;

      result = sub_1C1B958C8();
      __break(1u);
      return result;
    }

LABEL_47:
    v46 = OBJC_IVAR___APPCContext_fetching;
    swift_beginAccess();
    if (*(v2 + 16))
    {
      while (1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_1C1B8FEA0(v2);
        }

        v61 = *(v2 + 16);
        v62 = v113;
        if (!v61)
        {
          goto LABEL_150;
        }

        v60 = v61 - 1;
        v34 = *(v2 + 8 * v60 + 32);
        *(v2 + 16) = v60;
        v63 = *&v62[v46];
        v64 = *(v63 + 16);
        if (v64)
        {
          break;
        }

LABEL_61:
        if (!v60)
        {
          goto LABEL_48;
        }
      }

      v65 = 0;
      while (1)
      {
        v67 = *(v63 + 32 + 8 * v65);
        if (v34 > 3)
        {
          break;
        }

        if (v34 > 1)
        {
          if (v34 == 2)
          {
            if (v67 == 2)
            {
              goto LABEL_60;
            }
          }

          else if (v67 == 3)
          {
            goto LABEL_60;
          }

          goto LABEL_71;
        }

        if (!v34)
        {
          goto LABEL_67;
        }

        if (v34 != 1)
        {
          goto LABEL_172;
        }

        if (v67 == 1)
        {
LABEL_60:
          swift_beginAccess();
          sub_1C1B2BACC(v65);
          swift_endAccess();
          v60 = *(v2 + 16);
          goto LABEL_61;
        }

LABEL_71:
        if (v64 == ++v65)
        {
          goto LABEL_61;
        }
      }

      if (v34 > 5)
      {
        switch(v34)
        {
          case 6:
            if (v67 == 6)
            {
              goto LABEL_60;
            }

            break;
          case 7:
            if (v67 == 7)
            {
              goto LABEL_60;
            }

            break;
          case 8:
            break;
          default:
            goto LABEL_172;
        }

        goto LABEL_71;
      }

      if (v34 == 4)
      {
        if (v67 == 4)
        {
          goto LABEL_60;
        }

        goto LABEL_71;
      }

LABEL_67:
      if (v67)
      {
        v66 = v67 == 5;
      }

      else
      {
        v66 = 1;
      }

      if (v66)
      {
        goto LABEL_60;
      }

      goto LABEL_71;
    }

LABEL_48:
    v47 = &property descriptor for VideoRepresentation.unbranded;
    [*&v113[v32] unlock];
    if (i)
    {
      if (i < 1)
      {
        goto LABEL_171;
      }

      v48 = 0;
      v49 = v6 & 0xC000000000000001;
      do
      {
        if (v49)
        {
          v50 = MEMORY[0x1C6907490](v48, v6);
        }

        else
        {
          v50 = *(v6 + 8 * v48 + 32);
        }

        v51 = v50;
        v52 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v53 = swift_allocObject();
        *(v53 + 16) = sub_1C1B2AE5C;
        *(v53 + 24) = v52;
        v54 = OBJC_IVAR___APPCPromotedContent_onPromotedContentComplete;
        swift_beginAccess();
        v55 = *&v51[v54];
        swift_retain_n();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v51[v54] = v55;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v55 = sub_1C1ACE190(0, v55[2] + 1, 1, v55);
          *&v51[v54] = v55;
        }

        v58 = v55[2];
        v57 = v55[3];
        if (v58 >= v57 >> 1)
        {
          v55 = sub_1C1ACE190((v57 > 1), v58 + 1, 1, v55);
        }

        ++v48;
        v55[2] = v58 + 1;
        v59 = &v55[2 * v58];
        v59[4] = sub_1C1B32A6C;
        v59[5] = v53;
        *&v51[v54] = v55;
        swift_endAccess();

        v6 = v110;
      }

      while (v112 != v48);
      v68 = 0;
      v115[0] = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v49)
        {
          v69 = MEMORY[0x1C6907490](v68, v6);
        }

        else
        {
          if (v68 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_154;
          }

          v69 = *(v6 + 8 * v68 + 32);
        }

        v70 = v69;
        v71 = v68 + 1;
        if (__OFADD__(v68, 1))
        {
          goto LABEL_153;
        }

        if (v69[OBJC_IVAR___APPCPromotedContent_overriddenAdType + 8] == 1)
        {
          v72 = OBJC_IVAR___APPCPromotedContent_bestRepresentation;
          swift_beginAccess();
          v73 = *&v70[v72];
          if (v73)
          {
            if ([v73 adType] == 6)
            {
              goto LABEL_106;
            }
          }

          else
          {
            v74 = OBJC_IVAR___APPCPromotedContent_representations;
            swift_beginAccess();
            v75 = *&v70[v74];
            if (v75 >> 62)
            {
              if (!sub_1C1B953A8())
              {
                goto LABEL_95;
              }
            }

            else if (!*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_95;
            }

            if ((v75 & 0xC000000000000001) != 0)
            {

              v76 = MEMORY[0x1C6907490](0, v75);
            }

            else
            {
              if (!*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_160;
              }

              v76 = *(v75 + 32);
              swift_unknownObjectRetain();
            }

            v77 = [v76 adType];
            swift_unknownObjectRelease();
            if (v77 == 6)
            {
LABEL_106:

              goto LABEL_96;
            }
          }
        }

        else if (*&v69[OBJC_IVAR___APPCPromotedContent_overriddenAdType] == 6)
        {
          goto LABEL_106;
        }

LABEL_95:
        sub_1C1B954F8();
        sub_1C1B95528();
        sub_1C1B95538();
        sub_1C1B95508();
LABEL_96:
        ++v68;
        if (v71 == v112)
        {
          v78 = v115[0];
          v47 = &property descriptor for VideoRepresentation.unbranded;
          goto LABEL_120;
        }
      }
    }

    v78 = MEMORY[0x1E69E7CC0];
LABEL_120:

    v6 = sub_1C1AFB3B4(v78);

    v79 = *&v113[OBJC_IVAR___APPCContext_inventoryLock];
    [v79 lock];

    if (v6 >> 62)
    {
      sub_1C1AC1F08(&unk_1EBF09020, &qword_1C1B98F38);
      v80 = sub_1C1B95578();
    }

    else
    {
      sub_1C1B95898();
      v80 = v6;
    }

    swift_beginAccess();
    sub_1C1AC7548(v80);
    swift_endAccess();
    [v79 v47[463]];
    sub_1C1B2D340();
    v114 = MEMORY[0x1E69E7CC0];
    if (!(v6 >> 62))
    {
      v81 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v81)
      {
        break;
      }

      goto LABEL_124;
    }

    v81 = sub_1C1B953A8();
    if (!v81)
    {
      break;
    }

LABEL_124:
    v82 = 0;
    v83 = v6 & 0xC000000000000001;
    v84 = v6 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v83)
      {
        v85 = v6;
        v86 = MEMORY[0x1C6907490](v82, v6);
      }

      else
      {
        if (v82 >= *(v84 + 16))
        {
          goto LABEL_156;
        }

        v85 = v6;
        v86 = *(v6 + 8 * v82 + 32);
      }

      v87 = v86;
      v6 = v82 + 1;
      if (__OFADD__(v82, 1))
      {
        break;
      }

      v88 = OBJC_IVAR___APPCPromotedContent_bestRepresentation;
      swift_beginAccess();
      if (*&v87[v88])
      {
      }

      else
      {
        sub_1C1B954F8();
        sub_1C1B95528();
        sub_1C1B95538();
        sub_1C1B95508();
      }

      ++v82;
      v66 = v6 == v81;
      v6 = v85;
      if (v66)
      {
        v89 = v114;
        goto LABEL_137;
      }
    }

LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    ;
  }

  v89 = MEMORY[0x1E69E7CC0];
LABEL_137:
  v112 = v6;
  if ((v89 & 0x8000000000000000) == 0 && (v89 & 0x4000000000000000) == 0)
  {
    v90 = *(v89 + 16);
    if (!v90)
    {
      goto LABEL_164;
    }

    goto LABEL_140;
  }

  v90 = sub_1C1B953A8();
  if (v90)
  {
LABEL_140:
    v91 = 0;
    v6 = &selRef_hash;
    do
    {
      if ((v89 & 0xC000000000000001) != 0)
      {
        v92 = MEMORY[0x1C6907490](v91, v89);
      }

      else
      {
        if (v91 >= *(v89 + 16))
        {
          goto LABEL_158;
        }

        v92 = *(v89 + 8 * v91 + 32);
      }

      v93 = v92;
      v94 = v91 + 1;
      if (__OFADD__(v91, 1))
      {
        goto LABEL_157;
      }

      [v92 setBestRepresentation_];

      swift_unknownObjectRelease();
      ++v91;
    }

    while (v94 != v90);
  }

LABEL_164:

  v95 = sub_1C1B94D78();
  v96 = NSSelectorFromString(v95);

  if (![v113 respondsToSelector_])
  {
  }

  type metadata accessor for PromotedContent(0);
  v97 = sub_1C1B94EB8();

  [v113 performSelector:v96 withObject:v97];

  v98 = v113;
  v99 = v113;

  return v99;
}

uint64_t sub_1C1B2CB14(unint64_t a1)
{
  v2 = v1;
  if (a1 >> 62)
  {
    v4 = sub_1C1B953A8();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v10 = MEMORY[0x1E69E7CC0];
    result = sub_1C1B95518();
    if (v4 < 0)
    {
      __break(1u);
    }

    else
    {
      v6 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1C6907490](v6, a1);
        }

        else
        {
          v7 = *(a1 + 8 * v6 + 32);
        }

        v8 = v7;
        ++v6;
        v9 = v2;
        _s15PromotedContentAAC11contentData7contextABSo09APContentD0C_AA17PromotableContext_pSgtcfC_0(v8, v2);
        sub_1C1B954F8();
        sub_1C1B95528();
        sub_1C1B95538();
        sub_1C1B95508();
      }

      while (v4 != v6);
      return v10;
    }
  }

  return result;
}

char *sub_1C1B2CC2C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v6 = v5;
  v76 = a3;
  v74 = a2;
  v81 = a1;
  v73 = type metadata accessor for PlaceholderRequest(0);
  v78 = *(v73 - 8);
  v9 = MEMORY[0x1EEE9AC00](v73);
  v77 = v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v75 = v70 - v11;
  v12 = sub_1C1B945F8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v84) = sub_1C1B95118();
  v82 = sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
  v83 = "eContentDepiction>16@0:8";
  v80 = sub_1C1B95298();
  v86 = sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
  v16 = swift_allocObject();
  v79 = xmmword_1C1B9AF30;
  *(v16 + 16) = xmmword_1C1B9AF30;
  v17 = OBJC_IVAR___APPCBaseContext_identifier;
  swift_beginAccess();
  v18 = v13 + 16;
  v85 = *(v13 + 16);
  v85(v15, &v5[v17], v12);
  v19 = sub_1C1B945A8();
  v21 = v20;
  v23 = *(v13 + 8);
  v22 = v13 + 8;
  v87 = v23;
  v88 = v12;
  v23(v15, v12);
  v24 = MEMORY[0x1E69E6158];
  *(v16 + 56) = MEMORY[0x1E69E6158];
  v25 = sub_1C1AA5E7C();
  *(v16 + 64) = v25;
  *(v16 + 32) = v19;
  *(v16 + 40) = v21;
  v26 = v81;
  v27 = PlacementType.stringValue.getter(v81);
  *(v16 + 96) = v24;
  *(v16 + 104) = v25;
  *(v16 + 72) = v27;
  *(v16 + 80) = v28;
  v29 = v6;
  v30 = v80;
  sub_1C1B94BA8(v84, &dword_1C1AA2000, v80, "[PC] Context (%{public}@) received (%{public}@) representation request", 70, 2, v16);

  v31 = v26;
  v32 = sub_1C1B2D784(v26, 0, 0, a4, a5);
  if (v32)
  {
    v84 = v32;
    LODWORD(v80) = sub_1C1B95118();
    v33 = sub_1C1B95298();
    v34 = swift_allocObject();
    *(v34 + 16) = v79;
    v35 = &v29[v17];
    v36 = v88;
    v85(v15, v35, v88);
    v37 = sub_1C1B945A8();
    v39 = v38;
    v87(v15, v36);
    v40 = MEMORY[0x1E69E6158];
    *(v34 + 56) = MEMORY[0x1E69E6158];
    *(v34 + 64) = v25;
    *(v34 + 32) = v37;
    *(v34 + 40) = v39;
    v41 = PlacementType.stringValue.getter(v31);
    *(v34 + 96) = v40;
    *(v34 + 104) = v25;
    *(v34 + 72) = v41;
    *(v34 + 80) = v42;
    sub_1C1B94BA8(v80, &dword_1C1AA2000, v33, "[PC] Context (%{public}@) representation request for type (%{public}@) was fulfilled locally", 92, 2, v34);
  }

  else
  {
    v70[1] = v18;
    v71 = v17;
    v43 = v15;
    v72 = v25;
    *&v79 = v22;
    v80 = v29;
    v44 = v29;
    v45 = sub_1C1AAE960(0, 0, v26, 0, v44, 200, a4, a5);
    v46 = v75;
    sub_1C1B945E8();
    v47 = v73;
    *(v46 + *(v73 + 20)) = v31;
    v48 = (v46 + v47[6]);
    *v48 = a4;
    v48[1] = a5;
    v49 = v47[7];
    v84 = v45;
    *(v46 + v49) = v45;
    v50 = (v46 + v47[8]);
    v51 = v76;
    *v50 = v74;
    v50[1] = v51;
    v52 = *&v44[OBJC_IVAR___APPCContext_placeholdersLock];

    [v52 lock];
    v53 = v77;
    sub_1C1B0B6D8(v46, v77);
    v54 = OBJC_IVAR___APPCContext_placeholders;
    swift_beginAccess();
    v55 = *&v44[v54];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v44[v54] = v55;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v55 = sub_1C1ACE1A4(0, v55[2] + 1, 1, v55);
      *&v44[v54] = v55;
    }

    v58 = v55[2];
    v57 = v55[3];
    v59 = v78;
    if (v58 >= v57 >> 1)
    {
      v69 = sub_1C1ACE1A4((v57 > 1), v58 + 1, 1, v55);
      v59 = v78;
      v55 = v69;
    }

    v55[2] = v58 + 1;
    sub_1C1B32A08(v53, v55 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v58);
    *&v44[v54] = v55;
    swift_endAccess();
    [v52 unlock];
    v60 = sub_1C1B95118();
    v61 = sub_1C1B95298();
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_1C1B98E60;
    v63 = v88;
    v85(v43, &v80[v71], v88);
    v64 = sub_1C1B945A8();
    v66 = v65;
    v87(v43, v63);
    v67 = v72;
    *(v62 + 56) = MEMORY[0x1E69E6158];
    *(v62 + 64) = v67;
    *(v62 + 32) = v64;
    *(v62 + 40) = v66;
    sub_1C1B94BA8(v60, &dword_1C1AA2000, v61, "[PC] Context (%{public}@) request is queued waiting for new promoted contents to arrive", 87, 2, v62);

    sub_1C1B2DD0C();
    sub_1C1B0B73C(v46);
  }

  return v84;
}

uint64_t sub_1C1B2D340()
{
  v42 = type metadata accessor for PlaceholderRequest(0);
  v1 = *(v42 - 8);
  v2 = MEMORY[0x1EEE9AC00](v42);
  v44 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v45 = &v40 - v5;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v40 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v40 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v40 - v12;
  v41 = *(v0 + OBJC_IVAR___APPCContext_placeholdersLock);
  [v41 lock];
  v14 = OBJC_IVAR___APPCContext_placeholders;
  result = swift_beginAccess();
  v46 = v14;
  v47 = v0;
  v16 = *(v0 + v14);
  v17 = v16[2];
  if (v17)
  {
    v48 = v11;
    v18 = 0;
    v43 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v19 = v16 + v43;
    v20 = v42;
    while (1)
    {
      if (v18 >= v16[2])
      {
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
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        return result;
      }

      v21 = *(v1 + 72);
      sub_1C1B0B6D8(&v19[v21 * v18], v13);
      if ([*&v13[*(v20 + 28)] consumed])
      {
        v22 = v1;
        v23 = *&v13[*(v20 + 20)];
        result = sub_1C1B0B73C(v13);
        v24 = v23 == 3;
        v1 = v22;
        if (!v24)
        {
          v25 = v18 + 1;
          v26 = v16[2];
          if (v26 - 1 != v18)
          {
            v27 = v43 + v21 * v25;
            v28 = v48;
            while (1)
            {
              if (v25 >= v26)
              {
                goto LABEL_35;
              }

              sub_1C1B0B6D8(v16 + v27, v28);
              if ([*(v28 + *(v20 + 28)) consumed])
              {
                v29 = *&v48[*(v20 + 20)];
                result = sub_1C1B0B73C(v48);
                v24 = v29 == 3;
                v28 = v48;
                if (!v24)
                {
                  goto LABEL_11;
                }

                if (v25 != v18)
                {
LABEL_19:
                  if ((v18 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_36;
                  }

                  v30 = v16[2];
                  if (v18 >= v30)
                  {
                    goto LABEL_37;
                  }

                  result = sub_1C1B0B6D8(v16 + v43 + v18 * v21, v45);
                  if (v25 >= v30)
                  {
                    goto LABEL_38;
                  }

                  sub_1C1B0B6D8(v16 + v27, v44);
                  result = swift_isUniquelyReferenced_nonNull_native();
                  v31 = v46;
                  *(v47 + v46) = v16;
                  if ((result & 1) == 0)
                  {
                    result = sub_1C1B8FE8C(v16);
                    v16 = result;
                    *(v47 + v31) = result;
                  }

                  v1 = v22;
                  if (v18 >= v16[2])
                  {
                    goto LABEL_39;
                  }

                  result = sub_1C1B32A74(v44, v16 + v43 + v18 * v21);
                  v33 = v46;
                  v32 = v47;
                  *(v47 + v46) = v16;
                  if (v25 >= v16[2])
                  {
                    goto LABEL_40;
                  }

                  result = sub_1C1B32A74(v45, v16 + v27);
                  *(v32 + v33) = v16;
                  v20 = v42;
                  v28 = v48;
                }
              }

              else
              {
                result = sub_1C1B0B73C(v28);
                if (v25 != v18)
                {
                  goto LABEL_19;
                }
              }

              ++v18;
LABEL_11:
              ++v25;
              v26 = v16[2];
              v27 += v21;
              if (v25 == v26)
              {
                if (v25 < v18)
                {
                  goto LABEL_41;
                }

                goto LABEL_30;
              }
            }
          }

          goto LABEL_30;
        }
      }

      else
      {
        result = sub_1C1B0B73C(v13);
      }

      if (v17 == ++v18)
      {
        v18 = v16[2];
        v25 = v18;
        goto LABEL_30;
      }
    }
  }

  v18 = 0;
  v25 = 0;
LABEL_30:
  v35 = v46;
  v34 = v47;
  sub_1C1AF94EC(v18, v25);
  swift_endAccess();
  v36 = *(v34 + v35);

  [v41 unlock];
  v37 = *(v36 + 16);
  if (v37)
  {
    v38 = v36 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v39 = *(v1 + 72);
    do
    {
      sub_1C1B0B6D8(v38, v8);
      sub_1C1B2EDF0(v8);
      sub_1C1B0B73C(v8);
      v38 += v39;
      --v37;
    }

    while (v37);
  }
}

char *sub_1C1B2D784(uint64_t a1, uint64_t a2, unint64_t a3, double a4, double a5)
{
  v46 = a2;
  v47 = a3;
  v49 = a1;
  v8 = sub_1C1B945F8();
  v42 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *&v5[OBJC_IVAR___APPCContext_inventoryLock];
  [v45 lock];
  v10 = sub_1C1B2EA58();
  v11 = v10;
  v12 = v10 & 0xFFFFFFFFFFFFFF8;
  if (v10 >> 62)
  {
    goto LABEL_43;
  }

  v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v43 = v5;
  v44 = v8;
  if (v13)
  {
LABEL_3:
    v14 = 0;
    v48 = 200;
LABEL_6:
    v8 = v14;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1C6907490](v8, v11);
        v14 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_41;
        }
      }

      else
      {
        if (v8 >= *(v12 + 16))
        {
          goto LABEL_42;
        }

        v5 = *(v11 + 8 * v8 + 32);
        swift_unknownObjectRetain();
        v14 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          v13 = sub_1C1B953A8();
          v43 = v5;
          v44 = v8;
          if (!v13)
          {
            goto LABEL_44;
          }

          goto LABEL_3;
        }
      }

      ObjectType = swift_getObjectType();
      if ([v5 serverUnfilledReason] == 200)
      {
        v15 = PromotableContent.hasSuitableRepresentation(type:size:placeholderIdentifier:)(v49, v46, v47, ObjectType, a4, a5);
        v48 = v16;
        [v5 setBestRepresentation_];
        swift_unknownObjectRelease();
        if (v15)
        {
          goto LABEL_40;
        }

LABEL_5:
        swift_unknownObjectRelease();
        if (v14 == v13)
        {
          goto LABEL_45;
        }

        goto LABEL_6;
      }

      v18 = [v5 adType];
      if (v18 != 8)
      {
        break;
      }

      swift_unknownObjectRelease();
      ++v8;
      if (v14 == v13)
      {
        goto LABEL_45;
      }
    }

    if (v18 > 3)
    {
      if (v18 > 5)
      {
        if (v18 == 6)
        {
          if (v49 != 6)
          {
            goto LABEL_5;
          }

          goto LABEL_40;
        }

        if (v18 == 7)
        {
          if (v49 != 7)
          {
            goto LABEL_5;
          }

          goto LABEL_40;
        }

LABEL_57:
        v50 = v18;
        result = sub_1C1B958C8();
        __break(1u);
        return result;
      }

      if (v18 == 4)
      {
        if (v49 != 4)
        {
          goto LABEL_5;
        }

        goto LABEL_40;
      }
    }

    else
    {
      if (v18 > 1)
      {
        if (v18 == 2)
        {
          if (v49 != 2)
          {
            goto LABEL_5;
          }
        }

        else if (v49 != 3)
        {
          goto LABEL_5;
        }

        goto LABEL_40;
      }

      if (v18)
      {
        if (v18 == 1)
        {
          if (v49 != 1)
          {
            goto LABEL_5;
          }

LABEL_40:

          [v5 setAttachedToView_];
          v48 = [v5 serverUnfilledReason];
          [v45 unlock];
          return v5;
        }

        goto LABEL_57;
      }
    }

    if (v49 && v49 != 5)
    {
      goto LABEL_5;
    }

    goto LABEL_40;
  }

LABEL_44:
  v48 = 200;
LABEL_45:

  v19 = v43;
  v20 = sub_1C1B2EA58();
  if (v20 >> 62)
  {
    v21 = sub_1C1B953A8();
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = v44;

  if (v21)
  {
    v23 = UnfilledReason.description.getter(v48);
    v25 = v24;
  }

  else
  {
    v25 = 0x80000001C1BAA5A0;
    v23 = 0xD000000000000010;
  }

  v26 = sub_1C1B95138();
  sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
  v27 = sub_1C1B95298();
  sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1C1B9EEE0;
  v29 = OBJC_IVAR___APPCBaseContext_identifier;
  swift_beginAccess();
  v30 = v42;
  v31 = &v19[v29];
  v32 = v41;
  (*(v42 + 16))(v41, v31, v22);
  v33 = sub_1C1B945A8();
  v35 = v34;
  (*(v30 + 8))(v32, v22);
  v36 = MEMORY[0x1E69E6158];
  *(v28 + 56) = MEMORY[0x1E69E6158];
  v37 = sub_1C1AA5E7C();
  *(v28 + 32) = v33;
  *(v28 + 40) = v35;
  *(v28 + 96) = v36;
  *(v28 + 104) = v37;
  *(v28 + 64) = v37;
  *(v28 + 72) = v23;
  *(v28 + 80) = v25;
  *(v28 + 136) = v36;
  *(v28 + 144) = v37;
  v38 = 1701736270;
  if (v47)
  {
    v38 = v46;
  }

  v39 = 0xE400000000000000;
  if (v47)
  {
    v39 = v47;
  }

  *(v28 + 112) = v38;
  *(v28 + 120) = v39;

  sub_1C1B94BA8(v26, &dword_1C1AA2000, v27, "[PC] Context (%{public}@) failed to find a suitable representation with reason: %{public}@ for identifier: %{public}@", 117, 2, v28);

  [v45 unlock];
  return 0;
}

void sub_1C1B2DD0C()
{
  v1 = v0;
  v2 = type metadata accessor for PlaceholderRequest(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v61 = &v57 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v57 - v9;
  v11 = OBJC_IVAR___APPCContext_fetchingLock;
  [*(v0 + OBJC_IVAR___APPCContext_fetchingLock) lock];
  v12 = *(v0 + OBJC_IVAR___APPCContext_placeholdersLock);
  [v12 lock];
  v13 = OBJC_IVAR___APPCContext_placeholders;
  swift_beginAccess();
  v14 = *(v1 + v13);
  v67 = v14;

  [v12 unlock];
  v15 = OBJC_IVAR___APPCContext_fetching;
  swift_beginAccess();
  v57 = v15;
  v16 = *(v1 + v15);
  v17 = *(v16 + 2);

  v63 = v1;
  v64 = v6;
  if (!v17)
  {
    goto LABEL_42;
  }

LABEL_6:
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v21 = *(v16 + 2);
    if (!v21)
    {
      goto LABEL_40;
    }

    goto LABEL_8;
  }

  v16 = sub_1C1B8FEA0(v16);
  v21 = *(v16 + 2);
  if (!v21)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    v14 = v67;
LABEL_42:
    v58 = OBJC_IVAR___APPCContext_waitingLock;
    [*(v1 + OBJC_IVAR___APPCContext_waitingLock) lock];
    v30 = OBJC_IVAR___APPCContext_waiting;

    swift_beginAccess();
    v31 = v14[2];
    v59 = v14;
    v62 = v16;
    if (!v31)
    {
LABEL_80:
      [*(v1 + v58) unlock];
      [*(v1 + v11) unlock];
      v44 = v59;
      v45 = v59[2];
      if (v45)
      {
        v64 = v11;
        v65 = MEMORY[0x1E69E7CC0];
        sub_1C1AC7E24(0, v45, 0);
        v46 = v65;
        v47 = v44 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
        v48 = *(v3 + 72);
        v49 = v61;
        do
        {
          sub_1C1B0B6D8(v47, v49);
          v50 = *(v49 + *(v2 + 20));
          sub_1C1B0B73C(v49);
          v65 = v46;
          v52 = *(v46 + 16);
          v51 = *(v46 + 24);
          if (v52 >= v51 >> 1)
          {
            sub_1C1AC7E24((v51 > 1), v52 + 1, 1);
            v49 = v61;
            v46 = v65;
          }

          *(v46 + 16) = v52 + 1;
          *(v46 + 8 * v52 + 32) = v50;
          v47 += v48;
          --v45;
        }

        while (v45);

        v53 = OBJC_IVAR___APPCContext_prefetchLock;
        v54 = v63;
        [*(v63 + OBJC_IVAR___APPCContext_prefetchLock) lock];
        v55 = v64;
        [*&v64[v54] lock];
        swift_beginAccess();

        sub_1C1AAB914(v56);
        swift_endAccess();
        [*&v55[v54] unlock];
        sub_1C1B2F85C(v46);
        [*(v54 + v53) unlock];
      }

      else
      {
      }

      return;
    }

    v60 = "eContentDepiction>16@0:8";
    v32 = v59;
    while (1)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v36 = v32[2];
        if (!v36)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v32 = sub_1C1B8FE8C(v32);
        v36 = v32[2];
        if (!v36)
        {
LABEL_79:
          __break(1u);
          goto LABEL_80;
        }
      }

      v37 = v36 - 1;
      v38 = v32 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v37;
      v32[2] = v37;
      sub_1C1B32A08(v38, v6);
      v39 = *(v1 + v30);
      v40 = *(v39 + 16);
      if (v40)
      {
        break;
      }

LABEL_45:
      sub_1C1B0B73C(v6);
      if (!v32[2])
      {
        goto LABEL_80;
      }
    }

    v41 = 0;
    v20 = *&v6[*(v2 + 20)];
    while (1)
    {
      v43 = *(v39 + 32 + 8 * v41);
      if (v20 > 3)
      {
        break;
      }

      if (v20 > 1)
      {
        if (v20 == 2)
        {
          if (v43 == 2)
          {
            goto LABEL_44;
          }
        }

        else if (v43 == 3)
        {
          goto LABEL_44;
        }

        goto LABEL_54;
      }

      if (!v20)
      {
        goto LABEL_50;
      }

      if (v20 != 1)
      {
        goto LABEL_88;
      }

      if (v43 == 1)
      {
LABEL_44:
        swift_beginAccess();
        sub_1C1B2BACC(v41);
        swift_endAccess();
        v33 = sub_1C1B95138();
        sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
        v34 = sub_1C1B95298();
        v35 = v33;
        v6 = v64;
        sub_1C1B94BA8(v35, &dword_1C1AA2000, v34, "[PC] Removing 1 request from waiting", 36, 2, MEMORY[0x1E69E7CC0]);

        goto LABEL_45;
      }

LABEL_54:
      if (v40 == ++v41)
      {
        goto LABEL_45;
      }
    }

    if (v20 > 5)
    {
      switch(v20)
      {
        case 6:
          if (v43 == 6)
          {
            goto LABEL_44;
          }

          break;
        case 7:
          if (v43 == 7)
          {
            goto LABEL_44;
          }

          break;
        case 8:
          break;
        default:
          goto LABEL_88;
      }

      goto LABEL_54;
    }

    if (v20 == 4)
    {
      if (v43 == 4)
      {
        goto LABEL_44;
      }

      goto LABEL_54;
    }

LABEL_50:
    if (v43)
    {
      v42 = v43 == 5;
    }

    else
    {
      v42 = 1;
    }

    if (v42)
    {
      goto LABEL_44;
    }

    goto LABEL_54;
  }

LABEL_8:
  v19 = v21 - 1;
  v22 = *&v16[8 * v19 + 32];
  *(v16 + 2) = v19;
  v23 = v67;
  v24 = v67[2];
  if (!v24)
  {
    goto LABEL_5;
  }

  v25 = v11;
  v26 = v16;
  v27 = 0;
  while (v27 < v23[2])
  {
    sub_1C1B0B6D8(v23 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v27, v10);
    v29 = *&v10[*(v2 + 20)];
    if (v22 <= 3)
    {
      if (v22 > 1)
      {
        if (v22 == 2)
        {
          sub_1C1B0B73C(v10);
          if (v29 == 2)
          {
            goto LABEL_3;
          }
        }

        else
        {
          sub_1C1B0B73C(v10);
          if (v29 == 3)
          {
            goto LABEL_3;
          }
        }

        goto LABEL_14;
      }

      if (!v22)
      {
        goto LABEL_10;
      }

      if (v22 != 1)
      {
        goto LABEL_89;
      }

      sub_1C1B0B73C(v10);
      if (v29 == 1)
      {
LABEL_3:
        v18 = v61;
        sub_1C1B2B9AC(v27, v61);
        sub_1C1B0B73C(v18);
LABEL_4:
        v16 = v26;
        v19 = *(v26 + 2);
        v11 = v25;
        v1 = v63;
        v6 = v64;
LABEL_5:
        if (!v19)
        {
          goto LABEL_41;
        }

        goto LABEL_6;
      }
    }

    else
    {
      if (v22 <= 5)
      {
        if (v22 == 4)
        {
          sub_1C1B0B73C(v10);
          if (v29 == 4)
          {
            goto LABEL_3;
          }

          goto LABEL_14;
        }

LABEL_10:
        sub_1C1B0B73C(v10);
        if (v29)
        {
          v28 = v29 == 5;
        }

        else
        {
          v28 = 1;
        }

        if (v28)
        {
          goto LABEL_3;
        }

        goto LABEL_14;
      }

      switch(v22)
      {
        case 6:
          sub_1C1B0B73C(v10);
          if (v29 == 6)
          {
            goto LABEL_3;
          }

          break;
        case 7:
          sub_1C1B0B73C(v10);
          if (v29 == 7)
          {
            goto LABEL_3;
          }

          break;
        case 8:
          sub_1C1B0B73C(v10);
          break;
        default:
LABEL_89:
          v66 = v22;
          goto LABEL_90;
      }
    }

LABEL_14:
    if (v24 == ++v27)
    {
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_88:
  v65 = v20;

LABEL_90:
  sub_1C1B958C8();
  __break(1u);
}

id sub_1C1B2E4E8(char a1)
{
  v2 = v1;
  v4 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v42 - v5;
  v7 = sub_1C1B945F8();
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v2 + OBJC_IVAR___APPCBaseContext_maxSize);
  if (a1)
  {
    v10 = (v2 + OBJC_IVAR___APPCBaseContext_maxSize + 8);
  }

  else
  {
    v10 = (v2 + OBJC_IVAR___APPCBaseContext_maxSize);
  }

  if ((a1 & 1) == 0)
  {
    v9 = (v2 + OBJC_IVAR___APPCBaseContext_maxSize + 8);
  }

  v11 = *v9;
  v12 = *v10;
  v13 = *(v2 + OBJC_IVAR___APPCBaseContext_adjacent);
  v46[0] = MEMORY[0x1E69E7CC0];
  v42 = v6;
  if (v13 >> 62)
  {
LABEL_40:
    v14 = sub_1C1B953A8();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = 0;
  while (v14 != v15)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1C6907490](v15, v13);
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      swift_unknownObjectRetain();
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }
    }

    swift_getObjectType();
    v17 = sub_1C1B59844();
    v18 = swift_unknownObjectRelease();
    ++v15;
    if (v17)
    {
      MEMORY[0x1C6906EA0](v18);
      if (*((v46[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C1B94F08();
      }

      sub_1C1B94F48();
      v15 = v16;
    }
  }

  v19 = OBJC_IVAR___APPCBaseContext_identifier;
  swift_beginAccess();
  (*(v43 + 16))(v45, v2 + v19, v44);
  v20 = v2 + OBJC_IVAR___APPCBaseContext_requestedAd;
  swift_beginAccess();
  v21 = *(v20 + 8);
  if (*(v2 + OBJC_IVAR___APPCBaseContext_current))
  {
    swift_getObjectType();

    v22 = sub_1C1B59844();
  }

  else
  {

    v22 = 0;
  }

  v23 = OBJC_IVAR___APPCContext_newsContext;
  swift_beginAccess();
  v24 = *(v2 + v23);
  v25 = v42;
  if (v24)
  {
    v26 = v24;
    v27 = sub_1C1AB7364();
LABEL_27:
    v29 = v27;

    v30 = sub_1C1ABAE90(v29);

    goto LABEL_28;
  }

  v28 = *(v2 + OBJC_IVAR___APPCContext_appStoreContext);
  if (v28)
  {
    v26 = v28;
    v27 = sub_1C1AD6D7C();
    goto LABEL_27;
  }

  v30 = 0;
LABEL_28:
  v31 = sub_1C1B945B8();
  if (v21)
  {
    v32 = sub_1C1B94D78();
  }

  else
  {
    v32 = 0;
  }

  sub_1C1AA576C(0, &qword_1EDE6CA08, 0x1E698A030);
  v33 = sub_1C1B94EB8();

  if (v30)
  {
    sub_1C1AC1F08(&qword_1EBF08E00, &unk_1C1B9F5A0);
    v34 = sub_1C1B94CA8();
  }

  else
  {
    v34 = 0;
  }

  v35 = [objc_allocWithZone(MEMORY[0x1E698A038]) initWithIdentifier:v31 maxSize:v32 requestedAdIdentifier:v22 currentContent:v33 adjacentContent:v34 supplementalContext:{v12, v11}];

  (*(v43 + 8))(v45, v44);
  v36 = OBJC_IVAR___APPCContext_prefetchTimestamp;
  swift_beginAccess();
  sub_1C1ABB0C4(v2 + v36, v25);
  v37 = sub_1C1B94588();
  v38 = *(v37 - 8);
  v39 = 0;
  if ((*(v38 + 48))(v25, 1, v37) != 1)
  {
    v39 = sub_1C1B94538();
    (*(v38 + 8))(v25, v37);
  }

  [v35 setPrefetchTimestamp_];

  v40 = *(v2 + OBJC_IVAR___APPCContext_appStoreContext);
  *(v2 + OBJC_IVAR___APPCContext_appStoreContext) = 0;

  return v35;
}

void *sub_1C1B2EA58()
{
  v1 = OBJC_IVAR___APPCContext_inventory;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v9 = MEMORY[0x1E69E7CC0];
  if (v2 >> 62)
  {
LABEL_17:
    v3 = sub_1C1B953A8();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v4 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1C6907490](v4, v2);
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_17;
        }

        v5 = *(v2 + 8 * v4 + 32);
        swift_unknownObjectRetain();
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_14;
        }
      }

      if ([v5 available])
      {
        sub_1C1B954F8();
        sub_1C1B95528();
        sub_1C1B95538();
        sub_1C1B95508();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v4;
    }

    while (v6 != v3);
  }

  v9 = sub_1C1B90C58(v7);
  sub_1C1B2FD7C(&v9);

  return v9;
}

uint64_t sub_1C1B2EC10(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = [*a1 serverUnfilledReason];
  v5 = [v3 serverUnfilledReason];
  v6 = [v2 error];
  result = [v3 error];
  if (v4 == 200)
  {
    if (v5 == 200)
    {
      if (v6)
      {
        goto LABEL_4;
      }

      if (!result)
      {
        return result;
      }

LABEL_23:

      return 1;
    }

    if (!v6)
    {
      goto LABEL_23;
    }

    if (result)
    {
      v12 = result;

      v9 = v12;
LABEL_21:

      return 0;
    }

LABEL_26:

    return 0;
  }

  if (v5 == 200 && result == 0)
  {
    goto LABEL_26;
  }

  if (v6)
  {
    v11 = 1;
  }

  else
  {
    v11 = result == 0;
  }

  if (!v11)
  {
    goto LABEL_23;
  }

  if (v5 != 200)
  {
    if (result || !v6)
    {
      v13 = result;
      v14 = UnfilledReason.fulfillOrder.getter(v4);
      v15 = UnfilledReason.fulfillOrder.getter(v5);

      return v14 < v15;
    }

    goto LABEL_26;
  }

  if (v6)
  {
LABEL_4:
    v8 = result;

    v9 = v8;
    if (!v8)
    {
      return 0;
    }

    goto LABEL_21;
  }

  return 0;
}

char *Context.tryToFillInfo(type:size:placeholderIdentifier:)(uint64_t a1, uint64_t a2, unint64_t a3, double a4, double a5)
{
  result = sub_1C1B2D784(a1, a2, a3, a4, a5);
  if (result)
  {
    type metadata accessor for PromotedContent(0);
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = sub_1C1AB5618(v6, *(v6 + OBJC_IVAR___APPCPromotedContent_placeholder), 0, 0);
      swift_unknownObjectRelease();
      return v7;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C1B2EDF0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C1B945F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v45[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for PlaceholderRequest(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v45[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(a1 + *(v9 + 20));
  v13 = (a1 + *(v9 + 24));
  v14 = *v13;
  v15 = v13[1];
  v16 = sub_1C1B945A8();
  v18 = sub_1C1B2D784(v12, v16, v17, v14, v15);
  v20 = v19;

  if (v18)
  {
    v21 = *(a1 + *(v8 + 32));
    v22 = swift_unknownObjectRetain();
    v21(v22);
    v23 = *(v2 + OBJC_IVAR___APPCContext_placeholdersLock);
    [v23 lock];
    v24 = OBJC_IVAR___APPCContext_placeholders;
    swift_beginAccess();
    v25 = *(v2 + v24);

    v26 = sub_1C1B2F20C(a1, v25);
    v28 = v27;

    if ((v28 & 1) == 0)
    {
      swift_beginAccess();
      sub_1C1B2B9AC(v26, v11);
      sub_1C1B0B73C(v11);
      swift_endAccess();
    }

    [v23 unlock];
    return swift_unknownObjectRelease_n();
  }

  else
  {
    type metadata accessor for PromotedContent(0);
    v30 = swift_dynamicCastClass();
    if (v30)
    {
      v31 = OBJC_IVAR___APPCPromotedContent_serverUnfilledReason;
      v32 = v30;
      swift_beginAccess();
      *(v32 + v31) = v20;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong setUnfilledReason_];
        swift_unknownObjectRelease();
      }
    }

    v34 = sub_1C1B95138();
    sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
    v35 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1C1B9AF30;
    v37 = OBJC_IVAR___APPCBaseContext_identifier;
    swift_beginAccess();
    (*(v5 + 16))(v7, v2 + v37, v4);
    v38 = sub_1C1B945A8();
    v40 = v39;
    (*(v5 + 8))(v7, v4);
    v41 = MEMORY[0x1E69E6158];
    *(v36 + 56) = MEMORY[0x1E69E6158];
    v42 = sub_1C1AA5E7C();
    *(v36 + 64) = v42;
    *(v36 + 32) = v38;
    *(v36 + 40) = v40;
    v43 = sub_1C1B945A8();
    *(v36 + 96) = v41;
    *(v36 + 104) = v42;
    *(v36 + 72) = v43;
    *(v36 + 80) = v44;
    sub_1C1B94BA8(v34, &dword_1C1AA2000, v35, "[PC] Context (%{public}@) couldn't fill placeholder with id %{public}@", 70, 2, v36);
  }
}

uint64_t sub_1C1B2F20C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaceholderRequest(0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v11 = *(v5 + 72);
    do
    {
      sub_1C1B0B6D8(v10, v7);
      if ((sub_1C1B945C8() & 1) != 0 && *&v7[*(v4 + 20)] == *(a1 + *(v4 + 20)))
      {
        v12 = &v7[*(v4 + 24)];
        v13 = *v12;
        v14 = v12[1];
        sub_1C1B0B73C(v7);
        v15 = (a1 + *(v4 + 24));
        if (v13 == *v15 && v14 == v15[1])
        {
          return v9;
        }
      }

      else
      {
        sub_1C1B0B73C(v7);
      }

      ++v9;
      v10 += v11;
    }

    while (v8 != v9);
  }

  return 0;
}

id sub_1C1B2F378(uint64_t a1)
{
  v3 = type metadata accessor for PlaceholderRequest(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR___APPCContext_placeholdersLock);
  [v7 lock];
  v8 = OBJC_IVAR___APPCContext_placeholders;
  swift_beginAccess();
  v9 = *(v1 + v8);
  v10 = *(v9 + 16);
  if (v10)
  {
    v17 = v8;
    v18 = v7;
    v11 = *(v3 + 28);
    v12 = v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v13 = *(v4 + 72);

    do
    {
      sub_1C1B0B6D8(v12, v6);
      v14 = *&v6[v11];
      swift_unknownObjectRetain();
      sub_1C1B0B73C(v6);
      [v14 setError_];
      swift_unknownObjectRelease();
      v12 += v13;
      --v10;
    }

    while (v10);

    v8 = v17;
    v7 = v18;
  }

  *(v1 + v8) = MEMORY[0x1E69E7CC0];

  return [v7 unlock];
}

void sub_1C1B2F524(void *a1)
{
  v2 = v1;
  v4 = sub_1C1B945F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = sub_1C1B95128();
    sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
    v9 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1C1B9AF30;
    v11 = OBJC_IVAR___APPCBaseContext_identifier;
    swift_beginAccess();
    (*(v5 + 16))(v7, v2 + v11, v4);
    v12 = sub_1C1B945A8();
    v14 = v13;
    (*(v5 + 8))(v7, v4);
    v15 = MEMORY[0x1E69E6158];
    *(v10 + 56) = MEMORY[0x1E69E6158];
    v16 = sub_1C1AA5E7C();
    *(v10 + 64) = v16;
    *(v10 + 32) = v12;
    *(v10 + 40) = v14;
    v28[4] = a1;
    sub_1C1AC1F08(&qword_1EBF090A8, &qword_1C1B9FE70);
    v17 = sub_1C1B952B8();
    *(v10 + 96) = v15;
    *(v10 + 104) = v16;
    *(v10 + 72) = v17;
    *(v10 + 80) = v18;
    sub_1C1B94BA8(v8, &dword_1C1AA2000, v9, "[PC] Context (%{public}@) prefetch failed due to %{public}@", 59, 2, v10);

    v19 = *(v2 + OBJC_IVAR___APPCContext_lastError);
    *(v2 + OBJC_IVAR___APPCContext_lastError) = a1;
    v20 = a1;

    v21 = OBJC_IVAR___APPCContext_fetchingLock;
    [*(v2 + OBJC_IVAR___APPCContext_fetchingLock) lock];
    v22 = OBJC_IVAR___APPCContext_fetching;
    swift_beginAccess();
    v23 = MEMORY[0x1E69E7CC0];
    *(v2 + v22) = MEMORY[0x1E69E7CC0];

    [*(v2 + v21) unlock];
    v24 = OBJC_IVAR___APPCContext_waitingLock;
    [*(v2 + OBJC_IVAR___APPCContext_waitingLock) lock];
    v25 = OBJC_IVAR___APPCContext_waiting;
    swift_beginAccess();
    *(v2 + v25) = v23;

    [*(v2 + v24) unlock];
    v26 = a1;
    v27 = sub_1C1B94448();
    sub_1C1B2F378(v27);
  }
}

uint64_t sub_1C1B2F85C(uint64_t a1)
{
  v2 = v1;
  sub_1C1AC1F08(&qword_1EBF08D30, qword_1C1B9E9E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C1B9FE60;
  *(v4 + 32) = sub_1C1B2E4E8(0);
  v25 = v4;
  v5 = [objc_opt_self() currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6 != 1 || (sub_1C1B4D2D4() & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_1C1B2E4E8(1);
  MEMORY[0x1C6906EA0]();
  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    sub_1C1B94F48();
    v4 = v25;
LABEL_5:
    v7 = *(a1 + 16);
    if (v7)
    {
      break;
    }

LABEL_10:
    if (v4 >> 62)
    {
      a1 = sub_1C1B953A8();
      if (!a1)
      {
LABEL_22:
      }
    }

    else
    {
      a1 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!a1)
      {
        goto LABEL_22;
      }
    }

    if (a1 >= 1)
    {
      v12 = 0;
      v21 = v24;
      v22 = OBJC_IVAR___APPCContext_requester;
      do
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x1C6907490](v12, v4);
        }

        else
        {
          v13 = *(v4 + 8 * v12 + 32);
        }

        v14 = v13;
        sub_1C1ABB134(v13);
        v15 = *(v2 + v22);
        if (v15)
        {
          sub_1C1AA576C(0, &qword_1EDE6C9F0, 0x1E696AD98);
          v16 = v15;
          v17 = sub_1C1B94EB8();
          v18 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v24[2] = sub_1C1B329F8;
          v24[3] = v18;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          v24[0] = sub_1C1B451A4;
          v24[1] = &unk_1F41520F8;
          v19 = _Block_copy(aBlock);

          [v16 requestPromotedContentOfTypes:v17 forContext:v14 completionHandler:{v19, v21}];

          _Block_release(v19);
          v14 = v17;
        }

        ++v12;
      }

      while (a1 != v12);
    }

    __break(1u);
LABEL_26:
    sub_1C1B94F08();
  }

  v8 = v4;
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1C1B95518();
  v9 = (a1 + 32);
  while (1)
  {
    v11 = *v9++;
    v10 = v11;
    if (v11 >= 9)
    {
      break;
    }

    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    sub_1C1B954F8();
    sub_1C1B95528();
    sub_1C1B95538();
    sub_1C1B95508();
    if (!--v7)
    {
      v4 = v8;
      goto LABEL_10;
    }
  }

  result = sub_1C1B958C8();
  __break(1u);
  return result;
}

void sub_1C1B2FC50(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1C1B2F524(a1);
  }
}

void sub_1C1B2FCAC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      sub_1C1AC1F08(&qword_1EBF090A0, &qword_1C1B98F60);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_1C1B2FD7C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1C1B91B58(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1C1B2FDF8(v6);
  return sub_1C1B95508();
}

void sub_1C1B2FDF8(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1C1B95848();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1C1AC1F08(&unk_1EBF09020, &qword_1C1B98F38);
        v6 = sub_1C1B94F28();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1C1B30488(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1C1B2FF08(0, v2, 1, a1);
  }
}

void sub_1C1B2FF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 == a2)
  {
    return;
  }

  v4 = *a4;
  v5 = *a4 + 8 * a3 - 8;
  v6 = a1 - a3;
LABEL_6:
  v21 = v5;
  v22 = a3;
  v7 = *(v4 + 8 * a3);
  v20 = v6;
  while (1)
  {
    v8 = *v5;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v9 = [v7 serverUnfilledReason];
    v10 = [v8 serverUnfilledReason];
    v11 = [v7 error];
    v12 = [v8 error];
    v13 = v12;
    if (v9 == 200)
    {
      if (v10 == 200)
      {
        if (v11)
        {
          goto LABEL_129;
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (!v13)
        {
          goto LABEL_5;
        }
      }

      else
      {
        if (v11)
        {
LABEL_129:
          if (v12)
          {
LABEL_130:

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
          }

          else
          {
LABEL_4:
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
          }

LABEL_5:
          a3 = v22 + 1;
          v5 = v21 + 8;
          v6 = v20 - 1;
          if (v22 + 1 == a2)
          {
            return;
          }

          goto LABEL_6;
        }

LABEL_27:
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      goto LABEL_125;
    }

    if (v10 == 200 && v12 == 0)
    {
      goto LABEL_4;
    }

    if (!v11 && v12)
    {
      goto LABEL_27;
    }

    if (v10 == 200)
    {
      goto LABEL_130;
    }

    if (!v12 && v11)
    {
      goto LABEL_4;
    }

    if (v9 > 204)
    {
      switch(v9)
      {
        case 1000:
          v15 = 10;
          if (v10 <= 204)
          {
            break;
          }

          goto LABEL_24;
        case 1001:
        case 1002:
        case 1003:
        case 1004:
        case 1005:
        case 1006:
        case 1007:
        case 1008:
        case 1009:
        case 1011:
        case 1012:
        case 1013:
        case 1014:
        case 1015:
        case 1016:
        case 1017:
        case 1018:
        case 1019:
        case 1024:
        case 1032:
        case 1033:
        case 1034:
        case 1035:
        case 1036:
        case 1037:
        case 1038:
        case 1039:
        case 1040:
        case 1041:
        case 1042:
        case 1043:
        case 1044:
        case 1045:
        case 1046:
        case 1047:
        case 1048:
          goto LABEL_132;
        case 1010:
          v15 = 5;
          if (v10 <= 204)
          {
            break;
          }

          goto LABEL_24;
        case 1020:
          v15 = 7;
          if (v10 <= 204)
          {
            break;
          }

          goto LABEL_24;
        case 1021:
          v15 = 8;
          if (v10 <= 204)
          {
            break;
          }

          goto LABEL_24;
        case 1022:
        case 1023:
          v15 = 9;
          if (v10 > 204)
          {
            goto LABEL_24;
          }

          break;
        case 1025:
          v15 = 28;
          if (v10 <= 204)
          {
            break;
          }

          goto LABEL_24;
        case 1026:
          v15 = 34;
          if (v10 <= 204)
          {
            break;
          }

          goto LABEL_24;
        case 1027:
          v15 = 35;
          if (v10 <= 204)
          {
            break;
          }

          goto LABEL_24;
        case 1028:
          v15 = 36;
          if (v10 <= 204)
          {
            break;
          }

          goto LABEL_24;
        case 1029:
          v15 = 31;
          if (v10 <= 204)
          {
            break;
          }

          goto LABEL_24;
        case 1030:
          v15 = 37;
          if (v10 <= 204)
          {
            break;
          }

          goto LABEL_24;
        case 1031:
          v15 = 38;
          if (v10 <= 204)
          {
            break;
          }

          goto LABEL_24;
        case 1049:
          v15 = 20;
          if (v10 <= 204)
          {
            break;
          }

          goto LABEL_24;
        case 1050:
          v15 = 21;
          if (v10 <= 204)
          {
            break;
          }

          goto LABEL_24;
        case 1051:
          v15 = 22;
          if (v10 <= 204)
          {
            break;
          }

          goto LABEL_24;
        case 1052:
          v15 = 23;
          if (v10 <= 204)
          {
            break;
          }

          goto LABEL_24;
        case 1053:
          v15 = 24;
          if (v10 <= 204)
          {
            break;
          }

          goto LABEL_24;
        case 1054:
          v15 = 25;
          if (v10 <= 204)
          {
            break;
          }

          goto LABEL_24;
        case 1055:
          v15 = 26;
          if (v10 <= 204)
          {
            break;
          }

          goto LABEL_24;
        case 1056:
          v15 = 27;
          if (v10 <= 204)
          {
            break;
          }

          goto LABEL_24;
        case 1057:
          v15 = 30;
          if (v10 <= 204)
          {
            break;
          }

          goto LABEL_24;
        case 1058:
          v15 = 32;
          if (v10 <= 204)
          {
            break;
          }

          goto LABEL_24;
        case 1059:
          v15 = 33;
          if (v10 <= 204)
          {
            break;
          }

          goto LABEL_24;
        default:
          if (v9 == 205)
          {
            v15 = 1;
            if (v10 > 204)
            {
              goto LABEL_24;
            }
          }

          else
          {
            if (v9 != 206)
            {
              goto LABEL_132;
            }

            v15 = 29;
            if (v10 > 204)
            {
              goto LABEL_24;
            }
          }

          break;
      }

LABEL_32:
      if (v10 > 202)
      {
        if (v10 == 203)
        {
          v16 = 2;
        }

        else
        {
          v16 = 6;
        }
      }

      else if (v10 == 201)
      {
        v16 = 4;
      }

      else
      {
        if (v10 != 202)
        {
          goto LABEL_132;
        }

        v16 = 3;
      }

      goto LABEL_124;
    }

    if (v9 > 202)
    {
      if (v9 == 203)
      {
        v15 = 2;
        if (v10 <= 204)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v15 = 6;
        if (v10 <= 204)
        {
          goto LABEL_32;
        }
      }
    }

    else if (v9 == 201)
    {
      v15 = 4;
      if (v10 <= 204)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v9 != 202)
      {
        goto LABEL_132;
      }

      v15 = 3;
      if (v10 <= 204)
      {
        goto LABEL_32;
      }
    }

LABEL_24:
    switch(v10)
    {
      case 1000:
        v16 = 10;
        break;
      case 1001:
      case 1002:
      case 1003:
      case 1004:
      case 1005:
      case 1006:
      case 1007:
      case 1008:
      case 1009:
      case 1011:
      case 1012:
      case 1013:
      case 1014:
      case 1015:
      case 1016:
      case 1017:
      case 1018:
      case 1019:
      case 1024:
      case 1032:
      case 1033:
      case 1034:
      case 1035:
      case 1036:
      case 1037:
      case 1038:
      case 1039:
      case 1040:
      case 1041:
      case 1042:
      case 1043:
      case 1044:
      case 1045:
      case 1046:
      case 1047:
      case 1048:
        goto LABEL_132;
      case 1010:
        v16 = 5;
        break;
      case 1020:
        v16 = 7;
        break;
      case 1021:
        v16 = 8;
        break;
      case 1022:
      case 1023:
        v16 = 9;
        break;
      case 1025:
        v16 = 28;
        break;
      case 1026:
        v16 = 34;
        break;
      case 1027:
        v16 = 35;
        break;
      case 1028:
        v16 = 36;
        break;
      case 1029:
        v16 = 31;
        break;
      case 1030:
        v16 = 37;
        break;
      case 1031:
        v16 = 38;
        break;
      case 1049:
        v16 = 20;
        break;
      case 1050:
        v16 = 21;
        break;
      case 1051:
        v16 = 22;
        break;
      case 1052:
        v16 = 23;
        break;
      case 1053:
        v16 = 24;
        break;
      case 1054:
        v16 = 25;
        break;
      case 1055:
        v16 = 26;
        break;
      case 1056:
        v16 = 27;
        break;
      case 1057:
        v16 = 30;
        break;
      case 1058:
        v16 = 32;
        break;
      case 1059:
        v16 = 33;
        break;
      default:
        if (v10 == 205)
        {
          v16 = 1;
        }

        else
        {
          if (v10 != 206)
          {
            goto LABEL_132;
          }

          v16 = 29;
        }

        break;
    }

LABEL_124:

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v15 >= v16)
    {
      goto LABEL_5;
    }

LABEL_125:
    if (!v4)
    {
      break;
    }

    v17 = *v5;
    v7 = *(v5 + 8);
    *v5 = v7;
    *(v5 + 8) = v17;
    v5 -= 8;
    if (__CFADD__(v6++, 1))
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_132:
  sub_1C1B958C8();
  __break(1u);
}