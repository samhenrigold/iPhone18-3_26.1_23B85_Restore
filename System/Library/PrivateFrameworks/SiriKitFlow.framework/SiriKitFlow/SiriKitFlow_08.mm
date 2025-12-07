uint64_t sub_1DCBD7C88@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = result;
  while (2)
  {
    if (a2 == 2)
    {
      switch(v4)
      {
        case 1:
          v8 = sub_1DCBD80C4();
          if (*(v3 + 40))
          {
            v11 = sub_1DCB08B14(*v3);
          }

          else
          {
            v11 = *(v3 + 32);
          }

          v12 = __OFADD__(v8, v11);
          result = v8 + v11;
          if (v12)
          {
            goto LABEL_34;
          }

          result = sub_1DCBD8060(result);
          v6 = result;
          break;
        case 2:
          a2 = 0;
          v4 = *(v3 + 32);
          if (*(v3 + 40))
          {
            result = sub_1DCB08B14(*v3);
            v4 = result;
            a2 = 0;
          }

          continue;
        case 3:
          v4 = *(v3 + 32);
          a2 = 1;
          if (*(v3 + 40))
          {
            result = sub_1DCB08B14(*v3);
            v4 = result;
            a2 = 1;
          }

          continue;
        default:
          if (*(v3 + 40))
          {
            v10 = sub_1DCB08B14(*v3);
          }

          else
          {
            v10 = *(v3 + 32);
          }

          result = sub_1DCBD8060(v10);
          v6 = result;
          v8 = 0;
          break;
      }

LABEL_31:
      v9 = 2;
      goto LABEL_32;
    }

    break;
  }

  v7 = *(v3 + 8);
  v6 = *(v3 + 16);
  if (a2)
  {
    result = sub_1DCB08B14(*v3);
    if (v6 >= result)
    {
      v9 = 1;
      v8 = v7;
      goto LABEL_32;
    }

    result = v6 + v4;
    if (!__OFADD__(v6, v4))
    {
      result = sub_1DCBD8060(result);
      v8 = v6;
      v9 = 2;
      v6 = result;
      goto LABEL_32;
    }

    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (!v7)
  {
    v8 = 0;
    v9 = 0;
    goto LABEL_32;
  }

  if (v7 < v4)
  {
    v8 = 0;
    v9 = 2;
    v6 = *(v3 + 8);
LABEL_32:
    *a3 = v8;
    *(a3 + 8) = v6;
    *(a3 + 16) = v9;
    return result;
  }

  if (__OFSUB__(v7, v4))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v8 = (v7 - v4) & ~((v7 - v4) >> 63);
  v6 = v8 + v4;
  if (!__OFADD__(v8, v4))
  {
    result = sub_1DCB08B14(*v3);
    if (result < v6)
    {
      v6 = result;
    }

    goto LABEL_31;
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_1DCBD7E34(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
    sub_1DD0DEC1C();

    strcpy(v11, "[startIndex=");
    BYTE5(v11[1]) = 0;
    HIWORD(v11[1]) = -5120;
    v3 = sub_1DD0DF03C();
    MEMORY[0x1E12A6780](v3);

    MEMORY[0x1E12A6780](0x646E49646E65202CLL, 0xEB000000003D7865);
    v4 = sub_1DD0DF03C();
  }

  else
  {
    sub_1DD0DEC1C();

    strcpy(v11, "[startIndex=");
    BYTE5(v11[1]) = 0;
    HIWORD(v11[1]) = -5120;
    v7 = sub_1DD0DF03C();
    MEMORY[0x1E12A6780](v7);

    MEMORY[0x1E12A6780](0x646E49646E65202CLL, 0xEB000000003D7865);
    v8 = sub_1DD0DF03C();
    MEMORY[0x1E12A6780](v8);

    MEMORY[0x1E12A6780](0xD000000000000014, 0x80000001DD1131F0);
    if (a3)
    {
      v4 = 0x68747275466F6E2ELL;
    }

    else
    {
      v4 = 0xD000000000000010;
    }

    if (a3)
    {
      v9 = 0xEF736D6574497265;
    }

    else
    {
      v9 = 0x80000001DD113210;
    }

    v5 = v9;
  }

  MEMORY[0x1E12A6780](v4, v5);

  MEMORY[0x1E12A6780](93, 0xE100000000000000);
  return v11[0];
}

uint64_t sub_1DCBD8060(uint64_t a1)
{
  if (*v1 >> 62)
  {
    result = sub_1DD0DEB3C();
  }

  else
  {
    result = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    if (result >= a1)
    {
      v4 = a1;
    }

    else
    {
      v4 = result;
    }

    if (v4 != result - 1)
    {
      return v4;
    }
  }

  return result;
}

uint64_t sub_1DCBD80C4()
{
  v1 = *v0;
  v2 = sub_1DCB08B14(*v0);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  result = v3;
  if (v4)
  {
    result = sub_1DCB08B14(v1);
  }

  if (!result)
  {
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v2 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_37;
  }

  if (v2 % result == 1)
  {
    goto LABEL_22;
  }

  if (v2 % result)
  {
    if (v4)
    {
      result = sub_1DCB08B14(v1);
      v3 = result;
    }

    if (!v3)
    {
      goto LABEL_40;
    }

    if (v2 == 0x8000000000000000 && v3 == -1)
    {
      goto LABEL_45;
    }

    result = v2 - v2 % v3;
    if (__OFSUB__(v2, v2 % v3))
    {
      goto LABEL_43;
    }

    return result;
  }

  result = v3;
  if (v4)
  {
    result = sub_1DCB08B14(v1);
  }

  if (!result)
  {
LABEL_38:
    __break(1u);
LABEL_39:
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
    __break(1u);
    return result;
  }

  if (v2 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_44;
  }

  v8 = __OFSUB__(v2 / result, 1);
  v2 = v2 / result - 1;
  if (v8)
  {
    goto LABEL_42;
  }

  if (v4)
  {
    v3 = sub_1DCB08B14(v1);
  }

  result = v2 * v3;
  if ((v2 * v3) >> 64 != (v2 * v3) >> 63)
  {
    __break(1u);
LABEL_22:
    if (v4)
    {
      result = sub_1DCB08B14(v1);
      v3 = result;
    }

    v9 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      v8 = __OFSUB__(v2, v9);
      v10 = v2 - v9;
      if (!v8)
      {
        return v10 & ~(v10 >> 63);
      }

      goto LABEL_41;
    }

    goto LABEL_39;
  }

  return result;
}

uint64_t sub_1DCBD8224@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_156(v3 + *(*v3 + 128), v14);
  sub_1DCB8878C();
  OUTLINED_FUNCTION_124();
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 7:
      *a3 = 0;
      *(a3 + 8) = 512;
      break;
    case 6:
      v10 = *(v4 + 8);
      *a3 = *v4;
      *(a3 + 8) = v10;
      *(a3 + 9) = 1;
      break;
    case 5:
      v9 = *(v4 + 8);
      *a3 = *v4;
      *(a3 + 8) = v9;
      break;
    default:
      *a3 = sub_1DCBDB2A0();
      *(a3 + 8) = 256;
      OUTLINED_FUNCTION_152_0();
      return sub_1DCB0E9D8(v11, v12, v13);
  }

  return result;
}

uint64_t sub_1DCBD8354(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Parse(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v36[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1E68, &qword_1DD0E2550);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v36[-v12];
  swift_beginAccess();
  sub_1DCB8878C();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1DCB0E9D8(v13, &qword_1ECCA1E68, &qword_1DD0E2550);
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v19 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v19, qword_1EDE57E00);
    v20 = sub_1DD0DD8EC();
    v21 = sub_1DD0DE6DC();
    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_13;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "PromptForConfirmationFlow received input but is not in the promptSent state. Ignoring.";
    goto LABEL_12;
  }

  type metadata accessor for Input(0);
  sub_1DCB245D0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1DCBF5844(v7, type metadata accessor for Parse);
  if (EnumCaseMultiPayload != 10)
  {
    if ((sub_1DCE967E0(a1) & 1) == 0)
    {
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v29 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v29, qword_1EDE57E00);
      v16 = sub_1DD0DD8EC();
      v30 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v16, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_1DCAFC000, v16, v30, "PromptForConfirmationFlow received low confidence input. Treating as misunderstood and will reprompt.", v31, 2u);
        MEMORY[0x1E12A8390](v31, -1, -1);
      }

      goto LABEL_31;
    }

    (*(*(v2 + 56) + 16))(&v37, a1);
    if (!v37)
    {
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v32 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v32, qword_1EDE57E00);
      v16 = sub_1DD0DD8EC();
      v33 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v16, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_1DCAFC000, v16, v33, "PromptForConfirmationFlow received cancel action from delegate. Transitioning to cancelled state.", v34, 2u);
        MEMORY[0x1E12A8390](v34, -1, -1);
      }

      goto LABEL_31;
    }

    if (v37 == 1)
    {
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v25 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v25, qword_1EDE57E00);
      v26 = sub_1DD0DD8EC();
      v27 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_1DCAFC000, v26, v27, "PromptForConfirmationFlow received handle action from delegate. Transitioning to responseReceived state.", v28, 2u);
        MEMORY[0x1E12A8390](v28, -1, -1);
      }

      sub_1DCB245D0();
      goto LABEL_32;
    }

    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v35 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v35, qword_1EDE57E00);
    v20 = sub_1DD0DD8EC();
    v21 = sub_1DD0DE6DC();
    if (!os_log_type_enabled(v20, v21))
    {
LABEL_13:

      return 0;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "PromptForConfirmationFlow received ignore action from delegate. Ignoring.";
LABEL_12:
    _os_log_impl(&dword_1DCAFC000, v20, v21, v23, v22, 2u);
    MEMORY[0x1E12A8390](v22, -1, -1);
    goto LABEL_13;
  }

  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v15 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v15, qword_1EDE57E00);
  v16 = sub_1DD0DD8EC();
  v17 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1DCAFC000, v16, v17, "PromptForConfirmationFlow received empty parse. Will handle and reprompt.", v18, 2u);
    MEMORY[0x1E12A8390](v18, -1, -1);
  }

LABEL_31:

LABEL_32:
  swift_storeEnumTagMultiPayload();
  sub_1DCBDB5C4();
  return 1;
}

uint64_t sub_1DCBD89F4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Parse(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D60, &qword_1DD0E1F90);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v42[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v42[-v14];
  swift_beginAccess();
  sub_1DCB8878C();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1DCB0E9D8(v15, &qword_1ECCA1D60, &qword_1DD0E1F90);
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v22 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v22, qword_1EDE57E00);
    v23 = sub_1DD0DD8EC();
    v24 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1DCAFC000, v23, v24, "PromptForConfirmationFlow received input but is not in the promptSent state. Ignoring.", v25, 2u);
      MEMORY[0x1E12A8390](v25, -1, -1);
    }

    return 0;
  }

  v16 = *v15;
  type metadata accessor for Input(0);
  sub_1DCB245D0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1DCBF5844(v7, type metadata accessor for Parse);
  if (EnumCaseMultiPayload == 10)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v18 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v18, qword_1EDE57E00);
    v19 = sub_1DD0DD8EC();
    v20 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1DCAFC000, v19, v20, "PromptForConfirmationFlow received empty parse. Will handle and reprompt.", v21, 2u);
      MEMORY[0x1E12A8390](v21, -1, -1);
    }

    goto LABEL_26;
  }

  if ((sub_1DCE967E0(a1) & 1) == 0)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v31 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v31, qword_1EDE57E00);
    v19 = sub_1DD0DD8EC();
    v32 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v19, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1DCAFC000, v19, v32, "PromptForConfirmationFlow received low confidence input. Treating as misunderstood and will reprompt.", v33, 2u);
      MEMORY[0x1E12A8390](v33, -1, -1);
    }

LABEL_26:

    *v12 = v16;
    swift_storeEnumTagMultiPayload();
    sub_1DD0DCF8C();
  }

  (*(*(v2 + 56) + 16))(&v43, a1);
  if (!v43)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v34 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v34, qword_1EDE57E00);
    v35 = sub_1DD0DD8EC();
    v36 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1DCAFC000, v35, v36, "PromptForConfirmationFlow received cancel action from delegate. Transitioning to cancelled state.", v37, 2u);
      MEMORY[0x1E12A8390](v37, -1, -1);
    }

    goto LABEL_32;
  }

  if (v43 != 1)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v38 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v38, qword_1EDE57E00);
    v39 = sub_1DD0DD8EC();
    v40 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_1DCAFC000, v39, v40, "PromptForConfirmationFlow received ignore action from delegate. Ignoring.", v41, 2u);
      MEMORY[0x1E12A8390](v41, -1, -1);
    }

    return 0;
  }

  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v27 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v27, qword_1EDE57E00);
  v28 = sub_1DD0DD8EC();
  v29 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_1DCAFC000, v28, v29, "PromptForConfirmationFlow received handle action from delegate. Transitioning to responseReceived state.", v30, 2u);
    MEMORY[0x1E12A8390](v30, -1, -1);
  }

  sub_1DCB245D0();
LABEL_32:
  swift_storeEnumTagMultiPayload();
  sub_1DCBDB5C4();

  return 1;
}

uint64_t sub_1DCBD90E4(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  type metadata accessor for Input(0);
  v2[7] = swift_task_alloc();
  v2[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1E68, &qword_1DD0E2550);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCBD91BC, 0, 0);
}

uint64_t sub_1DCBD91BC()
{
  OUTLINED_FUNCTION_125();
  v72 = v0;
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_156(v1 + *(v2 + 128), (v0 + 2));
  sub_1DCB8878C();
  OUTLINED_FUNCTION_194();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      goto LABEL_3;
    case 2u:
      OUTLINED_FUNCTION_9_10();
      sub_1DCBF57EC();
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v31 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v31, qword_1EDE57E00);
      v32 = sub_1DD0DD8EC();
      v33 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v33))
      {
        v34 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v34);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v35, v36, v37, v38, v39, 2u);
        OUTLINED_FUNCTION_62();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v0[15] = v40;
      *v40 = v41;
      OUTLINED_FUNCTION_218(v40);
      OUTLINED_FUNCTION_96_0();

      return sub_1DCBDC2C0(v42, v43);
    case 3u:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v45 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v45, qword_1EDE57E00);
      v46 = sub_1DD0DD8EC();
      v47 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v47))
      {
        v48 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v48);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v49, v50, v51, v52, v53, 2u);
        OUTLINED_FUNCTION_62();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v0[17] = v54;
      *v54 = v55;
      OUTLINED_FUNCTION_41_0(v54);
      OUTLINED_FUNCTION_96_0();

      return sub_1DCBDD69C(v56);
    case 4u:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v4 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v4, qword_1EDE57E00);
      v5 = sub_1DD0DD8EC();
      v6 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v6))
      {
        v7 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v7);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v8, v9, v10, v11, v12, 2u);
        OUTLINED_FUNCTION_62();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v0[19] = v13;
      *v13 = v14;
      OUTLINED_FUNCTION_41_0(v13);
      OUTLINED_FUNCTION_96_0();

      return sub_1DCBDDB74(v15);
    case 5u:
    case 6u:
      sub_1DCB0E9D8(v0[10], &qword_1ECCA1E68, &qword_1DD0E2550);
LABEL_3:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v3 = OUTLINED_FUNCTION_246();
      OUTLINED_FUNCTION_92(v3, qword_1EDE57E00);
      sub_1DD0DCF8C();
    case 7u:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v18 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v18, qword_1EDE57E00);
      v19 = sub_1DD0DD8EC();
      v20 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v20))
      {
        v21 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v21);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v22, v23, v24, v25, v26, 2u);
        OUTLINED_FUNCTION_62();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v0[13] = v27;
      *v27 = v28;
      OUTLINED_FUNCTION_41_0(v27);
      OUTLINED_FUNCTION_96_0();

      result = sub_1DCBDBD10(v29);
      break;
    default:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v58 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v58, qword_1EDE57E00);
      v59 = sub_1DD0DD8EC();
      v60 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v60))
      {
        v61 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v61);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v62, v63, v64, v65, v66, 2u);
        OUTLINED_FUNCTION_62();
      }

      v67 = swift_task_alloc();
      v68 = OUTLINED_FUNCTION_45_3(v67);
      *v68 = v69;
      OUTLINED_FUNCTION_41_0(v68);
      OUTLINED_FUNCTION_96_0();

      result = sub_1DCBDB638(v70);
      break;
  }

  return result;
}

uint64_t sub_1DCBD983C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 96) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBD9934()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 96);
  OUTLINED_FUNCTION_14_12();
  swift_storeEnumTagMultiPayload();
  v2 = v1;
  sub_1DCBDB5C4();

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_154();

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCBD99E4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBD9ADC()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 112);
  OUTLINED_FUNCTION_14_12();
  swift_storeEnumTagMultiPayload();
  v2 = v1;
  sub_1DCBDB5C4();

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_154();

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCBD9B8C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBD9C84()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_4_8();
  sub_1DCBF5844(v1, v2);
  v3 = *(v0 + 128);
  OUTLINED_FUNCTION_14_12();
  swift_storeEnumTagMultiPayload();
  v4 = v3;
  sub_1DCBDB5C4();

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_154();

  OUTLINED_FUNCTION_29();

  return v5();
}

uint64_t sub_1DCBD9D40()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBD9E38()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 144);
  OUTLINED_FUNCTION_14_12();
  swift_storeEnumTagMultiPayload();
  v2 = v1;
  sub_1DCBDB5C4();

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_154();

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCBD9EE8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 160) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBD9FE0()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 160);
  OUTLINED_FUNCTION_14_12();
  swift_storeEnumTagMultiPayload();
  v2 = v1;
  sub_1DCBDB5C4();

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_154();

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCBDA090(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  type metadata accessor for Input(0);
  v2[7] = swift_task_alloc();
  v2[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D60, &qword_1DD0E1F90);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCBDA168, 0, 0);
}

uint64_t sub_1DCBDA168()
{
  OUTLINED_FUNCTION_125();
  v65 = v0;
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_156(v1 + *(v2 + 128), (v0 + 2));
  sub_1DCB8878C();
  OUTLINED_FUNCTION_194();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 5u:
    case 6u:
      sub_1DCB0E9D8(v0[10], &qword_1ECCA1D60, &qword_1DD0E1F90);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v3 = OUTLINED_FUNCTION_246();
      OUTLINED_FUNCTION_92(v3, qword_1EDE57E00);
      sub_1DD0DCF8C();
    case 2u:
      OUTLINED_FUNCTION_9_10();
      sub_1DCBF57EC();
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v4 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v4, qword_1EDE57E00);
      v5 = sub_1DD0DD8EC();
      v6 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v6))
      {
        v7 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v7);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v8, v9, v10, v11, v12, 2u);
        OUTLINED_FUNCTION_62();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v0[18] = v13;
      *v13 = v14;
      OUTLINED_FUNCTION_218(v13);
      OUTLINED_FUNCTION_96_0();

      result = sub_1DCBDCCA8(v15, v16);
      break;
    case 3u:
      v0[12] = *v0[10];
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v43 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v43, qword_1EDE57E00);
      v44 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      OUTLINED_FUNCTION_137();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_167(v46);
        OUTLINED_FUNCTION_120(&dword_1DCAFC000, v47, v48, "PromptForConfirmationFlow sending reprompt for misunderstood input");
        OUTLINED_FUNCTION_92_0();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v0[20] = v49;
      *v49 = v50;
      OUTLINED_FUNCTION_41_0(v49);
      OUTLINED_FUNCTION_96_0();

      result = sub_1DCBDD900(v51, v52);
      break;
    case 4u:
      v0[13] = *v0[10];
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v54 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v54, qword_1EDE57E00);
      v55 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      OUTLINED_FUNCTION_137();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_167(v57);
        OUTLINED_FUNCTION_120(&dword_1DCAFC000, v58, v59, "PromptForConfirmationFlow sending reprompt for empty parse");
        OUTLINED_FUNCTION_92_0();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v0[22] = v60;
      *v60 = v61;
      OUTLINED_FUNCTION_41_0(v60);
      OUTLINED_FUNCTION_96_0();

      result = sub_1DCBDDCD8(v62, v63);
      break;
    case 7u:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v30 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v30, qword_1EDE57E00);
      v31 = sub_1DD0DD8EC();
      v32 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v32))
      {
        v33 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v33);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v34, v35, v36, v37, v38, 2u);
        OUTLINED_FUNCTION_62();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v0[16] = v39;
      *v39 = v40;
      OUTLINED_FUNCTION_41_0(v39);
      OUTLINED_FUNCTION_96_0();

      result = sub_1DCBDBFE8(v41);
      break;
    default:
      v0[11] = *v0[10];
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v19 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v19, qword_1EDE57E00);
      v20 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      OUTLINED_FUNCTION_137();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_167(v22);
        OUTLINED_FUNCTION_120(&dword_1DCAFC000, v23, v24, "PromptForConfirmationFlow sending prompt for confirmation");
        OUTLINED_FUNCTION_92_0();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v0[14] = v25;
      *v25 = v26;
      OUTLINED_FUNCTION_41_0(v25);
      OUTLINED_FUNCTION_96_0();

      result = sub_1DCBDB990(v27, v28);
      break;
  }

  return result;
}

uint64_t sub_1DCBDA81C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBDA914()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_154();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCBDA980()
{
  OUTLINED_FUNCTION_39();

  v1 = *(v0 + 120);
  OUTLINED_FUNCTION_14_12();
  swift_storeEnumTagMultiPayload();
  v2 = v1;
  sub_1DCBDB5C4();

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_154();

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCBDAA38()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBDAB30()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_154();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCBDAB94()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 136);
  OUTLINED_FUNCTION_14_12();
  swift_storeEnumTagMultiPayload();
  v2 = v1;
  sub_1DCBDB5C4();

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_154();

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCBDAC44()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBDAD3C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_4_8();
  sub_1DCBF5844(v0, v1);
  OUTLINED_FUNCTION_154();

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCBDADAC()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_4_8();
  sub_1DCBF5844(v1, v2);
  v3 = *(v0 + 152);
  OUTLINED_FUNCTION_14_12();
  swift_storeEnumTagMultiPayload();
  v4 = v3;
  sub_1DCBDB5C4();

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_154();

  OUTLINED_FUNCTION_29();

  return v5();
}

uint64_t sub_1DCBDAE68()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBDAF60()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_154();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCBDAFCC()
{
  OUTLINED_FUNCTION_39();

  v1 = *(v0 + 168);
  OUTLINED_FUNCTION_14_12();
  swift_storeEnumTagMultiPayload();
  v2 = v1;
  sub_1DCBDB5C4();

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_154();

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCBDB084()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 184) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBDB17C()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_154();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCBDB1E8()
{
  OUTLINED_FUNCTION_39();

  v1 = *(v0 + 184);
  OUTLINED_FUNCTION_14_12();
  swift_storeEnumTagMultiPayload();
  v2 = v1;
  sub_1DCBDB5C4();

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_154();

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCBDB2A0()
{
  OUTLINED_FUNCTION_60();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_172();

  OUTLINED_FUNCTION_148_0("Flow is in an unexpected state: ");
  OUTLINED_FUNCTION_156(v0 + *(v5 + 128), v16);
  OUTLINED_FUNCTION_128();
  sub_1DCB8878C();
  OUTLINED_FUNCTION_86();
  v6 = sub_1DCBDE670();
  MEMORY[0x1E12A6780](v6);

  OUTLINED_FUNCTION_116();
  sub_1DCB0E9D8(v7, v8, v9);
  type metadata accessor for CommandFailure();
  swift_allocObject();
  v10 = OUTLINED_FUNCTION_198();
  OUTLINED_FUNCTION_113_0();
  v13 = sub_1DCBF3798(v11, v12, &protocol conformance descriptor for CommandFailure);
  result = OUTLINED_FUNCTION_240(v13);
  *v15 = v10;
  return result;
}

void sub_1DCBDB3C4()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_60();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_179();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v5 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v5, qword_1EDE57E00);
  OUTLINED_FUNCTION_226();
  swift_retain_n();
  v25 = sub_1DD0DD8EC();
  v6 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v25, v6))
  {
    v7 = swift_slowAlloc();
    v26[3] = OUTLINED_FUNCTION_85();
    OUTLINED_FUNCTION_236(4.8151e-34);
    OUTLINED_FUNCTION_239();
    v9 = v8;

    v10 = OUTLINED_FUNCTION_228();
    sub_1DCB10E9C(v10, v9, v11);

    OUTLINED_FUNCTION_184();
    OUTLINED_FUNCTION_156(v0 + *(v12 + 128), v26);
    OUTLINED_FUNCTION_128();
    sub_1DCB8878C();

    OUTLINED_FUNCTION_86();
    sub_1DCBDE670();
    v14 = v13;

    OUTLINED_FUNCTION_116();
    sub_1DCB0E9D8(v15, v16, v17);
    v18 = OUTLINED_FUNCTION_228();
    v20 = sub_1DCB10E9C(v18, v14, v19);

    *(v7 + 14) = v20;
    OUTLINED_FUNCTION_234(&dword_1DCAFC000, v21, v22, "PromptForConfirmationFlow [%s] transitioned to state %s");
    OUTLINED_FUNCTION_237();
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_37();

    OUTLINED_FUNCTION_49();
  }

  else
  {
    OUTLINED_FUNCTION_226();

    OUTLINED_FUNCTION_49();
  }
}

uint64_t sub_1DCBDB5C4()
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_232(v0);
  OUTLINED_FUNCTION_128();
  sub_1DCBF8F1C();
  swift_endAccess();
  OUTLINED_FUNCTION_86();
  sub_1DCBDB3C4();
  OUTLINED_FUNCTION_116();
  return sub_1DCB0E9D8(v1, v2, v3);
}

uint64_t sub_1DCBDB638(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1E68, &qword_1DD0E2550);
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCBDB6D8, 0, 0);
}

uint64_t sub_1DCBDB6D8()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_49_2((*(v0 + 64) + 16));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_174(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 96) = v2;
  *v2 = v3;
  v2[1] = sub_1DCBDB79C;
  OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_152();

  return sub_1DCB63BBC(v4, v5, v6, v7, v8);
}

uint64_t sub_1DCBDB79C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_118_1();
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBDB89C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_173();
  swift_storeEnumTagMultiPayload();
  sub_1DCBDB5C4();
  static ExecuteResponse.ongoing(requireInput:)(1, v0);

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1DCBDB92C()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCBDB990(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v3[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D60, &qword_1DD0E1F90);
  v3[12] = swift_task_alloc();
  v3[7] = a2;

  return MEMORY[0x1EEE6DFA0](sub_1DCBDBA3C, 0, 0);
}

uint64_t sub_1DCBDBA3C()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_49_2((*(v0 + 80) + 16));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_175(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 112) = v2;
  *v2 = v3;
  v2[1] = sub_1DCBDBB04;
  OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_196();

  return sub_1DCB63BBC(v4, v5, v6, v7, v8);
}

uint64_t sub_1DCBDBB04()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 120) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_118_1();
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DCBDBC04()
{
  OUTLINED_FUNCTION_39();
  **(v0 + 96) = *(v0 + 72);
  swift_storeEnumTagMultiPayload();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCBDBCAC()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCBDBD10(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1E68, &qword_1DD0E2550);
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCBDBDB0, 0, 0);
}

uint64_t sub_1DCBDBDB0()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_49_2((*(v0 + 64) + 16));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_45_3(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_115(v2);
  v4 = OUTLINED_FUNCTION_10_3();

  return sub_1DCB63BBC(v4, v5, v6, v7, v8);
}

uint64_t sub_1DCBDBE5C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBDBF5C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_55_6();
  swift_storeEnumTagMultiPayload();
  sub_1DCBDB5C4();
  static ExecuteResponse.complete()();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1DCBDBFE8(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D60, &qword_1DD0E1F90);
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCBDC088, 0, 0);
}

uint64_t sub_1DCBDC088()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_49_2((*(v0 + 64) + 16));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_45_3(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_115(v2);
  v4 = OUTLINED_FUNCTION_10_3();

  return sub_1DCB63BBC(v4, v5, v6, v7, v8);
}

uint64_t sub_1DCBDC134()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBDC234()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_55_6();
  swift_storeEnumTagMultiPayload();
  sub_1DCBDB5C4();
  static ExecuteResponse.complete()();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1DCBDC2C0(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  v3[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1E68, &qword_1DD0E2550);
  v3[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCBDC364, 0, 0);
}

uint64_t sub_1DCBDC364()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_2(&unk_1DD0E25C8);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 168) = v1;
  *v1 = v2;
  v1[1] = sub_1DCBDC404;
  OUTLINED_FUNCTION_76_3();

  return v3();
}

uint64_t sub_1DCBDC404()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBDC4FC()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 232);
  if (v1 == 2)
  {
    OUTLINED_FUNCTION_215();
LABEL_8:
    swift_storeEnumTagMultiPayload();
    sub_1DCBDB5C4();
    static ExecuteResponse.complete()();

    OUTLINED_FUNCTION_43();

    return v11();
  }

  if ((v1 & 1) == 0)
  {
    v10 = *(v0 + 160);
    *v10 = v1;
    *(v10 + 8) = 0;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_49_2((*(v0 + 144) + 16));
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 184) = v2;
  *v2 = v3;
  v2[1] = sub_1DCBDC7A0;
  OUTLINED_FUNCTION_21_2();

  return sub_1DCB63BBC(v4, v5, v6, v7, v8);
}

uint64_t sub_1DCBDC7A0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 192) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 56));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBDC8A0()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 160);
  *v1 = *(v0 + 232);
  *(v1 + 8) = 0;
  swift_storeEnumTagMultiPayload();
  sub_1DCBDB5C4();
  static ExecuteResponse.complete()();

  OUTLINED_FUNCTION_43();

  return v2();
}

uint64_t sub_1DCBDCA8C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 224) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_118_1();
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBDCB8C()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 200);
  OUTLINED_FUNCTION_83_2();
  OUTLINED_FUNCTION_165(v2, v3);
  v4 = v1;
  sub_1DCBDB5C4();

  static ExecuteResponse.complete()();

  OUTLINED_FUNCTION_43();

  return v5();
}

uint64_t sub_1DCBDCC28()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 200);

  swift_willThrow();

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCBDCCA8(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  v3[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D60, &qword_1DD0E1F90);
  v3[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCBDCD4C, 0, 0);
}

uint64_t sub_1DCBDCD4C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_2(&unk_1DD0E2008);
  v5 = v1;
  v2 = swift_task_alloc();
  *(v0 + 168) = v2;
  *v2 = v0;
  v2[1] = sub_1DCBDCDF0;
  v3 = *(v0 + 136);

  return v5(v3);
}

uint64_t sub_1DCBDCDF0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 176) = v4;
  *(v2 + 184) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCBDCEF0()
{
  OUTLINED_FUNCTION_39();
  v2 = v1[22];
  if (*(v2 + 24) == 4 && *(v2 + 16) == 0)
  {
    OUTLINED_FUNCTION_83_2();
    *(v0 + 8) = 0;
    swift_storeEnumTagMultiPayload();
    sub_1DD0DCF8C();
  }

  OUTLINED_FUNCTION_49_2((v1[18] + 16));
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v1[24] = v4;
  *v4 = v5;
  v4[1] = sub_1DCBDD188;
  OUTLINED_FUNCTION_21_2();

  return sub_1DCB63BBC(v6, v7, v8, v9, v10);
}

uint64_t sub_1DCBDD188()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 200) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 56));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DCBDD288()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_83_2();
  *(v0 + 8) = 0;
  swift_storeEnumTagMultiPayload();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCBDD480()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 232) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_118_1();
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBDD580()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 208);
  OUTLINED_FUNCTION_83_2();
  OUTLINED_FUNCTION_165(v2, v3);
  v4 = v1;
  sub_1DCBDB5C4();

  static ExecuteResponse.complete()();

  OUTLINED_FUNCTION_43();

  return v5();
}

uint64_t sub_1DCBDD61C()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 208);

  swift_willThrow();

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCBDD69C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1E68, &qword_1DD0E2550);
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCBDD73C, 0, 0);
}

uint64_t sub_1DCBDD73C()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_49_2((*(v0 + 64) + 16));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_174(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 96) = v2;
  *v2 = v3;
  v2[1] = sub_1DCBDD800;
  OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_152();

  return sub_1DCB63BBC(v4, v5, v6, v7, v8);
}

uint64_t sub_1DCBDD800()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_118_1();
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBDD900(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v3[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D60, &qword_1DD0E1F90);
  v3[12] = swift_task_alloc();
  v3[7] = a2;

  return MEMORY[0x1EEE6DFA0](sub_1DCBDD9AC, 0, 0);
}

uint64_t sub_1DCBDD9AC()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_49_2((*(v0 + 80) + 16));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_175(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 112) = v2;
  *v2 = v3;
  v2[1] = sub_1DCBDDA74;
  OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_196();

  return sub_1DCB63BBC(v4, v5, v6, v7, v8);
}

uint64_t sub_1DCBDDA74()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 120) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_118_1();
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBDDB74(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1E68, &qword_1DD0E2550);
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCBDDC14, 0, 0);
}

uint64_t sub_1DCBDDC14()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_49_2((*(v0 + 64) + 16));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_174(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 96) = v2;
  *v2 = v3;
  v2[1] = sub_1DCBDD800;
  OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_152();

  return sub_1DCB63BBC(v4, v5, v6, v7, v8);
}

uint64_t sub_1DCBDDCD8(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v3[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D60, &qword_1DD0E1F90);
  v3[12] = swift_task_alloc();
  v3[7] = a2;

  return MEMORY[0x1EEE6DFA0](sub_1DCBDDD84, 0, 0);
}

uint64_t sub_1DCBDDD84()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_49_2((*(v0 + 80) + 16));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_175(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 112) = v2;
  *v2 = v3;
  v2[1] = sub_1DCBDDA74;
  OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_196();

  return sub_1DCB63BBC(v4, v5, v6, v7, v8);
}

uint64_t sub_1DCBDDE4C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCBDDE6C, 0, 0);
}

uint64_t sub_1DCBDDE6C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_107_1();
  OUTLINED_FUNCTION_32_2(&unk_1DD0E25A8);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_10(v1);

  return v4(v3);
}

uint64_t sub_1DCBDDEF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCBDDF1C, 0, 0);
}

uint64_t sub_1DCBDDF1C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_107_1();
  OUTLINED_FUNCTION_32_2(&unk_1DD0E1FE8);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_15_13(v1);

  return v4(v3);
}

uint64_t sub_1DCBDDFA8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCBDDFC8, 0, 0);
}

uint64_t sub_1DCBDDFC8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_107_1();
  OUTLINED_FUNCTION_32_2(&unk_1DD0E2638);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_10(v1);

  return v4(v3);
}

uint64_t sub_1DCBDE054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCBDE078, 0, 0);
}

uint64_t sub_1DCBDE078()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_107_1();
  OUTLINED_FUNCTION_32_2(&unk_1DD0E2078);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_15_13(v1);

  return v4(v3);
}

uint64_t sub_1DCBDE104(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCBDE124, 0, 0);
}

uint64_t sub_1DCBDE124()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_107_1();
  OUTLINED_FUNCTION_32_2(&unk_1DD0E2618);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_10(v1);

  return v4(v3);
}

uint64_t sub_1DCBDE1B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCBDE1D4, 0, 0);
}

uint64_t sub_1DCBDE1D4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_107_1();
  OUTLINED_FUNCTION_32_2(&unk_1DD0E2058);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_15_13(v1);

  return v4(v3);
}

uint64_t sub_1DCBDE260(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCBDE280, 0, 0);
}

uint64_t sub_1DCBDE280()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_107_1();
  OUTLINED_FUNCTION_32_2(&unk_1DD0E25C0);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_10(v1);

  return v4(v3);
}

uint64_t sub_1DCBDE30C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCBDE32C, 0, 0);
}

uint64_t sub_1DCBDE32C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_107_1();
  OUTLINED_FUNCTION_32_2(&unk_1DD0E2000);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_10(v1);

  return v4(v3);
}

uint64_t sub_1DCBDE3B8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCBDE3D8, 0, 0);
}

uint64_t sub_1DCBDE3D8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_107_1();
  OUTLINED_FUNCTION_32_2(&unk_1DD0E25F0);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_10(v1);

  return v4(v3);
}

uint64_t sub_1DCBDE464(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCBDE484, 0, 0);
}

uint64_t sub_1DCBDE484()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_107_1();
  OUTLINED_FUNCTION_32_2(&unk_1DD0E2030);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_10(v1);

  return v4(v3);
}

uint64_t sub_1DCBDE510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCBDE534, 0, 0);
}

uint64_t sub_1DCBDE534()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_107_1();
  OUTLINED_FUNCTION_32_2(&unk_1DD0E25F8);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_15_13(v1);

  return v4(v3);
}

uint64_t sub_1DCBDE5C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCBDE5E4, 0, 0);
}

uint64_t sub_1DCBDE5E4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_107_1();
  OUTLINED_FUNCTION_32_2(&unk_1DD0E2038);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_15_13(v1);

  return v4(v3);
}

unint64_t sub_1DCBDE670()
{
  OUTLINED_FUNCTION_60();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v2, v3);
  OUTLINED_FUNCTION_128();
  sub_1DCB8878C();
  swift_getEnumCaseMultiPayload();
  result = OUTLINED_FUNCTION_227();
  v5 = 0x646574726174732ELL;
  switch(v6)
  {
    case 1:
      v5 = 0x5374706D6F72702ELL;
      goto LABEL_8;
    case 2:
      v5 = 0xD000000000000011;
      goto LABEL_8;
    case 3:
      v5 = 0x65646E7573696D2ELL;
      goto LABEL_8;
    case 4:
      v5 = 0x61507974706D652ELL;
      goto LABEL_8;
    case 5:
      v5 = 0x74656C706D6F632ELL;
      goto LABEL_8;
    case 6:
      v5 = 0x726F7272652ELL;
      goto LABEL_8;
    case 7:
      return result;
    default:
LABEL_8:
      OUTLINED_FUNCTION_116();
      sub_1DCB0E9D8(v7, v8, v9);
      return v5;
  }
}

uint64_t sub_1DCBDE804(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCBDE828, 0, 0);
}

uint64_t sub_1DCBDE828()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_46_1(v1);

  return v4(v3);
}

uint64_t sub_1DCBDE8D8(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCBDE8F8, 0, 0);
}

uint64_t sub_1DCBDE8F8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCBDE9B4;
  OUTLINED_FUNCTION_76_3();

  return v3();
}

uint64_t sub_1DCBDE9B4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 48) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBDEAAC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCBDEACC, 0, 0);
}

uint64_t sub_1DCBDEACC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_10(v1);

  return v4(v3);
}

uint64_t sub_1DCBDEB7C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 40) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBDECB8(uint64_t a1, uint64_t a2)
{
  v3[3] = a1;
  v3[4] = v2;
  v3[2] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCBDECDC, 0, 0);
}

uint64_t sub_1DCBDECDC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCBDED98;
  OUTLINED_FUNCTION_76_3();

  return v3();
}

uint64_t sub_1DCBDED98()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 48) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBDEEB4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCBDEED4, 0, 0);
}

uint64_t sub_1DCBDEED4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_10(v1);

  return v4(v3);
}

uint64_t sub_1DCBDEF84()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 40) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBDF07C(uint64_t a1, uint64_t a2)
{
  v3[3] = a1;
  v3[4] = v2;
  v3[2] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCBDF0A0, 0, 0);
}

uint64_t sub_1DCBDF0A0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCBDF15C;
  OUTLINED_FUNCTION_76_3();

  return v3();
}

uint64_t sub_1DCBDF15C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 48) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBDF254(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCBDF274, 0, 0);
}

uint64_t sub_1DCBDF274()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_10(v1);

  return v4(v3);
}

uint64_t sub_1DCBDF324(uint64_t a1, uint64_t a2)
{
  v3[3] = a1;
  v3[4] = v2;
  v3[2] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCBDF348, 0, 0);
}

uint64_t sub_1DCBDF348()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCBDF15C;
  OUTLINED_FUNCTION_76_3();

  return v3();
}

uint64_t sub_1DCBDF404(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCBDF424, 0, 0);
}

uint64_t sub_1DCBDF424()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_1_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_10(v1);

  return v4(v3);
}

uint64_t sub_1DCBDF4D4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCBDF4F4, 0, 0);
}

uint64_t sub_1DCBDF4F4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_1_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_10(v1);

  return v4(v3);
}

uint64_t sub_1DCBDF5A4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCBDF5C8, 0, 0);
}

uint64_t sub_1DCBDF5C8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_8_11();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_46_1(v1);

  return v4(v3);
}

uint64_t sub_1DCBDF678@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D80, &qword_1DD0E20C0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v9 - v4;
  swift_beginAccess();
  sub_1DCB8878C();
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 7:
      *a1 = 0;
      *(a1 + 8) = 512;
      break;
    case 6:
      v8 = v5[8];
      *a1 = *v5;
      *(a1 + 8) = v8;
      *(a1 + 9) = 1;
      break;
    case 5:
      v7 = *(v5 + 4);
      *a1 = *v5;
      *(a1 + 8) = v7;
      break;
    default:
      *a1 = sub_1DCBE12D0();
      *(a1 + 8) = 256;
      return sub_1DCB0E9D8(v5, &qword_1ECCA1D80, &qword_1DD0E20C0);
  }

  return result;
}

uint64_t sub_1DCBDF7DC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1DC0, &qword_1DD0E21B0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v68 = &v61[-v6];
  v7 = type metadata accessor for Parse(0);
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v67 = &v61[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v61[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D80, &qword_1DD0E20C0);
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v18 = &v61[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v61[-v20];
  swift_beginAccess();
  sub_1DCB8878C();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1DCB0E9D8(v21, &qword_1ECCA1D80, &qword_1DD0E20C0);
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v33 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v33, qword_1EDE57E00);
    v34 = sub_1DD0DD8EC();
    v35 = sub_1DD0DE6DC();
    if (!os_log_type_enabled(v34, v35))
    {
      goto LABEL_13;
    }

    v36 = swift_slowAlloc();
    *v36 = 0;
    v37 = "PromptForDisambiguationFlow received input but is not in the promptSent state. Ignoring.";
    goto LABEL_12;
  }

  v22 = *v21;
  v23 = *(v21 + 2);
  v63 = *(v21 + 1);
  v64 = v23;
  v65 = v21[24];
  v66 = *(v21 + 4);
  LODWORD(v24) = v21[40];
  type metadata accessor for Input(0);
  sub_1DCB245D0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1DCBF5844(v13, type metadata accessor for Parse);
  if (EnumCaseMultiPayload != 10)
  {
    if ((sub_1DCE967E0(a1) & 1) == 0)
    {
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v45 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v45, qword_1EDE57E00);
      v46 = sub_1DD0DD8EC();
      v47 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = v24;
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_1DCAFC000, v46, v47, "PromptForDisambiguationFlow received low confidence input. Treating as misunderstood and will reprompt.", v24, 2u);
        v49 = v24;
        LOBYTE(v24) = v48;
        MEMORY[0x1E12A8390](v49, -1, -1);
      }

      v50 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D88, &qword_1DD0E20C8) + 48)];
      sub_1DCB245D0();
      v52 = v63;
      v51 = v64;
      *v50 = v22;
      *(v50 + 1) = v52;
      *(v50 + 2) = v51;
      v50[24] = v65;
      *(v50 + 4) = v66;
      v50[40] = v24;
      goto LABEL_39;
    }

    (*(*(v2 + 16) + 32))(&v71, a1);
    if (!v71)
    {

      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v53 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v53, qword_1EDE57E00);
      v54 = sub_1DD0DD8EC();
      v55 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&dword_1DCAFC000, v54, v55, "PromptForDisambiguationFlow received cancel action from strategy. Transitioning to cancelled state.", v56, 2u);
        MEMORY[0x1E12A8390](v56, -1, -1);
      }

      goto LABEL_39;
    }

    if (v71 == 1)
    {
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v39 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v39, qword_1EDE57E00);
      v40 = sub_1DD0DD8EC();
      v41 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = v24;
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_1DCAFC000, v40, v41, "PromptForDisambiguationFlow received handle action from strategy. Transitioning to responseReceived state.", v24, 2u);
        v43 = v24;
        LODWORD(v24) = v42;
        MEMORY[0x1E12A8390](v43, -1, -1);
      }

      sub_1DCB8878C();
      if (v70)
      {
        v62 = v24;
        __swift_project_boxed_opaque_existential_1(v69, v70);
        sub_1DCB245D0();
        v44 = v68;
        sub_1DCE74A00();
        LOBYTE(v24) = v62;
        sub_1DD0DC99C();
        sub_1DCB0E9D8(v44, &qword_1ECCA1DC0, &qword_1DD0E21B0);
        __swift_destroy_boxed_opaque_existential_1Tm(v69);
      }

      else
      {
        sub_1DCB0E9D8(v69, &qword_1ECCA1DA8, &unk_1DD0E2130);
      }

      v58 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D88, &qword_1DD0E20C8) + 48)];
      sub_1DCB245D0();
      v60 = v63;
      v59 = v64;
      *v58 = v22;
      *(v58 + 1) = v60;
      *(v58 + 2) = v59;
      v58[24] = v65;
      *(v58 + 4) = v66;
      v58[40] = v24;
      goto LABEL_39;
    }

    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v57 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v57, qword_1EDE57E00);
    v34 = sub_1DD0DD8EC();
    v35 = sub_1DD0DE6DC();
    if (!os_log_type_enabled(v34, v35))
    {
LABEL_13:

      return 0;
    }

    v36 = swift_slowAlloc();
    *v36 = 0;
    v37 = "PromptForDisambiguationFlow received ignore action from strategy. Ignoring.";
LABEL_12:
    _os_log_impl(&dword_1DCAFC000, v34, v35, v37, v36, 2u);
    MEMORY[0x1E12A8390](v36, -1, -1);
    goto LABEL_13;
  }

  v26 = v24;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v27 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v27, qword_1EDE57E00);
  v28 = sub_1DD0DD8EC();
  v29 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_1DCAFC000, v28, v29, "PromptForDisambiguationFlow received empty parse. Will handle and reprompt.", v30, 2u);
    MEMORY[0x1E12A8390](v30, -1, -1);
  }

  v32 = v63;
  v31 = v64;
  *v18 = v22;
  *(v18 + 1) = v32;
  *(v18 + 2) = v31;
  v18[24] = v65;
  *(v18 + 4) = v66;
  v18[40] = v26;
LABEL_39:
  swift_storeEnumTagMultiPayload();
  sub_1DCBE1754(v18);
  return 1;
}

uint64_t sub_1DCBE00B8(uint64_t a1)
{
  v2[29] = a1;
  v2[30] = v1;
  type metadata accessor for Input(0);
  v2[31] = swift_task_alloc();
  v2[32] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D80, &qword_1DD0E20C0);
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCBE0190, 0, 0);
}

uint64_t sub_1DCBE0190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_156(*(v20 + 240) + *(**(v20 + 240) + 128), v20 + 208);
  sub_1DCB8878C();
  OUTLINED_FUNCTION_194();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 5u:
    case 6u:
      sub_1DCB0E9D8(*(v20 + 272), &qword_1ECCA1D80, &qword_1DD0E20C0);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v21 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v21, qword_1EDE57E00);
      sub_1DD0DCF8C();
    case 2u:
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D88, &qword_1DD0E20C8);
      v23 = OUTLINED_FUNCTION_224(v22);
      *(v20 + 137) = v24;
      *(v20 + 112) = v23;
      *(v20 + 128) = v25;
      OUTLINED_FUNCTION_9_10();
      OUTLINED_FUNCTION_194();
      sub_1DCBF57EC();
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v26 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v26, qword_1EDE57E00);
      v27 = sub_1DD0DD8EC();
      v28 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v28))
      {
        v29 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v29);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v30, v31, v32, v33, v34, 2u);
        OUTLINED_FUNCTION_62();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v20 + 312) = v35;
      *v35 = v36;
      v35[1] = sub_1DCBE0C24;
      OUTLINED_FUNCTION_117();

      result = sub_1DCBE2538(v37, v38, v39);
      break;
    case 3u:
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D88, &qword_1DD0E20C8);
      v73 = OUTLINED_FUNCTION_224(v72);
      *(v20 + 41) = v74;
      *(v20 + 16) = v73;
      *(v20 + 32) = v75;
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v76 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v76, qword_1EDE57E00);
      v77 = sub_1DD0DD8EC();
      v78 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v78))
      {
        v79 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v79);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v80, v81, v82, v83, v84, 2u);
        OUTLINED_FUNCTION_62();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v20 + 344) = v85;
      *v85 = v86;
      OUTLINED_FUNCTION_220(v85);
      OUTLINED_FUNCTION_117();

      result = sub_1DCBE3244(v87, v88);
      break;
    case 4u:
      v90 = *(v20 + 272);
      v91 = *(v90 + 25);
      v92 = v90[1];
      *(v20 + 64) = *v90;
      *(v20 + 80) = v92;
      *(v20 + 89) = v91;
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v93 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v93, qword_1EDE57E00);
      v94 = sub_1DD0DD8EC();
      v95 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v95))
      {
        v96 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v96);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v97, v98, v99, v100, v101, 2u);
        OUTLINED_FUNCTION_62();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v20 + 328) = v102;
      *v102 = v103;
      OUTLINED_FUNCTION_220(v102);
      OUTLINED_FUNCTION_117();

      result = sub_1DCBE2EC8(v104, v105);
      break;
    case 7u:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v59 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v59, qword_1EDE57E00);
      v60 = sub_1DD0DD8EC();
      v61 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v61))
      {
        v62 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v62);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v63, v64, v65, v66, v67, 2u);
        OUTLINED_FUNCTION_62();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v20 + 296) = v68;
      *v68 = v69;
      OUTLINED_FUNCTION_220(v68);
      OUTLINED_FUNCTION_117();

      result = sub_1DCBE227C(v70);
      break;
    default:
      v42 = *(v20 + 272);
      v43 = *(v42 + 25);
      v44 = v42[1];
      *(v20 + 160) = *v42;
      *(v20 + 176) = v44;
      *(v20 + 185) = v43;
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v45 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v45, qword_1EDE57E00);
      v46 = sub_1DD0DD8EC();
      v47 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v47))
      {
        v48 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v48);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v49, v50, v51, v52, v53, 2u);
        OUTLINED_FUNCTION_62();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v20 + 280) = v54;
      *v54 = v55;
      OUTLINED_FUNCTION_220(v54);
      OUTLINED_FUNCTION_117();

      result = sub_1DCBE17F4(v56, v57);
      break;
  }

  return result;
}

uint64_t sub_1DCBE08BC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 288) = v0;

  if (!v0)
  {
    sub_1DCB0E9D8(v3 + 160, &qword_1ECCA1D90, &unk_1DD0E4C70);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBE09CC()
{
  OUTLINED_FUNCTION_39();
  sub_1DCB0E9D8(v0 + 160, &qword_1ECCA1D90, &unk_1DD0E4C70);
  v1 = *(v0 + 288);
  v2 = *(v0 + 264);
  OUTLINED_FUNCTION_37_7();
  swift_storeEnumTagMultiPayload();
  v3 = v1;
  sub_1DCBE1754(v2);

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_177();

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCBE0A88()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 304) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBE0B80()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 304);
  v2 = *(v0 + 264);
  OUTLINED_FUNCTION_37_7();
  swift_storeEnumTagMultiPayload();
  v3 = v1;
  sub_1DCBE1754(v2);

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_177();

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCBE0C24()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 320) = v0;

  sub_1DCB0E9D8(v3 + 112, &qword_1ECCA1D90, &unk_1DD0E4C70);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBE0D34()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_4_8();
  sub_1DCBF5844(v0, v1);
  OUTLINED_FUNCTION_177();

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCBE0DA4()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_4_8();
  sub_1DCBF5844(v1, v2);
  v3 = *(v0 + 320);
  v4 = *(v0 + 264);
  OUTLINED_FUNCTION_37_7();
  swift_storeEnumTagMultiPayload();
  v5 = v3;
  sub_1DCBE1754(v4);

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_177();

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCBE0E54()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 336) = v0;

  if (!v0)
  {
    sub_1DCB0E9D8(v3 + 64, &qword_1ECCA1D90, &unk_1DD0E4C70);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBE0F64()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_177();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCBE0FC8()
{
  OUTLINED_FUNCTION_39();
  sub_1DCB0E9D8(v0 + 64, &qword_1ECCA1D90, &unk_1DD0E4C70);
  v1 = *(v0 + 336);
  v2 = *(v0 + 264);
  OUTLINED_FUNCTION_37_7();
  swift_storeEnumTagMultiPayload();
  v3 = v1;
  sub_1DCBE1754(v2);

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_177();

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCBE1084()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 352) = v0;

  if (!v0)
  {
    sub_1DCB0E9D8(v3 + 16, &qword_1ECCA1D90, &unk_1DD0E4C70);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBE1194()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_4_8();
  sub_1DCBF5844(v0, v1);
  OUTLINED_FUNCTION_177();

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCBE1204()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[34];
  sub_1DCB0E9D8((v0 + 2), &qword_1ECCA1D90, &unk_1DD0E4C70);
  OUTLINED_FUNCTION_4_8();
  sub_1DCBF5844(v1, v2);
  v3 = v0[44];
  v4 = v0[33];
  OUTLINED_FUNCTION_37_7();
  swift_storeEnumTagMultiPayload();
  v5 = v3;
  sub_1DCBE1754(v4);

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_177();

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCBE12D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D80, &qword_1DD0E20C0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = v10 - v2;
  v10[1] = 0;
  v10[2] = 0xE000000000000000;
  sub_1DD0DEC1C();

  v11 = 0xD000000000000019;
  v12 = 0x80000001DD1131D0;
  swift_beginAccess();
  sub_1DCB8878C();
  v4 = sub_1DCBE4210();
  MEMORY[0x1E12A6780](v4);

  sub_1DCB0E9D8(v3, &qword_1ECCA1D80, &qword_1DD0E20C0);
  v5 = v11;
  v6 = v12;
  type metadata accessor for CommandFailure();
  swift_allocObject();
  v7 = CommandFailure.init(errorCode:reason:)(-1, v5, v6);
  sub_1DCBF3798(qword_1EDE49B80, type metadata accessor for CommandFailure, &protocol conformance descriptor for CommandFailure);
  result = swift_allocError();
  *v9 = v7;
  return result;
}

void sub_1DCBE1480()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D80, &qword_1DD0E20C0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v23 - v4;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v6 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v6, qword_1EDE57E00);
  swift_retain_n();
  v24 = sub_1DD0DD8EC();
  v7 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v24, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v8 = 136315394;
    v10 = v0[13];
    v11 = v1[14];
    v12 = v1[15];
    v13 = v1[16];

    v14 = MEMORY[0x1E12A66E0](v10, v11, v12, v13);
    v16 = v15;

    v17 = sub_1DCB10E9C(v14, v16, &v25);

    *(v8 + 4) = v17;
    *(v8 + 12) = 2080;
    swift_beginAccess();
    sub_1DCB8878C();

    v18 = sub_1DCBE4210();
    v20 = v19;

    sub_1DCB0E9D8(v5, &qword_1ECCA1D80, &qword_1DD0E20C0);
    v21 = sub_1DCB10E9C(v18, v20, &v25);

    *(v8 + 14) = v21;
    _os_log_impl(&dword_1DCAFC000, v24, v7, "PromptForDisambiguationFlow [%s] transitioned to state %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A8390](v9, -1, -1);
    MEMORY[0x1E12A8390](v8, -1, -1);
  }

  else
  {

    v22 = v24;
  }
}

uint64_t sub_1DCBE1754(uint64_t a1)
{
  swift_beginAccess();
  sub_1DCBF8F1C();
  swift_endAccess();
  sub_1DCBE1480();
  return sub_1DCB0E9D8(a1, &qword_1ECCA1D80, &qword_1DD0E20C0);
}

uint64_t sub_1DCBE17F4(uint64_t a1, uint64_t a2)
{
  v3[29] = a2;
  v3[30] = v2;
  v3[28] = a1;
  v3[31] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D80, &qword_1DD0E20C0);
  v3[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D98, &unk_1DD0E2110);
  v3[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1DA0, &qword_1DD0ED3F0);
  v3[34] = swift_task_alloc();
  v3[35] = type metadata accessor for Input(0);
  v3[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCBE1938, 0, 0);
}

uint64_t sub_1DCBE1938()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_2(&unk_1DD0E2120);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 296) = v1;
  *v1 = v2;
  v1[1] = sub_1DCBE19D8;
  OUTLINED_FUNCTION_76_3();

  return v3();
}

uint64_t sub_1DCBE19D8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 304) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBE1AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  v14 = v12[34];
  v13 = v12[35];
  sub_1DCBE34BC((v12 + 8), v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v13) == 1)
  {
    v15 = v12[30];
    sub_1DCB0E9D8(v12[34], &qword_1ECCA1DA0, &qword_1DD0ED3F0);
    __swift_project_boxed_opaque_existential_1((v15 + 24), *(v15 + 48));
    OUTLINED_FUNCTION_114_1();
    v16 = swift_task_alloc();
    v12[39] = v16;
    *(v16 + 16) = v12 + 8;
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    v12[40] = v17;
    *v17 = v18;
    v17[1] = sub_1DCBE1D64;
    OUTLINED_FUNCTION_50_2();
    OUTLINED_FUNCTION_152();

    return sub_1DCB63BBC(v19, v20, v21, v22, v23);
  }

  else
  {
    OUTLINED_FUNCTION_9_10();
    sub_1DCBF57EC();
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v26 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v26, qword_1EDE57E00);
    v27 = sub_1DD0DD8EC();
    v28 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_23(v28))
    {
      v29 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v29);
      OUTLINED_FUNCTION_36_0();
      _os_log_impl(v30, v31, v32, v33, v34, 2u);
      OUTLINED_FUNCTION_62();
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    v12[42] = v35;
    *v35 = v36;
    v35[1] = sub_1DCBE1E6C;
    OUTLINED_FUNCTION_152();

    return sub_1DCBE2538(v37, v38, v39);
  }
}

uint64_t sub_1DCBE1CE4()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_185();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCBE1D64()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 328) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_122_1((v3 + 104));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBE1E6C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 344) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBE1F64()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_4_8();
  sub_1DCBF5844(v1, v2);
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_122_1((v0 + 64));

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1DCBE1FF4()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_4_8();
  sub_1DCBF5844(v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  OUTLINED_FUNCTION_185();

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCBE2088()
{
  OUTLINED_FUNCTION_39();
  sub_1DCB8878C();
  if (v0[21])
  {
    v1 = v0[33];
    __swift_project_boxed_opaque_existential_1(v0 + 18, v0[21]);
    sub_1DCB17CA0((v0 + 8), (v0 + 23));
    sub_1DCE788F8();
    OUTLINED_FUNCTION_86();
    sub_1DD0DC98C();
    sub_1DCB0E9D8(v1, &qword_1ECCA1D98, &unk_1DD0E2110);
    v2 = __swift_destroy_boxed_opaque_existential_1Tm(v0 + 18);
  }

  else
  {
    v2 = sub_1DCB0E9D8((v0 + 18), &qword_1ECCA1DA8, &unk_1DD0E2130);
  }

  v3 = v0[32];
  v4 = v0[28];
  OUTLINED_FUNCTION_181(v2, v0[31]);
  sub_1DCB8878C();
  sub_1DCBE1754(v3);
  static ExecuteResponse.ongoing(requireInput:)(1, v4);
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_122_1(v0 + 8);

  OUTLINED_FUNCTION_43();

  return v5();
}

uint64_t sub_1DCBE21EC()
{
  OUTLINED_FUNCTION_39();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  OUTLINED_FUNCTION_185();

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCBE227C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D80, &qword_1DD0E20C0);
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCBE231C, 0, 0);
}

uint64_t sub_1DCBE231C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_24_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_45_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_115(v1);
  v3 = OUTLINED_FUNCTION_10_3();

  return sub_1DCB63BBC(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCBE23BC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBE24BC()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_55_6();
  swift_storeEnumTagMultiPayload();
  sub_1DCBE1754(v0);
  static ExecuteResponse.complete()();

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1DCBE2538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[22] = a3;
  v4[23] = v3;
  v4[20] = a1;
  v4[21] = a2;
  v4[24] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D80, &qword_1DD0E20C0);
  v4[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCBE25DC, 0, 0);
}

uint64_t sub_1DCBE25DC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_2(&unk_1DD0E2160);
  v7 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[26] = v2;
  *v2 = v3;
  v2[1] = sub_1DCBE2680;
  v4 = v0[21];
  v5 = v0[22];

  return v7(v0 + 16, v4, v5);
}

uint64_t sub_1DCBE2680()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 216) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBE2778()
{
  v21 = v0;
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  if ((*(v0 + 137) & 1) == 0)
  {
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v4 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v4, qword_1EDE57E00);
  v5 = sub_1DD0DD8EC();
  v6 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v6))
  {
    OUTLINED_FUNCTION_151();
    v7 = OUTLINED_FUNCTION_109();
    *v20 = v7;
    *v1 = 136315138;
    v8 = sub_1DCE23DF0(v2, v3);
    v10 = sub_1DCB10E9C(v8, v9, v20);

    *(v1 + 4) = v10;
    _os_log_impl(&dword_1DCAFC000, v5, v6, "PromptForDisambiguationFlow received a request to paginate from the user: %s", v1, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_37();
  }

  v11 = *(v0 + 200);
  v12 = *(v0 + 176);
  v13 = *(v0 + 160);
  v14 = v12[1];
  *v20 = *v12;
  *&v20[16] = v14;
  *&v20[25] = *(v12 + 25);
  sub_1DCB8878C();
  sub_1DCBD7AE4(v2, v3);
  v15 = v20[24];
  v16 = *&v20[32];
  v17 = v20[40];
  *v11 = *v20;
  *(v11 + 8) = *&v20[8];
  *(v11 + 24) = v15;
  *(v11 + 32) = v16;
  *(v11 + 40) = v17;
  swift_storeEnumTagMultiPayload();
  sub_1DCBE1754(v11);
  sub_1DCBF38F4(*(v0 + 128), *(v0 + 136), *(v0 + 137));
  static ExecuteResponse.ongoing(requireInput:)(0, v13);

  OUTLINED_FUNCTION_43();

  return v18();
}

uint64_t sub_1DCBE2AD8()
{
  OUTLINED_FUNCTION_41();
  v23 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v1 = v0[27];
  v2 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_151();
    OUTLINED_FUNCTION_114_1();
    v22 = swift_slowAlloc();
    *v1 = 136315138;
    swift_getErrorValue();
    v6 = sub_1DD0DF18C();
    v8 = sub_1DCB10E9C(v6, v7, &v22);

    *(v1 + 1) = v8;
    OUTLINED_FUNCTION_88(&dword_1DCAFC000, v9, v10, "PromptForDisambiguationFlow encountered an error while trying to parse user input: %s");
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_92_0();
  }

  v11 = v0[27];
  v12 = v0[23];
  OUTLINED_FUNCTION_49_2((v12 + 24));
  v13 = swift_task_alloc();
  v0[28] = v13;
  *(v13 + 16) = v12;
  *(v13 + 24) = v11;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[29] = v14;
  *v14 = v15;
  v14[1] = sub_1DCBE2CA4;
  OUTLINED_FUNCTION_12_10();

  return sub_1DCB63BBC(v16, v17, v18, v19, v20);
}

uint64_t sub_1DCBE2CA4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 240) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_122_1((v3 + 64));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBE2DAC()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 216);
  v2 = *(v0 + 200);
  OUTLINED_FUNCTION_84_2();
  swift_storeEnumTagMultiPayload();
  v3 = v1;
  sub_1DCBE1754(v2);

  static ExecuteResponse.complete()();

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1DCBE2E48()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 216);

  swift_willThrow();

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCBE2EC8(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v3[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D80, &qword_1DD0E20C0);
  v3[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCBE2F6C, 0, 0);
}

uint64_t sub_1DCBE2F6C()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  v2 = v0[14];
  v1 = v0[15];
  OUTLINED_FUNCTION_49_2((v1 + 24));
  v3 = swift_task_alloc();
  v0[18] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[19] = v4;
  *v4 = v5;
  v4[1] = sub_1DCBE3038;
  OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_196();

  return sub_1DCB63BBC(v6, v7, v8, v9, v10);
}

uint64_t sub_1DCBE3038()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 160) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_122_1((v3 + 64));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBE3140()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[17];
  v2 = v0[13];
  OUTLINED_FUNCTION_181(v3, v0[16]);
  sub_1DCB8878C();
  sub_1DCBE1754(v1);
  static ExecuteResponse.ongoing(requireInput:)(1, v2);

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1DCBE31E0()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCBE3244(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v3[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D80, &qword_1DD0E20C0);
  v3[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCBE32E8, 0, 0);
}

uint64_t sub_1DCBE32E8()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  v2 = v0[14];
  v1 = v0[15];
  OUTLINED_FUNCTION_49_2((v1 + 24));
  v3 = swift_task_alloc();
  v0[18] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[19] = v4;
  *v4 = v5;
  v4[1] = sub_1DCBE33B4;
  OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_196();

  return sub_1DCB63BBC(v6, v7, v8, v9, v10);
}

uint64_t sub_1DCBE33B4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 160) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_122_1((v3 + 64));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBE34BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a1;
  v4 = type metadata accessor for Input(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v72 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1DB0, &unk_1DD0FDD90);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v70 - v9;
  v11 = type metadata accessor for Parse(0);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v71 = &v70 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1DB8, &qword_1DD0E2140);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v70 - v20;
  v22 = sub_1DD0DC8EC();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v73 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D98, &unk_1DD0E2110);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v29 = &v70 - v28;
  v30 = sub_1DD0DC8BC();
  v77 = *(v30 - 8);
  v78 = v30;
  MEMORY[0x1EEE9AC00](v30, v31);
  v76 = &v70 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v2;
  sub_1DCB8878C();
  if (!v80)
  {
    sub_1DCB0E9D8(&v79, &qword_1ECCA1DA8, &unk_1DD0E2130);
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }

  v74 = a2;
  v33 = v4;
  sub_1DCAFF9E8(&v79, v82);
  v80 = &type metadata for FeatureFlagDefinitions.Core;
  v81 = sub_1DCBF3744();
  LOBYTE(v79) = 1;
  v34 = sub_1DD0DB2AC();
  __swift_destroy_boxed_opaque_existential_1Tm(&v79);
  if ((v34 & 1) == 0)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v43 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v43, qword_1EDE57E00);
    v44 = sub_1DD0DD8EC();
    v45 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1DCAFC000, v44, v45, "PromptForDisambiguationFlow PervasiveEntityResolution is not enabled", v46, 2u);
      MEMORY[0x1E12A8390](v46, -1, -1);
    }

    v47 = v74;
    goto LABEL_22;
  }

  sub_1DCB17CA0(v75, &v79);
  sub_1DCE788F8();
  v35 = v78;
  if (__swift_getEnumTagSinglePayload(v29, 1, v78) != 1)
  {
    v75 = v23;
    (*(v77 + 32))(v76, v29, v35);
    __swift_project_boxed_opaque_existential_1(v82, v82[3]);
    sub_1DD0DC9AC();
    if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
    {
      sub_1DCB0E9D8(v21, &qword_1ECCA1DB8, &qword_1DD0E2140);
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v48 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v48, qword_1EDE57E00);
      v49 = sub_1DD0DD8EC();
      v50 = sub_1DD0DE6DC();
      v51 = os_log_type_enabled(v49, v50);
      v40 = v74;
      if (v51)
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_1DCAFC000, v49, v50, "PromptForDisambiguationFlow PervasiveEntityResolution: nothing learned", v52, 2u);
        MEMORY[0x1E12A8390](v52, -1, -1);
      }

      (*(v77 + 8))(v76, v78);
      goto LABEL_21;
    }

    v55 = v75;
    v56 = v73;
    (*(v75 + 32))(v73, v21, v22);
    sub_1DCBF3798(&qword_1EDE46638, type metadata accessor for Parse, &protocol conformance descriptor for Parse);
    sub_1DD0DC8DC();
    v57 = v33;
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
    {
      sub_1DCB0E9D8(v10, &qword_1ECCA1DB0, &unk_1DD0FDD90);
      v58 = v74;
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v59 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v59, qword_1EDE57E00);
      v60 = sub_1DD0DD8EC();
      v61 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&dword_1DCAFC000, v60, v61, "PromptForDisambiguationFlow could not decode parse, starting fresh", v62, 2u);
        MEMORY[0x1E12A8390](v62, -1, -1);
      }
    }

    else
    {
      v63 = v71;
      sub_1DCBF57EC();
      sub_1DCB245D0();
      v64 = v72;
      v65 = &v72[v57[7]];
      *(v65 + 4) = 0;
      *v65 = 0u;
      *(v65 + 1) = 0u;
      sub_1DCB245D0();
      *(v64 + v57[6]) = MEMORY[0x1E69E7CC0];
      sub_1DD0DB03C();
      sub_1DCBF5844(v15, type metadata accessor for Parse);
      *(v64 + v57[8]) = 0;
      (*(*(v70 + 16) + 32))(&v79, v64);
      v58 = v74;
      if (v79 == 1)
      {
        sub_1DCBF5844(v63, type metadata accessor for Parse);
        (*(v55 + 8))(v56, v22);
        (*(v77 + 8))(v76, v78);
        sub_1DCBF57EC();
        v47 = v58;
        v53 = 0;
LABEL_38:
        v54 = v57;
        goto LABEL_23;
      }

      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v66 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v66, qword_1EDE57E00);
      v67 = sub_1DD0DD8EC();
      v68 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&dword_1DCAFC000, v67, v68, "PromptForDisambiguationFlow learned selection rejected, starting fresh", v69, 2u);
        MEMORY[0x1E12A8390](v69, -1, -1);
      }

      sub_1DCBF5844(v64, type metadata accessor for Input);
      sub_1DCBF5844(v63, type metadata accessor for Parse);
    }

    (*(v55 + 8))(v56, v22);
    (*(v77 + 8))(v76, v78);
    v47 = v58;
    v53 = 1;
    goto LABEL_38;
  }

  sub_1DCB0E9D8(v29, &qword_1ECCA1D98, &unk_1DD0E2110);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v36 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v36, qword_1EDE57E00);
  v37 = sub_1DD0DD8EC();
  v38 = sub_1DD0DE6DC();
  v39 = os_log_type_enabled(v37, v38);
  v40 = v74;
  if (v39)
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_1DCAFC000, v37, v38, "PromptForDisambiguationFlow Could not extract choices for PervasiveEntityResolution", v41, 2u);
    MEMORY[0x1E12A8390](v41, -1, -1);
  }

LABEL_21:
  v47 = v40;
LABEL_22:
  v53 = 1;
  v54 = v33;
LABEL_23:
  __swift_storeEnumTagSinglePayload(v47, v53, 1, v54);
  return __swift_destroy_boxed_opaque_existential_1Tm(v82);
}

uint64_t sub_1DCBE3F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCBE3F78, 0, 0);
}

uint64_t sub_1DCBE3F78()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_32_2(&unk_1DD0E2190);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_15_13(v1);

  return v4(v3);
}

uint64_t sub_1DCBE4004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCBE4028, 0, 0);
}

uint64_t sub_1DCBE4028()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_32_2(&unk_1DD0E21A8);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_15_13(v1);

  return v4(v3);
}

uint64_t sub_1DCBE40B4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCBE40D4, 0, 0);
}

uint64_t sub_1DCBE40D4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_32_2(&unk_1DD0E2158);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_10(v1);

  return v4(v3);
}

uint64_t sub_1DCBE4160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCBE4184, 0, 0);
}

uint64_t sub_1DCBE4184()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_32_2(&unk_1DD0E2178);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_15_13(v1);

  return v4(v3);
}

unint64_t sub_1DCBE4210()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D80, &qword_1DD0E20C0);
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v6 - v2;
  sub_1DCB8878C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x6C6C65636E61632ELL;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_1DCB0E9D8(v3, &qword_1ECCA1D80, &qword_1DD0E20C0);
      result = 0x5374706D6F72702ELL;
      break;
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D88, &qword_1DD0E20C8);

      sub_1DCBF5844(v3, type metadata accessor for Input);
      result = 0xD000000000000011;
      break;
    case 3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D88, &qword_1DD0E20C8);

      sub_1DCBF5844(v3, type metadata accessor for Input);
      result = 0x65646E7573696D2ELL;
      break;
    case 4:
      sub_1DCB0E9D8(v3, &qword_1ECCA1D80, &qword_1DD0E20C0);
      result = 0x61507974706D652ELL;
      break;
    case 5:
      sub_1DCB0E9D8(v3, &qword_1ECCA1D80, &qword_1DD0E20C0);
      result = 0x74656C706D6F632ELL;
      break;
    case 6:
      sub_1DCB0E9D8(v3, &qword_1ECCA1D80, &qword_1DD0E20C0);
      result = 0x726F7272652ELL;
      break;
    case 7:
      return result;
    default:
      sub_1DCB0E9D8(v3, &qword_1ECCA1D80, &qword_1DD0E20C0);
      result = 0x646574726174732ELL;
      break;
  }

  return result;
}

uint64_t sub_1DCBE44B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCBE44D8, 0, 0);
}

uint64_t sub_1DCBE44D8()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 80);
  v2 = *(*(v0 + 88) + 48);
  v3 = *(v1 + 25);
  v4 = v1[1];
  *(v0 + 16) = *v1;
  *(v0 + 32) = v4;
  *(v0 + 41) = v3;
  v10 = (v2 + *v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 96) = v5;
  *v5 = v6;
  v5[1] = sub_1DCBE45D8;
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);

  return v10(v7, v8, v0 + 16);
}

uint64_t sub_1DCBE45D8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 104) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCBE4710(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCBE4734, 0, 0);
}

uint64_t sub_1DCBE4734()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 72);
  v2 = *(v1 + 25);
  v3 = v1[1];
  *(v0 + 16) = *v1;
  *(v0 + 32) = v3;
  *(v0 + 41) = v2;
  OUTLINED_FUNCTION_2_5();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_45_3(v4);
  *v5 = v6;
  v5[1] = sub_1DCBE4800;
  OUTLINED_FUNCTION_76_3();

  return v7();
}

uint64_t sub_1DCBE4800()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 96) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCBE4938(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCBE495C, 0, 0);
}

uint64_t sub_1DCBE495C()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 72);
  v2 = *(v1 + 25);
  v3 = v1[1];
  *(v0 + 16) = *v1;
  *(v0 + 32) = v3;
  *(v0 + 41) = v2;
  OUTLINED_FUNCTION_2_5();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_45_3(v4);
  *v5 = v6;
  v5[1] = sub_1DCBE4A28;
  OUTLINED_FUNCTION_76_3();

  return v7();
}

uint64_t sub_1DCBE4A28()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 96) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCBE4B3C(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCBE4B60, 0, 0);
}

uint64_t sub_1DCBE4B60()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 72);
  v2 = *(v1 + 25);
  v3 = v1[1];
  *(v0 + 16) = *v1;
  *(v0 + 32) = v3;
  *(v0 + 41) = v2;
  OUTLINED_FUNCTION_2_5();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_45_3(v4);
  *v5 = v6;
  v5[1] = sub_1DCBE4A28;
  OUTLINED_FUNCTION_76_3();

  return v7();
}

uint64_t sub_1DCBE4C2C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1E88, &qword_1DD0E2680);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v9 - v4;
  swift_beginAccess();
  sub_1DCB8878C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v8 = v5[8];
    *a1 = *v5;
    *(a1 + 8) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1E80, &qword_1DD0E9350);
    return swift_storeEnumTagMultiPayload();
  }

  else if (EnumCaseMultiPayload == 2)
  {
    return sub_1DCBF55E4(v5, a1);
  }

  else
  {
    *a1 = sub_1DCBE76C4();
    *(a1 + 8) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1E80, &qword_1DD0E9350);
    swift_storeEnumTagMultiPayload();
    return sub_1DCB0E9D8(v5, &qword_1ECCA1E88, &qword_1DD0E2680);
  }
}

uint64_t sub_1DCBE4DB0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1DF0, &qword_1DD0E2270);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v9 - v4;
  swift_beginAccess();
  sub_1DCB8878C();
  result = swift_getEnumCaseMultiPayload();
  if (result == 3)
  {
    v8 = v5[8];
    *a1 = *v5;
    *(a1 + 8) = v8;
    *(a1 + 9) = 1;
  }

  else if (result == 2)
  {
    v7 = *(v5 + 4);
    *a1 = *v5;
    *(a1 + 8) = v7;
  }

  else
  {
    *a1 = sub_1DCBE76C4();
    *(a1 + 8) = 256;
    return sub_1DCB0E9D8(v5, &qword_1ECCA1DF0, &qword_1DD0E2270);
  }

  return result;
}

void sub_1DCBE4EFC()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v3 = v0;
  v5 = v4;
  LOBYTE(v0) = type metadata accessor for Parse(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v49[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = OUTLINED_FUNCTION_86();
  __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_2();
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_156(v3 + *(*v3 + 112), &v49[8]);
  OUTLINED_FUNCTION_128();
  sub_1DCB8878C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  OUTLINED_FUNCTION_116();
  sub_1DCB0E9D8(v17, v18, v19);
  if (EnumCaseMultiPayload != 5)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v26 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v26, qword_1EDE57E00);
    v27 = sub_1DD0DD8EC();
    sub_1DD0DE6DC();
    OUTLINED_FUNCTION_182();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_14;
    }

    v29 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v29);
    v30 = "PromptForValueFlow received input but is not in the promptSent state. Ignoring.";
    goto LABEL_13;
  }

  type metadata accessor for Input(0);
  sub_1DCB245D0();
  v20 = swift_getEnumCaseMultiPayload();
  sub_1DCBF5844(v9, type metadata accessor for Parse);
  if (v20 == 10)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v21 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v21, qword_1EDE57E00);
    v22 = sub_1DD0DD8EC();
    v23 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_75(v23))
    {
      *OUTLINED_FUNCTION_50_0() = 0;
      OUTLINED_FUNCTION_233(&dword_1DCAFC000, v24, v25, "PromptForValueFlow received empty parse. Will handle and reprompt.");
      OUTLINED_FUNCTION_80();
    }

LABEL_7:

    OUTLINED_FUNCTION_124();
LABEL_8:
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_116();
    sub_1DCBE79E8();
    goto LABEL_15;
  }

  if (sub_1DCE967E0(v5))
  {
    v31 = v3[2];
    v0 = *(v31 + 24);
    (*(v31 + 16))(&v49[7], v5);
    if (!v49[7])
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v42 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v42, qword_1EDE57E00);
      v22 = sub_1DD0DD8EC();
      v43 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_75(v43))
      {
        *OUTLINED_FUNCTION_50_0() = 0;
        OUTLINED_FUNCTION_233(&dword_1DCAFC000, v44, v45, "PromptForValueFlow received cancel action from delegate. Transitioning to cancelled state.");
        OUTLINED_FUNCTION_80();
      }

      goto LABEL_7;
    }

    if (v49[7] == 1)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v32 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v32, qword_1EDE57E00);
      v33 = sub_1DD0DD8EC();
      v34 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_75(v34))
      {
        *OUTLINED_FUNCTION_50_0() = 0;
        OUTLINED_FUNCTION_241(&dword_1DCAFC000, v35, v36, "PromptForValueFlow received handle action from delegate. Transitioning to responseReceived state.");
        OUTLINED_FUNCTION_80();
      }

      OUTLINED_FUNCTION_30_7();
      sub_1DCB245D0();
      OUTLINED_FUNCTION_124();
      goto LABEL_8;
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v46 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v46, qword_1EDE57E00);
    v27 = sub_1DD0DD8EC();
    sub_1DD0DE6DC();
    OUTLINED_FUNCTION_182();
    if (!os_log_type_enabled(v27, v47))
    {
LABEL_14:

      goto LABEL_15;
    }

    v48 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v48);
    v30 = "PromptForValueFlow received ignore action from delegate. Ignoring.";
LABEL_13:
    _os_log_impl(&dword_1DCAFC000, v27, v0, v30, v2, 2u);
    OUTLINED_FUNCTION_62();
    goto LABEL_14;
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v37 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v37, qword_1EDE57E00);
  v38 = sub_1DD0DD8EC();
  v39 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v39))
  {
    *OUTLINED_FUNCTION_50_0() = 0;
    OUTLINED_FUNCTION_241(&dword_1DCAFC000, v40, v41, "PromptForValueFlow received low confidence input. Treating as misunderstood and will reprompt.");
    OUTLINED_FUNCTION_80();
  }

  OUTLINED_FUNCTION_30_7();
  sub_1DCB245D0();
  OUTLINED_FUNCTION_124();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_116();
  sub_1DCBE79E8();
LABEL_15:
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCBE5430(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  type metadata accessor for Input(0);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1E88, &qword_1DD0E2680);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCBE5514, 0, 0);
}

uint64_t sub_1DCBE5514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_193();
  OUTLINED_FUNCTION_156(v20 + *(v21 + 112), (v18 + 2));
  sub_1DCB8878C();
  OUTLINED_FUNCTION_194();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      OUTLINED_FUNCTION_9_10();
      sub_1DCBF57EC();
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v22 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v22, qword_1EDE57E00);
      OUTLINED_FUNCTION_30_7();
      OUTLINED_FUNCTION_194();
      sub_1DCB245D0();
      v23 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      OUTLINED_FUNCTION_137();
      v25 = os_log_type_enabled(v23, v24);
      v26 = v18[7];
      if (v25)
      {
        OUTLINED_FUNCTION_151();
        OUTLINED_FUNCTION_114_1();
        swift_slowAlloc();
        OUTLINED_FUNCTION_192();
        *v19 = 136315138;
        Input.description.getter();
        OUTLINED_FUNCTION_4_8();
        sub_1DCBF5844(v26, v27);
        v28 = OUTLINED_FUNCTION_191();
        v31 = sub_1DCB10E9C(v28, v29, v30);

        *(v19 + 4) = v31;
        OUTLINED_FUNCTION_88(&dword_1DCAFC000, v32, v33, "PromptForValueFlow parsing response from user: %s");
        OUTLINED_FUNCTION_60_0();
        OUTLINED_FUNCTION_92_0();
      }

      else
      {

        OUTLINED_FUNCTION_4_8();
        sub_1DCBF5844(v26, v88);
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v18[16] = v89;
      *v89 = v90;
      OUTLINED_FUNCTION_219(v89);
      OUTLINED_FUNCTION_121();

      result = sub_1DCBE861C(v91, v92);
      break;
    case 1u:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v49 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v49, qword_1EDE57E00);
      v50 = sub_1DD0DD8EC();
      v51 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v51))
      {
        v52 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v52);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v53, v54, v55, v56, v57, 2u);
        OUTLINED_FUNCTION_62();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v18[18] = v58;
      *v58 = v59;
      OUTLINED_FUNCTION_41_0(v58);
      OUTLINED_FUNCTION_121();

      result = sub_1DCBE93F0(v60);
      break;
    case 4u:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v35 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v35, qword_1EDE57E00);
      v36 = sub_1DD0DD8EC();
      v37 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v37))
      {
        v38 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v38);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v39, v40, v41, v42, v43, 2u);
        OUTLINED_FUNCTION_62();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v18[12] = v44;
      *v44 = v45;
      OUTLINED_FUNCTION_41_0(v44);
      OUTLINED_FUNCTION_121();

      result = sub_1DCBE7A5C(v46);
      break;
    case 6u:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v62 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v62, qword_1EDE57E00);
      v63 = sub_1DD0DD8EC();
      v64 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v64))
      {
        v65 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v65);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v66, v67, v68, v69, v70, 2u);
        OUTLINED_FUNCTION_62();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v18[20] = v71;
      *v71 = v72;
      OUTLINED_FUNCTION_41_0(v71);
      OUTLINED_FUNCTION_121();

      result = sub_1DCBE9870(v73);
      break;
    case 7u:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v75 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v75, qword_1EDE57E00);
      v76 = sub_1DD0DD8EC();
      v77 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v77))
      {
        v78 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v78);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v79, v80, v81, v82, v83, 2u);
        OUTLINED_FUNCTION_62();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v18[14] = v84;
      *v84 = v85;
      OUTLINED_FUNCTION_41_0(v84);
      OUTLINED_FUNCTION_121();

      result = sub_1DCBE8058(v86);
      break;
    default:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v34 = OUTLINED_FUNCTION_246();
      OUTLINED_FUNCTION_92(v34, qword_1EDE57E00);
      sub_1DD0DCF8C();
  }

  return result;
}

uint64_t sub_1DCBE5BF8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBE5CF0()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 104);
  OUTLINED_FUNCTION_14_12();
  swift_storeEnumTagMultiPayload();
  v2 = v1;
  sub_1DCBE79E8();

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_155();

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCBE5DA8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBE5EA0()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 120);
  OUTLINED_FUNCTION_14_12();
  swift_storeEnumTagMultiPayload();
  v2 = v1;
  sub_1DCBE79E8();

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_155();

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCBE5F58()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBE6050()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_4_8();
  sub_1DCBF5844(v0, v1);
  OUTLINED_FUNCTION_155();

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCBE60D0()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_4_8();
  sub_1DCBF5844(v1, v2);
  v3 = *(v0 + 136);
  OUTLINED_FUNCTION_14_12();
  swift_storeEnumTagMultiPayload();
  v4 = v3;
  sub_1DCBE79E8();

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_155();

  OUTLINED_FUNCTION_29();

  return v5();
}

uint64_t sub_1DCBE6194()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBE628C()
{
  OUTLINED_FUNCTION_39();
  sub_1DCB0E9D8(*(v0 + 88), &qword_1ECCA1E88, &qword_1DD0E2680);
  OUTLINED_FUNCTION_155();

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCBE6318()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_169();
  sub_1DCB0E9D8(v1, v2, v3);
  OUTLINED_FUNCTION_171();
  v4 = v0;
  OUTLINED_FUNCTION_169();
  sub_1DCBE79E8();

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_155();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_196();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1DCBE63D0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBE64C8()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_155();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCBE653C()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 168);
  OUTLINED_FUNCTION_14_12();
  swift_storeEnumTagMultiPayload();
  v2 = v1;
  sub_1DCBE79E8();

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_155();

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCBE65F4(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  type metadata accessor for Input(0);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1DF0, &qword_1DD0E2270);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCBE66D8, 0, 0);
}

uint64_t sub_1DCBE66D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_193();
  OUTLINED_FUNCTION_156(v20 + *(v21 + 112), (v18 + 2));
  sub_1DCB8878C();
  OUTLINED_FUNCTION_194();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      OUTLINED_FUNCTION_9_10();
      sub_1DCBF57EC();
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v22 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v22, qword_1EDE57E00);
      OUTLINED_FUNCTION_30_7();
      OUTLINED_FUNCTION_194();
      sub_1DCB245D0();
      v23 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      OUTLINED_FUNCTION_137();
      v25 = os_log_type_enabled(v23, v24);
      v26 = v18[7];
      if (v25)
      {
        OUTLINED_FUNCTION_151();
        OUTLINED_FUNCTION_114_1();
        swift_slowAlloc();
        OUTLINED_FUNCTION_192();
        *v19 = 136315138;
        Input.description.getter();
        OUTLINED_FUNCTION_4_8();
        sub_1DCBF5844(v26, v27);
        v28 = OUTLINED_FUNCTION_191();
        v31 = sub_1DCB10E9C(v28, v29, v30);

        *(v19 + 4) = v31;
        OUTLINED_FUNCTION_88(&dword_1DCAFC000, v32, v33, "PromptForValueFlow parsing response from user: %s");
        OUTLINED_FUNCTION_60_0();
        OUTLINED_FUNCTION_92_0();
      }

      else
      {

        OUTLINED_FUNCTION_4_8();
        sub_1DCBF5844(v26, v88);
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v18[16] = v89;
      *v89 = v90;
      OUTLINED_FUNCTION_219(v89);
      OUTLINED_FUNCTION_121();

      result = sub_1DCBE8DBC(v91, v92);
      break;
    case 1u:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v49 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v49, qword_1EDE57E00);
      v50 = sub_1DD0DD8EC();
      v51 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v51))
      {
        v52 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v52);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v53, v54, v55, v56, v57, 2u);
        OUTLINED_FUNCTION_62();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v18[18] = v58;
      *v58 = v59;
      OUTLINED_FUNCTION_41_0(v58);
      OUTLINED_FUNCTION_121();

      result = sub_1DCBE9630(v60);
      break;
    case 4u:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v35 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v35, qword_1EDE57E00);
      v36 = sub_1DD0DD8EC();
      v37 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v37))
      {
        v38 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v38);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v39, v40, v41, v42, v43, 2u);
        OUTLINED_FUNCTION_62();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v18[12] = v44;
      *v44 = v45;
      OUTLINED_FUNCTION_41_0(v44);
      OUTLINED_FUNCTION_121();

      result = sub_1DCBE7D88(v46);
      break;
    case 6u:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v62 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v62, qword_1EDE57E00);
      v63 = sub_1DD0DD8EC();
      v64 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v64))
      {
        v65 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v65);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v66, v67, v68, v69, v70, 2u);
        OUTLINED_FUNCTION_62();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v18[20] = v71;
      *v71 = v72;
      OUTLINED_FUNCTION_41_0(v71);
      OUTLINED_FUNCTION_121();

      result = sub_1DCBE99B0(v73);
      break;
    case 7u:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v75 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v75, qword_1EDE57E00);
      v76 = sub_1DD0DD8EC();
      v77 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v77))
      {
        v78 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v78);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v79, v80, v81, v82, v83, 2u);
        OUTLINED_FUNCTION_62();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v18[14] = v84;
      *v84 = v85;
      OUTLINED_FUNCTION_41_0(v84);
      OUTLINED_FUNCTION_121();

      result = sub_1DCBE8350(v86);
      break;
    default:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v34 = OUTLINED_FUNCTION_246();
      OUTLINED_FUNCTION_92(v34, qword_1EDE57E00);
      sub_1DD0DCF8C();
  }

  return result;
}

uint64_t sub_1DCBE6DBC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBE6EB4()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 104);
  OUTLINED_FUNCTION_14_12();
  swift_storeEnumTagMultiPayload();
  v2 = v1;
  sub_1DCBE79E8();

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_155();

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCBE6F6C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBE7064()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 120);
  OUTLINED_FUNCTION_14_12();
  swift_storeEnumTagMultiPayload();
  v2 = v1;
  sub_1DCBE79E8();

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_155();

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCBE711C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBE7214()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_4_8();
  sub_1DCBF5844(v1, v2);
  v3 = *(v0 + 136);
  OUTLINED_FUNCTION_14_12();
  swift_storeEnumTagMultiPayload();
  v4 = v3;
  sub_1DCBE79E8();

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_155();

  OUTLINED_FUNCTION_29();

  return v5();
}

uint64_t sub_1DCBE72D8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBE73D0()
{
  OUTLINED_FUNCTION_39();
  sub_1DCB0E9D8(*(v0 + 88), &qword_1ECCA1DF0, &qword_1DD0E2270);
  OUTLINED_FUNCTION_155();

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCBE745C()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_169();
  sub_1DCB0E9D8(v1, v2, v3);
  OUTLINED_FUNCTION_171();
  v4 = v0;
  OUTLINED_FUNCTION_169();
  sub_1DCBE79E8();

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_155();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_196();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1DCBE7514()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBE760C()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 168);
  OUTLINED_FUNCTION_14_12();
  swift_storeEnumTagMultiPayload();
  v2 = v1;
  sub_1DCBE79E8();

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_155();

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCBE76C4()
{
  OUTLINED_FUNCTION_60();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_172();

  OUTLINED_FUNCTION_148_0("Flow is in an unexpected state: ");
  OUTLINED_FUNCTION_156(v0 + *(v5 + 112), v18);
  OUTLINED_FUNCTION_128();
  sub_1DCB8878C();
  v6 = OUTLINED_FUNCTION_86();
  v8 = sub_1DCBEA290(v6, v7);
  MEMORY[0x1E12A6780](v8);

  OUTLINED_FUNCTION_116();
  sub_1DCB0E9D8(v9, v10, v11);
  type metadata accessor for CommandFailure();
  swift_allocObject();
  v12 = OUTLINED_FUNCTION_198();
  OUTLINED_FUNCTION_113_0();
  v15 = sub_1DCBF3798(v13, v14, &protocol conformance descriptor for CommandFailure);
  result = OUTLINED_FUNCTION_240(v15);
  *v17 = v12;
  return result;
}

void sub_1DCBE77E8()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_60();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_179();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v5 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v5, qword_1EDE57E00);
  OUTLINED_FUNCTION_226();
  swift_retain_n();
  v27 = sub_1DD0DD8EC();
  v6 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v27, v6))
  {
    v7 = swift_slowAlloc();
    v28[3] = OUTLINED_FUNCTION_85();
    OUTLINED_FUNCTION_236(4.8151e-34);
    OUTLINED_FUNCTION_239();
    v9 = v8;

    v10 = OUTLINED_FUNCTION_228();
    sub_1DCB10E9C(v10, v9, v11);

    OUTLINED_FUNCTION_184();
    OUTLINED_FUNCTION_156(v0 + *(v12 + 112), v28);
    OUTLINED_FUNCTION_128();
    sub_1DCB8878C();

    v13 = OUTLINED_FUNCTION_86();
    sub_1DCBEA290(v13, v14);
    v16 = v15;

    OUTLINED_FUNCTION_116();
    sub_1DCB0E9D8(v17, v18, v19);
    v20 = OUTLINED_FUNCTION_228();
    v22 = sub_1DCB10E9C(v20, v16, v21);

    *(v7 + 14) = v22;
    OUTLINED_FUNCTION_234(&dword_1DCAFC000, v23, v24, "PromptForValueFlow [%s] transitioned to state %s");
    OUTLINED_FUNCTION_237();
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_37();

    OUTLINED_FUNCTION_49();
  }

  else
  {
    OUTLINED_FUNCTION_226();

    OUTLINED_FUNCTION_49();
  }
}

uint64_t sub_1DCBE79E8()
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_232(v0);
  OUTLINED_FUNCTION_128();
  sub_1DCBF8F1C();
  swift_endAccess();
  OUTLINED_FUNCTION_86();
  sub_1DCBE77E8();
  OUTLINED_FUNCTION_116();
  return sub_1DCB0E9D8(v1, v2, v3);
}

uint64_t sub_1DCBE7A5C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1E88, &qword_1DD0E2680);
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCBE7AFC, 0, 0);
}

uint64_t sub_1DCBE7AFC()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_24_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_45_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_115(v1);
  v3 = OUTLINED_FUNCTION_10_3();

  return sub_1DCB63BBC(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCBE7B9C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBE7C9C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_173();
  swift_storeEnumTagMultiPayload();
  sub_1DCBE79E8();
  static ExecuteResponse.ongoing(requireInput:)(1, v0);

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1DCBE7D2C()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCBE7D88(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1DF0, &qword_1DD0E2270);
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCBE7E28, 0, 0);
}

uint64_t sub_1DCBE7E28()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_24_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_45_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_115(v1);
  v3 = OUTLINED_FUNCTION_10_3();

  return sub_1DCB63BBC(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCBE7EC8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBE7FC8()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_173();
  swift_storeEnumTagMultiPayload();
  sub_1DCBE79E8();
  static ExecuteResponse.ongoing(requireInput:)(1, v0);

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1DCBE8058(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1E88, &qword_1DD0E2680);
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCBE80F8, 0, 0);
}

uint64_t sub_1DCBE80F8()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_24_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_45_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_115(v1);
  v3 = OUTLINED_FUNCTION_10_3();

  return sub_1DCB63BBC(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCBE8198()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBE8298()
{
  OUTLINED_FUNCTION_39();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1E80, &qword_1DD0E9350);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_20();
  swift_storeEnumTagMultiPayload();
  sub_1DCBE79E8();
  static ExecuteResponse.complete()();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1DCBE8350(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1DF0, &qword_1DD0E2270);
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCBE83F0, 0, 0);
}

uint64_t sub_1DCBE83F0()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_24_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_45_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_115(v1);
  v3 = OUTLINED_FUNCTION_10_3();

  return sub_1DCB63BBC(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCBE8490()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBE8590()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_55_6();
  swift_storeEnumTagMultiPayload();
  sub_1DCBE79E8();
  static ExecuteResponse.complete()();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1DCBE861C(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v3[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1E88, &qword_1DD0E2680);
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1E90, &qword_1DD0E26F0);
  v3[12] = swift_task_alloc();
  v3[13] = type metadata accessor for IdentifiedUser(0);
  v3[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCBE8728, 0, 0);
}

uint64_t sub_1DCBE8728()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_2(&unk_1DD0E26F8);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 120) = v1;
  *v1 = v2;
  v1[1] = sub_1DCBE87C8;
  OUTLINED_FUNCTION_76_3();

  return v3();
}

uint64_t sub_1DCBE87C8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBE88C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  v11 = v10[12];
  if (__swift_getEnumTagSinglePayload(v11, 1, v10[13]) == 1)
  {
    sub_1DCB0E9D8(v11, &qword_1ECCA1E90, &qword_1DD0E26F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1E80, &qword_1DD0E9350);
    OUTLINED_FUNCTION_229();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_1DCBE79E8();
  }

  else
  {
    v12 = v10[14];
    sub_1DCBF57EC();
    sub_1DCB245D0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1E80, &qword_1DD0E9350);
    OUTLINED_FUNCTION_229();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_124();
    swift_storeEnumTagMultiPayload();
    sub_1DCBE79E8();
    sub_1DCBF5844(v12, type metadata accessor for IdentifiedUser);
  }

  static ExecuteResponse.complete()();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_121();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1DCBE8A68()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  v1 = v0[16];
  v2 = v0[9];
  OUTLINED_FUNCTION_49_2((v2 + 24));
  v3 = swift_task_alloc();
  v0[17] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[18] = v4;
  *v4 = v5;
  v4[1] = sub_1DCBE8B38;
  OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_196();

  return sub_1DCB63BBC(v6, v7, v8, v9, v10);
}

uint64_t sub_1DCBE8B38()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 152) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_118_1();
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBE8C38()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 128);
  v2 = *(v0 + 88);
  *v2 = v1;
  *(v2 + 8) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1E80, &qword_1DD0E9350);
  OUTLINED_FUNCTION_229();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v3 = v1;
  sub_1DCBE79E8();

  static ExecuteResponse.complete()();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_152();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1DCBE8D28()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 128);

  swift_willThrow();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_152();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCBE8DBC(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v3[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1DF0, &qword_1DD0E2270);
  v3[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCBE8E60, 0, 0);
}

uint64_t sub_1DCBE8E60()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_2(&unk_1DD0E22E0);
  v5 = v1;
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_1DCBE8F04;
  v3 = *(v0 + 64);

  return v5(v3);
}

uint64_t sub_1DCBE8F04()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 104) = v4;
  *(v2 + 112) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCBE9004()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  if ((~v1 & 0xF000000000000006) != 0)
  {
    *v2 = v1;
    *(v2 + 8) = 0;
    swift_storeEnumTagMultiPayload();
    sub_1DCBF4488(v1);
    sub_1DCBE79E8();
    sub_1DCBB1234(v1);
  }

  else
  {
    OUTLINED_FUNCTION_215();
    swift_storeEnumTagMultiPayload();
    sub_1DCBE79E8();
  }

  static ExecuteResponse.complete()();

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1DCBE90F4()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  v1 = v0[14];
  v2 = v0[9];
  OUTLINED_FUNCTION_49_2((v2 + 24));
  v3 = swift_task_alloc();
  v0[15] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[16] = v4;
  *v4 = v5;
  v4[1] = sub_1DCBE91C4;
  OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_196();

  return sub_1DCB63BBC(v6, v7, v8, v9, v10);
}

uint64_t sub_1DCBE91C4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 136) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_118_1();
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBE92C4()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 112);
  OUTLINED_FUNCTION_84_2();
  swift_storeEnumTagMultiPayload();
  v2 = v1;
  sub_1DCBE79E8();

  static ExecuteResponse.complete()();

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1DCBE9370()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 112);

  swift_willThrow();

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCBE93F0(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1E88, &qword_1DD0E2680);
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCBE9490, 0, 0);
}

uint64_t sub_1DCBE9490()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_24_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_45_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_115(v1);
  v3 = OUTLINED_FUNCTION_10_3();

  return sub_1DCB63BBC(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCBE9530()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBE9630(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1DF0, &qword_1DD0E2270);
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCBE96D0, 0, 0);
}

uint64_t sub_1DCBE96D0()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_24_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_45_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_115(v1);
  v3 = OUTLINED_FUNCTION_10_3();

  return sub_1DCB63BBC(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCBE9770()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBE9870(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1E88, &qword_1DD0E2680);
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCBE9910, 0, 0);
}

uint64_t sub_1DCBE9910()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_24_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_45_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_115(v1);
  v3 = OUTLINED_FUNCTION_10_3();

  return sub_1DCB63BBC(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCBE99B0(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1DF0, &qword_1DD0E2270);
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCBE9A50, 0, 0);
}

uint64_t sub_1DCBE9A50()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_24_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_45_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_115(v1);
  v3 = OUTLINED_FUNCTION_10_3();

  return sub_1DCB63BBC(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCBE9AF0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCBE9B10, 0, 0);
}

uint64_t sub_1DCBE9B10()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_32_2(&unk_1DD0E26D0);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_10(v1);

  return v4(v3);
}

uint64_t sub_1DCBE9B9C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCBE9BBC, 0, 0);
}

uint64_t sub_1DCBE9BBC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_32_2(&unk_1DD0E22C0);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_10(v1);

  return v4(v3);
}

uint64_t sub_1DCBE9C48(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCBE9C68, 0, 0);
}

uint64_t sub_1DCBE9C68()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_32_2(&unk_1DD0E2740);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_10(v1);

  return v4(v3);
}

uint64_t sub_1DCBE9CF4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCBE9D14, 0, 0);
}

uint64_t sub_1DCBE9D14()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_32_2(&unk_1DD0E2328);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_10(v1);

  return v4(v3);
}

uint64_t sub_1DCBE9DA0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCBE9DC0, 0, 0);
}

uint64_t sub_1DCBE9DC0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_32_2(&unk_1DD0E2728);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_10(v1);

  return v4(v3);
}

uint64_t sub_1DCBE9E4C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCBE9E6C, 0, 0);
}

uint64_t sub_1DCBE9E6C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_32_2(&unk_1DD0E2310);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_10(v1);

  return v4(v3);
}

uint64_t sub_1DCBE9EF8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCBE9F18, 0, 0);
}

uint64_t sub_1DCBE9F18()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_32_2(&unk_1DD0E26E8);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_10(v1);

  return v4(v3);
}

uint64_t sub_1DCBE9FA4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCBE9FC4, 0, 0);
}

uint64_t sub_1DCBE9FC4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_32_2(&unk_1DD0E22D8);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_10(v1);

  return v4(v3);
}

uint64_t sub_1DCBEA050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCBEA074, 0, 0);
}

uint64_t sub_1DCBEA074()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_32_2(&unk_1DD0E2710);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_15_13(v1);

  return v4(v3);
}

uint64_t sub_1DCBEA100()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCBEA1E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCBEA204, 0, 0);
}

uint64_t sub_1DCBEA204()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_32_2(&unk_1DD0E22F8);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_15_13(v1);

  return v4(v3);
}

uint64_t sub_1DCBEA290(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v2, v3);
  OUTLINED_FUNCTION_33_1();
  sub_1DCB8878C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x646574726174732ELL;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      OUTLINED_FUNCTION_152_0();
      sub_1DCB0E9D8(v12, v13, v14);
      result = 0x65646E7573696D2ELL;
      break;
    case 2:
      OUTLINED_FUNCTION_152_0();
      sub_1DCB0E9D8(v15, v16, v17);
      result = 0x74656C706D6F632ELL;
      break;
    case 3:
      OUTLINED_FUNCTION_152_0();
      sub_1DCB0E9D8(v9, v10, v11);
      result = 0x726F7272652ELL;
      break;
    case 4:
      return result;
    case 5:
      result = 0x5374706D6F72702ELL;
      break;
    case 6:
      result = 0x61507974706D652ELL;
      break;
    case 7:
      result = OUTLINED_FUNCTION_227();
      break;
    default:
      OUTLINED_FUNCTION_152_0();
      sub_1DCB0E9D8(v6, v7, v8);
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_1DCBEA44C(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCBEA46C, 0, 0);
}

uint64_t sub_1DCBEA46C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCBEA528;
  OUTLINED_FUNCTION_76_3();

  return v3();
}

uint64_t sub_1DCBEA528()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 48) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBEA630(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCBEA650, 0, 0);
}

uint64_t sub_1DCBEA650()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_1_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_10(v1);

  return v4(v3);
}

uint64_t sub_1DCBEA700(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCBEA720, 0, 0);
}

uint64_t sub_1DCBEA720()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_1_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_10(v1);

  return v4(v3);
}

uint64_t sub_1DCBEA7D0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCBEA7F0, 0, 0);
}

uint64_t sub_1DCBEA7F0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_1_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_10(v1);

  return v4(v3);
}

uint64_t sub_1DCBEA8A0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCBEA8C4, 0, 0);
}

uint64_t sub_1DCBEA8C4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_8_11();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_46_1(v1);

  return v4(v3);
}

uint64_t sub_1DCBEA974(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCBEA994, 0, 0);
}

uint64_t sub_1DCBEA994()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_1_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_10(v1);

  return v4(v3);
}

uint64_t sub_1DCBEAA44(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCBEAA64, 0, 0);
}

void sub_1DCBEAA64()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_135();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_199(v0);
  OUTLINED_FUNCTION_136();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_131_1(v1);
  swift_allocObject();
  OUTLINED_FUNCTION_164();

  v2 = OUTLINED_FUNCTION_214();
  sub_1DD06E414(v2);
}

uint64_t sub_1DCBEAB28(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCBEAB48, 0, 0);
}

void sub_1DCBEAB48()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  sub_1DCB17CA0(*(v0 + 64) + 104, v0 + 16);
  OUTLINED_FUNCTION_135();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_199(v1);
  OUTLINED_FUNCTION_136();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_131_1(v2);
  swift_allocObject();
  OUTLINED_FUNCTION_164();

  v3 = OUTLINED_FUNCTION_214();
  sub_1DD06E414(v3);
}

uint64_t sub_1DCBEAC20(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCBEAC40, 0, 0);
}

void sub_1DCBEAC40()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_135();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_199(v0);
  OUTLINED_FUNCTION_136();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_131_1(v1);
  swift_allocObject();
  OUTLINED_FUNCTION_164();

  v2 = OUTLINED_FUNCTION_214();
  sub_1DD06E414(v2);
}

uint64_t sub_1DCBEAD04(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 360) = a4;
  *(v5 + 368) = a5;
  *(v5 + 400) = a3;
  *(v5 + 344) = a1;
  *(v5 + 352) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  *(v5 + 376) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCBEADA8, 0, 0);
}

uint64_t sub_1DCBEB130()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 392) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBEB228(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 360) = a4;
  *(v5 + 368) = a5;
  *(v5 + 400) = a3;
  *(v5 + 344) = a1;
  *(v5 + 352) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  *(v5 + 376) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCBEB2CC, 0, 0);
}

uint64_t sub_1DCBEB654(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 360) = a4;
  *(v5 + 368) = a5;
  *(v5 + 400) = a3;
  *(v5 + 344) = a1;
  *(v5 + 352) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  *(v5 + 376) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCBEB6F8, 0, 0);
}

uint64_t sub_1DCBEBA80()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 392) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DCBEBB78()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 344);
  *__src = *(v0 + 16);
  __swift_project_boxed_opaque_existential_1((v0 + 160), *(v0 + 184));
  OUTLINED_FUNCTION_216();
  v3 = OUTLINED_FUNCTION_124();
  v4(v3);
  v5 = OUTLINED_FUNCTION_242();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v5);
  v6 = type metadata accessor for AceOutput(0);
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0;
  *(v0 + 240) = 0u;
  v2[3] = v6;
  v2[4] = &protocol witness table for AceOutput;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v2);
  OUTLINED_FUNCTION_59_5(boxed_opaque_existential_1Tm, v8, v9, MEMORY[0x1E69E7CC0], v10, v11, v12, v13, v0 + 240, v14, __src[0]);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
}

uint64_t sub_1DCBEBCF0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_122_1((v0 + 160));

  OUTLINED_FUNCTION_29();

  return v1();
}

void sub_1DCBEBD54(uint64_t a1)
{
  v1[2] = &unk_1DD0E2A68;
  v1[3] = a1;
  v1[4] = &unk_1DD0E2A78;
  v1[5] = a1;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCBEBD98(uint64_t a1, __int16 a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1DCBCF08C;

  return sub_1DCBD6F90(a1, a2 & 0x101, a3, a4 & 0x10101, a5, a6);
}

uint64_t sub_1DCBEBE90(uint64_t a1, __int16 a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1DCBCFA04;

  return sub_1DCBD7180(a1, a2 & 0x101, a3, a4 & 0x10101, a5, a6);
}

uint64_t sub_1DCBEBF88(uint64_t a1, __int16 a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = v6;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 42) = BYTE2(a4);
  *(v7 + 48) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1DCBEBFC4, 0, 0);
}

uint64_t sub_1DCBEBFC4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_5_10();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_62_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_22_9(v1);

  return v4(v3);
}

uint64_t sub_1DCBEC074()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v4 + 80) = v0;

  if (!v0)
  {
    *(v4 + 88) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void *sub_1DCBEC19C(uint64_t a1)
{
  v1[2] = &unk_1DD0E2968;
  v1[3] = a1;
  v1[4] = &unk_1DD0E2978;
  v1[5] = a1;
  v1[6] = &unk_1DD0E2988;
  v1[7] = a1;
  swift_retain_n();
  return v1;
}

uint64_t sub_1DCBEC1F8(uint64_t a1, __int16 a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1DCBCFA04;

  return sub_1DCBD6F90(a1, a2 & 0x101, a3, a4 & 0x10101, a5, a6);
}

uint64_t sub_1DCBEC2F0(uint64_t a1, __int16 a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1DCBCFA04;

  return sub_1DCBD7180(a1, a2 & 0x101, a3, a4 & 0x10101, a5, a6);
}

uint64_t sub_1DCBEC3E8(uint64_t a1, __int16 a2, uint64_t a3, int a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCBCFA04;

  return sub_1DCBD726C(a1, a2 & 0x101, a3, a4 & 0x10101);
}

uint64_t sub_1DCBEC4C8(uint64_t a1, __int16 a2, uint64_t a3, int a4)
{
  *(v5 + 48) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 42) = BYTE2(a4);
  return MEMORY[0x1EEE6DFA0](sub_1DCBEC500, 0, 0);
}

uint64_t sub_1DCBEC500()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_86_3();
  v6 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 56) = v2;
  *v2 = v3;
  v2[1] = sub_1DCBEC5B4;
  v4 = OUTLINED_FUNCTION_81_1();

  return v6(v4);
}

uint64_t sub_1DCBEC5B4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_130();

    return v11(v10);
  }
}

uint64_t sub_1DCBEC6F0@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  result = *(v1 + 32);
  v4 = *(v1 + 112);
  if (v4 != 4)
  {
    v5 = *(v1 + 40);
    if (v4 == 5)
    {
      *a1 = result;
      *(a1 + 8) = v5 & 1;
      *(a1 + 9) = 1;
      return result;
    }

    if (v4 != 6 || result != 3 || (v6 = vorrq_s8(vorrq_s8(*(v1 + 48), *(v1 + 80)), vorrq_s8(*(v1 + 64), *(v1 + 96))), *&vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL)) | (*(v1 + 41) << 8) | ((*(v1 + 45) | (*(v1 + 47) << 16)) << 40) | v5))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1EF8, &qword_1DD0E28F8);
      sub_1DCBF7DC0(&qword_1ECCA1F00, &qword_1ECCA1EF8, &qword_1DD0E28F8, &unk_1DD10F358);
      v7 = swift_allocError();
      v9 = v8;
      memcpy(__dst, (v1 + 32), sizeof(__dst));
      memmove(v9, (v1 + 32), 0x51uLL);
      v9[81] = 0;
      *a1 = v7;
      *(a1 + 8) = 256;
      return sub_1DCB8878C();
    }

    *a1 = 0;
    goto LABEL_11;
  }

  if (result)
  {
    *a1 = 1;
LABEL_11:
    *(a1 + 8) = 512;
    return result;
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  return result;
}

void sub_1DCBEC8A4()
{
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v0 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v0, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

void sub_1DCBECAAC(const void *a1)
{
  swift_beginAccess();
  v11 = *(v1 + 40);
  v12 = *(v1 + 32);
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  v6 = *(v1 + 80);
  v7 = *(v1 + 88);
  v8 = *(v1 + 96);
  v9 = *(v1 + 104);
  v10 = *(v1 + 112);
  memcpy((v1 + 32), a1, 0x51uLL);
  sub_1DCBF8BC4(v12, v11, v2, v3, v4, v5, v6, v7, v8, v9, v10);
  sub_1DCBEC8A4();
}

void sub_1DCBECB60(uint64_t a1)
{
  *(v2 + 2200) = v1;
  *(v2 + 2192) = a1;
  sub_1DD0DCC3C();
}

uint64_t sub_1DCBECC24()
{
  v1 = *(v0 + 2200);
  swift_beginAccess();
  memcpy((v0 + 16), (v1 + 32), 0x51uLL);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v0 + 2232) = v2;
  v4 = *(v0 + 32);
  v5 = *(v0 + 33) | ((*(v0 + 37) | (*(v0 + 39) << 16)) << 32);
  *(v0 + 2392) = v4;
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  *(v0 + 2240) = v6;
  v8 = *(v0 + 56);
  v9 = *(v0 + 64);
  v10 = *(v0 + 72);
  v11 = *(v0 + 80);
  *(v0 + 2248) = v10;
  v12 = *(v0 + 88);
  *(v0 + 2256) = v12;
  switch(*(v0 + 96))
  {
    case 1:
      sub_1DCB8878C();
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v57 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v57, qword_1EDE57E00);
      v58 = sub_1DD0DD8EC();
      v59 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_75(v59))
      {
        v60 = OUTLINED_FUNCTION_50_0();
        *v60 = 0;
        _os_log_impl(&dword_1DCAFC000, v58, v59, "Executing last window", v60, 2u);
        OUTLINED_FUNCTION_37();
      }

      OUTLINED_FUNCTION_32_2(&unk_1DD0E2930);
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v0 + 2344) = v61;
      *v61 = v62;
      OUTLINED_FUNCTION_176(v61);
      OUTLINED_FUNCTION_116();
      OUTLINED_FUNCTION_141();

      __asm { BR              X4 }

      return result;
    case 2:
      *(v0 + 2088) = v3;
      *(v0 + 2096) = v2;
      *(v0 + 2104) = v4;
      *(v0 + 2105) = v5;
      *(v0 + 2111) = BYTE6(v5);
      *(v0 + 2109) = WORD2(v5);
      *(v0 + 2112) = v6;
      *(v0 + 2120) = v7;
      *(v0 + 2128) = v8;
      *(v0 + 2130) = BYTE2(v8);
      sub_1DCB8878C();
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v30 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v30, qword_1EDE57E00);
      v31 = sub_1DD0DD8EC();
      v32 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v32))
      {
        v33 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v33);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v34, v35, v36, v37, v38, 2u);
        OUTLINED_FUNCTION_62();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v0 + 2384) = v39;
      *v39 = v40;
      OUTLINED_FUNCTION_176(v39);
      OUTLINED_FUNCTION_141();

      return sub_1DCBF0A20(v41, v42, v43, v44, v45, v46);
    case 3:
      sub_1DCB8878C();
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v48 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v48, qword_1EDE57E00);
      v49 = sub_1DD0DD8EC();
      sub_1DD0DE6EC();
      OUTLINED_FUNCTION_182();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = OUTLINED_FUNCTION_50_0();
        *v51 = 0;
        _os_log_impl(&dword_1DCAFC000, v49, v1, "Flow called in unexpected state", v51, 2u);
        OUTLINED_FUNCTION_80();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1EF8, &qword_1DD0E28F8);
      OUTLINED_FUNCTION_112_1();
      sub_1DCBF7DC0(v52, &qword_1ECCA1EF8, &qword_1DD0E28F8, v53);
      v54 = swift_allocError();
      v56 = v55;
      OUTLINED_FUNCTION_212((v0 + 720));
      memmove(v56, (v1 + 32), 0x51uLL);
      v56[81] = 0;
      OUTLINED_FUNCTION_212((v0 + 632));
      *(v1 + 32) = v54;
      OUTLINED_FUNCTION_180();
      sub_1DCB8878C();
      sub_1DCB0E9D8(v0 + 632, &qword_1ECCA1F08, &qword_1DD0E2900);
      sub_1DCBEC8A4();
    case 4:
      *(v0 + 368) = v3;
      *(v0 + 376) = v2;
      *(v0 + 384) = v4;
      *(v0 + 385) = v5;
      *(v0 + 391) = BYTE6(v5);
      *(v0 + 389) = WORD2(v5);
      *(v0 + 392) = v6;
      *(v0 + 400) = v7;
      *(v0 + 408) = v8;
      *(v0 + 416) = v9;
      *(v0 + 424) = v10;
      *(v0 + 432) = v11;
      *(v0 + 440) = v12;
      *(v0 + 448) = 4;
      sub_1DCB8878C();
      v27 = v0 + 368;
      v28 = &qword_1ECCA1F08;
      v29 = &qword_1DD0E2900;
      goto LABEL_30;
    case 5:
      *(v0 + 104) = v3;
      *(v0 + 112) = v2;
      *(v0 + 120) = v4;
      *(v0 + 121) = v5;
      *(v0 + 127) = BYTE6(v5);
      *(v0 + 125) = WORD2(v5);
      *(v0 + 128) = v6;
      *(v0 + 136) = v7;
      *(v0 + 144) = v8;
      *(v0 + 152) = v9;
      *(v0 + 160) = v10;
      *(v0 + 168) = v11;
      *(v0 + 176) = v12;
      *(v0 + 184) = 5;
      sub_1DCB8878C();
      OUTLINED_FUNCTION_169();
LABEL_30:
      sub_1DCB0E9D8(v27, v28, v29);
      goto LABEL_31;
    case 6:
      v76 = (v5 << 8) | v4 | v7 | v8 | v9 | v10 | v11 | v12;
      if (!v6 && !v2 && !(v76 | v3))
      {
        sub_1DCB8878C();
        sub_1DD0DCF8C();
      }

      if (v6 || v2 || v3 != 1 || v76)
      {
        if (!v6 && !v2 && v3 == 2 && !v76)
        {
          v79 = v1;
          v80 = *(v0 + 2200);
          v81 = *(v80 + 24);
          switch(v81 >> 62)
          {
            case 1uLL:
              sub_1DCB8878C();
              if (qword_1EDE4F900 != -1)
              {
                OUTLINED_FUNCTION_1_2();
                swift_once();
              }

              v83 = sub_1DD0DD8FC();
              OUTLINED_FUNCTION_92(v83, qword_1EDE57E00);
              v84 = sub_1DD0DD8EC();
              sub_1DD0DE6EC();
              OUTLINED_FUNCTION_182();
              if (os_log_type_enabled(v84, v85))
              {
                v86 = OUTLINED_FUNCTION_50_0();
                OUTLINED_FUNCTION_167(v86);
                _os_log_impl(&dword_1DCAFC000, v84, v80, "Orchestration flow attempted to create a conclusion for a provider that does not support that functionality.", v5, 2u);
                OUTLINED_FUNCTION_92_0();
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1EF8, &qword_1DD0E28F8);
              OUTLINED_FUNCTION_112_1();
              sub_1DCBF7DC0(v87, &qword_1ECCA1EF8, &qword_1DD0E28F8, v88);
              v89 = swift_allocError();
              v91 = v90;
              OUTLINED_FUNCTION_212((v0 + 1160));
              memmove(v91, (v79 + 32), 0x51uLL);
              v91[81] = 1;
              OUTLINED_FUNCTION_212((v0 + 1072));
              *(v79 + 32) = v89;
              OUTLINED_FUNCTION_180();
              sub_1DCB8878C();
              sub_1DCB0E9D8(v0 + 1072, &qword_1ECCA1F08, &qword_1DD0E2900);
              sub_1DCBEC8A4();
            case 2uLL:
            case 3uLL:
              v82 = v81 & 0x3FFFFFFFFFFFFFFFLL;
              break;
            default:
              v82 = v81 & 0x3FFFFFFFFFFFFFFFLL;
              break;
          }

          *(v0 + 2352) = v82;
          *(v0 + 2400) = 1;
          OUTLINED_FUNCTION_212((v0 + 1336));
          *(v79 + 32) = *(v0 + 2400);
          *(v80 + 112) = 4;
          sub_1DCB8878C();
          sub_1DD0DCF8C();
        }

        sub_1DCB8878C();
LABEL_31:
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_1_2();
          swift_once();
        }

        v65 = sub_1DD0DD8FC();
        OUTLINED_FUNCTION_92(v65, qword_1EDE57E00);
        v66 = sub_1DD0DD8EC();
        v67 = sub_1DD0DE6DC();
        if (OUTLINED_FUNCTION_23(v67))
        {
          v68 = OUTLINED_FUNCTION_50_0();
          OUTLINED_FUNCTION_46(v68);
          OUTLINED_FUNCTION_36_0();
          _os_log_impl(v69, v70, v71, v72, v73, 2u);
          OUTLINED_FUNCTION_62();
        }

        static ExecuteResponse.complete()();

        OUTLINED_FUNCTION_29();
        OUTLINED_FUNCTION_141();

        __asm { BRAA            X1, X16 }
      }

      *(v0 + 2264) = *(*(v0 + 2200) + 16);
      sub_1DCB8878C();
      v77 = swift_task_alloc();
      *(v0 + 2272) = v77;
      *v77 = v0;
      OUTLINED_FUNCTION_31_0(v77);
      OUTLINED_FUNCTION_141();

      return sub_1DD0C4898();
    default:
      sub_1DCB8878C();
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v13 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v13, qword_1EDE57E00);
      v14 = sub_1DD0DD8EC();
      v15 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_75(v15))
      {
        v16 = OUTLINED_FUNCTION_50_0();
        *v16 = 0;
        _os_log_impl(&dword_1DCAFC000, v14, v15, "Executing next window", v16, 2u);
        OUTLINED_FUNCTION_80();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v0 + 2336) = v17;
      *v17 = v18;
      OUTLINED_FUNCTION_176(v17);
      OUTLINED_FUNCTION_141();

      return sub_1DCBF05C8(v19, v20, v21, v22, v23, v24);
  }
}

uint64_t sub_1DCBED918()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 2280) = v3;
  *(v1 + 2288) = v4;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCBEDA08()
{
  OUTLINED_FUNCTION_39();
  if (*(v0 + 2288))
  {
    v1 = swift_task_alloc();
    *(v0 + 2296) = v1;
    *v1 = v0;
    v1[1] = sub_1DCBEDB60;

    return sub_1DD0C4898();
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v3 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v3, qword_1EDE57E00);
    v4 = sub_1DD0DD8EC();
    v5 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_23(v5))
    {
      v6 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v6);
      OUTLINED_FUNCTION_36_0();
      _os_log_impl(v7, v8, v9, v10, v11, 2u);
      OUTLINED_FUNCTION_62();
    }

    static ExecuteResponse.complete()();

    OUTLINED_FUNCTION_29();

    return v12();
  }
}

uint64_t sub_1DCBEDB60()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 2304) = v3;
  *(v1 + 2312) = v4;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCBEDC50()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[289];
  if (v1)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v2 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
    v3 = sub_1DD0DD8EC();
    sub_1DD0DE6DC();
    OUTLINED_FUNCTION_137();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_167(v5);
      OUTLINED_FUNCTION_120(&dword_1DCAFC000, v6, v7, "Executing first window");
      OUTLINED_FUNCTION_92_0();
    }

    v8 = v0[286];

    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    v0[290] = v9;
    *v9 = v10;
    v9[1] = sub_1DCBEDE80;
    v11 = v0[288];
    v12 = v0[285];
    v13 = v0[274];

    return sub_1DCBF05C8(v13, 1, v12, v8, v11, v1);
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v15 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v15, qword_1EDE57E00);
    v16 = sub_1DD0DD8EC();
    v17 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_23(v17))
    {
      v18 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v18);
      OUTLINED_FUNCTION_36_0();
      _os_log_impl(v19, v20, v21, v22, v23, 2u);
      OUTLINED_FUNCTION_62();
    }

    v24 = v0[286];

    OUTLINED_FUNCTION_32_2(&unk_1DD0E2930);
    v30 = v25;
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    v0[291] = v26;
    *v26 = v27;
    v26[1] = sub_1DCBEDFD4;
    v28 = v0[285];
    v29 = v0[274];

    return v30(v29, v28, v24, 1);
  }
}

uint64_t sub_1DCBEDE80()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCBEDF68()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCBEDFD4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCBEE0BC()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCBEE11C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCBEE204()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCBEE270()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCBEE358()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCBEE3B8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 2368) = v5;
  *(v3 + 2376) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCBEE4C4()
{
  OUTLINED_FUNCTION_39();
  if (*(v1 + 2368))
  {

    OUTLINED_FUNCTION_214();
    static ExecuteResponse.complete(next:)();
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v3 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v3, qword_1EDE57E00);
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v5))
  {
    v6 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_167(v6);

    _os_log_impl(&dword_1DCAFC000, v4, v0, "Provider did not provide a flow for conclusion. Exiting.", v2, 2u);
    OUTLINED_FUNCTION_92_0();
  }

  else
  {
  }

  static ExecuteResponse.complete()();

  OUTLINED_FUNCTION_29();

  return v7();
}

void sub_1DCBEE5F0()
{
  OUTLINED_FUNCTION_41();
  v15 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v1 = v0[297];
  v2 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_151();
    OUTLINED_FUNCTION_114_1();
    v14 = swift_slowAlloc();
    *v1 = 136315138;
    swift_getErrorValue();
    v6 = sub_1DD0DF18C();
    v8 = sub_1DCB10E9C(v6, v7, &v14);

    *(v1 + 1) = v8;
    OUTLINED_FUNCTION_88(&dword_1DCAFC000, v9, v10, "Flow resulted in an error. Exiting due to: %s");
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_92_0();
  }

  v11 = v0[297];
  v12 = v0[275];
  memcpy(v0 + 200, (v12 + 32), 0x51uLL);
  *(v12 + 32) = v11;
  OUTLINED_FUNCTION_180();
  v13 = v11;
  sub_1DCB0E9D8((v0 + 200), &qword_1ECCA1F08, &qword_1DD0E2900);
  sub_1DCBEC8A4();
}

uint64_t sub_1DCBEE7A8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCBEE890()
{
  OUTLINED_FUNCTION_42();

  sub_1DCB0E9D8(v0 + 2088, &qword_1ECCA1F10, &qword_1DD0E2918);

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCBEE914(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 97) = a4;
  *(v5 + 472) = a3;
  *(v5 + 480) = v4;
  *(v5 + 456) = a1;
  *(v5 + 464) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCBEE93C, 0, 0);
}

void sub_1DCBEE93C()
{
  OUTLINED_FUNCTION_41();
  v1 = *(*(v0 + 480) + 24);
  *(v0 + 488) = v1;
  switch(v1 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_157();
    default:
      OUTLINED_FUNCTION_157();
  }
}

uint64_t sub_1DCBEEA70()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 504) = v4;
  *(v2 + 512) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1DCBEEB70()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v2 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v5);
    _os_log_impl(&dword_1DCAFC000, v3, v4, "Prompt type is Continuation. So the last window will include the conclusion. Exiting.", v0, 2u);
    OUTLINED_FUNCTION_62();
  }

  *(v1 + 192) = 1;
  *(v1 + 272) = 4;
  sub_1DCBECAAC((v1 + 192));
}

uint64_t sub_1DCBEEDCC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 528) = v5;
  *(v3 + 536) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1DCBEEEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_125();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v14 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v14, qword_1EDE57E00);
  v15 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();
  OUTLINED_FUNCTION_182();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = OUTLINED_FUNCTION_50_0();
    *v17 = 0;

    _os_log_impl(&dword_1DCAFC000, v15, v12, "Prompt type is not Continuation. Will provide conclusion as a separate response.", v17, 2u);
    OUTLINED_FUNCTION_80();
  }

  else
  {
  }

  v18 = *(v13 + 97);
  v19 = *(v13 + 472);
  v20 = *(v13 + 464);

  *(v13 + 328) = v20;
  *(v13 + 336) = v19;
  *(v13 + 344) = 1;
  *(v13 + 352) = v18;
  *(v13 + 353) = 1;
  *(v13 + 360) = 0;
  *(v13 + 368) = 1;
  *(v13 + 369) = 0;
  v21 = *(v13 + 344);
  *(v13 + 16) = *(v13 + 328);
  *(v13 + 32) = v21;
  *(v13 + 43) = *(v13 + 355);
  *(v13 + 64) = 0u;
  *(v13 + 80) = 0u;
  *(v13 + 96) = 3;

  sub_1DCB8878C();
  sub_1DCBECAAC((v13 + 16));
}

void sub_1DCBEF200(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  memcpy(__dst, v2 + 2, 0x51uLL);
  v7 = __dst[6];
  v6 = __dst[7];
  v9 = __dst[8];
  v8 = __dst[9];
  if (LOBYTE(__dst[10]) == 3)
  {
    v10 = v2[3];
    v41 = v2[2];
    *v42 = v10;
    *&v42[11] = *(v2 + 59);
    if (BYTE1(a2))
    {
      if (BYTE1(a2) == 1)
      {
        sub_1DCB8878C();
        sub_1DCB92D90(a1, a2, 1);
        if (qword_1EDE4F900 != -1)
        {
          swift_once();
        }

        v11 = sub_1DD0DD8FC();
        __swift_project_value_buffer(v11, qword_1EDE57E00);
        v12 = sub_1DD0DD8EC();
        v13 = sub_1DD0DE6EC();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_1DCAFC000, v12, v13, "Child flow resulted in an error. Moving to error state.", v14, 2u);
          MEMORY[0x1E12A8390](v14, -1, -1);
        }

        *v48 = a1;
        v48[8] = a2 & 1;
        v51 = 5;
        sub_1DCB92D90(a1, a2, 1);
        sub_1DCBECAAC(v48);
      }

      if (!(a1 | a2))
      {
        sub_1DCB8878C();
        if (qword_1EDE4F900 != -1)
        {
          swift_once();
        }

        v32 = sub_1DD0DD8FC();
        __swift_project_value_buffer(v32, qword_1EDE57E00);
        v33 = sub_1DD0DD8EC();
        v34 = sub_1DD0DE6DC();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&dword_1DCAFC000, v33, v34, "Child flow indicates that windowing should proceed.", v35, 2u);
          MEMORY[0x1E12A8390](v35, -1, -1);
        }

        memset(&v48[8], 0, 48);
        v49 = 0u;
        *v48 = 2;
        v50 = 0;
        v51 = 6;
        sub_1DCBF0250(v7, v6, v9, v8, v48);
      }

      if (!(a1 ^ 1 | a2))
      {
        sub_1DCB8878C();
        if (qword_1EDE4F900 != -1)
        {
          swift_once();
        }

        v28 = sub_1DD0DD8FC();
        __swift_project_value_buffer(v28, qword_1EDE57E00);
        v29 = sub_1DD0DD8EC();
        v30 = sub_1DD0DE6DC();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&dword_1DCAFC000, v29, v30, "Child flow indicates that windowing should repeat.", v31, 2u);
          MEMORY[0x1E12A8390](v31, -1, -1);
        }

        *v48 = v41;
        *&v48[16] = *v42;
        *&v48[27] = *&v42[11];
        *&v48[48] = v7;
        *&v49 = v6;
        *(&v49 + 1) = v9;
        v50 = v8;
        v51 = 2;
        sub_1DCB8878C();

        sub_1DCBECAAC(v48);
      }

      sub_1DCB8878C();
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v36 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v36, qword_1EDE57E00);
      v37 = sub_1DD0DD8EC();
      v38 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_1DCAFC000, v37, v38, "Child flow indicates it was cancelled. Moving to cancelled.", v39, 2u);
        MEMORY[0x1E12A8390](v39, -1, -1);
      }

      memset(&v48[8], 0, 48);
      v49 = 0u;
      *v48 = 3;
      v50 = 0;
      v27 = 6;
    }

    else
    {
      sub_1DCB8878C();
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v23 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v23, qword_1EDE57E00);
      v24 = sub_1DD0DD8EC();
      v25 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_1DCAFC000, v24, v25, "Child flow indicates that windowing is complete. Moving to complete state.", v26, 2u);
        MEMORY[0x1E12A8390](v26, -1, -1);
      }

      v40[0] = a1 & 1;
      v48[0] = a1 & 1;
      v27 = 4;
    }

    v51 = v27;
    sub_1DCBECAAC(v48);
  }

  v15 = v2[3];
  v41 = v2[2];
  *v42 = v15;
  *&v42[16] = v2[4];
  v43 = __dst[6];
  v44 = __dst[7];
  v45 = __dst[8];
  v46 = __dst[9];
  v47 = __dst[10];
  sub_1DCB8878C();
  sub_1DCB0E9D8(&v41, &qword_1ECCA1F08, &qword_1DD0E2900);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v16 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v16, qword_1EDE57E00);
  v17 = sub_1DD0DD8EC();
  v18 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1DCAFC000, v17, v18, "Flow called in unexpected state", v19, 2u);
    MEMORY[0x1E12A8390](v19, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1EF8, &qword_1DD0E28F8);
  sub_1DCBF7DC0(&qword_1ECCA1F00, &qword_1ECCA1EF8, &qword_1DD0E28F8, &unk_1DD10F358);
  v20 = swift_allocError();
  v22 = v21;
  memcpy(v40, v3 + 2, sizeof(v40));
  memmove(v22, v3 + 2, 0x51uLL);
  v22[81] = 0;
  *v48 = v20;
  v48[8] = 0;
  v51 = 5;
  sub_1DCB8878C();
  sub_1DCBECAAC(v48);
}

void sub_1DCBEFA28(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  memcpy(__dst, v2 + 2, 0x51uLL);
  v7 = __dst[6];
  v6 = __dst[7];
  v9 = __dst[8];
  v8 = __dst[9];
  if (LOBYTE(__dst[10]) == 3)
  {
    v10 = v2[3];
    v41 = v2[2];
    *v42 = v10;
    *&v42[11] = *(v2 + 59);
    if (BYTE1(a2))
    {
      if (BYTE1(a2) == 1)
      {
        sub_1DCB8878C();
        sub_1DCB92D90(a1, a2, 1);
        if (qword_1EDE4F900 != -1)
        {
          swift_once();
        }

        v11 = sub_1DD0DD8FC();
        __swift_project_value_buffer(v11, qword_1EDE57E00);
        v12 = sub_1DD0DD8EC();
        v13 = sub_1DD0DE6EC();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_1DCAFC000, v12, v13, "Child flow resulted in an error. Moving to error state.", v14, 2u);
          MEMORY[0x1E12A8390](v14, -1, -1);
        }

        *v48 = a1;
        v48[8] = a2 & 1;
        v51 = 5;
        sub_1DCB92D90(a1, a2, 1);
        sub_1DCBECAAC(v48);
      }

      if (!(a1 | a2))
      {
        sub_1DCB8878C();
        if (qword_1EDE4F900 != -1)
        {
          swift_once();
        }

        v32 = sub_1DD0DD8FC();
        __swift_project_value_buffer(v32, qword_1EDE57E00);
        v33 = sub_1DD0DD8EC();
        v34 = sub_1DD0DE6DC();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&dword_1DCAFC000, v33, v34, "Child flow indicates that windowing should proceed.", v35, 2u);
          MEMORY[0x1E12A8390](v35, -1, -1);
        }

        v40[0] = 1;
        v48[0] = 1;
        v51 = 4;
        sub_1DCBF0250(v7, v6, v9, v8, v48);
      }

      if (!(a1 ^ 1 | a2))
      {
        sub_1DCB8878C();
        if (qword_1EDE4F900 != -1)
        {
          swift_once();
        }

        v28 = sub_1DD0DD8FC();
        __swift_project_value_buffer(v28, qword_1EDE57E00);
        v29 = sub_1DD0DD8EC();
        v30 = sub_1DD0DE6DC();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&dword_1DCAFC000, v29, v30, "Child flow indicates that windowing should repeat.", v31, 2u);
          MEMORY[0x1E12A8390](v31, -1, -1);
        }

        *v48 = v41;
        *&v48[16] = *v42;
        *&v48[27] = *&v42[11];
        *&v48[48] = v7;
        *&v49 = v6;
        *(&v49 + 1) = v9;
        v50 = v8;
        v51 = 2;
        sub_1DCB8878C();

        sub_1DCBECAAC(v48);
      }

      sub_1DCB8878C();
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v36 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v36, qword_1EDE57E00);
      v37 = sub_1DD0DD8EC();
      v38 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_1DCAFC000, v37, v38, "Child flow indicates it was cancelled. Moving to cancelled.", v39, 2u);
        MEMORY[0x1E12A8390](v39, -1, -1);
      }

      memset(&v48[8], 0, 48);
      v49 = 0u;
      *v48 = 3;
      v50 = 0;
      v27 = 6;
    }

    else
    {
      sub_1DCB8878C();
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v23 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v23, qword_1EDE57E00);
      v24 = sub_1DD0DD8EC();
      v25 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_1DCAFC000, v24, v25, "Child flow indicates that windowing is complete. Moving to complete state.", v26, 2u);
        MEMORY[0x1E12A8390](v26, -1, -1);
      }

      v40[0] = 1;
      v48[0] = 1;
      v27 = 4;
    }

    v51 = v27;
    sub_1DCBECAAC(v48);
  }

  v15 = v2[3];
  v41 = v2[2];
  *v42 = v15;
  *&v42[16] = v2[4];
  v43 = __dst[6];
  v44 = __dst[7];
  v45 = __dst[8];
  v46 = __dst[9];
  v47 = __dst[10];
  sub_1DCB8878C();
  sub_1DCB0E9D8(&v41, &qword_1ECCA1F08, &qword_1DD0E2900);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v16 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v16, qword_1EDE57E00);
  v17 = sub_1DD0DD8EC();
  v18 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1DCAFC000, v17, v18, "Flow called in unexpected state", v19, 2u);
    MEMORY[0x1E12A8390](v19, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1EF8, &qword_1DD0E28F8);
  sub_1DCBF7DC0(&qword_1ECCA1F00, &qword_1ECCA1EF8, &qword_1DD0E28F8, &unk_1DD10F358);
  v20 = swift_allocError();
  v22 = v21;
  memcpy(v40, v3 + 2, sizeof(v40));
  memmove(v22, v3 + 2, 0x51uLL);
  v22[81] = 0;
  *v48 = v20;
  v48[8] = 0;
  v51 = 5;
  sub_1DCB8878C();
  sub_1DCBECAAC(v48);
}

void sub_1DCBF0250(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v10 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v10, qword_1EDE57E00);
  v11 = sub_1DD0DD8EC();
  v12 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1DCAFC000, v11, v12, "Calculating next windowing move.", v13, 2u);
    MEMORY[0x1E12A8390](v13, -1, -1);
  }

  if (a2)
  {
    if (a4)
    {
      v14 = sub_1DD0DD8EC();
      v15 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_1DCAFC000, v14, v15, "Moving to process next window.", v16, 2u);
        MEMORY[0x1E12A8390](v16, -1, -1);
      }

      v28 = a1;
      v29 = a2;
      v30 = a3;
      v31 = a4;
      v32 = 0;
    }

    else
    {
      v25 = sub_1DD0DD8EC();
      v26 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_1DCAFC000, v25, v26, "Moving to process the last window.", v27, 2u);
        MEMORY[0x1E12A8390](v27, -1, -1);
      }

      v28 = a1;
      v29 = a2;
      LOBYTE(v30) = 0;
      v32 = 1;
    }

    a5 = &v28;
  }

  else
  {
    sub_1DCB8878C();
    v17 = sub_1DD0DD8EC();
    v18 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v19 = 136315138;
      v21 = sub_1DCBF12B0();
      v23 = v22;
      sub_1DCB0E9D8(a5, &qword_1ECCA1F08, &qword_1DD0E2900);
      v24 = sub_1DCB10E9C(v21, v23, &v28);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_1DCAFC000, v17, v18, "There are no next items. Moving to %s.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x1E12A8390](v20, -1, -1);
      MEMORY[0x1E12A8390](v19, -1, -1);
    }

    else
    {

      sub_1DCB0E9D8(a5, &qword_1ECCA1F08, &qword_1DD0E2900);
    }

    sub_1DCB8878C();
  }

  sub_1DCBECAAC(a5);
}

uint64_t sub_1DCBF05C8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 144) = a6;
  *(v7 + 152) = v6;
  *(v7 + 128) = a4;
  *(v7 + 136) = a5;
  *(v7 + 59) = a2;
  *(v7 + 112) = a1;
  *(v7 + 120) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1DCBF05F4, 0, 0);
}

uint64_t sub_1DCBF05F4()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_31_0(v1);

  return sub_1DD0C4898();
}

uint64_t sub_1DCBF0680()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 168) = v3;
  *(v1 + 176) = v4;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCBF076C()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 144);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 59);
  v5 = *(v0 + 176) == 0;
  *(v0 + 192) = 0;
  *(v0 + 64) = v3;
  *(v0 + 72) = v2;
  *(v0 + 80) = 1;
  *(v0 + 88) = v4;
  *(v0 + 89) = 0;
  *(v0 + 96) = 1;
  *(v0 + 60) = 0;
  *(v0 + 104) = 0;
  *(v0 + 105) = v5;
  *(v0 + 106) = 0;

  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 184) = v6;
  *v6 = v7;
  v6[1] = sub_1DCBF086C;
  v8 = *(v0 + 168);
  v9 = *(v0 + 176);
  v10 = *(v0 + 136);
  v11 = *(v0 + 112);

  return sub_1DCBF0A20(v11, (v0 + 64), v10, v1, v8, v9);
}

uint64_t sub_1DCBF086C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCBF0970()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 60);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 59);
  v5 = *(v0 + 176) == 0;

  *(v0 + 16) = v3;
  *(v0 + 24) = v2;
  *(v0 + 32) = 1;
  *(v0 + 40) = v4;
  *(v0 + 48) = 1;
  *(v0 + 56) = v1;
  *(v0 + 57) = v5;
  sub_1DCB0E9D8(v0 + 16, &qword_1ECCA1F10, &qword_1DD0E2918);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_152();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1DCBF0A20(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 376) = a6;
  *(v7 + 384) = v6;
  *(v7 + 360) = a4;
  *(v7 + 368) = a5;
  *(v7 + 344) = a2;
  *(v7 + 352) = a3;
  *(v7 + 336) = a1;
  v8 = a2[1];
  *(v7 + 192) = *a2;
  *(v7 + 208) = v8;
  *(v7 + 219) = *(a2 + 27);
  return MEMORY[0x1EEE6DFA0](sub_1DCBF0A5C, 0, 0);
}

void sub_1DCBF0A5C()
{
  v18 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  sub_1DCB8878C();
  v3 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();
  OUTLINED_FUNCTION_137();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 344);
  if (v5)
  {
    OUTLINED_FUNCTION_151();
    OUTLINED_FUNCTION_114_1();
    v16 = swift_slowAlloc();
    *v1 = 136315138;
    v17[0] = *(v6 + 16);
    *(v17 + 11) = *(v6 + 27);
    v7 = WindowedPaginationParameters.description.getter();
    v9 = v8;
    sub_1DCB0E9D8(v6, &qword_1ECCA1F10, &qword_1DD0E2918);
    v10 = sub_1DCB10E9C(v7, v9, &v16);

    *(v1 + 4) = v10;
    OUTLINED_FUNCTION_88(&dword_1DCAFC000, v11, v12, "Executing window flow with pagination parameters: %s");
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_92_0();
  }

  else
  {

    sub_1DCB0E9D8(v6, &qword_1ECCA1F10, &qword_1DD0E2918);
  }

  v13 = *(v0 + 376);
  v14 = *(v0 + 352);
  v15 = *(v0 + 208);
  *(v0 + 16) = *(v0 + 192);
  *(v0 + 32) = v15;
  *(v0 + 43) = *(v0 + 219);
  *(v0 + 64) = v14;
  *(v0 + 72) = *(v0 + 360);
  *(v0 + 88) = v13;
  *(v0 + 96) = 3;
  sub_1DCB8878C();

  sub_1DCBECAAC((v0 + 16));
}

uint64_t sub_1DCBF0E2C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v4 + 408) = v0;

  if (!v0)
  {
    *(v4 + 416) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void sub_1DCBF0FCC()
{
  OUTLINED_FUNCTION_39();

  OUTLINED_FUNCTION_71_2();
  sub_1DCBECAAC(v0);
}

uint64_t sub_1DCBF1058()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v4 + 432) = v0;

  if (!v0)
  {
    *(v4 + 440) = v1;
  }

  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_152();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void sub_1DCBF120C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_71_2();
  sub_1DCBECAAC(v0);
}

unint64_t sub_1DCBF12B0()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = v1[9];
  switch(*(v1 + 80))
  {
    case 1:
      sub_1DCB8878C();

      v12 = 0x6E69577473616C2ELL;
      break;
    case 2:
      v12 = 0xD000000000000013;
      goto LABEL_6;
    case 3:
      v12 = 0xD000000000000013;
LABEL_6:
      sub_1DCB8878C();

      break;
    case 4:
      v15 = v2;
      v16 = v3;
      v17 = v4;
      v18 = v5;
      v19 = v7;
      v20 = v6;
      v21 = v8;
      v22 = v9;
      v23 = v10;
      v24 = v11;
      v25 = 4;
      sub_1DCB8878C();
      sub_1DCB0E9D8(&v15, &qword_1ECCA1F08, &qword_1DD0E2900);
      v12 = 0x74656C706D6F632ELL;
      break;
    case 5:
      v15 = v2;
      v16 = v3;
      v17 = v4;
      v18 = v5;
      v19 = v7;
      v20 = v6;
      v21 = v8;
      v22 = v9;
      v23 = v10;
      v24 = v11;
      v25 = 5;
      sub_1DCB8878C();
      sub_1DCB0E9D8(&v15, &qword_1ECCA1F08, &qword_1DD0E2900);
      v12 = 0x726F7272652ELL;
      break;
    case 6:
      v13 = v7 | v4 | v6 | v8 | v9 | v10 | v11;
      if (v5 || v3 || v13 | v2)
      {
        if (v5 || v3 || v2 != 1 || v13)
        {
          if (v5 || v3 || v2 != 2 || v13)
          {
            sub_1DCB8878C();
            v12 = 0x6C6C65636E61632ELL;
          }

          else
          {
            sub_1DCB8878C();
            v12 = 0x73756C636E6F632ELL;
          }
        }

        else
        {
          sub_1DCB8878C();
          v12 = 0x69576E696765622ELL;
        }
      }

      else
      {
        sub_1DCB8878C();
        v12 = 0x6E696765622ELL;
      }

      break;
    default:
      sub_1DCB8878C();

      v12 = 0x776F646E69772ELL;
      break;
  }

  return v12;
}

uint64_t sub_1DCBF15F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a3;
  v11 = a4;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v9);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a3);
  type metadata accessor for ActingFlowToFlowShim();
  v7 = swift_allocObject();
  sub_1DCAFF9E8(&v9, v7 + 16);
  return v7;
}

uint64_t sub_1DCBF167C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCBD4678();
}

uint64_t sub_1DCBF171C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB47430;

  return sub_1DCBD3DE8(a1, v4);
}

uint64_t sub_1DCBF17B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB47430;

  return j__OUTLINED_FUNCTION_52_4();
}

uint64_t sub_1DCBF1854(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCBD4704(a1);
}

uint64_t sub_1DCBF18F4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AD3C;

  return sub_1DCBD47B8(a1);
}

uint64_t sub_1DCBF1994()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB47434;

  return j__OUTLINED_FUNCTION_103_2();
}

uint64_t sub_1DCBF1A30()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB47430;

  return j__OUTLINED_FUNCTION_52_4();
}

uint64_t sub_1DCBF1ACC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCBD4858(a1);
}

uint64_t sub_1DCBF1B64()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB47430;

  return j__OUTLINED_FUNCTION_52_4();
}

uint64_t sub_1DCBF1BF8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCBD4A54(a1);
}

uint64_t sub_1DCBF1C98(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB47430;

  return sub_1DCBD3E38(a1);
}

uint64_t sub_1DCBF1D34(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCBD4AF0(a1);
}

uint64_t sub_1DCBF1DD4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB47430;

  return j__OUTLINED_FUNCTION_103_2();
}

uint64_t sub_1DCBF1E70(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCBD4B8C(a1);
}

uint64_t sub_1DCBF1F10()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB47430;

  return j__OUTLINED_FUNCTION_52_4();
}

uint64_t sub_1DCBF1FAC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCBD4C28(a1);
}

uint64_t sub_1DCBF204C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB47430;

  return j__OUTLINED_FUNCTION_52_4();
}

uint64_t sub_1DCBF20E8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCBD4CC4(a1);
}

uint64_t sub_1DCBF2188()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB47430;

  return j__OUTLINED_FUNCTION_52_4();
}

uint64_t sub_1DCBF2224(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCBD4D60(a1);
}

uint64_t sub_1DCBF22C4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB47430;

  return sub_1DCBD3ED0(a1, v4);
}

uint64_t sub_1DCBF2360(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCBD4E14(a1);
}

uint64_t sub_1DCBF2400(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCBDDFA8(a1, a2);
}

uint64_t sub_1DCBF24A0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCBDE104(a1, a2);
}

uint64_t sub_1DCBF2540(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCBDDE4C(a1, a2);
}

uint64_t sub_1DCBF25E0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB47430;

  return sub_1DCBD3F58(a1, v4);
}

uint64_t sub_1DCBF267C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCBD4EC8(a1);
}

uint64_t sub_1DCBF271C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB47430;

  return j__OUTLINED_FUNCTION_52_4();
}

uint64_t sub_1DCBF27B8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCBD4F64(a1);
}

uint64_t sub_1DCBF2858(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB47430;

  return sub_1DCBD3FD0(a1, v4);
}

uint64_t sub_1DCBF28F4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB47430;

  return sub_1DCBD4048(a1, v4);
}

uint64_t sub_1DCBF2990()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB47430;

  return j__OUTLINED_FUNCTION_52_4();
}

uint64_t sub_1DCBF2A2C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_25_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_67_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_6(v1);

  return v4(v3);
}

uint64_t sub_1DCBF2AC4()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_25_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_67_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_6(v1);

  return v4(v3);
}

uint64_t sub_1DCBF2B5C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_25_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_34_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_2(v1);

  return v4(v3);
}

uint64_t sub_1DCBF2BF4()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_25_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_67_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_6(v1);

  return v4(v3);
}

uint64_t sub_1DCBF2C8C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCBD5000(a1);
}

uint64_t sub_1DCBF2D2C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCBDE054(a1, a2, v6);
}

uint64_t sub_1DCBF2DDC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCBDE1B0(a1, a2, v6);
}

uint64_t sub_1DCBF2E8C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AD3C;

  return sub_1DCBDDEF8(a1, a2, v6);
}

uint64_t sub_1DCBF2F3C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB47430;

  return sub_1DCBD40C0(a1, v4);
}

uint64_t sub_1DCBF2FD8()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_25_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_67_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_6(v1);

  return v4(v3);
}

uint64_t sub_1DCBF3070()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_25_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_34_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_2(v1);

  return v4(v3);
}

uint64_t sub_1DCBF3108()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_132();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_8(v1);

  return v4(v3);
}

uint64_t sub_1DCBF3198()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_4(v1);

  return sub_1DCBDE30C(v3, v4);
}

uint64_t sub_1DCBF321C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_132();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;
  v3 = OUTLINED_FUNCTION_20_7();

  return sub_1DCBDE5C0(v3, v4, v5);
}

uint64_t sub_1DCBF32AC()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_4(v1);

  return sub_1DCBDE464(v3, v4);
}

uint64_t sub_1DCBF3330()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_132();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_8(v1);

  return v4(v3);
}

uint64_t sub_1DCBF33C0()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_132();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_8(v1);

  return v4(v3);
}

uint64_t sub_1DCBF3450(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCBD50B4(a1);
}

uint64_t sub_1DCBF34F0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB47430;

  return sub_1DCBD4138(a1, v4);
}

uint64_t sub_1DCBF358C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_25_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_67_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_6(v1);

  return v4(v3);
}

uint64_t sub_1DCBF3624()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_25_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_34_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_2(v1);

  return v4(v3);
}

uint64_t sub_1DCBF36BC()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_4(v1);

  return sub_1DCE7888C(v3, v4);
}

unint64_t sub_1DCBF3744()
{
  result = qword_1EDE481E0;
  if (!qword_1EDE481E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE481E0);
  }

  return result;
}

uint64_t sub_1DCBF3798(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DCBF37E0()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_4(v1);

  return sub_1DCBE40B4(v3, v4);
}

uint64_t sub_1DCBF3864()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_132();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;
  v3 = OUTLINED_FUNCTION_20_7();

  return sub_1DCBE4160(v3, v4, v5);
}

uint64_t sub_1DCBF38F4(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return v3;
}

void sub_1DCBF3900(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    sub_1DD0DCF8C();
  }
}

uint64_t sub_1DCBF390C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_132();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;
  v3 = OUTLINED_FUNCTION_20_7();

  return sub_1DCBE3F54(v3, v4, v5);
}

uint64_t sub_1DCBF399C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_132();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;
  v3 = OUTLINED_FUNCTION_20_7();

  return sub_1DCBE4004(v3, v4, v5);
}

unint64_t sub_1DCBF3A2C()
{
  result = qword_1EDE481E8;
  if (!qword_1EDE481E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE481E8);
  }

  return result;
}

uint64_t sub_1DCBF3A80()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_25_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_67_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_6(v1);

  return v4(v3);
}

uint64_t sub_1DCBF3B10()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_25_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_34_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_2(v1);

  return v4(v3);
}

uint64_t sub_1DCBF3BA8()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_25_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_67_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_6(v1);

  return v4(v3);
}

uint64_t sub_1DCBF3C38()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_25_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_34_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_2(v1);

  return v4(v3);
}

uint64_t sub_1DCBF3CD0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCBD5168(a1);
}

uint64_t sub_1DCBF3D70()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB47430;

  return j__OUTLINED_FUNCTION_52_4();
}

uint64_t sub_1DCBF3E0C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCBD521C(a1);
}