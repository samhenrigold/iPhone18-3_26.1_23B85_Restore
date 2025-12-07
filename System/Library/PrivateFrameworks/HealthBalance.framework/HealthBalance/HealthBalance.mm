Swift::Void __swiftcall SleepingSampleAnalysisFeatureStatusManager.startObserving()()
{
  v1 = v0;
  swift_getObjectType();
  v2 = *(v0 + OBJC_IVAR____TtC13HealthBalance42SleepingSampleAnalysisFeatureStatusManager_lockedState);
  v3 = v2 + *(*v2 + *MEMORY[0x1E69E6B68] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v2 + v4));
  v5 = *(type metadata accessor for SleepingSampleAnalysisFeatureStatusManager.State(0) + 20);
  if (*(v3 + v5))
  {
    os_unfair_lock_unlock((v2 + v4));
    if (qword_1EDC32570 != -1)
    {
      swift_once();
    }

    v6 = sub_1CFE30624();
    __swift_project_value_buffer(v6, qword_1EDC32578);
    v38 = sub_1CFE30604();
    v7 = sub_1CFE30C04();
    if (os_log_type_enabled(v38, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v39 = v9;
      *v8 = 136446210;
      v10 = sub_1CFE31294();
      v12 = sub_1CFDAAF6C(v10, v11, &v39);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1CFDA3000, v38, v7, "[%{public}s] Already observing", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x1D3876FF0](v9, -1, -1);
      MEMORY[0x1D3876FF0](v8, -1, -1);
    }

    else
    {
    }

    return;
  }

  *(v3 + v5) = 1;
  os_unfair_lock_unlock((v2 + v4));
  if (qword_1EDC32570 != -1)
  {
    swift_once();
  }

  v13 = sub_1CFE30624();
  __swift_project_value_buffer(v13, qword_1EDC32578);
  v14 = sub_1CFE30604();
  v15 = sub_1CFE30C04();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v39 = v17;
    *v16 = 136446210;
    v18 = sub_1CFE31294();
    v20 = sub_1CFDAAF6C(v18, v19, &v39);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_1CFDA3000, v14, v15, "[%{public}s] Beginning observation", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x1D3876FF0](v17, -1, -1);
    MEMORY[0x1D3876FF0](v16, -1, -1);
  }

  v21 = sub_1CFDA5DE4();
  v22 = v21;
  if (v21 >> 62)
  {
    v23 = sub_1CFE30EE4();
    if (v23)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23)
    {
LABEL_12:
      if (v23 < 1)
      {
        __break(1u);
        return;
      }

      v24 = 0;
      v25 = *(v1 + OBJC_IVAR____TtC13HealthBalance42SleepingSampleAnalysisFeatureStatusManager_observationQueue);
      do
      {
        if ((v22 & 0xC000000000000001) != 0)
        {
          v26 = MEMORY[0x1D3876480](v24, v22);
        }

        else
        {
          v26 = *(v22 + 8 * v24 + 32);
          swift_unknownObjectRetain();
        }

        ++v24;
        [v26 registerObserver:v1 queue:v25];
        swift_unknownObjectRelease();
      }

      while (v23 != v24);
    }
  }

  MEMORY[0x1EEE9AC00](v27, v28);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath, v30);
  v39 = v1;
  sub_1CFDA5A24(&qword_1EDC318F8, type metadata accessor for SleepingSampleAnalysisFeatureStatusManager, &protocol conformance descriptor for SleepingSampleAnalysisFeatureStatusManager);
  sub_1CFE304F4();

  v31 = sub_1CFE30604();
  v32 = sub_1CFE30C04();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v39 = v34;
    *v33 = 136446210;
    v35 = sub_1CFE31294();
    v37 = sub_1CFDAAF6C(v35, v36, &v39);

    *(v33 + 4) = v37;
    _os_log_impl(&dword_1CFDA3000, v31, v32, "[%{public}s] Retrieved initial feature status", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x1D3876FF0](v34, -1, -1);
    MEMORY[0x1D3876FF0](v33, -1, -1);
  }
}

uint64_t sub_1CFDA4F74(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for SleepingSampleAnalysisFeatureStatus(uint64_t a1)
{
  result = qword_1EDC325F8;
  if (!qword_1EDC325F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFDA4FF8(uint64_t a1)
{
  sub_1CFE30924();
  sub_1CFE31144();
  sub_1CFE30984();
  v1 = sub_1CFE31184();

  return v1;
}

uint64_t sub_1CFDA506C(void *a1, uint64_t *a2)
{
  v2 = sub_1CFE30924();
  v4 = v3;
  if (v2 == sub_1CFE30924() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1CFE310B4();
  }

  return v7 & 1;
}

uint64_t SleepingSampleAnalysisFeatureStatusManager.currentStatus()()
{
  v31[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1CFDA5CF8(MEMORY[0x1E69E7CC0], &unk_1EDC317D8, &qword_1EDC32528, 0x1E696C170);
  v1 = sub_1CFDA5DE4();
  v2 = v1;
  if (v1 >> 62)
  {
LABEL_29:
    v3 = sub_1CFE30EE4();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v29 = v2 & 0xFFFFFFFFFFFFFF8;
      v30 = v2 & 0xC000000000000001;
      v27 = v3;
      v28 = v2;
      do
      {
        if (v30)
        {
          v7 = MEMORY[0x1D3876480](v4, v2);
          v8 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (v4 >= *(v29 + 16))
          {
            goto LABEL_26;
          }

          v7 = *(v2 + 8 * v4 + 32);
          swift_unknownObjectRetain();
          v8 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }
        }

        v31[0] = 0;
        v9 = [v7 featureStatusWithError_];
        if (!v9)
        {
          v25 = v31[0];

          sub_1CFE30184();

          swift_willThrow();
          return swift_unknownObjectRelease();
        }

        v10 = v9;
        v11 = v31[0];
        v12 = [v7 featureIdentifier];
        v2 = v10;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31[0] = v0;
        v15 = sub_1CFDA54DC(v12);
        v16 = v0[2];
        v17 = (v14 & 1) == 0;
        v18 = v16 + v17;
        if (__OFADD__(v16, v17))
        {
          goto LABEL_27;
        }

        v19 = v14;
        if (v0[3] >= v18)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v0 = v31[0];
            if (v14)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_1CFDFCCA0();
            v0 = v31[0];
            if (v19)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_1CFDA5674(v18, isUniquelyReferenced_nonNull_native);
          v20 = sub_1CFDA54DC(v12);
          if ((v19 & 1) != (v21 & 1))
          {
            type metadata accessor for HKFeatureIdentifier(0);
            result = sub_1CFE310F4();
            __break(1u);
            return result;
          }

          v15 = v20;
          v0 = v31[0];
          if (v19)
          {
LABEL_4:
            v5 = v0[7];
            v6 = *(v5 + 8 * v15);
            *(v5 + 8 * v15) = v2;

            swift_unknownObjectRelease();
            goto LABEL_5;
          }
        }

        v0[(v15 >> 6) + 8] |= 1 << v15;
        *(v0[6] + 8 * v15) = v12;
        *(v0[7] + 8 * v15) = v2;

        swift_unknownObjectRelease();
        v22 = v0[2];
        v23 = __OFADD__(v22, 1);
        v24 = v22 + 1;
        if (v23)
        {
          goto LABEL_28;
        }

        v0[2] = v24;
LABEL_5:
        ++v4;
        v2 = v28;
      }

      while (v8 != v27);
    }
  }

  type metadata accessor for HKFeatureIdentifier(0);
  sub_1CFDA6E64(0, &qword_1EDC32528, 0x1E696C170);
  sub_1CFDA5A24(&qword_1EDC32500, type metadata accessor for HKFeatureIdentifier, MEMORY[0x1E696B458]);
  sub_1CFDA5A24(&unk_1EDC32518, type metadata accessor for HKFeatureIdentifier, MEMORY[0x1E696B450]);
  sub_1CFDA5A24(&qword_1EDC32510, type metadata accessor for HKFeatureIdentifier, &unk_1CFE322F8);
  return sub_1CFE30724();
}

unint64_t sub_1CFDA54DC(uint64_t a1)
{
  sub_1CFE30924();
  sub_1CFE31144();
  sub_1CFE30984();
  v2 = sub_1CFE31184();

  return sub_1CFDA5570(a1, v2);
}

unint64_t sub_1CFDA5570(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1CFE30924();
      v8 = v7;
      if (v6 == sub_1CFE30924() && v8 == v9)
      {
        break;
      }

      v11 = sub_1CFE310B4();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_1CFDA5674(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1CFDA5944(0, &unk_1EDC317D8, &qword_1EDC32528, 0x1E696C170);
  v36 = v4;
  result = sub_1CFE30F04();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v37 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v36 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      sub_1CFE30924();
      sub_1CFE31144();
      sub_1CFE30984();
      v25 = sub_1CFE31184();

      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v35;
      v12 = v37;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_1CFDA5944(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    type metadata accessor for HKFeatureIdentifier(255);
    sub_1CFDA6E64(255, a3, a4);
    sub_1CFDA5A24(&qword_1EDC32510, type metadata accessor for HKFeatureIdentifier, &unk_1CFE322F8);
    v7 = sub_1CFE30F24();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1CFDA5A24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1CFDA5AD0(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC13HealthBalance42SleepingSampleAnalysisFeatureStatusManager_lockedState);
  v2 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v2));
  sub_1CFDA5AA8();
  os_unfair_lock_unlock((v1 + v2));
}

uint64_t sub_1CFDA5B8C(uint64_t a1)
{
  sub_1CFDA5C94(0, qword_1EDC31C98, type metadata accessor for SleepingSampleAnalysisFeatureStatus, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v9 - v5;
  result = SleepingSampleAnalysisFeatureStatusManager.currentStatus()();
  if (!v1)
  {
    v8 = type metadata accessor for SleepingSampleAnalysisFeatureStatus(0);
    (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
    return sub_1CFDFDD60(v6, a1);
  }

  return result;
}

void sub_1CFDA5C94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1CFDA5CF8(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_1CFDA5944(0, a2, a3, a4);
    v6 = sub_1CFE30F14();

    for (i = (a1 + 40); ; i += 2)
    {
      v8 = *i;
      v9 = *(i - 1);
      v10 = v8;
      result = sub_1CFDA54DC(v9);
      if (v12)
      {
        break;
      }

      *(v6 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v6[6] + 8 * result) = v9;
      *(v6[7] + 8 * result) = v10;
      v13 = v6[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v6[2] = v15;
      if (!--v4)
      {

        return v6;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1CFDA5DE4()
{
  v1 = *MEMORY[0x1E696B8B8];
  v2 = *MEMORY[0x1E696B8B0];
  v3 = *MEMORY[0x1E696B8C8];
  v4 = *MEMORY[0x1E696B8A8];
  v5 = *(v0 + OBJC_IVAR____TtC13HealthBalance42SleepingSampleAnalysisFeatureStatusManager_featureStatusProviderForFeatureIdentifier);
  v17 = MEMORY[0x1E69E7CC0];
  v6 = *MEMORY[0x1E696B8C0];
  v7 = v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  sub_1CFE30E54();
  v11 = v6;
  v5();

  sub_1CFE30E24();
  sub_1CFE30E64();
  sub_1CFE30E74();
  sub_1CFE30E34();
  v12 = v7;
  v5();

  sub_1CFE30E24();
  sub_1CFE30E64();
  sub_1CFE30E74();
  sub_1CFE30E34();
  v13 = v8;
  v5();

  sub_1CFE30E24();
  sub_1CFE30E64();
  sub_1CFE30E74();
  sub_1CFE30E34();
  v14 = v9;
  v5();

  sub_1CFE30E24();
  sub_1CFE30E64();
  sub_1CFE30E74();
  sub_1CFE30E34();
  v15 = v10;
  v5();

  sub_1CFE30E24();
  sub_1CFE30E64();
  sub_1CFE30E74();
  sub_1CFE30E34();

  return v17;
}

uint64_t sub_1CFDA6068(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

uint64_t static Logger.balance.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDC32570 != -1)
  {
    swift_once();
  }

  v2 = sub_1CFE30624();
  v3 = __swift_project_value_buffer(v2, qword_1EDC32578);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1CFDA6188(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1CFDB6C90(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1CFDA6208(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1CFDA631C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1CFDA6288@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_1CFDA6208(v4 + v8, a4, a2, a3);
}

void sub_1CFDA631C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t GregorianDayRange.init(dayIndexRange:gregorianCalendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1CFDA6444(a1, a3, sub_1CFDA68BC);
  v5 = *(type metadata accessor for GregorianDayRange(0) + 20);
  v6 = sub_1CFE304B4();
  v7 = *(*(v6 - 8) + 32);

  return v7(a3 + v5, a2, v6);
}

uint64_t sub_1CFDA6444(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t SleepingSampleQueryRange.init(morningIndexRange:baselineWindowDays:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1CFDA6634(a1, a3, type metadata accessor for GregorianDayRange);
  result = type metadata accessor for SleepingSampleQueryRange(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_1CFDA64FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFDA6564(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFDA65CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFDA6634(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for SleepingSampleQueryRange(uint64_t a1)
{
  result = qword_1EDC31DD8;
  if (!qword_1EDC31DD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFDA66E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFDA6750(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFDA67B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFDA6820(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1CFDA68BC(uint64_t a1)
{
  if (!qword_1EDC32CA0)
  {
    sub_1CFE307E4();
    sub_1CFDC53F4(&qword_1EDC32CA8, MEMORY[0x1E696B418], MEMORY[0x1E696B430]);
    v1 = sub_1CFE30894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC32CA0);
    }
  }
}

uint64_t type metadata accessor for GregorianDayRange(uint64_t a1)
{
  result = qword_1EDC32D40;
  if (!qword_1EDC32D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFDA699C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFDA6A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1CFDA6A74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFDA6ADC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  sub_1CFDA7600(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1CFDA6B7C(uint64_t *a1@<X0>, os_unfair_lock_s *a2@<X1>, void *a3@<X8>)
{
  v5[1] = *a1;
  os_unfair_lock_lock(a2 + 6);
  sub_1CFDA6BF0(v5);
  os_unfair_lock_unlock(a2 + 6);
  *a3 = v5[0];
}

uint64_t sub_1CFDA6BF0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CFDA6C6C(**(v1 + 16), sub_1CFDB00B0);
  *a1 = result;
  return result;
}

uint64_t sub_1CFDA6C6C(void *a1, void (*a2)(void **__return_ptr))
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v2;
  v7 = v20;
  v9 = sub_1CFDA54DC(a1);
  v10 = v20[2];
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = v8;
  if (v20[3] < v12)
  {
    sub_1CFDAF754(v12, isUniquelyReferenced_nonNull_native);
    v7 = v20;
    v13 = sub_1CFDA54DC(a1);
    if ((v3 & 1) != (v14 & 1))
    {
      goto LABEL_17;
    }

    v9 = v13;
    *v2 = v20;
    if (v3)
    {
      goto LABEL_10;
    }

LABEL_8:
    a2(&v20);
    v7[(v9 >> 6) + 8] |= 1 << v9;
    *(v7[6] + 8 * v9) = a1;
    *(v7[7] + 8 * v9) = v20;
    v15 = v7[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (!v16)
    {
      v7[2] = v17;
      v18 = a1;
      goto LABEL_10;
    }

    __break(1u);
LABEL_17:
    type metadata accessor for HKFeatureIdentifier(0);
    result = sub_1CFE310F4();
    __break(1u);
    return result;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_14:
    sub_1CFDFCB2C();
    v7 = v20;
    *v2 = v20;
    if (v3)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  *v2 = v20;
  if ((v8 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_10:

  return swift_unknownObjectRetain();
}

void sub_1CFDA6E14(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1CFDA6E64(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t GregorianDayRange.gregorianCalendar.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GregorianDayRange(0) + 20);
  v4 = sub_1CFE304B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SleepingSampleQueryRange.expandedBaselineRange(forTarget:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v35 = a2;
  sub_1CFDA7460(0);
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v34 - v10;
  v12 = sub_1CFE307E4();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v34 - v19;
  sub_1CFDA7880(&qword_1EDC32CA8, MEMORY[0x1E696B418], MEMORY[0x1E696B430]);
  if (sub_1CFE30864())
  {
    sub_1CFDA7564(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
    if (sub_1CFE30874())
    {
      type metadata accessor for SleepingSampleQueryRange(0);
      sub_1CFE30774();
      sub_1CFE30754();
      result = sub_1CFE30874();
      if (result)
      {
        v22 = v13[4];
        v22(v11, v20, v12);
        v22(&v11[*(v4 + 48)], v17, v12);
        sub_1CFDA6820(v11, v8, sub_1CFDA7460);
        v23 = *(v4 + 48);
        v22(v35, v8, v12);
        v24 = v13[1];
        v24(&v8[v23], v12);
        sub_1CFDA6634(v11, v8, sub_1CFDA7460);
        v25 = *(v4 + 48);
        sub_1CFDA7564(0, &qword_1EDC32C90, MEMORY[0x1E69E66A8]);
        v22(&v35[*(v26 + 36)], &v8[v25], v12);
        return (v24)(v8, v12);
      }

      goto LABEL_9;
    }
  }

  result = sub_1CFE30874();
  if ((result & 1) == 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  v27 = v13[2];
  v27(v11, a1, v12);
  v27(&v11[*(v4 + 48)], a1, v12);
  sub_1CFDA6820(v11, v8, sub_1CFDA7460);
  v28 = *(v4 + 48);
  v29 = v13[4];
  v34 = v4;
  v30 = v35;
  v29(v35, v8, v12);
  v31 = v13[1];
  v31(&v8[v28], v12);
  sub_1CFDA6634(v11, v8, sub_1CFDA7460);
  v32 = *(v34 + 48);
  sub_1CFDA7564(0, &qword_1EDC32C90, MEMORY[0x1E69E66A8]);
  v29(&v30[*(v33 + 36)], &v8[v32], v12);
  return (v31)(v8, v12);
}

uint64_t SleepingSampleQueryRange.earliestBaselineMorningIndex.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1CFDA7564(0, &qword_1EDC32C90, MEMORY[0x1E69E66A8]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v9 - v5;
  SleepingSampleQueryRange.expandedBaselineRange(forTarget:)(v1, &v9 - v5);
  v7 = sub_1CFE307E4();
  (*(*(v7 - 8) + 16))(a1, v6, v7);
  return sub_1CFDA7A74(v6);
}

void sub_1CFDA7460(uint64_t a1)
{
  if (!qword_1EDC32548)
  {
    sub_1CFE307E4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC32548);
    }
  }
}

void sub_1CFDA74C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1CFE307E4();
    v7 = sub_1CFDA7760(&qword_1EDC32CA8, MEMORY[0x1E696B418], MEMORY[0x1E696B430]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1CFDA7564(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1CFE307E4();
    v7 = sub_1CFDA7880(&qword_1EDC32CA8, MEMORY[0x1E696B418], MEMORY[0x1E696B430]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1CFDA7600(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1CFE307E4();
    v7 = sub_1CFDA78C8(&qword_1EDC32CA8, MEMORY[0x1E696B430]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1CFDA7688(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CFDA76D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CFDA7718(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CFDA7760(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CFDA77A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CFDA77F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CFDA7838(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CFDA7880(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CFDA78C8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1CFE307E4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CFDA790C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CFDA7954(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CFDA799C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CFDA79E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CFDA7A2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CFDA7A74(uint64_t a1)
{
  sub_1CFDA7AD0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1CFDA7AD0(uint64_t a1)
{
  if (!qword_1EDC32C90)
  {
    sub_1CFE307E4();
    sub_1CFDAEB0C(&qword_1EDC32CA8, MEMORY[0x1E696B418], MEMORY[0x1E696B430]);
    v1 = sub_1CFE30BE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC32C90);
    }
  }
}

uint64_t SleepingSampleQueryRange.latestBaselineMorningIndex.getter()
{
  v1 = sub_1CFE307E4();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v18 - v8;
  sub_1CFDA7564(0, &qword_1EDC32C90, MEMORY[0x1E69E66A8]);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v18 - v13;
  sub_1CFDA7564(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
  SleepingSampleQueryRange.expandedBaselineRange(forTarget:)(v0 + *(v15 + 36), v14);
  (*(v2 + 16))(v9, &v14[*(v11 + 44)], v1);
  sub_1CFDA7A74(v14);
  sub_1CFE30744();
  sub_1CFE30764();
  v16 = *(v2 + 8);
  v16(v6, v1);
  return (v16)(v9, v1);
}

uint64_t SleepingSampleSummaryDemoDatasetManager.isDemoDatasetEnabled.getter()
{
  if (sub_1CFE305B4())
  {
    return 1;
  }

  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v1 = result;
    v2 = [result runningInStoreDemoModeF201];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CFDA7DC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GregorianDayRange(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1CFDA7E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CFDA68BC(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1CFE304B4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1CFDA7F5C()
{
  v1 = v0;
  v2 = sub_1CFE30664();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = (aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v6 = [v0 queue];
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  v7 = sub_1CFE30674();
  result = (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v9 = *&v0[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_queue_resultsPendingDelivery];
    *&v0[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_queue_resultsPendingDelivery] = MEMORY[0x1E69E7CC0];
    v10 = *&v0[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_queue_resultsHandler];
    if (v10)
    {
      v11 = *&v0[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_queue_resultsHandler + 8];

      v12 = sub_1CFE30334();
      v13 = v1[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_continueAfterInitialResults];
      v14 = swift_allocObject();
      v14[2] = v10;
      v14[3] = v11;
      v14[4] = v1;
      v14[5] = v9;
      aBlock[4] = sub_1CFDAAAA0;
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1CFDAA484;
      aBlock[3] = &block_descriptor_14;
      v15 = _Block_copy(aBlock);
      sub_1CFDA81D0(v10, v11);
      v16 = v1;

      [v16 queue:v12 dispatchToClientForUUID:(v13 & 1) == 0 shouldDeactivate:v15 block:?];
      _Block_release(v15);

      return sub_1CFDAC3D4(v10, v11);
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CFDA81D0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1CFDA821C(void *a1, void *a2, char a3)
{
  v7 = *(type metadata accessor for TrainingLoadSummaryQueryDescriptor(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  sub_1CFDAC46C(0, &qword_1EDC31888, MEMORY[0x1E69E87A0]);

  return sub_1CFDAAAF8(a1, a2, a3 & 1, v3 + v8);
}

uint64_t SleepingSampleDaySummary.morningIndex.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1CFE307E4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SleepingSampleSummaryDemoDatasetManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t SleepingSampleDaySummary.latestSampleEnd.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v3 = sub_1CFE30314();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v47 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v8);
  v46 = &v45 - v9;
  sub_1CFDA887C(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1E69E6720];
  sub_1CFDA97E8(0, &qword_1EDC32C78, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v45 - v18;
  sub_1CFDA97E8(0, &qword_1EDC32C70, MEMORY[0x1E6969530], v15);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v45 - v22;
  sub_1CFDA88FC(v19);
  v24 = sub_1CFE30014();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v19, 1, v24) == 1)
  {
    sub_1CFDA9B74(v19, &qword_1EDC32C78, MEMORY[0x1E6968130]);
    v26 = 1;
  }

  else
  {
    sub_1CFE2FFD4();
    (*(v25 + 8))(v19, v24);
    v26 = 0;
  }

  v27 = *(v4 + 56);
  v27(v23, v26, 1, v3);
  v28 = type metadata accessor for SleepingSampleDaySummary(0);
  v29 = *(v11 + 48);
  sub_1CFDA9A94(v2 + *(v28 + 24), v14, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  sub_1CFDA9CFC(v23, &v14[v29]);
  v30 = *(v4 + 48);
  v31 = v30(v14, 1, v3);
  v32 = v30(&v14[v29], 1, v3);
  if (v31 != 1)
  {
    v35 = *(v4 + 32);
    if (v32 == 1)
    {
      v34 = v48;
      v36 = v48;
      v37 = v14;
    }

    else
    {
      v39 = v46;
      v35(v46, v14, v3);
      v40 = v47;
      v35(v47, &v14[v29], v3);
      sub_1CFDA7A2C(&qword_1EDC32030, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
      v41 = sub_1CFE30864();
      v42 = (v41 & 1) == 0;
      if (v41)
      {
        v43 = v39;
      }

      else
      {
        v43 = v40;
      }

      if (v42)
      {
        v40 = v39;
      }

      (*(v4 + 8))(v43, v3);
      v34 = v48;
      v36 = v48;
      v37 = v40;
    }

    v35(v36, v37, v3);
    goto LABEL_18;
  }

  if (v32 != 1)
  {
    v38 = &v14[v29];
    v34 = v48;
    (*(v4 + 32))(v48, v38, v3);
LABEL_18:
    v33 = 0;
    return (v27)(v34, v33, 1, v3);
  }

  v33 = 1;
  v34 = v48;
  return (v27)(v34, v33, 1, v3);
}

void sub_1CFDA889C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1CFDA88FC@<X0>(uint64_t a1@<X8>)
{
  v126 = a1;
  v2 = MEMORY[0x1E69E6720];
  sub_1CFDA97E8(0, &qword_1EDC32C78, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v140 = &v117 - v5;
  v154 = type metadata accessor for SleepingSampleAggregate(0);
  MEMORY[0x1EEE9AC00](v154, v6);
  v153 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CFE30014();
  v128 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v152 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CFE30314();
  v127 = *(v11 - 8);
  v12 = v127;
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v138 = &v117 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v136 = &v117 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v135 = &v117 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v134 = &v117 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v119 = &v117 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v118 = &v117 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29, v31);
  v117 = &v117 - v33;
  MEMORY[0x1EEE9AC00](v32, v34);
  v121 = &v117 - v35;
  v125 = type metadata accessor for SleepingSampleBaselineComparison(0);
  v36 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125, v37);
  v151 = &v117 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDA97E8(0, &qword_1EDC32C70, MEMORY[0x1E6969530], v2);
  v41 = MEMORY[0x1EEE9AC00](v39 - 8, v40);
  v142 = &v117 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v41, v43);
  v133 = &v117 - v45;
  v47 = MEMORY[0x1EEE9AC00](v44, v46);
  v132 = &v117 - v48;
  v50 = MEMORY[0x1EEE9AC00](v47, v49);
  v131 = &v117 - v51;
  v53 = MEMORY[0x1EEE9AC00](v50, v52);
  v120 = &v117 - v54;
  v56 = MEMORY[0x1EEE9AC00](v53, v55);
  v124 = &v117 - v57;
  v59 = MEMORY[0x1EEE9AC00](v56, v58);
  v61 = &v117 - v60;
  MEMORY[0x1EEE9AC00](v59, v62);
  v64 = &v117 - v63;
  v65 = *(v12 + 56);
  v65(&v117 - v63, 1, 1, v11);
  v141 = v61;
  v149 = v65;
  v150 = v12 + 56;
  v65(v61, 1, 1, v11);
  sub_1CFDA97E8(0, &qword_1EDC32038, type metadata accessor for SleepingSampleBaselineComparison, MEMORY[0x1E69E6F90]);
  v66 = *(v36 + 72);
  v67 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v123 = swift_allocObject();
  v68 = v123 + v67;
  v69 = type metadata accessor for SleepingSampleDaySummary(0);
  sub_1CFDA9900(v1 + v69[8], v68, type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDA9900(v1 + v69[9], v68 + v66, type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDA9900(v1 + v69[10], v68 + 2 * v66, type metadata accessor for SleepingSampleBaselineComparison);
  v148 = v66;
  sub_1CFDA9900(v1 + v69[11], v68 + 3 * v66, type metadata accessor for SleepingSampleBaselineComparison);
  v70 = v1 + v69[12];
  v71 = v140;
  sub_1CFDA9900(v70, v68 + 4 * v66, type metadata accessor for SleepingSampleBaselineComparison);
  v147 = (v128 + 48);
  v130 = (v128 + 32);
  v156 = (v127 + 48);
  v157 = (v127 + 32);
  v155 = (v127 + 8);
  v129 = (v128 + 8);
  v72 = v64;
  v73 = 5;
  v122 = v68;
  v74 = v68;
  v139 = v8;
  v137 = v72;
  do
  {
    v75 = v151;
    sub_1CFDA9900(v74, v151, type metadata accessor for SleepingSampleBaselineComparison);
    v76 = v153;
    sub_1CFDA9900(v75, v153, type metadata accessor for SleepingSampleAggregate);
    sub_1CFDA99B4(v75, type metadata accessor for SleepingSampleBaselineComparison);
    sub_1CFDA9A94(v76 + *(v154 + 28), v71, &qword_1EDC32C78, MEMORY[0x1E6968130]);
    sub_1CFDA99B4(v76, type metadata accessor for SleepingSampleAggregate);
    if ((*v147)(v71, 1, v8) == 1)
    {
      sub_1CFDA9B74(v71, &qword_1EDC32C78, MEMORY[0x1E6968130]);
    }

    else
    {
      (*v130)(v152, v71, v8);
      v77 = v132;
      sub_1CFDA9A94(v72, v132, &qword_1EDC32C70, MEMORY[0x1E6969530]);
      v78 = *v156;
      v79 = (*v156)(v77, 1, v11);
      v80 = v134;
      v146 = v78;
      v144 = v73;
      if (v79 == 1)
      {
        sub_1CFE30004();
        if (v78(v77, 1, v11) != 1)
        {
          sub_1CFDA9B74(v77, &qword_1EDC32C70, MEMORY[0x1E6969530]);
        }
      }

      else
      {
        (*v157)(v134, v77, v11);
      }

      v81 = v135;
      sub_1CFE30004();
      v143 = sub_1CFDA7A2C(&qword_1EDC32030, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
      v82 = sub_1CFE30854();
      v83 = MEMORY[0x1E6969530];
      sub_1CFDA9B74(v72, &qword_1EDC32C70, MEMORY[0x1E6969530]);
      v84 = *v155;
      if (v82)
      {
        v85 = v80;
      }

      else
      {
        v85 = v81;
      }

      if (v82)
      {
        v86 = v81;
      }

      else
      {
        v86 = v80;
      }

      v145 = *v155;
      v84(v85, v11);
      v87 = *v157;
      v88 = v131;
      (*v157)(v131, v86, v11);
      v149(v88, 0, 1, v11);
      sub_1CFDA9CFC(v88, v72);
      v89 = v141;
      v90 = v142;
      sub_1CFDA9A94(v141, v142, &qword_1EDC32C70, v83);
      v91 = v146;
      if (v146(v90, 1, v11) == 1)
      {
        v92 = v136;
        v93 = v152;
        sub_1CFE2FFD4();
        v94 = v91(v90, 1, v11);
        v95 = v92;
        v96 = v93;
        if (v94 != 1)
        {
          sub_1CFDA9B74(v142, &qword_1EDC32C70, MEMORY[0x1E6969530]);
        }
      }

      else
      {
        v95 = v136;
        v87(v136, v90, v11);
        v96 = v152;
      }

      v97 = v138;
      sub_1CFE2FFD4();
      v98 = sub_1CFE30864();
      v99 = v95;
      v8 = v139;
      (*v129)(v96, v139);
      sub_1CFDA9B74(v89, &qword_1EDC32C70, MEMORY[0x1E6969530]);
      if (v98)
      {
        v100 = v99;
      }

      else
      {
        v100 = v97;
      }

      if (v98)
      {
        v101 = v97;
      }

      else
      {
        v101 = v99;
      }

      v145(v100, v11);
      v102 = v133;
      v87(v133, v101, v11);
      v149(v102, 0, 1, v11);
      sub_1CFDA9CFC(v102, v89);
      v71 = v140;
      v72 = v137;
      v73 = v144;
    }

    v74 += v148;
    --v73;
  }

  while (v73);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v103 = v124;
  sub_1CFDA9A94(v72, v124, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  v104 = *v156;
  v105 = (*v156)(v103, 1, v11);
  v106 = v126;
  if (v105 != 1)
  {
    v107 = *v157;
    v108 = v121;
    (*v157)(v121, v103, v11);
    v103 = v120;
    sub_1CFDA9A94(v141, v120, &qword_1EDC32C70, MEMORY[0x1E6969530]);
    if (v104(v103, 1, v11) != 1)
    {
      v111 = v117;
      v107(v117, v103, v11);
      v113 = v127 + 16;
      v112 = *(v127 + 16);
      v112(v118, v108, v11);
      v112(v119, v111, v11);
      sub_1CFE2FFE4();
      v114 = *(v113 - 8);
      v114(v111, v11);
      v114(v108, v11);
      v109 = 0;
      v110 = v141;
      goto LABEL_31;
    }

    (*v155)(v108, v11);
  }

  sub_1CFDA9B74(v141, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  v109 = 1;
  v110 = v72;
  v72 = v103;
LABEL_31:
  v115 = MEMORY[0x1E6969530];
  sub_1CFDA9B74(v110, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  sub_1CFDA9B74(v72, &qword_1EDC32C70, v115);
  return (*(v128 + 56))(v106, v109, 1, v8);
}

uint64_t type metadata accessor for SleepingSampleAggregate(uint64_t a1)
{
  result = qword_1EDC32BC0;
  if (!qword_1EDC32BC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CFDA9784(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1CFDA97E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for SleepingSampleBaselineComparison(uint64_t a1)
{
  result = qword_1EDC32A68;
  if (!qword_1EDC32A68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFDA9898(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFDA9900(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for SleepingSampleDaySummary(uint64_t a1)
{
  result = qword_1EDC32B18;
  if (!qword_1EDC32B18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFDA99B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CFDA9A14(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1CFE0C7E4(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1CFDA9A94(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1CFDA97E8(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1CFDA9B14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CFDA9B74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1CFDA97E8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1CFDA9CFC(uint64_t a1, uint64_t a2)
{
  sub_1CFDA9D60(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t TrainingLoadSummaryQuery.client_deliverTrainingLoadSampleDaySummaries(_:queryUUID:)(unint64_t a1, uint64_t a2)
{
  v5 = sub_1CFE30634();
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CFE30654();
  v26 = *(v9 - 8);
  v27 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CFE30354();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  result = sub_1CFDAA930(a1);
  if (result)
  {
    v18 = result;
    v25 = [v2 queue];
    (*(v14 + 16))(&v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v13);
    v19 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    *(v20 + 24) = v2;
    (*(v14 + 32))(v20 + v19, &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
    aBlock[4] = sub_1CFDAA4C8;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CFDAA484;
    aBlock[3] = &block_descriptor_6;
    v21 = _Block_copy(aBlock);
    v22 = v2;
    sub_1CFE30644();
    v30 = MEMORY[0x1E69E7CC0];
    sub_1CFDA77F0(qword_1EDC32128, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1CFDAA398(0, &qword_1EDC32100, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1CFDAA3FC();
    v23 = v29;
    sub_1CFE30D04();
    v24 = v25;
    MEMORY[0x1D38762F0](0, v12, v8, v21);
    _Block_release(v21);

    (*(v28 + 8))(v8, v23);
    (*(v26 + 8))(v12, v27);
  }

  return result;
}

uint64_t sub_1CFDAA148(uint64_t a1, uint64_t a2)
{
  v3 = sub_1CFE30354();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(v4 + 64);

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

void sub_1CFDAA214(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1CFDAA278(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1CFDAA2DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  return sub_1CFDAC5F0(a2 + 32, a1 + 32);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1CFDAA398(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1CFDAA3FC()
{
  result = qword_1EDC320F8;
  if (!qword_1EDC320F8)
  {
    sub_1CFDAA398(255, &qword_1EDC32100, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC320F8);
  }

  return result;
}

uint64_t sub_1CFDAA484(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void *sub_1CFDAA4C8(uint64_t a1, uint64_t a2)
{
  v3 = *(sub_1CFE30354() - 8);
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = v2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1CFDAA52C(v4, v5, v6);
}

void *sub_1CFDAA52C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  SampleDaySummary = type metadata accessor for TrainingLoadSampleDaySummary(0);
  v7 = *(SampleDaySummary - 8);
  v9 = MEMORY[0x1EEE9AC00](SampleDaySummary - 8, v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v25 - v13;
  if (a1 >> 62)
  {
    v15 = sub_1CFE30EE4();
  }

  else
  {
    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = MEMORY[0x1E69E7CC0];
  if (!v15)
  {
LABEL_15:
    *(a2 + OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_queue_resultsPendingDelivery) = v16;

    return sub_1CFDA7F5C();
  }

  v26 = MEMORY[0x1E69E7CC0];
  result = sub_1CFDC48C8(0, v15 & ~(v15 >> 63), 0);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v25 = a3;
    v16 = v26;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v15; ++i)
      {
        MEMORY[0x1D3876480](i, a1);
        sub_1CFE306C4();
        swift_unknownObjectRelease();
        v26 = v16;
        v20 = *(v16 + 16);
        v19 = *(v16 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1CFDC48C8((v19 > 1), v20 + 1, 1);
          v16 = v26;
        }

        *(v16 + 16) = v20 + 1;
        sub_1CFDEAA1C(v14, v16 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v20);
      }
    }

    else
    {
      v21 = (a1 + 32);
      do
      {
        v22 = *v21;
        sub_1CFE306C4();

        v26 = v16;
        v24 = *(v16 + 16);
        v23 = *(v16 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_1CFDC48C8((v23 > 1), v24 + 1, 1);
          v16 = v26;
        }

        *(v16 + 16) = v24 + 1;
        sub_1CFDEAA1C(v11, v16 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v24);
        ++v21;
        --v15;
      }

      while (v15);
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFDAA7B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CFDAA8D8(0, qword_1EDC32CB8, &qword_1EDC32C80, 0x1E696C348);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_1CFDAA8D8(0, qword_1EDC32930, &qword_1EDC32918, 0x1E696C350);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

void sub_1CFDAA8D8(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_1CFDA6E64(255, a3, a4);
    v5 = sub_1CFE306A4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1CFDAA930(unint64_t a1)
{
  v6 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_15:
    sub_1CFE30EE4();
    sub_1CFE30E54();
    v2 = sub_1CFE30EE4();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1CFE30E54();
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1D3876480](v3, a1);
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          swift_unknownObjectRetain();
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_12;
          }
        }

        sub_1CFDE9DF4(0);
        if (!swift_dynamicCastClass())
        {
          goto LABEL_13;
        }

        sub_1CFE30E24();
        sub_1CFE30E64();
        sub_1CFE30E74();
        sub_1CFE30E34();
        ++v3;
      }

      while (v4 != v2);
    }
  }

  return v6;
}

uint64_t type metadata accessor for TrainingLoadSampleDaySummary(uint64_t a1)
{
  result = qword_1EDC32300;
  if (!qword_1EDC32300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFDAAAF8(void *a1, void *a2, int a3, uint64_t a4)
{
  v34 = a4;
  LODWORD(v4) = a3;
  sub_1CFDAC46C(0, &qword_1EDC318A8, MEMORY[0x1E69E8780]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v30[-v11];
  sub_1CFDAC46C(0, &qword_1EDC31A00, MEMORY[0x1E69E75F0]);
  v35 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v30[-v15];
  if (qword_1EDC32570 != -1)
  {
    swift_once();
  }

  v17 = sub_1CFE30624();
  __swift_project_value_buffer(v17, qword_1EDC32578);
  v18 = a1;
  v19 = sub_1CFE30604();
  v20 = sub_1CFE30C04();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v31 = v4;
    v4 = v21;
    v22 = swift_slowAlloc();
    v32 = a2;
    v23 = v22;
    v24 = swift_slowAlloc();
    v33 = v8;
    v25 = v24;
    v36 = v24;
    *v4 = 136446466;
    *(v4 + 4) = sub_1CFDAAF6C(0xD000000000000022, 0x80000001CFE35CF0, &v36);
    *(v4 + 12) = 2112;
    *(v4 + 14) = v18;
    *v23 = v18;
    v26 = v18;
    _os_log_impl(&dword_1CFDA3000, v19, v20, "[%{public}s] Yielding query results to stream: %@", v4, 0x16u);
    sub_1CFDAB090(v23);
    a2 = v32;
    MEMORY[0x1D3876FF0](v23, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v25);
    v27 = v25;
    v8 = v33;
    MEMORY[0x1D3876FF0](v27, -1, -1);
    v28 = v4;
    LOBYTE(v4) = v31;
    MEMORY[0x1D3876FF0](v28, -1, -1);
  }

  if (v4)
  {
    *v16 = a2;
  }

  else
  {
    sub_1CFDAB1D0(v34, v16, &qword_1EDC32CA0, MEMORY[0x1E69E5F90], sub_1CFDA7600);
    *(v16 + *(type metadata accessor for TrainingLoadSampleDaySummaryCollection(0) + 20)) = a2;
  }

  swift_storeEnumTagMultiPayload();
  sub_1CFDAB240(a2, v4 & 1);
  sub_1CFDAC46C(0, &qword_1EDC31888, MEMORY[0x1E69E87A0]);
  sub_1CFE30B64();
  (*(v9 + 8))(v12, v8);
  return sub_1CFDAB334(v16, &qword_1EDC31A00, MEMORY[0x1E69E75F0], sub_1CFDAC46C);
}

uint64_t type metadata accessor for TrainingLoadSampleDaySummaryCollection(uint64_t a1)
{
  result = qword_1EDC31C88;
  if (!qword_1EDC31C88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1CFDAAF08()
{
  result = qword_1EDC31E60;
  if (!qword_1EDC31E60)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDC31E60);
  }

  return result;
}

unint64_t sub_1CFDAAF6C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1CFDAC4E4(v11, 0, 0, 1, a1, a2);
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
    sub_1CFDAC5F0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

void sub_1CFDAB038(uint64_t a1)
{
  if (!qword_1EDC31820)
  {
    sub_1CFDAB0EC();
    v1 = sub_1CFE30C74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC31820);
    }
  }
}

uint64_t sub_1CFDAB090(uint64_t a1)
{
  sub_1CFDAB038(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1CFDAB0EC()
{
  result = qword_1EDC324E8;
  if (!qword_1EDC324E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC324E8);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1CFDAB17C()
{
  result = qword_1EDC32848;
  if (!qword_1EDC32848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32848);
  }

  return result;
}

uint64_t sub_1CFDAB1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

id sub_1CFDAB240(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

void sub_1CFDAB260(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1CFDA7600(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_1CFDAB334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = (a4)(0, a2, a3);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for GregorianDayRange(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_1CFE307E4();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3, v5);
  sub_1CFDA68BC(0);
  v6(v0 + v3 + *(v7 + 36), v5);
  v8 = v1[7];
  v9 = sub_1CFE304B4();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_0(void (*a1)(void))
{

  a1(*(v1 + 40));

  return MEMORY[0x1EEE6BDD0](v1, 48, 7);
}

uint64_t storeEnumTagSinglePayload for SleepingSampleDaySummary.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SleepingSampleDaySummary.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_1CFDAB694(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x49676E696E726F6DLL;
    v6 = 0xD000000000000017;
    if (a1 != 2)
    {
      v6 = 0x437265696C74756FLL;
    }

    if (a1)
    {
      v5 = 0x656E696C65736162;
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
    v1 = 0x7461726970736572;
    v2 = 0xD000000000000010;
    if (a1 != 7)
    {
      v2 = 0x656C7341656D6974;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x7461527472616568;
    if (a1 != 4)
    {
      v3 = 0x79784F646F6F6C62;
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

uint64_t sub_1CFDAB7F8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1CFDA7AD0(255);
    sub_1CFDA7688(a2, MEMORY[0x1E696B418], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CFDAB888(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1CFDA7AD0(255);
    sub_1CFDA790C(a2, MEMORY[0x1E696B418], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CFDAB918(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1CFDAB9C4(255, &qword_1EDC32C90, MEMORY[0x1E69E66A8]);
    sub_1CFDA7A2C(a2, MEMORY[0x1E696B418], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1CFDAB9C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1CFE307E4();
    v7 = sub_1CFDA7A2C(&qword_1EDC32CA8, MEMORY[0x1E696B418], MEMORY[0x1E696B430]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1CFDABA74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CFDA7600(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
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

unint64_t sub_1CFDABB4C()
{
  result = qword_1EDC31948;
  if (!qword_1EDC31948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC31948);
  }

  return result;
}

uint64_t sub_1CFDABBA0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_1CFDABC10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1CFDABC78(uint64_t a1)
{
  if (!qword_1EDC318C0)
  {
    sub_1CFE307E4();
    v1 = sub_1CFE30C74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC318C0);
    }
  }
}

uint64_t TrainingLoadBaselineComparison.init(acuteBaseline:chronicBaseline:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1CFDAD280(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  ChronicBaseline = type metadata accessor for TrainingLoadChronicBaseline(0);
  MEMORY[0x1EEE9AC00](ChronicBaseline, v11);
  v13 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  BaselineComparison = type metadata accessor for TrainingLoadBaselineComparison(0);
  v15 = a3 + *(BaselineComparison + 24);
  sub_1CFDAC088(a1, a3, type metadata accessor for TrainingLoadAcuteBaseline);
  sub_1CFDAC088(a2, a3 + *(BaselineComparison + 20), type metadata accessor for TrainingLoadChronicBaseline);
  sub_1CFDAC088(a2, v13, type metadata accessor for TrainingLoadChronicBaseline);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v13;
    if (*v13 == 0.0)
    {
      sub_1CFDAC13C(a2, type metadata accessor for TrainingLoadChronicBaseline);
      result = sub_1CFDAC13C(a1, type metadata accessor for TrainingLoadAcuteBaseline);
      *v15 = 0;
      *(v15 + 8) = 1;
    }

    else
    {
      sub_1CFDAC088(a1, v9, sub_1CFDAD280);
      sub_1CFDAC3A0(0);
      v19 = v18;
      v20 = *(v18 - 8);
      if ((*(v20 + 48))(v9, 1, v18) == 1)
      {
        sub_1CFDAC13C(v9, sub_1CFDAD280);
        sub_1CFDAC13C(a2, type metadata accessor for TrainingLoadChronicBaseline);
        result = sub_1CFDAC13C(a1, type metadata accessor for TrainingLoadAcuteBaseline);
        *v15 = 0;
        *(v15 + 8) = 1;
      }

      else
      {
        v21 = sub_1CFE30684();
        (*(v20 + 8))(v9, v19);
        [v21 _value];
        v23 = v22;

        sub_1CFDAC13C(a2, type metadata accessor for TrainingLoadChronicBaseline);
        result = sub_1CFDAC13C(a1, type metadata accessor for TrainingLoadAcuteBaseline);
        *v15 = (v23 - v16) / v16;
        *(v15 + 8) = 0;
      }
    }
  }

  else
  {
    sub_1CFDAC13C(a2, type metadata accessor for TrainingLoadChronicBaseline);
    sub_1CFDAC13C(a1, type metadata accessor for TrainingLoadAcuteBaseline);
    *v15 = 0;
    *(v15 + 8) = 1;
    return sub_1CFDAC13C(v13, type metadata accessor for TrainingLoadChronicBaseline);
  }

  return result;
}

uint64_t type metadata accessor for TrainingLoadChronicBaseline(uint64_t a1)
{
  result = qword_1EDC323A8;
  if (!qword_1EDC323A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFDAC088(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for TrainingLoadAcuteBaseline(uint64_t a1)
{
  result = qword_1EDC32410;
  if (!qword_1EDC32410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFDAC13C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CFDAC19C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFDAC204(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t TrainingLoadAcuteBaseline.init(quantity:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1CFDAD280(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_1CFDAD5CC();
    v8 = a1;
    sub_1CFE306B4();
    sub_1CFDAC3A0(0);
    (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  }

  else
  {
    sub_1CFDAC3A0(0);
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  }

  return sub_1CFDAD4FC(v7, a2, sub_1CFDAD280);
}

uint64_t sub_1CFDAC3D4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t block_destroy_helper_3(uint64_t a1)
{
}

{
  return __swift_destroy_boxed_opaque_existential_1((a1 + 32));
}

uint64_t type metadata accessor for TrainingLoadSummaryQueryDescriptor(uint64_t a1)
{
  result = qword_1EDC31D28;
  if (!qword_1EDC31D28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CFDAC46C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    SampleDaySummaryCollection = type metadata accessor for TrainingLoadSampleDaySummaryCollection(255);
    v7 = sub_1CFDAAF08();
    v8 = a3(a1, SampleDaySummaryCollection, v7, MEMORY[0x1E69E7288]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1CFDAC4E4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1CFDFC03C(a5, a6);
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
    result = sub_1CFE30E14();
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

uint64_t sub_1CFDAC5F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

uint64_t SleepingSampleDaySummary.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1CFDACAFC(0, &qword_1EDC31790, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFDAB17C();
  sub_1CFE311A4();
  LOBYTE(v15) = 0;
  sub_1CFE307E4();
  sub_1CFDA7A2C(&qword_1EDC318C8, MEMORY[0x1E696B418], MEMORY[0x1E696B420]);
  sub_1CFE31054();
  if (!v2)
  {
    v11 = type metadata accessor for SleepingSampleDaySummary(0);
    LOBYTE(v15) = 1;
    sub_1CFDAB9C4(0, &qword_1EDC32C90, MEMORY[0x1E69E66A8]);
    sub_1CFDAB918(&qword_1EDC31880, &qword_1EDC318C8, MEMORY[0x1E696B420], MEMORY[0x1E69E66B0]);
    sub_1CFE31054();
    LOBYTE(v15) = 2;
    sub_1CFE30314();
    sub_1CFDA7A2C(&qword_1EDC319A0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1CFE31014();
    v12 = (v3 + *(v11 + 28));
    v13 = *v12;
    LOBYTE(v12) = *(v12 + 8);
    v15 = v13;
    v16 = v12;
    v17 = 3;
    sub_1CFDABB4C();
    sub_1CFE31014();
    LOBYTE(v15) = 4;
    type metadata accessor for SleepingSampleBaselineComparison(0);
    sub_1CFDA7A2C(&qword_1EDC31910, type metadata accessor for SleepingSampleBaselineComparison, &protocol conformance descriptor for SleepingSampleBaselineComparison);
    sub_1CFE31054();
    LOBYTE(v15) = 5;
    sub_1CFE31054();
    LOBYTE(v15) = 6;
    sub_1CFE31054();
    LOBYTE(v15) = 7;
    sub_1CFE31054();
    LOBYTE(v15) = 8;
    sub_1CFE31054();
  }

  return (*(v7 + 8))(v10, v6);
}

void sub_1CFDACAFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1CFDAB17C();
    v7 = a3(a1, &type metadata for SleepingSampleDaySummary.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1CFDACB60()
{
  result = qword_1EDC32830;
  if (!qword_1EDC32830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32830);
  }

  return result;
}

uint64_t TrainingLoadChronicBaseline.init(target:firstDayWithData:minConsecutiveDaysOfDataRequired:chronicBaselineCandidate:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v51 = a5;
  v50 = a4;
  v55 = a3;
  ChronicBaseline = type metadata accessor for TrainingLoadChronicBaseline(0);
  MEMORY[0x1EEE9AC00](ChronicBaseline, v10);
  v49 = (&v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1CFDA7460(0);
  v54 = v12;
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v44 - v18;
  sub_1CFDA7AD0(0);
  v53 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDABC78(0);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1CFE307E4();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v30);
  v56 = &v44 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDABC10(a2, v27, sub_1CFDABC78);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_1CFDAD1D4(a2, sub_1CFDABC78);
    (*(v29 + 8))(a1, v28);
    sub_1CFDAD1D4(v27, sub_1CFDABC78);
    return swift_storeEnumTagMultiPayload();
  }

  v47 = a2;
  v48 = ChronicBaseline;
  v46 = *(v29 + 32);
  v46(v56, v27, v28);
  sub_1CFDA7688(&qword_1EDC32CA8, MEMORY[0x1E696B418], MEMORY[0x1E696B430]);
  v52 = a1;
  result = sub_1CFE30874();
  if (result)
  {
    v45 = a6;
    v33 = *(v29 + 16);
    v33(v19, v56, v28);
    v34 = v54;
    v33(&v19[*(v54 + 48)], v52, v28);
    sub_1CFDABC10(v19, v16, sub_1CFDA7460);
    v35 = *(v34 + 48);
    v36 = v46;
    v46(v23, v16, v28);
    v37 = *(v29 + 8);
    v37(&v16[v35], v28);
    sub_1CFDAD618(v19, v16, sub_1CFDA7460);
    v36(&v23[*(v53 + 36)], &v16[*(v34 + 48)], v28);
    v37(v16, v28);
    sub_1CFDA7688(&unk_1EDC31E78, MEMORY[0x1E696B418], MEMORY[0x1E696B448]);
    sub_1CFE30CA4();
    v38 = v55;
    if (v57 < v55)
    {
      sub_1CFDAD680(0);
      v40 = *(v39 + 48);
      v54 = *(v39 + 64);
      v41 = v45;
      sub_1CFDABC10(v23, v45, sub_1CFDA7AD0);
      sub_1CFE30CA4();
      sub_1CFDAD1D4(v47, sub_1CFDABC78);
      v37(v52, v28);
      sub_1CFDAD1D4(v23, sub_1CFDA7AD0);
      v37(v56, v28);
      *(v41 + v40) = v57;
      *(v41 + v54) = v38;
      return swift_storeEnumTagMultiPayload();
    }

    sub_1CFDAD1D4(v47, sub_1CFDABC78);
    v37(v52, v28);
    sub_1CFDAD1D4(v23, sub_1CFDA7AD0);
    v37(v56, v28);
    v42 = v50;
    if (v51)
    {
      v42 = 0.0;
    }

    v43 = v49;
    *v49 = v42;
    swift_storeEnumTagMultiPayload();
    return sub_1CFDAD618(v43, v45, type metadata accessor for TrainingLoadChronicBaseline);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CFDAD1D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for TrainingLoadBaselineComparison(uint64_t a1)
{
  result = qword_1EDC32260;
  if (!qword_1EDC32260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CFDAD280(uint64_t a1)
{
  if (!qword_1EDC32CB0)
  {
    sub_1CFDBCB98(255, qword_1EDC32CB8, &qword_1EDC32C80, 0x1E696C348, MEMORY[0x1E696B370]);
    v1 = sub_1CFE30C74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC32CB0);
    }
  }
}

uint64_t TrainingLoadSampleDaySummary.init(morningIndex:baselineRange:trainingLoad:activityType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  SampleDaySummary = type metadata accessor for TrainingLoadSampleDaySummary(0);
  v13 = SampleDaySummary[7];
  *(a6 + v13) = 5;
  v14 = sub_1CFE307E4();
  v15 = *(v14 - 8);
  (*(v15 + 16))(a6, a1, v14);
  sub_1CFDAC19C(a2, a6 + SampleDaySummary[5], sub_1CFDA7AD0);
  sub_1CFDAC19C(a3, a6 + SampleDaySummary[8], type metadata accessor for TrainingLoadBaselineComparison);
  v16 = a3 + *(type metadata accessor for TrainingLoadBaselineComparison(0) + 24);
  if (*(v16 + 8))
  {
    sub_1CFDAC204(a3, type metadata accessor for TrainingLoadBaselineComparison);
    sub_1CFDAC204(a2, sub_1CFDA7AD0);
    result = (*(v15 + 8))(a1, v14);
    v18 = 5;
  }

  else
  {
    TrainingLoadBand.init(fractionalDifferenceFromChronicBaseline:)(*v16);
    sub_1CFDAC204(a3, type metadata accessor for TrainingLoadBaselineComparison);
    sub_1CFDAC204(a2, sub_1CFDA7AD0);
    result = (*(v15 + 8))(a1, v14);
    v18 = v20;
  }

  *(a6 + v13) = v18;
  v19 = a6 + SampleDaySummary[6];
  *v19 = a4;
  *(v19 + 8) = a5 & 1;
  return result;
}

uint64_t sub_1CFDAD4FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFDAD564(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1CFDAD5CC()
{
  result = qword_1EDC32C80;
  if (!qword_1EDC32C80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC32C80);
  }

  return result;
}

uint64_t sub_1CFDAD618(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1CFDAD680(uint64_t a1)
{
  if (!qword_1EDC32C98)
  {
    sub_1CFDA7AD0(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EDC32C98);
    }
  }
}

uint64_t getEnumTagSinglePayload for BalanceURLBuilder.RoutingKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1CFDAD780()
{
  v1 = *v0;
  v2 = 0x49676E696E726F6DLL;
  v3 = 0xD000000000000018;
  if (v1 != 4)
  {
    v3 = 0x6962616C69617661;
  }

  if (v1 == 3)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = v3;
  }

  v5 = 0xD000000000000011;
  if (v1 != 1)
  {
    v5 = 0x797469746E617571;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

uint64_t SleepingSampleAggregate.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1CFDAE3E8(0, &qword_1EDC317C8, sub_1CFDAF700, &type metadata for SleepingSampleAggregate.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFDAF700();
  sub_1CFE311A4();
  v20 = 0;
  sub_1CFE307E4();
  sub_1CFDADC34(&qword_1EDC318C8, MEMORY[0x1E696B418], MEMORY[0x1E696B420]);
  sub_1CFE31054();
  if (!v2)
  {
    v11 = type metadata accessor for SleepingSampleAggregate(0);
    v19 = 1;
    sub_1CFE304B4();
    sub_1CFDADC34(&qword_1EDC31990, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF0]);
    sub_1CFE31054();
    v18 = 2;
    sub_1CFDAC3A0(0);
    sub_1CFDADC34(&unk_1EDC318E8, sub_1CFDAC3A0, MEMORY[0x1E696B378]);
    sub_1CFE31014();
    v17 = 3;
    sub_1CFE30014();
    sub_1CFDADC34(&qword_1EDC319B8, MEMORY[0x1E6968130], MEMORY[0x1E6968138]);
    sub_1CFE31014();
    v16 = 4;
    sub_1CFE30314();
    sub_1CFDADC34(&qword_1EDC319A0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1CFE31014();
    v15 = *(v3 + *(v11 + 36));
    v14 = 5;
    sub_1CFDADCC4();
    sub_1CFE31054();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1CFDADC34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CFDADC7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1CFDADCC4()
{
  result = qword_1EDC31958;
  if (!qword_1EDC31958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC31958);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for BalanceURLBuilder.RoutingKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t SleepingSampleAggregate.Availability.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E6F58];
  sub_1CFDAE3E8(0, &qword_1EDC317B0, sub_1CFDB2C64, &type metadata for SleepingSampleAggregate.Availability.AvailableCodingKeys, MEMORY[0x1E69E6F58]);
  v47 = *(v5 - 8);
  v48 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v46 = &v38 - v7;
  sub_1CFDAE3E8(0, &qword_1EDC317A0, sub_1CFDB2D68, &type metadata for SleepingSampleAggregate.Availability.EstablishingBaselineDataCodingKeys, v4);
  v44 = *(v8 - 8);
  v45 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v43 = &v38 - v10;
  sub_1CFDAE3E8(0, &qword_1EDC31798, sub_1CFDB2E6C, &type metadata for SleepingSampleAggregate.Availability.InsufficientBaselineDataCodingKeys, v4);
  v41 = *(v11 - 8);
  v42 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v40 = &v38 - v13;
  sub_1CFDAE3E8(0, &qword_1EDC317A8, sub_1CFDB2F70, &type metadata for SleepingSampleAggregate.Availability.InsufficientDataCodingKeys, v4);
  v50 = *(v14 - 8);
  v51 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v49 = &v38 - v16;
  sub_1CFDAE3E8(0, &qword_1EDC317B8, sub_1CFDAE4A4, &type metadata for SleepingSampleAggregate.Availability.NoDataCodingKeys, v4);
  v18 = v17;
  v39 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v38 - v20;
  sub_1CFDAE3E8(0, &qword_1EDC317C0, sub_1CFDAE450, &type metadata for SleepingSampleAggregate.Availability.CodingKeys, v4);
  v52 = v22;
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v38 - v25;
  v27 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFDAE450();
  sub_1CFE311A4();
  v28 = (v23 + 8);
  if (v27 <= 1)
  {
    v34 = v49;
    v33 = v50;
    v35 = v51;
    if (!v27)
    {
      v53 = 0;
      sub_1CFDAE4A4();
      v36 = v52;
      sub_1CFE30FF4();
      (*(v39 + 8))(v21, v18);
      return (*v28)(v26, v36);
    }

    v54 = 1;
    sub_1CFDB2F70();
    v30 = v52;
    sub_1CFE30FF4();
    (*(v33 + 8))(v34, v35);
  }

  else
  {
    if (v27 == 2)
    {
      v55 = 2;
      sub_1CFDB2E6C();
      v29 = v40;
      v30 = v52;
      sub_1CFE30FF4();
      v32 = v41;
      v31 = v42;
    }

    else if (v27 == 3)
    {
      v56 = 3;
      sub_1CFDB2D68();
      v29 = v43;
      v30 = v52;
      sub_1CFE30FF4();
      v32 = v44;
      v31 = v45;
    }

    else
    {
      v57 = 4;
      sub_1CFDB2C64();
      v29 = v46;
      v30 = v52;
      sub_1CFE30FF4();
      v32 = v47;
      v31 = v48;
    }

    (*(v32 + 8))(v29, v31);
  }

  return (*v28)(v26, v30);
}

void sub_1CFDAE3E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1CFDAE450()
{
  result = qword_1EDC328D8;
  if (!qword_1EDC328D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC328D8);
  }

  return result;
}

unint64_t sub_1CFDAE4A4()
{
  result = qword_1EDC328C0;
  if (!qword_1EDC328C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC328C0);
  }

  return result;
}

unint64_t sub_1CFDAE4F8()
{
  v1 = *v0;
  v2 = 0x617461446F6ELL;
  v3 = 0xD000000000000018;
  v4 = 0x6C62616C69617661;
  if (v1 == 3)
  {
    v4 = 0xD000000000000018;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
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

unint64_t sub_1CFDAE5A4()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x6C62616C69617661;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x617461446F6ELL;
  }
}

uint64_t storeEnumTagSinglePayload for TrainingLoadBand(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t storeEnumTagSinglePayload for PlatformSpecificAppBundleProvider(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for TrainingLoadBand(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1CFDAE7FC()
{
  v1 = 0x6962616C69617661;
  if (*v0 != 1)
  {
    v1 = 0x656E696C65736162;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7461676572676761;
  }
}

uint64_t SleepingSampleBaselineComparison.encode(to:)(void *a1)
{
  sub_1CFDAF62C(0, &qword_1EDC31750, sub_1CFDAF694, &type metadata for SleepingSampleBaselineComparison.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFDAF694();
  sub_1CFE311A4();
  v13 = 0;
  type metadata accessor for SleepingSampleAggregate(0);
  sub_1CFDAEB0C(&qword_1EDC31950, type metadata accessor for SleepingSampleAggregate, &protocol conformance descriptor for SleepingSampleAggregate);
  sub_1CFE31054();
  if (!v1)
  {
    type metadata accessor for SleepingSampleBaselineComparison(0);
    v12 = 1;
    type metadata accessor for SleepingSampleBaselineAvailability(0);
    sub_1CFDAEB0C(&qword_1EDC31908, type metadata accessor for SleepingSampleBaselineAvailability, &protocol conformance descriptor for SleepingSampleBaselineAvailability);
    sub_1CFE31054();
    v11 = 2;
    type metadata accessor for SleepingSampleBaseline(0);
    sub_1CFDAEB0C(&qword_1EDC31970, type metadata accessor for SleepingSampleBaseline, &protocol conformance descriptor for SleepingSampleBaseline);
    sub_1CFE31014();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1CFDAEB0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for SleepingSampleBaselineAvailability(uint64_t a1)
{
  result = qword_1EDC329D0;
  if (!qword_1EDC329D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for SleepingSampleBaselineComparison.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SleepingSampleBaselineComparison.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t SleepingSampleBaselineAvailability.encode(to:)(void *a1)
{
  v2 = MEMORY[0x1E69E6F58];
  sub_1CFDAF41C(0, &qword_1EDC31738, sub_1CFDB415C, &type metadata for SleepingSampleBaselineAvailability.AvailableCodingKeys, MEMORY[0x1E69E6F58]);
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v50 = &v46 - v5;
  sub_1CFDAF41C(0, &qword_1EDC31730, sub_1CFDB4260, &type metadata for SleepingSampleBaselineAvailability.InsufficientDataCodingKeys, v2);
  v52 = *(v6 - 8);
  v53 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v49 = &v46 - v8;
  sub_1CFDA7AD0(0);
  v56 = v9;
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v48 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v13);
  v51 = &v46 - v14;
  sub_1CFDAF41C(0, &qword_1EDC31740, sub_1CFDAF53C, &type metadata for SleepingSampleBaselineAvailability.NoDataCodingKeys, v2);
  v16 = v15;
  v47 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v46 - v18;
  v20 = type metadata accessor for SleepingSampleBaselineAvailability(0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDAF41C(0, &qword_1EDC31748, sub_1CFDAF484, &type metadata for SleepingSampleBaselineAvailability.CodingKeys, v2);
  v25 = *(v24 - 8);
  v60 = v24;
  v61 = v25;
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v46 - v27;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFDAF484();
  v59 = v28;
  sub_1CFE311A4();
  sub_1CFDAF4D8(v57, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v38 = v47;
    v62 = 0;
    sub_1CFDAF53C();
    v34 = v59;
    v35 = v60;
    sub_1CFE30FF4();
    sub_1CFE31044();
    (*(v38 + 8))(v19, v16);
    return (*(v61 + 8))(v34, v35);
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1CFDAD680(0);
    v57 = *&v23[*(v30 + 48)];
    v31 = *&v23[*(v30 + 64)];
    v32 = v51;
    sub_1CFDB46C8(v23, v51, sub_1CFDA7AD0);
    v66 = 1;
    sub_1CFDB4260();
    v33 = v49;
    v34 = v59;
    v35 = v60;
    sub_1CFE30FF4();
    v65 = 0;
    sub_1CFDAB888(&qword_1EDC31880, &qword_1EDC318C8, MEMORY[0x1E696B420], MEMORY[0x1E69E66B0]);
    v36 = v53;
    v37 = v58;
    sub_1CFE31054();
    if (!v37)
    {
      v58 = v31;
      v64 = 1;
      sub_1CFE31044();
      v63 = 2;
      sub_1CFE31044();
    }

    (*(v52 + 8))(v33, v36);
    sub_1CFE0E6B8(v32, sub_1CFDA7AD0);
    return (*(v61 + 8))(v34, v35);
  }

  sub_1CFDCB868(0);
  v40 = v48;
  sub_1CFDB46C8(v23, v48, sub_1CFDA7AD0);
  v69 = 2;
  sub_1CFDB415C();
  v41 = v50;
  v43 = v59;
  v42 = v60;
  sub_1CFE30FF4();
  v68 = 0;
  sub_1CFDAB888(&qword_1EDC31880, &qword_1EDC318C8, MEMORY[0x1E696B420], MEMORY[0x1E69E66B0]);
  v44 = v55;
  v45 = v58;
  sub_1CFE31054();
  if (!v45)
  {
    v67 = 1;
    sub_1CFE31044();
  }

  (*(v54 + 8))(v41, v44);
  sub_1CFE0E6B8(v40, sub_1CFDA7AD0);
  return (*(v61 + 8))(v43, v42);
}

void sub_1CFDAF41C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1CFDAF484()
{
  result = qword_1EDC32688[0];
  if (!qword_1EDC32688[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC32688);
  }

  return result;
}

uint64_t sub_1CFDAF4D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepingSampleBaselineAvailability(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1CFDAF53C()
{
  result = qword_1EDC32670;
  if (!qword_1EDC32670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32670);
  }

  return result;
}

uint64_t type metadata accessor for SleepingSampleBaseline(uint64_t a1)
{
  result = qword_1EDC32C60;
  if (!qword_1EDC32C60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CFDAF62C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1CFDAF694()
{
  result = qword_1EDC32760[0];
  if (!qword_1EDC32760[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC32760);
  }

  return result;
}

unint64_t sub_1CFDAF700()
{
  result = qword_1EDC328F0;
  if (!qword_1EDC328F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC328F0);
  }

  return result;
}

uint64_t sub_1CFDAF754(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1CFDAFA2C(0, &qword_1EDC317F8, MEMORY[0x1E69E6EC8]);
  v35 = v4;
  result = sub_1CFE30F04();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v36 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v35 & 1) == 0)
      {
        v23 = v21;
        swift_unknownObjectRetain();
      }

      sub_1CFE30924();
      sub_1CFE31144();
      sub_1CFE30984();
      v24 = sub_1CFE31184();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v34;
      v12 = v36;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v36 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_1CFDAFA2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for HKFeatureIdentifier(255);
    v7 = v6;
    v8 = sub_1CFDFE0B8();
    v9 = sub_1CFDA5A24(&qword_1EDC32510, type metadata accessor for HKFeatureIdentifier, &unk_1CFE322F8);
    v10 = a3(a1, v7, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

id sub_1CFDAFAE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CFDAFB4C(a1);
  v5 = [objc_allocWithZone(MEMORY[0x1E696C178]) initWithFeatureIdentifier:a1 healthStore:a2 contextConstraint:v4];

  return v5;
}

id sub_1CFDAFB4C(uint64_t a1)
{
  v1 = MEMORY[0x1E69E6F90];
  sub_1CFDA5C94(0, &qword_1EDC31710, sub_1CFDB0404, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CFE33E10;
  v3 = *MEMORY[0x1E696B8C0];
  *(inited + 32) = *MEMORY[0x1E696B8C0];
  v4 = objc_opt_self();
  sub_1CFDA5C94(0, &qword_1EDC31708, type metadata accessor for HKFeatureAvailabilityContext, v1);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_1CFE35FE0;
  v6 = *MEMORY[0x1E696B7D8];
  *(v5 + 32) = *MEMORY[0x1E696B7D8];
  v7 = v3;
  v8 = v6;
  v9 = sub_1CFE308F4();
  v10 = *MEMORY[0x1E696B808];
  *(v5 + 40) = v9;
  *(v5 + 48) = v10;
  v11 = v10;
  sub_1CFDB0104(v5);
  swift_setDeallocating();
  type metadata accessor for HKFeatureAvailabilityContext(0);
  swift_arrayDestroy();
  sub_1CFDA5A24(&qword_1EDC31850, type metadata accessor for HKFeatureAvailabilityContext, &unk_1CFE32494);
  v12 = sub_1CFE30B74();

  v13 = [v4 onlySomeContexts_];

  v14 = *MEMORY[0x1E696B8B8];
  *(inited + 40) = v13;
  *(inited + 48) = v14;
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_1CFE324E0;
  v16 = *MEMORY[0x1E696B800];
  *(v15 + 32) = *MEMORY[0x1E696B800];
  v17 = v16;
  v18 = v14;
  sub_1CFDB0104(v15);
  swift_setDeallocating();
  sub_1CFDB03A8(v15 + 32);
  v19 = sub_1CFE30B74();

  v20 = [v4 onlySomeContexts_];

  v21 = *MEMORY[0x1E696B8B0];
  *(inited + 56) = v20;
  *(inited + 64) = v21;
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1CFE324E0;
  *(v22 + 32) = v17;
  v23 = v17;
  v24 = v21;
  sub_1CFDB0104(v22);
  swift_setDeallocating();
  sub_1CFDB03A8(v22 + 32);
  v25 = sub_1CFE30B74();

  v26 = [v4 onlySomeContexts_];

  v27 = *MEMORY[0x1E696B8C8];
  *(inited + 72) = v26;
  *(inited + 80) = v27;
  v28 = swift_initStackObject();
  *(v28 + 16) = xmmword_1CFE324E0;
  *(v28 + 32) = v23;
  v29 = v27;
  sub_1CFDB0104(v28);
  swift_setDeallocating();
  sub_1CFDB03A8(v28 + 32);
  v30 = sub_1CFE30B74();

  v31 = [v4 onlySomeContexts_];

  v32 = *MEMORY[0x1E696B8A8];
  *(inited + 88) = v31;
  *(inited + 96) = v32;
  v33 = swift_initStackObject();
  *(v33 + 16) = xmmword_1CFE324E0;
  v34 = *MEMORY[0x1E696B7F8];
  *(v33 + 32) = *MEMORY[0x1E696B7F8];
  v35 = v32;
  v36 = v34;
  sub_1CFDB0104(v33);
  swift_setDeallocating();
  sub_1CFDB03A8(v33 + 32);
  v37 = sub_1CFE30B74();

  v38 = [v4 onlySomeContexts_];

  *(inited + 104) = v38;
  v39 = sub_1CFDA5CF8(inited, &unk_1EDC317E8, &qword_1EDC31830, 0x1E696C140);
  swift_setDeallocating();
  sub_1CFDB0404(0);
  swift_arrayDestroy();
  if (*(v39 + 16) && (v40 = sub_1CFDA54DC(a1), (v41 & 1) != 0))
  {
    v42 = *(*(v39 + 56) + 8 * v40);

    return v42;
  }

  else
  {

    v44 = [v4 allContexts];

    return v44;
  }
}

uint64_t sub_1CFDB007C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

void *sub_1CFDB00B0@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v5 = **(v1 + 32);
  result = v3(&v6, &v5);
  *a1 = v6;
  return result;
}

uint64_t sub_1CFDB0104(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1CFDB02EC(0);
    v3 = sub_1CFE30D84();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_1CFE30924();
      sub_1CFE31144();
      v27 = v7;
      sub_1CFE30984();
      v8 = sub_1CFE31184();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_1CFE30924();
        v18 = v17;
        if (v16 == sub_1CFE30924() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_1CFE310B4();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

void sub_1CFDB02EC(uint64_t a1)
{
  if (!qword_1EDC31800)
  {
    type metadata accessor for HKFeatureAvailabilityContext(255);
    sub_1CFE2F770(&qword_1EDC31850, type metadata accessor for HKFeatureAvailabilityContext, &unk_1CFE32494);
    v1 = sub_1CFE30D94();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC31800);
    }
  }
}

uint64_t sub_1CFDB03A8(uint64_t a1)
{
  type metadata accessor for HKFeatureAvailabilityContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1CFDB0404(uint64_t a1)
{
  if (!qword_1EDC31858)
  {
    type metadata accessor for HKFeatureIdentifier(255);
    sub_1CFDA6E64(255, &qword_1EDC31830, 0x1E696C140);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC31858);
    }
  }
}

uint64_t SleepingSampleDaySummary.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v59 = type metadata accessor for SleepingSampleBaselineComparison(0);
  v4 = MEMORY[0x1EEE9AC00](v59, v3);
  v54 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v55 = &v50 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v56 = &v50 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v57 = &v50 - v14;
  MEMORY[0x1EEE9AC00](v13, v15);
  v58 = &v50 - v16;
  sub_1CFDA97E8(0, &qword_1EDC32C70, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v60 = &v50 - v19;
  sub_1CFDAB9C4(0, &qword_1EDC32C90, MEMORY[0x1E69E66A8]);
  v63 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v62 = &v50 - v22;
  v65 = sub_1CFE307E4();
  v61 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65, v23);
  v66 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDACAFC(0, &qword_1EDC32068, MEMORY[0x1E69E6F48]);
  v67 = v25;
  v64 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v50 - v27;
  v29 = type metadata accessor for SleepingSampleDaySummary(0);
  v31 = MEMORY[0x1EEE9AC00](v29, v30);
  v33 = &v50 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v31 + 24);
  v70 = v34;
  v35 = sub_1CFE30314();
  (*(*(v35 - 8) + 56))(&v33[v34], 1, 1, v35);
  v36 = &v33[*(v29 + 28)];
  *v36 = 0;
  v36[8] = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFDAB17C();
  v68 = v28;
  v37 = v69;
  sub_1CFE31194();
  v38 = v70;
  if (v37)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1CFDA9B74(&v33[v38], &qword_1EDC32C70, MEMORY[0x1E6969530]);
  }

  else
  {
    v69 = v35;
    v52 = v36;
    v39 = v62;
    LOBYTE(v71) = 0;
    sub_1CFDA7A2C(&qword_1EDC32108, MEMORY[0x1E696B418], MEMORY[0x1E696B440]);
    v40 = v65;
    sub_1CFE30FD4();
    (*(v61 + 32))(v33, v66, v40);
    LOBYTE(v71) = 1;
    sub_1CFDAB918(&unk_1EDC320C8, &qword_1EDC32108, MEMORY[0x1E696B440], MEMORY[0x1E69E66E0]);
    sub_1CFE30FD4();
    v51 = v29;
    sub_1CFDF72E0(v39, &v33[*(v29 + 20)]);
    LOBYTE(v71) = 2;
    sub_1CFDA7A2C(&qword_1EDC32480, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    v41 = v60;
    sub_1CFE30F94();
    sub_1CFDB1078(v41, &v33[v70]);
    v73 = 3;
    sub_1CFDB110C();
    sub_1CFE30F94();
    v43 = v72;
    v44 = v52;
    *v52 = v71;
    v44[8] = v43;
    LOBYTE(v71) = 4;
    sub_1CFDA7A2C(&qword_1EDC321C8, type metadata accessor for SleepingSampleBaselineComparison, &protocol conformance descriptor for SleepingSampleBaselineComparison);
    v45 = v58;
    sub_1CFE30FD4();
    sub_1CFDB4880(v45, &v33[v51[8]], type metadata accessor for SleepingSampleBaselineComparison);
    LOBYTE(v71) = 5;
    v46 = v57;
    sub_1CFE30FD4();
    sub_1CFDB4880(v46, &v33[v51[9]], type metadata accessor for SleepingSampleBaselineComparison);
    LOBYTE(v71) = 6;
    v47 = v56;
    sub_1CFE30FD4();
    sub_1CFDB4880(v47, &v33[v51[10]], type metadata accessor for SleepingSampleBaselineComparison);
    LOBYTE(v71) = 7;
    v48 = v55;
    sub_1CFE30FD4();
    sub_1CFDB4880(v48, &v33[v51[11]], type metadata accessor for SleepingSampleBaselineComparison);
    LOBYTE(v71) = 8;
    v49 = v54;
    sub_1CFE30FD4();
    (*(v64 + 8))(v68, v67);
    sub_1CFDB4880(v49, &v33[v51[12]], type metadata accessor for SleepingSampleBaselineComparison);
    sub_1CFDA9900(v33, v53, type metadata accessor for SleepingSampleDaySummary);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1CFDA99B4(v33, type metadata accessor for SleepingSampleDaySummary);
  }
}

unint64_t sub_1CFDB0FCC()
{
  result = qword_1EDC32838;
  if (!qword_1EDC32838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32838);
  }

  return result;
}

unint64_t sub_1CFDB1024()
{
  result = qword_1EDC32840;
  if (!qword_1EDC32840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32840);
  }

  return result;
}

uint64_t sub_1CFDB1078(uint64_t a1, uint64_t a2)
{
  sub_1CFDA97E8(0, &qword_1EDC32C70, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1CFDB110C()
{
  result = qword_1EDC32448;
  if (!qword_1EDC32448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32448);
  }

  return result;
}

void *sub_1CFDB11C0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t SleepingSampleBaselineComparison.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  sub_1CFDB177C(0, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v30 = &v28 - v5;
  v31 = type metadata accessor for SleepingSampleBaselineAvailability(0);
  MEMORY[0x1EEE9AC00](v31, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for SleepingSampleAggregate(0);
  MEMORY[0x1EEE9AC00](v32, v9);
  v33 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDAF62C(0, &qword_1EDC32060, sub_1CFDAF694, &type metadata for SleepingSampleBaselineComparison.CodingKeys, MEMORY[0x1E69E6F48]);
  v34 = *(v11 - 8);
  v35 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v28 - v13;
  v15 = type metadata accessor for SleepingSampleBaselineComparison(0);
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v17 + 24);
  v21 = type metadata accessor for SleepingSampleBaseline(0);
  v22 = *(*(v21 - 8) + 56);
  v38 = v19;
  v39 = v20;
  v22(&v19[v20], 1, 1, v21);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFDAF694();
  v36 = v14;
  v23 = v37;
  sub_1CFE31194();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1CFDC87EC(&v38[v39]);
  }

  else
  {
    v28 = v21;
    v37 = v15;
    v42 = 0;
    sub_1CFDAEB0C(&qword_1EDC32450, type metadata accessor for SleepingSampleAggregate, &protocol conformance descriptor for SleepingSampleAggregate);
    v24 = v33;
    sub_1CFE30FD4();
    v25 = v38;
    sub_1CFDB3634(v24, v38, type metadata accessor for SleepingSampleAggregate);
    v41 = 1;
    sub_1CFDAEB0C(&qword_1EDC321C0, type metadata accessor for SleepingSampleBaselineAvailability, &protocol conformance descriptor for SleepingSampleBaselineAvailability);
    sub_1CFE30FD4();
    sub_1CFDB3634(v8, v25 + *(v37 + 20), type metadata accessor for SleepingSampleBaselineAvailability);
    v40 = 2;
    sub_1CFDAEB0C(&qword_1EDC32468, type metadata accessor for SleepingSampleBaseline, &protocol conformance descriptor for SleepingSampleBaseline);
    v26 = v30;
    sub_1CFE30F94();
    (*(v34 + 8))(v36, v35);
    sub_1CFDB4730(v26, v25 + v39);
    sub_1CFDB47B0(v25, v29, type metadata accessor for SleepingSampleBaselineComparison);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1CFDB34A4(v25, type metadata accessor for SleepingSampleBaselineComparison);
  }
}

void sub_1CFDB177C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1CFE30C74();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1CFDB17D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1CFE30C74();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1CFDB1824(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1CFE30C74();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1CFDB187C()
{
  result = qword_1EDC32750;
  if (!qword_1EDC32750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32750);
  }

  return result;
}

unint64_t sub_1CFDB18D4()
{
  result = qword_1EDC32758;
  if (!qword_1EDC32758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32758);
  }

  return result;
}

uint64_t sub_1CFDB193C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1CFDAA8D8(0, qword_1EDC32CB8, &qword_1EDC32C80, 0x1E696C348);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_1CFDAA8D8(0, qword_1EDC32930, &qword_1EDC32918, 0x1E696C350);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t SleepingSampleAggregate.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  sub_1CFDA9D60(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v39 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDB2328(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDAD280(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v41 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1CFE304B4();
  v42 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v12);
  v44 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CFE307E4();
  v43 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v45 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDAE3E8(0, &qword_1EDC320A0, sub_1CFDAF700, &type metadata for SleepingSampleAggregate.CodingKeys, MEMORY[0x1E69E6F48]);
  v49 = v17;
  v46 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v37 - v19;
  v21 = type metadata accessor for SleepingSampleAggregate(0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFDAF700();
  v48 = v20;
  v25 = v50;
  sub_1CFE31194();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v44;
  v27 = a1;
  v28 = v47;
  v57 = 0;
  sub_1CFDADC34(&qword_1EDC32108, MEMORY[0x1E696B418], MEMORY[0x1E696B440]);
  v29 = v45;
  sub_1CFE30FD4();
  (*(v43 + 32))(v24, v29, v14);
  v56 = 1;
  sub_1CFDADC34(&qword_1EDC32478, MEMORY[0x1E6969AE8], MEMORY[0x1E6969B08]);
  sub_1CFE30FD4();
  v37 = v14;
  (*(v42 + 32))(&v24[v21[5]], v26, v28);
  sub_1CFDAC3A0(0);
  v55 = 2;
  sub_1CFDADC34(&unk_1EDC32118, sub_1CFDAC3A0, MEMORY[0x1E696B390]);
  v30 = v41;
  v45 = 0;
  sub_1CFE30F94();
  v50 = v27;
  v31 = v24;
  sub_1CFDAD564(v30, &v24[v21[6]], sub_1CFDAD280);
  sub_1CFE30014();
  v54 = 3;
  sub_1CFDADC34(&unk_1EDC32488, MEMORY[0x1E6968130], MEMORY[0x1E6968150]);
  v32 = v40;
  sub_1CFE30F94();
  v33 = v21;
  sub_1CFDAD564(v32, v31 + v21[7], sub_1CFDB2328);
  sub_1CFE30314();
  v53 = 4;
  sub_1CFDADC34(&qword_1EDC32480, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v34 = v39;
  sub_1CFE30F94();
  v35 = v46;
  sub_1CFDAD564(v34, v31 + v33[8], sub_1CFDA9D60);
  v51 = 5;
  sub_1CFDB2424();
  sub_1CFE30FD4();
  (*(v35 + 8))(v48, v49);
  *(v31 + v33[9]) = v52;
  sub_1CFDB343C(v31, v38, type metadata accessor for SleepingSampleAggregate);
  __swift_destroy_boxed_opaque_existential_1(v50);
  return sub_1CFDB35D4(v31, type metadata accessor for SleepingSampleAggregate);
}

unint64_t sub_1CFDB2378()
{
  result = qword_1EDC328E0;
  if (!qword_1EDC328E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC328E0);
  }

  return result;
}

unint64_t sub_1CFDB23D0()
{
  result = qword_1EDC328E8;
  if (!qword_1EDC328E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC328E8);
  }

  return result;
}

unint64_t sub_1CFDB2424()
{
  result = qword_1EDC32458;
  if (!qword_1EDC32458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32458);
  }

  return result;
}

uint64_t SleepingSampleAggregate.Availability.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1CFDAE3E8(0, &qword_1EDC32088, sub_1CFDB2C64, &type metadata for SleepingSampleAggregate.Availability.AvailableCodingKeys, MEMORY[0x1E69E6F48]);
  v49 = *(v4 - 8);
  v50 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v57 = &v43 - v6;
  sub_1CFDAE3E8(0, &qword_1EDC32078, sub_1CFDB2D68, &type metadata for SleepingSampleAggregate.Availability.EstablishingBaselineDataCodingKeys, v3);
  v51 = v7;
  v48 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v56 = &v43 - v9;
  sub_1CFDAE3E8(0, &qword_1EDC32070, sub_1CFDB2E6C, &type metadata for SleepingSampleAggregate.Availability.InsufficientBaselineDataCodingKeys, v3);
  v47 = v10;
  v45 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v55 = &v43 - v12;
  sub_1CFDAE3E8(0, &qword_1EDC32080, sub_1CFDB2F70, &type metadata for SleepingSampleAggregate.Availability.InsufficientDataCodingKeys, v3);
  v46 = v13;
  v44 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v54 = &v43 - v15;
  sub_1CFDAE3E8(0, &qword_1EDC32090, sub_1CFDAE4A4, &type metadata for SleepingSampleAggregate.Availability.NoDataCodingKeys, v3);
  v17 = v16;
  v43 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v43 - v19;
  sub_1CFDAE3E8(0, &qword_1EDC32098, sub_1CFDAE450, &type metadata for SleepingSampleAggregate.Availability.CodingKeys, v3);
  v22 = v21;
  v53 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v43 - v24;
  v26 = a1[3];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_1CFDAE450();
  v27 = v59;
  sub_1CFE31194();
  if (v27)
  {
    goto LABEL_9;
  }

  v59 = v17;
  v29 = v54;
  v28 = v55;
  v30 = v56;
  v31 = v57;
  v32 = sub_1CFE30FE4();
  v33 = (2 * *(v32 + 16)) | 1;
  v60 = v32;
  v61 = v32 + 32;
  v62 = 0;
  v63 = v33;
  v34 = sub_1CFDB48E8();
  v35 = v25;
  if (v34 == 5 || v62 != v63 >> 1)
  {
    v38 = sub_1CFE30DF4();
    swift_allocError();
    v40 = v39;
    sub_1CFDCB7AC(0);
    *v40 = &type metadata for SleepingSampleAggregate.Availability;
    sub_1CFE30F74();
    sub_1CFE30DD4();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x1E69E6AF8], v38);
    swift_willThrow();
    (*(v53 + 8))(v25, v22);
    swift_unknownObjectRelease();
LABEL_9:
    v41 = v58;
    return __swift_destroy_boxed_opaque_existential_1(v41);
  }

  v64 = v34;
  if (v34 <= 1u)
  {
    if (v34)
    {
      v65 = 1;
      sub_1CFDB2F70();
      sub_1CFE30F64();
      (*(v44 + 8))(v29, v46);
    }

    else
    {
      v65 = 0;
      sub_1CFDAE4A4();
      sub_1CFE30F64();
      (*(v43 + 8))(v20, v59);
    }

    (*(v53 + 8))(v25, v22);
    swift_unknownObjectRelease();
    v41 = v58;
    v36 = v52;
  }

  else
  {
    v36 = v52;
    if (v34 == 2)
    {
      v65 = 2;
      sub_1CFDB2E6C();
      sub_1CFE30F64();
      v37 = v53;
      (*(v45 + 8))(v28, v47);
    }

    else
    {
      v37 = v53;
      if (v34 == 3)
      {
        v65 = 3;
        sub_1CFDB2D68();
        sub_1CFE30F64();
        (*(v48 + 8))(v30, v51);
      }

      else
      {
        v65 = 4;
        sub_1CFDB2C64();
        sub_1CFE30F64();
        (*(v49 + 8))(v31, v50);
      }
    }

    (*(v37 + 8))(v35, v22);
    swift_unknownObjectRelease();
    v41 = v58;
  }

  *v36 = v64;
  return __swift_destroy_boxed_opaque_existential_1(v41);
}

unint64_t sub_1CFDB2C64()
{
  result = qword_1EDC328A8;
  if (!qword_1EDC328A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC328A8);
  }

  return result;
}

unint64_t sub_1CFDB2CBC()
{
  result = qword_1EDC32898;
  if (!qword_1EDC32898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32898);
  }

  return result;
}

unint64_t sub_1CFDB2D14()
{
  result = qword_1EDC328A0;
  if (!qword_1EDC328A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC328A0);
  }

  return result;
}

unint64_t sub_1CFDB2D68()
{
  result = qword_1EDC32878;
  if (!qword_1EDC32878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32878);
  }

  return result;
}

unint64_t sub_1CFDB2DC0()
{
  result = qword_1EDC32868;
  if (!qword_1EDC32868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32868);
  }

  return result;
}

unint64_t sub_1CFDB2E18()
{
  result = qword_1EDC32870;
  if (!qword_1EDC32870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32870);
  }

  return result;
}

unint64_t sub_1CFDB2E6C()
{
  result = qword_1EDC32860;
  if (!qword_1EDC32860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32860);
  }

  return result;
}

unint64_t sub_1CFDB2EC4()
{
  result = qword_1EDC32850;
  if (!qword_1EDC32850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32850);
  }

  return result;
}

unint64_t sub_1CFDB2F1C()
{
  result = qword_1EDC32858;
  if (!qword_1EDC32858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32858);
  }

  return result;
}

unint64_t sub_1CFDB2F70()
{
  result = qword_1EDC32890;
  if (!qword_1EDC32890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32890);
  }

  return result;
}

unint64_t sub_1CFDB2FC8()
{
  result = qword_1EDC32880;
  if (!qword_1EDC32880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32880);
  }

  return result;
}

unint64_t sub_1CFDB3020()
{
  result = qword_1EDC32888;
  if (!qword_1EDC32888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32888);
  }

  return result;
}

unint64_t sub_1CFDB3078()
{
  result = qword_1EDC328B0;
  if (!qword_1EDC328B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC328B0);
  }

  return result;
}

unint64_t sub_1CFDB30D0()
{
  result = qword_1EDC328B8;
  if (!qword_1EDC328B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC328B8);
  }

  return result;
}

unint64_t sub_1CFDB3128()
{
  result = qword_1EDC328C8;
  if (!qword_1EDC328C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC328C8);
  }

  return result;
}

unint64_t sub_1CFDB3180()
{
  result = qword_1EDC328D0;
  if (!qword_1EDC328D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC328D0);
  }

  return result;
}

uint64_t sub_1CFDB31D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1CFDB31FC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1CFDB31FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461446F6ELL && a2 == 0xE600000000000000;
  if (v4 || (sub_1CFE310B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001CFE38D80 == a2 || (sub_1CFE310B4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001CFE38F80 == a2 || (sub_1CFE310B4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001CFE38FA0 == a2 || (sub_1CFE310B4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C62616C69617661 && a2 == 0xE900000000000065)
  {

    return 4;
  }

  else
  {
    v6 = sub_1CFE310B4();

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

uint64_t sub_1CFDB33BC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1CFDA9784(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1CFDB343C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFDB34A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CFDB3504(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CFDB3564(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1CFDA9784(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1CFDB35D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CFDB3634(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFDB369C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t SleepingSampleBaselineAvailability.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1CFDAF41C(0, &qword_1EDC32048, sub_1CFDB415C, &type metadata for SleepingSampleBaselineAvailability.AvailableCodingKeys, MEMORY[0x1E69E6F48]);
  v79 = v4;
  v81 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v86 = &v72 - v6;
  sub_1CFDAF41C(0, &qword_1EDC32040, sub_1CFDB4260, &type metadata for SleepingSampleBaselineAvailability.InsufficientDataCodingKeys, v3);
  v80 = v7;
  v82 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v85 = &v72 - v9;
  sub_1CFDAF41C(0, &qword_1EDC32050, sub_1CFDAF53C, &type metadata for SleepingSampleBaselineAvailability.NoDataCodingKeys, v3);
  v11 = *(v10 - 8);
  v77 = v10;
  v78 = v11;
  MEMORY[0x1EEE9AC00](v10, v12);
  v83 = &v72 - v13;
  sub_1CFDAF41C(0, &qword_1EDC32058, sub_1CFDAF484, &type metadata for SleepingSampleBaselineAvailability.CodingKeys, v3);
  v84 = v14;
  v88 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v72 - v16;
  v18 = type metadata accessor for SleepingSampleBaselineAvailability(0);
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v22 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v20, v23);
  v26 = &v72 - v25;
  v28 = MEMORY[0x1EEE9AC00](v24, v27);
  v30 = &v72 - v29;
  MEMORY[0x1EEE9AC00](v28, v31);
  v33 = &v72 - v32;
  v34 = a1[3];
  v90 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v34);
  sub_1CFDAF484();
  v35 = v89;
  sub_1CFE31194();
  if (!v35)
  {
    v73 = v30;
    v36 = v83;
    v37 = v84;
    v74 = v22;
    v75 = v26;
    v38 = v85;
    v39 = v86;
    v76 = v33;
    v89 = v18;
    v40 = v87;
    v41 = sub_1CFE30FE4();
    v42 = (2 * *(v41 + 16)) | 1;
    v91 = v41;
    v92 = v41 + 32;
    v93 = 0;
    v94 = v42;
    v43 = sub_1CFDB4610();
    if (v43 == 3 || v93 != v94 >> 1)
    {
      v48 = sub_1CFE30DF4();
      swift_allocError();
      v50 = v49;
      sub_1CFDCB7AC(0);
      *v50 = v89;
      sub_1CFE30F74();
      sub_1CFE30DD4();
      (*(*(v48 - 8) + 104))(v50, *MEMORY[0x1E69E6AF8], v48);
      swift_willThrow();
      (*(v88 + 8))(v17, v37);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v43)
      {
        if (v43 == 1)
        {
          v95 = 1;
          sub_1CFDB4260();
          v44 = v38;
          sub_1CFE30F64();
          v45 = v40;
          sub_1CFDA7AD0(0);
          v95 = 0;
          sub_1CFDAB888(&unk_1EDC320C8, &qword_1EDC32108, MEMORY[0x1E696B440], MEMORY[0x1E69E66E0]);
          v46 = v80;
          sub_1CFE30FD4();
          v47 = v88;
          v95 = 1;
          v59 = sub_1CFE30FC4();
          sub_1CFDAD680(0);
          v60 = v44;
          v62 = v61;
          *&v75[*(v61 + 48)] = v59;
          v95 = 2;
          v67 = sub_1CFE30FC4();
          v68 = *(v62 + 64);
          (*(v82 + 8))(v60, v46);
          (*(v47 + 8))(v17, v37);
          swift_unknownObjectRelease();
          v69 = v75;
          *&v75[v68] = v67;
          swift_storeEnumTagMultiPayload();
          v70 = v76;
          v71 = v69;
        }

        else
        {
          v95 = 2;
          sub_1CFDB415C();
          v55 = v39;
          sub_1CFE30F64();
          v45 = v40;
          sub_1CFDA7AD0(0);
          v95 = 0;
          sub_1CFDAB888(&unk_1EDC320C8, &qword_1EDC32108, MEMORY[0x1E696B440], MEMORY[0x1E69E66E0]);
          v56 = v79;
          sub_1CFE30FD4();
          v95 = 1;
          v63 = sub_1CFE30FC4();
          sub_1CFDCB868(0);
          v65 = *(v64 + 48);
          (*(v81 + 8))(v55, v56);
          (*(v88 + 8))(v17, v37);
          swift_unknownObjectRelease();
          v66 = v74;
          *&v74[v65] = v63;
          swift_storeEnumTagMultiPayload();
          v71 = v66;
          v70 = v76;
        }
      }

      else
      {
        v95 = 0;
        sub_1CFDAF53C();
        sub_1CFE30F64();
        v70 = v76;
        v52 = v77;
        v53 = sub_1CFE30FC4();
        v54 = v88;
        v57 = v53;
        (*(v78 + 8))(v36, v52);
        (*(v54 + 8))(v17, v37);
        swift_unknownObjectRelease();
        v58 = v73;
        *v73 = v57;
        swift_storeEnumTagMultiPayload();
        v71 = v58;
        v45 = v40;
      }

      sub_1CFDB46C8(v71, v70, type metadata accessor for SleepingSampleBaselineAvailability);
      sub_1CFDB46C8(v70, v45, type metadata accessor for SleepingSampleBaselineAvailability);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v90);
}

unint64_t sub_1CFDB415C()
{
  result = qword_1EDC32658;
  if (!qword_1EDC32658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32658);
  }

  return result;
}

unint64_t sub_1CFDB41B4()
{
  result = qword_1EDC32648;
  if (!qword_1EDC32648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32648);
  }

  return result;
}

unint64_t sub_1CFDB420C()
{
  result = qword_1EDC32650;
  if (!qword_1EDC32650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32650);
  }

  return result;
}

unint64_t sub_1CFDB4260()
{
  result = qword_1EDC32640;
  if (!qword_1EDC32640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32640);
  }

  return result;
}

unint64_t sub_1CFDB42B8()
{
  result = qword_1EDC32630;
  if (!qword_1EDC32630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32630);
  }

  return result;
}

unint64_t sub_1CFDB4310()
{
  result = qword_1EDC32638;
  if (!qword_1EDC32638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32638);
  }

  return result;
}

unint64_t sub_1CFDB4368()
{
  result = qword_1EDC32660;
  if (!qword_1EDC32660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32660);
  }

  return result;
}

unint64_t sub_1CFDB43C0()
{
  result = qword_1EDC32668;
  if (!qword_1EDC32668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32668);
  }

  return result;
}

unint64_t sub_1CFDB4418()
{
  result = qword_1EDC32678;
  if (!qword_1EDC32678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32678);
  }

  return result;
}

unint64_t sub_1CFDB4470()
{
  result = qword_1EDC32680;
  if (!qword_1EDC32680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32680);
  }

  return result;
}

uint64_t sub_1CFDB44C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1CFDB44EC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1CFDB44EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461446F6ELL && a2 == 0xE600000000000000;
  if (v4 || (sub_1CFE310B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001CFE38D80 == a2 || (sub_1CFE310B4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C62616C69617661 && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = sub_1CFE310B4();

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

uint64_t sub_1CFDB4618()
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

_WORD *storeEnumTagSinglePayload for TrainingLoadChronicBaseline.AvailableCodingKeys(_WORD *result, int a2, int a3)
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

uint64_t sub_1CFDB46C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFDB4730(uint64_t a1, uint64_t a2)
{
  sub_1CFDB177C(0, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFDB47B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFDB4818(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFDB4880(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFDB48E8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
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

uint64_t sub_1CFDB491C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a5;
  v7 = a4;
  v9 = sub_1CFE30354();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CFE30A84();
  sub_1CFE30344();
  v15 = a1;
  SleepingSampleDaySummaryQuery.client_deliverSleepingSampleDaySummaries(_:clearPending:isFinalBatch:queryUUID:)(v14, v7, v6, v13);

  return (*(v10 + 8))(v13, v9);
}

uint64_t SleepingSampleDaySummaryQuery.client_deliverSleepingSampleDaySummaries(_:clearPending:isFinalBatch:queryUUID:)(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v30 = a2;
  v31 = a3;
  ObjectType = swift_getObjectType();
  v28 = *v4;
  v27 = *MEMORY[0x1E69E7D40];
  v33 = sub_1CFE30634();
  v36 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CFE30654();
  v34 = *(v10 - 8);
  v35 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CFE30354();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);

  v29 = [v4 queue];
  (*(v15 + 16))(&v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v14);
  v18 = (*(v15 + 80) + 57) & ~*(v15 + 80);
  v19 = swift_allocObject();
  v20 = v27 & v28;
  *(v19 + 16) = *((v27 & v28) + 0x50);
  *(v19 + 24) = *(v20 + 88);
  *(v19 + 32) = a1;
  v21 = v31;
  *(v19 + 40) = v30;
  *(v19 + 48) = v4;
  *(v19 + 56) = v21;
  (*(v15 + 32))(v19 + v18, &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  *(v19 + ((v16 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  aBlock[4] = sub_1CFDB4F4C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CFDAA484;
  aBlock[3] = &block_descriptor_6_0;
  v22 = _Block_copy(aBlock);
  v23 = v4;
  sub_1CFE30644();
  v37 = MEMORY[0x1E69E7CC0];
  sub_1CFDA7954(qword_1EDC32128, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1CFDA631C(0, &qword_1EDC32100, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1CFDAA3FC();
  v24 = v33;
  sub_1CFE30D04();
  v25 = v29;
  MEMORY[0x1D38762F0](0, v13, v9, v22);
  _Block_release(v22);

  (*(v36 + 8))(v9, v24);
  (*(v34 + 8))(v13, v35);
}

uint64_t sub_1CFDB4E74(uint64_t a1, uint64_t a2)
{
  v3 = sub_1CFE30354();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 57) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v7 + 8, v5 | 7);
}

void sub_1CFDB4F4C(uint64_t a1, uint64_t a2)
{
  v3 = *(sub_1CFE30354() - 8);
  v4 = (*(v3 + 80) + 57) & ~*(v3 + 80);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v8 = *(v2 + 56);
  v9 = *(v2 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1CFDB4FE8(v5, v6, v7, v8, v2 + v4, v9);
}

void sub_1CFDB4FE8(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, uint64_t a5, uint64_t a6)
{
  v55 = a6;
  v57 = a5;
  v56 = a4;
  v7 = a2;
  v9 = *a3;
  v10 = *MEMORY[0x1E69E7D40];
  v11 = sub_1CFE30354();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v54 - v18;
  v64 = a1;
  v20 = *((v10 & v9) + 0x50);
  v59 = v20;
  v60 = *((v10 & v9) + 0x58);
  v21 = *(v60 + 24);
  v22 = *(v60 + 8);
  v61[1] = v20;
  v62 = v22;
  v63 = v21;
  sub_1CFE306D4();
  v23 = sub_1CFE30AE4();
  WitnessTable = swift_getWitnessTable();
  v26 = sub_1CFDB55DC(sub_1CFDB59FC, v58, v23, v20, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v25);
  v27 = v26;
  if (v7)
  {
    v28 = qword_1EDC327F0;
    swift_beginAccess();
    *(a3 + v28) = v27;
  }

  else
  {
    v64 = v26;
    swift_beginAccess();
    sub_1CFE30AE4();
    swift_getWitnessTable();
    sub_1CFE30AD4();
    swift_endAccess();
  }

  v29 = v11;
  if (v56)
  {
    if (qword_1EDC32570 != -1)
    {
      swift_once();
    }

    v30 = sub_1CFE30624();
    __swift_project_value_buffer(v30, qword_1EDC32578);
    (*(v12 + 16))(v19, v57, v11);
    v31 = sub_1CFE30604();
    v32 = sub_1CFE30C04();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v61[0] = v34;
      *v33 = 136446466;
      v64 = v55;
      swift_getMetatypeMetadata();
      v35 = sub_1CFE30944();
      v37 = sub_1CFDAAF6C(v35, v36, v61);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      v38 = sub_1CFE30324();
      v40 = v39;
      (*(v12 + 8))(v19, v29);
      v41 = sub_1CFDAAF6C(v38, v40, v61);

      *(v33 + 14) = v41;
      _os_log_impl(&dword_1CFDA3000, v31, v32, "[%{public}s] Delivering results %s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3876FF0](v34, -1, -1);
      MEMORY[0x1D3876FF0](v33, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v19, v29);
    }

    sub_1CFDB5A28(v57);
  }

  else
  {
    if (qword_1EDC32570 != -1)
    {
      swift_once();
    }

    v42 = sub_1CFE30624();
    __swift_project_value_buffer(v42, qword_1EDC32578);
    (*(v12 + 16))(v16, v57, v11);
    v43 = sub_1CFE30604();
    v44 = sub_1CFE30C04();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v61[0] = v46;
      *v45 = 136446466;
      v64 = v55;
      swift_getMetatypeMetadata();
      v47 = sub_1CFE30944();
      v49 = sub_1CFDAAF6C(v47, v48, v61);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2080;
      v50 = sub_1CFE30324();
      v52 = v51;
      (*(v12 + 8))(v16, v11);
      v53 = sub_1CFDAAF6C(v50, v52, v61);

      *(v45 + 14) = v53;
      _os_log_impl(&dword_1CFDA3000, v43, v44, "[%{public}s] Deferring result delivery %s", v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3876FF0](v46, -1, -1);
      MEMORY[0x1D3876FF0](v45, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v16, v11);
    }
  }
}

uint64_t sub_1CFDB55DC(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a8;
  v41 = a1;
  v42 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v43 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v12);
  v15 = &v30 - v14;
  MEMORY[0x1EEE9AC00](v13, v16);
  v39 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_getAssociatedTypeWitness();
  v33 = *(v18 - 8);
  v34 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v30 - v20;
  v22 = sub_1CFE30BA4();
  if (!v22)
  {
    return sub_1CFE30AA4();
  }

  v44 = v22;
  v48 = sub_1CFE30E94();
  v35 = sub_1CFE30EA4();
  sub_1CFE30E44();
  result = sub_1CFE30B94();
  if ((v44 & 0x8000000000000000) == 0)
  {
    v30 = v10;
    v31 = a5;
    v24 = 0;
    v36 = (v45 + 16);
    v37 = (v45 + 8);
    v38 = v8;
    while (!__OFADD__(v24, 1))
    {
      v45 = v24 + 1;
      v25 = sub_1CFE30BC4();
      v26 = v15;
      v27 = v15;
      v28 = AssociatedTypeWitness;
      (*v36)(v26);
      v25(v47, 0);
      v29 = v46;
      v41(v27, v43);
      if (v29)
      {
        (*v37)(v27, v28);
        (*(v33 + 8))(v21, v34);

        return (*(v30 + 32))(v32, v43, v31);
      }

      v46 = 0;
      (*v37)(v27, v28);
      sub_1CFE30E84();
      result = sub_1CFE30BB4();
      ++v24;
      v15 = v27;
      if (v45 == v44)
      {
        (*(v33 + 8))(v21, v34);
        return v48;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1CFDB5A28(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v55 = *MEMORY[0x1E69E7D40] & *v2;
  v4 = sub_1CFE30354();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v53 = &v47 - v11;
  v12 = sub_1CFE30664();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = (&v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v16 = [v2 queue];
  (*(v13 + 104))(v16, *MEMORY[0x1E69E8020], v12);
  v17 = sub_1CFE30674();
  (*(v13 + 8))(v16, v12);
  if ((v17 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  v18 = qword_1EDC327F0;
  swift_beginAccess();
  v19 = *(v2 + v18);
  v20 = *(v55 + 80);

  *(v2 + v18) = sub_1CFE30AA4();

  v21 = *(v2 + qword_1EDC32800);
  if (v21)
  {
    v49 = *(v2 + qword_1EDC32800 + 8);
    v50 = v21;

    v52 = sub_1CFE30334();
    v51 = *(v2 + qword_1EDC36C18);
    v22 = v53;
    (*(v5 + 16))(v53, a1, v4);
    v23 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v24 = (v6 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = v4;
    v48 = v19;
    v25 = (v24 + 23) & 0xFFFFFFFFFFFFFFF8;
    v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    *(v27 + 16) = v20;
    *(v27 + 24) = *(v55 + 88);
    (*(v5 + 32))(v27 + v23, v22, v47);
    v28 = (v27 + v24);
    v30 = v49;
    v29 = v50;
    *v28 = v50;
    v28[1] = v30;
    *(v27 + v25) = v2;
    *(v27 + v26) = v48;
    *(v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
    aBlock[4] = sub_1CFDB60E4;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CFDAA484;
    aBlock[3] = &block_descriptor_21;
    v31 = _Block_copy(aBlock);
    sub_1CFDA81D0(v29, v30);
    v32 = v2;

    v33 = v52;
    [v32 queue:v52 dispatchToClientForUUID:(v51 & 1) == 0 shouldDeactivate:v31 block:?];
    _Block_release(v31);

    sub_1CFDAC3D4(v29, v30);
    return;
  }

  if (qword_1EDC32570 != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v34 = sub_1CFE30624();
  __swift_project_value_buffer(v34, qword_1EDC32578);
  (*(v5 + 16))(v9, a1, v4);
  v35 = sub_1CFE30604();
  v36 = v5;
  v37 = sub_1CFE30BF4();
  if (os_log_type_enabled(v35, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v57 = v39;
    *v38 = 136446466;
    aBlock[0] = ObjectType;
    swift_getMetatypeMetadata();
    v40 = sub_1CFE30944();
    v42 = sub_1CFDAAF6C(v40, v41, &v57);

    *(v38 + 4) = v42;
    *(v38 + 12) = 2080;
    v43 = sub_1CFE30324();
    v45 = v44;
    (*(v36 + 8))(v9, v4);
    v46 = sub_1CFDAAF6C(v43, v45, &v57);

    *(v38 + 14) = v46;
    _os_log_impl(&dword_1CFDA3000, v35, v37, "[%{public}s] Missing results handler! %s", v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3876FF0](v39, -1, -1);
    MEMORY[0x1D3876FF0](v38, -1, -1);
  }

  else
  {

    (*(v36 + 8))(v9, v4);
  }
}

uint64_t sub_1CFDB6010(uint64_t a1, uint64_t a2)
{
  v3 = sub_1CFE30354();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = (((*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v5 | 7);
}

uint64_t sub_1CFDB60E4(uint64_t a1, uint64_t a2)
{
  v3 = *(sub_1CFE30354() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = v2 + v5;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v2 + v6);
  v12 = *(v2 + v7);
  v13 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1CFDB6198(v2 + v4, v9, v10, v11, v12, v13);
}

uint64_t sub_1CFDB6198(uint64_t a1, uint64_t (*a2)(void, void, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a4;
  v11 = sub_1CFE30354();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC32570 != -1)
  {
    swift_once();
  }

  v16 = sub_1CFE30624();
  __swift_project_value_buffer(v16, qword_1EDC32578);
  (*(v12 + 16))(v15, a1, v11);
  v17 = sub_1CFE30604();
  v18 = sub_1CFE30C04();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v35 = a5;
    v20 = v19;
    v21 = swift_slowAlloc();
    v36 = a3;
    v22 = a2;
    v23 = v21;
    v38[0] = v21;
    v38[1] = a6;
    *v20 = 136446466;
    swift_getMetatypeMetadata();
    v24 = sub_1CFE30944();
    v26 = sub_1CFDAAF6C(v24, v25, v38);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    v27 = sub_1CFE30324();
    v29 = v28;
    (*(v12 + 8))(v15, v11);
    v30 = sub_1CFDAAF6C(v27, v29, v38);

    *(v20 + 14) = v30;
    _os_log_impl(&dword_1CFDA3000, v17, v18, "[%{public}s] Calling results with final results %s", v20, 0x16u);
    swift_arrayDestroy();
    v31 = v23;
    a2 = v22;
    MEMORY[0x1D3876FF0](v31, -1, -1);
    v32 = v20;
    a5 = v35;
    MEMORY[0x1D3876FF0](v32, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v15, v11);
  }

  return a2(v37, a5, 0);
}

uint64_t sub_1CFDB6454(void *a1, void *a2, char a3)
{
  v7 = *(type metadata accessor for SleepingSampleDaySummaryQueryDescriptor(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  sub_1CFDB65A8(0, &qword_1EDC31890, MEMORY[0x1E69E87A0]);

  return sub_1CFDB6620(a1, a2, a3 & 1, v3 + v8);
}

uint64_t type metadata accessor for SleepingSampleDaySummaryQueryDescriptor(uint64_t a1)
{
  result = qword_1EDC31EF8;
  if (!qword_1EDC31EF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CFDB65A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v6 = type metadata accessor for SleepingSampleDaySummaryCollection(255);
    v7 = sub_1CFDAAF08();
    v8 = a3(a1, v6, v7, MEMORY[0x1E69E7288]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1CFDB6620(void *a1, void *a2, int a3, uint64_t a4)
{
  v34 = a4;
  LODWORD(v4) = a3;
  sub_1CFDB65A8(0, &qword_1EDC318B0, MEMORY[0x1E69E8780]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v30[-v11];
  sub_1CFDB65A8(0, &qword_1EDC31E58, MEMORY[0x1E69E75F0]);
  v35 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v30[-v15];
  if (qword_1EDC32570 != -1)
  {
    swift_once();
  }

  v17 = sub_1CFE30624();
  __swift_project_value_buffer(v17, qword_1EDC32578);
  v18 = a1;
  v19 = sub_1CFE30604();
  v20 = sub_1CFE30C04();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v31 = v4;
    v4 = v21;
    v22 = swift_slowAlloc();
    v32 = a2;
    v23 = v22;
    v24 = swift_slowAlloc();
    v33 = v8;
    v25 = v24;
    v36 = v24;
    *v4 = 136446466;
    *(v4 + 4) = sub_1CFDAAF6C(0xD000000000000027, 0x80000001CFE35B80, &v36);
    *(v4 + 12) = 2112;
    *(v4 + 14) = v18;
    *v23 = v18;
    v26 = v18;
    _os_log_impl(&dword_1CFDA3000, v19, v20, "[%{public}s] Yielding query results to stream: %@", v4, 0x16u);
    sub_1CFDAB090(v23);
    a2 = v32;
    MEMORY[0x1D3876FF0](v23, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v25);
    v27 = v25;
    v8 = v33;
    MEMORY[0x1D3876FF0](v27, -1, -1);
    v28 = v4;
    LOBYTE(v4) = v31;
    MEMORY[0x1D3876FF0](v28, -1, -1);
  }

  if (v4)
  {
    *v16 = a2;
  }

  else
  {
    sub_1CFDA67B8(v34, v16, type metadata accessor for GregorianDayRange);
    *(v16 + *(type metadata accessor for SleepingSampleDaySummaryCollection(0) + 20)) = a2;
  }

  swift_storeEnumTagMultiPayload();
  sub_1CFDAB240(a2, v4 & 1);
  sub_1CFDB65A8(0, &qword_1EDC31890, MEMORY[0x1E69E87A0]);
  sub_1CFE30B64();
  (*(v9 + 8))(v12, v8);
  return sub_1CFDB6B80(v16);
}

uint64_t type metadata accessor for SleepingSampleDaySummaryCollection(uint64_t a1)
{
  result = qword_1EDC321B0;
  if (!qword_1EDC321B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFDB69F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for GregorianDayRange(0);
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

uint64_t sub_1CFDB6AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GregorianDayRange(0);
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

uint64_t sub_1CFDB6B80(uint64_t a1)
{
  sub_1CFDB65A8(0, &qword_1EDC31E58, MEMORY[0x1E69E75F0]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFDB6C24@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_1CFDA6188(v4 + v8, a4, a2, a3);
}

void sub_1CFDB6C90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t TrainingLoadSampleDaySummary.morningIndex.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1CFE307E4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TrainingLoadSampleDaySummary.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1CFDB7110(0, &qword_1EDC31760, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v16[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFDB718C();
  sub_1CFE311A4();
  v20 = 0;
  sub_1CFE307E4();
  sub_1CFDA76D0(&qword_1EDC318C8, MEMORY[0x1E696B418], MEMORY[0x1E696B420]);
  sub_1CFE31054();
  if (!v2)
  {
    SampleDaySummary = type metadata accessor for TrainingLoadSampleDaySummary(0);
    v19 = 1;
    sub_1CFDA7AD0(0);
    sub_1CFDB7348(&qword_1EDC31880, &qword_1EDC318C8, MEMORY[0x1E696B420], MEMORY[0x1E69E66B0]);
    sub_1CFE31054();
    v12 = (v3 + *(SampleDaySummary + 24));
    v13 = *(v12 + 8);
    if (v13)
    {
      v14 = 0;
    }

    else
    {
      v14 = *v12;
    }

    v17 = v14;
    v18 = v13;
    v16[15] = 2;
    sub_1CFDB73D8(0, &qword_1EDC31E68, MEMORY[0x1E69E6810]);
    sub_1CFDB7424(&qword_1EDC31808, MEMORY[0x1E69E6818], MEMORY[0x1E69E7C70]);
    sub_1CFE31054();
    v16[14] = *(v3 + *(SampleDaySummary + 28));
    v16[13] = 3;
    sub_1CFDB73D8(0, &qword_1EDC32470, &type metadata for TrainingLoadBand);
    sub_1CFDB7494(&qword_1EDC31978, sub_1CFDB7510, MEMORY[0x1E69E7C70]);
    sub_1CFE31054();
    v16[12] = 4;
    type metadata accessor for TrainingLoadBaselineComparison(0);
    sub_1CFDA76D0(&qword_1EDC31918, type metadata accessor for TrainingLoadBaselineComparison, &protocol conformance descriptor for TrainingLoadBaselineComparison);
    sub_1CFE31054();
  }

  return (*(v7 + 8))(v10, v6);
}

void sub_1CFDB7110(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1CFDB718C();
    v7 = a3(a1, &type metadata for TrainingLoadSampleDaySummary.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1CFDB718C()
{
  result = qword_1EDC31F80;
  if (!qword_1EDC31F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC31F80);
  }

  return result;
}

unint64_t sub_1CFDB71E4()
{
  result = qword_1EDC31F70;
  if (!qword_1EDC31F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC31F70);
  }

  return result;
}

unint64_t sub_1CFDB723C()
{
  result = qword_1EDC31F78;
  if (!qword_1EDC31F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC31F78);
  }

  return result;
}

uint64_t sub_1CFDB7290()
{
  v1 = *v0;
  v2 = 0x49676E696E726F6DLL;
  v3 = 0x7974697669746361;
  v4 = 1684955490;
  if (v1 != 3)
  {
    v4 = 0x676E696E69617274;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656E696C65736162;
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

uint64_t sub_1CFDB7348(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1CFDA7AD0(255);
    sub_1CFDA76D0(a2, MEMORY[0x1E696B418], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1CFDB73D8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1CFE30C74();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1CFDB7424(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1CFDB73D8(255, &qword_1EDC31E68, MEMORY[0x1E69E6810]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CFDB7494(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1CFDB73D8(255, &qword_1EDC32470, &type metadata for TrainingLoadBand);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CFDB7510()
{
  result = qword_1EDC31980;
  if (!qword_1EDC31980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC31980);
  }

  return result;
}

uint64_t TrainingLoadBaselineComparison.encode(to:)(void *a1)
{
  sub_1CFDB77AC(0, &qword_1EDC31758, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFDB7828();
  sub_1CFE311A4();
  v10[15] = 0;
  type metadata accessor for TrainingLoadAcuteBaseline(0);
  sub_1CFDB792C(&qword_1EDC31930, type metadata accessor for TrainingLoadAcuteBaseline, &protocol conformance descriptor for TrainingLoadAcuteBaseline);
  sub_1CFE31054();
  if (!v1)
  {
    type metadata accessor for TrainingLoadBaselineComparison(0);
    v10[14] = 1;
    type metadata accessor for TrainingLoadChronicBaseline(0);
    sub_1CFDB792C(&qword_1EDC31928, type metadata accessor for TrainingLoadChronicBaseline, &protocol conformance descriptor for TrainingLoadChronicBaseline);
    sub_1CFE31054();
    v10[13] = 2;
    sub_1CFE31004();
  }

  return (*(v5 + 8))(v8, v4);
}

void sub_1CFDB77AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1CFDB7828();
    v7 = a3(a1, &type metadata for TrainingLoadBaselineComparison.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1CFDB7828()
{
  result = qword_1EDC31F40;
  if (!qword_1EDC31F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC31F40);
  }

  return result;
}

unint64_t sub_1CFDB7880()
{
  result = qword_1EDC31F30;
  if (!qword_1EDC31F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC31F30);
  }

  return result;
}

unint64_t sub_1CFDB78D8()
{
  result = qword_1EDC31F38;
  if (!qword_1EDC31F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC31F38);
  }

  return result;
}

uint64_t sub_1CFDB792C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CFDB7974(void *a1)
{
  sub_1CFDB7AFC(0, &qword_1EDC31788, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFDB7B60();
  sub_1CFE311A4();
  sub_1CFDAC3A0(0);
  sub_1CFDB7CC0(&unk_1EDC318E8, sub_1CFDAC3A0, MEMORY[0x1E696B378]);
  sub_1CFE31014();
  return (*(v4 + 8))(v7, v3);
}

void sub_1CFDB7AFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1CFDB7B60();
    v7 = a3(a1, &type metadata for TrainingLoadAcuteBaseline.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1CFDB7B60()
{
  result = qword_1EDC31FF8;
  if (!qword_1EDC31FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC31FF8);
  }

  return result;
}

unint64_t sub_1CFDB7BB8()
{
  result = qword_1EDC31FE8;
  if (!qword_1EDC31FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC31FE8);
  }

  return result;
}

unint64_t sub_1CFDB7C10()
{
  result = qword_1EDC31FF0;
  if (!qword_1EDC31FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC31FF0);
  }

  return result;
}

uint64_t sub_1CFDB7C64(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1CFDAA8D8(255, qword_1EDC32CB8, &qword_1EDC32C80, 0x1E696C348);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CFDB7CC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1CFDB7D08()
{
  v1 = 0x4263696E6F726863;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000027;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7361426574756361;
  }
}

uint64_t TrainingLoadChronicBaseline.encode(to:)(void *a1)
{
  v2 = MEMORY[0x1E69E6F58];
  sub_1CFDB83EC(0, &qword_1EDC31770, sub_1CFDB846C, &type metadata for TrainingLoadChronicBaseline.AvailableCodingKeys, MEMORY[0x1E69E6F58]);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v39 = &v35 - v5;
  sub_1CFDB83EC(0, &qword_1EDC31768, sub_1CFDB8570, &type metadata for TrainingLoadChronicBaseline.InsufficientDataCodingKeys, v2);
  v42 = v6;
  v36 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v43 = &v35 - v8;
  sub_1CFDA7AD0(0);
  v38 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v37 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDB83EC(0, &qword_1EDC31778, sub_1CFDB8674, &type metadata for TrainingLoadChronicBaseline.NoDataCodingKeys, v2);
  v13 = v12;
  v35 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v35 - v15;
  ChronicBaseline = type metadata accessor for TrainingLoadChronicBaseline(0);
  MEMORY[0x1EEE9AC00](ChronicBaseline, v18);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDB83EC(0, &qword_1EDC31780, sub_1CFDB8778, &type metadata for TrainingLoadChronicBaseline.CodingKeys, v2);
  v45 = *(v21 - 8);
  v46 = v21;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v35 - v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFDB8778();
  sub_1CFE311A4();
  sub_1CFDABC10(v44, v20, type metadata accessor for TrainingLoadChronicBaseline);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v53 = 2;
      sub_1CFDB846C();
      v26 = v39;
      v27 = v46;
      sub_1CFE30FF4();
      v28 = v41;
      sub_1CFE31034();
      (*(v40 + 8))(v26, v28);
      return (*(v45 + 8))(v24, v27);
    }

    else
    {
      v48 = 0;
      sub_1CFDB8674();
      v34 = v46;
      sub_1CFE30FF4();
      (*(v35 + 8))(v16, v13);
      return (*(v45 + 8))(v24, v34);
    }
  }

  else
  {
    sub_1CFDAD680(0);
    v30 = v37;
    sub_1CFDAD618(v20, v37, sub_1CFDA7AD0);
    v52 = 1;
    sub_1CFDB8570();
    v31 = v46;
    sub_1CFE30FF4();
    v51 = 0;
    sub_1CFDAB7F8(&qword_1EDC31880, &qword_1EDC318C8, MEMORY[0x1E696B420], MEMORY[0x1E69E66B0]);
    v32 = v42;
    v33 = v47;
    sub_1CFE31054();
    if (!v33)
    {
      v50 = 1;
      sub_1CFE31044();
      v49 = 2;
      sub_1CFE31044();
    }

    (*(v36 + 8))(v43, v32);
    sub_1CFDAD1D4(v30, sub_1CFDA7AD0);
    return (*(v45 + 8))(v24, v31);
  }
}

void sub_1CFDB83EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1CFDB846C()
{
  result = qword_1EDC31FB0;
  if (!qword_1EDC31FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC31FB0);
  }

  return result;
}

unint64_t sub_1CFDB84C4()
{
  result = qword_1EDC31FA0;
  if (!qword_1EDC31FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC31FA0);
  }

  return result;
}

unint64_t sub_1CFDB851C()
{
  result = qword_1EDC31FA8;
  if (!qword_1EDC31FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC31FA8);
  }

  return result;
}

unint64_t sub_1CFDB8570()
{
  result = qword_1EDC31F98;
  if (!qword_1EDC31F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC31F98);
  }

  return result;
}

unint64_t sub_1CFDB85C8()
{
  result = qword_1EDC31F88;
  if (!qword_1EDC31F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC31F88);
  }

  return result;
}

unint64_t sub_1CFDB8620()
{
  result = qword_1EDC31F90;
  if (!qword_1EDC31F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC31F90);
  }

  return result;
}

unint64_t sub_1CFDB8674()
{
  result = qword_1EDC31FC8;
  if (!qword_1EDC31FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC31FC8);
  }

  return result;
}

unint64_t sub_1CFDB86CC()
{
  result = qword_1EDC31FB8;
  if (!qword_1EDC31FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC31FB8);
  }

  return result;
}

unint64_t sub_1CFDB8724()
{
  result = qword_1EDC31FC0;
  if (!qword_1EDC31FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC31FC0);
  }

  return result;
}

unint64_t sub_1CFDB8778()
{
  result = qword_1EDC31FE0;
  if (!qword_1EDC31FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC31FE0);
  }

  return result;
}

unint64_t sub_1CFDB87D0()
{
  result = qword_1EDC31FD0;
  if (!qword_1EDC31FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC31FD0);
  }

  return result;
}

unint64_t sub_1CFDB8828()
{
  result = qword_1EDC31FD8;
  if (!qword_1EDC31FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC31FD8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TrainingLoadChronicBaseline.AvailableCodingKeys(unsigned int *a1, int a2)
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

uint64_t sub_1CFDB88EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CFE30924();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1CFDB8978@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_1CFDB89A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SleepingSampleAggregate(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for SleepingSampleBaselineAvailability(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_1CFDB177C(0, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_1CFDB8B04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for SleepingSampleAggregate(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for SleepingSampleBaselineAvailability(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_1CFDB177C(0, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1CFDB8C74(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1CFE307E4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_1CFDA7AD0(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 250)
  {
    v14 = *(a1 + a3[7]);
    if (v14 <= 5)
    {
      v15 = 5;
    }

    else
    {
      v15 = *(a1 + a3[7]);
    }

    v16 = v15 - 5;
    if (v14 >= 5)
    {
      return v16;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    BaselineComparison = type metadata accessor for TrainingLoadBaselineComparison(0);
    v18 = *(*(BaselineComparison - 8) + 48);
    v19 = a1 + a3[8];

    return v18(v19, a2, BaselineComparison);
  }
}

void sub_1CFDB8DEC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1CFE307E4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    v11(v12, a2, a2, v10);
    return;
  }

  sub_1CFDA7AD0(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 250)
  {
    *(a1 + a4[7]) = a2 + 5;
  }

  else
  {
    BaselineComparison = type metadata accessor for TrainingLoadBaselineComparison(0);
    v16 = *(*(BaselineComparison - 8) + 56);
    v17 = a1 + a4[8];

    v16(v17, a2, a2, BaselineComparison);
  }
}

uint64_t sub_1CFDB8F6C(uint64_t a1, uint64_t a2)
{
  sub_1CFDAD280(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1CFDB8FD8(uint64_t a1, uint64_t a2)
{
  sub_1CFDAD280(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1CFDB9058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AcuteBaseline = type metadata accessor for TrainingLoadAcuteBaseline(0);
  v7 = *(AcuteBaseline - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, AcuteBaseline);
  }

  else
  {
    ChronicBaseline = type metadata accessor for TrainingLoadChronicBaseline(0);
    v11 = *(*(ChronicBaseline - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, ChronicBaseline);
  }
}

uint64_t sub_1CFDB9148(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  AcuteBaseline = type metadata accessor for TrainingLoadAcuteBaseline(0);
  v9 = *(AcuteBaseline - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, AcuteBaseline);
  }

  else
  {
    ChronicBaseline = type metadata accessor for TrainingLoadChronicBaseline(0);
    v13 = *(*(ChronicBaseline - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, ChronicBaseline);
  }
}

uint64_t sub_1CFDB9254(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1CFE307E4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_1CFE304B4();
    if (*(*(v11 - 8) + 84) == a2)
    {
      v8 = v11;
      v12 = *(v11 - 8);
      v13 = a3[5];
    }

    else
    {
      sub_1CFDAD280(0);
      if (*(*(v14 - 8) + 84) == a2)
      {
        v8 = v14;
        v12 = *(v14 - 8);
        v13 = a3[6];
      }

      else
      {
        sub_1CFDB2328(0);
        if (*(*(v15 - 8) + 84) == a2)
        {
          v8 = v15;
          v12 = *(v15 - 8);
          v13 = a3[7];
        }

        else
        {
          sub_1CFDA9D60(0);
          if (*(*(v16 - 8) + 84) != a2)
          {
            v18 = *(a1 + a3[9]);
            if (v18 >= 5)
            {
              return v18 - 4;
            }

            else
            {
              return 0;
            }
          }

          v8 = v16;
          v12 = *(v16 - 8);
          v13 = a3[8];
        }
      }
    }

    v9 = *(v12 + 48);
    v10 = a1 + v13;
  }

  return v9(v10, a2, v8);
}

void sub_1CFDB9434(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1CFE307E4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_1CFE304B4();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      sub_1CFDAD280(0);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        sub_1CFDB2328(0);
        if (*(*(v17 - 8) + 84) == a3)
        {
          v10 = v17;
          v14 = *(v17 - 8);
          v15 = a4[7];
        }

        else
        {
          sub_1CFDA9D60(0);
          if (*(*(v18 - 8) + 84) != a3)
          {
            *(a1 + a4[9]) = a2 + 4;
            return;
          }

          v10 = v18;
          v14 = *(v18 - 8);
          v15 = a4[8];
        }
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_1CFDB9660(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1CFDA68BC(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1CFE304B4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1CFDB975C()
{
  v1 = *(type metadata accessor for SleepingSampleDaySummaryQueryDescriptor(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = v3 + *(v1 + 64);
  sub_1CFDB65A8(0, &qword_1EDC31890, MEMORY[0x1E69E87A0]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v2 | v8;
  v12 = v0 + v3;
  v13 = sub_1CFE307E4();
  v14 = *(*(v13 - 8) + 8);
  v14(v12, v13);
  sub_1CFDA68BC(0);
  v14(v12 + *(v15 + 36), v13);
  v16 = *(type metadata accessor for GregorianDayRange(0) + 20);
  v17 = sub_1CFE304B4();
  (*(*(v17 - 8) + 8))(v12 + v16, v17);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1CFDB9944()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CFDB9984(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GregorianDayRange(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1CFDB99F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GregorianDayRange(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1CFDB9A60()
{
  v1 = *(type metadata accessor for SleepingSampleDaySummaryQueryDescriptor(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = v3 + *(v1 + 64);
  sub_1CFDB65A8(0, &qword_1EDC31A90, MEMORY[0x1E69E8548]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v2 | v8;

  v12 = v0 + v3;
  v13 = sub_1CFE307E4();
  v14 = *(*(v13 - 8) + 8);
  v14(v12, v13);
  sub_1CFDA68BC(0);
  v14(v12 + *(v15 + 36), v13);
  v16 = *(type metadata accessor for GregorianDayRange(0) + 20);
  v17 = sub_1CFE304B4();
  (*(*(v17 - 8) + 8))(v12 + v16, v17);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1CFDB9C50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GregorianDayRange(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1CFDB9CC0()
{
  v1 = (type metadata accessor for TrainingLoadSummaryQueryDescriptor(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = v3 + *(*v1 + 64);
  sub_1CFDAC46C(0, &qword_1EDC31888, MEMORY[0x1E69E87A0]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v8) & ~v8;
  v18 = *(v7 + 64);
  v10 = v2 | v8;
  v11 = v0 + v3;
  v12 = sub_1CFE307E4();
  v13 = *(*(v12 - 8) + 8);
  v13(v11, v12);
  sub_1CFDA7600(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
  v13(v11 + *(v14 + 36), v12);
  v15 = v1[7];
  v16 = sub_1CFE304B4();
  (*(*(v16 - 8) + 8))(v11 + v15, v16);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v18, v10 | 7);
}

uint64_t sub_1CFDB9ED0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CFDB9F10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CFDA7600(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_1CFE304B4();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 3)
      {
        return v14 - 2;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1CFDBA034(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1CFDA7600(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1CFE304B4();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1CFDBA158()
{
  v1 = (type metadata accessor for TrainingLoadSummaryQueryDescriptor(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = v3 + *(*v1 + 64);
  sub_1CFDAC46C(0, &qword_1EDC318B8, MEMORY[0x1E69E8548]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v8) & ~v8;
  v18 = *(v7 + 64);
  v10 = v2 | v8;

  v11 = v0 + v3;
  v12 = sub_1CFE307E4();
  v13 = *(*(v12 - 8) + 8);
  v13(v11, v12);
  sub_1CFDA7600(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
  v13(v11 + *(v14 + 36), v12);
  v15 = v1[7];
  v16 = sub_1CFE304B4();
  (*(*(v16 - 8) + 8))(v11 + v15, v16);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v18, v10 | 7);
}

uint64_t sub_1CFDBA37C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CFDBA3B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CFDBA3EC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CFDBA434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CFDA5C94(0, qword_1EDC31C98, type metadata accessor for SleepingSampleAnalysisFeatureStatus, MEMORY[0x1E69E6720]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

void sub_1CFDBA52C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1CFDA5C94(0, qword_1EDC31C98, type metadata accessor for SleepingSampleAnalysisFeatureStatus, MEMORY[0x1E69E6720]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }
}

uint64_t sub_1CFDBA614()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CFDBA674(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1CFE307E4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1CFDBA720(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1CFE307E4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CFDBA804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CFE307E4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for SleepingSampleAggregate(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1CFDBA8F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1CFE307E4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for SleepingSampleAggregate(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1CFDBA9F0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1CFDBAA38(uint64_t a1, uint64_t a2)
{
  v3 = sub_1CFE30354();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v5 | 7);
}

uint64_t sub_1CFDBAB28(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1CFE307E4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  sub_1CFDAB9C4(0, &qword_1EDC32C90, MEMORY[0x1E69E66A8]);
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

  sub_1CFDA97E8(0, &qword_1EDC32C70, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = type metadata accessor for SleepingSampleBaselineComparison(0);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[8];

  return v17(v18, a2, v16);
}

uint64_t sub_1CFDBACFC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1CFE307E4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  sub_1CFDAB9C4(0, &qword_1EDC32C90, MEMORY[0x1E69E66A8]);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  sub_1CFDA97E8(0, &qword_1EDC32C70, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = type metadata accessor for SleepingSampleBaselineComparison(0);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[8];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_1CFDBAEDC(uint64_t a1, uint64_t a2)
{
  sub_1CFDFDDF4(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1CFDBAF48(uint64_t a1, uint64_t a2)
{
  sub_1CFDFDDF4(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

id HKTableFormatter.init(_:gregorianCalendar:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepingSampleAggregateDaySummary(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v10 = sub_1CFE30A74();
  v11 = [v9 initWithColumnTitles_];

  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v14 = *(v5 + 72);
    v15 = v11;
    do
    {
      sub_1CFDBCDA0(v13, v8, type metadata accessor for SleepingSampleAggregateDaySummary);
      sub_1CFDBB21C(v8, a2);
      sub_1CFDBCE08(v8, type metadata accessor for SleepingSampleAggregateDaySummary);
      v13 += v14;
      --v12;
    }

    while (v12);
  }

  else
  {
  }

  v16 = sub_1CFE304B4();
  (*(*(v16 - 8) + 8))(a2, v16);
  return v11;
}

void sub_1CFDBB21C(uint64_t a1, uint64_t a2)
{
  v138 = sub_1CFE31244();
  v137 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138, v3);
  v136 = &v129 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDBCB98(0, &qword_1EC5094F0, &qword_1EC5094F8, 0x1E696B080, MEMORY[0x1E6968048]);
  v135 = v5;
  v134 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v133 = &v129 - v7;
  sub_1CFDBCB98(0, &qword_1EC509500, &qword_1EC5094F8, 0x1E696B080, MEMORY[0x1E6968070]);
  v132 = v8;
  v131 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v130 = &v129 - v10;
  v156 = sub_1CFE30234();
  v149 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156, v11);
  v148 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDBCC54(0, &qword_1EC509508, sub_1CFDBCC00, MEMORY[0x1E69E63B0], MEMORY[0x1E6968E78]);
  v154 = v13;
  v150 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v155 = &v129 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v17);
  v147 = &v129 - v18;
  sub_1CFDAD280(0);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v152 = &v129 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v151 = &v129 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v146 = &v129 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v145 = &v129 - v31;
  MEMORY[0x1EEE9AC00](v30, v32);
  v144 = &v129 - v33;
  v34 = sub_1CFE30204();
  v161 = *(v34 - 8);
  v162 = v34;
  MEMORY[0x1EEE9AC00](v34, v35);
  v160 = &v129 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1CFE303F4();
  MEMORY[0x1EEE9AC00](v37 - 8, v38);
  v143 = &v129 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDBCC54(0, &qword_1EC509518, sub_1CFDBCCBC, MEMORY[0x1E69E6530], MEMORY[0x1E6968900]);
  v41 = *(v40 - 1);
  v158 = v40;
  v159 = v41;
  v43 = MEMORY[0x1EEE9AC00](v40, v42);
  v142 = &v129 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43, v45);
  v157 = &v129 - v46;
  v141 = sub_1CFE30284();
  v47 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141, v48);
  v50 = &v129 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_1CFE30314();
  v51 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140, v52);
  v54 = &v129 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_1CFE302B4();
  v55 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139, v56);
  v58 = &v129 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDA6E14(0, &qword_1EC509528, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_1CFE31EE0;
  sub_1CFE30274();
  v60 = a1;
  sub_1CFE307D4();
  sub_1CFE30264();
  v61 = sub_1CFE30304();
  v63 = v62;
  (*(v47 + 8))(v50, v141);
  (*(v51 + 8))(v54, v140);
  (*(v55 + 8))(v58, v139);
  *(v59 + 32) = v61;
  *(v59 + 40) = v63;
  v164 = sub_1CFE307A4();
  sub_1CFE303D4();
  sub_1CFDBCCBC();
  v64 = v142;
  sub_1CFE30144();
  v65 = v160;
  sub_1CFE301F4();
  v67 = v157;
  v66 = v158;
  MEMORY[0x1D3875810](v65, v158);
  (*(v161 + 1))(v65, v162);
  v68 = *(v159 + 8);
  v68(v64, v66);
  sub_1CFDBCD10();
  sub_1CFE30CD4();
  v68(v67, v66);
  v69 = type metadata accessor for SleepingSampleAggregateDaySummary(0);
  v70 = v69[5];
  v159 = v60;
  v71 = v60 + v70;
  v72 = v144;
  v162 = type metadata accessor for SleepingSampleAggregate(0);
  sub_1CFDBCDA0(v71 + *(v162 + 24), v72, sub_1CFDAD280);
  sub_1CFDBCB98(0, qword_1EDC32CB8, &qword_1EDC32C80, 0x1E696C348, MEMORY[0x1E696B370]);
  v74 = v73;
  v75 = *(v73 - 8);
  v160 = *(v75 + 6);
  v161 = v75 + 48;
  v76 = (v160)(v72, 1, v73);
  v157 = v75;
  v158 = v69;
  if (v76 == 1)
  {
    sub_1CFDBCE08(v72, sub_1CFDAD280);
    v77 = 0xA600000000000000;
    v78 = 0x9380E29380E2;
  }

  else
  {
    v80 = sub_1CFE30684();
    v142 = v80;
    (*(v75 + 1))(v72, v74);
    v81 = [objc_opt_self() _countPerMinuteUnit];
    [v80 doubleValueForUnit_];
    v163 = v82;
    sub_1CFE303D4();
    sub_1CFDBCC00();
    v83 = v155;
    sub_1CFE301A4();
    v84 = v148;
    sub_1CFE30214();
    v85 = v147;
    v86 = v154;
    MEMORY[0x1D3875870](v84, v154);
    (*(v149 + 8))(v84, v156);
    v87 = *(v150 + 8);
    v87(v83, v86);
    sub_1CFDBCF44();
    sub_1CFE307F4();

    v87(v85, v86);
    v69 = v158;
    v78 = v164;
    v77 = v165;
  }

  v79 = 0x9380E29380E2;
  *(v59 + 64) = v78;
  *(v59 + 72) = v77;
  v88 = v145;
  sub_1CFDBCDA0(v159 + v69[6] + *(v162 + 24), v145, sub_1CFDAD280);
  if ((v160)(v88, 1, v74) == 1)
  {
    sub_1CFDBCE08(v88, sub_1CFDAD280);
    object = 0xA600000000000000;
    countAndFlagsBits = 0x9380E29380E2;
  }

  else
  {
    v91 = sub_1CFE30684();
    (*(v157 + 1))(v88, v74);
    LOBYTE(v164) = 2;
    v92 = [objc_opt_self() percentUnit];
    v93 = HKQuantity.formattedValue(for:unit:)(&v164, v92);
    countAndFlagsBits = v93._countAndFlagsBits;
    object = v93._object;

    v69 = v158;
  }

  v95 = v154;
  v94 = v155;
  *(v59 + 80) = countAndFlagsBits;
  *(v59 + 88) = object;
  v96 = v146;
  sub_1CFDBCDA0(v159 + v69[7] + *(v162 + 24), v146, sub_1CFDAD280);
  v97 = (v160)(v96, 1, v74);
  v98 = v156;
  if (v97 == 1)
  {
    sub_1CFDBCE08(v96, sub_1CFDAD280);
    v99 = 0xA600000000000000;
    v100 = 0x9380E29380E2;
  }

  else
  {
    v101 = sub_1CFE30684();
    (*(v157 + 1))(v96, v74);
    v102 = [objc_opt_self() _countPerMinuteUnit];
    [v101 doubleValueForUnit_];
    v163 = v103;
    sub_1CFE303D4();
    sub_1CFDBCC00();
    sub_1CFE301A4();
    v164 = 1;
    sub_1CFDBCEEC();
    sub_1CFDBD128(&qword_1EC509550, sub_1CFDBCEEC, MEMORY[0x1E69E6ED8]);
    v104 = v148;
    sub_1CFE30224();
    v105 = v94;
    v106 = v147;
    MEMORY[0x1D3875870](v104, v95);
    (*(v149 + 8))(v104, v98);
    v107 = *(v150 + 8);
    v107(v105, v95);
    sub_1CFDBCF44();
    sub_1CFE307F4();

    v69 = v158;
    v79 = 0x9380E29380E2;
    v107(v106, v95);
    v100 = v164;
    v99 = v165;
  }

  v108 = v151;
  *(v59 + 96) = v100;
  *(v59 + 104) = v99;
  sub_1CFDBCDA0(v159 + v69[8] + *(v162 + 24), v108, sub_1CFDAD280);
  if ((v160)(v108, 1, v74) == 1)
  {
    sub_1CFDBCE08(v108, sub_1CFDAD280);
    v109 = 0xA600000000000000;
    v110 = 0x9380E29380E2;
  }

  else
  {
    v111 = sub_1CFE30684();
    (*(v157 + 1))(v108, v74);
    v112 = [objc_opt_self() _changeInDegreeFahrenheitUnit];
    v113 = v111;
    v114 = v112;
    v115 = v130;
    Measurement<>.init(wristTemperatureForFormatting:unit:)(v113, v114);
    v116 = v133;
    static FormatStyle<>.wristTemperature(unit:)(v114, v133);
    sub_1CFDBCE68();
    v117 = v59;
    v118 = v132;
    v119 = v135;
    sub_1CFE2FFC4();

    v120 = v119;
    v69 = v158;
    (*(v134 + 8))(v116, v120);
    v121 = v118;
    v59 = v117;
    (*(v131 + 8))(v115, v121);
    v110 = v164;
    v109 = v165;
  }

  v122 = v152;
  *(v59 + 112) = v110;
  *(v59 + 120) = v109;
  sub_1CFDBCDA0(v159 + v69[9] + *(v162 + 24), v122, sub_1CFDAD280);
  if ((v160)(v122, 1, v74) == 1)
  {
    sub_1CFDBCE08(v122, sub_1CFDAD280);
    v123 = 0xA600000000000000;
  }

  else
  {
    v124 = sub_1CFE30684();
    (*(v157 + 1))(v122, v74);

    v125 = v124;
    sub_1CFE2F0F4(v125);

    v126 = v136;
    static FormatStyle<>.sleepDuration.getter(v136);
    sub_1CFDBD128(&qword_1EC509538, MEMORY[0x1E696A218], MEMORY[0x1E696A210]);
    v127 = v138;
    sub_1CFE31254();

    (*(v137 + 8))(v126, v127);
    v79 = v164;
    v123 = v165;
  }

  *(v59 + 128) = v79;
  *(v59 + 136) = v123;
  v128 = sub_1CFE30A74();

  [v153 appendRow_];
}

uint64_t sub_1CFDBC4A0()
{
  v1 = *v0;
  sub_1CFE31144();
  MEMORY[0x1D3876810](v1);
  return sub_1CFE31184();
}

uint64_t sub_1CFDBC514(uint64_t a1)
{
  v2 = *v1;
  sub_1CFE31144();
  MEMORY[0x1D3876810](v2);
  return sub_1CFE31184();
}

uint64_t sub_1CFDBC558(uint64_t a1, id *a2)
{
  result = sub_1CFE30904();
  *a2 = 0;
  return result;
}

uint64_t sub_1CFDBC5D0(uint64_t a1, id *a2)
{
  v3 = sub_1CFE30914();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1CFDBC650@<X0>(uint64_t *a2@<X8>)
{
  sub_1CFE30924();
  v3 = sub_1CFE308F4();

  *a2 = v3;
  return result;
}

uint64_t sub_1CFDBC694(uint64_t a1)
{
  v2 = sub_1CFDBD128(&qword_1EC5094E0, type metadata accessor for HKFeatureAvailabilityRequirementIdentifier, &unk_1CFE320B8);
  v3 = sub_1CFDBD128(&qword_1EC5094E8, type metadata accessor for HKFeatureAvailabilityRequirementIdentifier, &unk_1CFE32060);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CFDBC828(uint64_t a1)
{
  v2 = sub_1CFDBD128(&qword_1EDC32510, type metadata accessor for HKFeatureIdentifier, &unk_1CFE322F8);
  v3 = sub_1CFDBD128(&qword_1EC5094D8, type metadata accessor for HKFeatureIdentifier, &unk_1CFE321A0);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CFDBC8E4@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1CFE308F4();

  *a2 = v3;
  return result;
}

uint64_t sub_1CFDBC92C(uint64_t a1)
{
  v2 = sub_1CFDBD128(&qword_1EDC31850, type metadata accessor for HKFeatureAvailabilityContext, &unk_1CFE32494);
  v3 = sub_1CFDBD128(&qword_1EC509570, type metadata accessor for HKFeatureAvailabilityContext, &unk_1CFE323F4);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CFDBC9E8()
{
  v0 = sub_1CFE30924();
  v1 = MEMORY[0x1D38760C0](v0);

  return v1;
}

uint64_t sub_1CFDBCA24(uint64_t a1)
{
  sub_1CFE30924();
  sub_1CFE30984();
}

void sub_1CFDBCB98(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1CFDA6E64(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1CFDBCC00()
{
  result = qword_1EC509510;
  if (!qword_1EC509510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509510);
  }

  return result;
}

void sub_1CFDBCC54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1CFDBCCBC()
{
  result = qword_1EC509520;
  if (!qword_1EC509520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509520);
  }

  return result;
}

unint64_t sub_1CFDBCD10()
{
  result = qword_1EC509530;
  if (!qword_1EC509530)
  {
    sub_1CFDBCC54(255, &qword_1EC509518, sub_1CFDBCCBC, MEMORY[0x1E69E6530], MEMORY[0x1E6968900]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509530);
  }

  return result;
}

uint64_t sub_1CFDBCDA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFDBCE08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1CFDBCE68()
{
  result = qword_1EC509540;
  if (!qword_1EC509540)
  {
    sub_1CFDBCB98(255, &qword_1EC5094F0, &qword_1EC5094F8, 0x1E696B080, MEMORY[0x1E6968048]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509540);
  }

  return result;
}

void sub_1CFDBCEEC()
{
  if (!qword_1EC509548)
  {
    v0 = sub_1CFE30F34();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC509548);
    }
  }
}

unint64_t sub_1CFDBCF44()
{
  result = qword_1EC509558;
  if (!qword_1EC509558)
  {
    sub_1CFDBCC54(255, &qword_1EC509508, sub_1CFDBCC00, MEMORY[0x1E69E63B0], MEMORY[0x1E6968E78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509558);
  }

  return result;
}

uint64_t sub_1CFDBCFE0(uint64_t a1, int a2)
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

uint64_t sub_1CFDBD000(uint64_t result, int a2, int a3)
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

uint64_t sub_1CFDBD128(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

HealthBalance::BalanceURLBuilder::Route_optional __swiftcall BalanceURLBuilder.Route.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1CFE30F54();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t BalanceURLBuilder.Route.rawValue.getter()
{
  v1 = 0x5265636E616C6162;
  v2 = 0x7961446E65766573;
  if (*v0 != 2)
  {
    v2 = 0x654D796144656E6FLL;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1CFDBD2A0()
{
  sub_1CFE31144();
  sub_1CFE30984();

  return sub_1CFE31184();
}

uint64_t sub_1CFDBD388(unsigned __int8 a1)
{
  sub_1CFE31144();
  sub_1CFE30984();

  return sub_1CFE31184();
}

uint64_t sub_1CFDBD4A4(uint64_t a1)
{
  sub_1CFE30984();
}

uint64_t sub_1CFDBD578(uint64_t a1)
{
  sub_1CFE31144();
  sub_1CFE30984();

  return sub_1CFE31184();
}

uint64_t sub_1CFDBD65C(uint64_t a1, unsigned __int8 a2)
{
  sub_1CFE31144();
  sub_1CFE30984();

  return sub_1CFE31184();
}

void sub_1CFDBD780(unint64_t *a1@<X8>)
{
  v2 = 0xEB000000006D6F6FLL;
  v3 = 0x5265636E616C6162;
  v4 = 0xEF7363697274654DLL;
  v5 = 0x7961446E65766573;
  if (*v1 != 2)
  {
    v5 = 0x654D796144656E6FLL;
    v4 = 0xED00007363697274;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000011;
    v2 = 0x80000001CFE38470;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

HealthBalance::BalanceURLBuilder::Source_optional __swiftcall BalanceURLBuilder.Source.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1CFE30F54();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t BalanceURLBuilder.Source.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0xD000000000000010;
    v7 = 0xD000000000000019;
    if (v1 != 8)
    {
      v7 = 0x746567646977;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0x65656C536F6E616ELL;
    if (v1 != 5)
    {
      v8 = 0x7070416863746177;
    }

    if (*v0 <= 6u)
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
    v2 = 0x7974697669746361;
    v3 = 0x704168746C616568;
    v4 = 0xD000000000000015;
    if (v1 != 3)
    {
      v4 = 0x747465536F6E616ELL;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x7373656E746966;
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

uint64_t sub_1CFDBD9E8()
{
  v1 = *v0;
  sub_1CFE31144();
  sub_1CFDD8134(v3, v1);
  return sub_1CFE31184();
}

uint64_t sub_1CFDBDA38(uint64_t a1)
{
  v2 = *v1;
  sub_1CFE31144();
  sub_1CFDD8134(v4, v2);
  return sub_1CFE31184();
}

unint64_t sub_1CFDBDA88@<X0>(unint64_t *a1@<X8>)
{
  result = BalanceURLBuilder.Source.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t BalanceURLBuilder.RoutingKey.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6574756F72;
  v3 = 0xD000000000000015;
  v4 = 0xD000000000000013;
  if (v1 != 4)
  {
    v4 = 0x6163696669746F6ELL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656372756F73;
  if (v1 != 1)
  {
    v5 = 0x6144746567726174;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

HealthBalance::BalanceURLBuilder::RoutingKey_optional __swiftcall BalanceURLBuilder.RoutingKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1CFE30F54();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1CFDBDBF0(uint64_t a1)
{
  sub_1CFE30984();
}

void sub_1CFDBDD08(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6574756F72;
  v5 = 0x80000001CFE38580;
  v6 = 0xD000000000000015;
  v7 = 0xD000000000000013;
  v8 = 0x80000001CFE385A0;
  if (v2 != 4)
  {
    v7 = 0x6163696669746F6ELL;
    v8 = 0xEE0044496E6F6974;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xE600000000000000;
  v10 = 0x656372756F73;
  if (v2 != 1)
  {
    v10 = 0x6144746567726174;
    v9 = 0xE900000000000079;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

HealthBalance::BalanceURLBuilder __swiftcall BalanceURLBuilder.init()()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedBehavior];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 isAppleWatch];

    *v1 = v4;
  }

  else
  {
    __break(1u);
  }

  return v2;
}

uint64_t BalanceURLBuilder.url(route:source:)@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  sub_1CFDC3C20(0, &qword_1EDC319A8, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v33 - v8;
  v10 = sub_1CFE30114();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = *a2;
  v17 = *v3;
  sub_1CFE30104();
  if (v17 == 1)
  {
    v18 = "swift";
    v19 = 0xD00000000000001BLL;
  }

  else
  {
    sub_1CFE30924();
    v18 = " Date";
    v19 = 0xD000000000000029;
  }

  sub_1CFE300F4();
  MEMORY[0x1D3875760](v19, v18 | 0x8000000000000000);
  v35 = 47;
  v36 = 0xE100000000000000;
  v20 = 0x5265636E616C6162;
  v21 = 0xEB000000006D6F6FLL;
  v22 = 0x7961446E65766573;
  v23 = 0xEF7363697274654DLL;
  if (v15 != 2)
  {
    v22 = 0x654D796144656E6FLL;
    v23 = 0xED00007363697274;
  }

  if (!v15)
  {
    v20 = 0xD000000000000011;
    v21 = 0x80000001CFE38470;
  }

  if (v15 > 1)
  {
    v20 = v22;
    v21 = v23;
  }

  if (v15 == 4)
  {
    v24 = 0;
  }

  else
  {
    v24 = v20;
  }

  if (v15 == 4)
  {
    v25 = 0xE000000000000000;
  }

  else
  {
    v25 = v21;
  }

  MEMORY[0x1D3876060](v24, v25);

  MEMORY[0x1D3875780](v35, v36);
  LOBYTE(v35) = v16;
  sub_1CFDBE434(&v35);
  sub_1CFE30094();
  v26 = sub_1CFE30244();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v9, 1, v26) != 1)
  {
    (*(v11 + 8))(v14, v10);
    return (*(v27 + 32))(v34, v9, v26);
  }

  sub_1CFDC2860(v9, &qword_1EDC319A8, MEMORY[0x1E6968FB0]);
  v35 = 0;
  v36 = 0xE000000000000000;
  sub_1CFE30DB4();

  v35 = 0xD00000000000001FLL;
  v36 = 0x80000001CFE38B20;
  if (v15 == 4)
  {
    v29 = 0xE300000000000000;
    v30 = 7104878;
  }

  else if (v15 > 1)
  {
    if (v15 == 2)
    {
      v30 = 0x7961446E65766573;
      v29 = 0xEF7363697274654DLL;
    }

    else
    {
      v30 = 0x654D796144656E6FLL;
      v29 = 0xED00007363697274;
    }
  }

  else if (v15)
  {
    v30 = 0x5265636E616C6162;
    v29 = 0xEB000000006D6F6FLL;
  }

  else
  {
    v29 = 0x80000001CFE38470;
    v30 = 0xD000000000000011;
  }

  MEMORY[0x1D3876060](v30, v29);

  v31 = 0xE800000000000000;
  MEMORY[0x1D3876060](0x20656372756F7320, 0xE800000000000000);
  if (v16 <= 4)
  {
    if (v16 <= 1)
    {
      if (v16)
      {
        v31 = 0xE700000000000000;
        v32 = 0x7373656E746966;
      }

      else
      {
        v32 = 0x7974697669746361;
      }

      goto LABEL_47;
    }

    if (v16 != 2)
    {
      if (v16 == 3)
      {
        v31 = 0x80000001CFE384D0;
        v32 = 0xD000000000000015;
      }

      else
      {
        v31 = 0xEC00000073676E69;
        v32 = 0x747465536F6E616ELL;
      }

      goto LABEL_47;
    }

    v32 = 0x704168746C616568;
    goto LABEL_46;
  }

  if (v16 > 6)
  {
    if (v16 == 7)
    {
      v31 = 0x80000001CFE38510;
      v32 = 0xD000000000000010;
    }

    else if (v16 == 8)
    {
      v31 = 0x80000001CFE38530;
      v32 = 0xD000000000000019;
    }

    else
    {
      v31 = 0xE600000000000000;
      v32 = 0x746567646977;
    }

    goto LABEL_47;
  }

  if (v16 == 5)
  {
    v32 = 0x65656C536F6E616ELL;
LABEL_46:
    v31 = 0xE900000000000070;
    goto LABEL_47;
  }

  v32 = 0x7070416863746177;
LABEL_47:
  MEMORY[0x1D3876060](v32, v31);

  result = sub_1CFE30ED4();
  __break(1u);
  return result;
}