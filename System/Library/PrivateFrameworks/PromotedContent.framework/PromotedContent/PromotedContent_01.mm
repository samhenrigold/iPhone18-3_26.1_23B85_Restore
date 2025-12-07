uint64_t sub_1C1AB7E28(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = *a5;
  v11 = sub_1C1AA7C14(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1C1AB7FA4(v16, a4 & 1);
      v11 = sub_1C1AA7C14(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1C1B958E8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1C1ADA698();
      v11 = v19;
    }
  }

  v21 = *a5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_1C1AB8450(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C1B94438();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_1C1B94428();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1C1AB8544(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C1AC1F08(&qword_1EBF08560, &qword_1C1B9AF90);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_1C1B95028();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_1C1B95008();

  v7 = sub_1C1B94FF8();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = a2;
  sub_1C1AE36F8(0, 0, v5, &unk_1C1BA46F0, v8);
}

void sub_1C1AB86CC(uint64_t a1, char a2)
{
  v3 = v2;
  v4 = a1;
  if ((a2 & 1) != 0 || (v5 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_isCurrentlyOnScreen, swift_beginAccess(), *(v3 + v5) == 1))
  {
    if (*(v3 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_interactionTime + 8))
    {
      v6 = sub_1C1B95128();
      sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
      v7 = sub_1C1B95298();
      sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1C1B98E60;
      v9 = (v3 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_journeyIdentifier);
      swift_beginAccess();
      v11 = *v9;
      v10 = v9[1];
      *(v8 + 56) = MEMORY[0x1E69E6158];
      *(v8 + 64) = sub_1C1AA5E7C();
      *(v8 + 32) = v11;
      *(v8 + 40) = v10;

      sub_1C1B94BA8(v6, &dword_1C1AA2000, v7, "Attempt to send quickReturn metric prior to interacted. JourneyID=%{public}@", 76, 2, v8);
LABEL_7:

      return;
    }

    if (*(v3 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_leftAdDestinationWasReported) == 1)
    {
      v12 = sub_1C1B95118();
      sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
      v7 = sub_1C1B95298();
      sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1C1B98E60;
      v14 = (v3 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_journeyIdentifier);
      swift_beginAccess();
      v16 = *v14;
      v15 = v14[1];
      *(v13 + 56) = MEMORY[0x1E69E6158];
      *(v13 + 64) = sub_1C1AA5E7C();
      *(v13 + 32) = v16;
      *(v13 + 40) = v15;

      sub_1C1B94BA8(v12, &dword_1C1AA2000, v7, "Attempt to over-report quickReturn metric. JourneyID=%{public}@", 63, 2, v13);
      goto LABEL_7;
    }

    v17 = *(v3 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_interactionTime);
    *(v3 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_leftAdDestinationWasReported) = 1;
    sub_1C1B94508();
    v19 = v18 - v17;
    if (v4)
    {
      if (v19 < 50.0)
      {
        goto LABEL_13;
      }
    }

    else if (v19 < 5.0)
    {
LABEL_13:
      sub_1C1B81D7C(v4 & 1, v19);
    }
  }
}

void *sub_1C1AB8B34(char a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = [result adType];
    result = swift_unknownObjectRelease();
    if (v3 == 1)
    {
      v4 = sub_1C1B7F814(a1 & 1);
      sub_1C1B7D8F0(77005, v4, v5);
    }
  }

  return result;
}

uint64_t sub_1C1AB8C60(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = sub_1C1B94A58();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v7 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_hasBeenPlaced))
  {
    v18 = sub_1C1B95138();
    sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
    v19 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1C1B98E60;
    v21 = (v7 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_promotedContentIdentifier);
    swift_beginAccess();
    v23 = *v21;
    v22 = v21[1];
    *(v20 + 56) = MEMORY[0x1E69E6158];
    *(v20 + 64) = sub_1C1AA5E7C();
    *(v20 + 32) = v23;
    *(v20 + 40) = v22;

    sub_1C1B94BA8(v18, &dword_1C1AA2000, v19, "Trying to report placed, but has already been placed for identifier %{public}@", 78, 2, v20);
LABEL_25:
  }

  v82 = a5;
  *(v7 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_hasBeenPlaced) = 1;
  swift_beginAccess();
  v81 = v7;
  Strong = swift_unknownObjectWeakLoadStrong();
  v80 = sub_1C1AB2B4C(Strong, a1, a2, a3, a4 & 1);
  swift_unknownObjectRelease();
  if (qword_1EDE6C4E0 != -1)
  {
    swift_once();
  }

  v25 = sub_1C1B94BE8();
  sub_1C1AB4454(v25, qword_1EDE6D058);
  v26 = sub_1C1B94BC8();
  v27 = sub_1C1B95138();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134217984;
    *(v28 + 4) = a1;
    _os_log_impl(&dword_1C1AA2000, v26, v27, "placement type %ld", v28, 0xCu);
    MEMORY[0x1C6908230](v28, -1, -1);
  }

  if ((a6 & 1) != 0 || v82 == 200)
  {
    v33 = v81;
    v46 = swift_unknownObjectWeakLoadStrong();
    if (v46 && (v47 = [v46 serverUnfilledReason], swift_unknownObjectRelease(), v47 != 200))
    {
      (*(v15 + 104))(v17, *MEMORY[0x1E6989F88], v14);
      v63 = sub_1C1B94A48();
      v65 = v64;
      (*(v15 + 8))(v17, v14);
      sub_1C1AC1F08(&qword_1EBF07B00, &unk_1C1BA4320);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_1C1B98E60;
      v67 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      *(v66 + 56) = sub_1C1AA576C(0, &qword_1EDE6C9F0, 0x1E696AD98);
      *(v66 + 32) = v67;
      v68 = objc_allocWithZone(MEMORY[0x1E695DEC8]);
      v69 = sub_1C1B94EB8();

      v70 = [v68 initWithArray_];

      v71 = v80;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v83[0] = v71;
      sub_1C1AB31CC(v70, v63, v65, isUniquelyReferenced_nonNull_native, v83);

      v45 = v83[0];
      v59 = sub_1C1B94BC8();
      v60 = sub_1C1B95118();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 134217984;
        *(v61 + 4) = v47;
        v62 = "Metric helper reports server unfilled reason %ld";
        goto LABEL_20;
      }
    }

    else
    {
      v48 = swift_unknownObjectWeakLoadStrong();
      if (!v48)
      {
        v45 = v80;
        goto LABEL_23;
      }

      v49 = [v48 placeholder];
      swift_unknownObjectRelease();
      v45 = v80;
      if (!v49)
      {
        goto LABEL_23;
      }

      (*(v15 + 104))(v17, *MEMORY[0x1E6989F88], v14);
      v50 = sub_1C1B94A48();
      v52 = v51;
      (*(v15 + 8))(v17, v14);
      sub_1C1AC1F08(&qword_1EBF07B00, &unk_1C1BA4320);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_1C1B98E60;
      v54 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      *(v53 + 56) = sub_1C1AA576C(0, &qword_1EDE6C9F0, 0x1E696AD98);
      *(v53 + 32) = v54;
      v55 = objc_allocWithZone(MEMORY[0x1E695DEC8]);
      v56 = sub_1C1B94EB8();

      v57 = [v55 initWithArray_];

      v58 = swift_isUniquelyReferenced_nonNull_native();
      v83[0] = v45;
      sub_1C1AB31CC(v57, v50, v52, v58, v83);

      v45 = v83[0];
      v59 = sub_1C1B94BC8();
      v60 = sub_1C1B95118();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 134217984;
        *(v61 + 4) = 1059;
        v62 = "Metric helper reports unfilled reason %ld";
LABEL_20:
        _os_log_impl(&dword_1C1AA2000, v59, v60, v62, v61, 0xCu);
        MEMORY[0x1C6908230](v61, -1, -1);
      }
    }

    goto LABEL_23;
  }

  v29 = sub_1C1B94BC8();
  v30 = sub_1C1B95118();
  v31 = os_log_type_enabled(v29, v30);
  v33 = v81;
  v32 = v82;
  if (v31)
  {
    v34 = swift_slowAlloc();
    *v34 = 134217984;
    *(v34 + 4) = v32;
    _os_log_impl(&dword_1C1AA2000, v29, v30, "Metric helper reports unfilled reason %ld", v34, 0xCu);
    MEMORY[0x1C6908230](v34, -1, -1);
  }

  (*(v15 + 104))(v17, *MEMORY[0x1E6989F88], v14);
  v35 = sub_1C1B94A48();
  v37 = v36;
  (*(v15 + 8))(v17, v14);
  sub_1C1AC1F08(&qword_1EBF07B00, &unk_1C1BA4320);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1C1B98E60;
  v39 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(v38 + 56) = sub_1C1AA576C(0, &qword_1EDE6C9F0, 0x1E696AD98);
  *(v38 + 32) = v39;
  v40 = objc_allocWithZone(MEMORY[0x1E695DEC8]);
  v41 = sub_1C1B94EB8();

  v42 = [v40 initWithArray_];

  v43 = v80;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v83[0] = v43;
  sub_1C1AB31CC(v42, v35, v37, v44, v83);

  v45 = v83[0];
LABEL_23:
  *(v33 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_placedProperties) = v45;

  if ([objc_opt_self() isNewsOrStocks])
  {
    v73 = sub_1C1B95138();
    sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
    v19 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_1C1B98E60;
    v75 = (v33 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_promotedContentIdentifier);
    swift_beginAccess();
    v77 = *v75;
    v76 = v75[1];
    *(v74 + 56) = MEMORY[0x1E69E6158];
    *(v74 + 64) = sub_1C1AA5E7C();
    *(v74 + 32) = v77;
    *(v74 + 40) = v76;

    sub_1C1B94BA8(v73, &dword_1C1AA2000, v19, "Placed metric is going to be delayed %{public}@", 47, 2, v74);
    goto LABEL_25;
  }

  return sub_1C1B7D0A4();
}

uint64_t sub_1C1AB9638(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C1AB9CA0;

  return sub_1C1AB96F0(a1, v4);
}

uint64_t sub_1C1AB96F0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1C1AB9B8C;

  return v5(v2 + 32);
}

uint64_t sub_1C1AB97E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C1AB9A98;

  return sub_1C1AB9898(a1, v4, v5, v6);
}

uint64_t sub_1C1AB9898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_1C1AC1F08(&qword_1EBF08560, &qword_1C1B9AF90);
  v4[7] = swift_task_alloc();
  sub_1C1B95008();
  v4[8] = sub_1C1B94FF8();
  v6 = sub_1C1B94FC8();

  return MEMORY[0x1EEE6DFA0](sub_1C1AB9968, v6, v5);
}

uint64_t sub_1C1AB9968()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 56);
    v3 = sub_1C1B95028();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v4 = swift_allocObject();
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = Strong;
    sub_1C1AE33F8(0, 0, v2, &unk_1C1BA46F8, v4);
  }

  **(v0 + 40) = Strong == 0;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1C1AB9A98()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1C1AB9B8C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

Swift::Void __swiftcall SponsorshipAdManager.refresh()()
{
  v1 = sub_1C1AC1F08(&qword_1EBF08560, &qword_1C1B9AF90);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v6 - v2;
  v4 = sub_1C1B95028();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;

  sub_1C1AE33F8(0, 0, v3, &unk_1C1BA4640, v5);
}

uint64_t sub_1C1AB9DB0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C1AB9DF0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C1AB9CA0;

  return sub_1C1AB9EA8(a1, v4);
}

uint64_t sub_1C1AB9EA8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C1AE3DE8;

  return v6(a1);
}

uint64_t sub_1C1AB9FA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C1AB9CA0;

  return sub_1C1ABA054(a1, v4, v5, v6);
}

uint64_t sub_1C1ABA054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a4;
  v5 = sub_1C1B94588();
  v4[27] = v5;
  v4[28] = *(v5 - 8);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v6 = swift_task_alloc();
  v4[31] = v6;
  *v6 = v4;
  v6[1] = sub_1C1B8B8B8;

  return sub_1C1B911E8();
}

uint64_t sub_1C1ABA16C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1ABA1A4(uint64_t a1)
{
  result = sub_1C1B945F8();
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

uint64_t sub_1C1ABA284(uint64_t a1)
{
  result = sub_1C1B945F8();
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

uint64_t sub_1C1ABA33C(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1C1B953B8();

    if (v9)
    {

      type metadata accessor for AdResponseBlock(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1C1B953A8();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1C1B836E0(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1C1B83B14(v20 + 1);
    }

    v18 = v8;
    sub_1C1B841CC(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for AdResponseBlock(0);
  v11 = sub_1C1B95268();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1C1ABA554(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1C1B95278();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

void sub_1C1ABA554(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1C1B83B14(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1C1B847A0();
      goto LABEL_12;
    }

    sub_1C1ABA6B4(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_1C1B95268();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for AdResponseBlock(0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1C1B95278();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1C1B958D8();
  __break(1u);
}

uint64_t sub_1C1ABA6B4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1C1AC1F08(&qword_1EBF09B30, &qword_1C1BA4348);
  result = sub_1C1B95428();
  v5 = result;
  if (*(v3 + 16))
  {
    v24 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_1C1B95268();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v24;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

id APContext.init(_:)(uint64_t *a1)
{
  v2 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v42 - v3;
  v5 = sub_1C1B945F8();
  v42 = *(v5 - 8);
  v43 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + OBJC_IVAR___APPCBaseContext_adjacent);
  v46 = MEMORY[0x1E69E7CC0];
  v44 = v4;
  if (v8 >> 62)
  {
LABEL_32:
    v9 = sub_1C1B953A8();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = a1;

  v11 = 0;
  v45 = MEMORY[0x1E69E7CC0];
  while (v9 != v11)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      a1 = MEMORY[0x1C6907490](v11, v8);
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_30;
      }
    }

    else
    {
      if (v11 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      a1 = *(v8 + 8 * v11 + 32);
      swift_unknownObjectRetain();
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }
    }

    swift_getObjectType();
    v13 = sub_1C1B59844();
    v14 = swift_unknownObjectRelease();
    ++v11;
    if (v13)
    {
      a1 = &v46;
      MEMORY[0x1C6906EA0](v14);
      if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C1B94F08();
      }

      sub_1C1B94F48();
      v45 = v46;
      v11 = v12;
    }
  }

  v15 = *(v10 + OBJC_IVAR___APPCBaseContext_maxSize);
  v16 = *(v10 + OBJC_IVAR___APPCBaseContext_maxSize + 8);
  v17 = OBJC_IVAR___APPCBaseContext_identifier;
  swift_beginAccess();
  v18 = v42;
  v19 = v10 + v17;
  v20 = v43;
  (*(v42 + 16))(v7, v19, v43);
  v21 = sub_1C1B945B8();
  (*(v18 + 8))(v7, v20);
  v22 = v10 + OBJC_IVAR___APPCBaseContext_requestedAd;
  swift_beginAccess();
  if (*(v22 + 1))
  {

    v23 = sub_1C1B94D78();
  }

  else
  {
    v23 = 0;
  }

  v24 = v44;
  v25 = *(v10 + OBJC_IVAR___APPCBaseContext_current);
  swift_unknownObjectRetain();

  if (v25)
  {
    swift_getObjectType();
    v26 = sub_1C1B59844();
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = 0;
  }

  sub_1C1ABAE44();
  v27 = sub_1C1B94EB8();

  v28 = OBJC_IVAR___APPCContext_newsContext;
  swift_beginAccess();
  v29 = *(v10 + v28);
  if (v29)
  {
    v30 = v29;
    v31 = sub_1C1AB7364();
LABEL_25:

    sub_1C1ABAE90(v31);

    sub_1C1AC1F08(&qword_1EBF08E00, &unk_1C1B9F5A0);
    v33 = sub_1C1B94CA8();

    goto LABEL_26;
  }

  v32 = *(v10 + OBJC_IVAR___APPCContext_appStoreContext);
  if (v32)
  {
    v30 = v32;
    v31 = sub_1C1AD6D7C();
    goto LABEL_25;
  }

  v33 = 0;
LABEL_26:
  v34 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIdentifier:v21 maxSize:v23 requestedAdIdentifier:v26 currentContent:v27 adjacentContent:v33 supplementalContext:{v15, v16}];

  v35 = OBJC_IVAR___APPCContext_prefetchTimestamp;
  swift_beginAccess();
  sub_1C1ABB0C4(v10 + v35, v24);
  v36 = sub_1C1B94588();
  v37 = *(v36 - 8);
  v38 = (*(v37 + 48))(v24, 1, v36);
  v39 = v34;
  v40 = 0;
  if (v38 != 1)
  {
    v40 = sub_1C1B94538();
    (*(v37 + 8))(v24, v36);
  }

  [v39 setPrefetchTimestamp_];

  return v39;
}

unint64_t sub_1C1ABAE44()
{
  result = qword_1EDE6CA08;
  if (!qword_1EDE6CA08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE6CA08);
  }

  return result;
}

unint64_t sub_1C1ABAE90(uint64_t a1)
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
        v13 = (*(a1 + 48) + 16 * (v12 | (v11 << 6)));
        v15 = *v13;
        v14 = v13[1];

        swift_unknownObjectRetain();
        sub_1C1AC1F08(&qword_1EBF08210, &qword_1C1BA4330);
        sub_1C1AC1F08(&qword_1EBF08E00, &unk_1C1B9F5A0);
        swift_dynamicCast();
        result = sub_1C1AA7C14(v15, v14);
        if (v16)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v15;
          v9[1] = v14;
          v10 = result;

          *(v2[7] + 8 * v10) = v21;
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
          v17 = (v2[6] + 16 * result);
          *v17 = v15;
          v17[1] = v14;
          *(v2[7] + 8 * result) = v21;
          v18 = v2[2];
          v19 = __OFADD__(v18, 1);
          v20 = v18 + 1;
          if (v19)
          {
            goto LABEL_21;
          }

          v2[2] = v20;
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

uint64_t sub_1C1ABB0C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1ABB134(void *a1)
{
  v2 = v1;
  v84 = a1;
  v85 = sub_1C1B945F8();
  v3 = *(v85 - 8);
  v4 = MEMORY[0x1EEE9AC00](v85);
  v6 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v76 - v7;
  v9 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v76 - v10;
  v12 = sub_1C1B94588();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v76 - v17;
  v19 = OBJC_IVAR___APPCContext_prefetchTimestamp;
  swift_beginAccess();
  sub_1C1ABB0C4(v2 + v19, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1C1ABBAF4(v11);
    LODWORD(v83) = sub_1C1B95128();
    sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
    v82 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1C1B9AF30;
    v21 = v84;
    v22 = [v84 identifier];
    sub_1C1B945D8();

    v23 = sub_1C1B945A8();
    v25 = v24;
    v26 = *(v3 + 8);
    v27 = v85;
    v26(v8, v85);
    v28 = MEMORY[0x1E69E6158];
    *(v20 + 56) = MEMORY[0x1E69E6158];
    v29 = sub_1C1AA5E7C();
    *(v20 + 64) = v29;
    *(v20 + 32) = v23;
    *(v20 + 40) = v25;
    v30 = [v21 identifier];
    sub_1C1B945D8();

    v31 = sub_1C1B945A8();
    v33 = v32;
    v26(v6, v27);
    *(v20 + 96) = v28;
    *(v20 + 104) = v29;
    *(v20 + 72) = v31;
    *(v20 + 80) = v33;
    v34 = v82;
    sub_1C1B94BA8(v83, &dword_1C1AA2000, v82, "[PC] Context (%@) Wanted to send analytics but do not have prefetchTimestamp (%@)", 81, 2, v20);
  }

  else
  {
    (*(v13 + 32))(v18, v11, v12);
    sub_1C1B94578();
    sub_1C1B94528();
    v37 = v36;
    v79 = sub_1C1B95108();
    v38 = sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
    v77 = "eContentDepiction>16@0:8";
    v78 = v38;
    v39 = sub_1C1B95298();
    v81 = v13;
    v40 = v39;
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v80 = v16;
    v41 = swift_allocObject();
    v76 = xmmword_1C1B9AF30;
    *(v41 + 16) = xmmword_1C1B9AF30;
    v42 = [v84 identifier];
    sub_1C1B945D8();

    v43 = sub_1C1B945A8();
    v45 = v44;
    v82 = v12;
    v46 = *(v3 + 8);
    v46(v8, v85);
    *(v41 + 56) = MEMORY[0x1E69E6158];
    v47 = sub_1C1AA5E7C();
    v83 = v18;
    v48 = v47;
    *(v41 + 64) = v47;
    v49 = MEMORY[0x1E69E63B0];
    *(v41 + 32) = v43;
    *(v41 + 40) = v45;
    v50 = MEMORY[0x1E69E6438];
    *(v41 + 96) = v49;
    *(v41 + 104) = v50;
    *(v41 + 72) = v37;
    sub_1C1B94BA8(v79, &dword_1C1AA2000, v40, "[PC] Context %{public}@: Pre-fetch to client ad request time interval is %{public}f.", 84, 2, v41);

    v51 = sub_1C1B0C2B4(v37);
    if (v51)
    {
      v52 = v51;
      v53 = v80;
      v54 = v81;
      sub_1C1AC1F08(&qword_1EBF090B0, &unk_1C1B9F3A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C1B9C9C0;
      *(inited + 32) = 0x6C61767265746E49;
      *(inited + 40) = 0xE800000000000000;
      *(inited + 48) = v52;
      strcpy((inited + 56), "IntervalType");
      *(inited + 69) = 0;
      *(inited + 70) = -5120;
      v56 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      v57 = v52;
      *(inited + 72) = [v56 initWithInteger_];
      *(inited + 80) = 0x546B726F7774654ELL;
      *(inited + 88) = 0xEB00000000657079;
      *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      strcpy((inited + 104), "PlacementType");
      *(inited + 118) = -4864;
      v58 = *(v2 + OBJC_IVAR___APPCBaseContext_current);
      if (v58)
      {
        v59 = Placement.apPlacement.getter([v58 placement]);
      }

      else
      {
        v59 = 0;
      }

      *(inited + 120) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
      *(inited + 128) = 0x64656C696146;
      *(inited + 136) = 0xE600000000000000;
      sub_1C1AA576C(0, &qword_1EDE6C9F0, 0x1E696AD98);
      *(inited + 144) = sub_1C1B95248();
      v70 = sub_1C1AD46B4(inited);
      swift_setDeallocating();
      sub_1C1AC1F08(&qword_1EBF08840, &qword_1C1B9CB40);
      swift_arrayDestroy();
      v71 = objc_opt_self();
      v72 = sub_1C1B94D78();
      sub_1C1B1A914(v70);

      sub_1C1AA576C(0, &qword_1EDE6C9D0, 0x1E69E58C0);
      v73 = sub_1C1B94CA8();

      [v71 sendEvent:v72 customPayload:v73];

      v74 = *(v54 + 8);
      v75 = v82;
      v74(v53, v82);
      return (v74)(v83, v75);
    }

    else
    {
      v60 = sub_1C1B95128();
      v61 = sub_1C1B95298();
      v62 = swift_allocObject();
      *(v62 + 16) = v76;
      v63 = v50;
      v64 = [v84 identifier];
      sub_1C1B945D8();

      v65 = sub_1C1B945A8();
      v67 = v66;
      v46(v8, v85);
      *(v62 + 56) = MEMORY[0x1E69E6158];
      *(v62 + 64) = v48;
      *(v62 + 32) = v65;
      *(v62 + 40) = v67;
      *(v62 + 96) = MEMORY[0x1E69E63B0];
      *(v62 + 104) = v63;
      *(v62 + 72) = v37;
      sub_1C1B94BA8(v60, &dword_1C1AA2000, v61, "[PC] Context %{public}@: Interval is NaN: %{public}f.", 53, 2, v62);

      v68 = *(v81 + 8);
      v69 = v82;
      v68(v80, v82);
      return (v68)(v83, v69);
    }
  }
}

uint64_t sub_1C1ABBAF4(uint64_t a1)
{
  v2 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C1ABBCD4(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_16:
    v2 = sub_1C1B953A8();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x1C6907490](v3, a1);
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_13:
            __break(1u);
            return 1;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v4 = *(a1 + 8 * v3 + 32);
          swift_unknownObjectRetain();
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_13;
          }
        }

        v6 = [v4 tapAction];
        swift_unknownObjectRelease();
        if (v6)
        {
          v7 = *&v6[OBJC_IVAR___APPCTapAction_actionType];

          if ((v7 - 4) <= 2)
          {
            return 1;
          }
        }

        ++v3;
      }

      while (v5 != v2);
    }
  }

  return 0;
}

uint64_t getEnumTagSinglePayload for ClientColor(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ClientColor(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1C1ABBE54(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C1B94588();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1C1ABBF00(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C1B94588();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

__n128 sub_1C1ABBFD8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1C1ABBFE4@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_1C1ABC0EC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___APPCAppStoreSupplementalContext_adamId);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1C1ABC174@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___APPCAppStoreSupplementalContext_requestTime;
  swift_beginAccess();
  return sub_1C1AA7E30(v3 + v4, a2, &qword_1EBF07F50, &qword_1C1B9A590);
}

unint64_t sub_1C1ABC310@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C1AA7514();
  *a1 = result;
  return result;
}

uint64_t sub_1C1ABC368@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1C1ADC2E0(a2);
  *a1 = result;
  return result;
}

uint64_t sub_1C1ABCE24@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_sponsorshipPlacement;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1C1ABCE7C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_sponsorshipPlacement;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1C1ABCED0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1ABCF20()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1ABCF58()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1ABCF90()
{

  sub_1C1AA86F8((v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1C1ABCFD8()
{

  if (*(v0 + 48))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C1ABD068@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_diagnosticDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1C1ABD0C4(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_diagnosticDelegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

__n128 sub_1C1ABD164@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___APPCContextBuilder_maxSize;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_1C1ABD1BC(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR___APPCContextBuilder_maxSize);
  result = swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t sub_1C1ABD214@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___APPCContextBuilder_current;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_1C1ABD29C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___APPCContextBuilder_next;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1C1ABD2FC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___APPCContextBuilder_requestedAd);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

id sub_1C1ABD358@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___APPCContextBuilder_newsContext;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1C1ABD3C4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1ABD3FC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C1B94588();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C1ABD4A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C1B94588();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C1ABD54C()
{
  v1 = sub_1C1B944A8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C1ABD618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1C1ABD6E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C1ABD790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C1B945F8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1C1ABD84C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C1B945F8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

id sub_1C1ABD92C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 unfilledReason];
  *a2 = result;
  return result;
}

uint64_t sub_1C1ABD974@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___APPCPromotedContentInfo_placeholder;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1C1ABD9CC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___APPCPromotedContentInfo_placeholder;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1C1ABDA20()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1ABDA58@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___APPCMediaMetricsHelper_promotedContentIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1C1ABDAB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR___APPCMediaMetricsHelper_containerType;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1C1ABDB10(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR___APPCMediaMetricsHelper_containerType;
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t sub_1C1ABDBB8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1ABDBFC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1ABDC34@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___APPCDiagnosticMetricsHelper_networkType;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1C1ABDC8C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___APPCDiagnosticMetricsHelper_networkType;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1C1ABDCE0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1ABDDC8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1ABDE00()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1ABDE38()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1ABDE70()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

id sub_1C1ABDEB8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___APPCContext_newsContext;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1C1ABDF24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___APPCContext_prefetchTimestamp;
  swift_beginAccess();
  return sub_1C1AA7E30(v3 + v4, a2, &qword_1EBF07F50, &qword_1C1B9A590);
}

uint64_t sub_1C1ABDF98()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1ABE788()
{
  MEMORY[0x1C6908300](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1ABE7C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1ABE800@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___APPCBaseContext_requestedAd);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1C1ABE85C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1ABE894()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1ABE904@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___APPCMetric_contentId);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1C1ABE960@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___APPCMetric_properties;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1C1ABEA04()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C1ABEA3C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C1ABEA74()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1ABEAAC()
{
  v1 = sub_1C1AC1F08(&qword_1EBF09478, &unk_1C1BA17E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1C1ABEB54()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C1ABEB9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AdContent(0);
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

uint64_t sub_1C1ABEC58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AdContent(0);
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

uint64_t sub_1C1ABED10()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1ABED48()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1ABED88()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C1ABEE08@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C1B4D574();
  *a1 = result;
  return result;
}

uint64_t sub_1C1ABEE34(void *a1, uint64_t a2)
{
  *(*a2 + 112) = *a1;
}

uint64_t sub_1C1ABEE78@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C1B4D6BC();
  *a1 = result;
  return result;
}

uint64_t sub_1C1ABEEA4(void *a1, uint64_t a2)
{
  *(*a2 + 120) = *a1;
}

uint64_t sub_1C1ABEEE8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 128);
  return result;
}

uint64_t sub_1C1ABEF30(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 128) = v2;
  return result;
}

uint64_t sub_1C1ABEF74@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 129);
  return result;
}

uint64_t sub_1C1ABEFBC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 129) = v2;
  return result;
}

uint64_t sub_1C1ABF000@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 130);
  return result;
}

uint64_t sub_1C1ABF048(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 130) = v2;
  return result;
}

uint64_t sub_1C1ABF098()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1ABF0D0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1ABF108()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1C1ABF148()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C1ABF1B0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1ABF214()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1ABF24C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1ABF290@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1C1ABF434()
{
  MEMORY[0x1C6908300](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1ABF46C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___APPCPromotedContent_metricsHelper;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_1C1ABF594@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1C1ABF72C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___APPCPromotedContent_minimumTimeBetweenPresentation;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1C1ABF784(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___APPCPromotedContent_minimumTimeBetweenPresentation;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1C1ABF830@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___APPCPromotedContent_representations;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1C1ABF9E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___APPCPromotedContent_serverUnfilledReason;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

double sub_1C1ABFB28@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___APPCPromotedContent_impressionThreshold;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_1C1ABFB80(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___APPCPromotedContent_impressionThreshold;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1C1ABFCA0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR___APPCPromotedContent_discardReason;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1C1ABFD00@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___APPCPromotedContent_appImpressionTask;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1C1ABFD60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___APPCPromotedContent_appImpression;
  swift_beginAccess();
  return sub_1C1AA7E30(v3 + v4, a2, &qword_1EBF098F0, &qword_1C1B9D838);
}

uint64_t sub_1C1ABFDEC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1ABFE24()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1ABFE5C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1ABFEA0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1ABFED8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1ABFF18()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1ABFF50@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1C1AC0060@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_primitiveCreator;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_1C1AC0164@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_impressionStartDate;
  swift_beginAccess();
  return sub_1C1ABB0C4(v3 + v4, a2);
}

id sub_1C1AC01F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_diagnostics;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1C1AC0278()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1AC04A8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 57, 7);
}

uint64_t sub_1C1AC0530(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C1AC0580(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1C1AC0598(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for CodableAPSize(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1C1AC05FC(uint64_t a1, int a2)
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

uint64_t sub_1C1AC061C(uint64_t result, int a2, int a3)
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

void sub_1C1AC0694(uint64_t a1, unint64_t *a2, uint64_t a3)
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

void *sub_1C1AC06E0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

id sub_1C1AC06F0(void *a1)
{
  v1 = a1;
  if ([a1 actionType] != 2)
  {
    if (qword_1EDE6C4E0 != -1)
    {
      swift_once();
    }

    v11 = sub_1C1B94BE8();
    sub_1C1AB4454(v11, qword_1EDE6D058);
    v1 = v1;
    v12 = sub_1C1B94BC8();
    v13 = sub_1C1B95128();
    if (!os_log_type_enabled(v12, v13))
    {

LABEL_16:
      return 0;
    }

    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = [v1 actionType];

    v15 = "Attempting to initialize a StoreTapAction with an invalid tap action type %ld.";
    v16 = v13;
    v17 = v12;
    v18 = v14;
    v19 = 12;
    goto LABEL_14;
  }

  v2 = [v1 adamIdentifier];
  if (!v2)
  {
    if (qword_1EDE6C4E0 != -1)
    {
      swift_once();
    }

    v20 = sub_1C1B94BE8();
    sub_1C1AB4454(v20, qword_1EDE6D058);
    v12 = sub_1C1B94BC8();
    v21 = sub_1C1B95128();
    if (!os_log_type_enabled(v12, v21))
    {
      goto LABEL_15;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "Attempting to initialize a StoreTapAction with an invalid tap action adam identifier.";
    v16 = v21;
    v17 = v12;
    v18 = v14;
    v19 = 2;
LABEL_14:
    _os_log_impl(&dword_1C1AA2000, v17, v16, v15, v18, v19);
    MEMORY[0x1C6908230](v14, -1, -1);
LABEL_15:

    goto LABEL_16;
  }

  v3 = v2;
  v4 = [v1 iTunesMetadata];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1C1B94CB8();

    v7 = objc_allocWithZone(type metadata accessor for StoreTapAction());
    *&v7[OBJC_IVAR____TtC15PromotedContent14StoreTapAction_adamIdentifier] = v3;
    *&v7[OBJC_IVAR____TtC15PromotedContent14StoreTapAction_iTunesMetadata] = v6;
    *&v7[OBJC_IVAR___APPCTapAction_actionType] = 2;
    *&v7[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = 0x3FF0000000000000;
    v26.receiver = v7;
    v26.super_class = type metadata accessor for TapAction();
    v8 = v3;
    v9 = objc_msgSendSuper2(&v26, sel_init);

    return v9;
  }

  if (qword_1EDE6C4E0 != -1)
  {
    swift_once();
  }

  v22 = sub_1C1B94BE8();
  sub_1C1AB4454(v22, qword_1EDE6D058);
  v23 = sub_1C1B94BC8();
  v24 = sub_1C1B95128();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1C1AA2000, v23, v24, "Attempting to initialize a StoreTapAction with an invalid tap action iTunes metadata.", v25, 2u);
    MEMORY[0x1C6908230](v25, -1, -1);
  }

  return 0;
}

uint64_t AdContent.contentIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t AdContent.contentRetrievedTimestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AdContent(0) + 28);
  v4 = sub_1C1B94588();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for AdContent(uint64_t a1)
{
  result = qword_1EDE6B708;
  if (!qword_1EDE6B708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AdContent.expirationTimestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AdContent(0) + 32);
  v4 = sub_1C1B94588();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AdContent.init(context:contentIdentifier:placement:contentRetrievedTimestamp:expirationTimestamp:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  *(a7 + 3) = a4;
  v10 = type metadata accessor for AdContent(0);
  v11 = *(v10 + 28);
  v12 = sub_1C1B94588();
  v15 = *(*(v12 - 8) + 32);
  (v15)((v12 - 8), &a7[v11], a5, v12);
  v13 = &a7[*(v10 + 32)];

  return v15(v13, a6, v12);
}

uint64_t AdContent.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1C1B945F8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  v8 = OBJC_IVAR___APPCBaseContext_identifier;
  swift_beginAccess();
  (*(v4 + 16))(v6, v7 + v8, v3);
  sub_1C1AC2154(&qword_1EDE6B838, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1C1B94D38();
  (*(v4 + 8))(v6, v3);
  sub_1C1B94DE8();
  MEMORY[0x1C6907960](v2[3]);
  type metadata accessor for AdContent(0);
  sub_1C1B94588();
  sub_1C1AC2154(&unk_1EDE6B840, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1C1B94D38();
  return sub_1C1B94D38();
}

uint64_t static AdContent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  else
  {
    return sub_1C1B95888();
  }
}

uint64_t sub_1C1AC0EFC()
{
  v1 = *v0;
  sub_1C1B95958();
  MEMORY[0x1C6907960](v1);
  return sub_1C1B959A8();
}

uint64_t sub_1C1AC0F44(uint64_t a1)
{
  v2 = *v1;
  sub_1C1B95958();
  MEMORY[0x1C6907960](v2);
  return sub_1C1B959A8();
}

unint64_t sub_1C1AC0F88()
{
  v1 = *v0;
  v2 = 0x747865746E6F63;
  v3 = 0x6E656D6563616C70;
  v4 = 0xD000000000000013;
  if (v1 == 3)
  {
    v4 = 0xD000000000000019;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1C1AC1034@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C1AC24BC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C1AC1074(uint64_t a1)
{
  v2 = sub_1C1AC1F50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AC10B0(uint64_t a1)
{
  v2 = sub_1C1AC1F50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AdContent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF079C0, &qword_1C1B98A28);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1AC1F50();
  sub_1C1B95A18();
  v12 = *v3;
  v11 = 0;
  type metadata accessor for Context(0);
  sub_1C1AC2154(&unk_1EDE6A7C8, type metadata accessor for Context, &protocol conformance descriptor for BaseContext);
  sub_1C1B95808();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_1C1B957A8();
    v12 = v3[3];
    v11 = 2;
    sub_1C1AC1FA4();
    sub_1C1B95808();
    type metadata accessor for AdContent(0);
    LOBYTE(v12) = 3;
    sub_1C1B94588();
    sub_1C1AC2154(&unk_1EDE6C380, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1C1B95808();
    LOBYTE(v12) = 4;
    sub_1C1B95808();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t AdContent.hashValue.getter()
{
  v1 = v0;
  v2 = sub_1C1B945F8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C1B95958();
  v6 = *v1;
  v7 = OBJC_IVAR___APPCBaseContext_identifier;
  swift_beginAccess();
  (*(v3 + 16))(v5, v6 + v7, v2);
  sub_1C1AC2154(&qword_1EDE6B838, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1C1B94D38();
  (*(v3 + 8))(v5, v2);
  sub_1C1B94DE8();
  MEMORY[0x1C6907960](v1[3]);
  type metadata accessor for AdContent(0);
  sub_1C1B94588();
  sub_1C1AC2154(&unk_1EDE6B840, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1C1B94D38();
  sub_1C1B94D38();
  return sub_1C1B959A8();
}

uint64_t AdContent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_1C1B94588();
  v27 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - v7;
  v30 = sub_1C1AC1F08(&qword_1EBF079C8, &qword_1C1B98A30);
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v10 = &v24 - v9;
  v11 = type metadata accessor for AdContent(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[3];
  v32 = a1;
  sub_1C1AAABE0(a1, v14);
  sub_1C1AC1F50();
  v29 = v10;
  v15 = v31;
  sub_1C1B95A08();
  if (v15)
  {
    return sub_1C1AA86F8(v32);
  }

  v31 = v8;
  v25 = v6;
  v16 = v28;
  type metadata accessor for Context(0);
  v33 = 0;
  sub_1C1AC2154(&qword_1EDE6A7C0, type metadata accessor for Context, &protocol conformance descriptor for BaseContext);
  v17 = v29;
  sub_1C1B956F8();
  *v13 = v34;
  LOBYTE(v34) = 1;
  v13[1] = sub_1C1B95698();
  v13[2] = v18;
  v33 = 2;
  sub_1C1AC1FF8();
  sub_1C1B956F8();
  v13[3] = v34;
  LOBYTE(v34) = 3;
  v19 = sub_1C1AC2154(&unk_1EDE6C370, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v20 = v31;
  v24 = v19;
  sub_1C1B956F8();
  v21 = v13 + *(v11 + 28);
  v31 = *(v27 + 32);
  v31(v21, v20, v3);
  LOBYTE(v34) = 4;
  v22 = v25;
  sub_1C1B956F8();
  (*(v16 + 8))(v17, v30);
  v31(v13 + *(v11 + 32), v22, v3);
  sub_1C1AC204C(v13, v26);
  sub_1C1AA86F8(v32);
  return sub_1C1AC20B0(v13);
}

uint64_t sub_1C1AC1AB4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  else
  {
    return sub_1C1B95888();
  }
}

uint64_t sub_1C1AC1AE8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1C1B945F8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  v8 = OBJC_IVAR___APPCBaseContext_identifier;
  swift_beginAccess();
  (*(v4 + 16))(v6, v7 + v8, v3);
  sub_1C1AC2154(&qword_1EDE6B838, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1C1B94D38();
  (*(v4 + 8))(v6, v3);
  sub_1C1B94DE8();
  MEMORY[0x1C6907960](v2[3]);
  sub_1C1B94588();
  sub_1C1AC2154(&unk_1EDE6B840, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1C1B94D38();
  return sub_1C1B94D38();
}

uint64_t sub_1C1AC1CD4(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1C1B945F8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C1B95958();
  v7 = *v1;
  v8 = OBJC_IVAR___APPCBaseContext_identifier;
  swift_beginAccess();
  (*(v4 + 16))(v6, v7 + v8, v3);
  sub_1C1AC2154(&qword_1EDE6B838, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1C1B94D38();
  (*(v4 + 8))(v6, v3);
  sub_1C1B94DE8();
  MEMORY[0x1C6907960](v2[3]);
  sub_1C1B94588();
  sub_1C1AC2154(&unk_1EDE6B840, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1C1B94D38();
  sub_1C1B94D38();
  return sub_1C1B959A8();
}

uint64_t sub_1C1AC1F08(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1C1AC1F50()
{
  result = qword_1EDE6B740[0];
  if (!qword_1EDE6B740[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE6B740);
  }

  return result;
}

unint64_t sub_1C1AC1FA4()
{
  result = qword_1EDE6C2D0;
  if (!qword_1EDE6C2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C2D0);
  }

  return result;
}

unint64_t sub_1C1AC1FF8()
{
  result = qword_1EDE6C2B0;
  if (!qword_1EDE6C2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C2B0);
  }

  return result;
}

uint64_t sub_1C1AC204C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1AC20B0(uint64_t a1)
{
  v2 = type metadata accessor for AdContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C1AC2154(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C1AC21C4(uint64_t a1)
{
  result = type metadata accessor for Context(319);
  if (v2 <= 0x3F)
  {
    result = sub_1C1B94588();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AdContent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AdContent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C1AC23B8()
{
  result = qword_1EBF079D0;
  if (!qword_1EBF079D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF079D0);
  }

  return result;
}

unint64_t sub_1C1AC2410()
{
  result = qword_1EDE6B730;
  if (!qword_1EDE6B730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B730);
  }

  return result;
}

unint64_t sub_1C1AC2468()
{
  result = qword_1EDE6B738;
  if (!qword_1EDE6B738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B738);
  }

  return result;
}

uint64_t sub_1C1AC24BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x747865746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C1B95888() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C1BA6EA0 == a2 || (sub_1C1B95888() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E656D6563616C70 && a2 == 0xE900000000000074 || (sub_1C1B95888() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001C1BA6EC0 == a2 || (sub_1C1B95888() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001C1BA6EE0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1C1B95888();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_1C1AC26A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C1AC378C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1C1AC26D4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000726564;
  v4 = 0x6C6F686563616C70;
  v5 = 0xEB00000000746E65;
  v6 = 0x6D6E6F7269766E65;
  if (v2 != 6)
  {
    v6 = 0x6973736572706D69;
    v5 = 0xEC00000064496E6FLL;
  }

  v7 = 0xE800000000000000;
  v8 = 0x7265766965636572;
  if (v2 != 4)
  {
    v8 = 0x68636E617262;
    v7 = 0xE600000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  if (v2 == 2)
  {
    v4 = 0xD000000000000011;
    v3 = 0x80000001C1BA4CF0;
  }

  v9 = 0x80000001C1BA4CB0;
  v10 = 0xD000000000000019;
  if (*v1)
  {
    v10 = 0xD000000000000011;
    v9 = 0x80000001C1BA4CD0;
  }

  if (*v1 <= 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_1C1AC27F0()
{
  v1 = *v0;
  v2 = 0x6C6F686563616C70;
  v3 = 0x6D6E6F7269766E65;
  if (v1 != 6)
  {
    v3 = 0x6973736572706D69;
  }

  v4 = 0x7265766965636572;
  if (v1 != 4)
  {
    v4 = 0x68636E617262;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000011;
  }

  v5 = 0xD000000000000019;
  if (*v0)
  {
    v5 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1C1AC2908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C1AC378C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C1AC293C(uint64_t a1)
{
  v2 = sub_1C1AC33B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AC2978(uint64_t a1)
{
  v2 = sub_1C1AC33B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1C1AC29B4(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&unk_1EBF07A90, &qword_1C1B98CE8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1AC33B0();
  sub_1C1B95A08();
  if (v2)
  {
    sub_1C1AA86F8(a1);
    type metadata accessor for PrimitiveCreator();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v27) = 0;
    v9 = sub_1C1B95698();
    v11 = (v1 + OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_promotedContentIdentifier);
    *v11 = v9;
    v11[1] = v12;
    LOBYTE(v27) = 1;
    v13 = sub_1C1B95698();
    v14 = (v1 + OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_contextIdentifier);
    *v14 = v13;
    v14[1] = v15;
    LOBYTE(v27) = 2;
    v16 = sub_1C1B95698();
    v17 = (v1 + OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_journeyIdentifier);
    *v17 = v16;
    v17[1] = v18;
    LOBYTE(v27) = 7;
    v19 = sub_1C1B95638();
    v20 = (v1 + OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_impressionId);
    *v20 = v19;
    v20[1] = v21;
    LOBYTE(v27) = 3;
    *(v1 + OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_placeholder) = sub_1C1B956A8() & 1;
    [objc_opt_self() daemonDeliveryClass];
    swift_getObjCClassMetadata();
    v22 = [swift_getObjCClassFromMetadata() daemonDelivery];
    *(v1 + OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_receiver) = v22;
    sub_1C1AC1F08(&unk_1EBF07AA0, &qword_1C1B98CF0);
    v26 = 5;
    sub_1C1AC34C8(&qword_1EDE6BB98, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1C1B956F8();
    *(v1 + OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_branch) = v27;
    v26 = 6;
    sub_1C1B956F8();
    *(v1 + OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_environment) = v27;
    if (qword_1EDE6C538 != -1)
    {
      swift_once();
    }

    sub_1C1AAD2FC(qword_1EDE6C540, v1 + OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_eventPipeline);
    v23 = type metadata accessor for PrimitiveCreator();
    v25.receiver = v1;
    v25.super_class = v23;
    v3 = objc_msgSendSuper2(&v25, sel_init);
    (*(v6 + 8))(v8, v5);
    sub_1C1AA86F8(a1);
  }

  return v3;
}

uint64_t sub_1C1AC2EA8(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF07AB0, &qword_1C1B98CF8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1AC33B0();
  sub_1C1B95A18();
  LOBYTE(v12) = 0;
  sub_1C1B957A8();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_1C1B957A8();
    LOBYTE(v12) = 2;
    sub_1C1B957A8();
    v12 = *(v3 + OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_impressionId);
    v11 = 7;
    sub_1C1AC1F08(&qword_1EBF07AB8, &qword_1C1B98D00);
    sub_1C1AC344C();
    sub_1C1B95808();
    LOBYTE(v12) = 3;
    sub_1C1B957B8();
    if (*(v3 + OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_branch))
    {
      *&v12 = *(v3 + OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_branch);
      v11 = 5;
      sub_1C1AC1F08(&unk_1EBF07AA0, &qword_1C1B98CF0);
      sub_1C1AC34C8(&unk_1EDE6BBA0, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
      sub_1C1B95808();
    }

    if (*(v3 + OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_environment))
    {
      *&v12 = *(v3 + OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_environment);
      v11 = 6;
      sub_1C1AC1F08(&unk_1EBF07AA0, &qword_1C1B98CF0);
      sub_1C1AC34C8(&unk_1EDE6BBA0, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
      sub_1C1B95808();
    }
  }

  return (*(v6 + 8))(v8, v5);
}

id sub_1C1AC3248()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PrimitiveCreator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1C1AC3338@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for PrimitiveCreator());
  result = sub_1C1AC29B4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1C1AC33B0()
{
  result = qword_1EDE6C178[0];
  if (!qword_1EDE6C178[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE6C178);
  }

  return result;
}

uint64_t sub_1C1AC3404(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1C1AC344C()
{
  result = qword_1EDE6BBC0;
  if (!qword_1EDE6BBC0)
  {
    sub_1C1AC3404(&qword_1EBF07AB8, &qword_1C1B98D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BBC0);
  }

  return result;
}

uint64_t sub_1C1AC34C8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C1AC3404(&unk_1EBF07AA0, &qword_1C1B98CF0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrimitiveCreator.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PrimitiveCreator.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C1AC3688()
{
  result = qword_1EBF07AC0;
  if (!qword_1EBF07AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07AC0);
  }

  return result;
}

unint64_t sub_1C1AC36E0()
{
  result = qword_1EDE6C158;
  if (!qword_1EDE6C158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C158);
  }

  return result;
}

unint64_t sub_1C1AC3738()
{
  result = qword_1EDE6C160[0];
  if (!qword_1EDE6C160[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE6C160);
  }

  return result;
}

unint64_t sub_1C1AC378C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C1B955F8();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1C1AC37D8(void *a1)
{
  v2 = sub_1C1B945F8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v72 - v7;
  v9 = sub_1C1B944A8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v81 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v72 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v72 - v16;
  v18 = [a1 videoURL];
  if (!v18)
  {
    v25 = sub_1C1B95108();
    sub_1C1AC53E4();
    v26 = sub_1C1B95298();
    sub_1C1B94BA8(v25, &dword_1C1AA2000, v26, "Preprocessing APRepresentationData: Preroll is missing a videoURL", 65, 2, MEMORY[0x1E69E7CC0]);

    return 0;
  }

  v19 = v18;
  sub_1C1B94488();

  v20 = v9;
  v21 = *(v10 + 32);
  v80 = v17;
  v21(v17, v15, v9);
  v22 = a1;
  v79 = sub_1C1AFB6A4(v22);
  v23 = [v22 tapAction];
  if (v23)
  {
    v24 = v23;
    v78 = _s15PromotedContent9TapActionC04makecD04withACSo05APTapD0C_tFZ_0(v23);
  }

  else
  {
    v78 = 0;
  }

  v28 = [v22 identifier];
  sub_1C1B945D8();

  v29 = [v22 desiredPosition];
  if (v29 == 1101)
  {
    v30 = 1101;
  }

  else
  {
    v30 = 0;
  }

  if (v29 == 1102)
  {
    v31 = 1102;
  }

  else
  {
    v31 = v30;
  }

  v32 = v10;
  v76 = *(v10 + 16);
  v77 = v31;
  v76(v81, v80, v20);
  [v22 duration];
  v34 = v33;
  [v22 bitrate];
  v36 = v35;
  result = [v22 duration];
  v39 = v36 * v38;
  if (COERCE__INT64(fabs(v36 * v38)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v39 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v39 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v74 = v6;
  v75 = v8;
  [v22 skipThreshold];
  v41 = v40;
  v42 = [v22 skipEnabled];
  v43 = [v22 unbranded];
  [v22 bitrate];
  v45 = v44;
  v46 = [v22 connectionType];
  result = [v22 signalStrength];
  if ((result & 0x8000000000000000) == 0)
  {
    v47 = result;
    v72 = v46;
    v73 = v20;
    v48 = v43;
    v49 = v42;
    v50 = v2;
    v51 = v39;
    [v22 size];
    v53 = v52;
    v55 = v54;
    v56 = objc_allocWithZone(type metadata accessor for VideoRepresentation(0));
    (*(v10 + 56))(&v56[OBJC_IVAR___APPCVideoRepresentation____lazy_storage___videoURL], 1, 1, v20);
    *&v56[OBJC_IVAR___APPCVideoRepresentation_duration] = v34;
    *&v56[OBJC_IVAR___APPCVideoRepresentation_fileSize] = v51;
    v76(&v56[OBJC_IVAR___APPCVideoRepresentation_originalVideoURL], v81, v20);
    *&v56[OBJC_IVAR___APPCVideoRepresentation_skipThreshold] = v41;
    v56[OBJC_IVAR___APPCVideoRepresentation_skipEnabled] = v49;
    v56[OBJC_IVAR___APPCVideoRepresentation_unbranded] = v48;
    *&v56[OBJC_IVAR___APPCVideoRepresentation_bitrate] = v45;
    *&v56[OBJC_IVAR___APPCVideoRepresentation_connectionType] = v72;
    v57 = &v56[OBJC_IVAR___APPCVideoRepresentation_videoSize];
    *v57 = v53;
    v57[1] = v55;
    *&v56[OBJC_IVAR___APPCVideoRepresentation_signalStrength] = v47;
    v58 = *(v3 + 16);
    v59 = v74;
    v60 = v75;
    v58(v74, v75, v50);
    v61 = v79;
    v62 = v79;
    v63 = sub_1C1B945A8();
    v64 = &v56[OBJC_IVAR___APPCContentRepresentation_identifier];
    *v64 = v63;
    v64[1] = v65;
    v58(&v56[OBJC_IVAR___APPCContentRepresentation_id], v59, v50);
    *&v56[OBJC_IVAR___APPCContentRepresentation_adType] = 3;
    v66 = v78;
    *&v56[OBJC_IVAR___APPCContentRepresentation_desiredPosition] = v77;
    *&v56[OBJC_IVAR___APPCContentRepresentation_privacyMarkerPosition] = 0;
    *&v56[OBJC_IVAR___APPCContentRepresentation_privacyMarkerType] = 0;
    v67 = &v56[OBJC_IVAR___APPCContentRepresentation_adSize];
    *v67 = 0;
    v67[1] = 0;
    *&v56[OBJC_IVAR___APPCContentRepresentation_tapAction] = v66;
    *&v56[OBJC_IVAR___APPCContentRepresentation_adPolicyData] = v61;
    v68 = type metadata accessor for ContentRepresentation(0);
    v82.receiver = v56;
    v82.super_class = v68;
    v27 = objc_msgSendSuper2(&v82, sel_init);

    v69 = *(v3 + 8);
    v69(v59, v50);
    v70 = *(v32 + 8);
    v71 = v73;
    v70(v81, v73);
    v69(v60, v50);
    v70(v80, v71);
    return v27;
  }

LABEL_21:
  __break(1u);
  return result;
}

id sub_1C1AC3EA4(void *a1)
{
  v2 = sub_1C1B945F8();
  v67 = *(v2 - 8);
  v68 = v2;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v63 - v6;
  v8 = [a1 articleID];
  if (!v8 || (v8, (v9 = [a1 campaignData]) == 0))
  {
    v10 = sub_1C1B95108();
    sub_1C1AC53E4();
    v9 = sub_1C1B95298();
    sub_1C1B94BA8(v10, &dword_1C1AA2000, v9, "[PC] While preprocessing APRepresentationData native ad is missing articleID or campaignData.", 93, 2, MEMORY[0x1E69E7CC0]);
  }

  [a1 size];
  v12 = v11;
  [a1 size];
  v14 = v13;
  v15 = a1;
  v65 = sub_1C1AFB6A4(v15);
  v16 = [v15 identifier];
  v66 = v7;
  sub_1C1B945D8();

  v17 = [v15 desiredPosition];
  v64 = sub_1C1B5B708([v15 privacyMarkerPosition]);
  v18 = [v15 articleID];
  if (v18)
  {
    v19 = v18;
    v63 = sub_1C1B94D88();
    v21 = v20;
  }

  else
  {
    v63 = 0;
    v21 = 0;
  }

  v22 = [v15 articleTitle];
  if (v22)
  {
    v23 = v22;
    v24 = sub_1C1B94D88();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  v27 = [v15 advertiserName];
  if (v27)
  {
    v28 = v27;
    v29 = sub_1C1B94D88();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  v32 = [v15 campaignData];
  if (v32)
  {
    v33 = v32;
    v34 = sub_1C1B94D88();
    v36 = v35;
  }

  else
  {
    v34 = 0;
    v36 = 0;
  }

  v37 = objc_allocWithZone(type metadata accessor for NativeRepresentation(0));
  v38 = v37;
  v39 = v63;
  if (!v21)
  {
    v39 = 0;
  }

  v40 = 0xE000000000000000;
  if (v21)
  {
    v41 = v21;
  }

  else
  {
    v41 = 0xE000000000000000;
  }

  v42 = &v37[OBJC_IVAR___APPCNativeRepresentation_articleID];
  *v42 = v39;
  *(v42 + 1) = v41;
  v43 = &v37[OBJC_IVAR___APPCNativeRepresentation_articleTitle];
  *v43 = v24;
  v43[1] = v26;
  v44 = &v37[OBJC_IVAR___APPCNativeRepresentation_advertiserName];
  *v44 = v29;
  v44[1] = v31;
  if (v36)
  {
    v45 = v34;
  }

  else
  {
    v45 = 0;
  }

  if (v36)
  {
    v40 = v36;
  }

  if (v17 == 1101)
  {
    v46 = 1101;
  }

  else
  {
    v46 = 0;
  }

  if (v17 == 1102)
  {
    v47 = 1102;
  }

  else
  {
    v47 = v46;
  }

  v48 = &v37[OBJC_IVAR___APPCNativeRepresentation_campaignData];
  *v48 = v45;
  v48[1] = v40;
  v50 = v66;
  v49 = v67;
  v51 = *(v67 + 16);
  v52 = v68;
  v51(v5, v66, v68);
  v53 = v5;
  v54 = v65;
  v63 = v65;
  v55 = sub_1C1B945A8();
  v56 = &v38[OBJC_IVAR___APPCContentRepresentation_identifier];
  *v56 = v55;
  v56[1] = v57;
  v51(&v38[OBJC_IVAR___APPCContentRepresentation_id], v53, v52);
  *&v38[OBJC_IVAR___APPCContentRepresentation_adType] = 4;
  *&v38[OBJC_IVAR___APPCContentRepresentation_desiredPosition] = v47;
  *&v38[OBJC_IVAR___APPCContentRepresentation_privacyMarkerPosition] = v64;
  *&v38[OBJC_IVAR___APPCContentRepresentation_privacyMarkerType] = 0;
  v58 = &v38[OBJC_IVAR___APPCContentRepresentation_adSize];
  *v58 = v12;
  *(v58 + 1) = v14;
  *&v38[OBJC_IVAR___APPCContentRepresentation_tapAction] = 0;
  *&v38[OBJC_IVAR___APPCContentRepresentation_adPolicyData] = v54;
  v59 = type metadata accessor for ContentRepresentation(0);
  v69.receiver = v38;
  v69.super_class = v59;
  v60 = objc_msgSendSuper2(&v69, sel_init);

  v61 = *(v49 + 8);
  v61(v53, v52);
  v61(v50, v52);
  return v60;
}

id sub_1C1AC439C(void *a1)
{
  v2 = sub_1C1B945F8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v120 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v94 - v6;
  v8 = [a1 adamID];
  v9 = sub_1C1B94D88();
  v119 = v10;

  v11 = [a1 metadata];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1C1B94D88();
    v117 = v14;
    v118 = v13;
  }

  else
  {
    v117 = 0;
    v118 = 0;
  }

  v15 = [a1 clientRequestID];
  v16 = sub_1C1B94D88();
  v115 = v17;
  v116 = v16;

  v18 = [a1 journeyRelayAdGroupId];
  if (v18)
  {
    v19 = v18;
    v20 = sub_1C1B94D88();
    v113 = v21;
    v114 = v20;
  }

  else
  {
    v113 = 0;
    v114 = 0;
  }

  v22 = [a1 journeyRelayCampaignId];
  if (v22)
  {
    v23 = v22;
    v24 = sub_1C1B94D88();
    v111 = v25;
    v112 = v24;
  }

  else
  {
    v111 = 0;
    v112 = 0;
  }

  v110 = [a1 parentAppCheckEnabled];
  v26 = [a1 installAttribution];
  if (v26)
  {
    v27 = v26;
    v109 = sub_1C1B94CB8();
  }

  else
  {
    v109 = 0;
  }

  v108 = [a1 rank];
  v107 = [a1 timeToDisplay];
  v28 = [a1 iAdID];
  v29 = v7;
  sub_1C1B945D8();

  v30 = [a1 storeFront];
  v31 = sub_1C1B94D88();
  v105 = v32;
  v106 = v31;

  v33 = [a1 storeFrontLocale];
  v104 = sub_1C1B94D88();
  v103 = v34;

  [a1 size];
  v36 = v35;
  [a1 size];
  v38 = v37;
  v102 = [a1 odmlSuccess];
  v39 = [a1 treatmentId];
  if (v39)
  {
    v40 = v39;
    v101 = sub_1C1B94D88();
    v100 = v41;
  }

  else
  {
    v101 = 0;
    v100 = 0;
  }

  v42 = [a1 deploymentId];
  v99 = sub_1C1B94D88();
  v98 = v43;

  v44 = [a1 experimentId];
  if (v44)
  {
    v45 = v44;
    v97 = sub_1C1B94D88();
    v96 = v46;
  }

  else
  {
    v97 = 0;
    v96 = 0;
  }

  v47 = [a1 positionInformation];
  if (v47)
  {
    v48 = v47;
    v95 = sub_1C1B94CB8();
  }

  else
  {
    v95 = 0;
  }

  v49 = [a1 slotNumber];
  v50 = [a1 cppIds];
  if (v50)
  {
    v51 = v50;
    v52 = sub_1C1B94EC8();
  }

  else
  {
    v52 = 0;
  }

  v53 = [a1 appMetadata];
  if (v53)
  {
    v54 = v53;
    v55 = sub_1C1B94CB8();
  }

  else
  {
    v55 = 0;
  }

  v56 = [a1 creativeDetails];
  if (v56)
  {
    v57 = v56;
    sub_1C1AC1F08(&qword_1EBF07AD0, &qword_1C1B98EF0);
    v58 = sub_1C1B94EC8();
  }

  else
  {
    v58 = 0;
  }

  v59 = objc_allocWithZone(type metadata accessor for SearchLandingPageRepresentation(0));
  v60 = &v59[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_adamId];
  v62 = v118;
  v61 = v119;
  *v60 = v9;
  v60[1] = v61;
  v63 = &v59[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_metadata];
  v64 = v116;
  v65 = v117;
  *v63 = v62;
  v63[1] = v65;
  v66 = &v59[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_clientRequestId];
  *v66 = v64;
  v67 = v114;
  v66[1] = v115;
  v68 = &v59[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_journeyRelayAdGroupId];
  v69 = v112;
  v70 = v113;
  *v68 = v67;
  v68[1] = v70;
  v71 = &v59[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_journeyRelayCampaignId];
  *v71 = v69;
  v71[1] = v111;
  v59[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_parentAppCheckEnabled] = v110;
  v72 = v108;
  *&v59[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_installAttribution] = v109;
  *&v59[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_rank] = v72;
  *&v59[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_timeToDisplay] = v107;
  v73 = *(v3 + 16);
  v73(&v59[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_iAdId], v29, v2);
  v74 = &v59[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_storeFront];
  v75 = v105;
  *v74 = v106;
  v74[1] = v75;
  v76 = &v59[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_storeFrontLocale];
  v77 = v103;
  *v76 = v104;
  v76[1] = v77;
  v59[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_odmlSuccess] = v102;
  v78 = &v59[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_treatmentId];
  v79 = v100;
  *v78 = v101;
  v78[1] = v79;
  v80 = &v59[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_deploymentId];
  v81 = v98;
  *v80 = v99;
  v80[1] = v81;
  v82 = &v59[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_experimentId];
  v83 = v96;
  *v82 = v97;
  v82[1] = v83;
  *&v59[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_positionInformation] = v95;
  v84 = &v59[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_slotNumber];
  *v84 = v49;
  v84[8] = 0;
  *&v59[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_cppIds] = v52;
  *&v59[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_appMetadata] = v55;
  *&v59[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_creativeDetails] = v58;
  v85 = v120;
  sub_1C1B945E8();
  v86 = sub_1C1B945A8();
  v87 = &v59[OBJC_IVAR___APPCContentRepresentation_identifier];
  *v87 = v86;
  v87[1] = v88;
  v73(&v59[OBJC_IVAR___APPCContentRepresentation_id], v85, v2);
  *&v59[OBJC_IVAR___APPCContentRepresentation_adType] = 6;
  *&v59[OBJC_IVAR___APPCContentRepresentation_desiredPosition] = 0;
  *&v59[OBJC_IVAR___APPCContentRepresentation_privacyMarkerPosition] = 0;
  *&v59[OBJC_IVAR___APPCContentRepresentation_privacyMarkerType] = 0;
  v89 = &v59[OBJC_IVAR___APPCContentRepresentation_adSize];
  *v89 = v36;
  v89[1] = v38;
  *&v59[OBJC_IVAR___APPCContentRepresentation_tapAction] = 0;
  *&v59[OBJC_IVAR___APPCContentRepresentation_adPolicyData] = 0;
  v90 = type metadata accessor for ContentRepresentation(0);
  v121.receiver = v59;
  v121.super_class = v90;
  v91 = objc_msgSendSuper2(&v121, sel_init);
  v92 = *(v3 + 8);
  v92(v85, v2);
  v92(v29, v2);
  return v91;
}

void sub_1C1AC4BFC(void *a1)
{
  v2 = sub_1C1B945F8();
  v86 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v87 = &v78 - v6;
  v7 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v78 - v8;
  v10 = [a1 adTag];
  if (v10)
  {
  }

  else
  {
    v11 = sub_1C1B95108();
    sub_1C1AC53E4();
    v12 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1C1B98E60;
    v14 = [a1 placementType];
    v15 = 0;
    v16 = v14 - 1;
    if (v16 <= 6)
    {
      v15 = qword_1C1B98E70[v16];
    }

    v17 = PlacementType.stringValue.getter(v15);
    v19 = v18;
    *(v13 + 56) = MEMORY[0x1E69E6158];
    *(v13 + 64) = sub_1C1AA5E7C();
    *(v13 + 32) = v17;
    *(v13 + 40) = v19;
    sub_1C1B94BA8(v11, &dword_1C1AA2000, v12, "Preprocessing APRepresentationData: %{public}@ is missing adTag data", 68, 2, v13);
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v20 = a1;

    sub_1C1B04B00(v20);
  }

  else
  {
    v21 = [a1 videoURL];
    if (v21)
    {
      v22 = v21;
      sub_1C1B94488();

      v23 = sub_1C1B944A8();
      (*(*(v23 - 8) + 56))(v9, 0, 1, v23);
    }

    else
    {
      v24 = sub_1C1B944A8();
      (*(*(v24 - 8) + 56))(v9, 1, 1, v24);
    }

    [a1 duration];
    v26 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    [a1 bitrate];
    v28 = v27;
    v29 = [a1 connectionType];
    v30 = [a1 signalStrength];
    if ((v30 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v31 = v30;
      v32 = type metadata accessor for OutstreamVideoInfo(0);
      v33 = objc_allocWithZone(v32);
      sub_1C1AC5430(v9, &v33[OBJC_IVAR___APPCOutstreamVideoInfo_videoAssetURL]);
      *&v33[OBJC_IVAR___APPCOutstreamVideoInfo_videoDuration] = v26;
      *&v33[OBJC_IVAR___APPCOutstreamVideoInfo_bitrate] = v28;
      *&v33[OBJC_IVAR___APPCOutstreamVideoInfo_connectionType] = v29;
      *&v33[OBJC_IVAR___APPCOutstreamVideoInfo_signalStrength] = v31;
      v89.receiver = v33;
      v89.super_class = v32;
      v34 = objc_msgSendSuper2(&v89, sel_init);
      sub_1C1AC54A0(v9);
      v35 = a1;
      v85 = sub_1C1AFB6A4(v35);
      v36 = [v35 tapAction];
      if (v36)
      {
        v37 = v36;
        v84 = _s15PromotedContent9TapActionC04makecD04withACSo05APTapD0C_tFZ_0(v36);
      }

      else
      {
        v84 = 0;
      }

      v38 = [v35 identifier];
      sub_1C1B945D8();

      v39 = [v35 placementType];
      if ((v39 - 1) > 6)
      {
        v83 = 0;
      }

      else
      {
        v83 = qword_1C1B98E70[(v39 - 1)];
      }

      v40 = [v35 desiredPosition];
      if (v40 == 1101)
      {
        v41 = 1101;
      }

      else
      {
        v41 = 0;
      }

      if (v40 == 1102)
      {
        v41 = 1102;
      }

      v82 = v41;
      v81 = sub_1C1B5B708([v35 privacyMarkerPosition]);
      v80 = sub_1C1AFECAC([v35 privacyMarkerType]);
      [v35 size];
      v43 = v42;
      [v35 size];
      v45 = v44;
      v46 = [v35 adTag];
      if (v46)
      {
        v47 = v46;
        v48 = sub_1C1B94D88();
        v50 = v49;
      }

      else
      {
        v48 = 0;
        v50 = 0;
      }

      v51 = v5;
      v52 = [v35 tapAction];
      v53 = [v52 adamIdentifier];

      v54 = [v35 tapAction];
      v55 = v2;
      if (v54)
      {
        v56 = v54;
        v57 = [v54 templateType];
      }

      else
      {
        v57 = 0;
      }

      v58 = objc_allocWithZone(type metadata accessor for BannerRepresentation(0));
      v59 = &v58[OBJC_IVAR___APPCBannerRepresentation_adTag];
      *v59 = v48;
      v59[1] = v50;
      *&v58[OBJC_IVAR___APPCBannerRepresentation_adamIdentifier] = v53;
      v60 = sub_1C1AF1CC0(v57);
      if (v61)
      {
        v62 = 0;
      }

      else
      {
        v62 = v60;
      }

      *&v58[OBJC_IVAR___APPCBannerRepresentation_appAdTemplateType] = v62;
      v63 = v34;
      *&v58[OBJC_IVAR___APPCBannerRepresentation_outstreamVideoInfo] = v34;
      v65 = v86;
      v64 = v87;
      v66 = *(v86 + 16);
      v66(v51, v87, v55);
      v67 = v85;
      v79 = v85;
      v68 = v63;
      v69 = v53;
      v70 = sub_1C1B945A8();
      v71 = &v58[OBJC_IVAR___APPCContentRepresentation_identifier];
      *v71 = v70;
      v71[1] = v72;
      v66(&v58[OBJC_IVAR___APPCContentRepresentation_id], v51, v55);
      v73 = v82;
      *&v58[OBJC_IVAR___APPCContentRepresentation_adType] = v83;
      *&v58[OBJC_IVAR___APPCContentRepresentation_desiredPosition] = v73;
      v74 = v80;
      *&v58[OBJC_IVAR___APPCContentRepresentation_privacyMarkerPosition] = v81;
      *&v58[OBJC_IVAR___APPCContentRepresentation_privacyMarkerType] = v74;
      v75 = &v58[OBJC_IVAR___APPCContentRepresentation_adSize];
      *v75 = v43;
      *(v75 + 1) = v45;
      *&v58[OBJC_IVAR___APPCContentRepresentation_tapAction] = v84;
      *&v58[OBJC_IVAR___APPCContentRepresentation_adPolicyData] = v67;
      v76 = type metadata accessor for ContentRepresentation(0);
      v88.receiver = v58;
      v88.super_class = v76;
      objc_msgSendSuper2(&v88, sel_init);

      v77 = *(v65 + 8);
      v77(v51, v55);
      v77(v64, v55);
    }
  }
}

unint64_t sub_1C1AC53E4()
{
  result = qword_1EDE6C9C0;
  if (!qword_1EDE6C9C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE6C9C0);
  }

  return result;
}

uint64_t sub_1C1AC5430(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1AC54A0(uint64_t a1)
{
  v2 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1C1AC5508(uint64_t a1, uint64_t a2)
{
  v23 = *(v2 + OBJC_IVAR___APPCContext_inventoryLock);
  [v23 lock];
  v5 = OBJC_IVAR___APPCContext_inventory;
  swift_beginAccess();
  v21 = v5;
  v22 = v2;
  v6 = *(v2 + v5);
  if (v6 >> 62)
  {
LABEL_23:
    v24 = v6 & 0xFFFFFFFFFFFFFF8;
    v7 = sub_1C1B953A8();
  }

  else
  {
    v24 = v6 & 0xFFFFFFFFFFFFFF8;
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  while (1)
  {
    if (v7 == v8)
    {

      v17 = sub_1C1B95118();
      sub_1C1AC53E4();
      v18 = sub_1C1B95298();
      sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1C1B98E60;
      *(v19 + 56) = MEMORY[0x1E69E6158];
      *(v19 + 64) = sub_1C1AA5E7C();
      *(v19 + 32) = a1;
      *(v19 + 40) = a2;

      sub_1C1B94BA8(v17, &dword_1C1AA2000, v18, "[PC] Could not find id (%{public}@) in inventory when trying to remove from inventory", 85, 2, v19);

      return [v23 unlock];
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1C6907490](v8, v6);
    }

    else
    {
      if (v8 >= *(v24 + 16))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v9 = *(v6 + 8 * v8 + 32);
      swift_unknownObjectRetain();
    }

    v10 = [v9 identifier];
    v11 = sub_1C1B94D88();
    v13 = v12;

    if (v11 == a1 && v13 == a2)
    {
      break;
    }

    v15 = sub_1C1B95888();
    swift_unknownObjectRelease();

    if (v15)
    {
      goto LABEL_19;
    }

    if (__OFADD__(v8++, 1))
    {
      goto LABEL_22;
    }
  }

  swift_unknownObjectRelease();
LABEL_19:

  swift_beginAccess();
  sub_1C1B2B91C(v8);
  swift_endAccess();
  swift_unknownObjectRelease();
  return [v23 unlock];
}

uint64_t sub_1C1AC57E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for AdContentState(0, *(a3 + a4 - 16), *(a3 + a4 - 8), a4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1);
  return sub_1C1AC5978(v7);
}

uint64_t sub_1C1AC58B8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  v6 = type metadata accessor for AdContentState(0, *(v3 + 80), *(v3 + 88), v5);
  return (*(*(v6 - 8) + 16))(a1, v1 + v4, v6);
}

uint64_t sub_1C1AC5978(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  v6 = type metadata accessor for AdContentState(0, *(v3 + 80), *(v3 + 88), v5);
  (*(*(v6 - 8) + 40))(v1 + v4, a1, v6);
  return swift_endAccess();
}

uint64_t AdContentStateMachine.__allocating_init(initialState:)(uint64_t a1)
{
  v2 = swift_allocObject();
  AdContentStateMachine.init(initialState:)(a1, v3, v4, v5);
  return v2;
}

uint64_t AdContentStateMachine.init(initialState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*v4 + 96);
  v7 = type metadata accessor for AdContentState(0, *(*v4 + 80), *(*v4 + 88), a4);
  (*(*(v7 - 8) + 32))(v4 + v6, a1, v7);
  return v4;
}

uint64_t sub_1C1AC5B28(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*v4 + 88);
  v29 = *(*v4 + 80);
  v7 = type metadata accessor for AdContentState(255, v29, v6, a4);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v30 = *(TupleTypeMetadata2 - 8);
  v9 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v11 = &v29 - v10;
  v12 = *(v7 - 8);
  v13 = MEMORY[0x1EEE9AC00](v9);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v29 - v16;
  v18 = *a1;
  v19 = *(a1 + 8);
  sub_1C1AC58B8(&v29 - v16);
  v20 = &v11[*(TupleTypeMetadata2 + 48)];
  (*(v12 + 32))(v11, v17, v7);
  *v20 = v18;
  v20[8] = v19;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (!v19 || v19 == 7 && v18 == 1)
      {
        sub_1C1AC5F78(v18, v19);
        v25 = v18;
        v26 = v19;
LABEL_36:
        sub_1C1AC5FD0(v25, v26);
        v27 = 1;
        goto LABEL_37;
      }

      goto LABEL_25;
    }

    if (v19 == 7 && !v18)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

  if (EnumCaseMultiPayload)
  {
    (*(v12 + 16))(v15, v11, v7);
    sub_1C1AC5F78(v18, v19);

    sub_1C1AC3404(&qword_1EBF07AD8, &qword_1C1B98EB0);
    v23 = v29;
    v24 = *(swift_getTupleTypeMetadata2() + 48);
    if (v19 <= 3)
    {
      if (v19 == 1 || v19 == 2 || v19 == 3)
      {
        goto LABEL_34;
      }
    }

    else if (v19 <= 6 || v19 == 7 && (v18 == 2 || !v18))
    {
LABEL_34:
      (*(*(v23 - 8) + 8))(&v15[v24], v23);
      goto LABEL_35;
    }

    (*(*(v23 - 8) + 8))(&v15[v24], v23);
    goto LABEL_26;
  }

  if (v19 <= 4)
  {
    switch(v19)
    {
      case 1:
        sub_1C1AC5F78(v18, 1u);
        goto LABEL_35;
      case 2:
        sub_1C1AC5F78(v18, 2u);
        goto LABEL_35;
      case 3:
        sub_1C1AC5F78(v18, 3u);
LABEL_35:
        v25 = *v20;
        v26 = v20[8];
        goto LABEL_36;
    }

    goto LABEL_25;
  }

  switch(v19)
  {
    case 5:
      sub_1C1AC5F78(v18, 5u);
      goto LABEL_35;
    case 6:
      sub_1C1AC5F78(v18, 6u);
      goto LABEL_35;
    case 7:
      if (v18 == 2)
      {
        v22 = 2;
        goto LABEL_12;
      }

      if (v18)
      {
        break;
      }

LABEL_11:
      v22 = 0;
LABEL_12:
      sub_1C1AC5F78(v22, 7u);
      goto LABEL_35;
  }

LABEL_25:
  sub_1C1AC5F78(v18, v19);
LABEL_26:
  v27 = 0;
  v12 = v30;
  v7 = TupleTypeMetadata2;
LABEL_37:
  (*(v12 + 8))(v11, v7);
  return v27;
}

uint64_t sub_1C1AC5F78(uint64_t result, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
    if (a2 >= 2u)
    {
      if (a2 != 2)
      {
        return v2;
      }
    }
  }

  if (a2 <= 4u)
  {
    if (a2 != 3)
    {
      if (a2 != 4)
      {
        return v2;
      }
    }
  }

  if (a2 == 5 || a2 == 6)
  {
  }

  return v2;
}

uint64_t sub_1C1AC5FD0(uint64_t result, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
    if (a2 >= 2u)
    {
      if (a2 != 2)
      {
        return v2;
      }
    }
  }

  if (a2 <= 4u)
  {
    if (a2 != 3)
    {
      if (a2 != 4)
      {
        return v2;
      }
    }
  }

  if (a2 == 5 || a2 == 6)
  {
  }

  return v2;
}

uint64_t sub_1C1AC6028(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for AdContent(0);
  v137 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v134 = &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v125 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v125 - v10;
  v12 = *(v3 + 80);
  v136 = *(v3 + 88);
  v14 = type metadata accessor for AdContentState(255, v12, v136, v13);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v133 = *(TupleTypeMetadata2 - 8);
  v16 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v18 = &v125 - v17;
  v138 = v12;
  v135 = *(v12 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v126 = &v125 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v127 = &v125 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v128 = &v125 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v129 = &v125 - v26;
  v27 = *(v14 - 8);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v140 = &v125 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v131 = &v125 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v130 = &v125 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v36 = &v125 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v144 = (&v125 - v37);
  v38 = *a1;
  v39 = *(a1 + 8);
  v139 = v1;
  sub_1C1AC58B8(v36);
  v132 = TupleTypeMetadata2;
  v40 = &v18[*(TupleTypeMetadata2 + 48)];
  v143 = v27;
  (*(v27 + 32))(v18, v36, v14);
  v145 = v38;
  *v40 = v38;
  v40[8] = v39;
  v141 = v14;
  v142 = v18;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v44 = v141;
      v42 = v143;
      v45 = v144;
      v48 = v145;
      if (v39 == 7 && !v145)
      {
        swift_storeEnumTagMultiPayload();
        v49 = *v40;
        v50 = v40[8];
        sub_1C1AC5F78(0, 7u);
        v51 = v49;
        v52 = v50;
        goto LABEL_64;
      }
    }

    else
    {
      v44 = v141;
      v42 = v143;
      v45 = v144;
      v61 = v145;
      if (!v39)
      {
        sub_1C1AC3404(&qword_1EBF07AD8, &qword_1C1B98EB0);
        v88 = v40;
        v89 = v138;
        swift_getTupleTypeMetadata2();
        *v45 = v61;
        v90 = v136;
        v91 = *(v136 + 16);
        sub_1C1AC5F78(v61, 0);
        sub_1C1AC5F78(v61, 0);
        v91(v89, v90);
        v45 = v144;
        swift_storeEnumTagMultiPayload();
        v51 = *v88;
        v52 = v88[8];
        goto LABEL_64;
      }

      if (v39 == 7 && v145 == 1)
      {
        v62 = *(v136 + 16);
        sub_1C1AC5F78(1, 7u);
        v62();
        swift_storeEnumTagMultiPayload();
        v51 = *v40;
        v52 = v40[8];
        goto LABEL_64;
      }

      v48 = v145;
    }

    sub_1C1AC5F78(v48, v39);
    goto LABEL_26;
  }

  if (!EnumCaseMultiPayload)
  {
    v42 = v143;
    v43 = v130;
    v44 = v141;
    (*(v143 + 16))(v130, v142, v141);
    v45 = v144;
    v46 = v145;
    if (v39 <= 4)
    {
      v47 = v138;
      if ((v39 - 1) >= 3)
      {
        goto LABEL_56;
      }

      goto LABEL_23;
    }

    v47 = v138;
    if (v39 != 5)
    {
      if (v39 == 6)
      {
LABEL_23:
        v63 = v135;
        v64 = v129;
        (*(v135 + 32))(v129, v43, v47);
        v65 = v47;
        v66 = *v40;
        v67 = v40[8];
        sub_1C1AC5F78(v46, v39);
        sub_1C1AC5FD0(v66, v67);
        (*(v42 + 8))(v142, v44);
        v146 = v46;
        v147 = v39;
        (*(v136 + 24))(&v146, v65);
        (*(v63 + 8))(v64, v65);
LABEL_55:
        swift_storeEnumTagMultiPayload();
LABEL_65:
        v105 = v140;
        (*(v42 + 16))(v140, v45, v44);
        sub_1C1AC5978(v105);
        return (*(v42 + 8))(v45, v44);
      }

      if (v39 != 7)
      {
LABEL_56:
        sub_1C1AC5F78(v145, v39);
        (*(v135 + 8))(v43, v47);
        goto LABEL_26;
      }

      if (v145)
      {
        if (v145 == 2)
        {
          goto LABEL_23;
        }

        goto LABEL_56;
      }

      sub_1C1AC5F78(0, 7u);
      (*(v135 + 8))(v43, v47);
LABEL_100:
      sub_1C1AC5FD0(*v40, v40[8]);
      (*(v42 + 8))(v142, v44);
      (*(v136 + 16))(v47);
      goto LABEL_55;
    }

    v99 = v135;
    (*(v135 + 32))(v127, v43, v138);
    sub_1C1AC3404(&qword_1EBF07AD8, &qword_1C1B98EB0);
    swift_getTupleTypeMetadata2();
    v100 = v47;
    *v45 = v46;
    v146 = v46;
    v147 = 5;
    v101 = v136;
    v102 = *(v136 + 24);
    sub_1C1AC5F78(v46, 5u);
    sub_1C1AC5F78(v46, 5u);
    v103 = v40;
    v104 = v127;
    v102(&v146, v100, v101);
    v45 = v144;
    (*(v99 + 8))(v104, v100);
    swift_storeEnumTagMultiPayload();
    v51 = *v103;
    v52 = v103[8];
LABEL_64:
    sub_1C1AC5FD0(v51, v52);
    (*(v42 + 8))(v142, v44);
    goto LABEL_65;
  }

  v130 = v40;
  v42 = v143;
  v53 = v131;
  (*(v143 + 16))(v131, v142, v141);
  v54 = *v53;
  sub_1C1AC3404(&qword_1EBF07AD8, &qword_1C1B98EB0);
  v55 = swift_getTupleTypeMetadata2();
  v56 = *(v55 + 48);
  v57 = v145;
  if (v39 <= 3)
  {
    v47 = v138;
    if ((v39 - 1) < 3)
    {
      goto LABEL_54;
    }

    goto LABEL_62;
  }

  if (v39 > 5)
  {
    v47 = v138;
    if (v39 == 6)
    {
      goto LABEL_54;
    }

    if (v39 == 7)
    {
      v45 = v144;
      if (!v145)
      {
        sub_1C1AC5F78(0, 7u);
        (*(v135 + 8))(v53 + v56, v47);

        v44 = v141;
        v40 = v130;
        goto LABEL_100;
      }

      if (v145 == 2)
      {
LABEL_54:
        v92 = v135;
        v93 = v53 + v56;
        v94 = v128;
        (*(v135 + 32))(v128, v93, v47);
        v95 = *v130;
        v96 = v130[8];
        sub_1C1AC5F78(v57, v39);
        sub_1C1AC5FD0(v95, v96);
        v44 = v141;
        (*(v42 + 8))(v142, v141);
        v45 = v144;
        *v144 = v54;
        v146 = v57;
        v147 = v39;
        v97 = v138;
        (*(v136 + 24))(&v146, v138);
        (*(v92 + 8))(v94, v97);
        goto LABEL_55;
      }
    }

LABEL_62:
    sub_1C1AC5F78(v145, v39);
    (*(v135 + 8))(v53 + v56, v47);

    v44 = v141;
LABEL_26:
    v68 = sub_1C1B95128();
    sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
    v69 = sub_1C1B95298();
    if (!os_log_type_enabled(v69, v68))
    {

      v42 = v143;
      v87 = v132;
LABEL_61:
      v45 = v144;
      sub_1C1AC58B8(v144);
      (*(v133 + 8))(v142, v87);
      goto LABEL_65;
    }

    v70 = swift_slowAlloc();
    v71 = v44;
    v72 = swift_slowAlloc();
    v146 = v72;
    *v70 = 136381187;
    v73 = sub_1C1B95A48();
    v75 = sub_1C1AC7650(v73, v74, &v146);

    *(v70 + 4) = v75;
    *(v70 + 12) = 2082;
    v76 = v140;
    sub_1C1AC58B8(v140);
    v77 = AdContentState.description.getter(v71);
    v79 = v78;
    (*(v143 + 8))(v76, v71);
    v80 = sub_1C1AC7650(v77, v79, &v146);

    *(v70 + 14) = v80;
    *(v70 + 22) = 2082;
    if (v39 > 3)
    {
      if (v39 > 5)
      {
        if (v39 != 6)
        {
          v87 = v132;
          v121 = 0xEF646564616F4C74;
          v122 = 0x6E65746E6F436F6ELL;
          if (v145 != 1)
          {
            v122 = 0x6961466863746566;
            v121 = 0xEB0000000064656CLL;
          }

          if (v145)
          {
            v85 = v122;
          }

          else
          {
            v85 = 0x6974696E49736168;
          }

          if (v145)
          {
            v86 = v121;
          }

          else
          {
            v86 = 0xEE0064657A696C61;
          }

          goto LABEL_60;
        }

        v86 = 0xEE00736E6F697373;
        v85 = 0x655365766F6D6572;
      }

      else
      {
        if (v39 == 4)
        {
          v85 = 0x6F4365766F6D6572;
        }

        else
        {
          v85 = 0x6465766965636572;
        }

        if (v39 == 4)
        {
          v86 = 0xED0000746E65746ELL;
        }

        else
        {
          v86 = 0xEF746E65746E6F43;
        }
      }
    }

    else
    {
      v81 = 0x6863746566657270;
      v82 = 0xE700000000000000;
      v83 = 0x64416863746566;
      if (v39 != 2)
      {
        v83 = 0x6C65636E6163;
        v82 = 0xE600000000000000;
      }

      v84 = 0xED0000646564616FLL;
      if (v39)
      {
        v84 = 0xEF746E65746E6F43;
      }

      else
      {
        v81 = 0x4C746E65746E6F63;
      }

      if (v39 <= 1)
      {
        v85 = v81;
      }

      else
      {
        v85 = v83;
      }

      if (v39 <= 1)
      {
        v86 = v84;
      }

      else
      {
        v86 = v82;
      }
    }

    v87 = v132;
LABEL_60:
    v98 = sub_1C1AC7650(v85, v86, &v146);

    *(v70 + 24) = v98;
    _os_log_impl(&dword_1C1AA2000, v69, v68, "[%{private}s] unexpected event sent to state machine. state: %{public}s, event: %{public}s", v70, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1C6908230](v72, -1, -1);
    MEMORY[0x1C6908230](v70, -1, -1);

    v44 = v141;
    v42 = v143;
    goto LABEL_61;
  }

  if (v39 != 4)
  {
    v58 = v138;
    v59 = v135;
    v60 = v127;
    (*(v135 + 32))(v127, v53 + v56, v138);
    v146 = v54;
    sub_1C1AC5F78(v57, 5u);
    sub_1C1AC5F78(v57, 5u);
    sub_1C1AC7324(v57);
    v45 = v144;
    *v144 = v146;
    v146 = v57;
    v147 = 5;
    (*(v136 + 24))(&v146, v58);
    (*(v59 + 8))(v60, v58);
    v44 = v141;
    swift_storeEnumTagMultiPayload();
    v51 = *v130;
    v52 = v130[8];
    goto LABEL_64;
  }

  v132 = v55;
  (*(v135 + 32))(v126, v53 + v56, v138);
  v107 = *(v54 + 16);
  result = sub_1C1AC5F78(v57, 4u);
  v133 = v107;
  if (!v107)
  {
    v109 = MEMORY[0x1E69E7CC0];
LABEL_95:

    if (*(v109 + 16))
    {
      v45 = v144;
      *v144 = v109;
      v146 = v57;
      v147 = 4;
    }

    else
    {

      v146 = v57;
      v147 = 4;
      v45 = v144;
    }

    v123 = v126;
    v124 = v138;
    (*(v136 + 24))(&v146, v138);
    (*(v135 + 8))(v123, v124);
    v44 = v141;
    v42 = v143;
    swift_storeEnumTagMultiPayload();
    sub_1C1AC5FD0(*v130, v130[8]);
    (*(v42 + 8))(v142, v44);
    goto LABEL_65;
  }

  v108 = 0;
  v109 = MEMORY[0x1E69E7CC0];
  while (v108 < *(v54 + 16))
  {
    v110 = (*(v137 + 80) + 32) & ~*(v137 + 80);
    v111 = v54;
    v112 = v54 + v110;
    v113 = *(v137 + 72);
    sub_1C1AC204C(v112 + v113 * v108++, v11);
    v114 = v57 + v110;
    v115 = *(v57 + 16) + 1;
    while (--v115)
    {
      sub_1C1AC204C(v114, v9);
      if (*(v9 + 1) == *(v11 + 1) && *(v9 + 2) == *(v11 + 2))
      {
        sub_1C1AC20B0(v9);
LABEL_69:
        result = sub_1C1AC20B0(v11);
        v57 = v145;
        goto LABEL_70;
      }

      v114 += v113;
      v117 = sub_1C1B95888();
      sub_1C1AC20B0(v9);
      if (v117)
      {
        goto LABEL_69;
      }
    }

    sub_1C1AC771C(v11, v134);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v146 = v109;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C1AC7C7C(0, *(v109 + 16) + 1, 1);
      v109 = v146;
    }

    v57 = v145;
    v120 = *(v109 + 16);
    v119 = *(v109 + 24);
    if (v120 >= v119 >> 1)
    {
      sub_1C1AC7C7C((v119 > 1), v120 + 1, 1);
      v109 = v146;
    }

    *(v109 + 16) = v120 + 1;
    result = sub_1C1AC771C(v134, v109 + v110 + v120 * v113);
LABEL_70:
    v54 = v111;
    if (v108 == v133)
    {
      goto LABEL_95;
    }
  }

  __break(1u);
  return result;
}

uint64_t AdContentStateMachine.deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 96);
  v6 = type metadata accessor for AdContentState(0, *(*v4 + 80), *(*v4 + 88), a4);
  (*(*(v6 - 8) + 8))(v4 + v5, v6);
  return v4;
}

uint64_t AdContentStateMachine.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AdContentStateMachine.deinit(a1, a2, a3, a4);
  v5 = *(*v4 + 48);
  v6 = *(*v4 + 52);

  return MEMORY[0x1EEE6BDC0](v4, v5, v6);
}

uint64_t sub_1C1AC7324(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1C1ACDE4C(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for AdContent(0);
  if (v8 < v2)
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

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C1AC7450(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_1C1B953A8();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_1C1B953A8();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1C1AA5DDC(result, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1C1AC7548(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1C1B953A8();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1C1B953A8();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1C1AA5DDC(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1C1AC8E54(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_1C1AC7650(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1C1AC7780(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1C1AAA7B8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1C1AA86F8(v11);
  return v7;
}

uint64_t sub_1C1AC771C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdContent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C1AC7780(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1C1AC788C(a5, a6);
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
    result = sub_1C1B954D8();
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

void *sub_1C1AC788C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1C1AC78D8(a1, a2);
  sub_1C1AC7A08(&unk_1F414C200);
  return v3;
}

void *sub_1C1AC78D8(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1C1AC7AF4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1C1B954D8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1C1B94E08();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1C1AC7AF4(v10, 0);
        result = sub_1C1B95448();
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

uint64_t sub_1C1AC7A08(uint64_t result)
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

  result = sub_1C1AC7B68(result, v11, 1, v3);
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

void *sub_1C1AC7AF4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1C1AC1F08(&qword_1EBF07B70, &qword_1C1B98F98);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1C1AC7B68(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C1AC1F08(&qword_1EBF07B70, &qword_1C1B98F98);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1C1AC7C5C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C1AC7F04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C1AC7C7C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C1AC804C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C1AC7CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for AdContentState(319, *(a1 + 80), *(a1 + 88), a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *sub_1C1AC7DE4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C1AC8224(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C1AC7E04(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C1AC8334(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C1AC7E24(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C1AC8674(a1, a2, a3, *v3, &qword_1EBF090A0, &qword_1C1B98F60);
  *v3 = result;
  return result;
}

void *sub_1C1AC7E54(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C1AC8440(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C1AC7E74(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C1AC8574(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C1AC7E94(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C1AC8674(a1, a2, a3, *v3, &qword_1EBF07B38, &qword_1C1B98F58);
  *v3 = result;
  return result;
}

void *sub_1C1AC7EC4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C1AC8770(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C1AC7EE4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C1AC88A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C1AC7F04(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1C1AC1F08(&unk_1EBF08320, &unk_1C1B9AF50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C1AC1F08(&qword_1EBF07B30, &qword_1C1B98F50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C1AC804C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1C1AC1F08(&qword_1EBF07B68, &qword_1C1B98F90);
  v10 = *(type metadata accessor for AdContent(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for AdContent(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1C1AC8224(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C1AC1F08(&qword_1EBF07B00, &unk_1C1BA4320);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C1AC8334(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C1AC1F08(&qword_1EBF07B60, &qword_1C1B9A030);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1C1AC8440(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1C1AC1F08(&qword_1EBF07B48, &qword_1C1B98F70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C1AC1F08(&unk_1EBF09070, &qword_1C1B98F78);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C1AC8574(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C1AC1F08(&qword_1EBF07B40, &qword_1C1B98F68);
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
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_1C1AC8674(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1C1AC1F08(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

void *sub_1C1AC8770(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1C1AC1F08(&qword_1EBF07AE0, &qword_1C1B98EE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C1AC1F08(&qword_1EBF07AD0, &qword_1C1B98EF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C1AC88A4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C1AC1F08(&qword_1EBF07B08, &qword_1C1B98F20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1C1AC8998(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1C1B953A8();
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
      result = sub_1C1B953A8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1C1AC9190(&qword_1EBF07B18, &qword_1EBF07B10, &unk_1C1B98F28);
          for (i = 0; i != v6; ++i)
          {
            sub_1C1AC1F08(&qword_1EBF07B10, &unk_1C1B98F28);
            v9 = sub_1C1B2A49C(v13, i, a3);
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
        type metadata accessor for AdContentSession(0);
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

uint64_t sub_1C1AC8B28(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1C1B953A8();
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
      result = sub_1C1B953A8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1C1AC9190(&qword_1EBF07B58, &qword_1EBF07B50, &unk_1C1B98F80);
          for (i = 0; i != v6; ++i)
          {
            sub_1C1AC1F08(&qword_1EBF07B50, &unk_1C1B98F80);
            v9 = sub_1C1B2A524(v13, i, a3);
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
        type metadata accessor for ContentDepiction();
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

uint64_t sub_1C1AC8CB8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1C1B953A8();
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
      result = sub_1C1B953A8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1C1AC9190(&qword_1EBF07AF8, &qword_1EBF07AF0, &unk_1C1B98F10);
          for (i = 0; i != v6; ++i)
          {
            sub_1C1AC1F08(&qword_1EBF07AF0, &unk_1C1B98F10);
            v9 = sub_1C1B2A5A4(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
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
        sub_1C1AC1F08(&qword_1EBF07AE8, qword_1C1BA46C0);
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

uint64_t sub_1C1AC8E54(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1C1B953A8();
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
      result = sub_1C1B953A8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1C1AC9190(&qword_1EBF07B28, &qword_1EBF07B20, &unk_1C1B98F40);
          for (i = 0; i != v6; ++i)
          {
            sub_1C1AC1F08(&qword_1EBF07B20, &unk_1C1B98F40);
            v9 = sub_1C1B2A414(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
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
        sub_1C1AC1F08(&unk_1EBF09020, &qword_1C1B98F38);
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

uint64_t sub_1C1AC8FF0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1C1B953A8();
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
      result = sub_1C1B953A8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1C1AC9190(&qword_1EDE6BB90, &qword_1EBF09470, qword_1C1B98EF8);
          for (i = 0; i != v6; ++i)
          {
            sub_1C1AC1F08(&qword_1EBF09470, qword_1C1B98EF8);
            v9 = sub_1C1B2A624(v13, i, a3);
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
        sub_1C1AA576C(0, qword_1EDE6CA20, 0x1E698A028);
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

uint64_t sub_1C1AC9190(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C1AC3404(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AdType.adTypeInternal.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C1B94A38();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  if (v7 <= 4)
  {
    v9 = MEMORY[0x1E6989E90];
    v10 = MEMORY[0x1E6989EA0];
    v11 = MEMORY[0x1E6989E80];
    if (v7 != 3)
    {
      v11 = MEMORY[0x1E6989E88];
    }

    if (v7 != 2)
    {
      v10 = v11;
    }

    if (*v1)
    {
      v9 = MEMORY[0x1E6989E98];
    }

    if (*v1 <= 1u)
    {
      v12 = v9;
    }

    else
    {
      v12 = v10;
    }

    (*(v4 + 104))(v6, *v12, v3);
    (*(v4 + 32))(a1, v6, v3);
    v13 = *MEMORY[0x1E6989C88];
    v14 = sub_1C1B94728();
    return (*(*(v14 - 8) + 104))(a1, v13, v14);
  }

  else
  {
    if (*v1 > 7u)
    {
      if (v7 == 8)
      {
        v8 = MEMORY[0x1E6989C98];
      }

      else if (v7 == 9)
      {
        v8 = MEMORY[0x1E6989C80];
      }

      else
      {
        v8 = MEMORY[0x1E6989CA8];
      }
    }

    else if (v7 == 5)
    {
      v8 = MEMORY[0x1E6989CA0];
    }

    else if (v7 == 6)
    {
      v8 = MEMORY[0x1E6989C78];
    }

    else
    {
      v8 = MEMORY[0x1E6989C90];
    }

    v16 = *v8;
    v17 = sub_1C1B94728();
    v18 = *(*(v17 - 8) + 104);

    return v18(a1, v16, v17);
  }
}

uint64_t AppPlacementLocation.hashValue.getter()
{
  v1 = *v0;
  sub_1C1B95958();
  MEMORY[0x1C6907960](v1);
  return sub_1C1B959A8();
}

unint64_t sub_1C1AC9508()
{
  result = qword_1EBF07B78;
  if (!qword_1EBF07B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07B78);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AdType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_20;
  }

  v2 = a2 + 10;
  if (a2 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 10;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 10;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 5)
  {
    v8 = v7 - 4;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 7)
  {
    return v8 - 6;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AdType(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 10;
  if (a3 + 10 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF6)
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1C1AC96B4(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 5)
  {
    return v1 - 4;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1C1AC96C8(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 4;
  }

  return result;
}

uint64_t JourneyMetricsHelperDiagnostics.EventType.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  if (*(v0 + 16) <= 1u)
  {
    if (*(v0 + 16))
    {

      return v2;
    }

    sub_1C1B95468();

    v8 = 0xD00000000000001BLL;
    v3 = sub_1C1B95858();
    MEMORY[0x1C6906DF0](v3);

    v4 = 41;
    v1 = 0xE100000000000000;
    goto LABEL_6;
  }

  if (*(v0 + 16) == 2)
  {
    v8 = 0x3A524F525245;
    v4 = *v0;
LABEL_6:
    MEMORY[0x1C6906DF0](v4, v1);
    return v8;
  }

  if (v2 <= 3)
  {
    v5 = 0x64657461657263;
    if (v2 ^ 2 | v1)
    {
      v6 = 0x6465646E61707865;
    }

    else
    {
      v6 = 0x7964616572;
    }

    if (v2 | v1)
    {
      v5 = 0x646564616F6CLL;
    }

    if (v2 <= 1)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else if (v2 <= 5)
  {
    if (v2 ^ 4 | v1)
    {
      return 0x6E65657263536E6FLL;
    }

    else
    {
      return 0x657370616C6C6F63;
    }
  }

  else if (v2 ^ 6 | v1)
  {
    if (v2 ^ 7 | v1)
    {
      return 0x646564616F6C6E75;
    }

    else
    {
      return 0x74736F6E67616944;
    }
  }

  else
  {
    return 0x656572635366666FLL;
  }
}

uint64_t JourneyMetricsHelperDiagnostics.EventType.initial.getter()
{
  if (*(v0 + 16) > 1u)
  {
    if (*(v0 + 16) == 2)
    {
      return 33;
    }

    else
    {
      return qword_1C1B9A080[*v0];
    }
  }

  else if (*(v0 + 16))
  {
    return 63;
  }

  else
  {
    return 78;
  }
}

uint64_t sub_1C1AC99A8(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x726F727265;
    v7 = 0x74736F6E67616964;
    if (a1 != 10)
    {
      v7 = 0x646564616F6C6E75;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x6E65657263536E6FLL;
    v9 = 0x656572635366666FLL;
    if (a1 != 7)
    {
      v9 = 0x6D6F74737563;
    }

    if (a1 != 6)
    {
      v8 = v9;
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
    v1 = 0x64657461657263;
    v2 = 0x6465646E61707865;
    v3 = 0x6E61707845746F6ELL;
    if (a1 != 4)
    {
      v3 = 0x657370616C6C6F63;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x646564616F6CLL;
    if (a1 != 1)
    {
      v4 = 0x7964616572;
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

uint64_t sub_1C1AC9B38@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C1ACF7BC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C1AC9B6C(uint64_t a1)
{
  v2 = sub_1C1ACAF58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AC9BA8(uint64_t a1)
{
  v2 = sub_1C1ACAF58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1AC9BF0(uint64_t a1)
{
  v2 = sub_1C1ACB1A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AC9C2C(uint64_t a1)
{
  v2 = sub_1C1ACB1A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1AC9C68(uint64_t a1)
{
  v2 = sub_1C1ACB39C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AC9CA4(uint64_t a1)
{
  v2 = sub_1C1ACB39C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1AC9D00(uint64_t a1)
{
  v2 = sub_1C1ACB0A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AC9D3C(uint64_t a1)
{
  v2 = sub_1C1ACB0A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1AC9D78(uint64_t a1)
{
  v2 = sub_1C1ACB000();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AC9DB4(uint64_t a1)
{
  v2 = sub_1C1ACB000();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1AC9DF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C1B95888();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C1AC9E78(uint64_t a1)
{
  v2 = sub_1C1ACB054();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AC9EB4(uint64_t a1)
{
  v2 = sub_1C1ACB054();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1AC9EF0(uint64_t a1)
{
  v2 = sub_1C1ACB2A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AC9F2C(uint64_t a1)
{
  v2 = sub_1C1ACB2A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1AC9F68(uint64_t a1)
{
  v2 = sub_1C1ACB348();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AC9FA4(uint64_t a1)
{
  v2 = sub_1C1ACB348();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1AC9FE0()
{
  sub_1C1B95958();
  MEMORY[0x1C6907960](0);
  return sub_1C1B959A8();
}

uint64_t sub_1C1ACA024(uint64_t a1)
{
  sub_1C1B95958();
  MEMORY[0x1C6907960](0);
  return sub_1C1B959A8();
}

uint64_t sub_1C1ACA078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C1B95888();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C1ACA0FC(uint64_t a1)
{
  v2 = sub_1C1ACB1F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1ACA138(uint64_t a1)
{
  v2 = sub_1C1ACB1F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1ACA174(uint64_t a1)
{
  v2 = sub_1C1ACB0FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1ACA1B0(uint64_t a1)
{
  v2 = sub_1C1ACB0FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1ACA1EC(uint64_t a1)
{
  v2 = sub_1C1ACB150();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1ACA228(uint64_t a1)
{
  v2 = sub_1C1ACB150();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1ACA264(uint64_t a1)
{
  v2 = sub_1C1ACB2F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1ACA2A0(uint64_t a1)
{
  v2 = sub_1C1ACB2F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1ACA2DC(uint64_t a1)
{
  v2 = sub_1C1ACAFAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1ACA318(uint64_t a1)
{
  v2 = sub_1C1ACAFAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t JourneyMetricsHelperDiagnostics.EventType.encode(to:)(void *a1)
{
  v3 = sub_1C1AC1F08(&qword_1EBF07B80, &qword_1C1B990C0);
  v75 = *(v3 - 8);
  v76 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v74 = &v50 - v4;
  v5 = sub_1C1AC1F08(&qword_1EBF07B88, &qword_1C1B990C8);
  v72 = *(v5 - 8);
  v73 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v71 = &v50 - v6;
  v7 = sub_1C1AC1F08(&qword_1EBF07B90, &qword_1C1B990D0);
  v83 = *(v7 - 8);
  v84 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v82 = &v50 - v8;
  v9 = sub_1C1AC1F08(&qword_1EBF07B98, &qword_1C1B990D8);
  v80 = *(v9 - 8);
  v81 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v79 = &v50 - v10;
  v11 = sub_1C1AC1F08(&qword_1EBF07BA0, &qword_1C1B990E0);
  v69 = *(v11 - 8);
  v70 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v68 = &v50 - v12;
  v67 = sub_1C1AC1F08(&qword_1EBF07BA8, &qword_1C1B990E8);
  v66 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v65 = &v50 - v13;
  v64 = sub_1C1AC1F08(&qword_1EBF07BB0, &qword_1C1B990F0);
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v62 = &v50 - v14;
  v15 = sub_1C1AC1F08(&qword_1EBF07BB8, &qword_1C1B990F8);
  v77 = *(v15 - 8);
  v78 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v50 - v16;
  v61 = sub_1C1AC1F08(&qword_1EBF07BC0, &qword_1C1B99100);
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v59 = &v50 - v18;
  v58 = sub_1C1AC1F08(&qword_1EBF07BC8, &qword_1C1B99108);
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v56 = &v50 - v19;
  v55 = sub_1C1AC1F08(&qword_1EBF07BD0, &qword_1C1B99110);
  v54 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v53 = &v50 - v20;
  v52 = sub_1C1AC1F08(&qword_1EBF07BD8, &qword_1C1B99118);
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v22 = &v50 - v21;
  v23 = sub_1C1AC1F08(&qword_1EBF07BE0, &qword_1C1B99120);
  v24 = *(v23 - 8);
  v86 = v23;
  v87 = v24;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v50 - v25;
  v27 = *v1;
  v28 = *(v1 + 8);
  v29 = *(v1 + 16);
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1ACAF58();
  v85 = v26;
  sub_1C1B95A18();
  if (v29 <= 1)
  {
    if (!v29)
    {
      LOBYTE(v89) = 4;
      sub_1C1ACB1F8();
      v31 = v85;
      v30 = v86;
      sub_1C1B95728();
      v89 = v27;
      sub_1C1ACB24C();
      v32 = v78;
      sub_1C1B95808();
      (*(v77 + 8))(v17, v32);
      return (*(v87 + 8))(v31, v30);
    }

    LOBYTE(v89) = 8;
    sub_1C1ACB0A8();
    v33 = v79;
    v31 = v85;
    v30 = v86;
    sub_1C1B95728();
    v34 = v81;
    sub_1C1B957A8();
    v35 = v80;
LABEL_7:
    (*(v35 + 8))(v33, v34);
    return (*(v87 + 8))(v31, v30);
  }

  if (v29 == 2)
  {
    LOBYTE(v89) = 9;
    sub_1C1ACB054();
    v33 = v82;
    v31 = v85;
    v30 = v86;
    sub_1C1B95728();
    v34 = v84;
    sub_1C1B957A8();
    v35 = v83;
    goto LABEL_7;
  }

  if (v27 <= 3)
  {
    if (v27 > 1)
    {
      if (v27 ^ 2 | v28)
      {
        LOBYTE(v89) = 3;
        sub_1C1ACB2A0();
        v48 = v59;
        v39 = v85;
        v38 = v86;
        sub_1C1B95728();
        v42 = *(v60 + 8);
        v43 = v48;
        v44 = &v90;
      }

      else
      {
        LOBYTE(v89) = 2;
        sub_1C1ACB2F4();
        v45 = v56;
        v39 = v85;
        v38 = v86;
        sub_1C1B95728();
        v42 = *(v57 + 8);
        v43 = v45;
        v44 = &v88;
      }
    }

    else if (v27 | v28)
    {
      LOBYTE(v89) = 1;
      sub_1C1ACB348();
      v47 = v53;
      v39 = v85;
      v38 = v86;
      sub_1C1B95728();
      v42 = *(v54 + 8);
      v43 = v47;
      v44 = &v87;
    }

    else
    {
      LOBYTE(v89) = 0;
      sub_1C1ACB39C();
      v39 = v85;
      v38 = v86;
      sub_1C1B95728();
      v42 = *(v51 + 8);
      v43 = v22;
      v44 = &v84;
    }
  }

  else
  {
    if (v27 > 5)
    {
      if (v27 ^ 6 | v28)
      {
        if (v27 ^ 7 | v28)
        {
          LOBYTE(v89) = 11;
          sub_1C1ACAFAC();
          v37 = v74;
          v39 = v85;
          v38 = v86;
          sub_1C1B95728();
          v41 = v75;
          v40 = v76;
        }

        else
        {
          LOBYTE(v89) = 10;
          sub_1C1ACB000();
          v37 = v71;
          v39 = v85;
          v38 = v86;
          sub_1C1B95728();
          v41 = v72;
          v40 = v73;
        }
      }

      else
      {
        LOBYTE(v89) = 7;
        sub_1C1ACB0FC();
        v37 = v68;
        v39 = v85;
        v38 = v86;
        sub_1C1B95728();
        v41 = v69;
        v40 = v70;
      }

      (*(v41 + 8))(v37, v40);
      return (*(v87 + 8))(v39, v38);
    }

    if (v27 ^ 4 | v28)
    {
      LOBYTE(v89) = 6;
      sub_1C1ACB150();
      v49 = v65;
      v39 = v85;
      v38 = v86;
      sub_1C1B95728();
      v42 = *(v66 + 8);
      v43 = v49;
      v44 = &v92;
    }

    else
    {
      LOBYTE(v89) = 5;
      sub_1C1ACB1A4();
      v46 = v62;
      v39 = v85;
      v38 = v86;
      sub_1C1B95728();
      v42 = *(v63 + 8);
      v43 = v46;
      v44 = &v91;
    }
  }

  v42(v43, *(v44 - 32));
  return (*(v87 + 8))(v39, v38);
}

unint64_t sub_1C1ACAF58()
{
  result = qword_1EBF07BE8;
  if (!qword_1EBF07BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07BE8);
  }

  return result;
}

unint64_t sub_1C1ACAFAC()
{
  result = qword_1EBF07BF0;
  if (!qword_1EBF07BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07BF0);
  }

  return result;
}

unint64_t sub_1C1ACB000()
{
  result = qword_1EBF07BF8;
  if (!qword_1EBF07BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07BF8);
  }

  return result;
}

unint64_t sub_1C1ACB054()
{
  result = qword_1EBF07C00;
  if (!qword_1EBF07C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07C00);
  }

  return result;
}

unint64_t sub_1C1ACB0A8()
{
  result = qword_1EBF07C08;
  if (!qword_1EBF07C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07C08);
  }

  return result;
}

unint64_t sub_1C1ACB0FC()
{
  result = qword_1EBF07C10;
  if (!qword_1EBF07C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07C10);
  }

  return result;
}

unint64_t sub_1C1ACB150()
{
  result = qword_1EBF07C18;
  if (!qword_1EBF07C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07C18);
  }

  return result;
}

unint64_t sub_1C1ACB1A4()
{
  result = qword_1EBF07C20;
  if (!qword_1EBF07C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07C20);
  }

  return result;
}

unint64_t sub_1C1ACB1F8()
{
  result = qword_1EBF07C28;
  if (!qword_1EBF07C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07C28);
  }

  return result;
}

unint64_t sub_1C1ACB24C()
{
  result = qword_1EBF07C30;
  if (!qword_1EBF07C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07C30);
  }

  return result;
}

unint64_t sub_1C1ACB2A0()
{
  result = qword_1EBF07C38;
  if (!qword_1EBF07C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07C38);
  }

  return result;
}

unint64_t sub_1C1ACB2F4()
{
  result = qword_1EBF07C40;
  if (!qword_1EBF07C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07C40);
  }

  return result;
}

unint64_t sub_1C1ACB348()
{
  result = qword_1EBF07C48;
  if (!qword_1EBF07C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07C48);
  }

  return result;
}

unint64_t sub_1C1ACB39C()
{
  result = qword_1EBF07C50;
  if (!qword_1EBF07C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07C50);
  }

  return result;
}

uint64_t JourneyMetricsHelperDiagnostics.EventType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v115 = a2;
  v3 = sub_1C1AC1F08(&qword_1EBF07C58, &qword_1C1B99128);
  v102 = *(v3 - 8);
  v103 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v110 = &v77 - v4;
  v5 = sub_1C1AC1F08(&qword_1EBF07C60, &qword_1C1B99130);
  v100 = *(v5 - 8);
  v101 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v109 = &v77 - v6;
  v7 = sub_1C1AC1F08(&qword_1EBF07C68, &qword_1C1B99138);
  v98 = *(v7 - 8);
  v99 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v114 = &v77 - v8;
  v104 = sub_1C1AC1F08(&qword_1EBF07C70, &qword_1C1B99140);
  v97 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v108 = &v77 - v9;
  v96 = sub_1C1AC1F08(&qword_1EBF07C78, &qword_1C1B99148);
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v107 = &v77 - v10;
  v94 = sub_1C1AC1F08(&qword_1EBF07C80, &qword_1C1B99150);
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v113 = &v77 - v11;
  v92 = sub_1C1AC1F08(&qword_1EBF07C88, &qword_1C1B99158);
  v90 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v106 = &v77 - v12;
  v89 = sub_1C1AC1F08(&qword_1EBF07C90, &qword_1C1B99160);
  v91 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v105 = &v77 - v13;
  v87 = sub_1C1AC1F08(&qword_1EBF07C98, &qword_1C1B99168);
  v88 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v112 = &v77 - v14;
  v85 = sub_1C1AC1F08(&qword_1EBF07CA0, &qword_1C1B99170);
  v86 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v111 = &v77 - v15;
  v84 = sub_1C1AC1F08(&qword_1EBF07CA8, &qword_1C1B99178);
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v17 = &v77 - v16;
  v18 = sub_1C1AC1F08(&qword_1EBF07CB0, &qword_1C1B99180);
  v82 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v77 - v19;
  v21 = sub_1C1AC1F08(&qword_1EBF07CB8, &qword_1C1B99188);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v77 - v23;
  v25 = a1[3];
  v117 = a1;
  sub_1C1AAABE0(a1, v25);
  sub_1C1ACAF58();
  v26 = v116;
  sub_1C1B95A08();
  if (v26)
  {
    return sub_1C1AA86F8(v117);
  }

  v77 = v18;
  v78 = v17;
  v27 = v111;
  v28 = v112;
  v29 = v113;
  v30 = v114;
  v79 = 0;
  v116 = v22;
  v31 = v115;
  v80 = v21;
  v81 = v24;
  v32 = sub_1C1B95718();
  if (*(v32 + 16) != 1 || (v33 = *(v32 + 32), v33 == 12))
  {
    v38 = sub_1C1B954C8();
    swift_allocError();
    v40 = v39;
    sub_1C1AC1F08(&qword_1EBF07CC0, &qword_1C1B99190);
    *v40 = &type metadata for JourneyMetricsHelperDiagnostics.EventType;
    v41 = v80;
    v42 = v81;
    sub_1C1B95618();
    sub_1C1B954B8();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x1E69E6AF8], v38);
    swift_willThrow();
    (*(v116 + 8))(v42, v41);
    goto LABEL_11;
  }

  if (*(v32 + 32) > 5u)
  {
    v44 = v81;
    if (*(v32 + 32) > 8u)
    {
      v45 = v31;
      v46 = v116;
      v47 = v80;
      if (v33 == 9)
      {
        LOBYTE(v118) = 9;
        sub_1C1ACB054();
        v68 = v79;
        sub_1C1B95608();
        if (!v68)
        {
          v69 = v99;
          v52 = sub_1C1B95698();
          v50 = v75;
          (*(v98 + 8))(v30, v69);
          (*(v46 + 8))(v44, v47);
          swift_unknownObjectRelease();
          v51 = 2;
          goto LABEL_51;
        }
      }

      else
      {
        v114 = v32;
        v59 = v79;
        if (v33 == 10)
        {
          LOBYTE(v118) = 10;
          sub_1C1ACB000();
          v60 = v109;
          sub_1C1B95608();
          if (!v59)
          {
            (*(v100 + 8))(v60, v101);
            (*(v46 + 8))(v44, v47);
            swift_unknownObjectRelease();
            v50 = 0;
            v51 = 3;
            v52 = 7;
            goto LABEL_51;
          }
        }

        else
        {
          LOBYTE(v118) = 11;
          sub_1C1ACAFAC();
          v74 = v110;
          sub_1C1B95608();
          if (!v59)
          {
            (*(v102 + 8))(v74, v103);
            (*(v46 + 8))(v44, v47);
            swift_unknownObjectRelease();
            v50 = 0;
            v51 = 3;
            v52 = 8;
            goto LABEL_51;
          }
        }
      }
    }

    else
    {
      v45 = v31;
      v46 = v116;
      v47 = v80;
      if (v33 == 6)
      {
        LOBYTE(v118) = 6;
        sub_1C1ACB150();
        v64 = v79;
        sub_1C1B95608();
        if (!v64)
        {
          (*(v93 + 8))(v29, v94);
          (*(v46 + 8))(v44, v47);
          swift_unknownObjectRelease();
          v50 = 0;
          v51 = 3;
          v52 = 5;
          goto LABEL_51;
        }
      }

      else
      {
        v48 = v79;
        if (v33 == 7)
        {
          LOBYTE(v118) = 7;
          sub_1C1ACB0FC();
          v49 = v107;
          sub_1C1B95608();
          if (!v48)
          {
            (*(v95 + 8))(v49, v96);
            (*(v46 + 8))(v44, v47);
            swift_unknownObjectRelease();
            v50 = 0;
            v51 = 3;
            v52 = 6;
            goto LABEL_51;
          }
        }

        else
        {
          LOBYTE(v118) = 8;
          sub_1C1ACB0A8();
          v71 = v108;
          sub_1C1B95608();
          if (!v48)
          {
            v52 = sub_1C1B95698();
            v50 = v76;
            (*(v97 + 8))(v71, v104);
            (*(v46 + 8))(v44, v47);
            swift_unknownObjectRelease();
            v51 = 1;
            goto LABEL_51;
          }
        }
      }
    }

    (*(v46 + 8))(v44, v47);
    goto LABEL_11;
  }

  if (*(v32 + 32) > 2u)
  {
    v53 = v116;
    if (v33 != 3)
    {
      v114 = v32;
      v54 = v80;
      v55 = v81;
      if (v33 == 4)
      {
        LOBYTE(v118) = 4;
        sub_1C1ACB1F8();
        v56 = v105;
        v57 = v79;
        sub_1C1B95608();
        if (!v57)
        {
          v45 = v31;
          sub_1C1ACC688();
          v58 = v89;
          sub_1C1B956F8();
          (*(v91 + 8))(v56, v58);
          (*(v53 + 8))(v55, v54);
          swift_unknownObjectRelease();
          v50 = 0;
          v51 = 0;
          v52 = v118;
          goto LABEL_51;
        }
      }

      else
      {
        LOBYTE(v118) = 5;
        sub_1C1ACB1A4();
        v72 = v106;
        v73 = v79;
        sub_1C1B95608();
        if (!v73)
        {
          v45 = v31;
          (*(v90 + 8))(v72, v92);
          (*(v53 + 8))(v55, v54);
          swift_unknownObjectRelease();
          v50 = 0;
          v51 = 3;
          v52 = 4;
          goto LABEL_51;
        }
      }

      (*(v53 + 8))(v55, v54);
      goto LABEL_11;
    }

    LOBYTE(v118) = 3;
    sub_1C1ACB2A0();
    v65 = v80;
    v66 = v81;
    v67 = v79;
    sub_1C1B95608();
    if (v67)
    {
      (*(v53 + 8))(v66, v65);
      goto LABEL_11;
    }

    (*(v88 + 8))(v28, v87);
    (*(v53 + 8))(v66, v65);
    swift_unknownObjectRelease();
    v50 = 0;
    v52 = 3;
    goto LABEL_45;
  }

  if (!*(v32 + 32))
  {
    LOBYTE(v118) = 0;
    sub_1C1ACB39C();
    v61 = v80;
    v62 = v81;
    v63 = v79;
    sub_1C1B95608();
    if (v63)
    {
      goto LABEL_27;
    }

    (*(v82 + 8))(v20, v77);
    (*(v116 + 8))(v62, v61);
    swift_unknownObjectRelease();
    v52 = 0;
    v50 = 0;
LABEL_45:
    v51 = 3;
    v45 = v31;
    goto LABEL_51;
  }

  if (v33 != 1)
  {
    LOBYTE(v118) = 2;
    sub_1C1ACB2F4();
    v61 = v80;
    v62 = v81;
    v70 = v79;
    sub_1C1B95608();
    if (!v70)
    {
      (*(v86 + 8))(v27, v85);
      (*(v116 + 8))(v62, v61);
      swift_unknownObjectRelease();
      v50 = 0;
      v51 = 3;
      v52 = 2;
      v45 = v31;
      goto LABEL_51;
    }

LABEL_27:
    (*(v116 + 8))(v62, v61);
    goto LABEL_11;
  }

  LOBYTE(v118) = 1;
  sub_1C1ACB348();
  v34 = v78;
  v35 = v80;
  v36 = v81;
  v37 = v79;
  sub_1C1B95608();
  if (v37)
  {
    (*(v116 + 8))(v36, v35);
LABEL_11:
    swift_unknownObjectRelease();
    return sub_1C1AA86F8(v117);
  }

  (*(v83 + 8))(v34, v84);
  (*(v116 + 8))(v36, v35);
  swift_unknownObjectRelease();
  v50 = 0;
  v51 = 3;
  v52 = 1;
  v45 = v31;
LABEL_51:
  *v45 = v52;
  *(v45 + 8) = v50;
  *(v45 + 16) = v51;
  return sub_1C1AA86F8(v117);
}

unint64_t sub_1C1ACC688()
{
  result = qword_1EBF07CC8;
  if (!qword_1EBF07CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07CC8);
  }

  return result;
}

uint64_t sub_1C1ACC6DC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C1ACC710()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 8;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C1ACC78C()
{
  if (*v0)
  {
    return 0x65746E49656D6974;
  }

  else
  {
    return 0x707954746E657665;
  }
}

uint64_t sub_1C1ACC7D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x707954746E657665 && a2 == 0xE900000000000065;
  if (v6 || (sub_1C1B95888() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65746E49656D6974 && a2 == 0xEC0000006C617672)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C1B95888();

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

uint64_t sub_1C1ACC8C8(uint64_t a1)
{
  v2 = sub_1C1ACCB10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1ACC904(uint64_t a1)
{
  v2 = sub_1C1ACCB10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t JourneyMetricsHelperDiagnostics.Event.encode(to:)(void *a1)
{
  v3 = sub_1C1AC1F08(&qword_1EBF07CD0, &qword_1C1B99198);
  v12 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v11 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1ACCAF4(v6, v7, v8);
  sub_1C1ACCB10();
  sub_1C1B95A18();
  v14 = v6;
  v15 = v7;
  v16 = v8;
  v13 = 0;
  sub_1C1ACCB64();
  v9 = v11;
  sub_1C1B95808();
  sub_1C1ACCBB8(v14, v15, v16);
  if (!v9)
  {
    LOBYTE(v14) = 1;
    sub_1C1B957C8();
  }

  return (*(v12 + 8))(v5, v3);
}

uint64_t sub_1C1ACCAF4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 1)
  {
  }

  return result;
}

unint64_t sub_1C1ACCB10()
{
  result = qword_1EBF07CD8;
  if (!qword_1EBF07CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07CD8);
  }

  return result;
}

unint64_t sub_1C1ACCB64()
{
  result = qword_1EBF07CE0;
  if (!qword_1EBF07CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07CE0);
  }

  return result;
}

uint64_t sub_1C1ACCBB8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 1)
  {
  }

  return result;
}

uint64_t JourneyMetricsHelperDiagnostics.Event.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C1AC1F08(&qword_1EBF07CE8, &unk_1C1B991A0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1ACCB10();
  sub_1C1B95A08();
  if (v2)
  {
    return sub_1C1AA86F8(a1);
  }

  v16 = 0;
  sub_1C1ACCDEC();
  sub_1C1B956F8();
  v9 = v17;
  v10 = v18;
  v15 = v19;
  LOBYTE(v17) = 1;
  sub_1C1B956B8();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  *a2 = v9;
  *(a2 + 8) = v10;
  v13 = v15;
  *(a2 + 16) = v15;
  *(a2 + 24) = v12;
  sub_1C1ACCAF4(v9, v10, v13);
  sub_1C1AA86F8(a1);
  return sub_1C1ACCBB8(v9, v10, v13);
}

unint64_t sub_1C1ACCDEC()
{
  result = qword_1EBF07CF0;
  if (!qword_1EBF07CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07CF0);
  }

  return result;
}

void sub_1C1ACCE70(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C1B94588();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v8 = *(a1 + 8);
  v10 = *(a1 + 16);
  sub_1C1ACCAF4(*a1, v8, *(a1 + 16));
  sub_1C1B94578();
  sub_1C1B944F8();
  v12 = v11;
  (*(v5 + 8))(v7, v4);
  v35[0] = v9;
  v35[1] = v8;
  v36 = v10;
  v37 = v12;
  sub_1C1ACD800(v35);
  v13 = OBJC_IVAR____TtC15PromotedContent31JourneyMetricsHelperDiagnostics_history;
  swift_beginAccess();
  v14 = *(v2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v13) = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_1C1ACDE74(0, *(v14 + 2) + 1, 1, v14);
    *(v2 + v13) = v14;
  }

  v17 = *(v14 + 2);
  v16 = *(v14 + 3);
  if (v17 >= v16 >> 1)
  {
    v14 = sub_1C1ACDE74((v16 > 1), v17 + 1, 1, v14);
  }

  *(v14 + 2) = v17 + 1;
  v18 = &v14[32 * v17];
  *(v18 + 4) = v9;
  *(v18 + 5) = v8;
  v18[48] = v10;
  *(v18 + 7) = v12;
  *(v2 + v13) = v14;
  swift_endAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    swift_beginAccess();
    v21 = swift_unknownObjectWeakLoadStrong();
    if (v21)
    {
      v22 = [v21 identifier];
      swift_unknownObjectRelease();
      v23 = sub_1C1B94D88();
      v25 = v24;

      if (v10 == 3 && v9 <= 3 && !(v9 ^ 2 | v8))
      {
        v26 = (v2 + OBJC_IVAR____TtC15PromotedContent31JourneyMetricsHelperDiagnostics_lastReadyIdentifier);
        v27 = *(v2 + OBJC_IVAR____TtC15PromotedContent31JourneyMetricsHelperDiagnostics_lastReadyIdentifier + 8);
        if (v27)
        {
          v28 = *v26;
          v32 = 0;
          v33 = 0xE000000000000000;

          sub_1C1B95468();

          v32 = 0xD000000000000020;
          v33 = 0x80000001C1BA71F0;
          MEMORY[0x1C6906DF0](v28, v27);

          v29 = v32;
          v30 = v33;
          v34 = 2;
          sub_1C1ACCE70(&v32);

          sub_1C1ACCBB8(v29, v30, 2u);
        }

        else
        {
        }

        *v26 = v23;
        v26[1] = v25;
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1C1ACD1D8()
{
  v1 = OBJC_IVAR____TtC15PromotedContent31JourneyMetricsHelperDiagnostics_history;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);

  if (v3)
  {
    v5 = 0;
    v6 = (v2 + 48);
    while (v5 < *(v2 + 16))
    {
      v9 = *(v6 - 2);
      v8 = *(v6 - 1);
      v10 = *v6;
      if (v10 > 1)
      {
        if (v10 == 2)
        {
          sub_1C1ACCAF4(*(v6 - 2), *(v6 - 1), 2u);
          v7 = 33;
        }

        else
        {
          v7 = qword_1C1B9A080[v9];
        }
      }

      else if (*v6)
      {
        sub_1C1ACCAF4(*(v6 - 2), *(v6 - 1), 1u);
        v7 = 63;
      }

      else
      {
        v7 = 78;
      }

      ++v5;
      MEMORY[0x1C6906DF0](v7, 0xE100000000000000);

      result = sub_1C1ACCBB8(v9, v8, v10);
      v6 += 32;
      if (v3 == v5)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    return 0;
  }

  return result;
}

uint64_t sub_1C1ACD320()
{
  v34 = sub_1C1B94588();
  v1 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC15PromotedContent31JourneyMetricsHelperDiagnostics_history;
  swift_beginAccess();
  v5 = *(v0 + v4);
  v6 = *(v5 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v40 = MEMORY[0x1E69E7CC0];

    sub_1C1AC7E04(0, v6, 0);
    v7 = v40;
    v30 = v5;
    v31 = 0x80000001C1BA71A0;
    v32 = (v1 + 8);
    v33 = "ed.  Used to be ";
    v8 = v5 + 56;
    while (1)
    {
      v10 = *(v8 - 24);
      v9 = *(v8 - 16);
      v11 = *(v8 - 8);
      sub_1C1B944E8();
      v12 = objc_allocWithZone(MEMORY[0x1E696AB78]);
      v13 = [v12 init];
      v14 = sub_1C1B94D78();
      [v13 setDateFormat_];

      v15 = sub_1C1B94538();
      v16 = [v13 stringFromDate_];

      v17 = sub_1C1B94D88();
      v19 = v18;

      v38 = v17;
      v39 = v19;
      MEMORY[0x1C6906DF0](32, 0xE100000000000000);
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          if (v10 <= 3)
          {
            if (v10 > 1)
            {
              if (v10 ^ 2 | v9)
              {
                v9 = 0xE800000000000000;
                v10 = 0x6465646E61707865;
              }

              else
              {
                v9 = 0xE500000000000000;
                v10 = 0x7964616572;
              }
            }

            else if (v10 | v9)
            {
              v9 = 0xE600000000000000;
              v10 = 0x646564616F6CLL;
            }

            else
            {
              v9 = 0xE700000000000000;
              v10 = 0x64657461657263;
            }
          }

          else if (v10 <= 5)
          {
            if (v10 ^ 4 | v9)
            {
              v9 = 0xE800000000000000;
              v10 = 0x6E65657263536E6FLL;
            }

            else
            {
              v10 = 0x657370616C6C6F63;
              v9 = 0xE900000000000064;
            }
          }

          else if (v10 ^ 6 | v9)
          {
            if (v10 ^ 7 | v9)
            {
              v9 = 0xE800000000000000;
              v10 = 0x646564616F6C6E75;
            }

            else
            {
              v10 = 0x74736F6E67616944;
              v9 = 0xEF706D7544206369;
            }
          }

          else
          {
            v9 = 0xE90000000000006ELL;
            v10 = 0x656572635366666FLL;
          }

          goto LABEL_10;
        }

        v36 = 0x3A524F525245;
        v37 = 0xE600000000000000;
        v21 = v10;
        v22 = v9;
      }

      else
      {
        if (v11)
        {

          goto LABEL_10;
        }

        v36 = 0;
        v37 = 0xE000000000000000;
        sub_1C1B95468();

        v36 = 0xD00000000000001BLL;
        v37 = v31;
        v35 = v10;
        v20 = sub_1C1B95858();
        MEMORY[0x1C6906DF0](v20);

        v21 = 41;
        v22 = 0xE100000000000000;
      }

      MEMORY[0x1C6906DF0](v21, v22);
      v10 = v36;
      v9 = v37;
LABEL_10:
      MEMORY[0x1C6906DF0](v10, v9);

      v23 = v38;
      v24 = v39;
      (*v32)(v3, v34);
      v40 = v7;
      v26 = *(v7 + 16);
      v25 = *(v7 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1C1AC7E04((v25 > 1), v26 + 1, 1);
        v7 = v40;
      }

      *(v7 + 16) = v26 + 1;
      v27 = v7 + 16 * v26;
      *(v27 + 32) = v23;
      *(v27 + 40) = v24;
      v8 += 32;
      if (!--v6)
      {

        break;
      }
    }
  }

  v38 = v7;
  sub_1C1AC1F08(&unk_1EBF07AA0, &qword_1C1B98CF0);
  sub_1C1ACE700();
  v28 = sub_1C1B94D58();

  return v28;
}

uint64_t sub_1C1ACD800(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  if (*(v1 + OBJC_IVAR____TtC15PromotedContent31JourneyMetricsHelperDiagnostics_lastReadyIdentifier + 8))
  {
    v5 = 82;
  }

  else
  {
    v5 = 95;
  }

  MEMORY[0x1C6906DF0](v5, 0xE100000000000000);

  v6 = sub_1C1ACD1D8();
  v8 = v7;
  v9 = JourneyMetricsHelperDiagnostics.EventType.initial.getter();

  MEMORY[0x1C6906DF0](v9, 0xE100000000000000);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = [v12 identifier];
      swift_unknownObjectRelease();
      v14 = sub_1C1B94D88();
      v26 = v15;
      v27 = v14;

      sub_1C1B95468();

      MEMORY[0x1C6906DF0](46, 0xE100000000000000);
      MEMORY[0x1C6906DF0](v6, v8);

      MEMORY[0x1C6906DF0](0xD000000000000014, 0x80000001C1BA7380);
      v16 = JourneyMetricsHelperDiagnostics.EventType.description.getter();
      MEMORY[0x1C6906DF0](v16);

      MEMORY[0x1C6906DF0](1531138080, 0xE400000000000000);
      MEMORY[0x1C6906DF0](v27, v26);

      MEMORY[0x1C6906DF0](93, 0xE100000000000000);
      v17 = sub_1C1B95118();
      sub_1C1AC53E4();
      v18 = sub_1C1B95298();
      sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1C1B98E60;
      *(v19 + 56) = MEMORY[0x1E69E6158];
      *(v19 + 64) = sub_1C1AA5E7C();
      *(v19 + 32) = 0;
      *(v19 + 40) = 0xE000000000000000;
      sub_1C1B94BA8(v17, &dword_1C1AA2000, v18, "%{public}@", 10, 2, v19);

LABEL_11:
    }
  }

  if (v4 != 3 || v3 | v2)
  {
    v21 = sub_1C1B95118();
    sub_1C1AC53E4();
    v18 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1C1B98E60;
    v23 = JourneyMetricsHelperDiagnostics.EventType.description.getter();
    v25 = v24;
    *(v22 + 56) = MEMORY[0x1E69E6158];
    *(v22 + 64) = sub_1C1AA5E7C();
    *(v22 + 32) = v23;
    *(v22 + 40) = v25;
    sub_1C1B94BA8(v21, &dword_1C1AA2000, v18, "***[Diagnostic] Couldn't find helper or promotedContent in log(%{public}@)", 74, 2, v22);
    goto LABEL_11;
  }

  return result;
}

id JourneyMetricsHelperDiagnostics.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id JourneyMetricsHelperDiagnostics.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for JourneyMetricsHelperDiagnostics();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *sub_1C1ACDD20(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C1AC1F08(&qword_1EBF07E50, &qword_1C1B9A040);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}