uint64_t sub_243A366C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_243AC2A58();
  v5[5] = sub_243AC2A48();
  v7 = sub_243AC2A28();

  return MEMORY[0x2822009F8](sub_243A36760, v7, v6);
}

uint64_t sub_243A36760()
{
  v1 = v0[4];

  v2 = [v1 page];
  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = v2;

  sub_243AC16B8();
  v3 = v0[1];

  return v3();
}

void sub_243A36860(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a1 || a2)
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v9 = sub_243AC1468();
    __swift_project_value_buffer(v9, qword_27EDA14A8);
    v10 = a2;
    v11 = sub_243AC1448();
    v12 = sub_243AC2B58();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      if (a2)
      {
        v15 = a2;
        v16 = _swift_stdlib_bridgeErrorToNSError();
        v17 = v16;
      }

      else
      {
        v16 = 0;
        v17 = 0;
      }

      *(v13 + 4) = v16;
      *v14 = v17;
      _os_log_impl(&dword_243A1B000, v11, v12, "Could not fetch recommendation rules from server %@", v13, 0xCu);
      sub_243A2251C(v14, &qword_27ED98BF8, &unk_243AC6150);
      MEMORY[0x245D47D20](v14, -1, -1);
      MEMORY[0x245D47D20](v13, -1, -1);
    }

    sub_243A41398(a2);
    v18 = *(a3 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationTaskGroup);

    dispatch_group_leave(v18);
  }

  else
  {
    v5 = *(a3 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationRules);
    v6 = MEMORY[0x28223BE20](a1);

    os_unfair_lock_lock((v5 + 24));
    sub_243A49130((v5 + 16));
    os_unfair_lock_unlock((v5 + 24));

    v8 = *(a3 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_rulesMap);
    MEMORY[0x28223BE20](v7);

    os_unfair_lock_lock((v8 + 24));
    sub_243A49174((v8 + 16));
    os_unfair_lock_unlock((v8 + 24));

    dispatch_group_leave(*(a3 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationTaskGroup));
  }
}

uint64_t sub_243A36AF0(void *a1, id a2, uint64_t a3)
{
  v33 = a3;
  v5 = [a2 ruleset];
  sub_243A2CFF0(0, &qword_27ED98FC0, 0x277CFB1E8);
  v6 = sub_243AC2998();

  v7 = sub_243A36E34(v6);

  v34 = v7;
  if (!(v7 >> 62))
  {
    result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }
  }

  result = sub_243AC2DF8();
  if (!result)
  {
  }

LABEL_3:
  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v36 = result;
    v37 = v3;
    v9 = 0;
    v10 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_breakoutsMap;
    v11 = v34;
    v35 = v34 & 0xC000000000000001;
    do
    {
      if (v35)
      {
        v12 = MEMORY[0x245D470F0](v9, v11);
      }

      else
      {
        v12 = *(v11 + 8 * v9 + 32);
      }

      v13 = v12;
      v14 = [v12 recommendationID];
      v15 = sub_243AC2858();
      v17 = v16;

      v18 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38[0] = *a1;
      sub_243A8B380(v18, v15, v17, isUniquelyReferenced_nonNull_native);

      *a1 = v38[0];
      v20 = [v18 context];
      v21 = sub_243AC2998();

      v38[0] = 0x74754F6B61657262;
      v38[1] = 0xE800000000000000;
      MEMORY[0x28223BE20](v22);
      v32[2] = v38;
      v23 = v37;
      LOBYTE(v20) = sub_243A451B4(sub_243A49190, v32, v21);
      v37 = v23;

      if (v20)
      {
        v24 = [v18 recommendationID];
        v25 = sub_243AC2858();
        v27 = v26;

        v28 = [v18 rankingHint];
        v29 = [v28 integerValue];

        v30 = v33;
        swift_beginAccess();
        v31 = swift_isUniquelyReferenced_nonNull_native();
        v39 = *(v30 + v10);
        *(v30 + v10) = 0x8000000000000000;
        sub_243A8B21C(v29, v25, v27, v31);

        *(v30 + v10) = v39;
        v11 = v34;
        swift_endAccess();
      }

      ++v9;
    }

    while (v36 != v9);
  }

  return result;
}

unint64_t sub_243A36E34(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_45;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v27 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x245D470F0](v2, v26);
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v28 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject recommendationRules];
      sub_243A2CFF0(0, &qword_27ED98C40, 0x277CFB1D0);
      v8 = sub_243AC2998();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_243AC2DF8();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_243AC2DF8();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_38;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v31 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v13 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        sub_243AC2DF8();
        goto LABEL_20;
      }

      if (v11)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = sub_243AC2D38();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v33 = v3;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_243AC2DF8();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v15 >> 1) - v14) < v10)
          {
            goto LABEL_42;
          }

          v17 = v13 + 8 * v14 + 32;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_44;
            }

            sub_243A491E8(&qword_27ED98FE8, &qword_27ED98FE0, &qword_243AC5908, MEMORY[0x277D83988]);
            for (i = 0; i != v16; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98FE0, &qword_243AC5908);
              v19 = sub_243AA80F4(v32, i, v8);
              v21 = *v20;
              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v33;
          if (v10 >= 1)
          {
            v22 = *(v13 + 16);
            v5 = __OFADD__(v22, v10);
            v23 = v22 + v10;
            if (v5)
            {
              goto LABEL_43;
            }

            *(v13 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_25;
        }
      }

      v3 = v33;
      if (v10 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      v2 = v31;
      if (v31 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_243AC2DF8();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_243A371C8(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v28 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = MEMORY[0x277D84F90];
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v26 = v1;
    while (1)
    {
      if (v29)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x245D470F0](v2, v25);
        v4 = __OFADD__(v2++, 1);
        if (v4)
        {
          goto LABEL_41;
        }
      }

      else
      {
        if (v2 >= *(v28 + 16))
        {
          goto LABEL_42;
        }

        v4 = __OFADD__(v2++, 1);
        if (v4)
        {
          goto LABEL_41;
        }
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_243AC16A8();

      v5 = v31[0];
      v6 = v31[0] >> 62;
      v7 = v31[0] >> 62 ? sub_243AC2DF8() : *((v31[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      v8 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = isUniquelyReferenced_nonNull_bridgeObject + v7;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v7))
      {
        goto LABEL_40;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v8)
        {
          goto LABEL_20;
        }

LABEL_19:
        sub_243AC2DF8();
        goto LABEL_20;
      }

      if (v8)
      {
        goto LABEL_19;
      }

      v10 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v9 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v11 = v7;
        goto LABEL_21;
      }

LABEL_20:
      v11 = v7;
      isUniquelyReferenced_nonNull_bridgeObject = sub_243AC2D38();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v10 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v12 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v6)
      {
        v15 = v10;
        isUniquelyReferenced_nonNull_bridgeObject = sub_243AC2DF8();
        v10 = v15;
        v14 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v13 >> 1) - v12) < v11)
          {
            goto LABEL_44;
          }

          v32 = v11;
          v30 = v3;
          v16 = v10 + 8 * v12 + 32;
          v27 = v10;
          if (v6)
          {
            if (v14 < 1)
            {
              goto LABEL_46;
            }

            sub_243A491E8(&qword_27ED98FA8, &qword_27ED98F40, &qword_243AC52E0, MEMORY[0x277D83988]);
            for (i = 0; i != v14; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F40, &qword_243AC52E0);
              v18 = sub_243AA806C(v31, i, v5);
              v20 = *v19;
              (v18)(v31, 0);
              *(v16 + 8 * i) = v20;
            }
          }

          else
          {
            sub_243A2CFF0(0, &qword_27ED98F70, 0x277CFB1B0);
            swift_arrayInitWithCopy();
          }

          v1 = v26;
          v3 = v30;
          if (v32 >= 1)
          {
            v21 = *(v27 + 16);
            v4 = __OFADD__(v21, v32);
            v22 = v21 + v32;
            if (v4)
            {
              goto LABEL_45;
            }

            *(v27 + 16) = v22;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v14)
        {
          goto LABEL_25;
        }
      }

      if (v11 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_243AC2DF8();
    v9 = isUniquelyReferenced_nonNull_bridgeObject + v7;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v7))
    {
      goto LABEL_13;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v23 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_243AC2DF8();
    isUniquelyReferenced_nonNull_bridgeObject = v23;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_243A375B0(uint64_t a1, uint64_t a2, void (*a3)(id, uint64_t, uint64_t, uint64_t))
{
  dispatch_group_enter(*(v3 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationTaskGroup));
  v7 = *(v3 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_account);

  a3(v7, a1, a2, v3);
}

void sub_243A37654(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v35 - v7;
  if (a1 && !a2)
  {
    if (a1 >> 62)
    {
      v10 = sub_243AC2DF8();
    }

    else
    {
      v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = MEMORY[0x277D84F90];
    if (v10)
    {
      v37 = MEMORY[0x277D84F90];
      sub_243A64F14(0, v10 & ~(v10 >> 63), 0);
      if (v10 < 0)
      {
        __break(1u);
        return;
      }

      v35 = v8;
      v36 = a3;
      v11 = v37;
      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = 0;
        do
        {
          MEMORY[0x245D470F0](v12, a1);
          v13 = [swift_unknownObjectRetain() identifier];
          v14 = sub_243AC2858();
          v16 = v15;
          swift_unknownObjectRelease_n();

          v37 = v11;
          v18 = *(v11 + 16);
          v17 = *(v11 + 24);
          if (v18 >= v17 >> 1)
          {
            sub_243A64F14((v17 > 1), v18 + 1, 1);
            v11 = v37;
          }

          ++v12;
          *(v11 + 16) = v18 + 1;
          v19 = v11 + 16 * v18;
          *(v19 + 32) = v14;
          *(v19 + 40) = v16;
        }

        while (v10 != v12);
      }

      else
      {
        v20 = (a1 + 32);
        do
        {
          v21 = *v20;
          v22 = [v21 identifier];
          v23 = sub_243AC2858();
          v25 = v24;

          v37 = v11;
          v27 = *(v11 + 16);
          v26 = *(v11 + 24);
          if (v27 >= v26 >> 1)
          {
            sub_243A64F14((v26 > 1), v27 + 1, 1);
            v11 = v37;
          }

          *(v11 + 16) = v27 + 1;
          v28 = v11 + 16 * v27;
          *(v28 + 32) = v23;
          *(v28 + 40) = v25;
          ++v20;
          --v10;
        }

        while (v10);
      }

      v8 = v35;
      a3 = v36;
    }

    v29 = sub_243AC2A98();
    (*(*(v29 - 8) + 56))(v8, 1, 1, v29);
    sub_243AC2A58();

    v30 = sub_243AC2A48();
    v31 = swift_allocObject();
    v32 = MEMORY[0x277D85700];
    *(v31 + 16) = v30;
    *(v31 + 24) = v32;
    *(v31 + 32) = v11;
    *(v31 + 40) = 5;
    *(v31 + 56) = 0;
    *(v31 + 64) = 0;
    *(v31 + 48) = a3;
    *(v31 + 72) = 1793;
    sub_243A3306C(0, 0, v8, &unk_243AC5900, v31);

    v34 = *(a3 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_allRecommendations);
    MEMORY[0x28223BE20](v33);
    *(&v35 - 2) = a1;

    os_unfair_lock_lock((v34 + 24));
    sub_243A49114((v34 + 16));
    os_unfair_lock_unlock((v34 + 24));

    dispatch_group_leave(*(a3 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationTaskGroup));
    return;
  }

  v9 = *(a3 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationTaskGroup);

  dispatch_group_leave(v9);
}

void sub_243A37A00(uint64_t *a1, unint64_t a2)
{
  v2 = a2;
  if (a2 >> 62)
  {
LABEL_26:
    v4 = sub_243AC2DF8();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v30 = v2;
      v31 = v2 & 0xC000000000000001;
      v28 = v2 & 0xFFFFFFFFFFFFFF8;
      v29 = v4;
      do
      {
        if (v31)
        {
          v8 = MEMORY[0x245D470F0](v5, v2);
        }

        else
        {
          if (v5 >= *(v28 + 16))
          {
            goto LABEL_25;
          }

          v8 = *(v2 + 8 * v5 + 32);
        }

        v9 = v8;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v32 = v5 + 1;
        v10 = [v8 identifier];
        v11 = sub_243AC2858();
        v13 = v12;

        v14 = v9;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v16 = a1;
        v2 = *a1;
        v33 = *a1;
        v18 = sub_243A2DDC0(v11, v13);
        v19 = *(v2 + 16);
        v20 = (v17 & 1) == 0;
        v21 = v19 + v20;
        if (__OFADD__(v19, v20))
        {
          goto LABEL_23;
        }

        a1 = v17;
        if (*(v2 + 24) >= v21)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v17)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_243A8B978();
            if (a1)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_243A8A254(v21, isUniquelyReferenced_nonNull_native);
          v22 = sub_243A2DDC0(v11, v13);
          if ((a1 & 1) != (v23 & 1))
          {
            sub_243AC2F38();
            __break(1u);
            return;
          }

          v18 = v22;
          if (a1)
          {
LABEL_4:

            v2 = v33;
            v6 = v33[7];
            v7 = *(v6 + 8 * v18);
            *(v6 + 8 * v18) = v14;

            goto LABEL_5;
          }
        }

        v2 = v33;
        v33[(v18 >> 6) + 8] |= 1 << v18;
        v24 = (v33[6] + 16 * v18);
        *v24 = v11;
        v24[1] = v13;
        *(v33[7] + 8 * v18) = v14;

        v25 = v33[2];
        v26 = __OFADD__(v25, 1);
        v27 = v25 + 1;
        if (v26)
        {
          goto LABEL_24;
        }

        v33[2] = v27;
LABEL_5:
        a1 = v16;
        *v16 = v2;
        ++v5;
        v2 = v30;
      }

      while (v32 != v29);
    }
  }
}

uint64_t sub_243A37C54(char a1, char a2)
{
  if (a2)
  {
    sub_243A242A0();

    sub_243AA47D8();
  }

  dispatch_group_enter(*(v2 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationTaskGroup));
  v4 = *(v2 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_account);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a2 & 1;
  v6 = v4;

  sub_243AC13D8();
}

void sub_243A37D58(void *a1, void *a2, uint64_t a3, char a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - v9;
  if (!a1 || a2)
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v19 = sub_243AC1468();
    __swift_project_value_buffer(v19, qword_27EDA14A8);
    v20 = a2;
    v21 = sub_243AC1448();
    v22 = sub_243AC2B58();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31 = v25;
      *v23 = 136315394;
      *(v23 + 4) = sub_243AB73D8(0xD00000000000004CLL, 0x8000000243ACCA70, &v31);
      *(v23 + 12) = 2112;
      if (a2)
      {
        v26 = a2;
        v27 = _swift_stdlib_bridgeErrorToNSError();
        v28 = v27;
      }

      else
      {
        v27 = 0;
        v28 = 0;
      }

      *(v23 + 14) = v27;
      *v24 = v28;
      _os_log_impl(&dword_243A1B000, v21, v22, "%s Failed to fetch completed recommendations: %@", v23, 0x16u);
      sub_243A2251C(v24, &qword_27ED98BF8, &unk_243AC6150);
      MEMORY[0x245D47D20](v24, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x245D47D20](v25, -1, -1);
      MEMORY[0x245D47D20](v23, -1, -1);
    }

    v29 = *(a3 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationTaskGroup);

    dispatch_group_leave(v29);
  }

  else
  {
    v11 = *(a3 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_completedRecommendationController);
    v12 = a1;

    v13 = [v12 recommendations];
    sub_243A2CFF0(0, &qword_27ED98F70, 0x277CFB1B0);
    v14 = sub_243AC2998();

    v15 = *(a3 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_rulesMap);
    v16 = swift_allocObject();
    *(v16 + 16) = a4 & 1;
    *(v16 + 24) = a3;
    v17 = sub_243AC2A98();
    (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v14;
    v18[5] = v11;
    v18[6] = v15;
    v18[7] = sub_243A48F8C;
    v18[8] = v16;
    swift_retain_n();

    sub_243A3306C(0, 0, v10, &unk_243ACA540, v18);
  }
}

uint64_t sub_243A38130(char a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = *(v2 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_allRecommendations);

  os_unfair_lock_lock((v8 + 24));
  sub_243A382F8((v8 + 16), &v17);
  os_unfair_lock_unlock((v8 + 24));
  v9 = v17;

  v10 = *(v2 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationsFilter);
  v11 = *(v2 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_rulesMap);
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = a1;
  *(v12 + 25) = a2;
  v13 = sub_243AC2A98();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v9;
  v14[5] = v11;
  v14[6] = v10;
  v14[7] = sub_243A493A0;
  v14[8] = v12;

  sub_243A3306C(0, 0, v7, &unk_243AC5928, v14);
}

uint64_t sub_243A382F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  v4 = 1 << *(*a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v9 = 0;
  while (v6)
  {
LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = *(*(v2 + 56) + ((v9 << 9) | (8 * v11)));
    [v12 copy];
    sub_243AC2C68();
    swift_unknownObjectRelease();

    sub_243A2CFF0(0, &qword_27ED98F70, 0x277CFB1B0);
    result = swift_dynamicCast();
    if ((result & 1) != 0 && v14)
    {
      MEMORY[0x245D46D30]();
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_243AC29B8();
      }

      result = sub_243AC29D8();
      v3 = v15;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      *a2 = v3;
      return result;
    }

    v6 = *(v2 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_243A384BC(unint64_t a1, uint64_t a2, int a3, int a4)
{
  v44 = a2;
  v7 = sub_243AC2178();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_243AC21A8();
  v12 = MEMORY[0x28223BE20](v11);
  v40 = v8;
  v41 = v7;
  v38 = v10;
  v39 = v12;
  v36 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v14;
  v34 = a3;
  v35 = a4;
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_243AC2DF8())
  {
    v16 = 0;
    v42 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_eligibleRecommendations;
    v43 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x245D470F0](v16, a1);
      }

      else
      {
        if (v16 >= *(v43 + 16))
        {
          goto LABEL_18;
        }

        v17 = *(a1 + 8 * v16 + 32);
      }

      v18 = v17;
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      v20 = [v17 identifier];
      v21 = sub_243AC2858();
      v23 = v22;

      v24 = sub_243A5B5E4(v21, v23);
      if (v24 > 0xEu)
      {
        goto LABEL_16;
      }

      if (((1 << v24) & 0x6238) != 0)
      {
        sub_243A394D8(v18);
      }

      else
      {
        if (((1 << v24) & 0x140) == 0)
        {
LABEL_16:
          v25 = *(v44 + v42);
          MEMORY[0x28223BE20](v24);
          *(&v33 - 2) = v18;

          os_unfair_lock_lock((v25 + 24));
          sub_243A494E4((v25 + 16));
          os_unfair_lock_unlock((v25 + 24));

          goto LABEL_6;
        }

        sub_243A38C9C(v18);
      }

LABEL_6:
      ++v16;
      if (v19 == i)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_20:
  sub_243A2CFF0(0, &qword_27ED995D0, 0x277D85C78);
  v26 = sub_243AC2BC8();
  v27 = swift_allocObject();
  *(v27 + 16) = v44;
  *(v27 + 24) = v34 & 1;
  *(v27 + 25) = v35 & 1;
  *(v27 + 32) = a1;
  aBlock[4] = sub_243A4952C;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243A71700;
  aBlock[3] = &block_descriptor_432;
  v28 = _Block_copy(aBlock);

  v29 = v36;
  sub_243AC2198();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_243A484E8(&qword_27ED99860, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F90, &qword_243AC5C20);
  sub_243A491E8(&qword_27ED99870, &qword_27ED98F90, &qword_243AC5C20, MEMORY[0x277D83970]);
  v30 = v38;
  v31 = v41;
  sub_243AC2C78();
  MEMORY[0x245D46FA0](0, v29, v30, v28);
  _Block_release(v28);

  (*(v40 + 8))(v30, v31);
  return (*(v37 + 8))(v29, v39);
}

void sub_243A3898C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a3;
  v6 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v34 - v9;
  sub_243A397F0(v6, v5);
  if (v6)
  {
    if (a4 >> 62)
    {
      v11 = sub_243AC2DF8();
    }

    else
    {
      v11 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = MEMORY[0x277D84F90];
    if (v11)
    {
      v37 = MEMORY[0x277D84F90];
      sub_243A64F14(0, v11 & ~(v11 >> 63), 0);
      if (v11 < 0)
      {
        __break(1u);
        return;
      }

      v35 = v10;
      v36 = a1;
      v12 = v37;
      if ((a4 & 0xC000000000000001) != 0)
      {
        v13 = 0;
        do
        {
          MEMORY[0x245D470F0](v13, a4);
          v14 = [swift_unknownObjectRetain() identifier];
          v15 = sub_243AC2858();
          v17 = v16;
          swift_unknownObjectRelease_n();

          v37 = v12;
          v19 = *(v12 + 16);
          v18 = *(v12 + 24);
          if (v19 >= v18 >> 1)
          {
            sub_243A64F14((v18 > 1), v19 + 1, 1);
            v12 = v37;
          }

          ++v13;
          *(v12 + 16) = v19 + 1;
          v20 = v12 + 16 * v19;
          *(v20 + 32) = v15;
          *(v20 + 40) = v17;
        }

        while (v11 != v13);
      }

      else
      {
        v21 = (a4 + 32);
        do
        {
          v22 = *v21;
          v23 = [v22 identifier];
          v24 = sub_243AC2858();
          v26 = v25;

          v37 = v12;
          v28 = *(v12 + 16);
          v27 = *(v12 + 24);
          if (v28 >= v27 >> 1)
          {
            sub_243A64F14((v27 > 1), v28 + 1, 1);
            v12 = v37;
          }

          *(v12 + 16) = v28 + 1;
          v29 = v12 + 16 * v28;
          *(v29 + 32) = v24;
          *(v29 + 40) = v26;
          ++v21;
          --v11;
        }

        while (v11);
      }

      v10 = v35;
      a1 = v36;
    }

    v30 = sub_243AC2A98();
    (*(*(v30 - 8) + 56))(v10, 1, 1, v30);
    sub_243AC2A58();

    v31 = sub_243AC2A48();
    v32 = swift_allocObject();
    v33 = MEMORY[0x277D85700];
    *(v32 + 16) = v31;
    *(v32 + 24) = v33;
    *(v32 + 32) = v12;
    *(v32 + 40) = 5;
    *(v32 + 56) = 0;
    *(v32 + 64) = 0;
    *(v32 + 48) = a1;
    *(v32 + 72) = 1;
    sub_243A3306C(0, 0, v10, &unk_243AC5930, v32);
  }
}

void sub_243A38C9C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_completedRecommendationController;
  v5 = *(*(v1 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_completedRecommendationController) + 32);

  os_unfair_lock_lock((v5 + 24));
  sub_243A49948((v5 + 16), &v49);
  os_unfair_lock_unlock((v5 + 24));
  v6 = v49;

  if (!v6)
  {
    v19 = *(*(v1 + v4) + 24);
    MEMORY[0x28223BE20](v7);

    os_unfair_lock_lock((v19 + 24));
    sub_243A48768((v19 + 16), &v49);
    os_unfair_lock_unlock((v19 + 24));
    v20 = v49;

    if (!v20)
    {
      v37 = *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_eligibleRecommendations);
      MEMORY[0x28223BE20](v21);

      os_unfair_lock_lock((v37 + 24));
      sub_243A49930((v37 + 16));
      os_unfair_lock_unlock((v37 + 24));
LABEL_19:

      return;
    }

    v22 = [a1 identifier];
    v23 = sub_243AC2858();
    v25 = v24;

    v26 = sub_243A5B5E4(v23, v25);
    if (v26 == 6)
    {
      v38 = *(v2 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_rulesMap);

      v39 = [a1 identifier];
      sub_243AC2858();

      MEMORY[0x28223BE20](v40);
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);

      os_unfair_lock_lock((v38 + 24));
      sub_243A49894((v38 + 16), &v49);
      os_unfair_lock_unlock((v38 + 24));

      v31 = v49;

      if (!v31)
      {
LABEL_17:

        return;
      }

      v42 = [a1 storageRecoverable];
      v43 = [v42 integerValue];

      v44 = [v31 criteria];
      v45 = [v44 min];

      v46 = [v45 integerValue];
      if (v43 >= v46)
      {
LABEL_18:
        v47 = [v20 setStatus_];
        v48 = *(v2 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_eligibleRecommendations);
        MEMORY[0x28223BE20](v47);

        os_unfair_lock_lock((v48 + 24));
        sub_243A49930((v48 + 16));
        os_unfair_lock_unlock((v48 + 24));

        goto LABEL_19;
      }
    }

    else
    {
      if (v26 != 8)
      {
        goto LABEL_17;
      }

      v27 = *(v2 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_rulesMap);

      v28 = [a1 identifier];
      sub_243AC2858();

      MEMORY[0x28223BE20](v29);
      v30 = swift_getKeyPath();
      MEMORY[0x28223BE20](v30);

      os_unfair_lock_lock((v27 + 24));
      sub_243A49894((v27 + 16), &v49);
      os_unfair_lock_unlock((v27 + 24));

      v31 = v49;

      if (!v31)
      {
        goto LABEL_17;
      }

      v32 = [a1 storageRecoverable];
      v33 = [v32 integerValue];

      v34 = [v31 criteria];
      v35 = [v34 min];

      v36 = [v35 integerValue];
      if (v33 >= v36)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_17;
  }

  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v8 = sub_243AC1468();
  __swift_project_value_buffer(v8, qword_27EDA14A8);
  v9 = a1;
  v10 = sub_243AC1448();
  v11 = sub_243AC2B48();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v49 = v13;
    *v12 = 136315138;
    v14 = [v9 identifier];
    v15 = sub_243AC2858();
    v17 = v16;

    v18 = sub_243AB73D8(v15, v17, &v49);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_243A1B000, v10, v11, "%s was dismissed, it will not be shown in main list.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x245D47D20](v13, -1, -1);
    MEMORY[0x245D47D20](v12, -1, -1);
  }
}

id sub_243A39370@<X0>(id a1@<X1>, uint64_t *a2@<X0>, void *a3@<X8>)
{
  v5 = [a1 identifier];
  v6 = sub_243AC2858();
  v8 = v7;

  v9 = *a2;
  if (!*(v9 + 16))
  {

    goto LABEL_5;
  }

  v10 = sub_243A2DDC0(v6, v8);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v14 = *(*(v9 + 56) + 8 * v10);
  result = v14;
LABEL_6:
  *a3 = v14;
  return result;
}

unint64_t sub_243A39428@<X0>(unint64_t result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *result;
  if (*(*result + 16) && (result = sub_243A2DDC0(*a2, a2[1]), (v5 & 1) != 0))
  {
    v6 = *(*(v4 + 56) + 8 * result);
    result = v6;
  }

  else
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_243A3947C(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(id, uint64_t, uint64_t))
{
  v6 = *a3;
  v7 = a3[1];
  v8 = *a1;
  v9 = *a1;

  return a5(v8, v6, v7);
}

void sub_243A394D8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C38, &qword_243AC4C90);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v23 - v4;
  v6 = [*(v1 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationsActionCache) lastDismissedTimestamp_];
  if (v6)
  {
    v7 = v6;
    sub_243AC1248();

    v8 = sub_243AC1268();
    (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
    sub_243A2251C(v5, &qword_27ED98C38, &qword_243AC4C90);
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v9 = sub_243AC1468();
    __swift_project_value_buffer(v9, qword_27EDA14A8);
    v10 = a1;
    v11 = sub_243AC1448();
    v12 = sub_243AC2B78();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23[0] = v14;
      *v13 = 136315138;
      v15 = [v10 identifier];
      v16 = sub_243AC2858();
      v18 = v17;

      v19 = sub_243AB73D8(v16, v18, v23);

      *(v13 + 4) = v19;
      _os_log_impl(&dword_243A1B000, v11, v12, "%s was dismissed, it will not be shown in main list.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x245D47D20](v14, -1, -1);
      MEMORY[0x245D47D20](v13, -1, -1);
    }
  }

  else
  {
    v20 = sub_243AC1268();
    (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
    v21 = sub_243A2251C(v5, &qword_27ED98C38, &qword_243AC4C90);
    v22 = *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_eligibleRecommendations);
    MEMORY[0x28223BE20](v21);
    v23[-2] = a1;

    os_unfair_lock_lock((v22 + 24));
    sub_243A49930((v22 + 16));
    os_unfair_lock_unlock((v22 + 24));
  }
}

void sub_243A397F0(int a1, int a2)
{
  v3 = v2;
  v92 = a2;
  v93 = a1;
  v4 = sub_243AC2178();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v96 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_243AC21A8();
  v95 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v94 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationRules);

  os_unfair_lock_lock((v8 + 24));
  v9 = *(v8 + 16);
  if (!v9 || ([v9 copy], sub_243AC2C68(), swift_unknownObjectRelease(), sub_243A2CFF0(0, &qword_27ED98FB8, 0x277CFB1E0), (swift_dynamicCast() & 1) == 0))
  {
    v119 = 0;
  }

  os_unfair_lock_unlock((v8 + 24));
  v10 = v119;

  if (v10)
  {
    v88 = *(v3 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_account);
    v11 = [v10 ruleset];
    sub_243A2CFF0(0, &qword_27ED98FC0, 0x277CFB1E8);
    v12 = sub_243AC2998();

    v113 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_eligibleRecommendations;
    v13 = *(v3 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_eligibleRecommendations);

    v14 = sub_243A5C87C(v12, v13);

    v120 = MEMORY[0x277D84F90];
    v89 = v10;
    v15 = [v10 maxRecommendationsToShow];
    v100 = [v15 integerValue];

    v16 = sub_243AA9528();
    v90 = v5;
    if (v16)
    {
      if (qword_27ED98930 != -1)
      {
        swift_once();
      }

      v17 = qword_27ED9A410;
      v18 = sub_243AC2818();
      LODWORD(v17) = [v17 BOOLForKey_];

      if (v17)
      {
        if (qword_27ED98910 != -1)
        {
          swift_once();
        }

        v19 = sub_243AC1468();
        __swift_project_value_buffer(v19, qword_27EDA14A8);
        v20 = sub_243AC1448();
        v21 = sub_243AC2B48();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&dword_243A1B000, v20, v21, "Limit bypass has been requested. Ignoring server config.", v22, 2u);
          MEMORY[0x245D47D20](v22, -1, -1);
        }

        v100 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    if (v14 >> 62)
    {
      goto LABEL_66;
    }

    v23 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_16:
    v91 = v4;
    v24 = MEMORY[0x277D84F90];
    if (v23)
    {
      v98 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_ranksMap;
      v109 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_allSections;
      v110 = v14 & 0xC000000000000001;
      swift_beginAccess();
      v25 = 0;
      v103 = 0;
      v107 = 0;
      v104 = 0;
      v102 = v14 & 0xFFFFFFFFFFFFFF8;
      v101 = v14 + 32;
      v87 = "you title string.";
      *&v26 = 136315906;
      v86 = v26;
      v4 = v24;
      v99 = v14;
      v108 = v23;
      while (1)
      {
        if (v110)
        {
          v27 = MEMORY[0x245D470F0](v25, v14);
          v28 = __OFADD__(v25, 1);
          v29 = v25 + 1;
          if (v28)
          {
            goto LABEL_63;
          }
        }

        else
        {
          if (v25 >= *(v102 + 16))
          {
            goto LABEL_64;
          }

          v27 = *(v101 + 8 * v25);
          v28 = __OFADD__(v25, 1);
          v29 = v25 + 1;
          if (v28)
          {
LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            v23 = sub_243AC2DF8();
            goto LABEL_16;
          }
        }

        v112 = v29;
        v30 = v27;
        v31 = [v27 sectionID];
        v32 = sub_243AC2858();
        v34 = v33;

        v35 = *(v3 + v109);
        if (*(v35 + 16))
        {
          v111 = v30;

          v36 = sub_243A2DDC0(v32, v34);
          v38 = v37;

          if (v38)
          {
            v39 = *(*(v35 + 56) + 8 * v36);

            type metadata accessor for RecommendationSectionViewModel(0);
            v4 = swift_allocObject();
            aBlock[0] = v24;
            v40 = v39;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F40, &qword_243AC52E0);
            sub_243AC1688();
            v105 = v40;
            *(v4 + OBJC_IVAR____TtC21CloudRecommendationUI30RecommendationSectionViewModel_sectionModel) = v40;
            *(v4 + OBJC_IVAR____TtC21CloudRecommendationUI30RecommendationSectionViewModel_totalSectionScore) = 0;
            v41 = [v111 recommendationRules];
            sub_243A2CFF0(0, &qword_27ED98C40, 0x277CFB1D0);
            v42 = sub_243AC2998();

            v106 = v4;
            v114 = v42 & 0xFFFFFFFFFFFFFF8;
            if (v42 >> 62)
            {
              v116 = sub_243AC2DF8();
            }

            else
            {
              v116 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v14 = 0;
            v115 = v42 & 0xC000000000000001;
            v43 = v107;
            while (1)
            {
              v107 = v43;
              if (v14 == v116)
              {
LABEL_47:

                goto LABEL_48;
              }

              while (1)
              {
                if (v115)
                {
                  v44 = MEMORY[0x245D470F0](v14, v42);
                }

                else
                {
                  if (v14 >= *(v114 + 16))
                  {
                    goto LABEL_62;
                  }

                  v44 = *(v42 + 8 * v14 + 32);
                }

                v45 = v44;
                v46 = (v14 + 1);
                if (__OFADD__(v14, 1))
                {
                  __break(1u);
LABEL_62:
                  __break(1u);
                  goto LABEL_63;
                }

                v4 = v3;
                v47 = *(v3 + v113);

                v48 = [v45 recommendationID];
                v49 = sub_243AC2858();
                v51 = v50;

                MEMORY[0x28223BE20](v52);
                *(&v86 - 2) = v49;
                *(&v86 - 1) = v51;
                KeyPath = swift_getKeyPath();
                v54 = MEMORY[0x28223BE20](KeyPath);
                *(&v86 - 2) = sub_243A499B0;
                *(&v86 - 1) = v54;

                os_unfair_lock_lock((v47 + 24));
                sub_243A49894((v47 + 16), aBlock);
                os_unfair_lock_unlock((v47 + 24));

                v55 = aBlock[0];

                if (v55)
                {
                  break;
                }

                ++v14;
                v3 = v4;
                if (v46 == v116)
                {
                  goto LABEL_47;
                }
              }

              if (v104 == v100)
              {
                break;
              }

              v56 = v4;
              sub_243A3A91C(v55, v45);
              swift_getKeyPath();
              swift_getKeyPath();
              v57 = v55;
              v107 = sub_243AC1698();
              v59 = v58;
              MEMORY[0x245D46D30]();
              if (*((*v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_243AC29B8();
              }

              sub_243AC29D8();
              v107(aBlock, 0);

              v60 = [v57 identifier];
              v107 = sub_243AC2858();
              v62 = v61;

              v63 = v98;
              swift_beginAccess();
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v117 = *(v4 + v63);
              *(v4 + v63) = 0x8000000000000000;
              v65 = v103;
              sub_243A8B21C(v103, v107, v62, isUniquelyReferenced_nonNull_native);

              *(v56 + v63) = v117;
              swift_endAccess();

              v14 = v46;
              v28 = __OFADD__(v65, 1);
              v4 = v65 + 1;
              v43 = v4;
              v103 = v4;
              v104 = v4;
              v3 = v56;
              if (v28)
              {
                goto LABEL_65;
              }
            }

            if (qword_27ED98910 != -1)
            {
              swift_once();
            }

            v67 = sub_243AC1468();
            __swift_project_value_buffer(v67, qword_27EDA14A8);

            v68 = sub_243AC1448();
            v69 = sub_243AC2B48();
            if (os_log_type_enabled(v68, v69))
            {
              LODWORD(v115) = v69;
              v116 = v68;
              v70 = swift_slowAlloc();
              v71 = swift_slowAlloc();
              aBlock[0] = v71;
              *v70 = v86;
              *(v70 + 4) = sub_243AB73D8(0xD00000000000004FLL, v87 | 0x8000000000000000, aBlock);
              *(v70 + 12) = 2048;
              *(v70 + 14) = v107;
              *(v70 + 22) = 2048;
              v72 = *(v4 + v113);
              v73 = swift_getKeyPath();
              v74 = MEMORY[0x28223BE20](v73);
              *(&v86 - 2) = sub_243A4871C;
              *(&v86 - 1) = v74;

              os_unfair_lock_lock((v72 + 24));
              sub_243A48724((v72 + 16), &v117);
              os_unfair_lock_unlock((v72 + 24));

              v75 = v117;

              *(v70 + 24) = v75;

              *(v70 + 32) = 2048;
              v76 = v100;
              *(v70 + 34) = v100;
              v77 = v116;
              _os_log_impl(&dword_243A1B000, v116, v115, "%s Picked %ld out of max: %ld serverLimitOrBypassLimit:%ld", v70, 0x2Au);
              __swift_destroy_boxed_opaque_existential_1(v71);
              MEMORY[0x245D47D20](v71, -1, -1);
              MEMORY[0x245D47D20](v70, -1, -1);

              v104 = v76;
              v78 = v107;
              v79 = &v121;
            }

            else
            {

              v78 = v100;
              v79 = &v122;
            }

            *(v79 - 32) = v78;
            v3 = v4;
LABEL_48:
            v14 = v99;
            v24 = MEMORY[0x277D84F90];

            MEMORY[0x245D46D30](v66);
            if (*((v120 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v120 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_243AC29B8();
            }

            sub_243AC29D8();

            v4 = v120;
          }

          else
          {
          }
        }

        else
        {
        }

        v25 = v112;
        if (v112 == v108)
        {
          goto LABEL_59;
        }
      }
    }

    v4 = MEMORY[0x277D84F90];
LABEL_59:

    sub_243A2CFF0(0, &qword_27ED995D0, 0x277D85C78);
    v80 = sub_243AC2BC8();
    v81 = swift_allocObject();
    *(v81 + 16) = v3;
    *(v81 + 24) = v4;
    *(v81 + 32) = v92 & 1;
    *(v81 + 33) = v93 & 1;
    aBlock[4] = sub_243A486FC;
    aBlock[5] = v81;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243A71700;
    aBlock[3] = &block_descriptor_306;
    v82 = _Block_copy(aBlock);

    v83 = v94;
    sub_243AC2198();
    v117 = v24;
    sub_243A484E8(&qword_27ED99860, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F90, &qword_243AC5C20);
    sub_243A491E8(&qword_27ED99870, &qword_27ED98F90, &qword_243AC5C20, MEMORY[0x277D83970]);
    v84 = v96;
    v85 = v91;
    sub_243AC2C78();
    MEMORY[0x245D46FA0](0, v83, v84, v82);
    _Block_release(v82);

    (*(v90 + 8))(v84, v85);
    (*(v95 + 8))(v83, v97);

    sub_243A3AFF0();
  }
}

uint64_t sub_243A3A750(uint64_t a1, uint64_t a2)
{

  swift_getAtKeyPath();

  return v3;
}

void sub_243A3A7A0(uint64_t a1, unint64_t a2, char a3, char a4)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = a2;

  sub_243AC16B8();
  if (a3)
  {
    v7 = sub_243A41C58();
    swift_getKeyPath();
    swift_getKeyPath();
    v10 = v7;

    sub_243AC16B8();
  }

  if (a4)
  {
    v8 = sub_243A371C8(a2);
    LOBYTE(v10) = 0;
    sub_243A3C784(v8, &v10);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_243AC16A8();

    v9 = sub_243A371C8(v10);

    LOBYTE(v10) = 2;
    sub_243A3C784(v9, &v10);
  }

  sub_243A3BB28();
}

void sub_243A3A91C(void *a1, id a2)
{
  v4 = [a2 templates];
  v5 = sub_243AC2818();
  v6 = [v4 titleTemplateForKey_];

  if (v6)
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v7 = sub_243AC1468();
    __swift_project_value_buffer(v7, qword_27EDA14A8);
    v8 = sub_243AC1448();
    v9 = sub_243AC2B48();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_243A1B000, v8, v9, "Using server provided active copy for recommendation title.", v10, 2u);
      MEMORY[0x245D47D20](v10, -1, -1);
    }

    [a1 setTitle_];
  }

  v11 = [a2 templates];
  v12 = sub_243AC2818();
  v13 = [v11 subTitleTemplateForKey_];

  if (v13)
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v14 = sub_243AC1468();
    __swift_project_value_buffer(v14, qword_27EDA14A8);
    v15 = sub_243AC1448();
    v16 = sub_243AC2B48();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_243A1B000, v15, v16, "Using server provided active copy for recommendation subtitle.", v17, 2u);
      MEMORY[0x245D47D20](v17, -1, -1);
    }

    [a1 setSubTitle_];
  }

  v18 = [a2 templates];
  v19 = sub_243AC2818();
  v20 = [v18 messageTemplateForKey_];

  if (v20)
  {
    v21 = sub_243AC2858();
    v23 = v22;

    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v24 = sub_243AC1468();
    __swift_project_value_buffer(v24, qword_27EDA14A8);
    v25 = sub_243AC1448();
    v26 = sub_243AC2B48();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_243A1B000, v25, v26, "Using server provided active copy for recommendation message.", v27, 2u);
      MEMORY[0x245D47D20](v27, -1, -1);
    }

    v28 = [a1 storageRecoverable];
    v29 = [v28 integerValue];

    sub_243A59E9C(v21, v23, v29);

    v30 = sub_243AC2818();

    [a1 setMessage_];
  }

  v31 = [a1 actions];
  sub_243A2CFF0(0, &qword_27ED98B88, 0x277CFB1B8);
  v32 = sub_243AC2998();

  if (v32 >> 62)
  {
    v33 = sub_243AC2DF8();
  }

  else
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v33 == 1)
  {
    v34 = [a2 templates];
    v35 = sub_243AC2818();
    v44 = [v34 actionTitleTemplateForKey_];

    if (v44)
    {
      if (qword_27ED98910 != -1)
      {
        swift_once();
      }

      v36 = sub_243AC1468();
      __swift_project_value_buffer(v36, qword_27EDA14A8);
      v37 = sub_243AC1448();
      v38 = sub_243AC2B48();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_243A1B000, v37, v38, "Using server provided copy for recommendation action.", v39, 2u);
        MEMORY[0x245D47D20](v39, -1, -1);
      }

      v40 = [a1 actions];
      v41 = sub_243AC2998();

      if (v41 >> 62)
      {
        if (sub_243AC2DF8())
        {
          goto LABEL_29;
        }
      }

      else if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_29:
        if ((v41 & 0xC000000000000001) != 0)
        {
          v42 = MEMORY[0x245D470F0](0, v41);
        }

        else
        {
          if (!*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v42 = *(v41 + 32);
        }

        v43 = v42;

        [v43 setActionTitle_];

        goto LABEL_37;
      }

LABEL_37:
    }
  }
}

void sub_243A3AFF0()
{
  v1 = v0;
  v2 = sub_243AC2178();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_243AC21A8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_allSections;
  swift_beginAccess();
  v11 = *(v0 + v10);
  if (*(v11 + 16))
  {

    v12 = sub_243A2DDC0(0x4554454C504D4F43, 0xE900000000000044);
    if ((v13 & 1) == 0)
    {

      return;
    }

    v79 = v9;
    v80 = v7;
    v81 = v5;
    v82 = v6;
    v83 = v3;
    v84 = v2;
    v78 = *(*(v11 + 56) + 8 * v12);

    v85 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_completedRecommendationController;
    v14 = *(*(v1 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_completedRecommendationController) + 32);

    os_unfair_lock_lock((v14 + 24));
    v15 = *(v14 + 16);
    v16 = *(v15 + 16);
    v86 = v1;
    if (!v16)
    {
      v17 = MEMORY[0x277D84F90];
LABEL_8:
      os_unfair_lock_unlock((v14 + 24));

      if (v17 < 0 || (v17 & 0x4000000000000000) != 0)
      {
        goto LABEL_49;
      }

      for (i = *(v17 + 16); ; i = sub_243AC2DF8())
      {
        v21 = 0x278DE1000;
        if (i)
        {
          v22 = 0;
          v87 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_allRecommendations;
          v88 = v17;
          v89 = v17 & 0xC000000000000001;
          while (1)
          {
            if (v89)
            {
              v23 = MEMORY[0x245D470F0](v22, v17);
            }

            else
            {
              if (v22 >= *(v17 + 16))
              {
                goto LABEL_47;
              }

              v23 = *(v17 + 8 * v22 + 32);
            }

            v24 = v23;
            v25 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              break;
            }

            v26 = i;
            v27 = [v23 *(v21 + 4088)];
            v28 = sub_243AC2858();
            v30 = v29;

            v31 = sub_243A5B5E4(v28, v30);
            v32 = v31 > 0xEu || ((1 << v31) & 0x6378) == 0;
            if (!v32)
            {
              v33 = *(v1 + v87);

              v34 = [v24 *(v21 + 4088)];
              v35 = sub_243AC2858();
              v36 = v1;
              v38 = v37;

              MEMORY[0x28223BE20](v39);
              *(&v77 - 2) = v35;
              *(&v77 - 1) = v38;
              KeyPath = swift_getKeyPath();
              v41 = MEMORY[0x28223BE20](KeyPath);
              *(&v77 - 2) = sub_243A499B0;
              *(&v77 - 1) = v41;

              os_unfair_lock_lock((v33 + 24));
              sub_243A49894((v33 + 16), aBlock);
              os_unfair_lock_unlock((v33 + 24));

              v42 = aBlock[0];

              if (v42)
              {
                sub_243A47F14(v24, v42);
              }

              else
              {

                sub_243AA6570(v24);
              }

              v1 = v36;
              v21 = 0x278DE1000uLL;
            }

            i = v26;

            ++v22;
            v32 = v25 == v26;
            v17 = v88;
            if (v32)
            {
              goto LABEL_27;
            }
          }

          __break(1u);
        }

        else
        {
LABEL_27:

          v43 = *(*(v1 + v85) + 24);

          os_unfair_lock_lock((v43 + 24));
          v44 = *(v43 + 16);
          v45 = *(v44 + 16);
          v17 = MEMORY[0x277D84F90];
          if (v45)
          {
            v17 = sub_243AA6A84(*(v44 + 16), 0);
            v46 = sub_243AA8424(aBlock, (v17 + 32), v45, v44);
            v47 = aBlock[0];
            v89 = v91;

            sub_243A48354(v47);
            if (v46 != v45)
            {
              goto LABEL_54;
            }
          }

          v48 = 0x278DE1000;
          os_unfair_lock_unlock((v43 + 24));

          if (v17 < 0 || (v17 & 0x4000000000000000) != 0)
          {
            v1 = sub_243AC2DF8();
            v49 = 0x27ED98000;
            if (!v1)
            {
LABEL_51:

              v68 = v86;

              v69 = v78;
              v70 = sub_243AA4910(v78);

              sub_243A42F30();
              sub_243A2CFF0(0, &qword_27ED995D0, 0x277D85C78);
              v71 = sub_243AC2BC8();
              v72 = swift_allocObject();
              *(v72 + 16) = v68;
              *(v72 + 24) = v70;
              v91 = sub_243A485F4;
              v92 = v72;
              aBlock[0] = MEMORY[0x277D85DD0];
              aBlock[1] = 1107296256;
              aBlock[2] = sub_243A71700;
              aBlock[3] = &block_descriptor_292;
              v73 = _Block_copy(aBlock);

              v74 = v79;
              sub_243AC2198();
              aBlock[0] = MEMORY[0x277D84F90];
              sub_243A484E8(&qword_27ED99860, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F90, &qword_243AC5C20);
              sub_243A491E8(&qword_27ED99870, &qword_27ED98F90, &qword_243AC5C20, MEMORY[0x277D83970]);
              v75 = v81;
              v76 = v84;
              sub_243AC2C78();
              MEMORY[0x245D46FA0](0, v74, v75, v73);
              _Block_release(v73);

              (*(v83 + 8))(v75, v76);
              (*(v80 + 8))(v74, v82);
              return;
            }
          }

          else
          {
            v1 = *(v17 + 16);
            v49 = 0x27ED98000uLL;
            if (!v1)
            {
              goto LABEL_51;
            }
          }

          v50 = 0;
          v88 = *(v49 + 3672);
          v89 = v17 & 0xC000000000000001;
          while (1)
          {
            if (v89)
            {
              v51 = MEMORY[0x245D470F0](v50, v17);
            }

            else
            {
              if (v50 >= *(v17 + 16))
              {
                goto LABEL_48;
              }

              v51 = *(v17 + 8 * v50 + 32);
            }

            v52 = v51;
            v53 = v50 + 1;
            if (__OFADD__(v50, 1))
            {
              break;
            }

            v54 = [v51 *(v48 + 4088)];
            v55 = sub_243AC2858();
            v57 = v56;

            if ((sub_243A5B5E4(v55, v57) - 6) <= 2u)
            {
              v58 = *(v86 + v88);

              v59 = [v52 *(v48 + 4088)];
              v60 = sub_243AC2858();
              v62 = v61;

              MEMORY[0x28223BE20](v63);
              *(&v77 - 2) = v60;
              *(&v77 - 1) = v62;
              v64 = swift_getKeyPath();
              v65 = MEMORY[0x28223BE20](v64);
              *(&v77 - 2) = sub_243A485FC;
              *(&v77 - 1) = v65;

              os_unfair_lock_lock((v58 + 24));
              sub_243A49894((v58 + 16), aBlock);
              os_unfair_lock_unlock((v58 + 24));

              v66 = aBlock[0];

              if (v66)
              {
                v67 = [v66 actions];
                v48 = 0x278DE1000uLL;
                if (!v67)
                {
                  sub_243A2CFF0(0, &qword_27ED98B88, 0x277CFB1B8);
                  sub_243AC2998();
                  v48 = 0x278DE1000;
                  v67 = sub_243AC2978();
                }

                [v52 setActions_];
              }

              else
              {
                v48 = 0x278DE1000;
              }
            }

            ++v50;
            if (v53 == v1)
            {
              goto LABEL_51;
            }
          }
        }

        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        ;
      }
    }

    v17 = sub_243AA6A84(v16, 0);
    v18 = sub_243AA8424(aBlock, (v17 + 32), v16, v15);
    v19 = aBlock[0];

    sub_243A48354(v19);
    if (v18 == v16)
    {
      v1 = v86;
      goto LABEL_8;
    }

    __break(1u);
LABEL_54:
    __break(1u);
  }
}

uint64_t sub_243A3B9A8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98EE8, &unk_243AC8050);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_243AC51A0;
  *(v3 + 32) = a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_243AC16B8();
  sub_243AC2168();
  sub_243AC17F8();
}

uint64_t sub_243A3BA9C()
{
  type metadata accessor for RecommendationsController(0);
  sub_243A484E8(&qword_27ED98FB0, type metadata accessor for RecommendationsController, &protocol conformance descriptor for RecommendationsController);
  sub_243AC1668();
  sub_243AC1678();
}

void sub_243A3BB28()
{
  v1 = v0;
  type metadata accessor for RecommendationsController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = objc_opt_self();
  v4 = [v3 bundleForClass_];
  v26 = sub_243AC1188();
  v6 = v5;

  v7 = [v3 bundleForClass_];
  v8 = sub_243AC1188();
  v10 = v9;

  v11 = *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationRules);
  swift_getKeyPath();

  os_unfair_lock_lock((v11 + 24));
  sub_243A484A4((v11 + 16), &v27);
  os_unfair_lock_unlock((v11 + 24));

  v12 = v27;

  if (v12)
  {

    swift_getKeyPath();
    swift_getKeyPath();
    sub_243AC16A8();

    v13 = sub_243A371C8(v27);

    v14 = v12;
    v15 = sub_243A2ED8C(v12);
    v17 = v16;
    v18 = sub_243A2F704(v13, v12, *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_isBreakoutAvailable));
    v20 = v19;

    sub_243A484E8(&qword_27ED98FB0, type metadata accessor for RecommendationsController, &protocol conformance descriptor for RecommendationsController);
    sub_243AC1668();
    sub_243AC1678();

    swift_getKeyPath();
    swift_getKeyPath();
    v27 = v15;
    v28 = v17;

    sub_243AC16B8();
    sub_243AC1668();
    sub_243AC1678();

    swift_getKeyPath();
    swift_getKeyPath();
    v27 = v18;
    v28 = v20;

    sub_243AC16B8();
    if (v13 >> 62)
    {
      v21 = sub_243AC2DF8();
    }

    else
    {
      v21 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v27 = v21;

    sub_243AC16B8();
  }

  else
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v22 = sub_243AC1468();
    __swift_project_value_buffer(v22, qword_27EDA14A8);
    v23 = sub_243AC1448();
    v24 = sub_243AC2B58();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_243A1B000, v23, v24, "Could not get recommendationInfo from recommendation rules. Using default strings.", v25, 2u);
      MEMORY[0x245D47D20](v25, -1, -1);
    }

    sub_243A484E8(&qword_27ED98FB0, type metadata accessor for RecommendationsController, &protocol conformance descriptor for RecommendationsController);
    sub_243AC1668();
    sub_243AC1678();

    swift_getKeyPath();
    swift_getKeyPath();
    v27 = v26;
    v28 = v6;

    sub_243AC16B8();
    sub_243AC1668();
    sub_243AC1678();

    swift_getKeyPath();
    swift_getKeyPath();
    v27 = v8;
    v28 = v10;

    sub_243AC16B8();
  }
}

uint64_t sub_243A3C0CC(void *a1, uint64_t a2)
{
  v2 = a1;
  swift_getAtKeyPath();

  return v4;
}

uint64_t sub_243A3C118(void *a1, char *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18[-v7];
  v9 = *a2;
  v10 = sub_243AC2A98();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  sub_243AC2A58();

  v11 = a1;
  v12 = sub_243AC2A48();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v12;
  *(v13 + 24) = v14;
  *(v13 + 32) = v3;
  *(v13 + 40) = v11;
  *(v13 + 48) = v9;
  sub_243A3306C(0, 0, v8, &unk_243AC5210, v13);

  [*(v3 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationsActionCache) trackActionDismissedForRecommendation_];
  v15 = *(v3 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_eligibleRecommendations);
  v20 = v11;

  os_unfair_lock_lock(v15 + 6);
  sub_243A46E28(v15 + 16);
  os_unfair_lock_unlock(v15 + 6);

  v16 = *(*(v3 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_completedRecommendationController) + 32);
  v19 = v11;

  os_unfair_lock_lock((v16 + 24));
  sub_243A49930((v16 + 16));
  os_unfair_lock_unlock((v16 + 24));

  v21[0] = v9;
  return sub_243A3C4DC(v11, v21);
}

uint64_t sub_243A3C324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_243AC2A58();
  v5[4] = sub_243AC2A48();
  v7 = sub_243AC2A28();

  return MEMORY[0x2822009F8](sub_243A3C3BC, v7, v6);
}

uint64_t sub_243A3C3BC()
{
  v1 = *(v0 + 24);

  sub_243A3F20C(v1, 0.0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_243A3C42C(uint64_t *a1, id a2)
{
  v4 = [a2 identifier];
  v5 = sub_243AC2858();
  v7 = v6;

  v8 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *a1;
  sub_243A8B208(v8, v5, v7, isUniquelyReferenced_nonNull_native);

  *a1 = v11;
  return result;
}

uint64_t sub_243A3C4DC(void *a1, char *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v29 - v7;
  v9 = *a2;
  v10 = [a1 identifier];
  v11 = sub_243AC2858();
  v13 = v12;

  v14 = sub_243A5B5E4(v11, v13);
  if (v14 > 0xEu || ((1 << v14) & 0x6238) == 0)
  {
    v26 = *MEMORY[0x277CFB150];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98EE8, &unk_243AC8050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_243AC51A0;
    *(inited + 32) = a1;
    HIBYTE(v29) = v9;
    v28 = a1;
    sub_243A3D620(v26, inited, 0, &v29 + 7);
    swift_setDeallocating();
    swift_arrayDestroy();
  }

  else
  {
    sub_243A40E70(*MEMORY[0x277CFB150]);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED999C0, &unk_243AC4C40);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_243AC51B0;
  v17 = [a1 identifier];
  v18 = sub_243AC2858();
  v20 = v19;

  *(v16 + 32) = v18;
  *(v16 + 40) = v20;
  v21 = sub_243AC2A98();
  (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  sub_243AC2A58();

  v22 = sub_243AC2A48();
  v23 = swift_allocObject();
  v24 = MEMORY[0x277D85700];
  *(v23 + 16) = v22;
  *(v23 + 24) = v24;
  *(v23 + 32) = v16;
  *(v23 + 40) = 5;
  *(v23 + 56) = 0;
  *(v23 + 64) = 0;
  *(v23 + 48) = v3;
  *(v23 + 72) = 2049;
  sub_243A3306C(0, 0, v8, &unk_243AC58F0, v23);
}

uint64_t sub_243A3C784(unint64_t a1, char *a2)
{
  v3 = *a2;
  v19 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_243AC2DF8())
  {
    v17 = v3;
    v5 = 0;
    v3 = a1 & 0xF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x245D470F0](v5, a1);
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = [v6 identifier];
      v10 = sub_243AC2858();
      v12 = v11;

      v13 = sub_243A5B5E4(v10, v12);
      if (v13 > 8)
      {
        if (v13 != 9 && v13 != 13 && v13 != 14)
        {
LABEL_18:
          sub_243AC2D68();
          sub_243AC2D88();
          sub_243AC2D98();
          sub_243AC2D78();
          goto LABEL_5;
        }
      }

      else if (v13 != 3 && v13 != 4 && v13 != 5)
      {
        goto LABEL_18;
      }

LABEL_5:
      ++v5;
      if (v8 == i)
      {
        v14 = v19;
        v3 = v17;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  v14 = MEMORY[0x277D84F90];
LABEL_25:
  v15 = *MEMORY[0x277CFB158];
  v18 = v3;
  sub_243A3D620(v15, v14, 0, &v18);
}

void sub_243A3C96C(void *a1, char *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - v7;
  v9 = *a2;
  v10 = *MEMORY[0x277CFB118];
  v11 = [a1 identifier];
  v12 = sub_243AC2858();
  v14 = v13;

  v15 = sub_243A5B5E4(v12, v14);
  if (v15 > 0xEu || ((1 << v15) & 0x6238) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98EE8, &unk_243AC8050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_243AC51A0;
    *(inited + 32) = a1;
    HIBYTE(v28) = v9;
    v27 = a1;
    sub_243A3D620(v10, inited, 0, &v28 + 7);
    swift_setDeallocating();
    swift_arrayDestroy();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED999C0, &unk_243AC4C40);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_243AC51B0;
  v18 = [a1 identifier];
  v19 = sub_243AC2858();
  v21 = v20;

  *(v17 + 32) = v19;
  *(v17 + 40) = v21;
  v22 = sub_243AC2A98();
  (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
  sub_243AC2A58();

  v23 = sub_243AC2A48();
  v24 = swift_allocObject();
  v25 = MEMORY[0x277D85700];
  *(v24 + 16) = v23;
  *(v24 + 24) = v25;
  *(v24 + 32) = v17;
  *(v24 + 40) = v9;
  *(v24 + 56) = 0;
  *(v24 + 64) = 0;
  *(v24 + 48) = v3;
  *(v24 + 72) = 769;
  sub_243A3306C(0, 0, v8, &unk_243AC5220, v24);
}

uint64_t sub_243A3CC10(void *a1, uint64_t a2)
{
  v5 = [a1 category];
  v6 = sub_243AC2858();
  v8 = v7;

  if (v6 == sub_243AC2858() && v8 == v9)
  {
  }

  else
  {
    v11 = sub_243AC2EE8();

    if ((v11 & 1) == 0)
    {
      v13 = *(v2 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_allRecommendations);
      MEMORY[0x28223BE20](v12);

      os_unfair_lock_lock(v13 + 6);
      sub_243A49960(v13 + 16);
      os_unfair_lock_unlock(v13 + 6);

      v15 = *(v2 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_eligibleRecommendations);
      MEMORY[0x28223BE20](v14);

      os_unfair_lock_lock(v15 + 6);
      sub_243A49960(v15 + 16);
      os_unfair_lock_unlock(v15 + 6);
    }
  }

  v16 = [a1 storageRecoverable];
  v17 = [v16 integerValue];

  result = v17 - a2;
  if (!__OFSUB__(v17, a2))
  {
    v19 = sub_243AC2B08();
    [a1 setStorageRecoverable_];
    v20 = [a1 storageRecoverable];
    v21 = [v20 integerValue];

    if (v21 <= 0)
    {
      v23 = *(v2 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_allRecommendations);
    }

    else
    {
      v23 = *(v2 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_eligibleRecommendations);
    }

    MEMORY[0x28223BE20](v22);

    os_unfair_lock_lock(v23 + 6);
    sub_243A49960(v23 + 16);
    os_unfair_lock_unlock(v23 + 6);
  }

  __break(1u);
  return result;
}

uint64_t sub_243A3CEE0(int a1, id a2)
{
  v2 = [a2 identifier];
  v3 = sub_243AC2858();
  v5 = v4;

  return sub_243A8868C(0, v3, v5);
}

void sub_243A3CF58(void *a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v42 - v9;
  v11 = *a3;
  v12 = [a1 category];
  v13 = sub_243AC2858();
  v15 = v14;

  if (v13 == sub_243AC2858() && v15 == v16)
  {

    if (a2 > 0)
    {
LABEL_7:
      sub_243A3F20C(a1, 3.5);
      if (([a1 completed] & 1) == 0)
      {
        [*(v4 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationsActionCache) trackActionCompletedForRecommendation_];
      }

      v44 = v11;
      sub_243A3E00C(a1, a2, &v44);
      v19 = [a1 identifier];
      v20 = sub_243AC2858();
      v22 = v21;

      v23 = sub_243A5B5E4(v20, v22);
      if (v23 <= 0xE && ((1 << v23) & 0x6238) != 0)
      {
        v24 = *MEMORY[0x277CFB120];
        sub_243A40E70(v24);
      }

      else
      {
        v38 = *MEMORY[0x277CFB120];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98EE8, &unk_243AC8050);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_243AC51A0;
        *(inited + 32) = a1;
        v44 = v11;
        v40 = v38;
        v41 = a1;
        sub_243A3D620(v40, inited, a2, &v44);
      }

      sub_243A3CC10(a1, a2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED999C0, &unk_243AC4C40);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_243AC51B0;
      v26 = [a1 identifier];
      v27 = sub_243AC2858();
      v29 = v28;

      *(v25 + 32) = v27;
      *(v25 + 40) = v29;
      v30 = sub_243AC2A98();
      (*(*(v30 - 8) + 56))(v10, 1, 1, v30);
      sub_243AC2A58();

      v31 = sub_243AC2A48();
      v32 = swift_allocObject();
      v33 = MEMORY[0x277D85700];
      *(v32 + 16) = v31;
      *(v32 + 24) = v33;
      *(v32 + 32) = v25;
      *(v32 + 40) = v11;
      *(v32 + 48) = v4;
      *(v32 + 56) = 0;
      *(v32 + 64) = a2;
      *(v32 + 72) = 1280;
      sub_243A3306C(0, 0, v10, &unk_243AC5228, v32);

      return;
    }
  }

  else
  {
    v18 = sub_243AC2EE8();

    if ((v18 & 1) == 0 || a2 > 0)
    {
      goto LABEL_7;
    }
  }

  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v34 = sub_243AC1468();
  __swift_project_value_buffer(v34, qword_27EDA14A8);
  v43 = sub_243AC1448();
  v35 = sub_243AC2B58();
  if (os_log_type_enabled(v43, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_243A1B000, v43, v35, "No storage recovered from declutter recommendation. bailing.", v36, 2u);
    MEMORY[0x245D47D20](v36, -1, -1);
  }

  v37 = v43;
}

uint64_t sub_243A3D3EC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  v0 = sub_243A371C8(v14);

  v14 = MEMORY[0x277D84F90];
  if (v0 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_243AC2DF8())
  {
    v2 = 0;
    while (1)
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v3 = MEMORY[0x245D470F0](v2, v0);
      }

      else
      {
        if (v2 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v3 = *(v0 + 8 * v2 + 32);
      }

      v4 = v3;
      v5 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      v6 = [v3 identifier];
      v7 = sub_243AC2858();
      v9 = v8;

      v10 = sub_243A5B5E4(v7, v9);
      if (v10 > 8)
      {
        if (v10 != 9 && v10 != 13 && v10 != 14)
        {
LABEL_18:
          sub_243AC2D68();
          sub_243AC2D88();
          sub_243AC2D98();
          sub_243AC2D78();
          goto LABEL_5;
        }
      }

      else if (v10 != 3 && v10 != 4 && v10 != 5)
      {
        goto LABEL_18;
      }

LABEL_5:
      ++v2;
      if (v5 == i)
      {
        v11 = v14;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  v11 = MEMORY[0x277D84F90];
LABEL_25:

  v12 = *MEMORY[0x277CFB158];
  LOBYTE(v14) = 0;
  sub_243A3D620(v12, v11, 0, &v14);
}

void sub_243A3D620(void *a1, unint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v5 = v4;
  v9 = *a4;
  v10 = *(v4 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationRules);

  os_unfair_lock_lock((v10 + 24));
  v11 = *(v10 + 16);
  if (!v11 || ([v11 copy], sub_243AC2C68(), swift_unknownObjectRelease(), sub_243A2CFF0(0, &qword_27ED98FB8, 0x277CFB1E0), (swift_dynamicCast() & 1) == 0))
  {
    v47 = 0;
  }

  os_unfair_lock_unlock((v10 + 24));
  v12 = v47;

  if (!v47)
  {
    if (qword_27ED98918 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

  v44 = a3;
  if (a2 >> 62)
  {
    v13 = sub_243AC2DF8();
    v45 = a1;
    if (v13)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v13 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v45 = a1;
    if (v13)
    {
LABEL_7:
      aBlock[0] = MEMORY[0x277D84F90];
      sub_243A64F14(0, v13 & ~(v13 >> 63), 0);
      if ((v13 & 0x8000000000000000) == 0)
      {
        v43 = v9;
        v14 = 0;
        v15 = aBlock[0];
        do
        {
          if ((a2 & 0xC000000000000001) != 0)
          {
            v16 = MEMORY[0x245D470F0](v14, a2);
          }

          else
          {
            v16 = *(a2 + 8 * v14 + 32);
          }

          v17 = v16;
          v18 = [v16 identifier];
          v19 = sub_243AC2858();
          v21 = v20;

          aBlock[0] = v15;
          v23 = *(v15 + 16);
          v22 = *(v15 + 24);
          if (v23 >= v22 >> 1)
          {
            sub_243A64F14((v22 > 1), v23 + 1, 1);
            v15 = aBlock[0];
          }

          ++v14;
          *(v15 + 16) = v23 + 1;
          v24 = v15 + 16 * v23;
          *(v24 + 32) = v19;
          *(v24 + 40) = v21;
        }

        while (v13 != v14);
        v9 = v43;
        goto LABEL_21;
      }

      __break(1u);
LABEL_35:
      swift_once();
LABEL_17:
      v25 = sub_243AC1468();
      __swift_project_value_buffer(v25, qword_27EDA14C0);
      v26 = sub_243AC1448();
      v27 = sub_243AC2B58();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_243A1B000, v26, v27, "Rule Configuration is unavailable bailing.", v28, 2u);
        MEMORY[0x245D47D20](v28, -1, -1);
      }

      goto LABEL_33;
    }
  }

  v15 = MEMORY[0x277D84F90];
  if (*(MEMORY[0x277D84F90] + 16))
  {
LABEL_21:
    v26 = [objc_allocWithZone(MEMORY[0x277CFB1C8]) initWithAccount_];
    if (v9 == 5)
    {

      if (qword_27ED98918 != -1)
      {
        swift_once();
      }

      v29 = sub_243AC1468();
      __swift_project_value_buffer(v29, qword_27EDA14C0);
      v30 = sub_243AC1448();
      v31 = sub_243AC2B48();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_243A1B000, v30, v31, "Context needed to send recommendation server status. Bailing", v32, 2u);
        MEMORY[0x245D47D20](v32, -1, -1);
      }
    }

    else
    {
      v33 = sub_243AC2978();
      v34 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v35 = sub_243AC2818();

      v36 = swift_allocObject();
      v36[2] = v45;
      v36[3] = v15;
      v36[4] = v5;
      aBlock[4] = sub_243A48F80;
      aBlock[5] = v36;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_243AB1A78;
      aBlock[3] = &block_descriptor_393;
      v37 = _Block_copy(aBlock);
      v38 = v45;

      [v26 sendRecommendationStatus:v38 configuration:v12 recommendationIdentifiers:v33 storageRecovered:v34 context:v35 completion:v37];
      _Block_release(v37);

      v26 = v35;
    }

    goto LABEL_33;
  }

  if (qword_27ED98918 != -1)
  {
    swift_once();
  }

  v39 = sub_243AC1468();
  __swift_project_value_buffer(v39, qword_27EDA14C0);
  v40 = sub_243AC1448();
  v41 = sub_243AC2B48();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_243A1B000, v40, v41, "No recommendations in the list to notify server about, bailing.", v42, 2u);
    MEMORY[0x245D47D20](v42, -1, -1);
  }

  v26 = v12;
LABEL_33:
}

void sub_243A3DC80(void *a1, void *a2, uint64_t a3)
{
  v29 = a2;
  type metadata accessor for CERecommendationStatus(0);
  v6 = a2;
  v7 = sub_243AC2878();
  v9 = v8;
  if (a1)
  {
    if (qword_27ED98918 != -1)
    {
      swift_once();
    }

    v10 = sub_243AC1468();
    __swift_project_value_buffer(v10, qword_27EDA14C0);

    v11 = a1;
    v12 = sub_243AC1448();
    v13 = sub_243AC2B58();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v29 = v16;
      *v14 = 136315394;
      v17 = sub_243AB73D8(v7, v9, &v29);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2112;
      v18 = a1;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v19;
      *v15 = v19;
      _os_log_impl(&dword_243A1B000, v12, v13, "Failed to send status %s to server %@", v14, 0x16u);
      sub_243A2251C(v15, &qword_27ED98BF8, &unk_243AC6150);
      MEMORY[0x245D47D20](v15, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x245D47D20](v16, -1, -1);
      MEMORY[0x245D47D20](v14, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_27ED98918 != -1)
    {
      swift_once();
    }

    v20 = sub_243AC1468();
    __swift_project_value_buffer(v20, qword_27EDA14C0);

    v21 = sub_243AC1448();
    v22 = sub_243AC2B48();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v29 = v24;
      *v23 = 136315394;
      v25 = sub_243AB73D8(v7, v9, &v29);

      *(v23 + 4) = v25;
      *(v23 + 12) = 2080;
      v26 = MEMORY[0x245D46D70](a3, MEMORY[0x277D837D0]);
      v28 = sub_243AB73D8(v26, v27, &v29);

      *(v23 + 14) = v28;
      _os_log_impl(&dword_243A1B000, v21, v22, "Status %s sent for recommendation %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D47D20](v24, -1, -1);
      MEMORY[0x245D47D20](v23, -1, -1);
    }

    else
    {
    }

    sub_243A40E70(v6);
  }
}

void sub_243A3E00C(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v80 - v9;
  v11 = *a3;
  v12 = *&v3[OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_rulesMap];

  v13 = [a1 identifier];
  v14 = sub_243AC2858();
  v16 = v15;

  v96 = v14;
  v97 = v16;
  KeyPath = swift_getKeyPath();
  v94 = sub_243A499B0;
  v95 = KeyPath;

  os_unfair_lock_lock((v12 + 24));
  sub_243A49894((v12 + 16), v99);
  os_unfair_lock_unlock((v12 + 24));

  v18 = v99[0];

  if (v18)
  {
    [a1 copy];
    sub_243AC2C68();
    swift_unknownObjectRelease();
    sub_243A2CFF0(0, &qword_27ED98F70, 0x277CFB1B0);
    swift_dynamicCast();
    v19 = v98;
    v85 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_completedRecommendationController;
    v86 = v18;

    sub_243AA8578(v19, v18, 0x6574656C706D6F63, 0xE900000000000064);

    sub_243A2CFF0(0, &qword_27ED98B88, 0x277CFB1B8);
    v20 = sub_243AC2978();
    v91 = v19;
    [v19 setActions_];

    if (v11 == 2)
    {
LABEL_41:
    }

    else
    {
      v32 = sub_243AC2EE8();

      if ((v32 & 1) == 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_243AC16A8();

        v33 = v99[0];
        if (v99[0] >> 62)
        {
          v34 = sub_243AC2DF8();
          if (v34)
          {
LABEL_12:
            v81 = v18;
            v18 = a1;
            v82 = v4;
            v83 = a2;
            v84 = v10;
            v35 = 0;
            v89 = v34;
            v90 = v33 & 0xC000000000000001;
            v87 = v33 + 32;
            v88 = v33 & 0xFFFFFFFFFFFFFF8;
            v92 = v33;
            do
            {
              if (v90)
              {
                MEMORY[0x245D470F0](v35, v33);
                v36 = __OFADD__(v35, 1);
                v37 = v35 + 1;
                if (v36)
                {
                  goto LABEL_80;
                }
              }

              else
              {
                if (v35 >= *(v88 + 16))
                {
                  goto LABEL_84;
                }

                v36 = __OFADD__(v35, 1);
                v37 = v35 + 1;
                if (v36)
                {
                  goto LABEL_80;
                }
              }

              swift_getKeyPath();
              swift_getKeyPath();
              sub_243AC16A8();

              v93 = v37;
              if (v99[0] >> 62)
              {
                v38 = sub_243AC2DF8();

                if (v38 < 0)
                {
                  __break(1u);
                  goto LABEL_41;
                }
              }

              else
              {
                v38 = *((v99[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              a1 = -v38;
              v39 = 4;
              while (1)
              {
                v33 = v39;
                if (a1 + v39 == 4)
                {
                  goto LABEL_13;
                }

                v41 = v39 - 4;
                if (__OFADD__(v39 - 4, 1))
                {
LABEL_77:
                  __break(1u);
LABEL_78:
                  __break(1u);
LABEL_79:
                  while (2)
                  {
                    __break(1u);
LABEL_80:
                    __break(1u);
LABEL_81:
                    __break(1u);
LABEL_82:
                    __break(1u);
                    while (1)
                    {
                      __break(1u);
LABEL_84:
                      __break(1u);
LABEL_85:
                      v54 = sub_243AC2DF8();
                      if (!v54)
                      {
                        goto LABEL_74;
                      }

LABEL_44:
                      v81 = v18;
                      v18 = a1;
                      v82 = v4;
                      v83 = a2;
                      v84 = v10;
                      v55 = 0;
                      v89 = v54;
                      v90 = v33 & 0xC000000000000001;
                      v87 = v33 + 32;
                      v88 = v33 & 0xFFFFFFFFFFFFFF8;
                      v92 = v33;
LABEL_46:
                      if (v90)
                      {
                        break;
                      }

                      if (v55 < *(v88 + 16))
                      {

                        v36 = __OFADD__(v55, 1);
                        v56 = v55 + 1;
                        if (v36)
                        {
                          goto LABEL_79;
                        }

                        goto LABEL_52;
                      }
                    }

                    MEMORY[0x245D470F0](v55, v33);
                    v36 = __OFADD__(v55, 1);
                    v56 = v55 + 1;
                    if (v36)
                    {
                      continue;
                    }

                    break;
                  }

LABEL_52:
                  swift_getKeyPath();
                  swift_getKeyPath();
                  sub_243AC16A8();

                  v93 = v56;
                  if (v99[0] >> 62)
                  {
                    v57 = sub_243AC2DF8();

                    if (v57 < 0)
                    {
                      __break(1u);
                      goto LABEL_73;
                    }
                  }

                  else
                  {
                    v57 = *((v99[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  a1 = -v57;
                  v58 = 4;
                  while (1)
                  {
                    v33 = v58;
                    if (a1 + v58 == 4)
                    {
                      goto LABEL_45;
                    }

                    v60 = v58 - 4;
                    if (__OFADD__(v58 - 4, 1))
                    {
                      __break(1u);
LABEL_76:
                      __break(1u);
                      goto LABEL_77;
                    }

                    swift_getKeyPath();
                    swift_getKeyPath();
                    sub_243AC16A8();

                    if ((v99[0] & 0xC000000000000001) != 0)
                    {
                      v61 = MEMORY[0x245D470F0](v33 - 4, v99[0]);
                    }

                    else
                    {
                      if (v60 >= *((v99[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_76;
                      }

                      v61 = *(v99[0] + 8 * v33);
                    }

                    v62 = v61;

                    v63 = [v62 identifier];

                    v10 = sub_243AC2858();
                    v65 = v64;

                    v4 = [v18 identifier];
                    v66 = sub_243AC2858();
                    a2 = v67;

                    if (v10 == v66 && v65 == a2)
                    {
                      break;
                    }

                    v59 = sub_243AC2EE8();

                    v58 = v33 + 1;
                    if (v59)
                    {
                      goto LABEL_65;
                    }
                  }

LABEL_65:
                  swift_getKeyPath();
                  a2 = swift_getKeyPath();
                  a1 = v91;
                  v4 = sub_243AC1698();
                  v69 = v68;
                  v10 = *v68;
                  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
                  *v69 = v10;
                  if (!isUniquelyReferenced_nonNull_bridgeObject || v10 < 0 || (v10 & 0x4000000000000000) != 0)
                  {
                    v10 = sub_243A4CD70(v10);
                    *v69 = v10;
                  }

                  v71 = v10 & 0xFFFFFFFFFFFFFF8;
                  if (v60 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    v72 = *(v71 + 8 * v33);
                    *(v71 + 8 * v33) = a1;

                    (v4)(v99, 0);

LABEL_45:

                    v33 = v92;
                    v55 = v93;
                    if (v93 == v89)
                    {
                      goto LABEL_73;
                    }

                    goto LABEL_46;
                  }

                  goto LABEL_81;
                }

                swift_getKeyPath();
                swift_getKeyPath();
                sub_243AC16A8();

                if ((v99[0] & 0xC000000000000001) != 0)
                {
                  v42 = MEMORY[0x245D470F0](v33 - 4, v99[0]);
                }

                else
                {
                  if (v41 >= *((v99[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_78;
                  }

                  v42 = *(v99[0] + 8 * v33);
                }

                v43 = v42;

                v44 = [v43 identifier];

                v10 = sub_243AC2858();
                v46 = v45;

                v4 = [v18 identifier];
                v47 = sub_243AC2858();
                a2 = v48;

                if (v10 == v47 && v46 == a2)
                {
                  break;
                }

                v40 = sub_243AC2EE8();

                v39 = v33 + 1;
                if (v40)
                {
                  goto LABEL_33;
                }
              }

LABEL_33:
              swift_getKeyPath();
              a2 = swift_getKeyPath();
              a1 = v91;
              v4 = sub_243AC1698();
              v50 = v49;
              v10 = *v49;
              v51 = swift_isUniquelyReferenced_nonNull_bridgeObject();
              *v50 = v10;
              if (!v51 || v10 < 0 || (v10 & 0x4000000000000000) != 0)
              {
                v10 = sub_243A4CD70(v10);
                *v50 = v10;
              }

              v52 = v10 & 0xFFFFFFFFFFFFFF8;
              if (v41 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_82;
              }

              v53 = *(v52 + 8 * v33);
              *(v52 + 8 * v33) = a1;

              (v4)(v99, 0);

LABEL_13:

              v33 = v92;
              v35 = v93;
            }

            while (v93 != v89);
LABEL_73:
            v10 = v84;
            a2 = v83;
            v4 = v82;
            v18 = v81;
          }
        }

        else
        {
          v34 = *((v99[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v34)
          {
            goto LABEL_12;
          }
        }

LABEL_74:

        v73 = *&v4[v85];
        v74 = swift_allocObject();
        swift_weakInit();
        v75 = swift_allocObject();
        v76 = v91;
        *(v75 + 16) = v74;
        *(v75 + 24) = v76;
        v77 = sub_243AC2A98();
        (*(*(v77 - 8) + 56))(v10, 1, 1, v77);
        v78 = swift_allocObject();
        v78[2] = 0;
        v78[3] = 0;
        v78[4] = v76;
        v78[5] = v73;
        v78[6] = v18;
        v78[7] = a2;
        v78[8] = sub_243A48CA4;
        v78[9] = v75;
        v79 = v76;

        sub_243A3306C(0, 0, v10, &unk_243AC58C8, v78);

        return;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_243AC16A8();

    v33 = v99[0];
    if (v99[0] >> 62)
    {
      goto LABEL_85;
    }

    v54 = *((v99[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v54)
    {
      goto LABEL_44;
    }

    goto LABEL_74;
  }

  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v21 = sub_243AC1468();
  __swift_project_value_buffer(v21, qword_27EDA14A8);
  v22 = a1;
  v23 = sub_243AC1448();
  v24 = sub_243AC2B58();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v99[0] = v26;
    *v25 = 136315394;
    *(v25 + 4) = sub_243AB73D8(0xD000000000000035, 0x8000000243ACC9F0, v99);
    *(v25 + 12) = 2080;
    v27 = [v22 identifier];
    v28 = sub_243AC2858();
    v30 = v29;

    v31 = sub_243AB73D8(v28, v30, v99);

    *(v25 + 14) = v31;
    _os_log_impl(&dword_243A1B000, v23, v24, "%s Rule not found for %s. Bailing.", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D47D20](v26, -1, -1);
    MEMORY[0x245D47D20](v25, -1, -1);
  }
}

uint64_t sub_243A3ED90(uint64_t a1, void *a2)
{
  v4 = sub_243AC2178();
  v14 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_243AC21A8();
  v7 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    [a2 setStatus_];
    [a2 setCompleted_];
  }

  sub_243A2CFF0(0, &qword_27ED995D0, 0x277D85C78);
  v10 = sub_243AC2BC8();
  aBlock[4] = sub_243A48DF8;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243A71700;
  aBlock[3] = &block_descriptor_369;
  v11 = _Block_copy(aBlock);

  sub_243AC2198();
  v15 = MEMORY[0x277D84F90];
  sub_243A484E8(&qword_27ED99860, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F90, &qword_243AC5C20);
  sub_243A491E8(&qword_27ED99870, &qword_27ED98F90, &qword_243AC5C20, MEMORY[0x277D83970]);
  sub_243AC2C78();
  MEMORY[0x245D46FA0](0, v9, v6, v11);
  _Block_release(v11);

  (*(v14 + 8))(v6, v4);
  (*(v7 + 8))(v9, v13);
}

uint64_t sub_243A3F0C4(uint64_t a1)
{
  MEMORY[0x245D46520](0.5, 1.0, 0.0);
  sub_243AC17F8();
}

uint64_t sub_243A3F148(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for RecommendationsController(0);
    sub_243A484E8(&qword_27ED98FB0, type metadata accessor for RecommendationsController, &protocol conformance descriptor for RecommendationsController);
    sub_243AC1668();

    sub_243AC1678();
  }

  return result;
}

uint64_t sub_243A3F20C(void *a1, double a2)
{
  v3 = sub_243AC2178();
  v27 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_243AC21A8();
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_243AC21C8();
  v24 = v9;
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - v14;
  sub_243A2CFF0(0, &qword_27ED995D0, 0x277D85C78);
  v22 = sub_243AC2BC8();
  sub_243AC21B8();
  sub_243AC21D8();
  v23 = *(v10 + 8);
  v23(v13, v9);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = a1;
  aBlock[4] = sub_243A48E5C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243A71700;
  aBlock[3] = &block_descriptor_376;
  v18 = _Block_copy(aBlock);
  v19 = a1;

  sub_243AC2198();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_243A484E8(&qword_27ED99860, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F90, &qword_243AC5C20);
  sub_243A491E8(&qword_27ED99870, &qword_27ED98F90, &qword_243AC5C20, MEMORY[0x277D83970]);
  sub_243AC2C78();
  v20 = v22;
  MEMORY[0x245D46F80](v15, v8, v5, v18);
  _Block_release(v18);

  (*(v27 + 8))(v5, v3);
  (*(v25 + 8))(v8, v26);
  return (v23)(v15, v24);
}

uint64_t sub_243A3F614(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = sub_243A3F7C4(a2);

    if (v4)
    {
      MEMORY[0x245D46520](result, 0.5, 1.0, 0.0);
      sub_243AC17F8();
    }
  }

  return result;
}

uint64_t sub_243A3F6D0(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    type metadata accessor for RecommendationsController(0);
    sub_243A484E8(&qword_27ED98FB0, type metadata accessor for RecommendationsController, &protocol conformance descriptor for RecommendationsController);
    sub_243AC1668();

    sub_243AC1678();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_userIsCompletingRecommendation) = 0;
  }

  return result;
}

uint64_t sub_243A3F7C4(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  if (v17 >> 62)
  {
    result = sub_243AC2DF8();
    v3 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  v3 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v3 < 1)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    return result;
  }

  v4 = 0;
  do
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      MEMORY[0x245D470F0](v4);
    }

    else
    {
    }

    ++v4;
    v5 = [a1 identifier];
    v6 = sub_243AC2858();
    v8 = v7;

    v9 = sub_243A4C808(v6, v8);
  }

  while (v3 != v4);
LABEL_11:

  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  if (v17 >> 62)
  {
    result = sub_243AC2DF8();
    v10 = result;
    if (result)
    {
LABEL_13:
      if (v10 >= 1)
      {
        LOBYTE(v11) = 0;
        v12 = 0;
        while (1)
        {
          if ((v17 & 0xC000000000000001) != 0)
          {
            MEMORY[0x245D470F0](v12);
            if (!v11)
            {
              goto LABEL_21;
            }
          }

          else
          {

            if (!v11)
            {
LABEL_21:
              v13 = [a1 identifier];
              v14 = sub_243AC2858();
              v16 = v15;

              v11 = sub_243A4C808(v14, v16);

              goto LABEL_16;
            }
          }

          v11 = 1;
LABEL_16:
          ++v12;

          if (v10 == v12)
          {
            goto LABEL_24;
          }
        }
      }

      goto LABEL_26;
    }
  }

  else
  {
    v10 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_13;
    }
  }

  v11 = 0;
LABEL_24:

  return v9 || v11;
}

uint64_t sub_243A3FA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 209) = v13;
  *(v8 + 168) = a7;
  *(v8 + 176) = a8;
  *(v8 + 208) = a5;
  *(v8 + 152) = a4;
  *(v8 + 160) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = swift_task_alloc();
  sub_243AC2A58();
  *(v8 + 200) = sub_243AC2A48();
  v10 = sub_243AC2A28();

  return MEMORY[0x2822009F8](sub_243A3FB50, v10, v9);
}

char *sub_243A3FB50()
{
  v67 = v0;
  v1 = *(v0 + 160);
  v2 = *(*(v0 + 152) + 16);
  v62 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_rulesMap;
  v58 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_ranksMap;
  swift_beginAccess();
  v60 = v2;
  if (v2)
  {
    v3 = 0;
    v59 = *(v0 + 168);
    v61 = *(v0 + 152) + 32;
    v57 = v1;
    do
    {
      v5 = *(v0 + 208);
      v6 = (v61 + 16 * v3);
      v8 = *v6;
      v7 = v6[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98FD0, &unk_243AC58D0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_243AC51B0;
      *(inited + 32) = 0x696669746E656469;
      *(inited + 40) = 0xEA00000000007265;

      *(inited + 48) = sub_243AC2818();
      v10 = sub_243A2E9D8(inited);
      swift_setDeallocating();
      sub_243A2251C(inited + 32, &qword_27ED98FD8, &unk_243AC82C0);
      v65 = v3;
      if (v5 <= 4)
      {
        v11 = sub_243AC2818();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v66 = v10;
        sub_243A8B530(v11, 0x747865746E6F63, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
        v10 = v66;
      }

      v13 = *(v1 + v62);
      v14 = swift_task_alloc();
      *v14 = v8;
      v14[1] = v7;
      KeyPath = swift_getKeyPath();

      v16 = swift_task_alloc();
      *(v16 + 16) = sub_243A499B0;
      *(v16 + 24) = KeyPath;

      os_unfair_lock_lock((v13 + 24));
      sub_243A49894((v13 + 16), &v66);
      os_unfair_lock_unlock((v13 + 24));

      v17 = v66;

      if (v17)
      {
        v18 = [v17 rankingHint];
        v19 = swift_isUniquelyReferenced_nonNull_native();
        v66 = v10;
        sub_243A8B530(v18, 0x65726F6373, 0xE500000000000000, v19);

        v10 = v66;
      }

      if (v59)
      {
        v20 = v59;
        result = [v20 actionType];
        if (!result)
        {
LABEL_54:
          __break(1u);
          return result;
        }

        v22 = result;
        v23 = swift_isUniquelyReferenced_nonNull_native();
        v66 = v10;
        sub_243A8B530(v22, 0x79546E6F69746361, 0xEA00000000006570, v23);

        v10 = v66;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_243AC16A8();

      v24 = *(v0 + 128);
      if (v24 >> 62)
      {
        v42 = sub_243AC2DF8();

        if (!v42)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (!v25)
        {
          goto LABEL_37;
        }
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_243AC16A8();

      v26 = *(v0 + 136);
      v64 = v10;
      v63 = v7;
      if (v26 >> 62)
      {
        result = sub_243AC2DF8();
        v27 = result;
      }

      else
      {
        v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v28 = 0;
      v29 = 0;
      while (v27 != v28)
      {
        if ((v26 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x245D470F0](v28, v26);
          if (__OFADD__(v28, 1))
          {
            goto LABEL_51;
          }
        }

        else
        {
          if (v28 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_52;
          }

          if (__OFADD__(v28, 1))
          {
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
            goto LABEL_54;
          }
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_243AC16A8();

        v30 = *(v0 + 144);
        if (v30 >> 62)
        {
          v31 = sub_243AC2DF8();
        }

        else
        {
          v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        ++v28;
        v32 = __OFADD__(v29, v31);
        v29 += v31;
        if (v32)
        {
          goto LABEL_53;
        }
      }

      v33 = sub_243AC2B08();
      v34 = swift_isUniquelyReferenced_nonNull_native();
      v66 = v64;
      sub_243A8B530(v33, 0xD000000000000014, 0x8000000243ACCA30, v34);
      v10 = v66;
      v1 = v57;
      if (*(*(v57 + v58) + 16))
      {

        sub_243A2DDC0(v8, v63);
        v36 = v35;

        if (v36)
        {

          v37 = sub_243AC2B08();
          v38 = swift_isUniquelyReferenced_nonNull_native();
          v66 = v10;
          sub_243A8B530(v37, 1802396018, 0xE400000000000000, v38);
          v10 = v66;
          if (*(v0 + 209))
          {
            goto LABEL_38;
          }

          goto LABEL_33;
        }
      }

LABEL_37:

      if (*(v0 + 209))
      {
LABEL_38:
        v41 = v10;
        goto LABEL_39;
      }

LABEL_33:
      v39 = sub_243AC2B08();
      v40 = swift_isUniquelyReferenced_nonNull_native();
      v66 = v10;
      sub_243A8B530(v39, 0xD000000000000010, 0x8000000243ACBE00, v40);
      v41 = v66;
LABEL_39:
      v43 = *(v0 + 184);
      v44 = *(v0 + 192);
      v45 = *(v0 + 210);
      sub_243AC2A68();
      v46 = sub_243AC2A98();
      v47 = *(v46 - 8);
      (*(v47 + 56))(v44, 0, 1, v46);
      v48 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v49 = swift_allocObject();
      *(v49 + 16) = 0;
      *(v49 + 24) = 0;
      *(v49 + 32) = v48;
      *(v49 + 40) = v41;
      *(v49 + 48) = v45;
      sub_243A47650(v44, v43);
      LODWORD(v44) = (*(v47 + 48))(v43, 1, v46);

      v50 = *(v0 + 184);
      if (v44 == 1)
      {
        sub_243A2251C(*(v0 + 184), &qword_27ED98998, &qword_243AC4FD0);
      }

      else
      {
        sub_243AC2A88();
        (*(v47 + 8))(v50, v46);
      }

      v51 = *(v49 + 16);
      swift_unknownObjectRetain();

      if (v51)
      {
        swift_getObjectType();
        v52 = sub_243AC2A28();
        v54 = v53;
        swift_unknownObjectRelease();
      }

      else
      {
        v52 = 0;
        v54 = 0;
      }

      v55 = swift_allocObject();
      *(v55 + 16) = &unk_243AC58E0;
      *(v55 + 24) = v49;
      if (v54 | v52)
      {
        *(v0 + 72) = 0;
        *(v0 + 80) = 0;
        *(v0 + 88) = v52;
        *(v0 + 96) = v54;
      }

      v3 = v65 + 1;
      v4 = *(v0 + 192);
      swift_task_create();
      sub_243A2251C(v4, &qword_27ED98998, &qword_243AC4FD0);
    }

    while (v65 + 1 != v60);
  }

  v56 = *(v0 + 8);

  return v56();
}

uint64_t sub_243A40520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  *(v4 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243A405BC, 0, 0);
}

uint64_t sub_243A405BC()
{
  v1 = *(v0 + 24);
  v2 = sub_243A2E9D8(MEMORY[0x277D84F90]);
  sub_243AC2A68();
  v3 = sub_243AC2A98();
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = v4;
  *(v5 + 40) = v2;
  *(v5 + 48) = 2;
  sub_243A7970C(0, 0, v1, &unk_243AC59A0, v5);

  sub_243A2251C(v1, &qword_27ED98998, &qword_243AC4FD0);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_243A40718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  *(v4 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243A407B4, 0, 0);
}

uint64_t sub_243A407B4()
{
  v1 = *(v0 + 24);
  v2 = sub_243A2E9D8(MEMORY[0x277D84F90]);
  sub_243AC2A68();
  v3 = sub_243AC2A98();
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = v4;
  *(v5 + 40) = v2;
  *(v5 + 48) = 4;
  sub_243A7970C(0, 0, v1, &unk_243AC58C0, v5);

  sub_243A2251C(v1, &qword_27ED98998, &qword_243AC4FD0);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_243A40910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 74) = a7;
  *(v7 + 24) = a5;
  *(v7 + 32) = a6;
  *(v7 + 16) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  *(v7 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243A409B4, 0, 0);
}

uint64_t sub_243A409B4()
{
  v1 = *(v0 + 74);
  *(v0 + 48) = *(*(v0 + 16) + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_analytics);
  *(v0 + 72) = v1;
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_243A40A6C;
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);

  return sub_243A79F3C(v4, v3, (v0 + 72));
}

uint64_t sub_243A40A6C(char a1)
{
  v3 = *v1;
  v4 = *v1;

  if (a1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    *(v3 + 73) = *(v3 + 74);
    v7 = (v3 + 73);
    v8 = swift_task_alloc();
    *(v7 - 9) = v8;
    *v8 = v4;
    v8[1] = sub_243A40BF8;
    v9 = *(v7 - 41);
    v10 = *(v7 - 49);

    return sub_243A79D30(v7, v10, v9);
  }
}

uint64_t sub_243A40BF8()
{

  return MEMORY[0x2822009F8](sub_243A40CF4, 0, 0);
}

uint64_t sub_243A40CF4()
{
  v1 = *(v0 + 74);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED999C0, &unk_243AC4C40);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_243AC51B0;
  *(v6 + 32) = v5;
  *(v6 + 40) = v3;
  v7 = sub_243AC2A98();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  sub_243AC2A58();

  v8 = sub_243AC2A48();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  *(v9 + 16) = v8;
  *(v9 + 24) = v10;
  *(v9 + 32) = v6;
  *(v9 + 40) = v1;
  *(v9 + 56) = 0;
  *(v9 + 64) = 0;
  *(v9 + 48) = v4;
  *(v9 + 72) = 2305;
  sub_243A3306C(0, 0, v2, &unk_243AC5330, v9);

  v11 = *(v0 + 8);

  return v11();
}

void sub_243A40E70(uint64_t a1)
{
  v2 = *MEMORY[0x277CFB118];
  v45 = *MEMORY[0x277CFB120];
  v3 = sub_243AC2858();
  v5 = v4;
  if (v3 == sub_243AC2858() && v5 == v6)
  {
    v10 = v45;
    v11 = v2;

    goto LABEL_8;
  }

  v8 = sub_243AC2EE8();
  v44 = v45;
  v9 = v2;

  if (v8)
  {

LABEL_8:
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v12 = sub_243AC1468();
    __swift_project_value_buffer(v12, qword_27EDA14A8);
    v13 = sub_243AC1448();
    v14 = sub_243AC2B48();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_243A1B000, v13, v14, "Will not fetch completed recommendations for cancelled status.", v15, 2u);
      MEMORY[0x245D47D20](v15, -1, -1);
    }

    v16 = v45;
    goto LABEL_23;
  }

  v17 = sub_243AC2858();
  v19 = v18;
  v20 = sub_243AC2858();
  v22 = v21;

  if (v17 == v20 && v19 == v22)
  {
    goto LABEL_20;
  }

  v24 = sub_243AC2EE8();

  if (v24)
  {
LABEL_21:
    sub_243A242A0();

    sub_243AA47D8();

    dispatch_group_enter(*(v1 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationTaskGroup));
    v29 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_account;
    v30 = *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_account);
    v31 = swift_allocObject();
    *(v31 + 16) = v1;
    *(v31 + 24) = 1;
    v32 = v30;

    sub_243AC13D8();

    v33 = *(v1 + v29);
    sub_243AC13C8();

    v34 = *(v1 + v29);
    sub_243AC13B8();

LABEL_22:
    v16 = v44;
LABEL_23:

    return;
  }

  v25 = sub_243AC2858();
  v27 = v26;
  if (v25 == sub_243AC2858() && v27 == v28)
  {
LABEL_20:

    goto LABEL_21;
  }

  v35 = sub_243AC2EE8();

  if (v35)
  {
    goto LABEL_21;
  }

  v36 = sub_243AC2858();
  v38 = v37;
  if (v36 == sub_243AC2858() && v38 == v39)
  {
  }

  else
  {
    v40 = sub_243AC2EE8();

    if ((v40 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  sub_243A242A0();

  sub_243AA47D8();

  dispatch_group_enter(*(v1 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationTaskGroup));
  v41 = *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_account);
  v42 = swift_allocObject();
  *(v42 + 16) = v1;
  *(v42 + 24) = 1;

  v43 = v41;
  sub_243AC13D8();
}

uint64_t sub_243A41398(void *a1)
{
  v3 = sub_243AC2178();
  v15 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_243AC21A8();
  v6 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243A2CFF0(0, &qword_27ED995D0, 0x277D85C78);
  v9 = sub_243AC2BC8();
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_243A48384;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243A71700;
  aBlock[3] = &block_descriptor_246;
  v11 = _Block_copy(aBlock);

  v12 = a1;

  sub_243AC2198();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_243A484E8(&qword_27ED99860, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F90, &qword_243AC5C20);
  sub_243A491E8(&qword_27ED99870, &qword_27ED98F90, &qword_243AC5C20, MEMORY[0x277D83970]);
  sub_243AC2C78();
  MEMORY[0x245D46FA0](0, v8, v5, v11);
  _Block_release(v11);

  (*(v15 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v14);
}

void sub_243A4169C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  if (v23 == 3)
  {
    if (a2)
    {
      v3 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C10, &qword_243AC4C60);
      sub_243A2CFF0(0, &qword_27ED98FA0, 0x277CCA9B8);
      if (swift_dynamicCast())
      {
        v4 = [v22 code];

        if (v4 == -1009)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          v24 = 1;
LABEL_13:

          sub_243AC16B8();
          if (qword_27ED98910 != -1)
          {
            swift_once();
          }

          v14 = sub_243AC1468();
          __swift_project_value_buffer(v14, qword_27EDA14A8);

          v7 = sub_243AC1448();
          v15 = sub_243AC2B48();

          if (os_log_type_enabled(v7, v15))
          {
            v9 = swift_slowAlloc();
            v10 = swift_slowAlloc();
            *v9 = 138412290;
            swift_getKeyPath();
            swift_getKeyPath();
            sub_243AC16A8();

            if (v24 == 3)
            {
              v16 = 0;
              v17 = 0;
            }

            else
            {
              sub_243A48394();
              swift_allocError();
              *v18 = v24;
              v16 = _swift_stdlib_bridgeErrorToNSError();
              v17 = v16;
            }

            *(v9 + 4) = v16;
            *v10 = v17;
            _os_log_impl(&dword_243A1B000, v7, v15, "RecommendationsController updated error state to %@", v9, 0xCu);
            sub_243A2251C(v10, &qword_27ED98BF8, &unk_243AC6150);
LABEL_25:
            MEMORY[0x245D47D20](v10, -1, -1);
            MEMORY[0x245D47D20](v9, -1, -1);
            goto LABEL_26;
          }

          goto LABEL_26;
        }

        if (v4 == -1001)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          v24 = 2;
          goto LABEL_13;
        }
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v24 = 0;
    goto LABEL_13;
  }

  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v5 = sub_243AC1468();
  __swift_project_value_buffer(v5, qword_27EDA14A8);
  v6 = a2;

  v7 = sub_243AC1448();
  v8 = sub_243AC2B48();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    if (a2)
    {
      v11 = a2;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      v13 = v12;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    *(v9 + 4) = v12;
    *v10 = v13;
    *(v9 + 12) = 2112;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_243AC16A8();

    if (v23 == 3)
    {
      v19 = 0;
      v20 = 0;
    }

    else
    {
      sub_243A48394();
      swift_allocError();
      *v21 = v23;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      v20 = v19;
    }

    *(v9 + 14) = v19;
    v10[1] = v20;
    _os_log_impl(&dword_243A1B000, v7, v8, "RecommendationsController skipping error %@, already have %@", v9, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98BF8, &unk_243AC6150);
    swift_arrayDestroy();
    goto LABEL_25;
  }

LABEL_26:
}

uint64_t sub_243A41BC0()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_analytics);
  v2 = MEMORY[0x277D84FA0];
  *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI23RecommendationAnalytics_seenRecommendations) = MEMORY[0x277D84FA0];

  *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI23RecommendationAnalytics_seenCompletedRecommendations) = v2;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_243A41C58()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C38, &qword_243AC4C90);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v43 - v4;
  v6 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_breakoutsMap;
  swift_beginAccess();
  v46 = v0;
  v7 = *(v0 + v6);
  v8 = *(v7 + 16);
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = sub_243AA69F4(*(v7 + 16), 0);
  v10 = sub_243AA82C8(v48, v9 + 4, v8, v7);
  v1 = v48[0];
  v2 = v48[1];
  swift_bridgeObjectRetain_n();
  sub_243A48354(v1);
  if (v10 != v8)
  {
    __break(1u);
LABEL_4:

    v9 = MEMORY[0x277D84F90];
  }

  v43 = v5;
  v48[0] = v9;
  sub_243A45260(v48);

  v11 = v48[0];
  v12 = [objc_allocWithZone(MEMORY[0x277CFB1D8]) init];
  type metadata accessor for RecommendationSectionViewModel(0);
  v13 = swift_allocObject();
  v48[0] = MEMORY[0x277D84F90];
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F40, &qword_243AC52E0);
  v15 = sub_243AC1688();
  v44 = v14;
  *(v13 + OBJC_IVAR____TtC21CloudRecommendationUI30RecommendationSectionViewModel_sectionModel) = v14;
  v45 = v13;
  *(v13 + OBJC_IVAR____TtC21CloudRecommendationUI30RecommendationSectionViewModel_totalSectionScore) = 0;
  v16 = *(v11 + 16);
  v17 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_eligibleRecommendations;
  v47 = v11;
  v18 = (v11 + 40);
  v19 = -v16;
  v20 = -1;
  do
  {
    if (v19 + v20 == -1)
    {

      return MEMORY[0x277D84F90];
    }

    if (++v20 >= *(v47 + 16))
    {
      __break(1u);
LABEL_21:
      sub_243AC29B8();
      goto LABEL_17;
    }

    v21 = *v18;
    v22 = *(v46 + v17);
    MEMORY[0x28223BE20](v15);
    *(&v43 - 2) = v23;
    *(&v43 - 1) = v21;
    KeyPath = swift_getKeyPath();
    v1 = &v43;
    v25 = MEMORY[0x28223BE20](KeyPath);
    *(&v43 - 2) = sub_243A499B0;
    *(&v43 - 1) = v25;

    os_unfair_lock_lock((v22 + 24));
    sub_243A49894((v22 + 16), v48);
    v18 += 3;
    os_unfair_lock_unlock((v22 + 24));

    v2 = v48[0];
  }

  while (!v2);

  v26 = [v2 identifier];
  v27 = sub_243AC2858();
  v29 = v28;

  v30 = sub_243A5B5E4(v27, v29);
  if (v30 <= 0xE && ((1 << v30) & 0x6238) != 0)
  {
    v31 = [*(v46 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationsActionCache) lastDismissedTimestamp_];
    v20 = v45;
    if (v31)
    {
      v32 = v43;
      v33 = v31;
      sub_243AC1248();

      v34 = sub_243AC1268();
      (*(*(v34 - 8) + 56))(v32, 0, 1, v34);
      sub_243A2251C(v32, &qword_27ED98C38, &qword_243AC4C90);
      goto LABEL_18;
    }

    v36 = sub_243AC1268();
    v37 = v43;
    (*(*(v36 - 8) + 56))(v43, 1, 1, v36);
    sub_243A2251C(v37, &qword_27ED98C38, &qword_243AC4C90);
    swift_getKeyPath();
    swift_getKeyPath();
    v38 = v2;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v39 = v2;
    v20 = v45;
  }

  v1 = sub_243AC1698();
  v41 = v40;
  MEMORY[0x245D46D30]();
  if (*((*v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_21;
  }

LABEL_17:
  sub_243AC29D8();
  (v1)(v48, 0);

LABEL_18:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98EE8, &unk_243AC8050);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_243AC51A0;
  *(v42 + 32) = v20;

  return v42;
}

uint64_t sub_243A42228(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243A422C4, 0, 0);
}

uint64_t sub_243A422C4()
{
  v1 = sub_243A2CFF0(0, &qword_27ED98F70, 0x277CFB1B0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F78, &qword_243AC5468);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_243A423C4;
  v4 = *(v0 + 32);

  return MEMORY[0x282200600](v0 + 16, v1, v2, 0, 0, &unk_243AC5478, v4, v1);
}

uint64_t sub_243A423C4()
{

  return MEMORY[0x2822009F8](sub_243A424C0, 0, 0);
}

void sub_243A424C0()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v1 + 40;
    while (1)
    {
      v7 = (v6 + 16 * v5);
      v8 = v5;
      while (1)
      {
        if (v8 >= v4)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return;
        }

        v5 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_17;
        }

        if (*(v2 + 16))
        {
          break;
        }

LABEL_4:
        ++v8;
        v7 += 2;
        if (v5 == v4)
        {
          goto LABEL_13;
        }
      }

      v9 = *(v7 - 1);
      v10 = *v7;

      v11 = sub_243A2DDC0(v9, v10);
      if ((v12 & 1) == 0)
      {
        break;
      }

      v13 = *(*(v2 + 56) + 8 * v11);

      MEMORY[0x245D46D30](v14);
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_243AC29B8();
      }

      sub_243AC29D8();
      v3 = v22;
      if (v5 == v4)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_4;
  }

LABEL_13:
  v16 = v0[4];
  v15 = v0[5];

  v17 = sub_243AC2A98();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_243AC2A58();

  v18 = sub_243AC2A48();
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  v19[2] = v18;
  v19[3] = v20;
  v19[4] = v16;
  v19[5] = v3;
  sub_243A3306C(0, 0, v15, &unk_243AC5488, v19);

  v21 = v0[1];

  v21();
}

uint64_t sub_243A426F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_243A42718, 0, 0);
}

uint64_t sub_243A42718()
{
  v1 = v0[3];
  v2 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_account;
  v0[4] = *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationsDataFetcher);
  v0[5] = v2;
  v3 = *(v1 + v2);
  v7 = (*MEMORY[0x277CFB0E8] + MEMORY[0x277CFB0E8]);
  v0[6] = v3;
  v4 = v3;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_243A427F8;

  return v7(v4, 0);
}

uint64_t sub_243A427F8(uint64_t a1)
{
  v2 = *(*v1 + 48);
  *(*v1 + 64) = a1;

  return MEMORY[0x2822009F8](sub_243A42914, 0, 0);
}

uint64_t sub_243A42914()
{
  v1 = *(v0[3] + v0[5]);
  v0[9] = v1;
  v5 = (*MEMORY[0x277CFB0D8] + MEMORY[0x277CFB0D8]);
  v2 = v1;
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_243A429E0;

  return v5(v2, 0);
}

uint64_t sub_243A429E0(uint64_t a1)
{
  v2 = *(*v1 + 72);
  *(*v1 + 88) = a1;

  return MEMORY[0x2822009F8](sub_243A42AFC, 0, 0);
}

uint64_t sub_243A42AFC()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = sub_243A2E2A0(MEMORY[0x277D84F90]);
  sub_243AA34A0(v1);
  v4 = v2;
  if (v2 >> 62)
  {
LABEL_28:
    v5 = sub_243AC2DF8();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v37 = v4;
      v38 = v4 & 0xC000000000000001;
      v36 = v4 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v38)
        {
          v11 = MEMORY[0x245D470F0](v6, v4);
        }

        else
        {
          if (v6 >= *(v36 + 16))
          {
            goto LABEL_27;
          }

          v11 = *(v4 + 8 * v6 + 32);
        }

        v12 = v11;
        v13 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        v4 = v5;
        v14 = [v11 identifier];
        v15 = sub_243AC2858();
        v17 = v16;

        v18 = v12;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = sub_243A2DDC0(v15, v17);
        v22 = v3[2];
        v23 = (v21 & 1) == 0;
        v24 = __OFADD__(v22, v23);
        v25 = v22 + v23;
        if (v24)
        {
          goto LABEL_25;
        }

        v26 = v21;
        if (v3[3] < v25)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_16;
        }

        v31 = v20;
        sub_243A8B978();
        v20 = v31;
        if (v26)
        {
LABEL_4:
          v7 = v20;

          v8 = v3[7];
          v9 = *(v8 + 8 * v7);
          *(v8 + 8 * v7) = v18;

          goto LABEL_5;
        }

LABEL_17:
        v3[(v20 >> 6) + 8] |= 1 << v20;
        v28 = (v3[6] + 16 * v20);
        *v28 = v15;
        v28[1] = v17;
        *(v3[7] + 8 * v20) = v18;

        v29 = v3[2];
        v24 = __OFADD__(v29, 1);
        v30 = v29 + 1;
        if (v24)
        {
          goto LABEL_26;
        }

        v3[2] = v30;
LABEL_5:
        ++v6;
        v5 = v4;
        v10 = v13 == v4;
        v4 = v37;
        if (v10)
        {
          goto LABEL_29;
        }
      }

      sub_243A8A254(v25, isUniquelyReferenced_nonNull_native);
      v20 = sub_243A2DDC0(v15, v17);
      if ((v26 & 1) != (v27 & 1))
      {

        return sub_243AC2F38();
      }

LABEL_16:
      if (v26)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

LABEL_29:
  v33 = *(v35 + 16);

  *v33 = v3;
  v34 = *(v35 + 8);

  return v34();
}

uint64_t sub_243A42DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_243AC2A58();
  v5[5] = sub_243AC2A48();
  v7 = sub_243AC2A28();

  return MEMORY[0x2822009F8](sub_243A42E70, v7, v6);
}

uint64_t sub_243A42E70()
{
  v1 = v0[4];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = v1;

  sub_243AC16B8();
  v2 = v0[1];

  return v2();
}

void sub_243A42F30()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v36 - v3;
  v5 = *(*(v0 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_completedRecommendationController) + 32);
  v40 = 0xD000000000000023;
  v41 = 0x8000000243ACB660;
  KeyPath = swift_getKeyPath();
  v38 = sub_243A499B0;
  v39 = KeyPath;

  os_unfair_lock_lock((v5 + 24));
  sub_243A47E1C((v5 + 16), &v42);
  os_unfair_lock_unlock((v5 + 24));

  v7 = v42;

  if (v7)
  {

    v8 = sub_243AC2A98();
    v37 = *(*(v8 - 8) + 56);
    v37(v4, 1, 1, v8);
    v9 = swift_allocObject();
    swift_weakInit();
    sub_243AC2A58();

    v10 = sub_243AC2A48();
    v11 = swift_allocObject();
    v12 = MEMORY[0x277D85700];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = v9;

    sub_243A3335C(0, 0, v4, &unk_243AC5408, v11);

    v13 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_account;
    v14 = *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_account);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED999C0, &unk_243AC4C40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_243AC4AC0;
    *(inited + 32) = sub_243AC2858();
    *(inited + 40) = v16;
    *(inited + 48) = sub_243AC2858();
    *(inited + 56) = v17;
    *(inited + 64) = sub_243AC2858();
    *(inited + 72) = v18;
    v19 = v14;
    sub_243A9CBC8(v19, inited);
    v21 = v20;

    swift_setDeallocating();
    swift_arrayDestroy();
    v22 = *(v21 + 16);
    if (v22 >= 2)
    {
      v27 = sub_243AA6970(*(v21 + 16), 0);
      v28 = sub_243AA8174(&v42, v27 + 4, v22, v21);
      sub_243A48354(v42);
      if (v28 == v22)
      {
        v29 = *(v1 + v13);
        v30 = sub_243A9CEB0(v27);
        v32 = v31;

        v37(v4, 1, 1, v8);
        v33 = swift_allocObject();
        swift_weakInit();

        v34 = sub_243AC2A48();
        v35 = swift_allocObject();
        v35[2] = v34;
        v35[3] = MEMORY[0x277D85700];
        v35[4] = v33;
        v35[5] = v30;
        v35[6] = v32;

        sub_243A3335C(0, 0, v4, &unk_243AC5418, v35);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }

  else
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v23 = sub_243AC1468();
    __swift_project_value_buffer(v23, qword_27EDA14A8);
    v24 = sub_243AC1448();
    v25 = sub_243AC2B48();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_243A1B000, v24, v25, "Turn on more apps recommendations wasn't dismissed. Banner unavailable.", v26, 2u);
      MEMORY[0x245D47D20](v26, -1, -1);
    }
  }
}

uint64_t sub_243A433F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a1;
  v4[8] = a4;
  sub_243AC2A58();
  v4[9] = sub_243AC2A48();
  v6 = sub_243AC2A28();

  return MEMORY[0x2822009F8](sub_243A43490, v6, v5);
}

uint64_t sub_243A43490()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 40) = 0;
    *(v0 + 48) = 0;
    sub_243AC16B8();
  }

  **(v0 + 56) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_243A43558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a1;
  v6[8] = a4;
  sub_243AC2A58();
  v6[11] = sub_243AC2A48();
  v8 = sub_243AC2A28();

  return MEMORY[0x2822009F8](sub_243A435F4, v8, v7);
}

uint64_t sub_243A435F4()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(v0 + 72);
    v2 = *(v0 + 80);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 40) = v3;
    *(v0 + 48) = v2;

    sub_243AC16B8();
  }

  **(v0 + 56) = Strong == 0;
  v4 = *(v0 + 8);

  return v4();
}

void sub_243A436E4(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a3;
  v10 = a5;
  sub_243A487BC(a2, a3);
}

void sub_243A43764(const void *a1, uint64_t a2, unint64_t a3, void (__cdecl *a4)(CFNotificationCenterRef, void *, CFNotificationName, const void *, CFDictionaryRef))
{
  v8 = CFNotificationCenterGetDarwinNotifyCenter();
  if (v8)
  {
    v9 = v8;
    oslog = sub_243AC2818();
    CFNotificationCenterAddObserver(v9, a1, a4, oslog, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  else
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v10 = sub_243AC1468();
    __swift_project_value_buffer(v10, qword_27EDA14A8);

    oslog = sub_243AC1448();
    v11 = sub_243AC2B58();

    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_243AB73D8(a2, a3, &v15);
      _os_log_impl(&dword_243A1B000, oslog, v11, "Could not get darwin notification center, failed to register object for notification %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x245D47D20](v13, -1, -1);
      MEMORY[0x245D47D20](v12, -1, -1);
    }
  }
}

void sub_243A43914(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a3;
  v10 = a5;
  sub_243A48950(a2, a3, "Private relay status change notification received.");
}

void sub_243A4399C(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a3;
  v10 = a5;
  sub_243A48950(a2, a3, "Private relay config change notification received.");
}

void sub_243A43A24()
{
  v1 = v0;
  v2 = sub_243AC2188();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *MEMORY[0x277CDBDA0];
  sub_243A2CFF0(0, &qword_27ED995D0, 0x277D85C78);
  v6 = *MEMORY[0x277D851A8];
  v21 = *(v3 + 104);
  HIDWORD(v19) = v6;
  v21(v5, v6, v2);
  v7 = sub_243AC2BE8();
  v22 = *(v3 + 8);
  v22(v5, v2);
  v8 = swift_allocObject();
  swift_weakInit();
  v27 = sub_243A47A60;
  v28 = v8;
  aBlock = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = sub_243A43E88;
  v26 = &block_descriptor_178;
  v9 = _Block_copy(&aBlock);

  v10 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_keychainSyncNotificationToken;
  swift_beginAccess();
  notify_register_dispatch(v20, (v0 + v10), v7, v9);
  swift_endAccess();
  _Block_release(v9);

  v20 = *MEMORY[0x277CDBE68];
  v11 = v21;
  v21(v5, v6, v2);
  v12 = sub_243AC2BE8();
  v22(v5, v2);
  v13 = swift_allocObject();
  swift_weakInit();
  v27 = sub_243A47AA0;
  v28 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = sub_243A43E88;
  v26 = &block_descriptor_182;
  v14 = _Block_copy(&aBlock);

  swift_beginAccess();
  notify_register_dispatch(v20, (v0 + v10), v12, v14);
  swift_endAccess();
  _Block_release(v14);

  v15 = *MEMORY[0x277CDBE78];
  v11(v5, HIDWORD(v19), v2);
  v16 = sub_243AC2BE8();
  v22(v5, v2);
  v17 = swift_allocObject();
  swift_weakInit();
  v27 = sub_243A47AE0;
  v28 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = sub_243A43E88;
  v26 = &block_descriptor_186;
  v18 = _Block_copy(&aBlock);

  swift_beginAccess();
  notify_register_dispatch(v15, (v1 + v10), v16, v18);
  swift_endAccess();
  _Block_release(v18);
}

uint64_t sub_243A43E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_243A499AC, 0, 0);
}

uint64_t sub_243A43E88(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_243A43EDC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v44 - v5;
  v7 = sub_243AC10C8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v11 = sub_243AC1468();
  v12 = __swift_project_value_buffer(v11, qword_27EDA14A8);
  (*(v8 + 16))(v10, a1, v7);
  v46 = v12;
  v13 = sub_243AC1448();
  v14 = sub_243AC2B78();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v44 = v2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v45 = v6;
    v18 = v17;
    v49[0] = v17;
    *v16 = 136315138;
    v19 = sub_243AC1098();
    v21 = v20;
    (*(v8 + 8))(v10, v7);
    v22 = sub_243AB73D8(v19, v21, v49);

    *(v16 + 4) = v22;
    _os_log_impl(&dword_243A1B000, v13, v14, "Reacting to Account did change notification. %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    v23 = v18;
    v6 = v45;
    MEMORY[0x245D47D20](v23, -1, -1);
    v24 = v16;
    v2 = v44;
    MEMORY[0x245D47D20](v24, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  v25 = sub_243AC10B8();
  if (!v25)
  {
    goto LABEL_16;
  }

  v26 = v25;
  v47 = sub_243AC2858();
  v48 = v27;
  sub_243AC2CB8();
  if (!*(v26 + 16) || (v28 = sub_243A2DD7C(v49), (v29 & 1) == 0))
  {

    sub_243A1FF9C(v49);
LABEL_16:
    v50 = 0u;
    v51 = 0u;
    return sub_243A2251C(&v50, &qword_27ED989A0, &qword_243AC4470);
  }

  sub_243A20058(*(v26 + 56) + 32 * v28, &v50);
  sub_243A1FF9C(v49);

  if (!*(&v51 + 1))
  {
    return sub_243A2251C(&v50, &qword_27ED989A0, &qword_243AC4470);
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  v32 = v49[0];
  v31 = v49[1];
  result = [*(v2 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_account) identifier];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v33 = result;
  v34 = sub_243AC2858();
  v36 = v35;

  if (v34 == v32 && v36 == v31)
  {
  }

  else
  {
    v37 = sub_243AC2EE8();

    if ((v37 & 1) == 0)
    {
      return result;
    }
  }

  v38 = sub_243AC1448();
  v39 = sub_243AC2B48();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_243A1B000, v38, v39, "Refreshing eligible recommendations for account.", v40, 2u);
    MEMORY[0x245D47D20](v40, -1, -1);
  }

  v41 = sub_243AC2A98();
  (*(*(v41 - 8) + 56))(v6, 1, 1, v41);
  v42 = swift_allocObject();
  swift_weakInit();
  v43 = swift_allocObject();
  v43[2] = 0;
  v43[3] = 0;
  v43[4] = v42;
  sub_243A3335C(0, 0, v6, &unk_243AC5380, v43);
}

uint64_t sub_243A443F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_243A44418, 0, 0);
}

uint64_t sub_243A44418()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_243A34E44(0, 1);
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

void sub_243A445A8()
{
  v1 = v0;
  v2 = sub_243AC2188();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243AC2858();
  sub_243A2CFF0(0, &qword_27ED995D0, 0x277D85C78);
  (*(v3 + 104))(v5, *MEMORY[0x277D851A8], v2);
  v6 = sub_243AC2BE8();
  (*(v3 + 8))(v5, v2);
  v7 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_243A478A0;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243A43E88;
  aBlock[3] = &block_descriptor_0;
  v8 = _Block_copy(aBlock);

  v9 = sub_243AC2888();

  v10 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_familySyncNotificationToken;
  swift_beginAccess();
  notify_register_dispatch((v9 + 32), (v1 + v10), v6, v8);
  swift_endAccess();
  _Block_release(v8);
}

uint64_t sub_243A447D4(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v10 = sub_243AC1468();
  __swift_project_value_buffer(v10, qword_27EDA14A8);
  v11 = sub_243AC1448();
  v12 = sub_243AC2B78();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_243A1B000, v11, v12, a3, v13, 2u);
    MEMORY[0x245D47D20](v13, -1, -1);
  }

  v14 = sub_243AC2A98();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v15;
  sub_243A3335C(0, 0, v9, a5, v16);
}

uint64_t sub_243A449DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_243A449FC, 0, 0);
}

uint64_t sub_243A449FC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_243A34E44(1, 0);
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_243A44AA0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for RecommendationsController(0);
  result = sub_243AC1668();
  *a2 = result;
  return result;
}

uint64_t sub_243A44B08@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  *a2 = v4;
  return result;
}

uint64_t sub_243A44B88(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return sub_243AC16B8();
}

uint64_t sub_243A44C14@<X0>(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  *a4 = v6;
  return result;
}

uint64_t sub_243A44CA4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243AC16B8();
}

uint64_t sub_243A44D1C@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  *a2 = v4;
  return result;
}

uint64_t sub_243A44D9C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243AC16B8();
}

uint64_t sub_243A44E10@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  *a2 = v4;
  return result;
}

uint64_t sub_243A44E90(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243AC16B8();
}

uint64_t sub_243A44F40@<X0>(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  *a4 = v6;
  a4[1] = v7;
  return result;
}

uint64_t sub_243A44FD0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for RecommendationsController(0);
  sub_243A484E8(&qword_27ED98FB0, type metadata accessor for RecommendationsController, &protocol conformance descriptor for RecommendationsController);

  sub_243AC1668();
  sub_243AC1678();

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243AC16B8();
}

uint64_t sub_243A450C0@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  *a2 = v4;
  return result;
}

uint64_t sub_243A45140(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243AC16B8();
}

uint64_t sub_243A451B4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_243A45260(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_243A45F74(v2);
  }

  v3 = v2[2];
  v20[0] = (v2 + 4);
  v20[1] = v3;
  result = sub_243AC2EA8();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 8;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v2[3 * i + 6];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*(v13 - 2) >= v11)
          {
            break;
          }

          v14 = *(v13 - 2);
          v15 = *(v13 - 2);
          *(v13 - 3) = *v13;
          v13 -= 3;
          v16 = v13[2];
          v13[4] = v15;
          *(v13 + 1) = v14;
          *(v13 - 1) = v16;
          v13[1] = v11;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 3;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F80, &qword_243AC5528);
      v7 = sub_243AC29C8();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v18[0] = v7 + 32;
    v18[1] = v6;
    sub_243A453D0(v18, v19, v20, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_243A453D0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v92 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_243A45C54(v7);
      v7 = result;
    }

    v84 = (v7 + 16);
    v85 = *(v7 + 16);
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = (v7 + 16 * v85);
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        sub_243A4598C((*a3 + 24 * *v86), (*a3 + 24 * *v88), *a3 + 24 * v89, v93);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_114;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_115;
        }

        *v86 = v87;
        v86[1] = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_116;
        }

        v85 = *v84 - 1;
        result = memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v91 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6 + 16);
      v10 = 24 * v8;
      v11 = *a3 + 24 * v8;
      v12 = *(v11 + 16);
      v13 = v8 + 2;
      v14 = (v11 + 64);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 3;
        v17 = (v12 < v9) ^ (v15 >= v16);
        ++v13;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          v6 = v13 - 1;
          if (v12 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 24 * v6 - 8;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v26 + v10);
            v22 = (v26 + v18);
            v23 = *v21;
            v24 = *(v21 + 2);
            v25 = *v22;
            *v21 = *(v22 - 1);
            *(v21 + 2) = v25;
            *(v22 - 1) = v23;
            *v22 = v24;
          }

          ++v20;
          v18 -= 24;
          v10 += 24;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_243A45C68(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v37 = *(v7 + 16);
    v36 = *(v7 + 24);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      result = sub_243A45C68((v36 > 1), v37 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v38;
    v39 = v7 + 32;
    v40 = (v7 + 32 + 16 * v37);
    *v40 = v8;
    v40[1] = v6;
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_127;
    }

    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = *(v7 + 32);
          v43 = *(v7 + 40);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_57:
          if (v45)
          {
            goto LABEL_104;
          }

          v58 = (v7 + 16 * v38);
          v60 = *v58;
          v59 = v58[1];
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_106;
          }

          v64 = (v39 + 16 * v41);
          v66 = *v64;
          v65 = v64[1];
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_111;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v38 < 2)
        {
          goto LABEL_112;
        }

        v68 = (v7 + 16 * v38);
        v70 = *v68;
        v69 = v68[1];
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_72:
        if (v63)
        {
          goto LABEL_108;
        }

        v71 = (v39 + 16 * v41);
        v73 = *v71;
        v72 = v71[1];
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_110;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v41 - 1 >= v38)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v79 = (v39 + 16 * (v41 - 1));
        v80 = *v79;
        v81 = (v39 + 16 * v41);
        v82 = v81[1];
        sub_243A4598C((*a3 + 24 * *v79), (*a3 + 24 * *v81), *a3 + 24 * v82, v93);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_99;
        }

        if (v41 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v79 = v80;
        v79[1] = v82;
        v83 = *(v7 + 16);
        if (v41 >= v83)
        {
          goto LABEL_101;
        }

        v38 = v83 - 1;
        result = memmove((v39 + 16 * v41), v81 + 2, 16 * (v83 - 1 - v41));
        *(v7 + 16) = v83 - 1;
        if (v83 <= 2)
        {
          goto LABEL_3;
        }
      }

      v46 = v39 + 16 * v38;
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_102;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_103;
      }

      v53 = (v7 + 16 * v38);
      v55 = *v53;
      v54 = v53[1];
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_105;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_107;
      }

      if (v57 >= v49)
      {
        v75 = (v39 + 16 * v41);
        v77 = *v75;
        v76 = v75[1];
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v91;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 24 * v6;
  v29 = v8 - v6;
LABEL_30:
  v30 = *(v27 + 24 * v6 + 16);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (*(v32 - 1) >= v30)
    {
LABEL_29:
      ++v6;
      v28 += 24;
      --v29;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    v34 = v32[1];
    *v32 = *(v32 - 3);
    v32[2] = *(v32 - 1);
    *(v32 - 2) = v34;
    *(v32 - 1) = v30;
    *(v32 - 3) = v33;
    v32 -= 3;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_243A4598C(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*(v4 + 2) < *(v6 + 2))
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 24;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 24;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v5 -= 24;
    do
    {
      v16 = (v5 + 24);
      if (*(v6 - 1) < *(v12 - 1))
      {
        v19 = v6 - 24;
        if (v16 != v6)
        {
          v20 = *v19;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v20;
        }

        if (v12 <= v4 || (v6 -= 24, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v17 = v12 - 24;
      if (v16 != v12)
      {
        v18 = *v17;
        *(v5 + 16) = *(v12 - 1);
        *v5 = v18;
      }

      v5 -= 24;
      v12 -= 24;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v21 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v22 = (v21 >> 2) + (v21 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v22])
  {
    memmove(v6, v4, 24 * v22);
  }

  return 1;
}

uint64_t sub_243A45BC8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_243A45C54(v3);
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
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_243A45C68(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F88, &unk_243AC5530);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_243A45D6C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_243A45E60;

  return v5(v2 + 32);
}

uint64_t sub_243A45E60()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_243A45F9C(void *a1, void *a2, int a3)
{
  v4 = v3;
  v113 = a3;
  v114 = a2;
  v112 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  MEMORY[0x28223BE20](v5 - 8);
  v115 = &v89 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98ED8, &qword_243AC51F8);
  v110 = *(v7 - 8);
  v111 = v7;
  MEMORY[0x28223BE20](v7);
  v109 = &v89 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98EC0, &qword_243AC51F0);
  v107 = *(v9 - 8);
  v108 = v9;
  MEMORY[0x28223BE20](v9);
  v106 = &v89 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98E30, &qword_243AC51E8);
  v99 = *(v11 - 8);
  v100 = v11;
  MEMORY[0x28223BE20](v11);
  v98 = &v89 - v12;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98E20, &qword_243AC51E0);
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v95 = &v89 - v13;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98E10, &qword_243AC51D8);
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v92 = &v89 - v14;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98E00, &qword_243AC51D0);
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v89 = &v89 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98DE8, &qword_243AC51C8);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v89 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98DD8, &qword_243AC51C0);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v89 - v22;
  v24 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController__recommendationSections;
  v116 = MEMORY[0x277D84F90];
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F08, &qword_243AC5DF0);
  sub_243AC1688();
  v25 = *(v21 + 32);
  v102 = v20;
  v25(v4 + v24, v23, v20);
  v103 = v25;
  v105 = v21 + 32;
  v26 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController__recommendationPage;
  v116 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F18, &qword_243AC52D0);
  sub_243AC1688();
  (*(v17 + 32))(v4 + v26, v19, v16);
  v27 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController__completedRecommendationsSection;
  v28 = MEMORY[0x277D84F90];
  v116 = MEMORY[0x277D84F90];
  v101 = v23;
  sub_243AC1688();
  v25(v4 + v27, v23, v20);
  v29 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController__stillFetchingData;
  LOBYTE(v116) = 1;
  v30 = v89;
  sub_243AC1688();
  (*(v90 + 32))(v4 + v29, v30, v91);
  v31 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController__loadingError;
  LOBYTE(v116) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F30, &qword_243AC52D8);
  v32 = v92;
  sub_243AC1688();
  (*(v93 + 32))(v4 + v31, v32, v94);
  v33 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController__contextualRecommendations;
  v116 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F40, &qword_243AC52E0);
  v34 = v95;
  sub_243AC1688();
  (*(v96 + 32))(v4 + v33, v34, v97);
  v35 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController__turnOnMoreAppsFooter;
  v116 = 0;
  v117 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F50, &qword_243AC52E8);
  v36 = v98;
  sub_243AC1688();
  (*(v99 + 32))(v4 + v35, v36, v100);
  *(v4 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_keychainSyncNotificationToken) = 0;
  *(v4 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_familySyncNotificationToken) = 1;
  *(v4 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_userIsCompletingRecommendation) = 0;
  v37 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationTaskGroup;
  *(v4 + v37) = dispatch_group_create();
  v38 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_allRecommendations;
  v39 = sub_243A2E2A0(v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98FF8, qword_243ACA6D0);
  v40 = swift_allocObject();
  *(v40 + 24) = 0;
  *(v40 + 16) = v39;
  *(v4 + v38) = v40;
  v41 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_allSections;
  *(v4 + v41) = sub_243A2E8B4(v28);
  v42 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_eligibleRecommendations;
  v43 = sub_243A2E2A0(v28);
  v44 = swift_allocObject();
  *(v44 + 24) = 0;
  *(v44 + 16) = v43;
  *(v4 + v42) = v44;
  v45 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationRules;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99000, &qword_243AC5970);
  v46 = swift_allocObject();
  *(v46 + 24) = 0;
  *(v46 + 16) = 0;
  *(v4 + v45) = v46;
  v47 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_rulesMap;
  v48 = sub_243A2E8C8(v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99008, &qword_243AC5978);
  v49 = swift_allocObject();
  *(v49 + 24) = 0;
  *(v49 + 16) = v48;
  *(v4 + v47) = v49;
  v50 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_ranksMap;
  *(v4 + v50) = sub_243A2E8DC(v28);
  v51 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_breakoutsMap;
  *(v4 + v51) = sub_243A2E8DC(v28);
  swift_unknownObjectWeakInit();
  v52 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController__recommendationsSpecifierTitle;
  type metadata accessor for RecommendationsController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v54 = objc_opt_self();
  v55 = [v54 bundleForClass_];
  v56 = sub_243AC1188();
  v58 = v57;

  v116 = v56;
  v117 = v58;
  v59 = v106;
  sub_243AC1688();
  v60 = *(v107 + 32);
  v61 = v4 + v52;
  v62 = v108;
  v60(v61, v59, v108);
  v63 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController__recommendationsSpecifierSubtitle;
  v64 = [v54 bundleForClass_];
  v65 = sub_243AC1188();
  v67 = v66;

  v116 = v65;
  v117 = v67;
  sub_243AC1688();
  v60(v4 + v63, v59, v62);
  v68 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController__recommendationsCount;
  v116 = -1;
  v69 = v109;
  sub_243AC1688();
  (*(v110 + 32))(v4 + v68, v69, v111);
  v70 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController__breakoutSection;
  v116 = MEMORY[0x277D84F90];
  v71 = v101;
  sub_243AC1688();
  v103(v4 + v70, v71, v102);
  v72 = v112;
  *(v4 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_account) = v112;
  type metadata accessor for RecommendationFilter();
  swift_allocObject();
  v73 = v72;
  v74 = sub_243A23C4C(v73);
  v75 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationsFilter;
  *(v4 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationsFilter) = v74;
  *(v4 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_isBreakoutAvailable) = v113;
  v76 = [objc_allocWithZone(MEMORY[0x277CFB1C0]) init];
  *(v4 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationsActionCache) = v76;
  v77 = v114;
  *(v4 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationsDataFetcher) = v114;
  v78 = objc_allocWithZone(type metadata accessor for RecommendationAnalytics());
  v79 = v73;
  v80 = v77;
  v81 = sub_243A7A32C(v79);

  *(v4 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_analytics) = v81;
  v82 = *(v4 + v75);
  type metadata accessor for CompletedRecommendationController();
  swift_allocObject();
  v83 = v79;

  v84 = sub_243AA8948(v83, v82);

  *(v4 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_completedRecommendationController) = v84;
  type metadata accessor for RecommendationTemplate();
  swift_allocObject();
  *(v4 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_templateHelper) = sub_243A59CDC(v83);
  type metadata accessor for SubtitleComposer();
  *(v4 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_subtitleComposer) = swift_allocObject();
  v85 = v115;
  sub_243AC2A78();
  v86 = sub_243AC2A98();
  (*(*(v86 - 8) + 56))(v85, 0, 1, v86);
  v87 = swift_allocObject();
  v87[2] = 0;
  v87[3] = 0;
  v87[4] = v4;

  sub_243A3306C(0, 0, v85, &unk_243AC5988, v87);

  sub_243A343F0();
  return v4;
}

uint64_t sub_243A46C80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_243A33068;

  return sub_243A23CBC(a1, v4, v5, v6);
}

uint64_t sub_243A46D60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_243A33068;

  return sub_243A3C324(a1, v4, v5, v6, v7);
}

uint64_t sub_243A46E44(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 56);
  v13 = *(v1 + 48);
  v8 = *(v1 + 64);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_243A33068;

  return sub_243A3FA60(a1, v4, v5, v6, v9, v13, v7, v8);
}

uint64_t sub_243A46F50@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

void sub_243A47010(uint64_t a1)
{
  sub_243A475AC(319, &qword_27ED98F00, &qword_27ED98F08, &qword_243AC5DF0);
  if (v1 <= 0x3F)
  {
    sub_243A475AC(319, &qword_27ED98F10, &qword_27ED98F18, &qword_243AC52D0);
    if (v2 <= 0x3F)
    {
      sub_243A47600(319, &qword_27ED98F20, MEMORY[0x277D839B0]);
      if (v3 <= 0x3F)
      {
        sub_243A475AC(319, &qword_27ED98F28, &qword_27ED98F30, &qword_243AC52D8);
        if (v4 <= 0x3F)
        {
          sub_243A475AC(319, &qword_27ED98F38, &qword_27ED98F40, &qword_243AC52E0);
          if (v5 <= 0x3F)
          {
            sub_243A475AC(319, &qword_27ED98F48, &qword_27ED98F50, &qword_243AC52E8);
            if (v6 <= 0x3F)
            {
              sub_243A47600(319, &qword_27ED98F58, MEMORY[0x277D837D0]);
              if (v7 <= 0x3F)
              {
                sub_243A47600(319, &qword_27ED98F60, MEMORY[0x277D83B88]);
                if (v8 <= 0x3F)
                {
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_243A475AC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_243AC16C8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_243A47600(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_243AC16C8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_243A47650(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243A476C0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_243A476F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_243A33068;

  return sub_243A45D6C(a1, v4);
}

uint64_t sub_243A477B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_243A1FEA8;

  return sub_243A45D6C(a1, v4);
}

uint64_t sub_243A47868()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243A478F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_243A33068;

  return sub_243A449DC(a1, v4, v5, v6);
}

uint64_t sub_243A479AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_243A33068;

  return sub_243A443F8(a1, v4, v5, v6);
}

uint64_t sub_243A47B20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_243A33068;

  return sub_243A43E68(a1, v4, v5, v6);
}

uint64_t sub_243A47BD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_243A33068;

  return sub_243A43E68(a1, v4, v5, v6);
}

uint64_t sub_243A47C88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_243A33068;

  return sub_243A43E68(a1, v4, v5, v6);
}

__n128 sub_243A47E10(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_243A47E1C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_243A47E60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_243A33068;

  return sub_243A433F8(a1, v4, v5, v6);
}

void sub_243A47F14(void *a1, id a2)
{
  v4 = [a2 title];
  if (!v4)
  {
    sub_243AC2858();
    v4 = sub_243AC2818();
  }

  [a1 setTitle_];

  v5 = [a2 subTitle];
  if (!v5)
  {
    sub_243AC2858();
    v5 = sub_243AC2818();
  }

  [a1 setSubTitle_];

  v6 = [a2 message];
  if (!v6)
  {
    sub_243AC2858();
    v6 = sub_243AC2818();
  }

  [a1 setMessage_];

  v7 = [a2 actions];
  if (!v7)
  {
    sub_243A2CFF0(0, &qword_27ED98B88, 0x277CFB1B8);
    sub_243AC2998();
    v8 = sub_243AC2978();

    v7 = v8;
  }

  v9 = v7;
  [a1 setActions_];
}

uint64_t sub_243A480C0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_243A48108(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_243A33068;

  return sub_243A43558(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_243A481D8(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_243A33068;

  return sub_243A426F8(a1, a2, v2);
}

uint64_t sub_243A4828C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_243A33068;

  return sub_243A42DD8(a1, v4, v5, v7, v6);
}

unint64_t sub_243A48394()
{
  result = qword_27ED98F98;
  if (!qword_27ED98F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED98F98);
  }

  return result;
}

id sub_243A4844C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 recommendationInfo];
  *a2 = result;
  return result;
}

uint64_t sub_243A484A4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_243A484E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_242Tm(void (*a1)(void), uint64_t a2)
{

  a1(*(v2 + 24));

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

uint64_t sub_243A48724@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_243A487BC(uint64_t result, void *a2)
{
  if (result)
  {
    v3 = qword_27ED98910;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = sub_243AC1468();
    __swift_project_value_buffer(v4, qword_27EDA14A8);
    v5 = a2;
    v6 = sub_243AC1448();
    v7 = sub_243AC2B78();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98FC8, &qword_243AC5810);
      v10 = sub_243AC2C28();
      v12 = sub_243AB73D8(v10, v11, &v13);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_243A1B000, v6, v7, "Handling backup state change notification: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x245D47D20](v9, -1, -1);
      MEMORY[0x245D47D20](v8, -1, -1);
    }

    sub_243A34E44(0, 1);
  }

  return result;
}

void sub_243A48950(uint64_t a1, void *a2, const char *a3)
{
  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v6 = sub_243AC1468();
  __swift_project_value_buffer(v6, qword_27EDA14A8);
  v7 = sub_243AC1448();
  v8 = sub_243AC2B78();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_243A1B000, v7, v8, a3, v9, 2u);
    MEMORY[0x245D47D20](v9, -1, -1);
  }

  if (a1)
  {
    v10 = a2;

    v11 = sub_243AC1448();
    v12 = sub_243AC2B78();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18 = v14;
      *v13 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98FC8, &qword_243AC5810);
      v15 = sub_243AC2C28();
      v17 = sub_243AB73D8(v15, v16, &v18);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_243A1B000, v11, v12, "Handling private relay status change notification: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x245D47D20](v14, -1, -1);
      MEMORY[0x245D47D20](v13, -1, -1);
    }

    sub_243A34E44(0, 1);
  }
}

uint64_t sub_243A48B60()
{
  MEMORY[0x245D47DE0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_243A48BA0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_243A33068;

  return sub_243A77CD0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_243A48C68()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_243A48CAC()
{
  swift_unknownObjectRelease();

  if (*(v0 + 64))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_243A48D0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_243A1FEA8;

  return sub_243AA4C94(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_361Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_243A48E80(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_243A33068;

  return sub_243A6AC64(a1, v4);
}

uint64_t sub_243A48F38()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_243A48F8C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v1 == 1)
  {
    sub_243A3AFF0();
  }

  v3 = *(v2 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationTaskGroup);

  dispatch_group_leave(v3);
}

uint64_t sub_243A48FD8()
{
  swift_unknownObjectRelease();

  if (*(v0 + 56))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_243A49038(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_243A33068;

  return sub_243AA37A0(a1, v4, v5, v6, v7, v8, v9, v10);
}

id sub_243A49130(id *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
  return v3;
}

uint64_t sub_243A49190(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_243AC2EE8() & 1;
  }
}

uint64_t sub_243A491E8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_11Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_243A492A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_243A33068;

  return sub_243A366C8(a1, v4, v5, v7, v6);
}

uint64_t sub_243A49368()
{

  return MEMORY[0x2821FE8E8](v0, 26, 7);
}

uint64_t sub_243A493B0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_243A49408(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_243A33068;

  return sub_243A242D4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_15Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 74, 7);
}

uint64_t sub_243A49590(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_243A33068;

  return sub_243A3558C(a1, v4, v5, v6);
}

uint64_t sub_243A49654(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_243A33068;

  return sub_243A35940(a1, v4, v5, v6);
}

uint64_t sub_243A49708(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_243A33068;

  return sub_243A347BC(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_0(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return MEMORY[0x2821FE8E8](v2, 40, 7);
}

uint64_t objectdestroy_222Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

void sub_243A499E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99010, &qword_243AC59B0);
  v105 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v106 = &v91 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99080, &qword_243AC5C28);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v91 - v7;
  v9 = sub_243AC1528();
  v107 = *(v9 - 8);
  v108 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v104 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v91 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v91 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v91 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v91 - v21;
  v23 = v4;
  sub_243AC14D8();
  v99 = v17;
  v100 = v20;
  v24 = a1;
  v98 = v14;
  v101 = a2;
  v102 = v23;
  v26 = v107;
  v25 = v108;
  (*(v107 + 56))(v8, 0, 1, v108);
  v27 = *(v26 + 32);
  v27(v22, v8, v25);
  static AccountEmailAddress.create(with:)(v22, v109);
  v103 = v27;
  v28 = v109[1];
  v97 = v109[2];
  v29 = *(type metadata accessor for ToggleEmailAddressAction(0) + 24);
  v30 = v24;
  v31 = v100;
  sub_243AC14D8();
  v32 = 0x27ED98000;
  v96 = v28;
  v92 = v30;
  v93 = v29;
  v94 = v22;
  v95 = 0;
  v33 = *(v26 + 16);
  v34 = v99;
  v35 = v108;
  v33(v99, v31, v108);
  if ((*(v26 + 88))(v34, v35) != *MEMORY[0x277D23278])
  {

    v43 = *(v26 + 8);
    v43(v34, v35);
    type metadata accessor for DecodableStateError(0);
    sub_243A4C740(&qword_27ED98D50, type metadata accessor for DecodableStateError, &unk_243AC6B78);
    v44 = swift_allocError();
    v46 = v45;
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C50, &unk_243AC4CB0) + 48);
    v33(v46, v31, v35);
    v48 = v44;
    *&v46[v47] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D18, &unk_243AC4ED0);
    swift_willThrow();
    v43(v31, v35);
    v43(v94, v35);
    goto LABEL_26;
  }

  v36 = *(v26 + 8);
  v100 = (v26 + 8);
  v91 = v36;
  v36(v31, v35);
  (*(v26 + 96))(v34, v35);
  v37 = *(*v34 + 16);

  v38 = *(v37 + 16);
  if (v38)
  {
    v109[0] = MEMORY[0x277D84F90];
    sub_243A64F74(0, v38, 0);
    v39 = v109[0];
    v40 = *(v109[0] + 16);
    v41 = v92;
    do
    {
      v109[0] = v39;
      v42 = *(v39 + 3);
      if (v40 >= v42 >> 1)
      {
        sub_243A64F74((v42 > 1), v40 + 1, 1);
        v39 = v109[0];
      }

      *(v39 + 2) = v40 + 1;
      v39[v40++ + 32] = 0;
      --v38;
    }

    while (v38);
  }

  else
  {

    v39 = MEMORY[0x277D84F90];
    v41 = v92;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = v95;
  v51 = v93;
  if (isUniquelyReferenced_nonNull_native)
  {
    v52 = v97;
    if ((v97 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v39 = sub_243A4CDD4(v39);
  v52 = v97;
  if (v97 < 0)
  {
    goto LABEL_33;
  }

LABEL_12:
  if (v52 >= *(v39 + 2))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v38 = (v39 + 32);
  v39[v52 + 32] = (v39[v52 + 32] & 1) == 0;
  if (qword_27ED98910 != -1)
  {
LABEL_35:
    swift_once();
  }

  v53 = sub_243AC1468();
  __swift_project_value_buffer(v53, qword_27EDA14A8);

  v54 = sub_243AC1448();
  v55 = sub_243AC2B48();
  if (os_log_type_enabled(v54, v55))
  {
    LODWORD(v99) = v55;
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v109[0] = v57;
    *v56 = 134218498;
    v58 = v97;
    *(v56 + 4) = v97;
    *(v56 + 12) = 1024;
    if (v58 >= *(v39 + 2))
    {
      __break(1u);
      return;
    }

    v59 = v57;
    v60 = *(v38 + v58);

    *(v56 + 14) = v60;

    *(v56 + 18) = 2080;

    v62 = MEMORY[0x245D46D70](v61, MEMORY[0x277D839B0]);
    v64 = v63;

    v65 = sub_243AB73D8(v62, v64, v109);

    *(v56 + 20) = v65;
    _os_log_impl(&dword_243A1B000, v54, v99, "Toggle Account, setting selected account idx %ld selected: %{BOOL}d. New list: %s", v56, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_1(v59);
    MEMORY[0x245D47D20](v59, -1, -1);
    MEMORY[0x245D47D20](v56, -1, -1);

    v50 = v95;
    v51 = v93;
    v41 = v92;
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v66 = v105;
  v67 = v41 + v51;
  v68 = v102;
  (*(v105 + 16))(v106, v67, v102);
  v69 = *(v39 + 2);
  v70 = v108;
  if (v69)
  {
    v109[0] = MEMORY[0x277D84F90];

    sub_243A64F54(0, v69, 0);
    v71 = 32;
    v72 = v109[0];
    v73 = v104;
    do
    {
      sub_243AC2A18();
      v109[0] = v72;
      v75 = *(v72 + 16);
      v74 = *(v72 + 24);
      if (v75 >= v74 >> 1)
      {
        sub_243A64F54((v74 > 1), v75 + 1, 1);
        v72 = v109[0];
      }

      *(v72 + 16) = v75 + 1;
      v103(v72 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v75, v73, v70);
      ++v71;
      --v69;
    }

    while (v69);

    v50 = v95;
    v68 = v102;
    v66 = v105;
  }

  v76 = v98;
  sub_243AC29E8();

  v77 = v106;
  sub_243AC15D8();
  v78 = v94;
  if (!v50)
  {
    v89 = v76;
    v90 = v91;
    v91(v89, v70);
    (*(v66 + 8))(v77, v68);
    v90(v78, v70);

    return;
  }

  v48 = v50;
  v79 = v76;
  v80 = v91;
  v91(v79, v70);
  (*(v66 + 8))(v77, v68);
  v80(v78, v70);

  v32 = 0x27ED98000uLL;
LABEL_26:
  if (*(v32 + 2320) != -1)
  {
    swift_once();
  }

  v81 = sub_243AC1468();
  __swift_project_value_buffer(v81, qword_27EDA14A8);
  v82 = v48;
  v83 = sub_243AC1448();
  v84 = sub_243AC2B58();

  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    *v85 = 138412290;
    v87 = v48;
    v88 = _swift_stdlib_bridgeErrorToNSError();
    *(v85 + 4) = v88;
    *v86 = v88;
    _os_log_impl(&dword_243A1B000, v83, v84, "Toggle Account: Error while toggling account, %@", v85, 0xCu);
    sub_243A2251C(v86, &qword_27ED98BF8, &unk_243AC6150);
    MEMORY[0x245D47D20](v86, -1, -1);
    MEMORY[0x245D47D20](v85, -1, -1);
  }

  else
  {
  }
}

uint64_t ToggleEmailAddressAction.modifyView(_:with:localStore:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for ToggleEmailAddressAction(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243A4BED8(v4, v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  sub_243A4BF40(v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  *(v13 + ((v10 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  a3[3] = sub_243AC1878();
  v15[0] = v11;
  v15[1] = MEMORY[0x277CE0790];
  a3[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a3);

  sub_243AC1F58();
}

void sub_243A4A6B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_243AC1528();
  v80 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v69 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v69 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v69 - v14;
  v16 = *(type metadata accessor for ToggleEmailAddressAction(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99010, &qword_243AC59B0);
  sub_243AC14D8();
  v81 = 0;
  v17 = a1;
  v79 = v16;
  v71 = v7;
  v18 = v80;
  v20 = v80 + 16;
  v19 = *(v80 + 2);
  v19(v13, v15, v4);
  v21 = (*(v18 + 11))(v13, v4);
  v24 = *(v18 + 1);
  v23 = v18 + 8;
  v22 = v24;
  if (v21 != *MEMORY[0x277D23278])
  {
    v40 = v22;
    v22(v13, v4);
    type metadata accessor for DecodableStateError(0);
    sub_243A4C740(&qword_27ED98D50, type metadata accessor for DecodableStateError, &unk_243AC6B78);
    v81 = swift_allocError();
    v42 = v41;
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C50, &unk_243AC4CB0) + 48);
    v19(v42, v15, v4);
    *&v42[v43] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D18, &unk_243AC4ED0);
    swift_willThrow();
    v40(v15, v4);
    goto LABEL_27;
  }

  v75 = v19;
  v76 = v20;
  v78 = v22;
  v22(v15, v4);
  (*(v80 + 12))(v13, v4);
  v25 = *(*v13 + 16);

  v26 = *(v25 + 16);
  v72 = v17;
  v73 = a2;
  v74 = v23;
  if (v26)
  {
    v27 = v80[80];
    v70 = v25;
    v28 = v25 + ((v27 + 32) & ~v27);
    v77 = *(v80 + 9);
    v80 = MEMORY[0x277D84F90];
    v29 = v75;
    (v75)(v10, v28, v4);
    while (1)
    {
      v30 = v81;
      static AccountEmailAddress.create(with:)(v10, v82);
      v81 = v30;
      if (v30)
      {

        v78(v10, v4);
        v81 = 0;
      }

      else
      {
        v31 = v4;
        v78(v10, v4);
        v32 = v82[0];
        v33 = v82[1];
        v34 = v82[2];
        v35 = v83;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v80 = sub_243AA0428(0, *(v80 + 2) + 1, 1, v80);
        }

        v37 = *(v80 + 2);
        v36 = *(v80 + 3);
        if (v37 >= v36 >> 1)
        {
          v80 = sub_243AA0428((v36 > 1), v37 + 1, 1, v80);
        }

        v38 = v80;
        *(v80 + 2) = v37 + 1;
        v39 = &v38[32 * v37];
        *(v39 + 4) = v32;
        *(v39 + 5) = v33;
        *(v39 + 6) = v34;
        v39[56] = v35;
        v4 = v31;
        v29 = v75;
      }

      v28 += v77;
      if (!--v26)
      {
        break;
      }

      v29(v10, v28, v4);
    }

    v44 = v80;
  }

  else
  {

    v44 = MEMORY[0x277D84F90];
  }

  v45 = *(v44 + 2);
  if (!v45)
  {

LABEL_25:
    sub_243A4C480();
    v57 = v71;
    sub_243AC29E8();

    v58 = v81;
    sub_243AC15D8();
    v81 = v58;
    if (!v58)
    {
      v78(v57, v4);
      return;
    }

    v78(v57, v4);
LABEL_27:
    if (qword_27ED98910 == -1)
    {
      goto LABEL_28;
    }

    goto LABEL_34;
  }

  v70 = v4;
  v82[0] = MEMORY[0x277D84F90];

  sub_243A64F94(0, v45, 0);
  v46 = 0;
  v47 = *(v44 + 2);
  v48 = v82[0];
  v49 = (v44 + 48);
  v76 = v45;
  v77 = v47;
  v75 = v47 - 1;
  v50 = v44;
  while (v77 != v46)
  {
    if (v46 >= *(v50 + 2))
    {
      goto LABEL_33;
    }

    v51 = *(v49 - 1);
    v80 = *(v49 - 2);
    v52 = *v49;
    v53 = v75 != v46;
    v82[0] = v48;
    v55 = *(v48 + 16);
    v54 = *(v48 + 24);

    if (v55 >= v54 >> 1)
    {
      sub_243A64F94((v54 > 1), v55 + 1, 1);
      v48 = v82[0];
    }

    ++v46;
    *(v48 + 16) = v55 + 1;
    v56 = v48 + 32 * v55;
    *(v56 + 32) = v80;
    *(v56 + 40) = v51;
    *(v56 + 48) = v52;
    *(v56 + 56) = v53;
    v49 += 4;
    if (v76 == v46)
    {
      swift_bridgeObjectRelease_n();
      v4 = v70;
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  swift_once();
LABEL_28:
  v59 = sub_243AC1468();
  __swift_project_value_buffer(v59, qword_27EDA14A8);
  v60 = v81;
  v61 = v81;
  v62 = sub_243AC1448();
  v63 = sub_243AC2B58();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v64 = 138412290;
    v66 = v81;
    v67 = v81;
    v68 = _swift_stdlib_bridgeErrorToNSError();
    *(v64 + 4) = v68;
    *v65 = v68;
    _os_log_impl(&dword_243A1B000, v62, v63, "Toggle Account: Error while updating store on appear, %@", v64, 0xCu);
    sub_243A2251C(v65, &qword_27ED98BF8, &unk_243AC6150);
    MEMORY[0x245D47D20](v65, -1, -1);
    MEMORY[0x245D47D20](v64, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_243A4AE20()
{
  sub_243AC2FB8();
  sub_243AC28A8();

  return sub_243AC2FD8();
}

uint64_t sub_243A4AEE8(uint64_t a1)
{
  sub_243AC28A8();
}

uint64_t sub_243A4AF9C(uint64_t a1)
{
  sub_243AC2FB8();
  sub_243AC28A8();

  return sub_243AC2FD8();
}

unint64_t sub_243A4B060@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_243A4C434(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_243A4B090(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x746E756F636361;
  v4 = 0xD000000000000011;
  v5 = 0x8000000243ACBA40;
  if (*v1 != 2)
  {
    v4 = 0xD00000000000001CLL;
    v5 = 0x8000000243ACBA60;
  }

  if (*v1)
  {
    v3 = 0x73746E756F636361;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_243A4B114()
{
  v1 = 0x746E756F636361;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    v1 = 0x73746E756F636361;
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

unint64_t sub_243A4B194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_243A4C434(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_243A4B1BC(uint64_t a1)
{
  v2 = sub_243A4BFBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243A4B1F8(uint64_t a1)
{
  v2 = sub_243A4BFBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ToggleEmailAddressAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99010, &qword_243AC59B0);
  v35 = *(v37 - 8);
  v3 = MEMORY[0x28223BE20](v37);
  v34 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v28 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v28 - v9;
  MEMORY[0x28223BE20](v8);
  v36 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99018, qword_243AC59B8);
  v38 = *(v12 - 8);
  v39 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  v15 = type metadata accessor for ToggleEmailAddressAction(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243A4BFBC();
  v40 = v14;
  v18 = v41;
  sub_243AC2FE8();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = v7;
  v32 = v10;
  v41 = v17;
  v45 = 0;
  v19 = sub_243A491E8(&qword_27ED99028, &qword_27ED99010, &qword_243AC59B0, MEMORY[0x277D23238]);
  v21 = v36;
  v20 = v37;
  v22 = v39;
  sub_243AC2E88();
  v36 = *(v35 + 32);
  (v36)(v41, v21, v20);
  v44 = 1;
  v23 = v32;
  v30 = v19;
  sub_243AC2E88();
  v29 = v15;
  v24 = v41;
  (v36)(&v41[*(v15 + 20)], v23, v20);
  v43 = 2;
  v25 = v31;
  sub_243AC2E88();
  (v36)(v24 + *(v29 + 24), v25, v20);
  v42 = 3;
  v26 = v34;
  sub_243AC2E88();
  (*(v38 + 8))(v40, v22);
  (v36)(v24 + *(v29 + 28), v26, v20);
  sub_243A4BED8(v24, v33);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_243A4C010(v24);
}

uint64_t sub_243A4B77C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_243A1FEA8;

  return MEMORY[0x2821820C8](a1, a2, a3);
}

uint64_t sub_243A4B82C(uint64_t a1)
{
  sub_243A4BAF8(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_243A4B8A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v11 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_243A4BED8(v5, v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  sub_243A4BF40(v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  *(v13 + ((v9 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  a4[3] = sub_243AC1878();
  v15[0] = v11;
  v15[1] = MEMORY[0x277CE0790];
  a4[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a4);

  sub_243AC1F58();
}

uint64_t sub_243A4BAF8(uint64_t a1)
{
  v2 = sub_243AC2178();
  v19 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_243AC21A8();
  v17 = *(v5 - 8);
  v18 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ToggleEmailAddressAction(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_243A4C4D4();
  v11 = sub_243AC2BC8();
  sub_243A4BED8(v16, &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  sub_243A4BF40(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  *(v13 + ((v10 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  aBlock[4] = sub_243A4C670;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243A71700;
  aBlock[3] = &block_descriptor_1;
  v14 = _Block_copy(aBlock);

  sub_243AC2198();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_243A4C740(&qword_27ED99860, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F90, &qword_243AC5C20);
  sub_243A491E8(&qword_27ED99870, &qword_27ED98F90, &qword_243AC5C20, MEMORY[0x277D83970]);
  sub_243AC2C78();
  MEMORY[0x245D46FA0](0, v7, v4, v14);
  _Block_release(v14);

  (*(v19 + 8))(v4, v2);
  return (*(v17 + 8))(v7, v18);
}

uint64_t type metadata accessor for ToggleEmailAddressAction(uint64_t a1)
{
  result = qword_27ED99040;
  if (!qword_27ED99040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_243A4BED8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToggleEmailAddressAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243A4BF40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToggleEmailAddressAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_243A4BFBC()
{
  result = qword_27ED99020;
  if (!qword_27ED99020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99020);
  }

  return result;
}

uint64_t sub_243A4C010(uint64_t a1)
{
  v2 = type metadata accessor for ToggleEmailAddressAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243A4C110(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99010, &qword_243AC59B0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_243A4C19C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99010, &qword_243AC59B0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_243A4C218(uint64_t a1)
{
  sub_243A4C288(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_243A4C288(uint64_t a1)
{
  if (!qword_27ED99050)
  {
    sub_243AC1528();
    sub_243A4C740(&qword_27ED98A78, MEMORY[0x277D232B0], MEMORY[0x277D232C0]);
    v1 = sub_243AC14E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27ED99050);
    }
  }
}

unint64_t sub_243A4C330()
{
  result = qword_27ED99058;
  if (!qword_27ED99058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99058);
  }

  return result;
}

unint64_t sub_243A4C388()
{
  result = qword_27ED99060;
  if (!qword_27ED99060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99060);
  }

  return result;
}

unint64_t sub_243A4C3E0()
{
  result = qword_27ED99068;
  if (!qword_27ED99068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99068);
  }

  return result;
}

unint64_t sub_243A4C434(uint64_t a1, uint64_t a2)
{
  v2 = sub_243AC2E58();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_243A4C480()
{
  result = qword_27ED99078;
  if (!qword_27ED99078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99078);
  }

  return result;
}

unint64_t sub_243A4C4D4()
{
  result = qword_27ED995D0;
  if (!qword_27ED995D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ED995D0);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = (type metadata accessor for ToggleEmailAddressAction(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99010, &qword_243AC59B0);
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  v7(v5 + v1[7], v6);
  v7(v5 + v1[8], v6);
  v7(v5 + v1[9], v6);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_243A4C688(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for ToggleEmailAddressAction(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243A4C740(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_243A4C794()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  return v1;
}

BOOL sub_243A4C808(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  v4 = v30[0];
  if (v30[0] >> 62)
  {
    goto LABEL_29;
  }

  v29 = v30[0] & 0xFFFFFFFFFFFFFF8;
  v5 = *((v30[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v6 = v5 != 0;
  if (v5)
  {
    v7 = 0;
    v28 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x245D470F0](v7, v4);
      }

      else
      {
        if (v7 >= *(v29 + 16))
        {
          goto LABEL_27;
        }

        v8 = *(v4 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        v29 = v4 & 0xFFFFFFFFFFFFFF8;
        v5 = sub_243AC2DF8();
        goto LABEL_3;
      }

      v11 = [v8 identifier];
      v12 = sub_243AC2858();
      v14 = v13;

      if (v12 == a1 && v14 == a2)
      {
        break;
      }

      v16 = sub_243AC2EE8();

      if (v16)
      {
LABEL_17:
        swift_getKeyPath();
        swift_getKeyPath();
        v27 = sub_243AC1698();
        v18 = v17;
        v19 = *v17;
        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        *v18 = v19;
        if (!isUniquelyReferenced_nonNull_bridgeObject || (v19 & 0x8000000000000000) != 0 || (v19 & 0x4000000000000000) != 0)
        {
          v19 = sub_243A4CD70(v19);
          *v18 = v19;
        }

        v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v22 = v21 - v7;
        if (v21 <= v7)
        {
          goto LABEL_28;
        }

        v26 = v21 - 1;
        v23 = (v19 & 0xFFFFFFFFFFFFFF8) + 8 * v7;
        v24 = *(v23 + 0x20);
        memmove((v23 + 32), (v23 + 40), 8 * v22 - 8);
        *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) = v26;
        *v18 = v19;

        v27(v30, 0);

        v28 = 1;
        v7 = v10;
        if (v10 == v5)
        {
          v6 = 1;
          goto LABEL_25;
        }
      }

      else
      {

        ++v7;
        if (v10 == v5)
        {
          v6 = v28;
          goto LABEL_25;
        }
      }
    }

    goto LABEL_17;
  }

LABEL_25:

  return v6;
}

uint64_t sub_243A4CAC4()
{
  v1 = OBJC_IVAR____TtC21CloudRecommendationUI30RecommendationSectionViewModel__recommendations;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98E20, &qword_243AC51E0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RecommendationSectionViewModel(uint64_t a1)
{
  result = qword_27ED99098;
  if (!qword_27ED99098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243A4CBD0(uint64_t a1)
{
  sub_243A4CC7C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_243A4CC7C(uint64_t a1)
{
  if (!qword_27ED98F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED98F40, &qword_243AC52E0);
    v1 = sub_243AC16C8();
    if (!v2)
    {
      atomic_store(v1, &qword_27ED98F38);
    }
  }
}

uint64_t sub_243A4CCE0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for RecommendationSectionViewModel(0);
  result = sub_243AC2D18();
  *a2 = result;
  return result;
}

uint64_t sub_243A4CD24@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for RecommendationSectionViewModel(0);
  result = sub_243AC1668();
  *a2 = result;
  return result;
}

uint64_t sub_243A4CD70(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_243AC2DF8();
  }

  return sub_243AC2D38();
}

uint64_t sub_243A4CE04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED990A8, qword_243AC5D50);
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

uint64_t sub_243A4CEE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED990A8, qword_243AC5D50);
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

uint64_t type metadata accessor for RecommendationsCardList(uint64_t a1)
{
  result = qword_27ED990B0;
  if (!qword_27ED990B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243A4CFF0(uint64_t a1)
{
  sub_243A4D0F4(319, &qword_27ED990C0, MEMORY[0x277D7EC08], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_243A4D0F4(319, &qword_27ED990C8, type metadata accessor for RecommendationSectionViewModel, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_243A4D158();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_243A4D0F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_243A4D158()
{
  result = qword_27ED990D0;
  if (!qword_27ED990D0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27ED990D0);
  }

  return result;
}

uint64_t sub_243A4D1C4@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_243AC1A28();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED990D8, &qword_243AC8670);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_243A50674(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_243AC13A8();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_243AC2B68();
    v13 = sub_243AC1C28();
    sub_243AC1438();

    sub_243AC1A18();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_243A4D3AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_243AC1728();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED990F8, &qword_243AC5E00);
  v34 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v33 - v11;
  v13 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  if (v37 >> 62)
  {
    v30 = sub_243AC2DF8();

    if (v30)
    {
      goto LABEL_3;
    }

LABEL_5:
    v29 = 1;
    goto LABEL_6;
  }

  v14 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v14)
  {
    goto LABEL_5;
  }

LABEL_3:
  v33[2] = v33;
  MEMORY[0x28223BE20](v15);
  v33[1] = &v33[-4];
  v33[-2] = v13;
  v33[-1] = a2;
  v16 = [*(v13 + OBJC_IVAR____TtC21CloudRecommendationUI30RecommendationSectionViewModel_sectionModel) sectionHeader];
  v17 = sub_243AC2858();
  v19 = v18;

  v37 = v17;
  v38 = v19;
  sub_243A4FC18();
  v37 = sub_243AC1D88();
  v38 = v20;
  v39 = v21 & 1;
  v40 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99190, &qword_243AC5E88);
  v23 = v7;
  v24 = v10;
  v25 = v6;
  v26 = a3;
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99108, &qword_243AC5E08);
  v28 = sub_243A50728(&qword_27ED99110, &qword_27ED99108, &qword_243AC5E08, sub_243A4F914);
  v35 = v27;
  v36 = v28;
  a3 = v26;
  swift_getOpaqueTypeConformance2();
  sub_243AC2108();
  (*(v23 + 104))(v9, *MEMORY[0x277CDF350], v25);
  sub_243A4F80C();
  sub_243AC1EB8();
  (*(v23 + 8))(v9, v25);
  (*(v34 + 8))(v12, v24);
  v29 = 0;
LABEL_6:
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99198, &unk_243AC5E90);
  return (*(*(v31 - 8) + 56))(a3, v29, 1, v31);
}

uint64_t sub_243A4D7B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15 = a3;
  v5 = type metadata accessor for RecommendationsCardList(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99108, &qword_243AC5E08);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  sub_243A4F664(a2, &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  sub_243A4FF8C(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for RecommendationsCardList);
  *(v13 + ((v7 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F40, &qword_243AC52E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99120, &qword_243AC5E10);
  sub_243A491E8(&qword_27ED991A0, &qword_27ED98F40, &qword_243AC52E0, MEMORY[0x277D83980]);
  sub_243A4F914();
  sub_243A4FE7C(&qword_27ED991A8, sub_243A4FEC4, MEMORY[0x277CFB100]);
  sub_243AC20F8();
  sub_243AC1788();
  sub_243A50728(&qword_27ED99110, &qword_27ED99108, &qword_243AC5E08, sub_243A4F914);
  sub_243AC1EC8();
  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_243A4DAFC@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v116 = a3;
  v113 = a4;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99178, &qword_243AC5E38);
  v6 = MEMORY[0x28223BE20](v112);
  v104 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v105 = &v95 - v8;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED991B0, &qword_243AC5EA0);
  MEMORY[0x28223BE20](v110);
  v111 = &v95 - v9;
  v10 = type metadata accessor for RecommendationsCardList(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8);
  v114 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v95 - v14;
  v115 = type metadata accessor for Card(0);
  v16 = MEMORY[0x28223BE20](v115);
  v18 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  KeyPath = &v95 - v19;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99138, &unk_243AC5E20);
  v21 = MEMORY[0x28223BE20](v106);
  v101 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v99 = &v95 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED991B8, &qword_243AC5EA8);
  v107 = *(v24 - 8);
  v108 = v24;
  v25 = MEMORY[0x28223BE20](v24);
  v100 = &v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v98 = &v95 - v27;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99130, &qword_243AC5E18);
  v28 = MEMORY[0x28223BE20](v109);
  v103 = &v95 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v97 = &v95 - v31;
  MEMORY[0x28223BE20](v30);
  v102 = &v95 - v32;
  v33 = *a1;
  v34 = [v33 completed];
  sub_243A4F664(a2, v15);
  v35 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v36 = v35 + v12;
  if (v34)
  {
    v37 = swift_allocObject();
    sub_243A4FF8C(v15, v37 + v35, type metadata accessor for RecommendationsCardList);
    v38 = v114;
    sub_243A4F664(a2, v114);
    v39 = swift_allocObject();
    sub_243A4FF8C(v38, v39 + v35, type metadata accessor for RecommendationsCardList);
    v117 = v33;
    sub_243A4FEC4();
    v40 = v33;
    sub_243AC2058();
    v41 = v119;
    *KeyPath = v118;
    *(KeyPath + 1) = v41;
    *(KeyPath + 4) = 1;
    LOBYTE(v117) = 0;
    sub_243AC2058();
    v42 = v119;
    KeyPath[24] = v118;
    *(KeyPath + 4) = v42;
    *(KeyPath + 5) = sub_243A507B4;
    *(KeyPath + 6) = v37;
    *(KeyPath + 7) = sub_243A503B8;
    *(KeyPath + 8) = v39;
    v43 = *(v115 + 48);
    *&KeyPath[v43] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED991C0, &unk_243AC5EE0);
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    swift_getKeyPath();
    v44 = v40;
    sub_243AC16A8();

    v45 = v118;
    if (v118 >> 62)
    {
      v46 = sub_243AC2DF8();
      if (v46)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v46 = *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v46)
      {
LABEL_4:
        v47 = __OFSUB__(v46, 1);
        result = v46 - 1;
        if (!v47)
        {
          if ((v45 & 0xC000000000000001) == 0)
          {
            if ((result & 0x8000000000000000) == 0)
            {
              if (result < *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v49 = *(v45 + 8 * result + 32);
                goto LABEL_9;
              }

              goto LABEL_36;
            }

            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }

LABEL_32:
          v49 = MEMORY[0x245D470F0](result, v45);
LABEL_9:
          v50 = v49;

          v51 = sub_243AC2C18();

          if (v51)
          {
            v52 = 0x4010000000000000;
LABEL_27:
            v85 = v99;
            sub_243A4FF8C(KeyPath, v99, type metadata accessor for Card);
            v86 = v85 + *(v106 + 36);
            *v86 = xmmword_243AC5D40;
            *(v86 + 16) = v52;
            *(v86 + 24) = 0;
            *(v86 + 32) = 0;
            sub_243A4FA94();
            v87 = v98;
            sub_243AC1DF8();
            sub_243A2251C(v85, &qword_27ED99138, &unk_243AC5E20);
            v88 = sub_243AC2138();
            v90 = v89;
            v91 = v97;
            v92 = &v97[*(v109 + 36)];
            sub_243A4EFE8(v44, v92);
            v93 = (v92 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99168, &qword_243AC5E30) + 36));
            *v93 = v88;
            v93[1] = v90;
            (*(v107 + 32))(v91, v87, v108);
            v94 = v102;
            sub_243A22814(v91, v102, &qword_27ED99130, &qword_243AC5E18);
            sub_243A224B4(v94, v111, &qword_27ED99130, &qword_243AC5E18);
            swift_storeEnumTagMultiPayload();
            sub_243A4F9A0();
            sub_243A4FB7C();
            sub_243AC1AE8();
            v82 = v94;
            v83 = &qword_27ED99130;
            v84 = &qword_243AC5E18;
            return sub_243A2251C(v82, v83, v84);
          }

LABEL_26:
          v52 = 0x4028000000000000;
          goto LABEL_27;
        }

        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }
    }

    goto LABEL_26;
  }

  v53 = swift_allocObject();
  v99 = v15;
  sub_243A4FF8C(v15, v53 + v35, type metadata accessor for RecommendationsCardList);
  v102 = a2;
  v54 = v114;
  sub_243A4F664(a2, v114);
  v55 = swift_allocObject();
  sub_243A4FF8C(v54, v55 + v35, type metadata accessor for RecommendationsCardList);
  v117 = v33;
  v44 = sub_243A4FEC4();
  v56 = v33;
  sub_243AC2058();
  v57 = v119;
  *v18 = v118;
  *(v18 + 1) = v57;
  *(v18 + 4) = 0;
  LOBYTE(v117) = 0;
  sub_243AC2058();
  v58 = v119;
  v18[24] = v118;
  *(v18 + 4) = v58;
  *(v18 + 5) = sub_243A4FF10;
  *(v18 + 6) = v53;
  *(v18 + 7) = sub_243A4FF14;
  *(v18 + 8) = v55;
  v59 = *(v115 + 48);
  *&v18[v59] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED991C0, &unk_243AC5EE0);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  v60 = v56;
  sub_243AC16A8();

  v45 = v118;
  if (v118 >> 62)
  {
    v61 = sub_243AC2DF8();
  }

  else
  {
    v61 = *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v62 = v102;
  v96 = v35;
  if (!v61)
  {

    goto LABEL_22;
  }

  v47 = __OFSUB__(v61, 1);
  result = v61 - 1;
  if (v47)
  {
    goto LABEL_31;
  }

  if ((v45 & 0xC000000000000001) != 0)
  {
    v63 = MEMORY[0x245D470F0](result, v45);
LABEL_19:
    v64 = v63;

    v65 = sub_243AC2C18();

    if (v65)
    {
      v66 = 0x4010000000000000;
LABEL_23:
      v67 = v101;
      sub_243A4FF8C(v18, v101, type metadata accessor for Card);
      v68 = v67 + *(v106 + 36);
      *v68 = xmmword_243AC5D40;
      *(v68 + 16) = v66;
      *(v68 + 24) = 0;
      *(v68 + 32) = 0;
      sub_243A4FA94();
      v69 = v100;
      sub_243AC1DF8();
      sub_243A2251C(v67, &qword_27ED99138, &unk_243AC5E20);
      v70 = sub_243AC2138();
      v72 = v71;
      v73 = v103;
      v74 = &v103[*(v109 + 36)];
      sub_243A4EFE8(v60, v74);
      v75 = (v74 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99168, &qword_243AC5E30) + 36));
      *v75 = v70;
      v75[1] = v72;
      (*(v107 + 32))(v73, v69, v108);
      v76 = v99;
      sub_243A4F664(v62, v99);
      v77 = swift_allocObject();
      sub_243A4FF8C(v76, v77 + v96, type metadata accessor for RecommendationsCardList);
      *(v77 + ((v36 + 7) & 0xFFFFFFFFFFFFFFF8)) = v60;
      v78 = v104;
      sub_243A22814(v73, v104, &qword_27ED99130, &qword_243AC5E18);
      v79 = (v78 + *(v112 + 36));
      *v79 = sub_243A50158;
      v79[1] = v77;
      v79[2] = 0;
      v79[3] = 0;
      v80 = v105;
      sub_243A22814(v78, v105, &qword_27ED99178, &qword_243AC5E38);
      sub_243A224B4(v80, v111, &qword_27ED99178, &qword_243AC5E38);
      swift_storeEnumTagMultiPayload();
      sub_243A4F9A0();
      sub_243A4FB7C();
      v81 = v60;
      sub_243AC1AE8();
      v82 = v80;
      v83 = &qword_27ED99178;
      v84 = &qword_243AC5E38;
      return sub_243A2251C(v82, v83, v84);
    }

LABEL_22:
    v66 = 0x4028000000000000;
    goto LABEL_23;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_35;
  }

  if (result < *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v63 = *(v45 + 8 * result + 32);
    goto LABEL_19;
  }

LABEL_37:
  __break(1u);
  return result;
}