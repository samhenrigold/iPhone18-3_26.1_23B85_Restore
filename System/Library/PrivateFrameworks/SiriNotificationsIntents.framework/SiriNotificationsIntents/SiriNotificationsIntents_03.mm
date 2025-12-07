uint64_t sub_268509594(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_26854C6B4(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_2685096D4(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, void, uint64_t))
{
  v9 = a2();
  v10 = (a2)(*v4);
  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    __break(1u);
    goto LABEL_8;
  }

  a3(result, 1);
  v13 = *v4;
  v14 = *v4 & 0xFFFFFFFFFFFFFF8;
  a4(v14 + 8 * *(v14 + 0x10) + 32, (*(v14 + 0x18) >> 1) - *(v14 + 0x10), a1);
  v16 = v15;

  if (v16 < v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v16 < 1)
  {
LABEL_6:
    *v4 = v13;
    return result;
  }

  v17 = *(v14 + 16);
  v11 = __OFADD__(v17, v16);
  v18 = v17 + v16;
  if (!v11)
  {
    *(v14 + 16) = v18;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2685097C8(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t (*a3)(void))
{
  v5 = *(a1 + 16);
  v6 = *(*v3 + 16);
  result = v6 + v5;
  if (__OFADD__(v6, v5))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  a2(result, 1);
  v9 = *v3;
  if (!*(a1 + 16))
  {

    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = a3(0);
  if (v10 < v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_8:
    *v3 = v9;
    return result;
  }

  v11 = *(v9 + 16);
  v12 = __OFADD__(v11, v5);
  v13 = v11 + v5;
  if (!v12)
  {
    *(v9 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_2685098E0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_2685690A0();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_2684DEAF0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for AnnounceNotification(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_268509BC8(&qword_280283218, &qword_280283210, &qword_26856C9B8);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283210, &qword_26856C9B8);
          v9 = sub_2684DE984(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_268509A54(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_2685690A0();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_2684DEAF0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_2684DB414();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_268509BC8(&qword_280283228, &qword_280283220, &unk_26856C9C0);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283220, &unk_26856C9C0);
          v9 = sub_2684DE9E0(v12, i, a3);
          v11 = *v10;
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_268509BC8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_268509C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, void *__src)
{
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5 & 1;
  *(v6 + 49) = HIBYTE(a5) & 1;
  memcpy((v6 + 56), __src, 0x80uLL);
  *(v6 + 184) = 0;
  return v6;
}

uint64_t sub_268509C78()
{
  OUTLINED_FUNCTION_5();
  v1[53] = v2;
  v1[54] = v0;
  v3 = sub_2685689F0();
  v1[55] = v3;
  v1[56] = *(v3 - 8);
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268509D64, 0, 0);
}

uint64_t sub_268509D64()
{
  v82 = v0;
  v1 = v0[54];
  v2 = sub_2684F44A0();
  v3 = v2;
  if (*(v1 + 184))
  {
    if (*(v1 + 184) == 1)
    {
      if (qword_280282960 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_280282960);
      }

      v5 = v0[56];
      v4 = v0[57];
      v6 = v0[55];
      v7 = __swift_project_value_buffer(v6, qword_28028B348);
      (*(v5 + 16))(v4, v7, v6);
      v8 = sub_2685689E0();
      v9 = sub_268568DE0();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = OUTLINED_FUNCTION_16_0();
        *v10 = 0;
        _os_log_impl(&dword_2684CA000, v8, v9, "#RNPatternHighlightsFlow RNReadNotificationHighlightsFlow .readingHighlights, this should never be called", v10, 2u);
        OUTLINED_FUNCTION_2();
      }

      v12 = v0[56];
      v11 = v0[57];
      v13 = v0[55];

      (*(v12 + 8))(v11, v13);
      goto LABEL_31;
    }
  }

  else
  {
    if (v2)
    {
      if (qword_280282960 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_280282960);
      }

      v14 = v0[61];
      v15 = v0[55];
      v16 = v0[56];
      v17 = __swift_project_value_buffer(v15, qword_28028B348);
      (*(v16 + 16))(v14, v17, v15);
      v18 = sub_2685689E0();
      v19 = sub_268568DC0();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = OUTLINED_FUNCTION_16_0();
        *v20 = 0;
        _os_log_impl(&dword_2684CA000, v18, v19, "#RNPatternHighlightsFlow Running RNReadNotificationHighlightsFlow", v20, 2u);
        OUTLINED_FUNCTION_2();
      }

      v21 = v0[61];
      v22 = v0[55];
      v23 = v0[56];
      v24 = v0[54];

      (*(v23 + 8))(v21, v22);
      *(v1 + 184) = 1;
      v25 = sub_2684F4194();
      v26 = sub_2684F4564();
      v28 = *(v24 + 24);
      v27 = *(v24 + 32);
      v29 = *(v24 + 40);
      v30 = *(v24 + 48);
      v31 = *(v24 + 49);
      sub_2684CC878(v24 + 56, (v0 + 34));
      type metadata accessor for RNReadNotificationHighlightsFlow();
      swift_allocObject();
      if (v31)
      {
        v32 = 256;
      }

      else
      {
        v32 = 0;
      }

      v0[52] = sub_268542F0C(v25, v26 & 1, v28, v27, v29, v32 | v30, v0 + 34);
      sub_26850AC68(qword_280283240, type metadata accessor for RNReadNotificationHighlightsFlow, &unk_26856F658);

      sub_268567C00();

      goto LABEL_29;
    }

    *(v1 + 184) = 2;
  }

  v33 = sub_2684F417C();
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  v34 = v0[60];
  v35 = v0[56];
  v36 = __swift_project_value_buffer(v0[55], qword_28028B348);
  v37 = *(v35 + 16);
  v77 = v36;
  v37(v34);

  v38 = sub_2685689E0();
  v39 = sub_268568DD0();

  v40 = os_log_type_enabled(v38, v39);
  v41 = v0[56];
  v78 = v0[55];
  v79 = v0[60];
  v80 = v33;
  if (v40)
  {
    v76 = v3;
    v42 = swift_slowAlloc();
    v75 = v37;
    v43 = swift_slowAlloc();
    v81 = v43;
    *v42 = 136315138;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C78, qword_26856CB20);
    v45 = MEMORY[0x26D61BE70](v33, v44);
    v47 = sub_2684EABEC(v45, v46, &v81);

    *(v42 + 4) = v47;
    _os_log_impl(&dword_2684CA000, v38, v39, "#RNPatternHighlightsFlow non highlight notifications: %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    v37 = v75;
    OUTLINED_FUNCTION_2();
    v3 = v76;
    OUTLINED_FUNCTION_2();
  }

  v48 = *(v41 + 8);
  v48(v79, v78);
  v49 = *(sub_2684F4094() + 16);

  if (v49)
  {
    (v37)(v0[58], v77, v0[55]);
    v50 = sub_2685689E0();
    v51 = sub_268568DC0();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = OUTLINED_FUNCTION_16_0();
      *v52 = 0;
      _os_log_impl(&dword_2684CA000, v50, v51, "#RNPatternHighlightsFlow Running RNReadNotificationsPatternFlow", v52, 2u);
      OUTLINED_FUNCTION_2();
    }

    v53 = v0[58];
    v54 = v0[55];
    v55 = v0[54];

    v48(v53, v54);
    v56 = *(v55 + 24);
    v57 = *(v55 + 32);
    v58 = *(v55 + 40);
    v59 = *(v55 + 48);
    LODWORD(v54) = *(v55 + 49);
    sub_2684CC878(v55 + 56, (v0 + 2));
    type metadata accessor for RNReadNotificationsPatternFlow();
    swift_allocObject();
    if (v54)
    {
      v60 = 256;
    }

    else
    {
      v60 = 0;
    }

    v0[50] = sub_2684DC2A4(v80, v56, v57, v58, v60 | v59, v0 + 2, v3 & 1);
    sub_26850AC68(&qword_280283238, type metadata accessor for RNReadNotificationsPatternFlow, &unk_26856AC70);

    sub_268567C20();
LABEL_29:

    goto LABEL_32;
  }

  if ((v3 & 1) == 0)
  {
    (v37)(v0[59], v77, v0[55]);
    v63 = sub_2685689E0();
    v64 = sub_268568DC0();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = OUTLINED_FUNCTION_16_0();
      *v65 = 0;
      _os_log_impl(&dword_2684CA000, v63, v64, "#RNPatternHighlightsFlow Running RNNoNewNotificationsPatternFlow", v65, 2u);
      OUTLINED_FUNCTION_2();
    }

    v66 = v0[59];
    v67 = v0[55];
    v68 = v0[54];

    v48(v66, v67);
    v70 = *(v68 + 24);
    v69 = *(v68 + 32);
    v71 = *(v68 + 40);
    v72 = *(v68 + 48);
    v73 = *(v68 + 49);
    sub_2684CC878(v68 + 56, (v0 + 18));
    type metadata accessor for RNNoNewNotificationsPatternFlow();
    v74 = swift_allocObject();
    *(v74 + 16) = v70;
    *(v74 + 24) = v69;
    *(v74 + 32) = v71;
    *(v74 + 40) = v72;
    *(v74 + 41) = v73;
    memcpy((v74 + 48), v0 + 18, 0x80uLL);
    v0[51] = v74;
    sub_26850AC68(&qword_280282CC8, type metadata accessor for RNNoNewNotificationsPatternFlow, &unk_26856FC70);

    sub_268567C20();
    goto LABEL_29;
  }

LABEL_31:
  sub_268567C40();
LABEL_32:

  OUTLINED_FUNCTION_9_1();

  return v61();
}

uint64_t sub_26850A570(uint64_t a1, uint64_t a2)
{
  v3 = sub_2685689F0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280282960 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v3, qword_28028B348);
  (*(v4 + 16))(v6, v7, v3);
  v8 = sub_2685689E0();
  v9 = sub_268568DC0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    v12 = sub_268568B70();
    v14 = sub_2684EABEC(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_2684CA000, v8, v9, "#RNPatternHighlightsFlow RNReadNotificationHighlightsFlow finished %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x26D61CB30](v11, -1, -1);
    MEMORY[0x26D61CB30](v10, -1, -1);
  }

  result = (*(v4 + 8))(v6, v3);
  *(a2 + 184) = 2;
  return result;
}

uint64_t sub_26850A77C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A58, &qword_26856A930);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_268568D70();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a1;
  v9[6] = a2;

  sub_2684DDBA0(0, 0, v7, &unk_26856CB10, v9);
}

uint64_t sub_26850A87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = sub_268567C50();
  v6[4] = v7;
  v6[5] = *(v7 - 8);
  v6[6] = swift_task_alloc();
  v8 = swift_task_alloc();
  v6[7] = v8;
  *v8 = v6;
  v8[1] = sub_2684DAC24;

  return sub_268509C78();
}

uint64_t sub_26850A978()
{
  sub_2684DAE1C();

  return MEMORY[0x2821FE8D8](v0, 185, 7);
}

_BYTE *storeEnumTagSinglePayload for RNPatternHighlightsFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x26850AA9CLL);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26850AAD8()
{
  result = qword_280283230;
  if (!qword_280283230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283230);
  }

  return result;
}

uint64_t sub_26850AB50()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26850AB98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2684DB128;

  return sub_26850A87C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_26850AC68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26850ACB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for RNFollowupPromptFlow.State(319, *(a1 + 80), a3, a4);
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

void sub_26850AD74(uint64_t a1@<X8>)
{
  v69 = a1;
  sub_2685689F0();
  OUTLINED_FUNCTION_1();
  v65 = v2;
  v66 = v1;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_5_5();
  v68 = v4 - v3;
  v5 = sub_2685679B0();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5_5();
  v11 = v10 - v9;
  v12 = sub_268567B60();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5_5();
  v18 = v17 - v16;
  OUTLINED_FUNCTION_3_10();
  v67 = *(v19 + 80);
  v22 = type metadata accessor for RNFollowupPromptFlow.State(0, v67, v20, v21);
  OUTLINED_FUNCTION_1();
  v24 = v23;
  v26 = MEMORY[0x28223BE20](v25);
  v64 = &v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v57 - v28;
  sub_26850B6FC(&v57 - v28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_2802830E0, &unk_26856C5A0);
    OUTLINED_FUNCTION_17_2();
    (*(v30 + 32))(v69, v29);
    sub_268567990();
    v69 = v72;
    __swift_project_boxed_opaque_existential_1(v70, v71);
    sub_268567A20();
    (*(v14 + 104))(v18, *MEMORY[0x277D5BC10], v12);
    (*(v7 + 104))(v11, *MEMORY[0x277D5B950], v5);
    v31 = OUTLINED_FUNCTION_3_12();
    sub_2684EBB74(v31, v32, v33, v11, 8, 0, 0, 0, v57, v58);
    sub_2685679A0();

    __swift_destroy_boxed_opaque_existential_0(v70);
  }

  else
  {
    v59 = v12;
    v60 = v14;
    v61 = v7;
    v62 = v5;
    v63 = v11;
    (*(v24 + 8))(v29, v22);
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_280282960);
    }

    v34 = v66;
    v35 = __swift_project_value_buffer(v66, qword_28028B348);
    v36 = v65;
    v37 = v68;
    (*(v65 + 16))(v68, v35, v34);

    v38 = sub_2685689E0();
    v39 = sub_268568DE0();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v58 = v18;
      v41 = v40;
      v42 = swift_slowAlloc();
      v70[0] = v42;
      *v41 = 136315138;
      sub_26850B6FC(v64);
      swift_getWitnessTable();
      v43 = sub_268568B80();
      v45 = sub_2684EABEC(v43, v44, v70);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_2684CA000, v38, v39, "RNFollowupPromptFlow#exitValue is in an invalid state: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_2();

      (*(v36 + 8))(v68, v34);
      v18 = v58;
    }

    else
    {

      (*(v36 + 8))(v37, v34);
    }

    v46 = v61;
    v47 = v59;
    sub_268567990();
    __swift_project_boxed_opaque_existential_1(v70, v71);
    sub_268567A20();
    (*(v60 + 104))(v18, *MEMORY[0x277D5BC00], v47);
    v48 = *(v46 + 104);
    v49 = v63;
    v48(v63, *MEMORY[0x277D5B8D0], v62);
    v50 = OUTLINED_FUNCTION_3_12();
    sub_2684EBB74(v50, v51, v52, v49, 6, 0, 0, 0, v57, v58);
    sub_2685679A0();

    __swift_destroy_boxed_opaque_existential_0(v70);
    type metadata accessor for RNFollowupPromptFlow.RNFollowupPromptFlowError(0, v67, v53, v54);
    swift_getWitnessTable();
    v55 = swift_allocError();
    sub_26850B6FC(v56);
    sub_268567D30();
  }
}

uint64_t sub_26850B3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = type metadata accessor for RNFollowupPromptFlow.State(0, *(*v4 + 80), a3, a4);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - v8;
  v10 = sub_2685689F0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280282960 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_28028B348);
  (*(v11 + 16))(v13, v14, v10);

  v15 = sub_2685689E0();
  v16 = sub_268568DC0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = v17;
    v32 = swift_slowAlloc();
    v33 = v32;
    *v17 = 136315138;
    v18 = *v5;
    v31 = v16;
    v19 = *(v18 + 136);
    swift_beginAccess();
    (*(v7 + 16))(v9, &v5[v19], v6);
    v20 = sub_26850C330(v6);
    v21 = v6;
    v23 = v22;

    (*(v7 + 8))(v9, v21);
    v24 = sub_2684EABEC(v20, v23, &v33);

    v25 = v30;
    *(v30 + 1) = v24;
    v26 = v25;
    _os_log_impl(&dword_2684CA000, v15, v31, "RNFollowupPromptFlow#state transitioned to state %s", v25, 0xCu);
    v27 = v32;
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x26D61CB30](v27, -1, -1);
    MEMORY[0x26D61CB30](v26, -1, -1);
  }

  else
  {
  }

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_26850B6FC@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_3_10();
  v4 = *(v3 + 136);
  swift_beginAccess();
  OUTLINED_FUNCTION_3_10();
  type metadata accessor for RNFollowupPromptFlow.State(0, *(v5 + 80), v6, v7);
  OUTLINED_FUNCTION_17_2();
  return (*(v8 + 16))(a1, v1 + v4);
}

uint64_t sub_26850B798(uint64_t a1)
{
  OUTLINED_FUNCTION_3_10();
  v4 = *(v3 + 136);
  swift_beginAccess();
  OUTLINED_FUNCTION_3_10();
  v8 = type metadata accessor for RNFollowupPromptFlow.State(0, *(v5 + 80), v6, v7);
  v9 = *(v8 - 8);
  (*(v9 + 24))(v1 + v4, a1, v8);
  v10 = swift_endAccess();
  sub_26850B3CC(v10, v11, v12, v13);
  return (*(v9 + 8))(a1, v8);
}

uint64_t sub_26850B880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for RNFollowupPromptFlow(0, *(*v4 + 80), a3, a4);
  swift_getWitnessTable();
  return sub_268567900();
}

uint64_t sub_26850B90C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = *v1;
  v4 = sub_2685689F0();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = *(v3 + 80);
  v2[12] = v5;
  v8 = type metadata accessor for RNFollowupPromptFlow.State(0, v5, v6, v7);
  v2[13] = v8;
  v2[14] = *(v8 - 8);
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26850BA44, 0, 0);
}

uint64_t sub_26850BA44()
{
  sub_26850B6FC(v0[15]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[15];
  if (EnumCaseMultiPayload == 1)
  {
    v3 = v0[13];
    v4 = v0[14];
    sub_268567C40();
    (*(v4 + 8))(v2, v3);
  }

  else
  {
    sub_2684D8314((v2 + 8), (v0 + 2));
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_280282960);
    }

    v6 = v0[10];
    v5 = v0[11];
    v7 = v0[9];
    v8 = __swift_project_value_buffer(v7, qword_28028B348);
    (*(v6 + 16))(v5, v8, v7);
    v9 = sub_2685689E0();
    v10 = sub_268568DC0();
    if (OUTLINED_FUNCTION_12_1(v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2684CA000, v9, v7, "RNFollowupPromptFlow# Prompting the user if they want to listen to notifications", v11, 2u);
      OUTLINED_FUNCTION_2();
    }

    v12 = v0[11];
    v13 = v0[9];
    v14 = v0[10];
    v15 = v0[8];

    (*(v14 + 8))(v12, v13);
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    swift_getWitnessTable();
    sub_268567870();
    sub_26850BC8C(v15);
    sub_268567C10();

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_26850BCCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = type metadata accessor for RNFollowupPromptFlow.State(0, *(*v4 + 80), a3, a4);
  OUTLINED_FUNCTION_17_2();
  MEMORY[0x28223BE20](v8);
  v10 = &v56 - v9;
  v11 = sub_2685689F0();
  OUTLINED_FUNCTION_1();
  v62 = v12;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v61 = &v56 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v56 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280283350, &qword_26856CD38);
  OUTLINED_FUNCTION_1();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v56 - v25;
  (*(v23 + 16))(&v56 - v25, a1, v21);
  if ((*(v23 + 88))(v26, v21) == *MEMORY[0x277D5BC38])
  {
    v59 = v7;
    (*(v23 + 96))(v26, v21);
    v27 = *v26;
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_280282960);
    }

    v60 = v5;
    v28 = __swift_project_value_buffer(v11, qword_28028B348);
    v29 = v62;
    v57 = *(v62 + 16);
    v57(v20, v28, v11);
    v30 = sub_2685689E0();
    v31 = sub_268568DD0();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v58 = v27;
      v27 = v32;
      v33 = swift_slowAlloc();
      v56 = v28;
      v34 = v33;
      v64 = v33;
      *v27 = 136315138;
      v63 = v58;
      v35 = sub_268568B70();
      v37 = v10;
      v38 = sub_2684EABEC(v35, v36, &v64);

      *(v27 + 4) = v38;
      v10 = v37;
      _os_log_impl(&dword_2684CA000, v30, v31, "RNFollowupPromptFlow#onResponse response=%s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      v28 = v56;
      v29 = v62;
      OUTLINED_FUNCTION_2();
      LODWORD(v27) = v58;
      OUTLINED_FUNCTION_2();
    }

    v39 = *(v29 + 8);
    v40 = v39(v20, v11);
    switch(v27)
    {
      case 0:
        v41 = v60;
        if ((*(v60 + 64) & 1) == 0)
        {
          goto LABEL_17;
        }

        (*(v60 + 48))(v40);
        (*(v41 + 32))(0);
        (*(v41 + 16))(0);
        goto LABEL_23;
      case 1:
        sub_268567D50();
        break;
      case 2:
        v48 = v60;
        v49 = *(v60 + 64);
        (*(v60 + 48))(v40);
        if (v49)
        {
          (*(v48 + 32))(0);
          (*(v48 + 16))(1);
        }

        else
        {
          (*(v48 + 16))(1);
          (*(v48 + 32))(0);
        }

        goto LABEL_23;
      case 3:
        v41 = v60;
LABEL_17:
        (*(v41 + 32))(1);
        sub_268567D10();
        break;
      default:
        v57(v61, v28, v11);
        v50 = sub_2685689E0();
        v51 = sub_268568DC0();
        if (OUTLINED_FUNCTION_12_1(v51))
        {
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_8_11(&dword_2684CA000, v52, v53, "RNFollowupPromptFlow#onResponse Unhandled response, proceed to the next window");
          OUTLINED_FUNCTION_2();
        }

        v54 = v39(v61, v11);
        (*(v60 + 48))(v54);
LABEL_23:
        sub_268567D20();
        break;
    }
  }

  else
  {
    (*(v23 + 8))(v26, v21);
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_280282960);
    }

    v42 = __swift_project_value_buffer(v11, qword_28028B348);
    v43 = v62;
    (*(v62 + 16))(v16, v42, v11);
    v44 = sub_2685689E0();
    v45 = sub_268568DC0();
    if (OUTLINED_FUNCTION_12_1(v45))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_8_11(&dword_2684CA000, v46, v47, "RNFollowupPromptFlow# onResponse Received a response from the prompt flow but it did not contain a successful confirmation response. Will indicate to stop windowing.");
      OUTLINED_FUNCTION_2();
    }

    (*(v43 + 8))(v16, v11);
    v65 = 1;
    sub_268567D40();
  }

  swift_storeEnumTagMultiPayload();
  return sub_26850B798(v10);
}

uint64_t sub_26850C330(uint64_t a1)
{
  v2 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v2 + 8))(v4, a1);
    return 0x6574656C706D6F63;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v4 + 1);
    return 0x6E6974706D6F7270;
  }
}

uint64_t *sub_26850C458()
{
  v1 = *v0;

  sub_2684CC8D4((v0 + 9));
  v2 = *(*v0 + 136);
  type metadata accessor for RNFollowupPromptFlow.State(0, *(v1 + 80), v3, v4);
  OUTLINED_FUNCTION_17_2();
  (*(v5 + 8))(v0 + v2);
  return v0;
}

uint64_t sub_26850C4FC()
{
  sub_26850C458();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

_BYTE *storeEnumTagSinglePayload for RNYesNoPromptType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x26850C650);
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

unint64_t sub_26850C68C()
{
  result = qword_280283348;
  if (!qword_280283348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283348);
  }

  return result;
}

uint64_t sub_26850C704(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2684CEB80;

  return sub_26850B90C(a1);
}

uint64_t sub_26850C7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for RNFollowupPromptFlow.State(319, *(a1 + 16), a3, a4);
  if (v6 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v5 - 8) + 84);
    return 0;
  }

  return v5;
}

uint64_t sub_26850C894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for RNFollowupPromptFlow.State(0, *(a3 + 16), a3, a4);

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

uint64_t sub_26850C8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for RNFollowupPromptFlow.State(0, *(a4 + 16), a3, a4);

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v7);
}

void OUTLINED_FUNCTION_8_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_26850C994@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2685689F0();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_5();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802833D8, &unk_268570E60);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v27 - v10;
  v12 = sub_268568120();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5_5();
  v18 = v17 - v16;
  sub_2685680A0();
  v19 = sub_268568110();
  (*(v14 + 8))(v18, v12);
  sub_2684D6590(v19, v11);

  v20 = sub_268568190();
  if (__swift_getEnumTagSinglePayload(v11, 1, v20) == 1)
  {
    sub_26850CC94(v11);
    if (qword_280282960 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v2, qword_28028B348);
    (*(v4 + 16))(v8, v21, v2);
    v22 = sub_2685689E0();
    v23 = sub_268568DE0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2684CA000, v22, v23, "UsoTask getUserDialogAct | unable to create userDialogAct", v24, 2u);
      MEMORY[0x26D61CB30](v24, -1, -1);
    }

    (*(v4 + 8))(v8, v2);
    v25 = 1;
  }

  else
  {
    (*(*(v20 - 8) + 32))(a1, v11, v20);
    v25 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a1, v25, 1, v20);
}

uint64_t sub_26850CC94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802833D8, &unk_268570E60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26850CCFC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802833D8, &unk_268570E60);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_268568190();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_5();
  v9 = v8 - v7;
  sub_268568550();
  sub_26850C994(v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_26850CC94(v2);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v9, v2, v3);
    v11 = sub_268568220();
    if (sub_2684DEAF0(v11))
    {
      sub_2684DEAFC();
      if ((v11 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x26D61C170](0, v11);
      }

      else
      {
        v10 = *(v11 + 32);
      }
    }

    else
    {

      v10 = 0;
    }

    (*(v5 + 8))(v9, v3);
  }

  return v10;
}

uint64_t sub_26850CF38(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = a1;
  sub_2684CC878(a2, v4 + 40);
  *(v4 + 168) = a3;
  if (*(a1 + 40))
  {
    sub_2684CC878(a2, v16);
    type metadata accessor for RNReadNotificationAction();
    swift_allocObject();

    v9 = sub_26851C2B8(v8, v16);
    sub_2684CC8D4(a2);
    v10 = &qword_280282F68;
    v11 = type metadata accessor for RNReadNotificationAction;
    v12 = &unk_26856DA50;
  }

  else
  {
    sub_2684CC878(a2, v16);
    type metadata accessor for RNReadAppDescriptionAction();
    swift_allocObject();

    v9 = sub_2684FCDCC(v13, v16);
    sub_2684CC8D4(a2);
    v10 = &unk_280282F60;
    v11 = type metadata accessor for RNReadAppDescriptionAction;
    v12 = &unk_26856C1A8;
  }

  v14 = sub_26850D618(v10, 255, v11, v12);
  *(v4 + 16) = v9;
  *(v4 + 24) = v14;
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_26850D098@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_2685679B0();
  OUTLINED_FUNCTION_1();
  v35[0] = v5;
  MEMORY[0x28223BE20](v6);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_268567B60();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + 32);
  v16 = *(v15 + 40);
  v17 = *(sub_2684F4060() + 16);

  if (v16 < v17 - 1)
  {
    sub_2684CC878(v2 + 40, v36);
    v18 = *(v2 + 168);
    type metadata accessor for RNPromptReturnGroup();
    swift_allocObject();
    v19 = sub_26853DEAC(v15, v36, v18);
    sub_2684CC878(v2 + 40, v36);
    type metadata accessor for RNPromptFlow();
    swift_allocObject();
    v20 = sub_26854A0A8(v15, v36);
    v35[1] = v19;
    v36[0] = v20;
    sub_2685677B0();
    swift_allocObject();
    sub_26850D618(&qword_2802833F0, 255, type metadata accessor for RNPromptFlow, &protocol conformance descriptor for RNPromptFlow);
    sub_26850D618(&qword_2802833F8, 255, type metadata accessor for RNPromptReturnGroup, &unk_26856F044);
    swift_retain_n();
    *a1 = sub_2685677A0();
    v21 = *MEMORY[0x277D5B898];
    v22 = sub_268567960();
    (*(*(v22 - 8) + 104))(a1, v21, v22);
    v23 = MEMORY[0x277D5BF50];
LABEL_5:
    v27 = *v23;
    v28 = sub_268567E80();
    (*(*(v28 - 8) + 104))(a1, v27, v28);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v28);
  }

  v24 = *(sub_2684F4060() + 16);

  if (v24 >= 2)
  {
    sub_2684CC878(v2 + 40, v36);
    type metadata accessor for RNReadConclusionActionGroup(0);
    swift_allocObject();
    v25 = sub_2684DBAF0(v36);
    v26 = sub_26850D618(&qword_2802833E8, 255, type metadata accessor for RNReadConclusionActionGroup, &unk_26856AAF8);
    *a1 = v25;
    a1[1] = v26;
    v23 = MEMORY[0x277D5BF58];
    goto LABEL_5;
  }

  v30 = *(sub_2684F4060() + 16);

  if (v30 == 1)
  {
    sub_268567990();
    __swift_project_boxed_opaque_existential_1(v36, v36[3]);
    sub_268567A20();
    (*(v11 + 104))(v14, *MEMORY[0x277D5BC10], v9);
    (*(v35[0] + 104))(v8, *MEMORY[0x277D5B958], v4);
    sub_2684EBB74(1u, 2, v14, v8, 8, 0, 0, 0, 0, 2u);
    sub_2685679A0();

    __swift_destroy_boxed_opaque_existential_0(v36);
    sub_268567E80();
    v31 = OUTLINED_FUNCTION_0_3();
  }

  else
  {
    sub_268567E80();
    v31 = OUTLINED_FUNCTION_0_3();
  }

  return __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
}

uint64_t sub_26850D618(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for ReadNotificationsCATs(uint64_t a1)
{
  result = qword_280283408;
  if (!qword_280283408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26850D6EC()
{
  OUTLINED_FUNCTION_20_2();
  OUTLINED_FUNCTION_1_12(MEMORY[0x277D55BF0]);
  swift_task_alloc();
  OUTLINED_FUNCTION_44();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_2684DB128;
  OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_30_2();

  return v3();
}

uint64_t sub_26850D7A0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_12();
}

uint64_t sub_26850D7B8()
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_19_3();
  v1 = v0[3];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283418, &qword_26856D020);
  v3 = OUTLINED_FUNCTION_42_0(v2);
  v0[5] = v3;
  v4 = OUTLINED_FUNCTION_6_12(v3, xmmword_26856A540);
  v6 = OUTLINED_FUNCTION_36_0(v4, v5);
  if (v1)
  {
    v6 = sub_2685687A0();
  }

  else
  {
    v3[3].n128_u64[1] = 0;
    v3[4].n128_u64[0] = 0;
  }

  v3[3].n128_u64[0] = v1;
  v3[4].n128_u64[1] = v6;
  OUTLINED_FUNCTION_17_6(MEMORY[0x277D55BF0]);

  swift_task_alloc();
  OUTLINED_FUNCTION_44();
  v0[6] = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_16_6(v7);
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_69();

  return v13(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_26850D8B8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_4_12();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_9_1();

    return v10();
  }
}

uint64_t sub_26850D9D4()
{
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_9_1();

  return v0();
}

uint64_t sub_26850DA30(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 72) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return OUTLINED_FUNCTION_0_12();
}

uint64_t sub_26850DA4C()
{
  OUTLINED_FUNCTION_32_1();
  v1 = *(v0 + 72);
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283418, &qword_26856D020);
  v3 = swift_allocObject();
  *(v0 + 48) = v3;
  v4 = OUTLINED_FUNCTION_6_12(v3, xmmword_26856CED0);
  OUTLINED_FUNCTION_28_1(v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283420, &qword_26856D028);
  v3[3].n128_u64[0] = v2;
  OUTLINED_FUNCTION_25_2();
  v3[4].n128_u64[1] = v6;
  v3[5].n128_u64[0] = 0xD000000000000018;
  v3[5].n128_u64[1] = v7;
  if (v1)
  {
    v8 = 0;
    v9 = 0;
    v3[6].n128_u64[1] = 0;
    v3[7].n128_u64[0] = 0;
  }

  else
  {
    v8 = *(v0 + 32);
    v9 = MEMORY[0x277D839F8];
  }

  v3[6].n128_u64[0] = v8;
  v3[7].n128_u64[1] = v9;
  OUTLINED_FUNCTION_17_6(MEMORY[0x277D55BF0]);

  swift_task_alloc();
  OUTLINED_FUNCTION_44();
  *(v0 + 56) = v10;
  *v10 = v11;
  v10[1] = sub_26850DBB0;
  OUTLINED_FUNCTION_35_0();

  return v12();
}

uint64_t sub_26850DBB0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_4_12();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_9_1();

    return v10();
  }
}

uint64_t sub_26850DCCC()
{
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_9_1();

  return v0();
}

uint64_t sub_26850DD28()
{
  OUTLINED_FUNCTION_5();
  *(v1 + 98) = v2;
  *(v1 + 48) = v3;
  *(v1 + 56) = v0;
  *(v1 + 97) = v4;
  *(v1 + 32) = v5;
  *(v1 + 40) = v6;
  *(v1 + 96) = v7;
  *(v1 + 16) = v8;
  *(v1 + 24) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  OUTLINED_FUNCTION_10(v10);
  *(v1 + 64) = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_26850DDC8()
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_19_3();
  v1 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283418, &qword_26856D020);
  v2 = swift_allocObject();
  *(v0 + 72) = v2;
  *(v2 + 16) = xmmword_26856CEE0;
  OUTLINED_FUNCTION_25_2();
  *(v3 + 32) = 0xD000000000000018;
  *(v3 + 40) = v4;
  if (v1)
  {
    OUTLINED_FUNCTION_37_1();
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  else
  {
    v6 = *(v0 + 24);
    v5 = MEMORY[0x277D839F8];
  }

  v7 = *(v0 + 97);
  *(v2 + 48) = v6;
  *(v2 + 72) = v5;
  *(v2 + 80) = 0xD000000000000014;
  *(v2 + 88) = 0x8000000268572910;
  if (v7)
  {
    OUTLINED_FUNCTION_37_1();
    *(v2 + 104) = 0;
    *(v2 + 112) = 0;
  }

  else
  {
    v8 = *(v0 + 32);
  }

  v9 = *(v0 + 64);
  *(v2 + 96) = v8;
  OUTLINED_FUNCTION_38_0();
  *(v2 + 120) = v10;
  *(v2 + 128) = v11;
  *(v2 + 136) = 0xE700000000000000;
  sub_2684E6DF4(v12, v9, &qword_280282AF0, &qword_26856A1E0);
  v13 = sub_268568810();
  if (OUTLINED_FUNCTION_8_12() == 1)
  {
    sub_2684D199C(*(v0 + 64), &qword_280282AF0, &qword_26856A1E0);
    *(v2 + 144) = 0u;
    *(v2 + 160) = 0u;
  }

  else
  {
    *(v2 + 168) = v13;
    __swift_allocate_boxed_opaque_existential_0((v2 + 144));
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_12_10();
    v14();
  }

  OUTLINED_FUNCTION_25_2();
  *(v2 + 176) = 0xD000000000000017;
  *(v2 + 184) = v15;
  if (v16)
  {
    v17 = 0;
    v18 = 0;
    *(v2 + 200) = 0;
    *(v2 + 208) = 0;
  }

  else
  {
    v17 = *(v0 + 48);
    v18 = MEMORY[0x277D839F8];
  }

  *(v2 + 192) = v17;
  *(v2 + 216) = v18;
  OUTLINED_FUNCTION_1_12(MEMORY[0x277D55BF0]);
  swift_task_alloc();
  OUTLINED_FUNCTION_44();
  *(v0 + 80) = v19;
  *v19 = v20;
  v19[1] = sub_26850E00C;
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_69();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28);
}

uint64_t sub_26850E00C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_4_12();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_9_10();

    return v10();
  }
}

uint64_t sub_26850E130()
{
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_9_1();

  return v0();
}

uint64_t sub_26850E194()
{
  OUTLINED_FUNCTION_20_2();
  OUTLINED_FUNCTION_1_12(MEMORY[0x277D55BF0]);
  swift_task_alloc();
  OUTLINED_FUNCTION_44();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_2684DB458;
  OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_30_2();

  return v3();
}

uint64_t sub_26850E248()
{
  OUTLINED_FUNCTION_20_2();
  OUTLINED_FUNCTION_1_12(MEMORY[0x277D55BF0]);
  swift_task_alloc();
  OUTLINED_FUNCTION_44();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_2684DB458;
  OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_30_2();

  return v3();
}

uint64_t sub_26850E2FC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_12();
}

uint64_t sub_26850E314()
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_19_3();
  v1 = v0[3];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283418, &qword_26856D020);
  v3 = OUTLINED_FUNCTION_42_0(v2);
  v0[5] = v3;
  v4 = OUTLINED_FUNCTION_6_12(v3, xmmword_26856A540);
  v6 = OUTLINED_FUNCTION_36_0(v4, v5);
  if (v1)
  {
    v6 = sub_2685687A0();
  }

  else
  {
    v3[3].n128_u64[1] = 0;
    v3[4].n128_u64[0] = 0;
  }

  v3[3].n128_u64[0] = v1;
  v3[4].n128_u64[1] = v6;
  OUTLINED_FUNCTION_17_6(MEMORY[0x277D55BF0]);

  swift_task_alloc();
  OUTLINED_FUNCTION_44();
  v0[6] = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_16_6(v7);
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_69();

  return v13(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_26850E414()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_4_12();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_9_1();

    return v10();
  }
}

uint64_t sub_26850E530()
{
  OUTLINED_FUNCTION_20_2();
  OUTLINED_FUNCTION_1_12(MEMORY[0x277D55BF0]);
  swift_task_alloc();
  OUTLINED_FUNCTION_44();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_2684DB458;
  OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_30_2();

  return v3();
}

uint64_t sub_26850E5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  OUTLINED_FUNCTION_5();
  *(v12 + 139) = a11;
  *(v12 + 64) = a10;
  *(v12 + 72) = v11;
  *(v12 + 48) = v13;
  *(v12 + 56) = a9;
  *(v12 + 32) = v14;
  *(v12 + 40) = v15;
  *(v12 + 138) = v16;
  *(v12 + 137) = v17;
  *(v12 + 136) = v18;
  *(v12 + 16) = v19;
  *(v12 + 24) = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  OUTLINED_FUNCTION_10(v21);
  *(v12 + 80) = OUTLINED_FUNCTION_50();
  *(v12 + 88) = swift_task_alloc();
  *(v12 + 96) = swift_task_alloc();
  *(v12 + 104) = swift_task_alloc();
  v22 = OUTLINED_FUNCTION_7();
  return OUTLINED_FUNCTION_40_0(v22, v23, v24);
}

uint64_t sub_26850E6A4()
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_19_3();
  v1 = *(v0 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283418, &qword_26856D020);
  v2 = swift_allocObject();
  *(v0 + 112) = v2;
  v3 = OUTLINED_FUNCTION_31_3(v2, xmmword_26856CEF0);
  v3[2].n128_u64[0] = v4;
  v3[2].n128_u64[1] = 0xEA00000000007865;
  if (v1)
  {
    OUTLINED_FUNCTION_37_1();
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  else
  {
    v6 = *(v0 + 24);
    v5 = MEMORY[0x277D839F8];
  }

  v7 = *(v0 + 32);
  v8 = *(v0 + 138);
  v9 = *(v0 + 137);
  *(v2 + 48) = v6;
  *(v2 + 72) = v5;
  *(v2 + 80) = 0x776F6C6C6F467369;
  *(v2 + 88) = 0xEA00000000007075;
  v10 = MEMORY[0x277D839B0];
  *(v2 + 96) = v9;
  *(v2 + 120) = v10;
  *(v2 + 128) = 0x7041656D61537369;
  *(v2 + 136) = 0xE900000000000070;
  *(v2 + 144) = v8;
  OUTLINED_FUNCTION_10_5();
  *(v2 + 168) = v10;
  *(v2 + 176) = v11;
  *(v2 + 184) = 0xE700000000000000;
  v12 = 0;
  if (v7)
  {
    v12 = sub_2685687A0();
  }

  else
  {
    *(v2 + 200) = 0;
    *(v2 + 208) = 0;
  }

  v13 = *(v0 + 104);
  v14 = *(v0 + 40);
  *(v2 + 192) = v7;
  *(v2 + 216) = v12;
  *(v2 + 224) = 0x656C746974;
  *(v2 + 232) = 0xE500000000000000;
  sub_2684E6DF4(v14, v13, &qword_280282AF0, &qword_26856A1E0);
  v15 = sub_268568810();
  v16 = OUTLINED_FUNCTION_8_12();
  v17 = *(v0 + 104);
  if (v16 == 1)
  {

    sub_2684D199C(v17, &qword_280282AF0, &qword_26856A1E0);
    *(v2 + 240) = 0u;
    *(v2 + 256) = 0u;
  }

  else
  {
    *(v2 + 264) = v15;
    __swift_allocate_boxed_opaque_existential_0((v2 + 240));
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_12_10();
    v18();
  }

  v19 = *(v0 + 96);
  OUTLINED_FUNCTION_7_14();
  *(v2 + 272) = v20;
  *(v2 + 280) = v21;
  sub_2684E6DF4(v22, v19, &qword_280282AF0, &qword_26856A1E0);
  if (OUTLINED_FUNCTION_8_12() == 1)
  {
    sub_2684D199C(*(v0 + 96), &qword_280282AF0, &qword_26856A1E0);
    *(v2 + 288) = 0u;
    *(v2 + 304) = 0u;
  }

  else
  {
    *(v2 + 312) = v15;
    __swift_allocate_boxed_opaque_existential_0((v2 + 288));
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_12_10();
    v23();
  }

  v24 = *(v0 + 88);
  OUTLINED_FUNCTION_27_2();
  *(v2 + 320) = v25;
  *(v2 + 328) = v26;
  sub_2684E6DF4(v27, v24, &qword_280282AF0, &qword_26856A1E0);
  if (OUTLINED_FUNCTION_8_12() == 1)
  {
    sub_2684D199C(*(v0 + 88), &qword_280282AF0, &qword_26856A1E0);
    *(v2 + 336) = 0u;
    *(v2 + 352) = 0u;
  }

  else
  {
    *(v2 + 360) = v15;
    __swift_allocate_boxed_opaque_existential_0((v2 + 336));
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_12_10();
    v28();
  }

  v29 = *(v0 + 80);
  v30 = OUTLINED_FUNCTION_22_1();
  *(v2 + 368) = v31;
  *(v2 + 376) = v32;
  sub_2684E6DF4(v30, v29, &qword_280282AF0, &qword_26856A1E0);
  if (OUTLINED_FUNCTION_8_12() == 1)
  {
    sub_2684D199C(*(v0 + 80), &qword_280282AF0, &qword_26856A1E0);
    *(v2 + 384) = 0u;
    *(v2 + 400) = 0u;
  }

  else
  {
    *(v2 + 408) = v15;
    __swift_allocate_boxed_opaque_existential_0((v2 + 384));
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_12_10();
    v33();
  }

  v34 = *(v0 + 139);
  *(v2 + 416) = 0x64656B636F4C7369;
  *(v2 + 424) = 0xEB00000000707041;
  *(v2 + 456) = v10;
  *(v2 + 432) = v34;
  OUTLINED_FUNCTION_1_12(MEMORY[0x277D55BF0]);
  swift_task_alloc();
  OUTLINED_FUNCTION_44();
  *(v0 + 120) = v35;
  *v35 = v36;
  v35[1] = sub_26850EACC;
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_69();

  return v41(v37, v38, v39, v40, v41, v42, v43, v44);
}

uint64_t sub_26850EACC()
{
  OUTLINED_FUNCTION_20_2();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_4_12();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  *(v3 + 128) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_9_10();

    return v10();
  }
}

uint64_t sub_26850EC1C()
{
  OUTLINED_FUNCTION_20_2();

  OUTLINED_FUNCTION_9_1();

  return v0();
}

uint64_t sub_26850ECA8()
{
  OUTLINED_FUNCTION_20_2();
  OUTLINED_FUNCTION_1_12(MEMORY[0x277D55BF0]);
  swift_task_alloc();
  OUTLINED_FUNCTION_44();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_2684DB458;
  OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_30_2();

  return v3();
}

uint64_t sub_26850ED5C()
{
  OUTLINED_FUNCTION_5();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[3] = v5;
  v1[4] = v6;
  v1[2] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  OUTLINED_FUNCTION_10(v8);
  v1[9] = OUTLINED_FUNCTION_50();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26850EE1C()
{
  OUTLINED_FUNCTION_19_3();
  v1 = v0[13];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283418, &qword_26856D020);
  v3 = swift_allocObject();
  v0[14] = v3;
  *(v3 + 16) = xmmword_26856CF00;
  OUTLINED_FUNCTION_21_2();
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  sub_2684E6DF4(v2, v1, &qword_280282AF0, &qword_26856A1E0);
  v7 = sub_268568810();
  if (OUTLINED_FUNCTION_8_12() == 1)
  {
    sub_2684D199C(v0[13], &qword_280282AF0, &qword_26856A1E0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v7;
    __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_12_10();
    v8();
  }

  v9 = v0[12];
  OUTLINED_FUNCTION_7_14();
  *(v3 + 80) = v10;
  *(v3 + 88) = v11;
  sub_2684E6DF4(v12, v9, &qword_280282AF0, &qword_26856A1E0);
  if (OUTLINED_FUNCTION_8_12() == 1)
  {
    sub_2684D199C(v0[12], &qword_280282AF0, &qword_26856A1E0);
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
  }

  else
  {
    *(v3 + 120) = v7;
    __swift_allocate_boxed_opaque_existential_0((v3 + 96));
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_12_10();
    v13();
  }

  v14 = v0[11];
  OUTLINED_FUNCTION_27_2();
  *(v3 + 128) = v15;
  *(v3 + 136) = v16;
  sub_2684E6DF4(v17, v14, &qword_280282AF0, &qword_26856A1E0);
  if (OUTLINED_FUNCTION_8_12() == 1)
  {
    sub_2684D199C(v0[11], &qword_280282AF0, &qword_26856A1E0);
    *(v3 + 144) = 0u;
    *(v3 + 160) = 0u;
  }

  else
  {
    *(v3 + 168) = v7;
    __swift_allocate_boxed_opaque_existential_0((v3 + 144));
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_12_10();
    v18();
  }

  v19 = v0[10];
  v20 = v0[6];
  *(v3 + 176) = 0x6449707061;
  *(v3 + 184) = 0xE500000000000000;
  sub_2684E6DF4(v20, v19, &qword_280282AF0, &qword_26856A1E0);
  if (OUTLINED_FUNCTION_8_12() == 1)
  {
    sub_2684D199C(v0[10], &qword_280282AF0, &qword_26856A1E0);
    *(v3 + 192) = 0u;
    *(v3 + 208) = 0u;
  }

  else
  {
    *(v3 + 216) = v7;
    __swift_allocate_boxed_opaque_existential_0((v3 + 192));
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_12_10();
    v21();
  }

  v22 = v0[9];
  OUTLINED_FUNCTION_10_5();
  *(v3 + 224) = v23;
  *(v3 + 232) = 0xE700000000000000;
  sub_2684E6DF4(v24, v22, &qword_280282AF0, &qword_26856A1E0);
  if (OUTLINED_FUNCTION_8_12() == 1)
  {
    sub_2684D199C(v0[9], &qword_280282AF0, &qword_26856A1E0);
    *(v3 + 240) = 0u;
    *(v3 + 256) = 0u;
  }

  else
  {
    *(v3 + 264) = v7;
    __swift_allocate_boxed_opaque_existential_0((v3 + 240));
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_12_10();
    v25();
  }

  OUTLINED_FUNCTION_5_12(MEMORY[0x277D55BF0]);
  v30 = v26;
  swift_task_alloc();
  OUTLINED_FUNCTION_44();
  v0[15] = v27;
  *v27 = v28;
  v27[1] = sub_26850F1EC;
  OUTLINED_FUNCTION_24_3();

  return v30();
}

uint64_t sub_26850F1EC()
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_4_12();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  *(v3 + 128) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_69();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_9_10();
    OUTLINED_FUNCTION_69();

    return v12(v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

uint64_t sub_26850F344()
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_19_3();

  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_69();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_26850F3D8()
{
  OUTLINED_FUNCTION_5();
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  *(v1 + 120) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  *(v1 + 16) = v6;
  *(v1 + 24) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  OUTLINED_FUNCTION_10(v8);
  *(v1 + 64) = OUTLINED_FUNCTION_50();
  *(v1 + 72) = swift_task_alloc();
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26850F48C()
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_19_3();
  v1 = *(v0 + 88);
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283418, &qword_26856D020);
  v3 = swift_allocObject();
  *(v0 + 96) = v3;
  *(v3 + 16) = xmmword_26856CF00;
  OUTLINED_FUNCTION_21_2();
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  sub_2684E6DF4(v2, v1, &qword_280282AF0, &qword_26856A1E0);
  v7 = sub_268568810();
  if (OUTLINED_FUNCTION_8_12() == 1)
  {
    sub_2684D199C(*(v0 + 88), &qword_280282AF0, &qword_26856A1E0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v7;
    __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_12_10();
    v8();
  }

  v9 = *(v0 + 80);
  OUTLINED_FUNCTION_7_14();
  *(v3 + 80) = v10;
  *(v3 + 88) = v11;
  sub_2684E6DF4(v12, v9, &qword_280282AF0, &qword_26856A1E0);
  if (OUTLINED_FUNCTION_8_12() == 1)
  {
    sub_2684D199C(*(v0 + 80), &qword_280282AF0, &qword_26856A1E0);
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
  }

  else
  {
    *(v3 + 120) = v7;
    __swift_allocate_boxed_opaque_existential_0((v3 + 96));
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_12_10();
    v13();
  }

  v14 = *(v0 + 72);
  OUTLINED_FUNCTION_27_2();
  *(v3 + 128) = v15;
  *(v3 + 136) = v16;
  sub_2684E6DF4(v17, v14, &qword_280282AF0, &qword_26856A1E0);
  if (OUTLINED_FUNCTION_8_12() == 1)
  {
    sub_2684D199C(*(v0 + 72), &qword_280282AF0, &qword_26856A1E0);
    *(v3 + 144) = 0u;
    *(v3 + 160) = 0u;
  }

  else
  {
    *(v3 + 168) = v7;
    __swift_allocate_boxed_opaque_existential_0((v3 + 144));
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_12_10();
    v18();
  }

  v19 = *(v0 + 64);
  v20 = *(v0 + 48);
  v21 = *(v0 + 120);
  *(v3 + 176) = 0xD000000000000010;
  *(v3 + 184) = 0x8000000268572770;
  v22 = MEMORY[0x277D839B0];
  *(v3 + 192) = v21;
  *(v3 + 216) = v22;
  *(v3 + 224) = 0x6449707061;
  *(v3 + 232) = 0xE500000000000000;
  sub_2684E6DF4(v20, v19, &qword_280282AF0, &qword_26856A1E0);
  if (OUTLINED_FUNCTION_8_12() == 1)
  {
    sub_2684D199C(*(v0 + 64), &qword_280282AF0, &qword_26856A1E0);
    *(v3 + 240) = 0u;
    *(v3 + 256) = 0u;
  }

  else
  {
    *(v3 + 264) = v7;
    __swift_allocate_boxed_opaque_existential_0((v3 + 240));
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_12_10();
    v23();
  }

  OUTLINED_FUNCTION_1_12(MEMORY[0x277D55BF0]);
  swift_task_alloc();
  OUTLINED_FUNCTION_44();
  *(v0 + 104) = v24;
  *v24 = v25;
  v24[1] = sub_26850F7F0;
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_69();

  return v30(v26, v27, v28, v29, v30, v31, v32, v33);
}

uint64_t sub_26850F7F0()
{
  OUTLINED_FUNCTION_20_2();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_4_12();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_9_10();

    return v10();
  }
}

uint64_t sub_26850F940()
{
  OUTLINED_FUNCTION_20_2();

  OUTLINED_FUNCTION_9_1();

  return v0();
}

uint64_t sub_26850F9CC(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_0_12();
}

uint64_t sub_26850F9E4()
{
  OUTLINED_FUNCTION_20_2();
  v1 = *(v0 + 56);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283418, &qword_26856D020);
  v3 = OUTLINED_FUNCTION_42_0(v2);
  *(v3 + 32) = 0x7369636E6F437369;
  *(v3 + 40) = 0xE900000000000065;
  *(v3 + 72) = MEMORY[0x277D839B0];
  v4 = MEMORY[0x277D55BF0];
  *(v3 + 48) = v1;
  OUTLINED_FUNCTION_1_12(v4);
  *(v0 + 32) = v3;
  *(v3 + 16) = v5;
  swift_task_alloc();
  OUTLINED_FUNCTION_44();
  *(v0 + 40) = v6;
  *v6 = v7;
  v6[1] = sub_26850FAF8;
  v8 = *(v0 + 16);

  return v10(v8, 0xD000000000000026, 0x8000000268572740, v3);
}

uint64_t sub_26850FAF8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_4_12();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_9_1();

    return v10();
  }
}

uint64_t sub_26850FC14(uint64_t a1, char a2, char a3, char a4)
{
  *(v5 + 58) = a4;
  *(v5 + 57) = a3;
  *(v5 + 56) = a2;
  *(v5 + 16) = a1;
  *(v5 + 24) = v4;
  return OUTLINED_FUNCTION_0_12();
}

uint64_t sub_26850FC34()
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_19_3();
  v1 = *(v0 + 58);
  v2 = *(v0 + 57);
  v3 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283418, &qword_26856D020);
  v4 = swift_allocObject();
  *(v0 + 32) = v4;
  *(v4 + 16) = xmmword_26856CF10;
  *(v4 + 32) = 0x6565636572507369;
  *(v4 + 40) = 0xEB00000000646564;
  v5 = MEMORY[0x277D839B0];
  *(v4 + 48) = v3;
  *(v4 + 72) = v5;
  *(v4 + 80) = 0xD000000000000010;
  *(v4 + 88) = 0x8000000268572600;
  *(v4 + 96) = v2;
  *(v4 + 120) = v5;
  *(v4 + 128) = 0x6565636375537369;
  *(v4 + 136) = 0xEB00000000646564;
  *(v4 + 168) = v5;
  *(v4 + 144) = v1;
  OUTLINED_FUNCTION_1_12(MEMORY[0x277D55BF0]);
  swift_task_alloc();
  OUTLINED_FUNCTION_44();
  *(v0 + 40) = v6;
  *v6 = v7;
  v6[1] = sub_26850FD98;
  OUTLINED_FUNCTION_69();

  return v12(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_26850FD98()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_4_12();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_9_1();

    return v10();
  }
}

uint64_t sub_26850FEB4()
{
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_9_1();

  return v0();
}

uint64_t sub_26850FF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_5();
  *(v12 + 88) = a11;
  *(v12 + 96) = v11;
  *(v12 + 80) = a10;
  *(v12 + 64) = a9;
  *(v12 + 48) = v13;
  *(v12 + 56) = v14;
  *(v12 + 32) = v15;
  *(v12 + 40) = v16;
  *(v12 + 185) = v17;
  *(v12 + 184) = v18;
  *(v12 + 16) = v19;
  *(v12 + 24) = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  OUTLINED_FUNCTION_10(v21);
  *(v12 + 104) = OUTLINED_FUNCTION_50();
  *(v12 + 112) = swift_task_alloc();
  *(v12 + 120) = swift_task_alloc();
  *(v12 + 128) = swift_task_alloc();
  *(v12 + 136) = swift_task_alloc();
  *(v12 + 144) = swift_task_alloc();
  *(v12 + 152) = swift_task_alloc();
  v22 = OUTLINED_FUNCTION_7();
  return OUTLINED_FUNCTION_40_0(v22, v23, v24);
}

uint64_t sub_26850FFF4()
{
  OUTLINED_FUNCTION_32_1();
  v1 = *(v0 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283418, &qword_26856D020);
  v2 = swift_allocObject();
  *(v0 + 160) = v2;
  v3 = OUTLINED_FUNCTION_31_3(v2, xmmword_26856CF20);
  v3[2].n128_u64[0] = v4;
  v3[2].n128_u64[1] = 0xEA00000000007865;
  if (v1)
  {
    OUTLINED_FUNCTION_37_1();
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  else
  {
    v6 = *(v0 + 24);
    v5 = MEMORY[0x277D839F8];
  }

  v7 = *(v0 + 32);
  v8 = *(v0 + 185);
  *(v2 + 48) = v6;
  *(v2 + 72) = v5;
  *(v2 + 80) = 0xD000000000000011;
  *(v2 + 88) = 0x8000000268572690;
  *(v2 + 96) = v8;
  OUTLINED_FUNCTION_38_0();
  *(v2 + 120) = v9;
  *(v2 + 128) = v10;
  *(v2 + 136) = 0xE700000000000000;
  v11 = 0;
  if (v7)
  {
    v11 = sub_2685687A0();
  }

  else
  {
    *(v2 + 152) = 0;
    *(v2 + 160) = 0;
  }

  v12 = *(v0 + 152);
  v13 = *(v0 + 40);
  *(v2 + 144) = v7;
  *(v2 + 168) = v11;
  *(v2 + 176) = 0x614E7265646E6573;
  *(v2 + 184) = 0xEA0000000000656DLL;
  sub_2684E6DF4(v13, v12, &qword_280282AF0, &qword_26856A1E0);
  v14 = sub_268568810();
  v15 = OUTLINED_FUNCTION_8_12();
  v16 = *(v0 + 152);
  if (v15 == 1)
  {

    sub_2684D199C(v16, &qword_280282AF0, &qword_26856A1E0);
    *(v2 + 192) = 0u;
    *(v2 + 208) = 0u;
  }

  else
  {
    *(v2 + 216) = v14;
    __swift_allocate_boxed_opaque_existential_0((v2 + 192));
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_12_10();
    v17();
  }

  v18 = *(v0 + 144);
  OUTLINED_FUNCTION_25_2();
  *(v2 + 224) = 0xD000000000000012;
  *(v2 + 232) = v19;
  sub_2684E6DF4(v20, v18, &qword_280282AF0, &qword_26856A1E0);
  if (OUTLINED_FUNCTION_8_12() == 1)
  {
    sub_2684D199C(*(v0 + 144), &qword_280282AF0, &qword_26856A1E0);
    *(v2 + 240) = 0u;
    *(v2 + 256) = 0u;
  }

  else
  {
    *(v2 + 264) = v14;
    __swift_allocate_boxed_opaque_existential_0((v2 + 240));
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_12_10();
    v21();
  }

  v22 = *(v0 + 136);
  OUTLINED_FUNCTION_25_2();
  *(v2 + 272) = 0xD000000000000013;
  *(v2 + 280) = v23;
  sub_2684E6DF4(v24, v22, &qword_280282AF0, &qword_26856A1E0);
  if (OUTLINED_FUNCTION_8_12() == 1)
  {
    sub_2684D199C(*(v0 + 136), &qword_280282AF0, &qword_26856A1E0);
    *(v2 + 288) = 0u;
    *(v2 + 304) = 0u;
  }

  else
  {
    *(v2 + 312) = v14;
    __swift_allocate_boxed_opaque_existential_0((v2 + 288));
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_12_10();
    v25();
  }

  v26 = *(v0 + 128);
  v27 = OUTLINED_FUNCTION_22_1();
  *(v2 + 320) = v28;
  *(v2 + 328) = v29;
  sub_2684E6DF4(v27, v26, &qword_280282AF0, &qword_26856A1E0);
  if (OUTLINED_FUNCTION_8_12() == 1)
  {
    sub_2684D199C(*(v0 + 128), &qword_280282AF0, &qword_26856A1E0);
    *(v2 + 336) = 0u;
    *(v2 + 352) = 0u;
  }

  else
  {
    *(v2 + 360) = v14;
    __swift_allocate_boxed_opaque_existential_0((v2 + 336));
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_12_10();
    v30();
  }

  v31 = *(v0 + 120);
  OUTLINED_FUNCTION_21_2();
  *(v2 + 368) = v32;
  *(v2 + 376) = v33;
  sub_2684E6DF4(v34, v31, &qword_280282AF0, &qword_26856A1E0);
  if (OUTLINED_FUNCTION_8_12() == 1)
  {
    sub_2684D199C(*(v0 + 120), &qword_280282AF0, &qword_26856A1E0);
    *(v2 + 384) = 0u;
    *(v2 + 400) = 0u;
  }

  else
  {
    *(v2 + 408) = v14;
    __swift_allocate_boxed_opaque_existential_0((v2 + 384));
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_12_10();
    v35();
  }

  v36 = *(v0 + 112);
  OUTLINED_FUNCTION_7_14();
  *(v2 + 416) = v37;
  *(v2 + 424) = v38;
  sub_2684E6DF4(v39, v36, &qword_280282AF0, &qword_26856A1E0);
  if (OUTLINED_FUNCTION_8_12() == 1)
  {
    sub_2684D199C(*(v0 + 112), &qword_280282AF0, &qword_26856A1E0);
    *(v2 + 432) = 0u;
    *(v2 + 448) = 0u;
  }

  else
  {
    *(v2 + 456) = v14;
    __swift_allocate_boxed_opaque_existential_0((v2 + 432));
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_12_10();
    v40();
  }

  v41 = *(v0 + 104);
  v42 = *(v0 + 88);
  *(v2 + 464) = 0x7972616D6D7573;
  *(v2 + 472) = 0xE700000000000000;
  sub_2684E6DF4(v42, v41, &qword_280282AF0, &qword_26856A1E0);
  if (OUTLINED_FUNCTION_8_12() == 1)
  {
    sub_2684D199C(*(v0 + 104), &qword_280282AF0, &qword_26856A1E0);
    *(v2 + 480) = 0u;
    *(v2 + 496) = 0u;
  }

  else
  {
    *(v2 + 504) = v14;
    __swift_allocate_boxed_opaque_existential_0((v2 + 480));
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_12_10();
    v43();
  }

  OUTLINED_FUNCTION_5_12(MEMORY[0x277D55BF0]);
  v48 = v44;
  swift_task_alloc();
  OUTLINED_FUNCTION_44();
  *(v0 + 168) = v45;
  *v45 = v46;
  v45[1] = sub_2685105AC;
  OUTLINED_FUNCTION_24_3();

  return v48();
}

uint64_t sub_2685105AC()
{
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_4_12();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  *(v3 + 176) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_9_10();

    return v10();
  }
}

uint64_t sub_268510730()
{
  OUTLINED_FUNCTION_32_1();

  OUTLINED_FUNCTION_9_1();

  return v0();
}

uint64_t sub_2685107E8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_12();
}

uint64_t sub_268510800()
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_19_3();
  v1 = v0[3];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283418, &qword_26856D020);
  v3 = OUTLINED_FUNCTION_42_0(v2);
  v0[5] = v3;
  v4 = OUTLINED_FUNCTION_6_12(v3, xmmword_26856A540);
  OUTLINED_FUNCTION_28_1(v4, v5);
  v3[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283420, &qword_26856D028);
  v3[3].n128_u64[0] = v1;
  OUTLINED_FUNCTION_17_6(MEMORY[0x277D55BF0]);

  swift_task_alloc();
  OUTLINED_FUNCTION_44();
  v0[6] = v6;
  *v6 = v7;
  OUTLINED_FUNCTION_16_6(v6);
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_69();

  return v12(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_268510904(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 72) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return OUTLINED_FUNCTION_0_12();
}

uint64_t sub_268510920()
{
  OUTLINED_FUNCTION_32_1();
  v1 = *(v0 + 72);
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283418, &qword_26856D020);
  v3 = swift_allocObject();
  *(v0 + 48) = v3;
  v4 = OUTLINED_FUNCTION_6_12(v3, xmmword_26856CED0);
  OUTLINED_FUNCTION_28_1(v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283420, &qword_26856D028);
  v3[3].n128_u64[0] = v2;
  OUTLINED_FUNCTION_25_2();
  v3[4].n128_u64[1] = v6;
  v3[5].n128_u64[0] = 0xD000000000000012;
  v3[5].n128_u64[1] = v7;
  if (v1)
  {
    v8 = 0;
    v9 = 0;
    v3[6].n128_u64[1] = 0;
    v3[7].n128_u64[0] = 0;
  }

  else
  {
    v8 = *(v0 + 32);
    v9 = MEMORY[0x277D839F8];
  }

  v3[6].n128_u64[0] = v8;
  v3[7].n128_u64[1] = v9;
  OUTLINED_FUNCTION_17_6(MEMORY[0x277D55BF0]);

  swift_task_alloc();
  OUTLINED_FUNCTION_44();
  *(v0 + 56) = v10;
  *v10 = v11;
  v10[1] = sub_268510A84;
  OUTLINED_FUNCTION_35_0();

  return v12();
}

uint64_t sub_268510A84()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_4_12();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_9_1();

    return v10();
  }
}

uint64_t sub_268510BA0()
{
  OUTLINED_FUNCTION_5();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 74) = v3;
  *(v1 + 73) = v4;
  *(v1 + 72) = v5;
  *(v1 + 16) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  OUTLINED_FUNCTION_10(v7);
  *(v1 + 40) = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_268510C3C()
{
  OUTLINED_FUNCTION_19_3();
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283418, &qword_26856D020);
  v3 = swift_allocObject();
  *(v0 + 48) = v3;
  *(v3 + 16) = xmmword_26856CEE0;
  *(v3 + 32) = 0x6E69616D6F64;
  *(v3 + 40) = 0xE600000000000000;
  sub_2684E6DF4(v2, v1, &qword_280282AF0, &qword_26856A1E0);
  v4 = sub_268568810();
  if (OUTLINED_FUNCTION_8_12() == 1)
  {
    sub_2684D199C(*(v0 + 40), &qword_280282AF0, &qword_26856A1E0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_12_10();
    v5();
  }

  v6 = *(v0 + 74);
  v7 = *(v0 + 73);
  v8 = *(v0 + 72);
  *(v3 + 80) = 0x6565636572507369;
  *(v3 + 88) = 0xEB00000000646564;
  v9 = MEMORY[0x277D839B0];
  *(v3 + 96) = v8;
  *(v3 + 120) = v9;
  *(v3 + 128) = 0xD000000000000010;
  *(v3 + 136) = 0x8000000268572600;
  *(v3 + 144) = v7;
  *(v3 + 168) = v9;
  *(v3 + 176) = 0x6565636375537369;
  *(v3 + 184) = 0xEB00000000646564;
  *(v3 + 216) = v9;
  *(v3 + 192) = v6;
  OUTLINED_FUNCTION_5_12(MEMORY[0x277D55BF0]);
  v14 = v10;
  swift_task_alloc();
  OUTLINED_FUNCTION_44();
  *(v0 + 56) = v11;
  *v11 = v12;
  v11[1] = sub_268510E54;
  OUTLINED_FUNCTION_24_3();

  return v14();
}

uint64_t sub_268510E54()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_4_12();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_9_10();

    return v10();
  }
}

uint64_t sub_268510F78()
{
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_9_1();

  return v0();
}

uint64_t sub_268510FDC(uint64_t a1)
{
  swift_allocObject();
  OUTLINED_FUNCTION_12_10();
  return sub_26851102C(v1, v2, v3);
}

uint64_t sub_26851102C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2685688F0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282EC8, &unk_26856D010);
  v10 = OUTLINED_FUNCTION_10(v9);
  MEMORY[0x28223BE20](v10);
  sub_2684E6DF4(a1, &v14 - v11, &qword_280282EC8, &unk_26856D010);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_268568700();
  (*(v6 + 8))(a2, v5);
  sub_2684D199C(a1, &qword_280282EC8, &unk_26856D010);
  return v12;
}

uint64_t OUTLINED_FUNCTION_8_12()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_28_1@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = a2 & 0xFFFFFFFFFFFFLL | 0x7365000000000000;
  *(result + 40) = 0xE800000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_36_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 32) = a2 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
  *(a1 + 40) = 0xE700000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_40_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_42_0(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_26851140C@<X0>(uint64_t a1@<X8>)
{
  v23[2] = a1;
  v1 = sub_2685679B0();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_268567B60();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268567990();
  v23[1] = v24[4];
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  sub_268567A20();
  (*(v9 + 104))(v12, *MEMORY[0x277D5BC10], v7);
  (*(v3 + 104))(v6, *MEMORY[0x277D5B950], v1);
  sub_2685123B8();
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_5_13();
  OUTLINED_FUNCTION_4_13();
  sub_2684EBB74(v13, v14, v15, v16, v17, v18, v19, v20, 0, v22);
  sub_2685679A0();

  __swift_destroy_boxed_opaque_existential_0(v24);
  return sub_268567D20();
}

uint64_t sub_268511604(void *__src, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  *(v9 + 160) = a2;
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  memcpy((v9 + 32), __src, 0x80uLL);
  *(v9 + 168) = a7;
  *(v9 + 176) = a8;
  *(v9 + 184) = a5;
  *(v9 + 192) = a6;
  *(v9 + 200) = a9;
  return v9;
}

uint64_t sub_268511670(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RNNoPromptFlow();
  sub_268512AF0();
  return sub_268567900();
}

uint64_t sub_2685116CC(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = sub_2685679B0();
  v2[20] = v3;
  OUTLINED_FUNCTION_2_4(v3);
  v2[21] = v4;
  v2[22] = OUTLINED_FUNCTION_39();
  v5 = sub_268567B60();
  v2[23] = v5;
  OUTLINED_FUNCTION_2_4(v5);
  v2[24] = v6;
  v2[25] = OUTLINED_FUNCTION_39();
  sub_268567B10();
  v2[26] = OUTLINED_FUNCTION_39();
  v7 = sub_268567F20();
  v2[27] = v7;
  OUTLINED_FUNCTION_2_4(v7);
  v2[28] = v8;
  v2[29] = OUTLINED_FUNCTION_39();
  v9 = sub_2685689F0();
  v2[30] = v9;
  OUTLINED_FUNCTION_2_4(v9);
  v2[31] = v10;
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2685118A4, 0, 0);
}

uint64_t sub_2685118A4()
{
  if (qword_280282960 != -1)
  {
    swift_once();
  }

  v1 = v0[34];
  v2 = v0[30];
  v3 = v0[31];
  v4 = __swift_project_value_buffer(v2, qword_28028B348);
  v0[35] = v4;
  v5 = *(v3 + 16);
  v0[36] = v5;
  v0[37] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_2685689E0();
  v7 = sub_268568DC0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2684CA000, v6, v7, "RNNoPromptFlow: In makePromptForValue", v8, 2u);
    MEMORY[0x26D61CB30](v8, -1, -1);
  }

  v9 = v0[34];
  v10 = v0[30];
  v11 = v0[31];
  v12 = v0[19];

  v13 = *(v11 + 8);
  v0[38] = v13;
  v13(v9, v10);
  v14 = *(v12 + 160);
  if (sub_2684DEAF0(v14))
  {
    sub_2684DEAFC();
    if ((v14 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x26D61C170](0, v14);
    }

    else
    {
      v15 = *(v14 + 32);
    }

    v16 = v15;
    v0[39] = v15;
    v17 = v0[19];
    sub_268567AE0();
    *(swift_task_alloc() + 16) = v16;
    sub_268567ED0();

    v28 = (*(v17 + 16) + **(v17 + 16));
    v18 = swift_task_alloc();
    v0[40] = v18;
    *v18 = v0;
    v18[1] = sub_268511C64;

    return v28();
  }

  else
  {
    v5(v0[33], v4, v0[30]);
    v20 = sub_2685689E0();
    v21 = sub_268568DE0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      OUTLINED_FUNCTION_9_11(&dword_2684CA000, v23, v24, "RNNoPromptFlow: Not finding a valid SANotificationOnDeviceObject");
      MEMORY[0x26D61CB30](v22, -1, -1);
    }

    v25 = v0[33];
    v26 = v0[30];

    v13(v25, v26);
    sub_268567C40();
    OUTLINED_FUNCTION_1_13();

    OUTLINED_FUNCTION_9_1();

    return v27();
  }
}

uint64_t sub_268511C64(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  *(v4 + 328) = v1;

  if (v1)
  {
    v7 = sub_268512008;
  }

  else
  {
    *(v4 + 336) = a1;
    v7 = sub_268511D84;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_268511D84(uint64_t a1)
{
  v21 = v1[29];
  v22 = v1[42];
  v23 = v1[39];
  v24 = v1[28];
  v25 = v1[27];
  v2 = v1[24];
  v3 = v1[25];
  v5 = v1[22];
  v4 = v1[23];
  v7 = v1[20];
  v6 = v1[21];
  v8 = v1[19];
  sub_268567990();
  __swift_project_boxed_opaque_existential_1(v1 + 7, v1[10]);
  sub_268567A20();
  (*(v2 + 104))(v3, *MEMORY[0x277D5BB40], v4);
  (*(v6 + 104))(v5, *MEMORY[0x277D5B950], v7);
  sub_2685123B8();
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_5_13();
  OUTLINED_FUNCTION_4_13();
  sub_2684EBB74(v9, v10, v11, v12, v13, v14, v15, v16, 0, v20);
  sub_2685679A0();

  __swift_destroy_boxed_opaque_existential_0(v1 + 7);
  sub_2684D57FC(v8 + 112, (v1 + 12));
  sub_268567D00();
  swift_allocObject();
  sub_268567CF0();
  sub_268567840();
  swift_allocObject();
  v1[17] = sub_268567830();
  sub_268567890();

  (*(v8 + 168))(v17);
  (*(v8 + 184))(0);
  sub_268567C30();

  (*(v24 + 8))(v21, v25);
  OUTLINED_FUNCTION_1_13();

  OUTLINED_FUNCTION_9_1();

  return v18();
}

uint64_t sub_268512008()
{
  (*(v0 + 288))(*(v0 + 256), *(v0 + 280), *(v0 + 240));
  v1 = sub_2685689E0();
  v2 = sub_268568DE0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    OUTLINED_FUNCTION_9_11(&dword_2684CA000, v4, v5, "RNNoPromptFlow: Error while getting pattern result");
    MEMORY[0x26D61CB30](v3, -1, -1);
  }

  v6 = *(v0 + 304);
  v7 = *(v0 + 256);
  v8 = *(v0 + 240);
  v29 = *(v0 + 232);
  v30 = *(v0 + 328);
  v26 = *(v0 + 312);
  v27 = *(v0 + 224);
  v28 = *(v0 + 216);
  v9 = *(v0 + 192);
  v10 = *(v0 + 200);
  v11 = *(v0 + 176);
  v12 = *(v0 + 168);
  v24 = *(v0 + 184);
  v25 = *(v0 + 160);

  v6(v7, v8);
  sub_268567990();
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_268567A20();
  (*(v9 + 104))(v10, *MEMORY[0x277D5BC00], v24);
  (*(v12 + 104))(v11, *MEMORY[0x277D5B8D0], v25);
  sub_2685123B8();
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_5_13();
  OUTLINED_FUNCTION_4_13();
  sub_2684EBB74(v13, v14, v15, v16, v17, v18, v19, v20, 0, v23);
  sub_2685679A0();

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_268567C40();

  (*(v27 + 8))(v29, v28);
  OUTLINED_FUNCTION_1_13();

  OUTLINED_FUNCTION_9_1();

  return v21();
}

uint64_t sub_268512264(uint64_t a1, void *a2)
{
  v3 = sub_268567CE0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C00, &unk_26856A9A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v11 - v8;
  sub_268567CD0();
  sub_268508520(a2, v9);
  (*(v4 + 8))(v6, v3);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v3);
  sub_268567EF0();
  return sub_268567EE0();
}

void sub_2685123B8()
{
  v1 = *(v0 + 160);
  v2 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];
  v3 = sub_2684DEAF0(v1);
  v4 = 0;
  v5 = v1 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v6 = MEMORY[0x26D61C170](v4, v1);
    }

    else
    {
      if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }

      v6 = *(v1 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v4, 1))
    {
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
      return;
    }

    sub_268527624(v6);
    if (v8)
    {

      sub_268569020();
      OUTLINED_FUNCTION_7_15();
      sub_268569050();
      OUTLINED_FUNCTION_7_15();
      sub_268569060();
      sub_268569030();
    }

    else
    {
    }

    ++v4;
  }

  v9 = sub_2684DEAF0(v23);

  if (v9 <= 0)
  {
    v10 = sub_2684DEAF0(v1);
    for (i = 0; v10 != i; ++i)
    {
      if (v5)
      {
        v12 = MEMORY[0x26D61C170](i, v1);
      }

      else
      {
        if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_44;
        }

        v12 = *(v1 + 8 * i + 32);
      }

      v13 = v12;
      if (__OFADD__(i, 1))
      {
        goto LABEL_43;
      }

      sub_268527630(v12);
      if (v14)
      {

        sub_268569020();
        OUTLINED_FUNCTION_7_15();
        sub_268569050();
        OUTLINED_FUNCTION_7_15();
        sub_268569060();
        sub_268569030();
      }

      else
      {
      }
    }

    sub_2684DEAF0(v2);
  }

  v15 = sub_2684DEAF0(v1);
  for (j = 0; v15 != j; ++j)
  {
    if (v5)
    {
      v17 = MEMORY[0x26D61C170](j, v1);
    }

    else
    {
      if (j >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v17 = *(v1 + 8 * j + 32);
    }

    v18 = v17;
    if (__OFADD__(j, 1))
    {
      goto LABEL_41;
    }

    v19 = [v17 isHighlight];
    if (!v19)
    {
      goto LABEL_35;
    }

    v20 = [v18 isHighlight];
    if (!v20)
    {
      goto LABEL_45;
    }

    v21 = v20;
    v22 = [v20 integerValue];

    if (v22 > 0)
    {
      sub_268569020();
      sub_268569050();
      sub_268569060();
      sub_268569030();
    }

    else
    {
LABEL_35:
    }
  }

  sub_2684DEAF0(v2);
}

uint64_t sub_2685126E0()
{

  sub_2684CC8D4(v0 + 32);

  return v0;
}

uint64_t sub_268512720()
{
  sub_2685126E0();

  return MEMORY[0x2821FE8D8](v0, 201, 7);
}

uint64_t sub_268512778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_268512828;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_268512828(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(a1);
}

uint64_t sub_268512940(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2685129DC;

  return sub_2685116CC(a1);
}

uint64_t sub_2685129DC()
{
  v1 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v2 = v1;

  OUTLINED_FUNCTION_9_1();

  return v3();
}

unint64_t sub_268512AF0()
{
  result = qword_280283428;
  if (!qword_280283428)
  {
    type metadata accessor for RNNoPromptFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283428);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_13()
{
}

void OUTLINED_FUNCTION_9_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

unint64_t sub_268512BCC()
{
  v1 = [*(v0 + 16) notificationContext];
  if (!v1)
  {
    return 0xD00000000000004CLL;
  }

  v2 = v1;
  sub_268568FD0();
  MEMORY[0x26D61BDA0](0xD00000000000002ELL, 0x8000000268572B10);
  v3 = [v2 isLongNotification];
  v4 = v3 == 0;
  if (v3)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v4)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  MEMORY[0x26D61BDA0](v5, v6);

  MEMORY[0x26D61BDA0](0x686769487369202CLL, 0xEF203A746867696CLL);
  v7 = [v2 isHighlight];
  v8 = v7 == 0;
  if (v7)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v8)
  {
    v10 = 0xE500000000000000;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  MEMORY[0x26D61BDA0](v9, v10);

  MEMORY[0x26D61BDA0](0xD000000000000010, 0x8000000268572B40);
  v11 = [v2 isSummarized];
  v12 = v11 == 0;
  if (v11)
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (v12)
  {
    v14 = 0xE500000000000000;
  }

  else
  {
    v14 = 0xE400000000000000;
  }

  MEMORY[0x26D61BDA0](v13, v14);

  return 0;
}

id sub_268512D7C()
{
  result = [objc_allocWithZone(MEMORY[0x277D57520]) init];
  if (result)
  {
    v2 = result;
    *(v0 + 16) = result;
    v3 = objc_allocWithZone(MEMORY[0x277D57668]);
    v4 = v2;
    v5 = [v3 init];
    [v4 setNotificationContext_];

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_268512E10()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_268512E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_2685689F0();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_268568580();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268512FB0, 0, 0);
}

uint64_t sub_268512FB0()
{
  v38 = v0;
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  (*(v2 + 104))(v1, *MEMORY[0x277CEBE20], v3);
  v4 = sub_268568570();
  (*(v2 + 8))(v1, v3);
  if ((v4 & 1) == 0)
  {
    goto LABEL_11;
  }

  v5 = objc_opt_self();
  v6 = sub_268568B10();
  v7 = [v5 applicationWithBundleIdentifier_];

  if (qword_280282960 != -1)
  {
    swift_once();
  }

  v9 = v0[6];
  v8 = v0[7];
  v10 = v0[5];
  v11 = __swift_project_value_buffer(v10, qword_28028B348);
  (*(v9 + 16))(v8, v11, v10);

  v12 = v7;
  v13 = sub_2685689E0();
  v14 = sub_268568DC0();

  v15 = os_log_type_enabled(v13, v14);
  v17 = v0[6];
  v16 = v0[7];
  v18 = v0[5];
  if (v15)
  {
    v20 = v0[3];
    v19 = v0[4];
    v36 = v0[5];
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v35 = v16;
    v23 = swift_slowAlloc();
    v37 = v23;
    *v21 = 136315394;
    *(v21 + 4) = sub_2684EABEC(v20, v19, &v37);
    *(v21 + 12) = 2112;
    *(v21 + 14) = v12;
    *v22 = v12;
    v24 = v12;
    _os_log_impl(&dword_2684CA000, v13, v14, "ProtectedAppCheck#status for %s: %@", v21, 0x16u);
    sub_2684CECB8(v22);
    MEMORY[0x26D61CB30](v22, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x26D61CB30](v23, -1, -1);
    MEMORY[0x26D61CB30](v21, -1, -1);

    (*(v17 + 8))(v35, v36);
  }

  else
  {

    (*(v17 + 8))(v16, v18);
  }

  if ([v12 isHidden])
  {
    v25 = v0[2];
    v26 = *MEMORY[0x277D5BDF8];
    sub_268567DF0();
    OUTLINED_FUNCTION_0_14();
    (*(v27 + 104))(v25, v26);

    goto LABEL_13;
  }

  v28 = [v12 isLocked];

  if (v28)
  {
    v29 = v0[2];
    v30 = MEMORY[0x277D5BE00];
  }

  else
  {
LABEL_11:
    v29 = v0[2];
    v30 = MEMORY[0x277D5BE08];
  }

  v31 = *v30;
  sub_268567DF0();
  OUTLINED_FUNCTION_0_14();
  (*(v32 + 104))(v29, v31);
LABEL_13:

  v33 = v0[1];

  return v33();
}

void *sub_268513374()
{
  type metadata accessor for UserDefaultsProvider();
  v0 = swift_allocObject();
  result = sub_2685133B0();
  qword_28028B398 = v0;
  return result;
}

void *sub_2685133B0()
{
  v0[3] = 0xD00000000000001BLL;
  v0[4] = 0x8000000268571320;
  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v0[2] = sub_26851BB5C(0xD00000000000001BLL, 0x8000000268571320);
  return v0;
}

uint64_t UserDefaultsProvider.__deallocating_deinit()
{
  UserDefaultsProvider.deinit();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t type metadata accessor for ReadNotificationsCATPatternsExecutor(uint64_t a1)
{
  result = qword_280283430;
  if (!qword_280283430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268513524(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283418, &qword_26856D020);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_26856CED0;
  *(v2 + 32) = 0x656D614E707061;
  *(v2 + 40) = 0xE700000000000000;
  if (a1)
  {
    sub_2685687A0();
    v3 = a1;
  }

  else
  {
    v3 = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v3;
  OUTLINED_FUNCTION_25_2();
  *(v2 + 72) = v4;
  *(v2 + 80) = 0xD000000000000017;
  *(v2 + 88) = v5;
  *(v2 + 120) = MEMORY[0x277D839B0];
  *(v2 + 96) = 0;

  return v2;
}

uint64_t sub_2685135E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283418, &qword_26856D020);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_26856D240;
  OUTLINED_FUNCTION_25_2();
  *(v2 + 32) = 0xD000000000000020;
  *(v2 + 40) = v3;
  v4 = MEMORY[0x277D839B0];
  *(v2 + 48) = *v0;
  *(v2 + 72) = v4;
  *(v2 + 80) = 0xD000000000000010;
  *(v2 + 88) = 0x8000000268571A90;
  *(v2 + 96) = *(v0 + 1);
  *(v2 + 120) = v4;
  *(v2 + 128) = 0xD000000000000017;
  *(v2 + 136) = 0x8000000268572C30;
  *(v2 + 144) = 0;
  *(v2 + 168) = v4;
  *(v2 + 176) = 0x6E69577473726966;
  *(v2 + 184) = 0xEF657A6953776F64;
  if (*(v0 + 16))
  {
    v5 = 0;
    v6 = 0;
    *(v1 + 200) = 0;
    *(v1 + 208) = 0;
  }

  else
  {
    v5 = *(v0 + 8);
    v6 = MEMORY[0x277D839F8];
  }

  *(v1 + 192) = v5;
  *(v1 + 216) = v6;
  strcpy((v1 + 224), "isConclusion");
  *(v1 + 237) = 0;
  *(v1 + 238) = -5120;
  *(v1 + 240) = *(v0 + 17);
  *(v1 + 264) = v4;
  strcpy((v1 + 272), "isFirstWindow");
  *(v1 + 286) = -4864;
  *(v1 + 288) = *(v0 + 18);
  *(v1 + 312) = v4;
  strcpy((v1 + 320), "isLastWindow");
  *(v1 + 333) = 0;
  *(v1 + 334) = -5120;
  *(v1 + 336) = *(v0 + 19);
  *(v1 + 360) = v4;
  *(v1 + 368) = 0xD000000000000016;
  *(v1 + 376) = 0x8000000268572CE0;
  *(v1 + 384) = *(v0 + 20);
  *(v1 + 408) = v4;
  *(v1 + 416) = 0x736D657469;
  *(v1 + 424) = 0xE500000000000000;
  v7 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283440, &qword_26856D320);
  *(v1 + 432) = v7;
  OUTLINED_FUNCTION_25_2();
  *(v1 + 456) = v8;
  *(v1 + 464) = 0xD000000000000013;
  *(v1 + 472) = v9;
  if (*(v0 + 40))
  {
    v10 = 0;
    v11 = 0;
    *(v1 + 488) = 0;
    *(v1 + 496) = 0;
  }

  else
  {
    v10 = *(v0 + 32);
    v11 = MEMORY[0x277D839F8];
  }

  *(v1 + 480) = v10;
  *(v1 + 504) = v11;
  *(v1 + 512) = 0x6574496C61746F74;
  *(v1 + 520) = 0xEA0000000000736DLL;
  if (*(v0 + 56))
  {
    v12 = 0;
    v13 = 0;
    *(v1 + 536) = 0u;
  }

  else
  {
    v12 = *(v0 + 48);
    v13 = MEMORY[0x277D839F8];
  }

  *(v1 + 528) = v12;
  *(v1 + 552) = v13;
  *(v1 + 560) = 0x6953776F646E6977;
  *(v1 + 568) = 0xEA0000000000657ALL;
  if (*(v0 + 72))
  {
    v14 = 0;
    v15 = 0;
    *(v1 + 584) = 0u;
  }

  else
  {
    v14 = *(v0 + 64);
    v15 = MEMORY[0x277D839F8];
  }

  *(v1 + 576) = v14;
  *(v1 + 600) = v15;
  sub_268514970(v0, &v17);
  return v1;
}

uint64_t sub_2685138D4(char a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283418, &qword_26856D020);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26856CF10;
  OUTLINED_FUNCTION_25_2();
  *(v5 + 32) = 0xD000000000000017;
  *(v5 + 40) = v6;
  v7 = MEMORY[0x277D839B0];
  *(v5 + 48) = 0;
  *(v5 + 72) = v7;
  strcpy((v5 + 80), "isReadLatest");
  *(v5 + 93) = 0;
  *(v5 + 94) = -5120;
  *(v5 + 96) = a1;
  *(v5 + 120) = v7;
  strcpy((v5 + 128), "notification");
  *(v5 + 141) = 0;
  *(v5 + 142) = -5120;
  if (a2)
  {
    v8 = type metadata accessor for NotificationsNotification(0);
    v9 = a2;
  }

  else
  {
    v9 = 0;
    v8 = 0;
    *(v4 + 152) = 0;
    *(v4 + 160) = 0;
  }

  *(v4 + 144) = v9;
  *(v4 + 168) = v8;

  return v4;
}

uint64_t sub_2685139D4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return OUTLINED_FUNCTION_0_12();
}

uint64_t sub_2685139E8()
{
  OUTLINED_FUNCTION_20_2();
  v0[4] = *(v0[3] + 32);

  v0[5] = sub_268513524(v1);
  OUTLINED_FUNCTION_5_12(MEMORY[0x277D55BE8]);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_11_8(v2);
  v3 = OUTLINED_FUNCTION_8_13(36);

  return v4(v3);
}

uint64_t sub_268513AAC()
{
  OUTLINED_FUNCTION_4_14();
  v4 = v3;
  OUTLINED_FUNCTION_4_12();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_3_0();
  *v7 = v6;
  *(v4 + 56) = v0;

  if (!v0)
  {
    *(v4 + 64) = v1;
  }

  OUTLINED_FUNCTION_5_14();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_268513BD8()
{
  OUTLINED_FUNCTION_5();

  v0 = OUTLINED_FUNCTION_10_6();

  return v1(v0);
}

uint64_t sub_268513C38()
{
  OUTLINED_FUNCTION_5();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_268513CB4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283418, &qword_26856D020);
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_25_2();
  v2[4] = 0xD000000000000017;
  v2[5] = v3;
  v2[9] = MEMORY[0x277D839B0];
  OUTLINED_FUNCTION_5_12(MEMORY[0x277D55BE8]);
  v8 = v4;
  *(v0 + 24) = v1;
  *(v1 + 16) = v5;
  *(v1 + 48) = 0;
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  v6[1] = sub_268513DD4;

  return v8(0xD000000000000027, 0x8000000268572D20, v1);
}

uint64_t sub_268513DD4()
{
  OUTLINED_FUNCTION_20_2();
  OUTLINED_FUNCTION_4_14();
  v4 = v3;
  OUTLINED_FUNCTION_4_12();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_3_0();
  *v7 = v6;
  *(v4 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_5_14();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }

  else
  {

    v11 = *(v6 + 8);

    return v11(v1);
  }
}

uint64_t sub_268513F08()
{
  OUTLINED_FUNCTION_5();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_268513F68(char a1, char a2, char a3, char a4, char a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 272) = v11;
  *(v9 + 280) = v8;
  *(v9 + 256) = a7;
  *(v9 + 264) = a8;
  *(v9 + 94) = a6;
  *(v9 + 93) = a5;
  *(v9 + 92) = a4;
  *(v9 + 91) = a3;
  *(v9 + 90) = a2;
  *(v9 + 89) = a1;
  return MEMORY[0x2822009F8](sub_268513FAC, 0, 0);
}

uint64_t sub_268513FAC()
{
  OUTLINED_FUNCTION_20_2();
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = *(v0 + 94);
  v4 = *(v0 + 93);
  v5 = *(v0 + 92);
  v6 = *(v0 + 91);
  v7 = *(v0 + 90);
  v8 = *(v0 + 89);
  *(v0 + 336) = 1;
  *(v0 + 344) = 1;
  *(v0 + 352) = 1;
  *(v0 + 360) = 1;
  *(v0 + 96) = v8;
  *(v0 + 97) = v7;
  *(v0 + 104) = 0;
  *(v0 + 112) = 1;
  *(v0 + 113) = v6;
  *(v0 + 114) = v5;
  *(v0 + 115) = v4;
  *(v0 + 116) = v3;
  *(v0 + 120) = v1;
  *(v0 + 128) = 0;
  *(v0 + 136) = 1;
  *(v0 + 144) = 0;
  *(v0 + 152) = 1;
  *(v0 + 160) = 0;
  *(v0 + 168) = 1;

  v11 = (v2 + *v2);
  v9 = swift_task_alloc();
  *(v0 + 288) = v9;
  *v9 = v0;
  v9[1] = sub_268514108;

  return v11(v0 + 96);
}

uint64_t sub_268514108()
{
  OUTLINED_FUNCTION_5();
  v2 = *v1;
  OUTLINED_FUNCTION_4_12();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v5 = v4;
  v2[37] = v0;

  if (v0)
  {
    memcpy(v2 + 22, v2 + 12, 0x49uLL);
    sub_268514940((v2 + 22));
    v6 = sub_268514424;
  }

  else
  {
    v6 = sub_268514220;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_268514220()
{
  OUTLINED_FUNCTION_20_2();
  memcpy(v0 + 2, v0 + 12, 0x49uLL);
  v0[38] = sub_2685135E8();
  sub_268514940((v0 + 2));
  OUTLINED_FUNCTION_5_12(MEMORY[0x277D55BE8]);
  v1 = swift_task_alloc();
  v0[39] = v1;
  *v1 = v0;
  v1[1] = sub_2685142FC;
  v2 = OUTLINED_FUNCTION_8_13(45);

  return v3(v2);
}

uint64_t sub_2685142FC()
{
  OUTLINED_FUNCTION_20_2();
  OUTLINED_FUNCTION_4_14();
  v4 = v3;
  OUTLINED_FUNCTION_4_12();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_3_0();
  *v7 = v6;
  *(v4 + 320) = v0;

  if (!v0)
  {

    *(v4 + 328) = v1;
  }

  OUTLINED_FUNCTION_5_14();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26851443C()
{
  OUTLINED_FUNCTION_5();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26851449C(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 72) = a1;
  return OUTLINED_FUNCTION_0_12();
}

uint64_t sub_2685144B4()
{
  OUTLINED_FUNCTION_20_2();
  v1 = *(v0 + 72);
  v2 = sub_268555B38();
  *(v0 + 32) = v2;
  *(v0 + 40) = sub_2685138D4(v1, v2);
  OUTLINED_FUNCTION_5_12(MEMORY[0x277D55BE8]);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_11_8(v3);
  v4 = OUTLINED_FUNCTION_8_13(40);

  return v5(v4);
}

uint64_t sub_268514584()
{
  OUTLINED_FUNCTION_4_14();
  v4 = v3;
  OUTLINED_FUNCTION_4_12();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_3_0();
  *v7 = v6;
  *(v4 + 56) = v0;

  if (!v0)
  {
    *(v4 + 64) = v1;
  }

  OUTLINED_FUNCTION_5_14();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2685146B0()
{
  OUTLINED_FUNCTION_5();

  v0 = OUTLINED_FUNCTION_10_6();

  return v1(v0);
}

uint64_t sub_268514710()
{
  OUTLINED_FUNCTION_5();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2685147CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2685688F0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282EC8, &unk_26856D010);
  MEMORY[0x28223BE20](v9 - 8);
  sub_2684F3D80(a1, &v13 - v10);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_268568700();
  (*(v6 + 8))(a2, v5);
  sub_2684F3DF0(a1);
  return v11;
}

uint64_t sub_2685149B0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 73))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2685149F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_268514B10()
{
  OUTLINED_FUNCTION_5();
  v1[3] = v0;
  v2 = sub_2685689F0();
  v1[4] = v2;
  OUTLINED_FUNCTION_2_4(v2);
  v1[5] = v3;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[8] = v4;
  *v4 = v1;
  v4[1] = sub_268514BFC;

  return sub_2685153B4();
}

uint64_t sub_268514BFC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 72) = v4;
  *(v2 + 80) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_268514CFC()
{
  v1 = v0[3];
  v3 = v1[7];
  v2 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v3);
  v4 = swift_task_alloc();
  v0[11] = v4;
  v5 = sub_2684E0120();
  *v4 = v0;
  v4[1] = sub_268514DCC;
  v6 = v0[9];

  return MEMORY[0x2821BB6A0](v6, v3, v5, v2);
}

uint64_t sub_268514DCC()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_4();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v7 = v6;
  *(v8 + 96) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_268514ECC()
{
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = __swift_project_value_buffer(v2, qword_28028B348);
  (*(v3 + 16))(v1, v4, v2);
  v5 = sub_2685689E0();
  v6 = sub_268568DC0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2684CA000, v5, v6, "RNReadIntroductionAction run | read notifications summary", v7, 2u);
    MEMORY[0x26D61CB30](v7, -1, -1);
  }

  v8 = *(v0 + 56);
  v9 = *(v0 + 32);
  v10 = *(v0 + 40);

  (*(v10 + 8))(v8, v9);

  OUTLINED_FUNCTION_9_1();

  return v11();
}

uint64_t sub_26851502C()
{
  v24 = v0;
  v2 = v0[10];
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  __swift_project_value_buffer(v0[4], qword_28028B348);
  v3 = OUTLINED_FUNCTION_10_1();
  v4(v3);
  v5 = v2;
  v6 = sub_2685689E0();
  sub_268568DE0();

  v7 = OUTLINED_FUNCTION_24_4();
  v8 = v0[5];
  v9 = v0[6];
  v10 = v0[4];
  if (v7)
  {
    swift_slowAlloc();
    v23 = OUTLINED_FUNCTION_6_8();
    *v9 = 136315138;
    v0[2] = v2;
    v11 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v12 = sub_268568B70();
    sub_2684EABEC(v12, v13, &v23);
    OUTLINED_FUNCTION_23_3();
    *(v9 + 4) = v1;
    OUTLINED_FUNCTION_21_0();
    _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
    OUTLINED_FUNCTION_1_7();
    OUTLINED_FUNCTION_3_2();

    (*(v8 + 8))(v9, v10);
  }

  else
  {

    v19 = OUTLINED_FUNCTION_20_3();
    v20(v19, v10);
  }

  swift_willThrow();

  OUTLINED_FUNCTION_9_1();

  return v21();
}

uint64_t sub_2685151EC()
{
  v24 = v0;

  v2 = *(v0 + 96);
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  __swift_project_value_buffer(*(v0 + 32), qword_28028B348);
  v3 = OUTLINED_FUNCTION_10_1();
  v4(v3);
  v5 = v2;
  v6 = sub_2685689E0();
  sub_268568DE0();

  v7 = OUTLINED_FUNCTION_24_4();
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  v10 = *(v0 + 32);
  if (v7)
  {
    swift_slowAlloc();
    v23 = OUTLINED_FUNCTION_6_8();
    *v9 = 136315138;
    *(v0 + 16) = v2;
    v11 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v12 = sub_268568B70();
    sub_2684EABEC(v12, v13, &v23);
    OUTLINED_FUNCTION_23_3();
    *(v9 + 4) = v1;
    OUTLINED_FUNCTION_21_0();
    _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
    OUTLINED_FUNCTION_1_7();
    OUTLINED_FUNCTION_3_2();

    (*(v8 + 8))(v9, v10);
  }

  else
  {

    v19 = OUTLINED_FUNCTION_20_3();
    v20(v19, v10);
  }

  swift_willThrow();

  OUTLINED_FUNCTION_9_1();

  return v21();
}

uint64_t sub_2685153B4()
{
  OUTLINED_FUNCTION_5();
  v1[2] = v0;
  v2 = sub_268568810();
  v1[3] = v2;
  OUTLINED_FUNCTION_2_4(v2);
  v1[4] = v3;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v4 = sub_268567D90();
  v1[7] = v4;
  OUTLINED_FUNCTION_2_4(v4);
  v1[8] = v5;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v6 = sub_2685689F0();
  v1[11] = v6;
  OUTLINED_FUNCTION_2_4(v6);
  v1[12] = v7;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_268515530()
{
  v68 = v0;
  v2 = *(sub_2684F4060() + 16);

  sub_2684F42A8();
  v4 = v3;
  if (v2 >= 6)
  {
    v5 = sub_2685382A0(0);
    v7 = v6;
    v9 = v8;
    v11 = v10;

    if (v11)
    {
      sub_2685691E0();
      swift_unknownObjectRetain_n();
      v29 = swift_dynamicCastClass();
      if (!v29)
      {
        swift_unknownObjectRelease();
        v29 = MEMORY[0x277D84F90];
      }

      v30 = *(v29 + 16);

      if (__OFSUB__(v11 >> 1, v9))
      {
        __break(1u);
      }

      else if (v30 == (v11 >> 1) - v9)
      {
        v13 = swift_dynamicCastClass();
        swift_unknownObjectRelease_n();
        if (v13)
        {
LABEL_15:
          v31 = *(sub_2684F4060() + 16);

          v32 = v31 - 4;
          if (qword_280282960 != -1)
          {
            OUTLINED_FUNCTION_0_0(&qword_280282960);
          }

          v33 = v32;
          __swift_project_value_buffer(v0[11], qword_28028B348);
          v34 = OUTLINED_FUNCTION_10_1();
          v35(v34);

          v36 = sub_2685689E0();
          sub_268568DC0();
          OUTLINED_FUNCTION_19_4();

          v37 = OUTLINED_FUNCTION_24_4();
          v38 = v0[14];
          v40 = v0[11];
          v39 = v0[12];
          if (v37)
          {
            swift_slowAlloc();
            v67 = OUTLINED_FUNCTION_6_8();
            *v38 = 136315394;
            v41 = MEMORY[0x26D61BE70](v13, MEMORY[0x277D837D0]);
            sub_2684EABEC(v41, v42, &v67);
            OUTLINED_FUNCTION_23_3();
            *(v38 + 4) = v1;
            *(v38 + 12) = 2048;
            *(v38 + 14) = v33;
            OUTLINED_FUNCTION_21_0();
            _os_log_impl(v43, v44, v45, v46, v47, 0x16u);
            OUTLINED_FUNCTION_1_7();
            OUTLINED_FUNCTION_3_2();

            v48 = *(v39 + 8);
            v39 += 8;
            v48(v38, v40);
          }

          else
          {

            v56 = OUTLINED_FUNCTION_20_3();
            v57(v56, v40);
          }

          v58 = *(v13 + 16);
          if (v58)
          {
            OUTLINED_FUNCTION_17_7();
            OUTLINED_FUNCTION_13_9();
            do
            {

              sub_268568BB0();

              OUTLINED_FUNCTION_18_4();
              if (v53)
              {
                OUTLINED_FUNCTION_16_7(v59);
                v13 = v67;
              }

              v60 = OUTLINED_FUNCTION_6_13();
              v61(v60);
              v39 += 16;
              --v58;
            }

            while (v58);
          }

          else
          {

            v13 = MEMORY[0x277D84F90];
          }

          v0[15] = v13;
          v65 = swift_task_alloc();
          v0[16] = v65;
          *v65 = v0;
          v65[1] = sub_268515B0C;
          v66 = v0[10];

          return sub_268510904(v66, v13, *&v33, 0);
        }

        v13 = MEMORY[0x277D84F90];
LABEL_14:
        swift_unknownObjectRelease();
        goto LABEL_15;
      }

      swift_unknownObjectRelease_n();
    }

    sub_26853D830(v5, v7, v9, v11);
    v13 = v12;
    goto LABEL_14;
  }

  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  __swift_project_value_buffer(v0[11], qword_28028B348);
  v14 = OUTLINED_FUNCTION_10_1();
  v15(v14);

  v16 = sub_2685689E0();
  sub_268568DC0();
  OUTLINED_FUNCTION_19_4();

  v17 = OUTLINED_FUNCTION_24_4();
  v18 = v0[12];
  v19 = v0[13];
  v20 = v0[11];
  if (v17)
  {
    swift_slowAlloc();
    v67 = OUTLINED_FUNCTION_6_8();
    *v19 = 136315138;
    v21 = MEMORY[0x26D61BE70](v4, MEMORY[0x277D837D0]);
    sub_2684EABEC(v21, v22, &v67);
    OUTLINED_FUNCTION_23_3();
    *(v19 + 4) = v1;
    OUTLINED_FUNCTION_21_0();
    _os_log_impl(v23, v24, v25, v26, v27, 0xCu);
    OUTLINED_FUNCTION_1_7();
    OUTLINED_FUNCTION_3_2();

    v28 = *(v18 + 8);
    v18 += 8;
    v28(v19, v20);
  }

  else
  {

    v49 = OUTLINED_FUNCTION_20_3();
    v50(v49, v20);
  }

  v51 = *(v4 + 16);
  if (v51)
  {
    OUTLINED_FUNCTION_17_7();
    OUTLINED_FUNCTION_13_9();
    do
    {

      sub_268568BB0();

      OUTLINED_FUNCTION_18_4();
      if (v53)
      {
        OUTLINED_FUNCTION_16_7(v52);
        v4 = v67;
      }

      v54 = OUTLINED_FUNCTION_6_13();
      v55(v54);
      v18 += 16;
      --v51;
    }

    while (v51);
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
  }

  v0[18] = v4;
  v62 = swift_task_alloc();
  v0[19] = v62;
  *v62 = v0;
  v62[1] = sub_268515CE0;
  v63 = v0[9];

  return sub_2685107E8(v63, v4);
}

uint64_t sub_268515B0C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_268515C20()
{
  OUTLINED_FUNCTION_12_11();
  v0 = OUTLINED_FUNCTION_22_2();
  v1(v0);

  v2 = OUTLINED_FUNCTION_21_3();

  return v3(v2);
}

uint64_t sub_268515CE0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v5 = v4;
  *(v6 + 160) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_268515DF4()
{
  OUTLINED_FUNCTION_12_11();
  v0 = OUTLINED_FUNCTION_22_2();
  v1(v0);

  v2 = OUTLINED_FUNCTION_21_3();

  return v3(v2);
}

uint64_t sub_268515EB4()
{

  OUTLINED_FUNCTION_9_1();

  return v0();
}

uint64_t sub_268515F54()
{

  OUTLINED_FUNCTION_9_1();

  return v0();
}

void *sub_268515FF4()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));
  __swift_destroy_boxed_opaque_existential_0((v0 + 72));

  return v0;
}

uint64_t sub_268516034()
{
  sub_268515FF4();

  return MEMORY[0x2821FE8D8](v0, 128, 7);
}

uint64_t sub_26851608C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2684DB128;

  return sub_268514B10();
}

uint64_t sub_2685161A4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RNReadIntroductionAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id OUTLINED_FUNCTION_12_11()
{
  v3 = (*(v1 + 16) + 72);

  return sub_26851C004(v0, v3, 0);
}

void *OUTLINED_FUNCTION_16_7@<X0>(unint64_t a1@<X8>)
{

  return sub_2684DD000((a1 > 1), v1, 1);
}

void *OUTLINED_FUNCTION_17_7()
{

  return sub_2684DD000(0, v0, 0);
}

uint64_t OUTLINED_FUNCTION_23_3()
{
}

BOOL OUTLINED_FUNCTION_24_4()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_268516318(uint64_t a1, uint64_t a2)
{
  sub_268567690();
  OUTLINED_FUNCTION_1();
  v34 = v5;
  v35 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_5();
  v8 = v7 - v6;
  v9 = sub_2685689F0();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5_5();
  v15 = v14 - v13;
  v16 = sub_268568610();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_5_5();
  v22 = v21 - v20;
  sub_2685686F0();
  sub_2684D57FC(a1, v36);
  sub_2685686A0();
  sub_2685166B0(v36);
  sub_268568600();
  sub_2685686D0();

  (*(v18 + 8))(v22, v16);
  if (a2)
  {
    sub_2685685B0();
    v23 = sub_268568940();
    v25 = v24;

    if (v25)
    {
      if (qword_280282960 != -1)
      {
        swift_once();
      }

      v26 = __swift_project_value_buffer(v9, qword_28028B348);
      (*(v11 + 16))(v15, v26, v9);

      v27 = sub_2685689E0();
      v28 = sub_268568DC0();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v33 = v23;
        v30 = swift_slowAlloc();
        v36[0] = v30;
        *v29 = 136315138;
        *(v29 + 4) = sub_2684EABEC(v33, v25, v36);
        _os_log_impl(&dword_2684CA000, v27, v28, "#CATGlobals: localeOverride available and is set to: %s, setting this as the siriLocale", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v30);
        MEMORY[0x26D61CB30](v30, -1, -1);
        MEMORY[0x26D61CB30](v29, -1, -1);
      }

      (*(v11 + 8))(v15, v9);
      sub_268567620();
      sub_2685686C0();

      (*(v34 + 8))(v8, v35);
    }
  }

  v31 = sub_2685686E0();

  return v31;
}

uint64_t sub_2685166B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283460, &qword_26856D4C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268516718@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a1;
  v76 = a2;
  sub_268567610();
  OUTLINED_FUNCTION_1();
  v73 = v4;
  v74 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_14();
  v71 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283468, &qword_26856D4D0);
  v7 = OUTLINED_FUNCTION_10(v6);
  MEMORY[0x28223BE20](v7);
  v72 = &v57 - v8;
  OUTLINED_FUNCTION_19_1();
  v68 = sub_2685680F0();
  OUTLINED_FUNCTION_1();
  v58 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_14();
  v69 = v11;
  OUTLINED_FUNCTION_19_1();
  v75 = sub_2685681D0();
  OUTLINED_FUNCTION_1();
  v70 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_14();
  v67 = v14;
  OUTLINED_FUNCTION_19_1();
  v66 = sub_268568150();
  OUTLINED_FUNCTION_1();
  v64 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7_5();
  v62 = v17 - v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7_16();
  sub_268568190();
  OUTLINED_FUNCTION_1();
  v77 = v21;
  v78 = v20;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7_5();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v57 - v26;
  v28 = sub_268568100();
  v29 = OUTLINED_FUNCTION_10(v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_5_5();
  v30 = sub_268568200();
  OUTLINED_FUNCTION_1();
  v32 = v31;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_7_5();
  v36 = v34 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &v57 - v38;
  v65 = sub_268567CE0();
  OUTLINED_FUNCTION_1();
  v63 = v40;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_5_5();
  v44 = v43 - v42;
  sub_268567CD0();
  OUTLINED_FUNCTION_4_15();
  sub_268567CA0();
  sub_268567CB0();
  sub_268567CC0();
  sub_268567C90();
  sub_2685681F0();
  result = sub_268565330(v79);
  if (v46)
  {
    sub_26851775C(result, v46);

    sub_2685681E0();
    sub_268568180();
    v59 = v32;
    v60 = v30;
    (*(v32 + 16))(v36, v39, v30);
    sub_268568160();
    sub_268568140();
    (*(v77 + 16))(v24, v27, v78);
    sub_268568130();
    v47 = v67;
    sub_2685681C0();
    v48 = v64;
    v49 = v66;
    (*(v64 + 16))(v62, v2, v66);
    sub_2685681B0();
    v50 = v71;
    sub_268567600();
    v51 = v72;
    sub_268568210();
    (*(v73 + 8))(v50, v74);
    v52 = v68;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v51, 1, v68);
    v61 = v27;
    if (EnumTagSinglePayload == 1)
    {
      sub_2684D199C(v51, &qword_280283468, &qword_26856D4D0);
      sub_2685680E0();
    }

    else
    {
      (*(v58 + 32))(v69, v51, v52);
    }

    sub_2685681A0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283470, &qword_26856D4D8);
    v54 = v70;
    v55 = OUTLINED_FUNCTION_9_12();
    *(v55 + 16) = xmmword_26856A540;
    v56 = v75;
    (*(v54 + 16))(v55 + v47, v47, v75);
    sub_268567C80();
    sub_268508520(v79, v76);
    (*(v54 + 8))(v47, v56);
    (*(v48 + 8))(v2, v49);
    (*(v77 + 8))(v61, v78);
    (*(v59 + 8))(v39, v60);
    return (*(v63 + 8))(v44, v65);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_268516DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v81 = a1;
  v82 = a4;
  v89 = sub_268567610();
  OUTLINED_FUNCTION_1();
  v87 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_14();
  v85 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283468, &qword_26856D4D0);
  v11 = OUTLINED_FUNCTION_10(v10);
  MEMORY[0x28223BE20](v11);
  v86 = &v70 - v12;
  OUTLINED_FUNCTION_19_1();
  v83 = sub_2685680F0();
  OUTLINED_FUNCTION_1();
  v72 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_14();
  v84 = v15;
  OUTLINED_FUNCTION_19_1();
  v80 = sub_2685681D0();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_14();
  v90 = v19;
  OUTLINED_FUNCTION_19_1();
  v91 = sub_268568150();
  OUTLINED_FUNCTION_1();
  v88 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7_5();
  OUTLINED_FUNCTION_6_14();
  MEMORY[0x28223BE20](v22);
  v96 = &v70 - v23;
  OUTLINED_FUNCTION_19_1();
  v97 = sub_268568190();
  OUTLINED_FUNCTION_1();
  v95 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_7_5();
  OUTLINED_FUNCTION_6_14();
  MEMORY[0x28223BE20](v26);
  v94 = &v70 - v27;
  OUTLINED_FUNCTION_19_1();
  v28 = sub_268568100();
  v29 = OUTLINED_FUNCTION_10(v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_1_14();
  v74 = v30;
  OUTLINED_FUNCTION_19_1();
  v31 = sub_2685689F0();
  OUTLINED_FUNCTION_1();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_5_5();
  v37 = v36 - v35;
  v79 = sub_268568200();
  OUTLINED_FUNCTION_1();
  v93 = v38;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_7_5();
  OUTLINED_FUNCTION_6_14();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_7_16();
  v78 = sub_268567CE0();
  OUTLINED_FUNCTION_1();
  v77 = v41;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_5_5();
  v45 = v44 - v43;
  sub_268567CD0();
  OUTLINED_FUNCTION_4_15();
  sub_268567CA0();
  sub_268567CB0();
  sub_268567CC0();
  sub_268567C90();
  v92 = v4;
  sub_2685681F0();
  if (qword_280282960 != -1)
  {
    swift_once();
  }

  v46 = __swift_project_value_buffer(v31, qword_28028B348);
  (*(v33 + 16))(v37, v46, v31);

  v47 = sub_2685689E0();
  v48 = a2;
  v49 = sub_268568DC0();

  if (os_log_type_enabled(v47, v49))
  {
    v50 = swift_slowAlloc();
    v71 = a3;
    v51 = v50;
    v52 = swift_slowAlloc();
    v70 = v17;
    v53 = v52;
    v98 = v52;
    *v51 = 136315138;
    v54 = v81;
    *(v51 + 4) = sub_2684EABEC(v81, v48, &v98);
    _os_log_impl(&dword_2684CA000, v47, v49, "NotificationContext makeReadNotificationPromptContext | setting reference for appName: %s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v53);
    v55 = v53;
    v17 = v70;
    MEMORY[0x26D61CB30](v55, -1, -1);
    v56 = v51;
    a3 = v71;
    MEMORY[0x26D61CB30](v56, -1, -1);

    (*(v33 + 8))(v37, v31);
  }

  else
  {

    (*(v33 + 8))(v37, v31);
    v54 = v81;
  }

  sub_26851775C(v54, v48);
  v57 = v92;
  sub_2685681E0();
  v58 = v94;
  sub_268568180();
  v59 = v79;
  (*(v93 + 16))(v73, v57, v79);
  sub_268568160();
  v60 = v96;
  sub_268568140();
  (*(v95 + 16))(v75, v58, v97);
  sub_268568130();
  v61 = v90;
  sub_2685681C0();
  v62 = v88;
  v63 = v91;
  (*(v88 + 16))(v76, v60, v91);
  sub_2685681B0();
  v64 = v85;
  sub_268567600();
  v65 = v86;
  sub_268568210();
  (*(v87 + 8))(v64, v89);
  v66 = v83;
  if (__swift_getEnumTagSinglePayload(v65, 1, v83) == 1)
  {
    sub_2684D199C(v65, &qword_280283468, &qword_26856D4D0);
    sub_2685680E0();
  }

  else
  {
    (*(v72 + 32))(v84, v65, v66);
  }

  sub_2685681A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283470, &qword_26856D4D8);
  v67 = OUTLINED_FUNCTION_9_12();
  *(v67 + 16) = xmmword_26856A540;
  v68 = v80;
  (*(v17 + 16))(v67 + v61, v61, v80);
  sub_268567C80();
  sub_268509368(a3, v82);
  (*(v17 + 8))(v61, v68);
  (*(v62 + 8))(v96, v63);
  (*(v95 + 8))(v94, v97);
  (*(v93 + 8))(v92, v59);
  return (*(v77 + 8))(v45, v78);
}

uint64_t sub_268517644@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_268567CE0();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_5();
  v10 = v9 - v8;
  sub_268567CD0();
  OUTLINED_FUNCTION_4_15();
  sub_268567CA0();
  sub_268567C70();
  sub_268567CB0();
  sub_268567CC0();
  sub_268567C90();
  sub_268508520(a1, a2);
  return (*(v6 + 8))(v10, v4);
}

uint64_t sub_26851775C(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283478, &unk_26856D4E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  sub_268568530();
  swift_allocObject();
  v5 = sub_268568520();
  sub_268568500();
  swift_allocObject();
  sub_2685684F0();
  sub_268568420();
  swift_allocObject();
  sub_268568410();
  sub_268568400();

  sub_2685683E0();

  sub_2685684C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282DB8, qword_26856B450);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26856B420;
  *(v6 + 32) = v5;
  v7 = sub_268568370();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v7);

  MEMORY[0x26D61B4B0](v6, v4);

  sub_2684D199C(v4, &qword_280283478, &unk_26856D4E0);
  sub_268568230();
}

uint64_t OUTLINED_FUNCTION_9_12()
{

  return swift_allocObject();
}

uint64_t RNFlow.__allocating_init(notificationManager:request:sharedObjects:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, const void *a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  *(v12 + 48) = a5 & 1;
  *(v12 + 49) = HIBYTE(a5) & 1;
  memcpy((v12 + 56), a6, 0x80uLL);
  return v12;
}

uint64_t RNFlow.init(notificationManager:request:sharedObjects:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, void *__src)
{
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5 & 1;
  *(v6 + 49) = HIBYTE(a5) & 1;
  memcpy((v6 + 56), __src, 0x80uLL);
  return v6;
}

uint64_t RNFlow.execute()(uint64_t a1)
{
  v2[36] = a1;
  v2[37] = v1;
  v3 = sub_2685689F0();
  v2[38] = v3;
  v2[39] = *(v3 - 8);
  v2[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268517C04, 0, 0);
}

uint64_t sub_268517C04()
{
  v1 = v0[37];
  if (sub_2684D4BC4())
  {
    if (qword_280282960 != -1)
    {
      swift_once();
    }

    v3 = v0[39];
    v2 = v0[40];
    v4 = v0[38];
    v5 = __swift_project_value_buffer(v4, qword_28028B348);
    (*(v3 + 16))(v2, v5, v4);
    v6 = sub_2685689E0();
    v7 = sub_268568DC0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2684CA000, v6, v7, "#RNFlow Running Highlights flow", v8, 2u);
      MEMORY[0x26D61CB30](v8, -1, -1);
    }

    v10 = v0[39];
    v9 = v0[40];
    v11 = v0[38];

    (*(v10 + 8))(v9, v11);
    sub_2684CC878(v1 + 56, (v0 + 18));
    type metadata accessor for RNPatternHighlightsFlow();
    swift_allocObject();
    v12 = OUTLINED_FUNCTION_0_15();
    v0[35] = sub_268509C34(v12, v13, v14, v15, v16, v17);
    sub_268518124(&qword_280283488, 255, type metadata accessor for RNPatternHighlightsFlow, &unk_26856CAA8);
  }

  else
  {
    sub_2684CC878(v1 + 56, (v0 + 2));
    type metadata accessor for RNPatternFlow();
    swift_allocObject();
    v18 = OUTLINED_FUNCTION_0_15();
    v0[34] = sub_2684D9C4C(v18, v19, v20, v21, v22, v23);
    sub_268518124(&qword_280283480, 255, type metadata accessor for RNPatternFlow, &unk_26856ADC8);
  }

  sub_268567C20();

  v24 = v0[1];

  return v24();
}

uint64_t RNFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RNFlow();
  sub_268518124(&qword_280282E20, v2, type metadata accessor for RNFlow, &protocol conformance descriptor for RNFlow);
  return sub_268567900();
}

uint64_t RNFlow.deinit()
{

  sub_2684CC8D4(v0 + 56);
  return v0;
}

uint64_t RNFlow.__deallocating_deinit()
{
  RNFlow.deinit();

  return MEMORY[0x2821FE8D8](v0, 184, 7);
}

uint64_t sub_26851802C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2684CEB80;

  return RNFlow.execute()(a1);
}

uint64_t sub_2685180C8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RNFlow();

  return sub_268567950();
}

uint64_t sub_268518124(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268518184()
{
  *(v0 + 16) = MEMORY[0x277D84F90];
  v1 = OBJC_IVAR____TtCC24SiriNotificationsIntents16NotificationsApp7Builder_appId;
  v2 = sub_268568810();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCC24SiriNotificationsIntents16NotificationsApp7Builder_appName, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCC24SiriNotificationsIntents16NotificationsApp7Builder_canUseSenderName) = 0;
  return v0;
}

uint64_t sub_268518208(uint64_t a1)
{
  *(v1 + 16) = a1;
}

uint64_t sub_26851824C()
{

  sub_2684D4378(v0 + OBJC_IVAR____TtCC24SiriNotificationsIntents16NotificationsApp7Builder_appId);
  sub_2684D4378(v0 + OBJC_IVAR____TtCC24SiriNotificationsIntents16NotificationsApp7Builder_appName);
  return v0;
}

uint64_t sub_2685182C0(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = *(a1 + 16);
  v3 = OBJC_IVAR____TtCC24SiriNotificationsIntents16NotificationsApp7Builder_appId;
  swift_beginAccess();
  sub_2684D4298(a1 + v3, v1 + OBJC_IVAR____TtC24SiriNotificationsIntents16NotificationsApp_appId);
  v4 = OBJC_IVAR____TtCC24SiriNotificationsIntents16NotificationsApp7Builder_appName;
  swift_beginAccess();
  sub_2684D4298(a1 + v4, v1 + OBJC_IVAR____TtC24SiriNotificationsIntents16NotificationsApp_appName);
  LOBYTE(v4) = *(a1 + OBJC_IVAR____TtCC24SiriNotificationsIntents16NotificationsApp7Builder_canUseSenderName);

  *(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents16NotificationsApp_canUseSenderName) = v4;
  return v1;
}

uint64_t sub_268518388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - v11;
  v13 = a1 == 0x6163696669746F6ELL && a2 == 0xED0000736E6F6974;
  if (!v13 && (OUTLINED_FUNCTION_8_0(0x6163696669746F6ELL, 0xED0000736E6F6974) & 1) == 0)
  {
    v16 = a1 == 0x6449707061 && a2 == 0xE500000000000000;
    if (v16 || (OUTLINED_FUNCTION_8_0(0x6449707061, 0xE500000000000000) & 1) != 0)
    {
      sub_2684D4298(v3 + OBJC_IVAR____TtC24SiriNotificationsIntents16NotificationsApp_appId, v12);
      v17 = sub_268568810();
      if (__swift_getEnumTagSinglePayload(v12, 1, v17) != 1)
      {
        *(a3 + 24) = v17;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
        return (*(*(v17 - 8) + 32))(boxed_opaque_existential_0, v12, v17);
      }

      v18 = v12;
    }

    else
    {
      if (a1 != 0x656D614E707061 || a2 != 0xE700000000000000)
      {
        result = OUTLINED_FUNCTION_8_0(0x656D614E707061, 0xE700000000000000);
        if ((result & 1) == 0)
        {
          v23 = a1 == 0xD000000000000010 && 0x8000000268571230 == a2;
          if (v23 || (result = OUTLINED_FUNCTION_8_0(0xD000000000000010, 0x8000000268571230), (result & 1) != 0))
          {
            v24 = *(v3 + OBJC_IVAR____TtC24SiriNotificationsIntents16NotificationsApp_canUseSenderName);
            *(a3 + 24) = MEMORY[0x277D839B0];
            *a3 = v24;
            return result;
          }

LABEL_17:
          *a3 = 0u;
          *(a3 + 16) = 0u;
          return result;
        }
      }

      sub_2684D4298(v3 + OBJC_IVAR____TtC24SiriNotificationsIntents16NotificationsApp_appName, v10);
      v21 = sub_268568810();
      if (__swift_getEnumTagSinglePayload(v10, 1, v21) != 1)
      {
        *(a3 + 24) = v21;
        v22 = __swift_allocate_boxed_opaque_existential_0(a3);
        return (*(*(v21 - 8) + 32))(v22, v10, v21);
      }

      v18 = v10;
    }

    result = sub_2684D4378(v18);
    goto LABEL_17;
  }

  v14 = *(v3 + 24);
  *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283440, &qword_26856D320);
  *a3 = v14;
}

unint64_t sub_268518668(uint64_t a1, uint64_t a2)
{
  v2 = sub_2685690D0();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2685186BC(char a1)
{
  result = 0x6163696669746F6ELL;
  switch(a1)
  {
    case 1:
      result = 0x6449707061;
      break;
    case 2:
      result = 0x656D614E707061;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_268518780@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268518668(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_2685187B0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2685186BC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2685187E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268518668(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268518818(uint64_t a1)
{
  v2 = sub_2685192F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268518854(uint64_t a1)
{
  v2 = sub_2685192F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268518890()
{

  sub_2684D4378(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents16NotificationsApp_appId);
  sub_2684D4378(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents16NotificationsApp_appName);
  return v0;
}

uint64_t sub_2685188F0(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

void sub_268518974(uint64_t a1)
{
  sub_2684D3618(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_268518A28(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802834D8, &qword_26856D6F8);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2685192F4();
  sub_2685692A0();
  v18 = *(v3 + 24);
  v17[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283440, &qword_26856D320);
  sub_268519348(&qword_2802834E0, &qword_280282AE8, &unk_26856A128, MEMORY[0x277D83948]);
  sub_268569170();
  if (!v2)
  {
    v11 = OBJC_IVAR____TtC24SiriNotificationsIntents16NotificationsApp_appId;
    v17[0] = 1;
    sub_268568810();
    OUTLINED_FUNCTION_1_15();
    sub_2685192AC(v12, v13, MEMORY[0x277D55C50]);
    OUTLINED_FUNCTION_4_16(v3 + v11, v17);
    v16 = 2;
    OUTLINED_FUNCTION_4_16(v3 + OBJC_IVAR____TtC24SiriNotificationsIntents16NotificationsApp_appName, &v16);
    v15[4] = 3;
    sub_268569160();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_268518C68(void *a1)
{
  v2 = swift_allocObject();
  sub_268518D8C(a1);
  return v2;
}

void sub_268518CE0(uint64_t a1)
{
  sub_2684D3618(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_268518D8C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v20 - v9;
  v20[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802834C0, &unk_26856D6E8);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v11);
  *(v3 + 16) = 0;
  v12 = a1[3];
  v21 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_2685192F4();
  sub_268569290();
  if (v2)
  {

    type metadata accessor for NotificationsApp(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v20[0] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283440, &qword_26856D320);
    v25 = 0;
    sub_268519348(&qword_2802834D0, &qword_280282AE0, &unk_26856A150, MEMORY[0x277D83978]);
    sub_268569120();
    *(v3 + 24) = v26;
    sub_268568810();
    v24 = 1;
    OUTLINED_FUNCTION_1_15();
    sub_2685192AC(v14, v15, MEMORY[0x277D55C60]);
    OUTLINED_FUNCTION_3_13();
    sub_2685690F0();
    sub_2684D4308(v10, v3 + OBJC_IVAR____TtC24SiriNotificationsIntents16NotificationsApp_appId);
    v23 = 2;
    v16 = v20[0];
    OUTLINED_FUNCTION_3_13();
    sub_2685690F0();
    sub_2684D4308(v16, v3 + OBJC_IVAR____TtC24SiriNotificationsIntents16NotificationsApp_appName);
    v22 = 3;
    v17 = sub_268569110();
    v18 = OUTLINED_FUNCTION_0_16();
    v19(v18);
    *(v3 + OBJC_IVAR____TtC24SiriNotificationsIntents16NotificationsApp_canUseSenderName) = v17 & 1;
  }

  __swift_destroy_boxed_opaque_existential_0(v21);
  return v3;
}

uint64_t sub_2685191CC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_268518C68(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2685192AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2685192F4()
{
  result = qword_2802834C8;
  if (!qword_2802834C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802834C8);
  }

  return result;
}

uint64_t sub_268519348(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280283440, &qword_26856D320);
    sub_2685192AC(a2, type metadata accessor for NotificationsNotification, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NotificationsApp.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2685194B0);
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

unint64_t sub_2685194EC()
{
  result = qword_2802834E8;
  if (!qword_2802834E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802834E8);
  }

  return result;
}

unint64_t sub_268519544()
{
  result = qword_2802834F0;
  if (!qword_2802834F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802834F0);
  }

  return result;
}

unint64_t sub_26851959C()
{
  result = qword_2802834F8;
  if (!qword_2802834F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802834F8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_16(uint64_t a1, uint64_t a2)
{

  return sub_268569140();
}

uint64_t sub_268519660()
{
  sub_268567450();
  OUTLINED_FUNCTION_0_17();
  v2 = v1;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v15 - v11;
  __swift_allocate_value_buffer(v10, qword_28028B3E0);
  __swift_project_value_buffer(v0, qword_28028B3E0);
  sub_2685673F0();
  sub_268567400();
  sub_268567410();
  v13 = *(v2 + 8);
  v13(v6, v0);
  v13(v9, v0);
  sub_268567420();
  sub_268567410();
  v13(v9, v0);
  return (v13)(v12, v0);
}

uint64_t sub_2685197EC()
{
  sub_268567450();
  OUTLINED_FUNCTION_0_17();
  v2 = v1;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v4, qword_28028B3F8);
  __swift_project_value_buffer(v0, qword_28028B3F8);
  if (qword_280282978 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v0, qword_28028B3E0);
  (*(v2 + 16))(v6, v7, v0);
  sub_268567440();
  return (*(v2 + 8))(v6, v0);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_268519940(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_268519980(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_2685199D0()
{
  OUTLINED_FUNCTION_41();
  v0 = sub_2685689F0();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_5();
  v6 = v5 - v4;
  objc_allocWithZone(MEMORY[0x277CBEBD0]);
  if (!sub_26851BB5C(0xD00000000000001BLL, 0x8000000268571320))
  {
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_280282960);
    }

    OUTLINED_FUNCTION_38(v0, qword_28028B348);
    (*(v2 + 16))(v6);
    v7 = sub_2685689E0();
    v8 = sub_268568DE0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = OUTLINED_FUNCTION_4();
      v10 = OUTLINED_FUNCTION_51();
      v13 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_2684EABEC(0xD00000000000001BLL, 0x8000000268571320, &v13);
      OUTLINED_FUNCTION_11_1(&dword_2684CA000, v11, v12, "AnnouncementEventStore init |Unable to get an instance of UserDefaults with suite %s");
      __swift_destroy_boxed_opaque_existential_0(v10);
      OUTLINED_FUNCTION_11_9();
      OUTLINED_FUNCTION_3_2();
    }

    (*(v2 + 8))(v6, v0);
  }

  OUTLINED_FUNCTION_40();
}

void sub_268519BA8()
{
  OUTLINED_FUNCTION_41();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v45 = sub_2685675E0();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_5();
  v44 = v13 - v12;
  v14 = sub_2685689F0();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_13();
  sub_26851A5F8();
  v19 = v18 + 1;
  if (__OFADD__(v18, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v46 = v0;
  v47 = v16;
  v43 = v14;
  v20 = sub_26851BA54(v8);
  v2 = v21;

  OUTLINED_FUNCTION_3_14();

  v22 = OUTLINED_FUNCTION_23_4();

  v42 = v19;
  [v4 setInteger:v19 forKey:v22];

  v23 = sub_268567570();
  v41 = v20;
  v48[0] = v20;
  v48[1] = v2;

  v24 = OUTLINED_FUNCTION_6_15();
  MEMORY[0x26D61BDA0](v24);

  v25 = OUTLINED_FUNCTION_23_4();

  [v4 setObject:v23 forKey:v25];

  if (v8 < 0)
  {
    v16 = v0;
    v0 = v47;
    v1 = v10;
    if (v8)
    {
      goto LABEL_8;
    }

    sub_26851A5F8();
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      return;
    }

    v30 = sub_268568B10();
    [v4 setInteger:v29 forKey:v30];

    v31 = sub_268567570();
    v32 = sub_268568B10();
    OUTLINED_FUNCTION_25_3(v32);
  }

  else
  {
    v26 = sub_268567570();
    OUTLINED_FUNCTION_5_15();
    v27 = sub_268568B10();
    OUTLINED_FUNCTION_25_3(v27);

    sub_26851ADB4();
  }

  v16 = v46;
  v0 = v47;
  v1 = v10;
LABEL_8:
  if (qword_280282960 != -1)
  {
LABEL_14:
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  OUTLINED_FUNCTION_38(v43, qword_28028B348);
  (*(v0 + 16))(v16);
  (*(v1 + 16))(v44, v6, v45);
  v33 = sub_2685689E0();
  v34 = sub_268568DC0();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = OUTLINED_FUNCTION_51();
    v48[0] = swift_slowAlloc();
    *v35 = 136315650;
    v36 = sub_2684EABEC(v41, v2, v48);

    *(v35 + 4) = v36;
    *(v35 + 12) = 2048;
    *(v35 + 14) = v42;
    *(v35 + 22) = 2080;
    sub_2685036B0();
    v37 = sub_2685691A0();
    v39 = v38;
    (*(v1 + 8))(v44, v45);
    v40 = sub_2684EABEC(v37, v39, v48);

    *(v35 + 24) = v40;
    _os_log_impl(&dword_2684CA000, v33, v34, "AnnouncementEventStore storeUsage | Storing Event '%s' in the store with usageCount '%ld', lastUsageDate: %s", v35, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_3_2();

    (*(v47 + 8))(v46, v43);
  }

  else
  {

    (*(v1 + 8))(v44, v45);
    (*(v0 + 8))(v16, v43);
  }

  OUTLINED_FUNCTION_40();
}

void sub_26851A040()
{
  OUTLINED_FUNCTION_41();
  v1 = v0;
  v65 = v2;
  v3 = sub_2685689F0();
  OUTLINED_FUNCTION_1();
  v64 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_5();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_25_0();
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282D40, &qword_26856B330);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v58 - v13;
  v15 = sub_2685675E0();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7_5();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_25_0();
  v63 = v23;
  v24 = sub_268568B10();
  v25 = [v1 objectForKey_];

  if (v25)
  {
    sub_268568F30();
    swift_unknownObjectRelease();
  }

  else
  {
    v66 = 0u;
    v67 = 0u;
  }

  OUTLINED_FUNCTION_21_4();
  if (v26)
  {
    v27 = v11;
    v28 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v14, v28 ^ 1u, 1, v15);
    v29 = v3;
    if (__swift_getEnumTagSinglePayload(v14, 1, v15) != 1)
    {
      v30 = v63;
      v62 = *(v17 + 32);
      v62(v63, v14, v15);
      v31 = v64;
      if (qword_280282960 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_280282960);
      }

      OUTLINED_FUNCTION_38(v29, qword_28028B348);
      (*(v31 + 16))(v27);
      (*(v17 + 16))(v21, v30, v15);
      v32 = sub_2685689E0();
      v33 = sub_268568DC0();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = OUTLINED_FUNCTION_36_1();
        v61 = v17 + 32;
        v35 = v34;
        v60 = swift_slowAlloc();
        v68[0] = v60;
        *v35 = 136315394;
        v36 = OUTLINED_FUNCTION_5_15();
        *(v35 + 4) = sub_2684EABEC(v36, v37, v38);
        *(v35 + 12) = 2080;
        sub_2685036B0();
        v39 = sub_2685691A0();
        v59 = v27;
        v41 = v40;
        (*(v17 + 8))(v21, v15);
        v42 = sub_2684EABEC(v39, v41, v68);

        *(v35 + 14) = v42;
        _os_log_impl(&dword_2684CA000, v32, v33, "AnnouncementEventStore getDateOfLastHint | Read lastUsageTimestamp for %s: %s", v35, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_2();
        OUTLINED_FUNCTION_2();

        (*(v31 + 8))(v59, v29);
      }

      else
      {

        (*(v17 + 8))(v21, v15);
        (*(v31 + 8))(v27, v29);
      }

      v56 = (v62)(v65, v63, v15);
      v57 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    sub_2684D199C(v68, &qword_280282BE0, &unk_26856D8C0);
    OUTLINED_FUNCTION_31_4();
    __swift_storeEnumTagSinglePayload(v43, v44, v45, v15);
    v29 = v3;
  }

  sub_2684D199C(v14, &qword_280282D40, &qword_26856B330);
  v46 = v64;
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  OUTLINED_FUNCTION_38(v29, qword_28028B348);
  (*(v46 + 16))(v8);
  v47 = sub_2685689E0();
  v48 = sub_268568DC0();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = OUTLINED_FUNCTION_4();
    v50 = OUTLINED_FUNCTION_51();
    v68[0] = v50;
    *v49 = 136315138;
    v51 = OUTLINED_FUNCTION_5_15();
    *(v49 + 4) = sub_2684EABEC(v51, v52, v53);
    _os_log_impl(&dword_2684CA000, v47, v48, "AnnouncementEventStore getDateOfLastHint | No lastUsageTimestamp for event %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_2();
  }

  v54 = OUTLINED_FUNCTION_34_1();
  v56 = v55(v54);
  v57 = 1;
LABEL_18:
  OUTLINED_FUNCTION_24_5(v56, v57);
  OUTLINED_FUNCTION_40();
}

void sub_26851A5F8()
{
  OUTLINED_FUNCTION_41();
  v2 = OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_13_10();
  OUTLINED_FUNCTION_3_14();

  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_28_2();
  [v0 integerForKey_];

  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  __swift_project_value_buffer(v2, qword_28028B348);
  v4 = OUTLINED_FUNCTION_7_17();
  v5(v4);
  v6 = sub_2685689E0();
  v7 = sub_268568DC0();
  if (OUTLINED_FUNCTION_26_3(v7))
  {
    OUTLINED_FUNCTION_36_1();
    v8 = OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_32_2(v8);
    OUTLINED_FUNCTION_17_8(4.8151e-34);

    OUTLINED_FUNCTION_30_3();
    OUTLINED_FUNCTION_20_4();
    _os_log_impl(v9, v10, v11, v12, v13, 0x16u);
    OUTLINED_FUNCTION_9_13();
    OUTLINED_FUNCTION_11_9();
  }

  v14 = OUTLINED_FUNCTION_19_5();
  v15(v14);
  OUTLINED_FUNCTION_40();
}

void sub_26851A778()
{
  OUTLINED_FUNCTION_41();
  v2 = OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_13_10();
  OUTLINED_FUNCTION_16_8();

  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_28_2();
  v4 = [v0 BOOLForKey_];

  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  __swift_project_value_buffer(v2, qword_28028B348);
  v5 = OUTLINED_FUNCTION_7_17();
  v6(v5);
  v7 = sub_2685689E0();
  v8 = sub_268568DC0();
  if (OUTLINED_FUNCTION_26_3(v8))
  {
    v9 = swift_slowAlloc();
    v10 = OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_32_2(v10);
    v11 = OUTLINED_FUNCTION_17_8(4.8151e-34);

    *(v9 + 4) = v11;
    *(v9 + 12) = 1024;
    *(v9 + 14) = v4;
    OUTLINED_FUNCTION_20_4();
    _os_log_impl(v12, v13, v14, v15, v16, 0x12u);
    OUTLINED_FUNCTION_9_13();
    OUTLINED_FUNCTION_11_9();
  }

  v17 = OUTLINED_FUNCTION_19_5();
  v18(v17);
  OUTLINED_FUNCTION_40();
}

void sub_26851A90C()
{
  OUTLINED_FUNCTION_41();
  v1 = v0;
  v3 = v2;
  v4 = sub_2685689F0();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282D40, &qword_26856B330);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v32[-v12];
  v14 = v1;
  if (v1 || (v15 = objc_allocWithZone(MEMORY[0x277CBEBD0]), (v14 = sub_26851BB5C(0xD00000000000001CLL, 0x80000002685730C0)) != 0))
  {
    v16 = v1;
    v17 = sub_268568B10();
    v18 = [v14 objectForKey_];

    if (v18)
    {
      sub_268568F30();

      swift_unknownObjectRelease();
    }

    else
    {

      memset(v32, 0, sizeof(v32));
    }

    OUTLINED_FUNCTION_21_4();
    if (v19)
    {
      v20 = sub_2685675E0();
      v21 = swift_dynamicCast() ^ 1;
      v22 = v13;
      v23 = 1;
      v24 = v20;
    }

    else
    {
      sub_2684D199C(&v33, &qword_280282BE0, &unk_26856D8C0);
      sub_2685675E0();
      OUTLINED_FUNCTION_31_4();
    }

    __swift_storeEnumTagSinglePayload(v22, v21, v23, v24);
    sub_26851BBC0(v13, v3);
  }

  else
  {
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_280282960);
    }

    OUTLINED_FUNCTION_38(v4, qword_28028B348);
    (*(v6 + 16))(v10);
    v25 = sub_2685689E0();
    v26 = sub_268568DD0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2684CA000, v25, v26, "Couldn't open suite com.apple.assistant.backedup", v27, 2u);
      OUTLINED_FUNCTION_2();
    }

    (*(v6 + 8))(v10, v4);
    sub_2685675E0();
    OUTLINED_FUNCTION_31_4();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  }

  OUTLINED_FUNCTION_40();
}

uint64_t sub_26851AC18(void *a1)
{
  v2 = sub_268568B10();
  v3 = [a1 objectForKey_];

  if (v3)
  {
    sub_268568F30();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (*(&v9 + 1))
  {
    v4 = sub_268568B10();
    v5 = [a1 BOOLForKey_];

    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  else
  {
    v6 = 0;
  }

  sub_2684D199C(v10, &qword_280282BE0, &unk_26856D8C0);
  return v6;
}

uint64_t sub_26851AD20(void *a1)
{
  v2 = sub_268568B10();
  v3 = [a1 stringForKey_];

  if (v3)
  {
    sub_268568B20();
  }

  return OUTLINED_FUNCTION_34_1();
}

void sub_26851ADB4()
{
  OUTLINED_FUNCTION_41();
  v3 = v2;
  v5 = v4;
  v6 = sub_2685689F0();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_13();
  v10 = sub_26851BA54(v5);
  v12 = v11;
  v22 = v11;

  OUTLINED_FUNCTION_3_14();

  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_28_2();
  [v3 setInteger:0 forKey:{v1, v10, v22}];

  v13 = OUTLINED_FUNCTION_6_15();
  MEMORY[0x26D61BDA0](v13);

  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_28_2();
  [v3 setURL:0 forKey:{v1, v10, v12}];

  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  OUTLINED_FUNCTION_38(v6, qword_28028B348);
  (*(v8 + 16))(v0);
  v14 = sub_2685689E0();
  v15 = sub_268568DC0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = OUTLINED_FUNCTION_4();
    v17 = OUTLINED_FUNCTION_51();
    v21 = v17;
    *v16 = 136315138;
    v18 = sub_2684EABEC(v10, v12, &v21);

    *(v16 + 4) = v18;
    OUTLINED_FUNCTION_11_1(&dword_2684CA000, v19, v20, "AnnouncementEventStore resetUsage | Reset Event '%s' in the store setting date of occurence to nil and the usage count to 0");
    __swift_destroy_boxed_opaque_existential_0(v17);
    OUTLINED_FUNCTION_11_9();
    OUTLINED_FUNCTION_3_2();
  }

  (*(v8 + 8))(v0, v6);
  OUTLINED_FUNCTION_40();
}

void sub_26851AFCC()
{
  OUTLINED_FUNCTION_41();
  v1 = v0;
  v3 = v2;
  v60 = v4;
  v61 = sub_2685689F0();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_5();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_25_0();
  v58 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282D40, &qword_26856B330);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v55 - v14;
  v16 = sub_2685675E0();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7_5();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_25_0();
  v57 = v24;
  v25 = sub_26851BA54(v3);
  v27 = v26;
  v59 = v25;
  *&v62 = v25;
  *(&v62 + 1) = v26;

  v28 = OUTLINED_FUNCTION_6_15();
  MEMORY[0x26D61BDA0](v28);

  v29 = sub_268568B10();

  v30 = [v1 objectForKey_];

  if (v30)
  {
    sub_268568F30();
    swift_unknownObjectRelease();
  }

  else
  {
    v62 = 0u;
    v63 = 0u;
  }

  OUTLINED_FUNCTION_21_4();
  if (v31)
  {
    v32 = swift_dynamicCast();
    OUTLINED_FUNCTION_24_5(v32, v32 ^ 1);
    if (__swift_getEnumTagSinglePayload(v15, 1, v16) != 1)
    {
      v33 = v57;
      v56 = *(v18 + 32);
      v56(v57, v15, v16);
      if (qword_280282960 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_280282960);
      }

      OUTLINED_FUNCTION_38(v61, qword_28028B348);
      v34 = v58;
      (*(v6 + 16))(v58);
      (*(v18 + 16))(v22, v33, v16);
      v35 = sub_2685689E0();
      v36 = sub_268568DC0();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = OUTLINED_FUNCTION_36_1();
        v55[1] = v18 + 32;
        v38 = v37;
        v55[0] = swift_slowAlloc();
        v64[0] = v55[0];
        *v38 = 136315394;
        v39 = sub_2684EABEC(v59, v27, v64);

        *(v38 + 4) = v39;
        *(v38 + 12) = 2080;
        sub_2685036B0();
        v40 = sub_2685691A0();
        v42 = v41;
        (*(v18 + 8))(v22, v16);
        v43 = sub_2684EABEC(v40, v42, v64);

        *(v38 + 14) = v43;
        _os_log_impl(&dword_2684CA000, v35, v36, "AnnouncementEventStore getLastUsageDate | Read lastUsageTimestamp for event %s: %s", v38, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_2();
        v33 = v57;
        OUTLINED_FUNCTION_2();

        (*(v6 + 8))(v58, v61);
      }

      else
      {

        (*(v18 + 8))(v22, v16);
        (*(v6 + 8))(v34, v61);
      }

      v53 = (v56)(v60, v33, v16);
      v54 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    sub_2684D199C(v64, &qword_280282BE0, &unk_26856D8C0);
    OUTLINED_FUNCTION_31_4();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v16);
  }

  sub_2684D199C(v15, &qword_280282D40, &qword_26856B330);
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  v47 = v61;
  OUTLINED_FUNCTION_38(v61, qword_28028B348);
  (*(v6 + 16))(v10);
  v48 = sub_2685689E0();
  v49 = sub_268568DC0();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = OUTLINED_FUNCTION_4();
    v51 = OUTLINED_FUNCTION_51();
    v64[0] = v51;
    *v50 = 136315138;
    v52 = sub_2684EABEC(v59, v27, v64);

    *(v50 + 4) = v52;
    _os_log_impl(&dword_2684CA000, v48, v49, "AnnouncementEventStore getLastUsageDate | No lastUsageTimestamp for event %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_2();
  }

  v53 = (*(v6 + 8))(v10, v47);
  v54 = 1;
LABEL_18:
  OUTLINED_FUNCTION_24_5(v53, v54);
  OUTLINED_FUNCTION_40();
}

void sub_26851B5B4()
{
  OUTLINED_FUNCTION_41();
  v2 = OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_13_10();
  OUTLINED_FUNCTION_3_14();

  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_28_2();
  [v0 integerForKey_];

  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  __swift_project_value_buffer(v2, qword_28028B348);
  v4 = OUTLINED_FUNCTION_7_17();
  v5(v4);
  v6 = sub_2685689E0();
  v7 = sub_268568DC0();
  if (OUTLINED_FUNCTION_26_3(v7))
  {
    OUTLINED_FUNCTION_36_1();
    v8 = OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_32_2(v8);
    OUTLINED_FUNCTION_17_8(4.8151e-34);

    OUTLINED_FUNCTION_30_3();
    OUTLINED_FUNCTION_20_4();
    _os_log_impl(v9, v10, v11, v12, v13, 0x16u);
    OUTLINED_FUNCTION_9_13();
    OUTLINED_FUNCTION_11_9();
  }

  v14 = OUTLINED_FUNCTION_19_5();
  v15(v14);
  OUTLINED_FUNCTION_40();
}

void sub_26851B738()
{
  OUTLINED_FUNCTION_41();
  v1 = v0;
  v3 = v2;
  v4 = sub_2685689F0();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_5();
  v10 = v9 - v8;
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  OUTLINED_FUNCTION_38(v4, qword_28028B348);
  (*(v6 + 16))(v10);
  v11 = sub_2685689E0();
  v12 = sub_268568DC0();
  if (os_log_type_enabled(v11, v12))
  {
    v25 = v1;
    v13 = OUTLINED_FUNCTION_4();
    v14 = OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_32_2(v14);
    *v13 = 136315138;
    v15 = sub_26851BA54(v3);
    v17 = v16;
    v18 = sub_2684EABEC(v15, v16, v26);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_2684CA000, v11, v12, "AnnouncementEventStore setDisabled | Disabling event '%s'", v13, 0xCu);
    OUTLINED_FUNCTION_9_13();
    v1 = v25;
    OUTLINED_FUNCTION_2();

    v19 = OUTLINED_FUNCTION_34_1();
    v20(v19);
  }

  else
  {

    v21 = OUTLINED_FUNCTION_34_1();
    v22(v21);
    v15 = sub_26851BA54(v3);
    v17 = v23;
  }

  v26[0] = v15;
  v26[1] = v17;

  OUTLINED_FUNCTION_16_8();

  v24 = OUTLINED_FUNCTION_23_4();

  [v1 setBool:1 forKey:v24];

  OUTLINED_FUNCTION_40();
}

unint64_t sub_26851B948(char a1)
{
  result = 0xD00000000000001ALL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000029;
      break;
    case 2:
      result = 0xD000000000000023;
      break;
    case 3:
      result = 0xD000000000000022;
      break;
    case 4:
      result = 0xD000000000000025;
      break;
    case 5:
      result = 0xD00000000000002DLL;
      break;
    case 6:
      result = 0xD00000000000002CLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_26851BA1C(char a1)
{
  if (a1)
  {
    return 0xD00000000000002ALL;
  }

  else
  {
    return 0xD00000000000001CLL;
  }
}

unint64_t sub_26851BA54(char a1)
{
  result = 0xD00000000000001ALL;
  if (a1 < 0)
  {
    if (a1)
    {
      return 0xD00000000000002ALL;
    }

    else
    {
      return 0xD00000000000001CLL;
    }
  }

  else
  {
    switch(a1)
    {
      case 1:
        result = 0xD000000000000029;
        break;
      case 2:
        result = 0xD000000000000023;
        break;
      case 3:
        result = 0xD000000000000022;
        break;
      case 4:
        result = 0xD000000000000025;
        break;
      case 5:
        result = 0xD00000000000002DLL;
        break;
      case 6:
        result = 0xD00000000000002CLL;
        break;
      default:
        return result;
    }
  }

  return result;
}

id sub_26851BB5C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_268568B10();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

uint64_t sub_26851BBC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282D40, &qword_26856B330);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for AnnouncementEventStoreErrors(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x26851BCCCLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_26851BD08()
{
  result = qword_280283500;
  if (!qword_280283500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283500);
  }

  return result;
}

void OUTLINED_FUNCTION_3_14()
{

  JUMPOUT(0x26D61BDA0);
}

void OUTLINED_FUNCTION_9_13()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x26D61CB30);
}

void OUTLINED_FUNCTION_11_9()
{

  JUMPOUT(0x26D61CB30);
}

uint64_t OUTLINED_FUNCTION_13_10()
{
  *(v1 - 96) = sub_26851BA54(v0);
  *(v1 - 88) = v2;
}

void OUTLINED_FUNCTION_16_8()
{

  JUMPOUT(0x26D61BDA0);
}

uint64_t OUTLINED_FUNCTION_17_8(float a1)
{
  *v3 = a1;

  return sub_2684EABEC(v2, v1, (v4 - 96));
}

__n128 OUTLINED_FUNCTION_21_4()
{
  result = *(v0 - 128);
  *(v0 - 112) = *(v0 - 144);
  *(v0 - 96) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_23_4()
{

  return sub_268568B10();
}

uint64_t OUTLINED_FUNCTION_24_5(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(v2, a2, 1, v3);
}

id OUTLINED_FUNCTION_25_3(uint64_t a1)
{

  return [v3 (v2 + 2168)];
}

BOOL OUTLINED_FUNCTION_26_3(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_27_3()
{

  return sub_2685689F0();
}

uint64_t OUTLINED_FUNCTION_28_2()
{
}

void OUTLINED_FUNCTION_30_3()
{
  *(v2 + 4) = v1;
  *(v2 + 12) = 2048;
  *(v2 + 14) = v0;
}

uint64_t OUTLINED_FUNCTION_36_1()
{

  return swift_slowAlloc();
}

id sub_26851C004(uint64_t a1, void *a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_268567A90();
  sub_268567B40();
  swift_allocObject();
  sub_268567B20();
  v3 = [objc_allocWithZone(MEMORY[0x277D479E8]) init];
  v4 = sub_268568B20();
  sub_26851C138(v4, v5, v3);
  v6 = sub_268567B30();
  if (v6 >> 62)
  {
    sub_26851C19C();
    v7 = sub_268569090();
  }

  else
  {

    sub_2685691D0();
    sub_26851C19C();
    v7 = v6;
  }

  sub_26851C1E0(v7, v3);

  return v3;
}

void sub_26851C138(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_268568B10();

  [a3 setDialogPhase_];
}

unint64_t sub_26851C19C()
{
  result = qword_280283508;
  if (!qword_280283508)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280283508);
  }

  return result;
}

void sub_26851C1E0(uint64_t a1, void *a2)
{
  sub_26851C19C();
  v3 = sub_268568CD0();

  [a2 setViews_];
}

void *sub_26851C2B8(uint64_t a1, const void *a2)
{
  v5 = sub_2685688F0();
  MEMORY[0x28223BE20](v5 - 8);
  v2[2] = 0;
  v2[3] = 0;
  sub_2684D57FC(a2, (v2 + 4));
  sub_2684D57FC(a2 + 40, (v2 + 9));
  type metadata accessor for ReadNotificationsCATs(0);
  sub_2685688E0();
  sub_2685686F0();
  sub_2684D57FC((v2 + 9), v8);
  sub_2685685F0();
  v6 = sub_2685685D0();
  sub_268516318(v8, v6);

  __swift_destroy_boxed_opaque_existential_0(v8);
  v2[14] = sub_268568710();
  v2[15] = a1;
  memcpy(v2 + 16, a2, 0x80uLL);
  return v2;
}

uint64_t sub_26851C3EC()
{
  OUTLINED_FUNCTION_5();
  v1[24] = v0;
  v2 = sub_2685679B0();
  v1[25] = v2;
  OUTLINED_FUNCTION_2_4(v2);
  v1[26] = v3;
  v1[27] = OUTLINED_FUNCTION_39();
  v4 = sub_268567B60();
  v1[28] = v4;
  OUTLINED_FUNCTION_2_4(v4);
  v1[29] = v5;
  v1[30] = OUTLINED_FUNCTION_39();
  v6 = sub_2685689F0();
  v1[31] = v6;
  OUTLINED_FUNCTION_2_4(v6);
  v1[32] = v7;
  v1[33] = OUTLINED_FUNCTION_50();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C00, &unk_26856A9A0);
  v1[36] = OUTLINED_FUNCTION_39();
  v8 = sub_2685680C0();
  v1[37] = v8;
  OUTLINED_FUNCTION_2_4(v8);
  v1[38] = v9;
  v1[39] = OUTLINED_FUNCTION_39();
  v10 = sub_268567CE0();
  v1[40] = v10;
  OUTLINED_FUNCTION_2_4(v10);
  v1[41] = v11;
  v1[42] = OUTLINED_FUNCTION_50();
  v1[43] = swift_task_alloc();
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_26851C618()
{
  v0[44] = *(v0[24] + 120);
  v1 = sub_2684F4424();
  v0[45] = v1;
  if (v1)
  {
    v2 = sub_2684F4460();
    v0[46] = v2;
    if (v2)
    {
      v3 = swift_task_alloc();
      v0[47] = v3;
      *v3 = v0;
      v3[1] = sub_26851C864;
      OUTLINED_FUNCTION_34();

      return sub_26851D5E4();
    }
  }

  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  __swift_project_value_buffer(v0[31], qword_28028B348);
  v5 = OUTLINED_FUNCTION_12_2();
  v6(v5);
  v7 = sub_2685689E0();
  v8 = sub_268568DE0();
  if (os_log_type_enabled(v7, v8))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_9_11(&dword_2684CA000, v9, v10, "RNReadNotificationAction run | no notification to read");
    OUTLINED_FUNCTION_2();
  }

  v11 = OUTLINED_FUNCTION_34();
  v12(v11);
  sub_268507BAC();
  swift_allocError();
  swift_willThrow();
  OUTLINED_FUNCTION_3_15(v0[43]);

  OUTLINED_FUNCTION_9_1();

  return v13();
}

uint64_t sub_26851C864()
{
  OUTLINED_FUNCTION_9_8();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_8();
  *v5 = v4;
  *(v7 + 384) = v6;
  *(v7 + 392) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26851C994()
{
  v2 = *(v0 + 336);
  v1 = *(v0 + 344);
  v4 = *(v0 + 320);
  v3 = *(v0 + 328);
  v5 = *(v0 + 304);
  v17 = *(v0 + 312);
  v18 = *(v0 + 384);
  v6 = *(v0 + 288);
  v19 = *(v0 + 296);
  v7 = *(v0 + 192);
  sub_2684DB414();

  v9 = sub_26856427C(v8);
  sub_268567CD0();
  sub_268508520(v9, v1);

  v10 = *(v3 + 8);
  *(v0 + 400) = v10;
  *(v0 + 408) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v2, v4);
  (*(v3 + 16))(v6, v1, v4);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v4);
  *(v0 + 88) = 0;
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
  MEMORY[0x26D61AD60](v18, v6, MEMORY[0x277D84F90], v0 + 56);
  sub_2684D199C(v0 + 56, &qword_280282F30, &qword_26856DAD0);
  sub_2684D199C(v6, &qword_280282C00, &unk_26856A9A0);
  v11 = v7[29];
  v12 = v7[30];
  __swift_project_boxed_opaque_existential_1(v7 + 26, v11);
  v13 = MEMORY[0x277D5C1D8];
  *(v0 + 120) = v19;
  *(v0 + 128) = v13;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 96));
  (*(v5 + 16))(boxed_opaque_existential_0, v17, v19);
  v15 = swift_task_alloc();
  *(v0 + 416) = v15;
  *v15 = v0;
  v15[1] = sub_26851CBB0;

  return MEMORY[0x2821BB5D0](v0 + 96, v11, v12);
}

uint64_t sub_26851CBB0()
{
  OUTLINED_FUNCTION_5();
  v2 = *v1;
  OUTLINED_FUNCTION_9_8();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_8();
  *v5 = v4;
  *(v2 + 424) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26851CCBC()
{
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  __swift_project_value_buffer(v0[31], qword_28028B348);
  v1 = OUTLINED_FUNCTION_12_2();
  v2(v1);
  v3 = sub_2685689E0();
  v4 = sub_268568DF0();
  if (os_log_type_enabled(v3, v4))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_9_11(&dword_2684CA000, v5, v6, "RNReadNotificationAction run | read notification");
    OUTLINED_FUNCTION_2();
  }

  v7 = v0[44];

  v8 = OUTLINED_FUNCTION_34();
  v9(v8);
  v10 = v0[50];
  v11 = v0[48];
  v12 = v0[46];
  v13 = v0[43];
  v15 = v0[39];
  v14 = v0[40];
  v16 = v0[38];
  v29 = v0[37];
  if (*(v7 + 64) == 1)
  {
    v27 = v0[43];
    v18 = v0[29];
    v17 = v0[30];
    v28 = v7;
    v26 = v0[40];
    v20 = v0[27];
    v19 = v0[28];
    v25 = v0[39];
    v21 = v0[26];
    v24 = v0[25];
    sub_268567990();
    __swift_project_boxed_opaque_existential_1(v0 + 17, v0[20]);
    sub_268567A20();
    (*(v18 + 104))(v17, *MEMORY[0x277D5BC10], v19);
    (*(v21 + 104))(v20, *MEMORY[0x277D5B950], v24);

    sub_2684EBB74(4u, 9, v17, v20, 8, 0, 0, 0, v12, 2u);
    sub_2685679A0();

    (*(v16 + 8))(v25, v29);
    v10(v27, v26);
    __swift_destroy_boxed_opaque_existential_0(v0 + 17);
    *(v28 + 64) = 0;
  }

  else
  {

    (*(v16 + 8))(v15, v29);
    v10(v13, v14);
  }

  OUTLINED_FUNCTION_9_1();

  return v22();
}

uint64_t sub_26851CFD8()
{
  v29 = v0;
  v3 = v0[49];
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  __swift_project_value_buffer(v0[31], qword_28028B348);
  v4 = OUTLINED_FUNCTION_10_1();
  v5(v4);
  v6 = v3;
  v7 = sub_2685689E0();
  v8 = sub_268568DE0();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[32];
  v11 = v0[33];
  v12 = v0[31];
  if (v9)
  {
    swift_slowAlloc();
    v13 = OUTLINED_FUNCTION_16_9();
    v28 = v13;
    *v11 = 136315138;
    v0[23] = v3;
    v14 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v15 = sub_268568B70();
    v1 = v16;
    v2 = sub_2684EABEC(v15, v16, &v28);

    *(v11 + 4) = v2;
    OUTLINED_FUNCTION_11_1(&dword_2684CA000, v17, v18, "RNReadNotificationAction run | error: %s");
    __swift_destroy_boxed_opaque_existential_0(v13);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();

    v20 = *(v10 + 8);
    v19 = v10 + 8;
    v21 = v20(v27, v12);
  }

  else
  {

    v22 = *(v10 + 8);
    v19 = v10 + 8;
    v21 = v22(v11, v12);
  }

  v23 = v0[44];
  if (*(v23 + 64) == 1)
  {
    OUTLINED_FUNCTION_10_7(v21);
    OUTLINED_FUNCTION_18_5();
    (*(v12 + 104))(v7, *MEMORY[0x277D5BC00], v1);
    (*(v19 + 104))(v11, *MEMORY[0x277D5B8D0], v2);
    v0[22] = v3;
    v24 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    sub_268568B70();

    OUTLINED_FUNCTION_2_14();
    sub_2685679A0();

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    *(v23 + 64) = 0;
  }

  swift_willThrow();

  OUTLINED_FUNCTION_3_15(v0[43]);

  OUTLINED_FUNCTION_9_1();

  return v25();
}

uint64_t sub_26851D2BC()
{
  v35 = v0;
  v3 = *(v0 + 400);
  v4 = *(v0 + 344);
  v6 = *(v0 + 312);
  v5 = *(v0 + 320);
  v7 = *(v0 + 296);
  v8 = *(v0 + 304);

  (*(v8 + 8))(v6, v7);
  v3(v4, v5);
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  v9 = *(v0 + 424);
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  __swift_project_value_buffer(*(v0 + 248), qword_28028B348);
  v10 = OUTLINED_FUNCTION_10_1();
  v11(v10);
  v12 = v9;
  v13 = sub_2685689E0();
  v14 = sub_268568DE0();

  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 256);
  v17 = *(v0 + 264);
  v18 = *(v0 + 248);
  if (v15)
  {
    swift_slowAlloc();
    v19 = OUTLINED_FUNCTION_16_9();
    v34 = v19;
    *v17 = 136315138;
    *(v0 + 184) = v9;
    v20 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v21 = sub_268568B70();
    v1 = v22;
    v2 = sub_2684EABEC(v21, v22, &v34);

    *(v17 + 4) = v2;
    OUTLINED_FUNCTION_11_1(&dword_2684CA000, v23, v24, "RNReadNotificationAction run | error: %s");
    __swift_destroy_boxed_opaque_existential_0(v19);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();

    v26 = *(v16 + 8);
    v25 = v16 + 8;
    v27 = v26(v33, v18);
  }

  else
  {

    v28 = *(v16 + 8);
    v25 = v16 + 8;
    v27 = v28(v17, v18);
  }

  v29 = *(v0 + 352);
  if (*(v29 + 64) == 1)
  {
    OUTLINED_FUNCTION_10_7(v27);
    OUTLINED_FUNCTION_18_5();
    (*(v18 + 104))(v13, *MEMORY[0x277D5BC00], v1);
    (*(v25 + 104))(v17, *MEMORY[0x277D5B8D0], v2);
    *(v0 + 176) = v9;
    v30 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    sub_268568B70();

    OUTLINED_FUNCTION_2_14();
    sub_2685679A0();

    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    *(v29 + 64) = 0;
  }

  swift_willThrow();

  OUTLINED_FUNCTION_3_15(*(v0 + 344));

  OUTLINED_FUNCTION_9_1();

  return v31();
}

uint64_t sub_26851D5E4()
{
  OUTLINED_FUNCTION_5();
  v1[22] = v2;
  v1[23] = v0;
  v1[21] = v3;
  v4 = sub_268567D90();
  v1[24] = v4;
  OUTLINED_FUNCTION_2_4(v4);
  v1[25] = v5;
  v1[26] = OUTLINED_FUNCTION_39();
  v6 = sub_2685689F0();
  v1[27] = v6;
  OUTLINED_FUNCTION_2_4(v6);
  v1[28] = v7;
  v1[29] = OUTLINED_FUNCTION_39();
  v8 = sub_268568810();
  v1[30] = v8;
  OUTLINED_FUNCTION_2_4(v8);
  v1[31] = v9;
  v1[32] = OUTLINED_FUNCTION_50();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  v1[36] = OUTLINED_FUNCTION_50();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_26851D7C8()
{
  v79 = v0;
  v1 = v0[22];
  if (*(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_title + 8))
  {
    sub_268568BB0();
    v2 = 0;
    v1 = v0[22];
  }

  else
  {
    v2 = 1;
  }

  v3 = 1;
  __swift_storeEnumTagSinglePayload(v0[43], v2, 1, v0[30]);
  if (*(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_subtitle + 8))
  {
    sub_268568BB0();
    v3 = 0;
  }

  v4 = v0[22];
  v5 = 1;
  __swift_storeEnumTagSinglePayload(v0[42], v3, 1, v0[30]);
  if (*(v4 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_body + 8))
  {
    sub_268568BB0();
    v5 = 0;
  }

  v6 = v0[23];
  v7 = v0[21];
  __swift_storeEnumTagSinglePayload(v0[41], v5, 1, v0[30]);
  v8 = *(v6 + 120);
  v0[44] = v8;
  v9 = *(v8 + 32);
  v10 = sub_2684DEAF0(v7);
  if (__OFSUB__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    v12 = v10 > 2 && v9 == v10 - 1;
    v76 = v12;
    sub_268568BB0();
    if (qword_280282960 == -1)
    {
      goto LABEL_16;
    }
  }

  OUTLINED_FUNCTION_0_0(&qword_280282960);
LABEL_16:
  v13 = v0[42];
  v14 = v0[43];
  v15 = v0[40];
  v69 = v0[41];
  v17 = v0[38];
  v16 = v0[39];
  v77 = v0[34];
  v18 = v0[31];
  v71 = v0[30];
  v74 = v0[33];
  v20 = v0[28];
  v19 = v0[29];
  v21 = v0[27];
  v22 = __swift_project_value_buffer(v21, qword_28028B348);
  (*(v20 + 16))(v19, v22, v21);
  sub_2684D4298(v14, v15);
  sub_2684D4298(v13, v16);
  sub_2684D4298(v69, v17);
  v23 = v74;
  v75 = *(v18 + 16);
  v75(v23, v77, v71);
  v24 = sub_2685689E0();
  v72 = sub_268568DD0();
  v25 = os_log_type_enabled(v24, v72);
  v26 = v0[39];
  v27 = v0[40];
  v28 = v0[38];
  if (v25)
  {
    v29 = v0[37];
    v62 = v0[32];
    v66 = v0[31];
    v63 = v0[30];
    v64 = v0[33];
    v67 = v0[28];
    v68 = v0[27];
    v70 = v0[29];
    v30 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *v30 = 136316162;
    sub_2684D4298(v27, v29);
    log = v24;
    v31 = sub_268568B70();
    v33 = v32;
    sub_2684D199C(v27, &qword_280282AF0, &qword_26856A1E0);
    v34 = sub_2684EABEC(v31, v33, &v78);

    *(v30 + 4) = v34;
    *(v30 + 12) = 2080;
    sub_2684D4298(v26, v29);
    v35 = sub_268568B70();
    v37 = v36;
    sub_2684D199C(v26, &qword_280282AF0, &qword_26856A1E0);
    v38 = sub_2684EABEC(v35, v37, &v78);

    *(v30 + 14) = v38;
    *(v30 + 22) = 2080;
    sub_2684D4298(v28, v29);
    sub_268568B70();
    sub_2684D199C(v28, &qword_280282AF0, &qword_26856A1E0);
    v39 = OUTLINED_FUNCTION_34();
    v42 = sub_2684EABEC(v39, v40, v41);

    *(v30 + 24) = v42;
    *(v30 + 32) = 2080;
    if (v76)
    {
      v43 = 1702195828;
    }

    else
    {
      v43 = 0x65736C6166;
    }

    if (v76)
    {
      v44 = 0xE400000000000000;
    }

    else
    {
      v44 = 0xE500000000000000;
    }

    v45 = sub_2684EABEC(v43, v44, &v78);

    *(v30 + 34) = v45;
    *(v30 + 42) = 2080;
    v75(v62, v64, v63);
    v46 = sub_268568B70();
    v48 = v47;
    v49 = *(v66 + 8);
    v49(v64, v63);
    v50 = sub_2684EABEC(v46, v48, &v78);

    *(v30 + 44) = v50;
    _os_log_impl(&dword_2684CA000, log, v72, "RNReadNotificationAction makeAddViews | title: %s, subtitle: %s, body: %s, needsConjunction: %s, appId: %s", v30, 0x34u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();

    (*(v67 + 8))(v70, v68);
    v51 = v75;
  }

  else
  {
    v52 = v0[33];
    v53 = v0[38];
    v55 = v0[30];
    v54 = v0[31];
    v56 = v0[28];
    v73 = v0[29];
    v57 = v0[27];

    v49 = *(v54 + 8);
    v49(v52, v55);
    sub_2684D199C(v53, &qword_280282AF0, &qword_26856A1E0);
    sub_2684D199C(v26, &qword_280282AF0, &qword_26856A1E0);
    sub_2684D199C(v27, &qword_280282AF0, &qword_26856A1E0);
    (*(v56 + 8))(v73, v57);
    v51 = v75;
  }

  v0[45] = v49;
  v58 = v0[36];
  v59 = v0[30];
  v51(v58, v0[34], v59);
  __swift_storeEnumTagSinglePayload(v58, 0, 1, v59);
  v60 = swift_task_alloc();
  v0[46] = v60;
  *v60 = v0;
  v60[1] = sub_26851DE14;

  return sub_26850F3D8();
}

uint64_t sub_26851DE14()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_8();
  *v3 = v2;
  v5 = *(v4 + 288);
  v6 = *v1;
  OUTLINED_FUNCTION_9_8();
  *v7 = v6;
  *(v8 + 376) = v0;

  sub_2684D199C(v5, &qword_280282AF0, &qword_26856A1E0);
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_26851DF44()
{
  v2 = v0[44];
  v3 = *(v2 + 32);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 32) = v5;
    v6 = sub_2684F4424();
    if (v6)
    {
      v7 = v0[44];
      v8 = sub_2684DEAF0(v6);

      if (*(v7 + 32) < v8)
      {
        v9 = v0[23];
        sub_2684CC878(v9 + 128, (v0 + 2));
        type metadata accessor for RNReadNotificationAction();
        v10 = swift_allocObject();

        sub_26851C2B8(v11, v0 + 2);
        v12 = sub_26851E454(&qword_280282F68, &unk_26856DA50);
        swift_beginAccess();
        *(v9 + 16) = v10;
        *(v9 + 24) = v12;
        swift_unknownObjectRelease();
      }
    }

    v13 = v0[42];
    v14 = v0[43];
    v15 = v0[41];
    v22 = v0[45];
    v16 = v0[34];
    v17 = v0[30];
    v19 = v0[25];
    v18 = v0[26];
    v20 = v0[24];
    v23 = sub_26851C004(v18, (v0[23] + 72), 0);
    (*(v19 + 8))(v18, v20);
    v22(v16, v17);
    sub_2684D199C(v15, &qword_280282AF0, &qword_26856A1E0);
    sub_2684D199C(v13, &qword_280282AF0, &qword_26856A1E0);
    sub_2684D199C(v14, &qword_280282AF0, &qword_26856A1E0);

    v21 = v0[1];

    v21(v23);
  }
}

uint64_t sub_26851E1B4()
{
  v2 = *(v0 + 336);
  v1 = *(v0 + 344);
  v3 = *(v0 + 328);
  (*(v0 + 360))(*(v0 + 272), *(v0 + 240));
  sub_2684D199C(v3, &qword_280282AF0, &qword_26856A1E0);
  sub_2684D199C(v2, &qword_280282AF0, &qword_26856A1E0);
  sub_2684D199C(v1, &qword_280282AF0, &qword_26856A1E0);

  OUTLINED_FUNCTION_9_1();

  return v4();
}

uint64_t sub_26851E33C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2684FF230;

  return sub_26851C3EC();
}

uint64_t sub_26851E454(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RNReadNotificationAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ReadNotificationActionErrors(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x26851E530);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_26851E56C()
{
  result = qword_280283520;
  if (!qword_280283520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283520);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_14()
{

  return sub_2684EBB74(4u, 9, v0, v2, 8, v3, v4, 0, v1, 2u);
}

uint64_t OUTLINED_FUNCTION_3_15(uint64_t a1)
{
}

uint64_t OUTLINED_FUNCTION_10_7(uint64_t a1)
{

  return sub_268567990();
}

uint64_t OUTLINED_FUNCTION_16_9()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_18_5()
{
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));

  return sub_268567A20();
}

uint64_t NotificationsFlowProvider.__allocating_init(aceServiceInvoker:deviceState:outputPublisher:featureFlags:)()
{
  OUTLINED_FUNCTION_48_0();
  v0 = swift_allocObject();
  NotificationsFlowProvider.init(aceServiceInvoker:deviceState:outputPublisher:featureFlags:)();
  return v0;
}

uint64_t NotificationsFlowProvider.init(aceServiceInvoker:deviceState:outputPublisher:featureFlags:)()
{
  OUTLINED_FUNCTION_48_0();
  sub_2684D57FC(v3, v1 + 56);
  sub_2684D8314(v4, v1 + 16);
  sub_2684D8314(v2, v1 + 96);
  *(v1 + 136) = v0;
  sub_2684D8314(v3, v1 + 144);
  return v1;
}

void NotificationsFlowProvider.makeFlowSearchResult(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_41();
  a19 = v21;
  a20 = v22;
  v214 = v20;
  v24 = v23;
  v211 = v25;
  v190 = sub_2685680B0();
  OUTLINED_FUNCTION_1();
  v189 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_6_14();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_14();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_25_0();
  v196 = v30;
  OUTLINED_FUNCTION_19_1();
  v202 = sub_268568560();
  OUTLINED_FUNCTION_1();
  v200 = v31;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_27();
  v199 = v33;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_25_0();
  v205 = v35;
  OUTLINED_FUNCTION_19_1();
  v195 = sub_268568070();
  OUTLINED_FUNCTION_1();
  v194 = v36;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_6_14();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_14();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_25_0();
  v201 = v40;
  OUTLINED_FUNCTION_19_1();
  v41 = sub_268568080();
  OUTLINED_FUNCTION_1();
  v43 = v42;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_27();
  v206 = v45;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_19();
  v212 = v47;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_19();
  v204 = v49;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v50);
  v52 = &v185 - v51;
  v53 = sub_2685689F0();
  OUTLINED_FUNCTION_1();
  v55 = v54;
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_6_14();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_14();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_19();
  v203 = v59;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_14();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_14();
  MEMORY[0x28223BE20](v62);
  v64 = &v185 - v63;
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  OUTLINED_FUNCTION_38(v53, qword_28028B348);
  v65 = *(v55 + 16);
  v207 = v66;
  v208 = v65;
  v209 = v55 + 16;
  (v65)(v64);
  v67 = *(v43 + 16);
  v217 = v24;
  v67(v52, v24, v41);
  v210 = v64;
  v68 = sub_2685689E0();
  v69 = sub_268568DD0();
  v70 = os_log_type_enabled(v68, v69);
  v215 = v55;
  v216 = v53;
  v213 = v43;
  if (v70)
  {
    v71 = OUTLINED_FUNCTION_4();
    v185 = OUTLINED_FUNCTION_51();
    v219 = v185;
    *v71 = 136315138;
    v67(v204, v52, v41);
    v72 = sub_268568B70();
    v74 = v73;
    v75 = OUTLINED_FUNCTION_30_4();
    (v67)(v75);
    sub_2684EABEC(v72, v74, &v219);
    OUTLINED_FUNCTION_27_4();

    *(v71 + 4) = v72;
    _os_log_impl(&dword_2684CA000, v68, v69, "NotificationsFlowProvider makeFlowSearchResult | parse: %s", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v185);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();

    v76 = v210;
    v210 = *(v215 + 8);
    v210(v76, v216);
    v77 = v213;
  }

  else
  {

    v78 = OUTLINED_FUNCTION_30_4();
    (v67)(v78);
    v79 = v210;
    v210 = *(v55 + 8);
    v210(v79, v53);
    v77 = v43;
  }

  v80 = v212;
  v204 = v43;
  (v43)(v212, v217, v41);
  v83 = *(v77 + 88);
  v81 = v77 + 88;
  v82 = v83;
  v84 = v83(v80, v41);
  v85 = *MEMORY[0x277D5C128];
  v86 = *MEMORY[0x277D5C130];
  v87 = *MEMORY[0x277D5C160];
  v88 = v80;
  v212 = v41;
  v89 = v81 - 80;
  (v67)(v88, v41);
  v91 = v84 == v85 || v84 == v86 || v84 == v87;
  v92 = v67;
  if (!v91 || (sub_268520FA8() & 1) == 0)
  {
    v100 = v206;
    v101 = v212;
    v204(v206, v217, v212);
    v102 = v82(v100, v101);
    if (v102 == v85)
    {
      (*(v213 + 96))(v100, v101);
      v103 = v200;
      v104 = v205;
      v105 = OUTLINED_FUNCTION_44_0();
      v106 = v202;
      v107(v105);
      v108 = v203;
      OUTLINED_FUNCTION_20_5();
      v109();
      v110 = v199;
      (*(v103 + 16))(v199, v104, v106);
      v111 = sub_2685689E0();
      v112 = sub_268568DD0();
      if (os_log_type_enabled(v111, v112))
      {
        v113 = OUTLINED_FUNCTION_4();
        v114 = OUTLINED_FUNCTION_51();
        v219 = v114;
        *v113 = 136315138;
        sub_26852111C(&qword_280283530, MEMORY[0x277D5F458], MEMORY[0x277D5F460]);
        v115 = sub_2685691A0();
        v116 = v110;
        v118 = v117;
        v119 = *(v103 + 8);
        (v119)(v116, v106);
        v120 = sub_2684EABEC(v115, v118, &v219);

        *(v113 + 4) = v120;
        _os_log_impl(&dword_2684CA000, v111, v112, "NotificationsFlowProvider makeFlowSearchResult | nlv3 intent: %s", v113, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v114);
        OUTLINED_FUNCTION_2();
        OUTLINED_FUNCTION_12_3();

        OUTLINED_FUNCTION_24_6();
        v121 = v203;
      }

      else
      {

        v119 = *(v103 + 8);
        (v119)(v110, v106);
        OUTLINED_FUNCTION_24_6();
        v121 = v108;
      }

      v210(v121, v89);
      v141 = v205;
      sub_26851F4D4(v205, v142, v143, v144, v145, v146, v147, v148, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196);
    }

    else
    {
      v119 = sub_268569000;
      if (v102 == *MEMORY[0x277D5C150])
      {
        (*(v213 + 96))(v100, v212);
        v122 = v194;
        v123 = OUTLINED_FUNCTION_44_0();
        v106 = v195;
        v124(v123);
        OUTLINED_FUNCTION_47_0(&a18);
        OUTLINED_FUNCTION_20_5();
        v125();
        v126 = *(v122 + 16);
        v127 = OUTLINED_FUNCTION_46_0(&a13);
        v126(v127);
        v128 = sub_2685689E0();
        v129 = sub_268568DD0();
        if (OUTLINED_FUNCTION_13_3(v129))
        {
          v130 = OUTLINED_FUNCTION_4();
          v131 = OUTLINED_FUNCTION_51();
          v219 = v131;
          *v130 = 136315138;
          v132 = OUTLINED_FUNCTION_42_1(&v219);
          v126(v132);
          v133 = sub_268568B70();
          v135 = v134;
          OUTLINED_FUNCTION_6_16();
          sub_268569000();
          v136 = sub_2684EABEC(v133, v135, &v219);

          *(v130 + 4) = v136;
          OUTLINED_FUNCTION_52_0(&dword_2684CA000, v137, v138, "NotificationsFlowProvider makeFlowSearchResult | direct invocation: %s");
          __swift_destroy_boxed_opaque_existential_0(v131);
          OUTLINED_FUNCTION_2();
          OUTLINED_FUNCTION_2();

          v139 = v216;
          v140 = v198;
        }

        else
        {

          OUTLINED_FUNCTION_6_16();
          sub_268569000();
          OUTLINED_FUNCTION_24_6();
          v140 = v82;
          v139 = v81 - 80;
        }

        v210(v140, v139);
        v141 = v201;
        sub_268520880();
      }

      else
      {
        if (v102 != v87)
        {
          v168 = OUTLINED_FUNCTION_47_0(&a11);
          v169 = v216;
          v208(v168, v207, v216);
          v170 = sub_2685689E0();
          v171 = sub_268568DD0();
          if (os_log_type_enabled(v170, v171))
          {
            v172 = OUTLINED_FUNCTION_4();
            v173 = OUTLINED_FUNCTION_51();
            *v172 = 136315138;
            v174 = v212;
            v218 = v212;
            v219 = v173;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283528, &qword_26856DBB0);
            v175 = sub_268568B70();
            v177 = sub_2684EABEC(v175, v176, &v219);

            *(v172 + 4) = v177;
            _os_log_impl(&dword_2684CA000, v170, v171, "NotificationsFlowProvider makeFlowSearchResult | unable to make flow with parse: %s, returning no flow", v172, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v173);
            OUTLINED_FUNCTION_2();
            OUTLINED_FUNCTION_2();

            OUTLINED_FUNCTION_24_6();
            v210(v191, v169);
          }

          else
          {

            OUTLINED_FUNCTION_24_6();
            v210(v82, v169);
            v174 = v212;
          }

          sub_268567970();
          v92(v206, v174);
          goto LABEL_36;
        }

        (*(v213 + 96))(v100, v212);
        v149 = v189;
        v150 = OUTLINED_FUNCTION_44_0();
        v106 = v190;
        v151(v150);
        OUTLINED_FUNCTION_47_0(&a12);
        OUTLINED_FUNCTION_20_5();
        v152();
        v153 = *(v149 + 16);
        v154 = OUTLINED_FUNCTION_46_0(&v220);
        v153(v154);
        v155 = sub_2685689E0();
        v156 = sub_268568DD0();
        if (OUTLINED_FUNCTION_13_3(v156))
        {
          v157 = OUTLINED_FUNCTION_4();
          v158 = OUTLINED_FUNCTION_51();
          v219 = v158;
          *v157 = 136315138;
          v159 = OUTLINED_FUNCTION_42_1(&v218);
          v153(v159);
          v160 = sub_268568B70();
          v162 = v161;
          OUTLINED_FUNCTION_6_16();
          sub_268569000();
          v163 = sub_2684EABEC(v160, v162, &v219);

          *(v157 + 4) = v163;
          OUTLINED_FUNCTION_52_0(&dword_2684CA000, v164, v165, "NotificationsFlowProvider makeFlowSearchResult | uso parse: %s");
          __swift_destroy_boxed_opaque_existential_0(v158);
          OUTLINED_FUNCTION_2();
          OUTLINED_FUNCTION_2();

          v166 = v216;
          v167 = v192;
        }

        else
        {

          OUTLINED_FUNCTION_6_16();
          sub_268569000();
          OUTLINED_FUNCTION_24_6();
          v167 = v82;
          v166 = v81 - 80;
        }

        v210(v167, v166);
        v141 = v196;
        sub_26851FBC8(v196, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196);
      }
    }

    (v119)(v141, v106);
    goto LABEL_36;
  }

  v93 = v197;
  v94 = v216;
  v208(v197, v207, v216);
  v95 = sub_2685689E0();
  v96 = sub_268568DC0();
  if (OUTLINED_FUNCTION_13_3(v96))
  {
    v97 = OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_26_0(v97);
    OUTLINED_FUNCTION_9_4(&dword_2684CA000, v98, v99, "NotificationsFlowProvider makeFlowSearchResult | device does not support read notifications");
    OUTLINED_FUNCTION_12_3();
  }

  OUTLINED_FUNCTION_24_6();
  v210(v93, v94);
  sub_268520DC4();
LABEL_36:
  OUTLINED_FUNCTION_40();
}

void sub_26851F4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_41();
  a19 = v21;
  a20 = v22;
  v99 = v20;
  v24 = v23;
  v26 = v25;
  v27 = sub_2685689F0();
  OUTLINED_FUNCTION_1();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_6_14();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_14();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_14();
  MEMORY[0x28223BE20](v33);
  v35 = v98 - v34;
  type metadata accessor for NotificationNLv3Intent(0);
  OUTLINED_FUNCTION_17_2();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_5_5();
  v39 = v38 - v37;
  sub_268568560();
  OUTLINED_FUNCTION_17_2();
  (*(v40 + 16))(v39, v24);
  if (qword_2802829B0 != -1)
  {
    swift_once();
  }

  sub_26852111C(&qword_280283548, type metadata accessor for NotificationNLv3Intent, &unk_26856E878);
  OUTLINED_FUNCTION_44_0();
  sub_2685683A0();
  v41 = v102[0];
  v42 = v102[1];
  v43 = sub_26852BBB4();
  if (v42)
  {
    sub_2685687A0();
    OUTLINED_FUNCTION_31_5();
    swift_bridgeObjectRetain_n();
    v101 = sub_2684FF6C4(v41, v42);
  }

  else
  {
    v101 = 0;
  }

  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  OUTLINED_FUNCTION_38(v27, qword_28028B348);
  v44 = *(v29 + 16);
  v98[6] = v45;
  v98[8] = v29 + 16;
  v98[7] = v44;
  v44(v35);

  v46 = sub_2685689E0();
  v47 = sub_268568DC0();

  v48 = os_log_type_enabled(v46, v47);
  v100 = v35;
  v98[5] = v41;
  if (v48)
  {
    v49 = swift_slowAlloc();
    v98[1] = v26;
    v50 = v49;
    v51 = OUTLINED_FUNCTION_51();
    v102[0] = v51;
    *v50 = 136315394;
    if (v42)
    {
      v52 = v41;
    }

    else
    {
      v52 = 0;
    }

    v98[0] = v39;
    if (v42)
    {
      v53 = v42;
    }

    else
    {
      v53 = 0xE000000000000000;
    }

    v54 = sub_2684EABEC(v52, v53, v102);
    v39 = v98[0];

    *(v50 + 4) = v54;
    *(v50 + 12) = 1024;
    *(v50 + 14) = v43;
    _os_log_impl(&dword_2684CA000, v46, v47, "NotificationsFlowProvider getFlowSearchResult | returning user request - targetAppId: %s, isReadLatest: %{BOOL}d", v50, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v51);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();
  }

  else
  {
  }

  v55 = *(v29 + 8);
  v56 = OUTLINED_FUNCTION_41_0();
  v55(v56);
  if ((sub_26852B4B8() & 1) != 0 || sub_26852BC4C())
  {
    if (sub_26852BF90())
    {
      v57 = OUTLINED_FUNCTION_4_17(&a10);
      v58(v57);
      v59 = sub_2685689E0();
      v60 = sub_268568DC0();
      if (OUTLINED_FUNCTION_13_3(v60))
      {
        v61 = OUTLINED_FUNCTION_16_0();
        OUTLINED_FUNCTION_26_0(v61);
        OUTLINED_FUNCTION_9_4(&dword_2684CA000, v62, v63, "NotificationsFlowProvider getFlowSearchResult | read without entity, e.g., 'read it'");
        OUTLINED_FUNCTION_28_3();
        OUTLINED_FUNCTION_2();
      }

      v64 = OUTLINED_FUNCTION_41_0();
      v55(v64);
      OUTLINED_FUNCTION_19_6(&a16);
      v65 = type metadata accessor for RNAuthenticationFlow();
      OUTLINED_FUNCTION_7_18(v65);
      OUTLINED_FUNCTION_31_5();

      v66 = OUTLINED_FUNCTION_23_5();
      v72 = 1;
    }

    else
    {
      v73 = OUTLINED_FUNCTION_4_17(&a11);
      v74(v73);
      v75 = sub_2685689E0();
      v76 = sub_268568DC0();
      if (OUTLINED_FUNCTION_13_3(v76))
      {
        v77 = OUTLINED_FUNCTION_16_0();
        OUTLINED_FUNCTION_26_0(v77);
        OUTLINED_FUNCTION_9_4(&dword_2684CA000, v78, v79, "NotificationsFlowProvider getFlowSearchResult | read all notifications");
        OUTLINED_FUNCTION_28_3();
        OUTLINED_FUNCTION_2();
      }

      v80 = OUTLINED_FUNCTION_41_0();
      v55(v80);
      OUTLINED_FUNCTION_19_6(&a16);
      v81 = type metadata accessor for RNAuthenticationFlow();
      OUTLINED_FUNCTION_7_18(v81);
      OUTLINED_FUNCTION_31_5();

      v66 = OUTLINED_FUNCTION_23_5();
      v72 = 0;
    }

    v82 = sub_2684EC724(v66, v67, v68, v69, v70, v72, v71);
    OUTLINED_FUNCTION_39_1(v82);
    OUTLINED_FUNCTION_15_7();
    v85 = sub_26852111C(v83, v84, &protocol conformance descriptor for RNAuthenticationFlow);
    OUTLINED_FUNCTION_26_4(v85);
    OUTLINED_FUNCTION_27_4();

    sub_268567980();
  }

  else if (sub_26852C0E8())
  {
    v86 = OUTLINED_FUNCTION_4_17(&a9);
    v87(v86);
    v88 = sub_2685689E0();
    v89 = sub_268568DC0();
    if (OUTLINED_FUNCTION_13_3(v89))
    {
      v90 = OUTLINED_FUNCTION_16_0();
      OUTLINED_FUNCTION_26_0(v90);
      OUTLINED_FUNCTION_9_4(&dword_2684CA000, v91, v92, "NotificationsFlowProvider getFlowSearchResult | clear notifications");
      OUTLINED_FUNCTION_28_3();
      OUTLINED_FUNCTION_2();
    }

    v93 = OUTLINED_FUNCTION_41_0();
    v55(v93);
    OUTLINED_FUNCTION_19_6(&a16);
    type metadata accessor for UnsupportedFlow();
    swift_allocObject();
    v94 = UnsupportedFlow.init(sharedObjects:intent:)(v102, 0);
    OUTLINED_FUNCTION_39_1(v94);
    OUTLINED_FUNCTION_16_10();
    v97 = sub_26852111C(v95, v96, &protocol conformance descriptor for UnsupportedFlow);
    OUTLINED_FUNCTION_26_4(v97);
    OUTLINED_FUNCTION_27_4();

    sub_268567980();
  }

  else
  {
    sub_268567970();
  }

  sub_268521164(v39, type metadata accessor for NotificationNLv3Intent);
  OUTLINED_FUNCTION_40();
}

void sub_26851FBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_41();
  a19 = v21;
  a20 = v22;
  v153 = v20;
  v24 = v23;
  v154 = v25;
  v160 = sub_2685689F0();
  OUTLINED_FUNCTION_1();
  v159 = v26;
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v150 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_14();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_14();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_14();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_14();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_14();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_25_0();
  v37 = v36;
  OUTLINED_FUNCTION_19_1();
  v38 = sub_2685680B0();
  OUTLINED_FUNCTION_1();
  v40 = v39;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_5_5();
  v44 = v43 - v42;
  v45 = type metadata accessor for NotificationNLv4Intent(0);
  v46 = v45 - 8;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_5_5();
  v49 = v48 - v47;
  v50 = *(v40 + 16);
  v50(v44, v24, v38);
  v51 = OUTLINED_FUNCTION_37_2();
  (v50)(v51);
  v52 = v49;
  sub_268568550();
  v53 = sub_26850CCFC();
  v55 = *(v40 + 8);
  v54 = v40 + 8;
  v55(v44, v38);
  v56 = *(v46 + 28);
  v161 = v52;
  *(v52 + v56) = v53;
  if (v53)
  {
    v54 = 1684104562;
    if (sub_268568540() == 1684104562 && v57 == 0xE400000000000000)
    {

      goto LABEL_19;
    }

    v59 = sub_2685691C0();

    if (v59)
    {
      goto LABEL_19;
    }
  }

  OUTLINED_FUNCTION_35_1();
  if (v163)
  {
    v60 = sub_2685684E0();
    if (OUTLINED_FUNCTION_9_14(v60))
    {
      goto LABEL_18;
    }
  }

  else
  {
    sub_2684EB7C8(v162, &qword_280282BE0, &unk_26856D8C0);
  }

  OUTLINED_FUNCTION_35_1();
  if (v163)
  {
    v61 = sub_2685683D0();
    if (OUTLINED_FUNCTION_9_14(v61))
    {
      goto LABEL_18;
    }
  }

  else
  {
    sub_2684EB7C8(v162, &qword_280282BE0, &unk_26856D8C0);
  }

  OUTLINED_FUNCTION_35_1();
  if (v163)
  {
    v62 = sub_268568510();
    if (OUTLINED_FUNCTION_9_14(v62))
    {
LABEL_18:

      goto LABEL_19;
    }
  }

  else
  {
    sub_2684EB7C8(v162, &qword_280282BE0, &unk_26856D8C0);
  }

  if (!v53 || (v127 = sub_268568540(), v129 = OUTLINED_FUNCTION_34_2(v127, v128), v131 = OUTLINED_FUNCTION_50_0(v129, MEMORY[0x277D837D0], v130, v129), , (v131 & 1) == 0))
  {
    if ((sub_26856563C() & 1) == 0)
    {
      OUTLINED_FUNCTION_35_1();
      if (v163)
      {
        v132 = sub_2685684D0();
        OUTLINED_FUNCTION_9_14(v132);
        OUTLINED_FUNCTION_49_0();
        if (v133)
        {

          if (qword_280282960 != -1)
          {
            OUTLINED_FUNCTION_0_0(&qword_280282960);
          }

          OUTLINED_FUNCTION_38(v54, qword_28028B348);
          v134 = v158;
          (*(v53 + 16))(v158);
          v135 = sub_2685689E0();
          v136 = sub_268568DC0();
          if (OUTLINED_FUNCTION_13_3(v136))
          {
            v137 = OUTLINED_FUNCTION_16_0();
            OUTLINED_FUNCTION_26_0(v137);
            OUTLINED_FUNCTION_9_4(&dword_2684CA000, v138, v139, "NotificationsFlowProvider getFlowSearchResult | clear notifications");
            OUTLINED_FUNCTION_12_3();
          }

          (*(v53 + 8))(v134, v54);
          OUTLINED_FUNCTION_19_6(&a10);
          v140 = type metadata accessor for UnsupportedFlow();
          swift_allocObject();
          v141 = UnsupportedFlow.init(sharedObjects:intent:)(v162, 0);
          OUTLINED_FUNCTION_39_1(v141);
          OUTLINED_FUNCTION_16_10();
          v144 = sub_26852111C(v142, v143, &protocol conformance descriptor for UnsupportedFlow);
          OUTLINED_FUNCTION_26_4(v144);
          OUTLINED_FUNCTION_27_4();

          v162[0] = v140;
          sub_2684D6168();
          sub_2685678E0();
          OUTLINED_FUNCTION_40_1();
          sub_268567980();
          goto LABEL_52;
        }
      }

      else
      {
        sub_2684EB7C8(v162, &qword_280282BE0, &unk_26856D8C0);
        OUTLINED_FUNCTION_49_0();
      }

      if (qword_280282960 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_280282960);
      }

      OUTLINED_FUNCTION_38(v54, qword_28028B348);
      (*(v53 + 16))(v30);
      v145 = sub_2685689E0();
      v146 = sub_268568DC0();
      if (OUTLINED_FUNCTION_13_3(v146))
      {
        v147 = OUTLINED_FUNCTION_16_0();
        OUTLINED_FUNCTION_26_0(v147);
        OUTLINED_FUNCTION_9_4(&dword_2684CA000, v148, v149, "NotificationsFlowProvider getFlowSearchResult | unable to create flow from parse, returning no flow");
        OUTLINED_FUNCTION_12_3();
      }

      (*(v53 + 8))(v30, v54);
      OUTLINED_FUNCTION_40_1();
      sub_268567970();
      goto LABEL_56;
    }
  }

LABEL_19:
  v63 = sub_268565A50();
  v65 = v64;
  v156 = sub_268565D84();
  if (v53)
  {
    v66 = sub_268568540();
    v68 = OUTLINED_FUNCTION_34_2(v66, v67);
    v155 = OUTLINED_FUNCTION_50_0(v68, MEMORY[0x277D837D0], v69, v68);
  }

  else
  {
    v155 = 0;
  }

  v70 = v160;
  v71 = v159;
  v72 = v37;
  v157 = v63;
  if (v65)
  {
    sub_2685687A0();

    v73 = sub_2684FF6C4(v63, v65);
  }

  else
  {
    v73 = 0;
  }

  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  OUTLINED_FUNCTION_38(v70, qword_28028B348);
  v74 = v71 + 16;
  v75 = *(v71 + 16);
  v158 = v76;
  v75(v37);
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  v77 = sub_2685689E0();
  v78 = sub_268568DD0();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v152 = v71 + 16;
    v80 = v79;
    v81 = OUTLINED_FUNCTION_51();
    v162[0] = v81;
    *v80 = 136315650;
    v150 = v72;
    v82 = v73;
    if (v65)
    {
      v83 = v157;
    }

    else
    {
      v83 = 7104878;
    }

    v84 = v75;
    if (v65)
    {
      v85 = v65;
    }

    else
    {
      v85 = 0xE300000000000000;
    }

    v86 = sub_2684EABEC(v83, v85, v162);
    v75 = v84;
    v70 = v160;

    *(v80 + 4) = v86;
    *(v80 + 12) = 1024;

    *(v80 + 14) = v156;

    *(v80 + 18) = 1024;
    v73 = v82;

    *(v80 + 20) = v155 & 1;

    _os_log_impl(&dword_2684CA000, v77, v78, "NotificationsFlowProvider getFlowSearchResult UserRequest targetAppId: %s, isReadLatest: %{BOOL}d, isCatchUp: %{BOOL}d", v80, 0x18u);
    __swift_destroy_boxed_opaque_existential_0(v81);
    v87 = v159;
    OUTLINED_FUNCTION_2();
    v74 = v152;
    OUTLINED_FUNCTION_2();

    v88 = *(v87 + 8);
    v88(v150, v70);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v88 = *(v71 + 8);
    v88(v72, v70);
  }

  OUTLINED_FUNCTION_35_1();
  if (!v163)
  {
    sub_2684EB7C8(v162, &qword_280282BE0, &unk_26856D8C0);
    goto LABEL_48;
  }

  sub_2685683D0();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_48:
    v109 = OUTLINED_FUNCTION_18_6();
    v75(v109);
    v95 = sub_2685689E0();
    v110 = sub_268568DC0();
    if (OUTLINED_FUNCTION_13_3(v110))
    {
      v111 = OUTLINED_FUNCTION_16_0();
      OUTLINED_FUNCTION_26_0(v111);
      OUTLINED_FUNCTION_9_4(&dword_2684CA000, v112, v113, "NotificationsFlowProvider getFlowSearchResult | read all notifications");
      OUTLINED_FUNCTION_12_3();
    }

    v114 = OUTLINED_FUNCTION_37_2();
    (v88)(v114);
    OUTLINED_FUNCTION_19_6(&a10);
    v115 = type metadata accessor for RNAuthenticationFlow();
    OUTLINED_FUNCTION_7_18(v115);
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_54_0();

    v102 = OUTLINED_FUNCTION_22_3();
    v108 = 0;
    goto LABEL_51;
  }

  v160 = v73;

  v89 = v151;
  v152 = v74;
  (v75)(v151, v158, v70);
  v90 = sub_2685689E0();
  v91 = sub_268568DC0();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = OUTLINED_FUNCTION_16_0();
    *v92 = 0;
    _os_log_impl(&dword_2684CA000, v90, v91, "NotificationsFlowProvider getFlowSearchResult | read without entity, e.g., 'read it'", v92, 2u);
    OUTLINED_FUNCTION_2();
  }

  v88(v89, v70);
  if (sub_26856620C())
  {
    if (qword_280282950 != -1)
    {
      swift_once();
    }

    v93 = sub_268568960();

    if (v93)
    {
      v94 = OUTLINED_FUNCTION_18_6();
      v75(v94);
      v95 = sub_2685689E0();
      v96 = sub_268568DC0();
      if (OUTLINED_FUNCTION_13_3(v96))
      {
        v97 = OUTLINED_FUNCTION_16_0();
        OUTLINED_FUNCTION_26_0(v97);
        OUTLINED_FUNCTION_9_4(&dword_2684CA000, v98, v99, "NotificationsFlowProvider getFlowSearchResult | entity has a reference");
        OUTLINED_FUNCTION_12_3();
      }

      v100 = OUTLINED_FUNCTION_37_2();
      (v88)(v100);
      OUTLINED_FUNCTION_19_6(&a10);
      v101 = type metadata accessor for RNAuthenticationFlow();
      OUTLINED_FUNCTION_7_18(v101);
      OUTLINED_FUNCTION_32_3();
      OUTLINED_FUNCTION_54_0();
      OUTLINED_FUNCTION_47_0(&a17);

      v102 = OUTLINED_FUNCTION_22_3();
      v108 = 1;
LABEL_51:
      v116 = sub_2684EC724(v102, v103, v104, v105, v106, v108, v107);
      OUTLINED_FUNCTION_39_1(v116);
      OUTLINED_FUNCTION_15_7();
      v119 = sub_26852111C(v117, v118, &protocol conformance descriptor for RNAuthenticationFlow);
      OUTLINED_FUNCTION_26_4(v119);
      OUTLINED_FUNCTION_27_4();

      v162[0] = v95;
      sub_2684D6168();
      sub_2685678E0();
      OUTLINED_FUNCTION_40_1();
      sub_268567980();

LABEL_52:

      goto LABEL_56;
    }
  }

  v120 = OUTLINED_FUNCTION_18_6();
  v75(v120);
  v121 = sub_2685689E0();
  v122 = sub_268568DC0();
  if (OUTLINED_FUNCTION_13_3(v122))
  {
    v123 = OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_26_0(v123);
    OUTLINED_FUNCTION_9_4(&dword_2684CA000, v124, v125, "NotificationsFlowProvider getFlowSearchResult | entity does not have a reference, returning no flow");
    OUTLINED_FUNCTION_12_3();
  }

  v126 = OUTLINED_FUNCTION_37_2();
  (v88)(v126);
  OUTLINED_FUNCTION_40_1();
  sub_268567970();

LABEL_56:
  sub_268521164(v161, type metadata accessor for NotificationNLv4Intent);
  OUTLINED_FUNCTION_40();
}

void sub_268520880()
{
  OUTLINED_FUNCTION_41();
  v48 = v0;
  v2 = v1;
  v50 = v3;
  v49 = sub_2685689F0();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v46 - v10;
  v12 = sub_268568070();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5_5();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283540, "Ƨ");
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v46 - v20;
  v22 = type metadata accessor for ANDirectInvocation(0);
  OUTLINED_FUNCTION_17_2();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_27();
  v47 = v24;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v25);
  v27 = &v46 - v26;
  (*(v14 + 16))(v18, v2, v12);
  ANDirectInvocation.init(directInvocation:)(v18, v21);
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {
    sub_2684EB7C8(v21, &qword_280283540, "Ƨ");
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_280282960);
    }

    v28 = v49;
    OUTLINED_FUNCTION_38(v49, qword_28028B348);
    (*(v5 + 16))(v9);
    v29 = sub_2685689E0();
    v30 = sub_268568DC0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = OUTLINED_FUNCTION_16_0();
      *v31 = 0;
      _os_log_impl(&dword_2684CA000, v29, v30, "NotificationsFlowProvider getFlowSearchResult | announceNotificationsDirectInvocation is nil, returning no flow", v31, 2u);
      OUTLINED_FUNCTION_2();
    }

    (*(v5 + 8))(v9, v28);
    sub_268567970();
  }

  else
  {
    sub_26850364C(v21, v27);
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_280282960);
    }

    v32 = v49;
    OUTLINED_FUNCTION_38(v49, qword_28028B348);
    (*(v5 + 16))(v11);
    v33 = sub_2685689E0();
    v34 = sub_268568DC0();
    if (OUTLINED_FUNCTION_13_3(v34))
    {
      v35 = OUTLINED_FUNCTION_16_0();
      OUTLINED_FUNCTION_26_0(v35);
      OUTLINED_FUNCTION_9_4(&dword_2684CA000, v36, v37, "NotificationsFlowProvider getFlowSearchResult | returning AnnounceNotificationFlow");
      OUTLINED_FUNCTION_12_3();
    }

    (*(v5 + 8))(v11, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282DB8, qword_26856B450);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_26856B420;
    v39 = v47;
    sub_2685210B8(v27, v47);
    type metadata accessor for AnnounceNotification(0);
    swift_allocObject();
    *(v38 + 32) = sub_26854188C(v39);
    v40 = *&v27[*(v22 + 44)];
    sub_2685685A0();
    v41 = sub_268568590();
    type metadata accessor for ReadingHistory();
    v42 = swift_allocObject();
    *(v42 + 16) = v41;
    type metadata accessor for ANStateManager();
    swift_allocObject();
    v43 = OUTLINED_FUNCTION_31_5();
    v44 = sub_268503A90(v43, v40, v42);
    sub_2684CC878(v48 + 16, v51);
    type metadata accessor for ANFlow();
    v45 = swift_allocObject();
    *(v45 + 16) = v44;
    memcpy((v45 + 24), v51, 0x80uLL);
    v51[0] = v45;
    sub_26852111C(&qword_280282C10, type metadata accessor for ANFlow, &protocol conformance descriptor for ANFlow);

    sub_2685678E0();
    OUTLINED_FUNCTION_27_4();

    sub_268567980();

    sub_268521164(v27, type metadata accessor for ANDirectInvocation);
  }

  OUTLINED_FUNCTION_40();
}