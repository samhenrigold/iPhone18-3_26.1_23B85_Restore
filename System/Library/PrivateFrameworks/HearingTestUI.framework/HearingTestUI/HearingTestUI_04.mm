uint64_t sub_20CDD7C98(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20CDD6F40(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_20CDD7F3C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_20CDD8778(v5 + 1);
  }

  v8 = *v3;
  sub_20CE14384();
  MEMORY[0x20F3138A0](v4);
  result = sub_20CE143B4();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_20CE142D4();
  __break(1u);
  return result;
}

void *sub_20CDD7DE4()
{
  v1 = v0;
  sub_20CDD8FD8(0, &qword_27C8130D0, sub_20CDD8F20, &type metadata for HearingTestFlowAnalyticsStepActionPair);
  v2 = *v0;
  v3 = sub_20CE14084();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 2 * v14) = *(*(v2 + 48) + 2 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_20CDD7F3C()
{
  v1 = v0;
  sub_20CDD8FD8(0, &qword_27C8130E0, sub_20CDB9D40, &type metadata for HearingTestInterruptionType);
  v2 = *v0;
  v3 = sub_20CE14084();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_20CDD8094(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_20CDD8FD8(0, &qword_27C8130D0, sub_20CDD8F20, &type metadata for HearingTestFlowAnalyticsStepActionPair);
  result = sub_20CE14094();
  v5 = result;
  if (*(v3 + 16))
  {
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
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 2 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_20CE14384();
      sub_20CE139C4();

      sub_20CE143A4();
      if (v19 != 16)
      {
        sub_20CE139C4();
      }

      result = sub_20CE143B4();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_30;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 2 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_20CDD8778(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_20CDD8FD8(0, &qword_27C8130E0, sub_20CDB9D40, &type metadata for HearingTestInterruptionType);
  result = sub_20CE14094();
  v5 = result;
  if (*(v3 + 16))
  {
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
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_20CE14384();
      MEMORY[0x20F3138A0](v16);
      result = sub_20CE143B4();
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
      *(*(v5 + 48) + v12) = v16;
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

        v2 = v1;
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

uint64_t sub_20CDD89B0(uint64_t a1)
{
  v2 = type metadata accessor for SessionManager.EndReason(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_20CDD8A14(uint64_t a1)
{
  sub_20CDD8C64(319, &qword_281111770, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_20CDD8B50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20CD7C660;

  return sub_20CDD598C(a1, v4, v5, v6);
}

unint64_t sub_20CDD8C0C()
{
  result = qword_27C812AB8;
  if (!qword_27C812AB8)
  {
    sub_20CE136C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812AB8);
  }

  return result;
}

void sub_20CDD8C64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_20CDD8CC8()
{
  result = qword_27C812AC8;
  if (!qword_27C812AC8)
  {
    sub_20CDD8C64(255, &qword_27C812AC0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812AC8);
  }

  return result;
}

void sub_20CDD8D50()
{
  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v2 = sub_20CE13914();
  v3 = [v1 initWithSuiteName_];

  if (!v3)
  {
    __break(1u);
  }

  *(v0 + OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_userDefaults) = v3;
  *(v0 + OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_maxPauseTime) = 0x405E000000000000;
  *(v0 + OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_hasTransitionedPastFirstState) = 0;
  *(v0 + OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_sessionManager) = 0;
  v4 = OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_evaluationStartDate;
  v5 = sub_20CE124E4();
  (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  v6 = v0 + OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_evaluationDuration;
  *v6 = 0;
  *(v6 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_pauseTimer) = 0;
  swift_unknownObjectWeakInit();
  sub_20CE141B4();
  __break(1u);
}

uint64_t sub_20CDD8EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t sub_20CDD8F20()
{
  result = qword_27C8130D8;
  if (!qword_27C8130D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8130D8);
  }

  return result;
}

uint64_t sub_20CDD8F74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionManager.EndReason(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_20CDD8FD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_20CE140B4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_20CDD9040(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_20CDD9098(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  v4 = sub_20CE12644();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_20CE12694();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = sub_20CE126A4();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  sub_20CE13B84();
  v3[16] = sub_20CE13B74();
  v8 = sub_20CE13B24();
  v3[17] = v8;
  v3[18] = v7;

  return MEMORY[0x2822009F8](sub_20CDD927C, v8, v7);
}

uint64_t sub_20CDD927C()
{
  v1 = v0[4];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v8 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[19] = v4;
  *v4 = v0;
  v4[1] = sub_20CDD93B0;
  v5 = v0[15];
  v6 = v0[3];

  return v8(v5, v6, v2, v3);
}

uint64_t sub_20CDD93B0()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_20CDD94D0, v3, v2);
}

uint64_t sub_20CDD94D0()
{
  v38 = v0;
  v1 = v0[15];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];

  (*(v3 + 16))(v2, v1, v4);
  v5 = (*(v3 + 88))(v2, v4);
  if (v5 == *MEMORY[0x277D12C78])
  {
    v36 = v5;
    (*(v0[13] + 96))(v0[14], v0[12]);
    if (qword_27C811D00 != -1)
    {
      swift_once();
    }

    v6 = sub_20CE12CB4();
    __swift_project_value_buffer(v6, qword_27C817768);
    v7 = sub_20CE12C94();
    v8 = sub_20CE13CD4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v37 = v10;
      *v9 = 136446210;
      v11 = sub_20CE14414();
      v13 = sub_20CD96DCC(v11, v12, &v37);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_20CD70000, v7, v8, "[%{public}s] Real results are being ignored. Using HTHearingTestThreshold defined in User Defaults.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x20F314110](v10, -1, -1);
      MEMORY[0x20F314110](v9, -1, -1);
    }

    v34 = v0[15];
    v35 = v0[14];
    v15 = v0[12];
    v14 = v0[13];
    v16 = v0[10];
    v17 = v0[11];
    v18 = v0[9];
    v19 = v0[2];
    (*(v0[7] + 104))(v0[8], *MEMORY[0x277D12C48], v0[6]);

    sub_20CDD9AB0(0x20000000000001uLL);
    sub_20CD7C52C(0);
    v33 = *(v20 + 48);
    sub_20CE12654();
    (*(v16 + 16))(v19, v17, v18);
    sub_20CD7C2DC(0);
    swift_storeEnumTagMultiPayload();
    sub_20CE127D4();
    (*(v16 + 8))(v17, v18);
    (*(v14 + 8))(v34, v15);
    (*(v14 + 104))(v19, v36, v15);
    v21 = sub_20CE127E4();
    (*(*(v21 - 8) + 8))(v35 + v33, v21);
    sub_20CD96BB0(v35);
  }

  else
  {
    v22 = v0[14];
    v23 = v0[15];
    v25 = v0[12];
    v24 = v0[13];
    v26 = v0[2];
    if (v5 == *MEMORY[0x277D12C70])
    {
      (*(v24 + 96))(v0[14], v0[12]);
      sub_20CD7C468(0);
      v28 = *(v27 + 64);
      (*(v24 + 32))(v26, v23, v25);
      v29 = sub_20CE12744();
      (*(*(v29 - 8) + 8))(v22 + v28, v29);
      v30 = sub_20CE12714();
      (*(*(v30 - 8) + 8))(v22, v30);
    }

    else
    {
      (*(v24 + 32))(v0[2], v0[15], v0[12]);
      (*(v24 + 8))(v22, v25);
    }
  }

  v31 = v0[1];

  return v31();
}

uint64_t HTThresholdsFromDefaultsSession.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return v0;
}

uint64_t HTThresholdsFromDefaultsSession.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_20CDD9A00(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20CD7C660;

  return sub_20CDD9098(a1, a2);
}

unint64_t sub_20CDD9AB0(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x20F314120](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x20F314120](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t dispatch thunk of HTThresholdsFromDefaultsSession.hearingTestStatusWithAverageNoise(for:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 104) + **(*v2 + 104));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_20CD7C660;

  return v8(a1, a2);
}

uint64_t sub_20CDD9CC8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[3] = a5;
  v15[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a1, a5);
  type metadata accessor for HTThresholdsFromDefaultsSession();
  v11 = swift_allocObject();
  sub_20CD7C388(v15, v11 + 16);
  v12 = NSUserDefaults.overridenHTThresholds(channel:)(a2);

  v13 = sub_20CE12924();
  (*(*(v13 - 8) + 8))(a2, v13);
  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  if (v12)
  {
    *(v11 + 56) = v12;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v11 + 16));
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v11;
}

uint64_t sub_20CDD9DF0()
{
  v1 = 1 << *v0;
  if ((v1 & 0x5B) != 0)
  {
    if (qword_27C811DC8 == -1)
    {
      return sub_20CE12354();
    }

    goto LABEL_9;
  }

  if ((v1 & 0x24) != 0)
  {
    if (qword_27C811DC8 == -1)
    {
      return sub_20CE12354();
    }

    goto LABEL_9;
  }

  if (qword_27C811DC8 != -1)
  {
LABEL_9:
    swift_once();
  }

  return sub_20CE12354();
}

uint64_t sub_20CDD9F8C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (v3 > 3)
  {
    if (*v2 <= 5u)
    {
LABEL_12:
      if (qword_27C811DC8 == -1)
      {
        return sub_20CE12354();
      }

      goto LABEL_18;
    }

    if (v3 != 6)
    {
      if (qword_27C811DC8 == -1)
      {
        return sub_20CE12354();
      }

LABEL_18:
      swift_once();
      return sub_20CE12354();
    }

LABEL_10:
    if (qword_27C811DC8 == -1)
    {
      return sub_20CE12354();
    }

    goto LABEL_18;
  }

  if (v3 < 2)
  {
    goto LABEL_10;
  }

  if (v3 == 2)
  {
    goto LABEL_12;
  }

  if (!a2)
  {
    if (qword_27C811DC8 == -1)
    {
      return sub_20CE12354();
    }

    goto LABEL_18;
  }

  v5 = qword_27C811DC8;

  if (v5 != -1)
  {
    swift_once();
  }

  sub_20CE12354();
  sub_20CDDA6DC(0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_20CE16370;
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_20CDCB52C();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  v8 = sub_20CE13924();

  return v8;
}

unint64_t HearingTestInterruptionType.description.getter()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000015;
    if (v1 == 6)
    {
      v5 = 0xD000000000000013;
    }

    v6 = 0xD000000000000012;
    if (v1 != 4)
    {
      v6 = 0xD000000000000018;
    }

    if (*v0 <= 5u)
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
    v2 = 0x6361654420707041;
    v3 = 0xD000000000000017;
    if (v1 != 2)
    {
      v3 = 0xD000000000000012;
    }

    if (!*v0)
    {
      v2 = 0xD000000000000010;
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
}

uint64_t HearingTestInterruptionType.hashValue.getter()
{
  v1 = *v0;
  sub_20CE14384();
  MEMORY[0x20F3138A0](v1);
  return sub_20CE143B4();
}

unint64_t sub_20CDDA47C()
{
  result = qword_27C8130E8;
  if (!qword_27C8130E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8130E8);
  }

  return result;
}

unint64_t sub_20CDDA4D4()
{
  result = qword_27C8130F0;
  if (!qword_27C8130F0)
  {
    sub_20CDDA52C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8130F0);
  }

  return result;
}

void sub_20CDDA52C()
{
  if (!qword_27C8130F8)
  {
    v0 = sub_20CE13B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27C8130F8);
    }
  }
}

uint64_t getEnumTagSinglePayload for HearingTestInterruptionType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HearingTestInterruptionType(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_20CDDA6DC(uint64_t a1)
{
  if (!qword_27C8135A0)
  {
    sub_20CDDA734();
    v1 = sub_20CE14264();
    if (!v2)
    {
      atomic_store(v1, &qword_27C8135A0);
    }
  }
}

unint64_t sub_20CDDA734()
{
  result = qword_27C812240;
  if (!qword_27C812240)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27C812240);
  }

  return result;
}

uint64_t sub_20CDDA798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x277D85720];
  sub_20CDE3904(0, &qword_27C811EA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v25 - v11;
  sub_20CDE3524(a3, v25 - v11, &qword_27C811EA0, v9);
  v13 = sub_20CE13BB4();
  v14 = *(v13 - 8);
  LODWORD(v9) = (*(v14 + 48))(v12, 1, v13);

  if (v9 == 1)
  {
    sub_20CDE32D0(v12, &qword_27C811EA0, MEMORY[0x277D85720], MEMORY[0x277D83D88], sub_20CDE3904);
  }

  else
  {
    sub_20CE13BA4();
    (*(v14 + 8))(v12, v13);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_20CE13B24();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_20CE13994() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_20CDE32D0(a3, &qword_27C811EA0, MEMORY[0x277D85720], MEMORY[0x277D83D88], sub_20CDE3904);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_20CDE32D0(a3, &qword_27C811EA0, MEMORY[0x277D85720], MEMORY[0x277D83D88], sub_20CDE3904);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_20CDDAB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x277D85720];
  sub_20CDE3904(0, &qword_27C811EA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v25 - v11;
  sub_20CDE3524(a3, v25 - v11, &qword_27C811EA0, v9);
  v13 = sub_20CE13BB4();
  v14 = *(v13 - 8);
  LODWORD(v9) = (*(v14 + 48))(v12, 1, v13);

  if (v9 == 1)
  {
    sub_20CDE32D0(v12, &qword_27C811EA0, MEMORY[0x277D85720], MEMORY[0x277D83D88], sub_20CDE3904);
  }

  else
  {
    sub_20CE13BA4();
    (*(v14 + 8))(v12, v13);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_20CE13B24();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_20CE13994() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_20CDE32D0(a3, &qword_27C811EA0, MEMORY[0x277D85720], MEMORY[0x277D83D88], sub_20CDE3904);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_20CDE32D0(a3, &qword_27C811EA0, MEMORY[0x277D85720], MEMORY[0x277D83D88], sub_20CDE3904);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_20CDDAF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x277D85720];
  sub_20CDE3904(0, &qword_27C811EA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v25 - v11;
  sub_20CDE3524(a3, v25 - v11, &qword_27C811EA0, v9);
  v13 = sub_20CE13BB4();
  v14 = *(v13 - 8);
  LODWORD(v9) = (*(v14 + 48))(v12, 1, v13);

  if (v9 == 1)
  {
    sub_20CDE32D0(v12, &qword_27C811EA0, MEMORY[0x277D85720], MEMORY[0x277D83D88], sub_20CDE3904);
  }

  else
  {
    sub_20CE13BA4();
    (*(v14 + 8))(v12, v13);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_20CE13B24();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v25[0] = a3;
      v19 = sub_20CE13994() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_20CDE3B1C(0, &qword_27C8131E0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D83D88]);

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_20CDE32D0(v25[0], &qword_27C811EA0, MEMORY[0x277D85720], MEMORY[0x277D83D88], sub_20CDE3904);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_20CDE32D0(a3, &qword_27C811EA0, MEMORY[0x277D85720], MEMORY[0x277D83D88], sub_20CDE3904);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  sub_20CDE3B1C(0, &qword_27C8131E0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D83D88]);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_20CDDB38C(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_resultsProcessor;
  swift_beginAccess();
  type metadata accessor for ResultsProcessor(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v5 = sub_20CE12644();
      (*(*(v5 - 8) + 8))(v3, v5);
      v6 = &qword_27C8131D8;
      v7 = &type metadata for ResultsProcessor.Partial;
    }

    else
    {
      v9 = sub_20CE12644();
      (*(*(v9 - 8) + 8))(v3, v9);
      v6 = &qword_27C8131D0;
      v7 = &type metadata for ResultsProcessor.Complete;
    }

    goto LABEL_8;
  }

  if (EnumCaseMultiPayload)
  {
    v8 = sub_20CE12644();
    (*(*(v8 - 8) + 8))(v3, v8);
    v6 = &qword_27C812EB8;
    v7 = &type metadata for ResultsProcessor.Empty;
LABEL_8:
    sub_20CDE3B1C(0, v6, v7, sub_20CDFCB50);

    goto LABEL_9;
  }

  sub_20CDE3608(v3, type metadata accessor for ResultsProcessor);
LABEL_9:
  sub_20CDE39FC(a1, v3, type metadata accessor for ResultsProcessor);
  return swift_endAccess();
}

void sub_20CDDB588(_BYTE *a1@<X8>)
{
  sub_20CE13B84();
  v1 = 0;
  v2 = "SkipFitAndNoiseCheck";
  while (1)
  {
    v3 = byte_2823BAF48[v1 + 32];
    sub_20CE13B74();
    sub_20CE13B24();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (v3 < 6)
    {
      break;
    }

    if (v3 > 6)
    {
      goto LABEL_28;
    }

    v14 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v15 = sub_20CE13914();
    v6 = [v14 initWithSuiteName_];

    if (!v6)
    {
      goto LABEL_36;
    }

    v16 = [objc_opt_self() sharedBehavior];
    if (!v16)
    {
      goto LABEL_35;
    }

    v17 = v16;
    v18 = [v16 isAppleInternalInstall];

    if (!v18 || (v19 = v2, v20 = sub_20CE13914(), v21 = [v6 hk:v20 keyExists:?], v20, (v21 & 1) == 0))
    {
LABEL_29:

      goto LABEL_30;
    }

    v22 = sub_20CE13914();
    v23 = [v6 BOOLForKey_];

    v2 = v19;
    if ((v23 & 1) == 0)
    {
      goto LABEL_30;
    }

LABEL_2:
    if (++v1 == 10)
    {
      goto LABEL_37;
    }
  }

  if ((v3 - 2) >= 4)
  {
    if (v3 != 1)
    {
LABEL_28:

LABEL_30:
      *a1 = v3;
      return;
    }

    v24 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v25 = sub_20CE13914();
    v6 = [v24 initWithSuiteName_];

    if (!v6)
    {
      goto LABEL_34;
    }

    v26 = [objc_opt_self() sharedBehavior];
    if (!v26)
    {
      goto LABEL_33;
    }

    v27 = v26;
    v28 = [v26 isAppleInternalInstall];

    if (!v28)
    {
      goto LABEL_29;
    }

    v29 = sub_20CE13914();
    v30 = [v6 hk:v29 keyExists:?];

    if ((v30 & 1) == 0)
    {
      goto LABEL_29;
    }

    v31 = sub_20CE13914();
    v32 = [v6 BOOLForKey_];

    if (!v32)
    {
      goto LABEL_30;
    }

    goto LABEL_2;
  }

  v4 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v5 = sub_20CE13914();
  v6 = [v4 initWithSuiteName_];

  if (v6)
  {
    v7 = [objc_opt_self() sharedBehavior];
    if (!v7)
    {
      goto LABEL_32;
    }

    v8 = v7;
    v9 = [v7 isAppleInternalInstall];

    if (!v9)
    {
      goto LABEL_29;
    }

    v10 = sub_20CE13914();
    v11 = [v6 hk:v10 keyExists:?];

    if ((v11 & 1) == 0)
    {
      goto LABEL_29;
    }

    v12 = sub_20CE13914();
    v13 = [v6 BOOLForKey_];

    if ((v13 & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_2;
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  sub_20CE141B4();
  __break(1u);
}

uint64_t sub_20CDDBA74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v102 = a2;
  ObjectType = swift_getObjectType();
  v6 = sub_20CE124E4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v96 - v11;
  sub_20CDE3904(0, &qword_27C8124A8, MEMORY[0x277D12D30], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v96 - v14;
  swift_beginAccess();
  sub_20CDFD7EC(a1);
  swift_endAccess();
  v16 = sub_20CDDB32C(v104);
  v18 = v17;
  type metadata accessor for ResultsProcessor(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v101 = v2;
    if (EnumCaseMultiPayload == 2)
    {
      v29 = *(v2 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager + 8);
      v30 = swift_getObjectType();
      v31 = (*(v29 + 8))(v30, v29);
      sub_20CE127C4();
      v32 = sub_20CE12984();
      (*(*(v32 - 8) + 56))(v15, 0, 1, v32);
      v33 = OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_leftNoiseMetrics;
      swift_beginAccess();
      sub_20CDE3968(v15, v31 + v33);
      swift_endAccess();

      sub_20CDE3B1C(0, &qword_27C8131D8, &type metadata for ResultsProcessor.Partial, sub_20CDFCB50);
      sub_20CE124C4();
      sub_20CE124C4();
      sub_20CD83128(0, &qword_27C812330, 0x277CCD040);
      v34 = sub_20CE13AA4();
      v35 = v6;
      v36 = sub_20CE124A4();
      v37 = sub_20CE124A4();
      v38 = v7;
      v39 = [objc_opt_self() audiogramSampleWithSensitivityPoints:v34 startDate:v36 endDate:v37 device:0 metadata:0];

      v40 = *(v38 + 8);
      v40(v10, v35);
      v40(v12, v35);
      LODWORD(v34) = [v39 isAmbiguous];

      if (!v34)
      {
        if (qword_27C811D08 != -1)
        {
          swift_once();
        }

        v83 = sub_20CE12CB4();
        __swift_project_value_buffer(v83, qword_27C817780);
        v21 = sub_20CE12C94();
        v22 = sub_20CE13CD4();
        if (!os_log_type_enabled(v21, v22))
        {
          goto LABEL_28;
        }

        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v103[0] = v24;
        *v23 = 136446210;
        v84 = sub_20CE14414();
        v86 = sub_20CD96DCC(v84, v85, v103);

        *(v23 + 4) = v86;
        v28 = "[%{public}s] Partial results are not ambiguous.";
        goto LABEL_27;
      }

      if (qword_27C811D08 != -1)
      {
        swift_once();
      }

      v41 = sub_20CE12CB4();
      __swift_project_value_buffer(v41, qword_27C817780);
      v42 = sub_20CE12C94();
      v43 = sub_20CE13CD4();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v103[0] = v45;
        *v44 = 136446210;
        v46 = sub_20CE14414();
        v48 = sub_20CD96DCC(v46, v47, v103);

        *(v44 + 4) = v48;
        _os_log_impl(&dword_20CD70000, v42, v43, "[%{public}s] Partial results are ambiguous.", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v45);
        MEMORY[0x20F314110](v45, -1, -1);
        MEMORY[0x20F314110](v44, -1, -1);
      }

      sub_20CDDC6B4();
    }

    else
    {
      v99 = v16;
      if (qword_27C811D08 != -1)
      {
        swift_once();
      }

      v100 = v18;
      v97 = v7;
      v98 = v6;
      v49 = sub_20CE12CB4();
      v96[2] = __swift_project_value_buffer(v49, qword_27C817780);
      v50 = sub_20CE12C94();
      v51 = sub_20CE13CD4();
      v52 = os_log_type_enabled(v50, v51);
      v96[1] = ObjectType;
      if (v52)
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v103[0] = v54;
        *v53 = 136446210;
        v55 = sub_20CE14414();
        v57 = sub_20CD96DCC(v55, v56, v103);

        *(v53 + 4) = v57;
        _os_log_impl(&dword_20CD70000, v50, v51, "[%{public}s] Results are now complete.", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v54);
        MEMORY[0x20F314110](v54, -1, -1);
        MEMORY[0x20F314110](v53, -1, -1);
      }

      v58 = *(v3 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager + 8);
      v59 = swift_getObjectType();
      v60 = (*(v58 + 8))(v59, v58);
      sub_20CE127C4();
      v61 = sub_20CE12984();
      (*(*(v61 - 8) + 56))(v15, 0, 1, v61);
      v62 = OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_rightNoiseMetrics;
      swift_beginAccess();
      sub_20CDE3968(v15, v60 + v62);
      swift_endAccess();

      sub_20CDE3B1C(0, &qword_27C8131D0, &type metadata for ResultsProcessor.Complete, sub_20CDFCB50);
      v102 = v63;
      sub_20CE124C4();
      sub_20CE124C4();
      sub_20CD83128(0, &qword_27C812330, 0x277CCD040);
      v64 = sub_20CE13AA4();
      v65 = sub_20CE124A4();
      v66 = sub_20CE124A4();
      v67 = objc_opt_self();
      v68 = [v67 audiogramSampleWithSensitivityPoints:v64 startDate:v65 endDate:v66 device:0 metadata:0];

      v69 = v98;
      v70 = *(v97 + 8);
      v70(v10, v98);
      v70(v12, v69);
      LOBYTE(v66) = [v68 isAmbiguous];

      if ((v66 & 1) != 0 || (sub_20CE124C4(), sub_20CE124C4(), v71 = sub_20CE13AA4(), v72 = sub_20CE124A4(), v73 = sub_20CE124A4(), v74 = [v67 audiogramSampleWithSensitivityPoints:v71 startDate:v72 endDate:v73 device:0 metadata:0], v71, v72, v73, v70(v10, v69), v70(v12, v69), LODWORD(v73) = objc_msgSend(v74, &_OBJC_LABEL_PROTOCOL___FitNoiseCheckDelegate), v74, v73))
      {
        v75 = sub_20CE12C94();
        v76 = sub_20CE13CD4();
        v77 = os_log_type_enabled(v75, v76);
        v16 = v99;
        if (v77)
        {
          v78 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          v103[0] = v79;
          *v78 = 136446210;
          v80 = sub_20CE14414();
          v82 = sub_20CD96DCC(v80, v81, v103);

          *(v78 + 4) = v82;
          _os_log_impl(&dword_20CD70000, v75, v76, "[%{public}s] Partial results are ambiguous.", v78, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v79);
          MEMORY[0x20F314110](v79, -1, -1);
          MEMORY[0x20F314110](v78, -1, -1);
        }

        sub_20CDDC6B4();
      }

      else
      {
        v88 = sub_20CE12C94();
        v89 = sub_20CE13CD4();
        v90 = os_log_type_enabled(v88, v89);
        v16 = v99;
        if (v90)
        {
          v91 = swift_slowAlloc();
          v92 = swift_slowAlloc();
          v103[0] = v92;
          *v91 = 136446210;
          v93 = sub_20CE14414();
          v95 = sub_20CD96DCC(v93, v94, v103);

          *(v91 + 4) = v95;
          _os_log_impl(&dword_20CD70000, v88, v89, "[%{public}s] Partial results are not ambiguous.", v91, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v92);
          MEMORY[0x20F314110](v92, -1, -1);
          MEMORY[0x20F314110](v91, -1, -1);
        }

        sub_20CDDCB70(v100);
      }
    }
  }

  else if (!EnumCaseMultiPayload)
  {
    if (qword_27C811D08 != -1)
    {
      swift_once();
    }

    v20 = sub_20CE12CB4();
    __swift_project_value_buffer(v20, qword_27C817780);
    v21 = sub_20CE12C94();
    v22 = sub_20CE13CC4();
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_28;
    }

    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v103[0] = v24;
    *v23 = 136446210;
    v25 = sub_20CE14414();
    v27 = sub_20CD96DCC(v25, v26, v103);

    *(v23 + 4) = v27;
    v28 = "[%{public}s] An error at this point is unexpected and currently unhandled.";
LABEL_27:
    _os_log_impl(&dword_20CD70000, v21, v22, v28, v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x20F314110](v24, -1, -1);
    MEMORY[0x20F314110](v23, -1, -1);
LABEL_28:
  }

  return (v16)(v104, 0);
}

void sub_20CDDC6B4()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_27C811D08 != -1)
  {
    swift_once();
  }

  v2 = sub_20CE12CB4();
  __swift_project_value_buffer(v2, qword_27C817780);
  v3 = sub_20CE12C94();
  v4 = sub_20CE13CD4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v30 = v6;
    *v5 = 136446466;
    v7 = sub_20CE14414();
    v9 = sub_20CD96DCC(v7, v8, &v30);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_20CD96DCC(0xD00000000000001FLL, 0x800000020CE1F530, &v30);
    _os_log_impl(&dword_20CD70000, v3, v4, "[%{public}s] %s called.", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v6, -1, -1);
    MEMORY[0x20F314110](v5, -1, -1);
  }

  v10 = __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_interruptionViewControllerManager], *&v1[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_interruptionViewControllerManager + 24]);
  v11 = *v10;
  *(*v10 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionViewControllerDelegate + 8) = 0;
  swift_unknownObjectWeakAssign();
  *(*(v11 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionManager) + OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_delegate + 8) = 0;
  swift_unknownObjectWeakAssign();
  sub_20CDBDA1C();
  sub_20CE12864();
  sub_20CE12A14();
  v12 = *&v1[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager + 8];
  ObjectType = swift_getObjectType();
  (*(v12 + 8))(ObjectType, v12);
  LOBYTE(v30) = 3;
  sub_20CD8EDF0(&v30);

  v1[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_isPartialResultAmbiguous] = 1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_16;
  }

  v15 = Strong;
  v16 = [Strong viewControllers];

  sub_20CD83128(0, &qword_27C812440, 0x277D75D28);
  v17 = sub_20CE13AB4();

  if (!(v17 >> 62))
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

  v18 = sub_20CE141C4();
  if (!v18)
  {
LABEL_15:

LABEL_16:
    oslog = sub_20CE12C94();
    v23 = sub_20CE13CC4();
    if (os_log_type_enabled(oslog, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v30 = v25;
      *v24 = 136446210;
      v26 = sub_20CE14414();
      v28 = sub_20CD96DCC(v26, v27, &v30);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_20CD70000, oslog, v23, "[%{public}s] We cannot get the last controller on the stack and this is unexpected.", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x20F314110](v25, -1, -1);
      MEMORY[0x20F314110](v24, -1, -1);
    }

    else
    {
    }

    return;
  }

LABEL_8:
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
    goto LABEL_22;
  }

  if ((v17 & 0xC000000000000001) != 0)
  {
LABEL_22:
    v21 = MEMORY[0x20F313610](v20, v17);
    goto LABEL_13;
  }

  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v20 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v21 = *(v17 + 8 * v20 + 32);
LABEL_13:
    v22 = v21;

    LOBYTE(v30) = 6;
    sub_20CDDDC94(v22, &v30, v1, &unk_2823BDED8, nullsub_1, &unk_20CE18BA0);

    return;
  }

  __break(1u);
}

void sub_20CDDCB70(uint64_t a1)
{
  v2 = v1;
  v148 = a1;
  ObjectType = swift_getObjectType();
  v3 = MEMORY[0x277D83D88];
  sub_20CDE3904(0, &qword_27C811EA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v133 = v132 - v5;
  v144 = sub_20CE12644();
  v6 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v8 = v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDE3400(0);
  v136 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v132 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v135 = v132 - v13;
  sub_20CDE3904(0, &qword_281111770, MEMORY[0x277CC9578], v3);
  MEMORY[0x28223BE20](v14 - 8);
  v137 = (v132 - v15);
  v140 = sub_20CE124E4();
  v138 = *(v140 - 8);
  v16 = MEMORY[0x28223BE20](v140);
  v139 = v132 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = v132 - v18;
  sub_20CDE3468(0);
  v21 = v20;
  MEMORY[0x28223BE20](v20);
  v145 = v132 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C811D08 != -1)
  {
    swift_once();
  }

  v146 = sub_20CE12CB4();
  v23 = __swift_project_value_buffer(v146, qword_27C817780);
  v24 = sub_20CE12C94();
  v25 = sub_20CE13CD4();
  v26 = os_log_type_enabled(v24, v25);
  v142 = v23;
  v143 = v6;
  v141 = v8;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v153[0] = v28;
    *v27 = 136446466;
    v29 = sub_20CE14414();
    v31 = sub_20CD96DCC(v29, v30, v153);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2080;
    *(v27 + 14) = sub_20CD96DCC(0xD000000000000019, 0x800000020CE1F450, v153);
    _os_log_impl(&dword_20CD70000, v24, v25, "[%{public}s] %s called.", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v28, -1, -1);
    MEMORY[0x20F314110](v27, -1, -1);
  }

  v32 = __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_interruptionViewControllerManager], *&v2[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_interruptionViewControllerManager + 24]);
  v33 = *v32;
  *(*v32 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionViewControllerDelegate + 8) = 0;
  swift_unknownObjectWeakAssign();
  *(*(v33 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionManager) + OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_delegate + 8) = 0;
  swift_unknownObjectWeakAssign();
  sub_20CDBDA1C();
  sub_20CE12864();
  sub_20CE12A14();
  v34 = *&v2[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager + 8];
  v35 = swift_getObjectType();
  (*(v34 + 8))(v35, v34);
  v36 = 2;
  LOBYTE(v153[0]) = 2;
  sub_20CD8EDF0(v153);

  v37 = *&v2[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_healthStore];
  v38 = *&v2[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_deviceManager];
  v39 = *&v2[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_setupDetails];
  if (v39)
  {
    v40 = *(v39 + 17);
    v36 = *(v39 + 18);
  }

  else
  {
    v40 = 2;
  }

  sub_20CDE3B1C(0, &qword_27C8131D0, &type metadata for ResultsProcessor.Complete, sub_20CDFCB50);
  v134 = v41;
  v42 = v148 + *(v41 + 48);
  v43 = *v42;
  v44 = v148 + *(v41 + 52);
  v45 = *v44;
  LOBYTE(v44) = *(v44 + 8);
  v152 = *(v42 + 8);
  v151 = v44;
  v153[0] = v37;
  v153[1] = v38;
  v154 = v40;
  v155 = v36;
  v156 = v43;
  v157 = v152;
  v158 = v45;
  v159 = v44;
  v46 = v37;

  sub_20CD8D244();
  v48 = v47;

  v49 = 0;
  v50 = *(v38 + 24);
  if (v50 <= 0x3F)
  {
    v51 = *(v38 + 16);
    swift_getObjectType();
    sub_20CD996F0(v51, v50);
    v49 = sub_20CD8E834();
    sub_20CD99704(v51, v50);
  }

  _sSo14NSUserDefaultsC13HearingTestUIE19overriddenAudiogram6device8metadataSo17HKAudiogramSampleCSgSo8HKDeviceCSg_SDySSypGSgtF_0();
  v53 = v52;

  if (v53)
  {

    if (qword_27C811D00 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v146, qword_27C817768);
    v54 = sub_20CE12C94();
    v55 = sub_20CE13CD4();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = v2;
      v58 = swift_slowAlloc();
      v150[0] = v58;
      *v56 = 136446210;
      v59 = sub_20CE14414();
      v61 = sub_20CD96DCC(v59, v60, v150);

      *(v56 + 4) = v61;
      _os_log_impl(&dword_20CD70000, v54, v55, "[%{public}s] Using mock audiogram as special UserDefaults have been set.", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      v62 = v58;
      v2 = v57;
      MEMORY[0x20F314110](v62, -1, -1);
      MEMORY[0x20F314110](v56, -1, -1);
    }

    v63 = v53;
  }

  else
  {
    v132[0] = v38;
    v132[1] = v48;
    v64 = OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_hearingTestStartDate;
    swift_beginAccess();
    v65 = v137;
    sub_20CDE3524(&v2[v64], v137, &qword_281111770, MEMORY[0x277CC9578]);
    v66 = v138;
    v67 = *(v138 + 48);
    v68 = v140;
    if ((v67)(v65, 1, v140) == 1)
    {
      v69 = v19;
      sub_20CE124C4();
      v70 = (v67)(v65, 1, v68) == 1;
      v71 = v65;
      v72 = v139;
      if (!v70)
      {
        sub_20CDE32D0(v71, &qword_281111770, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_20CDE3904);
      }
    }

    else
    {
      v69 = v19;
      (*(v66 + 32))(v19, v65, v68);
      v72 = v139;
    }

    sub_20CE124C4();
    sub_20CDE34CC();
    if ((sub_20CE138E4() & 1) == 0)
    {
      __break(1u);
LABEL_49:
      v103 = sub_20CE141C4();
      if (v103)
      {
LABEL_31:
        v104 = __OFSUB__(v103, 1);
        v105 = v103 - 1;
        if (v104)
        {
          __break(1u);
        }

        else if ((v67 & 0xC000000000000001) == 0)
        {
          if ((v105 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v105 < *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v106 = *(v67 + 8 * v105 + 32);
LABEL_36:
            v107 = v106;

            LOBYTE(v149) = 6;
            sub_20CDDDC94(v107, &v149, v2, &unk_2823BDE60, nullsub_1, &unk_20CE18B80);

            goto LABEL_54;
          }

          __break(1u);
          goto LABEL_59;
        }

        v106 = MEMORY[0x20F313610](v105, v67);
        goto LABEL_36;
      }

      goto LABEL_50;
    }

    v139 = v2;
    v73 = *(v66 + 32);
    v74 = v135;
    v73(v135, v69, v68);
    v75 = v136;
    v73((v74 + *(v136 + 48)), v72, v68);
    sub_20CDE35A4(v74, v12);
    v76 = *(v75 + 48);
    v137 = v21;
    v77 = v145;
    v73(v145, v12, v68);
    v78 = *(v66 + 8);
    v78(&v12[v76], v68);
    sub_20CDE39FC(v74, v12, sub_20CDE3400);
    v73(&v77[v137[9]], &v12[*(v75 + 48)], v68);
    v78(v12, v68);
    v79 = *(v132[0] + 24);
    if (v79 > 0x3F)
    {
      v81 = 0;
    }

    else
    {
      v80 = *(v132[0] + 16);
      swift_getObjectType();
      sub_20CD996F0(v80, v79);
      v81 = sub_20CD8E834();
      sub_20CD99704(v80, v79);
    }

    sub_20CD83128(0, &qword_27C812330, 0x277CCD040);
    v82 = sub_20CE13AA4();
    v83 = v145;
    v84 = sub_20CE124A4();
    v85 = sub_20CE124A4();
    v86 = sub_20CE13874();
    v87 = [objc_opt_self() audiogramSampleWithSensitivityPoints:v82 startDate:v84 endDate:v85 device:v81 metadata:v86];

    sub_20CDE3608(v83, sub_20CDE3468);
    v63 = v87;
    v53 = 0;
    v2 = v139;
  }

  v88 = *&v2[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_resultAudiogram];
  *&v2[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_resultAudiogram] = v63;
  v89 = v53;
  v21 = v63;

  v90 = [v21 isAmbiguous];
  if ((v90 & 1) == 0)
  {
    v109 = v143;
    v108 = v144;
    v110 = v141;
    (*(v143 + 16))(v141, v148, v144);
    v111 = (*(v109 + 88))(v110, v108);
    if (v111 != *MEMORY[0x277D12C48] && v111 != *MEMORY[0x277D12C50])
    {
      if (v111 == *MEMORY[0x277D12C58])
      {
        goto LABEL_40;
      }

      if (v111 != *MEMORY[0x277D12C40])
      {
        if (v111 == *MEMORY[0x277D12C60])
        {
LABEL_40:
          if (qword_27C811D00 == -1)
          {
LABEL_41:
            __swift_project_value_buffer(v146, qword_27C817768);
            v112 = sub_20CE12C94();
            v113 = sub_20CE13CB4();
            if (os_log_type_enabled(v112, v113))
            {
              v114 = swift_slowAlloc();
              v115 = swift_slowAlloc();
              v149 = v115;
              *v114 = 136446210;
              v116 = sub_20CE14414();
              v118 = sub_20CD96DCC(v116, v117, &v149);

              *(v114 + 4) = v118;
              _os_log_impl(&dword_20CD70000, v112, v113, "[%{public}s] Evaluation results need special handling.", v114, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v115);
              MEMORY[0x20F314110](v115, -1, -1);
              MEMORY[0x20F314110](v114, -1, -1);
            }

            sub_20CDE2008();
            goto LABEL_54;
          }

LABEL_59:
          swift_once();
          goto LABEL_41;
        }

        (*(v109 + 8))(v110, v108);
      }
    }

    v119 = sub_20CE13BB4();
    v120 = v133;
    (*(*(v119 - 8) + 56))(v133, 1, 1, v119);
    sub_20CE13B84();
    v121 = v2;
    v122 = sub_20CE13B74();
    v123 = swift_allocObject();
    v124 = MEMORY[0x277D85700];
    v123[2] = v122;
    v123[3] = v124;
    v123[4] = v121;
    sub_20CDDAB58(0, 0, v120, &unk_20CE18B70, v123);

    goto LABEL_54;
  }

  v91 = sub_20CE12C94();
  v92 = sub_20CE13CD4();
  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    v94 = v2;
    v95 = swift_slowAlloc();
    v149 = v95;
    *v93 = 136446210;
    v96 = sub_20CE14414();
    v98 = sub_20CD96DCC(v96, v97, &v149);

    *(v93 + 4) = v98;
    _os_log_impl(&dword_20CD70000, v91, v92, "[%{public}s] The session results have been processed and there is something wrong with the results. We will force the flow to continue.", v93, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v95);
    v99 = v95;
    v2 = v94;
    MEMORY[0x20F314110](v99, -1, -1);
    MEMORY[0x20F314110](v93, -1, -1);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_51;
  }

  v101 = Strong;
  v102 = [Strong viewControllers];

  sub_20CD83128(0, &qword_27C812440, 0x277D75D28);
  v67 = sub_20CE13AB4();

  if (v67 >> 62)
  {
    goto LABEL_49;
  }

  v103 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v103)
  {
    goto LABEL_31;
  }

LABEL_50:

LABEL_51:
  v125 = sub_20CE12C94();
  v126 = sub_20CE13CC4();
  if (os_log_type_enabled(v125, v126))
  {
    v127 = swift_slowAlloc();
    v128 = swift_slowAlloc();
    v149 = v128;
    *v127 = 136446210;
    v129 = sub_20CE14414();
    v131 = sub_20CD96DCC(v129, v130, &v149);

    *(v127 + 4) = v131;
    _os_log_impl(&dword_20CD70000, v125, v126, "[%{public}s] We cannot get the last controller on the stack and this is unexpected.", v127, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v128);
    MEMORY[0x20F314110](v128, -1, -1);
    MEMORY[0x20F314110](v127, -1, -1);
  }

LABEL_54:
}

void sub_20CDDDC94(void *a1, char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_20CDE3904(0, &qword_27C811EA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v27 - v12;
  v14 = *a2;
  v34 = *a2;
  sub_20CDDF904(&v34, &v35);
  if (v35 == 10 || (v28 = v35, v15 = sub_20CDDFE8C(&v28), v15 == 4))
  {
    v32 = v14;
    sub_20CDDF3E4(&v32, &v33);
    if (v33 == 10 || (v31 = v33, sub_20CDDEAC4(&v31), !v16))
    {
      sub_20CDDE960();
    }

    else
    {
      v17 = v16;
      v27 = [a1 navigationController];
      if (v27)
      {
        v29 = v14;
        sub_20CDDF904(&v29, &v30);
        if (v30 <= 0xAu && ((1 << v30) & 0x601) != 0 || (*(a3 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_isHearingTestSessionEnabled) & 1) != 0)
        {
          [v27 pushViewController:v17 animated:{1, v27}];

          v18 = v27;
        }

        else
        {
          v20 = sub_20CE13BB4();
          (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
          sub_20CE13B84();
          v21 = a3;
          v22 = v27;
          v23 = v17;
          v24 = sub_20CE13B74();
          v25 = swift_allocObject();
          v26 = MEMORY[0x277D85700];
          *(v25 + 16) = v24;
          *(v25 + 24) = v26;
          *(v25 + 32) = a5;
          *(v25 + 40) = 0;
          *(v25 + 48) = v21;
          *(v25 + 56) = v14;
          *(v25 + 64) = v22;
          *(v25 + 72) = v23;
          sub_20CDDA798(0, 0, v13, a6, v25);
        }
      }

      else
      {
        sub_20CE141B4();
        __break(1u);
      }
    }
  }

  else
  {
    v19 = v15;
    sub_20CDA3584(v15);
    sub_20CDA3760(v19);
  }
}

uint64_t sub_20CDDDFEC(void *a1, char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_20CDE3B6C(a1, a2, a3, a4, a5);
}

uint64_t sub_20CDDE024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 80) = a8;
  *(v8 + 88) = v13;
  *(v8 + 137) = a7;
  *(v8 + 64) = a5;
  *(v8 + 72) = a6;
  *(v8 + 56) = a4;
  sub_20CE13B84();
  *(v8 + 96) = sub_20CE13B74();
  v10 = sub_20CE13B24();
  *(v8 + 104) = v10;
  *(v8 + 112) = v9;

  return MEMORY[0x2822009F8](sub_20CDDE0D0, v10, v9);
}

uint64_t sub_20CDDE0D0()
{
  v1 = *(v0 + 137);
  (*(v0 + 56))(0, 0, 0, 1);
  *(v0 + 136) = v1;
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = sub_20CDDE194;

  return sub_20CDDFF64((v0 + 136));
}

uint64_t sub_20CDDE194()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_20CDDE340;
  }

  else
  {
    v5 = sub_20CDDE2A8;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_20CDDE2A8()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 80);

  [v2 pushViewController:v1 animated:1];
  (*(v0 + 56))(0, 0, 0, 2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_20CDDE340()
{
  v1 = *(v0 + 128);

  *(v0 + 40) = v1;
  v2 = v1;
  sub_20CD7B62C();
  if (swift_dynamicCast())
  {

    if (qword_27C811DC8 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 56);
    v4 = sub_20CE12354();
    v6 = v5;
    v7 = sub_20CE12354();
    v3(v4, v6, v7, v8);

    v9 = *(v0 + 40);
  }

  else
  {
    v10 = *(v0 + 128);
    v11 = *(v0 + 56);

    swift_getErrorValue();
    v12 = sub_20CE14324();
    v11(0, 0, v12, v13);

    v9 = v10;
  }

  (*(v0 + 56))(0, 0, 0, 2);
  v14 = *(v0 + 8);

  return v14();
}

void sub_20CDDE578(char a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for ResultsProcessor(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C811D08 != -1)
  {
    swift_once();
  }

  v7 = sub_20CE12CB4();
  __swift_project_value_buffer(v7, qword_27C817780);
  v8 = sub_20CE12C94();
  v9 = sub_20CE13CD4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28 = v11;
    *v10 = 136446466;
    v12 = sub_20CE14414();
    v14 = sub_20CD96DCC(v12, v13, &v28);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_20CD96DCC(0xD000000000000012, 0x800000020CE1F430, &v28);
    _os_log_impl(&dword_20CD70000, v8, v9, "[%{public}s] %s called.", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v11, -1, -1);
    MEMORY[0x20F314110](v10, -1, -1);
  }

  v15 = __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_interruptionViewControllerManager), *(v2 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_interruptionViewControllerManager + 24));
  v16 = *v15;
  *(*v15 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionViewControllerDelegate + 8) = 0;
  swift_unknownObjectWeakAssign();
  *(*(v16 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionManager) + OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_delegate + 8) = 0;
  swift_unknownObjectWeakAssign();
  sub_20CDBDA1C();
  sub_20CE12864();
  sub_20CE12A14();
  *(v2 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_isPartialResultAmbiguous) = 0;
  *(v2 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_isHearingTestSessionEnabled) = 0;
  sub_20CDE3B1C(0, &qword_27C812EB8, &type metadata for ResultsProcessor.Empty, sub_20CDFCB50);
  v18 = v17;
  v19 = MEMORY[0x277D84F90];
  *&v6[v17[7]] = MEMORY[0x277D84F90];
  *&v6[v17[8]] = v19;
  *&v6[v17[9]] = v19;
  *&v6[v17[10]] = v19;
  *&v6[v17[11]] = v19;
  v20 = *MEMORY[0x277D12C48];
  v21 = sub_20CE12644();
  (*(*(v21 - 8) + 104))(v6, v20, v21);
  v22 = &v6[v18[12]];
  *v22 = 0;
  v22[8] = 1;
  v23 = &v6[v18[13]];
  *v23 = 0;
  v23[8] = 1;
  swift_storeEnumTagMultiPayload();
  sub_20CDDB38C(v6);
  v24 = *(v2 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager + 8);
  ObjectType = swift_getObjectType();
  (*(v24 + 8))(ObjectType, v24);
  sub_20CD90B28();

  Strong = swift_unknownObjectWeakLoadStrong();
}

void sub_20CDDE960()
{
  v1 = __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_interruptionViewControllerManager), *(v0 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_interruptionViewControllerManager + 24));
  v2 = *v1;
  *(*v1 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionViewControllerDelegate + 8) = 0;
  swift_unknownObjectWeakAssign();
  *(*(v2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionManager) + OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_delegate + 8) = 0;
  swift_unknownObjectWeakAssign();
  sub_20CDBDA1C();
  sub_20CE12864();
  sub_20CE12A14();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong presentingViewController];

    if (v5)
    {
      [v5 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void sub_20CDDEAC4(_BYTE *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = *a1;
  if (v4 <= 5)
  {
    if (v4 - 2 < 4)
    {
      LOBYTE(v58[0]) = *a1;
      v5 = objc_allocWithZone(type metadata accessor for HearingTestPreEvaluationCoachingViewController(0));
      sub_20CDB9EC0(v2, v58);
      return;
    }

    if (!*a1)
    {
      LOBYTE(v58[0]) = 0;
      v7 = objc_allocWithZone(type metadata accessor for HearingTestSetUpViewController(0));
      sub_20CD7E908(v2, v58);
      return;
    }

    v8 = *&v2[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_deviceManager];
    if (*(v8 + 24) <= 0x3Fu)
    {
      v9 = [*(v8 + 16) identifier];
      if (v9)
      {
        v10 = v9;
        v11 = [objc_allocWithZone(MEMORY[0x277D12C08]) initWithDeviceAddress_];

        [v11 setFitNoiseCheckDelegate_];
        return;
      }
    }

    if (qword_27C811D08 != -1)
    {
      swift_once();
    }

    v20 = sub_20CE12CB4();
    __swift_project_value_buffer(v20, qword_27C817780);
    v21 = sub_20CE12C94();
    v22 = sub_20CE13CB4();
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_28;
    }

    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v58[0] = v24;
    *v23 = 136446210;
    v25 = sub_20CE14414();
    v27 = sub_20CD96DCC(v25, v26, v58);

    *(v23 + 4) = v27;
    v28 = "[%{public}s] Compatible AirPods are not connected. Cannot continue with Fit & Noise Check.";
    goto LABEL_27;
  }

  if (*a1 <= 7u)
  {
    if (v4 == 6)
    {
      v6 = objc_allocWithZone(type metadata accessor for HTUIEvaluationViewController(0));
      sub_20CDD11B4(v2);
      return;
    }

    LOBYTE(v58[0]) = 0;
    goto LABEL_15;
  }

  if (v4 == 8)
  {
    LOBYTE(v58[0]) = 1;
LABEL_15:
    v12 = objc_allocWithZone(type metadata accessor for NoResultsViewController(0));
    sub_20CD93E20(v2, v58);
    return;
  }

  v13 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v14 = sub_20CE13914();
  v15 = [v13 initWithSuiteName_];

  if (v15)
  {
    _sSo14NSUserDefaultsC13HearingTestUIE19overriddenAudiogram6device8metadataSo17HKAudiogramSampleCSgSo8HKDeviceCSg_SDySSypGSgtF_0();
    v17 = v16;

    if (!v17)
    {
      v18 = *&v2[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_resultAudiogram];
      if (!v18)
      {
        if (qword_27C811D08 != -1)
        {
          swift_once();
        }

        v49 = sub_20CE12CB4();
        __swift_project_value_buffer(v49, qword_27C817780);
        v21 = sub_20CE12C94();
        v22 = sub_20CE13CC4();
        if (!os_log_type_enabled(v21, v22))
        {
          goto LABEL_28;
        }

        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v58[0] = v24;
        *v23 = 136446210;
        v50 = sub_20CE14414();
        v52 = sub_20CD96DCC(v50, v51, v58);

        *(v23 + 4) = v52;
        v28 = "[%{public}s] Attempting to show the results scene without an audiogram.";
LABEL_27:
        _os_log_impl(&dword_20CD70000, v21, v22, v28, v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v24);
        MEMORY[0x20F314110](v24, -1, -1);
        MEMORY[0x20F314110](v23, -1, -1);
LABEL_28:

        return;
      }

      v17 = v18;
    }

    v19 = *&v2[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_healthStore];

    sub_20CE12DF4();

    v55 = v19;
    if (LOBYTE(v58[0]) && LOBYTE(v58[0]) == 1)
    {
      v54 = 1;
    }

    else
    {
      v54 = sub_20CE14284();
    }

    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_20CD7C388(&v2[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_articlePresenter], v58);
    v30 = &v2[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager];
    v31 = *&v2[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager];
    v53 = *(v30 + 1);
    v32 = type metadata accessor for HTUIResultsViewController(0);
    v33 = objc_allocWithZone(v32);
    v34 = OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_stepStartTime;
    v35 = sub_20CE124E4();
    (*(*(v35 - 8) + 56))(&v33[v34], 1, 1, v35);
    v36 = OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_hmServiceClient;
    type metadata accessor for HMServiceClientWrapper();
    v37 = swift_allocObject();

    swift_unknownObjectRetain();
    v38 = MEMORY[0x277D84F90];
    sub_20CDF54B4(MEMORY[0x277D84F90]);
    sub_20CDE3338(0);
    swift_allocObject();
    v37[2] = sub_20CE12E14();
    v57 = sub_20CDF54B4(v38);
    swift_allocObject();
    v37[3] = sub_20CE12E14();
    v37[4] = 0;
    sub_20CDB17AC();
    *&v33[v36] = v37;
    *&v33[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_deviceManager] = 0;
    *&v33[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_primaryButton] = 0;
    *&v33[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_secondaryButton] = 0;
    v39 = &v33[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_viewModel];
    *v39 = 0;
    v39[1] = 0;
    *&v33[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_cancellables] = MEMORY[0x277D84FA0];
    *&v33[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_audiogram] = v17;
    v40 = v17;
    sub_20CD86178(v40, &v57);
    v33[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_recommendation] = v57;
    *&v33[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_healthStore] = v55;
    v33[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_isHearingAssistAvailable] = v54 & 1;
    v41 = &v33[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_deviceBluetoothUUID];
    *v41 = sub_20CDE3330;
    v41[1] = v29;
    sub_20CD7C388(v58, &v33[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_articlePresenter]);
    v42 = &v33[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_analyticsManager];
    *v42 = v31;
    v42[1] = v53;
    v43 = qword_27C811DC8;
    swift_unknownObjectRetain();
    v44 = v55;

    if (v43 != -1)
    {
      swift_once();
    }

    sub_20CE12354();
    v45 = sub_20CE13914();

    v46 = sub_20CE13914();
    v56.receiver = v33;
    v56.super_class = v32;
    v47 = objc_msgSendSuper2(&v56, sel_initWithTitle_detailText_icon_contentLayout_, v45, v46, 0, 3, 0xE000000000000000);

    v48 = v47;
    sub_20CDF1F0C(0, 0);

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1Tm(v58);
  }

  else
  {
    __break(1u);
  }
}

char *sub_20CDDF2F4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *&result[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_deviceManager];
    v3 = result;

    v4 = *(v2 + 16);
    v5 = *(v2 + 24);
    sub_20CD996F0(v4, *(v2 + 24));

    if (v5 > 0x3F)
    {
      sub_20CD99704(v4, v5);
    }

    else
    {
      v6 = [v4 identifier];
      sub_20CD99704(v4, v5);
      if (v6)
      {
        v7 = sub_20CE13954();

        return v7;
      }
    }

    return 0;
  }

  return result;
}

void sub_20CDDF3E4(char *a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v44 = *a1;
  sub_20CDDF904(&v44, &v45);
  v3 = OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_stepsToSkip;
  v4 = v45;
  v42 = OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_resultAudiogram;
  v41 = OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_isPartialResultAmbiguous;
  v5 = &unk_277DAD000;
  while (1)
  {
    while (1)
    {
      while (v4 > 5u)
      {
        if (v4 - 7 < 3)
        {
          goto LABEL_26;
        }

        if (v4 != 6)
        {
          goto LABEL_55;
        }

        v16 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
        v17 = sub_20CE13914();
        v8 = [v16 initWithSuiteName_];

        if (!v8)
        {
          goto LABEL_59;
        }

        v18 = [objc_opt_self() sharedBehavior];
        if (!v18)
        {
          goto LABEL_58;
        }

        v19 = v18;
        v20 = [v18 isAppleInternalInstall];

        if (!v20)
        {
          goto LABEL_25;
        }

        v21 = sub_20CE13914();
        v22 = [v8 hk:v21 keyExists:?];

        if (!v22)
        {
          v5 = &unk_277DAD000;
LABEL_25:

LABEL_26:
          v34 = *(v2 + v3);
          v35 = *(v34 + 16);
          v36 = (v34 + 32);
          while (v35)
          {
            v37 = *v36++;
            --v35;
            if (v37 == v4)
            {
              goto LABEL_29;
            }
          }

LABEL_55:
          *a2 = v4;
          return;
        }

        v23 = sub_20CE13914();
        v5 = &unk_277DAD000;
        v24 = [v8 BOOLForKey_];

        if ((v24 & 1) == 0)
        {
          goto LABEL_26;
        }

LABEL_44:
        v40 = *(v2 + v42);
        if (v40)
        {
          if ([v40 isAmbiguous])
          {
            v4 = 8;
          }

          else
          {
            v4 = 9;
          }
        }

        else if (*(v2 + v41))
        {
          v4 = 8;
        }

        else
        {
          v4 = 7;
        }
      }

      if (v4 - 2 < 4)
      {
        break;
      }

      if (!v4)
      {
        goto LABEL_26;
      }

      v25 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v26 = sub_20CE13914();
      v8 = [v25 initWithSuiteName_];

      if (!v8)
      {
        goto LABEL_61;
      }

      v27 = [objc_opt_self() sharedBehavior];
      if (!v27)
      {
        goto LABEL_60;
      }

      v28 = v27;
      v29 = [v27 isAppleInternalInstall];

      if (!v29)
      {
        goto LABEL_25;
      }

      v30 = sub_20CE13914();
      v31 = [v8 hk:v30 keyExists:?];

      if (!v31)
      {
        goto LABEL_25;
      }

      v32 = sub_20CE13914();
      v33 = [v8 *(v5 + 410)];

      if ((v33 & 1) == 0)
      {
        goto LABEL_26;
      }

LABEL_43:
      v4 = 2;
    }

    v6 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v7 = sub_20CE13914();
    v8 = [v6 initWithSuiteName_];

    if (!v8)
    {
      break;
    }

    v9 = [objc_opt_self() sharedBehavior];
    if (!v9)
    {
      goto LABEL_57;
    }

    v10 = v9;
    v11 = [v9 isAppleInternalInstall];

    if (!v11)
    {
      goto LABEL_25;
    }

    v12 = sub_20CE13914();
    v13 = [v8 hk:v12 keyExists:?];

    if (!v13)
    {
      goto LABEL_25;
    }

    v14 = sub_20CE13914();
    v15 = [v8 v5 + 3704];

    if ((v15 & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_29:
    v38 = v4;
    if (v4 <= 4u)
    {
      if (v4 <= 1u)
      {
        v4 = 1;
        if (v38)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (v4 == 3)
        {
          v39 = 4;
        }

        else
        {
          v39 = 5;
        }

        if (v4 == 2)
        {
          v4 = 3;
        }

        else
        {
          v4 = v39;
        }
      }
    }

    else if (v4 <= 6u)
    {
      if (v4 != 5)
      {
        goto LABEL_44;
      }

      v4 = 6;
    }

    else if (v4 - 7 >= 2)
    {
      if (v4 != 9)
      {
        goto LABEL_62;
      }

      v4 = 10;
    }

    else
    {
      v4 = 10;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
}

_BYTE *sub_20CDDF904@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  v3 = *result;
  if (v3 > 4)
  {
    if (*result <= 6u)
    {
      if (v3 == 5)
      {
        v7 = 6;
      }

      else
      {
        result = *(v2 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_resultAudiogram);
        if (result)
        {
          v8 = a2;
          result = [result isAmbiguous];
          a2 = v8;
          if (result)
          {
            v7 = 8;
          }

          else
          {
            v7 = 9;
          }
        }

        else if (*(v2 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_isPartialResultAmbiguous))
        {
          v7 = 8;
        }

        else
        {
          v7 = 7;
        }
      }
    }

    else
    {
      v7 = 10;
    }
  }

  else
  {
    if (v3 == 3)
    {
      v4 = 4;
    }

    else
    {
      v4 = 5;
    }

    if (v3 == 2)
    {
      v5 = 3;
    }

    else
    {
      v5 = v4;
    }

    if (*result)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    if (*result <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }
  }

  *a2 = v7;
  return result;
}

uint64_t sub_20CDDF9E4()
{
  swift_getObjectType();
  v0 = sub_20CE10080();
  if (v0 != 2)
  {
    return v0 & 1;
  }

  v1 = [objc_opt_self() sharedAVSystemController];
  if (!v1)
  {
    if (qword_27C811D08 != -1)
    {
      swift_once();
    }

    v3 = sub_20CE12CB4();
    __swift_project_value_buffer(v3, qword_27C817780);
    v4 = sub_20CE12C94();
    v5 = sub_20CE13CC4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *&v31[0] = v7;
      *v6 = 136446210;
      v8 = sub_20CE14414();
      v10 = sub_20CD96DCC(v8, v9, v31);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_20CD70000, v4, v5, "[%{public}s] Failed to grab shared system controller", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x20F314110](v7, -1, -1);
      MEMORY[0x20F314110](v6, -1, -1);
    }

    goto LABEL_24;
  }

  v2 = v1;
  if ([v1 attributeForKey_])
  {
    sub_20CE13FC4();
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  v31[0] = v29;
  v31[1] = v30;
  if (!*(&v30 + 1))
  {
    sub_20CDE32D0(v31, &qword_27C812D30, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_20CDE3B1C);
    goto LABEL_19;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    if (qword_27C811D08 != -1)
    {
      swift_once();
    }

    v19 = sub_20CE12CB4();
    __swift_project_value_buffer(v19, qword_27C817780);
    v20 = sub_20CE12C94();
    v21 = sub_20CE13CC4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v31[0] = v23;
      *v22 = 136446210;
      v24 = sub_20CE14414();
      v26 = sub_20CD96DCC(v24, v25, v31);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_20CD70000, v20, v21, "[%{public}s] Failed to grab call status from shared system controller", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x20F314110](v23, -1, -1);
      MEMORY[0x20F314110](v22, -1, -1);
    }

LABEL_24:
    v0 = 0;
    return v0 & 1;
  }

  if (qword_27C811D08 != -1)
  {
    swift_once();
  }

  v11 = sub_20CE12CB4();
  __swift_project_value_buffer(v11, qword_27C817780);
  v12 = sub_20CE12C94();
  v13 = sub_20CE13CD4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v31[0] = v15;
    *v14 = 136446466;
    v16 = sub_20CE14414();
    v18 = sub_20CD96DCC(v16, v17, v31);

    *(v14 + 4) = v18;
    *(v14 + 12) = 1024;
    *(v14 + 14) = v28;
    _os_log_impl(&dword_20CD70000, v12, v13, "[%{public}s] Call is active: %{BOOL}d", v14, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x20F314110](v15, -1, -1);
    MEMORY[0x20F314110](v14, -1, -1);
  }

  v0 = v28;
  return v0 & 1;
}

uint64_t sub_20CDDFE8C(_BYTE *a1)
{
  v2 = *a1;
  if (v2 == 6)
  {
    v5 = *(*(v1 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_deviceManager) + 24);
    if (v5 <= 0x3F && (v5 & 1) != 0)
    {
      if (sub_20CDDF9E4())
      {
        return 3;
      }

      else
      {
        return 4;
      }
    }

    else
    {
      return 2;
    }
  }

  else if (v2 == 1)
  {
    v4 = *(*(v1 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_deviceManager) + 24);
    if (v4 > 0x3F)
    {
      return 0;
    }

    else if (v4)
    {
      return 4;
    }

    else
    {
      return 2;
    }
  }

  else if (*a1)
  {
    return 4;
  }

  else
  {
    return 0x10004u >> ((*(*(v1 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_deviceManager) + 24) >> 3) & 0x18);
  }
}

uint64_t sub_20CDDFF64(_BYTE *a1)
{
  *(v2 + 16) = v1;
  *(v2 + 80) = *a1;
  *(v2 + 24) = sub_20CE13B84();
  *(v2 + 32) = sub_20CE13B74();
  v4 = sub_20CE13B24();
  *(v2 + 40) = v4;
  *(v2 + 48) = v3;

  return MEMORY[0x2822009F8](sub_20CDE0008, v4, v3);
}

uint64_t sub_20CDE0008()
{
  v7 = v0;
  v6 = *(v0 + 80);
  sub_20CDDF904(&v6, &v5);
  if (v5 == 10 || (v5 ? (v1 = v5 == 9) : (v1 = 1), v1 || (*(*(v0 + 16) + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_isHearingTestSessionEnabled) & 1) != 0))
  {

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    *(v0 + 56) = sub_20CE13B74();
    v4 = swift_task_alloc();
    *(v0 + 64) = v4;
    *v4 = v0;
    v4[1] = sub_20CDE0124;

    return sub_20CDE0424();
  }
}

uint64_t sub_20CDE0124()
{
  *(*v1 + 72) = v0;

  v3 = sub_20CE13B24();
  if (v0)
  {
    v4 = sub_20CDE035C;
  }

  else
  {
    v4 = sub_20CDE0280;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_20CDE0280()
{

  sub_20CE12A24();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_20CDE02F8, v1, v2);
}

uint64_t sub_20CDE02F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CDE035C()
{

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_20CDE03C0, v1, v2);
}

uint64_t sub_20CDE03C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CDE0424()
{
  v1[2] = v0;
  v1[3] = swift_getObjectType();
  v2 = sub_20CE124E4();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  sub_20CE13B84();
  v1[8] = sub_20CE13B74();
  v4 = sub_20CE13B24();
  v1[9] = v4;
  v1[10] = v3;

  return MEMORY[0x2822009F8](sub_20CDE0530, v4, v3);
}

uint64_t sub_20CDE0530()
{
  v13 = v0;
  if (qword_27C811D08 != -1)
  {
    swift_once();
  }

  v1 = sub_20CE12CB4();
  *(v0 + 88) = __swift_project_value_buffer(v1, qword_27C817780);
  v2 = sub_20CE12C94();
  v3 = sub_20CE13CD4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136446210;
    v6 = sub_20CE14414();
    v8 = sub_20CD96DCC(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_20CD70000, v2, v3, "[%{public}s] Will call HTTonePlayer.enableANCHearingTestMode.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x20F314110](v5, -1, -1);
    MEMORY[0x20F314110](v4, -1, -1);
  }

  sub_20CE124D4();
  v11 = (*MEMORY[0x277D12CB0] + MEMORY[0x277D12CB0]);
  v9 = swift_task_alloc();
  *(v0 + 96) = v9;
  *v9 = v0;
  v9[1] = sub_20CDE071C;

  return v11(5);
}

uint64_t sub_20CDE071C(char a1)
{
  v2 = *v1;
  *(*v1 + 104) = a1;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);

  return MEMORY[0x2822009F8](sub_20CDE0844, v4, v3);
}

uint64_t sub_20CDE0844()
{
  v31 = v0;
  v1 = *(v0 + 104);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);

  sub_20CE124D4();
  sub_20CE12494();
  v7 = v6;
  v8 = *(v3 + 8);
  v8(v2, v4);
  *(v5 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_isHearingTestSessionEnabled) = v1;
  v9 = sub_20CE12C94();
  if (v1)
  {
    v10 = sub_20CE13CD4();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 56);
    v13 = *(v0 + 32);
    if (v11)
    {
      v14 = swift_slowAlloc();
      v29 = v8;
      v30[0] = swift_slowAlloc();
      v15 = v30[0];
      *v14 = 136446466;
      v16 = sub_20CE14414();
      v18 = sub_20CD96DCC(v16, v17, v30);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2048;
      *(v14 + 14) = v7;
      _os_log_impl(&dword_20CD70000, v9, v10, "[%{public}s] HTTonePlayer.enableANCHearingTestMode succeeded after %fs.", v14, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x20F314110](v15, -1, -1);
      MEMORY[0x20F314110](v14, -1, -1);

      v29(v12, v13);
    }

    else
    {

      v8(v12, v13);
    }

    v27 = *(v0 + 8);
  }

  else
  {
    v19 = sub_20CE13CB4();
    if (os_log_type_enabled(v9, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v30[0] = v21;
      *v20 = 136446466;
      v22 = sub_20CE14414();
      v24 = sub_20CD96DCC(v22, v23, v30);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2048;
      *(v20 + 14) = v7;
      _os_log_impl(&dword_20CD70000, v9, v19, "[%{public}s] HTTonePlayer.enableANCHearingTestMode failed after %fs.", v20, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x20F314110](v21, -1, -1);
      MEMORY[0x20F314110](v20, -1, -1);
    }

    v25 = *(v0 + 56);
    v26 = *(v0 + 32);
    sub_20CDE327C();
    swift_allocError();
    swift_willThrow();
    v8(v25, v26);

    v27 = *(v0 + 8);
  }

  return v27();
}

uint64_t sub_20CDE0B80@<X0>(uint64_t a1@<X8>)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = sub_20CE12274();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_healthStore);
  v17[0] = 0;
  v8 = [v7 dateOfBirthComponentsWithError_];
  v9 = v17[0];
  if (v8)
  {
    v10 = v8;
    sub_20CE12244();
    v11 = v9;

    sub_20CE12254();
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    v13 = v17[0];
    v14 = sub_20CE12394();

    swift_willThrow();
    v15 = sub_20CE124E4();
    return (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
  }
}

uint64_t sub_20CDE0D30()
{
  v1[24] = v0;
  v1[25] = swift_getObjectType();
  v2 = sub_20CE124E4();
  v1[26] = v2;
  v1[27] = *(v2 - 8);
  v1[28] = swift_task_alloc();
  sub_20CDA4968(0);
  v1[29] = v3;
  v1[30] = *(v3 - 8);
  v1[31] = swift_task_alloc();
  sub_20CDE3904(0, &qword_27C813190, _s13FeatureStatusCMa, MEMORY[0x277D11BF0]);
  v1[32] = v4;
  v1[33] = *(v4 - 8);
  v1[34] = swift_task_alloc();
  sub_20CE13B84();
  v1[35] = sub_20CE13B74();
  v6 = sub_20CE13B24();
  v1[36] = v6;
  v1[37] = v5;

  return MEMORY[0x2822009F8](sub_20CDE0F18, v6, v5);
}

uint64_t sub_20CDE0F18()
{
  v29 = v0;
  v1 = *(v0[24] + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_resultAudiogram);
  v0[38] = v1;
  if (!v1)
  {

    if (qword_27C811D08 != -1)
    {
      swift_once();
    }

    v11 = sub_20CE12CB4();
    __swift_project_value_buffer(v11, qword_27C817780);
    v12 = sub_20CE12C94();
    v13 = sub_20CE13CB4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v28 = v15;
      *v14 = 136446210;
      v16 = sub_20CE14414();
      v18 = sub_20CD96DCC(v16, v17, &v28);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_20CD70000, v12, v13, "[%{public}s] Request to save audiogram with no hearing test result audiogram.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x20F314110](v15, -1, -1);
      MEMORY[0x20F314110](v14, -1, -1);
    }

    goto LABEL_13;
  }

  v2 = v1;
  if ([v2 isAmbiguous])
  {

    if (qword_27C811D08 != -1)
    {
      swift_once();
    }

    v3 = sub_20CE12CB4();
    __swift_project_value_buffer(v3, qword_27C817780);
    v4 = sub_20CE12C94();
    v5 = sub_20CE13CB4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v28 = v7;
      *v6 = 136446210;
      v8 = sub_20CE14414();
      v10 = sub_20CD96DCC(v8, v9, &v28);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_20CD70000, v4, v5, "[%{public}s] Aborting saving audiogram as it is ambiguous.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x20F314110](v7, -1, -1);
      MEMORY[0x20F314110](v6, -1, -1);
    }

LABEL_13:

    v19 = v0[1];

    return v19(0);
  }

  v27 = v2;
  v21 = v0[30];
  v22 = v0[31];
  v23 = v0[29];
  v24 = v0[24];
  v0[21] = *(v24 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_featureStatus);
  _s13FeatureStatusCMa();

  sub_20CE12C74();
  v25 = *(v24 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_healthStore);
  v0[2] = v0;
  v0[3] = sub_20CDE13D8;
  swift_continuation_init();
  v0[17] = v23;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
  sub_20CD7B62C();
  sub_20CE13B34();
  (*(v21 + 32))(boxed_opaque_existential_1, v22, v23);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20CDE1D18;
  v0[13] = &block_descriptor_69;
  [v25 saveObject:v27 withCompletion:?];
  (*(v21 + 8))(boxed_opaque_existential_1, v23);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20CDE13D8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 312) = v2;
  v3 = *(v1 + 296);
  v4 = *(v1 + 288);
  if (v2)
  {
    v5 = sub_20CDE1A28;
  }

  else
  {
    v5 = sub_20CDE1508;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20CDE1508()
{
  v1 = v0[38];
  sub_20CE12C64();
  v0[40] = v0[23];
  v2 = [v1 endDate];
  sub_20CE124B4();

  v3 = swift_task_alloc();
  v0[41] = v3;
  *v3 = v0;
  v3[1] = sub_20CDE15EC;
  v4 = v0[28];

  return sub_20CDA2768(v4);
}

uint64_t sub_20CDE15EC()
{
  v1 = *v0;
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 216);
  v4 = *(*v0 + 208);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 296);
  v6 = *(v1 + 288);

  return MEMORY[0x2822009F8](sub_20CDE178C, v6, v5);
}

uint64_t sub_20CDE178C()
{
  v26 = v0;
  v1 = v0[38];
  v2 = v0[24];

  sub_20CD83128(0, &qword_27C813198, 0x277CBEBD0);
  v3 = sub_20CE13CE4();
  [v3 setBool:1 forKey:*MEMORY[0x277CCC150]];

  v4 = *(v2 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager + 8);
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 8))(ObjectType, v4);
  v7 = *(v6 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_audiogram);
  *(v6 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_audiogram) = v1;
  v8 = v1;

  if (qword_27C811D08 != -1)
  {
    swift_once();
  }

  v9 = sub_20CE12CB4();
  __swift_project_value_buffer(v9, qword_27C817780);
  v10 = sub_20CE12C94();
  v11 = sub_20CE13CD4();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[38];
  v15 = v0[33];
  v14 = v0[34];
  v16 = v0[32];
  if (v12)
  {
    v24 = v0[34];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v25 = v18;
    *v17 = 136446210;
    v19 = sub_20CE14414();
    v21 = sub_20CD96DCC(v19, v20, &v25);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_20CD70000, v10, v11, "[%{public}s] Saving audiogram succeeded.", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x20F314110](v18, -1, -1);
    MEMORY[0x20F314110](v17, -1, -1);

    (*(v15 + 8))(v24, v16);
  }

  else
  {

    (*(v15 + 8))(v14, v16);
  }

  v22 = v0[1];

  return v22(1);
}

uint64_t sub_20CDE1A28()
{
  v26 = v0;
  v1 = v0[34];
  v2 = v0[32];
  v3 = v0[33];

  swift_willThrow();
  (*(v3 + 8))(v1, v2);
  if (qword_27C811D08 != -1)
  {
    swift_once();
  }

  v4 = v0[39];
  v5 = sub_20CE12CB4();
  __swift_project_value_buffer(v5, qword_27C817780);
  v6 = v4;
  v7 = sub_20CE12C94();
  v8 = sub_20CE13CB4();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[38];
  v10 = v0[39];
  if (v9)
  {
    v24 = v0[38];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25[0] = v13;
    *v12 = 136446466;
    v14 = sub_20CE14414();
    v16 = sub_20CD96DCC(v14, v15, v25);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    swift_getErrorValue();
    v17 = *(v0[19] - 8);
    swift_task_alloc();
    (*(v17 + 16))();
    v18 = sub_20CE13984();
    v20 = v19;

    v21 = sub_20CD96DCC(v18, v20, v25);

    *(v12 + 14) = v21;
    _os_log_impl(&dword_20CD70000, v7, v8, "[%{public}s] Failed to save audiogram from hearing test: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v13, -1, -1);
    MEMORY[0x20F314110](v12, -1, -1);
  }

  else
  {
  }

  v22 = v0[1];

  return v22(0);
}

void sub_20CDE1D18(uint64_t a1, int a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_20CDA4968(0);
    sub_20CE13B54();
  }

  else if (a3)
  {
    sub_20CDA4968(0);
    v5 = a3;
    sub_20CE13B44();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_20CDE1DA8(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_20CE13B84();
  v1[4] = sub_20CE13B74();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_20CDE1E58;

  return sub_20CDE0D30();
}

uint64_t sub_20CDE1E58(char a1)
{
  *(*v1 + 48) = a1;

  v3 = sub_20CE13B24();

  return MEMORY[0x2822009F8](sub_20CDE1F9C, v3, v2);
}

uint64_t sub_20CDE1F9C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);

  *v2 = v1;
  v3 = *(v0 + 8);

  return v3();
}

void sub_20CDE2008()
{
  sub_20CD7D364();
  sub_20CD7D5BC();
  v0 = sub_20CE13914();

  v1 = sub_20CE13914();

  v2 = [objc_opt_self() alertControllerWithTitle:v0 message:v1 preferredStyle:1];

  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  sub_20CE12354();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v4 = sub_20CE13914();

  v18 = sub_20CDE2C0C;
  v19 = v3;
  aBlock = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_20CD95834;
  v17 = &block_descriptor_7;
  v5 = _Block_copy(&aBlock);

  v6 = objc_opt_self();
  v7 = [v6 actionWithTitle:v4 style:1 handler:{v5, 0xE000000000000000}];
  _Block_release(v5);

  sub_20CE12354();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v9 = sub_20CE13914();

  v18 = sub_20CDE2C2C;
  v19 = v8;
  aBlock = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_20CD95834;
  v17 = &block_descriptor_51;
  v10 = _Block_copy(&aBlock);

  v11 = [v6 actionWithTitle:v9 style:0 handler:{v10, 0xE000000000000000}];
  _Block_release(v10);

  [v2 addAction_];
  [v2 addAction_];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    [Strong presentViewController:v2 animated:1 completion:0];
  }
}

void sub_20CDE23FC(uint64_t a1, uint64_t a2)
{
  sub_20CDE3904(0, &qword_27C811EA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_20CE13BB4();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    sub_20CE13B84();
    v8 = v6;
    v9 = sub_20CE13B74();
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D85700];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v8;
    sub_20CDDAB58(0, 0, v4, &unk_20CE18B50, v10);
  }
}

void sub_20CDE2574(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_20CDDE578(1);
  }
}

uint64_t sub_20CDE25CC()
{
  sub_20CE14384();
  MEMORY[0x20F3138A0](0);
  return sub_20CE143B4();
}

uint64_t sub_20CDE2638(uint64_t a1)
{
  sub_20CE14384();
  MEMORY[0x20F3138A0](0);
  return sub_20CE143B4();
}

id sub_20CDE2724()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HearingTestFlowManager(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for HearingTestFlowManager(uint64_t a1)
{
  result = qword_27C813180;
  if (!qword_27C813180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20CDE2AA8(uint64_t a1)
{
  sub_20CDE3904(319, &qword_281111770, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ResultsProcessor(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

double block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_20CDE2C34(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20CD7D35C;

  return sub_20CDE1DA8(a1);
}

uint64_t sub_20CDE2CE8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20CDE2DE0;

  return v6(a1);
}

uint64_t sub_20CDE2DE0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20CDE2ED8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_20CDE2FCC;

  return v5(v2 + 32);
}

uint64_t sub_20CDE2FCC()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_20CDE30E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20CD7D35C;

  return sub_20CDE2ED8(a1, v4);
}

uint64_t sub_20CDE3198(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20CD7C660;

  return sub_20CDE2ED8(a1, v4);
}

unint64_t sub_20CDE327C()
{
  result = qword_27C8131A0;
  if (!qword_27C8131A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8131A0);
  }

  return result;
}

uint64_t sub_20CDE32D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_20CDE3338(uint64_t a1)
{
  if (!qword_27C8131A8)
  {
    sub_20CDE33A0();
    v1 = sub_20CE12E04();
    if (!v2)
    {
      atomic_store(v1, &qword_27C8131A8);
    }
  }
}

void sub_20CDE33A0()
{
  if (!qword_27C8131B0)
  {
    v0 = sub_20CE138A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27C8131B0);
    }
  }
}

void sub_20CDE3400(uint64_t a1)
{
  if (!qword_27C8131B8)
  {
    sub_20CE124E4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C8131B8);
    }
  }
}

void sub_20CDE3468(uint64_t a1)
{
  if (!qword_27C8131C0)
  {
    sub_20CE124E4();
    sub_20CDE34CC();
    v1 = sub_20CE138F4();
    if (!v2)
    {
      atomic_store(v1, &qword_27C8131C0);
    }
  }
}

unint64_t sub_20CDE34CC()
{
  result = qword_27C8131C8;
  if (!qword_27C8131C8)
  {
    sub_20CE124E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8131C8);
  }

  return result;
}

uint64_t sub_20CDE3524(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_20CDE3904(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_20CDE35A4(uint64_t a1, uint64_t a2)
{
  sub_20CDE3400(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CDE3608(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_53Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20CDE36A8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20CD7C660;

  return sub_20CDE1DA8(a1);
}

uint64_t sub_20CDE375C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 64);
  v10 = *(v1 + 56);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_20CD7D35C;

  return sub_20CDDE024(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t sub_20CDE384C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20CD7D35C;

  return sub_20CDE2CE8(a1, v4);
}

void sub_20CDE3904(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_20CDE3968(uint64_t a1, uint64_t a2)
{
  sub_20CDE3904(0, &qword_27C8124A8, MEMORY[0x277D12D30], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CDE39FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20CDE3A64(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20CD7D35C;

  return sub_20CDE2ED8(a1, v4);
}

void sub_20CDE3B1C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_20CDE3B6C(void *a1, char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_20CDE3904(0, &qword_27C811EA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v32 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  *(v13 + 24) = a5;
  v14 = *a2;
  v39 = *a2;

  sub_20CDDF904(&v39, &v40);
  if (v40 == 10 || (v33 = v40, v15 = sub_20CDDFE8C(&v33), v15 == 4))
  {
    v37 = v14;
    sub_20CDDF3E4(&v37, &v38);
    if (v38 == 10 || (v36 = v38, sub_20CDDEAC4(&v36), !v16))
    {
      sub_20CDD2B48(0, 0, 0, 3, a4, a5);
      sub_20CDDE960();
    }

    else
    {
      v17 = v16;
      v32 = [a1 navigationController];
      if (v32)
      {
        sub_20CDD2B48(0, 0, 0, 0, a4, a5);
        v34 = v14;
        sub_20CDDF904(&v34, &v35);
        if (v35 <= 0xAu && ((1 << v35) & 0x601) != 0 || (*(a3 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_isHearingTestSessionEnabled) & 1) != 0)
        {
          [v32 pushViewController:v17 animated:{1, v32}];

          v18 = v32;
        }

        else
        {
          v25 = sub_20CE13BB4();
          (*(*(v25 - 8) + 56))(v12, 1, 1, v25);
          sub_20CE13B84();

          v26 = a3;
          v27 = v32;
          v28 = v17;
          v29 = sub_20CE13B74();
          v30 = swift_allocObject();
          v31 = MEMORY[0x277D85700];
          *(v30 + 16) = v29;
          *(v30 + 24) = v31;
          *(v30 + 32) = sub_20CDE3FC8;
          *(v30 + 40) = v13;
          *(v30 + 48) = v26;
          *(v30 + 56) = v14;
          *(v30 + 64) = v27;
          *(v30 + 72) = v28;
          sub_20CDDA798(0, 0, v12, &unk_20CE18BC0, v30);
        }
      }

      else
      {

        sub_20CE141B4();
        __break(1u);
      }
    }
  }

  else
  {
    v19 = v15;
    v20 = sub_20CDA3584(v15);
    v22 = v21;
    v23 = sub_20CDA3760(v19);
    sub_20CDD2B48(v20, v22, v23, v24, a4, a5);
  }
}

void sub_20CDE3FD0(void *a1, unsigned __int8 *a2, void *a3, uint64_t a4)
{
  sub_20CDE3904(0, &qword_27C811EA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v44 - v9;
  v11 = *a2;
  v49 = *a2;

  sub_20CDDF904(&v49, v48);
  if (v48[0] != 10)
  {
    v12 = sub_20CDDFE8C(v48);
    if (v12 != 4)
    {
      v28 = v12;
      v29 = sub_20CDA3584(v12);
      v31 = v30;
      v32 = sub_20CDA3760(v28);
      v34 = v33;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v36 = Strong;
        sub_20CD7FA6C(v29, v31, v32, v34);
      }

      else
      {
      }

LABEL_17:

      return;
    }
  }

  v49 = v11;
  sub_20CDDF3E4(&v49, v48);
  if (v48[0] == 10 || (sub_20CDDEAC4(v48), !v13))
  {
    swift_beginAccess();
    v23 = swift_unknownObjectWeakLoadStrong();
    if (v23)
    {
      v24 = *(*(v23 + OBJC_IVAR____TtC13HearingTestUI30HearingTestSetUpViewController_flowManager) + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager + 8);
      v25 = v23;
      ObjectType = swift_getObjectType();
      v49 = 3;
      v27 = *(v24 + 48);
      swift_unknownObjectRetain();
      v27(&v49, v25, &off_2823BBD50, ObjectType, v24);

      swift_unknownObjectRelease();
    }

    sub_20CDDE960();
    goto LABEL_17;
  }

  v14 = v13;
  v15 = [a1 navigationController];
  if (v15)
  {
    v16 = v15;
    swift_beginAccess();
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = *(v17 + OBJC_IVAR____TtC13HearingTestUI30HearingTestSetUpViewController_flowManager) + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager;
      v46 = v16;
      v19 = *(v18 + 8);
      v20 = v17;
      v45 = swift_getObjectType();
      v49 = 1;
      v21 = *(v19 + 48);
      swift_unknownObjectRetain();
      v22 = v19;
      v16 = v46;
      v21(&v49, v20, &off_2823BBD50, v45, v22);

      swift_unknownObjectRelease();
    }

    v47 = v11;
    sub_20CDDF904(&v47, &v49);
    if (v49 <= 0xAu && ((1 << v49) & 0x601) != 0 || (*(a3 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_isHearingTestSessionEnabled) & 1) != 0)
    {
      [v16 pushViewController:v14 animated:1];
    }

    else
    {
      v37 = sub_20CE13BB4();
      (*(*(v37 - 8) + 56))(v10, 1, 1, v37);
      sub_20CE13B84();

      v38 = a3;
      v39 = v16;
      v40 = v14;
      v41 = sub_20CE13B74();
      v42 = swift_allocObject();
      v43 = MEMORY[0x277D85700];
      *(v42 + 16) = v41;
      *(v42 + 24) = v43;
      *(v42 + 32) = sub_20CDE4E7C;
      *(v42 + 40) = a4;
      *(v42 + 48) = v38;
      *(v42 + 56) = v11;
      *(v42 + 64) = v39;
      *(v42 + 72) = v40;
      sub_20CDDA798(0, 0, v10, &unk_20CE18BD8, v42);
    }
  }

  else
  {

    sub_20CE141B4();
    __break(1u);
  }
}

void sub_20CDE44CC(void *a1, unsigned __int8 *a2, void *a3, uint64_t a4)
{
  sub_20CDE3904(0, &qword_27C811EA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v44 - v9;
  v11 = *a2;
  v49 = *a2;

  sub_20CDDF904(&v49, v48);
  if (v48[0] != 10)
  {
    v12 = sub_20CDDFE8C(v48);
    if (v12 != 4)
    {
      v28 = v12;
      v29 = sub_20CDA3584(v12);
      v31 = v30;
      v32 = sub_20CDA3760(v28);
      v34 = v33;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v36 = Strong;
        sub_20CD95C28(v29, v31, v32, v34, 0);
      }

      else
      {
      }

LABEL_17:

      return;
    }
  }

  v49 = v11;
  sub_20CDDF3E4(&v49, v48);
  if (v48[0] == 10 || (sub_20CDDEAC4(v48), !v13))
  {
    swift_beginAccess();
    v23 = swift_unknownObjectWeakLoadStrong();
    if (v23)
    {
      v24 = *(*(v23 + OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController_flowManager) + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager + 8);
      v25 = v23;
      ObjectType = swift_getObjectType();
      v49 = 3;
      v27 = *(v24 + 48);
      swift_unknownObjectRetain();
      v27(&v49, v25, &protocol witness table for HearingTestStepViewController, ObjectType, v24);

      swift_unknownObjectRelease();
    }

    sub_20CDDE960();
    goto LABEL_17;
  }

  v14 = v13;
  v15 = [a1 navigationController];
  if (v15)
  {
    v16 = v15;
    swift_beginAccess();
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = *(v17 + OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController_flowManager) + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager;
      v46 = v16;
      v19 = *(v18 + 8);
      v20 = v17;
      v45 = swift_getObjectType();
      v49 = 1;
      v21 = *(v19 + 48);
      swift_unknownObjectRetain();
      v22 = v19;
      v16 = v46;
      v21(&v49, v20, &protocol witness table for HearingTestStepViewController, v45, v22);

      swift_unknownObjectRelease();
    }

    v47 = v11;
    sub_20CDDF904(&v47, &v49);
    if (v49 <= 0xAu && ((1 << v49) & 0x601) != 0 || (*(a3 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_isHearingTestSessionEnabled) & 1) != 0)
    {
      [v16 pushViewController:v14 animated:1];
    }

    else
    {
      v37 = sub_20CE13BB4();
      (*(*(v37 - 8) + 56))(v10, 1, 1, v37);
      sub_20CE13B84();

      v38 = a3;
      v39 = v16;
      v40 = v14;
      v41 = sub_20CE13B74();
      v42 = swift_allocObject();
      v43 = MEMORY[0x277D85700];
      *(v42 + 16) = v41;
      *(v42 + 24) = v43;
      *(v42 + 32) = sub_20CDE4E74;
      *(v42 + 40) = a4;
      *(v42 + 48) = v38;
      *(v42 + 56) = v11;
      *(v42 + 64) = v39;
      *(v42 + 72) = v40;
      sub_20CDDA798(0, 0, v10, &unk_20CE18BD0, v42);
    }
  }

  else
  {

    sub_20CE141B4();
    __break(1u);
  }
}

void sub_20CDE49CC(void *a1, char *a2, void *a3, void *a4)
{
  sub_20CDE3904(0, &qword_27C811EA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  v12 = *a2;
  v36 = *a2;
  v13 = a4;
  sub_20CDDF904(&v36, &v37);
  if (v37 == 10 || (v30 = v37, v14 = sub_20CDDFE8C(&v30), v14 == 4))
  {
    v34 = v12;
    sub_20CDDF3E4(&v34, &v35);
    if (v35 != 10)
    {
      v33 = v35;
      sub_20CDDEAC4(&v33);
      if (v15)
      {
        v16 = v15;
        v29 = [a1 navigationController];
        if (!v29)
        {

          sub_20CE141B4();
          __break(1u);
          return;
        }

        objc_opt_self();
        v17 = swift_dynamicCastObjCClass();
        if (v17)
        {
        }

        v31 = v12;
        sub_20CDDF904(&v31, &v32);
        if ((v32 > 0xAu || ((1 << v32) & 0x601) == 0) && (*(a3 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_isHearingTestSessionEnabled) & 1) == 0)
        {
          v22 = sub_20CE13BB4();
          (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
          sub_20CE13B84();

          v23 = a3;
          v24 = v29;
          v25 = v16;
          v26 = sub_20CE13B74();
          v27 = swift_allocObject();
          v28 = MEMORY[0x277D85700];
          *(v27 + 16) = v26;
          *(v27 + 24) = v28;
          *(v27 + 32) = sub_20CDE4E6C;
          *(v27 + 40) = v11;
          *(v27 + 48) = v23;
          *(v27 + 56) = v12;
          *(v27 + 64) = v24;
          *(v27 + 72) = v25;
          sub_20CDDA798(0, 0, v10, &unk_20CE18BC8, v27);

          return;
        }

        [v29 pushViewController:v16 animated:{1, v29}];

        goto LABEL_18;
      }
    }

    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (v18)
    {
    }

    sub_20CDDE960();
  }

  else
  {
    v19 = v14;
    sub_20CDA3584(v14);
    sub_20CDA3760(v19);
    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (v20)
    {
      v29 = [v20 buttonTray];

LABEL_18:
      v21 = v29;

      return;
    }
  }
}

uint64_t objectdestroy_82Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

unint64_t sub_20CDE4EF4()
{
  result = qword_27C8131E8;
  if (!qword_27C8131E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8131E8);
  }

  return result;
}

void sub_20CDE4F50(void *a1, char a2)
{
  v3 = v2;
  v6 = [v3 viewControllers];
  sub_20CD83128(0, &qword_27C812440, 0x277D75D28);
  v7 = sub_20CE13AB4();

  sub_20CDE5BC0(1, v7);
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_20CD98B04();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20CE183B0;
  *(inited + 32) = a1;
  v21 = MEMORY[0x277D84F90];
  v15 = (v13 >> 1) - v11;
  if (__OFSUB__(v13 >> 1, v11))
  {
    __break(1u);
  }

  else
  {
    v16 = v15 + 1;
    if (!__OFADD__(v15, 1))
    {
      v17 = inited;
      v18 = a1;
      sub_20CDE5B24(v16);
      v19 = swift_unknownObjectRetain();
      sub_20CDE5D1C(v19, v9, v11, v13);
      swift_unknownObjectRelease();
      sub_20CDE52BC(v17, sub_20CDE5970);
      swift_unknownObjectRelease();
      v20 = sub_20CE13AA4();

      [v3 setViewControllers:v20 animated:{a2 & 1, v21}];

      return;
    }
  }

  __break(1u);
}

uint64_t sub_20CDE5148(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
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

uint64_t sub_20CDE52BC(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_20CE141C4();
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

  v15 = sub_20CE141C4();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_20CDE53B4(result, 1);
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

uint64_t sub_20CDE53B4(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_20CE141C4();
LABEL_9:
  result = sub_20CE14114();
  *v2 = result;
  return result;
}

uint64_t sub_20CDE5454(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_20CE141C4();
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
      result = sub_20CE141C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_20CDE5E30(0, &qword_27C813200, &qword_27C812330, 0x277CCD040);
          sub_20CDE5E88(&qword_27C813208, &qword_27C813200, &qword_27C812330, 0x277CCD040);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_20CDA0440(v13, i, a3);
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
        sub_20CD83128(0, &qword_27C812330, 0x277CCD040);
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

uint64_t sub_20CDE5608(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_20CE141C4();
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
      result = sub_20CE141C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_20CDE5E30(0, &qword_27C813220, &qword_27C812F10, 0x277CCAAD0);
          sub_20CDE5E88(&qword_27C813228, &qword_27C813220, &qword_27C812F10, 0x277CCAAD0);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_20CDA0440(v13, i, a3);
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
        sub_20CD83128(0, &qword_27C812F10, 0x277CCAAD0);
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

uint64_t sub_20CDE57BC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_20CE141C4();
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
      result = sub_20CE141C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_20CDE5E30(0, &qword_27C813210, &qword_27C812220, 0x277D751E0);
          sub_20CDE5E88(&qword_27C813218, &qword_27C813210, &qword_27C812220, 0x277D751E0);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_20CDA04C0(v13, i, a3);
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
        sub_20CD83128(0, &qword_27C812220, 0x277D751E0);
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

uint64_t sub_20CDE5970(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_20CE141C4();
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
      result = sub_20CE141C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_20CDE5E30(0, &qword_27C8131F0, &qword_27C812440, 0x277D75D28);
          sub_20CDE5E88(&qword_27C8131F8, &qword_27C8131F0, &qword_27C812440, 0x277D75D28);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_20CDA0440(v13, i, a3);
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
        sub_20CD83128(0, &qword_27C812440, 0x277D75D28);
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

uint64_t sub_20CDE5B24(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
LABEL_8:
    sub_20CE141C4();
LABEL_9:
    result = sub_20CE14114();
    v3 = result;
    goto LABEL_10;
  }

  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_10:
  *v1 = v3;
  return result;
}

uint64_t sub_20CDE5BC0(uint64_t result, unint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = a2;
  v4 = a2 >> 62;
  if (a2 >> 62)
  {
LABEL_13:
    v9 = result;
    result = sub_20CE141C4();
    v10 = result - v9;
    if (__OFSUB__(result, v9))
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v11 = sub_20CE141C4();
    result = sub_20CE141C4();
    if (result < 0)
    {
LABEL_27:
      __break(1u);
      return result;
    }

    if (v10 <= v11)
    {
      v12 = v10 & ~(v10 >> 63);
    }

    else
    {
      v12 = v11;
    }

    if (v11 < 0 || v10 < 1)
    {
      v6 = v10 & ~(v10 >> 63);
    }

    else
    {
      v6 = v12;
    }

    result = sub_20CE141C4();
    if (result >= v6)
    {
      goto LABEL_4;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v6 = (v5 - result) & ~((v5 - result) >> 63);
  if (v5 < v6)
  {
    goto LABEL_25;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0 && v6)
  {
    sub_20CD83128(0, &qword_27C812440, 0x277D75D28);

    v7 = 0;
    do
    {
      v8 = v7 + 1;
      sub_20CE140F4();
      v7 = v8;
    }

    while (v6 != v8);
    if (!v4)
    {
      return v3 & 0xFFFFFFFFFFFFFF8;
    }
  }

  else
  {

    if (!v4)
    {
      return v3 & 0xFFFFFFFFFFFFFF8;
    }
  }

  return sub_20CE141D4();
}

uint64_t sub_20CDE5D1C(void x0_0, uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = a3 >> 1;
  v7 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
  }

  else
  {
    v5 = a2;
    if (!(*v4 >> 62))
    {
      v8 = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = __OFADD__(v8, v7);
      result = v8 + v7;
      if (!v9)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  v14 = sub_20CE141C4();
  v9 = __OFADD__(v14, v7);
  result = v14 + v7;
  if (v9)
  {
    goto LABEL_15;
  }

LABEL_4:
  result = sub_20CDE53B4(result, 1);
  v11 = *v4;
  if (v6 == v5)
  {
    if (v7 <= 0)
    {
LABEL_11:
      *v4 = v11;
      return result;
    }

    __break(1u);
  }

  if ((*((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) < v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_20CD83128(0, &qword_27C812440, 0x277D75D28);
  result = swift_arrayInitWithCopy();
  if (v7 <= 0)
  {
    goto LABEL_11;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v9 = __OFADD__(v12, v7);
  v13 = v12 + v7;
  if (!v9)
  {
    *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = v13;
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_20CDE5E30(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_20CD83128(255, a3, a4);
    v5 = sub_20CE13B04();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_20CDE5E88(unint64_t *a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  result = *a1;
  if (!result)
  {
    sub_20CDE5E30(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t HearingTestFlowMetric.__allocating_init(step:entryPoint:algorithmVersion:action:stepDetail:endReason:pairedHeadphoneProductType:airPodsFirmware:firstTimeActionCompleted:hasCongestionSelected:hasLoudEnvironmentSelected:flowStartTime:previousTestCompleteDate:stepDuration:evaluationDuration:totalDuration:interruptionCount:totalInterruptionDuration:leftEarClassification:rightEarClassification:instantaneousNoiseCount:stationaryNoiseCount:totalNoiseCount:leftInstNoise:rightInstNoise:leftStatNoise:rightStatNoise:fitScoreLeft:fitScoreRight:fitConfidenceScoreLeft:fitConfidenceScoreRight:)(char *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, __int128 a9, uint64_t a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, char a33, uint64_t a34, char a35, uint64_t a36, char a37, uint64_t a38, char a39, uint64_t a40, char a41, uint64_t a42, char a43, uint64_t a44, char a45)
{
  v48 = swift_allocObject();
  v68 = *a1;
  v69 = *a4;
  v70 = *a7;
  *(v48 + 40) = 16;
  *(v48 + 48) = 0;
  *(v48 + 56) = 0;
  *(v48 + 64) = 5;
  *(v48 + 72) = 0;
  *(v48 + 80) = 0;
  *(v48 + 104) = 514;
  *(v48 + 106) = 2;
  v49 = OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_flowStartTime;
  v50 = sub_20CE124E4();
  v51 = *(*(v50 - 8) + 56);
  v51(v48 + v49, 1, 1, v50);
  v52 = OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_previousTestCompleteDate;
  v51(v48 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_previousTestCompleteDate, 1, 1, v50);
  v53 = v48 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_stepDuration;
  *v53 = 0;
  *(v53 + 8) = 1;
  v54 = v48 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_evaluationDuration;
  *v54 = 0;
  *(v54 + 8) = 1;
  v55 = v48 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_totalDuration;
  *v55 = 0;
  *(v55 + 8) = 1;
  v56 = v48 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_totalInterruptionDuration;
  *v56 = 0;
  *(v56 + 8) = 1;
  v57 = v48 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_leftEarClassification;
  *v57 = 0;
  *(v57 + 8) = 1;
  v58 = v48 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_rightEarClassification;
  *v58 = 0;
  *(v58 + 8) = 1;
  *(v48 + 16) = v68;
  *(v48 + 24) = a2;
  *(v48 + 32) = a3;
  *(v48 + 40) = v69;
  *(v48 + 48) = a5;
  *(v48 + 56) = a6;
  *(v48 + 64) = v70;
  *(v48 + 72) = a8;
  *(v48 + 80) = a9;
  *(v48 + 96) = a10;
  *(v48 + 104) = a11;
  *(v48 + 105) = *(&a11 + 1);
  swift_beginAccess();
  sub_20CD83094(a12, v48 + v49);
  swift_endAccess();
  swift_beginAccess();
  sub_20CD83094(a13, v48 + v52);
  swift_endAccess();
  *v53 = a14;
  *(v53 + 8) = a15 & 1;
  *v54 = a16;
  *(v54 + 8) = a17 & 1;
  *v55 = a18;
  *(v55 + 8) = a19 & 1;
  *(v48 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_interruptionCount) = a20;
  *v56 = a21;
  *(v56 + 8) = a22 & 1;
  *v57 = a23;
  *(v57 + 8) = a24 & 1;
  *v58 = a25;
  *(v58 + 8) = a26 & 1;
  *(v48 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_instantaneousNoiseCount) = a27;
  *(v48 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_stationaryNoiseCount) = a28;
  *(v48 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_totalNoiseCount) = a29;
  v59 = v48 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_leftInstNoise;
  *v59 = a30;
  *(v59 + 8) = a31 & 1;
  v60 = v48 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_rightInstNoise;
  *v60 = a32;
  *(v60 + 8) = a33 & 1;
  v61 = v48 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_leftStatNoise;
  *v61 = a34;
  *(v61 + 8) = a35 & 1;
  v62 = v48 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_rightStatNoise;
  *v62 = a36;
  *(v62 + 8) = a37 & 1;
  v63 = v48 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_fitScoreLeft;
  *v63 = a38;
  *(v63 + 8) = a39 & 1;
  v64 = v48 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_fitScoreRight;
  *v64 = a40;
  *(v64 + 8) = a41 & 1;
  v65 = v48 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_fitConfidenceScoreLeft;
  *v65 = a42;
  *(v65 + 8) = a43 & 1;
  v66 = v48 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_fitConfidenceScoreRight;
  *v66 = a44;
  *(v66 + 8) = a45 & 1;
  return v48;
}

uint64_t HearingTestFlowMetric.init(step:entryPoint:algorithmVersion:action:stepDetail:endReason:pairedHeadphoneProductType:airPodsFirmware:firstTimeActionCompleted:hasCongestionSelected:hasLoudEnvironmentSelected:flowStartTime:previousTestCompleteDate:stepDuration:evaluationDuration:totalDuration:interruptionCount:totalInterruptionDuration:leftEarClassification:rightEarClassification:instantaneousNoiseCount:stationaryNoiseCount:totalNoiseCount:leftInstNoise:rightInstNoise:leftStatNoise:rightStatNoise:fitScoreLeft:fitScoreRight:fitConfidenceScoreLeft:fitConfidenceScoreRight:)(char *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, __int128 a9, uint64_t a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, char a33, uint64_t a34, char a35, uint64_t a36, char a37, uint64_t a38, char a39, uint64_t a40, char a41, uint64_t a42, char a43, uint64_t a44, char a45)
{
  v65 = *a1;
  v66 = *a4;
  v67 = *a7;
  *(v45 + 40) = 16;
  *(v45 + 48) = 0;
  *(v45 + 56) = 0;
  *(v45 + 64) = 5;
  *(v45 + 72) = 0;
  *(v45 + 80) = 0;
  *(v45 + 104) = 514;
  *(v45 + 106) = 2;
  v46 = OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_flowStartTime;
  v47 = sub_20CE124E4();
  v48 = *(*(v47 - 8) + 56);
  v48(v45 + v46, 1, 1, v47);
  v49 = OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_previousTestCompleteDate;
  v48(v45 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_previousTestCompleteDate, 1, 1, v47);
  v50 = v45 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_stepDuration;
  *v50 = 0;
  *(v50 + 8) = 1;
  v51 = v45 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_evaluationDuration;
  *v51 = 0;
  *(v51 + 8) = 1;
  v52 = v45 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_totalDuration;
  *v52 = 0;
  *(v52 + 8) = 1;
  v53 = v45 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_totalInterruptionDuration;
  *v53 = 0;
  *(v53 + 8) = 1;
  v54 = v45 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_leftEarClassification;
  *v54 = 0;
  *(v54 + 8) = 1;
  v55 = v45 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_rightEarClassification;
  *v55 = 0;
  *(v55 + 8) = 1;
  *(v45 + 16) = v65;
  *(v45 + 24) = a2;
  *(v45 + 32) = a3;
  *(v45 + 40) = v66;
  *(v45 + 48) = a5;
  *(v45 + 56) = a6;
  *(v45 + 64) = v67;
  *(v45 + 72) = a8;
  *(v45 + 80) = a9;
  *(v45 + 96) = a10;
  *(v45 + 104) = a11;
  *(v45 + 105) = *(&a11 + 1);
  swift_beginAccess();
  sub_20CD83094(a12, v45 + v46);
  swift_endAccess();
  swift_beginAccess();
  sub_20CD83094(a13, v45 + v49);
  swift_endAccess();
  *v50 = a14;
  *(v50 + 8) = a15 & 1;
  *v51 = a16;
  *(v51 + 8) = a17 & 1;
  *v52 = a18;
  *(v52 + 8) = a19 & 1;
  *(v45 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_interruptionCount) = a20;
  *v53 = a21;
  *(v53 + 8) = a22 & 1;
  *v54 = a23;
  *(v54 + 8) = a24 & 1;
  *v55 = a25;
  *(v55 + 8) = a26 & 1;
  *(v45 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_instantaneousNoiseCount) = a27;
  *(v45 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_stationaryNoiseCount) = a28;
  *(v45 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_totalNoiseCount) = a29;
  v56 = v45 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_leftInstNoise;
  *v56 = a30;
  *(v56 + 8) = a31 & 1;
  v57 = v45 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_rightInstNoise;
  *v57 = a32;
  *(v57 + 8) = a33 & 1;
  v58 = v45 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_leftStatNoise;
  *v58 = a34;
  *(v58 + 8) = a35 & 1;
  v59 = v45 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_rightStatNoise;
  *v59 = a36;
  *(v59 + 8) = a37 & 1;
  v60 = v45 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_fitScoreLeft;
  *v60 = a38;
  *(v60 + 8) = a39 & 1;
  v61 = v45 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_fitScoreRight;
  *v61 = a40;
  *(v61 + 8) = a41 & 1;
  v62 = v45 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_fitConfidenceScoreLeft;
  *v62 = a42;
  *(v62 + 8) = a43 & 1;
  v63 = v45 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_fitConfidenceScoreRight;
  *v63 = a44;
  *(v63 + 8) = a45 & 1;
  return v45;
}

id sub_20CDE6908()
{
  v1 = sub_20CE125B4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20CE12274();
  v33 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v32 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDE9304(0, &qword_281111770, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v29 - v8;
  v10 = sub_20CE124E4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_flowStartTime;
  swift_beginAccess();
  sub_20CD7DC78(v0 + v14, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_20CDE9294(v9, &qword_281111770, MEMORY[0x277CC9578]);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v15 = [objc_opt_self() currentCalendar];
    sub_20CE12574();

    sub_20CDE9304(0, &unk_27C812250, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
    v16 = sub_20CE125A4();
    v17 = *(v16 - 8);
    v30 = v1;
    v18 = v17;
    v19 = *(v17 + 80);
    v31 = v5;
    v20 = v2;
    v21 = (v19 + 32) & ~v19;
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_20CE16370;
    (*(v18 + 104))(v22 + v21, *MEMORY[0x277CC9980], v16);
    sub_20CDE8A00(v22);
    swift_setDeallocating();
    (*(v18 + 8))(v22 + v21, v16);
    swift_deallocClassInstance();
    v23 = v32;
    sub_20CE12564();

    (*(v20 + 8))(v4, v30);
    v24 = sub_20CE12264();
    LOBYTE(v22) = v25;
    (*(v33 + 8))(v23, v31);
    if ((v22 & 1) == 0)
    {
      v28 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      (*(v11 + 8))(v13, v10);
      return v28;
    }

    (*(v11 + 8))(v13, v10);
  }

  v26 = *MEMORY[0x277CCB7A0];

  return v26;
}

id sub_20CDE6E14()
{
  v1 = sub_20CE125B4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20CE12274();
  v35 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v34 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDE9304(0, &qword_281111770, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v32 - v8;
  v10 = sub_20CE124E4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v36 = &v32 - v15;
  v16 = OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_previousTestCompleteDate;
  swift_beginAccess();
  sub_20CD7DC78(v0 + v16, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_20CDE9294(v9, &qword_281111770, MEMORY[0x277CC9578]);
  }

  else
  {
    (*(v11 + 32))(v36, v9, v10);
    v17 = [objc_opt_self() currentCalendar];
    sub_20CE12574();

    sub_20CDE9304(0, &unk_27C812250, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
    v18 = sub_20CE125A4();
    v19 = *(v18 - 8);
    v32 = v1;
    v20 = v19;
    v21 = *(v19 + 80);
    v33 = v5;
    v22 = v2;
    v23 = (v21 + 32) & ~v21;
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_20CE16370;
    (*(v20 + 104))(v24 + v23, *MEMORY[0x277CC9940], v18);
    sub_20CDE8A00(v24);
    swift_setDeallocating();
    (*(v20 + 8))(v24 + v23, v18);
    swift_deallocClassInstance();
    sub_20CE124C4();
    v25 = v34;
    sub_20CE12554();

    v26 = *(v11 + 8);
    v26(v14, v10);
    (*(v22 + 8))(v4, v32);
    v27 = sub_20CE12224();
    LOBYTE(v24) = v28;
    (*(v35 + 8))(v25, v33);
    if ((v24 & 1) == 0)
    {
      v31 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v26(v36, v10);
      return v31;
    }

    v26(v36, v10);
  }

  v29 = *MEMORY[0x277CCB7A0];

  return v29;
}

unint64_t sub_20CDE7360()
{
  v1 = v0;
  v2 = sub_20CDF57C4(MEMORY[0x277D84F90]);
  v3 = sub_20CDE6908();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_20CE0940C(v3, 0x72617453776F6C66, 0xED0000656D695474, isUniquelyReferenced_nonNull_native);
  v5 = sub_20CDE6E14();
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_20CE0940C(v5, 0xD00000000000001BLL, 0x800000020CE1AB20, v6);
  v7 = v2;
  v8 = *(v1 + 105);
  v9 = MEMORY[0x277CCB798];
  if (v8 == 2)
  {
    v10 = *MEMORY[0x277CCB798];
  }

  else
  {
    v10 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  }

  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_20CE0940C(v11, 0xD000000000000015, 0x800000020CE1AB40, v12);
  v13 = *(v1 + 106);
  if (v13 == 2)
  {
    v14 = *v9;
  }

  else
  {
    v14 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  }

  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_20CE0940C(v15, 0xD00000000000001ALL, 0x800000020CE1AB60, v16);
  v17 = MEMORY[0x277CCB7A0];
  if (*(v1 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_totalDuration + 8))
  {
    v18 = *MEMORY[0x277CCB7A0];
  }

  else
  {
    v18 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  sub_20CE0940C(v19, 0x7275446C61746F74, 0xED00006E6F697461, v20);
  if (*(v1 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_evaluationDuration + 8))
  {
    v21 = *v17;
  }

  else
  {
    v21 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  v22 = v21;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  sub_20CE0940C(v22, 0xD000000000000012, 0x800000020CE1AB90, v23);
  if (*(v1 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_stepDuration + 8))
  {
    v24 = *v17;
  }

  else
  {
    v24 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  v25 = v24;
  v26 = swift_isUniquelyReferenced_nonNull_native();
  sub_20CE0940C(v25, 0x6172754470657473, 0xEC0000006E6F6974, v26);
  if (*(v1 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_totalInterruptionDuration + 8))
  {
    v27 = *v17;
  }

  else
  {
    v27 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  v28 = v27;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  sub_20CE0940C(v28, 0xD000000000000019, 0x800000020CE1ABB0, v29);
  if (*(v1 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_leftEarClassification + 8))
  {
    v30 = *v17;
  }

  else
  {
    v30 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  }

  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  sub_20CE0940C(v31, 0xD000000000000015, 0x800000020CE1AC00, v32);
  if (*(v1 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_rightEarClassification + 8))
  {
    v33 = *v17;
  }

  else
  {
    v33 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  }

  v34 = v33;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  sub_20CE0940C(v34, 0xD000000000000016, 0x800000020CE1AC20, v35);
  sub_20CD83128(0, &qword_27C812458, 0x277CCABB0);
  v36 = sub_20CE13E34();
  v37 = swift_isUniquelyReferenced_nonNull_native();
  sub_20CE0940C(v36, 0xD000000000000017, 0x800000020CE1AC40, v37);
  v38 = sub_20CE13E34();
  v39 = swift_isUniquelyReferenced_nonNull_native();
  sub_20CE0940C(v38, 0xD000000000000017, 0x800000020CE1AC60, v39);
  v40 = sub_20CE13E34();
  v41 = swift_isUniquelyReferenced_nonNull_native();
  sub_20CE0940C(v40, 0xD000000000000018, 0x800000020CE1AC80, v41);
  v42 = 0;
  if ((*(v1 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_fitScoreLeft + 8) & 1) == 0)
  {
    v42 = sub_20CE13E24();
  }

  sub_20CE07F50(v42, 0xD000000000000010, 0x800000020CE1ACA0);
  if (*(v1 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_fitScoreRight + 8))
  {
    v43 = 0;
  }

  else
  {
    v43 = sub_20CE13E24();
  }

  sub_20CE07F50(v43, 0xD000000000000011, 0x800000020CE1ACC0);
  if (*(v1 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_fitConfidenceScoreLeft + 8))
  {
    v44 = 0;
  }

  else
  {
    v44 = sub_20CE13E24();
  }

  sub_20CE07F50(v44, 0xD000000000000016, 0x800000020CE1ACE0);
  if (*(v1 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_fitConfidenceScoreRight + 8))
  {
    v45 = 0;
  }

  else
  {
    v45 = sub_20CE13E24();
  }

  sub_20CE07F50(v45, 0xD000000000000017, 0x800000020CE1AD00);
  return v7;
}

uint64_t sub_20CDE7A24(void *a1)
{
  v2 = v1;
  v4 = sub_20CDF57C4(MEMORY[0x277D84F90]);
  HearingTestFlowAnalyticsStep.rawValue.getter();
  v5 = sub_20CE13914();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_20CE0940C(v5, 1885697139, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  v7 = v4;
  v8 = *(v2 + 24);
  if (v8 > 2)
  {
    if (v8 == 3 || v8 == 4 || v8 == 5)
    {
      goto LABEL_11;
    }
  }

  else if (v8 <= 1 || v8 == 2)
  {
LABEL_11:
    v9 = sub_20CE13914();

    v10 = swift_isUniquelyReferenced_nonNull_native();
    sub_20CE0940C(v9, 0x696F507972746E65, 0xEA0000000000746ELL, v10);
    v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v12 = swift_isUniquelyReferenced_nonNull_native();
    sub_20CE0940C(v11, 0xD000000000000010, 0x800000020CE1AA50, v12);
    if (*(v2 + 40) == 16)
    {
      sub_20CE13954();
    }

    else
    {
      HearingTestFlowActionType.rawValue.getter();
    }

    v13 = sub_20CE13914();

    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_20CE0940C(v13, 0x6E6F69746361, 0xE600000000000000, v14);
    if (!*(v2 + 56))
    {
      sub_20CE13954();
    }

    v15 = sub_20CE13914();

    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_20CE0940C(v15, 0x6174654470657473, 0xEA00000000006C69, v16);
    v17 = *(v2 + 64);
    if (v17 > 4)
    {
      sub_20CE13954();
    }

    v18 = sub_20CE13914();

    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_20CE0940C(v18, 0x6F73616552646E65, 0xE90000000000006ELL, v19);
    if (!*(v2 + 80))
    {
      sub_20CE13954();
    }

    v20 = sub_20CE13914();

    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_20CE0940C(v20, 0xD00000000000001ALL, 0x800000020CE1AA00, v21);
    if (!*(v2 + 96))
    {
      sub_20CE13954();
    }

    v22 = sub_20CE13914();

    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_20CE0940C(v22, 0x4673646F50726961, 0xEF657261776D7269, v23);
    v24 = *(v2 + 104);
    if (v24 == 2)
    {
      v25 = *MEMORY[0x277CCB798];
    }

    else
    {
      v25 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    }

    v26 = v25;
    v27 = swift_isUniquelyReferenced_nonNull_native();
    sub_20CE0940C(v26, 0xD000000000000018, 0x800000020CE1AA30, v27);
    sub_20CD83128(0, &qword_27C812458, 0x277CCABB0);
    v28 = sub_20CE13E34();
    v29 = swift_isUniquelyReferenced_nonNull_native();
    sub_20CE0940C(v28, 0xD000000000000016, 0x800000020CE1AAA0, v29);
    if ((*(v2 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_leftInstNoise + 8) & 1) == 0)
    {
      v30 = sub_20CE13E24();
      v31 = swift_isUniquelyReferenced_nonNull_native();
      sub_20CE0940C(v30, 0x73696F4E74736E69, 0xED00007466654C65, v31);
    }

    if ((*(v2 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_rightInstNoise + 8) & 1) == 0)
    {
      v32 = sub_20CE13E24();
      v33 = swift_isUniquelyReferenced_nonNull_native();
      sub_20CE0940C(v32, 0x73696F4E74736E69, 0xEE00746867695265, v33);
    }

    if ((*(v2 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_leftStatNoise + 8) & 1) == 0)
    {
      v34 = sub_20CE13E24();
      v35 = swift_isUniquelyReferenced_nonNull_native();
      sub_20CE0940C(v34, 0x73696F4E74617473, 0xED00007466654C65, v35);
    }

    if ((*(v2 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_rightStatNoise + 8) & 1) == 0)
    {
      v36 = sub_20CE13E24();
      v37 = swift_isUniquelyReferenced_nonNull_native();
      sub_20CE0940C(v36, 0x73696F4E74617473, 0xEE00746867695265, v37);
    }

    if (a1)
    {
      v38 = a1;
      sub_20CDE8E04(v38);
      if (v39)
      {
        v40 = sub_20CE13914();

        v41 = swift_isUniquelyReferenced_nonNull_native();
        v45 = v7;
        sub_20CE0940C(v40, 0xD000000000000015, 0x800000020CE1AB00, v41);

        return v45;
      }
    }

    v42 = *MEMORY[0x277CCB800];
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v45 = v7;
    sub_20CE0940C(v42, 0xD000000000000015, 0x800000020CE1AB00, v43);
    return v45;
  }

  result = sub_20CE142B4();
  __break(1u);
  return result;
}

uint64_t sub_20CDE8290()
{
  sub_20CE140E4();
  MEMORY[0x20F312EF0](0xD000000000000018, 0x800000020CE1F580);
  v0 = sub_20CDE8290();
  MEMORY[0x20F312EF0](v0);

  MEMORY[0x20F312EF0](0x6C79615061686920, 0xED0000203A64616FLL);
  sub_20CDE7360();
  sub_20CD83128(0, &qword_27C813590, 0x277D82BB8);
  v1 = sub_20CE13894();
  v3 = v2;

  MEMORY[0x20F312EF0](v1, v3);

  MEMORY[0x20F312EF0](0x6F6C796150756420, 0xEC000000203A6461);
  sub_20CDE7A24(0);
  v4 = sub_20CE13894();
  v6 = v5;

  MEMORY[0x20F312EF0](v4, v6);

  return 0;
}

uint64_t sub_20CDE8434(uint64_t a1)
{
  v2 = sub_20CE14054();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_20CDE8DB0(v2, *(a1 + 36), 0, a1);

  return v4;
}

void *HearingTestFlowMetric.deinit()
{

  v1 = MEMORY[0x277CC9578];
  sub_20CDE9294(v0 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_flowStartTime, &qword_281111770, MEMORY[0x277CC9578]);
  sub_20CDE9294(v0 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_previousTestCompleteDate, &qword_281111770, v1);
  return v0;
}

uint64_t HearingTestFlowMetric.__deallocating_deinit()
{

  v1 = MEMORY[0x277CC9578];
  sub_20CDE9294(v0 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_flowStartTime, &qword_281111770, MEMORY[0x277CC9578]);
  sub_20CDE9294(v0 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_previousTestCompleteDate, &qword_281111770, v1);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HearingTestFlowMetric(uint64_t a1)
{
  result = qword_27C813298;
  if (!qword_27C813298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20CDE867C(uint64_t a1)
{
  sub_20CDE9304(319, &qword_281111770, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of HearingTestFlowMetric.__allocating_init(step:entryPoint:algorithmVersion:action:stepDetail:endReason:pairedHeadphoneProductType:airPodsFirmware:firstTimeActionCompleted:hasCongestionSelected:hasLoudEnvironmentSelected:flowStartTime:previousTestCompleteDate:stepDuration:evaluationDuration:totalDuration:interruptionCount:totalInterruptionDuration:leftEarClassification:rightEarClassification:instantaneousNoiseCount:stationaryNoiseCount:totalNoiseCount:leftInstNoise:rightInstNoise:leftStatNoise:rightStatNoise:fitScoreLeft:fitScoreRight:fitConfidenceScoreLeft:fitConfidenceScoreRight:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  LOBYTE(a36) = a36 & 1;
  LOBYTE(a34) = a34 & 1;
  LOBYTE(a32) = a32 & 1;
  LOBYTE(a27) = a27 & 1;
  LOBYTE(a23) = a23 & 1;
  LOBYTE(a20) = a20 & 1;
  LOBYTE(a18) = a18 & 1;
  LOBYTE(a16) = a16 & 1;
  LOBYTE(a25) = a25 & 1;
  v38 = *(v37 + 712);

  return v38(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37);
}

uint64_t sub_20CDE8A00(uint64_t a1)
{
  v2 = sub_20CE125A4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_20CDE8CEC(0);
    v9 = sub_20CE140A4();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_20CDE8D6C(&qword_27C8132B0, MEMORY[0x277CC99D8]);
      v16 = sub_20CE138B4();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_20CDE8D6C(&qword_27C8132B8, MEMORY[0x277CC99E0]);
          v23 = sub_20CE13904();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_20CDE8CEC(uint64_t a1)
{
  if (!qword_27C8132A8)
  {
    sub_20CE125A4();
    sub_20CDE8D6C(&qword_27C8132B0, MEMORY[0x277CC99D8]);
    v1 = sub_20CE140B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27C8132A8);
    }
  }
}

uint64_t sub_20CDE8D6C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_20CE125A4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20CDE8DB0(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_20CDE8E04(void *a1)
{
  v2 = sub_20CE12C14();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDE9304(0, &qword_27C8132C0, MEMORY[0x277D11290], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_20CE12C24();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  v16 = [a1 healthDataSource];
  if (!v16 || (v17 = [v16 featureStatusProviderForIdentifier_], swift_unknownObjectRelease(), !v17) || (v30[0] = v17, sub_20CDE93CC(), sub_20CDE9368(), (swift_dynamicCast() & 1) == 0))
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    goto LABEL_7;
  }

  if (!*(&v28 + 1))
  {
LABEL_7:
    sub_20CDE9294(&v27, &qword_27C8132C8, sub_20CDE9368);
    return 0;
  }

  v25 = v3;
  v26 = v10;
  sub_20CD75924(&v27, v30);
  __swift_project_boxed_opaque_existential_1(v30, v30[3]);
  sub_20CE12C44();
  v19 = v26;
  (*(v26 + 56))(v8, 0, 1, v9);
  (*(v19 + 32))(v15, v8, v9);
  (*(v19 + 16))(v13, v15, v9);
  if ((*(v19 + 88))(v13, v9) == *MEMORY[0x277D11288])
  {
    (*(v19 + 96))(v13, v9);
    v20 = v25;
    (*(v25 + 32))(v5, v13, v2);
    v21 = sub_20CE12C04();
    v22 = sub_20CDE8434(v21);

    (*(v20 + 8))(v5, v2);
    (*(v19 + 8))(v15, v9);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    return v22;
  }

  v23 = *(v19 + 8);
  v23(v15, v9);
  v23(v13, v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  return 0;
}

uint64_t sub_20CDE9294(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_20CDE9304(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_20CDE9304(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_20CDE9368()
{
  result = qword_27C8132D0;
  if (!qword_27C8132D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27C8132D0);
  }

  return result;
}

unint64_t sub_20CDE93CC()
{
  result = qword_27C8132D8;
  if (!qword_27C8132D8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27C8132D8);
  }

  return result;
}

uint64_t sub_20CDE9430()
{
  v0 = sub_20CE12924();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_20CE140E4();

  v14 = 0x203C20656E6F54;
  v15 = 0xE700000000000000;
  sub_20CE12704();
  v5 = sub_20CDE9670(v4);
  MEMORY[0x20F312EF0](v5);

  MEMORY[0x20F312EF0](0x207C207A48, 0xE500000000000000);
  sub_20CE126B4();
  v7 = sub_20CDE9670(v6);
  MEMORY[0x20F312EF0](v7);

  MEMORY[0x20F312EF0](0x207C204264, 0xE500000000000000);
  sub_20CE126C4();
  v9 = sub_20CDE9670(v8);
  MEMORY[0x20F312EF0](v9);

  v10 = 0xE400000000000000;
  MEMORY[0x20F312EF0](545005683, 0xE400000000000000);
  sub_20CE126E4();
  v11 = (*(v1 + 88))(v3, v0);
  if (v11 == *MEMORY[0x277D12CD8])
  {
    v12 = 1952867692;
  }

  else if (v11 == *MEMORY[0x277D12CE0])
  {
    v10 = 0xE500000000000000;
    v12 = 0x7468676972;
  }

  else
  {
    (*(v1 + 8))(v3, v0);
    v10 = 0xE700000000000000;
    v12 = 0x6E776F6E6B6E75;
  }

  MEMORY[0x20F312EF0](v12, v10);

  MEMORY[0x20F312EF0](15904, 0xE200000000000000);
  return v14;
}

uint64_t sub_20CDE9670(double a1)
{
  v22 = sub_20CE12434();
  v2 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_20CE12544();
  v5 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDD0FC0(0);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v21 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v21 - v17;
  v24 = a1;
  sub_20CE12534();
  sub_20CDA1354();
  sub_20CE123A4();
  sub_20CE12424();
  MEMORY[0x20F311900](v4, v9);
  (*(v2 + 8))(v4, v22);
  v19 = *(v10 + 8);
  v19(v13, v9);
  sub_20CE12524();
  MEMORY[0x20F3118C0](v7, v9);
  (*(v5 + 8))(v7, v23);
  v19(v16, v9);
  sub_20CDD1028();
  sub_20CE13864();
  v19(v18, v9);
  return v25;
}

uint64_t sub_20CDE997C(unsigned __int8 *a1)
{
  result = 0;
  v3 = *a1;
  if (v3 > 2)
  {
    if ((v3 - 5) < 2)
    {
      return result;
    }

    if (v3 == 3)
    {
LABEL_7:
      if (qword_27C811DC8 == -1)
      {
        return sub_20CE12354();
      }

      goto LABEL_12;
    }
  }

  else
  {
    if (!v3)
    {
      return result;
    }

    if (v3 == 1)
    {
      goto LABEL_7;
    }
  }

  if (qword_27C811DC8 != -1)
  {
LABEL_12:
    swift_once();
  }

  return sub_20CE12354();
}

uint64_t _s13HearingTestUI29ClassificationDescriptionViewV5ModelV8headline9audiogram14recommendationSSSo17HKAudiogramSampleC_AA14RecommendationOtFZ_0(void *a1, char *a2)
{
  v3 = *a2;
  v4 = [a1 hearingLevelSummary];
  v5 = [v4 leftEarMetrics];

  v6 = [v5 averageSensitivity];
  v7 = HKHearingLevelClassificationForSensitivity();

  v8 = [a1 hearingLevelSummary];
  v9 = [v8 rightEarMetrics];

  v10 = [v9 averageSensitivity];
  v11 = HKHearingLevelClassificationForSensitivity();

  if (!v7 || !v11)
  {
    if (qword_27C811D00 != -1)
    {
      swift_once();
    }

    v12 = sub_20CE12CB4();
    __swift_project_value_buffer(v12, qword_27C817768);
    v13 = sub_20CE12C94();
    v14 = sub_20CE13CB4();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_15;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_20CD96DCC(0x6C65646F4DLL, 0xE500000000000000, &v38);
    v17 = "[%{public}s] Left and/or right HKHearingLevelClassification unavailable.";
LABEL_13:
    _os_log_impl(&dword_20CD70000, v13, v14, v17, v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x20F314110](v16, -1, -1);
    v18 = v15;
LABEL_14:
    MEMORY[0x20F314110](v18, -1, -1);
LABEL_15:

    return 0;
  }

  if (v7 != v11)
  {
    if (v7 == 1)
    {
      if (qword_27C811DC8 != -1)
      {
        swift_once();
      }

      v20 = sub_20CE12354();
      v22 = v21;
      if (v11 > 2)
      {
LABEL_20:
        switch(v11)
        {
          case 3:
            goto LABEL_50;
          case 4:
            if (qword_27C811DC8 == -1)
            {
LABEL_53:
              sub_20CE12354();
              sub_20CDDA6DC(0);
              v25 = swift_allocObject();
              *(v25 + 16) = xmmword_20CE16370;
              *(v25 + 56) = MEMORY[0x277D837D0];
              *(v25 + 64) = sub_20CDCB52C();
              *(v25 + 32) = v20;
              *(v25 + 40) = v22;
              v26 = sub_20CE13924();

              return v26;
            }

LABEL_96:
            swift_once();
            goto LABEL_53;
          case 5:
LABEL_50:
            if (qword_27C811DC8 == -1)
            {
              goto LABEL_53;
            }

            goto LABEL_96;
        }

LABEL_62:

LABEL_63:
        if (qword_27C811D00 != -1)
        {
          swift_once();
        }

        v27 = sub_20CE12CB4();
        __swift_project_value_buffer(v27, qword_27C817768);
        v13 = sub_20CE12C94();
        v14 = sub_20CE13CB4();
        if (!os_log_type_enabled(v13, v14))
        {
          goto LABEL_15;
        }

        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v38 = v16;
        *v15 = 136446210;
        *(v15 + 4) = sub_20CD96DCC(0x6C65646F4DLL, 0xE500000000000000, &v38);
        v17 = "[%{public}s] Unhandled HKHearingLevelClassification case.";
        goto LABEL_13;
      }

LABEL_28:
      if (v11 == 1)
      {

        if (qword_27C811DC8 == -1)
        {
          return sub_20CE12354();
        }

        goto LABEL_93;
      }

      if (v11 == 2)
      {
        if (qword_27C811DC8 == -1)
        {
          goto LABEL_53;
        }

        goto LABEL_96;
      }

      goto LABEL_62;
    }

    if (v11 == 1)
    {
      if (qword_27C811DC8 != -1)
      {
        swift_once();
      }

      v20 = sub_20CE12354();
      v22 = v23;
      v11 = v7;
      if (v7 > 2)
      {
        goto LABEL_20;
      }

      goto LABEL_28;
    }

    if (v7 > 3)
    {
      if (v7 != 4)
      {
        if (v7 != 5)
        {
          goto LABEL_74;
        }

        if (v11 == 4)
        {
          goto LABEL_88;
        }

        if (v11 == 3)
        {
LABEL_83:
          if (qword_27C811DC8 == -1)
          {
            return sub_20CE12354();
          }

          goto LABEL_93;
        }

        if (v11 != 2)
        {
          goto LABEL_74;
        }

LABEL_86:
        if (qword_27C811DC8 == -1)
        {
          return sub_20CE12354();
        }

        goto LABEL_93;
      }

      if (v11 == 5 || v11 == 3)
      {
        goto LABEL_88;
      }

      if (v11 != 2)
      {
        goto LABEL_74;
      }
    }

    else
    {
      if (v7 != 2)
      {
        if (v7 != 3)
        {
          goto LABEL_74;
        }

        if (v11 != 5)
        {
          if (v11 != 4)
          {
            if (v11 == 2)
            {
              goto LABEL_86;
            }

LABEL_74:
            if (qword_27C811D00 != -1)
            {
              swift_once();
            }

            v28 = sub_20CE12CB4();
            __swift_project_value_buffer(v28, qword_27C817768);
            v13 = sub_20CE12C94();
            v29 = sub_20CE13CB4();
            if (!os_log_type_enabled(v13, v29))
            {
              goto LABEL_15;
            }

            v30 = swift_slowAlloc();
            v31 = swift_slowAlloc();
            v38 = v31;
            *v30 = 136446722;
            *(v30 + 4) = sub_20CD96DCC(0x6C65646F4DLL, 0xE500000000000000, &v38);
            *(v30 + 12) = 2080;
            type metadata accessor for HKHearingLevelClassification(0);
            v32 = sub_20CE13974();
            v34 = sub_20CD96DCC(v32, v33, &v38);

            *(v30 + 14) = v34;
            *(v30 + 22) = 2080;
            v35 = sub_20CE13974();
            v37 = sub_20CD96DCC(v35, v36, &v38);

            *(v30 + 24) = v37;
            _os_log_impl(&dword_20CD70000, v13, v29, "[%{public}s] Unexpeceted combination of HKHearingLevelClassifications: %s / %s.", v30, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x20F314110](v31, -1, -1);
            v18 = v30;
            goto LABEL_14;
          }

LABEL_88:
          if (qword_27C811DC8 != -1)
          {
            goto LABEL_93;
          }

          return sub_20CE12354();
        }

        goto LABEL_83;
      }

      if (v11 == 5)
      {
        goto LABEL_86;
      }

      if (v11 != 4)
      {
        if (v11 != 3)
        {
          goto LABEL_74;
        }

        goto LABEL_86;
      }
    }

    if (qword_27C811DC8 == -1)
    {
      return sub_20CE12354();
    }

    goto LABEL_93;
  }

  if (v7 > 2)
  {
    if (v7 == 3)
    {
      goto LABEL_43;
    }

    if (v7 != 4)
    {
      if (v7 == 5)
      {
LABEL_43:
        if (qword_27C811DC8 == -1)
        {
          return sub_20CE12354();
        }

        goto LABEL_93;
      }

      goto LABEL_63;
    }

    if (qword_27C811DC8 == -1)
    {
      return sub_20CE12354();
    }

LABEL_93:
    swift_once();
    return sub_20CE12354();
  }

  if (v7 != 1)
  {
    if (v7 == 2)
    {
      if (qword_27C811DC8 == -1)
      {
        return sub_20CE12354();
      }

      goto LABEL_93;
    }

    goto LABEL_63;
  }

  LOBYTE(v38) = v3;
  result = sub_20CDE997C(&v38);
  if (v24)
  {
    return result;
  }

  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  return sub_20CE12354();
}

id sub_20CDEA770(uint64_t a1, uint64_t a2)
{
  v4 = sub_20CE13914();
  v5 = [objc_opt_self() systemImageNamed_];

  sub_20CD8CF38(a1, v14);
  v6 = v15;
  if (v15)
  {
    v7 = __swift_project_boxed_opaque_existential_1(v14, v15);
    v8 = *(v6 - 8);
    MEMORY[0x28223BE20](v7);
    v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    v11 = sub_20CE14274();
    (*(v8 + 8))(v10, v6);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }

  else
  {
    v11 = 0;
  }

  v12 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithImage:v5 style:0 target:v11 action:a2];

  swift_unknownObjectRelease();
  return v12;
}

void sub_20CDEA9B4(char a1, void *a2)
{
  if (a1)
  {
    if (qword_27C811D10 != -1)
    {
      swift_once();
    }

    v2 = sub_20CE12CB4();
    __swift_project_value_buffer(v2, qword_27C817798);
    oslog = sub_20CE12C94();
    v3 = sub_20CE13CD4();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_20CD70000, oslog, v3, "[HearingTestFlowAnalytics] Successfully submitted analytics", v4, 2u);
LABEL_13:
      MEMORY[0x20F314110](v4, -1, -1);
    }
  }

  else
  {
    if (qword_27C811D10 != -1)
    {
      swift_once();
    }

    v6 = sub_20CE12CB4();
    __swift_project_value_buffer(v6, qword_27C817798);
    v7 = a2;
    oslog = sub_20CE12C94();
    v8 = sub_20CE13CB4();

    if (os_log_type_enabled(oslog, v8))
    {
      v4 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v4 = 138412290;
      if (a2)
      {
        v10 = a2;
        v11 = _swift_stdlib_bridgeErrorToNSError();
        v12 = v11;
      }

      else
      {
        v11 = 0;
        v12 = 0;
      }

      *(v4 + 4) = v11;
      *v9 = v12;
      _os_log_impl(&dword_20CD70000, oslog, v8, "[HearingTestFlowAnalytics] Failed to submit analytics error: %@", v4, 0xCu);
      sub_20CDEBF68(v9, &qword_27C812CA0, sub_20CDEBEC8);
      MEMORY[0x20F314110](v9, -1, -1);
      goto LABEL_13;
    }
  }
}

void sub_20CDEABD0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_20CDEAC48()
{

  return swift_deallocClassInstance();
}

double sub_20CDEACB4()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_20CDEACEC(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t sub_20CDEAD84(uint64_t a1)
{
  type metadata accessor for HearingTestFlowEvent();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = *(v1 + 24);
  v7[4] = sub_20CDEA9B4;
  v7[5] = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_20CDEABD0;
  v7[3] = &block_descriptor_10;
  v5 = _Block_copy(v7);

  [v4 submitEvent:v3 completion:v5];
  _Block_release(v5);
}

void sub_20CDEAE7C(_BYTE *a1, char *a2, uint64_t a3, char a4)
{
  v5 = v4;
  v6 = *a2;
  LOBYTE(aBlock[0]) = *a1;
  v29 = v6;
  v7 = sub_20CDEBCA0(aBlock, &v29, a3, a4 & 1);
  if (v7)
  {
    v8 = v7;
    if (qword_27C811D10 != -1)
    {
      swift_once();
    }

    v9 = sub_20CE12CB4();
    __swift_project_value_buffer(v9, qword_27C817798);
    v10 = sub_20CE12C94();
    v11 = sub_20CE13CD4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      aBlock[0] = v13;
      *v12 = 136446210;
      v14 = sub_20CE14414();
      v16 = sub_20CD96DCC(v14, v15, aBlock);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_20CD70000, v10, v11, "[%{public}s] submitting analytics for interrupt metrics", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x20F314110](v13, -1, -1);
      MEMORY[0x20F314110](v12, -1, -1);
    }

    type metadata accessor for HearingTestFlowEvent();
    v17 = swift_allocObject();
    *(v17 + 16) = v8;
    v18 = *(v5 + 24);
    aBlock[4] = sub_20CDEA9B4;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20CDEABD0;
    aBlock[3] = &block_descriptor_7;
    v19 = _Block_copy(aBlock);

    [v18 submitEvent:v17 completion:v19];
    _Block_release(v19);
  }

  else
  {
    if (qword_27C811D10 != -1)
    {
      swift_once();
    }

    v20 = sub_20CE12CB4();
    __swift_project_value_buffer(v20, qword_27C817798);
    oslog = sub_20CE12C94();
    v21 = sub_20CE13CB4();
    if (os_log_type_enabled(oslog, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      aBlock[0] = v23;
      *v22 = 136446210;
      v24 = sub_20CE14414();
      v26 = sub_20CD96DCC(v24, v25, aBlock);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_20CD70000, oslog, v21, "[%{public}s] No metric could be created for interrupt analytics. Omitting submission", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x20F314110](v23, -1, -1);
      MEMORY[0x20F314110](v22, -1, -1);
    }

    else
    {
    }
  }
}

void sub_20CDEB230(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *a1;
  LOBYTE(aBlock[0]) = *a1;
  v7 = sub_20CDEB8B4(aBlock, a2, a3);
  if (v7)
  {
    v8 = v7;
    ObjectType = swift_getObjectType();
    LOBYTE(aBlock[0]) = v6;
    v10 = (*(a3 + 24))(v8, aBlock, ObjectType, a3);
    if (qword_27C811D10 != -1)
    {
      swift_once();
    }

    v11 = sub_20CE12CB4();
    __swift_project_value_buffer(v11, qword_27C817798);
    v12 = sub_20CE12C94();
    v13 = sub_20CE13CD4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      aBlock[0] = v15;
      *v14 = 136446210;
      v16 = sub_20CE14414();
      v18 = sub_20CD96DCC(v16, v17, aBlock);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_20CD70000, v12, v13, "[%{public}s] submitting analytics for flow metrics", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x20F314110](v15, -1, -1);
      MEMORY[0x20F314110](v14, -1, -1);
    }

    type metadata accessor for HearingTestFlowEvent();
    v19 = swift_allocObject();
    *(v19 + 16) = v10;
    v20 = *(v4 + 24);
    aBlock[4] = sub_20CDEA9B4;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20CDEABD0;
    aBlock[3] = &block_descriptor_4;
    v21 = _Block_copy(aBlock);

    [v20 submitEvent:v19 completion:v21];
    _Block_release(v21);
  }

  else
  {
    if (qword_27C811D10 != -1)
    {
      swift_once();
    }

    v22 = sub_20CE12CB4();
    __swift_project_value_buffer(v22, qword_27C817798);
    oslog = sub_20CE12C94();
    v23 = sub_20CE13CB4();
    if (os_log_type_enabled(oslog, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v24 = 136446210;
      v26 = sub_20CE14414();
      v28 = sub_20CD96DCC(v26, v27, aBlock);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_20CD70000, oslog, v23, "[%{public}s] No metric could be created for flow analytics. Omitting submission", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x20F314110](v25, -1, -1);
      MEMORY[0x20F314110](v24, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_20CDEB628(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  if (qword_27C811D10 != -1)
  {
    swift_once();
  }

  v4 = sub_20CE12CB4();
  __swift_project_value_buffer(v4, qword_27C817798);
  v5 = sub_20CE12C94();
  v6 = sub_20CE13CD4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17[0] = v8;
    *v7 = 136446210;
    v9 = sub_20CE14414();
    v11 = sub_20CD96DCC(v9, v10, v17);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_20CD70000, v5, v6, "[%{public}s] Submitting analytics for Fit&Noise Check.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x20F314110](v8, -1, -1);
    MEMORY[0x20F314110](v7, -1, -1);
  }

  swift_beginAccess();
  LOBYTE(v17[0]) = 5;
  v18 = v3;

  v12 = sub_20CD8F120(v17, &v18);

  type metadata accessor for HearingTestFlowEvent();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = *(v2 + 24);
  v17[4] = sub_20CDEA9B4;
  v17[5] = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_20CDEABD0;
  v17[3] = &block_descriptor_8;
  v15 = _Block_copy(v17);

  [v14 submitEvent:v13 completion:v15];
  _Block_release(v15);
}

uint64_t sub_20CDEB8B4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  sub_20CDEBF14(0, &qword_281111770, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v28 - v6;
  v30 = sub_20CE124E4();
  v8 = *(v30 - 8);
  v9 = MEMORY[0x28223BE20](v30);
  v28 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v29 = &v28 - v11;
  v12 = *a1;
  BYTE1(v32[0]) = *a1;
  if (HearingTestFlowActionType.rawValue.getter() == 0x46206C65636E6143 && v13 == 0xEB00000000776F6CLL)
  {
  }

  else
  {
    v14 = sub_20CE14284();

    if ((v14 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  swift_beginAccess();
  BYTE1(v32[0]) = 1;

  sub_20CD8EDF0(v32 + 1);

LABEL_6:
  swift_beginAccess();
  ObjectType = swift_getObjectType();
  v16 = *(a3 + 16);

  v16(v32, ObjectType, a3);
  v31 = v12;
  v17 = sub_20CD8F120(v32, &v31);

  (*(a3 + 8))(ObjectType, a3);
  v18 = v30;
  if ((*(v8 + 48))(v7, 1, v30) == 1)
  {
    sub_20CDEBF68(v7, &qword_281111770, MEMORY[0x277CC9578]);
  }

  else
  {
    v19 = v29;
    (*(v8 + 32))(v29, v7, v18);
    LOBYTE(v32[0]) = v12;
    if (HearingTestFlowActionType.rawValue.getter() == 0x78654E2065766F4DLL && v20 == 0xE900000000000074)
    {
    }

    else
    {
      v21 = sub_20CE14284();

      if ((v21 & 1) == 0)
      {
        (*(v8 + 8))(v19, v18);
        return v17;
      }
    }

    v22 = v28;
    sub_20CE124D4();
    sub_20CE12494();
    v24 = v23;
    v25 = *(v8 + 8);
    v25(v22, v18);
    v25(v19, v18);
    v26 = v17 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_stepDuration;
    *v26 = v24;
    *(v26 + 8) = 0;
  }

  return v17;
}

uint64_t sub_20CDEBCA0(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, char a4)
{
  v6 = *a1;
  v7 = *a2;
  if (v7 == 5 || v7 == 2)
  {
    swift_beginAccess();
    v20[0] = 0;

    sub_20CD8EDF0(v20);
  }

  swift_beginAccess();
  v19 = 14;
  v18 = v6;

  v9 = sub_20CD8F120(&v19, &v18);

  if (v7 > 3)
  {
    if (v7 > 5)
    {
      v15 = 0x800000020CE1E140;
      v14 = 0xD000000000000015;
      if (v7 == 6)
      {
        v14 = 0xD000000000000013;
      }

      else
      {
        v15 = 0x800000020CE1E100;
      }
    }

    else
    {
      v14 = 0xD000000000000012;
      v15 = 0x800000020CE1E180;
      if (v7 != 4)
      {
        v14 = 0xD000000000000018;
        v15 = 0x800000020CE1E160;
      }
    }
  }

  else
  {
    v10 = 0x6361654420707041;
    v11 = 0x800000020CE1E1C0;
    v12 = 0xD000000000000017;
    if (v7 != 2)
    {
      v12 = 0xD000000000000012;
      v11 = 0x800000020CE1E1A0;
    }

    if (v7)
    {
      v13 = 0xEF64657461766974;
    }

    else
    {
      v10 = 0xD000000000000010;
      v13 = 0x800000020CE1E1E0;
    }

    if (v7 <= 1)
    {
      v14 = v10;
    }

    else
    {
      v14 = v12;
    }

    if (v7 <= 1)
    {
      v15 = v13;
    }

    else
    {
      v15 = v11;
    }
  }

  *(v9 + 48) = v14;
  *(v9 + 56) = v15;

  v16 = v9 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_stepDuration;
  *v16 = a3;
  *(v16 + 8) = a4 & 1;
  return v9;
}

double block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_20CDEBEC8()
{
  result = qword_27C813590;
  if (!qword_27C813590)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C813590);
  }

  return result;
}

void sub_20CDEBF14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20CE13F44();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_20CDEBF68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_20CDEBF14(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_20CDEC044(uint64_t a1)
{
  type metadata accessor for ClassificationHighlightView.Model(319);
  if (v1 <= 0x3F)
  {
    sub_20CDED9DC(319, &qword_27C812408, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20CDEC120(uint64_t a1)
{
  sub_20CE12334();
  if (v1 <= 0x3F)
  {
    sub_20CDEE47C(319, &qword_27C813300, &type metadata for ClassificationHighlightView.Model.Action, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_20CDEC1D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_20CDEC220(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20CDEC28C@<X0>(uint64_t a1@<X8>)
{
  v29[3] = a1;
  sub_20CDED9A8(0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v29 - v5;
  sub_20CDEDF94(0);
  v29[2] = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDEDD04(0, &qword_27C813398, sub_20CDEE10C, sub_20CDEDF94, MEMORY[0x277CE0330]);
  v29[0] = v10;
  MEMORY[0x28223BE20](v10);
  v12 = v29 - v11;
  sub_20CDEE10C(0);
  v29[1] = v13;
  MEMORY[0x28223BE20](v13);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20CE12FA4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ClassificationHighlightView(0);
  sub_20CDB148C(v19);
  v20 = sub_20CD9B320();
  (*(v17 + 8))(v19, v16);
  if (v20)
  {
    *v15 = sub_20CE131C4();
    *(v15 + 1) = 0x402C000000000000;
    v15[16] = 0;
    sub_20CE13B84();
    sub_20CE13B74();
    sub_20CE13B24();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_20CDEE410(0, &qword_27C8133C8, sub_20CDED9A8, MEMORY[0x277CDF7A0], MEMORY[0x277CDF798]);
    sub_20CDEC8A8(&v15[*(v21 + 44)]);

    sub_20CDEE4CC(v15, v12, sub_20CDEE10C);
    swift_storeEnumTagMultiPayload();
    sub_20CDEE0C4(&qword_27C8133B8, sub_20CDEE10C, MEMORY[0x277CE1198]);
    sub_20CDEE0C4(&qword_27C8133C0, sub_20CDEDF94, MEMORY[0x277CE1138]);
    sub_20CE13214();
    v22 = sub_20CDEE10C;
    v23 = v15;
  }

  else
  {
    *v9 = sub_20CE13114();
    *(v9 + 1) = 0x4010000000000000;
    v9[16] = 0;
    sub_20CE13B84();
    sub_20CE13B74();
    sub_20CE13B24();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_20CDEE410(0, &qword_27C8133B0, sub_20CDEE028, MEMORY[0x277CDF740], MEMORY[0x277CDF738]);
    v25 = &v9[*(v24 + 44)];
    sub_20CDEC8A8(v6);
    sub_20CDEE4CC(v6, v4, sub_20CDED9A8);
    sub_20CDEE4CC(v4, v25, sub_20CDED9A8);
    sub_20CDEE05C(0);
    v27 = v25 + *(v26 + 48);
    *v27 = 0;
    *(v27 + 8) = 1;
    sub_20CDEE1A0(v6, sub_20CDED9A8);
    sub_20CDEE1A0(v4, sub_20CDED9A8);

    sub_20CDEE4CC(v9, v12, sub_20CDEDF94);
    swift_storeEnumTagMultiPayload();
    sub_20CDEE0C4(&qword_27C8133B8, sub_20CDEE10C, MEMORY[0x277CE1198]);
    sub_20CDEE0C4(&qword_27C8133C0, sub_20CDEDF94, MEMORY[0x277CE1138]);
    sub_20CE13214();
    v22 = sub_20CDEDF94;
    v23 = v9;
  }

  return sub_20CDEE1A0(v23, v22);
}

uint64_t sub_20CDEC8A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  sub_20CDEDD88(0);
  v31[1] = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDEDCBC(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v31 - v10;
  sub_20CDEDAB0(0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v31 - v16;

  v18 = sub_20CE13544();
  v19 = sub_20CE132B4();
  KeyPath = swift_getKeyPath();
  sub_20CE135F4();
  sub_20CE12F04();
  v21 = sub_20CE134C4();
  v22 = swift_getKeyPath();
  *&v33 = v18;
  *(&v33 + 1) = KeyPath;
  *&v34 = v19;
  *(&v37 + 1) = v22;
  v38 = v21;
  sub_20CDEDAF8(0);
  sub_20CDEE200();
  sub_20CE13484();
  v39[3] = v36;
  v39[4] = v37;
  v40 = v38;
  v39[0] = v33;
  v39[1] = v34;
  v39[2] = v35;
  sub_20CDEE1A0(v39, sub_20CDEDAF8);
  *v5 = sub_20CE131C4();
  *(v5 + 1) = 0;
  v5[16] = 1;
  sub_20CDEE410(0, &qword_27C8133E8, sub_20CDEDE1C, MEMORY[0x277CDF7A0], MEMORY[0x277CDF798]);
  sub_20CDECDCC(v2, &v5[*(v23 + 44)]);
  if (qword_27C811D30 != -1)
  {
    swift_once();
  }

  v25 = qword_27C817868;
  v24 = unk_27C817870;
  v26 = MEMORY[0x277D837D0];
  sub_20CDEE47C(0, &unk_27C813730, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_20CE16360;
  *(v27 + 32) = v25;
  *(v27 + 40) = v24;
  *(v27 + 48) = 0xD000000000000021;
  *(v27 + 56) = 0x800000020CE1FC20;
  *&v33 = v27;
  sub_20CDEE47C(0, &qword_27C8121F0, v26, MEMORY[0x277D83940]);
  sub_20CD81F60();

  sub_20CE138C4();

  sub_20CDEE0C4(&qword_27C8133F0, sub_20CDEDD88, MEMORY[0x277CE1198]);
  sub_20CE134A4();

  sub_20CDEE1A0(v5, sub_20CDEDD88);
  sub_20CDEE4CC(v17, v15, sub_20CDEDAB0);
  sub_20CDEE4CC(v11, v9, sub_20CDEDCBC);
  v28 = v32;
  sub_20CDEE4CC(v15, v32, sub_20CDEDAB0);
  sub_20CDEDA40(0);
  sub_20CDEE4CC(v9, v28 + *(v29 + 48), sub_20CDEDCBC);
  sub_20CDEE1A0(v11, sub_20CDEDCBC);
  sub_20CDEE1A0(v17, sub_20CDEDAB0);
  sub_20CDEE1A0(v9, sub_20CDEDCBC);
  return sub_20CDEE1A0(v15, sub_20CDEDAB0);
}

uint64_t sub_20CDECDCC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v114 = a2;
  sub_20CDEDEF8(0);
  v112 = v3;
  v110 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v91 = (&v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20CDB0CC8(0);
  v90 = v5;
  v89 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v88 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v87 = &v86 - v8;
  sub_20CDEDEC4(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v113 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v111 = &v86 - v12;
  v109 = sub_20CE12334();
  v104 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v103 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20CE12FA4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_20CE13354();
  v117 = *(v105 - 8);
  v18 = MEMORY[0x28223BE20](v105);
  v102 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v86 - v20;
  sub_20CE13B84();
  v108 = sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v22 = *(a1 + 24);
  v118 = *(a1 + 16);
  v119 = v22;
  sub_20CD935CC();

  v23 = sub_20CE13414();
  v101 = v24;
  v26 = v25;
  v93 = v27;
  sub_20CE132C4();
  sub_20CE132E4();
  v115 = a1;

  v100 = *(type metadata accessor for ClassificationHighlightView(0) + 20);
  sub_20CDB148C(v17);
  LOBYTE(v22) = sub_20CD9B320();
  v28 = *(v15 + 8);
  v98 = v15 + 8;
  v99 = v28;
  v28(v17, v14);
  v29 = v117;
  v30 = *(v117 + 104);
  v96 = v30;
  v31 = *MEMORY[0x277CE0A10];
  v95 = *MEMORY[0x277CE0A10];
  v94 = v14;
  v32 = *MEMORY[0x277CE0A18];
  v97 = *MEMORY[0x277CE0A18];
  if (v22)
  {
    v33 = v31;
  }

  else
  {
    v33 = v32;
  }

  v34 = v105;
  v30(v21, v33, v105);
  sub_20CE13374();

  v92 = *(v29 + 8);
  v92(v21, v34);
  v35 = v101;
  v107 = sub_20CE133E4();
  v116 = v36;
  v117 = v37;
  v106 = v38;

  sub_20CD93620(v23, v35, v26 & 1);

  v101 = type metadata accessor for ClassificationHighlightView.Model(0);
  (*(v104 + 16))(v103, v115 + *(v101 + 24), v109);
  v39 = sub_20CE13404();
  v41 = v40;
  v43 = v42;
  sub_20CE132C4();
  sub_20CDB148C(v17);
  v44 = sub_20CD9B320();
  v99(v17, v94);
  if (v44)
  {
    v45 = v95;
  }

  else
  {
    v45 = v97;
  }

  v46 = v102;
  v96(v102, v45, v34);
  sub_20CE13374();

  v92(v46, v34);
  v47 = sub_20CE133E4();
  v49 = v48;
  v51 = v50;

  sub_20CD93620(v39, v41, v43 & 1);

  sub_20CE13514();
  v52 = sub_20CE133B4();
  v104 = v53;
  v105 = v52;
  v55 = v54;
  v109 = v56;

  sub_20CD93620(v47, v49, v51 & 1);

  v57 = (v115 + *(v101 + 28));
  v58 = v57[1];
  if (v58)
  {
    v59 = v57[2];
    v60 = v57[3];
    v61 = *v57;
    v62 = swift_allocObject();
    v62[2] = v61;
    v62[3] = v58;
    v62[4] = v59;
    v62[5] = v60;
    MEMORY[0x28223BE20](v62);
    *(&v86 - 4) = v61;
    *(&v86 - 3) = v58;
    *(&v86 - 2) = v59;
    *(&v86 - 1) = v60;
    sub_20CDEE54C(v61, v58, v59, v60);
    sub_20CDB0C08();
    sub_20CDB0D2C();

    v63 = v87;
    sub_20CE13554();
    LOBYTE(v118) = 0;
    v64 = v89;
    v65 = *(v89 + 16);
    v66 = v55;
    v67 = v88;
    v68 = v90;
    v65(v88, v63, v90);
    v69 = v118;
    v70 = v91;
    *v91 = 0x4010000000000000;
    *(v70 + 8) = v69;
    sub_20CDEDF2C(0);
    v65((v70 + *(v71 + 48)), v67, v68);

    v72 = *(v64 + 8);
    v72(v63, v68);
    v73 = v67;
    v55 = v66;
    v72(v73, v68);
    v74 = v111;
    sub_20CDEE590(v70, v111);
    (*(v110 + 56))(v74, 0, 1, v112);
  }

  else
  {
    v74 = v111;
    (*(v110 + 56))(v111, 1, 1, v112);
  }

  v75 = v106 & 1;
  LOBYTE(v118) = v106 & 1;
  v76 = v113;
  sub_20CDEE4CC(v74, v113, sub_20CDEDEC4);
  v77 = v114;
  v78 = v107;
  v80 = v116;
  v79 = v117;
  *v114 = v107;
  v77[1] = v80;
  *(v77 + 16) = v75;
  v77[3] = v79;
  *(v77 + 16) = 256;
  v82 = v104;
  v81 = v105;
  v77[5] = v105;
  v77[6] = v82;
  *(v77 + 56) = v55 & 1;
  v77[8] = v109;
  *(v77 + 36) = 256;
  sub_20CDEDE50(0);
  sub_20CDEE4CC(v76, v77 + *(v83 + 64), sub_20CDEDEC4);
  v84 = v116;
  sub_20CD93B54(v78, v116, v75);

  sub_20CD93B54(v81, v82, v55 & 1);

  sub_20CDEE1A0(v74, sub_20CDEDEC4);
  sub_20CDEE1A0(v76, sub_20CDEDEC4);
  sub_20CD93620(v81, v82, v55 & 1);

  sub_20CD93620(v78, v84, v118);
}

uint64_t sub_20CDED804(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a3(isCurrentExecutor);
}

uint64_t sub_20CDED8B4@<X0>(uint64_t a3@<X8>)
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20CD935CC();

  v4 = sub_20CE13414();
  v6 = v5;
  v8 = v7;
  v10 = v9;

  *a3 = v4;
  *(a3 + 8) = v6;
  *(a3 + 16) = v8 & 1;
  *(a3 + 24) = v10;
  *(a3 + 32) = 256;
  return result;
}

void sub_20CDED9DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_20CDEDA40(uint64_t a1)
{
  if (!qword_27C813310)
  {
    sub_20CDEDAB0(255);
    sub_20CDEDCBC(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C813310);
    }
  }
}

void sub_20CDEDAF8(uint64_t a1)
{
  if (!qword_27C813320)
  {
    sub_20CDEDB78(255);
    sub_20CDEDC50(255, &qword_27C812FE0, &qword_27C812FE8, MEMORY[0x277CE0F78]);
    v1 = sub_20CE12FD4();
    if (!v2)
    {
      atomic_store(v1, &qword_27C813320);
    }
  }
}

void sub_20CDEDB78(uint64_t a1)
{
  if (!qword_27C813328)
  {
    sub_20CDEDBD8(255);
    v1 = sub_20CE12FD4();
    if (!v2)
    {
      atomic_store(v1, &qword_27C813328);
    }
  }
}

void sub_20CDEDBD8(uint64_t a1)
{
  if (!qword_27C813330)
  {
    sub_20CDEDC50(255, &qword_27C812FF8, &qword_27C813000, MEMORY[0x277CE0AE0]);
    v1 = sub_20CE12FD4();
    if (!v2)
    {
      atomic_store(v1, &qword_27C813330);
    }
  }
}

void sub_20CDEDC50(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_20CDEE47C(255, a3, a4, MEMORY[0x277D83D88]);
    v5 = sub_20CE13254();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_20CDEDD04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_20CDEDD88(uint64_t a1)
{
  if (!qword_27C813340)
  {
    sub_20CDEDE1C(255);
    sub_20CDEE0C4(&qword_27C813370, sub_20CDEDE1C, MEMORY[0x277CE14C0]);
    v1 = sub_20CE13584();
    if (!v2)
    {
      atomic_store(v1, &qword_27C813340);
    }
  }
}

void sub_20CDEDE50(uint64_t a1)
{
  if (!qword_27C813350)
  {
    sub_20CDB0C08();
    sub_20CDEDEC4(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27C813350);
    }
  }
}

void sub_20CDEDF2C(uint64_t a1)
{
  if (!qword_27C813368)
  {
    sub_20CDB0CC8(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C813368);
    }
  }
}

void sub_20CDEDF94(uint64_t a1)
{
  if (!qword_27C813378)
  {
    sub_20CDEE028(255);
    sub_20CDEE0C4(&qword_27C813390, sub_20CDEE028, MEMORY[0x277CE14C0]);
    v1 = sub_20CE13574();
    if (!v2)
    {
      atomic_store(v1, &qword_27C813378);
    }
  }
}

void sub_20CDEE05C(uint64_t a1)
{
  if (!qword_27C813388)
  {
    sub_20CDED9A8(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C813388);
    }
  }
}

uint64_t sub_20CDEE0C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_20CDEE10C(uint64_t a1)
{
  if (!qword_27C8133A0)
  {
    sub_20CDED9A8(255);
    sub_20CDEE0C4(&qword_27C8133A8, sub_20CDED9A8, MEMORY[0x277CE14C0]);
    v1 = sub_20CE13584();
    if (!v2)
    {
      atomic_store(v1, &qword_27C8133A0);
    }
  }
}

uint64_t sub_20CDEE1A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20CDEE200()
{
  result = qword_27C8133D0;
  if (!qword_27C8133D0)
  {
    sub_20CDEDAF8(255);
    sub_20CDEE2A0();
    sub_20CDEE3C0(&qword_27C813028, &qword_27C812FE0, &qword_27C812FE8, MEMORY[0x277CE0F78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8133D0);
  }

  return result;
}

unint64_t sub_20CDEE2A0()
{
  result = qword_27C8133D8;
  if (!qword_27C8133D8)
  {
    sub_20CDEDB78(255);
    sub_20CDEE320();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8133D8);
  }

  return result;
}

unint64_t sub_20CDEE320()
{
  result = qword_27C8133E0;
  if (!qword_27C8133E0)
  {
    sub_20CDEDBD8(255);
    sub_20CDEE3C0(&qword_27C813030, &qword_27C812FF8, &qword_27C813000, MEMORY[0x277CE0AE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8133E0);
  }

  return result;
}

uint64_t sub_20CDEE3C0(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_20CDEDC50(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_20CDEE410(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_20CE12F54();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_20CDEE47C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_20CDEE4CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_20CDEE54C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_20CDEE590(uint64_t a1, uint64_t a2)
{
  sub_20CDEDEF8(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_20CDEE5F4()
{
  result = qword_27C8133F8;
  if (!qword_27C8133F8)
  {
    sub_20CDEDD04(255, &qword_27C813400, sub_20CDEE10C, sub_20CDEDF94, MEMORY[0x277CE0338]);
    sub_20CDEE0C4(&qword_27C8133B8, sub_20CDEE10C, MEMORY[0x277CE1198]);
    sub_20CDEE0C4(&qword_27C8133C0, sub_20CDEDF94, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8133F8);
  }

  return result;
}

uint64_t sub_20CDEE718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  v4 = sub_20CE12354();
  v6 = v5;
  sub_20CE12354();
  v7 = sub_20CE12354();
  v9 = v8;
  *a3 = 0xD000000000000013;
  a3[1] = 0x800000020CE1FCD0;
  a3[2] = v4;
  a3[3] = v6;
  v10 = type metadata accessor for ClassificationHighlightView.Model(0);

  result = sub_20CE122D4();
  v12 = (a3 + *(v10 + 28));
  *v12 = v7;
  v12[1] = v9;
  v12[2] = a1;
  v12[3] = a2;
  return result;
}

uint64_t sub_20CDEE8D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  v5 = sub_20CE12354();
  v7 = v6;
  sub_20CE12354();
  v8 = sub_20CE12354();
  v10 = v9;
  strcpy(a3, "ear.badge.info");
  *(a3 + 15) = -18;
  *(a3 + 16) = v5;
  *(a3 + 24) = v7;
  v11 = type metadata accessor for ClassificationHighlightView.Model(0);

  result = sub_20CE122D4();
  v13 = (a3 + *(v11 + 28));
  *v13 = v8;
  v13[1] = v10;
  v13[2] = a1;
  v13[3] = a2;
  return result;
}

double sub_20CDEEA94()
{
  v0 = type metadata accessor for ClassificationHighlightView.Model(0);
  __swift_allocate_value_buffer(v0, qword_27C817968);
  v1 = __swift_project_value_buffer(v0, qword_27C817968);
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_20CE12354();
  v4 = v3;
  sub_20CE12354();
  *v1 = 0x2E73646F70726961;
  v1[1] = 0xEB000000006F7270;
  v1[2] = v2;
  v1[3] = v4;
  sub_20CE122D4();
  v5 = (v1 + *(v0 + 28));
  result = 0.0;
  *v5 = 0u;
  v5[1] = 0u;
  return result;
}

double sub_20CDEEC00()
{
  v0 = type metadata accessor for ClassificationHighlightView.Model(0);
  __swift_allocate_value_buffer(v0, qword_27C817980);
  v1 = __swift_project_value_buffer(v0, qword_27C817980);
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_20CE12354();
  v4 = v3;
  sub_20CE12354();
  *v1 = 0x6D726F6665766177;
  v1[1] = 0xE800000000000000;
  v1[2] = v2;
  v1[3] = v4;
  sub_20CE122D4();
  v5 = (v1 + *(v0 + 28));
  result = 0.0;
  *v5 = 0u;
  v5[1] = 0u;
  return result;
}

double sub_20CDEED64()
{
  v0 = type metadata accessor for ClassificationHighlightView.Model(0);
  __swift_allocate_value_buffer(v0, qword_27C817998);
  v1 = __swift_project_value_buffer(v0, qword_27C817998);
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_20CE12354();
  v4 = v3;
  sub_20CE12354();
  *v1 = 0xD000000000000011;
  v1[1] = 0x800000020CE1FE20;
  v1[2] = v2;
  v1[3] = v4;
  sub_20CE122D4();
  v5 = (v1 + *(v0 + 28));
  result = 0.0;
  *v5 = 0u;
  v5[1] = 0u;
  return result;
}

double sub_20CDEEED0()
{
  v0 = type metadata accessor for ClassificationHighlightView.Model(0);
  __swift_allocate_value_buffer(v0, qword_27C8179B0);
  v1 = __swift_project_value_buffer(v0, qword_27C8179B0);
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_20CE12354();
  v4 = v3;
  sub_20CE12354();
  strcpy(v1, "person.bubble");
  *(v1 + 14) = -4864;
  *(v1 + 16) = v2;
  *(v1 + 24) = v4;
  sub_20CE122D4();
  v5 = (v1 + *(v0 + 28));
  result = 0.0;
  *v5 = 0u;
  v5[1] = 0u;
  return result;
}

double sub_20CDEF040()
{
  v0 = type metadata accessor for ClassificationHighlightView.Model(0);
  __swift_allocate_value_buffer(v0, qword_27C8179C8);
  v1 = __swift_project_value_buffer(v0, qword_27C8179C8);
  return sub_20CDEF08C(v1);
}

double sub_20CDEF08C@<D0>(char *a1@<X8>)
{
  v54 = a1;
  v1 = sub_20CE12374();
  MEMORY[0x28223BE20](v1 - 8);
  v44[1] = v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20CE12334();
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x28223BE20](v3);
  v53 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20CE122E4();
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x28223BE20](v5);
  v47 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_20CE122F4();
  v7 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v46 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20CE12314();
  MEMORY[0x28223BE20](v9 - 8);
  sub_20CDEF894(0, &qword_27C812600, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v44 - v11;
  sub_20CDEF894(0, &qword_27C813408, MEMORY[0x277CC8C40]);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v52 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v44 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = v44 - v19;
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  v21 = sub_20CE12354();
  v50 = v22;
  v51 = v21;
  v23 = sub_20CE12354();
  v25 = v24;
  v26 = sub_20CE12474();
  (*(*(v26 - 8) + 56))(v12, 1, 1, v26);
  (*(v7 + 104))(v46, *MEMORY[0x277CC8BB0], v45);
  (*(v48 + 104))(v47, *MEMORY[0x277CC8B98], v49);

  sub_20CE12304();
  v49 = v23;
  sub_20CE12324();
  v28 = v55;
  v27 = v56;
  (*(v55 + 56))(v20, 0, 1, v56);
  sub_20CDEF8E8(v20, v18);
  v29 = *(v28 + 48);
  if (v29(v18, 1, v27) == 1)
  {
    sub_20CDEF968(v18);
    if (qword_27C811D28 != -1)
    {
      swift_once();
    }

    v30 = sub_20CE12CB4();
    __swift_project_value_buffer(v30, qword_27C8177E0);

    v31 = sub_20CE12C94();
    v32 = sub_20CE13CC4();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v57[0] = v34;
      *v33 = 136446722;
      *(v33 + 4) = sub_20CD96DCC(0x6C65646F4DLL, 0xE500000000000000, v57);
      *(v33 + 12) = 2080;
      *(v33 + 14) = sub_20CD96DCC(0x6C65646F4DLL, 0xE500000000000000, v57);
      *(v33 + 22) = 2080;
      v28 = v55;
      v35 = sub_20CD96DCC(v49, v25, v57);

      *(v33 + 24) = v35;
      v27 = v56;
      _os_log_impl(&dword_20CD70000, v31, v32, "[%{public}s] %s Could not construct AttributedString from %s.", v33, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F314110](v34, -1, -1);
      MEMORY[0x20F314110](v33, -1, -1);
    }

    else
    {
    }
  }

  else
  {

    sub_20CDEF968(v18);
  }

  v36 = v52;
  sub_20CDEF8E8(v20, v52);
  v37 = v29(v36, 1, v27);
  v38 = v53;
  if (v37 == 1)
  {
    sub_20CE12364();
    sub_20CE12344();
    sub_20CDEF968(v20);
    if (v29(v36, 1, v27) != 1)
    {
      sub_20CDEF968(v36);
    }
  }

  else
  {
    sub_20CDEF968(v20);
    (*(v28 + 32))(v38, v36, v27);
  }

  v39 = v54;
  *v54 = 0xD000000000000015;
  *(v39 + 1) = 0x800000020CE1FF20;
  v40 = v50;
  *(v39 + 2) = v51;
  *(v39 + 3) = v40;
  v41 = type metadata accessor for ClassificationHighlightView.Model(0);
  (*(v28 + 32))(&v39[*(v41 + 24)], v38, v27);
  v42 = &v39[*(v41 + 28)];
  result = 0.0;
  *v42 = 0u;
  *(v42 + 1) = 0u;
  return result;
}

void sub_20CDEF894(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20CE13F44();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_20CDEF8E8(uint64_t a1, uint64_t a2)
{
  sub_20CDEF894(0, &qword_27C813408, MEMORY[0x277CC8C40]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CDEF968(uint64_t a1)
{
  sub_20CDEF894(0, &qword_27C813408, MEMORY[0x277CC8C40]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20CDEF9E0()
{
  v1 = v0;
  v2 = sub_20CE129C4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PreTestError(0);
  MEMORY[0x28223BE20](v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDCB46C(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v3 + 32))(v5, v8, v2);
      v17[0] = 0;
      v17[1] = 0xE000000000000000;
      sub_20CE140E4();

      strcpy(v17, "deviceFault - ");
      HIBYTE(v17[1]) = -18;
      v12 = HTFaultStatusWithReason.debugDescription.getter();
      MEMORY[0x20F312EF0](v12);

      v13 = v17[0];
      (*(v3 + 8))(v5, v2);
      return v13;
    }

    else
    {
      return 0xD000000000000015;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v15 = *v8;
      v17[0] = 0;
      v17[1] = 0xE000000000000000;
      sub_20CE140E4();

      v17[0] = 0xD000000000000011;
      v17[1] = 0x800000020CE20000;
      v16 = sub_20CDA3584(v15);
      MEMORY[0x20F312EF0](v16);
    }

    else
    {
      v10 = *v8;
      v11 = *(v8 + 1);
      v17[0] = 0;
      v17[1] = 0xE000000000000000;
      sub_20CE140E4();

      v17[0] = 0xD000000000000015;
      v17[1] = 0x800000020CE20020;
      MEMORY[0x20F312EF0](v10, v11);
    }

    return v17[0];
  }
}

uint64_t type metadata accessor for PreTestError(uint64_t a1)
{
  result = qword_27C813410;
  if (!qword_27C813410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20CDEFD10(uint64_t a1)
{
  result = sub_20CDEFD8C();
  if (v2 <= 0x3F)
  {
    result = sub_20CE129C4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_20CDEFD8C()
{
  result = qword_27C813420;
  if (!qword_27C813420)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27C813420);
  }

  return result;
}

uint64_t sub_20CDEFDC0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    if (a4)
    {
LABEL_3:
      v8 = qword_27C811D08;

      if (v8 != -1)
      {
        swift_once();
      }

      v9 = sub_20CE12CB4();
      __swift_project_value_buffer(v9, qword_27C817780);

      v10 = sub_20CE12C94();
      v11 = sub_20CE13CD4();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v27 = v13;
        *v12 = 136446722;
        *(v12 + 4) = sub_20CD96DCC(0xD00000000000001DLL, 0x800000020CE20060, &v27);
        *(v12 + 12) = 2080;
        *(v12 + 14) = sub_20CD96DCC(0xD000000000000057, 0x800000020CE200C0, &v27);
        *(v12 + 22) = 2080;
        *(v12 + 24) = sub_20CD96DCC(a3, a4, &v27);
        _os_log_impl(&dword_20CD70000, v10, v11, "[%{public}s] %s Received device address: %s.", v12, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x20F314110](v13, -1, -1);
        MEMORY[0x20F314110](v12, -1, -1);
      }

      goto LABEL_7;
    }
  }

  else
  {
    if (qword_27C811D08 != -1)
    {
      swift_once();
    }

    v14 = sub_20CE12CB4();
    __swift_project_value_buffer(v14, qword_27C817780);
    v15 = sub_20CE12C94();
    v16 = sub_20CE13CB4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v27 = v18;
      *v17 = 136446466;
      *(v17 + 4) = sub_20CD96DCC(0xD00000000000001DLL, 0x800000020CE20060, &v27);
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_20CD96DCC(0xD000000000000057, 0x800000020CE200C0, &v27);
      _os_log_impl(&dword_20CD70000, v15, v16, "[%{public}s] %s Received a nil name. Using empty string.", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F314110](v18, -1, -1);
      MEMORY[0x20F314110](v17, -1, -1);
    }

    if (a4)
    {
      goto LABEL_3;
    }
  }

  v19 = qword_27C811D08;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = sub_20CE12CB4();
  __swift_project_value_buffer(v20, qword_27C817780);
  v10 = sub_20CE12C94();
  v21 = sub_20CE13CB4();
  if (os_log_type_enabled(v10, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v27 = v23;
    *v22 = 136446466;
    *(v22 + 4) = sub_20CD96DCC(0xD00000000000001DLL, 0x800000020CE20060, &v27);
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_20CD96DCC(0xD000000000000057, 0x800000020CE200C0, &v27);
    _os_log_impl(&dword_20CD70000, v10, v21, "[%{public}s] %s Received a nil address. Using empty string.", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v23, -1, -1);
    MEMORY[0x20F314110](v22, -1, -1);
  }

LABEL_7:

  v24 = sub_20CE12B54();

  return v24;
}

uint64_t sub_20CDF02C0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_20CE129C4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17, a1, v14);
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == *MEMORY[0x277D12D38] || v18 == *MEMORY[0x277D12D48])
  {
    return MEMORY[0x20F312050]();
  }

  if (v18 == *MEMORY[0x277D12D50])
  {
    v21 = a2;
    v22 = a3;
    v23 = a4;
    v24 = a5;
    v25 = 0;
    return sub_20CDEFDC0(v21, v22, v23, v24, v25, a6, a7);
  }

  if (v18 != *MEMORY[0x277D12D58] && v18 != *MEMORY[0x277D12D60] && v18 != *MEMORY[0x277D12D68] && v18 != *MEMORY[0x277D12D70])
  {
    if (v18 == *MEMORY[0x277D12D40])
    {
      v21 = a2;
      v22 = a3;
      v23 = a4;
      v24 = a5;
      v25 = 1;
      return sub_20CDEFDC0(v21, v22, v23, v24, v25, a6, a7);
    }

    if (qword_27C811D08 != -1)
    {
      swift_once();
    }

    v29 = sub_20CE12CB4();
    __swift_project_value_buffer(v29, qword_27C817780);
    v30 = sub_20CE12C94();
    v31 = sub_20CE13CB4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v35 = v33;
      *v32 = 136446466;
      *(v32 + 4) = sub_20CD96DCC(0xD00000000000001DLL, 0x800000020CE20060, &v35);
      *(v32 + 12) = 2080;
      *(v32 + 14) = sub_20CD96DCC(0xD00000000000003DLL, 0x800000020CE20080, &v35);
      _os_log_impl(&dword_20CD70000, v30, v31, "[%{public}s] %s Unhandled case of HTFaultStatusWithReason. Returning nil.", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F314110](v33, -1, -1);
      MEMORY[0x20F314110](v32, -1, -1);
    }

    (*(v15 + 8))(v17, v14);
  }

  return 0;
}

uint64_t sub_20CDF0610(uint64_t a1, uint64_t *a2)
{
  sub_20CDF61A8(0, &qword_281111770, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_20CD7DC78(a1, &v10 - v5);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_stepStartTime;
  swift_beginAccess();
  sub_20CD83094(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t sub_20CDF06F4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_stepStartTime;
  swift_beginAccess();
  return sub_20CD7DC78(v1 + v3, a1);
}

id HTUIResultsViewController.__allocating_init(audiogram:healthStore:isHearingAssistAvailable:application:deviceBluetoothUUID:)(void *a1, void *a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  objc_allocWithZone(v6);
  swift_unknownObjectWeakInit();
  v31 = a4;
  swift_unknownObjectWeakAssign();
  v34[3] = &type metadata for URLBasedArticlePresenter;
  v34[4] = &off_2823BCF30;
  v34[0] = swift_allocObject();
  sub_20CDF0F6C(v35, v34[0] + 16);
  v10 = type metadata accessor for HTUIResultsViewController(0);
  v11 = objc_allocWithZone(v10);
  v12 = OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_stepStartTime;
  v13 = sub_20CE124E4();
  (*(*(v13 - 8) + 56))(&v11[v12], 1, 1, v13);
  v14 = OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_hmServiceClient;
  type metadata accessor for HMServiceClientWrapper();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D84F90];
  sub_20CDF54B4(MEMORY[0x277D84F90]);
  sub_20CDF5D74(0, &qword_27C8131A8, MEMORY[0x277CBCE30]);
  swift_allocObject();
  v15[2] = sub_20CE12E14();
  v33 = sub_20CDF54B4(v16);
  swift_allocObject();
  v15[3] = sub_20CE12E14();
  v15[4] = 0;
  sub_20CDB17AC();
  *&v11[v14] = v15;
  *&v11[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_deviceManager] = 0;
  *&v11[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_primaryButton] = 0;
  *&v11[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_secondaryButton] = 0;
  v17 = &v11[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_viewModel];
  *v17 = 0;
  v17[1] = 0;
  *&v11[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_cancellables] = MEMORY[0x277D84FA0];
  *&v11[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_audiogram] = a1;
  v18 = a1;
  sub_20CD86178(v18, &v33);
  v11[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_recommendation] = v33;
  *&v11[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_healthStore] = a2;
  v11[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_isHearingAssistAvailable] = a3;
  v19 = &v11[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_deviceBluetoothUUID];
  *v19 = a5;
  v19[1] = a6;
  sub_20CD7C388(v34, &v11[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_articlePresenter]);
  v20 = &v11[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_analyticsManager];
  *v20 = 0;
  v20[1] = 0;
  v21 = qword_27C811DC8;
  v22 = a2;

  if (v21 != -1)
  {
    swift_once();
  }

  sub_20CE12354();
  v23 = sub_20CE13914();

  v24 = sub_20CE13914();
  v32.receiver = v11;
  v32.super_class = v10;
  v25 = objc_msgSendSuper2(&v32, sel_initWithTitle_detailText_icon_contentLayout_, v23, v24, 0, 3, 0xE000000000000000);

  v26 = v25;
  sub_20CDF1F0C(0, 0);

  sub_20CDF55C0(v35);
  __swift_destroy_boxed_opaque_existential_1Tm(v34);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v26;
}

id HTUIResultsViewController.init(audiogram:healthStore:isHearingAssistAvailable:application:deviceBluetoothUUID:)(void *a1, void *a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  swift_unknownObjectWeakInit();
  v30 = a4;
  swift_unknownObjectWeakAssign();
  v33[3] = &type metadata for URLBasedArticlePresenter;
  v33[4] = &off_2823BCF30;
  v33[0] = swift_allocObject();
  sub_20CDF0F6C(v34, v33[0] + 16);
  v9 = type metadata accessor for HTUIResultsViewController(0);
  v10 = objc_allocWithZone(v9);
  v11 = OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_stepStartTime;
  v12 = sub_20CE124E4();
  (*(*(v12 - 8) + 56))(&v10[v11], 1, 1, v12);
  v13 = OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_hmServiceClient;
  type metadata accessor for HMServiceClientWrapper();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D84F90];
  sub_20CDF54B4(MEMORY[0x277D84F90]);
  sub_20CDF5D74(0, &qword_27C8131A8, MEMORY[0x277CBCE30]);
  swift_allocObject();
  v14[2] = sub_20CE12E14();
  v32 = sub_20CDF54B4(v15);
  swift_allocObject();
  v14[3] = sub_20CE12E14();
  v14[4] = 0;
  sub_20CDB17AC();
  *&v10[v13] = v14;
  *&v10[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_deviceManager] = 0;
  *&v10[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_primaryButton] = 0;
  *&v10[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_secondaryButton] = 0;
  v16 = &v10[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_viewModel];
  *v16 = 0;
  v16[1] = 0;
  *&v10[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_cancellables] = MEMORY[0x277D84FA0];
  *&v10[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_audiogram] = a1;
  v17 = a1;
  sub_20CD86178(v17, &v32);
  v10[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_recommendation] = v32;
  *&v10[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_healthStore] = a2;
  v10[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_isHearingAssistAvailable] = a3;
  v18 = &v10[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_deviceBluetoothUUID];
  *v18 = a5;
  v18[1] = a6;
  sub_20CD7C388(v33, &v10[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_articlePresenter]);
  v19 = &v10[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_analyticsManager];
  *v19 = 0;
  v19[1] = 0;
  v20 = qword_27C811DC8;
  v21 = a2;

  if (v20 != -1)
  {
    swift_once();
  }

  sub_20CE12354();
  v22 = sub_20CE13914();

  v23 = sub_20CE13914();
  v31.receiver = v10;
  v31.super_class = v9;
  v24 = objc_msgSendSuper2(&v31, sel_initWithTitle_detailText_icon_contentLayout_, v22, v23, 0, 3, 0xE000000000000000);

  v25 = v24;
  sub_20CDF1F0C(0, 0);

  sub_20CDF55C0(v34);
  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v25;
}

uint64_t type metadata accessor for HTUIResultsViewController(uint64_t a1)
{
  result = qword_27C813498;
  if (!qword_27C813498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20CDF1140(uint64_t a1)
{
  v1 = (*(a1 + 16))();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_20CE13954();

  return v3;
}

char *HTUIResultsViewController.__allocating_init(audiogram:healthStore:isHearingAssistAvailable:articleProvider:analyticsManager:)(void *a1, void *a2, char a3, void *a4, uint64_t a5)
{
  v8 = a1;
  v9 = a2;
  v43[3] = &type metadata for ControllerBasedArticlePresenter;
  v43[4] = &off_2823BC0D0;
  v43[0] = [a4 hearingLossArticleViewController];
  v10 = type metadata accessor for HTUIResultsViewController(0);
  v11 = objc_allocWithZone(v10);
  v12 = OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_stepStartTime;
  v13 = sub_20CE124E4();
  (*(*(v13 - 8) + 56))(&v11[v12], 1, 1, v13);
  v14 = OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_hmServiceClient;
  type metadata accessor for HMServiceClientWrapper();
  v15 = swift_allocObject();
  v39 = v43[0];
  v16 = MEMORY[0x277D84F90];
  sub_20CDF54B4(MEMORY[0x277D84F90]);
  sub_20CDF5D74(0, &qword_27C8131A8, MEMORY[0x277CBCE30]);
  swift_allocObject();
  v15[2] = sub_20CE12E14();
  v42 = sub_20CDF54B4(v16);
  swift_allocObject();
  v15[3] = sub_20CE12E14();
  v15[4] = 0;
  sub_20CDB17AC();
  *&v11[v14] = v15;
  *&v11[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_deviceManager] = 0;
  *&v11[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_primaryButton] = 0;
  *&v11[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_secondaryButton] = 0;
  v17 = &v11[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_viewModel];
  *v17 = 0;
  v17[1] = 0;
  *&v11[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_cancellables] = MEMORY[0x277D84FA0];
  *&v11[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_audiogram] = v8;
  v18 = v8;
  sub_20CD86178(v18, &v42);
  v11[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_recommendation] = v42;
  *&v11[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_healthStore] = v9;
  v11[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_isHearingAssistAvailable] = a3;
  v19 = &v11[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_deviceBluetoothUUID];
  *v19 = sub_20CDF16AC;
  v19[1] = 0;
  sub_20CD7C388(v43, &v11[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_articlePresenter]);
  v20 = &v11[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_analyticsManager];
  *v20 = 0;
  v20[1] = 0;
  v21 = qword_27C811DC8;
  v22 = v9;
  if (v21 != -1)
  {
    swift_once();
  }

  sub_20CE12354();
  v23 = sub_20CE13914();

  v24 = sub_20CE13914();
  v41.receiver = v11;
  v41.super_class = v10;
  v25 = objc_msgSendSuper2(&v41, sel_initWithTitle_detailText_icon_contentLayout_, v23, v24, 0, 3, 0xE000000000000000);

  v26 = v25;
  sub_20CDF1F0C(0, 0);

  __swift_destroy_boxed_opaque_existential_1Tm(v43);
  v43[0] = v10;
  sub_20CDF5B70(0, &qword_27C813490, type metadata accessor for HTUIResultsViewController);
  v27 = v26;
  v28 = sub_20CE13974();
  v30 = v29;
  sub_20CE12A34();
  swift_allocObject();
  v31 = sub_20CE12A44();
  v32 = objc_allocWithZone(MEMORY[0x277CCD090]);

  v33 = [v32 init];
  type metadata accessor for HearingTestDeviceManager();
  swift_allocObject();
  v34 = sub_20CDFA58C(v31, v33, v28, v30);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  *&v27[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_deviceManager] = v34;

  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = swift_allocObject();
  *(v36 + 16) = v35;
  *(v36 + 24) = v40;
  v37 = &v27[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_deviceBluetoothUUID];
  *v37 = sub_20CDF58BC;
  v37[1] = v36;

  return v27;
}

char *sub_20CDF16B8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *&result[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_deviceManager];
    v3 = result;

    if (v2)
    {
      v4 = *(v2 + 16);
      v5 = *(v2 + 24);
      sub_20CD996F0(v4, *(v2 + 24));

      if (v5 > 0x3F)
      {
        sub_20CD99704(v4, v5);
      }

      else
      {
        v6 = [v4 identifier];
        sub_20CD99704(v4, v5);
        if (v6)
        {
          v7 = sub_20CE13954();

          return v7;
        }
      }
    }

    return 0;
  }

  return result;
}