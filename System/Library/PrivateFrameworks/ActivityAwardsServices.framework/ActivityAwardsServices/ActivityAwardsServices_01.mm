uint64_t sub_1DB118400(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC25F50, &unk_1DB128A70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DB118468()
{
  result = qword_1ECC261C8;
  if (!qword_1ECC261C8)
  {
    sub_1DB126070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC261C8);
  }

  return result;
}

uint64_t sub_1DB1184C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC25F50, &unk_1DB128A70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1DB118548(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DB118590(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DB1185EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26270, &unk_1DB127910);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_1DB126490();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = *a1;
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  v11 = *(a1 + 16);
  *(v10 + 32) = *a1;
  *(v10 + 48) = v11;
  *(v10 + 64) = *(a1 + 32);
  v12 = v6;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v13 = v7;
  v14 = v8;
  v15 = v9;
  sub_1DB1111A8(0, 0, v4, &unk_1DB127F80, v10);

  return 1701736260;
}

id sub_1DB118750(uint64_t a1)
{
  v1 = [*(a1 + 8) allAchievements];
  sub_1DB1086F0(0, &qword_1EDEC8CF0, 0x1E69898F8);
  sub_1DB11B480(&qword_1EDEC88F0, &qword_1EDEC8CF0, 0x1E69898F8);
  v2 = sub_1DB1264B0();

  sub_1DB118E28(v2);

  v3 = objc_allocWithZone(MEMORY[0x1E6989938]);
  sub_1DB1086F0(0, &qword_1EDEC8D10, 0x1E6989928);
  v4 = sub_1DB1263F0();

  v5 = [v3 initWithCodableAchievements_];

  return v5;
}

id sub_1DB1188F8(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E12823D0](a1);
  if (!v3)
  {
    sub_1DB126410();
    v3 = sub_1DB1263F0();
  }

  v4 = [*(a2 + 8) achievementsForTemplateNames_];

  sub_1DB1086F0(0, &qword_1EDEC8CF0, 0x1E69898F8);
  sub_1DB11B480(&qword_1EDEC88F0, &qword_1EDEC8CF0, 0x1E69898F8);
  v5 = sub_1DB1264B0();

  sub_1DB118E28(v5);

  v6 = objc_allocWithZone(MEMORY[0x1E6989938]);
  sub_1DB1086F0(0, &qword_1EDEC8D10, 0x1E6989928);
  v7 = sub_1DB1263F0();

  v8 = [v6 initWithCodableAchievements_];

  return v8;
}

uint64_t sub_1DB118A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 144) = a1;
  *(v4 + 152) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DB118A9C, 0, 0);
}

uint64_t sub_1DB118A9C()
{
  v1 = *(v0[19] + 16);
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_1DB118BBC;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26278, &qword_1DB127F88);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DB118D5C;
  v0[13] = &block_descriptor_0;
  v0[14] = v2;
  [v1 requestAwardingEvaluationWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DB118BBC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_1DB118CF0;
  }

  else
  {
    v2 = sub_1DB118CCC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB118CF0()
{
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB118D5C(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC26280, qword_1DB127F90);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_1DB118E28(uint64_t a1)
{
  v24 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1DB126680();
    result = MEMORY[0x1E69E7CC0];
    if (!v2)
    {
      return result;
    }

    v29 = MEMORY[0x1E69E7CC0];
    sub_1DB1267C0();
    result = sub_1DB126630();
    v26 = result;
    v27 = v4;
    v28 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return result;
  }

  v29 = MEMORY[0x1E69E7CC0];
  sub_1DB1267C0();
  result = sub_1DB126600();
  v5 = *(a1 + 36);
  v26 = result;
  v27 = v5;
  v28 = 0;
LABEL_7:
  v6 = 0;
  while (v6 < v2)
  {
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_31;
    }

    v10 = v26;
    v9 = v27;
    v11 = v28;
    sub_1DB119138(v26, v27, v28, a1);
    v13 = v12;
    v14 = ACHCodableFromAchievement();

    sub_1DB1267A0();
    sub_1DB1267D0();
    sub_1DB1267E0();
    result = sub_1DB1267B0();
    if (v24)
    {
      if (!v11)
      {
        goto LABEL_35;
      }

      if (sub_1DB126650())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26250, &qword_1DB127F60);
      v7 = sub_1DB1264D0();
      sub_1DB1266E0();
      result = v7(v25, 0);
      if (v6 == v2)
      {
LABEL_28:
        sub_1DB11B3B4(v26, v27, v28);
        return v29;
      }
    }

    else
    {
      if (v11)
      {
        goto LABEL_36;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v15 = 1 << *(a1 + 32);
      if (v10 >= v15)
      {
        goto LABEL_32;
      }

      v16 = v10 >> 6;
      v17 = *(a1 + 56 + 8 * (v10 >> 6));
      if (((v17 >> v10) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_34;
      }

      v18 = v17 & (-2 << (v10 & 0x3F));
      if (v18)
      {
        v15 = __clz(__rbit64(v18)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v16 << 6;
        v20 = v16 + 1;
        v21 = (a1 + 64 + 8 * v16);
        while (v20 < (v15 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            result = sub_1DB11B3B4(v10, v9, 0);
            v15 = __clz(__rbit64(v22)) + v19;
            goto LABEL_27;
          }
        }

        result = sub_1DB11B3B4(v10, v9, 0);
      }

LABEL_27:
      v26 = v15;
      v27 = v9;
      v28 = 0;
      if (v6 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
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
  return result;
}

void sub_1DB119138(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1E12820B0](a1, a2, v7);
      sub_1DB1086F0(0, &qword_1EDEC8CF0, 0x1E69898F8);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1DB1086F0(0, &qword_1EDEC8CF0, 0x1E69898F8);
    if (sub_1DB126660() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1DB126670();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_1DB126570();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_1DB126580();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

uint64_t sub_1DB11935C(uint64_t a1)
{
  if (qword_1EDEC89F8 != -1)
  {
    swift_once();
  }

  v1 = sub_1DB126230();
  __swift_project_value_buffer(v1, qword_1EDEC8A00);
  v2 = sub_1DB126210();
  v3 = sub_1DB126520();
  if (!os_log_type_enabled(v2, v3))
  {
    goto LABEL_6;
  }

  v4 = swift_slowAlloc();
  v5 = swift_slowAlloc();
  v12 = v5;
  *v4 = 136315138;
  result = ACHTriggerOptionsToString();
  if (result)
  {
    v7 = result;
    v8 = sub_1DB1262B0();
    v10 = v9;

    v11 = sub_1DB105B74(v8, v10, &v12);

    *(v4 + 4) = v11;
    _os_log_impl(&dword_1DB103000, v2, v3, "Received triggers %s!", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1E1282A30](v5, -1, -1);
    MEMORY[0x1E1282A30](v4, -1, -1);
LABEL_6:

    return 1;
  }

  __break(1u);
  return result;
}

id sub_1DB1194D4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DB1262A0();
  v5 = [a3 templatesForSource_];

  sub_1DB1086F0(0, &qword_1EDEC8910, 0x1E6989990);
  v6 = sub_1DB126410();

  if (v6 >> 62)
  {
    goto LABEL_14;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
LABEL_15:

    v13 = objc_allocWithZone(MEMORY[0x1E6989970]);
    sub_1DB1086F0(0, &qword_1EDEC88C8, 0x1E6989968);
    v14 = sub_1DB1263F0();

    v15 = [v13 initWithCodableTemplates_];

    return v15;
  }

LABEL_3:
  result = sub_1DB1267C0();
  if ((v7 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1E1282190](v9, v6);
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_13:
          __break(1u);
LABEL_14:
          v7 = sub_1DB126680();
          if (!v7)
          {
            goto LABEL_15;
          }

          goto LABEL_3;
        }

        if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v10 = *(v6 + 8 * v9 + 32);
      }

      v11 = v10;
      ++v9;
      v12 = ACHCodableFromTemplate();

      sub_1DB1267A0();
      sub_1DB1267D0();
      sub_1DB1267E0();
      sub_1DB1267B0();
      if (v7 == v9)
      {
        goto LABEL_15;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB1196D8(void *a1, void *a2, SEL *a3, const char *a4, ...)
{
  v42 = *MEMORY[0x1E69E9840];
  v8 = sub_1DB1260B0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![a1 templatesCount])
  {
    return 1;
  }

  v12 = [a1 templates];
  if (!v12)
  {
    return 1;
  }

  v32 = v9;
  v33 = a3;
  v34 = a2;
  v31 = a4;
  v37 = MEMORY[0x1E69E7CC0];
  v35 = v12;
  sub_1DB126560();
  sub_1DB11B428();
  sub_1DB1265B0();
  while (v41)
  {
    sub_1DB10C770(v40, v39);
    sub_1DB105D4C(v39, v38);
    sub_1DB1086F0(0, &qword_1EDEC88C8, 0x1E6989968);
    if (swift_dynamicCast())
    {
      v13 = v36;
      v14 = [objc_allocWithZone(MEMORY[0x1E6989990]) initWithCodable_];

      v15 = __swift_destroy_boxed_opaque_existential_1Tm(v39);
      if (v14)
      {
        MEMORY[0x1E1281DF0](v15);
        if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1DB126420();
        }

        sub_1DB126440();
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
    }

    sub_1DB1265B0();
  }

  (*(v32 + 8))(v11, v8);
  sub_1DB1086F0(0, &qword_1EDEC8910, 0x1E6989990);
  v16 = sub_1DB1263F0();

  v40[0] = 0;
  v17 = [v34 *v33];

  if (v17)
  {
    v18 = v40[0];

    return 1;
  }

  v20 = v40[0];
  v21 = sub_1DB126090();

  swift_willThrow();
  if (qword_1EDEC89F8 != -1)
  {
    swift_once();
  }

  v22 = sub_1DB126230();
  __swift_project_value_buffer(v22, qword_1EDEC8A00);
  v23 = v21;
  v24 = sub_1DB126210();
  v25 = sub_1DB126510();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v40[0] = v27;
    *v26 = 136315138;
    swift_getErrorValue();
    v28 = Error.logOutput.getter();
    v30 = sub_1DB105B74(v28, v29, v40);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_1DB103000, v24, v25, v31, v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x1E1282A30](v27, -1, -1);
    MEMORY[0x1E1282A30](v26, -1, -1);
  }

  else
  {
  }

  return 0;
}

id sub_1DB119B80(uint64_t a1, unint64_t a2, void *a3)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1DB1262A0();
  v21[0] = 0;
  v7 = [a3 removeTemplatesForSource:v6 error:v21];

  if (v7)
  {
    v8 = v21[0];
  }

  else
  {
    v9 = v21[0];
    v10 = sub_1DB126090();

    swift_willThrow();
    if (qword_1EDEC89F8 != -1)
    {
      swift_once();
    }

    v11 = sub_1DB126230();
    __swift_project_value_buffer(v11, qword_1EDEC8A00);

    v12 = v10;
    v13 = sub_1DB126210();
    v14 = sub_1DB126510();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21[0] = v16;
      *v15 = 136315394;
      *(v15 + 4) = sub_1DB105B74(a1, a2, v21);
      *(v15 + 12) = 2080;
      swift_getErrorValue();
      v17 = Error.logOutput.getter();
      v19 = sub_1DB105B74(v17, v18, v21);

      *(v15 + 14) = v19;
      _os_log_impl(&dword_1DB103000, v13, v14, "Error removing templates for source (%s): %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E1282A30](v16, -1, -1);
      MEMORY[0x1E1282A30](v15, -1, -1);
    }

    else
    {
    }
  }

  return v7;
}

id sub_1DB119DE0(uint64_t a1, void *a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1DB1263F0();
  v18[0] = 0;
  v4 = [a2 removeTemplatesWithUniqueNames:v3 error:v18];

  if (v4)
  {
    v5 = v18[0];
  }

  else
  {
    v6 = v18[0];
    v7 = sub_1DB126090();

    swift_willThrow();
    if (qword_1EDEC89F8 != -1)
    {
      swift_once();
    }

    v8 = sub_1DB126230();
    __swift_project_value_buffer(v8, qword_1EDEC8A00);
    v9 = v7;
    v10 = sub_1DB126210();
    v11 = sub_1DB126510();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18[0] = v13;
      *v12 = 136315138;
      swift_getErrorValue();
      v14 = Error.logOutput.getter();
      v16 = sub_1DB105B74(v14, v15, v18);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_1DB103000, v10, v11, "Error removing templates for unique names: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1E1282A30](v13, -1, -1);
      MEMORY[0x1E1282A30](v12, -1, -1);
    }

    else
    {
    }
  }

  return v4;
}

uint64_t sub_1DB119FFC(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1DB126680())
  {
    v4 = sub_1DB1086F0(0, &qword_1ECC261D0, 0x1E6989988);
    v5 = sub_1DB11B480(&qword_1ECC26268, &qword_1ECC261D0, 0x1E6989988);
    result = MEMORY[0x1E1281ED0](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1E1282190](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_1DB1177E8(&v12, v10);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_1DB126680();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1DB11A154(void *a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = sub_1DB1260B0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![a1 earnedInstancesCount])
  {
    return 1;
  }

  v8 = [a1 earnedInstances];
  if (!v8)
  {
    return 1;
  }

  v28 = v5;
  v29 = a2;
  v9 = MEMORY[0x1E69E7CC0];
  v32 = MEMORY[0x1E69E7CC0];
  v30 = v8;
  sub_1DB126560();
  sub_1DB11B428();
  sub_1DB1265B0();
  while (v36)
  {
    sub_1DB10C770(v35, v34);
    sub_1DB105D4C(v34, v33);
    sub_1DB1086F0(0, &qword_1ECC26260, 0x1E6989958);
    if (swift_dynamicCast())
    {
      v10 = v31;
      v11 = [objc_allocWithZone(MEMORY[0x1E6989988]) initWithCodable_];

      v12 = __swift_destroy_boxed_opaque_existential_1Tm(v34);
      if (v11)
      {
        MEMORY[0x1E1281DF0](v12);
        if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1DB126420();
        }

        sub_1DB126440();
        v9 = v32;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
    }

    sub_1DB1265B0();
  }

  (*(v28 + 8))(v7, v4);
  sub_1DB119FFC(v9);

  sub_1DB1086F0(0, &qword_1ECC261D0, 0x1E6989988);
  sub_1DB11B480(&qword_1ECC26268, &qword_1ECC261D0, 0x1E6989988);
  v13 = sub_1DB1264A0();

  v35[0] = 0;
  v14 = [v29 addEarnedInstances:v13 error:v35];

  if (v14)
  {
    v15 = v35[0];

    return 1;
  }

  v17 = v35[0];
  v18 = sub_1DB126090();

  swift_willThrow();
  if (qword_1EDEC89F8 != -1)
  {
    swift_once();
  }

  v19 = sub_1DB126230();
  __swift_project_value_buffer(v19, qword_1EDEC8A00);
  v20 = v18;
  v21 = sub_1DB126210();
  v22 = sub_1DB126510();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v35[0] = v24;
    *v23 = 136315138;
    swift_getErrorValue();
    v25 = Error.logOutput.getter();
    v27 = sub_1DB105B74(v25, v26, v35);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_1DB103000, v21, v22, "Error adding earned instances: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x1E1282A30](v24, -1, -1);
    MEMORY[0x1E1282A30](v23, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1DB11A618(void *a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = sub_1DB1260B0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![a1 earnedInstancesCount])
  {
    return 1;
  }

  v8 = [a1 earnedInstances];
  if (!v8)
  {
    return 1;
  }

  v27 = v5;
  v28 = a2;
  v31 = MEMORY[0x1E69E7CC0];
  v29 = v8;
  sub_1DB126560();
  sub_1DB11B428();
  sub_1DB1265B0();
  while (v35)
  {
    sub_1DB10C770(v34, v33);
    sub_1DB105D4C(v33, v32);
    sub_1DB1086F0(0, &qword_1ECC26260, 0x1E6989958);
    if (swift_dynamicCast())
    {
      v9 = v30;
      v10 = [objc_allocWithZone(MEMORY[0x1E6989988]) initWithCodable_];

      v11 = __swift_destroy_boxed_opaque_existential_1Tm(v33);
      if (v10)
      {
        MEMORY[0x1E1281DF0](v11);
        if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1DB126420();
        }

        sub_1DB126440();
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
    }

    sub_1DB1265B0();
  }

  (*(v27 + 8))(v7, v4);
  sub_1DB1086F0(0, &qword_1ECC261D0, 0x1E6989988);
  v12 = sub_1DB1263F0();

  v34[0] = 0;
  v13 = [v28 removeEarnedInstances:v12 error:v34];

  if (v13)
  {
    v14 = v34[0];

    return 1;
  }

  v16 = v34[0];
  v17 = sub_1DB126090();

  swift_willThrow();
  if (qword_1EDEC89F8 != -1)
  {
    swift_once();
  }

  v18 = sub_1DB126230();
  __swift_project_value_buffer(v18, qword_1EDEC8A00);
  v19 = v17;
  v20 = sub_1DB126210();
  v21 = sub_1DB126510();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v34[0] = v23;
    *v22 = 136315138;
    swift_getErrorValue();
    v24 = Error.logOutput.getter();
    v26 = sub_1DB105B74(v24, v25, v34);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_1DB103000, v20, v21, "Error adding earned instances: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x1E1282A30](v23, -1, -1);
    MEMORY[0x1E1282A30](v22, -1, -1);
  }

  else
  {
  }

  return 0;
}

BOOL sub_1DB11AAA4(uint64_t a1, unint64_t a2, void *a3)
{
  if (qword_1EDEC89F8 != -1)
  {
    swift_once();
  }

  v6 = sub_1DB126230();
  __swift_project_value_buffer(v6, qword_1EDEC8A00);

  v7 = sub_1DB126210();
  v8 = sub_1DB126520();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1DB105B74(a1, a2, &v18);
    _os_log_impl(&dword_1DB103000, v7, v8, "Received requestProgressUpdateForProgressProviderIdentifier -> %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1E1282A30](v10, -1, -1);
    MEMORY[0x1E1282A30](v9, -1, -1);
  }

  v11 = sub_1DB1262A0();
  v12 = [a3 providerWithIdentifier_];

  if (v12)
  {
    [a3 requestProgressUpdateForProgressProvider_];
    swift_unknownObjectRelease();
  }

  else
  {

    v13 = sub_1DB126210();
    v14 = sub_1DB126510();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1DB105B74(a1, a2, &v18);
      _os_log_impl(&dword_1DB103000, v13, v14, "Could not find progress provider with identifier: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1E1282A30](v16, -1, -1);
      MEMORY[0x1E1282A30](v15, -1, -1);
    }
  }

  return v12 != 0;
}

id sub_1DB11AD1C(uint64_t a1, void *a2)
{
  v3 = sub_1DB126010();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = ACHDateIntervalFromCodable();
  sub_1DB126000();

  v8 = sub_1DB125FF0();
  v9 = [a2 achievementsForDateInterval_];

  sub_1DB1086F0(0, &qword_1EDEC8CF0, 0x1E69898F8);
  sub_1DB11B480(&qword_1EDEC88F0, &qword_1EDEC8CF0, 0x1E69898F8);
  v10 = sub_1DB1264B0();

  sub_1DB118E28(v10);

  v11 = objc_allocWithZone(MEMORY[0x1E6989938]);
  sub_1DB1086F0(0, &qword_1EDEC8D10, 0x1E6989928);
  v12 = sub_1DB1263F0();

  v13 = [v11 initWithCodableAchievements_];

  (*(v4 + 8))(v6, v3);
  return v13;
}

id sub_1DB11AF04(uint64_t a1, void *a2)
{
  v31 = a2;
  v3 = sub_1DB126200();
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DB126070();
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v34 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DB126150();
  v32 = *(v8 - 8);
  v33 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = ACHDateFromCodable();
  sub_1DB126130();

  v12 = MEMORY[0x1E12823C0](a1);
  if (!v12)
  {
    sub_1DB126410();
    v12 = sub_1DB1263F0();
  }

  sub_1DB1261E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC26240, &qword_1DB127F58);
  v13 = sub_1DB1261F0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1DB127EB0;
  v18 = v17 + v16;
  v19 = *(v14 + 104);
  v19(v18, *MEMORY[0x1E6969A68], v13);
  v19(v18 + v15, *MEMORY[0x1E6969A78], v13);
  v19(v18 + 2 * v15, *MEMORY[0x1E6969A48], v13);
  sub_1DB12409C(v17);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v20 = v34;
  sub_1DB126190();

  (*(v29 + 8))(v5, v30);
  v21 = sub_1DB126020();
  v22 = [v31 anniversaryAchievementsForDateComponents:v21 templateUniqueNames:v12];

  sub_1DB1086F0(0, &qword_1EDEC8CF0, 0x1E69898F8);
  sub_1DB11B480(&qword_1EDEC88F0, &qword_1EDEC8CF0, 0x1E69898F8);
  v23 = sub_1DB1264B0();

  sub_1DB118E28(v23);

  v24 = objc_allocWithZone(MEMORY[0x1E6989938]);
  sub_1DB1086F0(0, &qword_1EDEC8D10, 0x1E6989928);
  v25 = sub_1DB1263F0();

  v26 = [v24 initWithCodableAchievements_];

  (*(v35 + 8))(v20, v36);
  (*(v32 + 8))(v10, v33);
  return v26;
}

uint64_t sub_1DB11B3B4(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_1DB11B3C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26258, &unk_1DB127F68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DB11B428()
{
  result = qword_1EDEC8CD0;
  if (!qword_1EDEC8CD0)
  {
    sub_1DB1260B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC8CD0);
  }

  return result;
}

uint64_t sub_1DB11B480(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1DB1086F0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DB11B4D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DB1064BC;

  return sub_1DB118A7C(a1, v4, v5, v1 + 32);
}

uint64_t sub_1DB11B5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = [objc_opt_self() standardUserDefaults];
  v9 = sub_1DB1262A0();
  v10 = [v8 persistentDomainForName_];

  if (v10)
  {
    v11 = sub_1DB126270();

    if (*(v11 + 16) && (v12 = sub_1DB10638C(a1, a2), (v13 & 1) != 0))
    {
      sub_1DB105D4C(*(v11 + 56) + 32 * v12, v16);

      if (swift_dynamicCast())
      {
        a5 = v15;
      }
    }

    else
    {
    }
  }

  return a5 & 1;
}

id sub_1DB11B720()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityAwardsQueryListener();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DB11B7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a1;
  v6[8] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DB11B7F8, 0, 0);
}

uint64_t sub_1DB11B7F8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = v0[9];
    v2 = v0[10];
    v4 = *(Strong + OBJC_IVAR____TtC22ActivityAwardsServices27ActivityAwardsQueryListener_endpoint);
    v0[11] = v4;
    v5 = Strong;
    v6 = v4;

    v7 = swift_task_alloc();
    v0[12] = v7;
    v7[2] = v6;
    v7[3] = 4;
    v7[4] = v3;
    v7[5] = v2;
    v8 = swift_task_alloc();
    v0[13] = v8;
    *v8 = v0;
    v8[1] = sub_1DB11B990;
    v9 = MEMORY[0x1E6969080];

    return MEMORY[0x1EEE6DE38](v0 + 5, 0, 0, 0xD000000000000016, 0x80000001DB128C70, sub_1DB109300, v7, v9);
  }

  else
  {
    *v0[7] = xmmword_1DB127FD0;
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1DB11B990()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1DB10A504;
  }

  else
  {

    v2 = sub_1DB11BAAC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB11BAAC()
{
  **(v0 + 56) = *(v0 + 40);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB11BB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26270, &unk_1DB127910);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1DB10CFA8(a3, v22 - v9);
  v11 = sub_1DB126490();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1DB10D064(v10);
  }

  else
  {
    sub_1DB126480();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1DB126450();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1DB1262C0() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC25F60, &qword_1DB127958);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC25F60, &qword_1DB127958);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1DB11BDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a1;
  v6[8] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DB11BDC4, 0, 0);
}

uint64_t sub_1DB11BDC4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = v0[9];
    v2 = v0[10];
    v4 = *(Strong + OBJC_IVAR____TtC22ActivityAwardsServices27ActivityAwardsQueryListener_endpoint);
    v0[11] = v4;
    v5 = Strong;
    v6 = v4;

    v7 = swift_task_alloc();
    v0[12] = v7;
    v7[2] = v6;
    v7[3] = 5;
    v7[4] = v3;
    v7[5] = v2;
    v8 = swift_task_alloc();
    v0[13] = v8;
    *v8 = v0;
    v8[1] = sub_1DB10A364;
    v9 = MEMORY[0x1E6969080];

    return MEMORY[0x1EEE6DE38](v0 + 5, 0, 0, 0xD000000000000016, 0x80000001DB128C70, sub_1DB1092F4, v7, v9);
  }

  else
  {
    *v0[7] = xmmword_1DB127FD0;
    v10 = v0[1];

    return v10();
  }
}

void *sub_1DB11BF88(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1DB11BFA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DB107E48;

  return sub_1DB11BDA0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1DB11C070(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DB1064BC;

  return sub_1DB11B7D4(a1, v4, v5, v6, v7, v8);
}

uint64_t ACHCodableAchievementProgressUpdateArray.serialized()()
{
  v1 = [v0 data];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DB126100();

  return v3;
}

uint64_t ACHCodableDateComponentsInterval.serialized()()
{
  v1 = [v0 data];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DB126100();

  return v3;
}

uint64_t ProxyError.hashValue.getter()
{
  v1 = *v0;
  sub_1DB1268E0();
  MEMORY[0x1E1282300](v1);
  return sub_1DB126900();
}

unint64_t sub_1DB11C2A8()
{
  result = qword_1ECC26310;
  if (!qword_1ECC26310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC26310);
  }

  return result;
}

uint64_t ACHCodableAchievement.serialized()()
{
  v1 = [v0 data];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DB126100();

  return v3;
}

uint64_t SerializableAchievementCollection.__allocating_init(achievements:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_1DB11C434()
{

  return swift_deallocClassInstance();
}

void sub_1DB11C4A0(void *a1, char a2)
{
  v3 = v2;
  v30[1] = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26270, &unk_1DB127910);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v30 - v7 + 32;
  if (a2)
  {
    v9 = sub_1DB126490();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = a1;
    v11 = a1;
    sub_1DB11CDE8(0, 0, v8, &unk_1DB128340, v10);
  }

  else
  {
    v12 = *(v3 + 16);
    v30[0] = 0;
    v13 = [v12 wheelchairUseWithError_];
    if (v13)
    {
      v14 = v13;
      v15 = v30[0];
      v16 = [v14 wheelchairUse];

      v17 = sub_1DB111A98(v16, [*(v3 + 32) isPregnant]);
      [*(v3 + 24) addNotificationRequest:v17 withCompletionHandler:0];
    }

    else
    {
      v18 = v30[0];
      v19 = sub_1DB126090();

      swift_willThrow();
      if (qword_1EDEC89F8 != -1)
      {
        swift_once();
      }

      v20 = sub_1DB126230();
      __swift_project_value_buffer(v20, qword_1EDEC8A00);
      v21 = v19;
      v22 = sub_1DB126210();
      v23 = sub_1DB126510();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v30[0] = v25;
        *v24 = 136315138;
        swift_getErrorValue();
        v26 = Error.logOutput.getter();
        v28 = sub_1DB105B74(v26, v27, v30);

        *(v24 + 4) = v28;
        _os_log_impl(&dword_1DB103000, v22, v23, "Failed to get wheelchair use for achievement notification %s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v25);
        MEMORY[0x1E1282A30](v25, -1, -1);
        MEMORY[0x1E1282A30](v24, -1, -1);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1DB11C808()
{
  if (qword_1EDEC89F8 != -1)
  {
    swift_once();
  }

  v1 = sub_1DB126230();
  v0[23] = __swift_project_value_buffer(v1, qword_1EDEC8A00);
  v2 = sub_1DB126210();
  v3 = sub_1DB126520();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DB103000, v2, v3, "Posting notification for standalone fitness mode", v4, 2u);
    MEMORY[0x1E1282A30](v4, -1, -1);
  }

  v5 = v0[22];

  v6 = [objc_allocWithZone(MEMORY[0x1E699DB50]) init];
  v0[24] = v6;
  v7 = [objc_allocWithZone(MEMORY[0x1E699DB58]) initWithAchievement_];
  v0[25] = v7;
  v0[2] = v0;
  v0[3] = sub_1DB11CA20;
  v8 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26320, &unk_1DB128360);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DB11CD3C;
  v0[13] = &block_descriptor_1;
  v0[14] = v8;
  [v6 postAchievementNotification:v7 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DB11CA20()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_1DB11CB94;
  }

  else
  {
    v2 = sub_1DB11CB30;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB11CB30()
{
  v1 = *(v0 + 192);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DB11CB94()
{
  v18 = v0;
  v1 = *(v0 + 208);
  swift_willThrow();
  v2 = v1;
  v3 = sub_1DB126210();
  v4 = sub_1DB126510();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 200);
    v5 = *(v0 + 208);
    v7 = *(v0 + 192);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = Error.logOutput.getter();
    v12 = sub_1DB105B74(v10, v11, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1DB103000, v3, v4, "Failed to post achievement notification %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1E1282A30](v9, -1, -1);
    MEMORY[0x1E1282A30](v8, -1, -1);
  }

  else
  {
    v13 = *(v0 + 208);
    v14 = *(v0 + 192);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1DB11CD3C(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC26280, qword_1DB127F90);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x1EEE6DEE0](v8);
  }
}

uint64_t sub_1DB11CDE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26270, &unk_1DB127910);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1DB10CFA8(a3, v25 - v10);
  v12 = sub_1DB126490();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1DB10D064(v11);
  }

  else
  {
    sub_1DB126480();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1DB126450();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1DB1262C0() + 32;
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

      sub_1DB10D064(a3);

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

  sub_1DB10D064(a3);
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

uint64_t sub_1DB11D0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26270, &unk_1DB127910);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1DB10CFA8(a3, v25 - v10);
  v12 = sub_1DB126490();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1DB10D064(v11);
  }

  else
  {
    sub_1DB126480();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1DB126450();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1DB1262C0() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26328, &qword_1DB128380);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_1DB10D064(a3);

      return v22;
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

  sub_1DB10D064(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26328, &qword_1DB128380);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1DB11D37C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DB1064BC;

  return sub_1DB11C7E8(a1, v4, v5, v6);
}

uint64_t sub_1DB11D430(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DB107E48;

  return sub_1DB105088(a1, v4);
}

uint64_t sub_1DB11D4E8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1DB11D5DC;

  return v5(v2 + 32);
}

uint64_t sub_1DB11D5DC()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1DB11D6F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DB107E48;

  return sub_1DB11D4E8(a1, v4);
}

uint64_t sub_1DB11D7A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DB1064BC;

  return sub_1DB11D4E8(a1, v4);
}

char *static Sandbox.bootstrap(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DB126430();
  *(v4 + 16) = 1024;
  bzero((v4 + 32), 0x400uLL);
  sub_1DB1262C0();
  v5 = _set_user_dir_suffix();

  if (v5)
  {
    if (confstr(65537, (v4 + 32), *(v4 + 16)))
    {
      if (mkdir((v4 + 32), 0x2BCu) || MEMORY[0x1E1281C50]() == 17)
      {

        if (qword_1EDEC89F8 != -1)
        {
          swift_once();
        }

        v7 = sub_1DB126230();
        __swift_project_value_buffer(v7, qword_1EDEC8A00);
        v8 = sub_1DB126210();
        v9 = sub_1DB126520();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          *v10 = 0;
          _os_log_impl(&dword_1DB103000, v8, v9, "Sandbox bootstrapped successfully", v10, 2u);
          MEMORY[0x1E1282A30](v10, -1, -1);
        }

        return 1;
      }

      v31 = MEMORY[0x1E1281C50]();
      result = strerror(v31);
      if (result)
      {

        v13 = sub_1DB126320();
        v15 = v32;
        v33 = 0;
        v34 = 0xE000000000000000;
        sub_1DB126770();
        v20 = 0x80000001DB129550;
        v17 = 0xD000000000000029;
        goto LABEL_15;
      }

LABEL_25:
      __break(1u);
      return result;
    }

    v18 = MEMORY[0x1E1281C50]();
    result = strerror(v18);
    if (result)
    {

      v13 = sub_1DB126320();
      v15 = v19;
      v33 = 0;
      v34 = 0xE000000000000000;
      sub_1DB126770();
      v16 = " temporary directory for ";
      v17 = 0xD000000000000034;
      goto LABEL_14;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v12 = MEMORY[0x1E1281C50](v6);
  result = strerror(v12);
  if (!result)
  {
    __break(1u);
    goto LABEL_24;
  }

  v13 = sub_1DB126320();
  v15 = v14;
  v33 = 0;
  v34 = 0xE000000000000000;
  sub_1DB126770();
  v16 = "v16@?0@NSError8";
  v17 = 0xD00000000000002DLL;
LABEL_14:
  v20 = v16 | 0x8000000000000000;
LABEL_15:
  MEMORY[0x1E1281D20](v17, v20);
  MEMORY[0x1E1281D20](a1, a2);
  v21 = MEMORY[0x1E1281D20](10272, 0xE200000000000000);
  MEMORY[0x1E1281C50](v21);
  v22 = sub_1DB126840();
  MEMORY[0x1E1281D20](v22);

  MEMORY[0x1E1281D20](2112041, 0xE300000000000000);
  MEMORY[0x1E1281D20](v13, v15);

  v24 = v33;
  v23 = v34;
  if (qword_1EDEC89F8 != -1)
  {
    swift_once();
  }

  v25 = sub_1DB126230();
  __swift_project_value_buffer(v25, qword_1EDEC8A00);

  v26 = sub_1DB126210();
  v27 = sub_1DB126510();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v33 = v29;
    *v28 = 136446210;
    v30 = sub_1DB105B74(v24, v23, &v33);

    *(v28 + 4) = v30;
    _os_log_impl(&dword_1DB103000, v26, v27, "Sandbox bootstrap error: %{public}s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    MEMORY[0x1E1282A30](v29, -1, -1);
    MEMORY[0x1E1282A30](v28, -1, -1);
  }

  else
  {
  }

  return 0;
}

char *sub_1DB11DCC4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26330, "B$");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

uint64_t getEnumTagSinglePayload for Sandbox(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for Sandbox(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for TransportError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TransportError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DB11E010()
{
  result = qword_1ECC26338;
  if (!qword_1ECC26338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC26338);
  }

  return result;
}

uint64_t ACHCodableTemplateNameArray.serialized()()
{
  v1 = [v0 data];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DB126100();

  return v3;
}

uint64_t sub_1DB11E0EC(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DB107E48;

  return v7(a1, a2);
}

uint64_t sub_1DB11E204()
{
  if ((*(v0 + 116) & 1) == 0)
  {
    notify_cancel(*(v0 + 112));
  }

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1DB11E284()
{
  if (qword_1EDEC89F8 != -1)
  {
    swift_once();
  }

  v1 = sub_1DB126230();
  __swift_project_value_buffer(v1, qword_1EDEC8A00);
  v2 = sub_1DB126210();
  v3 = sub_1DB126520();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DB103000, v2, v3, "### Language change - exiting clean ###", v4, 2u);
    MEMORY[0x1E1282A30](v4, -1, -1);
  }

  xpc_transaction_exit_clean();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for LanguageChangeObserver.State(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LanguageChangeObserver.State(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_1DB11E3FC(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DB11E418(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t sub_1DB11E454()
{
  *(v1 + 64) = v0;

  return MEMORY[0x1EEE6DFA0](sub_1DB11E4E4, v0, 0);
}

uint64_t sub_1DB11E4E4()
{
  v1 = *(v0 + 64);
  if (*(v1 + 116) == 1)
  {
    *(v0 + 72) = -1;
    sub_1DB11EB04();
    v2 = sub_1DB126540();
    *(v0 + 48) = sub_1DB11EB50;
    *(v0 + 56) = v1;
    *(v0 + 16) = MEMORY[0x1E69E9820];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1DB11EAB0;
    *(v0 + 40) = &block_descriptor_2;
    v3 = _Block_copy((v0 + 16));

    v4 = sub_1DB1262C0();
    v5 = notify_register_dispatch((v4 + 32), (v0 + 72), v2, v3);

    _Block_release(v3);

    if (v5 || (v10 = *(v0 + 72), v10 == -1))
    {
      if (qword_1EDEC89F8 != -1)
      {
        swift_once();
      }

      v6 = sub_1DB126230();
      __swift_project_value_buffer(v6, qword_1EDEC8A00);
      v7 = sub_1DB126210();
      v8 = sub_1DB126510();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_1DB103000, v7, v8, "Failed to register for language changes", v9, 2u);
        MEMORY[0x1E1282A30](v9, -1, -1);
      }
    }

    else
    {
      *(v1 + 112) = v10;
      *(v1 + 116) = 0;
    }
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1DB11E738(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26270, &unk_1DB127910);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_1DB126490();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v6;
  sub_1DB11D0A8(0, 0, v4, &unk_1DB128588, v7);
}

uint64_t sub_1DB11E85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DB11E87C, 0, 0);
}

uint64_t sub_1DB11E87C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_1DB11E970;

    return sub_1DB11E268();
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1DB11E970()
{

  return MEMORY[0x1EEE6DFA0](sub_1DB11EA88, 0, 0);
}

uint64_t sub_1DB11EAB0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

unint64_t sub_1DB11EB04()
{
  result = qword_1EDEC88D0;
  if (!qword_1EDEC88D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDEC88D0);
  }

  return result;
}

uint64_t sub_1DB11EB58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DB1064BC;

  return sub_1DB11E85C(a1, v4, v5, v6);
}

uint64_t ACHCodableAchievementProgressUpdate.serialized()()
{
  v1 = [v0 data];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DB126100();

  return v3;
}

uint64_t ACHCodableTemplateArray.serialized()()
{
  v1 = [v0 data];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DB126100();

  return v3;
}

char *XPCEndpoint.init(endpointName:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC22ActivityAwardsServices11XPCEndpoint_connection] = 0;
  type metadata accessor for UnfairLock();
  v5 = swift_allocObject();
  v6 = swift_slowAlloc();
  *(v5 + 16) = v6;
  *v6 = 0;
  *&v2[OBJC_IVAR____TtC22ActivityAwardsServices11XPCEndpoint_lock] = v5;
  v7 = [objc_opt_self() anonymousListener];
  *&v2[OBJC_IVAR____TtC22ActivityAwardsServices11XPCEndpoint_listener] = v7;
  v8 = &v2[OBJC_IVAR____TtC22ActivityAwardsServices11XPCEndpoint_name];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v2[OBJC_IVAR____TtC22ActivityAwardsServices11XPCEndpoint_requiredEntitlements] = &unk_1F56D7530;
  type metadata accessor for TransportDispatchService();
  v9 = swift_allocObject();
  v10 = sub_1DB104BBC(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC26370, &qword_1DB127BD0);
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  *(v11 + 16) = v10;
  *(v9 + 16) = v11;
  *&v2[OBJC_IVAR____TtC22ActivityAwardsServices11XPCEndpoint_transportDispatchService] = v9;
  v17.receiver = v2;
  v17.super_class = type metadata accessor for XPCEndpoint();
  v12 = objc_msgSendSuper2(&v17, sel_init);
  v13 = OBJC_IVAR____TtC22ActivityAwardsServices11XPCEndpoint_listener;
  v14 = *&v12[OBJC_IVAR____TtC22ActivityAwardsServices11XPCEndpoint_listener];
  v15 = v12;
  [v14 setDelegate_];
  [*&v12[v13] resume];

  return v15;
}

uint64_t sub_1DB11EEC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB11EEE4, 0, 0);
}

uint64_t sub_1DB11EEE4()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v7 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v7;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_1DB11EFF8;
  v5 = MEMORY[0x1E6969080];

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000016, 0x80000001DB128C70, sub_1DB1092F4, v3, v5);
}

uint64_t sub_1DB11EFF8()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1DB111144;
  }

  else
  {

    v2 = sub_1DB11F114;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB11F130(void *a1, void *a2)
{
  if (qword_1EDEC8D60 != -1)
  {
    swift_once();
  }

  v4 = sub_1DB126230();
  __swift_project_value_buffer(v4, qword_1EDEC8D68);
  v5 = a2;
  v6 = a1;
  v7 = sub_1DB126210();
  v8 = sub_1DB126510();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_1DB105B74(*&v5[OBJC_IVAR____TtC22ActivityAwardsServices11XPCEndpoint_name], *&v5[OBJC_IVAR____TtC22ActivityAwardsServices11XPCEndpoint_name + 8], &v16);
    *(v9 + 12) = 2080;
    swift_getErrorValue();
    v11 = Error.logOutput.getter();
    v13 = sub_1DB105B74(v11, v12, &v16);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_1DB103000, v7, v8, "Error encountered on remote proxy for endpoint %s: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1282A30](v10, -1, -1);
    MEMORY[0x1E1282A30](v9, -1, -1);
  }

  v16 = a1;
  v14 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC26440, &unk_1DB1286B8);
  return sub_1DB126460();
}

void sub_1DB11F31C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id XPCEndpoint.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id XPCEndpoint.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for XPCEndpoint();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t XPCEndpoint.transportRequest(_:data:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB11F508, 0, 0);
}

uint64_t sub_1DB11F508()
{
  v1 = sub_1DB107100(v0[2], v0[3], v0[4]);
  v2 = v0[1];

  return v2(v1);
}

void XPCEndpoint.transportEvent(_:data:)()
{
  if (qword_1EDEC89F8 != -1)
  {
    swift_once();
  }

  v0 = sub_1DB126230();
  __swift_project_value_buffer(v0, qword_1EDEC8A00);
  v1._countAndFlagsBits = 0xD000000000000061;
  v1._object = 0x80000001DB129670;
  v2._object = 0x80000001DB1296E0;
  v2._countAndFlagsBits = 0xD000000000000017;
  Logger.trace(file:function:)(v1, v2);
}

uint64_t sub_1DB11F730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26270, &unk_1DB127910);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_1DB10CFA8(a3, v23 - v10);
  v12 = sub_1DB126490();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1DB108044(v11, &qword_1ECC26270, &unk_1DB127910);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1DB126480();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1DB126450();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1DB1262C0() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1DB108044(a3, &qword_1ECC26270, &unk_1DB127910);

    return v21;
  }

LABEL_8:
  sub_1DB108044(a3, &qword_1ECC26270, &unk_1DB127910);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t dispatch thunk of XPCEndpoint.send(request:payload:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x1E69E7D40] & *v3) + 0xA0);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DB11FBB4;

  return v11(a1, a2, a3);
}

uint64_t sub_1DB11FBB4(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_1DB11FCC0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DB1064BC;

  return sub_1DB105088(a1, v4);
}

uint64_t sub_1DB11FD9C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC26440, &unk_1DB1286B8);
  v3 = *(v1 + 16);

  return sub_1DB11F130(a1, v3);
}

uint64_t sub_1DB11FE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(v7 + OBJC_IVAR____TtC22ActivityAwardsServices11XPCEndpoint_transportDispatchService);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  v15 = *(v13 + 16);

  os_unfair_lock_lock((v15 + 24));
  v16 = swift_allocObject();
  *(v16 + 16) = a6;
  *(v16 + 24) = v14;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v15 + 16);
  *(v15 + 16) = 0x8000000000000000;
  sub_1DB106E54(a7, v16, a1, isUniquelyReferenced_nonNull_native);
  *(v15 + 16) = v19;

  os_unfair_lock_unlock((v15 + 24));
}

uint64_t sub_1DB11FF40@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, void *)@<X2>, uint64_t a4@<X8>)
{
  sub_1DB10A2E8(a1, a2);
  result = sub_1DB10E024(a1, a2);
  if (!v4)
  {
    v13[0] = result;
    v13[1] = v10;
    a3(&v12, v13);
    v11 = v12;
    if (v12)
    {
      *(a4 + 24) = type metadata accessor for SerializableAchievementCollection();
      *(a4 + 32) = &protocol witness table for SerializableAchievementCollection;

      *a4 = v11;
    }

    else
    {

      *(a4 + 24) = 0u;
      *(a4 + 8) = 0u;
      *a4 = 0;
    }
  }

  return result;
}

uint64_t sub_1DB120008@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t *)@<X2>, void *a4@<X8>)
{
  sub_1DB10A2E8(a1, a2);
  result = sub_1DB11284C(a1, a2);
  if (!v4)
  {
    v13 = result;
    a3(&v12, &v13);
    v10 = v12;

    result = 0;
    if (v10)
    {
      result = type metadata accessor for SerializableAchievementCollection();
      v11 = &protocol witness table for SerializableAchievementCollection;
    }

    else
    {
      v11 = 0;
      a4[1] = 0;
      a4[2] = 0;
    }

    *a4 = v10;
    a4[3] = result;
    a4[4] = v11;
  }

  return result;
}

void *sub_1DB1200C0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t *)@<X2>, Class *a4@<X4>, uint64_t (*a5)(uint64_t, unint64_t)@<X5>, void *a6@<X8>)
{
  objc_allocWithZone(*a4);
  sub_1DB10A2E8(a1, a2);
  result = a5(a1, a2);
  if (!v6)
  {
    v17 = result;
    v13 = result;
    a3(&v16, &v17);
    v14 = v16;

    if (v14)
    {
      result = sub_1DB1086F0(0, &qword_1ECC264F0, 0x1E6989938);
      v15 = &protocol witness table for ACHCodableAchievementArray;
    }

    else
    {
      result = 0;
      v15 = 0;
      a6[1] = 0;
      a6[2] = 0;
    }

    *a6 = v14;
    a6[3] = result;
    a6[4] = v15;
  }

  return result;
}

uint64_t sub_1DB1201B4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void (*a3)(unsigned __int8 *__return_ptr, uint64_t *)@<X2>, void *a4@<X8>)
{
  sub_1DB10A2E8(a1, a2);
  result = sub_1DB11284C(a1, a2);
  if (!v4)
  {
    v14 = result;
    a3(&v13, &v14);
    v10 = v13;

    if (v10 == 2)
    {
      v11 = 0;
      v12 = 0;
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
    }

    else
    {
      *a4 = v10 & 1;
      v12 = &protocol witness table for Bool;
      v11 = MEMORY[0x1E69E6370];
    }

    a4[3] = v11;
    a4[4] = v12;
  }

  return result;
}

uint64_t sub_1DB12027C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void (*a3)(char *__return_ptr, void *)@<X2>, uint64_t a4@<X8>)
{
  sub_1DB10A2E8(a1, a2);
  result = sub_1DB10E024(a1, a2);
  if (!v4)
  {
    v13[0] = result;
    v13[1] = v10;
    a3(&v12, v13);
    v11 = v12;
    if (v12 == 2)
    {

      *(a4 + 32) = 0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
    }

    else
    {
      *(a4 + 24) = MEMORY[0x1E69E6370];
      *(a4 + 32) = &protocol witness table for Bool;

      *a4 = v11 & 1;
    }
  }

  return result;
}

void *sub_1DB120348@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *(*a3)(char *__return_ptr, void **)@<X2>, void *a4@<X8>)
{
  sub_1DB10A2E8(a1, a2);
  result = sub_1DB112960(a1, a2);
  if (!v4)
  {
    v13 = result;
    result = a3(&v12, &v13);
    if (v12 == 2)
    {
      v10 = 0;
      v11 = 0;
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
    }

    else
    {
      *a4 = v12 & 1;
      v11 = &protocol witness table for Bool;
      v10 = MEMORY[0x1E69E6370];
    }

    a4[3] = v10;
    a4[4] = v11;
  }

  return result;
}

uint64_t Daemon.bundleIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

void Daemon.init()(void *a1@<X8>)
{
  *a1 = 0xD000000000000019;
  a1[1] = 0x80000001DB128A60;
  a1[11] = 0;
  v2 = [objc_allocWithZone(type metadata accessor for XPCEndpointProvider()) init];
  a1[15] = v2;
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 sharedBehavior];
  if (!v5)
  {
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v6 = v5;
  v374 = v4;
  v7 = [v5 isAppleWatch];

  LODWORD(v382) = v7;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  LODWORD(v388) = v8;
  type metadata accessor for BridgeSettings();
  v9 = swift_allocObject();
  a1[9] = v9;
  v10 = qword_1EDEC8920;
  v384 = v9;

  if (v10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v11 = objc_allocWithZone(MEMORY[0x1E6983308]);
  v12 = sub_1DB1262A0();

  v13 = [v11 initWithBundleIdentifier_];

  v14 = [objc_allocWithZone(MEMORY[0x1E699DB60]) init];
  v15 = type metadata accessor for FitnessCoachingNotificationSuppressionProvider();
  swift_allocObject();
  v376 = v14;
  a1[30] = sub_1DB124BF0(v376);
  v378 = (a1 + 30);
  v383 = v15;
  a1[33] = v15;
  a1[34] = &off_1F56D9150;
  v16 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  a1[2] = v16;
  v17 = objc_allocWithZone(MEMORY[0x1E699C9C8]);
  v18 = v16;
  v19 = [v17 init];
  a1[16] = v19;
  v20 = objc_allocWithZone(MEMORY[0x1E699C9E0]);
  v381 = v19;
  v21 = [v20 initWithHealthStore_];
  a1[56] = v21;
  v22 = type metadata accessor for NotificationPostingProvider();
  v23 = swift_allocObject();
  v23[2] = v18;
  v23[3] = v13;
  v23[4] = v21;
  a1[25] = v23;
  v24 = a1 + 25;
  v380 = v22;
  a1[28] = v22;
  a1[29] = &off_1F56D7CF8;
  v25 = type metadata accessor for LanguageChangeObserver();
  v26 = swift_allocObject();
  v27 = v18;
  v28 = v21;
  v375 = v13;
  swift_defaultActor_initialize();
  *(v26 + 112) = 0;
  *(v26 + 116) = 1;
  a1[20] = v25;
  a1[21] = &off_1F56D7FA8;
  a1[17] = v26;
  v29 = [objc_allocWithZone(MEMORY[0x1E699C9D8]) initWithHealthStore_];
  a1[36] = v29;
  v30 = objc_allocWithZone(MEMORY[0x1E69899B8]);
  v379 = v29;
  a1[39] = [v30 &selRef_conformsToProtocol_];
  v31 = [objc_allocWithZone(MEMORY[0x1E6989910]) initWithHealthStore_];
  a1[8] = v31;
  v32 = objc_allocWithZone(MEMORY[0x1E6989980]);
  v33 = v31;
  v34 = [v32 initWithHealthStore_];

  a1[5] = v34;
  v35 = objc_allocWithZone(MEMORY[0x1E6989A60]);
  v36 = v34;
  v37 = v388;
  v38 = [v35 initWithClient:v33 assertionClient:v36 device:v388];

  a1[54] = v38;
  v39 = objc_allocWithZone(MEMORY[0x1E69899E8]);
  v40 = v38;
  v41 = [v39 initWithTemplateStore_];
  if (!v41)
  {
    goto LABEL_33;
  }

  a1[13] = v41;
  v42 = objc_allocWithZone(MEMORY[0x1E69899F0]);
  v43 = v33;
  v386 = v36;
  v44 = [v42 initWithClient:v43 assertionClient:? earnedInstanceDuplicateUtility:? device:?];
  if (!v44)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v45 = v44;
  a1[14] = v44;
  v46 = objc_allocWithZone(MEMORY[0x1E6989A38]);
  v47 = v27;
  v48 = v45;
  v49 = [v46 initWithHealthStore:v47 creatorDevice:v37];
  if (!v49)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v50 = v49;
  v377 = v47;
  a1[44] = v49;
  v51 = objc_allocWithZone(MEMORY[0x1E6989A50]);
  v368 = v50;
  v52 = [v51 initWithRemoteTemplateAvailabilityKeyProvider_];
  if (!v52)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v53 = v52;
  a1[52] = v52;
  v54 = objc_allocWithZone(MEMORY[0x1E6989998]);
  v55 = v53;
  v56 = [v54 init];
  a1[38] = v56;
  v57 = a1;
  v58 = objc_allocWithZone(MEMORY[0x1E69899A0]);
  v59 = v43;
  v60 = v40;
  v61 = v48;
  v62 = v56;
  v63 = [v58 initWithClient:v59 templateStore:v60 earnedInstanceStore:v61 templateAssetRegistry:v55 progressEngine:v62];
  v387 = v59;

  v385 = v60;
  v389 = v61;

  v390 = v57;
  v57[3] = v63;
  v64 = v63;
  v367 = v62;
  [v62 setAchievementStore_];
  sub_1DB123400(v24, &v401);
  sub_1DB123400(v378, v400);
  LODWORD(v371) = byte_1EDEC8928;
  v65 = __swift_mutable_project_boxed_opaque_existential_1(&v401, v405);
  v378 = &v367;
  MEMORY[0x1EEE9AC00](v65);
  v67 = (&v367 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v68 + 16))(v67);
  v69 = __swift_mutable_project_boxed_opaque_existential_1(v400, v400[3]);
  v373 = &v367;
  MEMORY[0x1EEE9AC00](v69);
  v71 = (&v367 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v72 + 16))(v71);
  v73 = *v67;
  v74 = *v71;
  v75 = v380;
  v398 = v380;
  v399 = &off_1F56D7CF8;
  v397[0] = v73;
  v76 = v383;
  v395 = v383;
  v396 = &off_1F56D9150;
  v394[0] = v74;
  v370 = type metadata accessor for NotificationSystem();
  v77 = objc_allocWithZone(v370);
  v78 = __swift_mutable_project_boxed_opaque_existential_1(v397, v398);
  v372 = &v367;
  MEMORY[0x1EEE9AC00](v78);
  v80 = (&v367 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v81 + 16))(v80);
  v82 = __swift_mutable_project_boxed_opaque_existential_1(v394, v395);
  v369 = &v367;
  MEMORY[0x1EEE9AC00](v82);
  v84 = (&v367 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v85 + 16))(v84);
  v86 = *v80;
  v87 = *v84;
  v393[3] = v75;
  v393[4] = &off_1F56D7CF8;
  v392[4] = &off_1F56D9150;
  v393[0] = v86;
  v392[3] = v76;
  v392[0] = v87;
  *&v77[OBJC_IVAR____TtC22ActivityAwardsServices18NotificationSystem_achievementStore] = v64;
  *&v77[OBJC_IVAR____TtC22ActivityAwardsServices18NotificationSystem_bridgeSettings] = v384;
  v88 = v381;
  *&v77[OBJC_IVAR____TtC22ActivityAwardsServices18NotificationSystem_fitnessAppsStateObserver] = v381;
  v89 = v377;
  *&v77[OBJC_IVAR____TtC22ActivityAwardsServices18NotificationSystem_healthStore] = v377;
  type metadata accessor for UnfairLock();
  v90 = swift_allocObject();
  v91 = v89;
  v383 = v88;
  v92 = v379;
  v384 = v64;
  v93 = swift_slowAlloc();
  *(v90 + 16) = v93;
  *v93 = 0;
  *&v77[OBJC_IVAR____TtC22ActivityAwardsServices18NotificationSystem_lock] = v90;
  sub_1DB123400(v393, &v77[OBJC_IVAR____TtC22ActivityAwardsServices18NotificationSystem_notificationPostingProvider]);
  sub_1DB123400(v392, &v77[OBJC_IVAR____TtC22ActivityAwardsServices18NotificationSystem_notificationSuppresionProvider]);
  *&v77[OBJC_IVAR____TtC22ActivityAwardsServices18NotificationSystem_pauseRingsCoordinator] = v92;
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1DB126680())
  {
    v364 = v92;
    sub_1DB124394(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v94 = v92;
    v95 = MEMORY[0x1E69E7CD0];
  }

  *&v77[OBJC_IVAR____TtC22ActivityAwardsServices18NotificationSystem_pendingAchievementsToNotify] = v95;
  v77[OBJC_IVAR____TtC22ActivityAwardsServices18NotificationSystem_platform] = v371;
  v96 = objc_allocWithZone(MEMORY[0x1E696C210]);
  v97 = v91;
  v98 = sub_1DB1262A0();
  v99 = [v96 initWithCategory:0 domainName:v98 healthStore:v97];

  *&v77[OBJC_IVAR____TtC22ActivityAwardsServices18NotificationSystem_earnedKeyValueStore] = v99;
  v100 = objc_allocWithZone(MEMORY[0x1E696C210]);
  v101 = v97;
  v102 = sub_1DB1262A0();
  v103 = [v100 initWithCategory:0 domainName:v102 healthStore:v101];

  *&v77[OBJC_IVAR____TtC22ActivityAwardsServices18NotificationSystem_unearnedKeyValueStore] = v103;
  v391.receiver = v77;
  v391.super_class = v370;
  v104 = objc_msgSendSuper2(&v391, sel_init);
  v105 = v384;

  v106 = v92;
  __swift_destroy_boxed_opaque_existential_1Tm(v392);
  __swift_destroy_boxed_opaque_existential_1Tm(v393);
  __swift_destroy_boxed_opaque_existential_1Tm(v394);
  __swift_destroy_boxed_opaque_existential_1Tm(v397);
  __swift_destroy_boxed_opaque_existential_1Tm(v400);
  __swift_destroy_boxed_opaque_existential_1Tm(&v401);
  v107 = v390;
  v390[35] = v104;
  v108 = objc_allocWithZone(MEMORY[0x1E6989A58]);
  v109 = v386;
  v110 = v387;
  v111 = v385;
  v112 = [v108 initWithClient:v387 assertionClient:v386 templateStore:v385 achievementStore:v105];

  if (!v112)
  {
    goto LABEL_37;
  }

  v381 = v106;
  v107[53] = v112;
  v107[10] = [objc_allocWithZone(MEMORY[0x1E69899C8]) init];
  v107[37] = [objc_allocWithZone(MEMORY[0x1E6989A30]) init];
  v113 = objc_allocWithZone(MEMORY[0x1E69899B0]);
  v114 = v101;
  v115 = [v113 initWithHealthStore:v114 shouldIncludePrivateProperties:1];
  v116 = [objc_allocWithZone(MEMORY[0x1E6989918]) initWithHealthStore_];
  v117 = objc_allocWithZone(MEMORY[0x1E6989A18]);
  v383 = v116;
  v118 = [v117 initWithActivitySummaryIterator:v115 workoutClient:v116];
  v119 = objc_allocWithZone(MEMORY[0x1E6989A20]);
  v120 = [v119 initWithHealthStore:v114 earnedInstanceStore:v389 templateStore:v111 activitySummaryIterator:v115];
  v121 = [objc_allocWithZone(MEMORY[0x1E6989A48]) initWithHealthStore_];

  v122 = objc_allocWithZone(MEMORY[0x1E6989A28]);
  v380 = v118;
  v123 = [v122 initWithDataSource:v118 dataProvider:v120 templateCache:v121];
  v124 = v388;
  if (!v123)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v107[24] = v123;
  v125 = [objc_allocWithZone(MEMORY[0x1E69899C0]) initWithHealthStore:v114 creatorDevice:v124];

  v126 = [objc_allocWithZone(MEMORY[0x1E6989A08]) init];
  v127 = objc_allocWithZone(MEMORY[0x1E6989A40]);
  v128 = v125;
  v129 = v127;
  v130 = v368;
  v131 = [v129 initWithMobileAssetProvider:v126 backCompatWriter:v128 remoteTemplateAvailabilityKeyProvider:v368];

  if (!v131)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v107[45] = v131;
  v372 = v120;
  v373 = v115;
  v370 = v126;
  v371 = v121;
  v369 = v128;
  if (v382)
  {
    if (FIIsActivePairedDeviceSatellitePaired())
    {
      ACHTinkerHistoricalEvaluationPolicy();
      v377 = v402;
      v378 = v401;
      v132 = v403;
      LODWORD(v379) = 1;
      goto LABEL_22;
    }

    ACHGizmoHistoricalEvaluationPolicy();
  }

  else
  {
    ACHCompanionHistoricalEvaluationPolicy();
  }

  LODWORD(v379) = 0;
  v377 = v402;
  v378 = v401;
  v132 = v403;
LABEL_22:
  v133 = v404;
  v134 = objc_allocWithZone(MEMORY[0x1E69899D8]);
  v135 = v114;
  v136 = v386;
  v137 = [v134 initWithHealthStore:v135 assertionClient:v386];
  v107[12] = v137;
  v138 = objc_allocWithZone(MEMORY[0x1E69899E0]);
  v139 = v387;
  v140 = v107;
  v141 = v137;
  v142 = v139;
  v387 = v141;
  v401 = v378;
  v402 = v377;
  v403 = v132;
  v404 = v133;
  v143 = [v138 initWithClient:v142 assertionClient:v136 dataStore:v387 earnedInstanceStore:v389 historicalEvaluationPolicy:&v401];

  v140[6] = v143;
  v144 = objc_allocWithZone(MEMORY[0x1E69899A8]);
  v145 = v385;
  v146 = v143;
  v147 = v135;
  v148 = v145;
  v149 = v367;
  v150 = v146;
  v151 = v387;
  v152 = v381;
  v153 = [v144 initWithHealthStore:v147 dataStore:v387 templateStore:v148 pauseRingsCoordinator:v381 awardingEngine:v150 progressEngine:v149];

  v154 = v390;
  v390[4] = v153;
  v155 = objc_allocWithZone(MEMORY[0x1E6989A00]);
  LOBYTE(v152) = v388;
  v156 = v383;
  v157 = [v155 initWithClient:v142 healthStore:v147 workoutClient:v383 awardingEngine:v150 templateStore:v148 creatorDevice:v388 progressEngine:v149];

  v154[22] = v157;
  v158 = objc_allocWithZone(MEMORY[0x1E6989A70]);
  v365 = v156;
  v159 = v387;
  v160 = [v158 initWithClient:v142 healthStore:v147 awardingEngine:v150 dataStore:v387 templateStore:v148 creatorDevice:v152 progressEngine:v149 workoutClient:v365];
  v381 = v142;

  v154[55] = v160;
  v161 = objc_allocWithZone(MEMORY[0x1E6989A10]);
  v162 = v380;
  v163 = v152;
  v164 = v389;
  v165 = [v161 initWithHealthStore:v147 awardingEngine:v150 templateStore:v148 earnedInstanceStore:v389 monthlyDataSource:v162 creatorDevice:v163 progressEngine:v149];

  v388 = v149;
  v154[23] = v165;
  v385 = v162;
  if (v379)
  {
    v166 = objc_allocWithZone(MEMORY[0x1E6989920]);
    v167 = v147;
    v168 = [v166 initWithHealthStore_];
    v154[11] = v168;
    v169 = objc_opt_self();
    v170 = v150;
    v171 = v386;
    v386 = v168;
    v172 = v168;
    v173 = [v169 sharedScheduler];
    v174 = objc_allocWithZone(MEMORY[0x1E6989A68]);
    v175 = [v174 initWithHealthStore:v167 assertionClient:v171 cloudSyncStatusProvider:v172 systemTaskScheduler:v173 dataStore:v387 earnedInstanceStore:v164 templateStore:v148 awardingEngine:v170];

    swift_unknownObjectRelease();
    if (v175)
    {
      v176 = v148;
LABEL_29:
      v188 = v374;
      v189 = v388;
      v390[7] = v175;
      v190 = v175;
      v191 = sub_1DB1262B0();
      v193 = v192;
      v388 = v188;
      v194 = v176;
      v195 = v389;
      v196 = v384;
      v197 = sub_1DB1059D0(v191, v193);

      v198 = swift_allocObject();
      v198[2] = v197;
      v198[3] = v196;
      v198[4] = v190;
      v198[5] = v195;
      v198[6] = v189;
      v198[7] = v194;
      v199 = swift_allocObject();
      *(v199 + 16) = sub_1DB1234B4;
      *(v199 + 24) = v198;
      v200 = swift_allocObject();
      *(v200 + 16) = sub_1DB1234BC;
      *(v200 + 24) = v199;
      v201 = v197;
      v202 = v194;
      v203 = v195;
      v204 = v189;
      v205 = v196;
      v206 = v201;
      swift_unknownObjectRetain_n();
      v207 = v202;
      v208 = v203;
      v209 = v204;
      v210 = v205;
      v211 = v206;
      sub_1DB11FE34(0, sub_1DB1234E4, v200, &unk_1F56D9110, &unk_1F56D9138, sub_1DB124AFC, sub_1DB124B8C);

      v212 = swift_allocObject();
      v212[2] = v211;
      v212[3] = v210;
      v212[4] = v190;
      v212[5] = v208;
      v212[6] = v209;
      v212[7] = v207;
      v213 = swift_allocObject();
      *(v213 + 16) = sub_1DB123514;
      *(v213 + 24) = v212;
      v214 = swift_allocObject();
      *(v214 + 16) = sub_1DB12351C;
      *(v214 + 24) = v213;
      v215 = v207;
      v216 = v208;
      v217 = v209;
      v218 = v210;
      v219 = v211;
      swift_unknownObjectRetain();
      sub_1DB11FE34(1, sub_1DB123548, v214, &unk_1F56D90C0, &unk_1F56D90E8, sub_1DB124AE0, sub_1DB124B8C);

      v220 = swift_allocObject();
      v220[2] = v219;
      v220[3] = v218;
      v220[4] = v190;
      v220[5] = v216;
      v220[6] = v217;
      v220[7] = v215;
      v221 = swift_allocObject();
      *(v221 + 16) = sub_1DB12357C;
      *(v221 + 24) = v220;
      v222 = v215;
      v223 = v216;
      v224 = v217;
      v225 = v218;
      v226 = v219;
      swift_unknownObjectRetain();
      sub_1DB11FE34(2, sub_1DB124B84, v221, &unk_1F56D9070, &unk_1F56D9098, sub_1DB124A60, sub_1DB124B8C);

      v227 = swift_allocObject();
      v227[2] = v226;
      v227[3] = v225;
      v227[4] = v190;
      v227[5] = v223;
      v227[6] = v224;
      v227[7] = v222;
      v228 = swift_allocObject();
      *(v228 + 16) = sub_1DB10DE50;
      *(v228 + 24) = v227;
      v229 = v222;
      v230 = v223;
      v231 = v224;
      v232 = v225;
      v233 = v226;
      swift_unknownObjectRetain();
      sub_1DB11FE34(18, sub_1DB10E23C, v228, &unk_1F56D9020, &unk_1F56D9048, sub_1DB10E204, sub_1DB124B8C);

      v234 = swift_allocObject();
      v234[2] = v233;
      v234[3] = v232;
      v234[4] = v190;
      v234[5] = v230;
      v234[6] = v231;
      v234[7] = v229;
      v235 = swift_allocObject();
      *(v235 + 16) = sub_1DB123584;
      *(v235 + 24) = v234;
      v236 = v229;
      v237 = v230;
      v238 = v231;
      v239 = v232;
      v240 = v233;
      v241 = v190;
      swift_unknownObjectRetain();
      sub_1DB11FE34(11, sub_1DB10E23C, v235, &unk_1F56D8FD0, &unk_1F56D8FF8, sub_1DB124A2C, sub_1DB124B8C);

      v242 = swift_allocObject();
      v242[2] = v240;
      v242[3] = v239;
      v242[4] = v190;
      v242[5] = v237;
      v242[6] = v238;
      v242[7] = v236;
      v243 = swift_allocObject();
      *(v243 + 16) = sub_1DB12358C;
      *(v243 + 24) = v242;
      v244 = swift_allocObject();
      *(v244 + 16) = sub_1DB10D338;
      *(v244 + 24) = v243;
      v245 = v236;
      v246 = v237;
      v247 = v238;
      v248 = v239;
      v249 = v240;
      v250 = v241;
      swift_unknownObjectRetain();
      v389 = sub_1DB1249F4;
      sub_1DB11FE34(12, sub_1DB10D304, v244, &unk_1F56D8F80, &unk_1F56D8FA8, sub_1DB1249F4, sub_1DB124B8C);

      v251 = swift_allocObject();
      v251[2] = v249;
      v251[3] = v248;
      v251[4] = v241;
      v251[5] = v246;
      v251[6] = v247;
      v251[7] = v245;
      v252 = swift_allocObject();
      *(v252 + 16) = sub_1DB123594;
      *(v252 + 24) = v251;
      v253 = swift_allocObject();
      *(v253 + 16) = sub_1DB10D2FC;
      *(v253 + 24) = v252;
      v254 = v245;
      v255 = v246;
      v256 = v247;
      v257 = v248;
      v258 = v249;
      v259 = v250;
      swift_unknownObjectRetain();
      sub_1DB11FE34(13, sub_1DB10D300, v253, &unk_1F56D8F80, &unk_1F56D8FA8, v389, sub_1DB124B8C);

      v260 = swift_allocObject();
      v260[2] = v258;
      v260[3] = v257;
      v260[4] = v259;
      v260[5] = v255;
      v261 = v259;
      v260[6] = v256;
      v260[7] = v254;
      v262 = swift_allocObject();
      *(v262 + 16) = sub_1DB12359C;
      *(v262 + 24) = v260;
      v263 = swift_allocObject();
      *(v263 + 16) = sub_1DB1235A4;
      *(v263 + 24) = v262;
      v264 = v254;
      v265 = v255;
      v266 = v256;
      v267 = v257;
      v268 = v258;
      swift_unknownObjectRetain();
      v389 = sub_1DB1249D8;
      v387 = sub_1DB124B8C;
      sub_1DB11FE34(14, sub_1DB1235D0, v263, &unk_1F56D8F30, &unk_1F56D8F58, sub_1DB1249D8, sub_1DB124B8C);

      v269 = swift_allocObject();
      v269[2] = v268;
      v269[3] = v267;
      v270 = v261;
      v269[4] = v261;
      v269[5] = v265;
      v271 = v266;
      v269[6] = v266;
      v269[7] = v264;
      v272 = swift_allocObject();
      *(v272 + 16) = sub_1DB1235D4;
      *(v272 + 24) = v269;
      v273 = swift_allocObject();
      *(v273 + 16) = sub_1DB1235DC;
      *(v273 + 24) = v272;
      v384 = v264;
      v274 = v265;
      v275 = v271;
      v276 = v267;
      v277 = v268;
      v278 = v270;
      swift_unknownObjectRetain();
      sub_1DB11FE34(15, sub_1DB123608, v273, &unk_1F56D8EE0, &unk_1F56D8F08, sub_1DB1249BC, sub_1DB124B8C);

      v279 = swift_allocObject();
      v279[2] = v277;
      v279[3] = v276;
      v279[4] = v270;
      v279[5] = v274;
      v280 = v384;
      v279[6] = v275;
      v279[7] = v280;
      v281 = swift_allocObject();
      *(v281 + 16) = sub_1DB12363C;
      *(v281 + 24) = v279;
      v282 = swift_allocObject();
      *(v282 + 16) = sub_1DB10D2FC;
      *(v282 + 24) = v281;
      v283 = v280;
      v284 = v274;
      v381 = v275;
      v285 = v276;
      v286 = v277;
      v287 = v278;
      swift_unknownObjectRetain();
      v384 = sub_1DB124984;
      v382 = sub_1DB124B8C;
      sub_1DB11FE34(16, sub_1DB10D300, v282, &unk_1F56D8E90, &unk_1F56D8EB8, sub_1DB124984, sub_1DB124B8C);

      v288 = swift_allocObject();
      v288[2] = v286;
      v288[3] = v285;
      v288[4] = v278;
      v288[5] = v284;
      v289 = v381;
      v288[6] = v381;
      v288[7] = v283;
      v290 = swift_allocObject();
      *(v290 + 16) = sub_1DB123644;
      *(v290 + 24) = v288;
      v291 = swift_allocObject();
      *(v291 + 16) = sub_1DB10D2FC;
      *(v291 + 24) = v290;
      v292 = v283;
      v293 = v284;
      v294 = v289;
      v295 = v285;
      v296 = v286;
      swift_unknownObjectRetain();
      sub_1DB11FE34(17, sub_1DB10D300, v291, &unk_1F56D8E90, &unk_1F56D8EB8, v384, v382);

      v297 = swift_allocObject();
      v297[2] = v296;
      v297[3] = v295;
      v297[4] = v287;
      v297[5] = v293;
      v298 = v287;
      v297[6] = v294;
      v297[7] = v292;
      v299 = swift_allocObject();
      *(v299 + 16) = sub_1DB10D36C;
      *(v299 + 24) = v297;
      v300 = swift_allocObject();
      *(v300 + 16) = sub_1DB10D2FC;
      *(v300 + 24) = v299;
      v301 = v292;
      v302 = v293;
      v303 = v294;
      v304 = v295;
      v305 = v296;
      v306 = v298;
      swift_unknownObjectRetain();
      sub_1DB11FE34(19, sub_1DB10D300, v300, &unk_1F56D8E40, &unk_1F56D8E68, sub_1DB10D0E4, sub_1DB124B8C);

      v307 = swift_allocObject();
      v307[2] = v305;
      v307[3] = v304;
      v307[4] = v298;
      v307[5] = v302;
      v307[6] = v303;
      v307[7] = v301;
      v308 = swift_allocObject();
      *(v308 + 16) = sub_1DB12364C;
      *(v308 + 24) = v307;
      v309 = swift_allocObject();
      *(v309 + 16) = sub_1DB124B80;
      *(v309 + 24) = v308;
      v310 = v301;
      v311 = v302;
      v312 = v303;
      v313 = v304;
      v314 = v305;
      swift_unknownObjectRetain();
      sub_1DB11FE34(20, sub_1DB124B88, v309, &unk_1F56D8F30, &unk_1F56D8F58, v389, v387);

      v315 = swift_allocObject();
      v315[2] = v314;
      v315[3] = v313;
      v315[4] = v306;
      v315[5] = v311;
      v315[6] = v312;
      v315[7] = v310;
      v316 = swift_allocObject();
      *(v316 + 16) = sub_1DB12368C;
      *(v316 + 24) = v315;
      v317 = v310;
      v318 = v311;
      v319 = v312;
      v320 = v313;
      v321 = v314;
      swift_unknownObjectRetain();
      sub_1DB11FE34(3, sub_1DB124B7C, v316, &unk_1F56D8DF0, &unk_1F56D8E18, sub_1DB12494C, sub_1DB124B8C);

      v322 = swift_allocObject();
      v322[2] = v321;
      v322[3] = v320;
      v322[4] = v306;
      v322[5] = v318;
      v322[6] = v319;
      v322[7] = v317;
      v323 = swift_allocObject();
      *(v323 + 16) = sub_1DB123694;
      *(v323 + 24) = v322;
      v324 = v317;
      v325 = v318;
      v326 = v319;
      v327 = v320;
      v328 = v321;
      swift_unknownObjectRetain();
      sub_1DB11FE34(21, sub_1DB12369C, v323, &unk_1F56D8DA0, &unk_1F56D8DC8, sub_1DB124914, sub_1DB124B8C);

      v329 = swift_allocObject();
      v329[2] = v328;
      v329[3] = v327;
      v329[4] = v306;
      v329[5] = v325;
      v329[6] = v326;
      v329[7] = v324;
      v330 = swift_allocObject();
      *(v330 + 16) = sub_1DB1236D0;
      *(v330 + 24) = v329;
      v331 = v324;
      v332 = v325;
      v333 = v326;
      v334 = v327;
      v335 = v328;
      swift_unknownObjectRetain();
      sub_1DB11FE34(22, sub_1DB124B7C, v330, &unk_1F56D8D50, &unk_1F56D8D78, sub_1DB1248DC, sub_1DB124B8C);

      v336 = swift_allocObject();
      v336[2] = v335;
      v336[3] = v334;
      v336[4] = v306;
      v336[5] = v332;
      v337 = v306;
      v336[6] = v333;
      v336[7] = v331;
      v338 = swift_allocObject();
      *(v338 + 16) = sub_1DB123738;
      *(v338 + 24) = v336;
      v339 = swift_allocObject();
      *(v339 + 16) = sub_1DB123740;
      *(v339 + 24) = v338;
      v340 = v331;
      v341 = v332;
      v342 = v333;
      v343 = v334;
      v344 = v335;
      swift_unknownObjectRetain();
      sub_1DB11FE34(23, sub_1DB12376C, v339, &unk_1F56D8D00, &unk_1F56D8D28, sub_1DB124860, sub_1DB124B8C);

      swift_unknownObjectRelease();
      v345 = v388;

      v346 = v390;
      v390[46] = v344;
      v346[47] = v343;
      v346[48] = v337;
      v346[49] = v341;
      v346[50] = v342;
      v346[51] = v340;
      v347 = v346;
      v348 = objc_allocWithZone(type metadata accessor for ActivityAwardsDateQueryListener(0));
      v349 = v386;
      v350 = v386;
      v351 = v345;
      v352 = v343;
      v353 = v350;
      v347[40] = sub_1DB123AAC(v351, v352, v349, v348);
      v354 = objc_allocWithZone(type metadata accessor for ActivityAwardsTemplateNamesQueryListener());
      v355 = v351;
      v356 = v352;
      v357 = v353;
      v347[41] = sub_1DB123CD0(v355, v356, v349, v354);
      v358 = objc_allocWithZone(type metadata accessor for ActivityAwardsMonthlyChallengeQueryListener(0));
      v359 = v355;
      v360 = v356;
      v361 = v357;
      v347[42] = sub_1DB123E9C(v359, v360, v349, v358);
      v362 = objc_allocWithZone(type metadata accessor for ActivityAwardsQueryListener());
      v363 = sub_1DB1238F0(v359, v360, v349, v362);

      v347[43] = v363;
      return;
    }

    goto LABEL_40;
  }

  v177 = v387;
  if (v382)
  {
    v178 = objc_allocWithZone(MEMORY[0x1E69899F8]);
    v179 = [v178 initWithClient:v381 dataStore:v177 awardingEngine:v150];
    if (v179)
    {
      v175 = v179;
      v176 = v148;
      v386 = 0;
      goto LABEL_29;
    }

    goto LABEL_41;
  }

  v180 = objc_allocWithZone(MEMORY[0x1E6989920]);
  v181 = v147;
  v182 = [v180 initWithHealthStore_];
  v390[11] = v182;
  v183 = objc_opt_self();
  v184 = v150;
  v185 = v386;
  v386 = v182;
  v186 = v182;
  v187 = [v183 sharedScheduler];
  v366 = v184;
  v176 = v148;
  v175 = [objc_allocWithZone(MEMORY[0x1E69899D0]) initWithHealthStore:v181 assertionClient:v185 cloudSyncStatusProvider:v186 systemTaskScheduler:v187 dataStore:v177 earnedInstanceStore:v164 templateStore:v148 awardingEngine:v366];

  swift_unknownObjectRelease();
  if (v175)
  {
    goto LABEL_29;
  }

LABEL_42:
  __break(1u);
}

uint64_t sub_1DB1229DC()
{
  v43 = v0;
  if (qword_1EDEC89F8 != -1)
  {
LABEL_26:
    swift_once();
  }

  v1 = v0[18];
  v2 = sub_1DB126230();
  v0[19] = __swift_project_value_buffer(v2, qword_1EDEC8A00);
  v3._countAndFlagsBits = 0x6574617669746361;
  v4._object = 0x80000001DB129880;
  v4._countAndFlagsBits = 0xD000000000000058;
  v3._object = 0xEA00000000002928;
  Logger.trace(file:function:)(v4, v3);
  [*(v1 + 88) activate];
  v5 = *(v1 + 80);
  v6 = *(v1 + 424);
  [v6 registerTemplateSource_];
  v7 = *(v1 + 416);
  [v7 registerTemplateAssetSource_];
  v8 = *(v1 + 296);
  [v6 registerTemplateSource_];
  [v7 registerTemplateAssetSource_];
  v9 = *(v1 + 192);
  [v6 registerTemplateSource_];
  [v7 registerTemplateAssetSource_];
  v10 = *(v1 + 360);
  [v6 registerTemplateSource_];
  [v7 registerTemplateAssetSource_];
  v11 = *(v1 + 312);
  v12 = [v11 createTemplateAssetSources];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC264C0, &unk_1DB1286E0);
  v13 = sub_1DB126270();
  v0[20] = v13;

  v14 = -1;
  v15 = -1 << *(v13 + 32);
  if (-v15 < 64)
  {
    v14 = ~(-1 << -v15);
  }

  v16 = v14 & *(v13 + 64);
  v17 = (63 - v15) >> 6;

  v18 = 0;
  if (v16)
  {
    while (1)
    {
      v19 = v18;
LABEL_10:
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v21 = *(*(v13 + 56) + ((v19 << 9) | (8 * v20)));
      swift_unknownObjectRetain();
      [v7 registerTemplateAssetSource_];
      swift_unknownObjectRelease();
      if (!v16)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v19 >= v17)
    {
      break;
    }

    v16 = *(v13 + 64 + 8 * v19);
    ++v18;
    if (v16)
    {
      v18 = v19;
      goto LABEL_10;
    }
  }

  v22 = [v11 createProgressProviders];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC264C8, &qword_1DB1286F0);
  v23 = sub_1DB126270();

  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = sub_1DB108300(*(v23 + 16), 0);
    v26 = sub_1DB12379C(&v42, (v25 + 32), v24, v23);
    v27 = sub_1DB108AB0(v42);
    if (v26 != v24)
    {
      __break(1u);
      goto LABEL_32;
    }

    if ((v25 & 0x8000000000000000) != 0)
    {
      goto LABEL_27;
    }
  }

  else
  {

    v25 = MEMORY[0x1E69E7CC0];
    if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
    {
      goto LABEL_27;
    }
  }

  if ((v25 & 0x4000000000000000) == 0)
  {
    v28 = *(v25 + 16);
    if (!v28)
    {
      goto LABEL_28;
    }

    goto LABEL_19;
  }

LABEL_27:
  v27 = sub_1DB126680();
  v28 = v27;
  if (v27)
  {
LABEL_19:
    if (v28 >= 1)
    {
      v29 = 0;
      v30 = *(v0[18] + 304);
      do
      {
        if ((v25 & 0xC000000000000001) != 0)
        {
          v31 = MEMORY[0x1E1282190](v29, v25);
        }

        else
        {
          v31 = *(v25 + 8 * v29 + 32);
          swift_unknownObjectRetain();
        }

        ++v29;
        [v30 registerProgressProvider_];
        swift_unknownObjectRelease();
      }

      while (v28 != v29);
      goto LABEL_28;
    }

LABEL_32:
    __break(1u);
    return MEMORY[0x1EEE6DEC8](v27);
  }

LABEL_28:
  v32 = v0[18];

  v33 = *(v32 + 48);
  v0[21] = v33;
  v34 = *(v32 + 32);
  [v33 registerSource_];
  v35 = *(v32 + 304);
  [v35 registerProgressProvider_];
  v36 = *(v32 + 440);
  v0[22] = v36;
  [v33 registerSource_];
  [v35 registerProgressProvider_];
  v37 = *(v32 + 184);
  [v33 registerSource_];
  [v35 registerProgressProvider_];
  v38 = *(v32 + 176);
  v0[23] = v38;
  [v33 registerSource_];
  [v35 registerProgressProvider_];
  [*(v32 + 96) activate];
  v39 = *(v32 + 24);
  v0[2] = v0;
  v0[7] = v0 + 25;
  v0[3] = sub_1DB122F6C;
  v40 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC264D0, &qword_1DB1286F8);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DB1233A4;
  v0[13] = &block_descriptor_4;
  v0[14] = v40;
  [v39 loadAllAchievementsFromDatabaseIfNecessaryWithCompletionHandler_];
  v27 = (v0 + 2);

  return MEMORY[0x1EEE6DEC8](v27);
}

uint64_t sub_1DB122F6C()
{

  return MEMORY[0x1EEE6DFA0](sub_1DB12304C, 0, 0);
}

uint64_t sub_1DB12304C()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 144);
  [*(v0 + 168) activate];
  [*(v3 + 56) activate];
  [v2 activate];
  [v1 activate];
  __swift_project_boxed_opaque_existential_1((v3 + 136), *(v3 + 160));
  v4 = swift_task_alloc();
  *(v0 + 192) = v4;
  *v4 = v0;
  v4[1] = sub_1DB12312C;

  return sub_1DB11E454();
}

uint64_t sub_1DB12312C()
{

  return MEMORY[0x1EEE6DFA0](sub_1DB123228, 0, 0);
}

uint64_t sub_1DB123228()
{
  v1 = *(*(v0 + 144) + 280);
  [*(v1 + OBJC_IVAR____TtC22ActivityAwardsServices18NotificationSystem_achievementStore) addObserver_];
  v2 = [objc_opt_self() defaultCenter];
  if (qword_1EDEC8CB8 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 144);
  [v2 addObserver:v1 selector:? name:? object:?];

  v4 = *(v3 + 120);
  v5._countAndFlagsBits = 0x6574617669746361;
  v6._object = 0x80000001DB128F70;
  v6._countAndFlagsBits = 0xD000000000000069;
  v5._object = 0xEA00000000002928;
  Logger.trace(file:function:)(v6, v5);
  [*(v4 + OBJC_IVAR____TtC22ActivityAwardsServices19XPCEndpointProvider_listener) resume];

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1DB1233A4(uint64_t a1, char a2)
{
  **(*(*__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return MEMORY[0x1EEE6DED8]();
}

uint64_t sub_1DB123400(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_1DB1234E4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DB123548@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DB123608@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DB123654@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1DB12369C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DB12376C@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

void *sub_1DB12379C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {
        swift_unknownObjectRetain();
        goto LABEL_24;
      }

      ++v11;
      swift_unknownObjectRetain();
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

char *sub_1DB1238F0(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v8 = sub_1DB1262B0();
  v10 = sub_1DB1059D0(v8, v9);

  *&a4[OBJC_IVAR____TtC22ActivityAwardsServices27ActivityAwardsQueryListener_endpoint] = v10;
  *&a4[OBJC_IVAR____TtC22ActivityAwardsServices27ActivityAwardsQueryListener_achievementStore] = a2;
  *&a4[OBJC_IVAR____TtC22ActivityAwardsServices27ActivityAwardsQueryListener_cloudSyncStatusProvider] = a3;
  v20.receiver = a4;
  v20.super_class = type metadata accessor for ActivityAwardsQueryListener();
  swift_unknownObjectRetain();
  v11 = objc_msgSendSuper2(&v20, sel_init);
  v12 = *&v11[OBJC_IVAR____TtC22ActivityAwardsServices27ActivityAwardsQueryListener_achievementStore];
  v13 = v11;
  [v12 addObserver_];
  v14 = *&v13[OBJC_IVAR____TtC22ActivityAwardsServices27ActivityAwardsQueryListener_endpoint];
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1DB1080C8;
  *(v16 + 24) = v15;
  v17 = v13;
  v18 = v14;
  sub_1DB11FE34(2, sub_1DB1073CC, v16, &unk_1F56D8B20, &unk_1F56D8B48, sub_1DB10735C, sub_1DB107340);

  swift_unknownObjectRelease();

  return v17;
}

char *sub_1DB123AAC(void *a1, void *a2, uint64_t a3, char *a4)
{
  v8 = OBJC_IVAR____TtC22ActivityAwardsServices31ActivityAwardsDateQueryListener_dateComponents;
  v9 = sub_1DB126070();
  (*(*(v9 - 8) + 56))(&a4[v8], 1, 1, v9);
  *&a4[OBJC_IVAR____TtC22ActivityAwardsServices31ActivityAwardsDateQueryListener_lastAchievementsForDate] = MEMORY[0x1E69E7CD0];
  v10 = sub_1DB1262B0();
  v12 = sub_1DB1059D0(v10, v11);

  *&a4[OBJC_IVAR____TtC22ActivityAwardsServices31ActivityAwardsDateQueryListener_endpoint] = v12;
  *&a4[OBJC_IVAR____TtC22ActivityAwardsServices31ActivityAwardsDateQueryListener_achievementStore] = a2;
  *&a4[OBJC_IVAR____TtC22ActivityAwardsServices31ActivityAwardsDateQueryListener_cloudSyncStatusProvider] = a3;
  v23.receiver = a4;
  v23.super_class = type metadata accessor for ActivityAwardsDateQueryListener(0);
  v13 = a2;
  swift_unknownObjectRetain();
  v14 = objc_msgSendSuper2(&v23, sel_init);
  v15 = *&v14[OBJC_IVAR____TtC22ActivityAwardsServices31ActivityAwardsDateQueryListener_achievementStore];
  v16 = v14;
  [v15 addObserver_];
  v17 = *&v16[OBJC_IVAR____TtC22ActivityAwardsServices31ActivityAwardsDateQueryListener_endpoint];
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1DB124858;
  *(v19 + 24) = v18;
  v20 = v16;
  v21 = v17;
  sub_1DB11FE34(7, sub_1DB10E23C, v19, &unk_1F56D8BC0, &unk_1F56D8BE8, sub_1DB1247E4, sub_1DB124B8C);

  swift_unknownObjectRelease();

  return v20;
}

char *sub_1DB123CD0(void *a1, void *a2, uint64_t a3, char *a4)
{
  *&a4[OBJC_IVAR____TtC22ActivityAwardsServices40ActivityAwardsTemplateNamesQueryListener_templateNames] = 0;
  *&a4[OBJC_IVAR____TtC22ActivityAwardsServices40ActivityAwardsTemplateNamesQueryListener_lastAchievementsForTemplateNames] = MEMORY[0x1E69E7CD0];
  v8 = sub_1DB1262B0();
  v10 = sub_1DB1059D0(v8, v9);

  *&a4[OBJC_IVAR____TtC22ActivityAwardsServices40ActivityAwardsTemplateNamesQueryListener_endpoint] = v10;
  *&a4[OBJC_IVAR____TtC22ActivityAwardsServices40ActivityAwardsTemplateNamesQueryListener_achievementStore] = a2;
  *&a4[OBJC_IVAR____TtC22ActivityAwardsServices40ActivityAwardsTemplateNamesQueryListener_cloudSyncStatusProvider] = a3;
  v19.receiver = a4;
  v19.super_class = type metadata accessor for ActivityAwardsTemplateNamesQueryListener();
  v11 = a2;
  swift_unknownObjectRetain();
  v12 = objc_msgSendSuper2(&v19, sel_init);
  v13 = *&v12[OBJC_IVAR____TtC22ActivityAwardsServices40ActivityAwardsTemplateNamesQueryListener_endpoint];
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1DB124800;
  *(v15 + 24) = v14;
  v16 = v12;
  v17 = v13;
  sub_1DB11FE34(10, sub_1DB124808, v15, &unk_1F56D8C60, &unk_1F56D8C88, sub_1DB12483C, sub_1DB124B8C);

  swift_unknownObjectRelease();

  return v16;
}

char *sub_1DB123E9C(void *a1, void *a2, uint64_t a3, char *a4)
{
  v8 = OBJC_IVAR____TtC22ActivityAwardsServices43ActivityAwardsMonthlyChallengeQueryListener_dateComponents;
  v9 = sub_1DB126070();
  (*(*(v9 - 8) + 56))(&a4[v8], 1, 1, v9);
  *&a4[OBJC_IVAR____TtC22ActivityAwardsServices43ActivityAwardsMonthlyChallengeQueryListener_lastMonthlyChallengeAchievement] = 0;
  v10 = sub_1DB1262B0();
  v12 = sub_1DB1059D0(v10, v11);

  *&a4[OBJC_IVAR____TtC22ActivityAwardsServices43ActivityAwardsMonthlyChallengeQueryListener_endpoint] = v12;
  *&a4[OBJC_IVAR____TtC22ActivityAwardsServices43ActivityAwardsMonthlyChallengeQueryListener_achievementStore] = a2;
  *&a4[OBJC_IVAR____TtC22ActivityAwardsServices43ActivityAwardsMonthlyChallengeQueryListener_cloudSyncStatusProvider] = a3;
  v21.receiver = a4;
  v21.super_class = type metadata accessor for ActivityAwardsMonthlyChallengeQueryListener(0);
  v13 = a2;
  swift_unknownObjectRetain();
  v14 = objc_msgSendSuper2(&v21, sel_init);
  v15 = *&v14[OBJC_IVAR____TtC22ActivityAwardsServices43ActivityAwardsMonthlyChallengeQueryListener_endpoint];
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1DB1247DC;
  *(v17 + 24) = v16;
  v18 = v14;
  v19 = v15;
  sub_1DB11FE34(9, sub_1DB10E238, v17, &unk_1F56D8BC0, &unk_1F56D8BE8, sub_1DB1247E4, sub_1DB124B8C);

  swift_unknownObjectRelease();

  return v18;
}

uint64_t sub_1DB12409C(uint64_t a1)
{
  v2 = sub_1DB1261F0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC264E0, qword_1DB1288A8);
    v9 = sub_1DB126750();
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
      sub_1DB124798(&qword_1EDEC8CC8, MEMORY[0x1E6969AD8]);
      v16 = sub_1DB126280();
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
          sub_1DB124798(&qword_1EDEC8CC0, MEMORY[0x1E6969AE0]);
          v23 = sub_1DB126290();
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

  return MEMORY[0x1E69E7CD0];
}

void sub_1DB124394(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1DB126680())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC261B8, "B'");
      v3 = sub_1DB126750();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1DB126680();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x1E1282190](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_1DB126570();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_1DB1086F0(0, &qword_1EDEC8CF0, 0x1E69898F8);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_1DB126580();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_1DB126570();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_1DB1086F0(0, &qword_1EDEC8CF0, 0x1E69898F8);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_1DB126580();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_1DB12468C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 456))
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

uint64_t sub_1DB1246D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 440) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 456) = 1;
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

    *(result + 456) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DB124798(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1DB1261F0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DB124808@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

void *sub_1DB124860@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v6);
  if (v6 == 2)
  {
    v4 = 0;
    v5 = 0;
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  else
  {
    *a1 = v6 & 1;
    v5 = &protocol witness table for Bool;
    v4 = MEMORY[0x1E69E6370];
  }

  a1[3] = v4;
  a1[4] = v5;
  return result;
}

uint64_t sub_1DB124A60@<X0>(void *a1@<X8>)
{
  (*(v1 + 16))(&v6);
  v3 = v6;
  if (v6)
  {
    result = sub_1DB1086F0(0, &qword_1ECC264F0, 0x1E6989938);
    v5 = &protocol witness table for ACHCodableAchievementArray;
  }

  else
  {
    result = 0;
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

void *sub_1DB124AFC@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v8);
  v4 = v9;
  if (v9)
  {
    v5 = v8;
    v6 = &protocol witness table for String;
    v7 = MEMORY[0x1E69E6158];
  }

  else
  {
    v5 = 0;
    v7 = 0;
    v6 = 0;
    a1[2] = 0;
  }

  *a1 = v5;
  a1[1] = v4;
  a1[3] = v7;
  a1[4] = v6;
  return result;
}

uint64_t sub_1DB124BB8()
{
  result = sub_1DB1262A0();
  qword_1EDEC9348 = result;
  return result;
}

uint64_t sub_1DB124BF0(void *a1)
{
  v2 = v1;
  v26 = *MEMORY[0x1E69E9840];
  v4 = sub_1DB126250();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 24) = -1;
  *(v2 + 16) = a1;
  out_token = -1;
  v8 = *MEMORY[0x1E699DB48];
  sub_1DB11EB04();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E7F98], v4);
  v9 = a1;
  v10 = sub_1DB126550();
  (*(v5 + 8))(v7, v4);
  v11 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1DB125154;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DB11EAB0;
  aBlock[3] = &block_descriptor_5;
  v12 = _Block_copy(aBlock);

  v13 = notify_register_dispatch(v8, &out_token, v10, v12);
  _Block_release(v12);

  if (v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = out_token == -1;
  }

  if (v14)
  {
    if (qword_1EDEC89F8 != -1)
    {
      swift_once();
    }

    v15 = sub_1DB126230();
    __swift_project_value_buffer(v15, qword_1EDEC8A00);
    v16 = sub_1DB126210();
    v17 = sub_1DB126510();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 67240192;
      *(v18 + 4) = v13;
      _os_log_impl(&dword_1DB103000, v16, v17, "Error registering for Fitness Coaching Suppression State Changed, result: %{public}u", v18, 8u);
      MEMORY[0x1E1282A30](v18, -1, -1);
    }
  }

  else
  {
    if (qword_1EDEC89F8 != -1)
    {
      swift_once();
    }

    v19 = sub_1DB126230();
    __swift_project_value_buffer(v19, qword_1EDEC8A00);
    v20 = sub_1DB126210();
    v21 = sub_1DB126520();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1DB103000, v20, v21, "Registered for Fitness Coaching Suppression State Changed", v22, 2u);
      MEMORY[0x1E1282A30](v22, -1, -1);
    }

    *(v2 + 24) = out_token;
  }

  return v2;
}

uint64_t sub_1DB124FA0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1DB12515C();
  }

  return result;
}

uint64_t sub_1DB124FF8()
{
  v1 = v0;
  if (*(v0 + 24) != -1)
  {
    if (qword_1EDEC89F8 != -1)
    {
      swift_once();
    }

    v2 = sub_1DB126230();
    __swift_project_value_buffer(v2, qword_1EDEC8A00);
    v3 = sub_1DB126210();
    v4 = sub_1DB126520();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1DB103000, v3, v4, "Unregistered for Fitness Coaching Suppression State Changed", v5, 2u);
      MEMORY[0x1E1282A30](v5, -1, -1);
    }

    notify_cancel(*(v1 + 24));
    *(v1 + 24) = -1;
  }

  return v1;
}

uint64_t sub_1DB1250FC()
{
  sub_1DB124FF8();

  return swift_deallocClassInstance();
}

void sub_1DB12515C()
{
  if (qword_1EDEC89F8 != -1)
  {
    swift_once();
  }

  v0 = sub_1DB126230();
  __swift_project_value_buffer(v0, qword_1EDEC8A00);
  v1 = sub_1DB126210();
  v2 = sub_1DB126520();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1DB103000, v1, v2, "Received Fitness Coaching Suppression State Changed notification", v3, 2u);
    MEMORY[0x1E1282A30](v3, -1, -1);
  }

  v4 = [objc_opt_self() defaultCenter];
  v5 = v4;
  if (qword_1EDEC8CB8 != -1)
  {
    swift_once();
    v4 = v5;
  }

  [v4 postNotificationName:qword_1EDEC9348 object:0];
}

uint64_t sub_1DB1252C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC26240, &qword_1DB127F58);
  v0 = sub_1DB1261F0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DB127EB0;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E6969A48], v0);
  v6(v5 + v2, *MEMORY[0x1E6969A78], v0);
  v6(v5 + 2 * v2, *MEMORY[0x1E6969A68], v0);
  v7 = sub_1DB12409C(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1EDEC9340 = v7;
  return result;
}

Swift::String __swiftcall Platform.appBundle()()
{
  v1 = v0;
  if (v0 >= 2u)
  {
    v2 = 0xD00000000000001CLL;
  }

  else
  {
    v2 = 0xD000000000000011;
  }

  if (v1 >= 2)
  {
    v3 = "v24@?0@NSData8@NSError16";
  }

  else
  {
    v3 = "lerting.Unearned";
  }

  v4 = (v3 | 0x8000000000000000);
  result._object = v4;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t sub_1DB125470(uint64_t a1)
{
  BYTE8(v3) = 0;
  *&v3 = *v1;
  sub_1DB1267F0();
  return *(&v3 + 1);
}

uint64_t sub_1DB125594(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1DB125608(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_1DB105B74(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

void *sub_1DB125664(uint64_t a1, unint64_t a2)
{
  v3 = sub_1DB1256B0(a1, a2);
  sub_1DB1257E0(&unk_1F56D7508);
  return v3;
}

void *sub_1DB1256B0(uint64_t a1, unint64_t a2)
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

  v6 = sub_1DB10F79C(v5, 0);
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

  result = sub_1DB126790();
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
        v10 = sub_1DB126330();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1DB10F79C(v10, 0);
        result = sub_1DB126760();
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

uint64_t sub_1DB1257E0(uint64_t result)
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

  result = sub_1DB1258CC(result, v11, 1, v3);
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

char *sub_1DB1258CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC25F20, &qword_1DB127878);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

_BYTE **sub_1DB1259C0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t ACHCodableAchievementArray.serialized()()
{
  v1 = [v0 data];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DB126100();

  return v3;
}

uint64_t sub_1DB125A94(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC25F50, &unk_1DB128A70);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v25 - v4;
  v6 = sub_1DB126070();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - v11;
  v13 = sub_1DB1262A0();
  v14 = ACHYearMonthDayDateComponentsFromString();

  if (!v14)
  {
    goto LABEL_7;
  }

  sub_1DB126040();

  (*(v7 + 32))(v12, v10, v6);
  (*(v7 + 16))(v5, v12, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  v15 = OBJC_IVAR____TtC22ActivityAwardsServices43ActivityAwardsMonthlyChallengeQueryListener_dateComponents;
  swift_beginAccess();
  sub_1DB1118F4(v5, v2 + v15);
  swift_endAccess();
  v16 = *(v2 + OBJC_IVAR____TtC22ActivityAwardsServices43ActivityAwardsMonthlyChallengeQueryListener_cloudSyncStatusProvider);
  if (v16 && ![v16 isInitialCloudRestoreComplete] || (v17 = *(v2 + OBJC_IVAR____TtC22ActivityAwardsServices43ActivityAwardsMonthlyChallengeQueryListener_achievementStore), v18 = v2, v19 = sub_1DB126020(), v20 = objc_msgSend(v17, sel_monthlyChallengeAchievementForDateComponents_, v19), v19, v21 = *(v18 + OBJC_IVAR____TtC22ActivityAwardsServices43ActivityAwardsMonthlyChallengeQueryListener_lastMonthlyChallengeAchievement), *(v18 + OBJC_IVAR____TtC22ActivityAwardsServices43ActivityAwardsMonthlyChallengeQueryListener_lastMonthlyChallengeAchievement) = v20, v22 = v20, v21, !v22))
  {
    (*(v7 + 8))(v12, v6);
LABEL_7:
    type metadata accessor for SerializableAchievementCollection();
    result = swift_allocObject();
    v23 = MEMORY[0x1E69E7CC0];
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC26540, &qword_1DB1288A0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1DB1289E0;
  *(v23 + 32) = v22;
  (*(v7 + 8))(v12, v6);
  type metadata accessor for SerializableAchievementCollection();
  result = swift_allocObject();
LABEL_8:
  *(result + 16) = v23;
  return result;
}

id sub_1DB125DD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityAwardsMonthlyChallengeQueryListener(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ActivityAwardsMonthlyChallengeQueryListener(uint64_t a1)
{
  result = qword_1EDEC8C60;
  if (!qword_1EDEC8C60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DB125EDC(uint64_t a1)
{
  sub_1DB111668(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}