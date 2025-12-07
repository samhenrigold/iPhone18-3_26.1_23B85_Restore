void sub_229423280(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_2294232F8(void **a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_22944F054();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = [v8 educationalStepsReviewDate];
  if (v9)
  {
    v10 = v9;
    sub_22944F014();

    v11 = sub_22944EFF4();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v12 = sub_22944F174();
    __swift_project_value_buffer(v12, qword_2813DBFB8);
    v13 = v8;
    v14 = sub_22944F154();
    v15 = sub_22944FA64();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v27 = v17;
      *v16 = 136315394;
      v18 = sub_22944FF44();
      v20 = sub_2293D4824(v18, v19, &v27);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      v21 = HKSensitiveLogItem();
      sub_22944FB34();
      swift_unknownObjectRelease();
      v22 = sub_22944F8A4();
      v24 = sub_2293D4824(v22, v23, &v27);

      *(v16 + 14) = v24;
      _os_log_impl(&dword_2293D1000, v14, v15, "[%s] Received record with no educational steps review date: %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AACCC00](v17, -1, -1);
      MEMORY[0x22AACCC00](v16, -1, -1);
    }

    v11 = 0;
  }

  return v11 & 1;
}

Swift::OpaquePointer_optional __swiftcall HDMCPregnancyFeatureAdjustmentManager.queryDeletedPregnancySamples()()
{
  swift_getObjectType();
  v1 = OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_unitTest_deletedPregnancySamplesQueryResults;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    sub_2293D30DC(0, &unk_2813DBE70, 0x277D105E8);
    Strong = swift_unknownObjectUnownedLoadStrong();
    v8 = MEMORY[0x277D84F90];
    v4 = MEMORY[0x28223BE20](Strong);
    v7[2] = &v8;
    sub_2293D5FC4(v4, 0, 1, sub_22942A950, v7);

    v2 = v8;
  }

  v6 = v2;
  result.value._rawValue = v6;
  result.is_nil = v5;
  return result;
}

id HDMedicalIDDataManager.getMedicalIDData()()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v1 = [v0 fetchMedicalIDIfSetUpWithError_];
  v2 = v6[0];
  if (!v1)
  {
    v3 = v2;
    v4 = sub_22944EF74();

    swift_willThrow();
    return 0;
  }

  return v1;
}

uint64_t sub_2294238C4()
{
  v0 = sub_22944F054();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v2, qword_27D86E640);
  __swift_project_value_buffer(v0, qword_27D86E640);
  sub_22944EFA4();
  sub_22944F034();
  return (*(v1 + 8))(v4, v0);
}

uint64_t static Date.erased.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D86E1E0 != -1)
  {
    swift_once();
  }

  v2 = sub_22944F054();
  v3 = __swift_project_value_buffer(v2, qword_27D86E640);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *sub_229423A7C(uint64_t a1, unint64_t a2)
{
  v3 = sub_229423AC8(a1, a2);
  sub_229423BF8(&unk_283CBA090);
  return v3;
}

void *sub_229423AC8(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_229423CE4(v5, 0);
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

  result = sub_22944FCC4();
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
        v10 = sub_22944F8E4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_229423CE4(v10, 0);
        result = sub_22944FC74();
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

uint64_t sub_229423BF8(uint64_t result)
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

  result = sub_229423D5C(result, v11, 1, v3);
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

void *sub_229423CE4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_2293D3AF0(0, &qword_2813DBDA8, MEMORY[0x277D84B78]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_229423D5C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2293D3AF0(0, &qword_2813DBDA8, MEMORY[0x277D84B78]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_229423E54(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_22944FBD4();
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

  v13 = sub_22944FBD4();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_229426F98(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_2294337FC(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
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

uint64_t sub_229423F68(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  sub_22944F894();
  sub_22944FEC4();
  sub_22944F8C4();
  v7 = sub_22944FEE4();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = sub_22944F894();
      v13 = v12;
      if (v11 == sub_22944F894() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = sub_22944FE24();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    sub_229425554(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_229424114(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_22944F0B4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_2293D5C5C(&qword_27D86E758, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v33 = a2;
  v11 = sub_22944F814();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_2293D5C5C(&qword_27D86E760, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = sub_22944F854();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_22942573C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2294243F4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_22944FEC4();
  sub_22944F8C4();
  v8 = sub_22944FEE4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_22944FE24() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_2294259E0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_229424544(_BYTE *a1, char a2)
{
  v3 = v2;
  v6 = *v3;
  sub_22944FEC4();
  v7 = a2 & 1;
  MEMORY[0x22AACBD40](v7);
  v8 = sub_22944FEE4();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(v6 + 48);
      if (*(v12 + v10) == v7)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(v7) = *(v12 + v10);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_229425B60(v7, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    result = 1;
  }

  *a1 = v7;
  return result;
}

uint64_t sub_229424644(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, void *a5, unint64_t *a6)
{
  if (a2)
  {
    sub_22942B1F0(0, a3, a4, a5, a6);
    v10 = sub_22944FC44();
    v23 = v10;
    sub_22944FB94();
    if (sub_22944FC04())
    {
      sub_2293D30DC(0, a4, a5);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_229424ACC(v17 + 1, a3, a4, a5, a6);
        }

        v10 = v23;
        result = sub_22944FAF4();
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (sub_22944FC04());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v10;
}

uint64_t sub_22942485C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22942AD08(0);
  result = sub_22944FC34();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_22944F894();
      sub_22944FEC4();
      sub_22944F8C4();
      v18 = sub_22944FEE4();

      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v7, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_229424ACC(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  sub_22942B1F0(0, a2, a3, a4, a5);
  result = sub_22944FC34();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 56);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = result + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(*(v7 + 48) + 8 * (v18 | (v10 << 6)));
      result = sub_22944FAF4();
      v22 = -1 << *(v9 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v21;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v7 + 32);
    if (v29 >= 64)
    {
      bzero((v7 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v29;
    }

    *(v7 + 16) = 0;
  }

  *v6 = v9;
  return result;
}

uint64_t sub_229424CE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v38 = sub_22944F0B4();
  v4 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v2;
  sub_22942AF44(0, v7);
  result = sub_22944FC34();
  v9 = result;
  if (*(v6 + 16))
  {
    v32 = v2;
    v33 = v6;
    v10 = 0;
    v11 = (v6 + 56);
    v12 = 1 << *(v6 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v6 + 56);
    v15 = (v12 + 63) >> 6;
    v36 = v4 + 32;
    v16 = result + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v6 + 48) + *(v4 + 72) * (v18 | (v10 << 6));
      v22 = *(v4 + 32);
      v34 = *(v4 + 72);
      v35 = v22;
      v22(v37, v21, v38);
      sub_2293D5C5C(&qword_27D86E758, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_22944F814();
      v23 = -1 << *(v9 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      result = v35(*(v9 + 48) + v17 * v34, v37, v38);
      ++*(v9 + 16);
      v6 = v33;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v6 + 32);
    if (v30 >= 64)
    {
      bzero(v11, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v30;
    }

    v3 = v32;
    *(v6 + 16) = 0;
  }

  *v3 = v9;
  return result;
}

uint64_t sub_229425038(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22942AB80();
  result = sub_22944FC34();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_22944FEC4();
      sub_22944F8C4();
      result = sub_22944FEE4();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22942528C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22942AAD0(0);
  result = sub_22944FC34();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_22944FEC4();
      MEMORY[0x22AACBD40](v17);
      result = sub_22944FEE4();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_2294254D0(uint64_t a1, uint64_t a2)
{
  sub_22944FAF4();
  result = sub_22944FB74();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_229425554(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_22942485C(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_229425CB4();
      goto LABEL_16;
    }

    sub_2294263F8(v7 + 1);
  }

  v9 = *v3;
  sub_22944F894();
  sub_22944FEC4();
  sub_22944F8C4();
  v10 = sub_22944FEE4();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier(0);
    do
    {
      v13 = sub_22944F894();
      v15 = v14;
      if (v13 == sub_22944F894() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = sub_22944FE24();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_22944FE44();
  __break(1u);
  return result;
}

uint64_t sub_22942573C(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_22944F0B4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_229424CE8(v12 + 1, v9);
  }

  else
  {
    if (v13 > v12)
    {
      sub_229425F4C(v8, v9);
      goto LABEL_12;
    }

    sub_229426848(v12 + 1, v9);
  }

  v14 = *v3;
  sub_2293D5C5C(&qword_27D86E758, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v15 = sub_22944F814();
  v16 = v14 + 56;
  v32 = v14;
  v17 = -1 << *(v14 + 32);
  a2 = v15 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v11, *(v32 + 48) + v22 * a2, v6);
      sub_2293D5C5C(&qword_27D86E760, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v23 = sub_22944F854();
      (*(v20 - 8))(v11, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22944FE44();
  __break(1u);
  return result;
}

uint64_t sub_2294259E0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_229425038(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_229426174();
      goto LABEL_16;
    }

    sub_229426B58(v8 + 1);
  }

  v10 = *v4;
  sub_22944FEC4();
  sub_22944F8C4();
  result = sub_22944FEE4();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_22944FE24();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_22944FE44();
  __break(1u);
  return result;
}

uint64_t sub_229425B60(uint64_t result, unint64_t a2, char a3)
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
    sub_22942528C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_2294262C4();
      a2 = v7;
      goto LABEL_12;
    }

    sub_229426D84(v5 + 1);
  }

  v8 = *v3;
  sub_22944FEC4();
  MEMORY[0x22AACBD40](v4 & 1);
  result = sub_22944FEE4();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != (v4 & 1))
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
  *(*(v11 + 48) + a2) = v4 & 1;
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
  result = sub_22944FE44();
  __break(1u);
  return result;
}

id sub_229425CB4()
{
  v1 = v0;
  sub_22942AD08(0);
  v2 = *v0;
  v3 = sub_22944FC24();
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
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

id sub_229425DF8(unint64_t *a1, unint64_t *a2, void *a3, unint64_t *a4)
{
  v5 = v4;
  sub_22942B1F0(0, a1, a2, a3, a4);
  v6 = *v4;
  v7 = sub_22944FC24();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        *(*(v8 + 48) + 8 * v21) = v22;
        result = v22;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v5 = v8;
  }

  return result;
}

void *sub_229425F4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_22944F0B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22942AF44(0, v8);
  v9 = *v2;
  v10 = sub_22944FC24();
  v11 = v10;
  if (*(v9 + 16))
  {
    v25 = v3;
    result = (v10 + 56);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 56 + 8 * v13)
    {
      result = memmove(result, (v9 + 56), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v9 + 16);
    v16 = 1 << *(v9 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v9 + 56);
    v19 = (v16 + 63) >> 6;
    v26 = v5 + 32;
    for (i = v5 + 16; v18; result = (*(v5 + 32))(*(v11 + 48) + v23, v7, v4))
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v23 = *(v5 + 72) * (v20 | (v15 << 6));
      (*(v5 + 16))(v7, *(v9 + 48) + v23, v4);
    }

    v21 = v15;
    while (1)
    {
      v15 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v15 >= v19)
      {

        v3 = v25;
        goto LABEL_21;
      }

      v22 = *(v9 + 56 + 8 * v15);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v3 = v11;
  }

  return result;
}

void *sub_229426174()
{
  v1 = v0;
  sub_22942AB80();
  v2 = *v0;
  v3 = sub_22944FC24();
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
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

void *sub_2294262C4()
{
  v1 = v0;
  sub_22942AAD0(0);
  v2 = *v0;
  v3 = sub_22944FC24();
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

uint64_t sub_2294263F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22942AD08(0);
  result = sub_22944FC34();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_22944F894();
      sub_22944FEC4();
      v18 = v17;
      sub_22944F8C4();
      v19 = sub_22944FEE4();

      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v18;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v27;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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

uint64_t sub_229426640(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  sub_22942B1F0(0, a2, a3, a4, a5);
  result = sub_22944FC34();
  v9 = result;
  if (*(v7 + 16))
  {
    v28 = v5;
    v10 = 0;
    v11 = 1 << *(v7 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v7 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(*(v7 + 48) + 8 * (v17 | (v10 << 6)));
      result = sub_22944FAF4();
      v21 = -1 << *(v9 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v9 + 48) + 8 * v16) = v20;
      ++*(v9 + 16);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v14)
      {

        v6 = v28;
        goto LABEL_26;
      }

      v19 = *(v7 + 56 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v6 = v9;
  }

  return result;
}

uint64_t sub_229426848(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v35 = sub_22944F0B4();
  v4 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_22942AF44(0, v8);
  v9 = sub_22944FC34();
  result = v7;
  if (*(v7 + 16))
  {
    v30 = v2;
    v11 = 0;
    v12 = v7 + 56;
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v33 = v4 + 16;
    v34 = v4;
    v17 = v9 + 56;
    v31 = (v4 + 32);
    v32 = result;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = *(v34 + 72);
      (*(v34 + 16))(v6, *(result + 48) + v22 * (v19 | (v11 << 6)), v35);
      sub_2293D5C5C(&qword_27D86E758, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_22944F814();
      v23 = -1 << *(v9 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v17 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v17 + 8 * v25);
          if (v29 != -1)
          {
            v18 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v18 = __clz(__rbit64((-1 << v24) & ~*(v17 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      (*v31)(*(v9 + 48) + v18 * v22, v6, v35);
      ++*(v9 + 16);
      result = v32;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v3 = v30;
        goto LABEL_26;
      }

      v21 = *(v12 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
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
    *v3 = v9;
  }

  return result;
}

uint64_t sub_229426B58(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22942AB80();
  result = sub_22944FC34();
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
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_22944FEC4();

      sub_22944F8C4();
      result = sub_22944FEE4();
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

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
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
        goto LABEL_26;
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

uint64_t sub_229426D84(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22942AAD0(0);
  result = sub_22944FC34();
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
      sub_22944FEC4();
      MEMORY[0x22AACBD40](v16);
      result = sub_22944FEE4();
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

uint64_t sub_229426F98(uint64_t a1, char a2)
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

  sub_22944FBD4();
LABEL_9:
  result = sub_22944FCA4();
  *v2 = result;
  return result;
}

unint64_t sub_229427038(uint64_t a1)
{
  v2 = sub_22944FEB4();

  return sub_229427110(a1, v2);
}

unint64_t sub_22942707C(uint64_t a1)
{
  sub_22944F894();
  sub_22944FEC4();
  sub_22944F8C4();
  v2 = sub_22944FEE4();

  return sub_22942717C(a1, v2);
}

unint64_t sub_229427110(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_22942717C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_22944F894();
      v8 = v7;
      if (v6 == sub_22944F894() && v8 == v9)
      {
        break;
      }

      v11 = sub_22944FE24();

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

uint64_t sub_229427280(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22944F894();
  sub_22944FEC4();
  sub_22944F8C4();
  v4 = sub_22944FEE4();

  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (1)
  {
    v8 = sub_22944F894();
    v10 = v9;
    if (v8 == sub_22944F894() && v10 == v11)
    {
      break;
    }

    v13 = sub_22944FE24();

    if (v13)
    {
      goto LABEL_11;
    }

    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

LABEL_11:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v18 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_229425CB4();
    v16 = v18;
  }

  v14 = *(*(v16 + 48) + 8 * v6);
  sub_229427F8C(v6);
  *v2 = v18;
  return v14;
}

uint64_t sub_229427410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_22942707C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_229427D30();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = sub_22944F054();
    v18 = *(v11 - 8);
    (*(v18 + 32))(a2, v10 + *(v18 + 72) * v7, v11);
    sub_229427910(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = sub_22944F054();
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t sub_22942757C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v43 = sub_22944F054();
  v5 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_22942AC5C(0);
  v39 = v4;
  result = sub_22944FD74();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v2;
    v36 = (v5 + 16);
    v37 = v7;
    v38 = v5;
    v40 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(v7 + 56);
      v23 = *(*(v7 + 48) + 8 * v21);
      v41 = *(v38 + 72);
      v24 = v22 + v41 * v21;
      if (v39)
      {
        (*v40)(v42, v24, v43);
      }

      else
      {
        (*v36)(v42, v24, v43);
        v25 = v23;
      }

      sub_22944F894();
      sub_22944FEC4();
      sub_22944F8C4();
      v26 = sub_22944FEE4();

      v27 = -1 << *(v9 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v23;
      result = (*v40)(*(v9 + 56) + v41 * v17, v42, v43);
      ++*(v9 + 16);
      v7 = v37;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v7 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

void sub_229427910(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22944FB64() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_22944F894();
      sub_22944FEC4();
      v10 = v9;
      sub_22944F8C4();
      v11 = sub_22944FEE4();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v12 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 8 * v3);
      v15 = (v13 + 8 * v6);
      if (v3 != v6 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(sub_22944F054() - 8) + 72);
      v18 = v17 * v3;
      v19 = v16 + v17 * v3;
      v20 = v17 * v6;
      v21 = v16 + v17 * v6 + v17;
      if (v18 < v20 || v19 >= v21)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v18 == v20)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }
}

id sub_229427B14(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v9 = sub_22942707C(a2);
  v10 = v7[2];
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = v8;
  v14 = v7[3];
  if (v14 < v12 || (a3 & 1) == 0)
  {
    if (v14 >= v12 && (a3 & 1) == 0)
    {
      sub_229427D30();
      goto LABEL_7;
    }

    sub_22942757C(v12, a3 & 1);
    v23 = sub_22942707C(a2);
    if ((v13 & 1) == (v24 & 1))
    {
      v9 = v23;
      v15 = *v4;
      if (v13)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier(0);
    result = sub_22944FE54();
    __break(1u);
    return result;
  }

LABEL_7:
  v15 = *v4;
  if (v13)
  {
LABEL_8:
    v16 = v15[7];
    v17 = sub_22944F054();
    v18 = *(v17 - 8);
    v19 = *(v18 + 40);
    v20 = v17;
    v21 = v16 + *(v18 + 72) * v9;

    return v19(v21, a1, v20);
  }

LABEL_13:
  sub_229427C84(v9, a2, a1, v15);

  return a2;
}

uint64_t sub_229427C84(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_22944F054();
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

id sub_229427D30()
{
  v1 = v0;
  v30 = sub_22944F054();
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v29 = v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22942AC5C(0);
  v3 = *v0;
  v4 = sub_22944FD64();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27[0] = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v10 = 0;
    v11 = *(v3 + 16);
    v31 = v5;
    *(v5 + 16) = v11;
    v12 = 1 << *(v3 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v3 + 64);
    v15 = (v12 + 63) >> 6;
    v27[1] = v32 + 32;
    v27[2] = v32 + 16;
    for (i = v3; v14; v3 = i)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_17:
      v19 = v16 | (v10 << 6);
      v20 = *(v3 + 56);
      v21 = *(*(v3 + 48) + 8 * v19);
      v22 = v32;
      v23 = *(v32 + 72) * v19;
      v25 = v29;
      v24 = v30;
      (*(v32 + 16))(v29, v20 + v23, v30);
      v26 = v31;
      *(*(v31 + 48) + 8 * v19) = v21;
      (*(v22 + 32))(*(v26 + 56) + v23, v25, v24);
      result = v21;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27[0];
        v5 = v31;
        goto LABEL_21;
      }

      v18 = *(v7 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v5;
  }

  return result;
}

unint64_t sub_229427F8C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_22944FB64();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        sub_22944F894();
        sub_22944FEC4();
        v11 = v10;
        sub_22944F8C4();
        v12 = sub_22944FEE4();

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + 8 * v2);
          v16 = (v14 + 8 * v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

char *sub_22942816C(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for HDMCPregnancyFeatureAdjustmentManager();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_unitTest_deletedPregnancySamplesQueryResults] = 0;
  swift_unknownObjectUnownedInit();
  *&v14[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_pregnancyManager] = a1;
  v28 = a2;
  if (a4)
  {
    v15 = a1;
    v16 = a4;
  }

  else
  {
    v17 = objc_allocWithZone(MEMORY[0x277D10800]);
    v18 = a1;
    v19 = a2;
    v20 = sub_22944F864();
    v16 = [v17 initWithProfile:v19 debugIdentifier:v20 delegate:{0, v28}];
  }

  *&v14[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_protectedDataOperation] = v16;
  *&v14[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_cardioFitnessFeatureStatusManager] = a5;
  *&v14[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_cardioFitnessFeatureAvailabilityManager] = a6;
  sub_229428480(a7, &v14[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_medicalIDDataManager]);
  v30.receiver = v14;
  v30.super_class = v13;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v21 = a4;
  v22 = objc_msgSendSuper2(&v30, sel_init);
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v24 = result;

    v25 = [v24 isiPad];
    if (v25)
    {
      sub_229428944(a7, &qword_2813DC3A0, &unk_2813DC3A8, &protocol descriptor for MedicalIDDataProviding, sub_22942B194);
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      v26 = *&v22[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_protectedDataOperation];
      v27 = v22;
      [v26 setDelegate_];
      [*&v27[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_pregnancyManager] registerObserver:v27 isUserInitiated:0];
      [a3 registerWithObserver_];

      sub_2293D9118(2);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      sub_229428944(a7, &qword_2813DC3A0, &unk_2813DC3A8, &protocol descriptor for MedicalIDDataProviding, sub_22942B194);
    }

    return v22;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_229428480(uint64_t a1, uint64_t a2)
{
  sub_2294289A0(0, &qword_2813DC3A0, &unk_2813DC3A8, &protocol descriptor for MedicalIDDataProviding, sub_22942B194);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_229428510(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = objc_allocWithZone(type metadata accessor for HDMCPregnancyFeatureAdjustmentManager());

  return sub_2294285A0(a1, a2, a3, a4, a5, a6, a7, v16);
}

char *sub_2294285A0(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8)
{
  *&a8[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_unitTest_deletedPregnancySamplesQueryResults] = 0;
  swift_unknownObjectUnownedInit();
  *&a8[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_pregnancyManager] = a1;
  if (a4)
  {
    swift_unknownObjectRetain();
    v15 = a4;
  }

  else
  {
    v16 = objc_allocWithZone(MEMORY[0x277D10800]);
    swift_unknownObjectRetain();
    v17 = a2;
    v18 = sub_22944F864();
    v15 = [v16 initWithProfile:v17 debugIdentifier:v18 delegate:0];
  }

  *&a8[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_protectedDataOperation] = v15;
  *&a8[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_cardioFitnessFeatureStatusManager] = a5;
  *&a8[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_cardioFitnessFeatureAvailabilityManager] = a6;
  sub_229428480(a7, &a8[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_medicalIDDataManager]);
  v27.receiver = a8;
  v27.super_class = type metadata accessor for HDMCPregnancyFeatureAdjustmentManager();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v19 = a4;
  v20 = objc_msgSendSuper2(&v27, sel_init);
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v22 = result;
    swift_unknownObjectRelease();
    v23 = [v22 isiPad];

    if (v23)
    {
      sub_229428944(a7, &qword_2813DC3A0, &unk_2813DC3A8, &protocol descriptor for MedicalIDDataProviding, sub_22942B194);
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      v24 = *&v20[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_protectedDataOperation];
      v25 = v20;
      [v24 setDelegate_];
      [*&v25[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_pregnancyManager] registerObserver:v25 isUserInitiated:0];
      [a3 registerWithObserver_];

      sub_2293D9118(2);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      sub_229428944(a7, &qword_2813DC3A0, &unk_2813DC3A8, &protocol descriptor for MedicalIDDataProviding, sub_22942B194);
    }

    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_229428884()
{
  v1 = v0[2];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[10];
  if (v1)
  {
    v1();
  }

  sub_229416768(v2, v3, v4);
  if (v5)
  {
    v7 = v5();
  }

  return v6(v7);
}

uint64_t sub_229428914(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_229428944(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_2294289A0(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_2294289A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_22944FB14();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void (*sub_2294289FC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AACBB00](a2, a3);
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
    return sub_22942B530;
  }

  __break(1u);
  return result;
}

void (*sub_229428A7C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AACBB00](a2, a3);
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
    return sub_229428AFC;
  }

  __break(1u);
  return result;
}

uint64_t sub_229428B04(uint64_t a1, void *a2, uint64_t a3)
{
  swift_getObjectType();
  v22[3] = type metadata accessor for HDMCExperienceDaemonStore();
  v22[4] = sub_2293D5C5C(&qword_2813DC470, type metadata accessor for HDMCExperienceDaemonStore, &protocol conformance descriptor for HDMCExperienceDaemonStore);
  v22[0] = a3;
  sub_22942B130(v22, v21);
  sub_22942B194(0, &qword_2813DC3C0, &protocol descriptor for ExperienceModelDaemonStorageProvider);

  if (swift_dynamicCast())
  {
    v7 = v20;
  }

  else
  {
    v7 = 0;
  }

  HDCodableMenstrualCyclesExperienceModel.deleteRecords(with:)(a1, v6);
  if (HKShowSensitiveLogItems())
  {
    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v8 = sub_22944F174();
    __swift_project_value_buffer(v8, qword_2813DBFB8);

    v9 = sub_22944F154();
    v10 = sub_22944FA84();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v21[0] = v12;
      *v11 = 136315394;
      v13 = sub_22944FF44();
      v15 = sub_2293D4824(v13, v14, v21);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2080;
      sub_22944F0B4();
      sub_2293D5C5C(&qword_27D86E758, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v16 = sub_22944F9C4();
      v18 = sub_2293D4824(v16, v17, v21);

      *(v11 + 14) = v18;
      _os_log_impl(&dword_2293D1000, v9, v10, "[%s] Deleted records with UUIDs: %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AACCC00](v12, -1, -1);
      MEMORY[0x22AACCC00](v11, -1, -1);
    }
  }

  if (v7)
  {

    HDMCExperienceDaemonStore.setModel(_:)(a2);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v22);
}

uint64_t sub_2294291B8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getObjectType();
  v28[3] = a5;
  v28[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a3, a5);
  sub_22942B130(v28, v27);
  sub_22942B194(0, &qword_2813DC3C0, &protocol descriptor for ExperienceModelDaemonStorageProvider);
  type metadata accessor for HDMCExperienceDaemonStore();
  if (swift_dynamicCast())
  {
    v13 = v26;
  }

  else
  {
    v13 = 0;
  }

  HDCodableMenstrualCyclesExperienceModel.deleteRecords(with:)(a1, v12);
  if (HKShowSensitiveLogItems())
  {
    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v14 = sub_22944F174();
    __swift_project_value_buffer(v14, qword_2813DBFB8);

    v15 = sub_22944F154();
    v16 = sub_22944FA84();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v27[0] = v18;
      *v17 = 136315394;
      v19 = sub_22944FF44();
      v21 = sub_2293D4824(v19, v20, v27);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      sub_22944F0B4();
      sub_2293D5C5C(&qword_27D86E758, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v22 = sub_22944F9C4();
      v24 = sub_2293D4824(v22, v23, v27);

      *(v17 + 14) = v24;
      _os_log_impl(&dword_2293D1000, v15, v16, "[%s] Deleted records with UUIDs: %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AACCC00](v18, -1, -1);
      MEMORY[0x22AACCC00](v17, -1, -1);
    }
  }

  if (v13)
  {

    HDMCExperienceDaemonStore.setModel(_:)(a2);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v28);
}

void sub_22942986C(uint64_t a1, id a2)
{
  v2 = [a2 pregnancyModeSetupCompletionSet];
  sub_2293D30DC(0, &qword_2813DBE38, 0x277D119C0);
  sub_2293D6A34(&qword_2813DBE30, &qword_2813DBE38, 0x277D119C0);
  v3 = sub_22944F9B4();

  if ((v3 & 0xC000000000000001) != 0)
  {
    sub_22944FB94();
    sub_22944FA04();
    v3 = v33;
    v4 = v34;
    v5 = v35;
    v6 = v36;
    v7 = v37;
  }

  else
  {
    v6 = 0;
    v8 = -1 << *(v3 + 32);
    v4 = v3 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v3 + 56);
  }

  v11 = (v5 + 64) >> 6;
  v29 = v4;
  v30 = v3;
  while (v3 < 0)
  {
    if (!sub_22944FC04() || (swift_dynamicCast(), v16 = v32, v14 = v6, v15 = v7, !v32))
    {
LABEL_30:
      sub_229429864(v3);
      return;
    }

LABEL_18:
    v17 = [v16 pregnancyAdjustedFeaturesSet];
    type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier(0);
    sub_2293D5C5C(&qword_27D86E500, type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier, &unk_22945476C);
    v18 = sub_22944F9B4();

    if (*(v18 + 16))
    {
      v31 = v15;
      sub_22944F894();
      sub_22944FEC4();
      sub_22944F8C4();
      v19 = sub_22944FEE4();

      v20 = -1 << *(v18 + 32);
      v21 = v19 & ~v20;
      if ((*(v18 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
      {
        v22 = ~v20;
        while (1)
        {
          v23 = sub_22944F894();
          v25 = v24;
          if (v23 == sub_22944F894() && v25 == v26)
          {
            break;
          }

          v28 = sub_22944FE24();

          if (v28)
          {
            goto LABEL_29;
          }

          v21 = (v21 + 1) & v22;
          if (((*(v18 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_27;
          }
        }

LABEL_29:

        v4 = v29;
        v3 = v30;
        sub_22944FCD4();
        sub_22944FD04();
        sub_22944FD14();
        sub_22944FCE4();
        v6 = v14;
        v7 = v31;
      }

      else
      {
LABEL_27:

        v6 = v14;
        v3 = v30;
        v7 = v31;
        v4 = v29;
      }
    }

    else
    {

      v6 = v14;
      v7 = v15;
    }
  }

  v12 = v6;
  v13 = v7;
  v14 = v6;
  if (v7)
  {
LABEL_14:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v3 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
      goto LABEL_30;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_30;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

id _s27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManagerC10cleanDates4fromSo38HKMCPregnancyModeSetupCompletionRecordCAG_tF_0(void *a1)
{
  sub_2293D7574(0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v97 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v104 = &v94 - v6;
  MEMORY[0x28223BE20](v5);
  v99 = &v94 - v7;
  v96 = sub_22944F0B4();
  v100 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v105 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22944F054();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v101 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v112 = &v94 - v14;
  MEMORY[0x28223BE20](v13);
  v115 = &v94 - v15;
  sub_2293D7594(0, &qword_27D86E770, sub_22942AFD8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v113 = (&v94 - v20);
  v98 = a1;
  v21 = [a1 postPregnancyFeatureAdjustmentCompletionLog];
  type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier(0);
  v23 = v22;
  v102 = sub_2293D5C5C(&qword_27D86E500, type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier, &unk_22945476C);
  v103 = v23;
  v24 = sub_22944F7F4();

  v25 = *(v24 + 64);
  v107 = v24 + 64;
  v26 = 1 << *(v24 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v25;
  v29 = (v26 + 63) >> 6;
  v109 = (v10 + 16);
  v110 = v10;
  v116 = (v10 + 32);
  v114 = (v10 + 8);
  v94 = v10 + 40;

  v30 = 0;
  v108 = v24;
  v106 = v24;
  v111 = v29;
  while (1)
  {
    v31 = v113;
    if (!v28)
    {
      if (v29 <= (v30 + 1))
      {
        v33 = (v30 + 1);
      }

      else
      {
        v33 = v29;
      }

      v34 = (v33 - 1);
      while (1)
      {
        v32 = (v30 + 1);
        if (__OFADD__(v30, 1))
        {
          break;
        }

        if (v32 >= v29)
        {
          sub_22942AFD8(0);
          v41 = v52;
          (*(*(v52 - 8) + 56))(v19, 1, 1, v52);
          v28 = 0;
          goto LABEL_14;
        }

        v28 = *(v107 + 8 * v32);
        ++v30;
        if (v28)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_42;
    }

    v32 = v30;
LABEL_13:
    v35 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    v36 = v35 | (v32 << 6);
    v37 = *(*(v108 + 48) + 8 * v36);
    v38 = v110;
    v39 = v115;
    (*(v110 + 16))(v115, *(v108 + 56) + *(v110 + 72) * v36, v9);
    sub_22942AFD8(0);
    v41 = v40;
    v42 = *(v40 + 48);
    *v19 = v37;
    (*(v38 + 32))(&v19[v42], v39, v9);
    (*(*(v41 - 8) + 56))(v19, 0, 1, v41);
    v43 = v37;
    v34 = v32;
LABEL_14:
    sub_22942B04C(v19, v31);
    sub_22942AFD8(0);
    if ((*(*(v41 - 8) + 48))(v31, 1, v41) == 1)
    {
      break;
    }

    v117 = v34;
    v44 = *v31;
    v45 = *v116;
    v46 = v31 + *(v41 + 48);
    v47 = v9;
    v48 = v112;
    (*v116)(v112, v46, v47);
    v49 = v115;
    sub_22944EFA4();
    sub_2293D5C5C(&qword_2813DC4A8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
    v50 = sub_22944F854();
    v51 = *v114;
    (*v114)(v49, v47);
    if (v50)
    {
      v51(v48, v47);

      v30 = v117;
      v9 = v47;
      v29 = v111;
    }

    else
    {
      v53 = v45;
      if (qword_27D86E1E0 != -1)
      {
        swift_once();
      }

      v9 = v47;
      v54 = __swift_project_value_buffer(v47, qword_27D86E640);
      (*v109)(v101, v54, v47);
      v55 = v106;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v118 = v55;
      v56 = v44;
      v58 = sub_22942707C(v44);
      v59 = v55[2];
      v60 = (v57 & 1) == 0;
      v61 = v59 + v60;
      if (__OFADD__(v59, v60))
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        result = sub_22944FE54();
        __break(1u);
        return result;
      }

      v62 = v57;
      if (v55[3] >= v61)
      {
        v29 = v111;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_229427D30();
        }
      }

      else
      {
        sub_22942757C(v61, isUniquelyReferenced_nonNull_native);
        v63 = sub_22942707C(v56);
        v29 = v111;
        if ((v62 & 1) != (v64 & 1))
        {
          goto LABEL_45;
        }

        v58 = v63;
      }

      v106 = v118;
      if (v62)
      {
        (*(v110 + 40))(v118[7] + *(v110 + 72) * v58, v101, v9);

        v51(v112, v9);
        v30 = v117;
      }

      else
      {
        v118[(v58 >> 6) + 8] |= 1 << v58;
        *(v106[6] + 8 * v58) = v56;
        v53(v106[7] + *(v110 + 72) * v58, v101, v9);
        v51(v112, v9);
        v65 = v106[2];
        v66 = __OFADD__(v65, 1);
        v67 = v65 + 1;
        if (v66)
        {
          goto LABEL_44;
        }

        v106[2] = v67;
        v30 = v117;
      }
    }
  }

  v28 = v98;
  v117 = [v98 version];
  v68 = [v28 sampleUUID];
  sub_22944F094();

  if (qword_27D86E1E0 == -1)
  {
    goto LABEL_31;
  }

LABEL_42:
  swift_once();
LABEL_31:
  v69 = __swift_project_value_buffer(v9, qword_27D86E640);
  v70 = v110;
  v71 = *(v110 + 16);
  v72 = v99;
  v71(v99, v69, v9);
  v73 = *(v70 + 56);
  v73(v72, 0, 1, v9);
  v74 = [v28 configurationStepsReviewDate];
  v75 = v114;
  if (v74)
  {
    v76 = v97;
    v77 = v74;
    sub_22944F014();

    v73(v76, 0, 1, v9);
    sub_2293D83E8(v76, sub_2293D7574);
    v78 = v104;
    v71(v104, v69, v9);
    v75 = v114;
    v79 = 0;
  }

  else
  {
    v79 = 1;
    v80 = v97;
    v73(v97, 1, 1, v9);
    sub_2293D83E8(v80, sub_2293D7574);
    v78 = v104;
  }

  v73(v78, v79, 1, v9);
  v81 = [v28 pregnancyAdjustedFeaturesSet];
  sub_22944F9B4();

  v82 = sub_22944F074();
  v83 = *(v110 + 48);
  if (v83(v72, 1, v9) == 1)
  {
    v84 = 0;
  }

  else
  {
    v84 = sub_22944EFD4();
    (*v75)(v72, v9);
  }

  v85 = v96;
  v86 = v104;
  if (v83(v104, 1, v9) == 1)
  {
    v87 = 0;
  }

  else
  {
    v87 = sub_22944EFD4();
    (*v75)(v86, v9);
  }

  v88 = objc_allocWithZone(MEMORY[0x277D119C0]);
  v89 = sub_22944F9A4();

  v90 = sub_22944F7E4();

  v91 = v117;
  v92 = [v88 initWithVersion:v117 sampleUUID:v82 educationalStepsReviewDate:v84 configurationStepsReviewDate:v87 pregnancyAdjustedFeaturesSet:v89 postPregnancyFeatureAdjustmentCompletionLog:v90];

  (*(v100 + 8))(v105, v85);
  return v92;
}

void sub_22942A804(uint64_t a1)
{
  if (!qword_2813DC490)
  {
    sub_2293D7574(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813DC490);
    }
  }
}

uint64_t sub_22942A888(uint64_t a1, uint64_t a2)
{
  sub_2293D7574(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_22942AAD0(uint64_t a1)
{
  if (!qword_2813DBDE0)
  {
    sub_22942AB2C();
    v1 = sub_22944FC64();
    if (!v2)
    {
      atomic_store(v1, &qword_2813DBDE0);
    }
  }
}

unint64_t sub_22942AB2C()
{
  result = qword_2813DC3B8;
  if (!qword_2813DC3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813DC3B8);
  }

  return result;
}

void sub_22942AB80()
{
  if (!qword_27D86E700)
  {
    v0 = sub_22944FC64();
    if (!v1)
    {
      atomic_store(v0, &qword_27D86E700);
    }
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_22942AC5C(uint64_t a1)
{
  if (!qword_27D86E738)
  {
    type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier(255);
    sub_22944F054();
    sub_2293D5C5C(&qword_27D86E500, type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier, &unk_22945476C);
    v1 = sub_22944FD94();
    if (!v2)
    {
      atomic_store(v1, &qword_27D86E738);
    }
  }
}

void sub_22942AD08(uint64_t a1)
{
  if (!qword_27D86E740)
  {
    type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier(255);
    sub_2293D5C5C(&qword_27D86E500, type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier, &unk_22945476C);
    v1 = sub_22944FC64();
    if (!v2)
    {
      atomic_store(v1, &qword_27D86E740);
    }
  }
}

uint64_t sub_22942AD9C(uint64_t a1, uint64_t a2)
{
  sub_2293D7574(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_22942AE00(char a1, void *a2)
{
  v5 = v2[2];
  v6 = v2[3];
  sub_2293D7574(0);
  v8 = (*(*(v7 - 8) + 80) + 48) & ~*(*(v7 - 8) + 80);
  v9 = (*(*(v7 - 8) + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (*(*(v5 - 8) + 80) + v10 + 8) & ~*(*(v5 - 8) + 80);
  v12 = (*(*(v5 - 8) + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_229421C3C(a1, a2, v2[4], v2[5], v2 + v8, *(v2 + v9), *(v2 + v10), v2 + v11, *(v2 + v12), *(v2 + v12 + 8), *(v2 + ((v12 + 23) & 0xFFFFFFFFFFFFFFF8)), v5, v6);
}

void sub_22942AF44(uint64_t a1, uint64_t a2)
{
  if (!qword_27D86E768)
  {
    sub_22944F0B4();
    sub_2293D5C5C(&qword_27D86E758, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v2 = sub_22944FC64();
    if (!v3)
    {
      atomic_store(v2, &qword_27D86E768);
    }
  }
}

void sub_22942AFD8(uint64_t a1)
{
  if (!qword_27D86E778)
  {
    type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier(255);
    sub_22944F054();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D86E778);
    }
  }
}

uint64_t sub_22942B04C(uint64_t a1, uint64_t a2)
{
  sub_2293D7594(0, &qword_27D86E770, sub_22942AFD8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_22942B130(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22942B194(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_22942B1F0(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_2293D30DC(255, a3, a4);
    sub_2293D6A34(a5, a3, a4);
    v9 = sub_22944FC64();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t objectdestroy_17Tm()
{
  sub_2293D7574(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*(v1 - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v7 = sub_22944F054();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3, 1, v7))
  {
    (*(v8 + 8))(v0 + v3, v7);
  }

  if (*(v0 + v6))
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

void sub_22942B404(char a1, void *a2)
{
  sub_2293D7574(0);
  v6 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v7 = (*(*(v5 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_229420620(a1, a2, *(v2 + 16), *(v2 + 24), v2 + v6, *(v2 + v7), *(v2 + v8), *(v2 + v9), *(v2 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_22942B554()
{
  if (!qword_2813DBF90)
  {
    v0 = sub_22944F204();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DBF90);
    }
  }
}

void sub_22942B5AC(uint64_t a1, uint64_t a2)
{
  if (!qword_2813DBFA0)
  {
    sub_22944F0B4();
    v2 = sub_22944F204();
    if (!v3)
    {
      atomic_store(v2, &qword_2813DBFA0);
    }
  }
}

unint64_t sub_22942B62C()
{
  result = qword_2813DC2A0;
  if (!qword_2813DC2A0)
  {
    sub_22942B7C4(255, qword_2813DC2A8, type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord);
    sub_22942B968(&qword_2813DC2F0, type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord, &unk_229454E7C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813DC2A0);
  }

  return result;
}

void sub_22942B6F0()
{
  if (!qword_2813DBF58)
  {
    v0 = sub_22944F654();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DBF58);
    }
  }
}

void sub_22942B750(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void))
{
  if (!*a2)
  {
    sub_22942B7C4(255, a3, a4);
    a5();
    v7 = sub_22944F204();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_22942B7C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22944FB14();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_22942B818()
{
  result = qword_2813DC488;
  if (!qword_2813DC488)
  {
    sub_22942B7C4(255, &unk_2813DC498, MEMORY[0x277CC9578]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813DC488);
  }

  return result;
}

void sub_22942B8A4(uint64_t a1)
{
  if (!qword_2813DBF88)
  {
    sub_22944F054();
    sub_22942B968(&qword_2813DC4A8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
    v1 = sub_22944F4C4();
    if (!v2)
    {
      atomic_store(v1, &qword_2813DBF88);
    }
  }
}

uint64_t sub_22942B968(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22942B9C4(uint64_t a1)
{
  sub_22942B554();
  if (v1 <= 0x3F)
  {
    sub_22942B5AC(319, v1);
    if (v2 <= 0x3F)
    {
      sub_22942B750(319, &qword_2813DBF98, qword_2813DC2A8, type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord, sub_22942B62C);
      if (v3 <= 0x3F)
      {
        sub_22942B6F0();
        if (v4 <= 0x3F)
        {
          sub_22942B750(319, &qword_2813DBFA8, &unk_2813DC498, MEMORY[0x277CC9578], sub_22942B818);
          if (v5 <= 0x3F)
          {
            sub_22942B8A4(319);
            if (v6 <= 0x3F)
            {
              sub_22942BC34(319, &qword_2813DBF40, MEMORY[0x277CFB730], MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_22942BB84(uint64_t a1)
{
  sub_22944F054();
  if (v1 <= 0x3F)
  {
    sub_22942BC34(319, &qword_2813DBF38, MEMORY[0x277CFB4B0], MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22942BC34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_22944F804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_22942BCA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x277D84F90];
  sub_22943F22C(0, v1, 0);
  v2 = v26;
  v25 = a1 + 56;
  result = sub_22944FB54();
  v5 = result;
  v6 = 0;
  v24 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v25 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(a1 + 36);
    result = sub_22944F894();
    v13 = *(v26 + 16);
    v12 = *(v26 + 24);
    if (v13 >= v12 >> 1)
    {
      v22 = v11;
      v23 = result;
      sub_22943F22C((v12 > 1), v13 + 1, 1);
      v11 = v22;
      result = v23;
    }

    *(v26 + 16) = v13 + 1;
    v14 = v26 + 16 * v13;
    *(v14 + 32) = result;
    *(v14 + 40) = v11;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v15 = *(v25 + 8 * v9);
    if ((v15 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v10 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v5 & 0x3F));
    if (v16)
    {
      v7 = __clz(__rbit64(v16)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v8 = v24;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v8 = v24;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v7 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_2294314B8(v5, v10, 0);
          v7 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_2294314B8(v5, v10, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v8)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_22942BEC4(void *a1@<X0>, char *a2@<X8>)
{
  sub_22942B7C4(0, &qword_27D86E770, sub_22942AFD8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v138 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v136 = (&v113 - v7);
  sub_22942B8A4(0);
  v137 = v8;
  v114 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v139 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22944F054();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v132 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22942B7C4(0, qword_2813DC2A8, type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord);
  v142 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v121 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v118 = &v113 - v16;
  sub_22942B750(0, &qword_2813DBF98, qword_2813DC2A8, type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord, sub_22942B62C);
  v131 = v17;
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v122 = &v113 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v120 = &v113 - v21;
  sub_22942B7C4(0, &unk_2813DC498, MEMORY[0x277CC9578]);
  v130 = v22;
  v23 = MEMORY[0x28223BE20](v22);
  v135 = &v113 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v123 = &v113 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v119 = &v113 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v116 = &v113 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v113 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v113 - v34;
  v36 = sub_22944F0B4();
  v126 = *(v36 - 8);
  v127 = v36;
  v37 = MEMORY[0x28223BE20](v36);
  v39 = &v113 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v41 = &v113 - v40;
  v42 = [a1 version];
  v129 = [v42 integerValue];

  v43 = [a1 sampleUUID];
  v125 = v41;
  sub_22944F094();

  v44 = [a1 educationalStepsReviewDate];
  if (v44)
  {
    v45 = v44;
    sub_22944F014();

    v46 = 0;
  }

  else
  {
    v46 = 1;
  }

  v134 = v11;
  v47 = v11 + 56;
  v48 = *(v11 + 56);
  v49 = 1;
  v140 = v48;
  v141 = v47;
  v48(v35, v46, 1, v10);
  v50 = [a1 configurationStepsReviewDate];
  v128 = v35;
  if (v50)
  {
    v51 = v50;
    sub_22944F014();

    v49 = 0;
  }

  v140(v33, v49, 1, v10);
  v52 = [a1 pregnancyAdjustedFeaturesSet];
  type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier(0);
  sub_22942B968(&qword_27D86E500, type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier, &unk_22945476C);
  v117 = sub_22944F9B4();

  v53 = [a1 postPregnancyFeatureAdjustmentCompletionLog];
  v133 = sub_22944F7F4();

  v54 = type metadata accessor for CoherentExperienceSetupRecord(0);
  *&a2[*(v54 + 44)] = MEMORY[0x277D84F98];
  v143 = v129;
  sub_22944F214();
  (*(v126 + 16))(v39, v125, v127);
  v129 = v54;
  sub_22944F214();
  v55 = v116;
  sub_22942A888(v128, v116);
  v56 = v134;
  v57 = *(v134 + 48);
  v58 = v57(v55, 1, v10);
  v124 = v33;
  if (v58 == 1)
  {
    v59 = type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord(0);
    (*(*(v59 - 8) + 56))(v118, 1, 1, v59);
  }

  else
  {
    v60 = v132;
    (*(v56 + 32))(v132, v55, v10);
    v61 = v118;
    (*(v56 + 16))(v118, v60, v10);
    v62 = sub_229430EF0(MEMORY[0x277D84F90]);
    v63 = v60;
    v33 = v124;
    (*(v56 + 8))(v63, v10);
    v64 = type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord(0);
    *&v61[*(v64 + 20)] = v62;
    (*(*(v64 - 8) + 56))(v61, 0, 1, v64);
  }

  sub_22942B62C();
  v65 = v120;
  sub_22944F214();
  v66 = *(v18 + 32);
  v66(&a2[v129[6]], v65, v131);
  v67 = v119;
  sub_22942A888(v33, v119);
  if (v57(v67, 1, v10) == 1)
  {
    v68 = type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord(0);
    (*(*(v68 - 8) + 56))(v121, 1, 1, v68);
  }

  else
  {
    v69 = v134;
    v70 = v132;
    (*(v134 + 32))(v132, v67, v10);
    v71 = v121;
    (*(v69 + 16))(v121, v70, v10);
    v72 = sub_229430EF0(MEMORY[0x277D84F90]);
    (*(v69 + 8))(v70, v10);
    v73 = type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord(0);
    *&v71[*(v73 + 20)] = v72;
    (*(*(v73 - 8) + 56))(v71, 0, 1, v73);
  }

  v74 = v122;
  sub_22944F214();
  v66(&a2[v129[7]], v74, v131);
  v75 = sub_22942BCA0(v117);

  v143 = v75;
  v76 = MEMORY[0x277D837D0];
  sub_229431298(0, &qword_2813DBF20, MEMORY[0x277D837D0]);
  sub_22942EDEC(&qword_27D86E8A8, &qword_2813DBF20, v76, MEMORY[0x277D83970]);
  sub_22944F664();
  v77 = v133;
  v78 = v133[2];
  v115 = a1;
  if (v78 && (v79 = sub_22942707C(*MEMORY[0x277D11930]), (v80 & 1) != 0))
  {
    v81 = v123;
    (*(v134 + 16))(v123, v77[7] + *(v134 + 72) * v79, v10);
    v82 = 0;
  }

  else
  {
    v82 = 1;
    v81 = v123;
  }

  v140(v81, v82, 1, v10);
  sub_22942B818();
  v123 = a2;
  sub_22944F214();
  sub_22942B968(&qword_2813DC4A8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  sub_22944F4B4();
  v83 = 0;
  v86 = v77[8];
  v85 = v77 + 8;
  v84 = v86;
  v87 = 1 << *(v85 - 32);
  v88 = -1;
  if (v87 < 64)
  {
    v88 = ~(-1 << v87);
  }

  v89 = v88 & v84;
  v90 = (v87 + 63) >> 6;
  v130 = v134 + 16;
  v131 = v10;
  v142 = (v134 + 32);
  if ((v88 & v84) != 0)
  {
    while (1)
    {
      v91 = v83;
      v92 = v138;
LABEL_27:
      v95 = __clz(__rbit64(v89));
      v89 &= v89 - 1;
      v96 = v95 | (v91 << 6);
      v97 = v134;
      v98 = *(v133[6] + 8 * v96);
      v10 = v131;
      v99 = v132;
      (*(v134 + 16))(v132, v133[7] + *(v134 + 72) * v96, v131);
      sub_22942AFD8(0);
      v101 = v100;
      v102 = *(v100 + 48);
      *v92 = v98;
      (*(v97 + 32))(&v92[v102], v99, v10);
      (*(*(v101 - 8) + 56))(v92, 0, 1, v101);
      v103 = v98;
      v94 = v91;
LABEL_28:
      v104 = v136;
      sub_229431608(v92, v136, &qword_27D86E770, sub_22942AFD8);
      sub_22942AFD8(0);
      if ((*(*(v101 - 8) + 48))(v104, 1, v101) == 1)
      {
        break;
      }

      v105 = *v104;
      v106 = *(v101 + 48);
      v107 = sub_22944F894();
      v108 = v104;
      v110 = v109;
      v111 = v135;
      (*v142)(v135, v108 + v106, v10);
      v140(v111, 0, 1, v10);
      v143 = v107;
      v144 = v110;
      sub_22944F4D4();

      v83 = v94;
      if (!v89)
      {
        goto LABEL_20;
      }
    }

    sub_2294312E4(v124);
    sub_2294312E4(v128);
    (*(v126 + 8))(v125, v127);
    (*(v114 + 32))(&v123[v129[10]], v139, v137);
  }

  else
  {
LABEL_20:
    if (v90 <= v83 + 1)
    {
      v93 = v83 + 1;
    }

    else
    {
      v93 = v90;
    }

    v94 = v93 - 1;
    v92 = v138;
    while (1)
    {
      v91 = v83 + 1;
      if (__OFADD__(v83, 1))
      {
        break;
      }

      if (v91 >= v90)
      {
        sub_22942AFD8(0);
        v101 = v112;
        (*(*(v112 - 8) + 56))(v92, 1, 1, v112);
        v89 = 0;
        goto LABEL_28;
      }

      v89 = v85[v91];
      ++v83;
      if (v89)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
  }
}

uint64_t sub_22942CDB4()
{
  strcpy(&xmmword_27D86FE60, "modelVersion");
  BYTE13(xmmword_27D86FE60) = 0;
  HIWORD(xmmword_27D86FE60) = -5120;
  qword_27D86FE70 = swift_getKeyPath();
  unk_27D86FE78 = 0x5555656C706D6173;
  *&xmmword_27D86FE80 = 0xEA00000000004449;
  *(&xmmword_27D86FE80 + 1) = swift_getKeyPath();
  qword_27D86FE90 = 0xD000000000000020;
  qword_27D86FE98 = 0x8000000229458C80;
  *&xmmword_27D86FEA0 = swift_getKeyPath();
  *(&xmmword_27D86FEA0 + 1) = 0xD000000000000022;
  qword_27D86FEB0 = 0x8000000229458CB0;
  qword_27D86FEB8 = swift_getKeyPath();
  qword_27D86FEC0 = 0xD00000000000001CLL;
  qword_27D86FEC8 = 0x8000000229458CE0;
  qword_27D86FED0 = swift_getKeyPath();
  unk_27D86FED8 = 0xD00000000000002CLL;
  *&xmmword_27D86FEE0 = 0x8000000229458D00;
  *(&xmmword_27D86FEE0 + 1) = swift_getKeyPath();
  qword_27D86FEF0 = 0xD00000000000002BLL;
  qword_27D86FEF8 = 0x8000000229458D30;
  result = swift_getKeyPath();
  qword_27D86FF00 = result;
  return result;
}

void sub_22942CF00(uint64_t a1@<X8>)
{
  v118 = a1;
  sub_22942B7C4(0, &qword_27D86E770, sub_22942AFD8);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v129 = &v104 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v125 = (&v104 - v4);
  sub_22942B8A4(0);
  v126 = v5;
  v108 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v130 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22944F054();
  v123 = *(v7 - 8);
  v8 = v123;
  MEMORY[0x28223BE20](v7);
  v121 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22942B7C4(0, qword_2813DC2A8, type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord);
  v114 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v113 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v111 = &v104 - v13;
  sub_22942B750(0, &qword_2813DBF98, qword_2813DC2A8, type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord, sub_22942B62C);
  v120 = v14;
  v131 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v112 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v110 = &v104 - v17;
  sub_22942B7C4(0, &unk_2813DC498, MEMORY[0x277CC9578]);
  v119 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v124 = &v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v115 = &v104 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v109 = &v104 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v104 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v104 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v104 - v31;
  v33 = sub_22944F0B4();
  v34 = *(v33 - 8);
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v104 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v39 = &v104 - v38;
  sub_22944F0A4();
  v40 = *(v8 + 56);
  v40(v32, 1, 1, v7);
  v117 = v30;
  v127 = v40;
  v128 = v8 + 56;
  v40(v30, 1, 1, v7);
  v41 = v118;
  v122 = sub_2294310C4(MEMORY[0x277D84F90]);
  v42 = type metadata accessor for CoherentExperienceSetupRecord(0);
  *(v41 + v42[11]) = MEMORY[0x277D84F98];
  v132 = 2;
  sub_22944F214();
  v105 = v34;
  v43 = v34;
  v44 = v121;
  v45 = *(v43 + 16);
  v104 = v39;
  v45(v37, v39, v33);
  v106 = v33;
  sub_22944F214();
  v107 = v32;
  sub_22942A888(v32, v27);
  v46 = *(v123 + 48);
  if (v46(v27, 1, v7) == 1)
  {
    v47 = type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord(0);
    (*(*(v47 - 8) + 56))(v111, 1, 1, v47);
  }

  else
  {
    v48 = v123;
    (*(v123 + 32))(v44, v27, v7);
    v49 = v111;
    (*(v48 + 16))(v111, v44, v7);
    v50 = sub_229430EF0(MEMORY[0x277D84F90]);
    (*(v48 + 8))(v44, v7);
    v51 = type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord(0);
    *&v49[*(v51 + 20)] = v50;
    (*(*(v51 - 8) + 56))(v49, 0, 1, v51);
  }

  v52 = v7;
  sub_22942B62C();
  v53 = v110;
  sub_22944F214();
  v54 = *(v131 + 32);
  v55 = v41 + v42[6];
  v131 += 32;
  v54(v55, v53, v120);
  v56 = v109;
  sub_22942A888(v117, v109);
  v57 = v46(v56, 1, v52);
  v58 = v113;
  v116 = v42;
  if (v57 == 1)
  {
    v59 = type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord(0);
    (*(*(v59 - 8) + 56))(v58, 1, 1, v59);
  }

  else
  {
    v60 = v123;
    v61 = v121;
    (*(v123 + 32))(v121, v56, v52);
    (*(v60 + 16))(v58, v61, v52);
    v62 = sub_229430EF0(MEMORY[0x277D84F90]);
    v63 = v60;
    v42 = v116;
    (*(v63 + 8))(v61, v52);
    v64 = type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord(0);
    *&v58[*(v64 + 20)] = v62;
    (*(*(v64 - 8) + 56))(v58, 0, 1, v64);
  }

  v65 = v112;
  sub_22944F214();
  v54(v41 + v42[7], v65, v120);
  v132 = sub_22942BCA0(MEMORY[0x277D84FA0]);
  v66 = MEMORY[0x277D837D0];
  sub_229431298(0, &qword_2813DBF20, MEMORY[0x277D837D0]);
  sub_22942EDEC(&qword_27D86E8A8, &qword_2813DBF20, v66, MEMORY[0x277D83970]);
  sub_22944F664();
  v67 = v122;
  if (v122[2])
  {
    v68 = sub_22942707C(*MEMORY[0x277D11930]);
    v69 = v115;
    if (v70)
    {
      (*(v123 + 16))(v115, v67[7] + *(v123 + 72) * v68, v52);
      v71 = 0;
    }

    else
    {
      v71 = 1;
    }
  }

  else
  {
    v71 = 1;
    v69 = v115;
  }

  v127(v69, v71, 1, v52);
  sub_22942B818();
  sub_22944F214();
  sub_22942B968(&qword_2813DC4A8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v131 = v52;
  sub_22944F4B4();
  v72 = 0;
  v73 = v67 + 8;
  v74 = 1 << *(v67 + 32);
  v75 = -1;
  if (v74 < 64)
  {
    v75 = ~(-1 << v74);
  }

  v76 = v75 & v67[8];
  v77 = (v74 + 63) >> 6;
  v78 = (v123 + 32);
  v119 = (v123 + 32);
  v120 = v123 + 16;
  if (v76)
  {
    while (1)
    {
      v79 = v72;
      v80 = v129;
LABEL_23:
      v83 = __clz(__rbit64(v76));
      v76 &= v76 - 1;
      v84 = v83 | (v79 << 6);
      v85 = v123;
      v86 = *(v122[6] + 8 * v84);
      v87 = v121;
      v88 = v131;
      (*(v123 + 16))(v121, v122[7] + *(v123 + 72) * v84, v131);
      sub_22942AFD8(0);
      v90 = v89;
      v91 = *(v89 + 48);
      *v80 = v86;
      v92 = v87;
      v78 = v119;
      (*(v85 + 32))(&v80[v91], v92, v88);
      (*(*(v90 - 8) + 56))(v80, 0, 1, v90);
      v93 = v86;
      v82 = v79;
LABEL_24:
      v94 = v125;
      sub_229431608(v80, v125, &qword_27D86E770, sub_22942AFD8);
      sub_22942AFD8(0);
      if ((*(*(v90 - 8) + 48))(v94, 1, v90) == 1)
      {
        break;
      }

      v95 = *v94;
      v96 = *(v90 + 48);
      v97 = sub_22944F894();
      v99 = v98;
      v100 = v94 + v96;
      v101 = v124;
      v102 = v131;
      (*v78)(v124, v100, v131);
      v127(v101, 0, 1, v102);
      v132 = v97;
      v133 = v99;
      sub_22944F4D4();

      v72 = v82;
      if (!v76)
      {
        goto LABEL_16;
      }
    }

    sub_2294312E4(v117);
    sub_2294312E4(v107);
    (*(v105 + 8))(v104, v106);
    (*(v108 + 32))(v118 + v116[10], v130, v126);
  }

  else
  {
LABEL_16:
    if (v77 <= v72 + 1)
    {
      v81 = v72 + 1;
    }

    else
    {
      v81 = v77;
    }

    v82 = v81 - 1;
    v80 = v129;
    while (1)
    {
      v79 = v72 + 1;
      if (__OFADD__(v72, 1))
      {
        break;
      }

      if (v79 >= v77)
      {
        sub_22942AFD8(0);
        v90 = v103;
        (*(*(v103 - 8) + 56))(v80, 1, 1, v103);
        v76 = 0;
        goto LABEL_24;
      }

      v76 = v73[v79];
      ++v72;
      if (v76)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
  }
}

uint64_t sub_22942DC7C()
{
  v1 = (*v0 << 63) >> 63;
  sub_22944FEC4();
  MEMORY[0x22AACBD40](v1);
  return sub_22944FEE4();
}

uint64_t sub_22942DCF8(uint64_t a1)
{
  v2 = (*v1 << 63) >> 63;
  sub_22944FEC4();
  MEMORY[0x22AACBD40](v2);
  return sub_22944FEE4();
}

void *sub_22942DD40@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == -1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_22942DD70()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6974656C706D6F63;
  }
}

uint64_t sub_22942DDBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6974656C706D6F63 && a2 == 0xEE00657461446E6FLL;
  if (v6 || (sub_22944FE24() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000229458D60 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22944FE24();

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

uint64_t sub_22942DEB8@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == -1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_22942DEE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22942EC4C();
  v5 = sub_22942ECA4();

  return MEMORY[0x28214E5E0](a1, a2, v4, v5);
}

uint64_t sub_22942DF3C(uint64_t a1)
{
  v2 = sub_22942ECA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22942DF78(uint64_t a1)
{
  v2 = sub_22942ECA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22942DFB4(void *a1)
{
  v3 = v1;
  sub_2294317AC(0, &qword_27D86E910, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22942ECA4();
  sub_22944FF04();
  v13 = 0;
  sub_22944F054();
  sub_22942B968(&qword_27D86E918, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_22944FDC4();
  if (!v2)
  {
    v12 = *(v3 + *(type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord(0) + 20));
    v11[15] = 1;
    sub_22942BC34(0, &qword_2813DBF38, MEMORY[0x277CFB4B0], MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
    sub_229431810();
    sub_22944FDC4();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_22942E1C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v26 = sub_22944F054();
  v23 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2294317AC(0, &qword_27D86E8F0, MEMORY[0x277D844C8]);
  v7 = *(v6 - 8);
  v24 = v6;
  v25 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22942ECA4();
  sub_22944FEF4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v21 = v10;
  v13 = v12;
  v14 = v23;
  v29 = 0;
  sub_22942B968(&qword_27D86E8F8, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v15 = v26;
  v16 = v24;
  sub_22944FDB4();
  v17 = *(v14 + 32);
  v20 = v13;
  v17(v13, v5, v15);
  sub_22942BC34(0, &qword_2813DBF38, MEMORY[0x277CFB4B0], MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
  v28 = 1;
  sub_229431674();
  sub_22944FDB4();
  (*(v25 + 8))(v9, v16);
  v18 = v20;
  *(v20 + *(v21 + 20)) = v27;
  sub_229431534(v18, v22, type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_229431750(v18);
}

uint64_t sub_22942E580(uint64_t a1)
{
  sub_22944FEC4();
  sub_22944F054();
  sub_22942B968(&qword_27D86E8C8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_22944F824();
  sub_229430A9C(v4, *(v1 + *(a1 + 20)));
  return sub_22944FEE4();
}

uint64_t sub_22942E624(__int128 *a1, uint64_t a2)
{
  sub_22944F054();
  sub_22942B968(&qword_27D86E8C8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_22944F824();
  v5 = *(v2 + *(a2 + 20));

  return sub_229430A9C(a1, v5);
}

uint64_t sub_22942E6BC(uint64_t a1, uint64_t a2)
{
  sub_22944FEC4();
  sub_22944F054();
  sub_22942B968(&qword_27D86E8C8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_22944F824();
  sub_229430A9C(v5, *(v2 + *(a2 + 20)));
  return sub_22944FEE4();
}

uint64_t sub_22942E75C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_22944F004() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_2294305D0(v7, v8);
}

uint64_t sub_22942E838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22942B968(&qword_2813DC2F0, type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord, &unk_229454E7C);
  v7 = sub_22942B968(&qword_27D86E7E0, type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord, &unk_229454A3C);

  return MEMORY[0x28214E328](a1, a2, a3, v6, v7);
}

uint64_t sub_22942E9FC(uint64_t a1)
{
  v2 = sub_22942B968(&qword_27D86E930, type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord, &unk_229454A64);

  return MEMORY[0x28214DE08](a1, v2);
}

unint64_t sub_22942EB9C()
{
  result = qword_27D86E7A0;
  if (!qword_27D86E7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D86E7A0);
  }

  return result;
}

unint64_t sub_22942EBF4()
{
  result = qword_27D86E7A8;
  if (!qword_27D86E7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D86E7A8);
  }

  return result;
}

unint64_t sub_22942EC4C()
{
  result = qword_27D86E7B0;
  if (!qword_27D86E7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D86E7B0);
  }

  return result;
}

unint64_t sub_22942ECA4()
{
  result = qword_27D86E7B8;
  if (!qword_27D86E7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D86E7B8);
  }

  return result;
}

unint64_t sub_22942ECFC()
{
  result = qword_27D86E7C0;
  if (!qword_27D86E7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D86E7C0);
  }

  return result;
}

unint64_t sub_22942ED54()
{
  result = qword_27D86E7C8;
  if (!qword_27D86E7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D86E7C8);
  }

  return result;
}

uint64_t sub_22942EDEC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_229431298(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22942EF70(uint64_t a1)
{
  v2 = sub_22942B968(&qword_27D86E838, type metadata accessor for CoherentExperienceSetupRecord, &unk_229454E54);

  return MEMORY[0x28214DB50](a1, v2);
}

uint64_t sub_22942EFEC(uint64_t a1, uint64_t a2, int *a3)
{
  if ((sub_22944F1D4() & 1) == 0)
  {
    return 0;
  }

  sub_22944F0B4();
  if ((sub_22944F1D4() & 1) == 0)
  {
    return 0;
  }

  sub_22942B7C4(0, qword_2813DC2A8, type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord);
  sub_22942B62C();
  if ((sub_22944F1D4() & 1) == 0 || (sub_22944F1D4() & 1) == 0 || (sub_22944F634() & 1) == 0)
  {
    return 0;
  }

  v6 = a3[10];
  v7 = sub_22944F054();
  v8 = sub_22942B968(&qword_2813DC4A8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v9 = MEMORY[0x277D837D0];
  v10 = MEMORY[0x277CFB7D0];
  v11 = MEMORY[0x277D837E0];
  v12 = MEMORY[0x277CFB488];

  return MEMORY[0x28214DC18](a1 + v6, a2 + v6, v9, v7, v10, v11, v12, v8);
}

__n128 sub_22942F194@<Q0>(uint64_t a1@<X8>)
{
  if (qword_27D86E1E8 != -1)
  {
    swift_once();
  }

  v23 = xmmword_27D86FEE0;
  *v24 = *&qword_27D86FEF0;
  *&v24[16] = qword_27D86FF00;
  *&v20[16] = xmmword_27D86FEA0;
  v21 = *&qword_27D86FEB0;
  *v22 = *&qword_27D86FEC0;
  *&v22[16] = *&qword_27D86FED0;
  *v18 = xmmword_27D86FE60;
  *&v18[16] = *&qword_27D86FE70;
  v19 = xmmword_27D86FE80;
  *v20 = *&qword_27D86FE90;
  v2 = xmmword_27D86FE60;
  v3 = unk_27D86FE78;
  v4 = qword_27D86FE90;
  v5 = *(&xmmword_27D86FEA0 + 1);
  v6 = qword_27D86FEC0;
  v7 = unk_27D86FED8;
  v8 = qword_27D86FEF0;
  v10 = *&v18[8];
  v11 = xmmword_27D86FE80;
  v12 = *&v20[8];
  v13 = *&qword_27D86FEB0;
  v14 = *&v22[8];
  v15 = xmmword_27D86FEE0;
  v16 = *&v24[8];
  sub_229431534(v18, v17, sub_229430234);
  *a1 = v2;
  *(a1 + 8) = v10;
  *(a1 + 24) = v3;
  *(a1 + 32) = v11;
  *(a1 + 48) = v4;
  *(a1 + 56) = v12;
  *(a1 + 72) = v5;
  *(a1 + 80) = v13;
  *(a1 + 96) = v6;
  *(a1 + 104) = v14;
  *(a1 + 120) = v7;
  *(a1 + 128) = v15;
  *(a1 + 144) = v8;
  result = v16;
  *(a1 + 152) = v16;
  return result;
}

uint64_t sub_22942F2F8(uint64_t a1)
{
  v2 = sub_22942B968(&qword_27D86E838, type metadata accessor for CoherentExperienceSetupRecord, &unk_229454E54);

  return MEMORY[0x28214DBD0](a1, v2);
}

uint64_t sub_22942F370(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);

  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_22942F3D4(uint64_t a1)
{
  v2 = sub_22942B968(&qword_2813DC230, type metadata accessor for CoherentExperienceSetupRecord, &unk_229454C64);

  return MEMORY[0x28214E298](a1, v2);
}

uint64_t sub_22942F440(uint64_t a1, uint64_t a2)
{
  v4 = sub_22942B968(&qword_27D86E838, type metadata accessor for CoherentExperienceSetupRecord, &unk_229454E54);

  return MEMORY[0x28214DBB8](a1, a2, v4);
}

uint64_t sub_22942F4BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22942B968(&qword_27D86E838, type metadata accessor for CoherentExperienceSetupRecord, &unk_229454E54);

  return MEMORY[0x28214DB60](a1, a2, v4);
}

uint64_t sub_22942F540(uint64_t a1, uint64_t a2)
{
  v4 = sub_22942B968(&qword_27D86E838, type metadata accessor for CoherentExperienceSetupRecord, &unk_229454E54);

  return MEMORY[0x28214DB88](a1, a2, v4);
}

uint64_t sub_22942F5BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22942B968(&qword_27D86E838, type metadata accessor for CoherentExperienceSetupRecord, &unk_229454E54);

  return MEMORY[0x28214DBC8](a1, a2, v4);
}

uint64_t sub_22942F638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22942B968(&qword_27D86E838, type metadata accessor for CoherentExperienceSetupRecord, &unk_229454E54);

  return MEMORY[0x28214DB90](a1, a2, a3, v6);
}

uint64_t sub_22942F6CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22942B968(&qword_27D86E838, type metadata accessor for CoherentExperienceSetupRecord, &unk_229454E54);

  return MEMORY[0x28214DBC0](a1, a2, v4);
}

uint64_t sub_22942F748(uint64_t a1, uint64_t a2)
{
  v4 = sub_22942B968(&qword_27D86E838, type metadata accessor for CoherentExperienceSetupRecord, &unk_229454E54);

  return MEMORY[0x28214DB98](a1, a2, v4);
}

uint64_t sub_22942F7C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22942B968(&qword_27D86E838, type metadata accessor for CoherentExperienceSetupRecord, &unk_229454E54);

  return MEMORY[0x28214DB78](a1, a2, v4);
}

uint64_t sub_22942F848(uint64_t a1, uint64_t a2)
{
  v4 = sub_22942B968(&qword_27D86E838, type metadata accessor for CoherentExperienceSetupRecord, &unk_229454E54);

  return MEMORY[0x28214DB70](a1, a2, v4);
}

uint64_t sub_22942F8CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22942B968(&qword_27D86E838, type metadata accessor for CoherentExperienceSetupRecord, &unk_229454E54);

  return MEMORY[0x28214DB58](a1, a2, a3, v6);
}

uint64_t sub_22942F960(uint64_t a1, uint64_t a2)
{
  v4 = sub_22942B968(&qword_27D86E838, type metadata accessor for CoherentExperienceSetupRecord, &unk_229454E54);

  return MEMORY[0x28214DB40](a1, a2, v4);
}

uint64_t sub_22942F9DC(uint64_t a1)
{
  v2 = sub_22942B968(&qword_27D86E838, type metadata accessor for CoherentExperienceSetupRecord, &unk_229454E54);

  return MEMORY[0x28214DB68](a1, v2);
}

uint64_t sub_22942FA48(uint64_t a1, uint64_t a2)
{
  v4 = sub_22942B968(&qword_27D86E838, type metadata accessor for CoherentExperienceSetupRecord, &unk_229454E54);

  return MEMORY[0x28214DB48](a1, a2, v4);
}

uint64_t sub_22942FAC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22942B968(&qword_27D86E838, type metadata accessor for CoherentExperienceSetupRecord, &unk_229454E54);

  return MEMORY[0x28214DBA0](a1, a2, v4);
}

void sub_22942FB48()
{
  sub_22942B968(&qword_27D86E838, type metadata accessor for CoherentExperienceSetupRecord, &unk_229454E54);

  JUMPOUT(0x22AACB290);
}

unint64_t sub_22942FE3C()
{
  result = qword_27D86E800;
  if (!qword_27D86E800)
  {
    sub_22942B750(255, &qword_2813DBF98, qword_2813DC2A8, type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord, sub_22942B62C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D86E800);
  }

  return result;
}

unint64_t sub_22942FF18()
{
  result = qword_27D86E810;
  if (!qword_27D86E810)
  {
    sub_22942B750(255, &qword_2813DBFA8, &unk_2813DC498, MEMORY[0x277CC9578], sub_22942B818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D86E810);
  }

  return result;
}

void sub_2294301A0(uint64_t a1)
{
  if (!qword_27D86E830)
  {
    type metadata accessor for CoherentExperienceSetupRecord(255);
    sub_22942B968(&qword_27D86E838, type metadata accessor for CoherentExperienceSetupRecord, &unk_229454E54);
    v1 = sub_22944F5B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27D86E830);
    }
  }
}

void sub_229430234(uint64_t a1)
{
  if (!qword_27D86E840)
  {
    sub_229430568(255, &qword_27D86E848, &qword_27D86E850, sub_22942B554);
    sub_229430568(255, &qword_27D86E858, &qword_27D86E860, sub_22942B5AC);
    v1 = MEMORY[0x277D837D0];
    sub_22943135C(255, &qword_27D86E868, sub_229430428, MEMORY[0x277D837D0]);
    sub_229430568(255, &qword_27D86E878, &qword_27D86E880, sub_22942B6F0);
    sub_22943135C(255, &qword_27D86E888, sub_2294304C8, v1);
    sub_229430568(255, &qword_27D86E898, &qword_27D86E8A0, sub_22942B8A4);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_27D86E840);
    }
  }
}

void sub_2294303B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for CoherentExperienceSetupRecord(255);
    a3(255);
    v5 = sub_22944FD24();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_229430428(uint64_t a1)
{
  if (!qword_27D86E870)
  {
    type metadata accessor for CoherentExperienceSetupRecord(255);
    sub_22942B750(255, &qword_2813DBF98, qword_2813DC2A8, type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord, sub_22942B62C);
    v1 = sub_22944FD24();
    if (!v2)
    {
      atomic_store(v1, &qword_27D86E870);
    }
  }
}

void sub_2294304C8(uint64_t a1)
{
  if (!qword_27D86E890)
  {
    type metadata accessor for CoherentExperienceSetupRecord(255);
    sub_22942B750(255, &qword_2813DBFA8, &unk_2813DC498, MEMORY[0x277CC9578], sub_22942B818);
    v1 = sub_22944FD24();
    if (!v2)
    {
      atomic_store(v1, &qword_27D86E890);
    }
  }
}

void sub_229430568(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_2294303B8(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_2294305D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22944F1C4();
  v55 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v54 = &v46 - v8;
  sub_22942B7C4(0, &qword_27D86E8D0, sub_22943159C);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  result = MEMORY[0x28223BE20](v10);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v49 = (&v46 - v12);
  v50 = v13;
  v14 = 0;
  v47 = a1;
  v15 = *(a1 + 64);
  v46 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v51 = v55 + 16;
  v52 = (v55 + 32);
  v48 = (v55 + 8);
  while (1)
  {
    v20 = v50;
    if (!v18)
    {
      break;
    }

    v53 = (v18 - 1) & v18;
    v21 = __clz(__rbit64(v18)) | (v14 << 6);
LABEL_16:
    v26 = *(*(v47 + 48) + 8 * v21);
    v28 = v54;
    v27 = v55;
    (*(v55 + 16))(v54, *(v47 + 56) + *(v55 + 72) * v21, v4);
    sub_22943159C(0);
    v30 = v29;
    v31 = *(v29 + 48);
    *v20 = v26;
    (*(v27 + 32))(&v20[v31], v28, v4);
    (*(*(v30 - 8) + 56))(v20, 0, 1, v30);
LABEL_17:
    v32 = v20;
    v33 = v49;
    sub_229431608(v32, v49, &qword_27D86E8D0, sub_22943159C);
    sub_22943159C(0);
    v34 = (*(*(v30 - 8) + 48))(v33, 1, v30);
    v35 = v34 == 1;
    if (v34 == 1)
    {
      return v35;
    }

    v36 = *(v30 + 48);
    v37 = *v33;
    (*v52)(v7, v33 + v36, v4);
    v38 = sub_229427038(v37);
    if ((v39 & 1) == 0)
    {
      (*v48)(v7, v4);
      return 0;
    }

    v40 = v54;
    v41 = v55;
    (*(v55 + 16))(v54, *(a2 + 56) + *(v55 + 72) * v38, v4);
    sub_22942B968(&qword_27D86E8E8, MEMORY[0x277CFB4B0], MEMORY[0x277CFB4C8]);
    v42 = sub_22944F854();
    v43 = a2;
    v44 = *(v41 + 8);
    v44(v40, v4);
    result = (v44)(v7, v4);
    a2 = v43;
    v18 = v53;
    if ((v42 & 1) == 0)
    {
      return v35;
    }
  }

  if (v19 <= v14 + 1)
  {
    v22 = v14 + 1;
  }

  else
  {
    v22 = v19;
  }

  v23 = v22 - 1;
  while (1)
  {
    v24 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v24 >= v19)
    {
      sub_22943159C(0);
      v30 = v45;
      (*(*(v45 - 8) + 56))(v20, 1, 1, v45);
      v53 = 0;
      v14 = v23;
      goto LABEL_17;
    }

    v25 = *(v46 + 8 * v24);
    ++v14;
    if (v25)
    {
      v53 = (v25 - 1) & v25;
      v21 = __clz(__rbit64(v25)) | (v24 << 6);
      v14 = v24;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_229430A9C(__int128 *a1, uint64_t a2)
{
  v49 = sub_22944F1C4();
  v4 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22942B7C4(0, &qword_27D86E8D0, sub_22943159C);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  MEMORY[0x28223BE20](v8);
  v47 = v42 - v10;
  v11 = a2 + 64;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 64);
  v15 = (v12 + 63) >> 6;
  v42[1] = v4 + 16;
  v43 = v4;
  v48 = (v4 + 32);
  v16 = (v4 + 8);
  v17 = v9;
  v44 = a2;
  v45 = v16;

  v19 = 0;
  v46 = v17;
  v50 = 0;
  if (v14)
  {
    while (1)
    {
      v20 = v19;
LABEL_12:
      v24 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v25 = v24 | (v20 << 6);
      v26 = v43;
      v27 = *(*(v44 + 48) + 8 * v25);
      v28 = v49;
      (*(v43 + 16))(v6, *(v44 + 56) + *(v43 + 72) * v25, v49);
      sub_22943159C(0);
      v30 = v29;
      v31 = *(v29 + 48);
      v32 = v46;
      *v46 = v27;
      v33 = *(v26 + 32);
      v34 = v32;
      v33(&v32[v31], v6, v28);
      (*(*(v30 - 8) + 56))(v34, 0, 1, v30);
      v22 = v20;
      v35 = v34;
      v23 = v47;
LABEL_13:
      sub_229431608(v35, v23, &qword_27D86E8D0, sub_22943159C);
      sub_22943159C(0);
      if ((*(*(v30 - 8) + 48))(v23, 1, v30) == 1)
      {
        break;
      }

      v36 = *v23;
      v37 = v23 + *(v30 + 48);
      v38 = v49;
      (*v48)(v6, v37, v49);
      v39 = a1[3];
      v53 = a1[2];
      v54 = v39;
      v55 = *(a1 + 8);
      v40 = a1[1];
      v51 = *a1;
      v52 = v40;
      MEMORY[0x22AACBD40](v36);
      sub_22942B968(&qword_27D86E8E0, MEMORY[0x277CFB4B0], MEMORY[0x277CFB4C0]);
      sub_22944F824();
      (*v45)(v6, v38);
      result = sub_22944FEE4();
      v19 = v22;
      v50 ^= result;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x22AACBD40](v50);
  }

  else
  {
LABEL_5:
    if (v15 <= v19 + 1)
    {
      v21 = v19 + 1;
    }

    else
    {
      v21 = v15;
    }

    v22 = v21 - 1;
    v23 = v47;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v15)
      {
        sub_22943159C(0);
        v30 = v41;
        v35 = v46;
        (*(*(v41 - 8) + 56))(v46, 1, 1, v41);
        v14 = 0;
        goto LABEL_13;
      }

      v14 = *(v11 + 8 * v20);
      ++v19;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_229430EF0(uint64_t a1)
{
  sub_22943135C(0, &qword_27D86E8B0, MEMORY[0x277CFB4B0], MEMORY[0x277D83B88]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_2294313C8(0);
    v8 = sub_22944FD84();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    while (1)
    {
      sub_229431430(v10, v6);
      v12 = *v6;
      result = sub_229427038(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = sub_22944F1C4();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v6 + v9, v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2294310C4(uint64_t a1)
{
  sub_2294314C4(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_22942AC5C(0);
    v8 = sub_22944FD84();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_229431534(v10, v6, sub_2294314C4);
      v12 = *v6;
      result = sub_22942707C(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = sub_22944F054();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v6 + v9, v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_229431298(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_22944F984();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2294312E4(uint64_t a1)
{
  sub_22942B7C4(0, &unk_2813DC498, MEMORY[0x277CC9578]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22943135C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_2294313C8(uint64_t a1)
{
  if (!qword_27D86E8B8)
  {
    sub_22944F1C4();
    v1 = sub_22944FD94();
    if (!v2)
    {
      atomic_store(v1, &qword_27D86E8B8);
    }
  }
}

uint64_t sub_229431430(uint64_t a1, uint64_t a2)
{
  sub_22943135C(0, &qword_27D86E8B0, MEMORY[0x277CFB4B0], MEMORY[0x277D83B88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2294314B8(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

void sub_2294314C4(uint64_t a1)
{
  if (!qword_27D86E8C0)
  {
    type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier(255);
    sub_22944F054();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D86E8C0);
    }
  }
}

uint64_t sub_229431534(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_22943159C(uint64_t a1)
{
  if (!qword_27D86E8D8)
  {
    sub_22944F1C4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D86E8D8);
    }
  }
}

uint64_t sub_229431608(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_22942B7C4(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_229431674()
{
  result = qword_27D86E900;
  if (!qword_27D86E900)
  {
    sub_22942BC34(255, &qword_2813DBF38, MEMORY[0x277CFB4B0], MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
    sub_22942B968(&qword_27D86E908, MEMORY[0x277CFB4B0], MEMORY[0x277CFB4D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D86E900);
  }

  return result;
}

uint64_t sub_229431750(uint64_t a1)
{
  v2 = type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2294317AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22942ECA4();
    v7 = a3(a1, &type metadata for CoherentExperienceSetupRecord.CompletionRecord.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_229431810()
{
  result = qword_27D86E920;
  if (!qword_27D86E920)
  {
    sub_22942BC34(255, &qword_2813DBF38, MEMORY[0x277CFB4B0], MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
    sub_22942B968(&qword_27D86E928, MEMORY[0x277CFB4B0], MEMORY[0x277CFB4B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D86E920);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CoherentExperienceSetupRecord.CompletionRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CoherentExperienceSetupRecord.CompletionRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_229431A60()
{
  result = qword_27D86E938;
  if (!qword_27D86E938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D86E938);
  }

  return result;
}

uint64_t String.init<A>(describingSensitive:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_2293D47B8();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

uint64_t static HDCategorySampleEntity.deletedPregnancySamples(profile:predicate:)(uint64_t a1, uint64_t a2)
{
  v5[2] = &v6;
  v6 = MEMORY[0x277D84F90];
  sub_2293D5FC4(a1, a2, 1, sub_22942A950, v5);
  v3 = v6;
  if (v2)
  {
  }

  return v3;
}

uint64_t HDMCPregnancyStateFactory.init(profile:experienceDaemonStore:todayDayIndex:calendar:gregorianCalendar:)@<X0>(void *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v36 = a4;
  v35 = a2;
  v34 = sub_22944F054();
  v11 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HDMCPregnancyStateFactory(0);
  v15 = v14[9];
  v33 = a6;
  *(a6 + v15) = 0x4167124000000000;
  v16 = objc_opt_self();
  v17 = sub_22944F0F4();
  v18 = [v16 hk:a3 dateOnDayIndex:12 atHour:v17 calendar:?];

  sub_22944F014();
  sub_2293D30DC(0, &unk_2813DBE70, 0x277D105E8);
  _sSo17HDSQLitePredicateC27HealthMenstrualCyclesDaemonE26predicateForOngoingSamples2onABSi_tFZ_0(a3);
  v20 = v19;
  v21 = static HDCategorySampleEntity.pregnancySamples(profile:predicate:)(a1, v19);
  if (v6)
  {

    v22 = sub_22944F134();
    v23 = *(*(v22 - 8) + 8);
    v23(a5, v22);
    v23(v36, v22);
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
    return (*(v11 + 8))(v13, v34);
  }

  else
  {
    v25 = v21;

    *v33 = v25;
    v26 = _sSo17HDSQLitePredicateC27HealthMenstrualCyclesDaemonE45predicateForSamplesThatEndedInTheTwelveMonths6beforeAB10Foundation4DateV_tFZ_0(v13);
    v27 = static HDCategorySampleEntity.pregnancySamples(profile:predicate:)(a1, v26);
    (*(v11 + 8))(v13, v34);

    v28 = v33;
    v33[1] = v27;
    sub_2293D78F8(v35, (v28 + 2));
    v29 = v14[7];
    v30 = sub_22944F134();
    v31 = *(*(v30 - 8) + 32);
    v31(v28 + v29, v36, v30);
    return (v31)(v28 + v14[8], a5, v30);
  }
}

uint64_t sub_229431F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_2293D7574(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22944F0B4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (HKShowSensitiveLogItems())
  {
    v44 = v8;
    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v13 = sub_22944F174();
    __swift_project_value_buffer(v13, qword_2813DBFB8);
    v14 = *(v10 + 16);
    v43 = a1;
    v14(v12, a1, v9);
    v15 = sub_22944F154();
    v16 = sub_22944FA84();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v42 = a2;
      v18 = v17;
      v19 = swift_slowAlloc();
      v47 = v19;
      *v18 = 136315138;
      v45 = 0;
      v46 = 0xE000000000000000;
      sub_22944FC84();
      MEMORY[0x22AACB740](91, 0xE100000000000000);
      MEMORY[0x22AACB740](0xD000000000000019, 0x80000002294550D0);
      MEMORY[0x22AACB740](0xD000000000000035, 0x8000000229458DF0);
      v20 = sub_22944F064();
      MEMORY[0x22AACB740](v20);

      sub_22944FE34();
      v21 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_22944FB34();
      swift_unknownObjectRelease();
      v22 = sub_22944F8A4();
      v24 = v23;
      (*(v10 + 8))(v12, v9);
      v25 = sub_2293D4824(v22, v24, &v47);

      *(v18 + 4) = v25;
      _os_log_impl(&dword_2293D1000, v15, v16, "%s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      MEMORY[0x22AACCC00](v19, -1, -1);
      v26 = v18;
      a2 = v42;
      MEMORY[0x22AACCC00](v26, -1, -1);
    }

    else
    {

      (*(v10 + 8))(v12, v9);
    }

    a1 = v43;
    v8 = v44;
  }

  v27 = v3[5];
  v28 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v27);
  v31 = (*(v28 + 16))(v27, v28);
  v32 = [v31 pregnancyModeSetupCompletionSet];
  sub_2293D30DC(0, &qword_2813DBE38, 0x277D119C0);
  sub_2293D6A34(&qword_2813DBE30, &qword_2813DBE38, 0x277D119C0);
  v33 = sub_22944F9B4();

  MEMORY[0x28223BE20](v34);
  *(&v41 - 2) = a1;
  sub_22941EDE4(sub_229433DD0, (&v41 - 4), v33);
  v36 = v35;

  if (v36)
  {
    v37 = [v36 educationalStepsReviewDate];
    if (v37)
    {
      v38 = v37;
      sub_22944F014();

      v39 = 0;
      v31 = v38;
    }

    else
    {
      v39 = 1;
    }

    v40 = sub_22944F054();
    (*(*(v40 - 8) + 56))(v8, v39, 1, v40);
    return sub_22942AD9C(v8, a2);
  }

  else
  {

    v29 = sub_22944F054();
    return (*(*(v29 - 8) + 56))(a2, 1, 1, v29);
  }
}

uint64_t sub_229432574(void *a1)
{
  v2 = v1;
  v4 = sub_22944F054();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v22 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - v12;
  v14 = [a1 endDate];
  sub_22944F014();

  v15 = [a1 startDate];
  sub_22944F014();

  sub_22944EFC4();
  v17 = v16;
  v18 = *(v5 + 8);
  v18(v11, v4);
  v18(v13, v4);
  if (v17 >= *(v2 + *(type metadata accessor for HDMCPregnancyStateFactory(0) + 36)))
  {
    v20 = 1;
  }

  else
  {
    sub_22944F044();
    sub_22944F034();
    v18(v13, v4);
    v19 = [a1 endDate];
    sub_22944F014();

    sub_229433D78();
    LOBYTE(v19) = sub_22944F844();
    v18(v13, v4);
    v18(v8, v4);
    v20 = v19 ^ 1;
  }

  return v20 & 1;
}

uint64_t sub_2294327D0(id *a1, uint64_t a2)
{
  v3 = sub_22944F0B4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 sampleUUID];
  sub_22944F094();

  v8 = sub_22944F084();
  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

uint64_t sub_2294328DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      MEMORY[0x22AACB780](a1);
      if (*((*a5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22944F954();
      }

      sub_22944F974();
    }
  }

  return 1;
}

BOOL sub_22943297C(id *a1, void **a2)
{
  v4 = sub_22944F054();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - v9;
  v11 = *a2;
  v12 = [*a1 _creationDate];
  sub_22944F014();

  v13 = [v11 _creationDate];
  sub_22944F014();

  v14 = sub_22944F024();
  v15 = *(v5 + 8);
  v15(v8, v4);
  v15(v10, v4);
  return v14 == 1;
}

uint64_t sub_229432AEC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v6 = a2;
    MEMORY[0x22AACB780]();
    if (*((*a5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22944F954();
    }

    sub_22944F974();
  }

  return 1;
}

uint64_t sub_229432B6C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  v10 = a2;
  v11 = a3;
  LOBYTE(a5) = v9(a2, a3, a4, a5);

  return a5 & 1;
}

void *sub_229432BEC(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_2293D65A4();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
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

void sub_229432C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void **, void **))
{
  if (a3 != a2)
  {
    v7 = *v4;
    v8 = (*v4 + 8 * a3 - 8);
    v9 = a1 - a3;
LABEL_4:
    v19 = v8;
    v20 = a3;
    v10 = *(v7 + 8 * a3);
    v18 = v9;
    while (1)
    {
      v22 = v10;
      v21 = *v8;
      v11 = v21;
      v12 = v10;
      v13 = v11;
      v14 = a4(&v22, &v21);

      if (v5)
      {
        break;
      }

      if (v14)
      {
        if (!v7)
        {
          __break(1u);
          return;
        }

        v15 = *v8;
        v10 = v8[1];
        *v8 = v10;
        v8[1] = v15;
        --v8;
        if (!__CFADD__(v9++, 1))
        {
          continue;
        }
      }

      a3 = v20 + 1;
      v8 = v19 + 1;
      v9 = v18 - 1;
      if (v20 + 1 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_229432D68(void ***a1, uint64_t a2, void **a3, uint64_t (*a4)(void **, void **), uint64_t a5, uint64_t a6)
{
  v9 = a3;
  v10 = a3[1];
  if (v10 < 1)
  {
    v12 = MEMORY[0x277D84F90];
LABEL_90:
    v7 = v9;
    v9 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_121;
      }

      goto LABEL_92;
    }

    goto LABEL_130;
  }

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  while (1)
  {
    v13 = v11 + 1;
    if (v11 + 1 < v10)
    {
      v97 = v10;
      v7 = *v9;
      v14 = *(*v9 + v13);
      v105 = *(*v9 + v11);
      v15 = v105;
      v106 = v14;
      v16 = v14;
      v17 = v15;
      v100 = a4(&v106, &v105);
      if (v6)
      {

        return;
      }

      v18 = 8 * v11;
      v19 = &v7[v11 + 2];
      v95 = v11;
      while (v97 - 2 != v11)
      {
        v20 = *v19;
        v105 = *(v19 - 1);
        v21 = v105;
        v106 = v20;
        v22 = v20;
        v7 = v21;
        LODWORD(v21) = a4(&v106, &v105);

        ++v11;
        ++v19;
        if ((v100 ^ v21))
        {
          v13 = v11 + 1;
          goto LABEL_11;
        }
      }

      v11 = v97 - 1;
      v13 = v97;
LABEL_11:
      v9 = a3;
      if (v100)
      {
        if (v13 < v95)
        {
          goto LABEL_124;
        }

        v23 = v95 <= v11;
        v11 = v95;
        if (v23)
        {
          v24 = 8 * v13 - 8;
          v25 = v13;
          v26 = v95;
          do
          {
            if (v26 != --v25)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_128;
              }

              v28 = *&v27[v18];
              *&v27[v18] = *&v27[v24];
              *&v27[v24] = v28;
            }

            ++v26;
            v24 -= 8;
            v18 += 8;
          }

          while (v26 < v25);
        }
      }

      else
      {
        v11 = v95;
      }
    }

    v29 = v9[1];
    if (v13 >= v29)
    {
      goto LABEL_133;
    }

    if (__OFSUB__(v13, v11))
    {
      goto LABEL_120;
    }

    if (v13 - v11 >= a6)
    {
      goto LABEL_133;
    }

    v30 = (v11 + a6);
    if (__OFADD__(v11, a6))
    {
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    if (v30 >= v29)
    {
      v30 = v9[1];
    }

    if (v30 < v11)
    {
      goto LABEL_123;
    }

    if (v13 == v30)
    {
LABEL_133:
      if (v13 < v11)
      {
        goto LABEL_119;
      }
    }

    else
    {
      v77 = a5;
      v78 = *v9;
      v7 = (*v9 + 8 * v13 - 8);
      v96 = v11;
      v79 = v11 - v13;
      v92 = v30;
      do
      {
        v101 = v7;
        v103 = v13;
        v80 = v78[v13];
        v98 = v79;
        do
        {
          v105 = *v7;
          v81 = v105;
          v106 = v80;
          v82 = v80;
          v83 = v81;
          v84 = a4(&v106, &v105);
          if (v6)
          {

            return;
          }

          v85 = v84;

          if ((v85 & 1) == 0)
          {
            break;
          }

          if (!v78)
          {
            goto LABEL_126;
          }

          v86 = *v7;
          v80 = v7[1];
          *v7 = v80;
          v7[1] = v86;
          --v7;
        }

        while (!__CFADD__(v79++, 1));
        v13 = v103 + 1;
        v7 = v101 + 1;
        v79 = v98 - 1;
      }

      while ((v103 + 1) != v92);
      v13 = v92;
      a5 = v77;
      v9 = a3;
      v11 = v96;
      if (v92 < v96)
      {
        goto LABEL_119;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_22943F0C8(0, *(v12 + 2) + 1, 1, v12);
    }

    v32 = *(v12 + 2);
    v31 = *(v12 + 3);
    v33 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      v12 = sub_22943F0C8((v31 > 1), v32 + 1, 1, v12);
    }

    *(v12 + 2) = v33;
    v34 = &v12[16 * v32];
    *(v34 + 4) = v11;
    *(v34 + 5) = v13;
    v102 = v13;
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_129;
    }

    if (v32)
    {
      break;
    }

LABEL_3:
    v10 = v9[1];
    v11 = v102;
    if (v102 >= v10)
    {
      goto LABEL_90;
    }
  }

  while (1)
  {
    v35 = v33 - 1;
    if (v33 >= 4)
    {
      v40 = &v12[16 * v33 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_106;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_107;
      }

      v47 = &v12[16 * v33];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_109;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_112;
      }

      if (v51 >= v43)
      {
        v69 = &v12[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_118;
        }

        if (v38 < v72)
        {
          v35 = v33 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

    if (v33 == 3)
    {
      v36 = *(v12 + 4);
      v37 = *(v12 + 5);
      v46 = __OFSUB__(v37, v36);
      v38 = v37 - v36;
      v39 = v46;
LABEL_49:
      if (v39)
      {
        goto LABEL_108;
      }

      v52 = &v12[16 * v33];
      v54 = *v52;
      v53 = *(v52 + 1);
      v55 = __OFSUB__(v53, v54);
      v56 = v53 - v54;
      v57 = v55;
      if (v55)
      {
        goto LABEL_111;
      }

      v58 = &v12[16 * v35 + 32];
      v60 = *v58;
      v59 = *(v58 + 1);
      v46 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v46)
      {
        goto LABEL_114;
      }

      if (__OFADD__(v56, v61))
      {
        goto LABEL_115;
      }

      if (v56 + v61 >= v38)
      {
        if (v38 < v61)
        {
          v35 = v33 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_63;
    }

    v62 = &v12[16 * v33];
    v64 = *v62;
    v63 = *(v62 + 1);
    v46 = __OFSUB__(v63, v64);
    v56 = v63 - v64;
    v57 = v46;
LABEL_63:
    if (v57)
    {
      goto LABEL_110;
    }

    v65 = &v12[16 * v35];
    v67 = *(v65 + 4);
    v66 = *(v65 + 5);
    v46 = __OFSUB__(v66, v67);
    v68 = v66 - v67;
    if (v46)
    {
      goto LABEL_113;
    }

    if (v68 < v56)
    {
      goto LABEL_3;
    }

LABEL_70:
    v73 = v35 - 1;
    if (v35 - 1 >= v33)
    {
      break;
    }

    if (!*v9)
    {
      goto LABEL_125;
    }

    v74 = *&v12[16 * v73 + 32];
    v75 = *&v12[16 * v35 + 40];
    sub_229433434(*v9 + v74, *v9 + *&v12[16 * v35 + 32], *v9 + v75, v7, a4);
    if (v6)
    {
      goto LABEL_100;
    }

    if (v75 < v74)
    {
      goto LABEL_104;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_2294401B4(v12);
    }

    if (v73 >= *(v12 + 2))
    {
      goto LABEL_105;
    }

    v76 = &v12[16 * v73];
    *(v76 + 4) = v74;
    *(v76 + 5) = v75;
    v107 = v12;
    sub_229440128(v35);
    v12 = v107;
    v33 = *(v107 + 2);
    if (v33 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  v12 = sub_2294401B4(v12);
LABEL_92:
  v107 = v12;
  v88 = *(v12 + 2);
  if (v88 < 2)
  {
LABEL_100:
  }

  else
  {
    while (*v7)
    {
      v89 = *&v12[16 * v88];
      v90 = *&v12[16 * v88 + 24];
      sub_229433434(*v7 + v89, *v7 + *&v12[16 * v88 + 16], *v7 + v90, v9, a4);
      if (v6)
      {
        goto LABEL_100;
      }

      if (v90 < v89)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_2294401B4(v12);
      }

      if (v88 - 2 >= *(v12 + 2))
      {
        goto LABEL_117;
      }

      v91 = &v12[16 * v88];
      *v91 = v89;
      *(v91 + 1) = v90;
      v107 = v12;
      sub_229440128(v88 - 1);
      v12 = v107;
      v88 = *(v107 + 2);
      if (v88 <= 1)
      {
        goto LABEL_100;
      }
    }

LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
  }
}

uint64_t sub_229433434(id *__src, id *a2, id *a3, unint64_t __dst, uint64_t (*a5)(id *, id *))
{
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v9 = a2 - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    v14 = __dst;
    if (__dst != __src || &__src[v10] <= __dst)
    {
      memmove(__dst, __src, 8 * v10);
    }

    v52 = &v14[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_51;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = v6;
      v54 = *v6;
      v17 = v14;
      v53 = *v14;
      v18 = v53;
      v19 = v54;
      v20 = v18;
      v21 = a5(&v54, &v53);
      if (__dsta)
      {

        v43 = v52 - v17 + 7;
        if (v52 - v17 >= 0)
        {
          v43 = v52 - v17;
        }

        if (v7 < v17 || v7 >= (v17 + (v43 & 0xFFFFFFFFFFFFFFF8)) || v7 != v17)
        {
          v42 = 8 * (v43 >> 3);
          v41 = v7;
          v40 = v17;
          goto LABEL_57;
        }

        return 1;
      }

      v22 = v21;

      __dsta = 0;
      if (v22)
      {
        break;
      }

      v15 = v17;
      v14 = v17 + 1;
      v6 = v16;
      if (v7 != v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v14 >= v52)
      {
        goto LABEL_10;
      }
    }

    v15 = v16;
    v6 = v16 + 1;
    v14 = v17;
    if (v7 == v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (__dst != a2 || &a2[v13] <= __dst)
  {
    v23 = __dst;
    memmove(__dst, a2, 8 * v13);
    __dst = v23;
  }

  __srca = __dst;
  v52 = (__dst + 8 * v13);
  if (v11 < 8)
  {
    v14 = __dst;
  }

  else
  {
    v24 = __dsta;
    if (v6 <= v7)
    {
      v14 = __dst;
    }

    else
    {
      v25 = -__dst;
      v46 = -__dst;
      v47 = v7;
      while (2)
      {
        v26 = v24;
        __dstb = v6;
        v27 = v6 - 1;
        v28 = v52;
        v29 = v52 + v25;
        --v5;
        while (1)
        {
          v30 = *--v28;
          v54 = v30;
          v31 = v27;
          v53 = *v27;
          v32 = v53;
          v33 = v30;
          v34 = v32;
          v35 = a5(&v54, &v53);
          if (v26)
          {

            if (v29 >= 0)
            {
              v38 = v29;
            }

            else
            {
              v38 = v29 + 7;
            }

            v39 = v38 >> 3;
            v40 = __srca;
            v41 = __dstb;
            if (__dstb < __srca || __dstb >= (__srca + (v38 & 0xFFFFFFFFFFFFFFF8)))
            {
              memmove(__dstb, __srca, 8 * v39);
              return 1;
            }

            if (__dstb == __srca)
            {
              return 1;
            }

            v42 = 8 * v39;
            goto LABEL_57;
          }

          v36 = v35;

          v37 = v5 + 1;
          if (v36)
          {
            break;
          }

          v27 = v31;
          if (v37 != v52)
          {
            *v5 = *v28;
          }

          v29 -= 8;
          --v5;
          v52 = v28;
          if (v28 <= __srca)
          {
            v52 = v28;
            v6 = __dstb;
            v14 = __srca;
            goto LABEL_51;
          }
        }

        v6 = v31;
        if (v37 != __dstb)
        {
          *v5 = *v31;
        }

        v14 = __srca;
        v24 = 0;
        if (v52 > __srca)
        {
          v25 = v46;
          if (v31 > v47)
          {
            continue;
          }
        }

        break;
      }
    }
  }

LABEL_51:
  v44 = v52 - v14 + 7;
  if (v52 - v14 >= 0)
  {
    v44 = v52 - v14;
  }

  if (v6 < v14 || v6 >= (v14 + (v44 & 0xFFFFFFFFFFFFFFF8)) || v6 != v14)
  {
    v42 = 8 * (v44 >> 3);
    v41 = v6;
    v40 = v14;
LABEL_57:
    memmove(v41, v40, v42);
  }

  return 1;
}

uint64_t sub_2294337FC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22944FBD4();
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
      result = sub_22944FBD4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_229433CBC(0, &qword_27D86E950, &qword_2813DBE38, 0x277D119C0);
          sub_229433E1C(&qword_27D86E958, &qword_27D86E950, &qword_2813DBE38, 0x277D119C0);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_2294289FC(v13, i, a3);
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
        sub_2293D30DC(0, &qword_2813DBE38, 0x277D119C0);
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

uint64_t sub_2294339B0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22944FBD4();
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
      result = sub_22944FBD4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_229433CBC(0, &qword_2813DBF10, &unk_2813DBEC0, 0x277CCD0B0);
          sub_229433E1C(&qword_27D86E948, &qword_2813DBF10, &unk_2813DBEC0, 0x277CCD0B0);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_229428A7C(v13, i, a3);
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
        sub_2293D30DC(0, &unk_2813DBEC0, 0x277CCD0B0);
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

uint64_t sub_229433B6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HDMCPregnancyStateFactory(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_229433BF8(uint64_t a1)
{
  sub_229433CBC(319, &qword_2813DBF10, &unk_2813DBEC0, 0x277CCD0B0);
  if (v1 <= 0x3F)
  {
    sub_229433D14();
    if (v2 <= 0x3F)
    {
      sub_22944F134();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_229433CBC(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_2293D30DC(255, a3, a4);
    v5 = sub_22944F984();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_229433D14()
{
  result = qword_2813DC3C0;
  if (!qword_2813DC3C0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2813DC3C0);
  }

  return result;
}

unint64_t sub_229433D78()
{
  result = qword_27D86E940;
  if (!qword_27D86E940)
  {
    sub_22944F054();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D86E940);
  }

  return result;
}

uint64_t sub_229433E1C(unint64_t *a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  result = *a1;
  if (!result)
  {
    sub_229433CBC(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *HDMCPregnancyRequirementEvaluator.__allocating_init(pregnancyManager:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  swift_getObjectType();
  v4 = type metadata accessor for HDMCPregnancyRequirementEvaluator();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon33HDMCPregnancyRequirementEvaluator_pregnancyManager] = a1;
  v6 = HKLogMenstrualCyclesCategory();
  v7 = objc_allocWithZone(MEMORY[0x277CCD738]);
  v8 = sub_22944F864();
  v9 = [v7 initWithName:v8 loggingCategory:v6];

  *&v5[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon33HDMCPregnancyRequirementEvaluator_observers] = v9;
  v12.receiver = v5;
  v12.super_class = v4;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  [*&v10[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon33HDMCPregnancyRequirementEvaluator_pregnancyManager] registerObserver:v10 isUserInitiated:0];
  swift_deallocPartialClassInstance();
  return v10;
}

char *HDMCPregnancyRequirementEvaluator.init(pregnancyManager:)(uint64_t a1)
{
  swift_getObjectType();
  v2 = type metadata accessor for HDMCPregnancyRequirementEvaluator();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon33HDMCPregnancyRequirementEvaluator_pregnancyManager] = a1;
  v4 = HKLogMenstrualCyclesCategory();
  v5 = objc_allocWithZone(MEMORY[0x277CCD738]);
  v6 = sub_22944F864();
  v7 = [v5 initWithName:v6 loggingCategory:v4];

  *&v3[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon33HDMCPregnancyRequirementEvaluator_observers] = v7;
  v10.receiver = v3;
  v10.super_class = v2;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  [*&v8[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon33HDMCPregnancyRequirementEvaluator_pregnancyManager] registerObserver:v8 isUserInitiated:0];
  swift_deallocPartialClassInstance();
  return v8;
}

char *HDMCPregnancyRequirementEvaluator.__allocating_init(pregnancyProvider:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();

  return sub_229434DD8(a1, v1, ObjectType);
}

char *HDMCPregnancyRequirementEvaluator.init(pregnancyProvider:)(uint64_t a1)
{
  swift_getObjectType();

  return sub_229434E20(a1, v1);
}

void sub_229434194(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_22944F054();
  v75 = *(v5 - 8);
  v76 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v74 = v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v72 = v71 - v9;
  MEMORY[0x28223BE20](v8);
  v73 = v71 - v10;
  if (qword_2813DBFB0 != -1)
  {
    swift_once();
  }

  v11 = sub_22944F174();
  __swift_project_value_buffer(v11, qword_2813DBFB8);
  swift_unknownObjectRetain();
  v12 = sub_22944F154();
  v13 = sub_22944FA84();
  swift_unknownObjectRelease();
  v14 = os_log_type_enabled(v12, v13);
  v77 = a1;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v71[0] = v1;
    v16 = v15;
    v17 = swift_slowAlloc();
    v78[0] = v17;
    *v16 = 136315394;
    v18 = sub_22944FF44();
    v71[1] = ObjectType;
    v20 = sub_2293D4824(v18, v19, v78);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v21 = [a1 description];
    v22 = sub_22944F894();
    v24 = v23;

    v25 = sub_2293D4824(v22, v24, v78);

    *(v16 + 14) = v25;
    _os_log_impl(&dword_2293D1000, v12, v13, "[%s] Running requirement evaluation for %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AACCC00](v17, -1, -1);
    v26 = v16;
    v2 = v71[0];
    MEMORY[0x22AACCC00](v26, -1, -1);
  }

  v27 = [*(v2 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon33HDMCPregnancyRequirementEvaluator_pregnancyManager) getCurrentPregnancyModel];
  if (v27)
  {
    v28 = v27;
    v29 = sub_22944F154();
    v30 = sub_22944FA84();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v79 = v32;
      *v31 = 136315394;
      v33 = sub_22944FF44();
      v35 = sub_2293D4824(v33, v34, &v79);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      v36 = HKSensitiveLogItem();
      sub_22944FB34();
      swift_unknownObjectRelease();
      v37 = sub_22944F8A4();
      v39 = sub_2293D4824(v37, v38, &v79);

      *(v31 + 14) = v39;
      _os_log_impl(&dword_2293D1000, v29, v30, "[%s] Currently cached state: %s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AACCC00](v32, -1, -1);
      MEMORY[0x22AACCC00](v31, -1, -1);
    }

    swift_getObjectType();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v41 = [ObjCClassFromMetadata requirementIdentifier];
    v42 = sub_22944F894();
    v44 = v43;
    if (v42 == sub_22944F894() && v44 == v45)
    {

LABEL_15:
      [v28 state];
LABEL_16:
      sub_22944F994();

      return;
    }

    v53 = sub_22944FE24();

    if (v53)
    {
      goto LABEL_15;
    }

    v54 = [ObjCClassFromMetadata requirementIdentifier];
    v55 = sub_22944F894();
    v57 = v56;
    if (v55 == sub_22944F894() && v57 == v58)
    {

      goto LABEL_21;
    }

    v59 = sub_22944FE24();

    if (v59)
    {
LABEL_21:
      v60 = [v28 physiologicalWashoutEndDate];
      if (v60)
      {
        v61 = v72;
        v62 = v60;
        sub_22944F014();

        v64 = v75;
        v63 = v76;
        v65 = v73;
        (*(v75 + 32))(v73, v61, v76);
        v66 = v74;
        sub_22944F044();
        sub_22944EFF4();
        v67 = *(v64 + 8);
        v67(v66, v63);
        v67(v65, v63);
      }

      goto LABEL_16;
    }

    v68 = objc_opt_self();
    v78[0] = 0;
    v78[1] = 0xE000000000000000;
    sub_22944FC84();
    MEMORY[0x22AACB740](0xD000000000000048, 0x8000000229458EA0);
    v69 = [ObjCClassFromMetadata requirementIdentifier];
    v79 = v69;
    type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
    sub_22944FD34();

    v70 = sub_22944F864();

    [v68 hk:3 error:v70 description:?];

    swift_willThrow();
  }

  else
  {
    v46 = sub_22944F154();
    v47 = sub_22944FA64();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v78[0] = v49;
      *v48 = 136446210;
      v50 = sub_22944FF44();
      v52 = sub_2293D4824(v50, v51, v78);

      *(v48 + 4) = v52;
      _os_log_impl(&dword_2293D1000, v46, v47, "[%{public}s] Could not get pregnancy state from pregnancy manager", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v49);
      MEMORY[0x22AACCC00](v49, -1, -1);
      MEMORY[0x22AACCC00](v48, -1, -1);
    }

    sub_229434F10();
    sub_22944FAE4();
  }
}

void sub_229434AB4(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon33HDMCPregnancyRequirementEvaluator_observers];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v8[4] = sub_2293D96A0;
  v8[5] = v4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2293D89A8;
  v8[3] = &block_descriptor_1;
  v5 = _Block_copy(v8);
  v6 = v1;
  v7 = a1;

  [v3 notifyObservers_];
  _Block_release(v5);
}

id HDMCPregnancyRequirementEvaluator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDMCPregnancyRequirementEvaluator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDMCPregnancyRequirementEvaluator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_229434CB8(uint64_t a1)
{
  v2 = type metadata accessor for HDMCPregnancyRequirementEvaluator();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon33HDMCPregnancyRequirementEvaluator_pregnancyManager] = a1;
  v4 = HKLogMenstrualCyclesCategory();
  v5 = objc_allocWithZone(MEMORY[0x277CCD738]);
  v6 = sub_22944F864();
  v7 = [v5 initWithName:v6 loggingCategory:v4];

  *&v3[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon33HDMCPregnancyRequirementEvaluator_observers] = v7;
  v10.receiver = v3;
  v10.super_class = v2;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  [*&v8[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon33HDMCPregnancyRequirementEvaluator_pregnancyManager] registerObserver:v8 isUserInitiated:0];
  return v8;
}

char *sub_229434DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(type metadata accessor for HDMCPregnancyRequirementEvaluator());

  return sub_229434E20(a1, v4);
}

char *sub_229434E20(uint64_t a1, char *a2)
{
  *&a2[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon33HDMCPregnancyRequirementEvaluator_pregnancyManager] = a1;
  v3 = HKLogMenstrualCyclesCategory();
  v4 = objc_allocWithZone(MEMORY[0x277CCD738]);
  v5 = sub_22944F864();
  v6 = [v4 initWithName:v5 loggingCategory:v3];

  *&a2[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon33HDMCPregnancyRequirementEvaluator_observers] = v6;
  v9.receiver = a2;
  v9.super_class = type metadata accessor for HDMCPregnancyRequirementEvaluator();
  v7 = objc_msgSendSuper2(&v9, sel_init);
  [*&v7[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon33HDMCPregnancyRequirementEvaluator_pregnancyManager] registerObserver:v7 isUserInitiated:0];
  return v7;
}

unint64_t sub_229434F10()
{
  result = qword_2813DBE10;
  if (!qword_2813DBE10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813DBE10);
  }

  return result;
}

id HDCodableMenstrualCyclesExperienceModel.getExperienceModel()(uint64_t a1)
{
  result = sub_2294364B8();
  if (!v1)
  {
    v3 = sub_22944320C();

    return v3;
  }

  return result;
}

uint64_t HDCodableMenstrualCyclesExperienceModel.insert(record:oldSampleUUID:)(void *a1, char *a2)
{
  v4 = v3;
  v5 = v2;
  v90 = a2;
  ObjectType = swift_getObjectType();
  v8 = sub_22944F5A4();
  v94 = *(v8 - 8);
  v95 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2293DB9D8(0);
  v91 = *(v11 - 8);
  v92 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2293DBB38(0);
  v88 = *(v14 - 1);
  v89 = v14;
  MEMORY[0x28223BE20](v14);
  v87 = v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2293DB818(0);
  v17 = v16;
  v99 = *(v16 - 1);
  v18 = MEMORY[0x28223BE20](v16);
  v93 = v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = v80 - v20;
  sub_22943A094(0);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v86 = v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v97 = v80 - v25;
  if (HKShowSensitiveLogItems())
  {
    v85 = ObjectType;
    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v26 = sub_22944F174();
    __swift_project_value_buffer(v26, qword_2813DBFB8);
    v96 = a1;
    v27 = a1;
    v28 = sub_22944F154();
    v29 = sub_22944FA84();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v82 = v3;
      v31 = v30;
      v81 = swift_slowAlloc();
      v98[0] = v81;
      *v31 = 136315394;
      v32 = sub_22944FF44();
      v83 = v17;
      v34 = sub_2293D4824(v32, v33, v98);
      v84 = v5;
      v85 = v10;
      v35 = v34;

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      v36 = v27;
      v37 = [v36 description];
      v38 = sub_22944F894();
      v40 = v39;

      v17 = v83;
      v41 = sub_2293D4824(v38, v40, v98);

      *(v31 + 14) = v41;
      v5 = v84;
      v10 = v85;
      _os_log_impl(&dword_2293D1000, v28, v29, "[%s] Inserting record: %s", v31, 0x16u);
      v42 = v81;
      swift_arrayDestroy();
      MEMORY[0x22AACCC00](v42, -1, -1);
      v43 = v31;
      v4 = v82;
      MEMORY[0x22AACCC00](v43, -1, -1);
    }

    a1 = v96;
  }

  result = sub_2294364B8();
  if (!v4)
  {
    v80[0] = v13;
    v84 = v5;
    v85 = v10;
    v45 = result;
    v46 = OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon44CoherentExperienceSetupRecordDatabaseWrapper_capsule;
    swift_beginAccess();
    v47 = a1;
    v48 = v99;
    v49 = *(v99 + 16);
    v80[1] = v46;
    v82 = v99 + 16;
    v81 = v49;
    (v49)(v21, v45 + v46, v17);
    swift_getKeyPath();
    v50 = v87;
    sub_22944F6D4();

    v51 = *(v48 + 8);
    v99 = v48 + 8;
    v83 = v51;
    v52 = (v51)(v21, v17);
    MEMORY[0x28223BE20](v52);
    v53 = v90;
    v80[-4] = v45;
    v80[-3] = v53;
    v96 = v47;
    v80[-2] = v47;
    v54 = v97;
    sub_22941F040(sub_22943A0B4, &v80[-6], v97);
    (*(v88 + 8))(v50, v89);
    v55 = v86;
    sub_22943A71C(v54, v86, sub_22943A094);
    v57 = v91;
    v56 = v92;
    if ((*(v91 + 48))(v55, 1, v92) == 1)
    {
      v90 = 0;
      v58 = v17;
      sub_22943AB80(v55, sub_22943A094);
      sub_229437D24(v96, v45);
      v59 = v95;
    }

    else
    {
      v60 = v80[0];
      v61 = (*(v57 + 32))(v80[0], v55, v56);
      v89 = v80;
      MEMORY[0x28223BE20](v61);
      v62 = v96;
      v80[-4] = v53;
      v80[-3] = v62;
      v80[-2] = v60;
      swift_beginAccess();
      v63 = v56;
      v58 = v17;
      sub_22944F724();
      v64 = v95;
      v90 = 0;
      swift_endAccess();
      (*(v57 + 8))(v60, v63);
      v59 = v64;
    }

    sub_22944F7B4();
    v65 = sub_22944F7A4();
    v66 = v94;
    v67 = v85;
    (*(v94 + 104))(v85, *MEMORY[0x277CFB5F0], v59);
    v68 = v58;
    v69 = v93;
    v81();
    v70 = v90;
    v71 = sub_22944F6F4();
    if (v70)
    {

      v83(v69, v68);
      (*(v66 + 8))(v67, v59);
    }

    else
    {
      v73 = v71;
      v74 = v68;
      v75 = v66;
      v76 = v72;
      v83(v69, v74);
      v77 = v59;
      v78 = v67;
      v79 = sub_22944EF84();
      sub_22943A0D8(v73, v76);
      [v84 setMenstrualCyclesExperienceModelData_];

      (*(v75 + 8))(v78, v77);
    }

    return sub_22943AB80(v97, sub_22943A094);
  }

  return result;
}

uint64_t HDCodableMenstrualCyclesExperienceModel.deleteRecords(with:)(uint64_t a1, uint64_t a2)
{
  v18 = sub_22944F0B4();
  v4 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1 + 56;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;
  v16 = v4 + 16;
  v17 = (v4 + 8);
  v19 = a1;

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
      v15 = v18;
LABEL_9:
      (*(v4 + 16))(v6, *(v19 + 48) + *(v4 + 72) * (__clz(__rbit64(v10)) | (v14 << 6)), v15);
      HDCodableMenstrualCyclesExperienceModel.deleteRecord(with:)(v6);
      if (v2)
      {
        break;
      }

      v10 &= v10 - 1;
      result = (*v17)(v6, v15);
      v13 = v14;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    (*v17)(v6, v15);
  }

  else
  {
LABEL_5:
    v15 = v18;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_229435B90(uint64_t a1)
{
  v3 = type metadata accessor for CoherentExperienceSetupRecord(0);
  v37 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = sub_22944FBD4();
  }

  else
  {
    v6 = *(a1 + 16);
  }

  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v38 = v5;
  v44 = MEMORY[0x277D84F90];
  sub_22943F1DC(0, v6 & ~(v6 >> 63), 0);
  v7 = v44;
  if (v39)
  {
    result = sub_22944FB84();
  }

  else
  {
    result = sub_22944FB54();
    v9 = *(a1 + 36);
  }

  v10 = v38;
  v41 = result;
  v42 = v9;
  v43 = v39 != 0;
  if ((v6 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    v12 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v12 = a1;
    }

    v34 = a1 + 56;
    v35 = v12;
    v32[1] = v1;
    v33 = a1 + 64;
    v36 = v6;
    while (v11 < v6)
    {
      if (__OFADD__(v11++, 1))
      {
        goto LABEL_39;
      }

      v16 = v41;
      v15 = v42;
      v17 = v43;
      v18 = a1;
      sub_22943A490(v41, v42, v43, a1);
      sub_22942BEC4(v19, v10);
      v44 = v7;
      v21 = *(v7 + 16);
      v20 = *(v7 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_22943F1DC((v20 > 1), v21 + 1, 1);
        v10 = v38;
        v7 = v44;
      }

      *(v7 + 16) = v21 + 1;
      result = sub_22943A990(v10, v7 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v21);
      if (v39)
      {
        if (!v17)
        {
          goto LABEL_44;
        }

        if (sub_22944FBA4())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v6 = v36;
        sub_22943A9F4(0);
        v13 = sub_22944F9E4();
        sub_22944FC14();
        result = v13(v40, 0);
      }

      else
      {
        if (v17)
        {
          goto LABEL_45;
        }

        if ((v16 & 0x8000000000000000) != 0)
        {
          goto LABEL_40;
        }

        v22 = 1 << *(a1 + 32);
        if (v16 >= v22)
        {
          goto LABEL_40;
        }

        v23 = v16 >> 6;
        v24 = *(v34 + 8 * (v16 >> 6));
        if (((v24 >> v16) & 1) == 0)
        {
          goto LABEL_41;
        }

        if (*(a1 + 36) != v15)
        {
          goto LABEL_42;
        }

        v25 = v24 & (-2 << (v16 & 0x3F));
        if (v25)
        {
          v22 = __clz(__rbit64(v25)) | v16 & 0x7FFFFFFFFFFFFFC0;
          v6 = v36;
        }

        else
        {
          v26 = v23 << 6;
          v27 = v23 + 1;
          v28 = (v33 + 8 * v23);
          v6 = v36;
          while (v27 < (v22 + 63) >> 6)
          {
            v30 = *v28++;
            v29 = v30;
            v26 += 64;
            ++v27;
            if (v30)
            {
              result = sub_2294314B8(v16, v15, 0);
              v22 = __clz(__rbit64(v29)) + v26;
              goto LABEL_34;
            }
          }

          result = sub_2294314B8(v16, v15, 0);
LABEL_34:
          a1 = v18;
        }

        v31 = *(a1 + 36);
        v41 = v22;
        v42 = v31;
        v43 = 0;
      }

      v10 = v38;
      if (v11 == v6)
      {
        sub_2294314B8(v41, v42, v43);
        return v7;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t HDCodableMenstrualCyclesExperienceModel.makeCopy()()
{
  ObjectType = swift_getObjectType();
  [v0 copy];
  sub_22944FB34();
  swift_unknownObjectRelease();
  if (swift_dynamicCast())
  {
    return v5[0];
  }

  v5[1] = 0;
  v5[2] = 0xE000000000000000;
  sub_22944FC84();
  MEMORY[0x22AACB740](0x742064656C696146, 0xEF2074736163206FLL);
  v5[0] = v0;
  v3 = sub_2293D6A84(&qword_27D86E9D0, &qword_2813DBE18, 0x277D10638, MEMORY[0x277CC9E10]);
  v4 = sub_22943A6B4(v5, ObjectType, v3);
  MEMORY[0x22AACB740](v4);

  MEMORY[0x22AACB740](0xD00000000000002BLL, 0x8000000229459060);
  result = sub_22944FD44();
  __break(1u);
  return result;
}

uint64_t HDCodableMenstrualCyclesExperienceModel.merge(with:)(uint64_t a1)
{
  v50 = a1;
  v3 = sub_22944F5A4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2293DB818(0);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v44 - v13;
  result = sub_2294364B8();
  if (!v2)
  {
    v46 = v1;
    v47 = v12;
    v16 = result;
    v48 = v4;
    v49 = v3;
    v17 = sub_2294364B8();
    v50 = 0;
    v18 = OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon44CoherentExperienceSetupRecordDatabaseWrapper_capsule;
    v19 = v17;
    swift_beginAccess();
    v20 = v9;
    v21 = (v9 + 16);
    v22 = *(v9 + 16);
    v44 = v21;
    v23 = v19 + v18;
    v24 = v14;
    v25 = v14;
    v26 = v16;
    v27 = v8;
    v22(v25, v23, v8);

    v28 = OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon44CoherentExperienceSetupRecordDatabaseWrapper_capsule;
    swift_beginAccess();
    type metadata accessor for CoherentExperienceSetupRecordDatabase(0);
    sub_22943ABE0(&qword_2813DC130, type metadata accessor for CoherentExperienceSetupRecordDatabase, &unk_2294558D8);
    v45 = v24;
    sub_22944F714();
    swift_endAccess();
    sub_22944F7B4();
    v29 = sub_22944F7A4();
    v31 = v48;
    v30 = v49;
    (*(v48 + 104))(v6, *MEMORY[0x277CFB5F0], v49);
    v32 = v26 + v28;
    v33 = v47;
    v22(v47, v32, v27);
    v44 = v29;
    v34 = v50;
    v35 = sub_22944F6F4();
    v50 = v34;
    if (v34)
    {

      v37 = *(v20 + 8);
      v37(v33, v27);
      (*(v31 + 8))(v6, v30);
      return (v37)(v45, v27);
    }

    else
    {
      v38 = *(v20 + 8);
      v39 = v35;
      v40 = v33;
      v41 = v36;
      v38(v40, v27);
      v42 = v31;
      v43 = sub_22944EF84();
      sub_22943A0D8(v39, v41);
      [v46 setMenstrualCyclesExperienceModelData_];

      (*(v42 + 8))(v6, v49);
      return (v38)(v45, v27);
    }
  }

  return result;
}

uint64_t sub_2294364B8()
{
  v2 = v1;
  v3 = v0;
  swift_getObjectType();
  sub_2293DB818(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  v12 = [v3 menstrualCyclesExperienceModelData];
  if (v12)
  {
    v13 = v12;
    sub_22944EF94();

    type metadata accessor for CoherentExperienceSetupRecordDatabase(0);
    sub_22943ABE0(&qword_2813DC130, type metadata accessor for CoherentExperienceSetupRecordDatabase, &unk_2294558D8);
    sub_22944F6E4();
    if (!v1)
    {
      v14 = *(v6 + 32);
      v14(v9, v11, v5);
      type metadata accessor for CoherentExperienceSetupRecordDatabaseWrapper(0);
      v2 = swift_allocObject();
      v14((v2 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon44CoherentExperienceSetupRecordDatabaseWrapper_capsule), v9, v5);
    }
  }

  else
  {
    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v15 = sub_22944F174();
    __swift_project_value_buffer(v15, qword_2813DBFB8);
    v16 = sub_22944F154();
    v2 = sub_22944FA64();
    if (os_log_type_enabled(v16, v2))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24 = v18;
      *v17 = 136446466;
      v19 = sub_22944FF44();
      v21 = sub_2293D4824(v19, v20, &v24);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_2293D4824(0xD000000000000044, 0x8000000229459090, &v24);
      _os_log_impl(&dword_2293D1000, v16, v2, "[%{public}s] Underlying model data is missing, error: %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AACCC00](v18, -1, -1);
      MEMORY[0x22AACCC00](v17, -1, -1);
    }

    sub_22943AC98();
    swift_allocError();
    swift_willThrow();
  }

  return v2;
}

uint64_t sub_229436818(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v38 = a4;
  v45 = a3;
  v43 = a1;
  sub_22942A8EC(0);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_22944F0B4();
  v42 = *(v44 - 8);
  v7 = MEMORY[0x28223BE20](v44);
  v46 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v38 - v9;
  sub_22942B5AC(0, v10);
  v40 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CoherentExperienceSetupRecord(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2293DB818(0);
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon44CoherentExperienceSetupRecordDatabaseWrapper_capsule;
  swift_beginAccess();
  v24 = a2 + v23;
  v25 = v41;
  (*(v20 + 16))(v22, v24, v19);
  sub_22943ABE0(&qword_2813DC238, type metadata accessor for CoherentExperienceSetupRecord, &unk_229454EB4);
  sub_22944F754();
  v26 = v19;
  v27 = v39;
  (*(v20 + 8))(v22, v26);
  v28 = *(v15 + 20);
  v29 = v42;
  v30 = v40;
  (*(v12 + 16))(v14, &v17[v28], v40);
  sub_22943AB80(v17, type metadata accessor for CoherentExperienceSetupRecord);
  sub_22944F1E4();
  (*(v12 + 8))(v14, v30);
  v31 = v44;
  sub_22943A71C(v45, v25, sub_22942A8EC);
  v32 = *(v29 + 48);
  if (v32(v25, 1, v31) == 1)
  {
    v33 = [v38 sampleUUID];
    v34 = v46;
    sub_22944F094();

    if (v32(v25, 1, v31) != 1)
    {
      sub_22943AB80(v25, sub_22942A8EC);
    }
  }

  else
  {
    v34 = v46;
    (*(v29 + 32))(v46, v25, v31);
  }

  v35 = sub_22944F084();
  v36 = *(v29 + 8);
  v36(v34, v31);
  v36(v27, v31);
  return v35 & 1;
}

void sub_229436CCC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v144 = a4;
  v135 = a1;
  v136 = a3;
  v5 = type metadata accessor for CoherentExperienceSetupRecord(0);
  MEMORY[0x28223BE20](v5);
  v119 = &v113[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2293D7574(0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v118 = &v113[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v132 = &v113[-v10];
  sub_22943AC44(0, &qword_27D86E770, sub_22942AFD8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v113[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v126 = &v113[-v15];
  sub_22943AC44(0, qword_2813DC2A8, type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord);
  MEMORY[0x28223BE20](v16 - 8);
  v134 = &v113[-v17];
  v18 = type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord(0);
  v130 = *(v18 - 8);
  v131 = v18;
  MEMORY[0x28223BE20](v18);
  v133 = &v113[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v127 = sub_22944F054();
  v20 = *(v127 - 8);
  v21 = MEMORY[0x28223BE20](v127);
  v137 = &v113[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = MEMORY[0x28223BE20](v21);
  v120 = &v113[-v24];
  v25 = MEMORY[0x28223BE20](v23);
  v124 = &v113[-v26];
  v27 = MEMORY[0x28223BE20](v25);
  v128 = &v113[-v28];
  v29 = MEMORY[0x28223BE20](v27);
  v123 = &v113[-v30];
  MEMORY[0x28223BE20](v29);
  v129 = &v113[-v31];
  sub_22942A8EC(0);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v113[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = sub_22944F0B4();
  v36 = *(v35 - 8);
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v113[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v37);
  v41 = &v113[-v40];
  sub_22943A71C(a2, v34, sub_22942A8EC);
  v42 = (*(v36 + 48))(v34, 1, v35);
  v138 = v5;
  v125 = v14;
  v122 = v20;
  if (v42 == 1)
  {
    v43 = v136;
    sub_22943AB80(v34, sub_22942A8EC);
  }

  else
  {
    (*(v36 + 32))(v41, v34, v35);
    v43 = v136;
    v44 = [v136 sampleUUID];
    sub_22944F094();

    sub_22943ABE0(&qword_27D86E760, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
    LOBYTE(v44) = sub_22944F854();
    v45 = *(v36 + 8);
    v45(v39, v35);
    if ((v44 & 1) == 0)
    {
      v46 = [v43 sampleUUID];
      sub_22944F094();

      sub_2293DB9D8(0);
      v47 = sub_22944F5E4();
      sub_22942B5AC(0, v48);
      sub_22944F1F4();
      v47(v139, 0);
    }

    v45(v41, v35);
    v14 = v125;
    v20 = v122;
  }

  v49 = v43;
  v50 = [v43 educationalStepsReviewDate];
  v51 = v127;
  if (v50)
  {
    v52 = v123;
    v53 = v50;
    sub_22944F014();

    v54 = v129;
    (*(v20 + 32))(v129, v52, v51);
    v55 = sub_229430EF0(MEMORY[0x277D84F90]);
    v56 = v133;
    (*(v20 + 16))(v133, v54, v51);
    v57 = v131;
    *(v56 + *(v131 + 20)) = v55;
    v58 = v134;
    sub_22943A71C(v56, v134, type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord);
    (*(v130 + 56))(v58, 0, 1, v57);
    sub_2293DB9D8(0);
    v59 = sub_22944F5E4();
    sub_22943AB00(0);
    v49 = v136;
    sub_22944F1F4();
    v59(v139, 0);
    v20 = v122;
    sub_22943AB80(v56, type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord);
    (*(v20 + 8))(v129, v51);
  }

  v60 = [v49 configurationStepsReviewDate];
  if (v60)
  {
    v61 = v49;
    v62 = v124;
    v63 = v60;
    sub_22944F014();

    v64 = v128;
    (*(v20 + 32))(v128, v62, v51);
    v65 = sub_229430EF0(MEMORY[0x277D84F90]);
    v66 = v133;
    (*(v20 + 16))(v133, v64, v51);
    v67 = v131;
    *(v66 + *(v131 + 20)) = v65;
    v68 = v134;
    sub_22943A71C(v66, v134, type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord);
    (*(v130 + 56))(v68, 0, 1, v67);
    sub_2293DB9D8(0);
    v69 = sub_22944F5E4();
    sub_22943AB00(0);
    v49 = v61;
    sub_22944F1F4();
    v69(v139, 0);
    v20 = v122;
    sub_22943AB80(v66, type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord);
    (*(v20 + 8))(v64, v51);
  }

  v70 = [v49 postPregnancyFeatureAdjustmentCompletionLog];
  type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier(0);
  sub_22943ABE0(&qword_27D86E500, type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier, &unk_22945476C);
  v71 = sub_22944F7F4();

  v72 = 0;
  v73 = *(v71 + 64);
  v115 = v71 + 64;
  v121 = v71;
  v74 = 1 << *(v71 + 32);
  v75 = -1;
  if (v74 < 64)
  {
    v75 = ~(-1 << v74);
  }

  v76 = v75 & v73;
  v114 = (v74 + 63) >> 6;
  v136 = (v20 + 16);
  v133 = (v20 + 32);
  v131 = v20 + 56;
  v124 = *MEMORY[0x277D11930];
  v123 = (v20 + 8);
  v117 = (v20 + 48);
  if ((v75 & v73) == 0)
  {
    goto LABEL_17;
  }

  do
  {
    while (1)
    {
      v77 = v72;
LABEL_24:
      v80 = __clz(__rbit64(v76));
      v76 &= v76 - 1;
      v81 = v80 | (v77 << 6);
      v82 = *(*(v121 + 48) + 8 * v81);
      v83 = v122;
      v84 = v120;
      (*(v122 + 16))(v120, *(v121 + 56) + *(v122 + 72) * v81, v51);
      sub_22942AFD8(0);
      v86 = v85;
      v87 = *(v85 + 48);
      *v14 = v82;
      (*(v83 + 32))(v14 + v87, v84, v51);
      (*(*(v86 - 8) + 56))(v14, 0, 1, v86);
      v88 = v82;
      v79 = v77;
LABEL_25:
      v89 = v126;
      sub_22942B04C(v14, v126);
      sub_22942AFD8(0);
      if ((*(*(v86 - 8) + 48))(v89, 1, v86) == 1)
      {

        return;
      }

      v134 = v79;
      v90 = *v89;
      v91 = v137;
      (*v133)(v137, v89 + *(v86 + 48), v51);
      v140 = sub_22944F894();
      v141 = v92;
      sub_2293DB9D8(0);
      v94 = v93;
      v95 = sub_22944F5E4();
      sub_22942B6F0();
      sub_22944F644();

      v95(v139, 0);
      v96 = sub_22944F894();
      v98 = v97;
      v99 = v132;
      v130 = *v136;
      (v130)(v132, v91, v51);
      v100 = *v131;
      (*v131)(v99, 0, 1, v51);
      v142 = v96;
      v143 = v98;
      v101 = sub_22944F5E4();
      sub_22942B8A4(0);
      sub_22944F4D4();
      v101(v139, 0);
      v102 = sub_22944F894();
      v104 = v103;
      if (v102 == sub_22944F894() && v104 == v105)
      {

        break;
      }

      v106 = sub_22944FE24();

      if (v106)
      {
        break;
      }

      v51 = v127;
      (*v123)(v137, v127);

      v72 = v134;
      v14 = v125;
      if (!v76)
      {
        goto LABEL_17;
      }
    }

    v129 = v100;
    v107 = v119;
    v128 = v94;
    sub_22944F5F4();
    sub_22943AA9C(0);
    v108 = v118;
    sub_22944F1E4();
    sub_22943AB80(v107, type metadata accessor for CoherentExperienceSetupRecord);
    v51 = v127;
    v109 = (*v117)(v108, 1, v127);
    sub_22943AB80(v108, sub_2293D7574);
    if (v109 == 1)
    {
      v116 = v90;
      v110 = v132;
      (v130)(v132, v137, v51);
      (v129)(v110, 0, 1, v51);
      v111 = sub_22944F5E4();
      sub_22944F1F4();
      v111(v139, 0);

      (*v123)(v137, v51);
    }

    else
    {
      (*v123)(v137, v51);
    }

    v72 = v134;
    v14 = v125;
  }

  while (v76);
LABEL_17:
  if (v114 <= (v72 + 1))
  {
    v78 = v72 + 1;
  }

  else
  {
    v78 = v114;
  }

  v79 = v78 - 1;
  while (1)
  {
    v77 = (v72 + 1);
    if (__OFADD__(v72, 1))
    {
      break;
    }

    if (v77 >= v114)
    {
      sub_22942AFD8(0);
      v86 = v112;
      (*(*(v112 - 8) + 56))(v14, 1, 1, v112);
      v76 = 0;
      goto LABEL_25;
    }

    v76 = *(v115 + 8 * v77);
    ++v72;
    if (v76)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
}

uint64_t sub_229437D24(void *a1, uint64_t a2)
{
  swift_getObjectType();
  if (qword_2813DBFB0 != -1)
  {
    swift_once();
  }

  v3 = sub_22944F174();
  __swift_project_value_buffer(v3, qword_2813DBFB8);
  v4 = a1;
  v5 = sub_22944F154();
  v6 = sub_22944FA84();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19[0] = v8;
    *v7 = 136315394;
    v9 = sub_22944FF44();
    v11 = sub_2293D4824(v9, v10, v19);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = [v4 debugDescription];
    sub_22944F894();

    sub_22944FE34();
    v13 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_22944FB34();
    swift_unknownObjectRelease();
    v14 = sub_22944F8A4();
    v16 = sub_2293D4824(v14, v15, v19);

    *(v7 + 14) = v16;
    _os_log_impl(&dword_2293D1000, v5, v6, "[%s] Will insert new record %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AACCC00](v8, -1, -1);
    MEMORY[0x22AACCC00](v7, -1, -1);
  }

  MEMORY[0x28223BE20](v17);
  swift_beginAccess();
  sub_2293DB818(0);
  sub_22944F724();
  return swift_endAccess();
}

uint64_t sub_229437FD8(uint64_t a1, void *a2)
{
  sub_22943AC44(0, &qword_2813DBF48, MEMORY[0x277CFB7B8]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22[-v4];
  sub_2293DB9D8(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for CoherentExperienceSetupRecord(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_22942BEC4(a2, &v22[-v15]);
  sub_22943A71C(v16, v14, type metadata accessor for CoherentExperienceSetupRecord);
  v17 = sub_22944F7D4();
  (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
  v18 = sub_22943ABE0(&qword_2813DC238, type metadata accessor for CoherentExperienceSetupRecord, &unk_229454EB4);

  MEMORY[0x22AACB440](v19, v14, v5, v11, v18);
  swift_getKeyPath();
  v20 = sub_22944F704();
  sub_2293DBB38(0);
  sub_22944F514();
  v20(v22, 0);

  (*(v8 + 8))(v10, v7);
  return sub_22943AB80(v16, type metadata accessor for CoherentExperienceSetupRecord);
}

char *HDCodableMenstrualCyclesExperienceModel.deleteRecord(with:)(void *a1)
{
  v98 = a1;
  ObjectType = swift_getObjectType();
  v87 = sub_22944F0B4();
  v90 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v89 = &v77 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22944F5A4();
  v91 = *(v3 - 8);
  v92 = v3;
  MEMORY[0x28223BE20](v3);
  v93 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2293DB9D8(0);
  v97 = v5;
  v99 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2293DBB38(0);
  v95 = *(v8 - 8);
  v96 = v8;
  MEMORY[0x28223BE20](v8);
  v94 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2293DB818(0);
  v100 = v10;
  v11 = *(v10 - 1);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v77 - v15;
  sub_22943A094(0);
  v18 = v17;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v77 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v77 - v25;
  v27 = v101;
  result = sub_2294364B8();
  if (!v27)
  {
    v81 = v18;
    v83 = v21;
    v84 = v14;
    v86 = v7;
    v77 = v1;
    v29 = OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon44CoherentExperienceSetupRecordDatabaseWrapper_capsule;
    v30 = result;
    v101 = 0;
    swift_beginAccess();
    v31 = *(v11 + 16);
    v78 = v29;
    v32 = &v30[v29];
    v33 = v100;
    v80 = v11 + 16;
    v79 = v31;
    v31(v16, v32, v100);
    swift_getKeyPath();
    v34 = v30;
    v35 = v94;
    sub_22944F6D4();

    v36 = *(v11 + 8);
    v85 = v11 + 8;
    v82 = v36;
    v37 = (v36)(v16, v33);
    MEMORY[0x28223BE20](v37);
    v38 = v98;
    *(&v77 - 2) = v30;
    *(&v77 - 1) = v38;
    v39 = v101;
    sub_22941F040(sub_22943A6E0, (&v77 - 4), v26);
    v101 = v39;
    (*(v95 + 8))(v35, v96);
    sub_22943A71C(v26, v24, sub_22943A094);
    v40 = v99;
    v41 = v97;
    v42 = (*(v99 + 48))(v24, 1, v97);
    v96 = v26;
    if (v42 == 1)
    {
      v100 = v34;
      sub_22943AB80(v24, sub_22943A094);
      if (qword_2813DBFB0 != -1)
      {
        swift_once();
      }

      v43 = sub_22944F174();
      __swift_project_value_buffer(v43, qword_2813DBFB8);
      v44 = v89;
      v45 = v90;
      v46 = v87;
      (*(v90 + 16))(v89, v38, v87);
      v47 = sub_22944F154();
      v48 = sub_22944FA64();
      v49 = os_log_type_enabled(v47, v48);
      v50 = ObjectType;
      if (v49)
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v103 = v52;
        *v51 = 136315394;
        v102 = v50;
        swift_getMetatypeMetadata();
        v53 = sub_2293D47B8();
        v55 = sub_2293D4824(v53, v54, &v103);

        *(v51 + 4) = v55;
        *(v51 + 12) = 2080;
        sub_22943ABE0(&qword_2813DC480, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v56 = sub_22944FDF4();
        v58 = v57;
        (*(v45 + 8))(v44, v46);
        v59 = sub_2293D4824(v56, v58, &v103);

        *(v51 + 14) = v59;
        _os_log_impl(&dword_2293D1000, v47, v48, "[%s] Unable to delete record that does not exist: %s", v51, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AACCC00](v52, -1, -1);
        MEMORY[0x22AACCC00](v51, -1, -1);
      }

      else
      {

        (*(v45 + 8))(v44, v46);
      }

      return sub_22943AB80(v96, sub_22943A094);
    }

    else
    {
      v60 = *(v40 + 32);
      v61 = v86;
      v62 = v60(v86, v24, v41);
      MEMORY[0x28223BE20](v62);
      *(&v77 - 2) = v61;
      v63 = v78;
      swift_beginAccess();
      v64 = v34;
      v65 = v83;
      v66 = v101;
      sub_22944F724();
      if (v66)
      {
        result = swift_endAccess();
        __break(1u);
      }

      else
      {
        swift_endAccess();
        sub_22943AB80(v65, sub_22943A094);
        sub_22944F7B4();
        v67 = sub_22944F7A4();
        v68 = v91;
        v69 = v92;
        (*(v91 + 104))(v93, *MEMORY[0x277CFB5F0], v92);
        v70 = &v64[v63];
        v71 = v84;
        v79(v84, v70, v100);
        v72 = sub_22944F6F4();
        v73 = v68;
        v75 = v74;
        v82(v71, v100);
        v76 = sub_22944EF84();
        sub_22943A0D8(v72, v75);
        [v77 setMenstrualCyclesExperienceModelData_];

        (*(v73 + 8))(v93, v69);
        sub_22943AB80(v96, sub_22943A094);
        return (*(v99 + 8))(v86, v41);
      }
    }
  }

  return result;
}