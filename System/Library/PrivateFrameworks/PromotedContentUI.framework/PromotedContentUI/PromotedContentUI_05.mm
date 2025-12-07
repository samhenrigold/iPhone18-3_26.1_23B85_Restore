uint64_t sub_1C1A061D0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(a1, a2);
  *(a5 + 64) = 0;
}

uint64_t sub_1C1A06214(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = [objc_opt_self() sharedInstance];
  v10 = [v9 locationEnabled];

  if (v10)
  {
    [*(v4 + 48) willAccessLocation];
    [*(v4 + 48) willTransmitLocationFor_];
  }

  v12 = a2[5];
  v11 = a2[6];
  v14 = a2[7];
  v13 = a2[8];
  v15 = *(v4 + 96);
  type metadata accessor for AppStoreDynamicDataProvider();
  v16 = swift_allocObject();
  v16[2] = v12;
  v16[3] = v11;
  v16[4] = v14;
  v16[5] = v13;
  v16[6] = 0;
  v16[7] = v15;

  v17 = sub_1C1A3CBC8(2, a1, 0, 0, a3, a4);

  return v17;
}

void sub_1C1A06338(uint64_t a1)
{
  if (v1[4] || (sub_1C1A068B4(), v1[4]))
  {
    v3 = v1[5];
    v4 = v1[2];
    swift_unknownObjectRetain();
    [v4 lock];
    ObjectType = swift_getObjectType();
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    v10 = *(a1 + 72);
    v11 = *(a1 + 16);
    (*(v3 + 16))(v6, v7, v8, v9, v10, v11, ObjectType, v3);
    [v4 unlock];
    if (v11 == 1)
    {
      v12 = sub_1C1A6F64C();
      sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
      v13 = sub_1C1A6F8EC();
      sub_1C1A6F18C(v12, &dword_1C198D000, v13, "[PCUI] Subsequent requests disabled.", 36, 2, MEMORY[0x1E69E7CC0]);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v14 = sub_1C1A6F66C();
    sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
    v15 = sub_1C1A6F8EC();
    sub_1C1A6F18C(v14, &dword_1C198D000, v15, "[PCUI] Data Provider is missing.", 32, 2, MEMORY[0x1E69E7CC0]);
  }
}

uint64_t sub_1C1A06554(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C19A9E58(&qword_1EBF038A8, &unk_1C1A73990);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - v5;
  v7 = *(sub_1C1A039B4() + 16);

  if (v7)
  {
    if (*(a1 + 17) == 1)
    {
      v9 = sub_1C1A6F67C();
      sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
      v10 = sub_1C1A6F8EC();
      sub_1C1A6F18C(v9, &dword_1C198D000, v10, "[PCUI] Starting early prefetching.", 34, 2, MEMORY[0x1E69E7CC0]);

      sub_1C19A9E58(&qword_1EBF047C0, &qword_1C1A768B0);
      v11 = swift_allocObject();
      *(v11 + 3) = 0;
      v12 = *(*v11 + 104);
      v13 = sub_1C1A6D5DC();
      v23 = *(*(v13 - 8) + 56);
      v23(&v11[v12], 1, 1, v13);
      v14 = &v11[*(*v11 + 112)];
      *v14 = 0;
      *(v14 + 1) = 0;
      v15 = *(*v11 + 120);
      v16 = objc_allocWithZone(MEMORY[0x1E69861E0]);

      *&v11[v15] = [v16 init];
      *&v11[*(*v11 + 128)] = 0;
      v17 = &v11[*(*v11 + 136)];
      *v17 = 0;
      *(v17 + 1) = 0;
      *(v11 + 2) = v7;
      v18 = *(v7 + 16);

      v19 = sub_1C1A034DC();
      v21 = sub_1C1A06214(v18, a1, v19, v20);

      *(v11 + 3) = v21;

      sub_1C1A6D5AC();

      v23(v6, 0, 1, v13);
      v22 = *(*v11 + 104);
      swift_beginAccess();
      sub_1C19B40BC(v6, &v11[v22]);
      swift_endAccess();
      *(v2 + 64) = v11;
    }
  }

  if ((*(a1 + 17) & 1) == 0)
  {

    sub_1C1A27FDC(0);
  }

  return result;
}

uint64_t sub_1C1A068B4()
{
  v1 = v0;
  v2 = sub_1C1A6EBFC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 24);
  sub_1C19992F8(v6 + 408, &v33);
  sub_1C1994048(&v33, v34);
  (*(v3 + 104))(v5, *MEMORY[0x1E6989CE8], v2);
  v7 = sub_1C1A6EC3C();
  (*(v3 + 8))(v5, v2);
  sub_1C199935C(&v33);
  v8 = sub_1C1A6F67C();
  sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
  v9 = sub_1C1A6F8EC();
  if (v7)
  {
    sub_1C1A6F18C(v8, &dword_1C198D000, v9, "[PCUI] Using V3 content module", 30, 2, MEMORY[0x1E69E7CC0]);

    v10 = sub_1C1A2B284();
    v12 = *(v6 + 448);
    v11 = *(v6 + 456);
    v34 = sub_1C1A6EFCC();
    v35 = MEMORY[0x1E6989E48];
    *&v33 = v12;
    v13 = type metadata accessor for AppRequestMetaFieldsSource();
    v32[3] = v13;
    v32[4] = &off_1F413FB58;
    v32[0] = v11;
    type metadata accessor for HumbleSLPDataProvider();
    v14 = swift_allocObject();
    v15 = sub_1C199E1C0(v32, v13);
    v16 = MEMORY[0x1EEE9AC00](v15);
    v18 = (v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18, v16);
    v20 = *v18;
    v14[11] = v13;
    v14[12] = &off_1F413FB58;
    v14[8] = v20;
    v14[2] = v10;
    sub_1C199274C(&v33, (v14 + 3));

    sub_1C199935C(v32);
    type metadata accessor for NullAppLifecycleNotificationDelegate();
    swift_allocObject();
    v21 = &off_1F4142F00;
    v22 = &off_1F41414E0;
  }

  else
  {
    sub_1C1A6F18C(v8, &dword_1C198D000, v9, "[PCUI] Using new content module", 31, 2, MEMORY[0x1E69E7CC0]);

    v23 = *(v1 + 96);
    v24 = *(v1 + 48);

    sub_1C19F5714(v24, v23);
    v21 = &off_1F4140EF0;
    v22 = &off_1F4140ED0;
  }

  v25 = *(v1 + 16);
  type metadata accessor for AppStoreNotificationListener();
  v26 = swift_allocObject();
  *(v26 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v26 + 16) = v25;
  *(v26 + 32) = v22;
  swift_unknownObjectWeakAssign();
  v27 = objc_opt_self();
  v28 = v25;
  v29 = [v27 defaultCenter];
  [v29 addObserver:v26 selector:sel_becameActive_ name:*MEMORY[0x1E69DDAB0] object:0];

  v30 = [v27 defaultCenter];
  [v30 addObserver:v26 selector:sel_resignActive_ name:*MEMORY[0x1E69DDBC8] object:0];
  swift_unknownObjectRelease();

  *(v1 + 32) = v14;
  *(v1 + 40) = v21;
  swift_unknownObjectRelease();
  *(v1 + 56) = v26;
}

uint64_t sub_1C1A06D94@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_1C1A06E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 16);
  if (*(v5 + 16) && (v6 = sub_1C1991010(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = sub_1C1A6EC1C();
    v17 = *(v10 - 8);
    (*(v17 + 16))(a3, v9 + *(v17 + 72) * v8, v10);
    v11 = *(v17 + 56);
    v12 = a3;
    v13 = 0;
    v14 = v10;
  }

  else
  {
    v15 = sub_1C1A6EC1C();
    v11 = *(*(v15 - 8) + 56);
    v14 = v15;
    v12 = a3;
    v13 = 1;
  }

  return v11(v12, v13, 1, v14);
}

uint64_t sub_1C1A06F5C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v49 = a4;
  v50 = a5;
  v47 = a2;
  v48 = a3;
  v8 = sub_1C1A6E4BC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v45 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v46 = &v43 - v12;
  v13 = sub_1C19A9E58(&qword_1EBF03E48, &qword_1C1A744B0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v18 = v9;
  v19 = *(v9 + 56);
  v52 = &v43 - v20;
  v21 = v8;
  v19(v17);
  type metadata accessor for AppStoreAd(0);
  v22 = swift_allocObject();
  *(v22 + 80) = 0;
  *(v22 + 88) = 0;
  *(v22 + 96) = 4;
  *(v22 + 104) = 0;
  *(v22 + 112) = 0;
  *(v22 + 16) = a1;
  v51 = a1;
  v23 = sub_1C19E93F8();
  *(v22 + 24) = v23;
  swift_beginAccess();
  *(v22 + 96) = a6;
  if (v23)
  {
    v24 = v23;
    v25 = sub_1C1A6E7EC();
    *(v22 + 32) = v25;
    *(v22 + 40) = v26;
    v27 = v26;
    v28 = sub_1C1A6E80C();
    v30 = v29;

    if (v30)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v25 = 0;
    *(v22 + 32) = 0;
    *(v22 + 40) = 0xE000000000000000;
    v27 = 0xE000000000000000;
  }

  v28 = 0;
  v30 = 0xE000000000000000;
LABEL_6:
  v44 = v28;
  *(v22 + 48) = v28;
  *(v22 + 56) = v30;
  swift_beginAccess();
  v31 = v48;
  *(v22 + 80) = v47;
  *(v22 + 88) = v31;
  v32 = v50;
  *(v22 + 64) = v49;
  *(v22 + 72) = v32;
  v33 = v52;
  sub_1C1990FA8(v52, v22 + OBJC_IVAR____TtC17PromotedContentUI10AppStoreAd_frequencyStorageType, &qword_1EBF03E48, &qword_1C1A744B0);
  sub_1C1990FA8(v33, v15, &qword_1EBF03E48, &qword_1C1A744B0);
  v34 = v18;
  if ((*(v18 + 48))(v15, 1, v21) == 1)
  {
    v35 = v51;

    sub_1C1991140(v15, &qword_1EBF03E48, &qword_1C1A744B0);
  }

  else
  {
    v36 = *(v18 + 32);
    v50 = v25;
    v37 = v46;
    v36(v46, v15, v21);
    v49 = type metadata accessor for VisibilityTimingTracker(0);

    v35 = v51;
    v38 = [v51 metricsHelper];
    swift_getObjectType();
    v39 = v45;
    (*(v34 + 16))(v45, v37, v21);
    v40 = sub_1C19E5124(v50, v27, v44, v30, v38, v39, v49);

    (*(v34 + 8))(v37, v21);
    *(v22 + 104) = v40;
  }

  sub_1C1A6E73C();
  sub_1C1A6E72C();
  sub_1C1A69A38();
  v41 = [v35 journeyIdentifier];
  sub_1C1A6F3CC();

  sub_1C1A6E70C();

  sub_1C1991140(v52, &qword_1EBF03E48, &qword_1C1A744B0);
  return v22;
}

unint64_t sub_1C1A073E4()
{
  result = qword_1EBF04740;
  if (!qword_1EBF04740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF04740);
  }

  return result;
}

unint64_t sub_1C1A0743C()
{
  result = qword_1EBF04748;
  if (!qword_1EBF04748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF04748);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppStoreAdUnfilledReason(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AppStoreAdUnfilledReason(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for RunMode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RunMode(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C1A077C8()
{
  result = qword_1EBF047B0;
  if (!qword_1EBF047B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF047B0);
  }

  return result;
}

uint64_t sub_1C1A0781C()
{
  v1 = *(v0 + 32);
  (*(v0 + 16))();
  *(v1 + 64) = 0;
}

id sub_1C1A078A0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 ready];
  *a2 = result;
  return result;
}

void sub_1C1A078E8(char *a1, id a2)
{
  v4 = sub_1C1A6D62C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = *&a1[OBJC_IVAR___APPCMetricsView_promotedContent];
    v9 = [swift_unknownObjectRetain() identifier];
    v10 = a2;
    v11 = sub_1C1A6F3CC();
    v13 = v12;

    v53 = v10;
    v14 = [v10 identifier];
    v15 = sub_1C1A6F3CC();
    v17 = v16;

    if (v11 == v15 && v13 == v17)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v19 = sub_1C1A6FCEC();

      if ((v19 & 1) == 0)
      {
        v52 = sub_1C1A6F65C();
        sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
        v31 = sub_1C1A6F8EC();
        sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_1C1A74920;
        sub_1C1A6DD2C();
        v33 = sub_1C1A6D5EC();
        v35 = v34;
        (*(v5 + 8))(v7, v4);
        v36 = MEMORY[0x1E69E6158];
        *(v32 + 56) = MEMORY[0x1E69E6158];
        v37 = sub_1C199E518();
        *(v32 + 64) = v37;
        *(v32 + 32) = v33;
        *(v32 + 40) = v35;
        v38 = [v8 identifier];
        v39 = sub_1C1A6F3CC();
        v41 = v40;

        *(v32 + 96) = v36;
        *(v32 + 104) = v37;
        *(v32 + 72) = v39;
        *(v32 + 80) = v41;
        v42 = v53;
        v43 = [v53 identifier];
        v44 = sub_1C1A6F3CC();
        v46 = v45;

        *(v32 + 136) = v36;
        *(v32 + 144) = v37;
        *(v32 + 112) = v44;
        *(v32 + 120) = v46;
        sub_1C1A6F18C(v52, &dword_1C198D000, v31, "[PCUI] Context (%@) is replacing (%@) inside metricsview with pc: (%@)", 70, 2, v32);
        swift_unknownObjectRelease();

        a2 = v42;

        goto LABEL_13;
      }

      swift_unknownObjectRelease();
    }

    a2 = v53;
  }

  LODWORD(v53) = sub_1C1A6F65C();
  sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
  v20 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1C1A73CD0;
  sub_1C1A6DD2C();
  v22 = sub_1C1A6D5EC();
  v24 = v23;
  (*(v5 + 8))(v7, v4);
  v25 = MEMORY[0x1E69E6158];
  *(v21 + 56) = MEMORY[0x1E69E6158];
  v26 = sub_1C199E518();
  *(v21 + 64) = v26;
  *(v21 + 32) = v22;
  *(v21 + 40) = v24;
  v27 = [a2 identifier];
  v28 = sub_1C1A6F3CC();
  v30 = v29;

  *(v21 + 96) = v25;
  *(v21 + 104) = v26;
  *(v21 + 72) = v28;
  *(v21 + 80) = v30;
  sub_1C1A6F18C(v53, &dword_1C198D000, v20, "[PCUI] Context (%@) is setting up metricsview with pc: (%@)", 59, 2, v21);

  if (a1)
  {
LABEL_13:
    v47 = swift_allocObject();
    *(v47 + 16) = 0;
    sub_1C198FB8C(0, &qword_1EDE63F38, 0x1E69E9610);
    v48 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v49 = swift_allocObject();
    v49[2] = a2;
    v49[3] = v47;
    v49[4] = a1;
    v49[5] = v48;
    v50 = a1;
    swift_unknownObjectRetain();

    sub_1C1A6F6BC();
  }
}

void sub_1C1A07E4C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_1C1A6D62C();
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 adType];
  if (v12 > 8)
  {
    LODWORD(v66) = sub_1C1A6F66C();
    sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
    v22 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1C1A73CD0;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_1C1A6DD2C();

      Strong = sub_1C1A6D5EC();
      v26 = v25;
      (*(v8 + 8))(v11, v7);
    }

    else
    {
      v26 = 0;
    }

    v43 = MEMORY[0x1E69E6158];
    *(v23 + 56) = MEMORY[0x1E69E6158];
    v44 = sub_1C199E518();
    *(v23 + 64) = v44;
    v45 = 0x204E574F4E4B4E55;
    if (v26)
    {
      v45 = Strong;
    }

    v46 = 0xEA00000000004449;
    if (v26)
    {
      v46 = v26;
    }

    *(v23 + 32) = v45;
    *(v23 + 40) = v46;
    v47 = [a1 identifier];
    v48 = sub_1C1A6F3CC();
    v50 = v49;

    *(v23 + 96) = v43;
    *(v23 + 104) = v44;
    *(v23 + 72) = v48;
    *(v23 + 80) = v50;
    sub_1C1A6F18C(v66, &dword_1C198D000, v22, "[PCUI] Context (%@) has an unknown adtype for promoted content: %@", 66, 2, v23);
  }

  else if (((1 << v12) & 0xF7) == 0)
  {
    if (v12 == 3)
    {
      type metadata accessor for MetricsVideoView();
      v16 = swift_dynamicCastClass();
      if (v16)
      {
        v17 = *(v16 + OBJC_IVAR___APPCMetricsVideoView_privacyMarker);
        v18 = v17;
      }

      else
      {
        v17 = 0;
      }

      swift_beginAccess();
      v27 = *(a2 + 16);
      *(a2 + 16) = v17;
    }

    else
    {
      v66 = v8;
      v72 = 0;
      v73 = 0xE000000000000000;
      sub_1C1A6FACC();
      v70 = v72;
      v71 = v73;
      MEMORY[0x1C6904F50](0x20747865746E6F43, 0xE800000000000000);
      swift_beginAccess();
      v19 = swift_unknownObjectWeakLoadStrong();
      if (v19)
      {
        sub_1C1A6DD2C();

        v19 = sub_1C1A6D5EC();
        v21 = v20;
        (*(v66 + 8))(v11, v7);
      }

      else
      {
        v21 = 0;
      }

      v67 = v19;
      v68 = v21;
      v65 = sub_1C19A9E58(&qword_1EBF03758, &unk_1C1A758E0);
      v28 = sub_1C1A6F41C();
      MEMORY[0x1C6904F50](v28);

      MEMORY[0x1C6904F50](0xD000000000000029, 0x80000001C1A80080);
      [a1 adType];
      v29 = sub_1C1A6DE8C();
      MEMORY[0x1C6904F50](v29);

      MEMORY[0x1C6904F50](0xD000000000000016, 0x80000001C1A800B0);
      v30 = [a1 identifier];
      v31 = sub_1C1A6F3CC();
      v33 = v32;

      MEMORY[0x1C6904F50](v31, v33);

      v34 = sub_1C1A6F39C();

      v35 = sub_1C1A6F39C();
      CreateDiagnosticReport();

      if (qword_1EDE63990 != -1)
      {
        swift_once();
      }

      v36 = sub_1C1A6F1BC();
      sub_1C1994600(v36, qword_1EDE665F0);
      swift_unknownObjectRetain();

      v37 = sub_1C1A6F19C();
      v38 = sub_1C1A6F66C();
      swift_unknownObjectRelease();

      if (os_log_type_enabled(v37, v38))
      {
        v64 = v38;
        v39 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v69 = v63;
        *v39 = 136315650;
        swift_beginAccess();
        v40 = swift_unknownObjectWeakLoadStrong();
        if (v40)
        {
          sub_1C1A6DD2C();

          v40 = sub_1C1A6D5EC();
          v42 = v41;
          (*(v66 + 8))(v11, v7);
        }

        else
        {
          v42 = 0;
        }

        v70 = v40;
        v71 = v42;
        v51 = sub_1C1A6F41C();
        v53 = sub_1C19A1884(v51, v52, &v69);

        *(v39 + 4) = v53;
        *(v39 + 12) = 2080;
        [a1 adType];
        v54 = sub_1C1A6DE8C();
        v56 = sub_1C19A1884(v54, v55, &v69);

        *(v39 + 14) = v56;
        *(v39 + 22) = 2080;
        v57 = [a1 identifier];
        v58 = sub_1C1A6F3CC();
        v60 = v59;

        v61 = sub_1C19A1884(v58, v60, &v69);

        *(v39 + 24) = v61;
        _os_log_impl(&dword_1C198D000, v37, v64, "Context %s should not be creating views for adType %s for promoted content %s", v39, 0x20u);
        v62 = v63;
        swift_arrayDestroy();
        MEMORY[0x1C6906260](v62, -1, -1);
        MEMORY[0x1C6906260](v39, -1, -1);
      }
    }
  }

  swift_beginAccess();
  v13 = *(a2 + 16);
  v14 = v13;
  v15 = sub_1C1A60F44(a1, v13);

  (*((*MEMORY[0x1E69E7D40] & *a3) + 0x5B0))(v15);
}

_BYTE *sub_1C1A085CC(uint64_t a1, char a2, double a3, double a4)
{
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = [objc_allocWithZone(MEMORY[0x1E69861E0]) init];
  [v9 lock];
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v8;
  v11[4] = v9;

  v12 = v9;
  v13 = sub_1C1A6E97C();

  v14 = objc_allocWithZone(type metadata accessor for MetricsView());
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = v4;
  v16 = sub_1C19E2FC4(v15, v13, a2, v14, 0.0, 0.0, a3, a4);

  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1C1A078E8(Strong, v13);

  [v12 unlock];

  swift_unknownObjectRelease();
  return v16;
}

void sub_1C1A087BC(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  [a1 setVended_];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    sub_1C1A08864(v8, a1, a4);
  }
}

void sub_1C1A08864(void *a1, void *a2, char *a3)
{
  v4 = v3;
  v100 = sub_1C1A6D62C();
  v8 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v88 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v88 - v16;
  if (a1)
  {
    v93 = v15;
    v94 = v14;
    v98 = a2;
    v18 = qword_1EDE63C40;
    v99 = a1;
    if (v18 != -1)
    {
      swift_once();
    }

    v19 = qword_1EDE66608;

    sub_1C1A6DD2C();
    v20 = sub_1C1A6D5EC();
    v97 = v4;
    v22 = v21;
    v23 = *(v8 + 8);
    v24 = v17;
    v25 = v100;
    v23(v24, v100);
    v26 = sub_1C1A40BAC(v20, v22);

    if (v26)
    {
      v95 = a1;
      v96 = v26;
      v92 = a3;
      [v26 lock];
      sub_1C1A6DD2C();
      v27 = sub_1C1A6D5EC();
      v29 = v28;
      v23(v12, v25);
      v30 = [v98 identifier];
      v31 = v25;
      v32 = sub_1C1A6F3CC();
      v34 = v33;

      v35 = sub_1C1A3F7B4(v27, v29, v32, v34);

      v36 = v23;
      v37 = &unk_1E8148000;
      if (v35)
      {
      }

      else
      {
        sub_1C1A6DD2C();
        v39 = sub_1C1A6D5EC();
        v41 = v40;
        v36(v12, v31);
        v90 = OBJC_IVAR___APPCMetricsView_promotedContent;
        v42 = [*&v99[OBJC_IVAR___APPCMetricsView_promotedContent] identifier];
        v43 = sub_1C1A6F3CC();
        v45 = v44;

        v46 = sub_1C1A3EF20(v39, v41, v43, v45);

        v47 = v31;

        v48 = v95;
        v49 = v36;
        v91 = v36;
        if (v46)
        {

          v50 = v93;
          sub_1C1A6DD2C();
          v89 = sub_1C1A6D5EC();
          v52 = v51;
          v49(v50, v47);
          v53 = [*&v99[v90] identifier];
          v93 = sub_1C1A6F3CC();
          v55 = v54;

          v56 = sub_1C1A6E94C();
          if (v56)
          {
            v57 = v56;
            v58 = sub_1C1A6E4CC();
            v60 = v59;
          }

          else
          {
            v58 = 0;
            v60 = 0;
          }

          sub_1C1A3F034(0, v89, v52, v93, v55, v58, v60);

          v47 = v100;
          v49 = v91;
          v48 = v95;
        }

        sub_1C1A6DD2C();
        v61 = sub_1C1A6D5EC();
        v63 = v62;
        v49(v12, v47);
        v64 = [v98 identifier];
        v65 = sub_1C1A6F3CC();
        v67 = v66;

        v93 = v19;
        v68 = sub_1C1A3EF20(v61, v63, v65, v67);

        if (v68)
        {
          v69 = *(v68 + 16);
        }

        else
        {
          type metadata accessor for PreloadingMetricView();
          v68 = swift_allocObject();
          v69 = 0;
          *(v68 + 16) = 0u;
          *(v68 + 32) = 0u;
        }

        v70 = v92;
        *(v68 + 16) = v48;
        v71 = v99;

        v72 = *(v68 + 16);
        v73 = v71;
        if (v72)
        {
          v101 = *(v68 + 16);
          swift_getKeyPath();
          swift_allocObject();
          swift_weakInit();
          v74 = v72;
          v75 = sub_1C1A6D3EC();

          v70 = v92;

          v73 = *(v68 + 40);
          *(v68 + 40) = v75;
        }

        v92 = v71;

        v76 = v94;
        sub_1C1A6DD2C();
        v90 = sub_1C1A6D5EC();
        v78 = v77;
        v91(v76, v100);
        v79 = [v98 identifier];
        v80 = sub_1C1A6F3CC();
        v82 = v81;

        v83 = sub_1C1A6E94C();
        if (v83)
        {
          v84 = v83;
          v85 = sub_1C1A6E4CC();
          v87 = v86;
        }

        else
        {
          v85 = 0;
          v87 = 0;
        }

        sub_1C1A3F034(v68, v90, v78, v80, v82, v85, v87);

        [v70 lock];
        sub_1C1A078E8(v95, v98);

        v37 = &unk_1E8148000;
        [v70 unlock];
      }

      v38 = v96;
      [v96 v37[185]];
    }

    else
    {
      v38 = v99;
    }
  }
}

id Context.promotedContentView(ofType:size:)(uint64_t a1)
{
  v2 = [v1 promotedContentViewOfType:a1 size:0 startsCollapsed:?];

  return v2;
}

id sub_1C1A08FB0(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = [a1 promotedContentViewOfType:a3 size:0 startsCollapsed:?];

  return v3;
}

id Context.promotedContentView(ofType:size:startsCollapsed:)(uint64_t a1, char a2, double a3, double a4)
{
  v5 = [v4 promotedContentViewOfType:a1 size:a2 & 1 startsCollapsed:a3 position:{a4, 0.0, 0.0, 0.0, 0.0}];

  return v5;
}

id sub_1C1A09040(void *a1, double a2, double a3)
{
  v3 = [a1 promotedContentViewOfType:a2 size:a3 startsCollapsed:0.0 position:{0.0, 0.0, 0.0}];

  return v3;
}

char *Context.promotedContentView(ofType:size:startsCollapsed:position:)(void *a1, int a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v9 = v8;
  v81 = a2;
  v82 = a1;
  v16 = sub_1C1A6D62C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v78 - v21;
  v23 = sub_1C1A6F67C();
  v24 = sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
  v78[2] = " from a non-main thread.";
  v78[3] = "n>16@0:8";
  v78[4] = v24;
  v25 = sub_1C1A6F8EC();
  v78[1] = sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1C1A73A30;
  sub_1C1A6DD2C();
  v27 = sub_1C1A6D5EC();
  v29 = v28;
  v30 = *(v17 + 8);
  v80 = v16;
  v31 = v16;
  v32 = v30;
  v30(v22, v31);
  *(v26 + 56) = MEMORY[0x1E69E6158];
  v79 = sub_1C199E518();
  *(v26 + 64) = v79;
  *(v26 + 32) = v27;
  *(v26 + 40) = v29;
  v33 = v23;
  v34 = v82;
  sub_1C1A6F18C(v33, &dword_1C198D000, v25, "[PCUI] Context (%@) started making a metricsview", 48, 2, v26);

  v83 = sub_1C1A6E99C();
  if (!v83)
  {
    return sub_1C1A085CC(v34, v81 & 1, a3, a4);
  }

  if (qword_1EDE63C40 != -1)
  {
    swift_once();
  }

  sub_1C1A6DD2C();
  v35 = sub_1C1A6D5EC();
  v37 = v36;
  v38 = v19;
  v39 = v9;
  v40 = v80;
  v41 = v32;
  v32(v38, v80);
  v42 = sub_1C1A40BAC(v35, v37);

  if (v42)
  {
    [v42 lock];
    v43 = v42;
    v78[0] = v39;
    sub_1C1A6DD2C();
    v44 = sub_1C1A6D5EC();
    v46 = v45;
    v41(v22, v40);
    v47 = sub_1C1A6DCCC();
    v49 = sub_1C1A3F7B4(v44, v46, v47, v48);

    if (v49)
    {
      v50 = &v49[OBJC_IVAR___APPCMetricsView_slotPosition];
      *v50 = a5;
      v50[1] = a6;
      v50[2] = a7;
      v50[3] = a8;
      sub_1C1A6DD2C();
      v51 = sub_1C1A6D5EC();
      v82 = v42;
      v53 = v52;
      v41(v22, v40);
      v54 = sub_1C1A6DCCC();
      sub_1C199EEB0(v49, v51, v53, v54, v55);

      v56 = sub_1C1A6F67C();
      v57 = sub_1C1A6F8EC();
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_1C1A74920;
      sub_1C1A6DD2C();
      v59 = sub_1C1A6D5EC();
      v60 = v41;
      v62 = v61;
      v60(v22, v40);
      v63 = MEMORY[0x1E69E6158];
      v64 = v79;
      *(v58 + 56) = MEMORY[0x1E69E6158];
      *(v58 + 64) = v64;
      *(v58 + 32) = v59;
      *(v58 + 40) = v62;
      v65 = [*&v49[OBJC_IVAR___APPCMetricsView_promotedContent] identifier];
      v66 = sub_1C1A6F3CC();
      v68 = v67;

      *(v58 + 96) = v63;
      *(v58 + 104) = v64;
      *(v58 + 72) = v66;
      *(v58 + 80) = v68;
      v69 = [v49 ready];
      v70 = MEMORY[0x1E69E63A8];
      *(v58 + 136) = MEMORY[0x1E69E6370];
      *(v58 + 144) = v70;
      *(v58 + 112) = v69;
      sub_1C1A6F18C(v56, &dword_1C198D000, v57, "[PCUI] Context (%@) is returning a preloaded metricview with pc (%@) and it is ready: %d", 88, 2, v58);

      v71 = v82;
      [v82 unlock];
    }

    else
    {
      sub_1C1A6DCCC();
      v72 = v78[0];
      v73 = sub_1C1A6E92C();

      if (v73)
      {
        v74 = objc_allocWithZone(type metadata accessor for MetricsView());
        swift_getObjectType();
        v75 = v72;
        swift_unknownObjectRetain();
        v76 = sub_1C19E2FC4(v75, v73, v81 & 1, v74, 0.0, 0.0, a3, a4);

        v49 = v76;
        sub_1C1A078E8(v76, v73);
        swift_unknownObjectRelease();
      }

      else
      {
        v49 = sub_1C1A085CC(v82, v81 & 1, a3, a4);
      }

      v71 = v43;
      [v43 unlock];
    }
  }

  else
  {
    v49 = sub_1C1A085CC(v82, v81 & 1, a3, a4);
  }

  return v49;
}

char *sub_1C1A09730(void *a1, double a2, double a3, double a4, double a5, double a6, double a7, uint64_t a8, void *a9, int a10)
{
  v18 = a1;
  v19 = Context.promotedContentView(ofType:size:startsCollapsed:position:)(a9, a10, a2, a3, a4, a5, a6, a7);

  return v19;
}

_BYTE *Context.promotedContentVideo()()
{
  v1 = v0;
  v2 = sub_1C1A6D62C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C1A6F67C();
  sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
  v7 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C1A73A30;
  sub_1C1A6DD2C();
  v9 = sub_1C1A6D5EC();
  v11 = v10;
  (*(v3 + 8))(v5, v2);
  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = sub_1C199E518();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  sub_1C1A6F18C(v6, &dword_1C198D000, v7, "[PCUI] Context (%@) started making a metricsview", 48, 2, v8);

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = [objc_allocWithZone(MEMORY[0x1E69861E0]) init];
  [v13 lock];
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = v14;
  v15[4] = v12;
  v16 = v13;

  v17 = sub_1C1A6E97C();

  v18 = objc_allocWithZone(type metadata accessor for MetricsVideoView());
  v19 = OBJC_IVAR___APPCMetricsVideoView_privacyMarker;
  v20 = objc_allocWithZone(type metadata accessor for PrivacyMarker());
  swift_unknownObjectRetain();
  *&v18[v19] = [v20 init];
  v18[OBJC_IVAR___APPCMetricsVideoView_isFullScreen] = 0;
  *&v18[OBJC_IVAR___APPCMetricsVideoView____lazy_storage___privacyMarkerButton] = 0;
  v21 = &v18[OBJC_IVAR___APPCMetricsVideoView_representationFetched];
  *v21 = 0;
  v21[1] = 0;
  *&v18[OBJC_IVAR___APPCMetricsVideoView_videoView] = 0;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v22 = v1;
  v23 = sub_1C19E2FC4(v22, v17, 0, v18, 0.0, 0.0, 0.0, 0.0);

  v24 = v23;
  [v24 setReady_];

  swift_unknownObjectRelease();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1C1A078E8(Strong, v17);

  [v16 unlock];

  swift_unknownObjectRelease();
  return v24;
}

id sub_1C1A09BD8(void *a1, id a2, uint64_t a3, uint64_t a4)
{
  [a2 lock];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    sub_1C1A078E8(v8, a1);
  }

  return [a2 unlock];
}

_BYTE *sub_1C1A09C8C(void *a1)
{
  v1 = a1;
  v2 = Context.promotedContentVideo()();

  return v2;
}

_BYTE *Context.nativePromotedContentView(info:contentView:size:)(uint64_t a1, void *a2, double a3, double a4)
{
  v5 = v4;
  v53 = a2;
  v60 = a1;
  v8 = sub_1C1A6D62C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1C1A6F67C();
  v56 = sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
  v12 = sub_1C1A6F8EC();
  v55 = sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C1A73A30;
  sub_1C1A6DD2C();
  v14 = sub_1C1A6D5EC();
  v16 = v15;
  v17 = *(v9 + 8);
  v58 = v9 + 8;
  v59 = v8;
  v57 = v17;
  v17(v11, v8);
  *(v13 + 56) = MEMORY[0x1E69E6158];
  v18 = sub_1C199E518();
  *(v13 + 64) = v18;
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  sub_1C1A6F18C(v54, &dword_1C198D000, v12, "[PCUI] Context (%@) started making a metricsview", 48, 2, v13);

  v19 = sub_1C1A6DCCC();
  v20 = v5;
  v22 = sub_1C1A0A2D8(v19, v21);

  if (v22)
  {
    v23 = sub_1C1A6F65C();
    v24 = sub_1C1A6F8EC();
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1C1A73CD0;
    sub_1C1A6DD2C();
    v26 = sub_1C1A6D5EC();
    v28 = v27;
    v57(v11, v59);
    v29 = MEMORY[0x1E69E6158];
    *(v25 + 56) = MEMORY[0x1E69E6158];
    *(v25 + 64) = v18;
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    v30 = sub_1C1A6DCCC();
    *(v25 + 96) = v29;
    *(v25 + 104) = v18;
    *(v25 + 72) = v30;
    *(v25 + 80) = v31;
    sub_1C1A6F18C(v23, &dword_1C198D000, v24, "[PCUI] Context (%@) is setting up a metricsview for a native ad with identifier: %@", 83, 2, v25);

    type metadata accessor for MetricsView();
    swift_getObjectType();
    swift_unknownObjectRetain();
    v32 = v20;
    v33 = sub_1C19E3598(v32, v22, 0, 0.0, 0.0, a3, a4);

    v34 = objc_opt_self();
    swift_unknownObjectRetain();
    v35 = [v34 sharedApplication];
    v36 = objc_allocWithZone(type metadata accessor for NewsAdView(0));
    *&v36[OBJC_IVAR____TtC17PromotedContentUI10NewsAdView_newsAdView] = 0;
    v36[OBJC_IVAR____TtC17PromotedContentUI10NewsAdView_nativeArticleOnDisplay] = 0;
    v37 = OBJC_IVAR____TtC17PromotedContentUI10NewsAdView_oldPercentageTimestamp;
    v38 = sub_1C1A6F25C();
    v39 = *(*(v38 - 8) + 56);
    v39(&v36[v37], 1, 1, v38);
    v39(&v36[OBJC_IVAR____TtC17PromotedContentUI10NewsAdView_newPercentageTimestamp], 1, 1, v38);
    v40 = sub_1C19F6E34(v22, 0, 0, v35, v36);
    swift_unknownObjectRelease();
    sub_1C19D3808(v53);
    (*((*MEMORY[0x1E69E7D40] & *v33) + 0x5B0))(v40);
    swift_unknownObjectRelease();
  }

  else
  {
    v41 = sub_1C1A6F66C();
    v42 = sub_1C1A6F8EC();
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1C1A73CD0;
    sub_1C1A6DD2C();
    v44 = sub_1C1A6D5EC();
    v46 = v45;
    v57(v11, v59);
    v47 = MEMORY[0x1E69E6158];
    *(v43 + 56) = MEMORY[0x1E69E6158];
    *(v43 + 64) = v18;
    *(v43 + 32) = v44;
    *(v43 + 40) = v46;
    v48 = sub_1C1A6DCCC();
    *(v43 + 96) = v47;
    *(v43 + 104) = v18;
    *(v43 + 72) = v48;
    *(v43 + 80) = v49;
    sub_1C1A6F18C(v41, &dword_1C198D000, v42, "[PCUI] Context (%@) is trying to get content for native with identifier: %@, but it isn't in the inventory", 106, 2, v43, v53);

    sub_1C1A6EB6C();
    swift_unknownObjectRetain();
    v50 = sub_1C1A6EA3C();
    v51 = objc_allocWithZone(type metadata accessor for MetricsView());
    v40 = v20;
    v33 = sub_1C199AD38(v40, v50, 0, v51, 0.0, 0.0, a3, a4);
  }

  return v33;
}

void *sub_1C1A0A2D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1A0BC70();
  v5 = v4;
  if (v4 >> 62)
  {
LABEL_20:
    v6 = sub_1C1A6F9EC();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v7 = 0;
      v17 = v5 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1C69055B0](v7, v5);
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_16:
            __break(1u);
LABEL_17:

            return v8;
          }
        }

        else
        {
          if (v7 >= *(v17 + 16))
          {
            __break(1u);
            goto LABEL_20;
          }

          v8 = *(v5 + 8 * v7 + 32);
          swift_unknownObjectRetain();
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_16;
          }
        }

        v10 = [v8 identifier];
        v11 = sub_1C1A6F3CC();
        v13 = v12;

        if (v11 == a1 && v13 == a2)
        {
          goto LABEL_17;
        }

        v15 = sub_1C1A6FCEC();

        if (v15)
        {

          return v8;
        }

        swift_unknownObjectRelease();
        ++v7;
      }

      while (v9 != v6);
    }
  }

  return 0;
}

_BYTE *sub_1C1A0A460(void *a1, double a2, double a3, uint64_t a4, void *a5, void *a6)
{
  v10 = a5;
  v11 = a6;
  v12 = a1;
  v13 = Context.nativePromotedContentView(info:contentView:size:)(v10, v11, a2, a3);

  return v13;
}

id Context.nativePromotedContentView(info:contentView:size:position:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = [v4 nativePromotedContentViewWithInfo:a1 contentView:a2 size:a3 position:{a4, 0.0, 0.0, 0.0, 0.0}];

  return v5;
}

id sub_1C1A0A53C(void *a1, double a2, double a3)
{
  v3 = [a1 nativePromotedContentViewWithInfo:a2 contentView:a3 size:0.0 position:{0.0, 0.0, 0.0}];

  return v3;
}

char *Context.nativePromotedContentView(info:contentView:)(uint64_t a1, void *a2)
{
  v122 = a2;
  v4 = sub_1C1A6D62C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C1A6F67C();
  v9 = sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
  v118 = " from a non-main thread.";
  v120 = v9;
  v10 = sub_1C1A6F8EC();
  v119 = sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C1A73A30;
  v125 = v2;
  sub_1C1A6DD2C();
  v12 = sub_1C1A6D5EC();
  v14 = v13;
  v15 = *(v5 + 8);
  v121 = v7;
  v126 = v4;
  v123 = v15;
  v124 = v5 + 8;
  v15(v7, v4);
  *(v11 + 56) = MEMORY[0x1E69E6158];
  v16 = sub_1C199E518();
  *(v11 + 64) = v16;
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  v17 = a1;
  sub_1C1A6F18C(v8, &dword_1C198D000, v10, "[PCUI] Context (%@) started making a metricsview", 48, 2, v11);

  v18 = sub_1C1A6DCAC();
  if (v18)
  {
    v19 = v18;
    sub_1C1A6DB3C();
    v21 = v20;
    v23 = v22;
  }

  else
  {
    v21 = 0.0;
    v23 = 0.0;
  }

  v24 = sub_1C1A6DCCC();
  v25 = v125;
  v27 = sub_1C1A0A2D8(v24, v26);

  if (v27)
  {
    ObjectType = swift_getObjectType();
    v117 = v27;
    [objc_msgSend(v27 metricsHelper)];
    swift_unknownObjectRelease();
    v115 = sub_1C1A6F65C();
    v28 = sub_1C1A6F8EC();
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1C1A73CD0;
    v30 = v121;
    sub_1C1A6DD2C();
    v31 = sub_1C1A6D5EC();
    v33 = v32;
    v34 = v123;
    v123(v30, v126);
    v35 = MEMORY[0x1E69E6158];
    *(v29 + 56) = MEMORY[0x1E69E6158];
    *(v29 + 64) = v16;
    *(v29 + 32) = v31;
    *(v29 + 40) = v33;
    v36 = sub_1C1A6DCCC();
    *(v29 + 96) = v35;
    *(v29 + 104) = v16;
    *(v29 + 72) = v36;
    *(v29 + 80) = v37;
    sub_1C1A6F18C(v115, &dword_1C198D000, v28, "[PCUI] Context (%@) is setting up a metricsview for a native ad with identifier: %@", 83, 2, v29);

    if (qword_1EDE63C40 != -1)
    {
      swift_once();
    }

    v38 = qword_1EDE66608;
    v39 = v125;
    sub_1C1A6DD2C();
    v40 = sub_1C1A6D5EC();
    v42 = v41;
    v34(v30, v126);
    v120 = v17;
    v43 = sub_1C1A6DCCC();
    v119 = v38;
    v45 = sub_1C1A3F7B4(v40, v42, v43, v44);

    v46 = v122;
    if (v45)
    {
      v47 = v117;
      *&v45[OBJC_IVAR___APPCMetricsView_promotedContent] = v117;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v48 = v45;
      [v46 bounds];
      [v48 setBounds_];

      v49 = v48;
    }

    else
    {
      type metadata accessor for MetricsView();
      [v46 bounds];
      v75 = v74;
      v77 = v76;
      v79 = v78;
      v81 = v80;
      v47 = v117;
      swift_unknownObjectRetain();
      v82 = v39;
      v83 = sub_1C19E3598(v82, v47, 0, v75, v77, v79, v81);

      v49 = v83;
      v48 = 0;
    }

    v84 = objc_allocWithZone(type metadata accessor for PrivacyMarker());
    v85 = v48;
    v86 = [v84 init];
    v86[OBJC_IVAR___APPrivacyMarker_privacyMarkerType] = 1;
    sub_1C19970C4();
    v87 = objc_opt_self();
    swift_unknownObjectRetain();
    v88 = v86;
    v89 = [v87 sharedApplication];
    v90 = objc_allocWithZone(type metadata accessor for NewsAdView(0));
    *&v90[OBJC_IVAR____TtC17PromotedContentUI10NewsAdView_newsAdView] = 0;
    v90[OBJC_IVAR____TtC17PromotedContentUI10NewsAdView_nativeArticleOnDisplay] = 0;
    v91 = OBJC_IVAR____TtC17PromotedContentUI10NewsAdView_oldPercentageTimestamp;
    v92 = sub_1C1A6F25C();
    v93 = *(*(v92 - 8) + 56);
    v93(&v90[v91], 1, 1, v92);
    v93(&v90[OBJC_IVAR____TtC17PromotedContentUI10NewsAdView_newPercentageTimestamp], 1, 1, v92);
    v94 = sub_1C19F6E34(v47, 0, v86, v89, v90);
    swift_unknownObjectRelease();
    v118 = v88;

    v95 = v122;
    v96 = [v122 privacyMarkerPosition];
    v97 = v94 + OBJC_IVAR___APPCPromotedContentView_overriddenPrivacyMarkerPosition;
    v98 = *(v94 + OBJC_IVAR___APPCPromotedContentView_overriddenPrivacyMarkerPosition + 8);
    *v97 = v96;
    v97[8] = 0;
    if ((v98 & 1) != 0 || (v99 = sub_1C1A6E45C(), v99 != sub_1C1A6E45C()))
    {
      sub_1C1999C50();
    }

    (*((*MEMORY[0x1E69E7D40] & *v49) + 0x5B0))(v94);

    [v47 serverUnfilledReason];
    v100 = sub_1C1A6DF6C();
    v101 = sub_1C1A6DF6C();
    v102 = v126;
    if (v100 == v101)
    {
      v127 = v95;
      swift_getKeyPath();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v103 = sub_1C1A6D3EC();

      v104 = *(v49 + OBJC_IVAR___APPCMetricsView_frameObserver);
      *(v49 + OBJC_IVAR___APPCMetricsView_frameObserver) = v103;

      [v95 frame];
    }

    else
    {
      [v95 bounds];
      Width = CGRectGetWidth(v128);
      v106 = 0.0;
    }

    [v49 setFrame_];
    v66 = v49;
    v107 = v121;
    sub_1C1A6DD2C();
    v108 = sub_1C1A6D5EC();
    v110 = v109;
    v123(v107, v102);
    v111 = sub_1C1A6DCCC();
    sub_1C199EEB0(v66, v108, v110, v111, v112);

    [v95 addSubview_];

    swift_unknownObjectRelease();
  }

  else
  {
    v50 = sub_1C1A6F66C();
    v51 = sub_1C1A6F8EC();
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_1C1A73CD0;
    v53 = v121;
    sub_1C1A6DD2C();
    v54 = sub_1C1A6D5EC();
    v56 = v55;
    v123(v53, v126);
    v57 = MEMORY[0x1E69E6158];
    *(v52 + 56) = MEMORY[0x1E69E6158];
    *(v52 + 64) = v16;
    *(v52 + 32) = v54;
    *(v52 + 40) = v56;
    v58 = sub_1C1A6DCCC();
    *(v52 + 96) = v57;
    *(v52 + 104) = v16;
    *(v52 + 72) = v58;
    *(v52 + 80) = v59;
    sub_1C1A6F18C(v50, &dword_1C198D000, v51, "[PCUI] Context (%@) is trying to get content for native with identifier: %@, but it isn't in the inventory", 106, 2, v52);

    sub_1C1A6EB6C();
    swift_unknownObjectRetain();
    v60 = sub_1C1A6EA3C();
    v61 = objc_allocWithZone(type metadata accessor for MetricsView());
    v62 = v25;
    v63 = v60;
    v64 = sub_1C199AD38(v62, v63, 0, v61, 0.0, 0.0, v21, v23);

    type metadata accessor for PreloadingMetricView();
    v65 = swift_allocObject();
    v65[4] = 0;
    v65[5] = 0;
    v65[2] = v64;
    v65[3] = 0;
    v127 = v64;
    swift_getKeyPath();
    swift_allocObject();
    swift_weakInit();
    v66 = v64;
    v67 = sub_1C1A6D3EC();

    v68 = v65[5];
    v65[5] = v67;

    if (qword_1EDE63C40 != -1)
    {
      swift_once();
    }

    sub_1C1A6DD2C();
    v69 = sub_1C1A6D5EC();
    v71 = v70;
    v123(v53, v126);
    v72 = sub_1C1A6DCCC();
    sub_1C199EEB0(v66, v69, v71, v72, v73);

    [v122 addSubview_];
  }

  return v66;
}

char *sub_1C1A0B114(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = Context.nativePromotedContentView(info:contentView:)(v6, v7);

  return v9;
}

char *Context.promotedContentInterstitialView(info:)(uint64_t a1)
{
  v53 = a1;
  v1 = sub_1C1A6D62C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C1A6F67C();
  v6 = sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
  v50[1] = "n>16@0:8";
  v50[2] = " from a non-main thread.";
  v50[4] = v6;
  v7 = sub_1C1A6F8EC();
  v50[3] = sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C1A73A30;
  sub_1C1A6DD2C();
  v9 = sub_1C1A6D5EC();
  v11 = v10;
  v14 = *(v2 + 8);
  v12 = v2 + 8;
  v13 = v14;
  v52 = v1;
  v14(v4, v1);
  *(v8 + 56) = MEMORY[0x1E69E6158];
  v51 = sub_1C199E518();
  *(v8 + 64) = v51;
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  sub_1C1A6F18C(v5, &dword_1C198D000, v7, "[PCUI] Context (%@) started making a metricsview", 48, 2, v8);

  if (qword_1EDE63C40 != -1)
  {
    swift_once();
  }

  sub_1C1A6DD2C();
  v15 = sub_1C1A6D5EC();
  v17 = v16;
  v13(v4, v52);
  v18 = sub_1C1A6DCCC();
  v20 = sub_1C1A3F7B4(v15, v17, v18, v19);

  if (v20)
  {
    sub_1C1A6DD2C();
    v21 = sub_1C1A6D5EC();
    v23 = v22;
    v50[0] = v12;
    v24 = v13;
    v25 = v20;
    v26 = v52;
    v24(v4, v52);
    v27 = sub_1C1A6DCCC();
    sub_1C199EEB0(v25, v21, v23, v27, v28);

    v29 = sub_1C1A6F65C();
    v30 = sub_1C1A6F8EC();
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1C1A73CD0;
    sub_1C1A6DD2C();
    v32 = sub_1C1A6D5EC();
    v34 = v33;
    v35 = v26;
    v20 = v25;
    v24(v4, v35);
    v36 = MEMORY[0x1E69E6158];
    v37 = v51;
    *(v31 + 56) = MEMORY[0x1E69E6158];
    *(v31 + 64) = v37;
    *(v31 + 32) = v32;
    *(v31 + 40) = v34;
    v38 = sub_1C1A6DCCC();
    *(v31 + 96) = v36;
    *(v31 + 104) = v37;
    *(v31 + 72) = v38;
    *(v31 + 80) = v39;
    sub_1C1A6F18C(v29, &dword_1C198D000, v30, "[PCUI] Context (%@) is setting up a preloaded interstitial with identifier: %@", 78, 2, v31);
  }

  else
  {
    v40 = sub_1C1A6F66C();
    v30 = sub_1C1A6F8EC();
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1C1A73CD0;
    sub_1C1A6DD2C();
    v42 = sub_1C1A6D5EC();
    v44 = v43;
    v13(v4, v52);
    v45 = MEMORY[0x1E69E6158];
    v46 = v51;
    *(v41 + 56) = MEMORY[0x1E69E6158];
    *(v41 + 64) = v46;
    *(v41 + 32) = v42;
    *(v41 + 40) = v44;
    v47 = sub_1C1A6DCCC();
    *(v41 + 96) = v45;
    *(v41 + 104) = v46;
    *(v41 + 72) = v47;
    *(v41 + 80) = v48;
    sub_1C1A6F18C(v40, &dword_1C198D000, v30, "[PCUI] Context (%@) is trying to get content for interstitial with identifier: %@, but it isn't in the inventory", 112, 2, v41);
  }

  return v20;
}

char *sub_1C1A0B654(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = Context.promotedContentInterstitialView(info:)(v4);

  return v6;
}

_BYTE *static Context.sponsorshipAdPreviewView(base64EncodedParameterString:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C1A6D62C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = type metadata accessor for SponsorshipAdPreviewConfiguration(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v28[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28[-v7];
  v9 = sub_1C1A6D49C();
  if (v10 >> 60 == 15)
  {
    if (qword_1EDE63990 != -1)
    {
      swift_once();
    }

    v11 = sub_1C1A6F1BC();
    sub_1C1994600(v11, qword_1EDE665F0);
    v12 = sub_1C1A6F19C();
    v13 = sub_1C1A6F66C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1C198D000, v12, v13, "Failed to decode base64 string.", v14, 2u);
      MEMORY[0x1C6906260](v14, -1, -1);
    }

    return 0;
  }

  else
  {
    v15 = v9;
    v16 = v10;
    sub_1C1A6D20C();
    swift_allocObject();
    sub_1C1A6D1FC();
    sub_1C1A0DC0C(&qword_1EBF047D8, type metadata accessor for SponsorshipAdPreviewConfiguration, &unk_1C1A77F84);
    sub_1C1A6D1EC();
    sub_1C1A0DB4C(v8, v5, v17);
    v18 = objc_allocWithZone(type metadata accessor for PromotedMastheadSponsorshipAdView(0));
    v19 = sub_1C1A1B988(v5);
    sub_1C1A6EB6C();
    v20 = sub_1C1A6EA4C();
    sub_1C1A6D61C();
    v21 = objc_allocWithZone(sub_1C1A6E9EC());
    v22 = sub_1C1A6E98C();
    v23 = objc_allocWithZone(type metadata accessor for MetricsView());
    v24 = v20;
    v26 = sub_1C199AD38(v22, v24, 0, v23, 0.0, 0.0, 120.0, 56.0);
    (*((*MEMORY[0x1E69E7D40] & *v26) + 0x5B0))(v19);

    sub_1C1A0DB38(v15, v16);

    sub_1C1A0DBB0(v8, v25);
  }

  return v26;
}

uint64_t static Context.start()()
{
  if (qword_1EDE63FF8 != -1)
  {
    return swift_once();
  }

  return result;
}

uint64_t sub_1C1A0BBE0()
{
  if (qword_1EDE63FF8 != -1)
  {
    return swift_once();
  }

  return result;
}

id sub_1C1A0BC10()
{
  result = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  qword_1EDE63F88 = result;
  return result;
}

void *sub_1C1A0BC48()
{
  result = sub_1C19B72C0(MEMORY[0x1E69E7CC0]);
  off_1EDE63F78 = result;
  return result;
}

uint64_t sub_1C1A0BC70()
{
  v0 = sub_1C1A6D62C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE63F80 != -1)
  {
LABEL_27:
    swift_once();
  }

  v4 = qword_1EDE63F88;
  [qword_1EDE63F88 lock];
  if (qword_1EDE63F70 != -1)
  {
    swift_once();
  }

  sub_1C1A6DD2C();
  v5 = sub_1C1A6D5EC();
  v7 = v6;
  v8 = *(v1 + 8);
  v1 += 8;
  v8(v3, v0);
  swift_beginAccess();
  v9 = off_1EDE63F78;
  if (!*(off_1EDE63F78 + 2))
  {
LABEL_20:

    goto LABEL_21;
  }

  v10 = sub_1C1991010(v5, v7);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
LABEL_21:
    swift_endAccess();
    v16 = MEMORY[0x1E69E7CC0];
    goto LABEL_25;
  }

  v0 = *(v9[7] + 8 * v10);
  swift_endAccess();
  v19 = MEMORY[0x1E69E7CC0];
  if (v0 >> 62)
  {
    v3 = sub_1C1A6F9EC();
  }

  else
  {
    v3 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v18 = v4;
    v13 = 0;
    while (1)
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1C69055B0](v13, v0);
        v4 = (v13 + 1);
        if (__OFADD__(v13, 1))
        {
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }
      }

      else
      {
        if (v13 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_27;
        }

        v14 = *(v0 + 8 * v13 + 32);
        swift_unknownObjectRetain();
        v4 = (v13 + 1);
        if (__OFADD__(v13, 1))
        {
          goto LABEL_19;
        }
      }

      [v14 adType];
      v15 = sub_1C1A6DEAC();
      if (v15 == sub_1C1A6DEAC())
      {
        sub_1C1A6FB2C();
        v1 = *(v19 + 16);
        sub_1C1A6FB5C();
        sub_1C1A6FB6C();
        sub_1C1A6FB3C();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v13;
      if (v4 == v3)
      {
        v4 = v18;
        v16 = v19;
        goto LABEL_24;
      }
    }
  }

  v16 = MEMORY[0x1E69E7CC0];
LABEL_24:

LABEL_25:
  [v4 unlock];
  return v16;
}

id sub_1C1A0BF78(void *a1)
{
  v2 = sub_1C1A6D62C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1C1A0E998;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C1A0C260;
  aBlock[3] = &unk_1F4141708;
  v7 = _Block_copy(aBlock);

  [a1 registerPromotedContentUsedWithAction_];
  _Block_release(v7);
  v17 = sub_1C1A0BC70();
  v8 = swift_unknownObjectRetain();
  MEMORY[0x1C6904FB0](v8);
  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1C1A6F53C();
  }

  sub_1C1A6F55C();
  v9 = v17;
  if (qword_1EDE63F80 != -1)
  {
    swift_once();
  }

  v10 = qword_1EDE63F88;
  [qword_1EDE63F88 lock];
  if (qword_1EDE63F70 != -1)
  {
    swift_once();
  }

  sub_1C1A6DD2C();
  v11 = sub_1C1A6D5EC();
  v13 = v12;
  (*(v3 + 8))(v5, v2);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = off_1EDE63F78;
  off_1EDE63F78 = 0x8000000000000000;
  sub_1C1A49E5C(v9, v11, v13, isUniquelyReferenced_nonNull_native);

  off_1EDE63F78 = v16;
  swift_endAccess();
  return [v10 unlock];
}

double sub_1C1A0C260(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_1C1A6F3CC();
  v5 = v4;

  v2(v3, v5);

  return result;
}

void sub_1C1A0C2CC(void *a1, uint64_t a2, void *a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  sub_1C1A0BF78(a3);
  swift_unknownObjectRelease();
}

uint64_t sub_1C1A0C334()
{
  v0 = sub_1C1A6D62C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE63F80 != -1)
  {
    swift_once();
  }

  v4 = qword_1EDE63F88;
  [qword_1EDE63F88 lock];
  if (qword_1EDE63F70 != -1)
  {
    swift_once();
  }

  sub_1C1A6DD2C();
  v5 = sub_1C1A6D5EC();
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  swift_beginAccess();
  v8 = off_1EDE63F78;
  if (!*(off_1EDE63F78 + 2))
  {

    goto LABEL_9;
  }

  v9 = sub_1C1991010(v5, v7);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_9:
    swift_endAccess();
    v12 = MEMORY[0x1E69E7CC0];
    goto LABEL_10;
  }

  v12 = *(v8[7] + 8 * v9);
  swift_endAccess();

LABEL_10:
  [v4 unlock];
  return v12;
}

void sub_1C1A0C520(unint64_t a1)
{
  v2 = sub_1C1A6D62C();
  v22 = *(v2 - 8);
  v23 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v21 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v11 = v3;
    v12 = sub_1C1A6F9EC();
    v3 = v11;
    v5 = v12;
    v24 = v11;
    if (!v12)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v3;
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return;
  }

  v6 = 0;
  v7 = v3 & 0xC000000000000001;
  do
  {
    if (v7)
    {
      v8 = MEMORY[0x1C69055B0](v6);
    }

    else
    {
      v8 = *(v3 + 8 * v6 + 32);
      swift_unknownObjectRetain();
    }

    ++v6;
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1C1A0E898;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C1A0C260;
    aBlock[3] = &unk_1F4141690;
    v10 = _Block_copy(aBlock);

    [v8 registerPromotedContentUsedWithAction_];
    _Block_release(v10);
    swift_unknownObjectRelease();
    v3 = v24;
  }

  while (v5 != v6);
LABEL_10:
  v13 = v3;

  v26 = sub_1C1A0C334();
  sub_1C1A51794(v13);
  v14 = v26;
  if (qword_1EDE63F80 != -1)
  {
    swift_once();
  }

  v15 = qword_1EDE63F88;
  [qword_1EDE63F88 lock];
  if (qword_1EDE63F70 != -1)
  {
    swift_once();
  }

  v16 = v21;
  sub_1C1A6DD2C();
  v17 = sub_1C1A6D5EC();
  v19 = v18;
  (*(v22 + 8))(v16, v23);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = off_1EDE63F78;
  off_1EDE63F78 = 0x8000000000000000;
  sub_1C1A49E5C(v14, v17, v19, isUniquelyReferenced_nonNull_native);

  off_1EDE63F78 = v25;
  swift_endAccess();
  [v15 unlock];
  sub_1C1A0C8F8(v24);
}

void sub_1C1A0C88C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1C1A0E230(a1, a2);
  }
}

void sub_1C1A0C8F8(unint64_t a1)
{
  v2 = sub_1C19A9E58(&unk_1EBF050D0, &qword_1C1A74530);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v38 = &v32 - v7;
  if (a1 >> 62)
  {
LABEL_35:
    v8 = sub_1C1A6F9EC();
    if (!v8)
    {
      return;
    }
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return;
    }
  }

  v9 = 0;
  v43 = MEMORY[0x1E69E7CC0];
  v10 = a1 & 0xFFFFFFFFFFFFFF8;
  v36 = a1 & 0xFFFFFFFFFFFFFF8;
  while ((a1 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1C69055B0](v9, a1, v6);
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_13;
    }

LABEL_9:
    [v11 adType];
    v13 = sub_1C1A6DEAC();
    if (v13 == sub_1C1A6DEAC())
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1C1A6FB2C();
      sub_1C1A6FB5C();
      v10 = v36;
      sub_1C1A6FB6C();
      sub_1C1A6FB3C();
    }

    ++v9;
    if (v12 == v8)
    {
      goto LABEL_14;
    }
  }

  if (v9 >= *(v10 + 16))
  {
    __break(1u);
    goto LABEL_35;
  }

  v11 = *(a1 + 8 * v9 + 32);
  swift_unknownObjectRetain();
  v12 = v9 + 1;
  if (!__OFADD__(v9, 1))
  {
    goto LABEL_9;
  }

LABEL_13:
  __break(1u);
LABEL_14:
  v14 = v43;
  if (v43 < 0 || (v43 & 0x4000000000000000) != 0)
  {
    v31 = v43;
    v15 = sub_1C1A6F9EC();
    v14 = v31;
    if (v15)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v15 = *(v43 + 16);
    if (v15)
    {
LABEL_17:
      v16 = v14;
      v36 = sub_1C1A6F58C();
      if (v15 < 1)
      {
        __break(1u);
      }

      else
      {
        v17 = 0;
        v18 = v16;
        v33 = v16 & 0xC000000000000001;
        v34 = v15;
        v35 = v16;
        do
        {
          if (v33)
          {
            v19 = MEMORY[0x1C69055B0](v17, v18);
          }

          else
          {
            v19 = *(v18 + 8 * v17 + 32);
            swift_unknownObjectRetain();
          }

          v20 = sub_1C1A6F5AC();
          v21 = *(v20 - 8);
          v22 = v38;
          (*(v21 + 56))(v38, 1, 1, v20);
          v23 = v37;
          swift_unknownObjectRetain();
          v24 = sub_1C1A6F57C();
          v25 = swift_allocObject();
          v25[2] = v24;
          v25[3] = MEMORY[0x1E69E85E0];
          v25[4] = v23;
          v25[5] = v19;
          sub_1C1990FA8(v22, v4, &unk_1EBF050D0, &qword_1C1A74530);
          LODWORD(v24) = (*(v21 + 48))(v4, 1, v20);

          if (v24 == 1)
          {
            sub_1C1991140(v4, &unk_1EBF050D0, &qword_1C1A74530);
          }

          else
          {
            sub_1C1A6F59C();
            (*(v21 + 8))(v4, v20);
          }

          v26 = v25[2];
          swift_unknownObjectRetain();

          if (v26)
          {
            swift_getObjectType();
            v27 = sub_1C1A6F56C();
            v29 = v28;
            swift_unknownObjectRelease();
          }

          else
          {
            v27 = 0;
            v29 = 0;
          }

          sub_1C1991140(v38, &unk_1EBF050D0, &qword_1C1A74530);
          v30 = swift_allocObject();
          *(v30 + 16) = &unk_1C1A76960;
          *(v30 + 24) = v25;
          if (v29 | v27)
          {
            v39 = 0;
            v40 = 0;
            v41 = v27;
            v42 = v29;
          }

          ++v17;
          swift_task_create();
          swift_unknownObjectRelease();

          v18 = v35;
        }

        while (v34 != v17);
      }

      return;
    }
  }
}

double sub_1C1A0CDE4(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1C19A9E58(&qword_1EBF04478, &unk_1C1A77930);
  v4 = sub_1C1A6F51C();
  v5 = a1;
  sub_1C1A0C520(v4);

  return result;
}

uint64_t sub_1C1A0CE54()
{
  v1 = sub_1C1A6D62C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE63C40 != -1)
  {
    swift_once();
  }

  v5 = qword_1EDE66608;
  v23[0] = v0;
  sub_1C1A6DD2C();
  v6 = sub_1C1A6D5EC();
  v8 = v7;
  v9 = *(v2 + 8);
  v9(v4, v1);
  v10 = sub_1C1A6DCCC();
  v23[1] = v5;
  v12 = sub_1C1A3EF20(v6, v8, v10, v11);

  if (!v12)
  {
    type metadata accessor for PreloadingMetricView();
    v12 = swift_allocObject();
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0u;
  }

  v13 = sub_1C1A6DCEC();
  v14 = *(v12 + 24);
  v15 = *(v12 + 32);
  *(v12 + 24) = v13;
  *(v12 + 32) = v16;
  sub_1C19A504C(v14, v15);

  sub_1C1A6DD2C();
  v17 = sub_1C1A6D5EC();
  v19 = v18;
  v9(v4, v1);
  v20 = sub_1C1A6DCCC();
  sub_1C1A3F034(v12, v17, v19, v20, v21, 0, 0);
}

void sub_1C1A0D080(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1C1A0CE54();
}

uint64_t sub_1C1A0D0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1C1A6F58C();
  v5[4] = sub_1C1A6F57C();
  v7 = sub_1C1A6F56C();

  return MEMORY[0x1EEE6DFA0](sub_1C1A0D180, v7, v6);
}

uint64_t sub_1C1A0D180()
{
  v1 = *(v0 + 24);

  sub_1C1A0D1EC(v1);
  v2 = *(v0 + 8);

  return v2();
}

void sub_1C1A0D1EC(void *a1)
{
  v2 = v1;
  v4 = sub_1C1A6D62C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v76 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v76 - v12;
  ObjectType = swift_getObjectType();
  v86 = a1;
  v14 = [a1 bestRepresentation];
  if (v14)
  {
    goto LABEL_8;
  }

  v15 = [v86 representations];
  sub_1C19A9E58(&unk_1EBF04670, &unk_1C1A77530);
  v16 = sub_1C1A6F51C();

  if (v16 >> 62)
  {
    if (sub_1C1A6F9EC())
    {
      goto LABEL_4;
    }

LABEL_24:

    v63 = sub_1C1A6F66C();
    sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
    v64 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
    v65 = v10;
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_1C1A73CD0;
    sub_1C1A6DD2C();
    v67 = sub_1C1A6D5EC();
    v69 = v68;
    (*(v5 + 8))(v65, v4);
    v70 = MEMORY[0x1E69E6158];
    *(v66 + 56) = MEMORY[0x1E69E6158];
    v71 = sub_1C199E518();
    *(v66 + 64) = v71;
    *(v66 + 32) = v67;
    *(v66 + 40) = v69;
    v72 = [v86 identifier];
    v73 = sub_1C1A6F3CC();
    v75 = v74;

    *(v66 + 96) = v70;
    *(v66 + 104) = v71;
    *(v66 + 72) = v73;
    *(v66 + 80) = v75;
    sub_1C1A6F18C(v63, &dword_1C198D000, v64, "[PCUI] Context (%@) trying to prewarm a metricsview, but there's no representation for promoted content (%@)", 108, 2, v66);

    return;
  }

  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_24;
  }

LABEL_4:
  if ((v16 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x1C69055B0](0, v16);
  }

  else
  {
    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v14 = *(v16 + 32);
    swift_unknownObjectRetain();
  }

LABEL_8:
  v84 = v10;
  v17 = v4;
  v82 = v7;
  if (qword_1EDE63C40 != -1)
  {
    swift_once();
  }

  v18 = qword_1EDE66608;

  sub_1C1A6DD2C();
  v19 = sub_1C1A6D5EC();
  v21 = v20;
  v22 = *(v5 + 8);
  v22(v13, v17);
  v23 = sub_1C1A40BAC(v19, v21);

  if (v23)
  {
    v85 = v14;
    v81 = v23;
    [v23 lock];
    v24 = v84;
    v80 = v2;
    sub_1C1A6DD2C();
    v25 = sub_1C1A6D5EC();
    v27 = v26;
    v84 = v17;
    v79 = v22;
    v22(v24, v17);
    v28 = v86;
    v29 = [v86 identifier];
    v30 = sub_1C1A6F3CC();
    v32 = v31;

    v33 = sub_1C1A3EF20(v25, v27, v30, v32);

    if (v33)
    {
      v34 = v85;
      if (*(v33 + 16))
      {
        v35 = v81;
        [v81 unlock];

        swift_unknownObjectRelease();

        return;
      }

      v78 = v18;
    }

    else
    {
      v78 = v18;
      type metadata accessor for PreloadingMetricView();
      v33 = swift_allocObject();
      *(v33 + 16) = 0u;
      *(v33 + 32) = 0u;
      v34 = v85;
    }

    [v34 adSize];
    v37 = v36;
    v39 = v38;
    type metadata accessor for MetricsView();
    v40 = v80;
    swift_unknownObjectRetain();
    v41 = sub_1C19E3598(v40, v28, 0, 0.0, 0.0, v37, v39);

    v42 = *(v33 + 16);
    *(v33 + 16) = v41;
    v80 = v41;
    v43 = v41;

    v44 = *(v33 + 16);
    v45 = v43;
    v46 = v79;
    if (v44)
    {
      v87 = *(v33 + 16);
      swift_getKeyPath();
      swift_allocObject();
      swift_weakInit();
      v47 = v44;
      v48 = sub_1C1A6D3EC();

      v45 = *(v33 + 40);
      *(v33 + 40) = v48;
    }

    ObjectType = v43;

    v49 = v82;
    sub_1C1A6DD2C();
    v77 = sub_1C1A6D5EC();
    v51 = v50;
    v46(v49, v84);
    v52 = [v28 identifier];
    v53 = sub_1C1A6F3CC();
    v55 = v54;

    v56 = sub_1C1A6E94C();
    if (v56)
    {
      v57 = v56;
      v58 = sub_1C1A6E4CC();
      v60 = v59;
    }

    else
    {
      v58 = 0;
      v60 = 0;
    }

    sub_1C1A3F034(v33, v77, v51, v53, v55, v58, v60);

    v61 = v81;
    [v81 unlock];
    sub_1C1A078E8(v80, v28);

    swift_unknownObjectRelease();

    v62 = ObjectType;
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

double sub_1C1A0D954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1C1A6F3CC();
  sub_1C1A0E6DC(v3, v4);

  return result;
}

unint64_t sub_1C1A0D994(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_1C1A0DA3C(v3);
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

uint64_t sub_1C1A0DA3C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1C1A6F9EC();
  }

  return sub_1C1A6FB0C();
}

void sub_1C1A0DAA0(void **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [v3 frame];
    [v5 setFrame_];
  }
}

uint64_t sub_1C1A0DB38(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C19CFDE0(result, a2);
  }

  return result;
}

uint64_t sub_1C1A0DB4C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for SponsorshipAdPreviewConfiguration(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C1A0DBB0(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for SponsorshipAdPreviewConfiguration(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C1A0DC0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1C1A0DC54(void *a1, void *a2, void *a3, uint64_t a4, _BYTE *a5)
{
  v30[3] = sub_1C198FB8C(0, &qword_1EDE62708, 0x1E69DC668);
  v30[4] = &off_1F4141E80;
  v30[0] = a4;
  v10 = OBJC_IVAR___APPCPromotedContentView_dimmerView;
  type metadata accessor for DimmerView();
  *&a5[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&a5[OBJC_IVAR___APPCPromotedContentView_expandedAdTapGestureRecognizer] = 0;
  v11 = &a5[OBJC_IVAR___APPCPromotedContentView_expandedAdFrame];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v11[32] = 1;
  *&a5[OBJC_IVAR___APPCPromotedContentView_visiblePercentage] = 0;
  *&a5[OBJC_IVAR___APPCPromotedContentView_lastPerformedAction] = 0;
  a5[OBJC_IVAR___APPCPromotedContentView_shouldBlockNavigation] = 0;
  a5[OBJC_IVAR___APPCPromotedContentView_tapWasRecognized] = 0;
  *&a5[OBJC_IVAR___APPCPromotedContentView_storeProductRequester] = 0;
  *&a5[OBJC_IVAR___APPCPromotedContentView_interactionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&a5[OBJC_IVAR___APPCPromotedContentView_readiness] = 300;
  *&a5[OBJC_IVAR___APPCPromotedContentView_videoTapAction] = 0;
  v12 = OBJC_IVAR___APPCPromotedContentView_videoActionTimestamp;
  v13 = sub_1C1A6F25C();
  (*(*(v13 - 8) + 56))(&a5[v12], 1, 1, v13);
  v14 = &a5[OBJC_IVAR___APPCPromotedContentView_videoMoreLocation];
  *v14 = 0;
  *(v14 + 1) = 0;
  v14[16] = 1;
  a5[OBJC_IVAR___APPCPromotedContentView_shouldCollapseOnRotation] = 0;
  *&a5[OBJC_IVAR___APPCPromotedContentView____lazy_storage___attributionView] = 0;
  v15 = &a5[OBJC_IVAR___APPCPromotedContentView_overriddenPrivacyMarkerPosition];
  *v15 = 0;
  v15[8] = 1;
  *&a5[OBJC_IVAR___APPCPromotedContentView_promotedContent] = a1;
  if (a3)
  {
    swift_unknownObjectRetain();
    v16 = a3;
  }

  else
  {
    v17 = objc_allocWithZone(type metadata accessor for PrivacyMarker());
    swift_unknownObjectRetain();
    v16 = [v17 init];
  }

  *&a5[OBJC_IVAR___APPCPromotedContentView_privacyMarkerView] = v16;
  a5[OBJC_IVAR___APPCPromotedContentView_customPrivacyHandling] = a3 != 0;
  v18 = objc_allocWithZone(type metadata accessor for TapGestureRecognizer());
  v19 = a3;
  v20 = [v18 init];
  *&a5[OBJC_IVAR___APPCPromotedContentView_tapGestureRecognizer] = v20;
  swift_unknownObjectRetain();
  v21 = sub_1C1A6EB5C();

  *&a5[OBJC_IVAR___APPCPromotedContentView_placement] = v21;
  sub_1C19992F8(v30, &a5[OBJC_IVAR___APPCPromotedContentView_urlOpener]);
  v29.receiver = a5;
  v29.super_class = type metadata accessor for PromotedContentView(0);
  v22 = objc_msgSendSuper2(&v29, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 clearColor];
  [v24 setBackgroundColor_];

  v26 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v24) + 0x310))();
  v27 = [objc_opt_self() defaultCenter];
  [v27 addObserver:v24 selector:sel_sizeCategoryChanged_ name:*MEMORY[0x1E69DDC48] object:0];

  (*((*v26 & *v24) + 0x320))();
  sub_1C199935C(v30);
  return v24;
}

void *sub_1C1A0E0B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = objc_allocWithZone(type metadata accessor for SponsorshipAdView(0));
  *&v10[OBJC_IVAR____TtC17PromotedContentUI17SponsorshipAdView_adHeight] = 0x4049000000000000;
  *&v10[OBJC_IVAR____TtC17PromotedContentUI17SponsorshipAdView_headlineTrailingMargin] = 0x4028000000000000;
  *&v10[OBJC_IVAR____TtC17PromotedContentUI17SponsorshipAdView_minLogoHeight] = 0x4022000000000000;
  *&v10[OBJC_IVAR____TtC17PromotedContentUI17SponsorshipAdView_maxLogoHeight] = 0x403E000000000000;
  *&v10[OBJC_IVAR____TtC17PromotedContentUI17SponsorshipAdView_maxLogoWidth] = 0x4056800000000000;
  v11 = OBJC_IVAR____TtC17PromotedContentUI17SponsorshipAdView_textLabel;
  *&v10[v11] = sub_1C19F8F28();
  v12 = OBJC_IVAR____TtC17PromotedContentUI17SponsorshipAdView_imageView;
  v13 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v13 setContentMode_];
  [v13 setOpaque_];
  [v13 setAccessibilityIgnoresInvertColors_];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];

  *&v10[v12] = v13;
  v14 = &v10[OBJC_IVAR____TtC17PromotedContentUI17SponsorshipAdView_text];
  *v14 = a1;
  v14[1] = a2;
  *&v10[OBJC_IVAR____TtC17PromotedContentUI17SponsorshipAdView_image] = a3;

  return sub_1C1A0DC54(a4, 0, 0, a5, v10);
}

id sub_1C1A0E230(uint64_t a1, uint64_t a2)
{
  if (qword_1EDE63F80 != -1)
  {
LABEL_45:
    swift_once();
  }

  [qword_1EDE63F88 lock];
  if (qword_1EDE63F70 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = off_1EDE63F78 + 64;
  v33 = 1;
  v3 = 1 << *(off_1EDE63F78 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(off_1EDE63F78 + 8);
  v6 = (v3 + 63) >> 6;
  v36 = off_1EDE63F78;

  v31 = 0;
  v32 = 0;
  v38 = 0;
  v7 = 0;
  v34 = v6;
  v35 = v2;
LABEL_9:
  v8 = v7;
  if (!v5)
  {
    goto LABEL_11;
  }

  do
  {
    v7 = v8;
LABEL_14:
    v9 = __clz(__rbit64(v5)) | (v7 << 6);
    v10 = (v36[6] + 16 * v9);
    v11 = v10[1];
    v37 = *v10;
    v12 = *(v36[7] + 8 * v9);
    if (v12 >> 62)
    {
      v23 = v10[1];
      v42 = v12 & 0xFFFFFFFFFFFFFF8;
      v13 = sub_1C1A6F9EC();
      v11 = v23;
    }

    else
    {
      v42 = v12 & 0xFFFFFFFFFFFFFF8;
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 &= v5 - 1;
    v39 = v11;

    v14 = 0;
    while (v13 != v14)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1C69055B0](v14, v12);
      }

      else
      {
        if (v14 >= *(v42 + 16))
        {
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        v15 = *(v12 + 8 * v14 + 32);
        swift_unknownObjectRetain();
      }

      v16 = [v15 identifier];
      v17 = sub_1C1A6F3CC();
      v19 = v18;

      if (v17 == a1 && v19 == a2)
      {

        swift_unknownObjectRelease();
LABEL_8:

        v31 = v14;
        v32 = v37;
        v33 = 0;
        v38 = v39;
        v6 = v34;
        v2 = v35;
        goto LABEL_9;
      }

      v21 = sub_1C1A6FCEC();
      swift_unknownObjectRelease();

      if (v21)
      {
        goto LABEL_8;
      }

      if (__OFADD__(v14++, 1))
      {
        goto LABEL_43;
      }
    }

    v8 = v7;
    v6 = v34;
    v2 = v35;
  }

  while (v5);
  while (1)
  {
LABEL_11:
    v7 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_44;
    }

    if (v7 >= v6)
    {
      break;
    }

    v5 = *&v2[8 * v7];
    ++v8;
    if (v5)
    {
      goto LABEL_14;
    }
  }

  if (v33)
  {

LABEL_39:
    v26 = sub_1C1A6F65C();
    sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
    v27 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1C1A73A30;
    *(v28 + 56) = MEMORY[0x1E69E6158];
    *(v28 + 64) = sub_1C199E518();
    *(v28 + 32) = a1;
    *(v28 + 40) = a2;

    sub_1C1A6F18C(v26, &dword_1C198D000, v27, "[PC] Could not find id (%{public}@) in temp inventory when trying to remove from temp inventory", 95, 2, v28);

    goto LABEL_41;
  }

  if (!v38)
  {
    goto LABEL_39;
  }

  swift_beginAccess();
  v24 = sub_1C1A3ED48(v43, v32, v38);
  if (*v25)
  {
    sub_1C1A0D994(v31);
    (v24)(v43, 0);
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  else
  {
    (v24)(v43, 0);
    swift_endAccess();
  }

LABEL_41:

  return [v30 unlock];
}

id sub_1C1A0E6DC(uint64_t a1, uint64_t a2)
{
  if (qword_1EDE63C40 != -1)
  {
    swift_once();
  }

  v4 = *(qword_1EDE66608 + 24);
  v5 = *(v4 + 16);

  [v5 lock];
  swift_beginAccess();

  sub_1C19B57AC(0, a1, a2);
  swift_endAccess();
  [*(v4 + 16) unlock];

  if (qword_1EDE63F80 != -1)
  {
    swift_once();
  }

  v6 = qword_1EDE63F88;
  [qword_1EDE63F88 lock];
  if (qword_1EDE63F70 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = off_1EDE63F78;

  sub_1C19B5D38(0, a1, a2);
  off_1EDE63F78 = v8;

  return [v6 unlock];
}

uint64_t sub_1C1A0E8B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C19909C4;

  return sub_1C1A0D0E8(a1, v4, v5, v7, v6);
}

void sub_1C1A0E99C()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9.origin.x = v2;
  v9.origin.y = v4;
  v9.size.width = v6;
  v9.size.height = v8;
  qword_1EBF07670 = CGRectGetHeight(v9);
}

void sub_1C1A0EA28()
{
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 nativeBounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v15.origin.x = v3;
  v15.origin.y = v5;
  v15.size.width = v7;
  v15.size.height = v9;
  Width = CGRectGetWidth(v15);
  v11 = [v0 mainScreen];
  [v11 nativeScale];
  v13 = v12;

  v14 = 680.0;
  if (Width / v13 > 815.0)
  {
    v14 = 754.0;
  }

  qword_1EBF07678 = *&v14;
}

void sub_1C1A0EB20(void *a1)
{
  v1 = qword_1EDE63E78;
  v7 = a1;
  if (v1 != -1)
  {
    swift_once();
  }

  v2 = sub_1C1A6E13C();
  v4 = v3;
  v5 = sub_1C1A6E14C();
  sub_1C1A158BC(v2, v4, v5, v6 & 1);
}

uint64_t sub_1C1A0EBDC()
{
  v1 = v0;
  v2 = [v0 sourceAppAdamId];
  if (!v2)
  {
    sub_1C198FB8C(0, &qword_1EBF04870, 0x1E696AD98);
    v2 = sub_1C1A6F79C();
  }

  v3 = [v0 version];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1C1A6F3CC();
    v7 = v6;
  }

  else
  {
    v7 = 0xEF6E776F6E6B6E75;
    v5 = 0x206E6F6973726576;
  }

  sub_1C1A6FACC();
  MEMORY[0x1C6904F50](0xD000000000000010, 0x80000001C1A80210);
  v8 = [v1 appAdamId];
  v9 = [v8 description];
  v10 = sub_1C1A6F3CC();
  v12 = v11;

  MEMORY[0x1C6904F50](v10, v12);

  MEMORY[0x1C6904F50](0xD000000000000014, 0x80000001C1A80230);
  v13 = [v1 impressionId];
  v14 = sub_1C1A6F3CC();
  v16 = v15;

  MEMORY[0x1C6904F50](v14, v16);

  MEMORY[0x1C6904F50](0xD000000000000011, 0x80000001C1A80250);
  v17 = [v1 timestamp];
  v18 = [v17 description];
  v19 = sub_1C1A6F3CC();
  v21 = v20;

  MEMORY[0x1C6904F50](v19, v21);

  MEMORY[0x1C6904F50](0xD000000000000013, 0x80000001C1A80270);
  v22 = [v1 adNetworkId];
  v23 = sub_1C1A6F3CC();
  v25 = v24;

  MEMORY[0x1C6904F50](v23, v25);

  MEMORY[0x1C6904F50](0xD000000000000012, 0x80000001C1A80290);
  v26 = [v1 campaignId];
  v27 = [v26 description];
  v28 = sub_1C1A6F3CC();
  v30 = v29;

  MEMORY[0x1C6904F50](v28, v30);

  MEMORY[0x1C6904F50](0xD00000000000001CLL, 0x80000001C1A802B0);
  v31 = [v1 attributionSignature];
  v32 = sub_1C1A6F3CC();
  v34 = v33;

  MEMORY[0x1C6904F50](v32, v34);

  MEMORY[0x1C6904F50](0xD000000000000017, 0x80000001C1A802D0);
  v35 = [v2 description];
  v36 = sub_1C1A6F3CC();
  v38 = v37;

  MEMORY[0x1C6904F50](v36, v38);

  MEMORY[0x1C6904F50](0x726576202020200ALL, 0xEF203D206E6F6973);
  MEMORY[0x1C6904F50](v5, v7);

  return 0;
}

id sub_1C1A0F018(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = [a1 isValid];
  if (result)
  {
    v6 = sub_1C1A6F66C();
    sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
    v7 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1C1A73A30;
    v9 = [a2 appAdamId];
    *(v8 + 56) = sub_1C198FB8C(0, &qword_1EBF04870, 0x1E696AD98);
    *(v8 + 64) = sub_1C1A0F564();
    *(v8 + 32) = v9;
    sub_1C1A6F18C(v6, &dword_1C198D000, v7, "[PCUI][StoreKit] StoreKit took too long to record info for AdamId: %{public}@", 77, 2, v8);

    sub_1C1A6ECCC();

    v11 = MEMORY[0x1C6903230](v10);
    v13 = v12;

    if (v11)
    {
      v11(result);

      return sub_1C19A504C(v11, v13);
    }
  }

  return result;
}

uint64_t sub_1C1A0F1E0(void *a1, void *a2, void *a3, double a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v9 = a1;
    v10 = sub_1C1A6F66C();
    sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
    v11 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1C1A73CD0;
    v13 = [a2 appAdamId];
    *(v12 + 56) = sub_1C198FB8C(0, &qword_1EBF04870, 0x1E696AD98);
    *(v12 + 64) = sub_1C1A0F564();
    *(v12 + 32) = v13;
    swift_getErrorValue();
    v14 = sub_1C1A6FD4C();
    v16 = v15;
    *(v12 + 96) = MEMORY[0x1E69E6158];
    *(v12 + 104) = sub_1C199E518();
    *(v12 + 72) = v14;
    *(v12 + 80) = v16;
    sub_1C1A6F18C(v10, &dword_1C198D000, v11, "[PCUI][StoreKit] Error recording storekit info for AdamId: %{public}@, %{public}@", 81, 2, v12);

    v17 = sub_1C1A6F39C();
    v18 = sub_1C1A6F39C();
    CreateDiagnosticReport();
  }

  else
  {
    v19 = sub_1C1A6F65C();
    sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
    v20 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1C1A73A30;
    v22 = [a2 appAdamId];
    *(v21 + 56) = sub_1C198FB8C(0, &qword_1EBF04870, 0x1E696AD98);
    *(v21 + 64) = sub_1C1A0F564();
    *(v21 + 32) = v22;
    sub_1C1A6F18C(v19, &dword_1C198D000, v20, "[PCUI][StoreKit] Successfully recorded storekit info for AdamId: %{public}@", 75, 2, v21);
  }

  [a3 invalidate];
  sub_1C1A6ECCC();
  sub_1C198FB8C(0, &qword_1EDE63970, 0x1E695E000);
  result = sub_1C19CFE34();
  if ((result & 1) == 0)
  {

    v25 = MEMORY[0x1C6903230](v24);
    v27 = v26;

    if (v25)
    {
      v25(result);
      return sub_1C19A504C(v25, v27);
    }
  }

  return result;
}

unint64_t sub_1C1A0F564()
{
  result = qword_1EBF04B20;
  if (!qword_1EBF04B20)
  {
    sub_1C198FB8C(255, &qword_1EBF04870, 0x1E696AD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF04B20);
  }

  return result;
}

uint64_t sub_1C1A0F5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v64 = a5;
  v65 = a3;
  v69 = a2;
  v67 = a1;
  v9 = sub_1C1A6D62C();
  v68 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C1A6D5DC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v62 - v17;
  v66 = a4;
  if (a4 && a6)
  {
    v19 = sub_1C19E93F8();
    if (v19)
    {
      v62 = a6;
      v63 = v19;
      v20 = [v6 expirationDate];
      sub_1C1A6D59C();

      sub_1C1A6D5CC();
      v21 = sub_1C1A6D53C();
      v22 = v6;
      v23 = *(v13 + 8);
      v23(v15, v12);
      v23(v18, v12);
      if ((v21 & 1) == 0)
      {
        v35 = sub_1C1A6F64C();
        sub_1C199E4CC();
        v36 = sub_1C1A6F8EC();
        sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_1C1A73A30;
        v38 = [v22 identifier];
        v39 = sub_1C1A6F3CC();
        v41 = v40;

        *(v37 + 56) = MEMORY[0x1E69E6158];
        *(v37 + 64) = sub_1C199E518();
        *(v37 + 32) = v39;
        *(v37 + 40) = v41;
        sub_1C1A6F18C(v35, &dword_1C198D000, v36, "[PCUI] Expired content (%{public}@)", 35, 2, v37);

        return 1;
      }

      v24 = v63;
      sub_1C1A6E7DC();
      v25 = sub_1C1A6D5EC();
      v27 = v26;
      (*(v68 + 8))(v11, v9);
      if (v69)
      {
        if (v25 == v67 && v27 == v69)
        {

          v30 = v62;
          goto LABEL_20;
        }

        v29 = sub_1C1A6FCEC();

        v30 = v62;
        if (v29)
        {
LABEL_20:
          v49 = sub_1C1A6E75C();
          if (v50)
          {
            if (v49 == v65 && v50 == v66)
            {

LABEL_25:
              v52 = sub_1C1A6E7AC();
              if (v53)
              {
                if (v52 == v64 && v53 == v30)
                {

                  return 0;
                }

                v54 = sub_1C1A6FCEC();

                if (v54)
                {

                  return 0;
                }
              }

              goto LABEL_31;
            }

            v51 = sub_1C1A6FCEC();

            if (v51)
            {
              goto LABEL_25;
            }
          }

LABEL_31:
          v55 = sub_1C1A6F64C();
          sub_1C199E4CC();
          v56 = sub_1C1A6F8EC();
          sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
          v57 = swift_allocObject();
          *(v57 + 16) = xmmword_1C1A73A30;
          v58 = [v22 identifier];
          v59 = sub_1C1A6F3CC();
          v61 = v60;

          *(v57 + 56) = MEMORY[0x1E69E6158];
          *(v57 + 64) = sub_1C199E518();
          *(v57 + 32) = v59;
          *(v57 + 40) = v61;
          sub_1C1A6F18C(v55, &dword_1C198D000, v56, "[PCUI] Storefront changed content (%{public}@)", 46, 2, v57);

          return 3;
        }
      }

      else
      {
      }

      v42 = sub_1C1A6F64C();
      sub_1C199E4CC();
      v43 = sub_1C1A6F8EC();
      sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_1C1A73A30;
      v45 = [v22 identifier];
      v46 = sub_1C1A6F3CC();
      v48 = v47;

      *(v44 + 56) = MEMORY[0x1E69E6158];
      *(v44 + 64) = sub_1C199E518();
      *(v44 + 32) = v46;
      *(v44 + 40) = v48;
      sub_1C1A6F18C(v42, &dword_1C198D000, v43, "[PCUI] User changed content (%{public}@)", 40, 2, v44);

      return 2;
    }

    v33 = sub_1C1A6F66C();
    sub_1C199E4CC();
    v32 = sub_1C1A6F8EC();
    sub_1C1A6F18C(v33, &dword_1C198D000, v32, "[PCUI] Content validation failed, missing a representation", 58, 2, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v31 = sub_1C1A6F66C();
    sub_1C199E4CC();
    v32 = sub_1C1A6F8EC();
    sub_1C1A6F18C(v31, &dword_1C198D000, v32, "[PCUI] Content validation failed, storeFront or storeFrontLocale is nil.", 72, 2, MEMORY[0x1E69E7CC0]);
  }

  return 4;
}

uint64_t sub_1C1A0FD20(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = *&a1 * 100.0;
    if (a2)
    {
      v8 = 0.0;
    }

    v9 = ceil(v8);
    if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v9 > -9.22337204e18)
    {
      if (v9 < 9.22337204e18)
      {
        v10 = result;
        result = a4(v9);
        v11 = *(v10 + 32);
        v12 = __OFSUB__(v11, 1);
        v13 = v11 - 1;
        if (!v12)
        {
          *(v10 + 32) = v13;
        }

LABEL_13:
        __break(1u);
        return result;
      }

LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1C1A0FE18()
{

  return swift_deallocClassInstance();
}

void sub_1C1A0FE50(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v55.size.height = a4;
  v55.origin.y = a2;
  v55.origin.x = a1;
  v40.origin.x = a5;
  v40.origin.y = a6;
  v32 = a6;
  v40.size.width = a7;
  v40.size.height = a8;
  v55.size.width = a3;
  v38 = a3;
  v41 = CGRectUnion(v40, v55);
  x = v41.origin.x;
  y = v41.origin.y;
  rect_16 = v41.origin.y;
  width = v41.size.width;
  height = v41.size.height;
  v41.origin.x = a5;
  v41.origin.y = a6;
  v41.size.width = a7;
  v41.size.height = a8;
  MaxY = CGRectGetMaxY(v41);
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  v17 = MaxY - CGRectGetMaxY(v42);
  v43.origin.x = a1;
  v43.origin.y = a2;
  v43.size.width = a3;
  v43.size.height = a4;
  v18 = CGRectGetHeight(v43);
  if (v17 >= 0.0)
  {
    v19 = v18;
  }

  else
  {
    v19 = v18 + v17;
  }

  v44.origin.x = x;
  v44.origin.y = rect_16;
  v44.size.width = width;
  v44.size.height = height;
  MinY = CGRectGetMinY(v44);
  v45.origin.x = a5;
  v45.origin.y = v32;
  v45.size.width = a7;
  v45.size.height = a8;
  v21 = MinY - CGRectGetMinY(v45);
  if (v21 >= 0.0)
  {
    v22 = v19;
  }

  else
  {
    v22 = v19 + v21;
  }

  v30 = v22;
  v46.origin.x = a1;
  v46.origin.y = a2;
  v46.size.width = v38;
  v46.size.height = a4;
  v23 = CGRectGetWidth(v46);
  v47.origin.x = x;
  v47.size.height = height;
  v47.origin.y = rect_16;
  v47.size.width = width;
  MinX = CGRectGetMinX(v47);
  v48.origin.x = a5;
  v48.origin.y = v32;
  v48.size.width = a7;
  v48.size.height = a8;
  v25 = MinX - CGRectGetMinX(v48);
  if (v25 >= 0.0)
  {
    v26 = v23;
  }

  else
  {
    v26 = v23 + v25;
  }

  v49.origin.x = a5;
  v49.origin.y = v32;
  v49.size.width = a7;
  v49.size.height = a8;
  MaxX = CGRectGetMaxX(v49);
  v50.origin.x = x;
  v50.origin.y = rect_16;
  v50.size.width = width;
  v50.size.height = height;
  v28 = MaxX - CGRectGetMaxX(v50);
  if (v28 < 0.0)
  {
    v26 = v26 + v28;
  }

  v51.origin.x = a1;
  v51.origin.y = a2;
  v51.size.width = v38;
  v51.size.height = a4;
  v29 = CGRectGetWidth(v51);
  v52.origin.x = a1;
  v52.origin.y = a2;
  v52.size.width = v38;
  v52.size.height = a4;
  if (v29 * CGRectGetHeight(v52) != 0.0 && v30 >= 0.0 && v26 >= 0.0)
  {
    v53.origin.x = a1;
    v53.origin.y = a2;
    v53.size.width = v38;
    v53.size.height = a4;
    CGRectGetWidth(v53);
    v54.origin.x = a1;
    v54.origin.y = a2;
    v54.size.width = v38;
    v54.size.height = a4;
    CGRectGetHeight(v54);
  }
}

void sub_1C1A100D0()
{
  v1 = OBJC_IVAR____TtC17PromotedContentUI14ImpressionSent_alreadySent;
  if ((*(v0 + OBJC_IVAR____TtC17PromotedContentUI14ImpressionSent_alreadySent) & 1) == 0)
  {
    v2 = [v0 superview];
    if (v2)
    {
      v3 = v2;
      *(v0 + v1) = 1;
      [v0 setTranslatesAutoresizingMaskIntoConstraints_];
      v4 = objc_opt_self();
      sub_1C19A9E58(&qword_1EBF03E88, &qword_1C1A74730);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1C1A74A20;
      v6 = [v0 heightAnchor];
      v7 = [v6 constraintEqualToConstant_];

      *(v5 + 32) = v7;
      v8 = [v0 widthAnchor];
      v9 = [v8 constraintEqualToConstant_];

      *(v5 + 40) = v9;
      v10 = [v0 trailingAnchor];
      v11 = [v3 trailingAnchor];
      v12 = [v10 constraintEqualToAnchor_];

      *(v5 + 48) = v12;
      v13 = [v0 bottomAnchor];
      v14 = [v3 bottomAnchor];
      v15 = [v13 constraintEqualToAnchor_];

      *(v5 + 56) = v15;
      sub_1C19C2864();
      v16 = sub_1C1A6F50C();

      [v4 activateConstraints_];

      v17 = [v0 layer];
      [v17 setCornerRadius_];

      v18 = [objc_opt_self() redColor];
      [v0 setBackgroundColor_];
    }
  }
}

id sub_1C1A10434()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImpressionSent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C1A10468(uint64_t a1)
{
  v31 = sub_1C1A6D27C();
  v3 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (v6)
  {
    v29 = v5;
    v24 = v1;
    v34 = MEMORY[0x1E69E7CC0];
    sub_1C19AA328(0, v6, 0);
    v7 = v34;
    v8 = a1 + 64;
    v9 = sub_1C1A6F95C();
    v10 = 0;
    v33 = *(a1 + 36);
    v27 = a1 + 64;
    v28 = v3 + 32;
    v25 = a1 + 72;
    v26 = v6;
    v30 = v3;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v12 = v9 >> 6;
      if ((*(v8 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_23;
      }

      if (v33 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v32 = v10;
      v13 = a1;

      v14 = v29;
      sub_1C1A6D26C();

      v34 = v7;
      v16 = *(v7 + 16);
      v15 = *(v7 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1C19AA328((v15 > 1), v16 + 1, 1);
        v7 = v34;
      }

      *(v7 + 16) = v16 + 1;
      (*(v30 + 32))(v7 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v16, v14, v31);
      v11 = 1 << *(v13 + 32);
      if (v9 >= v11)
      {
        goto LABEL_25;
      }

      v8 = v27;
      v17 = *(v27 + 8 * v12);
      if ((v17 & (1 << v9)) == 0)
      {
        goto LABEL_26;
      }

      a1 = v13;
      if (v33 != *(v13 + 36))
      {
        goto LABEL_27;
      }

      v18 = v17 & (-2 << (v9 & 0x3F));
      if (v18)
      {
        v11 = __clz(__rbit64(v18)) | v9 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v12 << 6;
        v20 = v12 + 1;
        v21 = (v25 + 8 * v12);
        while (v20 < (v11 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            sub_1C19B07E4(v9, v33, 0);
            v11 = __clz(__rbit64(v22)) + v19;
            goto LABEL_20;
          }
        }

        sub_1C19B07E4(v9, v33, 0);
LABEL_20:
        a1 = v13;
      }

      v10 = v32 + 1;
      v9 = v11;
      if (v32 + 1 == v26)
      {
        return;
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
}

void sub_1C1A10A30()
{
  v1 = v0;
  v2 = [v0 superview];
  if (!v2)
  {
    goto LABEL_13;
  }

  v3 = v2;
  type metadata accessor for MetricsView();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = v4;
  if ([v4 ready])
  {
    goto LABEL_12;
  }

  v6 = OBJC_IVAR___APPCPromotedContentView_promotedContent;
  if (![*&v0[OBJC_IVAR___APPCPromotedContentView_promotedContent] bestRepresentation])
  {
    goto LABEL_12;
  }

  sub_1C1A6E33C();
  if (!swift_dynamicCastClass())
  {

    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v7 = sub_1C1A6E2EC();
  swift_unknownObjectRelease();
  if (!v7)
  {
LABEL_12:

LABEL_13:
    v20 = sub_1C1A6F66C();
    sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
    v21 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1C1A73A30;
    v23 = [*&v1[OBJC_IVAR___APPCPromotedContentView_promotedContent] identifier];
    v24 = sub_1C1A6F3CC();
    v26 = v25;

    *(v22 + 56) = MEMORY[0x1E69E6158];
    *(v22 + 64) = sub_1C199E518();
    *(v22 + 32) = v24;
    *(v22 + 40) = v26;
    sub_1C1A6F18C(v20, &dword_1C198D000, v21, "[PCUI] Could not continue markReadyIfNeeded for identifier=%@.", 62, 2, v22);

    goto LABEL_14;
  }

  v8 = sub_1C1A3A138();
  [v8 intrinsicContentSize];
  v10 = v9;

  if (v10 > 0.0)
  {
    v11 = [*&v1[v6] bestRepresentation];
    if (v11 && ([v11 adSize], v13 = v12, swift_unknownObjectRelease(), v10 <= v13))
    {
      [*&v1[OBJC_IVAR____TtC17PromotedContentUI9AppAdView____lazy_storage___appView] layoutIfNeeded];
      [v1 layoutIfNeeded];
      v76 = v5;
      [v5 layoutIfNeeded];
      v75 = sub_1C1A6F64C();
      sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
      v74 = sub_1C1A6F8EC();
      sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_1C1A74920;
      v44 = sub_1C1A6F77C();
      v46 = v45;
      *(v43 + 56) = MEMORY[0x1E69E6158];
      v47 = sub_1C199E518();
      *(v43 + 64) = v47;
      *(v43 + 32) = v44;
      *(v43 + 40) = v46;
      v73 = sub_1C198FB8C(0, &qword_1EBF04870, 0x1E696AD98);
      *(v43 + 96) = v73;
      v48 = sub_1C1A0F564();
      *(v43 + 104) = v48;
      *(v43 + 72) = v7;
      v49 = *&v1[v6];
      v72 = v7;
      v50 = [v49 identifier];
      v51 = sub_1C1A6F3CC();
      v53 = v52;

      *(v43 + 136) = MEMORY[0x1E69E6158];
      *(v43 + 144) = v47;
      *(v43 + 112) = v51;
      *(v43 + 120) = v53;
      sub_1C1A6F18C(v75, &dword_1C198D000, v74, "[PCUI] ASCAdLockupView's size=%@ for adamId=%@ and identifier=%@.", 65, 2, v43);

      v54 = sub_1C1A6F64C();
      v55 = sub_1C1A6F8EC();
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_1C1A73CD0;
      *(v56 + 56) = v73;
      *(v56 + 64) = v48;
      *(v56 + 32) = v72;
      v57 = *&v1[v6];
      v81 = v72;
      v58 = [v57 identifier];
      v59 = sub_1C1A6F3CC();
      v61 = v60;

      *(v56 + 96) = MEMORY[0x1E69E6158];
      *(v56 + 104) = v47;
      *(v56 + 72) = v59;
      *(v56 + 80) = v61;
      sub_1C1A6F18C(v54, &dword_1C198D000, v55, "[PCUI] Setting ready state for NAAN ad, with adamId=%@ and identifier=%@.", 73, 2, v56);

      [v1 setReadiness_];
      [v76 setReady_];
    }

    else
    {
      v79 = v7;
      v78 = sub_1C1A6F66C();
      sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
      v77 = sub_1C1A6F8EC();
      sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1C1A74AF0;
      v15 = sub_1C1A6F77C();
      v17 = v16;
      *(v14 + 56) = MEMORY[0x1E69E6158];
      v18 = sub_1C199E518();
      *(v14 + 64) = v18;
      *(v14 + 32) = v15;
      *(v14 + 40) = v17;
      v19 = [*&v1[v6] bestRepresentation];
      if (v19)
      {
        [v19 adSize];
        swift_unknownObjectRelease();
      }

      v62 = sub_1C1A6F77C();
      v63 = MEMORY[0x1E69E6158];
      *(v14 + 96) = MEMORY[0x1E69E6158];
      *(v14 + 104) = v18;
      *(v14 + 72) = v62;
      *(v14 + 80) = v64;
      *(v14 + 136) = sub_1C198FB8C(0, &qword_1EBF04870, 0x1E696AD98);
      *(v14 + 144) = sub_1C1A0F564();
      *(v14 + 112) = v79;
      v65 = *&v1[v6];
      v82 = v79;
      v66 = [v65 identifier];
      v67 = sub_1C1A6F3CC();
      v69 = v68;

      *(v14 + 176) = v63;
      *(v14 + 184) = v18;
      *(v14 + 152) = v67;
      *(v14 + 160) = v69;
      sub_1C1A6F18C(v78, &dword_1C198D000, v77, "[PCUI size=%@ is larger than the available width %@ for adamId=%@ and identifier=%@.", 84, 2, v14);

      [objc_msgSend(*&v1[v6] metricsHelper)];
      swift_unknownObjectRelease();
      [v5 setReady_];
      v70 = [v5 promotedContentInfo];
      if (v70)
      {
        v71 = v70;
        [v70 setUnfilledReason_];
      }

      [objc_msgSend(*&v1[v6] metricsHelper)];

      swift_unknownObjectRelease();
    }

    return;
  }

  v80 = sub_1C1A6F66C();
  sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
  v27 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1C1A74AF0;
  v29 = sub_1C1A6F77C();
  v30 = v7;
  v32 = v31;
  v33 = MEMORY[0x1E69E6158];
  *(v28 + 56) = MEMORY[0x1E69E6158];
  v34 = sub_1C199E518();
  *(v28 + 64) = v34;
  *(v28 + 32) = v29;
  *(v28 + 40) = v32;
  [v1 frame];
  v35 = sub_1C1A6F77C();
  *(v28 + 96) = v33;
  *(v28 + 104) = v34;
  *(v28 + 72) = v35;
  *(v28 + 80) = v36;
  *(v28 + 136) = sub_1C198FB8C(0, &qword_1EBF04870, 0x1E696AD98);
  *(v28 + 144) = sub_1C1A0F564();
  *(v28 + 112) = v30;
  v37 = *&v1[v6];
  v38 = v30;
  v39 = [v37 identifier];
  v40 = sub_1C1A6F3CC();
  v42 = v41;

  *(v28 + 176) = v33;
  *(v28 + 184) = v34;
  *(v28 + 152) = v40;
  *(v28 + 160) = v42;
  sub_1C1A6F18C(v80, &dword_1C198D000, v27, "[PCUI] ASCAdLockupView size=%@ and contentView size=%@ is invalid for adamId=%@ and identifier=%@.", 98, 2, v28);

LABEL_14:
}

uint64_t sub_1C1A114B8(uint64_t a1)
{
  v2 = sub_1C1A3A138();
  v3 = [v2 lockup];

  if (v3 && (v4 = [v3 offer], v3, v4))
  {
    v5 = [v4 flags];
    swift_unknownObjectRelease();
    v6 = (v5 >> 2) & 1;
  }

  else
  {
    LODWORD(v6) = 0;
  }

  v7 = OBJC_IVAR____TtC17PromotedContentUI9AppAdView____lazy_storage___appView;
  v8 = [*(v1 + OBJC_IVAR____TtC17PromotedContentUI9AppAdView____lazy_storage___appView) lockup];
  if (v8 && (v9 = v8, v10 = [v8 offer], v9, v10))
  {
    v11 = [v10 flags];
    swift_unknownObjectRelease();
    v12 = (v11 >> 8) & 1;
  }

  else
  {
    LODWORD(v12) = 1;
  }

  v13 = [*(v1 + v7) lockup];
  if (!v13 || (v14 = v13, v15 = [v13 offer], v14, !v15))
  {
    if (!v6)
    {
LABEL_19:
      if (v12)
      {
        return 10;
      }

      return 11;
    }

    if ((v12 & 1) == 0)
    {
      return 11;
    }

    return 12;
  }

  v16 = [v15 flags];
  swift_unknownObjectRelease();
  if (v6 & v12)
  {
    return 12;
  }

  if ((v16 & 8) == 0)
  {
    goto LABEL_19;
  }

  if (v12)
  {
    return 13;
  }

  else
  {
    return 14;
  }
}

uint64_t AppAdView.adLockupView(_:preprocessOffer:inState:completionBlock:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t), uint64_t a5)
{
  v7 = sub_1C1A6F3CC();
  v9 = v8;
  if (v7 == sub_1C1A6F3CC() && v9 == v10)
  {
  }

  else
  {
    v12 = sub_1C1A6FCEC();

    if ((v12 & 1) == 0)
    {
      v13 = MEMORY[0x1E69E6158];
      goto LABEL_9;
    }
  }

  v30 = sub_1C1A6F64C();
  sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
  v14 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1C1A73A30;
  v16 = [*&v32[OBJC_IVAR___APPCPromotedContentView_promotedContent] identifier];
  v17 = sub_1C1A6F3CC();
  v19 = v18;

  v13 = MEMORY[0x1E69E6158];
  *(v15 + 56) = MEMORY[0x1E69E6158];
  *(v15 + 64) = sub_1C199E518();
  *(v15 + 32) = v17;
  *(v15 + 40) = v19;
  sub_1C1A6F18C(v30, &dword_1C198D000, v14, "[PCUI] State is openable for preprocessing for identifier:%@", 60, 2, v15);

  a4(v20);
LABEL_9:
  v21 = sub_1C1A6F64C();
  sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
  v22 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1C1A73A30;
  v24 = [*&v32[OBJC_IVAR___APPCPromotedContentView_promotedContent] identifier];
  v25 = sub_1C1A6F3CC();
  v27 = v26;

  *(v23 + 56) = v13;
  *(v23 + 64) = sub_1C199E518();
  *(v23 + 32) = v25;
  *(v23 + 40) = v27;
  sub_1C1A6F18C(v21, &dword_1C198D000, v22, "[PCUI] SKAdNetwork for preprocessing for identifier:%@", 54, 2, v23);

  v28 = a3;

  sub_1C1A13854(v32, v28, a4, a5);
}

id sub_1C1A11B8C(uint64_t a1)
{
  v2 = v1;
  v36 = sub_1C1A6F64C();
  sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
  v3 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C1A73A30;
  v38 = OBJC_IVAR___APPCPromotedContentView_promotedContent;
  v5 = [*(v2 + OBJC_IVAR___APPCPromotedContentView_promotedContent) identifier];
  v6 = sub_1C1A6F3CC();
  v8 = v7;

  *(v4 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1C199E518();
  *(v4 + 64) = v9;
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  sub_1C1A6F18C(v36, &dword_1C198D000, v3, "[PCUI] Setting metadata parameters for identifier:%@", 52, 2, v4);

  v10 = sub_1C1A120FC();
  if (v11)
  {
    v12 = v10;
    v13 = v11;
    v37 = sub_1C1A6F64C();
    v14 = sub_1C1A6F8EC();
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1C1A73CD0;
    v16 = MEMORY[0x1E69E6158];
    *(v15 + 56) = MEMORY[0x1E69E6158];
    *(v15 + 64) = v9;
    *(v15 + 32) = v12;
    *(v15 + 40) = v13;
    v17 = *(v2 + v38);

    v18 = [v17 identifier];
    v19 = sub_1C1A6F3CC();
    v21 = v20;

    *(v15 + 96) = v16;
    *(v15 + 104) = v9;
    *(v15 + 72) = v19;
    *(v15 + 80) = v21;
    sub_1C1A6F18C(v37, &dword_1C198D000, v14, "[PCUI] Params being passed in:%@ for identifier:%@", 50, 2, v15);

    sub_1C19A9E58(&qword_1EBF04858, &qword_1C1A76A40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1A73A30;
    *(inited + 32) = sub_1C1A6F3CC();
    *(inited + 40) = v23;
    *(inited + 48) = v12;
    *(inited + 56) = v13;
    sub_1C19B7074(inited);
    swift_setDeallocating();
    sub_1C1A153F4(inited + 32);
    v24 = objc_allocWithZone(MEMORY[0x1E698B3D8]);
    v25 = sub_1C1A6F2FC();

    v26 = [v24 initWithFields_];

    return v26;
  }

  else
  {
    v28 = sub_1C1A6F66C();
    v29 = sub_1C1A6F8EC();
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1C1A73A30;
    v31 = [*(v2 + v38) identifier];
    v32 = sub_1C1A6F3CC();
    v34 = v33;

    *(v30 + 56) = MEMORY[0x1E69E6158];
    *(v30 + 64) = v9;
    *(v30 + 32) = v32;
    *(v30 + 40) = v34;
    sub_1C1A6F18C(v28, &dword_1C198D000, v29, "[PCUI] Metadata parameters was not set for identifier:%@", 56, 2, v30);

    v35 = objc_allocWithZone(MEMORY[0x1E698B3D8]);

    return [v35 init];
  }
}

id AppAdView.metricsActivity(for:toPerformActionOf:inState:)()
{
  [objc_msgSend(*(v0 + OBJC_IVAR___APPCPromotedContentView_promotedContent) metricsHelper)];
  v1 = swift_unknownObjectRelease();

  return sub_1C1A11B8C(v1);
}

id sub_1C1A120FC()
{
  v1 = sub_1C1A6D2BC();
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x1EEE9AC00](v1).n128_u64[0];
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*(v0 + OBJC_IVAR___APPCPromotedContentView_promotedContent) bestRepresentation];
  if (result)
  {
    v7 = [result tapAction];
    swift_unknownObjectRelease();
    if (v7)
    {
      sub_1C1A6DF1C();
      if (swift_dynamicCastClass())
      {
        sub_1C1A6D2AC();
        v8 = sub_1C1A6DF0C();
        sub_1C1A10468(v8);

        sub_1C1A6D28C();
        v9 = sub_1C1A6D29C();

        (*(v2 + 8))(v5, v1);
        return v9;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1C1A12284(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void, __n128))
{
  if (a1)
  {
    v30 = sub_1C1A6F66C();
    sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
    v7 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1C1A74920;
    v9 = [a2 adamId];
    v10 = MEMORY[0x1E69E7738];
    *(v8 + 56) = MEMORY[0x1E69E76D8];
    *(v8 + 64) = v10;
    *(v8 + 32) = v9;
    v11 = [*(a3 + OBJC_IVAR___APPCPromotedContentView_promotedContent) identifier];
    v12 = sub_1C1A6F3CC();
    v14 = v13;

    v15 = a4;
    v16 = MEMORY[0x1E69E6158];
    *(v8 + 96) = MEMORY[0x1E69E6158];
    v17 = sub_1C199E518();
    *(v8 + 104) = v17;
    *(v8 + 72) = v12;
    *(v8 + 80) = v14;
    swift_getErrorValue();
    v18 = sub_1C1A6FD4C();
    *(v8 + 136) = v16;
    *(v8 + 144) = v17;
    *(v8 + 112) = v18;
    *(v8 + 120) = v19;
    sub_1C1A6F18C(v30, &dword_1C198D000, v7, "[PCUI] Error recording storekit info for adamId:%ld, identifier:%@, %@", 70, 2, v8);

    return v15(0);
  }

  else
  {
    v21 = sub_1C1A6F64C();
    sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
    v22 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1C1A73CD0;
    v24 = [a2 adamId];
    v25 = MEMORY[0x1E69E7738];
    *(v23 + 56) = MEMORY[0x1E69E76D8];
    *(v23 + 64) = v25;
    *(v23 + 32) = v24;
    v26 = [*(a3 + OBJC_IVAR___APPCPromotedContentView_promotedContent) identifier];
    v27 = sub_1C1A6F3CC();
    v29 = v28;

    *(v23 + 96) = MEMORY[0x1E69E6158];
    *(v23 + 104) = sub_1C199E518();
    *(v23 + 72) = v27;
    *(v23 + 80) = v29;
    sub_1C1A6F18C(v21, &dword_1C198D000, v22, "[PCUI] Successfully sent SKAdNetwork data for adamId:%ld and identifier:%@", 74, 2, v23);

    return (a4)(1);
  }
}

void sub_1C1A12588(uint64_t (*a1)(uint64_t), const char *a2, uint64_t a3)
{
  v7 = v3;
  v8 = OBJC_IVAR___APPCPromotedContentView_promotedContent;
  if ([*(v3 + OBJC_IVAR___APPCPromotedContentView_promotedContent) bestRepresentation])
  {
    sub_1C1A6E33C();
    if (swift_dynamicCastClass())
    {
      v9 = sub_1C1A6E2EC();
      v10 = swift_unknownObjectRelease();
      if (v9)
      {
        v11 = a1(v10);
        sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
        v12 = sub_1C1A6F8EC();
        sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_1C1A73CD0;
        *(v13 + 56) = sub_1C198FB8C(0, &qword_1EBF04870, 0x1E696AD98);
        *(v13 + 64) = sub_1C1A0F564();
        *(v13 + 32) = v9;
        v14 = *(v7 + v8);
        v15 = v9;
        v16 = [v14 identifier];
        v17 = sub_1C1A6F3CC();
        v19 = v18;

        *(v13 + 96) = MEMORY[0x1E69E6158];
        *(v13 + 104) = sub_1C199E518();
        *(v13 + 72) = v17;
        *(v13 + 80) = v19;
        sub_1C1A6F18C(v11, &dword_1C198D000, v12, a2, a3, 2, v13);
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

void _s17PromotedContentUI9AppAdViewC08adLockupF16DidFinishRequestyySo05ASCAdhF0CF_0()
{
  v1 = v0;
  v2 = OBJC_IVAR___APPCPromotedContentView_promotedContent;
  if ([*(v0 + OBJC_IVAR___APPCPromotedContentView_promotedContent) bestRepresentation])
  {
    sub_1C1A6E33C();
    if (swift_dynamicCastClass())
    {
      v3 = sub_1C1A6E2EC();
      swift_unknownObjectRelease();
      if (v3)
      {
        v4 = sub_1C1A6F64C();
        sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
        v5 = sub_1C1A6F8EC();
        sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_1C1A73CD0;
        *(v6 + 56) = sub_1C198FB8C(0, &qword_1EBF04870, 0x1E696AD98);
        *(v6 + 64) = sub_1C1A0F564();
        *(v6 + 32) = v3;
        v7 = *(v1 + v2);
        v12 = v3;
        v8 = [v7 identifier];
        v9 = sub_1C1A6F3CC();
        v11 = v10;

        *(v6 + 96) = MEMORY[0x1E69E6158];
        *(v6 + 104) = sub_1C199E518();
        *(v6 + 72) = v9;
        *(v6 + 80) = v11;
        sub_1C1A6F18C(v4, &dword_1C198D000, v5, "[PCUI] Loaded ASCAdLockupView request data, for adamId=%@ and identifier=%@.", 76, 2, v6);

        sub_1C1A10A30();
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

double sub_1C1A12A08(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1C1A6F66C();
  sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
  v4 = sub_1C1A6F8EC();
  sub_1C1A6F18C(v3, &dword_1C198D000, v4, "[PCUI] Could not load ASCAdLockupView request data", 50, 2, MEMORY[0x1E69E7CC0]);

  v5 = sub_1C1A6F66C();
  v6 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C1A73CD0;
  swift_getErrorValue();
  v8 = sub_1C1A6FD4C();
  v10 = v9;
  v11 = MEMORY[0x1E69E6158];
  *(v7 + 56) = MEMORY[0x1E69E6158];
  v12 = sub_1C199E518();
  *(v7 + 64) = v12;
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  v13 = OBJC_IVAR___APPCPromotedContentView_promotedContent;
  v14 = [*&v2[OBJC_IVAR___APPCPromotedContentView_promotedContent] identifier];
  v15 = sub_1C1A6F3CC();
  v17 = v16;

  *(v7 + 96) = v11;
  *(v7 + 104) = v12;
  *(v7 + 72) = v15;
  *(v7 + 80) = v17;
  sub_1C1A6F18C(v5, &dword_1C198D000, v6, "[PCUI] Error with ASCLockupRequest=%@ and identifier=%@.", 56, 2, v7);

  v18 = [v2 superview];
  if (v18)
  {
    v19 = v18;
    type metadata accessor for MetricsView();
    v20 = swift_dynamicCastClass();
    if (v20)
    {
      [objc_msgSend(*(v20 + OBJC_IVAR___APPCMetricsView_promotedContent) metricsHelper)];

      swift_unknownObjectRelease();
      return result;
    }
  }

  v22 = sub_1C1A6F66C();
  v23 = sub_1C1A6F8EC();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1C1A73A30;
  v25 = [*&v2[v13] identifier];
  v26 = sub_1C1A6F3CC();
  v28 = v27;

  *(v24 + 56) = MEMORY[0x1E69E6158];
  *(v24 + 64) = v12;
  *(v24 + 32) = v26;
  *(v24 + 40) = v28;
  sub_1C1A6F18C(v22, &dword_1C198D000, v23, "[PCUI] Could not continue didFailRequestWithError for identifier=%@.", 68, 2, v24);

  return result;
}

double sub_1C1A12D40(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1C1A6F3CC();
  v5 = v4;
  if (v3 == sub_1C1A6F3CC() && v5 == v6)
  {

    v9 = 40;
    goto LABEL_20;
  }

  v8 = sub_1C1A6FCEC();

  if (v8)
  {
    v9 = 40;
    goto LABEL_20;
  }

  v10 = sub_1C1A6F3CC();
  v12 = v11;
  if (v10 == sub_1C1A6F3CC() && v12 == v13)
  {

LABEL_17:
    v21 = sub_1C1A6F64C();
    sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
    v22 = sub_1C1A6F8EC();
    sub_1C1A6F18C(v21, &dword_1C198D000, v22, "[PCUI] ASC passed an unknown state as buyable.", 46, 2, MEMORY[0x1E69E7CC0]);

    v20 = [objc_opt_self() isAppleInternalInstall];
    if (v20)
    {
      v23 = sub_1C1A6F39C();
      APSimulateCrash();
    }

    goto LABEL_19;
  }

  v15 = sub_1C1A6FCEC();

  if (v15)
  {
    goto LABEL_17;
  }

  v16 = sub_1C1A6F3CC();
  v18 = v17;
  if (v16 == sub_1C1A6F3CC() && v18 == v19)
  {

LABEL_19:
    v9 = sub_1C1A114B8(v20);
    goto LABEL_20;
  }

  v27 = sub_1C1A6FCEC();

  if (v27)
  {
    goto LABEL_19;
  }

  v28 = sub_1C1A6F3CC();
  v30 = v29;
  if (v28 == sub_1C1A6F3CC() && v30 == v31)
  {

    v9 = 20;
  }

  else
  {
    v32 = sub_1C1A6FCEC();

    if (v32)
    {
      v9 = 20;
    }

    else
    {
      v33 = sub_1C1A6F3CC();
      v35 = v34;
      if (v33 == sub_1C1A6F3CC() && v35 == v36)
      {
      }

      else
      {
        v37 = sub_1C1A6FCEC();

        if ((v37 & 1) == 0)
        {
          return result;
        }
      }

      v9 = 30;
    }
  }

LABEL_20:
  v24 = sub_1C1A6F64C();
  sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
  v25 = sub_1C1A6F8EC();
  sub_1C1A6F18C(v24, &dword_1C198D000, v25, "[PCUI] Sending metric for getApp.", 33, 2, MEMORY[0x1E69E7CC0]);

  [objc_msgSend(*(v2 + OBJC_IVAR___APPCPromotedContentView_promotedContent) metricsHelper)];

  swift_unknownObjectRelease();
  return result;
}

void _s17PromotedContentUI9AppAdViewC08adLockupf9DidSelectE6MarkeryySo05ASCAdhF0CF_0()
{
  v1 = v0;
  v2 = OBJC_IVAR___APPCPromotedContentView_promotedContent;
  if (![*(v0 + OBJC_IVAR___APPCPromotedContentView_promotedContent) bestRepresentation])
  {
    goto LABEL_10;
  }

  sub_1C1A6E33C();
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v3 = sub_1C1A6E2EC();
  swift_unknownObjectRelease();
  if (!v3)
  {
LABEL_10:
    v26 = sub_1C1A6F66C();
    sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
    v31 = sub_1C1A6F8EC();
    sub_1C1A6F18C(v26, &dword_1C198D000, v31, "[PCUI] User tapped the ad marker on the app ad but adamId doesn't exist!", 72, 2, MEMORY[0x1E69E7CC0]);
    goto LABEL_11;
  }

  v4 = sub_1C1A6F64C();
  sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
  v5 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C1A73CD0;
  *(v6 + 56) = sub_1C198FB8C(0, &qword_1EBF04870, 0x1E696AD98);
  *(v6 + 64) = sub_1C1A0F564();
  *(v6 + 32) = v3;
  v7 = *(v1 + v2);
  v8 = v3;
  v9 = [v7 identifier];
  v10 = sub_1C1A6F3CC();
  v12 = v11;

  *(v6 + 96) = MEMORY[0x1E69E6158];
  *(v6 + 104) = sub_1C199E518();
  *(v6 + 72) = v10;
  *(v6 + 80) = v12;
  sub_1C1A6F18C(v4, &dword_1C198D000, v5, "[PCUI] User tapped the ad marker on the app ad for adamId=%@ and identifier=%@", 78, 2, v6);

  v13 = v1 + OBJC_IVAR___APPCPromotedContentView_interactionDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = *(v13 + 8);
    ObjectType = swift_getObjectType();
    (*(v14 + 16))(0, ObjectType, v14);
    swift_unknownObjectRelease();
  }

  v16 = [*(v1 + v2) transparencyDetailsDictionary];
  v17 = sub_1C1A6F31C();

  sub_1C1A1DC74(v17);

  v18 = objc_allocWithZone(MEMORY[0x1E69DB510]);
  v19 = sub_1C1A6F2FC();

  v20 = [v18 initWithNewsTransparencyDetailsDictionary_];

  [v20 setDelegate_];
  v31 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
  v21 = [v31 view];
  if (!v21)
  {
    __break(1u);
    return;
  }

  v22 = v21;
  v23 = [objc_opt_self() systemBackgroundColor];
  [v22 setBackgroundColor_];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = [Strong viewControllerToPresentFrom];
    swift_unknownObjectRelease();
LABEL_16:
    IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1C19FDA5C;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C198FEA4;
    aBlock[3] = &unk_1F41419E0;
    v30 = _Block_copy(aBlock);

    [v25 presentViewController:v31 animated:!IsReduceMotionEnabled completion:v30];
    _Block_release(v30);

    return;
  }

  v27 = _s17PromotedContentUI9AppAdViewC010presentingF10Controller3forSo06UIViewH0CSgSo011ASCAdLockupF0C_tF_0();
  if (v27)
  {
    v25 = v27;
    goto LABEL_16;
  }

LABEL_11:
}

void sub_1C1A13708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C1A6F3CC();
  v7 = v6;
  if (v5 == sub_1C1A6F3CC() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_1C1A6FCEC();

    if ((v10 & 1) == 0)
    {
      sub_1C198FB8C(0, &qword_1EDE63F38, 0x1E69E9610);
      v11 = swift_allocObject();
      *(v11 + 16) = a2;
      *(v11 + 24) = a3;

      sub_1C1A6F6BC();
    }
  }
}

void sub_1C1A13854(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C1A6D62C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v13 = OBJC_IVAR___APPCPromotedContentView_promotedContent;
  v14 = *&a1[OBJC_IVAR___APPCPromotedContentView_promotedContent];
  v15 = a2;

  v16 = [v14 installAttribution];
  if (v16)
  {
    v17 = v16;
    v93 = v13;
    v94 = a1;
    v95 = v12;
    v18 = [objc_allocWithZone(MEMORY[0x1E698B4E8]) init];
    [v17 adamId];
    v19 = sub_1C1A6FDEC();
    [v18 setAppAdamId_];

    v20 = [v17 contextIdentifier];
    sub_1C1A6D60C();

    sub_1C1A6D5EC();
    (*(v9 + 8))(v11, v8);
    v21 = sub_1C1A6F39C();

    [v18 setImpressionId_];

    [v17 timestamp];
    v22 = sub_1C1A6FDEC();
    [v18 setTimestamp_];

    v23 = [v17 adNetworkId];
    v24 = v17;
    if (!v23)
    {
      sub_1C1A6F3CC();
      v23 = sub_1C1A6F39C();
    }

    [v18 setAdNetworkId_];

    v25 = [v17 attributionSignature];
    if (!v25)
    {
      sub_1C1A6F3CC();
      v25 = sub_1C1A6F39C();
    }

    [v18 setAttributionSignature_];

    [v17 campaignId];
    v26 = sub_1C1A6FDEC();
    [v18 setCampaignId_];

    [v18 setSourceAppBundleId_];
    [v17 sourceAppAdamId];
    v27 = sub_1C1A6FDEC();
    [v18 setSourceAppAdamId_];

    [v18 setOverrideCampaignLimit_];
    v28 = [v17 version];
    if (!v28)
    {
      sub_1C1A6F3CC();
      v28 = sub_1C1A6F39C();
    }

    [v18 setVersion_];

    v92 = sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1C1A76A30;
    v30 = [v17 adamId];
    v31 = MEMORY[0x1E69E7738];
    *(v29 + 56) = MEMORY[0x1E69E76D8];
    *(v29 + 64) = v31;
    *(v29 + 32) = v30;
    v32 = [v18 impressionId];
    v33 = sub_1C1A6F3CC();
    v35 = v34;

    v36 = MEMORY[0x1E69E6158];
    *(v29 + 96) = MEMORY[0x1E69E6158];
    v37 = sub_1C199E518();
    *(v29 + 104) = v37;
    *(v29 + 72) = v33;
    *(v29 + 80) = v35;
    v38 = [v18 timestamp];
    v39 = sub_1C198FB8C(0, &qword_1EBF04870, 0x1E696AD98);
    *(v29 + 136) = v39;
    v40 = sub_1C1A0F564();
    *(v29 + 144) = v40;
    *(v29 + 112) = v38;
    v41 = [v18 adNetworkId];
    v42 = sub_1C1A6F3CC();
    v44 = v43;

    *(v29 + 176) = v36;
    *(v29 + 184) = v37;
    *(v29 + 152) = v42;
    *(v29 + 160) = v44;
    v45 = [v18 attributionSignature];
    v46 = sub_1C1A6F3CC();
    v48 = v47;

    *(v29 + 216) = v36;
    *(v29 + 224) = v37;
    *(v29 + 192) = v46;
    *(v29 + 200) = v48;
    v49 = [v18 campaignId];
    *(v29 + 256) = v39;
    *(v29 + 264) = v40;
    *(v29 + 232) = v49;
    v50 = [v18 sourceAppBundleId];
    if (v50)
    {
      v51 = v50;
      v52 = sub_1C1A6F3CC();
      v54 = v53;

      v55 = (v29 + 272);
      *(v29 + 296) = v36;
      *(v29 + 304) = v37;
      if (v54)
      {
        *v55 = v52;
        goto LABEL_16;
      }
    }

    else
    {
      v55 = (v29 + 272);
      *(v29 + 296) = v36;
      *(v29 + 304) = v37;
    }

    *v55 = 0x6E776F6E6B6E75;
    v54 = 0xE700000000000000;
LABEL_16:
    *(v29 + 280) = v54;
    v63 = [v18 sourceAppAdamId];
    if (v63)
    {
      v98 = v39;
      v99 = v40;
      *&aBlock = v63;
      sub_1C199274C(&aBlock, v29 + 312);
    }

    else
    {
      *(v29 + 336) = v36;
      *(v29 + 344) = v37;
      *(v29 + 312) = 0x6E776F6E6B6E75;
      *(v29 + 320) = 0xE700000000000000;
    }

    v64 = [v18 overrideCampaignLimit];
    v65 = MEMORY[0x1E69E63A8];
    *(v29 + 376) = MEMORY[0x1E69E6370];
    *(v29 + 384) = v65;
    *(v29 + 352) = v64;
    v66 = [v18 version];
    if (v66)
    {
      v67 = v66;
      v68 = sub_1C1A6F3CC();
      v70 = v69;

      v71 = (v29 + 392);
      *(v29 + 416) = v36;
      *(v29 + 424) = v37;
      if (v70)
      {
        *v71 = v68;
LABEL_24:
        *(v29 + 400) = v70;
        v90 = sub_1C1A6F3EC();
        v73 = v72;
        v91 = sub_1C1A6F64C();
        sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
        v74 = sub_1C1A6F8EC();
        v75 = swift_allocObject();
        *(v75 + 16) = xmmword_1C1A74920;
        v76 = [v24 adamId];
        *(v75 + 56) = MEMORY[0x1E69E76D8];
        *(v75 + 64) = MEMORY[0x1E69E7738];
        *(v75 + 32) = v76;
        v77 = v94;
        v78 = [*&v94[v93] identifier];
        v79 = v24;
        v80 = sub_1C1A6F3CC();
        v82 = v81;

        v83 = MEMORY[0x1E69E6158];
        *(v75 + 96) = MEMORY[0x1E69E6158];
        *(v75 + 104) = v37;
        *(v75 + 72) = v80;
        *(v75 + 80) = v82;
        *(v75 + 136) = v83;
        *(v75 + 144) = v37;
        *(v75 + 112) = v90;
        *(v75 + 120) = v73;
        sub_1C1A6F18C(v91, &dword_1C198D000, v74, "[PCUI] Sending SKAdNetwork data for adamId:%d and identifier:%@ with the following properties:%@", 96, 2, v75);

        v84 = [objc_opt_self() sharedInstance];
        v85 = swift_allocObject();
        v85[2] = v79;
        v85[3] = v77;
        v86 = v95;
        v85[4] = sub_1C1A15504;
        v85[5] = v86;
        v99 = sub_1C1A15564;
        v100 = v85;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        v97 = sub_1C19E7330;
        v98 = &unk_1F4141968;
        v87 = _Block_copy(&aBlock);
        v88 = v79;
        v89 = v77;

        [v84 addInstallAttributionParamsWithConfig:v18 completionHandler:v87];
        _Block_release(v87);

        return;
      }
    }

    else
    {
      v71 = (v29 + 392);
      *(v29 + 416) = v36;
      *(v29 + 424) = v37;
    }

    *v71 = 0x6E776F6E6B6E75;
    v70 = 0xE700000000000000;
    goto LABEL_24;
  }

  LODWORD(v95) = sub_1C1A6F66C();
  sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
  v56 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
  v57 = v15;
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_1C1A73A30;
  v59 = [*&a1[v13] identifier];
  v60 = sub_1C1A6F3CC();
  v62 = v61;

  *(v58 + 56) = MEMORY[0x1E69E6158];
  *(v58 + 64) = sub_1C199E518();
  *(v58 + 32) = v60;
  *(v58 + 40) = v62;
  sub_1C1A6F18C(v95, &dword_1C198D000, v56, "[PCUI] Cannot send SKAdNetwork data for identifier:%@", 53, 2, v58);

  sub_1C1A13708(v57, a3, a4);
}

uint64_t sub_1C1A14268(void *a1, char *a2, uint64_t (**a3)(__n128))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v7 = sub_1C1A6F3CC();
  v9 = v8;
  v11 = v7 == sub_1C1A6F3CC() && v9 == v10;
  v12 = MEMORY[0x1E69E6158];
  if (v11)
  {
    _Block_copy(a3);

    goto LABEL_8;
  }

  v13 = sub_1C1A6FCEC();
  _Block_copy(a3);

  if (v13)
  {
LABEL_8:
    v33 = sub_1C1A6F64C();
    sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
    v15 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1C1A73A30;
    v17 = v6;
    v18 = a1;
    v19 = a2;
    v20 = [*&a2[OBJC_IVAR___APPCPromotedContentView_promotedContent] identifier];
    v21 = sub_1C1A6F3CC();
    v23 = v22;

    a2 = v19;
    a1 = v18;
    v6 = v17;
    v14 = &unk_1E8148000;
    *(v16 + 56) = MEMORY[0x1E69E6158];
    *(v16 + 64) = sub_1C199E518();
    *(v16 + 32) = v21;
    *(v16 + 40) = v23;
    sub_1C1A6F18C(v33, &dword_1C198D000, v15, "[PCUI] State is openable for preprocessing for identifier:%@", 60, 2, v16);

    v12 = MEMORY[0x1E69E6158];

    (a3[2])();
    goto LABEL_9;
  }

  v14 = &unk_1E8148000;
LABEL_9:
  v24 = sub_1C1A6F64C();
  sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
  v25 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1C1A73A30;
  v27 = [*&a2[OBJC_IVAR___APPCPromotedContentView_promotedContent] v14[288]];
  v28 = sub_1C1A6F3CC();
  v30 = v29;

  *(v26 + 56) = v12;
  *(v26 + 64) = sub_1C199E518();
  *(v26 + 32) = v28;
  *(v26 + 40) = v30;
  sub_1C1A6F18C(v24, &dword_1C198D000, v25, "[PCUI] SKAdNetwork for preprocessing for identifier:%@", 54, 2, v26);

  v31 = a1;

  sub_1C1A13854(a2, v31, sub_1C1A153E4, v6);
}

void sub_1C1A14618(char *a1, void *a2)
{
  v4 = sub_1C1A6D62C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  v9 = OBJC_IVAR___APPCPromotedContentView_promotedContent;
  v10 = *&a1[OBJC_IVAR___APPCPromotedContentView_promotedContent];
  a2;
  v11 = [v10 installAttribution];
  if (v11)
  {
    v12 = v11;
    v89 = v9;
    v13 = [objc_allocWithZone(MEMORY[0x1E698B4E8]) init];
    [v12 adamId];
    v14 = sub_1C1A6FDEC();
    [v13 setAppAdamId_];

    v15 = [v12 contextIdentifier];
    sub_1C1A6D60C();

    sub_1C1A6D5EC();
    v92 = v12;
    (*(v5 + 8))(v7, v4);
    v16 = sub_1C1A6F39C();
    v17 = v92;

    [v13 setImpressionId_];

    [v17 timestamp];
    v18 = sub_1C1A6FDEC();
    [v13 setTimestamp_];

    v19 = [v17 adNetworkId];
    if (!v19)
    {
      sub_1C1A6F3CC();
      v19 = sub_1C1A6F39C();
    }

    [v13 setAdNetworkId_];

    v20 = [v17 attributionSignature];
    if (!v20)
    {
      sub_1C1A6F3CC();
      v20 = sub_1C1A6F39C();
    }

    v90 = a1;
    v91 = v8;
    [v13 setAttributionSignature_];

    [v17 campaignId];
    v21 = sub_1C1A6FDEC();
    [v13 setCampaignId_];

    [v13 setSourceAppBundleId_];
    [v17 sourceAppAdamId];
    v22 = sub_1C1A6FDEC();
    [v13 setSourceAppAdamId_];

    [v13 setOverrideCampaignLimit_];
    v23 = [v17 version];
    if (!v23)
    {
      sub_1C1A6F3CC();
      v23 = sub_1C1A6F39C();
    }

    [v13 setVersion_];

    sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1C1A76A30;
    v25 = [v17 adamId];
    v26 = MEMORY[0x1E69E7738];
    *(v24 + 56) = MEMORY[0x1E69E76D8];
    *(v24 + 64) = v26;
    *(v24 + 32) = v25;
    v27 = [v13 impressionId];
    v28 = sub_1C1A6F3CC();
    v30 = v29;

    v31 = MEMORY[0x1E69E6158];
    *(v24 + 96) = MEMORY[0x1E69E6158];
    v32 = sub_1C199E518();
    *(v24 + 104) = v32;
    *(v24 + 72) = v28;
    *(v24 + 80) = v30;
    v33 = [v13 timestamp];
    v34 = sub_1C198FB8C(0, &qword_1EBF04870, 0x1E696AD98);
    *(v24 + 136) = v34;
    v35 = sub_1C1A0F564();
    *(v24 + 144) = v35;
    *(v24 + 112) = v33;
    v36 = [v13 adNetworkId];
    v37 = sub_1C1A6F3CC();
    v39 = v38;

    *(v24 + 176) = v31;
    *(v24 + 184) = v32;
    *(v24 + 152) = v37;
    *(v24 + 160) = v39;
    v40 = [v13 attributionSignature];
    v41 = sub_1C1A6F3CC();
    v43 = v42;

    *(v24 + 216) = v31;
    *(v24 + 224) = v32;
    *(v24 + 192) = v41;
    *(v24 + 200) = v43;
    v44 = [v13 campaignId];
    *(v24 + 256) = v34;
    *(v24 + 264) = v35;
    *(v24 + 232) = v44;
    v45 = [v13 sourceAppBundleId];
    if (v45)
    {
      v46 = v45;
      v47 = sub_1C1A6F3CC();
      v49 = v48;

      v50 = (v24 + 272);
      *(v24 + 296) = v31;
      *(v24 + 304) = v32;
      v51 = v31;
      if (v49)
      {
        *v50 = v47;
        goto LABEL_16;
      }
    }

    else
    {
      v50 = (v24 + 272);
      *(v24 + 296) = v31;
      *(v24 + 304) = v32;
      v51 = v31;
    }

    *v50 = 0x6E776F6E6B6E75;
    v49 = 0xE700000000000000;
LABEL_16:
    *(v24 + 280) = v49;
    v59 = [v13 sourceAppAdamId];
    if (v59)
    {
      v95 = v34;
      v96 = v35;
      *&aBlock = v59;
      sub_1C199274C(&aBlock, v24 + 312);
    }

    else
    {
      *(v24 + 336) = v51;
      *(v24 + 344) = v32;
      *(v24 + 312) = 0x6E776F6E6B6E75;
      *(v24 + 320) = 0xE700000000000000;
    }

    v60 = v89;
    v61 = [v13 overrideCampaignLimit];
    v62 = MEMORY[0x1E69E63A8];
    *(v24 + 376) = MEMORY[0x1E69E6370];
    *(v24 + 384) = v62;
    *(v24 + 352) = v61;
    v63 = [v13 version];
    if (v63)
    {
      v64 = v63;
      v65 = v51;
      v66 = sub_1C1A6F3CC();
      v68 = v67;

      v69 = (v24 + 392);
      *(v24 + 416) = v65;
      *(v24 + 424) = v32;
      if (v68)
      {
        *v69 = v66;
        v70 = v92;
LABEL_24:
        *(v24 + 400) = v68;
        v89 = sub_1C1A6F3EC();
        v72 = v71;
        LODWORD(v92) = sub_1C1A6F64C();
        sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
        v73 = sub_1C1A6F8EC();
        v74 = swift_allocObject();
        *(v74 + 16) = xmmword_1C1A74920;
        v75 = [v70 adamId];
        *(v74 + 56) = MEMORY[0x1E69E76D8];
        *(v74 + 64) = MEMORY[0x1E69E7738];
        *(v74 + 32) = v75;
        v76 = v90;
        v77 = [*&v90[v60] identifier];
        v78 = v70;
        v79 = sub_1C1A6F3CC();
        v81 = v80;

        v82 = MEMORY[0x1E69E6158];
        *(v74 + 96) = MEMORY[0x1E69E6158];
        *(v74 + 104) = v32;
        *(v74 + 72) = v79;
        *(v74 + 80) = v81;
        *(v74 + 136) = v82;
        *(v74 + 144) = v32;
        *(v74 + 112) = v89;
        *(v74 + 120) = v72;
        sub_1C1A6F18C(v92, &dword_1C198D000, v73, "[PCUI] Sending SKAdNetwork data for adamId:%d and identifier:%@ with the following properties:%@", 96, 2, v74);

        v83 = [objc_opt_self() sharedInstance];
        v84 = swift_allocObject();
        v84[2] = v78;
        v84[3] = v76;
        v85 = v91;
        v84[4] = sub_1C1A154D4;
        v84[5] = v85;
        v96 = sub_1C1A154F8;
        v97 = v84;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        v94 = sub_1C19E7330;
        v95 = &unk_1F41418F0;
        v86 = _Block_copy(&aBlock);
        v87 = v78;
        v88 = v76;

        [v83 addInstallAttributionParamsWithConfig:v13 completionHandler:v86];
        _Block_release(v86);

        return;
      }
    }

    else
    {
      v69 = (v24 + 392);
      *(v24 + 416) = v51;
      *(v24 + 424) = v32;
    }

    v70 = v92;
    *v69 = 0x6E776F6E6B6E75;
    v68 = 0xE700000000000000;
    goto LABEL_24;
  }

  v52 = sub_1C1A6F66C();
  sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
  v53 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_1C1A73A30;
  v55 = [*&a1[v9] identifier];
  v56 = sub_1C1A6F3CC();
  v58 = v57;

  *(v54 + 56) = MEMORY[0x1E69E6158];
  *(v54 + 64) = sub_1C199E518();
  *(v54 + 32) = v56;
  *(v54 + 40) = v58;
  sub_1C1A6F18C(v52, &dword_1C198D000, v53, "[PCUI] Cannot send SKAdNetwork data for identifier:%@", 53, 2, v54);

  sub_1C1A6F74C();
}

id _s17PromotedContentUI9AppAdViewC42metricsActivityForPresentingProductDetails2of7inStateSo010ASCMetricsH0CSo011ASCAdLockupF0C_So06ASCAppO0atF_0()
{
  v1 = v0;
  v2 = sub_1C1A6F20C();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR___APPCPromotedContentView_promotedContent;
  [objc_msgSend(*&v0[OBJC_IVAR___APPCPromotedContentView_promotedContent] metricsHelper];
  swift_unknownObjectRelease();
  v8 = sub_1C1A6F64C();
  sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
  v9 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C1A73A30;
  v11 = [*&v1[v7] identifier];
  v12 = sub_1C1A6F3CC();
  v14 = v13;

  *(v10 + 56) = MEMORY[0x1E69E6158];
  *(v10 + 64) = sub_1C199E518();
  *(v10 + 32) = v12;
  *(v10 + 40) = v14;
  sub_1C1A6F18C(v8, &dword_1C198D000, v9, "[PCUI] SKAdNetwork for tap action for identifier:%@", 51, 2, v10);

  v15 = dispatch_semaphore_create(1);
  sub_1C198FB8C(0, &qword_1EDE63F38, 0x1E69E9610);
  (*(v3 + 104))(v6, *MEMORY[0x1E69E7F98], v2);
  v16 = sub_1C1A6F72C();
  (*(v3 + 8))(v6, v2);
  v17 = swift_allocObject();
  *(v17 + 16) = v1;
  *(v17 + 24) = v15;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1C1A1545C;
  *(v18 + 24) = v17;
  aBlock[4] = sub_1C1A154AC;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C1A11B64;
  aBlock[3] = &unk_1F4141878;
  v19 = _Block_copy(aBlock);
  v1;
  v20 = v15;

  dispatch_sync(v16, v19);

  _Block_release(v19);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  else
  {
    v22 = sub_1C1A6F73C();
    v23 = sub_1C1A11B8C(v22);

    return v23;
  }

  return result;
}

uint64_t sub_1C1A153F4(uint64_t a1)
{
  v2 = sub_1C19A9E58(&unk_1EBF04860, &qword_1C1A76A48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C1A1545C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1C1A14618(v1, v2);
}

uint64_t sub_1C1A15510()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

id sub_1C1A15574(void *a1, double a2, double a3)
{
  v7 = sub_1C1A6F1FC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C1A6F22C();
  v12 = *(v11 - 8);
  *&v13 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 bestRepresentation];
  if (result)
  {
    swift_unknownObjectRelease();
    v21[1] = *(v3 + 224);
    v17 = swift_allocObject();
    v21[0] = v8;
    v22 = v11;
    v18 = v17;
    swift_weakInit();
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = a1;
    *(v19 + 32) = a2;
    *(v19 + 40) = a3;
    aBlock[4] = sub_1C1A1B298;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C198FEA4;
    aBlock[3] = &unk_1F4141AA8;
    v20 = _Block_copy(aBlock);

    swift_unknownObjectRetain();
    sub_1C1A6F21C();
    v23 = MEMORY[0x1E69E7CC0];
    sub_1C198FE14(&qword_1EDE63F68, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1C19A9E58(&qword_1EBF03E28, &qword_1C1A74490);
    sub_1C198FE5C(&qword_1EDE63F50, &qword_1EBF03E28, &qword_1C1A74490, MEMORY[0x1E69E6328]);
    sub_1C1A6F94C();
    MEMORY[0x1C69051C0](0, v15, v10, v20);
    _Block_release(v20);
    (*(v21[0] + 8))(v10, v7);
    (*(v12 + 8))(v15, v22);
  }

  return result;
}

uint64_t sub_1C1A158BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = sub_1C1A6F1FC();
  v21 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1C1A6F22C();
  v12 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v4 + 224);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = a1;
  *(v16 + 32) = a2;
  *(v16 + 40) = a3;
  *(v16 + 48) = a4 & 1;
  aBlock[4] = sub_1C1A1B288;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C198FEA4;
  aBlock[3] = &unk_1F4141A58;
  v17 = _Block_copy(aBlock);

  sub_1C1A6F21C();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1C198FE14(&qword_1EDE63F68, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1C19A9E58(&qword_1EBF03E28, &qword_1C1A74490);
  sub_1C198FE5C(&qword_1EDE63F50, &qword_1EBF03E28, &qword_1C1A74490, MEMORY[0x1E69E6328]);
  sub_1C1A6F94C();
  MEMORY[0x1C69051C0](0, v14, v11, v17);
  _Block_release(v17);
  (*(v21 + 8))(v11, v9);
  (*(v12 + 8))(v14, v20);
}

double sub_1C1A15BE0(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      v4 = (a1 + 32);
      v5 = a2[9];
      v37 = a2[8];
      do
      {
        v6 = *v4;
        v7 = *(*v4 + 16);

        if (v7 && (v8 = sub_1C1991010(0x7461745372657375, 0xEA00000000007375), (v9 & 1) != 0))
        {
          v10 = *(*(v6 + 56) + 8 * v8);
          v11 = v10;
        }

        else
        {
          v10 = 0;
        }

        v12 = a2[23];
        v13 = a2[22] & 0xFFFFFFFFFFFFLL;
        if ((v12 & 0x2000000000000000) != 0)
        {
          v13 = HIBYTE(v12) & 0xF;
        }

        if (!v13)
        {
          if (!v10)
          {
            goto LABEL_15;
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v38 = 0;
            v39 = 0;
            sub_1C1A6F3BC();
          }
        }

LABEL_15:
        if (*(v6 + 16) && (v14 = sub_1C1991010(v37, v5), (v15 & 1) != 0))
        {
          v16 = *(*(v6 + 56) + 8 * v14);
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v38 = 0;
            v39 = 0;
            v17 = v16;
            sub_1C1A6F3BC();
          }
        }

        else
        {
          swift_beginAccess();
          v18 = a2[21];

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          a2[21] = v18;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v18 = sub_1C19CB25C(0, v18[2] + 1, 1, v18);
            a2[21] = v18;
          }

          v21 = v18[2];
          v20 = v18[3];
          if (v21 >= v20 >> 1)
          {
            v18 = sub_1C19CB25C((v20 > 1), v21 + 1, 1, v18);
          }

          v18[2] = v21 + 1;
          v18[v21 + 4] = v6;
          a2[21] = v18;
          swift_endAccess();
        }

        if (*(v6 + 16))
        {
          v22 = sub_1C1991010(0x6D726F464C587369, 0xEA00000000007461);
          if (v23)
          {
            v24 = *(*(v6 + 56) + 8 * v22);
            objc_opt_self();
            v25 = swift_dynamicCastObjCClass();
            if (v25)
            {
              v26 = v25;
              v27 = v24;
              if ([v26 integerValue] == 1)
              {
                if (*(v6 + 16) && (v28 = sub_1C1991010(0x74616D726F466461, 0xEC00000065707954), (v29 & 1) != 0))
                {
                  v30 = *(*(v6 + 56) + 8 * v28);

                  objc_opt_self();
                  if (swift_dynamicCastObjCClass())
                  {
                    v38 = 0;
                    v39 = 0;
                    sub_1C1A6F3BC();
                  }

                  else
                  {
                  }
                }

                else
                {
                }

                goto LABEL_6;
              }
            }
          }
        }

LABEL_6:
        ++v4;
        --v3;
      }

      while (v3);
    }

    swift_beginAccess();

    v32 = sub_1C19F2518(v31);

    v33 = *(v32 + 16);
    if (v33)
    {
      v34 = sub_1C19E89A8(*(v32 + 16), 0);
      v35 = sub_1C1A5FBC8(&v38, v34 + 4, v33, v32);
      sub_1C19A93FC(v38);
      if (v35 == v33)
      {
LABEL_41:
        a2[27] = v34;

        return result;
      }

      __break(1u);
    }

    v34 = MEMORY[0x1E69E7CC0];
    goto LABEL_41;
  }

  return result;
}

double sub_1C1A16158(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {
    sub_1C19A9E58(&qword_1EBF037B0, &unk_1C1A76BB0);
    v2 = sub_1C1A6F51C();
  }

  v3(v2);

  return result;
}

void sub_1C1A161DC(uint64_t a1, void *a2, double a3, double a4)
{
  v7 = type metadata accessor for ImpressionInfo(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v77 - v12);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v15 = Strong;
  v86 = v8;
  v16 = sub_1C1A1B2A4(a2);
  v87 = v17;
  v88 = v18;
  sub_1C1A16958(v16, v17, v18);
  v89 = sub_1C1A1B4E4(a2);
  v90 = v19;
  v95 = v20;
  v93 = v21;
  v22 = [a2 context];
  v84 = v7;
  v85 = v10;
  if (v22 && (v23 = [v22 current], swift_unknownObjectRelease(), v23))
  {
    v24 = [v23 placement];
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0;
  }

  v25 = sub_1C1A6F65C();
  v26 = sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
  v82 = "n>16@0:8";
  v81 = &OBJC_IVAR____TtC17PromotedContentUI15AdPolicyManager_launchTimestamps;
  v83 = v26;
  v27 = sub_1C1A6F8EC();
  v80 = sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1C1A73A30;
  v29 = [a2 identifier];
  v30 = sub_1C1A6F3CC();
  v94 = a2;
  v31 = v30;
  v33 = v32;

  *(v28 + 56) = MEMORY[0x1E69E6158];
  v79 = sub_1C199E518();
  *(v28 + 64) = v79;
  *(v28 + 32) = v31;
  *(v28 + 40) = v33;
  v34 = v94;
  sub_1C1A6F18C(v25, &dword_1C198D000, v27, "Policy check - adding impression for: %@", 40, 2, v28);

  if ([v34 feedMetadataContentProviderID] == 1)
  {
    v35 = 13;
    v36 = 12;
  }

  else
  {
    v37 = [v34 feedMetadataContentProviderID];
    v36 = 14;
    if (v37 == 1)
    {
      v36 = 10;
    }

    v35 = 15;
    if (v37 == 1)
    {
      v35 = 11;
    }
  }

  v77 = v15[v36];
  v38 = v15[v35];

  v39 = 0xE700000000000000;
  v40 = 0xEC0000006C616974;
  v41 = 0x6974737265746E69;
  v42 = 0xE500000000000000;
  v43 = 0x6F65646976;
  v44 = 0xE500000000000000;
  v45 = 0x6F69647561;
  if (v24 != 105)
  {
    v45 = 0x6E776F6E6B6E75;
    v44 = 0xE700000000000000;
  }

  if (v24 != 104)
  {
    v43 = v45;
    v42 = v44;
  }

  if (v24 != 103)
  {
    v41 = v43;
    v40 = v42;
  }

  v46 = 0x746E65746E6F63;
  v47 = 1953720684;
  v48 = 1684632167;
  if (v24 == 102)
  {
    v39 = 0xE400000000000000;
  }

  else
  {
    v48 = 0x6E776F6E6B6E75;
  }

  if (v24 == 101)
  {
    v39 = 0xE400000000000000;
  }

  else
  {
    v47 = v48;
  }

  if (v24 == 100)
  {
    v39 = 0xE700000000000000;
  }

  else
  {
    v46 = v47;
  }

  if (v24 > 102)
  {
    v39 = v40;
  }

  else
  {
    v41 = v46;
  }

  v91 = v39;
  v92 = v41;
  if (!v95)
  {
    v49 = v15[10];
    v50 = v15[11];

    v51 = v93;
    if (v93)
    {
      goto LABEL_32;
    }

LABEL_34:
    v52 = v15[10];
    v51 = v15[11];

    v78 = 0xE700000000000000;
    goto LABEL_35;
  }

  v49 = v89;
  v50 = v95;
  v51 = v93;
  if (!v93)
  {
    goto LABEL_34;
  }

LABEL_32:
  v78 = v51;
  v52 = v90;
LABEL_35:
  v53 = v84;

  sub_1C1A6D5CC();
  *v13 = v49;
  v13[1] = v50;
  v13[2] = v52;
  v13[3] = v51;
  v54 = v91;
  v13[4] = v92;
  v13[5] = v54;
  v55 = (v13 + *(v53 + 32));
  *v55 = a3;
  v55[1] = a4;
  v56 = (v13 + *(v53 + 36));
  *v56 = v77;
  v56[1] = v38;
  v57 = v85;
  sub_1C1A1B65C(v13, v85, type metadata accessor for ImpressionInfo);
  swift_beginAccess();
  v58 = v15[24];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15[24] = v58;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v58 = sub_1C19CB390(0, v58[2] + 1, 1, v58);
    v15[24] = v58;
  }

  v61 = v58[2];
  v60 = v58[3];
  if (v61 >= v60 >> 1)
  {
    v58 = sub_1C19CB390((v60 > 1), v61 + 1, 1, v58);
  }

  v58[2] = v61 + 1;
  sub_1C1A1B6C4(v57, v58 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v61, type metadata accessor for ImpressionInfo);
  v15[24] = v58;
  swift_endAccess();
  v62 = sub_1C1A6F65C();
  v63 = sub_1C1A6F8EC();
  v64 = swift_allocObject();
  v65 = v64;
  *(v64 + 16) = xmmword_1C1A74920;
  v66 = MEMORY[0x1E69E6158];
  v67 = v79;
  *(v64 + 56) = MEMORY[0x1E69E6158];
  *(v64 + 64) = v67;
  v68 = v89;
  if (!v95)
  {
    v68 = 0x6E776F6E6B6E75;
  }

  v69 = 0xE700000000000000;
  if (v95)
  {
    v69 = v95;
  }

  *(v64 + 32) = v68;
  *(v64 + 40) = v69;
  *(v64 + 96) = v66;
  *(v64 + 104) = v67;
  if (v93)
  {
    v70 = v90;
  }

  else
  {
    v70 = 0x6E776F6E6B6E75;
  }

  v71 = v78;
  *(v64 + 72) = v70;
  *(v64 + 80) = v71;
  *(v64 + 136) = v66;
  *(v64 + 144) = v67;
  v72 = v91;
  *(v64 + 112) = v92;
  *(v64 + 120) = v72;

  sub_1C1A6F18C(v62, &dword_1C198D000, v63, "Policy check - adding impression for adType: %{private}@, adFormatType: %{private}@, containerType: %{private}@", 111, 2, v65);

  sub_1C1A1B72C(v13, type metadata accessor for ImpressionInfo);
  v73 = [v94 bestRepresentation];
  if (v73)
  {
    v74 = [v73 adPolicyData];
    if (v74)
    {
      v75 = v74;
      v76 = sub_1C1A6DE0C();
    }

    else
    {
      v76 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v76 = 0;
  }

  sub_1C1A16D78(v76);
}

void sub_1C1A16958(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for FrequencyCapInfo(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 && a3)
  {

    v12 = a3;
    sub_1C1A6E03C();
    v13 = sub_1C1A6E47C();
    swift_beginAccess();
    v14 = *(v4 + 160);
    if (!*(v14 + 16) || (v15 = sub_1C19A30DC(v13), (v16 & 1) == 0))
    {
      swift_endAccess();
      v21 = 1;
LABEL_15:
      v23 = sub_1C1A6F65C();
      sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
      v24 = sub_1C1A6F8EC();
      sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1C1A73CD0;
      *(v25 + 56) = MEMORY[0x1E69E6158];
      v26 = sub_1C199E518();
      *(v25 + 32) = a1;
      *(v25 + 40) = a2;
      v27 = MEMORY[0x1E69E65A8];
      *(v25 + 96) = MEMORY[0x1E69E6530];
      *(v25 + 104) = v27;
      *(v25 + 64) = v26;
      *(v25 + 72) = v21;

      sub_1C1A6F18C(v23, &dword_1C198D000, v24, "Policy check - adding impression for FC - %{private}@ count: %d", 63, 2, v25);

      sub_1C1A6E03C();
      v28 = sub_1C1A6E47C();
      sub_1C19A9E58(&qword_1EBF04878, &unk_1C1A76B80);
      v29 = (sub_1C19A9E58(&qword_1EBF03C48, &qword_1C1A74058) - 8);
      v30 = (*(*v29 + 80) + 32) & ~*(*v29 + 80);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1C1A73A30;
      v32 = (v31 + v30);
      v33 = v32 + v29[14];
      *v32 = a1;
      v32[1] = a2;
      sub_1C1A6D5CC();
      *&v33[*(v8 + 20)] = v21;
      v34 = sub_1C19B7410(v31);
      swift_setDeallocating();
      sub_1C1A1B78C(v32);
      swift_deallocClassInstance();
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = *(v4 + 160);
      *(v4 + 160) = 0x8000000000000000;
      sub_1C1A49E70(v34, v28, isUniquelyReferenced_nonNull_native);
      *(v4 + 160) = v36;
      swift_endAccess();

      return;
    }

    v17 = *(*(v14 + 56) + 8 * v15);
    swift_endAccess();
    if (*(v17 + 16))
    {

      v18 = sub_1C1991010(a1, a2);
      if (v19)
      {
        sub_1C1A1B65C(*(v17 + 56) + *(v9 + 72) * v18, v11, type metadata accessor for FrequencyCapInfo);

        v20 = *&v11[*(v8 + 20)];
        sub_1C1A1B72C(v11, type metadata accessor for FrequencyCapInfo);
LABEL_11:
        v21 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          __break(1u);
          return;
        }

        v22 = sub_1C1A6E01C();
        if (v21 >= 1 && v22 < v21)
        {
          v21 = 1;
        }

        goto LABEL_15;
      }
    }

    v20 = 0;
    goto LABEL_11;
  }
}

void sub_1C1A16D78(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CreativeImpressionInfo(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v21 - v9);
  if (a1)
  {
    v11 = sub_1C1A6DD1C();
    v13 = v12;

    sub_1C1A6D5CC();
    *v10 = v11;
    v10[1] = v13;
    sub_1C1A1B65C(v10, v7, type metadata accessor for CreativeImpressionInfo);
    swift_beginAccess();
    v14 = *(v2 + 200);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 200) = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = sub_1C19CB3B8(0, v14[2] + 1, 1, v14);
      *(v2 + 200) = v14;
    }

    v17 = v14[2];
    v16 = v14[3];
    if (v17 >= v16 >> 1)
    {
      v14 = sub_1C19CB3B8((v16 > 1), v17 + 1, 1, v14);
    }

    v14[2] = v17 + 1;
    sub_1C1A1B6C4(v7, v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v17, type metadata accessor for CreativeImpressionInfo);
    *(v2 + 200) = v14;
    swift_endAccess();
    v18 = sub_1C1A6F65C();
    sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
    v19 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1C1A73A30;
    *(v20 + 56) = MEMORY[0x1E69E6158];
    *(v20 + 64) = sub_1C199E518();
    *(v20 + 32) = v11;
    *(v20 + 40) = v13;
    sub_1C1A6F18C(v18, &dword_1C198D000, v19, "Policy check - adding creative ID impression for ID: %{private}@", 64, 2, v20);

    sub_1C1A1B72C(v10, type metadata accessor for CreativeImpressionInfo);
  }
}

uint64_t sub_1C1A17050(uint64_t a1, void *a2, void (*a3)(void), double a4, double a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v54 = a3;
    v51 = sub_1C1A175A4(a2);
    v52 = sub_1C1A6F66C();
    sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
    v11 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1C1A73A30;
    v13 = [a2 identifier];
    v14 = sub_1C1A6F3CC();
    v15 = v10;
    v17 = v16;

    *(v12 + 56) = MEMORY[0x1E69E6158];
    v18 = sub_1C199E518();
    *(v12 + 64) = v18;
    *(v12 + 32) = v14;
    *(v12 + 40) = v17;
    v55 = v15;
    v53 = v18;
    if (v51)
    {
      v19 = v18;
      sub_1C1A6F18C(v52, &dword_1C198D000, v11, "Policy check - %{public}@, FC is valid, check for creative ID separation", 72, 2, v12);

      sub_1C1A17B28(a2);
      v21 = v20;
      v49 = sub_1C1A6F66C();
      v22 = sub_1C1A6F8EC();
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1C1A73A30;
      v24 = [a2 identifier];
      v25 = sub_1C1A6F3CC();
      v27 = v26;

      *(v23 + 56) = MEMORY[0x1E69E6158];
      *(v23 + 64) = v19;
      *(v23 + 32) = v25;
      *(v23 + 40) = v27;
      v28 = a2;
      v29 = &unk_1E8148000;
      if (v21)
      {
        sub_1C1A6F18C(v49, &dword_1C198D000, v22, "Policy check - %{public}@, creative ID check is valid, check for ad policy", 74, 2, v23);

        v50 = a2;
        v30 = sub_1C1A1B4E4(a2);
        v33 = v32;
        v35 = v34;
        if (v31)
        {
          v36 = v30;
          v37 = v31;
          v38 = v55;
        }

        else
        {
          v38 = v55;
          v36 = *(v55 + 80);
          v37 = *(v55 + 88);
        }

        if (!v35)
        {
          v33 = *(v38 + 80);
          v35 = *(v38 + 88);
        }

        v40 = v36;
        v28 = v50;
        v39 = sub_1C1A17FE8(v50, v40, v37, v33, v35, a4, a5);
      }

      else
      {
        sub_1C1A6F18C(v49, &dword_1C198D000, v22, "Policy check - %{public}@, Creative ID separation unfulfilled", 61, 2, v23);

        [objc_msgSend(a2 metricsHelper)];
        swift_unknownObjectRelease();
        v39 = 0;
      }
    }

    else
    {
      v29 = &unk_1E8148000;
      sub_1C1A6F18C(v52, &dword_1C198D000, v11, "Policy check - %{public}@, Frequency capping unfulfilled", 56, 2, v12);

      [objc_msgSend(a2 metricsHelper)];
      swift_unknownObjectRelease();
      v39 = 0;
      v28 = a2;
    }

    v41 = sub_1C1A6F66C();
    v42 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1C1A73CD0;
    v44 = [v28 v29[288]];
    v45 = sub_1C1A6F3CC();
    v47 = v46;

    *(v43 + 56) = MEMORY[0x1E69E6158];
    *(v43 + 64) = v53;
    *(v43 + 32) = v45;
    *(v43 + 40) = v47;
    v48 = MEMORY[0x1E69E63A8];
    *(v43 + 96) = MEMORY[0x1E69E6370];
    *(v43 + 104) = v48;
    *(v43 + 72) = v39 & 1;
    sub_1C1A6F18C(v41, &dword_1C198D000, v42, "Policy check - %{public}@, fulfillment: %d", 42, 2, v43);

    [v28 setDiscardedDueToPolicy_];
    v54(v39 & 1);
  }

  return result;
}

uint64_t sub_1C1A175A4(void *a1)
{
  v2 = v1;
  v4 = sub_1C1A6D5DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FrequencyCapInfo(0);
  v55 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v52 - v12;
  v56 = a1;
  v14 = sub_1C1A1B2A4(a1);
  v17 = v16;
  if (!v15)
  {
    goto LABEL_16;
  }

  v18 = v15;
  if (!v16)
  {

LABEL_16:
    v42 = sub_1C1A6F66C();
    sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
    v43 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1C1A73A30;
    v45 = v17;
    v46 = [v56 identifier];
    v47 = sub_1C1A6F3CC();
    v49 = v48;

    *(v44 + 56) = MEMORY[0x1E69E6158];
    *(v44 + 64) = sub_1C199E518();
    *(v44 + 32) = v47;
    *(v44 + 40) = v49;
    sub_1C1A6F18C(v42, &dword_1C198D000, v43, "Policy check - %{public}@, no FC check required", 47, 2, v44);

    return 1;
  }

  v19 = v14;
  v53 = v5;
  v54 = v16;
  sub_1C1A6E03C();
  v20 = sub_1C1A6E47C();
  swift_beginAccess();
  v21 = *(v2 + 160);
  if (!*(v21 + 16) || (v22 = sub_1C19A30DC(v20), (v23 & 1) == 0))
  {
    swift_endAccess();
LABEL_14:

    v35 = sub_1C1A6F66C();
    sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
    v36 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1C1A73A30;
    v38 = [v56 identifier];
    v39 = sub_1C1A6F3CC();
    v41 = v40;

    *(v37 + 56) = MEMORY[0x1E69E6158];
    *(v37 + 64) = sub_1C199E518();
    *(v37 + 32) = v39;
    *(v37 + 40) = v41;
    sub_1C1A6F18C(v35, &dword_1C198D000, v36, "Policy check - %{public}@, no previous FC info available", 56, 2, v37);

    return 1;
  }

  v24 = *(*(v21 + 56) + 8 * v22);
  swift_endAccess();
  if (!*(v24 + 16))
  {
    goto LABEL_14;
  }

  v25 = sub_1C1991010(v19, v18);
  v27 = v26;

  if ((v27 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_1C1A1B65C(*(v24 + 56) + *(v55 + 72) * v25, v10, type metadata accessor for FrequencyCapInfo);

  sub_1C1A1B6C4(v10, v13, type metadata accessor for FrequencyCapInfo);
  sub_1C1A6D5CC();
  sub_1C1A6D50C();
  v29 = v28;
  v30 = v28;
  result = (*(v53 + 8))(v7, v4);
  if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_25;
  }

  v32 = v54;
  if (v29 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v29 >= 9.22337204e18)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  v33 = *&v13[*(v8 + 20)];
  v34 = sub_1C1A6E01C();
  if ((v33 & 0x8000000000000000) != 0 || v33 < v34)
  {
    sub_1C1A1B72C(v13, type metadata accessor for FrequencyCapInfo);

    return 1;
  }

  v50 = sub_1C1A6E02C();

  sub_1C1A1B72C(v13, type metadata accessor for FrequencyCapInfo);
  return v29 > 0 && v50 < v29;
}

void sub_1C1A17B28(void *a1)
{
  v2 = v1;
  v40 = sub_1C1A6D5DC();
  v4 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for CreativeImpressionInfo(0);
  v41 = *(v39 - 8);
  *&v7 = MEMORY[0x1EEE9AC00](v39).n128_u64[0];
  v9 = (&v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = [a1 bestRepresentation];
  if (!v10)
  {
LABEL_8:
    v19 = sub_1C1A6F66C();
    sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
    v20 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1C1A73A30;
    v22 = [a1 identifier];
    v23 = sub_1C1A6F3CC();
    v25 = v24;

    *(v21 + 56) = MEMORY[0x1E69E6158];
    *(v21 + 64) = sub_1C199E518();
    *(v21 + 32) = v23;
    *(v21 + 40) = v25;
    sub_1C1A6F18C(v19, &dword_1C198D000, v20, "Policy check - %{public}@, no creative ID check required", 56, 2, v21);

LABEL_9:

    return;
  }

  v11 = [v10 adPolicyData];
  if (!v11)
  {
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v12 = v11;
  v13 = sub_1C1A6DE0C();

  swift_unknownObjectRelease();
  if (!v13)
  {
    goto LABEL_8;
  }

  v14 = sub_1C1A6DD0C();
  if (*(v14 + 16) && (v15 = v2[22], v16 = v2[23], , v17 = sub_1C1991010(v15, v16), LOBYTE(v15) = v18, , (v15 & 1) != 0))
  {
    v38 = *(*(v14 + 56) + 8 * v17);
  }

  else
  {
    v38 = 0;
  }

  swift_beginAccess();
  v26 = v2[25];
  v27 = *(v26 + 16);
  if (!v27)
  {

    return;
  }

  v28 = v26 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
  v29 = (v4 + 8);

  v30 = 0;
  while (v30 < *(v26 + 16))
  {
    sub_1C1A1B65C(v28 + *(v41 + 72) * v30, v9, type metadata accessor for CreativeImpressionInfo);
    if (sub_1C1A6DD1C() == *v9 && v31 == v9[1])
    {
    }

    else
    {
      v33 = sub_1C1A6FCEC();

      if ((v33 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    sub_1C1A6D5CC();
    sub_1C1A6D50C();
    v35 = v34;
    v36 = v34;
    (*v29)(v6, v40);
    if ((*&v36 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_30;
    }

    if (v35 <= -9.22337204e18)
    {
      goto LABEL_31;
    }

    if (v35 >= 9.22337204e18)
    {
      goto LABEL_32;
    }

    if (v38 > v35)
    {

      sub_1C1A1B72C(v9, type metadata accessor for CreativeImpressionInfo);
      return;
    }

LABEL_13:
    ++v30;
    sub_1C1A1B72C(v9, type metadata accessor for CreativeImpressionInfo);
    if (v27 == v30)
    {

      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t sub_1C1A17FE8(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, double a6, double a7)
{
  v11 = 0x6E776F6E6B6E75;
  v12 = [a1 context];
  if (v12 && (v13 = [v12 current], swift_unknownObjectRelease(), v13))
  {
    v14 = [v13 placement];
    swift_unknownObjectRelease();
    v15 = 0xE700000000000000;
    v16 = 0xEC0000006C616974;
    v17 = 0x6974737265746E69;
    v18 = 0xE500000000000000;
    v19 = 0x6F65646976;
    v20 = 0xE500000000000000;
    v21 = 0x6F69647561;
    if (v14 != 105)
    {
      v21 = 0x6E776F6E6B6E75;
      v20 = 0xE700000000000000;
    }

    if (v14 != 104)
    {
      v19 = v21;
      v18 = v20;
    }

    if (v14 != 103)
    {
      v17 = v19;
      v16 = v18;
    }

    v22 = 0x746E65746E6F63;
    v23 = 1953720684;
    v24 = 1684632167;
    if (v14 == 102)
    {
      v15 = 0xE400000000000000;
    }

    else
    {
      v24 = 0x6E776F6E6B6E75;
    }

    if (v14 == 101)
    {
      v15 = 0xE400000000000000;
    }

    else
    {
      v23 = v24;
    }

    if (v14 == 100)
    {
      v15 = 0xE700000000000000;
    }

    else
    {
      v22 = v23;
    }

    if (v14 <= 102)
    {
      v11 = v22;
    }

    else
    {
      v11 = v17;
    }

    if (v14 > 102)
    {
      v15 = v16;
    }
  }

  else
  {
    v15 = 0xE700000000000000;
  }

  v64 = v15;
  if ([a1 feedMetadataContentProviderID] == 1)
  {
    v25 = 104;
    v26 = 96;
  }

  else
  {
    v27 = [a1 feedMetadataContentProviderID];
    v26 = 112;
    if (v27 == 1)
    {
      v26 = 80;
    }

    v25 = 120;
    if (v27 == 1)
    {
      v25 = 88;
    }
  }

  v28 = *(v7 + v26);
  v29 = *(v7 + v25);

  v62 = sub_1C1A6F64C();
  sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
  v60 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1C1A76A50;
  v31 = [a1 identifier];
  v32 = sub_1C1A6F3CC();
  v34 = v33;

  v35 = MEMORY[0x1E69E6158];
  *(v30 + 56) = MEMORY[0x1E69E6158];
  v36 = sub_1C199E518();
  *(v30 + 32) = v32;
  *(v30 + 40) = v34;
  *(v30 + 96) = v35;
  *(v30 + 104) = v36;
  *(v30 + 64) = v36;
  *(v30 + 72) = a2;
  *(v30 + 80) = a3;
  *(v30 + 136) = v35;
  *(v30 + 144) = v36;
  *(v30 + 112) = a4;
  *(v30 + 120) = a5;
  *(v30 + 176) = v35;
  *(v30 + 184) = v36;
  *(v30 + 152) = v11;
  *(v30 + 160) = v64;
  *(v30 + 216) = v35;
  *(v30 + 224) = v36;
  *(v30 + 192) = v28;
  *(v30 + 200) = v29;

  v61 = v29;

  sub_1C1A6F18C(v62, &dword_1C198D000, v60, "Policy check - %@, checking policy for adType: %@, adFormatType: %@, containerType: %@, placementDescriptor: %@", 111, 2, v30);

  sub_1C1A190F8(a2, a3, a4, a5, v11, v64, v28, v29);
  v63 = v37;
  v57 = sub_1C1A6F64C();
  v56 = sub_1C1A6F8EC();
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1C1A76A60;
  v39 = [a1 identifier];
  v40 = sub_1C1A6F3CC();
  v42 = v41;

  v43 = MEMORY[0x1E69E6158];
  *(v38 + 56) = MEMORY[0x1E69E6158];
  *(v38 + 64) = v36;
  *(v38 + 32) = v40;
  *(v38 + 40) = v42;
  *(v38 + 96) = v43;
  *(v38 + 104) = v36;
  *(v38 + 72) = a2;
  *(v38 + 80) = a3;
  *(v38 + 136) = v43;
  *(v38 + 144) = v36;
  *(v38 + 112) = a4;
  *(v38 + 120) = a5;
  *(v38 + 176) = v43;
  *(v38 + 184) = v36;
  *(v38 + 152) = v11;
  *(v38 + 160) = v64;
  *(v38 + 216) = v43;
  *(v38 + 224) = v36;
  v55 = v28;
  *(v38 + 192) = v28;
  *(v38 + 200) = v61;
  *(v38 + 256) = sub_1C19A9E58(&qword_1EBF04880, &qword_1C1A76B90);
  v59 = MEMORY[0x1E6969E28];
  *(v38 + 264) = sub_1C198FE5C(&qword_1EDE62730, &qword_1EBF04880, &qword_1C1A76B90, MEMORY[0x1E6969E28]);
  *(v38 + 232) = v63;

  sub_1C1A6F18C(v57, &dword_1C198D000, v56, "Policy check - %@, applicable impressions for adType: %@, adFormatType: %@, containerType: %@, placementDescriptor: %@ - applicableImpressions: %@", 146, 2, v38);

  sub_1C1A198FC(a2, a3, a4, a5, v11, v64, v28, v61);
  v45 = v44;
  v58 = sub_1C1A6F64C();
  v46 = sub_1C1A6F8EC();
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1C1A76A60;
  v48 = [a1 identifier];
  v49 = sub_1C1A6F3CC();
  v51 = v50;

  v52 = MEMORY[0x1E69E6158];
  *(v47 + 56) = MEMORY[0x1E69E6158];
  *(v47 + 64) = v36;
  *(v47 + 32) = v49;
  *(v47 + 40) = v51;
  *(v47 + 96) = v52;
  *(v47 + 104) = v36;
  *(v47 + 72) = a2;
  *(v47 + 80) = a3;
  *(v47 + 136) = v52;
  *(v47 + 144) = v36;
  *(v47 + 112) = a4;
  *(v47 + 120) = a5;
  *(v47 + 176) = v52;
  *(v47 + 184) = v36;
  *(v47 + 152) = v11;
  *(v47 + 160) = v64;
  *(v47 + 216) = v52;
  *(v47 + 224) = v36;
  *(v47 + 192) = v55;
  *(v47 + 200) = v61;
  *(v47 + 256) = sub_1C19A9E58(&qword_1EBF04888, &qword_1C1A76B98);
  *(v47 + 264) = sub_1C198FE5C(&qword_1EDE62728, &qword_1EBF04888, &qword_1C1A76B98, v59);
  *(v47 + 232) = v45;

  sub_1C1A6F18C(v58, &dword_1C198D000, v46, "Policy check - %@, applicable policies for adType: %@, adFormatType: %@, containerType: %@, placementDescriptor: %@ - applicablePolicies: %@", 140, 2, v47);

  v53 = sub_1C1A51D3C(v45);

  LOBYTE(v46) = sub_1C1A19D30(v53, v63, a4, a5, v11, v64, a1, a6, a7);

  return v46 & 1;
}

uint64_t sub_1C1A186F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1C1A6F1FC();
  v20 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1C1A6F22C();
  v11 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v4 + 224);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = a3;
  aBlock[4] = sub_1C1A1B944;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C198FEA4;
  aBlock[3] = &unk_1F4141AF8;
  v16 = _Block_copy(aBlock);

  swift_unknownObjectRetain();

  sub_1C1A6F21C();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1C198FE14(&qword_1EDE63F68, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1C19A9E58(&qword_1EBF03E28, &qword_1C1A74490);
  sub_1C198FE5C(&qword_1EDE63F50, &qword_1EBF03E28, &qword_1C1A74490, MEMORY[0x1E69E6328]);
  sub_1C1A6F94C();
  MEMORY[0x1C69051C0](0, v13, v10, v16);
  _Block_release(v16);
  (*(v20 + 8))(v10, v8);
  (*(v11 + 8))(v13, v19);
}

uint64_t sub_1C1A18A14(uint64_t a1, void *a2, void (*a3)(void, __n128))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = sub_1C1A17FE8(a2, 0x6F65646976, 0xE500000000000000, 0x6F65646976uLL, 0xE500000000000000, 0.0, 0.0);
    v7 = sub_1C1A6F64C();
    sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
    v8 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1C1A73CD0;
    v10 = [a2 identifier];
    v11 = sub_1C1A6F3CC();
    v13 = v12;

    *(v9 + 56) = MEMORY[0x1E69E6158];
    *(v9 + 64) = sub_1C199E518();
    *(v9 + 32) = v11;
    *(v9 + 40) = v13;
    v14 = MEMORY[0x1E69E63A8];
    *(v9 + 96) = MEMORY[0x1E69E6370];
    *(v9 + 104) = v14;
    *(v9 + 72) = v6 & 1;
    sub_1C1A6F18C(v7, &dword_1C198D000, v8, "Policy check - %@, fulfillment: %d", 34, 2, v9);

    (a3)(v6 & 1);
  }

  return result;
}

void *sub_1C1A18BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = type metadata accessor for ImpressionInfo(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v44 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v37 - v13);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v16 = result;
  v38 = a4;
  v43 = v10;
  v17 = a5;
  v18 = sub_1C1A6F64C();
  sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
  v41 = &OBJC_IVAR____TtC17PromotedContentUI15AdPolicyManager_launchTimestamps;
  v42 = "n>16@0:8";
  v19 = sub_1C1A6F8EC();
  v40 = sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1C1A73A30;
  *(v20 + 56) = MEMORY[0x1E69E6158];
  v39 = sub_1C199E518();
  *(v20 + 64) = v39;
  *(v20 + 32) = a2;
  *(v20 + 40) = a3;

  sub_1C1A6F18C(v18, &dword_1C198D000, v19, "Policy check - adding impression for: %@", 40, 2, v20);

  if ((v17 & 1) == 0)
  {
    if (v38 <= 101)
    {
      if (v38)
      {
        if (v38 == 100)
        {
          v21 = 0xE700000000000000;
          v22 = 0x746E65746E6F63;
          goto LABEL_4;
        }

        if (v38 == 101)
        {
          v21 = 0xE400000000000000;
          v22 = 1953720684;
          goto LABEL_4;
        }
      }
    }

    else
    {
      if (v38 <= 103)
      {
        if (v38 == 102)
        {
          v21 = 0xE400000000000000;
          v22 = 1684632167;
        }

        else
        {
          v21 = 0xEC0000006C616974;
          v22 = 0x6974737265746E69;
        }

        goto LABEL_4;
      }

      if (v38 == 104)
      {
        v21 = 0xE500000000000000;
        v22 = 0x6F65646976;
        goto LABEL_4;
      }

      if (v38 == 105)
      {
        v21 = 0xE500000000000000;
        v22 = 0x6F69647561;
        goto LABEL_4;
      }
    }
  }

  v21 = 0xE700000000000000;
  v22 = 0x6E776F6E6B6E75;
LABEL_4:
  sub_1C1A6D5CC();
  v24 = v16[10];
  v23 = v16[11];

  *v14 = 0x6F65646976;
  v14[1] = 0xE500000000000000;
  v14[2] = 0x6F65646976;
  v14[3] = 0xE500000000000000;
  v14[4] = v22;
  v14[5] = v21;
  v25 = (v14 + *(v9 + 32));
  *v25 = 0;
  v25[1] = 0;
  v26 = (v14 + *(v9 + 36));
  *v26 = v24;
  v26[1] = v23;
  v27 = v44;
  sub_1C1A1B65C(v14, v44, type metadata accessor for ImpressionInfo);
  swift_beginAccess();
  v28 = v16[24];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16[24] = v28;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v28 = sub_1C19CB390(0, v28[2] + 1, 1, v28);
    v16[24] = v28;
  }

  v31 = v28[2];
  v30 = v28[3];
  if (v31 >= v30 >> 1)
  {
    v28 = sub_1C19CB390((v30 > 1), v31 + 1, 1, v28);
  }

  v28[2] = v31 + 1;
  sub_1C1A1B6C4(v27, v28 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v31, type metadata accessor for ImpressionInfo);
  v16[24] = v28;
  swift_endAccess();
  v32 = sub_1C1A6F65C();
  v33 = sub_1C1A6F8EC();
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1C1A74920;
  v35 = MEMORY[0x1E69E6158];
  v36 = v39;
  *(v34 + 56) = MEMORY[0x1E69E6158];
  *(v34 + 64) = v36;
  *(v34 + 32) = 0x6F65646976;
  *(v34 + 40) = 0xE500000000000000;
  *(v34 + 96) = v35;
  *(v34 + 104) = v36;
  *(v34 + 72) = 0x6F65646976;
  *(v34 + 80) = 0xE500000000000000;
  *(v34 + 136) = v35;
  *(v34 + 144) = v36;
  *(v34 + 112) = v22;
  *(v34 + 120) = v21;
  sub_1C1A6F18C(v32, &dword_1C198D000, v33, "Policy check - adding impression for adType: %{private}@, adFormatType: %{private}@, containerType: %{private}@", 111, 2, v34);

  sub_1C1A1B72C(v14, type metadata accessor for ImpressionInfo);
}

void sub_1C1A190F8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v77 = a7;
  v78 = a8;
  v76 = a6;
  v79 = a5;
  v81 = a1;
  v82 = a2;
  v74 = type metadata accessor for ImpressionInfo(0);
  v75 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v69 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v71 = &v69 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v69 - v20);
  swift_beginAccess();
  v22 = v8[27];
  v73 = a3;
  v87[0] = a3;
  v87[1] = a4;
  v72 = a4;
  v84 = v87;

  v23 = sub_1C1A3B838(sub_1C1A1B924, v83, v22);

  v80 = v9;
  if ((v23 & 1) == 0)
  {
    swift_beginAccess();
    v49 = v9[24];
    v50 = *(v49 + 16);

    if (v50)
    {
      v51 = 0;
      v52 = MEMORY[0x1E69E7CC0];
      while (v51 < *(v49 + 16))
      {
        v53 = (*(v75 + 80) + 32) & ~*(v75 + 80);
        v54 = *(v75 + 72);
        sub_1C1A1B65C(v49 + v53 + v54 * v51, v16, type metadata accessor for ImpressionInfo);
        v55 = *v16;
        v56 = v16[1];
        v57 = *v16 == v81 && v56 == v82;
        if (v57 || (sub_1C1A6FCEC() & 1) != 0 || v55 == v80[10] && v56 == v80[11] || (sub_1C1A6FCEC()) && ((v58 = v16[2], v59 = v16[3], v58 == v73) && v59 == v72 || (sub_1C1A6FCEC() & 1) != 0 || v58 == v80[10] && v59 == v80[11] || (sub_1C1A6FCEC()) && ((v60 = v16[4], v61 = v16[5], v60 == v79) && v61 == v76 || (sub_1C1A6FCEC() & 1) != 0 || v60 == v80[10] && v61 == v80[11] || (sub_1C1A6FCEC()) && ((v62 = (v16 + *(v74 + 36)), v63 = *v62, v64 = v62[1], *v62 == v77) ? (v65 = v64 == v78) : (v65 = 0), v65 || (sub_1C1A6FCEC() & 1) != 0 || v63 == v80[10] && v64 == v80[11] || (sub_1C1A6FCEC()))
        {
          sub_1C1A1B6C4(v16, v13, type metadata accessor for ImpressionInfo);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v85[0] = v52;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1C19AA36C(0, *(v52 + 16) + 1, 1);
            v52 = v85[0];
          }

          v68 = *(v52 + 16);
          v67 = *(v52 + 24);
          if (v68 >= v67 >> 1)
          {
            sub_1C19AA36C((v67 > 1), v68 + 1, 1);
            v52 = v85[0];
          }

          *(v52 + 16) = v68 + 1;
          sub_1C1A1B6C4(v13, v52 + v53 + v68 * v54, type metadata accessor for ImpressionInfo);
        }

        else
        {
          sub_1C1A1B72C(v16, type metadata accessor for ImpressionInfo);
        }

        if (v50 == ++v51)
        {
          goto LABEL_76;
        }
      }

      goto LABEL_78;
    }

LABEL_76:

    return;
  }

  swift_beginAccess();
  v24 = v9[24];
  v25 = *(v24 + 16);

  v70 = v25;
  if (!v25)
  {
    goto LABEL_76;
  }

  v26 = 0;
  v27 = MEMORY[0x1E69E7CC0];
  while (v26 < *(v24 + 16))
  {
    v28 = (*(v75 + 80) + 32) & ~*(v75 + 80);
    v29 = *(v75 + 72);
    v30 = sub_1C1A1B65C(v24 + v28 + v29 * v26, v21, type metadata accessor for ImpressionInfo);
    v31 = *v21;
    v32 = v21[1];
    v33 = *v21 == v81 && v32 == v82;
    if (v33 || (v30 = sub_1C1A6FCEC(), (v30) || v31 == v9[10] && v32 == v9[11] || (v30 = sub_1C1A6FCEC(), (v30)) && ((v72 = v29, v73 = v28, v34 = v80[27], v36 = v21[2], v35 = v21[3], v85[0] = v36, v85[1] = v35, MEMORY[0x1EEE9AC00](v30), *(&v69 - 2) = v85, , v37 = sub_1C1A3B838(sub_1C1A1B960, (&v69 - 4), v34), v9 = v80, , (v37) || v36 == v9[10] && v35 == v9[11] || (sub_1C1A6FCEC()) && ((v38 = v21[4], v39 = v21[5], v38 == v79) && v39 == v76 || (sub_1C1A6FCEC() & 1) != 0 || v38 == v9[10] && v39 == v9[11] || (sub_1C1A6FCEC()) && ((v40 = (v21 + *(v74 + 36)), v41 = *v40, v42 = v40[1], *v40 == v77) ? (v43 = v42 == v78) : (v43 = 0), v43 || (sub_1C1A6FCEC() & 1) != 0 || v41 == v9[10] && v42 == v9[11] || (sub_1C1A6FCEC()))
    {
      sub_1C1A1B6C4(v21, v71, type metadata accessor for ImpressionInfo);
      v44 = swift_isUniquelyReferenced_nonNull_native();
      v86 = v27;
      if ((v44 & 1) == 0)
      {
        sub_1C19AA36C(0, *(v27 + 16) + 1, 1);
        v27 = v86;
      }

      v45 = v73;
      v46 = v72;
      v48 = *(v27 + 16);
      v47 = *(v27 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_1C19AA36C((v47 > 1), v48 + 1, 1);
        v27 = v86;
      }

      *(v27 + 16) = v48 + 1;
      sub_1C1A1B6C4(v71, v27 + v45 + v48 * v46, type metadata accessor for ImpressionInfo);
    }

    else
    {
      sub_1C1A1B72C(v21, type metadata accessor for ImpressionInfo);
    }

    if (v70 == ++v26)
    {
      goto LABEL_76;
    }
  }

  __break(1u);
LABEL_78:
  __break(1u);
}

void sub_1C1A198FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  swift_beginAccess();
  v10 = v8[21];
  v11 = *(v10 + 16);

  if (v11)
  {
    v12 = 0;
    v36 = v11 - 1;
    v13 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v14 = v12;
      if (v12 >= *(v10 + 16))
      {
        break;
      }

      v15 = *(v10 + 32 + 8 * v12);
      if (*(v15 + 16))
      {
        v17 = v9[2];
        v16 = v9[3];

        v18 = sub_1C1991010(v17, v16);
        if (v19)
        {
          v20 = *(*(v15 + 56) + 8 * v18);
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v21 = v20;
            sub_1C1A6F3BC();
          }
        }

        if (*(v15 + 16))
        {
          v22 = sub_1C1991010(v9[4], v9[5]);
          if (v23)
          {
            v24 = *(*(v15 + 56) + 8 * v22);
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              v25 = v24;
              sub_1C1A6F3BC();
            }
          }

          if (*(v15 + 16))
          {
            v26 = sub_1C1991010(v9[6], v9[7]);
            if (v27)
            {
              v28 = *(*(v15 + 56) + 8 * v26);
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                v29 = v28;
                sub_1C1A6F3BC();
              }
            }

            if (*(v15 + 16))
            {
              v30 = sub_1C1991010(v9[8], v9[9]);
              if (v31)
              {
                v32 = *(*(v15 + 56) + 8 * v30);
                objc_opt_self();
                if (swift_dynamicCastObjCClass())
                {
                  v33 = v32;
                  sub_1C1A6F3BC();
                }
              }
            }
          }
        }
      }

      else
      {
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C19AA3B0(0, *(v13 + 16) + 1, 1);
      }

      v35 = *(v13 + 16);
      v34 = *(v13 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_1C19AA3B0((v34 > 1), v35 + 1, 1);
      }

      v12 = v14 + 1;
      *(v13 + 16) = v35 + 1;
      *(v13 + 8 * v35 + 32) = v15;
      if (v36 == v14)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_26:
  }
}

uint64_t sub_1C1A19D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, double a8, double a9)
{
  v128 = a2;
  v123 = type metadata accessor for ImpressionInfo(0);
  v122 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v129 = &v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_1C1A6D5DC();
  v130 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v135 = &v116 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1A6D5CC();
  v19 = *(a1 + 16);
  if (!v19)
  {
LABEL_65:
    v99 = 1;
    goto LABEL_79;
  }

  v138 = a1 + 32;
  v133 = v9;
  swift_beginAccess();
  v126 = 0;
  v20 = 0;
  v143 = "n>16@0:8";
  v144 = &OBJC_IVAR____TtC17PromotedContentUI15AdPolicyManager_launchTimestamps;
  v119 = a3;
  v120 = a4;
  v22 = a3 == 0x6974737265746E69 && a4 == 0xEC0000006C616974;
  v124 = v22;
  v116 = a5;
  v117 = a6;
  v24 = a5 == 0x6974737265746E69 && a6 == 0xEC0000006C616974;
  v118 = v24;
  v121 = 1;
  v137 = xmmword_1C1A73CD0;
  v134 = xmmword_1C1A73A30;
  v125 = 1;
  v127 = 1;
  v132 = 1;
  v136 = v19;
  while (2)
  {
    while (2)
    {
      while (2)
      {
        v25 = v20;
        while (1)
        {
          if (v25 >= v19)
          {
            __break(1u);
LABEL_81:
            __break(1u);
            goto LABEL_82;
          }

          v20 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            goto LABEL_81;
          }

          v26 = *(v138 + 8 * v25);
          if (!*(v26 + 16))
          {
            goto LABEL_16;
          }

          v27 = sub_1C1991010(0x79547963696C6F70, 0xEA00000000006570);
          if ((v28 & 1) == 0 || (v146 = *(*(v26 + 56) + 8 * v27), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) == 0) || !*(v26 + 16) || (v29 = v145, v30 = sub_1C1991010(0x61567963696C6F70, 0xEB0000000065756CLL), (v31 & 1) == 0))
          {

            goto LABEL_16;
          }

          v32 = *(*(v26 + 56) + 8 * v30);
          swift_unknownObjectRetain();

          objc_opt_self();
          v33 = swift_dynamicCastObjCClass();
          if (!v33)
          {
            swift_unknownObjectRelease();
            goto LABEL_16;
          }

          v34 = v33;
          v141 = v32;
          v142 = v25 + 1;
          v35 = sub_1C1A6F65C();
          v139 = sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
          v36 = sub_1C1A6F8EC();
          v140 = sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
          v37 = swift_allocObject();
          *(v37 + 16) = v137;
          v38 = a7;
          v39 = [a7 identifier];
          v40 = sub_1C1A6F3CC();
          v42 = v41;

          *(v37 + 56) = MEMORY[0x1E69E6158];
          v43 = sub_1C199E518();
          *(v37 + 32) = v40;
          *(v37 + 40) = v42;
          *(v37 + 96) = MEMORY[0x1E69E6530];
          *(v37 + 104) = MEMORY[0x1E69E65A8];
          *(v37 + 64) = v43;
          *(v37 + 72) = v29;
          sub_1C1A6F18C(v35, &dword_1C198D000, v36, "Policy check - %{public}@, there is a policy to validate of type: %d", 68, 2, v37);

          if (v29 != 3)
          {
            break;
          }

          sub_1C1A1AD2C(v135, v34);
          a7 = v38;
          if (v44)
          {
            goto LABEL_58;
          }

          v45 = sub_1C1A6F65C();
          v46 = sub_1C1A6F8EC();
          v47 = swift_allocObject();
          *(v47 + 16) = v134;
          v48 = [v38 identifier];
          v49 = sub_1C1A6F3CC();
          v51 = v50;

          *(v47 + 56) = MEMORY[0x1E69E6158];
          *(v47 + 64) = v43;
          *(v47 + 32) = v49;
          *(v47 + 40) = v51;
          sub_1C1A6F18C(v45, &dword_1C198D000, v46, "Policy check - %{public}@, beforeSessionTimer (first ad experience) is not fulfilled", 84, 2, v47);

          swift_unknownObjectRelease();
          v132 = 0;
          ++v25;
          v19 = v136;
          if (v142 == v136)
          {
            goto LABEL_76;
          }
        }

        if (v29 > 3)
        {
          a7 = v38;
          if (v29 == 4)
          {
            v75 = *(*(v133 + 192) + 16);
            if (v75 >= [v34 integerValue])
            {
              goto LABEL_58;
            }

            v76 = sub_1C1A6F65C();
            v77 = sub_1C1A6F8EC();
            v78 = swift_allocObject();
            *(v78 + 16) = v134;
            v79 = [v38 identifier];
            v80 = sub_1C1A6F3CC();
            v82 = v81;

            *(v78 + 56) = MEMORY[0x1E69E6158];
            *(v78 + 64) = v43;
            *(v78 + 32) = v80;
            *(v78 + 40) = v82;
            sub_1C1A6F18C(v76, &dword_1C198D000, v77, "Policy check - %{public}@, beforeSessionSpacing (first ad experience) is not fulfilled", 86, 2, v78);

            swift_unknownObjectRelease();
            v127 = 0;
            v19 = v136;
            v20 = v142;
            if (v142 != v136)
            {
              continue;
            }
          }

          else
          {
            if (v29 != 7)
            {
              goto LABEL_58;
            }

            v60 = sub_1C1A6F65C();
            v61 = sub_1C1A6F8EC();
            v62 = swift_allocObject();
            *(v62 + 16) = v134;
            v63 = [v38 identifier];
            v64 = sub_1C1A6F3CC();
            v66 = v65;

            *(v62 + 56) = MEMORY[0x1E69E6158];
            *(v62 + 64) = v43;
            *(v62 + 32) = v64;
            *(v62 + 40) = v66;
            sub_1C1A6F18C(v60, &dword_1C198D000, v61, "Policy check - %{public}@, timerOrSpacingPolicy is true. Will use OR condition.", 79, 2, v62);

            swift_unknownObjectRelease();
            v126 = 1;
            v19 = v136;
            v20 = v142;
            if (v142 != v136)
            {
              continue;
            }

            if (v132 & v127)
            {
LABEL_62:
              if ((v125 | v121))
              {
                goto LABEL_65;
              }

LABEL_63:
              [objc_msgSend(a7 metricsHelper];
              swift_unknownObjectRelease();
              v92 = sub_1C1A6F65C();
              sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
              v93 = sub_1C1A6F8EC();
              sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
              v94 = swift_allocObject();
              *(v94 + 16) = v134;
              v95 = [a7 identifier];
              v96 = sub_1C1A6F3CC();
              v98 = v97;

              *(v94 + 56) = MEMORY[0x1E69E6158];
              *(v94 + 64) = sub_1C199E518();
              *(v94 + 32) = v96;
              *(v94 + 40) = v98;
              sub_1C1A6F18C(v92, &dword_1C198D000, v93, "Policy check - %{public}@, collapsing ad due to neither timerOrSpacing fulfilled.", 81, 2, v94);

              goto LABEL_78;
            }
          }

          goto LABEL_76;
        }

        break;
      }

      a7 = v38;
      if (!v29)
      {
        sub_1C1A1B7F4(v135, v128, v34);
        if (v67)
        {
          goto LABEL_58;
        }

        v68 = sub_1C1A6F65C();
        v69 = sub_1C1A6F8EC();
        v70 = swift_allocObject();
        *(v70 + 16) = v134;
        v71 = [v38 identifier];
        v72 = sub_1C1A6F3CC();
        v74 = v73;

        *(v70 + 56) = MEMORY[0x1E69E6158];
        *(v70 + 64) = v43;
        *(v70 + 32) = v72;
        *(v70 + 40) = v74;
        sub_1C1A6F18C(v68, &dword_1C198D000, v69, "Policy check - %{public}@, timer is not fulfilled", 49, 2, v70);

        swift_unknownObjectRelease();
        v125 = 0;
        v19 = v136;
        v20 = v142;
        if (v142 != v136)
        {
          continue;
        }

        if (v132 & v127)
        {
          if (v126)
          {
            if (v121)
            {
              goto LABEL_65;
            }

            goto LABEL_63;
          }

LABEL_82:
          v100 = 9001;
          goto LABEL_69;
        }

LABEL_76:
        v108 = sub_1C1A6F65C();
        sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
        v109 = sub_1C1A6F8EC();
        sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
        v110 = swift_allocObject();
        *(v110 + 16) = v134;
        v111 = [a7 identifier];
        v112 = sub_1C1A6F3CC();
        v114 = v113;

        *(v110 + 56) = MEMORY[0x1E69E6158];
        *(v110 + 64) = sub_1C199E518();
        *(v110 + 32) = v112;
        *(v110 + 40) = v114;
        sub_1C1A6F18C(v108, &dword_1C198D000, v109, "Policy check - %{public}@, collapsing ad due to firstAdExperience.", 66, 2, v110);

        [objc_msgSend(a7 metricsHelper)];
        goto LABEL_77;
      }

      break;
    }

    if (v29 != 1)
    {
      goto LABEL_58;
    }

    if (v124 || ((sub_1C1A6FCEC() | v118) & 1) != 0 || (sub_1C1A6FCEC() & 1) != 0)
    {
      v52 = [v38 numOfArticlesSinceInterstitial];
      if (v52 < [v34 integerValue])
      {
        goto LABEL_37;
      }

LABEL_58:
      swift_unknownObjectRelease();
    }

    else
    {
      v83 = *(v128 + 16);
      if (!v83)
      {
        goto LABEL_58;
      }

      v84 = (v129 + *(v123 + 32));
      v85 = v128 + ((*(v122 + 80) + 32) & ~*(v122 + 80));
      v86 = *(v122 + 72);
      while (1)
      {
        v87 = v129;
        sub_1C1A1B65C(v85, v129, type metadata accessor for ImpressionInfo);
        v89 = *v84;
        v88 = v84[1];
        sub_1C1A1B72C(v87, type metadata accessor for ImpressionInfo);
        if (v89 != 0.0 || v88 != 0.0)
        {
          if (qword_1EBF035A0 != -1)
          {
            swift_once();
          }

          v90 = vabdd_f64(v88, a9) / *&qword_1EBF07670;
          [v34 floatValue];
          if (v91 > v90)
          {
            break;
          }
        }

        v85 += v86;
        if (!--v83)
        {
          goto LABEL_58;
        }
      }

LABEL_37:
      v53 = sub_1C1A6F65C();
      v54 = sub_1C1A6F8EC();
      v55 = swift_allocObject();
      *(v55 + 16) = v134;
      v56 = [a7 identifier];
      v57 = sub_1C1A6F3CC();
      v59 = v58;

      *(v55 + 56) = MEMORY[0x1E69E6158];
      *(v55 + 64) = v43;
      *(v55 + 32) = v57;
      *(v55 + 40) = v59;
      sub_1C1A6F18C(v53, &dword_1C198D000, v54, "Policy check - %{public}@, spacing is not fulfilled", 51, 2, v55);

      swift_unknownObjectRelease();
      v121 = 0;
    }

    v19 = v136;
    v20 = v142;
LABEL_16:
    if (v20 != v19)
    {
      continue;
    }

    break;
  }

  if ((v132 & v127 & 1) == 0)
  {
    goto LABEL_76;
  }

  if (v126)
  {
    goto LABEL_62;
  }

  if (v125 & v121)
  {
    goto LABEL_65;
  }

  if (v125)
  {
    v100 = 9002;
  }

  else
  {
    v100 = 9001;
  }

LABEL_69:
  v101 = sub_1C1A6F65C();
  sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
  v102 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
  v103 = swift_allocObject();
  *(v103 + 16) = v134;
  v104 = [a7 identifier];
  v105 = sub_1C1A6F3CC();
  v107 = v106;

  *(v103 + 56) = MEMORY[0x1E69E6158];
  *(v103 + 64) = sub_1C199E518();
  *(v103 + 32) = v105;
  *(v103 + 40) = v107;
  sub_1C1A6F18C(v101, &dword_1C198D000, v102, "Policy check - %{private}@, collapsing ad due to either timer/spacing not fulfilled.", 84, 2, v103);

  [objc_msgSend(a7 metricsHelper)];
LABEL_77:
  swift_unknownObjectRelease();
LABEL_78:
  v99 = 0;
LABEL_79:
  (*(v130 + 8))(v135, v131);
  return v99;
}

void sub_1C1A1AD2C(uint64_t a1, void *a2)
{
  v4 = sub_1C1A6D5DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  v11 = [objc_opt_self() mainBundle];
  v12 = [v11 bundleIdentifier];

  if (v12)
  {
    v13 = sub_1C1A6F3CC();
    v15 = v14;

    swift_beginAccess();
    v16 = *(v2 + 208);
    if (*(v16 + 16))
    {
      v17 = sub_1C1991010(v13, v15);
      if (v18)
      {
        (*(v5 + 16))(v7, *(v16 + 56) + *(v5 + 72) * v17, v4);
        (*(v5 + 32))(v10, v7, v4);
        swift_endAccess();

        sub_1C1A6D50C();
        if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (v19 > -9.22337204e18)
        {
          if (v19 < 9.22337204e18)
          {
            [a2 integerValue];
            (*(v5 + 8))(v10, v4);
            return;
          }

          goto LABEL_12;
        }

        __break(1u);
LABEL_12:
        __break(1u);
        return;
      }
    }

    swift_endAccess();
  }
}

uint64_t sub_1C1A1AF94()
{

  return v0;
}

uint64_t sub_1C1A1B034()
{
  sub_1C1A1AF94();

  return swift_deallocClassInstance();
}

void sub_1C1A1B0F8(uint64_t a1)
{
  sub_1C1A6D5DC();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGPoint(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C1A1B1DC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1A1B214(uint64_t a1)
{
  result = sub_1C1A6D5DC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_1C1A1B2A4(void *a1)
{
  v2 = sub_1C1A6D62C();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 bestRepresentation];
  if (result)
  {
    v8 = result;
    v9 = [result adPolicyData];
    if (v9)
    {
      v10 = v9;
      v11 = sub_1C1A6DDDC();

      if (!v11)
      {
LABEL_10:
        swift_unknownObjectRelease();
        return 0;
      }

      v12 = sub_1C1A6E03C();
      if (v12 == 15001)
      {
        v16 = [v8 id];
        sub_1C1A6D60C();

        v17 = sub_1C1A6D5EC();
        swift_unknownObjectRelease();
        (*(v3 + 8))(v6, v2);
        return v17;
      }

      if (v12 == 15005)
      {
        sub_1C1A6E33C();
        if (swift_dynamicCastClass())
        {
          swift_unknownObjectRetain();
          v13 = sub_1C1A6E2EC();
          swift_unknownObjectRelease();
          if (v13)
          {
            v14 = [v13 stringValue];

            v15 = sub_1C1A6F3CC();
            swift_unknownObjectRelease();
            return v15;
          }
        }

        goto LABEL_10;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

uint64_t sub_1C1A1B4E4(void *a1)
{
  v1 = [a1 bestRepresentation];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 adPolicyData];
    if (v3)
    {
      v4 = v3;
      v5 = sub_1C1A6DDFC();
    }

    else
    {
      v5 = 0;
    }

    v8 = [v2 adPolicyData];
    if (v8)
    {
      v9 = v8;
      sub_1C1A6DDEC();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v6 = sub_1C1A6F65C();
    sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
    v7 = sub_1C1A6F8EC();
    sub_1C1A6F18C(v6, &dword_1C198D000, v7, "Policy Check - best representation is nil.", 42, 2, MEMORY[0x1E69E7CC0]);

    return 0;
  }

  return v5;
}

uint64_t sub_1C1A1B65C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C1A1B6C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C1A1B72C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C1A1B78C(uint64_t a1)
{
  v2 = sub_1C19A9E58(&qword_1EBF03C48, &qword_1C1A74058);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C1A1B7F4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = 0;
  v5 = *(a2 + 16);
  do
  {
    v6 = v4;
    if (v5 == v4)
    {
      break;
    }

    type metadata accessor for ImpressionInfo(0);
    sub_1C1A6D50C();
    if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_9:
      __break(1u);
LABEL_10:
      __break(1u);
      return;
    }

    if (v7 <= -9.22337204e18)
    {
      goto LABEL_9;
    }

    if (v7 >= 9.22337204e18)
    {
      goto LABEL_10;
    }

    v8 = v7;
    v9 = [a3 integerValue];
    v4 = v6 + 1;
  }

  while (v9 <= v8);
}

void *sub_1C1A1B988(uint64_t a1)
{
  v27 = a1;
  v2 = sub_1C1A6D48C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  v9 = type metadata accessor for SponsorshipAdPreviewConfiguration(0);
  v10 = (v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1A6EB6C();
  v13 = sub_1C1A6EA4C();
  sub_1C1A6EB0C();
  v26 = [objc_opt_self() sharedApplication];
  sub_1C1A0DB4C(a1, v12, v14);
  v15 = &v12[v10[13]];
  v17 = *v15;
  v16 = v15[1];
  v18 = *(v3 + 16);
  v18(v8, &v12[v10[14]], v2);
  v18(v5, &v12[v10[15]], v2);
  objc_allocWithZone(type metadata accessor for MastheadSponsorshipAdView());

  v19 = sub_1C19D00B0(v17, v16, v8, v5);
  sub_1C1A0DBB0(v12, v20);
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  v21 = v28;
  *&v28[OBJC_IVAR____TtC17PromotedContentUI33PromotedMastheadSponsorshipAdView_mastheadSponsorshipLockupView] = v19;
  v22 = sub_1C1A0DC54(v13, 0, 0, v26, v21);

  sub_1C1A0DBB0(v27, v23);
  return v22;
}

char *sub_1C1A1BC24()
{
  sub_1C198FB8C(0, &qword_1EDE63970, 0x1E695E000);
  v0 = sub_1C19CEFB8();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = [*(v0 + OBJC_IVAR____TtC17PromotedContentUI15AppStoreSession_context) promotedContentWithoutFetchWithType:6 size:{0.0, 0.0}];
  if (!v2)
  {

    return 0;
  }

  v3 = v2;
  sub_1C1A6E9EC();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v5 = v4;
  type metadata accessor for AppStoreDataProviderSession(0);
  v6 = swift_allocObject();
  *(v6 + 3) = 0;
  *(v6 + 4) = 0;
  v7 = OBJC_IVAR____TtC17PromotedContentUI27AppStoreDataProviderSession_lastFetch;
  swift_unknownObjectRetain_n();
  sub_1C1A6D4FC();
  *(v6 + 2) = v5;
  v8 = *&v1[OBJC_IVAR____TtC17PromotedContentUI15AppStoreSession_apContentData];
  if (!(v8 >> 62))
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_14:
    v11 = 0;
    goto LABEL_15;
  }

  result = sub_1C1A6F9EC();
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_6:
  if ((v8 & 0xC000000000000001) != 0)
  {

    v20 = v7;
    v19 = MEMORY[0x1C69055B0](0, v8);

    v10 = v19;
    v7 = v20;
    goto LABEL_9;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v8 + 32);
LABEL_9:
    *(v6 + 3) = v10;
    v11 = v10 != 0;
LABEL_15:
    *(v6 + 4) = v3;
    v12 = OBJC_IVAR____TtC17PromotedContentUI15AppStoreSession_start;
    swift_beginAccess();
    v13 = sub_1C1A6D5DC();
    (*(*(v13 - 8) + 24))(&v6[v7], &v1[v12], v13);
    swift_endAccess();
    v14 = sub_1C1A6F64C();
    sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
    v15 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
    v16 = swift_allocObject();
    v17 = MEMORY[0x1E69E6530];
    *(v16 + 16) = xmmword_1C1A73A30;
    v18 = MEMORY[0x1E69E65A8];
    *(v16 + 56) = v17;
    *(v16 + 64) = v18;
    *(v16 + 32) = v11;
    sub_1C1A6F18C(v14, &dword_1C198D000, v15, "[PCUI] Restored session with %d items", v20);

    swift_unknownObjectRelease();

    return v6;
  }

  __break(1u);
  return result;
}

void sub_1C1A1BF34(uint64_t a1)
{
  v2 = sub_1C1A6D5DC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v7 = v4;

    v8 = sub_1C1A6F64C();
    sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
    v9 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1C1A73A30;
    v11 = *(a1 + 24) != 0;
    v12 = MEMORY[0x1E69E65A8];
    *(v10 + 56) = MEMORY[0x1E69E6530];
    *(v10 + 64) = v12;
    *(v10 + 32) = v11;
    sub_1C1A6F18C(v8, &dword_1C198D000, v9, "[PCUI] Saving session with %d items", v25);

    v13 = *(a1 + 24);
    v25 = v13;
    if (v13)
    {
      sub_1C19A9E58(&qword_1EBF03E88, &qword_1C1A74730);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1C1A74830;
      *(v14 + 32) = v13;
    }

    else
    {
      v14 = MEMORY[0x1E69E7CC0];
    }

    v17 = *(a1 + 16);
    v18 = OBJC_IVAR____TtC17PromotedContentUI27AppStoreDataProviderSession_lastFetch;
    swift_beginAccess();
    v19 = *(v3 + 16);
    v19(v6, a1 + v18, v7);
    v20 = type metadata accessor for AppStoreSession(0);
    v21 = objc_allocWithZone(v20);
    *&v21[OBJC_IVAR____TtC17PromotedContentUI15AppStoreSession_context] = v17;
    *&v21[OBJC_IVAR____TtC17PromotedContentUI15AppStoreSession_apContentData] = v14;
    v19(&v21[OBJC_IVAR____TtC17PromotedContentUI15AppStoreSession_start], v6, v7);
    v26.receiver = v21;
    v26.super_class = v20;
    v22 = v25;
    v23 = v17;
    v24 = objc_msgSendSuper2(&v26, sel_init);
    (*(v3 + 8))(v6, v7);
    sub_1C198FB8C(0, &qword_1EDE63970, 0x1E695E000);
    sub_1C19CF178(v24);
  }

  else
  {
    v15 = sub_1C1A6F64C();
    sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
    v16 = sub_1C1A6F8EC();
    sub_1C1A6F18C(v15, &dword_1C198D000, v16, "[PCUI] Removing session", 23, 2, MEMORY[0x1E69E7CC0]);

    sub_1C198FB8C(0, &qword_1EDE63970, 0x1E695E000);
    sub_1C19CF178(0);
  }
}

id sub_1C1A1C3FC()
{
  result = [objc_allocWithZone(MEMORY[0x1E69C6140]) init];
  qword_1EDE63550 = result;
  return result;
}

id sub_1C1A1C434(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_1C1A6F39C();
  }

  else
  {
    v4 = 0;
  }

  [objc_opt_self() setProxyURL_];

  sub_1C198FB8C(0, &qword_1EDE63F38, 0x1E69E9610);
  sub_1C1A6F6BC();

  return [a3 endRequests];
}

void sub_1C1A1C4DC()
{
  if ((byte_1EDE63538 & 1) == 0)
  {
    [objc_opt_self() start];
    byte_1EDE63538 = 1;
  }
}

double sub_1C1A1C524(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_1C1A6F3CC();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v2(v3, v5);

  return result;
}

void *sub_1C1A1C5A0(void *result)
{
  if (result)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v1 = result;
      swift_unknownObjectRetain();
      v2 = sub_1C1A6F64C();
      sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
      v3 = sub_1C1A6F8EC();
      sub_1C1A6F18C(v2, &dword_1C198D000, v3, "[PCUI] Overriding user agent value for proxy request.", 53, 2, MEMORY[0x1E69E7CC0]);

      v4 = [v1 sendWebIdentifier];
      LOBYTE(v1) = [v4 BOOLValue];

      byte_1EDE63529 = v1;

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id sub_1C1A1C6E0(uint64_t a1, uint64_t a2)
{
  if (qword_1EDE63540 != -1)
  {
    swift_once();
  }

  v4 = [qword_1EDE63550 webProcessConfigurationWithBackgroundPriority];
  v5 = type metadata accessor for PromotedContentWebView();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView__processDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v6[OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView_webProcessProxy] = 0;
  v7 = &v6[OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView_remoteObjectInterface];
  *v7 = 0u;
  v7[1] = 0u;
  v6[OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView_browserContextControllerDidLoad] = 0;
  v8 = OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView_unfairLock;
  v9 = objc_allocWithZone(MEMORY[0x1E69861D8]);
  v10 = v4;
  *&v6[v8] = [v9 initWithOptions_];
  v11 = &v6[OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView_adIdentifier];
  *v11 = a1;
  v11[1] = a2;
  *&v6[OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView_maxRequestCount] = 100;
  v24.receiver = v6;
  v24.super_class = v5;

  v12 = objc_msgSendSuper2(&v24, sel_initWithFrame_configuration_, v10, 0.0, 0.0, 0.0, 0.0);
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 clearColor];
  [v14 setBackgroundColor_];

  v16 = sub_1C1A6F39C();
  [v14 setAccessibilityIdentifier_];

  [v14 setAccessibilityIgnoresInvertColors_];
  v17 = [v14 scrollView];
  [v17 setScrollEnabled_];

  v18 = [v14 scrollView];
  [v18 setContentInsetAdjustmentBehavior_];

  [v14 setAllowsLinkPreview_];
  if (byte_1EDE63529 == 1)
  {
    v19 = sub_1C1A6F64C();
    sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
    v20 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1C1A73A30;
    *(v21 + 56) = MEMORY[0x1E69E6158];
    *(v21 + 64) = sub_1C199E518();
    *(v21 + 32) = a1;
    *(v21 + 40) = a2;

    sub_1C1A6F18C(v19, &dword_1C198D000, v20, "[PCUI] Fallback to old user agent string for promoted content (%{public}@)", 74, 2, v21);

    v22 = sub_1C1A6F39C();
    [v14 updateUserAgentWithAdIdentifier:v22 andMaxRequestCount:100];
  }

  sub_1C1A65AA0();

  return v14;
}

id sub_1C1A1CAB4(void *a1, char a2)
{
  v75 = sub_1C1A6D62C();
  v4 = *(v75 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v75).n128_u64[0];
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((byte_1EDE63538 & 1) == 0)
  {
    v8 = [objc_allocWithZone(MEMORY[0x1E698A048]) initWithDeliveryBlock_];
    v9 = [v8 proxyURL];
    [v8 endRequests];
    v10 = objc_opt_self();
    [v10 setProxyURL_];

    [v10 start];
    byte_1EDE63538 = 1;
  }

  v76 = [a1 bestRepresentation];
  if (qword_1EDE63540 != -1)
  {
    swift_once();
  }

  v11 = &selRef_webProcessConfigurationWithBackgroundPriority;
  if (a2)
  {
    v11 = &selRef_videoConfiguration;
    v12 = -1;
  }

  else
  {
    v12 = 100;
  }

  v13 = [qword_1EDE63550 *v11];
  v14 = sub_1C1A6F67C();
  v15 = sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
  v78 = "n>16@0:8";
  v79 = "iderSessionPersistence";
  v81 = v15;
  v16 = sub_1C1A6F8EC();
  v80 = sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
  v17 = swift_allocObject();
  v77 = xmmword_1C1A73A30;
  *(v17 + 16) = xmmword_1C1A73A30;
  v83 = a1;
  v18 = [a1 identifier];
  v19 = sub_1C1A6F3CC();
  v21 = v20;

  *(v17 + 56) = MEMORY[0x1E69E6158];
  v82 = sub_1C199E518();
  *(v17 + 64) = v82;
  *(v17 + 32) = v19;
  *(v17 + 40) = v21;
  sub_1C1A6F18C(v14, &dword_1C198D000, v16, "[PCUI] Creating a webview for pc (%@)", 37, 2, v17);

  v22 = [objc_opt_self() nonPersistentDataStore];
  [v13 setWebsiteDataStore_];

  sub_1C1A6D61C();
  v23 = sub_1C1A6D5EC();
  v25 = v24;
  (*(v4 + 8))(v7, v75);
  v26 = type metadata accessor for PromotedContentWebView();
  v27 = objc_allocWithZone(v26);
  *&v27[OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView__processDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v27[OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView_webProcessProxy] = 0;
  v28 = &v27[OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView_remoteObjectInterface];
  *v28 = 0u;
  v28[1] = 0u;
  v27[OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView_browserContextControllerDidLoad] = 0;
  v29 = OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView_unfairLock;
  v30 = objc_allocWithZone(MEMORY[0x1E69861D8]);

  *&v27[v29] = [v30 initWithOptions_];
  v31 = &v27[OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView_adIdentifier];
  *v31 = v23;
  v31[1] = v25;
  v74 = v26;
  v75 = v12;
  *&v27[OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView_maxRequestCount] = v12;
  v84.receiver = v27;
  v84.super_class = v26;
  v32 = objc_msgSendSuper2(&v84, sel_initWithFrame_configuration_, v13, 0.0, 0.0, 0.0, 0.0);
  v33 = objc_opt_self();
  v34 = v32;
  v35 = [v33 clearColor];
  [v34 setBackgroundColor_];

  v36 = sub_1C1A6F39C();
  [v34 setAccessibilityIdentifier_];

  [v34 setAccessibilityIgnoresInvertColors_];
  v37 = [v34 scrollView];
  [v37 setScrollEnabled_];

  v38 = [v34 scrollView];
  [v38 setContentInsetAdjustmentBehavior_];

  [v34 setAllowsLinkPreview_];
  [v34 setupInternalProperties];
  if (byte_1EDE63529 == 1)
  {
    v39 = sub_1C1A6F64C();
    v40 = sub_1C1A6F8EC();
    v41 = v23;
    v42 = swift_allocObject();
    *(v42 + 16) = v77;
    v43 = [v83 identifier];
    v44 = sub_1C1A6F3CC();
    v46 = v45;

    v47 = v82;
    *(v42 + 56) = MEMORY[0x1E69E6158];
    *(v42 + 64) = v47;
    *(v42 + 32) = v44;
    *(v42 + 40) = v46;
    sub_1C1A6F18C(v39, &dword_1C198D000, v40, "[PCUI] Fallback to old user agent string for promoted content (%{public}@)", 74, 2, v42);

    v23 = v41;

    v48 = sub_1C1A6F39C();
    [v34 updateUserAgentWithAdIdentifier:v48 andMaxRequestCount:v75];
  }

  if (!v76)
  {
    goto LABEL_19;
  }

  sub_1C1A6E33C();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_19;
  }

  swift_unknownObjectRetain();
  v49 = sub_1C1A6E32C();
  if (!v50)
  {
    swift_unknownObjectRelease();
LABEL_19:

    v64 = sub_1C1A6F66C();
    v65 = sub_1C1A6F8EC();
    v66 = swift_allocObject();
    *(v66 + 16) = v77;
    v67 = [v83 identifier];
    v68 = sub_1C1A6F3CC();
    v70 = v69;

    v71 = v82;
    *(v66 + 56) = MEMORY[0x1E69E6158];
    *(v66 + 64) = v71;
    *(v66 + 32) = v68;
    *(v66 + 40) = v70;
    sub_1C1A6F18C(v64, &dword_1C198D000, v65, "[PCUI] Skipped loading html for (%{public}@) because there was no html", 70, 2, v66);

    goto LABEL_20;
  }

  v51 = HIBYTE(v50) & 0xF;
  if ((v50 & 0x2000000000000000) == 0)
  {
    v51 = v49 & 0xFFFFFFFFFFFFLL;
  }

  if (!v51)
  {
    swift_unknownObjectRelease();

    goto LABEL_19;
  }

  LODWORD(v77) = sub_1C1A6F67C();
  v81 = sub_1C1A6F8EC();
  v52 = v23;
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1C1A74920;
  v54 = [v83 identifier];
  v55 = sub_1C1A6F3CC();
  v57 = v56;

  v58 = MEMORY[0x1E69E6158];
  v59 = v82;
  *(v53 + 56) = MEMORY[0x1E69E6158];
  *(v53 + 64) = v59;
  *(v53 + 32) = v55;
  *(v53 + 40) = v57;
  *(v53 + 96) = v58;
  *(v53 + 104) = v59;
  *(v53 + 72) = v52;
  *(v53 + 80) = v25;
  *(v53 + 136) = v74;
  *(v53 + 144) = sub_1C1A1D3D0();
  *(v53 + 112) = v34;
  v60 = v34;
  v61 = v81;
  sub_1C1A6F18C(v77, &dword_1C198D000, v81, "[PCUI] Promoted content (%{public}@) started loading html into %{public}@ WebView (%{mask.hash}p)", 97, 2, v53);

  v62 = sub_1C1A6F39C();

  v63 = [v60 loadHTMLString:v62 baseURL:0];
  swift_unknownObjectRelease();

LABEL_20:
  sub_1C1A65AA0();

  return v34;
}

unint64_t sub_1C1A1D3D0()
{
  result = qword_1EDE637F8;
  if (!qword_1EDE637F8)
  {
    type metadata accessor for PromotedContentWebView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE637F8);
  }

  return result;
}

id sub_1C1A1D434()
{
  v1 = OBJC_IVAR____TtC17PromotedContentUI13BlurImageView____lazy_storage___visualEffectView;
  v2 = *(v0 + OBJC_IVAR____TtC17PromotedContentUI13BlurImageView____lazy_storage___visualEffectView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17PromotedContentUI13BlurImageView____lazy_storage___visualEffectView);
  }

  else
  {
    v4 = [objc_opt_self() effectWithStyle_];
    v5 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1C1A1D500()
{
  v1 = OBJC_IVAR____TtC17PromotedContentUI13BlurImageView____lazy_storage___blurImageView;
  v2 = *(v0 + OBJC_IVAR____TtC17PromotedContentUI13BlurImageView____lazy_storage___blurImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17PromotedContentUI13BlurImageView____lazy_storage___blurImageView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
    [v4 setClipsToBounds_];
    [v4 setContentMode_];
    [v4 setAccessibilityIgnoresInvertColors_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];

    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1C1A1D660(uint64_t a1, uint64_t a2, double a3)
{
  *&v3[OBJC_IVAR____TtC17PromotedContentUI13BlurImageView_image] = 0;
  *&v3[OBJC_IVAR____TtC17PromotedContentUI13BlurImageView____lazy_storage___visualEffectView] = 0;
  *&v3[OBJC_IVAR____TtC17PromotedContentUI13BlurImageView____lazy_storage___blurImageView] = 0;
  *&v3[OBJC_IVAR____TtC17PromotedContentUI13BlurImageView_style] = a1;
  *&v3[OBJC_IVAR____TtC17PromotedContentUI13BlurImageView_imageViewContentMode] = a2;
  *&v3[OBJC_IVAR____TtC17PromotedContentUI13BlurImageView_aspectRatio] = a3;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for BlurImageView();
  v4 = objc_msgSendSuper2(&v9, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v4 setClipsToBounds_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v4 setOpaque_];
  v5 = [v4 layer];
  [v5 setAllowsGroupOpacity_];

  v6 = sub_1C1A1D500();
  [v4 addSubview_];

  v7 = sub_1C1A1D434();
  [v4 addSubview_];

  sub_1C1A1D7B8();
  return v4;
}

void sub_1C1A1D7B8()
{
  v1 = objc_opt_self();
  sub_1C19A9E58(&qword_1EBF03E88, &qword_1C1A74730);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C1A76CA0;
  v3 = sub_1C1A1D434();
  v4 = [v3 topAnchor];

  v5 = [v0 topAnchor];
  v6 = [v4 constraintEqualToAnchor_];

  *(v2 + 32) = v6;
  v7 = OBJC_IVAR____TtC17PromotedContentUI13BlurImageView____lazy_storage___visualEffectView;
  v8 = [*&v0[OBJC_IVAR____TtC17PromotedContentUI13BlurImageView____lazy_storage___visualEffectView] leadingAnchor];
  v9 = [v0 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v2 + 40) = v10;
  v11 = [*&v0[v7] trailingAnchor];
  v12 = [v0 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v2 + 48) = v13;
  v14 = [*&v0[v7] bottomAnchor];
  v15 = [v0 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v2 + 56) = v16;
  v17 = sub_1C1A1D500();
  v18 = [v17 leadingAnchor];

  v19 = [v0 leadingAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v2 + 64) = v20;
  v21 = OBJC_IVAR____TtC17PromotedContentUI13BlurImageView____lazy_storage___blurImageView;
  v22 = [*&v0[OBJC_IVAR____TtC17PromotedContentUI13BlurImageView____lazy_storage___blurImageView] trailingAnchor];
  v23 = [v0 trailingAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v2 + 72) = v24;
  v25 = [*&v0[v21] bottomAnchor];
  v26 = [v0 bottomAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  *(v2 + 80) = v27;
  v28 = [*&v0[v21] heightAnchor];
  v29 = [*&v0[v21] widthAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 multiplier:*&v0[OBJC_IVAR____TtC17PromotedContentUI13BlurImageView_aspectRatio]];

  *(v2 + 88) = v30;
  sub_1C19C2864();
  v31 = sub_1C1A6F50C();

  [v1 activateConstraints_];
}

id sub_1C1A1DBC0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BlurImageView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1C1A1DC74(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1C19A9E58(&qword_1EBF03C60, &unk_1C1A74070);
    v2 = sub_1C1A6FBEC();
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

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_1C19A1A5C(*(a1 + 56) + 32 * v12, v35);
    *&v34 = v15;
    *(&v34 + 1) = v14;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1C19916E4(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1C19916E4(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1C19916E4(v31, v32);
    v16 = sub_1C1A6FA4C();
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
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
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v24;
    *(v10 + 16) = v25;
    *(v10 + 32) = v26;
    sub_1C19916E4(v32, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_1C1A1DF3C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1C19A9E58(&qword_1EBF03D08, &qword_1C1A74120);
    v2 = sub_1C1A6FBEC();
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
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + 16 * (v12 | (v11 << 6)));
        v15 = *v13;
        v14 = v13[1];

        swift_unknownObjectRetain();
        swift_dynamicCast();
        sub_1C19916E4(&v22, v24);
        sub_1C19916E4(v24, v25);
        sub_1C19916E4(v25, &v23);
        v16 = sub_1C1991010(v15, v14);
        if (v17)
        {
          v8 = (v2[6] + 16 * v16);
          *v8 = v15;
          v8[1] = v14;
          v9 = v16;

          v10 = (v2[7] + 32 * v9);
          sub_1C199935C(v10);
          sub_1C19916E4(&v23, v10);
          v7 = v11;
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

          *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
          v18 = (v2[6] + 16 * v16);
          *v18 = v15;
          v18[1] = v14;
          sub_1C19916E4(&v23, (v2[7] + 32 * v16));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_1C1A1E190(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1C19A9E58(&qword_1EBF03C60, &unk_1C1A74070);
    v2 = sub_1C1A6FBEC();
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

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = (*(a1 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v5)))));
    v13 = v12[1];
    *&v30[0] = *v12;
    *(&v30[0] + 1) = v13;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_1C19916E4(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_1C19916E4(v29, v30);
    v14 = sub_1C1A6FA4C();
    v15 = -1 << *(v2 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v22;
    *(v10 + 16) = v23;
    *(v10 + 32) = v24;
    sub_1C19916E4(v30, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_1C1A1E458(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1C19A9E58(&qword_1EBF03D08, &qword_1C1A74120);
    v2 = sub_1C1A6FBEC();
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
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + ((v11 << 10) | (16 * v12)));
        v15 = *v13;
        v14 = v13[1];

        swift_dynamicCast();
        sub_1C19916E4(&v22, v24);
        sub_1C19916E4(v24, v25);
        sub_1C19916E4(v25, &v23);
        v16 = sub_1C1991010(v15, v14);
        if (v17)
        {
          v8 = (v2[6] + 16 * v16);
          *v8 = v15;
          v8[1] = v14;
          v9 = v16;

          v10 = (v2[7] + 32 * v9);
          sub_1C199935C(v10);
          sub_1C19916E4(&v23, v10);
          v7 = v11;
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

          *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
          v18 = (v2[6] + 16 * v16);
          *v18 = v15;
          v18[1] = v14;
          sub_1C19916E4(&v23, (v2[7] + 32 * v16));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}