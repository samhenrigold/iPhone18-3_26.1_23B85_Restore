Swift::String_optional __swiftcall INHomeAutomationEntityProvider.haDestinationDeviceId()()
{
  v1 = sub_268945374(v0, &selRef_destinationDeviceId);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

void INHomeAutomationEntityProvider.haReference()()
{
  OUTLINED_FUNCTION_26();
  v2 = v0;
  v4 = v3;
  v5 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5CA8, &unk_268B3CE30);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_53_2();
  sub_268945374(v2, &selRef_intentReference);
  if (v12)
  {

    OUTLINED_FUNCTION_150();
    sub_268B37904();
    v13 = sub_268B37924();
    OUTLINED_FUNCTION_135(v1, 1, v13);
    if (v14)
    {
      sub_2688C058C(v1, &qword_2802A5CA8, &unk_268B3CE30);
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      __swift_project_value_buffer(v5, qword_2802CDA10);
      OUTLINED_FUNCTION_13_5();
      v15(v9);

      v16 = sub_268B37A34();
      v17 = sub_268B37EE4();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = OUTLINED_FUNCTION_172_0();
        v33 = OUTLINED_FUNCTION_173_0();
        *v18 = 136315138;
        v19 = OUTLINED_FUNCTION_150();
        v22 = sub_26892CDB8(v19, v20, v21);

        *(v18 + 4) = v22;
        OUTLINED_FUNCTION_93_2(&dword_2688BB000, v23, v17, "INHomeAutomationEntityProvider#haReference Unable to get reference for value: %s");
        __swift_destroy_boxed_opaque_existential_0Tm(v33);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();
      }

      else
      {
      }

      v31 = OUTLINED_FUNCTION_189();
      v32(v31);
      v29 = OUTLINED_FUNCTION_286();
    }

    else
    {

      (*(*(v13 - 8) + 32))(v4, v1, v13);
      v29 = v4;
      v30 = 0;
    }

    __swift_storeEnumTagSinglePayload(v29, v30, 1, v13);
    OUTLINED_FUNCTION_23();
  }

  else
  {
    sub_268B37924();
    OUTLINED_FUNCTION_96();
    OUTLINED_FUNCTION_23();

    __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  }
}

unint64_t *sub_2689448CC(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v11[6] = *MEMORY[0x277D85DE8];
  v11[0] = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v11[3] = v11;
  v11[4] = a2;
  v5 = ((1 << v4) + 63) >> 6;
  if (v4 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v6 = (&v11[-1] - ((8 * v5 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_2688F204C(0, v5, v6);
    v7 = sub_268944A6C(v6, v5, v3, a2);
  }

  else
  {
    v9 = swift_slowAlloc();
    v7 = sub_268944BF8(v9, v5, sub_26894759C);

    MEMORY[0x26D6266E0](v9, -1, -1);
  }

  return v7;
}

unint64_t *sub_268944A6C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v24 = *(a3 + 16);
  v22 = result;
  v23 = a3 + 32;
  v7 = a4 + 56;
  while (1)
  {
    v21 = v5;
LABEL_3:
    if (v6 == v24)
    {
      goto LABEL_19;
    }

    if (v6 >= v24)
    {
      break;
    }

    if (__OFADD__(v6, 1))
    {
      goto LABEL_21;
    }

    v8 = (v23 + 16 * v6);
    v10 = *v8;
    v9 = v8[1];
    v25 = v6 + 1;
    sub_268B38514();

    sub_268B37C54();
    v11 = sub_268B38544();
    v12 = ~(-1 << *(a4 + 32));
    do
    {
      v13 = v11 & v12;
      v14 = (v11 & v12) >> 6;
      v15 = 1 << (v11 & v12);
      if ((v15 & *(v7 + 8 * v14)) == 0)
      {

        v6 = v25;
        goto LABEL_3;
      }

      v16 = (*(a4 + 48) + 16 * v13);
      if (*v16 == v10 && v16[1] == v9)
      {
        break;
      }

      v18 = sub_268B38444();
      v11 = v13 + 1;
    }

    while ((v18 & 1) == 0);

    v19 = v22[v14];
    v22[v14] = v19 | v15;
    v6 = v25;
    if ((v19 & v15) != 0)
    {
      goto LABEL_3;
    }

    v5 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_19:

      return sub_2688F26AC(v22, a2, v21, a4);
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void *sub_268944BF8(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    result = a3(&v7, v6, a2);
    if (!v3)
    {
      return v7;
    }
  }

  return result;
}

unint64_t *sub_268944C74(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v43[2] = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v43[0] = a1;
    v3 = *(a1 + 16);
    v41 = a1 + 32;
    v4 = a2 + 56;
    v5 = 0;

    v40 = v3;
LABEL_3:
    if (v5 != v3)
    {
      v6 = (v41 + 16 * v5);
      v8 = *v6;
      v7 = v6[1];
      ++v5;
      sub_268B38514();

      sub_268B37C54();
      v9 = sub_268B38544();
      v10 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v11 = v9 & v10;
        v12 = (v9 & v10) >> 6;
        v13 = 1 << (v9 & v10);
        if ((v13 & *(v4 + 8 * v12)) == 0)
        {

          v3 = v40;
          goto LABEL_3;
        }

        v14 = (*(v2 + 48) + 16 * v11);
        v15 = *v14 == v8 && v14[1] == v7;
        if (v15 || (sub_268B38444() & 1) != 0)
        {
          break;
        }

        v9 = v11 + 1;
      }

      v16 = v5;
      v43[1] = v5;

      v18 = *(v2 + 32);
      v19 = ((1 << v18) + 63) >> 6;
      v20 = 8 * v19;
      if ((v18 & 0x3Fu) > 0xD)
      {
LABEL_38:

        if (!swift_stdlib_isStackAllocationSafe())
        {
LABEL_41:
          v34 = swift_slowAlloc();
          v35 = sub_268945228(v34, v19, (v2 + 56), v19, v2, v11, v43);

          MEMORY[0x26D6266E0](v34, -1, -1);

          return v35;
        }
      }

      v36[0] = v19;
      v36[1] = v36;
      MEMORY[0x28223BE20](v17);
      v21 = v36 - ((v20 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v21, (v2 + 56), v20);
      v22 = *&v21[8 * v12] & ~v13;
      v38 = v21;
      *&v21[8 * v12] = v22;
      v23 = *(v2 + 16) - 1;
      v11 = v42;
      v40 = *(v42 + 16);
      v19 = v16;
      while (1)
      {
        v37 = v23;
        v39 = v16;
LABEL_16:
        while (2)
        {
          if (v19 == v40)
          {
            v2 = sub_2688F26AC(v38, v36[0], v37, v2);
            goto LABEL_33;
          }

          if ((v16 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          if (v19 >= *(v11 + 16))
          {
            goto LABEL_37;
          }

          v24 = (v41 + 16 * v19);
          v13 = *v24;
          v12 = v24[1];
          ++v19;
          sub_268B38514();

          sub_268B37C54();
          v25 = sub_268B38544();
          v20 = ~(-1 << *(v2 + 32));
          do
          {
            v26 = v25 & v20;
            v27 = (v25 & v20) >> 6;
            v28 = 1 << (v25 & v20);
            if ((v28 & *(v4 + 8 * v27)) == 0)
            {

              v11 = v42;
              v16 = v39;
              goto LABEL_16;
            }

            v29 = (*(v2 + 48) + 16 * v26);
            if (*v29 == v13 && v29[1] == v12)
            {
              break;
            }

            v31 = sub_268B38444();
            v25 = v26 + 1;
          }

          while ((v31 & 1) == 0);

          v32 = v38[v27];
          v38[v27] = v32 & ~v28;
          v15 = (v32 & v28) == 0;
          v11 = v42;
          v16 = v39;
          if (v15)
          {
            continue;
          }

          break;
        }

        v23 = v37 - 1;
        if (__OFSUB__(v37, 1))
        {
          break;
        }

        v16 = v19;
        if (v37 == 1)
        {

          v2 = MEMORY[0x277D84FA0];
          goto LABEL_33;
        }
      }

      __break(1u);
      goto LABEL_41;
    }

LABEL_33:
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return v2;
}

unint64_t *sub_26894507C(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = *(a3 + 16);
  v25 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v8 = a3 + 56;
  v26 = a5;
  while (1)
  {
    v24 = v7;
LABEL_3:
    v9 = a5[1];
    v10 = *(*a5 + 16);
    if (v9 == v10)
    {

      return sub_2688F26AC(v25, a2, v24, a3);
    }

    if (v9 >= v10)
    {
      break;
    }

    v11 = *a5 + 16 * v9;
    v13 = *(v11 + 32);
    v12 = *(v11 + 40);
    a5[1] = v9 + 1;
    sub_268B38514();

    sub_268B37C54();
    v14 = sub_268B38544();
    v15 = ~(-1 << *(a3 + 32));
    do
    {
      v16 = v14 & v15;
      v17 = (v14 & v15) >> 6;
      v18 = 1 << (v14 & v15);
      if ((v18 & *(v8 + 8 * v17)) == 0)
      {

        a5 = v26;
        goto LABEL_3;
      }

      v19 = (*(a3 + 48) + 16 * v16);
      if (*v19 == v13 && v19[1] == v12)
      {
        break;
      }

      v21 = sub_268B38444();
      v14 = v16 + 1;
    }

    while ((v21 & 1) == 0);

    v22 = v25[v17];
    v25[v17] = v22 & ~v18;
    a5 = v26;
    if ((v22 & v18) == 0)
    {
      goto LABEL_3;
    }

    v7 = v24 - 1;
    if (__OFSUB__(v24, 1))
    {
      goto LABEL_20;
    }

    if (v24 == 1)
    {
      return MEMORY[0x277D84FA0];
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t *sub_268945228(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_26894507C(a1, a2, a5, a6, a7);

  return v12;
}

uint64_t sub_2689452B0(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_268B37CF4();

  return v4;
}

uint64_t sub_268945304(void *a1)
{
  v1 = [a1 intentFromEntities];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_2688EA03C(0, &qword_2802A61F0, 0x277CD3CE0);
  v3 = sub_268B37CF4();

  return v3;
}

uint64_t sub_268945374(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_268B37BF4();
  }

  return OUTLINED_FUNCTION_123();
}

uint64_t sub_2689453E4(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5FA8, &unk_268B3DEF0);
  OUTLINED_FUNCTION_182();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[7];
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5CA8, &unk_268B3CE30);
  OUTLINED_FUNCTION_182();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[10];
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58C0, &unk_268B3F080);
  OUTLINED_FUNCTION_182();
  if (*(v13 + 84) == a2)
  {
    v8 = v12;
    v9 = a3[11];
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5FB0, &unk_268B3DF00);
  OUTLINED_FUNCTION_182();
  if (*(v15 + 84) == a2)
  {
    v8 = v14;
    v9 = a3[13];
    goto LABEL_9;
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BA8, &qword_268B3C690);
    OUTLINED_FUNCTION_182();
    if (*(v19 + 84) == a2)
    {
      v8 = v18;
      v9 = a3[22];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0);
      OUTLINED_FUNCTION_182();
      if (*(v21 + 84) == a2)
      {
        v8 = v20;
        v9 = a3[24];
      }

      else
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5908, &qword_268B3D920);
        v9 = a3[25];
      }
    }

LABEL_9:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  v17 = *(a1 + a3[14]);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

void sub_268945658(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5FA8, &unk_268B3DEF0);
  OUTLINED_FUNCTION_182();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[7];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5CA8, &unk_268B3CE30);
    OUTLINED_FUNCTION_182();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v11 = a4[10];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58C0, &unk_268B3F080);
      OUTLINED_FUNCTION_182();
      if (*(v15 + 84) == a3)
      {
        v10 = v14;
        v11 = a4[11];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5FB0, &unk_268B3DF00);
        OUTLINED_FUNCTION_182();
        if (*(v17 + 84) == a3)
        {
          v10 = v16;
          v11 = a4[13];
        }

        else
        {
          if (a3 == 0x7FFFFFFF)
          {
            *(a1 + a4[14]) = (a2 - 1);
            return;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BA8, &qword_268B3C690);
          OUTLINED_FUNCTION_182();
          if (*(v19 + 84) == a3)
          {
            v10 = v18;
            v11 = a4[22];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0);
            OUTLINED_FUNCTION_182();
            if (*(v21 + 84) == a3)
            {
              v10 = v20;
              v11 = a4[24];
            }

            else
            {
              v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5908, &qword_268B3D920);
              v11 = a4[25];
            }
          }
        }
      }
    }
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t type metadata accessor for MediaPlayerIntent(uint64_t a1)
{
  result = qword_2802A5FB8;
  if (!qword_2802A5FB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268945900(uint64_t a1)
{
  sub_268945E58(319, &qword_2802A5FC8, &type metadata for MediaPlayerVerb, MEMORY[0x277D83D88]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_268945E58(319, &qword_2802A5FD0, &type metadata for MediaPlayerBoolSettingVerb, MEMORY[0x277D83D88]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_268945E58(319, &qword_2802A5FD8, &type metadata for MediaPlayerBoolSettingState, MEMORY[0x277D83D88]);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_268945EA8(319, &qword_2802A5FE0, MEMORY[0x277D5E5A8], MEMORY[0x277D83D88]);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_268945E58(319, &qword_2802A5FE8, &type metadata for MediaPlayerAttributes, MEMORY[0x277D83D88]);
          v2 = v10;
          if (v11 <= 0x3F)
          {
            sub_268945E58(319, &qword_2802A5E58, &type metadata for ConfirmationStateValue, MEMORY[0x277D83D88]);
            v2 = v12;
            if (v13 <= 0x3F)
            {
              sub_268945EA8(319, &qword_2802A5E70, MEMORY[0x277D5FA18], MEMORY[0x277D83D88]);
              v2 = v14;
              if (v15 <= 0x3F)
              {
                sub_268945EA8(319, &qword_2802A5E60, MEMORY[0x277D5F7B8], MEMORY[0x277D83D88]);
                v2 = v16;
                if (v17 <= 0x3F)
                {
                  sub_268945E58(319, &qword_2802A5FF0, &type metadata for MediaType, MEMORY[0x277D83D88]);
                  v2 = v18;
                  if (v19 <= 0x3F)
                  {
                    sub_268945DF4(319);
                    v2 = v20;
                    if (v21 <= 0x3F)
                    {
                      sub_268945E58(319, &qword_2802A6008, &type metadata for UsoMediaSettingName, MEMORY[0x277D83940]);
                      v2 = v22;
                      if (v23 <= 0x3F)
                      {
                        sub_268945E58(319, &qword_2802A5E68, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
                        v2 = v24;
                        if (v25 <= 0x3F)
                        {
                          sub_268945E58(319, &qword_2802A5E50, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
                          if (v27 > 0x3F)
                          {
                            return v26;
                          }

                          else
                          {
                            sub_268945EA8(319, &qword_2802A5E78, MEMORY[0x277D5F790], MEMORY[0x277D83940]);
                            v2 = v28;
                            if (v29 <= 0x3F)
                            {
                              sub_268945EA8(319, &qword_2802A5E80, MEMORY[0x277D5F880], MEMORY[0x277D83D88]);
                              v2 = v30;
                              if (v31 <= 0x3F)
                              {
                                sub_268945EA8(319, &qword_2802A5E88, MEMORY[0x277D5F748], MEMORY[0x277D83D88]);
                                v2 = v32;
                                if (v33 <= 0x3F)
                                {
                                  sub_268945EA8(319, &qword_2802A5E90, MEMORY[0x277D5F9D0], MEMORY[0x277D83D88]);
                                  v2 = v34;
                                  if (v35 <= 0x3F)
                                  {
                                    swift_cvw_initStructMetadataWithLayoutString();
                                    return 0;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v2;
}

void sub_268945DF4(uint64_t a1)
{
  if (!qword_2802A5FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802A6000, &unk_268B41120);
    v1 = sub_268B380A4();
    if (!v2)
    {
      atomic_store(v1, &qword_2802A5FF8);
    }
  }
}

void sub_268945E58(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_268945EA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for MediaType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE7)
  {
    if (a2 + 25 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 25) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 26;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v5 = v6 - 26;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MediaType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE6)
  {
    v6 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x268946060);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 25;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_2689460B0(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x26894617CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaPlayerBoolSettingVerb(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MediaPlayerBoolSettingVerb(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x268946308);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaPlayerVerb(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE9)
  {
    if (a2 + 23 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 23) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 24;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v5 = v6 - 24;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MediaPlayerVerb(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE8)
  {
    v6 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x268946494);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 23;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2689464E8()
{
  result = qword_2802A6010;
  if (!qword_2802A6010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6010);
  }

  return result;
}

unint64_t sub_268946570()
{
  result = qword_2802A6028;
  if (!qword_2802A6028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6028);
  }

  return result;
}

unint64_t sub_2689465C8()
{
  result = qword_2802A6030;
  if (!qword_2802A6030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6030);
  }

  return result;
}

unint64_t sub_268946620()
{
  result = qword_2802A6038;
  if (!qword_2802A6038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6038);
  }

  return result;
}

unint64_t sub_2689466A8()
{
  result = qword_2802A6050;
  if (!qword_2802A6050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6050);
  }

  return result;
}

unint64_t sub_268946700()
{
  result = qword_2802A6058;
  if (!qword_2802A6058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6058);
  }

  return result;
}

unint64_t sub_268946758()
{
  result = qword_2802A6060;
  if (!qword_2802A6060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6060);
  }

  return result;
}

unint64_t sub_2689467E0()
{
  result = qword_2802A6078;
  if (!qword_2802A6078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6078);
  }

  return result;
}

unint64_t sub_268946838()
{
  result = qword_2802A6080;
  if (!qword_2802A6080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6080);
  }

  return result;
}

unint64_t sub_268946890()
{
  result = qword_2802A6088;
  if (!qword_2802A6088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6088);
  }

  return result;
}

unint64_t sub_268946918()
{
  result = qword_2802A60A0;
  if (!qword_2802A60A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A60A0);
  }

  return result;
}

unint64_t sub_268946970()
{
  result = qword_2802A60A8;
  if (!qword_2802A60A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A60A8);
  }

  return result;
}

unint64_t sub_2689469C8()
{
  result = qword_2802A60B0;
  if (!qword_2802A60B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A60B0);
  }

  return result;
}

unint64_t sub_268946A50()
{
  result = qword_2802A60C8;
  if (!qword_2802A60C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A60C8);
  }

  return result;
}

unint64_t sub_268946AA8()
{
  result = qword_2802A60D0;
  if (!qword_2802A60D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A60D0);
  }

  return result;
}

unint64_t sub_268946B00()
{
  result = qword_2802A60D8;
  if (!qword_2802A60D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A60D8);
  }

  return result;
}

unint64_t sub_268946B88()
{
  result = qword_2802A60F0;
  if (!qword_2802A60F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A60F0);
  }

  return result;
}

unint64_t sub_268946BE0()
{
  result = qword_2802A60F8;
  if (!qword_2802A60F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A60F8);
  }

  return result;
}

uint64_t sub_268946C34(uint64_t a1)
{
  result = sub_268946DBC(&qword_2802A58E0, type metadata accessor for MediaPlayerIntent, &unk_268B3E718);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268946C8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaPlayerIntent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268946CF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaPlayerIntent(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_268946D54()
{
  result = qword_2802A6118;
  if (!qword_2802A6118)
  {
    sub_2688EA03C(255, &qword_2802A6110, 0x277CD3CD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6118);
  }

  return result;
}

uint64_t sub_268946DBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_268946E04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_268946E74(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_268946ECC()
{

  OUTLINED_FUNCTION_0_3();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

unint64_t sub_268946F08()
{
  result = qword_2802A6158;
  if (!qword_2802A6158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6158);
  }

  return result;
}

unint64_t sub_268946F5C()
{
  result = qword_2802A6160;
  if (!qword_2802A6160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6160);
  }

  return result;
}

unint64_t sub_268946FB0()
{
  result = qword_2802A6168;
  if (!qword_2802A6168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6168);
  }

  return result;
}

unint64_t sub_268947004()
{
  result = qword_2802A6170;
  if (!qword_2802A6170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6170);
  }

  return result;
}

unint64_t sub_268947058()
{
  result = qword_2802A6178;
  if (!qword_2802A6178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6178);
  }

  return result;
}

unint64_t sub_2689470AC()
{
  result = qword_2802A6180;
  if (!qword_2802A6180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6180);
  }

  return result;
}

unint64_t sub_268947100()
{
  result = qword_2802A6188;
  if (!qword_2802A6188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6188);
  }

  return result;
}

unint64_t sub_268947154()
{
  result = qword_2802A6190;
  if (!qword_2802A6190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6190);
  }

  return result;
}

unint64_t sub_2689471A8()
{
  result = qword_2802A6198;
  if (!qword_2802A6198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6198);
  }

  return result;
}

unint64_t sub_2689471FC()
{
  result = qword_2802A61A0;
  if (!qword_2802A61A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A61A0);
  }

  return result;
}

unint64_t sub_268947250()
{
  result = qword_2802A61A8;
  if (!qword_2802A61A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A61A8);
  }

  return result;
}

unint64_t sub_2689472A4()
{
  result = qword_2802A61B0;
  if (!qword_2802A61B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A61B0);
  }

  return result;
}

unint64_t sub_2689472F8()
{
  result = qword_2802A61B8;
  if (!qword_2802A61B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A61B8);
  }

  return result;
}

unint64_t sub_26894734C()
{
  result = qword_2802A61C0;
  if (!qword_2802A61C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A61C0);
  }

  return result;
}

unint64_t sub_2689473A0()
{
  result = qword_2802A61C8;
  if (!qword_2802A61C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A61C8);
  }

  return result;
}

unint64_t sub_2689473F4()
{
  result = qword_2802A61D0;
  if (!qword_2802A61D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A61D0);
  }

  return result;
}

unint64_t sub_268947448()
{
  result = qword_2802A61D8;
  if (!qword_2802A61D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A61D8);
  }

  return result;
}

unint64_t sub_26894749C()
{
  result = qword_2802A61E0;
  if (!qword_2802A61E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A61E0);
  }

  return result;
}

unint64_t sub_2689474F0()
{
  result = qword_2802A61E8;
  if (!qword_2802A61E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802A5A20, &unk_268B3C060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A61E8);
  }

  return result;
}

unint64_t *sub_26894756C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, unint64_t **a5@<X8>)
{
  result = sub_268944A6C(a1, a2, *a3, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_2689475C0(unsigned __int8 *a1, int a2)
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

  return OUTLINED_FUNCTION_209_0(a1);
}

_BYTE *sub_26894760C(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x2689476A8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2689476E4()
{
  result = qword_2802A6200;
  if (!qword_2802A6200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6200);
  }

  return result;
}

unint64_t sub_26894776C()
{
  result = qword_2802A6218;
  if (!qword_2802A6218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6218);
  }

  return result;
}

unint64_t sub_2689477C4()
{
  result = qword_2802A6220;
  if (!qword_2802A6220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6220);
  }

  return result;
}

unint64_t sub_268947818()
{
  result = qword_2802A6228;
  if (!qword_2802A6228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6228);
  }

  return result;
}

unint64_t sub_26894786C()
{
  result = qword_2802A6230;
  if (!qword_2802A6230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6230);
  }

  return result;
}

unint64_t sub_2689478C0()
{
  result = qword_2802A6238;
  if (!qword_2802A6238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6238);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_29_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_30_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_33_2(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);
}

void *OUTLINED_FUNCTION_34_1()
{
  v2 = *(v0 - 136);

  return __swift_project_boxed_opaque_existential_1((v0 - 160), v2);
}

uint64_t OUTLINED_FUNCTION_48_2()
{

  return sub_268946E74(v0, type metadata accessor for MediaPlayerNLv3Intent);
}

uint64_t OUTLINED_FUNCTION_52_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_268B38024();
}

uint64_t OUTLINED_FUNCTION_58_2@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v6 = v3 + *(a3 - 256);

  return sub_268932694(v4, v6, a1, a2);
}

uint64_t OUTLINED_FUNCTION_63_2()
{

  return sub_268B35C64();
}

void OUTLINED_FUNCTION_65_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_93_2(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_95_1()
{
}

uint64_t OUTLINED_FUNCTION_97_0()
{
}

uint64_t OUTLINED_FUNCTION_99_1@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!result)
  {
    return a2;
  }

  return result;
}

void OUTLINED_FUNCTION_112_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void sub_268947F08()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v34 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  v17 = v16 - v15;
  v18 = sub_26894B7A0(v11);
  MEMORY[0x26D625650](v18);

  MEMORY[0x26D625650](35, 0xE100000000000000);

  v19 = sub_26894BAF4(v9);
  v21 = v20;
  v37 = 40;
  v38 = 0xE100000000000000;

  MEMORY[0x26D625650](v19, v21);

  OUTLINED_FUNCTION_184();

  if (v7)
  {
    ObjectType = swift_getObjectType();
    v23 = *(v5 + 24);
    v24 = v7;
    v23(ObjectType, v5);
    v25 = sub_268B38404();
    v35 = 978611496;
    v36 = 0xE400000000000000;
    MEMORY[0x26D625650](v25);

    OUTLINED_FUNCTION_184();

    MEMORY[0x26D625650](978611496, 0xE400000000000000);

    if ((*(v5 + 8))(ObjectType, v5))
    {
      v26 = 49;
    }

    else
    {
      v26 = 48;
    }

    MEMORY[0x26D625650](v26, 0xE100000000000000);

    OUTLINED_FUNCTION_184();

    MEMORY[0x26D625650](978807080, 0xE400000000000000);
  }

  v35 = 978481960;
  v36 = 0xE400000000000000;
  MEMORY[0x26D625650](v3, v1);

  OUTLINED_FUNCTION_184();

  MEMORY[0x26D625650](978481960, 0xE400000000000000);

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v27 = __swift_project_value_buffer(v34, qword_2802CDA10);
  (*(v13 + 16))(v17, v27, v34);
  v28 = v37;
  v29 = v38;

  v30 = sub_268B37A34();
  v31 = sub_268B37F04();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = OUTLINED_FUNCTION_173_0();
    v35 = v33;
    *v32 = 136315138;
    *(v32 + 4) = sub_26892CDB8(v28, v29, &v35);
    _os_log_impl(&dword_2688BB000, v30, v31, "AnalyticsService#encodeInfo: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v33);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();
  }

  (*(v13 + 8))(v17, v34);
  OUTLINED_FUNCTION_23();
}

void sub_268948308(uint64_t a1)
{
  v2 = v1;
  v4 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  if (!*(a1 + 16))
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    __swift_project_value_buffer(v4, qword_2802CDA10);
    v11 = OUTLINED_FUNCTION_12_7();
    v12(v11);
    v13 = sub_268B37A34();
    v14 = sub_268B37ED4();
    if (os_log_type_enabled(v13, v14))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_20_5(&dword_2688BB000, v15, v16, "AnalytiscsService#sendSiriKitEventUUFRReadyIfNeeded#views #### views are empty, sending uufrReady");
      OUTLINED_FUNCTION_12();
    }

    (*(v6 + 8))(v10, v4);
    __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
    sub_268B34C44();
    v17 = sub_268B34C34();
    sub_268AD03EC(v17);
  }
}

void sub_268948494(uint64_t a1)
{
  v2 = v1;
  v4 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  if (!*(a1 + 24))
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    __swift_project_value_buffer(v4, qword_2802CDA10);
    v11 = OUTLINED_FUNCTION_12_7();
    v12(v11);
    v13 = sub_268B37A34();
    v14 = sub_268B37ED4();
    if (os_log_type_enabled(v13, v14))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_20_5(&dword_2688BB000, v15, v16, "AnalytiscsService#sendSiriKitEventUUFRReadyIfNeeded#snippet #### no snippet, sending uufrReady");
      OUTLINED_FUNCTION_12();
    }

    (*(v6 + 8))(v10, v4);
    __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
    sub_268B34C44();
    v17 = sub_268B34C34();
    sub_268AD03EC(v17);
  }
}

uint64_t sub_268948620(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = *v9;
  __swift_project_boxed_opaque_existential_1(v9 + 13, v9[16]);
  v16 = swift_allocObject();
  *(v16 + 16) = v9;
  *(v16 + 24) = a5;
  *(v16 + 32) = a3;
  *(v16 + 40) = a1;
  *(v16 + 48) = a2;
  *(v16 + 56) = a4;
  *(v16 + 64) = a6;
  *(v16 + 72) = a7;
  *(v16 + 80) = a8;
  *(v16 + 88) = a9;
  *(v16 + 96) = v15;

  sub_268B36DB4();
}

uint64_t sub_268948760(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, unint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v34[1] = a8;
  LODWORD(v35) = a5;
  v38 = a3;
  v39 = a6;
  v14 = sub_268B37A54();
  v36 = *(v14 - 8);
  v37 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);

  v17 = sub_268948BC0(a4);
  if (v17)
  {
    v18 = v17;
  }

  else
  {
    sub_268B368F4();
    v18 = sub_268B368D4();
  }

  sub_268B34C44();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = a9;
  v19[4] = a10;
  v19[5] = a11;
  v19[6] = a12;

  LOBYTE(v41) = 0;
  v20 = sub_268B34C24();
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v21 = v37;
  v22 = __swift_project_value_buffer(v37, qword_2802CDA10);
  v23 = v36;
  (*(v36 + 16))(v16, v22, v21);

  v24 = sub_268B37A34();
  v25 = sub_268B37F04();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v35 = v20;
    v28 = v23;
    v29 = v27;
    v41 = v27;
    *v26 = 136315394;
    *(v26 + 4) = sub_26892CDB8(v39, a7, &v41);
    *(v26 + 12) = 2080;
    v40 = v18;
    sub_268B368F4();
    sub_26894BF64();
    v30 = sub_268B38404();
    v32 = sub_26892CDB8(v30, v31, &v41);

    *(v26 + 14) = v32;
    _os_log_impl(&dword_2688BB000, v24, v25, "Submit SiriKitEvent for intent: %s and loggedApp: %s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D6266E0](v29, -1, -1);
    MEMORY[0x26D6266E0](v26, -1, -1);

    (*(v28 + 8))(v16, v21);
    v20 = v35;
  }

  else
  {

    (*(v23 + 8))(v16, v21);
  }

  __swift_project_boxed_opaque_existential_1((v38 + 16), *(v38 + 40));
  sub_268AD03EC(v20);
  sub_268948C34();
}

uint64_t sub_268948B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  sub_268B34BF4();

  sub_268B34C04();

  return sub_268B34BE4();
}

uint64_t sub_268948BC0(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {

    v2 = sub_268B368E4();
    if (v3)
    {
      v4 = v2 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v4 = 0;
    }

    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0xE000000000000000;
    }

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v4;
    }

    if (!v6)
    {

      return 0;
    }
  }

  return v1;
}

uint64_t sub_268948C34()
{
  v0 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v6 = v5 - v4;
  v7 = sub_268B368E4();
  if (v8)
  {
    v9 = v7 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  v12 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v12 = v9;
  }

  if (!v12)
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    v13 = __swift_project_value_buffer(v0, qword_2802CDA10);
    (*(v2 + 16))(v6, v13, v0);
    v14 = sub_268B37A34();
    v15 = sub_268B37EE4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2688BB000, v14, v15, "AnalyticsService#ensureAppIdentifier found nil or empty appIdentifier", v16, 2u);
      OUTLINED_FUNCTION_12();
    }

    return (*(v2 + 8))(v6, v0);
  }

  return result;
}

void sub_268948DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_26();
  v80 = v26;
  v28 = v27;
  v30 = v29;
  v84 = a26;
  v85 = v31;
  v82 = a23;
  v83 = a25;
  v87 = v32;
  v88 = a22;
  v81 = a21;
  v90 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v86 = v33;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1_0();
  v89 = v36 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  MEMORY[0x28223BE20](v37 - 8);
  v39 = &v80 - v38;
  v40 = sub_268B34E24();
  OUTLINED_FUNCTION_1();
  v42 = v41;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_1_0();
  v46 = v45 - v44;

  v47 = sub_268948BC0(v30);
  if (v47)
  {
    v48 = v47;
  }

  else
  {
    sub_268B368F4();
    v48 = sub_268B368D4();
  }

  sub_268B34C44();
  (*(v42 + 16))(v46, v28, v40);
  v49 = v85;
  v50 = [v85 typeName];
  sub_268B37BF4();

  sub_26894D5AC(v80, v39, &unk_2802A62B0, &unk_268B3BDF0);
  v51 = swift_allocObject();
  *(v51 + 16) = v48;
  *(v51 + 24) = v81;
  v52 = v88;
  v54 = v82;
  v53 = v83;
  *(v51 + 32) = v88;
  *(v51 + 40) = v54;
  *(v51 + 48) = a24;
  *(v51 + 56) = v53;
  *(v51 + 64) = v84;

  v55 = v52;

  v56 = sub_268B34C14();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v57 = v90;
  v58 = __swift_project_value_buffer(v90, qword_2802CDA10);
  v59 = v86;
  v60 = v89;
  (*(v86 + 16))(v89, v58, v57);

  v61 = v55;
  v62 = v49;
  v63 = sub_268B37A34();
  v64 = sub_268B37F04();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = OUTLINED_FUNCTION_173_0();
    v85 = v56;
    v66 = v59;
    v67 = v65;
    v92[0] = swift_slowAlloc();
    *v67 = 136315650;
    v68 = [v62 typeName];
    v69 = sub_268B37BF4();
    v71 = v70;

    v72 = sub_26892CDB8(v69, v71, v92);

    *(v67 + 4) = v72;
    *(v67 + 12) = 2080;
    v91 = v88;
    v73 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6240, &unk_268B3EA30);
    v74 = sub_268B37C24();
    v76 = sub_26892CDB8(v74, v75, v92);

    *(v67 + 14) = v76;
    *(v67 + 22) = 2080;
    v91 = v48;
    sub_268B368F4();
    sub_26894BF64();
    v77 = sub_268B38404();
    v79 = sub_26892CDB8(v77, v78, v92);

    *(v67 + 24) = v79;
    _os_log_impl(&dword_2688BB000, v63, v64, "Submit SiriKitEvent for intent: %s with domainContext: %s and loggedApp: %s", v67, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    (*(v66 + 8))(v89, v90);
    v56 = v85;
  }

  else
  {

    (*(v59 + 8))(v60, v57);
  }

  __swift_project_boxed_opaque_existential_1((v87 + 16), *(v87 + 40));
  sub_268AD03EC(v56);
  sub_268948C34();

  OUTLINED_FUNCTION_23();
}

uint64_t sub_268949328(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  sub_268B34BF4();
  sub_268B38044();
  sub_268B34C04();
  v9 = a4;
  sub_268B34BD4();

  sub_268B34BC4();

  return sub_268B34BE4();
}

uint64_t sub_2689493CC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_268920C9C(a3);
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268B3BBA0;
  *(inited + 32) = a4;
  v10 = a4;
  sub_268949478(a1, a2, v8, inited);

  swift_setDeallocating();
  return sub_268ACE718();
}

uint64_t sub_268949478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45[0] = a3;

  sub_26894BFBC(v45, 4);
  sub_2689A99C8(v45[0], v45);

  v6 = v46;
  if (v46)
  {
    v7 = v47;
    __swift_project_boxed_opaque_existential_1(v45, v46);
    v8 = OUTLINED_FUNCTION_11_7();
    v10 = v9(v8, v7);
    if (v10)
    {
      v6 = v10;
      [v10 proximity];
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v45);
  }

  else
  {
    sub_26894DD8C(v45, &qword_2802A6278, &qword_268B3EA58);
  }

  v11 = sub_2688EFD0C();
  if (v11)
  {
    OUTLINED_FUNCTION_21_5();
    if (v6)
    {
      v12 = MEMORY[0x26D625BD0](0, a4);
    }

    else
    {
      v12 = *(a4 + 32);
    }

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = [v13 confirmed];

  sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
  v15 = sub_268B38054();
  v16 = v15;
  if (!v14)
  {

    goto LABEL_16;
  }

  v17 = sub_268B38074();

  if ((v17 & 1) == 0)
  {
LABEL_16:
    if (v11)
    {
      OUTLINED_FUNCTION_21_5();
      if (v16)
      {
        v18 = MEMORY[0x26D625BD0](0, a4);
      }

      else
      {
        v18 = *(a4 + 32);
      }

      v11 = v18;
    }

    v19 = [v11 disambiguated];

    v20 = sub_268B38054();
    v21 = v20;
    if (v19)
    {
      sub_268B38074();
    }

    else
    {
    }
  }

  sub_268949A54();
  v22 = *(a3 + 16);
  if (!v22)
  {
LABEL_41:
    sub_268949F5C();
  }

  v23 = MEMORY[0x277D84F90];
  v24 = a3 + 32;
  while (1)
  {
    sub_26890C900(v24, v45);
    v25 = v47;
    __swift_project_boxed_opaque_existential_1(v45, v46);
    v26 = OUTLINED_FUNCTION_11_7();
    v28 = v27(v26, v25);
    if (v28)
    {
      v29 = v28;
      v30 = [v28 proximity];

      if ((v30 - 1) >= 4)
      {
        break;
      }
    }

    v31 = v47;
    __swift_project_boxed_opaque_existential_1(v45, v46);
    v32 = OUTLINED_FUNCTION_11_7();
    v34 = v33(v32, v31);
    if (v34)
    {
      v35 = sub_268B0F784(v34);
      v37 = v36;
      __swift_destroy_boxed_opaque_existential_0Tm(v45);
      if (v37)
      {
        goto LABEL_35;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v45);
    }

LABEL_40:
    v24 += 40;
    if (!--v22)
    {
      goto LABEL_41;
    }
  }

  if (!v30)
  {
    if (qword_2802A50C0 != -1)
    {
      OUTLINED_FUNCTION_4_6();
      swift_once();
    }

    v35 = qword_2802CDB48;
    v37 = unk_2802CDB50;

    __swift_destroy_boxed_opaque_existential_0Tm(v45);
LABEL_35:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2689876A4();
      v23 = v40;
    }

    v38 = v23[2];
    if (v38 >= v23[3] >> 1)
    {
      sub_2689876A4();
      v23 = v41;
    }

    v23[2] = v38 + 1;
    v39 = &v23[2 * v38];
    v39[4] = v35;
    v39[5] = v37;
    goto LABEL_40;
  }

  sub_268B38474();
  __break(1u);

  __break(1u);
  return result;
}

BOOL sub_2689498AC(void *a1, void *a2, id a3)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = (*(v6 + 16))(v5, v6);
  v8 = a3;
  if (v7)
  {
    v9 = v7;
    v8 = [v7 proximity];
  }

  v10 = a2[3];
  v11 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v10);
  v12 = (*(v11 + 16))(v10, v11);
  if (v12)
  {
    v13 = v12;
    a3 = [v12 proximity];
  }

  return v8 < a3;
}

uint64_t sub_26894998C(uint64_t a1, uint64_t a2)
{
  sub_268949A54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5790, &unk_268B3E810);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_268B3BBC0;
  if (qword_2802A50C0 != -1)
  {
    OUTLINED_FUNCTION_4_6();
    swift_once();
  }

  v3 = unk_2802CDB50;
  *(v2 + 32) = qword_2802CDB48;
  *(v2 + 40) = v3;

  sub_268949F5C();
}

void sub_268949A54()
{
  OUTLINED_FUNCTION_26();
  v35 = v0;
  v36 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  if (v5)
  {
    v12 = 0xE700000000000000;
    v13 = 0x676E697373696DLL;
  }

  else
  {
    v13 = DeviceProximity.description.getter(v7);
    v12 = v14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6250, &qword_268B3EA40);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_3_11(inited, xmmword_268B3DE10);
  sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
  inited[3].n128_u64[0] = sub_268B38064();
  inited[3].n128_u64[1] = 0x746E65746E69;
  inited[4].n128_u64[0] = 0xE600000000000000;
  sub_268B37BC4();
  OUTLINED_FUNCTION_3_10();
  inited[4].n128_u64[1] = v16;
  inited[5].n128_u64[0] = 0xD000000000000017;
  inited[5].n128_u64[1] = v17;
  inited[6].n128_u64[0] = sub_268B37BC4();
  inited[6].n128_u64[1] = 0x64657463656C6573;
  inited[7].n128_u64[0] = 0xEA00000000007942;
  v34 = v13;
  if (!v3)
  {
    OUTLINED_FUNCTION_14_5();
  }

  v18 = sub_268B37BC4();

  inited[7].n128_u64[1] = v18;
  sub_2688EA03C(0, &qword_2802A6258, 0x277D82BB8);
  sub_268B37B84();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  __swift_project_value_buffer(v10, qword_2802CDA10);
  v19 = OUTLINED_FUNCTION_18_1();
  v20(v19);

  v21 = sub_268B37A34();
  v22 = sub_268B37ED4();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v37[0] = swift_slowAlloc();
    *v23 = 136315906;
    v24 = OUTLINED_FUNCTION_17_4();
    *(v23 + 4) = sub_26892CDB8(v24, v25, v26);
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_26892CDB8(v36, v9, v37);
    *(v23 + 22) = 2080;
    v27 = sub_26892CDB8(v34, v12, v37);

    *(v23 + 24) = v27;
    *(v23 + 32) = 2080;
    if (v3)
    {
      if (v3 == 1)
      {
        v28 = 0x6769626D61736964;
      }

      else
      {
        v28 = 0x746365726964;
      }

      if (v3 == 1)
      {
        v29 = 0xEE006E6F69746175;
      }

      else
      {
        v29 = 0xE600000000000000;
      }
    }

    else
    {
      v28 = OUTLINED_FUNCTION_14_5();
      v29 = 0xEC0000006E6F6974;
    }

    v33 = sub_26892CDB8(v28, v29, v37);

    *(v23 + 34) = v33;
    _os_log_impl(&dword_2688BB000, v21, v22, "sending %s for intent: %s with proximity: %s and selectedBy: %s", v23, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    v30 = OUTLINED_FUNCTION_16_5();
    v32 = v10;
  }

  else
  {

    v30 = OUTLINED_FUNCTION_16_5();
    v32 = v10;
  }

  v31(v30, v32);
  __swift_project_boxed_opaque_existential_1((v35 + 16), *(v35 + 40));
  OUTLINED_FUNCTION_17_4();
  sub_268AD0450();

  OUTLINED_FUNCTION_23();
}

uint64_t sub_268949EF0(uint64_t a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_14_5();
  }

  if (a1 == 1)
  {
    return 0x6769626D61736964;
  }

  return 0x746365726964;
}

uint64_t sub_268949F5C()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0[10];
  v8 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v7);
  v9 = swift_allocObject();
  v9[2] = v0;
  v9[3] = v6;
  v9[4] = v4;
  v9[5] = v2;
  v10 = *(v8 + 24);

  v10(v11, sub_26894DD80, v9, v7, v8);
  OUTLINED_FUNCTION_23();
}

void sub_26894A02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t))
{
  v79 = a5;
  v9 = sub_268B37A54();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v78 = &v70 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v74 = &v70 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v70 - v18;
  __swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40));
  v80 = a3;
  v20 = sub_268AD25A0(a1, a3, a4);
  if (!v20)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v38 = __swift_project_value_buffer(v9, qword_2802CDA10);
    (*(v10 + 16))(v13, v38, v9);
    v39 = sub_268B37A34();
    v40 = sub_268B37EE4();
    if (!os_log_type_enabled(v39, v40))
    {

      (*(v10 + 8))(v13, v9);
      return;
    }

    v41 = v10;
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v81 = v43;
    *v42 = 136315138;
    v44 = AFAnalyticsEventTypeGetName();
    if (v44)
    {
      v45 = v44;
      v46 = sub_268B37BF4();
      v48 = v47;

      v49 = sub_26892CDB8(v46, v48, &v81);

      *(v42 + 4) = v49;
      _os_log_impl(&dword_2688BB000, v39, v40, "Error creating contexts for eventType: %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v43);
      MEMORY[0x26D6266E0](v43, -1, -1);
      MEMORY[0x26D6266E0](v42, -1, -1);

      (*(v41 + 8))(v13, v9);
      return;
    }

    goto LABEL_23;
  }

  v21 = v20;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v9, qword_2802CDA10);
  v23 = *(v10 + 16);
  v75 = v22;
  v76 = v23;
  (v23)(v19);

  v24 = sub_268B37A34();
  v25 = sub_268B37ED4();
  v26 = os_log_type_enabled(v24, v25);
  v77 = a1;
  if (v26)
  {
    v71 = a4;
    v72 = v10;
    v73 = v9;
    v27 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v81 = v70;
    *v27 = 136315394;
    v28 = AFAnalyticsEventTypeGetName();

    if (v28)
    {
      v29 = sub_268B37BF4();
      v31 = v30;

      v32 = sub_26892CDB8(v29, v31, &v81);

      *(v27 + 4) = v32;
      *(v27 + 12) = 2080;
      sub_2688EA03C(0, &qword_2802A6258, 0x277D82BB8);
      v33 = sub_268B37B74();
      v35 = sub_26892CDB8(v33, v34, &v81);

      *(v27 + 14) = v35;
      _os_log_impl(&dword_2688BB000, v24, v25, "sending eventType: %s with event: %s", v27, 0x16u);
      v36 = v70;
      swift_arrayDestroy();
      MEMORY[0x26D6266E0](v36, -1, -1);
      MEMORY[0x26D6266E0](v27, -1, -1);

      v10 = v72;
      v9 = v73;
      v37 = *(v72 + 8);
      v37(v19, v73);
      a4 = v71;
      goto LABEL_13;
    }

    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  v37 = *(v10 + 8);
  v37(v19, v9);
LABEL_13:
  __swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40));
  sub_268A1A4C0(v21);

  sub_268AD0810();

  __swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40));
  v50 = sub_268AD2674(v79, v77, v80, a4);
  if (v50)
  {
    v51 = v50;
    v79 = v37;
    v52 = v78;
    v76(v78, v75, v9);
    v53 = sub_268B37A34();
    v54 = sub_268B37ED4();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v72 = v10;
      v56 = v55;
      v57 = swift_slowAlloc();
      v73 = v9;
      v58 = v57;
      v81 = v57;
      *v56 = 136315138;
      v59 = [v51 description];
      v60 = sub_268B37BF4();
      v62 = v61;

      v63 = sub_26892CDB8(v60, v62, &v81);

      *(v56 + 4) = v63;
      _os_log_impl(&dword_2688BB000, v53, v54, "sending logAFCoreAnalyticsCrossDeviceEvent with event: %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v58);
      MEMORY[0x26D6266E0](v58, -1, -1);
      MEMORY[0x26D6266E0](v56, -1, -1);

      v64 = v73;
      v65 = v78;
    }

    else
    {

      v65 = v52;
      v64 = v9;
    }

    v79(v65, v64);
    __swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40));
    sub_268AD0AC0();
    sub_26894B238();
  }

  else
  {
    v66 = v74;
    v76(v74, v75, v9);
    v67 = sub_268B37A34();
    v68 = sub_268B37EE4();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_2688BB000, v67, v68, "Error creating createAFCoreAnalyticsCrossDeviceEvent", v69, 2u);
      MEMORY[0x26D6266E0](v69, -1, -1);
    }

    v37(v66, v9);
  }
}

void sub_26894A7E4()
{
  OUTLINED_FUNCTION_26();
  v61 = v0;
  v2 = v1;
  v63 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v60 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v62 = v6 - v5;
  sub_26894DCE4();
  v7 = sub_268B37B84();
  v8 = sub_2688EFD0C();
  v9 = 0;
  v10 = v2 & 0xC000000000000001;
  v11 = (v2 & 0xFFFFFFFFFFFFFF8);
  v12 = &unk_279C42000;
  v64 = v2;
  while (v8 != v9)
  {
    if (v10)
    {
      v13 = MEMORY[0x26D625BD0](v9, v2);
    }

    else
    {
      if (v9 >= v11[2])
      {
        goto LABEL_28;
      }

      v13 = *(v2 + 8 * v9 + 32);
    }

    v14 = v13;
    v15 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v16 = [v13 v12[481]];
    if (v7[2] && (v17 = sub_268A75B44(v16), (v18 & 1) != 0) && *(v7[7] + 8 * v17) > 9)
    {

      ++v9;
    }

    else
    {
      v19 = [v14 v12[481]];
      swift_isUniquelyReferenced_nonNull_native();
      v65 = v7;
      v20 = sub_268A75B44(v19);
      if (__OFADD__(v7[2], (v21 & 1) == 0))
      {
        goto LABEL_29;
      }

      v22 = v20;
      v23 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6268, &qword_268B3EA48);
      v7 = v65;
      if (sub_268B38264())
      {
        v24 = sub_268A75B44(v19);
        v12 = &unk_279C42000;
        if ((v23 & 1) != (v25 & 1))
        {
          sub_268B38494();
          __break(1u);
          return;
        }

        v22 = v24;
        if (v23)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v12 = &unk_279C42000;
        if (v23)
        {
          goto LABEL_19;
        }
      }

      v65[(v22 >> 6) + 8] |= 1 << v22;
      *(v7[6] + 8 * v22) = v19;
      *(v7[7] + 8 * v22) = 0;
      v26 = v7[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_31;
      }

      v7[2] = v28;
LABEL_19:
      v29 = v7[7];
      v30 = *(v29 + 8 * v22);
      v27 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v27)
      {
        goto LABEL_30;
      }

      *(v29 + 8 * v22) = v31;

      v9 = v15;
      v2 = v64;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6270, &qword_268B3EA50);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_3_11(inited, xmmword_268B3C0C0);
  sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
  sub_268B38064();
  OUTLINED_FUNCTION_3_10();
  inited[3].n128_u64[0] = v33;
  inited[3].n128_u64[1] = 0xD000000000000015;
  inited[4].n128_u64[0] = v34;
  v35 = sub_26892E3D4(0, v7);
  OUTLINED_FUNCTION_15_4(v35, v36);
  OUTLINED_FUNCTION_3_10();
  inited[4].n128_u64[1] = v37;
  inited[5].n128_u64[0] = 0xD000000000000017;
  inited[5].n128_u64[1] = v38;
  v39 = sub_26892E3D4(1, v7);
  OUTLINED_FUNCTION_15_4(v39, v40);
  OUTLINED_FUNCTION_3_10();
  inited[6].n128_u64[0] = v41;
  inited[6].n128_u64[1] = 0xD000000000000012;
  inited[7].n128_u64[0] = v42;
  v43 = sub_26892E3D4(2, v7);
  OUTLINED_FUNCTION_15_4(v43, v44);
  OUTLINED_FUNCTION_3_10();
  inited[7].n128_u64[1] = v45;
  inited[8].n128_u64[0] = 0xD000000000000011;
  inited[8].n128_u64[1] = v46;
  v47 = sub_26892E3D4(3, v7);
  OUTLINED_FUNCTION_15_4(v47, v48);
  OUTLINED_FUNCTION_3_10();
  inited[9].n128_u64[0] = v49;
  inited[9].n128_u64[1] = 0xD000000000000015;
  inited[10].n128_u64[0] = v50;
  v51 = sub_26892E3D4(4, v7);
  inited[10].n128_u64[1] = OUTLINED_FUNCTION_15_4(v51, v52);
  v11 = sub_268B37B84();
  if (qword_2802A4F30 == -1)
  {
    goto LABEL_23;
  }

LABEL_32:
  OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
LABEL_23:
  v53 = __swift_project_value_buffer(v63, qword_2802CDA10);
  (*(v60 + 16))(v62, v53, v63);

  v54 = sub_268B37A34();
  v55 = sub_268B37ED4();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v58 = OUTLINED_FUNCTION_173_0();
    v65 = v58;
    *v56 = 136315394;
    *(v56 + 4) = sub_26892CDB8(0xD000000000000038, 0x8000000268B57F40, &v65);
    *(v56 + 12) = 2112;
    v59 = sub_268B37B54();

    *(v56 + 14) = v59;
    *v57 = v59;
    _os_log_impl(&dword_2688BB000, v54, v55, "sending %s with proximityCounts: %@", v56, 0x16u);
    sub_26894DD8C(v57, &qword_2802A6420, &unk_268B3C680);
    OUTLINED_FUNCTION_12();
    __swift_destroy_boxed_opaque_existential_0Tm(v58);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    (*(v60 + 8))(v62, v63);
  }

  else
  {

    (*(v60 + 8))(v62, v63);
  }

  __swift_project_boxed_opaque_existential_1((v61 + 16), *(v61 + 40));
  sub_268A1A748(v11);

  sub_268AD0450();

  OUTLINED_FUNCTION_23();
}

void sub_26894AE34()
{
  OUTLINED_FUNCTION_26();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v35 = v9;
  v10 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  if (__OFSUB__(v6, v4))
  {
    __break(1u);
LABEL_17:
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    goto LABEL_12;
  }

  if (v6 >= 10)
  {
    v1 = 10;
  }

  else
  {
    v1 = v6;
  }

  if (v4 >= 10)
  {
    v12 = 10;
  }

  else
  {
    v12 = v4;
  }

  if (v6 - v4 >= 10)
  {
    v13 = 10;
  }

  else
  {
    v13 = v6 - v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6250, &qword_268B3EA40);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_3_11(inited, xmmword_268B3E990);
  sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
  inited[3].n128_u64[0] = sub_268B38064();
  inited[3].n128_u64[1] = 0x614E7265746C6966;
  inited[4].n128_u64[0] = 0xEA0000000000656DLL;
  sub_268B37BC4();
  OUTLINED_FUNCTION_10_8();
  inited[4].n128_u64[1] = v16;
  inited[5].n128_u64[0] = v15 & 0xFFFFFFFFFFFFLL | 0x4273000000000000;
  inited[5].n128_u64[1] = 0xED000065726F6665;
  sub_268B37E44();
  OUTLINED_FUNCTION_10_8();
  inited[6].n128_u64[0] = v18;
  inited[6].n128_u64[1] = v17 & 0xFFFFFFFFFFFFLL | 0x4173000000000000;
  inited[7].n128_u64[0] = 0xEC00000072657466;
  v34 = v12;
  sub_268B37E44();
  OUTLINED_FUNCTION_10_8();
  inited[7].n128_u64[1] = v20;
  inited[8].n128_u64[0] = v19 & 0xFFFFFFFFFFFFLL | 0x4673000000000000;
  inited[8].n128_u64[1] = 0xEF64657265746C69;
  v33 = v13;
  inited[9].n128_u64[0] = sub_268B37E44();
  sub_2688EA03C(0, &qword_2802A6258, 0x277D82BB8);
  sub_268B37B84();
  if (qword_2802A4F30 != -1)
  {
    goto LABEL_17;
  }

LABEL_12:
  __swift_project_value_buffer(v10, qword_2802CDA10);
  v21 = OUTLINED_FUNCTION_18_1();
  v22(v21);

  v23 = sub_268B37A34();
  v24 = sub_268B37ED4();

  if (os_log_type_enabled(v23, v24))
  {
    v32 = v2;
    v25 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v25 = 136316162;
    v26 = OUTLINED_FUNCTION_17_4();
    *(v25 + 4) = sub_26892CDB8(v26, 0x8000000268B57E60, v27);
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_26892CDB8(v35, v8, &v36);
    *(v25 + 22) = 2048;
    *(v25 + 24) = v1;
    *(v25 + 32) = 2048;
    *(v25 + 34) = v34;
    *(v25 + 42) = 2048;
    *(v25 + 44) = v33;
    _os_log_impl(&dword_2688BB000, v23, v24, "sending %s with filterName: %s devicesBefore: %ld devicesAfter: %ld devicesFiltered: %ld", v25, 0x34u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12();
    v2 = v32;
    OUTLINED_FUNCTION_12();

    v28 = OUTLINED_FUNCTION_16_5();
    v29(v28, v10);
  }

  else
  {

    v30 = OUTLINED_FUNCTION_16_5();
    v31(v30, v10);
  }

  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  OUTLINED_FUNCTION_17_4();
  sub_268AD0450();

  OUTLINED_FUNCTION_23();
}

void sub_26894B238()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v2 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v8 = v7 - v6;
  if (*(v0 + 96))
  {
    sub_268B36714();
    v9 = sub_268B36AF4();
    v11 = v10;

    if (v11)
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      __swift_project_value_buffer(v2, qword_2802CDA10);
      v12 = OUTLINED_FUNCTION_13_6();
      v13(v12);

      v14 = sub_268B37A34();
      v15 = sub_268B37ED4();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = OUTLINED_FUNCTION_173_0();
        v18 = v17;
        *v16 = 136315138;
        *(v16 + 4) = sub_26892CDB8(v9, v11, &v18);
        _os_log_impl(&dword_2688BB000, v14, v15, "sending logSELFCrossDeviceCommandStartedEvent with requestId: %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v17);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();
      }

      (*(v4 + 8))(v8, v2);
      __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
      sub_268AD0D58();
    }
  }

  OUTLINED_FUNCTION_23();
}

void sub_26894B450()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v20 = v4;
  v5 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v11 = v10 - v9;
  if (*(v0 + 96))
  {
    sub_268B36714();
    v12 = sub_268B36AF4();
    v14 = v13;

    if (v14)
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      __swift_project_value_buffer(v5, qword_2802CDA10);
      v15 = OUTLINED_FUNCTION_13_6();
      v16(v15);

      v17 = sub_268B37A34();
      v18 = sub_268B37ED4();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v19 = 136315394;
        *(v19 + 4) = sub_26892CDB8(v20, v3, &v21);
        *(v19 + 12) = 2080;
        *(v19 + 14) = sub_26892CDB8(v12, v14, &v21);
        _os_log_impl(&dword_2688BB000, v17, v18, "sending logSELFCrossDeviceCommandEndedEvent with intent:%s requestId: %s", v19, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();
      }

      (*(v7 + 8))(v11, v5);
      __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
      sub_268AD1708();
    }
  }

  OUTLINED_FUNCTION_23();
}

void *sub_26894B6A0()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  return v0;
}

uint64_t sub_26894B6E0()
{
  sub_26894B6A0();

  return MEMORY[0x2821FE8D8](v0, 184, 7);
}

uint64_t sub_26894B738()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_26894B7A0(char a1)
{
  result = 7562340;
  switch(a1)
  {
    case 1:
      return 1936286564;
    case 2:
      return 1935896164;
    case 3:
      return 7562348;
    case 4:
      return 0x6968736675687373;
    case 5:
      v9 = 24947;
      goto LABEL_26;
    case 6:
      v6 = 24947;
      goto LABEL_28;
    case 7:
      v3 = 1987407203;
      goto LABEL_19;
    case 8:
      return 0x7369687361;
    case 9:
      return 0x7376757361;
    case 10:
      v5 = 0x696873746477;
      return v5 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
    case 11:
      v5 = 0x767573746477;
      return v5 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
    case 12:
      v6 = 30311;
LABEL_28:
      v11 = v6 & 0xFFFFFFFF0000FFFFLL | 0x686C0000;
      return v11 & 0xFFFF0000FFFFFFFFLL | 0x736900000000;
    case 13:
      v9 = 30311;
LABEL_26:
      v10 = v9 & 0xFFFFFFFF0000FFFFLL | 0x756C0000;
      return v10 & 0xFFFF0000FFFFFFFFLL | 0x737600000000;
    case 14:
      v4 = 0x687362757373;
      return v4 & 0xFFFFFFFFFFFFLL | 0x7369000000000000;
    case 15:
      return 0x737675737373;
    case 16:
      v3 = 1768121203;
      goto LABEL_19;
    case 17:
      return 0x7369686373;
    case 18:
      v11 = 1752395891;
      return v11 & 0xFFFF0000FFFFFFFFLL | 0x736900000000;
    case 19:
      v10 = 1970499699;
      return v10 & 0xFFFF0000FFFFFFFFLL | 0x737600000000;
    case 20:
      v8 = 1885956979;
      goto LABEL_37;
    case 21:
      return 0x7376757473;
    case 22:
      v8 = 1801807219;
LABEL_37:
      v4 = v8 & 0xFFFF0000FFFFFFFFLL | 0x687400000000;
      return v4 & 0xFFFFFFFFFFFFLL | 0x7369000000000000;
    case 23:
      return 0x736968737273;
    case 24:
      v3 = 1986948214;
      goto LABEL_19;
    case 25:
      v7 = 0x7369686C7667;
      goto LABEL_46;
    case 26:
      v7 = 0x7376756C7667;
LABEL_46:
      result = v7 + 12;
      break;
    case 27:
      v3 = 1768451440;
LABEL_19:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x7300000000;
      break;
    case 28:
      result = 0x7369636D70;
      break;
    case 29:
      result = 0x7369636D72;
      break;
    case 30:
      result = 0x7369686D72;
      break;
    case 31:
      result = 0x736968736DLL;
      break;
    case 32:
      result = 0x737675736DLL;
      break;
    case 33:
      result = 0x66736C7371;
      break;
    case 34:
      result = 0x6673746E7371;
      break;
    case 35:
      result = 1718840435;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26894BAF4(char a1)
{
  result = 0x707365526A6572;
  switch(a1)
  {
    case 1:
      result = 0x707365526C636E63;
      break;
    case 2:
      result = 0x7369446670;
      break;
    case 3:
      result = 7304821;
      break;
    case 4:
      result = 0x64656C646E6168;
      break;
    case 5:
      result = 0x646E61486C696166;
      break;
    case 6:
      result = 0x74706D6F7270;
      break;
    case 7:
      result = 0x6C616944666E6F63;
      break;
    case 8:
      result = 1667594341;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_26894BC08(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x73736563637573;
      break;
    case 2:
      result = 0x6563697665446F6ELL;
      break;
    case 3:
      result = 0x6F56766365526F6ELL;
      break;
    case 4:
      result = 0x656B616570536F6ELL;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0x6573616572636564;
      break;
    case 8:
      result = 0x6573616572636E69;
      break;
    case 9:
      result = 0x647574696E67616DLL;
      break;
    case 10:
      result = 0x5565646F4D747072;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0x4F79646165726C61;
      break;
    case 13:
      result = 0x4F79646165726C61;
      break;
    case 14:
      result = 0x4C6E776F6E6B6E75;
      break;
    case 15:
      result = 0x6C764C6C6F566F6ELL;
      break;
    case 16:
      result = 0x764C6C6F56746573;
      break;
    case 17:
      result = 0x6574656C706D6F63;
      break;
    case 18:
      result = 0xD000000000000010;
      break;
    case 19:
      result = 0x4464696C61766E69;
      break;
    case 20:
      result = 0xD000000000000019;
      break;
    case 21:
      result = 0xD000000000000016;
      break;
    case 22:
      result = 0xD00000000000001CLL;
      break;
    case 23:
      result = 0x6E65746E49707061;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_26894BF64()
{
  result = qword_2802A6248;
  if (!qword_2802A6248)
  {
    sub_268B368F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6248);
  }

  return result;
}

uint64_t sub_26894BFBC(uint64_t *a1, void *a2)
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2688E1758();
    v4 = v5;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;
  result = sub_26894C030(v8, a2);
  *a1 = v4;
  return result;
}

uint64_t sub_26894C030(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  result = sub_268B383F4();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A50, &qword_268B3C090);
        v8 = sub_268B37D34();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;
      sub_26894C2E0(v9, v10, a1, v6, a2);
      *(v8 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    return sub_26894C140(0, v4, 1, a1, a2);
  }

  return result;
}

uint64_t sub_26894C140(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  if (a3 != a2)
  {
    v6 = *a4;
    v7 = *a4 + 40 * a3;
    v8 = result - a3;
    while (2)
    {
      v30 = a3;
      v22 = v8;
      v23 = v7;
      do
      {
        sub_26890C900(v7, &v27);
        sub_26890C900(v7 - 40, v24);
        v9 = v28;
        v10 = v29;
        __swift_project_boxed_opaque_existential_1(&v27, v28);
        v11 = (*(v10 + 16))(v9, v10);
        v12 = a5;
        if (v11)
        {
          v13 = v11;
          v12 = [v11 proximity];
        }

        v15 = v25;
        v14 = v26;
        __swift_project_boxed_opaque_existential_1(v24, v25);
        v16 = (*(v14 + 16))(v15, v14);
        v17 = a5;
        if (v16)
        {
          v18 = v16;
          v17 = [v16 proximity];
        }

        __swift_destroy_boxed_opaque_existential_0Tm(v24);
        result = __swift_destroy_boxed_opaque_existential_0Tm(&v27);
        if (v12 >= v17)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        sub_2688E6514(v7, &v27);
        v19 = *(v7 - 24);
        *v7 = *(v7 - 40);
        *(v7 + 16) = v19;
        *(v7 + 32) = *(v7 - 8);
        result = sub_2688E6514(&v27, v7 - 40);
        v7 -= 40;
      }

      while (!__CFADD__(v8++, 1));
      a3 = v30 + 1;
      v7 = v23 + 40;
      v8 = v22 - 1;
      if (v30 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_26894C2E0(char **result, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_101:
    v119 = *result;
    if (!*result)
    {
      goto LABEL_144;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_103;
    }

    goto LABEL_138;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v10 = (v7 + 1);
    v112 = v7;
    if ((v7 + 1) < v6)
    {
      v11 = *a3;
      v12 = v7 + 1;
      sub_26890C900(*a3 + 40 * v10, &v123);
      sub_26890C900(v11 + 40 * v9, v120);
      v13 = v126;
      LODWORD(v119) = sub_2689498AC(&v123, v120, a5);
      v126 = v13;
      if (v13)
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v120);
        __swift_destroy_boxed_opaque_existential_0Tm(&v123);
LABEL_113:

        return;
      }

      v110 = v8;
      __swift_destroy_boxed_opaque_existential_0Tm(v120);
      __swift_destroy_boxed_opaque_existential_0Tm(&v123);
      v115 = 40 * v9;
      v8 = (v11 + 40 * v9 + 80);
      v14 = v9 + 2;
      v10 = v12;
      while (1)
      {
        v15 = v14;
        if (v10 + 1 >= v6)
        {
          break;
        }

        v16 = v10;
        sub_26890C900(v8, &v123);
        sub_26890C900((v8 - 40), v120);
        v17 = v124;
        v18 = v125;
        __swift_project_boxed_opaque_existential_1(&v123, v124);
        v19 = (*(v18 + 16))(v17, v18);
        v20 = a5;
        if (v19)
        {
          v21 = v19;
          v20 = [v19 proximity];
        }

        v23 = v121;
        v22 = v122;
        __swift_project_boxed_opaque_existential_1(v120, v121);
        v24 = (*(v22 + 16))(v23, v22);
        v25 = a5;
        if (v24)
        {
          v26 = v24;
          v25 = [v24 proximity];
        }

        __swift_destroy_boxed_opaque_existential_0Tm(v120);
        __swift_destroy_boxed_opaque_existential_0Tm(&v123);
        v8 += 40;
        v10 = v16 + 1;
        v14 = v15 + 1;
        if (((v119 ^ (v20 >= v25)) & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      v10 = v6;
LABEL_14:
      if (v119)
      {
        v27 = v112;
        if (v10 < v112)
        {
          goto LABEL_137;
        }

        v8 = v110;
        if (v112 >= v10)
        {
          v9 = v112;
          goto LABEL_29;
        }

        if (v6 >= v15)
        {
          v28 = v15;
        }

        else
        {
          v28 = v6;
        }

        v29 = 40 * v28 - 40;
        v30 = v10;
        v31 = v115;
        do
        {
          if (v27 != --v30)
          {
            v32 = *a3;
            if (!*a3)
            {
              goto LABEL_142;
            }

            v33 = v10;
            v34 = v32 + v31;
            v35 = v32 + v29;
            v36 = v31;
            sub_2688E6514((v32 + v31), &v123);
            v37 = *(v35 + 32);
            v38 = *(v35 + 16);
            *v34 = *v35;
            *(v34 + 16) = v38;
            *(v34 + 32) = v37;
            sub_2688E6514(&v123, v35);
            v31 = v36;
            v10 = v33;
          }

          ++v27;
          v29 -= 40;
          v31 += 40;
        }

        while (v27 < v30);
      }

      else
      {
        v8 = v110;
      }

      v9 = v112;
    }

LABEL_29:
    v39 = a3[1];
    if (v10 < v39)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_134;
      }

      if (v10 - v9 < a4)
      {
        break;
      }
    }

LABEL_49:
    if (v10 < v9)
    {
      goto LABEL_133;
    }

    v119 = v10;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_268987C84();
      v8 = v99;
    }

    v56 = *(v8 + 2);
    v57 = v56 + 1;
    v7 = v119;
    if (v56 >= *(v8 + 3) >> 1)
    {
      sub_268987C84();
      v7 = v119;
      v8 = v100;
    }

    *(v8 + 2) = v57;
    v58 = v8 + 32;
    v59 = &v8[16 * v56 + 32];
    *v59 = v112;
    *(v59 + 1) = v7;
    v117 = *result;
    if (!*result)
    {
      goto LABEL_143;
    }

    if (v56)
    {
      while (1)
      {
        v60 = v57 - 1;
        v61 = &v58[16 * v57 - 16];
        v62 = &v8[16 * v57];
        if (v57 >= 4)
        {
          break;
        }

        if (v57 == 3)
        {
          v63 = *(v8 + 4);
          v64 = *(v8 + 5);
          v73 = __OFSUB__(v64, v63);
          v65 = v64 - v63;
          v66 = v73;
LABEL_69:
          if (v66)
          {
            goto LABEL_120;
          }

          v78 = *v62;
          v77 = *(v62 + 1);
          v79 = __OFSUB__(v77, v78);
          v80 = v77 - v78;
          v81 = v79;
          if (v79)
          {
            goto LABEL_123;
          }

          v82 = *(v61 + 1);
          v83 = v82 - *v61;
          if (__OFSUB__(v82, *v61))
          {
            goto LABEL_126;
          }

          if (__OFADD__(v80, v83))
          {
            goto LABEL_128;
          }

          if (v80 + v83 >= v65)
          {
            if (v65 < v83)
            {
              v60 = v57 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v57 < 2)
        {
          goto LABEL_122;
        }

        v85 = *v62;
        v84 = *(v62 + 1);
        v73 = __OFSUB__(v84, v85);
        v80 = v84 - v85;
        v81 = v73;
LABEL_84:
        if (v81)
        {
          goto LABEL_125;
        }

        v87 = *v61;
        v86 = *(v61 + 1);
        v73 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v73)
        {
          goto LABEL_127;
        }

        if (v88 < v80)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v60 - 1 >= v57)
        {
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
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v92 = &v58[16 * v60 - 16];
        v93 = *v92;
        v94 = &v58[16 * v60];
        v95 = *(v94 + 1);
        v96 = v126;
        sub_26894CAD8((*a3 + 40 * *v92), (*a3 + 40 * *v94), *a3 + 40 * v95, v117, a5);
        v126 = v96;
        if (v96)
        {
          goto LABEL_113;
        }

        if (v95 < v93)
        {
          goto LABEL_115;
        }

        v97 = v8;
        v8 = *(v8 + 2);
        if (v60 > v8)
        {
          goto LABEL_116;
        }

        *v92 = v93;
        *(v92 + 1) = v95;
        if (v60 >= v8)
        {
          goto LABEL_117;
        }

        v57 = (v8 - 1);
        sub_268AE0F78(v94 + 16, &v8[-v60 - 1], &v58[16 * v60]);
        *(v97 + 2) = v8 - 1;
        v98 = v8 > 2;
        v8 = v97;
        v7 = v119;
        if (!v98)
        {
          goto LABEL_98;
        }
      }

      v67 = &v58[16 * v57];
      v68 = *(v67 - 8);
      v69 = *(v67 - 7);
      v73 = __OFSUB__(v69, v68);
      v70 = v69 - v68;
      if (v73)
      {
        goto LABEL_118;
      }

      v72 = *(v67 - 6);
      v71 = *(v67 - 5);
      v73 = __OFSUB__(v71, v72);
      v65 = v71 - v72;
      v66 = v73;
      if (v73)
      {
        goto LABEL_119;
      }

      v74 = *(v62 + 1);
      v75 = v74 - *v62;
      if (__OFSUB__(v74, *v62))
      {
        goto LABEL_121;
      }

      v73 = __OFADD__(v65, v75);
      v76 = v65 + v75;
      if (v73)
      {
        goto LABEL_124;
      }

      if (v76 >= v70)
      {
        v90 = *v61;
        v89 = *(v61 + 1);
        v73 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v73)
        {
          goto LABEL_132;
        }

        if (v65 < v91)
        {
          v60 = v57 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_101;
    }
  }

  v40 = v9 + a4;
  if (__OFADD__(v9, a4))
  {
    goto LABEL_135;
  }

  if (v40 >= v39)
  {
    v40 = a3[1];
  }

  if (v40 < v9)
  {
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    v8 = sub_268AE0F64(v8);
LABEL_103:
    v101 = v8 + 16;
    v102 = *(v8 + 2);
    while (v102 >= 2)
    {
      if (!*a3)
      {
        goto LABEL_141;
      }

      v103 = v8;
      v104 = &v8[16 * v102];
      v8 = *v104;
      v105 = &v101[2 * v102];
      v106 = *(v105 + 1);
      v107 = v126;
      sub_26894CAD8((*a3 + 40 * *v104), (*a3 + 40 * *v105), *a3 + 40 * v106, v119, a5);
      v126 = v107;
      if (v107)
      {
        break;
      }

      if (v106 < v8)
      {
        goto LABEL_129;
      }

      if (v102 - 2 >= *v101)
      {
        goto LABEL_130;
      }

      *v104 = v8;
      *(v104 + 1) = v106;
      v108 = *v101 - v102;
      if (*v101 < v102)
      {
        goto LABEL_131;
      }

      v102 = *v101 - 1;
      sub_268AE0F78(v105 + 16, v108, v105);
      *v101 = v102;
      v8 = v103;
    }

    goto LABEL_113;
  }

  if (v10 == v40)
  {
    goto LABEL_49;
  }

  v41 = *a3;
  v42 = *a3 + 40 * v10;
  v43 = v9 - v10;
  v113 = v40;
LABEL_38:
  v119 = v10;
  v114 = v43;
  v116 = v42;
  while (1)
  {
    sub_26890C900(v42, &v123);
    sub_26890C900(v42 - 40, v120);
    v44 = v124;
    v45 = v125;
    __swift_project_boxed_opaque_existential_1(&v123, v124);
    v46 = (*(v45 + 16))(v44, v45);
    v47 = a5;
    if (v46)
    {
      v48 = v46;
      v47 = [v46 proximity];
    }

    v49 = v121;
    v50 = v122;
    __swift_project_boxed_opaque_existential_1(v120, v121);
    v51 = (*(v50 + 16))(v49, v50);
    v52 = a5;
    if (v51)
    {
      v53 = v51;
      v52 = [v51 proximity];
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v120);
    __swift_destroy_boxed_opaque_existential_0Tm(&v123);
    if (v47 >= v52)
    {
LABEL_47:
      v10 = (v119 + 1);
      v42 = v116 + 40;
      v43 = v114 - 1;
      if (v119 + 1 == v113)
      {
        v10 = v113;
        v9 = v112;
        goto LABEL_49;
      }

      goto LABEL_38;
    }

    if (!v41)
    {
      break;
    }

    sub_2688E6514(v42, &v123);
    v54 = *(v42 - 24);
    *v42 = *(v42 - 40);
    *(v42 + 16) = v54;
    *(v42 + 32) = *(v42 - 8);
    sub_2688E6514(&v123, v42 - 40);
    v42 -= 40;
    if (__CFADD__(v43++, 1))
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
}

uint64_t sub_26894CAD8(char *a1, char *a2, unint64_t a3, char *a4, void *a5)
{
  v61 = a5;
  v5 = a4;
  v6 = a3;
  v7 = a1;
  v8 = (a2 - a1) / 40;
  v9 = (a3 - a2) / 40;
  if (v8 < v9)
  {
    sub_268988A78(a1, (a2 - a1) / 40, a4);
    v11 = a2;
    v12 = &v5[40 * v8];
    while (1)
    {
      if (v5 >= v12 || v11 >= v6)
      {
        v30 = v7;
        goto LABEL_35;
      }

      v14 = v11;
      sub_26890C900(v11, v58);
      v15 = v5;
      sub_26890C900(v5, v55);
      v16 = v59;
      v17 = v60;
      __swift_project_boxed_opaque_existential_1(v58, v59);
      v18 = (*(v17 + 16))(v16, v17);
      v19 = v61;
      if (v18)
      {
        v20 = v18;
        v19 = [v18 proximity];
      }

      v21 = v56;
      v22 = v57;
      __swift_project_boxed_opaque_existential_1(v55, v56);
      v23 = (*(v22 + 16))(v21, v22);
      v24 = v61;
      if (v23)
      {
        v25 = v23;
        v24 = [v23 proximity];
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v55);
      __swift_destroy_boxed_opaque_existential_0Tm(v58);
      if (v19 >= v24)
      {
        break;
      }

      v26 = v14;
      v11 = v14 + 40;
      v5 = v15;
      if (v7 != v14)
      {
        goto LABEL_15;
      }

LABEL_16:
      v7 += 40;
    }

    v26 = v15;
    v5 = v15 + 40;
    v11 = v14;
    if (v7 == v15)
    {
      goto LABEL_16;
    }

LABEL_15:
    v27 = *v26;
    v28 = *(v26 + 1);
    *(v7 + 4) = *(v26 + 4);
    *v7 = v27;
    *(v7 + 1) = v28;
    goto LABEL_16;
  }

  sub_268988A78(a2, (a3 - a2) / 40, a4);
  v30 = a2;
  v31 = &v5[40 * v9];
  v53 = v5;
LABEL_18:
  v32 = (v30 - 40);
  v6 -= 40;
  v33 = (v31 - 40);
  v54 = v30;
  while (1)
  {
    v12 = (v33 + 40);
    if (v33 + 40 <= v5 || v30 <= v7)
    {
      break;
    }

    sub_26890C900(v33, v58);
    v35 = v32;
    sub_26890C900(v32, v55);
    v36 = v59;
    v37 = v60;
    __swift_project_boxed_opaque_existential_1(v58, v59);
    v38 = (*(v37 + 16))(v36, v37);
    v39 = v61;
    if (v38)
    {
      v40 = v38;
      v39 = [v38 proximity];
    }

    v42 = v56;
    v41 = v57;
    __swift_project_boxed_opaque_existential_1(v55, v56);
    v43 = (*(v41 + 16))(v42, v41);
    v44 = v61;
    if (v43)
    {
      v45 = v43;
      v44 = [v43 proximity];
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v55);
    __swift_destroy_boxed_opaque_existential_0Tm(v58);
    v32 = v35;
    if (v39 < v44)
    {
      v31 = (v33 + 40);
      v5 = v53;
      v30 = v35;
      if ((v6 + 40) != v54)
      {
        v48 = *v35;
        v49 = *(v35 + 16);
        *(v6 + 32) = *(v35 + 32);
        *v6 = v48;
        *(v6 + 16) = v49;
        v30 = v35;
      }

      goto LABEL_18;
    }

    v5 = v53;
    v30 = v54;
    if (v12 != (v6 + 40))
    {
      v46 = *v33;
      v47 = *(v33 + 16);
      *(v6 + 32) = *(v33 + 32);
      *v6 = v46;
      *(v6 + 16) = v47;
    }

    v6 -= 40;
    v33 -= 40;
  }

LABEL_35:
  v50 = (v12 - v5) / 40;
  if (v30 != v5 || v30 >= &v5[40 * v50])
  {
    memmove(v30, v5, 40 * v50);
  }

  return 1;
}

uint64_t sub_26894CE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7, uint64_t a8, uint64_t a9)
{
  v14 = a2;
  v15 = a1;
  v16 = sub_26894BC08(a6);
  v18 = sub_26894CEF4(v15, v14, a3, a4, a5, v16, v17, a7, a8, a9);

  return v18;
}

uint64_t sub_26894CEF4(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  v39 = a6;
  v40 = a7;
  v15 = sub_268B37A54();
  v41 = *(v15 - 8);
  v42 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a8)
  {
    v45 = [a8 unsupportedReason];
    sub_2688E4434();
    v37 = sub_268B380D4();
    v38 = v18;
  }

  else
  {
    v37 = 0;
    v38 = 0xE000000000000000;
  }

  v19 = sub_26894B7A0(a1);
  v45 = 40;
  v46 = 0xE100000000000000;
  MEMORY[0x26D625650](v19);

  MEMORY[0x26D625650](35, 0xE100000000000000);

  v20 = v45;
  v21 = v46;
  v22 = sub_26894BAF4(a2);
  v24 = v23;
  v45 = v20;
  v46 = v21;

  MEMORY[0x26D625650](v22, v24);

  MEMORY[0x26D625650](41, 0xE100000000000000);

  v43 = 978219048;
  v44 = 0xE400000000000000;
  MEMORY[0x26D625650](a3, a4);

  MEMORY[0x26D625650](41, 0xE100000000000000);

  MEMORY[0x26D625650](v43, v44);

  v43 = (*(a10 + 24))(a9, a10);
  v25 = sub_268B38404();
  v43 = 978611496;
  v44 = 0xE400000000000000;
  MEMORY[0x26D625650](v25);

  MEMORY[0x26D625650](41, 0xE100000000000000);

  MEMORY[0x26D625650](v43, v44);

  if ((*(a10 + 8))(a9, a10))
  {
    v26 = 49;
  }

  else
  {
    v26 = 48;
  }

  v43 = 978807080;
  v44 = 0xE400000000000000;
  MEMORY[0x26D625650](v26, 0xE100000000000000);

  MEMORY[0x26D625650](41, 0xE100000000000000);

  MEMORY[0x26D625650](v43, v44);

  v43 = 978481960;
  v44 = 0xE400000000000000;
  MEMORY[0x26D625650](v39, v40);

  MEMORY[0x26D625650](41, 0xE100000000000000);

  MEMORY[0x26D625650](v43, v44);

  v43 = 978482472;
  v44 = 0xE400000000000000;
  MEMORY[0x26D625650](v37, v38);

  MEMORY[0x26D625650](41, 0xE100000000000000);

  MEMORY[0x26D625650](v43, v44);

  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v27 = v42;
  v28 = __swift_project_value_buffer(v42, qword_2802CDA10);
  v29 = v41;
  (*(v41 + 16))(v17, v28, v27);
  v30 = v45;
  v31 = v46;

  v32 = sub_268B37A34();
  v33 = sub_268B37F04();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v43 = v35;
    *v34 = 136315138;
    *(v34 + 4) = sub_26892CDB8(v30, v31, &v43);
    _os_log_impl(&dword_2688BB000, v32, v33, "AnalyticsService#encodeInfo: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
    MEMORY[0x26D6266E0](v35, -1, -1);
    MEMORY[0x26D6266E0](v34, -1, -1);
  }

  (*(v29 + 8))(v17, v27);
  return v30;
}

uint64_t sub_26894D5AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_70();
  (*(v6 + 16))(a2, a1);
  return a2;
}

void sub_26894D610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t (**a23)(void, void))
{
  OUTLINED_FUNCTION_26();
  v70 = v23;
  v81 = v24;
  v82 = v25;
  v79 = v26;
  v80 = v27;
  v29 = v28;
  v74 = v30;
  v83 = v31;
  v68 = a23;
  v78 = *a21;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v33 = OUTLINED_FUNCTION_19_0(v32);
  v72 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  v38 = &v63 - v37;
  v67 = &v63 - v37;
  v39 = sub_268B34E24();
  v64 = v39;
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  v65 = &v63 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v29;
  v42 = sub_26898ABC4(v29);
  v73 = v42;
  v71 = sub_26898B1B0(v42, v29, a22, a23);
  v66 = a21;
  v43 = a21[17];
  v76 = a21[16];
  v77 = v43;
  v75 = __swift_project_boxed_opaque_existential_1(a21 + 13, v76);
  (*(v40 + 16))(&v63 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0), v74, v39);
  sub_26894D5AC(v70, v38, &unk_2802A62B0, &unk_268B3BDF0);
  v44 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v45 = (v41 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = (*(v72 + 80) + v45 + 16) & ~*(v72 + 80);
  v74 = (v36 + v46 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v47 = (v74 + 11) & 0xFFFFFFFFFFFFFFF8;
  v48 = (v47 + 15) & 0xFFFFFFFFFFFFFFF8;
  v49 = (v48 + 23) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  v51 = v65;
  v52 = v83;
  *(v50 + 16) = v66;
  *(v50 + 24) = v52;
  (*(v40 + 32))(v50 + v44, v51, v64);
  v53 = (v50 + v45);
  v54 = v68;
  v55 = v69;
  *v53 = v69;
  v53[1] = v54;
  sub_26894DB0C(v67, v50 + v46);
  *(v50 + v74) = v73;
  v56 = v71;
  *(v50 + v47) = v71;
  v57 = (v50 + v48);
  v58 = v80;
  *v57 = v79;
  v57[1] = v58;
  v59 = (v50 + v49);
  v60 = v82;
  *v59 = v81;
  v59[1] = v60;
  *(v50 + ((v49 + 23) & 0xFFFFFFFFFFFFFFF8)) = v78;

  v61 = v55;
  v62 = v56;

  sub_268B36DB4();

  OUTLINED_FUNCTION_23();
}

uint64_t sub_26894D940()
{
  OUTLINED_FUNCTION_26();
  v1 = sub_268B34E24();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_19_0(v7);
  v9 = (v6 + *(v8 + 80) + 16) & ~*(v8 + 80);
  v11 = *(v10 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  v12 = sub_268B34B94();
  if (!__swift_getEnumTagSinglePayload(v0 + v9, 1, v12))
  {
    OUTLINED_FUNCTION_70();
    (*(v13 + 8))(v0 + v9, v12);
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2821FE8E8](v14, v15, v16);
}

uint64_t sub_26894DB0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26894DCE4()
{
  result = qword_2802A6260;
  if (!qword_2802A6260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6260);
  }

  return result;
}

uint64_t sub_26894DD38()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26894DD8C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_70();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_26894DDE8()
{

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_26894DE80()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

__n128 *OUTLINED_FUNCTION_3_11(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x65636E6174736E69;
  result[2].n128_u64[1] = 0xE800000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_4(uint64_t a1, char a2)
{

  return sub_268B37E44();
}

void OUTLINED_FUNCTION_20_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_21_5()
{

  return sub_2688EFD10();
}

uint64_t sub_26894E030(void *a1)
{
  sub_268B358D4();
  OUTLINED_FUNCTION_1();
  v66 = v3;
  v67 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_0();
  v65 = v5 - v4;
  sub_268B371E4();
  OUTLINED_FUNCTION_1();
  v59 = v7;
  v60 = v6;
  v8 = MEMORY[0x28223BE20](v6);
  v58 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v55 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6280, &qword_268B3EB80);
  MEMORY[0x28223BE20](v12 - 8);
  v64 = &v55 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6288, &qword_268B3EB88);
  MEMORY[0x28223BE20](v14 - 8);
  v63 = &v55 - v15;
  sub_268B37744();
  OUTLINED_FUNCTION_1();
  v61 = v17;
  v62 = v16;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v20 = v19 - v18;
  v21 = sub_268B356F4();
  OUTLINED_FUNCTION_1();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1_0();
  v27 = v26 - v25;
  v28 = sub_268B35734();
  v68 = a1;
  type metadata accessor for Device();
  sub_26894E750();

  v29 = sub_268B37664();
  if (v29 & 1) != 0 || (sub_268983434(v29))
  {
    v30 = MEMORY[0x277D5E238];
LABEL_4:
    (*(v23 + 104))(v27, *v30, v21);
    sub_268B35714();
    (*(v23 + 8))(v27, v21);
    goto LABEL_5;
  }

  v68 = a1;
  if (sub_268B37654() & 1) != 0 || (sub_268984C64())
  {
    v30 = MEMORY[0x277D5E230];
    goto LABEL_4;
  }

  v42 = sub_268988568(a1);
  if (v43)
  {
    v56 = v42;
    v57 = sub_268B35704();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6290, qword_268B3EB90);
    v44 = sub_268B376C4();
    OUTLINED_FUNCTION_19_0(v44);
    *(OUTLINED_FUNCTION_1_11() + 16) = xmmword_268B3BBC0;
    v45 = MEMORY[0x277D5F980];
  }

  else
  {
    v46 = sub_268988504(a1);
    if (!v47)
    {
      goto LABEL_5;
    }

    v56 = v46;
    v57 = sub_268B35704();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6290, qword_268B3EB90);
    v48 = sub_268B376C4();
    OUTLINED_FUNCTION_19_0(v48);
    *(OUTLINED_FUNCTION_1_11() + 16) = xmmword_268B3BBC0;
    v45 = MEMORY[0x277D5F988];
  }

  (*(v61 + 104))(v20, *v45, v62);
  v49 = sub_268B366D4();
  OUTLINED_FUNCTION_4_7(v63, v50, v51, v49);
  v52 = sub_268B35CC4();
  OUTLINED_FUNCTION_4_7(v64, v53, v54, v52);
  sub_268B376B4();
  sub_268B35E44();

LABEL_5:
  if (sub_268984D14())
  {
    v31 = sub_268B371B4();
    sub_268B37174();
    sub_26892E340(v11, v31);
LABEL_9:

    (*(v59 + 8))(v11, v60);
    sub_268B35704();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6290, qword_268B3EB90);
    v33 = sub_268B376C4();
    OUTLINED_FUNCTION_19_0(v33);
    *(OUTLINED_FUNCTION_1_11() + 16) = xmmword_268B3BBC0;
    (*(v61 + 104))(v20, *MEMORY[0x277D5F978], v62);
    v34 = sub_268B366D4();
    OUTLINED_FUNCTION_4_7(v63, v35, v36, v34);
    v37 = sub_268B35CC4();
    OUTLINED_FUNCTION_4_7(v64, v38, v39, v37);
    sub_268B376B4();
    sub_268B35E44();

    goto LABEL_10;
  }

  if (sub_268984EE8())
  {
    v32 = sub_268B371B4();
    v11 = v58;
    sub_268B371D4();
    sub_26892E340(v11, v32);
    goto LABEL_9;
  }

LABEL_10:
  v40 = v65;
  sub_268B35874();
  sub_268B357B4();

  (*(v66 + 8))(v40, v67);
  return v28;
}

unint64_t sub_26894E750()
{
  result = qword_2802A5BD8;
  if (!qword_2802A5BD8)
  {
    type metadata accessor for Device();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5BD8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_11()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_4_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

uint64_t sub_26894E810()
{
  OUTLINED_FUNCTION_0_15();
  v3 = swift_allocObject();
  v4 = OUTLINED_FUNCTION_3_12(v3);

  v5 = sub_268B18120(v2);
  if (v5)
  {
    v6 = v5;
    sub_268920A60();
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = v0;
    v7[4] = sub_26894F65C;
    v7[5] = v1;

    OUTLINED_FUNCTION_2_12();
  }

  else
  {
    OUTLINED_FUNCTION_1_12();
    sub_2688BEC58(v8, v9, v10, v11, v12, v13, v14, v15, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, vars0, vars8);
  }
}

uint64_t sub_26894E93C()
{
  OUTLINED_FUNCTION_0_15();
  v3 = swift_allocObject();
  v4 = OUTLINED_FUNCTION_3_12(v3);

  v5 = sub_268B18120(v2);
  if (v5)
  {
    v6 = v5;
    sub_268920A60();
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = v0;
    v7[4] = sub_26894F5B4;
    v7[5] = v1;

    OUTLINED_FUNCTION_2_12();
  }

  else
  {
    OUTLINED_FUNCTION_1_12();
    sub_2689795F8(v8, v9, v10, v11, v12, v13, v14, v15, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, vars0, vars8);
  }
}

uint64_t sub_26894EA68(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void), uint64_t a6)
{
  v82 = a6;
  v83 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v71 - v11;
  v13 = sub_268B36C04();
  v79 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_268B37A54();
  v84 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v80 = &v71 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v81 = &v71 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v71 - v24;
  if (a2)
  {
    v78 = a5;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v74 = v13;
    v26 = __swift_project_value_buffer(v16, qword_2802CDA10);
    v27 = v84;
    v28 = *(v84 + 16);
    v76 = v26;
    v77 = v28;
    (v28)(v25);
    v29 = v16;
    v30 = sub_268B37A34();
    v31 = sub_268B37EE4();
    v32 = os_log_type_enabled(v30, v31);
    v75 = a4;
    if (v32)
    {
      v33 = swift_slowAlloc();
      v73 = v15;
      v34 = v33;
      v35 = swift_slowAlloc();
      v86 = v35;
      *v34 = 136315138;
      v85 = v83 & 1;
      sub_26890C84C();
      v72 = v29;
      v36 = sub_268B384A4();
      v38 = sub_26892CDB8(v36, v37, &v86);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_2688BB000, v30, v31, "HomeAutomationRedirectableIntent#resolveOrRedirect error resolving devices: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
      MEMORY[0x26D6266E0](v35, -1, -1);
      v39 = v34;
      v15 = v73;
      MEMORY[0x26D6266E0](v39, -1, -1);

      v40 = *(v84 + 8);
      v41 = v72;
      v40(v25, v72);
    }

    else
    {

      v40 = *(v27 + 8);
      v40(v25, v29);
      v41 = v29;
    }

    if (v83)
    {
      v77(v81, v76, v41);
      v53 = sub_268B37A34();
      v54 = sub_268B37ED4();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_2688BB000, v53, v54, "HomeAutomationRedirectableIntent#resolveOrRedirect no matching devices found. Checking for other accessories to determine if we should redirect to HomeAutomation...", v55, 2u);
        MEMORY[0x26D6266E0](v55, -1, -1);
      }

      v40(v81, v41);
      v56 = sub_2688EFD0C();
      v57 = v78;
      if (!v56)
      {
        goto LABEL_22;
      }

      v58 = v56;
      v86 = MEMORY[0x277D84F90];
      result = sub_268B38234();
      if ((v58 & 0x8000000000000000) == 0)
      {
        v60 = 0;
        v61 = *MEMORY[0x277D5F730];
        do
        {
          if ((a3 & 0xC000000000000001) != 0)
          {
            MEMORY[0x26D625BD0](v60, a3);
          }

          else
          {
            v62 = *(a3 + 8 * v60 + 32);
          }

          ++v60;
          v63 = sub_268B37034();
          (*(*(v63 - 8) + 104))(v12, v61, v63);
          __swift_storeEnumTagSinglePayload(v12, 0, 1, v63);
          DeviceQuery.deviceType.setter(v12);
          sub_268B38214();
          sub_268B38244();
          sub_268B38254();
          sub_268B38224();
        }

        while (v58 != v60);
        v57 = v78;
LABEL_22:
        sub_268920A60();

        v64 = v79;
        v65 = v74;
        (*(v79 + 104))(v15, *MEMORY[0x277D5F650], v74);
        v66 = swift_allocObject();
        *(v66 + 16) = v57;
        *(v66 + 24) = v82;

        sub_2688F80CC();

        return (*(v64 + 8))(v15, v65);
      }

      __break(1u);
    }

    else
    {
      v67 = v80;
      v77(v80, v76, v41);
      v68 = sub_268B37A34();
      v69 = sub_268B37ED4();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&dword_2688BB000, v68, v69, "HomeAutomationRedirectableIntent#resolveOrRedirect unknown deviceSelectingError", v70, 2u);
        MEMORY[0x26D6266E0](v70, -1, -1);
      }

      v40(v67, v41);
      return v78(0, 2);
    }
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v42 = __swift_project_value_buffer(v16, qword_2802CDA10);
    v43 = v84;
    (*(v84 + 16))(v19, v42, v16);
    v44 = v83;

    v45 = sub_268B37A34();
    v46 = sub_268B37F04();
    sub_26890C840(v44, 0);
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v86 = v48;
      *v47 = 136315138;
      v49 = type metadata accessor for Device();
      v50 = MEMORY[0x26D6256F0](v44, v49);
      v52 = sub_26892CDB8(v50, v51, &v86);

      *(v47 + 4) = v52;
      v44 = v83;
      _os_log_impl(&dword_2688BB000, v45, v46, "HomeAutomationRedirectableIntent#resolveOrRedirect success resolving devices: %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v48);
      MEMORY[0x26D6266E0](v48, -1, -1);
      MEMORY[0x26D6266E0](v47, -1, -1);
    }

    (*(v43 + 8))(v19, v16);
    return a5(v44, 0);
  }

  return result;
}

uint64_t sub_26894F2E4(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = sub_268B37A54();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  if (a2)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v6, qword_2802CDA10);
    (*(v7 + 16))(v12, v13, v6);
    v14 = sub_268B37A34();
    v15 = sub_268B37EE4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2688BB000, v14, v15, "HomeAutomationRedirectableIntent#resolveOrRedirect still no devices found.", v16, 2u);
      MEMORY[0x26D6266E0](v16, -1, -1);
    }

    (*(v7 + 8))(v12, v6);
    v17 = 0;
    v18 = 2;
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v6, qword_2802CDA10);
    (*(v7 + 16))(v10, v19, v6);
    v20 = sub_268B37A34();
    v21 = sub_268B37ED4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2688BB000, v20, v21, "HomeAutomationRedirectableIntent#resolveOrRedirect found other accessories, redirecting to HomeAutomation", v22, 2u);
      MEMORY[0x26D6266E0](v22, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    v17 = a1;
    v18 = 1;
  }

  return a3(v17, v18);
}

uint64_t sub_26894F5D0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t objectdestroyTm_2()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroy_5Tm_0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t OUTLINED_FUNCTION_2_12()
{

  return sub_2688F80CC();
}

id OUTLINED_FUNCTION_3_12(void *a1)
{
  a1[2] = v3;
  a1[3] = v1;
  a1[4] = v5;
  a1[5] = v2;
  a1[6] = v4;

  return v3;
}

uint64_t Siri_Nlu_External_UserDialogAct.getUsoTask()()
{
  v0 = sub_268B37A54();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = v26 - v4;
  MEMORY[0x28223BE20](v3);
  v7 = v26 - v6;
  v8 = sub_268B356A4();
  if (sub_2688EFD0C())
  {
    sub_2688EFD10();
    if ((v8 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x26D625BD0](0, v8);
    }

    else
    {
      v9 = *(v8 + 32);
    }

    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    __swift_project_value_buffer(v0, qword_2802CDA10);
    OUTLINED_FUNCTION_1_13();
    v10(v7);

    v11 = sub_268B37A34();
    v12 = sub_268B37F04();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v26[0] = swift_slowAlloc();
      *v13 = 136446466;
      v14 = sub_268B36684();
      v16 = sub_26892CDB8(v14, v15, v26);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2082;
      v17 = sub_268B36674();
      v19 = sub_26892CDB8(v17, v18, v26);

      *(v13 + 14) = v19;
      _os_log_impl(&dword_2688BB000, v11, v12, "getUsoTask() returning task with entity=%{public}s verb=%{public}s", v13, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();
    }

    (*(v1 + 8))(v7, v0);
  }

  else
  {

    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    __swift_project_value_buffer(v0, qword_2802CDA10);
    OUTLINED_FUNCTION_1_13();
    v21(v5);
    v22 = sub_268B37A34();
    v23 = sub_268B37F04();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2688BB000, v22, v23, "No tasks found in input", v24, 2u);
      OUTLINED_FUNCTION_12();
    }

    (*(v1 + 8))(v5, v0);
    return 0;
  }

  return v9;
}

void sub_26894FCA8()
{
  OUTLINED_FUNCTION_26();
  v55 = v3;
  v56 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6320, &qword_268B3EDF0);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_74();
  v50 = v7;
  OUTLINED_FUNCTION_9();
  v8 = sub_268B35494();
  v9 = OUTLINED_FUNCTION_22(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5D40, &qword_268B3FFE0);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v53 = v18 - v17;
  OUTLINED_FUNCTION_9();
  v19 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3();
  v51 = v23;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_18();
  v52 = v25;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_18();
  v49 = v27;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v29 = __swift_project_value_buffer(v19, qword_2802CDA10);
  (*(v21 + 16))(v0, v29);
  v30 = sub_268B37A34();
  v31 = sub_268B37ED4();
  if (os_log_type_enabled(v30, v31))
  {
    v2 = OUTLINED_FUNCTION_14();
    *v2 = 0;
    _os_log_impl(&dword_2688BB000, v30, v31, "VolumeLevelNeedsValueStrategy.actionForInput()", v2, 2u);
    OUTLINED_FUNCTION_12();
  }

  OUTLINED_FUNCTION_23_5();

  v54 = *(v21 + 8);
  v54(v0, v19);
  v32 = v56 == v2 && v55 == 0xEB000000006C6576;
  if (!v32 && (sub_268B38444() & 1) == 0)
  {
    OUTLINED_FUNCTION_16_6();
    v44();

    v45 = sub_268B37A34();
    v46 = sub_268B37EE4();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v57 = v48;
      *v47 = 136315138;
      *(v47 + 4) = sub_26892CDB8(v56, v55, &v57);
      _os_log_impl(&dword_2688BB000, v45, v46, "Unknown parameter found: %s. Returning .ignore()", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v48);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      v54(v51, v19);
LABEL_25:
      sub_268B34ED4();
      goto LABEL_26;
    }

    v37 = v51;
LABEL_24:
    v54(v37, v19);
    goto LABEL_25;
  }

  sub_268B35414();
  sub_26897BBA8(v12, v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v15) == 1)
  {
    sub_2688C058C(v1, &qword_2802A5D40, &qword_268B3FFE0);
    OUTLINED_FUNCTION_16_6();
    v33();
    v34 = sub_268B37A34();
    v35 = sub_268B37EE4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = OUTLINED_FUNCTION_14();
      *v36 = 0;
      _os_log_impl(&dword_2688BB000, v34, v35, "Could not create SettingsIntent from parse. ActionForInput = ignore()", v36, 2u);
      OUTLINED_FUNCTION_12();
    }

    v37 = v52;
    goto LABEL_24;
  }

  sub_26891E594(v1, v53);
  if (*(v53 + *(v15 + 28)) == 7 && (sub_2688C053C(v53 + *(v15 + 24), v50, &qword_2802A6320, &qword_268B3EDF0), v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5D00, &unk_268B51080), EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v50, 1, v38), sub_2688C058C(v50, &qword_2802A6320, &qword_268B3EDF0), EnumTagSinglePayload == 1))
  {
    OUTLINED_FUNCTION_16_6();
    v40();
    v41 = sub_268B37A34();
    v42 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_19(v42))
    {
      v43 = OUTLINED_FUNCTION_14();
      *v43 = 0;
      _os_log_impl(&dword_2688BB000, v41, v49, "Could not find a numericSettingState nor a numericSettingValue in the response. ActionForInput = ignore()", v43, 2u);
      OUTLINED_FUNCTION_12();
    }

    v54(v49, v19);
    sub_268B34ED4();
  }

  else
  {
    sub_268B34EC4();
  }

  sub_26891E5F8(v53);
LABEL_26:
  OUTLINED_FUNCTION_23();
}

void sub_2689502C4()
{
  OUTLINED_FUNCTION_26();
  v92 = v3;
  v91 = v4;
  v94 = v5;
  v87 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6308, &qword_268B3EDD8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_74();
  v93 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6310, &unk_268B3EDE0);
  OUTLINED_FUNCTION_1();
  v84 = v10;
  v85 = v9;
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_74();
  v83 = v12;
  OUTLINED_FUNCTION_9();
  v13 = sub_268B35494();
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5D40, &qword_268B3FFE0);
  OUTLINED_FUNCTION_22(v18);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v19);
  v89 = OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_0();
  v88 = v22 - v21;
  OUTLINED_FUNCTION_9();
  v23 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_18();
  v86 = v28;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v31 = __swift_project_value_buffer(v23, qword_2802CDA10);
  v32 = v23;
  (*(v25 + 16))(v0, v31, v23);
  v33 = sub_268B37A34();
  v34 = sub_268B37ED4();
  if (os_log_type_enabled(v33, v34))
  {
    v2 = OUTLINED_FUNCTION_14();
    *v2 = 0;
    _os_log_impl(&dword_2688BB000, v33, v34, "VolumeLevelNeedsValueStrategy.parseResponseValue()", v2, 2u);
    OUTLINED_FUNCTION_12();
  }

  OUTLINED_FUNCTION_23_5();

  v90 = *(v25 + 8);
  v90(v0, v32);
  v35 = v94 == v2 && v91 == 0xEB000000006C6576;
  if (!v35 && (sub_268B38444() & 1) == 0)
  {
    OUTLINED_FUNCTION_15_5();
    v56();

    v37 = sub_268B37A34();
    v57 = sub_268B37EE4();

    if (os_log_type_enabled(v37, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v95[0] = v59;
      *v58 = 136446210;
      *(v58 + 4) = sub_26892CDB8(v94, v91, v95);
      OUTLINED_FUNCTION_27();
      _os_log_impl(v60, v61, v62, v63, v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v59);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      v65 = OUTLINED_FUNCTION_17_5();
      v66(v65);
    }

    else
    {

      v80 = OUTLINED_FUNCTION_17_5();
      v81(v80);
    }

    v82 = sub_2688C2ECC();
    v45 = OUTLINED_FUNCTION_28_5(&type metadata for ControlsError, v82);
    v47 = 113;
LABEL_24:
    OUTLINED_FUNCTION_18_2(v45, v46, v47);
    v92(v37);
    sub_2688C058C(v37, &qword_2802A6308, &qword_268B3EDD8);
    goto LABEL_25;
  }

  sub_268B35414();
  sub_26897BBA8(v17, v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v89) == 1)
  {
    sub_2688C058C(v1, &qword_2802A5D40, &qword_268B3FFE0);
    OUTLINED_FUNCTION_15_5();
    v36();
    v37 = sub_268B37A34();
    v38 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_19(v38))
    {
      *OUTLINED_FUNCTION_14() = 0;
      OUTLINED_FUNCTION_27();
      _os_log_impl(v39, v40, v41, v42, v43, 2u);
      OUTLINED_FUNCTION_12();
    }

    v90(v86, v32);
    v44 = sub_2688C2ECC();
    v45 = OUTLINED_FUNCTION_28_5(&type metadata for ControlsError, v44);
    v47 = 111;
    goto LABEL_24;
  }

  sub_26891E594(v1, v88);
  sub_268A8242C(v88);
  v48 = [v87 volumeLevel];
  if (v48)
  {
    v49 = v48;
    v95[3] = type metadata accessor for VolumeLevel();
    v95[0] = v49;
    type metadata accessor for SetVolumeLevelIntent();
    v50 = v49;
    v51 = v87;
    sub_268B35184();
    OUTLINED_FUNCTION_24_5();
    v52();
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v53, v54, v55, v85);
    swift_storeEnumTagMultiPayload();
    v92(v93);

    sub_2688C058C(v93, &qword_2802A6308, &qword_268B3EDD8);
    (*(v84 + 8))(v83, v85);
  }

  else
  {
    OUTLINED_FUNCTION_15_5();
    v67();
    v68 = sub_268B37A34();
    v69 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_19(v69))
    {
      *OUTLINED_FUNCTION_14() = 0;
      OUTLINED_FUNCTION_27();
      _os_log_impl(v70, v71, v72, v73, v74, 2u);
      OUTLINED_FUNCTION_12();
    }

    v75 = OUTLINED_FUNCTION_17_5();
    v76(v75);
    v77 = sub_2688C2ECC();
    v78 = OUTLINED_FUNCTION_28_5(&type metadata for ControlsError, v77);
    OUTLINED_FUNCTION_18_2(v78, v79, 112);
    v92(v68);
    sub_2688C058C(v68, &qword_2802A6308, &qword_268B3EDD8);
  }

  sub_26891E5F8(v88);
LABEL_25:
  OUTLINED_FUNCTION_23();
}

void sub_268950A2C()
{
  OUTLINED_FUNCTION_26();
  v49 = v1;
  v50 = v0;
  v53 = v2;
  v54 = v3;
  v51 = v4;
  v52 = v5;
  v55 = v7;
  v56 = v6;
  v8 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18();
  v48 = v15;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  __swift_project_value_buffer(v8, qword_2802CDA10);
  v17 = *(v10 + 16);
  OUTLINED_FUNCTION_24_5();
  v17();
  v18 = sub_268B37A34();
  v19 = sub_268B37ED4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_14();
    *v20 = 0;
    _os_log_impl(&dword_2688BB000, v18, v19, "VolumeLevelNeedsValueStrategy.makePromptForValue()", v20, 2u);
    OUTLINED_FUNCTION_12();
  }

  v21 = *(v10 + 8);
  v21(v0, v8);
  v22 = v55;
  v23 = v56 == 0x654C656D756C6F76 && v55 == 0xEB000000006C6576;
  if (v23 || (sub_268B38444() & 1) != 0)
  {
    OUTLINED_FUNCTION_24_5();
    v17();
    v24 = sub_268B37A34();
    v25 = sub_268B37F04();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = OUTLINED_FUNCTION_14();
      *v26 = 0;
      _os_log_impl(&dword_2688BB000, v24, v25, "Making prompt value for volumeLevel", v26, 2u);
      OUTLINED_FUNCTION_12();
    }

    v21(v14, v8);
    v27 = swift_allocObject();
    v28 = v49;
    v29 = v50;
    v27[2] = v50;
    v27[3] = v28;
    v30 = v52;
    v31 = v53;
    v32 = v54;
    v27[4] = v51;
    v27[5] = v31;
    v27[6] = v32;
    v27[7] = v30;
    v33 = v55;
    v27[8] = v56;
    v27[9] = v33;
    v34 = v29[10];
    v56 = v29[11];
    __swift_project_boxed_opaque_existential_1(v29 + 7, v34);

    v35 = v28;

    v36 = v30;
    v37 = sub_268B37B84();
    sub_2689CE860(0xD000000000000024, 0x8000000268B580D0, v37, sub_268954220, v27, v34, v56);
  }

  else
  {
    v38 = v48;
    OUTLINED_FUNCTION_24_5();
    v17();

    v39 = v22;
    v40 = sub_268B37A34();
    v41 = sub_268B37EE4();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v57[0] = v43;
      *v42 = 136446210;
      *(v42 + 4) = sub_26892CDB8(v56, v39, v57);
      _os_log_impl(&dword_2688BB000, v40, v41, "Unknown parameter found: %{public}s. Unable to make prompt value.", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v43);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();
    }

    v21(v38, v8);
    v44 = sub_2688C2ECC();
    v45 = OUTLINED_FUNCTION_28_5(&type metadata for ControlsError, v44);
    *v46 = 114;
    v57[0] = v45;
    v58 = 1;
    v53(v57);
    sub_2688C058C(v57, &unk_2802A57C0, &qword_268B3BE00);
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_268950ED8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void *), uint64_t a6, char *a7, uint64_t a8, uint64_t a9)
{
  v52 = a8;
  v53 = a7;
  v59 = a6;
  v60 = a5;
  v57 = a2;
  v58 = a4;
  v54 = a1;
  v55 = a3;
  v51 = a9;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  MEMORY[0x28223BE20](v9 - 8);
  v49 = &v48 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v50 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v48 - v14;
  v16 = sub_268B34E24();
  v56 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v48 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v25);
  v27 = (&v48 - v26);
  sub_2688C053C(v54, &v48 - v26, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *v27;
    v52 = sub_2688E1B54(24, 6, v52, v51, v55, 0x6E776F6E6B6E75, 0xE700000000000000, v53);
    v28 = v57;
    __swift_project_boxed_opaque_existential_1(v57 + 12, v57[15]);
    v29 = *MEMORY[0x277D5BC00];
    v30 = *(v56 + 104);
    v53 = v18;
    v54 = v16;
    v30(v18, v29, v16);
    v31 = sub_268B350F4();
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v31);
    v32 = *MEMORY[0x277D5B8E0];
    v33 = sub_268B34B94();
    v34 = v49;
    (*(*(v33 - 8) + 104))(v49, v32, v33);
    __swift_storeEnumTagSinglePayload(v34, 0, 1, v33);
    v35 = v50;
    sub_2688C053C(v15, v50, &unk_2802A57B0, &unk_268B3CE00);
    v36 = v15;
    if (__swift_getEnumTagSinglePayload(v35, 1, v31) == 1)
    {
      sub_2688C058C(v35, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(*(v31 - 8) + 8))(v35, v31);
    }

    v40 = v53;
    sub_2688E2B50();

    sub_2688C058C(v34, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v36, &unk_2802A57B0, &unk_268B3CE00);
    (*(v56 + 8))(v40, v54);
    __swift_project_boxed_opaque_existential_1(v28 + 12, v28[15]);
    sub_2688C2ECC();
    v41 = swift_allocError();
    *v42 = 89;
    sub_26894B450();

    v43 = v48;
    v61[0] = v48;
    v62 = 1;
    v44 = v48;
    v60(v61);

    return sub_2688C058C(v61, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    v37 = v55;
    sub_268954254(v27, v24, &unk_2802A56E0, &unk_268B3CDF0);
    __swift_project_boxed_opaque_existential_1(v57 + 17, v57[20]);
    v38 = sub_268B36FA4();
    sub_2688C053C(v24, v22, &unk_2802A56E0, &unk_268B3CDF0);
    v39 = *&v22[*(v19 + 48)];
    if (v38)
    {
      sub_26895155C();
    }

    else
    {
      sub_268951D04(v22, v39, v37, v53, v58, v52, v51, v60, v59, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58);
    }

    sub_2688C058C(v24, &unk_2802A56E0, &unk_268B3CDF0);
    v46 = sub_268B350F4();
    return (*(*(v46 - 8) + 8))(v22, v46);
  }
}

void sub_26895155C()
{
  OUTLINED_FUNCTION_26();
  v89 = v2;
  v90 = v3;
  v83 = v4;
  v98 = v5;
  v99 = v6;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_74();
  v88 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_74();
  v82 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v16 = OUTLINED_FUNCTION_22(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3();
  v86 = v17;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v18);
  v94 = v78 - v19;
  OUTLINED_FUNCTION_9();
  v95 = sub_268B34E24();
  OUTLINED_FUNCTION_1();
  v93 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_0();
  v92 = v23 - v22;
  OUTLINED_FUNCTION_9();
  v24 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3();
  v84 = v28;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_15();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_3();
  v87 = v32;
  OUTLINED_FUNCTION_8();
  v34 = MEMORY[0x28223BE20](v33);
  v36 = v78 - v35;
  MEMORY[0x28223BE20](v34);
  v37 = OUTLINED_FUNCTION_27_4();
  v38 = *(v37 - 8);
  (*(v38 + 16))(v0, v98, v37);
  v96 = v30;
  v39 = *(v30 + 48);
  v98 = v0;
  *(v0 + v39) = v8;
  v40 = qword_2802A4F30;
  v41 = v8;
  if (v40 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v42 = __swift_project_value_buffer(v24, qword_2802CDA10);
  v80 = *(v26 + 16);
  v81 = v42;
  v97 = v24;
  (v80)(v1);
  v43 = sub_268B37A34();
  v44 = sub_268B37ED4();
  v45 = os_log_type_enabled(v43, v44);
  v91 = v38;
  if (v45)
  {
    v46 = OUTLINED_FUNCTION_14();
    *v46 = 0;
    _os_log_impl(&dword_2688BB000, v43, v44, "SetShuffleStateHandleIntentStrategy#intentPromptForValue...", v46, 2u);
    v38 = v91;
    OUTLINED_FUNCTION_12();
  }

  v47 = *(v26 + 8);
  v85 = v26 + 8;
  v79 = v47;
  v47(v1, v97);
  sub_268947F08();
  v78[1] = v48;
  __swift_project_boxed_opaque_existential_1(v1 + 12, v1[15]);
  (*(v93 + 104))(v92, *MEMORY[0x277D5BC10], v95);
  sub_2688C053C(v98, v36, &unk_2802A56E0, &unk_268B3CDF0);

  v49 = v94;
  (*(v38 + 32))(v94, v36, v37);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v37);
  v53 = sub_268B34B94();
  v54 = v82;
  __swift_storeEnumTagSinglePayload(v82, 1, 1, v53);
  v55 = v49;
  v56 = v86;
  sub_2688C053C(v55, v86, &unk_2802A57B0, &unk_268B3CE00);
  if (__swift_getEnumTagSinglePayload(v56, 1, v37) == 1)
  {
    sub_2688C058C(v56, &unk_2802A57B0, &unk_268B3CE00);
  }

  else
  {
    sub_268B350B4();
    (*(v38 + 8))(v56, v37);
  }

  v86 = v37;
  v57 = v92;
  v58 = v99;
  sub_2688E2B50();

  sub_2688C058C(v54, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v94, &unk_2802A57B0, &unk_268B3CE00);
  (*(v93 + 8))(v57, v95);
  __swift_project_boxed_opaque_existential_1(v1 + 12, v1[15]);
  sub_268948308(MEMORY[0x277D84F90]);
  __swift_project_boxed_opaque_existential_1(v1 + 12, v1[15]);
  sub_26894B450();
  v59 = v84;
  v60 = v97;
  v80(v84, v81, v97);
  v61 = sub_268B37A34();
  v62 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_19(v62))
  {
    *OUTLINED_FUNCTION_14() = 0;
    OUTLINED_FUNCTION_27();
    _os_log_impl(v63, v64, v65, v66, v67, 2u);
    OUTLINED_FUNCTION_12();
  }

  v79(v59, v60);
  v68 = v1[35];
  v69 = v1[36];
  __swift_project_boxed_opaque_existential_1(v1 + 32, v68);
  v70 = v98;
  v71 = v87;
  sub_2688C053C(v98, v87, &unk_2802A56E0, &unk_268B3CDF0);
  v72 = *(v71 + *(v96 + 48));
  v73 = v88;
  sub_268A82B50(v58, v88);
  sub_268B35044();
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v77);
  (*(v69 + 24))(v71, v72, 1, 1, v73, v89, v90, v68, v69);

  sub_2688C058C(v73, &qword_2802A57F0, &qword_268B3DDB0);
  sub_2688C058C(v70, &unk_2802A56E0, &unk_268B3CDF0);
  (*(v91 + 8))(v71, v86);
  OUTLINED_FUNCTION_23();
}

void sub_268951D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_26();
  v107 = v22;
  v108 = v23;
  v97 = v24;
  v96 = v25;
  v102 = v26;
  v98 = v27;
  v114 = v28;
  v30 = v29;
  v32 = v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_22(v33);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_74();
  v106 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_22(v36);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_74();
  v101 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v40 = OUTLINED_FUNCTION_22(v39);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_3();
  v99 = v41;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v42);
  v111 = &v95 - v43;
  OUTLINED_FUNCTION_9();
  v112 = sub_268B34E24();
  OUTLINED_FUNCTION_1();
  v110 = v44;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_1_0();
  v109 = v47 - v46;
  OUTLINED_FUNCTION_9();
  v105 = sub_268B35044();
  OUTLINED_FUNCTION_1();
  v104 = v48;
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_1_0();
  v103 = v51 - v50;
  OUTLINED_FUNCTION_9();
  v52 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v54 = v53;
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_1_0();
  v58 = v57 - v56;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_4();
  v61 = MEMORY[0x28223BE20](v60);
  v63 = &v95 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61);
  v64 = OUTLINED_FUNCTION_27_4();
  v65 = *(v64 - 8);
  (*(v65 + 16))(v21, v32, v64);
  v66 = *(v59 + 48);
  v113 = v21;
  *(v21 + v66) = v30;
  v67 = qword_2802A4F30;
  v68 = v30;
  if (v67 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v100 = a21;
  v69 = __swift_project_value_buffer(v52, qword_2802CDA10);
  (*(v54 + 16))(v58, v69, v52);
  v70 = sub_268B37A34();
  v71 = sub_268B37ED4();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = OUTLINED_FUNCTION_14();
    *v72 = 0;
    _os_log_impl(&dword_2688BB000, v70, v71, "SetShuffleStateHandleIntentStrategy#legacyPromptForValue...", v72, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v54 + 8))(v58, v52);
  sub_2688E1B54(24, 6, v96, v97, v114, 0x6E776F6E6B6E75, 0xE700000000000000, v98);
  v73 = sub_268952990();
  v74 = v103;
  sub_2689524F8(v73);

  v75 = v107;
  v76 = __swift_project_boxed_opaque_existential_1(v107 + 12, v107[15]);
  (*(v110 + 104))(v109, *MEMORY[0x277D5BBD8], v112);
  sub_2688C053C(v113, v63, &unk_2802A56E0, &unk_268B3CDF0);

  v77 = v111;
  (*(v65 + 32))(v111, v63, v64);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v64);
  v81 = sub_268B34B94();
  v82 = v101;
  __swift_storeEnumTagSinglePayload(v101, 1, 1, v81);
  v83 = *v76;
  v84 = v77;
  v85 = v99;
  sub_2688C053C(v84, v99, &unk_2802A57B0, &unk_268B3CE00);
  if (__swift_getEnumTagSinglePayload(v85, 1, v64) == 1)
  {
    sub_2688C058C(v85, &unk_2802A57B0, &unk_268B3CE00);
  }

  else
  {
    v98 = v83;
    sub_268B350B4();
    (*(v65 + 8))(v85, v64);
  }

  v86 = v109;
  sub_2688E2B50();

  sub_2688C058C(v82, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v111, &unk_2802A57B0, &unk_268B3CE00);
  (*(v110 + 8))(v86, v112);
  __swift_project_boxed_opaque_existential_1(v75 + 12, v75[15]);
  sub_268948308(MEMORY[0x277D84F90]);
  __swift_project_boxed_opaque_existential_1(v75 + 2, v75[5]);
  sub_268B34CA4();
  v87 = v104;
  v89 = v105;
  v88 = v106;
  (*(v104 + 16))(v106, v74, v105);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v90, v91, v92, v89);
  v93 = sub_268B354F4();
  memset(v115, 0, sizeof(v115));
  v116 = 0;
  v117[3] = v93;
  v117[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v117);
  v94 = v113;
  sub_268B34F34();
  sub_2688C058C(v115, &unk_2802A5800, &unk_268B3CE10);
  sub_2688C058C(v88, &qword_2802A57F0, &qword_268B3DDB0);
  v118 = 0;
  v108(v117);
  (*(v87 + 8))(v74, v89);
  sub_2688C058C(v94, &unk_2802A56E0, &unk_268B3CDF0);
  sub_2688C058C(v117, &unk_2802A57C0, &qword_268B3BE00);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689524F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6D90, qword_268B3EDB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v32 - v3;
  v5 = sub_268B35664();
  v38 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_268B37A54();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268B35034();
  if (a1)
  {

    v12 = sub_268953070(v11);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v7, qword_2802CDA10);
    (*(v8 + 16))(v10, v13, v7);
    swift_unknownObjectRetain();
    v14 = sub_268B37A34();
    v15 = sub_268B37F04();
    swift_unknownObjectRelease();
    v35 = v15;
    v36 = v14;
    v16 = os_log_type_enabled(v14, v15);
    v37 = v12;
    if (v16)
    {
      v17 = swift_slowAlloc();
      v33 = v5;
      v18 = v17;
      v19 = swift_slowAlloc();
      v34 = a1;
      v20 = v19;
      v40 = v12;
      v41 = v19;
      *v18 = 136315138;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A5750, &unk_268B3BDA0);
      v21 = sub_268B37C24();
      v23 = sub_26892CDB8(v21, v22, &v41);

      *(v18 + 4) = v23;
      v24 = v36;
      _os_log_impl(&dword_2688BB000, v36, v35, "Including SystemPrompted in context update: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      v25 = v20;
      a1 = v34;
      MEMORY[0x26D6266E0](v25, -1, -1);
      v26 = v18;
      v5 = v33;
      MEMORY[0x26D6266E0](v26, -1, -1);
    }

    else
    {
    }

    (*(v8 + 8))(v10, v7);
    sub_268953754(a1, v4);
    if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
    {

      swift_unknownObjectRelease();
      sub_2688C058C(v4, &qword_2802A6D90, qword_268B3EDB0);
    }

    else
    {
      v28 = v38;
      v27 = v39;
      (*(v38 + 32))(v39, v4, v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62C0, &unk_268B3BD90);
      v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_268B3BBC0;
      (*(v28 + 16))(v30 + v29, v27, v5);
      sub_268B34FB4();
      swift_unknownObjectRelease();

      (*(v28 + 8))(v27, v5);
    }
  }

  sub_268B34FF4();

  sub_268B35014();

  sub_268B34FE4();
  return sub_268B34FD4();
}

uint64_t sub_268952990()
{
  v0 = sub_268B358D4();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v6 = v5 - v4;
  sub_268B364E4();
  swift_allocObject();
  v7 = sub_268B364D4();
  sub_268B36124();
  swift_allocObject();
  sub_268B36114();
  sub_268B360F4();
  sub_268B358A4();
  sub_268B357B4();
  (*(v2 + 8))(v6, v0);
  sub_268B365D4();

  return v7;
}

void *sub_268952B04()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  sub_2689542A4((v0 + 7));
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 22);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 27);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 32);
  return v0;
}

uint64_t sub_268952B54()
{
  sub_268952B04();

  return MEMORY[0x2821FE8D8](v0, 296, 7);
}

void sub_268952C00()
{
  type metadata accessor for VolumeLevelNeedsValueStrategy();

  JUMPOUT(0x26D622150);
}

uint64_t sub_268952C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = type metadata accessor for VolumeLevelNeedsValueStrategy();

  return MEMORY[0x2821B9C10](a1, a2, a3, a4, a5, a6, a7, v16, a9);
}

uint64_t sub_268952D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = type metadata accessor for VolumeLevelNeedsValueStrategy();

  return MEMORY[0x2821BB9B8](a1, a2, a3, a4, a5, a6, v15, a8);
}

uint64_t sub_268952DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  type metadata accessor for VolumeLevelNeedsValueStrategy();

  return sub_268B353B4();
}

uint64_t sub_268952E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  v15 = type metadata accessor for VolumeLevelNeedsValueStrategy();
  *v14 = v7;
  v14[1] = sub_2688C01F0;

  return MEMORY[0x2821BB9B0](a1, a2, a3, a4, a5, v15, a7);
}

uint64_t sub_268952F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  v17 = type metadata accessor for VolumeLevelNeedsValueStrategy();
  *v16 = v8;
  v16[1] = sub_26891DC3C;

  return MEMORY[0x2821BB9C0](a1, a2, a3, a4, a5, a6, v17, a8);
}

unint64_t sub_26895301C()
{
  result = qword_2802A62A0;
  if (!qword_2802A62A0)
  {
    type metadata accessor for VolumeLevelNeedsValueStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A62A0);
  }

  return result;
}

id sub_268953070(uint64_t a1)
{
  v48 = sub_268B37A54();
  v2 = *(v48 - 8);
  v3 = MEMORY[0x28223BE20](v48);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v45 = &v43 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62D0, &qword_268B3EDD0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v43 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5770, &unk_268B3BDC0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v43 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  v19 = sub_268B357A4();
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_268B3BBA0;
  *(v20 + 32) = a1;
  v21 = sub_268B35BD4();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v21);

  v22 = MEMORY[0x26D623520](v20, v9);

  sub_2688C058C(v9, &unk_2802A62D0, &qword_268B3EDD0);
  v47 = v22;
  sub_268B36604();
  v46 = v18;
  sub_2688C058C(v18, &qword_2802A5770, &unk_268B3BDC0);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v19);
  sub_268954254(v16, v18, &qword_2802A5770, &unk_268B3BDC0);
  v23 = v18;
  sub_2688C053C(v18, v13, &qword_2802A5770, &unk_268B3BDC0);
  result = __swift_getEnumTagSinglePayload(v13, 1, v19);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_26895417C();
    v25 = MEMORY[0x26D6259D0](v13);
    (*(*(v19 - 8) + 8))(v13, v19);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v26 = v48;
    v27 = __swift_project_value_buffer(v48, qword_2802CDA10);
    (*(v2 + 16))(v5, v27, v26);
    v28 = v25;
    v29 = sub_268B37A34();
    v30 = sub_268B37F04();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v49 = v32;
      *v31 = 136315138;
      v33 = v28;
      v34 = [v33 description];
      v44 = v5;
      v35 = v34;
      v36 = sub_268B37BF4();
      v37 = v2;
      v39 = v38;

      v40 = sub_26892CDB8(v36, v39, &v49);

      *(v31 + 4) = v40;
      _os_log_impl(&dword_2688BB000, v29, v30, "uso NeedsValue: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      MEMORY[0x26D6266E0](v32, -1, -1);
      v41 = v31;
      v23 = v46;
      MEMORY[0x26D6266E0](v41, -1, -1);

      (*(v37 + 8))(v44, v48);
    }

    else
    {

      (*(v2 + 8))(v5, v48);
    }

    v42 = [objc_allocWithZone(MEMORY[0x277D5F5A8]) initWithReference_];

    sub_2688C058C(v23, &qword_2802A5770, &unk_268B3BDC0);
    return v42;
  }

  return result;
}

uint64_t sub_268953754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v3 = sub_268B37A54();
  v80 = *(v3 - 8);
  v81 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v73 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v83 = &v69 - v6;
  v7 = sub_268B35664();
  v85 = *(v7 - 8);
  v86 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v70 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v84 = &v69 - v10;
  v11 = sub_268B355E4();
  v78 = *(v11 - 8);
  v79 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v72 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v76 = &v69 - v14;
  v15 = sub_268B35504();
  v77 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v71 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v75 = &v69 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62D0, &qword_268B3EDD0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v69 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A5760, &unk_268B3BDB0);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v25 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v69 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v69 - v29;
  __swift_storeEnumTagSinglePayload(&v69 - v29, 1, 1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_268B3BBA0;
  *(v31 + 32) = a1;
  v32 = sub_268B35BD4();
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v32);

  v33 = MEMORY[0x26D623520](v31, v21);

  sub_2688C058C(v21, &unk_2802A62D0, &qword_268B3EDD0);
  sub_268B35BE4();
  sub_268B35C44();
  swift_allocObject();
  sub_268B35C34();
  v74 = v33;
  sub_268B356B4();
  sub_2688C058C(v30, &unk_2802A5760, &unk_268B3BDB0);

  __swift_storeEnumTagSinglePayload(v28, 0, 1, v15);
  sub_268954254(v28, v30, &unk_2802A5760, &unk_268B3BDB0);
  sub_2688C053C(v30, v25, &unk_2802A5760, &unk_268B3BDB0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v25, 1, v15);
  v35 = v85;
  v36 = v86;
  v37 = v83;
  v38 = v84;
  if (EnumTagSinglePayload == 1)
  {
    sub_2688C058C(v25, &unk_2802A5760, &unk_268B3BDB0);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v39 = v81;
    v40 = __swift_project_value_buffer(v81, qword_2802CDA10);
    v41 = v80;
    v42 = v73;
    (*(v80 + 16))(v73, v40, v39);

    v43 = sub_268B37A34();
    v44 = sub_268B37EE4();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = v41;
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v87[0] = v47;
      *v46 = 136315138;
      v48 = sub_268B36614();
      v50 = sub_26892CDB8(v48, v49, v87);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_2688BB000, v43, v44, "Unable to map graph into protoGraph: %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v47);
      MEMORY[0x26D6266E0](v47, -1, -1);
      MEMORY[0x26D6266E0](v46, -1, -1);

      (*(v45 + 8))(v73, v39);
      v36 = v86;
    }

    else
    {

      (*(v41 + 8))(v42, v39);
    }

    sub_2688C058C(v30, &unk_2802A5760, &unk_268B3BDB0);
    return __swift_storeEnumTagSinglePayload(v82, 1, 1, v36);
  }

  else
  {
    v73 = v30;
    v51 = v77;
    v52 = v75;
    (*(v77 + 32))(v75, v25, v15);
    v53 = v76;
    sub_268B355D4();
    sub_268B35654();
    (*(v51 + 16))(v71, v52, v15);
    sub_268B355C4();
    (*(v78 + 16))(v72, v53, v79);
    sub_268B35644();
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v54 = v81;
    v55 = __swift_project_value_buffer(v81, qword_2802CDA10);
    v56 = v80;
    (*(v80 + 16))(v37, v55, v54);
    v57 = sub_268B37A34();
    v58 = sub_268B37F04();
    v59 = os_log_type_enabled(v57, v58);
    v60 = v73;
    if (v59)
    {
      v61 = swift_slowAlloc();
      v62 = v56;
      v63 = swift_slowAlloc();
      v87[0] = v63;
      *v61 = 136315138;
      swift_beginAccess();
      (*(v35 + 16))(v70, v38, v86);
      v64 = sub_268B37C24();
      v66 = sub_26892CDB8(v64, v65, v87);
      v35 = v85;

      *(v61 + 4) = v66;
      v38 = v84;
      _os_log_impl(&dword_2688BB000, v57, v58, "Nlu System Prompted Act: %s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v63);
      MEMORY[0x26D6266E0](v63, -1, -1);
      MEMORY[0x26D6266E0](v61, -1, -1);

      (*(v62 + 8))(v83, v54);
      v36 = v86;
    }

    else
    {

      (*(v56 + 8))(v37, v54);
    }

    (*(v78 + 8))(v76, v79);
    (*(v77 + 8))(v75, v15);
    sub_2688C058C(v60, &unk_2802A5760, &unk_268B3BDB0);
    swift_beginAccess();
    v68 = v82;
    (*(v35 + 16))(v82, v38, v36);
    __swift_storeEnumTagSinglePayload(v68, 0, 1, v36);
    return (*(v35 + 8))(v38, v36);
  }
}

unint64_t sub_26895417C()
{
  result = qword_2802A62F0;
  if (!qword_2802A62F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802A62F0);
  }

  return result;
}

uint64_t sub_2689541C0()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_268954254(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_25(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 32))(v4, v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_18_2@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, char a3@<W8>)
{
  *a2 = a3;
  **(v3 - 136) = a1;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_26_3()
{

  return type metadata accessor for SettingsIntent(0);
}

uint64_t OUTLINED_FUNCTION_27_4()
{

  return sub_268B350F4();
}

uint64_t OUTLINED_FUNCTION_28_5(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

id SkipContentIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void SkipContentIntentHandler.init()()
{
  OUTLINED_FUNCTION_26();
  v0 = sub_268B36C54();
  v26 = sub_268B36C44();
  sub_268B37204();
  v25 = sub_268B371F4();
  sub_268B354A4();
  sub_2689209D0(v33);
  sub_268AD33CC(v32);
  sub_268B36754();
  v24 = sub_268B36734();
  sub_268B36C44();
  OUTLINED_FUNCTION_86_1();
  v1 = type metadata accessor for MultiUserConnectionProvider();
  v2 = swift_allocObject();
  v3 = objc_allocWithZone(MEMORY[0x277CEF318]);

  *(v2 + 16) = [v3 init];
  __swift_mutable_project_boxed_opaque_existential_1(v33, v33[3]);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v7 = (v6 - v5);
  (*(v8 + 16))(v6 - v5);
  v9 = *v7;
  v30 = v0;
  v31 = MEMORY[0x277D5F680];
  *&v29 = v0;
  v10 = type metadata accessor for AnalyticsServiceLogger();
  v28[4] = &off_28795F5E0;
  v28[3] = v10;
  v28[0] = v9;
  v27[4] = &off_287960608;
  v27[3] = v1;
  v27[0] = v2;
  type metadata accessor for AnalyticsServiceImpl();
  v11 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v28, v10);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  v15 = (v14 - v13);
  (*(v16 + 16))(v14 - v13);
  __swift_mutable_project_boxed_opaque_existential_1(v27, v1);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  v20 = (v19 - v18);
  (*(v21 + 16))(v19 - v18);
  v22 = *v15;
  v23 = *v20;
  v11[5] = v10;
  v11[6] = &off_28795F5E0;
  v11[2] = v22;
  v11[21] = v1;
  v11[22] = &off_287960608;
  v11[18] = v23;
  sub_2688E6514(v32, (v11 + 7));
  v11[12] = v24;
  sub_2688E6514(&v29, (v11 + 13));
  __swift_destroy_boxed_opaque_existential_0Tm(v27);
  __swift_destroy_boxed_opaque_existential_0Tm(v28);

  __swift_destroy_boxed_opaque_existential_0Tm(v33);
  sub_268B34C64();
  sub_268958494(v26, v25, &v34, v11, v33);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  OUTLINED_FUNCTION_23();
}

void sub_26895480C()
{
  OUTLINED_FUNCTION_26();
  v25 = v1;
  v26 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_268B37A24();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v11);
  v13 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = v5;
  *(v16 + 24) = v3;
  v17 = qword_2802A5028;

  if (v17 != -1)
  {
    swift_once();
  }

  qword_2802CDB28;
  sub_268B37A14();
  v18 = OUTLINED_FUNCTION_192();
  v19(v18);
  v20 = (*(v8 + 80) + 33) & ~*(v8 + 80);
  v21 = v20 + v10;
  v22 = (v20 + v10) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = "handleSkipItem";
  *(v23 + 24) = 14;
  *(v23 + 32) = 2;
  (*(v8 + 32))(v23 + v20, v13, v6);
  *(v23 + v21) = 1;
  v24 = v23 + v22;
  *(v24 + 8) = sub_268958724;
  *(v24 + 16) = v16;

  sub_268B38004();
  sub_268B37A04();

  sub_268954A64(v25, v26, sub_268958A64, v23);

  (*(v8 + 8))(v15, v6);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268954A64(char *a1, void *a2, void (*a3)(void **), uint64_t a4)
{
  v75 = a2;
  v7 = sub_268B37A54();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v70 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v70 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_268958D98;
  *(v18 + 24) = v17;
  swift_retain_n();
  swift_retain_n();
  v74 = a1;
  v19 = sub_268B18100(a1);
  if (!v19)
  {
    goto LABEL_13;
  }

  v20 = v19;
  if (!sub_2688EFD0C())
  {

LABEL_13:
    v34 = a3;

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v35 = __swift_project_value_buffer(v7, qword_2802CDA10);
    (*(v8 + 16))(v16, v35, v7);
    v36 = sub_268B37A34();
    v37 = sub_268B37EE4();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_2688BB000, v36, v37, "No devices found in SkipContentIntent, returning failure", v38, 2u);
      MEMORY[0x26D6266E0](v38, -1, -1);
    }

    (*(v8 + 8))(v16, v7);
    v39 = sub_268B36EA4();
    v40 = objc_allocWithZone(type metadata accessor for SkipContentIntentResponse());
    v41 = v39;
    v42 = SkipContentIntentResponse.init(code:userActivity:)(5, v39);
    v77[0] = v42;
    v34(v77);
    goto LABEL_18;
  }

  v21 = v75;
  v72 = *(v75 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_aceServiceHelper);
  v73 = a4;
  sub_268921344();
  if (!*(v22 + 16))
  {

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v44 = __swift_project_value_buffer(v7, qword_2802CDA10);
    (*(v8 + 16))(v14, v44, v7);
    v45 = v74;
    v46 = sub_268B37A34();
    v47 = sub_268B37EE4();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v74 = v48;
      v75 = swift_slowAlloc();
      v77[0] = v75;
      *v48 = 136315138;
      v76 = sub_268B18100(v45);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B30, &qword_268B3EE70);
      LODWORD(v72) = v47;
      v49 = sub_268B38094();
      v50 = a3;
      v52 = v51;

      v53 = sub_26892CDB8(v49, v52, v77);
      a3 = v50;

      v54 = v74;
      *(v74 + 4) = v53;
      v55 = v54;
      _os_log_impl(&dword_2688BB000, v46, v72, "Unable to get route ids for the intent devices: %s", v54, 0xCu);
      v56 = v75;
      __swift_destroy_boxed_opaque_existential_0Tm(v75);
      MEMORY[0x26D6266E0](v56, -1, -1);
      MEMORY[0x26D6266E0](v55, -1, -1);
    }

    (*(v8 + 8))(v14, v7);
    v57 = sub_268B36EA4();
    v58 = objc_allocWithZone(type metadata accessor for SkipContentIntentResponse());
    v41 = v57;
    v42 = SkipContentIntentResponse.init(code:userActivity:)(5, v57);
    v77[0] = v42;
    a3(v77);
LABEL_18:

LABEL_19:
  }

  v71 = v22;
  v23 = v21;
  __swift_project_boxed_opaque_existential_1((v21 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_deviceState), *(v21 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_deviceState + 24));
  if (sub_2688C3308())
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v7, qword_2802CDA10);
    (*(v8 + 16))(v11, v24, v7);
    v25 = sub_268B37A34();
    v26 = sub_268B37F04();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2688BB000, v25, v26, "Skip content submitting suppress delay feedback", v27, 2u);
      MEMORY[0x26D6266E0](v27, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
    sub_268B38004();
    if (qword_2802A5028 != -1)
    {
      swift_once();
    }

    v28 = v75;
    sub_268B37A04();
    v29 = [objc_allocWithZone(MEMORY[0x277D47B38]) init];
    v30 = swift_allocObject();
    v30[2] = v28;
    v30[3] = v20;
    v31 = v74;
    v30[4] = v71;
    v30[5] = v31;
    v30[6] = sub_2688E19F8;
    v30[7] = v18;

    __swift_project_boxed_opaque_existential_1((v72 + 56), *(v72 + 80));
    sub_268958E08();
    v32 = v31;
    v33 = v28;
    sub_268B35134();

    goto LABEL_19;
  }

  v59 = swift_allocObject();
  v60 = v73;
  *(v59 + 16) = a3;
  *(v59 + 24) = v60;
  __swift_project_boxed_opaque_existential_1((v21 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_analyticsService), *(v21 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_analyticsService + 24));
  swift_retain_n();
  swift_retain_n();

  sub_268920C54(v20);
  sub_268949478(0x746E6F4370696B73, 0xEB00000000746E65, v61, v20);

  sub_26895761C();
  if (v62)
  {
    v63 = v74;

    v64 = v23;
    v65 = v71;

    sub_268A30B60(v20, 0, v72, v63, v64, v65, 1, sub_268958EDC, v59, v69, v70, v71, v72, v73, v74, v75, v76, v77[0], v77[1], v77[2], v77[3]);
  }

  else
  {

    v66 = v74;

    v67 = v23;
    v68 = v71;

    sub_268957700(v66, v67, v68, 0, a3, v60);
  }
}

uint64_t sub_268955448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v51 = a6;
  v52 = a7;
  v48 = a4;
  v49 = a5;
  v47 = a3;
  v50 = a2;
  v53 = sub_268B37A54();
  v46 = *(v53 - 8);
  v8 = MEMORY[0x28223BE20](v53);
  v45 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6368, qword_268B3EE78);
  MEMORY[0x28223BE20](v12);
  v14 = &v42 - v13;
  v15 = sub_268B351A4();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v42 - v20;
  sub_2688F1FA4(a1, v14, &qword_2802A6368, qword_268B3EE78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v16 + 32))(v21, v14, v15);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v22 = v53;
    v23 = __swift_project_value_buffer(v53, qword_2802CDA10);
    v24 = v46;
    (*(v46 + 16))(v45, v23, v22);
    v25 = *(v16 + 16);
    v25(v19, v21, v15);
    v26 = sub_268B37A34();
    v27 = sub_268B37EE4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v43 = v28;
      v44 = swift_slowAlloc();
      *v28 = 138412290;
      sub_268958E4C();
      swift_allocError();
      v25(v29, v19, v15);
      v30 = _swift_stdlib_bridgeErrorToNSError();
      v31 = *(v16 + 8);
      v31(v19, v15);
      v32 = v43;
      v33 = v44;
      *(v43 + 1) = v30;
      *v33 = v30;
      _os_log_impl(&dword_2688BB000, v26, v27, "ACE service submission error: %@", v32, 0xCu);
      sub_2688C058C(v33, &qword_2802A6420, &unk_268B3C680);
      MEMORY[0x26D6266E0](v33, -1, -1);
      MEMORY[0x26D6266E0](v32, -1, -1);

      (*(v24 + 8))(v45, v53);
      v31(v21, v15);
    }

    else
    {

      v40 = *(v16 + 8);
      v40(v19, v15);
      (*(v24 + 8))(v45, v22);
      v40(v21, v15);
    }
  }

  else
  {
    sub_2688C058C(v14, &qword_2802A6368, qword_268B3EE78);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v34 = v53;
    v35 = __swift_project_value_buffer(v53, qword_2802CDA10);
    v36 = v46;
    (*(v46 + 16))(v11, v35, v34);
    v37 = sub_268B37A34();
    v38 = sub_268B37F04();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_2688BB000, v37, v38, "ACE service submission succeeded", v39, 2u);
      MEMORY[0x26D6266E0](v39, -1, -1);
    }

    (*(v36 + 8))(v11, v34);
  }

  sub_268B37FF4();
  if (qword_2802A5028 != -1)
  {
    swift_once();
  }

  sub_268B37A04();
  return sub_2689574B8(v47, v48, v49, 0, v51, v52);
}

void sub_268955AB8(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = sub_268B36C04();
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_268B37A54();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v33 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - v13;
  v36 = a3;
  _Block_copy(a3);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v9, qword_2802CDA10);
  v31 = *(v10 + 16);
  v32 = v15;
  v31(v14);
  v16 = sub_268B37A34();
  v17 = sub_268B37F04();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = a1;
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_2688BB000, v16, v17, "Resolving devices for skip content", v19, 2u);
    v20 = v19;
    a1 = v18;
    MEMORY[0x26D6266E0](v20, -1, -1);
  }

  v21 = *(v10 + 8);
  v21(v14, v9);
  if ((sub_268921060() & 1) != 0 && (__swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_deviceState), *(a2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_deviceState + 24)), (sub_2688C3240() & 1) == 0))
  {
    v25 = v33;
    (v31)(v33, v32, v9);
    v26 = sub_268B37A34();
    v27 = sub_268B37EE4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2688BB000, v26, v27, "Whole House Audio requests are unsupported on this platform", v28, 2u);
      MEMORY[0x26D6266E0](v28, -1, -1);
    }

    v21(v25, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_268B3BBA0;
    type metadata accessor for SkipContentDevicesResolutionResult();
    *(v29 + 32) = sub_268B17B04(2);
    v30 = sub_268B37CE4();
    v24 = v36;
    (v36)[2](v36, v30);
  }

  else
  {
    v23 = v34;
    v22 = v35;
    (*(v34 + 104))(v8, *MEMORY[0x277D5F650], v35);
    [a1 mediaType];
    v24 = v36;
    _Block_copy(v36);
    sub_268904AC8();
    (*(v23 + 8))(v8, v22);
  }

  _Block_release(v24);
  _Block_release(v24);
}

void sub_268955F10()
{
  OUTLINED_FUNCTION_26();
  v35 = v0;
  v36 = v1;
  v37 = v3;
  v38 = v2;
  v34 = sub_268B36C04();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v9 = v8 - v7;
  v10 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_20_0();
  v33 = (v14 - v15);
  MEMORY[0x28223BE20](v16);
  v18 = &v31 - v17;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v19 = __swift_project_value_buffer(v10, qword_2802CDA10);
  v32 = *(v12 + 16);
  v32(v18, v19, v10);
  v20 = sub_268B37A34();
  v21 = sub_268B37F04();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_14();
    *v22 = 0;
    _os_log_impl(&dword_2688BB000, v20, v21, "Resolving devices for skip content", v22, 2u);
    OUTLINED_FUNCTION_12();
  }

  v23 = *(v12 + 8);
  v24 = OUTLINED_FUNCTION_138();
  v23(v24);
  if ((sub_268921060() & 1) != 0 && (__swift_project_boxed_opaque_existential_1((v35 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_deviceState), *(v35 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_deviceState + 24)), (sub_2688C3240() & 1) == 0))
  {
    v26 = v33;
    v32(v33, v19, v10);
    v27 = sub_268B37A34();
    v28 = sub_268B37EE4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = OUTLINED_FUNCTION_14();
      *v29 = 0;
      _os_log_impl(&dword_2688BB000, v27, v28, "Whole House Audio requests are unsupported on this platform", v29, 2u);
      OUTLINED_FUNCTION_83_0();
    }

    (v23)(v26, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    OUTLINED_FUNCTION_220();
    v30 = swift_allocObject();
    OUTLINED_FUNCTION_19_4(v30, xmmword_268B3BBA0);
    v30[2].n128_u64[0] = sub_268B17B04(2);
    v36(v30);
  }

  else
  {
    v25 = v34;
    (*(v5 + 104))(v9, *MEMORY[0x277D5F650], v34);
    [v38 mediaType];

    sub_268905388();
    (*(v5 + 8))(v9, v25);
  }

  OUTLINED_FUNCTION_23();
}

void sub_2689562B4()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_20_0();
  v14 = (v12 - v13);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_17_6();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_141();
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v65 - v19;
  if (v5)
  {
    if (v5 == 1)
    {
      if (qword_2802A4F30 != -1)
      {
        v18 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      OUTLINED_FUNCTION_8_8(v18, qword_2802CDA10);
      v21(v0);

      v22 = sub_268B37A34();
      v23 = sub_268B37F04();
      sub_268958D4C(v7, 1u);
      if (os_log_type_enabled(v22, v23))
      {
        OUTLINED_FUNCTION_172_0();
        v24 = OUTLINED_FUNCTION_20_6();
        v72 = v24;
        *v20 = 136315138;
        v25 = type metadata accessor for Device();
        v26 = MEMORY[0x26D6256F0](v7, v25);
        OUTLINED_FUNCTION_30_3(v26, v27);
        v70 = v3;
        OUTLINED_FUNCTION_16_7();
        *(v20 + 4) = v10;
        _os_log_impl(&dword_2688BB000, v22, v23, "SkipContentIntentHandler#resolveDevices Disambiguating between devices: %s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v24);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12_8();

        v28 = OUTLINED_FUNCTION_138();
        v29(v28);
        v3 = v70;
      }

      else
      {

        v54 = OUTLINED_FUNCTION_138();
        v55(v54);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v52 = swift_allocObject();
      OUTLINED_FUNCTION_19_4(v52, xmmword_268B3BBA0);
      v53 = sub_268B2CCFC(v7);
    }

    else
    {
      v70 = v3;
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      v39 = __swift_project_value_buffer(v8, qword_2802CDA10);
      v68 = *(v10 + 16);
      v69 = v39;
      v68(v20);
      v40 = sub_268B37A34();
      v41 = sub_268B37EE4();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = OUTLINED_FUNCTION_172_0();
        v67 = v10;
        v43 = v42;
        v66 = swift_slowAlloc();
        v72 = v66;
        *v43 = 136315138;
        v71 = v7 & 1;
        sub_26890C84C();
        v44 = sub_268B384A4();
        v46 = sub_26892CDB8(v44, v45, &v72);

        *(v43 + 4) = v46;
        _os_log_impl(&dword_2688BB000, v40, v41, "SkipContentIntentHandler#resolveDevices Error resolving devices: %s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v66);
        OUTLINED_FUNCTION_12();
        v10 = v67;
        OUTLINED_FUNCTION_12();
      }

      v47 = *(v10 + 8);
      v47(v20, v8);
      v3 = v70;
      if ((v7 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        OUTLINED_FUNCTION_220();
        v63 = swift_allocObject();
        OUTLINED_FUNCTION_19_4(v63, xmmword_268B3BBA0);
        v63[2].n128_u64[0] = [swift_getObjCClassFromMetadata() notRequired];
        goto LABEL_32;
      }

      (v68)(v14, v69, v8);
      v48 = sub_268B37A34();
      v49 = sub_268B37EE4();
      if (os_log_type_enabled(v48, v49))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_112_1(&dword_2688BB000, v50, v51, "SkipContentIntentHandler#resolveDevices .noMatchingDevicesFound");
        OUTLINED_FUNCTION_83_0();
      }

      v47(v14, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v52 = swift_allocObject();
      OUTLINED_FUNCTION_19_4(v52, xmmword_268B3BBA0);
      v53 = sub_268B17B04(1);
    }

    v52[2].n128_u64[0] = v53;
LABEL_32:
    v64 = sub_268B37CE4();
    (v3)[2](v3, v64);

    _Block_release(v3);
    OUTLINED_FUNCTION_23();
    return;
  }

  if (qword_2802A4F30 != -1)
  {
    v18 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_8_8(v18, qword_2802CDA10);
  v30(v1);

  v31 = sub_268B37A34();
  v32 = sub_268B37F04();
  sub_268958D4C(v7, 0);
  if (os_log_type_enabled(v31, v32))
  {
    OUTLINED_FUNCTION_172_0();
    v33 = OUTLINED_FUNCTION_20_6();
    v72 = v33;
    *v20 = 136315138;
    v34 = type metadata accessor for Device();
    v35 = MEMORY[0x26D6256F0](v7, v34);
    OUTLINED_FUNCTION_30_3(v35, v36);
    v70 = v3;
    OUTLINED_FUNCTION_16_7();
    *(v20 + 4) = v10;
    _os_log_impl(&dword_2688BB000, v31, v32, "SkipContentIntentHandler#resolveDevices Success resolving devices: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v33);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12_8();

    v37 = OUTLINED_FUNCTION_192();
    v38(v37);
    v3 = v70;
  }

  else
  {

    v56 = OUTLINED_FUNCTION_192();
    v57(v56);
  }

  v58 = sub_2688EFD0C();
  if (!v58)
  {
LABEL_30:
    type metadata accessor for SkipContentDevicesResolutionResult();
    goto LABEL_32;
  }

  v59 = v58;
  v72 = MEMORY[0x277D84F90];
  sub_268B38234();
  if ((v59 & 0x8000000000000000) == 0)
  {
    type metadata accessor for SkipContentDevicesResolutionResult();
    v60 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v61 = MEMORY[0x26D625BD0](v60, v7);
      }

      else
      {
        v61 = *(v7 + 8 * v60 + 32);
      }

      v62 = v61;
      ++v60;
      sub_268B2CC98(v61);

      sub_268B38214();
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
    }

    while (v59 != v60);
    goto LABEL_30;
  }

  __break(1u);
}

void sub_268956984()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v60 = v4;
  v6 = v5;
  v8 = v7;
  v9 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_17_6();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v55 - v15;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_141();
  MEMORY[0x28223BE20](v17);
  v19 = &v55 - v18;
  if (v6)
  {
    if (v6 == 1)
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      __swift_project_value_buffer(v9, qword_2802CDA10);
      OUTLINED_FUNCTION_1_13();
      v20(v0);

      v21 = sub_268B37A34();
      v22 = sub_268B37F04();
      sub_268958D4C(v8, 1u);
      if (os_log_type_enabled(v21, v22))
      {
        OUTLINED_FUNCTION_172_0();
        v23 = OUTLINED_FUNCTION_20_6();
        v62 = v23;
        *v16 = 136315138;
        v24 = type metadata accessor for Device();
        v25 = MEMORY[0x26D6256F0](v8, v24);
        OUTLINED_FUNCTION_30_3(v25, v26);
        v59 = v9;
        OUTLINED_FUNCTION_16_7();
        *(v16 + 4) = v3;
        _os_log_impl(&dword_2688BB000, v21, v22, "SkipContentIntentHandler#resolveDevices Disambiguating between devices: %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v23);
        OUTLINED_FUNCTION_83_0();
        OUTLINED_FUNCTION_12_8();

        (*(v11 + 8))(v0, v59);
      }

      else
      {

        (*(v11 + 8))(v0, v9);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v48 = swift_allocObject();
      OUTLINED_FUNCTION_19_4(v48, xmmword_268B3BBA0);
      v49 = sub_268B2CCFC(v8);
    }

    else
    {
      v59 = v3;
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      v35 = __swift_project_value_buffer(v9, qword_2802CDA10);
      v57 = *(v11 + 16);
      v58 = v35;
      v57(v19);
      v36 = sub_268B37A34();
      v37 = sub_268B37EE4();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = OUTLINED_FUNCTION_172_0();
        v56 = v11;
        v39 = v38;
        v55 = swift_slowAlloc();
        v62 = v55;
        *v39 = 136315138;
        v61 = v8 & 1;
        sub_26890C84C();
        v40 = sub_268B384A4();
        v42 = sub_26892CDB8(v40, v41, &v62);

        *(v39 + 4) = v42;
        _os_log_impl(&dword_2688BB000, v36, v37, "SkipContentIntentHandler#resolveDevices Error resolving devices: %s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v55);
        OUTLINED_FUNCTION_12();
        v11 = v56;
        OUTLINED_FUNCTION_12();
      }

      v43 = *(v11 + 8);
      v43(v19, v9);
      if (v8)
      {
        (v57)(v1, v58, v9);
        v44 = sub_268B37A34();
        v45 = sub_268B37EE4();
        if (os_log_type_enabled(v44, v45))
        {
          *OUTLINED_FUNCTION_14() = 0;
          OUTLINED_FUNCTION_112_1(&dword_2688BB000, v46, v47, "SkipContentIntentHandler#resolveDevices .noMatchingDevicesFound");
          OUTLINED_FUNCTION_83_0();
        }

        v43(v1, v9);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        OUTLINED_FUNCTION_220();
        v48 = swift_allocObject();
        OUTLINED_FUNCTION_19_4(v48, xmmword_268B3BBA0);
        v49 = sub_268B17B04(1);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        OUTLINED_FUNCTION_220();
        v48 = swift_allocObject();
        OUTLINED_FUNCTION_19_4(v48, xmmword_268B3BBA0);
        v49 = [swift_getObjCClassFromMetadata() notRequired];
      }
    }

    v48[2].n128_u64[0] = v49;
    goto LABEL_32;
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  __swift_project_value_buffer(v9, qword_2802CDA10);
  OUTLINED_FUNCTION_1_13();
  v27(v16);

  v28 = sub_268B37A34();
  v29 = sub_268B37F04();
  sub_268958D4C(v8, 0);
  if (os_log_type_enabled(v28, v29))
  {
    v30 = OUTLINED_FUNCTION_172_0();
    v31 = swift_slowAlloc();
    v62 = v31;
    *v30 = 136315138;
    v32 = type metadata accessor for Device();
    v33 = MEMORY[0x26D6256F0](v8, v32);
    OUTLINED_FUNCTION_30_3(v33, v34);
    v59 = v9;
    OUTLINED_FUNCTION_16_7();
    *(v30 + 4) = v3;
    _os_log_impl(&dword_2688BB000, v28, v29, "SkipContentIntentHandler#resolveDevices Success resolving devices: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    OUTLINED_FUNCTION_83_0();
    OUTLINED_FUNCTION_12();

    (*(v11 + 8))(v16, v59);
  }

  else
  {

    (*(v11 + 8))(v16, v9);
  }

  v50 = sub_2688EFD0C();
  v48 = MEMORY[0x277D84F90];
  if (!v50)
  {
    goto LABEL_32;
  }

  v51 = v50;
  v62 = MEMORY[0x277D84F90];
  sub_268B38234();
  if ((v51 & 0x8000000000000000) == 0)
  {
    type metadata accessor for SkipContentDevicesResolutionResult();
    v52 = 0;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v53 = MEMORY[0x26D625BD0](v52, v8);
      }

      else
      {
        v53 = *(v8 + 8 * v52 + 32);
      }

      v54 = v53;
      ++v52;
      sub_268B2CC98(v53);

      sub_268B38214();
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
    }

    while (v51 != v52);
    v48 = v62;
LABEL_32:
    v60(v48);

    OUTLINED_FUNCTION_23();
    return;
  }

  __break(1u);
}

void sub_268957064(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_86_1();
  type metadata accessor for SkipContentDevicesResolutionResult();
  v3 = sub_268B37CE4();
  (*(a2 + 16))(a2, v3);
}

void sub_2689570CC(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v4 = objc_allocWithZone(type metadata accessor for SkipContentIntentResponse());
  v5 = SkipContentIntentResponse.init(code:userActivity:)(1, 0);
  (a3)[2](a3, v5);

  _Block_release(a3);
}

void sub_268957138(uint64_t a1, void (*a2)(void))
{
  v3 = objc_allocWithZone(type metadata accessor for SkipContentIntentResponse());
  v4 = SkipContentIntentResponse.init(code:userActivity:)(1, 0);
  a2();
}

void sub_2689571C4(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
}

void sub_268957250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_268B36F24();
  OUTLINED_FUNCTION_1();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_17_6();
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &a9 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &a9 - v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DE8, &qword_268B3D790);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v35);
  v37 = &a9 - v36;
  sub_2688F1FA4(v24, &a9 - v36, &qword_2802A5DE8, &qword_268B3D790);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v38 = *(v27 + 32);
    v38(v34, v37, v25);
    sub_268B36EC4();
    v39 = *(v27 + 8);
    v39(v34, v25);
    v38(v20, v32, v25);
    v40 = (*(v27 + 88))(v20, v25);
    if (v40 != *MEMORY[0x277D5F6A0] && v40 != *MEMORY[0x277D5F6B8] && v40 != *MEMORY[0x277D5F6B0] && v40 != *MEMORY[0x277D5F6D0] && v40 != *MEMORY[0x277D5F698])
    {
      v39(v20, v25);
    }
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689574B8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  __swift_project_boxed_opaque_existential_1(&v6[OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_analyticsService], *&v6[OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_analyticsService + 24]);
  sub_268920C54(a1);
  v14 = v13;
  v15 = OUTLINED_FUNCTION_23_6();
  sub_268949478(v15, v16, v14, a1);

  sub_26895761C();
  LOBYTE(v14) = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = v7;
  *(v18 + 32) = a2;
  *(v18 + 40) = v14 & 1;
  *(v18 + 48) = a5;
  *(v18 + 56) = a6;

  v19 = v7;
  v20 = a3;
  if (v14)
  {

    sub_268A31290();
  }

  else
  {
    sub_268957E04();
  }
}

void sub_26895761C()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v2 = sub_2688EFD0C();
  v3 = 0;
  while (1)
  {
    v4 = v3;
    if (v2 == v3)
    {
      goto LABEL_12;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D625BD0](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    v7 = [v5 context];
    if (!v7)
    {

LABEL_12:
      OUTLINED_FUNCTION_23();
      return;
    }

    v8 = v7;
    v9 = [v7 nowPlayingState];

    v3 = v4 + 1;
    if (v9 != 1)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

uint64_t sub_268957700(void *a1, char *a2, uint64_t a3, char a4, void (*a5)(void **), uint64_t a6)
{
  v10 = sub_268B37A54();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v30 = a5;
  *(v14 + 16) = a5;
  *(v14 + 24) = a6;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_268958EDC;
  *(v15 + 24) = v14;

  v16 = [a1 direction];
  if (v16 == 2)
  {
    __swift_project_boxed_opaque_existential_1(&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_playbackController], *&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_playbackController + 24]);
    v19 = swift_allocObject();
    v19[2] = sub_268958EA4;
    v19[3] = v15;
    v19[4] = a2;

    v20 = a2;
    sub_268B36E74();
    goto LABEL_5;
  }

  if (v16 == 1)
  {
    __swift_project_boxed_opaque_existential_1(&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_playbackController], *&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_playbackController + 24]);
    v17 = swift_allocObject();
    v17[2] = sub_268958EA4;
    v17[3] = v15;
    v17[4] = a2;

    v18 = a2;
    sub_268B36E14();
LABEL_5:

    goto LABEL_11;
  }

  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v10, qword_2802CDA10);
  (*(v11 + 16))(v13, v21, v10);
  v22 = sub_268B37A34();
  v23 = sub_268B37EE4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_2688BB000, v22, v23, "Skip direction not provided in intent, returning failure", v24, 2u);
    MEMORY[0x26D6266E0](v24, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  v25 = sub_268B36EA4();
  v26 = objc_allocWithZone(type metadata accessor for SkipContentIntentResponse());
  v27 = v25;
  v28 = SkipContentIntentResponse.init(code:userActivity:)(5, v25);
  v31 = v28;

  v30(&v31);

LABEL_11:
}

void sub_268957B10()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  v14 = v13 - v12;
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  *(v15 + 24) = v1;

  v16 = [v7 direction];
  if (v16 == 2)
  {
    OUTLINED_FUNCTION_31_2(&v5[OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_playbackController]);
    OUTLINED_FUNCTION_220();
    v19 = swift_allocObject();
    OUTLINED_FUNCTION_7_6(v19);
    v20 = v5;
    OUTLINED_FUNCTION_4_8();
    sub_268B36E74();
    goto LABEL_5;
  }

  if (v16 == 1)
  {
    OUTLINED_FUNCTION_31_2(&v5[OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_playbackController]);
    OUTLINED_FUNCTION_220();
    v17 = swift_allocObject();
    OUTLINED_FUNCTION_7_6(v17);
    v18 = v5;
    OUTLINED_FUNCTION_4_8();
    sub_268B36E14();
LABEL_5:

    OUTLINED_FUNCTION_23();

    return;
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  __swift_project_value_buffer(v8, qword_2802CDA10);
  OUTLINED_FUNCTION_1_13();
  v22(v14);
  v23 = sub_268B37A34();
  v24 = sub_268B37EE4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = OUTLINED_FUNCTION_14();
    *v25 = 0;
    _os_log_impl(&dword_2688BB000, v23, v24, "Skip direction not provided in intent, returning failure", v25, 2u);
    OUTLINED_FUNCTION_12_8();
  }

  (*(v10 + 8))(v14, v8);
  OUTLINED_FUNCTION_10_9();
  OUTLINED_FUNCTION_86_1();
  v26 = objc_allocWithZone(type metadata accessor for SkipContentIntentResponse());
  v27 = v23;
  v28 = SkipContentIntentResponse.init(code:userActivity:)(5, v23);
  v29 = v28;
  v3(&v29);

  OUTLINED_FUNCTION_23();
}

void sub_268957E04()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_268B37A54();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v9 = v8 - v7;
  v10 = [v5 direction];
  if (v10 == 2)
  {
    OUTLINED_FUNCTION_31_2(&v3[OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_playbackController]);
    OUTLINED_FUNCTION_220();
    v13 = swift_allocObject();
    OUTLINED_FUNCTION_29_3(v13);
    v14 = v3;
    OUTLINED_FUNCTION_4_8();
    sub_268B36E74();
    goto LABEL_5;
  }

  if (v10 == 1)
  {
    OUTLINED_FUNCTION_31_2(&v3[OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_playbackController]);
    OUTLINED_FUNCTION_220();
    v11 = swift_allocObject();
    OUTLINED_FUNCTION_29_3(v11);
    v12 = v3;
    OUTLINED_FUNCTION_4_8();
    sub_268B36E14();
LABEL_5:
    OUTLINED_FUNCTION_23();

    return;
  }

  if (qword_2802A4F30 != -1)
  {
    v10 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_8_8(v10, qword_2802CDA10);
  v16(v9);
  v17 = sub_268B37A34();
  v18 = sub_268B37EE4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = OUTLINED_FUNCTION_14();
    *v19 = 0;
    _os_log_impl(&dword_2688BB000, v17, v18, "Skip direction not provided in intent, returning failure", v19, 2u);
    OUTLINED_FUNCTION_12_8();
  }

  v20 = OUTLINED_FUNCTION_192();
  v21(v20);
  OUTLINED_FUNCTION_10_9();
  OUTLINED_FUNCTION_86_1();
  v22 = objc_allocWithZone(type metadata accessor for SkipContentIntentResponse());
  v23 = v17;
  v24 = SkipContentIntentResponse.init(code:userActivity:)(5, v17);
  v1();

  OUTLINED_FUNCTION_23();
}

void sub_268958234()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  sub_268B37A54();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v8 = v7 - v6;
  if (qword_2802A4F30 != -1)
  {
    v5 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_8_8(v5, qword_2802CDA10);
  v9(v8);
  v10 = sub_268B37A34();
  v11 = sub_268B37F04();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = v3 & 1;
    _os_log_impl(&dword_2688BB000, v10, v11, "SkipContentIntentHandler#sharedIntentDirectionHandler prepareForAudioHandoff completed with: %{BOOL}d", v12, 8u);
    OUTLINED_FUNCTION_12();
  }

  v13 = OUTLINED_FUNCTION_138();
  v15 = v14(v13);
  v1(v15);
  OUTLINED_FUNCTION_23();
}

id SkipContentIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SkipContentIntentHandler(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_268958494(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v26[3] = type metadata accessor for AnalyticsServiceImpl();
  v26[4] = &off_2879539D0;
  v26[0] = a4;
  sub_26890C900(a3, v25);
  sub_26890C900(v26, v23);
  sub_26890C900(a5, v22);
  sub_268B376A4();
  v10 = sub_268B37694();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
  MEMORY[0x28223BE20](v11);
  v13 = (v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = sub_26892D53C(a2, v25, *v13, v22, v10);
  __swift_destroy_boxed_opaque_existential_0Tm(v23);
  sub_26890C900(a3, v25);
  sub_26890C900(v26, v23);
  sub_26890C900(a5, v22);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
  MEMORY[0x28223BE20](v16);
  v18 = (v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = sub_268958750(a1, v15, v25, *v18, v22);
  __swift_destroy_boxed_opaque_existential_0Tm(a5);
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  __swift_destroy_boxed_opaque_existential_0Tm(v23);
  return v20;
}

uint64_t sub_2689586EC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_268958750(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v28[3] = sub_268B36C54();
  v28[4] = MEMORY[0x277D5F680];
  v28[0] = a1;
  v10 = type metadata accessor for AnalyticsServiceImpl();
  v27[3] = v10;
  v27[4] = &off_2879539D0;
  v27[0] = a4;
  v11 = type metadata accessor for SkipContentIntentHandler(0);
  v12 = objc_allocWithZone(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v27, v10);
  MEMORY[0x28223BE20](v13);
  v15 = (&v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;
  v26[3] = v10;
  v26[4] = &off_2879539D0;
  v26[0] = v17;
  if (qword_2802A5028 != -1)
  {
    swift_once();
  }

  v18 = qword_2802CDB28;
  sub_268B37A14();
  sub_26890C900(v28, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_playbackController]);
  *&v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_deviceSelector] = a2;
  sub_26890C900(v26, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_analyticsService]);
  sub_26890C900(a3, v25);
  sub_26890C900(a5, v24);
  type metadata accessor for AceServiceHelper();
  v19 = swift_allocObject();
  sub_2688E6514(v25, v19 + 16);
  sub_2688E6514(v24, v19 + 56);
  *&v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_aceServiceHelper] = v19;
  sub_26890C900(a3, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_deviceState]);
  v23.receiver = v12;
  v23.super_class = v11;
  v20 = objc_msgSendSuper2(&v23, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(a5);
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  __swift_destroy_boxed_opaque_existential_0Tm(v28);
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  __swift_destroy_boxed_opaque_existential_0Tm(v27);
  return v20;
}

uint64_t sub_2689589D0()
{
  sub_268B37A24();
  OUTLINED_FUNCTION_4();
  v2 = *(v1 + 80);
  v3 = (v2 + 33) & ~v2;
  v4 = (v3 + *(v1 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 24, v2 | 7);
}

uint64_t sub_268958A64(void *a1)
{
  sub_268B37A24();

  return sub_2689589C8(a1);
}

uint64_t type metadata accessor for SkipContentIntentHandler(uint64_t a1)
{
  result = qword_2802A6358;
  if (!qword_2802A6358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268958B68(uint64_t a1)
{
  result = sub_268B37A24();
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

uint64_t sub_268958CCC()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_268958D4C(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return result;
}

uint64_t sub_268958D60()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_268958DA0()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

unint64_t sub_268958E08()
{
  result = qword_2802A5938;
  if (!qword_2802A5938)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802A5938);
  }

  return result;
}

unint64_t sub_268958E4C()
{
  result = qword_2802A6370;
  if (!qword_2802A6370)
  {
    sub_268B351A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6370);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_6(void *a1)
{
  a1[2] = sub_268958EA4;
  a1[3] = v1;
  a1[4] = v2;
}

uint64_t OUTLINED_FUNCTION_10_9()
{

  return sub_268B36EA4();
}

void OUTLINED_FUNCTION_12_8()
{

  JUMPOUT(0x26D6266E0);
}

uint64_t OUTLINED_FUNCTION_16_7()
{
}

uint64_t OUTLINED_FUNCTION_19_4(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return type metadata accessor for SkipContentDevicesResolutionResult();
}

uint64_t OUTLINED_FUNCTION_20_6()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_29_3(void *a1)
{
  a1[2] = v2;
  a1[3] = v1;
  a1[4] = v3;
}

unint64_t OUTLINED_FUNCTION_30_3(uint64_t a1, unint64_t a2)
{

  return sub_26892CDB8(a1, a2, (v2 - 88));
}

void sub_2689590FC()
{
  OUTLINED_FUNCTION_26();
  v75 = v1;
  v76 = v0;
  v3 = v2;
  v85 = v4;
  v86 = v5;
  v7 = v6;
  v8 = sub_268B35494();
  v9 = OUTLINED_FUNCTION_22(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v82 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A59A0, &unk_268B3F0C0);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_74();
  v83 = v14;
  v15 = OUTLINED_FUNCTION_9();
  v81 = type metadata accessor for MediaIntent(v15);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v87 = v18 - v17;
  OUTLINED_FUNCTION_9();
  v19 = sub_268B35434();
  OUTLINED_FUNCTION_1();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_0();
  v25 = v24 - v23;
  v26 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_20_0();
  v74 = (v30 - v31);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_18();
  v80 = v33;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v34);
  v36 = &v71 - v35;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v37 = __swift_project_value_buffer(v26, qword_2802CDA10);
  v38 = *(v28 + 16);
  v77 = v37;
  v78 = v38;
  v79 = v28 + 16;
  (v38)(v36);
  v39 = *(v21 + 16);
  v84 = v3;
  v39(v25, v3, v19);
  v40 = v26;
  v41 = v28;
  v42 = sub_268B37A34();
  v43 = sub_268B37ED4();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = OUTLINED_FUNCTION_172_0();
    v73 = v7;
    v45 = v44;
    v46 = swift_slowAlloc();
    v72 = v41;
    v47 = v46;
    v88 = v46;
    *v45 = 136315138;
    sub_26895F804(&unk_2802A6480, MEMORY[0x277D5C118], MEMORY[0x277D5C120]);
    v71 = v40;
    v48 = sub_268B38404();
    v50 = v49;
    (*(v21 + 8))(v25, v19);
    v51 = sub_26892CDB8(v48, v50, &v88);

    *(v45 + 4) = v51;
    _os_log_impl(&dword_2688BB000, v42, v43, "LanguageDisambiguationStrategy#actionForInput called with input: %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v47);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    v52 = v71;
    v53 = *(v72 + 8);
    v53(v36, v71);
  }

  else
  {

    (*(v21 + 8))(v25, v19);
    v53 = *(v41 + 8);
    v53(v36, v40);
    v52 = v40;
  }

  v54 = v85 == 0x65676175676E616CLL && v86 == 0xE800000000000000;
  v55 = v87;
  if (!v54 && (sub_268B38444() & 1) == 0)
  {
    goto LABEL_13;
  }

  v56 = v82;
  sub_268B35414();
  v57 = v83;
  sub_26892E840(v56);
  if (__swift_getEnumTagSinglePayload(v57, 1, v81) == 1)
  {
    sub_2688C058C(v57, &qword_2802A59A0, &unk_268B3F0C0);
LABEL_13:
    sub_268B34ED4();
    goto LABEL_26;
  }

  sub_26893207C(v57, v55);
  switch(*(v55 + 24))
  {
    case 2:

      goto LABEL_19;
    case 3:
      goto LABEL_16;
    default:
      v58 = sub_268B38444();

      if (v58)
      {
LABEL_19:
        v78(v80, v77, v52);
        v61 = sub_268B37A34();
        v62 = sub_268B37ED4();
        if (OUTLINED_FUNCTION_19(v62))
        {
          v63 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_81(v63);
          OUTLINED_FUNCTION_112_1(&dword_2688BB000, v64, v65, "LanguageDisambiguationStrategy#actionForInput intent indicates we should cancel out of disambiguation");
          OUTLINED_FUNCTION_12();
        }

        v53(v80, v52);
        sub_268B34EB4();
      }

      else
      {
LABEL_16:
        sub_2688F0714();
        sub_26895DDF0();
        v60 = v59;

        if (v60)
        {

          sub_268B34EC4();
        }

        else
        {
          v78(v74, v77, v52);
          v66 = sub_268B37A34();
          v67 = sub_268B37ED4();
          if (OUTLINED_FUNCTION_19(v67))
          {
            v68 = OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_81(v68);
            OUTLINED_FUNCTION_112_1(&dword_2688BB000, v69, v70, "LanguageDisambiguationStrategy#actionForInput failed to get language from intent");
            OUTLINED_FUNCTION_12();
          }

          v53(v74, v52);
          sub_268B34ED4();
        }
      }

      sub_26895F7A8(v55);
      break;
  }

LABEL_26:
  OUTLINED_FUNCTION_23();
}

void sub_26895975C()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v12 = v11 - v10;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v13 = __swift_project_value_buffer(v6, qword_2802CDA10);
  (*(v8 + 16))(v12, v13, v6);
  v14 = sub_268B37A34();
  v15 = sub_268B37ED4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = OUTLINED_FUNCTION_14();
    *v16 = 0;
    _os_log_impl(&dword_2688BB000, v14, v15, "LanguageDisambiguationStrategy#makeDisambiguationItemContainer called", v16, 2u);
    OUTLINED_FUNCTION_12();
  }

  OUTLINED_FUNCTION_6_10();

  (*(v8 + 8))(v12, v6);
  v17 = v5 == v15 && v3 == 0xE800000000000000;
  if (v17 || (OUTLINED_FUNCTION_27_5(v5) & 1) != 0)
  {
    sub_2688F0714();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6408, &qword_268B3EFD8);
    v18 = sub_268B353F4();
    v1(v18, 0);
  }

  else
  {
    v19 = sub_2688C2ECC();
    v20 = OUTLINED_FUNCTION_28_5(&type metadata for ControlsError, v19);
    *v21 = 9;
    v1(v20, 1);
  }

  OUTLINED_FUNCTION_23();
}

void sub_2689599A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(NSObject *), uint64_t a22)
{
  OUTLINED_FUNCTION_26();
  v132 = v23;
  v137 = v24;
  v142 = v25;
  v143 = v26;
  v135 = v27;
  v124 = *v22;
  v133 = v22;
  v127 = *(v124 + 80);
  sub_268B35194();
  OUTLINED_FUNCTION_1();
  v128 = v28;
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_74();
  v126 = v30;
  v129 = v31;
  sub_268B351F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802A6298, qword_268B3F620);
  v32 = sub_268B38564();
  OUTLINED_FUNCTION_1();
  v34 = v33;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_20_0();
  v139 = v36 - v37;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v38);
  v125 = (&v123 - v39);
  OUTLINED_FUNCTION_9();
  v40 = sub_268B35494();
  v41 = OUTLINED_FUNCTION_22(v40);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_1_0();
  v44 = v43 - v42;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A59A0, &unk_268B3F0C0);
  OUTLINED_FUNCTION_22(v45);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v46);
  v48 = &v123 - v47;
  v136 = type metadata accessor for MediaIntent(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_1_0();
  v138 = v51 - v50;
  OUTLINED_FUNCTION_9();
  v52 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v54 = v53;
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_20_0();
  v130 = (v56 - v57);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_18();
  v131 = v59;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_18();
  v123 = v61;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_18();
  v134 = v63;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v145 = a22;
  v146 = a21;
  v65 = __swift_project_value_buffer(v52, qword_2802CDA10);
  v66 = *(v54 + 16);
  v140 = v65;
  v141 = v66;
  v147 = v52;
  (v66)(v22);
  v67 = sub_268B37A34();
  v68 = sub_268B37ED4();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = OUTLINED_FUNCTION_14();
    *v69 = 0;
    _os_log_impl(&dword_2688BB000, v67, v68, "LanguageDisambiguationStrategy#parseDisambiguationResult called", v69, 2u);
    OUTLINED_FUNCTION_12();
  }

  OUTLINED_FUNCTION_6_10();

  v70 = *(v54 + 8);
  v71 = v147;
  v144 = v54 + 8;
  v70(v22, v147);
  v72 = v142 == v68 && v143 == 0xE800000000000000;
  if (!v72 && (OUTLINED_FUNCTION_27_5(v142) & 1) == 0)
  {
    v99 = v130;
    v100 = OUTLINED_FUNCTION_19_5();
    v101(v100);
    v76 = sub_268B37A34();
    v102 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_19(v102))
    {
      v103 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v103);
      OUTLINED_FUNCTION_112_1(&dword_2688BB000, v104, v105, "LanguageDisambiguationStrategy#parseDisambiguationResult parameter is not language");
      OUTLINED_FUNCTION_12();
    }

    v70(v99, v71);
    v106 = sub_2688C2ECC();
    v80 = OUTLINED_FUNCTION_28_5(&type metadata for ControlsError, v106);
    v82 = 10;
    goto LABEL_22;
  }

  sub_268B35414();
  sub_26892E840(v44);
  if (__swift_getEnumTagSinglePayload(v48, 1, v136) == 1)
  {
    sub_2688C058C(v48, &qword_2802A59A0, &unk_268B3F0C0);
    v73 = v131;
    v74 = OUTLINED_FUNCTION_19_5();
    v75(v74);
    v76 = sub_268B37A34();
    v77 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_19(v77))
    {
      v78 = OUTLINED_FUNCTION_14();
      *v78 = 0;
      _os_log_impl(&dword_2688BB000, v76, v73, "LanguageDisambiguationStrategy#parseDisambiguationResult failed to create MediaIntent from parse", v78, 2u);
      OUTLINED_FUNCTION_12();
    }

    v70(v73, v71);
    v79 = sub_2688C2ECC();
    v80 = OUTLINED_FUNCTION_28_5(&type metadata for ControlsError, v79);
    v82 = 11;
LABEL_22:
    OUTLINED_FUNCTION_23_7(v80, v81, v82);
    v146(v76);
    (*(v34 + 8))(v76, v32);
    goto LABEL_29;
  }

  v143 = v70;
  sub_26893207C(v48, v138);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6440, &qword_268B3F098);
  sub_268B35244();
  OUTLINED_FUNCTION_153_0();
  sub_26895DDF0();
  v84 = v83;

  if (v84)
  {
    v142 = v34;
    sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
    v85 = sub_268B38054();
    [v84 setDisambiguated_];

    v86 = *(v124 + 96);
    v87 = *(v86 + 16);
    v88 = v84;
    v89 = v127;
    v87(v84, v127, v86);
    v141(v134, v140, v71);
    v90 = v88;
    v91 = sub_268B37A34();
    v92 = sub_268B37F04();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = OUTLINED_FUNCTION_172_0();
      v94 = v32;
      v95 = swift_slowAlloc();
      *v93 = 138412290;
      *(v93 + 4) = v90;
      *v95 = v84;
      v96 = v90;
      _os_log_impl(&dword_2688BB000, v91, v92, "LanguageDisambiguationStrategy#parseDisambiguationResult user selected language: %@", v93, 0xCu);
      sub_2688C058C(v95, &qword_2802A6420, &unk_268B3C680);
      v32 = v94;
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();
    }

    v143(v134, v147);
    v97 = (*(v86 + 8))(v89, v86);
    v98 = v97;
    if (v97)
    {
      v97 = type metadata accessor for LanguageOption();
    }

    else
    {
      v149 = 0;
      v150 = 0;
    }

    v118 = v142;
    v148 = v98;
    v151 = v97;
    v119 = v135;
    v120 = v126;
    sub_268B35184();
    v121 = v125;
    v122 = v129;
    sub_268B351E4();
    (*(v128 + 8))(v120, v122);
    swift_storeEnumTagMultiPayload();
    v146(v121);

    (*(v118 + 8))(v121, v32);
  }

  else
  {
    v107 = v123;
    v108 = OUTLINED_FUNCTION_19_5();
    v109(v108);
    v110 = sub_268B37A34();
    v111 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_19(v111))
    {
      v112 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v112);
      OUTLINED_FUNCTION_112_1(&dword_2688BB000, v113, v114, "LanguageDisambiguationStrategy#parseDisambiguationResult unable to select a language from previous items, returning failure");
      OUTLINED_FUNCTION_12();
    }

    v143(v107, v71);
    v115 = sub_2688C2ECC();
    v116 = OUTLINED_FUNCTION_28_5(&type metadata for ControlsError, v115);
    OUTLINED_FUNCTION_23_7(v116, v117, 12);
    v146(v110);
    (*(v34 + 8))(v110, v32);
  }

  sub_26895F7A8(v138);
LABEL_29:
  OUTLINED_FUNCTION_23();
}

void sub_26895A320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_26();
  v23 = v21;
  v67 = v24;
  v68 = v25;
  v61 = v26;
  v72 = v27;
  v29 = v28;
  v65 = v30;
  v66 = v31;
  v64 = *v21;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6440, &qword_268B3F098);
  OUTLINED_FUNCTION_1();
  v63 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_74();
  v69 = v36;
  OUTLINED_FUNCTION_9();
  v37 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v39 = v38;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_1_0();
  v43 = v42 - v41;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v44 = __swift_project_value_buffer(v37, qword_2802CDA10);
  (*(v39 + 16))(v43, v44, v37);
  v45 = sub_268B37A34();
  v46 = sub_268B37ED4();
  if (os_log_type_enabled(v45, v46))
  {
    v22 = OUTLINED_FUNCTION_14();
    *v22 = 0;
    _os_log_impl(&dword_2688BB000, v45, v46, "LanguageDisambiguationStrategy.makePromptForDisambiguation() called", v22, 2u);
    OUTLINED_FUNCTION_12();
  }

  OUTLINED_FUNCTION_6_10();

  (*(v39 + 8))(v43, v37);
  v47 = v29 == v22 && v72 == 0xE800000000000000;
  if (v47 || (OUTLINED_FUNCTION_27_5(v29) & 1) != 0)
  {
    (*(v63 + 16))(v69, v61, v70);
    v62 = v29;
    v48 = (*(v63 + 80) + 64) & ~*(v63 + 80);
    v49 = (v34 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
    v50 = (v49 + 23) & 0xFFFFFFFFFFFFFFF8;
    v51 = (v50 + 15) & 0xFFFFFFFFFFFFFFF8;
    v52 = (v51 + 15) & 0xFFFFFFFFFFFFFFF8;
    v53 = swift_allocObject();
    *(v53 + 16) = *(v64 + 80);
    *(v53 + 24) = *(v64 + 88);
    *(v53 + 40) = *(v64 + 104);
    *(v53 + 48) = v68;
    *(v53 + 56) = a21;
    (*(v63 + 32))(v53 + v48, v69, v70);
    v54 = (v53 + v49);
    *v54 = v62;
    v54[1] = v72;
    *(v53 + v50) = v66;
    *(v53 + v51) = v67;
    *(v53 + v52) = v23;
    *(v53 + ((v52 + 15) & 0xFFFFFFFFFFFFFFF8)) = v65;
    v55 = v23[15];
    v71 = v23[16];
    __swift_project_boxed_opaque_existential_1(v23 + 12, v55);

    v56 = v66;
    v57 = v67;

    sub_2689CE88C(0xD000000000000025, 0x8000000268B582F0, sub_26895F6D0, v53, v55, v71);
  }

  else
  {
    v58 = sub_2688C2ECC();
    v59 = OUTLINED_FUNCTION_28_5(&type metadata for ControlsError, v58);
    *v60 = 13;
    v73[0] = v59;
    v74 = 1;
    v68(v73);
    sub_2688C058C(v73, &unk_2802A57C0, &qword_268B3BE00);
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_26895A718(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t *a9, uint64_t a10)
{
  v59 = a6;
  v60 = a8;
  v66 = a7;
  v58 = a5;
  v72 = a4;
  v73 = a3;
  v69 = a2;
  v67 = a1;
  v10 = *a9;
  v71 = a9;
  v57 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v55 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  MEMORY[0x28223BE20](v14 - 8);
  v63 = &v55 - v15;
  v70 = sub_268B34E24();
  v62 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v61 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_268B35044();
  v64 = *(v17 - 8);
  v65 = v17;
  MEMORY[0x28223BE20](v17);
  v68 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_268B37A54();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v23);
  v25 = &v55 - v24;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v26 = MEMORY[0x28223BE20](v56);
  v28 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v55 - v29;
  sub_2688F1FA4(v67, v25, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = v69;
    sub_2688C058C(v25, &qword_2802A6300, &unk_268B3BD80);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v32 = __swift_project_value_buffer(v19, qword_2802CDA10);
    v33 = v20;
    (*(v20 + 16))(v22, v32, v19);
    v34 = sub_268B37A34();
    v35 = sub_268B37EE4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_2688BB000, v34, v35, "LanguageDisambiguationStrategy.makePromptForDisambiguation Unable to generate dialog.", v36, 2u);
      MEMORY[0x26D6266E0](v36, -1, -1);
    }

    (*(v33 + 8))(v22, v19);
    sub_2688C2ECC();
    v37 = swift_allocError();
    *v38 = -79;
    v74[0] = v37;
    v75 = 1;
    v31(v74);
    return sub_2688C058C(v74, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    v67 = a10;
    v55 = v30;
    sub_2689186C8(v25, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6440, &qword_268B3F098);
    v40 = sub_268B35244();
    sub_2689E54E0(v40);

    v41 = *(v57 + 80);
    v42 = *(v57 + 104);
    v43 = v13;
    v44 = v66;
    v59 = sub_26894CE44(3, 2, v58, v59, v66, 0, v60, v41, v42);
    v46 = v45;
    v47 = __swift_project_boxed_opaque_existential_1(v71 + 17, v71[20]);
    v49 = v61;
    v48 = v62;
    (*(v62 + 104))(v61, *MEMORY[0x277D5BB60], v70);
    v60 = sub_268B350F4();
    v50 = v63;
    __swift_storeEnumTagSinglePayload(v63, 1, 1, v60);
    v51 = sub_268B34B94();
    __swift_storeEnumTagSinglePayload(v43, 1, 1, v51);
    sub_26894D438(v67, v49, v44, v50, v59, v46, v43, *v47, v41, v42, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66);

    sub_2688C058C(v43, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v50, &unk_2802A57B0, &unk_268B3CE00);
    (*(v48 + 8))(v49, v70);
    v52 = v55;
    sub_2688F1FA4(v55, v28, &unk_2802A56E0, &unk_268B3CDF0);
    v53 = *&v28[*(v56 + 48)];
    v54 = v68;
    sub_26895AE64();

    (*(v64 + 8))(v54, v65);
    sub_2688C058C(v52, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(*(v60 - 1) + 8))(v28);
  }
}

void sub_26895AE64()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v86 = v2;
  v87 = v3;
  v83 = v5;
  v84 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6460, &qword_268B3BE08);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_74();
  v81 = v12;
  OUTLINED_FUNCTION_9();
  sub_268B35044();
  OUTLINED_FUNCTION_1();
  v78 = v14;
  v79 = v13;
  MEMORY[0x28223BE20](v13);
  v75 = v15;
  v77 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_9();
  v89 = sub_268B36A54();
  OUTLINED_FUNCTION_1();
  v85 = v16;
  v18 = MEMORY[0x28223BE20](v17);
  v76 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v19;
  MEMORY[0x28223BE20](v18);
  v88 = &v69 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_1();
  v72 = v22;
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v69 - v28;
  v73 = v30;
  MEMORY[0x28223BE20](v27);
  v32 = &v69 - v31;
  v33 = sub_268B350F4();
  v34 = *(v33 - 8);
  (*(v34 + 16))(v32, v9, v33);
  *&v32[*(v21 + 48)] = v7;
  v35 = *(v1 + 240);
  v82 = v1;
  __swift_project_boxed_opaque_existential_1((v1 + 216), v35);
  v36 = v7;
  if (sub_268B36FA4())
  {
    v37 = v34;
    v70 = v33;
    v38 = v82;
    v71 = v26;
    v80 = v32;
    sub_2688F1FA4(v32, v29, &unk_2802A56E0, &unk_268B3CDF0);
    v39 = *&v29[*(v21 + 48)];
    v40 = [v39 dialog];

    sub_2688EA03C(0, &qword_2802A57D0, 0x277D052B0);
    v41 = sub_268B37CF4();

    if (sub_2688EFD0C())
    {
      sub_2688EFD10();
      v42 = v38;
      if ((v41 & 0xC000000000000001) != 0)
      {
        v43 = MEMORY[0x26D625BD0](0, v41);
      }

      else
      {
        v43 = *(v41 + 32);
      }

      v44 = v43;
      v45 = v70;

      v46 = [v44 fullPrint];

      sub_268B37BF4();
      v48 = v47;
    }

    else
    {

      v48 = 0xE000000000000000;
      v42 = v38;
      v45 = v70;
    }

    (*(v37 + 8))(v29, v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6440, &qword_268B3F098);
    sub_268B35244();
    v50 = v88;
    sub_26895CF5C();

    v51 = __swift_project_boxed_opaque_existential_1((v42 + 136), *(v42 + 160));
    v52 = v89;
    v90[3] = v89;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v90);
    v54 = *(v85 + 16);
    v54(boxed_opaque_existential_1, v50, v52);
    sub_268948494(v90);
    sub_2688C058C(v90, &byte_2802A6450, &byte_268B3BE10);
    sub_268B36754();
    if (sub_268B36734())
    {
      OUTLINED_FUNCTION_31_3();
      v83 = v55;
    }

    else
    {
      v83 = sub_268B36744();
      OUTLINED_FUNCTION_31_3();
    }

    v56 = v77;
    v57 = v78;
    v58 = v79;
    (*(v78 + 16))(v77);
    sub_2688F1FA4(v51, v48, &unk_2802A56E0, &unk_268B3CDF0);
    v59 = v76;
    v54(v76, v88, v89);
    v60 = (*(v57 + 80) + 24) & ~*(v57 + 80);
    v61 = (v75 + *(v72 + 80) + v60) & ~*(v72 + 80);
    v62 = v85;
    v63 = (v73 + *(v85 + 80) + v61) & ~*(v85 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = v83;
    (*(v57 + 32))(v64 + v60, v56, v58);
    sub_2689186C8(v48, v64 + v61);
    v65 = v89;
    (*(v62 + 32))(v64 + v63, v59, v89);
    v66 = sub_268B37DB4();
    __swift_storeEnumTagSinglePayload(v81, 1, 1, v66);
    v67 = swift_allocObject();
    v67[2] = 0;
    v67[3] = 0;
    v67[4] = &unk_268B3F0A8;
    v67[5] = v64;
    v68 = v87;
    v67[6] = v86;
    v67[7] = v68;

    sub_2688DB634();

    (*(v62 + 8))(v88, v65);
    sub_2688C058C(v80, &unk_2802A56E0, &unk_268B3CDF0);
  }

  else
  {
    sub_2688F1FA4(v32, v26, &unk_2802A56E0, &unk_268B3CDF0);
    v49 = *&v26[*(v21 + 48)];
    sub_26895C174();

    sub_2688C058C(v32, &unk_2802A56E0, &unk_268B3CDF0);
    (*(v34 + 8))(v26, v33);
  }

  OUTLINED_FUNCTION_23();
}