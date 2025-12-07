uint64_t sub_22EE30764()
{
  v0 = type metadata accessor for RecordingOptions.Options(0);
  v1 = swift_projectBox();
  result = swift_beginAccess();
  *(v1 + *(v0 + 112)) = 1;
  return result;
}

uint64_t sub_22EE307CC()
{
  v0 = type metadata accessor for RecordingOptions.Options(0);
  v1 = swift_projectBox();
  result = swift_beginAccess();
  *(v1 + *(v0 + 108)) = 1;
  return result;
}

void sub_22EE30834(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for RecordingOptions.Options(0);
  v6 = swift_projectBox();
  v7 = sub_22EE11334(a1, a2);
  if (v2)
  {
    v22 = v2;
    v8 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94F00, qword_22EE40590);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_5:

      return;
    }

    v20[0] = v17;
    v20[1] = v18;
    v21 = v19;
    type metadata accessor for KTraceRecordError(0);
    sub_22EE316BC(&qword_27DA94D80, type metadata accessor for KTraceRecordError, &unk_22EE43AF0);
    swift_allocError();
    v10 = v9;
    v11 = sub_22EE10C98();
    if (v12)
    {
      v13 = v11;
      v14 = v12;

      sub_22EE31668(v20);
      *v10 = 0xD000000000000014;
      v10[1] = 0x800000022EE4B620;
      v10[2] = v13;
      v10[3] = v14;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_5;
    }
  }

  else
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      v15 = v7;
      swift_beginAccess();
      v16 = v6 + *(v5 + 84);
      *v16 = v15;
      *(v16 + 8) = 0;
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_22EE30A04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordingOptions.Options(0);
  v5 = swift_projectBox();
  swift_beginAccess();
  v6 = (v5 + *(v4 + 76));
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_22EE30A90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordingOptions.Options(0);
  v5 = swift_projectBox();
  swift_beginAccess();
  v6 = (v5 + *(v4 + 80));
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_22EE30B1C()
{
  v0 = type metadata accessor for RecordingOptions.Options(0);
  v1 = swift_projectBox();
  result = swift_beginAccess();
  *(v1 + *(v0 + 88)) = 1;
  return result;
}

uint64_t sub_22EE30B84(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for RecordingOptions.Options(0);
  result = swift_projectBox();
  v6 = HIBYTE(a2) & 0xF;
  v7 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v36[0] = a1;
      v36[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (a1 == 43)
      {
        if (!v6)
        {
LABEL_73:
          __break(1u);
          return result;
        }

        if (--v6)
        {
          LODWORD(v11) = 0;
          v22 = v36 + 1;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              break;
            }

            v24 = 10 * v11;
            if (v24 != v24)
            {
              break;
            }

            LODWORD(v11) = v24 + v23;
            if (__OFADD__(v24, v23))
            {
              break;
            }

            ++v22;
            if (!--v6)
            {
              goto LABEL_62;
            }
          }
        }
      }

      else if (a1 == 45)
      {
        if (!v6)
        {
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
          goto LABEL_73;
        }

        if (--v6)
        {
          LODWORD(v11) = 0;
          v15 = v36 + 1;
          while (1)
          {
            v16 = *v15 - 48;
            if (v16 > 9)
            {
              break;
            }

            v17 = 10 * v11;
            if (v17 != v17)
            {
              break;
            }

            LODWORD(v11) = v17 - v16;
            if (__OFSUB__(v17, v16))
            {
              break;
            }

            ++v15;
            if (!--v6)
            {
              goto LABEL_62;
            }
          }
        }
      }

      else if (v6)
      {
        LODWORD(v11) = 0;
        v27 = v36;
        while (1)
        {
          v28 = *v27 - 48;
          if (v28 > 9)
          {
            break;
          }

          v29 = 10 * v11;
          if (v29 != v29)
          {
            break;
          }

          LODWORD(v11) = v29 + v28;
          if (__OFADD__(v29, v28))
          {
            break;
          }

          ++v27;
          if (!--v6)
          {
            goto LABEL_62;
          }
        }
      }
    }

    else
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        v6 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        v35 = result;
        v6 = sub_22EE3C8C4();
        result = v35;
      }

      v9 = *v6;
      if (v9 == 43)
      {
        if (v7 >= 1)
        {
          v18 = v7 - 1;
          if (v7 != 1)
          {
            LODWORD(v11) = 0;
            if (!v6)
            {
              goto LABEL_62;
            }

            v19 = (v6 + 1);
            while (1)
            {
              v20 = *v19 - 48;
              if (v20 > 9)
              {
                break;
              }

              v21 = 10 * v11;
              if (v21 != v21)
              {
                break;
              }

              LODWORD(v11) = v21 + v20;
              if (__OFADD__(v21, v20))
              {
                break;
              }

              ++v19;
              if (!--v18)
              {
LABEL_53:
                LOBYTE(v6) = 0;
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

        goto LABEL_72;
      }

      if (v9 == 45)
      {
        if (v7 >= 1)
        {
          v10 = v7 - 1;
          if (v7 != 1)
          {
            LODWORD(v11) = 0;
            if (!v6)
            {
              goto LABEL_62;
            }

            v12 = (v6 + 1);
            while (1)
            {
              v13 = *v12 - 48;
              if (v13 > 9)
              {
                break;
              }

              v14 = 10 * v11;
              if (v14 != v14)
              {
                break;
              }

              LODWORD(v11) = v14 - v13;
              if (__OFSUB__(v14, v13))
              {
                break;
              }

              ++v12;
              if (!--v10)
              {
                goto LABEL_53;
              }
            }
          }

          goto LABEL_61;
        }

        __break(1u);
        goto LABEL_71;
      }

      if (v7)
      {
        LODWORD(v11) = 0;
        if (!v6)
        {
          goto LABEL_62;
        }

        while (1)
        {
          v25 = *v6 - 48;
          if (v25 > 9)
          {
            break;
          }

          v26 = 10 * v11;
          if (v26 != v26)
          {
            break;
          }

          LODWORD(v11) = v26 + v25;
          if (__OFADD__(v26, v25))
          {
            break;
          }

          ++v6;
          if (!--v7)
          {
            goto LABEL_53;
          }
        }
      }
    }

LABEL_61:
    LODWORD(v11) = 0;
    LOBYTE(v6) = 1;
LABEL_62:
    v37 = v6;
    if (v6)
    {
LABEL_63:
      type metadata accessor for KTraceRecordError(0);
      sub_22EE316BC(&qword_27DA94D80, type metadata accessor for KTraceRecordError, &unk_22EE43AF0);
      swift_allocError();
      *v30 = 0xD000000000000015;
      v30[1] = 0x800000022EE4B600;
      v30[2] = a1;
      v30[3] = a2;
      swift_storeEnumTagMultiPayload();

      return swift_willThrow();
    }

    goto LABEL_65;
  }

  v31 = result;

  v11 = sub_22EE2E454(a1, a2, 10);

  result = v31;
  if ((v11 & 0x100000000) != 0)
  {
    goto LABEL_63;
  }

LABEL_65:
  if ((v11 - 64) < 0xFFFFFFC4)
  {
    type metadata accessor for KTraceRecordError(0);
    sub_22EE316BC(&qword_27DA94D80, type metadata accessor for KTraceRecordError, &unk_22EE43AF0);
    swift_allocError();
    *v32 = v11;
    *(v32 + 4) = 0x3F00000004;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v33 = result;
  result = swift_beginAccess();
  v34 = v33 + *(v4 + 92);
  *v34 = v11;
  *(v34 + 4) = 0;
  return result;
}

uint64_t sub_22EE30FC4()
{
  v0 = type metadata accessor for RecordingOptions.Options(0);
  v1 = swift_projectBox();
  result = swift_beginAccess();
  *(v1 + *(v0 + 72)) = 0;
  return result;
}

uint64_t sub_22EE31028(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22EE31088(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_22EE310F4()
{
  result = qword_27DA95A18;
  if (!qword_27DA95A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95A18);
  }

  return result;
}

unint64_t sub_22EE3114C()
{
  result = qword_27DA95A20;
  if (!qword_27DA95A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95A20);
  }

  return result;
}

unint64_t sub_22EE311A4()
{
  result = qword_27DA95A28;
  if (!qword_27DA95A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95A28);
  }

  return result;
}

unint64_t sub_22EE311FC()
{
  result = qword_27DA95A30;
  if (!qword_27DA95A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95A30);
  }

  return result;
}

void sub_22EE31278(uint64_t a1)
{
  sub_22EE31704(319, &qword_27DA94C10, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for RecordingOptions.Options(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22EE31348(uint64_t a1)
{
  sub_22EE1D6CC(319);
  if (v1 <= 0x3F)
  {
    sub_22EE31704(319, &qword_27DA94C18, &type metadata for StartWait, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_22EE31704(319, &qword_27DA94C20, &type metadata for EndWait, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_22EE31704(319, &qword_27DA94C08, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_22EE31704(319, &qword_27DA94BE8, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_22EE31704(319, &qword_27DA94BE0, MEMORY[0x277D84D38], MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_22EE31704(319, &qword_27DA94C10, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
              if (v7 <= 0x3F)
              {
                sub_22EE31704(319, &qword_27DA94C28, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
                if (v8 <= 0x3F)
                {
                  sub_22EE31704(319, &qword_27DA94BF8, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
                  if (v9 <= 0x3F)
                  {
                    sub_22EE31704(319, &qword_27DA94BF0, MEMORY[0x277D849A8], MEMORY[0x277D83D88]);
                    if (v10 <= 0x3F)
                    {
                      sub_22EE159A8();
                      if (v11 <= 0x3F)
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
      }
    }
  }
}

uint64_t sub_22EE316BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22EE31704(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_22EE31758()
{
  v0 = sub_22EE3BCB4();
  __swift_allocate_value_buffer(v0, qword_27DA9C778);
  __swift_project_value_buffer(v0, qword_27DA9C778);
  return sub_22EE3BBF4();
}

uint64_t sub_22EE317BC()
{
  v0 = sub_22EE3BCB4();
  __swift_allocate_value_buffer(v0, qword_27DA9C798);
  __swift_project_value_buffer(v0, qword_27DA9C798);
  return sub_22EE3BBF4();
}

uint64_t sub_22EE31820()
{
  v0 = sub_22EE3BCB4();
  __swift_allocate_value_buffer(v0, qword_27DA9C7B8);
  __swift_project_value_buffer(v0, qword_27DA9C7B8);
  return sub_22EE3BBF4();
}

uint64_t sub_22EE31884()
{
  v0 = sub_22EE3BCB4();
  __swift_allocate_value_buffer(v0, qword_27DA9C7D8);
  __swift_project_value_buffer(v0, qword_27DA9C7D8);
  return sub_22EE3BBF4();
}

uint64_t sub_22EE318E8()
{
  v0 = sub_22EE3BCB4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v2, qword_27DA9C978);
  __swift_project_value_buffer(v0, qword_27DA9C978);
  if (qword_27DA9C770 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27DA9C778);
  (*(v1 + 16))(v4, v5, v0);
  sub_22EE3BC34();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_22EE31A60()
{
  v0 = sub_22EE3BCB4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v2, qword_27DA9C990);
  __swift_project_value_buffer(v0, qword_27DA9C990);
  if (qword_27DA9C790 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27DA9C798);
  (*(v1 + 16))(v4, v5, v0);
  sub_22EE3BC34();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_22EE31BD8()
{
  v0 = sub_22EE3BCB4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v2, qword_27DA9C9A8);
  __swift_project_value_buffer(v0, qword_27DA9C9A8);
  if (qword_27DA9C7B0 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27DA9C7B8);
  (*(v1 + 16))(v4, v5, v0);
  sub_22EE3BC34();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_22EE31D50()
{
  v0 = sub_22EE3BCB4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v2, qword_27DA9C9C0);
  __swift_project_value_buffer(v0, qword_27DA9C9C0);
  if (qword_27DA9C770 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27DA9C778);
  (*(v1 + 16))(v4, v5, v0);
  sub_22EE3BC34();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_22EE31ED0()
{
  v0 = sub_22EE3BCB4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v2, qword_27DA9C9D8);
  __swift_project_value_buffer(v0, qword_27DA9C9D8);
  if (qword_27DA9C790 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27DA9C798);
  (*(v1 + 16))(v4, v5, v0);
  sub_22EE3BC34();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_22EE32050()
{
  v0 = sub_22EE3BCB4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v2, qword_27DA9C9F0);
  __swift_project_value_buffer(v0, qword_27DA9C9F0);
  if (qword_27DA9C7B0 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27DA9C7B8);
  (*(v1 + 16))(v4, v5, v0);
  sub_22EE3BC34();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_22EE321D0()
{
  v0 = sub_22EE3BCB4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v2, qword_27DA9CA08);
  __swift_project_value_buffer(v0, qword_27DA9CA08);
  if (qword_27DA9C7D0 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27DA9C7D8);
  (*(v1 + 16))(v4, v5, v0);
  sub_22EE3BC34();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_22EE323CC(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_22EE3BCB4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v10, a2);
  __swift_project_value_buffer(v8, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, a4);
  (*(v9 + 16))(v12, v13, v8);
  sub_22EE3BC34();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_22EE3254C(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_22EE3BCB4();

  return __swift_project_value_buffer(v4, a2);
}

void ktrace_postprocess_file_internal_cold_2(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_22ED7A000, a2, OS_LOG_TYPE_ERROR, "failed to start ktrace session to postprocess file (%{errno}d)", v2, 8u);
}

void ktariadne_read_times_cold_1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_22ED7A000, a2, OS_LOG_TYPE_ERROR, "unable to decode artrace traceinfo extended chunk (%{errno}d)", v2, 8u);
}

void sysctlbyname_string_cold_1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sysctlbyname_string_cold_3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sysctl_number_internal_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void create_dict_cold_2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void dict_string_cold_1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void dict_number_internal_cold_1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void dict_number_internal_cold_2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void dict_BOOL_cold_1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void dict_BOOL_cold_2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void dict_data_cold_1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void dict_number_arr_internal_cold_1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void dict_number_arr_internal_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void dict_set_string_cold_1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void dict_set_number_cold_1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ktrace_chunk_copy_plist_cold_1(__CFError **a1, int a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = utf8_cferror(*a1);
  v6 = 136315394;
  v7 = v5;
  v8 = 1024;
  v9 = a2;
  _os_log_error_impl(&dword_22ED7A000, a3, OS_LOG_TYPE_ERROR, "failed to decode plist chunk: %s (%{errno}d)", &v6, 0x12u);
}

void kteventnames_append_cold_1(char a1)
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void append_eventnames_from_path_cold_1(uint64_t a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = a1;
  v5 = 1024;
  v6 = a2;
  _os_log_error_impl(&dword_22ED7A000, log, OS_LOG_TYPE_ERROR, "failed to append codes file: %s (%{errno}d)", &v3, 0x12u);
}

void config_current_kperf_cold_2()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void config_current_kperf_cold_3()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void config_current_kperf_cold_5()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void config_current_kperf_cold_6()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void ktrace_file_append_log_content_from_store_cold_1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  v3 = v0;
  _os_log_error_impl(&dword_22ED7A000, v1, OS_LOG_TYPE_ERROR, "exception occurred while setting logging predicate: %@ (%{errno}d)", v2, 0x12u);
}

void __ktrace_file_append_log_content_from_store_block_invoke_cold_1(void *a1, int a2, NSObject *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 localizedDescription];
  OUTLINED_FUNCTION_2_0();
  v6 = a2;
  _os_log_error_impl(&dword_22ED7A000, a3, OS_LOG_TYPE_ERROR, "failed to prepare log source: %@ (%{errno}d)", v5, 0x12u);
}

void ktrace_file_open_internal_cold_2()
{
  v9 = *MEMORY[0x277D85DE8];
  LODWORD(v7) = 134218240;
  *(&v7 + 4) = 288;
  OUTLINED_FUNCTION_7();
  *v8 = v0;
  OUTLINED_FUNCTION_10(&dword_22ED7A000, v1, v2, "failed to read V2 header of %zu bytes (%{errno}d)", v3, v4, v5, v6, v7, DWORD2(v7), *&v8[2], v9);
}

void ktrace_file_open_internal_cold_3()
{
  OUTLINED_FUNCTION_9(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ktrace_file_open_internal_cold_4()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ktrace_file_open_internal_cold_7()
{
  v9 = *MEMORY[0x277D85DE8];
  LODWORD(v7) = 134218240;
  *(&v7 + 4) = 4;
  OUTLINED_FUNCTION_7();
  *v8 = v0;
  OUTLINED_FUNCTION_10(&dword_22ED7A000, v1, v2, "cannot read %zu bytes at offset 0 to parse version 0 header (%{errno}d)", v3, v4, v5, v6, v7, DWORD2(v7), *&v8[2], v9);
}

void ktrace_file_open_internal_cold_8()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ktrace_chunk_array_next_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_22ED7A000, a2, OS_LOG_TYPE_DEBUG, "no more chunks to return from file, next position %zu", &v2, 0xCu);
}

void ktrace_chunk_array_next_cold_2()
{
  OUTLINED_FUNCTION_9(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void ktrace_chunk_array_next_cold_3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ktrace_chunk_array_next_cold_4()
{
  OUTLINED_FUNCTION_9(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void ktrace_chunk_array_next_cold_8()
{
  OUTLINED_FUNCTION_9(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void ktrace_file_append_data_cold_3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ktrace_file_append_file_cold_1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ktrace_file_append_file_cold_2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ktrace_file_append_file_cold_3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ktrace_file_append_file_cold_4()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ktrace_file_append_start_internal_cold_3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_22ED7A000, a2, OS_LOG_TYPE_DEBUG, "aligning appended chunk by %zu bytes", &v2, 0xCu);
}

void ktrace_file_append_start_internal_cold_4()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ktrace_file_align_next_cold_4(unsigned __int8 a1)
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void ktrace_file_header_append_chunk_cold_1(uint64_t a1)
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void ktrace_file_append_live_ktrace_cold_3(int a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  __error();
  OUTLINED_FUNCTION_11();
  v5 = 1024;
  v6 = a1;
  _os_log_error_impl(&dword_22ED7A000, a2, OS_LOG_TYPE_ERROR, "cannot seek to end of file after writing events %d (%{errno}d)", v4, 0xEu);
}

void ktrace_file_append_live_ktrace_transformed_cold_3()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_22ED7A000, v0, OS_LOG_TYPE_DEBUG, "starting to read for %u ms", v1, 8u);
}

void ktrace_file_write_header_system_default_cold_2()
{
  OUTLINED_FUNCTION_9(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void parse_v1_file_cold_2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void parse_v1_file_cold_6()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void parse_v1_file_cold_10()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void parse_v3_header_cold_1()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void parse_v3_header_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void parse_v3_header_cold_3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __parse_artrace_file_block_invoke_cold_4()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __parse_artrace_file_block_invoke_cold_5()
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = 0;
  OUTLINED_FUNCTION_7();
  *v8 = v0;
  OUTLINED_FUNCTION_10(&dword_22ED7A000, v1, v2, "size of artrace extended trace info block is %llu (%{errno}d)", v3, v4, v5, v6, 134218240, v7, *&v8[2], v9);
}

void synthesize_thread_map_chunk_cold_7()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void flatbuffers::FlatBufferBuilder::GetBufferPointer()
{
  __assert_rtn("Finished", "flatbuffers.h", 1321, "finished");
}

{
  __assert_rtn("data", "flatbuffers.h", 1020, "cur_");
}

void flatbuffers::FlatBufferBuilder::NotNested()
{
  __assert_rtn("NotNested", "flatbuffers.h", 1436, "!num_field_loc");
}

{
  __assert_rtn("NotNested", "flatbuffers.h", 1434, "!nested");
}

void flatbuffers::vector_downward::ensure_space()
{
  __assert_rtn("ensure_space", "flatbuffers.h", 996, "size() < FLATBUFFERS_MAX_BUFFER_SIZE");
}

{
  __assert_rtn("ensure_space", "flatbuffers.h", 992, "cur_ >= scratch_ && scratch_ >= buf_");
}

void flatbuffers::FlatBufferBuilder::EndTable()
{
  __assert_rtn("EndTable", "flatbuffers.h", 1452, "nested");
}

{
  __assert_rtn("EndTable", "flatbuffers.h", 1478, "!ReadScalar<voffset_t>(buf_.data() + field_location->id)");
}

{
  __assert_rtn("scratch_data", "flatbuffers.h", 1025, "buf_");
}

{
  __assert_rtn("scratch_end", "flatbuffers.h", 1030, "scratch_");
}

{
  __assert_rtn("EndTable", "flatbuffers.h", 1467, "table_object_size < 0x10000");
}

void _session_start_file_cold_1(int *a1, int *a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *a2;
  v5[0] = 67109376;
  v5[1] = v3;
  v6 = 1024;
  v7 = v4;
  _os_log_debug_impl(&dword_22ED7A000, log, OS_LOG_TYPE_DEBUG, "no timebase found in the file; using supplemental timebase (%d / %d)", v5, 0xEu);
}

void _session_start_live_cold_7(uint64_t *a1, int a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = 138412546;
  v5 = v3;
  v6 = 1024;
  v7 = a2;
  _os_log_error_impl(&dword_22ED7A000, log, OS_LOG_TYPE_ERROR, "failed to start tracing with providers: %@ (%{errno}d)", &v4, 0x12u);
}

void _session_start_live_cold_13(int a1)
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void __drain_events_block_block_invoke_cold_1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v3 = 1024;
  v4 = v0;
  _os_log_error_impl(&dword_22ED7A000, v1, OS_LOG_TYPE_ERROR, "trace collection failed: %d (%{errno}d)", v2, 0xEu);
}

void __drain_events_block_block_invoke_cold_4(int a1, int a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = 136315394;
  v6 = strerror(a1);
  v7 = 1024;
  v8 = a2;
  _os_log_error_impl(&dword_22ED7A000, a3, OS_LOG_TYPE_ERROR, "trace collection failed: %s (%{errno}d)", &v5, 0x12u);
}

void ktrace::RingBufferImpl::handleTracepoint()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "WARNING: The maximum ring buffer size has been reached. The trace will not be able to cover the full requested ring buffer time. (%{errno}d)", v2, v3, v4, v5);
}

{
  __assert_rtn("handleTracepoint", "time_ringbuffer.cpp", 492, "nextChunk");
}

void ktrace::RingBufferImpl::handleCompletion()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "ERROR: The trace buffer has lost samples. This is currently not supported by the UI. Run with --help-dropped-events for additional help. (%{errno}d)", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "ERROR: Failed to create kdebug events chunk in output file (%{errno}d)", v2, v3, v4, v5);
}

void ktrace::RingBufferImpl::RingBufferImpl()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "ERROR: Couldn't allocate ring buffer. (%{errno}d)", v2, v3, v4, v5);
}

void _session_teardown_cold_1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_22ED7A000, a2, OS_LOG_TYPE_ERROR, "could not find last timestamp, not writing summary chunk (%{errno}d)", v2, 8u);
}

void ktrace_start_cold_1(unsigned __int8 *a1)
{
  atomic_load(a1);
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void ktrace_file_append_ioreg_cold_1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_22ED7A000, a2, OS_LOG_TYPE_ERROR, "error writing ioreg plist (%{errno}d)", v2, 8u);
}

void ktrace_machine_create_current_cold_4(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_22ED7A000, log, OS_LOG_TYPE_DEBUG, "ignoring CPU due to missing logical-cpu-id property", buf, 2u);
}

void ktrace_machine_fill_name_cold_2(void *a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *a1;
  *&v3[12] = 1024;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_3(&dword_22ED7A000, a2, a3, "cannot determine if current task is entitled to user-assigned device name: %@ (%{errno}d)", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

void ktrace_machine_create_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 136315394;
  *&v3[4] = a1;
  *&v3[12] = 1024;
  *&v3[14] = a2;
}

void ktrace_start_writing_fd_cold_2(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_22ED7A000, a2, OS_LOG_TYPE_ERROR, "unable to create output ktrace_file when starting to trace (%{errno}d)", v2, 8u);
}

void ktrace_start_writing_fd_cold_3(int a1)
{
  OUTLINED_FUNCTION_0_2(a1);
  _os_crash();
  __break(1u);
}

void ktrace_start_writing_file_cold_1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_22ED7A000, a2, OS_LOG_TYPE_ERROR, "unable to open output trace file (%{errno}d)", v2, 8u);
}

void _session_ensure_uuidmap_cold_1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_22ED7A000, a2, OS_LOG_TYPE_ERROR, "failed to get ktrace_machine_t for session. (%{errno}d)", v2, 8u);
}

void convert_events_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_22ED7A000, a2, OS_LOG_TYPE_DEBUG, "did not convert data, provided data with size %zu", &v2, 0xCu);
}

void ktrace_iter_init_chunk_cold_1(const __CFData *a1, uint64_t *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  Length = CFDataGetLength(a1);
  v6 = *a2;
  v7 = 134218240;
  v8 = Length;
  v9 = 2048;
  v10 = v6;
  _os_log_debug_impl(&dword_22ED7A000, a3, OS_LOG_TYPE_DEBUG, "decompressed %zu bytes, but expected %zu", &v7, 0x16u);
}

void ktrace_uuid_map_create_cold_2()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void ktrace_address_space_append()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5_0(&dword_22ED7A000, v0, v1, "refusing to append symbol owner with a null uuid to address space!\n", v2, v3, v4, v5);
}

void ktrace_address_space_from_stackshot()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5_0(&dword_22ED7A000, v0, v1, "bad stackshot: no STACKSHOT_KCTYPE_TASK_SNAPSHOT or pid is -1", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5_0(&dword_22ED7A000, v0, v1, "bad stackshot: unbalanced containers!", v2, v3, v4, v5);
}

void ktrace_address_space_from_stackshot(_BYTE *a1, _BYTE *a2)
{
  OUTLINED_FUNCTION_2(a1, a2);
  OUTLINED_FUNCTION_10_0();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 2u);
}

void ktrace_uuid_map_learn_tailspin_process_info_with_chunk_cold_3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_13(&dword_22ED7A000, v0, v1, "tailspin process info chunk invalid pid (%ld), ignoring", v2);
}

void ktrace_uuid_map_learn_inodes_with_chunk_cold_3(__CFError **a1)
{
  utf8_cferror(*a1);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_14(v1, v2, v3, v4, v5);
}

void ktrace_uuid_map_read_process_info_dict()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5_0(&dword_22ED7A000, v0, v1, "process info dict has no pid", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5_0(&dword_22ED7A000, v0, v1, "process info dict has invalid uuid", v2, v3, v4, v5);
}

{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_13(&dword_22ED7A000, v0, v1, "process info dict segment has invalid length: %@", v2);
}

{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5_0(&dword_22ED7A000, v0, v1, "process info dict segment has no length", v2, v3, v4, v5);
}

{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_13(&dword_22ED7A000, v0, v1, "process info dict segment has invalid address: %@", v2);
}

{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5_0(&dword_22ED7A000, v0, v1, "process info dict segment has no address", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5_0(&dword_22ED7A000, v0, v1, "process info dict segment has no name", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5_0(&dword_22ED7A000, v0, v1, "process info dict image has no uuid", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5_0(&dword_22ED7A000, v0, v1, "process info dict has no images", v2, v3, v4, v5);
}

void dyldtp_decode_window_update()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_2(&dword_22ED7A000, v0, v1, "DBG_DYLD decode error.  UUID high bits cut off.  rdar://problem/53183775", v2, v3, v4, v5);
}

{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_14(&dword_22ED7A000, v0, v1, "ignoring DBG_DYLD tracepoint with a threadid of -1, at time %llu", v2);
}

void ___Z31ktrace_uuid_map_update_internalP15ktrace_uuid_mapP14ktrace_sessionP12ktrace_pointbbU13block_pointerFv12PrepassOpRefE_block_invoke_2_cold_3(uint64_t a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  v4 = *(a2 + 48);
  *buf = 136315394;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = v4;
  _os_log_error_impl(&dword_22ED7A000, log, OS_LOG_TYPE_ERROR, "missing dyld unload event for uuid %s at address %llx rdar://problem/54088896", buf, 0x16u);
}

uint64_t make_image_summary(void *a1, const char *a2, uint64_t a3, uint64_t a4, char *a5)
{
  bzero(a1, 0x801uLL);
  v8 = strlen(a2);
  if (v8 >= 0x400)
  {
    v9 = 1024;
  }

  else
  {
    v9 = v8;
  }

  if (v8)
  {
    v10 = 2049;
    v11 = a1;
    do
    {
      v12 = *a2++;
      snprintf(v11, v10, "%0hhx", v12);
      v11 += 2;
      v10 -= 2;
      --v9;
    }

    while (v9);
  }

  CSSymbolOwnerGetSymbolicator();
  if (CSIsNull())
  {
    Pid = -1;
  }

  else
  {
    Pid = CSSymbolicatorGetPid();
  }

  result = snprintf(a5, 0xC00uLL, "non-UTF-8 path: %s, pid: %d", a1, Pid);
  qword_27DA95A50 = a5;
  __break(1u);
  return result;
}

void make_image_summary(uint64_t a1, uint64_t a2)
{
  CSSymbolOwnerGetPath();
  CSSymbolOwnerGetName();
  OUTLINED_FUNCTION_9_0();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0x16u);
}

void ktrace_uuid_map_postprocess_file_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_15();
  _os_log_debug_impl(&dword_22ED7A000, v0, OS_LOG_TYPE_DEBUG, "no CPU count found in file, using %llu", v1, 0xCu);
}

void __ktrace_uuid_map_postprocess_file_block_invoke_7_cold_1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void __ktrace_uuid_map_postprocess_file_block_invoke_7_cold_2()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void ktrace_make_symbolicator(uint64_t a1, unsigned __int8 *a2)
{
  describe2(a1, a2);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

{
  describe2(a1, a2);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __ktrace_dsym_search_configuration_create_with_plist_block_invoke_cold_1(const __CFString *a1)
{
  utf8(a1);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_14(v1, v2, v3, v4, v5);
}

void ___ZL13visit_processP16operating_systemj_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void ___ZL13visit_processP16operating_systemj_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void ___ZL13visit_processP16operating_systemj_block_invoke_cold_3()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void ___ZL27ktrace_add_symbols_for_uuidP21symbolication_contextP11UUIDContext_block_invoke_cold_1(uint64_t *a1, unsigned __int8 **a2)
{
  describe2(*a1, *a2);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void ___ZL27ktrace_add_symbols_for_uuidP21symbolication_contextP11UUIDContext_block_invoke_207_cold_1(uint64_t *a1, unsigned __int8 **a2)
{
  describe2(*a1, *a2);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void ktrace_find_executable()
{
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_14(v1, v2, v3, v4, v5);
}

{
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13(v1, v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_14(&dword_22ED7A000, v0, v1, "failed to parse output from command: %s\n", v2);
}

{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5_0(&dword_22ED7A000, v0, v1, "fdopen failed!\n", v2, v3, v4, v5);
}

void ktrace_find_executable(int *a1)
{
  strerror(*a1);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_14(v1, v2, v3, v4, v5);
}

void ktrace_find_executable(const __CFString *a1)
{
  utf8(a1);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void ktrace_find_executable(FILE *a1)
{
  v1 = ferror(a1);
  strerror(v1);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13(v2, v3, v4, v5, v6);
}

void ktrace_find_executable(uint64_t a1, unsigned __int8 *a2)
{
  describe2(a1, a2);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void ktrace_find_arch_with_default(uint64_t a1, unsigned __int8 *a2)
{
  describe2(a1, a2);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void ktrace_find_segment_count(uint64_t a1, unsigned __int8 *a2)
{
  describe2(a1, a2);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void ktrace_find_image_type(uint64_t a1, unsigned __int8 *a2)
{
  describe2(a1, a2);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void ktrace_iterate_segments(uint64_t a1, uint64_t a2)
{
  *a2 = 136315138;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_10_0();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);
}

void ktrace_find_base_address(uint64_t a1, unsigned __int8 *a2)
{
  describe2(a1, a2);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void flatbuffers::IterateObject()
{
  __assert_rtn("InlineSize", "minireflect.h", 99, "false");
}

{
  __assert_rtn("InlineSize", "minireflect.h", 101, "false");
}

void flatbuffers::IterateValue()
{
  __assert_rtn("IterateValue", "minireflect.h", 227, "false");
}

{
  __assert_rtn("Get", "flatbuffers.h", 279, "i < size()");
}

{
  __assert_rtn("IterateValue", "minireflect.h", 200, "prev_val");
}

void trace_parse_filter_cold_2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void trace_parse_filter_cold_3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void trace_parse_filter_cold_4()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void trace_parse_filter_cold_5()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void trace_parse_filter_cold_6()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void trace_parse_filter_cold_7()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void trace_parse_filter_cold_8()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void trace_set_flags_cold_1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void vfs_trace_paths_cold_1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78E8]();
}

{
  return MEMORY[0x2821F78F8]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7920]();
}

{
  return MEMORY[0x2821F7928]();
}

{
  return MEMORY[0x2821F7930]();
}

{
  return MEMORY[0x2821F7938]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}